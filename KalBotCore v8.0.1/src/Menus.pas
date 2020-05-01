//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Menus;

interface

uses
  SysUtils, Classes, Menus, Graphics, ImgList;

type
  EMenuError = class(Exception)
  end;
  TMenuBreak = (mbNone, mbBreak, mbBarBreak);
  TMenuChangeEvent = procedure(Sender:TObject; Source:TMenuItem; Rebuild:Boolean) of object;;
  TMenuDrawItemEvent = procedure(Sender:TObject; ACanvas:TCanvas; ARect:TRect; Selected:Boolean) of object;;
  TAdvancedMenuDrawItemEvent = procedure(Sender:TObject; ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState) of object;;
  TMenuMeasureItemEvent = procedure(Sender:TObject; ACanvas:TCanvas; var Width:Integer; var Height:Integer) of object;;
  TMenuItemAutoFlag = (maAutomatic, maManual, maParent);
  TMenuAutoFlag = (maAutomatic, maManual);
  TMenuActionLink = class(TActionLink)
  public
    .......................FClient:TMenuItem;//f18
    //procedure v0(?:?); virtual;//v0//004DF6A4
    //function v8:?; virtual;//v8//004DF994
    //procedure v10(?:?; ?:?); virtual;//v10//004DFB5C
    //function v20:?; virtual;//v20//004DF700
    //function v24:?; virtual;//v24//004DF74C
    //function v28:?; virtual;//v28//004DF790
    //function v2C:?; virtual;//v2C//004DF864
    //function v30:?; virtual;//v30//004DF7D4
    //function v38:?; virtual;//v38//004DF818
    //function v3C:?; virtual;//v3C//004DF8B8
    //function v40:?; virtual;//v40//004DF900
    //function v44:?; virtual;//v44//004DF94C
    //procedure v48(?:?); virtual;//v48//004DF9D0
    //procedure v4C(?:?); virtual;//v4C//004DF9FC
    //procedure v50(?:?); virtual;//v50//004DFA28
    //procedure v54(?:?); virtual;//v54//004DFA54
    //procedure v5C(?:?); virtual;//v5C//004DFA80
    //procedure v68(?:?); virtual;//v68//004DFAA8
    //procedure v6C(?:?); virtual;//v6C//004DFAD8
    //procedure v70(?:?); virtual;//v70//004DFB04
    //procedure v74(?:?); virtual;//v74//004DFB30
    //function v78:?; virtual;//v78//004DF6C8
  end;
  TMenuItem = class(TComponent)
  public
    Caption:String;//f30
    FHandle:HMENU;//f34
    Checked:Boolean;//f38
    Enabled:Boolean;//f39
    Default:Boolean;//f3A
    AutoHotkeys:TMenuItemAutoFlag;//f3B
    AutoLineReduction:TMenuItemAutoFlag;//f3C
    RadioItem:Boolean;//f3D
    Visible:Boolean;//f3E
    GroupIndex:byte;//f3F
    ImageIndex:TImageIndex;//f40
    FActionLink:TMenuActionLink;//f44
    Break:TMenuBreak;//f48
    FBitmap:TBitmap;//f4C
    FCommand:word;//f50
    HelpContext:THelpContext;//f54
    Hint:String;//f58
    FItems:TList;//f5C
    ShortCut:TShortCut;//f60
    FParent:TMenuItem;//f64
    FMerged:TMenuItem;//f68
    FMergedWith:TMenuItem;//f6C
    FMenu:TMenu;//f70
    FStreamedRebuild:Boolean;//f74
    FImageChangeLink:TChangeLink;//f78
    SubMenuImages:TCustomImageList;//f7C
    FOnChange:TMenuChangeEvent;//f80
    f82:word;//f82
    f84:TMenu;//f84
    OnClick:TNotifyEvent;//f88
    f8A:word;//f8A
    f8C:TPopupMenu;//f8C
    OnDrawItem:TMenuDrawItemEvent;//f90
    f92:word;//f92
    f94:dword;//f94
    OnAdvancedDrawItem:TAdvancedMenuDrawItemEvent;//f98
    OnMeasureItem:TMenuMeasureItemEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    AutoCheck:Boolean;//fA8
    destructor Destroy; virtual;//004DFC2C
    //procedure v0(?:?); virtual;//v0//004E2C5C
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004E03AC
    procedure vC; virtual;//vC//004E016C
    //procedure v10(?:?; ?:?); virtual;//v10//004E2CF8
    constructor Create; virtual;//v2C//004DFB8C
    procedure AdvancedDrawItem(ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState; TopLevel:Boolean); virtual;//v30//004E18C0
    //procedure v34(?:?; ?:?; ?:?); virtual;//v34//004E0634
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//004E1AA4
    //procedure v3C(?:?); virtual;//v3C//004E2568
    procedure v40; virtual;//v40//004E2244
    procedure v44; virtual;//v44//004E23E8
    procedure sub_004E1F94; dynamic;//004E1F94
    //procedure sub_004E28C4(?:?; ?:?); dynamic;//004E28C4
    procedure sub_004834C8; dynamic;//004E1CF4
    procedure sub_00483570; dynamic;//004E27A0
    //procedure sub_00483588(?:?); dynamic;//004E27DC
    //procedure sub_0048355C(?:?; ?:?); dynamic;//004E2190
    //procedure sub_004834DC(?:?; ?:?); dynamic;//004E2148
    function GetImageList:TCustomImageList;//004E19F4
    procedure SetBreak(Value:TMenuBreak);//004E1D08
    procedure SetCaption(Value:String);//004E1D38
    procedure SetChecked(Value:Boolean);//004E1DE4
    procedure SetEnabled(Value:Boolean);//004E1E5C
    procedure SetGroupIndex(Value:Byte);//004E1F00
    //function GetAction:?;//004E1F68
    procedure SetShortCut(Value:TShortCut);//004E2010
    procedure SetVisible(Value:Boolean);//004E2044
    procedure SetImageIndex(Value:TImageIndex);//004E2074
    procedure SetDefault(Value:Boolean);//004E21BC
    //function GetBitmap:?;//004E2640
    procedure SetAction(Value:TBasicAction);//004E2684
    procedure SetBitmap(Value:TBitmap);//004E271C
    function GetParentMenu:TMenu;//004E2848
    procedure SetRadioItem(Value:Boolean);//004E287C
    function IsStoredCaption(Value:String):Boolean;//004E2A88
    function IsStoredChecked(Value:Boolean):Boolean;//004E2ABC
    function IsStoredEnabled(Value:Boolean):Boolean;//004E2AF0
    function IsStoredHint(Value:String):Boolean;//004E2B24
    function IsStoredHelpContext(Value:THelpContext):Boolean;//004E2B58
    function IsStoredImageIndex(Value:TImageIndex):Boolean;//004E2B8C
    function IsStoredShortCut(Value:TShortCut):Boolean;//004E2BC0
    function IsStoredVisible(Value:Boolean):Boolean;//004E2BF4
    function IsStoredOnClick(Value:TNotifyEvent):Boolean;//004E2C28
    procedure SetSubMenuImages(Value:TCustomImageList);//004E2D64
    procedure SetAutoHotkeys(Value:TMenuItemAutoFlag);//004E35BC
    procedure SetAutoLineReduction(Value:TMenuItemAutoFlag);//004E37B4
  end;
  TMenu = class(TComponent)
  public
    FBiDiMode:TBiDiMode;//f30
    Items:TMenuItem;//f34
    FWindowHandle:HWND;//f38
    FMenuImage:String;//f3C
    FOwnerDraw:Boolean;//f40
    FParentBiDiMode:Boolean;//f41
    FImageChangeLink:TChangeLink;//f44
    FImages:TCustomImageList;//f48
    FOnChange:TMenuChangeEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    destructor Destroy; virtual;//004E3950
    procedure vC; virtual;//vC//004E43BC
    //procedure v10(?:?; ?:?); virtual;//v10//004E44AC
    constructor v2C; virtual;//v2C//004E3884
    //procedure v30(?:?; ?:?); virtual;//v30//004E4388
    //function v34:?; virtual;//v34//004E39C4
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//004E43DC
    //procedure sub_004E3F08(?:?); dynamic;//004E3F08
    //procedure sub_0048355C(?:?; ?:?); dynamic;//004E39E4
    //procedure sub_004834DC(?:?; ?:?; ?:?); dynamic;//004E3998
    function IsRightToLeft:Boolean;//004E44E8
  end;
  TMainMenu = class(TMenu)
  public
    FOle2Menu:HMENU;//f58
    AutoMerge:Boolean;//f5C
    //function v34:?; virtual;//v34//004E4C54
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//004E4B48
    function IsStoredBiDiMode(Value:TBiDiMode):Boolean;//004E4030
    procedure SetOwnerDraw(Value:Boolean);//004E428C
    procedure SetImages(Value:TCustomImageList);//004E4448
    procedure SetBiDiMode(Value:TBiDiMode);//004E4998
    procedure SetParentBiDiMode(Value:Boolean);//004E49CC
    //function GetAutoHotkeys:?;//004E4A74
    procedure SetAutoHotkeys(Value:TMenuAutoFlag);//004E4A98
    //function GetAutoLineReduction:?;//004E4ABC
    procedure SetAutoLineReduction(Value:TMenuAutoFlag);//004E4AE0
    procedure SetAutoMerge(Value:Boolean);//004E4B04
  end;
  TPopupAlignment = (paLeft, paRight, paCenter);
  TTrackButton = (tbRightButton, tbLeftButton);
  TMenuAnimations = (maLeftToRight, maRightToLeft, maTopToBottom, maBottomToTop, maNone);
  TMenuAnimation = set of TMenuAnimations;
  TPopupMenu = class(TMenu)
  public
    FPopupPoint:TPoint;//f58
    Alignment:TPopupAlignment;//f60
    AutoPopup:Boolean;//f61
    FPopupComponent:TComponent;//f64
    TrackButton:TTrackButton;//f68
    MenuAnimation:TMenuAnimation;//f69
    OnPopup:TNotifyEvent;//f70
    f72:word;//f72
    f74:dword;//f74
    destructor Destroy; virtual;//004E53D0
    constructor v2C; virtual;//v2C//004E5334
    //procedure v3C(?:?); virtual;//v3C//004E5410
    //procedure v40(?:?; ?:?); virtual;//v40//004E5544
    //function GetHelpContext:?;//004E5438
    procedure SetHelpContext(Value:THelpContext);//004E5454
  end;
  TPopupList = class(TList)
  public
    ...FWindow:HWND;//f10
    //procedure v10(?:?); virtual;//v10//004E4CD8
  end;
  TMenuItemStack = class(TStack)
  end;
    //function sub_004DF014(?:?):?;//004DF014
    //function sub_004DF058:?;//004DF058
    procedure sub_004DF064;//004DF064
    //function sub_004DF08C(?:?; ?:?):?;//004DF08C
    //procedure sub_004DF0DC(?:?; ?:AnsiString);//004DF0DC
    //procedure sub_004DF13C(?:?; ?:?);//004DF13C
    //function sub_004DF35C(?:?; ?:AnsiString):?;//004DF35C
    //function sub_004DF3D0(?:?):?;//004DF3D0
    //function sub_004DF4EC:?;//004DF4EC
    //function sub_004DF518(?:?; ?:?; ?:?; ?:?):?;//004DF518
    //procedure sub_004DF584(?:?; ?:TMenuItem; ?:?);//004DF584
    //procedure sub_004DF6A4(?:?);//004DF6A4
    //function sub_004DF6C8:?;//004DF6C8
    //function sub_004DF700:?;//004DF700
    //function sub_004DF74C:?;//004DF74C
    //function sub_004DF790:?;//004DF790
    //function sub_004DF7D4:?;//004DF7D4
    //function sub_004DF818:?;//004DF818
    //function sub_004DF864:?;//004DF864
    //function sub_004DF8B8:?;//004DF8B8
    //function sub_004DF900:?;//004DF900
    //function sub_004DF94C:?;//004DF94C
    //function sub_004DF994:?;//004DF994
    //procedure sub_004DF9D0(?:?);//004DF9D0
    //procedure sub_004DF9FC(?:?);//004DF9FC
    //procedure sub_004DFA28(?:?);//004DFA28
    //procedure sub_004DFA54(?:?);//004DFA54
    //procedure sub_004DFA80(?:?);//004DFA80
    //procedure sub_004DFAA8(?:?);//004DFAA8
    //procedure sub_004DFAD8(?:?);//004DFAD8
    //procedure sub_004DFB04(?:?);//004DFB04
    //procedure sub_004DFB30(?:?);//004DFB30
    //procedure sub_004DFB5C(?:?; ?:?);//004DFB5C
    constructor Create;//004DFB8C
    destructor Destroy;//004DFC2C
    //procedure sub_004DFD18(?:?; ?:?; ?:?);//004DFD18
    //function sub_004DFFF8(?:?; ?:?):?;//004DFFF8
    procedure sub_004E0024(?:TMenuItem);//004E0024
    //procedure sub_004E00F8(?:TMenuItem; ?:?);//004E00F8
    procedure sub_004E016C;//004E016C
    procedure sub_004E01B8(?:TMenuItem);//004E01B8
    //procedure sub_004E02C0(?:TMenuItem; ?:?; ?:?);//004E02C0
    //function sub_004E0340(?:TMenuItem):?;//004E0340
    procedure DefineProperties(Filer:TFiler);//004E03AC
    //procedure sub_004E0400(?:TMenuItem; ?:?; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);//004E0400
    //procedure sub_004E0634(?:?; ?:?; ?:?);//004E0634
    procedure NormalDraw;//004E0680
    procedure BiDiDraw;//004E0F90
    procedure AdvancedDrawItem(ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState; TopLevel:Boolean);//004E18C0
    procedure GetMenuSize;//004E1A58
    //procedure sub_004E1AA4(?:?; ?:?; ?:?);//004E1AA4
    procedure sub_004834C8;//004E1CF4
    procedure sub_004E1D70(?:TMenuItem);//004E1D70
    procedure sub_004E1F94;//004E1F94
    //function sub_004E1FAC(?:TMenuItem):?;//004E1FAC
    //function sub_004E1FD8(?:TMenuItem; ?:?):?;//004E1FD8
    //function sub_004E20A4(?:?):?;//004E20A4
    //procedure sub_004E20D8(?:TMenuItem; ?:?);//004E20D8
    //procedure sub_004834DC(?:?; ?:?);//004E2148
    //procedure sub_0048355C(?:?; ?:?);//004E2190
    procedure sub_004E2244;//004E2244
    //procedure sub_004E2264(?:?; ?:?; ?:?);//004E2264
    //procedure sub_004E2354(?:?; ?:?);//004E2354
    procedure sub_004E23E8;//004E23E8
    //function sub_004E24D0(?:TMenuItem; ?:TMenuItem):?;//004E24D0
    //procedure sub_004E2504(?:?; ?:TMenuItem);//004E2504
    procedure sub_004E252C(?:TMenuItem; ?:TMenuItem);//004E252C
    //procedure sub_004E2568(?:?);//004E2568
    //procedure sub_004E25CC(?:?; ?:?; ?:?; ?:?);//004E25CC
    //procedure sub_004E2760(?:?);//004E2760
    procedure sub_00483570;//004E27A0
    //procedure sub_00483588(?:?);//004E27DC
    //procedure sub_004E28C4(?:?; ?:?);//004E28C4
    //procedure sub_004E2A58(?:?; ?:?);//004E2A58
    //procedure sub_004E2C5C(?:?);//004E2C5C
    //procedure sub_004E2CF8(?:?; ?:?);//004E2CF8
    //procedure sub_004E2DC8(?:?; ?:?);//004E2DC8
    //function sub_004E2DEC(?:?):?;//004E2DEC
    procedure sub_004E2E24(?:TMenuItem);//004E2E24
    //function sub_004E2E44(?:?; ?:?):?;//004E2E44
    //procedure sub_004E2E88(?:?);//004E2E88
    //procedure sub_004E2F18(?:AnsiString; ?:?; ?:?);//004E2F18
    //function sub_004E30A0(?:TMenuItem; ?:?):?;//004E30A0
    //function sub_004E35EC(?:?):?;//004E35EC
    //function sub_004E361C(?:TMenuItem; ?:?):?;//004E361C
    //function sub_004E37E4(?:?):?;//004E37E4
    //function sub_004E3834(?:?):?;//004E3834
    constructor sub_004E3884;//004E3884
    destructor Destroy;//004E3950
    //procedure sub_004834DC(?:?; ?:?; ?:?);//004E3998
    //function sub_004E39C4:?;//004E39C4
    //procedure sub_0048355C(?:?; ?:?);//004E39E4
    //function sub_004E3A10(?:?):?;//004E3A10
    procedure sub_004E3A48(?:TMainMenu);//004E3A48
    //function sub_004E3A6C(?:?; ?:?):?;//004E3A6C
    //function sub_004E3B1C(?:TMenu; ?:HMENU; ?:?):?;//004E3B1C
    //function sub_004E3B58(?:Pointer; ?:?; ?:?):?;//004E3B58
    //function sub_004E3BF0(?:Pointer; ?:?):?;//004E3BF0
    //function sub_004E3C2C(?:Pointer; ?:?):?;//004E3C2C
    //function sub_004E3D2C(?:?):?;//004E3D2C
    //function sub_004E3D58(?:?; ?:?):?;//004E3D58
    //function sub_004E3D8C(?:TMenuItem; ?:?; ?:?):?;//004E3D8C
    //procedure sub_004E3F08(?:?);//004E3F08
    procedure sub_004E404C(?:TMainMenu);//004E404C
    //procedure sub_004E4118(?:?; ?:?);//004E4118
    //function sub_004E41FC(?:TMainMenu):?;//004E41FC
    procedure sub_004E42B8(?:TPopupMenu);//004E42B8
    procedure sub_004E4338(?:TComponent; ?:HWND);//004E4338
    //procedure sub_004E4388(?:?; ?:?);//004E4388
    procedure sub_004E43BC;//004E43BC
    //procedure sub_004E43DC(?:?; ?:?; ?:?);//004E43DC
    //procedure sub_004E4424(?:?; ?:?);//004E4424
    //procedure sub_004E44AC(?:?; ?:?);//004E44AC
    //function sub_004E4518(?:?; ?:LongWord; ?:?; ?:?; ?:?):?;//004E4518
    //function sub_004E45AC(?:?; ?:LongWord; ?:?; ?:?; ?:?):?;//004E45AC
    //procedure sub_004E46C0(?:Pointer; ?:?);//004E46C0
    //function sub_004E48B8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004E48B8
    procedure sub_004E49F8(?:TMenu);//004E49F8
    procedure sub_004E4A38(?:TPopupMenu; ?:TImage);//004E4A38
    //procedure sub_004E4B48(?:?; ?:?; ?:?);//004E4B48
    //procedure sub_004E4BB0(?:?; ?:?);//004E4BB0
    //procedure sub_004E4BE8(?:?; ?:?);//004E4BE8
    //procedure sub_004E4C1C(?:?);//004E4C1C
    //function sub_004E4C54:?;//004E4C54
    //procedure sub_004E4CD8(?:?);//004E4CD8
    //procedure sub_004E52CC(?:?; ?:TPopupMenu);//004E52CC
    //procedure sub_004E5304(?:?; ?:?);//004E5304
    constructor sub_004E5334;//004E5334
    destructor Destroy;//004E53D0
    //procedure sub_004E5410(?:?);//004E5410
    procedure sub_004E5470(?:TPopupMenu);//004E5470
    //function sub_004E54D8(?:TPopupMenu):?;//004E54D8
    //procedure sub_004E5544(?:?; ?:?);//004E5544
    //procedure sub_004E5620(?:?; ?:?);//004E5620
    //procedure sub_004E5678(?:?; ?:TControlCanvas; ?:?; ?:?);//004E5678
    //procedure sub_004E577C(?:AnsiString; ?:?);//004E577C
    //procedure sub_004E5850(?:?; ?:?);//004E5850
    //function sub_004E58E4(?:String; ?:String):?;//004E58E4
    procedure _NF__590;//004E5958

implementation

//004DF014
{*function sub_004DF014(?:?):?;
begin
 004DF014    push        ebp
 004DF015    mov         ebp,esp
 004DF017    add         esp,0FFFFFFF4
 004DF01A    mov         dword ptr [ebp-4],eax
 004DF01D    xor         eax,eax
 004DF01F    mov         dword ptr [ebp-8],eax
 004DF022    mov         eax,dword ptr [ebp-4]
 004DF025    call        004C8F28
 004DF02A    mov         dword ptr [ebp-0C],eax
 004DF02D    cmp         dword ptr [ebp-0C],0
>004DF031    je          004DF051
 004DF033    push        0
 004DF035    mov         edx,dword ptr [ebp-4]
 004DF038    xor         ecx,ecx
 004DF03A    mov         eax,dword ptr [ebp-0C]
 004DF03D    call        004D052C
 004DF042    mov         dword ptr [ebp-8],eax
 004DF045    cmp         dword ptr [ebp-8],0
>004DF049    jne         004DF051
 004DF04B    mov         eax,dword ptr [ebp-0C]
 004DF04E    mov         dword ptr [ebp-8],eax
 004DF051    mov         eax,dword ptr [ebp-8]
 004DF054    mov         esp,ebp
 004DF056    pop         ebp
 004DF057    ret
end;*}

//004DF058
{*function sub_004DF058:?;
begin
 004DF058    push        ebp
 004DF059    mov         ebp,esp
 004DF05B    mov         eax,dword ptr [esp+8]
 004DF05F    pop         ebp
 004DF060    ret
end;*}

//004DF064
procedure sub_004DF064;
begin
{*
 004DF064    push        ebp
 004DF065    mov         ebp,esp
 004DF067    push        ecx
 004DF068    mov         dword ptr [ebp-4],eax
 004DF06B    push        ebp
 004DF06C    call        004DF058
 004DF071    pop         ecx
 004DF072    push        eax
 004DF073    mov         ecx,dword ptr [ebp-4]
 004DF076    mov         dl,1
 004DF078    mov         eax,[004DE0E4];EMenuError
 004DF07D    call        Exception.Create;EMenuError.Create
>004DF082    jmp         @RaiseExcept
*}
end;

//004DF08C
{*function sub_004DF08C(?:?; ?:?):?;
begin
 004DF08C    push        ebp
 004DF08D    mov         ebp,esp
 004DF08F    add         esp,0FFFFFFF8
 004DF092    mov         byte ptr [ebp-3],dl
 004DF095    mov         word ptr [ebp-2],ax
 004DF099    mov         word ptr [ebp-6],0
 004DF09F    cmp         byte ptr [ebp-1],0
>004DF0A3    jne         004DF0D1
 004DF0A5    mov         ax,word ptr [ebp-2]
 004DF0A9    mov         word ptr [ebp-6],ax
 004DF0AD    test        byte ptr [ebp-3],1
>004DF0B1    je          004DF0B9
 004DF0B3    add         word ptr [ebp-6],2000
 004DF0B9    test        byte ptr [ebp-3],4
>004DF0BD    je          004DF0C5
 004DF0BF    add         word ptr [ebp-6],4000
 004DF0C5    test        byte ptr [ebp-3],2
>004DF0C9    je          004DF0D1
 004DF0CB    add         word ptr [ebp-6],8000
 004DF0D1    mov         ax,word ptr [ebp-6]
 004DF0D5    pop         ecx
 004DF0D6    pop         ecx
 004DF0D7    pop         ebp
 004DF0D8    ret
end;*}

//004DF0DC
{*procedure sub_004DF0DC(?:?; ?:AnsiString);
begin
 004DF0DC    push        ebp
 004DF0DD    mov         ebp,esp
 004DF0DF    add         esp,0FFFFFEF4
 004DF0E5    mov         dword ptr [ebp-8],edx
 004DF0E8    mov         word ptr [ebp-2],ax
 004DF0EC    mov         eax,dword ptr [ebp-8]
 004DF0EF    call        @LStrClr
 004DF0F4    push        0
 004DF0F6    xor         eax,eax
 004DF0F8    mov         al,byte ptr [ebp-2]
 004DF0FB    push        eax
 004DF0FC    call        user32.MapVirtualKeyA
 004DF101    shl         eax,10
 004DF104    mov         dword ptr [ebp-0C],eax
 004DF107    cmp         dword ptr [ebp-0C],0
>004DF10B    je          004DF135
 004DF10D    push        100
 004DF112    lea         eax,[ebp-10C]
 004DF118    push        eax
 004DF119    mov         eax,dword ptr [ebp-0C]
 004DF11C    push        eax
 004DF11D    call        user32.GetKeyNameTextA
 004DF122    mov         eax,dword ptr [ebp-8]
 004DF125    lea         edx,[ebp-10C]
 004DF12B    mov         ecx,100
 004DF130    call        @LStrFromArray
 004DF135    mov         esp,ebp
 004DF137    pop         ebp
 004DF138    ret
end;*}

//004DF13C
{*procedure sub_004DF13C(?:?; ?:?);
begin
 004DF13C    push        ebp
 004DF13D    mov         ebp,esp
 004DF13F    add         esp,0FFFFFFF0
 004DF142    xor         ecx,ecx
 004DF144    mov         dword ptr [ebp-10],ecx
 004DF147    mov         dword ptr [ebp-0C],ecx
 004DF14A    mov         dword ptr [ebp-8],edx
 004DF14D    mov         word ptr [ebp-2],ax
 004DF151    xor         eax,eax
 004DF153    push        ebp
 004DF154    push        4DF343
 004DF159    push        dword ptr fs:[eax]
 004DF15C    mov         dword ptr fs:[eax],esp
 004DF15F    xor         eax,eax
 004DF161    mov         al,byte ptr [ebp-2]
 004DF164    cmp         eax,2D
>004DF167    jge         004DF190
 004DF169    add         eax,0FFFFFFF8
 004DF16C    sub         eax,2
>004DF16F    jb          004DF1D9
 004DF171    sub         eax,3
>004DF174    je          004DF1F3
 004DF176    sub         eax,0E
>004DF179    je          004DF206
 004DF17F    add         eax,0FFFFFFFB
 004DF182    sub         eax,9
>004DF185    jb          004DF219
>004DF18B    jmp         004DF2B1
 004DF190    cmp         eax,41
>004DF193    jge         004DF1B0
 004DF195    add         eax,0FFFFFFD3
 004DF198    sub         eax,2
>004DF19B    jb          004DF236
 004DF1A1    dec         eax
 004DF1A2    sub         eax,0A
>004DF1A5    jb          004DF250
>004DF1AB    jmp         004DF2B1
 004DF1B0    add         eax,0FFFFFFBF
 004DF1B3    sub         eax,1A
>004DF1B6    jb          004DF265
 004DF1BC    add         eax,0FFFFFFFB
 004DF1BF    sub         eax,0A
>004DF1C2    jb          004DF27A
 004DF1C8    add         eax,0FFFFFFFA
 004DF1CB    sub         eax,18
>004DF1CE    jb          004DF28F
>004DF1D4    jmp         004DF2B1
 004DF1D9    lea         eax,[ebp-0C]
 004DF1DC    mov         dl,byte ptr [ebp-2]
 004DF1DF    and         edx,7F
 004DF1E2    mov         edx,dword ptr [edx*4+5417C8]
 004DF1E9    call        @LStrLAsg
>004DF1EE    jmp         004DF2BD
 004DF1F3    lea         eax,[ebp-0C]
 004DF1F6    mov         edx,dword ptr ds:[5417F4];0x0 gvar_005417F4
 004DF1FC    call        @LStrLAsg
>004DF201    jmp         004DF2BD
 004DF206    lea         eax,[ebp-0C]
 004DF209    mov         edx,dword ptr ds:[5417F0];0x0 gvar_005417F0
 004DF20F    call        @LStrLAsg
>004DF214    jmp         004DF2BD
 004DF219    lea         eax,[ebp-0C]
 004DF21C    mov         dl,byte ptr [ebp-2]
 004DF21F    add         dl,4
 004DF222    and         edx,7F
 004DF225    mov         edx,dword ptr [edx*4+541768]
 004DF22C    call        @LStrLAsg
>004DF231    jmp         004DF2BD
 004DF236    lea         eax,[ebp-0C]
 004DF239    mov         dl,byte ptr [ebp-2]
 004DF23C    add         dl,0D
 004DF23F    and         edx,7F
 004DF242    mov         edx,dword ptr [edx*4+541734]
 004DF249    call        @LStrLAsg
>004DF24E    jmp         004DF2BD
 004DF250    lea         eax,[ebp-0C]
 004DF253    xor         edx,edx
 004DF255    mov         dl,byte ptr [ebp-2]
 004DF258    sub         edx,30
 004DF25B    add         edx,30
 004DF25E    call        @LStrFromChar
>004DF263    jmp         004DF2BD
 004DF265    lea         eax,[ebp-0C]
 004DF268    xor         edx,edx
 004DF26A    mov         dl,byte ptr [ebp-2]
 004DF26D    sub         edx,41
 004DF270    add         edx,41
 004DF273    call        @LStrFromChar
>004DF278    jmp         004DF2BD
 004DF27A    lea         eax,[ebp-0C]
 004DF27D    xor         edx,edx
 004DF27F    mov         dl,byte ptr [ebp-2]
 004DF282    sub         edx,60
 004DF285    add         edx,30
 004DF288    call        @LStrFromChar
>004DF28D    jmp         004DF2BD
 004DF28F    xor         eax,eax
 004DF291    mov         al,byte ptr [ebp-2]
 004DF294    sub         eax,6F
 004DF297    lea         edx,[ebp-10]
 004DF29A    call        IntToStr
 004DF29F    mov         ecx,dword ptr [ebp-10]
 004DF2A2    lea         eax,[ebp-0C]
 004DF2A5    mov         edx,4DF358;'F'
 004DF2AA    call        @LStrCat3
>004DF2AF    jmp         004DF2BD
 004DF2B1    lea         edx,[ebp-0C]
 004DF2B4    mov         ax,word ptr [ebp-2]
 004DF2B8    call        004DF0DC
 004DF2BD    cmp         dword ptr [ebp-0C],0
>004DF2C1    je          004DF320
 004DF2C3    mov         eax,dword ptr [ebp-8]
 004DF2C6    call        @LStrClr
 004DF2CB    test        byte ptr [ebp-1],20
>004DF2CF    je          004DF2E2
 004DF2D1    mov         eax,dword ptr [ebp-8]
 004DF2D4    mov         edx,dword ptr ds:[541824];0x0 gvar_00541824
 004DF2DA    call        @LStrCat
 004DF2DF    mov         eax,dword ptr [ebp-8]
 004DF2E2    test        byte ptr [ebp-1],40
>004DF2E6    je          004DF2F9
 004DF2E8    mov         eax,dword ptr [ebp-8]
 004DF2EB    mov         edx,dword ptr ds:[541828];0x0 gvar_00541828
 004DF2F1    call        @LStrCat
 004DF2F6    mov         eax,dword ptr [ebp-8]
 004DF2F9    test        byte ptr [ebp-1],80
>004DF2FD    je          004DF310
 004DF2FF    mov         eax,dword ptr [ebp-8]
 004DF302    mov         edx,dword ptr ds:[54182C];0x0 gvar_0054182C
 004DF308    call        @LStrCat
 004DF30D    mov         eax,dword ptr [ebp-8]
 004DF310    mov         eax,dword ptr [ebp-8]
 004DF313    mov         edx,dword ptr [ebp-0C]
 004DF316    call        @LStrCat
 004DF31B    mov         eax,dword ptr [ebp-8]
>004DF31E    jmp         004DF328
 004DF320    mov         eax,dword ptr [ebp-8]
 004DF323    call        @LStrClr
 004DF328    xor         eax,eax
 004DF32A    pop         edx
 004DF32B    pop         ecx
 004DF32C    pop         ecx
 004DF32D    mov         dword ptr fs:[eax],edx
 004DF330    push        4DF34A
 004DF335    lea         eax,[ebp-10]
 004DF338    mov         edx,2
 004DF33D    call        @LStrArrayClr
 004DF342    ret
>004DF343    jmp         @HandleFinally
>004DF348    jmp         004DF335
 004DF34A    mov         esp,ebp
 004DF34C    pop         ebp
 004DF34D    ret
end;*}

//004DF35C
{*function sub_004DF35C(?:?; ?:AnsiString):?;
begin
 004DF35C    push        ebp
 004DF35D    mov         ebp,esp
 004DF35F    add         esp,0FFFFFFF4
 004DF362    push        ebx
 004DF363    mov         dword ptr [ebp-8],edx
 004DF366    mov         dword ptr [ebp-4],eax
 004DF369    mov         byte ptr [ebp-9],0
 004DF36D    mov         eax,dword ptr [ebp-4]
 004DF370    mov         eax,dword ptr [eax]
 004DF372    call        @DynArrayLength
 004DF377    mov         ebx,eax
 004DF379    mov         eax,dword ptr [ebp-8]
 004DF37C    call        @DynArrayLength
 004DF381    cmp         ebx,eax
>004DF383    jl          004DF3C7
 004DF385    mov         eax,dword ptr [ebp-8]
 004DF388    call        @DynArrayLength
 004DF38D    push        eax
 004DF38E    mov         eax,dword ptr [ebp-8]
 004DF391    call        @LStrToPChar
 004DF396    push        eax
 004DF397    mov         eax,dword ptr [ebp-4]
 004DF39A    mov         eax,dword ptr [eax]
 004DF39C    call        @LStrToPChar
 004DF3A1    pop         edx
 004DF3A2    pop         ecx
 004DF3A3    call        00466490
 004DF3A8    test        eax,eax
>004DF3AA    jne         004DF3C7
 004DF3AC    mov         byte ptr [ebp-9],1
 004DF3B0    mov         eax,dword ptr [ebp-8]
 004DF3B3    call        @DynArrayLength
 004DF3B8    mov         ecx,eax
 004DF3BA    mov         eax,dword ptr [ebp-4]
 004DF3BD    mov         edx,1
 004DF3C2    call        @LStrDelete
 004DF3C7    mov         al,byte ptr [ebp-9]
 004DF3CA    pop         ebx
 004DF3CB    mov         esp,ebp
 004DF3CD    pop         ebp
 004DF3CE    ret
end;*}

//004DF3D0
{*function sub_004DF3D0(?:?):?;
begin
 004DF3D0    push        ebp
 004DF3D1    mov         ebp,esp
 004DF3D3    add         esp,0FFFFFFF0
 004DF3D6    xor         edx,edx
 004DF3D8    mov         dword ptr [ebp-10],edx
 004DF3DB    mov         dword ptr [ebp-4],eax
 004DF3DE    mov         eax,dword ptr [ebp-4]
 004DF3E1    call        @LStrAddRef
 004DF3E6    xor         eax,eax
 004DF3E8    push        ebp
 004DF3E9    push        4DF4CE
 004DF3EE    push        dword ptr fs:[eax]
 004DF3F1    mov         dword ptr fs:[eax],esp
 004DF3F4    mov         word ptr [ebp-6],0
 004DF3FA    mov         word ptr [ebp-0A],0
 004DF400    push        ebp
 004DF401    lea         eax,[ebp-4]
 004DF404    mov         edx,dword ptr ds:[541824];0x0 gvar_00541824
 004DF40A    call        004DF35C
 004DF40F    pop         ecx
 004DF410    test        al,al
>004DF412    je          004DF41C
 004DF414    or          word ptr [ebp-0A],2000
>004DF41A    jmp         004DF400
 004DF41C    push        ebp
 004DF41D    lea         eax,[ebp-4]
 004DF420    mov         edx,4DF4E8;'^'
 004DF425    call        004DF35C
 004DF42A    pop         ecx
 004DF42B    test        al,al
>004DF42D    je          004DF437
 004DF42F    or          word ptr [ebp-0A],4000
>004DF435    jmp         004DF400
 004DF437    push        ebp
 004DF438    lea         eax,[ebp-4]
 004DF43B    mov         edx,dword ptr ds:[541828];0x0 gvar_00541828
 004DF441    call        004DF35C
 004DF446    pop         ecx
 004DF447    test        al,al
>004DF449    je          004DF453
 004DF44B    or          word ptr [ebp-0A],4000
>004DF451    jmp         004DF400
 004DF453    push        ebp
 004DF454    lea         eax,[ebp-4]
 004DF457    mov         edx,dword ptr ds:[54182C];0x0 gvar_0054182C
 004DF45D    call        004DF35C
 004DF462    pop         ecx
 004DF463    test        al,al
>004DF465    je          004DF46F
 004DF467    or          word ptr [ebp-0A],8000
>004DF46D    jmp         004DF400
 004DF46F    cmp         dword ptr [ebp-4],0
>004DF473    je          004DF4B0
 004DF475    mov         word ptr [ebp-8],8
 004DF47B    lea         edx,[ebp-10]
 004DF47E    mov         ax,word ptr [ebp-8]
 004DF482    call        004DF13C
 004DF487    mov         edx,dword ptr [ebp-10]
 004DF48A    mov         eax,dword ptr [ebp-4]
 004DF48D    call        00466420
 004DF492    test        eax,eax
>004DF494    jne         004DF4A4
 004DF496    mov         ax,word ptr [ebp-8]
 004DF49A    or          ax,word ptr [ebp-0A]
 004DF49E    mov         word ptr [ebp-6],ax
>004DF4A2    jmp         004DF4B0
 004DF4A4    inc         word ptr [ebp-8]
 004DF4A8    cmp         word ptr [ebp-8],256
>004DF4AE    jne         004DF47B
 004DF4B0    xor         eax,eax
 004DF4B2    pop         edx
 004DF4B3    pop         ecx
 004DF4B4    pop         ecx
 004DF4B5    mov         dword ptr fs:[eax],edx
 004DF4B8    push        4DF4D5
 004DF4BD    lea         eax,[ebp-10]
 004DF4C0    call        @LStrClr
 004DF4C5    lea         eax,[ebp-4]
 004DF4C8    call        @LStrClr
 004DF4CD    ret
>004DF4CE    jmp         @HandleFinally
>004DF4D3    jmp         004DF4BD
 004DF4D5    mov         ax,word ptr [ebp-6]
 004DF4D9    mov         esp,ebp
 004DF4DB    pop         ebp
 004DF4DC    ret
end;*}

//004DF4EC
{*function sub_004DF4EC:?;
begin
 004DF4EC    push        ebp
 004DF4ED    mov         ebp,esp
 004DF4EF    push        ecx
 004DF4F0    mov         eax,[0055DE48];gvar_0055DE48
 004DF4F5    call        00478FB4
 004DF4FA    mov         word ptr [ebp-2],ax
 004DF4FE    movzx       edx,word ptr [ebp-2]
 004DF502    mov         cl,1
 004DF504    mov         eax,[0055DE48];gvar_0055DE48
 004DF509    call        TBits.SetBit
 004DF50E    mov         ax,word ptr [ebp-2]
 004DF512    pop         ecx
 004DF513    pop         ebp
 004DF514    ret
end;*}

//004DF518
{*function sub_004DF518(?:?; ?:?; ?:?; ?:?):?;
begin
 004DF518    push        ebp
 004DF519    mov         ebp,esp
 004DF51B    add         esp,0FFFFFFEC
 004DF51E    mov         dword ptr [ebp-8],ecx
 004DF521    mov         dword ptr [ebp-14],edx
 004DF524    mov         dword ptr [ebp-10],eax
 004DF527    cmp         dword ptr [ebp-14],0
>004DF52B    je          004DF57C
 004DF52D    mov         byte ptr [ebp-9],0
>004DF531    jmp         004DF567
 004DF533    mov         edx,dword ptr [ebp-10]
 004DF536    mov         edx,dword ptr [edx]
 004DF538    mov         eax,dword ptr [ebp-14]
 004DF53B    call        004E1FD8
 004DF540    mov         dword ptr [ebp-4],eax
 004DF543    mov         eax,dword ptr [ebp-4]
 004DF546    mov         al,byte ptr [eax+3F]
 004DF549    mov         edx,dword ptr [ebp+8]
 004DF54C    cmp         al,byte ptr [edx-1]
>004DF54F    ja          004DF57C
 004DF551    mov         eax,dword ptr [ebp-4]
 004DF554    mov         edx,dword ptr [ebp+8]
 004DF557    push        dword ptr [edx]
 004DF559    call        dword ptr [ebp-8]
 004DF55C    add         esp,4
 004DF55F    mov         byte ptr [ebp-9],al
 004DF562    mov         eax,dword ptr [ebp-10]
 004DF565    inc         dword ptr [eax]
 004DF567    cmp         byte ptr [ebp-9],0
>004DF56B    jne         004DF57C
 004DF56D    mov         eax,dword ptr [ebp-14]
 004DF570    call        004E1FAC
 004DF575    mov         edx,dword ptr [ebp-10]
 004DF578    cmp         eax,dword ptr [edx]
>004DF57A    jg          004DF533
 004DF57C    mov         al,byte ptr [ebp-9]
 004DF57F    mov         esp,ebp
 004DF581    pop         ebp
 004DF582    ret
end;*}

//004DF584
{*procedure sub_004DF584(?:?; ?:TMenuItem; ?:?);
begin
 004DF584    push        ebp
 004DF585    mov         ebp,esp
 004DF587    add         esp,0FFFFFFD8
 004DF58A    mov         dword ptr [ebp-10],ecx
 004DF58D    mov         dword ptr [ebp-0C],edx
 004DF590    mov         dword ptr [ebp-8],eax
 004DF593    xor         eax,eax
 004DF595    mov         dword ptr [ebp-14],eax
 004DF598    xor         eax,eax
 004DF59A    mov         dword ptr [ebp-18],eax
 004DF59D    xor         eax,eax
 004DF59F    mov         dword ptr [ebp-20],eax
 004DF5A2    xor         eax,eax
 004DF5A4    mov         dword ptr [ebp-24],eax
 004DF5A7    cmp         dword ptr [ebp-0C],0
>004DF5AB    je          004DF5B8
 004DF5AD    mov         eax,dword ptr [ebp-0C]
 004DF5B0    call        004E1FAC
 004DF5B5    mov         dword ptr [ebp-20],eax
 004DF5B8    cmp         dword ptr [ebp-10],0
>004DF5BC    je          004DF5C9
 004DF5BE    mov         eax,dword ptr [ebp-10]
 004DF5C1    call        004E1FAC
 004DF5C6    mov         dword ptr [ebp-24],eax
 004DF5C9    mov         byte ptr [ebp-25],0
>004DF5CD    jmp         004DF682
 004DF5D2    mov         byte ptr [ebp-1],0FF
 004DF5D6    mov         byte ptr [ebp-19],0FF
 004DF5DA    mov         eax,dword ptr [ebp-14]
 004DF5DD    cmp         eax,dword ptr [ebp-20]
>004DF5E0    jge         004DF5F3
 004DF5E2    mov         edx,dword ptr [ebp-14]
 004DF5E5    mov         eax,dword ptr [ebp-0C]
 004DF5E8    call        004E1FD8
 004DF5ED    mov         al,byte ptr [eax+3F]
 004DF5F0    mov         byte ptr [ebp-1],al
 004DF5F3    mov         eax,dword ptr [ebp-18]
 004DF5F6    cmp         eax,dword ptr [ebp-24]
>004DF5F9    jge         004DF60C
 004DF5FB    mov         edx,dword ptr [ebp-18]
 004DF5FE    mov         eax,dword ptr [ebp-10]
 004DF601    call        004E1FD8
 004DF606    mov         al,byte ptr [eax+3F]
 004DF609    mov         byte ptr [ebp-19],al
 004DF60C    mov         al,byte ptr [ebp-1]
 004DF60F    cmp         al,byte ptr [ebp-19]
>004DF612    ja          004DF629
 004DF614    push        ebp
 004DF615    lea         eax,[ebp-14]
 004DF618    mov         ecx,dword ptr [ebp-8]
 004DF61B    mov         edx,dword ptr [ebp-0C]
 004DF61E    call        004DF518
 004DF623    pop         ecx
 004DF624    mov         byte ptr [ebp-25],al
>004DF627    jmp         004DF647
 004DF629    mov         al,byte ptr [ebp-19]
 004DF62C    mov         byte ptr [ebp-1],al
 004DF62F    push        ebp
 004DF630    lea         eax,[ebp-18]
 004DF633    mov         ecx,dword ptr [ebp-8]
 004DF636    mov         edx,dword ptr [ebp-10]
 004DF639    call        004DF518
 004DF63E    pop         ecx
 004DF63F    mov         byte ptr [ebp-25],al
>004DF642    jmp         004DF647
 004DF644    inc         dword ptr [ebp-14]
 004DF647    mov         eax,dword ptr [ebp-14]
 004DF64A    cmp         eax,dword ptr [ebp-20]
>004DF64D    jge         004DF667
 004DF64F    mov         edx,dword ptr [ebp-14]
 004DF652    mov         eax,dword ptr [ebp-0C]
 004DF655    call        004E1FD8
 004DF65A    mov         al,byte ptr [eax+3F]
 004DF65D    cmp         al,byte ptr [ebp-1]
>004DF660    jbe         004DF644
>004DF662    jmp         004DF667
 004DF664    inc         dword ptr [ebp-18]
 004DF667    mov         eax,dword ptr [ebp-18]
 004DF66A    cmp         eax,dword ptr [ebp-24]
>004DF66D    jge         004DF682
 004DF66F    mov         edx,dword ptr [ebp-18]
 004DF672    mov         eax,dword ptr [ebp-10]
 004DF675    call        004E1FD8
 004DF67A    mov         al,byte ptr [eax+3F]
 004DF67D    cmp         al,byte ptr [ebp-1]
>004DF680    jbe         004DF664
 004DF682    cmp         byte ptr [ebp-25],0
>004DF686    jne         004DF6A0
 004DF688    mov         eax,dword ptr [ebp-14]
 004DF68B    cmp         eax,dword ptr [ebp-20]
>004DF68E    jl          004DF5D2
 004DF694    mov         eax,dword ptr [ebp-18]
 004DF697    cmp         eax,dword ptr [ebp-24]
>004DF69A    jl          004DF5D2
 004DF6A0    mov         esp,ebp
 004DF6A2    pop         ebp
 004DF6A3    ret
end;*}

//004DF6A4
{*procedure sub_004DF6A4(?:?);
begin
 004DF6A4    push        ebp
 004DF6A5    mov         ebp,esp
 004DF6A7    add         esp,0FFFFFFF8
 004DF6AA    mov         dword ptr [ebp-8],edx
 004DF6AD    mov         dword ptr [ebp-4],eax
 004DF6B0    mov         eax,dword ptr [ebp-8]
 004DF6B3    mov         edx,dword ptr ds:[4DE470];TMenuItem
 004DF6B9    call        @AsClass
 004DF6BE    mov         edx,dword ptr [ebp-4]
 004DF6C1    mov         dword ptr [edx+18],eax;TMenuActionLink.........................FClient:TMenuItem
 004DF6C4    pop         ecx
 004DF6C5    pop         ecx
 004DF6C6    pop         ebp
 004DF6C7    ret
end;*}

//004DF6C8
{*function sub_004DF6C8:?;
begin
 004DF6C8    push        ebp
 004DF6C9    mov         ebp,esp
 004DF6CB    add         esp,0FFFFFFF8
 004DF6CE    mov         dword ptr [ebp-4],eax
 004DF6D1    mov         eax,dword ptr [ebp-4]
 004DF6D4    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004DF6D7    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DF6DD    call        @AsClass
 004DF6E2    mov         al,byte ptr [eax+95];TCustomAction.FAutoCheck:Boolean
 004DF6E8    mov         edx,dword ptr [ebp-4]
 004DF6EB    mov         edx,dword ptr [edx+18];TMenuActionLink..........................FClient:TMenuItem
 004DF6EE    cmp         al,byte ptr [edx+0A8];TMenuItem.AutoCheck:Boolean
 004DF6F4    sete        byte ptr [ebp-5]
 004DF6F8    mov         al,byte ptr [ebp-5]
 004DF6FB    pop         ecx
 004DF6FC    pop         ecx
 004DF6FD    pop         ebp
 004DF6FE    ret
end;*}

//004DF700
{*function sub_004DF700:?;
begin
 004DF700    push        ebp
 004DF701    mov         ebp,esp
 004DF703    add         esp,0FFFFFFF8
 004DF706    mov         dword ptr [ebp-4],eax
 004DF709    mov         eax,dword ptr [ebp-4]
 004DF70C    call        004DB1D8
 004DF711    test        al,al
>004DF713    je          004DF73B
 004DF715    mov         eax,dword ptr [ebp-4]
 004DF718    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004DF71B    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DF721    call        @AsClass
 004DF726    mov         edx,dword ptr [eax+64];TCustomAction.FCaption:String
 004DF729    mov         eax,dword ptr [ebp-4]
 004DF72C    mov         eax,dword ptr [eax+18];TMenuActionLink...........................FClient:TMenuItem
 004DF72F    mov         eax,dword ptr [eax+30];TMenuItem.Caption:String
 004DF732    call        004E58E4
 004DF737    test        al,al
>004DF739    jne         004DF73F
 004DF73B    xor         eax,eax
>004DF73D    jmp         004DF741
 004DF73F    mov         al,1
 004DF741    mov         byte ptr [ebp-5],al
 004DF744    mov         al,byte ptr [ebp-5]
 004DF747    pop         ecx
 004DF748    pop         ecx
 004DF749    pop         ebp
 004DF74A    ret
end;*}

//004DF74C
{*function sub_004DF74C:?;
begin
 004DF74C    push        ebp
 004DF74D    mov         ebp,esp
 004DF74F    add         esp,0FFFFFFF8
 004DF752    mov         dword ptr [ebp-4],eax
 004DF755    mov         eax,dword ptr [ebp-4]
 004DF758    call        004DB1FC
 004DF75D    test        al,al
>004DF75F    je          004DF780
 004DF761    mov         eax,dword ptr [ebp-4]
 004DF764    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004DF767    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DF76D    call        @AsClass
 004DF772    mov         al,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 004DF775    mov         edx,dword ptr [ebp-4]
 004DF778    mov         edx,dword ptr [edx+18];TMenuActionLink............................FClient:TMenuItem
 004DF77B    cmp         al,byte ptr [edx+38];TMenuItem.Checked:Boolean
>004DF77E    je          004DF784
 004DF780    xor         eax,eax
>004DF782    jmp         004DF786
 004DF784    mov         al,1
 004DF786    mov         byte ptr [ebp-5],al
 004DF789    mov         al,byte ptr [ebp-5]
 004DF78C    pop         ecx
 004DF78D    pop         ecx
 004DF78E    pop         ebp
 004DF78F    ret
end;*}

//004DF790
{*function sub_004DF790:?;
begin
 004DF790    push        ebp
 004DF791    mov         ebp,esp
 004DF793    add         esp,0FFFFFFF8
 004DF796    mov         dword ptr [ebp-4],eax
 004DF799    mov         eax,dword ptr [ebp-4]
 004DF79C    call        004DB220
 004DF7A1    test        al,al
>004DF7A3    je          004DF7C4
 004DF7A5    mov         eax,dword ptr [ebp-4]
 004DF7A8    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004DF7AB    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DF7B1    call        @AsClass
 004DF7B6    mov         al,byte ptr [eax+6A];TCustomAction.FEnabled:Boolean
 004DF7B9    mov         edx,dword ptr [ebp-4]
 004DF7BC    mov         edx,dword ptr [edx+18];TMenuActionLink.............................FClient:TMenuItem
 004DF7BF    cmp         al,byte ptr [edx+39];TMenuItem.Enabled:Boolean
>004DF7C2    je          004DF7C8
 004DF7C4    xor         eax,eax
>004DF7C6    jmp         004DF7CA
 004DF7C8    mov         al,1
 004DF7CA    mov         byte ptr [ebp-5],al
 004DF7CD    mov         al,byte ptr [ebp-5]
 004DF7D0    pop         ecx
 004DF7D1    pop         ecx
 004DF7D2    pop         ebp
 004DF7D3    ret
end;*}

//004DF7D4
{*function sub_004DF7D4:?;
begin
 004DF7D4    push        ebp
 004DF7D5    mov         ebp,esp
 004DF7D7    add         esp,0FFFFFFF8
 004DF7DA    mov         dword ptr [ebp-4],eax
 004DF7DD    mov         eax,dword ptr [ebp-4]
 004DF7E0    call        004DB268
 004DF7E5    test        al,al
>004DF7E7    je          004DF808
 004DF7E9    mov         eax,dword ptr [ebp-4]
 004DF7EC    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004DF7EF    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DF7F5    call        @AsClass
 004DF7FA    mov         eax,dword ptr [eax+74];TCustomAction.FHelpContext:THelpContext
 004DF7FD    mov         edx,dword ptr [ebp-4]
 004DF800    mov         edx,dword ptr [edx+18];TMenuActionLink..............................FClient:TMenuItem
 004DF803    cmp         eax,dword ptr [edx+54];TMenuItem.HelpContext:THelpContext
>004DF806    je          004DF80C
 004DF808    xor         eax,eax
>004DF80A    jmp         004DF80E
 004DF80C    mov         al,1
 004DF80E    mov         byte ptr [ebp-5],al
 004DF811    mov         al,byte ptr [ebp-5]
 004DF814    pop         ecx
 004DF815    pop         ecx
 004DF816    pop         ebp
 004DF817    ret
end;*}

//004DF818
{*function sub_004DF818:?;
begin
 004DF818    push        ebp
 004DF819    mov         ebp,esp
 004DF81B    add         esp,0FFFFFFF8
 004DF81E    mov         dword ptr [ebp-4],eax
 004DF821    mov         eax,dword ptr [ebp-4]
 004DF824    call        004DB2B0
 004DF829    test        al,al
>004DF82B    je          004DF851
 004DF82D    mov         eax,dword ptr [ebp-4]
 004DF830    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004DF833    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DF839    call        @AsClass
 004DF83E    mov         edx,dword ptr [eax+7C];TCustomAction.FHint:String
 004DF841    mov         eax,dword ptr [ebp-4]
 004DF844    mov         eax,dword ptr [eax+18];TMenuActionLink...............................FClient:TMenuItem
 004DF847    mov         eax,dword ptr [eax+58];TMenuItem.Hint:String
 004DF84A    call        @LStrCmp
>004DF84F    je          004DF855
 004DF851    xor         eax,eax
>004DF853    jmp         004DF857
 004DF855    mov         al,1
 004DF857    mov         byte ptr [ebp-5],al
 004DF85A    mov         al,byte ptr [ebp-5]
 004DF85D    pop         ecx
 004DF85E    pop         ecx
 004DF85F    pop         ebp
 004DF860    ret
end;*}

//004DF864
{*function sub_004DF864:?;
begin
 004DF864    push        ebp
 004DF865    mov         ebp,esp
 004DF867    add         esp,0FFFFFFF8
 004DF86A    mov         dword ptr [ebp-4],eax
 004DF86D    mov         eax,dword ptr [ebp-4]
 004DF870    mov         eax,dword ptr [eax+18];TMenuActionLink................................FClient:TMenuItem
 004DF873    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>004DF877    je          004DF8A7
 004DF879    mov         eax,dword ptr [ebp-4]
 004DF87C    call        004DB244
 004DF881    test        al,al
>004DF883    je          004DF8A7
 004DF885    mov         eax,dword ptr [ebp-4]
 004DF888    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004DF88B    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DF891    call        @AsClass
 004DF896    mov         eax,dword ptr [eax+6C];TCustomAction.FGroupIndex:Integer
 004DF899    mov         edx,dword ptr [ebp-4]
 004DF89C    mov         edx,dword ptr [edx+18];TMenuActionLink.................................FClient:TMenuItem
 004DF89F    movzx       edx,byte ptr [edx+3F];TMenuItem.GroupIndex:byte
 004DF8A3    cmp         eax,edx
>004DF8A5    je          004DF8AB
 004DF8A7    xor         eax,eax
>004DF8A9    jmp         004DF8AD
 004DF8AB    mov         al,1
 004DF8AD    mov         byte ptr [ebp-5],al
 004DF8B0    mov         al,byte ptr [ebp-5]
 004DF8B3    pop         ecx
 004DF8B4    pop         ecx
 004DF8B5    pop         ebp
 004DF8B6    ret
end;*}

//004DF8B8
{*function sub_004DF8B8:?;
begin
 004DF8B8    push        ebp
 004DF8B9    mov         ebp,esp
 004DF8BB    add         esp,0FFFFFFF8
 004DF8BE    mov         dword ptr [ebp-4],eax
 004DF8C1    mov         eax,dword ptr [ebp-4]
 004DF8C4    call        004DB2D4
 004DF8C9    test        al,al
>004DF8CB    je          004DF8EF
 004DF8CD    mov         eax,dword ptr [ebp-4]
 004DF8D0    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004DF8D3    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DF8D9    call        @AsClass
 004DF8DE    mov         eax,dword ptr [eax+80];TCustomAction.FImageIndex:TImageIndex
 004DF8E4    mov         edx,dword ptr [ebp-4]
 004DF8E7    mov         edx,dword ptr [edx+18];TMenuActionLink..................................FClient:TMenuIte...
 004DF8EA    cmp         eax,dword ptr [edx+40];TMenuItem.ImageIndex:TImageIndex
>004DF8ED    je          004DF8F3
 004DF8EF    xor         eax,eax
>004DF8F1    jmp         004DF8F5
 004DF8F3    mov         al,1
 004DF8F5    mov         byte ptr [ebp-5],al
 004DF8F8    mov         al,byte ptr [ebp-5]
 004DF8FB    pop         ecx
 004DF8FC    pop         ecx
 004DF8FD    pop         ebp
 004DF8FE    ret
end;*}

//004DF900
{*function sub_004DF900:?;
begin
 004DF900    push        ebp
 004DF901    mov         ebp,esp
 004DF903    add         esp,0FFFFFFF8
 004DF906    mov         dword ptr [ebp-4],eax
 004DF909    mov         eax,dword ptr [ebp-4]
 004DF90C    call        004DB2F8
 004DF911    test        al,al
>004DF913    je          004DF939
 004DF915    mov         eax,dword ptr [ebp-4]
 004DF918    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004DF91B    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DF921    call        @AsClass
 004DF926    mov         ax,word ptr [eax+84];TCustomAction.FShortCut:TShortCut
 004DF92D    mov         edx,dword ptr [ebp-4]
 004DF930    mov         edx,dword ptr [edx+18];TMenuActionLink...................................FClient:TMenuIt...
 004DF933    cmp         ax,word ptr [edx+60];TMenuItem.ShortCut:TShortCut
>004DF937    je          004DF93D
 004DF939    xor         eax,eax
>004DF93B    jmp         004DF93F
 004DF93D    mov         al,1
 004DF93F    mov         byte ptr [ebp-5],al
 004DF942    mov         al,byte ptr [ebp-5]
 004DF945    pop         ecx
 004DF946    pop         ecx
 004DF947    pop         ebp
 004DF948    ret
end;*}

//004DF94C
{*function sub_004DF94C:?;
begin
 004DF94C    push        ebp
 004DF94D    mov         ebp,esp
 004DF94F    add         esp,0FFFFFFF8
 004DF952    mov         dword ptr [ebp-4],eax
 004DF955    mov         eax,dword ptr [ebp-4]
 004DF958    call        004DB31C
 004DF95D    test        al,al
>004DF95F    je          004DF983
 004DF961    mov         eax,dword ptr [ebp-4]
 004DF964    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004DF967    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DF96D    call        @AsClass
 004DF972    mov         al,byte ptr [eax+86];TCustomAction.FVisible:Boolean
 004DF978    mov         edx,dword ptr [ebp-4]
 004DF97B    mov         edx,dword ptr [edx+18];TMenuActionLink....................................FClient:TMenuI...
 004DF97E    cmp         al,byte ptr [edx+3E];TMenuItem.Visible:Boolean
>004DF981    je          004DF987
 004DF983    xor         eax,eax
>004DF985    jmp         004DF989
 004DF987    mov         al,1
 004DF989    mov         byte ptr [ebp-5],al
 004DF98C    mov         al,byte ptr [ebp-5]
 004DF98F    pop         ecx
 004DF990    pop         ecx
 004DF991    pop         ebp
 004DF992    ret
end;*}

//004DF994
{*function sub_004DF994:?;
begin
 004DF994    push        ebp
 004DF995    mov         ebp,esp
 004DF997    add         esp,0FFFFFFF8
 004DF99A    mov         dword ptr [ebp-4],eax
 004DF99D    mov         eax,dword ptr [ebp-4]
 004DF9A0    call        00483CF4
 004DF9A5    test        al,al
>004DF9A7    je          004DF9C0
 004DF9A9    mov         eax,dword ptr [ebp-4]
 004DF9AC    mov         eax,dword ptr [eax+18];TMenuActionLink.....................................FClient:TMenu...
 004DF9AF    mov         eax,dword ptr [eax+88];TMenuItem.OnClick:TNotifyEvent
 004DF9B5    mov         edx,dword ptr [ebp-4]
 004DF9B8    mov         edx,dword ptr [edx+10];TMenuActionLink.FAction:TBasicAction
 004DF9BB    cmp         eax,dword ptr [edx+40];TBasicAction.FOnExecute:TNotifyEvent
>004DF9BE    je          004DF9C4
 004DF9C0    xor         eax,eax
>004DF9C2    jmp         004DF9C6
 004DF9C4    mov         al,1
 004DF9C6    mov         byte ptr [ebp-5],al
 004DF9C9    mov         al,byte ptr [ebp-5]
 004DF9CC    pop         ecx
 004DF9CD    pop         ecx
 004DF9CE    pop         ebp
 004DF9CF    ret
end;*}

//004DF9D0
{*procedure sub_004DF9D0(?:?);
begin
 004DF9D0    push        ebp
 004DF9D1    mov         ebp,esp
 004DF9D3    add         esp,0FFFFFFF8
 004DF9D6    mov         byte ptr [ebp-5],dl
 004DF9D9    mov         dword ptr [ebp-4],eax
 004DF9DC    mov         eax,dword ptr [ebp-4]
 004DF9DF    mov         edx,dword ptr [eax]
 004DF9E1    call        dword ptr [edx+78];TMenuActionLink.sub_004DF6C8
 004DF9E4    test        al,al
>004DF9E6    je          004DF9F7
 004DF9E8    mov         eax,dword ptr [ebp-4]
 004DF9EB    mov         eax,dword ptr [eax+18];TMenuActionLink......................................FClient:TMen...
 004DF9EE    mov         dl,byte ptr [ebp-5]
 004DF9F1    mov         byte ptr [eax+0A8],dl;TMenuItem.AutoCheck:Boolean
 004DF9F7    pop         ecx
 004DF9F8    pop         ecx
 004DF9F9    pop         ebp
 004DF9FA    ret
end;*}

//004DF9FC
{*procedure sub_004DF9FC(?:?);
begin
 004DF9FC    push        ebp
 004DF9FD    mov         ebp,esp
 004DF9FF    add         esp,0FFFFFFF8
 004DFA02    mov         dword ptr [ebp-8],edx
 004DFA05    mov         dword ptr [ebp-4],eax
 004DFA08    mov         eax,dword ptr [ebp-4]
 004DFA0B    mov         edx,dword ptr [eax]
 004DFA0D    call        dword ptr [edx+20];TMenuActionLink.sub_004DF700
 004DFA10    test        al,al
>004DFA12    je          004DFA22
 004DFA14    mov         edx,dword ptr [ebp-8]
 004DFA17    mov         eax,dword ptr [ebp-4]
 004DFA1A    mov         eax,dword ptr [eax+18];TMenuActionLink.......................................FClient:TMe...
 004DFA1D    call        TMenuItem.SetCaption
 004DFA22    pop         ecx
 004DFA23    pop         ecx
 004DFA24    pop         ebp
 004DFA25    ret
end;*}

//004DFA28
{*procedure sub_004DFA28(?:?);
begin
 004DFA28    push        ebp
 004DFA29    mov         ebp,esp
 004DFA2B    add         esp,0FFFFFFF8
 004DFA2E    mov         byte ptr [ebp-5],dl
 004DFA31    mov         dword ptr [ebp-4],eax
 004DFA34    mov         eax,dword ptr [ebp-4]
 004DFA37    mov         edx,dword ptr [eax]
 004DFA39    call        dword ptr [edx+24];TMenuActionLink.sub_004DF74C
 004DFA3C    test        al,al
>004DFA3E    je          004DFA4E
 004DFA40    mov         dl,byte ptr [ebp-5]
 004DFA43    mov         eax,dword ptr [ebp-4]
 004DFA46    mov         eax,dword ptr [eax+18];TMenuActionLink........................................FClient:TM...
 004DFA49    call        TMenuItem.SetChecked
 004DFA4E    pop         ecx
 004DFA4F    pop         ecx
 004DFA50    pop         ebp
 004DFA51    ret
end;*}

//004DFA54
{*procedure sub_004DFA54(?:?);
begin
 004DFA54    push        ebp
 004DFA55    mov         ebp,esp
 004DFA57    add         esp,0FFFFFFF8
 004DFA5A    mov         byte ptr [ebp-5],dl
 004DFA5D    mov         dword ptr [ebp-4],eax
 004DFA60    mov         eax,dword ptr [ebp-4]
 004DFA63    mov         edx,dword ptr [eax]
 004DFA65    call        dword ptr [edx+28];TMenuActionLink.sub_004DF790
 004DFA68    test        al,al
>004DFA6A    je          004DFA7A
 004DFA6C    mov         dl,byte ptr [ebp-5]
 004DFA6F    mov         eax,dword ptr [ebp-4]
 004DFA72    mov         eax,dword ptr [eax+18];TMenuActionLink.........................................FClient:T...
 004DFA75    call        TMenuItem.SetEnabled
 004DFA7A    pop         ecx
 004DFA7B    pop         ecx
 004DFA7C    pop         ebp
 004DFA7D    ret
end;*}

//004DFA80
{*procedure sub_004DFA80(?:?);
begin
 004DFA80    push        ebp
 004DFA81    mov         ebp,esp
 004DFA83    add         esp,0FFFFFFF8
 004DFA86    mov         dword ptr [ebp-8],edx
 004DFA89    mov         dword ptr [ebp-4],eax
 004DFA8C    mov         eax,dword ptr [ebp-4]
 004DFA8F    mov         edx,dword ptr [eax]
 004DFA91    call        dword ptr [edx+30];TMenuActionLink.sub_004DF7D4
 004DFA94    test        al,al
>004DFA96    je          004DFAA4
 004DFA98    mov         eax,dword ptr [ebp-4]
 004DFA9B    mov         eax,dword ptr [eax+18];TMenuActionLink..........................................FClient:...
 004DFA9E    mov         edx,dword ptr [ebp-8]
 004DFAA1    mov         dword ptr [eax+54],edx;TMenuItem.HelpContext:THelpContext
 004DFAA4    pop         ecx
 004DFAA5    pop         ecx
 004DFAA6    pop         ebp
 004DFAA7    ret
end;*}

//004DFAA8
{*procedure sub_004DFAA8(?:?);
begin
 004DFAA8    push        ebp
 004DFAA9    mov         ebp,esp
 004DFAAB    add         esp,0FFFFFFF8
 004DFAAE    mov         dword ptr [ebp-8],edx
 004DFAB1    mov         dword ptr [ebp-4],eax
 004DFAB4    mov         eax,dword ptr [ebp-4]
 004DFAB7    mov         edx,dword ptr [eax]
 004DFAB9    call        dword ptr [edx+38];TMenuActionLink.sub_004DF818
 004DFABC    test        al,al
>004DFABE    je          004DFAD1
 004DFAC0    mov         eax,dword ptr [ebp-4]
 004DFAC3    mov         eax,dword ptr [eax+18];TMenuActionLink...........................................FClient...
 004DFAC6    add         eax,58;TMenuItem.Hint:String
 004DFAC9    mov         edx,dword ptr [ebp-8]
 004DFACC    call        @LStrAsg
 004DFAD1    pop         ecx
 004DFAD2    pop         ecx
 004DFAD3    pop         ebp
 004DFAD4    ret
end;*}

//004DFAD8
{*procedure sub_004DFAD8(?:?);
begin
 004DFAD8    push        ebp
 004DFAD9    mov         ebp,esp
 004DFADB    add         esp,0FFFFFFF8
 004DFADE    mov         dword ptr [ebp-8],edx
 004DFAE1    mov         dword ptr [ebp-4],eax
 004DFAE4    mov         eax,dword ptr [ebp-4]
 004DFAE7    mov         edx,dword ptr [eax]
 004DFAE9    call        dword ptr [edx+3C];TMenuActionLink.sub_004DF8B8
 004DFAEC    test        al,al
>004DFAEE    je          004DFAFE
 004DFAF0    mov         edx,dword ptr [ebp-8]
 004DFAF3    mov         eax,dword ptr [ebp-4]
 004DFAF6    mov         eax,dword ptr [eax+18];TMenuActionLink............................................FClien...
 004DFAF9    call        TMenuItem.SetImageIndex
 004DFAFE    pop         ecx
 004DFAFF    pop         ecx
 004DFB00    pop         ebp
 004DFB01    ret
end;*}

//004DFB04
{*procedure sub_004DFB04(?:?);
begin
 004DFB04    push        ebp
 004DFB05    mov         ebp,esp
 004DFB07    add         esp,0FFFFFFF8
 004DFB0A    mov         word ptr [ebp-6],dx
 004DFB0E    mov         dword ptr [ebp-4],eax
 004DFB11    mov         eax,dword ptr [ebp-4]
 004DFB14    mov         edx,dword ptr [eax]
 004DFB16    call        dword ptr [edx+40];TMenuActionLink.sub_004DF900
 004DFB19    test        al,al
>004DFB1B    je          004DFB2C
 004DFB1D    mov         dx,word ptr [ebp-6]
 004DFB21    mov         eax,dword ptr [ebp-4]
 004DFB24    mov         eax,dword ptr [eax+18];TMenuActionLink.............................................FClie...
 004DFB27    call        TMenuItem.SetShortCut
 004DFB2C    pop         ecx
 004DFB2D    pop         ecx
 004DFB2E    pop         ebp
 004DFB2F    ret
end;*}

//004DFB30
{*procedure sub_004DFB30(?:?);
begin
 004DFB30    push        ebp
 004DFB31    mov         ebp,esp
 004DFB33    add         esp,0FFFFFFF8
 004DFB36    mov         byte ptr [ebp-5],dl
 004DFB39    mov         dword ptr [ebp-4],eax
 004DFB3C    mov         eax,dword ptr [ebp-4]
 004DFB3F    mov         edx,dword ptr [eax]
 004DFB41    call        dword ptr [edx+44];TMenuActionLink.sub_004DF94C
 004DFB44    test        al,al
>004DFB46    je          004DFB56
 004DFB48    mov         dl,byte ptr [ebp-5]
 004DFB4B    mov         eax,dword ptr [ebp-4]
 004DFB4E    mov         eax,dword ptr [eax+18];TMenuActionLink..............................................FCli...
 004DFB51    call        TMenuItem.SetVisible
 004DFB56    pop         ecx
 004DFB57    pop         ecx
 004DFB58    pop         ebp
 004DFB59    ret
end;*}

//004DFB5C
{*procedure sub_004DFB5C(?:?; ?:?);
begin
 004DFB5C    push        ebp
 004DFB5D    mov         ebp,esp
 004DFB5F    push        ecx
 004DFB60    mov         dword ptr [ebp-4],eax
 004DFB63    mov         eax,dword ptr [ebp-4]
 004DFB66    mov         edx,dword ptr [eax]
 004DFB68    call        dword ptr [edx+8];TMenuActionLink.sub_004DF994
 004DFB6B    test        al,al
>004DFB6D    je          004DFB87
 004DFB6F    mov         eax,dword ptr [ebp-4]
 004DFB72    mov         eax,dword ptr [eax+18];TMenuActionLink...............................................FCl...
 004DFB75    mov         edx,dword ptr [ebp+8]
 004DFB78    mov         dword ptr [eax+88],edx;TMenuItem.OnClick:TNotifyEvent
 004DFB7E    mov         edx,dword ptr [ebp+0C]
 004DFB81    mov         dword ptr [eax+8C],edx;TMenuItem.?f8C:TPopupMenu
 004DFB87    pop         ecx
 004DFB88    pop         ebp
 004DFB89    ret         8
end;*}

//004DFB8C
constructor TMenuItem.Create;
begin
{*
 004DFB8C    push        ebp
 004DFB8D    mov         ebp,esp
 004DFB8F    add         esp,0FFFFFFF4
 004DFB92    test        dl,dl
>004DFB94    je          004DFB9E
 004DFB96    add         esp,0FFFFFFF0
 004DFB99    call        @ClassCreate
 004DFB9E    mov         dword ptr [ebp-0C],ecx
 004DFBA1    mov         byte ptr [ebp-5],dl
 004DFBA4    mov         dword ptr [ebp-4],eax
 004DFBA7    mov         ecx,dword ptr [ebp-0C]
 004DFBAA    xor         edx,edx
 004DFBAC    mov         eax,dword ptr [ebp-4]
 004DFBAF    call        00482F04
 004DFBB4    mov         eax,dword ptr [ebp-4]
 004DFBB7    mov         byte ptr [eax+3E],1;TMenuItem.Visible:Boolean
 004DFBBB    mov         eax,dword ptr [ebp-4]
 004DFBBE    mov         byte ptr [eax+39],1;TMenuItem.Enabled:Boolean
 004DFBC2    mov         eax,dword ptr [ebp-4]
 004DFBC5    mov         byte ptr [eax+3B],2;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 004DFBC9    mov         eax,dword ptr [ebp-4]
 004DFBCC    mov         byte ptr [eax+3C],2;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 004DFBD0    call        004DF4EC
 004DFBD5    mov         edx,dword ptr [ebp-4]
 004DFBD8    mov         word ptr [edx+50],ax;TMenuItem.FCommand:word
 004DFBDC    mov         eax,dword ptr [ebp-4]
 004DFBDF    mov         dword ptr [eax+40],0FFFFFFFF;TMenuItem.ImageIndex:TImageIndex
 004DFBE6    mov         dl,1
 004DFBE8    mov         eax,[004DC034];TChangeLink
 004DFBED    call        TObject.Create;TChangeLink.Create
 004DFBF2    mov         edx,dword ptr [ebp-4]
 004DFBF5    mov         dword ptr [edx+78],eax;TMenuItem.FImageChangeLink:TChangeLink
 004DFBF8    mov         eax,dword ptr [ebp-4]
 004DFBFB    mov         eax,dword ptr [eax+78];TMenuItem.FImageChangeLink:TChangeLink
 004DFBFE    mov         edx,dword ptr [ebp-4]
 004DFC01    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomTabControl
 004DFC04    mov         dword ptr [eax+8],4E2DC8;TChangeLink.FOnChange:TNotifyEvent sub_004E2DC8
 004DFC0B    mov         eax,dword ptr [ebp-4]
 004DFC0E    cmp         byte ptr [ebp-5],0
>004DFC12    je          004DFC23
 004DFC14    call        @AfterConstruction
 004DFC19    pop         dword ptr fs:[0]
 004DFC20    add         esp,0C
 004DFC23    mov         eax,dword ptr [ebp-4]
 004DFC26    mov         esp,ebp
 004DFC28    pop         ebp
 004DFC29    ret
*}
end;

//004DFC2C
destructor TMenuItem.Destroy;
begin
{*
 004DFC2C    push        ebp
 004DFC2D    mov         ebp,esp
 004DFC2F    add         esp,0FFFFFFF8
 004DFC32    call        @BeforeDestruction
 004DFC37    mov         byte ptr [ebp-5],dl
 004DFC3A    mov         dword ptr [ebp-4],eax
 004DFC3D    mov         edx,dword ptr [ebp-4]
 004DFC40    mov         eax,[0055DE40];gvar_0055DE40
 004DFC45    call        004E5620
 004DFC4A    mov         eax,dword ptr [ebp-4]
 004DFC4D    cmp         dword ptr [eax+64],0
>004DFC51    je          004DFC7A
 004DFC53    mov         eax,dword ptr [ebp-4]
 004DFC56    mov         eax,dword ptr [eax+64]
 004DFC59    mov         edx,dword ptr [ebp-4]
 004DFC5C    call        004E252C
 004DFC61    mov         eax,dword ptr [ebp-4]
 004DFC64    xor         edx,edx
 004DFC66    mov         dword ptr [eax+64],edx
>004DFC69    jmp         004DFC7A
 004DFC6B    xor         edx,edx
 004DFC6D    mov         eax,dword ptr [ebp-4]
 004DFC70    call        004E1FD8
 004DFC75    call        TObject.Free
 004DFC7A    mov         eax,dword ptr [ebp-4]
 004DFC7D    call        004E1FAC
 004DFC82    test        eax,eax
>004DFC84    jg          004DFC6B
 004DFC86    mov         eax,dword ptr [ebp-4]
 004DFC89    cmp         dword ptr [eax+34],0
>004DFC8D    je          004DFCA5
 004DFC8F    xor         edx,edx
 004DFC91    mov         eax,dword ptr [ebp-4]
 004DFC94    call        004E00F8
 004DFC99    mov         eax,dword ptr [ebp-4]
 004DFC9C    mov         eax,dword ptr [eax+34]
 004DFC9F    push        eax
 004DFCA0    call        user32.DestroyMenu
 004DFCA5    mov         eax,dword ptr [ebp-4]
 004DFCA8    mov         eax,dword ptr [eax+5C]
 004DFCAB    call        TObject.Free
 004DFCB0    mov         eax,dword ptr [ebp-4]
 004DFCB3    add         eax,44
 004DFCB6    call        FreeAndNil
 004DFCBB    mov         eax,dword ptr [ebp-4]
 004DFCBE    add         eax,78
 004DFCC1    call        FreeAndNil
 004DFCC6    mov         eax,dword ptr [ebp-4]
 004DFCC9    cmp         word ptr [eax+50],0
>004DFCCE    je          004DFCE3
 004DFCD0    mov         eax,dword ptr [ebp-4]
 004DFCD3    movzx       edx,word ptr [eax+50]
 004DFCD7    xor         ecx,ecx
 004DFCD9    mov         eax,[0055DE48];gvar_0055DE48
 004DFCDE    call        TBits.SetBit
 004DFCE3    mov         eax,dword ptr [ebp-4]
 004DFCE6    cmp         dword ptr [eax+4C],0
>004DFCEA    je          004DFCF7
 004DFCEC    mov         eax,dword ptr [ebp-4]
 004DFCEF    mov         eax,dword ptr [eax+4C]
 004DFCF2    call        TObject.Free
 004DFCF7    mov         dl,byte ptr [ebp-5]
 004DFCFA    and         dl,0FC
 004DFCFD    mov         eax,dword ptr [ebp-4]
 004DFD00    call        TComponent.Destroy
 004DFD05    cmp         byte ptr [ebp-5],0
>004DFD09    jle         004DFD13
 004DFD0B    mov         eax,dword ptr [ebp-4]
 004DFD0E    call        @ClassDestroy
 004DFD13    pop         ecx
 004DFD14    pop         ecx
 004DFD15    pop         ebp
 004DFD16    ret
*}
end;

//004DFD18
{*procedure sub_004DFD18(?:?; ?:?; ?:?);
begin
 004DFD18    push        ebp
 004DFD19    mov         ebp,esp
 004DFD1B    add         esp,0FFFFFFB0
 004DFD1E    push        ebx
 004DFD1F    xor         ebx,ebx
 004DFD21    mov         dword ptr [ebp-50],ebx
 004DFD24    mov         dword ptr [ebp-10],ebx
 004DFD27    mov         byte ptr [ebp-9],cl
 004DFD2A    mov         dword ptr [ebp-8],edx
 004DFD2D    mov         dword ptr [ebp-4],eax
 004DFD30    xor         eax,eax
 004DFD32    push        ebp
 004DFD33    push        4DFFD1
 004DFD38    push        dword ptr fs:[eax]
 004DFD3B    mov         dword ptr fs:[eax],esp
 004DFD3E    mov         eax,dword ptr [ebp-4]
 004DFD41    cmp         byte ptr [eax+3E],0
>004DFD45    je          004DFFB3
 004DFD4B    lea         eax,[ebp-10]
 004DFD4E    mov         edx,dword ptr [ebp-4]
 004DFD51    mov         edx,dword ptr [edx+30]
 004DFD54    call        @LStrLAsg
 004DFD59    mov         eax,dword ptr [ebp-4]
 004DFD5C    call        004E1FAC
 004DFD61    test        eax,eax
>004DFD63    jle         004DFD72
 004DFD65    mov         eax,dword ptr [ebp-4]
 004DFD68    call        004E0340
 004DFD6D    mov         dword ptr [ebp-38],eax
>004DFD70    jmp         004DFDD0
 004DFD72    mov         eax,dword ptr [ebp-4]
 004DFD75    cmp         word ptr [eax+60],0
>004DFD7A    je          004DFDD0
 004DFD7C    mov         eax,dword ptr [ebp-4]
 004DFD7F    cmp         dword ptr [eax+64],0
>004DFD83    je          004DFDA9
 004DFD85    mov         eax,dword ptr [ebp-4]
 004DFD88    mov         eax,dword ptr [eax+64]
 004DFD8B    cmp         dword ptr [eax+64],0
>004DFD8F    jne         004DFDA9
 004DFD91    mov         eax,dword ptr [ebp-4]
 004DFD94    mov         eax,dword ptr [eax+64]
 004DFD97    mov         eax,dword ptr [eax+4]
 004DFD9A    mov         edx,dword ptr ds:[4DE988];TMainMenu
 004DFDA0    call        @IsClass
 004DFDA5    test        al,al
>004DFDA7    jne         004DFDD0
 004DFDA9    push        dword ptr [ebp-10]
 004DFDAC    push        4DFFE8;#9
 004DFDB1    lea         edx,[ebp-50]
 004DFDB4    mov         eax,dword ptr [ebp-4]
 004DFDB7    mov         ax,word ptr [eax+60]
 004DFDBB    call        004DF13C
 004DFDC0    push        dword ptr [ebp-50]
 004DFDC3    lea         eax,[ebp-10]
 004DFDC6    mov         edx,3
 004DFDCB    call        @LStrCatN
 004DFDD0    call        kernel32.GetVersion
 004DFDD5    and         eax,0FF
 004DFDDA    cmp         ax,4
>004DFDDE    jb          004DFF0D
 004DFDE4    mov         dword ptr [ebp-4C],2C
 004DFDEB    mov         dword ptr [ebp-48],3F
 004DFDF2    mov         eax,dword ptr [ebp-4]
 004DFDF5    call        TMenuItem.GetParentMenu
 004DFDFA    mov         dword ptr [ebp-1C],eax
 004DFDFD    cmp         dword ptr [ebp-1C],0
>004DFE01    je          004DFE18
 004DFE03    mov         eax,dword ptr [ebp-1C]
 004DFE06    cmp         byte ptr [eax+40],0;TMenu.FOwnerDraw:Boolean
>004DFE0A    jne         004DFE34
 004DFE0C    mov         eax,dword ptr [ebp-4]
 004DFE0F    call        TMenuItem.GetImageList
 004DFE14    test        eax,eax
>004DFE16    jne         004DFE34
 004DFE18    mov         eax,dword ptr [ebp-4]
 004DFE1B    cmp         dword ptr [eax+4C],0
>004DFE1F    je          004DFE30
 004DFE21    mov         eax,dword ptr [ebp-4]
 004DFE24    mov         eax,dword ptr [eax+4C]
 004DFE27    mov         edx,dword ptr [eax]
 004DFE29    call        dword ptr [edx+1C]
 004DFE2C    test        al,al
>004DFE2E    je          004DFE34
 004DFE30    xor         eax,eax
>004DFE32    jmp         004DFE36
 004DFE34    mov         al,1
 004DFE36    mov         byte ptr [ebp-15],al
 004DFE39    mov         eax,dword ptr [ebp-4]
 004DFE3C    mov         eax,dword ptr [eax+30]
 004DFE3F    mov         edx,4DFFF4;'-'
 004DFE44    call        @LStrCmp
 004DFE49    sete        al
 004DFE4C    and         eax,7F
 004DFE4F    mov         eax,dword ptr [eax*4+541880]
 004DFE56    mov         edx,dword ptr [ebp-4]
 004DFE59    movzx       edx,byte ptr [edx+3D]
 004DFE5D    mov         edx,dword ptr [edx*4+541878]
 004DFE64    mov         ecx,dword ptr [ebp-4]
 004DFE67    movzx       ecx,byte ptr [ecx+48]
 004DFE6B    or          edx,dword ptr [ecx*4+541854]
 004DFE72    or          eax,edx
 004DFE74    xor         edx,edx
 004DFE76    mov         dl,byte ptr [ebp-9]
 004DFE79    or          eax,dword ptr [edx*4+541888]
 004DFE80    xor         edx,edx
 004DFE82    mov         dl,byte ptr [ebp-15]
 004DFE85    or          eax,dword ptr [edx*4+541890]
 004DFE8C    mov         dword ptr [ebp-44],eax
 004DFE8F    mov         eax,dword ptr [ebp-4]
 004DFE92    movzx       eax,byte ptr [eax+38]
 004DFE96    mov         eax,dword ptr [eax*4+541860]
 004DFE9D    mov         edx,dword ptr [ebp-4]
 004DFEA0    movzx       edx,byte ptr [edx+39]
 004DFEA4    or          eax,dword ptr [edx*4+541870]
 004DFEAB    mov         edx,dword ptr [ebp-4]
 004DFEAE    movzx       edx,byte ptr [edx+3A]
 004DFEB2    or          eax,dword ptr [edx*4+541868]
 004DFEB9    mov         dword ptr [ebp-40],eax
 004DFEBC    mov         eax,dword ptr [ebp-4]
 004DFEBF    movzx       eax,word ptr [eax+50]
 004DFEC3    mov         dword ptr [ebp-3C],eax
 004DFEC6    xor         eax,eax
 004DFEC8    mov         dword ptr [ebp-38],eax
 004DFECB    xor         eax,eax
 004DFECD    mov         dword ptr [ebp-34],eax
 004DFED0    xor         eax,eax
 004DFED2    mov         dword ptr [ebp-30],eax
 004DFED5    mov         eax,dword ptr [ebp-10]
 004DFED8    call        @LStrToPChar
 004DFEDD    mov         dword ptr [ebp-28],eax
 004DFEE0    mov         eax,dword ptr [ebp-4]
 004DFEE3    call        004E1FAC
 004DFEE8    test        eax,eax
>004DFEEA    jle         004DFEF7
 004DFEEC    mov         eax,dword ptr [ebp-4]
 004DFEEF    call        004E0340
 004DFEF4    mov         dword ptr [ebp-38],eax
 004DFEF7    lea         eax,[ebp-4C]
 004DFEFA    push        eax
 004DFEFB    push        0FF
 004DFEFD    push        0FF
 004DFEFF    mov         eax,dword ptr [ebp-8]
 004DFF02    push        eax
 004DFF03    call        user32.InsertMenuItemA
>004DFF08    jmp         004DFFB3
 004DFF0D    mov         eax,dword ptr [ebp-4]
 004DFF10    mov         eax,dword ptr [eax+30]
 004DFF13    mov         edx,4DFFF4;'-'
 004DFF18    call        @LStrCmp
 004DFF1D    sete        al
 004DFF20    and         eax,7F
 004DFF23    mov         eax,dword ptr [eax*4+54184C]
 004DFF2A    mov         edx,dword ptr [ebp-4]
 004DFF2D    movzx       edx,byte ptr [edx+48]
 004DFF31    mov         edx,dword ptr [edx*4+541840]
 004DFF38    mov         ecx,dword ptr [ebp-4]
 004DFF3B    movzx       ecx,byte ptr [ecx+38]
 004DFF3F    or          edx,dword ptr [ecx*4+541830]
 004DFF46    mov         ecx,dword ptr [ebp-4]
 004DFF49    movzx       ecx,byte ptr [ecx+39]
 004DFF4D    or          edx,dword ptr [ecx*4+541838]
 004DFF54    or          eax,edx
 004DFF56    or          eax,400
 004DFF5B    mov         dword ptr [ebp-14],eax
 004DFF5E    mov         eax,dword ptr [ebp-4]
 004DFF61    call        004E1FAC
 004DFF66    test        eax,eax
>004DFF68    jle         004DFF93
 004DFF6A    mov         eax,dword ptr [ebp-4]
 004DFF6D    mov         eax,dword ptr [eax+30]
 004DFF70    call        @LStrToPChar
 004DFF75    push        eax
 004DFF76    mov         eax,dword ptr [ebp-4]
 004DFF79    call        004E0340
 004DFF7E    push        eax
 004DFF7F    mov         eax,dword ptr [ebp-14]
 004DFF82    or          eax,10
 004DFF85    push        eax
 004DFF86    push        0FF
 004DFF88    mov         eax,dword ptr [ebp-8]
 004DFF8B    push        eax
 004DFF8C    call        user32.InsertMenuA
>004DFF91    jmp         004DFFB3
 004DFF93    mov         eax,dword ptr [ebp-10]
 004DFF96    call        @LStrToPChar
 004DFF9B    push        eax
 004DFF9C    mov         eax,dword ptr [ebp-4]
 004DFF9F    movzx       eax,word ptr [eax+50]
 004DFFA3    push        eax
 004DFFA4    mov         eax,dword ptr [ebp-14]
 004DFFA7    push        eax
 004DFFA8    push        0FF
 004DFFAA    mov         eax,dword ptr [ebp-8]
 004DFFAD    push        eax
 004DFFAE    call        user32.InsertMenuA
 004DFFB3    xor         eax,eax
 004DFFB5    pop         edx
 004DFFB6    pop         ecx
 004DFFB7    pop         ecx
 004DFFB8    mov         dword ptr fs:[eax],edx
 004DFFBB    push        4DFFD8
 004DFFC0    lea         eax,[ebp-50]
 004DFFC3    call        @LStrClr
 004DFFC8    lea         eax,[ebp-10]
 004DFFCB    call        @LStrClr
 004DFFD0    ret
>004DFFD1    jmp         @HandleFinally
>004DFFD6    jmp         004DFFC0
 004DFFD8    pop         ebx
 004DFFD9    mov         esp,ebp
 004DFFDB    pop         ebp
 004DFFDC    ret
end;*}

//004DFFF8
{*function sub_004DFFF8(?:?; ?:?):?;
begin
 004DFFF8    push        ebp
 004DFFF9    mov         ebp,esp
 004DFFFB    add         esp,0FFFFFFF8
 004DFFFE    mov         dword ptr [ebp-4],eax
 004E0001    mov         eax,dword ptr [ebp+8]
 004E0004    mov         cl,byte ptr [eax-5]
 004E0007    mov         eax,dword ptr [ebp+8]
 004E000A    mov         eax,dword ptr [eax-4]
 004E000D    mov         edx,dword ptr [eax+34]
 004E0010    mov         eax,dword ptr [ebp-4]
 004E0013    call        004DFD18
 004E0018    mov         byte ptr [ebp-5],0
 004E001C    mov         al,byte ptr [ebp-5]
 004E001F    pop         ecx
 004E0020    pop         ecx
 004E0021    pop         ebp
 004E0022    ret
end;*}

//004E0024
procedure sub_004E0024(?:TMenuItem);
begin
{*
 004E0024    push        ebp
 004E0025    mov         ebp,esp
 004E0027    add         esp,0FFFFFFF8
 004E002A    mov         dword ptr [ebp-4],eax
 004E002D    mov         eax,dword ptr [ebp-4]
 004E0030    cmp         dword ptr [eax+70],0
>004E0034    je          004E005F
 004E0036    mov         eax,dword ptr [ebp-4]
 004E0039    mov         eax,dword ptr [eax+70]
 004E003C    mov         edx,dword ptr ds:[4DE988];TMainMenu
 004E0042    call        @IsClass
 004E0047    test        al,al
>004E0049    je          004E005F
 004E004B    xor         edx,edx
 004E004D    mov         eax,dword ptr [ebp-4]
 004E0050    call        004E30A0
 004E0055    xor         edx,edx
 004E0057    mov         eax,dword ptr [ebp-4]
 004E005A    call        004E361C
 004E005F    mov         eax,dword ptr [ebp-4]
 004E0062    cmp         dword ptr [eax+70],0
>004E0066    je          004E0077
 004E0068    mov         eax,dword ptr [ebp-4]
 004E006B    mov         eax,dword ptr [eax+70]
 004E006E    call        TMenu.IsRightToLeft
 004E0073    test        al,al
>004E0075    jne         004E007B
 004E0077    xor         eax,eax
>004E0079    jmp         004E007D
 004E007B    mov         al,1
 004E007D    mov         byte ptr [ebp-5],al
 004E0080    mov         eax,dword ptr [ebp-4]
 004E0083    mov         edx,dword ptr [eax+68]
 004E0086    mov         eax,4DFFF8;sub_004DFFF8
 004E008B    mov         ecx,dword ptr [ebp-4]
 004E008E    call        004DF584
 004E0093    pop         ecx
 004E0094    pop         ecx
 004E0095    pop         ebp
 004E0096    ret
*}
end;

//004E00F8
{*procedure sub_004E00F8(?:TMenuItem; ?:?);
begin
 004E00F8    push        ebp
 004E00F9    mov         ebp,esp
 004E00FB    add         esp,0FFFFFFF8
 004E00FE    mov         dword ptr [ebp-8],edx
 004E0101    mov         dword ptr [ebp-4],eax
 004E0104    cmp         dword ptr [ebp-8],0
>004E0108    je          004E0113
 004E010A    mov         eax,dword ptr [ebp-8]
 004E010D    test        byte ptr [eax+1C],8
>004E0111    jne         004E0166
 004E0113    mov         eax,dword ptr [ebp-4]
 004E0116    mov         eax,dword ptr [eax+68]
 004E0119    cmp         eax,dword ptr [ebp-8]
>004E011C    je          004E0166
 004E011E    mov         eax,dword ptr [ebp-4]
 004E0121    cmp         dword ptr [eax+68],0
>004E0125    je          004E0132
 004E0127    mov         eax,dword ptr [ebp-4]
 004E012A    mov         eax,dword ptr [eax+68]
 004E012D    xor         edx,edx
 004E012F    mov         dword ptr [eax+6C],edx
 004E0132    mov         eax,dword ptr [ebp-8]
 004E0135    mov         edx,dword ptr [ebp-4]
 004E0138    mov         dword ptr [edx+68],eax
 004E013B    mov         eax,dword ptr [ebp-4]
 004E013E    cmp         dword ptr [eax+68],0
>004E0142    je          004E015E
 004E0144    mov         eax,dword ptr [ebp-4]
 004E0147    mov         eax,dword ptr [eax+68]
 004E014A    mov         edx,dword ptr [ebp-4]
 004E014D    mov         dword ptr [eax+6C],edx
 004E0150    mov         edx,dword ptr [ebp-4]
 004E0153    mov         eax,dword ptr [ebp-4]
 004E0156    mov         eax,dword ptr [eax+68]
 004E0159    call        00483020
 004E015E    mov         eax,dword ptr [ebp-4]
 004E0161    call        004E01B8
 004E0166    pop         ecx
 004E0167    pop         ecx
 004E0168    pop         ebp
 004E0169    ret
end;*}

//004E016C
procedure sub_004E016C;
begin
{*
 004E016C    push        ebp
 004E016D    mov         ebp,esp
 004E016F    push        ecx
 004E0170    push        esi
 004E0171    mov         dword ptr [ebp-4],eax
 004E0174    mov         eax,dword ptr [ebp-4]
 004E0177    call        004835C0
 004E017C    mov         eax,dword ptr [ebp-4]
 004E017F    call        TMenuItem.GetAction
 004E0184    test        eax,eax
>004E0186    je          004E01A0
 004E0188    mov         eax,dword ptr [ebp-4]
 004E018B    call        TMenuItem.GetAction
 004E0190    mov         edx,eax
 004E0192    mov         cl,1
 004E0194    mov         eax,dword ptr [ebp-4]
 004E0197    mov         si,0FFEF
 004E019B    call        @CallDynaInst;TMenuItem.sub_004E28C4
 004E01A0    mov         eax,dword ptr [ebp-4]
 004E01A3    cmp         byte ptr [eax+74],0;TMenuItem.FStreamedRebuild:Boolean
>004E01A7    je          004E01B1
 004E01A9    mov         eax,dword ptr [ebp-4]
 004E01AC    call        004E01B8
 004E01B1    pop         esi
 004E01B2    pop         ecx
 004E01B3    pop         ebp
 004E01B4    ret
*}
end;

//004E01B8
procedure sub_004E01B8(?:TMenuItem);
begin
{*
 004E01B8    push        ebp
 004E01B9    mov         ebp,esp
 004E01BB    add         esp,0FFFFFFF4
 004E01BE    mov         dword ptr [ebp-4],eax
 004E01C1    mov         eax,dword ptr [ebp-4]
 004E01C4    test        byte ptr [eax+1C],8;TMenuItem.FComponentState:TComponentState
>004E01C8    jne         004E02BA
 004E01CE    mov         eax,dword ptr [ebp-4]
 004E01D1    test        byte ptr [eax+1C],2;TMenuItem.FComponentState:TComponentState
>004E01D5    je          004E01E3
 004E01D7    mov         eax,dword ptr [ebp-4]
 004E01DA    mov         byte ptr [eax+74],1;TMenuItem.FStreamedRebuild:Boolean
>004E01DE    jmp         004E02BA
 004E01E3    mov         eax,dword ptr [ebp-4]
 004E01E6    cmp         dword ptr [eax+6C],0;TMenuItem.FMergedWith:TMenuItem
>004E01EA    je          004E01FC
 004E01EC    mov         eax,dword ptr [ebp-4]
 004E01EF    mov         eax,dword ptr [eax+6C];TMenuItem.FMergedWith:TMenuItem
 004E01F2    call        004E01B8
>004E01F7    jmp         004E02BA
 004E01FC    mov         eax,dword ptr [ebp-4]
 004E01FF    call        004E0340
 004E0204    push        eax
 004E0205    call        user32.GetMenuItemCount
 004E020A    mov         dword ptr [ebp-8],eax
 004E020D    cmp         dword ptr [ebp-8],0
 004E0211    sete        byte ptr [ebp-9]
 004E0215    cmp         dword ptr [ebp-8],0
>004E0219    jle         004E025C
 004E021B    push        400
 004E0220    mov         eax,dword ptr [ebp-8]
 004E0223    dec         eax
 004E0224    push        eax
 004E0225    mov         eax,dword ptr [ebp-4]
 004E0228    call        004E0340
 004E022D    push        eax
 004E022E    call        user32.GetMenuState
 004E0233    test        al,4
>004E0235    jne         004E0253
 004E0237    push        400
 004E023C    mov         eax,dword ptr [ebp-8]
 004E023F    dec         eax
 004E0240    push        eax
 004E0241    mov         eax,dword ptr [ebp-4]
 004E0244    call        004E0340
 004E0249    push        eax
 004E024A    call        user32.RemoveMenu
 004E024F    mov         byte ptr [ebp-9],1
 004E0253    dec         dword ptr [ebp-8]
 004E0256    cmp         dword ptr [ebp-8],0
>004E025A    jg          004E021B
 004E025C    cmp         byte ptr [ebp-9],0
>004E0260    je          004E02BA
 004E0262    mov         eax,dword ptr [ebp-4]
 004E0265    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>004E0269    jne         004E02A8
 004E026B    mov         eax,dword ptr [ebp-4]
 004E026E    mov         eax,dword ptr [eax+70];TMenuItem.FMenu:TMenu
 004E0271    mov         edx,dword ptr ds:[4DE988];TMainMenu
 004E0277    call        @IsClass
 004E027C    test        al,al
>004E027E    je          004E02A8
 004E0280    mov         eax,dword ptr [ebp-4]
 004E0283    call        004E0340
 004E0288    push        eax
 004E0289    call        user32.GetMenuItemCount
 004E028E    test        eax,eax
>004E0290    jne         004E02A8
 004E0292    mov         eax,dword ptr [ebp-4]
 004E0295    mov         eax,dword ptr [eax+34];TMenuItem.FHandle:HMENU
 004E0298    push        eax
 004E0299    call        user32.DestroyMenu
 004E029E    mov         eax,dword ptr [ebp-4]
 004E02A1    xor         edx,edx
 004E02A3    mov         dword ptr [eax+34],edx;TMenuItem.FHandle:HMENU
>004E02A6    jmp         004E02B0
 004E02A8    mov         eax,dword ptr [ebp-4]
 004E02AB    call        004E0024
 004E02B0    xor         edx,edx
 004E02B2    mov         eax,dword ptr [ebp-4]
 004E02B5    mov         ecx,dword ptr [eax]
 004E02B7    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E02BA    mov         esp,ebp
 004E02BC    pop         ebp
 004E02BD    ret
*}
end;

//004E02C0
{*procedure sub_004E02C0(?:TMenuItem; ?:?; ?:?);
begin
 004E02C0    push        ebp
 004E02C1    mov         ebp,esp
 004E02C3    add         esp,0FFFFFFEC
 004E02C6    mov         byte ptr [ebp-9],cl
 004E02C9    mov         dword ptr [ebp-8],edx
 004E02CC    mov         dword ptr [ebp-4],eax
 004E02CF    mov         eax,dword ptr [ebp-4]
 004E02D2    call        004E1FAC
 004E02D7    dec         eax
 004E02D8    test        eax,eax
>004E02DA    jl          004E033A
 004E02DC    inc         eax
 004E02DD    mov         dword ptr [ebp-14],eax
 004E02E0    mov         dword ptr [ebp-10],0
 004E02E7    mov         eax,dword ptr [ebp-10]
 004E02EA    cmp         eax,dword ptr [ebp-8]
>004E02ED    jge         004E030E
 004E02EF    mov         edx,dword ptr [ebp-10]
 004E02F2    mov         eax,dword ptr [ebp-4]
 004E02F5    call        004E1FD8
 004E02FA    mov         al,byte ptr [eax+3F]
 004E02FD    cmp         al,byte ptr [ebp-9]
>004E0300    jbe         004E0332
 004E0302    mov         eax,[0055B1C0];^SGroupIndexTooLow:TResStringRec
 004E0307    call        004DF064
>004E030C    jmp         004E0332
 004E030E    mov         edx,dword ptr [ebp-10]
 004E0311    mov         eax,dword ptr [ebp-4]
 004E0314    call        004E1FD8
 004E0319    mov         al,byte ptr [eax+3F]
 004E031C    cmp         al,byte ptr [ebp-9]
>004E031F    jae         004E0332
 004E0321    mov         edx,dword ptr [ebp-10]
 004E0324    mov         eax,dword ptr [ebp-4]
 004E0327    call        004E1FD8
 004E032C    mov         dl,byte ptr [ebp-9]
 004E032F    mov         byte ptr [eax+3F],dl
 004E0332    inc         dword ptr [ebp-10]
 004E0335    dec         dword ptr [ebp-14]
>004E0338    jne         004E02E7
 004E033A    mov         esp,ebp
 004E033C    pop         ebp
 004E033D    ret
end;*}

//004E0340
{*function sub_004E0340(?:TMenuItem):?;
begin
 004E0340    push        ebp
 004E0341    mov         ebp,esp
 004E0343    add         esp,0FFFFFFF8
 004E0346    mov         dword ptr [ebp-4],eax
 004E0349    mov         eax,dword ptr [ebp-4]
 004E034C    cmp         dword ptr [eax+34],0;TMenuItem.FHandle:HMENU
>004E0350    jne         004E039A
 004E0352    mov         eax,dword ptr [ebp-4]
 004E0355    mov         eax,dword ptr [eax+4];TMenuItem.FOwner:TComponent
 004E0358    mov         edx,dword ptr ds:[4DEC6C];TPopupMenu
 004E035E    call        @IsClass
 004E0363    test        al,al
>004E0365    je          004E0374
 004E0367    call        user32.CreatePopupMenu
 004E036C    mov         edx,dword ptr [ebp-4]
 004E036F    mov         dword ptr [edx+34],eax;TMenuItem.FHandle:HMENU
>004E0372    jmp         004E037F
 004E0374    call        user32.CreateMenu
 004E0379    mov         edx,dword ptr [ebp-4]
 004E037C    mov         dword ptr [edx+34],eax;TMenuItem.FHandle:HMENU
 004E037F    mov         eax,dword ptr [ebp-4]
 004E0382    cmp         dword ptr [eax+34],0;TMenuItem.FHandle:HMENU
>004E0386    jne         004E0392
 004E0388    mov         eax,[0055B17C];^SOutOfResources:TResStringRec
 004E038D    call        004DF064
 004E0392    mov         eax,dword ptr [ebp-4]
 004E0395    call        004E0024
 004E039A    mov         eax,dword ptr [ebp-4]
 004E039D    mov         eax,dword ptr [eax+34];TMenuItem.FHandle:HMENU
 004E03A0    mov         dword ptr [ebp-8],eax
 004E03A3    mov         eax,dword ptr [ebp-8]
 004E03A6    pop         ecx
 004E03A7    pop         ecx
 004E03A8    pop         ebp
 004E03A9    ret
end;*}

//004E03AC
procedure TMenuItem.DefineProperties(Filer:TFiler);
begin
{*
 004E03AC    push        ebp
 004E03AD    mov         ebp,esp
 004E03AF    add         esp,0FFFFFFF8
 004E03B2    push        ebx
 004E03B3    mov         dword ptr [ebp-8],edx
 004E03B6    mov         dword ptr [ebp-4],eax
 004E03B9    mov         edx,dword ptr [ebp-8]
 004E03BC    mov         eax,dword ptr [ebp-4]
 004E03BF    call        TComponent.DefineProperties
 004E03C4    mov         eax,dword ptr [ebp-4]
 004E03C7    push        eax
 004E03C8    push        4E0098
 004E03CD    push        0
 004E03CF    push        0
 004E03D1    xor         ecx,ecx
 004E03D3    mov         edx,4E03F0;'ShortCutText'
 004E03D8    mov         eax,dword ptr [ebp-8]
 004E03DB    mov         ebx,dword ptr [eax]
 004E03DD    call        dword ptr [ebx+4];@AbstractError
 004E03E0    pop         ebx
 004E03E1    pop         ecx
 004E03E2    pop         ecx
 004E03E3    pop         ebp
 004E03E4    ret
*}
end;

//004E0400
{*procedure sub_004E0400(?:TMenuItem; ?:?; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);
begin
 004E0400    push        ebp
 004E0401    mov         ebp,esp
 004E0403    add         esp,0FFFFFFDC
 004E0406    push        ebx
 004E0407    push        esi
 004E0408    push        edi
 004E0409    xor         ebx,ebx
 004E040B    mov         dword ptr [ebp-10],ebx
 004E040E    mov         dword ptr [ebp-0C],ecx
 004E0411    mov         dword ptr [ebp-8],edx
 004E0414    mov         dword ptr [ebp-4],eax
 004E0417    xor         eax,eax
 004E0419    push        ebp
 004E041A    push        4E0606
 004E041F    push        dword ptr fs:[eax]
 004E0422    mov         dword ptr fs:[eax],esp
 004E0425    mov         eax,dword ptr [ebp-4]
 004E0428    call        TMenuItem.GetParentMenu
 004E042D    mov         dword ptr [ebp-14],eax
 004E0430    cmp         dword ptr [ebp-14],0
>004E0434    je          004E0474
 004E0436    mov         eax,dword ptr [ebp-14]
 004E0439    call        TMenu.IsRightToLeft
 004E043E    test        al,al
>004E0440    je          004E0474
 004E0442    test        byte ptr [ebp+8],0
>004E0446    jne         004E0456
 004E0448    mov         eax,dword ptr [ebp+8]
 004E044B    and         eax,0FFFFFFFF
 004E044E    or          eax,2
 004E0451    mov         dword ptr [ebp+8],eax
>004E0454    jmp         004E046D
 004E0456    mov         eax,dword ptr [ebp+8]
 004E0459    and         eax,2
 004E045C    cmp         eax,2
>004E045F    jne         004E046D
 004E0461    mov         eax,dword ptr [ebp+8]
 004E0464    and         eax,0FFFFFFFD
 004E0467    or          eax,0
 004E046A    mov         dword ptr [ebp+8],eax
 004E046D    or          dword ptr [ebp+8],20000
 004E0474    lea         eax,[ebp-10]
 004E0477    mov         edx,dword ptr [ebp-0C]
 004E047A    call        @LStrLAsg
 004E047F    test        byte ptr [ebp+9],4
>004E0483    je          004E04A9
 004E0485    cmp         dword ptr [ebp-10],0
>004E0489    je          004E049C
 004E048B    mov         eax,dword ptr [ebp-10]
 004E048E    cmp         byte ptr [eax],26
>004E0491    jne         004E04A9
 004E0493    mov         eax,dword ptr [ebp-10]
 004E0496    cmp         byte ptr [eax+1],0
>004E049A    jne         004E04A9
 004E049C    lea         eax,[ebp-10]
 004E049F    mov         edx,4E0620;' '
 004E04A4    call        @LStrCat
 004E04A9    mov         eax,dword ptr [ebp-10]
 004E04AC    mov         edx,4E062C;'-'
 004E04B1    call        @LStrCmp
>004E04B6    jne         004E04ED
 004E04B8    test        byte ptr [ebp+9],4
>004E04BC    jne         004E05F0
 004E04C2    mov         eax,dword ptr [ebp+10]
 004E04C5    mov         esi,eax
 004E04C7    lea         edi,[ebp-24]
 004E04CA    movs        dword ptr [edi],dword ptr [esi]
 004E04CB    movs        dword ptr [edi],dword ptr [esi]
 004E04CC    movs        dword ptr [edi],dword ptr [esi]
 004E04CD    movs        dword ptr [edi],dword ptr [esi]
 004E04CE    add         dword ptr [ebp-20],4
 004E04D2    push        2
 004E04D4    push        6
 004E04D6    lea         eax,[ebp-24]
 004E04D9    push        eax
 004E04DA    mov         eax,dword ptr [ebp-8]
 004E04DD    call        TCanvas.GetHandle
 004E04E2    push        eax
 004E04E3    call        user32.DrawEdge
>004E04E8    jmp         004E05F0
 004E04ED    mov         eax,dword ptr [ebp-8]
 004E04F0    mov         eax,dword ptr [eax+14]
 004E04F3    mov         dl,1
 004E04F5    call        TBrush.SetStyle
 004E04FA    mov         eax,dword ptr [ebp-4]
 004E04FD    cmp         byte ptr [eax+3A],0
>004E0501    je          004E0521
 004E0503    mov         eax,dword ptr [ebp-8]
 004E0506    mov         eax,dword ptr [eax+0C]
 004E0509    call        TFont.GetStyle
 004E050E    mov         edx,eax
 004E0510    or          dl,byte ptr ds:[4E0630];0x1 gvar_004E0630
 004E0516    mov         eax,dword ptr [ebp-8]
 004E0519    mov         eax,dword ptr [eax+0C]
 004E051C    call        TFont.SetStyle
 004E0521    mov         eax,dword ptr [ebp-4]
 004E0524    cmp         byte ptr [eax+39],0
>004E0528    jne         004E05C8
 004E052E    cmp         byte ptr [ebp+0C],0
>004E0532    jne         004E0586
 004E0534    push        1
 004E0536    push        1
 004E0538    mov         eax,dword ptr [ebp+10]
 004E053B    push        eax
 004E053C    call        user32.OffsetRect
 004E0541    mov         eax,dword ptr [ebp-8]
 004E0544    mov         eax,dword ptr [eax+0C]
 004E0547    mov         edx,0FF000014
 004E054C    call        TFont.SetColor
 004E0551    mov         eax,dword ptr [ebp+8]
 004E0554    push        eax
 004E0555    mov         eax,dword ptr [ebp+10]
 004E0558    push        eax
 004E0559    mov         eax,dword ptr [ebp-10]
 004E055C    call        @DynArrayLength
 004E0561    push        eax
 004E0562    mov         eax,dword ptr [ebp-10]
 004E0565    call        @LStrToPChar
 004E056A    push        eax
 004E056B    mov         eax,dword ptr [ebp-8]
 004E056E    call        TCanvas.GetHandle
 004E0573    push        eax
 004E0574    call        user32.DrawTextA
 004E0579    push        0FF
 004E057B    push        0FF
 004E057D    mov         eax,dword ptr [ebp+10]
 004E0580    push        eax
 004E0581    call        user32.OffsetRect
 004E0586    cmp         byte ptr [ebp+0C],0
>004E058A    je          004E05B8
 004E058C    mov         eax,0FF00000D
 004E0591    call        00486830
 004E0596    mov         ebx,eax
 004E0598    mov         eax,0FF000010
 004E059D    call        00486830
 004E05A2    cmp         ebx,eax
>004E05A4    jne         004E05B8
 004E05A6    mov         eax,dword ptr [ebp-8]
 004E05A9    mov         eax,dword ptr [eax+0C]
 004E05AC    mov         edx,0FF000014
 004E05B1    call        TFont.SetColor
>004E05B6    jmp         004E05C8
 004E05B8    mov         eax,dword ptr [ebp-8]
 004E05BB    mov         eax,dword ptr [eax+0C]
 004E05BE    mov         edx,0FF000010
 004E05C3    call        TFont.SetColor
 004E05C8    mov         eax,dword ptr [ebp+8]
 004E05CB    push        eax
 004E05CC    mov         eax,dword ptr [ebp+10]
 004E05CF    push        eax
 004E05D0    mov         eax,dword ptr [ebp-10]
 004E05D3    call        @DynArrayLength
 004E05D8    push        eax
 004E05D9    mov         eax,dword ptr [ebp-10]
 004E05DC    call        @LStrToPChar
 004E05E1    push        eax
 004E05E2    mov         eax,dword ptr [ebp-8]
 004E05E5    call        TCanvas.GetHandle
 004E05EA    push        eax
 004E05EB    call        user32.DrawTextA
 004E05F0    xor         eax,eax
 004E05F2    pop         edx
 004E05F3    pop         ecx
 004E05F4    pop         ecx
 004E05F5    mov         dword ptr fs:[eax],edx
 004E05F8    push        4E060D
 004E05FD    lea         eax,[ebp-10]
 004E0600    call        @LStrClr
 004E0605    ret
>004E0606    jmp         @HandleFinally
>004E060B    jmp         004E05FD
 004E060D    pop         edi
 004E060E    pop         esi
 004E060F    pop         ebx
 004E0610    mov         esp,ebp
 004E0612    pop         ebp
 004E0613    ret         0C
end;*}

//004E0634
{*procedure sub_004E0634(?:?; ?:?; ?:?);
begin
 004E0634    push        ebp
 004E0635    mov         ebp,esp
 004E0637    add         esp,0FFFFFFE8
 004E063A    push        ebx
 004E063B    push        esi
 004E063C    push        edi
 004E063D    mov         esi,ecx
 004E063F    lea         edi,[ebp-18]
 004E0642    movs        dword ptr [edi],dword ptr [esi]
 004E0643    movs        dword ptr [edi],dword ptr [esi]
 004E0644    movs        dword ptr [edi],dword ptr [esi]
 004E0645    movs        dword ptr [edi],dword ptr [esi]
 004E0646    mov         dword ptr [ebp-8],edx
 004E0649    mov         dword ptr [ebp-4],eax
 004E064C    mov         eax,dword ptr [ebp-4]
 004E064F    cmp         word ptr [eax+92],0;TMenuItem.?f92:word
>004E0657    je          004E0676
 004E0659    lea         eax,[ebp-18]
 004E065C    push        eax
 004E065D    mov         al,byte ptr [ebp+8]
 004E0660    push        eax
 004E0661    mov         ebx,dword ptr [ebp-4]
 004E0664    mov         ecx,dword ptr [ebp-8]
 004E0667    mov         edx,dword ptr [ebp-4]
 004E066A    mov         eax,dword ptr [ebx+94];TMenuItem.?f94:dword
 004E0670    call        dword ptr [ebx+90];TMenuItem.OnDrawItem
 004E0676    pop         edi
 004E0677    pop         esi
 004E0678    pop         ebx
 004E0679    mov         esp,ebp
 004E067B    pop         ebp
 004E067C    ret         4
end;*}

//004E0680
procedure NormalDraw;
begin
{*
 004E0680    push        ebp
 004E0681    mov         ebp,esp
 004E0683    push        0
 004E0685    push        esi
 004E0686    push        edi
 004E0687    xor         eax,eax
 004E0689    push        ebp
 004E068A    push        4E0F72
 004E068F    push        dword ptr fs:[eax]
 004E0692    mov         dword ptr fs:[eax],esp
 004E0695    mov         eax,dword ptr [ebp+8]
 004E0698    cmp         byte ptr [eax-21],0
>004E069C    je          004E06F4
 004E069E    mov         eax,dword ptr [ebp+8]
 004E06A1    test        byte ptr [eax+0C],1
>004E06A5    jne         004E06B0
 004E06A7    mov         eax,dword ptr [ebp+8]
 004E06AA    test        byte ptr [eax+0C],40
>004E06AE    je          004E06D8
 004E06B0    mov         eax,dword ptr [ebp+8]
 004E06B3    mov         eax,dword ptr [eax-28]
 004E06B6    mov         eax,dword ptr [eax+14]
 004E06B9    mov         edx,0FF00001D
 004E06BE    call        TBrush.SetColor
 004E06C3    mov         eax,dword ptr [ebp+8]
 004E06C6    mov         eax,dword ptr [eax-28]
 004E06C9    mov         eax,dword ptr [eax+0C]
 004E06CC    mov         edx,0FF00000E
 004E06D1    call        TFont.SetColor
>004E06D6    jmp         004E06F4
 004E06D8    mov         eax,dword ptr [ebp+8]
 004E06DB    cmp         byte ptr [eax+8],0
>004E06DF    je          004E06F4
 004E06E1    mov         eax,dword ptr [ebp+8]
 004E06E4    mov         eax,dword ptr [eax-28]
 004E06E7    mov         eax,dword ptr [eax+14]
 004E06EA    mov         edx,0FF00001E
 004E06EF    call        TBrush.SetColor
 004E06F4    mov         eax,dword ptr [ebp+8]
 004E06F7    cmp         byte ptr [eax-29],0
>004E06FB    je          004E0706
 004E06FD    mov         eax,dword ptr [ebp+8]
 004E0700    cmp         byte ptr [eax-21],0
>004E0704    je          004E0717
 004E0706    mov         eax,dword ptr [ebp+8]
 004E0709    lea         edx,[eax-20]
 004E070C    mov         eax,dword ptr [ebp+8]
 004E070F    mov         eax,dword ptr [eax-28]
 004E0712    call        TCanvas.FillRect
 004E0717    mov         eax,dword ptr [ebp+8]
 004E071A    cmp         dword ptr [eax-30],0
>004E071E    je          004E0729
 004E0720    mov         eax,dword ptr [ebp+8]
 004E0723    mov         byte ptr [eax-31],0
>004E0727    jmp         004E0756
 004E0729    mov         eax,dword ptr [ebp+8]
 004E072C    mov         eax,dword ptr [eax-30]
 004E072F    mov         edx,dword ptr ds:[4DEC6C];TPopupMenu
 004E0735    call        @IsClass
 004E073A    test        al,al
>004E073C    je          004E074F
 004E073E    mov         eax,dword ptr [ebp+8]
 004E0741    mov         eax,dword ptr [eax-30]
 004E0744    mov         al,byte ptr [eax+60]
 004E0747    mov         edx,dword ptr [ebp+8]
 004E074A    mov         byte ptr [edx-31],al
>004E074D    jmp         004E0756
 004E074F    mov         eax,dword ptr [ebp+8]
 004E0752    mov         byte ptr [eax-31],0
 004E0756    mov         eax,dword ptr [ebp+8]
 004E0759    mov         eax,dword ptr [eax-20]
 004E075C    inc         eax
 004E075D    mov         edx,dword ptr [ebp+8]
 004E0760    mov         dword ptr [edx-10],eax
 004E0763    mov         eax,dword ptr [ebp+8]
 004E0766    mov         eax,dword ptr [eax-1C]
 004E0769    inc         eax
 004E076A    mov         edx,dword ptr [ebp+8]
 004E076D    mov         dword ptr [edx-0C],eax
 004E0770    mov         eax,dword ptr [ebp+8]
 004E0773    mov         eax,dword ptr [eax-38]
 004E0776    mov         eax,dword ptr [eax+30]
 004E0779    mov         edx,4E0F88;'-'
 004E077E    call        @LStrCmp
>004E0783    jne         004E07B4
 004E0785    mov         eax,dword ptr [ebp+8]
 004E0788    lea         edx,[eax-20]
 004E078B    mov         eax,dword ptr [ebp+8]
 004E078E    mov         eax,dword ptr [eax-28]
 004E0791    call        TCanvas.FillRect
 004E0796    mov         eax,dword ptr [ebp+8]
 004E0799    xor         edx,edx
 004E079B    mov         dword ptr [eax-10],edx
 004E079E    mov         eax,dword ptr [ebp+8]
 004E07A1    mov         dword ptr [eax-8],0FFFFFFFC
 004E07A8    mov         eax,dword ptr [ebp+8]
 004E07AB    mov         byte ptr [eax-39],0
>004E07AF    jmp         004E0C56
 004E07B4    mov         eax,dword ptr [ebp+8]
 004E07B7    cmp         dword ptr [eax-40],0
>004E07BB    je          004E0809
 004E07BD    mov         eax,dword ptr [ebp+8]
 004E07C0    mov         eax,dword ptr [eax-38]
 004E07C3    cmp         dword ptr [eax+40],0FFFFFFFF
>004E07C7    jle         004E07DF
 004E07C9    mov         eax,dword ptr [ebp+8]
 004E07CC    mov         eax,dword ptr [eax-40]
 004E07CF    call        004DCB64
 004E07D4    mov         edx,dword ptr [ebp+8]
 004E07D7    mov         edx,dword ptr [edx-38]
 004E07DA    cmp         eax,dword ptr [edx+40]
>004E07DD    jg          004E080D
 004E07DF    mov         eax,dword ptr [ebp+8]
 004E07E2    mov         eax,dword ptr [eax-38]
 004E07E5    cmp         byte ptr [eax+38],0
>004E07E9    je          004E0809
 004E07EB    mov         eax,dword ptr [ebp+8]
 004E07EE    mov         eax,dword ptr [eax-38]
 004E07F1    cmp         dword ptr [eax+4C],0
>004E07F5    je          004E080D
 004E07F7    mov         eax,dword ptr [ebp+8]
 004E07FA    mov         eax,dword ptr [eax-38]
 004E07FD    mov         eax,dword ptr [eax+4C]
 004E0800    mov         edx,dword ptr [eax]
 004E0802    call        dword ptr [edx+1C]
 004E0805    test        al,al
>004E0807    jne         004E080D
 004E0809    xor         eax,eax
>004E080B    jmp         004E080F
 004E080D    mov         al,1
 004E080F    mov         edx,dword ptr [ebp+8]
 004E0812    mov         byte ptr [edx-41],al
 004E0815    mov         eax,dword ptr [ebp+8]
 004E0818    cmp         byte ptr [eax-41],0
>004E081C    jne         004E0844
 004E081E    mov         eax,dword ptr [ebp+8]
 004E0821    mov         eax,dword ptr [eax-38]
 004E0824    cmp         dword ptr [eax+4C],0
>004E0828    je          004E0BF9
 004E082E    mov         eax,dword ptr [ebp+8]
 004E0831    mov         eax,dword ptr [eax-38]
 004E0834    mov         eax,dword ptr [eax+4C]
 004E0837    mov         edx,dword ptr [eax]
 004E0839    call        dword ptr [edx+1C]
 004E083C    test        al,al
>004E083E    jne         004E0BF9
 004E0844    mov         eax,dword ptr [ebp+8]
 004E0847    mov         byte ptr [eax-39],1
 004E084B    mov         eax,dword ptr [ebp+8]
 004E084E    cmp         byte ptr [eax-41],0
>004E0852    je          004E0880
 004E0854    mov         eax,dword ptr [ebp+8]
 004E0857    mov         eax,dword ptr [eax-10]
 004E085A    mov         edx,dword ptr [ebp+8]
 004E085D    mov         edx,dword ptr [edx-40]
 004E0860    add         eax,dword ptr [edx+34]
 004E0863    mov         edx,dword ptr [ebp+8]
 004E0866    mov         dword ptr [edx-8],eax
 004E0869    mov         eax,dword ptr [ebp+8]
 004E086C    mov         eax,dword ptr [eax-0C]
 004E086F    mov         edx,dword ptr [ebp+8]
 004E0872    mov         edx,dword ptr [edx-40]
 004E0875    add         eax,dword ptr [edx+30]
 004E0878    mov         edx,dword ptr [ebp+8]
 004E087B    mov         dword ptr [edx-4],eax
>004E087E    jmp         004E089E
 004E0880    mov         eax,dword ptr [ebp+8]
 004E0883    mov         eax,dword ptr [eax-10]
 004E0886    add         eax,10
 004E0889    mov         edx,dword ptr [ebp+8]
 004E088C    mov         dword ptr [edx-8],eax
 004E088F    mov         eax,dword ptr [ebp+8]
 004E0892    mov         eax,dword ptr [eax-0C]
 004E0895    add         eax,10
 004E0898    mov         edx,dword ptr [ebp+8]
 004E089B    mov         dword ptr [edx-4],eax
 004E089E    mov         eax,dword ptr [ebp+8]
 004E08A1    mov         eax,dword ptr [eax-38]
 004E08A4    cmp         byte ptr [eax+38],0
>004E08A8    je          004E096E
 004E08AE    mov         eax,dword ptr [ebp+8]
 004E08B1    cmp         byte ptr [eax-21],0
>004E08B5    jne         004E096E
 004E08BB    mov         eax,dword ptr [ebp+8]
 004E08BE    inc         dword ptr [eax-8]
 004E08C1    mov         eax,dword ptr [ebp+8]
 004E08C4    inc         dword ptr [eax-4]
 004E08C7    mov         eax,dword ptr [ebp+8]
 004E08CA    mov         eax,dword ptr [eax-28]
 004E08CD    mov         eax,dword ptr [eax+14]
 004E08D0    call        TBrush.GetColor
 004E08D5    mov         edx,dword ptr [ebp+8]
 004E08D8    mov         dword ptr [edx-48],eax
 004E08DB    mov         eax,dword ptr [ebp+8]
 004E08DE    test        byte ptr [eax+0C],1
>004E08E2    jne         004E092A
 004E08E4    mov         eax,dword ptr [ebp+8]
 004E08E7    mov         eax,dword ptr [eax-28]
 004E08EA    mov         eax,dword ptr [eax+14]
 004E08ED    call        TBrush.GetColor
 004E08F2    mov         edx,dword ptr [ebp+8]
 004E08F5    mov         dword ptr [edx-48],eax
 004E08F8    mov         edx,0FF000014
 004E08FD    mov         eax,0FF00000F
 004E0902    call        0048FA88
 004E0907    mov         edx,eax
 004E0909    mov         eax,dword ptr [ebp+8]
 004E090C    mov         eax,dword ptr [eax-28]
 004E090F    mov         eax,dword ptr [eax+14]
 004E0912    call        0048775C
 004E0917    mov         eax,dword ptr [ebp+8]
 004E091A    lea         edx,[eax-10]
 004E091D    mov         eax,dword ptr [ebp+8]
 004E0920    mov         eax,dword ptr [eax-28]
 004E0923    call        TCanvas.FillRect
>004E0928    jmp         004E094E
 004E092A    mov         eax,dword ptr [ebp+8]
 004E092D    mov         eax,dword ptr [eax-28]
 004E0930    mov         eax,dword ptr [eax+14]
 004E0933    mov         edx,0FF00000F
 004E0938    call        TBrush.SetColor
 004E093D    mov         eax,dword ptr [ebp+8]
 004E0940    lea         edx,[eax-10]
 004E0943    mov         eax,dword ptr [ebp+8]
 004E0946    mov         eax,dword ptr [eax-28]
 004E0949    call        TCanvas.FillRect
 004E094E    mov         eax,dword ptr [ebp+8]
 004E0951    mov         edx,dword ptr [eax-48]
 004E0954    mov         eax,dword ptr [ebp+8]
 004E0957    mov         eax,dword ptr [eax-28]
 004E095A    mov         eax,dword ptr [eax+14]
 004E095D    call        TBrush.SetColor
 004E0962    mov         eax,dword ptr [ebp+8]
 004E0965    inc         dword ptr [eax-10]
 004E0968    mov         eax,dword ptr [ebp+8]
 004E096B    inc         dword ptr [eax-0C]
 004E096E    mov         eax,dword ptr [ebp+8]
 004E0971    cmp         byte ptr [eax-41],0
>004E0975    je          004E0AD5
 004E097B    mov         eax,dword ptr [ebp+8]
 004E097E    mov         eax,dword ptr [eax-38]
 004E0981    cmp         dword ptr [eax+40],0FFFFFFFF
>004E0985    jle         004E09D4
 004E0987    mov         eax,dword ptr [ebp+8]
 004E098A    mov         eax,dword ptr [eax-40]
 004E098D    call        004DCB64
 004E0992    mov         edx,dword ptr [ebp+8]
 004E0995    mov         edx,dword ptr [edx-38]
 004E0998    cmp         eax,dword ptr [edx+40]
>004E099B    jle         004E09D4
 004E099D    mov         eax,dword ptr [ebp+8]
 004E09A0    mov         eax,dword ptr [eax-0C]
 004E09A3    push        eax
 004E09A4    mov         eax,dword ptr [ebp+8]
 004E09A7    mov         eax,dword ptr [eax-38]
 004E09AA    mov         eax,dword ptr [eax+40]
 004E09AD    push        eax
 004E09AE    mov         eax,dword ptr [ebp+8]
 004E09B1    mov         eax,dword ptr [eax-38]
 004E09B4    mov         al,byte ptr [eax+39]
 004E09B7    push        eax
 004E09B8    mov         eax,dword ptr [ebp+8]
 004E09BB    mov         ecx,dword ptr [eax-10]
 004E09BE    mov         eax,dword ptr [ebp+8]
 004E09C1    mov         edx,dword ptr [eax-28]
 004E09C4    mov         eax,dword ptr [ebp+8]
 004E09C7    mov         eax,dword ptr [eax-40]
 004E09CA    call        004DD138
>004E09CF    jmp         004E0BDF
 004E09D4    mov         dl,1
 004E09D6    mov         eax,[00485C6C];TBitmap
 004E09DB    call        TBitmap.Create
 004E09E0    mov         edx,dword ptr [ebp+8]
 004E09E3    mov         dword ptr [edx-4C],eax
 004E09E6    xor         eax,eax
 004E09E8    push        ebp
 004E09E9    push        4E0ACE
 004E09EE    push        dword ptr fs:[eax]
 004E09F1    mov         dword ptr fs:[eax],esp
 004E09F4    mov         eax,dword ptr [ebp+8]
 004E09F7    mov         eax,dword ptr [eax-4C]
 004E09FA    mov         dl,1
 004E09FC    mov         ecx,dword ptr [eax]
 004E09FE    call        dword ptr [ecx+3C]
 004E0A01    push        7FF8
 004E0A06    push        0
 004E0A08    call        user32.LoadBitmapA
 004E0A0D    mov         edx,eax
 004E0A0F    mov         eax,dword ptr [ebp+8]
 004E0A12    mov         eax,dword ptr [eax-4C]
 004E0A15    call        TBitmap.SetHandle
 004E0A1A    mov         eax,dword ptr [ebp+8]
 004E0A1D    mov         eax,dword ptr [eax-28]
 004E0A20    mov         eax,dword ptr [eax+0C]
 004E0A23    mov         eax,dword ptr [eax+18]
 004E0A26    mov         edx,dword ptr [ebp+8]
 004E0A29    mov         dword ptr [edx-48],eax
 004E0A2C    mov         eax,dword ptr [ebp+8]
 004E0A2F    mov         eax,dword ptr [eax-28]
 004E0A32    mov         eax,dword ptr [eax+0C]
 004E0A35    mov         edx,0FF000012
 004E0A3A    call        TFont.SetColor
 004E0A3F    mov         eax,dword ptr [ebp+8]
 004E0A42    mov         eax,dword ptr [eax-4C]
 004E0A45    push        eax
 004E0A46    mov         eax,dword ptr [ebp+8]
 004E0A49    mov         eax,dword ptr [eax-4C]
 004E0A4C    mov         edx,dword ptr [eax]
 004E0A4E    call        dword ptr [edx+20]
 004E0A51    mov         edx,dword ptr [ebp+8]
 004E0A54    mov         edx,dword ptr [edx-4]
 004E0A57    mov         ecx,dword ptr [ebp+8]
 004E0A5A    sub         edx,dword ptr [ecx-0C]
 004E0A5D    sub         edx,eax
 004E0A5F    sar         edx,1
>004E0A61    jns         004E0A66
 004E0A63    adc         edx,0
 004E0A66    mov         eax,dword ptr [ebp+8]
 004E0A69    add         edx,dword ptr [eax-0C]
 004E0A6C    inc         edx
 004E0A6D    push        edx
 004E0A6E    mov         eax,dword ptr [ebp+8]
 004E0A71    mov         eax,dword ptr [eax-4C]
 004E0A74    mov         edx,dword ptr [eax]
 004E0A76    call        dword ptr [edx+2C]
 004E0A79    mov         edx,dword ptr [ebp+8]
 004E0A7C    mov         edx,dword ptr [edx-8]
 004E0A7F    mov         ecx,dword ptr [ebp+8]
 004E0A82    sub         edx,dword ptr [ecx-10]
 004E0A85    sub         edx,eax
 004E0A87    sar         edx,1
>004E0A89    jns         004E0A8E
 004E0A8B    adc         edx,0
 004E0A8E    mov         eax,dword ptr [ebp+8]
 004E0A91    add         edx,dword ptr [eax-10]
 004E0A94    inc         edx
 004E0A95    mov         eax,dword ptr [ebp+8]
 004E0A98    mov         eax,dword ptr [eax-28]
 004E0A9B    pop         ecx
 004E0A9C    call        TCanvas.Draw
 004E0AA1    mov         eax,dword ptr [ebp+8]
 004E0AA4    mov         edx,dword ptr [eax-48]
 004E0AA7    mov         eax,dword ptr [ebp+8]
 004E0AAA    mov         eax,dword ptr [eax-28]
 004E0AAD    mov         eax,dword ptr [eax+0C]
 004E0AB0    call        TFont.SetColor
 004E0AB5    xor         eax,eax
 004E0AB7    pop         edx
 004E0AB8    pop         ecx
 004E0AB9    pop         ecx
 004E0ABA    mov         dword ptr fs:[eax],edx
 004E0ABD    push        4E0BDF
 004E0AC2    mov         eax,dword ptr [ebp+8]
 004E0AC5    mov         eax,dword ptr [eax-4C]
 004E0AC8    call        TObject.Free
 004E0ACD    ret
>004E0ACE    jmp         @HandleFinally
>004E0AD3    jmp         004E0AC2
 004E0AD5    mov         eax,dword ptr [ebp+8]
 004E0AD8    mov         edx,dword ptr [ebp+8]
 004E0ADB    lea         esi,[eax-10]
 004E0ADE    lea         edi,[edx-5C]
 004E0AE1    movs        dword ptr [edi],dword ptr [esi]
 004E0AE2    movs        dword ptr [edi],dword ptr [esi]
 004E0AE3    movs        dword ptr [edi],dword ptr [esi]
 004E0AE4    movs        dword ptr [edi],dword ptr [esi]
 004E0AE5    mov         eax,dword ptr [ebp+8]
 004E0AE8    mov         eax,dword ptr [eax-38]
 004E0AEB    mov         eax,dword ptr [eax+4C]
 004E0AEE    mov         edx,dword ptr [eax]
 004E0AF0    call        dword ptr [edx+2C]
 004E0AF3    mov         edx,dword ptr [ebp+8]
 004E0AF6    mov         edx,dword ptr [edx-8]
 004E0AF9    mov         ecx,dword ptr [ebp+8]
 004E0AFC    sub         edx,dword ptr [ecx-10]
 004E0AFF    cmp         eax,edx
>004E0B01    jge         004E0B4D
 004E0B03    mov         eax,dword ptr [ebp+8]
 004E0B06    mov         eax,dword ptr [eax-38]
 004E0B09    mov         eax,dword ptr [eax+4C]
 004E0B0C    mov         edx,dword ptr [eax]
 004E0B0E    call        dword ptr [edx+2C]
 004E0B11    mov         edx,dword ptr [ebp+8]
 004E0B14    mov         edx,dword ptr [edx-8]
 004E0B17    mov         ecx,dword ptr [ebp+8]
 004E0B1A    sub         edx,dword ptr [ecx-10]
 004E0B1D    sub         edx,eax
 004E0B1F    sar         edx,1
>004E0B21    jns         004E0B26
 004E0B23    adc         edx,0
 004E0B26    mov         eax,dword ptr [ebp+8]
 004E0B29    add         edx,dword ptr [eax-10]
 004E0B2C    inc         edx
 004E0B2D    mov         eax,dword ptr [ebp+8]
 004E0B30    mov         dword ptr [eax-10],edx
 004E0B33    mov         eax,dword ptr [ebp+8]
 004E0B36    mov         eax,dword ptr [eax-38]
 004E0B39    mov         eax,dword ptr [eax+4C]
 004E0B3C    mov         edx,dword ptr [eax]
 004E0B3E    call        dword ptr [edx+2C]
 004E0B41    mov         edx,dword ptr [ebp+8]
 004E0B44    add         eax,dword ptr [edx-10]
 004E0B47    mov         edx,dword ptr [ebp+8]
 004E0B4A    mov         dword ptr [edx-8],eax
 004E0B4D    mov         eax,dword ptr [ebp+8]
 004E0B50    mov         eax,dword ptr [eax-38]
 004E0B53    mov         eax,dword ptr [eax+4C]
 004E0B56    mov         edx,dword ptr [eax]
 004E0B58    call        dword ptr [edx+20]
 004E0B5B    mov         edx,dword ptr [ebp+8]
 004E0B5E    mov         edx,dword ptr [edx-4]
 004E0B61    mov         ecx,dword ptr [ebp+8]
 004E0B64    sub         edx,dword ptr [ecx-0C]
 004E0B67    cmp         eax,edx
>004E0B69    jge         004E0BB5
 004E0B6B    mov         eax,dword ptr [ebp+8]
 004E0B6E    mov         eax,dword ptr [eax-38]
 004E0B71    mov         eax,dword ptr [eax+4C]
 004E0B74    mov         edx,dword ptr [eax]
 004E0B76    call        dword ptr [edx+20]
 004E0B79    mov         edx,dword ptr [ebp+8]
 004E0B7C    mov         edx,dword ptr [edx-4]
 004E0B7F    mov         ecx,dword ptr [ebp+8]
 004E0B82    sub         edx,dword ptr [ecx-0C]
 004E0B85    sub         edx,eax
 004E0B87    sar         edx,1
>004E0B89    jns         004E0B8E
 004E0B8B    adc         edx,0
 004E0B8E    mov         eax,dword ptr [ebp+8]
 004E0B91    add         edx,dword ptr [eax-0C]
 004E0B94    inc         edx
 004E0B95    mov         eax,dword ptr [ebp+8]
 004E0B98    mov         dword ptr [eax-0C],edx
 004E0B9B    mov         eax,dword ptr [ebp+8]
 004E0B9E    mov         eax,dword ptr [eax-38]
 004E0BA1    mov         eax,dword ptr [eax+4C]
 004E0BA4    mov         edx,dword ptr [eax]
 004E0BA6    call        dword ptr [edx+20]
 004E0BA9    mov         edx,dword ptr [ebp+8]
 004E0BAC    add         eax,dword ptr [edx-0C]
 004E0BAF    mov         edx,dword ptr [ebp+8]
 004E0BB2    mov         dword ptr [edx-4],eax
 004E0BB5    mov         eax,dword ptr [ebp+8]
 004E0BB8    mov         eax,dword ptr [eax-38]
 004E0BBB    mov         ecx,dword ptr [eax+4C]
 004E0BBE    mov         eax,dword ptr [ebp+8]
 004E0BC1    lea         edx,[eax-10]
 004E0BC4    mov         eax,dword ptr [ebp+8]
 004E0BC7    mov         eax,dword ptr [eax-28]
 004E0BCA    call        0048800C
 004E0BCF    mov         eax,dword ptr [ebp+8]
 004E0BD2    mov         edx,dword ptr [ebp+8]
 004E0BD5    lea         esi,[eax-5C]
 004E0BD8    lea         edi,[edx-10]
 004E0BDB    movs        dword ptr [edi],dword ptr [esi]
 004E0BDC    movs        dword ptr [edi],dword ptr [esi]
 004E0BDD    movs        dword ptr [edi],dword ptr [esi]
 004E0BDE    movs        dword ptr [edi],dword ptr [esi]
 004E0BDF    mov         eax,dword ptr [ebp+8]
 004E0BE2    mov         eax,dword ptr [eax-38]
 004E0BE5    cmp         byte ptr [eax+38],0
>004E0BE9    je          004E0C56
 004E0BEB    mov         eax,dword ptr [ebp+8]
 004E0BEE    dec         dword ptr [eax-8]
 004E0BF1    mov         eax,dword ptr [ebp+8]
 004E0BF4    dec         dword ptr [eax-4]
>004E0BF7    jmp         004E0C56
 004E0BF9    mov         eax,dword ptr [ebp+8]
 004E0BFC    cmp         dword ptr [eax-40],0
>004E0C00    je          004E0C37
 004E0C02    mov         eax,dword ptr [ebp+8]
 004E0C05    cmp         byte ptr [eax+8],0
>004E0C09    jne         004E0C37
 004E0C0B    mov         eax,dword ptr [ebp+8]
 004E0C0E    mov         eax,dword ptr [eax-10]
 004E0C11    mov         edx,dword ptr [ebp+8]
 004E0C14    mov         edx,dword ptr [edx-40]
 004E0C17    add         eax,dword ptr [edx+34]
 004E0C1A    mov         edx,dword ptr [ebp+8]
 004E0C1D    mov         dword ptr [edx-8],eax
 004E0C20    mov         eax,dword ptr [ebp+8]
 004E0C23    mov         eax,dword ptr [eax-0C]
 004E0C26    mov         edx,dword ptr [ebp+8]
 004E0C29    mov         edx,dword ptr [edx-40]
 004E0C2C    add         eax,dword ptr [edx+30]
 004E0C2F    mov         edx,dword ptr [ebp+8]
 004E0C32    mov         dword ptr [edx-4],eax
>004E0C35    jmp         004E0C4F
 004E0C37    mov         eax,dword ptr [ebp+8]
 004E0C3A    mov         eax,dword ptr [eax-10]
 004E0C3D    mov         edx,dword ptr [ebp+8]
 004E0C40    mov         dword ptr [edx-8],eax
 004E0C43    mov         eax,dword ptr [ebp+8]
 004E0C46    mov         eax,dword ptr [eax-0C]
 004E0C49    mov         edx,dword ptr [ebp+8]
 004E0C4C    mov         dword ptr [edx-4],eax
 004E0C4F    mov         eax,dword ptr [ebp+8]
 004E0C52    mov         byte ptr [eax-39],0
 004E0C56    mov         eax,dword ptr [ebp+8]
 004E0C59    dec         dword ptr [eax-10]
 004E0C5C    mov         eax,dword ptr [ebp+8]
 004E0C5F    dec         dword ptr [eax-0C]
 004E0C62    mov         eax,dword ptr [ebp+8]
 004E0C65    add         dword ptr [eax-8],2
 004E0C69    mov         eax,dword ptr [ebp+8]
 004E0C6C    add         dword ptr [eax-4],2
 004E0C70    mov         eax,dword ptr [ebp+8]
 004E0C73    mov         eax,dword ptr [eax-38]
 004E0C76    cmp         byte ptr [eax+38],0
>004E0C7A    jne         004E0C8E
 004E0C7C    mov         eax,dword ptr [ebp+8]
 004E0C7F    cmp         byte ptr [eax-29],0
>004E0C83    je          004E0CC3
 004E0C85    mov         eax,dword ptr [ebp+8]
 004E0C88    cmp         byte ptr [eax-39],0
>004E0C8C    je          004E0CC3
 004E0C8E    mov         eax,dword ptr [ebp+8]
 004E0C91    cmp         byte ptr [eax-21],0
>004E0C95    jne         004E0CC3
 004E0C97    push        0F
 004E0C99    mov         eax,dword ptr [ebp+8]
 004E0C9C    mov         eax,dword ptr [eax-38]
 004E0C9F    movzx       eax,byte ptr [eax+38]
 004E0CA3    mov         eax,dword ptr [eax*4+5418A0]
 004E0CAA    push        eax
 004E0CAB    mov         eax,dword ptr [ebp+8]
 004E0CAE    add         eax,0FFFFFFF0
 004E0CB1    push        eax
 004E0CB2    mov         eax,dword ptr [ebp+8]
 004E0CB5    mov         eax,dword ptr [eax-28]
 004E0CB8    call        TCanvas.GetHandle
 004E0CBD    push        eax
 004E0CBE    call        user32.DrawEdge
 004E0CC3    mov         eax,dword ptr [ebp+8]
 004E0CC6    cmp         byte ptr [eax-29],0
>004E0CCA    je          004E0D18
 004E0CCC    mov         eax,dword ptr [ebp+8]
 004E0CCF    cmp         byte ptr [eax-39],0
>004E0CD3    je          004E0CE2
 004E0CD5    mov         eax,dword ptr [ebp+8]
 004E0CD8    mov         eax,dword ptr [eax-8]
 004E0CDB    inc         eax
 004E0CDC    mov         edx,dword ptr [ebp+8]
 004E0CDF    mov         dword ptr [edx-20],eax
 004E0CE2    mov         eax,dword ptr [ebp+8]
 004E0CE5    cmp         byte ptr [eax-5D],0
>004E0CE9    je          004E0CF4
 004E0CEB    mov         eax,dword ptr [ebp+8]
 004E0CEE    cmp         byte ptr [eax+8],0
>004E0CF2    jne         004E0D07
 004E0CF4    mov         eax,dword ptr [ebp+8]
 004E0CF7    mov         eax,dword ptr [eax-28]
 004E0CFA    mov         eax,dword ptr [eax+14]
 004E0CFD    mov         edx,0FF00000D
 004E0D02    call        TBrush.SetColor
 004E0D07    mov         eax,dword ptr [ebp+8]
 004E0D0A    lea         edx,[eax-20]
 004E0D0D    mov         eax,dword ptr [ebp+8]
 004E0D10    mov         eax,dword ptr [eax-28]
 004E0D13    call        TCanvas.FillRect
 004E0D18    mov         eax,dword ptr [ebp+8]
 004E0D1B    cmp         byte ptr [eax+8],0
>004E0D1F    je          004E0D98
 004E0D21    mov         eax,dword ptr [ebp+8]
 004E0D24    cmp         byte ptr [eax-5D],0
>004E0D28    je          004E0D98
 004E0D2A    mov         eax,dword ptr [ebp+8]
 004E0D2D    cmp         byte ptr [eax-21],0
>004E0D31    jne         004E0D98
 004E0D33    mov         eax,dword ptr [ebp+8]
 004E0D36    cmp         byte ptr [eax-29],0
>004E0D3A    je          004E0D5A
 004E0D3C    push        0F
 004E0D3E    push        2
 004E0D40    mov         eax,dword ptr [ebp+8]
 004E0D43    add         eax,0FFFFFFE0
 004E0D46    push        eax
 004E0D47    mov         eax,dword ptr [ebp+8]
 004E0D4A    mov         eax,dword ptr [eax-28]
 004E0D4D    call        TCanvas.GetHandle
 004E0D52    push        eax
 004E0D53    call        user32.DrawEdge
>004E0D58    jmp         004E0D7F
 004E0D5A    mov         eax,dword ptr [ebp+8]
 004E0D5D    test        byte ptr [eax+0C],40
>004E0D61    je          004E0D7F
 004E0D63    push        0F
 004E0D65    push        4
 004E0D67    mov         eax,dword ptr [ebp+8]
 004E0D6A    add         eax,0FFFFFFE0
 004E0D6D    push        eax
 004E0D6E    mov         eax,dword ptr [ebp+8]
 004E0D71    mov         eax,dword ptr [eax-28]
 004E0D74    call        TCanvas.GetHandle
 004E0D79    push        eax
 004E0D7A    call        user32.DrawEdge
 004E0D7F    mov         eax,dword ptr [ebp+8]
 004E0D82    cmp         byte ptr [eax-29],0
>004E0D86    jne         004E0D98
 004E0D88    push        0FF
 004E0D8A    push        0
 004E0D8C    mov         eax,dword ptr [ebp+8]
 004E0D8F    add         eax,0FFFFFFE0
 004E0D92    push        eax
 004E0D93    call        user32.OffsetRect
 004E0D98    mov         eax,dword ptr [ebp+8]
 004E0D9B    cmp         byte ptr [eax-29],0
>004E0D9F    je          004E0DAA
 004E0DA1    mov         eax,dword ptr [ebp+8]
 004E0DA4    cmp         byte ptr [eax-39],0
>004E0DA8    jne         004E0DB7
 004E0DAA    mov         eax,dword ptr [ebp+8]
 004E0DAD    mov         eax,dword ptr [eax-8]
 004E0DB0    inc         eax
 004E0DB1    mov         edx,dword ptr [ebp+8]
 004E0DB4    mov         dword ptr [edx-20],eax
 004E0DB7    mov         eax,dword ptr [ebp+8]
 004E0DBA    add         dword ptr [eax-20],2
 004E0DBE    mov         eax,dword ptr [ebp+8]
 004E0DC1    dec         dword ptr [eax-18]
 004E0DC4    mov         eax,dword ptr [ebp+8]
 004E0DC7    movzx       eax,byte ptr [eax-31]
 004E0DCB    mov         ax,word ptr [eax*2+541898]
 004E0DD3    or          ax,60
 004E0DD7    movzx       eax,ax
 004E0DDA    mov         edx,dword ptr [ebp+8]
 004E0DDD    mov         dword ptr [edx-64],eax
 004E0DE0    mov         eax,dword ptr [ebp+8]
 004E0DE3    cmp         byte ptr [eax-65],0
>004E0DE7    je          004E0DFC
 004E0DE9    mov         eax,dword ptr [ebp+8]
 004E0DEC    test        byte ptr [eax+0D],1
>004E0DF0    je          004E0DFC
 004E0DF2    mov         eax,dword ptr [ebp+8]
 004E0DF5    or          dword ptr [eax-64],100000
 004E0DFC    mov         eax,dword ptr [ebp+8]
 004E0DFF    mov         edx,dword ptr [ebp+8]
 004E0E02    lea         esi,[eax-20]
 004E0E05    lea         edi,[edx-5C]
 004E0E08    movs        dword ptr [edi],dword ptr [esi]
 004E0E09    movs        dword ptr [edi],dword ptr [esi]
 004E0E0A    movs        dword ptr [edi],dword ptr [esi]
 004E0E0B    movs        dword ptr [edi],dword ptr [esi]
 004E0E0C    mov         eax,dword ptr [ebp+8]
 004E0E0F    test        byte ptr [eax+0C],20
>004E0E13    je          004E0E29
 004E0E15    mov         eax,dword ptr [ebp+8]
 004E0E18    mov         eax,dword ptr [eax-28]
 004E0E1B    mov         eax,dword ptr [eax+0C]
 004E0E1E    mov         dl,byte ptr ds:[4E0F8C]
 004E0E24    call        TFont.SetStyle
 004E0E29    mov         eax,dword ptr [ebp+8]
 004E0E2C    add         eax,0FFFFFFE0
 004E0E2F    push        eax
 004E0E30    mov         eax,dword ptr [ebp+8]
 004E0E33    mov         al,byte ptr [eax-29]
 004E0E36    push        eax
 004E0E37    mov         eax,dword ptr [ebp+8]
 004E0E3A    mov         eax,dword ptr [eax-64]
 004E0E3D    or          eax,400
 004E0E42    or          eax,100
 004E0E47    push        eax
 004E0E48    mov         eax,dword ptr [ebp+8]
 004E0E4B    mov         eax,dword ptr [eax-38]
 004E0E4E    mov         ecx,dword ptr [eax+30]
 004E0E51    mov         eax,dword ptr [ebp+8]
 004E0E54    mov         edx,dword ptr [eax-28]
 004E0E57    mov         eax,dword ptr [ebp+8]
 004E0E5A    mov         eax,dword ptr [eax-38]
 004E0E5D    call        004E0400
 004E0E62    mov         eax,dword ptr [ebp+8]
 004E0E65    mov         eax,dword ptr [eax-50]
 004E0E68    mov         edx,dword ptr [ebp+8]
 004E0E6B    sub         eax,dword ptr [edx-58]
 004E0E6E    mov         edx,dword ptr [ebp+8]
 004E0E71    mov         edx,dword ptr [edx-14]
 004E0E74    mov         ecx,dword ptr [ebp+8]
 004E0E77    sub         edx,dword ptr [ecx-1C]
 004E0E7A    sub         eax,edx
 004E0E7C    sar         eax,1
>004E0E7E    jns         004E0E83
 004E0E80    adc         eax,0
 004E0E83    push        eax
 004E0E84    push        0
 004E0E86    mov         eax,dword ptr [ebp+8]
 004E0E89    add         eax,0FFFFFFE0
 004E0E8C    push        eax
 004E0E8D    call        user32.OffsetRect
 004E0E92    mov         eax,dword ptr [ebp+8]
 004E0E95    cmp         byte ptr [eax+8],0
>004E0E99    je          004E0EC6
 004E0E9B    mov         eax,dword ptr [ebp+8]
 004E0E9E    cmp         byte ptr [eax-29],0
>004E0EA2    je          004E0EC6
 004E0EA4    mov         eax,dword ptr [ebp+8]
 004E0EA7    cmp         byte ptr [eax-5D],0
>004E0EAB    je          004E0EC6
 004E0EAD    mov         eax,dword ptr [ebp+8]
 004E0EB0    cmp         byte ptr [eax-21],0
>004E0EB4    jne         004E0EC6
 004E0EB6    push        0
 004E0EB8    push        1
 004E0EBA    mov         eax,dword ptr [ebp+8]
 004E0EBD    add         eax,0FFFFFFE0
 004E0EC0    push        eax
 004E0EC1    call        user32.OffsetRect
 004E0EC6    mov         eax,dword ptr [ebp+8]
 004E0EC9    add         eax,0FFFFFFE0
 004E0ECC    push        eax
 004E0ECD    mov         eax,dword ptr [ebp+8]
 004E0ED0    mov         al,byte ptr [eax-29]
 004E0ED3    push        eax
 004E0ED4    mov         eax,dword ptr [ebp+8]
 004E0ED7    mov         eax,dword ptr [eax-64]
 004E0EDA    push        eax
 004E0EDB    mov         eax,dword ptr [ebp+8]
 004E0EDE    mov         eax,dword ptr [eax-38]
 004E0EE1    mov         ecx,dword ptr [eax+30]
 004E0EE4    mov         eax,dword ptr [ebp+8]
 004E0EE7    mov         edx,dword ptr [eax-28]
 004E0EEA    mov         eax,dword ptr [ebp+8]
 004E0EED    mov         eax,dword ptr [eax-38]
 004E0EF0    call        004E0400
 004E0EF5    mov         eax,dword ptr [ebp+8]
 004E0EF8    mov         eax,dword ptr [eax-38]
 004E0EFB    cmp         word ptr [eax+60],0
>004E0F00    je          004E0F5C
 004E0F02    mov         eax,dword ptr [ebp+8]
 004E0F05    cmp         byte ptr [eax+8],0
>004E0F09    jne         004E0F5C
 004E0F0B    mov         eax,dword ptr [ebp+8]
 004E0F0E    mov         eax,dword ptr [eax-18]
 004E0F11    mov         edx,dword ptr [ebp+8]
 004E0F14    mov         dword ptr [edx-20],eax
 004E0F17    mov         eax,dword ptr [ebp+8]
 004E0F1A    mov         eax,dword ptr [eax-54]
 004E0F1D    sub         eax,0A
 004E0F20    mov         edx,dword ptr [ebp+8]
 004E0F23    mov         dword ptr [edx-18],eax
 004E0F26    mov         eax,dword ptr [ebp+8]
 004E0F29    add         eax,0FFFFFFE0
 004E0F2C    push        eax
 004E0F2D    mov         eax,dword ptr [ebp+8]
 004E0F30    mov         al,byte ptr [eax-29]
 004E0F33    push        eax
 004E0F34    push        2
 004E0F36    lea         edx,[ebp-4]
 004E0F39    mov         eax,dword ptr [ebp+8]
 004E0F3C    mov         eax,dword ptr [eax-38]
 004E0F3F    mov         ax,word ptr [eax+60]
 004E0F43    call        004DF13C
 004E0F48    mov         ecx,dword ptr [ebp-4]
 004E0F4B    mov         eax,dword ptr [ebp+8]
 004E0F4E    mov         edx,dword ptr [eax-28]
 004E0F51    mov         eax,dword ptr [ebp+8]
 004E0F54    mov         eax,dword ptr [eax-38]
 004E0F57    call        004E0400
 004E0F5C    xor         eax,eax
 004E0F5E    pop         edx
 004E0F5F    pop         ecx
 004E0F60    pop         ecx
 004E0F61    mov         dword ptr fs:[eax],edx
 004E0F64    push        4E0F79
 004E0F69    lea         eax,[ebp-4]
 004E0F6C    call        @LStrClr
 004E0F71    ret
>004E0F72    jmp         @HandleFinally
>004E0F77    jmp         004E0F69
 004E0F79    pop         edi
 004E0F7A    pop         esi
 004E0F7B    pop         ecx
 004E0F7C    pop         ebp
 004E0F7D    ret
*}
end;

//004E0F90
procedure BiDiDraw;
begin
{*
 004E0F90    push        ebp
 004E0F91    mov         ebp,esp
 004E0F93    push        0
 004E0F95    push        esi
 004E0F96    push        edi
 004E0F97    xor         eax,eax
 004E0F99    push        ebp
 004E0F9A    push        4E18A2
 004E0F9F    push        dword ptr fs:[eax]
 004E0FA2    mov         dword ptr fs:[eax],esp
 004E0FA5    mov         eax,dword ptr [ebp+8]
 004E0FA8    cmp         byte ptr [eax-21],0
>004E0FAC    je          004E1004
 004E0FAE    mov         eax,dword ptr [ebp+8]
 004E0FB1    test        byte ptr [eax+0C],1
>004E0FB5    jne         004E0FC0
 004E0FB7    mov         eax,dword ptr [ebp+8]
 004E0FBA    test        byte ptr [eax+0C],40
>004E0FBE    je          004E0FE8
 004E0FC0    mov         eax,dword ptr [ebp+8]
 004E0FC3    mov         eax,dword ptr [eax-28]
 004E0FC6    mov         eax,dword ptr [eax+14]
 004E0FC9    mov         edx,0FF00001D
 004E0FCE    call        TBrush.SetColor
 004E0FD3    mov         eax,dword ptr [ebp+8]
 004E0FD6    mov         eax,dword ptr [eax-28]
 004E0FD9    mov         eax,dword ptr [eax+0C]
 004E0FDC    mov         edx,0FF00000E
 004E0FE1    call        TFont.SetColor
>004E0FE6    jmp         004E1004
 004E0FE8    mov         eax,dword ptr [ebp+8]
 004E0FEB    cmp         byte ptr [eax+8],0
>004E0FEF    je          004E1004
 004E0FF1    mov         eax,dword ptr [ebp+8]
 004E0FF4    mov         eax,dword ptr [eax-28]
 004E0FF7    mov         eax,dword ptr [eax+14]
 004E0FFA    mov         edx,0FF00001E
 004E0FFF    call        TBrush.SetColor
 004E1004    mov         eax,dword ptr [ebp+8]
 004E1007    cmp         byte ptr [eax-29],0
>004E100B    je          004E1022
 004E100D    mov         eax,dword ptr [ebp+8]
 004E1010    cmp         byte ptr [eax-21],0
>004E1014    je          004E1033
 004E1016    mov         eax,dword ptr [ebp+8]
 004E1019    mov         eax,dword ptr [eax-38]
 004E101C    cmp         byte ptr [eax+38],0
>004E1020    jne         004E1033
 004E1022    mov         eax,dword ptr [ebp+8]
 004E1025    lea         edx,[eax-20]
 004E1028    mov         eax,dword ptr [ebp+8]
 004E102B    mov         eax,dword ptr [eax-28]
 004E102E    call        TCanvas.FillRect
 004E1033    mov         eax,dword ptr [ebp+8]
 004E1036    cmp         dword ptr [eax-30],0
>004E103A    je          004E1045
 004E103C    mov         eax,dword ptr [ebp+8]
 004E103F    mov         byte ptr [eax-31],0
>004E1043    jmp         004E1072
 004E1045    mov         eax,dword ptr [ebp+8]
 004E1048    mov         eax,dword ptr [eax-30]
 004E104B    mov         edx,dword ptr ds:[4DEC6C];TPopupMenu
 004E1051    call        @IsClass
 004E1056    test        al,al
>004E1058    je          004E106B
 004E105A    mov         eax,dword ptr [ebp+8]
 004E105D    mov         eax,dword ptr [eax-30]
 004E1060    mov         al,byte ptr [eax+60]
 004E1063    mov         edx,dword ptr [ebp+8]
 004E1066    mov         byte ptr [edx-31],al
>004E1069    jmp         004E1072
 004E106B    mov         eax,dword ptr [ebp+8]
 004E106E    mov         byte ptr [eax-31],0
 004E1072    mov         eax,dword ptr [ebp+8]
 004E1075    mov         eax,dword ptr [eax-18]
 004E1078    dec         eax
 004E1079    mov         edx,dword ptr [ebp+8]
 004E107C    mov         dword ptr [edx-8],eax
 004E107F    mov         eax,dword ptr [ebp+8]
 004E1082    mov         eax,dword ptr [eax-1C]
 004E1085    inc         eax
 004E1086    mov         edx,dword ptr [ebp+8]
 004E1089    mov         dword ptr [edx-0C],eax
 004E108C    mov         eax,dword ptr [ebp+8]
 004E108F    mov         eax,dword ptr [eax-38]
 004E1092    mov         eax,dword ptr [eax+30]
 004E1095    mov         edx,4E18B8;'-'
 004E109A    call        @LStrCmp
>004E109F    jne         004E10D5
 004E10A1    mov         eax,dword ptr [ebp+8]
 004E10A4    lea         edx,[eax-20]
 004E10A7    mov         eax,dword ptr [ebp+8]
 004E10AA    mov         eax,dword ptr [eax-28]
 004E10AD    call        TCanvas.FillRect
 004E10B2    mov         eax,dword ptr [ebp+8]
 004E10B5    mov         eax,dword ptr [eax-8]
 004E10B8    add         eax,2
 004E10BB    mov         edx,dword ptr [ebp+8]
 004E10BE    mov         dword ptr [edx-10],eax
 004E10C1    mov         eax,dword ptr [ebp+8]
 004E10C4    xor         edx,edx
 004E10C6    mov         dword ptr [eax-8],edx
 004E10C9    mov         eax,dword ptr [ebp+8]
 004E10CC    mov         byte ptr [eax-39],0
>004E10D0    jmp         004E156E
 004E10D5    mov         eax,dword ptr [ebp+8]
 004E10D8    cmp         dword ptr [eax-40],0
>004E10DC    je          004E112A
 004E10DE    mov         eax,dword ptr [ebp+8]
 004E10E1    mov         eax,dword ptr [eax-38]
 004E10E4    cmp         dword ptr [eax+40],0FFFFFFFF
>004E10E8    jle         004E1100
 004E10EA    mov         eax,dword ptr [ebp+8]
 004E10ED    mov         eax,dword ptr [eax-40]
 004E10F0    call        004DCB64
 004E10F5    mov         edx,dword ptr [ebp+8]
 004E10F8    mov         edx,dword ptr [edx-38]
 004E10FB    cmp         eax,dword ptr [edx+40]
>004E10FE    jg          004E112E
 004E1100    mov         eax,dword ptr [ebp+8]
 004E1103    mov         eax,dword ptr [eax-38]
 004E1106    cmp         byte ptr [eax+38],0
>004E110A    je          004E112A
 004E110C    mov         eax,dword ptr [ebp+8]
 004E110F    mov         eax,dword ptr [eax-38]
 004E1112    cmp         dword ptr [eax+4C],0
>004E1116    je          004E112E
 004E1118    mov         eax,dword ptr [ebp+8]
 004E111B    mov         eax,dword ptr [eax-38]
 004E111E    mov         eax,dword ptr [eax+4C]
 004E1121    mov         edx,dword ptr [eax]
 004E1123    call        dword ptr [edx+1C]
 004E1126    test        al,al
>004E1128    jne         004E112E
 004E112A    xor         eax,eax
>004E112C    jmp         004E1130
 004E112E    mov         al,1
 004E1130    mov         edx,dword ptr [ebp+8]
 004E1133    mov         byte ptr [edx-41],al
 004E1136    mov         eax,dword ptr [ebp+8]
 004E1139    cmp         byte ptr [eax-41],0
>004E113D    jne         004E1165
 004E113F    mov         eax,dword ptr [ebp+8]
 004E1142    mov         eax,dword ptr [eax-38]
 004E1145    cmp         dword ptr [eax+4C],0
>004E1149    je          004E1511
 004E114F    mov         eax,dword ptr [ebp+8]
 004E1152    mov         eax,dword ptr [eax-38]
 004E1155    mov         eax,dword ptr [eax+4C]
 004E1158    mov         edx,dword ptr [eax]
 004E115A    call        dword ptr [edx+1C]
 004E115D    test        al,al
>004E115F    jne         004E1511
 004E1165    mov         eax,dword ptr [ebp+8]
 004E1168    mov         byte ptr [eax-39],1
 004E116C    mov         eax,dword ptr [ebp+8]
 004E116F    cmp         byte ptr [eax-41],0
>004E1173    je          004E11A1
 004E1175    mov         eax,dword ptr [ebp+8]
 004E1178    mov         eax,dword ptr [eax-8]
 004E117B    mov         edx,dword ptr [ebp+8]
 004E117E    mov         edx,dword ptr [edx-40]
 004E1181    sub         eax,dword ptr [edx+34]
 004E1184    mov         edx,dword ptr [ebp+8]
 004E1187    mov         dword ptr [edx-10],eax
 004E118A    mov         eax,dword ptr [ebp+8]
 004E118D    mov         eax,dword ptr [eax-0C]
 004E1190    mov         edx,dword ptr [ebp+8]
 004E1193    mov         edx,dword ptr [edx-40]
 004E1196    add         eax,dword ptr [edx+30]
 004E1199    mov         edx,dword ptr [ebp+8]
 004E119C    mov         dword ptr [edx-4],eax
>004E119F    jmp         004E11BF
 004E11A1    mov         eax,dword ptr [ebp+8]
 004E11A4    mov         eax,dword ptr [eax-8]
 004E11A7    sub         eax,10
 004E11AA    mov         edx,dword ptr [ebp+8]
 004E11AD    mov         dword ptr [edx-10],eax
 004E11B0    mov         eax,dword ptr [ebp+8]
 004E11B3    mov         eax,dword ptr [eax-0C]
 004E11B6    add         eax,10
 004E11B9    mov         edx,dword ptr [ebp+8]
 004E11BC    mov         dword ptr [edx-4],eax
 004E11BF    mov         eax,dword ptr [ebp+8]
 004E11C2    mov         eax,dword ptr [eax-38]
 004E11C5    cmp         byte ptr [eax+38],0
>004E11C9    je          004E1282
 004E11CF    mov         eax,dword ptr [ebp+8]
 004E11D2    dec         dword ptr [eax-10]
 004E11D5    mov         eax,dword ptr [ebp+8]
 004E11D8    inc         dword ptr [eax-4]
 004E11DB    mov         eax,dword ptr [ebp+8]
 004E11DE    mov         eax,dword ptr [eax-28]
 004E11E1    mov         eax,dword ptr [eax+14]
 004E11E4    call        TBrush.GetColor
 004E11E9    mov         edx,dword ptr [ebp+8]
 004E11EC    mov         dword ptr [edx-48],eax
 004E11EF    mov         eax,dword ptr [ebp+8]
 004E11F2    test        byte ptr [eax+0C],1
>004E11F6    jne         004E123E
 004E11F8    mov         eax,dword ptr [ebp+8]
 004E11FB    mov         eax,dword ptr [eax-28]
 004E11FE    mov         eax,dword ptr [eax+14]
 004E1201    call        TBrush.GetColor
 004E1206    mov         edx,dword ptr [ebp+8]
 004E1209    mov         dword ptr [edx-48],eax
 004E120C    mov         edx,0FF000014
 004E1211    mov         eax,0FF00000F
 004E1216    call        0048FA88
 004E121B    mov         edx,eax
 004E121D    mov         eax,dword ptr [ebp+8]
 004E1220    mov         eax,dword ptr [eax-28]
 004E1223    mov         eax,dword ptr [eax+14]
 004E1226    call        0048775C
 004E122B    mov         eax,dword ptr [ebp+8]
 004E122E    lea         edx,[eax-10]
 004E1231    mov         eax,dword ptr [ebp+8]
 004E1234    mov         eax,dword ptr [eax-28]
 004E1237    call        TCanvas.FillRect
>004E123C    jmp         004E1262
 004E123E    mov         eax,dword ptr [ebp+8]
 004E1241    mov         eax,dword ptr [eax-28]
 004E1244    mov         eax,dword ptr [eax+14]
 004E1247    mov         edx,0FF00000F
 004E124C    call        TBrush.SetColor
 004E1251    mov         eax,dword ptr [ebp+8]
 004E1254    lea         edx,[eax-10]
 004E1257    mov         eax,dword ptr [ebp+8]
 004E125A    mov         eax,dword ptr [eax-28]
 004E125D    call        TCanvas.FillRect
 004E1262    mov         eax,dword ptr [ebp+8]
 004E1265    mov         edx,dword ptr [eax-48]
 004E1268    mov         eax,dword ptr [ebp+8]
 004E126B    mov         eax,dword ptr [eax-28]
 004E126E    mov         eax,dword ptr [eax+14]
 004E1271    call        TBrush.SetColor
 004E1276    mov         eax,dword ptr [ebp+8]
 004E1279    dec         dword ptr [eax-8]
 004E127C    mov         eax,dword ptr [ebp+8]
 004E127F    inc         dword ptr [eax-0C]
 004E1282    mov         eax,dword ptr [ebp+8]
 004E1285    cmp         byte ptr [eax-41],0
>004E1289    je          004E13E9
 004E128F    mov         eax,dword ptr [ebp+8]
 004E1292    mov         eax,dword ptr [eax-38]
 004E1295    cmp         dword ptr [eax+40],0FFFFFFFF
>004E1299    jle         004E12E8
 004E129B    mov         eax,dword ptr [ebp+8]
 004E129E    mov         eax,dword ptr [eax-40]
 004E12A1    call        004DCB64
 004E12A6    mov         edx,dword ptr [ebp+8]
 004E12A9    mov         edx,dword ptr [edx-38]
 004E12AC    cmp         eax,dword ptr [edx+40]
>004E12AF    jle         004E12E8
 004E12B1    mov         eax,dword ptr [ebp+8]
 004E12B4    mov         eax,dword ptr [eax-0C]
 004E12B7    push        eax
 004E12B8    mov         eax,dword ptr [ebp+8]
 004E12BB    mov         eax,dword ptr [eax-38]
 004E12BE    mov         eax,dword ptr [eax+40]
 004E12C1    push        eax
 004E12C2    mov         eax,dword ptr [ebp+8]
 004E12C5    mov         eax,dword ptr [eax-38]
 004E12C8    mov         al,byte ptr [eax+39]
 004E12CB    push        eax
 004E12CC    mov         eax,dword ptr [ebp+8]
 004E12CF    mov         ecx,dword ptr [eax-10]
 004E12D2    mov         eax,dword ptr [ebp+8]
 004E12D5    mov         edx,dword ptr [eax-28]
 004E12D8    mov         eax,dword ptr [ebp+8]
 004E12DB    mov         eax,dword ptr [eax-40]
 004E12DE    call        004DD138
>004E12E3    jmp         004E14F7
 004E12E8    mov         dl,1
 004E12EA    mov         eax,[00485C6C];TBitmap
 004E12EF    call        TBitmap.Create
 004E12F4    mov         edx,dword ptr [ebp+8]
 004E12F7    mov         dword ptr [edx-4C],eax
 004E12FA    xor         eax,eax
 004E12FC    push        ebp
 004E12FD    push        4E13E2
 004E1302    push        dword ptr fs:[eax]
 004E1305    mov         dword ptr fs:[eax],esp
 004E1308    mov         eax,dword ptr [ebp+8]
 004E130B    mov         eax,dword ptr [eax-4C]
 004E130E    mov         dl,1
 004E1310    mov         ecx,dword ptr [eax]
 004E1312    call        dword ptr [ecx+3C]
 004E1315    push        7FF8
 004E131A    push        0
 004E131C    call        user32.LoadBitmapA
 004E1321    mov         edx,eax
 004E1323    mov         eax,dword ptr [ebp+8]
 004E1326    mov         eax,dword ptr [eax-4C]
 004E1329    call        TBitmap.SetHandle
 004E132E    mov         eax,dword ptr [ebp+8]
 004E1331    mov         eax,dword ptr [eax-28]
 004E1334    mov         eax,dword ptr [eax+0C]
 004E1337    mov         eax,dword ptr [eax+18]
 004E133A    mov         edx,dword ptr [ebp+8]
 004E133D    mov         dword ptr [edx-48],eax
 004E1340    mov         eax,dword ptr [ebp+8]
 004E1343    mov         eax,dword ptr [eax-28]
 004E1346    mov         eax,dword ptr [eax+0C]
 004E1349    mov         edx,0FF000012
 004E134E    call        TFont.SetColor
 004E1353    mov         eax,dword ptr [ebp+8]
 004E1356    mov         eax,dword ptr [eax-4C]
 004E1359    push        eax
 004E135A    mov         eax,dword ptr [ebp+8]
 004E135D    mov         eax,dword ptr [eax-4C]
 004E1360    mov         edx,dword ptr [eax]
 004E1362    call        dword ptr [edx+20]
 004E1365    mov         edx,dword ptr [ebp+8]
 004E1368    mov         edx,dword ptr [edx-4]
 004E136B    mov         ecx,dword ptr [ebp+8]
 004E136E    sub         edx,dword ptr [ecx-0C]
 004E1371    sub         edx,eax
 004E1373    sar         edx,1
>004E1375    jns         004E137A
 004E1377    adc         edx,0
 004E137A    mov         eax,dword ptr [ebp+8]
 004E137D    add         edx,dword ptr [eax-0C]
 004E1380    inc         edx
 004E1381    push        edx
 004E1382    mov         eax,dword ptr [ebp+8]
 004E1385    mov         eax,dword ptr [eax-4C]
 004E1388    mov         edx,dword ptr [eax]
 004E138A    call        dword ptr [edx+2C]
 004E138D    mov         edx,dword ptr [ebp+8]
 004E1390    mov         edx,dword ptr [edx-8]
 004E1393    mov         ecx,dword ptr [ebp+8]
 004E1396    sub         edx,dword ptr [ecx-10]
 004E1399    sub         edx,eax
 004E139B    sar         edx,1
>004E139D    jns         004E13A2
 004E139F    adc         edx,0
 004E13A2    mov         eax,dword ptr [ebp+8]
 004E13A5    add         edx,dword ptr [eax-10]
 004E13A8    inc         edx
 004E13A9    mov         eax,dword ptr [ebp+8]
 004E13AC    mov         eax,dword ptr [eax-28]
 004E13AF    pop         ecx
 004E13B0    call        TCanvas.Draw
 004E13B5    mov         eax,dword ptr [ebp+8]
 004E13B8    mov         edx,dword ptr [eax-48]
 004E13BB    mov         eax,dword ptr [ebp+8]
 004E13BE    mov         eax,dword ptr [eax-28]
 004E13C1    mov         eax,dword ptr [eax+0C]
 004E13C4    call        TFont.SetColor
 004E13C9    xor         eax,eax
 004E13CB    pop         edx
 004E13CC    pop         ecx
 004E13CD    pop         ecx
 004E13CE    mov         dword ptr fs:[eax],edx
 004E13D1    push        4E14F7
 004E13D6    mov         eax,dword ptr [ebp+8]
 004E13D9    mov         eax,dword ptr [eax-4C]
 004E13DC    call        TObject.Free
 004E13E1    ret
>004E13E2    jmp         @HandleFinally
>004E13E7    jmp         004E13D6
 004E13E9    mov         eax,dword ptr [ebp+8]
 004E13EC    mov         edx,dword ptr [ebp+8]
 004E13EF    lea         esi,[eax-10]
 004E13F2    lea         edi,[edx-5C]
 004E13F5    movs        dword ptr [edi],dword ptr [esi]
 004E13F6    movs        dword ptr [edi],dword ptr [esi]
 004E13F7    movs        dword ptr [edi],dword ptr [esi]
 004E13F8    movs        dword ptr [edi],dword ptr [esi]
 004E13F9    mov         eax,dword ptr [ebp+8]
 004E13FC    mov         eax,dword ptr [eax-38]
 004E13FF    mov         eax,dword ptr [eax+4C]
 004E1402    mov         edx,dword ptr [eax]
 004E1404    call        dword ptr [edx+2C]
 004E1407    mov         edx,dword ptr [ebp+8]
 004E140A    mov         edx,dword ptr [edx-8]
 004E140D    mov         ecx,dword ptr [ebp+8]
 004E1410    sub         edx,dword ptr [ecx-10]
 004E1413    cmp         eax,edx
>004E1415    jge         004E1465
 004E1417    mov         eax,dword ptr [ebp+8]
 004E141A    mov         eax,dword ptr [eax-38]
 004E141D    mov         eax,dword ptr [eax+4C]
 004E1420    mov         edx,dword ptr [eax]
 004E1422    call        dword ptr [edx+2C]
 004E1425    mov         edx,dword ptr [ebp+8]
 004E1428    mov         edx,dword ptr [edx-8]
 004E142B    mov         ecx,dword ptr [ebp+8]
 004E142E    sub         edx,dword ptr [ecx-10]
 004E1431    sub         edx,eax
 004E1433    sar         edx,1
>004E1435    jns         004E143A
 004E1437    adc         edx,0
 004E143A    mov         eax,dword ptr [ebp+8]
 004E143D    mov         eax,dword ptr [eax-8]
 004E1440    sub         eax,edx
 004E1442    inc         eax
 004E1443    mov         edx,dword ptr [ebp+8]
 004E1446    mov         dword ptr [edx-8],eax
 004E1449    mov         eax,dword ptr [ebp+8]
 004E144C    mov         eax,dword ptr [eax-38]
 004E144F    mov         eax,dword ptr [eax+4C]
 004E1452    mov         edx,dword ptr [eax]
 004E1454    call        dword ptr [edx+2C]
 004E1457    mov         edx,dword ptr [ebp+8]
 004E145A    mov         edx,dword ptr [edx-8]
 004E145D    sub         edx,eax
 004E145F    mov         eax,dword ptr [ebp+8]
 004E1462    mov         dword ptr [eax-10],edx
 004E1465    mov         eax,dword ptr [ebp+8]
 004E1468    mov         eax,dword ptr [eax-38]
 004E146B    mov         eax,dword ptr [eax+4C]
 004E146E    mov         edx,dword ptr [eax]
 004E1470    call        dword ptr [edx+20]
 004E1473    mov         edx,dword ptr [ebp+8]
 004E1476    mov         edx,dword ptr [edx-4]
 004E1479    mov         ecx,dword ptr [ebp+8]
 004E147C    sub         edx,dword ptr [ecx-0C]
 004E147F    cmp         eax,edx
>004E1481    jge         004E14CD
 004E1483    mov         eax,dword ptr [ebp+8]
 004E1486    mov         eax,dword ptr [eax-38]
 004E1489    mov         eax,dword ptr [eax+4C]
 004E148C    mov         edx,dword ptr [eax]
 004E148E    call        dword ptr [edx+20]
 004E1491    mov         edx,dword ptr [ebp+8]
 004E1494    mov         edx,dword ptr [edx-4]
 004E1497    mov         ecx,dword ptr [ebp+8]
 004E149A    sub         edx,dword ptr [ecx-0C]
 004E149D    sub         edx,eax
 004E149F    sar         edx,1
>004E14A1    jns         004E14A6
 004E14A3    adc         edx,0
 004E14A6    mov         eax,dword ptr [ebp+8]
 004E14A9    add         edx,dword ptr [eax-0C]
 004E14AC    inc         edx
 004E14AD    mov         eax,dword ptr [ebp+8]
 004E14B0    mov         dword ptr [eax-0C],edx
 004E14B3    mov         eax,dword ptr [ebp+8]
 004E14B6    mov         eax,dword ptr [eax-38]
 004E14B9    mov         eax,dword ptr [eax+4C]
 004E14BC    mov         edx,dword ptr [eax]
 004E14BE    call        dword ptr [edx+20]
 004E14C1    mov         edx,dword ptr [ebp+8]
 004E14C4    add         eax,dword ptr [edx-0C]
 004E14C7    mov         edx,dword ptr [ebp+8]
 004E14CA    mov         dword ptr [edx-4],eax
 004E14CD    mov         eax,dword ptr [ebp+8]
 004E14D0    mov         eax,dword ptr [eax-38]
 004E14D3    mov         ecx,dword ptr [eax+4C]
 004E14D6    mov         eax,dword ptr [ebp+8]
 004E14D9    lea         edx,[eax-10]
 004E14DC    mov         eax,dword ptr [ebp+8]
 004E14DF    mov         eax,dword ptr [eax-28]
 004E14E2    call        0048800C
 004E14E7    mov         eax,dword ptr [ebp+8]
 004E14EA    mov         edx,dword ptr [ebp+8]
 004E14ED    lea         esi,[eax-5C]
 004E14F0    lea         edi,[edx-10]
 004E14F3    movs        dword ptr [edi],dword ptr [esi]
 004E14F4    movs        dword ptr [edi],dword ptr [esi]
 004E14F5    movs        dword ptr [edi],dword ptr [esi]
 004E14F6    movs        dword ptr [edi],dword ptr [esi]
 004E14F7    mov         eax,dword ptr [ebp+8]
 004E14FA    mov         eax,dword ptr [eax-38]
 004E14FD    cmp         byte ptr [eax+38],0
>004E1501    je          004E156E
 004E1503    mov         eax,dword ptr [ebp+8]
 004E1506    dec         dword ptr [eax-8]
 004E1509    mov         eax,dword ptr [ebp+8]
 004E150C    dec         dword ptr [eax-4]
>004E150F    jmp         004E156E
 004E1511    mov         eax,dword ptr [ebp+8]
 004E1514    cmp         dword ptr [eax-40],0
>004E1518    je          004E154F
 004E151A    mov         eax,dword ptr [ebp+8]
 004E151D    cmp         byte ptr [eax+8],0
>004E1521    jne         004E154F
 004E1523    mov         eax,dword ptr [ebp+8]
 004E1526    mov         eax,dword ptr [eax-8]
 004E1529    mov         edx,dword ptr [ebp+8]
 004E152C    mov         edx,dword ptr [edx-40]
 004E152F    sub         eax,dword ptr [edx+34]
 004E1532    mov         edx,dword ptr [ebp+8]
 004E1535    mov         dword ptr [edx-10],eax
 004E1538    mov         eax,dword ptr [ebp+8]
 004E153B    mov         eax,dword ptr [eax-0C]
 004E153E    mov         edx,dword ptr [ebp+8]
 004E1541    mov         edx,dword ptr [edx-40]
 004E1544    add         eax,dword ptr [edx+30]
 004E1547    mov         edx,dword ptr [ebp+8]
 004E154A    mov         dword ptr [edx-4],eax
>004E154D    jmp         004E1567
 004E154F    mov         eax,dword ptr [ebp+8]
 004E1552    mov         eax,dword ptr [eax-8]
 004E1555    mov         edx,dword ptr [ebp+8]
 004E1558    mov         dword ptr [edx-10],eax
 004E155B    mov         eax,dword ptr [ebp+8]
 004E155E    mov         eax,dword ptr [eax-0C]
 004E1561    mov         edx,dword ptr [ebp+8]
 004E1564    mov         dword ptr [edx-4],eax
 004E1567    mov         eax,dword ptr [ebp+8]
 004E156A    mov         byte ptr [eax-39],0
 004E156E    mov         eax,dword ptr [ebp+8]
 004E1571    dec         dword ptr [eax-10]
 004E1574    mov         eax,dword ptr [ebp+8]
 004E1577    dec         dword ptr [eax-0C]
 004E157A    mov         eax,dword ptr [ebp+8]
 004E157D    add         dword ptr [eax-8],2
 004E1581    mov         eax,dword ptr [ebp+8]
 004E1584    add         dword ptr [eax-4],2
 004E1588    mov         eax,dword ptr [ebp+8]
 004E158B    mov         eax,dword ptr [eax-38]
 004E158E    cmp         byte ptr [eax+38],0
>004E1592    jne         004E15AF
 004E1594    mov         eax,dword ptr [ebp+8]
 004E1597    cmp         byte ptr [eax-29],0
>004E159B    je          004E15DB
 004E159D    mov         eax,dword ptr [ebp+8]
 004E15A0    cmp         byte ptr [eax-39],0
>004E15A4    je          004E15DB
 004E15A6    mov         eax,dword ptr [ebp+8]
 004E15A9    cmp         byte ptr [eax-21],0
>004E15AD    jne         004E15DB
 004E15AF    push        0F
 004E15B1    mov         eax,dword ptr [ebp+8]
 004E15B4    mov         eax,dword ptr [eax-38]
 004E15B7    movzx       eax,byte ptr [eax+38]
 004E15BB    mov         eax,dword ptr [eax*4+5418A0]
 004E15C2    push        eax
 004E15C3    mov         eax,dword ptr [ebp+8]
 004E15C6    add         eax,0FFFFFFF0
 004E15C9    push        eax
 004E15CA    mov         eax,dword ptr [ebp+8]
 004E15CD    mov         eax,dword ptr [eax-28]
 004E15D0    call        TCanvas.GetHandle
 004E15D5    push        eax
 004E15D6    call        user32.DrawEdge
 004E15DB    mov         eax,dword ptr [ebp+8]
 004E15DE    cmp         byte ptr [eax-29],0
>004E15E2    je          004E1630
 004E15E4    mov         eax,dword ptr [ebp+8]
 004E15E7    cmp         byte ptr [eax-39],0
>004E15EB    je          004E15FA
 004E15ED    mov         eax,dword ptr [ebp+8]
 004E15F0    mov         eax,dword ptr [eax-10]
 004E15F3    dec         eax
 004E15F4    mov         edx,dword ptr [ebp+8]
 004E15F7    mov         dword ptr [edx-18],eax
 004E15FA    mov         eax,dword ptr [ebp+8]
 004E15FD    cmp         byte ptr [eax-5D],0
>004E1601    je          004E160C
 004E1603    mov         eax,dword ptr [ebp+8]
 004E1606    cmp         byte ptr [eax+8],0
>004E160A    jne         004E161F
 004E160C    mov         eax,dword ptr [ebp+8]
 004E160F    mov         eax,dword ptr [eax-28]
 004E1612    mov         eax,dword ptr [eax+14]
 004E1615    mov         edx,0FF00000D
 004E161A    call        TBrush.SetColor
 004E161F    mov         eax,dword ptr [ebp+8]
 004E1622    lea         edx,[eax-20]
 004E1625    mov         eax,dword ptr [ebp+8]
 004E1628    mov         eax,dword ptr [eax-28]
 004E162B    call        TCanvas.FillRect
 004E1630    mov         eax,dword ptr [ebp+8]
 004E1633    cmp         byte ptr [eax+8],0
>004E1637    je          004E16B0
 004E1639    mov         eax,dword ptr [ebp+8]
 004E163C    cmp         byte ptr [eax-5D],0
>004E1640    je          004E16B0
 004E1642    mov         eax,dword ptr [ebp+8]
 004E1645    cmp         byte ptr [eax-21],0
>004E1649    jne         004E16B0
 004E164B    mov         eax,dword ptr [ebp+8]
 004E164E    cmp         byte ptr [eax-29],0
>004E1652    je          004E1672
 004E1654    push        0F
 004E1656    push        2
 004E1658    mov         eax,dword ptr [ebp+8]
 004E165B    add         eax,0FFFFFFE0
 004E165E    push        eax
 004E165F    mov         eax,dword ptr [ebp+8]
 004E1662    mov         eax,dword ptr [eax-28]
 004E1665    call        TCanvas.GetHandle
 004E166A    push        eax
 004E166B    call        user32.DrawEdge
>004E1670    jmp         004E1697
 004E1672    mov         eax,dword ptr [ebp+8]
 004E1675    test        byte ptr [eax+0C],40
>004E1679    je          004E1697
 004E167B    push        0F
 004E167D    push        4
 004E167F    mov         eax,dword ptr [ebp+8]
 004E1682    add         eax,0FFFFFFE0
 004E1685    push        eax
 004E1686    mov         eax,dword ptr [ebp+8]
 004E1689    mov         eax,dword ptr [eax-28]
 004E168C    call        TCanvas.GetHandle
 004E1691    push        eax
 004E1692    call        user32.DrawEdge
 004E1697    mov         eax,dword ptr [ebp+8]
 004E169A    cmp         byte ptr [eax-29],0
>004E169E    jne         004E16B0
 004E16A0    push        0FF
 004E16A2    push        0
 004E16A4    mov         eax,dword ptr [ebp+8]
 004E16A7    add         eax,0FFFFFFE0
 004E16AA    push        eax
 004E16AB    call        user32.OffsetRect
 004E16B0    mov         eax,dword ptr [ebp+8]
 004E16B3    cmp         byte ptr [eax-29],0
>004E16B7    je          004E16C2
 004E16B9    mov         eax,dword ptr [ebp+8]
 004E16BC    cmp         byte ptr [eax-39],0
>004E16C0    jne         004E16CF
 004E16C2    mov         eax,dword ptr [ebp+8]
 004E16C5    mov         eax,dword ptr [eax-10]
 004E16C8    dec         eax
 004E16C9    mov         edx,dword ptr [ebp+8]
 004E16CC    mov         dword ptr [edx-18],eax
 004E16CF    mov         eax,dword ptr [ebp+8]
 004E16D2    add         dword ptr [eax-20],2
 004E16D6    mov         eax,dword ptr [ebp+8]
 004E16D9    dec         dword ptr [eax-18]
 004E16DC    mov         eax,dword ptr [ebp+8]
 004E16DF    movzx       eax,byte ptr [eax-31]
 004E16E3    mov         ax,word ptr [eax*2+541898]
 004E16EB    or          ax,60
 004E16EF    movzx       eax,ax
 004E16F2    mov         edx,dword ptr [ebp+8]
 004E16F5    mov         dword ptr [edx-64],eax
 004E16F8    mov         eax,dword ptr [ebp+8]
 004E16FB    cmp         byte ptr [eax-65],0
>004E16FF    je          004E1714
 004E1701    mov         eax,dword ptr [ebp+8]
 004E1704    test        byte ptr [eax+0D],1
>004E1708    je          004E1714
 004E170A    mov         eax,dword ptr [ebp+8]
 004E170D    or          dword ptr [eax-64],100000
 004E1714    mov         eax,dword ptr [ebp+8]
 004E1717    mov         edx,dword ptr [ebp+8]
 004E171A    lea         esi,[eax-20]
 004E171D    lea         edi,[edx-5C]
 004E1720    movs        dword ptr [edi],dword ptr [esi]
 004E1721    movs        dword ptr [edi],dword ptr [esi]
 004E1722    movs        dword ptr [edi],dword ptr [esi]
 004E1723    movs        dword ptr [edi],dword ptr [esi]
 004E1724    mov         eax,dword ptr [ebp+8]
 004E1727    test        byte ptr [eax+0C],20
>004E172B    je          004E1741
 004E172D    mov         eax,dword ptr [ebp+8]
 004E1730    mov         eax,dword ptr [eax-28]
 004E1733    mov         eax,dword ptr [eax+0C]
 004E1736    mov         dl,byte ptr ds:[4E18BC]
 004E173C    call        TFont.SetStyle
 004E1741    mov         eax,dword ptr [ebp+8]
 004E1744    add         eax,0FFFFFFE0
 004E1747    push        eax
 004E1748    mov         eax,dword ptr [ebp+8]
 004E174B    mov         al,byte ptr [eax-29]
 004E174E    push        eax
 004E174F    mov         eax,dword ptr [ebp+8]
 004E1752    mov         eax,dword ptr [eax-64]
 004E1755    or          eax,400
 004E175A    or          eax,100
 004E175F    push        eax
 004E1760    mov         eax,dword ptr [ebp+8]
 004E1763    mov         eax,dword ptr [eax-38]
 004E1766    mov         ecx,dword ptr [eax+30]
 004E1769    mov         eax,dword ptr [ebp+8]
 004E176C    mov         edx,dword ptr [eax-28]
 004E176F    mov         eax,dword ptr [ebp+8]
 004E1772    mov         eax,dword ptr [eax-38]
 004E1775    call        004E0400
 004E177A    mov         eax,dword ptr [ebp+8]
 004E177D    mov         eax,dword ptr [eax-5C]
 004E1780    mov         edx,dword ptr [ebp+8]
 004E1783    mov         dword ptr [edx-20],eax
 004E1786    mov         eax,dword ptr [ebp+8]
 004E1789    mov         eax,dword ptr [eax-54]
 004E178C    mov         edx,dword ptr [ebp+8]
 004E178F    mov         dword ptr [edx-18],eax
 004E1792    mov         eax,dword ptr [ebp+8]
 004E1795    mov         eax,dword ptr [eax-50]
 004E1798    mov         edx,dword ptr [ebp+8]
 004E179B    sub         eax,dword ptr [edx-58]
 004E179E    mov         edx,dword ptr [ebp+8]
 004E17A1    mov         edx,dword ptr [edx-14]
 004E17A4    mov         ecx,dword ptr [ebp+8]
 004E17A7    sub         edx,dword ptr [ecx-1C]
 004E17AA    sub         eax,edx
 004E17AC    sar         eax,1
>004E17AE    jns         004E17B3
 004E17B0    adc         eax,0
 004E17B3    push        eax
 004E17B4    push        0
 004E17B6    mov         eax,dword ptr [ebp+8]
 004E17B9    add         eax,0FFFFFFE0
 004E17BC    push        eax
 004E17BD    call        user32.OffsetRect
 004E17C2    mov         eax,dword ptr [ebp+8]
 004E17C5    cmp         byte ptr [eax+8],0
>004E17C9    je          004E17ED
 004E17CB    mov         eax,dword ptr [ebp+8]
 004E17CE    cmp         byte ptr [eax-29],0
>004E17D2    je          004E17ED
 004E17D4    mov         eax,dword ptr [ebp+8]
 004E17D7    cmp         byte ptr [eax-5D],0
>004E17DB    je          004E17ED
 004E17DD    push        0
 004E17DF    push        1
 004E17E1    mov         eax,dword ptr [ebp+8]
 004E17E4    add         eax,0FFFFFFE0
 004E17E7    push        eax
 004E17E8    call        user32.OffsetRect
 004E17ED    mov         eax,dword ptr [ebp+8]
 004E17F0    add         eax,0FFFFFFE0
 004E17F3    push        eax
 004E17F4    mov         eax,dword ptr [ebp+8]
 004E17F7    mov         al,byte ptr [eax-29]
 004E17FA    push        eax
 004E17FB    mov         eax,dword ptr [ebp+8]
 004E17FE    mov         eax,dword ptr [eax-64]
 004E1801    push        eax
 004E1802    mov         eax,dword ptr [ebp+8]
 004E1805    mov         eax,dword ptr [eax-38]
 004E1808    mov         ecx,dword ptr [eax+30]
 004E180B    mov         eax,dword ptr [ebp+8]
 004E180E    mov         edx,dword ptr [eax-28]
 004E1811    mov         eax,dword ptr [ebp+8]
 004E1814    mov         eax,dword ptr [eax-38]
 004E1817    call        004E0400
 004E181C    mov         eax,dword ptr [ebp+8]
 004E181F    mov         eax,dword ptr [eax-38]
 004E1822    cmp         word ptr [eax+60],0
>004E1827    je          004E188C
 004E1829    mov         eax,dword ptr [ebp+8]
 004E182C    cmp         byte ptr [eax+8],0
>004E1830    jne         004E188C
 004E1832    lea         edx,[ebp-4]
 004E1835    mov         eax,dword ptr [ebp+8]
 004E1838    mov         eax,dword ptr [eax-38]
 004E183B    mov         ax,word ptr [eax+60]
 004E183F    call        004DF13C
 004E1844    mov         eax,dword ptr [ebp+8]
 004E1847    mov         dword ptr [eax-20],0A
 004E184E    mov         eax,dword ptr [ebp+8]
 004E1851    mov         eax,dword ptr [eax-28]
 004E1854    mov         edx,dword ptr [ebp-4]
 004E1857    call        TCanvas.TextWidth
 004E185C    mov         edx,dword ptr [ebp+8]
 004E185F    add         eax,dword ptr [edx-20]
 004E1862    mov         edx,dword ptr [ebp+8]
 004E1865    mov         dword ptr [edx-18],eax
 004E1868    mov         eax,dword ptr [ebp+8]
 004E186B    add         eax,0FFFFFFE0
 004E186E    push        eax
 004E186F    mov         eax,dword ptr [ebp+8]
 004E1872    mov         al,byte ptr [eax-29]
 004E1875    push        eax
 004E1876    push        2
 004E1878    mov         eax,dword ptr [ebp+8]
 004E187B    mov         edx,dword ptr [eax-28]
 004E187E    mov         eax,dword ptr [ebp+8]
 004E1881    mov         eax,dword ptr [eax-38]
 004E1884    mov         ecx,dword ptr [ebp-4]
 004E1887    call        004E0400
 004E188C    xor         eax,eax
 004E188E    pop         edx
 004E188F    pop         ecx
 004E1890    pop         ecx
 004E1891    mov         dword ptr fs:[eax],edx
 004E1894    push        4E18A9
 004E1899    lea         eax,[ebp-4]
 004E189C    call        @LStrClr
 004E18A1    ret
>004E18A2    jmp         @HandleFinally
>004E18A7    jmp         004E1899
 004E18A9    pop         edi
 004E18AA    pop         esi
 004E18AB    pop         ecx
 004E18AC    pop         ebp
 004E18AD    ret
*}
end;

//004E18C0
procedure TMenuItem.AdvancedDrawItem(ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState; TopLevel:Boolean);
begin
{*
 004E18C0    push        ebp
 004E18C1    mov         ebp,esp
 004E18C3    add         esp,0FFFFFF98
 004E18C6    push        ebx
 004E18C7    push        esi
 004E18C8    push        edi
 004E18C9    mov         esi,ecx
 004E18CB    lea         edi,[ebp-20]
 004E18CE    movs        dword ptr [edi],dword ptr [esi]
 004E18CF    movs        dword ptr [edi],dword ptr [esi]
 004E18D0    movs        dword ptr [edi],dword ptr [esi]
 004E18D1    movs        dword ptr [edi],dword ptr [esi]
 004E18D2    mov         dword ptr [ebp-28],edx
 004E18D5    mov         dword ptr [ebp-38],eax
 004E18D8    mov         eax,dword ptr [ebp-38]
 004E18DB    call        TMenuItem.GetParentMenu
 004E18E0    mov         dword ptr [ebp-30],eax
 004E18E3    mov         eax,dword ptr [ebp-38]
 004E18E6    call        TMenuItem.GetImageList
 004E18EB    mov         dword ptr [ebp-40],eax
 004E18EE    test        byte ptr [ebp+0C],1
 004E18F2    setne       al
 004E18F5    mov         byte ptr [ebp-29],al
 004E18F8    mov         eax,[0055B2A4];^gvar_00540938
 004E18FD    cmp         dword ptr [eax],4
>004E1900    jg          004E191A
 004E1902    mov         eax,[0055B2A4];^gvar_00540938
 004E1907    cmp         dword ptr [eax],4
>004E190A    jne         004E1916
 004E190C    mov         eax,[0055B544];^gvar_0054093C
 004E1911    cmp         dword ptr [eax],0
>004E1914    jg          004E191A
 004E1916    xor         eax,eax
>004E1918    jmp         004E191C
 004E191A    mov         al,1
 004E191C    mov         byte ptr [ebp-5D],al
 004E191F    mov         eax,[0055B2A4];^gvar_00540938
 004E1924    cmp         dword ptr [eax],4
>004E1927    jle         004E1933
 004E1929    mov         eax,[0055B700];^gvar_00540934
 004E192E    cmp         dword ptr [eax],2
>004E1931    je          004E1937
 004E1933    xor         eax,eax
>004E1935    jmp         004E1939
 004E1937    mov         al,1
 004E1939    mov         byte ptr [ebp-65],al
 004E193C    mov         eax,[0055B2A4];^gvar_00540938
 004E1941    cmp         dword ptr [eax],5
>004E1944    jl          004E1950
 004E1946    mov         eax,[0055B544];^gvar_0054093C
 004E194B    cmp         dword ptr [eax],1
>004E194E    jge         004E1954
 004E1950    xor         eax,eax
>004E1952    jmp         004E1956
 004E1954    mov         al,1
 004E1956    mov         byte ptr [ebp-21],al
 004E1959    cmp         dword ptr [ebp-30],0
>004E195D    je          004E19C7
 004E195F    mov         eax,dword ptr [ebp-30]
 004E1962    cmp         byte ptr [eax+40],0
>004E1966    jne         004E196E
 004E1968    cmp         dword ptr [ebp-40],0
>004E196C    je          004E19C7
 004E196E    mov         eax,dword ptr [ebp-38]
 004E1971    cmp         word ptr [eax+9A],0
>004E1979    jne         004E1988
 004E197B    mov         eax,dword ptr [ebp-38]
 004E197E    cmp         word ptr [eax+92],0
>004E1986    je          004E19C7
 004E1988    mov         al,byte ptr [ebp-29]
 004E198B    push        eax
 004E198C    lea         ecx,[ebp-20]
 004E198F    mov         edx,dword ptr [ebp-28]
 004E1992    mov         eax,dword ptr [ebp-38]
 004E1995    mov         ebx,dword ptr [eax]
 004E1997    call        dword ptr [ebx+34]
 004E199A    mov         eax,dword ptr [ebp-38]
 004E199D    cmp         word ptr [eax+9A],0
>004E19A5    je          004E19E9
 004E19A7    lea         eax,[ebp-20]
 004E19AA    push        eax
 004E19AB    mov         ax,word ptr [ebp+0C]
 004E19AF    push        eax
 004E19B0    mov         ebx,dword ptr [ebp-38]
 004E19B3    mov         ecx,dword ptr [ebp-28]
 004E19B6    mov         edx,dword ptr [ebp-38]
 004E19B9    mov         eax,dword ptr [ebx+9C]
 004E19BF    call        dword ptr [ebx+98]
>004E19C5    jmp         004E19E9
 004E19C7    cmp         dword ptr [ebp-30],0
>004E19CB    je          004E19E2
 004E19CD    mov         eax,dword ptr [ebp-30]
 004E19D0    call        TMenu.IsRightToLeft
 004E19D5    test        al,al
>004E19D7    jne         004E19E2
 004E19D9    push        ebp
 004E19DA    call        NormalDraw
 004E19DF    pop         ecx
>004E19E0    jmp         004E19E9
 004E19E2    push        ebp
 004E19E3    call        BiDiDraw
 004E19E8    pop         ecx
 004E19E9    pop         edi
 004E19EA    pop         esi
 004E19EB    pop         ebx
 004E19EC    mov         esp,ebp
 004E19EE    pop         ebp
 004E19EF    ret         8
*}
end;

//004E19F4
function TMenuItem.GetImageList:TCustomImageList;
begin
{*
 004E19F4    push        ebp
 004E19F5    mov         ebp,esp
 004E19F7    add         esp,0FFFFFFF0
 004E19FA    mov         dword ptr [ebp-4],eax
 004E19FD    xor         eax,eax
 004E19FF    mov         dword ptr [ebp-8],eax
 004E1A02    mov         eax,dword ptr [ebp-4]
 004E1A05    mov         eax,dword ptr [eax+64]
 004E1A08    mov         dword ptr [ebp-0C],eax
>004E1A0B    jmp         004E1A16
 004E1A0D    mov         eax,dword ptr [ebp-0C]
 004E1A10    mov         eax,dword ptr [eax+64]
 004E1A13    mov         dword ptr [ebp-0C],eax
 004E1A16    cmp         dword ptr [ebp-0C],0
>004E1A1A    je          004E1A25
 004E1A1C    mov         eax,dword ptr [ebp-0C]
 004E1A1F    cmp         dword ptr [eax+7C],0
>004E1A23    je          004E1A0D
 004E1A25    cmp         dword ptr [ebp-0C],0
>004E1A29    je          004E1A36
 004E1A2B    mov         eax,dword ptr [ebp-0C]
 004E1A2E    mov         eax,dword ptr [eax+7C]
 004E1A31    mov         dword ptr [ebp-8],eax
>004E1A34    jmp         004E1A50
 004E1A36    mov         eax,dword ptr [ebp-4]
 004E1A39    call        TMenuItem.GetParentMenu
 004E1A3E    mov         dword ptr [ebp-10],eax
 004E1A41    cmp         dword ptr [ebp-10],0
>004E1A45    je          004E1A50
 004E1A47    mov         eax,dword ptr [ebp-10]
 004E1A4A    mov         eax,dword ptr [eax+48]
 004E1A4D    mov         dword ptr [ebp-8],eax
 004E1A50    mov         eax,dword ptr [ebp-8]
 004E1A53    mov         esp,ebp
 004E1A55    pop         ebp
 004E1A56    ret
*}
end;

//004E1A58
procedure GetMenuSize;
begin
{*
 004E1A58    push        ebp
 004E1A59    mov         ebp,esp
 004E1A5B    add         esp,0FFFFFEAC
 004E1A61    mov         dword ptr [ebp-154],154
 004E1A6B    push        0
 004E1A6D    lea         eax,[ebp-154]
 004E1A73    push        eax
 004E1A74    push        0
 004E1A76    push        29
 004E1A78    call        user32.SystemParametersInfoA
 004E1A7D    test        eax,eax
>004E1A7F    je          004E1A9D
 004E1A81    mov         eax,dword ptr [ebp+8]
 004E1A84    mov         eax,dword ptr [eax-4]
 004E1A87    mov         edx,dword ptr [ebp-0BC]
 004E1A8D    mov         dword ptr [eax],edx
 004E1A8F    mov         eax,dword ptr [ebp+8]
 004E1A92    mov         eax,dword ptr [eax+8]
 004E1A95    mov         edx,dword ptr [ebp-0B8]
 004E1A9B    mov         dword ptr [eax],edx
 004E1A9D    mov         esp,ebp
 004E1A9F    pop         ebp
 004E1AA0    ret
*}
end;

//004E1AA4
{*procedure sub_004E1AA4(?:?; ?:?; ?:?);
begin
 004E1AA4    push        ebp
 004E1AA5    mov         ebp,esp
 004E1AA7    add         esp,0FFFFFFC8
 004E1AAA    push        ebx
 004E1AAB    push        esi
 004E1AAC    xor         ebx,ebx
 004E1AAE    mov         dword ptr [ebp-38],ebx
 004E1AB1    mov         dword ptr [ebp-24],ebx
 004E1AB4    mov         dword ptr [ebp-4],ecx
 004E1AB7    mov         dword ptr [ebp-0C],edx
 004E1ABA    mov         dword ptr [ebp-8],eax
 004E1ABD    xor         eax,eax
 004E1ABF    push        ebp
 004E1AC0    push        4E1CD6
 004E1AC5    push        dword ptr fs:[eax]
 004E1AC8    mov         dword ptr fs:[eax],esp
 004E1ACB    mov         eax,dword ptr [ebp-8]
 004E1ACE    mov         si,0FFF2
 004E1AD2    call        @CallDynaInst;TMenuItem.sub_00483570
 004E1AD7    mov         edx,dword ptr ds:[4DE988];TMainMenu
 004E1ADD    call        @IsClass
 004E1AE2    test        al,al
>004E1AE4    je          004E1AF3
 004E1AE6    mov         byte ptr [ebp-1A],1
 004E1AEA    push        ebp
 004E1AEB    call        GetMenuSize
 004E1AF0    pop         ecx
>004E1AF1    jmp         004E1AF7
 004E1AF3    mov         byte ptr [ebp-1A],0
 004E1AF7    mov         eax,dword ptr [ebp-8]
 004E1AFA    call        TMenuItem.GetParentMenu
 004E1AFF    mov         dword ptr [ebp-18],eax
 004E1B02    mov         eax,dword ptr [ebp-8]
 004E1B05    call        TMenuItem.GetImageList
 004E1B0A    mov         dword ptr [ebp-14],eax
 004E1B0D    mov         eax,dword ptr [ebp-8]
 004E1B10    mov         eax,dword ptr [eax+30];TMenuItem.Caption:String
 004E1B13    mov         edx,4E1CF0;'-'
 004E1B18    call        @LStrCmp
>004E1B1D    jne         004E1B37
 004E1B1F    mov         eax,dword ptr [ebp+8]
 004E1B22    mov         dword ptr [eax],5
 004E1B28    mov         eax,dword ptr [ebp-4]
 004E1B2B    mov         dword ptr [eax],0FFFFFFFE
 004E1B31    mov         byte ptr [ebp-19],0
>004E1B35    jmp         004E1BB1
 004E1B37    cmp         dword ptr [ebp-14],0
>004E1B3B    je          004E1B6E
 004E1B3D    mov         eax,dword ptr [ebp-8]
 004E1B40    cmp         dword ptr [eax+40],0FFFFFFFF;TMenuItem.ImageIndex:TImageIndex
>004E1B44    jg          004E1B4C
 004E1B46    cmp         byte ptr [ebp-1A],0
>004E1B4A    jne         004E1B6E
 004E1B4C    mov         eax,dword ptr [ebp-14]
 004E1B4F    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 004E1B52    mov         edx,dword ptr [ebp-4]
 004E1B55    mov         dword ptr [edx],eax
 004E1B57    cmp         byte ptr [ebp-1A],0
>004E1B5B    jne         004E1B68
 004E1B5D    mov         eax,dword ptr [ebp-14]
 004E1B60    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 004E1B63    mov         edx,dword ptr [ebp+8]
 004E1B66    mov         dword ptr [edx],eax
 004E1B68    mov         byte ptr [ebp-19],1
>004E1B6C    jmp         004E1BB1
 004E1B6E    mov         eax,dword ptr [ebp-8]
 004E1B71    cmp         dword ptr [eax+4C],0;TMenuItem.FBitmap:TBitmap
>004E1B75    je          004E1BA4
 004E1B77    mov         eax,dword ptr [ebp-8]
 004E1B7A    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 004E1B7D    mov         edx,dword ptr [eax]
 004E1B7F    call        dword ptr [edx+1C];TBitmap.sub_0048D4D4
 004E1B82    test        al,al
>004E1B84    jne         004E1BA4
 004E1B86    mov         eax,dword ptr [ebp-4]
 004E1B89    mov         dword ptr [eax],10
 004E1B8F    cmp         byte ptr [ebp-1A],0
>004E1B93    jne         004E1B9E
 004E1B95    mov         eax,dword ptr [ebp+8]
 004E1B98    mov         dword ptr [eax],10
 004E1B9E    mov         byte ptr [ebp-19],1
>004E1BA2    jmp         004E1BB1
 004E1BA4    mov         eax,dword ptr [ebp-4]
 004E1BA7    mov         dword ptr [eax],0FFFFFFF9
 004E1BAD    mov         byte ptr [ebp-19],0
 004E1BB1    cmp         byte ptr [ebp-19],0
>004E1BB5    je          004E1BC3
 004E1BB7    cmp         byte ptr [ebp-1A],0
>004E1BBB    jne         004E1BC3
 004E1BBD    mov         eax,dword ptr [ebp-4]
 004E1BC0    add         dword ptr [eax],0F
 004E1BC3    cmp         byte ptr [ebp-1A],0
>004E1BC7    jne         004E1BCF
 004E1BC9    mov         eax,dword ptr [ebp+8]
 004E1BCC    add         dword ptr [eax],3
 004E1BCF    lea         eax,[ebp-34]
 004E1BD2    xor         ecx,ecx
 004E1BD4    mov         edx,10
 004E1BD9    call        @FillChar
 004E1BDE    cmp         dword ptr [ebp-18],0
>004E1BE2    je          004E1BEA
 004E1BE4    mov         byte ptr [ebp-0D],0
>004E1BE8    jmp         004E1C0B
 004E1BEA    mov         eax,dword ptr [ebp-18]
 004E1BED    mov         edx,dword ptr ds:[4DEC6C];TPopupMenu
 004E1BF3    call        @IsClass
 004E1BF8    test        al,al
>004E1BFA    je          004E1C07
 004E1BFC    mov         eax,dword ptr [ebp-18]
 004E1BFF    mov         al,byte ptr [eax+60]
 004E1C02    mov         byte ptr [ebp-0D],al
>004E1C05    jmp         004E1C0B
 004E1C07    mov         byte ptr [ebp-0D],0
 004E1C0B    mov         eax,dword ptr [ebp-8]
 004E1C0E    cmp         word ptr [eax+60],0;TMenuItem.ShortCut:TShortCut
>004E1C13    je          004E1C37
 004E1C15    lea         edx,[ebp-38]
 004E1C18    mov         eax,dword ptr [ebp-8]
 004E1C1B    mov         ax,word ptr [eax+60];TMenuItem.ShortCut:TShortCut
 004E1C1F    call        004DF13C
 004E1C24    mov         ecx,dword ptr [ebp-38]
 004E1C27    lea         eax,[ebp-24]
 004E1C2A    mov         edx,dword ptr [ebp-8]
 004E1C2D    mov         edx,dword ptr [edx+30];TMenuItem.Caption:String
 004E1C30    call        @LStrCat3
>004E1C35    jmp         004E1C45
 004E1C37    lea         eax,[ebp-24]
 004E1C3A    mov         edx,dword ptr [ebp-8]
 004E1C3D    mov         edx,dword ptr [edx+30];TMenuItem.Caption:String
 004E1C40    call        @LStrLAsg
 004E1C45    xor         eax,eax
 004E1C47    mov         al,byte ptr [ebp-0D]
 004E1C4A    mov         ax,word ptr [eax*2+5418A8]
 004E1C52    or          ax,40
 004E1C56    or          ax,20
 004E1C5A    or          ax,100
 004E1C5E    or          ax,400
 004E1C62    movzx       eax,ax
 004E1C65    mov         dword ptr [ebp-20],eax
 004E1C68    lea         eax,[ebp-34]
 004E1C6B    push        eax
 004E1C6C    push        0
 004E1C6E    mov         eax,dword ptr [ebp-20]
 004E1C71    push        eax
 004E1C72    mov         ecx,dword ptr [ebp-24]
 004E1C75    mov         edx,dword ptr [ebp-0C]
 004E1C78    mov         eax,dword ptr [ebp-8]
 004E1C7B    call        004E0400
 004E1C80    mov         eax,dword ptr [ebp-2C]
 004E1C83    sub         eax,dword ptr [ebp-34]
 004E1C86    add         eax,7
 004E1C89    mov         edx,dword ptr [ebp-4]
 004E1C8C    add         dword ptr [edx],eax
 004E1C8E    mov         eax,dword ptr [ebp-8]
 004E1C91    cmp         word ptr [eax+0A2],0;TMenuItem.?fA2:word
>004E1C99    je          004E1CB8
 004E1C9B    mov         eax,dword ptr [ebp-4]
 004E1C9E    push        eax
 004E1C9F    mov         eax,dword ptr [ebp+8]
 004E1CA2    push        eax
 004E1CA3    mov         ebx,dword ptr [ebp-8]
 004E1CA6    mov         ecx,dword ptr [ebp-0C]
 004E1CA9    mov         edx,dword ptr [ebp-8]
 004E1CAC    mov         eax,dword ptr [ebx+0A4];TMenuItem.?fA4:dword
 004E1CB2    call        dword ptr [ebx+0A0];TMenuItem.OnMeasureItem
 004E1CB8    xor         eax,eax
 004E1CBA    pop         edx
 004E1CBB    pop         ecx
 004E1CBC    pop         ecx
 004E1CBD    mov         dword ptr fs:[eax],edx
 004E1CC0    push        4E1CDD
 004E1CC5    lea         eax,[ebp-38]
 004E1CC8    call        @LStrClr
 004E1CCD    lea         eax,[ebp-24]
 004E1CD0    call        @LStrClr
 004E1CD5    ret
>004E1CD6    jmp         @HandleFinally
>004E1CDB    jmp         004E1CC5
 004E1CDD    pop         esi
 004E1CDE    pop         ebx
 004E1CDF    mov         esp,ebp
 004E1CE1    pop         ebp
 004E1CE2    ret         4
end;*}

//004E1CF4
procedure TMenuItem.sub_004834C8;
begin
{*
 004E1CF4    push        ebp
 004E1CF5    mov         ebp,esp
 004E1CF7    add         esp,0FFFFFFF8
 004E1CFA    mov         dword ptr [ebp-4],eax
 004E1CFD    mov         byte ptr [ebp-5],1
 004E1D01    mov         al,byte ptr [ebp-5]
 004E1D04    pop         ecx
 004E1D05    pop         ecx
 004E1D06    pop         ebp
 004E1D07    ret
*}
end;

//004E1D08
procedure TMenuItem.SetBreak(Value:TMenuBreak);
begin
{*
 004E1D08    push        ebp
 004E1D09    mov         ebp,esp
 004E1D0B    add         esp,0FFFFFFF8
 004E1D0E    mov         byte ptr [ebp-5],dl
 004E1D11    mov         dword ptr [ebp-4],eax
 004E1D14    mov         eax,dword ptr [ebp-4]
 004E1D17    mov         al,byte ptr [eax+48];TMenuItem.Break:TMenuBreak
 004E1D1A    cmp         al,byte ptr [ebp-5]
>004E1D1D    je          004E1D32
 004E1D1F    mov         al,byte ptr [ebp-5]
 004E1D22    mov         edx,dword ptr [ebp-4]
 004E1D25    mov         byte ptr [edx+48],al;TMenuItem.Break:TMenuBreak
 004E1D28    mov         dl,1
 004E1D2A    mov         eax,dword ptr [ebp-4]
 004E1D2D    mov         ecx,dword ptr [eax]
 004E1D2F    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E1D32    pop         ecx
 004E1D33    pop         ecx
 004E1D34    pop         ebp
 004E1D35    ret
*}
end;

//004E1D38
procedure TMenuItem.SetCaption(Value:String);
begin
{*
 004E1D38    push        ebp
 004E1D39    mov         ebp,esp
 004E1D3B    add         esp,0FFFFFFF8
 004E1D3E    mov         dword ptr [ebp-8],edx
 004E1D41    mov         dword ptr [ebp-4],eax
 004E1D44    mov         eax,dword ptr [ebp-4]
 004E1D47    mov         eax,dword ptr [eax+30];TMenuItem.Caption:String
 004E1D4A    mov         edx,dword ptr [ebp-8]
 004E1D4D    call        @LStrCmp
>004E1D52    je          004E1D6C
 004E1D54    mov         eax,dword ptr [ebp-4]
 004E1D57    add         eax,30;TMenuItem.Caption:String
 004E1D5A    mov         edx,dword ptr [ebp-8]
 004E1D5D    call        @LStrAsg
 004E1D62    mov         dl,1
 004E1D64    mov         eax,dword ptr [ebp-4]
 004E1D67    mov         ecx,dword ptr [eax]
 004E1D69    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E1D6C    pop         ecx
 004E1D6D    pop         ecx
 004E1D6E    pop         ebp
 004E1D6F    ret
*}
end;

//004E1D70
procedure sub_004E1D70(?:TMenuItem);
begin
{*
 004E1D70    push        ebp
 004E1D71    mov         ebp,esp
 004E1D73    add         esp,0FFFFFFF0
 004E1D76    mov         dword ptr [ebp-4],eax
 004E1D79    mov         eax,dword ptr [ebp-4]
 004E1D7C    cmp         dword ptr [eax+64],0
>004E1D80    je          004E1DDF
 004E1D82    mov         eax,dword ptr [ebp-4]
 004E1D85    mov         eax,dword ptr [eax+64]
 004E1D88    call        004E1FAC
 004E1D8D    dec         eax
 004E1D8E    test        eax,eax
>004E1D90    jl          004E1DDF
 004E1D92    inc         eax
 004E1D93    mov         dword ptr [ebp-10],eax
 004E1D96    mov         dword ptr [ebp-8],0
 004E1D9D    mov         edx,dword ptr [ebp-8]
 004E1DA0    mov         eax,dword ptr [ebp-4]
 004E1DA3    mov         eax,dword ptr [eax+64]
 004E1DA6    call        004E1FD8
 004E1DAB    mov         dword ptr [ebp-0C],eax
 004E1DAE    mov         eax,dword ptr [ebp-0C]
 004E1DB1    cmp         eax,dword ptr [ebp-4]
>004E1DB4    je          004E1DD7
 004E1DB6    mov         eax,dword ptr [ebp-0C]
 004E1DB9    cmp         byte ptr [eax+3D],0
>004E1DBD    je          004E1DD7
 004E1DBF    mov         eax,dword ptr [ebp-0C]
 004E1DC2    mov         al,byte ptr [eax+3F]
 004E1DC5    mov         edx,dword ptr [ebp-4]
 004E1DC8    cmp         al,byte ptr [edx+3F]
>004E1DCB    jne         004E1DD7
 004E1DCD    xor         edx,edx
 004E1DCF    mov         eax,dword ptr [ebp-0C]
 004E1DD2    call        TMenuItem.SetChecked
 004E1DD7    inc         dword ptr [ebp-8]
 004E1DDA    dec         dword ptr [ebp-10]
>004E1DDD    jne         004E1D9D
 004E1DDF    mov         esp,ebp
 004E1DE1    pop         ebp
 004E1DE2    ret
*}
end;

//004E1DE4
procedure TMenuItem.SetChecked(Value:Boolean);
begin
{*
 004E1DE4    push        ebp
 004E1DE5    mov         ebp,esp
 004E1DE7    add         esp,0FFFFFFF8
 004E1DEA    mov         byte ptr [ebp-5],dl
 004E1DED    mov         dword ptr [ebp-4],eax
 004E1DF0    mov         eax,dword ptr [ebp-4]
 004E1DF3    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 004E1DF6    cmp         al,byte ptr [ebp-5]
>004E1DF9    je          004E1E56
 004E1DFB    mov         al,byte ptr [ebp-5]
 004E1DFE    mov         edx,dword ptr [ebp-4]
 004E1E01    mov         byte ptr [edx+38],al;TMenuItem.Checked:Boolean
 004E1E04    mov         eax,dword ptr [ebp-4]
 004E1E07    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>004E1E0B    je          004E1E3F
 004E1E0D    mov         eax,dword ptr [ebp-4]
 004E1E10    test        byte ptr [eax+1C],2;TMenuItem.FComponentState:TComponentState
>004E1E14    jne         004E1E3F
 004E1E16    xor         eax,eax
 004E1E18    mov         al,byte ptr [ebp-5]
 004E1E1B    mov         eax,dword ptr [eax*4+541830]
 004E1E22    or          eax,0
 004E1E25    push        eax
 004E1E26    mov         eax,dword ptr [ebp-4]
 004E1E29    movzx       eax,word ptr [eax+50];TMenuItem.FCommand:word
 004E1E2D    push        eax
 004E1E2E    mov         eax,dword ptr [ebp-4]
 004E1E31    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E1E34    call        004E0340
 004E1E39    push        eax
 004E1E3A    call        user32.CheckMenuItem
 004E1E3F    cmp         byte ptr [ebp-5],0
>004E1E43    je          004E1E56
 004E1E45    mov         eax,dword ptr [ebp-4]
 004E1E48    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>004E1E4C    je          004E1E56
 004E1E4E    mov         eax,dword ptr [ebp-4]
 004E1E51    call        004E1D70
 004E1E56    pop         ecx
 004E1E57    pop         ecx
 004E1E58    pop         ebp
 004E1E59    ret
*}
end;

//004E1E5C
procedure TMenuItem.SetEnabled(Value:Boolean);
begin
{*
 004E1E5C    push        ebp
 004E1E5D    mov         ebp,esp
 004E1E5F    add         esp,0FFFFFFF8
 004E1E62    mov         byte ptr [ebp-5],dl
 004E1E65    mov         dword ptr [ebp-4],eax
 004E1E68    mov         eax,dword ptr [ebp-4]
 004E1E6B    mov         al,byte ptr [eax+39];TMenuItem.Enabled:Boolean
 004E1E6E    cmp         al,byte ptr [ebp-5]
>004E1E71    je          004E1EFC
 004E1E77    mov         al,byte ptr [ebp-5]
 004E1E7A    mov         edx,dword ptr [ebp-4]
 004E1E7D    mov         byte ptr [edx+39],al;TMenuItem.Enabled:Boolean
 004E1E80    mov         eax,[0055B700];^gvar_00540934
 004E1E85    cmp         dword ptr [eax],2
>004E1E88    jne         004E1E96
 004E1E8A    mov         eax,dword ptr [ebp-4]
 004E1E8D    call        004E1FAC
 004E1E92    test        eax,eax
>004E1E94    jne         004E1EAB
 004E1E96    mov         eax,dword ptr [ebp-4]
 004E1E99    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>004E1E9D    je          004E1EB7
 004E1E9F    mov         eax,dword ptr [ebp-4]
 004E1EA2    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E1EA5    cmp         dword ptr [eax+6C],0;TMenuItem.FMergedWith:TMenuItem
>004E1EA9    je          004E1EB7
 004E1EAB    mov         dl,1
 004E1EAD    mov         eax,dword ptr [ebp-4]
 004E1EB0    mov         ecx,dword ptr [eax]
 004E1EB2    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
>004E1EB5    jmp         004E1EFC
 004E1EB7    mov         eax,dword ptr [ebp-4]
 004E1EBA    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>004E1EBE    je          004E1EF2
 004E1EC0    mov         eax,dword ptr [ebp-4]
 004E1EC3    test        byte ptr [eax+1C],2;TMenuItem.FComponentState:TComponentState
>004E1EC7    jne         004E1EF2
 004E1EC9    xor         eax,eax
 004E1ECB    mov         al,byte ptr [ebp-5]
 004E1ECE    mov         eax,dword ptr [eax*4+541838]
 004E1ED5    or          eax,0
 004E1ED8    push        eax
 004E1ED9    mov         eax,dword ptr [ebp-4]
 004E1EDC    movzx       eax,word ptr [eax+50];TMenuItem.FCommand:word
 004E1EE0    push        eax
 004E1EE1    mov         eax,dword ptr [ebp-4]
 004E1EE4    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E1EE7    call        004E0340
 004E1EEC    push        eax
 004E1EED    call        user32.EnableMenuItem
 004E1EF2    xor         edx,edx
 004E1EF4    mov         eax,dword ptr [ebp-4]
 004E1EF7    mov         ecx,dword ptr [eax]
 004E1EF9    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E1EFC    pop         ecx
 004E1EFD    pop         ecx
 004E1EFE    pop         ebp
 004E1EFF    ret
*}
end;

//004E1F00
procedure TMenuItem.SetGroupIndex(Value:Byte);
begin
{*
 004E1F00    push        ebp
 004E1F01    mov         ebp,esp
 004E1F03    add         esp,0FFFFFFF8
 004E1F06    mov         byte ptr [ebp-5],dl
 004E1F09    mov         dword ptr [ebp-4],eax
 004E1F0C    mov         eax,dword ptr [ebp-4]
 004E1F0F    mov         al,byte ptr [eax+3F];TMenuItem.GroupIndex:byte
 004E1F12    cmp         al,byte ptr [ebp-5]
>004E1F15    je          004E1F61
 004E1F17    mov         eax,dword ptr [ebp-4]
 004E1F1A    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>004E1F1E    je          004E1F3E
 004E1F20    mov         edx,dword ptr [ebp-4]
 004E1F23    mov         eax,dword ptr [ebp-4]
 004E1F26    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E1F29    call        004E24D0
 004E1F2E    mov         edx,eax
 004E1F30    mov         cl,byte ptr [ebp-5]
 004E1F33    mov         eax,dword ptr [ebp-4]
 004E1F36    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E1F39    call        004E02C0
 004E1F3E    mov         al,byte ptr [ebp-5]
 004E1F41    mov         edx,dword ptr [ebp-4]
 004E1F44    mov         byte ptr [edx+3F],al;TMenuItem.GroupIndex:byte
 004E1F47    mov         eax,dword ptr [ebp-4]
 004E1F4A    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>004E1F4E    je          004E1F61
 004E1F50    mov         eax,dword ptr [ebp-4]
 004E1F53    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>004E1F57    je          004E1F61
 004E1F59    mov         eax,dword ptr [ebp-4]
 004E1F5C    call        004E1D70
 004E1F61    pop         ecx
 004E1F62    pop         ecx
 004E1F63    pop         ebp
 004E1F64    ret
*}
end;

//004E1F68
{*function TMenuItem.GetAction:?;
begin
 004E1F68    push        ebp
 004E1F69    mov         ebp,esp
 004E1F6B    add         esp,0FFFFFFF8
 004E1F6E    mov         dword ptr [ebp-4],eax
 004E1F71    mov         eax,dword ptr [ebp-4]
 004E1F74    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E1F78    je          004E1F88
 004E1F7A    mov         eax,dword ptr [ebp-4]
 004E1F7D    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E1F80    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004E1F83    mov         dword ptr [ebp-8],eax
>004E1F86    jmp         004E1F8D
 004E1F88    xor         eax,eax
 004E1F8A    mov         dword ptr [ebp-8],eax
 004E1F8D    mov         eax,dword ptr [ebp-8]
 004E1F90    pop         ecx
 004E1F91    pop         ecx
 004E1F92    pop         ebp
 004E1F93    ret
end;*}

//004E1F94
procedure TMenuItem.sub_004E1F94;
begin
{*
 004E1F94    push        ebp
 004E1F95    mov         ebp,esp
 004E1F97    add         esp,0FFFFFFF8
 004E1F9A    mov         dword ptr [ebp-4],eax
 004E1F9D    mov         eax,[004DE398];TMenuActionLink
 004E1FA2    mov         dword ptr [ebp-8],eax
 004E1FA5    mov         eax,dword ptr [ebp-8]
 004E1FA8    pop         ecx
 004E1FA9    pop         ecx
 004E1FAA    pop         ebp
 004E1FAB    ret
*}
end;

//004E1FAC
{*function sub_004E1FAC(?:TMenuItem):?;
begin
 004E1FAC    push        ebp
 004E1FAD    mov         ebp,esp
 004E1FAF    add         esp,0FFFFFFF8
 004E1FB2    mov         dword ptr [ebp-4],eax
 004E1FB5    mov         eax,dword ptr [ebp-4]
 004E1FB8    cmp         dword ptr [eax+5C],0;TMenuItem.FItems:TList
>004E1FBC    jne         004E1FC5
 004E1FBE    xor         eax,eax
 004E1FC0    mov         dword ptr [ebp-8],eax
>004E1FC3    jmp         004E1FD1
 004E1FC5    mov         eax,dword ptr [ebp-4]
 004E1FC8    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 004E1FCB    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004E1FCE    mov         dword ptr [ebp-8],eax
 004E1FD1    mov         eax,dword ptr [ebp-8]
 004E1FD4    pop         ecx
 004E1FD5    pop         ecx
 004E1FD6    pop         ebp
 004E1FD7    ret
end;*}

//004E1FD8
{*function sub_004E1FD8(?:TMenuItem; ?:?):?;
begin
 004E1FD8    push        ebp
 004E1FD9    mov         ebp,esp
 004E1FDB    add         esp,0FFFFFFF4
 004E1FDE    mov         dword ptr [ebp-8],edx
 004E1FE1    mov         dword ptr [ebp-4],eax
 004E1FE4    mov         eax,dword ptr [ebp-4]
 004E1FE7    cmp         dword ptr [eax+5C],0
>004E1FEB    jne         004E1FF7
 004E1FED    mov         eax,[0055B328];^SMenuIndexError:TResStringRec
 004E1FF2    call        004DF064
 004E1FF7    mov         edx,dword ptr [ebp-8]
 004E1FFA    mov         eax,dword ptr [ebp-4]
 004E1FFD    mov         eax,dword ptr [eax+5C]
 004E2000    call        TList.Get
 004E2005    mov         dword ptr [ebp-0C],eax
 004E2008    mov         eax,dword ptr [ebp-0C]
 004E200B    mov         esp,ebp
 004E200D    pop         ebp
 004E200E    ret
end;*}

//004E2010
procedure TMenuItem.SetShortCut(Value:TShortCut);
begin
{*
 004E2010    push        ebp
 004E2011    mov         ebp,esp
 004E2013    add         esp,0FFFFFFF8
 004E2016    mov         word ptr [ebp-6],dx
 004E201A    mov         dword ptr [ebp-4],eax
 004E201D    mov         eax,dword ptr [ebp-4]
 004E2020    mov         ax,word ptr [eax+60];TMenuItem.ShortCut:TShortCut
 004E2024    cmp         ax,word ptr [ebp-6]
>004E2028    je          004E203F
 004E202A    mov         ax,word ptr [ebp-6]
 004E202E    mov         edx,dword ptr [ebp-4]
 004E2031    mov         word ptr [edx+60],ax;TMenuItem.ShortCut:TShortCut
 004E2035    mov         dl,1
 004E2037    mov         eax,dword ptr [ebp-4]
 004E203A    mov         ecx,dword ptr [eax]
 004E203C    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E203F    pop         ecx
 004E2040    pop         ecx
 004E2041    pop         ebp
 004E2042    ret
*}
end;

//004E2044
procedure TMenuItem.SetVisible(Value:Boolean);
begin
{*
 004E2044    push        ebp
 004E2045    mov         ebp,esp
 004E2047    add         esp,0FFFFFFF8
 004E204A    mov         byte ptr [ebp-5],dl
 004E204D    mov         dword ptr [ebp-4],eax
 004E2050    mov         al,byte ptr [ebp-5]
 004E2053    mov         edx,dword ptr [ebp-4]
 004E2056    cmp         al,byte ptr [edx+3E];TMenuItem.Visible:Boolean
>004E2059    je          004E206E
 004E205B    mov         al,byte ptr [ebp-5]
 004E205E    mov         edx,dword ptr [ebp-4]
 004E2061    mov         byte ptr [edx+3E],al;TMenuItem.Visible:Boolean
 004E2064    mov         dl,1
 004E2066    mov         eax,dword ptr [ebp-4]
 004E2069    mov         ecx,dword ptr [eax]
 004E206B    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E206E    pop         ecx
 004E206F    pop         ecx
 004E2070    pop         ebp
 004E2071    ret
*}
end;

//004E2074
procedure TMenuItem.SetImageIndex(Value:TImageIndex);
begin
{*
 004E2074    push        ebp
 004E2075    mov         ebp,esp
 004E2077    add         esp,0FFFFFFF8
 004E207A    mov         dword ptr [ebp-8],edx
 004E207D    mov         dword ptr [ebp-4],eax
 004E2080    mov         eax,dword ptr [ebp-8]
 004E2083    mov         edx,dword ptr [ebp-4]
 004E2086    cmp         eax,dword ptr [edx+40];TMenuItem.ImageIndex:TImageIndex
>004E2089    je          004E209E
 004E208B    mov         eax,dword ptr [ebp-8]
 004E208E    mov         edx,dword ptr [ebp-4]
 004E2091    mov         dword ptr [edx+40],eax;TMenuItem.ImageIndex:TImageIndex
 004E2094    mov         dl,1
 004E2096    mov         eax,dword ptr [ebp-4]
 004E2099    mov         ecx,dword ptr [eax]
 004E209B    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E209E    pop         ecx
 004E209F    pop         ecx
 004E20A0    pop         ebp
 004E20A1    ret
*}
end;

//004E20A4
{*function sub_004E20A4(?:?):?;
begin
 004E20A4    push        ebp
 004E20A5    mov         ebp,esp
 004E20A7    add         esp,0FFFFFFF8
 004E20AA    mov         dword ptr [ebp-4],eax
 004E20AD    mov         dword ptr [ebp-8],0FFFFFFFF
 004E20B4    mov         eax,dword ptr [ebp-4]
 004E20B7    cmp         dword ptr [eax+64],0
>004E20BB    je          004E20CE
 004E20BD    mov         edx,dword ptr [ebp-4]
 004E20C0    mov         eax,dword ptr [ebp-4]
 004E20C3    mov         eax,dword ptr [eax+64]
 004E20C6    call        004E24D0
 004E20CB    mov         dword ptr [ebp-8],eax
 004E20CE    mov         eax,dword ptr [ebp-8]
 004E20D1    pop         ecx
 004E20D2    pop         ecx
 004E20D3    pop         ebp
 004E20D4    ret
end;*}

//004E20D8
{*procedure sub_004E20D8(?:TMenuItem; ?:?);
begin
 004E20D8    push        ebp
 004E20D9    mov         ebp,esp
 004E20DB    add         esp,0FFFFFFF0
 004E20DE    mov         dword ptr [ebp-8],edx
 004E20E1    mov         dword ptr [ebp-4],eax
 004E20E4    mov         eax,dword ptr [ebp-4]
 004E20E7    cmp         dword ptr [eax+64],0
>004E20EB    je          004E2144
 004E20ED    mov         eax,dword ptr [ebp-4]
 004E20F0    mov         eax,dword ptr [eax+64]
 004E20F3    call        004E1FAC
 004E20F8    mov         dword ptr [ebp-10],eax
 004E20FB    cmp         dword ptr [ebp-8],0
>004E20FF    jge         004E2106
 004E2101    xor         eax,eax
 004E2103    mov         dword ptr [ebp-8],eax
 004E2106    mov         eax,dword ptr [ebp-8]
 004E2109    cmp         eax,dword ptr [ebp-10]
>004E210C    jl          004E2115
 004E210E    mov         eax,dword ptr [ebp-10]
 004E2111    dec         eax
 004E2112    mov         dword ptr [ebp-8],eax
 004E2115    mov         eax,dword ptr [ebp-4]
 004E2118    call        004E20A4
 004E211D    cmp         eax,dword ptr [ebp-8]
>004E2120    je          004E2144
 004E2122    mov         eax,dword ptr [ebp-4]
 004E2125    mov         eax,dword ptr [eax+64]
 004E2128    mov         dword ptr [ebp-0C],eax
 004E212B    mov         edx,dword ptr [ebp-4]
 004E212E    mov         eax,dword ptr [ebp-0C]
 004E2131    call        004E252C
 004E2136    mov         ecx,dword ptr [ebp-4]
 004E2139    mov         edx,dword ptr [ebp-8]
 004E213C    mov         eax,dword ptr [ebp-0C]
 004E213F    call        004E2264
 004E2144    mov         esp,ebp
 004E2146    pop         ebp
 004E2147    ret
end;*}

//004E2148
{*procedure TMenuItem.sub_004834DC(?:?; ?:?);
begin
 004E2148    push        ebp
 004E2149    mov         ebp,esp
 004E214B    add         esp,0FFFFFFF0
 004E214E    mov         dword ptr [ebp-10],edx
 004E2151    mov         dword ptr [ebp-4],eax
 004E2154    mov         eax,dword ptr [ebp-4]
 004E2157    call        004E1FAC
 004E215C    dec         eax
 004E215D    test        eax,eax
>004E215F    jl          004E2187
 004E2161    inc         eax
 004E2162    mov         dword ptr [ebp-0C],eax
 004E2165    mov         dword ptr [ebp-8],0
 004E216C    mov         edx,dword ptr [ebp-8]
 004E216F    mov         eax,dword ptr [ebp-4]
 004E2172    call        004E1FD8
 004E2177    mov         edx,eax
 004E2179    mov         eax,dword ptr [ebp+0C]
 004E217C    call        dword ptr [ebp+8]
 004E217F    inc         dword ptr [ebp-8]
 004E2182    dec         dword ptr [ebp-0C]
>004E2185    jne         004E216C
 004E2187    mov         esp,ebp
 004E2189    pop         ebp
 004E218A    ret         8
end;*}

//004E2190
{*procedure TMenuItem.sub_0048355C(?:?; ?:?);
begin
 004E2190    push        ebp
 004E2191    mov         ebp,esp
 004E2193    add         esp,0FFFFFFF4
 004E2196    mov         dword ptr [ebp-0C],ecx
 004E2199    mov         dword ptr [ebp-8],edx
 004E219C    mov         dword ptr [ebp-4],eax
 004E219F    mov         eax,dword ptr [ebp-8]
 004E21A2    mov         edx,dword ptr ds:[4DE470];TMenuItem
 004E21A8    call        @AsClass
 004E21AD    mov         edx,dword ptr [ebp-0C]
 004E21B0    call        004E20D8
 004E21B5    mov         esp,ebp
 004E21B7    pop         ebp
 004E21B8    ret
end;*}

//004E21BC
procedure TMenuItem.SetDefault(Value:Boolean);
begin
{*
 004E21BC    push        ebp
 004E21BD    mov         ebp,esp
 004E21BF    add         esp,0FFFFFFF0
 004E21C2    mov         byte ptr [ebp-5],dl
 004E21C5    mov         dword ptr [ebp-4],eax
 004E21C8    mov         eax,dword ptr [ebp-4]
 004E21CB    mov         al,byte ptr [eax+3A];TMenuItem.Default:Boolean
 004E21CE    cmp         al,byte ptr [ebp-5]
>004E21D1    je          004E223E
 004E21D3    cmp         byte ptr [ebp-5],0
>004E21D7    je          004E222B
 004E21D9    mov         eax,dword ptr [ebp-4]
 004E21DC    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>004E21E0    je          004E222B
 004E21E2    mov         eax,dword ptr [ebp-4]
 004E21E5    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E21E8    call        004E1FAC
 004E21ED    dec         eax
 004E21EE    test        eax,eax
>004E21F0    jl          004E222B
 004E21F2    inc         eax
 004E21F3    mov         dword ptr [ebp-10],eax
 004E21F6    mov         dword ptr [ebp-0C],0
 004E21FD    mov         edx,dword ptr [ebp-0C]
 004E2200    mov         eax,dword ptr [ebp-4]
 004E2203    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E2206    call        004E1FD8
 004E220B    cmp         byte ptr [eax+3A],0
>004E220F    je          004E2223
 004E2211    mov         edx,dword ptr [ebp-0C]
 004E2214    mov         eax,dword ptr [ebp-4]
 004E2217    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E221A    call        004E1FD8
 004E221F    mov         byte ptr [eax+3A],0
 004E2223    inc         dword ptr [ebp-0C]
 004E2226    dec         dword ptr [ebp-10]
>004E2229    jne         004E21FD
 004E222B    mov         al,byte ptr [ebp-5]
 004E222E    mov         edx,dword ptr [ebp-4]
 004E2231    mov         byte ptr [edx+3A],al;TMenuItem.Default:Boolean
 004E2234    mov         dl,1
 004E2236    mov         eax,dword ptr [ebp-4]
 004E2239    mov         ecx,dword ptr [eax]
 004E223B    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E223E    mov         esp,ebp
 004E2240    pop         ebp
 004E2241    ret
*}
end;

//004E2244
procedure sub_004E2244;
begin
{*
 004E2244    push        ebp
 004E2245    mov         ebp,esp
 004E2247    push        ecx
 004E2248    mov         dword ptr [ebp-4],eax
 004E224B    mov         eax,dword ptr [ebp-4]
 004E224E    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2252    je          004E225F
 004E2254    mov         eax,dword ptr [ebp-4]
 004E2257    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E225A    mov         edx,dword ptr [eax]
 004E225C    call        dword ptr [edx+1C];TMenuActionLink.sub_00483D14
 004E225F    pop         ecx
 004E2260    pop         ebp
 004E2261    ret
*}
end;

//004E2264
{*procedure sub_004E2264(?:?; ?:?; ?:?);
begin
 004E2264    push        ebp
 004E2265    mov         ebp,esp
 004E2267    add         esp,0FFFFFFF4
 004E226A    mov         dword ptr [ebp-0C],ecx
 004E226D    mov         dword ptr [ebp-8],edx
 004E2270    mov         dword ptr [ebp-4],eax
 004E2273    mov         eax,dword ptr [ebp-0C]
 004E2276    cmp         dword ptr [eax+64],0
>004E227A    je          004E2286
 004E227C    mov         eax,[0055B6FC];^SMenuReinserted:TResStringRec
 004E2281    call        004DF064
 004E2286    mov         eax,dword ptr [ebp-4]
 004E2289    cmp         dword ptr [eax+5C],0
>004E228D    jne         004E22A1
 004E228F    mov         dl,1
 004E2291    mov         eax,[004759C0];TList
 004E2296    call        TObject.Create;TList.Create
 004E229B    mov         edx,dword ptr [ebp-4]
 004E229E    mov         dword ptr [edx+5C],eax
 004E22A1    mov         eax,dword ptr [ebp-8]
 004E22A4    dec         eax
>004E22A5    js          004E22EA
 004E22A7    mov         eax,dword ptr [ebp-8]
 004E22AA    dec         eax
 004E22AB    mov         edx,dword ptr [ebp-4]
 004E22AE    mov         edx,dword ptr [edx+5C]
 004E22B1    cmp         eax,dword ptr [edx+8]
>004E22B4    jge         004E22EA
 004E22B6    mov         edx,dword ptr [ebp-8]
 004E22B9    dec         edx
 004E22BA    mov         eax,dword ptr [ebp-4]
 004E22BD    mov         eax,dword ptr [eax+5C]
 004E22C0    call        TList.Get
 004E22C5    mov         al,byte ptr [eax+3F]
 004E22C8    mov         edx,dword ptr [ebp-0C]
 004E22CB    cmp         al,byte ptr [edx+3F]
>004E22CE    jbe         004E22EA
 004E22D0    mov         edx,dword ptr [ebp-8]
 004E22D3    dec         edx
 004E22D4    mov         eax,dword ptr [ebp-4]
 004E22D7    mov         eax,dword ptr [eax+5C]
 004E22DA    call        TList.Get
 004E22DF    mov         dl,byte ptr [eax+3F]
 004E22E2    mov         eax,dword ptr [ebp-0C]
 004E22E5    call        TMenuItem.SetGroupIndex
 004E22EA    mov         eax,dword ptr [ebp-0C]
 004E22ED    mov         cl,byte ptr [eax+3F]
 004E22F0    mov         edx,dword ptr [ebp-8]
 004E22F3    mov         eax,dword ptr [ebp-4]
 004E22F6    call        004E02C0
 004E22FB    mov         ecx,dword ptr [ebp-0C]
 004E22FE    mov         edx,dword ptr [ebp-8]
 004E2301    mov         eax,dword ptr [ebp-4]
 004E2304    mov         eax,dword ptr [eax+5C]
 004E2307    call        004788DC
 004E230C    mov         eax,dword ptr [ebp-4]
 004E230F    mov         edx,dword ptr [ebp-0C]
 004E2312    mov         dword ptr [edx+64],eax
 004E2315    mov         eax,dword ptr [ebp-4]
 004E2318    mov         edx,dword ptr [ebp-0C]
 004E231B    mov         dword ptr [edx+84],eax
 004E2321    mov         dword ptr [edx+80],4E25CC;sub_004E25CC
 004E232B    mov         eax,dword ptr [ebp-4]
 004E232E    cmp         dword ptr [eax+34],0
>004E2332    je          004E233C
 004E2334    mov         eax,dword ptr [ebp-4]
 004E2337    call        004E01B8
 004E233C    mov         eax,dword ptr [ebp-4]
 004E233F    call        004E1FAC
 004E2344    dec         eax
 004E2345    sete        dl
 004E2348    mov         eax,dword ptr [ebp-4]
 004E234B    mov         ecx,dword ptr [eax]
 004E234D    call        dword ptr [ecx+3C]
 004E2350    mov         esp,ebp
 004E2352    pop         ebp
 004E2353    ret
end;*}

//004E2354
{*procedure sub_004E2354(?:?; ?:?);
begin
 004E2354    push        ebp
 004E2355    mov         ebp,esp
 004E2357    add         esp,0FFFFFFF4
 004E235A    mov         dword ptr [ebp-8],edx
 004E235D    mov         dword ptr [ebp-4],eax
 004E2360    cmp         dword ptr [ebp-8],0
>004E2364    jl          004E237C
 004E2366    mov         eax,dword ptr [ebp-4]
 004E2369    cmp         dword ptr [eax+5C],0
>004E236D    je          004E237C
 004E236F    mov         eax,dword ptr [ebp-4]
 004E2372    call        004E1FAC
 004E2377    cmp         eax,dword ptr [ebp-8]
>004E237A    jg          004E2386
 004E237C    mov         eax,[0055B328];^SMenuIndexError:TResStringRec
 004E2381    call        004DF064
 004E2386    mov         edx,dword ptr [ebp-8]
 004E2389    mov         eax,dword ptr [ebp-4]
 004E238C    mov         eax,dword ptr [eax+5C]
 004E238F    call        TList.Get
 004E2394    mov         dword ptr [ebp-0C],eax
 004E2397    mov         edx,dword ptr [ebp-8]
 004E239A    mov         eax,dword ptr [ebp-4]
 004E239D    mov         eax,dword ptr [eax+5C]
 004E23A0    call        00478668
 004E23A5    mov         eax,dword ptr [ebp-0C]
 004E23A8    xor         edx,edx
 004E23AA    mov         dword ptr [eax+64],edx
 004E23AD    mov         eax,dword ptr [ebp-0C]
 004E23B0    xor         edx,edx
 004E23B2    mov         dword ptr [eax+80],edx
 004E23B8    mov         dword ptr [eax+84],edx
 004E23BE    mov         eax,dword ptr [ebp-4]
 004E23C1    cmp         dword ptr [eax+34],0
>004E23C5    je          004E23CF
 004E23C7    mov         eax,dword ptr [ebp-4]
 004E23CA    call        004E01B8
 004E23CF    mov         eax,dword ptr [ebp-4]
 004E23D2    call        004E1FAC
 004E23D7    test        eax,eax
 004E23D9    sete        dl
 004E23DC    mov         eax,dword ptr [ebp-4]
 004E23DF    mov         ecx,dword ptr [eax]
 004E23E1    call        dword ptr [ecx+3C]
 004E23E4    mov         esp,ebp
 004E23E6    pop         ebp
 004E23E7    ret
end;*}

//004E23E8
procedure sub_004E23E8;
begin
{*
 004E23E8    push        ebp
 004E23E9    mov         ebp,esp
 004E23EB    push        ecx
 004E23EC    push        ebx
 004E23ED    mov         dword ptr [ebp-4],eax
 004E23F0    mov         eax,dword ptr [ebp-4]
 004E23F3    cmp         byte ptr [eax+39],0;TMenuItem.Enabled:Boolean
>004E23F7    je          004E24CB
 004E23FD    mov         eax,dword ptr [ebp-4]
 004E2400    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2404    jne         004E2412
 004E2406    mov         eax,dword ptr [ebp-4]
 004E2409    cmp         byte ptr [eax+0A8],0;TMenuItem.AutoCheck:Boolean
>004E2410    jne         004E2436
 004E2412    mov         eax,dword ptr [ebp-4]
 004E2415    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2419    je          004E2447
 004E241B    mov         eax,dword ptr [ebp-4]
 004E241E    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E2421    mov         edx,dword ptr [eax]
 004E2423    call        dword ptr [edx+78];TMenuActionLink.sub_004DF6C8
 004E2426    test        al,al
>004E2428    jne         004E2447
 004E242A    mov         eax,dword ptr [ebp-4]
 004E242D    cmp         byte ptr [eax+0A8],0;TMenuItem.AutoCheck:Boolean
>004E2434    je          004E2447
 004E2436    mov         eax,dword ptr [ebp-4]
 004E2439    mov         dl,byte ptr [eax+38];TMenuItem.Checked:Boolean
 004E243C    xor         dl,1
 004E243F    mov         eax,dword ptr [ebp-4]
 004E2442    call        TMenuItem.SetChecked
 004E2447    mov         eax,dword ptr [ebp-4]
 004E244A    cmp         word ptr [eax+8A],0;TMenuItem.?f8A:word
>004E2452    je          004E248A
 004E2454    mov         eax,dword ptr [ebp-4]
 004E2457    call        TMenuItem.GetAction
 004E245C    test        eax,eax
>004E245E    je          004E248A
 004E2460    mov         eax,dword ptr [ebp-4]
 004E2463    call        TMenuItem.GetAction
 004E2468    mov         eax,dword ptr [eax+40]
 004E246B    mov         edx,dword ptr [ebp-4]
 004E246E    cmp         eax,dword ptr [edx+88];TMenuItem.OnClick:TNotifyEvent
>004E2474    je          004E248A
 004E2476    mov         ebx,dword ptr [ebp-4]
 004E2479    mov         edx,dword ptr [ebp-4]
 004E247C    mov         eax,dword ptr [ebx+8C];TMenuItem.?f8C:TPopupMenu
 004E2482    call        dword ptr [ebx+88];TMenuItem.OnClick
>004E2488    jmp         004E24CB
 004E248A    mov         eax,dword ptr [ebp-4]
 004E248D    test        byte ptr [eax+1C],10;TMenuItem.FComponentState:TComponentState
>004E2491    jne         004E24AC
 004E2493    mov         eax,dword ptr [ebp-4]
 004E2496    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E249A    je          004E24AC
 004E249C    mov         edx,dword ptr [ebp-4]
 004E249F    mov         eax,dword ptr [ebp-4]
 004E24A2    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E24A5    mov         ecx,dword ptr [eax]
 004E24A7    call        dword ptr [ecx+18];TMenuActionLink.sub_00483C70
>004E24AA    jmp         004E24CB
 004E24AC    mov         eax,dword ptr [ebp-4]
 004E24AF    cmp         word ptr [eax+8A],0;TMenuItem.?f8A:word
>004E24B7    je          004E24CB
 004E24B9    mov         ebx,dword ptr [ebp-4]
 004E24BC    mov         edx,dword ptr [ebp-4]
 004E24BF    mov         eax,dword ptr [ebx+8C];TMenuItem.?f8C:TPopupMenu
 004E24C5    call        dword ptr [ebx+88];TMenuItem.OnClick
 004E24CB    pop         ebx
 004E24CC    pop         ecx
 004E24CD    pop         ebp
 004E24CE    ret
*}
end;

//004E24D0
{*function sub_004E24D0(?:TMenuItem; ?:TMenuItem):?;
begin
 004E24D0    push        ebp
 004E24D1    mov         ebp,esp
 004E24D3    add         esp,0FFFFFFF4
 004E24D6    mov         dword ptr [ebp-8],edx
 004E24D9    mov         dword ptr [ebp-4],eax
 004E24DC    mov         dword ptr [ebp-0C],0FFFFFFFF
 004E24E3    mov         eax,dword ptr [ebp-4]
 004E24E6    cmp         dword ptr [eax+5C],0;TMenuItem.FItems:TList
>004E24EA    je          004E24FD
 004E24EC    mov         edx,dword ptr [ebp-8]
 004E24EF    mov         eax,dword ptr [ebp-4]
 004E24F2    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 004E24F5    call        00478890
 004E24FA    mov         dword ptr [ebp-0C],eax
 004E24FD    mov         eax,dword ptr [ebp-0C]
 004E2500    mov         esp,ebp
 004E2502    pop         ebp
 004E2503    ret
end;*}

//004E2504
{*procedure sub_004E2504(?:?; ?:TMenuItem);
begin
 004E2504    push        ebp
 004E2505    mov         ebp,esp
 004E2507    add         esp,0FFFFFFF8
 004E250A    mov         dword ptr [ebp-8],edx
 004E250D    mov         dword ptr [ebp-4],eax
 004E2510    mov         eax,dword ptr [ebp-4]
 004E2513    call        004E1FAC
 004E2518    mov         edx,eax
 004E251A    mov         ecx,dword ptr [ebp-8]
 004E251D    mov         eax,dword ptr [ebp-4]
 004E2520    call        004E2264
 004E2525    pop         ecx
 004E2526    pop         ecx
 004E2527    pop         ebp
 004E2528    ret
end;*}

//004E252C
procedure sub_004E252C(?:TMenuItem; ?:TMenuItem);
begin
{*
 004E252C    push        ebp
 004E252D    mov         ebp,esp
 004E252F    add         esp,0FFFFFFF4
 004E2532    mov         dword ptr [ebp-8],edx
 004E2535    mov         dword ptr [ebp-4],eax
 004E2538    mov         edx,dword ptr [ebp-8]
 004E253B    mov         eax,dword ptr [ebp-4]
 004E253E    call        004E24D0
 004E2543    mov         dword ptr [ebp-0C],eax
 004E2546    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004E254A    jne         004E2556
 004E254C    mov         eax,[0055B608];^SMenuNotFound:TResStringRec
 004E2551    call        004DF064
 004E2556    mov         edx,dword ptr [ebp-0C]
 004E2559    mov         eax,dword ptr [ebp-4]
 004E255C    call        004E2354
 004E2561    mov         esp,ebp
 004E2563    pop         ebp
 004E2564    ret
*}
end;

//004E2568
{*procedure sub_004E2568(?:?);
begin
 004E2568    push        ebp
 004E2569    mov         ebp,esp
 004E256B    add         esp,0FFFFFFF4
 004E256E    push        ebx
 004E256F    mov         byte ptr [ebp-5],dl
 004E2572    mov         dword ptr [ebp-4],eax
 004E2575    mov         eax,dword ptr [ebp-4]
 004E2578    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>004E257C    jne         004E259A
 004E257E    mov         eax,dword ptr [ebp-4]
 004E2581    mov         eax,dword ptr [eax+4];TMenuItem.FOwner:TComponent
 004E2584    mov         edx,dword ptr ds:[4DE894];TMenu
 004E258A    call        @IsClass
 004E258F    test        al,al
>004E2591    je          004E259A
 004E2593    xor         eax,eax
 004E2595    mov         dword ptr [ebp-0C],eax
>004E2598    jmp         004E25A0
 004E259A    mov         eax,dword ptr [ebp-4]
 004E259D    mov         dword ptr [ebp-0C],eax
 004E25A0    mov         eax,dword ptr [ebp-4]
 004E25A3    cmp         word ptr [eax+82],0;TMenuItem.?f82:word
>004E25AB    je          004E25C6
 004E25AD    mov         al,byte ptr [ebp-5]
 004E25B0    push        eax
 004E25B1    mov         ebx,dword ptr [ebp-4]
 004E25B4    mov         ecx,dword ptr [ebp-0C]
 004E25B7    mov         edx,dword ptr [ebp-4]
 004E25BA    mov         eax,dword ptr [ebx+84];TMenuItem.?f84:TMenu
 004E25C0    call        dword ptr [ebx+80];TMenuItem.FOnChange
 004E25C6    pop         ebx
 004E25C7    mov         esp,ebp
 004E25C9    pop         ebp
 004E25CA    ret
end;*}

//004E25CC
{*procedure sub_004E25CC(?:?; ?:?; ?:?; ?:?);
begin
 004E25CC    push        ebp
 004E25CD    mov         ebp,esp
 004E25CF    add         esp,0FFFFFFF4
 004E25D2    mov         dword ptr [ebp-8],ecx
 004E25D5    mov         dword ptr [ebp-0C],edx
 004E25D8    mov         dword ptr [ebp-4],eax
 004E25DB    cmp         byte ptr [ebp+8],0
>004E25DF    je          004E25FB
 004E25E1    mov         eax,dword ptr [ebp-4]
 004E25E4    cmp         dword ptr [eax+34],0
>004E25E8    jne         004E25F3
 004E25EA    mov         eax,dword ptr [ebp-4]
 004E25ED    cmp         dword ptr [eax+6C],0
>004E25F1    je          004E25FB
 004E25F3    mov         eax,dword ptr [ebp-4]
 004E25F6    call        004E01B8
 004E25FB    mov         eax,dword ptr [ebp-4]
 004E25FE    cmp         dword ptr [eax+64],0
>004E2602    je          004E2619
 004E2604    push        0
 004E2606    mov         ecx,dword ptr [ebp-8]
 004E2609    mov         edx,dword ptr [ebp-4]
 004E260C    mov         eax,dword ptr [ebp-4]
 004E260F    mov         eax,dword ptr [eax+64]
 004E2612    call        004E25CC
>004E2617    jmp         004E2639
 004E2619    mov         eax,dword ptr [ebp-4]
 004E261C    mov         eax,dword ptr [eax+4]
 004E261F    mov         edx,dword ptr ds:[4DE988];TMainMenu
 004E2625    call        @IsClass
 004E262A    test        al,al
>004E262C    je          004E2639
 004E262E    mov         eax,dword ptr [ebp-4]
 004E2631    mov         eax,dword ptr [eax+4]
 004E2634    call        004E4C1C
 004E2639    mov         esp,ebp
 004E263B    pop         ebp
 004E263C    ret         4
end;*}

//004E2640
{*function TMenuItem.GetBitmap:?;
begin
 004E2640    push        ebp
 004E2641    mov         ebp,esp
 004E2643    add         esp,0FFFFFFF8
 004E2646    mov         dword ptr [ebp-4],eax
 004E2649    mov         eax,dword ptr [ebp-4]
 004E264C    cmp         dword ptr [eax+4C],0;TMenuItem.FBitmap:TBitmap
>004E2650    jne         004E2664
 004E2652    mov         dl,1
 004E2654    mov         eax,[00485C6C];TBitmap
 004E2659    call        TBitmap.Create;TBitmap.Create
 004E265E    mov         edx,dword ptr [ebp-4]
 004E2661    mov         dword ptr [edx+4C],eax;TMenuItem.FBitmap:TBitmap
 004E2664    mov         dl,1
 004E2666    mov         eax,dword ptr [ebp-4]
 004E2669    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 004E266C    mov         ecx,dword ptr [eax]
 004E266E    call        dword ptr [ecx+3C];TBitmap.sub_0048A230
 004E2671    mov         eax,dword ptr [ebp-4]
 004E2674    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 004E2677    mov         dword ptr [ebp-8],eax
 004E267A    mov         eax,dword ptr [ebp-8]
 004E267D    pop         ecx
 004E267E    pop         ecx
 004E267F    pop         ebp
 004E2680    ret
end;*}

//004E2684
procedure TMenuItem.SetAction(Value:TBasicAction);
begin
{*
 004E2684    push        ebp
 004E2685    mov         ebp,esp
 004E2687    add         esp,0FFFFFFF8
 004E268A    push        esi
 004E268B    mov         dword ptr [ebp-8],edx
 004E268E    mov         dword ptr [ebp-4],eax
 004E2691    cmp         dword ptr [ebp-8],0
>004E2695    jne         004E26AC
 004E2697    mov         eax,dword ptr [ebp-4]
 004E269A    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E269D    call        TObject.Free
 004E26A2    mov         eax,dword ptr [ebp-4]
 004E26A5    xor         edx,edx
 004E26A7    mov         dword ptr [eax+44],edx;TMenuItem.FActionLink:TMenuActionLink
>004E26AA    jmp         004E2714
 004E26AC    mov         eax,dword ptr [ebp-4]
 004E26AF    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E26B3    jne         004E26CF
 004E26B5    mov         eax,dword ptr [ebp-4]
 004E26B8    mov         si,0FFEE
 004E26BC    call        @CallDynaInst;TMenuItem.sub_004E1F94
 004E26C1    mov         ecx,dword ptr [ebp-4]
 004E26C4    mov         dl,1
 004E26C6    call        dword ptr [eax+14]
 004E26C9    mov         edx,dword ptr [ebp-4]
 004E26CC    mov         dword ptr [edx+44],eax;TMenuItem.FActionLink:TMenuActionLink
 004E26CF    mov         edx,dword ptr [ebp-8]
 004E26D2    mov         eax,dword ptr [ebp-4]
 004E26D5    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E26D8    mov         ecx,dword ptr [eax]
 004E26DA    call        dword ptr [ecx+0C];TMenuActionLink.sub_00483CA8
 004E26DD    mov         eax,dword ptr [ebp-4]
 004E26E0    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E26E3    mov         edx,dword ptr [ebp-4]
 004E26E6    mov         dword ptr [eax+0C],edx;TMenuActionLink.?fC:TSpeedButton
 004E26E9    mov         dword ptr [eax+8],4E2A58;TMenuActionLink.FOnChange:TNotifyEvent sub_004E2A58
 004E26F0    mov         eax,dword ptr [ebp-8]
 004E26F3    test        byte ptr [eax+1C],1;TBasicAction.FComponentState:TComponentState
 004E26F7    setne       cl
 004E26FA    mov         edx,dword ptr [ebp-8]
 004E26FD    mov         eax,dword ptr [ebp-4]
 004E2700    mov         si,0FFEF
 004E2704    call        @CallDynaInst;TMenuItem.sub_004E28C4
 004E2709    mov         edx,dword ptr [ebp-4]
 004E270C    mov         eax,dword ptr [ebp-8]
 004E270F    call        00483020
 004E2714    pop         esi
 004E2715    pop         ecx
 004E2716    pop         ecx
 004E2717    pop         ebp
 004E2718    ret
*}
end;

//004E271C
procedure TMenuItem.SetBitmap(Value:TBitmap);
begin
{*
 004E271C    push        ebp
 004E271D    mov         ebp,esp
 004E271F    add         esp,0FFFFFFF8
 004E2722    mov         dword ptr [ebp-8],edx
 004E2725    mov         dword ptr [ebp-4],eax
 004E2728    mov         eax,dword ptr [ebp-4]
 004E272B    cmp         dword ptr [eax+4C],0;TMenuItem.FBitmap:TBitmap
>004E272F    jne         004E2743
 004E2731    mov         dl,1
 004E2733    mov         eax,[00485C6C];TBitmap
 004E2738    call        TBitmap.Create;TBitmap.Create
 004E273D    mov         edx,dword ptr [ebp-4]
 004E2740    mov         dword ptr [edx+4C],eax;TMenuItem.FBitmap:TBitmap
 004E2743    mov         edx,dword ptr [ebp-8]
 004E2746    mov         eax,dword ptr [ebp-4]
 004E2749    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 004E274C    mov         ecx,dword ptr [eax]
 004E274E    call        dword ptr [ecx+8];TBitmap.sub_0048CED4
 004E2751    mov         dl,1
 004E2753    mov         eax,dword ptr [ebp-4]
 004E2756    mov         ecx,dword ptr [eax]
 004E2758    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E275B    pop         ecx
 004E275C    pop         ecx
 004E275D    pop         ebp
 004E275E    ret
*}
end;

//004E2760
{*procedure sub_004E2760(?:?);
begin
 004E2760    push        ebp
 004E2761    mov         ebp,esp
 004E2763    add         esp,0FFFFFFF4
 004E2766    mov         dword ptr [ebp-4],eax
 004E2769    mov         eax,dword ptr [ebp-4]
 004E276C    call        004E1FAC
 004E2771    dec         eax
 004E2772    test        eax,eax
>004E2774    jl          004E2799
 004E2776    inc         eax
 004E2777    mov         dword ptr [ebp-0C],eax
 004E277A    mov         dword ptr [ebp-8],0
 004E2781    mov         edx,dword ptr [ebp-8]
 004E2784    mov         eax,dword ptr [ebp-4]
 004E2787    call        004E1FD8
 004E278C    mov         edx,dword ptr [eax]
 004E278E    call        dword ptr [edx+40]
 004E2791    inc         dword ptr [ebp-8]
 004E2794    dec         dword ptr [ebp-0C]
>004E2797    jne         004E2781
 004E2799    mov         esp,ebp
 004E279B    pop         ebp
 004E279C    ret
end;*}

//004E27A0
procedure TMenuItem.sub_00483570;
begin
{*
 004E27A0    push        ebp
 004E27A1    mov         ebp,esp
 004E27A3    add         esp,0FFFFFFF8
 004E27A6    mov         dword ptr [ebp-4],eax
 004E27A9    mov         eax,dword ptr [ebp-4]
 004E27AC    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>004E27B0    je          004E27CC
 004E27B2    mov         eax,dword ptr [ebp-4]
 004E27B5    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E27B8    cmp         dword ptr [eax+70],0;TMenuItem.FMenu:TMenu
>004E27BC    je          004E27CC
 004E27BE    mov         eax,dword ptr [ebp-4]
 004E27C1    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E27C4    mov         eax,dword ptr [eax+70];TMenuItem.FMenu:TMenu
 004E27C7    mov         dword ptr [ebp-8],eax
>004E27CA    jmp         004E27D5
 004E27CC    mov         eax,dword ptr [ebp-4]
 004E27CF    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E27D2    mov         dword ptr [ebp-8],eax
 004E27D5    mov         eax,dword ptr [ebp-8]
 004E27D8    pop         ecx
 004E27D9    pop         ecx
 004E27DA    pop         ebp
 004E27DB    ret
*}
end;

//004E27DC
{*procedure TMenuItem.sub_00483588(?:?);
begin
 004E27DC    push        ebp
 004E27DD    mov         ebp,esp
 004E27DF    add         esp,0FFFFFFF8
 004E27E2    mov         dword ptr [ebp-8],edx
 004E27E5    mov         dword ptr [ebp-4],eax
 004E27E8    mov         eax,dword ptr [ebp-4]
 004E27EB    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>004E27EF    je          004E27FF
 004E27F1    mov         edx,dword ptr [ebp-4]
 004E27F4    mov         eax,dword ptr [ebp-4]
 004E27F7    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 004E27FA    call        004E252C
 004E27FF    cmp         dword ptr [ebp-8],0
>004E2803    je          004E2844
 004E2805    mov         eax,dword ptr [ebp-8]
 004E2808    mov         edx,dword ptr ds:[4DE894];TMenu
 004E280E    call        @IsClass
 004E2813    test        al,al
>004E2815    je          004E2827
 004E2817    mov         eax,dword ptr [ebp-8]
 004E281A    mov         eax,dword ptr [eax+34]
 004E281D    mov         edx,dword ptr [ebp-4]
 004E2820    call        004E2504
>004E2825    jmp         004E2844
 004E2827    mov         eax,dword ptr [ebp-8]
 004E282A    mov         edx,dword ptr ds:[4DE470];TMenuItem
 004E2830    call        @IsClass
 004E2835    test        al,al
>004E2837    je          004E2844
 004E2839    mov         edx,dword ptr [ebp-4]
 004E283C    mov         eax,dword ptr [ebp-8]
 004E283F    call        004E2504
 004E2844    pop         ecx
 004E2845    pop         ecx
 004E2846    pop         ebp
 004E2847    ret
end;*}

//004E2848
function TMenuItem.GetParentMenu:TMenu;
begin
{*
 004E2848    push        ebp
 004E2849    mov         ebp,esp
 004E284B    add         esp,0FFFFFFF4
 004E284E    mov         dword ptr [ebp-4],eax
 004E2851    mov         eax,dword ptr [ebp-4]
 004E2854    mov         dword ptr [ebp-0C],eax
>004E2857    jmp         004E2862
 004E2859    mov         eax,dword ptr [ebp-0C]
 004E285C    mov         eax,dword ptr [eax+64]
 004E285F    mov         dword ptr [ebp-0C],eax
 004E2862    mov         eax,dword ptr [ebp-0C]
 004E2865    cmp         dword ptr [eax+64],0
>004E2869    jne         004E2859
 004E286B    mov         eax,dword ptr [ebp-0C]
 004E286E    mov         eax,dword ptr [eax+70]
 004E2871    mov         dword ptr [ebp-8],eax
 004E2874    mov         eax,dword ptr [ebp-8]
 004E2877    mov         esp,ebp
 004E2879    pop         ebp
 004E287A    ret
*}
end;

//004E287C
procedure TMenuItem.SetRadioItem(Value:Boolean);
begin
{*
 004E287C    push        ebp
 004E287D    mov         ebp,esp
 004E287F    add         esp,0FFFFFFF8
 004E2882    mov         byte ptr [ebp-5],dl
 004E2885    mov         dword ptr [ebp-4],eax
 004E2888    mov         eax,dword ptr [ebp-4]
 004E288B    mov         al,byte ptr [eax+3D];TMenuItem.RadioItem:Boolean
 004E288E    cmp         al,byte ptr [ebp-5]
>004E2891    je          004E28C0
 004E2893    mov         al,byte ptr [ebp-5]
 004E2896    mov         edx,dword ptr [ebp-4]
 004E2899    mov         byte ptr [edx+3D],al;TMenuItem.RadioItem:Boolean
 004E289C    mov         eax,dword ptr [ebp-4]
 004E289F    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>004E28A3    je          004E28B6
 004E28A5    mov         eax,dword ptr [ebp-4]
 004E28A8    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>004E28AC    je          004E28B6
 004E28AE    mov         eax,dword ptr [ebp-4]
 004E28B1    call        004E1D70
 004E28B6    mov         dl,1
 004E28B8    mov         eax,dword ptr [ebp-4]
 004E28BB    mov         ecx,dword ptr [eax]
 004E28BD    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E28C0    pop         ecx
 004E28C1    pop         ecx
 004E28C2    pop         ebp
 004E28C3    ret
*}
end;

//004E28C4
{*procedure TMenuItem.sub_004E28C4(?:?; ?:?);
begin
 004E28C4    push        ebp
 004E28C5    mov         ebp,esp
 004E28C7    add         esp,0FFFFFFF4
 004E28CA    mov         byte ptr [ebp-9],cl
 004E28CD    mov         dword ptr [ebp-8],edx
 004E28D0    mov         dword ptr [ebp-4],eax
 004E28D3    mov         eax,dword ptr [ebp-8]
 004E28D6    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004E28DC    call        @IsClass
 004E28E1    test        al,al
>004E28E3    je          004E2A52
 004E28E9    cmp         byte ptr [ebp-9],0
>004E28ED    je          004E28FB
 004E28EF    mov         eax,dword ptr [ebp-4]
 004E28F2    cmp         byte ptr [eax+0A8],0;TMenuItem.AutoCheck:Boolean
>004E28F9    jne         004E290D
 004E28FB    mov         eax,dword ptr [ebp-8]
 004E28FE    mov         al,byte ptr [eax+95]
 004E2904    mov         edx,dword ptr [ebp-4]
 004E2907    mov         byte ptr [edx+0A8],al;TMenuItem.AutoCheck:Boolean
 004E290D    cmp         byte ptr [ebp-9],0
>004E2911    je          004E291C
 004E2913    mov         eax,dword ptr [ebp-4]
 004E2916    cmp         dword ptr [eax+30],0;TMenuItem.Caption:String
>004E291A    jne         004E292A
 004E291C    mov         eax,dword ptr [ebp-8]
 004E291F    mov         edx,dword ptr [eax+64]
 004E2922    mov         eax,dword ptr [ebp-4]
 004E2925    call        TMenuItem.SetCaption
 004E292A    cmp         byte ptr [ebp-9],0
>004E292E    je          004E2939
 004E2930    mov         eax,dword ptr [ebp-4]
 004E2933    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>004E2937    jne         004E2947
 004E2939    mov         eax,dword ptr [ebp-8]
 004E293C    mov         dl,byte ptr [eax+69]
 004E293F    mov         eax,dword ptr [ebp-4]
 004E2942    call        TMenuItem.SetChecked
 004E2947    cmp         byte ptr [ebp-9],0
>004E294B    je          004E2956
 004E294D    mov         eax,dword ptr [ebp-4]
 004E2950    cmp         byte ptr [eax+39],1;TMenuItem.Enabled:Boolean
>004E2954    jne         004E2964
 004E2956    mov         eax,dword ptr [ebp-8]
 004E2959    mov         dl,byte ptr [eax+6A]
 004E295C    mov         eax,dword ptr [ebp-4]
 004E295F    call        TMenuItem.SetEnabled
 004E2964    cmp         byte ptr [ebp-9],0
>004E2968    je          004E2973
 004E296A    mov         eax,dword ptr [ebp-4]
 004E296D    cmp         dword ptr [eax+54],0;TMenuItem.HelpContext:THelpContext
>004E2971    jne         004E297F
 004E2973    mov         eax,dword ptr [ebp-8]
 004E2976    mov         eax,dword ptr [eax+74]
 004E2979    mov         edx,dword ptr [ebp-4]
 004E297C    mov         dword ptr [edx+54],eax;TMenuItem.HelpContext:THelpContext
 004E297F    cmp         byte ptr [ebp-9],0
>004E2983    je          004E298E
 004E2985    mov         eax,dword ptr [ebp-4]
 004E2988    cmp         dword ptr [eax+58],0;TMenuItem.Hint:String
>004E298C    jne         004E299F
 004E298E    mov         eax,dword ptr [ebp-4]
 004E2991    add         eax,58;TMenuItem.Hint:String
 004E2994    mov         edx,dword ptr [ebp-8]
 004E2997    mov         edx,dword ptr [edx+7C]
 004E299A    call        @LStrAsg
 004E299F    mov         eax,dword ptr [ebp-4]
 004E29A2    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>004E29A6    je          004E29C5
 004E29A8    cmp         byte ptr [ebp-9],0
>004E29AC    je          004E29B7
 004E29AE    mov         eax,dword ptr [ebp-4]
 004E29B1    cmp         byte ptr [eax+3F],0;TMenuItem.GroupIndex:byte
>004E29B5    jne         004E29C5
 004E29B7    mov         eax,dword ptr [ebp-8]
 004E29BA    mov         dl,byte ptr [eax+6C]
 004E29BD    mov         eax,dword ptr [ebp-4]
 004E29C0    call        TMenuItem.SetGroupIndex
 004E29C5    cmp         byte ptr [ebp-9],0
>004E29C9    je          004E29D4
 004E29CB    mov         eax,dword ptr [ebp-4]
 004E29CE    cmp         dword ptr [eax+40],0FFFFFFFF;TMenuItem.ImageIndex:TImageIndex
>004E29D2    jne         004E29E5
 004E29D4    mov         eax,dword ptr [ebp-8]
 004E29D7    mov         edx,dword ptr [eax+80]
 004E29DD    mov         eax,dword ptr [ebp-4]
 004E29E0    call        TMenuItem.SetImageIndex
 004E29E5    cmp         byte ptr [ebp-9],0
>004E29E9    je          004E29F5
 004E29EB    mov         eax,dword ptr [ebp-4]
 004E29EE    cmp         word ptr [eax+60],0;TMenuItem.ShortCut:TShortCut
>004E29F3    jne         004E2A07
 004E29F5    mov         eax,dword ptr [ebp-8]
 004E29F8    mov         dx,word ptr [eax+84]
 004E29FF    mov         eax,dword ptr [ebp-4]
 004E2A02    call        TMenuItem.SetShortCut
 004E2A07    cmp         byte ptr [ebp-9],0
>004E2A0B    je          004E2A16
 004E2A0D    mov         eax,dword ptr [ebp-4]
 004E2A10    cmp         byte ptr [eax+3E],1;TMenuItem.Visible:Boolean
>004E2A14    jne         004E2A27
 004E2A16    mov         eax,dword ptr [ebp-8]
 004E2A19    mov         dl,byte ptr [eax+86]
 004E2A1F    mov         eax,dword ptr [ebp-4]
 004E2A22    call        TMenuItem.SetVisible
 004E2A27    cmp         byte ptr [ebp-9],0
>004E2A2B    je          004E2A3A
 004E2A2D    mov         eax,dword ptr [ebp-4]
 004E2A30    cmp         word ptr [eax+8A],0;TMenuItem.?f8A:word
>004E2A38    jne         004E2A52
 004E2A3A    mov         eax,dword ptr [ebp-8]
 004E2A3D    mov         edx,dword ptr [ebp-4]
 004E2A40    mov         ecx,dword ptr [eax+40]
 004E2A43    mov         dword ptr [edx+88],ecx;TMenuItem.OnClick:TNotifyEvent
 004E2A49    mov         ecx,dword ptr [eax+44]
 004E2A4C    mov         dword ptr [edx+8C],ecx;TMenuItem.?f8C:TPopupMenu
 004E2A52    mov         esp,ebp
 004E2A54    pop         ebp
 004E2A55    ret
end;*}

//004E2A58
{*procedure sub_004E2A58(?:?; ?:?);
begin
 004E2A58    push        ebp
 004E2A59    mov         ebp,esp
 004E2A5B    add         esp,0FFFFFFF8
 004E2A5E    push        esi
 004E2A5F    mov         dword ptr [ebp-8],edx
 004E2A62    mov         dword ptr [ebp-4],eax
 004E2A65    mov         eax,dword ptr [ebp-4]
 004E2A68    call        TMenuItem.GetAction
 004E2A6D    cmp         eax,dword ptr [ebp-8]
>004E2A70    jne         004E2A83
 004E2A72    xor         ecx,ecx
 004E2A74    mov         edx,dword ptr [ebp-8]
 004E2A77    mov         eax,dword ptr [ebp-4]
 004E2A7A    mov         si,0FFEF
 004E2A7E    call        @CallDynaInst
 004E2A83    pop         esi
 004E2A84    pop         ecx
 004E2A85    pop         ecx
 004E2A86    pop         ebp
 004E2A87    ret
end;*}

//004E2A88
function TMenuItem.IsStoredCaption(Value:String):Boolean;
begin
{*
 004E2A88    push        ebp
 004E2A89    mov         ebp,esp
 004E2A8B    add         esp,0FFFFFFF8
 004E2A8E    mov         dword ptr [ebp-4],eax
 004E2A91    mov         eax,dword ptr [ebp-4]
 004E2A94    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2A98    je          004E2AAD
 004E2A9A    mov         eax,dword ptr [ebp-4]
 004E2A9D    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E2AA0    mov         edx,dword ptr [eax]
 004E2AA2    call        dword ptr [edx+20];TMenuActionLink.sub_004DF700
 004E2AA5    test        al,al
>004E2AA7    je          004E2AAD
 004E2AA9    xor         eax,eax
>004E2AAB    jmp         004E2AAF
 004E2AAD    mov         al,1
 004E2AAF    mov         byte ptr [ebp-5],al
 004E2AB2    mov         al,byte ptr [ebp-5]
 004E2AB5    pop         ecx
 004E2AB6    pop         ecx
 004E2AB7    pop         ebp
 004E2AB8    ret
*}
end;

//004E2ABC
function TMenuItem.IsStoredChecked(Value:Boolean):Boolean;
begin
{*
 004E2ABC    push        ebp
 004E2ABD    mov         ebp,esp
 004E2ABF    add         esp,0FFFFFFF8
 004E2AC2    mov         dword ptr [ebp-4],eax
 004E2AC5    mov         eax,dword ptr [ebp-4]
 004E2AC8    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2ACC    je          004E2AE1
 004E2ACE    mov         eax,dword ptr [ebp-4]
 004E2AD1    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E2AD4    mov         edx,dword ptr [eax]
 004E2AD6    call        dword ptr [edx+24];TMenuActionLink.sub_004DF74C
 004E2AD9    test        al,al
>004E2ADB    je          004E2AE1
 004E2ADD    xor         eax,eax
>004E2ADF    jmp         004E2AE3
 004E2AE1    mov         al,1
 004E2AE3    mov         byte ptr [ebp-5],al
 004E2AE6    mov         al,byte ptr [ebp-5]
 004E2AE9    pop         ecx
 004E2AEA    pop         ecx
 004E2AEB    pop         ebp
 004E2AEC    ret
*}
end;

//004E2AF0
function TMenuItem.IsStoredEnabled(Value:Boolean):Boolean;
begin
{*
 004E2AF0    push        ebp
 004E2AF1    mov         ebp,esp
 004E2AF3    add         esp,0FFFFFFF8
 004E2AF6    mov         dword ptr [ebp-4],eax
 004E2AF9    mov         eax,dword ptr [ebp-4]
 004E2AFC    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2B00    je          004E2B15
 004E2B02    mov         eax,dword ptr [ebp-4]
 004E2B05    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E2B08    mov         edx,dword ptr [eax]
 004E2B0A    call        dword ptr [edx+28];TMenuActionLink.sub_004DF790
 004E2B0D    test        al,al
>004E2B0F    je          004E2B15
 004E2B11    xor         eax,eax
>004E2B13    jmp         004E2B17
 004E2B15    mov         al,1
 004E2B17    mov         byte ptr [ebp-5],al
 004E2B1A    mov         al,byte ptr [ebp-5]
 004E2B1D    pop         ecx
 004E2B1E    pop         ecx
 004E2B1F    pop         ebp
 004E2B20    ret
*}
end;

//004E2B24
function TMenuItem.IsStoredHint(Value:String):Boolean;
begin
{*
 004E2B24    push        ebp
 004E2B25    mov         ebp,esp
 004E2B27    add         esp,0FFFFFFF8
 004E2B2A    mov         dword ptr [ebp-4],eax
 004E2B2D    mov         eax,dword ptr [ebp-4]
 004E2B30    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2B34    je          004E2B49
 004E2B36    mov         eax,dword ptr [ebp-4]
 004E2B39    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E2B3C    mov         edx,dword ptr [eax]
 004E2B3E    call        dword ptr [edx+38];TMenuActionLink.sub_004DF818
 004E2B41    test        al,al
>004E2B43    je          004E2B49
 004E2B45    xor         eax,eax
>004E2B47    jmp         004E2B4B
 004E2B49    mov         al,1
 004E2B4B    mov         byte ptr [ebp-5],al
 004E2B4E    mov         al,byte ptr [ebp-5]
 004E2B51    pop         ecx
 004E2B52    pop         ecx
 004E2B53    pop         ebp
 004E2B54    ret
*}
end;

//004E2B58
function TMenuItem.IsStoredHelpContext(Value:THelpContext):Boolean;
begin
{*
 004E2B58    push        ebp
 004E2B59    mov         ebp,esp
 004E2B5B    add         esp,0FFFFFFF8
 004E2B5E    mov         dword ptr [ebp-4],eax
 004E2B61    mov         eax,dword ptr [ebp-4]
 004E2B64    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2B68    je          004E2B7D
 004E2B6A    mov         eax,dword ptr [ebp-4]
 004E2B6D    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E2B70    mov         edx,dword ptr [eax]
 004E2B72    call        dword ptr [edx+30];TMenuActionLink.sub_004DF7D4
 004E2B75    test        al,al
>004E2B77    je          004E2B7D
 004E2B79    xor         eax,eax
>004E2B7B    jmp         004E2B7F
 004E2B7D    mov         al,1
 004E2B7F    mov         byte ptr [ebp-5],al
 004E2B82    mov         al,byte ptr [ebp-5]
 004E2B85    pop         ecx
 004E2B86    pop         ecx
 004E2B87    pop         ebp
 004E2B88    ret
*}
end;

//004E2B8C
function TMenuItem.IsStoredImageIndex(Value:TImageIndex):Boolean;
begin
{*
 004E2B8C    push        ebp
 004E2B8D    mov         ebp,esp
 004E2B8F    add         esp,0FFFFFFF8
 004E2B92    mov         dword ptr [ebp-4],eax
 004E2B95    mov         eax,dword ptr [ebp-4]
 004E2B98    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2B9C    je          004E2BB1
 004E2B9E    mov         eax,dword ptr [ebp-4]
 004E2BA1    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E2BA4    mov         edx,dword ptr [eax]
 004E2BA6    call        dword ptr [edx+3C];TMenuActionLink.sub_004DF8B8
 004E2BA9    test        al,al
>004E2BAB    je          004E2BB1
 004E2BAD    xor         eax,eax
>004E2BAF    jmp         004E2BB3
 004E2BB1    mov         al,1
 004E2BB3    mov         byte ptr [ebp-5],al
 004E2BB6    mov         al,byte ptr [ebp-5]
 004E2BB9    pop         ecx
 004E2BBA    pop         ecx
 004E2BBB    pop         ebp
 004E2BBC    ret
*}
end;

//004E2BC0
function TMenuItem.IsStoredShortCut(Value:TShortCut):Boolean;
begin
{*
 004E2BC0    push        ebp
 004E2BC1    mov         ebp,esp
 004E2BC3    add         esp,0FFFFFFF8
 004E2BC6    mov         dword ptr [ebp-4],eax
 004E2BC9    mov         eax,dword ptr [ebp-4]
 004E2BCC    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2BD0    je          004E2BE5
 004E2BD2    mov         eax,dword ptr [ebp-4]
 004E2BD5    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E2BD8    mov         edx,dword ptr [eax]
 004E2BDA    call        dword ptr [edx+40];TMenuActionLink.sub_004DF900
 004E2BDD    test        al,al
>004E2BDF    je          004E2BE5
 004E2BE1    xor         eax,eax
>004E2BE3    jmp         004E2BE7
 004E2BE5    mov         al,1
 004E2BE7    mov         byte ptr [ebp-5],al
 004E2BEA    mov         al,byte ptr [ebp-5]
 004E2BED    pop         ecx
 004E2BEE    pop         ecx
 004E2BEF    pop         ebp
 004E2BF0    ret
*}
end;

//004E2BF4
function TMenuItem.IsStoredVisible(Value:Boolean):Boolean;
begin
{*
 004E2BF4    push        ebp
 004E2BF5    mov         ebp,esp
 004E2BF7    add         esp,0FFFFFFF8
 004E2BFA    mov         dword ptr [ebp-4],eax
 004E2BFD    mov         eax,dword ptr [ebp-4]
 004E2C00    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2C04    je          004E2C19
 004E2C06    mov         eax,dword ptr [ebp-4]
 004E2C09    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E2C0C    mov         edx,dword ptr [eax]
 004E2C0E    call        dword ptr [edx+44];TMenuActionLink.sub_004DF94C
 004E2C11    test        al,al
>004E2C13    je          004E2C19
 004E2C15    xor         eax,eax
>004E2C17    jmp         004E2C1B
 004E2C19    mov         al,1
 004E2C1B    mov         byte ptr [ebp-5],al
 004E2C1E    mov         al,byte ptr [ebp-5]
 004E2C21    pop         ecx
 004E2C22    pop         ecx
 004E2C23    pop         ebp
 004E2C24    ret
*}
end;

//004E2C28
function TMenuItem.IsStoredOnClick(Value:TNotifyEvent):Boolean;
begin
{*
 004E2C28    push        ebp
 004E2C29    mov         ebp,esp
 004E2C2B    add         esp,0FFFFFFF8
 004E2C2E    mov         dword ptr [ebp-4],eax
 004E2C31    mov         eax,dword ptr [ebp-4]
 004E2C34    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>004E2C38    je          004E2C4D
 004E2C3A    mov         eax,dword ptr [ebp-4]
 004E2C3D    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 004E2C40    mov         edx,dword ptr [eax]
 004E2C42    call        dword ptr [edx+8];TMenuActionLink.sub_004DF994
 004E2C45    test        al,al
>004E2C47    je          004E2C4D
 004E2C49    xor         eax,eax
>004E2C4B    jmp         004E2C4F
 004E2C4D    mov         al,1
 004E2C4F    mov         byte ptr [ebp-5],al
 004E2C52    mov         al,byte ptr [ebp-5]
 004E2C55    pop         ecx
 004E2C56    pop         ecx
 004E2C57    pop         ebp
 004E2C58    ret
*}
end;

//004E2C5C
{*procedure sub_004E2C5C(?:?);
begin
 004E2C5C    push        ebp
 004E2C5D    mov         ebp,esp
 004E2C5F    add         esp,0FFFFFFF8
 004E2C62    mov         dword ptr [ebp-8],edx
 004E2C65    mov         dword ptr [ebp-4],eax
 004E2C68    mov         eax,dword ptr [ebp-8]
 004E2C6B    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004E2C71    call        @IsClass
 004E2C76    test        al,al
>004E2C78    je          004E2CE7
 004E2C7A    mov         eax,dword ptr [ebp-4]
 004E2C7D    mov         dl,byte ptr [eax+39];TMenuItem.Enabled:Boolean
 004E2C80    mov         eax,dword ptr [ebp-8]
 004E2C83    call        TVirtualListAction.SetEnabled
 004E2C88    mov         eax,dword ptr [ebp-4]
 004E2C8B    mov         edx,dword ptr [eax+54];TMenuItem.HelpContext:THelpContext
 004E2C8E    mov         eax,dword ptr [ebp-8]
 004E2C91    mov         ecx,dword ptr [eax]
 004E2C93    call        dword ptr [ecx+48]
 004E2C96    mov         eax,dword ptr [ebp-4]
 004E2C99    mov         edx,dword ptr [eax+58];TMenuItem.Hint:String
 004E2C9C    mov         eax,dword ptr [ebp-8]
 004E2C9F    call        TVirtualListAction.SetHint
 004E2CA4    mov         eax,dword ptr [ebp-4]
 004E2CA7    mov         edx,dword ptr [eax+40];TMenuItem.ImageIndex:TImageIndex
 004E2CAA    mov         eax,dword ptr [ebp-8]
 004E2CAD    call        TFileExit.SetImageIndex
 004E2CB2    mov         eax,dword ptr [ebp-4]
 004E2CB5    mov         edx,dword ptr [eax+30];TMenuItem.Caption:String
 004E2CB8    mov         eax,dword ptr [ebp-8]
 004E2CBB    call        TVirtualListAction.SetCaption
 004E2CC0    mov         eax,dword ptr [ebp-4]
 004E2CC3    mov         dl,byte ptr [eax+3E];TMenuItem.Visible:Boolean
 004E2CC6    mov         eax,dword ptr [ebp-8]
 004E2CC9    call        TVirtualListAction.SetVisible
 004E2CCE    mov         eax,dword ptr [ebp-4]
 004E2CD1    push        dword ptr [eax+8C];TMenuItem.?f8C:TPopupMenu
 004E2CD7    push        dword ptr [eax+88];TMenuItem.OnClick:TNotifyEvent
 004E2CDD    mov         eax,dword ptr [ebp-8]
 004E2CE0    mov         edx,dword ptr [eax]
 004E2CE2    call        dword ptr [edx+34]
>004E2CE5    jmp         004E2CF2
 004E2CE7    mov         edx,dword ptr [ebp-8]
 004E2CEA    mov         eax,dword ptr [ebp-4]
 004E2CED    call        004791AC
 004E2CF2    pop         ecx
 004E2CF3    pop         ecx
 004E2CF4    pop         ebp
 004E2CF5    ret
end;*}

//004E2CF8
{*procedure sub_004E2CF8(?:?; ?:?);
begin
 004E2CF8    push        ebp
 004E2CF9    mov         ebp,esp
 004E2CFB    add         esp,0FFFFFFF4
 004E2CFE    mov         byte ptr [ebp-9],cl
 004E2D01    mov         dword ptr [ebp-8],edx
 004E2D04    mov         dword ptr [ebp-4],eax
 004E2D07    mov         cl,byte ptr [ebp-9]
 004E2D0A    mov         edx,dword ptr [ebp-8]
 004E2D0D    mov         eax,dword ptr [ebp-4]
 004E2D10    call        00483398
 004E2D15    cmp         byte ptr [ebp-9],1
>004E2D19    jne         004E2D60
 004E2D1B    mov         eax,dword ptr [ebp-4]
 004E2D1E    call        TMenuItem.GetAction
 004E2D23    cmp         eax,dword ptr [ebp-8]
>004E2D26    jne         004E2D34
 004E2D28    xor         edx,edx
 004E2D2A    mov         eax,dword ptr [ebp-4]
 004E2D2D    call        TMenuItem.SetAction
>004E2D32    jmp         004E2D60
 004E2D34    mov         eax,dword ptr [ebp-8]
 004E2D37    mov         edx,dword ptr [ebp-4]
 004E2D3A    cmp         eax,dword ptr [edx+7C];TMenuItem.SubMenuImages:TCustomImageList
>004E2D3D    jne         004E2D4B
 004E2D3F    xor         edx,edx
 004E2D41    mov         eax,dword ptr [ebp-4]
 004E2D44    call        TMenuItem.SetSubMenuImages
>004E2D49    jmp         004E2D60
 004E2D4B    mov         eax,dword ptr [ebp-8]
 004E2D4E    mov         edx,dword ptr [ebp-4]
 004E2D51    cmp         eax,dword ptr [edx+68];TMenuItem.FMerged:TMenuItem
>004E2D54    jne         004E2D60
 004E2D56    xor         edx,edx
 004E2D58    mov         eax,dword ptr [ebp-4]
 004E2D5B    call        004E00F8
 004E2D60    mov         esp,ebp
 004E2D62    pop         ebp
 004E2D63    ret
end;*}

//004E2D64
procedure TMenuItem.SetSubMenuImages(Value:TCustomImageList);
begin
{*
 004E2D64    push        ebp
 004E2D65    mov         ebp,esp
 004E2D67    add         esp,0FFFFFFF8
 004E2D6A    mov         dword ptr [ebp-8],edx
 004E2D6D    mov         dword ptr [ebp-4],eax
 004E2D70    mov         eax,dword ptr [ebp-4]
 004E2D73    cmp         dword ptr [eax+7C],0;TMenuItem.SubMenuImages:TCustomImageList
>004E2D77    je          004E2D8A
 004E2D79    mov         eax,dword ptr [ebp-4]
 004E2D7C    mov         edx,dword ptr [eax+78];TMenuItem.FImageChangeLink:TChangeLink
 004E2D7F    mov         eax,dword ptr [ebp-4]
 004E2D82    mov         eax,dword ptr [eax+7C];TMenuItem.SubMenuImages:TCustomImageList
 004E2D85    call        004DD6F8
 004E2D8A    mov         eax,dword ptr [ebp-8]
 004E2D8D    mov         edx,dword ptr [ebp-4]
 004E2D90    mov         dword ptr [edx+7C],eax;TMenuItem.SubMenuImages:TCustomImageList
 004E2D93    mov         eax,dword ptr [ebp-4]
 004E2D96    cmp         dword ptr [eax+7C],0;TMenuItem.SubMenuImages:TCustomImageList
>004E2D9A    je          004E2DBB
 004E2D9C    mov         eax,dword ptr [ebp-4]
 004E2D9F    mov         edx,dword ptr [eax+78];TMenuItem.FImageChangeLink:TChangeLink
 004E2DA2    mov         eax,dword ptr [ebp-4]
 004E2DA5    mov         eax,dword ptr [eax+7C];TMenuItem.SubMenuImages:TCustomImageList
 004E2DA8    call        004DD760
 004E2DAD    mov         edx,dword ptr [ebp-4]
 004E2DB0    mov         eax,dword ptr [ebp-4]
 004E2DB3    mov         eax,dword ptr [eax+7C];TMenuItem.SubMenuImages:TCustomImageList
 004E2DB6    call        00483020
 004E2DBB    mov         eax,dword ptr [ebp-4]
 004E2DBE    call        004E2E24
 004E2DC3    pop         ecx
 004E2DC4    pop         ecx
 004E2DC5    pop         ebp
 004E2DC6    ret
*}
end;

//004E2DC8
{*procedure sub_004E2DC8(?:?; ?:?);
begin
 004E2DC8    push        ebp
 004E2DC9    mov         ebp,esp
 004E2DCB    add         esp,0FFFFFFF8
 004E2DCE    mov         dword ptr [ebp-8],edx
 004E2DD1    mov         dword ptr [ebp-4],eax
 004E2DD4    mov         eax,dword ptr [ebp-8]
 004E2DD7    mov         edx,dword ptr [ebp-4]
 004E2DDA    cmp         eax,dword ptr [edx+7C]
>004E2DDD    jne         004E2DE7
 004E2DDF    mov         eax,dword ptr [ebp-4]
 004E2DE2    call        004E2E24
 004E2DE7    pop         ecx
 004E2DE8    pop         ecx
 004E2DE9    pop         ebp
 004E2DEA    ret
end;*}

//004E2DEC
{*function sub_004E2DEC(?:?):?;
begin
 004E2DEC    push        ebp
 004E2DED    mov         ebp,esp
 004E2DEF    add         esp,0FFFFFFF8
 004E2DF2    mov         dword ptr [ebp-4],eax
 004E2DF5    mov         byte ptr [ebp-5],0
 004E2DF9    mov         eax,4E2DEC;sub_004E2DEC
 004E2DFE    mov         ecx,dword ptr [ebp-4]
 004E2E01    mov         edx,dword ptr [ebp-4]
 004E2E04    mov         edx,dword ptr [edx+68]
 004E2E07    call        004DF584
 004E2E0C    push        1
 004E2E0E    mov         ecx,dword ptr [ebp-4]
 004E2E11    mov         edx,dword ptr [ebp-4]
 004E2E14    mov         eax,dword ptr [ebp-4]
 004E2E17    call        004E25CC
 004E2E1C    mov         al,byte ptr [ebp-5]
 004E2E1F    pop         ecx
 004E2E20    pop         ecx
 004E2E21    pop         ebp
 004E2E22    ret
end;*}

//004E2E24
procedure sub_004E2E24(?:TMenuItem);
begin
{*
 004E2E24    push        ebp
 004E2E25    mov         ebp,esp
 004E2E27    push        ecx
 004E2E28    mov         dword ptr [ebp-4],eax
 004E2E2B    mov         eax,4E2DEC;sub_004E2DEC
 004E2E30    mov         ecx,dword ptr [ebp-4]
 004E2E33    mov         edx,dword ptr [ebp-4]
 004E2E36    mov         edx,dword ptr [edx+68];TMenuItem.FMerged:TMenuItem
 004E2E39    call        004DF584
 004E2E3E    pop         ecx
 004E2E3F    pop         ebp
 004E2E40    ret
*}
end;

//004E2E44
{*function sub_004E2E44(?:?; ?:?):?;
begin
 004E2E44    push        ebp
 004E2E45    mov         ebp,esp
 004E2E47    add         esp,0FFFFFFF4
 004E2E4A    mov         dword ptr [ebp-4],eax
 004E2E4D    mov         eax,dword ptr [ebp+8]
 004E2E50    mov         edx,dword ptr [eax-4]
 004E2E53    mov         eax,dword ptr [ebp-4]
 004E2E56    call        0046B9E0
 004E2E5B    mov         dword ptr [ebp-0C],eax
 004E2E5E    cmp         dword ptr [ebp-0C],0
 004E2E62    setne       byte ptr [ebp-5]
 004E2E66    cmp         byte ptr [ebp-5],0
>004E2E6A    je          004E2E7F
 004E2E6C    mov         eax,dword ptr [ebp+8]
 004E2E6F    add         eax,0FFFFFFFC
 004E2E72    mov         ecx,1
 004E2E77    mov         edx,dword ptr [ebp-0C]
 004E2E7A    call        @LStrDelete
 004E2E7F    mov         al,byte ptr [ebp-5]
 004E2E82    mov         esp,ebp
 004E2E84    pop         ebp
 004E2E85    ret
end;*}

//004E2E88
{*procedure sub_004E2E88(?:?);
begin
 004E2E88    push        ebp
 004E2E89    mov         ebp,esp
 004E2E8B    add         esp,0FFFFFFF8
 004E2E8E    push        ebx
 004E2E8F    mov         eax,dword ptr [ebp+8]
 004E2E92    mov         edx,dword ptr [eax-0C]
 004E2E95    mov         eax,dword ptr [ebp+8]
 004E2E98    mov         eax,dword ptr [eax-8]
 004E2E9B    mov         ecx,dword ptr [eax]
 004E2E9D    call        dword ptr [ecx+8]
 004E2EA0    mov         eax,dword ptr [ebp+8]
 004E2EA3    mov         eax,dword ptr [eax-0C]
 004E2EA6    mov         edx,dword ptr [eax]
 004E2EA8    call        dword ptr [edx+14]
 004E2EAB    mov         edx,dword ptr [ebp+8]
 004E2EAE    mov         dword ptr [edx-10],eax
 004E2EB1    mov         eax,dword ptr [ebp+8]
 004E2EB4    mov         eax,dword ptr [eax-14]
 004E2EB7    mov         edx,dword ptr [eax]
 004E2EB9    call        dword ptr [edx+14]
 004E2EBC    dec         eax
 004E2EBD    test        eax,eax
>004E2EBF    jl          004E2F00
 004E2EC1    inc         eax
 004E2EC2    mov         dword ptr [ebp-8],eax
 004E2EC5    mov         dword ptr [ebp-4],0
 004E2ECC    mov         eax,dword ptr [ebp+8]
 004E2ECF    mov         eax,dword ptr [eax-14]
 004E2ED2    mov         edx,dword ptr [ebp-4]
 004E2ED5    mov         ecx,dword ptr [eax]
 004E2ED7    call        dword ptr [ecx+18]
 004E2EDA    push        eax
 004E2EDB    mov         eax,dword ptr [ebp+8]
 004E2EDE    mov         eax,dword ptr [eax-14]
 004E2EE1    mov         edx,dword ptr [ebp-4]
 004E2EE4    mov         ecx,dword ptr [eax]
 004E2EE6    call        dword ptr [ecx+18]
 004E2EE9    mov         edx,dword ptr [eax+30]
 004E2EEC    mov         eax,dword ptr [ebp+8]
 004E2EEF    mov         eax,dword ptr [eax-8]
 004E2EF2    pop         ecx
 004E2EF3    mov         ebx,dword ptr [eax]
 004E2EF5    call        dword ptr [ebx+3C]
 004E2EF8    inc         dword ptr [ebp-4]
 004E2EFB    dec         dword ptr [ebp-8]
>004E2EFE    jne         004E2ECC
 004E2F00    mov         eax,dword ptr [ebp+8]
 004E2F03    add         eax,0FFFFFFE8
 004E2F06    mov         edx,dword ptr [ebp+8]
 004E2F09    mov         edx,dword ptr [edx-4]
 004E2F0C    call        @LStrLAsg
 004E2F11    pop         ebx
 004E2F12    pop         ecx
 004E2F13    pop         ecx
 004E2F14    pop         ebp
 004E2F15    ret
end;*}

//004E2F18
{*procedure sub_004E2F18(?:AnsiString; ?:?; ?:?);
begin
 004E2F18    push        ebp
 004E2F19    mov         ebp,esp
 004E2F1B    add         esp,0FFFFFFE0
 004E2F1E    push        ebx
 004E2F1F    xor         ebx,ebx
 004E2F21    mov         dword ptr [ebp-20],ebx
 004E2F24    mov         dword ptr [ebp-1C],ebx
 004E2F27    mov         dword ptr [ebp-0C],ecx
 004E2F2A    mov         dword ptr [ebp-8],edx
 004E2F2D    mov         dword ptr [ebp-4],eax
 004E2F30    xor         eax,eax
 004E2F32    push        ebp
 004E2F33    push        4E3062
 004E2F38    push        dword ptr fs:[eax]
 004E2F3B    mov         dword ptr fs:[eax],esp
 004E2F3E    mov         byte ptr [ebp-11],0
 004E2F42    mov         eax,dword ptr [ebp-4]
 004E2F45    mov         eax,dword ptr [eax]
 004E2F47    call        @DynArrayLength
 004E2F4C    test        eax,eax
>004E2F4E    jle         004E2F84
 004E2F50    mov         dword ptr [ebp-18],eax
 004E2F53    mov         dword ptr [ebp-10],1
 004E2F5A    mov         eax,dword ptr [ebp-4]
 004E2F5D    mov         eax,dword ptr [eax]
 004E2F5F    mov         edx,dword ptr [ebp-10]
 004E2F62    mov         al,byte ptr [eax+edx-1]
 004E2F66    mov         edx,dword ptr ds:[55B6F4];^gvar_0054097C
 004E2F6C    and         eax,0FF
 004E2F71    bt          dword ptr [edx],eax
>004E2F74    jae         004E2F7C
 004E2F76    mov         byte ptr [ebp-11],1
>004E2F7A    jmp         004E2F84
 004E2F7C    inc         dword ptr [ebp-10]
 004E2F7F    dec         dword ptr [ebp-18]
>004E2F82    jne         004E2F5A
 004E2F84    cmp         byte ptr [ebp-11],0
>004E2F88    je          004E3031
 004E2F8E    lea         eax,[ebp-1C]
 004E2F91    push        eax
 004E2F92    mov         eax,dword ptr [ebp-4]
 004E2F95    mov         eax,dword ptr [eax]
 004E2F97    call        @DynArrayLength
 004E2F9C    mov         edx,eax
 004E2F9E    sub         edx,3
 004E2FA1    inc         edx
 004E2FA2    mov         eax,dword ptr [ebp-4]
 004E2FA5    mov         eax,dword ptr [eax]
 004E2FA7    mov         ecx,3
 004E2FAC    call        @LStrCopy
 004E2FB1    mov         eax,dword ptr [ebp-1C]
 004E2FB4    mov         edx,4E3078;'...'
 004E2FB9    call        @LStrCmp
>004E2FBE    jne         004E300B
 004E2FC0    lea         eax,[ebp-20]
 004E2FC3    push        eax
 004E2FC4    mov         eax,dword ptr [ebp-4]
 004E2FC7    mov         eax,dword ptr [eax]
 004E2FC9    call        @DynArrayLength
 004E2FCE    mov         ecx,eax
 004E2FD0    sub         ecx,3
 004E2FD3    mov         eax,dword ptr [ebp-4]
 004E2FD6    mov         eax,dword ptr [eax]
 004E2FD8    mov         edx,1
 004E2FDD    call        @LStrCopy
 004E2FE2    push        dword ptr [ebp-20]
 004E2FE5    push        4E3084;'('
 004E2FEA    push        4E3090;'&'
 004E2FEF    push        dword ptr [ebp-8]
 004E2FF2    push        4E309C;')'
 004E2FF7    push        4E3078;'...'
 004E2FFC    mov         eax,dword ptr [ebp-4]
 004E2FFF    mov         edx,6
 004E3004    call        @LStrCatN
>004E3009    jmp         004E3047
 004E300B    mov         eax,dword ptr [ebp-4]
 004E300E    push        dword ptr [eax]
 004E3010    push        4E3084;'('
 004E3015    push        4E3090;'&'
 004E301A    push        dword ptr [ebp-8]
 004E301D    push        4E309C;')'
 004E3022    mov         eax,dword ptr [ebp-4]
 004E3025    mov         edx,5
 004E302A    call        @LStrCatN
>004E302F    jmp         004E3047
 004E3031    cmp         dword ptr [ebp-0C],0
>004E3035    je          004E3047
 004E3037    mov         edx,dword ptr [ebp-4]
 004E303A    mov         ecx,dword ptr [ebp-0C]
 004E303D    mov         eax,4E3090;'&'
 004E3042    call        @LStrInsert
 004E3047    xor         eax,eax
 004E3049    pop         edx
 004E304A    pop         ecx
 004E304B    pop         ecx
 004E304C    mov         dword ptr fs:[eax],edx
 004E304F    push        4E3069
 004E3054    lea         eax,[ebp-20]
 004E3057    mov         edx,2
 004E305C    call        @LStrArrayClr
 004E3061    ret
>004E3062    jmp         @HandleFinally
>004E3067    jmp         004E3054
 004E3069    pop         ebx
 004E306A    mov         esp,ebp
 004E306C    pop         ebp
 004E306D    ret
end;*}

//004E30A0
{*function sub_004E30A0(?:TMenuItem; ?:?):?;
begin
 004E30A0    push        ebp
 004E30A1    mov         ebp,esp
 004E30A3    add         esp,0FFFFFFA8
 004E30A6    push        ebx
 004E30A7    xor         ecx,ecx
 004E30A9    mov         dword ptr [ebp-58],ecx
 004E30AC    mov         dword ptr [ebp-54],ecx
 004E30AF    mov         dword ptr [ebp-50],ecx
 004E30B2    mov         dword ptr [ebp-4C],ecx
 004E30B5    mov         dword ptr [ebp-38],ecx
 004E30B8    mov         dword ptr [ebp-3C],ecx
 004E30BB    mov         dword ptr [ebp-40],ecx
 004E30BE    mov         dword ptr [ebp-4],ecx
 004E30C1    mov         dword ptr [ebp-18],ecx
 004E30C4    mov         byte ptr [ebp-1D],dl
 004E30C7    mov         dword ptr [ebp-1C],eax
 004E30CA    xor         eax,eax
 004E30CC    push        ebp
 004E30CD    push        4E3594
 004E30D2    push        dword ptr fs:[eax]
 004E30D5    mov         dword ptr fs:[eax],esp
 004E30D8    mov         byte ptr [ebp-1E],0
 004E30DC    cmp         byte ptr [ebp-1D],0
>004E30E0    jne         004E30FF
 004E30E2    mov         eax,dword ptr [ebp-1C]
 004E30E5    test        byte ptr [eax+1C],10
>004E30E9    jne         004E355C
 004E30EF    mov         eax,dword ptr [ebp-1C]
 004E30F2    call        004E37E4
 004E30F7    test        al,al
>004E30F9    je          004E355C
 004E30FF    lea         eax,[ebp-4]
 004E3102    mov         edx,dword ptr ds:[5417D4];^gvar_004DEFEC
 004E3108    call        @LStrLAsg
 004E310D    xor         eax,eax
 004E310F    mov         dword ptr [ebp-0C],eax
 004E3112    xor         eax,eax
 004E3114    mov         dword ptr [ebp-14],eax
 004E3117    xor         eax,eax
 004E3119    mov         dword ptr [ebp-24],eax
 004E311C    xor         eax,eax
 004E311E    mov         dword ptr [ebp-8],eax
 004E3121    xor         eax,eax
 004E3123    mov         dword ptr [ebp-10],eax
 004E3126    xor         eax,eax
 004E3128    push        ebp
 004E3129    push        4E3555
 004E312E    push        dword ptr fs:[eax]
 004E3131    mov         dword ptr fs:[eax],esp
 004E3134    mov         dl,1
 004E3136    mov         eax,[00476078];TStringList
 004E313B    call        TObject.Create;TStringList.Create
 004E3140    mov         dword ptr [ebp-0C],eax
 004E3143    mov         dl,1
 004E3145    mov         eax,[00476078];TStringList
 004E314A    call        TObject.Create;TStringList.Create
 004E314F    mov         dword ptr [ebp-14],eax
 004E3152    mov         dl,1
 004E3154    mov         eax,[00476078];TStringList
 004E3159    call        TObject.Create;TStringList.Create
 004E315E    mov         dword ptr [ebp-24],eax
 004E3161    mov         dl,1
 004E3163    mov         eax,[00476078];TStringList
 004E3168    call        TObject.Create;TStringList.Create
 004E316D    mov         dword ptr [ebp-8],eax
 004E3170    mov         eax,dword ptr [ebp-1C]
 004E3173    call        004E1FAC
 004E3178    dec         eax
 004E3179    test        eax,eax
>004E317B    jl          004E329F
 004E3181    inc         eax
 004E3182    mov         dword ptr [ebp-44],eax
 004E3185    mov         dword ptr [ebp-28],0
 004E318C    mov         edx,dword ptr [ebp-28]
 004E318F    mov         eax,dword ptr [ebp-1C]
 004E3192    call        004E1FD8
 004E3197    cmp         byte ptr [eax+3E],0
>004E319B    je          004E3293
 004E31A1    mov         edx,dword ptr [ebp-28]
 004E31A4    mov         eax,dword ptr [ebp-1C]
 004E31A7    call        004E1FD8
 004E31AC    mov         eax,dword ptr [eax+30]
 004E31AF    mov         edx,4E35AC;'-'
 004E31B4    call        @LStrCmp
>004E31B9    je          004E3293
 004E31BF    mov         edx,dword ptr [ebp-28]
 004E31C2    mov         eax,dword ptr [ebp-1C]
 004E31C5    call        004E1FD8
 004E31CA    cmp         dword ptr [eax+30],0
>004E31CE    je          004E3293
 004E31D4    mov         edx,dword ptr [ebp-28]
 004E31D7    mov         eax,dword ptr [ebp-1C]
 004E31DA    call        004E1FD8
 004E31DF    mov         eax,dword ptr [eax+30]
 004E31E2    lea         edx,[ebp-4C]
 004E31E5    call        004E5850
 004E31EA    mov         eax,dword ptr [ebp-4C]
 004E31ED    lea         edx,[ebp-38]
 004E31F0    call        004661A4
 004E31F5    cmp         dword ptr [ebp-38],0
>004E31F9    jne         004E3221
 004E31FB    mov         edx,dword ptr [ebp-28]
 004E31FE    mov         eax,dword ptr [ebp-1C]
 004E3201    call        004E1FD8
 004E3206    push        eax
 004E3207    mov         edx,dword ptr [ebp-28]
 004E320A    mov         eax,dword ptr [ebp-1C]
 004E320D    call        004E1FD8
 004E3212    mov         ecx,dword ptr [eax+30]
 004E3215    xor         edx,edx
 004E3217    mov         eax,dword ptr [ebp-24]
 004E321A    mov         ebx,dword ptr [eax]
 004E321C    call        dword ptr [ebx+64];TStringList.sub_0047B8A8
>004E321F    jmp         004E3293
 004E3221    mov         edx,dword ptr ds:[5417D4];^gvar_004DEFEC
 004E3227    mov         eax,dword ptr [ebp-38]
 004E322A    call        0046B9E0
 004E322F    test        eax,eax
>004E3231    je          004E3293
 004E3233    push        ebp
 004E3234    mov         eax,dword ptr [ebp-38]
 004E3237    call        004E2E44
 004E323C    pop         ecx
 004E323D    test        al,al
>004E323F    jne         004E3293
 004E3241    mov         edx,dword ptr [ebp-28]
 004E3244    mov         eax,dword ptr [ebp-1C]
 004E3247    call        004E1FD8
 004E324C    add         eax,30
 004E324F    push        eax
 004E3250    mov         edx,dword ptr [ebp-28]
 004E3253    mov         eax,dword ptr [ebp-1C]
 004E3256    call        004E1FD8
 004E325B    mov         eax,dword ptr [eax+30]
 004E325E    lea         edx,[ebp-50]
 004E3261    call        004E577C
 004E3266    mov         edx,dword ptr [ebp-50]
 004E3269    pop         eax
 004E326A    call        @LStrAsg
 004E326F    mov         edx,dword ptr [ebp-28]
 004E3272    mov         eax,dword ptr [ebp-1C]
 004E3275    call        004E1FD8
 004E327A    push        eax
 004E327B    mov         edx,dword ptr [ebp-28]
 004E327E    mov         eax,dword ptr [ebp-1C]
 004E3281    call        004E1FD8
 004E3286    mov         ecx,dword ptr [eax+30]
 004E3289    xor         edx,edx
 004E328B    mov         eax,dword ptr [ebp-24]
 004E328E    mov         ebx,dword ptr [eax]
 004E3290    call        dword ptr [ebx+64];TStringList.sub_0047B8A8
 004E3293    inc         dword ptr [ebp-28]
 004E3296    dec         dword ptr [ebp-44]
>004E3299    jne         004E318C
 004E329F    lea         eax,[ebp-40]
 004E32A2    mov         edx,dword ptr [ebp-4]
 004E32A5    call        @LStrLAsg
 004E32AA    mov         eax,dword ptr [ebp-24]
 004E32AD    mov         edx,dword ptr [eax]
 004E32AF    call        dword ptr [edx+14];TStringList.sub_0047B778
 004E32B2    dec         eax
 004E32B3    test        eax,eax
>004E32B5    jl          004E344C
 004E32BB    inc         eax
 004E32BC    mov         dword ptr [ebp-44],eax
 004E32BF    mov         dword ptr [ebp-2C],0
 004E32C6    lea         eax,[ebp-4]
 004E32C9    mov         edx,dword ptr [ebp-40]
 004E32CC    call        @LStrLAsg
 004E32D1    mov         edx,dword ptr [ebp-24]
 004E32D4    mov         eax,dword ptr [ebp-14]
 004E32D7    mov         ecx,dword ptr [eax]
 004E32D9    call        dword ptr [ecx+8];TStringList.sub_0047A184
 004E32DC    mov         eax,dword ptr [ebp-0C]
 004E32DF    mov         edx,dword ptr [eax]
 004E32E1    call        dword ptr [edx+44];TStringList.Clear
 004E32E4    mov         eax,dword ptr [ebp-14]
 004E32E7    mov         edx,dword ptr [eax]
 004E32E9    call        dword ptr [edx+14];TStringList.sub_0047B778
 004E32EC    dec         eax
 004E32ED    cmp         eax,0
>004E32F0    jl          004E33D2
 004E32F6    mov         dword ptr [ebp-28],eax
 004E32F9    lea         ecx,[ebp-3C]
 004E32FC    mov         edx,dword ptr [ebp-28]
 004E32FF    mov         eax,dword ptr [ebp-14]
 004E3302    mov         ebx,dword ptr [eax]
 004E3304    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 004E3307    mov         dword ptr [ebp-30],1
>004E330E    jmp         004E33B4
 004E3313    mov         eax,dword ptr [ebp-3C]
 004E3316    mov         edx,dword ptr [ebp-30]
 004E3319    mov         al,byte ptr [eax+edx-1]
 004E331D    mov         edx,dword ptr ds:[55B6F4];^gvar_0054097C
 004E3323    and         eax,0FF
 004E3328    bt          dword ptr [edx],eax
>004E332B    jae         004E3332
 004E332D    inc         dword ptr [ebp-30]
>004E3330    jmp         004E33B1
 004E3332    lea         eax,[ebp-54]
 004E3335    push        eax
 004E3336    mov         ecx,1
 004E333B    mov         edx,dword ptr [ebp-30]
 004E333E    mov         eax,dword ptr [ebp-3C]
 004E3341    call        @LStrCopy
 004E3346    mov         eax,dword ptr [ebp-54]
 004E3349    lea         edx,[ebp-38]
 004E334C    call        004661A4
 004E3351    push        ebp
 004E3352    mov         eax,dword ptr [ebp-38]
 004E3355    call        004E2E44
 004E335A    pop         ecx
 004E335B    test        al,al
>004E335D    je          004E33B1
 004E335F    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004E3364    cmp         byte ptr [eax+0C],0
>004E3368    je          004E337C
 004E336A    push        ebp
 004E336B    lea         eax,[ebp-3C]
 004E336E    mov         ecx,dword ptr [ebp-30]
 004E3371    mov         edx,dword ptr [ebp-38]
 004E3374    call        004E2F18
 004E3379    pop         ecx
>004E337A    jmp         004E338C
 004E337C    lea         edx,[ebp-3C]
 004E337F    mov         ecx,dword ptr [ebp-30]
 004E3382    mov         eax,4E35B8;'&'
 004E3387    call        @LStrInsert
 004E338C    mov         edx,dword ptr [ebp-28]
 004E338F    mov         eax,dword ptr [ebp-14]
 004E3392    mov         ecx,dword ptr [eax]
 004E3394    call        dword ptr [ecx+18];TStringList.sub_0047B794
 004E3397    mov         ecx,eax
 004E3399    mov         edx,dword ptr [ebp-3C]
 004E339C    mov         eax,dword ptr [ebp-0C]
 004E339F    mov         ebx,dword ptr [eax]
 004E33A1    call        dword ptr [ebx+3C];TStringList.sub_0047B3CC
 004E33A4    mov         edx,dword ptr [ebp-28]
 004E33A7    mov         eax,dword ptr [ebp-14]
 004E33AA    mov         ecx,dword ptr [eax]
 004E33AC    call        dword ptr [ecx+48];TStringList.sub_0047B4F0
>004E33AF    jmp         004E33C5
 004E33B1    inc         dword ptr [ebp-30]
 004E33B4    mov         eax,dword ptr [ebp-3C]
 004E33B7    call        @DynArrayLength
 004E33BC    cmp         eax,dword ptr [ebp-30]
>004E33BF    jge         004E3313
 004E33C5    dec         dword ptr [ebp-28]
 004E33C8    cmp         dword ptr [ebp-28],0FFFFFFFF
>004E33CC    jne         004E32F9
 004E33D2    mov         eax,dword ptr [ebp-0C]
 004E33D5    mov         edx,dword ptr [eax]
 004E33D7    call        dword ptr [edx+14];TStringList.sub_0047B778
 004E33DA    cmp         eax,dword ptr [ebp-10]
>004E33DD    jle         004E33E6
 004E33DF    push        ebp
 004E33E0    call        004E2E88
 004E33E5    pop         ecx
 004E33E6    mov         eax,dword ptr [ebp-14]
 004E33E9    mov         edx,dword ptr [eax]
 004E33EB    call        dword ptr [edx+14];TStringList.sub_0047B778
 004E33EE    test        eax,eax
>004E33F0    jle         004E344C
 004E33F2    mov         eax,dword ptr [ebp-14]
 004E33F5    mov         edx,dword ptr [eax]
 004E33F7    call        dword ptr [edx+14];TStringList.sub_0047B778
 004E33FA    dec         eax
 004E33FB    test        eax,eax
>004E33FD    jl          004E3440
 004E33FF    inc         eax
 004E3400    mov         dword ptr [ebp-48],eax
 004E3403    mov         dword ptr [ebp-28],0
 004E340A    mov         edx,dword ptr [ebp-28]
 004E340D    mov         eax,dword ptr [ebp-14]
 004E3410    mov         ecx,dword ptr [eax]
 004E3412    call        dword ptr [ecx+18];TStringList.sub_0047B794
 004E3415    mov         edx,eax
 004E3417    mov         eax,dword ptr [ebp-24]
 004E341A    mov         ecx,dword ptr [eax]
 004E341C    call        dword ptr [ecx+5C];TStringList.sub_0047AA2C
 004E341F    mov         dword ptr [ebp-34],eax
 004E3422    mov         eax,dword ptr [ebp-24]
 004E3425    mov         edx,dword ptr [eax]
 004E3427    call        dword ptr [edx+14];TStringList.sub_0047B778
 004E342A    mov         ecx,eax
 004E342C    dec         ecx
 004E342D    mov         edx,dword ptr [ebp-34]
 004E3430    mov         eax,dword ptr [ebp-24]
 004E3433    mov         ebx,dword ptr [eax]
 004E3435    call        dword ptr [ebx+70];TStringList.sub_0047ABBC
 004E3438    inc         dword ptr [ebp-28]
 004E343B    dec         dword ptr [ebp-48]
>004E343E    jne         004E340A
 004E3440    inc         dword ptr [ebp-2C]
 004E3443    dec         dword ptr [ebp-44]
>004E3446    jne         004E32C6
 004E344C    cmp         dword ptr [ebp-10],0
>004E3450    jne         004E3459
 004E3452    push        ebp
 004E3453    call        004E2E88
 004E3458    pop         ecx
 004E3459    mov         eax,dword ptr [ebp-8]
 004E345C    mov         edx,dword ptr [eax]
 004E345E    call        dword ptr [edx+14];TStringList.sub_0047B778
 004E3461    test        eax,eax
 004E3463    setg        byte ptr [ebp-1E]
 004E3467    mov         eax,dword ptr [ebp-8]
 004E346A    mov         edx,dword ptr [eax]
 004E346C    call        dword ptr [edx+14];TStringList.sub_0047B778
 004E346F    dec         eax
 004E3470    test        eax,eax
>004E3472    jl          004E3527
 004E3478    inc         eax
 004E3479    mov         dword ptr [ebp-44],eax
 004E347C    mov         dword ptr [ebp-28],0
 004E3483    lea         ecx,[ebp-3C]
 004E3486    mov         edx,dword ptr [ebp-28]
 004E3489    mov         eax,dword ptr [ebp-8]
 004E348C    mov         ebx,dword ptr [eax]
 004E348E    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 004E3491    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004E3496    cmp         byte ptr [eax+0C],0
>004E349A    je          004E3505
 004E349C    mov         edx,dword ptr [ebp-3C]
 004E349F    mov         eax,4E35B8;'&'
 004E34A4    call        0046B9E0
 004E34A9    test        eax,eax
>004E34AB    jne         004E3505
 004E34AD    cmp         dword ptr [ebp-18],0
>004E34B1    je          004E3505
 004E34B3    mov         edx,dword ptr [ebp-3C]
 004E34B6    mov         eax,4E35B8;'&'
 004E34BB    call        0046B9E0
 004E34C0    test        eax,eax
>004E34C2    jne         004E3505
 004E34C4    push        ebp
 004E34C5    lea         eax,[ebp-58]
 004E34C8    push        eax
 004E34C9    mov         eax,dword ptr [ebp-18]
 004E34CC    call        @DynArrayLength
 004E34D1    mov         edx,eax
 004E34D3    mov         ecx,1
 004E34D8    mov         eax,dword ptr [ebp-18]
 004E34DB    call        @LStrCopy
 004E34E0    mov         edx,dword ptr [ebp-58]
 004E34E3    lea         eax,[ebp-3C]
 004E34E6    xor         ecx,ecx
 004E34E8    call        004E2F18
 004E34ED    pop         ecx
 004E34EE    mov         eax,dword ptr [ebp-18]
 004E34F1    call        @DynArrayLength
 004E34F6    mov         edx,eax
 004E34F8    lea         eax,[ebp-18]
 004E34FB    mov         ecx,1
 004E3500    call        @LStrDelete
 004E3505    mov         edx,dword ptr [ebp-28]
 004E3508    mov         eax,dword ptr [ebp-8]
 004E350B    mov         ecx,dword ptr [eax]
 004E350D    call        dword ptr [ecx+18];TStringList.sub_0047B794
 004E3510    add         eax,30
 004E3513    mov         edx,dword ptr [ebp-3C]
 004E3516    call        @LStrAsg
 004E351B    inc         dword ptr [ebp-28]
 004E351E    dec         dword ptr [ebp-44]
>004E3521    jne         004E3483
 004E3527    xor         eax,eax
 004E3529    pop         edx
 004E352A    pop         ecx
 004E352B    pop         ecx
 004E352C    mov         dword ptr fs:[eax],edx
 004E352F    push        4E355C
 004E3534    mov         eax,dword ptr [ebp-8]
 004E3537    call        TObject.Free
 004E353C    mov         eax,dword ptr [ebp-24]
 004E353F    call        TObject.Free
 004E3544    mov         eax,dword ptr [ebp-14]
 004E3547    call        TObject.Free
 004E354C    mov         eax,dword ptr [ebp-0C]
 004E354F    call        TObject.Free
 004E3554    ret
>004E3555    jmp         @HandleFinally
>004E355A    jmp         004E3534
 004E355C    xor         eax,eax
 004E355E    pop         edx
 004E355F    pop         ecx
 004E3560    pop         ecx
 004E3561    mov         dword ptr fs:[eax],edx
 004E3564    push        4E359B
 004E3569    lea         eax,[ebp-58]
 004E356C    mov         edx,4
 004E3571    call        @LStrArrayClr
 004E3576    lea         eax,[ebp-40]
 004E3579    mov         edx,3
 004E357E    call        @LStrArrayClr
 004E3583    lea         eax,[ebp-18]
 004E3586    call        @LStrClr
 004E358B    lea         eax,[ebp-4]
 004E358E    call        @LStrClr
 004E3593    ret
>004E3594    jmp         @HandleFinally
>004E3599    jmp         004E3569
 004E359B    mov         al,byte ptr [ebp-1E]
 004E359E    pop         ebx
 004E359F    mov         esp,ebp
 004E35A1    pop         ebp
 004E35A2    ret
end;*}

//004E35BC
procedure TMenuItem.SetAutoHotkeys(Value:TMenuItemAutoFlag);
begin
{*
 004E35BC    push        ebp
 004E35BD    mov         ebp,esp
 004E35BF    add         esp,0FFFFFFF8
 004E35C2    mov         byte ptr [ebp-5],dl
 004E35C5    mov         dword ptr [ebp-4],eax
 004E35C8    mov         al,byte ptr [ebp-5]
 004E35CB    mov         edx,dword ptr [ebp-4]
 004E35CE    cmp         al,byte ptr [edx+3B];TMenuItem.AutoHotkeys:TMenuItemAutoFlag
>004E35D1    je          004E35E6
 004E35D3    mov         al,byte ptr [ebp-5]
 004E35D6    mov         edx,dword ptr [ebp-4]
 004E35D9    mov         byte ptr [edx+3B],al;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 004E35DC    mov         dl,1
 004E35DE    mov         eax,dword ptr [ebp-4]
 004E35E1    mov         ecx,dword ptr [eax]
 004E35E3    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E35E6    pop         ecx
 004E35E7    pop         ecx
 004E35E8    pop         ebp
 004E35E9    ret
*}
end;

//004E35EC
{*function sub_004E35EC(?:?):?;
begin
 004E35EC    push        ebp
 004E35ED    mov         ebp,esp
 004E35EF    add         esp,0FFFFFFF8
 004E35F2    mov         dword ptr [ebp-4],eax
 004E35F5    mov         eax,dword ptr [ebp-4]
 004E35F8    mov         eax,dword ptr [eax+30]
 004E35FB    mov         edx,4E3618;'-'
 004E3600    call        @LStrCmp
 004E3605    sete        byte ptr [ebp-5]
 004E3609    mov         al,byte ptr [ebp-5]
 004E360C    pop         ecx
 004E360D    pop         ecx
 004E360E    pop         ebp
 004E360F    ret
end;*}

//004E361C
{*function sub_004E361C(?:TMenuItem; ?:?):?;
begin
 004E361C    push        ebp
 004E361D    mov         ebp,esp
 004E361F    add         esp,0FFFFFFE8
 004E3622    mov         byte ptr [ebp-5],dl
 004E3625    mov         dword ptr [ebp-4],eax
 004E3628    mov         byte ptr [ebp-6],0
 004E362C    cmp         byte ptr [ebp-5],0
>004E3630    jne         004E364F
 004E3632    mov         eax,dword ptr [ebp-4]
 004E3635    test        byte ptr [eax+1C],10
>004E3639    jne         004E37AC
 004E363F    mov         eax,dword ptr [ebp-4]
 004E3642    call        004E3834
 004E3647    test        al,al
>004E3649    je          004E37AC
 004E364F    xor         eax,eax
 004E3651    mov         dword ptr [ebp-10],eax
 004E3654    xor         eax,eax
 004E3656    mov         dword ptr [ebp-14],eax
 004E3659    mov         eax,dword ptr [ebp-10]
 004E365C    push        eax
 004E365D    mov         eax,dword ptr [ebp-4]
 004E3660    call        004E1FAC
 004E3665    dec         eax
 004E3666    pop         edx
 004E3667    sub         eax,edx
>004E3669    jl          004E36BC
 004E366B    inc         eax
 004E366C    mov         dword ptr [ebp-18],eax
 004E366F    mov         dword ptr [ebp-0C],edx
 004E3672    mov         edx,dword ptr [ebp-0C]
 004E3675    mov         eax,dword ptr [ebp-4]
 004E3678    call        004E1FD8
 004E367D    cmp         byte ptr [eax+3E],0
>004E3681    je          004E36B4
 004E3683    mov         edx,dword ptr [ebp-0C]
 004E3686    mov         eax,dword ptr [ebp-4]
 004E3689    call        004E1FD8
 004E368E    call        004E35EC
 004E3693    test        al,al
>004E3695    je          004E36AC
 004E3697    mov         edx,dword ptr [ebp-0C]
 004E369A    mov         eax,dword ptr [ebp-4]
 004E369D    call        004E1FD8
 004E36A2    mov         byte ptr [eax+3E],0
 004E36A6    mov         byte ptr [ebp-6],1
>004E36AA    jmp         004E36B4
 004E36AC    mov         eax,dword ptr [ebp-0C]
 004E36AF    mov         dword ptr [ebp-10],eax
>004E36B2    jmp         004E36BC
 004E36B4    inc         dword ptr [ebp-0C]
 004E36B7    dec         dword ptr [ebp-18]
>004E36BA    jne         004E3672
 004E36BC    mov         eax,dword ptr [ebp-10]
 004E36BF    push        eax
 004E36C0    mov         eax,dword ptr [ebp-4]
 004E36C3    call        004E1FAC
 004E36C8    dec         eax
 004E36C9    pop         edx
 004E36CA    sub         eax,edx
>004E36CC    jl          004E3755
 004E36D2    inc         eax
 004E36D3    mov         dword ptr [ebp-18],eax
 004E36D6    mov         dword ptr [ebp-0C],edx
 004E36D9    mov         edx,dword ptr [ebp-0C]
 004E36DC    mov         eax,dword ptr [ebp-4]
 004E36DF    call        004E1FD8
 004E36E4    call        004E35EC
 004E36E9    test        al,al
>004E36EB    je          004E3717
 004E36ED    cmp         dword ptr [ebp-14],0
>004E36F1    je          004E3707
 004E36F3    mov         eax,dword ptr [ebp-14]
 004E36F6    cmp         byte ptr [eax+3E],0
>004E36FA    je          004E3707
 004E36FC    mov         eax,dword ptr [ebp-14]
 004E36FF    mov         byte ptr [eax+3E],0
 004E3703    mov         byte ptr [ebp-6],1
 004E3707    mov         edx,dword ptr [ebp-0C]
 004E370A    mov         eax,dword ptr [ebp-4]
 004E370D    call        004E1FD8
 004E3712    mov         dword ptr [ebp-14],eax
>004E3715    jmp         004E374D
 004E3717    mov         edx,dword ptr [ebp-0C]
 004E371A    mov         eax,dword ptr [ebp-4]
 004E371D    call        004E1FD8
 004E3722    cmp         byte ptr [eax+3E],0
>004E3726    je          004E374D
 004E3728    cmp         dword ptr [ebp-14],0
>004E372C    je          004E3742
 004E372E    mov         eax,dword ptr [ebp-14]
 004E3731    cmp         byte ptr [eax+3E],0
>004E3735    jne         004E3742
 004E3737    mov         eax,dword ptr [ebp-14]
 004E373A    mov         byte ptr [eax+3E],1
 004E373E    mov         byte ptr [ebp-6],1
 004E3742    xor         eax,eax
 004E3744    mov         dword ptr [ebp-14],eax
 004E3747    mov         eax,dword ptr [ebp-0C]
 004E374A    mov         dword ptr [ebp-10],eax
 004E374D    inc         dword ptr [ebp-0C]
 004E3750    dec         dword ptr [ebp-18]
>004E3753    jne         004E36D9
 004E3755    mov         eax,dword ptr [ebp-4]
 004E3758    call        004E1FAC
 004E375D    dec         eax
 004E375E    mov         edx,dword ptr [ebp-10]
 004E3761    sub         edx,eax
>004E3763    jg          004E37AC
 004E3765    dec         edx
 004E3766    mov         dword ptr [ebp-18],edx
 004E3769    mov         dword ptr [ebp-0C],eax
 004E376C    mov         edx,dword ptr [ebp-0C]
 004E376F    mov         eax,dword ptr [ebp-4]
 004E3772    call        004E1FD8
 004E3777    cmp         byte ptr [eax+3E],0
>004E377B    je          004E37A4
 004E377D    mov         edx,dword ptr [ebp-0C]
 004E3780    mov         eax,dword ptr [ebp-4]
 004E3783    call        004E1FD8
 004E3788    call        004E35EC
 004E378D    test        al,al
>004E378F    je          004E37AC
 004E3791    mov         edx,dword ptr [ebp-0C]
 004E3794    mov         eax,dword ptr [ebp-4]
 004E3797    call        004E1FD8
 004E379C    mov         byte ptr [eax+3E],0
 004E37A0    mov         byte ptr [ebp-6],1
 004E37A4    dec         dword ptr [ebp-0C]
 004E37A7    inc         dword ptr [ebp-18]
>004E37AA    jne         004E376C
 004E37AC    mov         al,byte ptr [ebp-6]
 004E37AF    mov         esp,ebp
 004E37B1    pop         ebp
 004E37B2    ret
end;*}

//004E37B4
procedure TMenuItem.SetAutoLineReduction(Value:TMenuItemAutoFlag);
begin
{*
 004E37B4    push        ebp
 004E37B5    mov         ebp,esp
 004E37B7    add         esp,0FFFFFFF8
 004E37BA    mov         byte ptr [ebp-5],dl
 004E37BD    mov         dword ptr [ebp-4],eax
 004E37C0    mov         al,byte ptr [ebp-5]
 004E37C3    mov         edx,dword ptr [ebp-4]
 004E37C6    cmp         al,byte ptr [edx+3C];TMenuItem.AutoLineReduction:TMenuItemAutoFlag
>004E37C9    je          004E37DE
 004E37CB    mov         al,byte ptr [ebp-5]
 004E37CE    mov         edx,dword ptr [ebp-4]
 004E37D1    mov         byte ptr [edx+3C],al;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 004E37D4    mov         dl,1
 004E37D6    mov         eax,dword ptr [ebp-4]
 004E37D9    mov         ecx,dword ptr [eax]
 004E37DB    call        dword ptr [ecx+3C];TMenuItem.sub_004E2568
 004E37DE    pop         ecx
 004E37DF    pop         ecx
 004E37E0    pop         ebp
 004E37E1    ret
*}
end;

//004E37E4
{*function sub_004E37E4(?:?):?;
begin
 004E37E4    push        ebp
 004E37E5    mov         ebp,esp
 004E37E7    add         esp,0FFFFFFF8
 004E37EA    mov         dword ptr [ebp-4],eax
 004E37ED    mov         eax,dword ptr [ebp-4]
 004E37F0    mov         al,byte ptr [eax+3B]
 004E37F3    mov         byte ptr [ebp-6],al
 004E37F6    cmp         byte ptr [ebp-6],2
>004E37FA    jne         004E381C
 004E37FC    mov         eax,dword ptr [ebp-4]
 004E37FF    cmp         dword ptr [eax+64],0
>004E3803    je          004E381C
 004E3805    mov         eax,dword ptr [ebp-4]
 004E3808    mov         eax,dword ptr [eax+64]
 004E380B    call        004E37E4
 004E3810    and         eax,7F
 004E3813    mov         al,byte ptr [eax+5417E0]
 004E3819    mov         byte ptr [ebp-6],al
 004E381C    xor         eax,eax
 004E381E    mov         al,byte ptr [ebp-6]
 004E3821    mov         al,byte ptr [eax+5417E4]
 004E3827    mov         byte ptr [ebp-5],al
 004E382A    mov         al,byte ptr [ebp-5]
 004E382D    pop         ecx
 004E382E    pop         ecx
 004E382F    pop         ebp
 004E3830    ret
end;*}

//004E3834
{*function sub_004E3834(?:?):?;
begin
 004E3834    push        ebp
 004E3835    mov         ebp,esp
 004E3837    add         esp,0FFFFFFF8
 004E383A    mov         dword ptr [ebp-4],eax
 004E383D    mov         eax,dword ptr [ebp-4]
 004E3840    mov         al,byte ptr [eax+3C]
 004E3843    mov         byte ptr [ebp-6],al
 004E3846    cmp         byte ptr [ebp-6],2
>004E384A    jne         004E386C
 004E384C    mov         eax,dword ptr [ebp-4]
 004E384F    cmp         dword ptr [eax+64],0
>004E3853    je          004E386C
 004E3855    mov         eax,dword ptr [ebp-4]
 004E3858    mov         eax,dword ptr [eax+64]
 004E385B    call        004E3834
 004E3860    and         eax,7F
 004E3863    mov         al,byte ptr [eax+5417E0]
 004E3869    mov         byte ptr [ebp-6],al
 004E386C    xor         eax,eax
 004E386E    mov         al,byte ptr [ebp-6]
 004E3871    mov         al,byte ptr [eax+5417E4]
 004E3877    mov         byte ptr [ebp-5],al
 004E387A    mov         al,byte ptr [ebp-5]
 004E387D    pop         ecx
 004E387E    pop         ecx
 004E387F    pop         ebp
 004E3880    ret
end;*}

//004E3884
constructor sub_004E3884;
begin
{*
 004E3884    push        ebp
 004E3885    mov         ebp,esp
 004E3887    add         esp,0FFFFFFF4
 004E388A    test        dl,dl
>004E388C    je          004E3896
 004E388E    add         esp,0FFFFFFF0
 004E3891    call        @ClassCreate
 004E3896    mov         dword ptr [ebp-0C],ecx
 004E3899    mov         byte ptr [ebp-5],dl
 004E389C    mov         dword ptr [ebp-4],eax
 004E389F    mov         ecx,dword ptr [ebp-4]
 004E38A2    mov         dl,1
 004E38A4    mov         eax,[004DE470];TMenuItem
 004E38A9    call        TMenuItem.Create;TMenuItem.Create
 004E38AE    mov         edx,dword ptr [ebp-4]
 004E38B1    mov         dword ptr [edx+34],eax;TMenu.Items:TMenuItem
 004E38B4    mov         eax,dword ptr [ebp-4]
 004E38B7    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 004E38BA    mov         edx,dword ptr [ebp-4]
 004E38BD    mov         dword ptr [eax+84],edx;TMenuItem.?f84:TMenu
 004E38C3    mov         edx,dword ptr [edx]
 004E38C5    mov         edx,dword ptr [edx+38];TMenu.FWindowHandle:HWND
 004E38C8    mov         dword ptr [eax+80],edx;TMenuItem.FOnChange:TMenuChangeEvent
 004E38CE    mov         eax,dword ptr [ebp-4]
 004E38D1    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 004E38D4    mov         edx,dword ptr [ebp-4]
 004E38D7    mov         dword ptr [eax+70],edx;TMenuItem.FMenu:TMenu
 004E38DA    mov         dl,1
 004E38DC    mov         eax,[004DC034];TChangeLink
 004E38E1    call        TObject.Create;TChangeLink.Create
 004E38E6    mov         edx,dword ptr [ebp-4]
 004E38E9    mov         dword ptr [edx+44],eax;TMenu.FImageChangeLink:TChangeLink
 004E38EC    mov         eax,dword ptr [ebp-4]
 004E38EF    mov         eax,dword ptr [eax+44];TMenu.FImageChangeLink:TChangeLink
 004E38F2    mov         edx,dword ptr [ebp-4]
 004E38F5    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomTabControl
 004E38F8    mov         dword ptr [eax+8],4E4424;TChangeLink.FOnChange:TNotifyEvent sub_004E4424
 004E38FF    mov         eax,dword ptr [ebp-4]
 004E3902    mov         byte ptr [eax+41],1;TMenu.FParentBiDiMode:Boolean
 004E3906    mov         ecx,dword ptr [ebp-0C]
 004E3909    xor         edx,edx
 004E390B    mov         eax,dword ptr [ebp-4]
 004E390E    call        00482F04
 004E3913    mov         eax,dword ptr [ebp-4]
 004E3916    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 004E3919    mov         byte ptr [eax+3B],0;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 004E391D    mov         eax,dword ptr [ebp-4]
 004E3920    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 004E3923    mov         byte ptr [eax+3C],0;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 004E3927    mov         eax,dword ptr [ebp-4]
 004E392A    call        004E49F8
 004E392F    mov         eax,dword ptr [ebp-4]
 004E3932    cmp         byte ptr [ebp-5],0
>004E3936    je          004E3947
 004E3938    call        @AfterConstruction
 004E393D    pop         dword ptr fs:[0]
 004E3944    add         esp,0C
 004E3947    mov         eax,dword ptr [ebp-4]
 004E394A    mov         esp,ebp
 004E394C    pop         ebp
 004E394D    ret
*}
end;

//004E3950
destructor TMenu.Destroy;
begin
{*
 004E3950    push        ebp
 004E3951    mov         ebp,esp
 004E3953    add         esp,0FFFFFFF8
 004E3956    call        @BeforeDestruction
 004E395B    mov         byte ptr [ebp-5],dl
 004E395E    mov         dword ptr [ebp-4],eax
 004E3961    mov         eax,dword ptr [ebp-4]
 004E3964    mov         eax,dword ptr [eax+34]
 004E3967    call        TObject.Free
 004E396C    mov         eax,dword ptr [ebp-4]
 004E396F    mov         eax,dword ptr [eax+44]
 004E3972    call        TObject.Free
 004E3977    mov         dl,byte ptr [ebp-5]
 004E397A    and         dl,0FC
 004E397D    mov         eax,dword ptr [ebp-4]
 004E3980    call        TComponent.Destroy
 004E3985    cmp         byte ptr [ebp-5],0
>004E3989    jle         004E3993
 004E398B    mov         eax,dword ptr [ebp-4]
 004E398E    call        @ClassDestroy
 004E3993    pop         ecx
 004E3994    pop         ecx
 004E3995    pop         ebp
 004E3996    ret
*}
end;

//004E3998
{*procedure TMenu.sub_004834DC(?:?; ?:?; ?:?);
begin
 004E3998    push        ebp
 004E3999    mov         ebp,esp
 004E399B    add         esp,0FFFFFFF8
 004E399E    push        esi
 004E399F    mov         dword ptr [ebp-8],edx
 004E39A2    mov         dword ptr [ebp-4],eax
 004E39A5    push        dword ptr [ebp+0C]
 004E39A8    push        dword ptr [ebp+8]
 004E39AB    mov         edx,dword ptr [ebp-8]
 004E39AE    mov         eax,dword ptr [ebp-4]
 004E39B1    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 004E39B4    mov         si,0FFFD
 004E39B8    call        @CallDynaInst;TMenuItem.sub_004834DC
 004E39BD    pop         esi
 004E39BE    pop         ecx
 004E39BF    pop         ecx
 004E39C0    pop         ebp
 004E39C1    ret         8
end;*}

//004E39C4
{*function sub_004E39C4:?;
begin
 004E39C4    push        ebp
 004E39C5    mov         ebp,esp
 004E39C7    add         esp,0FFFFFFF8
 004E39CA    mov         dword ptr [ebp-4],eax
 004E39CD    mov         eax,dword ptr [ebp-4]
 004E39D0    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 004E39D3    call        004E0340
 004E39D8    mov         dword ptr [ebp-8],eax
 004E39DB    mov         eax,dword ptr [ebp-8]
 004E39DE    pop         ecx
 004E39DF    pop         ecx
 004E39E0    pop         ebp
 004E39E1    ret
end;*}

//004E39E4
{*procedure TMenu.sub_0048355C(?:?; ?:?);
begin
 004E39E4    push        ebp
 004E39E5    mov         ebp,esp
 004E39E7    add         esp,0FFFFFFF4
 004E39EA    push        esi
 004E39EB    mov         dword ptr [ebp-0C],ecx
 004E39EE    mov         dword ptr [ebp-8],edx
 004E39F1    mov         dword ptr [ebp-4],eax
 004E39F4    mov         ecx,dword ptr [ebp-0C]
 004E39F7    mov         edx,dword ptr [ebp-8]
 004E39FA    mov         eax,dword ptr [ebp-4]
 004E39FD    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 004E3A00    mov         si,0FFF9
 004E3A04    call        @CallDynaInst;TMenuItem.sub_0048355C
 004E3A09    pop         esi
 004E3A0A    mov         esp,ebp
 004E3A0C    pop         ebp
 004E3A0D    ret
end;*}

//004E3A10
{*function sub_004E3A10(?:?):?;
begin
 004E3A10    push        ebp
 004E3A11    mov         ebp,esp
 004E3A13    add         esp,0FFFFFFF8
 004E3A16    mov         dword ptr [ebp-4],eax
 004E3A19    mov         byte ptr [ebp-5],0
 004E3A1D    mov         eax,4E3A10;sub_004E3A10
 004E3A22    mov         ecx,dword ptr [ebp-4]
 004E3A25    mov         edx,dword ptr [ebp-4]
 004E3A28    mov         edx,dword ptr [edx+68]
 004E3A2B    call        004DF584
 004E3A30    push        1
 004E3A32    mov         ecx,dword ptr [ebp-4]
 004E3A35    mov         edx,dword ptr [ebp-4]
 004E3A38    mov         eax,dword ptr [ebp-4]
 004E3A3B    call        004E25CC
 004E3A40    mov         al,byte ptr [ebp-5]
 004E3A43    pop         ecx
 004E3A44    pop         ecx
 004E3A45    pop         ebp
 004E3A46    ret
end;*}

//004E3A48
procedure sub_004E3A48(?:TMainMenu);
begin
{*
 004E3A48    push        ebp
 004E3A49    mov         ebp,esp
 004E3A4B    push        ecx
 004E3A4C    mov         dword ptr [ebp-4],eax
 004E3A4F    mov         eax,dword ptr [ebp-4]
 004E3A52    mov         eax,dword ptr [eax+34]
 004E3A55    mov         edx,dword ptr [eax+68]
 004E3A58    mov         eax,4E3A10;sub_004E3A10
 004E3A5D    mov         ecx,dword ptr [ebp-4]
 004E3A60    mov         ecx,dword ptr [ecx+34]
 004E3A63    call        004DF584
 004E3A68    pop         ecx
 004E3A69    pop         ebp
 004E3A6A    ret
*}
end;

//004E3A6C
{*function sub_004E3A6C(?:?; ?:?):?;
begin
 004E3A6C    push        ebp
 004E3A6D    mov         ebp,esp
 004E3A6F    add         esp,0FFFFFFF0
 004E3A72    mov         dword ptr [ebp-4],eax
 004E3A75    mov         byte ptr [ebp-5],0
 004E3A79    mov         eax,dword ptr [ebp+8]
 004E3A7C    cmp         byte ptr [eax-1],0
>004E3A80    jne         004E3A93
 004E3A82    mov         eax,dword ptr [ebp+8]
 004E3A85    mov         eax,dword ptr [eax-8]
 004E3A88    mov         edx,dword ptr [ebp-4]
 004E3A8B    movzx       edx,word ptr [edx+50]
 004E3A8F    cmp         eax,edx
>004E3A91    je          004E3AC4
 004E3A93    mov         eax,dword ptr [ebp+8]
 004E3A96    cmp         byte ptr [eax-1],1
>004E3A9A    jne         004E3AAA
 004E3A9C    mov         eax,dword ptr [ebp+8]
 004E3A9F    mov         eax,dword ptr [eax-8]
 004E3AA2    mov         edx,dword ptr [ebp-4]
 004E3AA5    cmp         eax,dword ptr [edx+34]
>004E3AA8    je          004E3AC4
 004E3AAA    mov         eax,dword ptr [ebp+8]
 004E3AAD    cmp         byte ptr [eax-1],2
>004E3AB1    jne         004E3AD3
 004E3AB3    mov         eax,dword ptr [ebp+8]
 004E3AB6    mov         eax,dword ptr [eax-8]
 004E3AB9    mov         edx,dword ptr [ebp-4]
 004E3ABC    movzx       edx,word ptr [edx+60]
 004E3AC0    cmp         eax,edx
>004E3AC2    jne         004E3AD3
 004E3AC4    mov         eax,dword ptr [ebp+8]
 004E3AC7    mov         edx,dword ptr [ebp-4]
 004E3ACA    mov         dword ptr [eax-0C],edx
 004E3ACD    mov         byte ptr [ebp-5],1
>004E3AD1    jmp         004E3B12
 004E3AD3    mov         eax,dword ptr [ebp-4]
 004E3AD6    call        004E1FAC
 004E3ADB    dec         eax
 004E3ADC    test        eax,eax
>004E3ADE    jl          004E3B12
 004E3AE0    inc         eax
 004E3AE1    mov         dword ptr [ebp-10],eax
 004E3AE4    mov         dword ptr [ebp-0C],0
 004E3AEB    mov         eax,dword ptr [ebp+8]
 004E3AEE    push        eax
 004E3AEF    mov         edx,dword ptr [ebp-0C]
 004E3AF2    mov         eax,dword ptr [ebp-4]
 004E3AF5    call        004E1FD8
 004E3AFA    call        004E3A6C
 004E3AFF    pop         ecx
 004E3B00    test        al,al
>004E3B02    je          004E3B0A
 004E3B04    mov         byte ptr [ebp-5],1
>004E3B08    jmp         004E3B12
 004E3B0A    inc         dword ptr [ebp-0C]
 004E3B0D    dec         dword ptr [ebp-10]
>004E3B10    jne         004E3AEB
 004E3B12    mov         al,byte ptr [ebp-5]
 004E3B15    mov         esp,ebp
 004E3B17    pop         ebp
 004E3B18    ret
end;*}

//004E3B1C
{*function sub_004E3B1C(?:TMenu; ?:HMENU; ?:?):?;
begin
 004E3B1C    push        ebp
 004E3B1D    mov         ebp,esp
 004E3B1F    add         esp,0FFFFFFEC
 004E3B22    mov         byte ptr [ebp-1],cl
 004E3B25    mov         dword ptr [ebp-8],edx
 004E3B28    mov         dword ptr [ebp-10],eax
 004E3B2B    xor         eax,eax
 004E3B2D    mov         dword ptr [ebp-0C],eax
 004E3B30    mov         eax,dword ptr [ebp-10]
 004E3B33    mov         eax,dword ptr [eax+34]
 004E3B36    mov         edx,dword ptr [eax+68]
 004E3B39    mov         eax,4E3A6C;sub_004E3A6C
 004E3B3E    mov         ecx,dword ptr [ebp-10]
 004E3B41    mov         ecx,dword ptr [ecx+34]
 004E3B44    call        004DF584
 004E3B49    mov         eax,dword ptr [ebp-0C]
 004E3B4C    mov         dword ptr [ebp-14],eax
 004E3B4F    mov         eax,dword ptr [ebp-14]
 004E3B52    mov         esp,ebp
 004E3B54    pop         ebp
 004E3B55    ret
end;*}

//004E3B58
{*function sub_004E3B58(?:Pointer; ?:?; ?:?):?;
begin
 004E3B58    push        ebp
 004E3B59    mov         ebp,esp
 004E3B5B    add         esp,0FFFFFFE8
 004E3B5E    mov         byte ptr [ebp-9],cl
 004E3B61    mov         dword ptr [ebp-8],edx
 004E3B64    mov         dword ptr [ebp-4],eax
 004E3B67    xor         eax,eax
 004E3B69    mov         dword ptr [ebp-10],eax
 004E3B6C    mov         byte ptr [ebp-15],1
 004E3B70    cmp         byte ptr [ebp-9],0
>004E3B74    je          004E3B7A
 004E3B76    mov         byte ptr [ebp-15],0
 004E3B7A    cmp         byte ptr [ebp-15],1
>004E3B7E    jne         004E3BAC
 004E3B80    mov         eax,dword ptr [ebp-4]
 004E3B83    mov         edx,dword ptr ds:[4DEC6C];TPopupMenu
 004E3B89    call        @IsClass
 004E3B8E    test        al,al
>004E3B90    je          004E3BAC
 004E3B92    mov         eax,dword ptr [ebp-4]
 004E3B95    mov         edx,dword ptr [eax]
 004E3B97    call        dword ptr [edx+34]
 004E3B9A    cmp         eax,dword ptr [ebp-8]
>004E3B9D    jne         004E3BAC
 004E3B9F    mov         eax,dword ptr [ebp-4]
 004E3BA2    call        TPopupMenu.GetHelpContext
 004E3BA7    mov         dword ptr [ebp-10],eax
>004E3BAA    jmp         004E3BE6
 004E3BAC    mov         cl,byte ptr [ebp-15]
 004E3BAF    mov         edx,dword ptr [ebp-8]
 004E3BB2    mov         eax,dword ptr [ebp-4]
 004E3BB5    call        004E3B1C
 004E3BBA    mov         dword ptr [ebp-14],eax
>004E3BBD    jmp         004E3BC8
 004E3BBF    mov         eax,dword ptr [ebp-14]
 004E3BC2    mov         eax,dword ptr [eax+64]
 004E3BC5    mov         dword ptr [ebp-14],eax
 004E3BC8    cmp         dword ptr [ebp-14],0
>004E3BCC    je          004E3BD7
 004E3BCE    mov         eax,dword ptr [ebp-14]
 004E3BD1    cmp         dword ptr [eax+54],0
>004E3BD5    je          004E3BBF
 004E3BD7    cmp         dword ptr [ebp-14],0
>004E3BDB    je          004E3BE6
 004E3BDD    mov         eax,dword ptr [ebp-14]
 004E3BE0    mov         eax,dword ptr [eax+54]
 004E3BE3    mov         dword ptr [ebp-10],eax
 004E3BE6    mov         eax,dword ptr [ebp-10]
 004E3BE9    mov         esp,ebp
 004E3BEB    pop         ebp
 004E3BEC    ret
end;*}

//004E3BF0
{*function sub_004E3BF0(?:Pointer; ?:?):?;
begin
 004E3BF0    push        ebp
 004E3BF1    mov         ebp,esp
 004E3BF3    add         esp,0FFFFFFF4
 004E3BF6    mov         word ptr [ebp-6],dx
 004E3BFA    mov         dword ptr [ebp-4],eax
 004E3BFD    mov         byte ptr [ebp-7],0
 004E3C01    movzx       edx,word ptr [ebp-6]
 004E3C05    xor         ecx,ecx
 004E3C07    mov         eax,dword ptr [ebp-4]
 004E3C0A    call        004E3B1C
 004E3C0F    mov         dword ptr [ebp-0C],eax
 004E3C12    cmp         dword ptr [ebp-0C],0
>004E3C16    je          004E3C24
 004E3C18    mov         eax,dword ptr [ebp-0C]
 004E3C1B    mov         edx,dword ptr [eax]
 004E3C1D    call        dword ptr [edx+44]
 004E3C20    mov         byte ptr [ebp-7],1
 004E3C24    mov         al,byte ptr [ebp-7]
 004E3C27    mov         esp,ebp
 004E3C29    pop         ebp
 004E3C2A    ret
end;*}

//004E3C2C
{*function sub_004E3C2C(?:Pointer; ?:?):?;
begin
 004E3C2C    push        ebp
 004E3C2D    mov         ebp,esp
 004E3C2F    add         esp,0FFFFFFE8
 004E3C32    mov         dword ptr [ebp-8],edx
 004E3C35    mov         dword ptr [ebp-4],eax
 004E3C38    mov         byte ptr [ebp-9],0
 004E3C3C    mov         cl,1
 004E3C3E    mov         edx,dword ptr [ebp-8]
 004E3C41    mov         eax,dword ptr [ebp-4]
 004E3C44    call        004E3B1C
 004E3C49    mov         dword ptr [ebp-10],eax
 004E3C4C    cmp         dword ptr [ebp-10],0
>004E3C50    je          004E3CFE
 004E3C56    mov         eax,dword ptr [ebp-10]
 004E3C59    test        byte ptr [eax+1C],10
>004E3C5D    jne         004E3C67
 004E3C5F    mov         eax,dword ptr [ebp-10]
 004E3C62    call        004E2760
 004E3C67    mov         eax,dword ptr [ebp-10]
 004E3C6A    mov         edx,dword ptr [eax]
 004E3C6C    call        dword ptr [edx+44]
 004E3C6F    xor         edx,edx
 004E3C71    mov         eax,dword ptr [ebp-10]
 004E3C74    call        004E30A0
 004E3C79    mov         byte ptr [ebp-11],al
 004E3C7C    xor         edx,edx
 004E3C7E    mov         eax,dword ptr [ebp-10]
 004E3C81    call        004E361C
 004E3C86    or          al,byte ptr [ebp-11]
 004E3C89    mov         byte ptr [ebp-11],al
 004E3C8C    cmp         byte ptr [ebp-11],0
>004E3C90    je          004E3C9A
 004E3C92    mov         eax,dword ptr [ebp-10]
 004E3C95    call        004E01B8
 004E3C9A    mov         eax,[0055B4C8];^Application:TApplication
 004E3C9F    mov         eax,dword ptr [eax]
 004E3CA1    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004E3CA5    je          004E3CF8
 004E3CA7    mov         eax,[0055B4C8];^Application:TApplication
 004E3CAC    mov         eax,dword ptr [eax]
 004E3CAE    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004E3CB1    mov         dword ptr [ebp-18],eax
 004E3CB4    mov         eax,dword ptr [ebp-18]
 004E3CB7    cmp         byte ptr [eax+22F],2;TForm.FFormStyle:TFormStyle
>004E3CBE    jne         004E3CF8
 004E3CC0    mov         eax,dword ptr [ebp-18]
 004E3CC3    mov         eax,dword ptr [eax+258];TForm.FWindowMenu:TMenuItem
 004E3CC9    cmp         eax,dword ptr [ebp-10]
>004E3CCC    jne         004E3CF8
 004E3CCE    push        0
 004E3CD0    push        0
 004E3CD2    push        234
 004E3CD7    mov         eax,dword ptr [ebp-18]
 004E3CDA    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 004E3CE0    push        eax
 004E3CE1    call        user32.SendMessageA
 004E3CE6    test        eax,eax
>004E3CE8    je          004E3CF8
 004E3CEA    mov         eax,dword ptr [ebp-18]
 004E3CED    call        TWinControl.GetHandle
 004E3CF2    push        eax
 004E3CF3    call        user32.DrawMenuBar
 004E3CF8    mov         byte ptr [ebp-9],1
>004E3CFC    jmp         004E3D24
 004E3CFE    mov         eax,dword ptr [ebp-4]
 004E3D01    test        byte ptr [eax+1C],10
>004E3D05    jne         004E3D24
 004E3D07    mov         eax,dword ptr [ebp-4]
 004E3D0A    mov         edx,dword ptr ds:[4DEC6C];TPopupMenu
 004E3D10    call        @IsClass
 004E3D15    test        al,al
>004E3D17    je          004E3D24
 004E3D19    mov         eax,dword ptr [ebp-4]
 004E3D1C    mov         eax,dword ptr [eax+34]
 004E3D1F    call        004E2760
 004E3D24    mov         al,byte ptr [ebp-9]
 004E3D27    mov         esp,ebp
 004E3D29    pop         ebp
 004E3D2A    ret
end;*}

//004E3D2C
{*function sub_004E3D2C(?:?):?;
begin
 004E3D2C    push        ebp
 004E3D2D    mov         ebp,esp
 004E3D2F    add         esp,0FFFFFFF8
 004E3D32    mov         dword ptr [ebp-4],eax
 004E3D35    mov         eax,dword ptr [ebp-4]
 004E3D38    cmp         byte ptr [eax+40],0
>004E3D3C    jne         004E3D4B
 004E3D3E    mov         eax,dword ptr [ebp-4]
 004E3D41    cmp         dword ptr [eax+48],0
>004E3D45    jne         004E3D4B
 004E3D47    xor         eax,eax
>004E3D49    jmp         004E3D4D
 004E3D4B    mov         al,1
 004E3D4D    mov         byte ptr [ebp-5],al
 004E3D50    mov         al,byte ptr [ebp-5]
 004E3D53    pop         ecx
 004E3D54    pop         ecx
 004E3D55    pop         ebp
 004E3D56    ret
end;*}

//004E3D58
{*function sub_004E3D58(?:?; ?:?):?;
begin
 004E3D58    push        ebp
 004E3D59    mov         ebp,esp
 004E3D5B    add         esp,0FFFFFFF4
 004E3D5E    mov         dword ptr [ebp-8],edx
 004E3D61    mov         dword ptr [ebp-4],eax
 004E3D64    mov         eax,dword ptr [ebp-4]
 004E3D67    mov         dword ptr [ebp-0C],eax
>004E3D6A    jmp         004E3D78
 004E3D6C    mov         eax,dword ptr [ebp-0C]
 004E3D6F    mov         eax,dword ptr [eax+64]
 004E3D72    mov         dword ptr [ebp-0C],eax
 004E3D75    dec         dword ptr [ebp-8]
 004E3D78    cmp         dword ptr [ebp-8],0
>004E3D7C    jle         004E3D84
 004E3D7E    cmp         dword ptr [ebp-0C],0
>004E3D82    jne         004E3D6C
 004E3D84    mov         eax,dword ptr [ebp-0C]
 004E3D87    mov         esp,ebp
 004E3D89    pop         ebp
 004E3D8A    ret
end;*}

//004E3D8C
{*function sub_004E3D8C(?:TMenuItem; ?:?; ?:?):?;
begin
 004E3D8C    push        ebp
 004E3D8D    mov         ebp,esp
 004E3D8F    add         esp,0FFFFFFF0
 004E3D92    push        ebx
 004E3D93    push        esi
 004E3D94    push        edi
 004E3D95    mov         dword ptr [ebp-8],edx
 004E3D98    mov         dword ptr [ebp-4],eax
 004E3D9B    mov         byte ptr [ebp-9],1
 004E3D9F    mov         eax,dword ptr [ebp-4]
 004E3DA2    mov         eax,dword ptr [eax]
 004E3DA4    mov         eax,dword ptr [eax+64]
 004E3DA7    mov         dword ptr [ebp-10],eax
 004E3DAA    cmp         dword ptr [ebp-10],0
>004E3DAE    je          004E3DC4
 004E3DB0    mov         eax,dword ptr [ebp+8]
 004E3DB3    push        eax
 004E3DB4    mov         edx,dword ptr [ebp-8]
 004E3DB7    inc         edx
 004E3DB8    lea         eax,[ebp-10]
 004E3DBB    call        004E3D8C
 004E3DC0    pop         ecx
 004E3DC1    mov         byte ptr [ebp-9],al
 004E3DC4    mov         al,byte ptr [ebp-9]
 004E3DC7    test        al,al
>004E3DC9    je          004E3EFE
 004E3DCF    sub         al,3
>004E3DD1    je          004E3EFE
 004E3DD7    cmp         byte ptr [ebp-9],2
>004E3DDB    jne         004E3E68
 004E3DE1    mov         eax,dword ptr [ebp+8]
 004E3DE4    cmp         dword ptr [eax-4],0
>004E3DE8    je          004E3DFD
 004E3DEA    mov         eax,dword ptr [ebp+8]
 004E3DED    mov         eax,dword ptr [eax-4]
 004E3DF0    mov         ax,word ptr [eax+60]
 004E3DF4    mov         edx,dword ptr [ebp+8]
 004E3DF7    cmp         ax,word ptr [edx-6]
>004E3DFB    je          004E3E29
 004E3DFD    mov         eax,dword ptr [ebp+8]
 004E3E00    movzx       edx,word ptr [eax-6]
 004E3E04    mov         eax,dword ptr [ebp+8]
 004E3E07    mov         eax,dword ptr [eax-0C]
 004E3E0A    mov         cl,2
 004E3E0C    call        004E3B1C
 004E3E11    mov         edx,dword ptr [ebp+8]
 004E3E14    mov         dword ptr [edx-4],eax
 004E3E17    mov         eax,dword ptr [ebp+8]
 004E3E1A    cmp         dword ptr [eax-4],0
>004E3E1E    jne         004E3E29
 004E3E20    mov         byte ptr [ebp-9],3
>004E3E24    jmp         004E3EFE
 004E3E29    mov         eax,dword ptr [ebp+8]
 004E3E2C    push        eax
 004E3E2D    mov         eax,dword ptr [ebp+8]
 004E3E30    mov         eax,dword ptr [eax-4]
 004E3E33    mov         edx,dword ptr [ebp-8]
 004E3E36    call        004E3D58
 004E3E3B    pop         ecx
 004E3E3C    mov         edx,dword ptr [ebp-4]
 004E3E3F    mov         dword ptr [edx],eax
 004E3E41    mov         eax,dword ptr [ebp-4]
 004E3E44    cmp         dword ptr [eax],0
>004E3E47    je          004E3EFE
 004E3E4D    mov         eax,dword ptr [ebp-4]
 004E3E50    mov         eax,dword ptr [eax]
 004E3E52    mov         eax,dword ptr [eax+64]
 004E3E55    cmp         eax,dword ptr [ebp-10]
>004E3E58    jne         004E3EFE
 004E3E5E    cmp         dword ptr [ebp-8],0
>004E3E62    jne         004E3E68
 004E3E64    mov         byte ptr [ebp-9],1
 004E3E68    mov         eax,dword ptr [ebp-4]
 004E3E6B    mov         eax,dword ptr [eax]
 004E3E6D    cmp         byte ptr [eax+39],0
>004E3E71    je          004E3EFA
 004E3E77    xor         eax,eax
 004E3E79    push        ebp
 004E3E7A    push        4E3EDC
 004E3E7F    push        dword ptr fs:[eax]
 004E3E82    mov         dword ptr fs:[eax],esp
 004E3E85    mov         eax,dword ptr [ebp+8]
 004E3E88    mov         eax,dword ptr [eax-0C]
 004E3E8B    test        byte ptr [eax+1C],10
>004E3E8F    jne         004E3E9B
 004E3E91    mov         eax,dword ptr [ebp-4]
 004E3E94    mov         eax,dword ptr [eax]
 004E3E96    call        004E2760
 004E3E9B    mov         eax,dword ptr [ebp-4]
 004E3E9E    mov         eax,dword ptr [eax]
 004E3EA0    mov         edx,dword ptr [eax]
 004E3EA2    call        dword ptr [edx+44]
 004E3EA5    mov         eax,dword ptr [ebp+8]
 004E3EA8    cmp         dword ptr [eax-4],0
>004E3EAC    je          004E3ECE
 004E3EAE    mov         eax,dword ptr [ebp-4]
 004E3EB1    mov         eax,dword ptr [eax]
 004E3EB3    mov         edx,dword ptr [ebp+8]
 004E3EB6    cmp         eax,dword ptr [edx-4]
>004E3EB9    je          004E3ED2
 004E3EBB    mov         eax,dword ptr [ebp+8]
 004E3EBE    mov         eax,dword ptr [eax-4]
 004E3EC1    mov         ax,word ptr [eax+60]
 004E3EC5    mov         edx,dword ptr [ebp+8]
 004E3EC8    cmp         ax,word ptr [edx-6]
>004E3ECC    je          004E3ED2
 004E3ECE    mov         byte ptr [ebp-9],2
 004E3ED2    xor         eax,eax
 004E3ED4    pop         edx
 004E3ED5    pop         ecx
 004E3ED6    pop         ecx
 004E3ED7    mov         dword ptr fs:[eax],edx
>004E3EDA    jmp         004E3EFE
>004E3EDC    jmp         @HandleAnyException
 004E3EE1    mov         eax,dword ptr [ebp+8]
 004E3EE4    mov         edx,dword ptr [eax-0C]
 004E3EE7    mov         eax,[0055B4C8];^Application:TApplication
 004E3EEC    mov         eax,dword ptr [eax]
 004E3EEE    call        TApplication.HandleException
 004E3EF3    call        @DoneExcept
>004E3EF8    jmp         004E3EFE
 004E3EFA    mov         byte ptr [ebp-9],0
 004E3EFE    mov         al,byte ptr [ebp-9]
 004E3F01    pop         edi
 004E3F02    pop         esi
 004E3F03    pop         ebx
 004E3F04    mov         esp,ebp
 004E3F06    pop         ebp
 004E3F07    ret
end;*}

//004E3F08
{*procedure TMenu.sub_004E3F08(?:?);
begin
 004E3F08    push        ebp
 004E3F09    mov         ebp,esp
 004E3F0B    add         esp,0FFFFFFE8
 004E3F0E    mov         dword ptr [ebp-10],edx
 004E3F11    mov         dword ptr [ebp-0C],eax
 004E3F14    mov         byte ptr [ebp-11],0
 004E3F18    mov         eax,dword ptr [ebp-10]
 004E3F1B    movzx       eax,byte ptr [eax+4]
 004E3F1F    mov         word ptr [ebp-6],ax
 004E3F23    cmp         word ptr [ebp-6],0
>004E3F28    je          004E4029
 004E3F2E    push        10
 004E3F30    call        user32.GetKeyState
 004E3F35    test        ax,ax
>004E3F38    jge         004E3F40
 004E3F3A    add         word ptr [ebp-6],2000
 004E3F40    push        11
 004E3F42    call        user32.GetKeyState
 004E3F47    test        ax,ax
>004E3F4A    jge         004E3F52
 004E3F4C    add         word ptr [ebp-6],4000
 004E3F52    mov         eax,dword ptr [ebp-10]
 004E3F55    test        byte ptr [eax+0B],20
>004E3F59    je          004E3F61
 004E3F5B    add         word ptr [ebp-6],8000
 004E3F61    mov         eax,dword ptr [ebp-0C]
 004E3F64    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 004E3F67    mov         dword ptr [ebp-18],eax
 004E3F6A    lea         edx,[ebp-18]
 004E3F6D    mov         eax,[0055DE40];gvar_0055DE40
 004E3F72    call        0048FF60
 004E3F77    xor         eax,eax
 004E3F79    push        ebp
 004E3F7A    push        4E400D
 004E3F7F    push        dword ptr fs:[eax]
 004E3F82    mov         dword ptr fs:[eax],esp
 004E3F85    mov         byte ptr [ebp-12],0
 004E3F89    movzx       edx,word ptr [ebp-6]
 004E3F8D    mov         cl,2
 004E3F8F    mov         eax,dword ptr [ebp-0C]
 004E3F92    call        004E3B1C
 004E3F97    mov         dword ptr [ebp-4],eax
 004E3F9A    cmp         dword ptr [ebp-4],0
>004E3F9E    je          004E3FE9
 004E3FA0    lea         edx,[ebp-4]
 004E3FA3    mov         eax,[0055DE40];gvar_0055DE40
 004E3FA8    call        0048FF60
 004E3FAD    xor         eax,eax
 004E3FAF    push        ebp
 004E3FB0    push        4E3FE2
 004E3FB5    push        dword ptr fs:[eax]
 004E3FB8    mov         dword ptr fs:[eax],esp
 004E3FBB    push        ebp
 004E3FBC    lea         eax,[ebp-4]
 004E3FBF    xor         edx,edx
 004E3FC1    call        004E3D8C
 004E3FC6    pop         ecx
 004E3FC7    mov         byte ptr [ebp-12],al
 004E3FCA    xor         eax,eax
 004E3FCC    pop         edx
 004E3FCD    pop         ecx
 004E3FCE    pop         ecx
 004E3FCF    mov         dword ptr fs:[eax],edx
 004E3FD2    push        4E3FE9
 004E3FD7    mov         eax,[0055DE40];gvar_0055DE40
 004E3FDC    call        TOrderedList.Pop
 004E3FE1    ret
>004E3FE2    jmp         @HandleFinally
>004E3FE7    jmp         004E3FD7
 004E3FE9    cmp         dword ptr [ebp-18],0
>004E3FED    je          004E3FF5
 004E3FEF    cmp         byte ptr [ebp-12],2
>004E3FF3    je          004E3F85
 004E3FF5    xor         eax,eax
 004E3FF7    pop         edx
 004E3FF8    pop         ecx
 004E3FF9    pop         ecx
 004E3FFA    mov         dword ptr fs:[eax],edx
 004E3FFD    push        4E4014
 004E4002    mov         eax,[0055DE40];gvar_0055DE40
 004E4007    call        TOrderedList.Pop
 004E400C    ret
>004E400D    jmp         @HandleFinally
>004E4012    jmp         004E4002
 004E4014    cmp         dword ptr [ebp-4],0
>004E4018    jne         004E4024
 004E401A    cmp         dword ptr [ebp-18],0
>004E401E    je          004E4024
 004E4020    xor         eax,eax
>004E4022    jmp         004E4026
 004E4024    mov         al,1
 004E4026    mov         byte ptr [ebp-11],al
 004E4029    mov         al,byte ptr [ebp-11]
 004E402C    mov         esp,ebp
 004E402E    pop         ebp
 004E402F    ret
end;*}

//004E4030
function TMainMenu.IsStoredBiDiMode(Value:TBiDiMode):Boolean;
begin
{*
 004E4030    push        ebp
 004E4031    mov         ebp,esp
 004E4033    add         esp,0FFFFFFF8
 004E4036    mov         dword ptr [ebp-4],eax
 004E4039    mov         eax,dword ptr [ebp-4]
 004E403C    mov         al,byte ptr [eax+41];TMainMenu.FParentBiDiMode:Boolean
 004E403F    xor         al,1
 004E4041    mov         byte ptr [ebp-5],al
 004E4044    mov         al,byte ptr [ebp-5]
 004E4047    pop         ecx
 004E4048    pop         ecx
 004E4049    pop         ebp
 004E404A    ret
*}
end;

//004E404C
procedure sub_004E404C(?:TMainMenu);
begin
{*
 004E404C    push        ebp
 004E404D    mov         ebp,esp
 004E404F    add         esp,0FFFFFF78
 004E4055    mov         dword ptr [ebp-4],eax
 004E4058    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004E405D    cmp         byte ptr [eax+0D],0
>004E4061    je          004E4114
 004E4067    mov         eax,dword ptr [ebp-4]
 004E406A    cmp         dword ptr [eax+38],0
>004E406E    je          004E4114
 004E4074    mov         eax,dword ptr [ebp-4]
 004E4077    mov         edx,dword ptr [eax]
 004E4079    call        dword ptr [edx+34]
 004E407C    mov         dword ptr [ebp-8],eax
 004E407F    mov         dword ptr [ebp-38],2C
 004E4086    mov         dword ptr [ebp-34],10
 004E408D    lea         eax,[ebp-88]
 004E4093    mov         dword ptr [ebp-14],eax
 004E4096    mov         dword ptr [ebp-10],50
 004E409D    lea         eax,[ebp-38]
 004E40A0    push        eax
 004E40A1    push        0FF
 004E40A3    push        0
 004E40A5    mov         eax,dword ptr [ebp-8]
 004E40A8    push        eax
 004E40A9    call        user32.GetMenuItemInfoA
 004E40AE    test        eax,eax
>004E40B0    je          004E4114
 004E40B2    mov         eax,dword ptr [ebp-4]
 004E40B5    call        TMenu.IsRightToLeft
 004E40BA    mov         edx,dword ptr [ebp-30]
 004E40BD    and         edx,6000
 004E40C3    cmp         edx,1
 004E40C6    sbb         edx,edx
 004E40C8    inc         edx
 004E40C9    cmp         al,dl
>004E40CB    je          004E4114
 004E40CD    mov         eax,dword ptr [ebp-4]
 004E40D0    call        TMenu.IsRightToLeft
 004E40D5    and         eax,7F
 004E40D8    shl         eax,0D
 004E40DB    lea         eax,[eax+eax*2]
 004E40DE    mov         edx,dword ptr [ebp-30]
 004E40E1    and         edx,0FFFF9FFF
 004E40E7    or          eax,edx
 004E40E9    mov         dword ptr [ebp-30],eax
 004E40EC    mov         dword ptr [ebp-34],10
 004E40F3    lea         eax,[ebp-38]
 004E40F6    push        eax
 004E40F7    push        0FF
 004E40F9    push        0
 004E40FB    mov         eax,dword ptr [ebp-8]
 004E40FE    push        eax
 004E40FF    call        user32.SetMenuItemInfoA
 004E4104    test        eax,eax
>004E4106    je          004E4114
 004E4108    mov         eax,dword ptr [ebp-4]
 004E410B    mov         eax,dword ptr [eax+38]
 004E410E    push        eax
 004E410F    call        user32.DrawMenuBar
 004E4114    mov         esp,ebp
 004E4116    pop         ebp
 004E4117    ret
*}
end;

//004E4118
{*procedure sub_004E4118(?:?; ?:?);
begin
 004E4118    push        ebp
 004E4119    mov         ebp,esp
 004E411B    add         esp,0FFFFFFE8
 004E411E    mov         dword ptr [ebp-4],eax
 004E4121    mov         eax,dword ptr [ebp-4]
 004E4124    push        eax
 004E4125    call        user32.GetMenuItemCount
 004E412A    mov         dword ptr [ebp-14],eax
 004E412D    mov         eax,dword ptr [ebp+8]
 004E4130    add         eax,0FFFFFE00
 004E4135    mov         dword ptr [ebp-8],eax
 004E4138    mov         eax,dword ptr [ebp+8]
 004E413B    add         eax,0FFFFFFFB
 004E413E    mov         dword ptr [ebp-0C],eax
 004E4141    xor         eax,eax
 004E4143    mov         dword ptr [ebp-10],eax
>004E4146    jmp         004E41E1
 004E414B    mov         eax,dword ptr [ebp-8]
 004E414E    push        eax
 004E414F    mov         eax,dword ptr [ebp-0C]
 004E4152    sub         eax,dword ptr [ebp-8]
 004E4155    push        eax
 004E4156    push        400
 004E415B    mov         eax,dword ptr [ebp+8]
 004E415E    mov         eax,dword ptr [eax-204]
 004E4164    mov         ecx,dword ptr [ebp-10]
 004E4167    mov         edx,dword ptr [ebp-4]
 004E416A    call        004E48B8
 004E416F    mov         eax,dword ptr [ebp-8]
 004E4172    call        StrEnd
 004E4177    mov         dword ptr [ebp-8],eax
 004E417A    push        400
 004E417F    mov         eax,dword ptr [ebp-10]
 004E4182    push        eax
 004E4183    mov         eax,dword ptr [ebp-4]
 004E4186    push        eax
 004E4187    call        user32.GetMenuState
 004E418C    mov         word ptr [ebp-16],ax
 004E4190    test        byte ptr [ebp-16],2
>004E4194    je          004E41A5
 004E4196    mov         eax,dword ptr [ebp-8]
 004E4199    mov         byte ptr [eax],24
 004E419C    inc         dword ptr [ebp-8]
 004E419F    mov         eax,dword ptr [ebp-8]
 004E41A2    mov         byte ptr [eax],0
 004E41A5    test        byte ptr [ebp-16],40
>004E41A9    je          004E41BA
 004E41AB    mov         eax,dword ptr [ebp-8]
 004E41AE    mov         byte ptr [eax],40
 004E41B1    inc         dword ptr [ebp-8]
 004E41B4    mov         eax,dword ptr [ebp-8]
 004E41B7    mov         byte ptr [eax],0
 004E41BA    test        byte ptr [ebp-16],1
>004E41BE    je          004E41CF
 004E41C0    mov         eax,dword ptr [ebp-8]
 004E41C3    mov         byte ptr [eax],23
 004E41C6    inc         dword ptr [ebp-8]
 004E41C9    mov         eax,dword ptr [ebp-8]
 004E41CC    mov         byte ptr [eax],0
 004E41CF    mov         eax,dword ptr [ebp-8]
 004E41D2    mov         byte ptr [eax],3B
 004E41D5    inc         dword ptr [ebp-8]
 004E41D8    mov         eax,dword ptr [ebp-8]
 004E41DB    mov         byte ptr [eax],0
 004E41DE    inc         dword ptr [ebp-10]
 004E41E1    mov         eax,dword ptr [ebp-10]
 004E41E4    cmp         eax,dword ptr [ebp-14]
>004E41E7    jge         004E41F5
 004E41E9    mov         eax,dword ptr [ebp-8]
 004E41EC    cmp         eax,dword ptr [ebp-0C]
>004E41EF    jb          004E414B
 004E41F5    mov         esp,ebp
 004E41F7    pop         ebp
 004E41F8    ret
end;*}

//004E41FC
{*function sub_004E41FC(?:TMainMenu):?;
begin
 004E41FC    push        ebp
 004E41FD    mov         ebp,esp
 004E41FF    add         esp,0FFFFFDF8
 004E4205    mov         dword ptr [ebp-204],eax
 004E420B    mov         byte ptr [ebp-205],0
 004E4212    mov         byte ptr [ebp-200],0
 004E4219    mov         eax,dword ptr [ebp-204]
 004E421F    cmp         dword ptr [eax+38],0
>004E4223    je          004E4237
 004E4225    push        ebp
 004E4226    mov         eax,dword ptr [ebp-204]
 004E422C    mov         edx,dword ptr [eax]
 004E422E    call        dword ptr [edx+34]
 004E4231    call        004E4118
 004E4236    pop         ecx
 004E4237    mov         eax,dword ptr [ebp-204]
 004E423D    cmp         dword ptr [eax+3C],0
>004E4241    je          004E4260
 004E4243    mov         eax,dword ptr [ebp-204]
 004E4249    mov         eax,dword ptr [eax+3C]
 004E424C    call        @LStrToPChar
 004E4251    lea         edx,[ebp-200]
 004E4257    call        StrComp
 004E425C    test        eax,eax
>004E425E    je          004E4280
 004E4260    mov         byte ptr [ebp-205],1
 004E4267    mov         eax,dword ptr [ebp-204]
 004E426D    add         eax,3C
 004E4270    lea         edx,[ebp-200]
 004E4276    mov         ecx,200
 004E427B    call        @LStrFromArray
 004E4280    mov         al,byte ptr [ebp-205]
 004E4286    mov         esp,ebp
 004E4288    pop         ebp
 004E4289    ret
end;*}

//004E428C
procedure TMainMenu.SetOwnerDraw(Value:Boolean);
begin
{*
 004E428C    push        ebp
 004E428D    mov         ebp,esp
 004E428F    add         esp,0FFFFFFF8
 004E4292    mov         byte ptr [ebp-5],dl
 004E4295    mov         dword ptr [ebp-4],eax
 004E4298    mov         al,byte ptr [ebp-5]
 004E429B    mov         edx,dword ptr [ebp-4]
 004E429E    cmp         al,byte ptr [edx+40];TMainMenu.FOwnerDraw:Boolean
>004E42A1    je          004E42B4
 004E42A3    mov         al,byte ptr [ebp-5]
 004E42A6    mov         edx,dword ptr [ebp-4]
 004E42A9    mov         byte ptr [edx+40],al;TMainMenu.FOwnerDraw:Boolean
 004E42AC    mov         eax,dword ptr [ebp-4]
 004E42AF    call        004E3A48
 004E42B4    pop         ecx
 004E42B5    pop         ecx
 004E42B6    pop         ebp
 004E42B7    ret
*}
end;

//004E42B8
procedure sub_004E42B8(?:TPopupMenu);
begin
{*
 004E42B8    push        ebp
 004E42B9    mov         ebp,esp
 004E42BB    add         esp,0FFFFFFF8
 004E42BE    mov         dword ptr [ebp-4],eax
 004E42C1    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004E42C6    cmp         byte ptr [eax+0D],0
>004E42CA    je          004E4334
 004E42CC    mov         eax,dword ptr [ebp-4]
 004E42CF    mov         al,byte ptr [eax+30]
 004E42D2    mov         byte ptr [ebp-5],al
 004E42D5    mov         eax,dword ptr [ebp-4]
 004E42D8    mov         al,byte ptr [eax+41]
 004E42DB    mov         byte ptr [ebp-6],al
 004E42DE    xor         eax,eax
 004E42E0    push        ebp
 004E42E1    push        4E432D
 004E42E6    push        dword ptr fs:[eax]
 004E42E9    mov         dword ptr fs:[eax],esp
 004E42EC    mov         eax,dword ptr [ebp-4]
 004E42EF    cmp         byte ptr [eax+30],0
>004E42F3    jne         004E4301
 004E42F5    mov         dl,1
 004E42F7    mov         eax,dword ptr [ebp-4]
 004E42FA    call        TMainMenu.SetBiDiMode
>004E42FF    jmp         004E430B
 004E4301    xor         edx,edx
 004E4303    mov         eax,dword ptr [ebp-4]
 004E4306    call        TMainMenu.SetBiDiMode
 004E430B    xor         eax,eax
 004E430D    pop         edx
 004E430E    pop         ecx
 004E430F    pop         ecx
 004E4310    mov         dword ptr fs:[eax],edx
 004E4313    push        4E4334
 004E4318    mov         dl,byte ptr [ebp-5]
 004E431B    mov         eax,dword ptr [ebp-4]
 004E431E    call        TMainMenu.SetBiDiMode
 004E4323    mov         eax,dword ptr [ebp-4]
 004E4326    mov         dl,byte ptr [ebp-6]
 004E4329    mov         byte ptr [eax+41],dl
 004E432C    ret
>004E432D    jmp         @HandleFinally
>004E4332    jmp         004E4318
 004E4334    pop         ecx
 004E4335    pop         ecx
 004E4336    pop         ebp
 004E4337    ret
*}
end;

//004E4338
procedure sub_004E4338(?:TComponent; ?:HWND);
begin
{*
 004E4338    push        ebp
 004E4339    mov         ebp,esp
 004E433B    add         esp,0FFFFFFF8
 004E433E    mov         dword ptr [ebp-8],edx
 004E4341    mov         dword ptr [ebp-4],eax
 004E4344    mov         eax,dword ptr [ebp-8]
 004E4347    mov         edx,dword ptr [ebp-4]
 004E434A    mov         dword ptr [edx+38],eax
 004E434D    mov         eax,dword ptr [ebp-4]
 004E4350    call        004E41FC
 004E4355    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004E435A    cmp         byte ptr [eax+0D],0
>004E435E    je          004E4381
 004E4360    cmp         dword ptr [ebp-8],0
>004E4364    je          004E4381
 004E4366    mov         eax,dword ptr [ebp-4]
 004E4369    cmp         byte ptr [eax+41],0
>004E436D    je          004E4379
 004E436F    mov         eax,dword ptr [ebp-4]
 004E4372    call        004E49F8
>004E4377    jmp         004E4381
 004E4379    mov         eax,dword ptr [ebp-4]
 004E437C    call        004E42B8
 004E4381    pop         ecx
 004E4382    pop         ecx
 004E4383    pop         ebp
 004E4384    ret
*}
end;

//004E4388
{*procedure sub_004E4388(?:?; ?:?);
begin
 004E4388    push        ebp
 004E4389    mov         ebp,esp
 004E438B    add         esp,0FFFFFFF4
 004E438E    push        ebx
 004E438F    mov         byte ptr [ebp-9],cl
 004E4392    mov         dword ptr [ebp-8],edx
 004E4395    mov         dword ptr [ebp-4],eax
 004E4398    mov         eax,dword ptr [ebp-4]
 004E439B    cmp         word ptr [eax+52],0;TMenu.?f52:word
>004E43A0    je          004E43B5
 004E43A2    mov         al,byte ptr [ebp-9]
 004E43A5    push        eax
 004E43A6    mov         ebx,dword ptr [ebp-4]
 004E43A9    mov         ecx,dword ptr [ebp-8]
 004E43AC    mov         edx,dword ptr [ebp-4]
 004E43AF    mov         eax,dword ptr [ebx+54];TMenu.?f54:dword
 004E43B2    call        dword ptr [ebx+50];TMenu.FOnChange
 004E43B5    pop         ebx
 004E43B6    mov         esp,ebp
 004E43B8    pop         ebp
 004E43B9    ret
end;*}

//004E43BC
procedure sub_004E43BC;
begin
{*
 004E43BC    push        ebp
 004E43BD    mov         ebp,esp
 004E43BF    push        ecx
 004E43C0    push        ebx
 004E43C1    mov         dword ptr [ebp-4],eax
 004E43C4    mov         eax,dword ptr [ebp-4]
 004E43C7    call        004835C0
 004E43CC    xor         ecx,ecx
 004E43CE    xor         edx,edx
 004E43D0    mov         eax,dword ptr [ebp-4]
 004E43D3    mov         ebx,dword ptr [eax]
 004E43D5    call        dword ptr [ebx+30];TMenu.sub_004E4388
 004E43D8    pop         ebx
 004E43D9    pop         ecx
 004E43DA    pop         ebp
 004E43DB    ret
*}
end;

//004E43DC
{*procedure sub_004E43DC(?:?; ?:?; ?:?);
begin
 004E43DC    push        ebp
 004E43DD    mov         ebp,esp
 004E43DF    add         esp,0FFFFFFF4
 004E43E2    push        ebx
 004E43E3    mov         dword ptr [ebp-8],ecx
 004E43E6    mov         dword ptr [ebp-0C],edx
 004E43E9    mov         dword ptr [ebp-4],eax
 004E43EC    mov         ax,[004E441C];0x9 gvar_004E441C
 004E43F2    mov         edx,dword ptr [ebp-4]
 004E43F5    and         ax,word ptr [edx+1C];TMenu.FComponentState:TComponentState
 004E43F9    mov         dx,word ptr ds:[4E4420];0x0 gvar_004E4420
 004E4400    cmp         dx,ax
>004E4403    jne         004E4413
 004E4405    mov         cl,byte ptr [ebp+8]
 004E4408    mov         edx,dword ptr [ebp-8]
 004E440B    mov         eax,dword ptr [ebp-4]
 004E440E    mov         ebx,dword ptr [eax]
 004E4410    call        dword ptr [ebx+30];TMenu.sub_004E4388
 004E4413    pop         ebx
 004E4414    mov         esp,ebp
 004E4416    pop         ebp
 004E4417    ret         4
end;*}

//004E4424
{*procedure sub_004E4424(?:?; ?:?);
begin
 004E4424    push        ebp
 004E4425    mov         ebp,esp
 004E4427    add         esp,0FFFFFFF8
 004E442A    mov         dword ptr [ebp-8],edx
 004E442D    mov         dword ptr [ebp-4],eax
 004E4430    mov         eax,dword ptr [ebp-8]
 004E4433    mov         edx,dword ptr [ebp-4]
 004E4436    cmp         eax,dword ptr [edx+48]
>004E4439    jne         004E4443
 004E443B    mov         eax,dword ptr [ebp-4]
 004E443E    call        004E3A48
 004E4443    pop         ecx
 004E4444    pop         ecx
 004E4445    pop         ebp
 004E4446    ret
end;*}

//004E4448
procedure TMainMenu.SetImages(Value:TCustomImageList);
begin
{*
 004E4448    push        ebp
 004E4449    mov         ebp,esp
 004E444B    add         esp,0FFFFFFF8
 004E444E    mov         dword ptr [ebp-8],edx
 004E4451    mov         dword ptr [ebp-4],eax
 004E4454    mov         eax,dword ptr [ebp-4]
 004E4457    cmp         dword ptr [eax+48],0;TMainMenu.FImages:TCustomImageList
>004E445B    je          004E446E
 004E445D    mov         eax,dword ptr [ebp-4]
 004E4460    mov         edx,dword ptr [eax+44];TMainMenu.FImageChangeLink:TChangeLink
 004E4463    mov         eax,dword ptr [ebp-4]
 004E4466    mov         eax,dword ptr [eax+48];TMainMenu.FImages:TCustomImageList
 004E4469    call        004DD6F8
 004E446E    mov         eax,dword ptr [ebp-8]
 004E4471    mov         edx,dword ptr [ebp-4]
 004E4474    mov         dword ptr [edx+48],eax;TMainMenu.FImages:TCustomImageList
 004E4477    mov         eax,dword ptr [ebp-4]
 004E447A    cmp         dword ptr [eax+48],0;TMainMenu.FImages:TCustomImageList
>004E447E    je          004E449F
 004E4480    mov         eax,dword ptr [ebp-4]
 004E4483    mov         edx,dword ptr [eax+44];TMainMenu.FImageChangeLink:TChangeLink
 004E4486    mov         eax,dword ptr [ebp-4]
 004E4489    mov         eax,dword ptr [eax+48];TMainMenu.FImages:TCustomImageList
 004E448C    call        004DD760
 004E4491    mov         edx,dword ptr [ebp-4]
 004E4494    mov         eax,dword ptr [ebp-4]
 004E4497    mov         eax,dword ptr [eax+48];TMainMenu.FImages:TCustomImageList
 004E449A    call        00483020
 004E449F    mov         eax,dword ptr [ebp-4]
 004E44A2    call        004E3A48
 004E44A7    pop         ecx
 004E44A8    pop         ecx
 004E44A9    pop         ebp
 004E44AA    ret
*}
end;

//004E44AC
{*procedure sub_004E44AC(?:?; ?:?);
begin
 004E44AC    push        ebp
 004E44AD    mov         ebp,esp
 004E44AF    add         esp,0FFFFFFF4
 004E44B2    mov         byte ptr [ebp-9],cl
 004E44B5    mov         dword ptr [ebp-8],edx
 004E44B8    mov         dword ptr [ebp-4],eax
 004E44BB    mov         cl,byte ptr [ebp-9]
 004E44BE    mov         edx,dword ptr [ebp-8]
 004E44C1    mov         eax,dword ptr [ebp-4]
 004E44C4    call        00483398
 004E44C9    mov         eax,dword ptr [ebp-8]
 004E44CC    mov         edx,dword ptr [ebp-4]
 004E44CF    cmp         eax,dword ptr [edx+48];TMenu.FImages:TCustomImageList
>004E44D2    jne         004E44E4
 004E44D4    cmp         byte ptr [ebp-9],1
>004E44D8    jne         004E44E4
 004E44DA    xor         edx,edx
 004E44DC    mov         eax,dword ptr [ebp-4]
 004E44DF    call        TMainMenu.SetImages
 004E44E4    mov         esp,ebp
 004E44E6    pop         ebp
 004E44E7    ret
end;*}

//004E44E8
function TMenu.IsRightToLeft:Boolean;
begin
{*
 004E44E8    push        ebp
 004E44E9    mov         ebp,esp
 004E44EB    add         esp,0FFFFFFF8
 004E44EE    mov         dword ptr [ebp-4],eax
 004E44F1    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004E44F6    cmp         byte ptr [eax+0D],0
>004E44FA    je          004E4505
 004E44FC    mov         eax,dword ptr [ebp-4]
 004E44FF    cmp         byte ptr [eax+30],0
>004E4503    jne         004E4509
 004E4505    xor         eax,eax
>004E4507    jmp         004E450B
 004E4509    mov         al,1
 004E450B    mov         byte ptr [ebp-5],al
 004E450E    mov         al,byte ptr [ebp-5]
 004E4511    pop         ecx
 004E4512    pop         ecx
 004E4513    pop         ebp
 004E4514    ret
*}
end;

//004E4518
{*function sub_004E4518(?:?; ?:LongWord; ?:?; ?:?; ?:?):?;
begin
 004E4518    push        ebp
 004E4519    mov         ebp,esp
 004E451B    add         esp,0FFFFFFE8
 004E451E    mov         dword ptr [ebp-0C],ecx
 004E4521    mov         word ptr [ebp-6],dx
 004E4525    mov         dword ptr [ebp-4],eax
 004E4528    xor         eax,eax
 004E452A    mov         dword ptr [ebp-14],eax
 004E452D    test        byte ptr [ebp-6],10
>004E4531    je          004E4558
 004E4533    mov         eax,dword ptr [ebp-0C]
 004E4536    push        eax
 004E4537    mov         eax,dword ptr [ebp-4]
 004E453A    push        eax
 004E453B    call        user32.GetSubMenu
 004E4540    mov         dword ptr [ebp-4],eax
 004E4543    mov         eax,dword ptr [ebp+0C]
 004E4546    mov         eax,dword ptr [eax-4]
 004E4549    mov         cl,1
 004E454B    mov         edx,dword ptr [ebp-4]
 004E454E    call        004E3B1C
 004E4553    mov         dword ptr [ebp-14],eax
>004E4556    jmp         004E4581
 004E4558    mov         eax,dword ptr [ebp-0C]
 004E455B    push        eax
 004E455C    mov         eax,dword ptr [ebp-4]
 004E455F    push        eax
 004E4560    call        user32.GetMenuItemID
 004E4565    mov         dword ptr [ebp-18],eax
 004E4568    cmp         dword ptr [ebp-18],0FFFFFFFF
>004E456C    je          004E4581
 004E456E    mov         eax,dword ptr [ebp+0C]
 004E4571    mov         eax,dword ptr [eax-4]
 004E4574    xor         ecx,ecx
 004E4576    mov         edx,dword ptr [ebp-18]
 004E4579    call        004E3B1C
 004E457E    mov         dword ptr [ebp-14],eax
 004E4581    cmp         dword ptr [ebp-14],0
>004E4585    je          004E459C
 004E4587    xor         eax,eax
 004E4589    mov         al,byte ptr [ebp+8]
 004E458C    mov         edx,dword ptr [ebp-14]
 004E458F    mov         edx,dword ptr [edx+30]
 004E4592    call        004E7E60
 004E4597    mov         byte ptr [ebp-0D],al
>004E459A    jmp         004E45A0
 004E459C    mov         byte ptr [ebp-0D],0
 004E45A0    mov         al,byte ptr [ebp-0D]
 004E45A3    mov         esp,ebp
 004E45A5    pop         ebp
 004E45A6    ret         4
end;*}

//004E45AC
{*function sub_004E45AC(?:?; ?:LongWord; ?:?; ?:?; ?:?):?;
begin
 004E45AC    push        ebp
 004E45AD    mov         ebp,esp
 004E45AF    add         esp,0FFFFFFE0
 004E45B2    push        ebx
 004E45B3    xor         ebx,ebx
 004E45B5    mov         dword ptr [ebp-20],ebx
 004E45B8    mov         dword ptr [ebp-18],ebx
 004E45BB    mov         dword ptr [ebp-1C],ebx
 004E45BE    mov         dword ptr [ebp-0C],ecx
 004E45C1    mov         word ptr [ebp-6],dx
 004E45C5    mov         dword ptr [ebp-4],eax
 004E45C8    xor         eax,eax
 004E45CA    push        ebp
 004E45CB    push        4E46AE
 004E45D0    push        dword ptr fs:[eax]
 004E45D3    mov         dword ptr fs:[eax],esp
 004E45D6    test        byte ptr [ebp-6],10
>004E45DA    je          004E4601
 004E45DC    mov         eax,dword ptr [ebp-0C]
 004E45DF    push        eax
 004E45E0    mov         eax,dword ptr [ebp-4]
 004E45E3    push        eax
 004E45E4    call        user32.GetSubMenu
 004E45E9    mov         dword ptr [ebp-4],eax
 004E45EC    mov         eax,dword ptr [ebp+0C]
 004E45EF    mov         eax,dword ptr [eax-4]
 004E45F2    mov         cl,1
 004E45F4    mov         edx,dword ptr [ebp-4]
 004E45F7    call        004E3B1C
 004E45FC    mov         dword ptr [ebp-14],eax
>004E45FF    jmp         004E4635
 004E4601    mov         eax,dword ptr [ebp+0C]
 004E4604    mov         eax,dword ptr [eax-4]
 004E4607    mov         cl,1
 004E4609    mov         edx,dword ptr [ebp-4]
 004E460C    call        004E3B1C
 004E4611    mov         dword ptr [ebp-14],eax
 004E4614    cmp         dword ptr [ebp-14],0
>004E4618    je          004E4635
 004E461A    mov         eax,dword ptr [ebp-14]
 004E461D    call        004E1FAC
 004E4622    cmp         eax,dword ptr [ebp-0C]
>004E4625    jle         004E4635
 004E4627    mov         edx,dword ptr [ebp-0C]
 004E462A    mov         eax,dword ptr [ebp-14]
 004E462D    call        004E1FD8
 004E4632    mov         dword ptr [ebp-14],eax
 004E4635    cmp         dword ptr [ebp-14],0
>004E4639    je          004E468F
 004E463B    mov         eax,dword ptr [ebp-14]
 004E463E    cmp         dword ptr [eax+30],0
>004E4642    je          004E468F
 004E4644    lea         eax,[ebp-18]
 004E4647    mov         dl,byte ptr [ebp+8]
 004E464A    call        @LStrFromChar
 004E464F    mov         eax,dword ptr [ebp-18]
 004E4652    push        eax
 004E4653    lea         eax,[ebp-1C]
 004E4656    mov         edx,dword ptr [ebp-14]
 004E4659    mov         edx,dword ptr [edx+30]
 004E465C    mov         dl,byte ptr [edx]
 004E465E    call        @LStrFromChar
 004E4663    mov         eax,dword ptr [ebp-1C]
 004E4666    pop         edx
 004E4667    call        00466420
 004E466C    test        eax,eax
>004E466E    jne         004E4684
 004E4670    lea         edx,[ebp-20]
 004E4673    mov         eax,dword ptr [ebp-14]
 004E4676    mov         eax,dword ptr [eax+30]
 004E4679    call        004E5850
 004E467E    cmp         dword ptr [ebp-20],0
>004E4682    je          004E4688
 004E4684    xor         eax,eax
>004E4686    jmp         004E468A
 004E4688    mov         al,1
 004E468A    mov         byte ptr [ebp-0D],al
>004E468D    jmp         004E4693
 004E468F    mov         byte ptr [ebp-0D],0
 004E4693    xor         eax,eax
 004E4695    pop         edx
 004E4696    pop         ecx
 004E4697    pop         ecx
 004E4698    mov         dword ptr fs:[eax],edx
 004E469B    push        4E46B5
 004E46A0    lea         eax,[ebp-20]
 004E46A3    mov         edx,3
 004E46A8    call        @LStrArrayClr
 004E46AD    ret
>004E46AE    jmp         @HandleFinally
>004E46B3    jmp         004E46A0
 004E46B5    mov         al,byte ptr [ebp-0D]
 004E46B8    pop         ebx
 004E46B9    mov         esp,ebp
 004E46BB    pop         ebp
 004E46BC    ret         4
end;*}

//004E46C0
{*procedure sub_004E46C0(?:Pointer; ?:?);
begin
 004E46C0    push        ebp
 004E46C1    mov         ebp,esp
 004E46C3    add         esp,0FFFFFFDC
 004E46C6    mov         dword ptr [ebp-8],edx
 004E46C9    mov         dword ptr [ebp-4],eax
 004E46CC    mov         eax,dword ptr [ebp-8]
 004E46CF    xor         edx,edx
 004E46D1    mov         dword ptr [eax+0C],edx
 004E46D4    mov         dword ptr [ebp-14],0FFFFFFFF
 004E46DB    mov         dword ptr [ebp-18],0FFFFFFFF
 004E46E2    mov         dword ptr [ebp-1C],0FFFFFFFF
 004E46E9    mov         eax,dword ptr [ebp-8]
 004E46EC    mov         eax,dword ptr [eax+8]
 004E46EF    push        eax
 004E46F0    call        user32.GetMenuItemCount
 004E46F5    mov         dword ptr [ebp-0C],eax
 004E46F8    mov         eax,dword ptr [ebp-0C]
 004E46FB    dec         eax
 004E46FC    test        eax,eax
>004E46FE    jl          004E47A4
 004E4704    inc         eax
 004E4705    mov         dword ptr [ebp-24],eax
 004E4708    mov         dword ptr [ebp-10],0
 004E470F    push        400
 004E4714    mov         eax,dword ptr [ebp-10]
 004E4717    push        eax
 004E4718    mov         eax,dword ptr [ebp-8]
 004E471B    mov         eax,dword ptr [eax+8]
 004E471E    push        eax
 004E471F    call        user32.GetMenuState
 004E4724    mov         word ptr [ebp-1E],ax
 004E4728    push        ebp
 004E4729    mov         eax,dword ptr [ebp-8]
 004E472C    mov         al,byte ptr [eax+4]
 004E472F    push        eax
 004E4730    mov         eax,dword ptr [ebp-8]
 004E4733    mov         eax,dword ptr [eax+8]
 004E4736    mov         ecx,dword ptr [ebp-10]
 004E4739    mov         dx,word ptr [ebp-1E]
 004E473D    call        004E4518
 004E4742    pop         ecx
 004E4743    test        al,al
>004E4745    je          004E4798
 004E4747    test        byte ptr [ebp-1E],2
>004E474B    je          004E475C
 004E474D    cmp         dword ptr [ebp-14],0
>004E4751    jge         004E4798
 004E4753    mov         dword ptr [ebp-14],0FFFFFFFE
>004E475A    jmp         004E4798
 004E475C    cmp         dword ptr [ebp-14],0
>004E4760    jge         004E4774
 004E4762    mov         eax,dword ptr [ebp-10]
 004E4765    mov         dword ptr [ebp-14],eax
 004E4768    mov         eax,dword ptr [ebp-8]
 004E476B    mov         dword ptr [eax+0C],2
>004E4772    jmp         004E477E
 004E4774    mov         eax,dword ptr [ebp-8]
 004E4777    mov         dword ptr [eax+0C],3
 004E477E    test        byte ptr [ebp-1E],80
>004E4782    je          004E478C
 004E4784    mov         eax,dword ptr [ebp-10]
 004E4787    mov         dword ptr [ebp-18],eax
>004E478A    jmp         004E4798
 004E478C    cmp         dword ptr [ebp-18],0
>004E4790    jl          004E4798
 004E4792    mov         eax,dword ptr [ebp-10]
 004E4795    mov         dword ptr [ebp-1C],eax
 004E4798    inc         dword ptr [ebp-10]
 004E479B    dec         dword ptr [ebp-24]
>004E479E    jne         004E470F
 004E47A4    cmp         dword ptr [ebp-14],0FFFFFFFF
>004E47A8    jge         004E47B9
 004E47AA    mov         eax,dword ptr [ebp-8]
 004E47AD    mov         dword ptr [eax+0C],10000
>004E47B4    jmp         004E48B3
 004E47B9    cmp         dword ptr [ebp-14],0
>004E47BD    jge         004E486F
 004E47C3    mov         eax,dword ptr [ebp-0C]
 004E47C6    dec         eax
 004E47C7    test        eax,eax
>004E47C9    jl          004E486F
 004E47CF    inc         eax
 004E47D0    mov         dword ptr [ebp-24],eax
 004E47D3    mov         dword ptr [ebp-10],0
 004E47DA    push        400
 004E47DF    mov         eax,dword ptr [ebp-10]
 004E47E2    push        eax
 004E47E3    mov         eax,dword ptr [ebp-8]
 004E47E6    mov         eax,dword ptr [eax+8]
 004E47E9    push        eax
 004E47EA    call        user32.GetMenuState
 004E47EF    mov         word ptr [ebp-1E],ax
 004E47F3    push        ebp
 004E47F4    mov         eax,dword ptr [ebp-8]
 004E47F7    mov         al,byte ptr [eax+4]
 004E47FA    push        eax
 004E47FB    mov         eax,dword ptr [ebp-8]
 004E47FE    mov         eax,dword ptr [eax+8]
 004E4801    mov         ecx,dword ptr [ebp-10]
 004E4804    mov         dx,word ptr [ebp-1E]
 004E4808    call        004E45AC
 004E480D    pop         ecx
 004E480E    test        al,al
>004E4810    je          004E4863
 004E4812    test        byte ptr [ebp-1E],2
>004E4816    je          004E4827
 004E4818    mov         eax,dword ptr [ebp-8]
 004E481B    mov         dword ptr [eax+0C],10000
>004E4822    jmp         004E48B3
 004E4827    cmp         dword ptr [ebp-14],0
>004E482B    jge         004E483F
 004E482D    mov         eax,dword ptr [ebp-10]
 004E4830    mov         dword ptr [ebp-14],eax
 004E4833    mov         eax,dword ptr [ebp-8]
 004E4836    mov         dword ptr [eax+0C],2
>004E483D    jmp         004E4849
 004E483F    mov         eax,dword ptr [ebp-8]
 004E4842    mov         dword ptr [eax+0C],3
 004E4849    test        byte ptr [ebp-1E],80
>004E484D    je          004E4857
 004E484F    mov         eax,dword ptr [ebp-10]
 004E4852    mov         dword ptr [ebp-18],eax
>004E4855    jmp         004E4863
 004E4857    cmp         dword ptr [ebp-18],0
>004E485B    jl          004E4863
 004E485D    mov         eax,dword ptr [ebp-10]
 004E4860    mov         dword ptr [ebp-1C],eax
 004E4863    inc         dword ptr [ebp-10]
 004E4866    dec         dword ptr [ebp-24]
>004E4869    jne         004E47DA
 004E486F    mov         eax,dword ptr [ebp-8]
 004E4872    cmp         dword ptr [eax+0C],2
>004E4876    jne         004E488C
 004E4878    mov         eax,dword ptr [ebp-8]
 004E487B    mov         eax,dword ptr [eax+0C]
 004E487E    shl         eax,10
 004E4881    or          eax,dword ptr [ebp-14]
 004E4884    mov         edx,dword ptr [ebp-8]
 004E4887    mov         dword ptr [edx+0C],eax
>004E488A    jmp         004E48B3
 004E488C    mov         eax,dword ptr [ebp-8]
 004E488F    cmp         dword ptr [eax+0C],3
>004E4893    jne         004E48B3
 004E4895    cmp         dword ptr [ebp-1C],0
>004E4899    jge         004E48A1
 004E489B    mov         eax,dword ptr [ebp-14]
 004E489E    mov         dword ptr [ebp-1C],eax
 004E48A1    mov         eax,dword ptr [ebp-8]
 004E48A4    mov         eax,dword ptr [eax+0C]
 004E48A7    shl         eax,10
 004E48AA    or          eax,dword ptr [ebp-1C]
 004E48AD    mov         edx,dword ptr [ebp-8]
 004E48B0    mov         dword ptr [edx+0C],eax
 004E48B3    mov         esp,ebp
 004E48B5    pop         ebp
 004E48B6    ret
end;*}

//004E48B8
{*function sub_004E48B8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004E48B8    push        ebp
 004E48B9    mov         ebp,esp
 004E48BB    add         esp,0FFFFFFE8
 004E48BE    mov         dword ptr [ebp-0C],ecx
 004E48C1    mov         dword ptr [ebp-8],edx
 004E48C4    mov         dword ptr [ebp-4],eax
 004E48C7    mov         eax,dword ptr [ebp-4]
 004E48CA    call        004E3D2C
 004E48CF    test        al,al
>004E48D1    je          004E4970
 004E48D7    xor         eax,eax
 004E48D9    mov         dword ptr [ebp-14],eax
 004E48DC    mov         eax,dword ptr [ebp+8]
 004E48DF    push        eax
 004E48E0    mov         eax,dword ptr [ebp-0C]
 004E48E3    push        eax
 004E48E4    mov         eax,dword ptr [ebp-8]
 004E48E7    push        eax
 004E48E8    call        user32.GetMenuState
 004E48ED    mov         word ptr [ebp-16],ax
 004E48F1    test        byte ptr [ebp-16],10
>004E48F5    je          004E4919
 004E48F7    mov         eax,dword ptr [ebp-0C]
 004E48FA    push        eax
 004E48FB    mov         eax,dword ptr [ebp-8]
 004E48FE    push        eax
 004E48FF    call        user32.GetSubMenu
 004E4904    mov         dword ptr [ebp-8],eax
 004E4907    mov         cl,1
 004E4909    mov         edx,dword ptr [ebp-8]
 004E490C    mov         eax,dword ptr [ebp-4]
 004E490F    call        004E3B1C
 004E4914    mov         dword ptr [ebp-14],eax
>004E4917    jmp         004E493F
 004E4919    mov         eax,dword ptr [ebp-0C]
 004E491C    push        eax
 004E491D    mov         eax,dword ptr [ebp-8]
 004E4920    push        eax
 004E4921    call        user32.GetMenuItemID
 004E4926    mov         dword ptr [ebp-0C],eax
 004E4929    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004E492D    je          004E493F
 004E492F    xor         ecx,ecx
 004E4931    mov         edx,dword ptr [ebp-0C]
 004E4934    mov         eax,dword ptr [ebp-4]
 004E4937    call        004E3B1C
 004E493C    mov         dword ptr [ebp-14],eax
 004E493F    cmp         dword ptr [ebp-14],0
>004E4943    je          004E4969
 004E4945    mov         eax,dword ptr [ebp+10]
 004E4948    mov         byte ptr [eax],0
 004E494B    mov         eax,dword ptr [ebp-14]
 004E494E    mov         edx,dword ptr [eax+30]
 004E4951    mov         ecx,dword ptr [ebp+0C]
 004E4954    mov         eax,dword ptr [ebp+10]
 004E4957    call        0046730C
 004E495C    mov         eax,dword ptr [ebp+10]
 004E495F    call        StrLen
 004E4964    mov         dword ptr [ebp-10],eax
>004E4967    jmp         004E498C
 004E4969    xor         eax,eax
 004E496B    mov         dword ptr [ebp-10],eax
>004E496E    jmp         004E498C
 004E4970    mov         eax,dword ptr [ebp+8]
 004E4973    push        eax
 004E4974    mov         eax,dword ptr [ebp+0C]
 004E4977    push        eax
 004E4978    mov         eax,dword ptr [ebp+10]
 004E497B    push        eax
 004E497C    mov         eax,dword ptr [ebp-0C]
 004E497F    push        eax
 004E4980    mov         eax,dword ptr [ebp-8]
 004E4983    push        eax
 004E4984    call        user32.GetMenuStringA
 004E4989    mov         dword ptr [ebp-10],eax
 004E498C    mov         eax,dword ptr [ebp-10]
 004E498F    mov         esp,ebp
 004E4991    pop         ebp
 004E4992    ret         0C
end;*}

//004E4998
procedure TMainMenu.SetBiDiMode(Value:TBiDiMode);
begin
{*
 004E4998    push        ebp
 004E4999    mov         ebp,esp
 004E499B    add         esp,0FFFFFFF8
 004E499E    mov         byte ptr [ebp-5],dl
 004E49A1    mov         dword ptr [ebp-4],eax
 004E49A4    mov         eax,dword ptr [ebp-4]
 004E49A7    mov         al,byte ptr [eax+30];TMainMenu.FBiDiMode:TBiDiMode
 004E49AA    cmp         al,byte ptr [ebp-5]
>004E49AD    je          004E49C7
 004E49AF    mov         al,byte ptr [ebp-5]
 004E49B2    mov         edx,dword ptr [ebp-4]
 004E49B5    mov         byte ptr [edx+30],al;TMainMenu.FBiDiMode:TBiDiMode
 004E49B8    mov         eax,dword ptr [ebp-4]
 004E49BB    mov         byte ptr [eax+41],0;TMainMenu.FParentBiDiMode:Boolean
 004E49BF    mov         eax,dword ptr [ebp-4]
 004E49C2    call        004E404C
 004E49C7    pop         ecx
 004E49C8    pop         ecx
 004E49C9    pop         ebp
 004E49CA    ret
*}
end;

//004E49CC
procedure TMainMenu.SetParentBiDiMode(Value:Boolean);
begin
{*
 004E49CC    push        ebp
 004E49CD    mov         ebp,esp
 004E49CF    add         esp,0FFFFFFF8
 004E49D2    mov         byte ptr [ebp-5],dl
 004E49D5    mov         dword ptr [ebp-4],eax
 004E49D8    mov         al,byte ptr [ebp-5]
 004E49DB    mov         edx,dword ptr [ebp-4]
 004E49DE    cmp         al,byte ptr [edx+41];TMainMenu.FParentBiDiMode:Boolean
>004E49E1    je          004E49F4
 004E49E3    mov         al,byte ptr [ebp-5]
 004E49E6    mov         edx,dword ptr [ebp-4]
 004E49E9    mov         byte ptr [edx+41],al;TMainMenu.FParentBiDiMode:Boolean
 004E49EC    mov         eax,dword ptr [ebp-4]
 004E49EF    call        004E49F8
 004E49F4    pop         ecx
 004E49F5    pop         ecx
 004E49F6    pop         ebp
 004E49F7    ret
*}
end;

//004E49F8
procedure sub_004E49F8(?:TMenu);
begin
{*
 004E49F8    push        ebp
 004E49F9    mov         ebp,esp
 004E49FB    add         esp,0FFFFFFF8
 004E49FE    mov         dword ptr [ebp-4],eax
 004E4A01    mov         eax,dword ptr [ebp-4]
 004E4A04    cmp         byte ptr [eax+41],0;TMenu.FParentBiDiMode:Boolean
>004E4A08    je          004E4A33
 004E4A0A    mov         eax,dword ptr [ebp-4]
 004E4A0D    mov         eax,dword ptr [eax+38];TMenu.FWindowHandle:HWND
 004E4A10    call        004C6F7C
 004E4A15    mov         dword ptr [ebp-8],eax
 004E4A18    cmp         dword ptr [ebp-8],0
>004E4A1C    je          004E4A33
 004E4A1E    mov         eax,dword ptr [ebp-8]
 004E4A21    mov         dl,byte ptr [eax+5F]
 004E4A24    mov         eax,dword ptr [ebp-4]
 004E4A27    call        TMainMenu.SetBiDiMode
 004E4A2C    mov         eax,dword ptr [ebp-4]
 004E4A2F    mov         byte ptr [eax+41],1;TMenu.FParentBiDiMode:Boolean
 004E4A33    pop         ecx
 004E4A34    pop         ecx
 004E4A35    pop         ebp
 004E4A36    ret
*}
end;

//004E4A38
procedure sub_004E4A38(?:TPopupMenu; ?:TImage);
begin
{*
 004E4A38    push        ebp
 004E4A39    mov         ebp,esp
 004E4A3B    add         esp,0FFFFFFF8
 004E4A3E    mov         dword ptr [ebp-8],edx
 004E4A41    mov         dword ptr [ebp-4],eax
 004E4A44    mov         eax,dword ptr [ebp-4]
 004E4A47    cmp         byte ptr [eax+41],0;TPopupMenu.FParentBiDiMode:Boolean
>004E4A4B    je          004E4A6D
 004E4A4D    mov         eax,dword ptr [ebp-8]
 004E4A50    mov         edx,dword ptr ds:[4C5774];TControl
 004E4A56    call        @AsClass
 004E4A5B    mov         dl,byte ptr [eax+5F];TControl.FBiDiMode:TBiDiMode
 004E4A5E    mov         eax,dword ptr [ebp-4]
 004E4A61    call        TMainMenu.SetBiDiMode
 004E4A66    mov         eax,dword ptr [ebp-4]
 004E4A69    mov         byte ptr [eax+41],1;TPopupMenu.FParentBiDiMode:Boolean
 004E4A6D    pop         ecx
 004E4A6E    pop         ecx
 004E4A6F    pop         ebp
 004E4A70    ret
*}
end;

//004E4A74
{*function TMainMenu.GetAutoHotkeys:?;
begin
 004E4A74    push        ebp
 004E4A75    mov         ebp,esp
 004E4A77    add         esp,0FFFFFFF8
 004E4A7A    mov         dword ptr [ebp-4],eax
 004E4A7D    mov         eax,dword ptr [ebp-4]
 004E4A80    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 004E4A83    movzx       eax,byte ptr [eax+3B];TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 004E4A87    mov         al,byte ptr [eax+5417DC]
 004E4A8D    mov         byte ptr [ebp-5],al
 004E4A90    mov         al,byte ptr [ebp-5]
 004E4A93    pop         ecx
 004E4A94    pop         ecx
 004E4A95    pop         ebp
 004E4A96    ret
end;*}

//004E4A98
procedure TMainMenu.SetAutoHotkeys(Value:TMenuAutoFlag);
begin
{*
 004E4A98    push        ebp
 004E4A99    mov         ebp,esp
 004E4A9B    add         esp,0FFFFFFF8
 004E4A9E    mov         byte ptr [ebp-5],dl
 004E4AA1    mov         dword ptr [ebp-4],eax
 004E4AA4    xor         eax,eax
 004E4AA6    mov         al,byte ptr [ebp-5]
 004E4AA9    mov         al,byte ptr [eax+5417D8]
 004E4AAF    mov         edx,dword ptr [ebp-4]
 004E4AB2    mov         edx,dword ptr [edx+34];TMainMenu.Items:TMenuItem
 004E4AB5    mov         byte ptr [edx+3B],al;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 004E4AB8    pop         ecx
 004E4AB9    pop         ecx
 004E4ABA    pop         ebp
 004E4ABB    ret
*}
end;

//004E4ABC
{*function TMainMenu.GetAutoLineReduction:?;
begin
 004E4ABC    push        ebp
 004E4ABD    mov         ebp,esp
 004E4ABF    add         esp,0FFFFFFF8
 004E4AC2    mov         dword ptr [ebp-4],eax
 004E4AC5    mov         eax,dword ptr [ebp-4]
 004E4AC8    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 004E4ACB    movzx       eax,byte ptr [eax+3C];TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 004E4ACF    mov         al,byte ptr [eax+5417DC]
 004E4AD5    mov         byte ptr [ebp-5],al
 004E4AD8    mov         al,byte ptr [ebp-5]
 004E4ADB    pop         ecx
 004E4ADC    pop         ecx
 004E4ADD    pop         ebp
 004E4ADE    ret
end;*}

//004E4AE0
procedure TMainMenu.SetAutoLineReduction(Value:TMenuAutoFlag);
begin
{*
 004E4AE0    push        ebp
 004E4AE1    mov         ebp,esp
 004E4AE3    add         esp,0FFFFFFF8
 004E4AE6    mov         byte ptr [ebp-5],dl
 004E4AE9    mov         dword ptr [ebp-4],eax
 004E4AEC    xor         eax,eax
 004E4AEE    mov         al,byte ptr [ebp-5]
 004E4AF1    mov         al,byte ptr [eax+5417D8]
 004E4AF7    mov         edx,dword ptr [ebp-4]
 004E4AFA    mov         edx,dword ptr [edx+34];TMainMenu.Items:TMenuItem
 004E4AFD    mov         byte ptr [edx+3C],al;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 004E4B00    pop         ecx
 004E4B01    pop         ecx
 004E4B02    pop         ebp
 004E4B03    ret
*}
end;

//004E4B04
procedure TMainMenu.SetAutoMerge(Value:Boolean);
begin
{*
 004E4B04    push        ebp
 004E4B05    mov         ebp,esp
 004E4B07    add         esp,0FFFFFFF8
 004E4B0A    mov         byte ptr [ebp-5],dl
 004E4B0D    mov         dword ptr [ebp-4],eax
 004E4B10    mov         eax,dword ptr [ebp-4]
 004E4B13    mov         al,byte ptr [eax+5C];TMainMenu.AutoMerge:Boolean
 004E4B16    cmp         al,byte ptr [ebp-5]
>004E4B19    je          004E4B42
 004E4B1B    mov         al,byte ptr [ebp-5]
 004E4B1E    mov         edx,dword ptr [ebp-4]
 004E4B21    mov         byte ptr [edx+5C],al;TMainMenu.AutoMerge:Boolean
 004E4B24    mov         eax,dword ptr [ebp-4]
 004E4B27    cmp         dword ptr [eax+38],0;TMainMenu.FWindowHandle:HWND
>004E4B2B    je          004E4B42
 004E4B2D    push        0
 004E4B2F    push        0
 004E4B31    push        0B015
 004E4B36    mov         eax,dword ptr [ebp-4]
 004E4B39    mov         eax,dword ptr [eax+38];TMainMenu.FWindowHandle:HWND
 004E4B3C    push        eax
 004E4B3D    call        user32.SendMessageA
 004E4B42    pop         ecx
 004E4B43    pop         ecx
 004E4B44    pop         ebp
 004E4B45    ret
*}
end;

//004E4B48
{*procedure sub_004E4B48(?:?; ?:?; ?:?);
begin
 004E4B48    push        ebp
 004E4B49    mov         ebp,esp
 004E4B4B    add         esp,0FFFFFFF0
 004E4B4E    mov         dword ptr [ebp-0C],ecx
 004E4B51    mov         dword ptr [ebp-8],edx
 004E4B54    mov         dword ptr [ebp-4],eax
 004E4B57    mov         eax,dword ptr [ebp-4]
 004E4B5A    cmp         dword ptr [eax+38],0;TMainMenu.FWindowHandle:HWND
>004E4B5E    je          004E4B98
 004E4B60    mov         eax,dword ptr [ebp-4]
 004E4B63    call        004E41FC
 004E4B68    mov         byte ptr [ebp-0D],al
 004E4B6B    cmp         dword ptr [ebp-0C],0
>004E4B6F    jne         004E4B86
 004E4B71    push        0
 004E4B73    push        0
 004E4B75    push        0B015
 004E4B7A    mov         eax,dword ptr [ebp-4]
 004E4B7D    mov         eax,dword ptr [eax+38];TMainMenu.FWindowHandle:HWND
 004E4B80    push        eax
 004E4B81    call        user32.SendMessageA
 004E4B86    cmp         byte ptr [ebp-0D],0
>004E4B8A    je          004E4B98
 004E4B8C    mov         eax,dword ptr [ebp-4]
 004E4B8F    mov         eax,dword ptr [eax+38];TMainMenu.FWindowHandle:HWND
 004E4B92    push        eax
 004E4B93    call        user32.DrawMenuBar
 004E4B98    mov         al,byte ptr [ebp+8]
 004E4B9B    push        eax
 004E4B9C    mov         ecx,dword ptr [ebp-0C]
 004E4B9F    mov         edx,dword ptr [ebp-8]
 004E4BA2    mov         eax,dword ptr [ebp-4]
 004E4BA5    call        004E43DC
 004E4BAA    mov         esp,ebp
 004E4BAC    pop         ebp
 004E4BAD    ret         4
end;*}

//004E4BB0
{*procedure sub_004E4BB0(?:?; ?:?);
begin
 004E4BB0    push        ebp
 004E4BB1    mov         ebp,esp
 004E4BB3    add         esp,0FFFFFFF8
 004E4BB6    mov         dword ptr [ebp-8],edx
 004E4BB9    mov         dword ptr [ebp-4],eax
 004E4BBC    cmp         dword ptr [ebp-8],0
>004E4BC0    je          004E4BD5
 004E4BC2    mov         eax,dword ptr [ebp-8]
 004E4BC5    mov         edx,dword ptr [eax+34]
 004E4BC8    mov         eax,dword ptr [ebp-4]
 004E4BCB    mov         eax,dword ptr [eax+34]
 004E4BCE    call        004E00F8
>004E4BD3    jmp         004E4BE2
 004E4BD5    xor         edx,edx
 004E4BD7    mov         eax,dword ptr [ebp-4]
 004E4BDA    mov         eax,dword ptr [eax+34]
 004E4BDD    call        004E00F8
 004E4BE2    pop         ecx
 004E4BE3    pop         ecx
 004E4BE4    pop         ebp
 004E4BE5    ret
end;*}

//004E4BE8
{*procedure sub_004E4BE8(?:?; ?:?);
begin
 004E4BE8    push        ebp
 004E4BE9    mov         ebp,esp
 004E4BEB    add         esp,0FFFFFFF8
 004E4BEE    mov         dword ptr [ebp-8],edx
 004E4BF1    mov         dword ptr [ebp-4],eax
 004E4BF4    cmp         dword ptr [ebp-8],0
>004E4BF8    je          004E4C18
 004E4BFA    mov         eax,dword ptr [ebp-4]
 004E4BFD    mov         eax,dword ptr [eax+34]
 004E4C00    mov         eax,dword ptr [eax+68]
 004E4C03    mov         edx,dword ptr [ebp-8]
 004E4C06    cmp         eax,dword ptr [edx+34]
>004E4C09    jne         004E4C18
 004E4C0B    xor         edx,edx
 004E4C0D    mov         eax,dword ptr [ebp-4]
 004E4C10    mov         eax,dword ptr [eax+34]
 004E4C13    call        004E00F8
 004E4C18    pop         ecx
 004E4C19    pop         ecx
 004E4C1A    pop         ebp
 004E4C1B    ret
end;*}

//004E4C1C
{*procedure sub_004E4C1C(?:?);
begin
 004E4C1C    push        ebp
 004E4C1D    mov         ebp,esp
 004E4C1F    push        ecx
 004E4C20    push        ebx
 004E4C21    mov         dword ptr [ebp-4],eax
 004E4C24    push        0
 004E4C26    xor         ecx,ecx
 004E4C28    xor         edx,edx
 004E4C2A    mov         eax,dword ptr [ebp-4]
 004E4C2D    mov         ebx,dword ptr [eax]
 004E4C2F    call        dword ptr [ebx+38]
 004E4C32    mov         eax,dword ptr [ebp-4]
 004E4C35    cmp         dword ptr [eax+38],0
>004E4C39    je          004E4C50
 004E4C3B    push        0
 004E4C3D    push        0
 004E4C3F    push        0B015
 004E4C44    mov         eax,dword ptr [ebp-4]
 004E4C47    mov         eax,dword ptr [eax+38]
 004E4C4A    push        eax
 004E4C4B    call        user32.SendMessageA
 004E4C50    pop         ebx
 004E4C51    pop         ecx
 004E4C52    pop         ebp
 004E4C53    ret
end;*}

//004E4C54
{*function sub_004E4C54:?;
begin
 004E4C54    push        ebp
 004E4C55    mov         ebp,esp
 004E4C57    add         esp,0FFFFFFF8
 004E4C5A    mov         dword ptr [ebp-4],eax
 004E4C5D    mov         eax,dword ptr [ebp-4]
 004E4C60    cmp         dword ptr [eax+58],0;TMainMenu.FOle2Menu:HMENU
>004E4C64    je          004E4C71
 004E4C66    mov         eax,dword ptr [ebp-4]
 004E4C69    mov         eax,dword ptr [eax+58];TMainMenu.FOle2Menu:HMENU
 004E4C6C    mov         dword ptr [ebp-8],eax
>004E4C6F    jmp         004E4C7C
 004E4C71    mov         eax,dword ptr [ebp-4]
 004E4C74    call        004E39C4
 004E4C79    mov         dword ptr [ebp-8],eax
 004E4C7C    mov         eax,dword ptr [ebp-8]
 004E4C7F    pop         ecx
 004E4C80    pop         ecx
 004E4C81    pop         ebp
 004E4C82    ret
end;*}

//004E4CD8
{*procedure sub_004E4CD8(?:?);
begin
 004E4CD8    push        ebp
 004E4CD9    mov         ebp,esp
 004E4CDB    add         esp,0FFFFFFC0
 004E4CDE    push        ebx
 004E4CDF    xor         ecx,ecx
 004E4CE1    mov         dword ptr [ebp-40],ecx
 004E4CE4    mov         dword ptr [ebp-8],edx
 004E4CE7    mov         dword ptr [ebp-4],eax
 004E4CEA    xor         eax,eax
 004E4CEC    push        ebp
 004E4CED    push        4E52BF
 004E4CF2    push        dword ptr fs:[eax]
 004E4CF5    mov         dword ptr fs:[eax],esp
 004E4CF8    mov         eax,dword ptr [ebp-8]
 004E4CFB    mov         eax,dword ptr [eax]
 004E4CFD    cmp         eax,111
>004E4D02    jg          004E4D24
>004E4D04    je          004E4D40
 004E4D06    sub         eax,2B
>004E4D09    je          004E4FBB
 004E4D0F    dec         eax
>004E4D10    je          004E50D6
 004E4D16    sub         eax,27
>004E4D19    je          004E4E91
>004E4D1F    jmp         004E5283
 004E4D24    sub         eax,117
>004E4D29    je          004E4D86
 004E4D2B    sub         eax,8
>004E4D2E    je          004E4DCB
 004E4D34    dec         eax
>004E4D35    je          004E5226
>004E4D3B    jmp         004E5283
 004E4D40    mov         eax,dword ptr [ebp-4]
 004E4D43    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 004E4D46    dec         eax
 004E4D47    test        eax,eax
>004E4D49    jl          004E5283
 004E4D4F    inc         eax
 004E4D50    mov         dword ptr [ebp-2C],eax
 004E4D53    mov         dword ptr [ebp-0C],0
 004E4D5A    mov         edx,dword ptr [ebp-0C]
 004E4D5D    mov         eax,dword ptr [ebp-4]
 004E4D60    call        TList.Get
 004E4D65    mov         edx,dword ptr [ebp-8]
 004E4D68    mov         dx,word ptr [edx+4]
 004E4D6C    call        004E3BF0
 004E4D71    test        al,al
>004E4D73    jne         004E52A9
 004E4D79    inc         dword ptr [ebp-0C]
 004E4D7C    dec         dword ptr [ebp-2C]
>004E4D7F    jne         004E4D5A
>004E4D81    jmp         004E5283
 004E4D86    mov         eax,dword ptr [ebp-4]
 004E4D89    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 004E4D8C    dec         eax
 004E4D8D    test        eax,eax
>004E4D8F    jl          004E5283
 004E4D95    inc         eax
 004E4D96    mov         dword ptr [ebp-2C],eax
 004E4D99    mov         dword ptr [ebp-0C],0
 004E4DA0    mov         edx,dword ptr [ebp-0C]
 004E4DA3    mov         eax,dword ptr [ebp-4]
 004E4DA6    call        TList.Get
 004E4DAB    mov         edx,dword ptr [ebp-8]
 004E4DAE    mov         edx,dword ptr [edx+4]
 004E4DB1    call        004E3C2C
 004E4DB6    test        al,al
>004E4DB8    jne         004E52A9
 004E4DBE    inc         dword ptr [ebp-0C]
 004E4DC1    dec         dword ptr [ebp-2C]
>004E4DC4    jne         004E4DA0
>004E4DC6    jmp         004E5283
 004E4DCB    mov         byte ptr [ebp-15],0
 004E4DCF    mov         eax,dword ptr [ebp-8]
 004E4DD2    test        byte ptr [eax+6],10
>004E4DD6    je          004E4DDC
 004E4DD8    mov         byte ptr [ebp-15],1
 004E4DDC    mov         eax,dword ptr [ebp-4]
 004E4DDF    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 004E4DE2    dec         eax
 004E4DE3    test        eax,eax
>004E4DE5    jl          004E4E7E
 004E4DEB    inc         eax
 004E4DEC    mov         dword ptr [ebp-2C],eax
 004E4DEF    mov         dword ptr [ebp-0C],0
 004E4DF6    cmp         byte ptr [ebp-15],1
>004E4DFA    jne         004E4E27
 004E4DFC    mov         eax,dword ptr [ebp-8]
 004E4DFF    cmp         dword ptr [eax+8],0
>004E4E03    je          004E4E1E
 004E4E05    mov         eax,dword ptr [ebp-8]
 004E4E08    movzx       eax,word ptr [eax+4]
 004E4E0C    push        eax
 004E4E0D    mov         eax,dword ptr [ebp-8]
 004E4E10    mov         eax,dword ptr [eax+8]
 004E4E13    push        eax
 004E4E14    call        user32.GetSubMenu
 004E4E19    mov         dword ptr [ebp-10],eax
>004E4E1C    jmp         004E4E31
 004E4E1E    mov         dword ptr [ebp-10],0FFFFFFFF
>004E4E25    jmp         004E4E31
 004E4E27    mov         eax,dword ptr [ebp-8]
 004E4E2A    movzx       eax,word ptr [eax+4]
 004E4E2E    mov         dword ptr [ebp-10],eax
 004E4E31    mov         edx,dword ptr [ebp-0C]
 004E4E34    mov         eax,dword ptr [ebp-4]
 004E4E37    call        TList.Get
 004E4E3C    mov         cl,byte ptr [ebp-15]
 004E4E3F    mov         edx,dword ptr [ebp-10]
 004E4E42    call        004E3B1C
 004E4E47    mov         dword ptr [ebp-14],eax
 004E4E4A    cmp         dword ptr [ebp-14],0
>004E4E4E    je          004E4E72
 004E4E50    lea         edx,[ebp-40]
 004E4E53    mov         eax,dword ptr [ebp-14]
 004E4E56    mov         eax,dword ptr [eax+58]
 004E4E59    call        004C7278
 004E4E5E    mov         edx,dword ptr [ebp-40]
 004E4E61    mov         eax,[0055B4C8];^Application:TApplication
 004E4E66    mov         eax,dword ptr [eax]
 004E4E68    call        004F387C
>004E4E6D    jmp         004E52A9
 004E4E72    inc         dword ptr [ebp-0C]
 004E4E75    dec         dword ptr [ebp-2C]
>004E4E78    jne         004E4DF6
 004E4E7E    mov         eax,[0055B4C8];^Application:TApplication
 004E4E83    mov         eax,dword ptr [eax]
 004E4E85    xor         edx,edx
 004E4E87    call        004F387C
>004E4E8C    jmp         004E5283
 004E4E91    mov         eax,dword ptr [ebp-8]
 004E4E94    mov         eax,dword ptr [eax+8]
 004E4E97    mov         dword ptr [ebp-30],eax
 004E4E9A    mov         eax,dword ptr [ebp-4]
 004E4E9D    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 004E4EA0    dec         eax
 004E4EA1    test        eax,eax
>004E4EA3    jl          004E5283
 004E4EA9    inc         eax
 004E4EAA    mov         dword ptr [ebp-2C],eax
 004E4EAD    mov         dword ptr [ebp-0C],0
 004E4EB4    mov         edx,dword ptr [ebp-0C]
 004E4EB7    mov         eax,dword ptr [ebp-4]
 004E4EBA    call        TList.Get
 004E4EBF    mov         edx,dword ptr [eax]
 004E4EC1    call        dword ptr [edx+34]
 004E4EC4    mov         edx,dword ptr [ebp-30]
 004E4EC7    cmp         eax,dword ptr [edx+0C]
>004E4ECA    jne         004E4EDF
 004E4ECC    mov         edx,dword ptr [ebp-0C]
 004E4ECF    mov         eax,dword ptr [ebp-4]
 004E4ED2    call        TList.Get
 004E4ED7    mov         eax,dword ptr [eax+34]
 004E4EDA    mov         dword ptr [ebp-14],eax
>004E4EDD    jmp         004E4EFA
 004E4EDF    mov         edx,dword ptr [ebp-0C]
 004E4EE2    mov         eax,dword ptr [ebp-4]
 004E4EE5    call        TList.Get
 004E4EEA    mov         edx,dword ptr [ebp-30]
 004E4EED    mov         edx,dword ptr [edx+0C]
 004E4EF0    mov         cl,1
 004E4EF2    call        004E3B1C
 004E4EF7    mov         dword ptr [ebp-14],eax
 004E4EFA    cmp         dword ptr [ebp-14],0
>004E4EFE    je          004E4FAA
 004E4F04    mov         edx,dword ptr [ebp-0C]
 004E4F07    mov         eax,dword ptr [ebp-4]
 004E4F0A    call        TList.Get
 004E4F0F    mov         edx,dword ptr [ebp-30]
 004E4F12    mov         edx,dword ptr [edx+8]
 004E4F15    mov         cl,1
 004E4F17    call        004E3B58
 004E4F1C    mov         dword ptr [ebp-1C],eax
 004E4F1F    cmp         dword ptr [ebp-1C],0
>004E4F23    jne         004E4F40
 004E4F25    mov         edx,dword ptr [ebp-0C]
 004E4F28    mov         eax,dword ptr [ebp-4]
 004E4F2B    call        TList.Get
 004E4F30    mov         edx,dword ptr [ebp-30]
 004E4F33    mov         edx,dword ptr [edx+0C]
 004E4F36    xor         ecx,ecx
 004E4F38    call        004E3B58
 004E4F3D    mov         dword ptr [ebp-1C],eax
 004E4F40    mov         eax,[0055B6D8];^Screen:TScreen
 004E4F45    mov         eax,dword ptr [eax]
 004E4F47    cmp         dword ptr [eax+6C],0;TScreen.FActiveForm:TForm
>004E4F4B    je          004E52A9
 004E4F51    cmp         dword ptr [ebp-1C],0
>004E4F55    jne         004E4F6A
 004E4F57    mov         eax,[0055B6D8];^Screen:TScreen
 004E4F5C    mov         eax,dword ptr [eax]
 004E4F5E    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 004E4F61    mov         eax,dword ptr [eax+158];TForm.HelpContext:THelpContext
 004E4F67    mov         dword ptr [ebp-1C],eax
 004E4F6A    mov         eax,[0055B6D8];^Screen:TScreen
 004E4F6F    mov         eax,dword ptr [eax]
 004E4F71    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 004E4F74    test        byte ptr [eax+228],8;TForm.FBorderIcons:TBorderIcons
>004E4F7B    je          004E4F96
 004E4F7D    mov         eax,[0055B4C8];^Application:TApplication
 004E4F82    mov         eax,dword ptr [eax]
 004E4F84    mov         ecx,dword ptr [ebp-1C]
 004E4F87    mov         edx,8
 004E4F8C    call        004F34A4
>004E4F91    jmp         004E52A9
 004E4F96    mov         eax,[0055B4C8];^Application:TApplication
 004E4F9B    mov         eax,dword ptr [eax]
 004E4F9D    mov         edx,dword ptr [ebp-1C]
 004E4FA0    call        004F342C
>004E4FA5    jmp         004E52A9
 004E4FAA    inc         dword ptr [ebp-0C]
 004E4FAD    dec         dword ptr [ebp-2C]
>004E4FB0    jne         004E4EB4
>004E4FB6    jmp         004E5283
 004E4FBB    mov         eax,dword ptr [ebp-8]
 004E4FBE    mov         eax,dword ptr [eax+8]
 004E4FC1    mov         dword ptr [ebp-34],eax
 004E4FC4    mov         eax,dword ptr [ebp-4]
 004E4FC7    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 004E4FCA    dec         eax
 004E4FCB    test        eax,eax
>004E4FCD    jl          004E5283
 004E4FD3    inc         eax
 004E4FD4    mov         dword ptr [ebp-2C],eax
 004E4FD7    mov         dword ptr [ebp-0C],0
 004E4FDE    mov         edx,dword ptr [ebp-0C]
 004E4FE1    mov         eax,dword ptr [ebp-4]
 004E4FE4    call        TList.Get
 004E4FE9    mov         edx,dword ptr [ebp-34]
 004E4FEC    mov         edx,dword ptr [edx+8]
 004E4FEF    xor         ecx,ecx
 004E4FF1    call        004E3B1C
 004E4FF6    mov         dword ptr [ebp-14],eax
 004E4FF9    cmp         dword ptr [ebp-14],0
>004E4FFD    je          004E50C5
 004E5003    mov         dl,1
 004E5005    mov         eax,[004C4BA4];TControlCanvas
 004E500A    call        TControlCanvas.Create;TControlCanvas.Create
 004E500F    mov         dword ptr [ebp-20],eax
 004E5012    xor         eax,eax
 004E5014    push        ebp
 004E5015    push        4E50BE
 004E501A    push        dword ptr fs:[eax]
 004E501D    mov         dword ptr fs:[eax],esp
 004E5020    mov         eax,dword ptr [ebp-34]
 004E5023    mov         eax,dword ptr [eax+18]
 004E5026    push        eax
 004E5027    call        gdi32.SaveDC
 004E502C    mov         dword ptr [ebp-24],eax
 004E502F    xor         eax,eax
 004E5031    push        ebp
 004E5032    push        4E50A1
 004E5037    push        dword ptr fs:[eax]
 004E503A    mov         dword ptr fs:[eax],esp
 004E503D    mov         eax,dword ptr [ebp-34]
 004E5040    mov         edx,dword ptr [eax+18]
 004E5043    mov         eax,dword ptr [ebp-20]
 004E5046    call        TCanvas.SetHandle
 004E504B    mov         eax,[0055B6D8];^Screen:TScreen
 004E5050    mov         eax,dword ptr [eax]
 004E5052    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004E5058    mov         eax,dword ptr [ebp-20]
 004E505B    call        TCanvas.SetFont
 004E5060    mov         eax,dword ptr [ebp-34]
 004E5063    mov         ax,word ptr [eax+10]
 004E5067    push        eax
 004E5068    mov         eax,dword ptr [ebp-34]
 004E506B    lea         ecx,[eax+1C]
 004E506E    mov         edx,dword ptr [ebp-20]
 004E5071    mov         eax,dword ptr [ebp-14]
 004E5074    call        004E5678
 004E5079    xor         eax,eax
 004E507B    pop         edx
 004E507C    pop         ecx
 004E507D    pop         ecx
 004E507E    mov         dword ptr fs:[eax],edx
 004E5081    push        4E50A8
 004E5086    xor         edx,edx
 004E5088    mov         eax,dword ptr [ebp-20]
 004E508B    call        TCanvas.SetHandle
 004E5090    mov         eax,dword ptr [ebp-24]
 004E5093    push        eax
 004E5094    mov         eax,dword ptr [ebp-34]
 004E5097    mov         eax,dword ptr [eax+18]
 004E509A    push        eax
 004E509B    call        gdi32.RestoreDC
 004E50A0    ret
>004E50A1    jmp         @HandleFinally
>004E50A6    jmp         004E5086
 004E50A8    xor         eax,eax
 004E50AA    pop         edx
 004E50AB    pop         ecx
 004E50AC    pop         ecx
 004E50AD    mov         dword ptr fs:[eax],edx
 004E50B0    push        4E52A9
 004E50B5    mov         eax,dword ptr [ebp-20]
 004E50B8    call        TObject.Free
 004E50BD    ret
>004E50BE    jmp         @HandleFinally
>004E50C3    jmp         004E50B5
 004E50C5    inc         dword ptr [ebp-0C]
 004E50C8    dec         dword ptr [ebp-2C]
>004E50CB    jne         004E4FDE
>004E50D1    jmp         004E5283
 004E50D6    mov         eax,dword ptr [ebp-8]
 004E50D9    mov         eax,dword ptr [eax+8]
 004E50DC    mov         dword ptr [ebp-38],eax
 004E50DF    mov         eax,dword ptr [ebp-4]
 004E50E2    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 004E50E5    dec         eax
 004E50E6    test        eax,eax
>004E50E8    jl          004E5283
 004E50EE    inc         eax
 004E50EF    mov         dword ptr [ebp-2C],eax
 004E50F2    mov         dword ptr [ebp-0C],0
 004E50F9    mov         edx,dword ptr [ebp-0C]
 004E50FC    mov         eax,dword ptr [ebp-4]
 004E50FF    call        TList.Get
 004E5104    mov         edx,dword ptr [ebp-38]
 004E5107    mov         edx,dword ptr [edx+8]
 004E510A    xor         ecx,ecx
 004E510C    call        004E3B1C
 004E5111    mov         dword ptr [ebp-14],eax
 004E5114    cmp         dword ptr [ebp-14],0
>004E5118    je          004E5218
 004E511E    mov         eax,dword ptr [ebp-4]
 004E5121    mov         eax,dword ptr [eax+10];TPopupList.....FWindow:HWND
 004E5124    push        eax
 004E5125    call        user32.GetWindowDC
 004E512A    mov         dword ptr [ebp-28],eax
 004E512D    xor         eax,eax
 004E512F    push        ebp
 004E5130    push        4E5211
 004E5135    push        dword ptr fs:[eax]
 004E5138    mov         dword ptr fs:[eax],esp
 004E513B    mov         dl,1
 004E513D    mov         eax,[004C4BA4];TControlCanvas
 004E5142    call        TControlCanvas.Create;TControlCanvas.Create
 004E5147    mov         dword ptr [ebp-20],eax
 004E514A    xor         eax,eax
 004E514C    push        ebp
 004E514D    push        4E51EC
 004E5152    push        dword ptr fs:[eax]
 004E5155    mov         dword ptr fs:[eax],esp
 004E5158    mov         eax,dword ptr [ebp-28]
 004E515B    push        eax
 004E515C    call        gdi32.SaveDC
 004E5161    mov         dword ptr [ebp-24],eax
 004E5164    xor         eax,eax
 004E5166    push        ebp
 004E5167    push        4E51CF
 004E516C    push        dword ptr fs:[eax]
 004E516F    mov         dword ptr fs:[eax],esp
 004E5172    mov         edx,dword ptr [ebp-28]
 004E5175    mov         eax,dword ptr [ebp-20]
 004E5178    call        TCanvas.SetHandle
 004E517D    mov         eax,[0055B6D8];^Screen:TScreen
 004E5182    mov         eax,dword ptr [eax]
 004E5184    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004E518A    mov         eax,dword ptr [ebp-20]
 004E518D    call        TCanvas.SetFont
 004E5192    mov         eax,dword ptr [ebp-38]
 004E5195    add         eax,10
 004E5198    push        eax
 004E5199    mov         eax,dword ptr [ebp-38]
 004E519C    lea         ecx,[eax+0C]
 004E519F    mov         edx,dword ptr [ebp-20]
 004E51A2    mov         eax,dword ptr [ebp-14]
 004E51A5    mov         ebx,dword ptr [eax]
 004E51A7    call        dword ptr [ebx+38]
 004E51AA    xor         eax,eax
 004E51AC    pop         edx
 004E51AD    pop         ecx
 004E51AE    pop         ecx
 004E51AF    mov         dword ptr fs:[eax],edx
 004E51B2    push        4E51D6
 004E51B7    xor         edx,edx
 004E51B9    mov         eax,dword ptr [ebp-20]
 004E51BC    call        TCanvas.SetHandle
 004E51C1    mov         eax,dword ptr [ebp-24]
 004E51C4    push        eax
 004E51C5    mov         eax,dword ptr [ebp-28]
 004E51C8    push        eax
 004E51C9    call        gdi32.RestoreDC
 004E51CE    ret
>004E51CF    jmp         @HandleFinally
>004E51D4    jmp         004E51B7
 004E51D6    xor         eax,eax
 004E51D8    pop         edx
 004E51D9    pop         ecx
 004E51DA    pop         ecx
 004E51DB    mov         dword ptr fs:[eax],edx
 004E51DE    push        4E51F3
 004E51E3    mov         eax,dword ptr [ebp-20]
 004E51E6    call        TObject.Free
 004E51EB    ret
>004E51EC    jmp         @HandleFinally
>004E51F1    jmp         004E51E3
 004E51F3    xor         eax,eax
 004E51F5    pop         edx
 004E51F6    pop         ecx
 004E51F7    pop         ecx
 004E51F8    mov         dword ptr fs:[eax],edx
 004E51FB    push        4E52A9
 004E5200    mov         eax,dword ptr [ebp-28]
 004E5203    push        eax
 004E5204    mov         eax,dword ptr [ebp-4]
 004E5207    mov         eax,dword ptr [eax+10];TPopupList......FWindow:HWND
 004E520A    push        eax
 004E520B    call        user32.ReleaseDC
 004E5210    ret
>004E5211    jmp         @HandleFinally
>004E5216    jmp         004E5200
 004E5218    inc         dword ptr [ebp-0C]
 004E521B    dec         dword ptr [ebp-2C]
>004E521E    jne         004E50F9
>004E5224    jmp         004E5283
 004E5226    mov         eax,dword ptr [ebp-4]
 004E5229    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 004E522C    dec         eax
 004E522D    test        eax,eax
>004E522F    jl          004E5283
 004E5231    inc         eax
 004E5232    mov         dword ptr [ebp-2C],eax
 004E5235    mov         dword ptr [ebp-0C],0
 004E523C    mov         edx,dword ptr [ebp-0C]
 004E523F    mov         eax,dword ptr [ebp-4]
 004E5242    call        TList.Get
 004E5247    mov         dword ptr [ebp-3C],eax
 004E524A    mov         eax,dword ptr [ebp-3C]
 004E524D    mov         edx,dword ptr [eax]
 004E524F    call        dword ptr [edx+34]
 004E5252    mov         edx,dword ptr [ebp-8]
 004E5255    cmp         eax,dword ptr [edx+8]
>004E5258    je          004E526E
 004E525A    mov         edx,dword ptr [ebp-8]
 004E525D    mov         edx,dword ptr [edx+8]
 004E5260    mov         cl,1
 004E5262    mov         eax,dword ptr [ebp-3C]
 004E5265    call        004E3B1C
 004E526A    test        eax,eax
>004E526C    je          004E527B
 004E526E    mov         edx,dword ptr [ebp-8]
 004E5271    mov         eax,dword ptr [ebp-3C]
 004E5274    call        004E46C0
>004E5279    jmp         004E52A9
 004E527B    inc         dword ptr [ebp-0C]
 004E527E    dec         dword ptr [ebp-2C]
>004E5281    jne         004E523C
 004E5283    mov         eax,dword ptr [ebp-8]
 004E5286    mov         eax,dword ptr [eax+8]
 004E5289    push        eax
 004E528A    mov         eax,dword ptr [ebp-8]
 004E528D    mov         eax,dword ptr [eax+4]
 004E5290    push        eax
 004E5291    mov         eax,dword ptr [ebp-8]
 004E5294    mov         eax,dword ptr [eax]
 004E5296    push        eax
 004E5297    mov         eax,dword ptr [ebp-4]
 004E529A    mov         eax,dword ptr [eax+10];TPopupList.......FWindow:HWND
 004E529D    push        eax
 004E529E    call        user32.DefWindowProcA
 004E52A3    mov         edx,dword ptr [ebp-8]
 004E52A6    mov         dword ptr [edx+0C],eax
 004E52A9    xor         eax,eax
 004E52AB    pop         edx
 004E52AC    pop         ecx
 004E52AD    pop         ecx
 004E52AE    mov         dword ptr fs:[eax],edx
 004E52B1    push        4E52C6
 004E52B6    lea         eax,[ebp-40]
 004E52B9    call        @LStrClr
 004E52BE    ret
>004E52BF    jmp         @HandleFinally
>004E52C4    jmp         004E52B6
 004E52C6    pop         ebx
 004E52C7    mov         esp,ebp
 004E52C9    pop         ebp
 004E52CA    ret
end;*}

//004E52CC
{*procedure sub_004E52CC(?:?; ?:TPopupMenu);
begin
 004E52CC    push        ebp
 004E52CD    mov         ebp,esp
 004E52CF    add         esp,0FFFFFFF8
 004E52D2    mov         dword ptr [ebp-8],edx
 004E52D5    mov         dword ptr [ebp-4],eax
 004E52D8    mov         eax,dword ptr [ebp-4]
 004E52DB    cmp         dword ptr [eax+8],0
>004E52DF    jne         004E52F5
 004E52E1    mov         eax,dword ptr [ebp-4]
 004E52E4    push        eax
 004E52E5    push        4E4C84
 004E52EA    call        00484814
 004E52EF    mov         edx,dword ptr [ebp-4]
 004E52F2    mov         dword ptr [edx+10],eax
 004E52F5    mov         edx,dword ptr [ebp-8]
 004E52F8    mov         eax,dword ptr [ebp-4]
 004E52FB    call        TList.Add
 004E5300    pop         ecx
 004E5301    pop         ecx
 004E5302    pop         ebp
 004E5303    ret
end;*}

//004E5304
{*procedure sub_004E5304(?:?; ?:?);
begin
 004E5304    push        ebp
 004E5305    mov         ebp,esp
 004E5307    add         esp,0FFFFFFF8
 004E530A    mov         dword ptr [ebp-8],edx
 004E530D    mov         dword ptr [ebp-4],eax
 004E5310    mov         edx,dword ptr [ebp-8]
 004E5313    mov         eax,dword ptr [ebp-4]
 004E5316    call        00478AC4
 004E531B    mov         eax,dword ptr [ebp-4]
 004E531E    cmp         dword ptr [eax+8],0
>004E5322    jne         004E532F
 004E5324    mov         eax,dword ptr [ebp-4]
 004E5327    mov         eax,dword ptr [eax+10]
 004E532A    call        004848D0
 004E532F    pop         ecx
 004E5330    pop         ecx
 004E5331    pop         ebp
 004E5332    ret
end;*}

//004E5334
constructor sub_004E5334;
begin
{*
 004E5334    push        ebp
 004E5335    mov         ebp,esp
 004E5337    add         esp,0FFFFFFF4
 004E533A    test        dl,dl
>004E533C    je          004E5346
 004E533E    add         esp,0FFFFFFF0
 004E5341    call        @ClassCreate
 004E5346    mov         dword ptr [ebp-0C],ecx
 004E5349    mov         byte ptr [ebp-5],dl
 004E534C    mov         dword ptr [ebp-4],eax
 004E534F    mov         ecx,dword ptr [ebp-0C]
 004E5352    xor         edx,edx
 004E5354    mov         eax,dword ptr [ebp-4]
 004E5357    call        004E3884
 004E535C    mov         eax,dword ptr [ebp-4]
 004E535F    mov         dword ptr [eax+58],0FFFFFFFF;TPopupMenu.FPopupPoint:TPoint
 004E5366    mov         eax,dword ptr [ebp-4]
 004E5369    mov         dword ptr [eax+5C],0FFFFFFFF
 004E5370    mov         eax,dword ptr [ebp-4]
 004E5373    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 004E5376    mov         edx,dword ptr [ebp-4]
 004E5379    mov         dword ptr [eax+8C],edx;TMenuItem.?f8C:TPopupMenu
 004E537F    mov         edx,dword ptr [edx]
 004E5381    mov         edx,dword ptr [edx+3C];TPopupMenu.FMenuImage:String
 004E5384    mov         dword ptr [eax+88],edx;TMenuItem.OnClick:TNotifyEvent
 004E538A    mov         eax,[0055B4C8];^Application:TApplication
 004E538F    mov         eax,dword ptr [eax]
 004E5391    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004E5394    mov         edx,dword ptr [ebp-4]
 004E5397    mov         dword ptr [edx+38],eax;TPopupMenu.FWindowHandle:HWND
 004E539A    mov         eax,dword ptr [ebp-4]
 004E539D    mov         byte ptr [eax+61],1;TPopupMenu.AutoPopup:Boolean
 004E53A1    mov         edx,dword ptr [ebp-4]
 004E53A4    mov         eax,[0055DE3C];gvar_0055DE3C
 004E53A9    call        004E52CC
 004E53AE    mov         eax,dword ptr [ebp-4]
 004E53B1    cmp         byte ptr [ebp-5],0
>004E53B5    je          004E53C6
 004E53B7    call        @AfterConstruction
 004E53BC    pop         dword ptr fs:[0]
 004E53C3    add         esp,0C
 004E53C6    mov         eax,dword ptr [ebp-4]
 004E53C9    mov         esp,ebp
 004E53CB    pop         ebp
 004E53CC    ret
*}
end;

//004E53D0
destructor TPopupMenu.Destroy;
begin
{*
 004E53D0    push        ebp
 004E53D1    mov         ebp,esp
 004E53D3    add         esp,0FFFFFFF8
 004E53D6    call        @BeforeDestruction
 004E53DB    mov         byte ptr [ebp-5],dl
 004E53DE    mov         dword ptr [ebp-4],eax
 004E53E1    mov         edx,dword ptr [ebp-4]
 004E53E4    mov         eax,[0055DE3C];gvar_0055DE3C
 004E53E9    call        004E5304
 004E53EE    mov         dl,byte ptr [ebp-5]
 004E53F1    and         dl,0FC
 004E53F4    mov         eax,dword ptr [ebp-4]
 004E53F7    call        TMenu.Destroy
 004E53FC    cmp         byte ptr [ebp-5],0
>004E5400    jle         004E540A
 004E5402    mov         eax,dword ptr [ebp-4]
 004E5405    call        @ClassDestroy
 004E540A    pop         ecx
 004E540B    pop         ecx
 004E540C    pop         ebp
 004E540D    ret
*}
end;

//004E5410
{*procedure sub_004E5410(?:?);
begin
 004E5410    push        ebp
 004E5411    mov         ebp,esp
 004E5413    add         esp,0FFFFFFF8
 004E5416    push        ebx
 004E5417    mov         dword ptr [ebp-8],edx
 004E541A    mov         dword ptr [ebp-4],eax
 004E541D    mov         eax,dword ptr [ebp-4]
 004E5420    cmp         word ptr [eax+72],0;TPopupMenu.?f72:word
>004E5425    je          004E5433
 004E5427    mov         ebx,dword ptr [ebp-4]
 004E542A    mov         edx,dword ptr [ebp-8]
 004E542D    mov         eax,dword ptr [ebx+74];TPopupMenu.?f74:dword
 004E5430    call        dword ptr [ebx+70];TPopupMenu.OnPopup
 004E5433    pop         ebx
 004E5434    pop         ecx
 004E5435    pop         ecx
 004E5436    pop         ebp
 004E5437    ret
end;*}

//004E5438
{*function TPopupMenu.GetHelpContext:?;
begin
 004E5438    push        ebp
 004E5439    mov         ebp,esp
 004E543B    add         esp,0FFFFFFF8
 004E543E    mov         dword ptr [ebp-4],eax
 004E5441    mov         eax,dword ptr [ebp-4]
 004E5444    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 004E5447    mov         eax,dword ptr [eax+54];TMenuItem.HelpContext:THelpContext
 004E544A    mov         dword ptr [ebp-8],eax
 004E544D    mov         eax,dword ptr [ebp-8]
 004E5450    pop         ecx
 004E5451    pop         ecx
 004E5452    pop         ebp
 004E5453    ret
end;*}

//004E5454
procedure TPopupMenu.SetHelpContext(Value:THelpContext);
begin
{*
 004E5454    push        ebp
 004E5455    mov         ebp,esp
 004E5457    add         esp,0FFFFFFF8
 004E545A    mov         dword ptr [ebp-8],edx
 004E545D    mov         dword ptr [ebp-4],eax
 004E5460    mov         eax,dword ptr [ebp-4]
 004E5463    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 004E5466    mov         edx,dword ptr [ebp-8]
 004E5469    mov         dword ptr [eax+54],edx;TMenuItem.HelpContext:THelpContext
 004E546C    pop         ecx
 004E546D    pop         ecx
 004E546E    pop         ebp
 004E546F    ret
*}
end;

//004E5470
procedure sub_004E5470(?:TPopupMenu);
begin
{*
 004E5470    push        ebp
 004E5471    mov         ebp,esp
 004E5473    add         esp,0FFFFFFF8
 004E5476    mov         dword ptr [ebp-4],eax
 004E5479    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004E547E    cmp         byte ptr [eax+0D],0
>004E5482    je          004E54D1
 004E5484    mov         eax,dword ptr [ebp-4]
 004E5487    cmp         byte ptr [eax+41],0
>004E548B    je          004E54D1
 004E548D    mov         eax,dword ptr [ebp-4]
 004E5490    add         eax,58
 004E5493    call        004DF014
 004E5498    mov         dword ptr [ebp-8],eax
 004E549B    cmp         dword ptr [ebp-8],0
>004E549F    je          004E54B8
 004E54A1    mov         eax,dword ptr [ebp-8]
 004E54A4    mov         dl,byte ptr [eax+5F]
 004E54A7    mov         eax,dword ptr [ebp-4]
 004E54AA    call        TMainMenu.SetBiDiMode
 004E54AF    mov         eax,dword ptr [ebp-4]
 004E54B2    mov         byte ptr [eax+41],1
>004E54B6    jmp         004E54D1
 004E54B8    mov         eax,[0055B4C8];^Application:TApplication
 004E54BD    mov         eax,dword ptr [eax]
 004E54BF    mov         dl,byte ptr [eax+34];TApplication.FBiDiMode:TBiDiMode
 004E54C2    mov         eax,dword ptr [ebp-4]
 004E54C5    call        TMainMenu.SetBiDiMode
 004E54CA    mov         eax,dword ptr [ebp-4]
 004E54CD    mov         byte ptr [eax+41],1
 004E54D1    pop         ecx
 004E54D2    pop         ecx
 004E54D3    pop         ebp
 004E54D4    ret
*}
end;

//004E54D8
{*function sub_004E54D8(?:TPopupMenu):?;
begin
 004E54D8    push        ebp
 004E54D9    mov         ebp,esp
 004E54DB    add         esp,0FFFFFFF4
 004E54DE    push        esi
 004E54DF    mov         dword ptr [ebp-4],eax
 004E54E2    mov         byte ptr [ebp-5],0
 004E54E6    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004E54EB    cmp         byte ptr [eax+0D],0
>004E54EF    je          004E553B
 004E54F1    mov         eax,dword ptr [ebp-4]
 004E54F4    cmp         byte ptr [eax+41],0
>004E54F8    je          004E5530
 004E54FA    mov         eax,dword ptr [ebp-4]
 004E54FD    add         eax,58
 004E5500    call        004DF014
 004E5505    mov         dword ptr [ebp-0C],eax
 004E5508    cmp         dword ptr [ebp-0C],0
>004E550C    je          004E551F
 004E550E    mov         eax,dword ptr [ebp-0C]
 004E5511    mov         si,0FFC8
 004E5515    call        @CallDynaInst
 004E551A    mov         byte ptr [ebp-5],al
>004E551D    jmp         004E553B
 004E551F    mov         eax,[0055B4C8];^Application:TApplication
 004E5524    mov         eax,dword ptr [eax]
 004E5526    call        004F1CA8
 004E552B    mov         byte ptr [ebp-5],al
>004E552E    jmp         004E553B
 004E5530    mov         eax,dword ptr [ebp-4]
 004E5533    cmp         byte ptr [eax+30],1
 004E5537    sete        byte ptr [ebp-5]
 004E553B    mov         al,byte ptr [ebp-5]
 004E553E    pop         esi
 004E553F    mov         esp,ebp
 004E5541    pop         ebp
 004E5542    ret
end;*}

//004E5544
{*procedure sub_004E5544(?:?; ?:?);
begin
 004E5544    push        ebp
 004E5545    mov         ebp,esp
 004E5547    add         esp,0FFFFFFE8
 004E554A    mov         dword ptr [ebp-0C],ecx
 004E554D    mov         dword ptr [ebp-8],edx
 004E5550    mov         dword ptr [ebp-4],eax
 004E5553    lea         ecx,[ebp-18]
 004E5556    mov         edx,dword ptr [ebp-0C]
 004E5559    mov         eax,dword ptr [ebp-8]
 004E555C    call        Point
 004E5561    mov         eax,dword ptr [ebp-4]
 004E5564    mov         edx,dword ptr [ebp-18]
 004E5567    mov         dword ptr [eax+58],edx;TPopupMenu.FPopupPoint:TPoint
 004E556A    mov         edx,dword ptr [ebp-14]
 004E556D    mov         dword ptr [eax+5C],edx
 004E5570    mov         eax,dword ptr [ebp-4]
 004E5573    call        004E5470
 004E5578    mov         edx,dword ptr [ebp-4]
 004E557B    mov         eax,dword ptr [ebp-4]
 004E557E    mov         ecx,dword ptr [eax]
 004E5580    call        dword ptr [ecx+3C];TPopupMenu.sub_004E5410
 004E5583    xor         edx,edx
 004E5585    mov         eax,dword ptr [ebp-4]
 004E5588    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 004E558B    call        004E30A0
 004E5590    xor         edx,edx
 004E5592    mov         eax,dword ptr [ebp-4]
 004E5595    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 004E5598    call        004E361C
 004E559D    mov         eax,dword ptr [ebp-4]
 004E55A0    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 004E55A3    call        004E01B8
 004E55A8    mov         eax,dword ptr [ebp-4]
 004E55AB    call        004E42B8
 004E55B0    mov         eax,dword ptr [ebp-4]
 004E55B3    call        004E54D8
 004E55B8    and         eax,7F
 004E55BB    lea         eax,[eax+eax*2]
 004E55BE    lea         eax,[eax*2+5418B0]
 004E55C5    mov         edx,dword ptr [ebp-4]
 004E55C8    movzx       edx,byte ptr [edx+60];TPopupMenu.Alignment:TPopupAlignment
 004E55CC    mov         ax,word ptr [eax+edx*2]
 004E55D0    mov         edx,dword ptr [ebp-4]
 004E55D3    movzx       edx,byte ptr [edx+68];TPopupMenu.TrackButton:TTrackButton
 004E55D7    or          ax,word ptr [edx*2+5418BC]
 004E55DF    movzx       eax,ax
 004E55E2    mov         edx,dword ptr [ebp-4]
 004E55E5    movzx       edx,byte ptr [edx+69];TPopupMenu.MenuAnimation:TMenuAnimation
 004E55E9    shl         edx,0A
 004E55EC    or          eax,edx
 004E55EE    mov         dword ptr [ebp-10],eax
 004E55F1    push        0
 004E55F3    mov         eax,[0055DE3C];gvar_0055DE3C
 004E55F8    mov         eax,dword ptr [eax+10]
 004E55FB    push        eax
 004E55FC    push        0
 004E55FE    mov         eax,dword ptr [ebp-0C]
 004E5601    push        eax
 004E5602    mov         eax,dword ptr [ebp-8]
 004E5605    push        eax
 004E5606    mov         eax,dword ptr [ebp-10]
 004E5609    push        eax
 004E560A    mov         eax,dword ptr [ebp-4]
 004E560D    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 004E5610    call        004E0340
 004E5615    push        eax
 004E5616    call        user32.TrackPopupMenu
 004E561B    mov         esp,ebp
 004E561D    pop         ebp
 004E561E    ret
end;*}

//004E5620
{*procedure sub_004E5620(?:?; ?:?);
begin
 004E5620    push        ebp
 004E5621    mov         ebp,esp
 004E5623    add         esp,0FFFFFFF0
 004E5626    mov         dword ptr [ebp-8],edx
 004E5629    mov         dword ptr [ebp-4],eax
 004E562C    mov         eax,dword ptr [ebp-4]
 004E562F    mov         eax,dword ptr [eax+4]
 004E5632    mov         eax,dword ptr [eax+8]
 004E5635    dec         eax
 004E5636    test        eax,eax
>004E5638    jl          004E5674
 004E563A    inc         eax
 004E563B    mov         dword ptr [ebp-10],eax
 004E563E    mov         dword ptr [ebp-0C],0
 004E5645    mov         eax,dword ptr [ebp-4]
 004E5648    mov         eax,dword ptr [eax+4]
 004E564B    mov         edx,dword ptr [ebp-0C]
 004E564E    call        TList.Get
 004E5653    mov         eax,dword ptr [eax]
 004E5655    cmp         eax,dword ptr [ebp-8]
>004E5658    jne         004E566C
 004E565A    mov         eax,dword ptr [ebp-4]
 004E565D    mov         eax,dword ptr [eax+4]
 004E5660    mov         edx,dword ptr [ebp-0C]
 004E5663    call        TList.Get
 004E5668    xor         edx,edx
 004E566A    mov         dword ptr [eax],edx
 004E566C    inc         dword ptr [ebp-0C]
 004E566F    dec         dword ptr [ebp-10]
>004E5672    jne         004E5645
 004E5674    mov         esp,ebp
 004E5676    pop         ebp
 004E5677    ret
end;*}

//004E5678
{*procedure sub_004E5678(?:?; ?:TControlCanvas; ?:?; ?:?);
begin
 004E5678    push        ebp
 004E5679    mov         ebp,esp
 004E567B    add         esp,0FFFFFFE4
 004E567E    push        ebx
 004E567F    push        esi
 004E5680    push        edi
 004E5681    mov         esi,ecx
 004E5683    lea         edi,[ebp-1A]
 004E5686    movs        dword ptr [edi],dword ptr [esi]
 004E5687    movs        dword ptr [edi],dword ptr [esi]
 004E5688    movs        dword ptr [edi],dword ptr [esi]
 004E5689    movs        dword ptr [edi],dword ptr [esi]
 004E568A    mov         dword ptr [ebp-8],edx
 004E568D    mov         dword ptr [ebp-4],eax
 004E5690    mov         eax,[0055B2A4];^gvar_00540938
 004E5695    cmp         dword ptr [eax],4
>004E5698    jg          004E56B2
 004E569A    mov         eax,[0055B2A4];^gvar_00540938
 004E569F    cmp         dword ptr [eax],4
>004E56A2    jne         004E56AE
 004E56A4    mov         eax,[0055B544];^gvar_0054093C
 004E56A9    cmp         dword ptr [eax],0
>004E56AC    jg          004E56B2
 004E56AE    xor         eax,eax
>004E56B0    jmp         004E56B4
 004E56B2    mov         al,1
 004E56B4    mov         byte ptr [ebp-0A],al
 004E56B7    mov         eax,dword ptr [ebp-4]
 004E56BA    mov         si,0FFF2
 004E56BE    call        @CallDynaInst
 004E56C3    mov         edx,dword ptr ds:[4DE988];TMainMenu
 004E56C9    call        @IsClass
 004E56CE    mov         byte ptr [ebp-9],al
 004E56D1    test        byte ptr [ebp+8],1
>004E56D5    je          004E570B
 004E56D7    cmp         byte ptr [ebp-9],0
>004E56DB    je          004E56E9
 004E56DD    cmp         byte ptr [ebp-9],0
>004E56E1    je          004E570B
 004E56E3    cmp         byte ptr [ebp-0A],0
>004E56E7    jne         004E570B
 004E56E9    mov         edx,0FF00000D
 004E56EE    mov         eax,dword ptr [ebp-8]
 004E56F1    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 004E56F4    call        TBrush.SetColor
 004E56F9    mov         edx,0FF00000E
 004E56FE    mov         eax,dword ptr [ebp-8]
 004E5701    mov         eax,dword ptr [eax+0C];TControlCanvas.Font:TFont
 004E5704    call        TFont.SetColor
>004E5709    jmp         004E5759
 004E570B    cmp         byte ptr [ebp-0A],0
>004E570F    je          004E5739
 004E5711    test        byte ptr [ebp+8],80
>004E5715    je          004E5739
 004E5717    mov         edx,0FF000004
 004E571C    mov         eax,dword ptr [ebp-8]
 004E571F    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 004E5722    call        TBrush.SetColor
 004E5727    mov         edx,0FF000011
 004E572C    mov         eax,dword ptr [ebp-8]
 004E572F    mov         eax,dword ptr [eax+0C];TControlCanvas.Font:TFont
 004E5732    call        TFont.SetColor
>004E5737    jmp         004E5759
 004E5739    mov         edx,0FF000004
 004E573E    mov         eax,dword ptr [ebp-8]
 004E5741    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 004E5744    call        TBrush.SetColor
 004E5749    mov         edx,0FF000007
 004E574E    mov         eax,dword ptr [ebp-8]
 004E5751    mov         eax,dword ptr [eax+0C];TControlCanvas.Font:TFont
 004E5754    call        TFont.SetColor
 004E5759    mov         ax,word ptr [ebp+8]
 004E575D    push        eax
 004E575E    mov         al,byte ptr [ebp-9]
 004E5761    push        eax
 004E5762    lea         ecx,[ebp-1A]
 004E5765    mov         edx,dword ptr [ebp-8]
 004E5768    mov         eax,dword ptr [ebp-4]
 004E576B    mov         ebx,dword ptr [eax]
 004E576D    call        dword ptr [ebx+30]
 004E5770    pop         edi
 004E5771    pop         esi
 004E5772    pop         ebx
 004E5773    mov         esp,ebp
 004E5775    pop         ebp
 004E5776    ret         4
end;*}

//004E577C
{*procedure sub_004E577C(?:AnsiString; ?:?);
begin
 004E577C    push        ebp
 004E577D    mov         ebp,esp
 004E577F    add         esp,0FFFFFFF4
 004E5782    mov         dword ptr [ebp-8],edx
 004E5785    mov         dword ptr [ebp-4],eax
 004E5788    mov         eax,dword ptr [ebp-8]
 004E578B    mov         edx,dword ptr [ebp-4]
 004E578E    call        @LStrAsg
 004E5793    mov         dword ptr [ebp-0C],1
>004E579A    jmp         004E5836
 004E579F    mov         eax,dword ptr [ebp-8]
 004E57A2    mov         eax,dword ptr [eax]
 004E57A4    mov         edx,dword ptr [ebp-0C]
 004E57A7    mov         al,byte ptr [eax+edx-1]
 004E57AB    mov         edx,dword ptr ds:[55B6F4];^gvar_0054097C
 004E57B1    and         eax,0FF
 004E57B6    bt          dword ptr [edx],eax
>004E57B9    jae         004E57C0
 004E57BB    inc         dword ptr [ebp-0C]
>004E57BE    jmp         004E5833
 004E57C0    mov         eax,dword ptr [ebp-8]
 004E57C3    mov         eax,dword ptr [eax]
 004E57C5    mov         edx,dword ptr [ebp-0C]
 004E57C8    cmp         byte ptr [eax+edx-1],26
>004E57CD    jne         004E5833
 004E57CF    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 004E57D4    cmp         byte ptr [eax+0C],0
>004E57D8    je          004E5823
 004E57DA    cmp         dword ptr [ebp-0C],1
>004E57DE    jle         004E5823
 004E57E0    mov         eax,dword ptr [ebp-8]
 004E57E3    mov         eax,dword ptr [eax]
 004E57E5    call        @DynArrayLength
 004E57EA    sub         eax,dword ptr [ebp-0C]
 004E57ED    cmp         eax,2
>004E57F0    jl          004E5823
 004E57F2    mov         eax,dword ptr [ebp-8]
 004E57F5    mov         eax,dword ptr [eax]
 004E57F7    mov         edx,dword ptr [ebp-0C]
 004E57FA    cmp         byte ptr [eax+edx-2],28
>004E57FF    jne         004E5823
 004E5801    mov         eax,dword ptr [ebp-8]
 004E5804    mov         eax,dword ptr [eax]
 004E5806    mov         edx,dword ptr [ebp-0C]
 004E5809    cmp         byte ptr [eax+edx+1],29
>004E580E    jne         004E5823
 004E5810    mov         edx,dword ptr [ebp-0C]
 004E5813    dec         edx
 004E5814    mov         eax,dword ptr [ebp-8]
 004E5817    mov         ecx,4
 004E581C    call        @LStrDelete
>004E5821    jmp         004E5833
 004E5823    mov         eax,dword ptr [ebp-8]
 004E5826    mov         ecx,1
 004E582B    mov         edx,dword ptr [ebp-0C]
 004E582E    call        @LStrDelete
 004E5833    inc         dword ptr [ebp-0C]
 004E5836    mov         eax,dword ptr [ebp-8]
 004E5839    mov         eax,dword ptr [eax]
 004E583B    call        @DynArrayLength
 004E5840    cmp         eax,dword ptr [ebp-0C]
>004E5843    jge         004E579F
 004E5849    mov         esp,ebp
 004E584B    pop         ebp
 004E584C    ret
end;*}

//004E5850
{*procedure sub_004E5850(?:?; ?:?);
begin
 004E5850    push        ebp
 004E5851    mov         ebp,esp
 004E5853    add         esp,0FFFFFFF0
 004E5856    mov         dword ptr [ebp-8],edx
 004E5859    mov         dword ptr [ebp-4],eax
 004E585C    mov         eax,dword ptr [ebp-8]
 004E585F    call        @LStrClr
 004E5864    mov         dword ptr [ebp-0C],1
 004E586B    mov         eax,dword ptr [ebp-4]
 004E586E    call        @DynArrayLength
 004E5873    mov         dword ptr [ebp-10],eax
 004E5876    mov         eax,dword ptr [ebp-0C]
 004E5879    cmp         eax,dword ptr [ebp-10]
>004E587C    jg          004E58E0
 004E587E    mov         eax,[0055B6F4];^gvar_0054097C
 004E5883    mov         edx,dword ptr [ebp-0C]
 004E5886    mov         ecx,dword ptr [ebp-4]
 004E5889    mov         dl,byte ptr [ecx+edx-1]
 004E588D    and         edx,0FF
 004E5893    bt          dword ptr [eax],edx
>004E5896    jae         004E589D
 004E5898    inc         dword ptr [ebp-0C]
>004E589B    jmp         004E58D5
 004E589D    mov         eax,dword ptr [ebp-0C]
 004E58A0    mov         edx,dword ptr [ebp-4]
 004E58A3    cmp         byte ptr [edx+eax-1],26
>004E58A8    jne         004E58D5
 004E58AA    mov         eax,dword ptr [ebp-10]
 004E58AD    sub         eax,dword ptr [ebp-0C]
 004E58B0    dec         eax
>004E58B1    jl          004E58D5
 004E58B3    inc         dword ptr [ebp-0C]
 004E58B6    mov         eax,dword ptr [ebp-0C]
 004E58B9    mov         edx,dword ptr [ebp-4]
 004E58BC    cmp         byte ptr [edx+eax-1],26
>004E58C1    je          004E58D5
 004E58C3    mov         eax,dword ptr [ebp-8]
 004E58C6    mov         edx,dword ptr [ebp-0C]
 004E58C9    mov         ecx,dword ptr [ebp-4]
 004E58CC    mov         dl,byte ptr [ecx+edx-1]
 004E58D0    call        @LStrFromChar
 004E58D5    inc         dword ptr [ebp-0C]
 004E58D8    mov         eax,dword ptr [ebp-0C]
 004E58DB    cmp         eax,dword ptr [ebp-10]
>004E58DE    jle         004E587E
 004E58E0    mov         esp,ebp
 004E58E2    pop         ebp
 004E58E3    ret
end;*}

//004E58E4
{*function sub_004E58E4(?:String; ?:String):?;
begin
 004E58E4    push        ebp
 004E58E5    mov         ebp,esp
 004E58E7    add         esp,0FFFFFFEC
 004E58EA    xor         ecx,ecx
 004E58EC    mov         dword ptr [ebp-10],ecx
 004E58EF    mov         dword ptr [ebp-14],ecx
 004E58F2    mov         dword ptr [ebp-8],edx
 004E58F5    mov         dword ptr [ebp-4],eax
 004E58F8    xor         eax,eax
 004E58FA    push        ebp
 004E58FB    push        4E5947
 004E5900    push        dword ptr fs:[eax]
 004E5903    mov         dword ptr fs:[eax],esp
 004E5906    lea         edx,[ebp-10]
 004E5909    mov         eax,dword ptr [ebp-8]
 004E590C    call        004E577C
 004E5911    mov         eax,dword ptr [ebp-10]
 004E5914    push        eax
 004E5915    lea         edx,[ebp-14]
 004E5918    mov         eax,dword ptr [ebp-4]
 004E591B    call        004E577C
 004E5920    mov         eax,dword ptr [ebp-14]
 004E5923    pop         edx
 004E5924    call        0046646C
 004E5929    mov         byte ptr [ebp-9],al
 004E592C    xor         eax,eax
 004E592E    pop         edx
 004E592F    pop         ecx
 004E5930    pop         ecx
 004E5931    mov         dword ptr fs:[eax],edx
 004E5934    push        4E594E
 004E5939    lea         eax,[ebp-14]
 004E593C    mov         edx,2
 004E5941    call        @LStrArrayClr
 004E5946    ret
>004E5947    jmp         @HandleFinally
>004E594C    jmp         004E5939
 004E594E    mov         al,byte ptr [ebp-9]
 004E5951    mov         esp,ebp
 004E5953    pop         ebp
 004E5954    ret
end;*}

//004E5958
procedure _NF__590;
begin
{*
 004E5958    adc         al,byte ptr [eax]
 004E595A    add         byte ptr [eax],al
 004E595C    sub         al,18
 004E595E    push        esp
 004E595F    add         ah,ah
 004E5961    mov         cl,55
 004E5963    add         byte ptr [eax],ch
 004E5965    sbb         byte ptr [eax+eax+6C],dl
 004E5969    mov         cl,55
 004E596B    add         byte ptr [eax+ebx],ah
 004E596E    push        esp
 004E596F    add         ah,bl
 004E5971    mov         al,55
 004E5973    add         byte ptr [eax],ah
 004E5975    sbb         byte ptr [eax+eax+34],dl
 004E5979    mov         cl,55
 004E597B    add         byte ptr [eax+ebx],bl
 004E597E    push        esp
 004E597F    add         byte ptr [ebp+esi*4+18180055],bh
 004E5986    push        esp
 004E5987    add         byte ptr [ecx+esi*4+55],cl
 004E598B    add         byte ptr [eax+ebx],dl
 004E598E    push        esp
 004E598F    add         byte ptr [eax-4D],dh
 004E5992    push        ebp
 004E5993    add         byte ptr [eax],dl
 004E5995    sbb         byte ptr [eax+eax-54],dl
 004E5999    mov         dl,55
 004E599B    add         byte ptr [eax+ebx],cl
 004E599E    push        esp
 004E599F    add         byte ptr [eax-4A],dh
 004E59A2    push        ebp
 004E59A3    add         byte ptr [eax],cl
 004E59A5    sbb         byte ptr [eax+eax+6C],dl
 004E59A9    mov         dh,55
 004E59AB    add         byte ptr [eax+ebx],al
 004E59AE    push        esp
 004E59AF    add         byte ptr [eax-4E],cl
 004E59B2    push        ebp
 004E59B3    add         byte ptr [eax],al
 004E59B5    sbb         byte ptr [eax+eax+1C],dl
 004E59B9    mov         dh,55
 004E59BB    add         ah,bh
 004E59BD    pop         ss
 004E59BE    push        esp
 004E59BF    add         al,cl
 004E59C1    mov         ch,55
 004E59C3    add         al,bh
 004E59C5    pop         ss
 004E59C6    push        esp
 004E59C7    add         ah,bl
 004E59C9    mov         dh,55
 004E59CB    add         ah,dh
 004E59CD    pop         ss
 004E59CE    push        esp
 004E59CF    add         byte ptr [eax-0FFFAA4A],dl
 004E59D5    pop         ss
 004E59D6    push        esp
 004E59D7    add         byte ptr [edx+esi*4+55],bl
 004E59DB    add         ah,ch
 004E59DD    pop         ss
 004E59DE    push        esp
 004E59DF    add         byte ptr [eax-4E],bh
 004E59E2    push        ebp
 004E59E3    add         al,ch
 004E59E5    pop         ss
 004E59E6    push        esp
 004E59E7    add         al,dl
 004E59E9    mov         dl,55
 004E59EB    add         byte ptr [ebp-75],dl;{Finalization}
*}
end;

Initialization
//004E5A5C
{*
 004E5A5C    sub         dword ptr ds:[55DE44],1
>004E5A63    jae         004E5AE0
 004E5A65    mov         eax,4E5958;_NF__590
 004E5A6A    call        @InitResStringImports
 004E5A6F    mov         eax,[004C5774];TControl
 004E5A74    call        StartClassGroup
 004E5A79    mov         eax,[004C5774];TControl
 004E5A7E    call        ActivateClassGroup
 004E5A83    mov         edx,dword ptr ds:[4C5774];TControl
 004E5A89    mov         eax,[004DE470];TMenuItem
 004E5A8E    call        GroupDescendentsWith
 004E5A93    mov         edx,dword ptr ds:[4C5774];TControl
 004E5A99    mov         eax,[004DE894];TMenu
 004E5A9E    call        GroupDescendentsWith
 004E5AA3    mov         eax,[004DE470];TMenuItem
 004E5AA8    call        RegisterClass
 004E5AAD    mov         dl,1
 004E5AAF    mov         eax,[00475A7C];TBits
 004E5AB4    call        TObject.Create
 004E5AB9    mov         [0055DE48],eax;gvar_0055DE48
 004E5ABE    mov         dl,1
 004E5AC0    mov         eax,[004DEF10];TPopupList
 004E5AC5    call        TObject.Create
 004E5ACA    mov         [0055DE3C],eax;gvar_0055DE3C
 004E5ACF    mov         dl,1
 004E5AD1    mov         eax,[004DEF7C];TMenuItemStack
 004E5AD6    call        TOrderedList.Create
 004E5ADB    mov         [0055DE40],eax;gvar_0055DE40
 004E5AE0    ret
*}
Finalization
//004E59EC
{*
 004E59EC    push        ebp
 004E59ED    mov         ebp,esp
 004E59EF    xor         eax,eax
 004E59F1    push        ebp
 004E59F2    push        4E5A50
 004E59F7    push        dword ptr fs:[eax]
 004E59FA    mov         dword ptr fs:[eax],esp
 004E59FD    inc         dword ptr ds:[55DE44]
>004E5A03    jne         004E5A42
 004E5A05    mov         eax,[0055DE40];gvar_0055DE40
 004E5A0A    call        TObject.Free
 004E5A0F    mov         eax,[0055DE3C];gvar_0055DE3C
 004E5A14    call        TObject.Free
 004E5A19    mov         eax,[0055DE48];gvar_0055DE48
 004E5A1E    call        TObject.Free
 004E5A23    mov         eax,5417E8
 004E5A28    mov         ecx,12
 004E5A2D    mov         edx,dword ptr ds:[4010AC];String
 004E5A33    call        @FinalizeArray
 004E5A38    mov         eax,5417D4;^gvar_004DEFEC
 004E5A3D    call        @LStrClr
 004E5A42    xor         eax,eax
 004E5A44    pop         edx
 004E5A45    pop         ecx
 004E5A46    pop         ecx
 004E5A47    mov         dword ptr fs:[eax],edx
 004E5A4A    push        4E5A57
 004E5A4F    ret
>004E5A50    jmp         @HandleFinally
>004E5A55    jmp         004E5A4F
 004E5A57    pop         ebp
 004E5A58    ret
*}
end.