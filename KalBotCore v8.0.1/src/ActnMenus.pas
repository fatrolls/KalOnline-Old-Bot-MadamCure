//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnMenus;

interface

uses
  SysUtils, Classes, ActnMenus, ActnMan, Controls, Forms, ExtCtrls, ShadowWnd, ActnCtrls, ActnList;

type
  TMenuStack = class(TStack)
  public
    FMenu:TCustomActionMenuBar;//f8
    constructor Create;//00500AE4
  end;
  TActionBarStyleEx = class(TActionBarStyle)
  published
    procedure GetScrollBtnClass;//004FEBE0
    procedure GetAddRemoveItemClass;//004FEBD8
    procedure GetPopupClass;//004FEBD0
  end;
  TAnimationStyle = (asNone, asDefault, asUnFold, asSlide, asFade);
  TMenuPopupEvent = procedure(Sender:TObject; Item:TCustomActionControl) of object;;
  TGetPopupClassEvent = procedure(Sender:TObject; var PopupClass:TCustomPopupClass) of object;;
  TExitMenuEvent = procedure(Sender:TCustomActionMenuBar; Cancelled:Boolean) of object;;
  TCustomActionMenuBar = class(TCustomActionDockBar)
  public
    FAnimatePopups:Boolean;//f288
    FAnimationStyle:TAnimationStyle;//f289
    FCancelMenu:Boolean;//f28A
    FDelayItem:TCustomActionControl;//f28C
    FDragItem:TCustomActionControl;//f290
    FExpandable:Boolean;//f294
    FExpanded:Boolean;//f295
    FInMenuLoop:Boolean;//f296
    FItemKeyed:Boolean;//f297
    FMouseControl:TControl;//f298
    FMousePos:TPoint;//f29C
    FParentForm:TCustomForm;//f2A4
    FParentMenu:TCustomActionMenuBar;//f2A8
    FParentControl:TCustomActionControl;//f2AC
    FPopupStack:TMenuStack;//f2B0
    FOnPopup:TMenuPopupEvent;//f2B8
    f2BA:word;//f2BA
    f2BC:dword;//f2BC
    FExpandDelay:Integer;//f2C0
    FRootMenu:TCustomActionMenuBar;//f2C4
    FDefaultFont:Boolean;//f2C8
    FOnGetPopupClass:TGetPopupClassEvent;//f2D0
    f2D2:word;//f2D2
    f2D4:dword;//f2D4
    FAnimateDuration:Integer;//f2D8
    FOnEnterMenuLoop:TNotifyEvent;//f2E0
    FOnExitMenuLoop:TExitMenuEvent;//f2E8
    FUseSystemFont:Boolean;//f2F0
    FSelectedItem:TActionClientItem;//f2F4
    FCachedMenu:TCustomActionPopupMenu;//f2F8
    FChildMenu:TCustomActionMenuBar;//f2FC
    FExpandTimer:TTimer;//f300
    FPopupTimer:TTimer;//f304
    destructor Destroy; virtual;//005010D8
    procedure Loaded; virtual;//vC//00503B88
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005036E0
    constructor Create(AOwner:TComponent); virtual;//v2C//00501024
    //procedure v68(?:?); virtual;//v68//00502F58
    //procedure v74(?:?); virtual;//v74//005030A8
    //function vD4(?:?):?; virtual;//vD4//005016F4
    //function v104:?; virtual;//v104//0050226C
    //procedure v130(?:?); virtual;//v130//00502DE0
    procedure SetPersistentHotKeys(Value:Boolean); virtual;//v138//00502ED0
    procedure v144; virtual;//v144//00503BC0
    //function v148:?; virtual;//v148//00503AF4
    //function v14C(?:?; ?:?):?; virtual;//v14C//0050177C
    //function v150(?:?):?; virtual;//v150//00501B90
    //function v154(?:?):?; virtual;//v154//00501D84
    procedure v158; virtual;//v158//00502034
    //procedure v15C(?:?); virtual;//v15C//005020C4
    //procedure v160(?:?); virtual;//v160//00501AE8
    //procedure v164(?:?); virtual;//v164//005020F8
    //function v168:?; virtual;//v168//00502394
    procedure v16C; virtual;//v16C//00502460
    //function v170:?; virtual;//v170//00502608
    //function v174:?; virtual;//v174//00502810
    //procedure v178(?:?); virtual;//v178//005026C0
    procedure v17C; virtual;//v17C//00501574
    procedure TrackMenu; virtual;//v180//00502F84
    //procedure WMMouseActivate(?:?); message WM_MOUSEACTIVATE;//00503434
    //procedure WMKeyDown(?:?); message WM_KEYDOWN;//005030DC
    //procedure WMSysKeyDown(?:?); message WM_SYSKEYDOWN;//00503468
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//005036A4
    //procedure sub_00501650(?:?); dynamic;//00501650
    //procedure sub_005016B0(?:?); dynamic;//005016B0
    //procedure sub_00501694(?:?); dynamic;//00501694
    procedure sub_00501B4C; dynamic;//00501B4C
    procedure Animate(Show:Boolean);//0050142C
  end;
  TCustomMenuExpandBtn = class(TCustomUtilityButton)
  public
    constructor Create(AOwner:TComponent); virtual;//v2C//00503C44
    //procedure vAC(?:?); virtual;//vAC//00503D08
    //procedure vE4(?:?; ?:?); virtual;//vE4//00503D94
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//00503CEC
  end;
  TCustomActionPopupMenu = class(TCustomActionMenuBar)
  public
    FBShadow:TShadowWindow;//f308
    FExpandBtn:TCustomMenuExpandBtn;//f30C
    FRShadow:TShadowWindow;//f310
    FShadow:Boolean;//f314
    destructor Destroy; virtual;//00503F18
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//005051E4
    constructor Create(AOwner:TComponent); virtual;//v2C//00503E04
    //function v34(?:?; ?:?):?; virtual;//v34//005050A4
    //procedure v44(?:?); virtual;//v44//0050505C
    //procedure v98(?:?); virtual;//v98//00504284
    //function vD4(?:?):?; virtual;//vD4//005041C4
    procedure vD8; virtual;//vD8//00504244
    procedure v118; virtual;//v118//00505278
    //procedure v12C(?:?); virtual;//v12C//005051A8
    //procedure v134(?:?); virtual;//v134//00504A70
    //procedure v160(?:?); virtual;//v160//00504310
    //procedure v164(?:?); virtual;//v164//00504334
    procedure v17C; virtual;//v17C//00505004
    //procedure v184(?:?); virtual;//v184//00503F7C
    procedure v188; virtual;//v188//005050E0
    //function v18C:?; virtual;//v18C//0050508C
    procedure v190; virtual;//v190//00505174
    //procedure v194(?:?; ?:?); virtual;//v194//005045B0
    //procedure WMKeyDown(?:?); message WM_KEYDOWN;//00504A94
    //procedure sub_00504DB8(?:?); dynamic;//00504DB8
    //procedure sub_004D4F60(?:?); dynamic;//00504DE4
    //procedure CMVisibleChanged(?:?); message CM_VISIBLECHANGED;//00504188
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//0050412C
    procedure sub_004CC91C; dynamic;//00504EA4
    //procedure sub_004CC67C(?:?); dynamic;//005042F8
    procedure Popup(X:Integer; Y:Integer);//005044EC
  end;
  TCustomizeActionToolBar = class(TCustomActionPopupMenu)
  public
    FActionBar:TCustomActionToolBar;//f318
    FAddlItem:TActionClientItem;//f31C
    FResetAction:TCustomAction;//f320
    FResetItem:TActionClientItem;//f324
    destructor Destroy; virtual;//0050540C
    constructor Create(AOwner:TComponent); virtual;//v2C//005053A4
    //function v34(?:?; ?:?):?; virtual;//v34//0050544C
    procedure vD0; virtual;//vD0//00505498
    //function v108(?:?):?; virtual;//v108//005054C0
    //function v114:?; virtual;//v114//0050550C
    //procedure v124(?:?); virtual;//v124//00505918
    //function v150(?:?):?; virtual;//v150//005055D4
    //function v170:?; virtual;//v170//005057D0
    //function v198:?; virtual;//v198//00505B78
    //procedure v19C(?:?; ?:?; ?:?); virtual;//v19C//00505750
    //procedure sub_005054A4(?:?); dynamic;//005054A4
  end;
  TCustomizeActionLink = class(TActionClientLink)
  public
    //procedure v54(?:?); virtual;//v54//00505BC8
  end;
  TCustomizeActionClientItem = class(TActionClientItem)
  public
    procedure sub_00505BF4; dynamic;//00505BF4
  end;
  TCustomMDIMenuButton = class(TSpeedButton)
  public
    .....FButtonStyle:TMDIButtonStyle;//f188
    procedure Paint; virtual;//v8C//00505C0C
  end;
  TCustomActionMainMenuBar = class(TCustomActionMenuBar)
  public
    FMDIActions:TActionList;//f308
    FMDIActivate:Boolean;//f30C
    FInActive:Boolean;//f30D
    FShadows:Boolean;//f30E
    FWindowMenu:String;//f310
    FMinimizeBtn:TCustomMDIMenuButton;//f314
    FRestoreBtn:TCustomMDIMenuButton;//f318
    FCloseBtn:TCustomMDIMenuButton;//f31C
    FMDISeparator:TActionClientItem;//f320
    FWindowMenuItem:TActionClientItem;//f324
    destructor Destroy; virtual;//00505D90
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//0050633C
    constructor Create(AOwner:TComponent); virtual;//v2C//00505C80
    //procedure vA8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//vA8//00506A1C
    //function vD4(?:?):?; virtual;//vD4//00505FA4
    procedure vD8; virtual;//vD8//00506AC8
    //procedure v130(?:?); virtual;//v130//00506278
    procedure v158; virtual;//v158//00506074
    //function v170:?; virtual;//v170//00506310
    //procedure v178(?:?); virtual;//v178//005061B0
    procedure v17C; virtual;//v17C//00505DEC
    procedure TrackMenu; virtual;//v180//00506D2C
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//0050617C
    //procedure WMKeyDown(?:?); message WM_KEYDOWN;//00505E08
    //procedure WMSysKeyDown(?:?); message WM_SYSKEYDOWN;//00506C2C
    //procedure WMSysKeyUp(?:?); message WM_SYSKEYUP;//00506C5C
    //procedure WMSysCommand(?:?); message WM_SYSCOMMAND;//00506B00
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//005062E0
    //procedure CMWinIniChange(?:?); message CM_WININICHANGE;//00506234
    procedure sub_004D37A8; dynamic;//00505F90
    //procedure sub_004CC67C(?:?); dynamic;//00505FF0
    procedure RefreshMDIMenu;//005064F8
  end;
  TActionMainMenuBar = class(TCustomActionMainMenuBar)
    procedure SetAnimateDuration(Value:Integer);//0050350C
    procedure SetUseSystemFont(Value:Boolean);//00503B40
    procedure SetWindowMenu(Value:String);//00506438
    procedure SetShadows(Value:Boolean);//00506CF4
  end;
  TCustomMenuItem = class(TCustomActionControl)
  public
    FEdges:TMenuEdges;//f1A8
    FMenu:TCustomActionMenuBar;//f1AC
    FMouseSelected:Boolean;//f1B0
    FShortCutBounds:TRect;//f1B1
    FCYMenu:Integer;//f1C4
    FNoPrefix:String;//f1C8
    destructor Destroy; virtual;//00506E40
    constructor Create(AOwner:TComponent); virtual;//v2C//00506D84
    procedure v8C; virtual;//v8C//00506FC8
    procedure v90; virtual;//v90//00507824
    //procedure v94(?:?; ?:?; ?:?); virtual;//v94//00507B1C
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//005079CC
    //procedure vB4(?:TRect; ?:?; ?:?; ?:?; ?:?); virtual;//vB4//00507898
    procedure vCC; virtual;//vCC//00507ACC
    //procedure vD8(?:?); virtual;//vD8//005073D8
    procedure vDC; virtual;//vDC//00507658
    procedure vE0; virtual;//vE0//00507154
    //procedure vE4(?:?); virtual;//vE4//00507888
    procedure vE8; virtual;//vE8//00506EAC
    procedure vEC; virtual;//vEC//00507038
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//0050735C
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//0050728C
    //procedure sub_004CBB18(?:?; ?:?; ?:?); dynamic;//005074A0
    //procedure sub_004CD1B0(?:?; ?:?; ?:?; ?:?); dynamic;//00507D64
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//00507520
    procedure sub_004CCCAC; dynamic;//0050711C
  end;
  TCustomMenuButton = class(TCustomButtonControl)
  public
    FCloseMenu:Boolean;//f1B0
    FDoClick:Boolean;//f1B1
    destructor Destroy; virtual;//00507E74
    constructor Create(AOwner:TComponent); virtual;//v2C//00507E20
    procedure v8C; virtual;//v8C//005084A0
    //procedure v94(?:?; ?:?; ?:?); virtual;//v94//0050807C
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//005081F8
    procedure vE0; virtual;//vE0//00508354
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//005084E8
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//00507FE8
    //procedure sub_004CD1B0(?:?; ?:?; ?:?; ?:?); dynamic;//00508448
    //procedure sub_004CCD68(?:?; ?:?; ?:?; ?:?); dynamic;//00508374
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//00508108
    procedure sub_004CCCAC; dynamic;//00507F0C
    procedure sub_004CB99C; dynamic;//00507EE0
  end;
  TCustomAddRemoveItem = class(TCustomMenuItem)
  public
    //procedure v64(?:?); virtual;//v64//00505388
    procedure vDC; virtual;//vDC//005052C8
    //procedure sub_004CD1B0(?:?; ?:?; ?:?; ?:?); dynamic;//00505354
  end;
  TMenuList = class(TList)
  public
    //procedure v4(?:?; ?:?); virtual;//v4//00500FAC
  end;
  TInternalMDIAction = class(TWindowAction)
  public
    FClientItem:TActionClientItem;//fA8
    FMenu:TCustomActionMainMenuBar;//fAC
    FMDIAction:TMDIAction;//fB0
    destructor Destroy; virtual;//00500D8C
    //function v38(?:?):?; virtual;//v38//00500E88
    //procedure v3C(?:?); virtual;//v3C//00500EA0
    //procedure v40(?:?); virtual;//v40//00500DD8
  end;
    //function sub_00500B34(?:TMenuStack; ?:?):?;//00500B34
    //function sub_00500B58(?:TMenuStack):?;//00500B58
    //function sub_00500B74(?:TMenuStack):?;//00500B74
    procedure sub_00500C20(?:TMenuStack; ?:TCustomActionMenuBar);//00500C20
    destructor Destroy;//00500D8C
    //procedure sub_00500DD8(?:?);//00500DD8
    //function sub_00500E88(?:?):?;//00500E88
    //procedure sub_00500EA0(?:?);//00500EA0
    //function sub_00500EBC(?:?; ?:?; ?:?):?;//00500EBC
    procedure sub_00500F2C(?:TCustomActionMenuBar);//00500F2C
    procedure sub_00500F74(?:TCustomActionMenuBar);//00500F74
    //procedure sub_00500FAC(?:?; ?:?);//00500FAC
    constructor Create(AOwner:TComponent);//00501024
    destructor Destroy;//005010D8
    procedure DefaultSystemAnimation;//0050113C
    procedure DoAnimation(Style:TAnimationStyle);//00501280
    procedure sub_005014DC(?:TCustomActionMenuBar);//005014DC
    procedure sub_00501514(?:TCustomActionMenuBar);//00501514
    procedure sub_00501574;//00501574
    //procedure sub_00501650(?:?);//00501650
    //procedure sub_00501694(?:?);//00501694
    //procedure sub_005016B0(?:?);//005016B0
    //function sub_005016F4(?:?):?;//005016F4
    //function sub_0050177C(?:?; ?:?):?;//0050177C
    procedure sub_00501A0C(?:TCustomActionMenuBar; ?:TCustomMenuItem);//00501A0C
    //procedure sub_00501AE8(?:?);//00501AE8
    procedure sub_00501B4C;//00501B4C
    //function sub_00501B90(?:?):?;//00501B90
    //function sub_00501D84(?:?):?;//00501D84
    //function sub_00501E1C(?:TCustomActionMenuBar; ?:?):?;//00501E1C
    procedure sub_00502034;//00502034
    //procedure sub_005020C4(?:?);//005020C4
    //procedure sub_005020F8(?:?);//005020F8
    //function sub_0050226C:?;//0050226C
    //function sub_005022BC(?:TCustomActionMenuBar; ?:?):?;//005022BC
    //function sub_00502394:?;//00502394
    //function sub_005023E4(?:TCustomActionMenuBar):?;//005023E4
    procedure sub_00502460;//00502460
    //function sub_00502608:?;//00502608
    //procedure sub_005026C0(?:?);//005026C0
    //function sub_00502810:?;//00502810
    //function sub_00502B2C(?:?; ?:?; ?:?):?;//00502B2C
    //procedure sub_00502C14(?:?);//00502C14
    //procedure sub_00502CA0(?:TCustomActionMenuBar; ?:?);//00502CA0
    //procedure sub_00502DBC(?:TCustomActionMenuBar; ?:?);//00502DBC
    //procedure sub_00502DE0(?:?);//00502DE0
    //procedure sub_00502E18(?:?; ?:?);//00502E18
    procedure SetPersistentHotKeys(Value:Boolean);//00502ED0
    //procedure sub_00502F58(?:?);//00502F58
    procedure TrackMenu;//00502F84
    //procedure sub_005030A8(?:?);//005030A8
    //procedure WMKeyDown(?:?);//005030DC
    //procedure WMMouseActivate(?:?);//00503434
    //procedure WMSysKeyDown(?:?);//00503468
    //function sub_00503540(?:?):?;//00503540
    //procedure CMFontChanged(?:?);//005036A4
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005036E0
    //function sub_00503754(?:TCustomActionMenuBar):?;//00503754
    procedure sub_00503864(?:TCustomActionMenuBar);//00503864
    //procedure sub_005038E4(?:TCustomActionMenuBar; ?:?);//005038E4
    //function sub_00503A44(?:TCustomActionMenuBar; ?:?):?;//00503A44
    procedure sub_00503AD8(?:TCustomActionMenuBar);//00503AD8
    //function sub_00503AF4:?;//00503AF4
    procedure Loaded;//00503B88
    procedure sub_00503BC0;//00503BC0
    //procedure sub_00503BE0(?:TCustomActionMenuBar; ?:?);//00503BE0
    constructor Create(AOwner:TComponent);//00503C44
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);//00503CEC
    //procedure sub_00503D08(?:?);//00503D08
    //procedure sub_00503D94(?:?; ?:?);//00503D94
    //function sub_00503DDC(?:TCustomMenuExpandBtn):?;//00503DDC
    constructor Create(AOwner:TComponent);//00503E04
    destructor Destroy;//00503F18
    //procedure sub_00503F7C(?:?);//00503F7C
    //procedure CMMouseLeave(?:?);//0050412C
    //procedure CMVisibleChanged(?:?);//00504188
    //function sub_005041C4(?:?):?;//005041C4
    procedure sub_00504244;//00504244
    //procedure sub_00504284(?:?);//00504284
    //procedure sub_004CC67C(?:?);//005042F8
    //procedure sub_00504310(?:?);//00504310
    //procedure sub_00504334(?:?);//00504334
    //procedure sub_005044A0(?:?; ?:?);//005044A0
    //function sub_00504588(?:TPoint; ?:?):?;//00504588
    //procedure sub_005045B0(?:?; ?:?);//005045B0
    procedure sub_00504990(?:TCustomActionPopupMenu);//00504990
    //procedure sub_00504A70(?:?);//00504A70
    //procedure WMKeyDown(?:?);//00504A94
    //procedure sub_00504DB8(?:?);//00504DB8
    //procedure sub_004D4F60(?:?);//00504DE4
    procedure sub_004CC91C;//00504EA4
    procedure sub_00505004;//00505004
    //procedure sub_0050505C(?:?);//0050505C
    //function sub_0050508C:?;//0050508C
    //function sub_005050A4(?:?; ?:?):?;//005050A4
    procedure sub_005050E0;//005050E0
    procedure sub_00505174;//00505174
    //procedure sub_005051A8(?:?);//005051A8
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005051E4
    //procedure sub_00505244(?:TCustomActionPopupMenu; ?:?);//00505244
    procedure sub_00505278;//00505278
    procedure sub_005052C8;//005052C8
    //procedure sub_004CD1B0(?:?; ?:?; ?:?; ?:?);//00505354
    //procedure sub_00505388(?:?);//00505388
    constructor Create(AOwner:TComponent);//005053A4
    destructor Destroy;//0050540C
    //function sub_0050544C(?:?; ?:?):?;//0050544C
    procedure sub_00505498;//00505498
    //procedure sub_005054A4(?:?);//005054A4
    //function sub_005054C0(?:?):?;//005054C0
    //function sub_0050550C:?;//0050550C
    //function sub_00505548(?:?; ?:?):?;//00505548
    //function sub_005055D4(?:?):?;//005055D4
    //procedure sub_00505750(?:?; ?:?; ?:?);//00505750
    //function sub_005057D0:?;//005057D0
    //procedure sub_00505818(?:?);//00505818
    //procedure sub_00505854(?:?; ?:?; ?:?);//00505854
    //procedure sub_00505918(?:?);//00505918
    //function sub_00505B78:?;//00505B78
    //procedure sub_00505BC8(?:?);//00505BC8
    procedure sub_00505BF4;//00505BF4
    procedure Paint;//00505C0C
    constructor Create(AOwner:TComponent);//00505C80
    destructor Destroy;//00505D90
    procedure sub_00505DEC;//00505DEC
    //procedure WMKeyDown(?:?);//00505E08
    procedure sub_004D37A8;//00505F90
    //function sub_00505FA4(?:?):?;//00505FA4
    //procedure sub_004CC67C(?:?);//00505FF0
    procedure sub_00506074;//00506074
    //procedure sub_005060B0(?:?);//005060B0
    //procedure WMNCHitTest(?:?);//0050617C
    //procedure sub_005061B0(?:?);//005061B0
    //procedure CMWinIniChange(?:?);//00506234
    //procedure sub_00506278(?:?);//00506278
    //procedure sub_005062AC(?:TCustomActionMainMenuBar; ?:?);//005062AC
    //procedure CMEnabledChanged(?:?);//005062E0
    //function sub_00506310:?;//00506310
    procedure Notification(AComponent:TComponent; Operation:TOperation);//0050633C
    procedure sub_005063F0(?:TCustomActionMainMenuBar);//005063F0
    //function sub_00506474(?:?; ?:?):?;//00506474
    //function sub_00506724(?:?; ?:?):?;//00506724
    //procedure sub_0050693C(?:?; ?:?);//0050693C
    //procedure sub_005069E8(?:?);//005069E8
    //procedure sub_00506A1C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00506A1C
    procedure sub_00506AC8;//00506AC8
    //procedure WMSysCommand(?:?);//00506B00
    //procedure WMSysKeyDown(?:?);//00506C2C
    //procedure WMSysKeyUp(?:?);//00506C5C
    //function sub_00506C8C(?:?; ?:?):?;//00506C8C
    procedure TrackMenu;//00506D2C
    constructor Create(AOwner:TComponent);//00506D84
    destructor Destroy;//00506E40
    procedure sub_00506EAC;//00506EAC
    procedure sub_00506FC8;//00506FC8
    procedure sub_00507038;//00507038
    procedure sub_004CCCAC;//0050711C
    procedure sub_00507154;//00507154
    //procedure sub_005071C4(?:TCustomMenuItem; ?:?);//005071C4
    //procedure CMMouseEnter(?:?);//0050728C
    //procedure CMTextChanged(?:?);//0050735C
    //procedure sub_005073D8(?:?);//005073D8
    //procedure sub_004CBB18(?:?; ?:?; ?:?);//005074A0
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);//00507520
    procedure sub_00507658;//00507658
    procedure sub_00507824;//00507824
    //procedure sub_00507888(?:?);//00507888
    //procedure sub_00507898(?:TRect; ?:?; ?:?; ?:?; ?:?);//00507898
    //procedure sub_005079CC(?:?; ?:?; ?:?);//005079CC
    procedure sub_00507ACC;//00507ACC
    //procedure sub_00507B1C(?:?; ?:?; ?:?);//00507B1C
    //procedure sub_004CD1B0(?:?; ?:?; ?:?; ?:?);//00507D64
    constructor Create(AOwner:TComponent);//00507E20
    destructor Destroy;//00507E74
    procedure sub_004CB99C;//00507EE0
    procedure sub_004CCCAC;//00507F0C
    //procedure CMMouseEnter(?:?);//00507FE8
    //procedure sub_0050807C(?:?; ?:?; ?:?);//0050807C
    //procedure sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);//00508108
    //procedure sub_005081F8(?:?; ?:?; ?:?);//005081F8
    //function sub_0050832C(?:TCustomMenuButton):?;//0050832C
    procedure sub_00508354;//00508354
    //procedure sub_004CCD68(?:?; ?:?; ?:?; ?:?);//00508374
    //procedure sub_004CD1B0(?:?; ?:?; ?:?; ?:?);//00508448
    procedure sub_005084A0;//005084A0
    //procedure CMDialogChar(?:?);//005084E8
    procedure RegisterActnBarStyle(AStyle:TActionBarStyleEx);//005084F8
    procedure UnRegisterActnBarStyle(AStyle:TActionBarStyleEx);//00508594

implementation

//004FEBD0
procedure TActionBarStyleEx.GetPopupClass;
begin
{*
>004FEBD0    jmp         @AbstractError
*}
end;

//004FEBD8
procedure TActionBarStyleEx.GetAddRemoveItemClass;
begin
{*
>004FEBD8    jmp         @AbstractError
*}
end;

//004FEBE0
procedure TActionBarStyleEx.GetScrollBtnClass;
begin
{*
>004FEBE0    jmp         @AbstractError
*}
end;

//00500AE4
constructor TMenuStack.Create;
begin
{*
 00500AE4    push        ebp
 00500AE5    mov         ebp,esp
 00500AE7    add         esp,0FFFFFFF4
 00500AEA    test        dl,dl
>00500AEC    je          00500AF6
 00500AEE    add         esp,0FFFFFFF0
 00500AF1    call        @ClassCreate
 00500AF6    mov         dword ptr [ebp-0C],ecx
 00500AF9    mov         byte ptr [ebp-5],dl
 00500AFC    mov         dword ptr [ebp-4],eax
 00500AFF    xor         edx,edx
 00500B01    mov         eax,dword ptr [ebp-4]
 00500B04    call        TOrderedList.Create
 00500B09    mov         eax,dword ptr [ebp-4]
 00500B0C    mov         edx,dword ptr [ebp-0C]
 00500B0F    mov         dword ptr [eax+8],edx
 00500B12    mov         eax,dword ptr [ebp-4]
 00500B15    cmp         byte ptr [ebp-5],0
>00500B19    je          00500B2A
 00500B1B    call        @AfterConstruction
 00500B20    pop         dword ptr fs:[0]
 00500B27    add         esp,0C
 00500B2A    mov         eax,dword ptr [ebp-4]
 00500B2D    mov         esp,ebp
 00500B2F    pop         ebp
 00500B30    ret
*}
end;

//00500B34
{*function sub_00500B34(?:TMenuStack; ?:?):?;
begin
 00500B34    push        ebp
 00500B35    mov         ebp,esp
 00500B37    add         esp,0FFFFFFF4
 00500B3A    mov         dword ptr [ebp-8],edx
 00500B3D    mov         dword ptr [ebp-4],eax
 00500B40    mov         edx,dword ptr [ebp-8]
 00500B43    mov         eax,dword ptr [ebp-4]
 00500B46    mov         eax,dword ptr [eax+4]
 00500B49    call        TList.Get
 00500B4E    mov         dword ptr [ebp-0C],eax
 00500B51    mov         eax,dword ptr [ebp-0C]
 00500B54    mov         esp,ebp
 00500B56    pop         ebp
 00500B57    ret
end;*}

//00500B58
{*function sub_00500B58(?:TMenuStack):?;
begin
 00500B58    push        ebp
 00500B59    mov         ebp,esp
 00500B5B    add         esp,0FFFFFFF8
 00500B5E    mov         dword ptr [ebp-4],eax
 00500B61    mov         eax,dword ptr [ebp-4]
 00500B64    call        00490030
 00500B69    mov         dword ptr [ebp-8],eax
 00500B6C    mov         eax,dword ptr [ebp-8]
 00500B6F    pop         ecx
 00500B70    pop         ecx
 00500B71    pop         ebp
 00500B72    ret
end;*}

//00500B74
{*function sub_00500B74(?:TMenuStack):?;
begin
 00500B74    push        ebp
 00500B75    mov         ebp,esp
 00500B77    add         esp,0FFFFFFF8
 00500B7A    mov         dword ptr [ebp-4],eax
 00500B7D    mov         eax,dword ptr [ebp-4]
 00500B80    mov         edx,dword ptr [eax]
 00500B82    call        dword ptr [edx+4]
 00500B85    mov         dword ptr [ebp-8],eax
 00500B88    mov         eax,dword ptr [ebp-4]
 00500B8B    mov         eax,dword ptr [eax+8]
 00500B8E    test        byte ptr [eax+1C],10
>00500B92    je          00500B9E
 00500B94    lea         eax,[ebp-8]
 00500B97    call        FreeAndNil
>00500B9C    jmp         00500C19
 00500B9E    mov         eax,dword ptr [ebp-8]
 00500BA1    cmp         dword ptr [eax+210],0
>00500BA8    je          00500C19
 00500BAA    mov         eax,dword ptr [ebp-8]
 00500BAD    mov         eax,dword ptr [eax+210]
 00500BB3    xor         edx,edx
 00500BB5    mov         dword ptr [eax+18],edx
 00500BB8    mov         eax,dword ptr [ebp-8]
 00500BBB    xor         edx,edx
 00500BBD    mov         dword ptr [eax+2FC],edx
 00500BC3    xor         edx,edx
 00500BC5    mov         eax,dword ptr [ebp-8]
 00500BC8    mov         ecx,dword ptr [eax]
 00500BCA    call        dword ptr [ecx+124]
 00500BD0    mov         eax,dword ptr [ebp-4]
 00500BD3    call        TOrderedList.Count
 00500BD8    dec         eax
>00500BD9    jne         00500C11
 00500BDB    mov         eax,dword ptr [ebp-4]
 00500BDE    mov         eax,dword ptr [eax+8]
 00500BE1    mov         edx,dword ptr ds:[4FF100];TCustomActionPopupMenu
 00500BE7    call        @IsClass
 00500BEC    test        al,al
>00500BEE    jne         00500C11
 00500BF0    mov         eax,dword ptr [ebp-4]
 00500BF3    call        00500B58
 00500BF8    add         eax,2F8
 00500BFD    push        eax
 00500BFE    mov         eax,dword ptr [ebp-8]
 00500C01    mov         edx,dword ptr ds:[4FF100];TCustomActionPopupMenu
 00500C07    call        @AsClass
 00500C0C    pop         edx
 00500C0D    mov         dword ptr [edx],eax
>00500C0F    jmp         00500C19
 00500C11    lea         eax,[ebp-8]
 00500C14    call        FreeAndNil
 00500C19    mov         eax,dword ptr [ebp-8]
 00500C1C    pop         ecx
 00500C1D    pop         ecx
 00500C1E    pop         ebp
 00500C1F    ret
end;*}

//00500C20
procedure sub_00500C20(?:TMenuStack; ?:TCustomActionMenuBar);
begin
{*
 00500C20    push        ebp
 00500C21    mov         ebp,esp
 00500C23    add         esp,0FFFFFFF8
 00500C26    mov         dword ptr [ebp-8],edx
 00500C29    mov         dword ptr [ebp-4],eax
 00500C2C    mov         edx,dword ptr [ebp-8]
 00500C2F    mov         eax,dword ptr [ebp-4]
 00500C32    mov         ecx,dword ptr [eax]
 00500C34    call        dword ptr [ecx]
 00500C36    pop         ecx
 00500C37    pop         ecx
 00500C38    pop         ebp
 00500C39    ret
*}
end;

//00500D8C
destructor TInternalMDIAction.Destroy;
begin
{*
 00500D8C    push        ebp
 00500D8D    mov         ebp,esp
 00500D8F    add         esp,0FFFFFFF8
 00500D92    call        @BeforeDestruction
 00500D97    mov         byte ptr [ebp-5],dl
 00500D9A    mov         dword ptr [ebp-4],eax
 00500D9D    mov         eax,dword ptr [ebp-4]
 00500DA0    cmp         dword ptr [eax+0A8],0
>00500DA7    je          00500DB7
 00500DA9    mov         eax,dword ptr [ebp-4]
 00500DAC    mov         eax,dword ptr [eax+0A8]
 00500DB2    call        TObject.Free
 00500DB7    mov         dl,byte ptr [ebp-5]
 00500DBA    and         dl,0FC
 00500DBD    mov         eax,dword ptr [ebp-4]
 00500DC0    call        TCustomAction.Destroy
 00500DC5    cmp         byte ptr [ebp-5],0
>00500DC9    jle         00500DD3
 00500DCB    mov         eax,dword ptr [ebp-4]
 00500DCE    call        @ClassDestroy
 00500DD3    pop         ecx
 00500DD4    pop         ecx
 00500DD5    pop         ebp
 00500DD6    ret
*}
end;

//00500DD8
{*procedure sub_00500DD8(?:?);
begin
 00500DD8    push        ebp
 00500DD9    mov         ebp,esp
 00500DDB    add         esp,0FFFFFFF8
 00500DDE    mov         dword ptr [ebp-8],edx
 00500DE1    mov         dword ptr [ebp-4],eax
 00500DE4    mov         eax,dword ptr [ebp-4]
 00500DE7    mov         al,byte ptr [eax+0B0];TInternalMDIAction.FMDIAction:TMDIAction
 00500DED    sub         al,1
>00500DEF    jb          00500E00
>00500DF1    je          00500E32
 00500DF3    dec         al
>00500DF5    je          00500E42
 00500DF7    dec         al
>00500DF9    je          00500E74
>00500DFB    jmp         00500E82
 00500E00    push        0
 00500E02    mov         eax,dword ptr [ebp-4]
 00500E05    mov         eax,dword ptr [eax+0A0];TInternalMDIAction....................FForm:TCustomForm
 00500E0B    call        TWinControl.GetHandle
 00500E10    push        eax
 00500E11    push        222
 00500E16    mov         eax,dword ptr [ebp-4]
 00500E19    mov         eax,dword ptr [eax+0A0];TInternalMDIAction.....................FForm:TCustomForm
 00500E1F    call        TWinControl.GetHandle
 00500E24    push        eax
 00500E25    call        user32.GetParent
 00500E2A    push        eax
 00500E2B    call        user32.SendMessageA
>00500E30    jmp         00500E82
 00500E32    mov         eax,dword ptr [ebp-4]
 00500E35    mov         eax,dword ptr [eax+0A0];TInternalMDIAction......................FForm:TCustomForm
 00500E3B    call        004EE9EC
>00500E40    jmp         00500E82
 00500E42    push        0
 00500E44    mov         eax,dword ptr [ebp-4]
 00500E47    mov         eax,dword ptr [eax+0A0];TInternalMDIAction.......................FForm:TCustomForm
 00500E4D    call        TWinControl.GetHandle
 00500E52    push        eax
 00500E53    push        223
 00500E58    mov         eax,dword ptr [ebp-4]
 00500E5B    mov         eax,dword ptr [eax+0A0];TInternalMDIAction........................FForm:TCustomForm
 00500E61    call        TWinControl.GetHandle
 00500E66    push        eax
 00500E67    call        user32.GetParent
 00500E6C    push        eax
 00500E6D    call        user32.SendMessageA
>00500E72    jmp         00500E82
 00500E74    mov         eax,dword ptr [ebp-4]
 00500E77    mov         eax,dword ptr [eax+0A0];TInternalMDIAction.........................FForm:TCustomForm
 00500E7D    call        004EE9EC
 00500E82    pop         ecx
 00500E83    pop         ecx
 00500E84    pop         ebp
 00500E85    ret
end;*}

//00500E88
{*function sub_00500E88(?:?):?;
begin
 00500E88    push        ebp
 00500E89    mov         ebp,esp
 00500E8B    add         esp,0FFFFFFF4
 00500E8E    mov         dword ptr [ebp-0C],edx
 00500E91    mov         dword ptr [ebp-4],eax
 00500E94    mov         byte ptr [ebp-5],1
 00500E98    mov         al,byte ptr [ebp-5]
 00500E9B    mov         esp,ebp
 00500E9D    pop         ebp
 00500E9E    ret
end;*}

//00500EA0
{*procedure sub_00500EA0(?:?);
begin
 00500EA0    push        ebp
 00500EA1    mov         ebp,esp
 00500EA3    add         esp,0FFFFFFF8
 00500EA6    mov         dword ptr [ebp-8],edx
 00500EA9    mov         dword ptr [ebp-4],eax
 00500EAC    mov         dl,1
 00500EAE    mov         eax,dword ptr [ebp-4]
 00500EB1    call        TVirtualListAction.SetEnabled
 00500EB6    pop         ecx
 00500EB7    pop         ecx
 00500EB8    pop         ebp
 00500EB9    ret
end;*}

//00500EBC
{*function sub_00500EBC(?:?; ?:?; ?:?):?;
begin
 00500EBC    push        ebp
 00500EBD    mov         ebp,esp
 00500EBF    push        ecx
 00500EC0    cmp         dword ptr [ebp+8],0
>00500EC4    jne         00500F0A
 00500EC6    mov         eax,dword ptr [ebp+10]
 00500EC9    mov         eax,dword ptr [eax+8]
 00500ECC    sub         eax,6
>00500ECF    je          00500ED8
 00500ED1    sub         eax,14
>00500ED4    je          00500EFB
>00500ED6    jmp         00500F0A
 00500ED8    mov         eax,[0055E024];gvar_0055E024:TCustomActionMenuBar
 00500EDD    mov         edx,dword ptr ds:[4FF100];TCustomActionPopupMenu
 00500EE3    call        @IsClass
 00500EE8    test        al,al
>00500EEA    je          00500F0A
 00500EEC    mov         eax,[0055E024];gvar_0055E024:TCustomActionMenuBar
 00500EF1    mov         edx,dword ptr [eax]
 00500EF3    call        dword ptr [edx+17C]
>00500EF9    jmp         00500F0A
 00500EFB    cmp         dword ptr ds:[55E014],0;gvar_0055E014
>00500F02    je          00500F0A
 00500F04    call        dword ptr ds:[55E014]
 00500F0A    mov         eax,dword ptr [ebp+10]
 00500F0D    push        eax
 00500F0E    mov         eax,dword ptr [ebp+0C]
 00500F11    push        eax
 00500F12    mov         eax,dword ptr [ebp+8]
 00500F15    push        eax
 00500F16    mov         eax,[0055E01C];gvar_0055E01C:HHOOK
 00500F1B    push        eax
 00500F1C    call        user32.CallNextHookEx
 00500F21    mov         dword ptr [ebp-4],eax
 00500F24    mov         eax,dword ptr [ebp-4]
 00500F27    pop         ecx
 00500F28    pop         ebp
 00500F29    ret         0C
end;*}

//00500F2C
procedure sub_00500F2C(?:TCustomActionMenuBar);
begin
{*
 00500F2C    push        ebp
 00500F2D    mov         ebp,esp
 00500F2F    push        ecx
 00500F30    mov         dword ptr [ebp-4],eax
 00500F33    cmp         dword ptr ds:[55E020],0;gvar_0055E020:TMenuList
>00500F3A    jne         00500F4D
 00500F3C    mov         dl,1
 00500F3E    mov         eax,[00500C3C];TMenuList
 00500F43    call        TObject.Create;TMenuList.Create
 00500F48    mov         [0055E020],eax;gvar_0055E020:TMenuList
 00500F4D    cmp         dword ptr [ebp-4],0
>00500F51    je          00500F70
 00500F53    mov         edx,dword ptr [ebp-4]
 00500F56    mov         eax,[0055E020];gvar_0055E020:TMenuList
 00500F5B    call        00478890
 00500F60    inc         eax
>00500F61    jne         00500F70
 00500F63    mov         edx,dword ptr [ebp-4]
 00500F66    mov         eax,[0055E020];gvar_0055E020:TMenuList
 00500F6B    call        TList.Add
 00500F70    pop         ecx
 00500F71    pop         ebp
 00500F72    ret
*}
end;

//00500F74
procedure sub_00500F74(?:TCustomActionMenuBar);
begin
{*
 00500F74    push        ebp
 00500F75    mov         ebp,esp
 00500F77    push        ecx
 00500F78    mov         dword ptr [ebp-4],eax
 00500F7B    cmp         dword ptr ds:[55E020],0;gvar_0055E020:TMenuList
>00500F82    je          00500FA6
 00500F84    mov         edx,dword ptr [ebp-4]
 00500F87    mov         eax,[0055E020];gvar_0055E020:TMenuList
 00500F8C    call        00478AC4
 00500F91    mov         eax,[0055E020];gvar_0055E020:TMenuList
 00500F96    cmp         dword ptr [eax+8],0
>00500F9A    jne         00500FA6
 00500F9C    mov         eax,55E020;gvar_0055E020:TMenuList
 00500FA1    call        FreeAndNil
 00500FA6    pop         ecx
 00500FA7    pop         ebp
 00500FA8    ret
*}
end;

//00500FAC
{*procedure sub_00500FAC(?:?; ?:?);
begin
 00500FAC    push        ebp
 00500FAD    mov         ebp,esp
 00500FAF    add         esp,0FFFFFFF4
 00500FB2    mov         byte ptr [ebp-9],cl
 00500FB5    mov         dword ptr [ebp-8],edx
 00500FB8    mov         dword ptr [ebp-4],eax
 00500FBB    cmp         byte ptr [ebp-9],0
>00500FBF    jne         00500FE6
 00500FC1    mov         eax,dword ptr [ebp-4]
 00500FC4    cmp         dword ptr [eax+8],1;TMenuList.FCount:Integer
>00500FC8    jne         00500FE6
 00500FCA    call        kernel32.GetCurrentThreadId
 00500FCF    push        eax
 00500FD0    push        0
 00500FD2    mov         eax,500EBC;sub_00500EBC
 00500FD7    push        eax
 00500FD8    push        4
 00500FDA    call        user32.SetWindowsHookExA
 00500FDF    mov         [0055E01C],eax;gvar_0055E01C:HHOOK
>00500FE4    jmp         00501010
 00500FE6    cmp         byte ptr [ebp-9],2
>00500FEA    jne         00501010
 00500FEC    mov         eax,dword ptr [ebp-4]
 00500FEF    cmp         dword ptr [eax+8],0;TMenuList.FCount:Integer
>00500FF3    jne         00501010
 00500FF5    cmp         dword ptr ds:[55E01C],0;gvar_0055E01C:HHOOK
>00500FFC    je          00501010
 00500FFE    mov         eax,[0055E01C];gvar_0055E01C:HHOOK
 00501003    push        eax
 00501004    call        user32.UnhookWindowsHookEx
 00501009    xor         eax,eax
 0050100B    mov         [0055E01C],eax;gvar_0055E01C:HHOOK
 00501010    mov         cl,byte ptr [ebp-9]
 00501013    mov         edx,dword ptr [ebp-8]
 00501016    mov         eax,dword ptr [ebp-4]
 00501019    call        00478BFC
 0050101E    mov         esp,ebp
 00501020    pop         ebp
 00501021    ret
end;*}

//00501024
constructor TCustomActionMenuBar.Create(AOwner:TComponent);
begin
{*
 00501024    push        ebp
 00501025    mov         ebp,esp
 00501027    add         esp,0FFFFFFF4
 0050102A    test        dl,dl
>0050102C    je          00501036
 0050102E    add         esp,0FFFFFFF0
 00501031    call        @ClassCreate
 00501036    mov         dword ptr [ebp-0C],ecx
 00501039    mov         byte ptr [ebp-5],dl
 0050103C    mov         dword ptr [ebp-4],eax
 0050103F    mov         ecx,dword ptr [ebp-0C]
 00501042    xor         edx,edx
 00501044    mov         eax,dword ptr [ebp-4]
 00501047    call        TCustomActionDockBar.Create
 0050104C    mov         eax,dword ptr [ebp-4]
 0050104F    mov         byte ptr [eax+289],1;TCustomActionMenuBar.FAnimationStyle:TAnimationStyle
 00501056    xor         edx,edx
 00501058    mov         eax,dword ptr [ebp-4]
 0050105B    call        TActionToolBar.SetEdgeOuter
 00501060    mov         eax,dword ptr [ebp-4]
 00501063    mov         dword ptr [eax+2C0],0FA0;TCustomActionMenuBar.FExpandDelay:Integer
 0050106D    mov         eax,dword ptr [ebp-4]
 00501070    mov         byte ptr [eax+2C8],1;TCustomActionMenuBar.FDefaultFont:Boolean
 00501077    mov         eax,dword ptr [ebp-4]
 0050107A    mov         byte ptr [eax+288],1;TCustomActionMenuBar.FAnimatePopups:Boolean
 00501081    mov         eax,dword ptr [ebp-4]
 00501084    call        00500F2C
 00501089    mov         eax,dword ptr [ebp-4]
 0050108C    mov         dword ptr [eax+2D8],96;TCustomActionMenuBar.FAnimateDuration:Integer
 00501096    mov         eax,dword ptr [ebp-4]
 00501099    mov         byte ptr [eax+2F0],1;TCustomActionMenuBar.FUseSystemFont:Boolean
 005010A0    mov         eax,[0055B6D8];^Screen:TScreen
 005010A5    mov         eax,dword ptr [eax]
 005010A7    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005010AD    mov         eax,dword ptr [ebp-4]
 005010B0    mov         eax,dword ptr [eax+68];TCustomActionMenuBar.FFont:TFont
 005010B3    mov         ecx,dword ptr [eax]
 005010B5    call        dword ptr [ecx+8];TFont.sub_00486CC0
 005010B8    mov         eax,dword ptr [ebp-4]
 005010BB    cmp         byte ptr [ebp-5],0
>005010BF    je          005010D0
 005010C1    call        @AfterConstruction
 005010C6    pop         dword ptr fs:[0]
 005010CD    add         esp,0C
 005010D0    mov         eax,dword ptr [ebp-4]
 005010D3    mov         esp,ebp
 005010D5    pop         ebp
 005010D6    ret
*}
end;

//005010D8
destructor TCustomActionMenuBar.Destroy;
begin
{*
 005010D8    push        ebp
 005010D9    mov         ebp,esp
 005010DB    add         esp,0FFFFFFF8
 005010DE    call        @BeforeDestruction
 005010E3    mov         byte ptr [ebp-5],dl
 005010E6    mov         dword ptr [ebp-4],eax
 005010E9    mov         eax,dword ptr [ebp-4]
 005010EC    call        00500F74
 005010F1    mov         eax,dword ptr [ebp-4]
 005010F4    cmp         dword ptr [eax+2A8],0;TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
>005010FB    je          0050110E
 005010FD    mov         eax,dword ptr [ebp-4]
 00501100    mov         eax,dword ptr [eax+2A8];TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
 00501106    xor         edx,edx
 00501108    mov         dword ptr [eax+2FC],edx;TCustomActionMenuBar.FChildMenu:TCustomActionMenuBar
 0050110E    mov         eax,dword ptr [ebp-4]
 00501111    add         eax,2F8;TCustomActionMenuBar.FCachedMenu:TCustomActionPopupMenu
 00501116    call        FreeAndNil
 0050111B    mov         dl,byte ptr [ebp-5]
 0050111E    and         dl,0FC
 00501121    mov         eax,dword ptr [ebp-4]
 00501124    call        TCustomActionBar.Destroy
 00501129    cmp         byte ptr [ebp-5],0
>0050112D    jle         00501137
 0050112F    mov         eax,dword ptr [ebp-4]
 00501132    call        @ClassDestroy
 00501137    pop         ecx
 00501138    pop         ecx
 00501139    pop         ebp
 0050113A    ret
*}
end;

//0050113C
procedure DefaultSystemAnimation;
begin
{*
 0050113C    push        ebp
 0050113D    mov         ebp,esp
 0050113F    add         esp,0FFFFFFE8
 00501142    push        0
 00501144    mov         eax,dword ptr [ebp+8]
 00501147    add         eax,0FFFFFFFC
 0050114A    push        eax
 0050114B    push        0
 0050114D    push        1002
 00501152    call        user32.SystemParametersInfoA
 00501157    mov         eax,[0055B4AC];^gvar_00541678
 0050115C    cmp         dword ptr [eax],0
>0050115F    je          0050127C
 00501165    mov         eax,dword ptr [ebp+8]
 00501168    mov         eax,dword ptr [eax-8]
 0050116B    mov         eax,dword ptr [eax+2A8]
 00501171    cmp         byte ptr [eax+288],0
>00501178    jne         00501187
 0050117A    mov         eax,dword ptr [ebp+8]
 0050117D    cmp         byte ptr [eax-9],0
>00501181    jne         0050127C
 00501187    mov         eax,dword ptr [ebp+8]
 0050118A    cmp         dword ptr [eax-4],0
>0050118E    je          0050127C
 00501194    push        0
 00501196    mov         eax,dword ptr [ebp+8]
 00501199    add         eax,0FFFFFFFC
 0050119C    push        eax
 0050119D    push        0
 0050119F    push        1012
 005011A4    call        user32.SystemParametersInfoA
 005011A9    mov         eax,dword ptr [ebp+8]
 005011AC    cmp         dword ptr [eax-4],0
>005011B0    je          005011ED
 005011B2    mov         eax,dword ptr [ebp+8]
 005011B5    movzx       eax,byte ptr [eax-9]
 005011B9    mov         eax,dword ptr [eax*4+541A64]
 005011C0    or          eax,80000
 005011C5    push        eax
 005011C6    mov         eax,dword ptr [ebp+8]
 005011C9    mov         eax,dword ptr [eax-8]
 005011CC    mov         eax,dword ptr [eax+2D8]
 005011D2    push        eax
 005011D3    mov         eax,dword ptr [ebp+8]
 005011D6    mov         eax,dword ptr [eax-8]
 005011D9    call        TWinControl.GetHandle
 005011DE    push        eax
 005011DF    mov         eax,[0055B4AC];^gvar_00541678
 005011E4    mov         eax,dword ptr [eax]
 005011E6    call        eax
>005011E8    jmp         0050127C
 005011ED    lea         edx,[ebp-18]
 005011F0    mov         eax,dword ptr [ebp+8]
 005011F3    mov         eax,dword ptr [eax-8]
 005011F6    mov         eax,dword ptr [eax+2AC]
 005011FC    call        004CA6AC
 00501201    lea         edx,[ebp-18]
 00501204    lea         ecx,[ebp-8]
 00501207    mov         eax,dword ptr [ebp+8]
 0050120A    mov         eax,dword ptr [eax-8]
 0050120D    mov         eax,dword ptr [eax+2AC]
 00501213    mov         eax,dword ptr [eax+30]
 00501216    call        TControl.ClientToScreen
 0050121B    mov         eax,dword ptr [ebp+8]
 0050121E    mov         edx,dword ptr [ebp-8]
 00501221    mov         dword ptr [eax-11],edx
 00501224    mov         edx,dword ptr [ebp-4]
 00501227    mov         dword ptr [eax-0D],edx
 0050122A    mov         eax,dword ptr [ebp+8]
 0050122D    mov         eax,dword ptr [eax-8]
 00501230    mov         eax,dword ptr [eax+44]
 00501233    mov         edx,dword ptr [ebp+8]
 00501236    mov         edx,dword ptr [edx-0D]
 00501239    sub         edx,5
 0050123C    cmp         eax,edx
 0050123E    setl        al
 00501241    and         eax,7F
 00501244    mov         eax,dword ptr [eax*4+541A6C]
 0050124B    mov         edx,dword ptr [ebp+8]
 0050124E    movzx       edx,byte ptr [edx-9]
 00501252    or          eax,dword ptr [edx*4+541A64]
 00501259    push        eax
 0050125A    mov         eax,dword ptr [ebp+8]
 0050125D    mov         eax,dword ptr [eax-8]
 00501260    mov         eax,dword ptr [eax+2D8]
 00501266    push        eax
 00501267    mov         eax,dword ptr [ebp+8]
 0050126A    mov         eax,dword ptr [eax-8]
 0050126D    call        TWinControl.GetHandle
 00501272    push        eax
 00501273    mov         eax,[0055B4AC];^gvar_00541678
 00501278    mov         eax,dword ptr [eax]
 0050127A    call        eax
 0050127C    mov         esp,ebp
 0050127E    pop         ebp
 0050127F    ret
*}
end;

//00501280
procedure DoAnimation(Style:TAnimationStyle);
begin
{*
 00501280    push        ebp
 00501281    mov         ebp,esp
 00501283    add         esp,0FFFFFFD8
 00501286    push        esi
 00501287    push        edi
 00501288    mov         esi,eax
 0050128A    lea         edi,[ebp-8]
 0050128D    movs        dword ptr [edi],dword ptr [esi]
 0050128E    movs        dword ptr [edi],dword ptr [esi]
 0050128F    mov         eax,[0055B4AC];^gvar_00541678
 00501294    cmp         dword ptr [eax],0
>00501297    je          005012AE
 00501299    mov         eax,dword ptr [ebp+8]
 0050129C    mov         eax,dword ptr [eax-8]
 0050129F    mov         eax,dword ptr [eax+2A8]
 005012A5    cmp         byte ptr [eax+288],0
>005012AC    jne         005012BB
 005012AE    mov         eax,dword ptr [ebp+8]
 005012B1    cmp         byte ptr [eax-9],0
>005012B5    jne         00501425
 005012BB    lea         ecx,[ebp-18]
 005012BE    mov         eax,dword ptr [ebp+8]
 005012C1    mov         eax,dword ptr [eax-8]
 005012C4    mov         eax,dword ptr [eax+2AC]
 005012CA    mov         edx,dword ptr [eax+44]
 005012CD    mov         eax,dword ptr [ebp+8]
 005012D0    mov         eax,dword ptr [eax-8]
 005012D3    mov         eax,dword ptr [eax+2AC]
 005012D9    mov         eax,dword ptr [eax+40]
 005012DC    call        Point
 005012E1    lea         edx,[ebp-18]
 005012E4    lea         ecx,[ebp-10]
 005012E7    mov         eax,dword ptr [ebp+8]
 005012EA    mov         eax,dword ptr [eax-8]
 005012ED    mov         eax,dword ptr [eax+2AC]
 005012F3    call        TControl.ClientToScreen
 005012F8    mov         eax,dword ptr [ebp+8]
 005012FB    mov         edx,dword ptr [ebp-10]
 005012FE    mov         dword ptr [eax-11],edx
 00501301    mov         edx,dword ptr [ebp-0C]
 00501304    mov         dword ptr [eax-0D],edx
 00501307    mov         eax,dword ptr [ebp+8]
 0050130A    mov         eax,dword ptr [eax-8]
 0050130D    cmp         byte ptr [eax+289],3
>00501314    jne         00501323
 00501316    mov         eax,dword ptr [ebp+8]
 00501319    cmp         byte ptr [eax-9],0
>0050131D    je          00501425
 00501323    mov         eax,dword ptr [ebp+8]
 00501326    mov         eax,dword ptr [eax-8]
 00501329    mov         eax,dword ptr [eax+2AC]
 0050132F    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 00501335    call        @IsClass
 0050133A    test        al,al
>0050133C    je          00501399
 0050133E    mov         eax,dword ptr [ebp+8]
 00501341    mov         eax,dword ptr [eax-8]
 00501344    mov         eax,dword ptr [eax+2AC]
 0050134A    mov         edx,dword ptr [eax+44]
 0050134D    mov         eax,dword ptr [ebp+8]
 00501350    mov         eax,dword ptr [eax-8]
 00501353    mov         eax,dword ptr [eax+2AC]
 00501359    mov         eax,dword ptr [eax+30]
 0050135C    add         edx,dword ptr [eax+44]
 0050135F    mov         eax,dword ptr [ebp+8]
 00501362    mov         eax,dword ptr [eax-8]
 00501365    mov         eax,dword ptr [eax+2AC]
 0050136B    mov         eax,dword ptr [eax+40]
 0050136E    mov         ecx,dword ptr [ebp+8]
 00501371    mov         ecx,dword ptr [ecx-8]
 00501374    mov         ecx,dword ptr [ecx+2AC]
 0050137A    mov         ecx,dword ptr [ecx+30]
 0050137D    add         eax,dword ptr [ecx+40]
 00501380    lea         ecx,[ebp-10]
 00501383    call        Point
 00501388    mov         eax,dword ptr [ebp+8]
 0050138B    mov         edx,dword ptr [ebp-10]
 0050138E    mov         dword ptr [eax-11],edx
 00501391    mov         edx,dword ptr [ebp-0C]
 00501394    mov         dword ptr [eax-0D],edx
>00501397    jmp         005013D6
 00501399    lea         edx,[ebp-28]
 0050139C    mov         eax,dword ptr [ebp+8]
 0050139F    mov         eax,dword ptr [eax-8]
 005013A2    mov         eax,dword ptr [eax+2AC]
 005013A8    call        004CA6AC
 005013AD    lea         edx,[ebp-28]
 005013B0    lea         ecx,[ebp-10]
 005013B3    mov         eax,dword ptr [ebp+8]
 005013B6    mov         eax,dword ptr [eax-8]
 005013B9    mov         eax,dword ptr [eax+2AC]
 005013BF    mov         eax,dword ptr [eax+30]
 005013C2    call        TControl.ClientToScreen
 005013C7    mov         eax,dword ptr [ebp+8]
 005013CA    mov         edx,dword ptr [ebp-10]
 005013CD    mov         dword ptr [eax-11],edx
 005013D0    mov         edx,dword ptr [ebp-0C]
 005013D3    mov         dword ptr [eax-0D],edx
 005013D6    mov         eax,dword ptr [ebp+8]
 005013D9    mov         eax,dword ptr [eax-0D]
 005013DC    mov         edx,dword ptr [ebp+8]
 005013DF    mov         edx,dword ptr [edx-8]
 005013E2    mov         edx,dword ptr [edx+44]
 005013E5    add         edx,2
 005013E8    cmp         eax,edx
 005013EA    setg        al
 005013ED    and         eax,7F
 005013F0    mov         eax,dword ptr [ebp+eax*4-8]
 005013F4    mov         edx,dword ptr [ebp+8]
 005013F7    movzx       edx,byte ptr [edx-9]
 005013FB    or          eax,dword ptr [edx*4+541A64]
 00501402    push        eax
 00501403    mov         eax,dword ptr [ebp+8]
 00501406    mov         eax,dword ptr [eax-8]
 00501409    mov         eax,dword ptr [eax+2D8]
 0050140F    push        eax
 00501410    mov         eax,dword ptr [ebp+8]
 00501413    mov         eax,dword ptr [eax-8]
 00501416    call        TWinControl.GetHandle
 0050141B    push        eax
 0050141C    mov         eax,[0055B4AC];^gvar_00541678
 00501421    mov         eax,dword ptr [eax]
 00501423    call        eax
 00501425    pop         edi
 00501426    pop         esi
 00501427    mov         esp,ebp
 00501429    pop         ebp
 0050142A    ret
*}
end;

//0050142C
procedure TCustomActionMenuBar.Animate(Show:Boolean);
begin
{*
 0050142C    push        ebp
 0050142D    mov         ebp,esp
 0050142F    add         esp,0FFFFFFEC
 00501432    mov         byte ptr [ebp-9],dl
 00501435    mov         dword ptr [ebp-8],eax
 00501438    mov         eax,dword ptr [ebp-8]
 0050143B    mov         edx,dword ptr [eax]
 0050143D    call        dword ptr [edx+104]
 00501443    test        al,al
>00501445    jne         005014D7
 0050144B    mov         eax,dword ptr [ebp-8]
 0050144E    mov         eax,dword ptr [eax+2C4]
 00501454    cmp         byte ptr [eax+297],0
>0050145B    jne         005014D7
 0050145D    mov         eax,dword ptr [ebp-8]
 00501460    mov         al,byte ptr [eax+289]
 00501466    dec         al
>00501468    je          00501478
 0050146A    dec         al
>0050146C    je          00501481
 0050146E    dec         al
>00501470    je          0050148F
 00501472    dec         al
>00501474    je          005014CB
>00501476    jmp         005014D7
 00501478    push        ebp
 00501479    call        DefaultSystemAnimation
 0050147E    pop         ecx
>0050147F    jmp         005014D7
 00501481    push        ebp
 00501482    mov         eax,541A6C
 00501487    call        DoAnimation
 0050148C    pop         ecx
>0050148D    jmp         005014D7
 0050148F    mov         eax,dword ptr [ebp-8]
 00501492    cmp         dword ptr [eax+2D8],64
>00501499    jle         005014BD
 0050149B    mov         eax,dword ptr [ebp-8]
 0050149E    sub         dword ptr [eax+2D8],64
 005014A5    push        ebp
 005014A6    mov         eax,541A74
 005014AB    call        DoAnimation
 005014B0    pop         ecx
 005014B1    mov         eax,dword ptr [ebp-8]
 005014B4    add         dword ptr [eax+2D8],64
>005014BB    jmp         005014D7
 005014BD    push        ebp
 005014BE    mov         eax,541A74
 005014C3    call        DoAnimation
 005014C8    pop         ecx
>005014C9    jmp         005014D7
 005014CB    push        ebp
 005014CC    mov         eax,541A7C
 005014D1    call        DoAnimation
 005014D6    pop         ecx
 005014D7    mov         esp,ebp
 005014D9    pop         ebp
 005014DA    ret
*}
end;

//005014DC
procedure sub_005014DC(?:TCustomActionMenuBar);
begin
{*
 005014DC    push        ebp
 005014DD    mov         ebp,esp
 005014DF    push        ecx
 005014E0    mov         dword ptr [ebp-4],eax
 005014E3    mov         eax,dword ptr [ebp-4]
 005014E6    mov         eax,dword ptr [eax+2B0]
 005014EC    call        00500B58
 005014F1    cmp         byte ptr [eax+296],0
>005014F8    jne         00501510
 005014FA    mov         eax,dword ptr [ebp-4]
 005014FD    mov         eax,dword ptr [eax+2B0]
 00501503    call        00500B58
 00501508    mov         edx,dword ptr [eax]
 0050150A    call        dword ptr [edx+17C]
 00501510    pop         ecx
 00501511    pop         ebp
 00501512    ret
*}
end;

//00501514
procedure sub_00501514(?:TCustomActionMenuBar);
begin
{*
 00501514    push        ebp
 00501515    mov         ebp,esp
 00501517    add         esp,0FFFFFFF4
 0050151A    mov         dword ptr [ebp-4],eax
 0050151D    mov         eax,dword ptr [ebp-4]
 00501520    cmp         byte ptr [eax+296],0
>00501527    je          00501570
 00501529    mov         eax,dword ptr [ebp-4]
 0050152C    cmp         dword ptr [eax+2B0],0
>00501533    je          00501570
 00501535    mov         eax,dword ptr [ebp-4]
 00501538    mov         eax,dword ptr [eax+2B0]
 0050153E    call        TOrderedList.Count
 00501543    dec         eax
 00501544    test        eax,eax
>00501546    jle         00501570
 00501548    mov         dword ptr [ebp-0C],eax
 0050154B    mov         dword ptr [ebp-8],1
 00501552    mov         eax,dword ptr [ebp-4]
 00501555    mov         eax,dword ptr [eax+2B0]
 0050155B    call        00500B58
 00501560    mov         edx,dword ptr [eax]
 00501562    call        dword ptr [edx+17C]
 00501568    inc         dword ptr [ebp-8]
 0050156B    dec         dword ptr [ebp-0C]
>0050156E    jne         00501552
 00501570    mov         esp,ebp
 00501572    pop         ebp
 00501573    ret
*}
end;

//00501574
procedure sub_00501574;
begin
{*
 00501574    push        ebp
 00501575    mov         ebp,esp
 00501577    push        ecx
 00501578    mov         dword ptr [ebp-4],eax
 0050157B    mov         eax,dword ptr [ebp-4]
 0050157E    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>00501585    je          005015A8
 00501587    mov         eax,dword ptr [ebp-4]
 0050158A    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00501590    xor         edx,edx
 00501592    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 00501598    xor         edx,edx
 0050159A    mov         eax,dword ptr [ebp-4]
 0050159D    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005015A3    call        00503BE0
 005015A8    mov         eax,dword ptr [ebp-4]
 005015AB    cmp         dword ptr [eax+2A8],0;TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
>005015B2    je          005015C4
 005015B4    mov         eax,dword ptr [ebp-4]
 005015B7    mov         eax,dword ptr [eax+2A8];TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
 005015BD    mov         byte ptr [eax+288],0;TCustomActionMenuBar.FAnimatePopups:Boolean
 005015C4    mov         eax,dword ptr [ebp-4]
 005015C7    mov         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
 005015CE    mov         eax,dword ptr [ebp-4]
 005015D1    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>005015D8    je          0050164C
 005015DA    mov         eax,dword ptr [ebp-4]
 005015DD    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005015E3    cmp         dword ptr [eax+2B0],0;TCustomActionMenuBar.FPopupStack:TMenuStack
>005015EA    je          0050164C
 005015EC    mov         eax,dword ptr [ebp-4]
 005015EF    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005015F5    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 005015FB    call        00500B58
 00501600    mov         edx,dword ptr [ebp-4]
 00501603    cmp         eax,dword ptr [edx+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>00501609    jne         00501638
 0050160B    mov         eax,dword ptr [ebp-4]
 0050160E    mov         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
 00501615    mov         eax,dword ptr [ebp-4]
 00501618    call        005023E4
 0050161D    test        eax,eax
>0050161F    je          0050164C
 00501621    mov         eax,dword ptr [ebp-4]
 00501624    call        005023E4
 00501629    mov         eax,dword ptr [eax+40]
 0050162C    xor         edx,edx
 0050162E    mov         ecx,dword ptr [eax]
 00501630    call        dword ptr [ecx+0D8]
>00501636    jmp         0050164C
 00501638    mov         eax,dword ptr [ebp-4]
 0050163B    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00501641    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501647    call        00500B74
 0050164C    pop         ecx
 0050164D    pop         ebp
 0050164E    ret
*}
end;

//00501650
{*procedure TCustomActionMenuBar.sub_00501650(?:?);
begin
 00501650    push        ebp
 00501651    mov         ebp,esp
 00501653    add         esp,0FFFFFFF8
 00501656    mov         dword ptr [ebp-8],edx
 00501659    mov         dword ptr [ebp-4],eax
 0050165C    mov         eax,dword ptr [ebp-4]
 0050165F    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>00501666    jne         00501690
 00501668    mov         eax,dword ptr [ebp-8]
 0050166B    mov         eax,dword ptr [eax+8]
 0050166E    push        eax
 0050166F    push        0
 00501671    mov         eax,dword ptr [ebp-8]
 00501674    mov         eax,dword ptr [eax]
 00501676    push        eax
 00501677    mov         eax,dword ptr [ebp-4]
 0050167A    call        TWinControl.GetHandle
 0050167F    push        eax
 00501680    call        user32.PostMessageA
 00501685    mov         eax,dword ptr [ebp-4]
 00501688    mov         edx,dword ptr [eax]
 0050168A    call        dword ptr [edx+180];TCustomActionMenuBar.TrackMenu
 00501690    pop         ecx
 00501691    pop         ecx
 00501692    pop         ebp
 00501693    ret
end;*}

//00501694
{*procedure TCustomActionMenuBar.sub_00501694(?:?);
begin
 00501694    push        ebp
 00501695    mov         ebp,esp
 00501697    add         esp,0FFFFFFF8
 0050169A    mov         dword ptr [ebp-8],edx
 0050169D    mov         dword ptr [ebp-4],eax
 005016A0    mov         eax,dword ptr [ebp-4]
 005016A3    mov         edx,dword ptr [eax]
 005016A5    call        dword ptr [edx+180];TCustomActionMenuBar.TrackMenu
 005016AB    pop         ecx
 005016AC    pop         ecx
 005016AD    pop         ebp
 005016AE    ret
end;*}

//005016B0
{*procedure TCustomActionMenuBar.sub_005016B0(?:?);
begin
 005016B0    push        ebp
 005016B1    mov         ebp,esp
 005016B3    add         esp,0FFFFFFF8
 005016B6    mov         dword ptr [ebp-8],edx
 005016B9    mov         dword ptr [ebp-4],eax
 005016BC    mov         eax,dword ptr [ebp-4]
 005016BF    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>005016C6    jne         005016F0
 005016C8    mov         eax,dword ptr [ebp-8]
 005016CB    mov         eax,dword ptr [eax+8]
 005016CE    push        eax
 005016CF    push        0
 005016D1    mov         eax,dword ptr [ebp-8]
 005016D4    mov         eax,dword ptr [eax]
 005016D6    push        eax
 005016D7    mov         eax,dword ptr [ebp-4]
 005016DA    call        TWinControl.GetHandle
 005016DF    push        eax
 005016E0    call        user32.PostMessageA
 005016E5    mov         eax,dword ptr [ebp-4]
 005016E8    mov         edx,dword ptr [eax]
 005016EA    call        dword ptr [edx+180];TCustomActionMenuBar.TrackMenu
 005016F0    pop         ecx
 005016F1    pop         ecx
 005016F2    pop         ebp
 005016F3    ret
end;*}

//005016F4
{*function sub_005016F4(?:?):?;
begin
 005016F4    push        ebp
 005016F5    mov         ebp,esp
 005016F7    add         esp,0FFFFFFF4
 005016FA    mov         dword ptr [ebp-8],edx
 005016FD    mov         dword ptr [ebp-4],eax
 00501700    mov         edx,dword ptr [ebp-8]
 00501703    mov         eax,dword ptr [ebp-4]
 00501706    call        0050FEB4
 0050170B    mov         dword ptr [ebp-0C],eax
 0050170E    xor         edx,edx
 00501710    mov         eax,dword ptr [ebp-0C]
 00501713    call        TImage.SetShowHint
 00501718    mov         dl,1
 0050171A    mov         eax,dword ptr [ebp-8]
 0050171D    call        TActionClientItem.SetShowCaption
 00501722    mov         eax,dword ptr [ebp-0C]
 00501725    mov         edx,dword ptr [eax]
 00501727    call        dword ptr [edx+0C8]
 0050172D    test        al,al
>0050172F    jne         00501774
 00501731    mov         eax,dword ptr [ebp-0C]
 00501734    mov         edx,dword ptr [eax]
 00501736    call        dword ptr [edx+50]
 00501739    test        al,al
>0050173B    je          00501766
 0050173D    mov         eax,dword ptr [ebp-8]
 00501740    call        TActionClientItem.GetAction
 00501745    test        eax,eax
>00501747    jne         0050176A
 00501749    mov         eax,dword ptr [ebp-8]
 0050174C    call        0050CB98
 00501751    test        al,al
>00501753    je          00501766
 00501755    mov         eax,dword ptr [ebp-8]
 00501758    call        TActionClient.GetItems
 0050175D    call        0050DCD0
 00501762    test        eax,eax
>00501764    jg          0050176A
 00501766    xor         edx,edx
>00501768    jmp         0050176C
 0050176A    mov         dl,1
 0050176C    mov         eax,dword ptr [ebp-0C]
 0050176F    mov         ecx,dword ptr [eax]
 00501771    call        dword ptr [ecx+64]
 00501774    mov         eax,dword ptr [ebp-0C]
 00501777    mov         esp,ebp
 00501779    pop         ebp
 0050177A    ret
end;*}

//0050177C
{*function sub_0050177C(?:?; ?:?):?;
begin
 0050177C    push        ebp
 0050177D    mov         ebp,esp
 0050177F    add         esp,0FFFFFFEC
 00501782    mov         dword ptr [ebp-0C],ecx
 00501785    mov         dword ptr [ebp-8],edx
 00501788    mov         dword ptr [ebp-4],eax
 0050178B    xor         eax,eax
 0050178D    mov         dword ptr [ebp-10],eax
 00501790    mov         eax,dword ptr [ebp-4]
 00501793    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>0050179A    je          00501A03
 005017A0    cmp         dword ptr [ebp-8],0
>005017A4    je          00501A03
 005017AA    cmp         dword ptr [ebp-0C],0
>005017AE    je          00501A03
 005017B4    mov         eax,dword ptr [ebp-4]
 005017B7    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 005017BD    call        TOrderedList.Count
 005017C2    test        eax,eax
>005017C4    je          00501A03
 005017CA    mov         eax,dword ptr [ebp-4]
 005017CD    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 005017D3    call        00500B58
 005017D8    mov         eax,dword ptr [eax+2AC]
 005017DE    cmp         eax,dword ptr [ebp-0C]
>005017E1    je          00501A03
 005017E7    mov         eax,dword ptr [ebp-0C]
 005017EA    cmp         dword ptr [eax+16C],0
>005017F1    je          00501A03
 005017F7    mov         eax,dword ptr [ebp-0C]
 005017FA    mov         eax,dword ptr [eax+16C]
 00501800    call        TActionClient.GetItems
 00501805    call        0050DCD0
 0050180A    test        eax,eax
>0050180C    je          00501A03
 00501812    mov         edx,dword ptr [ebp-0C]
 00501815    mov         eax,dword ptr [ebp-4]
 00501818    mov         ecx,dword ptr [eax]
 0050181A    call        dword ptr [ecx+15C];TCustomActionMenuBar.sub_005020C4
 00501820    mov         eax,dword ptr [ebp-4]
 00501823    xor         edx,edx
 00501825    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 0050182B    mov         eax,dword ptr [ebp-4]
 0050182E    mov         edx,dword ptr [eax]
 00501830    call        dword ptr [edx+170];TCustomActionMenuBar.sub_00502608
 00501836    mov         dword ptr [ebp-10],eax
 00501839    mov         eax,dword ptr [ebp-10]
 0050183C    call        TWinControl.DisableAlign
 00501841    xor         eax,eax
 00501843    push        ebp
 00501844    push        5019AE
 00501849    push        dword ptr fs:[eax]
 0050184C    mov         dword ptr fs:[eax],esp
 0050184F    mov         eax,dword ptr [ebp-4]
 00501852    call        TActionToolBar.GetColorMap
 00501857    mov         edx,eax
 00501859    mov         eax,dword ptr [ebp-10]
 0050185C    mov         ecx,dword ptr [eax]
 0050185E    call        dword ptr [ecx+12C]
 00501864    mov         eax,dword ptr [ebp-4]
 00501867    mov         edx,dword ptr [eax+70];TCustomActionMenuBar.FColor:TColor
 0050186A    mov         eax,dword ptr [ebp-10]
 0050186D    call        TPanel.SetColor
 00501872    mov         eax,dword ptr [ebp-4]
 00501875    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 0050187B    mov         edx,dword ptr [ebp-10]
 0050187E    mov         dword ptr [edx+2C4],eax
 00501884    mov         eax,dword ptr [ebp-4]
 00501887    mov         al,byte ptr [eax+224];TCustomActionMenuBar.FDesignable:Boolean
 0050188D    mov         edx,dword ptr [ebp-10]
 00501890    mov         byte ptr [edx+224],al
 00501896    mov         eax,dword ptr [ebp-0C]
 00501899    mov         eax,dword ptr [eax+16C]
 0050189F    mov         edx,dword ptr [ebp-10]
 005018A2    mov         dword ptr [eax+18],edx
 005018A5    mov         eax,dword ptr [ebp-4]
 005018A8    mov         edx,dword ptr [eax+68];TCustomActionMenuBar.FFont:TFont
 005018AB    mov         eax,dword ptr [ebp-10]
 005018AE    mov         eax,dword ptr [eax+68]
 005018B1    mov         ecx,dword ptr [eax]
 005018B3    call        dword ptr [ecx+8]
 005018B6    mov         edx,dword ptr [ebp-8]
 005018B9    mov         eax,dword ptr [ebp-10]
 005018BC    call        00502E18
 005018C1    mov         eax,dword ptr [ebp-10]
 005018C4    mov         byte ptr [eax+296],1
 005018CB    mov         eax,dword ptr [ebp-10]
 005018CE    mov         edx,dword ptr [ebp-0C]
 005018D1    mov         dword ptr [eax+2AC],edx
 005018D7    mov         eax,dword ptr [ebp-0C]
 005018DA    mov         eax,dword ptr [eax+16C]
 005018E0    mov         al,byte ptr [eax+30]
 005018E3    mov         byte ptr [ebp-11],al
 005018E6    mov         eax,dword ptr [ebp-0C]
 005018E9    mov         edx,dword ptr [eax+16C]
 005018EF    mov         eax,dword ptr [ebp-10]
 005018F2    mov         ecx,dword ptr [eax]
 005018F4    call        dword ptr [ecx+124]
 005018FA    mov         eax,dword ptr [ebp-0C]
 005018FD    mov         eax,dword ptr [eax+16C]
 00501903    mov         dl,byte ptr [ebp-11]
 00501906    mov         ecx,dword ptr [eax]
 00501908    call        dword ptr [ecx+2C]
 0050190B    mov         eax,dword ptr [ebp-4]
 0050190E    cmp         byte ptr [eax+295],0;TCustomActionMenuBar.FExpanded:Boolean
>00501915    jne         0050194A
 00501917    mov         eax,dword ptr [ebp-4]
 0050191A    mov         edx,dword ptr [eax]
 0050191C    call        dword ptr [edx+104];TCustomActionMenuBar.sub_0050226C
 00501922    test        al,al
>00501924    jne         0050194A
 00501926    mov         eax,dword ptr [ebp-10]
 00501929    call        0051105C
 0050192E    test        eax,eax
>00501930    je          0050194A
 00501932    mov         eax,dword ptr [ebp-0C]
 00501935    mov         eax,dword ptr [eax+16C]
 0050193B    call        TActionClient.GetItems
 00501940    cmp         byte ptr [eax+2A],0
>00501944    je          0050194A
 00501946    xor         eax,eax
>00501948    jmp         0050194C
 0050194A    mov         al,1
 0050194C    mov         edx,dword ptr [ebp-10]
 0050194F    mov         byte ptr [edx+295],al
 00501955    mov         eax,dword ptr [ebp-10]
 00501958    cmp         byte ptr [eax+295],0
>0050195F    je          0050196E
 00501961    xor         edx,edx
 00501963    mov         eax,dword ptr [ebp-10]
 00501966    mov         ecx,dword ptr [eax]
 00501968    call        dword ptr [ecx+164]
 0050196E    mov         eax,[0055B4C8];^Application:TApplication
 00501973    mov         eax,dword ptr [eax]
 00501975    mov         edx,dword ptr [eax+30];TApplication.FHandle:HWND
 00501978    mov         eax,dword ptr [ebp-10]
 0050197B    call        004D0318
 00501980    mov         eax,dword ptr [ebp-8]
 00501983    mov         edx,dword ptr [eax]
 00501985    call        dword ptr [edx+104]
 0050198B    mov         edx,eax
 0050198D    mov         eax,dword ptr [ebp-10]
 00501990    mov         ecx,dword ptr [eax]
 00501992    call        dword ptr [ecx+130]
 00501998    xor         eax,eax
 0050199A    pop         edx
 0050199B    pop         ecx
 0050199C    pop         ecx
 0050199D    mov         dword ptr fs:[eax],edx
 005019A0    push        5019B5
 005019A5    mov         eax,dword ptr [ebp-10]
 005019A8    call        TWinControl.EnableAlign
 005019AD    ret
>005019AE    jmp         @HandleFinally
>005019B3    jmp         005019A5
 005019B5    mov         eax,dword ptr [ebp-10]
 005019B8    call        004CB77C
 005019BD    mov         eax,dword ptr [ebp-0C]
 005019C0    mov         edx,dword ptr ds:[5007B4];TCustomMenuButton
 005019C6    call        @IsClass
 005019CB    test        al,al
>005019CD    je          005019D7
 005019CF    mov         eax,dword ptr [ebp-0C]
 005019D2    mov         edx,dword ptr [eax]
 005019D4    call        dword ptr [edx+7C]
 005019D7    mov         eax,dword ptr [ebp-10]
 005019DA    cmp         byte ptr [eax+294],0
>005019E1    je          005019EF
 005019E3    mov         eax,dword ptr [ebp-10]
 005019E6    cmp         byte ptr [eax+295],0
>005019ED    je          005019F3
 005019EF    xor         edx,edx
>005019F1    jmp         005019F5
 005019F3    mov         dl,1
 005019F5    mov         eax,dword ptr [ebp-4]
 005019F8    mov         eax,dword ptr [eax+300];TCustomActionMenuBar.FExpandTimer:TTimer
 005019FE    call        TTimer.SetEnabled
 00501A03    mov         eax,dword ptr [ebp-10]
 00501A06    mov         esp,ebp
 00501A08    pop         ebp
 00501A09    ret
end;*}

//00501A0C
procedure sub_00501A0C(?:TCustomActionMenuBar; ?:TCustomMenuItem);
begin
{*
 00501A0C    push        ebp
 00501A0D    mov         ebp,esp
 00501A0F    add         esp,0FFFFFFF8
 00501A12    push        ebx
 00501A13    mov         dword ptr [ebp-8],edx
 00501A16    mov         dword ptr [ebp-4],eax
 00501A19    mov         eax,dword ptr [ebp-8]
 00501A1C    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 00501A22    call        @IsClass
 00501A27    test        al,al
>00501A29    je          00501A3F
 00501A2B    mov         eax,dword ptr [ebp-4]
 00501A2E    mov         eax,dword ptr [eax+2C4]
 00501A34    mov         edx,dword ptr [ebp-8]
 00501A37    mov         dword ptr [eax+28C],edx
>00501A3D    jmp         00501A4A
 00501A3F    mov         eax,dword ptr [ebp-4]
 00501A42    xor         edx,edx
 00501A44    mov         dword ptr [eax+28C],edx
 00501A4A    mov         eax,dword ptr [ebp-4]
 00501A4D    mov         eax,dword ptr [eax+2C4]
 00501A53    mov         eax,dword ptr [eax+304]
 00501A59    mov         dl,1
 00501A5B    call        TTimer.SetEnabled
 00501A60    mov         eax,dword ptr [ebp-4]
 00501A63    mov         eax,dword ptr [eax+2C4]
 00501A69    mov         eax,dword ptr [eax+2B0]
 00501A6F    call        00500B58
 00501A74    cmp         byte ptr [eax+294],0
>00501A7B    je          00501AE3
 00501A7D    mov         eax,dword ptr [ebp-4]
 00501A80    mov         eax,dword ptr [eax+2C4]
 00501A86    mov         eax,dword ptr [eax+300]
 00501A8C    xor         edx,edx
 00501A8E    call        TTimer.SetEnabled
 00501A93    mov         eax,dword ptr [ebp-4]
 00501A96    call        005023E4
 00501A9B    mov         ebx,eax
 00501A9D    mov         eax,dword ptr [ebp-4]
 00501AA0    call        0051105C
 00501AA5    cmp         ebx,eax
>00501AA7    je          00501ABF
 00501AA9    mov         eax,dword ptr [ebp-4]
 00501AAC    mov         eax,dword ptr [eax+2C4]
 00501AB2    mov         eax,dword ptr [eax+300]
 00501AB8    mov         dword ptr [eax+0C],1
 00501ABF    mov         eax,dword ptr [ebp-4]
 00501AC2    mov         edx,dword ptr [eax]
 00501AC4    call        dword ptr [edx+104]
 00501ACA    mov         edx,eax
 00501ACC    xor         dl,1
 00501ACF    mov         eax,dword ptr [ebp-4]
 00501AD2    mov         eax,dword ptr [eax+2C4]
 00501AD8    mov         eax,dword ptr [eax+300]
 00501ADE    call        TTimer.SetEnabled
 00501AE3    pop         ebx
 00501AE4    pop         ecx
 00501AE5    pop         ecx
 00501AE6    pop         ebp
 00501AE7    ret
*}
end;

//00501AE8
{*procedure sub_00501AE8(?:?);
begin
 00501AE8    push        ebp
 00501AE9    mov         ebp,esp
 00501AEB    add         esp,0FFFFFFF8
 00501AEE    mov         dword ptr [ebp-8],edx
 00501AF1    mov         dword ptr [ebp-4],eax
 00501AF4    cmp         dword ptr [ebp-8],0
>00501AF8    je          00501B3A
 00501AFA    mov         eax,dword ptr [ebp-4]
 00501AFD    test        byte ptr [eax+1C],10;TCustomActionMenuBar.FComponentState:TComponentState
>00501B01    jne         00501B3A
 00501B03    mov         eax,dword ptr [ebp-4]
 00501B06    mov         edx,dword ptr [eax]
 00501B08    call        dword ptr [edx+104];TCustomActionMenuBar.sub_0050226C
 00501B0E    test        al,al
>00501B10    jne         00501B3A
 00501B12    push        2
 00501B14    push        0
 00501B16    call        winmm.sndPlaySoundA
 00501B1B    push        13
 00501B1D    push        501B40;'MenuCommand'
 00501B22    call        winmm.sndPlaySoundA
 00501B27    mov         eax,dword ptr [ebp-4]
 00501B2A    mov         eax,dword ptr [eax+2F4];TCustomActionMenuBar.FSelectedItem:TActionClientItem
 00501B30    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 00501B33    xor         edx,edx
 00501B35    mov         ecx,dword ptr [eax]
 00501B37    call        dword ptr [ecx+18];TActionClientLink.sub_00483C70
 00501B3A    pop         ecx
 00501B3B    pop         ecx
 00501B3C    pop         ebp
 00501B3D    ret
end;*}

//00501B4C
procedure TCustomActionMenuBar.sub_00501B4C;
begin
{*
 00501B4C    push        ebp
 00501B4D    mov         ebp,esp
 00501B4F    add         esp,0FFFFFFF8
 00501B52    push        ebx
 00501B53    mov         dword ptr [ebp-4],eax
 00501B56    mov         eax,dword ptr [ebp-4]
 00501B59    mov         edx,dword ptr [eax]
 00501B5B    call        dword ptr [edx+168];TCustomActionMenuBar.sub_00502394
 00501B61    mov         dword ptr [ebp-8],eax
 00501B64    mov         eax,dword ptr [ebp-4]
 00501B67    cmp         word ptr [eax+2D2],0;TCustomActionMenuBar.?f2D2:word
>00501B6F    je          00501B86
 00501B71    lea         ecx,[ebp-8]
 00501B74    mov         ebx,dword ptr [ebp-4]
 00501B77    mov         edx,dword ptr [ebp-4]
 00501B7A    mov         eax,dword ptr [ebx+2D4];TCustomActionMenuBar.?f2D4:dword
 00501B80    call        dword ptr [ebx+2D0];TCustomActionMenuBar.FOnGetPopupClass
 00501B86    mov         eax,dword ptr [ebp-8]
 00501B89    pop         ebx
 00501B8A    pop         ecx
 00501B8B    pop         ecx
 00501B8C    pop         ebp
 00501B8D    ret
*}
end;

//00501B90
{*function sub_00501B90(?:?):?;
begin
 00501B90    push        ebp
 00501B91    mov         ebp,esp
 00501B93    add         esp,0FFFFFFE8
 00501B96    push        ebx
 00501B97    mov         dword ptr [ebp-8],edx
 00501B9A    mov         dword ptr [ebp-4],eax
 00501B9D    xor         eax,eax
 00501B9F    mov         dword ptr [ebp-0C],eax
 00501BA2    mov         eax,dword ptr [ebp-8]
 00501BA5    mov         eax,dword ptr [eax+4]
 00501BA8    cmp         eax,dword ptr [ebp-4]
>00501BAB    jne         00501BDA
 00501BAD    mov         eax,dword ptr [ebp-8]
 00501BB0    mov         edx,dword ptr ds:[5007B4];TCustomMenuButton
 00501BB6    call        @IsClass
 00501BBB    test        al,al
>00501BBD    je          00501BCF
 00501BBF    mov         eax,dword ptr [ebp-4]
 00501BC2    call        00501514
 00501BC7    mov         eax,dword ptr [ebp-8]
 00501BCA    mov         edx,dword ptr [eax]
 00501BCC    call        dword ptr [edx+7C]
 00501BCF    mov         eax,dword ptr [ebp-4]
 00501BD2    xor         edx,edx
 00501BD4    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 00501BDA    mov         eax,dword ptr [ebp-8]
 00501BDD    mov         eax,dword ptr [eax+16C]
 00501BE3    call        0050CB98
 00501BE8    test        al,al
>00501BEA    je          00501CE5
 00501BF0    mov         eax,dword ptr [ebp-4]
 00501BF3    cmp         dword ptr [eax+28C],0;TCustomActionMenuBar.FDelayItem:TCustomActionControl
>00501BFA    je          00501C39
>00501BFC    jmp         00501C12
 00501BFE    mov         eax,dword ptr [ebp-4]
 00501C01    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00501C07    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501C0D    call        00500B74
 00501C12    mov         eax,dword ptr [ebp-4]
 00501C15    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501C1B    call        00500B58
 00501C20    mov         edx,dword ptr [ebp-4]
 00501C23    mov         edx,dword ptr [edx+28C];TCustomActionMenuBar.FDelayItem:TCustomActionControl
 00501C29    cmp         eax,dword ptr [edx+30];TCustomActionControl.FParent:TWinControl
>00501C2C    jne         00501BFE
 00501C2E    mov         eax,dword ptr [ebp-4]
 00501C31    xor         edx,edx
 00501C33    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 00501C39    mov         eax,dword ptr [ebp-8]
 00501C3C    cmp         byte ptr [eax+57],0
>00501C40    jne         00501C5A
 00501C42    mov         eax,dword ptr [ebp-4]
 00501C45    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501C4B    call        00500B58
 00501C50    mov         dl,1
 00501C52    mov         ecx,dword ptr [eax]
 00501C54    call        dword ptr [ecx+164]
 00501C5A    mov         eax,dword ptr [ebp-4]
 00501C5D    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00501C63    call        00503AD8
 00501C68    mov         eax,dword ptr [ebp-8]
 00501C6B    mov         edx,dword ptr ds:[5007B4];TCustomMenuButton
 00501C71    call        @IsClass
 00501C76    test        al,al
>00501C78    je          00501CB8
 00501C7A    mov         eax,dword ptr [ebp-4]
 00501C7D    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501C83    call        TOrderedList.Count
 00501C88    cmp         eax,2
>00501C8B    jne         00501CB8
>00501C8D    jmp         00501CA5
 00501C8F    mov         eax,dword ptr [ebp-4]
 00501C92    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501C98    call        00500B58
 00501C9D    mov         edx,dword ptr [eax]
 00501C9F    call        dword ptr [edx+17C]
 00501CA5    mov         eax,dword ptr [ebp-4]
 00501CA8    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501CAE    call        TOrderedList.Count
 00501CB3    cmp         eax,2
>00501CB6    jg          00501C8F
 00501CB8    mov         eax,dword ptr [ebp-4]
 00501CBB    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501CC1    call        00500B58
 00501CC6    mov         edx,eax
 00501CC8    mov         ecx,dword ptr [ebp-8]
 00501CCB    mov         eax,dword ptr [ebp-4]
 00501CCE    mov         ebx,dword ptr [eax]
 00501CD0    call        dword ptr [ebx+14C];TCustomActionMenuBar.sub_0050177C
 00501CD6    mov         eax,dword ptr [ebp-4]
 00501CD9    mov         byte ptr [eax+288],0;TCustomActionMenuBar.FAnimatePopups:Boolean
>00501CE0    jmp         00501D7B
 00501CE5    mov         eax,dword ptr [ebp-8]
 00501CE8    mov         eax,dword ptr [eax+16C]
 00501CEE    mov         dword ptr [ebp-0C],eax
 00501CF1    mov         eax,dword ptr [ebp-4]
 00501CF4    mov         edx,dword ptr [eax]
 00501CF6    call        dword ptr [edx+104];TCustomActionMenuBar.sub_0050226C
 00501CFC    test        al,al
>00501CFE    jne         00501D7B
 00501D00    push        0
 00501D02    lea         eax,[ebp-10]
 00501D05    push        eax
 00501D06    push        0
 00501D08    push        1014
 00501D0D    call        user32.SystemParametersInfoA
 00501D12    mov         eax,dword ptr [ebp-4]
 00501D15    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501D1B    call        TOrderedList.Count
 00501D20    dec         eax
>00501D21    jle         00501D68
 00501D23    cmp         dword ptr [ebp-10],0
>00501D27    je          00501D68
 00501D29    mov         eax,dword ptr [ebp-4]
 00501D2C    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501D32    call        TOrderedList.Count
 00501D37    sub         eax,2
 00501D3A    test        eax,eax
>00501D3C    jle         00501D68
 00501D3E    mov         dword ptr [ebp-18],eax
 00501D41    mov         dword ptr [ebp-14],1
 00501D48    mov         edx,dword ptr [ebp-14]
 00501D4B    mov         eax,dword ptr [ebp-4]
 00501D4E    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501D54    call        00500B34
 00501D59    xor         edx,edx
 00501D5B    call        TControl.SetVisible
 00501D60    inc         dword ptr [ebp-14]
 00501D63    dec         dword ptr [ebp-18]
>00501D66    jne         00501D48
 00501D68    mov         eax,dword ptr [ebp-4]
 00501D6B    call        00501514
 00501D70    mov         eax,dword ptr [ebp-4]
 00501D73    mov         edx,dword ptr [eax]
 00501D75    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_00501574
 00501D7B    mov         eax,dword ptr [ebp-0C]
 00501D7E    pop         ebx
 00501D7F    mov         esp,ebp
 00501D81    pop         ebp
 00501D82    ret
end;*}

//00501D84
{*function sub_00501D84(?:?):?;
begin
 00501D84    push        ebp
 00501D85    mov         ebp,esp
 00501D87    add         esp,0FFFFFFF0
 00501D8A    mov         dword ptr [ebp-8],edx
 00501D8D    mov         dword ptr [ebp-4],eax
 00501D90    mov         eax,dword ptr [ebp-4]
 00501D93    mov         byte ptr [eax+297],1;TCustomActionMenuBar.FItemKeyed:Boolean
 00501D9A    xor         eax,eax
 00501D9C    push        ebp
 00501D9D    push        501E0C
 00501DA2    push        dword ptr fs:[eax]
 00501DA5    mov         dword ptr fs:[eax],esp
 00501DA8    mov         edx,dword ptr [ebp-8]
 00501DAB    mov         eax,dword ptr [ebp-4]
 00501DAE    mov         ecx,dword ptr [eax]
 00501DB0    call        dword ptr [ecx+150];TCustomActionMenuBar.sub_00501B90
 00501DB6    mov         dword ptr [ebp-0C],eax
 00501DB9    cmp         dword ptr [ebp-0C],0
>00501DBD    jne         00501DF4
 00501DBF    mov         eax,dword ptr [ebp-4]
 00501DC2    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00501DC8    call        00500B58
 00501DCD    call        0051105C
 00501DD2    mov         dword ptr [ebp-10],eax
 00501DD5    cmp         dword ptr [ebp-10],0
>00501DD9    je          00501DF4
 00501DDB    mov         eax,dword ptr [ebp-10]
 00501DDE    cmp         dword ptr [eax+40],0
>00501DE2    je          00501DF4
 00501DE4    mov         eax,dword ptr [ebp-10]
 00501DE7    mov         eax,dword ptr [eax+40]
 00501DEA    mov         dl,1
 00501DEC    mov         ecx,dword ptr [eax]
 00501DEE    call        dword ptr [ecx+0D8]
 00501DF4    xor         eax,eax
 00501DF6    pop         edx
 00501DF7    pop         ecx
 00501DF8    pop         ecx
 00501DF9    mov         dword ptr fs:[eax],edx
 00501DFC    push        501E13
 00501E01    mov         eax,dword ptr [ebp-4]
 00501E04    mov         byte ptr [eax+297],0;TCustomActionMenuBar.FItemKeyed:Boolean
 00501E0B    ret
>00501E0C    jmp         @HandleFinally
>00501E11    jmp         00501E01
 00501E13    mov         eax,dword ptr [ebp-0C]
 00501E16    mov         esp,ebp
 00501E18    pop         ebp
 00501E19    ret
end;*}

//00501E1C
{*function sub_00501E1C(?:TCustomActionMenuBar; ?:?):?;
begin
 00501E1C    push        ebp
 00501E1D    mov         ebp,esp
 00501E1F    add         esp,0FFFFFFF4
 00501E22    push        ebx
 00501E23    mov         dword ptr [ebp-8],edx
 00501E26    mov         dword ptr [ebp-4],eax
 00501E29    mov         eax,dword ptr [ebp-4]
 00501E2C    mov         edx,dword ptr [eax]
 00501E2E    call        dword ptr [edx+104]
 00501E34    test        al,al
>00501E36    je          00501E48
 00501E38    mov         eax,[0055B688];^gvar_0055DDAC
 00501E3D    mov         eax,dword ptr [eax]
 00501E3F    call        004D95C4
 00501E44    test        al,al
>00501E46    je          00501E4C
 00501E48    xor         eax,eax
>00501E4A    jmp         00501E4E
 00501E4C    mov         al,1
 00501E4E    mov         byte ptr [ebp-9],al
 00501E51    cmp         byte ptr [ebp-9],0
>00501E55    je          00501F11
 00501E5B    mov         eax,dword ptr [ebp-4]
 00501E5E    cmp         dword ptr [eax+290],0
>00501E65    jne         00501E7B
 00501E67    mov         eax,[0055B688];^gvar_0055DDAC
 00501E6C    mov         eax,dword ptr [eax]
 00501E6E    call        004D95C4
 00501E73    test        al,al
>00501E75    jne         00501E7B
 00501E77    xor         eax,eax
>00501E79    jmp         00501E7D
 00501E7B    mov         al,1
 00501E7D    mov         byte ptr [ebp-9],al
 00501E80    cmp         byte ptr [ebp-9],0
>00501E84    je          00501E96
 00501E86    mov         eax,dword ptr [ebp-8]
 00501E89    cmp         dword ptr [eax+4],202
 00501E90    setne       byte ptr [ebp-9]
>00501E94    jmp         00501F11
 00501E96    mov         eax,dword ptr [ebp-4]
 00501E99    cmp         dword ptr [eax+2A4],0
>00501EA0    je          00501EBB
 00501EA2    mov         eax,dword ptr [ebp-4]
 00501EA5    mov         eax,dword ptr [eax+2A4]
 00501EAB    call        TWinControl.GetHandle
 00501EB0    mov         ebx,eax
 00501EB2    call        user32.GetForegroundWindow
 00501EB7    cmp         ebx,eax
>00501EB9    jne         00501EBF
 00501EBB    xor         eax,eax
>00501EBD    jmp         00501EC1
 00501EBF    mov         al,1
 00501EC1    mov         byte ptr [ebp-9],al
 00501EC4    mov         eax,dword ptr [ebp-4]
 00501EC7    test        byte ptr [eax+1C],10
>00501ECB    je          00501EEA
 00501ECD    cmp         byte ptr [ebp-9],0
>00501ED1    je          00501EDF
 00501ED3    mov         eax,dword ptr [ebp-8]
 00501ED6    cmp         dword ptr [eax+4],0B403
>00501EDD    jne         00501EE3
 00501EDF    xor         eax,eax
>00501EE1    jmp         00501EE5
 00501EE3    mov         al,1
 00501EE5    mov         byte ptr [ebp-9],al
>00501EE8    jmp         00501F11
 00501EEA    mov         eax,dword ptr [ebp-4]
 00501EED    cmp         dword ptr [eax+2C4],0
>00501EF4    je          00501F08
 00501EF6    mov         eax,dword ptr [ebp-4]
 00501EF9    mov         eax,dword ptr [eax+2C4]
 00501EFF    cmp         byte ptr [eax+296],0
>00501F06    je          00501F0C
 00501F08    xor         eax,eax
>00501F0A    jmp         00501F0E
 00501F0C    mov         al,1
 00501F0E    mov         byte ptr [ebp-9],al
 00501F11    mov         al,byte ptr [ebp-9]
 00501F14    pop         ebx
 00501F15    mov         esp,ebp
 00501F17    pop         ebp
 00501F18    ret
end;*}

//00502034
procedure sub_00502034;
begin
{*
 00502034    push        ebp
 00502035    mov         ebp,esp
 00502037    push        ecx
 00502038    mov         dword ptr [ebp-4],eax
 0050203B    mov         eax,dword ptr [ebp-4]
 0050203E    mov         edx,dword ptr [eax]
 00502040    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_00501574
 00502046    xor         edx,edx
 00502048    mov         eax,dword ptr [ebp-4]
 0050204B    call        00503BE0
 00502050    mov         eax,dword ptr [ebp-4]
 00502053    add         eax,2F8;TCustomActionMenuBar.FCachedMenu:TCustomActionPopupMenu
 00502058    call        FreeAndNil
 0050205D    xor         eax,eax
 0050205F    mov         [0055E024],eax;gvar_0055E024:TCustomActionMenuBar
 00502064    mov         eax,dword ptr [ebp-4]
 00502067    cmp         byte ptr [eax+224],0;TCustomActionMenuBar.FDesignable:Boolean
>0050206E    je          00502088
 00502070    mov         eax,[0055B168];^gvar_00541A9C
 00502075    cmp         dword ptr [eax],0
>00502078    je          00502088
 0050207A    mov         eax,[0055B168];^gvar_00541A9C
 0050207F    mov         eax,dword ptr [eax]
 00502081    xor         edx,edx
 00502083    mov         ecx,dword ptr [eax]
 00502085    call        dword ptr [ecx+18]
 00502088    mov         eax,dword ptr [ebp-4]
 0050208B    mov         byte ptr [eax+288],1;TCustomActionMenuBar.FAnimatePopups:Boolean
 00502092    push        0
 00502094    call        user32.ShowCaret
 00502099    mov         eax,dword ptr [ebp-4]
 0050209C    add         eax,304;TCustomActionMenuBar.FPopupTimer:TTimer
 005020A1    call        FreeAndNil
 005020A6    mov         eax,dword ptr [ebp-4]
 005020A9    add         eax,2B0;TCustomActionMenuBar.FPopupStack:TMenuStack
 005020AE    call        FreeAndNil
 005020B3    mov         eax,dword ptr [ebp-4]
 005020B6    add         eax,300;TCustomActionMenuBar.FExpandTimer:TTimer
 005020BB    call        FreeAndNil
 005020C0    pop         ecx
 005020C1    pop         ebp
 005020C2    ret
*}
end;

//005020C4
{*procedure sub_005020C4(?:?);
begin
 005020C4    push        ebp
 005020C5    mov         ebp,esp
 005020C7    add         esp,0FFFFFFF8
 005020CA    push        ebx
 005020CB    mov         dword ptr [ebp-8],edx
 005020CE    mov         dword ptr [ebp-4],eax
 005020D1    mov         eax,dword ptr [ebp-4]
 005020D4    cmp         word ptr [eax+2BA],0;TCustomActionMenuBar.?f2BA:word
>005020DC    je          005020F3
 005020DE    mov         ebx,dword ptr [ebp-4]
 005020E1    mov         ecx,dword ptr [ebp-8]
 005020E4    mov         edx,dword ptr [ebp-4]
 005020E7    mov         eax,dword ptr [ebx+2BC];TCustomActionMenuBar.?f2BC:dword
 005020ED    call        dword ptr [ebx+2B8];TCustomActionMenuBar.FOnPopup
 005020F3    pop         ebx
 005020F4    pop         ecx
 005020F5    pop         ecx
 005020F6    pop         ebp
 005020F7    ret
end;*}

//005020F8
{*procedure sub_005020F8(?:?);
begin
 005020F8    push        ebp
 005020F9    mov         ebp,esp
 005020FB    add         esp,0FFFFFFF0
 005020FE    push        esi
 005020FF    mov         byte ptr [ebp-5],dl
 00502102    mov         dword ptr [ebp-4],eax
 00502105    mov         eax,dword ptr [ebp-4]
 00502108    mov         byte ptr [eax+295],1;TCustomActionMenuBar.FExpanded:Boolean
 0050210F    cmp         byte ptr [ebp-5],0
>00502113    je          00502127
 00502115    mov         eax,dword ptr [ebp-4]
 00502118    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 0050211E    mov         dl,byte ptr [ebp-5]
 00502121    mov         byte ptr [eax+295],dl;TCustomActionMenuBar.FExpanded:Boolean
 00502127    mov         eax,dword ptr [ebp-4]
 0050212A    mov         byte ptr [eax+294],0;TCustomActionMenuBar.FExpandable:Boolean
 00502131    mov         eax,dword ptr [ebp-4]
 00502134    call        005116BC
 00502139    test        al,al
>0050213B    je          005021D2
 00502141    mov         eax,dword ptr [ebp-4]
 00502144    call        TWinControl.DisableAlign
 00502149    xor         eax,eax
 0050214B    push        ebp
 0050214C    push        5021CB
 00502151    push        dword ptr fs:[eax]
 00502154    mov         dword ptr fs:[eax],esp
 00502157    mov         eax,dword ptr [ebp-4]
 0050215A    call        00511668
 0050215F    call        00479B60
 00502164    dec         eax
 00502165    test        eax,eax
>00502167    jl          005021A9
 00502169    inc         eax
 0050216A    mov         dword ptr [ebp-10],eax
 0050216D    mov         dword ptr [ebp-0C],0
 00502174    mov         eax,dword ptr [ebp-4]
 00502177    call        00511668
 0050217C    mov         edx,dword ptr [ebp-0C]
 0050217F    call        0050D884
 00502184    mov         al,byte ptr [eax+30]
 00502187    push        eax
 00502188    mov         eax,dword ptr [ebp-4]
 0050218B    call        00511668
 00502190    mov         edx,dword ptr [ebp-0C]
 00502193    call        0050D884
 00502198    mov         eax,dword ptr [eax+40]
 0050219B    pop         edx
 0050219C    call        TControl.SetVisible
 005021A1    inc         dword ptr [ebp-0C]
 005021A4    dec         dword ptr [ebp-10]
>005021A7    jne         00502174
 005021A9    mov         eax,dword ptr [ebp-4]
 005021AC    mov         si,0FFD0
 005021B0    call        @CallDynaInst;TControl.sub_004C9ED8
 005021B5    xor         eax,eax
 005021B7    pop         edx
 005021B8    pop         ecx
 005021B9    pop         ecx
 005021BA    mov         dword ptr fs:[eax],edx
 005021BD    push        5021D2
 005021C2    mov         eax,dword ptr [ebp-4]
 005021C5    call        TWinControl.EnableAlign
 005021CA    ret
>005021CB    jmp         @HandleFinally
>005021D0    jmp         005021C2
 005021D2    pop         esi
 005021D3    mov         esp,ebp
 005021D5    pop         ebp
 005021D6    ret
end;*}

//0050226C
{*function sub_0050226C:?;
begin
 0050226C    push        ebp
 0050226D    mov         ebp,esp
 0050226F    add         esp,0FFFFFFF8
 00502272    mov         dword ptr [ebp-4],eax
 00502275    mov         eax,dword ptr [ebp-4]
 00502278    call        00512304
 0050227D    mov         byte ptr [ebp-5],al
 00502280    cmp         byte ptr [ebp-5],0
>00502284    jne         005022B4
 00502286    mov         eax,dword ptr [ebp-4]
 00502289    cmp         dword ptr [eax+2A8],0;TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
>00502290    je          005022B4
 00502292    mov         eax,dword ptr [ebp-4]
 00502295    mov         eax,dword ptr [eax+2A8];TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
 0050229B    cmp         eax,dword ptr [ebp-4]
>0050229E    je          005022B4
 005022A0    mov         eax,dword ptr [ebp-4]
 005022A3    mov         eax,dword ptr [eax+2A8];TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
 005022A9    mov         edx,dword ptr [eax]
 005022AB    call        dword ptr [edx+104];TCustomActionMenuBar.sub_0050226C
 005022B1    mov         byte ptr [ebp-5],al
 005022B4    mov         al,byte ptr [ebp-5]
 005022B7    pop         ecx
 005022B8    pop         ecx
 005022B9    pop         ebp
 005022BA    ret
end;*}

//005022BC
{*function sub_005022BC(?:TCustomActionMenuBar; ?:?):?;
begin
 005022BC    push        ebp
 005022BD    mov         ebp,esp
 005022BF    add         esp,0FFFFFFC4
 005022C2    push        ebx
 005022C3    push        esi
 005022C4    push        edi
 005022C5    mov         esi,edx
 005022C7    lea         edi,[ebp-34]
 005022CA    mov         ecx,7
 005022CF    rep movs    dword ptr [edi],dword ptr [esi]
 005022D1    mov         dword ptr [ebp-4],eax
 005022D4    xor         eax,eax
 005022D6    mov         dword ptr [ebp-8],eax
 005022D9    xor         eax,eax
 005022DB    mov         dword ptr [ebp-10],eax
 005022DE    mov         eax,dword ptr [ebp-4]
 005022E1    mov         eax,dword ptr [eax+2C4]
 005022E7    mov         dword ptr [ebp-14],eax
 005022EA    cmp         dword ptr [ebp-14],0
>005022EE    je          00502387
 005022F4    mov         eax,dword ptr [ebp-14]
 005022F7    mov         eax,dword ptr [eax+2B0]
 005022FD    call        TOrderedList.Count
 00502302    dec         eax
 00502303    cmp         eax,0
>00502306    jl          0050236F
 00502308    mov         dword ptr [ebp-0C],eax
 0050230B    push        dword ptr [ebp-1C]
 0050230E    push        dword ptr [ebp-20]
 00502311    call        user32.WindowFromPoint
 00502316    mov         ebx,eax
 00502318    mov         edx,dword ptr [ebp-0C]
 0050231B    mov         eax,dword ptr [ebp-14]
 0050231E    mov         eax,dword ptr [eax+2B0]
 00502324    call        00500B34
 00502329    call        TWinControl.GetHandle
 0050232E    cmp         ebx,eax
>00502330    jne         00502366
 00502332    mov         edx,dword ptr [ebp-0C]
 00502335    mov         eax,dword ptr [ebp-14]
 00502338    mov         eax,dword ptr [eax+2B0]
 0050233E    call        00500B34
 00502343    mov         dword ptr [ebp-18],eax
 00502346    push        0
 00502348    lea         ecx,[ebp-3C]
 0050234B    lea         edx,[ebp-20]
 0050234E    mov         eax,dword ptr [ebp-18]
 00502351    call        TControl.ScreenToClient
 00502356    lea         edx,[ebp-3C]
 00502359    mov         cl,1
 0050235B    mov         eax,dword ptr [ebp-18]
 0050235E    call        004D052C
 00502363    mov         dword ptr [ebp-10],eax
 00502366    dec         dword ptr [ebp-0C]
 00502369    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0050236D    jne         0050230B
 0050236F    mov         eax,dword ptr [ebp-10]
 00502372    mov         edx,dword ptr ds:[509FE4];TCustomActionControl
 00502378    call        @IsClass
 0050237D    test        al,al
>0050237F    je          00502387
 00502381    mov         eax,dword ptr [ebp-10]
 00502384    mov         dword ptr [ebp-8],eax
 00502387    mov         eax,dword ptr [ebp-8]
 0050238A    pop         edi
 0050238B    pop         esi
 0050238C    pop         ebx
 0050238D    mov         esp,ebp
 0050238F    pop         ebp
 00502390    ret
end;*}

//00502394
{*function sub_00502394:?;
begin
 00502394    push        ebp
 00502395    mov         ebp,esp
 00502397    add         esp,0FFFFFFF8
 0050239A    mov         dword ptr [ebp-4],eax
 0050239D    mov         eax,dword ptr [ebp-4]
 005023A0    mov         edx,dword ptr [eax]
 005023A2    call        dword ptr [edx+148];TCustomActionMenuBar.sub_00503AF4
 005023A8    test        eax,eax
>005023AA    je          005023C4
 005023AC    mov         eax,dword ptr [ebp-4]
 005023AF    mov         edx,dword ptr [eax]
 005023B1    call        dword ptr [edx+148];TCustomActionMenuBar.sub_00503AF4
 005023B7    mov         edx,dword ptr [ebp-4]
 005023BA    mov         ecx,dword ptr [eax]
 005023BC    call        dword ptr [ecx+0C]
 005023BF    mov         dword ptr [ebp-8],eax
>005023C2    jmp         005023DD
 005023C4    mov         eax,[0055B2C4];^gvar_0055E028
 005023C9    mov         eax,dword ptr [eax]
 005023CB    xor         edx,edx
 005023CD    call        00515B18
 005023D2    mov         edx,dword ptr [ebp-4]
 005023D5    mov         ecx,dword ptr [eax]
 005023D7    call        dword ptr [ecx+0C]
 005023DA    mov         dword ptr [ebp-8],eax
 005023DD    mov         eax,dword ptr [ebp-8]
 005023E0    pop         ecx
 005023E1    pop         ecx
 005023E2    pop         ebp
 005023E3    ret
end;*}

//005023E4
{*function sub_005023E4(?:TCustomActionMenuBar):?;
begin
 005023E4    push        ebp
 005023E5    mov         ebp,esp
 005023E7    add         esp,0FFFFFFF0
 005023EA    mov         dword ptr [ebp-4],eax
 005023ED    xor         eax,eax
 005023EF    mov         dword ptr [ebp-8],eax
 005023F2    mov         eax,dword ptr [ebp-4]
 005023F5    mov         edx,dword ptr [eax]
 005023F7    call        dword ptr [edx+114];TCustomActionMenuBar.sub_00511728
 005023FD    dec         eax
 005023FE    test        eax,eax
>00502400    jl          00502457
 00502402    inc         eax
 00502403    mov         dword ptr [ebp-10],eax
 00502406    mov         dword ptr [ebp-0C],0
 0050240D    mov         edx,dword ptr [ebp-0C]
 00502410    mov         eax,dword ptr [ebp-4]
 00502413    mov         ecx,dword ptr [eax]
 00502415    call        dword ptr [ecx+108];TCustomActionMenuBar.sub_00511530
 0050241B    test        eax,eax
>0050241D    je          0050244F
 0050241F    mov         edx,dword ptr [ebp-0C]
 00502422    mov         eax,dword ptr [ebp-4]
 00502425    mov         ecx,dword ptr [eax]
 00502427    call        dword ptr [ecx+108];TCustomActionMenuBar.sub_00511530
 0050242D    cmp         byte ptr [eax+18A],0
>00502434    je          0050244F
 00502436    mov         edx,dword ptr [ebp-0C]
 00502439    mov         eax,dword ptr [ebp-4]
 0050243C    mov         ecx,dword ptr [eax]
 0050243E    call        dword ptr [ecx+108];TCustomActionMenuBar.sub_00511530
 00502444    mov         eax,dword ptr [eax+16C]
 0050244A    mov         dword ptr [ebp-8],eax
>0050244D    jmp         00502457
 0050244F    inc         dword ptr [ebp-0C]
 00502452    dec         dword ptr [ebp-10]
>00502455    jne         0050240D
 00502457    mov         eax,dword ptr [ebp-8]
 0050245A    mov         esp,ebp
 0050245C    pop         ebp
 0050245D    ret
end;*}

//00502460
procedure sub_00502460;
begin
{*
 00502460    push        ebp
 00502461    mov         ebp,esp
 00502463    add         esp,0FFFFFFE8
 00502466    mov         dword ptr [ebp-4],eax
 00502469    lea         edx,[ebp-18]
 0050246C    mov         eax,[0055B688];^gvar_0055DDAC
 00502471    mov         eax,dword ptr [eax]
 00502473    call        004D95A4
 00502478    mov         eax,dword ptr [ebp-4]
 0050247B    mov         edx,dword ptr [ebp-18]
 0050247E    mov         dword ptr [eax+29C],edx;TCustomActionMenuBar.FMousePos:TPoint
 00502484    mov         edx,dword ptr [ebp-14]
 00502487    mov         dword ptr [eax+2A0],edx
 0050248D    mov         eax,dword ptr [ebp-4]
 00502490    xor         edx,edx
 00502492    mov         dword ptr [eax+2F4],edx;TCustomActionMenuBar.FSelectedItem:TActionClientItem
 00502498    mov         eax,dword ptr [ebp-4]
 0050249B    mov         byte ptr [eax+295],0;TCustomActionMenuBar.FExpanded:Boolean
 005024A2    mov         eax,dword ptr [ebp-4]
 005024A5    xor         edx,edx
 005024A7    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 005024AD    mov         eax,dword ptr [ebp-4]
 005024B0    test        byte ptr [eax+1C],10;TCustomActionMenuBar.FComponentState:TComponentState
>005024B4    je          005024BF
 005024B6    mov         dword ptr [ebp-8],1
>005024BD    jmp         005024D7
 005024BF    push        0
 005024C1    lea         eax,[ebp-8]
 005024C4    push        eax
 005024C5    push        0
 005024C7    push        6A
 005024C9    call        user32.SystemParametersInfoA
 005024CE    cmp         dword ptr [ebp-8],0
>005024D2    jne         005024D7
 005024D4    inc         dword ptr [ebp-8]
 005024D7    mov         eax,dword ptr [ebp-4]
 005024DA    test        byte ptr [eax+1C],10;TCustomActionMenuBar.FComponentState:TComponentState
>005024DE    jne         005024FC
 005024E0    mov         eax,dword ptr [ebp-4]
 005024E3    call        004E7ED8
 005024E8    mov         dword ptr [ebp-0C],eax
 005024EB    cmp         dword ptr [ebp-0C],0
>005024EF    je          005024FC
 005024F1    mov         eax,dword ptr [ebp-0C]
 005024F4    mov         edx,dword ptr [eax]
 005024F6    call        dword ptr [edx+0C4]
 005024FC    xor         ecx,ecx
 005024FE    mov         dl,1
 00502500    mov         eax,[00495F38];TTimer
 00502505    call        TTimer.Create;TTimer.Create
 0050250A    mov         edx,dword ptr [ebp-4]
 0050250D    mov         dword ptr [edx+304],eax;TCustomActionMenuBar.FPopupTimer:TTimer
 00502513    mov         eax,dword ptr [ebp-4]
 00502516    push        eax
 00502517    push        501F1C
 0050251C    mov         eax,dword ptr [ebp-4]
 0050251F    mov         eax,dword ptr [eax+304];TCustomActionMenuBar.FPopupTimer:TTimer
 00502525    call        TTimer.SetOnTimer
 0050252A    mov         edx,dword ptr [ebp-8]
 0050252D    mov         eax,dword ptr [ebp-4]
 00502530    mov         eax,dword ptr [eax+304];TCustomActionMenuBar.FPopupTimer:TTimer
 00502536    call        TTimer.SetInterval
 0050253B    xor         edx,edx
 0050253D    mov         eax,dword ptr [ebp-4]
 00502540    mov         eax,dword ptr [eax+304];TCustomActionMenuBar.FPopupTimer:TTimer
 00502546    call        TTimer.SetEnabled
 0050254B    mov         ecx,dword ptr [ebp-4]
 0050254E    mov         dl,1
 00502550    mov         eax,[004FEA7C];TMenuStack
 00502555    call        TMenuStack.Create;TMenuStack.Create
 0050255A    mov         edx,dword ptr [ebp-4]
 0050255D    mov         dword ptr [edx+2B0],eax;TCustomActionMenuBar.FPopupStack:TMenuStack
 00502563    mov         edx,dword ptr [ebp-4]
 00502566    mov         eax,dword ptr [ebp-4]
 00502569    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 0050256F    call        00500C20
 00502574    xor         ecx,ecx
 00502576    mov         dl,1
 00502578    mov         eax,[00495F38];TTimer
 0050257D    call        TTimer.Create;TTimer.Create
 00502582    mov         edx,dword ptr [ebp-4]
 00502585    mov         dword ptr [edx+300],eax;TCustomActionMenuBar.FExpandTimer:TTimer
 0050258B    mov         eax,dword ptr [ebp-4]
 0050258E    mov         eax,dword ptr [eax+300];TCustomActionMenuBar.FExpandTimer:TTimer
 00502594    mov         dword ptr [ebp-10],eax
 00502597    xor         edx,edx
 00502599    mov         eax,dword ptr [ebp-10]
 0050259C    call        TTimer.SetEnabled
 005025A1    mov         eax,dword ptr [ebp-4]
 005025A4    mov         edx,dword ptr [eax+2C0];TCustomActionMenuBar.FExpandDelay:Integer
 005025AA    mov         eax,dword ptr [ebp-10]
 005025AD    call        TTimer.SetInterval
 005025B2    mov         eax,dword ptr [ebp-4]
 005025B5    push        eax
 005025B6    push        5021D8
 005025BB    mov         eax,dword ptr [ebp-10]
 005025BE    call        TTimer.SetOnTimer
 005025C3    mov         eax,dword ptr [ebp-4]
 005025C6    mov         byte ptr [eax+296],1;TCustomActionMenuBar.FInMenuLoop:Boolean
 005025CD    push        0
 005025CF    call        user32.HideCaret
 005025D4    mov         eax,dword ptr [ebp-4]
 005025D7    mov         [0055E024],eax;gvar_0055E024:TCustomActionMenuBar
 005025DC    mov         eax,dword ptr [ebp-4]
 005025DF    cmp         byte ptr [eax+224],0;TCustomActionMenuBar.FDesignable:Boolean
>005025E6    je          00502604
 005025E8    mov         eax,[0055B168];^gvar_00541A9C
 005025ED    cmp         dword ptr [eax],0
>005025F0    je          00502604
 005025F2    mov         eax,[0055B168];^gvar_00541A9C
 005025F7    mov         eax,dword ptr [eax]
 005025F9    mov         edx,dword ptr ds:[55E024];gvar_0055E024:TCustomActionMenuBar
 005025FF    mov         ecx,dword ptr [eax]
 00502601    call        dword ptr [ecx+18]
 00502604    mov         esp,ebp
 00502606    pop         ebp
 00502607    ret
*}
end;

//00502608
{*function sub_00502608:?;
begin
 00502608    push        ebp
 00502609    mov         ebp,esp
 0050260B    add         esp,0FFFFFFF8
 0050260E    push        ebx
 0050260F    push        esi
 00502610    mov         dword ptr [ebp-4],eax
 00502613    xor         eax,eax
 00502615    mov         dword ptr [ebp-8],eax
 00502618    mov         eax,dword ptr [ebp-4]
 0050261B    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00502621    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00502627    call        00500B58
 0050262C    cmp         dword ptr [eax+2F8],0
>00502633    je          00502689
 00502635    mov         eax,dword ptr [ebp-4]
 00502638    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 0050263E    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00502644    call        00500B58
 00502649    mov         eax,dword ptr [eax+2F8]
 0050264F    mov         dword ptr [ebp-8],eax
 00502652    mov         eax,dword ptr [ebp-8]
 00502655    add         eax,30C
 0050265A    call        FreeAndNil
 0050265F    mov         eax,dword ptr [ebp-8]
 00502662    mov         byte ptr [eax+294],0
 00502669    mov         eax,dword ptr [ebp-8]
 0050266C    mov         byte ptr [eax+295],0
 00502673    push        96
 00502678    push        32
 0050267A    xor         ecx,ecx
 0050267C    xor         edx,edx
 0050267E    mov         eax,dword ptr [ebp-8]
 00502681    mov         ebx,dword ptr [eax]
 00502683    call        dword ptr [ebx+84]
 00502689    cmp         dword ptr [ebp-8],0
>0050268D    jne         005026A6
 0050268F    mov         eax,dword ptr [ebp-4]
 00502692    mov         si,0FFB2
 00502696    call        @CallDynaInst;TCustomActionMenuBar.sub_00501B4C
 0050269B    mov         ecx,dword ptr [ebp-4]
 0050269E    mov         dl,1
 005026A0    call        dword ptr [eax+2C]
 005026A3    mov         dword ptr [ebp-8],eax
 005026A6    mov         edx,dword ptr [ebp-8]
 005026A9    mov         eax,dword ptr [ebp-4]
 005026AC    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 005026B2    call        00500C20
 005026B7    mov         eax,dword ptr [ebp-8]
 005026BA    pop         esi
 005026BB    pop         ebx
 005026BC    pop         ecx
 005026BD    pop         ecx
 005026BE    pop         ebp
 005026BF    ret
end;*}

//005026C0
{*procedure sub_005026C0(?:?);
begin
 005026C0    push        ebp
 005026C1    mov         ebp,esp
 005026C3    add         esp,0FFFFFFE4
 005026C6    push        ebx
 005026C7    mov         dword ptr [ebp-8],edx
 005026CA    mov         dword ptr [ebp-4],eax
 005026CD    mov         edx,dword ptr [ebp-8]
 005026D0    mov         eax,dword ptr [ebp-4]
 005026D3    call        005022BC
 005026D8    mov         dword ptr [ebp-0C],eax
 005026DB    cmp         dword ptr [ebp-0C],0
>005026DF    jne         00502800
 005026E5    mov         eax,dword ptr [ebp-8]
 005026E8    mov         eax,dword ptr [eax+4]
 005026EB    sub         eax,200
>005026F0    je          00502714
 005026F2    dec         eax
>005026F3    je          005027CE
 005026F9    add         eax,0FFFFFFFE
 005026FC    sub         eax,2
>005026FF    jb          005027CE
 00502705    dec         eax
 00502706    sub         eax,2
>00502709    jb          005027CE
>0050270F    jmp         00502800
 00502714    mov         eax,[0055B688];^gvar_0055DDAC
 00502719    mov         eax,dword ptr [eax]
 0050271B    call        004D95C4
 00502720    test        al,al
>00502722    je          00502800
 00502728    mov         eax,dword ptr [ebp-8]
 0050272B    push        dword ptr [eax+18]
 0050272E    push        dword ptr [eax+14]
 00502731    call        user32.WindowFromPoint
 00502736    mov         ebx,eax
 00502738    mov         eax,dword ptr [ebp-4]
 0050273B    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00502741    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00502747    call        00500B58
 0050274C    call        TWinControl.GetHandle
 00502751    cmp         ebx,eax
>00502753    je          00502800
 00502759    mov         eax,dword ptr [ebp-4]
 0050275C    call        004E7ED8
 00502761    mov         dword ptr [ebp-14],eax
 00502764    cmp         dword ptr [ebp-14],0
>00502768    je          00502800
 0050276E    push        1
 00502770    lea         ecx,[ebp-1C]
 00502773    mov         edx,dword ptr [ebp-8]
 00502776    add         edx,14
 00502779    mov         eax,dword ptr [ebp-4]
 0050277C    call        TControl.ScreenToClient
 00502781    lea         edx,[ebp-1C]
 00502784    xor         ecx,ecx
 00502786    mov         eax,dword ptr [ebp-14]
 00502789    call        004D052C
 0050278E    mov         dword ptr [ebp-10],eax
 00502791    cmp         dword ptr [ebp-10],0
>00502795    je          00502800
 00502797    mov         eax,dword ptr [ebp-10]
 0050279A    mov         edx,dword ptr ds:[509DC8];TCustomActionBar
 005027A0    call        @IsClass
 005027A5    test        al,al
>005027A7    jne         005027BB
 005027A9    mov         eax,dword ptr [ebp-10]
 005027AC    mov         edx,dword ptr ds:[509FE4];TCustomActionControl
 005027B2    call        @IsClass
 005027B7    test        al,al
>005027B9    je          00502800
 005027BB    mov         eax,dword ptr [ebp-4]
 005027BE    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005027C4    mov         edx,dword ptr [eax]
 005027C6    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_00501574
>005027CC    jmp         00502800
 005027CE    mov         eax,dword ptr [ebp-4]
 005027D1    test        byte ptr [eax+1C],10;TCustomActionMenuBar.FComponentState:TComponentState
>005027D5    jne         005027EF
 005027D7    mov         eax,dword ptr [ebp-4]
 005027DA    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005027E0    mov         edx,dword ptr ds:[4FF100];TCustomActionPopupMenu
 005027E6    call        @IsClass
 005027EB    test        al,al
>005027ED    je          00502800
 005027EF    mov         eax,dword ptr [ebp-4]
 005027F2    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005027F8    mov         edx,dword ptr [eax]
 005027FA    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_00501574
 00502800    mov         eax,dword ptr [ebp-8]
 00502803    push        eax
 00502804    call        user32.DispatchMessageA
 00502809    pop         ebx
 0050280A    mov         esp,ebp
 0050280C    pop         ebp
 0050280D    ret
end;*}

//00502810
{*function sub_00502810:?;
begin
 00502810    push        ebp
 00502811    mov         ebp,esp
 00502813    add         esp,0FFFFFFD8
 00502816    mov         dword ptr [ebp-4],eax
 00502819    xor         eax,eax
 0050281B    mov         dword ptr [ebp-8],eax
 0050281E    mov         eax,dword ptr [ebp-4]
 00502821    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>00502828    jne         00502B24
 0050282E    mov         eax,dword ptr [ebp-4]
 00502831    mov         edx,dword ptr [eax]
 00502833    call        dword ptr [edx+16C];TCustomActionMenuBar.sub_00502460
 00502839    xor         eax,eax
 0050283B    push        ebp
 0050283C    push        502B1D
 00502841    push        dword ptr fs:[eax]
 00502844    mov         dword ptr fs:[eax],esp
 00502847    push        1
 00502849    push        0
 0050284B    push        0
 0050284D    push        0
 0050284F    lea         eax,[ebp-28]
 00502852    push        eax
 00502853    call        user32.PeekMessageA
 00502858    test        eax,eax
>0050285A    je          00502AE9
 00502860    cmp         dword ptr [ebp-24],7B
>00502864    jne         00502882
 00502866    mov         eax,dword ptr [ebp-4]
 00502869    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 0050286F    mov         edx,dword ptr ds:[4FF100];TCustomActionPopupMenu
 00502875    call        @IsClass
 0050287A    test        al,al
>0050287C    jne         00502AF4
 00502882    mov         eax,dword ptr [ebp-4]
 00502885    test        byte ptr [eax+1C],10;TCustomActionMenuBar.FComponentState:TComponentState
>00502889    je          005028A2
 0050288B    lea         edx,[ebp-28]
 0050288E    mov         eax,[0055B4C8];^Application:TApplication
 00502893    mov         eax,dword ptr [eax]
 00502895    call        004F2960
 0050289A    test        al,al
>0050289C    jne         00502AF4
 005028A2    lea         edx,[ebp-28]
 005028A5    mov         eax,dword ptr [ebp-4]
 005028A8    call        00501E1C
 005028AD    test        al,al
>005028AF    je          005028C8
 005028B1    lea         eax,[ebp-28]
 005028B4    push        eax
 005028B5    call        user32.TranslateMessage
 005028BA    lea         eax,[ebp-28]
 005028BD    push        eax
 005028BE    call        user32.DispatchMessageA
>005028C3    jmp         00502AF4
 005028C8    mov         eax,dword ptr [ebp-24]
 005028CB    cmp         eax,200
>005028D0    jge         00502900
 005028D2    cmp         eax,0A4
>005028D7    jg          005028EC
>005028D9    je          0050293E
 005028DB    sub         eax,10
>005028DE    je          0050293E
 005028E0    sub         eax,91
>005028E5    je          0050293E
>005028E7    jmp         00502ACD
 005028EC    sub         eax,0A7
>005028F1    je          0050293E
 005028F3    add         eax,0FFFFFFA7
 005028F6    sub         eax,9
>005028F9    jb          00502965
>005028FB    jmp         00502ACD
 00502900    cmp         eax,0B402
>00502905    jg          00502927
>00502907    je          00502A8E
 0050290D    add         eax,0FFFFFE00
 00502912    sub         eax,0B
>00502915    jb          00502A7E
 0050291B    sub         eax,0AE16
>00502920    je          0050293E
>00502922    jmp         00502ACD
 00502927    sub         eax,0B403
>0050292C    je          00502AB4
 00502932    dec         eax
>00502933    je          00502A9B
>00502939    jmp         00502ACD
 0050293E    mov         eax,dword ptr [ebp-4]
 00502941    mov         edx,dword ptr [eax]
 00502943    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_00501574
 00502949    mov         eax,dword ptr [ebp-4]
 0050294C    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00502952    call        00503AD8
 00502957    lea         eax,[ebp-28]
 0050295A    push        eax
 0050295B    call        user32.DispatchMessageA
>00502960    jmp         00502ADF
 00502965    cmp         dword ptr [ebp-20],70
>00502969    jne         00502A15
 0050296F    mov         eax,dword ptr [ebp-4]
 00502972    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00502978    call        00500B58
 0050297D    call        005023E4
 00502982    test        eax,eax
>00502984    je          00502A15
 0050298A    mov         eax,dword ptr [ebp-4]
 0050298D    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00502993    call        00500B58
 00502998    call        005023E4
 0050299D    mov         eax,dword ptr [eax+64]
 005029A0    mov         dword ptr [ebp-0C],eax
 005029A3    mov         eax,[0055B6D8];^Screen:TScreen
 005029A8    mov         eax,dword ptr [eax]
 005029AA    cmp         dword ptr [eax+6C],0;TScreen.FActiveForm:TForm
>005029AE    jne         005029BA
 005029B0    call        @TryFinallyExit
>005029B5    jmp         00502B24
 005029BA    cmp         dword ptr [ebp-0C],0
>005029BE    jne         005029D3
 005029C0    mov         eax,[0055B6D8];^Screen:TScreen
 005029C5    mov         eax,dword ptr [eax]
 005029C7    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 005029CA    mov         eax,dword ptr [eax+158];TForm.HelpContext:THelpContext
 005029D0    mov         dword ptr [ebp-0C],eax
 005029D3    mov         eax,[0055B6D8];^Screen:TScreen
 005029D8    mov         eax,dword ptr [eax]
 005029DA    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 005029DD    test        byte ptr [eax+228],8;TForm.FBorderIcons:TBorderIcons
>005029E4    je          005029FC
 005029E6    mov         eax,[0055B4C8];^Application:TApplication
 005029EB    mov         eax,dword ptr [eax]
 005029ED    mov         ecx,dword ptr [ebp-0C]
 005029F0    mov         edx,8
 005029F5    call        004F34A4
>005029FA    jmp         00502A0B
 005029FC    mov         eax,[0055B4C8];^Application:TApplication
 00502A01    mov         eax,dword ptr [eax]
 00502A03    mov         edx,dword ptr [ebp-0C]
 00502A06    call        004F342C
 00502A0B    call        @TryFinallyExit
>00502A10    jmp         00502B24
 00502A15    mov         eax,dword ptr [ebp-4]
 00502A18    cmp         byte ptr [eax+248],0;TCustomActionMenuBar.FPersistentHotKeys:Boolean
>00502A1F    jne         00502A2E
 00502A21    mov         dl,1
 00502A23    mov         eax,dword ptr [ebp-4]
 00502A26    mov         ecx,dword ptr [eax]
 00502A28    call        dword ptr [ecx+138];TActionMainMenuBar.SetPersistentHotKeys
 00502A2E    cmp         dword ptr [ebp-24],104
>00502A35    jne         00502A66
 00502A37    cmp         dword ptr [ebp-20],12
>00502A3B    jne         00502A66
 00502A3D    mov         eax,dword ptr [ebp-4]
 00502A40    mov         edx,dword ptr [eax]
 00502A42    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_00501574
 00502A48    mov         eax,dword ptr [ebp-4]
 00502A4B    mov         byte ptr [eax+28A],1;TCustomActionMenuBar.FCancelMenu:Boolean
 00502A52    lea         eax,[ebp-28]
 00502A55    push        eax
 00502A56    call        user32.TranslateMessage
 00502A5B    lea         eax,[ebp-28]
 00502A5E    push        eax
 00502A5F    call        user32.DispatchMessageA
>00502A64    jmp         00502ADF
 00502A66    mov         eax,dword ptr [ebp-4]
 00502A69    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00502A6F    call        00500B58
 00502A74    lea         edx,[ebp-24]
 00502A77    mov         ecx,dword ptr [eax]
 00502A79    call        dword ptr [ecx-14]
>00502A7C    jmp         00502ADF
 00502A7E    lea         edx,[ebp-28]
 00502A81    mov         eax,dword ptr [ebp-4]
 00502A84    mov         ecx,dword ptr [eax]
 00502A86    call        dword ptr [ecx+178];TCustomActionMenuBar.sub_005026C0
>00502A8C    jmp         00502ADF
 00502A8E    mov         edx,dword ptr [ebp-1C]
 00502A91    mov         eax,dword ptr [ebp-4]
 00502A94    call        00501A0C
>00502A99    jmp         00502ADF
 00502A9B    mov         edx,dword ptr [ebp-1C]
 00502A9E    mov         eax,dword ptr [ebp-4]
 00502AA1    mov         ecx,dword ptr [eax]
 00502AA3    call        dword ptr [ecx+154];TCustomActionMenuBar.sub_00501D84
 00502AA9    mov         edx,dword ptr [ebp-4]
 00502AAC    mov         dword ptr [edx+2F4],eax;TCustomActionMenuBar.FSelectedItem:TActionClientItem
>00502AB2    jmp         00502ADF
 00502AB4    mov         edx,dword ptr [ebp-1C]
 00502AB7    mov         eax,dword ptr [ebp-4]
 00502ABA    mov         ecx,dword ptr [eax]
 00502ABC    call        dword ptr [ecx+150];TCustomActionMenuBar.sub_00501B90
 00502AC2    mov         edx,dword ptr [ebp-4]
 00502AC5    mov         dword ptr [edx+2F4],eax;TCustomActionMenuBar.FSelectedItem:TActionClientItem
>00502ACB    jmp         00502ADF
 00502ACD    lea         eax,[ebp-28]
 00502AD0    push        eax
 00502AD1    call        user32.TranslateMessage
 00502AD6    lea         eax,[ebp-28]
 00502AD9    push        eax
 00502ADA    call        user32.DispatchMessageA
 00502ADF    mov         eax,dword ptr [ebp-4]
 00502AE2    call        005014DC
>00502AE7    jmp         00502AF4
 00502AE9    lea         edx,[ebp-28]
 00502AEC    mov         eax,dword ptr [ebp-4]
 00502AEF    call        005038E4
 00502AF4    mov         eax,dword ptr [ebp-4]
 00502AF7    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>00502AFE    jne         00502847
 00502B04    xor         eax,eax
 00502B06    pop         edx
 00502B07    pop         ecx
 00502B08    pop         ecx
 00502B09    mov         dword ptr fs:[eax],edx
 00502B0C    push        502B24
 00502B11    mov         eax,dword ptr [ebp-4]
 00502B14    mov         edx,dword ptr [eax]
 00502B16    call        dword ptr [edx+158];TCustomActionMenuBar.sub_00502034
 00502B1C    ret
>00502B1D    jmp         @HandleFinally
>00502B22    jmp         00502B11
 00502B24    mov         eax,dword ptr [ebp-8]
 00502B27    mov         esp,ebp
 00502B29    pop         ebp
 00502B2A    ret
end;*}

//00502B2C
{*function sub_00502B2C(?:?; ?:?; ?:?):?;
begin
 00502B2C    push        ebp
 00502B2D    mov         ebp,esp
 00502B2F    add         esp,0FFFFFFF4
 00502B32    push        ebx
 00502B33    mov         dword ptr [ebp-8],edx
 00502B36    mov         byte ptr [ebp-1],al
 00502B39    mov         byte ptr [ebp-0A],1
 00502B3D    mov         eax,dword ptr [ebp+8]
 00502B40    mov         eax,dword ptr [eax-4]
 00502B43    call        005023E4
 00502B48    mov         edx,dword ptr [ebp-8]
 00502B4B    mov         dword ptr [edx],eax
>00502B4D    jmp         00502BF5
 00502B52    cmp         byte ptr [ebp-1],0
>00502B56    je          00502B74
 00502B58    mov         edx,dword ptr [ebp-8]
 00502B5B    mov         edx,dword ptr [edx]
 00502B5D    mov         eax,dword ptr [ebp+8]
 00502B60    mov         eax,dword ptr [eax-4]
 00502B63    mov         cl,1
 00502B65    mov         ebx,dword ptr [eax]
 00502B67    call        dword ptr [ebx+0F0]
 00502B6D    mov         edx,dword ptr [ebp-8]
 00502B70    mov         dword ptr [edx],eax
>00502B72    jmp         00502B8E
 00502B74    mov         edx,dword ptr [ebp-8]
 00502B77    mov         edx,dword ptr [edx]
 00502B79    mov         eax,dword ptr [ebp+8]
 00502B7C    mov         eax,dword ptr [eax-4]
 00502B7F    mov         cl,1
 00502B81    mov         ebx,dword ptr [eax]
 00502B83    call        dword ptr [ebx+0F4]
 00502B89    mov         edx,dword ptr [ebp-8]
 00502B8C    mov         dword ptr [edx],eax
 00502B8E    mov         eax,dword ptr [ebp-8]
 00502B91    cmp         dword ptr [eax],0
>00502B94    je          00502BEB
 00502B96    mov         eax,dword ptr [ebp-8]
 00502B99    mov         eax,dword ptr [eax]
 00502B9B    cmp         dword ptr [eax+40],0
>00502B9F    je          00502BEB
 00502BA1    mov         eax,dword ptr [ebp+8]
 00502BA4    mov         eax,dword ptr [eax-4]
 00502BA7    test        byte ptr [eax+1C],10
>00502BAB    jne         00502BFF
 00502BAD    mov         eax,dword ptr [ebp+8]
 00502BB0    mov         eax,dword ptr [eax-4]
 00502BB3    mov         edx,dword ptr [eax]
 00502BB5    call        dword ptr [edx+104]
 00502BBB    test        al,al
>00502BBD    je          00502BD2
 00502BBF    mov         eax,dword ptr [ebp-8]
 00502BC2    mov         eax,dword ptr [eax]
 00502BC4    mov         eax,dword ptr [eax+40]
 00502BC7    mov         edx,dword ptr [eax]
 00502BC9    call        dword ptr [edx+50]
 00502BCC    test        al,al
>00502BCE    jne         00502BFF
>00502BD0    jmp         00502BEB
 00502BD2    mov         eax,dword ptr [ebp-8]
 00502BD5    mov         eax,dword ptr [eax]
 00502BD7    cmp         byte ptr [eax+50],0
>00502BDB    jne         00502BEB
 00502BDD    mov         eax,dword ptr [ebp-8]
 00502BE0    mov         eax,dword ptr [eax]
 00502BE2    mov         eax,dword ptr [eax+40]
 00502BE5    cmp         byte ptr [eax+57],0
>00502BE9    jne         00502BFF
 00502BEB    mov         eax,dword ptr [ebp-8]
 00502BEE    cmp         dword ptr [eax],0
 00502BF1    setne       byte ptr [ebp-0A]
 00502BF5    cmp         byte ptr [ebp-0A],0
>00502BF9    jne         00502B52
 00502BFF    mov         eax,dword ptr [ebp-8]
 00502C02    cmp         dword ptr [eax],0
 00502C05    setne       byte ptr [ebp-9]
 00502C09    mov         al,byte ptr [ebp-9]
 00502C0C    pop         ebx
 00502C0D    mov         esp,ebp
 00502C0F    pop         ebp
 00502C10    ret
end;*}

//00502C14
{*procedure sub_00502C14(?:?);
begin
 00502C14    push        ebp
 00502C15    mov         ebp,esp
 00502C17    add         esp,0FFFFFFEC
 00502C1A    xor         edx,edx
 00502C1C    mov         dword ptr [ebp-10],edx
 00502C1F    mov         dword ptr [ebp-14],edx
 00502C22    mov         dword ptr [ebp-4],eax
 00502C25    xor         eax,eax
 00502C27    push        ebp
 00502C28    push        502C93
 00502C2D    push        dword ptr fs:[eax]
 00502C30    mov         dword ptr fs:[eax],esp
 00502C33    mov         eax,dword ptr [ebp-4]
 00502C36    test        byte ptr [eax+31],2
>00502C3A    jne         00502C78
 00502C3C    lea         edx,[ebp-10]
 00502C3F    mov         eax,dword ptr [ebp-4]
 00502C42    call        TActionClientItem.GetCaption
 00502C47    mov         eax,dword ptr [ebp-10]
 00502C4A    mov         dword ptr [ebp-0C],eax
 00502C4D    mov         byte ptr [ebp-8],0B
 00502C51    lea         eax,[ebp-0C]
 00502C54    push        eax
 00502C55    push        0
 00502C57    lea         edx,[ebp-14]
 00502C5A    mov         eax,[0055B6A4];^SMoveNotAllowed:TResStringRec
 00502C5F    call        LoadResString
 00502C64    mov         ecx,dword ptr [ebp-14]
 00502C67    mov         dl,1
 00502C69    mov         eax,[004653B4];Exception
 00502C6E    call        Exception.CreateFmt;Exception.Create
 00502C73    call        @RaiseExcept
 00502C78    xor         eax,eax
 00502C7A    pop         edx
 00502C7B    pop         ecx
 00502C7C    pop         ecx
 00502C7D    mov         dword ptr fs:[eax],edx
 00502C80    push        502C9A
 00502C85    lea         eax,[ebp-14]
 00502C88    mov         edx,2
 00502C8D    call        @LStrArrayClr
 00502C92    ret
>00502C93    jmp         @HandleFinally
>00502C98    jmp         00502C85
 00502C9A    mov         esp,ebp
 00502C9C    pop         ebp
 00502C9D    ret
end;*}

//00502CA0
{*procedure sub_00502CA0(?:TCustomActionMenuBar; ?:?);
begin
 00502CA0    push        ebp
 00502CA1    mov         ebp,esp
 00502CA3    add         esp,0FFFFFFF4
 00502CA6    mov         byte ptr [ebp-5],dl
 00502CA9    mov         dword ptr [ebp-4],eax
 00502CAC    push        ebp
 00502CAD    lea         edx,[ebp-0C]
 00502CB0    mov         al,byte ptr [ebp-5]
 00502CB3    call        00502B2C
 00502CB8    pop         ecx
 00502CB9    test        al,al
>00502CBB    je          00502DB2
 00502CC1    mov         eax,dword ptr [ebp-4]
 00502CC4    mov         eax,dword ptr [eax+2C4]
 00502CCA    mov         eax,dword ptr [eax+2B0]
 00502CD0    call        00500B58
 00502CD5    cmp         eax,dword ptr [ebp-4]
>00502CD8    jne         00502D4C
 00502CDA    mov         eax,dword ptr [ebp-4]
 00502CDD    mov         edx,dword ptr [eax]
 00502CDF    call        dword ptr [edx+104]
 00502CE5    test        al,al
>00502CE7    je          00502D3C
 00502CE9    call        004E7E34
 00502CEE    mov         dl,byte ptr ds:[502DB8];0x4 gvar_00502DB8
 00502CF4    cmp         dl,al
>00502CF6    jne         00502D3C
 00502CF8    cmp         dword ptr [ebp-0C],0
>00502CFC    je          00502D3C
 00502CFE    mov         eax,dword ptr [ebp-4]
 00502D01    call        005023E4
 00502D06    test        eax,eax
>00502D08    je          00502D3C
 00502D0A    push        ebp
 00502D0B    mov         eax,dword ptr [ebp-4]
 00502D0E    call        005023E4
 00502D13    call        00502C14
 00502D18    pop         ecx
 00502D19    push        ebp
 00502D1A    mov         eax,dword ptr [ebp-0C]
 00502D1D    call        00502C14
 00502D22    pop         ecx
 00502D23    mov         eax,dword ptr [ebp-0C]
 00502D26    call        TCollectionItem.GetIndex
 00502D2B    push        eax
 00502D2C    mov         eax,dword ptr [ebp-4]
 00502D2F    call        005023E4
 00502D34    pop         edx
 00502D35    mov         ecx,dword ptr [eax]
 00502D37    call        dword ptr [ecx+14]
>00502D3A    jmp         00502DB2
 00502D3C    mov         eax,dword ptr [ebp-0C]
 00502D3F    mov         edx,dword ptr [eax+40]
 00502D42    mov         eax,dword ptr [ebp-4]
 00502D45    call        00502DBC
>00502D4A    jmp         00502DB2
 00502D4C    mov         eax,dword ptr [ebp-0C]
 00502D4F    mov         eax,dword ptr [eax+40]
 00502D52    mov         eax,dword ptr [eax+30]
 00502D55    cmp         eax,dword ptr [ebp-4]
>00502D58    jne         00502DA4
 00502D5A    mov         eax,dword ptr [ebp-0C]
 00502D5D    call        TActionClientItem.GetAction
 00502D62    test        eax,eax
>00502D64    je          00502DA4
 00502D66    mov         eax,dword ptr [ebp-4]
 00502D69    mov         eax,dword ptr [eax+2C4]
 00502D6F    mov         eax,dword ptr [eax+2B0]
 00502D75    call        00500B58
 00502D7A    mov         byte ptr [eax+296],0
 00502D81    mov         eax,dword ptr [ebp-4]
 00502D84    mov         eax,dword ptr [eax+2C4]
 00502D8A    xor         edx,edx
 00502D8C    mov         dword ptr [eax+28C],edx
 00502D92    mov         eax,dword ptr [ebp-0C]
 00502D95    mov         eax,dword ptr [eax+40]
 00502D98    mov         dl,1
 00502D9A    mov         ecx,dword ptr [eax]
 00502D9C    call        dword ptr [ecx+0D8]
>00502DA2    jmp         00502DB2
 00502DA4    mov         eax,dword ptr [ebp-0C]
 00502DA7    mov         eax,dword ptr [eax+40]
 00502DAA    mov         edx,dword ptr [eax]
 00502DAC    call        dword ptr [edx+0E0]
 00502DB2    mov         esp,ebp
 00502DB4    pop         ebp
 00502DB5    ret
end;*}

//00502DBC
{*procedure sub_00502DBC(?:TCustomActionMenuBar; ?:?);
begin
 00502DBC    push        ebp
 00502DBD    mov         ebp,esp
 00502DBF    add         esp,0FFFFFFF8
 00502DC2    mov         dword ptr [ebp-8],edx
 00502DC5    mov         dword ptr [ebp-4],eax
 00502DC8    cmp         dword ptr [ebp-8],0
>00502DCC    je          00502DDB
 00502DCE    mov         dl,1
 00502DD0    mov         eax,dword ptr [ebp-8]
 00502DD3    mov         ecx,dword ptr [eax]
 00502DD5    call        dword ptr [ecx+0D8]
 00502DDB    pop         ecx
 00502DDC    pop         ecx
 00502DDD    pop         ebp
 00502DDE    ret
end;*}

//00502DE0
{*procedure sub_00502DE0(?:?);
begin
 00502DE0    push        ebp
 00502DE1    mov         ebp,esp
 00502DE3    add         esp,0FFFFFFF8
 00502DE6    mov         byte ptr [ebp-5],dl
 00502DE9    mov         dword ptr [ebp-4],eax
 00502DEC    mov         eax,dword ptr [ebp-4]
 00502DEF    mov         edx,dword ptr [eax]
 00502DF1    call        dword ptr [edx+104];TCustomActionMenuBar.sub_0050226C
 00502DF7    cmp         al,byte ptr [ebp-5]
>00502DFA    je          00502E07
 00502DFC    mov         eax,dword ptr [ebp-4]
 00502DFF    mov         edx,dword ptr [eax]
 00502E01    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_00501574
 00502E07    mov         dl,byte ptr [ebp-5]
 00502E0A    mov         eax,dword ptr [ebp-4]
 00502E0D    call        005119CC
 00502E12    pop         ecx
 00502E13    pop         ecx
 00502E14    pop         ebp
 00502E15    ret
end;*}

//00502E18
{*procedure sub_00502E18(?:?; ?:?);
begin
 00502E18    push        ebp
 00502E19    mov         ebp,esp
 00502E1B    add         esp,0FFFFFFF8
 00502E1E    mov         dword ptr [ebp-8],edx
 00502E21    mov         dword ptr [ebp-4],eax
 00502E24    mov         eax,dword ptr [ebp-4]
 00502E27    mov         eax,dword ptr [eax+2A8]
 00502E2D    cmp         eax,dword ptr [ebp-8]
>00502E30    je          00502EC9
 00502E36    mov         eax,dword ptr [ebp-8]
 00502E39    mov         edx,dword ptr [ebp-4]
 00502E3C    mov         dword ptr [edx+2A8],eax
 00502E42    mov         eax,dword ptr [ebp-4]
 00502E45    cmp         dword ptr [eax+2A8],0
>00502E4C    je          00502EC9
 00502E4E    mov         eax,dword ptr [ebp-4]
 00502E51    mov         eax,dword ptr [eax+2A8]
 00502E57    mov         edx,dword ptr [ebp-4]
 00502E5A    mov         dword ptr [eax+2FC],edx
 00502E60    mov         eax,dword ptr [ebp-4]
 00502E63    mov         eax,dword ptr [eax+2A8]
 00502E69    mov         dl,byte ptr [eax+248]
 00502E6F    mov         eax,dword ptr [ebp-4]
 00502E72    mov         ecx,dword ptr [eax]
 00502E74    call        dword ptr [ecx+138]
 00502E7A    mov         eax,dword ptr [ebp-4]
 00502E7D    mov         eax,dword ptr [eax+2A8]
 00502E83    cmp         word ptr [eax+23A],0
>00502E8B    je          00502EB1
 00502E8D    mov         eax,dword ptr [ebp-4]
 00502E90    mov         eax,dword ptr [eax+2A8]
 00502E96    mov         edx,dword ptr [ebp-4]
 00502E99    mov         ecx,dword ptr [eax+238]
 00502E9F    mov         dword ptr [edx+238],ecx
 00502EA5    mov         ecx,dword ptr [eax+23C]
 00502EAB    mov         dword ptr [edx+23C],ecx
 00502EB1    mov         eax,dword ptr [ebp-4]
 00502EB4    mov         eax,dword ptr [eax+2A8]
 00502EBA    mov         al,byte ptr [eax+289]
 00502EC0    mov         edx,dword ptr [ebp-4]
 00502EC3    mov         byte ptr [edx+289],al
 00502EC9    pop         ecx
 00502ECA    pop         ecx
 00502ECB    pop         ebp
 00502ECC    ret
end;*}

//00502ED0
procedure TActionMainMenuBar.SetPersistentHotKeys(Value:Boolean);
begin
{*
 00502ED0    push        ebp
 00502ED1    mov         ebp,esp
 00502ED3    add         esp,0FFFFFFEC
 00502ED6    mov         byte ptr [ebp-5],dl
 00502ED9    mov         dword ptr [ebp-4],eax
 00502EDC    mov         al,byte ptr [ebp-5]
 00502EDF    mov         edx,dword ptr [ebp-4]
 00502EE2    cmp         al,byte ptr [edx+248];TActionMainMenuBar.FPersistentHotKeys:Boolean
 00502EE8    setne       al
 00502EEB    and         al,byte ptr [ebp-5]
 00502EEE    mov         byte ptr [ebp-0D],al
 00502EF1    mov         dl,byte ptr [ebp-5]
 00502EF4    mov         eax,dword ptr [ebp-4]
 00502EF7    call        TActionToolBar.SetPersistentHotKeys
 00502EFC    cmp         byte ptr [ebp-0D],0
>00502F00    je          00502F52
 00502F02    mov         eax,dword ptr [ebp-4]
 00502F05    cmp         dword ptr [eax+2B0],0;TActionMainMenuBar.FPopupStack:TMenuStack
>00502F0C    je          00502F52
 00502F0E    mov         eax,dword ptr [ebp-4]
 00502F11    mov         eax,dword ptr [eax+2B0];TActionMainMenuBar.FPopupStack:TMenuStack
 00502F17    call        TOrderedList.Count
 00502F1C    dec         eax
 00502F1D    test        eax,eax
>00502F1F    jl          00502F52
 00502F21    inc         eax
 00502F22    mov         dword ptr [ebp-14],eax
 00502F25    mov         dword ptr [ebp-0C],0
 00502F2C    mov         eax,dword ptr [ebp-4]
 00502F2F    mov         eax,dword ptr [eax+2B0];TActionMainMenuBar.FPopupStack:TMenuStack
 00502F35    mov         eax,dword ptr [eax+4];TMenuStack.............FList:TList
 00502F38    mov         edx,dword ptr [ebp-0C]
 00502F3B    call        TList.Get
 00502F40    mov         dl,1
 00502F42    mov         ecx,dword ptr [eax]
 00502F44    call        dword ptr [ecx+138]
 00502F4A    inc         dword ptr [ebp-0C]
 00502F4D    dec         dword ptr [ebp-14]
>00502F50    jne         00502F2C
 00502F52    mov         esp,ebp
 00502F54    pop         ebp
 00502F55    ret
*}
end;

//00502F58
{*procedure sub_00502F58(?:?);
begin
 00502F58    push        ebp
 00502F59    mov         ebp,esp
 00502F5B    add         esp,0FFFFFFF8
 00502F5E    mov         dword ptr [ebp-8],edx
 00502F61    mov         dword ptr [ebp-4],eax
 00502F64    mov         edx,dword ptr [ebp-8]
 00502F67    mov         eax,dword ptr [ebp-4]
 00502F6A    call        004CAD7C
 00502F6F    mov         eax,dword ptr [ebp-4]
 00502F72    call        004E7ED8
 00502F77    mov         edx,dword ptr [ebp-4]
 00502F7A    mov         dword ptr [edx+2A4],eax;TCustomActionMenuBar.FParentForm:TCustomForm
 00502F80    pop         ecx
 00502F81    pop         ecx
 00502F82    pop         ebp
 00502F83    ret
end;*}

//00502F84
procedure TCustomActionMenuBar.TrackMenu;
begin
{*
 00502F84    push        ebp
 00502F85    mov         ebp,esp
 00502F87    add         esp,0FFFFFFF8
 00502F8A    push        ebx
 00502F8B    mov         dword ptr [ebp-4],eax
 00502F8E    mov         eax,dword ptr [ebp-4]
 00502F91    cmp         byte ptr [eax+296],0
>00502F98    jne         005030A1
 00502F9E    mov         eax,dword ptr [ebp-4]
 00502FA1    mov         edx,dword ptr [ebp-4]
 00502FA4    mov         dword ptr [eax+2C4],edx
 00502FAA    mov         byte ptr [ebp-5],1
 00502FAE    mov         eax,dword ptr [ebp-4]
 00502FB1    cmp         word ptr [eax+2E2],0
>00502FB9    je          00502FCD
 00502FBB    mov         ebx,dword ptr [ebp-4]
 00502FBE    mov         edx,dword ptr [ebp-4]
 00502FC1    mov         eax,dword ptr [ebx+2E4]
 00502FC7    call        dword ptr [ebx+2E0]
 00502FCD    xor         eax,eax
 00502FCF    push        ebp
 00502FD0    push        50309A
 00502FD5    push        dword ptr fs:[eax]
 00502FD8    mov         dword ptr fs:[eax],esp
 00502FDB    mov         eax,dword ptr [ebp-4]
 00502FDE    mov         edx,dword ptr [eax]
 00502FE0    call        dword ptr [edx+174]
 00502FE6    mov         eax,dword ptr [ebp-4]
 00502FE9    cmp         dword ptr [eax+2F4],0
>00502FF0    je          00503016
 00502FF2    mov         eax,dword ptr [ebp-4]
 00502FF5    cmp         dword ptr [eax+2F4],0
>00502FFC    je          00503012
 00502FFE    mov         eax,dword ptr [ebp-4]
 00503001    mov         eax,dword ptr [eax+2F4]
 00503007    call        TActionClientItem.GetAction
 0050300C    cmp         byte ptr [eax+6A],0
>00503010    je          00503016
 00503012    xor         eax,eax
>00503014    jmp         00503018
 00503016    mov         al,1
 00503018    mov         byte ptr [ebp-5],al
 0050301B    mov         eax,dword ptr [ebp-4]
 0050301E    mov         edx,dword ptr [eax]
 00503020    call        dword ptr [edx+104]
 00503026    test        al,al
>00503028    jne         0050306A
 0050302A    mov         eax,dword ptr [ebp-4]
 0050302D    cmp         dword ptr [eax+2F4],0
>00503034    je          0050306A
 00503036    mov         eax,dword ptr [ebp-4]
 00503039    mov         eax,dword ptr [eax+2F4]
 0050303F    call        0050EA88
 00503044    mov         eax,dword ptr [ebp-4]
 00503047    mov         edx,dword ptr [eax]
 00503049    call        dword ptr [edx+88]
 0050304F    mov         eax,dword ptr [ebp-4]
 00503052    mov         eax,dword ptr [eax+2F4]
 00503058    call        TActionClientItem.GetAction
 0050305D    mov         edx,eax
 0050305F    mov         eax,dword ptr [ebp-4]
 00503062    mov         ecx,dword ptr [eax]
 00503064    call        dword ptr [ecx+160]
 0050306A    xor         eax,eax
 0050306C    pop         edx
 0050306D    pop         ecx
 0050306E    pop         ecx
 0050306F    mov         dword ptr fs:[eax],edx
 00503072    push        5030A1
 00503077    mov         eax,dword ptr [ebp-4]
 0050307A    cmp         word ptr [eax+2EA],0
>00503082    je          00503099
 00503084    mov         ebx,dword ptr [ebp-4]
 00503087    mov         cl,byte ptr [ebp-5]
 0050308A    mov         edx,dword ptr [ebp-4]
 0050308D    mov         eax,dword ptr [ebx+2EC]
 00503093    call        dword ptr [ebx+2E8]
 00503099    ret
>0050309A    jmp         @HandleFinally
>0050309F    jmp         00503077
 005030A1    pop         ebx
 005030A2    pop         ecx
 005030A3    pop         ecx
 005030A4    pop         ebp
 005030A5    ret
*}
end;

//005030A8
{*procedure sub_005030A8(?:?);
begin
 005030A8    push        ebp
 005030A9    mov         ebp,esp
 005030AB    add         esp,0FFFFFFF8
 005030AE    mov         dword ptr [ebp-8],edx
 005030B1    mov         dword ptr [ebp-4],eax
 005030B4    mov         eax,dword ptr [ebp-8]
 005030B7    mov         eax,dword ptr [eax]
 005030B9    sub         eax,84
>005030BE    jne         005030CA
 005030C0    mov         eax,dword ptr [ebp-8]
 005030C3    mov         dword ptr [eax+0C],1
 005030CA    mov         edx,dword ptr [ebp-8]
 005030CD    mov         eax,dword ptr [ebp-4]
 005030D0    call        004D06A8
 005030D5    pop         ecx
 005030D6    pop         ecx
 005030D7    pop         ebp
 005030D8    ret
end;*}

//005030DC
{*procedure TCustomActionMenuBar.WMKeyDown(?:?);
begin
 005030DC    push        ebp
 005030DD    mov         ebp,esp
 005030DF    add         esp,0FFFFFFD8
 005030E2    push        ebx
 005030E3    xor         ecx,ecx
 005030E5    mov         dword ptr [ebp-18],ecx
 005030E8    mov         dword ptr [ebp-24],ecx
 005030EB    mov         dword ptr [ebp-28],ecx
 005030EE    mov         dword ptr [ebp-14],ecx
 005030F1    mov         dword ptr [ebp-8],edx
 005030F4    mov         dword ptr [ebp-4],eax
 005030F7    xor         eax,eax
 005030F9    push        ebp
 005030FA    push        503422
 005030FF    push        dword ptr fs:[eax]
 00503102    mov         dword ptr fs:[eax],esp
 00503105    mov         edx,dword ptr [ebp-8]
 00503108    mov         eax,dword ptr [ebp-4]
 0050310B    call        TWinControl.WMKeyDown
 00503110    mov         eax,dword ptr [ebp-4]
 00503113    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>0050311A    je          005033FA
 00503120    mov         eax,dword ptr [ebp-4]
 00503123    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>0050312A    je          0050317F
 0050312C    mov         eax,dword ptr [ebp-8]
 0050312F    mov         ax,word ptr [eax+4]
 00503133    add         al,0D0
 00503135    sub         al,0A
>00503137    jb          0050313F
 00503139    add         al,0F9
 0050313B    sub         al,1A
>0050313D    jae         0050317F
 0050313F    call        004E7E34
 00503144    test        al,4
>00503146    jne         0050317F
 00503148    mov         eax,dword ptr [ebp-4]
 0050314B    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00503151    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 00503157    call        00500B58
 0050315C    mov         edx,dword ptr [ebp-8]
 0050315F    mov         dx,word ptr [edx+4]
 00503163    call        00510C9C
 00503168    mov         dword ptr [ebp-0C],eax
 0050316B    cmp         dword ptr [ebp-0C],0
>0050316F    je          0050317F
 00503171    mov         eax,dword ptr [ebp-0C]
 00503174    mov         eax,dword ptr [eax+40]
 00503177    mov         edx,dword ptr [eax]
 00503179    call        dword ptr [edx+0E0]
 0050317F    mov         eax,dword ptr [ebp-8]
 00503182    movzx       eax,word ptr [eax+4]
 00503186    add         eax,0FFFFFFF3
 00503189    cmp         eax,21
>0050318C    ja          005033FA
 00503192    mov         al,byte ptr [eax+50319F]
 00503198    jmp         dword ptr [eax*4+5031C1]
 00503198    db          5
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          6
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          4
 00503198    db          3
 00503198    db          0
 00503198    db          1
 00503198    db          0
 00503198    db          2
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          0
 00503198    db          7
 00503198    dd          005033FA
 00503198    dd          005031E1
 00503198    dd          005031F0
 00503198    dd          005031FF
 00503198    dd          00503217
 00503198    dd          0050322F
 00503198    dd          00503257
 00503198    dd          005032A8
 005031E1    xor         edx,edx
 005031E3    mov         eax,dword ptr [ebp-4]
 005031E6    call        00502CA0
>005031EB    jmp         005033FA
 005031F0    mov         dl,1
 005031F2    mov         eax,dword ptr [ebp-4]
 005031F5    call        00502CA0
>005031FA    jmp         005033FA
 005031FF    mov         eax,dword ptr [ebp-4]
 00503202    call        0051105C
 00503207    mov         edx,dword ptr [eax+40]
 0050320A    mov         eax,dword ptr [ebp-4]
 0050320D    call        00502DBC
>00503212    jmp         005033FA
 00503217    mov         eax,dword ptr [ebp-4]
 0050321A    call        00511000
 0050321F    mov         edx,dword ptr [eax+40]
 00503222    mov         eax,dword ptr [ebp-4]
 00503225    call        00502DBC
>0050322A    jmp         005033FA
 0050322F    mov         eax,dword ptr [ebp-4]
 00503232    call        005023E4
 00503237    test        eax,eax
>00503239    je          005033FA
 0050323F    mov         eax,dword ptr [ebp-4]
 00503242    call        005023E4
 00503247    mov         eax,dword ptr [eax+40]
 0050324A    mov         edx,dword ptr [eax]
 0050324C    call        dword ptr [edx+0E0]
>00503252    jmp         005033FA
 00503257    mov         eax,dword ptr [ebp-4]
 0050325A    mov         edx,dword ptr [eax]
 0050325C    call        dword ptr [edx+104];TCustomActionMenuBar.sub_0050226C
 00503262    test        al,al
>00503264    je          0050327E
 00503266    mov         eax,dword ptr [ebp-4]
 00503269    cmp         dword ptr [eax+290],0;TCustomActionMenuBar.FDragItem:TCustomActionControl
>00503270    je          0050327E
 00503272    xor         eax,eax
 00503274    call        DragDone
>00503279    jmp         005033FA
 0050327E    mov         eax,[0055B688];^gvar_0055DDAC
 00503283    mov         eax,dword ptr [eax]
 00503285    call        004D95C4
 0050328A    test        al,al
>0050328C    je          00503298
 0050328E    call        CancelDrag
>00503293    jmp         005033FA
 00503298    mov         eax,dword ptr [ebp-4]
 0050329B    mov         edx,dword ptr [eax]
 0050329D    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_00501574
>005032A3    jmp         005033FA
 005032A8    mov         eax,dword ptr [ebp-4]
 005032AB    mov         edx,dword ptr [eax]
 005032AD    call        dword ptr [edx+104];TCustomActionMenuBar.sub_0050226C
 005032B3    test        al,al
>005032B5    je          005033FA
 005032BB    mov         eax,dword ptr [ebp-4]
 005032BE    call        005023E4
 005032C3    test        eax,eax
>005032C5    je          005033FA
 005032CB    mov         eax,dword ptr [ebp-4]
 005032CE    call        005023E4
 005032D3    mov         dword ptr [ebp-0C],eax
 005032D6    mov         eax,dword ptr [ebp-0C]
 005032D9    test        byte ptr [eax+31],4
>005032DD    jne         00503300
 005032DF    lea         edx,[ebp-14]
 005032E2    mov         eax,[0055B1A0];^SDeleteNotAllowed:TResStringRec
 005032E7    call        LoadResString
 005032EC    mov         ecx,dword ptr [ebp-14]
 005032EF    mov         dl,1
 005032F1    mov         eax,[004653B4];Exception
 005032F6    call        Exception.Create;Exception.Create
 005032FB    call        @RaiseExcept
 00503300    mov         eax,dword ptr [ebp-0C]
 00503303    call        0050CB98
 00503308    test        al,al
>0050330A    je          0050335B
 0050330C    push        0
 0050330E    lea         eax,[ebp-18]
 00503311    push        eax
 00503312    lea         edx,[ebp-24]
 00503315    mov         eax,dword ptr [ebp-0C]
 00503318    call        TActionClientItem.GetCaption
 0050331D    mov         eax,dword ptr [ebp-24]
 00503320    mov         dword ptr [ebp-20],eax
 00503323    mov         byte ptr [ebp-1C],0B
 00503327    lea         eax,[ebp-20]
 0050332A    push        eax
 0050332B    lea         edx,[ebp-28]
 0050332E    mov         eax,[0055B5EC];^SDeleteItemWithSubItems:TResStringRec
 00503333    call        LoadResString
 00503338    mov         eax,dword ptr [ebp-28]
 0050333B    xor         ecx,ecx
 0050333D    pop         edx
 0050333E    call        Format
 00503343    mov         eax,dword ptr [ebp-18]
 00503346    mov         cx,word ptr ds:[503430];0xC gvar_00503430
 0050334D    mov         dl,3
 0050334F    call        00494FFC
 00503354    dec         eax
>00503355    jne         005033FA
 0050335B    mov         eax,dword ptr [ebp-0C]
 0050335E    call        TCollectionItem.GetIndex
 00503363    mov         dword ptr [ebp-10],eax
 00503366    mov         eax,dword ptr [ebp-4]
 00503369    mov         edx,dword ptr [eax]
 0050336B    call        dword ptr [edx+114];TCustomActionMenuBar.sub_00511728
 00503371    dec         eax
 00503372    cmp         eax,dword ptr [ebp-10]
>00503375    jne         0050338C
 00503377    xor         ecx,ecx
 00503379    mov         edx,dword ptr [ebp-0C]
 0050337C    mov         eax,dword ptr [ebp-4]
 0050337F    mov         ebx,dword ptr [eax]
 00503381    call        dword ptr [ebx+0F4];TCustomActionMenuBar.sub_0051149C
 00503387    mov         dword ptr [ebp-0C],eax
>0050338A    jmp         0050339F
 0050338C    xor         ecx,ecx
 0050338E    mov         edx,dword ptr [ebp-0C]
 00503391    mov         eax,dword ptr [ebp-4]
 00503394    mov         ebx,dword ptr [eax]
 00503396    call        dword ptr [ebx+0F0];TCustomActionMenuBar.sub_005113F8
 0050339C    mov         dword ptr [ebp-0C],eax
 0050339F    mov         eax,dword ptr [ebp-4]
 005033A2    mov         eax,dword ptr [eax+210];TCustomActionMenuBar.FActionClient:TActionClient
 005033A8    call        TActionClient.GetItems
 005033AD    mov         edx,dword ptr [ebp-10]
 005033B0    call        00479EF8
 005033B5    cmp         dword ptr [ebp-0C],0
>005033B9    je          005033CD
 005033BB    mov         eax,dword ptr [ebp-0C]
 005033BE    mov         eax,dword ptr [eax+40]
 005033C1    mov         dl,1
 005033C3    mov         ecx,dword ptr [eax]
 005033C5    call        dword ptr [ecx+0D8]
>005033CB    jmp         005033F2
 005033CD    mov         eax,dword ptr [ebp-4]
 005033D0    mov         eax,dword ptr [eax+2AC];TCustomActionMenuBar.FParentControl:TCustomActionControl
 005033D6    push        eax
 005033D7    push        0
 005033D9    push        0B402
 005033DE    mov         eax,dword ptr [ebp-4]
 005033E1    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005033E7    call        TWinControl.GetHandle
 005033EC    push        eax
 005033ED    call        user32.PostMessageA
 005033F2    mov         eax,dword ptr [ebp-4]
 005033F5    call        0050A550
 005033FA    xor         eax,eax
 005033FC    pop         edx
 005033FD    pop         ecx
 005033FE    pop         ecx
 005033FF    mov         dword ptr fs:[eax],edx
 00503402    push        503429
 00503407    lea         eax,[ebp-28]
 0050340A    mov         edx,2
 0050340F    call        @LStrArrayClr
 00503414    lea         eax,[ebp-18]
 00503417    mov         edx,2
 0050341C    call        @LStrArrayClr
 00503421    ret
>00503422    jmp         @HandleFinally
>00503427    jmp         00503407
 00503429    pop         ebx
 0050342A    mov         esp,ebp
 0050342C    pop         ebp
 0050342D    ret
end;*}

//00503434
{*procedure TCustomActionMenuBar.WMMouseActivate(?:?);
begin
 00503434    push        ebp
 00503435    mov         ebp,esp
 00503437    add         esp,0FFFFFFF8
 0050343A    mov         dword ptr [ebp-8],edx
 0050343D    mov         dword ptr [ebp-4],eax
 00503440    mov         edx,dword ptr [ebp-8]
 00503443    mov         eax,dword ptr [ebp-4]
 00503446    mov         ecx,dword ptr [eax]
 00503448    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0050344B    mov         eax,dword ptr [ebp-4]
 0050344E    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>00503455    je          00503461
 00503457    mov         eax,dword ptr [ebp-8]
 0050345A    mov         dword ptr [eax+0C],3
 00503461    pop         ecx
 00503462    pop         ecx
 00503463    pop         ebp
 00503464    ret
end;*}

//00503468
{*procedure TCustomActionMenuBar.WMSysKeyDown(?:?);
begin
 00503468    push        ebp
 00503469    mov         ebp,esp
 0050346B    add         esp,0FFFFFFF4
 0050346E    mov         dword ptr [ebp-8],edx
 00503471    mov         dword ptr [ebp-4],eax
 00503474    mov         edx,dword ptr [ebp-8]
 00503477    mov         eax,dword ptr [ebp-4]
 0050347A    call        TWinControl.WMSysKeyDown
 0050347F    mov         eax,dword ptr [ebp-4]
 00503482    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>00503489    je          00503505
 0050348B    mov         eax,dword ptr [ebp-4]
 0050348E    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>00503495    je          005034EA
 00503497    mov         eax,dword ptr [ebp-8]
 0050349A    mov         ax,word ptr [eax+4]
 0050349E    add         al,0D0
 005034A0    sub         al,0A
>005034A2    jb          005034AA
 005034A4    add         al,0F9
 005034A6    sub         al,1A
>005034A8    jae         005034EA
 005034AA    mov         eax,dword ptr [ebp-4]
 005034AD    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005034B3    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 005034B9    call        00500B58
 005034BE    mov         edx,dword ptr [ebp-8]
 005034C1    mov         dx,word ptr [edx+4]
 005034C5    call        00510C9C
 005034CA    mov         dword ptr [ebp-0C],eax
 005034CD    cmp         dword ptr [ebp-0C],0
>005034D1    je          005034EA
 005034D3    mov         eax,dword ptr [ebp-0C]
 005034D6    cmp         dword ptr [eax+40],0
>005034DA    je          005034EA
 005034DC    mov         eax,dword ptr [ebp-0C]
 005034DF    mov         eax,dword ptr [eax+40]
 005034E2    mov         edx,dword ptr [eax]
 005034E4    call        dword ptr [edx+0E0]
 005034EA    mov         eax,dword ptr [ebp-8]
 005034ED    cmp         word ptr [eax+4],12
>005034F2    jne         00503505
 005034F4    mov         eax,dword ptr [ebp-4]
 005034F7    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005034FD    mov         edx,dword ptr [eax]
 005034FF    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_00501574
 00503505    mov         esp,ebp
 00503507    pop         ebp
 00503508    ret
end;*}

//0050350C
procedure TActionMainMenuBar.SetAnimateDuration(Value:Integer);
begin
{*
 0050350C    push        ebp
 0050350D    mov         ebp,esp
 0050350F    add         esp,0FFFFFFF8
 00503512    mov         dword ptr [ebp-8],edx
 00503515    mov         dword ptr [ebp-4],eax
 00503518    cmp         dword ptr [ebp-8],0
>0050351C    jg          0050352D
 0050351E    mov         eax,dword ptr [ebp-4]
 00503521    mov         dword ptr [eax+2D8],1;TActionMainMenuBar.FAnimateDuration:Integer
>0050352B    jmp         00503539
 0050352D    mov         eax,dword ptr [ebp-8]
 00503530    mov         edx,dword ptr [ebp-4]
 00503533    mov         dword ptr [edx+2D8],eax;TActionMainMenuBar.FAnimateDuration:Integer
 00503539    pop         ecx
 0050353A    pop         ecx
 0050353B    pop         ebp
 0050353C    ret
*}
end;

//00503540
{*function sub_00503540(?:?):?;
begin
 00503540    push        ebp
 00503541    mov         ebp,esp
 00503543    push        0
 00503545    push        0
 00503547    push        0
 00503549    push        ebx
 0050354A    xor         eax,eax
 0050354C    push        ebp
 0050354D    push        503693
 00503552    push        dword ptr fs:[eax]
 00503555    mov         dword ptr fs:[eax],esp
 00503558    lea         edx,[ebp-8]
 0050355B    mov         eax,dword ptr [ebp+8]
 0050355E    mov         eax,dword ptr [eax-4]
 00503561    mov         eax,dword ptr [eax+68]
 00503564    call        TFont.GetName
 00503569    mov         eax,dword ptr [ebp-8]
 0050356C    push        eax
 0050356D    lea         edx,[ebp-0C]
 00503570    mov         eax,[0055B6D8];^Screen:TScreen
 00503575    mov         eax,dword ptr [eax]
 00503577    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 0050357D    call        TFont.GetName
 00503582    mov         edx,dword ptr [ebp-0C]
 00503585    pop         eax
 00503586    call        @LStrCmp
>0050358B    jne         0050366F
 00503591    mov         eax,[0055B6D8];^Screen:TScreen
 00503596    mov         eax,dword ptr [eax]
 00503598    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 0050359E    call        TFont.GetStyle
 005035A3    mov         ebx,eax
 005035A5    mov         eax,dword ptr [ebp+8]
 005035A8    mov         eax,dword ptr [eax-4]
 005035AB    mov         eax,dword ptr [eax+68]
 005035AE    call        TFont.GetStyle
 005035B3    cmp         bl,al
>005035B5    jne         0050366F
 005035BB    mov         eax,dword ptr [ebp+8]
 005035BE    mov         eax,dword ptr [eax-4]
 005035C1    mov         eax,dword ptr [eax+68]
 005035C4    mov         eax,dword ptr [eax+18]
 005035C7    mov         edx,dword ptr ds:[55B6D8];^Screen:TScreen
 005035CD    mov         edx,dword ptr [edx]
 005035CF    mov         edx,dword ptr [edx+88];TScreen.FMenuFont:TFont
 005035D5    cmp         eax,dword ptr [edx+18];TFont.Color:TColor
>005035D8    jne         0050366F
 005035DE    mov         eax,dword ptr [ebp+8]
 005035E1    mov         eax,dword ptr [eax-4]
 005035E4    mov         eax,dword ptr [eax+68]
 005035E7    call        TFont.GetPitch
 005035EC    mov         ebx,eax
 005035EE    mov         eax,[0055B6D8];^Screen:TScreen
 005035F3    mov         eax,dword ptr [eax]
 005035F5    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 005035FB    call        TFont.GetPitch
 00503600    cmp         bl,al
>00503602    jne         0050366F
 00503604    mov         eax,dword ptr [ebp+8]
 00503607    mov         eax,dword ptr [eax-4]
 0050360A    mov         eax,dword ptr [eax+68]
 0050360D    mov         eax,dword ptr [eax+1C]
 00503610    mov         edx,dword ptr ds:[55B6D8];^Screen:TScreen
 00503616    mov         edx,dword ptr [edx]
 00503618    mov         edx,dword ptr [edx+88];TScreen.FMenuFont:TFont
 0050361E    cmp         eax,dword ptr [edx+1C];TFont.FPixelsPerInch:Integer
>00503621    jne         0050366F
 00503623    mov         eax,dword ptr [ebp+8]
 00503626    mov         eax,dword ptr [eax-4]
 00503629    mov         eax,dword ptr [eax+68]
 0050362C    call        TFont.GetHeight
 00503631    mov         ebx,eax
 00503633    mov         eax,[0055B6D8];^Screen:TScreen
 00503638    mov         eax,dword ptr [eax]
 0050363A    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 00503640    call        TFont.GetHeight
 00503645    cmp         ebx,eax
>00503647    jne         0050366F
 00503649    mov         eax,dword ptr [ebp+8]
 0050364C    mov         eax,dword ptr [eax-4]
 0050364F    mov         eax,dword ptr [eax+68]
 00503652    call        TFont.GetSize
 00503657    mov         ebx,eax
 00503659    mov         eax,[0055B6D8];^Screen:TScreen
 0050365E    mov         eax,dword ptr [eax]
 00503660    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 00503666    call        TFont.GetSize
 0050366B    cmp         ebx,eax
>0050366D    je          00503673
 0050366F    xor         eax,eax
>00503671    jmp         00503675
 00503673    mov         al,1
 00503675    mov         byte ptr [ebp-1],al
 00503678    xor         eax,eax
 0050367A    pop         edx
 0050367B    pop         ecx
 0050367C    pop         ecx
 0050367D    mov         dword ptr fs:[eax],edx
 00503680    push        50369A
 00503685    lea         eax,[ebp-0C]
 00503688    mov         edx,2
 0050368D    call        @LStrArrayClr
 00503692    ret
>00503693    jmp         @HandleFinally
>00503698    jmp         00503685
 0050369A    mov         al,byte ptr [ebp-1]
 0050369D    pop         ebx
 0050369E    mov         esp,ebp
 005036A0    pop         ebp
 005036A1    ret
end;*}

//005036A4
{*procedure TCustomActionMenuBar.CMFontChanged(?:?);
begin
 005036A4    push        ebp
 005036A5    mov         ebp,esp
 005036A7    add         esp,0FFFFFFF8
 005036AA    push        esi
 005036AB    mov         dword ptr [ebp-8],edx
 005036AE    mov         dword ptr [ebp-4],eax
 005036B1    mov         edx,dword ptr [ebp-8]
 005036B4    mov         eax,dword ptr [ebp-4]
 005036B7    call        TWinControl.CMFontChanged
 005036BC    push        ebp
 005036BD    call        00503540
 005036C2    pop         ecx
 005036C3    mov         edx,dword ptr [ebp-4]
 005036C6    mov         byte ptr [edx+2F0],al;TCustomActionMenuBar.FUseSystemFont:Boolean
 005036CC    mov         eax,dword ptr [ebp-4]
 005036CF    mov         si,0FFEE
 005036D3    call        @CallDynaInst;TWinControl.sub_004CDF1C
 005036D8    pop         esi
 005036D9    pop         ecx
 005036DA    pop         ecx
 005036DB    pop         ebp
 005036DC    ret
end;*}

//005036E0
procedure TCustomActionMenuBar.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005036E0    push        ebp
 005036E1    mov         ebp,esp
 005036E3    add         esp,0FFFFFFF4
 005036E6    mov         byte ptr [ebp-9],cl
 005036E9    mov         dword ptr [ebp-8],edx
 005036EC    mov         dword ptr [ebp-4],eax
 005036EF    mov         cl,byte ptr [ebp-9]
 005036F2    mov         edx,dword ptr [ebp-8]
 005036F5    mov         eax,dword ptr [ebp-4]
 005036F8    call        TCustomActionBar.Notification
 005036FD    cmp         byte ptr [ebp-9],1
>00503701    jne         0050374F
 00503703    mov         eax,dword ptr [ebp-8]
 00503706    mov         edx,dword ptr ds:[509FE4];TCustomActionControl
 0050370C    call        @IsClass
 00503711    test        al,al
>00503713    je          0050374F
 00503715    mov         eax,dword ptr [ebp-8]
 00503718    mov         eax,dword ptr [eax+16C]
 0050371E    mov         edx,dword ptr [ebp-4]
 00503721    cmp         eax,dword ptr [edx+2F4];TCustomActionMenuBar.FSelectedItem:TActionClientItem
>00503727    jne         00503736
 00503729    mov         eax,dword ptr [ebp-4]
 0050372C    xor         edx,edx
 0050372E    mov         dword ptr [eax+2F4],edx;TCustomActionMenuBar.FSelectedItem:TActionClientItem
>00503734    jmp         0050374F
 00503736    mov         eax,dword ptr [ebp-8]
 00503739    mov         edx,dword ptr [ebp-4]
 0050373C    cmp         eax,dword ptr [edx+298];TCustomActionMenuBar.FMouseControl:TControl
>00503742    jne         0050374F
 00503744    mov         eax,dword ptr [ebp-4]
 00503747    xor         edx,edx
 00503749    mov         dword ptr [eax+298],edx;TCustomActionMenuBar.FMouseControl:TControl
 0050374F    mov         esp,ebp
 00503751    pop         ebp
 00503752    ret
*}
end;

//00503754
{*function sub_00503754(?:TCustomActionMenuBar):?;
begin
 00503754    push        ebp
 00503755    mov         ebp,esp
 00503757    add         esp,0FFFFFFE4
 0050375A    mov         dword ptr [ebp-4],eax
 0050375D    lea         eax,[ebp-14]
 00503760    push        eax
 00503761    call        user32.GetCursorPos
 00503766    lea         eax,[ebp-14]
 00503769    mov         dl,1
 0050376B    call        004C8F78
 00503770    mov         dword ptr [ebp-8],eax
 00503773    call        004C7334
 00503778    mov         dword ptr [ebp-0C],eax
 0050377B    mov         eax,dword ptr [ebp-4]
 0050377E    mov         eax,dword ptr [eax+298]
 00503784    cmp         eax,dword ptr [ebp-8]
>00503787    je          0050385D
 0050378D    lea         edx,[ebp-1C]
 00503790    mov         eax,[0055B688];^gvar_0055DDAC
 00503795    mov         eax,dword ptr [eax]
 00503797    call        004D95A4
 0050379C    lea         edx,[ebp-1C]
 0050379F    mov         eax,dword ptr [ebp-4]
 005037A2    add         eax,29C
 005037A7    call        00476CB0
 005037AC    test        al,al
>005037AE    jne         0050385D
 005037B4    lea         edx,[ebp-1C]
 005037B7    mov         eax,[0055B688];^gvar_0055DDAC
 005037BC    mov         eax,dword ptr [eax]
 005037BE    call        004D95A4
 005037C3    mov         eax,dword ptr [ebp-4]
 005037C6    mov         edx,dword ptr [ebp-1C]
 005037C9    mov         dword ptr [eax+29C],edx
 005037CF    mov         edx,dword ptr [ebp-18]
 005037D2    mov         dword ptr [eax+2A0],edx
 005037D8    mov         eax,dword ptr [ebp-4]
 005037DB    cmp         dword ptr [eax+298],0
>005037E2    je          005037EA
 005037E4    cmp         dword ptr [ebp-0C],0
>005037E8    je          005037FE
 005037EA    cmp         dword ptr [ebp-0C],0
>005037EE    je          00503815
 005037F0    mov         eax,dword ptr [ebp-4]
 005037F3    mov         eax,dword ptr [eax+298]
 005037F9    cmp         eax,dword ptr [ebp-0C]
>005037FC    jne         00503815
 005037FE    push        0
 00503800    xor         ecx,ecx
 00503802    mov         edx,0B014
 00503807    mov         eax,dword ptr [ebp-4]
 0050380A    mov         eax,dword ptr [eax+298]
 00503810    call        004CC7DC
 00503815    mov         edx,dword ptr [ebp-8]
 00503818    mov         eax,dword ptr [ebp-4]
 0050381B    call        00503BE0
 00503820    mov         eax,dword ptr [ebp-4]
 00503823    cmp         dword ptr [eax+298],0
>0050382A    je          00503832
 0050382C    cmp         dword ptr [ebp-0C],0
>00503830    je          00503846
 00503832    cmp         dword ptr [ebp-0C],0
>00503836    je          0050385D
 00503838    mov         eax,dword ptr [ebp-4]
 0050383B    mov         eax,dword ptr [eax+298]
 00503841    cmp         eax,dword ptr [ebp-0C]
>00503844    jne         0050385D
 00503846    push        0
 00503848    xor         ecx,ecx
 0050384A    mov         edx,0B013
 0050384F    mov         eax,dword ptr [ebp-4]
 00503852    mov         eax,dword ptr [eax+298]
 00503858    call        004CC7DC
 0050385D    mov         eax,dword ptr [ebp-8]
 00503860    mov         esp,ebp
 00503862    pop         ebp
 00503863    ret
end;*}

//00503864
procedure sub_00503864(?:TCustomActionMenuBar);
begin
{*
 00503864    push        ebp
 00503865    mov         ebp,esp
 00503867    add         esp,0FFFFFFF0
 0050386A    mov         dword ptr [ebp-4],eax
 0050386D    mov         eax,[0055B6D8];^Screen:TScreen
 00503872    mov         eax,dword ptr [eax]
 00503874    call        004F017C
 00503879    dec         eax
 0050387A    test        eax,eax
>0050387C    jl          005038DE
 0050387E    inc         eax
 0050387F    mov         dword ptr [ebp-0C],eax
 00503882    mov         dword ptr [ebp-8],0
 00503889    mov         eax,[0055B6D8];^Screen:TScreen
 0050388E    mov         eax,dword ptr [eax]
 00503890    mov         edx,dword ptr [ebp-8]
 00503893    call        004F0158
 00503898    mov         dword ptr [ebp-10],eax
 0050389B    mov         eax,dword ptr [ebp-10]
 0050389E    call        TWinControl.HandleAllocated
 005038A3    test        al,al
>005038A5    je          005038D6
 005038A7    mov         eax,dword ptr [ebp-10]
 005038AA    call        TWinControl.GetHandle
 005038AF    push        eax
 005038B0    call        user32.IsWindowVisible
 005038B5    test        eax,eax
>005038B7    je          005038D6
 005038B9    mov         eax,dword ptr [ebp-10]
 005038BC    call        TWinControl.GetHandle
 005038C1    push        eax
 005038C2    call        user32.IsWindowEnabled
 005038C7    test        eax,eax
>005038C9    je          005038D6
 005038CB    mov         eax,dword ptr [ebp-10]
 005038CE    mov         edx,dword ptr [eax]
 005038D0    call        dword ptr [edx+0DC]
 005038D6    inc         dword ptr [ebp-8]
 005038D9    dec         dword ptr [ebp-0C]
>005038DC    jne         00503889
 005038DE    mov         esp,ebp
 005038E0    pop         ebp
 005038E1    ret
*}
end;

//005038E4
{*procedure sub_005038E4(?:TCustomActionMenuBar; ?:?);
begin
 005038E4    push        ebp
 005038E5    mov         ebp,esp
 005038E7    add         esp,0FFFFFFF0
 005038EA    push        ebx
 005038EB    push        esi
 005038EC    push        edi
 005038ED    xor         ecx,ecx
 005038EF    mov         dword ptr [ebp-10],ecx
 005038F2    mov         dword ptr [ebp-0C],edx
 005038F5    mov         dword ptr [ebp-4],eax
 005038F8    xor         eax,eax
 005038FA    push        ebp
 005038FB    push        503A35
 00503900    push        dword ptr fs:[eax]
 00503903    mov         dword ptr fs:[eax],esp
 00503906    mov         eax,dword ptr [ebp-4]
 00503909    call        00503754
 0050390E    mov         eax,[0055B4C8];^Application:TApplication
 00503913    mov         eax,dword ptr [eax]
 00503915    cmp         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
>0050391C    je          00503936
 0050391E    mov         eax,dword ptr [ebp-4]
 00503921    cmp         dword ptr [eax+298],0;TCustomActionMenuBar.FMouseControl:TControl
>00503928    jne         00503936
 0050392A    mov         eax,[0055B4C8];^Application:TApplication
 0050392F    mov         eax,dword ptr [eax]
 00503931    call        004F3CC8
 00503936    mov         eax,dword ptr [ebp-4]
 00503939    call        005023E4
 0050393E    test        eax,eax
>00503940    je          0050397C
 00503942    mov         eax,dword ptr [ebp-4]
 00503945    call        005023E4
 0050394A    call        TActionClientItem.GetAction
 0050394F    test        eax,eax
>00503951    je          0050397C
 00503953    mov         eax,dword ptr [ebp-4]
 00503956    call        005023E4
 0050395B    call        TActionClientItem.GetAction
 00503960    mov         eax,dword ptr [eax+7C]
 00503963    lea         edx,[ebp-10]
 00503966    call        004C7278
 0050396B    mov         edx,dword ptr [ebp-10]
 0050396E    mov         eax,[0055B4C8];^Application:TApplication
 00503973    mov         eax,dword ptr [eax]
 00503975    call        004F387C
>0050397A    jmp         00503988
 0050397C    mov         eax,[0055B4C8];^Application:TApplication
 00503981    mov         eax,dword ptr [eax]
 00503983    call        004F3CC8
 00503988    mov         byte ptr [ebp-5],1
 0050398C    xor         eax,eax
 0050398E    push        ebp
 0050398F    push        5039DD
 00503994    push        dword ptr fs:[eax]
 00503997    mov         dword ptr fs:[eax],esp
 0050399A    mov         eax,[0055B4C8];^Application:TApplication
 0050399F    mov         eax,dword ptr [eax]
 005039A1    cmp         word ptr [eax+102],0;TApplication.?f102:word
>005039A9    je          005039C5
 005039AB    mov         ebx,dword ptr ds:[55B4C8];^Application:TApplication
 005039B1    mov         ebx,dword ptr [ebx]
 005039B3    lea         ecx,[ebp-5]
 005039B6    mov         edx,dword ptr [ebp-4]
 005039B9    mov         eax,dword ptr [ebx+104];TApplication.?f104:dword
 005039BF    call        dword ptr [ebx+100]
 005039C5    cmp         byte ptr [ebp-5],0
>005039C9    je          005039D3
 005039CB    mov         eax,dword ptr [ebp-4]
 005039CE    call        00503864
 005039D3    xor         eax,eax
 005039D5    pop         edx
 005039D6    pop         ecx
 005039D7    pop         ecx
 005039D8    mov         dword ptr fs:[eax],edx
>005039DB    jmp         005039F6
>005039DD    jmp         @HandleAnyException
 005039E2    mov         eax,[0055B4C8];^Application:TApplication
 005039E7    mov         eax,dword ptr [eax]
 005039E9    mov         edx,dword ptr [ebp-4]
 005039EC    call        TApplication.HandleException
 005039F1    call        @DoneExcept
 005039F6    call        kernel32.GetCurrentThreadId
 005039FB    mov         edx,dword ptr ds:[55B718];^gvar_0055B718
 00503A01    cmp         eax,dword ptr [edx]
>00503A03    jne         00503A14
 00503A05    xor         eax,eax
 00503A07    call        0048271C
 00503A0C    test        al,al
>00503A0E    je          00503A14
 00503A10    mov         byte ptr [ebp-5],0
 00503A14    cmp         byte ptr [ebp-5],0
>00503A18    je          00503A1F
 00503A1A    call        user32.WaitMessage
 00503A1F    xor         eax,eax
 00503A21    pop         edx
 00503A22    pop         ecx
 00503A23    pop         ecx
 00503A24    mov         dword ptr fs:[eax],edx
 00503A27    push        503A3C
 00503A2C    lea         eax,[ebp-10]
 00503A2F    call        @LStrClr
 00503A34    ret
>00503A35    jmp         @HandleFinally
>00503A3A    jmp         00503A2C
 00503A3C    pop         edi
 00503A3D    pop         esi
 00503A3E    pop         ebx
 00503A3F    mov         esp,ebp
 00503A41    pop         ebp
 00503A42    ret
end;*}

//00503A44
{*function sub_00503A44(?:TCustomActionMenuBar; ?:?):?;
begin
 00503A44    push        ebp
 00503A45    mov         ebp,esp
 00503A47    add         esp,0FFFFFFF0
 00503A4A    mov         dword ptr [ebp-8],edx
 00503A4D    mov         dword ptr [ebp-4],eax
 00503A50    mov         eax,[0055B4C8];^Application:TApplication
 00503A55    mov         eax,dword ptr [eax]
 00503A57    mov         dword ptr [ebp-10],eax
 00503A5A    mov         byte ptr [ebp-9],0
 00503A5E    push        1
 00503A60    push        0
 00503A62    push        0
 00503A64    push        0
 00503A66    mov         eax,dword ptr [ebp-8]
 00503A69    push        eax
 00503A6A    call        user32.PeekMessageA
 00503A6F    test        eax,eax
>00503A71    je          00503ACE
 00503A73    mov         byte ptr [ebp-9],1
 00503A77    mov         eax,dword ptr [ebp-8]
 00503A7A    cmp         dword ptr [eax+4],12
>00503A7E    je          00503ACE
 00503A80    mov         edx,dword ptr [ebp-8]
 00503A83    mov         eax,dword ptr [ebp-10]
 00503A86    call        004F2A74
 00503A8B    test        al,al
>00503A8D    jne         00503ACE
 00503A8F    mov         edx,dword ptr [ebp-8]
 00503A92    mov         eax,dword ptr [ebp-10]
 00503A95    call        004F28F4
 00503A9A    test        al,al
>00503A9C    jne         00503ACE
 00503A9E    mov         eax,dword ptr [ebp-8]
 00503AA1    cmp         dword ptr [eax+4],100
>00503AA8    jb          00503ABC
 00503AAA    mov         eax,dword ptr [ebp-8]
 00503AAD    cmp         dword ptr [eax+4],108
>00503AB4    ja          00503ABC
 00503AB6    mov         byte ptr [ebp-9],0
>00503ABA    jmp         00503ACE
 00503ABC    mov         eax,dword ptr [ebp-8]
 00503ABF    push        eax
 00503AC0    call        user32.TranslateMessage
 00503AC5    mov         eax,dword ptr [ebp-8]
 00503AC8    push        eax
 00503AC9    call        user32.DispatchMessageA
 00503ACE    mov         al,byte ptr [ebp-9]
 00503AD1    mov         esp,ebp
 00503AD3    pop         ebp
 00503AD4    ret
end;*}

//00503AD8
procedure sub_00503AD8(?:TCustomActionMenuBar);
begin
{*
 00503AD8    push        ebp
 00503AD9    mov         ebp,esp
 00503ADB    add         esp,0FFFFFFE0
 00503ADE    mov         dword ptr [ebp-4],eax
 00503AE1    lea         edx,[ebp-20]
 00503AE4    mov         eax,dword ptr [ebp-4]
 00503AE7    call        00503A44
 00503AEC    test        al,al
>00503AEE    jne         00503AE1
 00503AF0    mov         esp,ebp
 00503AF2    pop         ebp
 00503AF3    ret
*}
end;

//00503AF4
{*function sub_00503AF4:?;
begin
 00503AF4    push        ebp
 00503AF5    mov         ebp,esp
 00503AF7    add         esp,0FFFFFFF8
 00503AFA    mov         dword ptr [ebp-4],eax
 00503AFD    mov         eax,dword ptr [ebp-4]
 00503B00    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>00503B07    je          00503B2D
 00503B09    mov         eax,dword ptr [ebp-4]
 00503B0C    mov         edx,dword ptr [ebp-4]
 00503B0F    cmp         eax,dword ptr [edx+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>00503B15    je          00503B2D
 00503B17    mov         eax,dword ptr [ebp-4]
 00503B1A    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00503B20    mov         edx,dword ptr [eax]
 00503B22    call        dword ptr [edx+148];TCustomActionMenuBar.sub_00503AF4
 00503B28    mov         dword ptr [ebp-8],eax
>00503B2B    jmp         00503B38
 00503B2D    mov         eax,dword ptr [ebp-4]
 00503B30    call        0051331C
 00503B35    mov         dword ptr [ebp-8],eax
 00503B38    mov         eax,dword ptr [ebp-8]
 00503B3B    pop         ecx
 00503B3C    pop         ecx
 00503B3D    pop         ebp
 00503B3E    ret
end;*}

//00503B40
procedure TActionMainMenuBar.SetUseSystemFont(Value:Boolean);
begin
{*
 00503B40    push        ebp
 00503B41    mov         ebp,esp
 00503B43    add         esp,0FFFFFFF8
 00503B46    mov         byte ptr [ebp-5],dl
 00503B49    mov         dword ptr [ebp-4],eax
 00503B4C    mov         eax,dword ptr [ebp-4]
 00503B4F    mov         al,byte ptr [eax+2F0];TActionMainMenuBar.FUseSystemFont:Boolean
 00503B55    cmp         al,byte ptr [ebp-5]
>00503B58    je          00503B84
 00503B5A    mov         al,byte ptr [ebp-5]
 00503B5D    mov         edx,dword ptr [ebp-4]
 00503B60    mov         byte ptr [edx+2F0],al;TActionMainMenuBar.FUseSystemFont:Boolean
 00503B66    cmp         byte ptr [ebp-5],0
>00503B6A    je          00503B84
 00503B6C    mov         eax,[0055B6D8];^Screen:TScreen
 00503B71    mov         eax,dword ptr [eax]
 00503B73    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 00503B79    mov         eax,dword ptr [ebp-4]
 00503B7C    mov         eax,dword ptr [eax+68];TActionMainMenuBar.FFont:TFont
 00503B7F    mov         ecx,dword ptr [eax]
 00503B81    call        dword ptr [ecx+8];TFont.sub_00486CC0
 00503B84    pop         ecx
 00503B85    pop         ecx
 00503B86    pop         ebp
 00503B87    ret
*}
end;

//00503B88
procedure TCustomActionMenuBar.Loaded;
begin
{*
 00503B88    push        ebp
 00503B89    mov         ebp,esp
 00503B8B    push        ecx
 00503B8C    mov         dword ptr [ebp-4],eax
 00503B8F    mov         eax,dword ptr [ebp-4]
 00503B92    call        TCustomActionDockBar.Loaded
 00503B97    mov         eax,dword ptr [ebp-4]
 00503B9A    cmp         byte ptr [eax+2F0],0;TCustomActionMenuBar.FUseSystemFont:Boolean
>00503BA1    je          00503BBB
 00503BA3    mov         eax,[0055B6D8];^Screen:TScreen
 00503BA8    mov         eax,dword ptr [eax]
 00503BAA    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 00503BB0    mov         eax,dword ptr [ebp-4]
 00503BB3    mov         eax,dword ptr [eax+68];TCustomActionMenuBar.FFont:TFont
 00503BB6    mov         ecx,dword ptr [eax]
 00503BB8    call        dword ptr [ecx+8];TFont.sub_00486CC0
 00503BBB    pop         ecx
 00503BBC    pop         ebp
 00503BBD    ret
*}
end;

//00503BC0
procedure sub_00503BC0;
begin
{*
 00503BC0    push        ebp
 00503BC1    mov         ebp,esp
 00503BC3    push        ecx
 00503BC4    mov         dword ptr [ebp-4],eax
 00503BC7    mov         eax,dword ptr [ebp-4]
 00503BCA    add         eax,2F8;TCustomActionMenuBar.FCachedMenu:TCustomActionPopupMenu
 00503BCF    call        FreeAndNil
 00503BD4    mov         eax,dword ptr [ebp-4]
 00503BD7    call        005127E8
 00503BDC    pop         ecx
 00503BDD    pop         ebp
 00503BDE    ret
*}
end;

//00503BE0
{*procedure sub_00503BE0(?:TCustomActionMenuBar; ?:?);
begin
 00503BE0    push        ebp
 00503BE1    mov         ebp,esp
 00503BE3    add         esp,0FFFFFFF8
 00503BE6    mov         dword ptr [ebp-8],edx
 00503BE9    mov         dword ptr [ebp-4],eax
 00503BEC    mov         eax,dword ptr [ebp-8]
 00503BEF    mov         edx,dword ptr [ebp-4]
 00503BF2    cmp         eax,dword ptr [edx+298];TCustomActionMenuBar.FMouseControl:TControl
>00503BF8    je          00503C40
 00503BFA    mov         eax,dword ptr [ebp-4]
 00503BFD    cmp         dword ptr [eax+298],0;TCustomActionMenuBar.FMouseControl:TControl
>00503C04    je          00503C17
 00503C06    mov         edx,dword ptr [ebp-4]
 00503C09    mov         eax,dword ptr [ebp-4]
 00503C0C    mov         eax,dword ptr [eax+298];TCustomActionMenuBar.FMouseControl:TControl
 00503C12    call        00483370
 00503C17    mov         eax,dword ptr [ebp-8]
 00503C1A    mov         edx,dword ptr [ebp-4]
 00503C1D    mov         dword ptr [edx+298],eax;TCustomActionMenuBar.FMouseControl:TControl
 00503C23    mov         eax,dword ptr [ebp-4]
 00503C26    cmp         dword ptr [eax+298],0;TCustomActionMenuBar.FMouseControl:TControl
>00503C2D    je          00503C40
 00503C2F    mov         edx,dword ptr [ebp-4]
 00503C32    mov         eax,dword ptr [ebp-4]
 00503C35    mov         eax,dword ptr [eax+298];TCustomActionMenuBar.FMouseControl:TControl
 00503C3B    call        00483020
 00503C40    pop         ecx
 00503C41    pop         ecx
 00503C42    pop         ebp
 00503C43    ret
end;*}

//00503C44
constructor TCustomMenuExpandBtn.Create(AOwner:TComponent);
begin
{*
 00503C44    push        ebp
 00503C45    mov         ebp,esp
 00503C47    add         esp,0FFFFFFF4
 00503C4A    test        dl,dl
>00503C4C    je          00503C56
 00503C4E    add         esp,0FFFFFFF0
 00503C51    call        @ClassCreate
 00503C56    mov         dword ptr [ebp-0C],ecx
 00503C59    mov         byte ptr [ebp-5],dl
 00503C5C    mov         dword ptr [ebp-4],eax
 00503C5F    mov         ecx,dword ptr [ebp-0C]
 00503C62    xor         edx,edx
 00503C64    mov         eax,dword ptr [ebp-4]
 00503C67    call        TCustomUtilityButton.Create
 00503C6C    mov         dl,6
 00503C6E    mov         eax,dword ptr [ebp-4]
 00503C71    call        TImage.SetAlign
 00503C76    mov         eax,dword ptr [ebp-4]
 00503C79    mov         byte ptr [eax+1CC],1;TCustomMenuExpandBtn.FAutoScroll:Boolean
 00503C80    mov         edx,2
 00503C85    mov         eax,dword ptr [ebp-4]
 00503C88    call        004FCAC0
 00503C8D    mov         eax,dword ptr [ebp-4]
 00503C90    lea         edx,[eax+80];TCustomMenuExpandBtn.Hint:String
 00503C96    mov         eax,[0055B284];^SExpand:TResStringRec
 00503C9B    call        LoadResString
 00503CA0    mov         dl,1
 00503CA2    mov         eax,dword ptr [ebp-4]
 00503CA5    call        004FCAF4
 00503CAA    mov         dl,3
 00503CAC    mov         eax,dword ptr [ebp-4]
 00503CAF    call        004FCB28
 00503CB4    mov         eax,dword ptr [ebp-4]
 00503CB7    mov         eax,dword ptr [eax+50];TCustomMenuExpandBtn.FControlStyle:TControlStyle
 00503CBA    or          eax,dword ptr ds:[503CE8];0x400 gvar_00503CE8
 00503CC0    mov         edx,dword ptr [ebp-4]
 00503CC3    mov         dword ptr [edx+50],eax;TCustomMenuExpandBtn.FControlStyle:TControlStyle
 00503CC6    mov         eax,dword ptr [ebp-4]
 00503CC9    cmp         byte ptr [ebp-5],0
>00503CCD    je          00503CDE
 00503CCF    call        @AfterConstruction
 00503CD4    pop         dword ptr fs:[0]
 00503CDB    add         esp,0C
 00503CDE    mov         eax,dword ptr [ebp-4]
 00503CE1    mov         esp,ebp
 00503CE3    pop         ebp
 00503CE4    ret
*}
end;

//00503CEC
{*procedure TCustomMenuExpandBtn.sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00503CEC    push        ebp
 00503CED    mov         ebp,esp
 00503CEF    add         esp,0FFFFFFF4
 00503CF2    mov         dword ptr [ebp-0C],ecx
 00503CF5    mov         dword ptr [ebp-8],edx
 00503CF8    mov         dword ptr [ebp-4],eax
 00503CFB    mov         eax,dword ptr [ebp+8]
 00503CFE    mov         byte ptr [eax],0
 00503D01    mov         esp,ebp
 00503D03    pop         ebp
 00503D04    ret         0C
end;*}

//00503D08
{*procedure sub_00503D08(?:?);
begin
 00503D08    push        ebp
 00503D09    mov         ebp,esp
 00503D0B    add         esp,0FFFFFFF8
 00503D0E    mov         dword ptr [ebp-8],edx
 00503D11    mov         dword ptr [ebp-4],eax
 00503D14    push        1
 00503D16    push        0
 00503D18    mov         eax,dword ptr [ebp-8]
 00503D1B    push        eax
 00503D1C    call        user32.OffsetRect
 00503D21    push        0FC
 00503D23    push        0FE
 00503D25    mov         eax,dword ptr [ebp-8]
 00503D28    push        eax
 00503D29    call        user32.InflateRect
 00503D2E    mov         eax,dword ptr [ebp-4]
 00503D31    cmp         byte ptr [eax+1AB],0;TCustomMenuExpandBtn.FMouseInControl:Boolean
>00503D38    je          00503D61
 00503D3A    mov         eax,dword ptr [ebp-4]
 00503D3D    call        00503DDC
 00503D42    call        TActionToolBar.GetColorMap
 00503D47    call        TXPColorMap.GetUnusedColor
 00503D4C    mov         edx,eax
 00503D4E    mov         eax,dword ptr [ebp-4]
 00503D51    mov         eax,dword ptr [eax+160];TCustomMenuExpandBtn...............................................
 00503D57    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00503D5A    call        TBrush.SetColor
>00503D5F    jmp         00503D82
 00503D61    mov         eax,dword ptr [ebp-4]
 00503D64    call        00503DDC
 00503D69    call        TActionToolBar.GetColorMap
 00503D6E    mov         edx,dword ptr [eax+40]
 00503D71    mov         eax,dword ptr [ebp-4]
 00503D74    mov         eax,dword ptr [eax+160];TCustomMenuExpandBtn...............................................
 00503D7A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00503D7D    call        TBrush.SetColor
 00503D82    mov         edx,dword ptr [ebp-8]
 00503D85    mov         eax,dword ptr [ebp-4]
 00503D88    call        004FC078
 00503D8D    pop         ecx
 00503D8E    pop         ecx
 00503D8F    pop         ebp
 00503D90    ret
end;*}

//00503D94
{*procedure sub_00503D94(?:?; ?:?);
begin
 00503D94    push        ebp
 00503D95    mov         ebp,esp
 00503D97    add         esp,0FFFFFFE8
 00503D9A    push        esi
 00503D9B    push        edi
 00503D9C    mov         esi,edx
 00503D9E    lea         edi,[ebp-15]
 00503DA1    movs        dword ptr [edi],dword ptr [esi]
 00503DA2    movs        dword ptr [edi],dword ptr [esi]
 00503DA3    movs        dword ptr [edi],dword ptr [esi]
 00503DA4    movs        dword ptr [edi],dword ptr [esi]
 00503DA5    mov         byte ptr [ebp-5],cl
 00503DA8    mov         dword ptr [ebp-4],eax
 00503DAB    push        1
 00503DAD    push        0
 00503DAF    lea         eax,[ebp-15]
 00503DB2    push        eax
 00503DB3    call        user32.OffsetRect
 00503DB8    push        0FC
 00503DBA    push        0FE
 00503DBC    lea         eax,[ebp-15]
 00503DBF    push        eax
 00503DC0    call        user32.InflateRect
 00503DC5    mov         cl,byte ptr [ebp-5]
 00503DC8    lea         edx,[ebp-15]
 00503DCB    mov         eax,dword ptr [ebp-4]
 00503DCE    call        004FC0F4
 00503DD3    pop         edi
 00503DD4    pop         esi
 00503DD5    mov         esp,ebp
 00503DD7    pop         ebp
 00503DD8    ret
end;*}

//00503DDC
{*function sub_00503DDC(?:TCustomMenuExpandBtn):?;
begin
 00503DDC    push        ebp
 00503DDD    mov         ebp,esp
 00503DDF    add         esp,0FFFFFFF8
 00503DE2    mov         dword ptr [ebp-4],eax
 00503DE5    mov         eax,dword ptr [ebp-4]
 00503DE8    call        0051541C
 00503DED    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 00503DF3    call        @AsClass
 00503DF8    mov         dword ptr [ebp-8],eax
 00503DFB    mov         eax,dword ptr [ebp-8]
 00503DFE    pop         ecx
 00503DFF    pop         ecx
 00503E00    pop         ebp
 00503E01    ret
end;*}

//00503E04
constructor TCustomActionPopupMenu.Create(AOwner:TComponent);
begin
{*
 00503E04    push        ebp
 00503E05    mov         ebp,esp
 00503E07    add         esp,0FFFFFFF0
 00503E0A    test        dl,dl
>00503E0C    je          00503E16
 00503E0E    add         esp,0FFFFFFF0
 00503E11    call        @ClassCreate
 00503E16    mov         dword ptr [ebp-0C],ecx
 00503E19    mov         byte ptr [ebp-5],dl
 00503E1C    mov         dword ptr [ebp-4],eax
 00503E1F    mov         ecx,dword ptr [ebp-0C]
 00503E22    xor         edx,edx
 00503E24    mov         eax,dword ptr [ebp-4]
 00503E27    call        TCustomActionMenuBar.Create
 00503E2C    mov         eax,dword ptr [ebp-4]
 00503E2F    mov         eax,dword ptr [eax+50];TCustomActionPopupMenu.FControlStyle:TControlStyle
 00503E32    or          eax,dword ptr ds:[503F10];0x400 gvar_00503F10
 00503E38    mov         edx,dword ptr [ebp-4]
 00503E3B    mov         dword ptr [edx+50],eax;TCustomActionPopupMenu.FControlStyle:TControlStyle
 00503E3E    xor         edx,edx
 00503E40    mov         eax,dword ptr [ebp-4]
 00503E43    call        TControl.SetVisible
 00503E48    xor         edx,edx
 00503E4A    mov         eax,dword ptr [ebp-4]
 00503E4D    call        TImage.SetAlign
 00503E52    mov         dl,2
 00503E54    mov         eax,dword ptr [ebp-4]
 00503E57    mov         ecx,dword ptr [eax]
 00503E59    call        dword ptr [ecx+134];TCustomActionPopupMenu.sub_00504A70
 00503E5F    xor         edx,edx
 00503E61    mov         eax,dword ptr [ebp-4]
 00503E64    call        TTabSheet.SetBorderWidth
 00503E69    mov         dl,byte ptr ds:[503F14];0xF gvar_00503F14
 00503E6F    mov         eax,dword ptr [ebp-4]
 00503E72    call        TActionToolBar.SetEdgeBorders
 00503E77    mov         dl,1
 00503E79    mov         eax,dword ptr [ebp-4]
 00503E7C    call        TActionToolBar.SetEdgeInner
 00503E81    mov         dl,1
 00503E83    mov         eax,dword ptr [ebp-4]
 00503E86    call        TActionToolBar.SetEdgeOuter
 00503E8B    xor         edx,edx
 00503E8D    mov         eax,dword ptr [ebp-4]
 00503E90    call        TActionToolBar.SetVertMargin
 00503E95    xor         edx,edx
 00503E97    mov         eax,dword ptr [ebp-4]
 00503E9A    call        TActionToolBar.SetHorzMargin
 00503E9F    mov         dl,1
 00503EA1    mov         eax,dword ptr [ebp-4]
 00503EA4    mov         ecx,dword ptr [eax]
 00503EA6    call        dword ptr [ecx+5C];TImage.SetAutoSize
 00503EA9    mov         eax,dword ptr [ebp-0C]
 00503EAC    mov         edx,dword ptr ds:[509DC8];TCustomActionBar
 00503EB2    call        @IsClass
 00503EB7    test        al,al
>00503EB9    je          00503ECC
 00503EBB    mov         eax,dword ptr [ebp-0C]
 00503EBE    mov         edx,dword ptr [eax+214]
 00503EC4    mov         eax,dword ptr [ebp-4]
 00503EC7    call        TActionToolBar.SetActionManager
 00503ECC    push        0
 00503ECE    lea         eax,[ebp-10]
 00503ED1    push        eax
 00503ED2    push        0
 00503ED4    push        1024
 00503ED9    call        user32.SystemParametersInfoA
 00503EDE    test        eax,eax
>00503EE0    je          00503EF1
 00503EE2    cmp         dword ptr [ebp-10],1
 00503EE6    sbb         edx,edx
 00503EE8    inc         edx
 00503EE9    mov         eax,dword ptr [ebp-4]
 00503EEC    call        00505244
 00503EF1    mov         eax,dword ptr [ebp-4]
 00503EF4    cmp         byte ptr [ebp-5],0
>00503EF8    je          00503F09
 00503EFA    call        @AfterConstruction
 00503EFF    pop         dword ptr fs:[0]
 00503F06    add         esp,0C
 00503F09    mov         eax,dword ptr [ebp-4]
 00503F0C    mov         esp,ebp
 00503F0E    pop         ebp
 00503F0F    ret
*}
end;

//00503F18
destructor TCustomActionPopupMenu.Destroy;
begin
{*
 00503F18    push        ebp
 00503F19    mov         ebp,esp
 00503F1B    add         esp,0FFFFFFF8
 00503F1E    call        @BeforeDestruction
 00503F23    mov         byte ptr [ebp-5],dl
 00503F26    mov         dword ptr [ebp-4],eax
 00503F29    mov         eax,dword ptr [ebp-4]
 00503F2C    cmp         dword ptr [eax+210],0;TCustomActionPopupMenu.FActionClient:TActionClient
>00503F33    je          00503F43
 00503F35    mov         eax,dword ptr [ebp-4]
 00503F38    mov         eax,dword ptr [eax+210];TCustomActionPopupMenu.FActionClient:TActionClient
 00503F3E    xor         edx,edx
 00503F40    mov         dword ptr [eax+18],edx;TActionClient.FChildActionBar:TCustomActionBar
 00503F43    xor         edx,edx
 00503F45    mov         eax,dword ptr [ebp-4]
 00503F48    call        TControl.SetVisible
 00503F4D    mov         eax,dword ptr [ebp-4]
 00503F50    add         eax,30C;TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
 00503F55    call        FreeAndNil
 00503F5A    mov         dl,byte ptr [ebp-5]
 00503F5D    and         dl,0FC
 00503F60    mov         eax,dword ptr [ebp-4]
 00503F63    call        TCustomActionMenuBar.Destroy
 00503F68    cmp         byte ptr [ebp-5],0
>00503F6C    jle         00503F76
 00503F6E    mov         eax,dword ptr [ebp-4]
 00503F71    call        @ClassDestroy
 00503F76    pop         ecx
 00503F77    pop         ecx
 00503F78    pop         ebp
 00503F79    ret
*}
end;

//00503F7C
{*procedure sub_00503F7C(?:?);
begin
 00503F7C    push        ebp
 00503F7D    mov         ebp,esp
 00503F7F    add         esp,0FFFFFFE4
 00503F82    mov         dword ptr [ebp-8],edx
 00503F85    mov         dword ptr [ebp-4],eax
 00503F88    cmp         dword ptr [ebp-8],0
>00503F8C    je          0050411A
 00503F92    mov         eax,dword ptr [ebp-8]
 00503F95    cmp         dword ptr [eax+16C],0
>00503F9C    je          0050411A
 00503FA2    mov         eax,dword ptr [ebp-8]
 00503FA5    mov         edx,dword ptr [eax+16C]
 00503FAB    mov         eax,dword ptr [ebp-4]
 00503FAE    call        0051204C
 00503FB3    mov         dword ptr [ebp-0C],eax
 00503FB6    mov         eax,dword ptr [ebp-8]
 00503FB9    mov         edx,dword ptr [eax+16C]
 00503FBF    mov         eax,dword ptr [ebp-4]
 00503FC2    call        005113A0
 00503FC7    mov         dword ptr [ebp-10],eax
 00503FCA    mov         eax,dword ptr [ebp-8]
 00503FCD    mov         eax,dword ptr [eax+16C]
 00503FD3    call        0050F28C
 00503FD8    test        al,al
>00503FDA    je          00504076
 00503FE0    mov         al,[00504120];0x0 gvar_00504120
 00503FE5    mov         byte ptr [ebp-11],al
 00503FE8    mov         eax,dword ptr [ebp-4]
 00503FEB    cmp         byte ptr [eax+295],0;TCustomActionPopupMenu.FExpanded:Boolean
>00503FF2    je          00504027
 00503FF4    cmp         dword ptr [ebp-0C],0
>00503FF8    je          00504006
 00503FFA    mov         eax,dword ptr [ebp-0C]
 00503FFD    call        0050F28C
 00504002    test        al,al
>00504004    jne         00504027
 00504006    mov         eax,dword ptr [ebp-4]
 00504009    mov         edx,dword ptr [eax]
 0050400B    call        dword ptr [edx+140];TCustomActionPopupMenu.sub_00510D68
 00504011    mov         edx,dword ptr [ebp-8]
 00504014    cmp         eax,dword ptr [edx+16C]
>0050401A    je          00504027
 0050401C    mov         al,[00504124];0x2 gvar_00504124
 00504021    or          al,byte ptr [ebp-11]
 00504024    mov         byte ptr [ebp-11],al
 00504027    mov         eax,dword ptr [ebp-4]
 0050402A    cmp         byte ptr [eax+295],0;TCustomActionPopupMenu.FExpanded:Boolean
>00504031    je          00504066
 00504033    cmp         dword ptr [ebp-10],0
>00504037    je          00504045
 00504039    mov         eax,dword ptr [ebp-10]
 0050403C    call        0050F28C
 00504041    test        al,al
>00504043    jne         00504066
 00504045    mov         eax,dword ptr [ebp-4]
 00504048    mov         edx,dword ptr [eax]
 0050404A    call        dword ptr [edx+0EC];TCustomActionPopupMenu.sub_00510E5C
 00504050    mov         edx,dword ptr [ebp-8]
 00504053    cmp         eax,dword ptr [edx+16C]
>00504059    je          00504066
 0050405B    mov         al,[00504128];0x8 gvar_00504128
 00504060    or          al,byte ptr [ebp-11]
 00504063    mov         byte ptr [ebp-11],al
 00504066    mov         dl,byte ptr [ebp-11]
 00504069    mov         eax,dword ptr [ebp-8]
 0050406C    call        005071C4
>00504071    jmp         0050411A
 00504076    cmp         dword ptr [ebp-0C],0
>0050407A    je          005040C8
 0050407C    mov         eax,dword ptr [ebp-0C]
 0050407F    call        0050F28C
 00504084    test        al,al
>00504086    je          005040C8
 00504088    mov         eax,dword ptr [ebp-0C]
 0050408B    mov         eax,dword ptr [eax+40]
 0050408E    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 00504094    call        @IsClass
 00504099    test        al,al
>0050409B    je          005040C8
 0050409D    mov         eax,dword ptr [ebp-0C]
 005040A0    mov         eax,dword ptr [eax+40]
 005040A3    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 005040A9    call        @AsClass
 005040AE    mov         dword ptr [ebp-18],eax
 005040B1    mov         eax,dword ptr [ebp-18]
 005040B4    mov         dl,byte ptr [eax+1A8];TCustomMenuItem.FEdges:TMenuEdges
 005040BA    or          dl,byte ptr ds:[504128];0x8 gvar_00504128
 005040C0    mov         eax,dword ptr [ebp-18]
 005040C3    call        005071C4
 005040C8    cmp         dword ptr [ebp-10],0
>005040CC    je          0050411A
 005040CE    mov         eax,dword ptr [ebp-10]
 005040D1    call        0050F28C
 005040D6    test        al,al
>005040D8    je          0050411A
 005040DA    mov         eax,dword ptr [ebp-10]
 005040DD    mov         eax,dword ptr [eax+40]
 005040E0    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 005040E6    call        @IsClass
 005040EB    test        al,al
>005040ED    je          0050411A
 005040EF    mov         eax,dword ptr [ebp-10]
 005040F2    mov         eax,dword ptr [eax+40]
 005040F5    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 005040FB    call        @AsClass
 00504100    mov         dword ptr [ebp-1C],eax
 00504103    mov         eax,dword ptr [ebp-1C]
 00504106    mov         dl,byte ptr [eax+1A8];TCustomMenuItem.FEdges:TMenuEdges
 0050410C    or          dl,byte ptr ds:[504124];0x2 gvar_00504124
 00504112    mov         eax,dword ptr [ebp-1C]
 00504115    call        005071C4
 0050411A    mov         esp,ebp
 0050411C    pop         ebp
 0050411D    ret
end;*}

//0050412C
{*procedure TCustomActionPopupMenu.CMMouseLeave(?:?);
begin
 0050412C    push        ebp
 0050412D    mov         ebp,esp
 0050412F    add         esp,0FFFFFFF8
 00504132    mov         dword ptr [ebp-8],edx
 00504135    mov         dword ptr [ebp-4],eax
 00504138    mov         edx,dword ptr [ebp-8]
 0050413B    mov         eax,dword ptr [ebp-4]
 0050413E    call        TCustomActionBar.CMMouseLeave
 00504143    mov         eax,dword ptr [ebp-4]
 00504146    mov         edx,dword ptr [eax]
 00504148    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_0050226C
 0050414E    test        al,al
>00504150    jne         00504181
 00504152    mov         eax,dword ptr [ebp-4]
 00504155    call        005023E4
 0050415A    test        eax,eax
>0050415C    je          00504181
 0050415E    mov         eax,dword ptr [ebp-4]
 00504161    call        005023E4
 00504166    cmp         dword ptr [eax+18],0
>0050416A    jne         00504181
 0050416C    mov         eax,dword ptr [ebp-4]
 0050416F    call        005023E4
 00504174    mov         eax,dword ptr [eax+40]
 00504177    xor         edx,edx
 00504179    mov         ecx,dword ptr [eax]
 0050417B    call        dword ptr [ecx+0D8]
 00504181    pop         ecx
 00504182    pop         ecx
 00504183    pop         ebp
 00504184    ret
end;*}

//00504188
{*procedure TCustomActionPopupMenu.CMVisibleChanged(?:?);
begin
 00504188    push        ebp
 00504189    mov         ebp,esp
 0050418B    add         esp,0FFFFFFF8
 0050418E    mov         dword ptr [ebp-8],edx
 00504191    mov         dword ptr [ebp-4],eax
 00504194    mov         eax,dword ptr [ebp-4]
 00504197    cmp         byte ptr [eax+57],0;TCustomActionPopupMenu.FVisible:Boolean
>0050419B    je          005041AA
 0050419D    mov         eax,dword ptr [ebp-4]
 005041A0    mov         edx,dword ptr [eax]
 005041A2    call        dword ptr [edx+188];TCustomActionPopupMenu.sub_005050E0
>005041A8    jmp         005041B5
 005041AA    mov         eax,dword ptr [ebp-4]
 005041AD    mov         edx,dword ptr [eax]
 005041AF    call        dword ptr [edx+190];TCustomActionPopupMenu.sub_00505174
 005041B5    mov         edx,dword ptr [ebp-8]
 005041B8    mov         eax,dword ptr [ebp-4]
 005041BB    call        TWinControl.CMVisibleChanged
 005041C0    pop         ecx
 005041C1    pop         ecx
 005041C2    pop         ebp
 005041C3    ret
end;*}

//005041C4
{*function sub_005041C4(?:?):?;
begin
 005041C4    push        ebp
 005041C5    mov         ebp,esp
 005041C7    add         esp,0FFFFFFF4
 005041CA    mov         dword ptr [ebp-8],edx
 005041CD    mov         dword ptr [ebp-4],eax
 005041D0    mov         edx,dword ptr [ebp-8]
 005041D3    mov         eax,dword ptr [ebp-4]
 005041D6    call        005016F4
 005041DB    mov         dword ptr [ebp-0C],eax
 005041DE    mov         eax,dword ptr [ebp-0C]
 005041E1    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 005041E7    call        @IsClass
 005041EC    test        al,al
>005041EE    je          0050420B
 005041F0    mov         eax,dword ptr [ebp-0C]
 005041F3    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 005041F9    call        @AsClass
 005041FE    mov         edx,eax
 00504200    mov         eax,dword ptr [ebp-4]
 00504203    mov         ecx,dword ptr [eax]
 00504205    call        dword ptr [ecx+184];TCustomActionPopupMenu.sub_00503F7C
 0050420B    mov         eax,dword ptr [ebp-4]
 0050420E    cmp         byte ptr [eax+295],0;TCustomActionPopupMenu.FExpanded:Boolean
>00504215    jne         0050423D
 00504217    mov         eax,dword ptr [ebp-0C]
 0050421A    mov         eax,dword ptr [eax+16C]
 00504220    call        0050F28C
 00504225    test        al,al
>00504227    je          0050423D
 00504229    mov         eax,dword ptr [ebp-4]
 0050422C    mov         byte ptr [eax+294],1;TCustomActionPopupMenu.FExpandable:Boolean
 00504233    xor         edx,edx
 00504235    mov         eax,dword ptr [ebp-0C]
 00504238    call        TControl.SetVisible
 0050423D    mov         eax,dword ptr [ebp-0C]
 00504240    mov         esp,ebp
 00504242    pop         ebp
 00504243    ret
end;*}

//00504244
procedure sub_00504244;
begin
{*
 00504244    push        ebp
 00504245    mov         ebp,esp
 00504247    push        ecx
 00504248    mov         dword ptr [ebp-4],eax
 0050424B    mov         eax,dword ptr [ebp-4]
 0050424E    call        0050FFC0
 00504253    mov         eax,dword ptr [ebp-4]
 00504256    cmp         byte ptr [eax+295],0;TCustomActionPopupMenu.FExpanded:Boolean
>0050425D    jne         0050427F
 0050425F    mov         eax,dword ptr [ebp-4]
 00504262    cmp         byte ptr [eax+294],0;TCustomActionPopupMenu.FExpandable:Boolean
>00504269    je          0050427F
 0050426B    mov         eax,dword ptr [ebp-4]
 0050426E    call        0051105C
 00504273    test        eax,eax
>00504275    je          0050427F
 00504277    mov         eax,dword ptr [ebp-4]
 0050427A    call        00504990
 0050427F    pop         ecx
 00504280    pop         ebp
 00504281    ret
*}
end;

//00504284
{*procedure sub_00504284(?:?);
begin
 00504284    push        ebp
 00504285    mov         ebp,esp
 00504287    add         esp,0FFFFFFF8
 0050428A    mov         dword ptr [ebp-8],edx
 0050428D    mov         dword ptr [ebp-4],eax
 00504290    mov         edx,dword ptr [ebp-8]
 00504293    mov         eax,dword ptr [ebp-4]
 00504296    call        004CF814
 0050429B    mov         eax,dword ptr [ebp-4]
 0050429E    mov         eax,dword ptr [eax+30];TCustomActionPopupMenu.FParent:TWinControl
 005042A1    mov         edx,dword ptr ds:[4E6404];TCustomForm
 005042A7    call        @IsClass
 005042AC    test        al,al
>005042AE    jne         005042D3
 005042B0    mov         eax,dword ptr [ebp-8]
 005042B3    mov         eax,dword ptr [eax+4]
 005042B6    and         eax,0BFFFFFFF
 005042BB    or          eax,80000000
 005042C0    or          eax,4000000
 005042C5    or          eax,2000000
 005042CA    or          eax,0
 005042CD    mov         edx,dword ptr [ebp-8]
 005042D0    mov         dword ptr [edx+4],eax
 005042D3    mov         eax,dword ptr [ebp-8]
 005042D6    mov         dword ptr [eax+24],809
 005042DD    mov         eax,dword ptr [ebp-4]
 005042E0    mov         edx,dword ptr [eax]
 005042E2    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_0050226C
 005042E8    test        al,al
>005042EA    jne         005042F3
 005042EC    mov         eax,dword ptr [ebp-8]
 005042EF    or          dword ptr [eax+8],8
 005042F3    pop         ecx
 005042F4    pop         ecx
 005042F5    pop         ebp
 005042F6    ret
end;*}

//005042F8
{*procedure TCustomActionPopupMenu.sub_004CC67C(?:?);
begin
 005042F8    push        ebp
 005042F9    mov         ebp,esp
 005042FB    add         esp,0FFFFFFF4
 005042FE    mov         dword ptr [ebp-0C],edx
 00504301    mov         dword ptr [ebp-4],eax
 00504304    mov         byte ptr [ebp-5],1
 00504308    mov         al,byte ptr [ebp-5]
 0050430B    mov         esp,ebp
 0050430D    pop         ebp
 0050430E    ret
end;*}

//00504310
{*procedure sub_00504310(?:?);
begin
 00504310    push        ebp
 00504311    mov         ebp,esp
 00504313    add         esp,0FFFFFFF8
 00504316    mov         dword ptr [ebp-8],edx
 00504319    mov         dword ptr [ebp-4],eax
 0050431C    mov         eax,dword ptr [ebp-4]
 0050431F    call        004CB768
 00504324    mov         edx,dword ptr [ebp-8]
 00504327    mov         eax,dword ptr [ebp-4]
 0050432A    call        00501AE8
 0050432F    pop         ecx
 00504330    pop         ecx
 00504331    pop         ebp
 00504332    ret
end;*}

//00504334
{*procedure sub_00504334(?:?);
begin
 00504334    push        ebp
 00504335    mov         ebp,esp
 00504337    add         esp,0FFFFFFF0
 0050433A    push        ebx
 0050433B    mov         byte ptr [ebp-5],dl
 0050433E    mov         dword ptr [ebp-4],eax
 00504341    mov         eax,dword ptr [ebp-4]
 00504344    mov         byte ptr [eax+295],1;TCustomActionPopupMenu.FExpanded:Boolean
 0050434B    mov         eax,dword ptr [ebp-4]
 0050434E    call        TWinControl.DisableAlign
 00504353    xor         eax,eax
 00504355    push        ebp
 00504356    push        504491
 0050435B    push        dword ptr fs:[eax]
 0050435E    mov         dword ptr fs:[eax],esp
 00504361    mov         eax,dword ptr [ebp-4]
 00504364    cmp         dword ptr [eax+30C],0;TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
>0050436B    je          0050437D
 0050436D    mov         eax,dword ptr [ebp-4]
 00504370    mov         eax,dword ptr [eax+30C];TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
 00504376    xor         edx,edx
 00504378    call        TControl.SetVisible
 0050437D    mov         eax,dword ptr [ebp-4]
 00504380    mov         edx,dword ptr [eax]
 00504382    call        dword ptr [edx+190];TCustomActionPopupMenu.sub_00505174
 00504388    mov         dl,byte ptr [ebp-5]
 0050438B    mov         eax,dword ptr [ebp-4]
 0050438E    call        005020F8
 00504393    mov         eax,dword ptr [ebp-4]
 00504396    call        00511668
 0050439B    call        00479B60
 005043A0    dec         eax
 005043A1    test        eax,eax
>005043A3    jl          0050442D
 005043A9    inc         eax
 005043AA    mov         dword ptr [ebp-10],eax
 005043AD    mov         dword ptr [ebp-0C],0
 005043B4    mov         eax,dword ptr [ebp-4]
 005043B7    call        00511668
 005043BC    mov         edx,dword ptr [ebp-0C]
 005043BF    call        0050D884
 005043C4    cmp         byte ptr [eax+30],0
>005043C8    je          00504425
 005043CA    mov         eax,dword ptr [ebp-4]
 005043CD    call        00511668
 005043D2    mov         edx,dword ptr [ebp-0C]
 005043D5    call        0050D884
 005043DA    mov         eax,dword ptr [eax+40]
 005043DD    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 005043E3    call        @IsClass
 005043E8    test        al,al
>005043EA    je          00504425
 005043EC    mov         eax,dword ptr [ebp-4]
 005043EF    call        00511668
 005043F4    mov         edx,dword ptr [ebp-0C]
 005043F7    call        0050D884
 005043FC    mov         edx,dword ptr [eax+40]
 005043FF    mov         eax,dword ptr [ebp-4]
 00504402    mov         ecx,dword ptr [eax]
 00504404    call        dword ptr [ecx+184];TCustomActionPopupMenu.sub_00503F7C
 0050440A    mov         eax,dword ptr [ebp-4]
 0050440D    call        00511668
 00504412    mov         edx,dword ptr [ebp-0C]
 00504415    call        0050D884
 0050441A    mov         eax,dword ptr [eax+40]
 0050441D    mov         edx,dword ptr [eax]
 0050441F    call        dword ptr [edx+0DC]
 00504425    inc         dword ptr [ebp-0C]
 00504428    dec         dword ptr [ebp-10]
>0050442B    jne         005043B4
 0050442D    xor         eax,eax
 0050442F    pop         edx
 00504430    pop         ecx
 00504431    pop         ecx
 00504432    mov         dword ptr fs:[eax],edx
 00504435    push        504498
 0050443A    mov         eax,dword ptr [ebp-4]
 0050443D    call        TWinControl.EnableAlign
 00504442    mov         eax,dword ptr [ebp-4]
 00504445    cmp         dword ptr [eax+2AC],0;TCustomActionPopupMenu.FParentControl:TCustomActionControl
>0050444C    je          0050446E
 0050444E    mov         eax,dword ptr [ebp-4]
 00504451    mov         ecx,dword ptr [eax+2AC];TCustomActionPopupMenu.FParentControl:TCustomActionControl
 00504457    mov         eax,dword ptr [ebp-4]
 0050445A    mov         eax,dword ptr [eax+2AC];TCustomActionPopupMenu.FParentControl:TCustomActionControl
 00504460    mov         edx,dword ptr [eax+4];TCustomActionControl.FOwner:TComponent
 00504463    mov         eax,dword ptr [ebp-4]
 00504466    mov         ebx,dword ptr [eax]
 00504468    call        dword ptr [ebx+194];TCustomActionPopupMenu.sub_005045B0
 0050446E    push        0
 00504470    push        1
 00504472    push        85
 00504477    mov         eax,dword ptr [ebp-4]
 0050447A    call        TWinControl.GetHandle
 0050447F    push        eax
 00504480    call        user32.SendMessageA
 00504485    mov         eax,dword ptr [ebp-4]
 00504488    mov         edx,dword ptr [eax]
 0050448A    call        dword ptr [edx+188];TCustomActionPopupMenu.sub_005050E0
 00504490    ret
>00504491    jmp         @HandleFinally
>00504496    jmp         0050443A
 00504498    pop         ebx
 00504499    mov         esp,ebp
 0050449B    pop         ebp
 0050449C    ret
end;*}

//005044A0
{*procedure sub_005044A0(?:?; ?:?);
begin
 005044A0    push        ebp
 005044A1    mov         ebp,esp
 005044A3    add         esp,0FFFFFFF8
 005044A6    mov         dword ptr [ebp-8],edx
 005044A9    mov         dword ptr [ebp-4],eax
>005044AC    jmp         005044C2
 005044AE    mov         eax,dword ptr [ebp-4]
 005044B1    mov         eax,dword ptr [eax+2C4]
 005044B7    mov         eax,dword ptr [eax+2B0]
 005044BD    call        00500B74
 005044C2    mov         eax,dword ptr [ebp-4]
 005044C5    mov         eax,dword ptr [eax+2C4]
 005044CB    mov         eax,dword ptr [eax+2B0]
 005044D1    call        00500B58
 005044D6    cmp         eax,dword ptr [ebp-4]
>005044D9    jne         005044AE
 005044DB    mov         dl,1
 005044DD    mov         eax,dword ptr [ebp-4]
 005044E0    mov         ecx,dword ptr [eax]
 005044E2    call        dword ptr [ecx+164]
 005044E8    pop         ecx
 005044E9    pop         ecx
 005044EA    pop         ebp
 005044EB    ret
end;*}

//005044EC
procedure TCustomActionPopupMenu.Popup(X:Integer; Y:Integer);
begin
{*
 005044EC    push        ebp
 005044ED    mov         ebp,esp
 005044EF    add         esp,0FFFFFFF4
 005044F2    push        ebx
 005044F3    mov         dword ptr [ebp-0C],ecx
 005044F6    mov         dword ptr [ebp-8],edx
 005044F9    mov         dword ptr [ebp-4],eax
 005044FC    mov         eax,dword ptr [ebp-4]
 005044FF    mov         edx,dword ptr [eax]
 00504501    call        dword ptr [edx+114]
 00504507    test        eax,eax
>00504509    je          00504583
 0050450B    mov         eax,[0055B4C8];^Application:TApplication
 00504510    mov         eax,dword ptr [eax]
 00504512    mov         edx,dword ptr [eax+30]
 00504515    mov         eax,dword ptr [ebp-4]
 00504518    call        004D0318
 0050451D    mov         eax,dword ptr [ebp-4]
 00504520    mov         edx,dword ptr [ebp-4]
 00504523    mov         dword ptr [edx+2C4],eax
 00504529    mov         eax,dword ptr [ebp-4]
 0050452C    call        0051105C
 00504531    test        eax,eax
>00504533    jne         00504542
 00504535    xor         edx,edx
 00504537    mov         eax,dword ptr [ebp-4]
 0050453A    mov         ecx,dword ptr [eax]
 0050453C    call        dword ptr [ecx+164]
 00504542    mov         eax,dword ptr [ebp-4]
 00504545    mov         eax,dword ptr [eax+48]
 00504548    push        eax
 00504549    mov         eax,dword ptr [ebp-4]
 0050454C    mov         eax,dword ptr [eax+4C]
 0050454F    push        eax
 00504550    mov         ecx,dword ptr [ebp-0C]
 00504553    mov         edx,dword ptr [ebp-8]
 00504556    mov         eax,dword ptr [ebp-4]
 00504559    mov         ebx,dword ptr [eax]
 0050455B    call        dword ptr [ebx+84]
 00504561    mov         dl,1
 00504563    mov         eax,dword ptr [ebp-4]
 00504566    mov         ecx,dword ptr [eax]
 00504568    call        dword ptr [ecx+138]
 0050456E    mov         dl,1
 00504570    mov         eax,dword ptr [ebp-4]
 00504573    call        TControl.SetVisible
 00504578    mov         eax,dword ptr [ebp-4]
 0050457B    mov         edx,dword ptr [eax]
 0050457D    call        dword ptr [edx+180]
 00504583    pop         ebx
 00504584    mov         esp,ebp
 00504586    pop         ebp
 00504587    ret
*}
end;

//00504588
{*function sub_00504588(?:TPoint; ?:?):?;
begin
 00504588    push        ebp
 00504589    mov         ebp,esp
 0050458B    add         esp,0FFFFFFF4
 0050458E    mov         dword ptr [ebp-8],edx
 00504591    mov         dword ptr [ebp-4],eax
 00504594    mov         eax,dword ptr [ebp-8]
 00504597    mov         dword ptr [ebp-0C],eax
 0050459A    cmp         dword ptr [ebp-4],0
>0050459E    jle         005045A6
 005045A0    mov         eax,dword ptr [ebp-4]
 005045A3    add         dword ptr [ebp-0C],eax
 005045A6    mov         eax,dword ptr [ebp-0C]
 005045A9    mov         esp,ebp
 005045AB    pop         ebp
 005045AC    ret
end;*}

//005045B0
{*procedure sub_005045B0(?:?; ?:?);
begin
 005045B0    push        ebp
 005045B1    mov         ebp,esp
 005045B3    add         esp,0FFFFFFAC
 005045B6    push        ebx
 005045B7    mov         dword ptr [ebp-0C],ecx
 005045BA    mov         dword ptr [ebp-8],edx
 005045BD    mov         dword ptr [ebp-4],eax
 005045C0    cmp         dword ptr [ebp-8],0
>005045C4    je          005045D0
 005045C6    cmp         dword ptr [ebp-0C],0
>005045CA    jne         005046F5
 005045D0    lea         ecx,[ebp-34]
 005045D3    mov         eax,dword ptr [ebp-4]
 005045D6    mov         edx,dword ptr [eax+44];TCustomActionPopupMenu.Top:Integer
 005045D9    mov         eax,dword ptr [ebp-4]
 005045DC    mov         eax,dword ptr [eax+40];TCustomActionPopupMenu.Left:Integer
 005045DF    call        Point
 005045E4    lea         edx,[ebp-34]
 005045E7    mov         eax,[0055B6D8];^Screen:TScreen
 005045EC    mov         eax,dword ptr [eax]
 005045EE    xor         ecx,ecx
 005045F0    call        004F1330
 005045F5    mov         dword ptr [ebp-1C],eax
 005045F8    mov         eax,dword ptr [ebp-4]
 005045FB    mov         eax,dword ptr [eax+40];TCustomActionPopupMenu.Left:Integer
 005045FE    mov         dword ptr [ebp-14],eax
 00504601    mov         eax,dword ptr [ebp-4]
 00504604    mov         eax,dword ptr [eax+44];TCustomActionPopupMenu.Top:Integer
 00504607    mov         dword ptr [ebp-10],eax
 0050460A    mov         eax,dword ptr [ebp-1C]
 0050460D    call        004EFC48
 00504612    mov         ebx,eax
 00504614    mov         eax,dword ptr [ebp-1C]
 00504617    call        004EFCB4
 0050461C    add         ebx,eax
 0050461E    mov         eax,dword ptr [ebp-4]
 00504621    mov         eax,dword ptr [eax+40];TCustomActionPopupMenu.Left:Integer
 00504624    mov         edx,dword ptr [ebp-4]
 00504627    add         eax,dword ptr [edx+48];TCustomActionPopupMenu.Width:Integer
 0050462A    cmp         ebx,eax
>0050462C    jge         0050464B
 0050462E    mov         eax,dword ptr [ebp-1C]
 00504631    call        004EFC48
 00504636    mov         ebx,eax
 00504638    mov         eax,dword ptr [ebp-1C]
 0050463B    call        004EFCB4
 00504640    add         ebx,eax
 00504642    mov         eax,dword ptr [ebp-4]
 00504645    sub         ebx,dword ptr [eax+48]
 00504648    mov         dword ptr [ebp-14],ebx
 0050464B    mov         eax,dword ptr [ebp-1C]
 0050464E    call        004EFC48
 00504653    mov         edx,dword ptr [ebp-4]
 00504656    cmp         eax,dword ptr [edx+40];TCustomActionPopupMenu.Left:Integer
>00504659    jle         00504666
 0050465B    mov         eax,dword ptr [ebp-1C]
 0050465E    call        004EFC48
 00504663    mov         dword ptr [ebp-14],eax
 00504666    lea         edx,[ebp-44]
 00504669    mov         eax,dword ptr [ebp-1C]
 0050466C    call        004EFD14
 00504671    mov         ebx,dword ptr [ebp-40]
 00504674    lea         edx,[ebp-54]
 00504677    mov         eax,dword ptr [ebp-1C]
 0050467A    call        004EFD14
 0050467F    add         ebx,dword ptr [ebp-48]
 00504682    mov         eax,dword ptr [ebp-4]
 00504685    mov         eax,dword ptr [eax+44];TCustomActionPopupMenu.Top:Integer
 00504688    mov         edx,dword ptr [ebp-4]
 0050468B    add         eax,dword ptr [edx+4C];TCustomActionPopupMenu.Height:Integer
 0050468E    cmp         ebx,eax
>00504690    jge         005046A1
 00504692    mov         eax,dword ptr [ebp-4]
 00504695    mov         eax,dword ptr [eax+44];TCustomActionPopupMenu.Top:Integer
 00504698    mov         edx,dword ptr [ebp-4]
 0050469B    sub         eax,dword ptr [edx+4C]
 0050469E    mov         dword ptr [ebp-10],eax
 005046A1    lea         edx,[ebp-44]
 005046A4    mov         eax,dword ptr [ebp-1C]
 005046A7    call        004EFD14
 005046AC    mov         eax,dword ptr [ebp-40]
 005046AF    mov         edx,dword ptr [ebp-4]
 005046B2    cmp         eax,dword ptr [edx+44];TCustomActionPopupMenu.Top:Integer
>005046B5    jle         005046C8
 005046B7    lea         edx,[ebp-44]
 005046BA    mov         eax,dword ptr [ebp-1C]
 005046BD    call        004EFD14
 005046C2    mov         eax,dword ptr [ebp-40]
 005046C5    mov         dword ptr [ebp-10],eax
 005046C8    lea         edx,[ebp-44]
 005046CB    mov         eax,dword ptr [ebp-1C]
 005046CE    call        004EFD14
 005046D3    mov         eax,dword ptr [ebp-40]
 005046D6    cmp         eax,dword ptr [ebp-10]
>005046D9    jle         0050496B
 005046DF    lea         edx,[ebp-44]
 005046E2    mov         eax,dword ptr [ebp-1C]
 005046E5    call        004EFD14
 005046EA    mov         eax,dword ptr [ebp-40]
 005046ED    mov         dword ptr [ebp-10],eax
>005046F0    jmp         0050496B
 005046F5    mov         eax,dword ptr [ebp-8]
 005046F8    mov         al,byte ptr [eax+227]
 005046FE    sub         al,1
>00504700    jb          00504706
>00504702    je          00504731
>00504704    jmp         00504767
 00504706    mov         eax,dword ptr [ebp-0C]
 00504709    mov         edx,dword ptr [eax+44]
 0050470C    mov         eax,dword ptr [ebp-0C]
 0050470F    add         edx,dword ptr [eax+4C]
 00504712    lea         ecx,[ebp-34]
 00504715    mov         eax,dword ptr [ebp-0C]
 00504718    mov         eax,dword ptr [eax+40]
 0050471B    inc         eax
 0050471C    call        Point
 00504721    lea         edx,[ebp-34]
 00504724    lea         ecx,[ebp-14]
 00504727    mov         eax,dword ptr [ebp-8]
 0050472A    call        TControl.ClientToScreen
>0050472F    jmp         0050478C
 00504731    mov         eax,dword ptr [ebp-0C]
 00504734    mov         edx,dword ptr [eax+44]
 00504737    mov         eax,dword ptr [ebp-0C]
 0050473A    add         edx,dword ptr [eax+4C]
 0050473D    mov         eax,dword ptr [ebp-0C]
 00504740    mov         eax,dword ptr [eax+40]
 00504743    mov         ecx,dword ptr [ebp-4]
 00504746    sub         eax,dword ptr [ecx+48]
 00504749    mov         ecx,dword ptr [ebp-0C]
 0050474C    add         eax,dword ptr [ecx+48]
 0050474F    lea         ecx,[ebp-34]
 00504752    call        Point
 00504757    lea         edx,[ebp-34]
 0050475A    lea         ecx,[ebp-14]
 0050475D    mov         eax,dword ptr [ebp-8]
 00504760    call        TControl.ClientToScreen
>00504765    jmp         0050478C
 00504767    lea         edx,[ebp-44]
 0050476A    mov         eax,dword ptr [ebp-0C]
 0050476D    call        004CA6AC
 00504772    lea         edx,[ebp-44]
 00504775    lea         ecx,[ebp-14]
 00504778    mov         eax,dword ptr [ebp-0C]
 0050477B    mov         eax,dword ptr [eax+30]
 0050477E    call        TControl.ClientToScreen
 00504783    mov         eax,dword ptr [ebp-0C]
 00504786    mov         eax,dword ptr [eax+48]
 00504789    add         dword ptr [ebp-14],eax
 0050478C    mov         dword ptr [ebp-18],0FFFFFFFF
 00504793    push        0
 00504795    lea         eax,[ebp-18]
 00504798    push        eax
 00504799    push        0
 0050479B    push        1B
 0050479D    call        user32.SystemParametersInfoA
 005047A2    lea         edx,[ebp-44]
 005047A5    mov         eax,dword ptr [ebp-0C]
 005047A8    call        004CA6AC
 005047AD    lea         edx,[ebp-44]
 005047B0    lea         ecx,[ebp-34]
 005047B3    mov         eax,dword ptr [ebp-0C]
 005047B6    mov         eax,dword ptr [eax+30]
 005047B9    call        TControl.ClientToScreen
 005047BE    mov         eax,dword ptr [ebp-34]
 005047C1    mov         dword ptr [ebp-2C],eax
 005047C4    mov         eax,dword ptr [ebp-30]
 005047C7    mov         dword ptr [ebp-28],eax
 005047CA    lea         edx,[ebp-44]
 005047CD    mov         eax,dword ptr [ebp-0C]
 005047D0    call        004CA6AC
 005047D5    lea         edx,[ebp-3C]
 005047D8    lea         ecx,[ebp-34]
 005047DB    mov         eax,dword ptr [ebp-0C]
 005047DE    mov         eax,dword ptr [eax+30]
 005047E1    call        TControl.ClientToScreen
 005047E6    mov         eax,dword ptr [ebp-34]
 005047E9    mov         dword ptr [ebp-24],eax
 005047EC    mov         eax,dword ptr [ebp-30]
 005047EF    mov         dword ptr [ebp-20],eax
 005047F2    lea         edx,[ebp-2C]
 005047F5    mov         eax,[0055B6D8];^Screen:TScreen
 005047FA    mov         eax,dword ptr [eax]
 005047FC    xor         ecx,ecx
 005047FE    call        004F1374
 00504803    mov         dword ptr [ebp-1C],eax
 00504806    mov         eax,dword ptr [ebp-1C]
 00504809    call        004EFC48
 0050480E    cmp         eax,dword ptr [ebp-14]
>00504811    jle         0050481E
 00504813    mov         eax,dword ptr [ebp-1C]
 00504816    call        004EFC48
 0050481B    mov         dword ptr [ebp-14],eax
 0050481E    push        ebp
 0050481F    lea         edx,[ebp-44]
 00504822    mov         eax,dword ptr [ebp-1C]
 00504825    call        004EFD14
 0050482A    mov         eax,dword ptr [ebp-3C]
 0050482D    push        eax
 0050482E    lea         edx,[ebp-54]
 00504831    mov         eax,dword ptr [ebp-1C]
 00504834    call        004EFD14
 00504839    mov         eax,dword ptr [ebp-54]
 0050483C    pop         edx
 0050483D    call        00504588
 00504842    pop         ecx
 00504843    mov         edx,dword ptr [ebp-14]
 00504846    mov         ecx,dword ptr [ebp-4]
 00504849    add         edx,dword ptr [ecx+48]
 0050484C    cmp         eax,edx
>0050484E    jge         005048DB
 00504854    push        ebp
 00504855    lea         edx,[ebp-44]
 00504858    mov         eax,dword ptr [ebp-1C]
 0050485B    call        004EFD14
 00504860    mov         eax,dword ptr [ebp-3C]
 00504863    push        eax
 00504864    lea         edx,[ebp-54]
 00504867    mov         eax,dword ptr [ebp-1C]
 0050486A    call        004EFD14
 0050486F    mov         eax,dword ptr [ebp-54]
 00504872    pop         edx
 00504873    call        00504588
 00504878    pop         ecx
 00504879    mov         edx,dword ptr [ebp-4]
 0050487C    sub         eax,dword ptr [edx+48]
 0050487F    mov         dword ptr [ebp-14],eax
 00504882    mov         eax,dword ptr [ebp-0C]
 00504885    mov         edx,dword ptr ds:[500604];TCustomMenuItem
 0050488B    call        @IsClass
 00504890    test        al,al
>00504892    je          005048DB
 00504894    lea         edx,[ebp-44]
 00504897    mov         eax,dword ptr [ebp-1C]
 0050489A    call        004EFD14
 0050489F    mov         ebx,dword ptr [ebp-44]
 005048A2    lea         edx,[ebp-54]
 005048A5    mov         eax,dword ptr [ebp-1C]
 005048A8    call        004EFD14
 005048AD    add         ebx,dword ptr [ebp-4C]
 005048B0    mov         eax,dword ptr [ebp-8]
 005048B3    sub         ebx,dword ptr [eax+40]
 005048B6    mov         eax,dword ptr [ebp-8]
 005048B9    add         ebx,dword ptr [eax+48]
 005048BC    mov         eax,dword ptr [ebp-14]
 005048BF    mov         edx,dword ptr [ebp-4]
 005048C2    add         eax,dword ptr [edx+48];TCustomActionPopupMenu.Width:Integer
 005048C5    cmp         ebx,eax
>005048C7    jge         005048DB
 005048C9    mov         eax,dword ptr [ebp-8]
 005048CC    mov         eax,dword ptr [eax+40]
 005048CF    mov         edx,dword ptr [ebp-4]
 005048D2    sub         eax,dword ptr [edx+48]
 005048D5    add         eax,2
 005048D8    mov         dword ptr [ebp-14],eax
 005048DB    lea         edx,[ebp-44]
 005048DE    mov         eax,dword ptr [ebp-1C]
 005048E1    call        004EFD14
 005048E6    mov         eax,dword ptr [ebp-38]
 005048E9    mov         edx,dword ptr [ebp-4]
 005048EC    cmp         eax,dword ptr [edx+4C];TCustomActionPopupMenu.Height:Integer
>005048EF    jge         005048FE
 005048F1    mov         eax,dword ptr [ebp-1C]
 005048F4    call        004EFC90
 005048F9    mov         dword ptr [ebp-10],eax
>005048FC    jmp         0050496B
 005048FE    push        ebp
 005048FF    lea         edx,[ebp-44]
 00504902    mov         eax,dword ptr [ebp-1C]
 00504905    call        004EFD14
 0050490A    mov         eax,dword ptr [ebp-38]
 0050490D    push        eax
 0050490E    lea         edx,[ebp-54]
 00504911    mov         eax,dword ptr [ebp-1C]
 00504914    call        004EFD14
 00504919    mov         eax,dword ptr [ebp-50]
 0050491C    pop         edx
 0050491D    call        00504588
 00504922    pop         ecx
 00504923    mov         edx,dword ptr [ebp-10]
 00504926    mov         ecx,dword ptr [ebp-4]
 00504929    add         edx,dword ptr [ecx+4C]
 0050492C    cmp         eax,edx
>0050492E    jge         0050496B
 00504930    mov         eax,dword ptr [ebp-0C]
 00504933    mov         edx,dword ptr ds:[5007B4];TCustomMenuButton
 00504939    call        @IsClass
 0050493E    test        al,al
>00504940    je          00504956
 00504942    mov         eax,dword ptr [ebp-0C]
 00504945    mov         edx,dword ptr [ebp-10]
 00504948    sub         edx,dword ptr [eax+4C]
 0050494B    mov         eax,dword ptr [ebp-4]
 0050494E    sub         edx,dword ptr [eax+4C]
 00504951    mov         dword ptr [ebp-10],edx
>00504954    jmp         0050496B
 00504956    mov         eax,dword ptr [ebp-10]
 00504959    mov         edx,dword ptr [ebp-4]
 0050495C    sub         eax,dword ptr [edx+4C]
 0050495F    mov         edx,dword ptr [ebp-0C]
 00504962    add         eax,dword ptr [edx+4C]
 00504965    add         eax,3
 00504968    mov         dword ptr [ebp-10],eax
 0050496B    mov         eax,dword ptr [ebp-4]
 0050496E    mov         eax,dword ptr [eax+48];TCustomActionPopupMenu.Width:Integer
 00504971    push        eax
 00504972    mov         eax,dword ptr [ebp-4]
 00504975    mov         eax,dword ptr [eax+4C];TCustomActionPopupMenu.Height:Integer
 00504978    push        eax
 00504979    mov         ecx,dword ptr [ebp-10]
 0050497C    mov         edx,dword ptr [ebp-14]
 0050497F    mov         eax,dword ptr [ebp-4]
 00504982    mov         ebx,dword ptr [eax]
 00504984    call        dword ptr [ebx+84];TCustomActionBar.SetBounds
 0050498A    pop         ebx
 0050498B    mov         esp,ebp
 0050498D    pop         ebp
 0050498E    ret
end;*}

//00504990
procedure sub_00504990(?:TCustomActionPopupMenu);
begin
{*
 00504990    push        ebp
 00504991    mov         ebp,esp
 00504993    add         esp,0FFFFFFF8
 00504996    mov         dword ptr [ebp-4],eax
 00504999    mov         eax,dword ptr [ebp-4]
 0050499C    cmp         dword ptr [eax+30C],0;TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
>005049A3    jne         00504A6C
 005049A9    mov         eax,dword ptr [ebp-4]
 005049AC    mov         edx,dword ptr [eax]
 005049AE    call        dword ptr [edx+18C];TCustomActionPopupMenu.sub_0050508C
 005049B4    mov         ecx,dword ptr [ebp-4]
 005049B7    mov         dl,1
 005049B9    call        dword ptr [eax+2C]
 005049BC    mov         edx,dword ptr [ebp-4]
 005049BF    mov         dword ptr [edx+30C],eax;TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
 005049C5    mov         eax,dword ptr [ebp-4]
 005049C8    mov         eax,dword ptr [eax+30C];TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
 005049CE    mov         dword ptr [ebp-8],eax
 005049D1    mov         dl,6
 005049D3    mov         eax,dword ptr [ebp-8]
 005049D6    call        TImage.SetAlign
 005049DB    mov         eax,dword ptr [ebp-8]
 005049DE    mov         byte ptr [eax+1CC],1;TCustomMenuExpandBtn.FAutoScroll:Boolean
 005049E5    mov         edx,dword ptr [ebp-4]
 005049E8    mov         eax,dword ptr [ebp-8]
 005049EB    mov         ecx,dword ptr [eax]
 005049ED    call        dword ptr [ecx+68];TCustomMenuExpandBtn.sub_004CAD7C
 005049F0    mov         edx,2
 005049F5    mov         eax,dword ptr [ebp-8]
 005049F8    call        004FCAC0
 005049FD    mov         eax,dword ptr [ebp-8]
 00504A00    lea         edx,[eax+80];TCustomMenuExpandBtn.Hint:String
 00504A06    mov         eax,[0055B284];^SExpand:TResStringRec
 00504A0B    call        LoadResString
 00504A10    mov         dl,1
 00504A12    mov         eax,dword ptr [ebp-8]
 00504A15    call        004FCAF4
 00504A1A    mov         dl,3
 00504A1C    mov         eax,dword ptr [ebp-8]
 00504A1F    call        004FCB28
 00504A24    mov         eax,dword ptr [ebp-4]
 00504A27    mov         eax,dword ptr [eax+210];TCustomActionPopupMenu.FActionClient:TActionClient
 00504A2D    call        0050CCE0
 00504A32    test        al,al
>00504A34    je          00504A48
 00504A36    mov         eax,dword ptr [ebp-4]
 00504A39    mov         eax,dword ptr [eax+210];TCustomActionPopupMenu.FActionClient:TActionClient
 00504A3F    mov         al,byte ptr [eax+14];TActionClient.BackgroundLayout:TBackgroundLayout
 00504A42    add         al,0FD
 00504A44    sub         al,2
>00504A46    jae         00504A4C
 00504A48    xor         edx,edx
>00504A4A    jmp         00504A4E
 00504A4C    mov         dl,1
 00504A4E    mov         eax,dword ptr [ebp-8]
 00504A51    call        005147F4
 00504A56    mov         eax,dword ptr [ebp-4]
 00504A59    mov         edx,dword ptr [ebp-8]
 00504A5C    mov         dword ptr [edx+1C4],eax;TCustomMenuExpandBtn.?f1C4:TCustomActionToolBar
 00504A62    mov         dword ptr [edx+1C0],5044A0;TCustomMenuExpandBtn.FOnClick:TNotifyEvent sub_005044A0
 00504A6C    pop         ecx
 00504A6D    pop         ecx
 00504A6E    pop         ebp
 00504A6F    ret
*}
end;

//00504A70
{*procedure sub_00504A70(?:?);
begin
 00504A70    push        ebp
 00504A71    mov         ebp,esp
 00504A73    add         esp,0FFFFFFF8
 00504A76    mov         byte ptr [ebp-5],dl
 00504A79    mov         dword ptr [ebp-4],eax
 00504A7C    mov         al,byte ptr [ebp-5]
 00504A7F    add         al,0FE
 00504A81    sub         al,2
>00504A83    jae         00504A90
 00504A85    mov         dl,byte ptr [ebp-5]
 00504A88    mov         eax,dword ptr [ebp-4]
 00504A8B    call        00511CA8
 00504A90    pop         ecx
 00504A91    pop         ecx
 00504A92    pop         ebp
 00504A93    ret
end;*}

//00504A94
{*procedure TCustomActionPopupMenu.WMKeyDown(?:?);
begin
 00504A94    push        ebp
 00504A95    mov         ebp,esp
 00504A97    add         esp,0FFFFFFF0
 00504A9A    push        ebx
 00504A9B    push        esi
 00504A9C    mov         dword ptr [ebp-8],edx
 00504A9F    mov         dword ptr [ebp-4],eax
 00504AA2    mov         eax,dword ptr [ebp-8]
 00504AA5    movzx       eax,word ptr [eax+4]
 00504AA9    cmp         eax,28
>00504AAC    jg          00504ACB
>00504AAE    je          00504CCA
 00504AB4    sub         eax,25
>00504AB7    je          00504B4E
 00504ABD    sub         eax,2
>00504AC0    je          00504BA8
>00504AC6    jmp         00504D9A
 00504ACB    sub         eax,2D
>00504ACE    je          00504D32
 00504AD4    sub         eax,40
>00504AD7    jne         00504D9A
 00504ADD    mov         eax,dword ptr [ebp-4]
 00504AE0    mov         edx,dword ptr [eax]
 00504AE2    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_0050226C
 00504AE8    test        al,al
>00504AEA    je          00504D9A
 00504AF0    mov         eax,dword ptr [ebp-4]
 00504AF3    call        005023E4
 00504AF8    test        eax,eax
>00504AFA    je          00504D9A
 00504B00    mov         eax,dword ptr [ebp-4]
 00504B03    call        005023E4
 00504B08    call        TCollectionItem.GetIndex
 00504B0D    push        eax
 00504B0E    mov         eax,dword ptr [ebp-4]
 00504B11    call        00511668
 00504B16    pop         edx
 00504B17    call        00479DAC
 00504B1C    mov         dword ptr [ebp-0C],eax
 00504B1F    mov         edx,504DB4;'-'
 00504B24    mov         eax,dword ptr [ebp-0C]
 00504B27    call        TActionClientItem.SetCaption
 00504B2C    mov         eax,dword ptr [ebp-0C]
 00504B2F    mov         eax,dword ptr [eax+40]
 00504B32    mov         dl,1
 00504B34    call        TControl.SetVisible
 00504B39    mov         eax,dword ptr [ebp-0C]
 00504B3C    mov         eax,dword ptr [eax+40]
 00504B3F    mov         dl,1
 00504B41    mov         ecx,dword ptr [eax]
 00504B43    call        dword ptr [ecx+0D8]
>00504B49    jmp         00504D9A
 00504B4E    mov         eax,dword ptr [ebp-4]
 00504B51    cmp         dword ptr [eax+2FC],0;TCustomActionPopupMenu.FChildMenu:TCustomActionMenuBar
>00504B58    je          00504B82
 00504B5A    mov         eax,dword ptr [ebp-4]
 00504B5D    mov         eax,dword ptr [eax+2FC];TCustomActionPopupMenu.FChildMenu:TCustomActionMenuBar
 00504B63    mov         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
 00504B6A    mov         eax,dword ptr [ebp-4]
 00504B6D    xor         edx,edx
 00504B6F    mov         dword ptr [eax+2FC],edx;TCustomActionPopupMenu.FChildMenu:TCustomActionMenuBar
 00504B75    mov         eax,dword ptr [ebp-8]
 00504B78    xor         edx,edx
 00504B7A    mov         dword ptr [eax+0C],edx
>00504B7D    jmp         00504D9A
 00504B82    mov         eax,dword ptr [ebp-4]
 00504B85    cmp         dword ptr [eax+2A8],0;TCustomActionPopupMenu.FParentMenu:TCustomActionMenuBar
>00504B8C    je          00504D9A
 00504B92    mov         edx,dword ptr [ebp-8]
 00504B95    mov         eax,dword ptr [ebp-4]
 00504B98    mov         eax,dword ptr [eax+2A8];TCustomActionPopupMenu.FParentMenu:TCustomActionMenuBar
 00504B9E    mov         ecx,dword ptr [eax]
 00504BA0    call        dword ptr [ecx-14];TObject.Dispatch
>00504BA3    jmp         00504D9A
 00504BA8    mov         eax,dword ptr [ebp-4]
 00504BAB    call        005023E4
 00504BB0    test        eax,eax
>00504BB2    je          00504CA2
 00504BB8    mov         eax,dword ptr [ebp-4]
 00504BBB    mov         edx,dword ptr [eax]
 00504BBD    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_0050226C
 00504BC3    test        al,al
>00504BC5    je          00504C22
 00504BC7    mov         eax,dword ptr [ebp-4]
 00504BCA    call        005023E4
 00504BCF    call        0050CB98
 00504BD4    test        al,al
>00504BD6    jne         00504C22
 00504BD8    mov         eax,dword ptr [ebp-4]
 00504BDB    call        005023E4
 00504BE0    cmp         byte ptr [eax+50],0
>00504BE4    jne         00504C22
 00504BE6    mov         eax,dword ptr [ebp-4]
 00504BE9    call        005023E4
 00504BEE    call        TActionClientItem.GetAction
 00504BF3    test        eax,eax
>00504BF5    jne         00504C22
 00504BF7    call        004E7E34
 00504BFC    test        al,4
>00504BFE    je          00504C22
 00504C00    mov         eax,dword ptr [ebp-4]
 00504C03    call        005023E4
 00504C08    call        TActionClient.GetItems
 00504C0D    call        0050D750
 00504C12    mov         eax,dword ptr [ebp-4]
 00504C15    call        005023E4
 00504C1A    mov         eax,dword ptr [eax+40]
 00504C1D    mov         edx,dword ptr [eax]
 00504C1F    call        dword ptr [edx+7C]
 00504C22    mov         eax,dword ptr [ebp-4]
 00504C25    call        005023E4
 00504C2A    call        0050CB98
 00504C2F    test        al,al
>00504C31    je          00504C7C
 00504C33    mov         eax,dword ptr [ebp-4]
 00504C36    call        005023E4
 00504C3B    cmp         dword ptr [eax+18],0
>00504C3F    jne         00504C7C
 00504C41    mov         eax,dword ptr [ebp-4]
 00504C44    call        005023E4
 00504C49    mov         eax,dword ptr [eax+40]
 00504C4C    mov         edx,dword ptr [eax]
 00504C4E    call        dword ptr [edx+50]
 00504C51    test        al,al
>00504C53    jne         00504C64
 00504C55    mov         eax,dword ptr [ebp-4]
 00504C58    mov         edx,dword ptr [eax]
 00504C5A    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_0050226C
 00504C60    test        al,al
>00504C62    je          00504C7C
 00504C64    mov         eax,dword ptr [ebp-4]
 00504C67    call        005023E4
 00504C6C    mov         eax,dword ptr [eax+40]
 00504C6F    mov         edx,dword ptr [eax]
 00504C71    call        dword ptr [edx+0E0]
>00504C77    jmp         00504D9A
 00504C7C    mov         eax,dword ptr [ebp-4]
 00504C7F    cmp         dword ptr [eax+2B0],0;TCustomActionPopupMenu.FPopupStack:TMenuStack
>00504C86    jne         00504D9A
 00504C8C    mov         edx,dword ptr [ebp-8]
 00504C8F    mov         eax,dword ptr [ebp-4]
 00504C92    mov         eax,dword ptr [eax+2C4];TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
 00504C98    mov         ecx,dword ptr [eax]
 00504C9A    call        dword ptr [ecx-14];TObject.Dispatch
>00504C9D    jmp         00504D9A
 00504CA2    mov         eax,dword ptr [ebp-4]
 00504CA5    mov         eax,dword ptr [eax+2C4];TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
 00504CAB    cmp         eax,dword ptr [ebp-4]
>00504CAE    je          00504D9A
 00504CB4    mov         edx,dword ptr [ebp-8]
 00504CB7    mov         eax,dword ptr [ebp-4]
 00504CBA    mov         eax,dword ptr [eax+2C4];TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
 00504CC0    mov         ecx,dword ptr [eax]
 00504CC2    call        dword ptr [ecx-14];TObject.Dispatch
>00504CC5    jmp         00504D9A
 00504CCA    mov         eax,dword ptr [ebp-8]
 00504CCD    cmp         word ptr [eax+4],28
>00504CD2    jne         00504D9A
 00504CD8    mov         eax,dword ptr [ebp-4]
 00504CDB    cmp         byte ptr [eax+294],0;TCustomActionPopupMenu.FExpandable:Boolean
>00504CE2    je          00504D9A
 00504CE8    mov         eax,dword ptr [ebp-4]
 00504CEB    call        005023E4
 00504CF0    mov         ebx,eax
 00504CF2    mov         eax,dword ptr [ebp-4]
 00504CF5    call        00511000
 00504CFA    cmp         ebx,eax
>00504CFC    je          00504D0B
 00504CFE    call        004E7E34
 00504D03    test        al,4
>00504D05    je          00504D9A
 00504D0B    mov         eax,dword ptr [ebp-4]
 00504D0E    mov         eax,dword ptr [eax+30C];TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
 00504D14    mov         si,0FFEB
 00504D18    call        @CallDynaInst;TCustomUtilityButton.sub_004CCCAC
 00504D1D    mov         eax,dword ptr [ebp-4]
 00504D20    call        0051105C
 00504D25    mov         edx,dword ptr [eax+40]
 00504D28    mov         eax,dword ptr [ebp-4]
 00504D2B    call        00502DBC
>00504D30    jmp         00504DA5
 00504D32    mov         eax,dword ptr [ebp-4]
 00504D35    test        byte ptr [eax+1C],10;TCustomActionPopupMenu.FComponentState:TComponentState
>00504D39    je          00504DA5
 00504D3B    mov         eax,dword ptr [ebp-4]
 00504D3E    call        005023E4
 00504D43    test        eax,eax
>00504D45    je          00504DA5
 00504D47    mov         eax,dword ptr [ebp-4]
 00504D4A    call        005023E4
 00504D4F    mov         dword ptr [ebp-0C],eax
 00504D52    mov         eax,dword ptr [ebp-0C]
 00504D55    call        TCollectionItem.GetIndex
 00504D5A    mov         dword ptr [ebp-10],eax
 00504D5D    call        004E7E34
 00504D62    test        al,1
>00504D64    je          00504D69
 00504D66    inc         dword ptr [ebp-10]
 00504D69    mov         eax,dword ptr [ebp-4]
 00504D6C    mov         eax,dword ptr [eax+210];TCustomActionPopupMenu.FActionClient:TActionClient
 00504D72    call        TActionClient.GetItems
 00504D77    mov         edx,dword ptr [ebp-10]
 00504D7A    call        00479DAC
 00504D7F    mov         dword ptr [ebp-0C],eax
 00504D82    mov         eax,dword ptr [ebp-0C]
 00504D85    mov         eax,dword ptr [eax+40]
 00504D88    mov         dl,1
 00504D8A    mov         ecx,dword ptr [eax]
 00504D8C    call        dword ptr [ecx+0D8]
 00504D92    mov         eax,dword ptr [ebp-4]
 00504D95    call        0050A550
 00504D9A    mov         edx,dword ptr [ebp-8]
 00504D9D    mov         eax,dword ptr [ebp-4]
 00504DA0    call        TCustomActionMenuBar.WMKeyDown
 00504DA5    pop         esi
 00504DA6    pop         ebx
 00504DA7    mov         esp,ebp
 00504DA9    pop         ebp
 00504DAA    ret
end;*}

//00504DB8
{*procedure TCustomActionPopupMenu.sub_00504DB8(?:?);
begin
 00504DB8    push        ebp
 00504DB9    mov         ebp,esp
 00504DBB    add         esp,0FFFFFFF8
 00504DBE    mov         dword ptr [ebp-8],edx
 00504DC1    mov         dword ptr [ebp-4],eax
 00504DC4    mov         edx,dword ptr [ebp-8]
 00504DC7    mov         eax,dword ptr [ebp-4]
 00504DCA    mov         ecx,dword ptr [eax]
 00504DCC    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 00504DCF    mov         edx,dword ptr [ebp-8]
 00504DD2    mov         edx,dword ptr [edx+4]
 00504DD5    mov         eax,dword ptr [ebp-4]
 00504DD8    mov         ecx,dword ptr [eax]
 00504DDA    call        dword ptr [ecx+0C8];TCustomActionPopupMenu.sub_00512AF4
 00504DE0    pop         ecx
 00504DE1    pop         ecx
 00504DE2    pop         ebp
 00504DE3    ret
end;*}

//00504DE4
{*procedure TCustomActionPopupMenu.sub_004D4F60(?:?);
begin
 00504DE4    push        ebp
 00504DE5    mov         ebp,esp
 00504DE7    add         esp,0FFFFFFE4
 00504DEA    mov         dword ptr [ebp-8],edx
 00504DED    mov         dword ptr [ebp-4],eax
 00504DF0    mov         edx,dword ptr [ebp-8]
 00504DF3    mov         eax,dword ptr [ebp-4]
 00504DF6    call        TWinControl.sub_004D4F60
 00504DFB    mov         eax,dword ptr [ebp-4]
 00504DFE    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 00504E04    call        TCanvas.GetHandle
 00504E09    mov         dword ptr [ebp-0C],eax
 00504E0C    xor         eax,eax
 00504E0E    push        ebp
 00504E0F    push        504E97
 00504E14    push        dword ptr fs:[eax]
 00504E17    mov         dword ptr fs:[eax],esp
 00504E1A    mov         edx,dword ptr [ebp-8]
 00504E1D    mov         edx,dword ptr [edx+4]
 00504E20    mov         eax,dword ptr [ebp-4]
 00504E23    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 00504E29    call        TCanvas.SetHandle
 00504E2E    mov         eax,dword ptr [ebp-4]
 00504E31    call        TActionToolBar.GetColorMap
 00504E36    mov         edx,dword ptr [eax+40]
 00504E39    mov         eax,dword ptr [ebp-4]
 00504E3C    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 00504E42    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00504E45    call        TBrush.SetColor
 00504E4A    lea         edx,[ebp-1C]
 00504E4D    mov         eax,dword ptr [ebp-4]
 00504E50    call        004CA6AC
 00504E55    lea         edx,[ebp-1C]
 00504E58    mov         eax,dword ptr [ebp-4]
 00504E5B    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 00504E61    call        TCanvas.FillRect
 00504E66    push        0
 00504E68    mov         edx,dword ptr [ebp-8]
 00504E6B    mov         edx,dword ptr [edx+4]
 00504E6E    xor         ecx,ecx
 00504E70    mov         eax,dword ptr [ebp-4]
 00504E73    call        004D0E94
 00504E78    xor         eax,eax
 00504E7A    pop         edx
 00504E7B    pop         ecx
 00504E7C    pop         ecx
 00504E7D    mov         dword ptr fs:[eax],edx
 00504E80    push        504E9E
 00504E85    mov         eax,dword ptr [ebp-4]
 00504E88    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 00504E8E    mov         edx,dword ptr [ebp-0C]
 00504E91    call        TCanvas.SetHandle
 00504E96    ret
>00504E97    jmp         @HandleFinally
>00504E9C    jmp         00504E85
 00504E9E    mov         esp,ebp
 00504EA0    pop         ebp
 00504EA1    ret
end;*}

//00504EA4
procedure TCustomActionPopupMenu.sub_004CC91C;
begin
{*
 00504EA4    push        ebp
 00504EA5    mov         ebp,esp
 00504EA7    add         esp,0FFFFFFF0
 00504EAA    push        ebx
 00504EAB    push        esi
 00504EAC    mov         dword ptr [ebp-4],eax
 00504EAF    mov         eax,dword ptr [ebp-4]
 00504EB2    call        TCustomActionBar.sub_004CC91C
 00504EB7    mov         eax,dword ptr [ebp-4]
 00504EBA    cmp         byte ptr [eax+57],0;TCustomActionPopupMenu.FVisible:Boolean
>00504EBE    jne         00504FEF
 00504EC4    mov         eax,dword ptr [ebp-4]
 00504EC7    call        0051105C
 00504ECC    mov         dword ptr [ebp-8],eax
 00504ECF    cmp         dword ptr [ebp-8],0
>00504ED3    je          00504EEB
 00504ED5    mov         eax,dword ptr [ebp-8]
 00504ED8    cmp         byte ptr [eax+50],0
>00504EDC    je          00504EEB
 00504EDE    xor         edx,edx
 00504EE0    mov         eax,dword ptr [ebp-8]
 00504EE3    mov         eax,dword ptr [eax+40]
 00504EE6    call        TControl.SetVisible
 00504EEB    mov         eax,dword ptr [ebp-4]
 00504EEE    call        00511000
 00504EF3    mov         dword ptr [ebp-8],eax
 00504EF6    cmp         dword ptr [ebp-8],0
>00504EFA    je          00504F12
 00504EFC    mov         eax,dword ptr [ebp-8]
 00504EFF    cmp         byte ptr [eax+50],0
>00504F03    je          00504F12
 00504F05    xor         edx,edx
 00504F07    mov         eax,dword ptr [ebp-8]
 00504F0A    mov         eax,dword ptr [eax+40]
 00504F0D    call        TControl.SetVisible
 00504F12    mov         eax,dword ptr [ebp-4]
 00504F15    mov         edx,dword ptr [eax]
 00504F17    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_0050226C
 00504F1D    test        al,al
>00504F1F    jne         00504F72
 00504F21    mov         eax,dword ptr [ebp-4]
 00504F24    mov         edx,dword ptr [eax]
 00504F26    call        dword ptr [edx+114];TCustomActionPopupMenu.sub_00511728
 00504F2C    dec         eax
 00504F2D    test        eax,eax
>00504F2F    jl          00504F72
 00504F31    inc         eax
 00504F32    mov         dword ptr [ebp-10],eax
 00504F35    mov         dword ptr [ebp-0C],0
 00504F3C    mov         eax,dword ptr [ebp-4]
 00504F3F    call        00511668
 00504F44    mov         edx,dword ptr [ebp-0C]
 00504F47    call        0050D884
 00504F4C    cmp         dword ptr [eax+38],0
>00504F50    je          00504F6A
 00504F52    mov         eax,dword ptr [ebp-4]
 00504F55    call        00511668
 00504F5A    mov         edx,dword ptr [ebp-0C]
 00504F5D    call        0050D884
 00504F62    mov         eax,dword ptr [eax+38]
 00504F65    mov         edx,dword ptr [eax]
 00504F67    call        dword ptr [edx+1C]
 00504F6A    inc         dword ptr [ebp-0C]
 00504F6D    dec         dword ptr [ebp-10]
>00504F70    jne         00504F3C
 00504F72    mov         eax,dword ptr [ebp-4]
 00504F75    cmp         dword ptr [eax+210],0;TCustomActionPopupMenu.FActionClient:TActionClient
>00504F7C    je          00504FEF
 00504F7E    mov         eax,dword ptr [ebp-4]
 00504F81    call        004D3890
 00504F86    mov         eax,dword ptr [ebp-4]
 00504F89    mov         si,0FFEE
 00504F8D    call        @CallDynaInst;TWinControl.sub_004CDF1C
 00504F92    mov         eax,dword ptr [ebp-4]
 00504F95    mov         ecx,dword ptr [eax+2AC];TCustomActionPopupMenu.FParentControl:TCustomActionControl
 00504F9B    mov         eax,dword ptr [ebp-4]
 00504F9E    mov         edx,dword ptr [eax+2A8];TCustomActionPopupMenu.FParentMenu:TCustomActionMenuBar
 00504FA4    mov         eax,dword ptr [ebp-4]
 00504FA7    mov         ebx,dword ptr [eax]
 00504FA9    call        dword ptr [ebx+194];TCustomActionPopupMenu.sub_005045B0
 00504FAF    mov         eax,dword ptr [ebp-4]
 00504FB2    cmp         dword ptr [eax+2A8],0;TCustomActionPopupMenu.FParentMenu:TCustomActionMenuBar
>00504FB9    je          00504FC5
 00504FBB    mov         dl,1
 00504FBD    mov         eax,dword ptr [ebp-4]
 00504FC0    call        TCustomActionMenuBar.Animate
 00504FC5    mov         eax,dword ptr [ebp-4]
 00504FC8    test        byte ptr [eax+1C],10;TCustomActionPopupMenu.FComponentState:TComponentState
>00504FCC    jne         00504FEF
 00504FCE    mov         eax,dword ptr [ebp-4]
 00504FD1    cmp         dword ptr [eax+2C4],0;TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
>00504FD8    je          00504FEF
 00504FDA    push        2
 00504FDC    push        0
 00504FDE    call        winmm.sndPlaySoundA
 00504FE3    push        13
 00504FE5    push        504FF8;'MenuPopup'
 00504FEA    call        winmm.sndPlaySoundA
 00504FEF    pop         esi
 00504FF0    pop         ebx
 00504FF1    mov         esp,ebp
 00504FF3    pop         ebp
 00504FF4    ret
*}
end;

//00505004
procedure sub_00505004;
begin
{*
 00505004    push        ebp
 00505005    mov         ebp,esp
 00505007    add         esp,0FFFFFFF4
 0050500A    mov         dword ptr [ebp-4],eax
 0050500D    xor         edx,edx
 0050500F    mov         eax,dword ptr [ebp-4]
 00505012    call        TControl.SetVisible
 00505017    mov         eax,dword ptr [ebp-4]
 0050501A    cmp         dword ptr [eax+2C4],0;TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
>00505021    je          0050504D
 00505023    lea         edx,[ebp-0C]
 00505026    mov         eax,[0055B688];^gvar_0055DDAC
 0050502B    mov         eax,dword ptr [eax]
 0050502D    call        004D95A4
 00505032    mov         eax,dword ptr [ebp-4]
 00505035    mov         eax,dword ptr [eax+2C4];TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
 0050503B    mov         edx,dword ptr [ebp-0C]
 0050503E    mov         dword ptr [eax+29C],edx;TCustomActionMenuBar.FMousePos:TPoint
 00505044    mov         edx,dword ptr [ebp-8]
 00505047    mov         dword ptr [eax+2A0],edx
 0050504D    mov         eax,dword ptr [ebp-4]
 00505050    call        00501574
 00505055    mov         esp,ebp
 00505057    pop         ebp
 00505058    ret
*}
end;

//0050505C
{*procedure sub_0050505C(?:?);
begin
 0050505C    push        ebp
 0050505D    mov         ebp,esp
 0050505F    add         esp,0FFFFFFF8
 00505062    mov         dword ptr [ebp-8],edx
 00505065    mov         dword ptr [ebp-4],eax
 00505068    mov         edx,dword ptr [ebp-8]
 0050506B    mov         eax,dword ptr [ebp-4]
 0050506E    call        004D3A1C
 00505073    xor         edx,edx
 00505075    mov         eax,dword ptr [ebp-4]
 00505078    mov         ecx,dword ptr [eax]
 0050507A    call        dword ptr [ecx+0F8];TCustomActionPopupMenu.sub_00511578
 00505080    mov         edx,dword ptr [ebp-8]
 00505083    add         dword ptr [edx],eax
 00505085    pop         ecx
 00505086    pop         ecx
 00505087    pop         ebp
 00505088    ret
end;*}

//0050508C
{*function sub_0050508C:?;
begin
 0050508C    push        ebp
 0050508D    mov         ebp,esp
 0050508F    add         esp,0FFFFFFF8
 00505092    mov         dword ptr [ebp-4],eax
 00505095    mov         eax,[004FEF78];TCustomMenuExpandBtn
 0050509A    mov         dword ptr [ebp-8],eax
 0050509D    mov         eax,dword ptr [ebp-8]
 005050A0    pop         ecx
 005050A1    pop         ecx
 005050A2    pop         ebp
 005050A3    ret
end;*}

//005050A4
{*function sub_005050A4(?:?; ?:?):?;
begin
 005050A4    push        ebp
 005050A5    mov         ebp,esp
 005050A7    add         esp,0FFFFFFF0
 005050AA    mov         dword ptr [ebp-0C],ecx
 005050AD    mov         dword ptr [ebp-8],edx
 005050B0    mov         dword ptr [ebp-4],eax
 005050B3    mov         ecx,dword ptr [ebp-0C]
 005050B6    mov         edx,dword ptr [ebp-8]
 005050B9    mov         eax,dword ptr [ebp-4]
 005050BC    call        004D478C
 005050C1    mov         byte ptr [ebp-0D],al
 005050C4    mov         dl,1
 005050C6    mov         eax,dword ptr [ebp-4]
 005050C9    mov         ecx,dword ptr [eax]
 005050CB    call        dword ptr [ecx+0F8];TCustomActionPopupMenu.sub_00511578
 005050D1    mov         edx,dword ptr [ebp-8]
 005050D4    add         dword ptr [edx],eax
 005050D6    mov         al,byte ptr [ebp-0D]
 005050D9    mov         esp,ebp
 005050DB    pop         ebp
 005050DC    ret
end;*}

//005050E0
procedure sub_005050E0;
begin
{*
 005050E0    push        ebp
 005050E1    mov         ebp,esp
 005050E3    push        ecx
 005050E4    mov         dword ptr [ebp-4],eax
 005050E7    mov         eax,dword ptr [ebp-4]
 005050EA    cmp         byte ptr [eax+314],0;TCustomActionPopupMenu.FShadow:Boolean
>005050F1    je          00505170
 005050F3    mov         eax,dword ptr [ebp-4]
 005050F6    mov         edx,dword ptr [eax]
 005050F8    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_0050226C
 005050FE    test        al,al
>00505100    jne         00505170
 00505102    mov         eax,dword ptr [ebp-4]
 00505105    cmp         dword ptr [eax+310],0;TCustomActionPopupMenu.FRShadow:TShadowWindow
>0050510C    jne         00505142
 0050510E    push        0
 00505110    mov         ecx,dword ptr [ebp-4]
 00505113    mov         dl,1
 00505115    mov         eax,[004F9738];TShadowWindow
 0050511A    call        TShadowWindow.Create;TShadowWindow.Create
 0050511F    mov         edx,dword ptr [ebp-4]
 00505122    mov         dword ptr [edx+310],eax;TCustomActionPopupMenu.FRShadow:TShadowWindow
 00505128    push        1
 0050512A    mov         ecx,dword ptr [ebp-4]
 0050512D    mov         dl,1
 0050512F    mov         eax,[004F9738];TShadowWindow
 00505134    call        TShadowWindow.Create;TShadowWindow.Create
 00505139    mov         edx,dword ptr [ebp-4]
 0050513C    mov         dword ptr [edx+308],eax;TCustomActionPopupMenu.FBShadow:TShadowWindow
 00505142    mov         eax,dword ptr [ebp-4]
 00505145    cmp         dword ptr [eax+310],0;TCustomActionPopupMenu.FRShadow:TShadowWindow
>0050514C    je          00505170
 0050514E    mov         edx,dword ptr [ebp-4]
 00505151    mov         eax,dword ptr [ebp-4]
 00505154    mov         eax,dword ptr [eax+310];TCustomActionPopupMenu.FRShadow:TShadowWindow
 0050515A    call        004F9AD4
 0050515F    mov         edx,dword ptr [ebp-4]
 00505162    mov         eax,dword ptr [ebp-4]
 00505165    mov         eax,dword ptr [eax+308];TCustomActionPopupMenu.FBShadow:TShadowWindow
 0050516B    call        004F9AD4
 00505170    pop         ecx
 00505171    pop         ebp
 00505172    ret
*}
end;

//00505174
procedure sub_00505174;
begin
{*
 00505174    push        ebp
 00505175    mov         ebp,esp
 00505177    push        ecx
 00505178    mov         dword ptr [ebp-4],eax
 0050517B    mov         eax,dword ptr [ebp-4]
 0050517E    cmp         dword ptr [eax+310],0;TCustomActionPopupMenu.FRShadow:TShadowWindow
>00505185    je          005051A3
 00505187    mov         eax,dword ptr [ebp-4]
 0050518A    mov         eax,dword ptr [eax+310];TCustomActionPopupMenu.FRShadow:TShadowWindow
 00505190    call        004CB768
 00505195    mov         eax,dword ptr [ebp-4]
 00505198    mov         eax,dword ptr [eax+308];TCustomActionPopupMenu.FBShadow:TShadowWindow
 0050519E    call        004CB768
 005051A3    pop         ecx
 005051A4    pop         ebp
 005051A5    ret
*}
end;

//005051A8
{*procedure sub_005051A8(?:?);
begin
 005051A8    push        ebp
 005051A9    mov         ebp,esp
 005051AB    add         esp,0FFFFFFF8
 005051AE    mov         dword ptr [ebp-8],edx
 005051B1    mov         dword ptr [ebp-4],eax
 005051B4    mov         edx,dword ptr [ebp-8]
 005051B7    mov         eax,dword ptr [ebp-4]
 005051BA    call        TActionToolBar.SetColorMap
 005051BF    mov         eax,dword ptr [ebp-4]
 005051C2    call        TActionToolBar.GetColorMap
 005051C7    test        eax,eax
>005051C9    je          005051DE
 005051CB    mov         eax,dword ptr [ebp-4]
 005051CE    call        TActionToolBar.GetColorMap
 005051D3    mov         edx,dword ptr [eax+74]
 005051D6    mov         eax,dword ptr [ebp-4]
 005051D9    call        TPanel.SetColor
 005051DE    pop         ecx
 005051DF    pop         ecx
 005051E0    pop         ebp
 005051E1    ret
end;*}

//005051E4
procedure TCustomActionPopupMenu.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005051E4    push        ebp
 005051E5    mov         ebp,esp
 005051E7    add         esp,0FFFFFFF0
 005051EA    mov         byte ptr [ebp-9],cl
 005051ED    mov         dword ptr [ebp-8],edx
 005051F0    mov         dword ptr [ebp-4],eax
 005051F3    mov         cl,byte ptr [ebp-9]
 005051F6    mov         edx,dword ptr [ebp-8]
 005051F9    mov         eax,dword ptr [ebp-4]
 005051FC    call        TCustomActionMenuBar.Notification
 00505201    mov         eax,dword ptr [ebp-4]
 00505204    test        byte ptr [eax+1C],8;TCustomActionPopupMenu.FComponentState:TComponentState
>00505208    jne         0050523D
 0050520A    cmp         byte ptr [ebp-9],1
>0050520E    jne         0050523D
 00505210    mov         eax,dword ptr [ebp-8]
 00505213    mov         edx,dword ptr ds:[4C5774];TControl
 00505219    call        @IsClass
 0050521E    test        al,al
>00505220    je          0050523D
 00505222    mov         eax,dword ptr [ebp-8]
 00505225    mov         edx,dword ptr ds:[4C5774];TControl
 0050522B    call        @AsClass
 00505230    mov         dword ptr [ebp-10],eax
 00505233    xor         edx,edx
 00505235    mov         eax,dword ptr [ebp-10]
 00505238    call        TControl.SetVisible
 0050523D    mov         esp,ebp
 0050523F    pop         ebp
 00505240    ret
*}
end;

//00505244
{*procedure sub_00505244(?:TCustomActionPopupMenu; ?:?);
begin
 00505244    push        ebp
 00505245    mov         ebp,esp
 00505247    add         esp,0FFFFFFF8
 0050524A    mov         byte ptr [ebp-5],dl
 0050524D    mov         dword ptr [ebp-4],eax
 00505250    mov         eax,dword ptr [ebp-4]
 00505253    mov         al,byte ptr [eax+314];TCustomActionPopupMenu.FShadow:Boolean
 00505259    cmp         al,byte ptr [ebp-5]
>0050525C    je          00505272
 0050525E    mov         al,byte ptr [ebp-5]
 00505261    mov         edx,dword ptr [ebp-4]
 00505264    mov         byte ptr [edx+314],al;TCustomActionPopupMenu.FShadow:Boolean
 0050526A    mov         eax,dword ptr [ebp-4]
 0050526D    call        TWinControl.RecreateWnd
 00505272    pop         ecx
 00505273    pop         ecx
 00505274    pop         ebp
 00505275    ret
end;*}

//00505278
procedure sub_00505278;
begin
{*
 00505278    push        ebp
 00505279    mov         ebp,esp
 0050527B    add         esp,0FFFFFFEC
 0050527E    mov         dword ptr [ebp-4],eax
 00505281    mov         eax,dword ptr [ebp-4]
 00505284    call        00510888
 00505289    mov         eax,dword ptr [ebp-4]
 0050528C    call        TActionToolBar.GetColorMap
 00505291    mov         edx,dword ptr [eax+74]
 00505294    mov         eax,dword ptr [ebp-4]
 00505297    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 0050529D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 005052A0    call        TBrush.SetColor
 005052A5    lea         edx,[ebp-14]
 005052A8    mov         eax,dword ptr [ebp-4]
 005052AB    mov         ecx,dword ptr [eax]
 005052AD    call        dword ptr [ecx+44];TCustomActionPopupMenu.sub_0050505C
 005052B0    lea         edx,[ebp-14]
 005052B3    mov         eax,dword ptr [ebp-4]
 005052B6    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 005052BC    call        TCanvas.FillRect
 005052C1    mov         esp,ebp
 005052C3    pop         ebp
 005052C4    ret
*}
end;

//005052C8
procedure sub_005052C8;
begin
{*
 005052C8    push        ebp
 005052C9    mov         ebp,esp
 005052CB    add         esp,0FFFFFFE4
 005052CE    push        esi
 005052CF    push        edi
 005052D0    mov         dword ptr [ebp-4],eax
 005052D3    mov         eax,dword ptr [ebp-4]
 005052D6    call        00507658
 005052DB    mov         eax,dword ptr [ebp-4]
 005052DE    mov         edx,dword ptr [eax+48];TCustomAddRemoveItem.Width:Integer
 005052E1    add         edx,12
 005052E4    mov         eax,dword ptr [ebp-4]
 005052E7    call        TControl.SetWidth
 005052EC    lea         ecx,[ebp-1C]
 005052EF    mov         eax,dword ptr [ebp-4]
 005052F2    mov         eax,dword ptr [eax+172];TCustomAddRemoveItem.FGlyphPos:TPoint
 005052F8    add         eax,12
 005052FB    mov         edx,dword ptr [ebp-4]
 005052FE    mov         edx,dword ptr [edx+176]
 00505304    call        Point
 00505309    mov         eax,dword ptr [ebp-4]
 0050530C    mov         edx,dword ptr [ebp-1C]
 0050530F    mov         dword ptr [eax+172],edx;TCustomAddRemoveItem.FGlyphPos:TPoint
 00505315    mov         edx,dword ptr [ebp-18]
 00505318    mov         dword ptr [eax+176],edx
 0050531E    mov         eax,dword ptr [ebp-4]
 00505321    lea         esi,[eax+190];TCustomAddRemoveItem.FTextBounds:TRect
 00505327    lea         edi,[ebp-14]
 0050532A    movs        dword ptr [edi],dword ptr [esi]
 0050532B    movs        dword ptr [edi],dword ptr [esi]
 0050532C    movs        dword ptr [edi],dword ptr [esi]
 0050532D    movs        dword ptr [edi],dword ptr [esi]
 0050532E    push        0
 00505330    push        12
 00505332    lea         eax,[ebp-14]
 00505335    push        eax
 00505336    call        user32.OffsetRect
 0050533B    mov         eax,dword ptr [ebp-4]
 0050533E    lea         esi,[ebp-14]
 00505341    lea         edi,[eax+190];TCustomAddRemoveItem.FTextBounds:TRect
 00505347    movs        dword ptr [edi],dword ptr [esi]
 00505348    movs        dword ptr [edi],dword ptr [esi]
 00505349    movs        dword ptr [edi],dword ptr [esi]
 0050534A    movs        dword ptr [edi],dword ptr [esi]
 0050534B    pop         edi
 0050534C    pop         esi
 0050534D    mov         esp,ebp
 0050534F    pop         ebp
 00505350    ret
*}
end;

//00505354
{*procedure TCustomAddRemoveItem.sub_004CD1B0(?:?; ?:?; ?:?; ?:?);
begin
 00505354    push        ebp
 00505355    mov         ebp,esp
 00505357    add         esp,0FFFFFFF8
 0050535A    mov         byte ptr [ebp-6],cl
 0050535D    mov         byte ptr [ebp-5],dl
 00505360    mov         dword ptr [ebp-4],eax
 00505363    mov         eax,dword ptr [ebp+0C]
 00505366    push        eax
 00505367    mov         eax,dword ptr [ebp+8]
 0050536A    push        eax
 0050536B    mov         cl,byte ptr [ebp-6]
 0050536E    mov         dl,byte ptr [ebp-5]
 00505371    mov         eax,dword ptr [ebp-4]
 00505374    call        TCustomMenuItem.sub_004CD1B0
 00505379    mov         eax,dword ptr [ebp-4]
 0050537C    mov         edx,dword ptr [eax]
 0050537E    call        dword ptr [edx+7C];TCustomAddRemoveItem.sub_004CB6E8
 00505381    pop         ecx
 00505382    pop         ecx
 00505383    pop         ebp
 00505384    ret         8
end;*}

//00505388
{*procedure sub_00505388(?:?);
begin
 00505388    push        ebp
 00505389    mov         ebp,esp
 0050538B    add         esp,0FFFFFFF8
 0050538E    mov         byte ptr [ebp-5],dl
 00505391    mov         dword ptr [ebp-4],eax
 00505394    mov         dl,1
 00505396    mov         eax,dword ptr [ebp-4]
 00505399    call        TImage.SetEnabled
 0050539E    pop         ecx
 0050539F    pop         ecx
 005053A0    pop         ebp
 005053A1    ret
end;*}

//005053A4
constructor TCustomizeActionToolBar.Create(AOwner:TComponent);
begin
{*
 005053A4    push        ebp
 005053A5    mov         ebp,esp
 005053A7    add         esp,0FFFFFFF4
 005053AA    test        dl,dl
>005053AC    je          005053B6
 005053AE    add         esp,0FFFFFFF0
 005053B1    call        @ClassCreate
 005053B6    mov         dword ptr [ebp-0C],ecx
 005053B9    mov         byte ptr [ebp-5],dl
 005053BC    mov         dword ptr [ebp-4],eax
 005053BF    mov         ecx,dword ptr [ebp-0C]
 005053C2    xor         edx,edx
 005053C4    mov         eax,dword ptr [ebp-4]
 005053C7    call        TCustomActionPopupMenu.Create
 005053CC    mov         eax,dword ptr [ebp-0C]
 005053CF    mov         edx,dword ptr ds:[4FB284];TCustomActionToolBar
 005053D5    call        @IsClass
 005053DA    test        al,al
>005053DC    je          005053EA
 005053DE    mov         eax,dword ptr [ebp-4]
 005053E1    mov         edx,dword ptr [ebp-0C]
 005053E4    mov         dword ptr [eax+318],edx;TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 005053EA    mov         eax,dword ptr [ebp-4]
 005053ED    cmp         byte ptr [ebp-5],0
>005053F1    je          00505402
 005053F3    call        @AfterConstruction
 005053F8    pop         dword ptr fs:[0]
 005053FF    add         esp,0C
 00505402    mov         eax,dword ptr [ebp-4]
 00505405    mov         esp,ebp
 00505407    pop         ebp
 00505408    ret
*}
end;

//0050540C
destructor TCustomizeActionToolBar.Destroy;
begin
{*
 0050540C    push        ebp
 0050540D    mov         ebp,esp
 0050540F    add         esp,0FFFFFFF8
 00505412    call        @BeforeDestruction
 00505417    mov         byte ptr [ebp-5],dl
 0050541A    mov         dword ptr [ebp-4],eax
 0050541D    mov         eax,dword ptr [ebp-4]
 00505420    mov         eax,dword ptr [eax+320];TCustomizeActionToolBar.FResetAction:TCustomAction
 00505426    call        TObject.Free
 0050542B    mov         dl,byte ptr [ebp-5]
 0050542E    and         dl,0FC
 00505431    mov         eax,dword ptr [ebp-4]
 00505434    call        TCustomActionPopupMenu.Destroy
 00505439    cmp         byte ptr [ebp-5],0
>0050543D    jle         00505447
 0050543F    mov         eax,dword ptr [ebp-4]
 00505442    call        @ClassDestroy
 00505447    pop         ecx
 00505448    pop         ecx
 00505449    pop         ebp
 0050544A    ret
*}
end;

//0050544C
{*function sub_0050544C(?:?; ?:?):?;
begin
 0050544C    push        ebp
 0050544D    mov         ebp,esp
 0050544F    add         esp,0FFFFFFF0
 00505452    mov         dword ptr [ebp-0C],ecx
 00505455    mov         dword ptr [ebp-8],edx
 00505458    mov         dword ptr [ebp-4],eax
 0050545B    mov         ecx,dword ptr [ebp-0C]
 0050545E    mov         edx,dword ptr [ebp-8]
 00505461    mov         eax,dword ptr [ebp-4]
 00505464    call        005050A4
 00505469    mov         byte ptr [ebp-0D],al
 0050546C    mov         eax,dword ptr [ebp-4]
 0050546F    cmp         dword ptr [eax+2B0],0;TCustomizeActionToolBar.FPopupStack:TMenuStack
>00505476    je          0050548E
 00505478    mov         eax,dword ptr [ebp-4]
 0050547B    mov         eax,dword ptr [eax+2B0];TCustomizeActionToolBar.FPopupStack:TMenuStack
 00505481    call        TOrderedList.Count
 00505486    test        eax,eax
>00505488    jle         0050548E
 0050548A    mov         byte ptr [ebp-0D],0
 0050548E    mov         al,byte ptr [ebp-0D]
 00505491    mov         esp,ebp
 00505493    pop         ebp
 00505494    ret
end;*}

//00505498
procedure sub_00505498;
begin
{*
 00505498    push        ebp
 00505499    mov         ebp,esp
 0050549B    push        ecx
 0050549C    mov         dword ptr [ebp-4],eax
 0050549F    pop         ecx
 005054A0    pop         ebp
 005054A1    ret
*}
end;

//005054A4
{*procedure TCustomizeActionToolBar.sub_005054A4(?:?);
begin
 005054A4    push        ebp
 005054A5    mov         ebp,esp
 005054A7    add         esp,0FFFFFFF8
 005054AA    mov         dword ptr [ebp-8],edx
 005054AD    mov         dword ptr [ebp-4],eax
 005054B0    mov         eax,dword ptr [ebp-4]
 005054B3    mov         edx,dword ptr [eax]
 005054B5    call        dword ptr [edx+17C];TCustomizeActionToolBar.sub_00505004
 005054BB    pop         ecx
 005054BC    pop         ecx
 005054BD    pop         ebp
 005054BE    ret
end;*}

//005054C0
{*function sub_005054C0(?:?):?;
begin
 005054C0    push        ebp
 005054C1    mov         ebp,esp
 005054C3    add         esp,0FFFFFFF4
 005054C6    mov         dword ptr [ebp-8],edx
 005054C9    mov         dword ptr [ebp-4],eax
 005054CC    cmp         dword ptr [ebp-8],0
>005054D0    jl          00505500
 005054D2    mov         eax,dword ptr [ebp-4]
 005054D5    mov         edx,dword ptr [eax]
 005054D7    call        dword ptr [edx+114];TCustomizeActionToolBar.sub_0050550C
 005054DD    cmp         eax,dword ptr [ebp-8]
>005054E0    jle         00505500
 005054E2    mov         eax,dword ptr [ebp-4]
 005054E5    mov         eax,dword ptr [eax+210];TCustomizeActionToolBar.FActionClient:TActionClient
 005054EB    call        TActionClient.GetItems
 005054F0    mov         edx,dword ptr [ebp-8]
 005054F3    call        0050D884
 005054F8    mov         eax,dword ptr [eax+40]
 005054FB    mov         dword ptr [ebp-0C],eax
>005054FE    jmp         00505505
 00505500    xor         eax,eax
 00505502    mov         dword ptr [ebp-0C],eax
 00505505    mov         eax,dword ptr [ebp-0C]
 00505508    mov         esp,ebp
 0050550A    pop         ebp
 0050550B    ret
end;*}

//0050550C
{*function sub_0050550C:?;
begin
 0050550C    push        ebp
 0050550D    mov         ebp,esp
 0050550F    add         esp,0FFFFFFF8
 00505512    mov         dword ptr [ebp-4],eax
 00505515    mov         eax,dword ptr [ebp-4]
 00505518    cmp         dword ptr [eax+210],0;TCustomizeActionToolBar.FActionClient:TActionClient
>0050551F    je          00505539
 00505521    mov         eax,dword ptr [ebp-4]
 00505524    mov         eax,dword ptr [eax+210];TCustomizeActionToolBar.FActionClient:TActionClient
 0050552A    call        TActionClient.GetItems
 0050552F    call        00479B60
 00505534    mov         dword ptr [ebp-8],eax
>00505537    jmp         0050553E
 00505539    xor         eax,eax
 0050553B    mov         dword ptr [ebp-8],eax
 0050553E    mov         eax,dword ptr [ebp-8]
 00505541    pop         ecx
 00505542    pop         ecx
 00505543    pop         ebp
 00505544    ret
end;*}

//00505548
{*function sub_00505548(?:?; ?:?):?;
begin
 00505548    push        ebp
 00505549    mov         ebp,esp
 0050554B    add         esp,0FFFFFFEC
 0050554E    push        ebx
 0050554F    mov         dword ptr [ebp-4],eax
 00505552    xor         eax,eax
 00505554    mov         dword ptr [ebp-8],eax
 00505557    mov         eax,dword ptr [ebp+8]
 0050555A    mov         eax,dword ptr [eax-4]
 0050555D    mov         eax,dword ptr [eax+2C4]
 00505563    mov         eax,dword ptr [eax+2AC]
 00505569    call        0051541C
 0050556E    mov         eax,dword ptr [eax+210]
 00505574    call        TActionClient.GetItems
 00505579    mov         dword ptr [ebp-10],eax
 0050557C    mov         eax,dword ptr [ebp-10]
 0050557F    call        00479B60
 00505584    dec         eax
 00505585    test        eax,eax
>00505587    jl          005055CA
 00505589    inc         eax
 0050558A    mov         dword ptr [ebp-14],eax
 0050558D    mov         dword ptr [ebp-0C],0
 00505594    mov         edx,dword ptr [ebp-0C]
 00505597    mov         eax,dword ptr [ebp-10]
 0050559A    call        0050D884
 0050559F    call        TActionClientItem.GetAction
 005055A4    mov         ebx,eax
 005055A6    mov         eax,dword ptr [ebp-4]
 005055A9    call        TActionClientItem.GetAction
 005055AE    cmp         ebx,eax
>005055B0    jne         005055C2
 005055B2    mov         edx,dword ptr [ebp-0C]
 005055B5    mov         eax,dword ptr [ebp-10]
 005055B8    call        0050D884
 005055BD    mov         dword ptr [ebp-8],eax
>005055C0    jmp         005055CA
 005055C2    inc         dword ptr [ebp-0C]
 005055C5    dec         dword ptr [ebp-14]
>005055C8    jne         00505594
 005055CA    mov         eax,dword ptr [ebp-8]
 005055CD    pop         ebx
 005055CE    mov         esp,ebp
 005055D0    pop         ebp
 005055D1    ret
end;*}

//005055D4
{*function sub_005055D4(?:?):?;
begin
 005055D4    push        ebp
 005055D5    mov         ebp,esp
 005055D7    add         esp,0FFFFFFEC
 005055DA    push        ebx
 005055DB    mov         dword ptr [ebp-8],edx
 005055DE    mov         dword ptr [ebp-4],eax
 005055E1    mov         eax,dword ptr [ebp-8]
 005055E4    mov         edx,dword ptr [eax]
 005055E6    call        dword ptr [edx+0C8]
 005055EC    test        al,al
>005055EE    jne         005056EE
 005055F4    mov         eax,dword ptr [ebp-4]
 005055F7    mov         edx,dword ptr [eax]
 005055F9    call        dword ptr [edx+198];TCustomizeActionToolBar.sub_00505B78
 005055FF    mov         edx,eax
 00505601    mov         eax,dword ptr [ebp-8]
 00505604    call        @IsClass
 00505609    test        al,al
>0050560B    je          005056EE
 00505611    push        ebp
 00505612    mov         eax,dword ptr [ebp-8]
 00505615    mov         eax,dword ptr [eax+16C]
 0050561B    call        00505548
 00505620    pop         ecx
 00505621    mov         dword ptr [ebp-10],eax
 00505624    cmp         dword ptr [ebp-10],0
>00505628    je          00505653
 0050562A    mov         eax,dword ptr [ebp-10]
 0050562D    mov         dl,byte ptr [eax+30]
 00505630    xor         dl,1
 00505633    mov         eax,dword ptr [ebp-10]
 00505636    mov         ecx,dword ptr [eax]
 00505638    call        dword ptr [ecx+2C]
 0050563B    mov         eax,dword ptr [ebp-10]
 0050563E    cmp         byte ptr [eax+30],0
>00505642    jne         005056A2
 00505644    mov         eax,dword ptr [ebp-10]
 00505647    mov         eax,dword ptr [eax+40]
 0050564A    xor         edx,edx
 0050564C    call        TControl.SetVisible
>00505651    jmp         005056A2
 00505653    mov         eax,dword ptr [ebp-8]
 00505656    mov         eax,dword ptr [eax+16C]
 0050565C    call        TCollectionItem.GetIndex
 00505661    push        eax
 00505662    mov         eax,dword ptr [ebp-4]
 00505665    mov         eax,dword ptr [eax+2C4];TCustomizeActionToolBar.FRootMenu:TCustomActionMenuBar
 0050566B    mov         eax,dword ptr [eax+2AC];TCustomActionMenuBar.FParentControl:TCustomActionControl
 00505671    call        0051541C
 00505676    mov         eax,dword ptr [eax+210]
 0050567C    call        TActionClient.GetItems
 00505681    pop         edx
 00505682    call        00479DAC
 00505687    mov         dword ptr [ebp-10],eax
 0050568A    mov         eax,dword ptr [ebp-8]
 0050568D    mov         eax,dword ptr [eax+16C]
 00505693    call        TActionClientItem.GetAction
 00505698    mov         edx,eax
 0050569A    mov         eax,dword ptr [ebp-10]
 0050569D    call        TActionClientItem.SetAction
 005056A2    mov         eax,dword ptr [ebp-4]
 005056A5    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 005056AB    call        004CF09C
 005056B0    mov         eax,dword ptr [ebp-4]
 005056B3    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 005056B9    mov         dword ptr [ebp-14],eax
 005056BC    mov         eax,dword ptr [ebp-14]
 005056BF    mov         eax,dword ptr [eax+48];TCustomActionToolBar.Width:Integer
 005056C2    push        eax
 005056C3    mov         eax,dword ptr [ebp-14]
 005056C6    mov         eax,dword ptr [eax+4C];TCustomActionToolBar.Height:Integer
 005056C9    push        eax
 005056CA    mov         eax,dword ptr [ebp-4]
 005056CD    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 005056D3    mov         edx,dword ptr [ebp-14]
 005056D6    mov         ecx,dword ptr [edx+44];TCustomActionToolBar.Top:Integer
 005056D9    mov         edx,dword ptr [ebp-14]
 005056DC    mov         edx,dword ptr [edx+40];TCustomActionToolBar.Left:Integer
 005056DF    mov         ebx,dword ptr [eax]
 005056E1    call        dword ptr [ebx+84];TCustomActionToolBar.SetBounds
 005056E7    xor         eax,eax
 005056E9    mov         dword ptr [ebp-0C],eax
>005056EC    jmp         00505746
 005056EE    mov         eax,dword ptr [ebp-4]
 005056F1    mov         eax,dword ptr [eax+324];TCustomizeActionToolBar.FResetItem:TActionClientItem
 005056F7    mov         edx,dword ptr [ebp-8]
 005056FA    cmp         eax,dword ptr [edx+16C]
>00505700    jne         00505738
 00505702    mov         eax,dword ptr [ebp-4]
 00505705    mov         edx,dword ptr [eax]
 00505707    call        dword ptr [edx+17C];TCustomizeActionToolBar.sub_00505004
 0050570D    mov         eax,dword ptr [ebp-8]
 00505710    mov         eax,dword ptr [eax+16C]
 00505716    mov         dword ptr [ebp-0C],eax
 00505719    push        0
 0050571B    push        0
 0050571D    push        0B409
 00505722    mov         eax,dword ptr [ebp-4]
 00505725    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 0050572B    call        TWinControl.GetHandle
 00505730    push        eax
 00505731    call        user32.PostMessageA
>00505736    jmp         00505746
 00505738    mov         edx,dword ptr [ebp-8]
 0050573B    mov         eax,dword ptr [ebp-4]
 0050573E    call        00501B90
 00505743    mov         dword ptr [ebp-0C],eax
 00505746    mov         eax,dword ptr [ebp-0C]
 00505749    pop         ebx
 0050574A    mov         esp,ebp
 0050574C    pop         ebp
 0050574D    ret
end;*}

//00505750
{*procedure sub_00505750(?:?; ?:?; ?:?);
begin
 00505750    push        ebp
 00505751    mov         ebp,esp
 00505753    add         esp,0FFFFFFF0
 00505756    mov         dword ptr [ebp-8],ecx
 00505759    mov         dword ptr [ebp-10],edx
 0050575C    mov         dword ptr [ebp-4],eax
 0050575F    mov         eax,dword ptr [ebp-8]
 00505762    mov         edx,dword ptr ds:[509710];TActionClientItem
 00505768    call        @IsClass
 0050576D    test        al,al
>0050576F    je          005057C7
 00505771    mov         eax,dword ptr [ebp-8]
 00505774    mov         edx,dword ptr ds:[509710];TActionClientItem
 0050577A    call        @AsClass
 0050577F    mov         dword ptr [ebp-0C],eax
 00505782    mov         eax,dword ptr [ebp-0C]
 00505785    call        0050CBCC
 0050578A    mov         edx,dword ptr [ebp-4]
 0050578D    cmp         eax,dword ptr [edx+31C];TCustomizeActionToolBar.FAddlItem:TActionClientItem
>00505793    jne         005057A7
 00505795    mov         eax,dword ptr [ebp-4]
 00505798    mov         edx,dword ptr [eax]
 0050579A    call        dword ptr [edx+198];TCustomizeActionToolBar.sub_00505B78
 005057A0    mov         edx,dword ptr [ebp+8]
 005057A3    mov         dword ptr [edx],eax
>005057A5    jmp         005057C7
 005057A7    mov         eax,dword ptr [ebp-8]
 005057AA    mov         edx,dword ptr ds:[509710];TActionClientItem
 005057B0    call        @AsClass
 005057B5    mov         edx,eax
 005057B7    mov         eax,dword ptr [ebp-4]
 005057BA    mov         ecx,dword ptr [eax]
 005057BC    call        dword ptr [ecx+110];TCustomizeActionToolBar.sub_00511638
 005057C2    mov         edx,dword ptr [ebp+8]
 005057C5    mov         dword ptr [edx],eax
 005057C7    mov         esp,ebp
 005057C9    pop         ebp
 005057CA    ret         4
end;*}

//005057D0
{*function sub_005057D0:?;
begin
 005057D0    push        ebp
 005057D1    mov         ebp,esp
 005057D3    add         esp,0FFFFFFF8
 005057D6    mov         dword ptr [ebp-4],eax
 005057D9    mov         eax,dword ptr [ebp-4]
 005057DC    call        00502608
 005057E1    mov         dword ptr [ebp-8],eax
 005057E4    mov         eax,dword ptr [ebp-8]
 005057E7    mov         edx,dword ptr [ebp-4]
 005057EA    mov         dword ptr [eax+23C],edx
 005057F0    mov         edx,dword ptr [edx]
 005057F2    mov         edx,dword ptr [edx+19C];TCustomizeActionToolBar.FWinControls:TList
 005057F8    mov         dword ptr [eax+238],edx
 005057FE    mov         eax,dword ptr [ebp-4]
 00505801    mov         dl,byte ptr [eax+314];TCustomizeActionToolBar.FShadow:Boolean
 00505807    mov         eax,dword ptr [ebp-8]
 0050580A    call        00505244
 0050580F    mov         eax,dword ptr [ebp-8]
 00505812    pop         ecx
 00505813    pop         ecx
 00505814    pop         ebp
 00505815    ret
end;*}

//00505818
{*procedure sub_00505818(?:?);
begin
 00505818    push        ebp
 00505819    mov         ebp,esp
 0050581B    add         esp,0FFFFFFF8
 0050581E    mov         dword ptr [ebp-4],eax
 00505821    mov         eax,dword ptr [ebp-4]
 00505824    call        0050D750
 00505829    mov         dword ptr [ebp-8],eax
 0050582C    mov         edx,505850;'-'
 00505831    mov         eax,dword ptr [ebp-8]
 00505834    call        TActionClientItem.SetCaption
 00505839    or          edx,0FFFFFFFF
 0050583C    mov         eax,dword ptr [ebp-8]
 0050583F    call        TActionClientItem.SetUsageCount
 00505844    pop         ecx
 00505845    pop         ecx
 00505846    pop         ebp
 00505847    ret
end;*}

//00505854
{*procedure sub_00505854(?:?; ?:?; ?:?);
begin
 00505854    push        ebp
 00505855    mov         ebp,esp
 00505857    add         esp,0FFFFFFDC
 0050585A    push        ebx
 0050585B    mov         dword ptr [ebp-0C],ecx
 0050585E    mov         dword ptr [ebp-8],edx
 00505861    mov         dword ptr [ebp-4],eax
 00505864    mov         eax,dword ptr [ebp-0C]
 00505867    test        eax,eax
>00505869    jl          00505911
 0050586F    inc         eax
 00505870    mov         dword ptr [ebp-20],eax
 00505873    mov         dword ptr [ebp-10],0
 0050587A    mov         byte ptr [ebp-15],0
 0050587E    mov         eax,dword ptr [ebp-4]
 00505881    call        00479B60
 00505886    dec         eax
 00505887    test        eax,eax
>00505889    jl          005058CA
 0050588B    inc         eax
 0050588C    mov         dword ptr [ebp-24],eax
 0050588F    mov         dword ptr [ebp-14],0
 00505896    mov         edx,dword ptr [ebp-14]
 00505899    mov         eax,dword ptr [ebp-4]
 0050589C    call        0050D884
 005058A1    call        TActionClientItem.GetAction
 005058A6    mov         ebx,eax
 005058A8    mov         edx,dword ptr [ebp-10]
 005058AB    mov         eax,dword ptr [ebp-8]
 005058AE    call        0050D884
 005058B3    call        TActionClientItem.GetAction
 005058B8    cmp         ebx,eax
>005058BA    jne         005058C2
 005058BC    mov         byte ptr [ebp-15],1
>005058C0    jmp         005058CA
 005058C2    inc         dword ptr [ebp-14]
 005058C5    dec         dword ptr [ebp-24]
>005058C8    jne         00505896
 005058CA    cmp         byte ptr [ebp-15],0
>005058CE    jne         00505905
 005058D0    mov         eax,dword ptr [ebp-4]
 005058D3    call        0050D750
 005058D8    mov         dword ptr [ebp-1C],eax
 005058DB    mov         edx,dword ptr [ebp-10]
 005058DE    mov         eax,dword ptr [ebp-8]
 005058E1    call        0050D884
 005058E6    mov         edx,eax
 005058E8    mov         eax,dword ptr [ebp-1C]
 005058EB    mov         ecx,dword ptr [eax]
 005058ED    call        dword ptr [ecx+8]
 005058F0    xor         edx,edx
 005058F2    mov         eax,dword ptr [ebp-1C]
 005058F5    call        TActionClient.SetItems
 005058FA    or          edx,0FFFFFFFF
 005058FD    mov         eax,dword ptr [ebp-1C]
 00505900    call        TActionClientItem.SetUsageCount
 00505905    inc         dword ptr [ebp-10]
 00505908    dec         dword ptr [ebp-20]
>0050590B    jne         0050587A
 00505911    pop         ebx
 00505912    mov         esp,ebp
 00505914    pop         ebp
 00505915    ret
end;*}

//00505918
{*procedure sub_00505918(?:?);
begin
 00505918    push        ebp
 00505919    mov         ebp,esp
 0050591B    add         esp,0FFFFFFDC
 0050591E    xor         ecx,ecx
 00505920    mov         dword ptr [ebp-24],ecx
 00505923    mov         dword ptr [ebp-20],ecx
 00505926    mov         dword ptr [ebp-8],edx
 00505929    mov         dword ptr [ebp-4],eax
 0050592C    xor         eax,eax
 0050592E    push        ebp
 0050592F    push        505B6C
 00505934    push        dword ptr fs:[eax]
 00505937    mov         dword ptr fs:[eax],esp
 0050593A    cmp         dword ptr [ebp-8],0
>0050593E    je          00505B34
 00505944    mov         eax,dword ptr [ebp-4]
 00505947    cmp         dword ptr [eax+318],0;TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
>0050594E    je          00505B34
 00505954    xor         eax,eax
 00505956    mov         dword ptr [ebp-0C],eax
 00505959    mov         eax,dword ptr [ebp-4]
 0050595C    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 00505962    mov         eax,dword ptr [eax+214];TCustomActionToolBar.FActionManager:TCustomActionManager
 00505968    cmp         dword ptr [eax+88],0;TCustomActionManager.FDefaultActionBars:TActionBars
>0050596F    je          005059A4
 00505971    mov         eax,dword ptr [ebp-4]
 00505974    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 0050597A    mov         dword ptr [ebp-10],eax
 0050597D    mov         eax,dword ptr [ebp-10]
 00505980    mov         eax,dword ptr [eax+210];TCustomActionToolBar.FActionClient:TActionClient
 00505986    call        TCollectionItem.GetIndex
 0050598B    mov         edx,eax
 0050598D    mov         eax,dword ptr [ebp-10]
 00505990    mov         eax,dword ptr [eax+214];TCustomActionToolBar.FActionManager:TCustomActionManager
 00505996    mov         eax,dword ptr [eax+88];TCustomActionManager.FDefaultActionBars:TActionBars
 0050599C    call        00479AAC
 005059A1    mov         dword ptr [ebp-0C],eax
 005059A4    cmp         dword ptr [ebp-0C],0
>005059A8    je          00505B34
 005059AE    mov         eax,dword ptr [ebp-8]
 005059B1    call        TActionClient.GetItems
 005059B6    call        00479B60
 005059BB    test        eax,eax
>005059BD    jle         005059CE
 005059BF    push        ebp
 005059C0    mov         eax,dword ptr [ebp-8]
 005059C3    call        TActionClient.GetItems
 005059C8    call        00505818
 005059CD    pop         ecx
 005059CE    mov         eax,dword ptr [ebp-8]
 005059D1    call        TActionClient.GetItems
 005059D6    call        0050D750
 005059DB    mov         edx,dword ptr [ebp-4]
 005059DE    mov         dword ptr [edx+31C],eax;TCustomizeActionToolBar.FAddlItem:TActionClientItem
 005059E4    lea         edx,[ebp-20]
 005059E7    mov         eax,[0055B4E0];^SAddRemoveButtons:TResStringRec
 005059EC    call        LoadResString
 005059F1    mov         edx,dword ptr [ebp-20]
 005059F4    mov         eax,dword ptr [ebp-4]
 005059F7    mov         eax,dword ptr [eax+31C];TCustomizeActionToolBar.FAddlItem:TActionClientItem
 005059FD    call        TActionClientItem.SetCaption
 00505A02    push        ebp
 00505A03    mov         eax,dword ptr [ebp-0C]
 00505A06    call        TActionClient.GetItems
 00505A0B    call        00479B60
 00505A10    dec         eax
 00505A11    push        eax
 00505A12    mov         eax,dword ptr [ebp-0C]
 00505A15    call        TActionClient.GetItems
 00505A1A    push        eax
 00505A1B    mov         eax,dword ptr [ebp-4]
 00505A1E    mov         eax,dword ptr [eax+31C];TCustomizeActionToolBar.FAddlItem:TActionClientItem
 00505A24    call        TActionClient.GetItems
 00505A29    pop         edx
 00505A2A    pop         ecx
 00505A2B    call        00505854
 00505A30    pop         ecx
 00505A31    mov         eax,dword ptr [ebp-4]
 00505A34    mov         eax,dword ptr [eax+2C4];TCustomizeActionToolBar.FRootMenu:TCustomActionMenuBar
 00505A3A    mov         eax,dword ptr [eax+2AC];TCustomActionMenuBar.FParentControl:TCustomActionControl
 00505A40    call        0051541C
 00505A45    mov         eax,dword ptr [eax+210]
 00505A4B    mov         dword ptr [ebp-14],eax
 00505A4E    push        ebp
 00505A4F    mov         eax,dword ptr [ebp-14]
 00505A52    call        TActionClient.GetItems
 00505A57    call        00479B60
 00505A5C    sub         eax,2
 00505A5F    push        eax
 00505A60    mov         eax,dword ptr [ebp-14]
 00505A63    call        TActionClient.GetItems
 00505A68    push        eax
 00505A69    mov         eax,dword ptr [ebp-4]
 00505A6C    mov         eax,dword ptr [eax+31C];TCustomizeActionToolBar.FAddlItem:TActionClientItem
 00505A72    call        TActionClient.GetItems
 00505A77    pop         edx
 00505A78    pop         ecx
 00505A79    call        00505854
 00505A7E    pop         ecx
 00505A7F    mov         eax,dword ptr [ebp-0C]
 00505A82    call        TActionClient.GetItems
 00505A87    call        00479B60
 00505A8C    test        eax,eax
>00505A8E    jle         00505B34
 00505A94    mov         ecx,dword ptr [ebp-4]
 00505A97    mov         dl,1
 00505A99    mov         eax,[004DA408];TCustomAction
 00505A9E    call        TCustomAction.Create;TCustomAction.Create
 00505AA3    mov         edx,dword ptr [ebp-4]
 00505AA6    mov         dword ptr [edx+320],eax;TCustomizeActionToolBar.FResetAction:TCustomAction
 00505AAC    mov         eax,dword ptr [ebp-4]
 00505AAF    mov         eax,dword ptr [eax+320];TCustomizeActionToolBar.FResetAction:TCustomAction
 00505AB5    mov         dword ptr [ebp-18],eax
 00505AB8    lea         edx,[ebp-24]
 00505ABB    mov         eax,[0055B5B0];^SResetActionToolBar:TResStringRec
 00505AC0    call        LoadResString
 00505AC5    mov         edx,dword ptr [ebp-24]
 00505AC8    mov         eax,dword ptr [ebp-18]
 00505ACB    call        TVirtualListAction.SetCaption
 00505AD0    mov         eax,dword ptr [ebp-4]
 00505AD3    mov         eax,dword ptr [eax+31C];TCustomizeActionToolBar.FAddlItem:TActionClientItem
 00505AD9    call        TActionClient.GetItems
 00505ADE    call        00479B60
 00505AE3    test        eax,eax
>00505AE5    jle         00505AF6
 00505AE7    push        ebp
 00505AE8    mov         eax,dword ptr [ebp-8]
 00505AEB    call        TActionClient.GetItems
 00505AF0    call        00505818
 00505AF5    pop         ecx
 00505AF6    mov         eax,dword ptr [ebp-8]
 00505AF9    call        TActionClient.GetItems
 00505AFE    call        0050D750
 00505B03    mov         edx,dword ptr [ebp-4]
 00505B06    mov         dword ptr [edx+324],eax;TCustomizeActionToolBar.FResetItem:TActionClientItem
 00505B0C    mov         eax,dword ptr [ebp-4]
 00505B0F    mov         eax,dword ptr [eax+324];TCustomizeActionToolBar.FResetItem:TActionClientItem
 00505B15    mov         dword ptr [ebp-1C],eax
 00505B18    mov         eax,dword ptr [ebp-4]
 00505B1B    mov         edx,dword ptr [eax+320];TCustomizeActionToolBar.FResetAction:TCustomAction
 00505B21    mov         eax,dword ptr [ebp-1C]
 00505B24    call        TActionClientItem.SetAction
 00505B29    or          edx,0FFFFFFFF
 00505B2C    mov         eax,dword ptr [ebp-1C]
 00505B2F    call        TActionClientItem.SetUsageCount
 00505B34    mov         edx,dword ptr [ebp-8]
 00505B37    mov         eax,dword ptr [ebp-4]
 00505B3A    call        0051191C
 00505B3F    mov         eax,dword ptr [ebp-4]
 00505B42    mov         eax,dword ptr [eax+210];TCustomizeActionToolBar.FActionClient:TActionClient
 00505B48    call        TActionClient.GetItems
 00505B4D    mov         byte ptr [eax+24],0
 00505B51    xor         eax,eax
 00505B53    pop         edx
 00505B54    pop         ecx
 00505B55    pop         ecx
 00505B56    mov         dword ptr fs:[eax],edx
 00505B59    push        505B73
 00505B5E    lea         eax,[ebp-24]
 00505B61    mov         edx,2
 00505B66    call        @LStrArrayClr
 00505B6B    ret
>00505B6C    jmp         @HandleFinally
>00505B71    jmp         00505B5E
 00505B73    mov         esp,ebp
 00505B75    pop         ebp
 00505B76    ret
end;*}

//00505B78
{*function sub_00505B78:?;
begin
 00505B78    push        ebp
 00505B79    mov         ebp,esp
 00505B7B    add         esp,0FFFFFFF8
 00505B7E    mov         dword ptr [ebp-4],eax
 00505B81    mov         eax,dword ptr [ebp-4]
 00505B84    mov         edx,dword ptr [eax]
 00505B86    call        dword ptr [edx+148];TCustomizeActionToolBar.sub_00503AF4
 00505B8C    test        eax,eax
>00505B8E    jne         00505BA8
 00505B90    mov         eax,dword ptr [ebp-4]
 00505B93    mov         edx,dword ptr [eax]
 00505B95    call        dword ptr [edx+148];TCustomizeActionToolBar.sub_00503AF4
 00505B9B    mov         edx,dword ptr [ebp-4]
 00505B9E    mov         ecx,dword ptr [eax]
 00505BA0    call        dword ptr [ecx+10]
 00505BA3    mov         dword ptr [ebp-8],eax
>00505BA6    jmp         00505BC1
 00505BA8    mov         eax,[0055B2C4];^gvar_0055E028
 00505BAD    mov         eax,dword ptr [eax]
 00505BAF    xor         edx,edx
 00505BB1    call        00515B18
 00505BB6    mov         edx,dword ptr [ebp-4]
 00505BB9    mov         ecx,dword ptr [eax]
 00505BBB    call        dword ptr [ecx+10]
 00505BBE    mov         dword ptr [ebp-8],eax
 00505BC1    mov         eax,dword ptr [ebp-8]
 00505BC4    pop         ecx
 00505BC5    pop         ecx
 00505BC6    pop         ebp
 00505BC7    ret
end;*}

//00505BC8
{*procedure sub_00505BC8(?:?);
begin
 00505BC8    push        ebp
 00505BC9    mov         ebp,esp
 00505BCB    add         esp,0FFFFFFF8
 00505BCE    mov         byte ptr [ebp-5],dl
 00505BD1    mov         dword ptr [ebp-4],eax
 00505BD4    mov         eax,dword ptr [ebp-4]
 00505BD7    mov         eax,dword ptr [eax+18];TCustomizeActionLink.............................FClient:TActionC...
 00505BDA    cmp         dword ptr [eax+40],0;TActionClientItem.FControl:TCustomActionControl
>00505BDE    je          00505BF0
 00505BE0    mov         eax,dword ptr [ebp-4]
 00505BE3    mov         eax,dword ptr [eax+18];TCustomizeActionLink..............................FClient:TAction...
 00505BE6    mov         eax,dword ptr [eax+40];TActionClientItem.FControl:TCustomActionControl
 00505BE9    mov         dl,1
 00505BEB    mov         ecx,dword ptr [eax]
 00505BED    call        dword ptr [ecx+64];TImage.SetEnabled
 00505BF0    pop         ecx
 00505BF1    pop         ecx
 00505BF2    pop         ebp
 00505BF3    ret
end;*}

//00505BF4
procedure TCustomizeActionClientItem.sub_00505BF4;
begin
{*
 00505BF4    push        ebp
 00505BF5    mov         ebp,esp
 00505BF7    add         esp,0FFFFFFF8
 00505BFA    mov         dword ptr [ebp-4],eax
 00505BFD    mov         eax,[004FF59C];TCustomizeActionLink
 00505C02    mov         dword ptr [ebp-8],eax
 00505C05    mov         eax,dword ptr [ebp-8]
 00505C08    pop         ecx
 00505C09    pop         ecx
 00505C0A    pop         ebp
 00505C0B    ret
*}
end;

//00505C0C
procedure TCustomMDIMenuButton.Paint;
begin
{*
 00505C0C    push        ebp
 00505C0D    mov         ebp,esp
 00505C0F    add         esp,0FFFFFFEC
 00505C12    mov         dword ptr [ebp-4],eax
 00505C15    mov         eax,dword ptr [ebp-4]
 00505C18    movzx       eax,byte ptr [eax+181];TCustomMDIMenuButton.FMouseInControl:Boolean
 00505C1F    mov         ax,word ptr [eax*2+541A8C]
 00505C27    mov         edx,dword ptr [ebp-4]
 00505C2A    movzx       edx,byte ptr [edx+188];TCustomMDIMenuButton.......FButtonStyle:TMDIButtonStyle
 00505C31    or          ax,word ptr [edx*2+541A84]
 00505C39    mov         edx,dword ptr [ebp-4]
 00505C3C    cmp         byte ptr [edx+182],2;TCustomMDIMenuButton.FState:TButtonState
 00505C43    sete        dl
 00505C46    and         edx,7F
 00505C49    or          ax,word ptr [edx*2+541A90]
 00505C51    movzx       eax,ax
 00505C54    push        eax
 00505C55    push        1
 00505C57    lea         edx,[ebp-14]
 00505C5A    mov         eax,dword ptr [ebp-4]
 00505C5D    mov         ecx,dword ptr [eax]
 00505C5F    call        dword ptr [ecx+44];TCustomMDIMenuButton.sub_004CA73C
 00505C62    lea         eax,[ebp-14]
 00505C65    push        eax
 00505C66    mov         eax,dword ptr [ebp-4]
 00505C69    mov         eax,dword ptr [eax+160];TCustomMDIMenuButton...............................................
 00505C6F    call        TCanvas.GetHandle
 00505C74    push        eax
 00505C75    call        user32.DrawFrameControl
 00505C7A    mov         esp,ebp
 00505C7C    pop         ebp
 00505C7D    ret
*}
end;

//00505C80
constructor TCustomActionMainMenuBar.Create(AOwner:TComponent);
begin
{*
 00505C80    push        ebp
 00505C81    mov         ebp,esp
 00505C83    add         esp,0FFFFFFE8
 00505C86    test        dl,dl
>00505C88    je          00505C92
 00505C8A    add         esp,0FFFFFFF0
 00505C8D    call        @ClassCreate
 00505C92    mov         dword ptr [ebp-0C],ecx
 00505C95    mov         byte ptr [ebp-5],dl
 00505C98    mov         dword ptr [ebp-4],eax
 00505C9B    mov         ecx,dword ptr [ebp-0C]
 00505C9E    xor         edx,edx
 00505CA0    mov         eax,dword ptr [ebp-4]
 00505CA3    call        TCustomActionMenuBar.Create
 00505CA8    mov         eax,dword ptr [ebp-4]
 00505CAB    mov         eax,dword ptr [eax+50];TCustomActionMainMenuBar.FControlStyle:TControlStyle
 00505CAE    or          eax,dword ptr ds:[505D8C];0x10000 gvar_00505D8C
 00505CB4    mov         edx,dword ptr [ebp-4]
 00505CB7    mov         dword ptr [edx+50],eax;TCustomActionMainMenuBar.FControlStyle:TControlStyle
 00505CBA    mov         dl,byte ptr ds:[505D8C];0x0 gvar_00505D8C
 00505CC0    mov         eax,dword ptr [ebp-4]
 00505CC3    call        TActionToolBar.SetEdgeBorders
 00505CC8    mov         dl,1
 00505CCA    mov         eax,dword ptr [ebp-4]
 00505CCD    call        TActionToolBar.SetEdgeInner
 00505CD2    mov         dl,2
 00505CD4    mov         eax,dword ptr [ebp-4]
 00505CD7    call        TActionToolBar.SetEdgeOuter
 00505CDC    push        0
 00505CDE    lea         eax,[ebp-10]
 00505CE1    push        eax
 00505CE2    push        0
 00505CE4    push        100A
 00505CE9    call        user32.SystemParametersInfoA
 00505CEE    mov         dl,1
 00505CF0    mov         eax,dword ptr [ebp-4]
 00505CF3    call        TImage.SetAlign
 00505CF8    cmp         dword ptr [ebp-10],1
 00505CFC    sbb         edx,edx
 00505CFE    inc         edx
 00505CFF    mov         eax,dword ptr [ebp-4]
 00505D02    mov         ecx,dword ptr [eax]
 00505D04    call        dword ptr [ecx+138];TActionMainMenuBar.SetPersistentHotKeys
 00505D0A    mov         eax,dword ptr [ebp-4]
 00505D0D    mov         byte ptr [eax+218],0;TCustomActionMainMenuBar.FAllowHiding:Boolean
 00505D14    mov         edx,1
 00505D19    mov         eax,dword ptr [ebp-4]
 00505D1C    call        TActionToolBar.SetHorzMargin
 00505D21    mov         edx,1D
 00505D26    mov         eax,dword ptr [ebp-4]
 00505D29    call        TControl.SetHeight
 00505D2E    xor         edx,edx
 00505D30    mov         eax,dword ptr [ebp-4]
 00505D33    call        TPanel.SetTabStop
 00505D38    mov         eax,dword ptr [ebp-4]
 00505D3B    mov         byte ptr [eax+30E],1;TCustomActionMainMenuBar.FShadows:Boolean
 00505D42    mov         eax,dword ptr [ebp-4]
 00505D45    mov         dword ptr [ebp-14],eax
 00505D48    mov         dword ptr [ebp-18],506C8C;sub_00506C8C
 00505D4F    lea         eax,[ebp-18]
 00505D52    push        eax
 00505D53    push        0
 00505D55    push        0B020
 00505D5A    mov         eax,[0055B4C8];^Application:TApplication
 00505D5F    mov         eax,dword ptr [eax]
 00505D61    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 00505D64    push        eax
 00505D65    call        user32.SendMessageA
 00505D6A    mov         eax,dword ptr [ebp-4]
 00505D6D    cmp         byte ptr [ebp-5],0
>00505D71    je          00505D82
 00505D73    call        @AfterConstruction
 00505D78    pop         dword ptr fs:[0]
 00505D7F    add         esp,0C
 00505D82    mov         eax,dword ptr [ebp-4]
 00505D85    mov         esp,ebp
 00505D87    pop         ebp
 00505D88    ret
*}
end;

//00505D90
destructor TCustomActionMainMenuBar.Destroy;
begin
{*
 00505D90    push        ebp
 00505D91    mov         ebp,esp
 00505D93    add         esp,0FFFFFFF0
 00505D96    call        @BeforeDestruction
 00505D9B    mov         byte ptr [ebp-5],dl
 00505D9E    mov         dword ptr [ebp-4],eax
 00505DA1    mov         eax,dword ptr [ebp-4]
 00505DA4    mov         dword ptr [ebp-0C],eax
 00505DA7    mov         dword ptr [ebp-10],506C8C;sub_00506C8C
 00505DAE    lea         eax,[ebp-10]
 00505DB1    push        eax
 00505DB2    push        1
 00505DB4    push        0B020
 00505DB9    mov         eax,[0055B4C8];^Application:TApplication
 00505DBE    mov         eax,dword ptr [eax]
 00505DC0    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 00505DC3    push        eax
 00505DC4    call        user32.SendMessageA
 00505DC9    mov         dl,byte ptr [ebp-5]
 00505DCC    and         dl,0FC
 00505DCF    mov         eax,dword ptr [ebp-4]
 00505DD2    call        TCustomActionMenuBar.Destroy
 00505DD7    cmp         byte ptr [ebp-5],0
>00505DDB    jle         00505DE5
 00505DDD    mov         eax,dword ptr [ebp-4]
 00505DE0    call        @ClassDestroy
 00505DE5    mov         esp,ebp
 00505DE7    pop         ebp
 00505DE8    ret
*}
end;

//00505DEC
procedure sub_00505DEC;
begin
{*
 00505DEC    push        ebp
 00505DED    mov         ebp,esp
 00505DEF    push        ecx
 00505DF0    mov         dword ptr [ebp-4],eax
 00505DF3    mov         eax,dword ptr [ebp-4]
 00505DF6    call        00501514
 00505DFB    mov         eax,dword ptr [ebp-4]
 00505DFE    call        00501574
 00505E03    pop         ecx
 00505E04    pop         ebp
 00505E05    ret
*}
end;

//00505E08
{*procedure TCustomActionMainMenuBar.WMKeyDown(?:?);
begin
 00505E08    push        ebp
 00505E09    mov         ebp,esp
 00505E0B    add         esp,0FFFFFFF4
 00505E0E    push        ebx
 00505E0F    mov         dword ptr [ebp-8],edx
 00505E12    mov         dword ptr [ebp-4],eax
 00505E15    mov         eax,dword ptr [ebp-4]
 00505E18    mov         al,byte ptr [eax+227];TCustomActionMainMenuBar.FOrientation:TBarOrientation
 00505E1E    sub         al,2
>00505E20    jb          00505E2F
 00505E22    sub         al,2
>00505E24    jb          00505F2F
>00505E2A    jmp         00505F7E
 00505E2F    mov         eax,dword ptr [ebp-8]
 00505E32    mov         ax,word ptr [eax+4]
 00505E36    sub         ax,25
>00505E3A    je          00505E6A
 00505E3C    dec         ax
>00505E3F    je          00505E84
 00505E41    dec         ax
>00505E44    je          00505E50
 00505E46    dec         ax
>00505E49    je          00505E84
>00505E4B    jmp         00505F7E
 00505E50    mov         eax,dword ptr [ebp-4]
 00505E53    cmp         byte ptr [eax+227],0;TCustomActionMainMenuBar.FOrientation:TBarOrientation
 00505E5A    sete        dl
 00505E5D    mov         eax,dword ptr [ebp-4]
 00505E60    call        00502CA0
>00505E65    jmp         00505F7E
 00505E6A    mov         eax,dword ptr [ebp-4]
 00505E6D    cmp         byte ptr [eax+227],0;TCustomActionMainMenuBar.FOrientation:TBarOrientation
 00505E74    setne       dl
 00505E77    mov         eax,dword ptr [ebp-4]
 00505E7A    call        00502CA0
>00505E7F    jmp         00505F7E
 00505E84    mov         eax,dword ptr [ebp-4]
 00505E87    call        005023E4
 00505E8C    test        eax,eax
>00505E8E    je          00505F7E
 00505E94    mov         eax,dword ptr [ebp-4]
 00505E97    mov         edx,dword ptr [eax]
 00505E99    call        dword ptr [edx+104];TCustomActionMainMenuBar.sub_0050226C
 00505E9F    test        al,al
>00505EA1    je          00505EDB
 00505EA3    mov         eax,dword ptr [ebp-4]
 00505EA6    call        005023E4
 00505EAB    call        0050CB98
 00505EB0    test        al,al
>00505EB2    jne         00505EDB
 00505EB4    call        004E7E34
 00505EB9    test        al,4
>00505EBB    je          00505F89
 00505EC1    mov         eax,dword ptr [ebp-4]
 00505EC4    call        005023E4
 00505EC9    call        TActionClient.GetItems
 00505ECE    call        0050D750
 00505ED3    mov         eax,dword ptr [ebp-4]
 00505ED6    call        0050A550
 00505EDB    mov         eax,dword ptr [ebp-4]
 00505EDE    call        005023E4
 00505EE3    call        0050CB98
 00505EE8    test        al,al
>00505EEA    je          00505F7E
 00505EF0    mov         eax,dword ptr [ebp-4]
 00505EF3    call        005023E4
 00505EF8    mov         ecx,dword ptr [eax+40]
 00505EFB    mov         edx,dword ptr [ebp-4]
 00505EFE    mov         eax,dword ptr [ebp-4]
 00505F01    mov         ebx,dword ptr [eax]
 00505F03    call        dword ptr [ebx+14C];TCustomActionMainMenuBar.sub_0050177C
 00505F09    mov         dword ptr [ebp-0C],eax
 00505F0C    mov         eax,dword ptr [ebp-0C]
 00505F0F    mov         edx,dword ptr [eax]
 00505F11    call        dword ptr [edx+140]
 00505F17    mov         eax,dword ptr [eax+40]
 00505F1A    mov         dl,1
 00505F1C    mov         ecx,dword ptr [eax]
 00505F1E    call        dword ptr [ecx+0D8]
 00505F24    mov         eax,dword ptr [ebp-8]
 00505F27    mov         word ptr [eax+4],0
>00505F2D    jmp         00505F89
 00505F2F    mov         eax,dword ptr [ebp-8]
 00505F32    mov         ax,word ptr [eax+4]
 00505F36    sub         ax,25
>00505F3A    je          00505F74
 00505F3C    sub         ax,2
>00505F40    jne         00505F7E
 00505F42    mov         eax,dword ptr [ebp-4]
 00505F45    call        005023E4
 00505F4A    test        eax,eax
>00505F4C    je          00505F7E
 00505F4E    mov         eax,dword ptr [ebp-4]
 00505F51    call        005023E4
 00505F56    call        0050CB98
 00505F5B    test        al,al
>00505F5D    je          00505F7E
 00505F5F    mov         eax,dword ptr [ebp-4]
 00505F62    call        005023E4
 00505F67    mov         eax,dword ptr [eax+40]
 00505F6A    mov         edx,dword ptr [eax]
 00505F6C    call        dword ptr [edx+0E0]
>00505F72    jmp         00505F7E
 00505F74    mov         dl,1
 00505F76    mov         eax,dword ptr [ebp-4]
 00505F79    call        00502CA0
 00505F7E    mov         edx,dword ptr [ebp-8]
 00505F81    mov         eax,dword ptr [ebp-4]
 00505F84    call        TCustomActionMenuBar.WMKeyDown
 00505F89    pop         ebx
 00505F8A    mov         esp,ebp
 00505F8C    pop         ebp
 00505F8D    ret
end;*}

//00505F90
procedure TCustomActionMainMenuBar.sub_004D37A8;
begin
{*
 00505F90    push        ebp
 00505F91    mov         ebp,esp
 00505F93    add         esp,0FFFFFFF8
 00505F96    mov         dword ptr [ebp-4],eax
 00505F99    mov         byte ptr [ebp-5],0
 00505F9D    mov         al,byte ptr [ebp-5]
 00505FA0    pop         ecx
 00505FA1    pop         ecx
 00505FA2    pop         ebp
 00505FA3    ret
*}
end;

//00505FA4
{*function sub_00505FA4(?:?):?;
begin
 00505FA4    push        ebp
 00505FA5    mov         ebp,esp
 00505FA7    add         esp,0FFFFFFF0
 00505FAA    mov         dword ptr [ebp-8],edx
 00505FAD    mov         dword ptr [ebp-4],eax
 00505FB0    mov         edx,dword ptr [ebp-8]
 00505FB3    mov         eax,dword ptr [ebp-4]
 00505FB6    call        005016F4
 00505FBB    mov         dword ptr [ebp-0C],eax
 00505FBE    mov         edx,dword ptr [ebp-8]
 00505FC1    mov         eax,dword ptr [ebp-4]
 00505FC4    mov         ecx,dword ptr [eax]
 00505FC6    call        dword ptr [ecx+110];TCustomActionMainMenuBar.sub_00511638
 00505FCC    mov         edx,eax
 00505FCE    mov         eax,dword ptr [ebp-0C]
 00505FD1    call        @AsClass
 00505FD6    mov         dword ptr [ebp-10],eax
 00505FD9    mov         edx,2
 00505FDE    mov         eax,dword ptr [ebp-10]
 00505FE1    call        00514C04
 00505FE6    mov         eax,dword ptr [ebp-0C]
 00505FE9    mov         esp,ebp
 00505FEB    pop         ebp
 00505FEC    ret
end;*}

//00505FF0
{*procedure TCustomActionMainMenuBar.sub_004CC67C(?:?);
begin
 00505FF0    push        ebp
 00505FF1    mov         ebp,esp
 00505FF3    add         esp,0FFFFFFF4
 00505FF6    mov         dword ptr [ebp-8],edx
 00505FF9    mov         dword ptr [ebp-4],eax
 00505FFC    mov         edx,dword ptr [ebp-8]
 00505FFF    mov         eax,dword ptr [ebp-4]
 00506002    call        TCustomActionBar.sub_004CC67C
 00506007    mov         byte ptr [ebp-9],al
 0050600A    cmp         byte ptr [ebp-9],0
>0050600E    jne         0050606D
 00506010    mov         eax,dword ptr [ebp-8]
 00506013    cmp         dword ptr [eax],100
>00506019    jne         0050606D
 0050601B    mov         eax,dword ptr [ebp-8]
 0050601E    mov         eax,dword ptr [eax+4]
 00506021    sub         eax,1B
>00506024    je          0050602E
 00506026    add         eax,0FFFFFFF6
 00506029    sub         eax,4
>0050602C    jae         0050606D
 0050602E    mov         eax,dword ptr [ebp-8]
 00506031    cmp         dword ptr [eax+4],1B
>00506035    jne         00506069
 00506037    mov         eax,dword ptr [ebp-4]
 0050603A    cmp         byte ptr [eax+296],0;TCustomActionMainMenuBar.FInMenuLoop:Boolean
>00506041    je          00506069
 00506043    mov         eax,dword ptr [ebp-4]
 00506046    mov         edx,dword ptr [eax]
 00506048    call        dword ptr [edx+17C];TCustomActionMainMenuBar.sub_00505DEC
 0050604E    mov         eax,dword ptr [ebp-4]
 00506051    cmp         byte ptr [eax+224],0;TCustomActionMainMenuBar.FDesignable:Boolean
>00506058    je          00506069
 0050605A    mov         eax,[0055B168];^gvar_00541A9C
 0050605F    mov         eax,dword ptr [eax]
 00506061    mov         edx,dword ptr [ebp-4]
 00506064    mov         ecx,dword ptr [eax]
 00506066    call        dword ptr [ecx+20]
 00506069    mov         byte ptr [ebp-9],1
 0050606D    mov         al,byte ptr [ebp-9]
 00506070    mov         esp,ebp
 00506072    pop         ebp
 00506073    ret
end;*}

//00506074
procedure sub_00506074;
begin
{*
 00506074    push        ebp
 00506075    mov         ebp,esp
 00506077    add         esp,0FFFFFFF8
 0050607A    mov         dword ptr [ebp-4],eax
 0050607D    mov         eax,dword ptr [ebp-4]
 00506080    call        00502034
 00506085    push        0
 00506087    lea         eax,[ebp-8]
 0050608A    push        eax
 0050608B    push        0
 0050608D    push        100A
 00506092    call        user32.SystemParametersInfoA
 00506097    cmp         dword ptr [ebp-8],0
>0050609B    jne         005060AA
 0050609D    xor         edx,edx
 0050609F    mov         eax,dword ptr [ebp-4]
 005060A2    mov         ecx,dword ptr [eax]
 005060A4    call        dword ptr [ecx+138];TActionMainMenuBar.SetPersistentHotKeys
 005060AA    pop         ecx
 005060AB    pop         ecx
 005060AC    pop         ebp
 005060AD    ret
*}
end;

//005060B0
{*procedure sub_005060B0(?:?);
begin
 005060B0    push        ebp
 005060B1    mov         ebp,esp
 005060B3    add         esp,0FFFFFFEC
 005060B6    mov         dword ptr [ebp-4],eax
 005060B9    mov         eax,dword ptr [ebp-4]
 005060BC    cmp         byte ptr [eax+30C],0
>005060C3    jne         00506177
 005060C9    mov         eax,dword ptr [ebp-4]
 005060CC    mov         eax,dword ptr [eax+2A4]
 005060D2    mov         dword ptr [ebp-8],eax
 005060D5    cmp         dword ptr [ebp-8],0
>005060D9    je          00506177
 005060DF    mov         eax,dword ptr [ebp-4]
 005060E2    mov         byte ptr [eax+30C],1
 005060E9    xor         eax,eax
 005060EB    push        ebp
 005060EC    push        506170
 005060F1    push        dword ptr fs:[eax]
 005060F4    mov         dword ptr fs:[eax],esp
 005060F7    mov         byte ptr [ebp-0D],0
 005060FB    mov         eax,dword ptr [ebp-8]
 005060FE    call        TCustomForm.GetMDIChildCount
 00506103    dec         eax
 00506104    test        eax,eax
>00506106    jl          0050614A
 00506108    inc         eax
 00506109    mov         dword ptr [ebp-14],eax
 0050610C    mov         dword ptr [ebp-0C],0
 00506113    mov         edx,dword ptr [ebp-0C]
 00506116    mov         eax,dword ptr [ebp-8]
 00506119    call        004EB698
 0050611E    cmp         byte ptr [eax+22B],2
>00506125    jne         00506142
 00506127    mov         byte ptr [ebp-0D],1
 0050612B    mov         edx,dword ptr [ebp-0C]
 0050612E    mov         eax,dword ptr [ebp-8]
 00506131    call        004EB698
 00506136    mov         edx,eax
 00506138    mov         eax,dword ptr [ebp-4]
 0050613B    call        0050693C
>00506140    jmp         0050614A
 00506142    inc         dword ptr [ebp-0C]
 00506145    dec         dword ptr [ebp-14]
>00506148    jne         00506113
 0050614A    cmp         byte ptr [ebp-0D],0
>0050614E    jne         00506158
 00506150    mov         eax,dword ptr [ebp-4]
 00506153    call        005069E8
 00506158    xor         eax,eax
 0050615A    pop         edx
 0050615B    pop         ecx
 0050615C    pop         ecx
 0050615D    mov         dword ptr fs:[eax],edx
 00506160    push        506177
 00506165    mov         eax,dword ptr [ebp-4]
 00506168    mov         byte ptr [eax+30C],0
 0050616F    ret
>00506170    jmp         @HandleFinally
>00506175    jmp         00506165
 00506177    mov         esp,ebp
 00506179    pop         ebp
 0050617A    ret
end;*}

//0050617C
{*procedure TCustomActionMainMenuBar.WMNCHitTest(?:?);
begin
 0050617C    push        ebp
 0050617D    mov         ebp,esp
 0050617F    add         esp,0FFFFFFF8
 00506182    mov         dword ptr [ebp-8],edx
 00506185    mov         dword ptr [ebp-4],eax
 00506188    mov         edx,dword ptr [ebp-8]
 0050618B    mov         eax,dword ptr [ebp-4]
 0050618E    call        TWinControl.WMNCHitTest
 00506193    mov         eax,dword ptr [ebp-4]
 00506196    mov         edx,dword ptr [eax]
 00506198    call        dword ptr [edx+104];TCustomActionMainMenuBar.sub_0050226C
 0050619E    test        al,al
>005061A0    je          005061AC
 005061A2    mov         eax,dword ptr [ebp-8]
 005061A5    mov         dword ptr [eax+0C],1
 005061AC    pop         ecx
 005061AD    pop         ecx
 005061AE    pop         ebp
 005061AF    ret
end;*}

//005061B0
{*procedure sub_005061B0(?:?);
begin
 005061B0    push        ebp
 005061B1    mov         ebp,esp
 005061B3    add         esp,0FFFFFFF4
 005061B6    push        esi
 005061B7    mov         dword ptr [ebp-8],edx
 005061BA    mov         dword ptr [ebp-4],eax
 005061BD    mov         edx,dword ptr [ebp-8]
 005061C0    mov         eax,dword ptr [ebp-4]
 005061C3    call        005026C0
 005061C8    mov         eax,dword ptr [ebp-8]
 005061CB    mov         eax,dword ptr [eax+4]
 005061CE    sub         eax,201
>005061D3    je          005061DA
 005061D5    sub         eax,3
>005061D8    jne         0050622D
 005061DA    mov         edx,dword ptr [ebp-8]
 005061DD    mov         eax,dword ptr [ebp-4]
 005061E0    call        005022BC
 005061E5    mov         dword ptr [ebp-0C],eax
 005061E8    cmp         dword ptr [ebp-0C],0
>005061EC    je          00506213
 005061EE    mov         eax,dword ptr [ebp-0C]
 005061F1    mov         eax,dword ptr [eax+4]
 005061F4    cmp         eax,dword ptr [ebp-4]
>005061F7    jne         0050622D
 005061F9    mov         eax,dword ptr [ebp-0C]
 005061FC    cmp         byte ptr [eax+18A],0
>00506203    je          0050622D
 00506205    mov         eax,dword ptr [ebp-0C]
 00506208    mov         si,0FFEB
 0050620C    call        @CallDynaInst
>00506211    jmp         0050622D
 00506213    mov         eax,dword ptr [ebp-4]
 00506216    mov         edx,dword ptr [eax]
 00506218    call        dword ptr [edx+104];TCustomActionMainMenuBar.sub_0050226C
 0050621E    test        al,al
>00506220    jne         0050622D
 00506222    mov         eax,dword ptr [ebp-4]
 00506225    mov         edx,dword ptr [eax]
 00506227    call        dword ptr [edx+17C];TCustomActionMainMenuBar.sub_00505DEC
 0050622D    pop         esi
 0050622E    mov         esp,ebp
 00506230    pop         ebp
 00506231    ret
end;*}

//00506234
{*procedure TCustomActionMainMenuBar.CMWinIniChange(?:?);
begin
 00506234    push        ebp
 00506235    mov         ebp,esp
 00506237    add         esp,0FFFFFFF8
 0050623A    push        esi
 0050623B    mov         dword ptr [ebp-8],edx
 0050623E    mov         dword ptr [ebp-4],eax
 00506241    mov         edx,dword ptr [ebp-8]
 00506244    mov         eax,dword ptr [ebp-4]
 00506247    call        TCustomActionBar.CMWinIniChange
 0050624C    mov         eax,dword ptr [ebp-4]
 0050624F    mov         si,0FFD0
 00506253    call        @CallDynaInst;TControl.sub_004C9ED8
 00506258    mov         eax,[0055B6D8];^Screen:TScreen
 0050625D    mov         eax,dword ptr [eax]
 0050625F    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 00506265    mov         eax,dword ptr [ebp-4]
 00506268    mov         eax,dword ptr [eax+68];TCustomActionMainMenuBar.FFont:TFont
 0050626B    mov         ecx,dword ptr [eax]
 0050626D    call        dword ptr [ecx+8];TFont.sub_00486CC0
 00506270    pop         esi
 00506271    pop         ecx
 00506272    pop         ecx
 00506273    pop         ebp
 00506274    ret
end;*}

//00506278
{*procedure sub_00506278(?:?);
begin
 00506278    push        ebp
 00506279    mov         ebp,esp
 0050627B    add         esp,0FFFFFFF8
 0050627E    mov         byte ptr [ebp-5],dl
 00506281    mov         dword ptr [ebp-4],eax
 00506284    mov         eax,dword ptr [ebp-4]
 00506287    mov         edx,dword ptr [eax]
 00506289    call        dword ptr [edx+104];TCustomActionMainMenuBar.sub_0050226C
 0050628F    cmp         al,byte ptr [ebp-5]
>00506292    je          0050629C
 00506294    mov         eax,dword ptr [ebp-4]
 00506297    call        00501514
 0050629C    mov         dl,byte ptr [ebp-5]
 0050629F    mov         eax,dword ptr [ebp-4]
 005062A2    call        00502DE0
 005062A7    pop         ecx
 005062A8    pop         ecx
 005062A9    pop         ebp
 005062AA    ret
end;*}

//005062AC
{*procedure sub_005062AC(?:TCustomActionMainMenuBar; ?:?);
begin
 005062AC    push        ebp
 005062AD    mov         ebp,esp
 005062AF    add         esp,0FFFFFFF8
 005062B2    mov         byte ptr [ebp-5],dl
 005062B5    mov         dword ptr [ebp-4],eax
 005062B8    mov         eax,dword ptr [ebp-4]
 005062BB    mov         al,byte ptr [eax+30D]
 005062C1    cmp         al,byte ptr [ebp-5]
>005062C4    je          005062DA
 005062C6    mov         al,byte ptr [ebp-5]
 005062C9    mov         edx,dword ptr [ebp-4]
 005062CC    mov         byte ptr [edx+30D],al
 005062D2    mov         eax,dword ptr [ebp-4]
 005062D5    mov         edx,dword ptr [eax]
 005062D7    call        dword ptr [edx+7C]
 005062DA    pop         ecx
 005062DB    pop         ecx
 005062DC    pop         ebp
 005062DD    ret
end;*}

//005062E0
{*procedure TCustomActionMainMenuBar.CMEnabledChanged(?:?);
begin
 005062E0    push        ebp
 005062E1    mov         ebp,esp
 005062E3    add         esp,0FFFFFFF8
 005062E6    mov         dword ptr [ebp-8],edx
 005062E9    mov         dword ptr [ebp-4],eax
 005062EC    mov         edx,dword ptr [ebp-8]
 005062EF    mov         eax,dword ptr [ebp-4]
 005062F2    call        TCustomActionBar.CMEnabledChanged
 005062F7    mov         eax,dword ptr [ebp-4]
 005062FA    mov         edx,dword ptr [eax]
 005062FC    call        dword ptr [edx+50];TImage.GetEnabled
 005062FF    mov         edx,eax
 00506301    xor         dl,1
 00506304    mov         eax,dword ptr [ebp-4]
 00506307    call        005062AC
 0050630C    pop         ecx
 0050630D    pop         ecx
 0050630E    pop         ebp
 0050630F    ret
end;*}

//00506310
{*function sub_00506310:?;
begin
 00506310    push        ebp
 00506311    mov         ebp,esp
 00506313    add         esp,0FFFFFFF8
 00506316    mov         dword ptr [ebp-4],eax
 00506319    mov         eax,dword ptr [ebp-4]
 0050631C    call        00502608
 00506321    mov         dword ptr [ebp-8],eax
 00506324    mov         eax,dword ptr [ebp-4]
 00506327    mov         dl,byte ptr [eax+30E];TCustomActionMainMenuBar.FShadows:Boolean
 0050632D    mov         eax,dword ptr [ebp-8]
 00506330    call        00505244
 00506335    mov         eax,dword ptr [ebp-8]
 00506338    pop         ecx
 00506339    pop         ecx
 0050633A    pop         ebp
 0050633B    ret
end;*}

//0050633C
procedure TCustomActionMainMenuBar.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0050633C    push        ebp
 0050633D    mov         ebp,esp
 0050633F    add         esp,0FFFFFFF0
 00506342    push        ebx
 00506343    xor         ebx,ebx
 00506345    mov         dword ptr [ebp-10],ebx
 00506348    mov         byte ptr [ebp-9],cl
 0050634B    mov         dword ptr [ebp-8],edx
 0050634E    mov         dword ptr [ebp-4],eax
 00506351    xor         eax,eax
 00506353    push        ebp
 00506354    push        5063E3
 00506359    push        dword ptr fs:[eax]
 0050635C    mov         dword ptr fs:[eax],esp
 0050635F    mov         cl,byte ptr [ebp-9]
 00506362    mov         edx,dword ptr [ebp-8]
 00506365    mov         eax,dword ptr [ebp-4]
 00506368    call        TCustomActionMenuBar.Notification
 0050636D    cmp         byte ptr [ebp-9],1
>00506371    jne         005063CD
 00506373    mov         eax,dword ptr [ebp-8]
 00506376    mov         edx,dword ptr ds:[4FA6DC];TCustomButtonControl
 0050637C    call        @IsClass
 00506381    test        al,al
>00506383    je          005063CD
 00506385    mov         eax,dword ptr [ebp-8]
 00506388    cmp         dword ptr [eax+16C],0
>0050638F    je          005063CD
 00506391    lea         edx,[ebp-10]
 00506394    mov         eax,dword ptr [ebp-8]
 00506397    mov         eax,dword ptr [eax+16C]
 0050639D    call        TActionClientItem.GetCaption
 005063A2    mov         eax,dword ptr [ebp-10]
 005063A5    mov         edx,dword ptr [ebp-4]
 005063A8    mov         edx,dword ptr [edx+310];TCustomActionMainMenuBar.FWindowMenu:String
 005063AE    call        @LStrCmp
>005063B3    jne         005063CD
 005063B5    mov         eax,dword ptr [ebp-4]
 005063B8    add         eax,310;TCustomActionMainMenuBar.FWindowMenu:String
 005063BD    call        @LStrClr
 005063C2    mov         eax,dword ptr [ebp-4]
 005063C5    xor         edx,edx
 005063C7    mov         dword ptr [eax+324],edx;TCustomActionMainMenuBar.FWindowMenuItem:TActionClientItem
 005063CD    xor         eax,eax
 005063CF    pop         edx
 005063D0    pop         ecx
 005063D1    pop         ecx
 005063D2    mov         dword ptr fs:[eax],edx
 005063D5    push        5063EA
 005063DA    lea         eax,[ebp-10]
 005063DD    call        @LStrClr
 005063E2    ret
>005063E3    jmp         @HandleFinally
>005063E8    jmp         005063DA
 005063EA    pop         ebx
 005063EB    mov         esp,ebp
 005063ED    pop         ebp
 005063EE    ret
*}
end;

//005063F0
procedure sub_005063F0(?:TCustomActionMainMenuBar);
begin
{*
 005063F0    push        ebp
 005063F1    mov         ebp,esp
 005063F3    add         esp,0FFFFFFF8
 005063F6    mov         dword ptr [ebp-4],eax
 005063F9    mov         eax,dword ptr [ebp-4]
 005063FC    cmp         dword ptr [eax+210],0
>00506403    je          00506431
 00506405    mov         eax,dword ptr [ebp-4]
 00506408    mov         edx,dword ptr [eax+310]
 0050640E    mov         eax,dword ptr [ebp-4]
 00506411    call        00510DB8
 00506416    mov         dword ptr [ebp-8],eax
 00506419    cmp         dword ptr [ebp-8],0
>0050641D    je          00506431
 0050641F    mov         eax,dword ptr [ebp-8]
 00506422    mov         eax,dword ptr [eax+16C]
 00506428    mov         edx,dword ptr [ebp-4]
 0050642B    mov         dword ptr [edx+324],eax
 00506431    pop         ecx
 00506432    pop         ecx
 00506433    pop         ebp
 00506434    ret
*}
end;

//00506438
procedure TActionMainMenuBar.SetWindowMenu(Value:String);
begin
{*
 00506438    push        ebp
 00506439    mov         ebp,esp
 0050643B    add         esp,0FFFFFFF8
 0050643E    mov         dword ptr [ebp-8],edx
 00506441    mov         dword ptr [ebp-4],eax
 00506444    mov         eax,dword ptr [ebp-4]
 00506447    mov         eax,dword ptr [eax+310];TActionMainMenuBar.FWindowMenu:String
 0050644D    mov         edx,dword ptr [ebp-8]
 00506450    call        @LStrCmp
>00506455    je          0050646F
 00506457    mov         eax,dword ptr [ebp-4]
 0050645A    add         eax,310;TActionMainMenuBar.FWindowMenu:String
 0050645F    mov         edx,dword ptr [ebp-8]
 00506462    call        @LStrAsg
 00506467    mov         eax,dword ptr [ebp-4]
 0050646A    call        005063F0
 0050646F    pop         ecx
 00506470    pop         ecx
 00506471    pop         ebp
 00506472    ret
*}
end;

//00506474
{*function sub_00506474(?:?; ?:?):?;
begin
 00506474    push        ebp
 00506475    mov         ebp,esp
 00506477    add         esp,0FFFFFFF0
 0050647A    mov         dword ptr [ebp-4],eax
 0050647D    xor         eax,eax
 0050647F    mov         dword ptr [ebp-8],eax
 00506482    mov         eax,dword ptr [ebp+8]
 00506485    mov         eax,dword ptr [eax-4]
 00506488    mov         eax,dword ptr [eax+308]
 0050648E    call        004DADD4
 00506493    dec         eax
 00506494    test        eax,eax
>00506496    jl          005064EE
 00506498    inc         eax
 00506499    mov         dword ptr [ebp-10],eax
 0050649C    mov         dword ptr [ebp-0C],0
 005064A3    mov         eax,dword ptr [ebp+8]
 005064A6    mov         eax,dword ptr [eax-4]
 005064A9    mov         eax,dword ptr [eax+308]
 005064AF    mov         edx,dword ptr [ebp-0C]
 005064B2    call        004DADB0
 005064B7    mov         eax,dword ptr [eax+0A0]
 005064BD    cmp         eax,dword ptr [ebp-4]
>005064C0    jne         005064E6
 005064C2    mov         eax,dword ptr [ebp+8]
 005064C5    mov         eax,dword ptr [eax-4]
 005064C8    mov         eax,dword ptr [eax+308]
 005064CE    mov         edx,dword ptr [ebp-0C]
 005064D1    call        004DADB0
 005064D6    mov         edx,dword ptr ds:[500CA4];TInternalMDIAction
 005064DC    call        @AsClass
 005064E1    mov         dword ptr [ebp-8],eax
>005064E4    jmp         005064EE
 005064E6    inc         dword ptr [ebp-0C]
 005064E9    dec         dword ptr [ebp-10]
>005064EC    jne         005064A3
 005064EE    mov         eax,dword ptr [ebp-8]
 005064F1    mov         esp,ebp
 005064F3    pop         ebp
 005064F4    ret
end;*}

//005064F8
procedure TCustomActionMainMenuBar.RefreshMDIMenu;
begin
{*
 005064F8    push        ebp
 005064F9    mov         ebp,esp
 005064FB    add         esp,0FFFFFFE4
 005064FE    xor         edx,edx
 00506500    mov         dword ptr [ebp-1C],edx
 00506503    mov         dword ptr [ebp-18],edx
 00506506    mov         dword ptr [ebp-4],eax
 00506509    xor         eax,eax
 0050650B    push        ebp
 0050650C    push        50670B
 00506511    push        dword ptr fs:[eax]
 00506514    mov         dword ptr fs:[eax],esp
 00506517    mov         eax,dword ptr [ebp-4]
 0050651A    mov         eax,dword ptr [eax+2A4]
 00506520    cmp         byte ptr [eax+22F],2
>00506527    jne         005066F0
 0050652D    mov         eax,dword ptr [ebp-4]
 00506530    mov         edx,dword ptr [eax]
 00506532    call        dword ptr [edx+104]
 00506538    test        al,al
>0050653A    jne         005066F0
 00506540    mov         eax,dword ptr [ebp-4]
 00506543    cmp         dword ptr [eax+324],0
>0050654A    je          005066F0
 00506550    mov         eax,dword ptr [ebp-4]
 00506553    call        005060B0
 00506558    mov         eax,dword ptr [ebp-4]
 0050655B    cmp         dword ptr [eax+308],0
>00506562    jne         005065AB
 00506564    mov         ecx,dword ptr [ebp-4]
 00506567    mov         dl,1
 00506569    mov         eax,[004DA124];TActionList
 0050656E    call        004DAC28
 00506573    mov         edx,dword ptr [ebp-4]
 00506576    mov         dword ptr [edx+308],eax
 0050657C    mov         eax,dword ptr [ebp-4]
 0050657F    mov         eax,dword ptr [eax+324]
 00506585    call        TActionClient.GetItems
 0050658A    call        0050D750
 0050658F    mov         edx,dword ptr [ebp-4]
 00506592    mov         dword ptr [edx+320],eax
 00506598    mov         eax,dword ptr [ebp-4]
 0050659B    mov         eax,dword ptr [eax+320]
 005065A1    mov         edx,506720;'-'
 005065A6    call        TActionClientItem.SetCaption
 005065AB    mov         eax,dword ptr [ebp-4]
 005065AE    mov         eax,dword ptr [eax+2A4]
 005065B4    mov         dword ptr [ebp-8],eax
 005065B7    mov         eax,dword ptr [ebp-8]
 005065BA    call        TCustomForm.GetMDIChildCount
 005065BF    test        eax,eax
>005065C1    jne         005065D0
 005065C3    mov         eax,dword ptr [ebp-4]
 005065C6    add         eax,320
 005065CB    call        FreeAndNil
 005065D0    mov         eax,dword ptr [ebp-8]
 005065D3    call        TCustomForm.GetMDIChildCount
 005065D8    dec         eax
 005065D9    test        eax,eax
>005065DB    jl          005066F0
 005065E1    inc         eax
 005065E2    mov         dword ptr [ebp-14],eax
 005065E5    mov         dword ptr [ebp-0C],0
 005065EC    push        ebp
 005065ED    mov         edx,dword ptr [ebp-0C]
 005065F0    mov         eax,dword ptr [ebp-8]
 005065F3    call        004EB698
 005065F8    call        00506474
 005065FD    pop         ecx
 005065FE    mov         dword ptr [ebp-10],eax
 00506601    cmp         dword ptr [ebp-10],0
>00506605    je          0050662A
 00506607    mov         edx,dword ptr [ebp-0C]
 0050660A    mov         eax,dword ptr [ebp-8]
 0050660D    call        004EB698
 00506612    lea         edx,[ebp-18]
 00506615    call        TControl.GetText
 0050661A    mov         edx,dword ptr [ebp-18]
 0050661D    mov         eax,dword ptr [ebp-10]
 00506620    call        TVirtualListAction.SetCaption
>00506625    jmp         005066D4
 0050662A    mov         eax,dword ptr [ebp-4]
 0050662D    mov         ecx,dword ptr [eax+308]
 00506633    mov         dl,1
 00506635    mov         eax,[00500CA4];TInternalMDIAction
 0050663A    call        TInternalMDIAction.Create
 0050663F    mov         dword ptr [ebp-10],eax
 00506642    mov         eax,dword ptr [ebp-10]
 00506645    mov         byte ptr [eax+0B0],0
 0050664C    mov         eax,dword ptr [ebp-4]
 0050664F    mov         edx,dword ptr [eax+308]
 00506655    mov         eax,dword ptr [ebp-10]
 00506658    call        004DAAD4
 0050665D    mov         edx,dword ptr [ebp-8]
 00506660    mov         eax,dword ptr [ebp-10]
 00506663    call        TAction.SetGroupIndex
 00506668    mov         edx,dword ptr [ebp-0C]
 0050666B    mov         eax,dword ptr [ebp-8]
 0050666E    call        004EB698
 00506673    mov         edx,eax
 00506675    mov         eax,dword ptr [ebp-10]
 00506678    call        004C36D4
 0050667D    mov         edx,dword ptr [ebp-0C]
 00506680    mov         eax,dword ptr [ebp-8]
 00506683    call        004EB698
 00506688    lea         edx,[ebp-1C]
 0050668B    call        TControl.GetText
 00506690    mov         edx,dword ptr [ebp-1C]
 00506693    mov         eax,dword ptr [ebp-10]
 00506696    call        TVirtualListAction.SetCaption
 0050669B    mov         eax,dword ptr [ebp-4]
 0050669E    mov         eax,dword ptr [eax+324]
 005066A4    call        TActionClient.GetItems
 005066A9    call        0050D750
 005066AE    mov         edx,dword ptr [ebp-10]
 005066B1    mov         dword ptr [edx+0A8],eax
 005066B7    mov         eax,dword ptr [ebp-4]
 005066BA    mov         edx,dword ptr [ebp-10]
 005066BD    mov         dword ptr [edx+0AC],eax
 005066C3    mov         edx,dword ptr [ebp-10]
 005066C6    mov         eax,dword ptr [ebp-10]
 005066C9    mov         eax,dword ptr [eax+0A8]
 005066CF    call        TActionClientItem.SetAction
 005066D4    cmp         dword ptr [ebp-0C],0
>005066D8    jne         005066E4
 005066DA    mov         dl,1
 005066DC    mov         eax,dword ptr [ebp-10]
 005066DF    call        TAction.SetChecked
 005066E4    inc         dword ptr [ebp-0C]
 005066E7    dec         dword ptr [ebp-14]
>005066EA    jne         005065EC
 005066F0    xor         eax,eax
 005066F2    pop         edx
 005066F3    pop         ecx
 005066F4    pop         ecx
 005066F5    mov         dword ptr fs:[eax],edx
 005066F8    push        506712
 005066FD    lea         eax,[ebp-1C]
 00506700    mov         edx,2
 00506705    call        @LStrArrayClr
 0050670A    ret
>0050670B    jmp         @HandleFinally
>00506710    jmp         005066FD
 00506712    mov         esp,ebp
 00506714    pop         ebp
 00506715    ret
*}
end;

//00506724
{*function sub_00506724(?:?; ?:?):?;
begin
 00506724    push        ebp
 00506725    mov         ebp,esp
 00506727    add         esp,0FFFFFFF4
 0050672A    mov         byte ptr [ebp-1],al
 0050672D    mov         eax,dword ptr [ebp+8]
 00506730    mov         ecx,dword ptr [eax-4]
 00506733    mov         dl,1
 00506735    mov         eax,[004FF75C];TCustomMDIMenuButton
 0050673A    call        TSpeedButton.Create;TCustomMDIMenuButton.Create
 0050673F    mov         dword ptr [ebp-8],eax
 00506742    mov         eax,dword ptr [ebp+8]
 00506745    mov         edx,dword ptr [eax-4]
 00506748    mov         eax,dword ptr [ebp-8]
 0050674B    mov         ecx,dword ptr [eax]
 0050674D    call        dword ptr [ecx+68];TCustomMDIMenuButton.sub_004CAD7C
 00506750    mov         dl,1
 00506752    mov         eax,dword ptr [ebp-8]
 00506755    call        TControl.SetVisible
 0050675A    mov         eax,dword ptr [ebp+8]
 0050675D    mov         eax,dword ptr [eax-4]
 00506760    mov         edx,dword ptr [eax+254]
 00506766    inc         edx
 00506767    mov         eax,dword ptr [ebp-8]
 0050676A    call        TTabSheet.SetTop
 0050676F    push        36
 00506771    call        user32.GetSystemMetrics
 00506776    mov         edx,eax
 00506778    mov         eax,dword ptr [ebp-8]
 0050677B    call        TControl.SetWidth
 00506780    push        37
 00506782    call        user32.GetSystemMetrics
 00506787    mov         edx,eax
 00506789    mov         eax,dword ptr [ebp-8]
 0050678C    call        TControl.SetHeight
 00506791    mov         eax,dword ptr [ebp-8]
 00506794    mov         dl,byte ptr [ebp-1]
 00506797    mov         byte ptr [eax+188],dl;TCustomMDIMenuButton........FButtonStyle:TMDIButtonStyle
 0050679D    mov         eax,dword ptr [ebp+8]
 005067A0    mov         ecx,dword ptr [eax-4]
 005067A3    mov         dl,1
 005067A5    mov         eax,[00500CA4];TInternalMDIAction
 005067AA    call        TInternalMDIAction.Create;TInternalMDIAction.Create
 005067AF    mov         edx,eax
 005067B1    mov         eax,dword ptr [ebp-8]
 005067B4    call        TSpeedButton.SetAction
 005067B9    mov         eax,dword ptr [ebp+8]
 005067BC    mov         eax,dword ptr [eax-4]
 005067BF    mov         al,byte ptr [eax+227]
 005067C5    sub         al,1
>005067C7    jb          005067D4
>005067C9    je          0050687B
>005067CF    jmp         005068E1
 005067D4    mov         dl,byte ptr ds:[506938];0x6 gvar_00506938
 005067DA    mov         eax,dword ptr [ebp-8]
 005067DD    call        TImage.SetAnchors
 005067E2    mov         eax,dword ptr [ebp-8]
 005067E5    mov         al,byte ptr [eax+188];TCustomMDIMenuButton.........FButtonStyle:TMDIButtonStyle
 005067EB    sub         al,1
>005067ED    jb          005067FA
>005067EF    je          00506828
 005067F1    dec         al
>005067F3    je          00506855
>005067F5    jmp         005068E1
 005067FA    mov         eax,dword ptr [ebp+8]
 005067FD    mov         eax,dword ptr [eax-4]
 00506800    mov         edx,dword ptr [eax+48]
 00506803    mov         eax,dword ptr [ebp-8]
 00506806    mov         eax,dword ptr [eax+48];TCustomMDIMenuButton.Width:Integer
 00506809    lea         eax,[eax+eax*2]
 0050680C    sub         edx,eax
 0050680E    mov         eax,dword ptr [ebp+8]
 00506811    mov         eax,dword ptr [eax-4]
 00506814    sub         edx,dword ptr [eax+254]
 0050681A    dec         edx
 0050681B    mov         eax,dword ptr [ebp-8]
 0050681E    call        TTabSheet.SetLeft
>00506823    jmp         005068E1
 00506828    mov         eax,dword ptr [ebp+8]
 0050682B    mov         eax,dword ptr [eax-4]
 0050682E    mov         edx,dword ptr [eax+48]
 00506831    mov         eax,dword ptr [ebp-8]
 00506834    mov         eax,dword ptr [eax+48];TCustomMDIMenuButton.Width:Integer
 00506837    add         eax,eax
 00506839    sub         edx,eax
 0050683B    mov         eax,dword ptr [ebp+8]
 0050683E    mov         eax,dword ptr [eax-4]
 00506841    sub         edx,dword ptr [eax+254]
 00506847    dec         edx
 00506848    mov         eax,dword ptr [ebp-8]
 0050684B    call        TTabSheet.SetLeft
>00506850    jmp         005068E1
 00506855    mov         eax,dword ptr [ebp+8]
 00506858    mov         eax,dword ptr [eax-4]
 0050685B    mov         edx,dword ptr [eax+48]
 0050685E    mov         eax,dword ptr [ebp-8]
 00506861    sub         edx,dword ptr [eax+48]
 00506864    mov         eax,dword ptr [ebp+8]
 00506867    mov         eax,dword ptr [eax-4]
 0050686A    sub         edx,dword ptr [eax+254]
 00506870    dec         edx
 00506871    mov         eax,dword ptr [ebp-8]
 00506874    call        TTabSheet.SetLeft
>00506879    jmp         005068E1
 0050687B    mov         eax,dword ptr [ebp-8]
 0050687E    mov         al,byte ptr [eax+188];TCustomMDIMenuButton..........FButtonStyle:TMDIButtonStyle
 00506884    sub         al,1
>00506886    jb          00506890
>00506888    je          005068AF
 0050688A    dec         al
>0050688C    je          005068CC
>0050688E    jmp         005068E1
 00506890    mov         eax,dword ptr [ebp-8]
 00506893    mov         edx,dword ptr [eax+48];TCustomMDIMenuButton.Width:Integer
 00506896    add         edx,edx
 00506898    mov         eax,dword ptr [ebp+8]
 0050689B    mov         eax,dword ptr [eax-4]
 0050689E    add         edx,dword ptr [eax+254]
 005068A4    inc         edx
 005068A5    mov         eax,dword ptr [ebp-8]
 005068A8    call        TTabSheet.SetLeft
>005068AD    jmp         005068E1
 005068AF    mov         eax,dword ptr [ebp-8]
 005068B2    mov         edx,dword ptr [eax+48];TCustomMDIMenuButton.Width:Integer
 005068B5    mov         eax,dword ptr [ebp+8]
 005068B8    mov         eax,dword ptr [eax-4]
 005068BB    add         edx,dword ptr [eax+254]
 005068C1    inc         edx
 005068C2    mov         eax,dword ptr [ebp-8]
 005068C5    call        TTabSheet.SetLeft
>005068CA    jmp         005068E1
 005068CC    mov         eax,dword ptr [ebp+8]
 005068CF    mov         eax,dword ptr [eax-4]
 005068D2    mov         edx,dword ptr [eax+254]
 005068D8    inc         edx
 005068D9    mov         eax,dword ptr [ebp-8]
 005068DC    call        TTabSheet.SetLeft
 005068E1    mov         eax,dword ptr [ebp-8]
 005068E4    mov         edx,dword ptr [eax]
 005068E6    call        dword ptr [edx+3C];TSpeedButton.GetAction
 005068E9    mov         edx,dword ptr ds:[500CA4];TInternalMDIAction
 005068EF    call        @AsClass
 005068F4    mov         dword ptr [ebp-0C],eax
 005068F7    mov         eax,dword ptr [ebp-8]
 005068FA    mov         al,byte ptr [eax+188];TCustomMDIMenuButton...........FButtonStyle:TMDIButtonStyle
 00506900    sub         al,1
>00506902    jb          0050690C
>00506904    je          00506918
 00506906    dec         al
>00506908    je          00506924
>0050690A    jmp         0050692E
 0050690C    mov         eax,dword ptr [ebp-0C]
 0050690F    mov         byte ptr [eax+0B0],3;TInternalMDIAction.FMDIAction:TMDIAction
>00506916    jmp         0050692E
 00506918    mov         eax,dword ptr [ebp-0C]
 0050691B    mov         byte ptr [eax+0B0],2;TInternalMDIAction.FMDIAction:TMDIAction
>00506922    jmp         0050692E
 00506924    mov         eax,dword ptr [ebp-0C]
 00506927    mov         byte ptr [eax+0B0],1;TInternalMDIAction.FMDIAction:TMDIAction
 0050692E    mov         eax,dword ptr [ebp-8]
 00506931    mov         esp,ebp
 00506933    pop         ebp
 00506934    ret
end;*}

//0050693C
{*procedure sub_0050693C(?:?; ?:?);
begin
 0050693C    push        ebp
 0050693D    mov         ebp,esp
 0050693F    add         esp,0FFFFFFF8
 00506942    mov         dword ptr [ebp-8],edx
 00506945    mov         dword ptr [ebp-4],eax
 00506948    mov         eax,dword ptr [ebp-8]
 0050694B    test        byte ptr [eax+1C],8
>0050694F    jne         005069E1
 00506955    mov         eax,dword ptr [ebp-4]
 00506958    cmp         dword ptr [eax+318],0
>0050695F    jne         00506997
 00506961    push        ebp
 00506962    xor         eax,eax
 00506964    call        00506724
 00506969    pop         ecx
 0050696A    mov         edx,dword ptr [ebp-4]
 0050696D    mov         dword ptr [edx+314],eax
 00506973    push        ebp
 00506974    mov         al,1
 00506976    call        00506724
 0050697B    pop         ecx
 0050697C    mov         edx,dword ptr [ebp-4]
 0050697F    mov         dword ptr [edx+318],eax
 00506985    push        ebp
 00506986    mov         al,2
 00506988    call        00506724
 0050698D    pop         ecx
 0050698E    mov         edx,dword ptr [ebp-4]
 00506991    mov         dword ptr [edx+31C],eax
 00506997    mov         eax,dword ptr [ebp-4]
 0050699A    mov         eax,dword ptr [eax+314]
 005069A0    mov         edx,dword ptr [eax]
 005069A2    call        dword ptr [edx+3C]
 005069A5    mov         edx,dword ptr [ebp-8]
 005069A8    call        004C36D4
 005069AD    mov         eax,dword ptr [ebp-4]
 005069B0    mov         eax,dword ptr [eax+318]
 005069B6    mov         edx,dword ptr [eax]
 005069B8    call        dword ptr [edx+3C]
 005069BB    mov         edx,dword ptr [ebp-8]
 005069BE    call        004C36D4
 005069C3    mov         eax,dword ptr [ebp-4]
 005069C6    mov         eax,dword ptr [eax+31C]
 005069CC    mov         edx,dword ptr [eax]
 005069CE    call        dword ptr [edx+3C]
 005069D1    mov         edx,dword ptr [ebp-8]
 005069D4    call        004C36D4
 005069D9    mov         eax,dword ptr [ebp-4]
 005069DC    mov         edx,dword ptr [eax]
 005069DE    call        dword ptr [edx+7C]
 005069E1    pop         ecx
 005069E2    pop         ecx
 005069E3    pop         ebp
 005069E4    ret
end;*}

//005069E8
{*procedure sub_005069E8(?:?);
begin
 005069E8    push        ebp
 005069E9    mov         ebp,esp
 005069EB    push        ecx
 005069EC    mov         dword ptr [ebp-4],eax
 005069EF    mov         eax,dword ptr [ebp-4]
 005069F2    add         eax,314
 005069F7    call        FreeAndNil
 005069FC    mov         eax,dword ptr [ebp-4]
 005069FF    add         eax,318
 00506A04    call        FreeAndNil
 00506A09    mov         eax,dword ptr [ebp-4]
 00506A0C    add         eax,31C
 00506A11    call        FreeAndNil
 00506A16    pop         ecx
 00506A17    pop         ebp
 00506A18    ret
end;*}

//00506A1C
{*procedure sub_00506A1C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00506A1C    push        ebp
 00506A1D    mov         ebp,esp
 00506A1F    add         esp,0FFFFFFD4
 00506A22    push        esi
 00506A23    push        edi
 00506A24    mov         esi,dword ptr [ebp+8]
 00506A27    lea         edi,[ebp-1C]
 00506A2A    movs        dword ptr [edi],dword ptr [esi]
 00506A2B    movs        dword ptr [edi],dword ptr [esi]
 00506A2C    movs        dword ptr [edi],dword ptr [esi]
 00506A2D    movs        dword ptr [edi],dword ptr [esi]
 00506A2E    mov         dword ptr [ebp-0C],ecx
 00506A31    mov         dword ptr [ebp-8],edx
 00506A34    mov         dword ptr [ebp-4],eax
 00506A37    mov         eax,dword ptr [ebp-4]
 00506A3A    cmp         dword ptr [eax+314],0;TCustomActionMainMenuBar.FMinimizeBtn:TCustomMDIMenuButton
>00506A41    je          00506A9B
 00506A43    mov         eax,dword ptr [ebp+0C]
 00506A46    mov         eax,dword ptr [eax+8]
 00506A49    mov         edx,dword ptr [ebp-4]
 00506A4C    mov         edx,dword ptr [edx+314];TCustomActionMainMenuBar.FMinimizeBtn:TCustomMDIMenuButton
 00506A52    cmp         eax,dword ptr [edx+40];TCustomMDIMenuButton.Left:Integer
>00506A55    jle         00506A9B
 00506A57    mov         eax,dword ptr [ebp-4]
 00506A5A    mov         al,byte ptr [eax+227];TCustomActionMainMenuBar.FOrientation:TBarOrientation
 00506A60    sub         al,1
>00506A62    jb          00506A68
>00506A64    je          00506A7F
>00506A66    jmp         00506A9B
 00506A68    mov         eax,dword ptr [ebp-4]
 00506A6B    mov         eax,dword ptr [eax+314];TCustomActionMainMenuBar.FMinimizeBtn:TCustomMDIMenuButton
 00506A71    mov         eax,dword ptr [eax+40];TCustomMDIMenuButton.Left:Integer
 00506A74    sub         eax,2
 00506A77    mov         edx,dword ptr [ebp+0C]
 00506A7A    mov         dword ptr [edx+8],eax
>00506A7D    jmp         00506A9B
 00506A7F    lea         edx,[ebp-2C]
 00506A82    mov         eax,dword ptr [ebp-4]
 00506A85    mov         eax,dword ptr [eax+314];TCustomActionMainMenuBar.FMinimizeBtn:TCustomMDIMenuButton
 00506A8B    call        004CA6AC
 00506A90    mov         eax,dword ptr [ebp-24]
 00506A93    add         eax,2
 00506A96    mov         edx,dword ptr [ebp+0C]
 00506A99    mov         dword ptr [edx],eax
 00506A9B    mov         eax,dword ptr [ebp+18]
 00506A9E    push        eax
 00506A9F    mov         eax,dword ptr [ebp+14]
 00506AA2    push        eax
 00506AA3    mov         eax,dword ptr [ebp+10]
 00506AA6    push        eax
 00506AA7    mov         eax,dword ptr [ebp+0C]
 00506AAA    push        eax
 00506AAB    lea         eax,[ebp-1C]
 00506AAE    push        eax
 00506AAF    mov         ecx,dword ptr [ebp-0C]
 00506AB2    mov         edx,dword ptr [ebp-8]
 00506AB5    mov         eax,dword ptr [ebp-4]
 00506AB8    call        0051028C
 00506ABD    pop         edi
 00506ABE    pop         esi
 00506ABF    mov         esp,ebp
 00506AC1    pop         ebp
 00506AC2    ret         14
end;*}

//00506AC8
procedure sub_00506AC8;
begin
{*
 00506AC8    push        ebp
 00506AC9    mov         ebp,esp
 00506ACB    push        ecx
 00506ACC    mov         dword ptr [ebp-4],eax
 00506ACF    mov         eax,dword ptr [ebp-4]
 00506AD2    call        0050FFC0
 00506AD7    mov         eax,dword ptr [ebp-4]
 00506ADA    cmp         dword ptr [eax+210],0;TCustomActionMainMenuBar.FActionClient:TActionClient
>00506AE1    je          00506AFD
 00506AE3    mov         eax,dword ptr [ebp-4]
 00506AE6    mov         eax,dword ptr [eax+310];TCustomActionMainMenuBar.FWindowMenu:String
 00506AEC    call        @DynArrayLength
 00506AF1    test        eax,eax
>00506AF3    jle         00506AFD
 00506AF5    mov         eax,dword ptr [ebp-4]
 00506AF8    call        005063F0
 00506AFD    pop         ecx
 00506AFE    pop         ebp
 00506AFF    ret
*}
end;

//00506B00
{*procedure TCustomActionMainMenuBar.WMSysCommand(?:?);
begin
 00506B00    push        ebp
 00506B01    mov         ebp,esp
 00506B03    add         esp,0FFFFFFF4
 00506B06    mov         dword ptr [ebp-8],edx
 00506B09    mov         dword ptr [ebp-4],eax
 00506B0C    mov         eax,dword ptr [ebp-4]
 00506B0F    cmp         byte ptr [eax+296],0;TCustomActionMainMenuBar.FInMenuLoop:Boolean
>00506B16    jne         00506C28
 00506B1C    mov         eax,dword ptr [ebp-4]
 00506B1F    mov         edx,dword ptr [eax]
 00506B21    call        dword ptr [edx+50];TImage.GetEnabled
 00506B24    test        al,al
>00506B26    je          00506C28
 00506B2C    mov         eax,dword ptr [ebp-4]
 00506B2F    cmp         byte ptr [eax+1A6],0;TCustomActionMainMenuBar.FShowing:Boolean
>00506B36    je          00506C28
 00506B3C    mov         eax,dword ptr [ebp-8]
 00506B3F    mov         eax,dword ptr [eax+4]
 00506B42    and         eax,0FFF0
 00506B47    cmp         eax,0F100
>00506B4C    jne         00506C28
 00506B52    mov         eax,dword ptr [ebp-8]
 00506B55    cmp         word ptr [eax+8],20
>00506B5A    je          00506C28
 00506B60    mov         eax,dword ptr [ebp-8]
 00506B63    cmp         word ptr [eax+8],2D
>00506B68    je          00506C28
 00506B6E    call        user32.GetCapture
 00506B73    test        eax,eax
>00506B75    jne         00506C28
 00506B7B    mov         eax,dword ptr [ebp-8]
 00506B7E    cmp         word ptr [eax+8],0
>00506B83    je          00506BB7
 00506B85    mov         edx,dword ptr [ebp-8]
 00506B88    mov         dx,word ptr [edx+8]
 00506B8C    mov         eax,dword ptr [ebp-4]
 00506B8F    call        00510C9C
 00506B94    mov         dword ptr [ebp-0C],eax
 00506B97    cmp         dword ptr [ebp-0C],0
>00506B9B    je          00506BF1
 00506B9D    mov         eax,dword ptr [ebp-0C]
 00506BA0    mov         eax,dword ptr [eax+40]
 00506BA3    mov         edx,dword ptr [eax]
 00506BA5    call        dword ptr [edx+0E0]
 00506BAB    mov         eax,dword ptr [ebp-8]
 00506BAE    mov         dword ptr [eax+0C],1
>00506BB5    jmp         00506C28
 00506BB7    mov         eax,dword ptr [ebp-4]
 00506BBA    cmp         byte ptr [eax+28A],0;TCustomActionMainMenuBar.FCancelMenu:Boolean
>00506BC1    jne         00506BF1
 00506BC3    mov         eax,dword ptr [ebp-4]
 00506BC6    call        0051105C
 00506BCB    mov         dword ptr [ebp-0C],eax
 00506BCE    mov         dl,1
 00506BD0    mov         eax,dword ptr [ebp-4]
 00506BD3    mov         ecx,dword ptr [eax]
 00506BD5    call        dword ptr [ecx+138];TActionMainMenuBar.SetPersistentHotKeys
 00506BDB    cmp         dword ptr [ebp-0C],0
>00506BDF    je          00506BF1
 00506BE1    mov         eax,dword ptr [ebp-0C]
 00506BE4    mov         eax,dword ptr [eax+40]
 00506BE7    mov         dl,1
 00506BE9    mov         ecx,dword ptr [eax]
 00506BEB    call        dword ptr [ecx+0D8]
 00506BF1    mov         eax,dword ptr [ebp-4]
 00506BF4    cmp         byte ptr [eax+28A],0;TCustomActionMainMenuBar.FCancelMenu:Boolean
>00506BFB    jne         00506C14
 00506BFD    push        0
 00506BFF    push        0
 00506C01    push        0B410
 00506C06    mov         eax,dword ptr [ebp-4]
 00506C09    call        TWinControl.GetHandle
 00506C0E    push        eax
 00506C0F    call        user32.PostMessageA
 00506C14    mov         eax,dword ptr [ebp-4]
 00506C17    mov         byte ptr [eax+28A],0;TCustomActionMainMenuBar.FCancelMenu:Boolean
 00506C1E    mov         eax,dword ptr [ebp-8]
 00506C21    mov         dword ptr [eax+0C],1
 00506C28    mov         esp,ebp
 00506C2A    pop         ebp
 00506C2B    ret
end;*}

//00506C2C
{*procedure TCustomActionMainMenuBar.WMSysKeyDown(?:?);
begin
 00506C2C    push        ebp
 00506C2D    mov         ebp,esp
 00506C2F    add         esp,0FFFFFFF8
 00506C32    mov         dword ptr [ebp-8],edx
 00506C35    mov         dword ptr [ebp-4],eax
 00506C38    mov         eax,dword ptr [ebp-8]
 00506C3B    cmp         word ptr [eax+4],12
 00506C40    sete        al
 00506C43    mov         edx,dword ptr [ebp-4]
 00506C46    mov         byte ptr [edx+28A],al;TCustomActionMainMenuBar.FCancelMenu:Boolean
 00506C4C    mov         edx,dword ptr [ebp-8]
 00506C4F    mov         eax,dword ptr [ebp-4]
 00506C52    call        TCustomActionMenuBar.WMSysKeyDown
 00506C57    pop         ecx
 00506C58    pop         ecx
 00506C59    pop         ebp
 00506C5A    ret
end;*}

//00506C5C
{*procedure TCustomActionMainMenuBar.WMSysKeyUp(?:?);
begin
 00506C5C    push        ebp
 00506C5D    mov         ebp,esp
 00506C5F    add         esp,0FFFFFFF8
 00506C62    mov         dword ptr [ebp-8],edx
 00506C65    mov         dword ptr [ebp-4],eax
 00506C68    mov         eax,dword ptr [ebp-8]
 00506C6B    cmp         word ptr [eax+4],12
 00506C70    sete        al
 00506C73    mov         edx,dword ptr [ebp-4]
 00506C76    mov         byte ptr [edx+28A],al;TCustomActionMainMenuBar.FCancelMenu:Boolean
 00506C7C    mov         edx,dword ptr [ebp-8]
 00506C7F    mov         eax,dword ptr [ebp-4]
 00506C82    call        TWinControl.WMSysKeyUp
 00506C87    pop         ecx
 00506C88    pop         ecx
 00506C89    pop         ebp
 00506C8A    ret
end;*}

//00506C8C
{*function sub_00506C8C(?:?; ?:?):?;
begin
 00506C8C    push        ebp
 00506C8D    mov         ebp,esp
 00506C8F    add         esp,0FFFFFFF4
 00506C92    mov         dword ptr [ebp-8],edx
 00506C95    mov         dword ptr [ebp-4],eax
 00506C98    mov         eax,dword ptr [ebp-8]
 00506C9B    mov         eax,dword ptr [eax]
 00506C9D    add         eax,0FFFF5000
 00506CA2    sub         eax,2
>00506CA5    jae         00506CE8
 00506CA7    mov         eax,dword ptr [ebp-4]
 00506CAA    cmp         byte ptr [eax+296],0
>00506CB1    je          00506CBE
 00506CB3    mov         eax,dword ptr [ebp-4]
 00506CB6    mov         edx,dword ptr [eax]
 00506CB8    call        dword ptr [edx+17C]
 00506CBE    mov         eax,dword ptr [ebp-4]
 00506CC1    cmp         byte ptr [eax+224],0
>00506CC8    je          00506CD4
 00506CCA    mov         eax,[0055B168];^gvar_00541A9C
 00506CCF    cmp         dword ptr [eax],0
>00506CD2    jne         00506CE8
 00506CD4    mov         eax,dword ptr [ebp-8]
 00506CD7    cmp         dword ptr [eax],0B001
 00506CDD    sete        dl
 00506CE0    mov         eax,dword ptr [ebp-4]
 00506CE3    call        005062AC
 00506CE8    mov         byte ptr [ebp-9],0
 00506CEC    mov         al,byte ptr [ebp-9]
 00506CEF    mov         esp,ebp
 00506CF1    pop         ebp
 00506CF2    ret
end;*}

//00506CF4
procedure TActionMainMenuBar.SetShadows(Value:Boolean);
begin
{*
 00506CF4    push        ebp
 00506CF5    mov         ebp,esp
 00506CF7    add         esp,0FFFFFFF8
 00506CFA    mov         byte ptr [ebp-5],dl
 00506CFD    mov         dword ptr [ebp-4],eax
 00506D00    mov         eax,dword ptr [ebp-4]
 00506D03    mov         al,byte ptr [eax+30E];TActionMainMenuBar.FShadows:Boolean
 00506D09    cmp         al,byte ptr [ebp-5]
>00506D0C    je          00506D27
 00506D0E    mov         al,byte ptr [ebp-5]
 00506D11    mov         edx,dword ptr [ebp-4]
 00506D14    mov         byte ptr [edx+30E],al;TActionMainMenuBar.FShadows:Boolean
 00506D1A    mov         eax,dword ptr [ebp-4]
 00506D1D    add         eax,2F8;TActionMainMenuBar.FCachedMenu:TCustomActionPopupMenu
 00506D22    call        FreeAndNil
 00506D27    pop         ecx
 00506D28    pop         ecx
 00506D29    pop         ebp
 00506D2A    ret
*}
end;

//00506D2C
procedure TCustomActionMainMenuBar.TrackMenu;
begin
{*
 00506D2C    push        ebp
 00506D2D    mov         ebp,esp
 00506D2F    push        ecx
 00506D30    mov         dword ptr [ebp-4],eax
 00506D33    mov         eax,dword ptr [ebp-4]
 00506D36    call        TCustomActionMainMenuBar.RefreshMDIMenu
 00506D3B    xor         eax,eax
 00506D3D    push        ebp
 00506D3E    push        506D79
 00506D43    push        dword ptr fs:[eax]
 00506D46    mov         dword ptr fs:[eax],esp
 00506D49    mov         eax,dword ptr [ebp-4]
 00506D4C    call        TCustomActionMenuBar.TrackMenu
 00506D51    xor         eax,eax
 00506D53    pop         edx
 00506D54    pop         ecx
 00506D55    pop         ecx
 00506D56    mov         dword ptr fs:[eax],edx
 00506D59    push        506D80
 00506D5E    mov         eax,dword ptr [ebp-4]
 00506D61    add         eax,308
 00506D66    call        FreeAndNil
 00506D6B    mov         eax,dword ptr [ebp-4]
 00506D6E    add         eax,320
 00506D73    call        FreeAndNil
 00506D78    ret
>00506D79    jmp         @HandleFinally
>00506D7E    jmp         00506D5E
 00506D80    pop         ecx
 00506D81    pop         ebp
 00506D82    ret
*}
end;

//00506D84
constructor TCustomMenuItem.Create(AOwner:TComponent);
begin
{*
 00506D84    push        ebp
 00506D85    mov         ebp,esp
 00506D87    add         esp,0FFFFFFE4
 00506D8A    test        dl,dl
>00506D8C    je          00506D96
 00506D8E    add         esp,0FFFFFFF0
 00506D91    call        @ClassCreate
 00506D96    mov         dword ptr [ebp-0C],ecx
 00506D99    mov         byte ptr [ebp-5],dl
 00506D9C    mov         dword ptr [ebp-4],eax
 00506D9F    mov         ecx,dword ptr [ebp-0C]
 00506DA2    xor         edx,edx
 00506DA4    mov         eax,dword ptr [ebp-4]
 00506DA7    call        TCustomActionControl.Create
 00506DAC    mov         eax,dword ptr [ebp-4]
 00506DAF    mov         edx,dword ptr ds:[506E3C];0x2 gvar_00506E3C
 00506DB5    not         edx
 00506DB7    and         edx,dword ptr [eax+50];TCustomMenuItem.FControlStyle:TControlStyle
 00506DBA    mov         eax,dword ptr [ebp-4]
 00506DBD    mov         dword ptr [eax+50],edx;TCustomMenuItem.FControlStyle:TControlStyle
 00506DC0    push        0
 00506DC2    lea         eax,[ebp-1C]
 00506DC5    push        eax
 00506DC6    mov         ecx,0A
 00506DCB    xor         edx,edx
 00506DCD    mov         eax,2
 00506DD2    call        Rect
 00506DD7    lea         edx,[ebp-1C]
 00506DDA    mov         eax,dword ptr [ebp-4]
 00506DDD    call        00514B94
 00506DE2    mov         edx,0A
 00506DE7    mov         eax,dword ptr [ebp-4]
 00506DEA    call        00514C04
 00506DEF    mov         eax,dword ptr [ebp-0C]
 00506DF2    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 00506DF8    call        @IsClass
 00506DFD    test        al,al
>00506DFF    je          00506E0D
 00506E01    mov         eax,dword ptr [ebp-4]
 00506E04    mov         edx,dword ptr [ebp-0C]
 00506E07    mov         dword ptr [eax+1AC],edx;TCustomMenuItem.FMenu:TCustomActionMenuBar
 00506E0D    push        0F
 00506E0F    call        user32.GetSystemMetrics
 00506E14    mov         edx,dword ptr [ebp-4]
 00506E17    mov         dword ptr [edx+1C4],eax;TCustomMenuItem.FCYMenu:Integer
 00506E1D    mov         eax,dword ptr [ebp-4]
 00506E20    cmp         byte ptr [ebp-5],0
>00506E24    je          00506E35
 00506E26    call        @AfterConstruction
 00506E2B    pop         dword ptr fs:[0]
 00506E32    add         esp,0C
 00506E35    mov         eax,dword ptr [ebp-4]
 00506E38    mov         esp,ebp
 00506E3A    pop         ebp
 00506E3B    ret
*}
end;

//00506E40
destructor TCustomMenuItem.Destroy;
begin
{*
 00506E40    push        ebp
 00506E41    mov         ebp,esp
 00506E43    add         esp,0FFFFFFF8
 00506E46    call        @BeforeDestruction
 00506E4B    mov         byte ptr [ebp-5],dl
 00506E4E    mov         dword ptr [ebp-4],eax
 00506E51    mov         eax,dword ptr [ebp-4]
 00506E54    cmp         dword ptr [eax+16C],0
>00506E5B    je          00506E8C
 00506E5D    mov         eax,dword ptr [ebp-4]
 00506E60    mov         eax,dword ptr [eax+16C]
 00506E66    mov         eax,dword ptr [eax+18]
 00506E69    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 00506E6F    call        @IsClass
 00506E74    test        al,al
>00506E76    je          00506E8C
 00506E78    mov         eax,dword ptr [ebp-4]
 00506E7B    mov         eax,dword ptr [eax+16C]
 00506E81    mov         eax,dword ptr [eax+18]
 00506E84    mov         edx,dword ptr [eax]
 00506E86    call        dword ptr [edx+17C]
 00506E8C    mov         dl,byte ptr [ebp-5]
 00506E8F    and         dl,0FC
 00506E92    mov         eax,dword ptr [ebp-4]
 00506E95    call        TCustomActionControl.Destroy
 00506E9A    cmp         byte ptr [ebp-5],0
>00506E9E    jle         00506EA8
 00506EA0    mov         eax,dword ptr [ebp-4]
 00506EA3    call        @ClassDestroy
 00506EA8    pop         ecx
 00506EA9    pop         ecx
 00506EAA    pop         ebp
 00506EAB    ret
*}
end;

//00506EAC
procedure sub_00506EAC;
begin
{*
 00506EAC    push        ebp
 00506EAD    mov         ebp,esp
 00506EAF    add         esp,0FFFFFFF0
 00506EB2    mov         dword ptr [ebp-4],eax
 00506EB5    mov         eax,dword ptr [ebp-4]
 00506EB8    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>00506EBF    je          00506FC2
 00506EC5    mov         eax,dword ptr [ebp-4]
 00506EC8    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00506ECE    call        0050CB98
 00506ED3    test        al,al
>00506ED5    je          00506FC2
 00506EDB    mov         eax,dword ptr [ebp-4]
 00506EDE    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00506EE4    call        TActionClient.GetItems
 00506EE9    call        0050DCD0
 00506EEE    test        eax,eax
>00506EF0    je          00506FC2
 00506EF6    mov         eax,dword ptr [ebp-4]
 00506EF9    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 00506EFF    mov         dword ptr [ebp-8],eax
 00506F02    mov         eax,dword ptr [ebp-4]
 00506F05    cmp         byte ptr [eax+18A],0;TCustomMenuItem.FSelected:Boolean
>00506F0C    je          00506F2B
 00506F0E    mov         eax,dword ptr [ebp-4]
 00506F11    call        0051541C
 00506F16    call        TActionToolBar.GetColorMap
 00506F1B    mov         edx,dword ptr [eax+64]
 00506F1E    mov         eax,dword ptr [ebp-8]
 00506F21    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00506F24    call        TPen.SetColor
>00506F29    jmp         00506F46
 00506F2B    mov         eax,dword ptr [ebp-4]
 00506F2E    call        0051541C
 00506F33    call        TActionToolBar.GetColorMap
 00506F38    mov         edx,dword ptr [eax+50]
 00506F3B    mov         eax,dword ptr [ebp-8]
 00506F3E    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00506F41    call        TPen.SetColor
 00506F46    mov         eax,dword ptr [ebp-8]
 00506F49    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00506F4C    call        TPen.GetColor
 00506F51    mov         edx,eax
 00506F53    mov         eax,dword ptr [ebp-8]
 00506F56    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00506F59    call        TBrush.SetColor
 00506F5E    mov         eax,dword ptr [ebp-4]
 00506F61    cmp         byte ptr [eax+18A],0;TCustomMenuItem.FSelected:Boolean
>00506F68    je          00506F8C
 00506F6A    mov         eax,dword ptr [ebp-4]
 00506F6D    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 00506F73    call        TActionToolBar.GetColorMap
 00506F78    mov         edx,dword ptr [eax+64]
 00506F7B    mov         eax,dword ptr [ebp-4]
 00506F7E    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 00506F84    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00506F87    call        TPen.SetColor
 00506F8C    push        3
 00506F8E    lea         ecx,[ebp-10]
 00506F91    mov         eax,dword ptr [ebp-4]
 00506F94    mov         edx,dword ptr [eax+4C];TCustomMenuItem.Height:Integer
 00506F97    sar         edx,1
>00506F99    jns         00506F9E
 00506F9B    adc         edx,0
 00506F9E    sub         edx,3
 00506FA1    mov         eax,dword ptr [ebp-4]
 00506FA4    mov         eax,dword ptr [eax+48];TCustomMenuItem.Width:Integer
 00506FA7    sub         eax,0B
 00506FAA    call        Point
 00506FAF    lea         ecx,[ebp-10]
 00506FB2    mov         dl,1
 00506FB4    mov         eax,dword ptr [ebp-4]
 00506FB7    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 00506FBD    call        004F9148
 00506FC2    mov         esp,ebp
 00506FC4    pop         ebp
 00506FC5    ret
*}
end;

//00506FC8
procedure sub_00506FC8;
begin
{*
 00506FC8    push        ebp
 00506FC9    mov         ebp,esp
 00506FCB    push        ecx
 00506FCC    mov         dword ptr [ebp-4],eax
 00506FCF    mov         eax,dword ptr [ebp-4]
 00506FD2    call        005143A8
 00506FD7    mov         eax,dword ptr [ebp-4]
 00506FDA    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00506FE0    call        0050CB98
 00506FE5    test        al,al
>00506FE7    je          00506FF4
 00506FE9    mov         eax,dword ptr [ebp-4]
 00506FEC    mov         edx,dword ptr [eax]
 00506FEE    call        dword ptr [edx+0E8];TCustomMenuItem.sub_00506EAC
 00506FF4    mov         eax,dword ptr [ebp-4]
 00506FF7    call        0051541C
 00506FFC    mov         edx,dword ptr [eax]
 00506FFE    call        dword ptr [edx+104]
 00507004    test        al,al
>00507006    je          00507028
 00507008    mov         eax,dword ptr [ebp-4]
 0050700B    call        0051541C
 00507010    mov         edx,dword ptr [eax]
 00507012    call        dword ptr [edx+104]
 00507018    test        al,al
>0050701A    je          00507033
 0050701C    mov         eax,dword ptr [ebp-4]
 0050701F    cmp         byte ptr [eax+18A],0;TCustomMenuItem.FSelected:Boolean
>00507026    jne         00507033
 00507028    mov         eax,dword ptr [ebp-4]
 0050702B    mov         edx,dword ptr [eax]
 0050702D    call        dword ptr [edx+0EC];TCustomMenuItem.sub_00507038
 00507033    pop         ecx
 00507034    pop         ebp
 00507035    ret
*}
end;

//00507038
procedure sub_00507038;
begin
{*
 00507038    push        ebp
 00507039    mov         ebp,esp
 0050703B    add         esp,0FFFFFFEC
 0050703E    mov         dword ptr [ebp-4],eax
 00507041    lea         edx,[ebp-14]
 00507044    mov         eax,dword ptr [ebp-4]
 00507047    mov         ecx,dword ptr [eax]
 00507049    call        dword ptr [ecx+44];TCustomMenuItem.sub_004CA73C
 0050704C    mov         eax,dword ptr [ebp-4]
 0050704F    test        byte ptr [eax+1A8],2;TCustomMenuItem.FEdges:TMenuEdges
>00507056    je          005070A1
 00507058    mov         eax,dword ptr [ebp-4]
 0050705B    call        0051541C
 00507060    call        TActionToolBar.GetColorMap
 00507065    mov         edx,dword ptr [eax+58]
 00507068    mov         eax,dword ptr [ebp-4]
 0050706B    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 00507071    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00507074    call        TPen.SetColor
 00507079    mov         ecx,dword ptr [ebp-10]
 0050707C    mov         edx,dword ptr [ebp-14]
 0050707F    mov         eax,dword ptr [ebp-4]
 00507082    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 00507088    call        TCanvas.MoveTo
 0050708D    mov         ecx,dword ptr [ebp-10]
 00507090    mov         edx,dword ptr [ebp-0C]
 00507093    mov         eax,dword ptr [ebp-4]
 00507096    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 0050709C    call        TCanvas.LineTo
 005070A1    mov         eax,dword ptr [ebp-4]
 005070A4    test        byte ptr [eax+1A8],8;TCustomMenuItem.FEdges:TMenuEdges
>005070AB    je          005070FC
 005070AD    mov         eax,dword ptr [ebp-4]
 005070B0    call        0051541C
 005070B5    call        TActionToolBar.GetColorMap
 005070BA    call        TXPColorMap.GetUnusedColor
 005070BF    mov         edx,eax
 005070C1    mov         eax,dword ptr [ebp-4]
 005070C4    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 005070CA    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 005070CD    call        TPen.SetColor
 005070D2    mov         ecx,dword ptr [ebp-8]
 005070D5    dec         ecx
 005070D6    mov         edx,dword ptr [ebp-14]
 005070D9    mov         eax,dword ptr [ebp-4]
 005070DC    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 005070E2    call        TCanvas.MoveTo
 005070E7    mov         ecx,dword ptr [ebp-8]
 005070EA    dec         ecx
 005070EB    mov         edx,dword ptr [ebp-0C]
 005070EE    mov         eax,dword ptr [ebp-4]
 005070F1    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 005070F7    call        TCanvas.LineTo
 005070FC    mov         eax,dword ptr [ebp-4]
 005070FF    test        byte ptr [eax+1A8],4;TCustomMenuItem.FEdges:TMenuEdges
>00507106    je          00507117
 00507108    mov         eax,dword ptr [ebp-4]
 0050710B    test        byte ptr [eax+1A8],2;TCustomMenuItem.FEdges:TMenuEdges
>00507112    je          00507117
 00507114    inc         dword ptr [ebp-10]
 00507117    mov         esp,ebp
 00507119    pop         ebp
 0050711A    ret
*}
end;

//0050711C
procedure TCustomMenuItem.sub_004CCCAC;
begin
{*
 0050711C    push        ebp
 0050711D    mov         ebp,esp
 0050711F    add         esp,0FFFFFFF8
 00507122    mov         dword ptr [ebp-4],eax
 00507125    mov         eax,dword ptr [ebp-4]
 00507128    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 0050712E    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00507134    mov         eax,dword ptr [eax+2A4];TCustomActionMenuBar.FParentForm:TCustomForm
 0050713A    mov         dword ptr [ebp-8],eax
 0050713D    cmp         dword ptr [ebp-8],0
>00507141    je          0050714E
 00507143    mov         eax,dword ptr [ebp-8]
 00507146    mov         edx,dword ptr [eax]
 00507148    call        dword ptr [edx+0C4];TCustomForm.sub_004EEBF4
 0050714E    pop         ecx
 0050714F    pop         ecx
 00507150    pop         ebp
 00507151    ret
*}
end;

//00507154
procedure sub_00507154;
begin
{*
 00507154    push        ebp
 00507155    mov         ebp,esp
 00507157    add         esp,0FFFFFFF8
 0050715A    mov         dword ptr [ebp-4],eax
 0050715D    mov         dl,1
 0050715F    mov         eax,dword ptr [ebp-4]
 00507162    mov         ecx,dword ptr [eax]
 00507164    call        dword ptr [ecx+0D8];TCustomMenuItem.sub_005073D8
 0050716A    mov         eax,dword ptr [ebp-4]
 0050716D    mov         byte ptr [eax+1B0],0;TCustomMenuItem.FMouseSelected:Boolean
 00507174    mov         eax,dword ptr [ebp-4]
 00507177    mov         edx,dword ptr [eax]
 00507179    call        dword ptr [edx+3C];TCustomMenuItem.sub_005153C4
 0050717C    mov         edx,dword ptr ds:[4DA408];TCustomAction
 00507182    call        @IsClass
 00507187    test        al,al
>00507189    je          005071B5
 0050718B    mov         eax,dword ptr [ebp-4]
 0050718E    mov         edx,dword ptr [eax]
 00507190    call        dword ptr [edx+3C];TCustomMenuItem.sub_005153C4
 00507193    mov         dword ptr [ebp-8],eax
 00507196    mov         eax,dword ptr [ebp-8]
 00507199    cmp         dword ptr [eax+6C],0
>0050719D    jle         005071B5
 0050719F    mov         eax,dword ptr [ebp-8]
 005071A2    cmp         byte ptr [eax+95],0
>005071A9    jne         005071B5
 005071AB    mov         dl,1
 005071AD    mov         eax,dword ptr [ebp-8]
 005071B0    call        TAction.SetChecked
 005071B5    mov         eax,dword ptr [ebp-4]
 005071B8    call        00514CC8
 005071BD    pop         ecx
 005071BE    pop         ecx
 005071BF    pop         ebp
 005071C0    ret
*}
end;

//005071C4
{*procedure sub_005071C4(?:TCustomMenuItem; ?:?);
begin
 005071C4    push        ebp
 005071C5    mov         ebp,esp
 005071C7    add         esp,0FFFFFFF0
 005071CA    mov         byte ptr [ebp-5],dl
 005071CD    mov         dword ptr [ebp-4],eax
 005071D0    mov         al,byte ptr [ebp-5]
 005071D3    mov         edx,dword ptr [ebp-4]
 005071D6    cmp         al,byte ptr [edx+1A8];TCustomMenuItem.FEdges:TMenuEdges
>005071DC    je          00507286
 005071E2    mov         eax,dword ptr [ebp-4]
 005071E5    mov         eax,dword ptr [eax+4C];TCustomMenuItem.Height:Integer
 005071E8    mov         dword ptr [ebp-0C],eax
 005071EB    test        byte ptr [ebp-5],2
>005071EF    je          00507202
 005071F1    mov         eax,dword ptr [ebp-4]
 005071F4    test        byte ptr [eax+1A8],2;TCustomMenuItem.FEdges:TMenuEdges
>005071FB    jne         00507202
 005071FD    inc         dword ptr [ebp-0C]
>00507200    jmp         00507217
 00507202    test        byte ptr [ebp-5],2
>00507206    jne         00507217
 00507208    mov         eax,dword ptr [ebp-4]
 0050720B    test        byte ptr [eax+1A8],2;TCustomMenuItem.FEdges:TMenuEdges
>00507212    je          00507217
 00507214    dec         dword ptr [ebp-0C]
 00507217    test        byte ptr [ebp-5],8
>0050721B    je          0050722E
 0050721D    mov         eax,dword ptr [ebp-4]
 00507220    test        byte ptr [eax+1A8],8;TCustomMenuItem.FEdges:TMenuEdges
>00507227    jne         0050722E
 00507229    inc         dword ptr [ebp-0C]
>0050722C    jmp         00507243
 0050722E    test        byte ptr [ebp-5],8
>00507232    jne         00507243
 00507234    mov         eax,dword ptr [ebp-4]
 00507237    test        byte ptr [eax+1A8],8;TCustomMenuItem.FEdges:TMenuEdges
>0050723E    je          00507243
 00507240    dec         dword ptr [ebp-0C]
 00507243    mov         eax,dword ptr [ebp-4]
 00507246    call        0051541C
 0050724B    call        00511000
 00507250    mov         dword ptr [ebp-10],eax
 00507253    cmp         dword ptr [ebp-10],0
>00507257    je          00507267
 00507259    mov         eax,dword ptr [ebp-10]
 0050725C    mov         eax,dword ptr [eax+40]
 0050725F    cmp         eax,dword ptr [ebp-4]
>00507262    jne         00507267
 00507264    inc         dword ptr [ebp-0C]
 00507267    mov         al,byte ptr [ebp-5]
 0050726A    mov         edx,dword ptr [ebp-4]
 0050726D    mov         byte ptr [edx+1A8],al;TCustomMenuItem.FEdges:TMenuEdges
 00507273    mov         edx,dword ptr [ebp-0C]
 00507276    mov         eax,dword ptr [ebp-4]
 00507279    call        TControl.SetHeight
 0050727E    mov         eax,dword ptr [ebp-4]
 00507281    mov         edx,dword ptr [eax]
 00507283    call        dword ptr [edx+7C];TCustomMenuItem.sub_004CB6E8
 00507286    mov         esp,ebp
 00507288    pop         ebp
 00507289    ret
end;*}

//0050728C
{*procedure TCustomMenuItem.CMMouseEnter(?:?);
begin
 0050728C    push        ebp
 0050728D    mov         ebp,esp
 0050728F    add         esp,0FFFFFFF4
 00507292    mov         dword ptr [ebp-8],edx
 00507295    mov         dword ptr [ebp-4],eax
 00507298    mov         edx,dword ptr [ebp-8]
 0050729B    mov         eax,dword ptr [ebp-4]
 0050729E    call        TControl.CMMouseEnter
 005072A3    mov         eax,dword ptr [ebp-4]
 005072A6    cmp         byte ptr [eax+5D],1;TCustomMenuItem.FDragMode:TDragMode
>005072AA    je          00507358
 005072B0    mov         eax,dword ptr [ebp-4]
 005072B3    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>005072BA    je          005072CF
 005072BC    mov         eax,dword ptr [ebp-4]
 005072BF    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 005072C5    cmp         dword ptr [eax+18],0;TActionClientItem.FChildActionBar:TCustomActionBar
>005072C9    jne         00507358
 005072CF    mov         eax,dword ptr [ebp-4]
 005072D2    test        byte ptr [eax+1C],10;TCustomMenuItem.FComponentState:TComponentState
>005072D6    je          005072E7
 005072D8    mov         dl,1
 005072DA    mov         eax,dword ptr [ebp-4]
 005072DD    mov         ecx,dword ptr [eax]
 005072DF    call        dword ptr [ecx+0D8];TCustomMenuItem.sub_005073D8
>005072E5    jmp         00507358
 005072E7    mov         eax,dword ptr [ebp-4]
 005072EA    mov         edx,dword ptr [eax]
 005072EC    call        dword ptr [edx+0C8];TCustomMenuItem.sub_005152A0
 005072F2    test        al,al
>005072F4    jne         00507358
 005072F6    mov         eax,dword ptr [ebp-4]
 005072F9    mov         edx,dword ptr [eax]
 005072FB    call        dword ptr [edx+50];TImage.GetEnabled
 005072FE    test        al,al
>00507300    je          0050732F
 00507302    mov         dl,1
 00507304    mov         eax,dword ptr [ebp-4]
 00507307    mov         ecx,dword ptr [eax]
 00507309    call        dword ptr [ecx+0D8];TCustomMenuItem.sub_005073D8
 0050730F    mov         eax,dword ptr [ebp-4]
 00507312    call        0051541C
 00507317    mov         edx,dword ptr [eax]
 00507319    call        dword ptr [edx+104]
 0050731F    test        al,al
>00507321    jne         00507358
 00507323    mov         eax,dword ptr [ebp-4]
 00507326    mov         byte ptr [eax+1B0],1;TCustomMenuItem.FMouseSelected:Boolean
>0050732D    jmp         00507358
 0050732F    mov         eax,dword ptr [ebp-4]
 00507332    cmp         dword ptr [eax+1AC],0;TCustomMenuItem.FMenu:TCustomActionMenuBar
>00507339    je          00507358
 0050733B    mov         eax,dword ptr [ebp-4]
 0050733E    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 00507344    mov         dword ptr [ebp-0C],eax
 00507347    mov         eax,dword ptr [ebp-0C]
 0050734A    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00507350    xor         edx,edx
 00507352    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 00507358    mov         esp,ebp
 0050735A    pop         ebp
 0050735B    ret
end;*}

//0050735C
{*procedure TCustomMenuItem.CMTextChanged(?:?);
begin
 0050735C    push        ebp
 0050735D    mov         ebp,esp
 0050735F    add         esp,0FFFFFFF0
 00507362    xor         ecx,ecx
 00507364    mov         dword ptr [ebp-0C],ecx
 00507367    mov         dword ptr [ebp-10],ecx
 0050736A    mov         dword ptr [ebp-8],edx
 0050736D    mov         dword ptr [ebp-4],eax
 00507370    xor         eax,eax
 00507372    push        ebp
 00507373    push        5073CD
 00507378    push        dword ptr fs:[eax]
 0050737B    mov         dword ptr fs:[eax],esp
 0050737E    mov         edx,dword ptr [ebp-8]
 00507381    mov         eax,dword ptr [ebp-4]
 00507384    call        TCustomActionControl.CMTextChanged
 00507389    lea         edx,[ebp-10]
 0050738C    mov         eax,dword ptr [ebp-4]
 0050738F    call        TControl.GetText
 00507394    mov         eax,dword ptr [ebp-10]
 00507397    lea         edx,[ebp-0C]
 0050739A    call        004E577C
 0050739F    mov         edx,dword ptr [ebp-0C]
 005073A2    mov         eax,dword ptr [ebp-4]
 005073A5    add         eax,1C8;TCustomMenuItem.FNoPrefix:String
 005073AA    call        @LStrAsg
 005073AF    xor         eax,eax
 005073B1    pop         edx
 005073B2    pop         ecx
 005073B3    pop         ecx
 005073B4    mov         dword ptr fs:[eax],edx
 005073B7    push        5073D4
 005073BC    lea         eax,[ebp-10]
 005073BF    call        @LStrClr
 005073C4    lea         eax,[ebp-0C]
 005073C7    call        @LStrClr
 005073CC    ret
>005073CD    jmp         @HandleFinally
>005073D2    jmp         005073BC
 005073D4    mov         esp,ebp
 005073D6    pop         ebp
 005073D7    ret
end;*}

//005073D8
{*procedure sub_005073D8(?:?);
begin
 005073D8    push        ebp
 005073D9    mov         ebp,esp
 005073DB    add         esp,0FFFFFFF4
 005073DE    xor         ecx,ecx
 005073E0    mov         dword ptr [ebp-0C],ecx
 005073E3    mov         byte ptr [ebp-5],dl
 005073E6    mov         dword ptr [ebp-4],eax
 005073E9    xor         eax,eax
 005073EB    push        ebp
 005073EC    push        507493
 005073F1    push        dword ptr fs:[eax]
 005073F4    mov         dword ptr fs:[eax],esp
 005073F7    cmp         byte ptr [ebp-5],0
>005073FB    jne         00507407
 005073FD    mov         eax,dword ptr [ebp-4]
 00507400    mov         byte ptr [eax+1B0],0;TCustomMenuItem.FMouseSelected:Boolean
 00507407    mov         dl,byte ptr [ebp-5]
 0050740A    mov         eax,dword ptr [ebp-4]
 0050740D    call        00514AB8
 00507412    mov         eax,dword ptr [ebp-4]
 00507415    cmp         dword ptr [eax+1AC],0;TCustomMenuItem.FMenu:TCustomActionMenuBar
>0050741C    je          0050742F
 0050741E    mov         edx,dword ptr [ebp-4]
 00507421    mov         eax,dword ptr [ebp-4]
 00507424    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 0050742A    call        00501A0C
 0050742F    cmp         byte ptr [ebp-5],0
>00507433    je          0050747D
 00507435    mov         eax,dword ptr [ebp-4]
 00507438    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 0050743E    call        TActionClientItem.GetAction
 00507443    test        eax,eax
>00507445    je          00507471
 00507447    mov         eax,dword ptr [ebp-4]
 0050744A    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00507450    call        TActionClientItem.GetAction
 00507455    mov         eax,dword ptr [eax+7C]
 00507458    lea         edx,[ebp-0C]
 0050745B    call        004C7278
 00507460    mov         edx,dword ptr [ebp-0C]
 00507463    mov         eax,[0055B4C8];^Application:TApplication
 00507468    mov         eax,dword ptr [eax]
 0050746A    call        004F387C
>0050746F    jmp         0050747D
 00507471    mov         eax,[0055B4C8];^Application:TApplication
 00507476    mov         eax,dword ptr [eax]
 00507478    call        004F3CC8
 0050747D    xor         eax,eax
 0050747F    pop         edx
 00507480    pop         ecx
 00507481    pop         ecx
 00507482    mov         dword ptr fs:[eax],edx
 00507485    push        50749A
 0050748A    lea         eax,[ebp-0C]
 0050748D    call        @LStrClr
 00507492    ret
>00507493    jmp         @HandleFinally
>00507498    jmp         0050748A
 0050749A    mov         esp,ebp
 0050749C    pop         ebp
 0050749D    ret
end;*}

//005074A0
{*procedure TCustomMenuItem.sub_004CBB18(?:?; ?:?; ?:?);
begin
 005074A0    push        ebp
 005074A1    mov         ebp,esp
 005074A3    add         esp,0FFFFFFF0
 005074A6    mov         dword ptr [ebp-0C],ecx
 005074A9    mov         dword ptr [ebp-8],edx
 005074AC    mov         dword ptr [ebp-4],eax
 005074AF    mov         eax,dword ptr [ebp+8]
 005074B2    push        eax
 005074B3    mov         ecx,dword ptr [ebp-0C]
 005074B6    mov         edx,dword ptr [ebp-8]
 005074B9    mov         eax,dword ptr [ebp-4]
 005074BC    call        TCustomActionControl.sub_004CBB18
 005074C1    mov         eax,dword ptr [ebp-4]
 005074C4    call        0051541C
 005074C9    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 005074CF    call        @IsClass
 005074D4    test        al,al
>005074D6    je          00507519
 005074D8    mov         eax,dword ptr [ebp-4]
 005074DB    call        0051541C
 005074E0    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 005074E6    call        @AsClass
 005074EB    mov         dword ptr [ebp-10],eax
 005074EE    mov         eax,dword ptr [ebp-10]
 005074F1    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>005074F8    je          00507519
 005074FA    mov         eax,dword ptr [ebp-10]
 005074FD    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 00507503    cmp         dword ptr [eax+30],0;TCustomActionMenuBar.FParent:TWinControl
>00507507    je          00507519
 00507509    mov         eax,[0055B4C8];^Application:TApplication
 0050750E    mov         eax,dword ptr [eax]
 00507510    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 00507513    push        eax
 00507514    call        user32.SetFocus
 00507519    mov         esp,ebp
 0050751B    pop         ebp
 0050751C    ret         4
end;*}

//00507520
{*procedure TCustomMenuItem.sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00507520    push        ebp
 00507521    mov         ebp,esp
 00507523    add         esp,0FFFFFFEC
 00507526    mov         dword ptr [ebp-0C],ecx
 00507529    mov         dword ptr [ebp-8],edx
 0050752C    mov         dword ptr [ebp-4],eax
 0050752F    mov         eax,dword ptr [ebp-8]
 00507532    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 00507538    call        @IsClass
 0050753D    test        al,al
>0050753F    je          005075F9
 00507545    mov         eax,dword ptr [ebp-8]
 00507548    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 0050754E    call        @AsClass
 00507553    mov         dword ptr [ebp-10],eax
 00507556    mov         eax,dword ptr [ebp-10]
 00507559    mov         eax,dword ptr [eax+40];TActionItemDragObject....................FClientItem:TActionClien...
 0050755C    mov         edx,dword ptr [ebp-4]
 0050755F    cmp         eax,dword ptr [edx+16C];TCustomMenuItem.FActionClient:TActionClientItem
>00507565    jne         005075A7
 00507567    mov         eax,dword ptr [ebp-4]
 0050756A    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00507570    mov         eax,dword ptr [eax+18];TActionClientItem.FChildActionBar:TCustomActionBar
 00507573    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 00507579    call        @IsClass
 0050757E    test        al,al
>00507580    je          005075A7
 00507582    mov         eax,dword ptr [ebp-4]
 00507585    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 0050758B    mov         eax,dword ptr [eax+18];TActionClientItem.FChildActionBar:TCustomActionBar
 0050758E    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 00507594    call        @AsClass
 00507599    mov         dword ptr [ebp-14],eax
 0050759C    mov         eax,dword ptr [ebp-14]
 0050759F    mov         edx,dword ptr [eax]
 005075A1    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_00501574
 005075A7    mov         eax,dword ptr [ebp-4]
 005075AA    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 005075B0    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005075B6    cmp         dword ptr [eax+28C],0;TCustomActionMenuBar.FDelayItem:TCustomActionControl
>005075BD    je          005075F9
 005075BF    mov         eax,dword ptr [ebp-4]
 005075C2    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 005075C8    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005075CE    mov         eax,dword ptr [eax+28C];TCustomActionMenuBar.FDelayItem:TCustomActionControl
 005075D4    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 005075DA    mov         edx,dword ptr [ebp-10]
 005075DD    cmp         eax,dword ptr [edx+40];TActionItemDragObject.....................FClientItem:TActionClie...
>005075E0    jne         005075F9
 005075E2    mov         eax,dword ptr [ebp-4]
 005075E5    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 005075EB    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 005075F1    xor         edx,edx
 005075F3    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 005075F9    mov         eax,dword ptr [ebp+10]
 005075FC    push        eax
 005075FD    mov         al,byte ptr [ebp+0C]
 00507600    push        eax
 00507601    mov         eax,dword ptr [ebp+8]
 00507604    push        eax
 00507605    mov         ecx,dword ptr [ebp-0C]
 00507608    mov         edx,dword ptr [ebp-8]
 0050760B    mov         eax,dword ptr [ebp-4]
 0050760E    call        TCustomActionControl.sub_004CBAC0
 00507613    mov         eax,dword ptr [ebp+8]
 00507616    cmp         byte ptr [eax],0
>00507619    je          00507650
 0050761B    mov         eax,dword ptr [ebp-4]
 0050761E    call        0051541C
 00507623    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 00507629    call        @IsClass
 0050762E    test        al,al
>00507630    je          00507650
 00507632    mov         eax,dword ptr [ebp-4]
 00507635    call        0051541C
 0050763A    cmp         byte ptr [eax+296],0
>00507641    je          00507650
 00507643    mov         dl,1
 00507645    mov         eax,dword ptr [ebp-4]
 00507648    mov         ecx,dword ptr [eax]
 0050764A    call        dword ptr [ecx+0D8];TCustomMenuItem.sub_005073D8
 00507650    mov         esp,ebp
 00507652    pop         ebp
 00507653    ret         0C
end;*}

//00507658
procedure sub_00507658;
begin
{*
 00507658    push        ebp
 00507659    mov         ebp,esp
 0050765B    add         esp,0FFFFFFC8
 0050765E    push        ebx
 0050765F    push        esi
 00507660    push        edi
 00507661    mov         dword ptr [ebp-4],eax
 00507664    mov         eax,dword ptr [ebp-4]
 00507667    call        00515568
 0050766C    lea         edx,[ebp-14]
 0050766F    mov         eax,dword ptr [ebp-4]
 00507672    mov         ecx,dword ptr [eax]
 00507674    call        dword ptr [ecx+0BC];TCustomMenuItem.sub_00514858
 0050767A    mov         eax,dword ptr [ebp-4]
 0050767D    mov         eax,dword ptr [eax+1C4];TCustomMenuItem.FCYMenu:Integer
 00507683    mov         dword ptr [ebp-0C],eax
 00507686    mov         eax,dword ptr [ebp-4]
 00507689    mov         edx,dword ptr [eax]
 0050768B    call        dword ptr [edx+0C8];TCustomMenuItem.sub_005152A0
 00507691    test        al,al
>00507693    je          005076AD
 00507695    mov         eax,dword ptr [ebp-4]
 00507698    mov         eax,dword ptr [eax+1C4];TCustomMenuItem.FCYMenu:Integer
 0050769E    mov         ecx,3
 005076A3    cdq
 005076A4    idiv        eax,ecx
 005076A6    add         eax,eax
 005076A8    mov         dword ptr [ebp-0C],eax
>005076AB    jmp         005076BC
 005076AD    cmp         dword ptr [ebp-10],10
>005076B1    jle         005076BC
 005076B3    mov         eax,dword ptr [ebp-10]
 005076B6    add         eax,4
 005076B9    mov         dword ptr [ebp-0C],eax
 005076BC    mov         eax,dword ptr [ebp-4]
 005076BF    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>005076C6    je          0050781C
 005076CC    cmp         dword ptr [ebp-14],10
>005076D0    jg          005076DB
 005076D2    mov         dword ptr [ebp-18],18
>005076D9    jmp         005076E4
 005076DB    mov         eax,dword ptr [ebp-14]
 005076DE    add         eax,6
 005076E1    mov         dword ptr [ebp-18],eax
 005076E4    mov         eax,dword ptr [ebp-4]
 005076E7    lea         esi,[eax+190];TCustomMenuItem.FTextBounds:TRect
 005076ED    lea         edi,[ebp-28]
 005076F0    movs        dword ptr [edi],dword ptr [esi]
 005076F1    movs        dword ptr [edi],dword ptr [esi]
 005076F2    movs        dword ptr [edi],dword ptr [esi]
 005076F3    movs        dword ptr [edi],dword ptr [esi]
 005076F4    mov         eax,dword ptr [ebp-0C]
 005076F7    sar         eax,1
>005076F9    jns         005076FE
 005076FB    adc         eax,0
 005076FE    mov         edx,dword ptr [ebp-4]
 00507701    mov         edx,dword ptr [edx+19C]
 00507707    sar         edx,1
>00507709    jns         0050770E
 0050770B    adc         edx,0
 0050770E    sub         eax,edx
 00507710    dec         eax
 00507711    push        eax
 00507712    mov         eax,18
 00507717    mov         edx,dword ptr [ebp-4]
 0050771A    sub         eax,dword ptr [edx+190]
 00507720    push        eax
 00507721    lea         eax,[ebp-28]
 00507724    push        eax
 00507725    call        user32.OffsetRect
 0050772A    mov         eax,dword ptr [ebp-4]
 0050772D    lea         esi,[ebp-28]
 00507730    lea         edi,[eax+190];TCustomMenuItem.FTextBounds:TRect
 00507736    movs        dword ptr [edi],dword ptr [esi]
 00507737    movs        dword ptr [edi],dword ptr [esi]
 00507738    movs        dword ptr [edi],dword ptr [esi]
 00507739    movs        dword ptr [edi],dword ptr [esi]
 0050773A    push        0
 0050773C    lea         eax,[ebp-38]
 0050773F    push        eax
 00507740    xor         ecx,ecx
 00507742    xor         edx,edx
 00507744    xor         eax,eax
 00507746    call        Rect
 0050774B    mov         eax,dword ptr [ebp-4]
 0050774E    lea         esi,[ebp-38]
 00507751    lea         edi,[eax+1B1];TCustomMenuItem.FShortCutBounds:TRect
 00507757    movs        dword ptr [edi],dword ptr [esi]
 00507758    movs        dword ptr [edi],dword ptr [esi]
 00507759    movs        dword ptr [edi],dword ptr [esi]
 0050775A    movs        dword ptr [edi],dword ptr [esi]
 0050775B    mov         eax,dword ptr [ebp-4]
 0050775E    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00507764    cmp         word ptr [eax+48],0;TActionClientItem.ShortCut:TShortCut
>00507769    je          005077E8
 0050776B    push        400
 00507770    mov         eax,dword ptr [ebp-4]
 00507773    add         eax,1B1;TCustomMenuItem.FShortCutBounds:TRect
 00507778    push        eax
 00507779    push        0FF
 0050777B    mov         eax,dword ptr [ebp-4]
 0050777E    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00507784    mov         eax,dword ptr [eax+54];TActionClientItem.FShortCutText:String
 00507787    call        @LStrToPChar
 0050778C    push        eax
 0050778D    mov         eax,dword ptr [ebp-4]
 00507790    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 00507796    call        TCanvas.GetHandle
 0050779B    push        eax
 0050779C    call        user32.DrawTextA
 005077A1    mov         eax,dword ptr [ebp-4]
 005077A4    mov         eax,dword ptr [eax+194];TCustomMenuItem.FTextBounds.Top:Longint
 005077AA    mov         edx,dword ptr [ebp-4]
 005077AD    mov         dword ptr [edx+1B5],eax;TCustomMenuItem.FShortCutBounds.Top:Longint
 005077B3    mov         eax,dword ptr [ebp-4]
 005077B6    mov         eax,dword ptr [eax+19C]
 005077BC    mov         edx,dword ptr [ebp-4]
 005077BF    mov         dword ptr [edx+1BD],eax
 005077C5    mov         eax,dword ptr [ebp-4]
 005077C8    mov         eax,dword ptr [eax+198];TCustomMenuItem.FTextBounds.Right:Longint
 005077CE    mov         edx,dword ptr [ebp-4]
 005077D1    add         eax,dword ptr [edx+1B9];TCustomMenuItem.FShortCutBounds.Right:Longint
 005077D7    add         eax,dword ptr [ebp-18]
 005077DA    mov         edx,dword ptr [ebp-4]
 005077DD    add         eax,dword ptr [edx+18C];TCustomMenuItem.FSpacing:Integer
 005077E3    mov         dword ptr [ebp-8],eax
>005077E6    jmp         005077FD
 005077E8    mov         eax,dword ptr [ebp-4]
 005077EB    mov         eax,dword ptr [eax+198];TCustomMenuItem.FTextBounds.Right:Longint
 005077F1    mov         edx,dword ptr [ebp-4]
 005077F4    add         eax,dword ptr [edx+190];TCustomMenuItem.FTextBounds:TRect
 005077FA    mov         dword ptr [ebp-8],eax
 005077FD    mov         eax,dword ptr [ebp-8]
 00507800    push        eax
 00507801    mov         eax,dword ptr [ebp-0C]
 00507804    push        eax
 00507805    mov         eax,dword ptr [ebp-4]
 00507808    mov         ecx,dword ptr [eax+44];TCustomMenuItem.Top:Integer
 0050780B    mov         eax,dword ptr [ebp-4]
 0050780E    mov         edx,dword ptr [eax+40];TCustomMenuItem.Left:Integer
 00507811    mov         eax,dword ptr [ebp-4]
 00507814    mov         ebx,dword ptr [eax]
 00507816    call        dword ptr [ebx+84];TCustomMenuItem.sub_004CA110
 0050781C    pop         edi
 0050781D    pop         esi
 0050781E    pop         ebx
 0050781F    mov         esp,ebp
 00507821    pop         ebp
 00507822    ret
*}
end;

//00507824
procedure sub_00507824;
begin
{*
 00507824    push        ebp
 00507825    mov         ebp,esp
 00507827    add         esp,0FFFFFFEC
 0050782A    mov         dword ptr [ebp-4],eax
 0050782D    mov         eax,dword ptr [ebp-4]
 00507830    call        005135CC
 00507835    lea         edx,[ebp-14]
 00507838    mov         eax,dword ptr [ebp-4]
 0050783B    mov         ecx,dword ptr [eax]
 0050783D    call        dword ptr [ecx+0BC];TCustomMenuItem.sub_00514858
 00507843    mov         eax,dword ptr [ebp-10]
 00507846    sar         eax,1
>00507848    jns         0050784D
 0050784A    adc         eax,0
 0050784D    mov         edx,dword ptr [ebp-4]
 00507850    mov         edx,dword ptr [edx+4C];TCustomMenuItem.Height:Integer
 00507853    sar         edx,1
>00507855    jns         0050785A
 00507857    adc         edx,0
 0050785A    sub         edx,eax
 0050785C    inc         edx
 0050785D    lea         ecx,[ebp-0C]
 00507860    mov         eax,dword ptr [ebp-4]
 00507863    mov         eax,dword ptr [eax+17A];TCustomMenuItem.FMargins:TRect
 00507869    call        Point
 0050786E    mov         eax,dword ptr [ebp-4]
 00507871    mov         edx,dword ptr [ebp-0C]
 00507874    mov         dword ptr [eax+172],edx;TCustomMenuItem.FGlyphPos:TPoint
 0050787A    mov         edx,dword ptr [ebp-8]
 0050787D    mov         dword ptr [eax+176],edx
 00507883    mov         esp,ebp
 00507885    pop         ebp
 00507886    ret
*}
end;

//00507888
{*procedure sub_00507888(?:?);
begin
 00507888    push        ebp
 00507889    mov         ebp,esp
 0050788B    add         esp,0FFFFFFF8
 0050788E    mov         byte ptr [ebp-5],dl
 00507891    mov         dword ptr [ebp-4],eax
 00507894    pop         ecx
 00507895    pop         ecx
 00507896    pop         ebp
 00507897    ret
end;*}

//00507898
{*procedure sub_00507898(?:TRect; ?:?; ?:?; ?:?; ?:?);
begin
 00507898    push        ebp
 00507899    mov         ebp,esp
 0050789B    add         esp,0FFFFFFD8
 0050789E    push        esi
 0050789F    push        edi
 005078A0    mov         esi,edx
 005078A2    lea         edi,[ebp-18]
 005078A5    movs        dword ptr [edi],dword ptr [esi]
 005078A6    movs        dword ptr [edi],dword ptr [esi]
 005078A7    movs        dword ptr [edi],dword ptr [esi]
 005078A8    movs        dword ptr [edi],dword ptr [esi]
 005078A9    mov         dword ptr [ebp-8],ecx
 005078AC    mov         dword ptr [ebp-4],eax
 005078AF    mov         eax,dword ptr [ebp+10]
 005078B2    call        @LStrAddRef
 005078B7    xor         eax,eax
 005078B9    push        ebp
 005078BA    push        5079BB
 005078BF    push        dword ptr fs:[eax]
 005078C2    mov         dword ptr fs:[eax],esp
 005078C5    mov         eax,dword ptr [ebp-4]
 005078C8    mov         eax,dword ptr [eax+30];TCustomMenuItem.FParent:TWinControl
 005078CB    mov         edx,dword ptr ds:[509DC8];TCustomActionBar
 005078D1    call        @IsClass
 005078D6    test        al,al
>005078D8    je          005078FC
 005078DA    mov         eax,dword ptr [ebp-4]
 005078DD    call        0051541C
 005078E2    cmp         byte ptr [eax+248],0
>005078E9    jne         005078FC
 005078EB    lea         eax,[ebp+10]
 005078EE    mov         edx,dword ptr [ebp-4]
 005078F1    mov         edx,dword ptr [edx+1C8];TCustomMenuItem.FNoPrefix:String
 005078F7    call        @LStrLAsg
 005078FC    mov         eax,dword ptr [ebp-4]
 005078FF    cmp         byte ptr [eax+18A],0;TCustomMenuItem.FSelected:Boolean
>00507906    je          0050791B
 00507908    mov         eax,dword ptr [ebp-4]
 0050790B    call        0051541C
 00507910    call        TActionToolBar.GetColorMap
 00507915    mov         eax,dword ptr [eax+54]
 00507918    mov         dword ptr [ebp+8],eax
 0050791B    mov         eax,dword ptr [ebp+10]
 0050791E    push        eax
 0050791F    mov         eax,dword ptr [ebp+0C]
 00507922    push        eax
 00507923    mov         eax,dword ptr [ebp+8]
 00507926    push        eax
 00507927    mov         ecx,dword ptr [ebp-8]
 0050792A    lea         edx,[ebp-18]
 0050792D    mov         eax,dword ptr [ebp-4]
 00507930    call        00514278
 00507935    mov         eax,dword ptr [ebp-4]
 00507938    mov         edx,dword ptr [eax]
 0050793A    call        dword ptr [edx+9C];TCustomMenuItem.sub_00515328
 00507940    test        al,al
>00507942    je          005079A5
 00507944    mov         edx,2
 00507949    mov         eax,dword ptr [ebp-4]
 0050794C    call        004CDF58
 00507951    mov         dword ptr [ebp-8],eax
 00507954    mov         eax,dword ptr [ebp-4]
 00507957    lea         esi,[eax+1B1];TCustomMenuItem.FShortCutBounds:TRect
 0050795D    lea         edi,[ebp-28]
 00507960    movs        dword ptr [edi],dword ptr [esi]
 00507961    movs        dword ptr [edi],dword ptr [esi]
 00507962    movs        dword ptr [edi],dword ptr [esi]
 00507963    movs        dword ptr [edi],dword ptr [esi]
 00507964    push        0
 00507966    mov         eax,dword ptr [ebp-4]
 00507969    mov         eax,dword ptr [eax+48];TCustomMenuItem.Width:Integer
 0050796C    sub         eax,15
 0050796F    mov         edx,dword ptr [ebp-4]
 00507972    sub         eax,dword ptr [edx+1B9]
 00507978    push        eax
 00507979    lea         eax,[ebp-28]
 0050797C    push        eax
 0050797D    call        user32.OffsetRect
 00507982    mov         eax,dword ptr [ebp-4]
 00507985    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 0050798B    mov         eax,dword ptr [eax+54];TActionClientItem.FShortCutText:String
 0050798E    push        eax
 0050798F    mov         eax,dword ptr [ebp+0C]
 00507992    push        eax
 00507993    mov         eax,dword ptr [ebp+8]
 00507996    push        eax
 00507997    mov         ecx,dword ptr [ebp-8]
 0050799A    lea         edx,[ebp-28]
 0050799D    mov         eax,dword ptr [ebp-4]
 005079A0    call        00514278
 005079A5    xor         eax,eax
 005079A7    pop         edx
 005079A8    pop         ecx
 005079A9    pop         ecx
 005079AA    mov         dword ptr fs:[eax],edx
 005079AD    push        5079C2
 005079B2    lea         eax,[ebp+10]
 005079B5    call        @LStrClr
 005079BA    ret
>005079BB    jmp         @HandleFinally
>005079C0    jmp         005079B2
 005079C2    pop         edi
 005079C3    pop         esi
 005079C4    mov         esp,ebp
 005079C6    pop         ebp
 005079C7    ret         0C
end;*}

//005079CC
{*procedure sub_005079CC(?:?; ?:?; ?:?);
begin
 005079CC    push        ebp
 005079CD    mov         ebp,esp
 005079CF    add         esp,0FFFFFFE4
 005079D2    push        esi
 005079D3    push        edi
 005079D4    mov         dword ptr [ebp-0C],ecx
 005079D7    mov         dword ptr [ebp-8],edx
 005079DA    mov         dword ptr [ebp-4],eax
 005079DD    mov         eax,dword ptr [ebp+8]
 005079E0    call        @LStrAddRef
 005079E5    xor         eax,eax
 005079E7    push        ebp
 005079E8    push        507ABC
 005079ED    push        dword ptr fs:[eax]
 005079F0    mov         dword ptr fs:[eax],esp
 005079F3    mov         eax,dword ptr [ebp-4]
 005079F6    mov         eax,dword ptr [eax+30];TCustomMenuItem.FParent:TWinControl
 005079F9    mov         edx,dword ptr ds:[509DC8];TCustomActionBar
 005079FF    call        @IsClass
 00507A04    test        al,al
>00507A06    je          00507A2A
 00507A08    mov         eax,dword ptr [ebp-4]
 00507A0B    call        0051541C
 00507A10    cmp         byte ptr [eax+248],0
>00507A17    jne         00507A2A
 00507A19    lea         eax,[ebp+8]
 00507A1C    mov         edx,dword ptr [ebp-4]
 00507A1F    mov         edx,dword ptr [edx+1C8];TCustomMenuItem.FNoPrefix:String
 00507A25    call        @LStrLAsg
 00507A2A    mov         eax,dword ptr [ebp+8]
 00507A2D    push        eax
 00507A2E    mov         ecx,dword ptr [ebp-0C]
 00507A31    mov         edx,dword ptr [ebp-8]
 00507A34    mov         eax,dword ptr [ebp-4]
 00507A37    call        00514200
 00507A3C    mov         eax,dword ptr [ebp-4]
 00507A3F    mov         edx,dword ptr [eax]
 00507A41    call        dword ptr [edx+9C];TCustomMenuItem.sub_00515328
 00507A47    test        al,al
>00507A49    je          00507AA6
 00507A4B    mov         edx,2
 00507A50    mov         eax,dword ptr [ebp-4]
 00507A53    call        004CDF58
 00507A58    mov         edx,dword ptr [ebp-0C]
 00507A5B    mov         dword ptr [edx],eax
 00507A5D    mov         eax,dword ptr [ebp-4]
 00507A60    lea         esi,[eax+1B1];TCustomMenuItem.FShortCutBounds:TRect
 00507A66    lea         edi,[ebp-1C]
 00507A69    movs        dword ptr [edi],dword ptr [esi]
 00507A6A    movs        dword ptr [edi],dword ptr [esi]
 00507A6B    movs        dword ptr [edi],dword ptr [esi]
 00507A6C    movs        dword ptr [edi],dword ptr [esi]
 00507A6D    push        0
 00507A6F    mov         eax,dword ptr [ebp-4]
 00507A72    mov         eax,dword ptr [eax+48];TCustomMenuItem.Width:Integer
 00507A75    sub         eax,15
 00507A78    mov         edx,dword ptr [ebp-4]
 00507A7B    sub         eax,dword ptr [edx+1B9]
 00507A81    push        eax
 00507A82    lea         eax,[ebp-1C]
 00507A85    push        eax
 00507A86    call        user32.OffsetRect
 00507A8B    mov         eax,dword ptr [ebp-4]
 00507A8E    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00507A94    mov         eax,dword ptr [eax+54];TActionClientItem.FShortCutText:String
 00507A97    push        eax
 00507A98    mov         ecx,dword ptr [ebp-0C]
 00507A9B    lea         edx,[ebp-1C]
 00507A9E    mov         eax,dword ptr [ebp-4]
 00507AA1    call        00514200
 00507AA6    xor         eax,eax
 00507AA8    pop         edx
 00507AA9    pop         ecx
 00507AAA    pop         ecx
 00507AAB    mov         dword ptr fs:[eax],edx
 00507AAE    push        507AC3
 00507AB3    lea         eax,[ebp+8]
 00507AB6    call        @LStrClr
 00507ABB    ret
>00507ABC    jmp         @HandleFinally
>00507AC1    jmp         00507AB3
 00507AC3    pop         edi
 00507AC4    pop         esi
 00507AC5    mov         esp,ebp
 00507AC7    pop         ebp
 00507AC8    ret         4
end;*}

//00507ACC
procedure sub_00507ACC;
begin
{*
 00507ACC    push        ebp
 00507ACD    mov         ebp,esp
 00507ACF    push        ecx
 00507AD0    mov         dword ptr [ebp-4],eax
 00507AD3    mov         eax,dword ptr [ebp-4]
 00507AD6    call        005147DC
 00507ADB    mov         eax,dword ptr [ebp-4]
 00507ADE    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>00507AE5    je          00507AF4
 00507AE7    mov         eax,dword ptr [ebp-4]
 00507AEA    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00507AF0    mov         byte ptr [eax+3C],1;TActionClientItem.FCheckUnused:Boolean
 00507AF4    mov         eax,dword ptr [ebp-4]
 00507AF7    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 00507AFD    cmp         byte ptr [eax+295],0;TCustomActionMenuBar.FExpanded:Boolean
>00507B04    jne         00507B19
 00507B06    mov         dl,1
 00507B08    mov         eax,dword ptr [ebp-4]
 00507B0B    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 00507B11    mov         ecx,dword ptr [eax]
 00507B13    call        dword ptr [ecx+164];TCustomActionMenuBar.sub_005020F8
 00507B19    pop         ecx
 00507B1A    pop         ebp
 00507B1B    ret
*}
end;

//00507B1C
{*procedure sub_00507B1C(?:?; ?:?; ?:?);
begin
 00507B1C    push        ebp
 00507B1D    mov         ebp,esp
 00507B1F    add         esp,0FFFFFFD4
 00507B22    push        esi
 00507B23    mov         dword ptr [ebp-0C],ecx
 00507B26    mov         dword ptr [ebp-8],edx
 00507B29    mov         dword ptr [ebp-4],eax
 00507B2C    mov         eax,dword ptr [ebp-4]
 00507B2F    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>00507B36    je          00507B4B
 00507B38    mov         eax,dword ptr [ebp-4]
 00507B3B    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00507B41    call        TCollectionItem.GetIndex
 00507B46    mov         dword ptr [ebp-1C],eax
>00507B49    jmp         00507B50
 00507B4B    xor         eax,eax
 00507B4D    mov         dword ptr [ebp-1C],eax
 00507B50    mov         eax,dword ptr [ebp-8]
 00507B53    mov         edx,dword ptr ds:[509A94];TCategoryDragObject
 00507B59    call        @IsClass
 00507B5E    test        al,al
>00507B60    je          00507D4B
 00507B66    mov         eax,dword ptr [ebp-4]
 00507B69    call        0051541C
 00507B6E    call        TWinControl.DisableAlign
 00507B73    mov         eax,dword ptr [ebp-4]
 00507B76    call        0051541C
 00507B7B    mov         eax,dword ptr [eax+210]
 00507B81    call        TActionClient.GetItems
 00507B86    mov         edx,dword ptr [eax]
 00507B88    call        dword ptr [edx+20]
 00507B8B    mov         eax,dword ptr [ebp-8]
 00507B8E    mov         edx,dword ptr ds:[509A94];TCategoryDragObject
 00507B94    call        @AsClass
 00507B99    mov         dword ptr [ebp-20],eax
 00507B9C    mov         eax,dword ptr [ebp-4]
 00507B9F    call        0051541C
 00507BA4    mov         eax,dword ptr [eax+214]
 00507BAA    mov         dword ptr [ebp-24],eax
 00507BAD    mov         eax,dword ptr [ebp-24]
 00507BB0    mov         si,0FFEC
 00507BB4    call        @CallDynaInst
 00507BB9    push        eax
 00507BBA    mov         eax,dword ptr [ebp-4]
 00507BBD    call        0051541C
 00507BC2    mov         eax,dword ptr [eax+210]
 00507BC8    call        TActionClient.GetItems
 00507BCD    mov         ecx,eax
 00507BCF    mov         dl,1
 00507BD1    pop         eax
 00507BD2    call        dword ptr [eax+1C]
 00507BD5    mov         dword ptr [ebp-14],eax
 00507BD8    xor         eax,eax
 00507BDA    push        ebp
 00507BDB    push        507D44
 00507BE0    push        dword ptr fs:[eax]
 00507BE3    mov         dword ptr fs:[eax],esp
 00507BE6    xor         eax,eax
 00507BE8    push        ebp
 00507BE9    push        507CFD
 00507BEE    push        dword ptr fs:[eax]
 00507BF1    mov         dword ptr fs:[eax],esp
 00507BF4    mov         edx,1
 00507BF9    mov         eax,dword ptr [ebp-14]
 00507BFC    call        TActionClientItem.SetUsageCount
 00507C01    mov         eax,dword ptr [ebp-20]
 00507C04    mov         edx,dword ptr [eax+48];TCategoryDragObject...FCategory:String
 00507C07    mov         eax,dword ptr [ebp-14]
 00507C0A    call        TActionClientItem.SetCaption
 00507C0F    mov         eax,dword ptr [ebp-4]
 00507C12    call        0051541C
 00507C17    mov         eax,dword ptr [eax+214]
 00507C1D    mov         eax,dword ptr [eax+6C]
 00507C20    mov         edx,dword ptr [eax+28]
 00507C23    mov         eax,dword ptr [ebp-14]
 00507C26    call        TActionClientItem.SetLastSession
 00507C2B    mov         edx,dword ptr [ebp-1C]
 00507C2E    mov         eax,dword ptr [ebp-14]
 00507C31    mov         ecx,dword ptr [eax]
 00507C33    call        dword ptr [ecx+14]
 00507C36    mov         eax,dword ptr [ebp-14]
 00507C39    call        TActionClient.GetItems
 00507C3E    mov         edx,dword ptr [eax]
 00507C40    call        dword ptr [edx+20]
 00507C43    mov         eax,dword ptr [ebp-20]
 00507C46    call        0050F4F4
 00507C4B    dec         eax
 00507C4C    test        eax,eax
>00507C4E    jl          00507CB7
 00507C50    inc         eax
 00507C51    mov         dword ptr [ebp-28],eax
 00507C54    mov         dword ptr [ebp-18],0
 00507C5B    mov         eax,dword ptr [ebp-4]
 00507C5E    call        0051541C
 00507C63    mov         eax,dword ptr [eax+214]
 00507C69    mov         dword ptr [ebp-2C],eax
 00507C6C    mov         eax,dword ptr [ebp-2C]
 00507C6F    mov         si,0FFEC
 00507C73    call        @CallDynaInst
 00507C78    push        eax
 00507C79    mov         eax,dword ptr [ebp-14]
 00507C7C    call        TActionClient.GetItems
 00507C81    mov         ecx,eax
 00507C83    mov         dl,1
 00507C85    pop         eax
 00507C86    call        dword ptr [eax+1C]
 00507C89    mov         dword ptr [ebp-10],eax
 00507C8C    mov         edx,dword ptr [ebp-18]
 00507C8F    mov         eax,dword ptr [ebp-20]
 00507C92    call        0050F4A8
 00507C97    mov         edx,eax
 00507C99    mov         eax,dword ptr [ebp-10]
 00507C9C    call        TActionClientItem.SetAction
 00507CA1    mov         eax,dword ptr [ebp-14]
 00507CA4    mov         edx,dword ptr [eax+5C]
 00507CA7    mov         eax,dword ptr [ebp-10]
 00507CAA    call        TActionClientItem.SetLastSession
 00507CAF    inc         dword ptr [ebp-18]
 00507CB2    dec         dword ptr [ebp-28]
>00507CB5    jne         00507C5B
 00507CB7    mov         eax,dword ptr [ebp-4]
 00507CBA    call        0051541C
 00507CBF    mov         edx,dword ptr [ebp-14]
 00507CC2    mov         ecx,dword ptr [eax]
 00507CC4    call        dword ptr [ecx+0D4]
 00507CCA    mov         eax,dword ptr [ebp-20]
 00507CCD    call        0050F4F4
 00507CD2    test        eax,eax
 00507CD4    setg        dl
 00507CD7    mov         eax,dword ptr [ebp-14]
 00507CDA    mov         eax,dword ptr [eax+40]
 00507CDD    mov         ecx,dword ptr [eax]
 00507CDF    call        dword ptr [ecx+64]
 00507CE2    xor         eax,eax
 00507CE4    pop         edx
 00507CE5    pop         ecx
 00507CE6    pop         ecx
 00507CE7    mov         dword ptr fs:[eax],edx
 00507CEA    push        507D04
 00507CEF    mov         eax,dword ptr [ebp-14]
 00507CF2    call        TActionClient.GetItems
 00507CF7    mov         edx,dword ptr [eax]
 00507CF9    call        dword ptr [edx+24]
 00507CFC    ret
>00507CFD    jmp         @HandleFinally
>00507D02    jmp         00507CEF
 00507D04    xor         eax,eax
 00507D06    pop         edx
 00507D07    pop         ecx
 00507D08    pop         ecx
 00507D09    mov         dword ptr fs:[eax],edx
 00507D0C    push        507D5D
 00507D11    mov         eax,dword ptr [ebp-4]
 00507D14    call        0051541C
 00507D19    mov         eax,dword ptr [eax+210]
 00507D1F    call        TActionClient.GetItems
 00507D24    mov         edx,dword ptr [eax]
 00507D26    call        dword ptr [edx+24]
 00507D29    mov         eax,dword ptr [ebp-4]
 00507D2C    call        0051541C
 00507D31    call        TWinControl.EnableAlign
 00507D36    mov         eax,dword ptr [ebp-4]
 00507D39    call        0051541C
 00507D3E    call        0050A550
 00507D43    ret
>00507D44    jmp         @HandleFinally
>00507D49    jmp         00507D11
 00507D4B    mov         eax,dword ptr [ebp+8]
 00507D4E    push        eax
 00507D4F    mov         ecx,dword ptr [ebp-0C]
 00507D52    mov         edx,dword ptr [ebp-8]
 00507D55    mov         eax,dword ptr [ebp-4]
 00507D58    call        005156D8
 00507D5D    pop         esi
 00507D5E    mov         esp,ebp
 00507D60    pop         ebp
 00507D61    ret         4
end;*}

//00507D64
{*procedure TCustomMenuItem.sub_004CD1B0(?:?; ?:?; ?:?; ?:?);
begin
 00507D64    push        ebp
 00507D65    mov         ebp,esp
 00507D67    add         esp,0FFFFFFF4
 00507D6A    mov         byte ptr [ebp-6],cl
 00507D6D    mov         byte ptr [ebp-5],dl
 00507D70    mov         dword ptr [ebp-4],eax
 00507D73    mov         eax,dword ptr [ebp+0C]
 00507D76    push        eax
 00507D77    mov         eax,dword ptr [ebp+8]
 00507D7A    push        eax
 00507D7B    mov         cl,byte ptr [ebp-6]
 00507D7E    mov         dl,byte ptr [ebp-5]
 00507D81    mov         eax,dword ptr [ebp-4]
 00507D84    call        TControl.sub_004CD1B0
 00507D89    cmp         byte ptr [ebp-5],0
>00507D8D    jne         00507E1A
 00507D93    mov         eax,dword ptr [ebp-4]
 00507D96    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>00507D9D    je          00507DAE
 00507D9F    mov         eax,dword ptr [ebp-4]
 00507DA2    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 00507DA8    cmp         dword ptr [eax+18],0;TActionClientItem.FChildActionBar:TCustomActionBar
>00507DAC    jne         00507E1A
 00507DAE    mov         eax,dword ptr [ebp-4]
 00507DB1    mov         edx,dword ptr [eax]
 00507DB3    call        dword ptr [edx+3C];TCustomMenuItem.sub_005153C4
 00507DB6    mov         edx,dword ptr ds:[4DA408];TCustomAction
 00507DBC    call        @IsClass
 00507DC1    test        al,al
>00507DC3    je          00507DEF
 00507DC5    mov         eax,dword ptr [ebp-4]
 00507DC8    mov         edx,dword ptr [eax]
 00507DCA    call        dword ptr [edx+3C];TCustomMenuItem.sub_005153C4
 00507DCD    mov         dword ptr [ebp-0C],eax
 00507DD0    mov         eax,dword ptr [ebp-0C]
 00507DD3    cmp         dword ptr [eax+6C],0
>00507DD7    jle         00507DEF
 00507DD9    mov         eax,dword ptr [ebp-0C]
 00507DDC    cmp         byte ptr [eax+95],0
>00507DE3    jne         00507DEF
 00507DE5    mov         dl,1
 00507DE7    mov         eax,dword ptr [ebp-0C]
 00507DEA    call        TAction.SetChecked
 00507DEF    mov         eax,dword ptr [ebp-4]
 00507DF2    mov         edx,dword ptr [eax]
 00507DF4    call        dword ptr [edx+0C8];TCustomMenuItem.sub_005152A0
 00507DFA    test        al,al
>00507DFC    jne         00507E1A
 00507DFE    mov         eax,dword ptr [ebp-4]
 00507E01    push        eax
 00507E02    push        0
 00507E04    push        0B403
 00507E09    mov         eax,dword ptr [ebp-4]
 00507E0C    mov         eax,dword ptr [eax+30];TCustomMenuItem.FParent:TWinControl
 00507E0F    call        TWinControl.GetHandle
 00507E14    push        eax
 00507E15    call        user32.PostMessageA
 00507E1A    mov         esp,ebp
 00507E1C    pop         ebp
 00507E1D    ret         8
end;*}

//00507E20
constructor TCustomMenuButton.Create(AOwner:TComponent);
begin
{*
 00507E20    push        ebp
 00507E21    mov         ebp,esp
 00507E23    add         esp,0FFFFFFF4
 00507E26    test        dl,dl
>00507E28    je          00507E32
 00507E2A    add         esp,0FFFFFFF0
 00507E2D    call        @ClassCreate
 00507E32    mov         dword ptr [ebp-0C],ecx
 00507E35    mov         byte ptr [ebp-5],dl
 00507E38    mov         dword ptr [ebp-4],eax
 00507E3B    mov         ecx,dword ptr [ebp-0C]
 00507E3E    xor         edx,edx
 00507E40    mov         eax,dword ptr [ebp-4]
 00507E43    call        TCustomButtonControl.Create
 00507E48    mov         eax,dword ptr [ebp-4]
 00507E4B    mov         byte ptr [eax+1B0],0;TCustomMenuButton.FCloseMenu:Boolean
 00507E52    mov         eax,dword ptr [ebp-4]
 00507E55    cmp         byte ptr [ebp-5],0
>00507E59    je          00507E6A
 00507E5B    call        @AfterConstruction
 00507E60    pop         dword ptr fs:[0]
 00507E67    add         esp,0C
 00507E6A    mov         eax,dword ptr [ebp-4]
 00507E6D    mov         esp,ebp
 00507E6F    pop         ebp
 00507E70    ret
*}
end;

//00507E74
destructor TCustomMenuButton.Destroy;
begin
{*
 00507E74    push        ebp
 00507E75    mov         ebp,esp
 00507E77    add         esp,0FFFFFFF8
 00507E7A    call        @BeforeDestruction
 00507E7F    mov         byte ptr [ebp-5],dl
 00507E82    mov         dword ptr [ebp-4],eax
 00507E85    mov         eax,dword ptr [ebp-4]
 00507E88    cmp         dword ptr [eax+16C],0
>00507E8F    je          00507EC0
 00507E91    mov         eax,dword ptr [ebp-4]
 00507E94    mov         eax,dword ptr [eax+16C]
 00507E9A    mov         eax,dword ptr [eax+18]
 00507E9D    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 00507EA3    call        @IsClass
 00507EA8    test        al,al
>00507EAA    je          00507EC0
 00507EAC    mov         eax,dword ptr [ebp-4]
 00507EAF    mov         eax,dword ptr [eax+16C]
 00507EB5    mov         eax,dword ptr [eax+18]
 00507EB8    mov         edx,dword ptr [eax]
 00507EBA    call        dword ptr [edx+17C]
 00507EC0    mov         dl,byte ptr [ebp-5]
 00507EC3    and         dl,0FC
 00507EC6    mov         eax,dword ptr [ebp-4]
 00507EC9    call        TCustomActionControl.Destroy
 00507ECE    cmp         byte ptr [ebp-5],0
>00507ED2    jle         00507EDC
 00507ED4    mov         eax,dword ptr [ebp-4]
 00507ED7    call        @ClassDestroy
 00507EDC    pop         ecx
 00507EDD    pop         ecx
 00507EDE    pop         ebp
 00507EDF    ret
*}
end;

//00507EE0
procedure TCustomMenuButton.sub_004CB99C;
begin
{*
 00507EE0    push        ebp
 00507EE1    mov         ebp,esp
 00507EE3    push        ecx
 00507EE4    push        esi
 00507EE5    mov         dword ptr [ebp-4],eax
 00507EE8    mov         eax,dword ptr [ebp-4]
 00507EEB    mov         byte ptr [eax+1B1],1;TCustomMenuButton.FDoClick:Boolean
 00507EF2    mov         eax,dword ptr [ebp-4]
 00507EF5    mov         si,0FFEB
 00507EF9    call        @CallDynaInst;TCustomMenuButton.sub_004CCCAC
 00507EFE    mov         eax,dword ptr [ebp-4]
 00507F01    call        TCustomActionControl.sub_004CB99C
 00507F06    pop         esi
 00507F07    pop         ecx
 00507F08    pop         ebp
 00507F09    ret
*}
end;

//00507F0C
procedure TCustomMenuButton.sub_004CCCAC;
begin
{*
 00507F0C    push        ebp
 00507F0D    mov         ebp,esp
 00507F0F    push        ecx
 00507F10    mov         dword ptr [ebp-4],eax
 00507F13    mov         eax,dword ptr [ebp-4]
 00507F16    call        TCustomButtonControl.sub_004CCCAC
 00507F1B    mov         eax,dword ptr [ebp-4]
 00507F1E    cmp         byte ptr [eax+1B1],0;TCustomMenuButton.FDoClick:Boolean
>00507F25    je          00507FE4
 00507F2B    mov         eax,dword ptr [ebp-4]
 00507F2E    cmp         dword ptr [eax+16C],0;TCustomMenuButton.FActionClient:TActionClientItem
>00507F35    je          00507FE4
 00507F3B    mov         eax,dword ptr [ebp-4]
 00507F3E    mov         eax,dword ptr [eax+16C];TCustomMenuButton.FActionClient:TActionClientItem
 00507F44    call        TActionClientItem.GetAction
 00507F49    test        eax,eax
>00507F4B    jne         00507FE4
 00507F51    mov         eax,dword ptr [ebp-4]
 00507F54    call        0050832C
 00507F59    cmp         byte ptr [eax+296],0
>00507F60    je          00507F9E
 00507F62    mov         eax,dword ptr [ebp-4]
 00507F65    cmp         byte ptr [eax+18A],0;TCustomMenuButton.FSelected:Boolean
>00507F6C    je          00507F89
 00507F6E    mov         eax,dword ptr [ebp-4]
 00507F71    cmp         byte ptr [eax+18A],0;TCustomMenuButton.FSelected:Boolean
>00507F78    je          00507F9E
 00507F7A    mov         eax,dword ptr [ebp-4]
 00507F7D    mov         eax,dword ptr [eax+16C];TCustomMenuButton.FActionClient:TActionClientItem
 00507F83    cmp         dword ptr [eax+18],0;TActionClientItem.FChildActionBar:TCustomActionBar
>00507F87    jne         00507F9E
 00507F89    mov         eax,dword ptr [ebp-4]
 00507F8C    call        0050832C
 00507F91    mov         edx,dword ptr [ebp-4]
 00507F94    mov         ecx,dword ptr [eax]
 00507F96    call        dword ptr [ecx+150]
>00507F9C    jmp         00507FE4
 00507F9E    mov         eax,dword ptr [ebp-4]
 00507FA1    cmp         byte ptr [eax+1B0],0;TCustomMenuButton.FCloseMenu:Boolean
>00507FA8    je          00507FC6
 00507FAA    mov         eax,dword ptr [ebp-4]
 00507FAD    mov         byte ptr [eax+1B0],0;TCustomMenuButton.FCloseMenu:Boolean
 00507FB4    mov         eax,dword ptr [ebp-4]
 00507FB7    call        0050832C
 00507FBC    mov         edx,dword ptr [eax]
 00507FBE    call        dword ptr [edx+17C]
>00507FC4    jmp         00507FE4
 00507FC6    mov         eax,dword ptr [ebp-4]
 00507FC9    push        eax
 00507FCA    push        0
 00507FCC    push        0B403
 00507FD1    mov         eax,dword ptr [ebp-4]
 00507FD4    call        0051541C
 00507FD9    call        TWinControl.GetHandle
 00507FDE    push        eax
 00507FDF    call        user32.PostMessageA
 00507FE4    pop         ecx
 00507FE5    pop         ebp
 00507FE6    ret
*}
end;

//00507FE8
{*procedure TCustomMenuButton.CMMouseEnter(?:?);
begin
 00507FE8    push        ebp
 00507FE9    mov         ebp,esp
 00507FEB    add         esp,0FFFFFFF8
 00507FEE    push        esi
 00507FEF    mov         dword ptr [ebp-8],edx
 00507FF2    mov         dword ptr [ebp-4],eax
 00507FF5    mov         edx,dword ptr [ebp-8]
 00507FF8    mov         eax,dword ptr [ebp-4]
 00507FFB    call        TCustomButtonControl.CMMouseEnter
 00508000    mov         eax,dword ptr [ebp-4]
 00508003    call        0050832C
 00508008    cmp         byte ptr [eax+297],0
>0050800F    jne         00508076
 00508011    mov         eax,dword ptr [ebp-4]
 00508014    cmp         dword ptr [eax+16C],0;TCustomMenuButton.FActionClient:TActionClientItem
>0050801B    je          0050802F
 0050801D    mov         eax,dword ptr [ebp-4]
 00508020    mov         eax,dword ptr [eax+16C];TCustomMenuButton.FActionClient:TActionClientItem
 00508026    call        TActionClientItem.GetAction
 0050802B    test        eax,eax
>0050802D    jne         00508076
 0050802F    mov         eax,dword ptr [ebp-4]
 00508032    call        0051541C
 00508037    mov         edx,dword ptr [eax]
 00508039    call        dword ptr [edx+104]
 0050803F    test        al,al
>00508041    jne         00508076
 00508043    mov         eax,dword ptr [ebp-4]
 00508046    cmp         byte ptr [eax+18A],0;TCustomMenuButton.FSelected:Boolean
>0050804D    jne         00508076
 0050804F    mov         eax,dword ptr [ebp-4]
 00508052    call        0050832C
 00508057    cmp         byte ptr [eax+296],0
>0050805E    je          00508076
 00508060    mov         eax,dword ptr [ebp-4]
 00508063    mov         byte ptr [eax+1B1],1;TCustomMenuButton.FDoClick:Boolean
 0050806A    mov         eax,dword ptr [ebp-4]
 0050806D    mov         si,0FFEB
 00508071    call        @CallDynaInst;TCustomMenuButton.sub_004CCCAC
 00508076    pop         esi
 00508077    pop         ecx
 00508078    pop         ecx
 00508079    pop         ebp
 0050807A    ret
end;*}

//0050807C
{*procedure sub_0050807C(?:?; ?:?; ?:?);
begin
 0050807C    push        ebp
 0050807D    mov         ebp,esp
 0050807F    add         esp,0FFFFFFF4
 00508082    push        ebx
 00508083    mov         dword ptr [ebp-0C],ecx
 00508086    mov         dword ptr [ebp-8],edx
 00508089    mov         dword ptr [ebp-4],eax
 0050808C    mov         eax,dword ptr [ebp-8]
 0050808F    mov         edx,dword ptr ds:[509A94];TCategoryDragObject
 00508095    call        @IsClass
 0050809A    test        al,al
>0050809C    je          005080C6
 0050809E    mov         eax,dword ptr [ebp-4]
 005080A1    mov         eax,dword ptr [eax+44];TCustomMenuButton.Top:Integer
 005080A4    add         eax,dword ptr [ebp+8]
 005080A7    push        eax
 005080A8    mov         eax,dword ptr [ebp-4]
 005080AB    call        0051541C
 005080B0    mov         edx,dword ptr [ebp-4]
 005080B3    mov         ecx,dword ptr [edx+40];TCustomMenuButton.Left:Integer
 005080B6    add         ecx,dword ptr [ebp-0C]
 005080B9    mov         edx,dword ptr [ebp-8]
 005080BC    mov         ebx,dword ptr [eax]
 005080BE    call        dword ptr [ebx+0E0]
>005080C4    jmp         005080D8
 005080C6    mov         eax,dword ptr [ebp+8]
 005080C9    push        eax
 005080CA    mov         ecx,dword ptr [ebp-0C]
 005080CD    mov         edx,dword ptr [ebp-8]
 005080D0    mov         eax,dword ptr [ebp-4]
 005080D3    call        005156D8
 005080D8    mov         eax,dword ptr [ebp-4]
 005080DB    call        0051541C
 005080E0    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 005080E6    call        @IsClass
 005080EB    test        al,al
>005080ED    je          005080FE
 005080EF    mov         eax,dword ptr [ebp-4]
 005080F2    call        0051541C
 005080F7    mov         byte ptr [eax+296],0
 005080FE    pop         ebx
 005080FF    mov         esp,ebp
 00508101    pop         ebp
 00508102    ret         4
end;*}

//00508108
{*procedure TCustomMenuButton.sub_004CBAC0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00508108    push        ebp
 00508109    mov         ebp,esp
 0050810B    add         esp,0FFFFFFEC
 0050810E    push        esi
 0050810F    mov         dword ptr [ebp-0C],ecx
 00508112    mov         dword ptr [ebp-8],edx
 00508115    mov         dword ptr [ebp-4],eax
 00508118    mov         eax,dword ptr [ebp+10]
 0050811B    push        eax
 0050811C    mov         al,byte ptr [ebp+0C]
 0050811F    push        eax
 00508120    mov         eax,dword ptr [ebp+8]
 00508123    push        eax
 00508124    mov         ecx,dword ptr [ebp-0C]
 00508127    mov         edx,dword ptr [ebp-8]
 0050812A    mov         eax,dword ptr [ebp-4]
 0050812D    call        TCustomActionControl.sub_004CBAC0
 00508132    mov         eax,dword ptr [ebp+8]
 00508135    cmp         byte ptr [eax],0
>00508138    je          005081F0
 0050813E    mov         eax,dword ptr [ebp-4]
 00508141    call        0051541C
 00508146    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 0050814C    call        @IsClass
 00508151    test        al,al
>00508153    je          005081F0
 00508159    mov         eax,dword ptr [ebp-8]
 0050815C    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 00508162    call        @IsClass
 00508167    test        al,al
>00508169    je          005081CE
 0050816B    mov         eax,dword ptr [ebp-8]
 0050816E    mov         edx,dword ptr ds:[509B2C];TActionItemDragObject
 00508174    call        @AsClass
 00508179    mov         dword ptr [ebp-10],eax
 0050817C    mov         eax,dword ptr [ebp-10]
 0050817F    mov         eax,dword ptr [eax+40];TActionItemDragObject......................FClientItem:TActionCli...
 00508182    mov         edx,dword ptr [ebp-4]
 00508185    cmp         eax,dword ptr [edx+16C];TCustomMenuButton.FActionClient:TActionClientItem
>0050818B    jne         005081CE
 0050818D    mov         eax,dword ptr [ebp-4]
 00508190    call        0051541C
 00508195    test        eax,eax
>00508197    je          005081CE
 00508199    mov         eax,dword ptr [ebp-4]
 0050819C    call        0051541C
 005081A1    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 005081A7    call        @IsClass
 005081AC    test        al,al
>005081AE    je          005081CE
 005081B0    mov         eax,dword ptr [ebp-4]
 005081B3    call        0051541C
 005081B8    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 005081BE    call        @AsClass
 005081C3    mov         dword ptr [ebp-14],eax
 005081C6    mov         eax,dword ptr [ebp-14]
 005081C9    call        00501514
 005081CE    mov         eax,dword ptr [ebp-4]
 005081D1    cmp         byte ptr [eax+18A],0;TCustomMenuButton.FSelected:Boolean
>005081D8    jne         005081F0
 005081DA    mov         eax,dword ptr [ebp-4]
 005081DD    mov         byte ptr [eax+1B1],1;TCustomMenuButton.FDoClick:Boolean
 005081E4    mov         eax,dword ptr [ebp-4]
 005081E7    mov         si,0FFEB
 005081EB    call        @CallDynaInst;TCustomMenuButton.sub_004CCCAC
 005081F0    pop         esi
 005081F1    mov         esp,ebp
 005081F3    pop         ebp
 005081F4    ret         0C
end;*}

//005081F8
{*procedure sub_005081F8(?:?; ?:?; ?:?);
begin
 005081F8    push        ebp
 005081F9    mov         ebp,esp
 005081FB    add         esp,0FFFFFFE8
 005081FE    push        ebx
 005081FF    xor         ebx,ebx
 00508201    mov         dword ptr [ebp-18],ebx
 00508204    mov         dword ptr [ebp-10],ebx
 00508207    mov         dword ptr [ebp-0C],ecx
 0050820A    mov         dword ptr [ebp-8],edx
 0050820D    mov         dword ptr [ebp-4],eax
 00508210    mov         eax,dword ptr [ebp+8]
 00508213    call        @LStrAddRef
 00508218    xor         eax,eax
 0050821A    push        ebp
 0050821B    push        50831E
 00508220    push        dword ptr fs:[eax]
 00508223    mov         dword ptr fs:[eax],esp
 00508226    lea         eax,[ebp-10]
 00508229    mov         edx,dword ptr [ebp+8]
 0050822C    call        @LStrLAsg
 00508231    mov         eax,dword ptr [ebp-4]
 00508234    mov         eax,dword ptr [eax+30];TCustomMenuButton.FParent:TWinControl
 00508237    mov         edx,dword ptr ds:[4FF880];TCustomActionMainMenuBar
 0050823D    call        @IsClass
 00508242    test        al,al
>00508244    je          005082E6
 0050824A    mov         eax,dword ptr [ebp-4]
 0050824D    mov         eax,dword ptr [eax+30];TCustomMenuButton.FParent:TWinControl
 00508250    mov         edx,dword ptr ds:[4FF880];TCustomActionMainMenuBar
 00508256    call        @AsClass
 0050825B    mov         dword ptr [ebp-14],eax
 0050825E    mov         eax,dword ptr [ebp-14]
 00508261    cmp         byte ptr [eax+248],0;TCustomActionMainMenuBar.FPersistentHotKeys:Boolean
>00508268    jne         00508280
 0050826A    lea         edx,[ebp-18]
 0050826D    mov         eax,dword ptr [ebp-10]
 00508270    call        004E577C
 00508275    mov         edx,dword ptr [ebp-18]
 00508278    lea         eax,[ebp-10]
 0050827B    call        @LStrLAsg
 00508280    mov         eax,dword ptr [ebp-14]
 00508283    cmp         byte ptr [eax+30D],0;TCustomActionMainMenuBar.FInActive:Boolean
>0050828A    je          005082B9
 0050828C    mov         eax,dword ptr [ebp-4]
 0050828F    cmp         byte ptr [eax+1AB],0;TCustomMenuButton.FMouseInControl:Boolean
>00508296    jne         005082B9
 00508298    mov         eax,dword ptr [ebp-4]
 0050829B    call        0051541C
 005082A0    call        TActionToolBar.GetColorMap
 005082A5    mov         edx,dword ptr [eax+48]
 005082A8    mov         eax,dword ptr [ebp-4]
 005082AB    mov         eax,dword ptr [eax+160];TCustomMenuButton..................................................
 005082B1    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 005082B4    call        TFont.SetColor
 005082B9    mov         eax,dword ptr [ebp-4]
 005082BC    cmp         byte ptr [eax+18A],0;TCustomMenuButton.FSelected:Boolean
>005082C3    je          005082E6
 005082C5    mov         eax,dword ptr [ebp-4]
 005082C8    call        0051541C
 005082CD    call        TActionToolBar.GetColorMap
 005082D2    mov         edx,dword ptr [eax+3C]
 005082D5    mov         eax,dword ptr [ebp-4]
 005082D8    mov         eax,dword ptr [eax+160];TCustomMenuButton..................................................
 005082DE    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 005082E1    call        TFont.SetColor
 005082E6    mov         eax,dword ptr [ebp-10]
 005082E9    push        eax
 005082EA    mov         ecx,dword ptr [ebp-0C]
 005082ED    mov         edx,dword ptr [ebp-8]
 005082F0    mov         eax,dword ptr [ebp-4]
 005082F3    call        00514200
 005082F8    xor         eax,eax
 005082FA    pop         edx
 005082FB    pop         ecx
 005082FC    pop         ecx
 005082FD    mov         dword ptr fs:[eax],edx
 00508300    push        508325
 00508305    lea         eax,[ebp-18]
 00508308    call        @LStrClr
 0050830D    lea         eax,[ebp-10]
 00508310    call        @LStrClr
 00508315    lea         eax,[ebp+8]
 00508318    call        @LStrClr
 0050831D    ret
>0050831E    jmp         @HandleFinally
>00508323    jmp         00508305
 00508325    pop         ebx
 00508326    mov         esp,ebp
 00508328    pop         ebp
 00508329    ret         4
end;*}

//0050832C
{*function sub_0050832C(?:TCustomMenuButton):?;
begin
 0050832C    push        ebp
 0050832D    mov         ebp,esp
 0050832F    add         esp,0FFFFFFF8
 00508332    mov         dword ptr [ebp-4],eax
 00508335    mov         eax,dword ptr [ebp-4]
 00508338    call        0051541C
 0050833D    mov         edx,dword ptr ds:[4FED30];TCustomActionMenuBar
 00508343    call        @AsClass
 00508348    mov         dword ptr [ebp-8],eax
 0050834B    mov         eax,dword ptr [ebp-8]
 0050834E    pop         ecx
 0050834F    pop         ecx
 00508350    pop         ebp
 00508351    ret
end;*}

//00508354
procedure sub_00508354;
begin
{*
 00508354    push        ebp
 00508355    mov         ebp,esp
 00508357    push        ecx
 00508358    mov         dword ptr [ebp-4],eax
 0050835B    mov         dl,1
 0050835D    mov         eax,dword ptr [ebp-4]
 00508360    mov         ecx,dword ptr [eax]
 00508362    call        dword ptr [ecx+0D8];TCustomMenuButton.sub_004FC588
 00508368    mov         eax,dword ptr [ebp-4]
 0050836B    call        00514CC8
 00508370    pop         ecx
 00508371    pop         ebp
 00508372    ret
*}
end;

//00508374
{*procedure TCustomMenuButton.sub_004CCD68(?:?; ?:?; ?:?; ?:?);
begin
 00508374    push        ebp
 00508375    mov         ebp,esp
 00508377    add         esp,0FFFFFFF8
 0050837A    mov         byte ptr [ebp-6],cl
 0050837D    mov         byte ptr [ebp-5],dl
 00508380    mov         dword ptr [ebp-4],eax
 00508383    mov         eax,dword ptr [ebp+0C]
 00508386    push        eax
 00508387    mov         eax,dword ptr [ebp+8]
 0050838A    push        eax
 0050838B    mov         cl,byte ptr [ebp-6]
 0050838E    mov         dl,byte ptr [ebp-5]
 00508391    mov         eax,dword ptr [ebp-4]
 00508394    call        TCustomButtonControl.sub_004CCD68
 00508399    mov         eax,dword ptr [ebp-4]
 0050839C    call        0050832C
 005083A1    mov         al,byte ptr [eax+296]
 005083A7    mov         edx,dword ptr [ebp-4]
 005083AA    mov         byte ptr [edx+1B0],al;TCustomMenuButton.FCloseMenu:Boolean
 005083B0    mov         al,byte ptr [ebp-5]
 005083B3    sub         al,1
>005083B5    jb          005083BE
>005083B7    je          0050841B
>005083B9    jmp         00508442
 005083BE    mov         eax,dword ptr [ebp-4]
 005083C1    cmp         byte ptr [eax+1B0],0;TCustomMenuButton.FCloseMenu:Boolean
>005083C8    jne         00508442
 005083CA    mov         dl,1
 005083CC    mov         eax,dword ptr [ebp-4]
 005083CF    mov         ecx,dword ptr [eax]
 005083D1    call        dword ptr [ecx+0D8];TCustomMenuButton.sub_004FC588
 005083D7    cmp         dword ptr ds:[55E024],0;gvar_0055E024:TCustomActionMenuBar
>005083DE    je          005083FB
 005083E0    mov         eax,dword ptr [ebp-4]
 005083E3    mov         eax,dword ptr [eax+4];TCustomMenuButton.FOwner:TComponent
 005083E6    cmp         eax,dword ptr ds:[55E024];gvar_0055E024:TCustomActionMenuBar
>005083EC    je          005083FB
 005083EE    mov         eax,[0055E024];gvar_0055E024:TCustomActionMenuBar
 005083F3    mov         edx,dword ptr [eax]
 005083F5    call        dword ptr [edx+17C]
 005083FB    mov         eax,dword ptr [ebp-4]
 005083FE    push        eax
 005083FF    push        0
 00508401    push        0B403
 00508406    mov         eax,dword ptr [ebp-4]
 00508409    call        0050832C
 0050840E    call        TWinControl.GetHandle
 00508413    push        eax
 00508414    call        user32.PostMessageA
>00508419    jmp         00508442
 0050841B    mov         eax,dword ptr [ebp-4]
 0050841E    call        0050832C
 00508423    cmp         byte ptr [eax+296],0
>0050842A    je          00508442
 0050842C    cmp         byte ptr [ebp-5],1
>00508430    jne         00508442
 00508432    mov         eax,dword ptr [ebp-4]
 00508435    call        0050832C
 0050843A    mov         edx,dword ptr [eax]
 0050843C    call        dword ptr [edx+17C]
 00508442    pop         ecx
 00508443    pop         ecx
 00508444    pop         ebp
 00508445    ret         8
end;*}

//00508448
{*procedure TCustomMenuButton.sub_004CD1B0(?:?; ?:?; ?:?; ?:?);
begin
 00508448    push        ebp
 00508449    mov         ebp,esp
 0050844B    add         esp,0FFFFFFF8
 0050844E    mov         byte ptr [ebp-6],cl
 00508451    mov         byte ptr [ebp-5],dl
 00508454    mov         dword ptr [ebp-4],eax
 00508457    mov         eax,dword ptr [ebp-4]
 0050845A    mov         byte ptr [eax+1B1],0;TCustomMenuButton.FDoClick:Boolean
 00508461    mov         eax,dword ptr [ebp+0C]
 00508464    push        eax
 00508465    mov         eax,dword ptr [ebp+8]
 00508468    push        eax
 00508469    mov         cl,byte ptr [ebp-6]
 0050846C    mov         dl,byte ptr [ebp-5]
 0050846F    mov         eax,dword ptr [ebp-4]
 00508472    call        TCustomButtonControl.sub_004CD1B0
 00508477    cmp         byte ptr [ebp-5],0
>0050847B    jne         00508499
 0050847D    mov         eax,dword ptr [ebp-4]
 00508480    cmp         byte ptr [eax+1B0],0;TCustomMenuButton.FCloseMenu:Boolean
>00508487    je          00508499
 00508489    mov         eax,dword ptr [ebp-4]
 0050848C    call        0050832C
 00508491    mov         edx,dword ptr [eax]
 00508493    call        dword ptr [edx+17C]
 00508499    pop         ecx
 0050849A    pop         ecx
 0050849B    pop         ebp
 0050849C    ret         8
end;*}

//005084A0
procedure sub_005084A0;
begin
{*
 005084A0    push        ebp
 005084A1    mov         ebp,esp
 005084A3    add         esp,0FFFFFFF8
 005084A6    mov         dword ptr [ebp-4],eax
 005084A9    mov         eax,dword ptr [ebp-4]
 005084AC    mov         al,byte ptr [eax+1AE];TCustomMenuButton.FState:TButtonState
 005084B2    mov         byte ptr [ebp-5],al
 005084B5    mov         eax,dword ptr [ebp-4]
 005084B8    mov         eax,dword ptr [eax+16C];TCustomMenuButton.FActionClient:TActionClientItem
 005084BE    cmp         dword ptr [eax+18],0;TActionClientItem.FChildActionBar:TCustomActionBar
>005084C2    je          005084CE
 005084C4    mov         eax,dword ptr [ebp-4]
 005084C7    mov         byte ptr [eax+1AE],2;TCustomMenuButton.FState:TButtonState
 005084CE    mov         eax,dword ptr [ebp-4]
 005084D1    call        004FC400
 005084D6    mov         al,byte ptr [ebp-5]
 005084D9    mov         edx,dword ptr [ebp-4]
 005084DC    mov         byte ptr [edx+1AE],al;TCustomMenuButton.FState:TButtonState
 005084E2    pop         ecx
 005084E3    pop         ecx
 005084E4    pop         ebp
 005084E5    ret
*}
end;

//005084E8
{*procedure TCustomMenuButton.CMDialogChar(?:?);
begin
 005084E8    push        ebp
 005084E9    mov         ebp,esp
 005084EB    add         esp,0FFFFFFF8
 005084EE    mov         dword ptr [ebp-8],edx
 005084F1    mov         dword ptr [ebp-4],eax
 005084F4    pop         ecx
 005084F5    pop         ecx
 005084F6    pop         ebp
 005084F7    ret
end;*}

//005084F8
procedure RegisterActnBarStyle(AStyle:TActionBarStyleEx);
begin
{*
 005084F8    push        ebp
 005084F9    mov         ebp,esp
 005084FB    push        0
 005084FD    push        0
 005084FF    push        0
 00508501    push        ebx
 00508502    mov         dword ptr [ebp-4],eax
 00508505    xor         eax,eax
 00508507    push        ebp
 00508508    push        508586
 0050850D    push        dword ptr fs:[eax]
 00508510    mov         dword ptr fs:[eax],esp
 00508513    mov         eax,[0055B2C4];^gvar_0055E028
 00508518    cmp         dword ptr [eax],0
>0050851B    jne         00508531
 0050851D    mov         dl,1
 0050851F    mov         eax,[0050A3E4];TActionBarStyleList
 00508524    call        TObject.Create
 00508529    mov         edx,dword ptr ds:[55B2C4];^gvar_0055E028
 0050852F    mov         dword ptr [edx],eax
 00508531    lea         edx,[ebp-8]
 00508534    mov         eax,dword ptr [ebp-4]
 00508537    mov         ecx,dword ptr [eax]
 00508539    call        dword ptr [ecx+8]
 0050853C    mov         edx,dword ptr [ebp-8]
 0050853F    mov         eax,[0055B2C4];^gvar_0055E028
 00508544    mov         eax,dword ptr [eax]
 00508546    mov         ecx,dword ptr [eax]
 00508548    call        dword ptr [ecx+54]
 0050854B    inc         eax
>0050854C    jne         0050856B
 0050854E    lea         edx,[ebp-0C]
 00508551    mov         eax,dword ptr [ebp-4]
 00508554    mov         ecx,dword ptr [eax]
 00508556    call        dword ptr [ecx+8]
 00508559    mov         edx,dword ptr [ebp-0C]
 0050855C    mov         ecx,dword ptr [ebp-4]
 0050855F    mov         eax,[0055B2C4];^gvar_0055E028
 00508564    mov         eax,dword ptr [eax]
 00508566    mov         ebx,dword ptr [eax]
 00508568    call        dword ptr [ebx+3C]
 0050856B    xor         eax,eax
 0050856D    pop         edx
 0050856E    pop         ecx
 0050856F    pop         ecx
 00508570    mov         dword ptr fs:[eax],edx
 00508573    push        50858D
 00508578    lea         eax,[ebp-0C]
 0050857B    mov         edx,2
 00508580    call        @LStrArrayClr
 00508585    ret
>00508586    jmp         @HandleFinally
>0050858B    jmp         00508578
 0050858D    pop         ebx
 0050858E    mov         esp,ebp
 00508590    pop         ebp
 00508591    ret
*}
end;

//00508594
procedure UnRegisterActnBarStyle(AStyle:TActionBarStyleEx);
begin
{*
 00508594    push        ebp
 00508595    mov         ebp,esp
 00508597    add         esp,0FFFFFFF8
 0050859A    mov         dword ptr [ebp-4],eax
 0050859D    mov         edx,dword ptr [ebp-4]
 005085A0    mov         eax,[0055B2C4];^gvar_0055E028
 005085A5    mov         eax,dword ptr [eax]
 005085A7    mov         ecx,dword ptr [eax]
 005085A9    call        dword ptr [ecx+5C]
 005085AC    mov         dword ptr [ebp-8],eax
 005085AF    cmp         dword ptr [ebp-8],0FFFFFFFF
>005085B3    je          005085C4
 005085B5    mov         eax,[0055B2C4];^gvar_0055E028
 005085BA    mov         eax,dword ptr [eax]
 005085BC    mov         edx,dword ptr [ebp-8]
 005085BF    mov         ecx,dword ptr [eax]
 005085C1    call        dword ptr [ecx+48]
 005085C4    mov         eax,[0055B2C4];^gvar_0055E028
 005085C9    mov         eax,dword ptr [eax]
 005085CB    mov         edx,dword ptr [eax]
 005085CD    call        dword ptr [edx+14]
 005085D0    test        eax,eax
>005085D2    jne         005085DE
 005085D4    mov         eax,[0055B2C4];^gvar_0055E028
 005085D9    call        FreeAndNil
 005085DE    pop         ecx
 005085DF    pop         ecx
 005085E0    pop         ebp
 005085E1    ret
*}
end;

Initialization
//00508614
{*
 00508614    push        ebp
 00508615    mov         ebp,esp
 00508617    sub         dword ptr ds:[55E018],1
>0050861E    jae         00508635
 00508620    xor         eax,eax
 00508622    mov         [0055E014],eax;gvar_0055E014
 00508627    xor         eax,eax
 00508629    mov         [0055E01C],eax;gvar_0055E01C:HHOOK
 0050862E    xor         eax,eax
 00508630    mov         [0055E020],eax;gvar_0055E020:TMenuList
 00508635    pop         ebp
 00508636    ret
*}
Finalization
end.