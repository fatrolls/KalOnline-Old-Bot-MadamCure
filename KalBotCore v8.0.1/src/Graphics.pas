//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Graphics;

interface

uses
  SysUtils, Classes, ComCtrls, Graphics, Forms, ExtCtrls;

type
  EInvalidGraphic = class(Exception)
  end;
  EInvalidGraphicOperation = class(Exception)
  end;
  TFontPitch = (fpDefault, fpVariable, fpFixed);
  TFontStyle = (fsBold, fsItalic, fsUnderline, fsStrikeOut);
  TFontStyles = set of TFontStyle;
  TPenStyle = (psSolid, psDash, psDot, psDashDot, psDashDotDot, psClear, psInsideFrame);
  TPenMode = (pmBlack, pmWhite, pmNop, pmNot, pmCopy, pmNotCopy, pmMergePenNot, pmMaskPenNot, pmMergeNotPen, pmMaskNotPen, pmMerge, pmNotMerge, pmMask, pmNotMask, pmXor, pmNotXor);
  TBrushStyle = (bsSolid, bsClear, bsHorizontal, bsVertical, bsFDiagonal, bsBDiagonal, bsCross, bsDiagCross);
  TGraphicsObject = class(TPersistent)
  public
    FOnChange:TNotifyEvent;//f8
    fA:word;//fA
    fC:TCustomListView;//fC
    FResource:PResource;//f10
    FOwnerLock:PRTLCriticalSection;//f14
    procedure sub_004868B0; dynamic;//004868B0
  end;
  TFont = class(TGraphicsObject)
  public
    Color:TColor;//f18
    FPixelsPerInch:Integer;//f1C
    FNotify:IChangeNotifier;//f20
    destructor Destroy; virtual;//00486C64
    //procedure v8(?:?); virtual;//v8//00486CC0
    procedure sub_004868B0; dynamic;//00486C98
    constructor Create;//00486BF8
    procedure SetColor(Value:TColor);//00486E1C
    function GetHandle:HFONT;//00486E50
    //function GetHeight:?;//00487028
    procedure SetHeight(Value:Integer);//00487044
    //procedure GetName(?:?);//00487070
    procedure SetName(Value:TFontName);//00487094
    //function GetSize:?;//004870F8
    procedure SetSize(Value:Integer);//00487124
    //function GetStyle:?;//00487154
    procedure SetStyle(Value:TFontStyles);//00487170
    //function GetPitch:?;//0048719C
    procedure SetPitch(Value:TFontPitch);//004871B8
    //function GetCharset:?;//004871E4
    procedure SetCharset(Value:TFontCharset);//00487200
  end;
  TPen = class(TGraphicsObject)
  public
    ..Mode:TPenMode;//f18
    destructor Destroy; virtual;//00487280
    //procedure v8(?:?); virtual;//v8//004872B4
    constructor Create;//0048722C
    //function GetColor:?;//004873F0
    procedure SetColor(Value:TColor);//0048740C
    procedure SetMode(Value:TPenMode);//004874DC
    //function GetStyle:?;//00487510
    procedure SetStyle(Value:TPenStyle);//0048752C
    //function GetWidth:?;//00487558
    procedure SetWidth(Value:Integer);//00487574
  end;
  TBrush = class(TGraphicsObject)
  public
    destructor Destroy; virtual;//004875F4
    //procedure v8(?:?); virtual;//v8//00487628
    constructor Create;//004875A8
    //function GetColor:?;//00487790
    procedure SetColor(Value:TColor);//004877AC
    function GetHandle:HBRUSH;//004877E4
    //function GetStyle:?;//004878D8
    procedure SetStyle(Value:TBrushStyle);//004878F4
  end;
  TPenRecall = class(TRecall)
    constructor Create;//00487930
  end;
  TBrushRecall = class(TRecall)
    constructor Create;//00487988
  end;
  TCanvas = class(TPersistent)
  public
    FHandle:HDC;//f4
    State:TCanvasState;//f8
    Font:TFont;//fC
    Pen:TPen;//f10
    Brush:TBrush;//f14
    FPenPos:TPoint;//f18
    CopyMode:Integer;//f20
    FOnChange:TNotifyEvent;//f28
    f2A:word;//f2A
    f2C:dword;//f2C
    FOnChanging:TNotifyEvent;//f30
    f32:word;//f32
    f34:dword;//f34
    FLock:TRTLCriticalSection;//f38
    FLockCount:Integer;//f50
    FTextFlags:Longint;//f54
    destructor Destroy; virtual;//00487AF0
    procedure vC; virtual;//vC//00488690
    procedure v10; virtual;//v10//0048866C
    procedure v14; virtual;//v14//00488550
    procedure CopyRect(const Dest:TRect; Canvas:TCanvas; const Source:TRect);//00487B68
    procedure Draw(X:Integer; Y:Integer; Graphic:TGraphic);//00487C18
    procedure Ellipse(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer);//00487CDC
    procedure FillRect(const Rect:TRect);//00487D30
    procedure LineTo(X:Integer; Y:Integer);//00487DD0
    procedure Lock;//00487E1C
    procedure MoveTo(X:Integer; Y:Integer);//00487E4C
    procedure Pie(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer);//00487E88
    procedure TextRect(Rect:TRect; X:Integer; Y:Integer; const Text:AnsiString);//00488134
    function TextWidth(const Text:AnsiString):Integer;//00488240
    function TextHeight(const Text:AnsiString):Integer;//00488268
    function TryLock:Boolean;//00488290
    procedure Unlock;//004882F0
    procedure SetFont(Value:TFont);//00488320
    procedure SetPen(Value:TPen);//00488340
    procedure SetBrush(Value:TBrush);//00488360
    function GetHandle:HDC;//004884A4
    procedure SetHandle(Value:HDC);//0048855C
  end;
  TProgressStage = (psStarting, psRunning, psEnding);
  TProgressEvent = procedure(Sender:TObject; Stage:TProgressStage; PercentDone:Byte; RedrawNow:Boolean; const R:TRect; const Msg:String) of object;;
  TGraphic = class(TInterfacedPersistent)
  public
    FOnChange:TNotifyEvent;//f10
    f12:word;//f12
    f14:TCustomForm;//f14
    FOnProgress:TProgressEvent;//f18
    f1A:word;//f1A
    f1C:dword;//f1C
    FModified:Boolean;//f20
    FTransparent:Boolean;//f21
    FPaletteModified:Boolean;//f22
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00489F38
    //procedure v10(?:?); virtual;//v10//00489EA4
    procedure v14; virtual; abstract;//v14//00402C24
    //function v18(?:?):?; virtual;//v18//00489F84
    procedure v1C; virtual; abstract;//v1C//00402C24
    procedure v20; virtual; abstract;//v20//00402C24
    //function v24:?; virtual;//v24//0048A0D4
    //function v28:?; virtual;//v28//0048A0EC
    procedure v2C; virtual; abstract;//v2C//00402C24
    //procedure v30(?:?); virtual;//v30//0048A1A4
    procedure v34; virtual; abstract;//v34//00402C24
    //procedure v38(?:?); virtual;//v38//0048A220
    //procedure v3C(?:?); virtual;//v3C//0048A230
    procedure v40; virtual; abstract;//v40//00402C24
    //procedure v44(?:?); virtual;//v44//0048A260
    constructor v48; virtual;//v48//00489E60
    //procedure v4C(?:?); virtual;//v4C//0048A108
    //procedure v50(?:?); virtual;//v50//0048A1C0
    procedure v54; virtual; abstract;//v54//00402C24
    procedure v58; virtual; abstract;//v58//00402C24
    procedure v5C; virtual; abstract;//v5C//00402C24
    procedure v60; virtual; abstract;//v60//00402C24
    //procedure sub_0048A164(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//0048A164
  end;
  TPicture = class(TInterfacedPersistent)
  public
    FGraphic:TGraphic;//fC
    FOnChange:TNotifyEvent;//f10
    f12:word;//f12
    f14:TImage;//f14
    FNotify:IChangeNotifier;//f18
    FOnProgress:TProgressEvent;//f20
    f22:word;//f22
    f24:TImage;//f24
    destructor Destroy; virtual;//0048A840
    //procedure v0(?:?); virtual;//v0//0048A87C
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0048ADC8
    //procedure v8(?:?); virtual;//v8//0048AAA4
    //procedure sub_0048AB50(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//0048AB50
    //procedure sub_0048AB14(?:?); dynamic;//0048AB14
    constructor Create;//0048A7F4
    procedure ReadData(Stream:TStream);//0048AB90
    procedure WriteData(Stream:TStream);//0048ACC0
  end;
  TSharedImage = class(TObject)
  public
    .......FRefCount:Integer;//f4
    procedure v0; virtual; abstract;//v0//00402C24
  end;
  TMetafileImage = class(TSharedImage)
  public
    FHandle:THandle;//f8
    FWidth:Integer;//fC
    FHeight:Integer;//f10
    FPalette:HPALETTE;//f14
    FInch:word;//f18
    FTempWidth:Integer;//f1C
    FTempHeight:Integer;//f20
    destructor Destroy; virtual;//0048AE6C
    procedure v0; virtual;//v0//0048AEC0
  end;
  TMetafile = class(TGraphic)
  public
    FImage:TMetafileImage;//f28
    FEnhanced:Boolean;//f2C
    destructor Destroy; virtual;//0048AF28
    //procedure v8(?:?); virtual;//v8//0048AF64
    //procedure v14(?:?; ?:?); virtual;//v14//0048B038
    //function v1C:?; virtual;//v1C//0048B0E0
    //function v20:?; virtual;//v20//0048B0FC
    //function v24:?; virtual;//v24//0048B18C
    //function v2C:?; virtual;//v2C//0048B258
    //procedure v30(?:?); virtual;//v30//0048B384
    //procedure v34(?:?); virtual;//v34//0048B78C
    //procedure v3C(?:?); virtual;//v3C//0048B8DC
    //procedure v40(?:?); virtual;//v40//0048B8EC
    //procedure v44(?:?); virtual;//v44//0048BAC8
    constructor v48; virtual;//v48//0048AECC
    //procedure v50(?:?); virtual;//v50//0048B68C
    //procedure v54(?:?); virtual;//v54//0048B2E8
    //procedure v58(?:?); virtual;//v58//0048B750
    //procedure v5C(?:?; ?:?); virtual;//v5C//0048BD5C
    //procedure v60(?:?; ?:?; ?:?); virtual;//v60//0048BE08
  end;
  TBitmapImage = class(TSharedImage)
  public
    FHandle:HBITMAP;//f8
    FMaskHandle:HBITMAP;//fC
    FPalette:HPALETTE;//f10
    FDIBHandle:HBITMAP;//f14
    FDIB:TDIBSection;//f18
    FSaveStream:TMemoryStream;//f6C
    FOS2Format:Boolean;//f70
    FHalftone:Boolean;//f71
    destructor Destroy; virtual;//0048C2B8
    procedure v0; virtual;//v0//0048C338
  end;
  TBitmap = class(TGraphic)
  public
    FImage:TBitmapImage;//f28
    FCanvas:TCanvas;//f2C
    FIgnorePalette:Boolean;//f30
    FMaskBitsValid:Boolean;//f31
    FMaskValid:Boolean;//f32
    FTransparentColor:TColor;//f34
    FTransparentMode:TTransparentMode;//f38
    destructor Destroy; virtual;//0048CE84
    //procedure v8(?:?); virtual;//v8//0048CED4
    //procedure v10(?:?); virtual;//v10//0048D0E4
    //procedure v14(?:?; ?:?); virtual;//v14//0048D190
    //function v1C:?; virtual;//v1C//0048D4D4
    //function v20:?; virtual;//v20//0048D614
    //function v24:?; virtual;//v24//0048D698
    //function v2C:?; virtual;//v2C//0048D878
    //procedure v30(?:?); virtual;//v30//0048DDC8
    //procedure v34(?:?); virtual;//v34//0048E6F4
    //procedure v38(?:?); virtual;//v38//0048E810
    //procedure v40(?:?); virtual;//v40//0048EB14
    //procedure v44(?:?); virtual;//v44//0048EB84
    constructor Create; virtual;//v48//0048CE08
    //procedure v54(?:?); virtual;//v54//0048DC8C
    //procedure v58(?:?); virtual;//v58//0048EEE4
    //procedure v5C(?:?; ?:?; ?:?); virtual;//v5C//0048DBF4
    //procedure v60(?:?; ?:?; ?:?); virtual;//v60//0048EF04
    //function v64:?; virtual;//v64//0048D584
    //function v68:?; virtual;//v68//0048D638
    //procedure v6C(?:?); virtual;//v6C//0048E528
    function GetCanvas:TCanvas;//0048D514
    procedure SetHandle(Value:HBITMAP);//0048E43C
  end;
  TIconImage = class(TSharedImage)
  public
    FHandle:HICON;//f8
    FMemoryImage:TCustomMemoryStream;//fC
    FSize:TPoint;//f10
    destructor Destroy; virtual;//0048EFC0
    procedure v0; virtual;//v0//0048EFFC
  end;
  TIcon = class(TGraphic)
  public
    FImage:TIconImage;//f28
    FRequestedSize:TPoint;//f2C
    destructor Destroy; virtual;//0048F08C
    //procedure v8(?:?); virtual;//v8//0048F0C8
    //procedure v14(?:?; ?:?); virtual;//v14//0048F140
    //function v1C:?; virtual;//v1C//0048F194
    //function v20:?; virtual;//v20//0048F1EC
    //function v2C:?; virtual;//v2C//0048F218
    //procedure v34(?:?); virtual;//v34//0048F50C
    //procedure v3C(?:?); virtual;//v3C//0048F540
    //procedure v40(?:?); virtual;//v40//0048F550
    constructor Create; virtual;//v48//0048F024
    //procedure v54(?:?); virtual;//v54//0048F39C
    //procedure v58(?:?); virtual;//v58//0048F584
    //procedure v5C(?:?; ?:?); virtual;//v5C//0048F5C0
    //procedure v60(?:?; ?:?); virtual;//v60//0048F5E0
  end;
  TResourceManager = class(TObject)
  public
    ResList:PResource;//f4
    FLock:TRTLCriticalSection;//f8
    ResDataSize:Word;//f20
    constructor Create(AResDataSize:Word);//00485F20
  end;
  TFileFormat = TFileFormat = record//size=10
f4:String;//f4
f8:String;//f8
end;;
  TFileFormatsList = class(TList)
  public
    destructor Destroy; virtual;//0048A454
    constructor Create;//0048A318
  end;
  TClipboardFormats = class(TObject)
  public
    FClasses:TList;//f4
    FFormats:TList;//f8
    constructor Create;//0048A65C
  end;
  TBitmapCanvas = class(TCanvas)
  public
    FBitmap:TBitmap;//f58
    FOldBitmap:HBITMAP;//f5C
    FOldPalette:HPALETTE;//f60
    destructor Destroy; virtual;//0048C080
    procedure v14; virtual;//v14//0048C16C
    procedure FreeContext;//0048C0BC
  end;
  TPatternManager = class(TObject)
  public
    List:PPattern;//f4
    FLock:TRTLCriticalSection;//f8
    constructor Create;//0048F76C
  end;
    procedure sub_00485E88(?:HPALETTE);//00485E88
    function GetHashCode(const Buffer:void ; Count:Integer):Word;//00485F0C
    //procedure sub_00485FA4(?:?);//00485FA4
    //procedure sub_00485FBC(?:?);//00485FBC
    //function sub_00485FD4(?:?; ?:?):?;//00485FD4
    //procedure sub_004860D8(?:?; ?:?);//004860D8
    //procedure sub_004861A4(?:?; ?:?; ?:?);//004861A4
    //procedure sub_00486228(?:?; ?:TGraphicsObject; ?:?);//00486228
    //procedure sub_004862A8(?:?);//004862A8
    procedure sub_00486334;//00486334
    //function sub_00486830(?:TColor):?;//00486830
    function ColorToIdent(Color:Longint; var Ident:AnsiString):Boolean;//00486860
    function IdentToColor(const Ident:AnsiString; var Color:Longint):Boolean;//00486888
    procedure sub_004868B0;//004868B0
    procedure sub_004868D4(?:TGraphicsObject);//004868D4
    procedure sub_004868F4(?:TGraphicsObject);//004868F4
    function CharsetToIdent(Charset:Longint; var Ident:AnsiString):Boolean;//00486AC8
    function IdentToCharset(const Ident:AnsiString; var Charset:Longint):Boolean;//00486AF0
    //procedure sub_00486B18(?:?; ?:?);//00486B18
    destructor Destroy;//00486C64
    procedure sub_004868B0;//00486C98
    //procedure sub_00486CC0(?:?);//00486CC0
    //procedure sub_00486D98(?:TFont; ?:?);//00486D98
    //procedure sub_00486DC8(?:TFont; ?:?);//00486DC8
    procedure sub_00487000(?:TFont; ?:HFONT);//00487000
    destructor Destroy;//00487280
    //procedure sub_004872B4(?:?);//004872B4
    //procedure sub_0048736C(?:TPen; ?:?);//0048736C
    //procedure sub_0048739C(?:TPen; ?:?);//0048739C
    //function sub_00487438(?:?):?;//00487438
    destructor Destroy;//004875F4
    //procedure sub_00487628(?:?);//00487628
    //procedure sub_004876D0(?:?; ?:?);//004876D0
    //procedure sub_00487708(?:?; ?:?);//00487708
    //procedure sub_0048775C(?:TBrush; ?:?);//0048775C
    constructor Create;//004879E0
    destructor Destroy;//00487AF0
    procedure sub_00487D80(?:TCanvas; ?:TRect);//00487D80
    //procedure sub_00487EEC(?:?; ?:void ; ?:?);//00487EEC
    //procedure sub_00487F38(?:?; ?:void ; ?:?);//00487F38
    //procedure sub_00487F84(?:TCanvas; ?:?; ?:?; ?:?; ?:?);//00487F84
    procedure sub_00487FD8(?:TCanvas; ?:TRect);//00487FD8
    //procedure sub_0048800C(?:TCanvas; ?:?; ?:TGraphic);//0048800C
    //function sub_00488058(?:?):?;//00488058
    //procedure sub_00488094(?:TCanvas; ?:Longint; ?:?; ?:?);//00488094
    //procedure sub_004881E8(?:?; ?:?; ?:?);//004881E8
    //procedure sub_00488380(?:?; ?:?);//00488380
    //procedure sub_004883B4(?:?; ?:?);//004883B4
    //function sub_004883DC(?:TCanvas; ?:?; ?:?):?;//004883DC
    //procedure sub_0048841C(?:TCanvas; ?:?; ?:?; ?:?);//0048841C
    //procedure sub_00488470(?:TCanvas; ?:?);//00488470
    procedure sub_004884D8(?:Pointer);//004884D8
    procedure sub_00488550;//00488550
    //procedure sub_004885D8(?:TCanvas; ?:?);//004885D8
    procedure sub_0048866C;//0048866C
    procedure sub_00488690;//00488690
    //procedure sub_004886B4(?:?);//004886B4
    //procedure sub_004886F4(?:?);//004886F4
    //procedure sub_00488738(?:?);//00488738
    //procedure sub_004887D8(?:?; ?:?);//004887D8
    //procedure sub_0048880C(?:?; ?:?);//0048880C
    //procedure sub_00488840(?:?; ?:?);//00488840
    procedure sub_00488874(?:TResStringRec);//00488874
    procedure InvalidGraphic(Str:PResStringRec);//00488894
    procedure InvalidBitmap;//004888B4
    procedure InvalidIcon;//004888C0
    procedure InvalidMetafile;//004888CC
    procedure OutOfResources;//004888D8
    procedure sub_0048892C;//0048892C
    //function sub_004889D8(?:HBITMAP):?;//004889D8
    //function sub_004889FC(?:?; ?:?; ?:?):?;//004889FC
    //function sub_00488B68(?:?):?;//00488B68
    //function sub_00488BA4(?:?; ?:?; ?:?):?;//00488BA4
    //function sub_00488BE0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00488BE0
    //procedure sub_00488EB0(?:?);//00488EB0
    //procedure sub_00488F24(?:?; ?:LongWord);//00488F24
    procedure ByteSwapColors(var Colors:void ; Count:Integer);//00488FD0
    //function sub_00489028(?:?; ?:?):?;//00489028
    //function sub_00489154(?:?):?;//00489154
    //function sub_004891FC(?:HBITMAP; ?:?; ?:?):?;//004891FC
    //function sub_004892DC(?:HPALETTE; ?:?; ?:?):?;//004892DC
    //procedure sub_00489344(?:?; ?:?; ?:?; ?:?);//00489344
    //function sub_00489508(?:?):?;//00489508
    //function sub_00489530(?:Integer; ?:Integer; ?:?):?;//00489530
    //procedure sub_004895DC(?:TCustomMemoryStream; ?:?; ?:?; ?:?; ?:?; ?:?);//004895DC
    //function sub_00489928(?:Byte):?;//00489928
    //procedure sub_00489968(?:?; ?:?; ?:?);//00489968
    //procedure sub_00489A9C(?:HBITMAP; ?:?; ?:Byte; ?:?);//00489A9C
    //procedure sub_00489B14(?:?; ?:?; ?:?);//00489B14
    //function sub_00489B38(?:?; ?:?; ?:?; ?:?; ?:?):?;//00489B38
    //function sub_00489BF8(?:?; ?:?; ?:?; ?:?):?;//00489BF8
    procedure sub_00489C28;//00489C28
    procedure sub_00489C2C(?:LongBool);//00489C2C
    //procedure sub_00489C44(?:TMemoryStream; ?:?; ?:?);//00489C44
    constructor sub_00489E60;//00489E60
    //procedure sub_00489EA4(?:?);//00489EA4
    //function sub_00489ED4(?:?):?;//00489ED4
    procedure DefineProperties(Filer:TFiler);//00489F38
    //function sub_00489F84(?:?):?;//00489F84
    //function sub_0048A0D4:?;//0048A0D4
    //function sub_0048A0EC:?;//0048A0EC
    //procedure sub_0048A108(?:?);//0048A108
    //procedure sub_0048A164(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0048A164
    //procedure sub_0048A1A4(?:?);//0048A1A4
    //procedure sub_0048A1C0(?:?);//0048A1C0
    //procedure sub_0048A220(?:?);//0048A220
    //procedure sub_0048A230(?:?);//0048A230
    //procedure sub_0048A260(?:?);//0048A260
    destructor Destroy;//0048A454
    //procedure sub_0048A4BC(?:?; ?:AnsiString; ?:?; ?:?; ?:?);//0048A4BC
    //function sub_0048A560(?:?; ?:?):?;//0048A560
    //procedure sub_0048A72C(?:?; ?:?; ?:TGraphic);//0048A72C
    //function sub_0048A79C:?;//0048A79C
    //function sub_0048A7C8:?;//0048A7C8
    destructor Destroy;//0048A840
    //procedure sub_0048A87C(?:?);//0048A87C
    //procedure sub_0048A8C0(?:?; ?:TGraphic);//0048A8C0
    //function sub_0048A950(?:TPicture):?;//0048A950
    //function sub_0048A978(?:TPicture):?;//0048A978
    procedure sub_0048A9A0(?:TPicture; ?:TBitmap);//0048A9A0
    //procedure sub_0048AA64(?:?; ?:?);//0048AA64
    //procedure sub_0048AA84(?:?; ?:?);//0048AA84
    //procedure sub_0048AAA4(?:?);//0048AAA4
    //procedure sub_0048AB14(?:?);//0048AB14
    //procedure sub_0048AB50(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0048AB50
    //function sub_0048AD30(?:?):?;//0048AD30
    procedure DefineProperties(Filer:TFiler);//0048ADC8
    //function sub_0048AE14(?:TPicture):?;//0048AE14
    //function sub_0048AE40(?:TPicture):?;//0048AE40
    destructor Destroy;//0048AE6C
    procedure sub_0048AEC0;//0048AEC0
    constructor sub_0048AECC;//0048AECC
    destructor Destroy;//0048AF28
    //procedure sub_0048AF64(?:?);//0048AF64
    //procedure sub_0048B038(?:?; ?:?);//0048B038
    //function sub_0048B0E0:?;//0048B0E0
    //function sub_0048B0FC:?;//0048B0FC
    //function sub_0048B18C:?;//0048B18C
    //function sub_0048B258:?;//0048B258
    //procedure sub_0048B2E8(?:?);//0048B2E8
    procedure sub_0048B350(?:TMetafile);//0048B350
    //procedure sub_0048B384(?:?);//0048B384
    //procedure sub_0048B404(?:TMetafile; ?:?);//0048B404
    //procedure sub_0048B4EC(?:TMetafile; ?:?; ?:?);//0048B4EC
    //procedure sub_0048B68C(?:?);//0048B68C
    //procedure sub_0048B750(?:?);//0048B750
    //procedure sub_0048B78C(?:?);//0048B78C
    procedure sub_0048B824(?:TMetafile; ?:Integer);//0048B824
    procedure sub_0048B880(?:TMetafile; ?:Integer);//0048B880
    //procedure sub_0048B8DC(?:?);//0048B8DC
    //procedure sub_0048B8EC(?:?);//0048B8EC
    //function sub_0048B984(?:TMetafile; ?:?):?;//0048B984
    procedure sub_0048B9F4(?:TMetafile);//0048B9F4
    //procedure sub_0048BAC8(?:?);//0048BAC8
    //procedure sub_0048BB60(?:TMetafile; ?:?);//0048BB60
    //procedure sub_0048BBF4(?:TMetafile; ?:?);//0048BBF4
    //procedure sub_0048BD5C(?:?; ?:?);//0048BD5C
    //procedure sub_0048BE08(?:?; ?:?; ?:?);//0048BE08
    procedure FreeMemoryContexts;//0048BEE8
    procedure sub_0048BF94(?:HBITMAP);//0048BF94
    constructor sub_0048C030;//0048C030
    destructor Destroy;//0048C080
    procedure sub_0048C16C;//0048C16C
    procedure sub_0048C278(?:TSharedImage);//0048C278
    procedure sub_0048C288(?:TSharedImage);//0048C288
    destructor Destroy;//0048C2B8
    procedure sub_0048C338;//0048C338
    //procedure sub_0048C3B4(?:HBITMAP; ?:?; ?:?);//0048C3B4
    procedure sub_0048C484(?:TDIBSection);//0048C484
    //function sub_0048C4F4(?:HBITMAP; ?:HPALETTE; ?:HPALETTE; ?:?; ?:?):?;//0048C4F4
    //function sub_0048CB64(?:HPALETTE):?;//0048CB64
    //function sub_0048CBDC(?:HBITMAP; ?:HPALETTE; ?:?):?;//0048CBDC
    constructor Create;//0048CE08
    destructor Destroy;//0048CE84
    //procedure sub_0048CED4(?:?);//0048CED4
    //procedure sub_0048CFD4(?:TBitmap; ?:HBITMAP; ?:?);//0048CFD4
    procedure sub_0048D0A8(?:TBitmap; ?:TBitmap);//0048D0A8
    //procedure sub_0048D0E4(?:?);//0048D0E4
    procedure sub_0048D108(?:TBitmap);//0048D108
    //procedure sub_0048D190(?:?; ?:?);//0048D190
    //procedure sub_0048D434(?:?);//0048D434
    //function sub_0048D4D4:?;//0048D4D4
    //function sub_0048D584:?;//0048D584
    //function sub_0048D5BC(?:TBitmap):?;//0048D5BC
    //function sub_0048D614:?;//0048D614
    //function sub_0048D638:?;//0048D638
    //function sub_0048D65C(?:TBitmap):?;//0048D65C
    //function sub_0048D698:?;//0048D698
    //function sub_0048D6BC(?:?):?;//0048D6BC
    //function sub_0048D774(?:TBitmap; ?:?):?;//0048D774
    //function sub_0048D810(?:TBitmap):?;//0048D810
    //function sub_0048D878:?;//0048D878
    procedure sub_0048D894(?:TBitmap);//0048D894
    procedure sub_0048D968(?:TBitmap);//0048D968
    procedure sub_0048D988(?:TBitmap);//0048D988
    procedure sub_0048DA4C(?:TBitmap);//0048DA4C
    procedure sub_0048DAE4(?:TBitmap);//0048DAE4
    //procedure sub_0048DBF4(?:?; ?:?; ?:?);//0048DBF4
    //procedure sub_0048DC8C(?:?);//0048DC8C
    //procedure sub_0048DCBC(?:TBitmap; ?:HBITMAP; ?:HPALETTE; ?:?; ?:?; ?:?);//0048DCBC
    //procedure sub_0048DDC8(?:?);//0048DDC8
    //procedure sub_0048DDF8(?:TBitmap; ?:?; ?:?; ?:?);//0048DDF8
    //procedure sub_0048E3C4(?:TBitmap; ?:?; ?:?);//0048E3C4
    //procedure sub_0048E528(?:?);//0048E528
    //procedure sub_0048E6F4(?:?);//0048E6F4
    //procedure sub_0048E764(?:TBitmap; ?:?);//0048E764
    //procedure sub_0048E810(?:?);//0048E810
    //procedure sub_0048E91C(?:TBitmap; ?:?);//0048E91C
    //procedure sub_0048EA94(?:TBitmap; ?:?);//0048EA94
    //procedure sub_0048EB14(?:?);//0048EB14
    //procedure sub_0048EB84(?:?);//0048EB84
    //procedure sub_0048EBA4(?:TBitmap; ?:?; ?:?);//0048EBA4
    //procedure sub_0048EEE4(?:?);//0048EEE4
    //procedure sub_0048EF04(?:?; ?:?; ?:?);//0048EF04
    destructor Destroy;//0048EFC0
    procedure sub_0048EFFC;//0048EFFC
    constructor Create;//0048F024
    destructor Destroy;//0048F08C
    //procedure sub_0048F0C8(?:?);//0048F0C8
    //procedure sub_0048F140(?:?; ?:?);//0048F140
    //function sub_0048F194:?;//0048F194
    //function sub_0048F1C8(?:TIcon):?;//0048F1C8
    //function sub_0048F1EC:?;//0048F1EC
    //function sub_0048F218:?;//0048F218
    procedure sub_0048F244(?:TIcon);//0048F244
    procedure sub_0048F2D8(?:TIcon);//0048F2D8
    //procedure sub_0048F39C(?:?);//0048F39C
    //procedure sub_0048F45C(?:TIcon; ?:?; ?:TMemoryStream);//0048F45C
    procedure sub_0048F4E4(?:TIcon; ?:HICON);//0048F4E4
    //procedure sub_0048F50C(?:?);//0048F50C
    //procedure sub_0048F540(?:?);//0048F540
    //procedure sub_0048F550(?:?);//0048F550
    //procedure sub_0048F584(?:?);//0048F584
    //procedure sub_0048F5C0(?:?; ?:?);//0048F5C0
    //procedure sub_0048F5E0(?:?; ?:?);//0048F5E0
    procedure InitScreenLogPixels;//0048F600
    //function sub_0048F640:?;//0048F640
    procedure InitDefFontData;//0048F698
    //procedure sub_0048F7E8(?:?);//0048F7E8
    //procedure sub_0048F800(?:?);//0048F800
    //function sub_0048F818(?:?; ?:?; ?:?):?;//0048F818
    //function sub_0048F8E4(?:?; ?:?; ?:?):?;//0048F8E4
    //function sub_0048FA88(?:?; ?:?):?;//0048FA88

implementation

//00485E88
procedure sub_00485E88(?:HPALETTE);
begin
{*
 00485E88    push        ebp
 00485E89    mov         ebp,esp
 00485E8B    push        ecx
 00485E8C    mov         dword ptr [ebp-4],eax
 00485E8F    cmp         dword ptr [ebp-4],0
>00485E93    je          00485EA9
 00485E95    mov         eax,dword ptr [ebp-4]
 00485E98    cmp         eax,dword ptr ds:[55DB10];gvar_0055DB10
>00485E9E    je          00485EA9
 00485EA0    mov         eax,dword ptr [ebp-4]
 00485EA3    push        eax
 00485EA4    call        gdi32.DeleteObject
 00485EA9    pop         ecx
 00485EAA    pop         ebp
 00485EAB    ret
*}
end;

//00485F0C
function GetHashCode(const Buffer:void ; Count:Integer):Word;
begin
{*
 00485F0C    mov         ecx,edx
 00485F0E    mov         edx,eax
 00485F10    xor         eax,eax
 00485F12    rol         ax,5
 00485F16    xor         al,byte ptr [edx]
 00485F18    inc         edx
 00485F19    dec         ecx
>00485F1A    jne         00485F12
 00485F1C    ret
*}
end;

//00485F20
constructor TResourceManager.Create(AResDataSize:Word);
begin
{*
 00485F20    push        ebp
 00485F21    mov         ebp,esp
 00485F23    add         esp,0FFFFFFF8
 00485F26    test        dl,dl
>00485F28    je          00485F32
 00485F2A    add         esp,0FFFFFFF0
 00485F2D    call        @ClassCreate
 00485F32    mov         word ptr [ebp-8],cx
 00485F36    mov         byte ptr [ebp-5],dl
 00485F39    mov         dword ptr [ebp-4],eax
 00485F3C    mov         eax,dword ptr [ebp-4]
 00485F3F    mov         dx,word ptr [ebp-8]
 00485F43    mov         word ptr [eax+20],dx
 00485F47    mov         eax,dword ptr [ebp-4]
 00485F4A    add         eax,8
 00485F4D    push        eax
 00485F4E    call        kernel32.InitializeCriticalSection
 00485F53    mov         eax,dword ptr [ebp-4]
 00485F56    cmp         byte ptr [ebp-5],0
>00485F5A    je          00485F6B
 00485F5C    call        @AfterConstruction
 00485F61    pop         dword ptr fs:[0]
 00485F68    add         esp,0C
 00485F6B    mov         eax,dword ptr [ebp-4]
 00485F6E    pop         ecx
 00485F6F    pop         ecx
 00485F70    pop         ebp
 00485F71    ret
*}
end;

//00485FA4
{*procedure sub_00485FA4(?:?);
begin
 00485FA4    push        ebp
 00485FA5    mov         ebp,esp
 00485FA7    push        ecx
 00485FA8    mov         dword ptr [ebp-4],eax
 00485FAB    mov         eax,dword ptr [ebp-4]
 00485FAE    add         eax,8
 00485FB1    push        eax
 00485FB2    call        kernel32.EnterCriticalSection
 00485FB7    pop         ecx
 00485FB8    pop         ebp
 00485FB9    ret
end;*}

//00485FBC
{*procedure sub_00485FBC(?:?);
begin
 00485FBC    push        ebp
 00485FBD    mov         ebp,esp
 00485FBF    push        ecx
 00485FC0    mov         dword ptr [ebp-4],eax
 00485FC3    mov         eax,dword ptr [ebp-4]
 00485FC6    add         eax,8
 00485FC9    push        eax
 00485FCA    call        kernel32.LeaveCriticalSection
 00485FCF    pop         ecx
 00485FD0    pop         ebp
 00485FD1    ret
end;*}

//00485FD4
{*function sub_00485FD4(?:?; ?:?):?;
begin
 00485FD4    push        ebp
 00485FD5    mov         ebp,esp
 00485FD7    add         esp,0FFFFFFEC
 00485FDA    mov         dword ptr [ebp-8],edx
 00485FDD    mov         dword ptr [ebp-4],eax
 00485FE0    mov         eax,dword ptr [ebp-4]
 00485FE3    movzx       edx,word ptr [eax+20]
 00485FE7    mov         eax,dword ptr [ebp-8]
 00485FEA    call        GetHashCode
 00485FEF    mov         word ptr [ebp-0E],ax
 00485FF3    mov         eax,dword ptr [ebp-4]
 00485FF6    call        00485FA4
 00485FFB    xor         eax,eax
 00485FFD    push        ebp
 00485FFE    push        4860C9
 00486003    push        dword ptr fs:[eax]
 00486006    mov         dword ptr fs:[eax],esp
 00486009    mov         eax,dword ptr [ebp-4]
 0048600C    mov         eax,dword ptr [eax+4]
 0048600F    mov         dword ptr [ebp-0C],eax
>00486012    jmp         0048601C
 00486014    mov         eax,dword ptr [ebp-0C]
 00486017    mov         eax,dword ptr [eax]
 00486019    mov         dword ptr [ebp-0C],eax
 0048601C    cmp         dword ptr [ebp-0C],0
>00486020    je          00486048
 00486022    mov         eax,dword ptr [ebp-0C]
 00486025    mov         ax,word ptr [eax+0C]
 00486029    cmp         ax,word ptr [ebp-0E]
>0048602D    jne         00486014
 0048602F    mov         eax,dword ptr [ebp-4]
 00486032    movzx       ecx,word ptr [eax+20]
 00486036    mov         edx,dword ptr [ebp-8]
 00486039    mov         eax,dword ptr [ebp-0C]
 0048603C    add         eax,10
 0048603F    call        CompareMem
 00486044    test        al,al
>00486046    je          00486014
 00486048    cmp         dword ptr [ebp-0C],0
>0048604C    jne         004860AD
 0048604E    mov         eax,dword ptr [ebp-4]
 00486051    movzx       eax,word ptr [eax+20]
 00486055    add         eax,10
 00486058    call        @GetMem
 0048605D    mov         dword ptr [ebp-0C],eax
 00486060    mov         eax,dword ptr [ebp-0C]
 00486063    mov         dword ptr [ebp-14],eax
 00486066    mov         eax,dword ptr [ebp-4]
 00486069    mov         eax,dword ptr [eax+4]
 0048606C    mov         edx,dword ptr [ebp-14]
 0048606F    mov         dword ptr [edx],eax
 00486071    mov         eax,dword ptr [ebp-14]
 00486074    xor         edx,edx
 00486076    mov         dword ptr [eax+4],edx
 00486079    mov         eax,dword ptr [ebp-8]
 0048607C    mov         eax,dword ptr [eax]
 0048607E    mov         edx,dword ptr [ebp-14]
 00486081    mov         dword ptr [edx+8],eax
 00486084    mov         eax,dword ptr [ebp-14]
 00486087    mov         dx,word ptr [ebp-0E]
 0048608B    mov         word ptr [eax+0C],dx
 0048608F    mov         eax,dword ptr [ebp-4]
 00486092    movzx       ecx,word ptr [eax+20]
 00486096    mov         eax,dword ptr [ebp-14]
 00486099    lea         edx,[eax+10]
 0048609C    mov         eax,dword ptr [ebp-8]
 0048609F    call        Move
 004860A4    mov         eax,dword ptr [ebp-4]
 004860A7    mov         edx,dword ptr [ebp-0C]
 004860AA    mov         dword ptr [eax+4],edx
 004860AD    mov         eax,dword ptr [ebp-0C]
 004860B0    inc         dword ptr [eax+4]
 004860B3    xor         eax,eax
 004860B5    pop         edx
 004860B6    pop         ecx
 004860B7    pop         ecx
 004860B8    mov         dword ptr fs:[eax],edx
 004860BB    push        4860D0
 004860C0    mov         eax,dword ptr [ebp-4]
 004860C3    call        00485FBC
 004860C8    ret
>004860C9    jmp         @HandleFinally
>004860CE    jmp         004860C0
 004860D0    mov         eax,dword ptr [ebp-0C]
 004860D3    mov         esp,ebp
 004860D5    pop         ebp
 004860D6    ret
end;*}

//004860D8
{*procedure sub_004860D8(?:?; ?:?);
begin
 004860D8    push        ebp
 004860D9    mov         ebp,esp
 004860DB    add         esp,0FFFFFFEC
 004860DE    mov         dword ptr [ebp-8],edx
 004860E1    mov         dword ptr [ebp-4],eax
 004860E4    cmp         dword ptr [ebp-8],0
>004860E8    je          004861A0
 004860EE    mov         eax,dword ptr [ebp-8]
 004860F1    mov         dword ptr [ebp-14],eax
 004860F4    mov         eax,dword ptr [ebp-4]
 004860F7    call        00485FA4
 004860FC    xor         eax,eax
 004860FE    push        ebp
 004860FF    push        486176
 00486104    push        dword ptr fs:[eax]
 00486107    mov         dword ptr fs:[eax],esp
 0048610A    mov         eax,dword ptr [ebp-14]
 0048610D    dec         dword ptr [eax+4]
 00486110    mov         eax,dword ptr [ebp-14]
 00486113    cmp         dword ptr [eax+4],0
 00486117    sete        byte ptr [ebp-0D]
 0048611B    cmp         byte ptr [ebp-0D],0
>0048611F    je          00486160
 00486121    mov         eax,dword ptr [ebp-4]
 00486124    mov         eax,dword ptr [eax+4]
 00486127    cmp         eax,dword ptr [ebp-8]
>0048612A    jne         00486139
 0048612C    mov         eax,dword ptr [ebp-8]
 0048612F    mov         eax,dword ptr [eax]
 00486131    mov         edx,dword ptr [ebp-4]
 00486134    mov         dword ptr [edx+4],eax
>00486137    jmp         00486160
 00486139    mov         eax,dword ptr [ebp-4]
 0048613C    mov         eax,dword ptr [eax+4]
 0048613F    mov         dword ptr [ebp-0C],eax
>00486142    jmp         0048614C
 00486144    mov         eax,dword ptr [ebp-0C]
 00486147    mov         eax,dword ptr [eax]
 00486149    mov         dword ptr [ebp-0C],eax
 0048614C    mov         eax,dword ptr [ebp-0C]
 0048614F    mov         eax,dword ptr [eax]
 00486151    cmp         eax,dword ptr [ebp-8]
>00486154    jne         00486144
 00486156    mov         eax,dword ptr [ebp-8]
 00486159    mov         eax,dword ptr [eax]
 0048615B    mov         edx,dword ptr [ebp-0C]
 0048615E    mov         dword ptr [edx],eax
 00486160    xor         eax,eax
 00486162    pop         edx
 00486163    pop         ecx
 00486164    pop         ecx
 00486165    mov         dword ptr fs:[eax],edx
 00486168    push        48617D
 0048616D    mov         eax,dword ptr [ebp-4]
 00486170    call        00485FBC
 00486175    ret
>00486176    jmp         @HandleFinally
>0048617B    jmp         0048616D
 0048617D    cmp         byte ptr [ebp-0D],0
>00486181    je          004861A0
 00486183    mov         eax,dword ptr [ebp-14]
 00486186    cmp         dword ptr [eax+8],0
>0048618A    je          00486198
 0048618C    mov         eax,dword ptr [ebp-14]
 0048618F    mov         eax,dword ptr [eax+8]
 00486192    push        eax
 00486193    call        gdi32.DeleteObject
 00486198    mov         eax,dword ptr [ebp-8]
 0048619B    call        @FreeMem
 004861A0    mov         esp,ebp
 004861A2    pop         ebp
 004861A3    ret
end;*}

//004861A4
{*procedure sub_004861A4(?:?; ?:?; ?:?);
begin
 004861A4    push        ebp
 004861A5    mov         ebp,esp
 004861A7    add         esp,0FFFFFFF0
 004861AA    push        esi
 004861AB    mov         dword ptr [ebp-0C],ecx
 004861AE    mov         dword ptr [ebp-8],edx
 004861B1    mov         dword ptr [ebp-4],eax
 004861B4    mov         eax,dword ptr [ebp-4]
 004861B7    call        00485FA4
 004861BC    xor         eax,eax
 004861BE    push        ebp
 004861BF    push        48621C
 004861C4    push        dword ptr fs:[eax]
 004861C7    mov         dword ptr fs:[eax],esp
 004861CA    mov         eax,dword ptr [ebp-8]
 004861CD    mov         eax,dword ptr [eax+10]
 004861D0    mov         dword ptr [ebp-10],eax
 004861D3    mov         edx,dword ptr [ebp-0C]
 004861D6    mov         eax,dword ptr [ebp-4]
 004861D9    call        00485FD4
 004861DE    mov         edx,dword ptr [ebp-8]
 004861E1    mov         dword ptr [edx+10],eax
 004861E4    mov         eax,dword ptr [ebp-8]
 004861E7    mov         eax,dword ptr [eax+10]
 004861EA    cmp         eax,dword ptr [ebp-10]
>004861ED    je          004861FB
 004861EF    mov         eax,dword ptr [ebp-8]
 004861F2    mov         si,0FFFD
 004861F6    call        @CallDynaInst
 004861FB    mov         edx,dword ptr [ebp-10]
 004861FE    mov         eax,dword ptr [ebp-4]
 00486201    call        004860D8
 00486206    xor         eax,eax
 00486208    pop         edx
 00486209    pop         ecx
 0048620A    pop         ecx
 0048620B    mov         dword ptr fs:[eax],edx
 0048620E    push        486223
 00486213    mov         eax,dword ptr [ebp-4]
 00486216    call        00485FBC
 0048621B    ret
>0048621C    jmp         @HandleFinally
>00486221    jmp         00486213
 00486223    pop         esi
 00486224    mov         esp,ebp
 00486226    pop         ebp
 00486227    ret
end;*}

//00486228
{*procedure sub_00486228(?:?; ?:TGraphicsObject; ?:?);
begin
 00486228    push        ebp
 00486229    mov         ebp,esp
 0048622B    add         esp,0FFFFFFF0
 0048622E    push        esi
 0048622F    mov         dword ptr [ebp-0C],ecx
 00486232    mov         dword ptr [ebp-8],edx
 00486235    mov         dword ptr [ebp-4],eax
 00486238    mov         eax,dword ptr [ebp-4]
 0048623B    call        00485FA4
 00486240    xor         eax,eax
 00486242    push        ebp
 00486243    push        48629B
 00486248    push        dword ptr fs:[eax]
 0048624B    mov         dword ptr fs:[eax],esp
 0048624E    mov         eax,dword ptr [ebp-8]
 00486251    mov         eax,dword ptr [eax+10]
 00486254    mov         dword ptr [ebp-10],eax
 00486257    mov         eax,dword ptr [ebp-10]
 0048625A    cmp         eax,dword ptr [ebp-0C]
>0048625D    je          00486285
 0048625F    mov         eax,dword ptr [ebp-0C]
 00486262    inc         dword ptr [eax+4]
 00486265    mov         eax,dword ptr [ebp-8]
 00486268    mov         edx,dword ptr [ebp-0C]
 0048626B    mov         dword ptr [eax+10],edx
 0048626E    mov         eax,dword ptr [ebp-8]
 00486271    mov         si,0FFFD
 00486275    call        @CallDynaInst
 0048627A    mov         edx,dword ptr [ebp-10]
 0048627D    mov         eax,dword ptr [ebp-4]
 00486280    call        004860D8
 00486285    xor         eax,eax
 00486287    pop         edx
 00486288    pop         ecx
 00486289    pop         ecx
 0048628A    mov         dword ptr fs:[eax],edx
 0048628D    push        4862A2
 00486292    mov         eax,dword ptr [ebp-4]
 00486295    call        00485FBC
 0048629A    ret
>0048629B    jmp         @HandleFinally
>004862A0    jmp         00486292
 004862A2    pop         esi
 004862A3    mov         esp,ebp
 004862A5    pop         ebp
 004862A6    ret
end;*}

//004862A8
{*procedure sub_004862A8(?:?);
begin
 004862A8    push        ebp
 004862A9    mov         ebp,esp
 004862AB    add         esp,0FFFFFFF4
 004862AE    mov         dword ptr [ebp-4],eax
 004862B1    mov         eax,dword ptr [ebp-4]
 004862B4    call        00485FA4
 004862B9    xor         eax,eax
 004862BB    push        ebp
 004862BC    push        486326
 004862C1    push        dword ptr fs:[eax]
 004862C4    mov         dword ptr fs:[eax],esp
 004862C7    mov         eax,dword ptr [ebp-4]
 004862CA    mov         eax,dword ptr [eax+4]
 004862CD    mov         dword ptr [ebp-8],eax
 004862D0    cmp         dword ptr [ebp-8],0
>004862D4    je          00486310
 004862D6    mov         eax,dword ptr [ebp-8]
 004862D9    mov         dword ptr [ebp-0C],eax
 004862DC    mov         eax,dword ptr [ebp-0C]
 004862DF    cmp         dword ptr [eax+8],0
>004862E3    je          00486302
 004862E5    mov         eax,dword ptr [ebp-0C]
 004862E8    cmp         dword ptr [eax+14],0
>004862EC    jge         00486302
 004862EE    mov         eax,dword ptr [ebp-0C]
 004862F1    mov         eax,dword ptr [eax+8]
 004862F4    push        eax
 004862F5    call        gdi32.DeleteObject
 004862FA    mov         eax,dword ptr [ebp-0C]
 004862FD    xor         edx,edx
 004862FF    mov         dword ptr [eax+8],edx
 00486302    mov         eax,dword ptr [ebp-8]
 00486305    mov         eax,dword ptr [eax]
 00486307    mov         dword ptr [ebp-8],eax
 0048630A    cmp         dword ptr [ebp-8],0
>0048630E    jne         004862D6
 00486310    xor         eax,eax
 00486312    pop         edx
 00486313    pop         ecx
 00486314    pop         ecx
 00486315    mov         dword ptr fs:[eax],edx
 00486318    push        48632D
 0048631D    mov         eax,dword ptr [ebp-4]
 00486320    call        00485FBC
 00486325    ret
>00486326    jmp         @HandleFinally
>0048632B    jmp         0048631D
 0048632D    mov         esp,ebp
 0048632F    pop         ebp
 00486330    ret
end;*}

//00486334
procedure sub_00486334;
begin
{*
 00486334    push        ebp
 00486335    mov         ebp,esp
 00486337    add         esp,0FFFFFFEC
 0048633A    xor         eax,eax
 0048633C    mov         dword ptr [ebp-4],eax
 0048633F    mov         eax,[0055DB68];gvar_0055DB68
 00486344    call        TThreadList.LockList
 00486349    mov         dword ptr [ebp-0C],eax
 0048634C    xor         eax,eax
 0048634E    push        ebp
 0048634F    push        4863E3
 00486354    push        dword ptr fs:[eax]
 00486357    mov         dword ptr fs:[eax],esp
>0048635A    jmp         0048637D
 0048635C    mov         edx,dword ptr [ebp-4]
 0048635F    mov         eax,dword ptr [ebp-0C]
 00486362    call        TList.Get
 00486367    mov         dword ptr [ebp-10],eax
 0048636A    mov         eax,dword ptr [ebp-10]
 0048636D    call        TCanvas.Lock
 00486372    inc         dword ptr [ebp-4]
 00486375    mov         eax,dword ptr [ebp-10]
 00486378    call        004884D8
 0048637D    mov         eax,dword ptr [ebp-0C]
 00486380    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00486383    cmp         eax,dword ptr [ebp-4]
>00486386    jg          0048635C
 00486388    push        ebp
 00486389    mov         eax,[0055DB60];gvar_0055DB60
 0048638E    call        004862A8
 00486393    pop         ecx
 00486394    push        ebp
 00486395    mov         eax,[0055DB64];gvar_0055DB64
 0048639A    call        004862A8
 0048639F    pop         ecx
 004863A0    xor         eax,eax
 004863A2    pop         edx
 004863A3    pop         ecx
 004863A4    pop         ecx
 004863A5    mov         dword ptr fs:[eax],edx
 004863A8    push        4863EA
 004863AD    mov         eax,dword ptr [ebp-4]
 004863B0    dec         eax
 004863B1    test        eax,eax
>004863B3    jl          004863D8
 004863B5    inc         eax
 004863B6    mov         dword ptr [ebp-14],eax
 004863B9    mov         dword ptr [ebp-8],0
 004863C0    mov         edx,dword ptr [ebp-8]
 004863C3    mov         eax,dword ptr [ebp-0C]
 004863C6    call        TList.Get
 004863CB    call        TCanvas.Unlock
 004863D0    inc         dword ptr [ebp-8]
 004863D3    dec         dword ptr [ebp-14]
>004863D6    jne         004863C0
 004863D8    mov         eax,[0055DB68];gvar_0055DB68
 004863DD    call        TThreadList.UnlockList
 004863E2    ret
>004863E3    jmp         @HandleFinally
>004863E8    jmp         004863AD
 004863EA    mov         esp,ebp
 004863EC    pop         ebp
 004863ED    ret
*}
end;

//00486830
{*function sub_00486830(?:TColor):?;
begin
 00486830    push        ebp
 00486831    mov         ebp,esp
 00486833    add         esp,0FFFFFFF8
 00486836    mov         dword ptr [ebp-4],eax
 00486839    cmp         dword ptr [ebp-4],0
>0048683D    jge         00486852
 0048683F    mov         eax,dword ptr [ebp-4]
 00486842    and         eax,0FF
 00486847    push        eax
 00486848    call        user32.GetSysColor
 0048684D    mov         dword ptr [ebp-8],eax
>00486850    jmp         00486858
 00486852    mov         eax,dword ptr [ebp-4]
 00486855    mov         dword ptr [ebp-8],eax
 00486858    mov         eax,dword ptr [ebp-8]
 0048685B    pop         ecx
 0048685C    pop         ecx
 0048685D    pop         ebp
 0048685E    ret
end;*}

//00486860
function ColorToIdent(Color:Longint; var Ident:AnsiString):Boolean;
begin
{*
 00486860    push        ebp
 00486861    mov         ebp,esp
 00486863    add         esp,0FFFFFFF4
 00486866    mov         dword ptr [ebp-8],edx
 00486869    mov         dword ptr [ebp-4],eax
 0048686C    push        33
 0048686E    mov         ecx,540E00
 00486873    mov         edx,dword ptr [ebp-8]
 00486876    mov         eax,dword ptr [ebp-4]
 00486879    call        00477F9C
 0048687E    mov         byte ptr [ebp-9],al
 00486881    mov         al,byte ptr [ebp-9]
 00486884    mov         esp,ebp
 00486886    pop         ebp
 00486887    ret
*}
end;

//00486888
function IdentToColor(const Ident:AnsiString; var Color:Longint):Boolean;
begin
{*
 00486888    push        ebp
 00486889    mov         ebp,esp
 0048688B    add         esp,0FFFFFFF4
 0048688E    mov         dword ptr [ebp-8],edx
 00486891    mov         dword ptr [ebp-4],eax
 00486894    push        33
 00486896    mov         ecx,540E00
 0048689B    mov         edx,dword ptr [ebp-8]
 0048689E    mov         eax,dword ptr [ebp-4]
 004868A1    call        00477F3C
 004868A6    mov         byte ptr [ebp-9],al
 004868A9    mov         al,byte ptr [ebp-9]
 004868AC    mov         esp,ebp
 004868AE    pop         ebp
 004868AF    ret
*}
end;

//004868B0
procedure TGraphicsObject.sub_004868B0;
begin
{*
 004868B0    push        ebp
 004868B1    mov         ebp,esp
 004868B3    push        ecx
 004868B4    push        ebx
 004868B5    mov         dword ptr [ebp-4],eax
 004868B8    mov         eax,dword ptr [ebp-4]
 004868BB    cmp         word ptr [eax+0A],0;TGraphicsObject.?fA:word
>004868C0    je          004868CE
 004868C2    mov         ebx,dword ptr [ebp-4]
 004868C5    mov         edx,dword ptr [ebp-4]
 004868C8    mov         eax,dword ptr [ebx+0C];TGraphicsObject.?fC:TCustomListView
 004868CB    call        dword ptr [ebx+8];TGraphicsObject.FOnChange
 004868CE    pop         ebx
 004868CF    pop         ecx
 004868D0    pop         ebp
 004868D1    ret
*}
end;

//004868D4
procedure sub_004868D4(?:TGraphicsObject);
begin
{*
 004868D4    push        ebp
 004868D5    mov         ebp,esp
 004868D7    push        ecx
 004868D8    mov         dword ptr [ebp-4],eax
 004868DB    mov         eax,dword ptr [ebp-4]
 004868DE    cmp         dword ptr [eax+14],0
>004868E2    je          004868F0
 004868E4    mov         eax,dword ptr [ebp-4]
 004868E7    mov         eax,dword ptr [eax+14]
 004868EA    push        eax
 004868EB    call        kernel32.EnterCriticalSection
 004868F0    pop         ecx
 004868F1    pop         ebp
 004868F2    ret
*}
end;

//004868F4
procedure sub_004868F4(?:TGraphicsObject);
begin
{*
 004868F4    push        ebp
 004868F5    mov         ebp,esp
 004868F7    push        ecx
 004868F8    mov         dword ptr [ebp-4],eax
 004868FB    mov         eax,dword ptr [ebp-4]
 004868FE    cmp         dword ptr [eax+14],0
>00486902    je          00486910
 00486904    mov         eax,dword ptr [ebp-4]
 00486907    mov         eax,dword ptr [eax+14]
 0048690A    push        eax
 0048690B    call        kernel32.LeaveCriticalSection
 00486910    pop         ecx
 00486911    pop         ebp
 00486912    ret
*}
end;

//00486AC8
function CharsetToIdent(Charset:Longint; var Ident:AnsiString):Boolean;
begin
{*
 00486AC8    push        ebp
 00486AC9    mov         ebp,esp
 00486ACB    add         esp,0FFFFFFF4
 00486ACE    mov         dword ptr [ebp-8],edx
 00486AD1    mov         dword ptr [ebp-4],eax
 00486AD4    push        11
 00486AD6    mov         ecx,540FA0
 00486ADB    mov         edx,dword ptr [ebp-8]
 00486ADE    mov         eax,dword ptr [ebp-4]
 00486AE1    call        00477F9C
 00486AE6    mov         byte ptr [ebp-9],al
 00486AE9    mov         al,byte ptr [ebp-9]
 00486AEC    mov         esp,ebp
 00486AEE    pop         ebp
 00486AEF    ret
*}
end;

//00486AF0
function IdentToCharset(const Ident:AnsiString; var Charset:Longint):Boolean;
begin
{*
 00486AF0    push        ebp
 00486AF1    mov         ebp,esp
 00486AF3    add         esp,0FFFFFFF4
 00486AF6    mov         dword ptr [ebp-8],edx
 00486AF9    mov         dword ptr [ebp-4],eax
 00486AFC    push        11
 00486AFE    mov         ecx,540FA0
 00486B03    mov         edx,dword ptr [ebp-8]
 00486B06    mov         eax,dword ptr [ebp-4]
 00486B09    call        00477F3C
 00486B0E    mov         byte ptr [ebp-9],al
 00486B11    mov         al,byte ptr [ebp-9]
 00486B14    mov         esp,ebp
 00486B16    pop         ebp
 00486B17    ret
*}
end;

//00486B18
{*procedure sub_00486B18(?:?; ?:?);
begin
 00486B18    push        ebp
 00486B19    mov         ebp,esp
 00486B1B    add         esp,0FFFFFF98
 00486B1E    push        esi
 00486B1F    push        edi
 00486B20    mov         dword ptr [ebp-8],edx
 00486B23    mov         dword ptr [ebp-4],eax
 00486B26    mov         eax,dword ptr [ebp-8]
 00486B29    mov         edi,eax
 00486B2B    mov         esi,540DD0;gvar_00540DD0
 00486B30    mov         ecx,0B
 00486B35    rep movs    dword ptr [edi],dword ptr [esi]
 00486B37    cmp         dword ptr [ebp-4],0
>00486B3B    je          00486BEF
 00486B41    lea         eax,[ebp-44]
 00486B44    push        eax
 00486B45    push        3C
 00486B47    mov         eax,dword ptr [ebp-4]
 00486B4A    push        eax
 00486B4B    call        gdi32.GetObjectA
 00486B50    test        eax,eax
>00486B52    je          00486BEF
 00486B58    mov         eax,dword ptr [ebp-8]
 00486B5B    mov         edx,dword ptr [ebp-44]
 00486B5E    mov         dword ptr [eax+4],edx
 00486B61    cmp         dword ptr [ebp-34],2BC
>00486B68    jl          00486B71
 00486B6A    mov         eax,dword ptr [ebp-8]
 00486B6D    or          byte ptr [eax+9],1
 00486B71    cmp         byte ptr [ebp-30],1
>00486B75    jne         00486B7E
 00486B77    mov         eax,dword ptr [ebp-8]
 00486B7A    or          byte ptr [eax+9],2
 00486B7E    cmp         byte ptr [ebp-2F],1
>00486B82    jne         00486B8B
 00486B84    mov         eax,dword ptr [ebp-8]
 00486B87    or          byte ptr [eax+9],4
 00486B8B    cmp         byte ptr [ebp-2E],1
>00486B8F    jne         00486B98
 00486B91    mov         eax,dword ptr [ebp-8]
 00486B94    or          byte ptr [eax+9],8
 00486B98    mov         eax,dword ptr [ebp-8]
 00486B9B    mov         dl,byte ptr [ebp-2D]
 00486B9E    mov         byte ptr [eax+0A],dl
 00486BA1    lea         eax,[ebp-68]
 00486BA4    lea         edx,[ebp-28]
 00486BA7    mov         ecx,20
 00486BAC    call        @_CLenToPasStr
 00486BB1    lea         edx,[ebp-68]
 00486BB4    mov         eax,dword ptr [ebp-8]
 00486BB7    add         eax,0B
 00486BBA    mov         cl,1F
 00486BBC    call        @PStrNCpy
 00486BC1    mov         al,byte ptr [ebp-29]
 00486BC4    and         al,0F
 00486BC6    dec         al
>00486BC8    je          00486BD7
 00486BCA    dec         al
>00486BCC    jne         00486BE0
 00486BCE    mov         eax,dword ptr [ebp-8]
 00486BD1    mov         byte ptr [eax+8],1
>00486BD5    jmp         00486BE7
 00486BD7    mov         eax,dword ptr [ebp-8]
 00486BDA    mov         byte ptr [eax+8],2
>00486BDE    jmp         00486BE7
 00486BE0    mov         eax,dword ptr [ebp-8]
 00486BE3    mov         byte ptr [eax+8],0
 00486BE7    mov         eax,dword ptr [ebp-8]
 00486BEA    mov         edx,dword ptr [ebp-4]
 00486BED    mov         dword ptr [eax],edx
 00486BEF    pop         edi
 00486BF0    pop         esi
 00486BF1    mov         esp,ebp
 00486BF3    pop         ebp
 00486BF4    ret
end;*}

//00486BF8
constructor TFont.Create;
begin
{*
 00486BF8    push        ebp
 00486BF9    mov         ebp,esp
 00486BFB    add         esp,0FFFFFFF8
 00486BFE    test        dl,dl
>00486C00    je          00486C0A
 00486C02    add         esp,0FFFFFFF0
 00486C05    call        @ClassCreate
 00486C0A    mov         byte ptr [ebp-5],dl
 00486C0D    mov         dword ptr [ebp-4],eax
 00486C10    xor         eax,eax
 00486C12    mov         [00540DD0],eax;gvar_00540DD0
 00486C17    mov         edx,540DD0;gvar_00540DD0
 00486C1C    mov         eax,[0055DB5C];gvar_0055DB5C
 00486C21    call        00485FD4
 00486C26    mov         edx,dword ptr [ebp-4]
 00486C29    mov         dword ptr [edx+10],eax
 00486C2C    mov         eax,dword ptr [ebp-4]
 00486C2F    mov         dword ptr [eax+18],0FF000008
 00486C36    mov         eax,dword ptr [ebp-4]
 00486C39    mov         edx,dword ptr ds:[55DB18];gvar_0055DB18
 00486C3F    mov         dword ptr [eax+1C],edx
 00486C42    mov         eax,dword ptr [ebp-4]
 00486C45    cmp         byte ptr [ebp-5],0
>00486C49    je          00486C5A
 00486C4B    call        @AfterConstruction
 00486C50    pop         dword ptr fs:[0]
 00486C57    add         esp,0C
 00486C5A    mov         eax,dword ptr [ebp-4]
 00486C5D    pop         ecx
 00486C5E    pop         ecx
 00486C5F    pop         ebp
 00486C60    ret
*}
end;

//00486C64
destructor TFont.Destroy;
begin
{*
 00486C64    push        ebp
 00486C65    mov         ebp,esp
 00486C67    add         esp,0FFFFFFF8
 00486C6A    call        @BeforeDestruction
 00486C6F    mov         byte ptr [ebp-5],dl
 00486C72    mov         dword ptr [ebp-4],eax
 00486C75    mov         eax,dword ptr [ebp-4]
 00486C78    mov         edx,dword ptr [eax+10]
 00486C7B    mov         eax,[0055DB5C];gvar_0055DB5C
 00486C80    call        004860D8
 00486C85    cmp         byte ptr [ebp-5],0
>00486C89    jle         00486C93
 00486C8B    mov         eax,dword ptr [ebp-4]
 00486C8E    call        @ClassDestroy
 00486C93    pop         ecx
 00486C94    pop         ecx
 00486C95    pop         ebp
 00486C96    ret
*}
end;

//00486C98
procedure TFont.sub_004868B0;
begin
{*
 00486C98    push        ebp
 00486C99    mov         ebp,esp
 00486C9B    push        ecx
 00486C9C    mov         dword ptr [ebp-4],eax
 00486C9F    mov         eax,dword ptr [ebp-4]
 00486CA2    call        TGraphicsObject.sub_004868B0
 00486CA7    mov         eax,dword ptr [ebp-4]
 00486CAA    cmp         dword ptr [eax+20],0;TFont.FNotify:IChangeNotifier
>00486CAE    je          00486CBB
 00486CB0    mov         eax,dword ptr [ebp-4]
 00486CB3    mov         eax,dword ptr [eax+20];TFont.FNotify:IChangeNotifier
 00486CB6    mov         edx,dword ptr [eax]
 00486CB8    call        dword ptr [edx+0C]
 00486CBB    pop         ecx
 00486CBC    pop         ebp
 00486CBD    ret
*}
end;

//00486CC0
{*procedure sub_00486CC0(?:?);
begin
 00486CC0    push        ebp
 00486CC1    mov         ebp,esp
 00486CC3    add         esp,0FFFFFFF8
 00486CC6    mov         dword ptr [ebp-8],edx
 00486CC9    mov         dword ptr [ebp-4],eax
 00486CCC    mov         eax,dword ptr [ebp-8]
 00486CCF    mov         edx,dword ptr ds:[48521C];TFont
 00486CD5    call        @IsClass
 00486CDA    test        al,al
>00486CDC    je          00486D89
 00486CE2    mov         eax,dword ptr [ebp-4]
 00486CE5    call        004868D4
 00486CEA    xor         eax,eax
 00486CEC    push        ebp
 00486CED    push        486D82
 00486CF2    push        dword ptr fs:[eax]
 00486CF5    mov         dword ptr fs:[eax],esp
 00486CF8    mov         eax,dword ptr [ebp-8]
 00486CFB    call        004868D4
 00486D00    xor         eax,eax
 00486D02    push        ebp
 00486D03    push        486D65
 00486D08    push        dword ptr fs:[eax]
 00486D0B    mov         dword ptr fs:[eax],esp
 00486D0E    mov         eax,dword ptr [ebp-8]
 00486D11    mov         ecx,dword ptr [eax+10]
 00486D14    mov         edx,dword ptr [ebp-4]
 00486D17    mov         eax,[0055DB5C];gvar_0055DB5C
 00486D1C    call        00486228
 00486D21    mov         eax,dword ptr [ebp-8]
 00486D24    mov         edx,dword ptr [eax+18]
 00486D27    mov         eax,dword ptr [ebp-4]
 00486D2A    call        TFont.SetColor
 00486D2F    mov         eax,dword ptr [ebp-4]
 00486D32    mov         eax,dword ptr [eax+1C];TFont.FPixelsPerInch:Integer
 00486D35    mov         edx,dword ptr [ebp-8]
 00486D38    cmp         eax,dword ptr [edx+1C]
>00486D3B    je          00486D4F
 00486D3D    mov         eax,dword ptr [ebp-8]
 00486D40    call        TFont.GetSize
 00486D45    mov         edx,eax
 00486D47    mov         eax,dword ptr [ebp-4]
 00486D4A    call        TFont.SetSize
 00486D4F    xor         eax,eax
 00486D51    pop         edx
 00486D52    pop         ecx
 00486D53    pop         ecx
 00486D54    mov         dword ptr fs:[eax],edx
 00486D57    push        486D6C
 00486D5C    mov         eax,dword ptr [ebp-8]
 00486D5F    call        004868F4
 00486D64    ret
>00486D65    jmp         @HandleFinally
>00486D6A    jmp         00486D5C
 00486D6C    xor         eax,eax
 00486D6E    pop         edx
 00486D6F    pop         ecx
 00486D70    pop         ecx
 00486D71    mov         dword ptr fs:[eax],edx
 00486D74    push        486D94
 00486D79    mov         eax,dword ptr [ebp-4]
 00486D7C    call        004868F4
 00486D81    ret
>00486D82    jmp         @HandleFinally
>00486D87    jmp         00486D79
 00486D89    mov         edx,dword ptr [ebp-8]
 00486D8C    mov         eax,dword ptr [ebp-4]
 00486D8F    call        004790A8
 00486D94    pop         ecx
 00486D95    pop         ecx
 00486D96    pop         ebp
 00486D97    ret
end;*}

//00486D98
{*procedure sub_00486D98(?:TFont; ?:?);
begin
 00486D98    push        ebp
 00486D99    mov         ebp,esp
 00486D9B    add         esp,0FFFFFFF8
 00486D9E    push        esi
 00486D9F    push        edi
 00486DA0    mov         dword ptr [ebp-8],edx
 00486DA3    mov         dword ptr [ebp-4],eax
 00486DA6    mov         eax,dword ptr [ebp-4]
 00486DA9    mov         eax,dword ptr [eax+10]
 00486DAC    mov         edx,dword ptr [ebp-8]
 00486DAF    lea         esi,[eax+10]
 00486DB2    mov         edi,edx
 00486DB4    mov         ecx,0B
 00486DB9    rep movs    dword ptr [edi],dword ptr [esi]
 00486DBB    mov         eax,dword ptr [ebp-8]
 00486DBE    xor         edx,edx
 00486DC0    mov         dword ptr [eax],edx
 00486DC2    pop         edi
 00486DC3    pop         esi
 00486DC4    pop         ecx
 00486DC5    pop         ecx
 00486DC6    pop         ebp
 00486DC7    ret
end;*}

//00486DC8
{*procedure sub_00486DC8(?:TFont; ?:?);
begin
 00486DC8    push        ebp
 00486DC9    mov         ebp,esp
 00486DCB    add         esp,0FFFFFFF8
 00486DCE    mov         dword ptr [ebp-8],edx
 00486DD1    mov         dword ptr [ebp-4],eax
 00486DD4    mov         eax,dword ptr [ebp-4]
 00486DD7    call        004868D4
 00486DDC    xor         eax,eax
 00486DDE    push        ebp
 00486DDF    push        486E10
 00486DE4    push        dword ptr fs:[eax]
 00486DE7    mov         dword ptr fs:[eax],esp
 00486DEA    mov         ecx,dword ptr [ebp-8]
 00486DED    mov         edx,dword ptr [ebp-4]
 00486DF0    mov         eax,[0055DB5C];gvar_0055DB5C
 00486DF5    call        004861A4
 00486DFA    xor         eax,eax
 00486DFC    pop         edx
 00486DFD    pop         ecx
 00486DFE    pop         ecx
 00486DFF    mov         dword ptr fs:[eax],edx
 00486E02    push        486E17
 00486E07    mov         eax,dword ptr [ebp-4]
 00486E0A    call        004868F4
 00486E0F    ret
>00486E10    jmp         @HandleFinally
>00486E15    jmp         00486E07
 00486E17    pop         ecx
 00486E18    pop         ecx
 00486E19    pop         ebp
 00486E1A    ret
end;*}

//00486E1C
procedure TFont.SetColor(Value:TColor);
begin
{*
 00486E1C    push        ebp
 00486E1D    mov         ebp,esp
 00486E1F    add         esp,0FFFFFFF8
 00486E22    push        esi
 00486E23    mov         dword ptr [ebp-8],edx
 00486E26    mov         dword ptr [ebp-4],eax
 00486E29    mov         eax,dword ptr [ebp-4]
 00486E2C    mov         eax,dword ptr [eax+18]
 00486E2F    cmp         eax,dword ptr [ebp-8]
>00486E32    je          00486E49
 00486E34    mov         eax,dword ptr [ebp-8]
 00486E37    mov         edx,dword ptr [ebp-4]
 00486E3A    mov         dword ptr [edx+18],eax
 00486E3D    mov         eax,dword ptr [ebp-4]
 00486E40    mov         si,0FFFD
 00486E44    call        @CallDynaInst
 00486E49    pop         esi
 00486E4A    pop         ecx
 00486E4B    pop         ecx
 00486E4C    pop         ebp
 00486E4D    ret
*}
end;

//00486E50
function TFont.GetHandle:HFONT;
begin
{*
 00486E50    push        ebp
 00486E51    mov         ebp,esp
 00486E53    add         esp,0FFFFFFAC
 00486E56    xor         edx,edx
 00486E58    mov         dword ptr [ebp-54],edx
 00486E5B    mov         dword ptr [ebp-50],edx
 00486E5E    mov         dword ptr [ebp-4C],edx
 00486E61    mov         dword ptr [ebp-4],eax
 00486E64    xor         eax,eax
 00486E66    push        ebp
 00486E67    push        486FE0
 00486E6C    push        dword ptr fs:[eax]
 00486E6F    mov         dword ptr fs:[eax],esp
 00486E72    mov         eax,dword ptr [ebp-4]
 00486E75    mov         eax,dword ptr [eax+10]
 00486E78    mov         dword ptr [ebp-0C],eax
 00486E7B    mov         eax,dword ptr [ebp-0C]
 00486E7E    cmp         dword ptr [eax+8],0
>00486E82    jne         00486FBC
 00486E88    mov         eax,[0055DB5C];gvar_0055DB5C
 00486E8D    call        00485FA4
 00486E92    xor         eax,eax
 00486E94    push        ebp
 00486E95    push        486FB5
 00486E9A    push        dword ptr fs:[eax]
 00486E9D    mov         dword ptr fs:[eax],esp
 00486EA0    mov         eax,dword ptr [ebp-0C]
 00486EA3    cmp         dword ptr [eax+8],0
>00486EA7    jne         00486F9D
 00486EAD    mov         eax,dword ptr [ebp-0C]
 00486EB0    mov         eax,dword ptr [eax+14]
 00486EB3    mov         dword ptr [ebp-48],eax
 00486EB6    xor         eax,eax
 00486EB8    mov         dword ptr [ebp-44],eax
 00486EBB    xor         eax,eax
 00486EBD    mov         dword ptr [ebp-40],eax
 00486EC0    xor         eax,eax
 00486EC2    mov         dword ptr [ebp-3C],eax
 00486EC5    mov         eax,dword ptr [ebp-0C]
 00486EC8    test        byte ptr [eax+19],1
>00486ECC    je          00486ED7
 00486ECE    mov         dword ptr [ebp-38],2BC
>00486ED5    jmp         00486EDE
 00486ED7    mov         dword ptr [ebp-38],190
 00486EDE    mov         eax,dword ptr [ebp-0C]
 00486EE1    test        byte ptr [eax+19],2
 00486EE5    setne       al
 00486EE8    mov         byte ptr [ebp-34],al
 00486EEB    mov         eax,dword ptr [ebp-0C]
 00486EEE    test        byte ptr [eax+19],4
 00486EF2    setne       al
 00486EF5    mov         byte ptr [ebp-33],al
 00486EF8    mov         eax,dword ptr [ebp-0C]
 00486EFB    test        byte ptr [eax+19],8
 00486EFF    setne       al
 00486F02    mov         byte ptr [ebp-32],al
 00486F05    mov         eax,dword ptr [ebp-0C]
 00486F08    mov         al,byte ptr [eax+1A]
 00486F0B    mov         byte ptr [ebp-31],al
 00486F0E    lea         eax,[ebp-4C]
 00486F11    mov         edx,dword ptr [ebp-0C]
 00486F14    add         edx,1B
 00486F17    call        @LStrFromString
 00486F1C    mov         eax,dword ptr [ebp-4C]
 00486F1F    mov         edx,486FF8;'Default'
 00486F24    call        00466420
 00486F29    test        eax,eax
>00486F2B    jne         00486F47
 00486F2D    lea         eax,[ebp-50]
 00486F30    mov         edx,540DDB
 00486F35    call        @LStrFromString
 00486F3A    mov         edx,dword ptr [ebp-50]
 00486F3D    lea         eax,[ebp-2C]
 00486F40    call        004672D8
>00486F45    jmp         00486F60
 00486F47    lea         eax,[ebp-54]
 00486F4A    mov         edx,dword ptr [ebp-0C]
 00486F4D    add         edx,1B
 00486F50    call        @LStrFromString
 00486F55    mov         edx,dword ptr [ebp-54]
 00486F58    lea         eax,[ebp-2C]
 00486F5B    call        004672D8
 00486F60    mov         byte ptr [ebp-2E],0
 00486F64    mov         byte ptr [ebp-30],0
 00486F68    mov         byte ptr [ebp-2F],0
 00486F6C    mov         eax,dword ptr [ebp-4]
 00486F6F    call        TFont.GetPitch
 00486F74    dec         al
>00486F76    je          00486F7E
 00486F78    dec         al
>00486F7A    je          00486F84
>00486F7C    jmp         00486F8A
 00486F7E    mov         byte ptr [ebp-2D],2
>00486F82    jmp         00486F8E
 00486F84    mov         byte ptr [ebp-2D],1
>00486F88    jmp         00486F8E
 00486F8A    mov         byte ptr [ebp-2D],0
 00486F8E    lea         eax,[ebp-48]
 00486F91    push        eax
 00486F92    call        gdi32.CreateFontIndirectA
 00486F97    mov         edx,dword ptr [ebp-0C]
 00486F9A    mov         dword ptr [edx+8],eax
 00486F9D    xor         eax,eax
 00486F9F    pop         edx
 00486FA0    pop         ecx
 00486FA1    pop         ecx
 00486FA2    mov         dword ptr fs:[eax],edx
 00486FA5    push        486FBC
 00486FAA    mov         eax,[0055DB5C];gvar_0055DB5C
 00486FAF    call        00485FBC
 00486FB4    ret
>00486FB5    jmp         @HandleFinally
>00486FBA    jmp         00486FAA
 00486FBC    mov         eax,dword ptr [ebp-0C]
 00486FBF    mov         eax,dword ptr [eax+8]
 00486FC2    mov         dword ptr [ebp-8],eax
 00486FC5    xor         eax,eax
 00486FC7    pop         edx
 00486FC8    pop         ecx
 00486FC9    pop         ecx
 00486FCA    mov         dword ptr fs:[eax],edx
 00486FCD    push        486FE7
 00486FD2    lea         eax,[ebp-54]
 00486FD5    mov         edx,3
 00486FDA    call        @LStrArrayClr
 00486FDF    ret
>00486FE0    jmp         @HandleFinally
>00486FE5    jmp         00486FD2
 00486FE7    mov         eax,dword ptr [ebp-8]
 00486FEA    mov         esp,ebp
 00486FEC    pop         ebp
 00486FED    ret
*}
end;

//00487000
procedure sub_00487000(?:TFont; ?:HFONT);
begin
{*
 00487000    push        ebp
 00487001    mov         ebp,esp
 00487003    add         esp,0FFFFFFCC
 00487006    mov         dword ptr [ebp-8],edx
 00487009    mov         dword ptr [ebp-4],eax
 0048700C    lea         edx,[ebp-34]
 0048700F    mov         eax,dword ptr [ebp-8]
 00487012    call        00486B18
 00487017    lea         edx,[ebp-34]
 0048701A    mov         eax,dword ptr [ebp-4]
 0048701D    call        00486DC8
 00487022    mov         esp,ebp
 00487024    pop         ebp
 00487025    ret
*}
end;

//00487028
{*function TFont.GetHeight:?;
begin
 00487028    push        ebp
 00487029    mov         ebp,esp
 0048702B    add         esp,0FFFFFFF8
 0048702E    mov         dword ptr [ebp-4],eax
 00487031    mov         eax,dword ptr [ebp-4]
 00487034    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 00487037    mov         eax,dword ptr [eax+14]
 0048703A    mov         dword ptr [ebp-8],eax
 0048703D    mov         eax,dword ptr [ebp-8]
 00487040    pop         ecx
 00487041    pop         ecx
 00487042    pop         ebp
 00487043    ret
end;*}

//00487044
procedure TFont.SetHeight(Value:Integer);
begin
{*
 00487044    push        ebp
 00487045    mov         ebp,esp
 00487047    add         esp,0FFFFFFCC
 0048704A    mov         dword ptr [ebp-8],edx
 0048704D    mov         dword ptr [ebp-4],eax
 00487050    lea         edx,[ebp-34]
 00487053    mov         eax,dword ptr [ebp-4]
 00487056    call        00486D98
 0048705B    mov         eax,dword ptr [ebp-8]
 0048705E    mov         dword ptr [ebp-30],eax
 00487061    lea         edx,[ebp-34]
 00487064    mov         eax,dword ptr [ebp-4]
 00487067    call        00486DC8
 0048706C    mov         esp,ebp
 0048706E    pop         ebp
 0048706F    ret
*}
end;

//00487070
{*procedure TFont.GetName(?:?);
begin
 00487070    push        ebp
 00487071    mov         ebp,esp
 00487073    add         esp,0FFFFFFF8
 00487076    mov         dword ptr [ebp-8],edx
 00487079    mov         dword ptr [ebp-4],eax
 0048707C    mov         eax,dword ptr [ebp-8]
 0048707F    mov         edx,dword ptr [ebp-4]
 00487082    mov         edx,dword ptr [edx+10];TFont.FResource:PResource
 00487085    add         edx,1B
 00487088    call        @LStrFromString
 0048708D    pop         ecx
 0048708E    pop         ecx
 0048708F    pop         ebp
 00487090    ret
end;*}

//00487094
procedure TFont.SetName(Value:TFontName);
begin
{*
 00487094    push        ebp
 00487095    mov         ebp,esp
 00487097    add         esp,0FFFFFECC
 0048709D    mov         dword ptr [ebp-8],edx
 004870A0    mov         dword ptr [ebp-4],eax
 004870A3    cmp         dword ptr [ebp-8],0
>004870A7    je          004870F1
 004870A9    lea         edx,[ebp-34]
 004870AC    mov         eax,dword ptr [ebp-4]
 004870AF    call        00486D98
 004870B4    lea         eax,[ebp-29]
 004870B7    xor         ecx,ecx
 004870B9    mov         edx,20
 004870BE    call        @FillChar
 004870C3    lea         eax,[ebp-134]
 004870C9    mov         edx,dword ptr [ebp-8]
 004870CC    mov         ecx,0FF
 004870D1    call        @LStrToString
 004870D6    lea         edx,[ebp-134]
 004870DC    lea         eax,[ebp-29]
 004870DF    mov         cl,1F
 004870E1    call        @PStrNCpy
 004870E6    lea         edx,[ebp-34]
 004870E9    mov         eax,dword ptr [ebp-4]
 004870EC    call        00486DC8
 004870F1    mov         esp,ebp
 004870F3    pop         ebp
 004870F4    ret
*}
end;

//004870F8
{*function TFont.GetSize:?;
begin
 004870F8    push        ebp
 004870F9    mov         ebp,esp
 004870FB    add         esp,0FFFFFFF8
 004870FE    mov         dword ptr [ebp-4],eax
 00487101    mov         eax,dword ptr [ebp-4]
 00487104    mov         eax,dword ptr [eax+1C];TFont.FPixelsPerInch:Integer
 00487107    push        eax
 00487108    push        48
 0048710A    mov         eax,dword ptr [ebp-4]
 0048710D    call        TFont.GetHeight
 00487112    push        eax
 00487113    call        kernel32.MulDiv
 00487118    neg         eax
 0048711A    mov         dword ptr [ebp-8],eax
 0048711D    mov         eax,dword ptr [ebp-8]
 00487120    pop         ecx
 00487121    pop         ecx
 00487122    pop         ebp
 00487123    ret
end;*}

//00487124
procedure TFont.SetSize(Value:Integer);
begin
{*
 00487124    push        ebp
 00487125    mov         ebp,esp
 00487127    add         esp,0FFFFFFF8
 0048712A    mov         dword ptr [ebp-8],edx
 0048712D    mov         dword ptr [ebp-4],eax
 00487130    push        48
 00487132    mov         eax,dword ptr [ebp-4]
 00487135    mov         eax,dword ptr [eax+1C];TFont.FPixelsPerInch:Integer
 00487138    push        eax
 00487139    mov         eax,dword ptr [ebp-8]
 0048713C    push        eax
 0048713D    call        kernel32.MulDiv
 00487142    mov         edx,eax
 00487144    neg         edx
 00487146    mov         eax,dword ptr [ebp-4]
 00487149    call        TFont.SetHeight
 0048714E    pop         ecx
 0048714F    pop         ecx
 00487150    pop         ebp
 00487151    ret
*}
end;

//00487154
{*function TFont.GetStyle:?;
begin
 00487154    push        ebp
 00487155    mov         ebp,esp
 00487157    add         esp,0FFFFFFF8
 0048715A    mov         dword ptr [ebp-4],eax
 0048715D    mov         eax,dword ptr [ebp-4]
 00487160    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 00487163    mov         al,byte ptr [eax+19]
 00487166    mov         byte ptr [ebp-5],al
 00487169    mov         al,byte ptr [ebp-5]
 0048716C    pop         ecx
 0048716D    pop         ecx
 0048716E    pop         ebp
 0048716F    ret
end;*}

//00487170
procedure TFont.SetStyle(Value:TFontStyles);
begin
{*
 00487170    push        ebp
 00487171    mov         ebp,esp
 00487173    add         esp,0FFFFFFCC
 00487176    mov         byte ptr [ebp-5],dl
 00487179    mov         dword ptr [ebp-4],eax
 0048717C    lea         edx,[ebp-34]
 0048717F    mov         eax,dword ptr [ebp-4]
 00487182    call        00486D98
 00487187    mov         al,byte ptr [ebp-5]
 0048718A    mov         byte ptr [ebp-2B],al
 0048718D    lea         edx,[ebp-34]
 00487190    mov         eax,dword ptr [ebp-4]
 00487193    call        00486DC8
 00487198    mov         esp,ebp
 0048719A    pop         ebp
 0048719B    ret
*}
end;

//0048719C
{*function TFont.GetPitch:?;
begin
 0048719C    push        ebp
 0048719D    mov         ebp,esp
 0048719F    add         esp,0FFFFFFF8
 004871A2    mov         dword ptr [ebp-4],eax
 004871A5    mov         eax,dword ptr [ebp-4]
 004871A8    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 004871AB    mov         al,byte ptr [eax+18]
 004871AE    mov         byte ptr [ebp-5],al
 004871B1    mov         al,byte ptr [ebp-5]
 004871B4    pop         ecx
 004871B5    pop         ecx
 004871B6    pop         ebp
 004871B7    ret
end;*}

//004871B8
procedure TFont.SetPitch(Value:TFontPitch);
begin
{*
 004871B8    push        ebp
 004871B9    mov         ebp,esp
 004871BB    add         esp,0FFFFFFCC
 004871BE    mov         byte ptr [ebp-5],dl
 004871C1    mov         dword ptr [ebp-4],eax
 004871C4    lea         edx,[ebp-34]
 004871C7    mov         eax,dword ptr [ebp-4]
 004871CA    call        00486D98
 004871CF    mov         al,byte ptr [ebp-5]
 004871D2    mov         byte ptr [ebp-2C],al
 004871D5    lea         edx,[ebp-34]
 004871D8    mov         eax,dword ptr [ebp-4]
 004871DB    call        00486DC8
 004871E0    mov         esp,ebp
 004871E2    pop         ebp
 004871E3    ret
*}
end;

//004871E4
{*function TFont.GetCharset:?;
begin
 004871E4    push        ebp
 004871E5    mov         ebp,esp
 004871E7    add         esp,0FFFFFFF8
 004871EA    mov         dword ptr [ebp-4],eax
 004871ED    mov         eax,dword ptr [ebp-4]
 004871F0    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 004871F3    mov         al,byte ptr [eax+1A]
 004871F6    mov         byte ptr [ebp-5],al
 004871F9    mov         al,byte ptr [ebp-5]
 004871FC    pop         ecx
 004871FD    pop         ecx
 004871FE    pop         ebp
 004871FF    ret
end;*}

//00487200
procedure TFont.SetCharset(Value:TFontCharset);
begin
{*
 00487200    push        ebp
 00487201    mov         ebp,esp
 00487203    add         esp,0FFFFFFCC
 00487206    mov         byte ptr [ebp-5],dl
 00487209    mov         dword ptr [ebp-4],eax
 0048720C    lea         edx,[ebp-34]
 0048720F    mov         eax,dword ptr [ebp-4]
 00487212    call        00486D98
 00487217    mov         al,byte ptr [ebp-5]
 0048721A    mov         byte ptr [ebp-2A],al
 0048721D    lea         edx,[ebp-34]
 00487220    mov         eax,dword ptr [ebp-4]
 00487223    call        00486DC8
 00487228    mov         esp,ebp
 0048722A    pop         ebp
 0048722B    ret
*}
end;

//0048722C
constructor TPen.Create;
begin
{*
 0048722C    push        ebp
 0048722D    mov         ebp,esp
 0048722F    add         esp,0FFFFFFF8
 00487232    test        dl,dl
>00487234    je          0048723E
 00487236    add         esp,0FFFFFFF0
 00487239    call        @ClassCreate
 0048723E    mov         byte ptr [ebp-5],dl
 00487241    mov         dword ptr [ebp-4],eax
 00487244    mov         edx,541030
 00487249    mov         eax,[0055DB60];gvar_0055DB60
 0048724E    call        00485FD4
 00487253    mov         edx,dword ptr [ebp-4]
 00487256    mov         dword ptr [edx+10],eax
 00487259    mov         eax,dword ptr [ebp-4]
 0048725C    mov         byte ptr [eax+18],4
 00487260    mov         eax,dword ptr [ebp-4]
 00487263    cmp         byte ptr [ebp-5],0
>00487267    je          00487278
 00487269    call        @AfterConstruction
 0048726E    pop         dword ptr fs:[0]
 00487275    add         esp,0C
 00487278    mov         eax,dword ptr [ebp-4]
 0048727B    pop         ecx
 0048727C    pop         ecx
 0048727D    pop         ebp
 0048727E    ret
*}
end;

//00487280
destructor TPen.Destroy;
begin
{*
 00487280    push        ebp
 00487281    mov         ebp,esp
 00487283    add         esp,0FFFFFFF8
 00487286    call        @BeforeDestruction
 0048728B    mov         byte ptr [ebp-5],dl
 0048728E    mov         dword ptr [ebp-4],eax
 00487291    mov         eax,dword ptr [ebp-4]
 00487294    mov         edx,dword ptr [eax+10]
 00487297    mov         eax,[0055DB60];gvar_0055DB60
 0048729C    call        004860D8
 004872A1    cmp         byte ptr [ebp-5],0
>004872A5    jle         004872AF
 004872A7    mov         eax,dword ptr [ebp-4]
 004872AA    call        @ClassDestroy
 004872AF    pop         ecx
 004872B0    pop         ecx
 004872B1    pop         ebp
 004872B2    ret
*}
end;

//004872B4
{*procedure sub_004872B4(?:?);
begin
 004872B4    push        ebp
 004872B5    mov         ebp,esp
 004872B7    add         esp,0FFFFFFF8
 004872BA    mov         dword ptr [ebp-8],edx
 004872BD    mov         dword ptr [ebp-4],eax
 004872C0    mov         eax,dword ptr [ebp-8]
 004872C3    mov         edx,dword ptr ds:[485398];TPen
 004872C9    call        @IsClass
 004872CE    test        al,al
>004872D0    je          0048735D
 004872D6    mov         eax,dword ptr [ebp-4]
 004872D9    call        004868D4
 004872DE    xor         eax,eax
 004872E0    push        ebp
 004872E1    push        487356
 004872E6    push        dword ptr fs:[eax]
 004872E9    mov         dword ptr fs:[eax],esp
 004872EC    mov         eax,dword ptr [ebp-8]
 004872EF    call        004868D4
 004872F4    xor         eax,eax
 004872F6    push        ebp
 004872F7    push        487339
 004872FC    push        dword ptr fs:[eax]
 004872FF    mov         dword ptr fs:[eax],esp
 00487302    mov         eax,dword ptr [ebp-8]
 00487305    mov         ecx,dword ptr [eax+10]
 00487308    mov         edx,dword ptr [ebp-4]
 0048730B    mov         eax,[0055DB60];gvar_0055DB60
 00487310    call        00486228
 00487315    mov         eax,dword ptr [ebp-8]
 00487318    mov         dl,byte ptr [eax+18]
 0048731B    mov         eax,dword ptr [ebp-4]
 0048731E    call        TPen.SetMode
 00487323    xor         eax,eax
 00487325    pop         edx
 00487326    pop         ecx
 00487327    pop         ecx
 00487328    mov         dword ptr fs:[eax],edx
 0048732B    push        487340
 00487330    mov         eax,dword ptr [ebp-8]
 00487333    call        004868F4
 00487338    ret
>00487339    jmp         @HandleFinally
>0048733E    jmp         00487330
 00487340    xor         eax,eax
 00487342    pop         edx
 00487343    pop         ecx
 00487344    pop         ecx
 00487345    mov         dword ptr fs:[eax],edx
 00487348    push        487368
 0048734D    mov         eax,dword ptr [ebp-4]
 00487350    call        004868F4
 00487355    ret
>00487356    jmp         @HandleFinally
>0048735B    jmp         0048734D
 0048735D    mov         edx,dword ptr [ebp-8]
 00487360    mov         eax,dword ptr [ebp-4]
 00487363    call        004790A8
 00487368    pop         ecx
 00487369    pop         ecx
 0048736A    pop         ebp
 0048736B    ret
end;*}

//0048736C
{*procedure sub_0048736C(?:TPen; ?:?);
begin
 0048736C    push        ebp
 0048736D    mov         ebp,esp
 0048736F    add         esp,0FFFFFFF8
 00487372    push        esi
 00487373    push        edi
 00487374    mov         dword ptr [ebp-8],edx
 00487377    mov         dword ptr [ebp-4],eax
 0048737A    mov         eax,dword ptr [ebp-4]
 0048737D    mov         eax,dword ptr [eax+10]
 00487380    mov         edx,dword ptr [ebp-8]
 00487383    lea         esi,[eax+10]
 00487386    mov         edi,edx
 00487388    movs        dword ptr [edi],dword ptr [esi]
 00487389    movs        dword ptr [edi],dword ptr [esi]
 0048738A    movs        dword ptr [edi],dword ptr [esi]
 0048738B    movs        dword ptr [edi],dword ptr [esi]
 0048738C    mov         eax,dword ptr [ebp-8]
 0048738F    xor         edx,edx
 00487391    mov         dword ptr [eax],edx
 00487393    pop         edi
 00487394    pop         esi
 00487395    pop         ecx
 00487396    pop         ecx
 00487397    pop         ebp
 00487398    ret
end;*}

//0048739C
{*procedure sub_0048739C(?:TPen; ?:?);
begin
 0048739C    push        ebp
 0048739D    mov         ebp,esp
 0048739F    add         esp,0FFFFFFF8
 004873A2    mov         dword ptr [ebp-8],edx
 004873A5    mov         dword ptr [ebp-4],eax
 004873A8    mov         eax,dword ptr [ebp-4]
 004873AB    call        004868D4
 004873B0    xor         eax,eax
 004873B2    push        ebp
 004873B3    push        4873E4
 004873B8    push        dword ptr fs:[eax]
 004873BB    mov         dword ptr fs:[eax],esp
 004873BE    mov         ecx,dword ptr [ebp-8]
 004873C1    mov         edx,dword ptr [ebp-4]
 004873C4    mov         eax,[0055DB60];gvar_0055DB60
 004873C9    call        004861A4
 004873CE    xor         eax,eax
 004873D0    pop         edx
 004873D1    pop         ecx
 004873D2    pop         ecx
 004873D3    mov         dword ptr fs:[eax],edx
 004873D6    push        4873EB
 004873DB    mov         eax,dword ptr [ebp-4]
 004873DE    call        004868F4
 004873E3    ret
>004873E4    jmp         @HandleFinally
>004873E9    jmp         004873DB
 004873EB    pop         ecx
 004873EC    pop         ecx
 004873ED    pop         ebp
 004873EE    ret
end;*}

//004873F0
{*function TPen.GetColor:?;
begin
 004873F0    push        ebp
 004873F1    mov         ebp,esp
 004873F3    add         esp,0FFFFFFF8
 004873F6    mov         dword ptr [ebp-4],eax
 004873F9    mov         eax,dword ptr [ebp-4]
 004873FC    mov         eax,dword ptr [eax+10];TPen.FResource:PResource
 004873FF    mov         eax,dword ptr [eax+14]
 00487402    mov         dword ptr [ebp-8],eax
 00487405    mov         eax,dword ptr [ebp-8]
 00487408    pop         ecx
 00487409    pop         ecx
 0048740A    pop         ebp
 0048740B    ret
end;*}

//0048740C
procedure TPen.SetColor(Value:TColor);
begin
{*
 0048740C    push        ebp
 0048740D    mov         ebp,esp
 0048740F    add         esp,0FFFFFFE8
 00487412    mov         dword ptr [ebp-8],edx
 00487415    mov         dword ptr [ebp-4],eax
 00487418    lea         edx,[ebp-18]
 0048741B    mov         eax,dword ptr [ebp-4]
 0048741E    call        0048736C
 00487423    mov         eax,dword ptr [ebp-8]
 00487426    mov         dword ptr [ebp-14],eax
 00487429    lea         edx,[ebp-18]
 0048742C    mov         eax,dword ptr [ebp-4]
 0048742F    call        0048739C
 00487434    mov         esp,ebp
 00487436    pop         ebp
 00487437    ret
*}
end;

//00487438
{*function sub_00487438(?:?):?;
begin
 00487438    push        ebp
 00487439    mov         ebp,esp
 0048743B    add         esp,0FFFFFFE4
 0048743E    mov         dword ptr [ebp-4],eax
 00487441    mov         eax,dword ptr [ebp-4]
 00487444    mov         eax,dword ptr [eax+10]
 00487447    mov         dword ptr [ebp-0C],eax
 0048744A    mov         eax,dword ptr [ebp-0C]
 0048744D    cmp         dword ptr [eax+8],0
>00487451    jne         004874CB
 00487453    mov         eax,[0055DB60];gvar_0055DB60
 00487458    call        00485FA4
 0048745D    xor         eax,eax
 0048745F    push        ebp
 00487460    push        4874C4
 00487465    push        dword ptr fs:[eax]
 00487468    mov         dword ptr fs:[eax],esp
 0048746B    mov         eax,dword ptr [ebp-0C]
 0048746E    cmp         dword ptr [eax+8],0
>00487472    jne         004874AC
 00487474    mov         eax,dword ptr [ebp-0C]
 00487477    movzx       eax,byte ptr [eax+1C]
 0048747B    movzx       eax,word ptr [eax*2+541040]
 00487483    mov         dword ptr [ebp-1C],eax
 00487486    mov         eax,dword ptr [ebp-0C]
 00487489    mov         eax,dword ptr [eax+18]
 0048748C    mov         dword ptr [ebp-18],eax
 0048748F    mov         eax,dword ptr [ebp-0C]
 00487492    mov         eax,dword ptr [eax+14]
 00487495    call        00486830
 0048749A    mov         dword ptr [ebp-10],eax
 0048749D    lea         eax,[ebp-1C]
 004874A0    push        eax
 004874A1    call        gdi32.CreatePenIndirect
 004874A6    mov         edx,dword ptr [ebp-0C]
 004874A9    mov         dword ptr [edx+8],eax
 004874AC    xor         eax,eax
 004874AE    pop         edx
 004874AF    pop         ecx
 004874B0    pop         ecx
 004874B1    mov         dword ptr fs:[eax],edx
 004874B4    push        4874CB
 004874B9    mov         eax,[0055DB60];gvar_0055DB60
 004874BE    call        00485FBC
 004874C3    ret
>004874C4    jmp         @HandleFinally
>004874C9    jmp         004874B9
 004874CB    mov         eax,dword ptr [ebp-0C]
 004874CE    mov         eax,dword ptr [eax+8]
 004874D1    mov         dword ptr [ebp-8],eax
 004874D4    mov         eax,dword ptr [ebp-8]
 004874D7    mov         esp,ebp
 004874D9    pop         ebp
 004874DA    ret
end;*}

//004874DC
procedure TPen.SetMode(Value:TPenMode);
begin
{*
 004874DC    push        ebp
 004874DD    mov         ebp,esp
 004874DF    add         esp,0FFFFFFF8
 004874E2    push        esi
 004874E3    mov         byte ptr [ebp-5],dl
 004874E6    mov         dword ptr [ebp-4],eax
 004874E9    mov         eax,dword ptr [ebp-4]
 004874EC    mov         al,byte ptr [eax+18];TPen....Mode:TPenMode
 004874EF    cmp         al,byte ptr [ebp-5]
>004874F2    je          00487509
 004874F4    mov         al,byte ptr [ebp-5]
 004874F7    mov         edx,dword ptr [ebp-4]
 004874FA    mov         byte ptr [edx+18],al;TPen.....Mode:TPenMode
 004874FD    mov         eax,dword ptr [ebp-4]
 00487500    mov         si,0FFFD
 00487504    call        @CallDynaInst;TGraphicsObject.sub_004868B0
 00487509    pop         esi
 0048750A    pop         ecx
 0048750B    pop         ecx
 0048750C    pop         ebp
 0048750D    ret
*}
end;

//00487510
{*function TPen.GetStyle:?;
begin
 00487510    push        ebp
 00487511    mov         ebp,esp
 00487513    add         esp,0FFFFFFF8
 00487516    mov         dword ptr [ebp-4],eax
 00487519    mov         eax,dword ptr [ebp-4]
 0048751C    mov         eax,dword ptr [eax+10];TPen.FResource:PResource
 0048751F    mov         al,byte ptr [eax+1C]
 00487522    mov         byte ptr [ebp-5],al
 00487525    mov         al,byte ptr [ebp-5]
 00487528    pop         ecx
 00487529    pop         ecx
 0048752A    pop         ebp
 0048752B    ret
end;*}

//0048752C
procedure TPen.SetStyle(Value:TPenStyle);
begin
{*
 0048752C    push        ebp
 0048752D    mov         ebp,esp
 0048752F    add         esp,0FFFFFFE8
 00487532    mov         byte ptr [ebp-5],dl
 00487535    mov         dword ptr [ebp-4],eax
 00487538    lea         edx,[ebp-18]
 0048753B    mov         eax,dword ptr [ebp-4]
 0048753E    call        0048736C
 00487543    mov         al,byte ptr [ebp-5]
 00487546    mov         byte ptr [ebp-0C],al
 00487549    lea         edx,[ebp-18]
 0048754C    mov         eax,dword ptr [ebp-4]
 0048754F    call        0048739C
 00487554    mov         esp,ebp
 00487556    pop         ebp
 00487557    ret
*}
end;

//00487558
{*function TPen.GetWidth:?;
begin
 00487558    push        ebp
 00487559    mov         ebp,esp
 0048755B    add         esp,0FFFFFFF8
 0048755E    mov         dword ptr [ebp-4],eax
 00487561    mov         eax,dword ptr [ebp-4]
 00487564    mov         eax,dword ptr [eax+10];TPen.FResource:PResource
 00487567    mov         eax,dword ptr [eax+18]
 0048756A    mov         dword ptr [ebp-8],eax
 0048756D    mov         eax,dword ptr [ebp-8]
 00487570    pop         ecx
 00487571    pop         ecx
 00487572    pop         ebp
 00487573    ret
end;*}

//00487574
procedure TPen.SetWidth(Value:Integer);
begin
{*
 00487574    push        ebp
 00487575    mov         ebp,esp
 00487577    add         esp,0FFFFFFE8
 0048757A    mov         dword ptr [ebp-8],edx
 0048757D    mov         dword ptr [ebp-4],eax
 00487580    cmp         dword ptr [ebp-8],0
>00487584    jl          004875A2
 00487586    lea         edx,[ebp-18]
 00487589    mov         eax,dword ptr [ebp-4]
 0048758C    call        0048736C
 00487591    mov         eax,dword ptr [ebp-8]
 00487594    mov         dword ptr [ebp-10],eax
 00487597    lea         edx,[ebp-18]
 0048759A    mov         eax,dword ptr [ebp-4]
 0048759D    call        0048739C
 004875A2    mov         esp,ebp
 004875A4    pop         ebp
 004875A5    ret
*}
end;

//004875A8
constructor TBrush.Create;
begin
{*
 004875A8    push        ebp
 004875A9    mov         ebp,esp
 004875AB    add         esp,0FFFFFFF8
 004875AE    test        dl,dl
>004875B0    je          004875BA
 004875B2    add         esp,0FFFFFFF0
 004875B5    call        @ClassCreate
 004875BA    mov         byte ptr [ebp-5],dl
 004875BD    mov         dword ptr [ebp-4],eax
 004875C0    mov         edx,541050
 004875C5    mov         eax,[0055DB64];gvar_0055DB64
 004875CA    call        00485FD4
 004875CF    mov         edx,dword ptr [ebp-4]
 004875D2    mov         dword ptr [edx+10],eax
 004875D5    mov         eax,dword ptr [ebp-4]
 004875D8    cmp         byte ptr [ebp-5],0
>004875DC    je          004875ED
 004875DE    call        @AfterConstruction
 004875E3    pop         dword ptr fs:[0]
 004875EA    add         esp,0C
 004875ED    mov         eax,dword ptr [ebp-4]
 004875F0    pop         ecx
 004875F1    pop         ecx
 004875F2    pop         ebp
 004875F3    ret
*}
end;

//004875F4
destructor TBrush.Destroy;
begin
{*
 004875F4    push        ebp
 004875F5    mov         ebp,esp
 004875F7    add         esp,0FFFFFFF8
 004875FA    call        @BeforeDestruction
 004875FF    mov         byte ptr [ebp-5],dl
 00487602    mov         dword ptr [ebp-4],eax
 00487605    mov         eax,dword ptr [ebp-4]
 00487608    mov         edx,dword ptr [eax+10]
 0048760B    mov         eax,[0055DB64];gvar_0055DB64
 00487610    call        004860D8
 00487615    cmp         byte ptr [ebp-5],0
>00487619    jle         00487623
 0048761B    mov         eax,dword ptr [ebp-4]
 0048761E    call        @ClassDestroy
 00487623    pop         ecx
 00487624    pop         ecx
 00487625    pop         ebp
 00487626    ret
*}
end;

//00487628
{*procedure sub_00487628(?:?);
begin
 00487628    push        ebp
 00487629    mov         ebp,esp
 0048762B    add         esp,0FFFFFFF8
 0048762E    mov         dword ptr [ebp-8],edx
 00487631    mov         dword ptr [ebp-4],eax
 00487634    mov         eax,dword ptr [ebp-8]
 00487637    mov         edx,dword ptr ds:[485498];TBrush
 0048763D    call        @IsClass
 00487642    test        al,al
>00487644    je          004876BF
 00487646    mov         eax,dword ptr [ebp-4]
 00487649    call        004868D4
 0048764E    xor         eax,eax
 00487650    push        ebp
 00487651    push        4876B8
 00487656    push        dword ptr fs:[eax]
 00487659    mov         dword ptr fs:[eax],esp
 0048765C    mov         eax,dword ptr [ebp-8]
 0048765F    call        004868D4
 00487664    xor         eax,eax
 00487666    push        ebp
 00487667    push        48769B
 0048766C    push        dword ptr fs:[eax]
 0048766F    mov         dword ptr fs:[eax],esp
 00487672    mov         eax,dword ptr [ebp-8]
 00487675    mov         ecx,dword ptr [eax+10]
 00487678    mov         edx,dword ptr [ebp-4]
 0048767B    mov         eax,[0055DB64];gvar_0055DB64
 00487680    call        00486228
 00487685    xor         eax,eax
 00487687    pop         edx
 00487688    pop         ecx
 00487689    pop         ecx
 0048768A    mov         dword ptr fs:[eax],edx
 0048768D    push        4876A2
 00487692    mov         eax,dword ptr [ebp-8]
 00487695    call        004868F4
 0048769A    ret
>0048769B    jmp         @HandleFinally
>004876A0    jmp         00487692
 004876A2    xor         eax,eax
 004876A4    pop         edx
 004876A5    pop         ecx
 004876A6    pop         ecx
 004876A7    mov         dword ptr fs:[eax],edx
 004876AA    push        4876CA
 004876AF    mov         eax,dword ptr [ebp-4]
 004876B2    call        004868F4
 004876B7    ret
>004876B8    jmp         @HandleFinally
>004876BD    jmp         004876AF
 004876BF    mov         edx,dword ptr [ebp-8]
 004876C2    mov         eax,dword ptr [ebp-4]
 004876C5    call        004790A8
 004876CA    pop         ecx
 004876CB    pop         ecx
 004876CC    pop         ebp
 004876CD    ret
end;*}

//004876D0
{*procedure sub_004876D0(?:?; ?:?);
begin
 004876D0    push        ebp
 004876D1    mov         ebp,esp
 004876D3    add         esp,0FFFFFFF8
 004876D6    push        esi
 004876D7    push        edi
 004876D8    mov         dword ptr [ebp-8],edx
 004876DB    mov         dword ptr [ebp-4],eax
 004876DE    mov         eax,dword ptr [ebp-4]
 004876E1    mov         eax,dword ptr [eax+10]
 004876E4    mov         edx,dword ptr [ebp-8]
 004876E7    lea         esi,[eax+10]
 004876EA    mov         edi,edx
 004876EC    movs        dword ptr [edi],dword ptr [esi]
 004876ED    movs        dword ptr [edi],dword ptr [esi]
 004876EE    movs        dword ptr [edi],dword ptr [esi]
 004876EF    movs        dword ptr [edi],dword ptr [esi]
 004876F0    mov         eax,dword ptr [ebp-8]
 004876F3    xor         edx,edx
 004876F5    mov         dword ptr [eax],edx
 004876F7    mov         eax,dword ptr [ebp-8]
 004876FA    xor         edx,edx
 004876FC    mov         dword ptr [eax+8],edx
 004876FF    pop         edi
 00487700    pop         esi
 00487701    pop         ecx
 00487702    pop         ecx
 00487703    pop         ebp
 00487704    ret
end;*}

//00487708
{*procedure sub_00487708(?:?; ?:?);
begin
 00487708    push        ebp
 00487709    mov         ebp,esp
 0048770B    add         esp,0FFFFFFF8
 0048770E    mov         dword ptr [ebp-8],edx
 00487711    mov         dword ptr [ebp-4],eax
 00487714    mov         eax,dword ptr [ebp-4]
 00487717    call        004868D4
 0048771C    xor         eax,eax
 0048771E    push        ebp
 0048771F    push        487750
 00487724    push        dword ptr fs:[eax]
 00487727    mov         dword ptr fs:[eax],esp
 0048772A    mov         ecx,dword ptr [ebp-8]
 0048772D    mov         edx,dword ptr [ebp-4]
 00487730    mov         eax,[0055DB64];gvar_0055DB64
 00487735    call        004861A4
 0048773A    xor         eax,eax
 0048773C    pop         edx
 0048773D    pop         ecx
 0048773E    pop         ecx
 0048773F    mov         dword ptr fs:[eax],edx
 00487742    push        487757
 00487747    mov         eax,dword ptr [ebp-4]
 0048774A    call        004868F4
 0048774F    ret
>00487750    jmp         @HandleFinally
>00487755    jmp         00487747
 00487757    pop         ecx
 00487758    pop         ecx
 00487759    pop         ebp
 0048775A    ret
end;*}

//0048775C
{*procedure sub_0048775C(?:TBrush; ?:?);
begin
 0048775C    push        ebp
 0048775D    mov         ebp,esp
 0048775F    add         esp,0FFFFFFE8
 00487762    push        esi
 00487763    push        edi
 00487764    mov         dword ptr [ebp-8],edx
 00487767    mov         dword ptr [ebp-4],eax
 0048776A    mov         esi,541050
 0048776F    lea         edi,[ebp-18]
 00487772    movs        dword ptr [edi],dword ptr [esi]
 00487773    movs        dword ptr [edi],dword ptr [esi]
 00487774    movs        dword ptr [edi],dword ptr [esi]
 00487775    movs        dword ptr [edi],dword ptr [esi]
 00487776    mov         eax,dword ptr [ebp-8]
 00487779    mov         dword ptr [ebp-10],eax
 0048777C    lea         edx,[ebp-18]
 0048777F    mov         eax,dword ptr [ebp-4]
 00487782    call        00487708
 00487787    pop         edi
 00487788    pop         esi
 00487789    mov         esp,ebp
 0048778B    pop         ebp
 0048778C    ret
end;*}

//00487790
{*function TBrush.GetColor:?;
begin
 00487790    push        ebp
 00487791    mov         ebp,esp
 00487793    add         esp,0FFFFFFF8
 00487796    mov         dword ptr [ebp-4],eax
 00487799    mov         eax,dword ptr [ebp-4]
 0048779C    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 0048779F    mov         eax,dword ptr [eax+14]
 004877A2    mov         dword ptr [ebp-8],eax
 004877A5    mov         eax,dword ptr [ebp-8]
 004877A8    pop         ecx
 004877A9    pop         ecx
 004877AA    pop         ebp
 004877AB    ret
end;*}

//004877AC
procedure TBrush.SetColor(Value:TColor);
begin
{*
 004877AC    push        ebp
 004877AD    mov         ebp,esp
 004877AF    add         esp,0FFFFFFE8
 004877B2    mov         dword ptr [ebp-8],edx
 004877B5    mov         dword ptr [ebp-4],eax
 004877B8    lea         edx,[ebp-18]
 004877BB    mov         eax,dword ptr [ebp-4]
 004877BE    call        004876D0
 004877C3    mov         eax,dword ptr [ebp-8]
 004877C6    mov         dword ptr [ebp-14],eax
 004877C9    cmp         byte ptr [ebp-0C],1
>004877CD    jne         004877D3
 004877CF    mov         byte ptr [ebp-0C],0
 004877D3    lea         edx,[ebp-18]
 004877D6    mov         eax,dword ptr [ebp-4]
 004877D9    call        00487708
 004877DE    mov         esp,ebp
 004877E0    pop         ebp
 004877E1    ret
*}
end;

//004877E4
function TBrush.GetHandle:HBRUSH;
begin
{*
 004877E4    push        ebp
 004877E5    mov         ebp,esp
 004877E7    add         esp,0FFFFFFE8
 004877EA    mov         dword ptr [ebp-4],eax
 004877ED    mov         eax,dword ptr [ebp-4]
 004877F0    mov         eax,dword ptr [eax+10]
 004877F3    mov         dword ptr [ebp-0C],eax
 004877F6    mov         eax,dword ptr [ebp-0C]
 004877F9    cmp         dword ptr [eax+8],0
>004877FD    jne         004878C8
 00487803    mov         eax,[0055DB64];gvar_0055DB64
 00487808    call        00485FA4
 0048780D    xor         eax,eax
 0048780F    push        ebp
 00487810    push        4878C1
 00487815    push        dword ptr fs:[eax]
 00487818    mov         dword ptr fs:[eax],esp
 0048781B    mov         eax,dword ptr [ebp-0C]
 0048781E    cmp         dword ptr [eax+8],0
>00487822    jne         004878A9
 00487828    mov         eax,dword ptr [ebp-0C]
 0048782B    cmp         dword ptr [eax+18],0
>0048782F    je          00487855
 00487831    mov         dword ptr [ebp-18],3
 00487838    mov         eax,dword ptr [ebp-0C]
 0048783B    mov         eax,dword ptr [eax+18]
 0048783E    mov         dl,1
 00487840    mov         ecx,dword ptr [eax]
 00487842    call        dword ptr [ecx+6C]
 00487845    mov         eax,dword ptr [ebp-0C]
 00487848    mov         eax,dword ptr [eax+18]
 0048784B    mov         edx,dword ptr [eax]
 0048784D    call        dword ptr [edx+64]
 00487850    mov         dword ptr [ebp-10],eax
>00487853    jmp         0048788C
 00487855    xor         eax,eax
 00487857    mov         dword ptr [ebp-10],eax
 0048785A    mov         eax,dword ptr [ebp-0C]
 0048785D    mov         al,byte ptr [eax+1C]
 00487860    sub         al,1
>00487862    jb          00487868
>00487864    je          0048786F
>00487866    jmp         00487878
 00487868    xor         eax,eax
 0048786A    mov         dword ptr [ebp-18],eax
>0048786D    jmp         0048788C
 0048786F    mov         dword ptr [ebp-18],1
>00487876    jmp         0048788C
 00487878    mov         dword ptr [ebp-18],2
 0048787F    mov         eax,dword ptr [ebp-0C]
 00487882    movzx       eax,byte ptr [eax+1C]
 00487886    sub         eax,2
 00487889    mov         dword ptr [ebp-10],eax
 0048788C    mov         eax,dword ptr [ebp-0C]
 0048788F    mov         eax,dword ptr [eax+14]
 00487892    call        00486830
 00487897    mov         dword ptr [ebp-14],eax
 0048789A    lea         eax,[ebp-18]
 0048789D    push        eax
 0048789E    call        gdi32.CreateBrushIndirect
 004878A3    mov         edx,dword ptr [ebp-0C]
 004878A6    mov         dword ptr [edx+8],eax
 004878A9    xor         eax,eax
 004878AB    pop         edx
 004878AC    pop         ecx
 004878AD    pop         ecx
 004878AE    mov         dword ptr fs:[eax],edx
 004878B1    push        4878C8
 004878B6    mov         eax,[0055DB64];gvar_0055DB64
 004878BB    call        00485FBC
 004878C0    ret
>004878C1    jmp         @HandleFinally
>004878C6    jmp         004878B6
 004878C8    mov         eax,dword ptr [ebp-0C]
 004878CB    mov         eax,dword ptr [eax+8]
 004878CE    mov         dword ptr [ebp-8],eax
 004878D1    mov         eax,dword ptr [ebp-8]
 004878D4    mov         esp,ebp
 004878D6    pop         ebp
 004878D7    ret
*}
end;

//004878D8
{*function TBrush.GetStyle:?;
begin
 004878D8    push        ebp
 004878D9    mov         ebp,esp
 004878DB    add         esp,0FFFFFFF8
 004878DE    mov         dword ptr [ebp-4],eax
 004878E1    mov         eax,dword ptr [ebp-4]
 004878E4    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 004878E7    mov         al,byte ptr [eax+1C]
 004878EA    mov         byte ptr [ebp-5],al
 004878ED    mov         al,byte ptr [ebp-5]
 004878F0    pop         ecx
 004878F1    pop         ecx
 004878F2    pop         ebp
 004878F3    ret
end;*}

//004878F4
procedure TBrush.SetStyle(Value:TBrushStyle);
begin
{*
 004878F4    push        ebp
 004878F5    mov         ebp,esp
 004878F7    add         esp,0FFFFFFE8
 004878FA    mov         byte ptr [ebp-5],dl
 004878FD    mov         dword ptr [ebp-4],eax
 00487900    lea         edx,[ebp-18]
 00487903    mov         eax,dword ptr [ebp-4]
 00487906    call        004876D0
 0048790B    mov         al,byte ptr [ebp-5]
 0048790E    mov         byte ptr [ebp-0C],al
 00487911    cmp         byte ptr [ebp-0C],1
>00487915    jne         0048791E
 00487917    mov         dword ptr [ebp-14],0FFFFFF
 0048791E    lea         edx,[ebp-18]
 00487921    mov         eax,dword ptr [ebp-4]
 00487924    call        00487708
 00487929    mov         esp,ebp
 0048792B    pop         ebp
 0048792C    ret
*}
end;

//00487930
constructor TPenRecall.Create;
begin
{*
 00487930    push        ebp
 00487931    mov         ebp,esp
 00487933    add         esp,0FFFFFFF4
 00487936    test        dl,dl
>00487938    je          00487942
 0048793A    add         esp,0FFFFFFF0
 0048793D    call        @ClassCreate
 00487942    mov         dword ptr [ebp-0C],ecx
 00487945    mov         byte ptr [ebp-5],dl
 00487948    mov         dword ptr [ebp-4],eax
 0048794B    mov         eax,dword ptr [ebp-0C]
 0048794E    push        eax
 0048794F    mov         dl,1
 00487951    mov         eax,[00485398];TPen
 00487956    call        TPen.Create;TPen.Create
 0048795B    mov         ecx,eax
 0048795D    xor         edx,edx
 0048795F    mov         eax,dword ptr [ebp-4]
 00487962    call        004794B0
 00487967    mov         eax,dword ptr [ebp-4]
 0048796A    cmp         byte ptr [ebp-5],0
>0048796E    je          0048797F
 00487970    call        @AfterConstruction
 00487975    pop         dword ptr fs:[0]
 0048797C    add         esp,0C
 0048797F    mov         eax,dword ptr [ebp-4]
 00487982    mov         esp,ebp
 00487984    pop         ebp
 00487985    ret
*}
end;

//00487988
constructor TBrushRecall.Create;
begin
{*
 00487988    push        ebp
 00487989    mov         ebp,esp
 0048798B    add         esp,0FFFFFFF4
 0048798E    test        dl,dl
>00487990    je          0048799A
 00487992    add         esp,0FFFFFFF0
 00487995    call        @ClassCreate
 0048799A    mov         dword ptr [ebp-0C],ecx
 0048799D    mov         byte ptr [ebp-5],dl
 004879A0    mov         dword ptr [ebp-4],eax
 004879A3    mov         eax,dword ptr [ebp-0C]
 004879A6    push        eax
 004879A7    mov         dl,1
 004879A9    mov         eax,[00485498];TBrush
 004879AE    call        TBrush.Create;TBrush.Create
 004879B3    mov         ecx,eax
 004879B5    xor         edx,edx
 004879B7    mov         eax,dword ptr [ebp-4]
 004879BA    call        004794B0
 004879BF    mov         eax,dword ptr [ebp-4]
 004879C2    cmp         byte ptr [ebp-5],0
>004879C6    je          004879D7
 004879C8    call        @AfterConstruction
 004879CD    pop         dword ptr fs:[0]
 004879D4    add         esp,0C
 004879D7    mov         eax,dword ptr [ebp-4]
 004879DA    mov         esp,ebp
 004879DC    pop         ebp
 004879DD    ret
*}
end;

//004879E0
constructor TControlCanvas.Create;
begin
{*
 004879E0    push        ebp
 004879E1    mov         ebp,esp
 004879E3    add         esp,0FFFFFFF8
 004879E6    test        dl,dl
>004879E8    je          004879F2
 004879EA    add         esp,0FFFFFFF0
 004879ED    call        @ClassCreate
 004879F2    mov         byte ptr [ebp-5],dl
 004879F5    mov         dword ptr [ebp-4],eax
 004879F8    xor         edx,edx
 004879FA    mov         eax,dword ptr [ebp-4]
 004879FD    call        TObject.Create
 00487A02    mov         eax,dword ptr [ebp-4]
 00487A05    add         eax,38
 00487A08    push        eax
 00487A09    call        kernel32.InitializeCriticalSection
 00487A0E    mov         dl,1
 00487A10    mov         eax,[0048521C];TFont
 00487A15    call        TFont.Create;TFont.Create
 00487A1A    mov         edx,dword ptr [ebp-4]
 00487A1D    mov         dword ptr [edx+0C],eax
 00487A20    mov         eax,dword ptr [ebp-4]
 00487A23    mov         eax,dword ptr [eax+0C]
 00487A26    mov         edx,dword ptr [ebp-4]
 00487A29    mov         dword ptr [eax+0C],edx
 00487A2C    mov         dword ptr [eax+8],4887D8;sub_004887D8
 00487A33    mov         eax,dword ptr [ebp-4]
 00487A36    add         eax,38
 00487A39    mov         edx,dword ptr [ebp-4]
 00487A3C    mov         edx,dword ptr [edx+0C]
 00487A3F    mov         dword ptr [edx+14],eax
 00487A42    mov         dl,1
 00487A44    mov         eax,[00485398];TPen
 00487A49    call        TPen.Create;TPen.Create
 00487A4E    mov         edx,dword ptr [ebp-4]
 00487A51    mov         dword ptr [edx+10],eax
 00487A54    mov         eax,dword ptr [ebp-4]
 00487A57    mov         eax,dword ptr [eax+10]
 00487A5A    mov         edx,dword ptr [ebp-4]
 00487A5D    mov         dword ptr [eax+0C],edx
 00487A60    mov         dword ptr [eax+8],48880C;sub_0048880C
 00487A67    mov         eax,dword ptr [ebp-4]
 00487A6A    add         eax,38
 00487A6D    mov         edx,dword ptr [ebp-4]
 00487A70    mov         edx,dword ptr [edx+10]
 00487A73    mov         dword ptr [edx+14],eax
 00487A76    mov         dl,1
 00487A78    mov         eax,[00485498];TBrush
 00487A7D    call        TBrush.Create;TBrush.Create
 00487A82    mov         edx,dword ptr [ebp-4]
 00487A85    mov         dword ptr [edx+14],eax
 00487A88    mov         eax,dword ptr [ebp-4]
 00487A8B    mov         eax,dword ptr [eax+14]
 00487A8E    mov         edx,dword ptr [ebp-4]
 00487A91    mov         dword ptr [eax+0C],edx
 00487A94    mov         dword ptr [eax+8],488840;sub_00488840
 00487A9B    mov         eax,dword ptr [ebp-4]
 00487A9E    add         eax,38
 00487AA1    mov         edx,dword ptr [ebp-4]
 00487AA4    mov         edx,dword ptr [edx+14]
 00487AA7    mov         dword ptr [edx+14],eax
 00487AAA    mov         eax,dword ptr [ebp-4]
 00487AAD    mov         dword ptr [eax+20],0CC0020
 00487AB4    mov         eax,dword ptr [ebp-4]
 00487AB7    mov         dl,byte ptr ds:[487AEC];0x0 gvar_00487AEC
 00487ABD    mov         byte ptr [eax+8],dl
 00487AC0    mov         edx,dword ptr [ebp-4]
 00487AC3    mov         eax,[0055DB68];gvar_0055DB68
 00487AC8    call        00478CF4
 00487ACD    mov         eax,dword ptr [ebp-4]
 00487AD0    cmp         byte ptr [ebp-5],0
>00487AD4    je          00487AE5
 00487AD6    call        @AfterConstruction
 00487ADB    pop         dword ptr fs:[0]
 00487AE2    add         esp,0C
 00487AE5    mov         eax,dword ptr [ebp-4]
 00487AE8    pop         ecx
 00487AE9    pop         ecx
 00487AEA    pop         ebp
 00487AEB    ret
*}
end;

//00487AF0
destructor TCanvas.Destroy;
begin
{*
 00487AF0    push        ebp
 00487AF1    mov         ebp,esp
 00487AF3    add         esp,0FFFFFFF8
 00487AF6    call        @BeforeDestruction
 00487AFB    mov         byte ptr [ebp-5],dl
 00487AFE    mov         dword ptr [ebp-4],eax
 00487B01    mov         edx,dword ptr [ebp-4]
 00487B04    mov         eax,[0055DB68];gvar_0055DB68
 00487B09    call        00478DA8
 00487B0E    xor         edx,edx
 00487B10    mov         eax,dword ptr [ebp-4]
 00487B13    call        TCanvas.SetHandle
 00487B18    mov         eax,dword ptr [ebp-4]
 00487B1B    mov         eax,dword ptr [eax+0C]
 00487B1E    call        TObject.Free
 00487B23    mov         eax,dword ptr [ebp-4]
 00487B26    mov         eax,dword ptr [eax+10]
 00487B29    call        TObject.Free
 00487B2E    mov         eax,dword ptr [ebp-4]
 00487B31    mov         eax,dword ptr [eax+14]
 00487B34    call        TObject.Free
 00487B39    mov         eax,dword ptr [ebp-4]
 00487B3C    add         eax,38
 00487B3F    push        eax
 00487B40    call        kernel32.DeleteCriticalSection
 00487B45    mov         dl,byte ptr [ebp-5]
 00487B48    and         dl,0FC
 00487B4B    mov         eax,dword ptr [ebp-4]
 00487B4E    call        TPersistent.Destroy
 00487B53    cmp         byte ptr [ebp-5],0
>00487B57    jle         00487B61
 00487B59    mov         eax,dword ptr [ebp-4]
 00487B5C    call        @ClassDestroy
 00487B61    pop         ecx
 00487B62    pop         ecx
 00487B63    pop         ebp
 00487B64    ret
*}
end;

//00487B68
procedure TCanvas.CopyRect(const Dest:TRect; Canvas:TCanvas; const Source:TRect);
begin
{*
 00487B68    push        ebp
 00487B69    mov         ebp,esp
 00487B6B    add         esp,0FFFFFFF4
 00487B6E    mov         dword ptr [ebp-0C],ecx
 00487B71    mov         dword ptr [ebp-8],edx
 00487B74    mov         dword ptr [ebp-4],eax
 00487B77    mov         eax,dword ptr [ebp-4]
 00487B7A    mov         edx,dword ptr [eax]
 00487B7C    call        dword ptr [edx+10]
 00487B7F    mov         dl,byte ptr ds:[487C10]
 00487B85    mov         eax,dword ptr [ebp-4]
 00487B88    call        004885D8
 00487B8D    mov         dl,byte ptr ds:[487C14]
 00487B93    mov         eax,dword ptr [ebp-0C]
 00487B96    call        004885D8
 00487B9B    mov         eax,dword ptr [ebp-4]
 00487B9E    mov         eax,dword ptr [eax+20]
 00487BA1    push        eax
 00487BA2    mov         eax,dword ptr [ebp+8]
 00487BA5    mov         eax,dword ptr [eax+0C]
 00487BA8    mov         edx,dword ptr [ebp+8]
 00487BAB    sub         eax,dword ptr [edx+4]
 00487BAE    push        eax
 00487BAF    mov         eax,dword ptr [ebp+8]
 00487BB2    mov         eax,dword ptr [eax+8]
 00487BB5    mov         edx,dword ptr [ebp+8]
 00487BB8    sub         eax,dword ptr [edx]
 00487BBA    push        eax
 00487BBB    mov         eax,dword ptr [ebp+8]
 00487BBE    mov         eax,dword ptr [eax+4]
 00487BC1    push        eax
 00487BC2    mov         eax,dword ptr [ebp+8]
 00487BC5    mov         eax,dword ptr [eax]
 00487BC7    push        eax
 00487BC8    mov         eax,dword ptr [ebp-0C]
 00487BCB    mov         eax,dword ptr [eax+4]
 00487BCE    push        eax
 00487BCF    mov         eax,dword ptr [ebp-8]
 00487BD2    mov         eax,dword ptr [eax+0C]
 00487BD5    mov         edx,dword ptr [ebp-8]
 00487BD8    sub         eax,dword ptr [edx+4]
 00487BDB    push        eax
 00487BDC    mov         eax,dword ptr [ebp-8]
 00487BDF    mov         eax,dword ptr [eax+8]
 00487BE2    mov         edx,dword ptr [ebp-8]
 00487BE5    sub         eax,dword ptr [edx]
 00487BE7    push        eax
 00487BE8    mov         eax,dword ptr [ebp-8]
 00487BEB    mov         eax,dword ptr [eax+4]
 00487BEE    push        eax
 00487BEF    mov         eax,dword ptr [ebp-8]
 00487BF2    mov         eax,dword ptr [eax]
 00487BF4    push        eax
 00487BF5    mov         eax,dword ptr [ebp-4]
 00487BF8    mov         eax,dword ptr [eax+4]
 00487BFB    push        eax
 00487BFC    call        gdi32.StretchBlt
 00487C01    mov         eax,dword ptr [ebp-4]
 00487C04    mov         edx,dword ptr [eax]
 00487C06    call        dword ptr [edx+0C]
 00487C09    mov         esp,ebp
 00487C0B    pop         ebp
 00487C0C    ret         4
*}
end;

//00487C18
procedure TCanvas.Draw(X:Integer; Y:Integer; Graphic:TGraphic);
begin
{*
 00487C18    push        ebp
 00487C19    mov         ebp,esp
 00487C1B    add         esp,0FFFFFFE4
 00487C1E    push        ebx
 00487C1F    mov         dword ptr [ebp-0C],ecx
 00487C22    mov         dword ptr [ebp-8],edx
 00487C25    mov         dword ptr [ebp-4],eax
 00487C28    cmp         dword ptr [ebp+8],0
>00487C2C    je          00487CCE
 00487C32    mov         eax,dword ptr [ebp+8]
 00487C35    mov         edx,dword ptr [eax]
 00487C37    call        dword ptr [edx+1C]
 00487C3A    test        al,al
>00487C3C    jne         00487CCE
 00487C42    mov         eax,dword ptr [ebp-4]
 00487C45    mov         edx,dword ptr [eax]
 00487C47    call        dword ptr [edx+10]
 00487C4A    mov         dl,byte ptr ds:[487CD8]
 00487C50    mov         eax,dword ptr [ebp-4]
 00487C53    call        004885D8
 00487C58    mov         eax,dword ptr [ebp-4]
 00487C5B    mov         eax,dword ptr [eax+14]
 00487C5E    call        TBrush.GetColor
 00487C63    call        00486830
 00487C68    push        eax
 00487C69    mov         eax,dword ptr [ebp-4]
 00487C6C    mov         eax,dword ptr [eax+4]
 00487C6F    push        eax
 00487C70    call        gdi32.SetBkColor
 00487C75    mov         eax,dword ptr [ebp-4]
 00487C78    mov         eax,dword ptr [eax+0C]
 00487C7B    mov         eax,dword ptr [eax+18]
 00487C7E    call        00486830
 00487C83    push        eax
 00487C84    mov         eax,dword ptr [ebp-4]
 00487C87    mov         eax,dword ptr [eax+4]
 00487C8A    push        eax
 00487C8B    call        gdi32.SetTextColor
 00487C90    mov         eax,dword ptr [ebp+8]
 00487C93    mov         edx,dword ptr [eax]
 00487C95    call        dword ptr [edx+20]
 00487C98    add         eax,dword ptr [ebp-0C]
 00487C9B    push        eax
 00487C9C    lea         eax,[ebp-1C]
 00487C9F    push        eax
 00487CA0    mov         eax,dword ptr [ebp+8]
 00487CA3    mov         edx,dword ptr [eax]
 00487CA5    call        dword ptr [edx+2C]
 00487CA8    mov         ecx,eax
 00487CAA    add         ecx,dword ptr [ebp-8]
 00487CAD    mov         edx,dword ptr [ebp-0C]
 00487CB0    mov         eax,dword ptr [ebp-8]
 00487CB3    call        Rect
 00487CB8    lea         ecx,[ebp-1C]
 00487CBB    mov         edx,dword ptr [ebp-4]
 00487CBE    mov         eax,dword ptr [ebp+8]
 00487CC1    mov         ebx,dword ptr [eax]
 00487CC3    call        dword ptr [ebx+14]
 00487CC6    mov         eax,dword ptr [ebp-4]
 00487CC9    mov         edx,dword ptr [eax]
 00487CCB    call        dword ptr [edx+0C]
 00487CCE    pop         ebx
 00487CCF    mov         esp,ebp
 00487CD1    pop         ebp
 00487CD2    ret         4
*}
end;

//00487CDC
procedure TCanvas.Ellipse(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer);
begin
{*
 00487CDC    push        ebp
 00487CDD    mov         ebp,esp
 00487CDF    add         esp,0FFFFFFF4
 00487CE2    mov         dword ptr [ebp-0C],ecx
 00487CE5    mov         dword ptr [ebp-8],edx
 00487CE8    mov         dword ptr [ebp-4],eax
 00487CEB    mov         eax,dword ptr [ebp-4]
 00487CEE    mov         edx,dword ptr [eax]
 00487CF0    call        dword ptr [edx+10]
 00487CF3    mov         dl,byte ptr ds:[487D2C]
 00487CF9    mov         eax,dword ptr [ebp-4]
 00487CFC    call        004885D8
 00487D01    mov         eax,dword ptr [ebp+8]
 00487D04    push        eax
 00487D05    mov         eax,dword ptr [ebp+0C]
 00487D08    push        eax
 00487D09    mov         eax,dword ptr [ebp-0C]
 00487D0C    push        eax
 00487D0D    mov         eax,dword ptr [ebp-8]
 00487D10    push        eax
 00487D11    mov         eax,dword ptr [ebp-4]
 00487D14    mov         eax,dword ptr [eax+4]
 00487D17    push        eax
 00487D18    call        gdi32.Ellipse
 00487D1D    mov         eax,dword ptr [ebp-4]
 00487D20    mov         edx,dword ptr [eax]
 00487D22    call        dword ptr [edx+0C]
 00487D25    mov         esp,ebp
 00487D27    pop         ebp
 00487D28    ret         8
*}
end;

//00487D30
procedure TCanvas.FillRect(const Rect:TRect);
begin
{*
 00487D30    push        ebp
 00487D31    mov         ebp,esp
 00487D33    add         esp,0FFFFFFF8
 00487D36    mov         dword ptr [ebp-8],edx
 00487D39    mov         dword ptr [ebp-4],eax
 00487D3C    mov         eax,dword ptr [ebp-4]
 00487D3F    mov         edx,dword ptr [eax]
 00487D41    call        dword ptr [edx+10]
 00487D44    mov         dl,byte ptr ds:[487D7C]
 00487D4A    mov         eax,dword ptr [ebp-4]
 00487D4D    call        004885D8
 00487D52    mov         eax,dword ptr [ebp-4]
 00487D55    mov         eax,dword ptr [eax+14]
 00487D58    call        TBrush.GetHandle
 00487D5D    push        eax
 00487D5E    mov         eax,dword ptr [ebp-8]
 00487D61    push        eax
 00487D62    mov         eax,dword ptr [ebp-4]
 00487D65    mov         eax,dword ptr [eax+4]
 00487D68    push        eax
 00487D69    call        user32.FillRect
 00487D6E    mov         eax,dword ptr [ebp-4]
 00487D71    mov         edx,dword ptr [eax]
 00487D73    call        dword ptr [edx+0C]
 00487D76    pop         ecx
 00487D77    pop         ecx
 00487D78    pop         ebp
 00487D79    ret
*}
end;

//00487D80
procedure sub_00487D80(?:TCanvas; ?:TRect);
begin
{*
 00487D80    push        ebp
 00487D81    mov         ebp,esp
 00487D83    add         esp,0FFFFFFF8
 00487D86    mov         dword ptr [ebp-8],edx
 00487D89    mov         dword ptr [ebp-4],eax
 00487D8C    mov         eax,dword ptr [ebp-4]
 00487D8F    mov         edx,dword ptr [eax]
 00487D91    call        dword ptr [edx+10]
 00487D94    mov         dl,byte ptr ds:[487DCC];0x9 gvar_00487DCC
 00487D9A    mov         eax,dword ptr [ebp-4]
 00487D9D    call        004885D8
 00487DA2    mov         eax,dword ptr [ebp-4]
 00487DA5    mov         eax,dword ptr [eax+14]
 00487DA8    call        TBrush.GetHandle
 00487DAD    push        eax
 00487DAE    mov         eax,dword ptr [ebp-8]
 00487DB1    push        eax
 00487DB2    mov         eax,dword ptr [ebp-4]
 00487DB5    mov         eax,dword ptr [eax+4]
 00487DB8    push        eax
 00487DB9    call        user32.FrameRect
 00487DBE    mov         eax,dword ptr [ebp-4]
 00487DC1    mov         edx,dword ptr [eax]
 00487DC3    call        dword ptr [edx+0C]
 00487DC6    pop         ecx
 00487DC7    pop         ecx
 00487DC8    pop         ebp
 00487DC9    ret
*}
end;

//00487DD0
procedure TCanvas.LineTo(X:Integer; Y:Integer);
begin
{*
 00487DD0    push        ebp
 00487DD1    mov         ebp,esp
 00487DD3    add         esp,0FFFFFFF4
 00487DD6    mov         dword ptr [ebp-0C],ecx
 00487DD9    mov         dword ptr [ebp-8],edx
 00487DDC    mov         dword ptr [ebp-4],eax
 00487DDF    mov         eax,dword ptr [ebp-4]
 00487DE2    mov         edx,dword ptr [eax]
 00487DE4    call        dword ptr [edx+10]
 00487DE7    mov         dl,byte ptr ds:[487E18]
 00487DED    mov         eax,dword ptr [ebp-4]
 00487DF0    call        004885D8
 00487DF5    mov         eax,dword ptr [ebp-0C]
 00487DF8    push        eax
 00487DF9    mov         eax,dword ptr [ebp-8]
 00487DFC    push        eax
 00487DFD    mov         eax,dword ptr [ebp-4]
 00487E00    mov         eax,dword ptr [eax+4]
 00487E03    push        eax
 00487E04    call        gdi32.LineTo
 00487E09    mov         eax,dword ptr [ebp-4]
 00487E0C    mov         edx,dword ptr [eax]
 00487E0E    call        dword ptr [edx+0C]
 00487E11    mov         esp,ebp
 00487E13    pop         ebp
 00487E14    ret
*}
end;

//00487E1C
procedure TCanvas.Lock;
begin
{*
 00487E1C    push        ebp
 00487E1D    mov         ebp,esp
 00487E1F    push        ecx
 00487E20    mov         dword ptr [ebp-4],eax
 00487E23    push        55DB44
 00487E28    call        kernel32.EnterCriticalSection
 00487E2D    mov         eax,dword ptr [ebp-4]
 00487E30    inc         dword ptr [eax+50]
 00487E33    push        55DB44
 00487E38    call        kernel32.LeaveCriticalSection
 00487E3D    mov         eax,dword ptr [ebp-4]
 00487E40    add         eax,38
 00487E43    push        eax
 00487E44    call        kernel32.EnterCriticalSection
 00487E49    pop         ecx
 00487E4A    pop         ebp
 00487E4B    ret
*}
end;

//00487E4C
procedure TCanvas.MoveTo(X:Integer; Y:Integer);
begin
{*
 00487E4C    push        ebp
 00487E4D    mov         ebp,esp
 00487E4F    add         esp,0FFFFFFF4
 00487E52    mov         dword ptr [ebp-0C],ecx
 00487E55    mov         dword ptr [ebp-8],edx
 00487E58    mov         dword ptr [ebp-4],eax
 00487E5B    mov         dl,byte ptr ds:[487E84]
 00487E61    mov         eax,dword ptr [ebp-4]
 00487E64    call        004885D8
 00487E69    push        0
 00487E6B    mov         eax,dword ptr [ebp-0C]
 00487E6E    push        eax
 00487E6F    mov         eax,dword ptr [ebp-8]
 00487E72    push        eax
 00487E73    mov         eax,dword ptr [ebp-4]
 00487E76    mov         eax,dword ptr [eax+4]
 00487E79    push        eax
 00487E7A    call        gdi32.MoveToEx
 00487E7F    mov         esp,ebp
 00487E81    pop         ebp
 00487E82    ret
*}
end;

//00487E88
procedure TCanvas.Pie(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer);
begin
{*
 00487E88    push        ebp
 00487E89    mov         ebp,esp
 00487E8B    add         esp,0FFFFFFF4
 00487E8E    mov         dword ptr [ebp-0C],ecx
 00487E91    mov         dword ptr [ebp-8],edx
 00487E94    mov         dword ptr [ebp-4],eax
 00487E97    mov         eax,dword ptr [ebp-4]
 00487E9A    mov         edx,dword ptr [eax]
 00487E9C    call        dword ptr [edx+10]
 00487E9F    mov         dl,byte ptr ds:[487EE8]
 00487EA5    mov         eax,dword ptr [ebp-4]
 00487EA8    call        004885D8
 00487EAD    mov         eax,dword ptr [ebp+8]
 00487EB0    push        eax
 00487EB1    mov         eax,dword ptr [ebp+0C]
 00487EB4    push        eax
 00487EB5    mov         eax,dword ptr [ebp+10]
 00487EB8    push        eax
 00487EB9    mov         eax,dword ptr [ebp+14]
 00487EBC    push        eax
 00487EBD    mov         eax,dword ptr [ebp+18]
 00487EC0    push        eax
 00487EC1    mov         eax,dword ptr [ebp+1C]
 00487EC4    push        eax
 00487EC5    mov         eax,dword ptr [ebp-0C]
 00487EC8    push        eax
 00487EC9    mov         eax,dword ptr [ebp-8]
 00487ECC    push        eax
 00487ECD    mov         eax,dword ptr [ebp-4]
 00487ED0    mov         eax,dword ptr [eax+4]
 00487ED3    push        eax
 00487ED4    call        gdi32.Pie
 00487ED9    mov         eax,dword ptr [ebp-4]
 00487EDC    mov         edx,dword ptr [eax]
 00487EDE    call        dword ptr [edx+0C]
 00487EE1    mov         esp,ebp
 00487EE3    pop         ebp
 00487EE4    ret         18
*}
end;

//00487EEC
{*procedure sub_00487EEC(?:?; ?:void ; ?:?);
begin
 00487EEC    push        ebp
 00487EED    mov         ebp,esp
 00487EEF    add         esp,0FFFFFFF4
 00487EF2    mov         dword ptr [ebp-0C],ecx
 00487EF5    mov         dword ptr [ebp-8],edx
 00487EF8    mov         dword ptr [ebp-4],eax
 00487EFB    mov         eax,dword ptr [ebp-4]
 00487EFE    mov         edx,dword ptr [eax]
 00487F00    call        dword ptr [edx+10]
 00487F03    mov         dl,byte ptr ds:[487F34];0xD gvar_00487F34
 00487F09    mov         eax,dword ptr [ebp-4]
 00487F0C    call        004885D8
 00487F11    mov         eax,dword ptr [ebp-0C]
 00487F14    inc         eax
 00487F15    push        eax
 00487F16    mov         eax,dword ptr [ebp-8]
 00487F19    push        eax
 00487F1A    mov         eax,dword ptr [ebp-4]
 00487F1D    mov         eax,dword ptr [eax+4]
 00487F20    push        eax
 00487F21    call        gdi32.Polygon
 00487F26    mov         eax,dword ptr [ebp-4]
 00487F29    mov         edx,dword ptr [eax]
 00487F2B    call        dword ptr [edx+0C]
 00487F2E    mov         esp,ebp
 00487F30    pop         ebp
 00487F31    ret
end;*}

//00487F38
{*procedure sub_00487F38(?:?; ?:void ; ?:?);
begin
 00487F38    push        ebp
 00487F39    mov         ebp,esp
 00487F3B    add         esp,0FFFFFFF4
 00487F3E    mov         dword ptr [ebp-0C],ecx
 00487F41    mov         dword ptr [ebp-8],edx
 00487F44    mov         dword ptr [ebp-4],eax
 00487F47    mov         eax,dword ptr [ebp-4]
 00487F4A    mov         edx,dword ptr [eax]
 00487F4C    call        dword ptr [edx+10]
 00487F4F    mov         dl,byte ptr ds:[487F80];0xD gvar_00487F80
 00487F55    mov         eax,dword ptr [ebp-4]
 00487F58    call        004885D8
 00487F5D    mov         eax,dword ptr [ebp-0C]
 00487F60    inc         eax
 00487F61    push        eax
 00487F62    mov         eax,dword ptr [ebp-8]
 00487F65    push        eax
 00487F66    mov         eax,dword ptr [ebp-4]
 00487F69    mov         eax,dword ptr [eax+4]
 00487F6C    push        eax
 00487F6D    call        gdi32.Polyline
 00487F72    mov         eax,dword ptr [ebp-4]
 00487F75    mov         edx,dword ptr [eax]
 00487F77    call        dword ptr [edx+0C]
 00487F7A    mov         esp,ebp
 00487F7C    pop         ebp
 00487F7D    ret
end;*}

//00487F84
{*procedure sub_00487F84(?:TCanvas; ?:?; ?:?; ?:?; ?:?);
begin
 00487F84    push        ebp
 00487F85    mov         ebp,esp
 00487F87    add         esp,0FFFFFFF4
 00487F8A    mov         dword ptr [ebp-0C],ecx
 00487F8D    mov         dword ptr [ebp-8],edx
 00487F90    mov         dword ptr [ebp-4],eax
 00487F93    mov         eax,dword ptr [ebp-4]
 00487F96    mov         edx,dword ptr [eax]
 00487F98    call        dword ptr [edx+10]
 00487F9B    mov         dl,byte ptr ds:[487FD4];0xD gvar_00487FD4
 00487FA1    mov         eax,dword ptr [ebp-4]
 00487FA4    call        004885D8
 00487FA9    mov         eax,dword ptr [ebp+8]
 00487FAC    push        eax
 00487FAD    mov         eax,dword ptr [ebp+0C]
 00487FB0    push        eax
 00487FB1    mov         eax,dword ptr [ebp-0C]
 00487FB4    push        eax
 00487FB5    mov         eax,dword ptr [ebp-8]
 00487FB8    push        eax
 00487FB9    mov         eax,dword ptr [ebp-4]
 00487FBC    mov         eax,dword ptr [eax+4]
 00487FBF    push        eax
 00487FC0    call        gdi32.Rectangle
 00487FC5    mov         eax,dword ptr [ebp-4]
 00487FC8    mov         edx,dword ptr [eax]
 00487FCA    call        dword ptr [edx+0C]
 00487FCD    mov         esp,ebp
 00487FCF    pop         ebp
 00487FD0    ret         8
end;*}

//00487FD8
procedure sub_00487FD8(?:TCanvas; ?:TRect);
begin
{*
 00487FD8    push        ebp
 00487FD9    mov         ebp,esp
 00487FDB    add         esp,0FFFFFFF8
 00487FDE    mov         dword ptr [ebp-8],edx
 00487FE1    mov         dword ptr [ebp-4],eax
 00487FE4    mov         eax,dword ptr [ebp-8]
 00487FE7    mov         eax,dword ptr [eax+8]
 00487FEA    push        eax
 00487FEB    mov         eax,dword ptr [ebp-8]
 00487FEE    mov         eax,dword ptr [eax+0C]
 00487FF1    push        eax
 00487FF2    mov         ecx,dword ptr [ebp-8]
 00487FF5    mov         ecx,dword ptr [ecx+4]
 00487FF8    mov         edx,dword ptr [ebp-8]
 00487FFB    mov         edx,dword ptr [edx]
 00487FFD    mov         eax,dword ptr [ebp-4]
 00488000    call        00487F84
 00488005    pop         ecx
 00488006    pop         ecx
 00488007    pop         ebp
 00488008    ret
*}
end;

//0048800C
{*procedure sub_0048800C(?:TCanvas; ?:?; ?:TGraphic);
begin
 0048800C    push        ebp
 0048800D    mov         ebp,esp
 0048800F    add         esp,0FFFFFFF4
 00488012    push        ebx
 00488013    mov         dword ptr [ebp-0C],ecx
 00488016    mov         dword ptr [ebp-8],edx
 00488019    mov         dword ptr [ebp-4],eax
 0048801C    cmp         dword ptr [ebp-0C],0
>00488020    je          0048804E
 00488022    mov         eax,dword ptr [ebp-4]
 00488025    mov         edx,dword ptr [eax]
 00488027    call        dword ptr [edx+10]
 0048802A    mov         dl,byte ptr ds:[488054];0xF gvar_00488054
 00488030    mov         eax,dword ptr [ebp-4]
 00488033    call        004885D8
 00488038    mov         ecx,dword ptr [ebp-8]
 0048803B    mov         edx,dword ptr [ebp-4]
 0048803E    mov         eax,dword ptr [ebp-0C]
 00488041    mov         ebx,dword ptr [eax]
 00488043    call        dword ptr [ebx+14]
 00488046    mov         eax,dword ptr [ebp-4]
 00488049    mov         edx,dword ptr [eax]
 0048804B    call        dword ptr [edx+0C]
 0048804E    pop         ebx
 0048804F    mov         esp,ebp
 00488051    pop         ebp
 00488052    ret
end;*}

//00488058
{*function sub_00488058(?:?):?;
begin
 00488058    push        ebp
 00488059    mov         ebp,esp
 0048805B    add         esp,0FFFFFFF0
 0048805E    mov         dword ptr [ebp-4],eax
 00488061    mov         byte ptr [ebp-5],0
 00488065    mov         eax,dword ptr [ebp-4]
 00488068    test        byte ptr [eax+54],80
>0048806C    je          0048808A
 0048806E    lea         eax,[ebp-0D]
 00488071    push        eax
 00488072    mov         eax,dword ptr [ebp-4]
 00488075    call        TCanvas.GetHandle
 0048807A    push        eax
 0048807B    call        gdi32.GetWindowOrgEx
 00488080    cmp         dword ptr [ebp-0D],0
>00488084    je          0048808A
 00488086    mov         byte ptr [ebp-5],1
 0048808A    mov         al,byte ptr [ebp-5]
 0048808D    mov         esp,ebp
 0048808F    pop         ebp
 00488090    ret
end;*}

//00488094
{*procedure sub_00488094(?:TCanvas; ?:Longint; ?:?; ?:?);
begin
 00488094    push        ebp
 00488095    mov         ebp,esp
 00488097    add         esp,0FFFFFFF4
 0048809A    mov         dword ptr [ebp-0C],ecx
 0048809D    mov         dword ptr [ebp-8],edx
 004880A0    mov         dword ptr [ebp-4],eax
 004880A3    mov         eax,dword ptr [ebp-4]
 004880A6    mov         edx,dword ptr [eax]
 004880A8    call        dword ptr [edx+10]
 004880AB    mov         dl,byte ptr ds:[488130];0xB gvar_00488130
 004880B1    mov         eax,dword ptr [ebp-4]
 004880B4    call        004885D8
 004880B9    mov         eax,dword ptr [ebp-4]
 004880BC    call        00488058
 004880C1    cmp         al,1
>004880C3    jne         004880D4
 004880C5    mov         edx,dword ptr [ebp+8]
 004880C8    mov         eax,dword ptr [ebp-4]
 004880CB    call        TCanvas.TextWidth
 004880D0    inc         eax
 004880D1    add         dword ptr [ebp-8],eax
 004880D4    push        0
 004880D6    mov         eax,dword ptr [ebp+8]
 004880D9    call        @DynArrayLength
 004880DE    push        eax
 004880DF    mov         eax,dword ptr [ebp+8]
 004880E2    call        @LStrToPChar
 004880E7    push        eax
 004880E8    push        0
 004880EA    mov         eax,dword ptr [ebp-4]
 004880ED    mov         eax,dword ptr [eax+54]
 004880F0    push        eax
 004880F1    mov         eax,dword ptr [ebp-0C]
 004880F4    push        eax
 004880F5    mov         eax,dword ptr [ebp-8]
 004880F8    push        eax
 004880F9    mov         eax,dword ptr [ebp-4]
 004880FC    mov         eax,dword ptr [eax+4]
 004880FF    push        eax
 00488100    call        gdi32.ExtTextOutA
 00488105    mov         edx,dword ptr [ebp+8]
 00488108    mov         eax,dword ptr [ebp-4]
 0048810B    call        TCanvas.TextWidth
 00488110    mov         edx,eax
 00488112    add         edx,dword ptr [ebp-8]
 00488115    mov         ecx,dword ptr [ebp-0C]
 00488118    mov         eax,dword ptr [ebp-4]
 0048811B    call        TCanvas.MoveTo
 00488120    mov         eax,dword ptr [ebp-4]
 00488123    mov         edx,dword ptr [eax]
 00488125    call        dword ptr [edx+0C]
 00488128    mov         esp,ebp
 0048812A    pop         ebp
 0048812B    ret         4
end;*}

//00488134
procedure TCanvas.TextRect(Rect:TRect; X:Integer; Y:Integer; const Text:AnsiString);
begin
{*
 00488134    push        ebp
 00488135    mov         ebp,esp
 00488137    add         esp,0FFFFFFE4
 0048813A    push        esi
 0048813B    push        edi
 0048813C    mov         esi,edx
 0048813E    lea         edi,[ebp-1C]
 00488141    movs        dword ptr [edi],dword ptr [esi]
 00488142    movs        dword ptr [edi],dword ptr [esi]
 00488143    movs        dword ptr [edi],dword ptr [esi]
 00488144    movs        dword ptr [edi],dword ptr [esi]
 00488145    mov         dword ptr [ebp-8],ecx
 00488148    mov         dword ptr [ebp-4],eax
 0048814B    mov         eax,dword ptr [ebp-4]
 0048814E    mov         edx,dword ptr [eax]
 00488150    call        dword ptr [edx+10]
 00488153    mov         dl,byte ptr ds:[4881E4]
 00488159    mov         eax,dword ptr [ebp-4]
 0048815C    call        004885D8
 00488161    mov         eax,dword ptr [ebp-4]
 00488164    mov         eax,dword ptr [eax+54]
 00488167    or          eax,4
 0048816A    mov         dword ptr [ebp-0C],eax
 0048816D    mov         eax,dword ptr [ebp-4]
 00488170    mov         eax,dword ptr [eax+14]
 00488173    call        TBrush.GetStyle
 00488178    cmp         al,1
>0048817A    je          00488180
 0048817C    or          dword ptr [ebp-0C],2
 00488180    mov         eax,dword ptr [ebp-4]
 00488183    test        byte ptr [eax+54],80
>00488187    je          004881A4
 00488189    mov         eax,dword ptr [ebp-4]
 0048818C    call        00488058
 00488191    cmp         al,1
>00488193    jne         004881A4
 00488195    mov         edx,dword ptr [ebp+8]
 00488198    mov         eax,dword ptr [ebp-4]
 0048819B    call        TCanvas.TextWidth
 004881A0    inc         eax
 004881A1    add         dword ptr [ebp-8],eax
 004881A4    push        0
 004881A6    mov         eax,dword ptr [ebp+8]
 004881A9    call        @DynArrayLength
 004881AE    push        eax
 004881AF    mov         eax,dword ptr [ebp+8]
 004881B2    call        @LStrToPChar
 004881B7    push        eax
 004881B8    lea         eax,[ebp-1C]
 004881BB    push        eax
 004881BC    mov         eax,dword ptr [ebp-0C]
 004881BF    push        eax
 004881C0    mov         eax,dword ptr [ebp+0C]
 004881C3    push        eax
 004881C4    mov         eax,dword ptr [ebp-8]
 004881C7    push        eax
 004881C8    mov         eax,dword ptr [ebp-4]
 004881CB    mov         eax,dword ptr [eax+4]
 004881CE    push        eax
 004881CF    call        gdi32.ExtTextOutA
 004881D4    mov         eax,dword ptr [ebp-4]
 004881D7    mov         edx,dword ptr [eax]
 004881D9    call        dword ptr [edx+0C]
 004881DC    pop         edi
 004881DD    pop         esi
 004881DE    mov         esp,ebp
 004881E0    pop         ebp
 004881E1    ret         8
*}
end;

//004881E8
{*procedure sub_004881E8(?:?; ?:?; ?:?);
begin
 004881E8    push        ebp
 004881E9    mov         ebp,esp
 004881EB    add         esp,0FFFFFFF4
 004881EE    mov         dword ptr [ebp-0C],ecx
 004881F1    mov         dword ptr [ebp-8],edx
 004881F4    mov         dword ptr [ebp-4],eax
 004881F7    mov         dl,byte ptr ds:[48823C];0x3 gvar_0048823C
 004881FD    mov         eax,dword ptr [ebp-4]
 00488200    call        004885D8
 00488205    mov         eax,dword ptr [ebp-0C]
 00488208    xor         edx,edx
 0048820A    mov         dword ptr [eax],edx
 0048820C    mov         eax,dword ptr [ebp-0C]
 0048820F    xor         edx,edx
 00488211    mov         dword ptr [eax+4],edx
 00488214    mov         eax,dword ptr [ebp-0C]
 00488217    push        eax
 00488218    mov         eax,dword ptr [ebp-8]
 0048821B    call        @DynArrayLength
 00488220    push        eax
 00488221    mov         eax,dword ptr [ebp-8]
 00488224    call        @LStrToPChar
 00488229    push        eax
 0048822A    mov         eax,dword ptr [ebp-4]
 0048822D    mov         eax,dword ptr [eax+4]
 00488230    push        eax
 00488231    call        gdi32.GetTextExtentPoint32A
 00488236    mov         esp,ebp
 00488238    pop         ebp
 00488239    ret
end;*}

//00488240
function TCanvas.TextWidth(const Text:AnsiString):Integer;
begin
{*
 00488240    push        ebp
 00488241    mov         ebp,esp
 00488243    add         esp,0FFFFFFEC
 00488246    mov         dword ptr [ebp-8],edx
 00488249    mov         dword ptr [ebp-4],eax
 0048824C    lea         ecx,[ebp-14]
 0048824F    mov         edx,dword ptr [ebp-8]
 00488252    mov         eax,dword ptr [ebp-4]
 00488255    call        004881E8
 0048825A    mov         eax,dword ptr [ebp-14]
 0048825D    mov         dword ptr [ebp-0C],eax
 00488260    mov         eax,dword ptr [ebp-0C]
 00488263    mov         esp,ebp
 00488265    pop         ebp
 00488266    ret
*}
end;

//00488268
function TCanvas.TextHeight(const Text:AnsiString):Integer;
begin
{*
 00488268    push        ebp
 00488269    mov         ebp,esp
 0048826B    add         esp,0FFFFFFEC
 0048826E    mov         dword ptr [ebp-8],edx
 00488271    mov         dword ptr [ebp-4],eax
 00488274    lea         ecx,[ebp-14]
 00488277    mov         edx,dword ptr [ebp-8]
 0048827A    mov         eax,dword ptr [ebp-4]
 0048827D    call        004881E8
 00488282    mov         eax,dword ptr [ebp-10]
 00488285    mov         dword ptr [ebp-0C],eax
 00488288    mov         eax,dword ptr [ebp-0C]
 0048828B    mov         esp,ebp
 0048828D    pop         ebp
 0048828E    ret
*}
end;

//00488290
function TCanvas.TryLock:Boolean;
begin
{*
 00488290    push        ebp
 00488291    mov         ebp,esp
 00488293    add         esp,0FFFFFFF8
 00488296    mov         dword ptr [ebp-4],eax
 00488299    push        55DB44
 0048829E    call        kernel32.EnterCriticalSection
 004882A3    xor         eax,eax
 004882A5    push        ebp
 004882A6    push        4882E2
 004882AB    push        dword ptr fs:[eax]
 004882AE    mov         dword ptr fs:[eax],esp
 004882B1    mov         eax,dword ptr [ebp-4]
 004882B4    cmp         dword ptr [eax+50],0
 004882B8    sete        byte ptr [ebp-5]
 004882BC    cmp         byte ptr [ebp-5],0
>004882C0    je          004882CA
 004882C2    mov         eax,dword ptr [ebp-4]
 004882C5    call        TCanvas.Lock
 004882CA    xor         eax,eax
 004882CC    pop         edx
 004882CD    pop         ecx
 004882CE    pop         ecx
 004882CF    mov         dword ptr fs:[eax],edx
 004882D2    push        4882E9
 004882D7    push        55DB44
 004882DC    call        kernel32.LeaveCriticalSection
 004882E1    ret
>004882E2    jmp         @HandleFinally
>004882E7    jmp         004882D7
 004882E9    mov         al,byte ptr [ebp-5]
 004882EC    pop         ecx
 004882ED    pop         ecx
 004882EE    pop         ebp
 004882EF    ret
*}
end;

//004882F0
procedure TCanvas.Unlock;
begin
{*
 004882F0    push        ebp
 004882F1    mov         ebp,esp
 004882F3    push        ecx
 004882F4    mov         dword ptr [ebp-4],eax
 004882F7    mov         eax,dword ptr [ebp-4]
 004882FA    add         eax,38
 004882FD    push        eax
 004882FE    call        kernel32.LeaveCriticalSection
 00488303    push        55DB44
 00488308    call        kernel32.EnterCriticalSection
 0048830D    mov         eax,dword ptr [ebp-4]
 00488310    dec         dword ptr [eax+50]
 00488313    push        55DB44
 00488318    call        kernel32.LeaveCriticalSection
 0048831D    pop         ecx
 0048831E    pop         ebp
 0048831F    ret
*}
end;

//00488320
procedure TCanvas.SetFont(Value:TFont);
begin
{*
 00488320    push        ebp
 00488321    mov         ebp,esp
 00488323    add         esp,0FFFFFFF8
 00488326    mov         dword ptr [ebp-8],edx
 00488329    mov         dword ptr [ebp-4],eax
 0048832C    mov         edx,dword ptr [ebp-8]
 0048832F    mov         eax,dword ptr [ebp-4]
 00488332    mov         eax,dword ptr [eax+0C]
 00488335    mov         ecx,dword ptr [eax]
 00488337    call        dword ptr [ecx+8]
 0048833A    pop         ecx
 0048833B    pop         ecx
 0048833C    pop         ebp
 0048833D    ret
*}
end;

//00488340
procedure TCanvas.SetPen(Value:TPen);
begin
{*
 00488340    push        ebp
 00488341    mov         ebp,esp
 00488343    add         esp,0FFFFFFF8
 00488346    mov         dword ptr [ebp-8],edx
 00488349    mov         dword ptr [ebp-4],eax
 0048834C    mov         edx,dword ptr [ebp-8]
 0048834F    mov         eax,dword ptr [ebp-4]
 00488352    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 00488355    mov         ecx,dword ptr [eax]
 00488357    call        dword ptr [ecx+8];TPen.sub_004872B4
 0048835A    pop         ecx
 0048835B    pop         ecx
 0048835C    pop         ebp
 0048835D    ret
*}
end;

//00488360
procedure TCanvas.SetBrush(Value:TBrush);
begin
{*
 00488360    push        ebp
 00488361    mov         ebp,esp
 00488363    add         esp,0FFFFFFF8
 00488366    mov         dword ptr [ebp-8],edx
 00488369    mov         dword ptr [ebp-4],eax
 0048836C    mov         edx,dword ptr [ebp-8]
 0048836F    mov         eax,dword ptr [ebp-4]
 00488372    mov         eax,dword ptr [eax+14]
 00488375    mov         ecx,dword ptr [eax]
 00488377    call        dword ptr [ecx+8]
 0048837A    pop         ecx
 0048837B    pop         ecx
 0048837C    pop         ebp
 0048837D    ret
*}
end;

//00488380
{*procedure sub_00488380(?:?; ?:?);
begin
 00488380    push        ebp
 00488381    mov         ebp,esp
 00488383    add         esp,0FFFFFFF8
 00488386    mov         dword ptr [ebp-8],edx
 00488389    mov         dword ptr [ebp-4],eax
 0048838C    mov         dl,byte ptr ds:[4883B0];0x1 gvar_004883B0
 00488392    mov         eax,dword ptr [ebp-4]
 00488395    call        004885D8
 0048839A    mov         eax,dword ptr [ebp-8]
 0048839D    push        eax
 0048839E    mov         eax,dword ptr [ebp-4]
 004883A1    mov         eax,dword ptr [eax+4]
 004883A4    push        eax
 004883A5    call        gdi32.GetCurrentPositionEx
 004883AA    pop         ecx
 004883AB    pop         ecx
 004883AC    pop         ebp
 004883AD    ret
end;*}

//004883B4
{*procedure sub_004883B4(?:?; ?:?);
begin
 004883B4    push        ebp
 004883B5    mov         ebp,esp
 004883B7    add         esp,0FFFFFFF4
 004883BA    push        esi
 004883BB    push        edi
 004883BC    mov         esi,edx
 004883BE    lea         edi,[ebp-0C]
 004883C1    movs        dword ptr [edi],dword ptr [esi]
 004883C2    movs        dword ptr [edi],dword ptr [esi]
 004883C3    mov         dword ptr [ebp-4],eax
 004883C6    mov         ecx,dword ptr [ebp-8]
 004883C9    mov         edx,dword ptr [ebp-0C]
 004883CC    mov         eax,dword ptr [ebp-4]
 004883CF    call        TCanvas.MoveTo
 004883D4    pop         edi
 004883D5    pop         esi
 004883D6    mov         esp,ebp
 004883D8    pop         ebp
 004883D9    ret
end;*}

//004883DC
{*function sub_004883DC(?:TCanvas; ?:?; ?:?):?;
begin
 004883DC    push        ebp
 004883DD    mov         ebp,esp
 004883DF    add         esp,0FFFFFFF0
 004883E2    mov         dword ptr [ebp-0C],ecx
 004883E5    mov         dword ptr [ebp-8],edx
 004883E8    mov         dword ptr [ebp-4],eax
 004883EB    mov         dl,byte ptr ds:[488418];0x1 gvar_00488418
 004883F1    mov         eax,dword ptr [ebp-4]
 004883F4    call        004885D8
 004883F9    mov         eax,dword ptr [ebp-0C]
 004883FC    push        eax
 004883FD    mov         eax,dword ptr [ebp-8]
 00488400    push        eax
 00488401    mov         eax,dword ptr [ebp-4]
 00488404    mov         eax,dword ptr [eax+4]
 00488407    push        eax
 00488408    call        gdi32.GetPixel
 0048840D    mov         dword ptr [ebp-10],eax
 00488410    mov         eax,dword ptr [ebp-10]
 00488413    mov         esp,ebp
 00488415    pop         ebp
 00488416    ret
end;*}

//0048841C
{*procedure sub_0048841C(?:TCanvas; ?:?; ?:?; ?:?);
begin
 0048841C    push        ebp
 0048841D    mov         ebp,esp
 0048841F    add         esp,0FFFFFFF4
 00488422    mov         dword ptr [ebp-0C],ecx
 00488425    mov         dword ptr [ebp-8],edx
 00488428    mov         dword ptr [ebp-4],eax
 0048842B    mov         eax,dword ptr [ebp-4]
 0048842E    mov         edx,dword ptr [eax]
 00488430    call        dword ptr [edx+10]
 00488433    mov         dl,byte ptr ds:[48846C];0x5 gvar_0048846C
 00488439    mov         eax,dword ptr [ebp-4]
 0048843C    call        004885D8
 00488441    mov         eax,dword ptr [ebp+8]
 00488444    call        00486830
 00488449    push        eax
 0048844A    mov         eax,dword ptr [ebp-0C]
 0048844D    push        eax
 0048844E    mov         eax,dword ptr [ebp-8]
 00488451    push        eax
 00488452    mov         eax,dword ptr [ebp-4]
 00488455    mov         eax,dword ptr [eax+4]
 00488458    push        eax
 00488459    call        gdi32.SetPixel
 0048845E    mov         eax,dword ptr [ebp-4]
 00488461    mov         edx,dword ptr [eax]
 00488463    call        dword ptr [edx+0C]
 00488466    mov         esp,ebp
 00488468    pop         ebp
 00488469    ret         4
end;*}

//00488470
{*procedure sub_00488470(?:TCanvas; ?:?);
begin
 00488470    push        ebp
 00488471    mov         ebp,esp
 00488473    add         esp,0FFFFFFF8
 00488476    mov         dword ptr [ebp-8],edx
 00488479    mov         dword ptr [ebp-4],eax
 0048847C    mov         dl,byte ptr ds:[4884A0];0x1 gvar_004884A0
 00488482    mov         eax,dword ptr [ebp-4]
 00488485    call        004885D8
 0048848A    mov         eax,dword ptr [ebp-8]
 0048848D    push        eax
 0048848E    mov         eax,dword ptr [ebp-4]
 00488491    mov         eax,dword ptr [eax+4]
 00488494    push        eax
 00488495    call        gdi32.GetClipBox
 0048849A    pop         ecx
 0048849B    pop         ecx
 0048849C    pop         ebp
 0048849D    ret
end;*}

//004884A4
function TCanvas.GetHandle:HDC;
begin
{*
 004884A4    push        ebp
 004884A5    mov         ebp,esp
 004884A7    add         esp,0FFFFFFF8
 004884AA    mov         dword ptr [ebp-4],eax
 004884AD    mov         eax,dword ptr [ebp-4]
 004884B0    mov         edx,dword ptr [eax]
 004884B2    call        dword ptr [edx+10]
 004884B5    mov         dl,byte ptr ds:[4884D4]
 004884BB    mov         eax,dword ptr [ebp-4]
 004884BE    call        004885D8
 004884C3    mov         eax,dword ptr [ebp-4]
 004884C6    mov         eax,dword ptr [eax+4]
 004884C9    mov         dword ptr [ebp-8],eax
 004884CC    mov         eax,dword ptr [ebp-8]
 004884CF    pop         ecx
 004884D0    pop         ecx
 004884D1    pop         ebp
 004884D2    ret
*}
end;

//004884D8
procedure sub_004884D8(?:Pointer);
begin
{*
 004884D8    push        ebp
 004884D9    mov         ebp,esp
 004884DB    push        ecx
 004884DC    mov         dword ptr [ebp-4],eax
 004884DF    mov         eax,dword ptr [ebp-4]
 004884E2    cmp         dword ptr [eax+4],0
>004884E6    je          00488548
 004884E8    mov         al,[0048854C];0xE gvar_0048854C
 004884ED    mov         edx,dword ptr [ebp-4]
 004884F0    not         eax
 004884F2    and         al,byte ptr [edx+8]
 004884F5    mov         edx,dword ptr [ebp-4]
 004884F8    mov         dl,byte ptr [edx+8]
 004884FB    cmp         dl,al
>004884FD    je          00488548
 004884FF    mov         eax,[0055DB1C];gvar_0055DB1C
 00488504    push        eax
 00488505    mov         eax,dword ptr [ebp-4]
 00488508    mov         eax,dword ptr [eax+4]
 0048850B    push        eax
 0048850C    call        gdi32.SelectObject
 00488511    mov         eax,[0055DB20];gvar_0055DB20
 00488516    push        eax
 00488517    mov         eax,dword ptr [ebp-4]
 0048851A    mov         eax,dword ptr [eax+4]
 0048851D    push        eax
 0048851E    call        gdi32.SelectObject
 00488523    mov         eax,[0055DB24];gvar_0055DB24
 00488528    push        eax
 00488529    mov         eax,dword ptr [ebp-4]
 0048852C    mov         eax,dword ptr [eax+4]
 0048852F    push        eax
 00488530    call        gdi32.SelectObject
 00488535    mov         al,[0048854C];0xE gvar_0048854C
 0048853A    mov         edx,dword ptr [ebp-4]
 0048853D    not         eax
 0048853F    and         al,byte ptr [edx+8]
 00488542    mov         edx,dword ptr [ebp-4]
 00488545    mov         byte ptr [edx+8],al
 00488548    pop         ecx
 00488549    pop         ebp
 0048854A    ret
*}
end;

//00488550
procedure sub_00488550;
begin
{*
 00488550    push        ebp
 00488551    mov         ebp,esp
 00488553    push        ecx
 00488554    mov         dword ptr [ebp-4],eax
 00488557    pop         ecx
 00488558    pop         ebp
 00488559    ret
*}
end;

//0048855C
procedure TCanvas.SetHandle(Value:HDC);
begin
{*
 0048855C    push        ebp
 0048855D    mov         ebp,esp
 0048855F    add         esp,0FFFFFFF0
 00488562    mov         dword ptr [ebp-8],edx
 00488565    mov         dword ptr [ebp-4],eax
 00488568    mov         eax,dword ptr [ebp-4]
 0048856B    mov         eax,dword ptr [eax+4]
 0048856E    cmp         eax,dword ptr [ebp-8]
>00488571    je          004885D1
 00488573    mov         eax,dword ptr [ebp-4]
 00488576    cmp         dword ptr [eax+4],0
>0048857A    je          004885AD
 0048857C    mov         eax,dword ptr [ebp-4]
 0048857F    call        004884D8
 00488584    lea         edx,[ebp-10]
 00488587    mov         eax,dword ptr [ebp-4]
 0048858A    call        00488380
 0048858F    mov         eax,dword ptr [ebp-4]
 00488592    mov         edx,dword ptr [ebp-10]
 00488595    mov         dword ptr [eax+18],edx
 00488598    mov         edx,dword ptr [ebp-0C]
 0048859B    mov         dword ptr [eax+1C],edx
 0048859E    mov         eax,dword ptr [ebp-4]
 004885A1    xor         edx,edx
 004885A3    mov         dword ptr [eax+4],edx
 004885A6    mov         eax,dword ptr [ebp-4]
 004885A9    and         byte ptr [eax+8],0FE
 004885AD    cmp         dword ptr [ebp-8],0
>004885B1    je          004885D1
 004885B3    mov         eax,dword ptr [ebp-4]
 004885B6    or          byte ptr [eax+8],1
 004885BA    mov         eax,dword ptr [ebp-8]
 004885BD    mov         edx,dword ptr [ebp-4]
 004885C0    mov         dword ptr [edx+4],eax
 004885C3    mov         eax,dword ptr [ebp-4]
 004885C6    lea         edx,[eax+18]
 004885C9    mov         eax,dword ptr [ebp-4]
 004885CC    call        004883B4
 004885D1    mov         esp,ebp
 004885D3    pop         ebp
 004885D4    ret
*}
end;

//004885D8
{*procedure sub_004885D8(?:TCanvas; ?:?);
begin
 004885D8    push        ebp
 004885D9    mov         ebp,esp
 004885DB    add         esp,0FFFFFFF8
 004885DE    mov         byte ptr [ebp-5],dl
 004885E1    mov         dword ptr [ebp-4],eax
 004885E4    mov         eax,dword ptr [ebp-4]
 004885E7    mov         al,byte ptr [eax+8]
 004885EA    not         eax
 004885EC    and         al,byte ptr [ebp-5]
 004885EF    mov         byte ptr [ebp-6],al
 004885F2    mov         al,[00488668];0x0 gvar_00488668
 004885F7    cmp         al,byte ptr [ebp-6]
>004885FA    je          00488663
 004885FC    test        byte ptr [ebp-6],1
>00488600    je          0048862A
 00488602    mov         eax,dword ptr [ebp-4]
 00488605    mov         edx,dword ptr [eax]
 00488607    call        dword ptr [edx+14]
 0048860A    mov         eax,dword ptr [ebp-4]
 0048860D    cmp         dword ptr [eax+4],0
>00488611    jne         0048862A
 00488613    mov         ecx,dword ptr ds:[55B2E4];^SNoCanvasHandle:TResStringRec
 00488619    mov         dl,1
 0048861B    mov         eax,[00475960];EInvalidOperation
 00488620    call        Exception.Create;EInvalidOperation.Create
 00488625    call        @RaiseExcept
 0048862A    test        byte ptr [ebp-6],2
>0048862E    je          00488638
 00488630    mov         eax,dword ptr [ebp-4]
 00488633    call        004886B4
 00488638    test        byte ptr [ebp-6],4
>0048863C    je          00488646
 0048863E    mov         eax,dword ptr [ebp-4]
 00488641    call        004886F4
 00488646    test        byte ptr [ebp-6],8
>0048864A    je          00488654
 0048864C    mov         eax,dword ptr [ebp-4]
 0048864F    call        00488738
 00488654    mov         al,byte ptr [ebp-6]
 00488657    mov         edx,dword ptr [ebp-4]
 0048865A    or          al,byte ptr [edx+8]
 0048865D    mov         edx,dword ptr [ebp-4]
 00488660    mov         byte ptr [edx+8],al
 00488663    pop         ecx
 00488664    pop         ecx
 00488665    pop         ebp
 00488666    ret
end;*}

//0048866C
procedure sub_0048866C;
begin
{*
 0048866C    push        ebp
 0048866D    mov         ebp,esp
 0048866F    push        ecx
 00488670    push        ebx
 00488671    mov         dword ptr [ebp-4],eax
 00488674    mov         eax,dword ptr [ebp-4]
 00488677    cmp         word ptr [eax+32],0;TCanvas.?f32:word
>0048867C    je          0048868A
 0048867E    mov         ebx,dword ptr [ebp-4]
 00488681    mov         edx,dword ptr [ebp-4]
 00488684    mov         eax,dword ptr [ebx+34];TCanvas.?f34:dword
 00488687    call        dword ptr [ebx+30];TCanvas.FOnChanging
 0048868A    pop         ebx
 0048868B    pop         ecx
 0048868C    pop         ebp
 0048868D    ret
*}
end;

//00488690
procedure sub_00488690;
begin
{*
 00488690    push        ebp
 00488691    mov         ebp,esp
 00488693    push        ecx
 00488694    push        ebx
 00488695    mov         dword ptr [ebp-4],eax
 00488698    mov         eax,dword ptr [ebp-4]
 0048869B    cmp         word ptr [eax+2A],0;TCanvas.?f2A:word
>004886A0    je          004886AE
 004886A2    mov         ebx,dword ptr [ebp-4]
 004886A5    mov         edx,dword ptr [ebp-4]
 004886A8    mov         eax,dword ptr [ebx+2C];TCanvas.?f2C:dword
 004886AB    call        dword ptr [ebx+28];TCanvas.FOnChange
 004886AE    pop         ebx
 004886AF    pop         ecx
 004886B0    pop         ebp
 004886B1    ret
*}
end;

//004886B4
{*procedure sub_004886B4(?:?);
begin
 004886B4    push        ebp
 004886B5    mov         ebp,esp
 004886B7    push        ecx
 004886B8    mov         dword ptr [ebp-4],eax
 004886BB    mov         eax,dword ptr [ebp-4]
 004886BE    mov         eax,dword ptr [eax+0C]
 004886C1    call        TFont.GetHandle
 004886C6    push        eax
 004886C7    mov         eax,dword ptr [ebp-4]
 004886CA    mov         eax,dword ptr [eax+4]
 004886CD    push        eax
 004886CE    call        gdi32.SelectObject
 004886D3    mov         eax,dword ptr [ebp-4]
 004886D6    mov         eax,dword ptr [eax+0C]
 004886D9    mov         eax,dword ptr [eax+18]
 004886DC    call        00486830
 004886E1    push        eax
 004886E2    mov         eax,dword ptr [ebp-4]
 004886E5    mov         eax,dword ptr [eax+4]
 004886E8    push        eax
 004886E9    call        gdi32.SetTextColor
 004886EE    pop         ecx
 004886EF    pop         ebp
 004886F0    ret
end;*}

//004886F4
{*procedure sub_004886F4(?:?);
begin
 004886F4    push        ebp
 004886F5    mov         ebp,esp
 004886F7    push        ecx
 004886F8    mov         dword ptr [ebp-4],eax
 004886FB    mov         eax,dword ptr [ebp-4]
 004886FE    mov         eax,dword ptr [eax+10]
 00488701    call        00487438
 00488706    push        eax
 00488707    mov         eax,dword ptr [ebp-4]
 0048870A    mov         eax,dword ptr [eax+4]
 0048870D    push        eax
 0048870E    call        gdi32.SelectObject
 00488713    mov         eax,dword ptr [ebp-4]
 00488716    mov         eax,dword ptr [eax+10]
 00488719    movzx       eax,byte ptr [eax+18]
 0048871D    movzx       eax,word ptr [eax*2+541060]
 00488725    push        eax
 00488726    mov         eax,dword ptr [ebp-4]
 00488729    mov         eax,dword ptr [eax+4]
 0048872C    push        eax
 0048872D    call        gdi32.SetROP2
 00488732    pop         ecx
 00488733    pop         ebp
 00488734    ret
end;*}

//00488738
{*procedure sub_00488738(?:?);
begin
 00488738    push        ebp
 00488739    mov         ebp,esp
 0048873B    push        ecx
 0048873C    mov         dword ptr [ebp-4],eax
 0048873F    mov         eax,dword ptr [ebp-4]
 00488742    mov         eax,dword ptr [eax+14]
 00488745    call        TBrush.GetHandle
 0048874A    push        eax
 0048874B    call        gdi32.UnrealizeObject
 00488750    mov         eax,dword ptr [ebp-4]
 00488753    mov         eax,dword ptr [eax+14]
 00488756    call        TBrush.GetHandle
 0048875B    push        eax
 0048875C    mov         eax,dword ptr [ebp-4]
 0048875F    mov         eax,dword ptr [eax+4]
 00488762    push        eax
 00488763    call        gdi32.SelectObject
 00488768    mov         eax,dword ptr [ebp-4]
 0048876B    mov         eax,dword ptr [eax+14]
 0048876E    call        TBrush.GetStyle
 00488773    test        al,al
>00488775    jne         004887A5
 00488777    mov         eax,dword ptr [ebp-4]
 0048877A    mov         eax,dword ptr [eax+14]
 0048877D    call        TBrush.GetColor
 00488782    call        00486830
 00488787    push        eax
 00488788    mov         eax,dword ptr [ebp-4]
 0048878B    mov         eax,dword ptr [eax+4]
 0048878E    push        eax
 0048878F    call        gdi32.SetBkColor
 00488794    push        2
 00488796    mov         eax,dword ptr [ebp-4]
 00488799    mov         eax,dword ptr [eax+4]
 0048879C    push        eax
 0048879D    call        gdi32.SetBkMode
 004887A2    pop         ecx
 004887A3    pop         ebp
 004887A4    ret
 004887A5    mov         eax,dword ptr [ebp-4]
 004887A8    mov         eax,dword ptr [eax+14]
 004887AB    call        TBrush.GetColor
 004887B0    call        00486830
 004887B5    not         eax
 004887B7    push        eax
 004887B8    mov         eax,dword ptr [ebp-4]
 004887BB    mov         eax,dword ptr [eax+4]
 004887BE    push        eax
 004887BF    call        gdi32.SetBkColor
 004887C4    push        1
 004887C6    mov         eax,dword ptr [ebp-4]
 004887C9    mov         eax,dword ptr [eax+4]
 004887CC    push        eax
 004887CD    call        gdi32.SetBkMode
 004887D2    pop         ecx
 004887D3    pop         ebp
 004887D4    ret
end;*}

//004887D8
{*procedure sub_004887D8(?:?; ?:?);
begin
 004887D8    push        ebp
 004887D9    mov         ebp,esp
 004887DB    add         esp,0FFFFFFF8
 004887DE    mov         dword ptr [ebp-8],edx
 004887E1    mov         dword ptr [ebp-4],eax
 004887E4    mov         eax,dword ptr [ebp-4]
 004887E7    test        byte ptr [eax+8],2
>004887EB    je          00488806
 004887ED    mov         eax,dword ptr [ebp-4]
 004887F0    and         byte ptr [eax+8],0FD
 004887F4    mov         eax,[0055DB24];gvar_0055DB24
 004887F9    push        eax
 004887FA    mov         eax,dword ptr [ebp-4]
 004887FD    mov         eax,dword ptr [eax+4]
 00488800    push        eax
 00488801    call        gdi32.SelectObject
 00488806    pop         ecx
 00488807    pop         ecx
 00488808    pop         ebp
 00488809    ret
end;*}

//0048880C
{*procedure sub_0048880C(?:?; ?:?);
begin
 0048880C    push        ebp
 0048880D    mov         ebp,esp
 0048880F    add         esp,0FFFFFFF8
 00488812    mov         dword ptr [ebp-8],edx
 00488815    mov         dword ptr [ebp-4],eax
 00488818    mov         eax,dword ptr [ebp-4]
 0048881B    test        byte ptr [eax+8],4
>0048881F    je          0048883A
 00488821    mov         eax,dword ptr [ebp-4]
 00488824    and         byte ptr [eax+8],0FB
 00488828    mov         eax,[0055DB1C];gvar_0055DB1C
 0048882D    push        eax
 0048882E    mov         eax,dword ptr [ebp-4]
 00488831    mov         eax,dword ptr [eax+4]
 00488834    push        eax
 00488835    call        gdi32.SelectObject
 0048883A    pop         ecx
 0048883B    pop         ecx
 0048883C    pop         ebp
 0048883D    ret
end;*}

//00488840
{*procedure sub_00488840(?:?; ?:?);
begin
 00488840    push        ebp
 00488841    mov         ebp,esp
 00488843    add         esp,0FFFFFFF8
 00488846    mov         dword ptr [ebp-8],edx
 00488849    mov         dword ptr [ebp-4],eax
 0048884C    mov         eax,dword ptr [ebp-4]
 0048884F    test        byte ptr [eax+8],8
>00488853    je          0048886E
 00488855    mov         eax,dword ptr [ebp-4]
 00488858    and         byte ptr [eax+8],0F7
 0048885C    mov         eax,[0055DB20];gvar_0055DB20
 00488861    push        eax
 00488862    mov         eax,dword ptr [ebp-4]
 00488865    mov         eax,dword ptr [eax+4]
 00488868    push        eax
 00488869    call        gdi32.SelectObject
 0048886E    pop         ecx
 0048886F    pop         ecx
 00488870    pop         ebp
 00488871    ret
end;*}

//00488874
procedure sub_00488874(?:TResStringRec);
begin
{*
 00488874    push        ebp
 00488875    mov         ebp,esp
 00488877    push        ecx
 00488878    mov         dword ptr [ebp-4],eax
 0048887B    mov         ecx,dword ptr [ebp-4]
 0048887E    mov         dl,1
 00488880    mov         eax,[00484E68];EInvalidGraphicOperation
 00488885    call        Exception.Create;EInvalidGraphicOperation.Create
 0048888A    call        @RaiseExcept
 0048888F    pop         ecx
 00488890    pop         ebp
 00488891    ret
*}
end;

//00488894
procedure InvalidGraphic(Str:PResStringRec);
begin
{*
 00488894    push        ebp
 00488895    mov         ebp,esp
 00488897    push        ecx
 00488898    mov         dword ptr [ebp-4],eax
 0048889B    mov         ecx,dword ptr [ebp-4]
 0048889E    mov         dl,1
 004888A0    mov         eax,[00484E0C];EInvalidGraphic
 004888A5    call        Exception.Create
 004888AA    call        @RaiseExcept
 004888AF    pop         ecx
 004888B0    pop         ebp
 004888B1    ret
*}
end;

//004888B4
procedure InvalidBitmap;
begin
{*
 004888B4    mov         eax,[0055B290];^SInvalidBitmap:TResStringRec
 004888B9    call        InvalidGraphic
 004888BE    ret
*}
end;

//004888C0
procedure InvalidIcon;
begin
{*
 004888C0    mov         eax,[0055B2A0];^SInvalidIcon:TResStringRec
 004888C5    call        InvalidGraphic
 004888CA    ret
*}
end;

//004888CC
procedure InvalidMetafile;
begin
{*
 004888CC    mov         eax,[0055B50C];^SInvalidMetafile:TResStringRec
 004888D1    call        InvalidGraphic
 004888D6    ret
*}
end;

//004888D8
procedure OutOfResources;
begin
{*
 004888D8    push        ebp
 004888D9    mov         ebp,esp
 004888DB    push        0
 004888DD    xor         eax,eax
 004888DF    push        ebp
 004888E0    push        488922
 004888E5    push        dword ptr fs:[eax]
 004888E8    mov         dword ptr fs:[eax],esp
 004888EB    lea         edx,[ebp-4]
 004888EE    mov         eax,[0055B17C];^SOutOfResources:TResStringRec
 004888F3    call        LoadResString
 004888F8    mov         ecx,dword ptr [ebp-4]
 004888FB    mov         dl,1
 004888FD    mov         eax,[00475904];EOutOfResources
 00488902    call        Exception.Create
 00488907    call        @RaiseExcept
 0048890C    xor         eax,eax
 0048890E    pop         edx
 0048890F    pop         ecx
 00488910    pop         ecx
 00488911    mov         dword ptr fs:[eax],edx
 00488914    push        488929
 00488919    lea         eax,[ebp-4]
 0048891C    call        @LStrClr
 00488921    ret
>00488922    jmp         @HandleFinally
>00488927    jmp         00488919
 00488929    pop         ecx
 0048892A    pop         ebp
 0048892B    ret
*}
end;

//0048892C
procedure sub_0048892C;
begin
{*
 0048892C    push        ebp
 0048892D    mov         ebp,esp
 0048892F    add         esp,0FFFFFEF8
 00488935    xor         eax,eax
 00488937    mov         dword ptr [ebp-108],eax
 0048893D    xor         eax,eax
 0048893F    push        ebp
 00488940    push        4889CD
 00488945    push        dword ptr fs:[eax]
 00488948    mov         dword ptr fs:[eax],esp
 0048894B    call        kernel32.GetLastError
 00488950    mov         dword ptr [ebp-4],eax
 00488953    cmp         dword ptr [ebp-4],0
>00488957    je          004889AF
 00488959    push        0
 0048895B    push        100
 00488960    lea         eax,[ebp-104]
 00488966    push        eax
 00488967    push        400
 0048896C    mov         eax,dword ptr [ebp-4]
 0048896F    push        eax
 00488970    push        0
 00488972    push        1000
 00488977    call        kernel32.FormatMessageA
 0048897C    test        eax,eax
>0048897E    je          004889AF
 00488980    lea         eax,[ebp-108]
 00488986    lea         edx,[ebp-104]
 0048898C    mov         ecx,100
 00488991    call        @LStrFromArray
 00488996    mov         ecx,dword ptr [ebp-108]
 0048899C    mov         dl,1
 0048899E    mov         eax,[00475904];EOutOfResources
 004889A3    call        Exception.Create;EOutOfResources.Create
 004889A8    call        @RaiseExcept
>004889AD    jmp         004889B4
 004889AF    call        OutOfResources
 004889B4    xor         eax,eax
 004889B6    pop         edx
 004889B7    pop         ecx
 004889B8    pop         ecx
 004889B9    mov         dword ptr fs:[eax],edx
 004889BC    push        4889D4
 004889C1    lea         eax,[ebp-108]
 004889C7    call        @LStrClr
 004889CC    ret
>004889CD    jmp         @HandleFinally
>004889D2    jmp         004889C1
 004889D4    mov         esp,ebp
 004889D6    pop         ebp
 004889D7    ret
*}
end;

//004889D8
{*function sub_004889D8(?:HBITMAP):?;
begin
 004889D8    push        ebp
 004889D9    mov         ebp,esp
 004889DB    add         esp,0FFFFFFF8
 004889DE    mov         dword ptr [ebp-4],eax
 004889E1    cmp         dword ptr [ebp-4],0
>004889E5    jne         004889EC
 004889E7    call        0048892C
 004889EC    mov         eax,dword ptr [ebp-4]
 004889EF    mov         dword ptr [ebp-8],eax
 004889F2    mov         eax,dword ptr [ebp-8]
 004889F5    pop         ecx
 004889F6    pop         ecx
 004889F7    pop         ebp
 004889F8    ret
end;*}

//004889FC
{*function sub_004889FC(?:?; ?:?; ?:?):?;
begin
 004889FC    push        ebp
 004889FD    mov         ebp,esp
 004889FF    add         esp,0FFFFFFC0
 00488A02    push        esi
 00488A03    push        edi
 00488A04    mov         esi,edx
 00488A06    lea         edi,[ebp-0C]
 00488A09    movs        dword ptr [edi],dword ptr [esi]
 00488A0A    movs        dword ptr [edi],dword ptr [esi]
 00488A0B    mov         byte ptr [ebp-0D],cl
 00488A0E    mov         dword ptr [ebp-4],eax
 00488A11    push        0
 00488A13    call        gdi32.CreateCompatibleDC
 00488A18    mov         dword ptr [ebp-1C],eax
 00488A1B    push        0
 00488A1D    call        gdi32.CreateCompatibleDC
 00488A22    mov         dword ptr [ebp-20],eax
 00488A25    xor         eax,eax
 00488A27    push        ebp
 00488A28    push        488B58
 00488A2D    push        dword ptr fs:[eax]
 00488A30    mov         dword ptr fs:[eax],esp
 00488A33    lea         eax,[ebp-40]
 00488A36    push        eax
 00488A37    push        18
 00488A39    mov         eax,dword ptr [ebp-4]
 00488A3C    push        eax
 00488A3D    call        gdi32.GetObjectA
 00488A42    cmp         byte ptr [ebp-0D],0
>00488A46    je          00488A60
 00488A48    push        0
 00488A4A    push        1
 00488A4C    push        1
 00488A4E    mov         eax,dword ptr [ebp-8]
 00488A51    push        eax
 00488A52    mov         eax,dword ptr [ebp-0C]
 00488A55    push        eax
 00488A56    call        gdi32.CreateBitmap
 00488A5B    mov         dword ptr [ebp-14],eax
>00488A5E    jmp         00488AC2
 00488A60    push        0
 00488A62    call        user32.GetDC
 00488A67    mov         dword ptr [ebp-18],eax
 00488A6A    cmp         dword ptr [ebp-18],0
>00488A6E    jne         00488A75
 00488A70    call        0048892C
 00488A75    xor         eax,eax
 00488A77    push        ebp
 00488A78    push        488ABB
 00488A7D    push        dword ptr fs:[eax]
 00488A80    mov         dword ptr fs:[eax],esp
 00488A83    mov         eax,dword ptr [ebp-8]
 00488A86    push        eax
 00488A87    mov         eax,dword ptr [ebp-0C]
 00488A8A    push        eax
 00488A8B    mov         eax,dword ptr [ebp-18]
 00488A8E    push        eax
 00488A8F    call        gdi32.CreateCompatibleBitmap
 00488A94    mov         dword ptr [ebp-14],eax
 00488A97    cmp         dword ptr [ebp-14],0
>00488A9B    jne         00488AA2
 00488A9D    call        0048892C
 00488AA2    xor         eax,eax
 00488AA4    pop         edx
 00488AA5    pop         ecx
 00488AA6    pop         ecx
 00488AA7    mov         dword ptr fs:[eax],edx
 00488AAA    push        488AC2
 00488AAF    mov         eax,dword ptr [ebp-18]
 00488AB2    push        eax
 00488AB3    push        0
 00488AB5    call        user32.ReleaseDC
 00488ABA    ret
>00488ABB    jmp         @HandleFinally
>00488AC0    jmp         00488AAF
 00488AC2    cmp         dword ptr [ebp-14],0
>00488AC6    je          00488B38
 00488AC8    mov         eax,dword ptr [ebp-4]
 00488ACB    push        eax
 00488ACC    mov         eax,dword ptr [ebp-1C]
 00488ACF    push        eax
 00488AD0    call        gdi32.SelectObject
 00488AD5    mov         dword ptr [ebp-24],eax
 00488AD8    mov         eax,dword ptr [ebp-14]
 00488ADB    push        eax
 00488ADC    mov         eax,dword ptr [ebp-20]
 00488ADF    push        eax
 00488AE0    call        gdi32.SelectObject
 00488AE5    mov         dword ptr [ebp-28],eax
 00488AE8    push        0CC0020
 00488AED    mov         eax,dword ptr [ebp-38]
 00488AF0    push        eax
 00488AF1    mov         eax,dword ptr [ebp-3C]
 00488AF4    push        eax
 00488AF5    push        0
 00488AF7    push        0
 00488AF9    mov         eax,dword ptr [ebp-1C]
 00488AFC    push        eax
 00488AFD    mov         eax,dword ptr [ebp-8]
 00488B00    push        eax
 00488B01    mov         eax,dword ptr [ebp-0C]
 00488B04    push        eax
 00488B05    push        0
 00488B07    push        0
 00488B09    mov         eax,dword ptr [ebp-20]
 00488B0C    push        eax
 00488B0D    call        gdi32.StretchBlt
 00488B12    cmp         dword ptr [ebp-24],0
>00488B16    je          00488B25
 00488B18    mov         eax,dword ptr [ebp-24]
 00488B1B    push        eax
 00488B1C    mov         eax,dword ptr [ebp-1C]
 00488B1F    push        eax
 00488B20    call        gdi32.SelectObject
 00488B25    cmp         dword ptr [ebp-28],0
>00488B29    je          00488B38
 00488B2B    mov         eax,dword ptr [ebp-28]
 00488B2E    push        eax
 00488B2F    mov         eax,dword ptr [ebp-20]
 00488B32    push        eax
 00488B33    call        gdi32.SelectObject
 00488B38    xor         eax,eax
 00488B3A    pop         edx
 00488B3B    pop         ecx
 00488B3C    pop         ecx
 00488B3D    mov         dword ptr fs:[eax],edx
 00488B40    push        488B5F
 00488B45    mov         eax,dword ptr [ebp-1C]
 00488B48    push        eax
 00488B49    call        gdi32.DeleteDC
 00488B4E    mov         eax,dword ptr [ebp-20]
 00488B51    push        eax
 00488B52    call        gdi32.DeleteDC
 00488B57    ret
>00488B58    jmp         @HandleFinally
>00488B5D    jmp         00488B45
 00488B5F    mov         eax,dword ptr [ebp-14]
 00488B62    pop         edi
 00488B63    pop         esi
 00488B64    mov         esp,ebp
 00488B66    pop         ebp
 00488B67    ret
end;*}

//00488B68
{*function sub_00488B68(?:?):?;
begin
 00488B68    push        ebp
 00488B69    mov         ebp,esp
 00488B6B    add         esp,0FFFFFFF8
 00488B6E    mov         word ptr [ebp-2],ax
 00488B72    mov         ax,word ptr [ebp-2]
 00488B76    dec         ax
>00488B79    je          00488B87
 00488B7B    sub         ax,3
>00488B7F    je          00488B87
 00488B81    sub         ax,4
>00488B85    jne         00488B97
 00488B87    mov         cx,word ptr [ebp-2]
 00488B8B    mov         eax,1
 00488B90    shl         eax,cl
 00488B92    mov         dword ptr [ebp-8],eax
>00488B95    jmp         00488B9C
 00488B97    xor         eax,eax
 00488B99    mov         dword ptr [ebp-8],eax
 00488B9C    mov         eax,dword ptr [ebp-8]
 00488B9F    pop         ecx
 00488BA0    pop         ecx
 00488BA1    pop         ebp
 00488BA2    ret
end;*}

//00488BA4
{*function sub_00488BA4(?:?; ?:?; ?:?):?;
begin
 00488BA4    push        ebp
 00488BA5    mov         ebp,esp
 00488BA7    add         esp,0FFFFFFF0
 00488BAA    mov         dword ptr [ebp-0C],ecx
 00488BAD    mov         dword ptr [ebp-8],edx
 00488BB0    mov         dword ptr [ebp-4],eax
 00488BB3    dec         dword ptr [ebp-0C]
 00488BB6    mov         eax,dword ptr [ebp-4]
 00488BB9    imul        dword ptr [ebp-8]
 00488BBC    add         eax,dword ptr [ebp-0C]
 00488BBF    mov         edx,dword ptr [ebp-0C]
 00488BC2    not         edx
 00488BC4    and         eax,edx
 00488BC6    mov         dword ptr [ebp-10],eax
 00488BC9    mov         eax,dword ptr [ebp-10]
 00488BCC    test        eax,eax
>00488BCE    jns         00488BD3
 00488BD0    add         eax,7
 00488BD3    sar         eax,3
 00488BD6    mov         dword ptr [ebp-10],eax
 00488BD9    mov         eax,dword ptr [ebp-10]
 00488BDC    mov         esp,ebp
 00488BDE    pop         ebp
 00488BDF    ret
end;*}

//00488BE0
{*function sub_00488BE0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00488BE0    push        ebp
 00488BE1    mov         ebp,esp
 00488BE3    add         esp,0FFFFFFD8
 00488BE6    mov         dword ptr [ebp-0C],ecx
 00488BE9    mov         dword ptr [ebp-8],edx
 00488BEC    mov         dword ptr [ebp-4],eax
 00488BEF    mov         byte ptr [ebp-0D],1
 00488BF3    mov         eax,[0055B700];^gvar_00540934
 00488BF8    cmp         dword ptr [eax],2
>00488BFB    jne         00488CBB
 00488C01    mov         eax,dword ptr [ebp+18]
 00488C04    cmp         eax,dword ptr [ebp+2C]
>00488C07    jne         00488CBB
 00488C0D    mov         eax,dword ptr [ebp+14]
 00488C10    cmp         eax,dword ptr [ebp+28]
>00488C13    jne         00488CBB
 00488C19    push        1
 00488C1B    push        1
 00488C1D    mov         eax,dword ptr [ebp+24]
 00488C20    push        eax
 00488C21    call        gdi32.CreateCompatibleBitmap
 00488C26    call        004889D8
 00488C2B    mov         dword ptr [ebp-18],eax
 00488C2E    mov         eax,dword ptr [ebp-18]
 00488C31    push        eax
 00488C32    mov         eax,dword ptr [ebp+10]
 00488C35    push        eax
 00488C36    call        gdi32.SelectObject
 00488C3B    mov         dword ptr [ebp-18],eax
 00488C3E    xor         eax,eax
 00488C40    push        ebp
 00488C41    push        488CB4
 00488C46    push        dword ptr fs:[eax]
 00488C49    mov         dword ptr fs:[eax],esp
 00488C4C    mov         edx,0CC0020
 00488C51    mov         eax,0AA0029
 00488C56    call        004081A8
 00488C5B    push        eax
 00488C5C    mov         eax,dword ptr [ebp+8]
 00488C5F    push        eax
 00488C60    mov         eax,dword ptr [ebp+0C]
 00488C63    push        eax
 00488C64    mov         eax,dword ptr [ebp-18]
 00488C67    push        eax
 00488C68    mov         eax,dword ptr [ebp+1C]
 00488C6B    push        eax
 00488C6C    mov         eax,dword ptr [ebp+20]
 00488C6F    push        eax
 00488C70    mov         eax,dword ptr [ebp+24]
 00488C73    push        eax
 00488C74    mov         eax,dword ptr [ebp+28]
 00488C77    push        eax
 00488C78    mov         eax,dword ptr [ebp+2C]
 00488C7B    push        eax
 00488C7C    mov         eax,dword ptr [ebp-0C]
 00488C7F    push        eax
 00488C80    mov         eax,dword ptr [ebp-8]
 00488C83    push        eax
 00488C84    mov         eax,dword ptr [ebp-4]
 00488C87    push        eax
 00488C88    call        gdi32.MaskBlt
 00488C8D    xor         eax,eax
 00488C8F    pop         edx
 00488C90    pop         ecx
 00488C91    pop         ecx
 00488C92    mov         dword ptr fs:[eax],edx
 00488C95    push        488EA4
 00488C9A    mov         eax,dword ptr [ebp-18]
 00488C9D    push        eax
 00488C9E    mov         eax,dword ptr [ebp+10]
 00488CA1    push        eax
 00488CA2    call        gdi32.SelectObject
 00488CA7    mov         dword ptr [ebp-18],eax
 00488CAA    mov         eax,dword ptr [ebp-18]
 00488CAD    push        eax
 00488CAE    call        gdi32.DeleteObject
 00488CB3    ret
>00488CB4    jmp         @HandleFinally
>00488CB9    jmp         00488C9A
 00488CBB    xor         eax,eax
 00488CBD    mov         dword ptr [ebp-28],eax
 00488CC0    push        0
 00488CC2    call        gdi32.CreateCompatibleDC
 00488CC7    call        004889D8
 00488CCC    mov         dword ptr [ebp-14],eax
 00488CCF    xor         eax,eax
 00488CD1    push        ebp
 00488CD2    push        488E9D
 00488CD7    push        dword ptr fs:[eax]
 00488CDA    mov         dword ptr fs:[eax],esp
 00488CDD    mov         eax,dword ptr [ebp+14]
 00488CE0    push        eax
 00488CE1    mov         eax,dword ptr [ebp+18]
 00488CE4    push        eax
 00488CE5    mov         eax,dword ptr [ebp+24]
 00488CE8    push        eax
 00488CE9    call        gdi32.CreateCompatibleBitmap
 00488CEE    call        004889D8
 00488CF3    mov         dword ptr [ebp-18],eax
 00488CF6    mov         eax,dword ptr [ebp-18]
 00488CF9    push        eax
 00488CFA    mov         eax,dword ptr [ebp-14]
 00488CFD    push        eax
 00488CFE    call        gdi32.SelectObject
 00488D03    mov         dword ptr [ebp-1C],eax
 00488D06    push        0
 00488D08    mov         eax,[0055DB10];gvar_0055DB10
 00488D0D    push        eax
 00488D0E    mov         eax,dword ptr [ebp+24]
 00488D11    push        eax
 00488D12    call        gdi32.SelectPalette
 00488D17    mov         dword ptr [ebp-28],eax
 00488D1A    push        0
 00488D1C    mov         eax,dword ptr [ebp-28]
 00488D1F    push        eax
 00488D20    mov         eax,dword ptr [ebp+24]
 00488D23    push        eax
 00488D24    call        gdi32.SelectPalette
 00488D29    cmp         dword ptr [ebp-28],0
>00488D2D    je          00488D43
 00488D2F    push        0FF
 00488D31    mov         eax,dword ptr [ebp-28]
 00488D34    push        eax
 00488D35    mov         eax,dword ptr [ebp-14]
 00488D38    push        eax
 00488D39    call        gdi32.SelectPalette
 00488D3E    mov         dword ptr [ebp-28],eax
>00488D41    jmp         00488D57
 00488D43    push        0FF
 00488D45    mov         eax,[0055DB10];gvar_0055DB10
 00488D4A    push        eax
 00488D4B    mov         eax,dword ptr [ebp-14]
 00488D4E    push        eax
 00488D4F    call        gdi32.SelectPalette
 00488D54    mov         dword ptr [ebp-28],eax
 00488D57    mov         eax,dword ptr [ebp-14]
 00488D5A    push        eax
 00488D5B    call        gdi32.RealizePalette
 00488D60    push        0CC0020
 00488D65    mov         eax,dword ptr [ebp+14]
 00488D68    push        eax
 00488D69    mov         eax,dword ptr [ebp+18]
 00488D6C    push        eax
 00488D6D    mov         eax,dword ptr [ebp+8]
 00488D70    push        eax
 00488D71    mov         eax,dword ptr [ebp+0C]
 00488D74    push        eax
 00488D75    mov         eax,dword ptr [ebp+10]
 00488D78    push        eax
 00488D79    mov         eax,dword ptr [ebp+14]
 00488D7C    push        eax
 00488D7D    mov         eax,dword ptr [ebp+18]
 00488D80    push        eax
 00488D81    push        0
 00488D83    push        0
 00488D85    mov         eax,dword ptr [ebp-14]
 00488D88    push        eax
 00488D89    call        gdi32.StretchBlt
 00488D8E    push        440328
 00488D93    mov         eax,dword ptr [ebp+14]
 00488D96    push        eax
 00488D97    mov         eax,dword ptr [ebp+18]
 00488D9A    push        eax
 00488D9B    mov         eax,dword ptr [ebp+1C]
 00488D9E    push        eax
 00488D9F    mov         eax,dword ptr [ebp+20]
 00488DA2    push        eax
 00488DA3    mov         eax,dword ptr [ebp+24]
 00488DA6    push        eax
 00488DA7    mov         eax,dword ptr [ebp+14]
 00488DAA    push        eax
 00488DAB    mov         eax,dword ptr [ebp+18]
 00488DAE    push        eax
 00488DAF    push        0
 00488DB1    push        0
 00488DB3    mov         eax,dword ptr [ebp-14]
 00488DB6    push        eax
 00488DB7    call        gdi32.StretchBlt
 00488DBC    push        0
 00488DBE    mov         eax,dword ptr [ebp-4]
 00488DC1    push        eax
 00488DC2    call        gdi32.SetTextColor
 00488DC7    mov         dword ptr [ebp-20],eax
 00488DCA    push        0FFFFFF
 00488DCF    mov         eax,dword ptr [ebp-4]
 00488DD2    push        eax
 00488DD3    call        gdi32.SetBkColor
 00488DD8    mov         dword ptr [ebp-24],eax
 00488DDB    push        8800C6
 00488DE0    mov         eax,dword ptr [ebp+14]
 00488DE3    push        eax
 00488DE4    mov         eax,dword ptr [ebp+18]
 00488DE7    push        eax
 00488DE8    mov         eax,dword ptr [ebp+8]
 00488DEB    push        eax
 00488DEC    mov         eax,dword ptr [ebp+0C]
 00488DEF    push        eax
 00488DF0    mov         eax,dword ptr [ebp+10]
 00488DF3    push        eax
 00488DF4    mov         eax,dword ptr [ebp+28]
 00488DF7    push        eax
 00488DF8    mov         eax,dword ptr [ebp+2C]
 00488DFB    push        eax
 00488DFC    mov         eax,dword ptr [ebp-0C]
 00488DFF    push        eax
 00488E00    mov         eax,dword ptr [ebp-8]
 00488E03    push        eax
 00488E04    mov         eax,dword ptr [ebp-4]
 00488E07    push        eax
 00488E08    call        gdi32.StretchBlt
 00488E0D    push        660046
 00488E12    mov         eax,dword ptr [ebp+14]
 00488E15    push        eax
 00488E16    mov         eax,dword ptr [ebp+18]
 00488E19    push        eax
 00488E1A    push        0
 00488E1C    push        0
 00488E1E    mov         eax,dword ptr [ebp-14]
 00488E21    push        eax
 00488E22    mov         eax,dword ptr [ebp+28]
 00488E25    push        eax
 00488E26    mov         eax,dword ptr [ebp+2C]
 00488E29    push        eax
 00488E2A    mov         eax,dword ptr [ebp-0C]
 00488E2D    push        eax
 00488E2E    mov         eax,dword ptr [ebp-8]
 00488E31    push        eax
 00488E32    mov         eax,dword ptr [ebp-4]
 00488E35    push        eax
 00488E36    call        gdi32.StretchBlt
 00488E3B    mov         eax,dword ptr [ebp-20]
 00488E3E    push        eax
 00488E3F    mov         eax,dword ptr [ebp-4]
 00488E42    push        eax
 00488E43    call        gdi32.SetTextColor
 00488E48    mov         eax,dword ptr [ebp-24]
 00488E4B    push        eax
 00488E4C    mov         eax,dword ptr [ebp-4]
 00488E4F    push        eax
 00488E50    call        gdi32.SetBkColor
 00488E55    cmp         dword ptr [ebp-1C],0
>00488E59    je          00488E68
 00488E5B    mov         eax,dword ptr [ebp-1C]
 00488E5E    push        eax
 00488E5F    mov         eax,dword ptr [ebp-14]
 00488E62    push        eax
 00488E63    call        gdi32.SelectObject
 00488E68    mov         eax,dword ptr [ebp-18]
 00488E6B    push        eax
 00488E6C    call        gdi32.DeleteObject
 00488E71    xor         eax,eax
 00488E73    pop         edx
 00488E74    pop         ecx
 00488E75    pop         ecx
 00488E76    mov         dword ptr fs:[eax],edx
 00488E79    push        488EA4
 00488E7E    cmp         dword ptr [ebp-28],0
>00488E82    je          00488E93
 00488E84    push        0
 00488E86    mov         eax,dword ptr [ebp-28]
 00488E89    push        eax
 00488E8A    mov         eax,dword ptr [ebp-14]
 00488E8D    push        eax
 00488E8E    call        gdi32.SelectPalette
 00488E93    mov         eax,dword ptr [ebp-14]
 00488E96    push        eax
 00488E97    call        gdi32.DeleteDC
 00488E9C    ret
>00488E9D    jmp         @HandleFinally
>00488EA2    jmp         00488E7E
 00488EA4    mov         al,byte ptr [ebp-0D]
 00488EA7    mov         esp,ebp
 00488EA9    pop         ebp
 00488EAA    ret         28
end;*}

//00488EB0
{*procedure sub_00488EB0(?:?);
begin
 00488EB0    push        ebp
 00488EB1    mov         ebp,esp
 00488EB3    add         esp,0FFFFFFE8
 00488EB6    mov         dword ptr [ebp-4],eax
 00488EB9    mov         eax,dword ptr [ebp-4]
 00488EBC    mov         dword ptr [ebp-0C],eax
 00488EBF    mov         eax,dword ptr [ebp-0C]
 00488EC2    mov         dword ptr [ebp-10],eax
 00488EC5    mov         dword ptr [ebp-8],0FF
 00488ECC    mov         eax,dword ptr [ebp-10]
 00488ECF    mov         edx,dword ptr [ebp-8]
 00488ED2    lea         eax,[eax+edx*4]
 00488ED5    mov         dword ptr [ebp-14],eax
 00488ED8    mov         eax,dword ptr [ebp-8]
 00488EDB    lea         eax,[eax+eax*2]
 00488EDE    mov         edx,dword ptr [ebp-0C]
 00488EE1    lea         eax,[edx+eax]
 00488EE4    mov         dword ptr [ebp-18],eax
 00488EE7    mov         eax,dword ptr [ebp-18]
 00488EEA    mov         al,byte ptr [eax+2]
 00488EED    mov         edx,dword ptr [ebp-14]
 00488EF0    mov         byte ptr [edx+2],al
 00488EF3    mov         eax,dword ptr [ebp-18]
 00488EF6    mov         al,byte ptr [eax+1]
 00488EF9    mov         edx,dword ptr [ebp-14]
 00488EFC    mov         byte ptr [edx+1],al
 00488EFF    mov         eax,dword ptr [ebp-18]
 00488F02    mov         al,byte ptr [eax]
 00488F04    mov         edx,dword ptr [ebp-14]
 00488F07    mov         byte ptr [edx],al
 00488F09    mov         eax,dword ptr [ebp-14]
 00488F0C    mov         byte ptr [eax+3],0
 00488F10    dec         dword ptr [ebp-8]
 00488F13    cmp         dword ptr [ebp-8],0
>00488F17    jne         00488ECC
 00488F19    mov         eax,dword ptr [ebp-10]
 00488F1C    mov         byte ptr [eax+3],0
 00488F20    mov         esp,ebp
 00488F22    pop         ebp
 00488F23    ret
end;*}

//00488F24
{*procedure sub_00488F24(?:?; ?:LongWord);
begin
 00488F24    push        ebp
 00488F25    mov         ebp,esp
 00488F27    add         esp,0FFFFFFE0
 00488F2A    mov         dword ptr [ebp-8],edx
 00488F2D    mov         dword ptr [ebp-4],eax
 00488F30    mov         eax,dword ptr [ebp-4]
 00488F33    mov         dword ptr [ebp-10],eax
 00488F36    mov         eax,dword ptr [ebp-10]
 00488F39    mov         dword ptr [ebp-14],eax
 00488F3C    mov         eax,dword ptr [ebp-8]
 00488F3F    mov         eax,dword ptr [eax]
 00488F41    dec         eax
 00488F42    test        eax,eax
>00488F44    jle         00488F95
 00488F46    mov         dword ptr [ebp-18],eax
 00488F49    mov         dword ptr [ebp-0C],1
 00488F50    mov         eax,dword ptr [ebp-14]
 00488F53    mov         edx,dword ptr [ebp-0C]
 00488F56    lea         eax,[eax+edx*4]
 00488F59    mov         dword ptr [ebp-1C],eax
 00488F5C    mov         eax,dword ptr [ebp-0C]
 00488F5F    lea         eax,[eax+eax*2]
 00488F62    mov         edx,dword ptr [ebp-10]
 00488F65    lea         eax,[edx+eax]
 00488F68    mov         dword ptr [ebp-20],eax
 00488F6B    mov         eax,dword ptr [ebp-1C]
 00488F6E    mov         al,byte ptr [eax+2]
 00488F71    mov         edx,dword ptr [ebp-20]
 00488F74    mov         byte ptr [edx+2],al
 00488F77    mov         eax,dword ptr [ebp-1C]
 00488F7A    mov         al,byte ptr [eax+1]
 00488F7D    mov         edx,dword ptr [ebp-20]
 00488F80    mov         byte ptr [edx+1],al
 00488F83    mov         eax,dword ptr [ebp-1C]
 00488F86    mov         al,byte ptr [eax]
 00488F88    mov         edx,dword ptr [ebp-20]
 00488F8B    mov         byte ptr [edx],al
 00488F8D    inc         dword ptr [ebp-0C]
 00488F90    dec         dword ptr [ebp-18]
>00488F93    jne         00488F50
 00488F95    mov         eax,dword ptr [ebp-8]
 00488F98    cmp         dword ptr [eax],100
>00488F9E    jge         00488FCB
 00488FA0    mov         eax,dword ptr [ebp-8]
 00488FA3    mov         edx,100
 00488FA8    sub         edx,dword ptr [eax]
 00488FAA    lea         edx,[edx+edx*2]
 00488FAD    mov         eax,dword ptr [ebp-8]
 00488FB0    mov         eax,dword ptr [eax]
 00488FB2    lea         eax,[eax+eax*2]
 00488FB5    mov         ecx,dword ptr [ebp-10]
 00488FB8    lea         eax,[ecx+eax]
 00488FBB    xor         ecx,ecx
 00488FBD    call        @FillChar
 00488FC2    mov         eax,dword ptr [ebp-8]
 00488FC5    mov         dword ptr [eax],100
 00488FCB    mov         esp,ebp
 00488FCD    pop         ebp
 00488FCE    ret
end;*}

//00488FD0
procedure ByteSwapColors(var Colors:void ; Count:Integer);
begin
{*
 00488FD0    push        ebp
 00488FD1    mov         ebp,esp
 00488FD3    add         esp,0FFFFFFD4
 00488FD6    mov         dword ptr [ebp-8],edx
 00488FD9    mov         dword ptr [ebp-4],eax
 00488FDC    lea         eax,[ebp-2C]
 00488FDF    push        eax
 00488FE0    call        kernel32.GetSystemInfo
 00488FE5    mov         edx,dword ptr [ebp-4]
 00488FE8    mov         ecx,dword ptr [ebp-8]
 00488FEB    dec         ecx
>00488FEC    js          00489021
 00488FEE    lea         eax,[ebp-2C]
 00488FF1    cmp         word ptr [eax+20],3
>00488FF6    je          00489008
 00488FF8    mov         eax,dword ptr [edx+ecx*4]
 00488FFB    bswap       eax
 00488FFD    shr         eax,8
 00489000    mov         dword ptr [edx+ecx*4],eax
 00489003    dec         ecx
>00489004    jns         00488FF8
>00489006    jmp         00489021
 00489008    push        ebx
 00489009    xor         ebx,ebx
 0048900B    mov         eax,dword ptr [edx+ecx*4]
 0048900E    mov         bh,al
 00489010    mov         bl,ah
 00489012    shr         eax,10
 00489015    shl         ebx,8
 00489018    mov         bl,al
 0048901A    mov         dword ptr [edx+ecx*4],ebx
 0048901D    dec         ecx
>0048901E    jns         00489009
 00489020    pop         ebx
 00489021    mov         esp,ebp
 00489023    pop         ebp
 00489024    ret
*}
end;

//00489028
{*function sub_00489028(?:?; ?:?):?;
begin
 00489028    push        ebp
 00489029    mov         ebp,esp
 0048902B    add         esp,0FFFFFBE8
 00489031    mov         dword ptr [ebp-14],edx
 00489034    mov         dword ptr [ebp-4],eax
 00489037    mov         word ptr [ebp-418],300
 00489040    mov         word ptr [ebp-416],10
 00489049    lea         edx,[ebp-414]
 0048904F    mov         eax,dword ptr [ebp-4]
 00489052    mov         ecx,40
 00489057    call        Move
 0048905C    push        0
 0048905E    call        user32.GetDC
 00489063    mov         dword ptr [ebp-0C],eax
 00489066    xor         eax,eax
 00489068    push        ebp
 00489069    push        489136
 0048906E    push        dword ptr fs:[eax]
 00489071    mov         dword ptr fs:[eax],esp
 00489074    push        68
 00489076    mov         eax,dword ptr [ebp-0C]
 00489079    push        eax
 0048907A    call        gdi32.GetDeviceCaps
 0048907F    mov         dword ptr [ebp-10],eax
 00489082    cmp         dword ptr [ebp-10],10
>00489086    jl          0048911D
 0048908C    lea         eax,[ebp-414]
 00489092    push        eax
 00489093    push        8
 00489095    push        0
 00489097    mov         eax,dword ptr [ebp-0C]
 0048909A    push        eax
 0048909B    call        gdi32.GetSystemPaletteEntries
 004890A0    cmp         dword ptr [ebp-3F8],0C0C0C0
>004890AA    jne         004890FC
 004890AC    lea         eax,[ebp-3F8]
 004890B2    push        eax
 004890B3    push        1
 004890B5    mov         eax,dword ptr [ebp-10]
 004890B8    sub         eax,8
 004890BB    push        eax
 004890BC    mov         eax,dword ptr [ebp-0C]
 004890BF    push        eax
 004890C0    call        gdi32.GetSystemPaletteEntries
 004890C5    movzx       eax,word ptr [ebp-416]
 004890CC    lea         eax,[ebp+eax*4-430]
 004890D3    push        eax
 004890D4    push        7
 004890D6    mov         eax,dword ptr [ebp-10]
 004890D9    sub         eax,7
 004890DC    push        eax
 004890DD    mov         eax,dword ptr [ebp-0C]
 004890E0    push        eax
 004890E1    call        gdi32.GetSystemPaletteEntries
 004890E6    lea         eax,[ebp-3F4]
 004890EC    push        eax
 004890ED    push        1
 004890EF    push        7
 004890F1    mov         eax,dword ptr [ebp-0C]
 004890F4    push        eax
 004890F5    call        gdi32.GetSystemPaletteEntries
>004890FA    jmp         0048911D
 004890FC    movzx       eax,word ptr [ebp-416]
 00489103    lea         eax,[ebp+eax*4-434]
 0048910A    push        eax
 0048910B    push        8
 0048910D    mov         eax,dword ptr [ebp-10]
 00489110    sub         eax,8
 00489113    push        eax
 00489114    mov         eax,dword ptr [ebp-0C]
 00489117    push        eax
 00489118    call        gdi32.GetSystemPaletteEntries
 0048911D    xor         eax,eax
 0048911F    pop         edx
 00489120    pop         ecx
 00489121    pop         ecx
 00489122    mov         dword ptr fs:[eax],edx
 00489125    push        48913D
 0048912A    mov         eax,dword ptr [ebp-0C]
 0048912D    push        eax
 0048912E    push        0
 00489130    call        user32.ReleaseDC
 00489135    ret
>00489136    jmp         @HandleFinally
>0048913B    jmp         0048912A
 0048913D    lea         eax,[ebp-418]
 00489143    push        eax
 00489144    call        gdi32.CreatePalette
 00489149    mov         dword ptr [ebp-8],eax
 0048914C    mov         eax,dword ptr [ebp-8]
 0048914F    mov         esp,ebp
 00489151    pop         ebp
 00489152    ret
end;*}

//00489154
{*function sub_00489154(?:?):?;
begin
 00489154    push        ebp
 00489155    mov         ebp,esp
 00489157    add         esp,0FFFFFFF0
 0048915A    mov         dword ptr [ebp-4],eax
 0048915D    mov         byte ptr [ebp-5],0
 00489161    cmp         dword ptr ds:[55DB10],0;gvar_0055DB10
>00489168    je          004891F2
 0048916E    push        0
 00489170    call        user32.GetDC
 00489175    mov         dword ptr [ebp-0C],eax
 00489178    xor         eax,eax
 0048917A    push        ebp
 0048917B    push        4891EB
 00489180    push        dword ptr fs:[eax]
 00489183    mov         dword ptr fs:[eax],esp
 00489186    push        68
 00489188    mov         eax,dword ptr [ebp-0C]
 0048918B    push        eax
 0048918C    call        gdi32.GetDeviceCaps
 00489191    mov         dword ptr [ebp-10],eax
 00489194    cmp         dword ptr [ebp-10],10
>00489198    jl          004891D2
 0048919A    mov         eax,dword ptr [ebp-4]
 0048919D    add         eax,4
 004891A0    push        eax
 004891A1    push        8
 004891A3    push        0
 004891A5    mov         eax,[0055DB10];gvar_0055DB10
 004891AA    push        eax
 004891AB    call        gdi32.GetPaletteEntries
 004891B0    mov         eax,dword ptr [ebp-4]
 004891B3    movzx       eax,word ptr [eax+2]
 004891B7    mov         edx,dword ptr [ebp-4]
 004891BA    lea         eax,[edx+eax*4-1C]
 004891BE    push        eax
 004891BF    push        8
 004891C1    push        8
 004891C3    mov         eax,[0055DB10];gvar_0055DB10
 004891C8    push        eax
 004891C9    call        gdi32.GetPaletteEntries
 004891CE    mov         byte ptr [ebp-5],1
 004891D2    xor         eax,eax
 004891D4    pop         edx
 004891D5    pop         ecx
 004891D6    pop         ecx
 004891D7    mov         dword ptr fs:[eax],edx
 004891DA    push        4891F2
 004891DF    mov         eax,dword ptr [ebp-0C]
 004891E2    push        eax
 004891E3    push        0
 004891E5    call        user32.ReleaseDC
 004891EA    ret
>004891EB    jmp         @HandleFinally
>004891F0    jmp         004891DF
 004891F2    mov         al,byte ptr [ebp-5]
 004891F5    mov         esp,ebp
 004891F7    pop         ebp
 004891F8    ret
end;*}

//004891FC
{*function sub_004891FC(?:HBITMAP; ?:?; ?:?):?;
begin
 004891FC    push        ebp
 004891FD    mov         ebp,esp
 004891FF    add         esp,0FFFFFBE4
 00489205    mov         dword ptr [ebp-0C],ecx
 00489208    mov         dword ptr [ebp-8],edx
 0048920B    mov         dword ptr [ebp-4],eax
 0048920E    xor         eax,eax
 00489210    mov         dword ptr [ebp-10],eax
 00489213    mov         word ptr [ebp-41C],300
 0048921C    cmp         dword ptr [ebp-4],0
>00489220    je          00489272
 00489222    push        0
 00489224    call        gdi32.CreateCompatibleDC
 00489229    mov         dword ptr [ebp-14],eax
 0048922C    mov         eax,dword ptr [ebp-4]
 0048922F    push        eax
 00489230    mov         eax,dword ptr [ebp-14]
 00489233    push        eax
 00489234    call        gdi32.SelectObject
 00489239    mov         dword ptr [ebp-18],eax
 0048923C    lea         eax,[ebp-418]
 00489242    push        eax
 00489243    push        100
 00489248    push        0
 0048924A    mov         eax,dword ptr [ebp-14]
 0048924D    push        eax
 0048924E    call        gdi32.GetDIBColorTable
 00489253    mov         word ptr [ebp-41A],ax
 0048925A    mov         eax,dword ptr [ebp-18]
 0048925D    push        eax
 0048925E    mov         eax,dword ptr [ebp-14]
 00489261    push        eax
 00489262    call        gdi32.SelectObject
 00489267    mov         eax,dword ptr [ebp-14]
 0048926A    push        eax
 0048926B    call        gdi32.DeleteDC
>00489270    jmp         00489291
 00489272    mov         ax,word ptr [ebp-0C]
 00489276    mov         word ptr [ebp-41A],ax
 0048927D    mov         ecx,dword ptr [ebp-0C]
 00489280    shl         ecx,2
 00489283    lea         edx,[ebp-418]
 00489289    mov         eax,dword ptr [ebp-8]
 0048928C    call        Move
 00489291    cmp         word ptr [ebp-41A],0
>00489299    je          004892D5
 0048929B    cmp         word ptr [ebp-41A],10
>004892A3    jne         004892B4
 004892A5    lea         eax,[ebp-41C]
 004892AB    call        00489154
 004892B0    test        al,al
>004892B2    jne         004892C6
 004892B4    movzx       edx,word ptr [ebp-41A]
 004892BB    lea         eax,[ebp-418]
 004892C1    call        ByteSwapColors
 004892C6    lea         eax,[ebp-41C]
 004892CC    push        eax
 004892CD    call        gdi32.CreatePalette
 004892D2    mov         dword ptr [ebp-10],eax
 004892D5    mov         eax,dword ptr [ebp-10]
 004892D8    mov         esp,ebp
 004892DA    pop         ebp
 004892DB    ret
end;*}

//004892DC
{*function sub_004892DC(?:HPALETTE; ?:?; ?:?):?;
begin
 004892DC    push        ebp
 004892DD    mov         ebp,esp
 004892DF    add         esp,0FFFFFFF0
 004892E2    mov         dword ptr [ebp-0C],ecx
 004892E5    mov         dword ptr [ebp-8],edx
 004892E8    mov         dword ptr [ebp-4],eax
 004892EB    xor         eax,eax
 004892ED    mov         dword ptr [ebp-10],eax
 004892F0    cmp         dword ptr [ebp-4],0
>004892F4    je          0048933D
 004892F6    lea         eax,[ebp-10]
 004892F9    push        eax
 004892FA    push        4
 004892FC    mov         eax,dword ptr [ebp-4]
 004892FF    push        eax
 00489300    call        gdi32.GetObjectA
 00489305    test        eax,eax
>00489307    je          0048933D
 00489309    cmp         dword ptr [ebp-10],0
>0048930D    je          0048933D
 0048930F    mov         eax,dword ptr [ebp-0C]
 00489312    inc         eax
 00489313    cmp         eax,dword ptr [ebp-10]
>00489316    jge         0048931F
 00489318    mov         eax,dword ptr [ebp-0C]
 0048931B    inc         eax
 0048931C    mov         dword ptr [ebp-10],eax
 0048931F    mov         eax,dword ptr [ebp-8]
 00489322    push        eax
 00489323    mov         eax,dword ptr [ebp-10]
 00489326    push        eax
 00489327    push        0
 00489329    mov         eax,dword ptr [ebp-4]
 0048932C    push        eax
 0048932D    call        gdi32.GetPaletteEntries
 00489332    mov         eax,dword ptr [ebp-8]
 00489335    mov         edx,dword ptr [ebp-10]
 00489338    call        ByteSwapColors
 0048933D    mov         eax,dword ptr [ebp-10]
 00489340    mov         esp,ebp
 00489342    pop         ebp
 00489343    ret
end;*}

//00489344
{*procedure sub_00489344(?:?; ?:?; ?:?; ?:?);
begin
 00489344    push        ebp
 00489345    mov         ebp,esp
 00489347    add         esp,0FFFFFFE0
 0048934A    mov         dword ptr [ebp-0C],ecx
 0048934D    mov         dword ptr [ebp-8],edx
 00489350    mov         dword ptr [ebp-4],eax
 00489353    mov         eax,dword ptr [ebp-4]
 00489356    shr         dword ptr [eax+8],1
 00489359    mov         edx,dword ptr [ebp-4]
 0048935C    movzx       edx,word ptr [edx+0E]
 00489360    mov         eax,dword ptr [ebp-4]
 00489363    mov         eax,dword ptr [eax+4]
 00489366    mov         ecx,20
 0048936B    call        00488BA4
 00489370    mov         edx,dword ptr [ebp-4]
 00489373    imul        dword ptr [edx+8]
 00489376    mov         edx,dword ptr [ebp-4]
 00489379    mov         dword ptr [edx+14],eax
 0048937C    mov         eax,dword ptr [ebp-4]
 0048937F    mov         ax,word ptr [eax+0E]
 00489383    call        00488B68
 00489388    mov         dword ptr [ebp-14],eax
 0048938B    push        0
 0048938D    call        user32.GetDC
 00489392    mov         dword ptr [ebp-18],eax
 00489395    cmp         dword ptr [ebp-18],0
>00489399    jne         004893A0
 0048939B    call        OutOfResources
 004893A0    xor         eax,eax
 004893A2    push        ebp
 004893A3    push        4894F9
 004893A8    push        dword ptr fs:[eax]
 004893AB    mov         dword ptr fs:[eax],esp
 004893AE    mov         eax,dword ptr [ebp-4]
 004893B1    add         eax,28
 004893B4    mov         edx,dword ptr [ebp-14]
 004893B7    shl         edx,2
 004893BA    add         eax,edx
 004893BC    mov         dword ptr [ebp-1C],eax
 004893BF    push        0
 004893C1    mov         eax,dword ptr [ebp-4]
 004893C4    push        eax
 004893C5    mov         eax,dword ptr [ebp-1C]
 004893C8    push        eax
 004893C9    push        4
 004893CB    mov         eax,dword ptr [ebp-4]
 004893CE    push        eax
 004893CF    mov         eax,dword ptr [ebp-18]
 004893D2    push        eax
 004893D3    call        gdi32.CreateDIBitmap
 004893D8    call        004889D8
 004893DD    mov         dword ptr [ebp-10],eax
 004893E0    xor         eax,eax
 004893E2    push        ebp
 004893E3    push        489417
 004893E8    push        dword ptr fs:[eax]
 004893EB    mov         dword ptr fs:[eax],esp
 004893EE    mov         edx,dword ptr [ebp+8]
 004893F1    xor         ecx,ecx
 004893F3    mov         eax,dword ptr [ebp-10]
 004893F6    call        004889FC
 004893FB    mov         edx,dword ptr [ebp-8]
 004893FE    mov         dword ptr [edx],eax
 00489400    xor         eax,eax
 00489402    pop         edx
 00489403    pop         ecx
 00489404    pop         ecx
 00489405    mov         dword ptr fs:[eax],edx
 00489408    push        48941E
 0048940D    mov         eax,dword ptr [ebp-10]
 00489410    push        eax
 00489411    call        gdi32.DeleteObject
 00489416    ret
>00489417    jmp         @HandleFinally
>0048941C    jmp         0048940D
 0048941E    mov         eax,dword ptr [ebp-4]
 00489421    mov         eax,dword ptr [eax+14]
 00489424    add         dword ptr [ebp-1C],eax
 00489427    mov         eax,dword ptr [ebp-4]
 0048942A    mov         word ptr [eax+0E],1
 00489430    mov         edx,dword ptr [ebp-4]
 00489433    movzx       edx,word ptr [edx+0E]
 00489437    mov         eax,dword ptr [ebp-4]
 0048943A    mov         eax,dword ptr [eax+4]
 0048943D    mov         ecx,20
 00489442    call        00488BA4
 00489447    mov         edx,dword ptr [ebp-4]
 0048944A    imul        dword ptr [edx+8]
 0048944D    mov         edx,dword ptr [ebp-4]
 00489450    mov         dword ptr [edx+14],eax
 00489453    mov         eax,dword ptr [ebp-4]
 00489456    mov         dword ptr [eax+20],2
 0048945D    mov         eax,dword ptr [ebp-4]
 00489460    mov         dword ptr [eax+24],2
 00489467    mov         eax,dword ptr [ebp-4]
 0048946A    add         eax,28
 0048946D    mov         dword ptr [ebp-20],eax
 00489470    mov         eax,dword ptr [ebp-20]
 00489473    xor         edx,edx
 00489475    mov         dword ptr [eax],edx
 00489477    mov         eax,dword ptr [ebp-20]
 0048947A    mov         dword ptr [eax+4],0FFFFFF
 00489481    push        0
 00489483    mov         eax,dword ptr [ebp-4]
 00489486    push        eax
 00489487    mov         eax,dword ptr [ebp-1C]
 0048948A    push        eax
 0048948B    push        4
 0048948D    mov         eax,dword ptr [ebp-4]
 00489490    push        eax
 00489491    mov         eax,dword ptr [ebp-18]
 00489494    push        eax
 00489495    call        gdi32.CreateDIBitmap
 0048949A    call        004889D8
 0048949F    mov         dword ptr [ebp-10],eax
 004894A2    xor         eax,eax
 004894A4    push        ebp
 004894A5    push        4894D9
 004894AA    push        dword ptr fs:[eax]
 004894AD    mov         dword ptr fs:[eax],esp
 004894B0    mov         edx,dword ptr [ebp+8]
 004894B3    mov         cl,1
 004894B5    mov         eax,dword ptr [ebp-10]
 004894B8    call        004889FC
 004894BD    mov         edx,dword ptr [ebp-0C]
 004894C0    mov         dword ptr [edx],eax
 004894C2    xor         eax,eax
 004894C4    pop         edx
 004894C5    pop         ecx
 004894C6    pop         ecx
 004894C7    mov         dword ptr fs:[eax],edx
 004894CA    push        4894E0
 004894CF    mov         eax,dword ptr [ebp-10]
 004894D2    push        eax
 004894D3    call        gdi32.DeleteObject
 004894D8    ret
>004894D9    jmp         @HandleFinally
>004894DE    jmp         004894CF
 004894E0    xor         eax,eax
 004894E2    pop         edx
 004894E3    pop         ecx
 004894E4    pop         ecx
 004894E5    mov         dword ptr fs:[eax],edx
 004894E8    push        489500
 004894ED    mov         eax,dword ptr [ebp-18]
 004894F0    push        eax
 004894F1    push        0
 004894F3    call        user32.ReleaseDC
 004894F8    ret
>004894F9    jmp         @HandleFinally
>004894FE    jmp         004894ED
 00489500    mov         esp,ebp
 00489502    pop         ebp
 00489503    ret         4
end;*}

//00489508
{*function sub_00489508(?:?):?;
begin
 00489508    push        ebp
 00489509    mov         ebp,esp
 0048950B    add         esp,0FFFFFFF8
 0048950E    mov         dword ptr [ebp-4],eax
 00489511    cmp         dword ptr [ebp-4],0
>00489515    jne         00489520
 00489517    mov         dword ptr [ebp-8],7FFFFFFF
>0048951E    jmp         00489526
 00489520    mov         eax,dword ptr [ebp-4]
 00489523    mov         dword ptr [ebp-8],eax
 00489526    mov         eax,dword ptr [ebp-8]
 00489529    pop         ecx
 0048952A    pop         ecx
 0048952B    pop         ebp
 0048952C    ret
end;*}

//00489530
{*function sub_00489530(?:Integer; ?:Integer; ?:?):?;
begin
 00489530    push        ebp
 00489531    mov         ebp,esp
 00489533    add         esp,0FFFFFFE4
 00489536    mov         dword ptr [ebp-8],edx
 00489539    mov         dword ptr [ebp-4],eax
 0048953C    mov         eax,dword ptr [ebp-8]
 0048953F    movzx       eax,byte ptr [eax]
 00489542    mov         edx,dword ptr [ebp+8]
 00489545    mov         edx,dword ptr [edx+8]
 00489548    sub         eax,dword ptr [edx]
 0048954A    mov         dword ptr [ebp-10],eax
 0048954D    mov         eax,dword ptr [ebp-8]
 00489550    movzx       eax,byte ptr [eax+1]
 00489554    mov         edx,dword ptr [ebp+8]
 00489557    mov         edx,dword ptr [edx+8]
 0048955A    sub         eax,dword ptr [edx+4]
 0048955D    mov         dword ptr [ebp-14],eax
 00489560    mov         eax,dword ptr [ebp-4]
 00489563    movzx       eax,byte ptr [eax]
 00489566    mov         edx,dword ptr [ebp+8]
 00489569    mov         edx,dword ptr [edx+8]
 0048956C    sub         eax,dword ptr [edx]
 0048956E    mov         dword ptr [ebp-18],eax
 00489571    mov         eax,dword ptr [ebp-4]
 00489574    movzx       eax,byte ptr [eax+1]
 00489578    mov         edx,dword ptr [ebp+8]
 0048957B    mov         edx,dword ptr [edx+8]
 0048957E    sub         eax,dword ptr [edx+4]
 00489581    mov         dword ptr [ebp-1C],eax
 00489584    mov         eax,dword ptr [ebp-10]
 00489587    cdq
 00489588    xor         eax,edx
 0048958A    sub         eax,edx
 0048958C    mov         ecx,eax
 0048958E    mov         eax,dword ptr [ebp-18]
 00489591    cdq
 00489592    xor         eax,edx
 00489594    sub         eax,edx
 00489596    cmp         ecx,eax
>00489598    jg          004895CC
 0048959A    cmp         dword ptr [ebp-10],0
>0048959E    jle         004895A8
 004895A0    mov         eax,dword ptr [ebp-10]
 004895A3    cmp         eax,dword ptr [ebp-18]
>004895A6    jg          004895CC
 004895A8    mov         eax,dword ptr [ebp-14]
 004895AB    cdq
 004895AC    xor         eax,edx
 004895AE    sub         eax,edx
 004895B0    mov         ecx,eax
 004895B2    mov         eax,dword ptr [ebp-1C]
 004895B5    cdq
 004895B6    xor         eax,edx
 004895B8    sub         eax,edx
 004895BA    cmp         ecx,eax
>004895BC    jg          004895CC
 004895BE    cmp         dword ptr [ebp-14],0
>004895C2    jle         004895D0
 004895C4    mov         eax,dword ptr [ebp-14]
 004895C7    cmp         eax,dword ptr [ebp-1C]
>004895CA    jle         004895D0
 004895CC    xor         eax,eax
>004895CE    jmp         004895D2
 004895D0    mov         al,1
 004895D2    mov         byte ptr [ebp-9],al
 004895D5    mov         al,byte ptr [ebp-9]
 004895D8    mov         esp,ebp
 004895DA    pop         ebp
 004895DB    ret
end;*}

//004895DC
{*procedure sub_004895DC(?:TCustomMemoryStream; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004895DC    push        ebp
 004895DD    mov         ebp,esp
 004895DF    add         esp,0FFFFFF74
 004895E5    push        ebx
 004895E6    mov         dword ptr [ebp-0C],ecx
 004895E9    mov         dword ptr [ebp-8],edx
 004895EC    mov         dword ptr [ebp-4],eax
 004895EF    mov         eax,dword ptr [ebp-0C]
 004895F2    shl         eax,4
 004895F5    mov         dword ptr [ebp-14],eax
 004895F8    mov         eax,dword ptr [ebp-14]
 004895FB    call        004660E8
 00489600    mov         dword ptr [ebp-10],eax
 00489603    xor         eax,eax
 00489605    push        ebp
 00489606    push        489918
 0048960B    push        dword ptr fs:[eax]
 0048960E    mov         dword ptr fs:[eax],esp
 00489611    mov         edx,dword ptr [ebp-10]
 00489614    mov         ecx,dword ptr [ebp-14]
 00489617    mov         eax,dword ptr [ebp-4]
 0048961A    mov         ebx,dword ptr [eax]
 0048961C    call        dword ptr [ebx+0C]
 0048961F    mov         eax,dword ptr [ebp+0C]
 00489622    mov         eax,dword ptr [eax]
 00489624    mov         edx,dword ptr [ebp+0C]
 00489627    or          eax,dword ptr [edx+4]
>0048962A    jne         00489647
 0048962C    push        0B
 0048962E    call        user32.GetSystemMetrics
 00489633    mov         edx,dword ptr [ebp+8]
 00489636    mov         dword ptr [edx],eax
 00489638    push        0C
 0048963A    call        user32.GetSystemMetrics
 0048963F    mov         edx,dword ptr [ebp+8]
 00489642    mov         dword ptr [edx+4],eax
>00489645    jmp         00489657
 00489647    mov         eax,dword ptr [ebp+8]
 0048964A    mov         edx,dword ptr [ebp+0C]
 0048964D    mov         ecx,dword ptr [edx]
 0048964F    mov         dword ptr [eax],ecx
 00489651    mov         ecx,dword ptr [edx+4]
 00489654    mov         dword ptr [eax+4],ecx
 00489657    push        0
 00489659    call        user32.GetDC
 0048965E    mov         dword ptr [ebp-34],eax
 00489661    cmp         dword ptr [ebp-34],0
>00489665    jne         0048966C
 00489667    call        OutOfResources
 0048966C    xor         eax,eax
 0048966E    push        ebp
 0048966F    push        4896D1
 00489674    push        dword ptr fs:[eax]
 00489677    mov         dword ptr fs:[eax],esp
 0048967A    push        0E
 0048967C    mov         eax,dword ptr [ebp-34]
 0048967F    push        eax
 00489680    call        gdi32.GetDeviceCaps
 00489685    mov         ebx,eax
 00489687    push        0C
 00489689    mov         eax,dword ptr [ebp-34]
 0048968C    push        eax
 0048968D    call        gdi32.GetDeviceCaps
 00489692    imul        bx,ax
 00489696    mov         word ptr [ebp-1A],bx
 0048969A    cmp         word ptr [ebp-1A],8
>0048969F    jbe         004896AA
 004896A1    mov         dword ptr [ebp-20],7FFFFFFF
>004896A8    jmp         004896B8
 004896AA    mov         cx,word ptr [ebp-1A]
 004896AE    mov         eax,1
 004896B3    shl         eax,cl
 004896B5    mov         dword ptr [ebp-20],eax
 004896B8    xor         eax,eax
 004896BA    pop         edx
 004896BB    pop         ecx
 004896BC    pop         ecx
 004896BD    mov         dword ptr fs:[eax],edx
 004896C0    push        4896D8
 004896C5    mov         eax,dword ptr [ebp-34]
 004896C8    push        eax
 004896C9    push        0
 004896CB    call        user32.ReleaseDC
 004896D0    ret
>004896D1    jmp         @HandleFinally
>004896D6    jmp         004896C5
 004896D8    xor         eax,eax
 004896DA    mov         dword ptr [ebp-30],eax
 004896DD    push        ebp
 004896DE    mov         eax,dword ptr [ebp-10]
 004896E1    movzx       eax,word ptr [eax+2]
 004896E5    call        00489508
 004896EA    pop         ecx
 004896EB    mov         dword ptr [ebp-24],eax
 004896EE    mov         eax,dword ptr [ebp-0C]
 004896F1    dec         eax
 004896F2    test        eax,eax
>004896F4    jle         0048975C
 004896F6    mov         dword ptr [ebp-58],eax
 004896F9    mov         dword ptr [ebp-2C],1
 00489700    push        ebp
 00489701    mov         eax,dword ptr [ebp-2C]
 00489704    add         eax,eax
 00489706    mov         edx,dword ptr [ebp-10]
 00489709    movzx       eax,word ptr [edx+eax*8+2]
 0048970E    call        00489508
 00489713    pop         ecx
 00489714    mov         dword ptr [ebp-28],eax
 00489717    mov         eax,dword ptr [ebp-28]
 0048971A    cmp         eax,dword ptr [ebp-20]
>0048971D    jg          00489754
 0048971F    mov         eax,dword ptr [ebp-28]
 00489722    cmp         eax,dword ptr [ebp-24]
>00489725    jl          00489754
 00489727    push        ebp
 00489728    mov         eax,dword ptr [ebp-2C]
 0048972B    add         eax,eax
 0048972D    mov         edx,dword ptr [ebp-10]
 00489730    lea         edx,[edx+eax*8]
 00489733    mov         eax,dword ptr [ebp-30]
 00489736    add         eax,eax
 00489738    mov         ecx,dword ptr [ebp-10]
 0048973B    lea         eax,[ecx+eax*8]
 0048973E    call        00489530
 00489743    pop         ecx
 00489744    test        al,al
>00489746    je          00489754
 00489748    mov         eax,dword ptr [ebp-2C]
 0048974B    mov         dword ptr [ebp-30],eax
 0048974E    mov         eax,dword ptr [ebp-28]
 00489751    mov         dword ptr [ebp-24],eax
 00489754    inc         dword ptr [ebp-2C]
 00489757    dec         dword ptr [ebp-58]
>0048975A    jne         00489700
 0048975C    mov         eax,dword ptr [ebp-30]
 0048975F    add         eax,eax
 00489761    mov         edx,dword ptr [ebp-10]
 00489764    lea         eax,[edx+eax*8]
 00489767    mov         dword ptr [ebp-5C],eax
 0048976A    mov         eax,dword ptr [ebp-5C]
 0048976D    movzx       eax,byte ptr [eax]
 00489770    mov         edx,dword ptr [ebp+8]
 00489773    mov         dword ptr [edx],eax
 00489775    mov         eax,dword ptr [ebp-5C]
 00489778    movzx       eax,byte ptr [eax+1]
 0048977C    mov         edx,dword ptr [ebp+8]
 0048977F    mov         dword ptr [edx+4],eax
 00489782    mov         eax,dword ptr [ebp-5C]
 00489785    mov         eax,dword ptr [eax+8]
 00489788    call        004660E8
 0048978D    mov         dword ptr [ebp-38],eax
 00489790    xor         eax,eax
 00489792    push        ebp
 00489793    push        4898F8
 00489798    push        dword ptr fs:[eax]
 0048979B    mov         dword ptr fs:[eax],esp
 0048979E    mov         eax,dword ptr [ebp-5C]
 004897A1    mov         edx,dword ptr [eax+0C]
 004897A4    mov         eax,dword ptr [ebp-14]
 004897A7    add         eax,dword ptr [ebp+10]
 004897AA    sub         edx,eax
 004897AC    mov         cx,1
 004897B0    mov         eax,dword ptr [ebp-4]
 004897B3    mov         ebx,dword ptr [eax]
 004897B5    call        dword ptr [ebx+14]
 004897B8    mov         eax,dword ptr [ebp-5C]
 004897BB    mov         ecx,dword ptr [eax+8]
 004897BE    mov         edx,dword ptr [ebp-38]
 004897C1    mov         eax,dword ptr [ebp-4]
 004897C4    mov         ebx,dword ptr [eax]
 004897C6    call        dword ptr [ebx+0C]
 004897C9    mov         eax,dword ptr [ebp+8]
 004897CC    push        eax
 004897CD    lea         ecx,[ebp-44]
 004897D0    lea         edx,[ebp-40]
 004897D3    mov         eax,dword ptr [ebp-38]
 004897D6    call        00489344
 004897DB    lea         eax,[ebp-8C]
 004897E1    push        eax
 004897E2    push        18
 004897E4    mov         eax,dword ptr [ebp-44]
 004897E7    push        eax
 004897E8    call        gdi32.GetObjectA
 004897ED    lea         eax,[ebp-74]
 004897F0    push        eax
 004897F1    push        18
 004897F3    mov         eax,dword ptr [ebp-40]
 004897F6    push        eax
 004897F7    call        gdi32.GetObjectA
 004897FC    mov         eax,dword ptr [ebp-80]
 004897FF    imul        dword ptr [ebp-84]
 00489805    movzx       edx,word ptr [ebp-7C]
 00489809    imul        edx
 0048980B    mov         dword ptr [ebp-54],eax
 0048980E    mov         eax,dword ptr [ebp-68]
 00489811    imul        dword ptr [ebp-6C]
 00489814    movzx       edx,word ptr [ebp-64]
 00489818    imul        edx
 0048981A    mov         dword ptr [ebp-50],eax
 0048981D    mov         eax,dword ptr [ebp-54]
 00489820    add         eax,dword ptr [ebp-50]
 00489823    mov         dword ptr [ebp-18],eax
 00489826    mov         eax,dword ptr [ebp-18]
 00489829    call        004660E8
 0048982E    mov         dword ptr [ebp-3C],eax
 00489831    xor         eax,eax
 00489833    push        ebp
 00489834    push        4898D5
 00489839    push        dword ptr fs:[eax]
 0048983C    mov         dword ptr fs:[eax],esp
 0048983F    mov         eax,dword ptr [ebp-3C]
 00489842    mov         dword ptr [ebp-4C],eax
 00489845    mov         eax,dword ptr [ebp-3C]
 00489848    add         eax,dword ptr [ebp-54]
 0048984B    mov         dword ptr [ebp-48],eax
 0048984E    mov         eax,dword ptr [ebp-4C]
 00489851    push        eax
 00489852    mov         eax,dword ptr [ebp-54]
 00489855    push        eax
 00489856    mov         eax,dword ptr [ebp-44]
 00489859    push        eax
 0048985A    call        gdi32.GetBitmapBits
 0048985F    mov         eax,dword ptr [ebp-48]
 00489862    push        eax
 00489863    mov         eax,dword ptr [ebp-50]
 00489866    push        eax
 00489867    mov         eax,dword ptr [ebp-40]
 0048986A    push        eax
 0048986B    call        gdi32.GetBitmapBits
 00489870    mov         eax,dword ptr [ebp-40]
 00489873    push        eax
 00489874    call        gdi32.DeleteObject
 00489879    mov         eax,dword ptr [ebp-44]
 0048987C    push        eax
 0048987D    call        gdi32.DeleteObject
 00489882    mov         eax,dword ptr [ebp-48]
 00489885    push        eax
 00489886    mov         eax,dword ptr [ebp-4C]
 00489889    push        eax
 0048988A    mov         al,byte ptr [ebp-62]
 0048988D    push        eax
 0048988E    mov         al,byte ptr [ebp-64]
 00489891    push        eax
 00489892    mov         eax,dword ptr [ebp+8]
 00489895    mov         eax,dword ptr [eax+4]
 00489898    push        eax
 00489899    mov         eax,dword ptr [ebp+8]
 0048989C    mov         eax,dword ptr [eax]
 0048989E    push        eax
 0048989F    mov         eax,[0055C664];gvar_0055C664
 004898A4    push        eax
 004898A5    call        user32.CreateIcon
 004898AA    mov         edx,dword ptr [ebp-8]
 004898AD    mov         dword ptr [edx],eax
 004898AF    mov         eax,dword ptr [ebp-8]
 004898B2    cmp         dword ptr [eax],0
>004898B5    jne         004898BC
 004898B7    call        0048892C
 004898BC    xor         eax,eax
 004898BE    pop         edx
 004898BF    pop         ecx
 004898C0    pop         ecx
 004898C1    mov         dword ptr fs:[eax],edx
 004898C4    push        4898DC
 004898C9    mov         edx,dword ptr [ebp-18]
 004898CC    mov         eax,dword ptr [ebp-3C]
 004898CF    call        @FreeMem
 004898D4    ret
>004898D5    jmp         @HandleFinally
>004898DA    jmp         004898C9
 004898DC    xor         eax,eax
 004898DE    pop         edx
 004898DF    pop         ecx
 004898E0    pop         ecx
 004898E1    mov         dword ptr fs:[eax],edx
 004898E4    push        4898FF
 004898E9    mov         eax,dword ptr [ebp-5C]
 004898EC    mov         edx,dword ptr [eax+8]
 004898EF    mov         eax,dword ptr [ebp-38]
 004898F2    call        @FreeMem
 004898F7    ret
>004898F8    jmp         @HandleFinally
>004898FD    jmp         004898E9
 004898FF    xor         eax,eax
 00489901    pop         edx
 00489902    pop         ecx
 00489903    pop         ecx
 00489904    mov         dword ptr fs:[eax],edx
 00489907    push        48991F
 0048990C    mov         edx,dword ptr [ebp-14]
 0048990F    mov         eax,dword ptr [ebp-10]
 00489912    call        @FreeMem
 00489917    ret
>00489918    jmp         @HandleFinally
>0048991D    jmp         0048990C
 0048991F    pop         ebx
 00489920    mov         esp,ebp
 00489922    pop         ebp
 00489923    ret         0C
end;*}

//00489928
{*function sub_00489928(?:Byte):?;
begin
 00489928    push        ebp
 00489929    mov         ebp,esp
 0048992B    add         esp,0FFFFFFF0
 0048992E    mov         dword ptr [ebp-4],eax
 00489931    mov         word ptr [ebp-6],0
 00489937    mov         eax,dword ptr [ebp-4]
 0048993A    mov         dword ptr [ebp-0C],eax
 0048993D    mov         eax,dword ptr [ebp-4]
 00489940    add         eax,14
 00489943    mov         dword ptr [ebp-10],eax
>00489946    jmp         00489956
 00489948    mov         eax,dword ptr [ebp-0C]
 0048994B    mov         ax,word ptr [eax]
 0048994E    xor         word ptr [ebp-6],ax
 00489952    add         dword ptr [ebp-0C],2
 00489956    mov         eax,dword ptr [ebp-0C]
 00489959    cmp         eax,dword ptr [ebp-10]
>0048995C    jl          00489948
 0048995E    mov         ax,word ptr [ebp-6]
 00489962    mov         esp,ebp
 00489964    pop         ebp
 00489965    ret
end;*}

//00489968
{*procedure sub_00489968(?:?; ?:?; ?:?);
begin
 00489968    push        ebp
 00489969    mov         ebp,esp
 0048996B    add         esp,0FFFFFF9C
 0048996E    push        esi
 0048996F    push        edi
 00489970    mov         dword ptr [ebp-0C],ecx
 00489973    mov         dword ptr [ebp-8],edx
 00489976    mov         dword ptr [ebp-4],eax
 00489979    xor         eax,eax
 0048997B    mov         dword ptr [ebp-4C],eax
 0048997E    lea         eax,[ebp-64]
 00489981    push        eax
 00489982    push        54
 00489984    mov         eax,dword ptr [ebp-4]
 00489987    push        eax
 00489988    call        gdi32.GetObjectA
 0048998D    mov         dword ptr [ebp-10],eax
 00489990    cmp         dword ptr [ebp-10],0
>00489994    jne         0048999D
 00489996    call        InvalidBitmap
>0048999B    jmp         004899E4
 0048999D    cmp         dword ptr [ebp-10],40
>004899A1    jl          004899BA
 004899A3    cmp         dword ptr [ebp-4C],28
>004899A7    jb          004899BA
 004899A9    mov         eax,dword ptr [ebp-8]
 004899AC    mov         edi,eax
 004899AE    lea         esi,[ebp-4C]
 004899B1    mov         ecx,0A
 004899B6    rep movs    dword ptr [edi],dword ptr [esi]
>004899B8    jmp         004899E4
 004899BA    mov         eax,dword ptr [ebp-8]
 004899BD    xor         ecx,ecx
 004899BF    mov         edx,28
 004899C4    call        @FillChar
 004899C9    mov         eax,dword ptr [ebp-8]
 004899CC    mov         dword ptr [eax],28
 004899D2    mov         eax,dword ptr [ebp-8]
 004899D5    mov         edx,dword ptr [ebp-60]
 004899D8    mov         dword ptr [eax+4],edx
 004899DB    mov         eax,dword ptr [ebp-8]
 004899DE    mov         edx,dword ptr [ebp-5C]
 004899E1    mov         dword ptr [eax+8],edx
 004899E4    mov         eax,dword ptr [ebp-0C]
 004899E7    sub         eax,2
>004899EA    je          004899FB
 004899EC    dec         eax
 004899ED    sub         eax,0E
>004899F0    jb          00489A06
 004899F2    sub         eax,0F0
>004899F7    jb          00489A1A
>004899F9    jmp         00489A2E
 004899FB    mov         eax,dword ptr [ebp-8]
 004899FE    mov         word ptr [eax+0E],1
>00489A04    jmp         00489A3D
 00489A06    mov         eax,dword ptr [ebp-8]
 00489A09    mov         word ptr [eax+0E],4
 00489A0F    mov         eax,dword ptr [ebp-8]
 00489A12    mov         edx,dword ptr [ebp-0C]
 00489A15    mov         dword ptr [eax+20],edx
>00489A18    jmp         00489A3D
 00489A1A    mov         eax,dword ptr [ebp-8]
 00489A1D    mov         word ptr [eax+0E],8
 00489A23    mov         eax,dword ptr [ebp-8]
 00489A26    mov         edx,dword ptr [ebp-0C]
 00489A29    mov         dword ptr [eax+20],edx
>00489A2C    jmp         00489A3D
 00489A2E    mov         ax,word ptr [ebp-52]
 00489A32    imul        word ptr [ebp-54]
 00489A36    mov         edx,dword ptr [ebp-8]
 00489A39    mov         word ptr [edx+0E],ax
 00489A3D    mov         eax,dword ptr [ebp-8]
 00489A40    mov         word ptr [eax+0C],1
 00489A46    mov         eax,dword ptr [ebp-8]
 00489A49    mov         eax,dword ptr [eax+24]
 00489A4C    mov         edx,dword ptr [ebp-8]
 00489A4F    cmp         eax,dword ptr [edx+20]
>00489A52    jbe         00489A60
 00489A54    mov         eax,dword ptr [ebp-8]
 00489A57    mov         eax,dword ptr [eax+20]
 00489A5A    mov         edx,dword ptr [ebp-8]
 00489A5D    mov         dword ptr [edx+24],eax
 00489A60    mov         eax,dword ptr [ebp-8]
 00489A63    cmp         dword ptr [eax+14],0
>00489A67    jne         00489A96
 00489A69    mov         edx,dword ptr [ebp-8]
 00489A6C    movzx       edx,word ptr [edx+0E]
 00489A70    mov         eax,dword ptr [ebp-8]
 00489A73    mov         eax,dword ptr [eax+4]
 00489A76    mov         ecx,20
 00489A7B    call        00488BA4
 00489A80    mov         ecx,eax
 00489A82    mov         eax,dword ptr [ebp-8]
 00489A85    mov         eax,dword ptr [eax+8]
 00489A88    cdq
 00489A89    xor         eax,edx
 00489A8B    sub         eax,edx
 00489A8D    imul        ecx,eax
 00489A90    mov         eax,dword ptr [ebp-8]
 00489A93    mov         dword ptr [eax+14],ecx
 00489A96    pop         edi
 00489A97    pop         esi
 00489A98    mov         esp,ebp
 00489A9A    pop         ebp
 00489A9B    ret
end;*}

//00489A9C
{*procedure sub_00489A9C(?:HBITMAP; ?:?; ?:Byte; ?:?);
begin
 00489A9C    push        ebp
 00489A9D    mov         ebp,esp
 00489A9F    add         esp,0FFFFFFCC
 00489AA2    mov         dword ptr [ebp-0C],ecx
 00489AA5    mov         dword ptr [ebp-8],edx
 00489AA8    mov         dword ptr [ebp-4],eax
 00489AAB    lea         edx,[ebp-34]
 00489AAE    mov         ecx,dword ptr [ebp+8]
 00489AB1    mov         eax,dword ptr [ebp-4]
 00489AB4    call        00489968
 00489AB9    cmp         word ptr [ebp-26],8
>00489ABE    jbe         00489AD7
 00489AC0    mov         eax,dword ptr [ebp-8]
 00489AC3    mov         dword ptr [eax],28
 00489AC9    test        byte ptr [ebp-24],3
>00489ACD    je          00489B03
 00489ACF    mov         eax,dword ptr [ebp-8]
 00489AD2    add         dword ptr [eax],0C
>00489AD5    jmp         00489B03
 00489AD7    cmp         dword ptr [ebp-14],0
>00489ADB    jne         00489AF5
 00489ADD    mov         cx,word ptr [ebp-26]
 00489AE1    mov         eax,1
 00489AE6    shl         eax,cl
 00489AE8    shl         eax,2
 00489AEB    add         eax,28
 00489AEE    mov         edx,dword ptr [ebp-8]
 00489AF1    mov         dword ptr [edx],eax
>00489AF3    jmp         00489B03
 00489AF5    mov         eax,dword ptr [ebp-14]
 00489AF8    shl         eax,2
 00489AFB    add         eax,28
 00489AFE    mov         edx,dword ptr [ebp-8]
 00489B01    mov         dword ptr [edx],eax
 00489B03    mov         eax,dword ptr [ebp-0C]
 00489B06    mov         edx,dword ptr [ebp-20]
 00489B09    mov         dword ptr [eax],edx
 00489B0B    mov         esp,ebp
 00489B0D    pop         ebp
 00489B0E    ret         4
end;*}

//00489B14
{*procedure sub_00489B14(?:?; ?:?; ?:?);
begin
 00489B14    push        ebp
 00489B15    mov         ebp,esp
 00489B17    add         esp,0FFFFFFF4
 00489B1A    mov         dword ptr [ebp-0C],ecx
 00489B1D    mov         dword ptr [ebp-8],edx
 00489B20    mov         dword ptr [ebp-4],eax
 00489B23    push        0
 00489B25    mov         ecx,dword ptr [ebp-0C]
 00489B28    mov         edx,dword ptr [ebp-8]
 00489B2B    mov         eax,dword ptr [ebp-4]
 00489B2E    call        00489A9C
 00489B33    mov         esp,ebp
 00489B35    pop         ebp
 00489B36    ret
end;*}

//00489B38
{*function sub_00489B38(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00489B38    push        ebp
 00489B39    mov         ebp,esp
 00489B3B    add         esp,0FFFFFFE8
 00489B3E    mov         dword ptr [ebp-0C],ecx
 00489B41    mov         dword ptr [ebp-8],edx
 00489B44    mov         dword ptr [ebp-4],eax
 00489B47    mov         edx,dword ptr [ebp-0C]
 00489B4A    mov         ecx,dword ptr [ebp+8]
 00489B4D    mov         eax,dword ptr [ebp-4]
 00489B50    call        00489968
 00489B55    xor         eax,eax
 00489B57    mov         dword ptr [ebp-14],eax
 00489B5A    push        0
 00489B5C    call        gdi32.CreateCompatibleDC
 00489B61    mov         dword ptr [ebp-18],eax
 00489B64    xor         eax,eax
 00489B66    push        ebp
 00489B67    push        489BE5
 00489B6C    push        dword ptr fs:[eax]
 00489B6F    mov         dword ptr fs:[eax],esp
 00489B72    cmp         dword ptr [ebp-8],0
>00489B76    je          00489B93
 00489B78    push        0
 00489B7A    mov         eax,dword ptr [ebp-8]
 00489B7D    push        eax
 00489B7E    mov         eax,dword ptr [ebp-18]
 00489B81    push        eax
 00489B82    call        gdi32.SelectPalette
 00489B87    mov         dword ptr [ebp-14],eax
 00489B8A    mov         eax,dword ptr [ebp-18]
 00489B8D    push        eax
 00489B8E    call        gdi32.RealizePalette
 00489B93    push        0
 00489B95    mov         eax,dword ptr [ebp-0C]
 00489B98    push        eax
 00489B99    mov         eax,dword ptr [ebp+0C]
 00489B9C    push        eax
 00489B9D    mov         eax,dword ptr [ebp-0C]
 00489BA0    mov         eax,dword ptr [eax+8]
 00489BA3    push        eax
 00489BA4    push        0
 00489BA6    mov         eax,dword ptr [ebp-4]
 00489BA9    push        eax
 00489BAA    mov         eax,dword ptr [ebp-18]
 00489BAD    push        eax
 00489BAE    call        gdi32.GetDIBits
 00489BB3    test        eax,eax
 00489BB5    setne       byte ptr [ebp-0D]
 00489BB9    xor         eax,eax
 00489BBB    pop         edx
 00489BBC    pop         ecx
 00489BBD    pop         ecx
 00489BBE    mov         dword ptr fs:[eax],edx
 00489BC1    push        489BEC
 00489BC6    cmp         dword ptr [ebp-14],0
>00489BCA    je          00489BDB
 00489BCC    push        0
 00489BCE    mov         eax,dword ptr [ebp-14]
 00489BD1    push        eax
 00489BD2    mov         eax,dword ptr [ebp-18]
 00489BD5    push        eax
 00489BD6    call        gdi32.SelectPalette
 00489BDB    mov         eax,dword ptr [ebp-18]
 00489BDE    push        eax
 00489BDF    call        gdi32.DeleteDC
 00489BE4    ret
>00489BE5    jmp         @HandleFinally
>00489BEA    jmp         00489BC6
 00489BEC    mov         al,byte ptr [ebp-0D]
 00489BEF    mov         esp,ebp
 00489BF1    pop         ebp
 00489BF2    ret         8
end;*}

//00489BF8
{*function sub_00489BF8(?:?; ?:?; ?:?; ?:?):?;
begin
 00489BF8    push        ebp
 00489BF9    mov         ebp,esp
 00489BFB    add         esp,0FFFFFFF0
 00489BFE    mov         dword ptr [ebp-0C],ecx
 00489C01    mov         dword ptr [ebp-8],edx
 00489C04    mov         dword ptr [ebp-4],eax
 00489C07    mov         eax,dword ptr [ebp+8]
 00489C0A    push        eax
 00489C0B    push        0
 00489C0D    mov         ecx,dword ptr [ebp-0C]
 00489C10    mov         edx,dword ptr [ebp-8]
 00489C13    mov         eax,dword ptr [ebp-4]
 00489C16    call        00489B38
 00489C1B    mov         byte ptr [ebp-0D],al
 00489C1E    mov         al,byte ptr [ebp-0D]
 00489C21    mov         esp,ebp
 00489C23    pop         ebp
 00489C24    ret         4
end;*}

//00489C28
procedure sub_00489C28;
begin
{*
 00489C28    ret
*}
end;

//00489C2C
procedure sub_00489C2C(?:LongBool);
begin
{*
 00489C2C    push        ebp
 00489C2D    mov         ebp,esp
 00489C2F    push        ecx
 00489C30    mov         dword ptr [ebp-4],eax
 00489C33    cmp         dword ptr [ebp-4],0
>00489C37    jne         00489C3E
 00489C39    call        00489C28
 00489C3E    pop         ecx
 00489C3F    pop         ebp
 00489C40    ret
*}
end;

//00489C44
{*procedure sub_00489C44(?:TMemoryStream; ?:?; ?:?);
begin
 00489C44    push        ebp
 00489C45    mov         ebp,esp
 00489C47    add         esp,0FFFFFF9C
 00489C4A    push        ebx
 00489C4B    mov         byte ptr [ebp-9],cl
 00489C4E    mov         dword ptr [ebp-8],edx
 00489C51    mov         dword ptr [ebp-4],eax
 00489C54    lea         eax,[ebp-32]
 00489C57    xor         ecx,ecx
 00489C59    mov         edx,6
 00489C5E    call        @FillChar
 00489C63    lea         eax,[ebp-64]
 00489C66    xor         ecx,ecx
 00489C68    mov         edx,10
 00489C6D    call        @FillChar
 00489C72    lea         eax,[ebp-54]
 00489C75    push        eax
 00489C76    mov         eax,dword ptr [ebp-8]
 00489C79    push        eax
 00489C7A    call        user32.GetIconInfo
 00489C7F    call        00489C2C
 00489C84    xor         eax,eax
 00489C86    push        ebp
 00489C87    push        489E51
 00489C8C    push        dword ptr fs:[eax]
 00489C8F    mov         dword ptr fs:[eax],esp
 00489C92    push        2
 00489C94    lea         ecx,[ebp-18]
 00489C97    lea         edx,[ebp-10]
 00489C9A    mov         eax,dword ptr [ebp-48]
 00489C9D    call        00489A9C
 00489CA2    push        10
 00489CA4    lea         ecx,[ebp-1C]
 00489CA7    lea         edx,[ebp-14]
 00489CAA    mov         eax,dword ptr [ebp-44]
 00489CAD    call        00489A9C
 00489CB2    xor         eax,eax
 00489CB4    mov         dword ptr [ebp-20],eax
 00489CB7    xor         eax,eax
 00489CB9    mov         dword ptr [ebp-24],eax
 00489CBC    xor         eax,eax
 00489CBE    mov         dword ptr [ebp-28],eax
 00489CC1    xor         eax,eax
 00489CC3    mov         dword ptr [ebp-2C],eax
 00489CC6    xor         eax,eax
 00489CC8    push        ebp
 00489CC9    push        489E2A
 00489CCE    push        dword ptr fs:[eax]
 00489CD1    mov         dword ptr fs:[eax],esp
 00489CD4    mov         eax,dword ptr [ebp-10]
 00489CD7    call        004660E8
 00489CDC    mov         dword ptr [ebp-20],eax
 00489CDF    mov         eax,dword ptr [ebp-18]
 00489CE2    call        004660E8
 00489CE7    mov         dword ptr [ebp-24],eax
 00489CEA    mov         eax,dword ptr [ebp-14]
 00489CED    call        004660E8
 00489CF2    mov         dword ptr [ebp-28],eax
 00489CF5    mov         eax,dword ptr [ebp-1C]
 00489CF8    call        004660E8
 00489CFD    mov         dword ptr [ebp-2C],eax
 00489D00    mov         eax,dword ptr [ebp-24]
 00489D03    push        eax
 00489D04    push        2
 00489D06    mov         ecx,dword ptr [ebp-20]
 00489D09    xor         edx,edx
 00489D0B    mov         eax,dword ptr [ebp-48]
 00489D0E    call        00489B38
 00489D13    mov         eax,dword ptr [ebp-2C]
 00489D16    push        eax
 00489D17    push        10
 00489D19    mov         ecx,dword ptr [ebp-28]
 00489D1C    xor         edx,edx
 00489D1E    mov         eax,dword ptr [ebp-44]
 00489D21    call        00489B38
 00489D26    cmp         byte ptr [ebp-9],0
>00489D2A    je          00489D4B
 00489D2C    mov         eax,dword ptr [ebp-14]
 00489D2F    add         eax,16
 00489D32    add         eax,dword ptr [ebp-1C]
 00489D35    add         eax,dword ptr [ebp-18]
 00489D38    mov         dword ptr [ebp-38],eax
 00489D3B    lea         edx,[ebp-38]
 00489D3E    mov         ecx,4
 00489D43    mov         eax,dword ptr [ebp-4]
 00489D46    mov         ebx,dword ptr [eax]
 00489D48    call        dword ptr [ebx+10]
 00489D4B    mov         word ptr [ebp-30],1
 00489D51    mov         word ptr [ebp-2E],1
 00489D57    lea         edx,[ebp-32]
 00489D5A    mov         ecx,6
 00489D5F    mov         eax,dword ptr [ebp-4]
 00489D62    mov         ebx,dword ptr [eax]
 00489D64    call        dword ptr [ebx+10]
 00489D67    mov         eax,dword ptr [ebp-28]
 00489D6A    mov         dword ptr [ebp-3C],eax
 00489D6D    mov         eax,dword ptr [ebp-3C]
 00489D70    mov         al,byte ptr [eax+4]
 00489D73    mov         byte ptr [ebp-64],al
 00489D76    mov         eax,dword ptr [ebp-3C]
 00489D79    mov         al,byte ptr [eax+8]
 00489D7C    mov         byte ptr [ebp-63],al
 00489D7F    mov         eax,dword ptr [ebp-3C]
 00489D82    mov         ax,word ptr [eax+0C]
 00489D86    mov         edx,dword ptr [ebp-3C]
 00489D89    imul        word ptr [edx+0E]
 00489D8D    mov         word ptr [ebp-62],ax
 00489D91    mov         eax,dword ptr [ebp-14]
 00489D94    add         eax,dword ptr [ebp-1C]
 00489D97    add         eax,dword ptr [ebp-18]
 00489D9A    mov         dword ptr [ebp-5C],eax
 00489D9D    mov         dword ptr [ebp-58],16
 00489DA4    lea         edx,[ebp-64]
 00489DA7    mov         ecx,10
 00489DAC    mov         eax,dword ptr [ebp-4]
 00489DAF    mov         ebx,dword ptr [eax]
 00489DB1    call        dword ptr [ebx+10]
 00489DB4    mov         eax,dword ptr [ebp-28]
 00489DB7    mov         dword ptr [ebp-40],eax
 00489DBA    mov         eax,dword ptr [ebp-40]
 00489DBD    mov         eax,dword ptr [eax+8]
 00489DC0    mov         edx,dword ptr [ebp-40]
 00489DC3    add         dword ptr [edx+8],eax
 00489DC6    mov         edx,dword ptr [ebp-28]
 00489DC9    mov         ecx,dword ptr [ebp-14]
 00489DCC    mov         eax,dword ptr [ebp-4]
 00489DCF    mov         ebx,dword ptr [eax]
 00489DD1    call        dword ptr [ebx+10]
 00489DD4    mov         edx,dword ptr [ebp-2C]
 00489DD7    mov         ecx,dword ptr [ebp-1C]
 00489DDA    mov         eax,dword ptr [ebp-4]
 00489DDD    mov         ebx,dword ptr [eax]
 00489DDF    call        dword ptr [ebx+10]
 00489DE2    mov         edx,dword ptr [ebp-24]
 00489DE5    mov         ecx,dword ptr [ebp-18]
 00489DE8    mov         eax,dword ptr [ebp-4]
 00489DEB    mov         ebx,dword ptr [eax]
 00489DED    call        dword ptr [ebx+10]
 00489DF0    xor         eax,eax
 00489DF2    pop         edx
 00489DF3    pop         ecx
 00489DF4    pop         ecx
 00489DF5    mov         dword ptr fs:[eax],edx
 00489DF8    push        489E31
 00489DFD    mov         edx,dword ptr [ebp-14]
 00489E00    mov         eax,dword ptr [ebp-28]
 00489E03    call        @FreeMem
 00489E08    mov         edx,dword ptr [ebp-1C]
 00489E0B    mov         eax,dword ptr [ebp-2C]
 00489E0E    call        @FreeMem
 00489E13    mov         edx,dword ptr [ebp-10]
 00489E16    mov         eax,dword ptr [ebp-20]
 00489E19    call        @FreeMem
 00489E1E    mov         edx,dword ptr [ebp-18]
 00489E21    mov         eax,dword ptr [ebp-24]
 00489E24    call        @FreeMem
 00489E29    ret
>00489E2A    jmp         @HandleFinally
>00489E2F    jmp         00489DFD
 00489E31    xor         eax,eax
 00489E33    pop         edx
 00489E34    pop         ecx
 00489E35    pop         ecx
 00489E36    mov         dword ptr fs:[eax],edx
 00489E39    push        489E58
 00489E3E    mov         eax,dword ptr [ebp-44]
 00489E41    push        eax
 00489E42    call        gdi32.DeleteObject
 00489E47    mov         eax,dword ptr [ebp-48]
 00489E4A    push        eax
 00489E4B    call        gdi32.DeleteObject
 00489E50    ret
>00489E51    jmp         @HandleFinally
>00489E56    jmp         00489E3E
 00489E58    pop         ebx
 00489E59    mov         esp,ebp
 00489E5B    pop         ebp
 00489E5C    ret
end;*}

//00489E60
constructor sub_00489E60;
begin
{*
 00489E60    push        ebp
 00489E61    mov         ebp,esp
 00489E63    add         esp,0FFFFFFF8
 00489E66    test        dl,dl
>00489E68    je          00489E72
 00489E6A    add         esp,0FFFFFFF0
 00489E6D    call        @ClassCreate
 00489E72    mov         byte ptr [ebp-5],dl
 00489E75    mov         dword ptr [ebp-4],eax
 00489E78    xor         edx,edx
 00489E7A    mov         eax,dword ptr [ebp-4]
 00489E7D    call        TObject.Create
 00489E82    mov         eax,dword ptr [ebp-4]
 00489E85    cmp         byte ptr [ebp-5],0
>00489E89    je          00489E9A
 00489E8B    call        @AfterConstruction
 00489E90    pop         dword ptr fs:[0]
 00489E97    add         esp,0C
 00489E9A    mov         eax,dword ptr [ebp-4]
 00489E9D    pop         ecx
 00489E9E    pop         ecx
 00489E9F    pop         ebp
 00489EA0    ret
*}
end;

//00489EA4
{*procedure sub_00489EA4(?:?);
begin
 00489EA4    push        ebp
 00489EA5    mov         ebp,esp
 00489EA7    add         esp,0FFFFFFF8
 00489EAA    push        ebx
 00489EAB    mov         dword ptr [ebp-8],edx
 00489EAE    mov         dword ptr [ebp-4],eax
 00489EB1    mov         eax,dword ptr [ebp-4]
 00489EB4    mov         byte ptr [eax+20],1;TGraphic.FModified:Boolean
 00489EB8    mov         eax,dword ptr [ebp-4]
 00489EBB    cmp         word ptr [eax+12],0;TGraphic.?f12:word
>00489EC0    je          00489ECE
 00489EC2    mov         ebx,dword ptr [ebp-4]
 00489EC5    mov         edx,dword ptr [ebp-4]
 00489EC8    mov         eax,dword ptr [ebx+14];TGraphic.?f14:TCustomForm
 00489ECB    call        dword ptr [ebx+10];TGraphic.FOnChange
 00489ECE    pop         ebx
 00489ECF    pop         ecx
 00489ED0    pop         ecx
 00489ED1    pop         ebp
 00489ED2    ret
end;*}

//00489ED4
{*function sub_00489ED4(?:?):?;
begin
 00489ED4    push        ebp
 00489ED5    mov         ebp,esp
 00489ED7    push        ecx
 00489ED8    mov         eax,dword ptr [ebp+8]
 00489EDB    mov         eax,dword ptr [eax-4]
 00489EDE    cmp         dword ptr [eax+20],0
>00489EE2    je          00489F1F
 00489EE4    mov         eax,dword ptr [ebp+8]
 00489EE7    mov         eax,dword ptr [eax-4]
 00489EEA    mov         eax,dword ptr [eax+20]
 00489EED    mov         edx,dword ptr ds:[48586C];TGraphic
 00489EF3    call        @IsClass
 00489EF8    test        al,al
>00489EFA    je          00489F18
 00489EFC    mov         eax,dword ptr [ebp+8]
 00489EFF    mov         eax,dword ptr [eax-4]
 00489F02    mov         edx,dword ptr [eax+20]
 00489F05    mov         eax,dword ptr [ebp+8]
 00489F08    mov         eax,dword ptr [eax-8]
 00489F0B    mov         ecx,dword ptr [eax]
 00489F0D    call        dword ptr [ecx+18]
 00489F10    test        al,al
>00489F12    je          00489F18
 00489F14    xor         eax,eax
>00489F16    jmp         00489F1A
 00489F18    mov         al,1
 00489F1A    mov         byte ptr [ebp-1],al
>00489F1D    jmp         00489F2F
 00489F1F    mov         eax,dword ptr [ebp+8]
 00489F22    mov         eax,dword ptr [eax-8]
 00489F25    mov         edx,dword ptr [eax]
 00489F27    call        dword ptr [edx+1C]
 00489F2A    xor         al,1
 00489F2C    mov         byte ptr [ebp-1],al
 00489F2F    mov         al,byte ptr [ebp-1]
 00489F32    pop         ecx
 00489F33    pop         ebp
 00489F34    ret
end;*}

//00489F38
procedure TGraphic.DefineProperties(Filer:TFiler);
begin
{*
 00489F38    push        ebp
 00489F39    mov         ebp,esp
 00489F3B    add         esp,0FFFFFFF8
 00489F3E    push        ebx
 00489F3F    mov         dword ptr [ebp-4],edx
 00489F42    mov         dword ptr [ebp-8],eax
 00489F45    mov         eax,dword ptr [ebp-8]
 00489F48    push        eax
 00489F49    mov         eax,dword ptr [eax]
 00489F4B    mov         eax,dword ptr [eax+30]
 00489F4E    push        eax
 00489F4F    mov         eax,dword ptr [ebp-8]
 00489F52    push        eax
 00489F53    mov         eax,dword ptr [eax]
 00489F55    mov         eax,dword ptr [eax+44]
 00489F58    push        eax
 00489F59    push        ebp
 00489F5A    call        00489ED4
 00489F5F    pop         ecx
 00489F60    mov         ecx,eax
 00489F62    mov         edx,489F7C;'Data'
 00489F67    mov         eax,dword ptr [ebp-4]
 00489F6A    mov         ebx,dword ptr [eax]
 00489F6C    call        dword ptr [ebx+8]
 00489F6F    pop         ebx
 00489F70    pop         ecx
 00489F71    pop         ecx
 00489F72    pop         ebp
 00489F73    ret
*}
end;

//00489F84
{*function sub_00489F84(?:?):?;
begin
 00489F84    push        ebp
 00489F85    mov         ebp,esp
 00489F87    add         esp,0FFFFFFEC
 00489F8A    push        ebx
 00489F8B    mov         dword ptr [ebp-8],edx
 00489F8E    mov         dword ptr [ebp-4],eax
 00489F91    cmp         dword ptr [ebp-8],0
>00489F95    je          00489FAD
 00489F97    mov         eax,dword ptr [ebp-4]
 00489F9A    call        TObject.ClassType
 00489F9F    mov         ebx,eax
 00489FA1    mov         eax,dword ptr [ebp-8]
 00489FA4    call        TObject.ClassType
 00489FA9    cmp         ebx,eax
>00489FAB    je          00489FB1
 00489FAD    xor         eax,eax
>00489FAF    jmp         00489FB3
 00489FB1    mov         al,1
 00489FB3    mov         byte ptr [ebp-9],al
 00489FB6    mov         eax,dword ptr [ebp-4]
 00489FB9    mov         edx,dword ptr [eax]
 00489FBB    call        dword ptr [edx+1C];@AbstractError
 00489FBE    test        al,al
>00489FC0    jne         00489FCE
 00489FC2    mov         eax,dword ptr [ebp-8]
 00489FC5    mov         edx,dword ptr [eax]
 00489FC7    call        dword ptr [edx+1C]
 00489FCA    test        al,al
>00489FCC    je          00489FF4
 00489FCE    mov         eax,dword ptr [ebp-4]
 00489FD1    mov         edx,dword ptr [eax]
 00489FD3    call        dword ptr [edx+1C];@AbstractError
 00489FD6    test        al,al
>00489FD8    je          00489FE6
 00489FDA    mov         eax,dword ptr [ebp-8]
 00489FDD    mov         edx,dword ptr [eax]
 00489FDF    call        dword ptr [edx+1C]
 00489FE2    test        al,al
>00489FE4    jne         00489FEA
 00489FE6    xor         eax,eax
>00489FE8    jmp         00489FEC
 00489FEA    mov         al,1
 00489FEC    mov         byte ptr [ebp-9],al
>00489FEF    jmp         0048A0CC
 00489FF4    cmp         byte ptr [ebp-9],0
>00489FF8    je          0048A0CC
 00489FFE    mov         dl,1
 0048A000    mov         eax,[00476368];TMemoryStream
 0048A005    call        TObject.Create;TMemoryStream.Create
 0048A00A    mov         dword ptr [ebp-10],eax
 0048A00D    xor         eax,eax
 0048A00F    push        ebp
 0048A010    push        48A0C5
 0048A015    push        dword ptr fs:[eax]
 0048A018    mov         dword ptr fs:[eax],esp
 0048A01B    mov         edx,dword ptr [ebp-10]
 0048A01E    mov         eax,dword ptr [ebp-4]
 0048A021    mov         ecx,dword ptr [eax]
 0048A023    call        dword ptr [ecx+44];TGraphic.sub_0048A260
 0048A026    mov         dl,1
 0048A028    mov         eax,[00476368];TMemoryStream
 0048A02D    call        TObject.Create;TMemoryStream.Create
 0048A032    mov         dword ptr [ebp-14],eax
 0048A035    xor         eax,eax
 0048A037    push        ebp
 0048A038    push        48A0A8
 0048A03D    push        dword ptr fs:[eax]
 0048A040    mov         dword ptr fs:[eax],esp
 0048A043    mov         edx,dword ptr [ebp-14]
 0048A046    mov         eax,dword ptr [ebp-8]
 0048A049    mov         ecx,dword ptr [eax]
 0048A04B    call        dword ptr [ecx+44]
 0048A04E    mov         eax,dword ptr [ebp-10]
 0048A051    mov         edx,dword ptr [eax]
 0048A053    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0048A055    push        edx
 0048A056    push        eax
 0048A057    mov         eax,dword ptr [ebp-14]
 0048A05A    mov         edx,dword ptr [eax]
 0048A05C    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0048A05E    cmp         edx,dword ptr [esp+4]
>0048A062    jne         0048A067
 0048A064    cmp         eax,dword ptr [esp]
 0048A067    pop         edx
 0048A068    pop         eax
>0048A069    jne         0048A089
 0048A06B    mov         eax,dword ptr [ebp-10]
 0048A06E    mov         edx,dword ptr [eax]
 0048A070    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0048A072    mov         ecx,eax
 0048A074    mov         eax,dword ptr [ebp-14]
 0048A077    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0048A07A    mov         eax,dword ptr [ebp-10]
 0048A07D    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0048A080    call        CompareMem
 0048A085    test        al,al
>0048A087    jne         0048A08D
 0048A089    xor         eax,eax
>0048A08B    jmp         0048A08F
 0048A08D    mov         al,1
 0048A08F    mov         byte ptr [ebp-9],al
 0048A092    xor         eax,eax
 0048A094    pop         edx
 0048A095    pop         ecx
 0048A096    pop         ecx
 0048A097    mov         dword ptr fs:[eax],edx
 0048A09A    push        48A0AF
 0048A09F    mov         eax,dword ptr [ebp-14]
 0048A0A2    call        TObject.Free
 0048A0A7    ret
>0048A0A8    jmp         @HandleFinally
>0048A0AD    jmp         0048A09F
 0048A0AF    xor         eax,eax
 0048A0B1    pop         edx
 0048A0B2    pop         ecx
 0048A0B3    pop         ecx
 0048A0B4    mov         dword ptr fs:[eax],edx
 0048A0B7    push        48A0CC
 0048A0BC    mov         eax,dword ptr [ebp-10]
 0048A0BF    call        TObject.Free
 0048A0C4    ret
>0048A0C5    jmp         @HandleFinally
>0048A0CA    jmp         0048A0BC
 0048A0CC    mov         al,byte ptr [ebp-9]
 0048A0CF    pop         ebx
 0048A0D0    mov         esp,ebp
 0048A0D2    pop         ebp
 0048A0D3    ret
end;*}

//0048A0D4
{*function sub_0048A0D4:?;
begin
 0048A0D4    push        ebp
 0048A0D5    mov         ebp,esp
 0048A0D7    add         esp,0FFFFFFF8
 0048A0DA    mov         dword ptr [ebp-4],eax
 0048A0DD    xor         eax,eax
 0048A0DF    mov         dword ptr [ebp-8],eax
 0048A0E2    mov         eax,dword ptr [ebp-8]
 0048A0E5    pop         ecx
 0048A0E6    pop         ecx
 0048A0E7    pop         ebp
 0048A0E8    ret
end;*}

//0048A0EC
{*function sub_0048A0EC:?;
begin
 0048A0EC    push        ebp
 0048A0ED    mov         ebp,esp
 0048A0EF    add         esp,0FFFFFFF8
 0048A0F2    mov         dword ptr [ebp-4],eax
 0048A0F5    mov         eax,dword ptr [ebp-4]
 0048A0F8    mov         al,byte ptr [eax+21];TGraphic.FTransparent:Boolean
 0048A0FB    mov         byte ptr [ebp-5],al
 0048A0FE    mov         al,byte ptr [ebp-5]
 0048A101    pop         ecx
 0048A102    pop         ecx
 0048A103    pop         ebp
 0048A104    ret
end;*}

//0048A108
{*procedure sub_0048A108(?:?);
begin
 0048A108    push        ebp
 0048A109    mov         ebp,esp
 0048A10B    add         esp,0FFFFFFF4
 0048A10E    mov         dword ptr [ebp-8],edx
 0048A111    mov         dword ptr [ebp-4],eax
 0048A114    push        20
 0048A116    mov         ecx,dword ptr [ebp-8]
 0048A119    mov         dl,1
 0048A11B    mov         eax,[00476278];TFileStream
 0048A120    call        TFileStream.Create;TFileStream.Create
 0048A125    mov         dword ptr [ebp-0C],eax
 0048A128    xor         eax,eax
 0048A12A    push        ebp
 0048A12B    push        48A157
 0048A130    push        dword ptr fs:[eax]
 0048A133    mov         dword ptr fs:[eax],esp
 0048A136    mov         edx,dword ptr [ebp-0C]
 0048A139    mov         eax,dword ptr [ebp-4]
 0048A13C    mov         ecx,dword ptr [eax]
 0048A13E    call        dword ptr [ecx+54];@AbstractError
 0048A141    xor         eax,eax
 0048A143    pop         edx
 0048A144    pop         ecx
 0048A145    pop         ecx
 0048A146    mov         dword ptr fs:[eax],edx
 0048A149    push        48A15E
 0048A14E    mov         eax,dword ptr [ebp-0C]
 0048A151    call        TObject.Free
 0048A156    ret
>0048A157    jmp         @HandleFinally
>0048A15C    jmp         0048A14E
 0048A15E    mov         esp,ebp
 0048A160    pop         ebp
 0048A161    ret
end;*}

//0048A164
{*procedure TGraphic.sub_0048A164(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0048A164    push        ebp
 0048A165    mov         ebp,esp
 0048A167    add         esp,0FFFFFFF4
 0048A16A    push        ebx
 0048A16B    mov         byte ptr [ebp-9],cl
 0048A16E    mov         dword ptr [ebp-8],edx
 0048A171    mov         dword ptr [ebp-4],eax
 0048A174    mov         eax,dword ptr [ebp-4]
 0048A177    cmp         word ptr [eax+1A],0;TGraphic.?f1A:word
>0048A17C    je          0048A19D
 0048A17E    mov         al,byte ptr [ebp+14]
 0048A181    push        eax
 0048A182    mov         al,byte ptr [ebp+10]
 0048A185    push        eax
 0048A186    mov         eax,dword ptr [ebp+0C]
 0048A189    push        eax
 0048A18A    mov         eax,dword ptr [ebp+8]
 0048A18D    push        eax
 0048A18E    mov         ebx,dword ptr [ebp-4]
 0048A191    mov         cl,byte ptr [ebp-9]
 0048A194    mov         edx,dword ptr [ebp-8]
 0048A197    mov         eax,dword ptr [ebx+1C];TGraphic.?f1C:dword
 0048A19A    call        dword ptr [ebx+18];TGraphic.FOnProgress
 0048A19D    pop         ebx
 0048A19E    mov         esp,ebp
 0048A1A0    pop         ebp
 0048A1A1    ret         10
end;*}

//0048A1A4
{*procedure sub_0048A1A4(?:?);
begin
 0048A1A4    push        ebp
 0048A1A5    mov         ebp,esp
 0048A1A7    add         esp,0FFFFFFF8
 0048A1AA    mov         dword ptr [ebp-8],edx
 0048A1AD    mov         dword ptr [ebp-4],eax
 0048A1B0    mov         edx,dword ptr [ebp-8]
 0048A1B3    mov         eax,dword ptr [ebp-4]
 0048A1B6    mov         ecx,dword ptr [eax]
 0048A1B8    call        dword ptr [ecx+54];@AbstractError
 0048A1BB    pop         ecx
 0048A1BC    pop         ecx
 0048A1BD    pop         ebp
 0048A1BE    ret
end;*}

//0048A1C0
{*procedure sub_0048A1C0(?:?);
begin
 0048A1C0    push        ebp
 0048A1C1    mov         ebp,esp
 0048A1C3    add         esp,0FFFFFFF4
 0048A1C6    mov         dword ptr [ebp-8],edx
 0048A1C9    mov         dword ptr [ebp-4],eax
 0048A1CC    push        0FFFF
 0048A1D1    mov         ecx,dword ptr [ebp-8]
 0048A1D4    mov         dl,1
 0048A1D6    mov         eax,[00476278];TFileStream
 0048A1DB    call        TFileStream.Create;TFileStream.Create
 0048A1E0    mov         dword ptr [ebp-0C],eax
 0048A1E3    xor         eax,eax
 0048A1E5    push        ebp
 0048A1E6    push        48A212
 0048A1EB    push        dword ptr fs:[eax]
 0048A1EE    mov         dword ptr fs:[eax],esp
 0048A1F1    mov         edx,dword ptr [ebp-0C]
 0048A1F4    mov         eax,dword ptr [ebp-4]
 0048A1F7    mov         ecx,dword ptr [eax]
 0048A1F9    call        dword ptr [ecx+58];@AbstractError
 0048A1FC    xor         eax,eax
 0048A1FE    pop         edx
 0048A1FF    pop         ecx
 0048A200    pop         ecx
 0048A201    mov         dword ptr fs:[eax],edx
 0048A204    push        48A219
 0048A209    mov         eax,dword ptr [ebp-0C]
 0048A20C    call        TObject.Free
 0048A211    ret
>0048A212    jmp         @HandleFinally
>0048A217    jmp         0048A209
 0048A219    mov         esp,ebp
 0048A21B    pop         ebp
 0048A21C    ret
end;*}

//0048A220
{*procedure sub_0048A220(?:?);
begin
 0048A220    push        ebp
 0048A221    mov         ebp,esp
 0048A223    add         esp,0FFFFFFF8
 0048A226    mov         dword ptr [ebp-8],edx
 0048A229    mov         dword ptr [ebp-4],eax
 0048A22C    pop         ecx
 0048A22D    pop         ecx
 0048A22E    pop         ebp
 0048A22F    ret
end;*}

//0048A230
{*procedure sub_0048A230(?:?);
begin
 0048A230    push        ebp
 0048A231    mov         ebp,esp
 0048A233    add         esp,0FFFFFFF8
 0048A236    mov         byte ptr [ebp-5],dl
 0048A239    mov         dword ptr [ebp-4],eax
 0048A23C    mov         al,byte ptr [ebp-5]
 0048A23F    mov         edx,dword ptr [ebp-4]
 0048A242    cmp         al,byte ptr [edx+21];TGraphic.FTransparent:Boolean
>0048A245    je          0048A25B
 0048A247    mov         al,byte ptr [ebp-5]
 0048A24A    mov         edx,dword ptr [ebp-4]
 0048A24D    mov         byte ptr [edx+21],al;TGraphic.FTransparent:Boolean
 0048A250    mov         edx,dword ptr [ebp-4]
 0048A253    mov         eax,dword ptr [ebp-4]
 0048A256    mov         ecx,dword ptr [eax]
 0048A258    call        dword ptr [ecx+10];TGraphic.sub_00489EA4
 0048A25B    pop         ecx
 0048A25C    pop         ecx
 0048A25D    pop         ebp
 0048A25E    ret
end;*}

//0048A260
{*procedure sub_0048A260(?:?);
begin
 0048A260    push        ebp
 0048A261    mov         ebp,esp
 0048A263    add         esp,0FFFFFFF8
 0048A266    mov         dword ptr [ebp-8],edx
 0048A269    mov         dword ptr [ebp-4],eax
 0048A26C    mov         edx,dword ptr [ebp-8]
 0048A26F    mov         eax,dword ptr [ebp-4]
 0048A272    mov         ecx,dword ptr [eax]
 0048A274    call        dword ptr [ecx+58];@AbstractError
 0048A277    pop         ecx
 0048A278    pop         ecx
 0048A279    pop         ebp
 0048A27A    ret
end;*}

//0048A318
constructor TFileFormatsList.Create;
begin
{*
 0048A318    push        ebp
 0048A319    mov         ebp,esp
 0048A31B    xor         ecx,ecx
 0048A31D    push        ecx
 0048A31E    push        ecx
 0048A31F    push        ecx
 0048A320    push        ecx
 0048A321    push        ecx
 0048A322    push        ecx
 0048A323    test        dl,dl
>0048A325    je          0048A32F
 0048A327    add         esp,0FFFFFFF0
 0048A32A    call        @ClassCreate
 0048A32F    mov         byte ptr [ebp-5],dl
 0048A332    mov         dword ptr [ebp-4],eax
 0048A335    xor         eax,eax
 0048A337    push        ebp
 0048A338    push        48A3FC
 0048A33D    push        dword ptr fs:[eax]
 0048A340    mov         dword ptr fs:[eax],esp
 0048A343    xor         edx,edx
 0048A345    mov         eax,dword ptr [ebp-4]
 0048A348    call        TObject.Create
 0048A34D    push        0
 0048A34F    mov         eax,[00485B2C];TMetafile
 0048A354    push        eax
 0048A355    lea         edx,[ebp-0C]
 0048A358    mov         eax,[0055B408];^SVMetafiles:TResStringRec
 0048A35D    call        LoadResString
 0048A362    mov         ecx,dword ptr [ebp-0C]
 0048A365    mov         edx,48A42C;'wmf'
 0048A36A    mov         eax,dword ptr [ebp-4]
 0048A36D    call        0048A4BC
 0048A372    push        0
 0048A374    mov         eax,[00485B2C];TMetafile
 0048A379    push        eax
 0048A37A    lea         edx,[ebp-10]
 0048A37D    mov         eax,[0055B194];^SVEnhMetafiles:TResStringRec
 0048A382    call        LoadResString
 0048A387    mov         ecx,dword ptr [ebp-10]
 0048A38A    mov         edx,48A438;'emf'
 0048A38F    mov         eax,dword ptr [ebp-4]
 0048A392    call        0048A4BC
 0048A397    push        0
 0048A399    mov         eax,[00485DB0];TIcon
 0048A39E    push        eax
 0048A39F    lea         edx,[ebp-14]
 0048A3A2    mov         eax,[0055B190];^SVIcons:TResStringRec
 0048A3A7    call        LoadResString
 0048A3AC    mov         ecx,dword ptr [ebp-14]
 0048A3AF    mov         edx,48A444;'ico'
 0048A3B4    mov         eax,dword ptr [ebp-4]
 0048A3B7    call        0048A4BC
 0048A3BC    push        0
 0048A3BE    mov         eax,[00485C6C];TBitmap
 0048A3C3    push        eax
 0048A3C4    lea         edx,[ebp-18]
 0048A3C7    mov         eax,[0055B18C];^SVBitmaps:TResStringRec
 0048A3CC    call        LoadResString
 0048A3D1    mov         ecx,dword ptr [ebp-18]
 0048A3D4    mov         edx,48A450;'bmp'
 0048A3D9    mov         eax,dword ptr [ebp-4]
 0048A3DC    call        0048A4BC
 0048A3E1    xor         eax,eax
 0048A3E3    pop         edx
 0048A3E4    pop         ecx
 0048A3E5    pop         ecx
 0048A3E6    mov         dword ptr fs:[eax],edx
 0048A3E9    push        48A403
 0048A3EE    lea         eax,[ebp-18]
 0048A3F1    mov         edx,4
 0048A3F6    call        @LStrArrayClr
 0048A3FB    ret
>0048A3FC    jmp         @HandleFinally
>0048A401    jmp         0048A3EE
 0048A403    mov         eax,dword ptr [ebp-4]
 0048A406    cmp         byte ptr [ebp-5],0
>0048A40A    je          0048A41B
 0048A40C    call        @AfterConstruction
 0048A411    pop         dword ptr fs:[0]
 0048A418    add         esp,0C
 0048A41B    mov         eax,dword ptr [ebp-4]
 0048A41E    mov         esp,ebp
 0048A420    pop         ebp
 0048A421    ret
*}
end;

//0048A454
destructor TFileFormatsList.Destroy;
begin
{*
 0048A454    push        ebp
 0048A455    mov         ebp,esp
 0048A457    add         esp,0FFFFFFF0
 0048A45A    call        @BeforeDestruction
 0048A45F    mov         byte ptr [ebp-5],dl
 0048A462    mov         dword ptr [ebp-4],eax
 0048A465    mov         eax,dword ptr [ebp-4]
 0048A468    mov         eax,dword ptr [eax+8]
 0048A46B    dec         eax
 0048A46C    test        eax,eax
>0048A46E    jl          0048A499
 0048A470    inc         eax
 0048A471    mov         dword ptr [ebp-10],eax
 0048A474    mov         dword ptr [ebp-0C],0
 0048A47B    mov         edx,dword ptr [ebp-0C]
 0048A47E    mov         eax,dword ptr [ebp-4]
 0048A481    call        TList.Get
 0048A486    mov         edx,dword ptr ds:[48A27C];TFileFormat
 0048A48C    call        @Dispose
 0048A491    inc         dword ptr [ebp-0C]
 0048A494    dec         dword ptr [ebp-10]
>0048A497    jne         0048A47B
 0048A499    mov         dl,byte ptr [ebp-5]
 0048A49C    and         dl,0FC
 0048A49F    mov         eax,dword ptr [ebp-4]
 0048A4A2    call        TList.Destroy
 0048A4A7    cmp         byte ptr [ebp-5],0
>0048A4AB    jle         0048A4B5
 0048A4AD    mov         eax,dword ptr [ebp-4]
 0048A4B0    call        @ClassDestroy
 0048A4B5    mov         esp,ebp
 0048A4B7    pop         ebp
 0048A4B8    ret
*}
end;

//0048A4BC
{*procedure sub_0048A4BC(?:?; ?:AnsiString; ?:?; ?:?; ?:?);
begin
 0048A4BC    push        ebp
 0048A4BD    mov         ebp,esp
 0048A4BF    add         esp,0FFFFFFE8
 0048A4C2    push        ebx
 0048A4C3    xor         ebx,ebx
 0048A4C5    mov         dword ptr [ebp-18],ebx
 0048A4C8    mov         dword ptr [ebp-0C],ecx
 0048A4CB    mov         dword ptr [ebp-8],edx
 0048A4CE    mov         dword ptr [ebp-4],eax
 0048A4D1    xor         eax,eax
 0048A4D3    push        ebp
 0048A4D4    push        48A551
 0048A4D9    push        dword ptr fs:[eax]
 0048A4DC    mov         dword ptr fs:[eax],esp
 0048A4DF    mov         edx,dword ptr ds:[48A27C];TFileFormat
 0048A4E5    mov         eax,10
 0048A4EA    call        00405948
 0048A4EF    mov         dword ptr [ebp-10],eax
 0048A4F2    mov         eax,dword ptr [ebp-10]
 0048A4F5    mov         dword ptr [ebp-14],eax
 0048A4F8    lea         edx,[ebp-18]
 0048A4FB    mov         eax,dword ptr [ebp-8]
 0048A4FE    call        0046638C
 0048A503    mov         edx,dword ptr [ebp-18]
 0048A506    mov         eax,dword ptr [ebp-14]
 0048A509    add         eax,4
 0048A50C    call        @LStrAsg
 0048A511    mov         eax,dword ptr [ebp+8]
 0048A514    mov         edx,dword ptr [ebp-14]
 0048A517    mov         dword ptr [edx],eax
 0048A519    mov         eax,dword ptr [ebp-14]
 0048A51C    add         eax,8
 0048A51F    mov         edx,dword ptr [ebp-0C]
 0048A522    call        @LStrAsg
 0048A527    mov         eax,dword ptr [ebp+0C]
 0048A52A    mov         edx,dword ptr [ebp-14]
 0048A52D    mov         dword ptr [edx+0C],eax
 0048A530    mov         edx,dword ptr [ebp-10]
 0048A533    mov         eax,dword ptr [ebp-4]
 0048A536    call        TList.Add
 0048A53B    xor         eax,eax
 0048A53D    pop         edx
 0048A53E    pop         ecx
 0048A53F    pop         ecx
 0048A540    mov         dword ptr fs:[eax],edx
 0048A543    push        48A558
 0048A548    lea         eax,[ebp-18]
 0048A54B    call        @LStrClr
 0048A550    ret
>0048A551    jmp         @HandleFinally
>0048A556    jmp         0048A548
 0048A558    pop         ebx
 0048A559    mov         esp,ebp
 0048A55B    pop         ebp
 0048A55C    ret         8
end;*}

//0048A560
{*function sub_0048A560(?:?; ?:?):?;
begin
 0048A560    push        ebp
 0048A561    mov         ebp,esp
 0048A563    add         esp,0FFFFFEEC
 0048A569    xor         ecx,ecx
 0048A56B    mov         dword ptr [ebp-14],ecx
 0048A56E    mov         dword ptr [ebp-8],edx
 0048A571    mov         dword ptr [ebp-4],eax
 0048A574    xor         eax,eax
 0048A576    push        ebp
 0048A577    push        48A5EE
 0048A57C    push        dword ptr fs:[eax]
 0048A57F    mov         dword ptr fs:[eax],esp
 0048A582    mov         eax,dword ptr [ebp-4]
 0048A585    mov         eax,dword ptr [eax+8]
 0048A588    dec         eax
 0048A589    cmp         eax,0
>0048A58C    jl          0048A5D3
 0048A58E    mov         dword ptr [ebp-10],eax
 0048A591    mov         edx,dword ptr [ebp-10]
 0048A594    mov         eax,dword ptr [ebp-4]
 0048A597    call        TList.Get
 0048A59C    mov         eax,dword ptr [eax]
 0048A59E    mov         dword ptr [ebp-0C],eax
 0048A5A1    lea         edx,[ebp-114]
 0048A5A7    mov         eax,dword ptr [ebp-0C]
 0048A5AA    call        TObject.ClassName
 0048A5AF    lea         edx,[ebp-114]
 0048A5B5    lea         eax,[ebp-14]
 0048A5B8    call        @LStrFromString
 0048A5BD    mov         eax,dword ptr [ebp-14]
 0048A5C0    mov         edx,dword ptr [ebp-8]
 0048A5C3    call        @LStrCmp
>0048A5C8    je          0048A5D8
 0048A5CA    dec         dword ptr [ebp-10]
 0048A5CD    cmp         dword ptr [ebp-10],0FFFFFFFF
>0048A5D1    jne         0048A591
 0048A5D3    xor         eax,eax
 0048A5D5    mov         dword ptr [ebp-0C],eax
 0048A5D8    xor         eax,eax
 0048A5DA    pop         edx
 0048A5DB    pop         ecx
 0048A5DC    pop         ecx
 0048A5DD    mov         dword ptr fs:[eax],edx
 0048A5E0    push        48A5F5
 0048A5E5    lea         eax,[ebp-14]
 0048A5E8    call        @LStrClr
 0048A5ED    ret
>0048A5EE    jmp         @HandleFinally
>0048A5F3    jmp         0048A5E5
 0048A5F5    mov         eax,dword ptr [ebp-0C]
 0048A5F8    mov         esp,ebp
 0048A5FA    pop         ebp
 0048A5FB    ret
end;*}

//0048A65C
constructor TClipboardFormats.Create;
begin
{*
 0048A65C    push        ebp
 0048A65D    mov         ebp,esp
 0048A65F    add         esp,0FFFFFFF8
 0048A662    test        dl,dl
>0048A664    je          0048A66E
 0048A666    add         esp,0FFFFFFF0
 0048A669    call        @ClassCreate
 0048A66E    mov         byte ptr [ebp-5],dl
 0048A671    mov         dword ptr [ebp-4],eax
 0048A674    mov         dl,1
 0048A676    mov         eax,[004759C0];TList
 0048A67B    call        TObject.Create;TList.Create
 0048A680    mov         edx,dword ptr [ebp-4]
 0048A683    mov         dword ptr [edx+4],eax
 0048A686    mov         dl,1
 0048A688    mov         eax,[004759C0];TList
 0048A68D    call        TObject.Create;TList.Create
 0048A692    mov         edx,dword ptr [ebp-4]
 0048A695    mov         dword ptr [edx+8],eax
 0048A698    mov         ecx,dword ptr ds:[485B2C];TMetafile
 0048A69E    mov         dx,3
 0048A6A2    mov         eax,dword ptr [ebp-4]
 0048A6A5    call        0048A72C
 0048A6AA    mov         ecx,dword ptr ds:[485B2C];TMetafile
 0048A6B0    mov         dx,0E
 0048A6B4    mov         eax,dword ptr [ebp-4]
 0048A6B7    call        0048A72C
 0048A6BC    mov         ecx,dword ptr ds:[485C6C];TBitmap
 0048A6C2    mov         dx,2
 0048A6C6    mov         eax,dword ptr [ebp-4]
 0048A6C9    call        0048A72C
 0048A6CE    mov         eax,dword ptr [ebp-4]
 0048A6D1    cmp         byte ptr [ebp-5],0
>0048A6D5    je          0048A6E6
 0048A6D7    call        @AfterConstruction
 0048A6DC    pop         dword ptr fs:[0]
 0048A6E3    add         esp,0C
 0048A6E6    mov         eax,dword ptr [ebp-4]
 0048A6E9    pop         ecx
 0048A6EA    pop         ecx
 0048A6EB    pop         ebp
 0048A6EC    ret
*}
end;

//0048A72C
{*procedure sub_0048A72C(?:?; ?:?; ?:TGraphic);
begin
 0048A72C    push        ebp
 0048A72D    mov         ebp,esp
 0048A72F    add         esp,0FFFFFFF0
 0048A732    push        ebx
 0048A733    push        esi
 0048A734    push        edi
 0048A735    mov         dword ptr [ebp-0C],ecx
 0048A738    mov         word ptr [ebp-6],dx
 0048A73C    mov         dword ptr [ebp-4],eax
 0048A73F    mov         eax,dword ptr [ebp-4]
 0048A742    mov         eax,dword ptr [eax+4]
 0048A745    mov         edx,dword ptr [ebp-0C]
 0048A748    call        TList.Add
 0048A74D    mov         dword ptr [ebp-10],eax
 0048A750    xor         eax,eax
 0048A752    push        ebp
 0048A753    push        48A777
 0048A758    push        dword ptr fs:[eax]
 0048A75B    mov         dword ptr fs:[eax],esp
 0048A75E    movzx       edx,word ptr [ebp-6]
 0048A762    mov         eax,dword ptr [ebp-4]
 0048A765    mov         eax,dword ptr [eax+8]
 0048A768    call        TList.Add
 0048A76D    xor         eax,eax
 0048A76F    pop         edx
 0048A770    pop         ecx
 0048A771    pop         ecx
 0048A772    mov         dword ptr fs:[eax],edx
>0048A775    jmp         0048A794
>0048A777    jmp         @HandleAnyException
 0048A77C    mov         eax,dword ptr [ebp-4]
 0048A77F    mov         eax,dword ptr [eax+4]
 0048A782    mov         edx,dword ptr [ebp-10]
 0048A785    call        00478668
 0048A78A    call        @RaiseAgain
 0048A78F    call        @DoneExcept
 0048A794    pop         edi
 0048A795    pop         esi
 0048A796    pop         ebx
 0048A797    mov         esp,ebp
 0048A799    pop         ebp
 0048A79A    ret
end;*}

//0048A79C
{*function sub_0048A79C:?;
begin
 0048A79C    push        ebp
 0048A79D    mov         ebp,esp
 0048A79F    push        ecx
 0048A7A0    cmp         dword ptr ds:[541084],0;gvar_00541084:TFileFormatsList
>0048A7A7    jne         0048A7BA
 0048A7A9    mov         dl,1
 0048A7AB    mov         eax,[0048A2A8];TFileFormatsList
 0048A7B0    call        TFileFormatsList.Create;TFileFormatsList.Create
 0048A7B5    mov         [00541084],eax;gvar_00541084:TFileFormatsList
 0048A7BA    mov         eax,[00541084];0x0 gvar_00541084:TFileFormatsList
 0048A7BF    mov         dword ptr [ebp-4],eax
 0048A7C2    mov         eax,dword ptr [ebp-4]
 0048A7C5    pop         ecx
 0048A7C6    pop         ebp
 0048A7C7    ret
end;*}

//0048A7C8
{*function sub_0048A7C8:?;
begin
 0048A7C8    push        ebp
 0048A7C9    mov         ebp,esp
 0048A7CB    push        ecx
 0048A7CC    cmp         dword ptr ds:[541080],0;gvar_00541080:TClipboardFormats
>0048A7D3    jne         0048A7E6
 0048A7D5    mov         dl,1
 0048A7D7    mov         eax,[0048A5FC];TClipboardFormats
 0048A7DC    call        TClipboardFormats.Create;TClipboardFormats.Create
 0048A7E1    mov         [00541080],eax;gvar_00541080:TClipboardFormats
 0048A7E6    mov         eax,[00541080];0x0 gvar_00541080:TClipboardFormats
 0048A7EB    mov         dword ptr [ebp-4],eax
 0048A7EE    mov         eax,dword ptr [ebp-4]
 0048A7F1    pop         ecx
 0048A7F2    pop         ebp
 0048A7F3    ret
end;*}

//0048A7F4
constructor TPicture.Create;
begin
{*
 0048A7F4    push        ebp
 0048A7F5    mov         ebp,esp
 0048A7F7    add         esp,0FFFFFFF8
 0048A7FA    test        dl,dl
>0048A7FC    je          0048A806
 0048A7FE    add         esp,0FFFFFFF0
 0048A801    call        @ClassCreate
 0048A806    mov         byte ptr [ebp-5],dl
 0048A809    mov         dword ptr [ebp-4],eax
 0048A80C    xor         edx,edx
 0048A80E    mov         eax,dword ptr [ebp-4]
 0048A811    call        TObject.Create
 0048A816    call        0048A79C
 0048A81B    call        0048A7C8
 0048A820    mov         eax,dword ptr [ebp-4]
 0048A823    cmp         byte ptr [ebp-5],0
>0048A827    je          0048A838
 0048A829    call        @AfterConstruction
 0048A82E    pop         dword ptr fs:[0]
 0048A835    add         esp,0C
 0048A838    mov         eax,dword ptr [ebp-4]
 0048A83B    pop         ecx
 0048A83C    pop         ecx
 0048A83D    pop         ebp
 0048A83E    ret
*}
end;

//0048A840
destructor TPicture.Destroy;
begin
{*
 0048A840    push        ebp
 0048A841    mov         ebp,esp
 0048A843    add         esp,0FFFFFFF8
 0048A846    call        @BeforeDestruction
 0048A84B    mov         byte ptr [ebp-5],dl
 0048A84E    mov         dword ptr [ebp-4],eax
 0048A851    mov         eax,dword ptr [ebp-4]
 0048A854    mov         eax,dword ptr [eax+0C]
 0048A857    call        TObject.Free
 0048A85C    mov         dl,byte ptr [ebp-5]
 0048A85F    and         dl,0FC
 0048A862    mov         eax,dword ptr [ebp-4]
 0048A865    call        TPersistent.Destroy
 0048A86A    cmp         byte ptr [ebp-5],0
>0048A86E    jle         0048A878
 0048A870    mov         eax,dword ptr [ebp-4]
 0048A873    call        @ClassDestroy
 0048A878    pop         ecx
 0048A879    pop         ecx
 0048A87A    pop         ebp
 0048A87B    ret
*}
end;

//0048A87C
{*procedure sub_0048A87C(?:?);
begin
 0048A87C    push        ebp
 0048A87D    mov         ebp,esp
 0048A87F    add         esp,0FFFFFFF8
 0048A882    mov         dword ptr [ebp-8],edx
 0048A885    mov         dword ptr [ebp-4],eax
 0048A888    mov         eax,dword ptr [ebp-8]
 0048A88B    call        TObject.ClassType
 0048A890    mov         edx,eax
 0048A892    mov         eax,dword ptr [ebp-4]
 0048A895    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 0048A898    call        @IsClass
 0048A89D    test        al,al
>0048A89F    je          0048A8B1
 0048A8A1    mov         eax,dword ptr [ebp-4]
 0048A8A4    mov         edx,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 0048A8A7    mov         eax,dword ptr [ebp-8]
 0048A8AA    mov         ecx,dword ptr [eax]
 0048A8AC    call        dword ptr [ecx+8]
>0048A8AF    jmp         0048A8BC
 0048A8B1    mov         edx,dword ptr [ebp-8]
 0048A8B4    mov         eax,dword ptr [ebp-4]
 0048A8B7    call        004791AC
 0048A8BC    pop         ecx
 0048A8BD    pop         ecx
 0048A8BE    pop         ebp
 0048A8BF    ret
end;*}

//0048A8C0
{*procedure sub_0048A8C0(?:?; ?:TGraphic);
begin
 0048A8C0    push        ebp
 0048A8C1    mov         ebp,esp
 0048A8C3    add         esp,0FFFFFFF8
 0048A8C6    push        esi
 0048A8C7    mov         dword ptr [ebp-8],edx
 0048A8CA    mov         dword ptr [ebp-4],eax
 0048A8CD    mov         eax,dword ptr [ebp-4]
 0048A8D0    mov         eax,dword ptr [eax+0C]
 0048A8D3    mov         edx,dword ptr [ebp-8]
 0048A8D6    call        @IsClass
 0048A8DB    test        al,al
>0048A8DD    jne         0048A94B
 0048A8DF    mov         eax,dword ptr [ebp-4]
 0048A8E2    mov         eax,dword ptr [eax+0C]
 0048A8E5    call        TObject.Free
 0048A8EA    mov         eax,dword ptr [ebp-4]
 0048A8ED    xor         edx,edx
 0048A8EF    mov         dword ptr [eax+0C],edx
 0048A8F2    mov         dl,1
 0048A8F4    mov         eax,dword ptr [ebp-8]
 0048A8F7    call        dword ptr [eax+48]
 0048A8FA    mov         edx,dword ptr [ebp-4]
 0048A8FD    mov         dword ptr [edx+0C],eax
 0048A900    mov         eax,dword ptr [ebp-4]
 0048A903    mov         eax,dword ptr [eax+0C]
 0048A906    mov         edx,dword ptr [ebp-4]
 0048A909    mov         dword ptr [eax+14],edx
 0048A90C    push        eax
 0048A90D    mov         eax,edx
 0048A90F    mov         dx,0FFFD
 0048A913    call        @FindDynaInst
 0048A918    mov         edx,eax
 0048A91A    pop         eax
 0048A91B    mov         dword ptr [eax+10],edx
 0048A91E    mov         eax,dword ptr [ebp-4]
 0048A921    mov         eax,dword ptr [eax+0C]
 0048A924    mov         edx,dword ptr [ebp-4]
 0048A927    mov         dword ptr [eax+1C],edx
 0048A92A    push        eax
 0048A92B    mov         eax,edx
 0048A92D    mov         dx,0FFFC
 0048A931    call        @FindDynaInst
 0048A936    mov         edx,eax
 0048A938    pop         eax
 0048A939    mov         dword ptr [eax+18],edx
 0048A93C    mov         edx,dword ptr [ebp-4]
 0048A93F    mov         eax,dword ptr [ebp-4]
 0048A942    mov         si,0FFFD
 0048A946    call        @CallDynaInst
 0048A94B    pop         esi
 0048A94C    pop         ecx
 0048A94D    pop         ecx
 0048A94E    pop         ebp
 0048A94F    ret
end;*}

//0048A950
{*function sub_0048A950(?:TPicture):?;
begin
 0048A950    push        ebp
 0048A951    mov         ebp,esp
 0048A953    add         esp,0FFFFFFF8
 0048A956    mov         dword ptr [ebp-4],eax
 0048A959    mov         edx,dword ptr ds:[485C6C];TBitmap
 0048A95F    mov         eax,dword ptr [ebp-4]
 0048A962    call        0048A8C0
 0048A967    mov         eax,dword ptr [ebp-4]
 0048A96A    mov         eax,dword ptr [eax+0C]
 0048A96D    mov         dword ptr [ebp-8],eax
 0048A970    mov         eax,dword ptr [ebp-8]
 0048A973    pop         ecx
 0048A974    pop         ecx
 0048A975    pop         ebp
 0048A976    ret
end;*}

//0048A978
{*function sub_0048A978(?:TPicture):?;
begin
 0048A978    push        ebp
 0048A979    mov         ebp,esp
 0048A97B    add         esp,0FFFFFFF8
 0048A97E    mov         dword ptr [ebp-4],eax
 0048A981    mov         edx,dword ptr ds:[485DB0];TIcon
 0048A987    mov         eax,dword ptr [ebp-4]
 0048A98A    call        0048A8C0
 0048A98F    mov         eax,dword ptr [ebp-4]
 0048A992    mov         eax,dword ptr [eax+0C]
 0048A995    mov         dword ptr [ebp-8],eax
 0048A998    mov         eax,dword ptr [ebp-8]
 0048A99B    pop         ecx
 0048A99C    pop         ecx
 0048A99D    pop         ebp
 0048A99E    ret
end;*}

//0048A9A0
procedure sub_0048A9A0(?:TPicture; ?:TBitmap);
begin
{*
 0048A9A0    push        ebp
 0048A9A1    mov         ebp,esp
 0048A9A3    add         esp,0FFFFFFF4
 0048A9A6    push        ebx
 0048A9A7    push        esi
 0048A9A8    push        edi
 0048A9A9    mov         dword ptr [ebp-8],edx
 0048A9AC    mov         dword ptr [ebp-4],eax
 0048A9AF    xor         eax,eax
 0048A9B1    mov         dword ptr [ebp-0C],eax
 0048A9B4    cmp         dword ptr [ebp-8],0
>0048A9B8    je          0048AA0B
 0048A9BA    mov         eax,dword ptr [ebp-8]
 0048A9BD    call        TObject.ClassType
 0048A9C2    mov         dl,1
 0048A9C4    call        dword ptr [eax+48]
 0048A9C7    mov         dword ptr [ebp-0C],eax
 0048A9CA    mov         edx,dword ptr [ebp-8]
 0048A9CD    mov         eax,dword ptr [ebp-0C]
 0048A9D0    mov         ecx,dword ptr [eax]
 0048A9D2    call        dword ptr [ecx+8]
 0048A9D5    mov         eax,dword ptr [ebp-0C]
 0048A9D8    mov         edx,dword ptr [ebp-4]
 0048A9DB    mov         dword ptr [eax+14],edx
 0048A9DE    push        eax
 0048A9DF    mov         eax,edx
 0048A9E1    mov         dx,0FFFD
 0048A9E5    call        @FindDynaInst
 0048A9EA    mov         edx,eax
 0048A9EC    pop         eax
 0048A9ED    mov         dword ptr [eax+10],edx
 0048A9F0    mov         eax,dword ptr [ebp-0C]
 0048A9F3    mov         edx,dword ptr [ebp-4]
 0048A9F6    mov         dword ptr [eax+1C],edx
 0048A9F9    push        eax
 0048A9FA    mov         eax,edx
 0048A9FC    mov         dx,0FFFC
 0048AA00    call        @FindDynaInst
 0048AA05    mov         edx,eax
 0048AA07    pop         eax
 0048AA08    mov         dword ptr [eax+18],edx
 0048AA0B    xor         eax,eax
 0048AA0D    push        ebp
 0048AA0E    push        48AA46
 0048AA13    push        dword ptr fs:[eax]
 0048AA16    mov         dword ptr fs:[eax],esp
 0048AA19    mov         eax,dword ptr [ebp-4]
 0048AA1C    mov         eax,dword ptr [eax+0C]
 0048AA1F    call        TObject.Free
 0048AA24    mov         eax,dword ptr [ebp-4]
 0048AA27    mov         edx,dword ptr [ebp-0C]
 0048AA2A    mov         dword ptr [eax+0C],edx
 0048AA2D    mov         edx,dword ptr [ebp-4]
 0048AA30    mov         eax,dword ptr [ebp-4]
 0048AA33    mov         si,0FFFD
 0048AA37    call        @CallDynaInst
 0048AA3C    xor         eax,eax
 0048AA3E    pop         edx
 0048AA3F    pop         ecx
 0048AA40    pop         ecx
 0048AA41    mov         dword ptr fs:[eax],edx
>0048AA44    jmp         0048AA5D
>0048AA46    jmp         @HandleAnyException
 0048AA4B    mov         eax,dword ptr [ebp-0C]
 0048AA4E    call        TObject.Free
 0048AA53    call        @RaiseAgain
 0048AA58    call        @DoneExcept
 0048AA5D    pop         edi
 0048AA5E    pop         esi
 0048AA5F    pop         ebx
 0048AA60    mov         esp,ebp
 0048AA62    pop         ebp
 0048AA63    ret
*}
end;

//0048AA64
{*procedure sub_0048AA64(?:?; ?:?);
begin
 0048AA64    push        ebp
 0048AA65    mov         ebp,esp
 0048AA67    add         esp,0FFFFFFF8
 0048AA6A    mov         dword ptr [ebp-8],edx
 0048AA6D    mov         dword ptr [ebp-4],eax
 0048AA70    mov         eax,dword ptr [ebp-4]
 0048AA73    call        0048A950
 0048AA78    mov         edx,dword ptr [ebp-8]
 0048AA7B    mov         ecx,dword ptr [eax]
 0048AA7D    call        dword ptr [ecx+54]
 0048AA80    pop         ecx
 0048AA81    pop         ecx
 0048AA82    pop         ebp
 0048AA83    ret
end;*}

//0048AA84
{*procedure sub_0048AA84(?:?; ?:?);
begin
 0048AA84    push        ebp
 0048AA85    mov         ebp,esp
 0048AA87    add         esp,0FFFFFFF8
 0048AA8A    mov         dword ptr [ebp-8],edx
 0048AA8D    mov         dword ptr [ebp-4],eax
 0048AA90    mov         eax,dword ptr [ebp-4]
 0048AA93    call        0048A950
 0048AA98    mov         edx,dword ptr [ebp-8]
 0048AA9B    mov         ecx,dword ptr [eax]
 0048AA9D    call        dword ptr [ecx+58]
 0048AAA0    pop         ecx
 0048AAA1    pop         ecx
 0048AAA2    pop         ebp
 0048AAA3    ret
end;*}

//0048AAA4
{*procedure sub_0048AAA4(?:?);
begin
 0048AAA4    push        ebp
 0048AAA5    mov         ebp,esp
 0048AAA7    add         esp,0FFFFFFF8
 0048AAAA    mov         dword ptr [ebp-8],edx
 0048AAAD    mov         dword ptr [ebp-4],eax
 0048AAB0    cmp         dword ptr [ebp-8],0
>0048AAB4    jne         0048AAC2
 0048AAB6    xor         edx,edx
 0048AAB8    mov         eax,dword ptr [ebp-4]
 0048AABB    call        0048A9A0
>0048AAC0    jmp         0048AB0E
 0048AAC2    mov         eax,dword ptr [ebp-8]
 0048AAC5    mov         edx,dword ptr ds:[4859C0];TPicture
 0048AACB    call        @IsClass
 0048AAD0    test        al,al
>0048AAD2    je          0048AAE4
 0048AAD4    mov         eax,dword ptr [ebp-8]
 0048AAD7    mov         edx,dword ptr [eax+0C]
 0048AADA    mov         eax,dword ptr [ebp-4]
 0048AADD    call        0048A9A0
>0048AAE2    jmp         0048AB0E
 0048AAE4    mov         eax,dword ptr [ebp-8]
 0048AAE7    mov         edx,dword ptr ds:[48586C];TGraphic
 0048AAED    call        @IsClass
 0048AAF2    test        al,al
>0048AAF4    je          0048AB03
 0048AAF6    mov         edx,dword ptr [ebp-8]
 0048AAF9    mov         eax,dword ptr [ebp-4]
 0048AAFC    call        0048A9A0
>0048AB01    jmp         0048AB0E
 0048AB03    mov         edx,dword ptr [ebp-8]
 0048AB06    mov         eax,dword ptr [ebp-4]
 0048AB09    call        004790A8
 0048AB0E    pop         ecx
 0048AB0F    pop         ecx
 0048AB10    pop         ebp
 0048AB11    ret
end;*}

//0048AB14
{*procedure TPicture.sub_0048AB14(?:?);
begin
 0048AB14    push        ebp
 0048AB15    mov         ebp,esp
 0048AB17    add         esp,0FFFFFFF8
 0048AB1A    push        ebx
 0048AB1B    mov         dword ptr [ebp-8],edx
 0048AB1E    mov         dword ptr [ebp-4],eax
 0048AB21    mov         eax,dword ptr [ebp-4]
 0048AB24    cmp         word ptr [eax+12],0;TPicture.?f12:word
>0048AB29    je          0048AB37
 0048AB2B    mov         ebx,dword ptr [ebp-4]
 0048AB2E    mov         edx,dword ptr [ebp-4]
 0048AB31    mov         eax,dword ptr [ebx+14];TPicture.?f14:TImage
 0048AB34    call        dword ptr [ebx+10];TPicture.FOnChange
 0048AB37    mov         eax,dword ptr [ebp-4]
 0048AB3A    cmp         dword ptr [eax+18],0;TPicture.FNotify:IChangeNotifier
>0048AB3E    je          0048AB4B
 0048AB40    mov         eax,dword ptr [ebp-4]
 0048AB43    mov         eax,dword ptr [eax+18];TPicture.FNotify:IChangeNotifier
 0048AB46    mov         edx,dword ptr [eax]
 0048AB48    call        dword ptr [edx+0C]
 0048AB4B    pop         ebx
 0048AB4C    pop         ecx
 0048AB4D    pop         ecx
 0048AB4E    pop         ebp
 0048AB4F    ret
end;*}

//0048AB50
{*procedure TPicture.sub_0048AB50(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0048AB50    push        ebp
 0048AB51    mov         ebp,esp
 0048AB53    add         esp,0FFFFFFF4
 0048AB56    push        ebx
 0048AB57    mov         byte ptr [ebp-9],cl
 0048AB5A    mov         dword ptr [ebp-8],edx
 0048AB5D    mov         dword ptr [ebp-4],eax
 0048AB60    mov         eax,dword ptr [ebp-4]
 0048AB63    cmp         word ptr [eax+22],0;TPicture.?f22:word
>0048AB68    je          0048AB89
 0048AB6A    mov         al,byte ptr [ebp+14]
 0048AB6D    push        eax
 0048AB6E    mov         al,byte ptr [ebp+10]
 0048AB71    push        eax
 0048AB72    mov         eax,dword ptr [ebp+0C]
 0048AB75    push        eax
 0048AB76    mov         eax,dword ptr [ebp+8]
 0048AB79    push        eax
 0048AB7A    mov         ebx,dword ptr [ebp-4]
 0048AB7D    mov         cl,byte ptr [ebp-9]
 0048AB80    mov         edx,dword ptr [ebp-8]
 0048AB83    mov         eax,dword ptr [ebx+24];TPicture.?f24:TImage
 0048AB86    call        dword ptr [ebx+20];TPicture.FOnProgress
 0048AB89    pop         ebx
 0048AB8A    mov         esp,ebp
 0048AB8C    pop         ebp
 0048AB8D    ret         10
end;*}

//0048AB90
procedure TPicture.ReadData(Stream:TStream);
begin
{*
 0048AB90    push        ebp
 0048AB91    mov         ebp,esp
 0048AB93    add         esp,0FFFFFFAC
 0048AB96    push        ebx
 0048AB97    push        esi
 0048AB98    push        edi
 0048AB99    xor         ecx,ecx
 0048AB9B    mov         dword ptr [ebp-54],ecx
 0048AB9E    mov         dword ptr [ebp-8],edx
 0048ABA1    mov         dword ptr [ebp-4],eax
 0048ABA4    xor         eax,eax
 0048ABA6    push        ebp
 0048ABA7    push        48ACB2
 0048ABAC    push        dword ptr fs:[eax]
 0048ABAF    mov         dword ptr fs:[eax],esp
 0048ABB2    lea         edx,[ebp-50]
 0048ABB5    mov         ecx,1
 0048ABBA    mov         eax,dword ptr [ebp-8]
 0048ABBD    mov         ebx,dword ptr [eax]
 0048ABBF    call        dword ptr [ebx+0C]
 0048ABC2    xor         ecx,ecx
 0048ABC4    mov         cl,byte ptr [ebp-50]
 0048ABC7    lea         edx,[ebp-4F]
 0048ABCA    mov         eax,dword ptr [ebp-8]
 0048ABCD    mov         ebx,dword ptr [eax]
 0048ABCF    call        dword ptr [ebx+0C]
 0048ABD2    lea         eax,[ebp-54]
 0048ABD5    lea         edx,[ebp-50]
 0048ABD8    call        @LStrFromString
 0048ABDD    mov         edx,dword ptr [ebp-54]
 0048ABE0    mov         eax,[00541084];gvar_00541084:TFileFormatsList
 0048ABE5    call        0048A560
 0048ABEA    mov         dword ptr [ebp-10],eax
 0048ABED    xor         eax,eax
 0048ABEF    mov         dword ptr [ebp-0C],eax
 0048ABF2    cmp         dword ptr [ebp-10],0
>0048ABF6    je          0048AC3D
 0048ABF8    mov         dl,1
 0048ABFA    mov         eax,dword ptr [ebp-10]
 0048ABFD    call        dword ptr [eax+48]
 0048AC00    mov         dword ptr [ebp-0C],eax
 0048AC03    xor         eax,eax
 0048AC05    push        ebp
 0048AC06    push        48AC26
 0048AC0B    push        dword ptr fs:[eax]
 0048AC0E    mov         dword ptr fs:[eax],esp
 0048AC11    mov         edx,dword ptr [ebp-8]
 0048AC14    mov         eax,dword ptr [ebp-0C]
 0048AC17    mov         ecx,dword ptr [eax]
 0048AC19    call        dword ptr [ecx+30]
 0048AC1C    xor         eax,eax
 0048AC1E    pop         edx
 0048AC1F    pop         ecx
 0048AC20    pop         ecx
 0048AC21    mov         dword ptr fs:[eax],edx
>0048AC24    jmp         0048AC3D
>0048AC26    jmp         @HandleAnyException
 0048AC2B    mov         eax,dword ptr [ebp-0C]
 0048AC2E    call        TObject.Free
 0048AC33    call        @RaiseAgain
 0048AC38    call        @DoneExcept
 0048AC3D    mov         eax,dword ptr [ebp-4]
 0048AC40    mov         eax,dword ptr [eax+0C]
 0048AC43    call        TObject.Free
 0048AC48    mov         eax,dword ptr [ebp-4]
 0048AC4B    mov         edx,dword ptr [ebp-0C]
 0048AC4E    mov         dword ptr [eax+0C],edx
 0048AC51    cmp         dword ptr [ebp-0C],0
>0048AC55    je          0048AC8D
 0048AC57    mov         eax,dword ptr [ebp-0C]
 0048AC5A    mov         edx,dword ptr [ebp-4]
 0048AC5D    mov         dword ptr [eax+14],edx
 0048AC60    push        eax
 0048AC61    mov         eax,edx
 0048AC63    mov         dx,0FFFD
 0048AC67    call        @FindDynaInst
 0048AC6C    mov         edx,eax
 0048AC6E    pop         eax
 0048AC6F    mov         dword ptr [eax+10],edx
 0048AC72    mov         eax,dword ptr [ebp-0C]
 0048AC75    mov         edx,dword ptr [ebp-4]
 0048AC78    mov         dword ptr [eax+1C],edx
 0048AC7B    push        eax
 0048AC7C    mov         eax,edx
 0048AC7E    mov         dx,0FFFC
 0048AC82    call        @FindDynaInst
 0048AC87    mov         edx,eax
 0048AC89    pop         eax
 0048AC8A    mov         dword ptr [eax+18],edx
 0048AC8D    mov         edx,dword ptr [ebp-4]
 0048AC90    mov         eax,dword ptr [ebp-4]
 0048AC93    mov         si,0FFFD
 0048AC97    call        @CallDynaInst
 0048AC9C    xor         eax,eax
 0048AC9E    pop         edx
 0048AC9F    pop         ecx
 0048ACA0    pop         ecx
 0048ACA1    mov         dword ptr fs:[eax],edx
 0048ACA4    push        48ACB9
 0048ACA9    lea         eax,[ebp-54]
 0048ACAC    call        @LStrClr
 0048ACB1    ret
>0048ACB2    jmp         @HandleFinally
>0048ACB7    jmp         0048ACA9
 0048ACB9    pop         edi
 0048ACBA    pop         esi
 0048ACBB    pop         ebx
 0048ACBC    mov         esp,ebp
 0048ACBE    pop         ebp
 0048ACBF    ret
*}
end;

//0048ACC0
procedure TPicture.WriteData(Stream:TStream);
begin
{*
 0048ACC0    push        ebp
 0048ACC1    mov         ebp,esp
 0048ACC3    add         esp,0FFFFFEB8
 0048ACC9    push        ebx
 0048ACCA    mov         dword ptr [ebp-8],edx
 0048ACCD    mov         dword ptr [ebp-4],eax
 0048ACD0    mov         eax,dword ptr [ebp-4]
 0048ACD3    cmp         dword ptr [eax+0C],0
>0048ACD7    je          0048ACFE
 0048ACD9    lea         edx,[ebp-148]
 0048ACDF    mov         eax,dword ptr [ebp-4]
 0048ACE2    mov         eax,dword ptr [eax+0C]
 0048ACE5    mov         eax,dword ptr [eax]
 0048ACE7    call        TObject.ClassName
 0048ACEC    lea         edx,[ebp-148]
 0048ACF2    lea         eax,[ebp-48]
 0048ACF5    mov         cl,3F
 0048ACF7    call        @PStrNCpy
>0048ACFC    jmp         0048AD02
 0048ACFE    mov         byte ptr [ebp-48],0
 0048AD02    xor         ecx,ecx
 0048AD04    mov         cl,byte ptr [ebp-48]
 0048AD07    inc         ecx
 0048AD08    lea         edx,[ebp-48]
 0048AD0B    mov         eax,dword ptr [ebp-8]
 0048AD0E    mov         ebx,dword ptr [eax]
 0048AD10    call        dword ptr [ebx+10]
 0048AD13    mov         eax,dword ptr [ebp-4]
 0048AD16    cmp         dword ptr [eax+0C],0
>0048AD1A    je          0048AD2A
 0048AD1C    mov         edx,dword ptr [ebp-8]
 0048AD1F    mov         eax,dword ptr [ebp-4]
 0048AD22    mov         eax,dword ptr [eax+0C]
 0048AD25    mov         ecx,dword ptr [eax]
 0048AD27    call        dword ptr [ecx+44]
 0048AD2A    pop         ebx
 0048AD2B    mov         esp,ebp
 0048AD2D    pop         ebp
 0048AD2E    ret
*}
end;

//0048AD30
{*function sub_0048AD30(?:?):?;
begin
 0048AD30    push        ebp
 0048AD31    mov         ebp,esp
 0048AD33    add         esp,0FFFFFFF8
 0048AD36    mov         eax,dword ptr [ebp+8]
 0048AD39    mov         eax,dword ptr [eax-4]
 0048AD3C    cmp         dword ptr [eax+20],0
>0048AD40    je          0048ADB3
 0048AD42    mov         byte ptr [ebp-1],1
 0048AD46    mov         eax,dword ptr [ebp+8]
 0048AD49    mov         eax,dword ptr [eax-4]
 0048AD4C    mov         eax,dword ptr [eax+20]
 0048AD4F    mov         edx,dword ptr ds:[4859C0];TPicture
 0048AD55    call        @IsClass
 0048AD5A    test        al,al
>0048AD5C    je          0048ADC1
 0048AD5E    mov         eax,dword ptr [ebp+8]
 0048AD61    mov         eax,dword ptr [eax-4]
 0048AD64    mov         eax,dword ptr [eax+20]
 0048AD67    mov         dword ptr [ebp-8],eax
 0048AD6A    mov         eax,dword ptr [ebp+8]
 0048AD6D    mov         eax,dword ptr [eax-8]
 0048AD70    mov         eax,dword ptr [eax+0C]
 0048AD73    mov         edx,dword ptr [ebp-8]
 0048AD76    cmp         eax,dword ptr [edx+0C]
>0048AD79    je          0048ADA8
 0048AD7B    mov         eax,dword ptr [ebp+8]
 0048AD7E    mov         eax,dword ptr [eax-8]
 0048AD81    cmp         dword ptr [eax+0C],0
>0048AD85    je          0048ADAC
 0048AD87    mov         eax,dword ptr [ebp-8]
 0048AD8A    cmp         dword ptr [eax+0C],0
>0048AD8E    je          0048ADAC
 0048AD90    mov         eax,dword ptr [ebp+8]
 0048AD93    mov         eax,dword ptr [eax-8]
 0048AD96    mov         eax,dword ptr [eax+0C]
 0048AD99    mov         edx,dword ptr [ebp-8]
 0048AD9C    mov         edx,dword ptr [edx+0C]
 0048AD9F    mov         ecx,dword ptr [eax]
 0048ADA1    call        dword ptr [ecx+18]
 0048ADA4    test        al,al
>0048ADA6    je          0048ADAC
 0048ADA8    xor         eax,eax
>0048ADAA    jmp         0048ADAE
 0048ADAC    mov         al,1
 0048ADAE    mov         byte ptr [ebp-1],al
>0048ADB1    jmp         0048ADC1
 0048ADB3    mov         eax,dword ptr [ebp+8]
 0048ADB6    mov         eax,dword ptr [eax-8]
 0048ADB9    cmp         dword ptr [eax+0C],0
 0048ADBD    setne       byte ptr [ebp-1]
 0048ADC1    mov         al,byte ptr [ebp-1]
 0048ADC4    pop         ecx
 0048ADC5    pop         ecx
 0048ADC6    pop         ebp
 0048ADC7    ret
end;*}

//0048ADC8
procedure TPicture.DefineProperties(Filer:TFiler);
begin
{*
 0048ADC8    push        ebp
 0048ADC9    mov         ebp,esp
 0048ADCB    add         esp,0FFFFFFF8
 0048ADCE    push        ebx
 0048ADCF    mov         dword ptr [ebp-4],edx
 0048ADD2    mov         dword ptr [ebp-8],eax
 0048ADD5    mov         eax,dword ptr [ebp-8]
 0048ADD8    push        eax
 0048ADD9    push        48AB90;TPicture.ReadData
 0048ADDE    mov         eax,dword ptr [ebp-8]
 0048ADE1    push        eax
 0048ADE2    push        48ACC0;TPicture.WriteData
 0048ADE7    push        ebp
 0048ADE8    call        0048AD30
 0048ADED    pop         ecx
 0048ADEE    mov         ecx,eax
 0048ADF0    mov         edx,48AE0C;'Data'
 0048ADF5    mov         eax,dword ptr [ebp-4]
 0048ADF8    mov         ebx,dword ptr [eax]
 0048ADFA    call        dword ptr [ebx+8]
 0048ADFD    pop         ebx
 0048ADFE    pop         ecx
 0048ADFF    pop         ecx
 0048AE00    pop         ebp
 0048AE01    ret
*}
end;

//0048AE14
{*function sub_0048AE14(?:TPicture):?;
begin
 0048AE14    push        ebp
 0048AE15    mov         ebp,esp
 0048AE17    add         esp,0FFFFFFF8
 0048AE1A    mov         dword ptr [ebp-4],eax
 0048AE1D    xor         eax,eax
 0048AE1F    mov         dword ptr [ebp-8],eax
 0048AE22    mov         eax,dword ptr [ebp-4]
 0048AE25    cmp         dword ptr [eax+0C],0
>0048AE29    je          0048AE39
 0048AE2B    mov         eax,dword ptr [ebp-4]
 0048AE2E    mov         eax,dword ptr [eax+0C]
 0048AE31    mov         edx,dword ptr [eax]
 0048AE33    call        dword ptr [edx+2C]
 0048AE36    mov         dword ptr [ebp-8],eax
 0048AE39    mov         eax,dword ptr [ebp-8]
 0048AE3C    pop         ecx
 0048AE3D    pop         ecx
 0048AE3E    pop         ebp
 0048AE3F    ret
end;*}

//0048AE40
{*function sub_0048AE40(?:TPicture):?;
begin
 0048AE40    push        ebp
 0048AE41    mov         ebp,esp
 0048AE43    add         esp,0FFFFFFF8
 0048AE46    mov         dword ptr [ebp-4],eax
 0048AE49    xor         eax,eax
 0048AE4B    mov         dword ptr [ebp-8],eax
 0048AE4E    mov         eax,dword ptr [ebp-4]
 0048AE51    cmp         dword ptr [eax+0C],0
>0048AE55    je          0048AE65
 0048AE57    mov         eax,dword ptr [ebp-4]
 0048AE5A    mov         eax,dword ptr [eax+0C]
 0048AE5D    mov         edx,dword ptr [eax]
 0048AE5F    call        dword ptr [edx+20]
 0048AE62    mov         dword ptr [ebp-8],eax
 0048AE65    mov         eax,dword ptr [ebp-8]
 0048AE68    pop         ecx
 0048AE69    pop         ecx
 0048AE6A    pop         ebp
 0048AE6B    ret
end;*}

//0048AE6C
destructor TMetafileImage.Destroy;
begin
{*
 0048AE6C    push        ebp
 0048AE6D    mov         ebp,esp
 0048AE6F    add         esp,0FFFFFFF8
 0048AE72    call        @BeforeDestruction
 0048AE77    mov         byte ptr [ebp-5],dl
 0048AE7A    mov         dword ptr [ebp-4],eax
 0048AE7D    mov         eax,dword ptr [ebp-4]
 0048AE80    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0048AE84    je          0048AE92
 0048AE86    mov         eax,dword ptr [ebp-4]
 0048AE89    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048AE8C    push        eax
 0048AE8D    call        gdi32.DeleteEnhMetaFile
 0048AE92    mov         eax,dword ptr [ebp-4]
 0048AE95    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 0048AE98    call        00485E88
 0048AE9D    mov         dl,byte ptr [ebp-5]
 0048AEA0    and         dl,0FC
 0048AEA3    mov         eax,dword ptr [ebp-4]
 0048AEA6    call        TObject.Destroy
 0048AEAB    cmp         byte ptr [ebp-5],0
>0048AEAF    jle         0048AEB9
 0048AEB1    mov         eax,dword ptr [ebp-4]
 0048AEB4    call        @ClassDestroy
 0048AEB9    pop         ecx
 0048AEBA    pop         ecx
 0048AEBB    pop         ebp
 0048AEBC    ret
*}
end;

//0048AEC0
procedure sub_0048AEC0;
begin
{*
 0048AEC0    push        ebp
 0048AEC1    mov         ebp,esp
 0048AEC3    push        ecx
 0048AEC4    mov         dword ptr [ebp-4],eax
 0048AEC7    pop         ecx
 0048AEC8    pop         ebp
 0048AEC9    ret
*}
end;

//0048AECC
constructor sub_0048AECC;
begin
{*
 0048AECC    push        ebp
 0048AECD    mov         ebp,esp
 0048AECF    add         esp,0FFFFFFF8
 0048AED2    test        dl,dl
>0048AED4    je          0048AEDE
 0048AED6    add         esp,0FFFFFFF0
 0048AED9    call        @ClassCreate
 0048AEDE    mov         byte ptr [ebp-5],dl
 0048AEE1    mov         dword ptr [ebp-4],eax
 0048AEE4    xor         edx,edx
 0048AEE6    mov         eax,dword ptr [ebp-4]
 0048AEE9    call        00489E60
 0048AEEE    mov         eax,dword ptr [ebp-4]
 0048AEF1    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 0048AEF5    mov         eax,dword ptr [ebp-4]
 0048AEF8    mov         byte ptr [eax+21],1;TMetafile.FTransparent:Boolean
 0048AEFC    xor         edx,edx
 0048AEFE    mov         eax,dword ptr [ebp-4]
 0048AF01    mov         ecx,dword ptr [eax]
 0048AF03    call        dword ptr [ecx+8];TMetafile.sub_0048AF64
 0048AF06    mov         eax,dword ptr [ebp-4]
 0048AF09    cmp         byte ptr [ebp-5],0
>0048AF0D    je          0048AF1E
 0048AF0F    call        @AfterConstruction
 0048AF14    pop         dword ptr fs:[0]
 0048AF1B    add         esp,0C
 0048AF1E    mov         eax,dword ptr [ebp-4]
 0048AF21    pop         ecx
 0048AF22    pop         ecx
 0048AF23    pop         ebp
 0048AF24    ret
*}
end;

//0048AF28
destructor TMetafile.Destroy;
begin
{*
 0048AF28    push        ebp
 0048AF29    mov         ebp,esp
 0048AF2B    add         esp,0FFFFFFF8
 0048AF2E    call        @BeforeDestruction
 0048AF33    mov         byte ptr [ebp-5],dl
 0048AF36    mov         dword ptr [ebp-4],eax
 0048AF39    mov         eax,dword ptr [ebp-4]
 0048AF3C    mov         eax,dword ptr [eax+28]
 0048AF3F    call        0048C288
 0048AF44    mov         dl,byte ptr [ebp-5]
 0048AF47    and         dl,0FC
 0048AF4A    mov         eax,dword ptr [ebp-4]
 0048AF4D    call        TPersistent.Destroy
 0048AF52    cmp         byte ptr [ebp-5],0
>0048AF56    jle         0048AF60
 0048AF58    mov         eax,dword ptr [ebp-4]
 0048AF5B    call        @ClassDestroy
 0048AF60    pop         ecx
 0048AF61    pop         ecx
 0048AF62    pop         ebp
 0048AF63    ret
*}
end;

//0048AF64
{*procedure sub_0048AF64(?:?);
begin
 0048AF64    push        ebp
 0048AF65    mov         ebp,esp
 0048AF67    add         esp,0FFFFFFF4
 0048AF6A    mov         dword ptr [ebp-8],edx
 0048AF6D    mov         dword ptr [ebp-4],eax
 0048AF70    cmp         dword ptr [ebp-8],0
>0048AF74    je          0048AF8C
 0048AF76    mov         eax,dword ptr [ebp-8]
 0048AF79    mov         edx,dword ptr ds:[485B2C];TMetafile
 0048AF7F    call        @IsClass
 0048AF84    test        al,al
>0048AF86    je          0048B027
 0048AF8C    xor         eax,eax
 0048AF8E    mov         dword ptr [ebp-0C],eax
 0048AF91    mov         eax,dword ptr [ebp-4]
 0048AF94    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048AF98    je          0048AFB1
 0048AF9A    mov         eax,dword ptr [ebp-4]
 0048AF9D    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048AFA0    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 0048AFA3    mov         dword ptr [ebp-0C],eax
 0048AFA6    mov         eax,dword ptr [ebp-4]
 0048AFA9    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048AFAC    call        0048C288
 0048AFB1    cmp         dword ptr [ebp-8],0
>0048AFB5    je          0048AFD1
 0048AFB7    mov         eax,dword ptr [ebp-8]
 0048AFBA    mov         eax,dword ptr [eax+28]
 0048AFBD    mov         edx,dword ptr [ebp-4]
 0048AFC0    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 0048AFC3    mov         eax,dword ptr [ebp-8]
 0048AFC6    mov         al,byte ptr [eax+2C]
 0048AFC9    mov         edx,dword ptr [ebp-4]
 0048AFCC    mov         byte ptr [edx+2C],al;TMetafile.FEnhanced:Boolean
>0048AFCF    jmp         0048AFEA
 0048AFD1    mov         dl,1
 0048AFD3    mov         eax,[00485ACC];TMetafileImage
 0048AFD8    call        TObject.Create;TMetafileImage.Create
 0048AFDD    mov         edx,dword ptr [ebp-4]
 0048AFE0    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 0048AFE3    mov         eax,dword ptr [ebp-4]
 0048AFE6    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 0048AFEA    mov         eax,dword ptr [ebp-4]
 0048AFED    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048AFF0    call        0048C278
 0048AFF5    mov         eax,dword ptr [ebp-4]
 0048AFF8    mov         edx,dword ptr [eax]
 0048AFFA    call        dword ptr [edx+24];TMetafile.sub_0048B18C
 0048AFFD    cmp         eax,dword ptr [ebp-0C]
>0048B000    je          0048B00E
 0048B002    mov         eax,dword ptr [ebp-4]
 0048B005    mov         edx,dword ptr [eax]
 0048B007    call        dword ptr [edx+24];TMetafile.sub_0048B18C
 0048B00A    test        eax,eax
>0048B00C    jne         0048B012
 0048B00E    xor         eax,eax
>0048B010    jmp         0048B014
 0048B012    mov         al,1
 0048B014    mov         edx,dword ptr [ebp-4]
 0048B017    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 0048B01A    mov         edx,dword ptr [ebp-4]
 0048B01D    mov         eax,dword ptr [ebp-4]
 0048B020    mov         ecx,dword ptr [eax]
 0048B022    call        dword ptr [ecx+10];TMetafile.sub_00489EA4
>0048B025    jmp         0048B032
 0048B027    mov         edx,dword ptr [ebp-8]
 0048B02A    mov         eax,dword ptr [ebp-4]
 0048B02D    call        004790A8
 0048B032    mov         esp,ebp
 0048B034    pop         ebp
 0048B035    ret
end;*}

//0048B038
{*procedure sub_0048B038(?:?; ?:?);
begin
 0048B038    push        ebp
 0048B039    mov         ebp,esp
 0048B03B    add         esp,0FFFFFFDC
 0048B03E    push        esi
 0048B03F    push        edi
 0048B040    mov         dword ptr [ebp-0C],ecx
 0048B043    mov         dword ptr [ebp-8],edx
 0048B046    mov         dword ptr [ebp-4],eax
 0048B049    mov         eax,dword ptr [ebp-4]
 0048B04C    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048B050    je          0048B0D9
 0048B056    mov         eax,dword ptr [ebp-4]
 0048B059    mov         edx,dword ptr [eax]
 0048B05B    call        dword ptr [edx+24];TMetafile.sub_0048B18C
 0048B05E    mov         dword ptr [ebp-10],eax
 0048B061    xor         eax,eax
 0048B063    mov         dword ptr [ebp-14],eax
 0048B066    cmp         dword ptr [ebp-10],0
>0048B06A    je          0048B091
 0048B06C    push        0FF
 0048B06E    mov         eax,dword ptr [ebp-10]
 0048B071    push        eax
 0048B072    mov         eax,dword ptr [ebp-8]
 0048B075    call        TCanvas.GetHandle
 0048B07A    push        eax
 0048B07B    call        gdi32.SelectPalette
 0048B080    mov         dword ptr [ebp-14],eax
 0048B083    mov         eax,dword ptr [ebp-8]
 0048B086    call        TCanvas.GetHandle
 0048B08B    push        eax
 0048B08C    call        gdi32.RealizePalette
 0048B091    mov         eax,dword ptr [ebp-0C]
 0048B094    mov         esi,eax
 0048B096    lea         edi,[ebp-24]
 0048B099    movs        dword ptr [edi],dword ptr [esi]
 0048B09A    movs        dword ptr [edi],dword ptr [esi]
 0048B09B    movs        dword ptr [edi],dword ptr [esi]
 0048B09C    movs        dword ptr [edi],dword ptr [esi]
 0048B09D    dec         dword ptr [ebp-1C]
 0048B0A0    dec         dword ptr [ebp-18]
 0048B0A3    lea         eax,[ebp-24]
 0048B0A6    push        eax
 0048B0A7    mov         eax,dword ptr [ebp-4]
 0048B0AA    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B0AD    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048B0B0    push        eax
 0048B0B1    mov         eax,dword ptr [ebp-8]
 0048B0B4    call        TCanvas.GetHandle
 0048B0B9    push        eax
 0048B0BA    call        gdi32.PlayEnhMetaFile
 0048B0BF    cmp         dword ptr [ebp-10],0
>0048B0C3    je          0048B0D9
 0048B0C5    push        0FF
 0048B0C7    mov         eax,dword ptr [ebp-14]
 0048B0CA    push        eax
 0048B0CB    mov         eax,dword ptr [ebp-8]
 0048B0CE    call        TCanvas.GetHandle
 0048B0D3    push        eax
 0048B0D4    call        gdi32.SelectPalette
 0048B0D9    pop         edi
 0048B0DA    pop         esi
 0048B0DB    mov         esp,ebp
 0048B0DD    pop         ebp
 0048B0DE    ret
end;*}

//0048B0E0
{*function sub_0048B0E0:?;
begin
 0048B0E0    push        ebp
 0048B0E1    mov         ebp,esp
 0048B0E3    add         esp,0FFFFFFF8
 0048B0E6    mov         dword ptr [ebp-4],eax
 0048B0E9    mov         eax,dword ptr [ebp-4]
 0048B0EC    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
 0048B0F0    sete        byte ptr [ebp-5]
 0048B0F4    mov         al,byte ptr [ebp-5]
 0048B0F7    pop         ecx
 0048B0F8    pop         ecx
 0048B0F9    pop         ebp
 0048B0FA    ret
end;*}

//0048B0FC
{*function sub_0048B0FC:?;
begin
 0048B0FC    push        ebp
 0048B0FD    mov         ebp,esp
 0048B0FF    add         esp,0FFFFFF90
 0048B102    mov         dword ptr [ebp-4],eax
 0048B105    mov         eax,dword ptr [ebp-4]
 0048B108    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048B10C    jne         0048B116
 0048B10E    mov         eax,dword ptr [ebp-4]
 0048B111    call        0048B350
 0048B116    mov         eax,dword ptr [ebp-4]
 0048B119    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B11C    mov         dword ptr [ebp-0C],eax
 0048B11F    mov         eax,dword ptr [ebp-0C]
 0048B122    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>0048B127    jne         0048B169
 0048B129    mov         eax,dword ptr [ebp-0C]
 0048B12C    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0048B130    jne         0048B13D
 0048B132    mov         eax,dword ptr [ebp-0C]
 0048B135    mov         eax,dword ptr [eax+20];TMetafileImage.FTempHeight:Integer
 0048B138    mov         dword ptr [ebp-8],eax
>0048B13B    jmp         0048B183
 0048B13D    lea         eax,[ebp-70]
 0048B140    push        eax
 0048B141    push        64
 0048B143    mov         eax,dword ptr [ebp-0C]
 0048B146    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048B149    push        eax
 0048B14A    call        gdi32.GetEnhMetaFileHeader
 0048B14F    imul        eax,dword ptr [ebp-1C],64
 0048B153    push        eax
 0048B154    mov         eax,dword ptr [ebp-24]
 0048B157    push        eax
 0048B158    mov         eax,dword ptr [ebp-0C]
 0048B15B    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 0048B15E    push        eax
 0048B15F    call        kernel32.MulDiv
 0048B164    mov         dword ptr [ebp-8],eax
>0048B167    jmp         0048B183
 0048B169    push        9EC
 0048B16E    mov         eax,[0055DB18];gvar_0055DB18
 0048B173    push        eax
 0048B174    mov         eax,dword ptr [ebp-0C]
 0048B177    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 0048B17A    push        eax
 0048B17B    call        kernel32.MulDiv
 0048B180    mov         dword ptr [ebp-8],eax
 0048B183    mov         eax,dword ptr [ebp-8]
 0048B186    mov         esp,ebp
 0048B188    pop         ebp
 0048B189    ret
end;*}

//0048B18C
{*function sub_0048B18C:?;
begin
 0048B18C    push        ebp
 0048B18D    mov         ebp,esp
 0048B18F    add         esp,0FFFFFBF0
 0048B195    mov         dword ptr [ebp-4],eax
 0048B198    xor         eax,eax
 0048B19A    mov         dword ptr [ebp-8],eax
 0048B19D    mov         eax,dword ptr [ebp-4]
 0048B1A0    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048B1A4    je          0048B24F
 0048B1AA    mov         eax,dword ptr [ebp-4]
 0048B1AD    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B1B0    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0048B1B4    je          0048B24F
 0048B1BA    mov         eax,dword ptr [ebp-4]
 0048B1BD    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B1C0    cmp         dword ptr [eax+14],0;TMetafileImage.FPalette:HPALETTE
>0048B1C4    jne         0048B243
 0048B1C6    push        0
 0048B1C8    push        0
 0048B1CA    mov         eax,dword ptr [ebp-4]
 0048B1CD    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B1D0    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048B1D3    push        eax
 0048B1D4    call        gdi32.GetEnhMetaFilePaletteEntries
 0048B1D9    mov         dword ptr [ebp-0C],eax
 0048B1DC    cmp         dword ptr [ebp-0C],0
>0048B1E0    je          0048B24F
 0048B1E2    cmp         dword ptr [ebp-0C],100
>0048B1E9    jle         0048B1F2
 0048B1EB    and         dword ptr [ebp-0C],0FF
 0048B1F2    mov         eax,dword ptr [ebp-4]
 0048B1F5    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B1F8    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 0048B1FB    call        00485E88
 0048B200    mov         word ptr [ebp-410],300
 0048B209    mov         ax,word ptr [ebp-0C]
 0048B20D    mov         word ptr [ebp-40E],ax
 0048B214    lea         eax,[ebp-40C]
 0048B21A    push        eax
 0048B21B    mov         eax,dword ptr [ebp-0C]
 0048B21E    push        eax
 0048B21F    mov         eax,dword ptr [ebp-4]
 0048B222    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B225    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048B228    push        eax
 0048B229    call        gdi32.GetEnhMetaFilePaletteEntries
 0048B22E    lea         eax,[ebp-410]
 0048B234    push        eax
 0048B235    call        gdi32.CreatePalette
 0048B23A    mov         edx,dword ptr [ebp-4]
 0048B23D    mov         edx,dword ptr [edx+28];TMetafile.FImage:TMetafileImage
 0048B240    mov         dword ptr [edx+14],eax;TMetafileImage.FPalette:HPALETTE
 0048B243    mov         eax,dword ptr [ebp-4]
 0048B246    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B249    mov         eax,dword ptr [eax+14];TMetafileImage.FPalette:HPALETTE
 0048B24C    mov         dword ptr [ebp-8],eax
 0048B24F    mov         eax,dword ptr [ebp-8]
 0048B252    mov         esp,ebp
 0048B254    pop         ebp
 0048B255    ret
end;*}

//0048B258
{*function sub_0048B258:?;
begin
 0048B258    push        ebp
 0048B259    mov         ebp,esp
 0048B25B    add         esp,0FFFFFF90
 0048B25E    mov         dword ptr [ebp-4],eax
 0048B261    mov         eax,dword ptr [ebp-4]
 0048B264    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048B268    jne         0048B272
 0048B26A    mov         eax,dword ptr [ebp-4]
 0048B26D    call        0048B350
 0048B272    mov         eax,dword ptr [ebp-4]
 0048B275    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B278    mov         dword ptr [ebp-0C],eax
 0048B27B    mov         eax,dword ptr [ebp-0C]
 0048B27E    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>0048B283    jne         0048B2C5
 0048B285    mov         eax,dword ptr [ebp-0C]
 0048B288    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0048B28C    jne         0048B299
 0048B28E    mov         eax,dword ptr [ebp-0C]
 0048B291    mov         eax,dword ptr [eax+1C];TMetafileImage.FTempWidth:Integer
 0048B294    mov         dword ptr [ebp-8],eax
>0048B297    jmp         0048B2DF
 0048B299    lea         eax,[ebp-70]
 0048B29C    push        eax
 0048B29D    push        64
 0048B29F    mov         eax,dword ptr [ebp-0C]
 0048B2A2    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048B2A5    push        eax
 0048B2A6    call        gdi32.GetEnhMetaFileHeader
 0048B2AB    imul        eax,dword ptr [ebp-20],64
 0048B2AF    push        eax
 0048B2B0    mov         eax,dword ptr [ebp-28]
 0048B2B3    push        eax
 0048B2B4    mov         eax,dword ptr [ebp-0C]
 0048B2B7    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 0048B2BA    push        eax
 0048B2BB    call        kernel32.MulDiv
 0048B2C0    mov         dword ptr [ebp-8],eax
>0048B2C3    jmp         0048B2DF
 0048B2C5    push        9EC
 0048B2CA    mov         eax,[0055DB18];gvar_0055DB18
 0048B2CF    push        eax
 0048B2D0    mov         eax,dword ptr [ebp-0C]
 0048B2D3    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 0048B2D6    push        eax
 0048B2D7    call        kernel32.MulDiv
 0048B2DC    mov         dword ptr [ebp-8],eax
 0048B2DF    mov         eax,dword ptr [ebp-8]
 0048B2E2    mov         esp,ebp
 0048B2E4    pop         ebp
 0048B2E5    ret
end;*}

//0048B2E8
{*procedure sub_0048B2E8(?:?);
begin
 0048B2E8    push        ebp
 0048B2E9    mov         ebp,esp
 0048B2EB    add         esp,0FFFFFFF8
 0048B2EE    mov         dword ptr [ebp-8],edx
 0048B2F1    mov         dword ptr [ebp-4],eax
 0048B2F4    mov         edx,dword ptr [ebp-8]
 0048B2F7    mov         eax,dword ptr [ebp-4]
 0048B2FA    call        0048B984
 0048B2FF    test        al,al
>0048B301    je          0048B310
 0048B303    mov         edx,dword ptr [ebp-8]
 0048B306    mov         eax,dword ptr [ebp-4]
 0048B309    call        0048B404
>0048B30E    jmp         0048B32E
 0048B310    mov         eax,dword ptr [ebp-8]
 0048B313    mov         edx,dword ptr [eax]
 0048B315    call        dword ptr [edx]
 0048B317    push        eax
 0048B318    mov         eax,dword ptr [ebp-8]
 0048B31B    call        0047BCCC
 0048B320    pop         ecx
 0048B321    sub         ecx,eax
 0048B323    mov         edx,dword ptr [ebp-8]
 0048B326    mov         eax,dword ptr [ebp-4]
 0048B329    call        0048B4EC
 0048B32E    mov         eax,dword ptr [ebp-4]
 0048B331    mov         edx,dword ptr [eax]
 0048B333    call        dword ptr [edx+24];TMetafile.sub_0048B18C
 0048B336    test        eax,eax
 0048B338    setne       al
 0048B33B    mov         edx,dword ptr [ebp-4]
 0048B33E    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 0048B341    mov         edx,dword ptr [ebp-4]
 0048B344    mov         eax,dword ptr [ebp-4]
 0048B347    mov         ecx,dword ptr [eax]
 0048B349    call        dword ptr [ecx+10];TMetafile.sub_00489EA4
 0048B34C    pop         ecx
 0048B34D    pop         ecx
 0048B34E    pop         ebp
 0048B34F    ret
end;*}

//0048B350
procedure sub_0048B350(?:TMetafile);
begin
{*
 0048B350    push        ebp
 0048B351    mov         ebp,esp
 0048B353    push        ecx
 0048B354    mov         dword ptr [ebp-4],eax
 0048B357    mov         eax,dword ptr [ebp-4]
 0048B35A    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B35D    call        0048C288
 0048B362    mov         dl,1
 0048B364    mov         eax,[00485ACC];TMetafileImage
 0048B369    call        TObject.Create;TMetafileImage.Create
 0048B36E    mov         edx,dword ptr [ebp-4]
 0048B371    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 0048B374    mov         eax,dword ptr [ebp-4]
 0048B377    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B37A    call        0048C278
 0048B37F    pop         ecx
 0048B380    pop         ebp
 0048B381    ret
*}
end;

//0048B384
{*procedure sub_0048B384(?:?);
begin
 0048B384    push        ebp
 0048B385    mov         ebp,esp
 0048B387    add         esp,0FFFFFFF4
 0048B38A    push        ebx
 0048B38B    mov         dword ptr [ebp-8],edx
 0048B38E    mov         dword ptr [ebp-4],eax
 0048B391    lea         edx,[ebp-0C]
 0048B394    mov         ecx,4
 0048B399    mov         eax,dword ptr [ebp-8]
 0048B39C    mov         ebx,dword ptr [eax]
 0048B39E    call        dword ptr [ebx+0C]
 0048B3A1    cmp         dword ptr [ebp-0C],4
>0048B3A5    jg          0048B3B3
 0048B3A7    xor         edx,edx
 0048B3A9    mov         eax,dword ptr [ebp-4]
 0048B3AC    mov         ecx,dword ptr [eax]
 0048B3AE    call        dword ptr [ecx+8];TMetafile.sub_0048AF64
>0048B3B1    jmp         0048B3E0
 0048B3B3    mov         edx,dword ptr [ebp-8]
 0048B3B6    mov         eax,dword ptr [ebp-4]
 0048B3B9    call        0048B984
 0048B3BE    test        al,al
>0048B3C0    je          0048B3CF
 0048B3C2    mov         edx,dword ptr [ebp-8]
 0048B3C5    mov         eax,dword ptr [ebp-4]
 0048B3C8    call        0048B404
>0048B3CD    jmp         0048B3E0
 0048B3CF    mov         ecx,dword ptr [ebp-0C]
 0048B3D2    sub         ecx,4
 0048B3D5    mov         edx,dword ptr [ebp-8]
 0048B3D8    mov         eax,dword ptr [ebp-4]
 0048B3DB    call        0048B4EC
 0048B3E0    mov         eax,dword ptr [ebp-4]
 0048B3E3    mov         edx,dword ptr [eax]
 0048B3E5    call        dword ptr [edx+24];TMetafile.sub_0048B18C
 0048B3E8    test        eax,eax
 0048B3EA    setne       al
 0048B3ED    mov         edx,dword ptr [ebp-4]
 0048B3F0    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 0048B3F3    mov         edx,dword ptr [ebp-4]
 0048B3F6    mov         eax,dword ptr [ebp-4]
 0048B3F9    mov         ecx,dword ptr [eax]
 0048B3FB    call        dword ptr [ecx+10];TMetafile.sub_00489EA4
 0048B3FE    pop         ebx
 0048B3FF    mov         esp,ebp
 0048B401    pop         ebp
 0048B402    ret
end;*}

//0048B404
{*procedure sub_0048B404(?:TMetafile; ?:?);
begin
 0048B404    push        ebp
 0048B405    mov         ebp,esp
 0048B407    add         esp,0FFFFFF8C
 0048B40A    mov         dword ptr [ebp-8],edx
 0048B40D    mov         dword ptr [ebp-4],eax
 0048B410    mov         eax,dword ptr [ebp-4]
 0048B413    call        0048B350
 0048B418    lea         edx,[ebp-74]
 0048B41B    mov         ecx,64
 0048B420    mov         eax,dword ptr [ebp-8]
 0048B423    call        0047BF28
 0048B428    cmp         dword ptr [ebp-4C],464D4520
>0048B42F    je          0048B436
 0048B431    call        InvalidMetafile
 0048B436    mov         eax,dword ptr [ebp-44]
 0048B439    call        @GetMem
 0048B43E    mov         dword ptr [ebp-0C],eax
 0048B441    mov         eax,dword ptr [ebp-4]
 0048B444    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B447    mov         dword ptr [ebp-10],eax
 0048B44A    xor         eax,eax
 0048B44C    push        ebp
 0048B44D    push        48B4DE
 0048B452    push        dword ptr fs:[eax]
 0048B455    mov         dword ptr fs:[eax],esp
 0048B458    mov         edx,dword ptr [ebp-0C]
 0048B45B    lea         eax,[ebp-74]
 0048B45E    mov         ecx,64
 0048B463    call        Move
 0048B468    mov         ecx,dword ptr [ebp-44]
 0048B46B    sub         ecx,64
 0048B46E    mov         edx,dword ptr [ebp-0C]
 0048B471    add         edx,64
 0048B474    mov         eax,dword ptr [ebp-8]
 0048B477    call        0047BF28
 0048B47C    mov         eax,dword ptr [ebp-0C]
 0048B47F    push        eax
 0048B480    mov         eax,dword ptr [ebp-44]
 0048B483    push        eax
 0048B484    call        gdi32.SetEnhMetaFileBits
 0048B489    mov         edx,dword ptr [ebp-10]
 0048B48C    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 0048B48F    mov         eax,dword ptr [ebp-10]
 0048B492    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0048B496    jne         0048B49D
 0048B498    call        InvalidMetafile
 0048B49D    mov         eax,dword ptr [ebp-10]
 0048B4A0    mov         word ptr [eax+18],0;TMetafileImage.FInch:word
 0048B4A6    mov         eax,dword ptr [ebp-54]
 0048B4A9    sub         eax,dword ptr [ebp-5C]
 0048B4AC    mov         edx,dword ptr [ebp-10]
 0048B4AF    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 0048B4B2    mov         eax,dword ptr [ebp-50]
 0048B4B5    sub         eax,dword ptr [ebp-58]
 0048B4B8    mov         edx,dword ptr [ebp-10]
 0048B4BB    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 0048B4BE    mov         eax,dword ptr [ebp-4]
 0048B4C1    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 0048B4C5    xor         eax,eax
 0048B4C7    pop         edx
 0048B4C8    pop         ecx
 0048B4C9    pop         ecx
 0048B4CA    mov         dword ptr fs:[eax],edx
 0048B4CD    push        48B4E5
 0048B4D2    mov         edx,dword ptr [ebp-44]
 0048B4D5    mov         eax,dword ptr [ebp-0C]
 0048B4D8    call        @FreeMem
 0048B4DD    ret
>0048B4DE    jmp         @HandleFinally
>0048B4E3    jmp         0048B4D2
 0048B4E5    mov         esp,ebp
 0048B4E7    pop         ebp
 0048B4E8    ret
end;*}

//0048B4EC
{*procedure sub_0048B4EC(?:TMetafile; ?:?; ?:?);
begin
 0048B4EC    push        ebp
 0048B4ED    mov         ebp,esp
 0048B4EF    add         esp,0FFFFFF60
 0048B4F5    push        ebx
 0048B4F6    mov         dword ptr [ebp-0C],ecx
 0048B4F9    mov         dword ptr [ebp-8],edx
 0048B4FC    mov         dword ptr [ebp-4],eax
 0048B4FF    mov         eax,dword ptr [ebp-4]
 0048B502    call        0048B350
 0048B507    lea         edx,[ebp-2A]
 0048B50A    mov         ecx,16
 0048B50F    mov         eax,dword ptr [ebp-8]
 0048B512    mov         ebx,dword ptr [eax]
 0048B514    call        dword ptr [ebx+0C]
 0048B517    cmp         dword ptr [ebp-2A],9AC6CDD7
>0048B51E    jne         0048B52E
 0048B520    lea         eax,[ebp-2A]
 0048B523    call        00489928
 0048B528    cmp         ax,word ptr [ebp-16]
>0048B52C    je          0048B533
 0048B52E    call        InvalidMetafile
 0048B533    sub         dword ptr [ebp-0C],16
 0048B537    mov         eax,dword ptr [ebp-0C]
 0048B53A    call        @GetMem
 0048B53F    mov         dword ptr [ebp-10],eax
 0048B542    mov         eax,dword ptr [ebp-4]
 0048B545    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B548    mov         dword ptr [ebp-14],eax
 0048B54B    xor         eax,eax
 0048B54D    push        ebp
 0048B54E    push        48B67F
 0048B553    push        dword ptr fs:[eax]
 0048B556    mov         dword ptr fs:[eax],esp
 0048B559    mov         edx,dword ptr [ebp-10]
 0048B55C    mov         ecx,dword ptr [ebp-0C]
 0048B55F    mov         eax,dword ptr [ebp-8]
 0048B562    mov         ebx,dword ptr [eax]
 0048B564    call        dword ptr [ebx+0C]
 0048B567    mov         eax,dword ptr [ebp-4]
 0048B56A    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B56D    mov         dx,word ptr [ebp-1C]
 0048B571    mov         word ptr [eax+18],dx;TMetafileImage.FInch:word
 0048B575    cmp         word ptr [ebp-1C],0
>0048B57A    jne         0048B582
 0048B57C    mov         word ptr [ebp-1C],60
 0048B582    movzx       eax,word ptr [ebp-1C]
 0048B586    push        eax
 0048B587    push        9EC
 0048B58C    movsx       eax,word ptr [ebp-20]
 0048B590    movsx       edx,word ptr [ebp-24]
 0048B594    sub         eax,edx
 0048B596    push        eax
 0048B597    call        kernel32.MulDiv
 0048B59C    mov         edx,dword ptr [ebp-14]
 0048B59F    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 0048B5A2    movzx       eax,word ptr [ebp-1C]
 0048B5A6    push        eax
 0048B5A7    push        9EC
 0048B5AC    movsx       eax,word ptr [ebp-1E]
 0048B5B0    movsx       edx,word ptr [ebp-22]
 0048B5B4    sub         eax,edx
 0048B5B6    push        eax
 0048B5B7    call        kernel32.MulDiv
 0048B5BC    mov         edx,dword ptr [ebp-14]
 0048B5BF    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 0048B5C2    mov         dword ptr [ebp-3A],8
 0048B5C9    xor         eax,eax
 0048B5CB    mov         dword ptr [ebp-36],eax
 0048B5CE    xor         eax,eax
 0048B5D0    mov         dword ptr [ebp-32],eax
 0048B5D3    xor         eax,eax
 0048B5D5    mov         dword ptr [ebp-2E],eax
 0048B5D8    lea         eax,[ebp-3A]
 0048B5DB    push        eax
 0048B5DC    push        0
 0048B5DE    mov         eax,dword ptr [ebp-10]
 0048B5E1    push        eax
 0048B5E2    mov         eax,dword ptr [ebp-0C]
 0048B5E5    push        eax
 0048B5E6    call        gdi32.SetWinMetaFileBits
 0048B5EB    mov         edx,dword ptr [ebp-14]
 0048B5EE    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 0048B5F1    mov         eax,dword ptr [ebp-14]
 0048B5F4    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0048B5F8    jne         0048B5FF
 0048B5FA    call        InvalidMetafile
 0048B5FF    lea         eax,[ebp-9E]
 0048B605    push        eax
 0048B606    push        64
 0048B608    mov         eax,dword ptr [ebp-14]
 0048B60B    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048B60E    push        eax
 0048B60F    call        gdi32.GetEnhMetaFileHeader
 0048B614    mov         dword ptr [ebp-3A],8
 0048B61B    mov         eax,dword ptr [ebp-7E]
 0048B61E    mov         dword ptr [ebp-36],eax
 0048B621    mov         eax,dword ptr [ebp-7A]
 0048B624    mov         dword ptr [ebp-32],eax
 0048B627    xor         eax,eax
 0048B629    mov         dword ptr [ebp-2E],eax
 0048B62C    mov         eax,dword ptr [ebp-14]
 0048B62F    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048B632    push        eax
 0048B633    call        gdi32.DeleteEnhMetaFile
 0048B638    lea         eax,[ebp-3A]
 0048B63B    push        eax
 0048B63C    push        0
 0048B63E    mov         eax,dword ptr [ebp-10]
 0048B641    push        eax
 0048B642    mov         eax,dword ptr [ebp-0C]
 0048B645    push        eax
 0048B646    call        gdi32.SetWinMetaFileBits
 0048B64B    mov         edx,dword ptr [ebp-14]
 0048B64E    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 0048B651    mov         eax,dword ptr [ebp-14]
 0048B654    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0048B658    jne         0048B65F
 0048B65A    call        InvalidMetafile
 0048B65F    mov         eax,dword ptr [ebp-4]
 0048B662    mov         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
 0048B666    xor         eax,eax
 0048B668    pop         edx
 0048B669    pop         ecx
 0048B66A    pop         ecx
 0048B66B    mov         dword ptr fs:[eax],edx
 0048B66E    push        48B686
 0048B673    mov         edx,dword ptr [ebp-0C]
 0048B676    mov         eax,dword ptr [ebp-10]
 0048B679    call        @FreeMem
 0048B67E    ret
>0048B67F    jmp         @HandleFinally
>0048B684    jmp         0048B673
 0048B686    pop         ebx
 0048B687    mov         esp,ebp
 0048B689    pop         ebp
 0048B68A    ret
end;*}

//0048B68C
{*procedure sub_0048B68C(?:?);
begin
 0048B68C    push        ebp
 0048B68D    mov         ebp,esp
 0048B68F    add         esp,0FFFFFFEC
 0048B692    xor         ecx,ecx
 0048B694    mov         dword ptr [ebp-10],ecx
 0048B697    mov         dword ptr [ebp-14],ecx
 0048B69A    mov         dword ptr [ebp-8],edx
 0048B69D    mov         dword ptr [ebp-4],eax
 0048B6A0    xor         eax,eax
 0048B6A2    push        ebp
 0048B6A3    push        48B735
 0048B6A8    push        dword ptr fs:[eax]
 0048B6AB    mov         dword ptr fs:[eax],esp
 0048B6AE    mov         eax,dword ptr [ebp-4]
 0048B6B1    mov         al,byte ptr [eax+2C];TMetafile.FEnhanced:Boolean
 0048B6B4    mov         byte ptr [ebp-9],al
 0048B6B7    xor         eax,eax
 0048B6B9    push        ebp
 0048B6BA    push        48B713
 0048B6BF    push        dword ptr fs:[eax]
 0048B6C2    mov         dword ptr fs:[eax],esp
 0048B6C5    lea         edx,[ebp-14]
 0048B6C8    mov         eax,dword ptr [ebp-8]
 0048B6CB    call        00467100
 0048B6D0    mov         eax,dword ptr [ebp-14]
 0048B6D3    lea         edx,[ebp-10]
 0048B6D6    call        0046BA2C
 0048B6DB    mov         eax,dword ptr [ebp-10]
 0048B6DE    mov         edx,48B748;'.wmf'
 0048B6E3    call        @LStrCmp
>0048B6E8    jne         0048B6F1
 0048B6EA    mov         eax,dword ptr [ebp-4]
 0048B6ED    mov         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
 0048B6F1    mov         edx,dword ptr [ebp-8]
 0048B6F4    mov         eax,dword ptr [ebp-4]
 0048B6F7    call        0048A1C0
 0048B6FC    xor         eax,eax
 0048B6FE    pop         edx
 0048B6FF    pop         ecx
 0048B700    pop         ecx
 0048B701    mov         dword ptr fs:[eax],edx
 0048B704    push        48B71A
 0048B709    mov         eax,dword ptr [ebp-4]
 0048B70C    mov         dl,byte ptr [ebp-9]
 0048B70F    mov         byte ptr [eax+2C],dl;TMetafile.FEnhanced:Boolean
 0048B712    ret
>0048B713    jmp         @HandleFinally
>0048B718    jmp         0048B709
 0048B71A    xor         eax,eax
 0048B71C    pop         edx
 0048B71D    pop         ecx
 0048B71E    pop         ecx
 0048B71F    mov         dword ptr fs:[eax],edx
 0048B722    push        48B73C
 0048B727    lea         eax,[ebp-14]
 0048B72A    mov         edx,2
 0048B72F    call        @LStrArrayClr
 0048B734    ret
>0048B735    jmp         @HandleFinally
>0048B73A    jmp         0048B727
 0048B73C    mov         esp,ebp
 0048B73E    pop         ebp
 0048B73F    ret
end;*}

//0048B750
{*procedure sub_0048B750(?:?);
begin
 0048B750    push        ebp
 0048B751    mov         ebp,esp
 0048B753    add         esp,0FFFFFFF8
 0048B756    mov         dword ptr [ebp-8],edx
 0048B759    mov         dword ptr [ebp-4],eax
 0048B75C    mov         eax,dword ptr [ebp-4]
 0048B75F    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048B763    je          0048B786
 0048B765    mov         eax,dword ptr [ebp-4]
 0048B768    cmp         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
>0048B76C    je          0048B77B
 0048B76E    mov         edx,dword ptr [ebp-8]
 0048B771    mov         eax,dword ptr [ebp-4]
 0048B774    call        0048BB60
>0048B779    jmp         0048B786
 0048B77B    mov         edx,dword ptr [ebp-8]
 0048B77E    mov         eax,dword ptr [ebp-4]
 0048B781    call        0048BBF4
 0048B786    pop         ecx
 0048B787    pop         ecx
 0048B788    pop         ebp
 0048B789    ret
end;*}

//0048B78C
{*procedure sub_0048B78C(?:?);
begin
 0048B78C    push        ebp
 0048B78D    mov         ebp,esp
 0048B78F    add         esp,0FFFFFF90
 0048B792    mov         dword ptr [ebp-8],edx
 0048B795    mov         dword ptr [ebp-4],eax
 0048B798    mov         eax,dword ptr [ebp-4]
 0048B79B    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048B79F    jne         0048B7A9
 0048B7A1    mov         eax,dword ptr [ebp-4]
 0048B7A4    call        0048B350
 0048B7A9    mov         eax,dword ptr [ebp-4]
 0048B7AC    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B7AF    mov         dword ptr [ebp-0C],eax
 0048B7B2    mov         eax,dword ptr [ebp-0C]
 0048B7B5    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>0048B7BA    jne         0048B800
 0048B7BC    mov         eax,dword ptr [ebp-0C]
 0048B7BF    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0048B7C3    jne         0048B7D0
 0048B7C5    mov         eax,dword ptr [ebp-8]
 0048B7C8    mov         edx,dword ptr [ebp-0C]
 0048B7CB    mov         dword ptr [edx+20],eax;TMetafileImage.FTempHeight:Integer
>0048B7CE    jmp         0048B81E
 0048B7D0    lea         eax,[ebp-70]
 0048B7D3    push        eax
 0048B7D4    push        64
 0048B7D6    mov         eax,dword ptr [ebp-0C]
 0048B7D9    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048B7DC    push        eax
 0048B7DD    call        gdi32.GetEnhMetaFileHeader
 0048B7E2    mov         eax,dword ptr [ebp-24]
 0048B7E5    push        eax
 0048B7E6    imul        eax,dword ptr [ebp-1C],64
 0048B7EA    push        eax
 0048B7EB    mov         eax,dword ptr [ebp-8]
 0048B7EE    push        eax
 0048B7EF    call        kernel32.MulDiv
 0048B7F4    mov         edx,eax
 0048B7F6    mov         eax,dword ptr [ebp-4]
 0048B7F9    call        0048B824
>0048B7FE    jmp         0048B81E
 0048B800    mov         eax,[0055DB18];gvar_0055DB18
 0048B805    push        eax
 0048B806    push        9EC
 0048B80B    mov         eax,dword ptr [ebp-8]
 0048B80E    push        eax
 0048B80F    call        kernel32.MulDiv
 0048B814    mov         edx,eax
 0048B816    mov         eax,dword ptr [ebp-4]
 0048B819    call        0048B824
 0048B81E    mov         esp,ebp
 0048B820    pop         ebp
 0048B821    ret
end;*}

//0048B824
procedure sub_0048B824(?:TMetafile; ?:Integer);
begin
{*
 0048B824    push        ebp
 0048B825    mov         ebp,esp
 0048B827    add         esp,0FFFFFFF8
 0048B82A    mov         dword ptr [ebp-8],edx
 0048B82D    mov         dword ptr [ebp-4],eax
 0048B830    mov         eax,dword ptr [ebp-4]
 0048B833    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048B837    jne         0048B841
 0048B839    mov         eax,dword ptr [ebp-4]
 0048B83C    call        0048B350
 0048B841    mov         eax,dword ptr [ebp-4]
 0048B844    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B847    xor         edx,edx
 0048B849    mov         dword ptr [eax+20],edx;TMetafileImage.FTempHeight:Integer
 0048B84C    mov         eax,dword ptr [ebp-4]
 0048B84F    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B852    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 0048B855    cmp         eax,dword ptr [ebp-8]
>0048B858    je          0048B879
 0048B85A    mov         eax,dword ptr [ebp-4]
 0048B85D    call        0048B9F4
 0048B862    mov         eax,dword ptr [ebp-4]
 0048B865    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B868    mov         edx,dword ptr [ebp-8]
 0048B86B    mov         dword ptr [eax+10],edx;TMetafileImage.FHeight:Integer
 0048B86E    mov         edx,dword ptr [ebp-4]
 0048B871    mov         eax,dword ptr [ebp-4]
 0048B874    mov         ecx,dword ptr [eax]
 0048B876    call        dword ptr [ecx+10];TMetafile.sub_00489EA4
 0048B879    pop         ecx
 0048B87A    pop         ecx
 0048B87B    pop         ebp
 0048B87C    ret
*}
end;

//0048B880
procedure sub_0048B880(?:TMetafile; ?:Integer);
begin
{*
 0048B880    push        ebp
 0048B881    mov         ebp,esp
 0048B883    add         esp,0FFFFFFF8
 0048B886    mov         dword ptr [ebp-8],edx
 0048B889    mov         dword ptr [ebp-4],eax
 0048B88C    mov         eax,dword ptr [ebp-4]
 0048B88F    cmp         dword ptr [eax+28],0
>0048B893    jne         0048B89D
 0048B895    mov         eax,dword ptr [ebp-4]
 0048B898    call        0048B350
 0048B89D    mov         eax,dword ptr [ebp-4]
 0048B8A0    mov         eax,dword ptr [eax+28]
 0048B8A3    xor         edx,edx
 0048B8A5    mov         dword ptr [eax+1C],edx
 0048B8A8    mov         eax,dword ptr [ebp-4]
 0048B8AB    mov         eax,dword ptr [eax+28]
 0048B8AE    mov         eax,dword ptr [eax+0C]
 0048B8B1    cmp         eax,dword ptr [ebp-8]
>0048B8B4    je          0048B8D5
 0048B8B6    mov         eax,dword ptr [ebp-4]
 0048B8B9    call        0048B9F4
 0048B8BE    mov         eax,dword ptr [ebp-4]
 0048B8C1    mov         eax,dword ptr [eax+28]
 0048B8C4    mov         edx,dword ptr [ebp-8]
 0048B8C7    mov         dword ptr [eax+0C],edx
 0048B8CA    mov         edx,dword ptr [ebp-4]
 0048B8CD    mov         eax,dword ptr [ebp-4]
 0048B8D0    mov         ecx,dword ptr [eax]
 0048B8D2    call        dword ptr [ecx+10]
 0048B8D5    pop         ecx
 0048B8D6    pop         ecx
 0048B8D7    pop         ebp
 0048B8D8    ret
*}
end;

//0048B8DC
{*procedure sub_0048B8DC(?:?);
begin
 0048B8DC    push        ebp
 0048B8DD    mov         ebp,esp
 0048B8DF    add         esp,0FFFFFFF8
 0048B8E2    mov         byte ptr [ebp-5],dl
 0048B8E5    mov         dword ptr [ebp-4],eax
 0048B8E8    pop         ecx
 0048B8E9    pop         ecx
 0048B8EA    pop         ebp
 0048B8EB    ret
end;*}

//0048B8EC
{*procedure sub_0048B8EC(?:?);
begin
 0048B8EC    push        ebp
 0048B8ED    mov         ebp,esp
 0048B8EF    add         esp,0FFFFFF90
 0048B8F2    mov         dword ptr [ebp-8],edx
 0048B8F5    mov         dword ptr [ebp-4],eax
 0048B8F8    mov         eax,dword ptr [ebp-4]
 0048B8FB    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048B8FF    jne         0048B909
 0048B901    mov         eax,dword ptr [ebp-4]
 0048B904    call        0048B350
 0048B909    mov         eax,dword ptr [ebp-4]
 0048B90C    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048B90F    mov         dword ptr [ebp-0C],eax
 0048B912    mov         eax,dword ptr [ebp-0C]
 0048B915    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>0048B91A    jne         0048B960
 0048B91C    mov         eax,dword ptr [ebp-0C]
 0048B91F    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0048B923    jne         0048B930
 0048B925    mov         eax,dword ptr [ebp-8]
 0048B928    mov         edx,dword ptr [ebp-0C]
 0048B92B    mov         dword ptr [edx+1C],eax;TMetafileImage.FTempWidth:Integer
>0048B92E    jmp         0048B97E
 0048B930    lea         eax,[ebp-70]
 0048B933    push        eax
 0048B934    push        64
 0048B936    mov         eax,dword ptr [ebp-0C]
 0048B939    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048B93C    push        eax
 0048B93D    call        gdi32.GetEnhMetaFileHeader
 0048B942    mov         eax,dword ptr [ebp-28]
 0048B945    push        eax
 0048B946    imul        eax,dword ptr [ebp-20],64
 0048B94A    push        eax
 0048B94B    mov         eax,dword ptr [ebp-8]
 0048B94E    push        eax
 0048B94F    call        kernel32.MulDiv
 0048B954    mov         edx,eax
 0048B956    mov         eax,dword ptr [ebp-4]
 0048B959    call        0048B880
>0048B95E    jmp         0048B97E
 0048B960    mov         eax,[0055DB18];gvar_0055DB18
 0048B965    push        eax
 0048B966    push        9EC
 0048B96B    mov         eax,dword ptr [ebp-8]
 0048B96E    push        eax
 0048B96F    call        kernel32.MulDiv
 0048B974    mov         edx,eax
 0048B976    mov         eax,dword ptr [ebp-4]
 0048B979    call        0048B880
 0048B97E    mov         esp,ebp
 0048B980    pop         ebp
 0048B981    ret
end;*}

//0048B984
{*function sub_0048B984(?:TMetafile; ?:?):?;
begin
 0048B984    push        ebp
 0048B985    mov         ebp,esp
 0048B987    add         esp,0FFFFFF8C
 0048B98A    push        ebx
 0048B98B    mov         dword ptr [ebp-8],edx
 0048B98E    mov         dword ptr [ebp-4],eax
 0048B991    mov         eax,dword ptr [ebp-8]
 0048B994    mov         edx,dword ptr [eax]
 0048B996    call        dword ptr [edx]
 0048B998    mov         ebx,eax
 0048B99A    mov         eax,dword ptr [ebp-8]
 0048B99D    call        0047BCCC
 0048B9A2    sub         ebx,eax
 0048B9A4    mov         dword ptr [ebp-10],ebx
 0048B9A7    cmp         dword ptr [ebp-10],64
>0048B9AB    jle         0048B9CE
 0048B9AD    lea         edx,[ebp-74]
 0048B9B0    mov         ecx,64
 0048B9B5    mov         eax,dword ptr [ebp-8]
 0048B9B8    mov         ebx,dword ptr [eax]
 0048B9BA    call        dword ptr [ebx+0C]
 0048B9BD    mov         cx,1
 0048B9C1    mov         edx,0FFFFFF9C
 0048B9C6    mov         eax,dword ptr [ebp-8]
 0048B9C9    mov         ebx,dword ptr [eax]
 0048B9CB    call        dword ptr [ebx+14]
 0048B9CE    cmp         dword ptr [ebp-10],64
>0048B9D2    jle         0048B9E3
 0048B9D4    cmp         dword ptr [ebp-74],1
>0048B9D8    jne         0048B9E3
 0048B9DA    cmp         dword ptr [ebp-4C],464D4520
>0048B9E1    je          0048B9E7
 0048B9E3    xor         eax,eax
>0048B9E5    jmp         0048B9E9
 0048B9E7    mov         al,1
 0048B9E9    mov         byte ptr [ebp-9],al
 0048B9EC    mov         al,byte ptr [ebp-9]
 0048B9EF    pop         ebx
 0048B9F0    mov         esp,ebp
 0048B9F2    pop         ebp
 0048B9F3    ret
end;*}

//0048B9F4
procedure sub_0048B9F4(?:TMetafile);
begin
{*
 0048B9F4    push        ebp
 0048B9F5    mov         ebp,esp
 0048B9F7    add         esp,0FFFFFFF8
 0048B9FA    mov         dword ptr [ebp-4],eax
 0048B9FD    mov         eax,dword ptr [ebp-4]
 0048BA00    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048BA04    jne         0048BA13
 0048BA06    mov         eax,dword ptr [ebp-4]
 0048BA09    call        0048B350
>0048BA0E    jmp         0048BAC1
 0048BA13    mov         eax,dword ptr [ebp-4]
 0048BA16    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BA19    cmp         dword ptr [eax+4],1;TMetafileImage.........FRefCount:Integer
>0048BA1D    jle         0048BAC1
 0048BA23    mov         dl,1
 0048BA25    mov         eax,[00485ACC];TMetafileImage
 0048BA2A    call        TObject.Create;TMetafileImage.Create
 0048BA2F    mov         dword ptr [ebp-8],eax
 0048BA32    mov         eax,dword ptr [ebp-4]
 0048BA35    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BA38    cmp         dword ptr [eax+8],0;TMetafileImage.FHandle:THandle
>0048BA3C    je          0048BA55
 0048BA3E    push        0
 0048BA40    mov         eax,dword ptr [ebp-4]
 0048BA43    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BA46    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048BA49    push        eax
 0048BA4A    call        gdi32.CopyEnhMetaFileA
 0048BA4F    mov         edx,dword ptr [ebp-8]
 0048BA52    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 0048BA55    mov         eax,dword ptr [ebp-4]
 0048BA58    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BA5B    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 0048BA5E    mov         edx,dword ptr [ebp-8]
 0048BA61    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 0048BA64    mov         eax,dword ptr [ebp-4]
 0048BA67    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BA6A    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 0048BA6D    mov         edx,dword ptr [ebp-8]
 0048BA70    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 0048BA73    mov         eax,dword ptr [ebp-4]
 0048BA76    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BA79    mov         ax,word ptr [eax+18];TMetafileImage.FInch:word
 0048BA7D    mov         edx,dword ptr [ebp-8]
 0048BA80    mov         word ptr [edx+18],ax;TMetafileImage.FInch:word
 0048BA84    mov         eax,dword ptr [ebp-4]
 0048BA87    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BA8A    mov         eax,dword ptr [eax+1C];TMetafileImage.FTempWidth:Integer
 0048BA8D    mov         edx,dword ptr [ebp-8]
 0048BA90    mov         dword ptr [edx+1C],eax;TMetafileImage.FTempWidth:Integer
 0048BA93    mov         eax,dword ptr [ebp-4]
 0048BA96    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BA99    mov         eax,dword ptr [eax+20];TMetafileImage.FTempHeight:Integer
 0048BA9C    mov         edx,dword ptr [ebp-8]
 0048BA9F    mov         dword ptr [edx+20],eax;TMetafileImage.FTempHeight:Integer
 0048BAA2    mov         eax,dword ptr [ebp-4]
 0048BAA5    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BAA8    call        0048C288
 0048BAAD    mov         eax,dword ptr [ebp-8]
 0048BAB0    mov         edx,dword ptr [ebp-4]
 0048BAB3    mov         dword ptr [edx+28],eax;TMetafile.FImage:TMetafileImage
 0048BAB6    mov         eax,dword ptr [ebp-4]
 0048BAB9    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BABC    call        0048C278
 0048BAC1    pop         ecx
 0048BAC2    pop         ecx
 0048BAC3    pop         ebp
 0048BAC4    ret
*}
end;

//0048BAC8
{*procedure sub_0048BAC8(?:?);
begin
 0048BAC8    push        ebp
 0048BAC9    mov         ebp,esp
 0048BACB    add         esp,0FFFFFFF4
 0048BACE    push        ebx
 0048BACF    mov         dword ptr [ebp-8],edx
 0048BAD2    mov         dword ptr [ebp-4],eax
 0048BAD5    mov         eax,dword ptr [ebp-4]
 0048BAD8    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048BADC    je          0048BB5A
 0048BADE    xor         eax,eax
 0048BAE0    mov         dword ptr [ebp-0C],eax
 0048BAE3    lea         edx,[ebp-0C]
 0048BAE6    mov         ecx,4
 0048BAEB    mov         eax,dword ptr [ebp-8]
 0048BAEE    mov         ebx,dword ptr [eax]
 0048BAF0    call        dword ptr [ebx+10]
 0048BAF3    mov         eax,dword ptr [ebp-8]
 0048BAF6    call        0047BCCC
 0048BAFB    sub         eax,4
 0048BAFE    mov         dword ptr [ebp-0C],eax
 0048BB01    mov         eax,dword ptr [ebp-4]
 0048BB04    cmp         byte ptr [eax+2C],0;TMetafile.FEnhanced:Boolean
>0048BB08    je          0048BB17
 0048BB0A    mov         edx,dword ptr [ebp-8]
 0048BB0D    mov         eax,dword ptr [ebp-4]
 0048BB10    call        0048BB60
>0048BB15    jmp         0048BB22
 0048BB17    mov         edx,dword ptr [ebp-8]
 0048BB1A    mov         eax,dword ptr [ebp-4]
 0048BB1D    call        0048BBF4
 0048BB22    xor         ecx,ecx
 0048BB24    mov         edx,dword ptr [ebp-0C]
 0048BB27    mov         eax,dword ptr [ebp-8]
 0048BB2A    mov         ebx,dword ptr [eax]
 0048BB2C    call        dword ptr [ebx+14]
 0048BB2F    mov         eax,dword ptr [ebp-8]
 0048BB32    mov         edx,dword ptr [eax]
 0048BB34    call        dword ptr [edx]
 0048BB36    sub         eax,dword ptr [ebp-0C]
 0048BB39    mov         dword ptr [ebp-0C],eax
 0048BB3C    lea         edx,[ebp-0C]
 0048BB3F    mov         ecx,4
 0048BB44    mov         eax,dword ptr [ebp-8]
 0048BB47    mov         ebx,dword ptr [eax]
 0048BB49    call        dword ptr [ebx+10]
 0048BB4C    mov         cx,2
 0048BB50    xor         edx,edx
 0048BB52    mov         eax,dword ptr [ebp-8]
 0048BB55    mov         ebx,dword ptr [eax]
 0048BB57    call        dword ptr [ebx+14]
 0048BB5A    pop         ebx
 0048BB5B    mov         esp,ebp
 0048BB5D    pop         ebp
 0048BB5E    ret
end;*}

//0048BB60
{*procedure sub_0048BB60(?:TMetafile; ?:?);
begin
 0048BB60    push        ebp
 0048BB61    mov         ebp,esp
 0048BB63    add         esp,0FFFFFFF0
 0048BB66    mov         dword ptr [ebp-8],edx
 0048BB69    mov         dword ptr [ebp-4],eax
 0048BB6C    mov         eax,dword ptr [ebp-4]
 0048BB6F    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048BB73    je          0048BBEF
 0048BB75    push        0
 0048BB77    push        0
 0048BB79    mov         eax,dword ptr [ebp-4]
 0048BB7C    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BB7F    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048BB82    push        eax
 0048BB83    call        gdi32.GetEnhMetaFileBits
 0048BB88    mov         dword ptr [ebp-10],eax
 0048BB8B    cmp         dword ptr [ebp-10],0
>0048BB8F    je          0048BBEF
 0048BB91    mov         eax,dword ptr [ebp-10]
 0048BB94    call        @GetMem
 0048BB99    mov         dword ptr [ebp-0C],eax
 0048BB9C    xor         eax,eax
 0048BB9E    push        ebp
 0048BB9F    push        48BBE8
 0048BBA4    push        dword ptr fs:[eax]
 0048BBA7    mov         dword ptr fs:[eax],esp
 0048BBAA    mov         eax,dword ptr [ebp-0C]
 0048BBAD    push        eax
 0048BBAE    mov         eax,dword ptr [ebp-10]
 0048BBB1    push        eax
 0048BBB2    mov         eax,dword ptr [ebp-4]
 0048BBB5    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BBB8    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048BBBB    push        eax
 0048BBBC    call        gdi32.GetEnhMetaFileBits
 0048BBC1    mov         edx,dword ptr [ebp-0C]
 0048BBC4    mov         ecx,dword ptr [ebp-10]
 0048BBC7    mov         eax,dword ptr [ebp-8]
 0048BBCA    call        0047BF70
 0048BBCF    xor         eax,eax
 0048BBD1    pop         edx
 0048BBD2    pop         ecx
 0048BBD3    pop         ecx
 0048BBD4    mov         dword ptr fs:[eax],edx
 0048BBD7    push        48BBEF
 0048BBDC    mov         edx,dword ptr [ebp-10]
 0048BBDF    mov         eax,dword ptr [ebp-0C]
 0048BBE2    call        @FreeMem
 0048BBE7    ret
>0048BBE8    jmp         @HandleFinally
>0048BBED    jmp         0048BBDC
 0048BBEF    mov         esp,ebp
 0048BBF1    pop         ebp
 0048BBF2    ret
end;*}

//0048BBF4
{*procedure sub_0048BBF4(?:TMetafile; ?:?);
begin
 0048BBF4    push        ebp
 0048BBF5    mov         ebp,esp
 0048BBF7    add         esp,0FFFFFFD0
 0048BBFA    mov         dword ptr [ebp-8],edx
 0048BBFD    mov         dword ptr [ebp-4],eax
 0048BC00    mov         eax,dword ptr [ebp-4]
 0048BC03    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048BC07    je          0048BD55
 0048BC0D    lea         eax,[ebp-2E]
 0048BC10    xor         ecx,ecx
 0048BC12    mov         edx,16
 0048BC17    call        @FillChar
 0048BC1C    mov         eax,dword ptr [ebp-4]
 0048BC1F    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BC22    mov         dword ptr [ebp-18],eax
 0048BC25    mov         dword ptr [ebp-2E],9AC6CDD7
 0048BC2C    mov         eax,dword ptr [ebp-18]
 0048BC2F    cmp         word ptr [eax+18],0;TMetafileImage.FInch:word
>0048BC34    jne         0048BC3E
 0048BC36    mov         word ptr [ebp-20],60
>0048BC3C    jmp         0048BC49
 0048BC3E    mov         eax,dword ptr [ebp-18]
 0048BC41    mov         ax,word ptr [eax+18];TMetafileImage.FInch:word
 0048BC45    mov         word ptr [ebp-20],ax
 0048BC49    push        9EC
 0048BC4E    movzx       eax,word ptr [ebp-20]
 0048BC52    push        eax
 0048BC53    mov         eax,dword ptr [ebp-18]
 0048BC56    mov         eax,dword ptr [eax+0C];TMetafileImage.FWidth:Integer
 0048BC59    push        eax
 0048BC5A    call        kernel32.MulDiv
 0048BC5F    mov         word ptr [ebp-24],ax
 0048BC63    push        9EC
 0048BC68    movzx       eax,word ptr [ebp-20]
 0048BC6C    push        eax
 0048BC6D    mov         eax,dword ptr [ebp-18]
 0048BC70    mov         eax,dword ptr [eax+10];TMetafileImage.FHeight:Integer
 0048BC73    push        eax
 0048BC74    call        kernel32.MulDiv
 0048BC79    mov         word ptr [ebp-22],ax
 0048BC7D    lea         eax,[ebp-2E]
 0048BC80    call        00489928
 0048BC85    mov         word ptr [ebp-1A],ax
 0048BC89    push        0
 0048BC8B    call        user32.GetDC
 0048BC90    mov         dword ptr [ebp-14],eax
 0048BC93    xor         eax,eax
 0048BC95    push        ebp
 0048BC96    push        48BD4E
 0048BC9B    push        dword ptr fs:[eax]
 0048BC9E    mov         dword ptr fs:[eax],esp
 0048BCA1    mov         eax,dword ptr [ebp-14]
 0048BCA4    push        eax
 0048BCA5    push        8
 0048BCA7    push        0
 0048BCA9    push        0
 0048BCAB    mov         eax,dword ptr [ebp-18]
 0048BCAE    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048BCB1    push        eax
 0048BCB2    call        gdi32.GetWinMetaFileBits
 0048BCB7    mov         dword ptr [ebp-10],eax
 0048BCBA    mov         eax,dword ptr [ebp-10]
 0048BCBD    call        @GetMem
 0048BCC2    mov         dword ptr [ebp-0C],eax
 0048BCC5    xor         eax,eax
 0048BCC7    push        ebp
 0048BCC8    push        48BD2E
 0048BCCD    push        dword ptr fs:[eax]
 0048BCD0    mov         dword ptr fs:[eax],esp
 0048BCD3    mov         eax,dword ptr [ebp-14]
 0048BCD6    push        eax
 0048BCD7    push        8
 0048BCD9    mov         eax,dword ptr [ebp-0C]
 0048BCDC    push        eax
 0048BCDD    mov         eax,dword ptr [ebp-10]
 0048BCE0    push        eax
 0048BCE1    mov         eax,dword ptr [ebp-18]
 0048BCE4    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048BCE7    push        eax
 0048BCE8    call        gdi32.GetWinMetaFileBits
 0048BCED    cmp         eax,dword ptr [ebp-10]
>0048BCF0    jae         0048BCF7
 0048BCF2    call        0048892C
 0048BCF7    lea         edx,[ebp-2E]
 0048BCFA    mov         ecx,16
 0048BCFF    mov         eax,dword ptr [ebp-8]
 0048BD02    call        0047BF70
 0048BD07    mov         edx,dword ptr [ebp-0C]
 0048BD0A    mov         ecx,dword ptr [ebp-10]
 0048BD0D    mov         eax,dword ptr [ebp-8]
 0048BD10    call        0047BF70
 0048BD15    xor         eax,eax
 0048BD17    pop         edx
 0048BD18    pop         ecx
 0048BD19    pop         ecx
 0048BD1A    mov         dword ptr fs:[eax],edx
 0048BD1D    push        48BD35
 0048BD22    mov         edx,dword ptr [ebp-10]
 0048BD25    mov         eax,dword ptr [ebp-0C]
 0048BD28    call        @FreeMem
 0048BD2D    ret
>0048BD2E    jmp         @HandleFinally
>0048BD33    jmp         0048BD22
 0048BD35    xor         eax,eax
 0048BD37    pop         edx
 0048BD38    pop         ecx
 0048BD39    pop         ecx
 0048BD3A    mov         dword ptr fs:[eax],edx
 0048BD3D    push        48BD55
 0048BD42    mov         eax,dword ptr [ebp-14]
 0048BD45    push        eax
 0048BD46    push        0
 0048BD48    call        user32.ReleaseDC
 0048BD4D    ret
>0048BD4E    jmp         @HandleFinally
>0048BD53    jmp         0048BD42
 0048BD55    mov         esp,ebp
 0048BD57    pop         ebp
 0048BD58    ret
end;*}

//0048BD5C
{*procedure sub_0048BD5C(?:?; ?:?);
begin
 0048BD5C    push        ebp
 0048BD5D    mov         ebp,esp
 0048BD5F    add         esp,0FFFFFF8C
 0048BD62    mov         dword ptr [ebp-8],ecx
 0048BD65    mov         word ptr [ebp-0E],dx
 0048BD69    mov         dword ptr [ebp-4],eax
 0048BD6C    push        0E
 0048BD6E    call        user32.GetClipboardData
 0048BD73    mov         dword ptr [ebp-8],eax
 0048BD76    cmp         dword ptr [ebp-8],0
>0048BD7A    jne         0048BD86
 0048BD7C    mov         eax,[0055B4DC];^SUnknownClipboardFormat:TResStringRec
 0048BD81    call        InvalidGraphic
 0048BD86    mov         eax,dword ptr [ebp-4]
 0048BD89    call        0048B350
 0048BD8E    mov         eax,dword ptr [ebp-4]
 0048BD91    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BD94    mov         dword ptr [ebp-0C],eax
 0048BD97    push        0
 0048BD99    mov         eax,dword ptr [ebp-8]
 0048BD9C    push        eax
 0048BD9D    call        gdi32.CopyEnhMetaFileA
 0048BDA2    mov         edx,dword ptr [ebp-0C]
 0048BDA5    mov         dword ptr [edx+8],eax;TMetafileImage.FHandle:THandle
 0048BDA8    lea         eax,[ebp-72]
 0048BDAB    push        eax
 0048BDAC    push        64
 0048BDAE    mov         eax,dword ptr [ebp-0C]
 0048BDB1    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048BDB4    push        eax
 0048BDB5    call        gdi32.GetEnhMetaFileHeader
 0048BDBA    mov         eax,dword ptr [ebp-52]
 0048BDBD    sub         eax,dword ptr [ebp-5A]
 0048BDC0    mov         edx,dword ptr [ebp-0C]
 0048BDC3    mov         dword ptr [edx+0C],eax;TMetafileImage.FWidth:Integer
 0048BDC6    mov         eax,dword ptr [ebp-4E]
 0048BDC9    sub         eax,dword ptr [ebp-56]
 0048BDCC    mov         edx,dword ptr [ebp-0C]
 0048BDCF    mov         dword ptr [edx+10],eax;TMetafileImage.FHeight:Integer
 0048BDD2    mov         eax,dword ptr [ebp-0C]
 0048BDD5    mov         word ptr [eax+18],0;TMetafileImage.FInch:word
 0048BDDB    mov         eax,dword ptr [ebp-4]
 0048BDDE    mov         byte ptr [eax+2C],1;TMetafile.FEnhanced:Boolean
 0048BDE2    mov         eax,dword ptr [ebp-4]
 0048BDE5    mov         edx,dword ptr [eax]
 0048BDE7    call        dword ptr [edx+24];TMetafile.sub_0048B18C
 0048BDEA    test        eax,eax
 0048BDEC    setne       al
 0048BDEF    mov         edx,dword ptr [ebp-4]
 0048BDF2    mov         byte ptr [edx+22],al;TMetafile.FPaletteModified:Boolean
 0048BDF5    mov         edx,dword ptr [ebp-4]
 0048BDF8    mov         eax,dword ptr [ebp-4]
 0048BDFB    mov         ecx,dword ptr [eax]
 0048BDFD    call        dword ptr [ecx+10];TMetafile.sub_00489EA4
 0048BE00    mov         esp,ebp
 0048BE02    pop         ebp
 0048BE03    ret         4
end;*}

//0048BE08
{*procedure sub_0048BE08(?:?; ?:?; ?:?);
begin
 0048BE08    push        ebp
 0048BE09    mov         ebp,esp
 0048BE0B    add         esp,0FFFFFFF4
 0048BE0E    mov         dword ptr [ebp-0C],ecx
 0048BE11    mov         dword ptr [ebp-8],edx
 0048BE14    mov         dword ptr [ebp-4],eax
 0048BE17    mov         eax,dword ptr [ebp-4]
 0048BE1A    cmp         dword ptr [eax+28],0;TMetafile.FImage:TMetafileImage
>0048BE1E    je          0048BE45
 0048BE20    mov         eax,dword ptr [ebp-8]
 0048BE23    mov         word ptr [eax],0E
 0048BE28    mov         eax,dword ptr [ebp+8]
 0048BE2B    xor         edx,edx
 0048BE2D    mov         dword ptr [eax],edx
 0048BE2F    push        0
 0048BE31    mov         eax,dword ptr [ebp-4]
 0048BE34    mov         eax,dword ptr [eax+28];TMetafile.FImage:TMetafileImage
 0048BE37    mov         eax,dword ptr [eax+8];TMetafileImage.FHandle:THandle
 0048BE3A    push        eax
 0048BE3B    call        gdi32.CopyEnhMetaFileA
 0048BE40    mov         edx,dword ptr [ebp-0C]
 0048BE43    mov         dword ptr [edx],eax
 0048BE45    mov         esp,ebp
 0048BE47    pop         ebp
 0048BE48    ret         4
end;*}

//0048BEE8
procedure FreeMemoryContexts;
begin
{*
 0048BEE8    push        ebp
 0048BEE9    mov         ebp,esp
 0048BEEB    add         esp,0FFFFFFF4
 0048BEEE    mov         eax,[00541088];gvar_00541088
 0048BEF3    call        TThreadList.LockList
 0048BEF8    mov         dword ptr [ebp-8],eax
 0048BEFB    xor         eax,eax
 0048BEFD    push        ebp
 0048BEFE    push        48BF86
 0048BF03    push        dword ptr fs:[eax]
 0048BF06    mov         dword ptr fs:[eax],esp
 0048BF09    mov         eax,dword ptr [ebp-8]
 0048BF0C    mov         eax,dword ptr [eax+8]
 0048BF0F    dec         eax
 0048BF10    cmp         eax,0
>0048BF13    jl          0048BF6E
 0048BF15    mov         dword ptr [ebp-4],eax
 0048BF18    mov         edx,dword ptr [ebp-4]
 0048BF1B    mov         eax,dword ptr [ebp-8]
 0048BF1E    call        TList.Get
 0048BF23    mov         dword ptr [ebp-0C],eax
 0048BF26    mov         eax,dword ptr [ebp-0C]
 0048BF29    call        TCanvas.TryLock
 0048BF2E    test        al,al
>0048BF30    je          0048BF65
 0048BF32    xor         eax,eax
 0048BF34    push        ebp
 0048BF35    push        48BF5E
 0048BF3A    push        dword ptr fs:[eax]
 0048BF3D    mov         dword ptr fs:[eax],esp
 0048BF40    mov         eax,dword ptr [ebp-0C]
 0048BF43    call        TBitmapCanvas.FreeContext
 0048BF48    xor         eax,eax
 0048BF4A    pop         edx
 0048BF4B    pop         ecx
 0048BF4C    pop         ecx
 0048BF4D    mov         dword ptr fs:[eax],edx
 0048BF50    push        48BF65
 0048BF55    mov         eax,dword ptr [ebp-0C]
 0048BF58    call        TCanvas.Unlock
 0048BF5D    ret
>0048BF5E    jmp         @HandleFinally
>0048BF63    jmp         0048BF55
 0048BF65    dec         dword ptr [ebp-4]
 0048BF68    cmp         dword ptr [ebp-4],0FFFFFFFF
>0048BF6C    jne         0048BF18
 0048BF6E    xor         eax,eax
 0048BF70    pop         edx
 0048BF71    pop         ecx
 0048BF72    pop         ecx
 0048BF73    mov         dword ptr fs:[eax],edx
 0048BF76    push        48BF8D
 0048BF7B    mov         eax,[00541088];gvar_00541088
 0048BF80    call        TThreadList.UnlockList
 0048BF85    ret
>0048BF86    jmp         @HandleFinally
>0048BF8B    jmp         0048BF7B
 0048BF8D    mov         esp,ebp
 0048BF8F    pop         ebp
 0048BF90    ret
*}
end;

//0048BF94
procedure sub_0048BF94(?:HBITMAP);
begin
{*
 0048BF94    push        ebp
 0048BF95    mov         ebp,esp
 0048BF97    add         esp,0FFFFFFF0
 0048BF9A    mov         dword ptr [ebp-4],eax
 0048BF9D    cmp         dword ptr [ebp-4],0
>0048BFA1    je          0048C029
 0048BFA7    mov         eax,[00541088];0x0 gvar_00541088
 0048BFAC    call        TThreadList.LockList
 0048BFB1    mov         dword ptr [ebp-0C],eax
 0048BFB4    xor         eax,eax
 0048BFB6    push        ebp
 0048BFB7    push        48C022
 0048BFBC    push        dword ptr fs:[eax]
 0048BFBF    mov         dword ptr fs:[eax],esp
 0048BFC2    mov         eax,dword ptr [ebp-0C]
 0048BFC5    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0048BFC8    dec         eax
 0048BFC9    cmp         eax,0
>0048BFCC    jl          0048C00A
 0048BFCE    mov         dword ptr [ebp-8],eax
 0048BFD1    mov         edx,dword ptr [ebp-8]
 0048BFD4    mov         eax,dword ptr [ebp-0C]
 0048BFD7    call        TList.Get
 0048BFDC    mov         dword ptr [ebp-10],eax
 0048BFDF    mov         eax,dword ptr [ebp-10]
 0048BFE2    cmp         dword ptr [eax+58],0
>0048BFE6    je          0048C001
 0048BFE8    mov         eax,dword ptr [ebp-10]
 0048BFEB    mov         eax,dword ptr [eax+58]
 0048BFEE    mov         eax,dword ptr [eax+28]
 0048BFF1    mov         eax,dword ptr [eax+8]
 0048BFF4    cmp         eax,dword ptr [ebp-4]
>0048BFF7    jne         0048C001
 0048BFF9    mov         eax,dword ptr [ebp-10]
 0048BFFC    call        TBitmapCanvas.FreeContext
 0048C001    dec         dword ptr [ebp-8]
 0048C004    cmp         dword ptr [ebp-8],0FFFFFFFF
>0048C008    jne         0048BFD1
 0048C00A    xor         eax,eax
 0048C00C    pop         edx
 0048C00D    pop         ecx
 0048C00E    pop         ecx
 0048C00F    mov         dword ptr fs:[eax],edx
 0048C012    push        48C029
 0048C017    mov         eax,[00541088];0x0 gvar_00541088
 0048C01C    call        TThreadList.UnlockList
 0048C021    ret
>0048C022    jmp         @HandleFinally
>0048C027    jmp         0048C017
 0048C029    mov         esp,ebp
 0048C02B    pop         ebp
 0048C02C    ret
*}
end;

//0048C030
constructor sub_0048C030;
begin
{*
 0048C030    push        ebp
 0048C031    mov         ebp,esp
 0048C033    add         esp,0FFFFFFF4
 0048C036    test        dl,dl
>0048C038    je          0048C042
 0048C03A    add         esp,0FFFFFFF0
 0048C03D    call        @ClassCreate
 0048C042    mov         dword ptr [ebp-0C],ecx
 0048C045    mov         byte ptr [ebp-5],dl
 0048C048    mov         dword ptr [ebp-4],eax
 0048C04B    xor         edx,edx
 0048C04D    mov         eax,dword ptr [ebp-4]
 0048C050    call        TControlCanvas.Create
 0048C055    mov         eax,dword ptr [ebp-4]
 0048C058    mov         edx,dword ptr [ebp-0C]
 0048C05B    mov         dword ptr [eax+58],edx
 0048C05E    mov         eax,dword ptr [ebp-4]
 0048C061    cmp         byte ptr [ebp-5],0
>0048C065    je          0048C076
 0048C067    call        @AfterConstruction
 0048C06C    pop         dword ptr fs:[0]
 0048C073    add         esp,0C
 0048C076    mov         eax,dword ptr [ebp-4]
 0048C079    mov         esp,ebp
 0048C07B    pop         ebp
 0048C07C    ret
*}
end;

//0048C080
destructor TBitmapCanvas.Destroy;
begin
{*
 0048C080    push        ebp
 0048C081    mov         ebp,esp
 0048C083    add         esp,0FFFFFFF8
 0048C086    call        @BeforeDestruction
 0048C08B    mov         byte ptr [ebp-5],dl
 0048C08E    mov         dword ptr [ebp-4],eax
 0048C091    mov         eax,dword ptr [ebp-4]
 0048C094    call        TBitmapCanvas.FreeContext
 0048C099    mov         dl,byte ptr [ebp-5]
 0048C09C    and         dl,0FC
 0048C09F    mov         eax,dword ptr [ebp-4]
 0048C0A2    call        TCanvas.Destroy
 0048C0A7    cmp         byte ptr [ebp-5],0
>0048C0AB    jle         0048C0B5
 0048C0AD    mov         eax,dword ptr [ebp-4]
 0048C0B0    call        @ClassDestroy
 0048C0B5    pop         ecx
 0048C0B6    pop         ecx
 0048C0B7    pop         ebp
 0048C0B8    ret
*}
end;

//0048C0BC
procedure TBitmapCanvas.FreeContext;
begin
{*
 0048C0BC    push        ebp
 0048C0BD    mov         ebp,esp
 0048C0BF    add         esp,0FFFFFFF8
 0048C0C2    mov         dword ptr [ebp-4],eax
 0048C0C5    mov         eax,dword ptr [ebp-4]
 0048C0C8    cmp         dword ptr [eax+4],0
>0048C0CC    je          0048C168
 0048C0D2    mov         eax,dword ptr [ebp-4]
 0048C0D5    call        TCanvas.Lock
 0048C0DA    xor         eax,eax
 0048C0DC    push        ebp
 0048C0DD    push        48C161
 0048C0E2    push        dword ptr fs:[eax]
 0048C0E5    mov         dword ptr fs:[eax],esp
 0048C0E8    mov         eax,dword ptr [ebp-4]
 0048C0EB    cmp         dword ptr [eax+5C],0
>0048C0EF    je          0048C104
 0048C0F1    mov         eax,dword ptr [ebp-4]
 0048C0F4    mov         eax,dword ptr [eax+5C]
 0048C0F7    push        eax
 0048C0F8    mov         eax,dword ptr [ebp-4]
 0048C0FB    mov         eax,dword ptr [eax+4]
 0048C0FE    push        eax
 0048C0FF    call        gdi32.SelectObject
 0048C104    mov         eax,dword ptr [ebp-4]
 0048C107    cmp         dword ptr [eax+60],0
>0048C10B    je          0048C122
 0048C10D    push        0FF
 0048C10F    mov         eax,dword ptr [ebp-4]
 0048C112    mov         eax,dword ptr [eax+60]
 0048C115    push        eax
 0048C116    mov         eax,dword ptr [ebp-4]
 0048C119    mov         eax,dword ptr [eax+4]
 0048C11C    push        eax
 0048C11D    call        gdi32.SelectPalette
 0048C122    mov         eax,dword ptr [ebp-4]
 0048C125    mov         eax,dword ptr [eax+4]
 0048C128    mov         dword ptr [ebp-8],eax
 0048C12B    xor         edx,edx
 0048C12D    mov         eax,dword ptr [ebp-4]
 0048C130    call        TCanvas.SetHandle
 0048C135    mov         eax,dword ptr [ebp-8]
 0048C138    push        eax
 0048C139    call        gdi32.DeleteDC
 0048C13E    mov         edx,dword ptr [ebp-4]
 0048C141    mov         eax,[00541088];gvar_00541088
 0048C146    call        00478DA8
 0048C14B    xor         eax,eax
 0048C14D    pop         edx
 0048C14E    pop         ecx
 0048C14F    pop         ecx
 0048C150    mov         dword ptr fs:[eax],edx
 0048C153    push        48C168
 0048C158    mov         eax,dword ptr [ebp-4]
 0048C15B    call        TCanvas.Unlock
 0048C160    ret
>0048C161    jmp         @HandleFinally
>0048C166    jmp         0048C158
 0048C168    pop         ecx
 0048C169    pop         ecx
 0048C16A    pop         ebp
 0048C16B    ret
*}
end;

//0048C16C
procedure sub_0048C16C;
begin
{*
 0048C16C    push        ebp
 0048C16D    mov         ebp,esp
 0048C16F    add         esp,0FFFFFFF8
 0048C172    mov         dword ptr [ebp-4],eax
 0048C175    mov         eax,dword ptr [ebp-4]
 0048C178    cmp         dword ptr [eax+58],0;TBitmapCanvas.FBitmap:TBitmap
>0048C17C    je          0048C273
 0048C182    mov         eax,dword ptr [ebp-4]
 0048C185    call        TCanvas.Lock
 0048C18A    xor         eax,eax
 0048C18C    push        ebp
 0048C18D    push        48C26C
 0048C192    push        dword ptr fs:[eax]
 0048C195    mov         dword ptr fs:[eax],esp
 0048C198    mov         eax,dword ptr [ebp-4]
 0048C19B    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0048C19E    call        0048D988
 0048C1A3    mov         eax,dword ptr [ebp-4]
 0048C1A6    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0048C1A9    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048C1AC    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048C1AF    call        0048BF94
 0048C1B4    mov         eax,dword ptr [ebp-4]
 0048C1B7    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0048C1BA    call        0048DAE4
 0048C1BF    push        0
 0048C1C1    call        gdi32.CreateCompatibleDC
 0048C1C6    mov         dword ptr [ebp-8],eax
 0048C1C9    mov         eax,dword ptr [ebp-4]
 0048C1CC    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0048C1CF    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048C1D2    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>0048C1D6    je          0048C1F6
 0048C1D8    mov         eax,dword ptr [ebp-4]
 0048C1DB    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0048C1DE    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048C1E1    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048C1E4    push        eax
 0048C1E5    mov         eax,dword ptr [ebp-8]
 0048C1E8    push        eax
 0048C1E9    call        gdi32.SelectObject
 0048C1EE    mov         edx,dword ptr [ebp-4]
 0048C1F1    mov         dword ptr [edx+5C],eax;TBitmapCanvas.FOldBitmap:HBITMAP
>0048C1F4    jmp         0048C1FE
 0048C1F6    mov         eax,dword ptr [ebp-4]
 0048C1F9    xor         edx,edx
 0048C1FB    mov         dword ptr [eax+5C],edx;TBitmapCanvas.FOldBitmap:HBITMAP
 0048C1FE    mov         eax,dword ptr [ebp-4]
 0048C201    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0048C204    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048C207    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>0048C20B    je          0048C236
 0048C20D    push        0FF
 0048C20F    mov         eax,dword ptr [ebp-4]
 0048C212    mov         eax,dword ptr [eax+58];TBitmapCanvas.FBitmap:TBitmap
 0048C215    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048C218    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048C21B    push        eax
 0048C21C    mov         eax,dword ptr [ebp-8]
 0048C21F    push        eax
 0048C220    call        gdi32.SelectPalette
 0048C225    mov         edx,dword ptr [ebp-4]
 0048C228    mov         dword ptr [edx+60],eax;TBitmapCanvas.FOldPalette:HPALETTE
 0048C22B    mov         eax,dword ptr [ebp-8]
 0048C22E    push        eax
 0048C22F    call        gdi32.RealizePalette
>0048C234    jmp         0048C23E
 0048C236    mov         eax,dword ptr [ebp-4]
 0048C239    xor         edx,edx
 0048C23B    mov         dword ptr [eax+60],edx;TBitmapCanvas.FOldPalette:HPALETTE
 0048C23E    mov         edx,dword ptr [ebp-8]
 0048C241    mov         eax,dword ptr [ebp-4]
 0048C244    call        TCanvas.SetHandle
 0048C249    mov         edx,dword ptr [ebp-4]
 0048C24C    mov         eax,[00541088];0x0 gvar_00541088
 0048C251    call        00478CF4
 0048C256    xor         eax,eax
 0048C258    pop         edx
 0048C259    pop         ecx
 0048C25A    pop         ecx
 0048C25B    mov         dword ptr fs:[eax],edx
 0048C25E    push        48C273
 0048C263    mov         eax,dword ptr [ebp-4]
 0048C266    call        TCanvas.Unlock
 0048C26B    ret
>0048C26C    jmp         @HandleFinally
>0048C271    jmp         0048C263
 0048C273    pop         ecx
 0048C274    pop         ecx
 0048C275    pop         ebp
 0048C276    ret
*}
end;

//0048C278
procedure sub_0048C278(?:TSharedImage);
begin
{*
 0048C278    push        ebp
 0048C279    mov         ebp,esp
 0048C27B    push        ecx
 0048C27C    mov         dword ptr [ebp-4],eax
 0048C27F    mov         eax,dword ptr [ebp-4]
 0048C282    inc         dword ptr [eax+4];TMetafileImage..........FRefCount:Integer
 0048C285    pop         ecx
 0048C286    pop         ebp
 0048C287    ret
*}
end;

//0048C288
procedure sub_0048C288(?:TSharedImage);
begin
{*
 0048C288    push        ebp
 0048C289    mov         ebp,esp
 0048C28B    push        ecx
 0048C28C    mov         dword ptr [ebp-4],eax
 0048C28F    cmp         dword ptr [ebp-4],0
>0048C293    je          0048C2B3
 0048C295    mov         eax,dword ptr [ebp-4]
 0048C298    dec         dword ptr [eax+4];TMetafileImage...........FRefCount:Integer
 0048C29B    mov         eax,dword ptr [ebp-4]
 0048C29E    cmp         dword ptr [eax+4],0;TMetafileImage............FRefCount:Integer
>0048C2A2    jne         0048C2B3
 0048C2A4    mov         eax,dword ptr [ebp-4]
 0048C2A7    mov         edx,dword ptr [eax]
 0048C2A9    call        dword ptr [edx];TMetafileImage.sub_0048AEC0
 0048C2AB    mov         eax,dword ptr [ebp-4]
 0048C2AE    call        TObject.Free
 0048C2B3    pop         ecx
 0048C2B4    pop         ebp
 0048C2B5    ret
*}
end;

//0048C2B8
destructor TBitmapImage.Destroy;
begin
{*
 0048C2B8    push        ebp
 0048C2B9    mov         ebp,esp
 0048C2BB    add         esp,0FFFFFFF8
 0048C2BE    call        @BeforeDestruction
 0048C2C3    mov         byte ptr [ebp-5],dl
 0048C2C6    mov         dword ptr [ebp-4],eax
 0048C2C9    mov         eax,dword ptr [ebp-4]
 0048C2CC    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>0048C2D0    je          0048C2F1
 0048C2D2    mov         eax,dword ptr [ebp-4]
 0048C2D5    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048C2D8    call        0048BF94
 0048C2DD    mov         eax,dword ptr [ebp-4]
 0048C2E0    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048C2E3    push        eax
 0048C2E4    call        gdi32.DeleteObject
 0048C2E9    mov         eax,dword ptr [ebp-4]
 0048C2EC    xor         edx,edx
 0048C2EE    mov         dword ptr [eax+14],edx;TBitmapImage.FDIBHandle:HBITMAP
 0048C2F1    mov         eax,dword ptr [ebp-4]
 0048C2F4    mov         edx,dword ptr [eax]
 0048C2F6    call        dword ptr [edx];TBitmapImage.sub_0048C338
 0048C2F8    mov         eax,dword ptr [ebp-4]
 0048C2FB    cmp         dword ptr [eax+64],0
>0048C2FF    je          0048C30D
 0048C301    mov         eax,dword ptr [ebp-4]
 0048C304    mov         eax,dword ptr [eax+64]
 0048C307    push        eax
 0048C308    call        kernel32.CloseHandle
 0048C30D    mov         eax,dword ptr [ebp-4]
 0048C310    add         eax,6C;TBitmapImage.FSaveStream:TMemoryStream
 0048C313    call        FreeAndNil
 0048C318    mov         dl,byte ptr [ebp-5]
 0048C31B    and         dl,0FC
 0048C31E    mov         eax,dword ptr [ebp-4]
 0048C321    call        TObject.Destroy
 0048C326    cmp         byte ptr [ebp-5],0
>0048C32A    jle         0048C334
 0048C32C    mov         eax,dword ptr [ebp-4]
 0048C32F    call        @ClassDestroy
 0048C334    pop         ecx
 0048C335    pop         ecx
 0048C336    pop         ebp
 0048C337    ret
*}
end;

//0048C338
procedure sub_0048C338;
begin
{*
 0048C338    push        ebp
 0048C339    mov         ebp,esp
 0048C33B    push        ecx
 0048C33C    mov         dword ptr [ebp-4],eax
 0048C33F    mov         eax,dword ptr [ebp-4]
 0048C342    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>0048C346    je          0048C36D
 0048C348    mov         eax,dword ptr [ebp-4]
 0048C34B    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048C34E    mov         edx,dword ptr [ebp-4]
 0048C351    cmp         eax,dword ptr [edx+14];TBitmapImage.FDIBHandle:HBITMAP
>0048C354    je          0048C36D
 0048C356    mov         eax,dword ptr [ebp-4]
 0048C359    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048C35C    call        0048BF94
 0048C361    mov         eax,dword ptr [ebp-4]
 0048C364    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048C367    push        eax
 0048C368    call        gdi32.DeleteObject
 0048C36D    mov         eax,dword ptr [ebp-4]
 0048C370    cmp         dword ptr [eax+0C],0;TBitmapImage.FMaskHandle:HBITMAP
>0048C374    je          0048C395
 0048C376    mov         eax,dword ptr [ebp-4]
 0048C379    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 0048C37C    call        0048BF94
 0048C381    mov         eax,dword ptr [ebp-4]
 0048C384    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 0048C387    push        eax
 0048C388    call        gdi32.DeleteObject
 0048C38D    mov         eax,dword ptr [ebp-4]
 0048C390    xor         edx,edx
 0048C392    mov         dword ptr [eax+0C],edx;TBitmapImage.FMaskHandle:HBITMAP
 0048C395    mov         eax,dword ptr [ebp-4]
 0048C398    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048C39B    call        00485E88
 0048C3A0    mov         eax,dword ptr [ebp-4]
 0048C3A3    xor         edx,edx
 0048C3A5    mov         dword ptr [eax+8],edx;TBitmapImage.FHandle:HBITMAP
 0048C3A8    mov         eax,dword ptr [ebp-4]
 0048C3AB    xor         edx,edx
 0048C3AD    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
 0048C3B0    pop         ecx
 0048C3B1    pop         ebp
 0048C3B2    ret
*}
end;

//0048C3B4
{*procedure sub_0048C3B4(?:HBITMAP; ?:?; ?:?);
begin
 0048C3B4    push        ebp
 0048C3B5    mov         ebp,esp
 0048C3B7    add         esp,0FFFFFBE4
 0048C3BD    mov         dword ptr [ebp-0C],ecx
 0048C3C0    mov         dword ptr [ebp-8],edx
 0048C3C3    mov         dword ptr [ebp-4],eax
 0048C3C6    cmp         dword ptr [ebp-4],0
>0048C3CA    je          0048C47E
 0048C3D0    mov         eax,dword ptr [ebp-0C]
 0048C3D3    cmp         word ptr [eax+26],8
>0048C3D8    ja          0048C47E
 0048C3DE    lea         edx,[ebp-41C]
 0048C3E4    mov         ecx,0FF
 0048C3E9    mov         eax,dword ptr [ebp-8]
 0048C3EC    call        004892DC
 0048C3F1    mov         dword ptr [ebp-1C],eax
 0048C3F4    cmp         dword ptr [ebp-1C],0
>0048C3F8    je          0048C47E
 0048C3FE    push        0
 0048C400    call        user32.GetDC
 0048C405    mov         dword ptr [ebp-10],eax
 0048C408    mov         eax,dword ptr [ebp-10]
 0048C40B    push        eax
 0048C40C    call        gdi32.CreateCompatibleDC
 0048C411    mov         dword ptr [ebp-14],eax
 0048C414    mov         eax,dword ptr [ebp-4]
 0048C417    push        eax
 0048C418    mov         eax,dword ptr [ebp-14]
 0048C41B    push        eax
 0048C41C    call        gdi32.SelectObject
 0048C421    mov         dword ptr [ebp-18],eax
 0048C424    xor         eax,eax
 0048C426    push        ebp
 0048C427    push        48C477
 0048C42C    push        dword ptr fs:[eax]
 0048C42F    mov         dword ptr fs:[eax],esp
 0048C432    lea         eax,[ebp-41C]
 0048C438    push        eax
 0048C439    mov         eax,dword ptr [ebp-1C]
 0048C43C    push        eax
 0048C43D    push        0
 0048C43F    mov         eax,dword ptr [ebp-14]
 0048C442    push        eax
 0048C443    call        gdi32.SetDIBColorTable
 0048C448    xor         eax,eax
 0048C44A    pop         edx
 0048C44B    pop         ecx
 0048C44C    pop         ecx
 0048C44D    mov         dword ptr fs:[eax],edx
 0048C450    push        48C47E
 0048C455    mov         eax,dword ptr [ebp-18]
 0048C458    push        eax
 0048C459    mov         eax,dword ptr [ebp-14]
 0048C45C    push        eax
 0048C45D    call        gdi32.SelectObject
 0048C462    mov         eax,dword ptr [ebp-14]
 0048C465    push        eax
 0048C466    call        gdi32.DeleteDC
 0048C46B    mov         eax,dword ptr [ebp-10]
 0048C46E    push        eax
 0048C46F    push        0
 0048C471    call        user32.ReleaseDC
 0048C476    ret
>0048C477    jmp         @HandleFinally
>0048C47C    jmp         0048C455
 0048C47E    mov         esp,ebp
 0048C480    pop         ebp
 0048C481    ret
end;*}

//0048C484
procedure sub_0048C484(?:TDIBSection);
begin
{*
 0048C484    push        ebp
 0048C485    mov         ebp,esp
 0048C487    push        ecx
 0048C488    mov         dword ptr [ebp-4],eax
 0048C48B    mov         eax,dword ptr [ebp-4]
 0048C48E    test        byte ptr [eax+28],3
>0048C492    je          0048C4EF
 0048C494    mov         eax,dword ptr [ebp-4]
 0048C497    cmp         dword ptr [eax+40],0
>0048C49B    jne         0048C4EF
 0048C49D    mov         eax,dword ptr [ebp-4]
 0048C4A0    cmp         word ptr [eax+26],10
>0048C4A5    jne         0048C4C7
 0048C4A7    mov         eax,dword ptr [ebp-4]
 0048C4AA    mov         dword ptr [eax+40],0F800
 0048C4B1    mov         eax,dword ptr [ebp-4]
 0048C4B4    mov         dword ptr [eax+44],7E0
 0048C4BB    mov         eax,dword ptr [ebp-4]
 0048C4BE    mov         dword ptr [eax+48],1F
>0048C4C5    jmp         0048C4EF
 0048C4C7    mov         eax,dword ptr [ebp-4]
 0048C4CA    cmp         word ptr [eax+26],20
>0048C4CF    jne         0048C4EF
 0048C4D1    mov         eax,dword ptr [ebp-4]
 0048C4D4    mov         dword ptr [eax+40],0FF0000
 0048C4DB    mov         eax,dword ptr [ebp-4]
 0048C4DE    mov         dword ptr [eax+44],0FF00
 0048C4E5    mov         eax,dword ptr [ebp-4]
 0048C4E8    mov         dword ptr [eax+48],0FF
 0048C4EF    pop         ecx
 0048C4F0    pop         ebp
 0048C4F1    ret
*}
end;

//0048C4F4
{*function sub_0048C4F4(?:HBITMAP; ?:HPALETTE; ?:HPALETTE; ?:?; ?:?):?;
begin
 0048C4F4    push        ebp
 0048C4F5    mov         ebp,esp
 0048C4F7    add         esp,0FFFFFF60
 0048C4FD    push        ebx
 0048C4FE    push        esi
 0048C4FF    push        edi
 0048C500    mov         dword ptr [ebp-0C],ecx
 0048C503    mov         dword ptr [ebp-8],edx
 0048C506    mov         dword ptr [ebp-4],eax
 0048C509    xor         eax,eax
 0048C50B    mov         dword ptr [ebp-10],eax
 0048C50E    mov         eax,dword ptr [ebp+0C]
 0048C511    cmp         dword ptr [eax+18],0
>0048C515    je          0048C531
 0048C517    mov         eax,dword ptr [ebp+0C]
 0048C51A    cmp         dword ptr [eax+1C],0
>0048C51E    je          0048CB55
 0048C524    mov         eax,dword ptr [ebp+0C]
 0048C527    cmp         dword ptr [eax+20],0
>0048C52B    je          0048CB55
 0048C531    mov         eax,dword ptr [ebp+0C]
 0048C534    cmp         dword ptr [eax+18],0
>0048C538    jne         0048C554
 0048C53A    mov         eax,dword ptr [ebp+0C]
 0048C53D    cmp         dword ptr [eax+4],0
>0048C541    je          0048CB55
 0048C547    mov         eax,dword ptr [ebp+0C]
 0048C54A    cmp         dword ptr [eax+8],0
>0048C54E    je          0048CB55
 0048C554    mov         eax,dword ptr [ebp-4]
 0048C557    call        0048BF94
 0048C55C    xor         eax,eax
 0048C55E    mov         dword ptr [ebp-78],eax
 0048C561    cmp         dword ptr [ebp-4],0
>0048C565    je          0048C583
 0048C567    lea         eax,[ebp-90]
 0048C56D    push        eax
 0048C56E    push        54
 0048C570    mov         eax,dword ptr [ebp-4]
 0048C573    push        eax
 0048C574    call        gdi32.GetObjectA
 0048C579    cmp         eax,18
>0048C57C    jge         0048C583
 0048C57E    call        InvalidBitmap
 0048C583    push        0
 0048C585    call        user32.GetDC
 0048C58A    call        004889D8
 0048C58F    mov         dword ptr [ebp-1C],eax
 0048C592    mov         eax,dword ptr [ebp-1C]
 0048C595    push        eax
 0048C596    call        gdi32.CreateCompatibleDC
 0048C59B    call        004889D8
 0048C5A0    mov         dword ptr [ebp-20],eax
 0048C5A3    xor         eax,eax
 0048C5A5    push        ebp
 0048C5A6    push        48CB4E
 0048C5AB    push        dword ptr fs:[eax]
 0048C5AE    mov         dword ptr fs:[eax],esp
 0048C5B1    mov         eax,dword ptr [ebp+0C]
 0048C5B4    cmp         dword ptr [eax+18],28
>0048C5B8    jae         0048C618
 0048C5BA    mov         eax,dword ptr [ebp+0C]
 0048C5BD    mov         ax,word ptr [eax+10]
 0048C5C1    mov         edx,dword ptr [ebp+0C]
 0048C5C4    or          ax,word ptr [edx+12]
 0048C5C8    cmp         ax,1
>0048C5CC    jne         0048C5F4
 0048C5CE    push        0
 0048C5D0    push        1
 0048C5D2    push        1
 0048C5D4    mov         eax,dword ptr [ebp+0C]
 0048C5D7    mov         eax,dword ptr [eax+8]
 0048C5DA    push        eax
 0048C5DB    mov         eax,dword ptr [ebp+0C]
 0048C5DE    mov         eax,dword ptr [eax+4]
 0048C5E1    push        eax
 0048C5E2    call        gdi32.CreateBitmap
 0048C5E7    call        004889D8
 0048C5EC    mov         dword ptr [ebp-10],eax
>0048C5EF    jmp         0048C854
 0048C5F4    mov         eax,dword ptr [ebp+0C]
 0048C5F7    mov         eax,dword ptr [eax+8]
 0048C5FA    push        eax
 0048C5FB    mov         eax,dword ptr [ebp+0C]
 0048C5FE    mov         eax,dword ptr [eax+4]
 0048C601    push        eax
 0048C602    mov         eax,dword ptr [ebp-1C]
 0048C605    push        eax
 0048C606    call        gdi32.CreateCompatibleBitmap
 0048C60B    call        004889D8
 0048C610    mov         dword ptr [ebp-10],eax
>0048C613    jmp         0048C854
 0048C618    mov         eax,42C
 0048C61D    call        @GetMem
 0048C622    mov         dword ptr [ebp-28],eax
 0048C625    xor         eax,eax
 0048C627    push        ebp
 0048C628    push        48C84D
 0048C62D    push        dword ptr fs:[eax]
 0048C630    mov         dword ptr fs:[eax],esp
 0048C633    mov         eax,dword ptr [ebp+0C]
 0048C636    mov         dword ptr [eax+18],28
 0048C63D    mov         eax,dword ptr [ebp+0C]
 0048C640    mov         word ptr [eax+24],1
 0048C646    mov         eax,dword ptr [ebp+0C]
 0048C649    cmp         word ptr [eax+26],0
>0048C64E    jne         0048C673
 0048C650    push        0C
 0048C652    mov         eax,dword ptr [ebp-1C]
 0048C655    push        eax
 0048C656    call        gdi32.GetDeviceCaps
 0048C65B    mov         ebx,eax
 0048C65D    push        0E
 0048C65F    mov         eax,dword ptr [ebp-1C]
 0048C662    push        eax
 0048C663    call        gdi32.GetDeviceCaps
 0048C668    imul        bx,ax
 0048C66C    mov         eax,dword ptr [ebp+0C]
 0048C66F    mov         word ptr [eax+26],bx
 0048C673    mov         eax,dword ptr [ebp+0C]
 0048C676    mov         edx,dword ptr [ebp-28]
 0048C679    lea         esi,[eax+18]
 0048C67C    mov         edi,edx
 0048C67E    mov         ecx,0A
 0048C683    rep movs    dword ptr [edi],dword ptr [esi]
 0048C685    mov         eax,dword ptr [ebp+0C]
 0048C688    mov         eax,dword ptr [eax+1C]
 0048C68B    mov         edx,dword ptr [ebp+0C]
 0048C68E    mov         dword ptr [edx+4],eax
 0048C691    mov         eax,dword ptr [ebp+0C]
 0048C694    mov         eax,dword ptr [eax+20]
 0048C697    mov         edx,dword ptr [ebp+0C]
 0048C69A    mov         dword ptr [edx+8],eax
 0048C69D    mov         eax,dword ptr [ebp+0C]
 0048C6A0    cmp         word ptr [eax+26],8
>0048C6A5    ja          0048C772
 0048C6AB    mov         eax,dword ptr [ebp+0C]
 0048C6AE    cmp         word ptr [eax+26],1
>0048C6B3    jne         0048C6DD
 0048C6B5    cmp         dword ptr [ebp-4],0
>0048C6B9    je          0048C6C1
 0048C6BB    cmp         dword ptr [ebp-7C],0
>0048C6BF    jne         0048C6DD
 0048C6C1    mov         eax,dword ptr [ebp-28]
 0048C6C4    xor         edx,edx
 0048C6C6    mov         dword ptr [eax+28],edx
 0048C6C9    mov         eax,dword ptr [ebp-28]
 0048C6CC    add         eax,28
 0048C6CF    add         eax,4
 0048C6D2    mov         dword ptr [eax],0FFFFFF
>0048C6D8    jmp         0048C7AD
 0048C6DD    cmp         dword ptr [ebp-0C],0
>0048C6E1    je          0048C6FB
 0048C6E3    mov         eax,dword ptr [ebp-28]
 0048C6E6    lea         edx,[eax+28]
 0048C6E9    mov         ecx,0FF
 0048C6EE    mov         eax,dword ptr [ebp-0C]
 0048C6F1    call        004892DC
>0048C6F6    jmp         0048C7AD
 0048C6FB    cmp         dword ptr [ebp-4],0
>0048C6FF    je          0048C7AD
 0048C705    mov         eax,dword ptr [ebp-4]
 0048C708    push        eax
 0048C709    mov         eax,dword ptr [ebp-20]
 0048C70C    push        eax
 0048C70D    call        gdi32.SelectObject
 0048C712    mov         dword ptr [ebp-18],eax
 0048C715    cmp         dword ptr [ebp-78],0
>0048C719    jbe         0048C740
 0048C71B    cmp         dword ptr [ebp-7C],0
>0048C71F    je          0048C740
 0048C721    mov         eax,dword ptr [ebp-28]
 0048C724    add         eax,28
 0048C727    push        eax
 0048C728    push        100
 0048C72D    push        0
 0048C72F    mov         eax,dword ptr [ebp-20]
 0048C732    push        eax
 0048C733    call        gdi32.GetDIBColorTable
 0048C738    mov         edx,dword ptr [ebp+0C]
 0048C73B    mov         dword ptr [edx+38],eax
>0048C73E    jmp         0048C763
 0048C740    push        0
 0048C742    mov         eax,dword ptr [ebp-28]
 0048C745    push        eax
 0048C746    push        0
 0048C748    mov         eax,dword ptr [ebp+0C]
 0048C74B    mov         eax,dword ptr [eax+20]
 0048C74E    cdq
 0048C74F    xor         eax,edx
 0048C751    sub         eax,edx
 0048C753    push        eax
 0048C754    push        0
 0048C756    mov         eax,dword ptr [ebp-4]
 0048C759    push        eax
 0048C75A    mov         eax,dword ptr [ebp-20]
 0048C75D    push        eax
 0048C75E    call        gdi32.GetDIBits
 0048C763    mov         eax,dword ptr [ebp-18]
 0048C766    push        eax
 0048C767    mov         eax,dword ptr [ebp-20]
 0048C76A    push        eax
 0048C76B    call        gdi32.SelectObject
>0048C770    jmp         0048C7AD
 0048C772    mov         eax,dword ptr [ebp+0C]
 0048C775    cmp         word ptr [eax+26],10
>0048C77A    je          0048C786
 0048C77C    mov         eax,dword ptr [ebp+0C]
 0048C77F    cmp         word ptr [eax+26],20
>0048C784    jne         0048C7AD
 0048C786    mov         eax,dword ptr [ebp+0C]
 0048C789    test        byte ptr [eax+28],3
>0048C78D    je          0048C7AD
 0048C78F    mov         eax,dword ptr [ebp+0C]
 0048C792    call        0048C484
 0048C797    mov         eax,dword ptr [ebp-28]
 0048C79A    lea         edx,[eax+28]
 0048C79D    mov         eax,dword ptr [ebp+0C]
 0048C7A0    add         eax,40
 0048C7A3    mov         ecx,0C
 0048C7A8    call        Move
 0048C7AD    push        0
 0048C7AF    push        0
 0048C7B1    lea         eax,[ebp-2C]
 0048C7B4    push        eax
 0048C7B5    push        0
 0048C7B7    mov         eax,dword ptr [ebp-28]
 0048C7BA    push        eax
 0048C7BB    mov         eax,dword ptr [ebp-1C]
 0048C7BE    push        eax
 0048C7BF    call        gdi32.CreateDIBSection
 0048C7C4    call        004889D8
 0048C7C9    mov         dword ptr [ebp-10],eax
 0048C7CC    cmp         dword ptr [ebp-2C],0
>0048C7D0    jne         0048C7D7
 0048C7D2    call        0048892C
 0048C7D7    cmp         dword ptr [ebp-4],0
>0048C7DB    je          0048C837
 0048C7DD    mov         eax,dword ptr [ebp+0C]
 0048C7E0    mov         eax,dword ptr [eax+1C]
 0048C7E3    cmp         eax,dword ptr [ebp-8C]
>0048C7E9    jne         0048C837
 0048C7EB    mov         eax,dword ptr [ebp+0C]
 0048C7EE    mov         eax,dword ptr [eax+20]
 0048C7F1    cmp         eax,dword ptr [ebp-88]
>0048C7F7    jne         0048C837
 0048C7F9    mov         eax,dword ptr [ebp+0C]
 0048C7FC    cmp         word ptr [eax+26],8
>0048C801    jbe         0048C837
 0048C803    push        0
 0048C805    mov         eax,dword ptr [ebp-28]
 0048C808    push        eax
 0048C809    mov         eax,dword ptr [ebp-2C]
 0048C80C    push        eax
 0048C80D    mov         eax,dword ptr [ebp+0C]
 0048C810    mov         eax,dword ptr [eax+20]
 0048C813    cdq
 0048C814    xor         eax,edx
 0048C816    sub         eax,edx
 0048C818    push        eax
 0048C819    push        0
 0048C81B    mov         eax,dword ptr [ebp-4]
 0048C81E    push        eax
 0048C81F    mov         eax,dword ptr [ebp-20]
 0048C822    push        eax
 0048C823    call        gdi32.GetDIBits
 0048C828    call        @TryFinallyExit
 0048C82D    call        @TryFinallyExit
>0048C832    jmp         0048CB55
 0048C837    xor         eax,eax
 0048C839    pop         edx
 0048C83A    pop         ecx
 0048C83B    pop         ecx
 0048C83C    mov         dword ptr fs:[eax],edx
 0048C83F    push        48C854
 0048C844    mov         eax,dword ptr [ebp-28]
 0048C847    call        @FreeMem
 0048C84C    ret
>0048C84D    jmp         @HandleFinally
>0048C852    jmp         0048C844
 0048C854    mov         eax,dword ptr [ebp-10]
 0048C857    call        004889D8
 0048C85C    mov         eax,dword ptr [ebp-10]
 0048C85F    push        eax
 0048C860    mov         eax,dword ptr [ebp-20]
 0048C863    push        eax
 0048C864    call        gdi32.SelectObject
 0048C869    call        004889D8
 0048C86E    mov         dword ptr [ebp-18],eax
 0048C871    xor         eax,eax
 0048C873    push        ebp
 0048C874    push        48CAFF
 0048C879    push        dword ptr fs:[eax]
 0048C87C    mov         dword ptr fs:[eax],esp
 0048C87F    xor         eax,eax
 0048C881    push        ebp
 0048C882    push        48CAEE
 0048C887    push        dword ptr fs:[eax]
 0048C88A    mov         dword ptr fs:[eax],esp
 0048C88D    xor         eax,eax
 0048C88F    mov         dword ptr [ebp-38],eax
 0048C892    xor         eax,eax
 0048C894    mov         dword ptr [ebp-3C],eax
 0048C897    cmp         dword ptr [ebp-0C],0
>0048C89B    je          0048C8B8
 0048C89D    push        0
 0048C89F    mov         eax,dword ptr [ebp-0C]
 0048C8A2    push        eax
 0048C8A3    mov         eax,dword ptr [ebp-20]
 0048C8A6    push        eax
 0048C8A7    call        gdi32.SelectPalette
 0048C8AC    mov         dword ptr [ebp-38],eax
 0048C8AF    mov         eax,dword ptr [ebp-20]
 0048C8B2    push        eax
 0048C8B3    call        gdi32.RealizePalette
 0048C8B8    xor         eax,eax
 0048C8BA    push        ebp
 0048C8BB    push        48CACC
 0048C8C0    push        dword ptr fs:[eax]
 0048C8C3    mov         dword ptr fs:[eax],esp
 0048C8C6    cmp         dword ptr [ebp+8],0
>0048C8CA    je          0048C985
 0048C8D0    mov         eax,dword ptr [ebp+8]
 0048C8D3    mov         eax,dword ptr [eax+14]
 0048C8D6    call        TBrush.GetHandle
 0048C8DB    push        eax
 0048C8DC    mov         eax,dword ptr [ebp+0C]
 0048C8DF    mov         eax,dword ptr [eax+8]
 0048C8E2    push        eax
 0048C8E3    lea         eax,[ebp-0A0]
 0048C8E9    push        eax
 0048C8EA    mov         ecx,dword ptr [ebp+0C]
 0048C8ED    mov         ecx,dword ptr [ecx+4]
 0048C8F0    xor         edx,edx
 0048C8F2    xor         eax,eax
 0048C8F4    call        Rect
 0048C8F9    lea         eax,[ebp-0A0]
 0048C8FF    push        eax
 0048C900    mov         eax,dword ptr [ebp-20]
 0048C903    push        eax
 0048C904    call        user32.FillRect
 0048C909    mov         eax,dword ptr [ebp+8]
 0048C90C    mov         eax,dword ptr [eax+0C]
 0048C90F    mov         eax,dword ptr [eax+18]
 0048C912    call        00486830
 0048C917    push        eax
 0048C918    mov         eax,dword ptr [ebp-20]
 0048C91B    push        eax
 0048C91C    call        gdi32.SetTextColor
 0048C921    mov         eax,dword ptr [ebp+8]
 0048C924    mov         eax,dword ptr [eax+14]
 0048C927    call        TBrush.GetColor
 0048C92C    call        00486830
 0048C931    push        eax
 0048C932    mov         eax,dword ptr [ebp-20]
 0048C935    push        eax
 0048C936    call        gdi32.SetBkColor
 0048C93B    mov         eax,dword ptr [ebp+0C]
 0048C93E    cmp         word ptr [eax+26],1
>0048C943    jne         0048C9A5
 0048C945    mov         eax,dword ptr [ebp+0C]
 0048C948    cmp         dword ptr [eax+14],0
>0048C94C    je          0048C9A5
 0048C94E    mov         eax,dword ptr [ebp+8]
 0048C951    mov         eax,dword ptr [eax+0C]
 0048C954    mov         eax,dword ptr [eax+18]
 0048C957    call        00486830
 0048C95C    mov         dword ptr [ebp-34],eax
 0048C95F    mov         eax,dword ptr [ebp+8]
 0048C962    mov         eax,dword ptr [eax+14]
 0048C965    call        TBrush.GetColor
 0048C96A    call        00486830
 0048C96F    mov         dword ptr [ebp-30],eax
 0048C972    lea         eax,[ebp-34]
 0048C975    push        eax
 0048C976    push        2
 0048C978    push        0
 0048C97A    mov         eax,dword ptr [ebp-20]
 0048C97D    push        eax
 0048C97E    call        gdi32.SetDIBColorTable
>0048C983    jmp         0048C9A5
 0048C985    push        0FF0062
 0048C98A    mov         eax,dword ptr [ebp+0C]
 0048C98D    mov         eax,dword ptr [eax+8]
 0048C990    push        eax
 0048C991    mov         eax,dword ptr [ebp+0C]
 0048C994    mov         eax,dword ptr [eax+4]
 0048C997    push        eax
 0048C998    push        0
 0048C99A    push        0
 0048C99C    mov         eax,dword ptr [ebp-20]
 0048C99F    push        eax
 0048C9A0    call        gdi32.PatBlt
 0048C9A5    cmp         dword ptr [ebp-4],0
>0048C9A9    je          0048CAA9
 0048C9AF    mov         eax,dword ptr [ebp-1C]
 0048C9B2    push        eax
 0048C9B3    call        gdi32.CreateCompatibleDC
 0048C9B8    call        004889D8
 0048C9BD    mov         dword ptr [ebp-24],eax
 0048C9C0    xor         eax,eax
 0048C9C2    push        ebp
 0048C9C3    push        48CAA2
 0048C9C8    push        dword ptr fs:[eax]
 0048C9CB    mov         dword ptr fs:[eax],esp
 0048C9CE    mov         eax,dword ptr [ebp-4]
 0048C9D1    push        eax
 0048C9D2    mov         eax,dword ptr [ebp-24]
 0048C9D5    push        eax
 0048C9D6    call        gdi32.SelectObject
 0048C9DB    call        004889D8
 0048C9E0    mov         dword ptr [ebp-14],eax
 0048C9E3    cmp         dword ptr [ebp-8],0
>0048C9E7    je          0048CA04
 0048C9E9    push        0
 0048C9EB    mov         eax,dword ptr [ebp-8]
 0048C9EE    push        eax
 0048C9EF    mov         eax,dword ptr [ebp-24]
 0048C9F2    push        eax
 0048C9F3    call        gdi32.SelectPalette
 0048C9F8    mov         dword ptr [ebp-3C],eax
 0048C9FB    mov         eax,dword ptr [ebp-24]
 0048C9FE    push        eax
 0048C9FF    call        gdi32.RealizePalette
 0048CA04    cmp         dword ptr [ebp+8],0
>0048CA08    je          0048CA3C
 0048CA0A    mov         eax,dword ptr [ebp+8]
 0048CA0D    mov         eax,dword ptr [eax+0C]
 0048CA10    mov         eax,dword ptr [eax+18]
 0048CA13    call        00486830
 0048CA18    push        eax
 0048CA19    mov         eax,dword ptr [ebp-24]
 0048CA1C    push        eax
 0048CA1D    call        gdi32.SetTextColor
 0048CA22    mov         eax,dword ptr [ebp+8]
 0048CA25    mov         eax,dword ptr [eax+14]
 0048CA28    call        TBrush.GetColor
 0048CA2D    call        00486830
 0048CA32    push        eax
 0048CA33    mov         eax,dword ptr [ebp-24]
 0048CA36    push        eax
 0048CA37    call        gdi32.SetBkColor
 0048CA3C    push        0CC0020
 0048CA41    push        0
 0048CA43    push        0
 0048CA45    mov         eax,dword ptr [ebp-24]
 0048CA48    push        eax
 0048CA49    mov         eax,dword ptr [ebp+0C]
 0048CA4C    mov         eax,dword ptr [eax+8]
 0048CA4F    push        eax
 0048CA50    mov         eax,dword ptr [ebp+0C]
 0048CA53    mov         eax,dword ptr [eax+4]
 0048CA56    push        eax
 0048CA57    push        0
 0048CA59    push        0
 0048CA5B    mov         eax,dword ptr [ebp-20]
 0048CA5E    push        eax
 0048CA5F    call        gdi32.BitBlt
 0048CA64    cmp         dword ptr [ebp-8],0
>0048CA68    je          0048CA79
 0048CA6A    push        0FF
 0048CA6C    mov         eax,dword ptr [ebp-3C]
 0048CA6F    push        eax
 0048CA70    mov         eax,dword ptr [ebp-24]
 0048CA73    push        eax
 0048CA74    call        gdi32.SelectPalette
 0048CA79    mov         eax,dword ptr [ebp-14]
 0048CA7C    push        eax
 0048CA7D    mov         eax,dword ptr [ebp-24]
 0048CA80    push        eax
 0048CA81    call        gdi32.SelectObject
 0048CA86    call        004889D8
 0048CA8B    xor         eax,eax
 0048CA8D    pop         edx
 0048CA8E    pop         ecx
 0048CA8F    pop         ecx
 0048CA90    mov         dword ptr fs:[eax],edx
 0048CA93    push        48CAA9
 0048CA98    mov         eax,dword ptr [ebp-24]
 0048CA9B    push        eax
 0048CA9C    call        gdi32.DeleteDC
 0048CAA1    ret
>0048CAA2    jmp         @HandleFinally
>0048CAA7    jmp         0048CA98
 0048CAA9    xor         eax,eax
 0048CAAB    pop         edx
 0048CAAC    pop         ecx
 0048CAAD    pop         ecx
 0048CAAE    mov         dword ptr fs:[eax],edx
 0048CAB1    push        48CAD3
 0048CAB6    cmp         dword ptr [ebp-0C],0
>0048CABA    je          0048CACB
 0048CABC    push        0FF
 0048CABE    mov         eax,dword ptr [ebp-38]
 0048CAC1    push        eax
 0048CAC2    mov         eax,dword ptr [ebp-20]
 0048CAC5    push        eax
 0048CAC6    call        gdi32.SelectPalette
 0048CACB    ret
>0048CACC    jmp         @HandleFinally
>0048CAD1    jmp         0048CAB6
 0048CAD3    xor         eax,eax
 0048CAD5    pop         edx
 0048CAD6    pop         ecx
 0048CAD7    pop         ecx
 0048CAD8    mov         dword ptr fs:[eax],edx
 0048CADB    push        48CAF5
 0048CAE0    mov         eax,dword ptr [ebp-18]
 0048CAE3    push        eax
 0048CAE4    mov         eax,dword ptr [ebp-20]
 0048CAE7    push        eax
 0048CAE8    call        gdi32.SelectObject
 0048CAED    ret
>0048CAEE    jmp         @HandleFinally
>0048CAF3    jmp         0048CAE0
 0048CAF5    xor         eax,eax
 0048CAF7    pop         edx
 0048CAF8    pop         ecx
 0048CAF9    pop         ecx
 0048CAFA    mov         dword ptr fs:[eax],edx
>0048CAFD    jmp         0048CB17
>0048CAFF    jmp         @HandleAnyException
 0048CB04    mov         eax,dword ptr [ebp-10]
 0048CB07    push        eax
 0048CB08    call        gdi32.DeleteObject
 0048CB0D    call        @RaiseAgain
 0048CB12    call        @DoneExcept
 0048CB17    xor         eax,eax
 0048CB19    pop         edx
 0048CB1A    pop         ecx
 0048CB1B    pop         ecx
 0048CB1C    mov         dword ptr fs:[eax],edx
 0048CB1F    push        48CB55
 0048CB24    mov         eax,dword ptr [ebp-20]
 0048CB27    push        eax
 0048CB28    call        gdi32.DeleteDC
 0048CB2D    mov         eax,dword ptr [ebp-1C]
 0048CB30    push        eax
 0048CB31    push        0
 0048CB33    call        user32.ReleaseDC
 0048CB38    cmp         dword ptr [ebp-10],0
>0048CB3C    je          0048CB4D
 0048CB3E    mov         eax,dword ptr [ebp+0C]
 0048CB41    push        eax
 0048CB42    push        54
 0048CB44    mov         eax,dword ptr [ebp-10]
 0048CB47    push        eax
 0048CB48    call        gdi32.GetObjectA
 0048CB4D    ret
>0048CB4E    jmp         @HandleFinally
>0048CB53    jmp         0048CB24
 0048CB55    mov         eax,dword ptr [ebp-10]
 0048CB58    pop         edi
 0048CB59    pop         esi
 0048CB5A    pop         ebx
 0048CB5B    mov         esp,ebp
 0048CB5D    pop         ebp
 0048CB5E    ret         8
end;*}

//0048CB64
{*function sub_0048CB64(?:HPALETTE):?;
begin
 0048CB64    push        ebp
 0048CB65    mov         ebp,esp
 0048CB67    add         esp,0FFFFFBF0
 0048CB6D    mov         dword ptr [ebp-4],eax
 0048CB70    xor         eax,eax
 0048CB72    mov         dword ptr [ebp-8],eax
 0048CB75    cmp         dword ptr [ebp-4],0
>0048CB79    je          0048CBD2
 0048CB7B    xor         eax,eax
 0048CB7D    mov         dword ptr [ebp-0C],eax
 0048CB80    lea         eax,[ebp-0C]
 0048CB83    push        eax
 0048CB84    push        4
 0048CB86    mov         eax,dword ptr [ebp-4]
 0048CB89    push        eax
 0048CB8A    call        gdi32.GetObjectA
 0048CB8F    test        eax,eax
>0048CB91    je          0048CBD2
 0048CB93    cmp         dword ptr [ebp-0C],0
>0048CB97    je          0048CBD2
 0048CB99    mov         word ptr [ebp-410],300
 0048CBA2    mov         ax,word ptr [ebp-0C]
 0048CBA6    mov         word ptr [ebp-40E],ax
 0048CBAD    lea         eax,[ebp-40C]
 0048CBB3    push        eax
 0048CBB4    mov         eax,dword ptr [ebp-0C]
 0048CBB7    push        eax
 0048CBB8    push        0
 0048CBBA    mov         eax,dword ptr [ebp-4]
 0048CBBD    push        eax
 0048CBBE    call        gdi32.GetPaletteEntries
 0048CBC3    lea         eax,[ebp-410]
 0048CBC9    push        eax
 0048CBCA    call        gdi32.CreatePalette
 0048CBCF    mov         dword ptr [ebp-8],eax
 0048CBD2    mov         eax,dword ptr [ebp-8]
 0048CBD5    mov         esp,ebp
 0048CBD7    pop         ebp
 0048CBD8    ret
end;*}

//0048CBDC
{*function sub_0048CBDC(?:HBITMAP; ?:HPALETTE; ?:?):?;
begin
 0048CBDC    push        ebp
 0048CBDD    mov         ebp,esp
 0048CBDF    add         esp,0FFFFFF80
 0048CBE2    mov         dword ptr [ebp-0C],ecx
 0048CBE5    mov         dword ptr [ebp-8],edx
 0048CBE8    mov         dword ptr [ebp-4],eax
 0048CBEB    xor         eax,eax
 0048CBED    mov         dword ptr [ebp-10],eax
 0048CBF0    cmp         dword ptr [ebp-4],0
>0048CBF4    je          0048CDFE
 0048CBFA    lea         eax,[ebp-80]
 0048CBFD    push        eax
 0048CBFE    push        54
 0048CC00    mov         eax,dword ptr [ebp-4]
 0048CC03    push        eax
 0048CC04    call        gdi32.GetObjectA
 0048CC09    test        eax,eax
>0048CC0B    je          0048CDFE
 0048CC11    mov         eax,dword ptr [ebp-4]
 0048CC14    call        0048BF94
 0048CC19    xor         eax,eax
 0048CC1B    mov         dword ptr [ebp-14],eax
 0048CC1E    xor         eax,eax
 0048CC20    mov         dword ptr [ebp-1C],eax
 0048CC23    xor         eax,eax
 0048CC25    push        ebp
 0048CC26    push        48CDF7
 0048CC2B    push        dword ptr fs:[eax]
 0048CC2E    mov         dword ptr fs:[eax],esp
 0048CC31    push        0
 0048CC33    call        user32.GetDC
 0048CC38    call        004889D8
 0048CC3D    mov         dword ptr [ebp-14],eax
 0048CC40    mov         eax,dword ptr [ebp-14]
 0048CC43    push        eax
 0048CC44    call        gdi32.CreateCompatibleDC
 0048CC49    call        004889D8
 0048CC4E    mov         dword ptr [ebp-1C],eax
 0048CC51    push        0
 0048CC53    push        1
 0048CC55    push        1
 0048CC57    mov         eax,dword ptr [ebp-78]
 0048CC5A    push        eax
 0048CC5B    mov         eax,dword ptr [ebp-7C]
 0048CC5E    push        eax
 0048CC5F    call        gdi32.CreateBitmap
 0048CC64    mov         dword ptr [ebp-10],eax
 0048CC67    cmp         dword ptr [ebp-10],0
>0048CC6B    je          0048CDC9
 0048CC71    mov         eax,dword ptr [ebp-10]
 0048CC74    push        eax
 0048CC75    mov         eax,dword ptr [ebp-1C]
 0048CC78    push        eax
 0048CC79    call        gdi32.SelectObject
 0048CC7E    mov         dword ptr [ebp-2C],eax
 0048CC81    cmp         dword ptr [ebp-0C],1FFFFFFF
>0048CC88    jne         0048CCA6
 0048CC8A    push        42
 0048CC8C    mov         eax,dword ptr [ebp-78]
 0048CC8F    push        eax
 0048CC90    mov         eax,dword ptr [ebp-7C]
 0048CC93    push        eax
 0048CC94    push        0
 0048CC96    push        0
 0048CC98    mov         eax,dword ptr [ebp-1C]
 0048CC9B    push        eax
 0048CC9C    call        gdi32.PatBlt
>0048CCA1    jmp         0048CDB6
 0048CCA6    mov         eax,dword ptr [ebp-14]
 0048CCA9    push        eax
 0048CCAA    call        gdi32.CreateCompatibleDC
 0048CCAF    call        004889D8
 0048CCB4    mov         dword ptr [ebp-18],eax
 0048CCB7    xor         eax,eax
 0048CCB9    push        ebp
 0048CCBA    push        48CDAF
 0048CCBF    push        dword ptr fs:[eax]
 0048CCC2    mov         dword ptr fs:[eax],esp
 0048CCC5    cmp         dword ptr [ebp-6C],0
>0048CCC9    je          0048CCED
 0048CCCB    mov         byte ptr [ebp-21],1
 0048CCCF    xor         eax,eax
 0048CCD1    mov         dword ptr [ebp-68],eax
 0048CCD4    lea         eax,[ebp-80]
 0048CCD7    push        eax
 0048CCD8    push        0
 0048CCDA    mov         ecx,dword ptr [ebp-8]
 0048CCDD    mov         edx,dword ptr [ebp-8]
 0048CCE0    mov         eax,dword ptr [ebp-4]
 0048CCE3    call        0048C4F4
 0048CCE8    mov         dword ptr [ebp-4],eax
>0048CCEB    jmp         0048CCF1
 0048CCED    mov         byte ptr [ebp-21],0
 0048CCF1    mov         eax,dword ptr [ebp-4]
 0048CCF4    push        eax
 0048CCF5    mov         eax,dword ptr [ebp-18]
 0048CCF8    push        eax
 0048CCF9    call        gdi32.SelectObject
 0048CCFE    mov         dword ptr [ebp-28],eax
 0048CD01    cmp         dword ptr [ebp-8],0
>0048CD05    je          0048CD37
 0048CD07    push        0
 0048CD09    mov         eax,dword ptr [ebp-8]
 0048CD0C    push        eax
 0048CD0D    mov         eax,dword ptr [ebp-18]
 0048CD10    push        eax
 0048CD11    call        gdi32.SelectPalette
 0048CD16    mov         eax,dword ptr [ebp-18]
 0048CD19    push        eax
 0048CD1A    call        gdi32.RealizePalette
 0048CD1F    push        0
 0048CD21    mov         eax,dword ptr [ebp-8]
 0048CD24    push        eax
 0048CD25    mov         eax,dword ptr [ebp-1C]
 0048CD28    push        eax
 0048CD29    call        gdi32.SelectPalette
 0048CD2E    mov         eax,dword ptr [ebp-1C]
 0048CD31    push        eax
 0048CD32    call        gdi32.RealizePalette
 0048CD37    mov         eax,dword ptr [ebp-0C]
 0048CD3A    push        eax
 0048CD3B    mov         eax,dword ptr [ebp-18]
 0048CD3E    push        eax
 0048CD3F    call        gdi32.SetBkColor
 0048CD44    mov         dword ptr [ebp-20],eax
 0048CD47    push        0CC0020
 0048CD4C    push        0
 0048CD4E    push        0
 0048CD50    mov         eax,dword ptr [ebp-18]
 0048CD53    push        eax
 0048CD54    mov         eax,dword ptr [ebp-78]
 0048CD57    push        eax
 0048CD58    mov         eax,dword ptr [ebp-7C]
 0048CD5B    push        eax
 0048CD5C    push        0
 0048CD5E    push        0
 0048CD60    mov         eax,dword ptr [ebp-1C]
 0048CD63    push        eax
 0048CD64    call        gdi32.BitBlt
 0048CD69    mov         eax,dword ptr [ebp-20]
 0048CD6C    push        eax
 0048CD6D    mov         eax,dword ptr [ebp-18]
 0048CD70    push        eax
 0048CD71    call        gdi32.SetBkColor
 0048CD76    cmp         dword ptr [ebp-28],0
>0048CD7A    je          0048CD89
 0048CD7C    mov         eax,dword ptr [ebp-28]
 0048CD7F    push        eax
 0048CD80    mov         eax,dword ptr [ebp-18]
 0048CD83    push        eax
 0048CD84    call        gdi32.SelectObject
 0048CD89    cmp         byte ptr [ebp-21],0
>0048CD8D    je          0048CD98
 0048CD8F    mov         eax,dword ptr [ebp-4]
 0048CD92    push        eax
 0048CD93    call        gdi32.DeleteObject
 0048CD98    xor         eax,eax
 0048CD9A    pop         edx
 0048CD9B    pop         ecx
 0048CD9C    pop         ecx
 0048CD9D    mov         dword ptr fs:[eax],edx
 0048CDA0    push        48CDB6
 0048CDA5    mov         eax,dword ptr [ebp-18]
 0048CDA8    push        eax
 0048CDA9    call        gdi32.DeleteDC
 0048CDAE    ret
>0048CDAF    jmp         @HandleFinally
>0048CDB4    jmp         0048CDA5
 0048CDB6    cmp         dword ptr [ebp-2C],0
>0048CDBA    je          0048CDC9
 0048CDBC    mov         eax,dword ptr [ebp-2C]
 0048CDBF    push        eax
 0048CDC0    mov         eax,dword ptr [ebp-1C]
 0048CDC3    push        eax
 0048CDC4    call        gdi32.SelectObject
 0048CDC9    xor         eax,eax
 0048CDCB    pop         edx
 0048CDCC    pop         ecx
 0048CDCD    pop         ecx
 0048CDCE    mov         dword ptr fs:[eax],edx
 0048CDD1    push        48CDFE
 0048CDD6    cmp         dword ptr [ebp-1C],0
>0048CDDA    je          0048CDE5
 0048CDDC    mov         eax,dword ptr [ebp-1C]
 0048CDDF    push        eax
 0048CDE0    call        gdi32.DeleteDC
 0048CDE5    cmp         dword ptr [ebp-14],0
>0048CDE9    je          0048CDF6
 0048CDEB    mov         eax,dword ptr [ebp-14]
 0048CDEE    push        eax
 0048CDEF    push        0
 0048CDF1    call        user32.ReleaseDC
 0048CDF6    ret
>0048CDF7    jmp         @HandleFinally
>0048CDFC    jmp         0048CDD6
 0048CDFE    mov         eax,dword ptr [ebp-10]
 0048CE01    mov         esp,ebp
 0048CE03    pop         ebp
 0048CE04    ret
end;*}

//0048CE08
constructor TBitmap.Create;
begin
{*
 0048CE08    push        ebp
 0048CE09    mov         ebp,esp
 0048CE0B    add         esp,0FFFFFFF8
 0048CE0E    test        dl,dl
>0048CE10    je          0048CE1A
 0048CE12    add         esp,0FFFFFFF0
 0048CE15    call        @ClassCreate
 0048CE1A    mov         byte ptr [ebp-5],dl
 0048CE1D    mov         dword ptr [ebp-4],eax
 0048CE20    xor         edx,edx
 0048CE22    mov         eax,dword ptr [ebp-4]
 0048CE25    call        00489E60
 0048CE2A    mov         eax,dword ptr [ebp-4]
 0048CE2D    mov         dword ptr [eax+34],20000000
 0048CE34    mov         dl,1
 0048CE36    mov         eax,[00485C0C];TBitmapImage
 0048CE3B    call        TObject.Create
 0048CE40    mov         edx,dword ptr [ebp-4]
 0048CE43    mov         dword ptr [edx+28],eax
 0048CE46    mov         eax,dword ptr [ebp-4]
 0048CE49    mov         eax,dword ptr [eax+28]
 0048CE4C    call        0048C278
 0048CE51    cmp         byte ptr ds:[540DFC],0;gvar_00540DFC
>0048CE58    je          0048CE64
 0048CE5A    mov         dl,1
 0048CE5C    mov         eax,dword ptr [ebp-4]
 0048CE5F    mov         ecx,dword ptr [eax]
 0048CE61    call        dword ptr [ecx+6C]
 0048CE64    mov         eax,dword ptr [ebp-4]
 0048CE67    cmp         byte ptr [ebp-5],0
>0048CE6B    je          0048CE7C
 0048CE6D    call        @AfterConstruction
 0048CE72    pop         dword ptr fs:[0]
 0048CE79    add         esp,0C
 0048CE7C    mov         eax,dword ptr [ebp-4]
 0048CE7F    pop         ecx
 0048CE80    pop         ecx
 0048CE81    pop         ebp
 0048CE82    ret
*}
end;

//0048CE84
destructor TBitmap.Destroy;
begin
{*
 0048CE84    push        ebp
 0048CE85    mov         ebp,esp
 0048CE87    add         esp,0FFFFFFF8
 0048CE8A    call        @BeforeDestruction
 0048CE8F    mov         byte ptr [ebp-5],dl
 0048CE92    mov         dword ptr [ebp-4],eax
 0048CE95    mov         eax,dword ptr [ebp-4]
 0048CE98    call        0048D968
 0048CE9D    mov         eax,dword ptr [ebp-4]
 0048CEA0    mov         eax,dword ptr [eax+28]
 0048CEA3    call        0048C288
 0048CEA8    mov         eax,dword ptr [ebp-4]
 0048CEAB    mov         eax,dword ptr [eax+2C]
 0048CEAE    call        TObject.Free
 0048CEB3    mov         dl,byte ptr [ebp-5]
 0048CEB6    and         dl,0FC
 0048CEB9    mov         eax,dword ptr [ebp-4]
 0048CEBC    call        TPersistent.Destroy
 0048CEC1    cmp         byte ptr [ebp-5],0
>0048CEC5    jle         0048CECF
 0048CEC7    mov         eax,dword ptr [ebp-4]
 0048CECA    call        @ClassDestroy
 0048CECF    pop         ecx
 0048CED0    pop         ecx
 0048CED1    pop         ebp
 0048CED2    ret
*}
end;

//0048CED4
{*procedure sub_0048CED4(?:?);
begin
 0048CED4    push        ebp
 0048CED5    mov         ebp,esp
 0048CED7    add         esp,0FFFFFFA4
 0048CEDA    mov         dword ptr [ebp-8],edx
 0048CEDD    mov         dword ptr [ebp-4],eax
 0048CEE0    cmp         dword ptr [ebp-8],0
>0048CEE4    je          0048CEFC
 0048CEE6    mov         eax,dword ptr [ebp-8]
 0048CEE9    mov         edx,dword ptr ds:[485C6C];TBitmap
 0048CEEF    call        @IsClass
 0048CEF4    test        al,al
>0048CEF6    je          0048CFC4
 0048CEFC    push        55DB2C;gvar_0055DB2C
 0048CF01    call        kernel32.EnterCriticalSection
 0048CF06    xor         eax,eax
 0048CF08    push        ebp
 0048CF09    push        48CF9D
 0048CF0E    push        dword ptr fs:[eax]
 0048CF11    mov         dword ptr fs:[eax],esp
 0048CF14    cmp         dword ptr [ebp-8],0
>0048CF18    je          0048CF62
 0048CF1A    mov         eax,dword ptr [ebp-8]
 0048CF1D    mov         eax,dword ptr [eax+28]
 0048CF20    call        0048C278
 0048CF25    mov         eax,dword ptr [ebp-4]
 0048CF28    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048CF2B    call        0048C288
 0048CF30    mov         eax,dword ptr [ebp-8]
 0048CF33    mov         eax,dword ptr [eax+28]
 0048CF36    mov         edx,dword ptr [ebp-4]
 0048CF39    mov         dword ptr [edx+28],eax;TBitmap.FImage:TBitmapImage
 0048CF3C    mov         eax,dword ptr [ebp-8]
 0048CF3F    mov         al,byte ptr [eax+21]
 0048CF42    mov         edx,dword ptr [ebp-4]
 0048CF45    mov         byte ptr [edx+21],al;TBitmap.FTransparent:Boolean
 0048CF48    mov         eax,dword ptr [ebp-8]
 0048CF4B    mov         eax,dword ptr [eax+34]
 0048CF4E    mov         edx,dword ptr [ebp-4]
 0048CF51    mov         dword ptr [edx+34],eax;TBitmap.FTransparentColor:TColor
 0048CF54    mov         eax,dword ptr [ebp-8]
 0048CF57    mov         al,byte ptr [eax+38]
 0048CF5A    mov         edx,dword ptr [ebp-4]
 0048CF5D    mov         byte ptr [edx+38],al;TBitmap.FTransparentMode:TTransparentMode
>0048CF60    jmp         0048CF85
 0048CF62    lea         eax,[ebp-5C]
 0048CF65    xor         ecx,ecx
 0048CF67    mov         edx,54
 0048CF6C    call        @FillChar
 0048CF71    lea         eax,[ebp-5C]
 0048CF74    push        eax
 0048CF75    push        0
 0048CF77    push        0
 0048CF79    xor         ecx,ecx
 0048CF7B    xor         edx,edx
 0048CF7D    mov         eax,dword ptr [ebp-4]
 0048CF80    call        0048DCBC
 0048CF85    xor         eax,eax
 0048CF87    pop         edx
 0048CF88    pop         ecx
 0048CF89    pop         ecx
 0048CF8A    mov         dword ptr fs:[eax],edx
 0048CF8D    push        48CFA4
 0048CF92    push        55DB2C;gvar_0055DB2C
 0048CF97    call        kernel32.LeaveCriticalSection
 0048CF9C    ret
>0048CF9D    jmp         @HandleFinally
>0048CFA2    jmp         0048CF92
 0048CFA4    mov         eax,dword ptr [ebp-4]
 0048CFA7    mov         edx,dword ptr [eax]
 0048CFA9    call        dword ptr [edx+24];TBitmap.sub_0048D698
 0048CFAC    test        eax,eax
 0048CFAE    setne       al
 0048CFB1    mov         edx,dword ptr [ebp-4]
 0048CFB4    mov         byte ptr [edx+22],al;TBitmap.FPaletteModified:Boolean
 0048CFB7    mov         edx,dword ptr [ebp-4]
 0048CFBA    mov         eax,dword ptr [ebp-4]
 0048CFBD    mov         ecx,dword ptr [eax]
 0048CFBF    call        dword ptr [ecx+10];TBitmap.sub_0048D0E4
>0048CFC2    jmp         0048CFCF
 0048CFC4    mov         edx,dword ptr [ebp-8]
 0048CFC7    mov         eax,dword ptr [ebp-4]
 0048CFCA    call        004790A8
 0048CFCF    mov         esp,ebp
 0048CFD1    pop         ebp
 0048CFD2    ret
end;*}

//0048CFD4
{*procedure sub_0048CFD4(?:TBitmap; ?:HBITMAP; ?:?);
begin
 0048CFD4    push        ebp
 0048CFD5    mov         ebp,esp
 0048CFD7    add         esp,0FFFFFF98
 0048CFDA    push        ebx
 0048CFDB    push        esi
 0048CFDC    push        edi
 0048CFDD    mov         esi,dword ptr [ebp+8]
 0048CFE0    lea         edi,[ebp-68]
 0048CFE3    push        ecx
 0048CFE4    mov         ecx,15
 0048CFE9    rep movs    dword ptr [edi],dword ptr [esi]
 0048CFEB    pop         ecx
 0048CFEC    mov         dword ptr [ebp-0C],ecx
 0048CFEF    mov         dword ptr [ebp-8],edx
 0048CFF2    mov         dword ptr [ebp-4],eax
 0048CFF5    mov         eax,dword ptr [ebp-4]
 0048CFF8    call        0048D968
 0048CFFD    xor         eax,eax
 0048CFFF    mov         dword ptr [ebp-10],eax
 0048D002    xor         eax,eax
 0048D004    mov         dword ptr [ebp-14],eax
 0048D007    xor         eax,eax
 0048D009    push        ebp
 0048D00A    push        48D077
 0048D00F    push        dword ptr fs:[eax]
 0048D012    mov         dword ptr fs:[eax],esp
 0048D015    mov         eax,dword ptr [ebp-0C]
 0048D018    cmp         eax,dword ptr ds:[55DB10];gvar_0055DB10
>0048D01E    jne         0048D028
 0048D020    mov         eax,dword ptr [ebp-0C]
 0048D023    mov         dword ptr [ebp-14],eax
>0048D026    jmp         0048D033
 0048D028    mov         eax,dword ptr [ebp-0C]
 0048D02B    call        0048CB64
 0048D030    mov         dword ptr [ebp-14],eax
 0048D033    lea         eax,[ebp-68]
 0048D036    push        eax
 0048D037    mov         eax,dword ptr [ebp-4]
 0048D03A    mov         eax,dword ptr [eax+2C]
 0048D03D    push        eax
 0048D03E    mov         ecx,dword ptr [ebp-14]
 0048D041    mov         edx,dword ptr [ebp-0C]
 0048D044    mov         eax,dword ptr [ebp-8]
 0048D047    call        0048C4F4
 0048D04C    mov         dword ptr [ebp-10],eax
 0048D04F    lea         eax,[ebp-68]
 0048D052    push        eax
 0048D053    mov         eax,dword ptr [ebp-4]
 0048D056    mov         eax,dword ptr [eax+28]
 0048D059    mov         al,byte ptr [eax+70]
 0048D05C    push        eax
 0048D05D    push        0
 0048D05F    mov         ecx,dword ptr [ebp-14]
 0048D062    mov         edx,dword ptr [ebp-10]
 0048D065    mov         eax,dword ptr [ebp-4]
 0048D068    call        0048DCBC
 0048D06D    xor         eax,eax
 0048D06F    pop         edx
 0048D070    pop         ecx
 0048D071    pop         ecx
 0048D072    mov         dword ptr fs:[eax],edx
>0048D075    jmp         0048D09D
>0048D077    jmp         @HandleAnyException
 0048D07C    mov         eax,dword ptr [ebp-14]
 0048D07F    call        00485E88
 0048D084    cmp         dword ptr [ebp-10],0
>0048D088    je          0048D093
 0048D08A    mov         eax,dword ptr [ebp-10]
 0048D08D    push        eax
 0048D08E    call        gdi32.DeleteObject
 0048D093    call        @RaiseAgain
 0048D098    call        @DoneExcept
 0048D09D    pop         edi
 0048D09E    pop         esi
 0048D09F    pop         ebx
 0048D0A0    mov         esp,ebp
 0048D0A2    pop         ebp
 0048D0A3    ret         4
end;*}

//0048D0A8
procedure sub_0048D0A8(?:TBitmap; ?:TBitmap);
begin
{*
 0048D0A8    push        ebp
 0048D0A9    mov         ebp,esp
 0048D0AB    add         esp,0FFFFFFF8
 0048D0AE    mov         dword ptr [ebp-8],edx
 0048D0B1    mov         dword ptr [ebp-4],eax
 0048D0B4    mov         eax,dword ptr [ebp-4]
 0048D0B7    call        0048D434
 0048D0BC    mov         eax,dword ptr [ebp-4]
 0048D0BF    mov         eax,dword ptr [eax+28]
 0048D0C2    xor         edx,edx
 0048D0C4    mov         dword ptr [eax+50],edx
 0048D0C7    mov         eax,dword ptr [ebp-4]
 0048D0CA    mov         eax,dword ptr [eax+28]
 0048D0CD    xor         edx,edx
 0048D0CF    mov         dword ptr [eax+54],edx
 0048D0D2    mov         eax,dword ptr [ebp-4]
 0048D0D5    mov         eax,dword ptr [eax+28]
 0048D0D8    add         eax,6C
 0048D0DB    call        FreeAndNil
 0048D0E0    pop         ecx
 0048D0E1    pop         ecx
 0048D0E2    pop         ebp
 0048D0E3    ret
*}
end;

//0048D0E4
{*procedure sub_0048D0E4(?:?);
begin
 0048D0E4    push        ebp
 0048D0E5    mov         ebp,esp
 0048D0E7    add         esp,0FFFFFFF8
 0048D0EA    mov         dword ptr [ebp-8],edx
 0048D0ED    mov         dword ptr [ebp-4],eax
 0048D0F0    mov         eax,dword ptr [ebp-4]
 0048D0F3    mov         byte ptr [eax+31],0;TBitmap.FMaskBitsValid:Boolean
 0048D0F7    mov         edx,dword ptr [ebp-8]
 0048D0FA    mov         eax,dword ptr [ebp-4]
 0048D0FD    call        00489EA4
 0048D102    pop         ecx
 0048D103    pop         ecx
 0048D104    pop         ebp
 0048D105    ret
end;*}

//0048D108
procedure sub_0048D108(?:TBitmap);
begin
{*
 0048D108    push        ebp
 0048D109    mov         ebp,esp
 0048D10B    add         esp,0FFFFFFA4
 0048D10E    push        esi
 0048D10F    push        edi
 0048D110    mov         dword ptr [ebp-4],eax
 0048D113    mov         dl,1
 0048D115    mov         eax,[00476368];TMemoryStream
 0048D11A    call        TObject.Create;TMemoryStream.Create
 0048D11F    mov         dword ptr [ebp-8],eax
 0048D122    mov         edx,dword ptr [ebp-8]
 0048D125    mov         eax,dword ptr [ebp-4]
 0048D128    mov         ecx,dword ptr [eax]
 0048D12A    call        dword ptr [ecx+58]
 0048D12D    mov         eax,dword ptr [ebp-8]
 0048D130    mov         edx,dword ptr [eax]
 0048D132    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0048D134    push        edx
 0048D135    push        eax
 0048D136    mov         eax,dword ptr [ebp-8]
 0048D139    call        0047BD6C
 0048D13E    mov         eax,dword ptr [ebp-4]
 0048D141    mov         eax,dword ptr [eax+28]
 0048D144    lea         esi,[eax+18]
 0048D147    lea         edi,[ebp-5C]
 0048D14A    mov         ecx,15
 0048D14F    rep movs    dword ptr [edi],dword ptr [esi]
 0048D151    xor         eax,eax
 0048D153    mov         dword ptr [ebp-48],eax
 0048D156    mov         eax,dword ptr [ebp-4]
 0048D159    call        0048D968
 0048D15E    mov         eax,dword ptr [ebp-4]
 0048D161    add         eax,2C
 0048D164    call        FreeAndNil
 0048D169    lea         eax,[ebp-5C]
 0048D16C    push        eax
 0048D16D    mov         eax,dword ptr [ebp-4]
 0048D170    mov         eax,dword ptr [eax+28]
 0048D173    mov         al,byte ptr [eax+70]
 0048D176    push        eax
 0048D177    mov         eax,dword ptr [ebp-8]
 0048D17A    push        eax
 0048D17B    xor         ecx,ecx
 0048D17D    xor         edx,edx
 0048D17F    mov         eax,dword ptr [ebp-4]
 0048D182    call        0048DCBC
 0048D187    pop         edi
 0048D188    pop         esi
 0048D189    mov         esp,ebp
 0048D18B    pop         ebp
 0048D18C    ret
*}
end;

//0048D190
{*procedure sub_0048D190(?:?; ?:?);
begin
 0048D190    push        ebp
 0048D191    mov         ebp,esp
 0048D193    add         esp,0FFFFFFD4
 0048D196    push        ebx
 0048D197    mov         dword ptr [ebp-0C],ecx
 0048D19A    mov         dword ptr [ebp-8],edx
 0048D19D    mov         dword ptr [ebp-4],eax
 0048D1A0    mov         eax,dword ptr [ebp-4]
 0048D1A3    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D1A6    mov         dword ptr [ebp-2C],eax
 0048D1A9    mov         dl,byte ptr ds:[48D430];0xF gvar_0048D430
 0048D1AF    mov         eax,dword ptr [ebp-8]
 0048D1B2    call        004885D8
 0048D1B7    mov         eax,dword ptr [ebp-4]
 0048D1BA    call        0048DAE4
 0048D1BF    xor         eax,eax
 0048D1C1    mov         dword ptr [ebp-10],eax
 0048D1C4    mov         byte ptr [ebp-11],0
 0048D1C8    mov         eax,dword ptr [ebp-2C]
 0048D1CB    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>0048D1CF    je          0048D1F9
 0048D1D1    push        0FF
 0048D1D3    mov         eax,dword ptr [ebp-2C]
 0048D1D6    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048D1D9    push        eax
 0048D1DA    mov         eax,dword ptr [ebp-8]
 0048D1DD    mov         eax,dword ptr [eax+4]
 0048D1E0    push        eax
 0048D1E1    call        gdi32.SelectPalette
 0048D1E6    mov         dword ptr [ebp-10],eax
 0048D1E9    mov         eax,dword ptr [ebp-8]
 0048D1EC    mov         eax,dword ptr [eax+4]
 0048D1EF    push        eax
 0048D1F0    call        gdi32.RealizePalette
 0048D1F5    mov         byte ptr [ebp-11],1
 0048D1F9    push        0C
 0048D1FB    mov         eax,dword ptr [ebp-8]
 0048D1FE    mov         eax,dword ptr [eax+4]
 0048D201    push        eax
 0048D202    call        gdi32.GetDeviceCaps
 0048D207    mov         ebx,eax
 0048D209    push        0E
 0048D20B    mov         eax,dword ptr [ebp-8]
 0048D20E    mov         eax,dword ptr [eax+4]
 0048D211    push        eax
 0048D212    call        gdi32.GetDeviceCaps
 0048D217    imul        ebx,eax
 0048D21A    mov         dword ptr [ebp-20],ebx
 0048D21D    cmp         dword ptr [ebp-20],8
>0048D221    jg          0048D238
 0048D223    mov         eax,dword ptr [ebp-2C]
 0048D226    movzx       eax,word ptr [eax+2A]
 0048D22A    mov         edx,dword ptr [ebp-2C]
 0048D22D    movzx       edx,word ptr [edx+28]
 0048D231    imul        edx
 0048D233    cmp         eax,dword ptr [ebp-20]
>0048D236    jg          0048D23C
 0048D238    xor         eax,eax
>0048D23A    jmp         0048D23E
 0048D23C    mov         al,1
 0048D23E    mov         byte ptr [ebp-12],al
 0048D241    cmp         byte ptr [ebp-12],0
>0048D245    je          0048D27F
 0048D247    lea         eax,[ebp-1A]
 0048D24A    push        eax
 0048D24B    mov         eax,dword ptr [ebp-8]
 0048D24E    mov         eax,dword ptr [eax+4]
 0048D251    push        eax
 0048D252    call        gdi32.GetBrushOrgEx
 0048D257    push        4
 0048D259    mov         eax,dword ptr [ebp-8]
 0048D25C    mov         eax,dword ptr [eax+4]
 0048D25F    push        eax
 0048D260    call        gdi32.SetStretchBltMode
 0048D265    lea         eax,[ebp-1A]
 0048D268    push        eax
 0048D269    mov         eax,dword ptr [ebp-16]
 0048D26C    push        eax
 0048D26D    mov         eax,dword ptr [ebp-1A]
 0048D270    push        eax
 0048D271    mov         eax,dword ptr [ebp-8]
 0048D274    mov         eax,dword ptr [eax+4]
 0048D277    push        eax
 0048D278    call        gdi32.SetBrushOrgEx
>0048D27D    jmp         0048D29B
 0048D27F    mov         eax,dword ptr [ebp-4]
 0048D282    call        0048D65C
 0048D287    test        al,al
>0048D289    jne         0048D29B
 0048D28B    push        3
 0048D28D    mov         eax,dword ptr [ebp-8]
 0048D290    call        TCanvas.GetHandle
 0048D295    push        eax
 0048D296    call        gdi32.SetStretchBltMode
 0048D29B    xor         eax,eax
 0048D29D    push        ebp
 0048D29E    push        48D423
 0048D2A3    push        dword ptr fs:[eax]
 0048D2A6    mov         dword ptr fs:[eax],esp
 0048D2A9    mov         eax,dword ptr [ebp-4]
 0048D2AC    mov         edx,dword ptr [eax]
 0048D2AE    call        dword ptr [edx+28];TBitmap.sub_0048A0EC
 0048D2B1    test        al,al
>0048D2B3    je          0048D2BD
 0048D2B5    mov         eax,dword ptr [ebp-4]
 0048D2B8    call        0048DA4C
 0048D2BD    mov         eax,dword ptr [ebp-4]
 0048D2C0    call        TBitmap.GetCanvas
 0048D2C5    mov         dl,byte ptr ds:[48D430];0xF gvar_0048D430
 0048D2CB    call        004885D8
 0048D2D0    mov         eax,dword ptr [ebp-4]
 0048D2D3    mov         edx,dword ptr [eax]
 0048D2D5    call        dword ptr [edx+28];TBitmap.sub_0048A0EC
 0048D2D8    test        al,al
>0048D2DA    je          0048D3A6
 0048D2E0    xor         eax,eax
 0048D2E2    mov         dword ptr [ebp-28],eax
 0048D2E5    xor         eax,eax
 0048D2E7    mov         dword ptr [ebp-24],eax
 0048D2EA    xor         eax,eax
 0048D2EC    push        ebp
 0048D2ED    push        48D39F
 0048D2F2    push        dword ptr fs:[eax]
 0048D2F5    mov         dword ptr fs:[eax],esp
 0048D2F8    push        0
 0048D2FA    call        gdi32.CreateCompatibleDC
 0048D2FF    call        004889D8
 0048D304    mov         dword ptr [ebp-24],eax
 0048D307    mov         eax,dword ptr [ebp-2C]
 0048D30A    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 0048D30D    push        eax
 0048D30E    mov         eax,dword ptr [ebp-24]
 0048D311    push        eax
 0048D312    call        gdi32.SelectObject
 0048D317    mov         dword ptr [ebp-28],eax
 0048D31A    mov         eax,dword ptr [ebp-0C]
 0048D31D    mov         eax,dword ptr [eax+8]
 0048D320    mov         edx,dword ptr [ebp-0C]
 0048D323    sub         eax,dword ptr [edx]
 0048D325    push        eax
 0048D326    mov         eax,dword ptr [ebp-0C]
 0048D329    mov         eax,dword ptr [eax+0C]
 0048D32C    mov         edx,dword ptr [ebp-0C]
 0048D32F    sub         eax,dword ptr [edx+4]
 0048D332    push        eax
 0048D333    mov         eax,dword ptr [ebp-4]
 0048D336    call        TBitmap.GetCanvas
 0048D33B    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 0048D33E    push        eax
 0048D33F    push        0
 0048D341    push        0
 0048D343    mov         eax,dword ptr [ebp-2C]
 0048D346    mov         eax,dword ptr [eax+1C]
 0048D349    push        eax
 0048D34A    mov         eax,dword ptr [ebp-2C]
 0048D34D    mov         eax,dword ptr [eax+20]
 0048D350    push        eax
 0048D351    mov         eax,dword ptr [ebp-24]
 0048D354    push        eax
 0048D355    push        0
 0048D357    push        0
 0048D359    mov         ecx,dword ptr [ebp-0C]
 0048D35C    mov         ecx,dword ptr [ecx+4]
 0048D35F    mov         edx,dword ptr [ebp-0C]
 0048D362    mov         edx,dword ptr [edx]
 0048D364    mov         eax,dword ptr [ebp-8]
 0048D367    mov         eax,dword ptr [eax+4]
 0048D36A    call        00488BE0
 0048D36F    xor         eax,eax
 0048D371    pop         edx
 0048D372    pop         ecx
 0048D373    pop         ecx
 0048D374    mov         dword ptr fs:[eax],edx
 0048D377    push        48D3FD
 0048D37C    cmp         dword ptr [ebp-28],0
>0048D380    je          0048D38F
 0048D382    mov         eax,dword ptr [ebp-28]
 0048D385    push        eax
 0048D386    mov         eax,dword ptr [ebp-24]
 0048D389    push        eax
 0048D38A    call        gdi32.SelectObject
 0048D38F    cmp         dword ptr [ebp-24],0
>0048D393    je          0048D39E
 0048D395    mov         eax,dword ptr [ebp-24]
 0048D398    push        eax
 0048D399    call        gdi32.DeleteDC
 0048D39E    ret
>0048D39F    jmp         @HandleFinally
>0048D3A4    jmp         0048D37C
 0048D3A6    mov         eax,dword ptr [ebp-8]
 0048D3A9    mov         eax,dword ptr [eax+20]
 0048D3AC    push        eax
 0048D3AD    mov         eax,dword ptr [ebp-2C]
 0048D3B0    mov         eax,dword ptr [eax+20]
 0048D3B3    push        eax
 0048D3B4    mov         eax,dword ptr [ebp-2C]
 0048D3B7    mov         eax,dword ptr [eax+1C]
 0048D3BA    push        eax
 0048D3BB    push        0
 0048D3BD    push        0
 0048D3BF    mov         eax,dword ptr [ebp-4]
 0048D3C2    call        TBitmap.GetCanvas
 0048D3C7    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 0048D3CA    push        eax
 0048D3CB    mov         eax,dword ptr [ebp-0C]
 0048D3CE    mov         eax,dword ptr [eax+0C]
 0048D3D1    mov         edx,dword ptr [ebp-0C]
 0048D3D4    sub         eax,dword ptr [edx+4]
 0048D3D7    push        eax
 0048D3D8    mov         eax,dword ptr [ebp-0C]
 0048D3DB    mov         eax,dword ptr [eax+8]
 0048D3DE    mov         edx,dword ptr [ebp-0C]
 0048D3E1    sub         eax,dword ptr [edx]
 0048D3E3    push        eax
 0048D3E4    mov         eax,dword ptr [ebp-0C]
 0048D3E7    mov         eax,dword ptr [eax+4]
 0048D3EA    push        eax
 0048D3EB    mov         eax,dword ptr [ebp-0C]
 0048D3EE    mov         eax,dword ptr [eax]
 0048D3F0    push        eax
 0048D3F1    mov         eax,dword ptr [ebp-8]
 0048D3F4    mov         eax,dword ptr [eax+4]
 0048D3F7    push        eax
 0048D3F8    call        gdi32.StretchBlt
 0048D3FD    xor         eax,eax
 0048D3FF    pop         edx
 0048D400    pop         ecx
 0048D401    pop         ecx
 0048D402    mov         dword ptr fs:[eax],edx
 0048D405    push        48D42A
 0048D40A    cmp         byte ptr [ebp-11],0
>0048D40E    je          0048D422
 0048D410    push        0FF
 0048D412    mov         eax,dword ptr [ebp-10]
 0048D415    push        eax
 0048D416    mov         eax,dword ptr [ebp-8]
 0048D419    mov         eax,dword ptr [eax+4]
 0048D41C    push        eax
 0048D41D    call        gdi32.SelectPalette
 0048D422    ret
>0048D423    jmp         @HandleFinally
>0048D428    jmp         0048D40A
 0048D42A    pop         ebx
 0048D42B    mov         esp,ebp
 0048D42D    pop         ebp
 0048D42E    ret
end;*}

//0048D434
{*procedure sub_0048D434(?:?);
begin
 0048D434    push        ebp
 0048D435    mov         ebp,esp
 0048D437    add         esp,0FFFFFFF4
 0048D43A    mov         dword ptr [ebp-4],eax
 0048D43D    mov         eax,dword ptr [ebp-4]
 0048D440    mov         eax,dword ptr [eax+28]
 0048D443    mov         dword ptr [ebp-0C],eax
 0048D446    mov         eax,dword ptr [ebp-0C]
 0048D449    cmp         dword ptr [eax+4],1
>0048D44D    jle         0048D48A
 0048D44F    mov         eax,dword ptr [ebp-4]
 0048D452    call        0048D988
 0048D457    mov         eax,dword ptr [ebp-0C]
 0048D45A    cmp         byte ptr [eax+71],0
>0048D45E    je          0048D467
 0048D460    xor         eax,eax
 0048D462    mov         dword ptr [ebp-8],eax
>0048D465    jmp         0048D470
 0048D467    mov         eax,dword ptr [ebp-0C]
 0048D46A    mov         eax,dword ptr [eax+10]
 0048D46D    mov         dword ptr [ebp-8],eax
 0048D470    mov         eax,dword ptr [ebp-0C]
 0048D473    add         eax,18
 0048D476    push        eax
 0048D477    mov         ecx,dword ptr [ebp-8]
 0048D47A    mov         eax,dword ptr [ebp-0C]
 0048D47D    mov         edx,dword ptr [eax+8]
 0048D480    mov         eax,dword ptr [ebp-4]
 0048D483    call        0048CFD4
>0048D488    jmp         0048D4CF
 0048D48A    mov         eax,dword ptr [ebp-0C]
 0048D48D    cmp         dword ptr [eax+8],0
>0048D491    je          0048D4CF
 0048D493    mov         eax,dword ptr [ebp-0C]
 0048D496    mov         eax,dword ptr [eax+8]
 0048D499    mov         edx,dword ptr [ebp-0C]
 0048D49C    cmp         eax,dword ptr [edx+14]
>0048D49F    je          0048D4CF
 0048D4A1    mov         eax,dword ptr [ebp-0C]
 0048D4A4    cmp         dword ptr [eax+14],0
>0048D4A8    je          0048D4BF
 0048D4AA    mov         eax,dword ptr [ebp-0C]
 0048D4AD    mov         eax,dword ptr [eax+14]
 0048D4B0    push        eax
 0048D4B1    call        gdi32.DeleteObject
 0048D4B6    test        eax,eax
>0048D4B8    jne         0048D4BF
 0048D4BA    call        0048892C
 0048D4BF    mov         eax,dword ptr [ebp-0C]
 0048D4C2    xor         edx,edx
 0048D4C4    mov         dword ptr [eax+14],edx
 0048D4C7    mov         eax,dword ptr [ebp-0C]
 0048D4CA    xor         edx,edx
 0048D4CC    mov         dword ptr [eax+2C],edx
 0048D4CF    mov         esp,ebp
 0048D4D1    pop         ebp
 0048D4D2    ret
end;*}

//0048D4D4
{*function sub_0048D4D4:?;
begin
 0048D4D4    push        ebp
 0048D4D5    mov         ebp,esp
 0048D4D7    add         esp,0FFFFFFF4
 0048D4DA    mov         dword ptr [ebp-4],eax
 0048D4DD    mov         eax,dword ptr [ebp-4]
 0048D4E0    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D4E3    mov         dword ptr [ebp-0C],eax
 0048D4E6    mov         eax,dword ptr [ebp-0C]
 0048D4E9    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>0048D4ED    jne         0048D501
 0048D4EF    mov         eax,dword ptr [ebp-0C]
 0048D4F2    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>0048D4F6    jne         0048D501
 0048D4F8    mov         eax,dword ptr [ebp-0C]
 0048D4FB    cmp         dword ptr [eax+6C],0;TBitmapImage.FSaveStream:TMemoryStream
>0048D4FF    je          0048D505
 0048D501    xor         eax,eax
>0048D503    jmp         0048D507
 0048D505    mov         al,1
 0048D507    mov         byte ptr [ebp-5],al
 0048D50A    mov         al,byte ptr [ebp-5]
 0048D50D    mov         esp,ebp
 0048D50F    pop         ebp
 0048D510    ret
end;*}

//0048D514
function TBitmap.GetCanvas:TCanvas;
begin
{*
 0048D514    push        ebp
 0048D515    mov         ebp,esp
 0048D517    add         esp,0FFFFFFF8
 0048D51A    mov         dword ptr [ebp-4],eax
 0048D51D    mov         eax,dword ptr [ebp-4]
 0048D520    cmp         dword ptr [eax+2C],0
>0048D524    jne         0048D573
 0048D526    mov         eax,dword ptr [ebp-4]
 0048D529    call        0048D988
 0048D52E    mov         eax,dword ptr [ebp-4]
 0048D531    cmp         dword ptr [eax+2C],0
>0048D535    jne         0048D573
 0048D537    mov         ecx,dword ptr [ebp-4]
 0048D53A    mov         dl,1
 0048D53C    mov         eax,[0048BE4C];TBitmapCanvas
 0048D541    call        0048C030
 0048D546    mov         edx,dword ptr [ebp-4]
 0048D549    mov         dword ptr [edx+2C],eax
 0048D54C    mov         eax,dword ptr [ebp-4]
 0048D54F    mov         eax,dword ptr [eax+2C]
 0048D552    mov         edx,dword ptr [ebp-4]
 0048D555    mov         dword ptr [eax+2C],edx
 0048D558    mov         edx,dword ptr [edx]
 0048D55A    mov         edx,dword ptr [edx+10]
 0048D55D    mov         dword ptr [eax+28],edx
 0048D560    mov         eax,dword ptr [ebp-4]
 0048D563    mov         eax,dword ptr [eax+2C]
 0048D566    mov         edx,dword ptr [ebp-4]
 0048D569    mov         dword ptr [eax+34],edx
 0048D56C    mov         dword ptr [eax+30],48D0A8;sub_0048D0A8
 0048D573    mov         eax,dword ptr [ebp-4]
 0048D576    mov         eax,dword ptr [eax+2C]
 0048D579    mov         dword ptr [ebp-8],eax
 0048D57C    mov         eax,dword ptr [ebp-8]
 0048D57F    pop         ecx
 0048D580    pop         ecx
 0048D581    pop         ebp
 0048D582    ret
*}
end;

//0048D584
{*function sub_0048D584:?;
begin
 0048D584    push        ebp
 0048D585    mov         ebp,esp
 0048D587    add         esp,0FFFFFFF8
 0048D58A    mov         dword ptr [ebp-4],eax
 0048D58D    mov         eax,dword ptr [ebp-4]
 0048D590    call        0048D968
 0048D595    mov         eax,dword ptr [ebp-4]
 0048D598    call        0048D988
 0048D59D    mov         edx,dword ptr [ebp-4]
 0048D5A0    mov         eax,dword ptr [ebp-4]
 0048D5A3    call        0048D0A8
 0048D5A8    mov         eax,dword ptr [ebp-4]
 0048D5AB    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D5AE    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048D5B1    mov         dword ptr [ebp-8],eax
 0048D5B4    mov         eax,dword ptr [ebp-8]
 0048D5B7    pop         ecx
 0048D5B8    pop         ecx
 0048D5B9    pop         ebp
 0048D5BA    ret
end;*}

//0048D5BC
{*function sub_0048D5BC(?:TBitmap):?;
begin
 0048D5BC    push        ebp
 0048D5BD    mov         ebp,esp
 0048D5BF    add         esp,0FFFFFFF4
 0048D5C2    mov         dword ptr [ebp-4],eax
 0048D5C5    mov         eax,dword ptr [ebp-4]
 0048D5C8    mov         eax,dword ptr [eax+28]
 0048D5CB    mov         dword ptr [ebp-0C],eax
 0048D5CE    mov         eax,dword ptr [ebp-0C]
 0048D5D1    cmp         dword ptr [eax+8],0
>0048D5D5    je          0048D5E5
 0048D5D7    mov         eax,dword ptr [ebp-0C]
 0048D5DA    mov         eax,dword ptr [eax+8]
 0048D5DD    mov         edx,dword ptr [ebp-0C]
 0048D5E0    cmp         eax,dword ptr [edx+14]
>0048D5E3    jne         0048D609
 0048D5E5    mov         eax,dword ptr [ebp-0C]
 0048D5E8    cmp         dword ptr [eax+14],0
>0048D5EC    jne         0048D603
 0048D5EE    mov         eax,dword ptr [ebp-0C]
 0048D5F1    cmp         dword ptr [eax+30],0
>0048D5F5    jne         0048D5FD
 0048D5F7    mov         byte ptr [ebp-5],1
>0048D5FB    jmp         0048D60D
 0048D5FD    mov         byte ptr [ebp-5],0
>0048D601    jmp         0048D60D
 0048D603    mov         byte ptr [ebp-5],0
>0048D607    jmp         0048D60D
 0048D609    mov         byte ptr [ebp-5],1
 0048D60D    mov         al,byte ptr [ebp-5]
 0048D610    mov         esp,ebp
 0048D612    pop         ebp
 0048D613    ret
end;*}

//0048D614
{*function sub_0048D614:?;
begin
 0048D614    push        ebp
 0048D615    mov         ebp,esp
 0048D617    add         esp,0FFFFFFF8
 0048D61A    mov         dword ptr [ebp-4],eax
 0048D61D    mov         eax,dword ptr [ebp-4]
 0048D620    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D623    mov         eax,dword ptr [eax+20]
 0048D626    cdq
 0048D627    xor         eax,edx
 0048D629    sub         eax,edx
 0048D62B    mov         dword ptr [ebp-8],eax
 0048D62E    mov         eax,dword ptr [ebp-8]
 0048D631    pop         ecx
 0048D632    pop         ecx
 0048D633    pop         ebp
 0048D634    ret
end;*}

//0048D638
{*function sub_0048D638:?;
begin
 0048D638    push        ebp
 0048D639    mov         ebp,esp
 0048D63B    add         esp,0FFFFFFF8
 0048D63E    mov         dword ptr [ebp-4],eax
 0048D641    mov         eax,dword ptr [ebp-4]
 0048D644    call        0048DA4C
 0048D649    mov         eax,dword ptr [ebp-4]
 0048D64C    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D64F    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 0048D652    mov         dword ptr [ebp-8],eax
 0048D655    mov         eax,dword ptr [ebp-8]
 0048D658    pop         ecx
 0048D659    pop         ecx
 0048D65A    pop         ebp
 0048D65B    ret
end;*}

//0048D65C
{*function sub_0048D65C(?:TBitmap):?;
begin
 0048D65C    push        ebp
 0048D65D    mov         ebp,esp
 0048D65F    add         esp,0FFFFFFF4
 0048D662    mov         dword ptr [ebp-4],eax
 0048D665    mov         eax,dword ptr [ebp-4]
 0048D668    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D66B    add         eax,18;TBitmapImage.FDIB:TDIBSection
 0048D66E    mov         dword ptr [ebp-0C],eax
 0048D671    mov         eax,dword ptr [ebp-0C]
 0048D674    cmp         word ptr [eax+10],1
>0048D679    jne         0048D685
 0048D67B    mov         eax,dword ptr [ebp-0C]
 0048D67E    cmp         word ptr [eax+12],1
>0048D683    je          0048D689
 0048D685    xor         eax,eax
>0048D687    jmp         0048D68B
 0048D689    mov         al,1
 0048D68B    mov         byte ptr [ebp-5],al
 0048D68E    mov         al,byte ptr [ebp-5]
 0048D691    mov         esp,ebp
 0048D693    pop         ebp
 0048D694    ret
end;*}

//0048D698
{*function sub_0048D698:?;
begin
 0048D698    push        ebp
 0048D699    mov         ebp,esp
 0048D69B    add         esp,0FFFFFFF8
 0048D69E    mov         dword ptr [ebp-4],eax
 0048D6A1    mov         eax,dword ptr [ebp-4]
 0048D6A4    call        0048DAE4
 0048D6A9    mov         eax,dword ptr [ebp-4]
 0048D6AC    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D6AF    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048D6B2    mov         dword ptr [ebp-8],eax
 0048D6B5    mov         eax,dword ptr [ebp-8]
 0048D6B8    pop         ecx
 0048D6B9    pop         ecx
 0048D6BA    pop         ebp
 0048D6BB    ret
end;*}

//0048D6BC
{*function sub_0048D6BC(?:?):?;
begin
 0048D6BC    push        ebp
 0048D6BD    mov         ebp,esp
 0048D6BF    add         esp,0FFFFFFF0
 0048D6C2    mov         dword ptr [ebp-4],eax
 0048D6C5    mov         byte ptr [ebp-5],8
 0048D6C9    mov         eax,dword ptr [ebp-4]
 0048D6CC    call        0048D5BC
 0048D6D1    cmp         al,1
>0048D6D3    jne         0048D6DE
 0048D6D5    mov         byte ptr [ebp-5],0
>0048D6D9    jmp         0048D76B
 0048D6DE    mov         eax,dword ptr [ebp-4]
 0048D6E1    mov         eax,dword ptr [eax+28]
 0048D6E4    add         eax,18
 0048D6E7    mov         dword ptr [ebp-0C],eax
 0048D6EA    mov         eax,dword ptr [ebp-0C]
 0048D6ED    add         eax,18
 0048D6F0    mov         dword ptr [ebp-10],eax
 0048D6F3    mov         eax,dword ptr [ebp-10]
 0048D6F6    movzx       eax,word ptr [eax+0E]
 0048D6FA    cmp         eax,10
>0048D6FD    jg          0048D710
>0048D6FF    je          0048D72E
 0048D701    dec         eax
>0048D702    je          0048D71C
 0048D704    sub         eax,3
>0048D707    je          0048D722
 0048D709    sub         eax,4
>0048D70C    je          0048D728
>0048D70E    jmp         0048D76B
 0048D710    sub         eax,18
>0048D713    je          0048D758
 0048D715    sub         eax,8
>0048D718    je          0048D75E
>0048D71A    jmp         0048D76B
 0048D71C    mov         byte ptr [ebp-5],1
>0048D720    jmp         0048D76B
 0048D722    mov         byte ptr [ebp-5],2
>0048D726    jmp         0048D76B
 0048D728    mov         byte ptr [ebp-5],3
>0048D72C    jmp         0048D76B
 0048D72E    mov         eax,dword ptr [ebp-10]
 0048D731    mov         eax,dword ptr [eax+10]
 0048D734    sub         eax,1
>0048D737    jb          0048D740
 0048D739    sub         eax,2
>0048D73C    je          0048D746
>0048D73E    jmp         0048D76B
 0048D740    mov         byte ptr [ebp-5],4
>0048D744    jmp         0048D76B
 0048D746    mov         eax,dword ptr [ebp-0C]
 0048D749    cmp         dword ptr [eax+44],7E0
>0048D750    jne         0048D76B
 0048D752    mov         byte ptr [ebp-5],5
>0048D756    jmp         0048D76B
 0048D758    mov         byte ptr [ebp-5],6
>0048D75C    jmp         0048D76B
 0048D75E    mov         eax,dword ptr [ebp-10]
 0048D761    cmp         dword ptr [eax+10],0
>0048D765    jne         0048D76B
 0048D767    mov         byte ptr [ebp-5],7
 0048D76B    mov         al,byte ptr [ebp-5]
 0048D76E    mov         esp,ebp
 0048D770    pop         ebp
 0048D771    ret
end;*}

//0048D774
{*function sub_0048D774(?:TBitmap; ?:?):?;
begin
 0048D774    push        ebp
 0048D775    mov         ebp,esp
 0048D777    add         esp,0FFFFFFE8
 0048D77A    mov         dword ptr [ebp-8],edx
 0048D77D    mov         dword ptr [ebp-4],eax
 0048D780    mov         edx,dword ptr [ebp-4]
 0048D783    mov         eax,dword ptr [ebp-4]
 0048D786    call        0048D0A8
 0048D78B    mov         eax,dword ptr [ebp-4]
 0048D78E    mov         eax,dword ptr [eax+28]
 0048D791    add         eax,18
 0048D794    mov         dword ptr [ebp-10],eax
 0048D797    mov         eax,dword ptr [ebp-10]
 0048D79A    mov         dword ptr [ebp-14],eax
 0048D79D    mov         eax,dword ptr [ebp-10]
 0048D7A0    add         eax,18
 0048D7A3    mov         dword ptr [ebp-18],eax
 0048D7A6    cmp         dword ptr [ebp-8],0
>0048D7AA    jl          0048D7B7
 0048D7AC    mov         eax,dword ptr [ebp-14]
 0048D7AF    mov         eax,dword ptr [eax+8]
 0048D7B2    cmp         eax,dword ptr [ebp-8]
>0048D7B5    jg          0048D7C1
 0048D7B7    mov         eax,[0055B58C];^SScanLine:TResStringRec
 0048D7BC    call        00488874
 0048D7C1    mov         eax,dword ptr [ebp-4]
 0048D7C4    call        0048D894
 0048D7C9    call        gdi32.GdiFlush
 0048D7CE    mov         eax,dword ptr [ebp-18]
 0048D7D1    cmp         dword ptr [eax+8],0
>0048D7D5    jle         0048D7E4
 0048D7D7    mov         eax,dword ptr [ebp-18]
 0048D7DA    mov         eax,dword ptr [eax+8]
 0048D7DD    sub         eax,dword ptr [ebp-8]
 0048D7E0    dec         eax
 0048D7E1    mov         dword ptr [ebp-8],eax
 0048D7E4    mov         eax,dword ptr [ebp-18]
 0048D7E7    movzx       edx,word ptr [eax+0E]
 0048D7EB    mov         ecx,20
 0048D7F0    mov         eax,dword ptr [ebp-18]
 0048D7F3    mov         eax,dword ptr [eax+4]
 0048D7F6    call        00488BA4
 0048D7FB    imul        dword ptr [ebp-8]
 0048D7FE    mov         edx,dword ptr [ebp-14]
 0048D801    add         eax,dword ptr [edx+14]
 0048D804    mov         dword ptr [ebp-0C],eax
 0048D807    mov         eax,dword ptr [ebp-0C]
 0048D80A    mov         esp,ebp
 0048D80C    pop         ebp
 0048D80D    ret
end;*}

//0048D810
{*function sub_0048D810(?:TBitmap):?;
begin
 0048D810    push        ebp
 0048D811    mov         ebp,esp
 0048D813    add         esp,0FFFFFFF8
 0048D816    mov         dword ptr [ebp-4],eax
 0048D819    mov         eax,dword ptr [ebp-4]
 0048D81C    cmp         dword ptr [eax+34],20000000
>0048D823    jne         0048D859
 0048D825    mov         eax,dword ptr [ebp-4]
 0048D828    call        0048D65C
 0048D82D    test        al,al
>0048D82F    je          0048D83A
 0048D831    mov         dword ptr [ebp-8],0FFFFFF
>0048D838    jmp         0048D867
 0048D83A    mov         eax,dword ptr [ebp-4]
 0048D83D    mov         edx,dword ptr [eax]
 0048D83F    call        dword ptr [edx+20]
 0048D842    dec         eax
 0048D843    push        eax
 0048D844    mov         eax,dword ptr [ebp-4]
 0048D847    call        TBitmap.GetCanvas
 0048D84C    xor         edx,edx
 0048D84E    pop         ecx
 0048D84F    call        004883DC
 0048D854    mov         dword ptr [ebp-8],eax
>0048D857    jmp         0048D867
 0048D859    mov         eax,dword ptr [ebp-4]
 0048D85C    mov         eax,dword ptr [eax+34]
 0048D85F    call        00486830
 0048D864    mov         dword ptr [ebp-8],eax
 0048D867    or          dword ptr [ebp-8],2000000
 0048D86E    mov         eax,dword ptr [ebp-8]
 0048D871    pop         ecx
 0048D872    pop         ecx
 0048D873    pop         ebp
 0048D874    ret
end;*}

//0048D878
{*function sub_0048D878:?;
begin
 0048D878    push        ebp
 0048D879    mov         ebp,esp
 0048D87B    add         esp,0FFFFFFF8
 0048D87E    mov         dword ptr [ebp-4],eax
 0048D881    mov         eax,dword ptr [ebp-4]
 0048D884    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D887    mov         eax,dword ptr [eax+1C]
 0048D88A    mov         dword ptr [ebp-8],eax
 0048D88D    mov         eax,dword ptr [ebp-8]
 0048D890    pop         ecx
 0048D891    pop         ecx
 0048D892    pop         ebp
 0048D893    ret
end;*}

//0048D894
procedure sub_0048D894(?:TBitmap);
begin
{*
 0048D894    push        ebp
 0048D895    mov         ebp,esp
 0048D897    add         esp,0FFFFFFEC
 0048D89A    mov         dword ptr [ebp-4],eax
 0048D89D    mov         eax,dword ptr [ebp-4]
 0048D8A0    mov         eax,dword ptr [eax+28]
 0048D8A3    mov         dword ptr [ebp-8],eax
 0048D8A6    mov         eax,dword ptr [ebp-8]
 0048D8A9    cmp         dword ptr [eax+8],0
>0048D8AD    je          0048D963
 0048D8B3    mov         eax,dword ptr [ebp-8]
 0048D8B6    cmp         dword ptr [eax+14],0
>0048D8BA    jne         0048D963
 0048D8C0    mov         eax,dword ptr [ebp-4]
 0048D8C3    call        0048DAE4
 0048D8C8    mov         eax,dword ptr [ebp-8]
 0048D8CB    cmp         dword ptr [eax+30],0
>0048D8CF    jne         0048D93D
 0048D8D1    mov         eax,dword ptr [ebp-8]
 0048D8D4    add         eax,18
 0048D8D7    push        eax
 0048D8D8    push        54
 0048D8DA    mov         eax,dword ptr [ebp-8]
 0048D8DD    mov         eax,dword ptr [eax+8]
 0048D8E0    push        eax
 0048D8E1    call        gdi32.GetObjectA
 0048D8E6    mov         eax,dword ptr [ebp-8]
 0048D8E9    add         eax,18
 0048D8EC    mov         dword ptr [ebp-0C],eax
 0048D8EF    mov         eax,dword ptr [ebp-0C]
 0048D8F2    mov         dword ptr [ebp-10],eax
 0048D8F5    mov         eax,dword ptr [ebp-0C]
 0048D8F8    add         eax,18
 0048D8FB    mov         dword ptr [ebp-14],eax
 0048D8FE    mov         eax,dword ptr [ebp-14]
 0048D901    mov         dword ptr [eax],28
 0048D907    mov         eax,dword ptr [ebp-10]
 0048D90A    mov         eax,dword ptr [eax+4]
 0048D90D    mov         edx,dword ptr [ebp-14]
 0048D910    mov         dword ptr [edx+4],eax
 0048D913    mov         eax,dword ptr [ebp-10]
 0048D916    mov         eax,dword ptr [eax+8]
 0048D919    mov         edx,dword ptr [ebp-14]
 0048D91C    mov         dword ptr [edx+8],eax
 0048D91F    mov         eax,dword ptr [ebp-14]
 0048D922    mov         word ptr [eax+0C],1
 0048D928    mov         eax,dword ptr [ebp-10]
 0048D92B    mov         ax,word ptr [eax+10]
 0048D92F    mov         edx,dword ptr [ebp-10]
 0048D932    imul        word ptr [edx+12]
 0048D936    mov         edx,dword ptr [ebp-14]
 0048D939    mov         word ptr [edx+0E],ax
 0048D93D    mov         eax,dword ptr [ebp-8]
 0048D940    add         eax,18
 0048D943    push        eax
 0048D944    push        0
 0048D946    mov         eax,dword ptr [ebp-8]
 0048D949    mov         ecx,dword ptr [eax+10]
 0048D94C    mov         eax,dword ptr [ebp-8]
 0048D94F    mov         edx,dword ptr [eax+10]
 0048D952    mov         eax,dword ptr [ebp-8]
 0048D955    mov         eax,dword ptr [eax+8]
 0048D958    call        0048C4F4
 0048D95D    mov         edx,dword ptr [ebp-8]
 0048D960    mov         dword ptr [edx+14],eax
 0048D963    mov         esp,ebp
 0048D965    pop         ebp
 0048D966    ret
*}
end;

//0048D968
procedure sub_0048D968(?:TBitmap);
begin
{*
 0048D968    push        ebp
 0048D969    mov         ebp,esp
 0048D96B    push        ecx
 0048D96C    mov         dword ptr [ebp-4],eax
 0048D96F    mov         eax,dword ptr [ebp-4]
 0048D972    cmp         dword ptr [eax+2C],0;TBitmap.FCanvas:TCanvas
>0048D976    je          0048D983
 0048D978    mov         eax,dword ptr [ebp-4]
 0048D97B    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 0048D97E    call        TBitmapCanvas.FreeContext
 0048D983    pop         ecx
 0048D984    pop         ebp
 0048D985    ret
*}
end;

//0048D988
procedure sub_0048D988(?:TBitmap);
begin
{*
 0048D988    push        ebp
 0048D989    mov         ebp,esp
 0048D98B    add         esp,0FFFFFFEC
 0048D98E    mov         dword ptr [ebp-4],eax
 0048D991    mov         eax,dword ptr [ebp-4]
 0048D994    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D997    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>0048D99B    jne         0048DA28
 0048D9A1    mov         eax,dword ptr [ebp-4]
 0048D9A4    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D9A7    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>0048D9AB    jne         0048DA28
 0048D9AD    mov         eax,dword ptr [ebp-4]
 0048D9B0    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D9B3    cmp         dword ptr [eax+6C],0;TBitmapImage.FSaveStream:TMemoryStream
>0048D9B7    je          0048DA28
 0048D9B9    push        0
 0048D9BB    push        0
 0048D9BD    mov         eax,dword ptr [ebp-4]
 0048D9C0    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D9C3    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 0048D9C6    call        0047BCF4
 0048D9CB    mov         eax,dword ptr [ebp-4]
 0048D9CE    mov         edx,dword ptr [eax+10];TBitmap.FOnChange:TNotifyEvent
 0048D9D1    mov         dword ptr [ebp-10],edx
 0048D9D4    mov         edx,dword ptr [eax+14];TBitmap.?f14:TCustomForm
 0048D9D7    mov         dword ptr [ebp-0C],edx
 0048D9DA    xor         eax,eax
 0048D9DC    push        ebp
 0048D9DD    push        48DA21
 0048D9E2    push        dword ptr fs:[eax]
 0048D9E5    mov         dword ptr fs:[eax],esp
 0048D9E8    mov         eax,dword ptr [ebp-4]
 0048D9EB    xor         edx,edx
 0048D9ED    mov         dword ptr [eax+10],edx;TBitmap.FOnChange:TNotifyEvent
 0048D9F0    mov         dword ptr [eax+14],edx;TBitmap.?f14:TCustomForm
 0048D9F3    mov         eax,dword ptr [ebp-4]
 0048D9F6    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048D9F9    mov         edx,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 0048D9FC    mov         eax,dword ptr [ebp-4]
 0048D9FF    mov         ecx,dword ptr [eax]
 0048DA01    call        dword ptr [ecx+54];TBitmap.sub_0048DC8C
 0048DA04    xor         eax,eax
 0048DA06    pop         edx
 0048DA07    pop         ecx
 0048DA08    pop         ecx
 0048DA09    mov         dword ptr fs:[eax],edx
 0048DA0C    push        48DA28
 0048DA11    mov         eax,dword ptr [ebp-4]
 0048DA14    mov         edx,dword ptr [ebp-10]
 0048DA17    mov         dword ptr [eax+10],edx;TBitmap.FOnChange:TNotifyEvent
 0048DA1A    mov         edx,dword ptr [ebp-0C]
 0048DA1D    mov         dword ptr [eax+14],edx;TBitmap.?f14:TCustomForm
 0048DA20    ret
>0048DA21    jmp         @HandleFinally
>0048DA26    jmp         0048DA11
 0048DA28    mov         eax,dword ptr [ebp-4]
 0048DA2B    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048DA2E    mov         dword ptr [ebp-14],eax
 0048DA31    mov         eax,dword ptr [ebp-14]
 0048DA34    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>0048DA38    jne         0048DA46
 0048DA3A    mov         eax,dword ptr [ebp-14]
 0048DA3D    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048DA40    mov         edx,dword ptr [ebp-14]
 0048DA43    mov         dword ptr [edx+8],eax;TBitmapImage.FHandle:HBITMAP
 0048DA46    mov         esp,ebp
 0048DA48    pop         ebp
 0048DA49    ret
*}
end;

//0048DA4C
procedure sub_0048DA4C(?:TBitmap);
begin
{*
 0048DA4C    push        ebp
 0048DA4D    mov         ebp,esp
 0048DA4F    add         esp,0FFFFFFF4
 0048DA52    mov         dword ptr [ebp-4],eax
 0048DA55    mov         eax,dword ptr [ebp-4]
 0048DA58    cmp         byte ptr [eax+32],0;TBitmap.FMaskValid:Boolean
>0048DA5C    je          0048DA67
 0048DA5E    mov         eax,dword ptr [ebp-4]
 0048DA61    cmp         byte ptr [eax+31],0;TBitmap.FMaskBitsValid:Boolean
>0048DA65    jne         0048DAE0
 0048DA67    mov         eax,dword ptr [ebp-4]
 0048DA6A    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048DA6D    mov         dword ptr [ebp-8],eax
 0048DA70    mov         eax,dword ptr [ebp-8]
 0048DA73    cmp         dword ptr [eax+0C],0;TBitmapImage.FMaskHandle:HBITMAP
>0048DA77    je          0048DA98
 0048DA79    mov         eax,dword ptr [ebp-8]
 0048DA7C    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 0048DA7F    call        0048BF94
 0048DA84    mov         eax,dword ptr [ebp-8]
 0048DA87    mov         eax,dword ptr [eax+0C];TBitmapImage.FMaskHandle:HBITMAP
 0048DA8A    push        eax
 0048DA8B    call        gdi32.DeleteObject
 0048DA90    mov         eax,dword ptr [ebp-8]
 0048DA93    xor         edx,edx
 0048DA95    mov         dword ptr [eax+0C],edx;TBitmapImage.FMaskHandle:HBITMAP
 0048DA98    mov         eax,dword ptr [ebp-4]
 0048DA9B    call        0048D968
 0048DAA0    mov         eax,dword ptr [ebp-4]
 0048DAA3    call        0048D988
 0048DAA8    mov         eax,dword ptr [ebp-4]
 0048DAAB    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048DAAE    mov         dword ptr [ebp-0C],eax
 0048DAB1    mov         eax,dword ptr [ebp-4]
 0048DAB4    call        0048D810
 0048DAB9    mov         ecx,eax
 0048DABB    mov         eax,dword ptr [ebp-0C]
 0048DABE    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048DAC1    mov         eax,dword ptr [ebp-0C]
 0048DAC4    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048DAC7    call        0048CBDC
 0048DACC    mov         edx,dword ptr [ebp-0C]
 0048DACF    mov         dword ptr [edx+0C],eax;TBitmapImage.FMaskHandle:HBITMAP
 0048DAD2    mov         eax,dword ptr [ebp-4]
 0048DAD5    mov         byte ptr [eax+32],1;TBitmap.FMaskValid:Boolean
 0048DAD9    mov         eax,dword ptr [ebp-4]
 0048DADC    mov         byte ptr [eax+31],1;TBitmap.FMaskBitsValid:Boolean
 0048DAE0    mov         esp,ebp
 0048DAE2    pop         ebp
 0048DAE3    ret
*}
end;

//0048DAE4
procedure sub_0048DAE4(?:TBitmap);
begin
{*
 0048DAE4    push        ebp
 0048DAE5    mov         ebp,esp
 0048DAE7    add         esp,0FFFFFFF4
 0048DAEA    push        ebx
 0048DAEB    mov         dword ptr [ebp-4],eax
 0048DAEE    mov         eax,dword ptr [ebp-4]
 0048DAF1    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048DAF4    mov         dword ptr [ebp-0C],eax
 0048DAF7    mov         eax,dword ptr [ebp-4]
 0048DAFA    cmp         byte ptr [eax+30],0;TBitmap.FIgnorePalette:Boolean
>0048DAFE    jne         0048DBED
 0048DB04    mov         eax,dword ptr [ebp-0C]
 0048DB07    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>0048DB0B    jne         0048DBED
 0048DB11    mov         eax,dword ptr [ebp-0C]
 0048DB14    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>0048DB18    je          0048DBED
 0048DB1E    mov         eax,dword ptr [ebp-0C]
 0048DB21    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048DB24    mov         edx,dword ptr [ebp-0C]
 0048DB27    cmp         eax,dword ptr [edx+14];TBitmapImage.FDIBHandle:HBITMAP
>0048DB2A    jne         0048DB37
 0048DB2C    mov         eax,dword ptr [ebp-0C]
 0048DB2F    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048DB32    call        0048BF94
 0048DB37    mov         eax,dword ptr [ebp-0C]
 0048DB3A    mov         cx,word ptr [eax+3E]
 0048DB3E    mov         eax,1
 0048DB43    shl         eax,cl
 0048DB45    mov         ecx,eax
 0048DB47    xor         edx,edx
 0048DB49    mov         eax,dword ptr [ebp-0C]
 0048DB4C    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048DB4F    call        004891FC
 0048DB54    mov         edx,dword ptr [ebp-0C]
 0048DB57    mov         dword ptr [edx+10],eax;TBitmapImage.FPalette:HPALETTE
 0048DB5A    mov         eax,dword ptr [ebp-0C]
 0048DB5D    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>0048DB61    jne         0048DBED
 0048DB67    push        0
 0048DB69    call        user32.GetDC
 0048DB6E    call        004889D8
 0048DB73    mov         dword ptr [ebp-8],eax
 0048DB76    mov         eax,dword ptr [ebp-0C]
 0048DB79    cmp         byte ptr [eax+71],0;TBitmapImage.FHalftone:Boolean
>0048DB7D    jne         0048DBB2
 0048DB7F    push        0C
 0048DB81    mov         eax,dword ptr [ebp-8]
 0048DB84    push        eax
 0048DB85    call        gdi32.GetDeviceCaps
 0048DB8A    mov         ebx,eax
 0048DB8C    push        0E
 0048DB8E    mov         eax,dword ptr [ebp-8]
 0048DB91    push        eax
 0048DB92    call        gdi32.GetDeviceCaps
 0048DB97    imul        ebx,eax
 0048DB9A    mov         eax,dword ptr [ebp-0C]
 0048DB9D    movzx       eax,word ptr [eax+2A]
 0048DBA1    mov         edx,dword ptr [ebp-0C]
 0048DBA4    movzx       edx,word ptr [edx+28]
 0048DBA8    imul        edx
 0048DBAA    cmp         ebx,eax
>0048DBAC    jl          0048DBB2
 0048DBAE    xor         eax,eax
>0048DBB0    jmp         0048DBB4
 0048DBB2    mov         al,1
 0048DBB4    mov         edx,dword ptr [ebp-0C]
 0048DBB7    mov         byte ptr [edx+71],al;TBitmapImage.FHalftone:Boolean
 0048DBBA    mov         eax,dword ptr [ebp-0C]
 0048DBBD    cmp         byte ptr [eax+71],0;TBitmapImage.FHalftone:Boolean
>0048DBC1    je          0048DBD2
 0048DBC3    mov         eax,dword ptr [ebp-8]
 0048DBC6    push        eax
 0048DBC7    call        gdi32.CreateHalftonePalette
 0048DBCC    mov         edx,dword ptr [ebp-0C]
 0048DBCF    mov         dword ptr [edx+10],eax;TBitmapImage.FPalette:HPALETTE
 0048DBD2    mov         eax,dword ptr [ebp-8]
 0048DBD5    push        eax
 0048DBD6    push        0
 0048DBD8    call        user32.ReleaseDC
 0048DBDD    mov         eax,dword ptr [ebp-0C]
 0048DBE0    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>0048DBE4    jne         0048DBED
 0048DBE6    mov         eax,dword ptr [ebp-4]
 0048DBE9    mov         byte ptr [eax+30],1;TBitmap.FIgnorePalette:Boolean
 0048DBED    pop         ebx
 0048DBEE    mov         esp,ebp
 0048DBF0    pop         ebp
 0048DBF1    ret
*}
end;

//0048DBF4
{*procedure sub_0048DBF4(?:?; ?:?; ?:?);
begin
 0048DBF4    push        ebp
 0048DBF5    mov         ebp,esp
 0048DBF7    add         esp,0FFFFFFA0
 0048DBFA    mov         dword ptr [ebp-0C],ecx
 0048DBFD    mov         word ptr [ebp-6],dx
 0048DC01    mov         dword ptr [ebp-4],eax
 0048DC04    cmp         word ptr [ebp-6],2
>0048DC09    jne         0048DC11
 0048DC0B    cmp         dword ptr [ebp-0C],0
>0048DC0F    jne         0048DC1B
 0048DC11    mov         eax,[0055B4DC];^SUnknownClipboardFormat:TResStringRec
 0048DC16    call        InvalidGraphic
 0048DC1B    mov         eax,dword ptr [ebp-4]
 0048DC1E    call        0048D968
 0048DC23    lea         eax,[ebp-60]
 0048DC26    xor         ecx,ecx
 0048DC28    mov         edx,54
 0048DC2D    call        @FillChar
 0048DC32    lea         eax,[ebp-60]
 0048DC35    push        eax
 0048DC36    push        54
 0048DC38    mov         eax,dword ptr [ebp-0C]
 0048DC3B    push        eax
 0048DC3C    call        gdi32.GetObjectA
 0048DC41    cmp         dword ptr [ebp-4C],0
>0048DC45    jne         0048DC4C
 0048DC47    xor         eax,eax
 0048DC49    mov         dword ptr [ebp-48],eax
 0048DC4C    lea         eax,[ebp-60]
 0048DC4F    push        eax
 0048DC50    mov         ecx,dword ptr [ebp+8]
 0048DC53    mov         edx,dword ptr [ebp-0C]
 0048DC56    mov         eax,dword ptr [ebp-4]
 0048DC59    call        0048CFD4
 0048DC5E    mov         eax,dword ptr [ebp-4]
 0048DC61    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048DC64    mov         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
 0048DC68    mov         eax,dword ptr [ebp-4]
 0048DC6B    mov         edx,dword ptr [eax]
 0048DC6D    call        dword ptr [edx+24];TBitmap.sub_0048D698
 0048DC70    test        eax,eax
 0048DC72    setne       al
 0048DC75    mov         edx,dword ptr [ebp-4]
 0048DC78    mov         byte ptr [edx+22],al;TBitmap.FPaletteModified:Boolean
 0048DC7B    mov         edx,dword ptr [ebp-4]
 0048DC7E    mov         eax,dword ptr [ebp-4]
 0048DC81    mov         ecx,dword ptr [eax]
 0048DC83    call        dword ptr [ecx+10];TBitmap.sub_0048D0E4
 0048DC86    mov         esp,ebp
 0048DC88    pop         ebp
 0048DC89    ret         4
end;*}

//0048DC8C
{*procedure sub_0048DC8C(?:?);
begin
 0048DC8C    push        ebp
 0048DC8D    mov         ebp,esp
 0048DC8F    add         esp,0FFFFFFF8
 0048DC92    mov         dword ptr [ebp-8],edx
 0048DC95    mov         dword ptr [ebp-4],eax
 0048DC98    mov         eax,dword ptr [ebp-8]
 0048DC9B    mov         edx,dword ptr [eax]
 0048DC9D    call        dword ptr [edx]
 0048DC9F    push        eax
 0048DCA0    mov         eax,dword ptr [ebp-8]
 0048DCA3    call        0047BCCC
 0048DCA8    pop         ecx
 0048DCA9    sub         ecx,eax
 0048DCAB    mov         edx,dword ptr [ebp-8]
 0048DCAE    mov         eax,dword ptr [ebp-4]
 0048DCB1    call        0048E3C4
 0048DCB6    pop         ecx
 0048DCB7    pop         ecx
 0048DCB8    pop         ebp
 0048DCB9    ret
end;*}

//0048DCBC
{*procedure sub_0048DCBC(?:TBitmap; ?:HBITMAP; ?:HPALETTE; ?:?; ?:?; ?:?);
begin
 0048DCBC    push        ebp
 0048DCBD    mov         ebp,esp
 0048DCBF    add         esp,0FFFFFFF0
 0048DCC2    push        ebx
 0048DCC3    push        esi
 0048DCC4    push        edi
 0048DCC5    mov         dword ptr [ebp-0C],ecx
 0048DCC8    mov         dword ptr [ebp-8],edx
 0048DCCB    mov         dword ptr [ebp-4],eax
 0048DCCE    mov         dl,1
 0048DCD0    mov         eax,[00485C0C];TBitmapImage
 0048DCD5    call        TObject.Create;TBitmapImage.Create
 0048DCDA    mov         dword ptr [ebp-10],eax
 0048DCDD    xor         eax,eax
 0048DCDF    push        ebp
 0048DCE0    push        48DD4B
 0048DCE5    push        dword ptr fs:[eax]
 0048DCE8    mov         dword ptr fs:[eax],esp
 0048DCEB    mov         eax,dword ptr [ebp-10]
 0048DCEE    mov         edx,dword ptr [ebp-8]
 0048DCF1    mov         dword ptr [eax+8],edx;TBitmapImage.FHandle:HBITMAP
 0048DCF4    mov         eax,dword ptr [ebp-10]
 0048DCF7    mov         edx,dword ptr [ebp-0C]
 0048DCFA    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
 0048DCFD    mov         eax,dword ptr [ebp+10]
 0048DD00    mov         edx,dword ptr [ebp-10]
 0048DD03    mov         esi,eax
 0048DD05    lea         edi,[edx+18];TBitmapImage.FDIB:TDIBSection
 0048DD08    mov         ecx,15
 0048DD0D    rep movs    dword ptr [edi],dword ptr [esi]
 0048DD0F    mov         eax,dword ptr [ebp-10]
 0048DD12    mov         dl,byte ptr [ebp+0C]
 0048DD15    mov         byte ptr [eax+70],dl;TBitmapImage.FOS2Format:Boolean
 0048DD18    mov         eax,dword ptr [ebp-10]
 0048DD1B    cmp         dword ptr [eax+2C],0
>0048DD1F    je          0048DD2D
 0048DD21    mov         eax,dword ptr [ebp-10]
 0048DD24    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048DD27    mov         edx,dword ptr [ebp-10]
 0048DD2A    mov         dword ptr [edx+14],eax;TBitmapImage.FDIBHandle:HBITMAP
 0048DD2D    mov         eax,dword ptr [ebp+8]
 0048DD30    mov         edx,dword ptr ds:[476368];TMemoryStream
 0048DD36    call        @AsClass
 0048DD3B    mov         edx,dword ptr [ebp-10]
 0048DD3E    mov         dword ptr [edx+6C],eax;TBitmapImage.FSaveStream:TMemoryStream
 0048DD41    xor         eax,eax
 0048DD43    pop         edx
 0048DD44    pop         ecx
 0048DD45    pop         ecx
 0048DD46    mov         dword ptr fs:[eax],edx
>0048DD49    jmp         0048DD62
>0048DD4B    jmp         @HandleAnyException
 0048DD50    mov         eax,dword ptr [ebp-10]
 0048DD53    call        TObject.Free
 0048DD58    call        @RaiseAgain
 0048DD5D    call        @DoneExcept
 0048DD62    push        55DB2C;gvar_0055DB2C
 0048DD67    call        kernel32.EnterCriticalSection
 0048DD6C    xor         eax,eax
 0048DD6E    push        ebp
 0048DD6F    push        48DDB1
 0048DD74    push        dword ptr fs:[eax]
 0048DD77    mov         dword ptr fs:[eax],esp
 0048DD7A    mov         eax,dword ptr [ebp-4]
 0048DD7D    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048DD80    call        0048C288
 0048DD85    mov         eax,dword ptr [ebp-4]
 0048DD88    mov         edx,dword ptr [ebp-10]
 0048DD8B    mov         dword ptr [eax+28],edx;TBitmap.FImage:TBitmapImage
 0048DD8E    mov         eax,dword ptr [ebp-4]
 0048DD91    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048DD94    call        0048C278
 0048DD99    xor         eax,eax
 0048DD9B    pop         edx
 0048DD9C    pop         ecx
 0048DD9D    pop         ecx
 0048DD9E    mov         dword ptr fs:[eax],edx
 0048DDA1    push        48DDB8
 0048DDA6    push        55DB2C;gvar_0055DB2C
 0048DDAB    call        kernel32.LeaveCriticalSection
 0048DDB0    ret
>0048DDB1    jmp         @HandleFinally
>0048DDB6    jmp         0048DDA6
 0048DDB8    mov         eax,dword ptr [ebp-4]
 0048DDBB    mov         byte ptr [eax+32],0;TBitmap.FMaskValid:Boolean
 0048DDBF    pop         edi
 0048DDC0    pop         esi
 0048DDC1    pop         ebx
 0048DDC2    mov         esp,ebp
 0048DDC4    pop         ebp
 0048DDC5    ret         0C
end;*}

//0048DDC8
{*procedure sub_0048DDC8(?:?);
begin
 0048DDC8    push        ebp
 0048DDC9    mov         ebp,esp
 0048DDCB    add         esp,0FFFFFFF4
 0048DDCE    push        ebx
 0048DDCF    mov         dword ptr [ebp-8],edx
 0048DDD2    mov         dword ptr [ebp-4],eax
 0048DDD5    lea         edx,[ebp-0C]
 0048DDD8    mov         ecx,4
 0048DDDD    mov         eax,dword ptr [ebp-8]
 0048DDE0    mov         ebx,dword ptr [eax]
 0048DDE2    call        dword ptr [ebx+0C]
 0048DDE5    mov         ecx,dword ptr [ebp-0C]
 0048DDE8    mov         edx,dword ptr [ebp-8]
 0048DDEB    mov         eax,dword ptr [ebp-4]
 0048DDEE    call        0048E3C4
 0048DDF3    pop         ebx
 0048DDF4    mov         esp,ebp
 0048DDF6    pop         ebp
 0048DDF7    ret
end;*}

//0048DDF8
{*procedure sub_0048DDF8(?:TBitmap; ?:?; ?:?; ?:?);
begin
 0048DDF8    push        ebp
 0048DDF9    mov         ebp,esp
 0048DDFB    add         esp,0FFFFFF48
 0048DE01    push        ebx
 0048DE02    push        esi
 0048DE03    push        edi
 0048DE04    mov         dword ptr [ebp-0C],ecx
 0048DE07    mov         dword ptr [ebp-8],edx
 0048DE0A    mov         dword ptr [ebp-4],eax
 0048DE0D    xor         eax,eax
 0048DE0F    mov         dword ptr [ebp-34],eax
 0048DE12    xor         eax,eax
 0048DE14    mov         dword ptr [ebp-2C],eax
 0048DE17    xor         eax,eax
 0048DE19    mov         dword ptr [ebp-3C],eax
 0048DE1C    lea         edx,[ebp-24]
 0048DE1F    mov         ecx,4
 0048DE24    mov         eax,dword ptr [ebp-8]
 0048DE27    mov         ebx,dword ptr [eax]
 0048DE29    call        dword ptr [ebx+0C]
 0048DE2C    cmp         dword ptr [ebp-24],0C
 0048DE30    sete        byte ptr [ebp-25]
 0048DE34    cmp         byte ptr [ebp-25],0
>0048DE38    je          0048DE41
 0048DE3A    mov         dword ptr [ebp-24],28
 0048DE41    mov         eax,dword ptr [ebp-24]
 0048DE44    add         eax,0C
 0048DE47    add         eax,400
 0048DE4C    call        @GetMem
 0048DE51    mov         dword ptr [ebp-1C],eax
 0048DE54    mov         eax,dword ptr [ebp-1C]
 0048DE57    mov         dword ptr [ebp-40],eax
 0048DE5A    xor         eax,eax
 0048DE5C    push        ebp
 0048DE5D    push        48E379
 0048DE62    push        dword ptr fs:[eax]
 0048DE65    mov         dword ptr fs:[eax],esp
 0048DE68    xor         eax,eax
 0048DE6A    push        ebp
 0048DE6B    push        48E34C
 0048DE70    push        dword ptr fs:[eax]
 0048DE73    mov         dword ptr fs:[eax],esp
 0048DE76    cmp         byte ptr [ebp-25],0
>0048DE7A    je          0048DED7
 0048DE7C    lea         edx,[ebp-54]
 0048DE7F    add         edx,4
 0048DE82    mov         ecx,8
 0048DE87    mov         eax,dword ptr [ebp-8]
 0048DE8A    mov         ebx,dword ptr [eax]
 0048DE8C    call        dword ptr [ebx+0C]
 0048DE8F    mov         eax,dword ptr [ebp-40]
 0048DE92    xor         ecx,ecx
 0048DE94    mov         edx,28
 0048DE99    call        @FillChar
 0048DE9E    mov         eax,dword ptr [ebp-40]
 0048DEA1    mov         dword ptr [ebp-44],eax
 0048DEA4    movzx       eax,word ptr [ebp-50]
 0048DEA8    mov         edx,dword ptr [ebp-44]
 0048DEAB    mov         dword ptr [edx+4],eax
 0048DEAE    movzx       eax,word ptr [ebp-4E]
 0048DEB2    mov         edx,dword ptr [ebp-44]
 0048DEB5    mov         dword ptr [edx+8],eax
 0048DEB8    mov         eax,dword ptr [ebp-44]
 0048DEBB    mov         dx,word ptr [ebp-4C]
 0048DEBF    mov         word ptr [eax+0C],dx
 0048DEC3    mov         eax,dword ptr [ebp-44]
 0048DEC6    mov         dx,word ptr [ebp-4A]
 0048DECA    mov         word ptr [eax+0E],dx
 0048DECE    sub         dword ptr [ebp-0C],0C
>0048DED2    jmp         0048DFAD
 0048DED7    mov         ecx,dword ptr [ebp-24]
 0048DEDA    sub         ecx,4
 0048DEDD    mov         edx,dword ptr [ebp-1C]
 0048DEE0    add         edx,4
 0048DEE3    mov         eax,dword ptr [ebp-8]
 0048DEE6    mov         ebx,dword ptr [eax]
 0048DEE8    call        dword ptr [ebx+0C]
 0048DEEB    mov         eax,dword ptr [ebp-24]
 0048DEEE    sub         dword ptr [ebp-0C],eax
 0048DEF1    mov         eax,dword ptr [ebp-40]
 0048DEF4    cmp         dword ptr [eax+10],3
>0048DEF8    je          0048DFAD
 0048DEFE    mov         eax,dword ptr [ebp-40]
 0048DF01    cmp         dword ptr [eax+10],0
>0048DF05    je          0048DFAD
 0048DF0B    mov         dl,1
 0048DF0D    mov         eax,[00476368];TMemoryStream
 0048DF12    call        TObject.Create;TMemoryStream.Create
 0048DF17    mov         dword ptr [ebp-3C],eax
 0048DF1A    cmp         dword ptr [ebp+8],0
>0048DF1E    jne         0048DF50
 0048DF20    lea         eax,[ebp-0B6]
 0048DF26    xor         ecx,ecx
 0048DF28    mov         edx,0E
 0048DF2D    call        @FillChar
 0048DF32    mov         word ptr [ebp-0B6],4D42
 0048DF3B    mov         eax,dword ptr [ebp-0C]
 0048DF3E    add         eax,dword ptr [ebp-24]
 0048DF41    mov         dword ptr [ebp-0B4],eax
 0048DF47    lea         eax,[ebp-0B6]
 0048DF4D    mov         dword ptr [ebp+8],eax
 0048DF50    mov         edx,dword ptr [ebp+8]
 0048DF53    mov         ecx,0E
 0048DF58    mov         eax,dword ptr [ebp-3C]
 0048DF5B    mov         ebx,dword ptr [eax]
 0048DF5D    call        dword ptr [ebx+10];TMemoryStream.sub_0047C80C
 0048DF60    lea         edx,[ebp-24]
 0048DF63    mov         ecx,4
 0048DF68    mov         eax,dword ptr [ebp-3C]
 0048DF6B    mov         ebx,dword ptr [eax]
 0048DF6D    call        dword ptr [ebx+10];TMemoryStream.sub_0047C80C
 0048DF70    mov         ecx,dword ptr [ebp-24]
 0048DF73    sub         ecx,4
 0048DF76    mov         edx,dword ptr [ebp-1C]
 0048DF79    add         edx,4
 0048DF7C    mov         eax,dword ptr [ebp-3C]
 0048DF7F    mov         ebx,dword ptr [eax]
 0048DF81    call        dword ptr [ebx+10];TMemoryStream.sub_0047C80C
 0048DF84    mov         eax,dword ptr [ebp-0C]
 0048DF87    xor         edx,edx
 0048DF89    push        edx
 0048DF8A    push        eax
 0048DF8B    mov         edx,dword ptr [ebp-8]
 0048DF8E    mov         eax,dword ptr [ebp-3C]
 0048DF91    call        0047BFB8
 0048DF96    mov         edx,dword ptr [ebp-0C]
 0048DF99    neg         edx
 0048DF9B    mov         cx,2
 0048DF9F    mov         eax,dword ptr [ebp-3C]
 0048DFA2    mov         ebx,dword ptr [eax]
 0048DFA4    call        dword ptr [ebx+14];TMemoryStream.sub_0047C56C
 0048DFA7    mov         eax,dword ptr [ebp-3C]
 0048DFAA    mov         dword ptr [ebp-8],eax
 0048DFAD    mov         eax,dword ptr [ebp-40]
 0048DFB0    mov         dword ptr [ebp-48],eax
 0048DFB3    mov         eax,dword ptr [ebp-48]
 0048DFB6    mov         edx,dword ptr [ebp-24]
 0048DFB9    mov         dword ptr [eax],edx
 0048DFBB    mov         eax,dword ptr [ebp-1C]
 0048DFBE    add         eax,dword ptr [ebp-24]
 0048DFC1    mov         dword ptr [ebp-20],eax
 0048DFC4    mov         eax,dword ptr [ebp-48]
 0048DFC7    cmp         word ptr [eax+0C],1
>0048DFCC    je          0048DFD3
 0048DFCE    call        InvalidBitmap
 0048DFD3    cmp         dword ptr [ebp-24],28
>0048DFD7    jne         0048E00E
 0048DFD9    mov         eax,dword ptr [ebp-48]
 0048DFDC    cmp         word ptr [eax+0E],10
>0048DFE1    je          0048DFED
 0048DFE3    mov         eax,dword ptr [ebp-48]
 0048DFE6    cmp         word ptr [eax+0E],20
>0048DFEB    jne         0048E00E
 0048DFED    mov         eax,dword ptr [ebp-48]
 0048DFF0    cmp         dword ptr [eax+10],3
>0048DFF4    jne         0048E00E
 0048DFF6    mov         edx,dword ptr [ebp-20]
 0048DFF9    mov         ecx,0C
 0048DFFE    mov         eax,dword ptr [ebp-8]
 0048E001    call        0047BF28
 0048E006    add         dword ptr [ebp-20],0C
 0048E00A    sub         dword ptr [ebp-0C],0C
 0048E00E    mov         eax,dword ptr [ebp-48]
 0048E011    cmp         dword ptr [eax+20],0
>0048E015    jne         0048E029
 0048E017    mov         eax,dword ptr [ebp-48]
 0048E01A    mov         ax,word ptr [eax+0E]
 0048E01E    call        00488B68
 0048E023    mov         edx,dword ptr [ebp-48]
 0048E026    mov         dword ptr [edx+20],eax
 0048E029    mov         eax,dword ptr [ebp-48]
 0048E02C    mov         ecx,dword ptr [eax+20]
 0048E02F    xor         eax,eax
 0048E031    mov         al,byte ptr [ebp-25]
 0048E034    movzx       eax,byte ptr [eax+54108C]
 0048E03B    imul        ecx,eax
 0048E03E    mov         edx,dword ptr [ebp-20]
 0048E041    mov         eax,dword ptr [ebp-8]
 0048E044    call        0047BF28
 0048E049    mov         eax,dword ptr [ebp-48]
 0048E04C    mov         eax,dword ptr [eax+20]
 0048E04F    xor         edx,edx
 0048E051    mov         dl,byte ptr [ebp-25]
 0048E054    movzx       edx,byte ptr [edx+54108C]
 0048E05B    imul        edx
 0048E05D    sub         dword ptr [ebp-0C],eax
 0048E060    mov         eax,dword ptr [ebp-48]
 0048E063    cmp         dword ptr [eax+14],0
>0048E067    jne         0048E096
 0048E069    mov         eax,dword ptr [ebp-48]
 0048E06C    movzx       edx,word ptr [eax+0E]
 0048E070    mov         eax,dword ptr [ebp-48]
 0048E073    mov         eax,dword ptr [eax+4]
 0048E076    mov         ecx,20
 0048E07B    call        00488BA4
 0048E080    mov         ecx,eax
 0048E082    mov         eax,dword ptr [ebp-48]
 0048E085    mov         eax,dword ptr [eax+8]
 0048E088    cdq
 0048E089    xor         eax,edx
 0048E08B    sub         eax,edx
 0048E08D    imul        ecx,eax
 0048E090    mov         eax,dword ptr [ebp-48]
 0048E093    mov         dword ptr [eax+14],ecx
 0048E096    mov         eax,dword ptr [ebp-48]
 0048E099    mov         eax,dword ptr [eax+14]
 0048E09C    cmp         eax,dword ptr [ebp-0C]
>0048E09F    jae         0048E0AA
 0048E0A1    mov         eax,dword ptr [ebp-48]
 0048E0A4    mov         eax,dword ptr [eax+14]
 0048E0A7    mov         dword ptr [ebp-0C],eax
 0048E0AA    cmp         byte ptr [ebp-25],0
>0048E0AE    je          0048E0B8
 0048E0B0    mov         eax,dword ptr [ebp-20]
 0048E0B3    call        00488EB0
 0048E0B8    push        0
 0048E0BA    call        user32.GetDC
 0048E0BF    call        004889D8
 0048E0C4    mov         dword ptr [ebp-10],eax
 0048E0C7    xor         eax,eax
 0048E0C9    push        ebp
 0048E0CA    push        48E2C7
 0048E0CF    push        dword ptr fs:[eax]
 0048E0D2    mov         dword ptr fs:[eax],esp
 0048E0D5    mov         eax,dword ptr [ebp-40]
 0048E0D8    cmp         dword ptr [eax+10],0
>0048E0DC    je          0048E0E7
 0048E0DE    mov         eax,dword ptr [ebp-40]
 0048E0E1    cmp         dword ptr [eax+10],3
>0048E0E5    jne         0048E0F4
 0048E0E7    cmp         byte ptr ds:[540DFC],0;gvar_00540DFC
>0048E0EE    je          0048E235
 0048E0F4    xor         eax,eax
 0048E0F6    mov         dword ptr [ebp-14],eax
 0048E0F9    mov         eax,dword ptr [ebp-0C]
 0048E0FC    call        @GetMem
 0048E101    mov         dword ptr [ebp-18],eax
 0048E104    xor         eax,eax
 0048E106    push        ebp
 0048E107    push        48E22E
 0048E10C    push        dword ptr fs:[eax]
 0048E10F    mov         dword ptr fs:[eax],esp
 0048E112    mov         edx,dword ptr [ebp-18]
 0048E115    mov         ecx,dword ptr [ebp-0C]
 0048E118    mov         eax,dword ptr [ebp-8]
 0048E11B    call        0047BF28
 0048E120    mov         eax,dword ptr [ebp-10]
 0048E123    push        eax
 0048E124    call        gdi32.CreateCompatibleDC
 0048E129    call        004889D8
 0048E12E    mov         dword ptr [ebp-14],eax
 0048E131    push        1
 0048E133    push        1
 0048E135    mov         eax,dword ptr [ebp-10]
 0048E138    push        eax
 0048E139    call        gdi32.CreateCompatibleBitmap
 0048E13E    push        eax
 0048E13F    mov         eax,dword ptr [ebp-14]
 0048E142    push        eax
 0048E143    call        gdi32.SelectObject
 0048E148    mov         dword ptr [ebp-30],eax
 0048E14B    xor         eax,eax
 0048E14D    mov         dword ptr [ebp-38],eax
 0048E150    mov         eax,dword ptr [ebp-40]
 0048E153    cmp         dword ptr [eax+20],0
>0048E157    jbe         0048E187
 0048E159    mov         eax,dword ptr [ebp-40]
 0048E15C    mov         ecx,dword ptr [eax+20]
 0048E15F    mov         edx,dword ptr [ebp-20]
 0048E162    xor         eax,eax
 0048E164    call        004891FC
 0048E169    mov         dword ptr [ebp-34],eax
 0048E16C    push        0
 0048E16E    mov         eax,dword ptr [ebp-34]
 0048E171    push        eax
 0048E172    mov         eax,dword ptr [ebp-14]
 0048E175    push        eax
 0048E176    call        gdi32.SelectPalette
 0048E17B    mov         dword ptr [ebp-38],eax
 0048E17E    mov         eax,dword ptr [ebp-14]
 0048E181    push        eax
 0048E182    call        gdi32.RealizePalette
 0048E187    xor         eax,eax
 0048E189    push        ebp
 0048E18A    push        48E202
 0048E18F    push        dword ptr fs:[eax]
 0048E192    mov         dword ptr fs:[eax],esp
 0048E195    push        0
 0048E197    mov         eax,dword ptr [ebp-1C]
 0048E19A    push        eax
 0048E19B    mov         eax,dword ptr [ebp-18]
 0048E19E    push        eax
 0048E19F    push        4
 0048E1A1    mov         eax,dword ptr [ebp-1C]
 0048E1A4    push        eax
 0048E1A5    mov         eax,dword ptr [ebp-14]
 0048E1A8    push        eax
 0048E1A9    call        gdi32.CreateDIBitmap
 0048E1AE    mov         dword ptr [ebp-2C],eax
 0048E1B1    cmp         dword ptr [ebp-2C],0
>0048E1B5    jne         0048E1CC
 0048E1B7    call        kernel32.GetLastError
 0048E1BC    test        eax,eax
>0048E1BE    jne         0048E1C7
 0048E1C0    call        InvalidBitmap
>0048E1C5    jmp         0048E1CC
 0048E1C7    call        RaiseLastOSError
 0048E1CC    xor         eax,eax
 0048E1CE    pop         edx
 0048E1CF    pop         ecx
 0048E1D0    pop         ecx
 0048E1D1    mov         dword ptr fs:[eax],edx
 0048E1D4    push        48E209
 0048E1D9    cmp         dword ptr [ebp-38],0
>0048E1DD    je          0048E1EE
 0048E1DF    push        0FF
 0048E1E1    mov         eax,dword ptr [ebp-38]
 0048E1E4    push        eax
 0048E1E5    mov         eax,dword ptr [ebp-14]
 0048E1E8    push        eax
 0048E1E9    call        gdi32.SelectPalette
 0048E1EE    mov         eax,dword ptr [ebp-30]
 0048E1F1    push        eax
 0048E1F2    mov         eax,dword ptr [ebp-14]
 0048E1F5    push        eax
 0048E1F6    call        gdi32.SelectObject
 0048E1FB    push        eax
 0048E1FC    call        gdi32.DeleteObject
 0048E201    ret
>0048E202    jmp         @HandleFinally
>0048E207    jmp         0048E1D9
 0048E209    xor         eax,eax
 0048E20B    pop         edx
 0048E20C    pop         ecx
 0048E20D    pop         ecx
 0048E20E    mov         dword ptr fs:[eax],edx
 0048E211    push        48E2AE
 0048E216    cmp         dword ptr [ebp-14],0
>0048E21A    je          0048E225
 0048E21C    mov         eax,dword ptr [ebp-14]
 0048E21F    push        eax
 0048E220    call        gdi32.DeleteDC
 0048E225    mov         eax,dword ptr [ebp-18]
 0048E228    call        @FreeMem
 0048E22D    ret
>0048E22E    jmp         @HandleFinally
>0048E233    jmp         0048E216
 0048E235    push        0
 0048E237    push        0
 0048E239    lea         eax,[ebp-18]
 0048E23C    push        eax
 0048E23D    push        0
 0048E23F    mov         eax,dword ptr [ebp-1C]
 0048E242    push        eax
 0048E243    mov         eax,dword ptr [ebp-10]
 0048E246    push        eax
 0048E247    call        gdi32.CreateDIBSection
 0048E24C    mov         dword ptr [ebp-2C],eax
 0048E24F    cmp         dword ptr [ebp-2C],0
>0048E253    je          0048E25B
 0048E255    cmp         dword ptr [ebp-18],0
>0048E259    jne         0048E270
 0048E25B    call        kernel32.GetLastError
 0048E260    test        eax,eax
>0048E262    jne         0048E26B
 0048E264    call        InvalidBitmap
>0048E269    jmp         0048E270
 0048E26B    call        RaiseLastOSError
 0048E270    xor         eax,eax
 0048E272    push        ebp
 0048E273    push        48E296
 0048E278    push        dword ptr fs:[eax]
 0048E27B    mov         dword ptr fs:[eax],esp
 0048E27E    mov         edx,dword ptr [ebp-18]
 0048E281    mov         ecx,dword ptr [ebp-0C]
 0048E284    mov         eax,dword ptr [ebp-8]
 0048E287    call        0047BF28
 0048E28C    xor         eax,eax
 0048E28E    pop         edx
 0048E28F    pop         ecx
 0048E290    pop         ecx
 0048E291    mov         dword ptr fs:[eax],edx
>0048E294    jmp         0048E2AE
>0048E296    jmp         @HandleAnyException
 0048E29B    mov         eax,dword ptr [ebp-2C]
 0048E29E    push        eax
 0048E29F    call        gdi32.DeleteObject
 0048E2A4    call        @RaiseAgain
 0048E2A9    call        @DoneExcept
 0048E2AE    xor         eax,eax
 0048E2B0    pop         edx
 0048E2B1    pop         ecx
 0048E2B2    pop         ecx
 0048E2B3    mov         dword ptr fs:[eax],edx
 0048E2B6    push        48E2CE
 0048E2BB    mov         eax,dword ptr [ebp-10]
 0048E2BE    push        eax
 0048E2BF    push        0
 0048E2C1    call        user32.ReleaseDC
 0048E2C6    ret
>0048E2C7    jmp         @HandleFinally
>0048E2CC    jmp         0048E2BB
 0048E2CE    mov         eax,dword ptr [ebp-40]
 0048E2D1    cmp         word ptr [eax+0E],8
>0048E2D6    jbe         0048E2FA
 0048E2D8    mov         eax,dword ptr [ebp-40]
 0048E2DB    cmp         dword ptr [eax+20],0
>0048E2DF    jbe         0048E2FA
 0048E2E1    cmp         dword ptr [ebp-34],0
>0048E2E5    jne         0048E2FA
 0048E2E7    mov         eax,dword ptr [ebp-40]
 0048E2EA    mov         ecx,dword ptr [eax+20]
 0048E2ED    mov         edx,dword ptr [ebp-20]
 0048E2F0    xor         eax,eax
 0048E2F2    call        004891FC
 0048E2F7    mov         dword ptr [ebp-34],eax
 0048E2FA    lea         eax,[ebp-0A8]
 0048E300    xor         ecx,ecx
 0048E302    mov         edx,54
 0048E307    call        @FillChar
 0048E30C    lea         eax,[ebp-0A8]
 0048E312    push        eax
 0048E313    push        54
 0048E315    mov         eax,dword ptr [ebp-2C]
 0048E318    push        eax
 0048E319    call        gdi32.GetObjectA
 0048E31E    mov         eax,dword ptr [ebp-40]
 0048E321    mov         eax,dword ptr [eax+18]
 0048E324    mov         dword ptr [ebp-78],eax
 0048E327    mov         eax,dword ptr [ebp-40]
 0048E32A    mov         eax,dword ptr [eax+1C]
 0048E32D    mov         dword ptr [ebp-74],eax
 0048E330    mov         eax,dword ptr [ebp-40]
 0048E333    mov         eax,dword ptr [eax+20]
 0048E336    mov         dword ptr [ebp-70],eax
 0048E339    mov         eax,dword ptr [ebp-40]
 0048E33C    mov         eax,dword ptr [eax+24]
 0048E33F    mov         dword ptr [ebp-6C],eax
 0048E342    xor         eax,eax
 0048E344    pop         edx
 0048E345    pop         ecx
 0048E346    pop         ecx
 0048E347    mov         dword ptr fs:[eax],edx
>0048E34A    jmp         0048E363
>0048E34C    jmp         @HandleAnyException
 0048E351    mov         eax,dword ptr [ebp-3C]
 0048E354    call        TObject.Free
 0048E359    call        @RaiseAgain
 0048E35E    call        @DoneExcept
 0048E363    xor         eax,eax
 0048E365    pop         edx
 0048E366    pop         ecx
 0048E367    pop         ecx
 0048E368    mov         dword ptr fs:[eax],edx
 0048E36B    push        48E380
 0048E370    mov         eax,dword ptr [ebp-1C]
 0048E373    call        @FreeMem
 0048E378    ret
>0048E379    jmp         @HandleFinally
>0048E37E    jmp         0048E370
 0048E380    lea         eax,[ebp-0A8]
 0048E386    push        eax
 0048E387    mov         al,byte ptr [ebp-25]
 0048E38A    push        eax
 0048E38B    mov         eax,dword ptr [ebp-3C]
 0048E38E    push        eax
 0048E38F    mov         ecx,dword ptr [ebp-34]
 0048E392    mov         edx,dword ptr [ebp-2C]
 0048E395    mov         eax,dword ptr [ebp-4]
 0048E398    call        0048DCBC
 0048E39D    mov         eax,dword ptr [ebp-4]
 0048E3A0    mov         edx,dword ptr [eax]
 0048E3A2    call        dword ptr [edx+24]
 0048E3A5    test        eax,eax
 0048E3A7    setne       al
 0048E3AA    mov         edx,dword ptr [ebp-4]
 0048E3AD    mov         byte ptr [edx+22],al
 0048E3B0    mov         edx,dword ptr [ebp-4]
 0048E3B3    mov         eax,dword ptr [ebp-4]
 0048E3B6    mov         ecx,dword ptr [eax]
 0048E3B8    call        dword ptr [ecx+10]
 0048E3BB    pop         edi
 0048E3BC    pop         esi
 0048E3BD    pop         ebx
 0048E3BE    mov         esp,ebp
 0048E3C0    pop         ebp
 0048E3C1    ret         4
end;*}

//0048E3C4
{*procedure sub_0048E3C4(?:TBitmap; ?:?; ?:?);
begin
 0048E3C4    push        ebp
 0048E3C5    mov         ebp,esp
 0048E3C7    add         esp,0FFFFFF90
 0048E3CA    mov         dword ptr [ebp-0C],ecx
 0048E3CD    mov         dword ptr [ebp-8],edx
 0048E3D0    mov         dword ptr [ebp-4],eax
 0048E3D3    mov         eax,dword ptr [ebp-4]
 0048E3D6    call        0048D968
 0048E3DB    cmp         dword ptr [ebp-0C],0
>0048E3DF    jne         0048E406
 0048E3E1    lea         eax,[ebp-6E]
 0048E3E4    xor         ecx,ecx
 0048E3E6    mov         edx,54
 0048E3EB    call        @FillChar
 0048E3F0    lea         eax,[ebp-6E]
 0048E3F3    push        eax
 0048E3F4    push        0
 0048E3F6    push        0
 0048E3F8    xor         ecx,ecx
 0048E3FA    xor         edx,edx
 0048E3FC    mov         eax,dword ptr [ebp-4]
 0048E3FF    call        0048DCBC
>0048E404    jmp         0048E438
 0048E406    lea         edx,[ebp-1A]
 0048E409    mov         ecx,0E
 0048E40E    mov         eax,dword ptr [ebp-8]
 0048E411    call        0047BF28
 0048E416    cmp         word ptr [ebp-1A],4D42
>0048E41C    je          0048E423
 0048E41E    call        InvalidBitmap
 0048E423    lea         eax,[ebp-1A]
 0048E426    push        eax
 0048E427    mov         ecx,dword ptr [ebp-0C]
 0048E42A    sub         ecx,0E
 0048E42D    mov         edx,dword ptr [ebp-8]
 0048E430    mov         eax,dword ptr [ebp-4]
 0048E433    call        0048DDF8
 0048E438    mov         esp,ebp
 0048E43A    pop         ebp
 0048E43B    ret
end;*}

//0048E43C
procedure TBitmap.SetHandle(Value:HBITMAP);
begin
{*
 0048E43C    push        ebp
 0048E43D    mov         ebp,esp
 0048E43F    add         esp,0FFFFFF9C
 0048E442    push        ebx
 0048E443    push        esi
 0048E444    push        edi
 0048E445    mov         dword ptr [ebp-8],edx
 0048E448    mov         dword ptr [ebp-4],eax
 0048E44B    mov         eax,dword ptr [ebp-4]
 0048E44E    mov         eax,dword ptr [eax+28]
 0048E451    mov         dword ptr [ebp-10],eax
 0048E454    mov         eax,dword ptr [ebp-10]
 0048E457    mov         eax,dword ptr [eax+8]
 0048E45A    cmp         eax,dword ptr [ebp-8]
>0048E45D    je          0048E521
 0048E463    mov         eax,dword ptr [ebp-4]
 0048E466    call        0048D968
 0048E46B    lea         eax,[ebp-64]
 0048E46E    xor         ecx,ecx
 0048E470    mov         edx,54
 0048E475    call        @FillChar
 0048E47A    cmp         dword ptr [ebp-8],0
>0048E47E    je          0048E48F
 0048E480    lea         eax,[ebp-64]
 0048E483    push        eax
 0048E484    push        54
 0048E486    mov         eax,dword ptr [ebp-8]
 0048E489    push        eax
 0048E48A    call        gdi32.GetObjectA
 0048E48F    mov         eax,dword ptr [ebp-10]
 0048E492    cmp         dword ptr [eax+4],1
>0048E496    jne         0048E4AB
 0048E498    mov         eax,dword ptr [ebp-10]
 0048E49B    mov         eax,dword ptr [eax+10]
 0048E49E    mov         dword ptr [ebp-0C],eax
 0048E4A1    mov         eax,dword ptr [ebp-10]
 0048E4A4    xor         edx,edx
 0048E4A6    mov         dword ptr [eax+10],edx
>0048E4A9    jmp         0048E4D1
 0048E4AB    mov         eax,dword ptr [ebp-10]
 0048E4AE    mov         eax,dword ptr [eax+10]
 0048E4B1    cmp         eax,dword ptr ds:[55DB10];gvar_0055DB10
>0048E4B7    jne         0048E4C3
 0048E4B9    mov         eax,[0055DB10];gvar_0055DB10
 0048E4BE    mov         dword ptr [ebp-0C],eax
>0048E4C1    jmp         0048E4D1
 0048E4C3    mov         eax,dword ptr [ebp-10]
 0048E4C6    mov         eax,dword ptr [eax+10]
 0048E4C9    call        0048CB64
 0048E4CE    mov         dword ptr [ebp-0C],eax
 0048E4D1    xor         eax,eax
 0048E4D3    push        ebp
 0048E4D4    push        48E4FF
 0048E4D9    push        dword ptr fs:[eax]
 0048E4DC    mov         dword ptr fs:[eax],esp
 0048E4DF    lea         eax,[ebp-64]
 0048E4E2    push        eax
 0048E4E3    push        0
 0048E4E5    push        0
 0048E4E7    mov         ecx,dword ptr [ebp-0C]
 0048E4EA    mov         edx,dword ptr [ebp-8]
 0048E4ED    mov         eax,dword ptr [ebp-4]
 0048E4F0    call        0048DCBC
 0048E4F5    xor         eax,eax
 0048E4F7    pop         edx
 0048E4F8    pop         ecx
 0048E4F9    pop         ecx
 0048E4FA    mov         dword ptr fs:[eax],edx
>0048E4FD    jmp         0048E516
>0048E4FF    jmp         @HandleAnyException
 0048E504    mov         eax,dword ptr [ebp-0C]
 0048E507    call        00485E88
 0048E50C    call        @RaiseAgain
 0048E511    call        @DoneExcept
 0048E516    mov         edx,dword ptr [ebp-4]
 0048E519    mov         eax,dword ptr [ebp-4]
 0048E51C    mov         ecx,dword ptr [eax]
 0048E51E    call        dword ptr [ecx+10]
 0048E521    pop         edi
 0048E522    pop         esi
 0048E523    pop         ebx
 0048E524    mov         esp,ebp
 0048E526    pop         ebp
 0048E527    ret
*}
end;

//0048E528
{*procedure sub_0048E528(?:?);
begin
 0048E528    push        ebp
 0048E529    mov         ebp,esp
 0048E52B    add         esp,0FFFFFF94
 0048E52E    push        esi
 0048E52F    push        edi
 0048E530    mov         byte ptr [ebp-5],dl
 0048E533    mov         dword ptr [ebp-4],eax
 0048E536    mov         eax,dword ptr [ebp-4]
 0048E539    call        0048D5BC
 0048E53E    cmp         al,byte ptr [ebp-5]
>0048E541    je          0048E6ED
 0048E547    mov         eax,dword ptr [ebp-4]
 0048E54A    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048E54D    mov         dword ptr [ebp-18],eax
 0048E550    mov         eax,dword ptr [ebp-18]
 0048E553    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>0048E557    jne         0048E584
 0048E559    mov         eax,dword ptr [ebp-18]
 0048E55C    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>0048E560    jne         0048E584
 0048E562    cmp         byte ptr [ebp-5],1
>0048E566    jne         0048E575
 0048E568    mov         eax,dword ptr [ebp-18]
 0048E56B    xor         edx,edx
 0048E56D    mov         dword ptr [eax+30],edx
>0048E570    jmp         0048E6ED
 0048E575    mov         eax,dword ptr [ebp-18]
 0048E578    mov         dword ptr [eax+30],28
>0048E57F    jmp         0048E6ED
 0048E584    cmp         byte ptr [ebp-5],0
>0048E588    jne         0048E62F
 0048E58E    mov         eax,dword ptr [ebp-18]
 0048E591    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>0048E595    je          0048E5A9
 0048E597    mov         eax,dword ptr [ebp-18]
 0048E59A    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048E59D    mov         edx,dword ptr [ebp-18]
 0048E5A0    cmp         eax,dword ptr [edx+8];TBitmapImage.FHandle:HBITMAP
>0048E5A3    je          0048E6ED
 0048E5A9    mov         eax,dword ptr [ebp-4]
 0048E5AC    call        0048D968
 0048E5B1    mov         eax,dword ptr [ebp-4]
 0048E5B4    call        0048DAE4
 0048E5B9    mov         eax,dword ptr [ebp-4]
 0048E5BC    call        0048D894
 0048E5C1    mov         eax,dword ptr [ebp-18]
 0048E5C4    cmp         dword ptr [eax+4],1;TBitmapImage.............FRefCount:Integer
>0048E5C8    jne         0048E60F
 0048E5CA    mov         eax,dword ptr [ebp-18]
 0048E5CD    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048E5D0    mov         dword ptr [ebp-0C],eax
 0048E5D3    mov         eax,dword ptr [ebp-18]
 0048E5D6    xor         edx,edx
 0048E5D8    mov         dword ptr [eax+14],edx;TBitmapImage.FDIBHandle:HBITMAP
 0048E5DB    mov         eax,dword ptr [ebp-18]
 0048E5DE    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048E5E1    mov         dword ptr [ebp-10],eax
 0048E5E4    mov         eax,dword ptr [ebp-18]
 0048E5E7    xor         edx,edx
 0048E5E9    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
 0048E5EC    mov         eax,dword ptr [ebp-18]
 0048E5EF    add         eax,18;TBitmapImage.FDIB:TDIBSection
 0048E5F2    push        eax
 0048E5F3    mov         eax,dword ptr [ebp-18]
 0048E5F6    mov         al,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 0048E5F9    push        eax
 0048E5FA    push        0
 0048E5FC    mov         ecx,dword ptr [ebp-10]
 0048E5FF    mov         edx,dword ptr [ebp-0C]
 0048E602    mov         eax,dword ptr [ebp-4]
 0048E605    call        0048DCBC
>0048E60A    jmp         0048E6E2
 0048E60F    mov         eax,dword ptr [ebp-18]
 0048E612    add         eax,18;TBitmapImage.FDIB:TDIBSection
 0048E615    push        eax
 0048E616    mov         eax,dword ptr [ebp-18]
 0048E619    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048E61C    mov         eax,dword ptr [ebp-18]
 0048E61F    mov         edx,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048E622    mov         eax,dword ptr [ebp-4]
 0048E625    call        0048CFD4
>0048E62A    jmp         0048E6E2
 0048E62F    mov         eax,dword ptr [ebp-18]
 0048E632    cmp         dword ptr [eax+8],0;TBitmapImage.FHandle:HBITMAP
>0048E636    je          0048E64A
 0048E638    mov         eax,dword ptr [ebp-18]
 0048E63B    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048E63E    mov         edx,dword ptr [ebp-18]
 0048E641    cmp         eax,dword ptr [edx+14];TBitmapImage.FDIBHandle:HBITMAP
>0048E644    jne         0048E6ED
 0048E64A    mov         eax,dword ptr [ebp-4]
 0048E64D    call        0048D968
 0048E652    mov         eax,dword ptr [ebp-4]
 0048E655    call        0048DAE4
 0048E65A    mov         eax,dword ptr [ebp-18]
 0048E65D    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 0048E660    lea         edi,[ebp-6C]
 0048E663    mov         ecx,15
 0048E668    rep movs    dword ptr [edi],dword ptr [esi]
 0048E66A    xor         eax,eax
 0048E66C    mov         dword ptr [ebp-54],eax
 0048E66F    mov         eax,dword ptr [ebp-18]
 0048E672    cmp         dword ptr [eax+4],1;TBitmapImage..............FRefCount:Integer
 0048E676    sete        byte ptr [ebp-11]
 0048E67A    cmp         byte ptr [ebp-11],0
>0048E67E    je          0048E68B
 0048E680    mov         eax,dword ptr [ebp-18]
 0048E683    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048E686    mov         dword ptr [ebp-10],eax
>0048E689    jmp         0048E699
 0048E68B    mov         eax,dword ptr [ebp-18]
 0048E68E    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048E691    call        0048CB64
 0048E696    mov         dword ptr [ebp-10],eax
 0048E699    lea         eax,[ebp-6C]
 0048E69C    push        eax
 0048E69D    push        0
 0048E69F    mov         ecx,dword ptr [ebp-10]
 0048E6A2    mov         eax,dword ptr [ebp-18]
 0048E6A5    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048E6A8    mov         eax,dword ptr [ebp-18]
 0048E6AB    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048E6AE    call        0048C4F4
 0048E6B3    mov         dword ptr [ebp-0C],eax
 0048E6B6    cmp         byte ptr [ebp-11],0
>0048E6BA    je          0048E6C7
 0048E6BC    mov         eax,dword ptr [ebp-0C]
 0048E6BF    mov         edx,dword ptr [ebp-18]
 0048E6C2    mov         dword ptr [edx+8],eax;TBitmapImage.FHandle:HBITMAP
>0048E6C5    jmp         0048E6E2
 0048E6C7    lea         eax,[ebp-6C]
 0048E6CA    push        eax
 0048E6CB    mov         eax,dword ptr [ebp-18]
 0048E6CE    mov         al,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 0048E6D1    push        eax
 0048E6D2    push        0
 0048E6D4    mov         ecx,dword ptr [ebp-10]
 0048E6D7    mov         edx,dword ptr [ebp-0C]
 0048E6DA    mov         eax,dword ptr [ebp-4]
 0048E6DD    call        0048DCBC
 0048E6E2    mov         edx,dword ptr [ebp-4]
 0048E6E5    mov         eax,dword ptr [ebp-4]
 0048E6E8    mov         ecx,dword ptr [eax]
 0048E6EA    call        dword ptr [ecx+10];TBitmap.sub_0048D0E4
 0048E6ED    pop         edi
 0048E6EE    pop         esi
 0048E6EF    mov         esp,ebp
 0048E6F1    pop         ebp
 0048E6F2    ret
end;*}

//0048E6F4
{*procedure sub_0048E6F4(?:?);
begin
 0048E6F4    push        ebp
 0048E6F5    mov         ebp,esp
 0048E6F7    add         esp,0FFFFFFA0
 0048E6FA    push        esi
 0048E6FB    push        edi
 0048E6FC    mov         dword ptr [ebp-8],edx
 0048E6FF    mov         dword ptr [ebp-4],eax
 0048E702    mov         eax,dword ptr [ebp-4]
 0048E705    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048E708    mov         dword ptr [ebp-0C],eax
 0048E70B    mov         eax,dword ptr [ebp-0C]
 0048E70E    mov         eax,dword ptr [eax+20]
 0048E711    cmp         eax,dword ptr [ebp-8]
>0048E714    je          0048E75D
 0048E716    mov         eax,dword ptr [ebp-4]
 0048E719    call        0048D988
 0048E71E    mov         eax,dword ptr [ebp-0C]
 0048E721    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 0048E724    lea         edi,[ebp-60]
 0048E727    mov         ecx,15
 0048E72C    rep movs    dword ptr [edi],dword ptr [esi]
 0048E72E    mov         eax,dword ptr [ebp-8]
 0048E731    mov         dword ptr [ebp-58],eax
 0048E734    mov         eax,dword ptr [ebp-8]
 0048E737    mov         dword ptr [ebp-40],eax
 0048E73A    lea         eax,[ebp-60]
 0048E73D    push        eax
 0048E73E    mov         eax,dword ptr [ebp-0C]
 0048E741    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048E744    mov         eax,dword ptr [ebp-0C]
 0048E747    mov         edx,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048E74A    mov         eax,dword ptr [ebp-4]
 0048E74D    call        0048CFD4
 0048E752    mov         edx,dword ptr [ebp-4]
 0048E755    mov         eax,dword ptr [ebp-4]
 0048E758    mov         ecx,dword ptr [eax]
 0048E75A    call        dword ptr [ecx+10];TBitmap.sub_0048D0E4
 0048E75D    pop         edi
 0048E75E    pop         esi
 0048E75F    mov         esp,ebp
 0048E761    pop         ebp
 0048E762    ret
end;*}

//0048E764
{*procedure sub_0048E764(?:TBitmap; ?:?);
begin
 0048E764    push        ebp
 0048E765    mov         ebp,esp
 0048E767    add         esp,0FFFFFF9C
 0048E76A    push        esi
 0048E76B    push        edi
 0048E76C    mov         byte ptr [ebp-5],dl
 0048E76F    mov         dword ptr [ebp-4],eax
 0048E772    mov         eax,dword ptr [ebp-4]
 0048E775    mov         eax,dword ptr [eax+28]
 0048E778    mov         dword ptr [ebp-0C],eax
 0048E77B    mov         eax,dword ptr [ebp-0C]
 0048E77E    add         eax,30
 0048E781    mov         dword ptr [ebp-10],eax
 0048E784    mov         eax,dword ptr [ebp-10]
 0048E787    cmp         word ptr [eax+0C],1
>0048E78C    jne         0048E798
 0048E78E    mov         eax,dword ptr [ebp-10]
 0048E791    cmp         word ptr [eax+0E],1
>0048E796    je          0048E79C
 0048E798    xor         eax,eax
>0048E79A    jmp         0048E79E
 0048E79C    mov         al,1
 0048E79E    cmp         al,byte ptr [ebp-5]
>0048E7A1    je          0048E807
 0048E7A3    mov         eax,dword ptr [ebp-4]
 0048E7A6    call        0048D988
 0048E7AB    mov         eax,dword ptr [ebp-0C]
 0048E7AE    lea         esi,[eax+18]
 0048E7B1    lea         edi,[ebp-64]
 0048E7B4    mov         ecx,15
 0048E7B9    rep movs    dword ptr [edi],dword ptr [esi]
 0048E7BB    xor         eax,eax
 0048E7BD    mov         dword ptr [ebp-4C],eax
 0048E7C0    xor         eax,eax
 0048E7C2    mov         al,byte ptr [ebp-5]
 0048E7C5    mov         word ptr [ebp-40],ax
 0048E7C9    xor         eax,eax
 0048E7CB    mov         al,byte ptr [ebp-5]
 0048E7CE    mov         word ptr [ebp-3E],ax
 0048E7D2    xor         eax,eax
 0048E7D4    mov         al,byte ptr [ebp-5]
 0048E7D7    mov         word ptr [ebp-54],ax
 0048E7DB    xor         eax,eax
 0048E7DD    mov         al,byte ptr [ebp-5]
 0048E7E0    mov         word ptr [ebp-52],ax
 0048E7E4    lea         eax,[ebp-64]
 0048E7E7    push        eax
 0048E7E8    mov         eax,dword ptr [ebp-0C]
 0048E7EB    mov         ecx,dword ptr [eax+10]
 0048E7EE    mov         eax,dword ptr [ebp-0C]
 0048E7F1    mov         edx,dword ptr [eax+8]
 0048E7F4    mov         eax,dword ptr [ebp-4]
 0048E7F7    call        0048CFD4
 0048E7FC    mov         edx,dword ptr [ebp-4]
 0048E7FF    mov         eax,dword ptr [ebp-4]
 0048E802    mov         ecx,dword ptr [eax]
 0048E804    call        dword ptr [ecx+10]
 0048E807    pop         edi
 0048E808    pop         esi
 0048E809    mov         esp,ebp
 0048E80B    pop         ebp
 0048E80C    ret
end;*}

//0048E810
{*procedure sub_0048E810(?:?);
begin
 0048E810    push        ebp
 0048E811    mov         ebp,esp
 0048E813    add         esp,0FFFFFF9C
 0048E816    push        ebx
 0048E817    push        esi
 0048E818    push        edi
 0048E819    mov         dword ptr [ebp-8],edx
 0048E81C    mov         dword ptr [ebp-4],eax
 0048E81F    mov         eax,dword ptr [ebp-4]
 0048E822    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048E825    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048E828    cmp         eax,dword ptr [ebp-8]
>0048E82B    je          0048E915
 0048E831    mov         eax,dword ptr [ebp-4]
 0048E834    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048E837    mov         dword ptr [ebp-10],eax
 0048E83A    cmp         dword ptr [ebp-8],0
>0048E83E    jne         0048E861
 0048E840    mov         eax,dword ptr [ebp-10]
 0048E843    cmp         dword ptr [eax+4],1;TBitmapImage...............FRefCount:Integer
>0048E847    jne         0048E861
 0048E849    mov         eax,dword ptr [ebp-10]
 0048E84C    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048E84F    call        00485E88
 0048E854    mov         eax,dword ptr [ebp-10]
 0048E857    xor         edx,edx
 0048E859    mov         dword ptr [eax+10],edx;TBitmapImage.FPalette:HPALETTE
>0048E85C    jmp         0048E8E9
 0048E861    mov         eax,dword ptr [ebp-4]
 0048E864    call        0048D968
 0048E869    mov         eax,dword ptr [ebp-4]
 0048E86C    call        0048D988
 0048E871    mov         eax,dword ptr [ebp-10]
 0048E874    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 0048E877    lea         edi,[ebp-64]
 0048E87A    mov         ecx,15
 0048E87F    rep movs    dword ptr [edi],dword ptr [esi]
 0048E881    lea         eax,[ebp-64]
 0048E884    push        eax
 0048E885    push        0
 0048E887    mov         eax,dword ptr [ebp-10]
 0048E88A    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048E88D    mov         eax,dword ptr [ebp-10]
 0048E890    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048E893    mov         ecx,dword ptr [ebp-8]
 0048E896    call        0048C4F4
 0048E89B    mov         dword ptr [ebp-0C],eax
 0048E89E    xor         eax,eax
 0048E8A0    push        ebp
 0048E8A1    push        48E8D1
 0048E8A6    push        dword ptr fs:[eax]
 0048E8A9    mov         dword ptr fs:[eax],esp
 0048E8AC    lea         eax,[ebp-64]
 0048E8AF    push        eax
 0048E8B0    mov         eax,dword ptr [ebp-10]
 0048E8B3    mov         al,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 0048E8B6    push        eax
 0048E8B7    push        0
 0048E8B9    mov         ecx,dword ptr [ebp-8]
 0048E8BC    mov         edx,dword ptr [ebp-0C]
 0048E8BF    mov         eax,dword ptr [ebp-4]
 0048E8C2    call        0048DCBC
 0048E8C7    xor         eax,eax
 0048E8C9    pop         edx
 0048E8CA    pop         ecx
 0048E8CB    pop         ecx
 0048E8CC    mov         dword ptr fs:[eax],edx
>0048E8CF    jmp         0048E8E9
>0048E8D1    jmp         @HandleAnyException
 0048E8D6    mov         eax,dword ptr [ebp-0C]
 0048E8D9    push        eax
 0048E8DA    call        gdi32.DeleteObject
 0048E8DF    call        @RaiseAgain
 0048E8E4    call        @DoneExcept
 0048E8E9    mov         eax,dword ptr [ebp-4]
 0048E8EC    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048E8EF    lea         ecx,[eax+18];TBitmapImage.FDIB:TDIBSection
 0048E8F2    mov         eax,dword ptr [ebp-4]
 0048E8F5    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048E8F8    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048E8FB    mov         edx,dword ptr [ebp-8]
 0048E8FE    call        0048C3B4
 0048E903    mov         eax,dword ptr [ebp-4]
 0048E906    mov         byte ptr [eax+22],1;TBitmap.FPaletteModified:Boolean
 0048E90A    mov         edx,dword ptr [ebp-4]
 0048E90D    mov         eax,dword ptr [ebp-4]
 0048E910    mov         ecx,dword ptr [eax]
 0048E912    call        dword ptr [ecx+10];TBitmap.sub_0048D0E4
 0048E915    pop         edi
 0048E916    pop         esi
 0048E917    pop         ebx
 0048E918    mov         esp,ebp
 0048E91A    pop         ebp
 0048E91B    ret
end;*}

//0048E91C
{*procedure sub_0048E91C(?:TBitmap; ?:?);
begin
 0048E91C    push        ebp
 0048E91D    mov         ebp,esp
 0048E91F    add         esp,0FFFFFF98
 0048E922    push        esi
 0048E923    push        edi
 0048E924    mov         byte ptr [ebp-5],dl
 0048E927    mov         dword ptr [ebp-4],eax
 0048E92A    mov         eax,dword ptr [ebp-4]
 0048E92D    call        0048D6BC
 0048E932    cmp         al,byte ptr [ebp-5]
>0048E935    je          0048EA8C
 0048E93B    mov         al,byte ptr [ebp-5]
 0048E93E    sub         al,1
>0048E940    jb          0048E948
 0048E942    sub         al,7
>0048E944    je          0048E957
>0048E946    jmp         0048E966
 0048E948    mov         dl,1
 0048E94A    mov         eax,dword ptr [ebp-4]
 0048E94D    mov         ecx,dword ptr [eax]
 0048E94F    call        dword ptr [ecx+6C]
>0048E952    jmp         0048EA8C
 0048E957    mov         eax,[0055B280];^SInvalidPixelFormat:TResStringRec
 0048E95C    call        InvalidGraphic
>0048E961    jmp         0048EA8C
 0048E966    lea         eax,[ebp-65]
 0048E969    xor         ecx,ecx
 0048E96B    mov         edx,54
 0048E970    call        @FillChar
 0048E975    mov         eax,dword ptr [ebp-4]
 0048E978    mov         eax,dword ptr [eax+28]
 0048E97B    lea         esi,[eax+18]
 0048E97E    lea         edi,[ebp-65]
 0048E981    mov         ecx,6
 0048E986    rep movs    dword ptr [edi],dword ptr [esi]
 0048E988    mov         byte ptr [ebp-11],0
 0048E98C    xor         eax,eax
 0048E98E    mov         dword ptr [ebp-51],eax
 0048E991    mov         dword ptr [ebp-4D],28
 0048E998    mov         eax,dword ptr [ebp-61]
 0048E99B    mov         dword ptr [ebp-49],eax
 0048E99E    mov         eax,dword ptr [ebp-5D]
 0048E9A1    mov         dword ptr [ebp-45],eax
 0048E9A4    mov         word ptr [ebp-41],1
 0048E9AA    xor         eax,eax
 0048E9AC    mov         al,byte ptr [ebp-5]
 0048E9AF    movzx       eax,byte ptr [eax+54108F]
 0048E9B6    mov         word ptr [ebp-3F],ax
 0048E9BA    mov         eax,dword ptr [ebp-4]
 0048E9BD    mov         eax,dword ptr [eax+28]
 0048E9C0    mov         eax,dword ptr [eax+10]
 0048E9C3    mov         dword ptr [ebp-0C],eax
 0048E9C6    mov         al,byte ptr [ebp-5]
 0048E9C9    sub         al,2
>0048E9CB    je          0048E9D7
 0048E9CD    dec         al
>0048E9CF    je          0048E9E1
 0048E9D1    sub         al,2
>0048E9D3    je          0048EA0D
>0048E9D5    jmp         0048EA29
 0048E9D7    mov         eax,[0055DB10];gvar_0055DB10
 0048E9DC    mov         dword ptr [ebp-0C],eax
>0048E9DF    jmp         0048EA29
 0048E9E1    push        0
 0048E9E3    call        user32.GetDC
 0048E9E8    call        004889D8
 0048E9ED    mov         dword ptr [ebp-10],eax
 0048E9F0    mov         eax,dword ptr [ebp-10]
 0048E9F3    push        eax
 0048E9F4    call        gdi32.CreateHalftonePalette
 0048E9F9    mov         dword ptr [ebp-0C],eax
 0048E9FC    mov         byte ptr [ebp-11],1
 0048EA00    mov         eax,dword ptr [ebp-10]
 0048EA03    push        eax
 0048EA04    push        0
 0048EA06    call        user32.ReleaseDC
>0048EA0B    jmp         0048EA29
 0048EA0D    mov         dword ptr [ebp-3D],3
 0048EA14    mov         dword ptr [ebp-25],0F800
 0048EA1B    mov         dword ptr [ebp-21],7E0
 0048EA22    mov         dword ptr [ebp-1D],1F
 0048EA29    xor         eax,eax
 0048EA2B    push        ebp
 0048EA2C    push        48EA7A
 0048EA31    push        dword ptr fs:[eax]
 0048EA34    mov         dword ptr fs:[eax],esp
 0048EA37    lea         eax,[ebp-65]
 0048EA3A    push        eax
 0048EA3B    mov         eax,dword ptr [ebp-4]
 0048EA3E    mov         edx,dword ptr [eax]
 0048EA40    call        dword ptr [edx+64]
 0048EA43    mov         edx,eax
 0048EA45    mov         ecx,dword ptr [ebp-0C]
 0048EA48    mov         eax,dword ptr [ebp-4]
 0048EA4B    call        0048CFD4
 0048EA50    cmp         dword ptr [ebp-0C],0
 0048EA54    setne       al
 0048EA57    mov         edx,dword ptr [ebp-4]
 0048EA5A    mov         byte ptr [edx+22],al
 0048EA5D    xor         eax,eax
 0048EA5F    pop         edx
 0048EA60    pop         ecx
 0048EA61    pop         ecx
 0048EA62    mov         dword ptr fs:[eax],edx
 0048EA65    push        48EA81
 0048EA6A    cmp         byte ptr [ebp-11],0
>0048EA6E    je          0048EA79
 0048EA70    mov         eax,dword ptr [ebp-0C]
 0048EA73    push        eax
 0048EA74    call        gdi32.DeleteObject
 0048EA79    ret
>0048EA7A    jmp         @HandleFinally
>0048EA7F    jmp         0048EA6A
 0048EA81    mov         edx,dword ptr [ebp-4]
 0048EA84    mov         eax,dword ptr [ebp-4]
 0048EA87    mov         ecx,dword ptr [eax]
 0048EA89    call        dword ptr [ecx+10]
 0048EA8C    pop         edi
 0048EA8D    pop         esi
 0048EA8E    mov         esp,ebp
 0048EA90    pop         ebp
 0048EA91    ret
end;*}

//0048EA94
{*procedure sub_0048EA94(?:TBitmap; ?:?);
begin
 0048EA94    push        ebp
 0048EA95    mov         ebp,esp
 0048EA97    add         esp,0FFFFFFF4
 0048EA9A    mov         dword ptr [ebp-8],edx
 0048EA9D    mov         dword ptr [ebp-4],eax
 0048EAA0    mov         eax,dword ptr [ebp-8]
 0048EAA3    mov         edx,dword ptr [ebp-4]
 0048EAA6    cmp         eax,dword ptr [edx+34]
>0048EAA9    je          0048EB10
 0048EAAB    cmp         dword ptr [ebp-8],20000000
>0048EAB2    jne         0048EABD
 0048EAB4    mov         eax,dword ptr [ebp-4]
 0048EAB7    mov         byte ptr [eax+38],0
>0048EABB    jmp         0048EAC4
 0048EABD    mov         eax,dword ptr [ebp-4]
 0048EAC0    mov         byte ptr [eax+38],1
 0048EAC4    mov         eax,dword ptr [ebp-8]
 0048EAC7    mov         edx,dword ptr [ebp-4]
 0048EACA    mov         dword ptr [edx+34],eax
 0048EACD    mov         eax,dword ptr [ebp-4]
 0048EAD0    mov         eax,dword ptr [eax+28]
 0048EAD3    cmp         dword ptr [eax+4],1
>0048EAD7    jle         0048EB05
 0048EAD9    mov         eax,dword ptr [ebp-4]
 0048EADC    mov         eax,dword ptr [eax+28]
 0048EADF    mov         dword ptr [ebp-0C],eax
 0048EAE2    mov         eax,dword ptr [ebp-4]
 0048EAE5    call        0048D988
 0048EAEA    mov         eax,dword ptr [ebp-0C]
 0048EAED    add         eax,18
 0048EAF0    push        eax
 0048EAF1    mov         eax,dword ptr [ebp-0C]
 0048EAF4    mov         ecx,dword ptr [eax+10]
 0048EAF7    mov         eax,dword ptr [ebp-0C]
 0048EAFA    mov         edx,dword ptr [eax+8]
 0048EAFD    mov         eax,dword ptr [ebp-4]
 0048EB00    call        0048CFD4
 0048EB05    mov         edx,dword ptr [ebp-4]
 0048EB08    mov         eax,dword ptr [ebp-4]
 0048EB0B    mov         ecx,dword ptr [eax]
 0048EB0D    call        dword ptr [ecx+10]
 0048EB10    mov         esp,ebp
 0048EB12    pop         ebp
 0048EB13    ret
end;*}

//0048EB14
{*procedure sub_0048EB14(?:?);
begin
 0048EB14    push        ebp
 0048EB15    mov         ebp,esp
 0048EB17    add         esp,0FFFFFFA0
 0048EB1A    push        esi
 0048EB1B    push        edi
 0048EB1C    mov         dword ptr [ebp-8],edx
 0048EB1F    mov         dword ptr [ebp-4],eax
 0048EB22    mov         eax,dword ptr [ebp-4]
 0048EB25    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048EB28    mov         dword ptr [ebp-0C],eax
 0048EB2B    mov         eax,dword ptr [ebp-0C]
 0048EB2E    mov         eax,dword ptr [eax+1C]
 0048EB31    cmp         eax,dword ptr [ebp-8]
>0048EB34    je          0048EB7D
 0048EB36    mov         eax,dword ptr [ebp-4]
 0048EB39    call        0048D988
 0048EB3E    mov         eax,dword ptr [ebp-0C]
 0048EB41    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 0048EB44    lea         edi,[ebp-60]
 0048EB47    mov         ecx,15
 0048EB4C    rep movs    dword ptr [edi],dword ptr [esi]
 0048EB4E    mov         eax,dword ptr [ebp-8]
 0048EB51    mov         dword ptr [ebp-5C],eax
 0048EB54    mov         eax,dword ptr [ebp-8]
 0048EB57    mov         dword ptr [ebp-44],eax
 0048EB5A    lea         eax,[ebp-60]
 0048EB5D    push        eax
 0048EB5E    mov         eax,dword ptr [ebp-0C]
 0048EB61    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048EB64    mov         eax,dword ptr [ebp-0C]
 0048EB67    mov         edx,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048EB6A    mov         eax,dword ptr [ebp-4]
 0048EB6D    call        0048CFD4
 0048EB72    mov         edx,dword ptr [ebp-4]
 0048EB75    mov         eax,dword ptr [ebp-4]
 0048EB78    mov         ecx,dword ptr [eax]
 0048EB7A    call        dword ptr [ecx+10];TBitmap.sub_0048D0E4
 0048EB7D    pop         edi
 0048EB7E    pop         esi
 0048EB7F    mov         esp,ebp
 0048EB81    pop         ebp
 0048EB82    ret
end;*}

//0048EB84
{*procedure sub_0048EB84(?:?);
begin
 0048EB84    push        ebp
 0048EB85    mov         ebp,esp
 0048EB87    add         esp,0FFFFFFF8
 0048EB8A    mov         dword ptr [ebp-8],edx
 0048EB8D    mov         dword ptr [ebp-4],eax
 0048EB90    mov         cl,1
 0048EB92    mov         edx,dword ptr [ebp-8]
 0048EB95    mov         eax,dword ptr [ebp-4]
 0048EB98    call        0048EBA4
 0048EB9D    pop         ecx
 0048EB9E    pop         ecx
 0048EB9F    pop         ebp
 0048EBA0    ret
end;*}

//0048EBA4
{*procedure sub_0048EBA4(?:TBitmap; ?:?; ?:?);
begin
 0048EBA4    push        ebp
 0048EBA5    mov         ebp,esp
 0048EBA7    add         esp,0FFFFFBC0
 0048EBAD    push        ebx
 0048EBAE    mov         byte ptr [ebp-9],cl
 0048EBB1    mov         dword ptr [ebp-8],edx
 0048EBB4    mov         dword ptr [ebp-4],eax
 0048EBB7    lea         eax,[ebp-32]
 0048EBBA    xor         ecx,ecx
 0048EBBC    mov         edx,0E
 0048EBC1    call        @FillChar
 0048EBC6    mov         word ptr [ebp-32],4D42
 0048EBCC    mov         eax,dword ptr [ebp-4]
 0048EBCF    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048EBD2    cmp         dword ptr [eax+6C],0;TBitmapImage.FSaveStream:TMemoryStream
>0048EBD6    je          0048EC26
 0048EBD8    mov         eax,dword ptr [ebp-4]
 0048EBDB    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048EBDE    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 0048EBE1    mov         edx,dword ptr [eax]
 0048EBE3    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0048EBE5    mov         dword ptr [ebp-10],eax
 0048EBE8    cmp         byte ptr [ebp-9],0
>0048EBEC    je          0048EBFE
 0048EBEE    lea         edx,[ebp-10]
 0048EBF1    mov         ecx,4
 0048EBF6    mov         eax,dword ptr [ebp-8]
 0048EBF9    call        0047BF70
 0048EBFE    mov         eax,dword ptr [ebp-4]
 0048EC01    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048EC04    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 0048EC07    mov         edx,dword ptr [eax]
 0048EC09    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0048EC0B    mov         ecx,eax
 0048EC0D    mov         eax,dword ptr [ebp-4]
 0048EC10    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048EC13    mov         eax,dword ptr [eax+6C];TBitmapImage.FSaveStream:TMemoryStream
 0048EC16    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0048EC19    mov         eax,dword ptr [ebp-8]
 0048EC1C    mov         ebx,dword ptr [eax]
 0048EC1E    call        dword ptr [ebx+10]
>0048EC21    jmp         0048EED8
 0048EC26    mov         eax,dword ptr [ebp-4]
 0048EC29    call        0048D894
 0048EC2E    mov         eax,dword ptr [ebp-4]
 0048EC31    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048EC34    mov         dword ptr [ebp-20],eax
 0048EC37    xor         eax,eax
 0048EC39    mov         dword ptr [ebp-10],eax
 0048EC3C    mov         eax,dword ptr [ebp-20]
 0048EC3F    cmp         dword ptr [eax+14],0;TBitmapImage.FDIBHandle:HBITMAP
>0048EC43    je          0048ED93
 0048EC49    mov         eax,dword ptr [ebp-20]
 0048EC4C    mov         eax,dword ptr [eax+50]
 0048EC4F    push        eax
 0048EC50    lea         ecx,[ebp-10]
 0048EC53    lea         edx,[ebp-18]
 0048EC56    mov         eax,dword ptr [ebp-20]
 0048EC59    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048EC5C    call        00489A9C
 0048EC61    mov         eax,dword ptr [ebp-20]
 0048EC64    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>0048EC68    je          0048EC8F
 0048EC6A    mov         dword ptr [ebp-18],0C
 0048EC71    mov         eax,dword ptr [ebp-20]
 0048EC74    cmp         word ptr [eax+3E],8
>0048EC79    ja          0048EC8F
 0048EC7B    mov         eax,dword ptr [ebp-20]
 0048EC7E    mov         cx,word ptr [eax+3E]
 0048EC82    mov         eax,1
 0048EC87    shl         eax,cl
 0048EC89    lea         eax,[eax+eax*2]
 0048EC8C    add         dword ptr [ebp-18],eax
 0048EC8F    mov         eax,dword ptr [ebp-18]
 0048EC92    add         eax,0E
 0048EC95    add         dword ptr [ebp-10],eax
 0048EC98    lea         eax,[ebp-32]
 0048EC9B    xor         ecx,ecx
 0048EC9D    mov         edx,0E
 0048ECA2    call        @FillChar
 0048ECA7    mov         word ptr [ebp-32],4D42
 0048ECAD    mov         eax,dword ptr [ebp-4]
 0048ECB0    call        TBitmap.GetCanvas
 0048ECB5    mov         dl,byte ptr ds:[48EEE0];0x1 gvar_0048EEE0
 0048ECBB    call        004885D8
 0048ECC0    mov         eax,dword ptr [ebp-20]
 0048ECC3    mov         eax,dword ptr [eax+14];TBitmapImage.FDIBHandle:HBITMAP
 0048ECC6    push        eax
 0048ECC7    mov         eax,dword ptr [ebp-4]
 0048ECCA    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 0048ECCD    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 0048ECD0    push        eax
 0048ECD1    call        gdi32.SelectObject
 0048ECD6    call        004889D8
 0048ECDB    mov         dword ptr [ebp-1C],eax
 0048ECDE    lea         eax,[ebp-43E]
 0048ECE4    push        eax
 0048ECE5    push        100
 0048ECEA    push        0
 0048ECEC    mov         eax,dword ptr [ebp-4]
 0048ECEF    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 0048ECF2    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 0048ECF5    push        eax
 0048ECF6    call        gdi32.GetDIBColorTable
 0048ECFB    mov         dword ptr [ebp-14],eax
 0048ECFE    mov         eax,dword ptr [ebp-1C]
 0048ED01    push        eax
 0048ED02    mov         eax,dword ptr [ebp-4]
 0048ED05    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 0048ED08    mov         eax,dword ptr [eax+4];TCanvas.FHandle:HDC
 0048ED0B    push        eax
 0048ED0C    call        gdi32.SelectObject
 0048ED11    mov         eax,dword ptr [ebp-20]
 0048ED14    cmp         dword ptr [eax+50],0
>0048ED18    jbe         0048ED2E
 0048ED1A    mov         eax,dword ptr [ebp-20]
 0048ED1D    mov         eax,dword ptr [eax+50]
 0048ED20    cmp         eax,dword ptr [ebp-14]
>0048ED23    jae         0048ED2E
 0048ED25    mov         eax,dword ptr [ebp-20]
 0048ED28    mov         eax,dword ptr [eax+50]
 0048ED2B    mov         dword ptr [ebp-14],eax
 0048ED2E    mov         eax,dword ptr [ebp-20]
 0048ED31    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>0048ED35    jne         0048ED84
 0048ED37    cmp         dword ptr [ebp-14],0
>0048ED3B    jne         0048ED84
 0048ED3D    mov         eax,dword ptr [ebp-20]
 0048ED40    cmp         dword ptr [eax+10],0;TBitmapImage.FPalette:HPALETTE
>0048ED44    je          0048ED84
 0048ED46    mov         eax,dword ptr [ebp-20]
 0048ED49    cmp         byte ptr [eax+71],0;TBitmapImage.FHalftone:Boolean
>0048ED4D    jne         0048ED84
 0048ED4F    lea         edx,[ebp-43E]
 0048ED55    mov         ecx,0FF
 0048ED5A    mov         eax,dword ptr [ebp-20]
 0048ED5D    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048ED60    call        004892DC
 0048ED65    mov         dword ptr [ebp-14],eax
 0048ED68    mov         eax,dword ptr [ebp-20]
 0048ED6B    cmp         word ptr [eax+3E],8
>0048ED70    jbe         0048ED84
 0048ED72    mov         eax,dword ptr [ebp-14]
 0048ED75    shl         eax,2
 0048ED78    add         dword ptr [ebp-10],eax
 0048ED7B    mov         eax,dword ptr [ebp-14]
 0048ED7E    shl         eax,2
 0048ED81    add         dword ptr [ebp-18],eax
 0048ED84    mov         eax,dword ptr [ebp-10]
 0048ED87    mov         dword ptr [ebp-30],eax
 0048ED8A    mov         eax,dword ptr [ebp-18]
 0048ED8D    add         eax,0E
 0048ED90    mov         dword ptr [ebp-28],eax
 0048ED93    cmp         byte ptr [ebp-9],0
>0048ED97    je          0048EDA9
 0048ED99    lea         edx,[ebp-10]
 0048ED9C    mov         ecx,4
 0048EDA1    mov         eax,dword ptr [ebp-8]
 0048EDA4    call        0047BF70
 0048EDA9    cmp         dword ptr [ebp-10],0
>0048EDAD    je          0048EED8
 0048EDB3    mov         eax,dword ptr [ebp-20]
 0048EDB6    add         eax,18;TBitmapImage.FDIB:TDIBSection
 0048EDB9    call        0048C484
 0048EDBE    cmp         dword ptr [ebp-14],0
>0048EDC2    je          0048EDF8
 0048EDC4    mov         eax,dword ptr [ebp-20]
 0048EDC7    cmp         dword ptr [eax+50],0
>0048EDCB    je          0048EDD8
 0048EDCD    mov         eax,dword ptr [ebp-20]
 0048EDD0    mov         eax,dword ptr [eax+50]
 0048EDD3    cmp         eax,dword ptr [ebp-14]
>0048EDD6    je          0048EDE1
 0048EDD8    mov         eax,dword ptr [ebp-14]
 0048EDDB    mov         edx,dword ptr [ebp-20]
 0048EDDE    mov         dword ptr [edx+50],eax
 0048EDE1    mov         eax,dword ptr [ebp-20]
 0048EDE4    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>0048EDE8    je          0048EDF8
 0048EDEA    lea         edx,[ebp-14]
 0048EDED    lea         eax,[ebp-43E]
 0048EDF3    call        00488F24
 0048EDF8    mov         eax,dword ptr [ebp-20]
 0048EDFB    cmp         byte ptr [eax+70],0;TBitmapImage.FOS2Format:Boolean
>0048EDFF    je          0048EE5A
 0048EE01    mov         eax,dword ptr [ebp-20]
 0048EE04    add         eax,30
 0048EE07    mov         dword ptr [ebp-24],eax
 0048EE0A    mov         dword ptr [ebp-3E],0C
 0048EE11    mov         eax,dword ptr [ebp-24]
 0048EE14    mov         ax,word ptr [eax+4]
 0048EE18    mov         word ptr [ebp-3A],ax
 0048EE1C    mov         eax,dword ptr [ebp-24]
 0048EE1F    mov         ax,word ptr [eax+8]
 0048EE23    mov         word ptr [ebp-38],ax
 0048EE27    mov         word ptr [ebp-36],1
 0048EE2D    mov         eax,dword ptr [ebp-24]
 0048EE30    mov         ax,word ptr [eax+0E]
 0048EE34    mov         word ptr [ebp-34],ax
 0048EE38    lea         edx,[ebp-32]
 0048EE3B    mov         ecx,0E
 0048EE40    mov         eax,dword ptr [ebp-8]
 0048EE43    call        0047BF70
 0048EE48    lea         edx,[ebp-3E]
 0048EE4B    mov         ecx,0C
 0048EE50    mov         eax,dword ptr [ebp-8]
 0048EE53    call        0047BF70
>0048EE58    jmp         0048EEA3
 0048EE5A    lea         edx,[ebp-32]
 0048EE5D    mov         ecx,0E
 0048EE62    mov         eax,dword ptr [ebp-8]
 0048EE65    call        0047BF70
 0048EE6A    mov         eax,dword ptr [ebp-20]
 0048EE6D    lea         edx,[eax+30]
 0048EE70    mov         ecx,28
 0048EE75    mov         eax,dword ptr [ebp-8]
 0048EE78    call        0047BF70
 0048EE7D    mov         eax,dword ptr [ebp-20]
 0048EE80    cmp         word ptr [eax+3E],8
>0048EE85    jbe         0048EEA3
 0048EE87    mov         eax,dword ptr [ebp-20]
 0048EE8A    test        byte ptr [eax+40],3
>0048EE8E    je          0048EEA3
 0048EE90    mov         eax,dword ptr [ebp-20]
 0048EE93    lea         edx,[eax+58]
 0048EE96    mov         ecx,0C
 0048EE9B    mov         eax,dword ptr [ebp-8]
 0048EE9E    call        0047BF70
 0048EEA3    mov         eax,dword ptr [ebp-20]
 0048EEA6    movzx       eax,byte ptr [eax+70];TBitmapImage.FOS2Format:Boolean
 0048EEAA    xor         ecx,ecx
 0048EEAC    mov         cl,byte ptr [eax+541098]
 0048EEB2    imul        ecx,dword ptr [ebp-14]
 0048EEB6    lea         edx,[ebp-43E]
 0048EEBC    mov         eax,dword ptr [ebp-8]
 0048EEBF    call        0047BF70
 0048EEC4    mov         eax,dword ptr [ebp-20]
 0048EEC7    mov         edx,dword ptr [eax+2C]
 0048EECA    mov         eax,dword ptr [ebp-20]
 0048EECD    mov         ecx,dword ptr [eax+44]
 0048EED0    mov         eax,dword ptr [ebp-8]
 0048EED3    call        0047BF70
 0048EED8    pop         ebx
 0048EED9    mov         esp,ebp
 0048EEDB    pop         ebp
 0048EEDC    ret
end;*}

//0048EEE4
{*procedure sub_0048EEE4(?:?);
begin
 0048EEE4    push        ebp
 0048EEE5    mov         ebp,esp
 0048EEE7    add         esp,0FFFFFFF8
 0048EEEA    mov         dword ptr [ebp-8],edx
 0048EEED    mov         dword ptr [ebp-4],eax
 0048EEF0    xor         ecx,ecx
 0048EEF2    mov         edx,dword ptr [ebp-8]
 0048EEF5    mov         eax,dword ptr [ebp-4]
 0048EEF8    call        0048EBA4
 0048EEFD    pop         ecx
 0048EEFE    pop         ecx
 0048EEFF    pop         ebp
 0048EF00    ret
end;*}

//0048EF04
{*procedure sub_0048EF04(?:?; ?:?; ?:?);
begin
 0048EF04    push        ebp
 0048EF05    mov         ebp,esp
 0048EF07    add         esp,0FFFFFF9C
 0048EF0A    push        ebx
 0048EF0B    push        esi
 0048EF0C    push        edi
 0048EF0D    mov         dword ptr [ebp-0C],ecx
 0048EF10    mov         dword ptr [ebp-8],edx
 0048EF13    mov         dword ptr [ebp-4],eax
 0048EF16    mov         eax,dword ptr [ebp-8]
 0048EF19    mov         word ptr [eax],2
 0048EF1E    mov         eax,dword ptr [ebp-4]
 0048EF21    call        0048D988
 0048EF26    mov         eax,dword ptr [ebp-4]
 0048EF29    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048EF2C    mov         dword ptr [ebp-10],eax
 0048EF2F    mov         eax,dword ptr [ebp-10]
 0048EF32    lea         esi,[eax+18];TBitmapImage.FDIB:TDIBSection
 0048EF35    lea         edi,[ebp-64]
 0048EF38    mov         ecx,15
 0048EF3D    rep movs    dword ptr [edi],dword ptr [esi]
 0048EF3F    xor         eax,eax
 0048EF41    mov         dword ptr [ebp-4C],eax
 0048EF44    xor         eax,eax
 0048EF46    mov         dword ptr [ebp-50],eax
 0048EF49    lea         eax,[ebp-64]
 0048EF4C    push        eax
 0048EF4D    mov         eax,dword ptr [ebp-4]
 0048EF50    mov         eax,dword ptr [eax+2C];TBitmap.FCanvas:TCanvas
 0048EF53    push        eax
 0048EF54    mov         eax,dword ptr [ebp-10]
 0048EF57    mov         ecx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048EF5A    mov         eax,dword ptr [ebp-10]
 0048EF5D    mov         edx,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048EF60    mov         eax,dword ptr [ebp-10]
 0048EF63    mov         eax,dword ptr [eax+8];TBitmapImage.FHandle:HBITMAP
 0048EF66    call        0048C4F4
 0048EF6B    mov         edx,dword ptr [ebp-0C]
 0048EF6E    mov         dword ptr [edx],eax
 0048EF70    xor         eax,eax
 0048EF72    push        ebp
 0048EF73    push        48EF9B
 0048EF78    push        dword ptr fs:[eax]
 0048EF7B    mov         dword ptr fs:[eax],esp
 0048EF7E    mov         eax,dword ptr [ebp-4]
 0048EF81    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 0048EF84    mov         eax,dword ptr [eax+10];TBitmapImage.FPalette:HPALETTE
 0048EF87    call        0048CB64
 0048EF8C    mov         edx,dword ptr [ebp+8]
 0048EF8F    mov         dword ptr [edx],eax
 0048EF91    xor         eax,eax
 0048EF93    pop         edx
 0048EF94    pop         ecx
 0048EF95    pop         ecx
 0048EF96    mov         dword ptr fs:[eax],edx
>0048EF99    jmp         0048EFB5
>0048EF9B    jmp         @HandleAnyException
 0048EFA0    mov         eax,dword ptr [ebp-0C]
 0048EFA3    mov         eax,dword ptr [eax]
 0048EFA5    push        eax
 0048EFA6    call        gdi32.DeleteObject
 0048EFAB    call        @RaiseAgain
 0048EFB0    call        @DoneExcept
 0048EFB5    pop         edi
 0048EFB6    pop         esi
 0048EFB7    pop         ebx
 0048EFB8    mov         esp,ebp
 0048EFBA    pop         ebp
 0048EFBB    ret         4
end;*}

//0048EFC0
destructor TIconImage.Destroy;
begin
{*
 0048EFC0    push        ebp
 0048EFC1    mov         ebp,esp
 0048EFC3    add         esp,0FFFFFFF8
 0048EFC6    call        @BeforeDestruction
 0048EFCB    mov         byte ptr [ebp-5],dl
 0048EFCE    mov         dword ptr [ebp-4],eax
 0048EFD1    mov         eax,dword ptr [ebp-4]
 0048EFD4    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 0048EFD7    call        TObject.Free
 0048EFDC    mov         dl,byte ptr [ebp-5]
 0048EFDF    and         dl,0FC
 0048EFE2    mov         eax,dword ptr [ebp-4]
 0048EFE5    call        TObject.Destroy
 0048EFEA    cmp         byte ptr [ebp-5],0
>0048EFEE    jle         0048EFF8
 0048EFF0    mov         eax,dword ptr [ebp-4]
 0048EFF3    call        @ClassDestroy
 0048EFF8    pop         ecx
 0048EFF9    pop         ecx
 0048EFFA    pop         ebp
 0048EFFB    ret
*}
end;

//0048EFFC
procedure sub_0048EFFC;
begin
{*
 0048EFFC    push        ebp
 0048EFFD    mov         ebp,esp
 0048EFFF    push        ecx
 0048F000    mov         dword ptr [ebp-4],eax
 0048F003    mov         eax,dword ptr [ebp-4]
 0048F006    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>0048F00A    je          0048F018
 0048F00C    mov         eax,dword ptr [ebp-4]
 0048F00F    mov         eax,dword ptr [eax+8];TIconImage.FHandle:HICON
 0048F012    push        eax
 0048F013    call        user32.DestroyIcon
 0048F018    mov         eax,dword ptr [ebp-4]
 0048F01B    xor         edx,edx
 0048F01D    mov         dword ptr [eax+8],edx;TIconImage.FHandle:HICON
 0048F020    pop         ecx
 0048F021    pop         ebp
 0048F022    ret
*}
end;

//0048F024
constructor TIcon.Create;
begin
{*
 0048F024    push        ebp
 0048F025    mov         ebp,esp
 0048F027    add         esp,0FFFFFFF8
 0048F02A    test        dl,dl
>0048F02C    je          0048F036
 0048F02E    add         esp,0FFFFFFF0
 0048F031    call        @ClassCreate
 0048F036    mov         byte ptr [ebp-5],dl
 0048F039    mov         dword ptr [ebp-4],eax
 0048F03C    xor         edx,edx
 0048F03E    mov         eax,dword ptr [ebp-4]
 0048F041    call        00489E60
 0048F046    mov         eax,dword ptr [ebp-4]
 0048F049    mov         byte ptr [eax+21],1;TIcon.FTransparent:Boolean
 0048F04D    mov         dl,1
 0048F04F    mov         eax,[00485D54];TIconImage
 0048F054    call        TObject.Create;TIconImage.Create
 0048F059    mov         edx,dword ptr [ebp-4]
 0048F05C    mov         dword ptr [edx+28],eax;TIcon.FImage:TIconImage
 0048F05F    mov         eax,dword ptr [ebp-4]
 0048F062    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F065    call        0048C278
 0048F06A    mov         eax,dword ptr [ebp-4]
 0048F06D    cmp         byte ptr [ebp-5],0
>0048F071    je          0048F082
 0048F073    call        @AfterConstruction
 0048F078    pop         dword ptr fs:[0]
 0048F07F    add         esp,0C
 0048F082    mov         eax,dword ptr [ebp-4]
 0048F085    pop         ecx
 0048F086    pop         ecx
 0048F087    pop         ebp
 0048F088    ret
*}
end;

//0048F08C
destructor TIcon.Destroy;
begin
{*
 0048F08C    push        ebp
 0048F08D    mov         ebp,esp
 0048F08F    add         esp,0FFFFFFF8
 0048F092    call        @BeforeDestruction
 0048F097    mov         byte ptr [ebp-5],dl
 0048F09A    mov         dword ptr [ebp-4],eax
 0048F09D    mov         eax,dword ptr [ebp-4]
 0048F0A0    mov         eax,dword ptr [eax+28]
 0048F0A3    call        0048C288
 0048F0A8    mov         dl,byte ptr [ebp-5]
 0048F0AB    and         dl,0FC
 0048F0AE    mov         eax,dword ptr [ebp-4]
 0048F0B1    call        TPersistent.Destroy
 0048F0B6    cmp         byte ptr [ebp-5],0
>0048F0BA    jle         0048F0C4
 0048F0BC    mov         eax,dword ptr [ebp-4]
 0048F0BF    call        @ClassDestroy
 0048F0C4    pop         ecx
 0048F0C5    pop         ecx
 0048F0C6    pop         ebp
 0048F0C7    ret
*}
end;

//0048F0C8
{*procedure sub_0048F0C8(?:?);
begin
 0048F0C8    push        ebp
 0048F0C9    mov         ebp,esp
 0048F0CB    add         esp,0FFFFFFF8
 0048F0CE    mov         dword ptr [ebp-8],edx
 0048F0D1    mov         dword ptr [ebp-4],eax
 0048F0D4    cmp         dword ptr [ebp-8],0
>0048F0D8    je          0048F0EC
 0048F0DA    mov         eax,dword ptr [ebp-8]
 0048F0DD    mov         edx,dword ptr ds:[485DB0];TIcon
 0048F0E3    call        @IsClass
 0048F0E8    test        al,al
>0048F0EA    je          0048F12F
 0048F0EC    cmp         dword ptr [ebp-8],0
>0048F0F0    je          0048F116
 0048F0F2    mov         eax,dword ptr [ebp-8]
 0048F0F5    mov         eax,dword ptr [eax+28]
 0048F0F8    call        0048C278
 0048F0FD    mov         eax,dword ptr [ebp-4]
 0048F100    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F103    call        0048C288
 0048F108    mov         eax,dword ptr [ebp-8]
 0048F10B    mov         eax,dword ptr [eax+28]
 0048F10E    mov         edx,dword ptr [ebp-4]
 0048F111    mov         dword ptr [edx+28],eax;TIcon.FImage:TIconImage
>0048F114    jmp         0048F122
 0048F116    xor         ecx,ecx
 0048F118    xor         edx,edx
 0048F11A    mov         eax,dword ptr [ebp-4]
 0048F11D    call        0048F45C
 0048F122    mov         edx,dword ptr [ebp-4]
 0048F125    mov         eax,dword ptr [ebp-4]
 0048F128    mov         ecx,dword ptr [eax]
 0048F12A    call        dword ptr [ecx+10];TIcon.sub_00489EA4
>0048F12D    jmp         0048F13A
 0048F12F    mov         edx,dword ptr [ebp-8]
 0048F132    mov         eax,dword ptr [ebp-4]
 0048F135    call        004790A8
 0048F13A    pop         ecx
 0048F13B    pop         ecx
 0048F13C    pop         ebp
 0048F13D    ret
end;*}

//0048F140
{*procedure sub_0048F140(?:?; ?:?);
begin
 0048F140    push        ebp
 0048F141    mov         ebp,esp
 0048F143    add         esp,0FFFFFFF4
 0048F146    mov         dword ptr [ebp-0C],ecx
 0048F149    mov         dword ptr [ebp-8],edx
 0048F14C    mov         dword ptr [ebp-4],eax
 0048F14F    mov         dl,byte ptr ds:[48F190];0x1 gvar_0048F190
 0048F155    mov         eax,dword ptr [ebp-8]
 0048F158    call        004885D8
 0048F15D    push        3
 0048F15F    push        0
 0048F161    push        0
 0048F163    push        0
 0048F165    push        0
 0048F167    mov         eax,dword ptr [ebp-4]
 0048F16A    call        0048F1C8
 0048F16F    push        eax
 0048F170    mov         eax,dword ptr [ebp-0C]
 0048F173    mov         eax,dword ptr [eax+4]
 0048F176    push        eax
 0048F177    mov         eax,dword ptr [ebp-0C]
 0048F17A    mov         eax,dword ptr [eax]
 0048F17C    push        eax
 0048F17D    mov         eax,dword ptr [ebp-8]
 0048F180    mov         eax,dword ptr [eax+4]
 0048F183    push        eax
 0048F184    call        user32.DrawIconEx
 0048F189    mov         esp,ebp
 0048F18B    pop         ebp
 0048F18C    ret
end;*}

//0048F194
{*function sub_0048F194:?;
begin
 0048F194    push        ebp
 0048F195    mov         ebp,esp
 0048F197    add         esp,0FFFFFFF4
 0048F19A    mov         dword ptr [ebp-4],eax
 0048F19D    mov         eax,dword ptr [ebp-4]
 0048F1A0    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F1A3    mov         dword ptr [ebp-0C],eax
 0048F1A6    mov         eax,dword ptr [ebp-0C]
 0048F1A9    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>0048F1AD    jne         0048F1B8
 0048F1AF    mov         eax,dword ptr [ebp-0C]
 0048F1B2    cmp         dword ptr [eax+0C],0;TIconImage.FMemoryImage:TCustomMemoryStream
>0048F1B6    je          0048F1BC
 0048F1B8    xor         eax,eax
>0048F1BA    jmp         0048F1BE
 0048F1BC    mov         al,1
 0048F1BE    mov         byte ptr [ebp-5],al
 0048F1C1    mov         al,byte ptr [ebp-5]
 0048F1C4    mov         esp,ebp
 0048F1C6    pop         ebp
 0048F1C7    ret
end;*}

//0048F1C8
{*function sub_0048F1C8(?:TIcon):?;
begin
 0048F1C8    push        ebp
 0048F1C9    mov         ebp,esp
 0048F1CB    add         esp,0FFFFFFF8
 0048F1CE    mov         dword ptr [ebp-4],eax
 0048F1D1    mov         eax,dword ptr [ebp-4]
 0048F1D4    call        0048F244
 0048F1D9    mov         eax,dword ptr [ebp-4]
 0048F1DC    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F1DF    mov         eax,dword ptr [eax+8];TIconImage.FHandle:HICON
 0048F1E2    mov         dword ptr [ebp-8],eax
 0048F1E5    mov         eax,dword ptr [ebp-8]
 0048F1E8    pop         ecx
 0048F1E9    pop         ecx
 0048F1EA    pop         ebp
 0048F1EB    ret
end;*}

//0048F1EC
{*function sub_0048F1EC:?;
begin
 0048F1EC    push        ebp
 0048F1ED    mov         ebp,esp
 0048F1EF    add         esp,0FFFFFFF8
 0048F1F2    mov         dword ptr [ebp-4],eax
 0048F1F5    mov         eax,dword ptr [ebp-4]
 0048F1F8    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F1FB    mov         eax,dword ptr [eax+14]
 0048F1FE    mov         dword ptr [ebp-8],eax
 0048F201    cmp         dword ptr [ebp-8],0
>0048F205    jne         0048F211
 0048F207    push        0C
 0048F209    call        user32.GetSystemMetrics
 0048F20E    mov         dword ptr [ebp-8],eax
 0048F211    mov         eax,dword ptr [ebp-8]
 0048F214    pop         ecx
 0048F215    pop         ecx
 0048F216    pop         ebp
 0048F217    ret
end;*}

//0048F218
{*function sub_0048F218:?;
begin
 0048F218    push        ebp
 0048F219    mov         ebp,esp
 0048F21B    add         esp,0FFFFFFF8
 0048F21E    mov         dword ptr [ebp-4],eax
 0048F221    mov         eax,dword ptr [ebp-4]
 0048F224    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F227    mov         eax,dword ptr [eax+10];TIconImage.FSize:TPoint
 0048F22A    mov         dword ptr [ebp-8],eax
 0048F22D    cmp         dword ptr [ebp-8],0
>0048F231    jne         0048F23D
 0048F233    push        0B
 0048F235    call        user32.GetSystemMetrics
 0048F23A    mov         dword ptr [ebp-8],eax
 0048F23D    mov         eax,dword ptr [ebp-8]
 0048F240    pop         ecx
 0048F241    pop         ecx
 0048F242    pop         ebp
 0048F243    ret
end;*}

//0048F244
procedure sub_0048F244(?:TIcon);
begin
{*
 0048F244    push        ebp
 0048F245    mov         ebp,esp
 0048F247    add         esp,0FFFFFFEC
 0048F24A    mov         dword ptr [ebp-4],eax
 0048F24D    mov         eax,dword ptr [ebp-4]
 0048F250    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F253    mov         dword ptr [ebp-14],eax
 0048F256    mov         eax,dword ptr [ebp-14]
 0048F259    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>0048F25D    jne         0048F2D4
 0048F25F    mov         eax,dword ptr [ebp-14]
 0048F262    cmp         dword ptr [eax+0C],0;TIconImage.FMemoryImage:TCustomMemoryStream
>0048F266    je          0048F2D4
 0048F268    push        0
 0048F26A    push        0
 0048F26C    mov         eax,dword ptr [ebp-14]
 0048F26F    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 0048F272    call        0047BCF4
 0048F277    lea         edx,[ebp-0A]
 0048F27A    mov         ecx,6
 0048F27F    mov         eax,dword ptr [ebp-14]
 0048F282    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 0048F285    call        0047BF28
 0048F28A    mov         ax,word ptr [ebp-8]
 0048F28E    sub         ax,1
>0048F292    jb          0048F298
>0048F294    je          0048F2A2
>0048F296    jmp         0048F2C6
 0048F298    mov         eax,[0055DB28];gvar_0055DB28
 0048F29D    mov         dword ptr [ebp-10],eax
>0048F2A0    jmp         0048F2CB
 0048F2A2    push        6
 0048F2A4    mov         eax,dword ptr [ebp-4]
 0048F2A7    add         eax,2C;TIcon.FRequestedSize:TPoint
 0048F2AA    push        eax
 0048F2AB    mov         eax,dword ptr [ebp-14]
 0048F2AE    add         eax,10;TIconImage.FSize:TPoint
 0048F2B1    push        eax
 0048F2B2    movzx       ecx,word ptr [ebp-6]
 0048F2B6    lea         edx,[ebp-10]
 0048F2B9    mov         eax,dword ptr [ebp-14]
 0048F2BC    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 0048F2BF    call        004895DC
>0048F2C4    jmp         0048F2CB
 0048F2C6    call        InvalidIcon
 0048F2CB    mov         eax,dword ptr [ebp-10]
 0048F2CE    mov         edx,dword ptr [ebp-14]
 0048F2D1    mov         dword ptr [edx+8],eax;TIconImage.FHandle:HICON
 0048F2D4    mov         esp,ebp
 0048F2D6    pop         ebp
 0048F2D7    ret
*}
end;

//0048F2D8
procedure sub_0048F2D8(?:TIcon);
begin
{*
 0048F2D8    push        ebp
 0048F2D9    mov         ebp,esp
 0048F2DB    add         esp,0FFFFFFEC
 0048F2DE    push        ebx
 0048F2DF    push        esi
 0048F2E0    push        edi
 0048F2E1    mov         dword ptr [ebp-4],eax
 0048F2E4    mov         eax,dword ptr [ebp-4]
 0048F2E7    mov         eax,dword ptr [eax+28]
 0048F2EA    mov         dword ptr [ebp-14],eax
 0048F2ED    mov         eax,dword ptr [ebp-14]
 0048F2F0    cmp         dword ptr [eax+0C],0
>0048F2F4    jne         0048F394
 0048F2FA    mov         eax,dword ptr [ebp-14]
 0048F2FD    cmp         dword ptr [eax+8],0
>0048F301    jne         0048F308
 0048F303    call        InvalidIcon
 0048F308    mov         dl,1
 0048F30A    mov         eax,[00476368];TMemoryStream
 0048F30F    call        TObject.Create;TMemoryStream.Create
 0048F314    mov         dword ptr [ebp-8],eax
 0048F317    xor         eax,eax
 0048F319    push        ebp
 0048F31A    push        48F374
 0048F31F    push        dword ptr fs:[eax]
 0048F322    mov         dword ptr fs:[eax],esp
 0048F325    mov         eax,dword ptr [ebp-4]
 0048F328    call        0048F1C8
 0048F32D    cmp         eax,dword ptr ds:[55DB28];gvar_0055DB28
>0048F333    jne         0048F356
 0048F335    lea         eax,[ebp-0E]
 0048F338    xor         ecx,ecx
 0048F33A    mov         edx,6
 0048F33F    call        @FillChar
 0048F344    lea         edx,[ebp-0E]
 0048F347    mov         ecx,6
 0048F34C    mov         eax,dword ptr [ebp-8]
 0048F34F    call        0047BF70
>0048F354    jmp         0048F36A
 0048F356    mov         eax,dword ptr [ebp-4]
 0048F359    call        0048F1C8
 0048F35E    mov         edx,eax
 0048F360    xor         ecx,ecx
 0048F362    mov         eax,dword ptr [ebp-8]
 0048F365    call        00489C44
 0048F36A    xor         eax,eax
 0048F36C    pop         edx
 0048F36D    pop         ecx
 0048F36E    pop         ecx
 0048F36F    mov         dword ptr fs:[eax],edx
>0048F372    jmp         0048F38B
>0048F374    jmp         @HandleAnyException
 0048F379    mov         eax,dword ptr [ebp-8]
 0048F37C    call        TObject.Free
 0048F381    call        @RaiseAgain
 0048F386    call        @DoneExcept
 0048F38B    mov         eax,dword ptr [ebp-14]
 0048F38E    mov         edx,dword ptr [ebp-8]
 0048F391    mov         dword ptr [eax+0C],edx
 0048F394    pop         edi
 0048F395    pop         esi
 0048F396    pop         ebx
 0048F397    mov         esp,ebp
 0048F399    pop         ebp
 0048F39A    ret
*}
end;

//0048F39C
{*procedure sub_0048F39C(?:?);
begin
 0048F39C    push        ebp
 0048F39D    mov         ebp,esp
 0048F39F    add         esp,0FFFFFFEC
 0048F3A2    push        ebx
 0048F3A3    push        esi
 0048F3A4    push        edi
 0048F3A5    mov         dword ptr [ebp-8],edx
 0048F3A8    mov         dword ptr [ebp-4],eax
 0048F3AB    mov         dl,1
 0048F3AD    mov         eax,[00476368];TMemoryStream
 0048F3B2    call        TObject.Create;TMemoryStream.Create
 0048F3B7    mov         dword ptr [ebp-0C],eax
 0048F3BA    xor         eax,eax
 0048F3BC    push        ebp
 0048F3BD    push        48F430
 0048F3C2    push        dword ptr fs:[eax]
 0048F3C5    mov         dword ptr fs:[eax],esp
 0048F3C8    mov         eax,dword ptr [ebp-8]
 0048F3CB    mov         edx,dword ptr [eax]
 0048F3CD    call        dword ptr [edx]
 0048F3CF    push        eax
 0048F3D0    mov         eax,dword ptr [ebp-8]
 0048F3D3    call        0047BCCC
 0048F3D8    pop         edx
 0048F3D9    sub         edx,eax
 0048F3DB    mov         eax,dword ptr [ebp-0C]
 0048F3DE    mov         ecx,dword ptr [eax]
 0048F3E0    call        dword ptr [ecx+4];TMemoryStream.sub_0047C6FC
 0048F3E3    mov         eax,dword ptr [ebp-0C]
 0048F3E6    mov         edx,dword ptr [eax]
 0048F3E8    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0048F3EA    mov         ecx,eax
 0048F3EC    mov         eax,dword ptr [ebp-0C]
 0048F3EF    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0048F3F2    mov         eax,dword ptr [ebp-8]
 0048F3F5    call        0047BF28
 0048F3FA    lea         edx,[ebp-12]
 0048F3FD    mov         ecx,6
 0048F402    mov         eax,dword ptr [ebp-0C]
 0048F405    call        0047BF28
 0048F40A    mov         ax,word ptr [ebp-10]
 0048F40E    sub         ax,2
>0048F412    jb          0048F419
 0048F414    call        InvalidIcon
 0048F419    mov         ecx,dword ptr [ebp-0C]
 0048F41C    xor         edx,edx
 0048F41E    mov         eax,dword ptr [ebp-4]
 0048F421    call        0048F45C
 0048F426    xor         eax,eax
 0048F428    pop         edx
 0048F429    pop         ecx
 0048F42A    pop         ecx
 0048F42B    mov         dword ptr fs:[eax],edx
>0048F42E    jmp         0048F447
>0048F430    jmp         @HandleAnyException
 0048F435    mov         eax,dword ptr [ebp-0C]
 0048F438    call        TObject.Free
 0048F43D    call        @RaiseAgain
 0048F442    call        @DoneExcept
 0048F447    mov         edx,dword ptr [ebp-4]
 0048F44A    mov         eax,dword ptr [ebp-4]
 0048F44D    mov         ecx,dword ptr [eax]
 0048F44F    call        dword ptr [ecx+10];TIcon.sub_00489EA4
 0048F452    pop         edi
 0048F453    pop         esi
 0048F454    pop         ebx
 0048F455    mov         esp,ebp
 0048F457    pop         ebp
 0048F458    ret
end;*}

//0048F45C
{*procedure sub_0048F45C(?:TIcon; ?:?; ?:TMemoryStream);
begin
 0048F45C    push        ebp
 0048F45D    mov         ebp,esp
 0048F45F    add         esp,0FFFFFFF0
 0048F462    push        ebx
 0048F463    push        esi
 0048F464    push        edi
 0048F465    mov         dword ptr [ebp-0C],ecx
 0048F468    mov         dword ptr [ebp-8],edx
 0048F46B    mov         dword ptr [ebp-4],eax
 0048F46E    mov         dl,1
 0048F470    mov         eax,[00485D54];TIconImage
 0048F475    call        TObject.Create;TIconImage.Create
 0048F47A    mov         dword ptr [ebp-10],eax
 0048F47D    xor         eax,eax
 0048F47F    push        ebp
 0048F480    push        48F4A7
 0048F485    push        dword ptr fs:[eax]
 0048F488    mov         dword ptr fs:[eax],esp
 0048F48B    mov         eax,dword ptr [ebp-10]
 0048F48E    mov         edx,dword ptr [ebp-8]
 0048F491    mov         dword ptr [eax+8],edx;TIconImage.FHandle:HICON
 0048F494    mov         eax,dword ptr [ebp-10]
 0048F497    mov         edx,dword ptr [ebp-0C]
 0048F49A    mov         dword ptr [eax+0C],edx;TIconImage.FMemoryImage:TCustomMemoryStream
 0048F49D    xor         eax,eax
 0048F49F    pop         edx
 0048F4A0    pop         ecx
 0048F4A1    pop         ecx
 0048F4A2    mov         dword ptr fs:[eax],edx
>0048F4A5    jmp         0048F4BE
>0048F4A7    jmp         @HandleAnyException
 0048F4AC    mov         eax,dword ptr [ebp-10]
 0048F4AF    call        TObject.Free
 0048F4B4    call        @RaiseAgain
 0048F4B9    call        @DoneExcept
 0048F4BE    mov         eax,dword ptr [ebp-10]
 0048F4C1    call        0048C278
 0048F4C6    mov         eax,dword ptr [ebp-4]
 0048F4C9    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F4CC    call        0048C288
 0048F4D1    mov         eax,dword ptr [ebp-4]
 0048F4D4    mov         edx,dword ptr [ebp-10]
 0048F4D7    mov         dword ptr [eax+28],edx;TIcon.FImage:TIconImage
 0048F4DA    pop         edi
 0048F4DB    pop         esi
 0048F4DC    pop         ebx
 0048F4DD    mov         esp,ebp
 0048F4DF    pop         ebp
 0048F4E0    ret
end;*}

//0048F4E4
procedure sub_0048F4E4(?:TIcon; ?:HICON);
begin
{*
 0048F4E4    push        ebp
 0048F4E5    mov         ebp,esp
 0048F4E7    add         esp,0FFFFFFF8
 0048F4EA    mov         dword ptr [ebp-8],edx
 0048F4ED    mov         dword ptr [ebp-4],eax
 0048F4F0    xor         ecx,ecx
 0048F4F2    mov         edx,dword ptr [ebp-8]
 0048F4F5    mov         eax,dword ptr [ebp-4]
 0048F4F8    call        0048F45C
 0048F4FD    mov         edx,dword ptr [ebp-4]
 0048F500    mov         eax,dword ptr [ebp-4]
 0048F503    mov         ecx,dword ptr [eax]
 0048F505    call        dword ptr [ecx+10]
 0048F508    pop         ecx
 0048F509    pop         ecx
 0048F50A    pop         ebp
 0048F50B    ret
*}
end;

//0048F50C
{*procedure sub_0048F50C(?:?);
begin
 0048F50C    push        ebp
 0048F50D    mov         ebp,esp
 0048F50F    add         esp,0FFFFFFF8
 0048F512    mov         dword ptr [ebp-8],edx
 0048F515    mov         dword ptr [ebp-4],eax
 0048F518    mov         eax,dword ptr [ebp-4]
 0048F51B    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F51E    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>0048F522    jne         0048F52F
 0048F524    mov         eax,dword ptr [ebp-8]
 0048F527    mov         edx,dword ptr [ebp-4]
 0048F52A    mov         dword ptr [edx+30],eax
>0048F52D    jmp         0048F539
 0048F52F    mov         eax,[0055B254];^SChangeIconSize:TResStringRec
 0048F534    call        00488874
 0048F539    pop         ecx
 0048F53A    pop         ecx
 0048F53B    pop         ebp
 0048F53C    ret
end;*}

//0048F540
{*procedure sub_0048F540(?:?);
begin
 0048F540    push        ebp
 0048F541    mov         ebp,esp
 0048F543    add         esp,0FFFFFFF8
 0048F546    mov         byte ptr [ebp-5],dl
 0048F549    mov         dword ptr [ebp-4],eax
 0048F54C    pop         ecx
 0048F54D    pop         ecx
 0048F54E    pop         ebp
 0048F54F    ret
end;*}

//0048F550
{*procedure sub_0048F550(?:?);
begin
 0048F550    push        ebp
 0048F551    mov         ebp,esp
 0048F553    add         esp,0FFFFFFF8
 0048F556    mov         dword ptr [ebp-8],edx
 0048F559    mov         dword ptr [ebp-4],eax
 0048F55C    mov         eax,dword ptr [ebp-4]
 0048F55F    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F562    cmp         dword ptr [eax+8],0;TIconImage.FHandle:HICON
>0048F566    jne         0048F573
 0048F568    mov         eax,dword ptr [ebp-8]
 0048F56B    mov         edx,dword ptr [ebp-4]
 0048F56E    mov         dword ptr [edx+2C],eax;TIcon.FRequestedSize:TPoint
>0048F571    jmp         0048F57D
 0048F573    mov         eax,[0055B254];^SChangeIconSize:TResStringRec
 0048F578    call        00488874
 0048F57D    pop         ecx
 0048F57E    pop         ecx
 0048F57F    pop         ebp
 0048F580    ret
end;*}

//0048F584
{*procedure sub_0048F584(?:?);
begin
 0048F584    push        ebp
 0048F585    mov         ebp,esp
 0048F587    add         esp,0FFFFFFF4
 0048F58A    mov         dword ptr [ebp-8],edx
 0048F58D    mov         dword ptr [ebp-4],eax
 0048F590    mov         eax,dword ptr [ebp-4]
 0048F593    call        0048F2D8
 0048F598    mov         eax,dword ptr [ebp-4]
 0048F59B    mov         eax,dword ptr [eax+28];TIcon.FImage:TIconImage
 0048F59E    mov         eax,dword ptr [eax+0C];TIconImage.FMemoryImage:TCustomMemoryStream
 0048F5A1    mov         dword ptr [ebp-0C],eax
 0048F5A4    mov         eax,dword ptr [ebp-0C]
 0048F5A7    mov         edx,dword ptr [eax]
 0048F5A9    call        dword ptr [edx];TCustomMemoryStream.sub_0047BD10
 0048F5AB    mov         ecx,eax
 0048F5AD    mov         eax,dword ptr [ebp-0C]
 0048F5B0    mov         edx,dword ptr [eax+4];TCustomMemoryStream.FMemory:Pointer
 0048F5B3    mov         eax,dword ptr [ebp-8]
 0048F5B6    call        0047BF70
 0048F5BB    mov         esp,ebp
 0048F5BD    pop         ebp
 0048F5BE    ret
end;*}

//0048F5C0
{*procedure sub_0048F5C0(?:?; ?:?);
begin
 0048F5C0    push        ebp
 0048F5C1    mov         ebp,esp
 0048F5C3    add         esp,0FFFFFFF4
 0048F5C6    mov         dword ptr [ebp-0C],ecx
 0048F5C9    mov         word ptr [ebp-6],dx
 0048F5CD    mov         dword ptr [ebp-4],eax
 0048F5D0    mov         eax,[0055B0EC];^SIconToClipboard:TResStringRec
 0048F5D5    call        00488874
 0048F5DA    mov         esp,ebp
 0048F5DC    pop         ebp
 0048F5DD    ret         4
end;*}

//0048F5E0
{*procedure sub_0048F5E0(?:?; ?:?);
begin
 0048F5E0    push        ebp
 0048F5E1    mov         ebp,esp
 0048F5E3    add         esp,0FFFFFFF4
 0048F5E6    mov         dword ptr [ebp-0C],ecx
 0048F5E9    mov         dword ptr [ebp-8],edx
 0048F5EC    mov         dword ptr [ebp-4],eax
 0048F5EF    mov         eax,[0055B0EC];^SIconToClipboard:TResStringRec
 0048F5F4    call        00488874
 0048F5F9    mov         esp,ebp
 0048F5FB    pop         ebp
 0048F5FC    ret         4
end;*}

//0048F600
procedure InitScreenLogPixels;
begin
{*
 0048F600    push        ebp
 0048F601    mov         ebp,esp
 0048F603    push        ecx
 0048F604    push        0
 0048F606    call        user32.GetDC
 0048F60B    mov         dword ptr [ebp-4],eax
 0048F60E    push        5A
 0048F610    mov         eax,dword ptr [ebp-4]
 0048F613    push        eax
 0048F614    call        gdi32.GetDeviceCaps
 0048F619    mov         [0055DB18],eax;gvar_0055DB18
 0048F61E    mov         eax,dword ptr [ebp-4]
 0048F621    push        eax
 0048F622    push        0
 0048F624    call        user32.ReleaseDC
 0048F629    mov         eax,54109C
 0048F62E    mov         edx,0F
 0048F633    call        00489028
 0048F638    mov         [0055DB10],eax;gvar_0055DB10
 0048F63D    pop         ecx
 0048F63E    pop         ebp
 0048F63F    ret
*}
end;

//0048F640
{*function sub_0048F640:?;
begin
 0048F640    push        ebp
 0048F641    mov         ebp,esp
 0048F643    add         esp,0FFFFFFC0
 0048F646    mov         byte ptr [ebp-1],1
 0048F64A    push        0
 0048F64C    call        user32.GetDC
 0048F651    mov         dword ptr [ebp-8],eax
 0048F654    cmp         dword ptr [ebp-8],0
>0048F658    je          0048F68F
 0048F65A    mov         eax,[0055DB24];gvar_0055DB24
 0048F65F    push        eax
 0048F660    mov         eax,dword ptr [ebp-8]
 0048F663    push        eax
 0048F664    call        gdi32.SelectObject
 0048F669    test        eax,eax
>0048F66B    je          0048F684
 0048F66D    lea         eax,[ebp-40]
 0048F670    push        eax
 0048F671    mov         eax,dword ptr [ebp-8]
 0048F674    push        eax
 0048F675    call        gdi32.GetTextMetricsA
 0048F67A    test        eax,eax
>0048F67C    je          0048F684
 0048F67E    mov         al,byte ptr [ebp-0C]
 0048F681    mov         byte ptr [ebp-1],al
 0048F684    mov         eax,dword ptr [ebp-8]
 0048F687    push        eax
 0048F688    push        0
 0048F68A    call        user32.ReleaseDC
 0048F68F    mov         al,byte ptr [ebp-1]
 0048F692    mov         esp,ebp
 0048F694    pop         ebp
 0048F695    ret
end;*}

//0048F698
procedure InitDefFontData;
begin
{*
 0048F698    push        ebp
 0048F699    mov         ebp,esp
 0048F69B    push        ecx
 0048F69C    push        esi
 0048F69D    push        edi
 0048F69E    push        48
 0048F6A0    mov         eax,[0055DB18];gvar_0055DB18
 0048F6A5    push        eax
 0048F6A6    push        8
 0048F6A8    call        kernel32.MulDiv
 0048F6AD    neg         eax
 0048F6AF    mov         [00540DD4],eax
 0048F6B4    mov         eax,[0055B70C];^gvar_0055D9C4:Integer
 0048F6B9    cmp         byte ptr [eax+0C],0
>0048F6BD    je          0048F6FA
 0048F6BF    call        0048F640
 0048F6C4    mov         byte ptr [ebp-1],al
 0048F6C7    mov         al,byte ptr [ebp-1]
 0048F6CA    sub         al,80
>0048F6CC    jne         0048F6FA
 0048F6CE    mov         esi,48F700
 0048F6D3    mov         edi,540DDB
 0048F6D8    movs        dword ptr [edi],dword ptr [esi]
 0048F6D9    movs        dword ptr [edi],dword ptr [esi]
 0048F6DA    movs        dword ptr [edi],dword ptr [esi]
 0048F6DB    movs        dword ptr [edi],dword ptr [esi]
 0048F6DC    push        48
 0048F6DE    mov         eax,[0055DB18];gvar_0055DB18
 0048F6E3    push        eax
 0048F6E4    push        9
 0048F6E6    call        kernel32.MulDiv
 0048F6EB    neg         eax
 0048F6ED    mov         [00540DD4],eax
 0048F6F2    mov         al,byte ptr [ebp-1]
 0048F6F5    mov         [00540DDA],al
 0048F6FA    pop         edi
 0048F6FB    pop         esi
 0048F6FC    pop         ecx
 0048F6FD    pop         ebp
 0048F6FE    ret
*}
end;

//0048F76C
constructor TPatternManager.Create;
begin
{*
 0048F76C    push        ebp
 0048F76D    mov         ebp,esp
 0048F76F    add         esp,0FFFFFFF8
 0048F772    test        dl,dl
>0048F774    je          0048F77E
 0048F776    add         esp,0FFFFFFF0
 0048F779    call        @ClassCreate
 0048F77E    mov         byte ptr [ebp-5],dl
 0048F781    mov         dword ptr [ebp-4],eax
 0048F784    mov         eax,dword ptr [ebp-4]
 0048F787    add         eax,8
 0048F78A    push        eax
 0048F78B    call        kernel32.InitializeCriticalSection
 0048F790    mov         eax,dword ptr [ebp-4]
 0048F793    cmp         byte ptr [ebp-5],0
>0048F797    je          0048F7A8
 0048F799    call        @AfterConstruction
 0048F79E    pop         dword ptr fs:[0]
 0048F7A5    add         esp,0C
 0048F7A8    mov         eax,dword ptr [ebp-4]
 0048F7AB    pop         ecx
 0048F7AC    pop         ecx
 0048F7AD    pop         ebp
 0048F7AE    ret
*}
end;

//0048F7E8
{*procedure sub_0048F7E8(?:?);
begin
 0048F7E8    push        ebp
 0048F7E9    mov         ebp,esp
 0048F7EB    push        ecx
 0048F7EC    mov         dword ptr [ebp-4],eax
 0048F7EF    mov         eax,dword ptr [ebp-4]
 0048F7F2    add         eax,8
 0048F7F5    push        eax
 0048F7F6    call        kernel32.EnterCriticalSection
 0048F7FB    pop         ecx
 0048F7FC    pop         ebp
 0048F7FD    ret
end;*}

//0048F800
{*procedure sub_0048F800(?:?);
begin
 0048F800    push        ebp
 0048F801    mov         ebp,esp
 0048F803    push        ecx
 0048F804    mov         dword ptr [ebp-4],eax
 0048F807    mov         eax,dword ptr [ebp-4]
 0048F80A    add         eax,8
 0048F80D    push        eax
 0048F80E    call        kernel32.LeaveCriticalSection
 0048F813    pop         ecx
 0048F814    pop         ebp
 0048F815    ret
end;*}

//0048F818
{*function sub_0048F818(?:?; ?:?; ?:?):?;
begin
 0048F818    push        ebp
 0048F819    mov         ebp,esp
 0048F81B    add         esp,0FFFFFFEC
 0048F81E    mov         dword ptr [ebp-0C],ecx
 0048F821    mov         dword ptr [ebp-8],edx
 0048F824    mov         dword ptr [ebp-4],eax
 0048F827    mov         eax,dword ptr [ebp-4]
 0048F82A    call        0048F7E8
 0048F82F    xor         eax,eax
 0048F831    push        ebp
 0048F832    push        48F8D5
 0048F837    push        dword ptr fs:[eax]
 0048F83A    mov         dword ptr fs:[eax],esp
 0048F83D    mov         eax,dword ptr [ebp-4]
 0048F840    mov         eax,dword ptr [eax+4]
 0048F843    mov         dword ptr [ebp-10],eax
>0048F846    jmp         0048F850
 0048F848    mov         eax,dword ptr [ebp-10]
 0048F84B    mov         eax,dword ptr [eax]
 0048F84D    mov         dword ptr [ebp-10],eax
 0048F850    cmp         dword ptr [ebp-10],0
>0048F854    je          0048F86C
 0048F856    mov         eax,dword ptr [ebp-10]
 0048F859    mov         eax,dword ptr [eax+8]
 0048F85C    cmp         eax,dword ptr [ebp-8]
>0048F85F    jne         0048F848
 0048F861    mov         eax,dword ptr [ebp-10]
 0048F864    mov         eax,dword ptr [eax+0C]
 0048F867    cmp         eax,dword ptr [ebp-0C]
>0048F86A    jne         0048F848
 0048F86C    cmp         dword ptr [ebp-10],0
>0048F870    jne         0048F8BF
 0048F872    mov         eax,10
 0048F877    call        @GetMem
 0048F87C    mov         dword ptr [ebp-10],eax
 0048F87F    mov         eax,dword ptr [ebp-10]
 0048F882    mov         dword ptr [ebp-14],eax
 0048F885    mov         eax,dword ptr [ebp-4]
 0048F888    mov         eax,dword ptr [eax+4]
 0048F88B    mov         edx,dword ptr [ebp-14]
 0048F88E    mov         dword ptr [edx],eax
 0048F890    mov         ecx,dword ptr [ebp-0C]
 0048F893    mov         edx,dword ptr [ebp-8]
 0048F896    mov         eax,dword ptr [ebp-4]
 0048F899    call        0048F8E4
 0048F89E    mov         edx,dword ptr [ebp-14]
 0048F8A1    mov         dword ptr [edx+4],eax
 0048F8A4    mov         eax,dword ptr [ebp-14]
 0048F8A7    mov         edx,dword ptr [ebp-8]
 0048F8AA    mov         dword ptr [eax+8],edx
 0048F8AD    mov         eax,dword ptr [ebp-14]
 0048F8B0    mov         edx,dword ptr [ebp-0C]
 0048F8B3    mov         dword ptr [eax+0C],edx
 0048F8B6    mov         eax,dword ptr [ebp-4]
 0048F8B9    mov         edx,dword ptr [ebp-10]
 0048F8BC    mov         dword ptr [eax+4],edx
 0048F8BF    xor         eax,eax
 0048F8C1    pop         edx
 0048F8C2    pop         ecx
 0048F8C3    pop         ecx
 0048F8C4    mov         dword ptr fs:[eax],edx
 0048F8C7    push        48F8DC
 0048F8CC    mov         eax,dword ptr [ebp-4]
 0048F8CF    call        0048F800
 0048F8D4    ret
>0048F8D5    jmp         @HandleFinally
>0048F8DA    jmp         0048F8CC
 0048F8DC    mov         eax,dword ptr [ebp-10]
 0048F8DF    mov         esp,ebp
 0048F8E1    pop         ebp
 0048F8E2    ret
end;*}

//0048F8E4
{*function sub_0048F8E4(?:?; ?:?; ?:?):?;
begin
 0048F8E4    push        ebp
 0048F8E5    mov         ebp,esp
 0048F8E7    add         esp,0FFFFFFD4
 0048F8EA    push        ebx
 0048F8EB    push        esi
 0048F8EC    push        edi
 0048F8ED    mov         dword ptr [ebp-0C],ecx
 0048F8F0    mov         dword ptr [ebp-8],edx
 0048F8F3    mov         dword ptr [ebp-4],eax
 0048F8F6    mov         dl,1
 0048F8F8    mov         eax,[00485C6C];TBitmap
 0048F8FD    call        TBitmap.Create;TBitmap.Create
 0048F902    mov         dword ptr [ebp-10],eax
 0048F905    xor         eax,eax
 0048F907    push        ebp
 0048F908    push        48F9E1
 0048F90D    push        dword ptr fs:[eax]
 0048F910    mov         dword ptr fs:[eax],esp
 0048F913    mov         edx,8
 0048F918    mov         eax,dword ptr [ebp-10]
 0048F91B    mov         ecx,dword ptr [eax]
 0048F91D    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 0048F920    mov         edx,8
 0048F925    mov         eax,dword ptr [ebp-10]
 0048F928    mov         ecx,dword ptr [eax]
 0048F92A    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 0048F92D    mov         eax,dword ptr [ebp-10]
 0048F930    call        TBitmap.GetCanvas
 0048F935    mov         dword ptr [ebp-1C],eax
 0048F938    mov         eax,dword ptr [ebp-1C]
 0048F93B    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0048F93E    xor         edx,edx
 0048F940    call        TBrush.SetStyle
 0048F945    mov         eax,dword ptr [ebp-1C]
 0048F948    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0048F94B    mov         edx,dword ptr [ebp-8]
 0048F94E    call        TBrush.SetColor
 0048F953    mov         eax,dword ptr [ebp-10]
 0048F956    mov         edx,dword ptr [eax]
 0048F958    call        dword ptr [edx+20];TBitmap.sub_0048D614
 0048F95B    push        eax
 0048F95C    lea         eax,[ebp-2C]
 0048F95F    push        eax
 0048F960    mov         eax,dword ptr [ebp-10]
 0048F963    mov         edx,dword ptr [eax]
 0048F965    call        dword ptr [edx+2C];TBitmap.sub_0048D878
 0048F968    mov         ecx,eax
 0048F96A    xor         edx,edx
 0048F96C    xor         eax,eax
 0048F96E    call        Rect
 0048F973    lea         edx,[ebp-2C]
 0048F976    mov         eax,dword ptr [ebp-1C]
 0048F979    call        TCanvas.FillRect
 0048F97E    xor         eax,eax
 0048F980    mov         dword ptr [ebp-18],eax
 0048F983    xor         eax,eax
 0048F985    mov         dword ptr [ebp-14],eax
 0048F988    mov         eax,dword ptr [ebp-18]
 0048F98B    and         eax,80000001
>0048F990    jns         0048F997
 0048F992    dec         eax
 0048F993    or          eax,0FFFFFFFE
 0048F996    inc         eax
 0048F997    mov         edx,dword ptr [ebp-14]
 0048F99A    and         edx,80000001
>0048F9A0    jns         0048F9A7
 0048F9A2    dec         edx
 0048F9A3    or          edx,0FFFFFFFE
 0048F9A6    inc         edx
 0048F9A7    cmp         eax,edx
>0048F9A9    jne         0048F9BD
 0048F9AB    mov         eax,dword ptr [ebp-0C]
 0048F9AE    push        eax
 0048F9AF    mov         ecx,dword ptr [ebp-18]
 0048F9B2    mov         edx,dword ptr [ebp-14]
 0048F9B5    mov         eax,dword ptr [ebp-1C]
 0048F9B8    call        0048841C
 0048F9BD    inc         dword ptr [ebp-14]
 0048F9C0    cmp         dword ptr [ebp-14],9
>0048F9C4    jne         0048F988
 0048F9C6    inc         dword ptr [ebp-18]
 0048F9C9    cmp         dword ptr [ebp-18],9
>0048F9CD    jne         0048F983
 0048F9CF    mov         eax,dword ptr [ebp-10]
 0048F9D2    call        0048D108
 0048F9D7    xor         eax,eax
 0048F9D9    pop         edx
 0048F9DA    pop         ecx
 0048F9DB    pop         ecx
 0048F9DC    mov         dword ptr fs:[eax],edx
>0048F9DF    jmp         0048F9F8
>0048F9E1    jmp         @HandleAnyException
 0048F9E6    mov         eax,dword ptr [ebp-10]
 0048F9E9    call        TObject.Free
 0048F9EE    call        @RaiseAgain
 0048F9F3    call        @DoneExcept
 0048F9F8    mov         eax,dword ptr [ebp-10]
 0048F9FB    pop         edi
 0048F9FC    pop         esi
 0048F9FD    pop         ebx
 0048F9FE    mov         esp,ebp
 0048FA00    pop         ebp
 0048FA01    ret
end;*}

//0048FA88
{*function sub_0048FA88(?:?; ?:?):?;
begin
 0048FA88    push        ebp
 0048FA89    mov         ebp,esp
 0048FA8B    add         esp,0FFFFFFF4
 0048FA8E    mov         dword ptr [ebp-8],edx
 0048FA91    mov         dword ptr [ebp-4],eax
 0048FA94    cmp         dword ptr ds:[55DB6C],0;gvar_0055DB6C
>0048FA9B    je          0048FAC3
 0048FA9D    mov         eax,dword ptr [ebp-8]
 0048FAA0    call        00486830
 0048FAA5    push        eax
 0048FAA6    mov         eax,dword ptr [ebp-4]
 0048FAA9    call        00486830
 0048FAAE    mov         edx,eax
 0048FAB0    mov         eax,[0055DB6C];gvar_0055DB6C
 0048FAB5    pop         ecx
 0048FAB6    call        0048F818
 0048FABB    mov         eax,dword ptr [eax+4]
 0048FABE    mov         dword ptr [ebp-0C],eax
>0048FAC1    jmp         0048FAC8
 0048FAC3    xor         eax,eax
 0048FAC5    mov         dword ptr [ebp-0C],eax
 0048FAC8    mov         eax,dword ptr [ebp-0C]
 0048FACB    mov         esp,ebp
 0048FACD    pop         ebp
 0048FACE    ret
end;*}

Initialization
//0048FBA4
{*
 0048FBA4    sub         dword ptr ds:[55DB14],1
>0048FBAB    jae         0048FC9E
 0048FBB1    call        InitScreenLogPixels
 0048FBB6    push        55DB2C;gvar_0055DB2C
 0048FBBB    call        kernel32.InitializeCriticalSection
 0048FBC0    push        55DB44
 0048FBC5    call        kernel32.InitializeCriticalSection
 0048FBCA    push        7
 0048FBCC    call        gdi32.GetStockObject
 0048FBD1    mov         [0055DB1C],eax;gvar_0055DB1C
 0048FBD6    push        5
 0048FBD8    call        gdi32.GetStockObject
 0048FBDD    mov         [0055DB20],eax;gvar_0055DB20
 0048FBE2    push        0D
 0048FBE4    call        gdi32.GetStockObject
 0048FBE9    mov         [0055DB24],eax;gvar_0055DB24
 0048FBEE    push        7F00
 0048FBF3    push        0
 0048FBF5    call        user32.LoadIconA
 0048FBFA    mov         [0055DB28],eax;gvar_0055DB28
 0048FBFF    call        InitDefFontData
 0048FC04    mov         cx,2C
 0048FC08    mov         dl,1
 0048FC0A    mov         eax,[00485EAC];TResourceManager
 0048FC0F    call        TResourceManager.Create
 0048FC14    mov         [0055DB5C],eax;gvar_0055DB5C
 0048FC19    mov         cx,10
 0048FC1D    mov         dl,1
 0048FC1F    mov         eax,[00485EAC];TResourceManager
 0048FC24    call        TResourceManager.Create
 0048FC29    mov         [0055DB60],eax;gvar_0055DB60
 0048FC2E    mov         cx,10
 0048FC32    mov         dl,1
 0048FC34    mov         eax,[00485EAC];TResourceManager
 0048FC39    call        TResourceManager.Create
 0048FC3E    mov         [0055DB64],eax;gvar_0055DB64
 0048FC43    mov         dl,1
 0048FC45    mov         eax,[0048F710];TPatternManager
 0048FC4A    call        TPatternManager.Create
 0048FC4F    mov         [0055DB6C],eax;gvar_0055DB6C
 0048FC54    mov         dl,1
 0048FC56    mov         eax,[00475A24];TThreadList
 0048FC5B    call        TThreadList.Create
 0048FC60    mov         [00541088],eax;gvar_00541088
 0048FC65    mov         dl,1
 0048FC67    mov         eax,[00475A24];TThreadList
 0048FC6C    call        TThreadList.Create
 0048FC71    mov         [0055DB68],eax;gvar_0055DB68
 0048FC76    mov         ecx,486860;ColorToIdent:Boolean
 0048FC7B    mov         edx,486888;IdentToColor:Boolean
 0048FC80    mov         eax,[00484DF4];TColor
 0048FC85    call        RegisterIntegerConsts
 0048FC8A    mov         ecx,486AC8;CharsetToIdent:Boolean
 0048FC8F    mov         edx,486AF0;IdentToCharset:Boolean
 0048FC94    mov         eax,[00484F24];TFontCharset
 0048FC99    call        RegisterIntegerConsts
 0048FC9E    ret
*}
Finalization
//0048FAD0
{*
 0048FAD0    push        ebp
 0048FAD1    mov         ebp,esp
 0048FAD3    xor         eax,eax
 0048FAD5    push        ebp
 0048FAD6    push        48FB99
 0048FADB    push        dword ptr fs:[eax]
 0048FADE    mov         dword ptr fs:[eax],esp
 0048FAE1    inc         dword ptr ds:[55DB14]
>0048FAE7    jne         0048FB8B
 0048FAED    mov         eax,[0055DB6C];gvar_0055DB6C
 0048FAF2    call        TObject.Free
 0048FAF7    mov         eax,[00541084];gvar_00541084:TFileFormatsList
 0048FAFC    call        TObject.Free
 0048FB01    mov         eax,[00541080];gvar_00541080:TClipboardFormats
 0048FB06    call        TObject.Free
 0048FB0B    call        FreeMemoryContexts
 0048FB10    mov         eax,[00541088];gvar_00541088
 0048FB15    call        TObject.Free
 0048FB1A    mov         eax,[0055DB68];gvar_0055DB68
 0048FB1F    call        TObject.Free
 0048FB24    mov         eax,[0055DB5C];gvar_0055DB5C
 0048FB29    call        TObject.Free
 0048FB2E    mov         eax,[0055DB60];gvar_0055DB60
 0048FB33    call        TObject.Free
 0048FB38    mov         eax,[0055DB64];gvar_0055DB64
 0048FB3D    call        TObject.Free
 0048FB42    mov         eax,[0055DB10];gvar_0055DB10
 0048FB47    push        eax
 0048FB48    call        gdi32.DeleteObject
 0048FB4D    push        55DB2C;gvar_0055DB2C
 0048FB52    call        kernel32.DeleteCriticalSection
 0048FB57    push        55DB44
 0048FB5C    call        kernel32.DeleteCriticalSection
 0048FB61    mov         eax,540FA0
 0048FB66    mov         ecx,12
 0048FB6B    mov         edx,dword ptr ds:[476C40];TIdentMapEntry
 0048FB71    call        @FinalizeArray
 0048FB76    mov         eax,540E00
 0048FB7B    mov         ecx,34
 0048FB80    mov         edx,dword ptr ds:[476C40];TIdentMapEntry
 0048FB86    call        @FinalizeArray
 0048FB8B    xor         eax,eax
 0048FB8D    pop         edx
 0048FB8E    pop         ecx
 0048FB8F    pop         ecx
 0048FB90    mov         dword ptr fs:[eax],edx
 0048FB93    push        48FBA0
 0048FB98    ret
>0048FB99    jmp         @HandleFinally
>0048FB9E    jmp         0048FB98
 0048FBA0    pop         ebp
 0048FBA1    ret
*}
end.