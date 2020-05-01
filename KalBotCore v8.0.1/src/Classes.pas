//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Classes;

interface

uses
  SysUtils, Classes, MainUnit, system, Buttons;

type
  TAlignment = (taLeftJustify, taRightJustify, taCenter);
  TLeftRight = (taLeftJustify, taRightJustify);
  TBiDiMode = (bdLeftToRight, bdRightToLeft, bdRightToLeftNoAlign, bdRightToLeftReadingOnly);
  _Enum_37_1 = (ssShift, ssAlt, ssCtrl, ssLeft, ssRight, ssMiddle, ssDouble);
  TShiftState = set of _Enum_37_1;
  THelpType = (htKeyword, htContext);
  TNotifyEvent = procedure(Sender:TObject) of object;;
  EStreamError = class(Exception)
  end;
  EFileStreamError = class(EStreamError)
  end;
  EFCreateError = class(EFileStreamError)
  end;
  EFOpenError = class(EFileStreamError)
  end;
  EFilerError = class(EStreamError)
  end;
  EReadError = class(EFilerError)
  end;
  EWriteError = class(EFilerError)
  end;
  EClassNotFound = class(EFilerError)
  end;
  EResNotFound = class(Exception)
  end;
  EListError = class(Exception)
  end;
  EBitsError = class(Exception)
  end;
  EStringListError = class(Exception)
  end;
  EComponentError = class(Exception)
  end;
  EOutOfResources = class(EOutOfMemory)
  end;
  EInvalidOperation = class(Exception)
  end;
  TList = class(TObject)
  public
    FList:PPointerList;//f4
    FCount:Integer;//f8
    FCapacity:Integer;//fC
    destructor Destroy; virtual;//004785C4
    procedure v0; virtual;//v0//00478838
    //procedure v4(?:?; ?:?); virtual;//v4//00478BFC
    procedure v8; virtual;//v8//00478648
    procedure vC; virtual;//vC//00478704
    function Add(Item:Pointer):Integer;//004785F0
    function Get(Index:Integer):Pointer;//004787F0
  end;
  TThreadList = class(TObject)
  public
    FList:TList;//f4
    FLock:TRTLCriticalSection;//f8
    FDuplicates:TDuplicates;//f20
    constructor Create;//00478C10
    destructor Destroy;//00478C78
    function LockList:TList;//00478D80
    procedure UnlockList;//00478DFC
  end;
  TBits = class(TObject)
  public
    FSize:Integer;//f4
    FBits:Pointer;//f8
    procedure Error;//00478E50
    procedure SetSize(Value:Integer);//00478E9C
    procedure SetBit(Index:Integer; Value:Boolean);//00478F70
    function GetBit(Index:Integer):Boolean;//00478F9C
  end;
  TPersistent = class(TObject)
  public
    destructor Destroy; virtual;//0047906C
    //procedure v0(?:?); virtual;//v0//004791AC
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004791C8
    //procedure v8(?:?); virtual;//v8//004790A8
    //procedure sub_004791D8(?:?); dynamic;//004791D8
    procedure sub_00479290; dynamic;//00479290
  end;
  TInterfacedPersistent = class(TPersistent)
  public
    FOwnerInterface:IInterface;//f4
    procedure AfterConstruction; virtual;//004792A8
    //function vC(?:?; ?:?):?; virtual;//vC//00479364
  end;
  TRecall = class(TObject)
  public
    FStorage:TPersistent;//f4
    FReference:TPersistent;//f8
  end;
  TCollectionItem = class(TPersistent)
  public
    FCollection:TCollection;//f4
    FID:Integer;//f8
    destructor Destroy; virtual;//004795F0
    //procedure vC(?:?); virtual;//vC//004796AC
    //procedure v10(?:?); virtual;//v10//004797BC
    //procedure v14(?:?); virtual;//v14//0047981C
    //procedure v18(?:?); virtual;//v18//00479800
    constructor v1C; virtual;//v1C//004795A8
    //procedure sub_004791D8(?:?); dynamic;//004796E0
    procedure sub_00479290; dynamic;//004797A0
    function GetIndex:Integer;//00479674
  end;
  TCollection = class(TPersistent)
  public
    FItemClass:TCollectionItemClass;//f4
    FItems:TList;//f8
    FUpdateCount:Integer;//fC
    FNextID:Integer;//f10
    FPropName:String;//f14
    destructor Destroy; virtual;//004798C8
    //procedure v8(?:?); virtual;//v8//00479958
    //procedure vC(?:?); virtual;//vC//00479F5C
    //procedure v10(?:?); virtual;//v10//00479F6C
    //procedure v14(?:?; ?:?); virtual;//v14//00479F7C
    //procedure v18(?:?); virtual;//v18//00479ED8
    //procedure v1C(?:?); virtual;//v1C//00479EE8
    procedure v20; virtual;//v20//004799FC
    procedure v24; virtual;//v24//00479A94
    //procedure sub_00479B38(?:?; ?:?; ?:?); dynamic;//00479B38
    //procedure sub_00479B1C(?:?; ?:?); dynamic;//00479B1C
    procedure sub_00479B04; dynamic;//00479B04
    //procedure sub_004791D8(?:?); dynamic;//00479BA0
    constructor Create;//00479864
    procedure Clear;//00479A2C
  end;
  TOwnedCollection = class(TCollection)
  public
    .FOwner:TPersistent;//f18
    procedure sub_00479290; dynamic;//0047A008
  end;
  TStrings = class(TPersistent)
  public
    FDefined:TStringsDefined;//f4
    FDelimiter:Char;//f5
    FQuoteChar:Char;//f6
    FNameValueSeparator:Char;//f7
    FUpdateCount:Integer;//f8
    FAdapter:IStringsAdapter;//fC
    destructor Destroy; virtual;//0047A024
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0047A2AC
    //procedure v8(?:?); virtual;//v8//0047A184
    procedure vC; virtual; abstract;//vC//00402C24
    //function v10:?; virtual;//v10//0047A5F4
    procedure v14; virtual; abstract;//v14//00402C24
    //function v18(?:?):?; virtual;//v18//0047A674
    //procedure v1C(?:?); virtual;//v1C//0047A6E8
    //procedure v20(?:?; ?:?); virtual;//v20//0047AC78
    //procedure v24(?:?; ?:?); virtual;//v24//0047ACB8
    //procedure v28(?:?); virtual;//v28//0047AE3C
    //procedure v2C(?:?); virtual;//v2C//0047AEF0
    //procedure v30(?:?); virtual;//v30//0047AFD0
    //function v34(?:?; ?:?):?; virtual;//v34//0047B2A4
    //function v38(?:?):?; virtual;//v38//0047A060
    //function v3C(?:?; ?:?):?; virtual;//v3C//0047A090
    //procedure v40(?:?); virtual;//v40//0047A0C4
    procedure Clear; virtual; abstract;//v44//00402C24
    procedure v48; virtual; abstract;//v48//00402C24
    //procedure v4C(?:?; ?:?); virtual;//v4C//0047A478
    //function v50:?; virtual;//v50//0047A68C
    //function v54(?:?):?; virtual;//v54//0047A8C4
    //function v58(?:?):?; virtual;//v58//0047A950
    //function v5C(?:?):?; virtual;//v5C//0047AA2C
    procedure v60; virtual; abstract;//v60//00402C24
    //procedure v64(?:?; ?:?; ?:?); virtual;//v64//0047AA78
    //procedure v68(?:?); virtual;//v68//0047AAAC
    //procedure v6C(?:?); virtual;//v6C//0047AB08
    //procedure v70(?:?; ?:?); virtual;//v70//0047ABBC
    //procedure v74(?:?); virtual;//v74//0047AD7C
    //procedure v78(?:?); virtual;//v78//0047ADDC
    //procedure v7C(?:?); virtual;//v7C//0047AE98
    procedure BeginUpdate;//0047A228
    procedure EndUpdate;//0047A2F8
    procedure ReadData(Reader:TReader);//0047ACCC
    procedure WriteData(Writer:TWriter);//0047AFE0
  end;
  TStringItem = TStringItem = record//size=8
f0:String;//f0
end;;
  TStringList = class(TStrings)
  public
    FList:PStringItemList;//f10
    FCount:Integer;//f14
    FCapacity:Integer;//f18
    FSorted:Boolean;//f1C
    FDuplicates:TDuplicates;//f1D
    FCaseSensitive:Boolean;//f1E
    FOnChange:TNotifyEvent;//f20
    f22:word;//f22
    f24:dword;//f24
    FOnChanging:TNotifyEvent;//f28
    f2A:word;//f2A
    f2C:dword;//f2C
    destructor Destroy; virtual;//0047B328
    //procedure vC(?:?; ?:?); virtual;//vC//0047B710
    //function v10:?; virtual;//v10//0047B75C
    //function v14:?; virtual;//v14//0047B778
    //function v18(?:?):?; virtual;//v18//0047B794
    //procedure v20(?:?; ?:?); virtual;//v20//0047B9B8
    //procedure v24(?:?; ?:?); virtual;//v24//0047BA30
    //procedure v28(?:?); virtual;//v28//0047BB50
    //procedure v30(?:?); virtual;//v30//0047BBB4
    //function v34(?:?; ?:?):?; virtual;//v34//0047BC8C
    //function v38(?:?):?; virtual;//v38//0047B3A4
    //function v3C(?:?; ?:?):?; virtual;//v3C//0047B3CC
    procedure Clear; virtual;//v44//0047B49C
    //procedure v48(?:?); virtual;//v48//0047B4F0
    //procedure v4C(?:?; ?:?); virtual;//v4C//0047B590
    //function v54(?:?):?; virtual;//v54//0047B834
    //procedure v60(?:?; ?:?); virtual;//v60//0047B880
    //procedure v64(?:?; ?:?; ?:?); virtual;//v64//0047B8A8
    procedure v80; virtual;//v80//0047B444
    procedure v84; virtual;//v84//0047B470
    //procedure v88(?:?; ?:?; ?:?); virtual;//v88//0047B910
    //function v8C(?:?; ?:?):?; virtual;//v8C//0047B678
    procedure v90; virtual;//v90//0047BC20
    //procedure v94(?:?); virtual;//v94//0047BC3C
  end;
  TStream = class(TObject)
  public
    procedure v0; virtual;//v0//0047BD10
    //procedure v4(?:?); virtual;//v4//0047BD5C
    //procedure v8(?:?; ?:?); virtual;//v8//0047BD88
    procedure vC; virtual; abstract;//vC//00402C24
    procedure v10; virtual; abstract;//v10//00402C24
    //function v14(?:?; ?:?):?; virtual;//v14//0047BE2C
    //procedure v18(?:?; ?:?; ?:?); virtual;//v18//0047BEB8
  end;
  THandleStream = class(TStream)
  public
    ......FHandle:Integer;//f4
    //procedure v4(?:?); virtual;//v4//0047C28C
    //procedure v8(?:?; ?:?); virtual;//v8//0047C2AC
    //function vC(?:?; ?:?):?; virtual;//vC//0047C1E8
    //function v10(?:?; ?:?):?; virtual;//v10//0047C220
    //procedure v18(?:?; ?:?; ?:?); virtual;//v18//0047C258
  end;
  TFileStream = class(THandleStream)
  public
    destructor Destroy; virtual;//0047C48C
    //constructor Create(?:?);//0047C2DC
  end;
  TCustomMemoryStream = class(TStream)
  public
    FMemory:Pointer;//f4
    FSize:Longint;//f8
    FPosition:Longint;//fC
    //function vC(?:?; ?:?):?; virtual;//vC//0047C4FC
    //function v14(?:?; ?:?):?; virtual;//v14//0047C56C
  end;
  TMemoryStream = class(TCustomMemoryStream)
  public
    ....FCapacity:Longint;//f10
    destructor Destroy; virtual;//0047C5C4
    //procedure v4(?:?); virtual;//v4//0047C6FC
    //function v10(?:?; ?:?):?; virtual;//v10//0047C80C
    //function v1C(?:?):?; virtual;//v1C//0047C744
  end;
  TResourceStream = class(TCustomMemoryStream)
  public
    HResInfo:THandle;//f10
    HGlobal:THandle;//f14
    destructor Destroy; virtual;//0047C9F8
    //function v10(?:?; ?:?):?; virtual;//v10//0047CA40
    //constructor Create(?:?; ?:?);//0047C89C
  end;
  TStreamAdapter = class(TInterfacedObject)
  public
    FStream:TStream;//fC
    FOwnership:TStreamOwnership;//f10
    destructor Destroy; virtual;//004840B0
    //function v0(?:?; ?:?; ?:?):?; virtual;//v0//00484100
    //function v4(?:?; ?:?; ?:?):?; virtual;//v4//0048417C
    //function v8(?:?; ?:?; ?:?):?; virtual;//v8//004841F8
    //function vC(?:?; ?:?):?; virtual;//vC//00484288
    //function v10(?:?; ?:?; ?:?; ?:?; ?:?):?; virtual;//v10//004842F8
    //function v14:?; virtual;//v14//0048451C
    //function v18:?; virtual;//v18//00484530
    //function v1C:?; virtual;//v1C//00484544
    //function v20:?; virtual;//v20//00484558
    //function v24(?:?):?; virtual;//v24//0048456C
    //function v28:?; virtual;//v28//0048460C
    //constructor Create(?:?);//00484058
  end;
  TClassFinder = class(TObject)
  public
    FGroups:TList;//f4
    //constructor Create(?:?);//00477844
  end;
  TFiler = class(TObject)
  public
    FStream:TStream;//f4
    FBuffer:Pointer;//f8
    FBufSize:Integer;//fC
    FBufPos:Integer;//f10
    FBufEnd:Integer;//f14
    FRoot:TComponent;//f18
    FLookupRoot:TComponent;//f1C
    FAncestor:TPersistent;//f20
    FIgnoreChildren:Boolean;//f24
    destructor Destroy; virtual;//0047CACC
    //procedure v0(?:?); virtual;//v0//0047CB0C
    procedure v4; virtual; abstract;//v4//00402C24
    procedure v8; virtual; abstract;//v8//00402C24
    procedure vC; virtual; abstract;//vC//00402C24
    constructor Create(Stream:TStream; BufSize:Integer);//0047CA70
  end;
  TReader = class(TFiler)
  public
    FOwner:TComponent;//f28
    FParent:TComponent;//f2C
    FFixups:TList;//f30
    FLoaded:TList;//f34
    FOnFindMethod:TFindMethodEvent;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    FOnSetName:TSetNameEvent;//f40
    f42:word;//f42
    f44:dword;//f44
    FOnReferenceName:TReferenceNameEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FOnAncestorNotFound:TAncestorNotFoundEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    FOnError:TReaderError;//f58
    f5A:word;//f5A
    f5C:dword;//f5C
    FOnFindComponentClass:TFindComponentClassEvent;//f60
    FOnCreateComponent:TCreateComponentEvent;//f68
    FPropName:String;//f70
    FFinder:TClassFinder;//f74
    FCanHandleExcepts:Boolean;//f78
    destructor Destroy; virtual;//0047D2F8
    //procedure v4(?:?; ?:?; ?:?; ?:?); virtual;//v4//0047D378
    //procedure v8(?:?; ?:?; ?:?; ?:?); virtual;//v8//0047D3BC
    procedure vC; virtual;//vC//0047D740
    //function v10(?:?):?; virtual;//v10//0047D4C0
    //function v14(?:?; ?:?):?; virtual;//v14//0047F8B8
    //function v18(?:?; ?:?):?; virtual;//v18//0047D4F8
    //procedure v1C(?:?; ?:?); virtual;//v1C//0047F9AC
    //procedure v20(?:?); virtual;//v20//0047F980
    //procedure v24(?:?; ?:?); virtual;//v24//0047E5E4
    function EndOfList:Boolean;//0047D49C
    function NextValue:TValueType;//0047D8AC
    procedure Read(var Buf:void ; Count:Longint);//0047D8F0
    procedure ReadBuffer;//0047D93C
    procedure ReadCollection(Collection:TCollection);//0047DA14
    function ReadIdent:AnsiString;//0047E3F8
    procedure ReadListBegin;//0047E5BC
    procedure ReadListEnd;//0047E5D0
    function ReadStr:AnsiString;//0047F2D0
    function ReadString:AnsiString;//0047F318
    function ReadValue:TValueType;//0047F4D4
    procedure SkipSetBody;//0047F4F4
    procedure SkipValue;//0047F618
    procedure SkipBytes(Count:Integer);//0047FA84
    function ReadVariant:Variant;//0047FCAC
  end;
  TWriter = class(TFiler)
  public
    FRootAncestor:TComponent;//f28
    FPropPath:String;//f2C
    FAncestorList:TList;//f30
    FAncestorPos:Integer;//f34
    FChildPos:Integer;//f38
    FOnFindAncestor:TFindAncestorEvent;//f40
    FUseQualifiedNames:Boolean;//f48
    destructor Destroy; virtual;//0047FEC0
    //procedure v0(?:?); virtual;//v0//00480024
    //procedure v4(?:?; ?:?; ?:?; ?:?); virtual;//v4//0047FF1C
    //procedure v8(?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v8//0047FF54
    procedure vC; virtual;//vC//0047FFB4
    //procedure v10(?:?); virtual;//v10//00480448
    procedure Write(const Buf:void ; Count:Longint);//00480048
    procedure WriteBuffer;//0048011C
    procedure WriteFloat(const Value:Extended);//004808A8
    procedure WriteIdent(const Ident:AnsiString);//00480948
    procedure WriteInteger(Value:Longint);//00480AA0
    procedure WriteProperties(Instance:TPersistent);//00480B70
    procedure WriteProperty(Instance:TPersistent; PropInfo:PPropInfo);//00481D30
    procedure WriteVariant(const Value:Variant);//00481E7C
    procedure WritePropName(const PropName:AnsiString);//00482288
    procedure WriteWideString(const Value:WideString);//0048245C
    procedure WriteValue(Value:TValueType);//0048251C
    procedure GetLookupInfo(var Ancestor:TPersistent; var Root:TComponent; var LookupRoot:TComponent; var RootAncestor:TComponent);//0048253C
  end;
  EThread = class(Exception)
  end;
  TThread = class(TObject)
  public
    FHandle:THandle;//f4
    FThreadID:THandle;//f8
    FCreateSuspended:Boolean;//fC
    FTerminated:Boolean;//fD
    FSuspended:Boolean;//fE
    FFreeOnTerminate:Boolean;//fF
    FFinished:Boolean;//f10
    FReturnValue:Integer;//f14
    FOnTerminate:TNotifyEvent;//f18
    f1A:word;//f1A
    f1C:TMainForm;//f1C
    FSynchronize:TSynchronizeRecord;//f20
    FFatalException:TObject;//f38
    procedure AfterConstruction; virtual;//00482AEC
    destructor Destroy; virtual;//00482A60
    procedure v0; virtual;//v0//00482BD8
    procedure Execute; virtual; abstract;//v4//00402C24
  end;
  TComponent = class(TPersistent)
  public
    FOwner:TComponent;//f4
    Name:TComponentName;//f8
    Tag:Integer;//fC
    FComponents:TList;//f10
    FFreeNotifies:TList;//f14
    FDesignInfo:Longint;//f18
    FComponentState:TComponentState;//f1C
    f1D:byte;//f1D
    FVCLComObject:Pointer;//f20
    FComponentStyle:TComponentStyle;//f24
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT; virtual;//00483A78
    procedure BeforeDestruction; virtual;//00483004
    destructor Destroy; virtual;//00482F60
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00483420
    procedure vC; virtual;//vC//004835C0
    //procedure v10(?:?; ?:?); virtual;//v10//00483398
    //procedure v14(?:?); virtual;//v14//004835E0
    procedure SetName(Value:TComponentName); virtual;//v18//0048374C
    //procedure v1C(?:?; ?:?); virtual;//v1C//00483AC0
    //procedure v20(?:?; ?:?; ?:?); virtual;//v20//00483618
    //procedure v24(?:?); virtual;//v24//004835FC
    //function v28(?:?; ?:?):?; virtual;//v28//00483AD8
    constructor v2C; virtual;//v2C//00482F04
    //procedure sub_00483A1C(?:?); dynamic;//00483A1C
    procedure sub_004834C8; dynamic;//004834C8
    procedure sub_00483570; dynamic;//00483570
    //procedure sub_004839E8(?:?); dynamic;//004839E8
    //procedure sub_004836D0(?:?); dynamic;//004836D0
    //procedure sub_004836AC(?:?); dynamic;//004836AC
    procedure sub_004835AC; dynamic;//004835AC
    procedure sub_00483598; dynamic;//00483598
    //procedure sub_00483588(?:?); dynamic;//00483588
    //procedure sub_0048355C(?:?; ?:?); dynamic;//0048355C
    procedure sub_004835D4; dynamic;//004835D4
    procedure sub_00483508; dynamic;//00483508
    procedure sub_004834F0; dynamic;//004834F0
    //procedure sub_004834DC(?:?); dynamic;//004834DC
    //procedure sub_004791D8(?:?); dynamic;//00483520
    procedure sub_00479290; dynamic;//00483540
  end;
  TBasicActionLink = class(TObject)
  public
    FOnChange:TNotifyEvent;//f8
    fA:word;//fA
    fC:TSpeedButton;//fC
    FAction:TBasicAction;//f10
    destructor Destroy; virtual;//00483C00
    //procedure v0(?:?); virtual;//v0//00483BF0
    procedure v4; virtual;//v4//00483C48
    //function v8:?; virtual;//v8//00483CF4
    //procedure vC(?:?); virtual;//vC//00483CA8
    procedure v10; virtual;//v10//00483D08
    constructor v14; virtual;//v14//00483BA0
    //function v18(?:?):?; virtual;//v18//00483C70
    //function v1C:?; virtual;//v1C//00483D14
  end;
  TBasicAction = class(TComponent)
  public
    FActionComponent:TComponent;//f30
    FOnChange:TNotifyEvent;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    FOnExecute:TNotifyEvent;//f40
    f42:word;//f42
    f44:dword;//f44
    FOnUpdate:TNotifyEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FClients:TList;//f50
    destructor Destroy; virtual;//00483D90
    //procedure v10(?:?; ?:?); virtual;//v10//00483E30
    constructor v2C; virtual;//v2C//00483D34
    procedure v30; virtual;//v30//00483F5C
    //procedure SetOnExecute(Value:TNotifyEvent; ?:?; ?:?); virtual;//v34//00483EE4
    //function v38(?:?):?; virtual;//v38//00483E08
    //procedure v3C(?:?); virtual;//v3C//00483E6C
    //procedure v40(?:?); virtual;//v40//00483E20
    //function v44:?; virtual;//v44//00483EB0
    procedure sub_00483E7C; dynamic;//00483E7C
  end;
  TIdentMapEntry = TIdentMapEntry = record//size=8
f4:String;//f4
end;;
  TRegGroup = class(TObject)
  public
    FClassList:TList;//f4
    FAliasList:TStringList;//f8
    FGroupClasses:TList;//fC
    FActive:Boolean;//f10
    constructor Create;//00476F6C
  end;
  TRegGroups = class(TObject)
  public
    FGroups:TList;//f4
    FLock:TRTLCriticalSection;//f8
    FActiveClass:TPersistentClass;//f20
    constructor Create;//0047736C
  end;
  TIntConst = class(TObject)
  public
    IntegerType:PTypeInfo;//f4
    IdentToInt:TIdentToInt;//f8
    IntToIdent:TIntToIdent;//fC
  end;
  TPropFixup = class(TObject)
  public
    FInstance:TPersistent;//f4
    FInstanceRoot:TComponent;//f8
    FPropInfo:PPropInfo;//fC
    FRootName:String;//f10
    FName:String;//f14
    //procedure v0(?:?); virtual;//v0//0047CCE0
    constructor Create(Instance:TPersistent; InstanceRoot:TComponent; PropInfo:PPropInfo; const RootName:AnsiString; const Name:AnsiString);//0047CC00
  end;
  TPropIntfFixup = class(TPropFixup)
  public
    //procedure v0(?:?); virtual;//v0//0047CD04
  end;
  _DynArr_37_06 = array of ?;
//elSize = 4;
    function Point(AX:Integer; AY:Integer):TPoint;//00476C64
    //function sub_00476C88(?:?; ?:?):?;//00476C88
    //function sub_00476CB0(?:?; ?:?):?;//00476CB0
    function Rect(const ATopLeft:TPoint; const ABottomRight:TPoint):TRect;//00476CE8
    function Bounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer):TRect;//00476D14
    //function sub_00476D40(?:TPoint):?;//00476D40
    //function sub_00476D6C(?:?):?;//00476D6C
    //procedure sub_00476E44(?:?; ?:?);//00476E44
    //function sub_00476E64(?:?; ?:?):?;//00476E64
    //function sub_00476ED8(?:TRegGroup; ?:Pointer; ?:?; ?:?):?;//00476ED8
    //function sub_00477048(?:Pointer; ?:AnsiString):?;//00477048
    //function sub_004770CC(?:Pointer; ?:?):?;//004770CC
    //procedure sub_00477124(?:?; ?:?);//00477124
    //function sub_004771D0(?:Pointer; ?:?):?;//004771D0
    //function sub_004771F8(?:Pointer; ?:?):?;//004771F8
    //procedure sub_00477228(?:Pointer; ?:?);//00477228
    //procedure sub_00477304(?:?; ?:?);//00477304
    //function sub_00477474(?:?; ?:Pointer):?;//00477474
    //function sub_004774D8(?:?; ?:?):?;//004774D8
    procedure Error;//00477540
    //procedure sub_004775D0(?:?; ?:?; ?:?);//004775D0
    //procedure sub_004776B4(?:?);//004776B4
    //procedure sub_004776CC(?:?; ?:?);//004776CC
    //function sub_004776FC(?:?; ?:?):?;//004776FC
    //procedure sub_00477754(?:?; ?:?);//00477754
    //procedure sub_004777C0(?:?);//004777C0
    //procedure sub_004777D8(?:?; ?:?);//004777D8
    //function sub_004779C8(?:?; ?:?):?;//004779C8
    function GetFieldClassTable(AClass:TClass):PFieldClassTable;//00477A64
    //procedure sub_00477A70(?:?);//00477A70
    //function sub_00477AE0(?:?):?;//00477AE0
    //function sub_00477B38(?:?):?;//00477B38
    procedure RegisterClass(AClass:TPersistentClass);//00477B64
    procedure UnRegisterModuleClasses(Module:HMODULE);//00477BDC
    procedure StartClassGroup(AClass:TPersistentClass);//00477C2C
    procedure GroupDescendentsWith(AClass:TPersistentClass; AClassGroup:TPersistentClass);//00477C7C
    function ActivateClassGroup(AClass:TPersistentClass):TPersistentClass;//00477CD4
    //constructor sub_00477D8C(?:?; ?:?);//00477D8C
    procedure RegisterIntegerConsts(AIntegerType:Pointer; AIdentToInt:TIdentToInt; AIntToIdent:TIntToIdent);//00477DE4
    //function sub_00477E1C(?:?):?;//00477E1C
    //function sub_00477EAC(?:?):?;//00477EAC
    //function sub_00477F3C(?:?; ?:?; ?:?; ?:?):?;//00477F3C
    //function sub_00477F9C(?:?; ?:?; ?:?; ?:?):?;//00477F9C
    procedure RegisterFindGlobalComponentProc(AFindGlobalComponent:TFindGlobalComponent);//00477FF8
    procedure UnregisterFindGlobalComponentProc(AFindGlobalComponent:TFindGlobalComponent);//0047803C
    //function sub_0047805C(?:?):?;//0047805C
    //function sub_004780B4(?:?):?;//004780B4
    //function sub_004780EC(?:?; ?:?; ?:?):?;//004780EC
    procedure BeginGlobalLoading;//00478190
    procedure NotifyGlobalLoading;//004781F8
    procedure EndGlobalLoading;//00478240
    function InitComponent(ClassType:TClass):Boolean;//004782AC
    function InitInheritedComponent(Instance:TComponent; RootAncestor:TClass):Boolean;//00478360
    //procedure sub_00478424(?:?; ?:?; ?:?);//00478424
    function CollectionsEqual(C1:TCollection; C2:TCollection; Owner1:TComponent; Owner2:TComponent):Boolean;//00478498
    destructor Destroy;//004785C4
    procedure sub_00478648;//00478648
    procedure sub_00478668(?:TList; ?:Integer);//00478668
    //function sub_004786FC(?:?):?;//004786FC
    procedure sub_00478704;//00478704
    //procedure sub_00478744(?:TList; ?:TResStringRec; ?:?);//00478744
    //function sub_004787A4(?:TList):?;//004787A4
    //function sub_004787D0(?:?):?;//004787D0
    procedure sub_00478838;//00478838
    //function sub_00478890(?:TList; ?:TComponent):?;//00478890
    //procedure sub_004788DC(?:TList; ?:?; ?:Pointer);//004788DC
    //function sub_0047898C(?:TList):?;//0047898C
    procedure sub_004789B0(?:TList; ?:Integer; ?:Integer);//004789B0
    //procedure sub_00478A34(?:TList; ?:?; ?:Pointer);//00478A34
    //function sub_00478AC4(?:TList; ?:TPersistent):?;//00478AC4
    //procedure sub_00478AF8(?:TList; ?:?);//00478AF8
    //procedure sub_00478B54(?:TList; ?:?);//00478B54
    //procedure sub_00478BFC(?:?; ?:?);//00478BFC
    //procedure sub_00478CF4(?:?; ?:Pointer);//00478CF4
    //procedure sub_00478DA8(?:?; ?:?);//00478DA8
    //function sub_00478E74(?:?; ?:?):?;//00478E74
    //function sub_00478FB4(?:?):?;//00478FB4
    destructor Destroy;//0047906C
    //procedure sub_004790A8(?:?);//004790A8
    procedure sub_004790D4(?:TPersistent; ?:TPersistent);//004790D4
    //procedure sub_004791AC(?:?);//004791AC
    procedure DefineProperties(Filer:TFiler);//004791C8
    //procedure sub_004791D8(?:?);//004791D8
    procedure sub_00479290;//00479290
    procedure AfterConstruction;//004792A8
    //function sub_00479304(?:?):?;//00479304
    //function sub_00479334(?:?):?;//00479334
    //function sub_00479364(?:?; ?:?):?;//00479364
    //procedure sub_00479390(?:?; ?:?);//00479390
    //procedure sub_00479444(?:TCollection; ?:TCollectionItem; ?:?);//00479444
    //constructor sub_004794B0(?:?);//004794B0
    //procedure sub_00479584(?:?);//00479584
    constructor sub_004795A8;//004795A8
    destructor Destroy;//004795F0
    //procedure sub_0047962C(?:TCollectionItem; ?:?);//0047962C
    //procedure sub_004796AC(?:?);//004796AC
    //procedure sub_004791D8(?:?);//004796E0
    procedure sub_00479290;//004797A0
    //procedure sub_004797BC(?:?);//004797BC
    //procedure sub_00479800(?:?);//00479800
    //procedure sub_0047981C(?:?);//0047981C
    destructor Destroy;//004798C8
    //function sub_0047992C(?:TCollection):?;//0047992C
    //procedure sub_00479958(?:?);//00479958
    procedure sub_004799FC;//004799FC
    procedure sub_00479A0C(?:TCollection);//00479A0C
    procedure sub_00479A94;//00479A94
    //function sub_00479AAC(?:TActionBars; ?:Integer):?;//00479AAC
    procedure sub_00479B04;//00479B04
    //procedure sub_00479B1C(?:?; ?:?);//00479B1C
    //procedure sub_00479B38(?:?; ?:?; ?:?);//00479B38
    //function sub_00479B60(?:TCollection):?;//00479B60
    //function sub_00479B7C(?:TCollection; ?:?):?;//00479B7C
    //procedure sub_004791D8(?:?);//00479BA0
    //procedure sub_00479C70(?:TCollection; ?:?);//00479C70
    //function sub_00479DAC(?:?; ?:Integer):?;//00479DAC
    //procedure sub_00479DD8(?:?; ?:TCollectionItem);//00479DD8
    procedure sub_00479E64(?:TCollection; ?:TCollectionItem);//00479E64
    //procedure sub_00479ED8(?:?);//00479ED8
    //procedure sub_00479EE8(?:?);//00479EE8
    procedure sub_00479EF8(?:TOwnedCollection; ?:Integer);//00479EF8
    //function sub_00479F38(?:TComboExItems):?;//00479F38
    //procedure sub_00479F5C(?:?);//00479F5C
    //procedure sub_00479F6C(?:?);//00479F6C
    //procedure sub_00479F7C(?:?; ?:?);//00479F7C
    //constructor Create(?:?);//00479FB4
    procedure sub_00479290;//0047A008
    destructor Destroy;//0047A024
    //function sub_0047A060(?:?):?;//0047A060
    //function sub_0047A090(?:?; ?:?):?;//0047A090
    //procedure sub_0047A0C4(?:?);//0047A0C4
    //procedure sub_0047A184(?:?);//0047A184
    function DoWrite:Boolean;//0047A24C
    procedure DefineProperties(Filer:TFiler);//0047A2AC
    //function sub_0047A31C(?:?; ?:?):?;//0047A31C
    //function sub_0047A3D0(?:?):?;//0047A3D0
    procedure sub_0047A3D8;//0047A3D8
    //procedure sub_0047A418(?:TStringList; ?:TResStringRec; ?:?);//0047A418
    //procedure sub_0047A478(?:?; ?:?);//0047A478
    //procedure sub_0047A564(?:?; ?:?; ?:?);//0047A564
    //function sub_0047A5F4:?;//0047A5F4
    //procedure sub_0047A610(?:TStringList; ?:?; ?:?);//0047A610
    //function sub_0047A674(?:?):?;//0047A674
    //function sub_0047A68C:?;//0047A68C
    //procedure sub_0047A6E8(?:?);//0047A6E8
    //procedure sub_0047A830(?:TStringList; ?:?; ?:?);//0047A830
    //function sub_0047A8C4(?:?):?;//0047A8C4
    //function sub_0047A950(?:?):?;//0047A950
    //function sub_0047AA2C(?:?):?;//0047AA2C
    //procedure sub_0047AA78(?:?; ?:?; ?:?);//0047AA78
    //procedure sub_0047AAAC(?:?);//0047AAAC
    //procedure sub_0047AB08(?:?);//0047AB08
    //procedure sub_0047ABBC(?:?; ?:?);//0047ABBC
    //procedure sub_0047AC78(?:?; ?:?);//0047AC78
    //procedure sub_0047ACB8(?:?; ?:?);//0047ACB8
    //procedure sub_0047AD7C(?:?);//0047AD7C
    //procedure sub_0047ADDC(?:?);//0047ADDC
    //procedure sub_0047AE3C(?:?);//0047AE3C
    //procedure sub_0047AE4C(?:?; ?:?);//0047AE4C
    //procedure sub_0047AE98(?:?);//0047AE98
    //procedure sub_0047AEF0(?:?);//0047AEF0
    //procedure sub_0047AFD0(?:?);//0047AFD0
    //procedure sub_0047B06C(?:TStringList; ?:?);//0047B06C
    //function sub_0047B1E4(?:?):?;//0047B1E4
    //function sub_0047B210(?:?):?;//0047B210
    //procedure sub_0047B23C(?:TStringList; ?:?);//0047B23C
    //procedure sub_0047B270(?:?; ?:?);//0047B270
    //function sub_0047B2A4(?:?; ?:?):?;//0047B2A4
    //function sub_0047B2C8(?:TStrings):?;//0047B2C8
    //procedure sub_0047B2F4(?:TStrings; ?:?);//0047B2F4
    destructor Destroy;//0047B328
    //function sub_0047B3A4(?:?):?;//0047B3A4
    //function sub_0047B3CC(?:?; ?:?):?;//0047B3CC
    procedure sub_0047B444;//0047B444
    procedure sub_0047B470;//0047B470
    procedure Clear;//0047B49C
    //procedure sub_0047B4F0(?:?);//0047B4F0
    //procedure sub_0047B590(?:?; ?:?);//0047B590
    //procedure sub_0047B60C(?:TStringList; ?:?; ?:?);//0047B60C
    //function sub_0047B678(?:?; ?:?):?;//0047B678
    //procedure sub_0047B710(?:?; ?:?);//0047B710
    //function sub_0047B75C:?;//0047B75C
    //function sub_0047B778:?;//0047B778
    //function sub_0047B794(?:?):?;//0047B794
    procedure sub_0047B7DC(?:TStringList);//0047B7DC
    //function sub_0047B834(?:?):?;//0047B834
    //procedure sub_0047B880(?:?; ?:?);//0047B880
    //procedure sub_0047B8A8(?:?; ?:?; ?:?);//0047B8A8
    //procedure sub_0047B910(?:?; ?:?; ?:?);//0047B910
    //procedure sub_0047B9B8(?:?; ?:?);//0047B9B8
    //procedure sub_0047BA30(?:?; ?:?);//0047BA30
    //procedure sub_0047BA8C(?:TStringList; ?:?; ?:?; ?:?);//0047BA8C
    //procedure sub_0047BB50(?:?);//0047BB50
    //procedure sub_0047BB7C(?:TStrings; ?:?);//0047BB7C
    //procedure sub_0047BBB4(?:?);//0047BBB4
    //function sub_0047BBE4(?:?; ?:?; ?:?):?;//0047BBE4
    procedure sub_0047BC20;//0047BC20
    //procedure sub_0047BC3C(?:?);//0047BC3C
    //function sub_0047BC8C(?:?; ?:?):?;//0047BC8C
    //function sub_0047BCCC(?:TStream):?;//0047BCCC
    //procedure sub_0047BCF4(?:TStream; ?:?; ?:?);//0047BCF4
    procedure sub_0047BD10;//0047BD10
    //procedure sub_0047BD5C(?:?);//0047BD5C
    //procedure sub_0047BD6C(?:TMemoryStream; ?:?; ?:?);//0047BD6C
    //procedure sub_0047BD88(?:?; ?:?);//0047BD88
    procedure RaiseException;//0047BDE0
    //function sub_0047BE2C(?:?; ?:?):?;//0047BE2C
    //procedure sub_0047BEB8(?:?; ?:?; ?:?);//0047BEB8
    procedure sub_0047BF28(?:TStream; ?:Pointer; ?:Integer);//0047BF28
    procedure sub_0047BF70(?:TStream; ?:Pointer; ?:Longint);//0047BF70
    //procedure sub_0047BFB8(?:TStream; ?:TMemoryStream; ?:?; ?:?);//0047BFB8
    //function sub_0047C0B0(?:TCustomMemoryStream; ?:TCustomListView):?;//0047C0B0
    procedure sub_0047C114(?:TMemoryStream; ?:TComponent);//0047C114
    //procedure sub_0047C134(?:?; ?:?; ?:?);//0047C134
    constructor sub_0047C198;//0047C198
    //function sub_0047C1E8(?:?; ?:?):?;//0047C1E8
    //function sub_0047C220(?:?; ?:?):?;//0047C220
    //procedure sub_0047C258(?:?; ?:?; ?:?);//0047C258
    //procedure sub_0047C28C(?:?);//0047C28C
    //procedure sub_0047C2AC(?:?; ?:?);//0047C2AC
    //constructor sub_0047C32C(?:?; ?:?);//0047C32C
    destructor Destroy;//0047C48C
    procedure sub_0047C4D4(?:TCustomMemoryStream; ?:Pointer; ?:Longint);//0047C4D4
    //function sub_0047C4FC(?:?; ?:?):?;//0047C4FC
    //function sub_0047C56C(?:?; ?:?):?;//0047C56C
    destructor Destroy;//0047C5C4
    procedure sub_0047C600(?:TMemoryStream);//0047C600
    procedure sub_0047C624(?:TMemoryStream; ?:TFileStream);//0047C624
    //procedure sub_0047C66C(?:?; ?:?);//0047C66C
    //procedure sub_0047C6C8(?:TMemoryStream; ?:?);//0047C6C8
    //procedure sub_0047C6FC(?:?);//0047C6FC
    //function sub_0047C744(?:?):?;//0047C744
    //function sub_0047C80C(?:?; ?:?):?;//0047C80C
    procedure Error;//0047C8FC
    //procedure sub_0047C96C(?:TResourceStream; ?:?; ?:PChar; ?:?);//0047C96C
    destructor Destroy;//0047C9F8
    //function sub_0047CA40(?:?; ?:?):?;//0047CA40
    destructor Destroy;//0047CACC
    //procedure sub_0047CB0C(?:?);//0047CB0C
    //function sub_0047CC74(?:Pointer):?;//0047CC74
    //procedure sub_0047CCE0(?:?);//0047CCE0
    //procedure sub_0047CD04(?:?);//0047CD04
    //function sub_0047CD98(?:?; ?:AnsiString):?;//0047CD98
    //procedure sub_0047CEA0(?:?; ?:?);//0047CEA0
    //procedure sub_0047CEDC(?:?; ?:?);//0047CEDC
    procedure sub_0047CF30;//0047CF30
    procedure RemoveFixupReferences(Root:TComponent; const RootName:AnsiString);//0047D118
    //procedure sub_0047D1D4(?:?);//0047D1D4
    procedure ReadError(Ident:PResStringRec);//0047D268
    procedure sub_0047D288;//0047D288
    //procedure sub_0047D298(?:?);//0047D298
    //function sub_0047D2CC(?:?; ?:?):?;//0047D2CC
    destructor Destroy;//0047D2F8
    //procedure sub_0047D348(?:?; ?:?);//0047D348
    //procedure sub_0047D378(?:?; ?:?; ?:?; ?:?);//0047D378
    //procedure sub_0047D3BC(?:?; ?:?; ?:?; ?:?);//0047D3BC
    //function sub_0047D4C0(?:?):?;//0047D4C0
    //function sub_0047D4F8(?:?; ?:?):?;//0047D4F8
    procedure sub_0047D570(?:Pointer);//0047D570
    //procedure sub_0047D60C(?:?);//0047D60C
    procedure sub_0047D740;//0047D740
    //procedure sub_0047D770(?:?);//0047D770
    //function sub_0047D7D0(?:?; ?:?; ?:?):?;//0047D7D0
    //function sub_0047D880(?:TReader):?;//0047D880
    //procedure sub_0047D8D0(?:?; ?:?);//0047D8D0
    //function sub_0047D990(?:?):?;//0047D990
    //function sub_0047D9B0(?:?):?;//0047D9B0
    //procedure sub_0047DAF0(?:?; ?:?);//0047DAF0
    //procedure sub_0047DB3C(?:?; ?:?);//0047DB3C
    //procedure sub_0047DBC4(?:?; ?:?; ?:?);//0047DBC4
    //function sub_0047DC4C(?:?):?;//0047DC4C
    function Recover(var Component:TComponent):Boolean;//0047DC74
    //procedure sub_0047DCE0(?:?);//0047DCE0
    procedure SetCompName;//0047DDF4
    //procedure sub_0047DE94(?:?);//0047DE94
    //function sub_0047DF3C(?:?; ?:?):?;//0047DF3C
    //procedure sub_0047E178(?:?; ?:TComponent);//0047E178
    //procedure sub_0047E1EC(?:?; ?:?);//0047E1EC
    //procedure sub_0047E2C0(?:?);//0047E2C0
    //procedure sub_0047E30C(?:?);//0047E30C
    //procedure sub_0047E358(?:?);//0047E358
    //procedure sub_0047E3AC(?:?);//0047E3AC
    //function sub_0047E504(?:TReader):?;//0047E504
    //function sub_0047E574(?:?):?;//0047E574
    //procedure sub_0047E5E4(?:?; ?:?);//0047E5E4
    //procedure sub_0047E640(?:Exception; ?:?);//0047E640
    procedure PropPathError;//0047E740
    //procedure sub_0047E75C(?:?; ?:?);//0047E75C
    //procedure sub_0047E968(?:Longint; ?:PPropInfo; ?:?);//0047E968
    //procedure sub_0047E9B4(?:Longint; ?:PPropInfo; ?:?; ?:?);//0047E9B4
    procedure SetVariantReference;//0047E9FC
    procedure SetInterfaceReference;//0047EA58
    //procedure sub_0047EB18(?:?; ?:Longint; ?:PPropInfo);//0047EB18
    //procedure sub_0047EE30(?:?; ?:?);//0047EE30
    //function sub_0047EEA0(?:TReader; ?:?):?;//0047EEA0
    //function sub_0047F1D4(?:?; ?:PPropInfo):?;//0047F1D4
    procedure sub_0047F29C(?:TReader);//0047F29C
    //procedure sub_0047F3DC(?:?; ?:?);//0047F3DC
    procedure SkipList;//0047F544
    procedure SkipBinary(BytesPerUnit:Integer);//0047F570
    procedure SkipCollection;//0047F5A4
    //procedure sub_0047F7B4(?:?);//0047F7B4
    //procedure sub_0047F804(?:?; ?:?);//0047F804
    //function sub_0047F8B8(?:?; ?:?):?;//0047F8B8
    //procedure sub_0047F980(?:?);//0047F980
    //procedure sub_0047F9AC(?:?; ?:?);//0047F9AC
    //function sub_0047F9EC(?:?; ?:?):?;//0047F9EC
    //procedure sub_0047FAE0(?:?; ?:?);//0047FAE0
    destructor Destroy;//0047FEC0
    //procedure sub_0047FF1C(?:?; ?:?; ?:?; ?:?);//0047FF1C
    //procedure sub_0047FF54(?:?; ?:?; ?:?; ?:?; ?:?);//0047FF54
    //function sub_0047FF90(?:TWriter):?;//0047FF90
    procedure sub_0047FFB4;//0047FFB4
    //procedure sub_0047FFC8(?:TWriter; ?:?);//0047FFC8
    //procedure sub_00480024(?:?);//00480024
    //procedure sub_00480094(?:TWriter; ?:?);//00480094
    //procedure sub_00480148(?:?; ?:?);//00480148
    //procedure sub_00480174(?:?; ?:?);//00480174
    //procedure sub_004801CC(?:TWriter; ?:?);//004801CC
    //function sub_00480278(?:?; ?:?):?;//00480278
    //procedure sub_004802D8(?:TWriter; ?:?);//004802D8
    //procedure sub_00480448(?:?);//00480448
    //procedure sub_0048085C(?:TWriter; ?:?; ?:?);//0048085C
    //procedure sub_004808D0(?:?; ?:?);//004808D0
    //procedure sub_004808F8(?:?; ?:?);//004808F8
    //procedure sub_00480920(?:?; ?:?);//00480920
    procedure sub_00480A20(?:TWriter; ?:Integer);//00480A20
    procedure sub_00480AFC(?:TWriter);//00480AFC
    procedure sub_00480B10(?:TWriter);//00480B10
    //procedure sub_00480B24(?:TWriter; ?:?; ?:Integer);//00480B24
    function AncestorIsValid(Ancestor:TPersistent; Root:TComponent; RootAncestor:TComponent):Boolean;//00480C48
    //function sub_00480C8C(?:?):?;//00480C8C
    //function sub_00480CF8(?:?):?;//00480CF8
    //function sub_00480D58(?:?):?;//00480D58
    //function sub_00480DB8(?:?):?;//00480DB8
    //function sub_00480E48(?:Longint; ?:?; ?:?):?;//00480E48
    //function sub_00480EA4(?:?):?;//00480EA4
    //function sub_00480F0C(?:?):?;//00480F0C
    //function sub_00480F94(?:?):?;//00480F94
    //function sub_00481064(?:?):?;//00481064
    //function sub_00481148(?:?):?;//00481148
    //function sub_004811CC(?:?):?;//004811CC
    function IsDefaultPropertyValue(Instance:TObject; PropInfo:PPropInfo; OnGetLookupInfo:TGetLookupInfoEvent):Boolean;//00481264
    procedure WritePropPath;//004813D8
    //procedure sub_0048142C(?:?; ?:?);//0048142C
    //procedure sub_004814D0(?:?; ?:?; ?:?);//004814D0
    procedure WriteCollectionProp(Collection:TCollection);//0048154C
    procedure WriteOrdProp;//004815F4
    procedure WriteFloatProp;//004816C0
    procedure WriteInt64Prop;//00481700
    procedure WriteStrProp;//0048173C
    //function sub_0048179C(?:?; ?:?):?;//0048179C
    function GetComponentValue(Component:TComponent):AnsiString;//004817D4
    procedure WriteObjectProp;//0048193C
    procedure WriteInterfaceProp;//00481B48
    procedure WriteMethodProp;//00481C24
    procedure WriteVariantProp;//00481CCC
    procedure sub_004822E4(?:TWriter);//004822E4
    procedure sub_00482300(?:TWriter; ?:AnsiString);//00482300
    //procedure sub_00482350(?:?; ?:AnsiString; ?:?);//00482350
    //procedure sub_00482400(?:?; ?:AnsiString);//00482400
    //procedure sub_00482580(?:?; ?:PChar; ?:?);//00482580
    //function sub_004825E8(?:PChar; ?:?; ?:?):?;//004825E8
    procedure InitThreadSynchronization;//00482664
    procedure DoneThreadSynchronization;//0048269C
    procedure sub_004826B8;//004826B8
    //procedure sub_004826C8(?:?);//004826C8
    procedure sub_004826EC;//004826EC
    procedure sub_004826FC;//004826FC
    procedure sub_0048270C;//0048270C
    //function sub_0048271C(?:?):?;//0048271C
    constructor sub_00482974;//00482974
    destructor Destroy;//00482A60
    procedure AfterConstruction;//00482AEC
    //procedure sub_00482B08(?:?; ?:Integer);//00482B08
    //procedure sub_00482B8C(?:?; ?:?);//00482B8C
    procedure sub_00482BD8;//00482BD8
    //procedure sub_00482C00(?:TServerClientThread; ?:?);//00482C00
    //procedure sub_00482C38(?:TThread; ?:?);//00482C38
    //procedure sub_00482D80(?:TThread; ?:?; ?:?);//00482D80
    //procedure sub_00482DBC(?:?; ?:?; ?:?; ?:?);//00482DBC
    procedure sub_00482E08(?:TThread);//00482E08
    procedure sub_00482E40(?:TThread);//00482E40
    //function sub_00482E54(?:?):?;//00482E54
    constructor sub_00482F04;//00482F04
    destructor Destroy;//00482F60
    procedure BeforeDestruction;//00483004
    procedure sub_00483020(?:TComponent; ?:TComponent);//00483020
    //procedure sub_00483118(?:?; ?:TComponent);//00483118
    //procedure sub_0048315C(?:?; ?:?);//0048315C
    //procedure sub_004831A4(?:?; ?:TComponent);//004831A4
    //procedure sub_00483214(?:?; ?:?);//00483214
    //procedure sub_0048325C(?:?);//0048325C
    procedure sub_004832CC(?:Pointer);//004832CC
    //procedure sub_00483328(?:?; ?:?);//00483328
    procedure sub_00483370(?:TComponent; ?:TComponent);//00483370
    //procedure sub_00483398(?:?; ?:?);//00483398
    procedure DefineProperties(Filer:TFiler);//00483420
    procedure sub_004834C8;//004834C8
    //procedure sub_004834DC(?:?);//004834DC
    procedure sub_004834F0;//004834F0
    procedure sub_00483508;//00483508
    //procedure sub_004791D8(?:?);//00483520
    procedure sub_00479290;//00483540
    //procedure sub_0048355C(?:?; ?:?);//0048355C
    procedure sub_00483570;//00483570
    //procedure sub_00483588(?:?);//00483588
    procedure sub_00483598;//00483598
    procedure sub_004835AC;//004835AC
    procedure sub_004835C0;//004835C0
    procedure sub_004835D4;//004835D4
    //procedure sub_004835E0(?:?);//004835E0
    //procedure sub_004835FC(?:?);//004835FC
    //procedure sub_00483618(?:?; ?:?; ?:?);//00483618
    //procedure sub_004836AC(?:?);//004836AC
    //procedure sub_004836D0(?:?);//004836D0
    //function sub_004836E0(?:TComponent; ?:AnsiString):?;//004836E0
    procedure SetName(Value:TComponentName);//0048374C
    procedure sub_00483804(?:TComponent; ?:TComponentName);//00483804
    //function sub_00483824(?:TComponent; ?:?):?;//00483824
    //function sub_00483864(?:TComponent):?;//00483864
    //procedure sub_00483890(?:?; ?:?);//00483890
    //procedure sub_0048391C(?:TComponent; ?:?; ?:?);//0048391C
    //procedure sub_00483984(?:TComponent; ?:?);//00483984
    //procedure sub_004839E8(?:?);//004839E8
    //procedure sub_00483A1C(?:?);//00483A1C
    //procedure sub_00483A50(?:TComponent; ?:?);//00483A50
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;//00483A78
    //procedure sub_00483AC0(?:?; ?:?);//00483AC0
    //function sub_00483AD8(?:?; ?:?):?;//00483AD8
    //function sub_00483B28(?:?):?;//00483B28
    //function sub_00483B58(?:?):?;//00483B58
    //function sub_00483B88(?:?):?;//00483B88
    constructor sub_00483BA0;//00483BA0
    //procedure sub_00483BF0(?:?);//00483BF0
    destructor Destroy;//00483C00
    procedure sub_00483C48;//00483C48
    //function sub_00483C70(?:?):?;//00483C70
    //procedure sub_00483CA8(?:?);//00483CA8
    //function sub_00483CF4:?;//00483CF4
    procedure sub_00483D08;//00483D08
    //function sub_00483D14:?;//00483D14
    constructor sub_00483D34;//00483D34
    destructor Destroy;//00483D90
    //function sub_00483E08(?:?):?;//00483E08
    //procedure sub_00483E20(?:?);//00483E20
    //procedure sub_00483E30(?:?; ?:?);//00483E30
    //procedure sub_00483E6C(?:?);//00483E6C
    procedure sub_00483E7C;//00483E7C
    //function sub_00483EB0:?;//00483EB0
    //procedure SetOnExecute(Value:TNotifyEvent; ?:?; ?:?);//00483EE4
    procedure sub_00483F5C;//00483F5C
    //procedure sub_00483F80(?:?; ?:TBasicActionLink);//00483F80
    procedure sub_00483FA8(?:TBasicAction; ?:TBasicActionLink);//00483FA8
    //procedure sub_00484004(?:TBasicAction; ?:?);//00484004
    destructor Destroy;//004840B0
    //function sub_00484100(?:?; ?:?; ?:?):?;//00484100
    //function sub_0048417C(?:?; ?:?; ?:?):?;//0048417C
    //function sub_004841F8(?:?; ?:?; ?:?):?;//004841F8
    //function sub_00484288(?:?; ?:?):?;//00484288
    //function sub_004842F8(?:?; ?:?; ?:?; ?:?; ?:?):?;//004842F8
    //function sub_0048451C:?;//0048451C
    //function sub_00484530:?;//00484530
    //function sub_00484544:?;//00484544
    //function sub_00484558:?;//00484558
    //function sub_0048456C(?:?):?;//0048456C
    //function sub_0048460C:?;//0048460C
    procedure FreeIntConstList;//0048462C
    procedure ModuleUnload(Instance:Longint);//004846A8
    function StdWndProc(Window:HWND; Message:Longint; WParam:Longint; LParam:Longint):Longint; stdcall;//004846BC
    //function sub_004846DC(?:?; ?:Longint):?;//004846DC
    //function sub_00484700(?:?; ?:?):?;//00484700
    procedure sub_004847E0(?:Longint);//004847E0
    procedure _NF__E7C;//00484804
    //function sub_00484814(?:?; ?:?; ?:?):?;//00484814
    //procedure sub_004848D0(?:?);//004848D0

implementation

//00476C64
function Point(AX:Integer; AY:Integer):TPoint;
begin
{*
 00476C64    push        ebp
 00476C65    mov         ebp,esp
 00476C67    add         esp,0FFFFFFF4
 00476C6A    mov         dword ptr [ebp-0C],ecx
 00476C6D    mov         dword ptr [ebp-8],edx
 00476C70    mov         dword ptr [ebp-4],eax
 00476C73    mov         ecx,dword ptr [ebp-0C]
 00476C76    mov         edx,dword ptr [ebp-8]
 00476C79    mov         eax,dword ptr [ebp-4]
 00476C7C    call        00406EBC
 00476C81    mov         esp,ebp
 00476C83    pop         ebp
 00476C84    ret
*}
end;

//00476C88
{*function sub_00476C88(?:?; ?:?):?;
begin
 00476C88    push        ebp
 00476C89    mov         ebp,esp
 00476C8B    add         esp,0FFFFFFF8
 00476C8E    mov         word ptr [ebp-4],dx
 00476C92    mov         word ptr [ebp-2],ax
 00476C96    mov         ax,word ptr [ebp-2]
 00476C9A    mov         word ptr [ebp-8],ax
 00476C9E    mov         ax,word ptr [ebp-4]
 00476CA2    mov         word ptr [ebp-6],ax
 00476CA6    mov         eax,dword ptr [ebp-8]
 00476CA9    pop         ecx
 00476CAA    pop         ecx
 00476CAB    pop         ebp
 00476CAC    ret
end;*}

//00476CB0
{*function sub_00476CB0(?:?; ?:?):?;
begin
 00476CB0    push        ebp
 00476CB1    mov         ebp,esp
 00476CB3    add         esp,0FFFFFFF4
 00476CB6    mov         dword ptr [ebp-8],edx
 00476CB9    mov         dword ptr [ebp-4],eax
 00476CBC    mov         eax,dword ptr [ebp-4]
 00476CBF    mov         eax,dword ptr [eax]
 00476CC1    mov         edx,dword ptr [ebp-8]
 00476CC4    cmp         eax,dword ptr [edx]
>00476CC6    jne         00476CD6
 00476CC8    mov         eax,dword ptr [ebp-4]
 00476CCB    mov         eax,dword ptr [eax+4]
 00476CCE    mov         edx,dword ptr [ebp-8]
 00476CD1    cmp         eax,dword ptr [edx+4]
>00476CD4    je          00476CDA
 00476CD6    xor         eax,eax
>00476CD8    jmp         00476CDC
 00476CDA    mov         al,1
 00476CDC    mov         byte ptr [ebp-9],al
 00476CDF    mov         al,byte ptr [ebp-9]
 00476CE2    mov         esp,ebp
 00476CE4    pop         ebp
 00476CE5    ret
end;*}

//00476CE8
function Rect(const ATopLeft:TPoint; const ABottomRight:TPoint):TRect;
begin
{*
 00476CE8    push        ebp
 00476CE9    mov         ebp,esp
 00476CEB    add         esp,0FFFFFFF4
 00476CEE    mov         dword ptr [ebp-0C],ecx
 00476CF1    mov         dword ptr [ebp-8],edx
 00476CF4    mov         dword ptr [ebp-4],eax
 00476CF7    mov         eax,dword ptr [ebp+0C]
 00476CFA    push        eax
 00476CFB    mov         eax,dword ptr [ebp+8]
 00476CFE    push        eax
 00476CFF    mov         ecx,dword ptr [ebp-0C]
 00476D02    mov         edx,dword ptr [ebp-8]
 00476D05    mov         eax,dword ptr [ebp-4]
 00476D08    call        00406E84
 00476D0D    mov         esp,ebp
 00476D0F    pop         ebp
 00476D10    ret         8
*}
end;

//00476D14
function Bounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer):TRect;
begin
{*
 00476D14    push        ebp
 00476D15    mov         ebp,esp
 00476D17    add         esp,0FFFFFFF4
 00476D1A    mov         dword ptr [ebp-0C],ecx
 00476D1D    mov         dword ptr [ebp-8],edx
 00476D20    mov         dword ptr [ebp-4],eax
 00476D23    mov         eax,dword ptr [ebp+0C]
 00476D26    push        eax
 00476D27    mov         eax,dword ptr [ebp+8]
 00476D2A    push        eax
 00476D2B    mov         ecx,dword ptr [ebp-0C]
 00476D2E    mov         edx,dword ptr [ebp-8]
 00476D31    mov         eax,dword ptr [ebp-4]
 00476D34    call        00406F2C
 00476D39    mov         esp,ebp
 00476D3B    pop         ebp
 00476D3C    ret         8
*}
end;

//00476D40
{*function sub_00476D40(?:TPoint):?;
begin
 00476D40    push        ebp
 00476D41    mov         ebp,esp
 00476D43    add         esp,0FFFFFFF8
 00476D46    mov         dword ptr [ebp-4],eax
 00476D49    mov         eax,dword ptr [ebp-4]
 00476D4C    cmp         dword ptr [eax],0FFFFFFFF
>00476D4F    jne         00476D5A
 00476D51    mov         eax,dword ptr [ebp-4]
 00476D54    cmp         dword ptr [eax+4],0FFFFFFFF
>00476D58    je          00476D5E
 00476D5A    xor         eax,eax
>00476D5C    jmp         00476D60
 00476D5E    mov         al,1
 00476D60    mov         byte ptr [ebp-5],al
 00476D63    mov         al,byte ptr [ebp-5]
 00476D66    pop         ecx
 00476D67    pop         ecx
 00476D68    pop         ebp
 00476D69    ret
end;*}

//00476D6C
{*function sub_00476D6C(?:?):?;
begin
 00476D6C    push        ebp
 00476D6D    mov         ebp,esp
 00476D6F    add         esp,0FFFFFFF8
 00476D72    mov         dword ptr [ebp-4],eax
 00476D75    cmp         word ptr [ebp-4],0FFFFFFFF
>00476D7A    jne         00476D83
 00476D7C    cmp         word ptr [ebp-2],0FFFFFFFF
>00476D81    je          00476D87
 00476D83    xor         eax,eax
>00476D85    jmp         00476D89
 00476D87    mov         al,1
 00476D89    mov         byte ptr [ebp-5],al
 00476D8C    mov         al,byte ptr [ebp-5]
 00476D8F    pop         ecx
 00476D90    pop         ecx
 00476D91    pop         ebp
 00476D92    ret
end;*}

//00476E44
{*procedure sub_00476E44(?:?; ?:?);
begin
 00476E44    push        ebp
 00476E45    mov         ebp,esp
 00476E47    add         esp,0FFFFFFF8
 00476E4A    mov         dword ptr [ebp-8],edx
 00476E4D    mov         dword ptr [ebp-4],eax
 00476E50    mov         edx,dword ptr [ebp-8]
 00476E53    mov         eax,dword ptr [ebp-4]
 00476E56    mov         eax,dword ptr [eax+0C]
 00476E59    call        TList.Add
 00476E5E    pop         ecx
 00476E5F    pop         ecx
 00476E60    pop         ebp
 00476E61    ret
end;*}

//00476E64
{*function sub_00476E64(?:?; ?:?):?;
begin
 00476E64    push        ebp
 00476E65    mov         ebp,esp
 00476E67    add         esp,0FFFFFFE8
 00476E6A    mov         dword ptr [ebp-8],edx
 00476E6D    mov         dword ptr [ebp-4],eax
 00476E70    xor         eax,eax
 00476E72    mov         dword ptr [ebp-0C],eax
 00476E75    mov         eax,dword ptr [ebp-4]
 00476E78    mov         eax,dword ptr [eax+0C]
 00476E7B    mov         eax,dword ptr [eax+8]
 00476E7E    dec         eax
 00476E7F    test        eax,eax
>00476E81    jl          00476ED1
 00476E83    inc         eax
 00476E84    mov         dword ptr [ebp-18],eax
 00476E87    mov         dword ptr [ebp-10],0
 00476E8E    mov         eax,dword ptr [ebp-4]
 00476E91    mov         eax,dword ptr [eax+0C]
 00476E94    mov         edx,dword ptr [ebp-10]
 00476E97    call        TList.Get
 00476E9C    mov         dword ptr [ebp-14],eax
 00476E9F    mov         edx,dword ptr [ebp-14]
 00476EA2    mov         eax,dword ptr [ebp-8]
 00476EA5    call        TObject.InheritsFrom
 00476EAA    test        al,al
>00476EAC    je          00476EC9
 00476EAE    cmp         dword ptr [ebp-0C],0
>00476EB2    je          00476EC3
 00476EB4    mov         edx,dword ptr [ebp-0C]
 00476EB7    mov         eax,dword ptr [ebp-14]
 00476EBA    call        TObject.InheritsFrom
 00476EBF    test        al,al
>00476EC1    je          00476EC9
 00476EC3    mov         eax,dword ptr [ebp-14]
 00476EC6    mov         dword ptr [ebp-0C],eax
 00476EC9    inc         dword ptr [ebp-10]
 00476ECC    dec         dword ptr [ebp-18]
>00476ECF    jne         00476E8E
 00476ED1    mov         eax,dword ptr [ebp-0C]
 00476ED4    mov         esp,ebp
 00476ED6    pop         ebp
 00476ED7    ret
end;*}

//00476ED8
{*function sub_00476ED8(?:TRegGroup; ?:Pointer; ?:?; ?:?):?;
begin
 00476ED8    push        ebp
 00476ED9    mov         ebp,esp
 00476EDB    add         esp,0FFFFFFE8
 00476EDE    mov         dword ptr [ebp-0C],ecx
 00476EE1    mov         dword ptr [ebp-8],edx
 00476EE4    mov         dword ptr [ebp-4],eax
 00476EE7    cmp         dword ptr [ebp-8],0
>00476EEB    je          00476EFD
 00476EED    mov         edx,dword ptr [ebp+8]
 00476EF0    mov         eax,dword ptr [ebp-8]
 00476EF3    call        00476E64
 00476EF8    mov         dword ptr [ebp-14],eax
>00476EFB    jmp         00476F02
 00476EFD    xor         eax,eax
 00476EFF    mov         dword ptr [ebp-14],eax
 00476F02    cmp         dword ptr [ebp-0C],0
>00476F06    je          00476F18
 00476F08    mov         edx,dword ptr [ebp+8]
 00476F0B    mov         eax,dword ptr [ebp-0C]
 00476F0E    call        00476E64
 00476F13    mov         dword ptr [ebp-18],eax
>00476F16    jmp         00476F1D
 00476F18    xor         eax,eax
 00476F1A    mov         dword ptr [ebp-18],eax
 00476F1D    cmp         dword ptr [ebp-14],0
>00476F21    jne         00476F38
 00476F23    cmp         dword ptr [ebp-18],0
>00476F27    jne         00476F30
 00476F29    xor         eax,eax
 00476F2B    mov         dword ptr [ebp-10],eax
>00476F2E    jmp         00476F63
 00476F30    mov         eax,dword ptr [ebp-0C]
 00476F33    mov         dword ptr [ebp-10],eax
>00476F36    jmp         00476F63
 00476F38    cmp         dword ptr [ebp-18],0
>00476F3C    jne         00476F46
 00476F3E    mov         eax,dword ptr [ebp-8]
 00476F41    mov         dword ptr [ebp-10],eax
>00476F44    jmp         00476F63
 00476F46    mov         edx,dword ptr [ebp-18]
 00476F49    mov         eax,dword ptr [ebp-14]
 00476F4C    call        TObject.InheritsFrom
 00476F51    test        al,al
>00476F53    je          00476F5D
 00476F55    mov         eax,dword ptr [ebp-8]
 00476F58    mov         dword ptr [ebp-10],eax
>00476F5B    jmp         00476F63
 00476F5D    mov         eax,dword ptr [ebp-0C]
 00476F60    mov         dword ptr [ebp-10],eax
 00476F63    mov         eax,dword ptr [ebp-10]
 00476F66    mov         esp,ebp
 00476F68    pop         ebp
 00476F69    ret         4
end;*}

//00476F6C
constructor TRegGroup.Create;
begin
{*
 00476F6C    push        ebp
 00476F6D    mov         ebp,esp
 00476F6F    add         esp,0FFFFFFF4
 00476F72    test        dl,dl
>00476F74    je          00476F7E
 00476F76    add         esp,0FFFFFFF0
 00476F79    call        @ClassCreate
 00476F7E    mov         dword ptr [ebp-0C],ecx
 00476F81    mov         byte ptr [ebp-5],dl
 00476F84    mov         dword ptr [ebp-4],eax
 00476F87    xor         edx,edx
 00476F89    mov         eax,dword ptr [ebp-4]
 00476F8C    call        TObject.Create
 00476F91    mov         dl,1
 00476F93    mov         eax,[004759C0];TList
 00476F98    call        TObject.Create;TList.Create
 00476F9D    mov         edx,dword ptr [ebp-4]
 00476FA0    mov         dword ptr [edx+4],eax
 00476FA3    mov         dl,1
 00476FA5    mov         eax,[00476078];TStringList
 00476FAA    call        TObject.Create;TStringList.Create
 00476FAF    mov         edx,dword ptr [ebp-4]
 00476FB2    mov         dword ptr [edx+8],eax
 00476FB5    mov         dl,1
 00476FB7    mov         eax,[004759C0];TList
 00476FBC    call        TObject.Create;TList.Create
 00476FC1    mov         edx,dword ptr [ebp-4]
 00476FC4    mov         dword ptr [edx+0C],eax
 00476FC7    mov         eax,dword ptr [ebp-4]
 00476FCA    mov         eax,dword ptr [eax+0C]
 00476FCD    mov         edx,dword ptr [ebp-0C]
 00476FD0    call        TList.Add
 00476FD5    mov         eax,dword ptr [ebp-4]
 00476FD8    cmp         byte ptr [ebp-5],0
>00476FDC    je          00476FED
 00476FDE    call        @AfterConstruction
 00476FE3    pop         dword ptr fs:[0]
 00476FEA    add         esp,0C
 00476FED    mov         eax,dword ptr [ebp-4]
 00476FF0    mov         esp,ebp
 00476FF2    pop         ebp
 00476FF3    ret
*}
end;

//00477048
{*function sub_00477048(?:Pointer; ?:AnsiString):?;
begin
 00477048    push        ebp
 00477049    mov         ebp,esp
 0047704B    add         esp,0FFFFFFEC
 0047704E    mov         dword ptr [ebp-8],edx
 00477051    mov         dword ptr [ebp-4],eax
 00477054    mov         eax,dword ptr [ebp-4]
 00477057    mov         eax,dword ptr [eax+4]
 0047705A    mov         eax,dword ptr [eax+8]
 0047705D    dec         eax
 0047705E    test        eax,eax
>00477060    jl          00477095
 00477062    inc         eax
 00477063    mov         dword ptr [ebp-14],eax
 00477066    mov         dword ptr [ebp-10],0
 0047706D    mov         eax,dword ptr [ebp-4]
 00477070    mov         eax,dword ptr [eax+4]
 00477073    mov         edx,dword ptr [ebp-10]
 00477076    call        TList.Get
 0047707B    mov         dword ptr [ebp-0C],eax
 0047707E    mov         edx,dword ptr [ebp-8]
 00477081    mov         eax,dword ptr [ebp-0C]
 00477084    call        TObject.ClassNameIs
 00477089    test        al,al
>0047708B    jne         004770C4
 0047708D    inc         dword ptr [ebp-10]
 00477090    dec         dword ptr [ebp-14]
>00477093    jne         0047706D
 00477095    mov         eax,dword ptr [ebp-4]
 00477098    mov         eax,dword ptr [eax+8]
 0047709B    mov         edx,dword ptr [ebp-8]
 0047709E    mov         ecx,dword ptr [eax]
 004770A0    call        dword ptr [ecx+54]
 004770A3    mov         dword ptr [ebp-10],eax
 004770A6    cmp         dword ptr [ebp-10],0
>004770AA    jl          004770BF
 004770AC    mov         eax,dword ptr [ebp-4]
 004770AF    mov         eax,dword ptr [eax+8]
 004770B2    mov         edx,dword ptr [ebp-10]
 004770B5    mov         ecx,dword ptr [eax]
 004770B7    call        dword ptr [ecx+18]
 004770BA    mov         dword ptr [ebp-0C],eax
>004770BD    jmp         004770C4
 004770BF    xor         eax,eax
 004770C1    mov         dword ptr [ebp-0C],eax
 004770C4    mov         eax,dword ptr [ebp-0C]
 004770C7    mov         esp,ebp
 004770C9    pop         ebp
 004770CA    ret
end;*}

//004770CC
{*function sub_004770CC(?:Pointer; ?:?):?;
begin
 004770CC    push        ebp
 004770CD    mov         ebp,esp
 004770CF    add         esp,0FFFFFFEC
 004770D2    mov         dword ptr [ebp-8],edx
 004770D5    mov         dword ptr [ebp-4],eax
 004770D8    mov         byte ptr [ebp-9],1
 004770DC    mov         eax,dword ptr [ebp-4]
 004770DF    mov         eax,dword ptr [eax+0C]
 004770E2    mov         eax,dword ptr [eax+8]
 004770E5    dec         eax
 004770E6    test        eax,eax
>004770E8    jl          00477119
 004770EA    inc         eax
 004770EB    mov         dword ptr [ebp-14],eax
 004770EE    mov         dword ptr [ebp-10],0
 004770F5    mov         eax,dword ptr [ebp-4]
 004770F8    mov         eax,dword ptr [eax+0C]
 004770FB    mov         edx,dword ptr [ebp-10]
 004770FE    call        TList.Get
 00477103    mov         edx,eax
 00477105    mov         eax,dword ptr [ebp-8]
 00477108    call        TObject.InheritsFrom
 0047710D    test        al,al
>0047710F    jne         0047711D
 00477111    inc         dword ptr [ebp-10]
 00477114    dec         dword ptr [ebp-14]
>00477117    jne         004770F5
 00477119    mov         byte ptr [ebp-9],0
 0047711D    mov         al,byte ptr [ebp-9]
 00477120    mov         esp,ebp
 00477122    pop         ebp
 00477123    ret
end;*}

//00477124
{*procedure sub_00477124(?:?; ?:?);
begin
 00477124    push        ebp
 00477125    mov         ebp,esp
 00477127    add         esp,0FFFFFEEC
 0047712D    xor         ecx,ecx
 0047712F    mov         dword ptr [ebp-0C],ecx
 00477132    mov         dword ptr [ebp-8],edx
 00477135    mov         dword ptr [ebp-4],eax
 00477138    xor         eax,eax
 0047713A    push        ebp
 0047713B    push        4771C5
 00477140    push        dword ptr fs:[eax]
 00477143    mov         dword ptr fs:[eax],esp
 00477146    lea         edx,[ebp-10C]
 0047714C    mov         eax,dword ptr [ebp-8]
 0047714F    call        TObject.ClassName
 00477154    lea         edx,[ebp-10C]
 0047715A    lea         eax,[ebp-0C]
 0047715D    call        @LStrFromString
 00477162    mov         edx,dword ptr [ebp-0C]
 00477165    mov         eax,dword ptr [ebp-4]
 00477168    call        00477048
 0047716D    test        eax,eax
>0047716F    je          004771A1
 00477171    mov         eax,dword ptr [ebp-0C]
 00477174    mov         dword ptr [ebp-114],eax
 0047717A    mov         byte ptr [ebp-110],0B
 00477181    lea         eax,[ebp-114]
 00477187    push        eax
 00477188    push        0
 0047718A    mov         ecx,dword ptr ds:[55B4F4];^SDuplicateClass:TResStringRec
 00477190    mov         dl,1
 00477192    mov         eax,[004755D8];EFilerError
 00477197    call        Exception.CreateResFmt;EFilerError.Create
 0047719C    call        @RaiseExcept
 004771A1    mov         edx,dword ptr [ebp-8]
 004771A4    mov         eax,dword ptr [ebp-4]
 004771A7    mov         eax,dword ptr [eax+4]
 004771AA    call        TList.Add
 004771AF    xor         eax,eax
 004771B1    pop         edx
 004771B2    pop         ecx
 004771B3    pop         ecx
 004771B4    mov         dword ptr fs:[eax],edx
 004771B7    push        4771CC
 004771BC    lea         eax,[ebp-0C]
 004771BF    call        @LStrClr
 004771C4    ret
>004771C5    jmp         @HandleFinally
>004771CA    jmp         004771BC
 004771CC    mov         esp,ebp
 004771CE    pop         ebp
 004771CF    ret
end;*}

//004771D0
{*function sub_004771D0(?:Pointer; ?:?):?;
begin
 004771D0    push        ebp
 004771D1    mov         ebp,esp
 004771D3    add         esp,0FFFFFFF4
 004771D6    mov         dword ptr [ebp-8],edx
 004771D9    mov         dword ptr [ebp-4],eax
 004771DC    mov         edx,dword ptr [ebp-8]
 004771DF    mov         eax,dword ptr [ebp-4]
 004771E2    mov         eax,dword ptr [eax+4]
 004771E5    call        00478890
 004771EA    test        eax,eax
 004771EC    setge       byte ptr [ebp-9]
 004771F0    mov         al,byte ptr [ebp-9]
 004771F3    mov         esp,ebp
 004771F5    pop         ebp
 004771F6    ret
end;*}

//004771F8
{*function sub_004771F8(?:Pointer; ?:?):?;
begin
 004771F8    push        ebp
 004771F9    mov         ebp,esp
 004771FB    add         esp,0FFFFFFF4
 004771FE    mov         dword ptr [ebp-8],edx
 00477201    mov         dword ptr [ebp-4],eax
 00477204    cmp         dword ptr [ebp-8],0
>00477208    je          0047721B
 0047720A    mov         eax,dword ptr [ebp-4]
 0047720D    call        FindHInstance
 00477212    cmp         eax,dword ptr [ebp-8]
>00477215    je          0047721B
 00477217    xor         eax,eax
>00477219    jmp         0047721D
 0047721B    mov         al,1
 0047721D    mov         byte ptr [ebp-9],al
 00477220    mov         al,byte ptr [ebp-9]
 00477223    mov         esp,ebp
 00477225    pop         ebp
 00477226    ret
end;*}

//00477228
{*procedure sub_00477228(?:Pointer; ?:?);
begin
 00477228    push        ebp
 00477229    mov         ebp,esp
 0047722B    add         esp,0FFFFFFF4
 0047722E    mov         dword ptr [ebp-8],edx
 00477231    mov         dword ptr [ebp-4],eax
 00477234    mov         eax,dword ptr [ebp-4]
 00477237    mov         eax,dword ptr [eax+0C]
 0047723A    mov         eax,dword ptr [eax+8]
 0047723D    dec         eax
 0047723E    cmp         eax,0
>00477241    jl          00477277
 00477243    mov         dword ptr [ebp-0C],eax
 00477246    mov         edx,dword ptr [ebp-0C]
 00477249    mov         eax,dword ptr [ebp-4]
 0047724C    mov         eax,dword ptr [eax+0C]
 0047724F    call        TList.Get
 00477254    mov         edx,dword ptr [ebp-8]
 00477257    call        004771F8
 0047725C    test        al,al
>0047725E    je          0047726E
 00477260    mov         edx,dword ptr [ebp-0C]
 00477263    mov         eax,dword ptr [ebp-4]
 00477266    mov         eax,dword ptr [eax+0C]
 00477269    call        00478668
 0047726E    dec         dword ptr [ebp-0C]
 00477271    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00477275    jne         00477246
 00477277    mov         eax,dword ptr [ebp-4]
 0047727A    mov         eax,dword ptr [eax+4]
 0047727D    mov         eax,dword ptr [eax+8]
 00477280    dec         eax
 00477281    cmp         eax,0
>00477284    jl          004772BA
 00477286    mov         dword ptr [ebp-0C],eax
 00477289    mov         edx,dword ptr [ebp-0C]
 0047728C    mov         eax,dword ptr [ebp-4]
 0047728F    mov         eax,dword ptr [eax+4]
 00477292    call        TList.Get
 00477297    mov         edx,dword ptr [ebp-8]
 0047729A    call        004771F8
 0047729F    test        al,al
>004772A1    je          004772B1
 004772A3    mov         edx,dword ptr [ebp-0C]
 004772A6    mov         eax,dword ptr [ebp-4]
 004772A9    mov         eax,dword ptr [eax+4]
 004772AC    call        00478668
 004772B1    dec         dword ptr [ebp-0C]
 004772B4    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004772B8    jne         00477289
 004772BA    mov         eax,dword ptr [ebp-4]
 004772BD    mov         eax,dword ptr [eax+8]
 004772C0    mov         edx,dword ptr [eax]
 004772C2    call        dword ptr [edx+14]
 004772C5    dec         eax
 004772C6    cmp         eax,0
>004772C9    jl          004772FF
 004772CB    mov         dword ptr [ebp-0C],eax
 004772CE    mov         edx,dword ptr [ebp-0C]
 004772D1    mov         eax,dword ptr [ebp-4]
 004772D4    mov         eax,dword ptr [eax+8]
 004772D7    mov         ecx,dword ptr [eax]
 004772D9    call        dword ptr [ecx+18]
 004772DC    mov         edx,dword ptr [ebp-8]
 004772DF    call        004771F8
 004772E4    test        al,al
>004772E6    je          004772F6
 004772E8    mov         edx,dword ptr [ebp-0C]
 004772EB    mov         eax,dword ptr [ebp-4]
 004772EE    mov         eax,dword ptr [eax+8]
 004772F1    mov         ecx,dword ptr [eax]
 004772F3    call        dword ptr [ecx+48]
 004772F6    dec         dword ptr [ebp-0C]
 004772F9    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004772FD    jne         004772CE
 004772FF    mov         esp,ebp
 00477301    pop         ebp
 00477302    ret
end;*}

//00477304
{*procedure sub_00477304(?:?; ?:?);
begin
 00477304    push        ebp
 00477305    mov         ebp,esp
 00477307    add         esp,0FFFFFFEC
 0047730A    mov         dword ptr [ebp-8],edx
 0047730D    mov         dword ptr [ebp-4],eax
 00477310    mov         eax,dword ptr [ebp-4]
 00477313    mov         eax,dword ptr [eax+20]
 00477316    cmp         eax,dword ptr [ebp-8]
>00477319    je          00477367
 0047731B    mov         eax,dword ptr [ebp-4]
 0047731E    mov         edx,dword ptr [ebp-8]
 00477321    mov         dword ptr [eax+20],edx
 00477324    mov         eax,dword ptr [ebp-4]
 00477327    mov         eax,dword ptr [eax+4]
 0047732A    mov         eax,dword ptr [eax+8]
 0047732D    dec         eax
 0047732E    test        eax,eax
>00477330    jl          00477367
 00477332    inc         eax
 00477333    mov         dword ptr [ebp-10],eax
 00477336    mov         dword ptr [ebp-0C],0
 0047733D    mov         eax,dword ptr [ebp-4]
 00477340    mov         eax,dword ptr [eax+4]
 00477343    mov         edx,dword ptr [ebp-0C]
 00477346    call        TList.Get
 0047734B    mov         dword ptr [ebp-14],eax
 0047734E    mov         edx,dword ptr [ebp-8]
 00477351    mov         eax,dword ptr [ebp-14]
 00477354    call        004770CC
 00477359    mov         edx,dword ptr [ebp-14]
 0047735C    mov         byte ptr [edx+10],al
 0047735F    inc         dword ptr [ebp-0C]
 00477362    dec         dword ptr [ebp-10]
>00477365    jne         0047733D
 00477367    mov         esp,ebp
 00477369    pop         ebp
 0047736A    ret
end;*}

//0047736C
constructor TRegGroups.Create;
begin
{*
 0047736C    push        ebp
 0047736D    mov         ebp,esp
 0047736F    add         esp,0FFFFFFF4
 00477372    test        dl,dl
>00477374    je          0047737E
 00477376    add         esp,0FFFFFFF0
 00477379    call        @ClassCreate
 0047737E    mov         byte ptr [ebp-5],dl
 00477381    mov         dword ptr [ebp-4],eax
 00477384    xor         edx,edx
 00477386    mov         eax,dword ptr [ebp-4]
 00477389    call        TObject.Create
 0047738E    mov         dl,1
 00477390    mov         eax,[004759C0];TList
 00477395    call        TObject.Create
 0047739A    mov         edx,dword ptr [ebp-4]
 0047739D    mov         dword ptr [edx+4],eax
 004773A0    mov         eax,dword ptr [ebp-4]
 004773A3    add         eax,8
 004773A6    push        eax
 004773A7    call        kernel32.InitializeCriticalSection
 004773AC    mov         ecx,dword ptr ds:[475AD0];TPersistent
 004773B2    mov         dl,1
 004773B4    mov         eax,[00476D94];TRegGroup
 004773B9    call        TRegGroup.Create
 004773BE    mov         dword ptr [ebp-0C],eax
 004773C1    mov         eax,dword ptr [ebp-4]
 004773C4    mov         eax,dword ptr [eax+4]
 004773C7    mov         edx,dword ptr [ebp-0C]
 004773CA    call        TList.Add
 004773CF    mov         eax,dword ptr [ebp-0C]
 004773D2    mov         byte ptr [eax+10],1
 004773D6    mov         eax,dword ptr [ebp-4]
 004773D9    cmp         byte ptr [ebp-5],0
>004773DD    je          004773EE
 004773DF    call        @AfterConstruction
 004773E4    pop         dword ptr fs:[0]
 004773EB    add         esp,0C
 004773EE    mov         eax,dword ptr [ebp-4]
 004773F1    mov         esp,ebp
 004773F3    pop         ebp
 004773F4    ret
*}
end;

//00477474
{*function sub_00477474(?:?; ?:Pointer):?;
begin
 00477474    push        ebp
 00477475    mov         ebp,esp
 00477477    add         esp,0FFFFFFE8
 0047747A    mov         dword ptr [ebp-8],edx
 0047747D    mov         dword ptr [ebp-4],eax
 00477480    xor         eax,eax
 00477482    mov         dword ptr [ebp-0C],eax
 00477485    mov         eax,dword ptr [ebp-4]
 00477488    mov         eax,dword ptr [eax+4]
 0047748B    mov         eax,dword ptr [eax+8]
 0047748E    dec         eax
 0047748F    test        eax,eax
>00477491    jl          004774CE
 00477493    inc         eax
 00477494    mov         dword ptr [ebp-18],eax
 00477497    mov         dword ptr [ebp-10],0
 0047749E    mov         eax,dword ptr [ebp-4]
 004774A1    mov         eax,dword ptr [eax+4]
 004774A4    mov         edx,dword ptr [ebp-10]
 004774A7    call        TList.Get
 004774AC    mov         dword ptr [ebp-14],eax
 004774AF    mov         eax,dword ptr [ebp-8]
 004774B2    push        eax
 004774B3    mov         ecx,dword ptr [ebp-0C]
 004774B6    mov         edx,dword ptr [ebp-14]
 004774B9    mov         eax,[00476D94];TRegGroup
 004774BE    call        00476ED8
 004774C3    mov         dword ptr [ebp-0C],eax
 004774C6    inc         dword ptr [ebp-10]
 004774C9    dec         dword ptr [ebp-18]
>004774CC    jne         0047749E
 004774CE    mov         eax,dword ptr [ebp-0C]
 004774D1    mov         esp,ebp
 004774D3    pop         ebp
 004774D4    ret
end;*}

//004774D8
{*function sub_004774D8(?:?; ?:?):?;
begin
 004774D8    push        ebp
 004774D9    mov         ebp,esp
 004774DB    add         esp,0FFFFFFE8
 004774DE    mov         dword ptr [ebp-8],edx
 004774E1    mov         dword ptr [ebp-4],eax
 004774E4    xor         eax,eax
 004774E6    mov         dword ptr [ebp-0C],eax
 004774E9    mov         eax,dword ptr [ebp-4]
 004774EC    mov         eax,dword ptr [eax+4]
 004774EF    mov         eax,dword ptr [eax+8]
 004774F2    dec         eax
 004774F3    test        eax,eax
>004774F5    jl          00477538
 004774F7    inc         eax
 004774F8    mov         dword ptr [ebp-14],eax
 004774FB    mov         dword ptr [ebp-10],0
 00477502    mov         eax,dword ptr [ebp-4]
 00477505    mov         eax,dword ptr [eax+4]
 00477508    mov         edx,dword ptr [ebp-10]
 0047750B    call        TList.Get
 00477510    mov         dword ptr [ebp-18],eax
 00477513    mov         eax,dword ptr [ebp-18]
 00477516    cmp         byte ptr [eax+10],0
>0047751A    je          0047752A
 0047751C    mov         edx,dword ptr [ebp-8]
 0047751F    mov         eax,dword ptr [ebp-18]
 00477522    call        00477048
 00477527    mov         dword ptr [ebp-0C],eax
 0047752A    cmp         dword ptr [ebp-0C],0
>0047752E    jne         00477538
 00477530    inc         dword ptr [ebp-10]
 00477533    dec         dword ptr [ebp-14]
>00477536    jne         00477502
 00477538    mov         eax,dword ptr [ebp-0C]
 0047753B    mov         esp,ebp
 0047753D    pop         ebp
 0047753E    ret
end;*}

//00477540
procedure Error;
begin
{*
 00477540    push        ebp
 00477541    mov         ebp,esp
 00477543    add         esp,0FFFFFEF4
 00477549    xor         eax,eax
 0047754B    mov         dword ptr [ebp-10C],eax
 00477551    xor         eax,eax
 00477553    push        ebp
 00477554    push        4775C3
 00477559    push        dword ptr fs:[eax]
 0047755C    mov         dword ptr fs:[eax],esp
 0047755F    lea         edx,[ebp-108]
 00477565    mov         eax,dword ptr [ebp+8]
 00477568    mov         eax,dword ptr [eax-4]
 0047756B    call        TObject.ClassName
 00477570    lea         eax,[ebp-108]
 00477576    mov         dword ptr [ebp-8],eax
 00477579    mov         byte ptr [ebp-4],4
 0047757D    lea         eax,[ebp-8]
 00477580    push        eax
 00477581    push        0
 00477583    lea         edx,[ebp-10C]
 00477589    mov         eax,[0055B664];^SUnknownGroup:TResStringRec
 0047758E    call        LoadResString
 00477593    mov         ecx,dword ptr [ebp-10C]
 00477599    mov         dl,1
 0047759B    mov         eax,[004755D8];EFilerError
 004775A0    call        Exception.CreateFmt
 004775A5    call        @RaiseExcept
 004775AA    xor         eax,eax
 004775AC    pop         edx
 004775AD    pop         ecx
 004775AE    pop         ecx
 004775AF    mov         dword ptr fs:[eax],edx
 004775B2    push        4775CA
 004775B7    lea         eax,[ebp-10C]
 004775BD    call        @LStrClr
 004775C2    ret
>004775C3    jmp         @HandleFinally
>004775C8    jmp         004775B7
 004775CA    mov         esp,ebp
 004775CC    pop         ebp
 004775CD    ret
*}
end;

//004775D0
{*procedure sub_004775D0(?:?; ?:?; ?:?);
begin
 004775D0    push        ebp
 004775D1    mov         ebp,esp
 004775D3    add         esp,0FFFFFFDC
 004775D6    mov         dword ptr [ebp-4],ecx
 004775D9    mov         dword ptr [ebp-0C],edx
 004775DC    mov         dword ptr [ebp-8],eax
 004775DF    mov         edx,dword ptr [ebp-4]
 004775E2    mov         eax,dword ptr [ebp-8]
 004775E5    call        00477474
 004775EA    mov         dword ptr [ebp-10],eax
 004775ED    cmp         dword ptr [ebp-10],0
>004775F1    jne         004775FA
 004775F3    push        ebp
 004775F4    call        Error
 004775F9    pop         ecx
 004775FA    mov         edx,dword ptr [ebp-0C]
 004775FD    mov         eax,dword ptr [ebp-10]
 00477600    call        00476E44
 00477605    mov         eax,dword ptr [ebp-8]
 00477608    mov         eax,dword ptr [eax+4]
 0047760B    mov         eax,dword ptr [eax+8]
 0047760E    dec         eax
 0047760F    test        eax,eax
>00477611    jl          004776AE
 00477617    inc         eax
 00477618    mov         dword ptr [ebp-24],eax
 0047761B    mov         dword ptr [ebp-1C],0
 00477622    mov         eax,dword ptr [ebp-8]
 00477625    mov         eax,dword ptr [eax+4]
 00477628    mov         edx,dword ptr [ebp-1C]
 0047762B    call        TList.Get
 00477630    mov         dword ptr [ebp-14],eax
 00477633    mov         eax,dword ptr [ebp-14]
 00477636    cmp         eax,dword ptr [ebp-10]
>00477639    je          004776A2
 0047763B    mov         eax,dword ptr [ebp-14]
 0047763E    mov         eax,dword ptr [eax+4]
 00477641    mov         eax,dword ptr [eax+8]
 00477644    dec         eax
 00477645    cmp         eax,0
>00477648    jl          004776A2
 0047764A    mov         dword ptr [ebp-20],eax
 0047764D    mov         eax,dword ptr [ebp-14]
 00477650    mov         eax,dword ptr [eax+4]
 00477653    mov         edx,dword ptr [ebp-20]
 00477656    call        TList.Get
 0047765B    mov         dword ptr [ebp-18],eax
 0047765E    mov         edx,dword ptr [ebp-0C]
 00477661    mov         eax,dword ptr [ebp-18]
 00477664    call        TObject.InheritsFrom
 00477669    test        al,al
>0047766B    je          00477699
 0047766D    mov         edx,dword ptr [ebp-18]
 00477670    mov         eax,dword ptr [ebp-8]
 00477673    call        00477474
 00477678    cmp         eax,dword ptr [ebp-10]
>0047767B    jne         00477699
 0047767D    mov         eax,dword ptr [ebp-14]
 00477680    mov         eax,dword ptr [eax+4]
 00477683    mov         edx,dword ptr [ebp-20]
 00477686    call        00478668
 0047768B    mov         eax,dword ptr [ebp-10]
 0047768E    mov         eax,dword ptr [eax+4]
 00477691    mov         edx,dword ptr [ebp-18]
 00477694    call        TList.Add
 00477699    dec         dword ptr [ebp-20]
 0047769C    cmp         dword ptr [ebp-20],0FFFFFFFF
>004776A0    jne         0047764D
 004776A2    inc         dword ptr [ebp-1C]
 004776A5    dec         dword ptr [ebp-24]
>004776A8    jne         00477622
 004776AE    mov         esp,ebp
 004776B0    pop         ebp
 004776B1    ret
end;*}

//004776B4
{*procedure sub_004776B4(?:?);
begin
 004776B4    push        ebp
 004776B5    mov         ebp,esp
 004776B7    push        ecx
 004776B8    mov         dword ptr [ebp-4],eax
 004776BB    mov         eax,dword ptr [ebp-4]
 004776BE    add         eax,8
 004776C1    push        eax
 004776C2    call        kernel32.EnterCriticalSection
 004776C7    pop         ecx
 004776C8    pop         ebp
 004776C9    ret
end;*}

//004776CC
{*procedure sub_004776CC(?:?; ?:?);
begin
 004776CC    push        ebp
 004776CD    mov         ebp,esp
 004776CF    add         esp,0FFFFFFF4
 004776D2    mov         dword ptr [ebp-8],edx
 004776D5    mov         dword ptr [ebp-4],eax
 004776D8    mov         edx,dword ptr [ebp-8]
 004776DB    mov         eax,dword ptr [ebp-4]
 004776DE    call        00477474
 004776E3    mov         dword ptr [ebp-0C],eax
 004776E6    cmp         dword ptr [ebp-0C],0
>004776EA    je          004776F7
 004776EC    mov         edx,dword ptr [ebp-8]
 004776EF    mov         eax,dword ptr [ebp-0C]
 004776F2    call        00477124
 004776F7    mov         esp,ebp
 004776F9    pop         ebp
 004776FA    ret
end;*}

//004776FC
{*function sub_004776FC(?:?; ?:?):?;
begin
 004776FC    push        ebp
 004776FD    mov         ebp,esp
 004776FF    add         esp,0FFFFFFEC
 00477702    mov         dword ptr [ebp-8],edx
 00477705    mov         dword ptr [ebp-4],eax
 00477708    mov         byte ptr [ebp-9],1
 0047770C    mov         eax,dword ptr [ebp-4]
 0047770F    mov         eax,dword ptr [eax+4]
 00477712    mov         eax,dword ptr [eax+8]
 00477715    dec         eax
 00477716    test        eax,eax
>00477718    jl          00477747
 0047771A    inc         eax
 0047771B    mov         dword ptr [ebp-14],eax
 0047771E    mov         dword ptr [ebp-10],0
 00477725    mov         eax,dword ptr [ebp-4]
 00477728    mov         eax,dword ptr [eax+4]
 0047772B    mov         edx,dword ptr [ebp-10]
 0047772E    call        TList.Get
 00477733    mov         edx,dword ptr [ebp-8]
 00477736    call        004771D0
 0047773B    test        al,al
>0047773D    jne         0047774B
 0047773F    inc         dword ptr [ebp-10]
 00477742    dec         dword ptr [ebp-14]
>00477745    jne         00477725
 00477747    mov         byte ptr [ebp-9],0
 0047774B    mov         al,byte ptr [ebp-9]
 0047774E    mov         esp,ebp
 00477750    pop         ebp
 00477751    ret
end;*}

//00477754
{*procedure sub_00477754(?:?; ?:?);
begin
 00477754    push        ebp
 00477755    mov         ebp,esp
 00477757    add         esp,0FFFFFFF0
 0047775A    mov         dword ptr [ebp-8],edx
 0047775D    mov         dword ptr [ebp-4],eax
 00477760    mov         eax,dword ptr [ebp-4]
 00477763    mov         eax,dword ptr [eax+4]
 00477766    mov         eax,dword ptr [eax+8]
 00477769    dec         eax
 0047776A    test        eax,eax
>0047776C    jl          0047779E
 0047776E    inc         eax
 0047776F    mov         dword ptr [ebp-10],eax
 00477772    mov         dword ptr [ebp-0C],0
 00477779    mov         eax,dword ptr [ebp-4]
 0047777C    mov         eax,dword ptr [eax+4]
 0047777F    mov         edx,dword ptr [ebp-0C]
 00477782    call        TList.Get
 00477787    mov         eax,dword ptr [eax+0C]
 0047778A    mov         edx,dword ptr [ebp-8]
 0047778D    call        00478890
 00477792    test        eax,eax
>00477794    jge         004777BA
 00477796    inc         dword ptr [ebp-0C]
 00477799    dec         dword ptr [ebp-10]
>0047779C    jne         00477779
 0047779E    mov         ecx,dword ptr [ebp-8]
 004777A1    mov         dl,1
 004777A3    mov         eax,[00476D94];TRegGroup
 004777A8    call        TRegGroup.Create;TRegGroup.Create
 004777AD    mov         edx,eax
 004777AF    mov         eax,dword ptr [ebp-4]
 004777B2    mov         eax,dword ptr [eax+4]
 004777B5    call        TList.Add
 004777BA    mov         esp,ebp
 004777BC    pop         ebp
 004777BD    ret
end;*}

//004777C0
{*procedure sub_004777C0(?:?);
begin
 004777C0    push        ebp
 004777C1    mov         ebp,esp
 004777C3    push        ecx
 004777C4    mov         dword ptr [ebp-4],eax
 004777C7    mov         eax,dword ptr [ebp-4]
 004777CA    add         eax,8
 004777CD    push        eax
 004777CE    call        kernel32.LeaveCriticalSection
 004777D3    pop         ecx
 004777D4    pop         ebp
 004777D5    ret
end;*}

//004777D8
{*procedure sub_004777D8(?:?; ?:?);
begin
 004777D8    push        ebp
 004777D9    mov         ebp,esp
 004777DB    add         esp,0FFFFFFF0
 004777DE    mov         dword ptr [ebp-8],edx
 004777E1    mov         dword ptr [ebp-4],eax
 004777E4    mov         eax,dword ptr [ebp-4]
 004777E7    mov         eax,dword ptr [eax+4]
 004777EA    mov         eax,dword ptr [eax+8]
 004777ED    dec         eax
 004777EE    cmp         eax,0
>004777F1    jl          0047783D
 004777F3    mov         dword ptr [ebp-0C],eax
 004777F6    mov         eax,dword ptr [ebp-4]
 004777F9    mov         eax,dword ptr [eax+4]
 004777FC    mov         edx,dword ptr [ebp-0C]
 004777FF    call        TList.Get
 00477804    mov         dword ptr [ebp-10],eax
 00477807    mov         edx,dword ptr [ebp-8]
 0047780A    mov         eax,dword ptr [ebp-10]
 0047780D    call        00477228
 00477812    mov         eax,dword ptr [ebp-10]
 00477815    mov         eax,dword ptr [eax+0C]
 00477818    cmp         dword ptr [eax+8],0
>0047781C    jne         00477834
 0047781E    mov         eax,dword ptr [ebp-10]
 00477821    call        TObject.Free
 00477826    mov         eax,dword ptr [ebp-4]
 00477829    mov         eax,dword ptr [eax+4]
 0047782C    mov         edx,dword ptr [ebp-0C]
 0047782F    call        00478668
 00477834    dec         dword ptr [ebp-0C]
 00477837    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0047783B    jne         004777F6
 0047783D    mov         esp,ebp
 0047783F    pop         ebp
 00477840    ret
end;*}

//00477844
{*constructor TClassFinder.Create(?:?);
begin
 00477844    push        ebp
 00477845    mov         ebp,esp
 00477847    add         esp,0FFFFFFE8
 0047784A    test        dl,dl
>0047784C    je          00477856
 0047784E    add         esp,0FFFFFFF0
 00477851    call        @ClassCreate
 00477856    mov         dword ptr [ebp-0C],ecx
 00477859    mov         byte ptr [ebp-5],dl
 0047785C    mov         dword ptr [ebp-4],eax
 0047785F    xor         edx,edx
 00477861    mov         eax,dword ptr [ebp-4]
 00477864    call        TObject.Create
 00477869    mov         dl,1
 0047786B    mov         eax,[004759C0];TList
 00477870    call        TObject.Create;TList.Create
 00477875    mov         edx,dword ptr [ebp-4]
 00477878    mov         dword ptr [edx+4],eax
 0047787B    mov         eax,[0055DADC];gvar_0055DADC
 00477880    call        004776B4
 00477885    xor         eax,eax
 00477887    push        ebp
 00477888    push        477962
 0047788D    push        dword ptr fs:[eax]
 00477890    mov         dword ptr fs:[eax],esp
 00477893    cmp         dword ptr [ebp-0C],0
>00477897    jne         004778A4
 00477899    mov         eax,[0055DADC];gvar_0055DADC
 0047789E    mov         eax,dword ptr [eax+20]
 004778A1    mov         dword ptr [ebp-0C],eax
 004778A4    mov         eax,[0055DADC];gvar_0055DADC
 004778A9    mov         eax,dword ptr [eax+4]
 004778AC    mov         eax,dword ptr [eax+8]
 004778AF    dec         eax
 004778B0    test        eax,eax
>004778B2    jl          004778F7
 004778B4    inc         eax
 004778B5    mov         dword ptr [ebp-18],eax
 004778B8    mov         dword ptr [ebp-10],0
 004778BF    mov         eax,[0055DADC];gvar_0055DADC
 004778C4    mov         eax,dword ptr [eax+4]
 004778C7    mov         edx,dword ptr [ebp-10]
 004778CA    call        TList.Get
 004778CF    mov         dword ptr [ebp-14],eax
 004778D2    mov         edx,dword ptr [ebp-0C]
 004778D5    mov         eax,dword ptr [ebp-14]
 004778D8    call        004770CC
 004778DD    test        al,al
>004778DF    je          004778EF
 004778E1    mov         eax,dword ptr [ebp-4]
 004778E4    mov         eax,dword ptr [eax+4]
 004778E7    mov         edx,dword ptr [ebp-14]
 004778EA    call        TList.Add
 004778EF    inc         dword ptr [ebp-10]
 004778F2    dec         dword ptr [ebp-18]
>004778F5    jne         004778BF
 004778F7    cmp         byte ptr [ebp+8],0
>004778FB    je          0047794A
 004778FD    mov         eax,[0055DADC];gvar_0055DADC
 00477902    mov         eax,dword ptr [eax+4]
 00477905    mov         eax,dword ptr [eax+8]
 00477908    dec         eax
 00477909    test        eax,eax
>0047790B    jl          0047794A
 0047790D    inc         eax
 0047790E    mov         dword ptr [ebp-18],eax
 00477911    mov         dword ptr [ebp-10],0
 00477918    mov         eax,[0055DADC];gvar_0055DADC
 0047791D    mov         eax,dword ptr [eax+4]
 00477920    mov         edx,dword ptr [ebp-10]
 00477923    call        TList.Get
 00477928    mov         dword ptr [ebp-14],eax
 0047792B    mov         eax,dword ptr [ebp-14]
 0047792E    cmp         byte ptr [eax+10],0
>00477932    je          00477942
 00477934    mov         eax,dword ptr [ebp-4]
 00477937    mov         eax,dword ptr [eax+4]
 0047793A    mov         edx,dword ptr [ebp-14]
 0047793D    call        TList.Add
 00477942    inc         dword ptr [ebp-10]
 00477945    dec         dword ptr [ebp-18]
>00477948    jne         00477918
 0047794A    xor         eax,eax
 0047794C    pop         edx
 0047794D    pop         ecx
 0047794E    pop         ecx
 0047794F    mov         dword ptr fs:[eax],edx
 00477952    push        477969
 00477957    mov         eax,[0055DADC];gvar_0055DADC
 0047795C    call        004777C0
 00477961    ret
>00477962    jmp         @HandleFinally
>00477967    jmp         00477957
 00477969    mov         eax,dword ptr [ebp-4]
 0047796C    cmp         byte ptr [ebp-5],0
>00477970    je          00477981
 00477972    call        @AfterConstruction
 00477977    pop         dword ptr fs:[0]
 0047797E    add         esp,0C
 00477981    mov         eax,dword ptr [ebp-4]
 00477984    mov         esp,ebp
 00477986    pop         ebp
 00477987    ret         4
end;*}

//004779C8
{*function sub_004779C8(?:?; ?:?):?;
begin
 004779C8    push        ebp
 004779C9    mov         ebp,esp
 004779CB    add         esp,0FFFFFFE8
 004779CE    mov         dword ptr [ebp-8],edx
 004779D1    mov         dword ptr [ebp-4],eax
 004779D4    xor         eax,eax
 004779D6    mov         dword ptr [ebp-0C],eax
 004779D9    mov         eax,[0055DADC];gvar_0055DADC
 004779DE    call        004776B4
 004779E3    xor         eax,eax
 004779E5    push        ebp
 004779E6    push        477A56
 004779EB    push        dword ptr fs:[eax]
 004779EE    mov         dword ptr fs:[eax],esp
 004779F1    mov         eax,dword ptr [ebp-4]
 004779F4    mov         eax,dword ptr [eax+4]
 004779F7    mov         eax,dword ptr [eax+8]
 004779FA    dec         eax
 004779FB    test        eax,eax
>004779FD    jl          00477A3E
 004779FF    inc         eax
 00477A00    mov         dword ptr [ebp-14],eax
 00477A03    mov         dword ptr [ebp-10],0
 00477A0A    mov         eax,dword ptr [ebp-4]
 00477A0D    mov         eax,dword ptr [eax+4]
 00477A10    mov         edx,dword ptr [ebp-10]
 00477A13    call        TList.Get
 00477A18    mov         dword ptr [ebp-18],eax
 00477A1B    mov         edx,dword ptr [ebp-8]
 00477A1E    mov         eax,dword ptr [ebp-18]
 00477A21    call        00477048
 00477A26    mov         dword ptr [ebp-0C],eax
 00477A29    cmp         dword ptr [ebp-0C],0
>00477A2D    je          00477A36
 00477A2F    call        @TryFinallyExit
>00477A34    jmp         00477A5D
 00477A36    inc         dword ptr [ebp-10]
 00477A39    dec         dword ptr [ebp-14]
>00477A3C    jne         00477A0A
 00477A3E    xor         eax,eax
 00477A40    pop         edx
 00477A41    pop         ecx
 00477A42    pop         ecx
 00477A43    mov         dword ptr fs:[eax],edx
 00477A46    push        477A5D
 00477A4B    mov         eax,[0055DADC];gvar_0055DADC
 00477A50    call        004777C0
 00477A55    ret
>00477A56    jmp         @HandleFinally
>00477A5B    jmp         00477A4B
 00477A5D    mov         eax,dword ptr [ebp-0C]
 00477A60    mov         esp,ebp
 00477A62    pop         ebp
 00477A63    ret
end;*}

//00477A64
function GetFieldClassTable(AClass:TClass):PFieldClassTable;
begin
{*
 00477A64    mov         eax,dword ptr [eax-38]
 00477A67    or          eax,eax
>00477A69    je          00477A6E
 00477A6B    mov         eax,dword ptr [eax+2]
 00477A6E    ret
*}
end;

//00477A70
{*procedure sub_00477A70(?:?);
begin
 00477A70    push        ebp
 00477A71    mov         ebp,esp
 00477A73    add         esp,0FFFFFFF0
 00477A76    xor         edx,edx
 00477A78    mov         dword ptr [ebp-10],edx
 00477A7B    mov         dword ptr [ebp-4],eax
 00477A7E    xor         eax,eax
 00477A80    push        ebp
 00477A81    push        477AD3
 00477A86    push        dword ptr fs:[eax]
 00477A89    mov         dword ptr fs:[eax],esp
 00477A8C    mov         eax,dword ptr [ebp-4]
 00477A8F    mov         dword ptr [ebp-0C],eax
 00477A92    mov         byte ptr [ebp-8],0B
 00477A96    lea         eax,[ebp-0C]
 00477A99    push        eax
 00477A9A    push        0
 00477A9C    lea         edx,[ebp-10]
 00477A9F    mov         eax,[0055B618];^SClassNotFound:TResStringRec
 00477AA4    call        LoadResString
 00477AA9    mov         ecx,dword ptr [ebp-10]
 00477AAC    mov         dl,1
 00477AAE    mov         eax,[004756E0];EClassNotFound
 00477AB3    call        Exception.CreateFmt;EClassNotFound.Create
 00477AB8    call        @RaiseExcept
 00477ABD    xor         eax,eax
 00477ABF    pop         edx
 00477AC0    pop         ecx
 00477AC1    pop         ecx
 00477AC2    mov         dword ptr fs:[eax],edx
 00477AC5    push        477ADA
 00477ACA    lea         eax,[ebp-10]
 00477ACD    call        @LStrClr
 00477AD2    ret
>00477AD3    jmp         @HandleFinally
>00477AD8    jmp         00477ACA
 00477ADA    mov         esp,ebp
 00477ADC    pop         ebp
 00477ADD    ret
end;*}

//00477AE0
{*function sub_00477AE0(?:?):?;
begin
 00477AE0    push        ebp
 00477AE1    mov         ebp,esp
 00477AE3    add         esp,0FFFFFFF8
 00477AE6    mov         dword ptr [ebp-4],eax
 00477AE9    mov         eax,[0055DADC];gvar_0055DADC
 00477AEE    call        004776B4
 00477AF3    xor         eax,eax
 00477AF5    push        ebp
 00477AF6    push        477B29
 00477AFB    push        dword ptr fs:[eax]
 00477AFE    mov         dword ptr fs:[eax],esp
 00477B01    mov         edx,dword ptr [ebp-4]
 00477B04    mov         eax,[0055DADC];gvar_0055DADC
 00477B09    call        004774D8
 00477B0E    mov         dword ptr [ebp-8],eax
 00477B11    xor         eax,eax
 00477B13    pop         edx
 00477B14    pop         ecx
 00477B15    pop         ecx
 00477B16    mov         dword ptr fs:[eax],edx
 00477B19    push        477B30
 00477B1E    mov         eax,[0055DADC];gvar_0055DADC
 00477B23    call        004777C0
 00477B28    ret
>00477B29    jmp         @HandleFinally
>00477B2E    jmp         00477B1E
 00477B30    mov         eax,dword ptr [ebp-8]
 00477B33    pop         ecx
 00477B34    pop         ecx
 00477B35    pop         ebp
 00477B36    ret
end;*}

//00477B38
{*function sub_00477B38(?:?):?;
begin
 00477B38    push        ebp
 00477B39    mov         ebp,esp
 00477B3B    add         esp,0FFFFFFF8
 00477B3E    mov         dword ptr [ebp-4],eax
 00477B41    mov         eax,dword ptr [ebp-4]
 00477B44    call        00477AE0
 00477B49    mov         dword ptr [ebp-8],eax
 00477B4C    cmp         dword ptr [ebp-8],0
>00477B50    jne         00477B5A
 00477B52    mov         eax,dword ptr [ebp-4]
 00477B55    call        00477A70
 00477B5A    mov         eax,dword ptr [ebp-8]
 00477B5D    pop         ecx
 00477B5E    pop         ecx
 00477B5F    pop         ebp
 00477B60    ret
end;*}

//00477B64
procedure RegisterClass(AClass:TPersistentClass);
begin
{*
 00477B64    push        ebp
 00477B65    mov         ebp,esp
 00477B67    push        ecx
 00477B68    mov         dword ptr [ebp-4],eax
 00477B6B    mov         eax,[0055DADC];gvar_0055DADC
 00477B70    call        004776B4
 00477B75    xor         eax,eax
 00477B77    push        ebp
 00477B78    push        477BD1
 00477B7D    push        dword ptr fs:[eax]
 00477B80    mov         dword ptr fs:[eax],esp
>00477B83    jmp         00477BA8
 00477B85    mov         edx,dword ptr [ebp-4]
 00477B88    mov         eax,[0055DADC];gvar_0055DADC
 00477B8D    call        004776CC
 00477B92    mov         eax,dword ptr [ebp-4]
 00477B95    cmp         eax,dword ptr ds:[475AD0];TPersistent
>00477B9B    je          00477BB9
 00477B9D    mov         eax,dword ptr [ebp-4]
 00477BA0    call        TObject.ClassParent
 00477BA5    mov         dword ptr [ebp-4],eax
 00477BA8    mov         edx,dword ptr [ebp-4]
 00477BAB    mov         eax,[0055DADC];gvar_0055DADC
 00477BB0    call        004776FC
 00477BB5    test        al,al
>00477BB7    je          00477B85
 00477BB9    xor         eax,eax
 00477BBB    pop         edx
 00477BBC    pop         ecx
 00477BBD    pop         ecx
 00477BBE    mov         dword ptr fs:[eax],edx
 00477BC1    push        477BD8
 00477BC6    mov         eax,[0055DADC];gvar_0055DADC
 00477BCB    call        004777C0
 00477BD0    ret
>00477BD1    jmp         @HandleFinally
>00477BD6    jmp         00477BC6
 00477BD8    pop         ecx
 00477BD9    pop         ebp
 00477BDA    ret
*}
end;

//00477BDC
procedure UnRegisterModuleClasses(Module:HMODULE);
begin
{*
 00477BDC    push        ebp
 00477BDD    mov         ebp,esp
 00477BDF    push        ecx
 00477BE0    mov         dword ptr [ebp-4],eax
 00477BE3    mov         eax,[0055DADC];gvar_0055DADC
 00477BE8    call        004776B4
 00477BED    xor         eax,eax
 00477BEF    push        ebp
 00477BF0    push        477C20
 00477BF5    push        dword ptr fs:[eax]
 00477BF8    mov         dword ptr fs:[eax],esp
 00477BFB    mov         edx,dword ptr [ebp-4]
 00477BFE    mov         eax,[0055DADC];gvar_0055DADC
 00477C03    call        004777D8
 00477C08    xor         eax,eax
 00477C0A    pop         edx
 00477C0B    pop         ecx
 00477C0C    pop         ecx
 00477C0D    mov         dword ptr fs:[eax],edx
 00477C10    push        477C27
 00477C15    mov         eax,[0055DADC];gvar_0055DADC
 00477C1A    call        004777C0
 00477C1F    ret
>00477C20    jmp         @HandleFinally
>00477C25    jmp         00477C15
 00477C27    pop         ecx
 00477C28    pop         ebp
 00477C29    ret
*}
end;

//00477C2C
procedure StartClassGroup(AClass:TPersistentClass);
begin
{*
 00477C2C    push        ebp
 00477C2D    mov         ebp,esp
 00477C2F    push        ecx
 00477C30    mov         dword ptr [ebp-4],eax
 00477C33    mov         eax,[0055DADC];gvar_0055DADC
 00477C38    call        004776B4
 00477C3D    xor         eax,eax
 00477C3F    push        ebp
 00477C40    push        477C70
 00477C45    push        dword ptr fs:[eax]
 00477C48    mov         dword ptr fs:[eax],esp
 00477C4B    mov         edx,dword ptr [ebp-4]
 00477C4E    mov         eax,[0055DADC];gvar_0055DADC
 00477C53    call        00477754
 00477C58    xor         eax,eax
 00477C5A    pop         edx
 00477C5B    pop         ecx
 00477C5C    pop         ecx
 00477C5D    mov         dword ptr fs:[eax],edx
 00477C60    push        477C77
 00477C65    mov         eax,[0055DADC];gvar_0055DADC
 00477C6A    call        004777C0
 00477C6F    ret
>00477C70    jmp         @HandleFinally
>00477C75    jmp         00477C65
 00477C77    pop         ecx
 00477C78    pop         ebp
 00477C79    ret
*}
end;

//00477C7C
procedure GroupDescendentsWith(AClass:TPersistentClass; AClassGroup:TPersistentClass);
begin
{*
 00477C7C    push        ebp
 00477C7D    mov         ebp,esp
 00477C7F    add         esp,0FFFFFFF8
 00477C82    mov         dword ptr [ebp-8],edx
 00477C85    mov         dword ptr [ebp-4],eax
 00477C88    mov         eax,[0055DADC];gvar_0055DADC
 00477C8D    call        004776B4
 00477C92    xor         eax,eax
 00477C94    push        ebp
 00477C95    push        477CC8
 00477C9A    push        dword ptr fs:[eax]
 00477C9D    mov         dword ptr fs:[eax],esp
 00477CA0    mov         ecx,dword ptr [ebp-8]
 00477CA3    mov         edx,dword ptr [ebp-4]
 00477CA6    mov         eax,[0055DADC];gvar_0055DADC
 00477CAB    call        004775D0
 00477CB0    xor         eax,eax
 00477CB2    pop         edx
 00477CB3    pop         ecx
 00477CB4    pop         ecx
 00477CB5    mov         dword ptr fs:[eax],edx
 00477CB8    push        477CCF
 00477CBD    mov         eax,[0055DADC];gvar_0055DADC
 00477CC2    call        004777C0
 00477CC7    ret
>00477CC8    jmp         @HandleFinally
>00477CCD    jmp         00477CBD
 00477CCF    pop         ecx
 00477CD0    pop         ecx
 00477CD1    pop         ebp
 00477CD2    ret
*}
end;

//00477CD4
function ActivateClassGroup(AClass:TPersistentClass):TPersistentClass;
begin
{*
 00477CD4    push        ebp
 00477CD5    mov         ebp,esp
 00477CD7    add         esp,0FFFFFFF8
 00477CDA    mov         dword ptr [ebp-4],eax
 00477CDD    mov         eax,[0055DADC];gvar_0055DADC
 00477CE2    call        004776B4
 00477CE7    xor         eax,eax
 00477CE9    push        ebp
 00477CEA    push        477D25
 00477CEF    push        dword ptr fs:[eax]
 00477CF2    mov         dword ptr fs:[eax],esp
 00477CF5    mov         eax,[0055DADC];gvar_0055DADC
 00477CFA    mov         eax,dword ptr [eax+20]
 00477CFD    mov         dword ptr [ebp-8],eax
 00477D00    mov         edx,dword ptr [ebp-4]
 00477D03    mov         eax,[0055DADC];gvar_0055DADC
 00477D08    call        00477304
 00477D0D    xor         eax,eax
 00477D0F    pop         edx
 00477D10    pop         ecx
 00477D11    pop         ecx
 00477D12    mov         dword ptr fs:[eax],edx
 00477D15    push        477D2C
 00477D1A    mov         eax,[0055DADC];gvar_0055DADC
 00477D1F    call        004777C0
 00477D24    ret
>00477D25    jmp         @HandleFinally
>00477D2A    jmp         00477D1A
 00477D2C    mov         eax,dword ptr [ebp-8]
 00477D2F    pop         ecx
 00477D30    pop         ecx
 00477D31    pop         ebp
 00477D32    ret
*}
end;

//00477D8C
{*constructor sub_00477D8C(?:?; ?:?);
begin
 00477D8C    push        ebp
 00477D8D    mov         ebp,esp
 00477D8F    add         esp,0FFFFFFF4
 00477D92    test        dl,dl
>00477D94    je          00477D9E
 00477D96    add         esp,0FFFFFFF0
 00477D99    call        @ClassCreate
 00477D9E    mov         dword ptr [ebp-0C],ecx
 00477DA1    mov         byte ptr [ebp-5],dl
 00477DA4    mov         dword ptr [ebp-4],eax
 00477DA7    mov         eax,dword ptr [ebp-4]
 00477DAA    mov         edx,dword ptr [ebp-0C]
 00477DAD    mov         dword ptr [eax+4],edx
 00477DB0    mov         eax,dword ptr [ebp-4]
 00477DB3    mov         edx,dword ptr [ebp+0C]
 00477DB6    mov         dword ptr [eax+8],edx
 00477DB9    mov         eax,dword ptr [ebp-4]
 00477DBC    mov         edx,dword ptr [ebp+8]
 00477DBF    mov         dword ptr [eax+0C],edx
 00477DC2    mov         eax,dword ptr [ebp-4]
 00477DC5    cmp         byte ptr [ebp-5],0
>00477DC9    je          00477DDA
 00477DCB    call        @AfterConstruction
 00477DD0    pop         dword ptr fs:[0]
 00477DD7    add         esp,0C
 00477DDA    mov         eax,dword ptr [ebp-4]
 00477DDD    mov         esp,ebp
 00477DDF    pop         ebp
 00477DE0    ret         8
end;*}

//00477DE4
procedure RegisterIntegerConsts(AIntegerType:Pointer; AIdentToInt:TIdentToInt; AIntToIdent:TIntToIdent);
begin
{*
 00477DE4    push        ebp
 00477DE5    mov         ebp,esp
 00477DE7    add         esp,0FFFFFFF4
 00477DEA    mov         dword ptr [ebp-0C],ecx
 00477DED    mov         dword ptr [ebp-8],edx
 00477DF0    mov         dword ptr [ebp-4],eax
 00477DF3    mov         eax,dword ptr [ebp-8]
 00477DF6    push        eax
 00477DF7    mov         eax,dword ptr [ebp-0C]
 00477DFA    push        eax
 00477DFB    mov         ecx,dword ptr [ebp-4]
 00477DFE    mov         dl,1
 00477E00    mov         eax,[00477D34];TIntConst
 00477E05    call        00477D8C
 00477E0A    mov         edx,eax
 00477E0C    mov         eax,[0055DAD8];gvar_0055DAD8
 00477E11    call        00478CF4
 00477E16    mov         esp,ebp
 00477E18    pop         ebp
 00477E19    ret
*}
end;

//00477E1C
{*function sub_00477E1C(?:?):?;
begin
 00477E1C    push        ebp
 00477E1D    mov         ebp,esp
 00477E1F    add         esp,0FFFFFFEC
 00477E22    mov         dword ptr [ebp-4],eax
 00477E25    xor         eax,eax
 00477E27    mov         dword ptr [ebp-8],eax
 00477E2A    mov         eax,[0055DAD8];gvar_0055DAD8
 00477E2F    call        TThreadList.LockList
 00477E34    mov         dword ptr [ebp-10],eax
 00477E37    xor         eax,eax
 00477E39    push        ebp
 00477E3A    push        477E9E
 00477E3F    push        dword ptr fs:[eax]
 00477E42    mov         dword ptr fs:[eax],esp
 00477E45    mov         eax,dword ptr [ebp-10]
 00477E48    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00477E4B    dec         eax
 00477E4C    cmp         eax,0
>00477E4F    jl          00477E86
 00477E51    mov         dword ptr [ebp-0C],eax
 00477E54    mov         edx,dword ptr [ebp-0C]
 00477E57    mov         eax,dword ptr [ebp-10]
 00477E5A    call        TList.Get
 00477E5F    mov         dword ptr [ebp-14],eax
 00477E62    mov         eax,dword ptr [ebp-14]
 00477E65    mov         eax,dword ptr [eax+4]
 00477E68    cmp         eax,dword ptr [ebp-4]
>00477E6B    jne         00477E7D
 00477E6D    mov         eax,dword ptr [ebp-14]
 00477E70    mov         eax,dword ptr [eax+0C]
 00477E73    mov         dword ptr [ebp-8],eax
 00477E76    call        @TryFinallyExit
>00477E7B    jmp         00477EA5
 00477E7D    dec         dword ptr [ebp-0C]
 00477E80    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00477E84    jne         00477E54
 00477E86    xor         eax,eax
 00477E88    pop         edx
 00477E89    pop         ecx
 00477E8A    pop         ecx
 00477E8B    mov         dword ptr fs:[eax],edx
 00477E8E    push        477EA5
 00477E93    mov         eax,[0055DAD8];gvar_0055DAD8
 00477E98    call        TThreadList.UnlockList
 00477E9D    ret
>00477E9E    jmp         @HandleFinally
>00477EA3    jmp         00477E93
 00477EA5    mov         eax,dword ptr [ebp-8]
 00477EA8    mov         esp,ebp
 00477EAA    pop         ebp
 00477EAB    ret
end;*}

//00477EAC
{*function sub_00477EAC(?:?):?;
begin
 00477EAC    push        ebp
 00477EAD    mov         ebp,esp
 00477EAF    add         esp,0FFFFFFEC
 00477EB2    mov         dword ptr [ebp-4],eax
 00477EB5    xor         eax,eax
 00477EB7    mov         dword ptr [ebp-8],eax
 00477EBA    mov         eax,[0055DAD8];gvar_0055DAD8
 00477EBF    call        TThreadList.LockList
 00477EC4    mov         dword ptr [ebp-10],eax
 00477EC7    xor         eax,eax
 00477EC9    push        ebp
 00477ECA    push        477F2E
 00477ECF    push        dword ptr fs:[eax]
 00477ED2    mov         dword ptr fs:[eax],esp
 00477ED5    mov         eax,dword ptr [ebp-10]
 00477ED8    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00477EDB    dec         eax
 00477EDC    cmp         eax,0
>00477EDF    jl          00477F16
 00477EE1    mov         dword ptr [ebp-0C],eax
 00477EE4    mov         edx,dword ptr [ebp-0C]
 00477EE7    mov         eax,dword ptr [ebp-10]
 00477EEA    call        TList.Get
 00477EEF    mov         dword ptr [ebp-14],eax
 00477EF2    mov         eax,dword ptr [ebp-14]
 00477EF5    mov         eax,dword ptr [eax+4]
 00477EF8    cmp         eax,dword ptr [ebp-4]
>00477EFB    jne         00477F0D
 00477EFD    mov         eax,dword ptr [ebp-14]
 00477F00    mov         eax,dword ptr [eax+8]
 00477F03    mov         dword ptr [ebp-8],eax
 00477F06    call        @TryFinallyExit
>00477F0B    jmp         00477F35
 00477F0D    dec         dword ptr [ebp-0C]
 00477F10    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00477F14    jne         00477EE4
 00477F16    xor         eax,eax
 00477F18    pop         edx
 00477F19    pop         ecx
 00477F1A    pop         ecx
 00477F1B    mov         dword ptr fs:[eax],edx
 00477F1E    push        477F35
 00477F23    mov         eax,[0055DAD8];gvar_0055DAD8
 00477F28    call        TThreadList.UnlockList
 00477F2D    ret
>00477F2E    jmp         @HandleFinally
>00477F33    jmp         00477F23
 00477F35    mov         eax,dword ptr [ebp-8]
 00477F38    mov         esp,ebp
 00477F3A    pop         ebp
 00477F3B    ret
end;*}

//00477F3C
{*function sub_00477F3C(?:?; ?:?; ?:?; ?:?):?;
begin
 00477F3C    push        ebp
 00477F3D    mov         ebp,esp
 00477F3F    add         esp,0FFFFFFE8
 00477F42    mov         dword ptr [ebp-0C],ecx
 00477F45    mov         dword ptr [ebp-8],edx
 00477F48    mov         dword ptr [ebp-4],eax
 00477F4B    mov         eax,dword ptr [ebp+8]
 00477F4E    test        eax,eax
>00477F50    jl          00477F8F
 00477F52    inc         eax
 00477F53    mov         dword ptr [ebp-18],eax
 00477F56    mov         dword ptr [ebp-14],0
 00477F5D    mov         eax,dword ptr [ebp-0C]
 00477F60    mov         edx,dword ptr [ebp-14]
 00477F63    mov         eax,dword ptr [eax+edx*8+4]
 00477F67    mov         edx,dword ptr [ebp-4]
 00477F6A    call        SameText
 00477F6F    test        al,al
>00477F71    je          00477F87
 00477F73    mov         byte ptr [ebp-0D],1
 00477F77    mov         eax,dword ptr [ebp-0C]
 00477F7A    mov         edx,dword ptr [ebp-14]
 00477F7D    mov         eax,dword ptr [eax+edx*8]
 00477F80    mov         edx,dword ptr [ebp-8]
 00477F83    mov         dword ptr [edx],eax
>00477F85    jmp         00477F93
 00477F87    inc         dword ptr [ebp-14]
 00477F8A    dec         dword ptr [ebp-18]
>00477F8D    jne         00477F5D
 00477F8F    mov         byte ptr [ebp-0D],0
 00477F93    mov         al,byte ptr [ebp-0D]
 00477F96    mov         esp,ebp
 00477F98    pop         ebp
 00477F99    ret         4
end;*}

//00477F9C
{*function sub_00477F9C(?:?; ?:?; ?:?; ?:?):?;
begin
 00477F9C    push        ebp
 00477F9D    mov         ebp,esp
 00477F9F    add         esp,0FFFFFFE8
 00477FA2    mov         dword ptr [ebp-0C],ecx
 00477FA5    mov         dword ptr [ebp-8],edx
 00477FA8    mov         dword ptr [ebp-4],eax
 00477FAB    mov         eax,dword ptr [ebp+8]
 00477FAE    test        eax,eax
>00477FB0    jl          00477FEB
 00477FB2    inc         eax
 00477FB3    mov         dword ptr [ebp-18],eax
 00477FB6    mov         dword ptr [ebp-14],0
 00477FBD    mov         eax,dword ptr [ebp-0C]
 00477FC0    mov         edx,dword ptr [ebp-14]
 00477FC3    mov         eax,dword ptr [eax+edx*8]
 00477FC6    cmp         eax,dword ptr [ebp-4]
>00477FC9    jne         00477FE3
 00477FCB    mov         byte ptr [ebp-0D],1
 00477FCF    mov         eax,dword ptr [ebp-8]
 00477FD2    mov         edx,dword ptr [ebp-0C]
 00477FD5    mov         ecx,dword ptr [ebp-14]
 00477FD8    mov         edx,dword ptr [edx+ecx*8+4]
 00477FDC    call        @LStrAsg
>00477FE1    jmp         00477FEF
 00477FE3    inc         dword ptr [ebp-14]
 00477FE6    dec         dword ptr [ebp-18]
>00477FE9    jne         00477FBD
 00477FEB    mov         byte ptr [ebp-0D],0
 00477FEF    mov         al,byte ptr [ebp-0D]
 00477FF2    mov         esp,ebp
 00477FF4    pop         ebp
 00477FF5    ret         4
end;*}

//00477FF8
procedure RegisterFindGlobalComponentProc(AFindGlobalComponent:TFindGlobalComponent);
begin
{*
 00477FF8    push        ebp
 00477FF9    mov         ebp,esp
 00477FFB    push        ecx
 00477FFC    mov         dword ptr [ebp-4],eax
 00477FFF    cmp         dword ptr ds:[55DAE0],0;gvar_0055DAE0
>00478006    jne         00478019
 00478008    mov         dl,1
 0047800A    mov         eax,[004759C0];TList
 0047800F    call        TObject.Create
 00478014    mov         [0055DAE0],eax;gvar_0055DAE0
 00478019    mov         edx,dword ptr [ebp-4]
 0047801C    mov         eax,[0055DAE0];gvar_0055DAE0
 00478021    call        00478890
 00478026    test        eax,eax
>00478028    jge         00478037
 0047802A    mov         edx,dword ptr [ebp-4]
 0047802D    mov         eax,[0055DAE0];gvar_0055DAE0
 00478032    call        TList.Add
 00478037    pop         ecx
 00478038    pop         ebp
 00478039    ret
*}
end;

//0047803C
procedure UnregisterFindGlobalComponentProc(AFindGlobalComponent:TFindGlobalComponent);
begin
{*
 0047803C    push        ebp
 0047803D    mov         ebp,esp
 0047803F    push        ecx
 00478040    mov         dword ptr [ebp-4],eax
 00478043    cmp         dword ptr ds:[55DAE0],0;gvar_0055DAE0
>0047804A    je          00478059
 0047804C    mov         edx,dword ptr [ebp-4]
 0047804F    mov         eax,[0055DAE0];gvar_0055DAE0
 00478054    call        00478AC4
 00478059    pop         ecx
 0047805A    pop         ebp
 0047805B    ret
*}
end;

//0047805C
{*function sub_0047805C(?:?):?;
begin
 0047805C    push        ebp
 0047805D    mov         ebp,esp
 0047805F    add         esp,0FFFFFFF4
 00478062    push        ebx
 00478063    mov         dword ptr [ebp-4],eax
 00478066    xor         eax,eax
 00478068    mov         dword ptr [ebp-8],eax
 0047806B    cmp         dword ptr ds:[55DAE0],0;gvar_0055DAE0
>00478072    je          004780AB
 00478074    mov         eax,[0055DAE0];gvar_0055DAE0
 00478079    mov         eax,dword ptr [eax+8]
 0047807C    dec         eax
 0047807D    cmp         eax,0
>00478080    jl          004780AB
 00478082    mov         dword ptr [ebp-0C],eax
 00478085    mov         edx,dword ptr [ebp-0C]
 00478088    mov         eax,[0055DAE0];gvar_0055DAE0
 0047808D    call        TList.Get
 00478092    mov         ebx,eax
 00478094    mov         eax,dword ptr [ebp-4]
 00478097    call        ebx
 00478099    mov         dword ptr [ebp-8],eax
 0047809C    cmp         dword ptr [ebp-8],0
>004780A0    jne         004780AB
 004780A2    dec         dword ptr [ebp-0C]
 004780A5    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004780A9    jne         00478085
 004780AB    mov         eax,dword ptr [ebp-8]
 004780AE    pop         ebx
 004780AF    mov         esp,ebp
 004780B1    pop         ebp
 004780B2    ret
end;*}

//004780B4
{*function sub_004780B4(?:?):?;
begin
 004780B4    push        ebp
 004780B5    mov         ebp,esp
 004780B7    add         esp,0FFFFFFF8
 004780BA    mov         dword ptr [ebp-4],eax
 004780BD    cmp         dword ptr ds:[55DACC],0;gvar_0055DACC
>004780C4    je          004780D4
 004780C6    mov         eax,dword ptr [ebp-4]
 004780C9    call        dword ptr ds:[55DACC]
 004780CF    mov         byte ptr [ebp-5],al
>004780D2    jmp         004780E2
 004780D4    mov         eax,dword ptr [ebp-4]
 004780D7    call        0047805C
 004780DC    test        eax,eax
 004780DE    sete        byte ptr [ebp-5]
 004780E2    mov         al,byte ptr [ebp-5]
 004780E5    pop         ecx
 004780E6    pop         ecx
 004780E7    pop         ebp
 004780E8    ret
end;*}

//004780EC
{*function sub_004780EC(?:?; ?:?; ?:?):?;
begin
 004780EC    push        ebp
 004780ED    mov         ebp,esp
 004780EF    add         esp,0FFFFFFE8
 004780F2    mov         dword ptr [ebp-0C],ecx
 004780F5    mov         dword ptr [ebp-8],edx
 004780F8    mov         dword ptr [ebp-4],eax
 004780FB    cmp         dword ptr [ebp-8],0
>004780FF    jne         00478109
 00478101    mov         eax,[0055C664];gvar_0055C664
 00478106    mov         dword ptr [ebp-8],eax
 00478109    push        0A
 0047810B    mov         eax,dword ptr [ebp-4]
 0047810E    call        @LStrToPChar
 00478113    push        eax
 00478114    mov         eax,dword ptr [ebp-8]
 00478117    push        eax
 00478118    call        kernel32.FindResourceA
 0047811D    mov         dword ptr [ebp-14],eax
 00478120    cmp         dword ptr [ebp-14],0
 00478124    setne       byte ptr [ebp-0D]
 00478128    cmp         byte ptr [ebp-0D],0
>0047812C    je          00478187
 0047812E    mov         eax,dword ptr [ebp-4]
 00478131    push        eax
 00478132    push        0A
 00478134    mov         ecx,dword ptr [ebp-8]
 00478137    mov         dl,1
 00478139    mov         eax,[004763E4];TResourceStream
 0047813E    call        TResourceStream.Create;TResourceStream.Create
 00478143    mov         dword ptr [ebp-18],eax
 00478146    xor         eax,eax
 00478148    push        ebp
 00478149    push        47817C
 0047814E    push        dword ptr fs:[eax]
 00478151    mov         dword ptr fs:[eax],esp
 00478154    mov         edx,dword ptr [ebp-0C]
 00478157    mov         edx,dword ptr [edx]
 00478159    mov         eax,dword ptr [ebp-18]
 0047815C    call        0047C0B0
 00478161    mov         edx,dword ptr [ebp-0C]
 00478164    mov         dword ptr [edx],eax
 00478166    xor         eax,eax
 00478168    pop         edx
 00478169    pop         ecx
 0047816A    pop         ecx
 0047816B    mov         dword ptr fs:[eax],edx
 0047816E    push        478183
 00478173    mov         eax,dword ptr [ebp-18]
 00478176    call        TObject.Free
 0047817B    ret
>0047817C    jmp         @HandleFinally
>00478181    jmp         00478173
 00478183    mov         byte ptr [ebp-0D],1
 00478187    mov         al,byte ptr [ebp-0D]
 0047818A    mov         esp,ebp
 0047818C    pop         ebp
 0047818D    ret
end;*}

//00478190
procedure BeginGlobalLoading;
begin
{*
 00478190    push        ebp
 00478191    mov         ebp,esp
 00478193    push        ecx
 00478194    push        ebx
 00478195    call        @GetTls
 0047819A    mov         eax,dword ptr [eax+214]
 004781A0    mov         dword ptr [ebp-4],eax
 004781A3    cmp         dword ptr [ebp-4],0
>004781A7    jne         004781C6
 004781A9    mov         dl,1
 004781AB    mov         eax,[004759C0];TList
 004781B0    call        TObject.Create
 004781B5    mov         dword ptr [ebp-4],eax
 004781B8    call        @GetTls
 004781BD    mov         edx,dword ptr [ebp-4]
 004781C0    mov         dword ptr [eax+214],edx
 004781C6    call        @GetTls
 004781CB    mov         edx,dword ptr [eax+210]
 004781D1    mov         eax,dword ptr [ebp-4]
 004781D4    call        TList.Add
 004781D9    mov         dl,1
 004781DB    mov         eax,[004759C0];TList
 004781E0    call        TObject.Create
 004781E5    mov         ebx,eax
 004781E7    call        @GetTls
 004781EC    mov         dword ptr [eax+210],ebx
 004781F2    pop         ebx
 004781F3    pop         ecx
 004781F4    pop         ebp
 004781F5    ret
*}
end;

//004781F8
procedure NotifyGlobalLoading;
begin
{*
 004781F8    push        ebp
 004781F9    mov         ebp,esp
 004781FB    add         esp,0FFFFFFF4
 004781FE    call        @GetTls
 00478203    mov         eax,dword ptr [eax+210]
 00478209    mov         dword ptr [ebp-8],eax
 0047820C    mov         eax,dword ptr [ebp-8]
 0047820F    mov         eax,dword ptr [eax+8]
 00478212    dec         eax
 00478213    test        eax,eax
>00478215    jl          0047823A
 00478217    inc         eax
 00478218    mov         dword ptr [ebp-0C],eax
 0047821B    mov         dword ptr [ebp-4],0
 00478222    mov         edx,dword ptr [ebp-4]
 00478225    mov         eax,dword ptr [ebp-8]
 00478228    call        TList.Get
 0047822D    mov         edx,dword ptr [eax]
 0047822F    call        dword ptr [edx+0C]
 00478232    inc         dword ptr [ebp-4]
 00478235    dec         dword ptr [ebp-0C]
>00478238    jne         00478222
 0047823A    mov         esp,ebp
 0047823C    pop         ebp
 0047823D    ret
*}
end;

//00478240
procedure EndGlobalLoading;
begin
{*
 00478240    push        ebp
 00478241    mov         ebp,esp
 00478243    push        ecx
 00478244    push        ebx
 00478245    call        @GetTls
 0047824A    mov         eax,dword ptr [eax+210]
 00478250    call        TObject.Free
 00478255    call        @GetTls
 0047825A    mov         eax,dword ptr [eax+214]
 00478260    mov         dword ptr [ebp-4],eax
 00478263    mov         eax,dword ptr [ebp-4]
 00478266    call        0047898C
 0047826B    mov         ebx,eax
 0047826D    call        @GetTls
 00478272    mov         dword ptr [eax+210],ebx
 00478278    mov         eax,dword ptr [ebp-4]
 0047827B    mov         edx,dword ptr [eax+8]
 0047827E    dec         edx
 0047827F    mov         eax,dword ptr [ebp-4]
 00478282    call        00478668
 00478287    mov         eax,dword ptr [ebp-4]
 0047828A    cmp         dword ptr [eax+8],0
>0047828E    jne         004782A5
 00478290    call        @GetTls
 00478295    xor         edx,edx
 00478297    mov         dword ptr [eax+214],edx
 0047829D    mov         eax,dword ptr [ebp-4]
 004782A0    call        TObject.Free
 004782A5    pop         ebx
 004782A6    pop         ecx
 004782A7    pop         ebp
 004782A8    ret
*}
end;

//004782AC
function InitComponent(ClassType:TClass):Boolean;
begin
{*
 004782AC    push        ebp
 004782AD    mov         ebp,esp
 004782AF    add         esp,0FFFFFEF4
 004782B5    xor         edx,edx
 004782B7    mov         dword ptr [ebp-0C],edx
 004782BA    mov         dword ptr [ebp-4],eax
 004782BD    xor         eax,eax
 004782BF    push        ebp
 004782C0    push        478351
 004782C5    push        dword ptr fs:[eax]
 004782C8    mov         dword ptr fs:[eax],esp
 004782CB    mov         byte ptr [ebp-5],0
 004782CF    mov         eax,dword ptr [ebp-4]
 004782D2    cmp         eax,dword ptr ds:[47698C];TComponent
>004782D8    je          0047833B
 004782DA    mov         eax,dword ptr [ebp+8]
 004782DD    mov         eax,dword ptr [eax-8]
 004782E0    cmp         eax,dword ptr [ebp-4]
>004782E3    je          0047833B
 004782E5    mov         eax,dword ptr [ebp+8]
 004782E8    push        eax
 004782E9    mov         eax,dword ptr [ebp-4]
 004782EC    call        TObject.ClassParent
 004782F1    call        InitComponent
 004782F6    pop         ecx
 004782F7    mov         byte ptr [ebp-5],al
 004782FA    lea         edx,[ebp-10C]
 00478300    mov         eax,dword ptr [ebp-4]
 00478303    call        TObject.ClassName
 00478308    lea         edx,[ebp-10C]
 0047830E    lea         eax,[ebp-0C]
 00478311    call        @LStrFromString
 00478316    mov         eax,dword ptr [ebp-0C]
 00478319    push        eax
 0047831A    mov         eax,dword ptr [ebp-4]
 0047831D    call        00406054
 00478322    call        FindResourceHInstance
 00478327    mov         edx,eax
 00478329    mov         eax,dword ptr [ebp+8]
 0047832C    lea         ecx,[eax-4]
 0047832F    pop         eax
 00478330    call        004780EC
 00478335    or          al,byte ptr [ebp-5]
 00478338    mov         byte ptr [ebp-5],al
 0047833B    xor         eax,eax
 0047833D    pop         edx
 0047833E    pop         ecx
 0047833F    pop         ecx
 00478340    mov         dword ptr fs:[eax],edx
 00478343    push        478358
 00478348    lea         eax,[ebp-0C]
 0047834B    call        @LStrClr
 00478350    ret
>00478351    jmp         @HandleFinally
>00478356    jmp         00478348
 00478358    mov         al,byte ptr [ebp-5]
 0047835B    mov         esp,ebp
 0047835D    pop         ebp
 0047835E    ret
*}
end;

//00478360
function InitInheritedComponent(Instance:TComponent; RootAncestor:TClass):Boolean;
begin
{*
 00478360    push        ebp
 00478361    mov         ebp,esp
 00478363    add         esp,0FFFFFFF4
 00478366    mov         dword ptr [ebp-8],edx
 00478369    mov         dword ptr [ebp-4],eax
 0047836C    mov         eax,[0055DAC8];gvar_0055DAC8:IReadWriteSync
 00478371    mov         edx,dword ptr [eax]
 00478373    call        dword ptr [edx+14]
 00478376    xor         eax,eax
 00478378    push        ebp
 00478379    push        47840E
 0047837E    push        dword ptr fs:[eax]
 00478381    mov         dword ptr fs:[eax],esp
 00478384    mov         eax,dword ptr [ebp-4]
 00478387    mov         ax,word ptr [eax+1C]
 0047838B    and         ax,word ptr ds:[47841C]
 00478392    mov         dx,word ptr ds:[478420]
 00478399    cmp         dx,ax
 0047839C    sete        byte ptr [ebp-0A]
 004783A0    cmp         byte ptr [ebp-0A],0
>004783A4    je          004783AB
 004783A6    call        BeginGlobalLoading
 004783AB    xor         eax,eax
 004783AD    push        ebp
 004783AE    push        4783EF
 004783B3    push        dword ptr fs:[eax]
 004783B6    mov         dword ptr fs:[eax],esp
 004783B9    push        ebp
 004783BA    mov         eax,dword ptr [ebp-4]
 004783BD    call        TObject.ClassType
 004783C2    call        InitComponent
 004783C7    pop         ecx
 004783C8    mov         byte ptr [ebp-9],al
 004783CB    cmp         byte ptr [ebp-0A],0
>004783CF    je          004783D6
 004783D1    call        NotifyGlobalLoading
 004783D6    xor         eax,eax
 004783D8    pop         edx
 004783D9    pop         ecx
 004783DA    pop         ecx
 004783DB    mov         dword ptr fs:[eax],edx
 004783DE    push        4783F6
 004783E3    cmp         byte ptr [ebp-0A],0
>004783E7    je          004783EE
 004783E9    call        EndGlobalLoading
 004783EE    ret
>004783EF    jmp         @HandleFinally
>004783F4    jmp         004783E3
 004783F6    xor         eax,eax
 004783F8    pop         edx
 004783F9    pop         ecx
 004783FA    pop         ecx
 004783FB    mov         dword ptr fs:[eax],edx
 004783FE    push        478415
 00478403    mov         eax,[0055DAC8];gvar_0055DAC8:IReadWriteSync
 00478408    mov         edx,dword ptr [eax]
 0047840A    call        dword ptr [edx+18]
 0047840D    ret
>0047840E    jmp         @HandleFinally
>00478413    jmp         00478403
 00478415    mov         al,byte ptr [ebp-9]
 00478418    mov         esp,ebp
 0047841A    pop         ebp
 0047841B    ret
*}
end;

//00478424
{*procedure sub_00478424(?:?; ?:?; ?:?);
begin
 00478424    push        ebp
 00478425    mov         ebp,esp
 00478427    add         esp,0FFFFFFF0
 0047842A    mov         dword ptr [ebp-0C],ecx
 0047842D    mov         dword ptr [ebp-8],edx
 00478430    mov         dword ptr [ebp-4],eax
 00478433    push        400
 00478438    mov         ecx,dword ptr [ebp-4]
 0047843B    mov         dl,1
 0047843D    mov         eax,[00476748];TWriter
 00478442    call        TFiler.Create;TWriter.Create
 00478447    mov         dword ptr [ebp-10],eax
 0047844A    mov         edx,dword ptr [ebp-0C]
 0047844D    mov         eax,dword ptr [ebp-10]
 00478450    mov         ecx,dword ptr [eax]
 00478452    call        dword ptr [ecx];TWriter.sub_00480024
 00478454    mov         eax,dword ptr [ebp-10]
 00478457    mov         edx,dword ptr [ebp-0C]
 0047845A    mov         dword ptr [eax+1C],edx;TWriter.FLookupRoot:TComponent
 0047845D    xor         eax,eax
 0047845F    push        ebp
 00478460    push        47848C
 00478465    push        dword ptr fs:[eax]
 00478468    mov         dword ptr fs:[eax],esp
 0047846B    mov         edx,dword ptr [ebp-8]
 0047846E    mov         eax,dword ptr [ebp-10]
 00478471    call        004801CC
 00478476    xor         eax,eax
 00478478    pop         edx
 00478479    pop         ecx
 0047847A    pop         ecx
 0047847B    mov         dword ptr fs:[eax],edx
 0047847E    push        478493
 00478483    mov         eax,dword ptr [ebp-10]
 00478486    call        TObject.Free
 0047848B    ret
>0047848C    jmp         @HandleFinally
>00478491    jmp         00478483
 00478493    mov         esp,ebp
 00478495    pop         ebp
 00478496    ret
end;*}

//00478498
function CollectionsEqual(C1:TCollection; C2:TCollection; Owner1:TComponent; Owner2:TComponent):Boolean;
begin
{*
 00478498    push        ebp
 00478499    mov         ebp,esp
 0047849B    add         esp,0FFFFFFE8
 0047849E    push        ebx
 0047849F    mov         dword ptr [ebp-0C],ecx
 004784A2    mov         dword ptr [ebp-8],edx
 004784A5    mov         dword ptr [ebp-4],eax
 004784A8    mov         byte ptr [ebp-0D],0
 004784AC    mov         eax,dword ptr [ebp-4]
 004784AF    call        TObject.ClassType
 004784B4    mov         ebx,eax
 004784B6    mov         eax,dword ptr [ebp-8]
 004784B9    call        TObject.ClassType
 004784BE    cmp         ebx,eax
>004784C0    jne         004785B8
 004784C6    mov         eax,dword ptr [ebp-4]
 004784C9    call        00479B60
 004784CE    mov         ebx,eax
 004784D0    mov         eax,dword ptr [ebp-8]
 004784D3    call        00479B60
 004784D8    cmp         ebx,eax
>004784DA    jne         004785B8
 004784E0    mov         dl,1
 004784E2    mov         eax,[00476368];TMemoryStream
 004784E7    call        TObject.Create
 004784EC    mov         dword ptr [ebp-14],eax
 004784EF    xor         eax,eax
 004784F1    push        ebp
 004784F2    push        4785B1
 004784F7    push        dword ptr fs:[eax]
 004784FA    mov         dword ptr fs:[eax],esp
 004784FD    push        ebp
 004784FE    mov         ecx,dword ptr [ebp-0C]
 00478501    mov         edx,dword ptr [ebp-4]
 00478504    mov         eax,dword ptr [ebp-14]
 00478507    call        00478424
 0047850C    pop         ecx
 0047850D    mov         dl,1
 0047850F    mov         eax,[00476368];TMemoryStream
 00478514    call        TObject.Create
 00478519    mov         dword ptr [ebp-18],eax
 0047851C    xor         eax,eax
 0047851E    push        ebp
 0047851F    push        478594
 00478524    push        dword ptr fs:[eax]
 00478527    mov         dword ptr fs:[eax],esp
 0047852A    push        ebp
 0047852B    mov         ecx,dword ptr [ebp+8]
 0047852E    mov         edx,dword ptr [ebp-8]
 00478531    mov         eax,dword ptr [ebp-18]
 00478534    call        00478424
 00478539    pop         ecx
 0047853A    mov         eax,dword ptr [ebp-14]
 0047853D    mov         edx,dword ptr [eax]
 0047853F    call        dword ptr [edx]
 00478541    push        edx
 00478542    push        eax
 00478543    mov         eax,dword ptr [ebp-18]
 00478546    mov         edx,dword ptr [eax]
 00478548    call        dword ptr [edx]
 0047854A    cmp         edx,dword ptr [esp+4]
>0047854E    jne         00478553
 00478550    cmp         eax,dword ptr [esp]
 00478553    pop         edx
 00478554    pop         eax
>00478555    jne         00478575
 00478557    mov         eax,dword ptr [ebp-14]
 0047855A    mov         edx,dword ptr [eax]
 0047855C    call        dword ptr [edx]
 0047855E    mov         ecx,eax
 00478560    mov         eax,dword ptr [ebp-18]
 00478563    mov         edx,dword ptr [eax+4]
 00478566    mov         eax,dword ptr [ebp-14]
 00478569    mov         eax,dword ptr [eax+4]
 0047856C    call        CompareMem
 00478571    test        al,al
>00478573    jne         00478579
 00478575    xor         eax,eax
>00478577    jmp         0047857B
 00478579    mov         al,1
 0047857B    mov         byte ptr [ebp-0D],al
 0047857E    xor         eax,eax
 00478580    pop         edx
 00478581    pop         ecx
 00478582    pop         ecx
 00478583    mov         dword ptr fs:[eax],edx
 00478586    push        47859B
 0047858B    mov         eax,dword ptr [ebp-18]
 0047858E    call        TObject.Free
 00478593    ret
>00478594    jmp         @HandleFinally
>00478599    jmp         0047858B
 0047859B    xor         eax,eax
 0047859D    pop         edx
 0047859E    pop         ecx
 0047859F    pop         ecx
 004785A0    mov         dword ptr fs:[eax],edx
 004785A3    push        4785B8
 004785A8    mov         eax,dword ptr [ebp-14]
 004785AB    call        TObject.Free
 004785B0    ret
>004785B1    jmp         @HandleFinally
>004785B6    jmp         004785A8
 004785B8    mov         al,byte ptr [ebp-0D]
 004785BB    pop         ebx
 004785BC    mov         esp,ebp
 004785BE    pop         ebp
 004785BF    ret         4
*}
end;

//004785C4
destructor TList.Destroy;
begin
{*
 004785C4    push        ebp
 004785C5    mov         ebp,esp
 004785C7    add         esp,0FFFFFFF8
 004785CA    call        @BeforeDestruction
 004785CF    mov         byte ptr [ebp-5],dl
 004785D2    mov         dword ptr [ebp-4],eax
 004785D5    mov         eax,dword ptr [ebp-4]
 004785D8    mov         edx,dword ptr [eax]
 004785DA    call        dword ptr [edx+8]
 004785DD    cmp         byte ptr [ebp-5],0
>004785E1    jle         004785EB
 004785E3    mov         eax,dword ptr [ebp-4]
 004785E6    call        @ClassDestroy
 004785EB    pop         ecx
 004785EC    pop         ecx
 004785ED    pop         ebp
 004785EE    ret
*}
end;

//004785F0
function TList.Add(Item:Pointer):Integer;
begin
{*
 004785F0    push        ebp
 004785F1    mov         ebp,esp
 004785F3    add         esp,0FFFFFFF4
 004785F6    push        ebx
 004785F7    mov         dword ptr [ebp-8],edx
 004785FA    mov         dword ptr [ebp-4],eax
 004785FD    mov         eax,dword ptr [ebp-4]
 00478600    mov         eax,dword ptr [eax+8]
 00478603    mov         dword ptr [ebp-0C],eax
 00478606    mov         eax,dword ptr [ebp-0C]
 00478609    mov         edx,dword ptr [ebp-4]
 0047860C    cmp         eax,dword ptr [edx+0C]
>0047860F    jne         00478618
 00478611    mov         eax,dword ptr [ebp-4]
 00478614    mov         edx,dword ptr [eax]
 00478616    call        dword ptr [edx]
 00478618    mov         eax,dword ptr [ebp-4]
 0047861B    mov         eax,dword ptr [eax+4]
 0047861E    mov         edx,dword ptr [ebp-0C]
 00478621    mov         ecx,dword ptr [ebp-8]
 00478624    mov         dword ptr [eax+edx*4],ecx
 00478627    mov         eax,dword ptr [ebp-4]
 0047862A    inc         dword ptr [eax+8]
 0047862D    cmp         dword ptr [ebp-8],0
>00478631    je          00478640
 00478633    xor         ecx,ecx
 00478635    mov         edx,dword ptr [ebp-8]
 00478638    mov         eax,dword ptr [ebp-4]
 0047863B    mov         ebx,dword ptr [eax]
 0047863D    call        dword ptr [ebx+4]
 00478640    mov         eax,dword ptr [ebp-0C]
 00478643    pop         ebx
 00478644    mov         esp,ebp
 00478646    pop         ebp
 00478647    ret
*}
end;

//00478648
procedure sub_00478648;
begin
{*
 00478648    push        ebp
 00478649    mov         ebp,esp
 0047864B    push        ecx
 0047864C    mov         dword ptr [ebp-4],eax
 0047864F    xor         edx,edx
 00478651    mov         eax,dword ptr [ebp-4]
 00478654    call        00478B54
 00478659    xor         edx,edx
 0047865B    mov         eax,dword ptr [ebp-4]
 0047865E    call        00478AF8
 00478663    pop         ecx
 00478664    pop         ebp
 00478665    ret
*}
end;

//00478668
procedure sub_00478668(?:TList; ?:Integer);
begin
{*
 00478668    push        ebp
 00478669    mov         ebp,esp
 0047866B    add         esp,0FFFFFFF4
 0047866E    push        ebx
 0047866F    mov         dword ptr [ebp-8],edx
 00478672    mov         dword ptr [ebp-4],eax
 00478675    cmp         dword ptr [ebp-8],0
>00478679    jl          00478686
 0047867B    mov         eax,dword ptr [ebp-8]
 0047867E    mov         edx,dword ptr [ebp-4]
 00478681    cmp         eax,dword ptr [edx+8]
>00478684    jl          00478699
 00478686    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 0047868C    mov         ecx,dword ptr [ebp-8]
 0047868F    mov         eax,dword ptr [ebp-4]
 00478692    mov         eax,dword ptr [eax]
 00478694    call        00478744
 00478699    mov         edx,dword ptr [ebp-8]
 0047869C    mov         eax,dword ptr [ebp-4]
 0047869F    call        TList.Get
 004786A4    mov         dword ptr [ebp-0C],eax
 004786A7    mov         eax,dword ptr [ebp-4]
 004786AA    dec         dword ptr [eax+8]
 004786AD    mov         eax,dword ptr [ebp-8]
 004786B0    mov         edx,dword ptr [ebp-4]
 004786B3    cmp         eax,dword ptr [edx+8]
>004786B6    jge         004786E4
 004786B8    mov         eax,dword ptr [ebp-4]
 004786BB    mov         eax,dword ptr [eax+8]
 004786BE    sub         eax,dword ptr [ebp-8]
 004786C1    mov         ecx,eax
 004786C3    shl         ecx,2
 004786C6    mov         eax,dword ptr [ebp-4]
 004786C9    mov         eax,dword ptr [eax+4]
 004786CC    mov         edx,dword ptr [ebp-8]
 004786CF    lea         edx,[eax+edx*4]
 004786D2    mov         eax,dword ptr [ebp-4]
 004786D5    mov         eax,dword ptr [eax+4]
 004786D8    mov         ebx,dword ptr [ebp-8]
 004786DB    lea         eax,[eax+ebx*4+4]
 004786DF    call        Move
 004786E4    cmp         dword ptr [ebp-0C],0
>004786E8    je          004786F7
 004786EA    mov         cl,2
 004786EC    mov         edx,dword ptr [ebp-0C]
 004786EF    mov         eax,dword ptr [ebp-4]
 004786F2    mov         ebx,dword ptr [eax]
 004786F4    call        dword ptr [ebx+4]
 004786F7    pop         ebx
 004786F8    mov         esp,ebp
 004786FA    pop         ebp
 004786FB    ret
*}
end;

//004786FC
{*function sub_004786FC(?:?):?;
begin
 004786FC    push        ebp
 004786FD    mov         ebp,esp
 004786FF    mov         eax,dword ptr [ebp+4]
 00478702    pop         ebp
 00478703    ret
end;*}

//00478704
procedure sub_00478704;
begin
{*
 00478704    push        ebp
 00478705    mov         ebp,esp
 00478707    add         esp,0FFFFFFEC
 0047870A    mov         dword ptr [ebp-0C],ecx
 0047870D    mov         dword ptr [ebp-8],edx
 00478710    mov         dword ptr [ebp-4],eax
 00478713    push        ebp
 00478714    call        004786FC
 00478719    pop         ecx
 0047871A    push        eax
 0047871B    mov         eax,dword ptr [ebp-0C]
 0047871E    mov         dword ptr [ebp-14],eax
 00478721    mov         byte ptr [ebp-10],0
 00478725    lea         eax,[ebp-14]
 00478728    push        eax
 00478729    push        0
 0047872B    mov         ecx,dword ptr [ebp-8]
 0047872E    mov         dl,1
 00478730    mov         eax,[00475798];EListError
 00478735    call        Exception.CreateFmt;EListError.Create
>0047873A    jmp         @RaiseExcept
*}
end;

//00478744
{*procedure sub_00478744(?:TList; ?:TResStringRec; ?:?);
begin
 00478744    push        ebp
 00478745    mov         ebp,esp
 00478747    add         esp,0FFFFFFF0
 0047874A    push        ebx
 0047874B    xor         ebx,ebx
 0047874D    mov         dword ptr [ebp-10],ebx
 00478750    mov         dword ptr [ebp-0C],ecx
 00478753    mov         dword ptr [ebp-8],edx
 00478756    mov         dword ptr [ebp-4],eax
 00478759    xor         eax,eax
 0047875B    push        ebp
 0047875C    push        478798
 00478761    push        dword ptr fs:[eax]
 00478764    mov         dword ptr fs:[eax],esp
 00478767    lea         edx,[ebp-10]
 0047876A    mov         eax,dword ptr [ebp-8]
 0047876D    call        LoadResString;'I/O error %d'
 00478772    mov         edx,dword ptr [ebp-10]
 00478775    mov         ecx,dword ptr [ebp-0C]
 00478778    mov         eax,[004759C0];TList
 0047877D    call        00478704
 00478782    xor         eax,eax
 00478784    pop         edx
 00478785    pop         ecx
 00478786    pop         ecx
 00478787    mov         dword ptr fs:[eax],edx
 0047878A    push        47879F
 0047878F    lea         eax,[ebp-10]
 00478792    call        @LStrClr
 00478797    ret
>00478798    jmp         @HandleFinally
>0047879D    jmp         0047878F
 0047879F    pop         ebx
 004787A0    mov         esp,ebp
 004787A2    pop         ebp
 004787A3    ret
end;*}

//004787A4
{*function sub_004787A4(?:TList):?;
begin
 004787A4    push        ebp
 004787A5    mov         ebp,esp
 004787A7    add         esp,0FFFFFFF8
 004787AA    mov         dword ptr [ebp-4],eax
 004787AD    mov         eax,dword ptr [ebp-4]
 004787B0    mov         eax,dword ptr [eax+8]
 004787B3    mov         edx,dword ptr [ebp-4]
 004787B6    cmp         eax,dword ptr [edx+0C]
>004787B9    jne         004787C2
 004787BB    mov         eax,dword ptr [ebp-4]
 004787BE    mov         edx,dword ptr [eax]
 004787C0    call        dword ptr [edx]
 004787C2    mov         eax,dword ptr [ebp-4]
 004787C5    mov         dword ptr [ebp-8],eax
 004787C8    mov         eax,dword ptr [ebp-8]
 004787CB    pop         ecx
 004787CC    pop         ecx
 004787CD    pop         ebp
 004787CE    ret
end;*}

//004787D0
{*function sub_004787D0(?:?):?;
begin
 004787D0    push        ebp
 004787D1    mov         ebp,esp
 004787D3    add         esp,0FFFFFFF8
 004787D6    mov         dword ptr [ebp-4],eax
 004787D9    xor         edx,edx
 004787DB    mov         eax,dword ptr [ebp-4]
 004787DE    call        TList.Get
 004787E3    mov         dword ptr [ebp-8],eax
 004787E6    mov         eax,dword ptr [ebp-8]
 004787E9    pop         ecx
 004787EA    pop         ecx
 004787EB    pop         ebp
 004787EC    ret
end;*}

//004787F0
function TList.Get(Index:Integer):Pointer;
begin
{*
 004787F0    push        ebp
 004787F1    mov         ebp,esp
 004787F3    add         esp,0FFFFFFF4
 004787F6    mov         dword ptr [ebp-8],edx
 004787F9    mov         dword ptr [ebp-4],eax
 004787FC    cmp         dword ptr [ebp-8],0
>00478800    jl          0047880D
 00478802    mov         eax,dword ptr [ebp-8]
 00478805    mov         edx,dword ptr [ebp-4]
 00478808    cmp         eax,dword ptr [edx+8]
>0047880B    jl          00478820
 0047880D    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 00478813    mov         ecx,dword ptr [ebp-8]
 00478816    mov         eax,dword ptr [ebp-4]
 00478819    mov         eax,dword ptr [eax]
 0047881B    call        00478744
 00478820    mov         eax,dword ptr [ebp-4]
 00478823    mov         eax,dword ptr [eax+4]
 00478826    mov         edx,dword ptr [ebp-8]
 00478829    mov         eax,dword ptr [eax+edx*4]
 0047882C    mov         dword ptr [ebp-0C],eax
 0047882F    mov         eax,dword ptr [ebp-0C]
 00478832    mov         esp,ebp
 00478834    pop         ebp
 00478835    ret
*}
end;

//00478838
procedure sub_00478838;
begin
{*
 00478838    push        ebp
 00478839    mov         ebp,esp
 0047883B    add         esp,0FFFFFFF8
 0047883E    mov         dword ptr [ebp-4],eax
 00478841    mov         eax,dword ptr [ebp-4]
 00478844    cmp         dword ptr [eax+0C],40;TList.FCapacity:Integer
>00478848    jle         0047885F
 0047884A    mov         eax,dword ptr [ebp-4]
 0047884D    mov         eax,dword ptr [eax+0C];TList.FCapacity:Integer
 00478850    test        eax,eax
>00478852    jns         00478857
 00478854    add         eax,3
 00478857    sar         eax,2
 0047885A    mov         dword ptr [ebp-8],eax
>0047885D    jmp         00478878
 0047885F    mov         eax,dword ptr [ebp-4]
 00478862    cmp         dword ptr [eax+0C],8;TList.FCapacity:Integer
>00478866    jle         00478871
 00478868    mov         dword ptr [ebp-8],10
>0047886F    jmp         00478878
 00478871    mov         dword ptr [ebp-8],4
 00478878    mov         eax,dword ptr [ebp-4]
 0047887B    mov         edx,dword ptr [eax+0C];TList.FCapacity:Integer
 0047887E    add         edx,dword ptr [ebp-8]
 00478881    mov         eax,dword ptr [ebp-4]
 00478884    call        00478AF8
 00478889    pop         ecx
 0047888A    pop         ecx
 0047888B    pop         ebp
 0047888C    ret
*}
end;

//00478890
{*function sub_00478890(?:TList; ?:TComponent):?;
begin
 00478890    push        ebp
 00478891    mov         ebp,esp
 00478893    add         esp,0FFFFFFF4
 00478896    mov         dword ptr [ebp-8],edx
 00478899    mov         dword ptr [ebp-4],eax
 0047889C    xor         eax,eax
 0047889E    mov         dword ptr [ebp-0C],eax
>004788A1    jmp         004788A6
 004788A3    inc         dword ptr [ebp-0C]
 004788A6    mov         eax,dword ptr [ebp-0C]
 004788A9    mov         edx,dword ptr [ebp-4]
 004788AC    cmp         eax,dword ptr [edx+8]
>004788AF    jge         004788C2
 004788B1    mov         eax,dword ptr [ebp-4]
 004788B4    mov         eax,dword ptr [eax+4]
 004788B7    mov         edx,dword ptr [ebp-0C]
 004788BA    mov         eax,dword ptr [eax+edx*4]
 004788BD    cmp         eax,dword ptr [ebp-8]
>004788C0    jne         004788A3
 004788C2    mov         eax,dword ptr [ebp-0C]
 004788C5    mov         edx,dword ptr [ebp-4]
 004788C8    cmp         eax,dword ptr [edx+8]
>004788CB    jne         004788D4
 004788CD    mov         dword ptr [ebp-0C],0FFFFFFFF
 004788D4    mov         eax,dword ptr [ebp-0C]
 004788D7    mov         esp,ebp
 004788D9    pop         ebp
 004788DA    ret
end;*}

//004788DC
{*procedure sub_004788DC(?:TList; ?:?; ?:Pointer);
begin
 004788DC    push        ebp
 004788DD    mov         ebp,esp
 004788DF    add         esp,0FFFFFFF4
 004788E2    push        ebx
 004788E3    mov         dword ptr [ebp-0C],ecx
 004788E6    mov         dword ptr [ebp-8],edx
 004788E9    mov         dword ptr [ebp-4],eax
 004788EC    cmp         dword ptr [ebp-8],0
>004788F0    jl          004788FD
 004788F2    mov         eax,dword ptr [ebp-8]
 004788F5    mov         edx,dword ptr [ebp-4]
 004788F8    cmp         eax,dword ptr [edx+8]
>004788FB    jle         00478910
 004788FD    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 00478903    mov         ecx,dword ptr [ebp-8]
 00478906    mov         eax,dword ptr [ebp-4]
 00478909    mov         eax,dword ptr [eax]
 0047890B    call        00478744
 00478910    mov         eax,dword ptr [ebp-4]
 00478913    mov         eax,dword ptr [eax+8]
 00478916    mov         edx,dword ptr [ebp-4]
 00478919    cmp         eax,dword ptr [edx+0C]
>0047891C    jne         00478925
 0047891E    mov         eax,dword ptr [ebp-4]
 00478921    mov         edx,dword ptr [eax]
 00478923    call        dword ptr [edx]
 00478925    mov         eax,dword ptr [ebp-8]
 00478928    mov         edx,dword ptr [ebp-4]
 0047892B    cmp         eax,dword ptr [edx+8]
>0047892E    jge         0047895C
 00478930    mov         eax,dword ptr [ebp-4]
 00478933    mov         eax,dword ptr [eax+8]
 00478936    sub         eax,dword ptr [ebp-8]
 00478939    mov         ecx,eax
 0047893B    shl         ecx,2
 0047893E    mov         eax,dword ptr [ebp-4]
 00478941    mov         eax,dword ptr [eax+4]
 00478944    mov         edx,dword ptr [ebp-8]
 00478947    lea         edx,[eax+edx*4+4]
 0047894B    mov         eax,dword ptr [ebp-4]
 0047894E    mov         eax,dword ptr [eax+4]
 00478951    mov         ebx,dword ptr [ebp-8]
 00478954    lea         eax,[eax+ebx*4]
 00478957    call        Move
 0047895C    mov         eax,dword ptr [ebp-4]
 0047895F    mov         eax,dword ptr [eax+4]
 00478962    mov         edx,dword ptr [ebp-8]
 00478965    mov         ecx,dword ptr [ebp-0C]
 00478968    mov         dword ptr [eax+edx*4],ecx
 0047896B    mov         eax,dword ptr [ebp-4]
 0047896E    inc         dword ptr [eax+8]
 00478971    cmp         dword ptr [ebp-0C],0
>00478975    je          00478984
 00478977    xor         ecx,ecx
 00478979    mov         edx,dword ptr [ebp-0C]
 0047897C    mov         eax,dword ptr [ebp-4]
 0047897F    mov         ebx,dword ptr [eax]
 00478981    call        dword ptr [ebx+4]
 00478984    pop         ebx
 00478985    mov         esp,ebp
 00478987    pop         ebp
 00478988    ret
end;*}

//0047898C
{*function sub_0047898C(?:TList):?;
begin
 0047898C    push        ebp
 0047898D    mov         ebp,esp
 0047898F    add         esp,0FFFFFFF8
 00478992    mov         dword ptr [ebp-4],eax
 00478995    mov         eax,dword ptr [ebp-4]
 00478998    mov         edx,dword ptr [eax+8]
 0047899B    dec         edx
 0047899C    mov         eax,dword ptr [ebp-4]
 0047899F    call        TList.Get
 004789A4    mov         dword ptr [ebp-8],eax
 004789A7    mov         eax,dword ptr [ebp-8]
 004789AA    pop         ecx
 004789AB    pop         ecx
 004789AC    pop         ebp
 004789AD    ret
end;*}

//004789B0
procedure sub_004789B0(?:TList; ?:Integer; ?:Integer);
begin
{*
 004789B0    push        ebp
 004789B1    mov         ebp,esp
 004789B3    add         esp,0FFFFFFF0
 004789B6    mov         dword ptr [ebp-0C],ecx
 004789B9    mov         dword ptr [ebp-8],edx
 004789BC    mov         dword ptr [ebp-4],eax
 004789BF    mov         eax,dword ptr [ebp-8]
 004789C2    cmp         eax,dword ptr [ebp-0C]
>004789C5    je          00478A2E
 004789C7    cmp         dword ptr [ebp-0C],0
>004789CB    jl          004789D8
 004789CD    mov         eax,dword ptr [ebp-0C]
 004789D0    mov         edx,dword ptr [ebp-4]
 004789D3    cmp         eax,dword ptr [edx+8]
>004789D6    jl          004789EB
 004789D8    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 004789DE    mov         ecx,dword ptr [ebp-0C]
 004789E1    mov         eax,dword ptr [ebp-4]
 004789E4    mov         eax,dword ptr [eax]
 004789E6    call        00478744
 004789EB    mov         edx,dword ptr [ebp-8]
 004789EE    mov         eax,dword ptr [ebp-4]
 004789F1    call        TList.Get
 004789F6    mov         dword ptr [ebp-10],eax
 004789F9    mov         eax,dword ptr [ebp-4]
 004789FC    mov         eax,dword ptr [eax+4]
 004789FF    mov         edx,dword ptr [ebp-8]
 00478A02    xor         ecx,ecx
 00478A04    mov         dword ptr [eax+edx*4],ecx
 00478A07    mov         edx,dword ptr [ebp-8]
 00478A0A    mov         eax,dword ptr [ebp-4]
 00478A0D    call        00478668
 00478A12    xor         ecx,ecx
 00478A14    mov         edx,dword ptr [ebp-0C]
 00478A17    mov         eax,dword ptr [ebp-4]
 00478A1A    call        004788DC
 00478A1F    mov         eax,dword ptr [ebp-4]
 00478A22    mov         eax,dword ptr [eax+4]
 00478A25    mov         edx,dword ptr [ebp-0C]
 00478A28    mov         ecx,dword ptr [ebp-10]
 00478A2B    mov         dword ptr [eax+edx*4],ecx
 00478A2E    mov         esp,ebp
 00478A30    pop         ebp
 00478A31    ret
*}
end;

//00478A34
{*procedure sub_00478A34(?:TList; ?:?; ?:Pointer);
begin
 00478A34    push        ebp
 00478A35    mov         ebp,esp
 00478A37    add         esp,0FFFFFFF0
 00478A3A    push        ebx
 00478A3B    mov         dword ptr [ebp-0C],ecx
 00478A3E    mov         dword ptr [ebp-8],edx
 00478A41    mov         dword ptr [ebp-4],eax
 00478A44    cmp         dword ptr [ebp-8],0
>00478A48    jl          00478A55
 00478A4A    mov         eax,dword ptr [ebp-8]
 00478A4D    mov         edx,dword ptr [ebp-4]
 00478A50    cmp         eax,dword ptr [edx+8]
>00478A53    jl          00478A68
 00478A55    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 00478A5B    mov         ecx,dword ptr [ebp-8]
 00478A5E    mov         eax,dword ptr [ebp-4]
 00478A61    mov         eax,dword ptr [eax]
 00478A63    call        00478744
 00478A68    mov         eax,dword ptr [ebp-4]
 00478A6B    mov         eax,dword ptr [eax+4]
 00478A6E    mov         edx,dword ptr [ebp-8]
 00478A71    mov         eax,dword ptr [eax+edx*4]
 00478A74    cmp         eax,dword ptr [ebp-0C]
>00478A77    je          00478ABD
 00478A79    mov         eax,dword ptr [ebp-4]
 00478A7C    mov         eax,dword ptr [eax+4]
 00478A7F    mov         edx,dword ptr [ebp-8]
 00478A82    mov         eax,dword ptr [eax+edx*4]
 00478A85    mov         dword ptr [ebp-10],eax
 00478A88    mov         eax,dword ptr [ebp-4]
 00478A8B    mov         eax,dword ptr [eax+4]
 00478A8E    mov         edx,dword ptr [ebp-8]
 00478A91    mov         ecx,dword ptr [ebp-0C]
 00478A94    mov         dword ptr [eax+edx*4],ecx
 00478A97    cmp         dword ptr [ebp-10],0
>00478A9B    je          00478AAA
 00478A9D    mov         cl,2
 00478A9F    mov         edx,dword ptr [ebp-10]
 00478AA2    mov         eax,dword ptr [ebp-4]
 00478AA5    mov         ebx,dword ptr [eax]
 00478AA7    call        dword ptr [ebx+4]
 00478AAA    cmp         dword ptr [ebp-0C],0
>00478AAE    je          00478ABD
 00478AB0    xor         ecx,ecx
 00478AB2    mov         edx,dword ptr [ebp-0C]
 00478AB5    mov         eax,dword ptr [ebp-4]
 00478AB8    mov         ebx,dword ptr [eax]
 00478ABA    call        dword ptr [ebx+4]
 00478ABD    pop         ebx
 00478ABE    mov         esp,ebp
 00478AC0    pop         ebp
 00478AC1    ret
end;*}

//00478AC4
{*function sub_00478AC4(?:TList; ?:TPersistent):?;
begin
 00478AC4    push        ebp
 00478AC5    mov         ebp,esp
 00478AC7    add         esp,0FFFFFFF4
 00478ACA    mov         dword ptr [ebp-8],edx
 00478ACD    mov         dword ptr [ebp-4],eax
 00478AD0    mov         edx,dword ptr [ebp-8]
 00478AD3    mov         eax,dword ptr [ebp-4]
 00478AD6    call        00478890
 00478ADB    mov         dword ptr [ebp-0C],eax
 00478ADE    cmp         dword ptr [ebp-0C],0
>00478AE2    jl          00478AEF
 00478AE4    mov         edx,dword ptr [ebp-0C]
 00478AE7    mov         eax,dword ptr [ebp-4]
 00478AEA    call        00478668
 00478AEF    mov         eax,dword ptr [ebp-0C]
 00478AF2    mov         esp,ebp
 00478AF4    pop         ebp
 00478AF5    ret
end;*}

//00478AF8
{*procedure sub_00478AF8(?:TList; ?:?);
begin
 00478AF8    push        ebp
 00478AF9    mov         ebp,esp
 00478AFB    add         esp,0FFFFFFF8
 00478AFE    mov         dword ptr [ebp-8],edx
 00478B01    mov         dword ptr [ebp-4],eax
 00478B04    mov         eax,dword ptr [ebp-8]
 00478B07    mov         edx,dword ptr [ebp-4]
 00478B0A    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>00478B0D    jl          00478B18
 00478B0F    cmp         dword ptr [ebp-8],7FFFFFF
>00478B16    jle         00478B2B
 00478B18    mov         edx,dword ptr ds:[55B430];^SListCapacityError:TResStringRec
 00478B1E    mov         ecx,dword ptr [ebp-8]
 00478B21    mov         eax,dword ptr [ebp-4]
 00478B24    mov         eax,dword ptr [eax]
 00478B26    call        00478744
 00478B2B    mov         eax,dword ptr [ebp-8]
 00478B2E    mov         edx,dword ptr [ebp-4]
 00478B31    cmp         eax,dword ptr [edx+0C];TList.FCapacity:Integer
>00478B34    je          00478B50
 00478B36    mov         edx,dword ptr [ebp-8]
 00478B39    shl         edx,2
 00478B3C    mov         eax,dword ptr [ebp-4]
 00478B3F    add         eax,4;TList.FList:PPointerList
 00478B42    call        @ReallocMem
 00478B47    mov         eax,dword ptr [ebp-8]
 00478B4A    mov         edx,dword ptr [ebp-4]
 00478B4D    mov         dword ptr [edx+0C],eax;TList.FCapacity:Integer
 00478B50    pop         ecx
 00478B51    pop         ecx
 00478B52    pop         ebp
 00478B53    ret
end;*}

//00478B54
{*procedure sub_00478B54(?:TList; ?:?);
begin
 00478B54    push        ebp
 00478B55    mov         ebp,esp
 00478B57    add         esp,0FFFFFFF0
 00478B5A    mov         dword ptr [ebp-8],edx
 00478B5D    mov         dword ptr [ebp-4],eax
 00478B60    cmp         dword ptr [ebp-8],0
>00478B64    jl          00478B6F
 00478B66    cmp         dword ptr [ebp-8],7FFFFFF
>00478B6D    jle         00478B82
 00478B6F    mov         edx,dword ptr ds:[55B354];^SListCountError:TResStringRec
 00478B75    mov         ecx,dword ptr [ebp-8]
 00478B78    mov         eax,dword ptr [ebp-4]
 00478B7B    mov         eax,dword ptr [eax]
 00478B7D    call        00478744
 00478B82    mov         eax,dword ptr [ebp-8]
 00478B85    mov         edx,dword ptr [ebp-4]
 00478B88    cmp         eax,dword ptr [edx+0C];TList.FCapacity:Integer
>00478B8B    jle         00478B98
 00478B8D    mov         edx,dword ptr [ebp-8]
 00478B90    mov         eax,dword ptr [ebp-4]
 00478B93    call        00478AF8
 00478B98    mov         eax,dword ptr [ebp-8]
 00478B9B    mov         edx,dword ptr [ebp-4]
 00478B9E    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>00478BA1    jle         00478BC7
 00478BA3    mov         eax,dword ptr [ebp-4]
 00478BA6    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 00478BA9    mov         edx,dword ptr [ebp-4]
 00478BAC    mov         edx,dword ptr [edx+8];TList.FCount:Integer
 00478BAF    lea         eax,[eax+edx*4]
 00478BB2    mov         edx,dword ptr [ebp-8]
 00478BB5    mov         ecx,dword ptr [ebp-4]
 00478BB8    sub         edx,dword ptr [ecx+8]
 00478BBB    shl         edx,2
 00478BBE    xor         ecx,ecx
 00478BC0    call        @FillChar
>00478BC5    jmp         00478BEF
 00478BC7    mov         eax,dword ptr [ebp-4]
 00478BCA    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00478BCD    dec         eax
 00478BCE    mov         edx,dword ptr [ebp-8]
 00478BD1    sub         edx,eax
>00478BD3    jg          00478BEF
 00478BD5    dec         edx
 00478BD6    mov         dword ptr [ebp-10],edx
 00478BD9    mov         dword ptr [ebp-0C],eax
 00478BDC    mov         edx,dword ptr [ebp-0C]
 00478BDF    mov         eax,dword ptr [ebp-4]
 00478BE2    call        00478668
 00478BE7    dec         dword ptr [ebp-0C]
 00478BEA    inc         dword ptr [ebp-10]
>00478BED    jne         00478BDC
 00478BEF    mov         eax,dword ptr [ebp-8]
 00478BF2    mov         edx,dword ptr [ebp-4]
 00478BF5    mov         dword ptr [edx+8],eax;TList.FCount:Integer
 00478BF8    mov         esp,ebp
 00478BFA    pop         ebp
 00478BFB    ret
end;*}

//00478BFC
{*procedure sub_00478BFC(?:?; ?:?);
begin
 00478BFC    push        ebp
 00478BFD    mov         ebp,esp
 00478BFF    add         esp,0FFFFFFF4
 00478C02    mov         byte ptr [ebp-9],cl
 00478C05    mov         dword ptr [ebp-8],edx
 00478C08    mov         dword ptr [ebp-4],eax
 00478C0B    mov         esp,ebp
 00478C0D    pop         ebp
 00478C0E    ret
end;*}

//00478C10
constructor TThreadList.Create;
begin
{*
 00478C10    push        ebp
 00478C11    mov         ebp,esp
 00478C13    add         esp,0FFFFFFF8
 00478C16    test        dl,dl
>00478C18    je          00478C22
 00478C1A    add         esp,0FFFFFFF0
 00478C1D    call        @ClassCreate
 00478C22    mov         byte ptr [ebp-5],dl
 00478C25    mov         dword ptr [ebp-4],eax
 00478C28    xor         edx,edx
 00478C2A    mov         eax,dword ptr [ebp-4]
 00478C2D    call        TObject.Create
 00478C32    mov         eax,dword ptr [ebp-4]
 00478C35    add         eax,8
 00478C38    push        eax
 00478C39    call        kernel32.InitializeCriticalSection
 00478C3E    mov         dl,1
 00478C40    mov         eax,[004759C0];TList
 00478C45    call        TObject.Create
 00478C4A    mov         edx,dword ptr [ebp-4]
 00478C4D    mov         dword ptr [edx+4],eax
 00478C50    mov         eax,dword ptr [ebp-4]
 00478C53    mov         byte ptr [eax+20],0
 00478C57    mov         eax,dword ptr [ebp-4]
 00478C5A    cmp         byte ptr [ebp-5],0
>00478C5E    je          00478C6F
 00478C60    call        @AfterConstruction
 00478C65    pop         dword ptr fs:[0]
 00478C6C    add         esp,0C
 00478C6F    mov         eax,dword ptr [ebp-4]
 00478C72    pop         ecx
 00478C73    pop         ecx
 00478C74    pop         ebp
 00478C75    ret
*}
end;

//00478C78
destructor TThreadList.Destroy;
begin
{*
 00478C78    push        ebp
 00478C79    mov         ebp,esp
 00478C7B    add         esp,0FFFFFFF8
 00478C7E    call        @BeforeDestruction
 00478C83    mov         byte ptr [ebp-5],dl
 00478C86    mov         dword ptr [ebp-4],eax
 00478C89    mov         eax,dword ptr [ebp-4]
 00478C8C    call        TThreadList.LockList
 00478C91    xor         eax,eax
 00478C93    push        ebp
 00478C94    push        478CDA
 00478C99    push        dword ptr fs:[eax]
 00478C9C    mov         dword ptr fs:[eax],esp
 00478C9F    mov         eax,dword ptr [ebp-4]
 00478CA2    mov         eax,dword ptr [eax+4]
 00478CA5    call        TObject.Free
 00478CAA    mov         dl,byte ptr [ebp-5]
 00478CAD    and         dl,0FC
 00478CB0    mov         eax,dword ptr [ebp-4]
 00478CB3    call        TObject.Destroy
 00478CB8    xor         eax,eax
 00478CBA    pop         edx
 00478CBB    pop         ecx
 00478CBC    pop         ecx
 00478CBD    mov         dword ptr fs:[eax],edx
 00478CC0    push        478CE1
 00478CC5    mov         eax,dword ptr [ebp-4]
 00478CC8    call        TThreadList.UnlockList
 00478CCD    mov         eax,dword ptr [ebp-4]
 00478CD0    add         eax,8
 00478CD3    push        eax
 00478CD4    call        kernel32.DeleteCriticalSection
 00478CD9    ret
>00478CDA    jmp         @HandleFinally
>00478CDF    jmp         00478CC5
 00478CE1    cmp         byte ptr [ebp-5],0
>00478CE5    jle         00478CEF
 00478CE7    mov         eax,dword ptr [ebp-4]
 00478CEA    call        @ClassDestroy
 00478CEF    pop         ecx
 00478CF0    pop         ecx
 00478CF1    pop         ebp
 00478CF2    ret
*}
end;

//00478CF4
{*procedure sub_00478CF4(?:?; ?:Pointer);
begin
 00478CF4    push        ebp
 00478CF5    mov         ebp,esp
 00478CF7    add         esp,0FFFFFFF8
 00478CFA    mov         dword ptr [ebp-8],edx
 00478CFD    mov         dword ptr [ebp-4],eax
 00478D00    mov         eax,dword ptr [ebp-4]
 00478D03    call        TThreadList.LockList
 00478D08    xor         eax,eax
 00478D0A    push        ebp
 00478D0B    push        478D75
 00478D10    push        dword ptr fs:[eax]
 00478D13    mov         dword ptr fs:[eax],esp
 00478D16    mov         eax,dword ptr [ebp-4]
 00478D19    cmp         byte ptr [eax+20],1
>00478D1D    je          00478D30
 00478D1F    mov         eax,dword ptr [ebp-4]
 00478D22    mov         eax,dword ptr [eax+4]
 00478D25    mov         edx,dword ptr [ebp-8]
 00478D28    call        00478890
 00478D2D    inc         eax
>00478D2E    jne         00478D40
 00478D30    mov         eax,dword ptr [ebp-4]
 00478D33    mov         eax,dword ptr [eax+4]
 00478D36    mov         edx,dword ptr [ebp-8]
 00478D39    call        TList.Add
>00478D3E    jmp         00478D5F
 00478D40    mov         eax,dword ptr [ebp-4]
 00478D43    cmp         byte ptr [eax+20],2
>00478D47    jne         00478D5F
 00478D49    mov         edx,dword ptr ds:[55B32C];^SDuplicateItem:TResStringRec
 00478D4F    mov         eax,dword ptr [ebp-4]
 00478D52    mov         eax,dword ptr [eax+4]
 00478D55    mov         eax,dword ptr [eax]
 00478D57    mov         ecx,dword ptr [ebp-8]
 00478D5A    call        00478744
 00478D5F    xor         eax,eax
 00478D61    pop         edx
 00478D62    pop         ecx
 00478D63    pop         ecx
 00478D64    mov         dword ptr fs:[eax],edx
 00478D67    push        478D7C
 00478D6C    mov         eax,dword ptr [ebp-4]
 00478D6F    call        TThreadList.UnlockList
 00478D74    ret
>00478D75    jmp         @HandleFinally
>00478D7A    jmp         00478D6C
 00478D7C    pop         ecx
 00478D7D    pop         ecx
 00478D7E    pop         ebp
 00478D7F    ret
end;*}

//00478D80
function TThreadList.LockList:TList;
begin
{*
 00478D80    push        ebp
 00478D81    mov         ebp,esp
 00478D83    add         esp,0FFFFFFF8
 00478D86    mov         dword ptr [ebp-4],eax
 00478D89    mov         eax,dword ptr [ebp-4]
 00478D8C    add         eax,8
 00478D8F    push        eax
 00478D90    call        kernel32.EnterCriticalSection
 00478D95    mov         eax,dword ptr [ebp-4]
 00478D98    mov         eax,dword ptr [eax+4]
 00478D9B    mov         dword ptr [ebp-8],eax
 00478D9E    mov         eax,dword ptr [ebp-8]
 00478DA1    pop         ecx
 00478DA2    pop         ecx
 00478DA3    pop         ebp
 00478DA4    ret
*}
end;

//00478DA8
{*procedure sub_00478DA8(?:?; ?:?);
begin
 00478DA8    push        ebp
 00478DA9    mov         ebp,esp
 00478DAB    add         esp,0FFFFFFF8
 00478DAE    mov         dword ptr [ebp-8],edx
 00478DB1    mov         dword ptr [ebp-4],eax
 00478DB4    mov         eax,dword ptr [ebp-4]
 00478DB7    call        TThreadList.LockList
 00478DBC    xor         eax,eax
 00478DBE    push        ebp
 00478DBF    push        478DEE
 00478DC4    push        dword ptr fs:[eax]
 00478DC7    mov         dword ptr fs:[eax],esp
 00478DCA    mov         eax,dword ptr [ebp-4]
 00478DCD    mov         eax,dword ptr [eax+4]
 00478DD0    mov         edx,dword ptr [ebp-8]
 00478DD3    call        00478AC4
 00478DD8    xor         eax,eax
 00478DDA    pop         edx
 00478DDB    pop         ecx
 00478DDC    pop         ecx
 00478DDD    mov         dword ptr fs:[eax],edx
 00478DE0    push        478DF5
 00478DE5    mov         eax,dword ptr [ebp-4]
 00478DE8    call        TThreadList.UnlockList
 00478DED    ret
>00478DEE    jmp         @HandleFinally
>00478DF3    jmp         00478DE5
 00478DF5    pop         ecx
 00478DF6    pop         ecx
 00478DF7    pop         ebp
 00478DF8    ret
end;*}

//00478DFC
procedure TThreadList.UnlockList;
begin
{*
 00478DFC    push        ebp
 00478DFD    mov         ebp,esp
 00478DFF    push        ecx
 00478E00    mov         dword ptr [ebp-4],eax
 00478E03    mov         eax,dword ptr [ebp-4]
 00478E06    add         eax,8
 00478E09    push        eax
 00478E0A    call        kernel32.LeaveCriticalSection
 00478E0F    pop         ecx
 00478E10    pop         ebp
 00478E11    ret
*}
end;

//00478E50
procedure TBits.Error;
begin
{*
 00478E50    push        ebp
 00478E51    mov         ebp,esp
 00478E53    push        ecx
 00478E54    mov         dword ptr [ebp-4],eax
 00478E57    mov         ecx,dword ptr ds:[55B600];^SBitsIndexError:TResStringRec
 00478E5D    mov         dl,1
 00478E5F    mov         eax,[004757F0];EBitsError
 00478E64    call        Exception.Create
 00478E69    call        @RaiseExcept
 00478E6E    pop         ecx
 00478E6F    pop         ebp
 00478E70    ret
*}
end;

//00478E74
{*function sub_00478E74(?:?; ?:?):?;
begin
 00478E74    push        ebp
 00478E75    mov         ebp,esp
 00478E77    add         esp,0FFFFFFF4
 00478E7A    mov         dword ptr [ebp-8],edx
 00478E7D    mov         dword ptr [ebp-4],eax
 00478E80    mov         eax,dword ptr [ebp-4]
 00478E83    mov         dword ptr [ebp-0C],eax
 00478E86    mov         eax,dword ptr [ebp-4]
 00478E89    cmp         eax,dword ptr [ebp-8]
>00478E8C    jle         00478E94
 00478E8E    mov         eax,dword ptr [ebp-8]
 00478E91    mov         dword ptr [ebp-0C],eax
 00478E94    mov         eax,dword ptr [ebp-0C]
 00478E97    mov         esp,ebp
 00478E99    pop         ebp
 00478E9A    ret
end;*}

//00478E9C
procedure TBits.SetSize(Value:Integer);
begin
{*
 00478E9C    push        ebp
 00478E9D    mov         ebp,esp
 00478E9F    add         esp,0FFFFFFEC
 00478EA2    mov         dword ptr [ebp-8],edx
 00478EA5    mov         dword ptr [ebp-4],eax
 00478EA8    mov         eax,dword ptr [ebp-8]
 00478EAB    mov         edx,dword ptr [ebp-4]
 00478EAE    cmp         eax,dword ptr [edx+4]
>00478EB1    je          00478F6A
 00478EB7    cmp         dword ptr [ebp-8],0
>00478EBB    jge         00478EC5
 00478EBD    mov         eax,dword ptr [ebp-4]
 00478EC0    call        TBits.Error
 00478EC5    mov         eax,dword ptr [ebp-8]
 00478EC8    add         eax,20
 00478ECB    dec         eax
 00478ECC    test        eax,eax
>00478ECE    jns         00478ED3
 00478ED0    add         eax,1F
 00478ED3    sar         eax,5
 00478ED6    shl         eax,2
 00478ED9    mov         dword ptr [ebp-10],eax
 00478EDC    mov         eax,dword ptr [ebp-4]
 00478EDF    mov         eax,dword ptr [eax+4]
 00478EE2    add         eax,20
 00478EE5    dec         eax
 00478EE6    test        eax,eax
>00478EE8    jns         00478EED
 00478EEA    add         eax,1F
 00478EED    sar         eax,5
 00478EF0    shl         eax,2
 00478EF3    mov         dword ptr [ebp-14],eax
 00478EF6    mov         eax,dword ptr [ebp-10]
 00478EF9    cmp         eax,dword ptr [ebp-14]
>00478EFC    je          00478F61
 00478EFE    xor         eax,eax
 00478F00    mov         dword ptr [ebp-0C],eax
 00478F03    cmp         dword ptr [ebp-10],0
>00478F07    je          00478F21
 00478F09    mov         eax,dword ptr [ebp-10]
 00478F0C    call        @GetMem
 00478F11    mov         dword ptr [ebp-0C],eax
 00478F14    mov         eax,dword ptr [ebp-0C]
 00478F17    xor         ecx,ecx
 00478F19    mov         edx,dword ptr [ebp-10]
 00478F1C    call        @FillChar
 00478F21    cmp         dword ptr [ebp-14],0
>00478F25    je          00478F58
 00478F27    cmp         dword ptr [ebp-0C],0
>00478F2B    je          00478F4A
 00478F2D    push        ebp
 00478F2E    mov         edx,dword ptr [ebp-10]
 00478F31    mov         eax,dword ptr [ebp-14]
 00478F34    call        00478E74
 00478F39    pop         ecx
 00478F3A    mov         ecx,eax
 00478F3C    mov         edx,dword ptr [ebp-0C]
 00478F3F    mov         eax,dword ptr [ebp-4]
 00478F42    mov         eax,dword ptr [eax+8]
 00478F45    call        Move
 00478F4A    mov         edx,dword ptr [ebp-14]
 00478F4D    mov         eax,dword ptr [ebp-4]
 00478F50    mov         eax,dword ptr [eax+8]
 00478F53    call        @FreeMem
 00478F58    mov         eax,dword ptr [ebp-0C]
 00478F5B    mov         edx,dword ptr [ebp-4]
 00478F5E    mov         dword ptr [edx+8],eax
 00478F61    mov         eax,dword ptr [ebp-8]
 00478F64    mov         edx,dword ptr [ebp-4]
 00478F67    mov         dword ptr [edx+4],eax
 00478F6A    mov         esp,ebp
 00478F6C    pop         ebp
 00478F6D    ret
*}
end;

//00478F70
procedure TBits.SetBit(Index:Integer; Value:Boolean);
begin
{*
 00478F70    cmp         edx,dword ptr [eax+4]
>00478F73    jae         00478F84
 00478F75    mov         eax,dword ptr [eax+8]
 00478F78    or          cl,cl
>00478F7A    je          00478F80
 00478F7C    bts         dword ptr [eax],edx
 00478F7F    ret
 00478F80    btr         dword ptr [eax],edx
 00478F83    ret
 00478F84    cmp         edx,0
>00478F87    jl          00478E50
 00478F8D    push        eax
 00478F8E    push        edx
 00478F8F    push        ecx
 00478F90    inc         edx
 00478F91    call        TBits.SetSize
 00478F96    pop         ecx
 00478F97    pop         edx
 00478F98    pop         eax
>00478F99    jmp         00478F75
 00478F9B    ret
*}
end;

//00478F9C
function TBits.GetBit(Index:Integer):Boolean;
begin
{*
 00478F9C    cmp         edx,dword ptr [eax+4]
>00478F9F    jae         00478E50
 00478FA5    mov         eax,dword ptr [eax+8]
 00478FA8    bt          dword ptr [eax],edx
 00478FAB    sbb         eax,eax
 00478FAD    and         eax,1
 00478FB0    ret
*}
end;

//00478FB4
{*function sub_00478FB4(?:?):?;
begin
 00478FB4    push        ebp
 00478FB5    mov         ebp,esp
 00478FB7    add         esp,0FFFFFFE4
 00478FBA    mov         dword ptr [ebp-4],eax
 00478FBD    mov         eax,dword ptr [ebp-4]
 00478FC0    mov         eax,dword ptr [eax+4]
 00478FC3    add         eax,20
 00478FC6    dec         eax
 00478FC7    test        eax,eax
>00478FC9    jns         00478FCE
 00478FCB    add         eax,1F
 00478FCE    sar         eax,5
 00478FD1    dec         eax
 00478FD2    mov         dword ptr [ebp-18],eax
 00478FD5    mov         eax,dword ptr [ebp-18]
 00478FD8    test        eax,eax
>00478FDA    jl          00479055
 00478FDC    inc         eax
 00478FDD    mov         dword ptr [ebp-1C],eax
 00478FE0    mov         dword ptr [ebp-0C],0
 00478FE7    mov         eax,dword ptr [ebp-4]
 00478FEA    mov         eax,dword ptr [eax+8]
 00478FED    mov         edx,dword ptr [ebp-0C]
 00478FF0    mov         ecx,dword ptr ds:[479068];0xFFFFFFFF gvar_00479068
 00478FF6    cmp         ecx,dword ptr [eax+edx*4]
>00478FF9    je          0047904D
 00478FFB    mov         eax,dword ptr [ebp-4]
 00478FFE    mov         eax,dword ptr [eax+8]
 00479001    mov         edx,dword ptr [ebp-0C]
 00479004    mov         eax,dword ptr [eax+edx*4]
 00479007    mov         dword ptr [ebp-10],eax
 0047900A    mov         byte ptr [ebp-11],0
 0047900E    mov         al,byte ptr [ebp-11]
 00479011    cmp         al,1F
>00479013    ja          0047901C
 00479015    and         eax,7F
 00479018    bt          dword ptr [ebp-10],eax
>0047901C    jb          00479044
 0047901E    mov         eax,dword ptr [ebp-0C]
 00479021    shl         eax,5
 00479024    xor         edx,edx
 00479026    mov         dl,byte ptr [ebp-11]
 00479029    add         eax,edx
 0047902B    mov         dword ptr [ebp-8],eax
 0047902E    mov         eax,dword ptr [ebp-8]
 00479031    mov         edx,dword ptr [ebp-4]
 00479034    cmp         eax,dword ptr [edx+4]
>00479037    jl          0047905E
 00479039    mov         eax,dword ptr [ebp-4]
 0047903C    mov         eax,dword ptr [eax+4]
 0047903F    mov         dword ptr [ebp-8],eax
>00479042    jmp         0047905E
 00479044    inc         byte ptr [ebp-11]
 00479047    cmp         byte ptr [ebp-11],20
>0047904B    jne         0047900E
 0047904D    inc         dword ptr [ebp-0C]
 00479050    dec         dword ptr [ebp-1C]
>00479053    jne         00478FE7
 00479055    mov         eax,dword ptr [ebp-4]
 00479058    mov         eax,dword ptr [eax+4]
 0047905B    mov         dword ptr [ebp-8],eax
 0047905E    mov         eax,dword ptr [ebp-8]
 00479061    mov         esp,ebp
 00479063    pop         ebp
 00479064    ret
end;*}

//0047906C
destructor TPersistent.Destroy;
begin
{*
 0047906C    push        ebp
 0047906D    mov         ebp,esp
 0047906F    add         esp,0FFFFFFF8
 00479072    call        @BeforeDestruction
 00479077    mov         byte ptr [ebp-5],dl
 0047907A    mov         dword ptr [ebp-4],eax
 0047907D    mov         eax,dword ptr [ebp-4]
 00479080    call        0047D1D4
 00479085    mov         dl,byte ptr [ebp-5]
 00479088    and         dl,0FC
 0047908B    mov         eax,dword ptr [ebp-4]
 0047908E    call        TObject.Destroy
 00479093    cmp         byte ptr [ebp-5],0
>00479097    jle         004790A1
 00479099    mov         eax,dword ptr [ebp-4]
 0047909C    call        @ClassDestroy
 004790A1    pop         ecx
 004790A2    pop         ecx
 004790A3    pop         ebp
 004790A4    ret
*}
end;

//004790A8
{*procedure sub_004790A8(?:?);
begin
 004790A8    push        ebp
 004790A9    mov         ebp,esp
 004790AB    add         esp,0FFFFFFF8
 004790AE    mov         dword ptr [ebp-8],edx
 004790B1    mov         dword ptr [ebp-4],eax
 004790B4    cmp         dword ptr [ebp-8],0
>004790B8    je          004790C6
 004790BA    mov         edx,dword ptr [ebp-4]
 004790BD    mov         eax,dword ptr [ebp-8]
 004790C0    mov         ecx,dword ptr [eax]
 004790C2    call        dword ptr [ecx]
>004790C4    jmp         004790D0
 004790C6    xor         edx,edx
 004790C8    mov         eax,dword ptr [ebp-4]
 004790CB    call        004790D4
 004790D0    pop         ecx
 004790D1    pop         ecx
 004790D2    pop         ebp
 004790D3    ret
end;*}

//004790D4
procedure sub_004790D4(?:TPersistent; ?:TPersistent);
begin
{*
 004790D4    push        ebp
 004790D5    mov         ebp,esp
 004790D7    add         esp,0FFFFFEE4
 004790DD    xor         ecx,ecx
 004790DF    mov         dword ptr [ebp-0C],ecx
 004790E2    mov         dword ptr [ebp-8],edx
 004790E5    mov         dword ptr [ebp-4],eax
 004790E8    xor         eax,eax
 004790EA    push        ebp
 004790EB    push        479192
 004790F0    push        dword ptr fs:[eax]
 004790F3    mov         dword ptr fs:[eax],esp
 004790F6    cmp         dword ptr [ebp-8],0
>004790FA    je          0047911C
 004790FC    lea         edx,[ebp-10C]
 00479102    mov         eax,dword ptr [ebp-8]
 00479105    mov         eax,dword ptr [eax]
 00479107    call        TObject.ClassName
 0047910C    lea         edx,[ebp-10C]
 00479112    lea         eax,[ebp-0C]
 00479115    call        @LStrFromString
>0047911A    jmp         00479129
 0047911C    lea         eax,[ebp-0C]
 0047911F    mov         edx,4791A8;'nil'
 00479124    call        @LStrLAsg
 00479129    mov         eax,dword ptr [ebp-0C]
 0047912C    mov         dword ptr [ebp-11C],eax
 00479132    mov         byte ptr [ebp-118],0B
 00479139    lea         edx,[ebp-10C]
 0047913F    mov         eax,dword ptr [ebp-4]
 00479142    mov         eax,dword ptr [eax]
 00479144    call        TObject.ClassName
 00479149    lea         eax,[ebp-10C]
 0047914F    mov         dword ptr [ebp-114],eax
 00479155    mov         byte ptr [ebp-110],4
 0047915C    lea         eax,[ebp-11C]
 00479162    push        eax
 00479163    push        1
 00479165    mov         ecx,dword ptr ds:[55B374];^SAssignError:TResStringRec
 0047916B    mov         dl,1
 0047916D    mov         eax,[00465A0C];EConvertError
 00479172    call        Exception.CreateResFmt;EConvertError.Create
 00479177    call        @RaiseExcept
 0047917C    xor         eax,eax
 0047917E    pop         edx
 0047917F    pop         ecx
 00479180    pop         ecx
 00479181    mov         dword ptr fs:[eax],edx
 00479184    push        479199
 00479189    lea         eax,[ebp-0C]
 0047918C    call        @LStrClr
 00479191    ret
>00479192    jmp         @HandleFinally
>00479197    jmp         00479189
 00479199    mov         esp,ebp
 0047919B    pop         ebp
 0047919C    ret
*}
end;

//004791AC
{*procedure sub_004791AC(?:?);
begin
 004791AC    push        ebp
 004791AD    mov         ebp,esp
 004791AF    add         esp,0FFFFFFF8
 004791B2    mov         dword ptr [ebp-8],edx
 004791B5    mov         dword ptr [ebp-4],eax
 004791B8    mov         edx,dword ptr [ebp-4]
 004791BB    mov         eax,dword ptr [ebp-8]
 004791BE    call        004790D4
 004791C3    pop         ecx
 004791C4    pop         ecx
 004791C5    pop         ebp
 004791C6    ret
end;*}

//004791C8
procedure TPersistent.DefineProperties(Filer:TFiler);
begin
{*
 004791C8    push        ebp
 004791C9    mov         ebp,esp
 004791CB    add         esp,0FFFFFFF8
 004791CE    mov         dword ptr [ebp-8],edx
 004791D1    mov         dword ptr [ebp-4],eax
 004791D4    pop         ecx
 004791D5    pop         ecx
 004791D6    pop         ebp
 004791D7    ret
*}
end;

//004791D8
{*procedure TPersistent.sub_004791D8(?:?);
begin
 004791D8    push        ebp
 004791D9    mov         ebp,esp
 004791DB    add         esp,0FFFFFEF4
 004791E1    push        esi
 004791E2    xor         ecx,ecx
 004791E4    mov         dword ptr [ebp-0C],ecx
 004791E7    mov         dword ptr [ebp-8],edx
 004791EA    mov         dword ptr [ebp-4],eax
 004791ED    xor         eax,eax
 004791EF    push        ebp
 004791F0    push        479277
 004791F5    push        dword ptr fs:[eax]
 004791F8    mov         dword ptr fs:[eax],esp
 004791FB    lea         edx,[ebp-10C]
 00479201    mov         eax,dword ptr [ebp-4]
 00479204    mov         eax,dword ptr [eax]
 00479206    call        TObject.ClassName
 0047920B    lea         edx,[ebp-10C]
 00479211    mov         eax,dword ptr [ebp-8]
 00479214    call        @LStrFromString
 00479219    mov         eax,dword ptr [ebp-4]
 0047921C    mov         si,0FFFF
 00479220    call        @CallDynaInst;TPersistent.sub_00479290
 00479225    test        eax,eax
>00479227    je          00479261
 00479229    mov         eax,dword ptr [ebp-4]
 0047922C    mov         si,0FFFF
 00479230    call        @CallDynaInst;TPersistent.sub_00479290
 00479235    lea         edx,[ebp-0C]
 00479238    mov         si,0FFFE
 0047923C    call        @CallDynaInst
 00479241    cmp         dword ptr [ebp-0C],0
>00479245    je          00479261
 00479247    push        dword ptr [ebp-0C]
 0047924A    push        47928C;'.'
 0047924F    mov         eax,dword ptr [ebp-8]
 00479252    push        dword ptr [eax]
 00479254    mov         eax,dword ptr [ebp-8]
 00479257    mov         edx,3
 0047925C    call        @LStrCatN
 00479261    xor         eax,eax
 00479263    pop         edx
 00479264    pop         ecx
 00479265    pop         ecx
 00479266    mov         dword ptr fs:[eax],edx
 00479269    push        47927E
 0047926E    lea         eax,[ebp-0C]
 00479271    call        @LStrClr
 00479276    ret
>00479277    jmp         @HandleFinally
>0047927C    jmp         0047926E
 0047927E    pop         esi
 0047927F    mov         esp,ebp
 00479281    pop         ebp
 00479282    ret
end;*}

//00479290
procedure TPersistent.sub_00479290;
begin
{*
 00479290    push        ebp
 00479291    mov         ebp,esp
 00479293    add         esp,0FFFFFFF8
 00479296    mov         dword ptr [ebp-4],eax
 00479299    xor         eax,eax
 0047929B    mov         dword ptr [ebp-8],eax
 0047929E    mov         eax,dword ptr [ebp-8]
 004792A1    pop         ecx
 004792A2    pop         ecx
 004792A3    pop         ebp
 004792A4    ret
*}
end;

//004792A8
procedure TInterfacedPersistent.AfterConstruction;
begin
{*
 004792A8    push        ebp
 004792A9    mov         ebp,esp
 004792AB    push        ecx
 004792AC    push        esi
 004792AD    mov         dword ptr [ebp-4],eax;{TObject.AfterConstruction}
 004792B0    mov         eax,dword ptr [ebp-4]
 004792B3    call        TCustomVariantType.AfterConstruction
 004792B8    mov         eax,dword ptr [ebp-4];{@CallDynaInst}
 004792BB    mov         si,0FFFF
 004792BF    call        @CallDynaInst
 004792C4    test        eax,eax
>004792C6    je          004792ED
 004792C8    mov         eax,dword ptr [ebp-4];{@CallDynaInst}
 004792CB    mov         si,0FFFF
 004792CF    call        @CallDynaInst
 004792D4    push        eax
 004792D5    mov         eax,dword ptr [ebp-4]
 004792D8    add         eax,4
 004792DB    call        @IntfClear
 004792E0    mov         ecx,eax
 004792E2    mov         edx,4792F4
 004792E7    pop         eax
 004792E8    call        TObject.GetInterface
 004792ED    pop         esi
 004792EE    pop         ecx
 004792EF    pop         ebp
 004792F0    ret
*}
end;

//00479304
{*function sub_00479304(?:?):?;
begin
 00479304    push        ebp
 00479305    mov         ebp,esp
 00479307    push        ecx
 00479308    mov         eax,dword ptr [ebp+8]
 0047930B    cmp         dword ptr [eax+4],0
>0047930F    je          00479322
 00479311    mov         eax,dword ptr [ebp+8]
 00479314    mov         eax,dword ptr [eax+4]
 00479317    push        eax
 00479318    mov         eax,dword ptr [eax]
 0047931A    call        dword ptr [eax+4]
 0047931D    mov         dword ptr [ebp-4],eax
>00479320    jmp         00479329
 00479322    mov         dword ptr [ebp-4],0FFFFFFFF
 00479329    mov         eax,dword ptr [ebp-4]
 0047932C    pop         ecx
 0047932D    pop         ebp
 0047932E    ret         4
end;*}

//00479334
{*function sub_00479334(?:?):?;
begin
 00479334    push        ebp
 00479335    mov         ebp,esp
 00479337    push        ecx
 00479338    mov         eax,dword ptr [ebp+8]
 0047933B    cmp         dword ptr [eax+4],0
>0047933F    je          00479352
 00479341    mov         eax,dword ptr [ebp+8]
 00479344    mov         eax,dword ptr [eax+4]
 00479347    push        eax
 00479348    mov         eax,dword ptr [eax]
 0047934A    call        dword ptr [eax+8]
 0047934D    mov         dword ptr [ebp-4],eax
>00479350    jmp         00479359
 00479352    mov         dword ptr [ebp-4],0FFFFFFFF
 00479359    mov         eax,dword ptr [ebp-4]
 0047935C    pop         ecx
 0047935D    pop         ebp
 0047935E    ret         4
end;*}

//00479364
{*function sub_00479364(?:?; ?:?):?;
begin
 00479364    push        ebp
 00479365    mov         ebp,esp
 00479367    push        ecx
 00479368    mov         ecx,dword ptr [ebp+10]
 0047936B    mov         edx,dword ptr [ebp+0C]
 0047936E    mov         eax,dword ptr [ebp+8]
 00479371    call        TObject.GetInterface
 00479376    test        al,al
>00479378    je          00479381
 0047937A    xor         eax,eax
 0047937C    mov         dword ptr [ebp-4],eax
>0047937F    jmp         00479388
 00479381    mov         dword ptr [ebp-4],80004002
 00479388    mov         eax,dword ptr [ebp-4]
 0047938B    pop         ecx
 0047938C    pop         ebp
 0047938D    ret         0C
end;*}

//00479390
{*procedure sub_00479390(?:?; ?:?);
begin
 00479390    push        ebp
 00479391    mov         ebp,esp
 00479393    add         esp,0FFFFFFF4
 00479396    push        esi
 00479397    mov         dword ptr [ebp-8],edx
 0047939A    mov         dword ptr [ebp-4],eax
 0047939D    mov         eax,dword ptr [ebp-8]
 004793A0    test        eax,eax
>004793A2    je          004793A8
 004793A4    xor         edx,edx
 004793A6    mov         dword ptr [eax],edx
 004793A8    mov         eax,dword ptr [ebp-8]
 004793AB    call        @IntfClear
 004793B0    cmp         dword ptr [ebp-4],0
>004793B4    je          0047942C
 004793B6    mov         eax,dword ptr [ebp-4]
 004793B9    mov         si,0FFFF
 004793BD    call        @CallDynaInst
 004793C2    mov         dword ptr [ebp-0C],eax
 004793C5    cmp         dword ptr [ebp-0C],0
>004793C9    jne         004793FF
 004793CB    mov         eax,dword ptr [ebp-4]
 004793CE    mov         edx,dword ptr ds:[47698C];TComponent
 004793D4    call        @IsClass
 004793D9    test        al,al
>004793DB    je          0047942C
 004793DD    mov         eax,dword ptr [ebp-4]
 004793E0    test        byte ptr [eax+1C],10
>004793E4    je          0047942C
 004793E6    mov         eax,dword ptr [ebp-8]
 004793E9    call        @IntfClear
 004793EE    push        eax
 004793EF    push        479434
 004793F4    mov         eax,dword ptr [ebp-4]
 004793F7    push        eax
 004793F8    mov         eax,dword ptr [eax]
 004793FA    call        dword ptr [eax+28]
>004793FD    jmp         0047942C
 004793FF    mov         eax,dword ptr [ebp-4]
 00479402    mov         edx,dword ptr ds:[47698C];TComponent
 00479408    call        @IsClass
 0047940D    test        al,al
>0047940F    je          0047941A
 00479411    mov         eax,dword ptr [ebp-4]
 00479414    test        byte ptr [eax+1C],10
>00479418    je          0047942C
 0047941A    mov         eax,dword ptr [ebp-8]
 0047941D    call        @IntfClear
 00479422    mov         edx,eax
 00479424    mov         eax,dword ptr [ebp-0C]
 00479427    call        00479390
 0047942C    pop         esi
 0047942D    mov         esp,ebp
 0047942F    pop         ebp
 00479430    ret
end;*}

//00479444
{*procedure sub_00479444(?:TCollection; ?:TCollectionItem; ?:?);
begin
 00479444    push        ebp
 00479445    mov         ebp,esp
 00479447    add         esp,0FFFFFFF0
 0047944A    push        ebx
 0047944B    xor         ebx,ebx
 0047944D    mov         dword ptr [ebp-10],ebx
 00479450    mov         byte ptr [ebp-9],cl
 00479453    mov         dword ptr [ebp-8],edx
 00479456    mov         dword ptr [ebp-4],eax
 00479459    xor         eax,eax
 0047945B    push        ebp
 0047945C    push        4794A3
 00479461    push        dword ptr fs:[eax]
 00479464    mov         dword ptr fs:[eax],esp
 00479467    lea         eax,[ebp-10]
 0047946A    call        @IntfClear
 0047946F    mov         edx,eax
 00479471    mov         eax,dword ptr [ebp-4]
 00479474    call        00479390
 00479479    cmp         dword ptr [ebp-10],0
>0047947D    je          0047948D
 0047947F    mov         cl,byte ptr [ebp-9]
 00479482    mov         edx,dword ptr [ebp-8]
 00479485    mov         eax,dword ptr [ebp-10]
 00479488    mov         ebx,dword ptr [eax]
 0047948A    call        dword ptr [ebx+10]
 0047948D    xor         eax,eax
 0047948F    pop         edx
 00479490    pop         ecx
 00479491    pop         ecx
 00479492    mov         dword ptr fs:[eax],edx
 00479495    push        4794AA
 0047949A    lea         eax,[ebp-10]
 0047949D    call        @IntfClear
 004794A2    ret
>004794A3    jmp         @HandleFinally
>004794A8    jmp         0047949A
 004794AA    pop         ebx
 004794AB    mov         esp,ebp
 004794AD    pop         ebp
 004794AE    ret
end;*}

//004794B0
{*constructor sub_004794B0(?:?);
begin
 004794B0    push        ebp
 004794B1    mov         ebp,esp
 004794B3    add         esp,0FFFFFFF4
 004794B6    test        dl,dl
>004794B8    je          004794C2
 004794BA    add         esp,0FFFFFFF0
 004794BD    call        @ClassCreate
 004794C2    mov         dword ptr [ebp-0C],ecx
 004794C5    mov         byte ptr [ebp-5],dl
 004794C8    mov         dword ptr [ebp-4],eax
 004794CB    xor         edx,edx
 004794CD    mov         eax,dword ptr [ebp-4]
 004794D0    call        TObject.Create
 004794D5    mov         eax,dword ptr [ebp-4]
 004794D8    mov         edx,dword ptr [ebp-0C]
 004794DB    mov         dword ptr [eax+4],edx
 004794DE    mov         eax,dword ptr [ebp-4]
 004794E1    mov         edx,dword ptr [ebp+8]
 004794E4    mov         dword ptr [eax+8],edx
 004794E7    mov         eax,dword ptr [ebp-4]
 004794EA    call        00479584
 004794EF    mov         eax,dword ptr [ebp-4]
 004794F2    cmp         byte ptr [ebp-5],0
>004794F6    je          00479507
 004794F8    call        @AfterConstruction
 004794FD    pop         dword ptr fs:[0]
 00479504    add         esp,0C
 00479507    mov         eax,dword ptr [ebp-4]
 0047950A    mov         esp,ebp
 0047950C    pop         ebp
 0047950D    ret         4
end;*}

//00479584
{*procedure sub_00479584(?:?);
begin
 00479584    push        ebp
 00479585    mov         ebp,esp
 00479587    push        ecx
 00479588    mov         dword ptr [ebp-4],eax
 0047958B    mov         eax,dword ptr [ebp-4]
 0047958E    cmp         dword ptr [eax+8],0
>00479592    je          004795A5
 00479594    mov         eax,dword ptr [ebp-4]
 00479597    mov         edx,dword ptr [eax+8]
 0047959A    mov         eax,dword ptr [ebp-4]
 0047959D    mov         eax,dword ptr [eax+4]
 004795A0    mov         ecx,dword ptr [eax]
 004795A2    call        dword ptr [ecx+8]
 004795A5    pop         ecx
 004795A6    pop         ebp
 004795A7    ret
end;*}

//004795A8
constructor sub_004795A8;
begin
{*
 004795A8    push        ebp
 004795A9    mov         ebp,esp
 004795AB    add         esp,0FFFFFFF4
 004795AE    test        dl,dl
>004795B0    je          004795BA
 004795B2    add         esp,0FFFFFFF0
 004795B5    call        @ClassCreate
 004795BA    mov         dword ptr [ebp-0C],ecx
 004795BD    mov         byte ptr [ebp-5],dl
 004795C0    mov         dword ptr [ebp-4],eax
 004795C3    mov         edx,dword ptr [ebp-0C]
 004795C6    mov         eax,dword ptr [ebp-4]
 004795C9    mov         ecx,dword ptr [eax]
 004795CB    call        dword ptr [ecx+10];TCollectionItem.sub_004797BC
 004795CE    mov         eax,dword ptr [ebp-4]
 004795D1    cmp         byte ptr [ebp-5],0
>004795D5    je          004795E6
 004795D7    call        @AfterConstruction
 004795DC    pop         dword ptr fs:[0]
 004795E3    add         esp,0C
 004795E6    mov         eax,dword ptr [ebp-4]
 004795E9    mov         esp,ebp
 004795EB    pop         ebp
 004795EC    ret
*}
end;

//004795F0
destructor TCollectionItem.Destroy;
begin
{*
 004795F0    push        ebp
 004795F1    mov         ebp,esp
 004795F3    add         esp,0FFFFFFF8
 004795F6    call        @BeforeDestruction
 004795FB    mov         byte ptr [ebp-5],dl
 004795FE    mov         dword ptr [ebp-4],eax
 00479601    xor         edx,edx
 00479603    mov         eax,dword ptr [ebp-4]
 00479606    mov         ecx,dword ptr [eax]
 00479608    call        dword ptr [ecx+10]
 0047960B    mov         dl,byte ptr [ebp-5]
 0047960E    and         dl,0FC
 00479611    mov         eax,dword ptr [ebp-4]
 00479614    call        TPersistent.Destroy
 00479619    cmp         byte ptr [ebp-5],0
>0047961D    jle         00479627
 0047961F    mov         eax,dword ptr [ebp-4]
 00479622    call        @ClassDestroy
 00479627    pop         ecx
 00479628    pop         ecx
 00479629    pop         ebp
 0047962A    ret
*}
end;

//0047962C
{*procedure sub_0047962C(?:TCollectionItem; ?:?);
begin
 0047962C    push        ebp
 0047962D    mov         ebp,esp
 0047962F    add         esp,0FFFFFFF4
 00479632    mov         byte ptr [ebp-5],dl
 00479635    mov         dword ptr [ebp-4],eax
 00479638    mov         eax,dword ptr [ebp-4]
 0047963B    cmp         dword ptr [eax+4],0
>0047963F    je          0047966E
 00479641    mov         eax,dword ptr [ebp-4]
 00479644    mov         eax,dword ptr [eax+4]
 00479647    cmp         dword ptr [eax+0C],0
>0047964B    jne         0047966E
 0047964D    cmp         byte ptr [ebp-5],0
>00479651    je          0047965A
 00479653    xor         eax,eax
 00479655    mov         dword ptr [ebp-0C],eax
>00479658    jmp         00479660
 0047965A    mov         eax,dword ptr [ebp-4]
 0047965D    mov         dword ptr [ebp-0C],eax
 00479660    mov         edx,dword ptr [ebp-0C]
 00479663    mov         eax,dword ptr [ebp-4]
 00479666    mov         eax,dword ptr [eax+4]
 00479669    mov         ecx,dword ptr [eax]
 0047966B    call        dword ptr [ecx+1C]
 0047966E    mov         esp,ebp
 00479670    pop         ebp
 00479671    ret
end;*}

//00479674
function TCollectionItem.GetIndex:Integer;
begin
{*
 00479674    push        ebp
 00479675    mov         ebp,esp
 00479677    add         esp,0FFFFFFF8
 0047967A    mov         dword ptr [ebp-4],eax
 0047967D    mov         eax,dword ptr [ebp-4]
 00479680    cmp         dword ptr [eax+4],0
>00479684    je          0047969C
 00479686    mov         eax,dword ptr [ebp-4]
 00479689    mov         eax,dword ptr [eax+4]
 0047968C    mov         eax,dword ptr [eax+8]
 0047968F    mov         edx,dword ptr [ebp-4]
 00479692    call        00478890
 00479697    mov         dword ptr [ebp-8],eax
>0047969A    jmp         004796A3
 0047969C    mov         dword ptr [ebp-8],0FFFFFFFF
 004796A3    mov         eax,dword ptr [ebp-8]
 004796A6    pop         ecx
 004796A7    pop         ecx
 004796A8    pop         ebp
 004796A9    ret
*}
end;

//004796AC
{*procedure sub_004796AC(?:?);
begin
 004796AC    push        ebp
 004796AD    mov         ebp,esp
 004796AF    add         esp,0FFFFFEF8
 004796B5    mov         dword ptr [ebp-8],edx
 004796B8    mov         dword ptr [ebp-4],eax
 004796BB    lea         edx,[ebp-108]
 004796C1    mov         eax,dword ptr [ebp-4]
 004796C4    mov         eax,dword ptr [eax]
 004796C6    call        TObject.ClassName
 004796CB    lea         edx,[ebp-108]
 004796D1    mov         eax,dword ptr [ebp-8]
 004796D4    call        @LStrFromString
 004796D9    mov         esp,ebp
 004796DB    pop         ebp
 004796DC    ret
end;*}

//004796E0
{*procedure TCollectionItem.sub_004791D8(?:?);
begin
 004796E0    push        ebp
 004796E1    mov         ebp,esp
 004796E3    add         esp,0FFFFFEE4
 004796E9    push        esi
 004796EA    xor         ecx,ecx
 004796EC    mov         dword ptr [ebp-1C],ecx
 004796EF    mov         dword ptr [ebp-8],edx
 004796F2    mov         dword ptr [ebp-4],eax
 004796F5    xor         eax,eax
 004796F7    push        ebp
 004796F8    push        479783
 004796FD    push        dword ptr fs:[eax]
 00479700    mov         dword ptr fs:[eax],esp
 00479703    mov         eax,dword ptr [ebp-4]
 00479706    cmp         dword ptr [eax+4],0;TCollectionItem.FCollection:TCollection
>0047970A    je          0047974F
 0047970C    mov         eax,dword ptr [ebp-8]
 0047970F    push        eax
 00479710    lea         edx,[ebp-1C]
 00479713    mov         eax,dword ptr [ebp-4]
 00479716    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 00479719    mov         si,0FFFE
 0047971D    call        @CallDynaInst;TCollection.sub_004791D8
 00479722    mov         eax,dword ptr [ebp-1C]
 00479725    mov         dword ptr [ebp-18],eax
 00479728    mov         byte ptr [ebp-14],0B
 0047972C    mov         eax,dword ptr [ebp-4]
 0047972F    call        TCollectionItem.GetIndex
 00479734    mov         dword ptr [ebp-10],eax
 00479737    mov         byte ptr [ebp-0C],0
 0047973B    lea         edx,[ebp-18]
 0047973E    mov         ecx,1
 00479743    mov         eax,479798;'%s[%d]'
 00479748    call        Format
>0047974D    jmp         0047976D
 0047974F    lea         edx,[ebp-11C]
 00479755    mov         eax,dword ptr [ebp-4]
 00479758    mov         eax,dword ptr [eax]
 0047975A    call        TObject.ClassName
 0047975F    lea         edx,[ebp-11C]
 00479765    mov         eax,dword ptr [ebp-8]
 00479768    call        @LStrFromString
 0047976D    xor         eax,eax
 0047976F    pop         edx
 00479770    pop         ecx
 00479771    pop         ecx
 00479772    mov         dword ptr fs:[eax],edx
 00479775    push        47978A
 0047977A    lea         eax,[ebp-1C]
 0047977D    call        @LStrClr
 00479782    ret
>00479783    jmp         @HandleFinally
>00479788    jmp         0047977A
 0047978A    pop         esi
 0047978B    mov         esp,ebp
 0047978D    pop         ebp
 0047978E    ret
end;*}

//004797A0
procedure TCollectionItem.sub_00479290;
begin
{*
 004797A0    push        ebp
 004797A1    mov         ebp,esp
 004797A3    add         esp,0FFFFFFF8
 004797A6    mov         dword ptr [ebp-4],eax
 004797A9    mov         eax,dword ptr [ebp-4]
 004797AC    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 004797AF    mov         dword ptr [ebp-8],eax
 004797B2    mov         eax,dword ptr [ebp-8]
 004797B5    pop         ecx
 004797B6    pop         ecx
 004797B7    pop         ebp
 004797B8    ret
*}
end;

//004797BC
{*procedure sub_004797BC(?:?);
begin
 004797BC    push        ebp
 004797BD    mov         ebp,esp
 004797BF    add         esp,0FFFFFFF8
 004797C2    mov         dword ptr [ebp-8],edx
 004797C5    mov         dword ptr [ebp-4],eax
 004797C8    mov         eax,dword ptr [ebp-4]
 004797CB    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 004797CE    cmp         eax,dword ptr [ebp-8]
>004797D1    je          004797FB
 004797D3    mov         eax,dword ptr [ebp-4]
 004797D6    cmp         dword ptr [eax+4],0;TCollectionItem.FCollection:TCollection
>004797DA    je          004797EA
 004797DC    mov         edx,dword ptr [ebp-4]
 004797DF    mov         eax,dword ptr [ebp-4]
 004797E2    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 004797E5    call        00479E64
 004797EA    cmp         dword ptr [ebp-8],0
>004797EE    je          004797FB
 004797F0    mov         edx,dword ptr [ebp-4]
 004797F3    mov         eax,dword ptr [ebp-8]
 004797F6    call        00479DD8
 004797FB    pop         ecx
 004797FC    pop         ecx
 004797FD    pop         ebp
 004797FE    ret
end;*}

//00479800
{*procedure sub_00479800(?:?);
begin
 00479800    push        ebp
 00479801    mov         ebp,esp
 00479803    add         esp,0FFFFFFF8
 00479806    mov         dword ptr [ebp-8],edx
 00479809    mov         dword ptr [ebp-4],eax
 0047980C    xor         edx,edx
 0047980E    mov         eax,dword ptr [ebp-4]
 00479811    call        0047962C
 00479816    pop         ecx
 00479817    pop         ecx
 00479818    pop         ebp
 00479819    ret
end;*}

//0047981C
{*procedure sub_0047981C(?:?);
begin
 0047981C    push        ebp
 0047981D    mov         ebp,esp
 0047981F    add         esp,0FFFFFFF4
 00479822    mov         dword ptr [ebp-8],edx
 00479825    mov         dword ptr [ebp-4],eax
 00479828    mov         eax,dword ptr [ebp-4]
 0047982B    call        TCollectionItem.GetIndex
 00479830    mov         dword ptr [ebp-0C],eax
 00479833    cmp         dword ptr [ebp-0C],0
>00479837    jl          0047985F
 00479839    mov         eax,dword ptr [ebp-0C]
 0047983C    cmp         eax,dword ptr [ebp-8]
>0047983F    je          0047985F
 00479841    mov         eax,dword ptr [ebp-4]
 00479844    mov         eax,dword ptr [eax+4];TCollectionItem.FCollection:TCollection
 00479847    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 0047984A    mov         ecx,dword ptr [ebp-8]
 0047984D    mov         edx,dword ptr [ebp-0C]
 00479850    call        004789B0
 00479855    mov         dl,1
 00479857    mov         eax,dword ptr [ebp-4]
 0047985A    call        0047962C
 0047985F    mov         esp,ebp
 00479861    pop         ebp
 00479862    ret
end;*}

//00479864
constructor TCollection.Create;
begin
{*
 00479864    push        ebp
 00479865    mov         ebp,esp
 00479867    add         esp,0FFFFFFF4
 0047986A    test        dl,dl
>0047986C    je          00479876
 0047986E    add         esp,0FFFFFFF0
 00479871    call        @ClassCreate
 00479876    mov         dword ptr [ebp-0C],ecx
 00479879    mov         byte ptr [ebp-5],dl
 0047987C    mov         dword ptr [ebp-4],eax
 0047987F    mov         eax,dword ptr [ebp-4]
 00479882    mov         edx,dword ptr [ebp-0C]
 00479885    mov         dword ptr [eax+4],edx
 00479888    mov         dl,1
 0047988A    mov         eax,[004759C0];TList
 0047988F    call        TObject.Create;TList.Create
 00479894    mov         edx,dword ptr [ebp-4]
 00479897    mov         dword ptr [edx+8],eax
 0047989A    xor         ecx,ecx
 0047989C    mov         edx,dword ptr [ebp-4]
 0047989F    mov         eax,dword ptr [ebp-4]
 004798A2    call        00479444
 004798A7    mov         eax,dword ptr [ebp-4]
 004798AA    cmp         byte ptr [ebp-5],0
>004798AE    je          004798BF
 004798B0    call        @AfterConstruction
 004798B5    pop         dword ptr fs:[0]
 004798BC    add         esp,0C
 004798BF    mov         eax,dword ptr [ebp-4]
 004798C2    mov         esp,ebp
 004798C4    pop         ebp
 004798C5    ret
*}
end;

//004798C8
destructor TCollection.Destroy;
begin
{*
 004798C8    push        ebp
 004798C9    mov         ebp,esp
 004798CB    add         esp,0FFFFFFF8
 004798CE    call        @BeforeDestruction
 004798D3    mov         byte ptr [ebp-5],dl
 004798D6    mov         dword ptr [ebp-4],eax
 004798D9    mov         eax,dword ptr [ebp-4]
 004798DC    mov         dword ptr [eax+0C],1
 004798E3    mov         eax,dword ptr [ebp-4]
 004798E6    cmp         dword ptr [eax+8],0
>004798EA    je          004798F4
 004798EC    mov         eax,dword ptr [ebp-4]
 004798EF    call        TCollection.Clear
 004798F4    mov         cl,1
 004798F6    mov         edx,dword ptr [ebp-4]
 004798F9    mov         eax,dword ptr [ebp-4]
 004798FC    call        00479444
 00479901    mov         eax,dword ptr [ebp-4]
 00479904    mov         eax,dword ptr [eax+8]
 00479907    call        TObject.Free
 0047990C    mov         dl,byte ptr [ebp-5]
 0047990F    and         dl,0FC
 00479912    mov         eax,dword ptr [ebp-4]
 00479915    call        TPersistent.Destroy
 0047991A    cmp         byte ptr [ebp-5],0
>0047991E    jle         00479928
 00479920    mov         eax,dword ptr [ebp-4]
 00479923    call        @ClassDestroy
 00479928    pop         ecx
 00479929    pop         ecx
 0047992A    pop         ebp
 0047992B    ret
*}
end;

//0047992C
{*function sub_0047992C(?:TCollection):?;
begin
 0047992C    push        ebp
 0047992D    mov         ebp,esp
 0047992F    add         esp,0FFFFFFF8
 00479932    mov         dword ptr [ebp-4],eax
 00479935    mov         ecx,dword ptr [ebp-4]
 00479938    mov         dl,1
 0047993A    mov         eax,dword ptr [ebp-4]
 0047993D    mov         eax,dword ptr [eax+4]
 00479940    call        dword ptr [eax+1C]
 00479943    mov         dword ptr [ebp-8],eax
 00479946    lea         edx,[ebp-8]
 00479949    mov         eax,dword ptr [ebp-4]
 0047994C    mov         ecx,dword ptr [eax]
 0047994E    call        dword ptr [ecx+0C]
 00479951    mov         eax,dword ptr [ebp-8]
 00479954    pop         ecx
 00479955    pop         ecx
 00479956    pop         ebp
 00479957    ret
end;*}

//00479958
{*procedure sub_00479958(?:?);
begin
 00479958    push        ebp
 00479959    mov         ebp,esp
 0047995B    add         esp,0FFFFFFF0
 0047995E    mov         dword ptr [ebp-8],edx
 00479961    mov         dword ptr [ebp-4],eax
 00479964    mov         eax,dword ptr [ebp-8]
 00479967    mov         edx,dword ptr ds:[475D80];TCollection
 0047996D    call        @IsClass
 00479972    test        al,al
>00479974    je          004799EB
 00479976    mov         eax,dword ptr [ebp-4]
 00479979    mov         edx,dword ptr [eax]
 0047997B    call        dword ptr [edx+20];TCollection.sub_004799FC
 0047997E    xor         eax,eax
 00479980    push        ebp
 00479981    push        4799E4
 00479986    push        dword ptr fs:[eax]
 00479989    mov         dword ptr fs:[eax],esp
 0047998C    mov         eax,dword ptr [ebp-4]
 0047998F    call        TCollection.Clear
 00479994    mov         eax,dword ptr [ebp-8]
 00479997    call        00479B60
 0047999C    dec         eax
 0047999D    test        eax,eax
>0047999F    jl          004799CE
 004799A1    inc         eax
 004799A2    mov         dword ptr [ebp-10],eax
 004799A5    mov         dword ptr [ebp-0C],0
 004799AC    mov         edx,dword ptr [ebp-0C]
 004799AF    mov         eax,dword ptr [ebp-8]
 004799B2    call        00479B7C
 004799B7    push        eax
 004799B8    mov         eax,dword ptr [ebp-4]
 004799BB    call        0047992C
 004799C0    pop         edx
 004799C1    mov         ecx,dword ptr [eax]
 004799C3    call        dword ptr [ecx+8]
 004799C6    inc         dword ptr [ebp-0C]
 004799C9    dec         dword ptr [ebp-10]
>004799CC    jne         004799AC
 004799CE    xor         eax,eax
 004799D0    pop         edx
 004799D1    pop         ecx
 004799D2    pop         ecx
 004799D3    mov         dword ptr fs:[eax],edx
 004799D6    push        4799F6
 004799DB    mov         eax,dword ptr [ebp-4]
 004799DE    mov         edx,dword ptr [eax]
 004799E0    call        dword ptr [edx+24];TCollection.sub_00479A94
 004799E3    ret
>004799E4    jmp         @HandleFinally
>004799E9    jmp         004799DB
 004799EB    mov         edx,dword ptr [ebp-8]
 004799EE    mov         eax,dword ptr [ebp-4]
 004799F1    call        004790A8
 004799F6    mov         esp,ebp
 004799F8    pop         ebp
 004799F9    ret
end;*}

//004799FC
procedure sub_004799FC;
begin
{*
 004799FC    push        ebp
 004799FD    mov         ebp,esp
 004799FF    push        ecx
 00479A00    mov         dword ptr [ebp-4],eax
 00479A03    mov         eax,dword ptr [ebp-4]
 00479A06    inc         dword ptr [eax+0C];TCollection.FUpdateCount:Integer
 00479A09    pop         ecx
 00479A0A    pop         ebp
 00479A0B    ret
*}
end;

//00479A0C
procedure sub_00479A0C(?:TCollection);
begin
{*
 00479A0C    push        ebp
 00479A0D    mov         ebp,esp
 00479A0F    push        ecx
 00479A10    mov         dword ptr [ebp-4],eax
 00479A13    mov         eax,dword ptr [ebp-4]
 00479A16    cmp         dword ptr [eax+0C],0
>00479A1A    jne         00479A26
 00479A1C    xor         edx,edx
 00479A1E    mov         eax,dword ptr [ebp-4]
 00479A21    mov         ecx,dword ptr [eax]
 00479A23    call        dword ptr [ecx+1C]
 00479A26    pop         ecx
 00479A27    pop         ebp
 00479A28    ret
*}
end;

//00479A2C
procedure TCollection.Clear;
begin
{*
 00479A2C    push        ebp
 00479A2D    mov         ebp,esp
 00479A2F    push        ecx
 00479A30    mov         dword ptr [ebp-4],eax
 00479A33    mov         eax,dword ptr [ebp-4]
 00479A36    mov         eax,dword ptr [eax+8]
 00479A39    cmp         dword ptr [eax+8],0
>00479A3D    jle         00479A90
 00479A3F    mov         eax,dword ptr [ebp-4]
 00479A42    mov         edx,dword ptr [eax]
 00479A44    call        dword ptr [edx+20]
 00479A47    xor         eax,eax
 00479A49    push        ebp
 00479A4A    push        479A89
 00479A4F    push        dword ptr fs:[eax]
 00479A52    mov         dword ptr fs:[eax],esp
>00479A55    jmp         00479A67
 00479A57    mov         eax,dword ptr [ebp-4]
 00479A5A    mov         eax,dword ptr [eax+8]
 00479A5D    call        0047898C
 00479A62    call        TObject.Free
 00479A67    mov         eax,dword ptr [ebp-4]
 00479A6A    mov         eax,dword ptr [eax+8]
 00479A6D    cmp         dword ptr [eax+8],0
>00479A71    jg          00479A57
 00479A73    xor         eax,eax
 00479A75    pop         edx
 00479A76    pop         ecx
 00479A77    pop         ecx
 00479A78    mov         dword ptr fs:[eax],edx
 00479A7B    push        479A90
 00479A80    mov         eax,dword ptr [ebp-4]
 00479A83    mov         edx,dword ptr [eax]
 00479A85    call        dword ptr [edx+24]
 00479A88    ret
>00479A89    jmp         @HandleFinally
>00479A8E    jmp         00479A80
 00479A90    pop         ecx
 00479A91    pop         ebp
 00479A92    ret
*}
end;

//00479A94
procedure sub_00479A94;
begin
{*
 00479A94    push        ebp
 00479A95    mov         ebp,esp
 00479A97    push        ecx
 00479A98    mov         dword ptr [ebp-4],eax
 00479A9B    mov         eax,dword ptr [ebp-4]
 00479A9E    dec         dword ptr [eax+0C];TCollection.FUpdateCount:Integer
 00479AA1    mov         eax,dword ptr [ebp-4]
 00479AA4    call        00479A0C
 00479AA9    pop         ecx
 00479AAA    pop         ebp
 00479AAB    ret
*}
end;

//00479AAC
{*function sub_00479AAC(?:TActionBars; ?:Integer):?;
begin
 00479AAC    push        ebp
 00479AAD    mov         ebp,esp
 00479AAF    add         esp,0FFFFFFEC
 00479AB2    mov         dword ptr [ebp-8],edx
 00479AB5    mov         dword ptr [ebp-4],eax
 00479AB8    mov         eax,dword ptr [ebp-4]
 00479ABB    mov         eax,dword ptr [eax+8]
 00479ABE    mov         eax,dword ptr [eax+8]
 00479AC1    dec         eax
 00479AC2    test        eax,eax
>00479AC4    jl          00479AF5
 00479AC6    inc         eax
 00479AC7    mov         dword ptr [ebp-14],eax
 00479ACA    mov         dword ptr [ebp-10],0
 00479AD1    mov         eax,dword ptr [ebp-4]
 00479AD4    mov         eax,dword ptr [eax+8]
 00479AD7    mov         edx,dword ptr [ebp-10]
 00479ADA    call        TList.Get
 00479ADF    mov         dword ptr [ebp-0C],eax
 00479AE2    mov         eax,dword ptr [ebp-0C]
 00479AE5    mov         eax,dword ptr [eax+8]
 00479AE8    cmp         eax,dword ptr [ebp-8]
>00479AEB    je          00479AFA
 00479AED    inc         dword ptr [ebp-10]
 00479AF0    dec         dword ptr [ebp-14]
>00479AF3    jne         00479AD1
 00479AF5    xor         eax,eax
 00479AF7    mov         dword ptr [ebp-0C],eax
 00479AFA    mov         eax,dword ptr [ebp-0C]
 00479AFD    mov         esp,ebp
 00479AFF    pop         ebp
 00479B00    ret
end;*}

//00479B04
procedure TCollection.sub_00479B04;
begin
{*
 00479B04    push        ebp
 00479B05    mov         ebp,esp
 00479B07    add         esp,0FFFFFFF8
 00479B0A    mov         dword ptr [ebp-4],eax
 00479B0D    xor         eax,eax
 00479B0F    mov         dword ptr [ebp-8],eax
 00479B12    mov         eax,dword ptr [ebp-8]
 00479B15    pop         ecx
 00479B16    pop         ecx
 00479B17    pop         ebp
 00479B18    ret
*}
end;

//00479B1C
{*procedure TCollection.sub_00479B1C(?:?; ?:?);
begin
 00479B1C    push        ebp
 00479B1D    mov         ebp,esp
 00479B1F    add         esp,0FFFFFFF4
 00479B22    mov         dword ptr [ebp-8],ecx
 00479B25    mov         dword ptr [ebp-0C],edx
 00479B28    mov         dword ptr [ebp-4],eax
 00479B2B    mov         eax,dword ptr [ebp-8]
 00479B2E    call        @LStrClr
 00479B33    mov         esp,ebp
 00479B35    pop         ebp
 00479B36    ret
end;*}

//00479B38
{*procedure TCollection.sub_00479B38(?:?; ?:?; ?:?);
begin
 00479B38    push        ebp
 00479B39    mov         ebp,esp
 00479B3B    add         esp,0FFFFFFF4
 00479B3E    mov         dword ptr [ebp-8],ecx
 00479B41    mov         dword ptr [ebp-0C],edx
 00479B44    mov         dword ptr [ebp-4],eax
 00479B47    mov         edx,dword ptr [ebp-8]
 00479B4A    mov         eax,dword ptr [ebp-4]
 00479B4D    call        00479B7C
 00479B52    mov         edx,dword ptr [ebp+8]
 00479B55    mov         ecx,dword ptr [eax]
 00479B57    call        dword ptr [ecx+0C]
 00479B5A    mov         esp,ebp
 00479B5C    pop         ebp
 00479B5D    ret         4
end;*}

//00479B60
{*function sub_00479B60(?:TCollection):?;
begin
 00479B60    push        ebp
 00479B61    mov         ebp,esp
 00479B63    add         esp,0FFFFFFF8
 00479B66    mov         dword ptr [ebp-4],eax
 00479B69    mov         eax,dword ptr [ebp-4]
 00479B6C    mov         eax,dword ptr [eax+8]
 00479B6F    mov         eax,dword ptr [eax+8]
 00479B72    mov         dword ptr [ebp-8],eax
 00479B75    mov         eax,dword ptr [ebp-8]
 00479B78    pop         ecx
 00479B79    pop         ecx
 00479B7A    pop         ebp
 00479B7B    ret
end;*}

//00479B7C
{*function sub_00479B7C(?:TCollection; ?:?):?;
begin
 00479B7C    push        ebp
 00479B7D    mov         ebp,esp
 00479B7F    add         esp,0FFFFFFF4
 00479B82    mov         dword ptr [ebp-8],edx
 00479B85    mov         dword ptr [ebp-4],eax
 00479B88    mov         edx,dword ptr [ebp-8]
 00479B8B    mov         eax,dword ptr [ebp-4]
 00479B8E    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 00479B91    call        TList.Get
 00479B96    mov         dword ptr [ebp-0C],eax
 00479B99    mov         eax,dword ptr [ebp-0C]
 00479B9C    mov         esp,ebp
 00479B9E    pop         ebp
 00479B9F    ret
end;*}

//00479BA0
{*procedure TCollection.sub_004791D8(?:?);
begin
 00479BA0    push        ebp
 00479BA1    mov         ebp,esp
 00479BA3    add         esp,0FFFFFEF0
 00479BA9    push        esi
 00479BAA    xor         ecx,ecx
 00479BAC    mov         dword ptr [ebp-0C],ecx
 00479BAF    mov         dword ptr [ebp-10],ecx
 00479BB2    mov         dword ptr [ebp-8],edx
 00479BB5    mov         dword ptr [ebp-4],eax
 00479BB8    xor         eax,eax
 00479BBA    push        ebp
 00479BBB    push        479C56
 00479BC0    push        dword ptr fs:[eax]
 00479BC3    mov         dword ptr fs:[eax],esp
 00479BC6    lea         edx,[ebp-110]
 00479BCC    mov         eax,dword ptr [ebp-4]
 00479BCF    mov         eax,dword ptr [eax]
 00479BD1    call        TObject.ClassName
 00479BD6    lea         edx,[ebp-110]
 00479BDC    mov         eax,dword ptr [ebp-8]
 00479BDF    call        @LStrFromString
 00479BE4    mov         eax,dword ptr [ebp-4]
 00479BE7    mov         si,0FFFF
 00479BEB    call        @CallDynaInst;TPersistent.sub_00479290
 00479BF0    test        eax,eax
>00479BF2    je          00479C3B
 00479BF4    mov         eax,dword ptr [ebp-4]
 00479BF7    mov         si,0FFFF
 00479BFB    call        @CallDynaInst;TPersistent.sub_00479290
 00479C00    lea         edx,[ebp-0C]
 00479C03    mov         si,0FFFE
 00479C07    call        @CallDynaInst
 00479C0C    cmp         dword ptr [ebp-0C],0
>00479C10    je          00479C3B
 00479C12    lea         edx,[ebp-10]
 00479C15    mov         eax,dword ptr [ebp-4]
 00479C18    call        00479C70
 00479C1D    cmp         dword ptr [ebp-10],0
>00479C21    je          00479C3B
 00479C23    push        dword ptr [ebp-0C]
 00479C26    push        479C6C;'.'
 00479C2B    push        dword ptr [ebp-10]
 00479C2E    mov         eax,dword ptr [ebp-8]
 00479C31    mov         edx,3
 00479C36    call        @LStrCatN
 00479C3B    xor         eax,eax
 00479C3D    pop         edx
 00479C3E    pop         ecx
 00479C3F    pop         ecx
 00479C40    mov         dword ptr fs:[eax],edx
 00479C43    push        479C5D
 00479C48    lea         eax,[ebp-10]
 00479C4B    mov         edx,2
 00479C50    call        @LStrArrayClr
 00479C55    ret
>00479C56    jmp         @HandleFinally
>00479C5B    jmp         00479C48
 00479C5D    pop         esi
 00479C5E    mov         esp,ebp
 00479C60    pop         ebp
 00479C61    ret
end;*}

//00479C70
{*procedure sub_00479C70(?:TCollection; ?:?);
begin
 00479C70    push        ebp
 00479C71    mov         ebp,esp
 00479C73    add         esp,0FFFFFFE0
 00479C76    push        esi
 00479C77    mov         dword ptr [ebp-8],edx
 00479C7A    mov         dword ptr [ebp-4],eax
 00479C7D    mov         eax,dword ptr [ebp-8]
 00479C80    mov         edx,dword ptr [ebp-4]
 00479C83    mov         edx,dword ptr [edx+14];TCollection.FPropName:String
 00479C86    call        @LStrAsg
 00479C8B    mov         eax,dword ptr [ebp-4]
 00479C8E    mov         si,0FFFF
 00479C92    call        @CallDynaInst;TPersistent.sub_00479290
 00479C97    mov         dword ptr [ebp-18],eax
 00479C9A    mov         eax,dword ptr [ebp-8]
 00479C9D    cmp         dword ptr [eax],0
>00479CA0    jne         00479DA7
 00479CA6    cmp         dword ptr [ebp-18],0
>00479CAA    je          00479DA7
 00479CB0    mov         eax,dword ptr [ebp-18]
 00479CB3    mov         eax,dword ptr [eax]
 00479CB5    call        00403A74
 00479CBA    test        eax,eax
>00479CBC    je          00479DA7
 00479CC2    mov         eax,dword ptr [ebp-18]
 00479CC5    mov         eax,dword ptr [eax]
 00479CC7    call        00403A74
 00479CCC    call        GetTypeData
 00479CD1    mov         dword ptr [ebp-14],eax
 00479CD4    cmp         dword ptr [ebp-14],0
>00479CD8    je          00479DA7
 00479CDE    mov         eax,dword ptr [ebp-14]
 00479CE1    cmp         word ptr [eax+8],0
>00479CE6    je          00479DA7
 00479CEC    mov         eax,dword ptr [ebp-14]
 00479CEF    movsx       eax,word ptr [eax+8]
 00479CF3    shl         eax,2
 00479CF6    call        @GetMem
 00479CFB    mov         dword ptr [ebp-10],eax
 00479CFE    xor         eax,eax
 00479D00    push        ebp
 00479D01    push        479D92
 00479D06    push        dword ptr fs:[eax]
 00479D09    mov         dword ptr fs:[eax],esp
 00479D0C    mov         eax,dword ptr [ebp-18]
 00479D0F    mov         eax,dword ptr [eax]
 00479D11    call        00403A74
 00479D16    mov         edx,dword ptr [ebp-10]
 00479D19    call        GetPropInfos
 00479D1E    mov         eax,dword ptr [ebp-14]
 00479D21    movsx       eax,word ptr [eax+8]
 00479D25    dec         eax
 00479D26    test        eax,eax
>00479D28    jl          00479D7C
 00479D2A    inc         eax
 00479D2B    mov         dword ptr [ebp-1C],eax
 00479D2E    mov         dword ptr [ebp-0C],0
 00479D35    mov         eax,dword ptr [ebp-10]
 00479D38    mov         edx,dword ptr [ebp-0C]
 00479D3B    mov         eax,dword ptr [eax+edx*4]
 00479D3E    mov         dword ptr [ebp-20],eax
 00479D41    mov         eax,dword ptr [ebp-20]
 00479D44    mov         eax,dword ptr [eax]
 00479D46    mov         eax,dword ptr [eax]
 00479D48    cmp         byte ptr [eax],7
>00479D4B    jne         00479D74
 00479D4D    mov         eax,dword ptr [ebp-10]
 00479D50    mov         edx,dword ptr [ebp-0C]
 00479D53    mov         edx,dword ptr [eax+edx*4]
 00479D56    mov         eax,dword ptr [ebp-18]
 00479D59    call        GetOrdProp
 00479D5E    cmp         eax,dword ptr [ebp-4]
>00479D61    jne         00479D74
 00479D63    mov         eax,dword ptr [ebp-4]
 00479D66    add         eax,14;TCollection.FPropName:String
 00479D69    mov         edx,dword ptr [ebp-20]
 00479D6C    add         edx,1A
 00479D6F    call        @LStrFromString
 00479D74    inc         dword ptr [ebp-0C]
 00479D77    dec         dword ptr [ebp-1C]
>00479D7A    jne         00479D35
 00479D7C    xor         eax,eax
 00479D7E    pop         edx
 00479D7F    pop         ecx
 00479D80    pop         ecx
 00479D81    mov         dword ptr fs:[eax],edx
 00479D84    push        479D99
 00479D89    mov         eax,dword ptr [ebp-10]
 00479D8C    call        @FreeMem
 00479D91    ret
>00479D92    jmp         @HandleFinally
>00479D97    jmp         00479D89
 00479D99    mov         eax,dword ptr [ebp-8]
 00479D9C    mov         edx,dword ptr [ebp-4]
 00479D9F    mov         edx,dword ptr [edx+14];TCollection.FPropName:String
 00479DA2    call        @LStrAsg
 00479DA7    pop         esi
 00479DA8    mov         esp,ebp
 00479DAA    pop         ebp
 00479DAB    ret
end;*}

//00479DAC
{*function sub_00479DAC(?:?; ?:Integer):?;
begin
 00479DAC    push        ebp
 00479DAD    mov         ebp,esp
 00479DAF    add         esp,0FFFFFFF4
 00479DB2    mov         dword ptr [ebp-8],edx
 00479DB5    mov         dword ptr [ebp-4],eax
 00479DB8    mov         eax,dword ptr [ebp-4]
 00479DBB    call        0047992C
 00479DC0    mov         dword ptr [ebp-0C],eax
 00479DC3    mov         edx,dword ptr [ebp-8]
 00479DC6    mov         eax,dword ptr [ebp-0C]
 00479DC9    mov         ecx,dword ptr [eax]
 00479DCB    call        dword ptr [ecx+14]
 00479DCE    mov         eax,dword ptr [ebp-0C]
 00479DD1    mov         esp,ebp
 00479DD3    pop         ebp
 00479DD4    ret
end;*}

//00479DD8
{*procedure sub_00479DD8(?:?; ?:TCollectionItem);
begin
 00479DD8    push        ebp
 00479DD9    mov         ebp,esp
 00479DDB    add         esp,0FFFFFFF8
 00479DDE    push        ebx
 00479DDF    mov         dword ptr [ebp-8],edx
 00479DE2    mov         dword ptr [ebp-4],eax
 00479DE5    mov         eax,dword ptr [ebp-8]
 00479DE8    mov         edx,dword ptr [ebp-4]
 00479DEB    mov         edx,dword ptr [edx+4]
 00479DEE    call        @IsClass
 00479DF3    test        al,al
>00479DF5    jne         00479E09
 00479DF7    mov         edx,dword ptr ds:[55B47C];^SInvalidProperty:TResStringRec
 00479DFD    xor         ecx,ecx
 00479DFF    mov         eax,[004759C0];TList
 00479E04    call        00478744
 00479E09    mov         edx,dword ptr [ebp-8]
 00479E0C    mov         eax,dword ptr [ebp-4]
 00479E0F    mov         eax,dword ptr [eax+8]
 00479E12    call        TList.Add
 00479E17    mov         eax,dword ptr [ebp-4]
 00479E1A    mov         edx,dword ptr [ebp-8]
 00479E1D    mov         dword ptr [edx+4],eax;TCollectionItem.FCollection:TCollection
 00479E20    mov         eax,dword ptr [ebp-4]
 00479E23    mov         eax,dword ptr [eax+10]
 00479E26    mov         edx,dword ptr [ebp-8]
 00479E29    mov         dword ptr [edx+8],eax;TCollectionItem.FID:Integer
 00479E2C    mov         eax,dword ptr [ebp-4]
 00479E2F    inc         dword ptr [eax+10]
 00479E32    mov         edx,dword ptr [ebp-8]
 00479E35    mov         eax,dword ptr [ebp-4]
 00479E38    mov         ecx,dword ptr [eax]
 00479E3A    call        dword ptr [ecx+18]
 00479E3D    xor         ecx,ecx
 00479E3F    mov         edx,dword ptr [ebp-8]
 00479E42    mov         eax,dword ptr [ebp-4]
 00479E45    mov         ebx,dword ptr [eax]
 00479E47    call        dword ptr [ebx+14]
 00479E4A    mov         eax,dword ptr [ebp-4]
 00479E4D    call        00479A0C
 00479E52    xor         ecx,ecx
 00479E54    mov         edx,dword ptr [ebp-8]
 00479E57    mov         eax,dword ptr [ebp-4]
 00479E5A    call        00479444
 00479E5F    pop         ebx
 00479E60    pop         ecx
 00479E61    pop         ecx
 00479E62    pop         ebp
 00479E63    ret
end;*}

//00479E64
procedure sub_00479E64(?:TCollection; ?:TCollectionItem);
begin
{*
 00479E64    push        ebp
 00479E65    mov         ebp,esp
 00479E67    add         esp,0FFFFFFF8
 00479E6A    push        ebx
 00479E6B    mov         dword ptr [ebp-8],edx
 00479E6E    mov         dword ptr [ebp-4],eax
 00479E71    mov         cl,1
 00479E73    mov         edx,dword ptr [ebp-8]
 00479E76    mov         eax,dword ptr [ebp-4]
 00479E79    mov         ebx,dword ptr [eax]
 00479E7B    call        dword ptr [ebx+14];TCollection.sub_00479F7C
 00479E7E    mov         eax,dword ptr [ebp-4]
 00479E81    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 00479E84    call        0047898C
 00479E89    cmp         eax,dword ptr [ebp-8]
>00479E8C    jne         00479EA5
 00479E8E    mov         eax,dword ptr [ebp-4]
 00479E91    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 00479E94    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 00479E97    dec         edx
 00479E98    mov         eax,dword ptr [ebp-4]
 00479E9B    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 00479E9E    call        00478668
>00479EA3    jmp         00479EB3
 00479EA5    mov         edx,dword ptr [ebp-8]
 00479EA8    mov         eax,dword ptr [ebp-4]
 00479EAB    mov         eax,dword ptr [eax+8];TCollection.FItems:TList
 00479EAE    call        00478AC4
 00479EB3    mov         eax,dword ptr [ebp-8]
 00479EB6    xor         edx,edx
 00479EB8    mov         dword ptr [eax+4],edx;TCollectionItem.FCollection:TCollection
 00479EBB    mov         cl,1
 00479EBD    mov         edx,dword ptr [ebp-8]
 00479EC0    mov         eax,dword ptr [ebp-4]
 00479EC3    call        00479444
 00479EC8    mov         eax,dword ptr [ebp-4]
 00479ECB    call        00479A0C
 00479ED0    pop         ebx
 00479ED1    pop         ecx
 00479ED2    pop         ecx
 00479ED3    pop         ebp
 00479ED4    ret
*}
end;

//00479ED8
{*procedure sub_00479ED8(?:?);
begin
 00479ED8    push        ebp
 00479ED9    mov         ebp,esp
 00479EDB    add         esp,0FFFFFFF8
 00479EDE    mov         dword ptr [ebp-8],edx
 00479EE1    mov         dword ptr [ebp-4],eax
 00479EE4    pop         ecx
 00479EE5    pop         ecx
 00479EE6    pop         ebp
 00479EE7    ret
end;*}

//00479EE8
{*procedure sub_00479EE8(?:?);
begin
 00479EE8    push        ebp
 00479EE9    mov         ebp,esp
 00479EEB    add         esp,0FFFFFFF8
 00479EEE    mov         dword ptr [ebp-8],edx
 00479EF1    mov         dword ptr [ebp-4],eax
 00479EF4    pop         ecx
 00479EF5    pop         ecx
 00479EF6    pop         ebp
 00479EF7    ret
end;*}

//00479EF8
procedure sub_00479EF8(?:TOwnedCollection; ?:Integer);
begin
{*
 00479EF8    push        ebp
 00479EF9    mov         ebp,esp
 00479EFB    add         esp,0FFFFFFF8
 00479EFE    push        ebx
 00479EFF    mov         dword ptr [ebp-8],edx
 00479F02    mov         dword ptr [ebp-4],eax
 00479F05    mov         edx,dword ptr [ebp-8]
 00479F08    mov         eax,dword ptr [ebp-4]
 00479F0B    mov         eax,dword ptr [eax+8]
 00479F0E    call        TList.Get
 00479F13    mov         edx,eax
 00479F15    mov         cl,2
 00479F17    mov         eax,dword ptr [ebp-4]
 00479F1A    mov         ebx,dword ptr [eax]
 00479F1C    call        dword ptr [ebx+14]
 00479F1F    mov         edx,dword ptr [ebp-8]
 00479F22    mov         eax,dword ptr [ebp-4]
 00479F25    mov         eax,dword ptr [eax+8]
 00479F28    call        TList.Get
 00479F2D    call        TObject.Free
 00479F32    pop         ebx
 00479F33    pop         ecx
 00479F34    pop         ecx
 00479F35    pop         ebp
 00479F36    ret
*}
end;

//00479F38
{*function sub_00479F38(?:TComboExItems):?;
begin
 00479F38    push        ebp
 00479F39    mov         ebp,esp
 00479F3B    add         esp,0FFFFFFF8
 00479F3E    push        esi
 00479F3F    mov         dword ptr [ebp-4],eax
 00479F42    mov         eax,dword ptr [ebp-4]
 00479F45    mov         si,0FFFF
 00479F49    call        @CallDynaInst
 00479F4E    mov         dword ptr [ebp-8],eax
 00479F51    mov         eax,dword ptr [ebp-8]
 00479F54    pop         esi
 00479F55    pop         ecx
 00479F56    pop         ecx
 00479F57    pop         ebp
 00479F58    ret
end;*}

//00479F5C
{*procedure sub_00479F5C(?:?);
begin
 00479F5C    push        ebp
 00479F5D    mov         ebp,esp
 00479F5F    add         esp,0FFFFFFF8
 00479F62    mov         dword ptr [ebp-8],edx
 00479F65    mov         dword ptr [ebp-4],eax
 00479F68    pop         ecx
 00479F69    pop         ecx
 00479F6A    pop         ebp
 00479F6B    ret
end;*}

//00479F6C
{*procedure sub_00479F6C(?:?);
begin
 00479F6C    push        ebp
 00479F6D    mov         ebp,esp
 00479F6F    add         esp,0FFFFFFF8
 00479F72    mov         dword ptr [ebp-8],edx
 00479F75    mov         dword ptr [ebp-4],eax
 00479F78    pop         ecx
 00479F79    pop         ecx
 00479F7A    pop         ebp
 00479F7B    ret
end;*}

//00479F7C
{*procedure sub_00479F7C(?:?; ?:?);
begin
 00479F7C    push        ebp
 00479F7D    mov         ebp,esp
 00479F7F    add         esp,0FFFFFFF4
 00479F82    mov         byte ptr [ebp-9],cl
 00479F85    mov         dword ptr [ebp-8],edx
 00479F88    mov         dword ptr [ebp-4],eax
 00479F8B    mov         al,byte ptr [ebp-9]
 00479F8E    sub         al,1
>00479F90    jb          00479F98
 00479F92    dec         al
>00479F94    je          00479FA5
>00479F96    jmp         00479FB0
 00479F98    lea         edx,[ebp-8]
 00479F9B    mov         eax,dword ptr [ebp-4]
 00479F9E    mov         ecx,dword ptr [eax]
 00479FA0    call        dword ptr [ecx+0C];TCollection.sub_00479F5C
>00479FA3    jmp         00479FB0
 00479FA5    mov         edx,dword ptr [ebp-8]
 00479FA8    mov         eax,dword ptr [ebp-4]
 00479FAB    mov         ecx,dword ptr [eax]
 00479FAD    call        dword ptr [ecx+10];TCollection.sub_00479F6C
 00479FB0    mov         esp,ebp
 00479FB2    pop         ebp
 00479FB3    ret
end;*}

//00479FB4
{*constructor TWorkAreas.Create(?:?);
begin
 00479FB4    push        ebp
 00479FB5    mov         ebp,esp
 00479FB7    add         esp,0FFFFFFF4
 00479FBA    test        dl,dl
>00479FBC    je          00479FC6
 00479FBE    add         esp,0FFFFFFF0
 00479FC1    call        @ClassCreate
 00479FC6    mov         dword ptr [ebp-0C],ecx
 00479FC9    mov         byte ptr [ebp-5],dl
 00479FCC    mov         dword ptr [ebp-4],eax
 00479FCF    mov         eax,dword ptr [ebp-4]
 00479FD2    mov         edx,dword ptr [ebp-0C]
 00479FD5    mov         dword ptr [eax+18],edx
 00479FD8    mov         ecx,dword ptr [ebp+8]
 00479FDB    xor         edx,edx
 00479FDD    mov         eax,dword ptr [ebp-4]
 00479FE0    call        TCollection.Create
 00479FE5    mov         eax,dword ptr [ebp-4]
 00479FE8    cmp         byte ptr [ebp-5],0
>00479FEC    je          00479FFD
 00479FEE    call        @AfterConstruction
 00479FF3    pop         dword ptr fs:[0]
 00479FFA    add         esp,0C
 00479FFD    mov         eax,dword ptr [ebp-4]
 0047A000    mov         esp,ebp
 0047A002    pop         ebp
 0047A003    ret         4
end;*}

//0047A008
procedure TOwnedCollection.sub_00479290;
begin
{*
 0047A008    push        ebp
 0047A009    mov         ebp,esp
 0047A00B    add         esp,0FFFFFFF8
 0047A00E    mov         dword ptr [ebp-4],eax
 0047A011    mov         eax,dword ptr [ebp-4]
 0047A014    mov         eax,dword ptr [eax+18];TOwnedCollection...FOwner:TPersistent
 0047A017    mov         dword ptr [ebp-8],eax
 0047A01A    mov         eax,dword ptr [ebp-8]
 0047A01D    pop         ecx
 0047A01E    pop         ecx
 0047A01F    pop         ebp
 0047A020    ret
*}
end;

//0047A024
destructor TStrings.Destroy;
begin
{*
 0047A024    push        ebp
 0047A025    mov         ebp,esp
 0047A027    add         esp,0FFFFFFF8
 0047A02A    call        @BeforeDestruction
 0047A02F    mov         byte ptr [ebp-5],dl
 0047A032    mov         dword ptr [ebp-4],eax
 0047A035    xor         edx,edx
 0047A037    mov         eax,dword ptr [ebp-4]
 0047A03A    call        0047AE4C
 0047A03F    mov         dl,byte ptr [ebp-5]
 0047A042    and         dl,0FC
 0047A045    mov         eax,dword ptr [ebp-4]
 0047A048    call        TPersistent.Destroy
 0047A04D    cmp         byte ptr [ebp-5],0
>0047A051    jle         0047A05B
 0047A053    mov         eax,dword ptr [ebp-4]
 0047A056    call        @ClassDestroy
 0047A05B    pop         ecx
 0047A05C    pop         ecx
 0047A05D    pop         ebp
 0047A05E    ret
*}
end;

//0047A060
{*function sub_0047A060(?:?):?;
begin
 0047A060    push        ebp
 0047A061    mov         ebp,esp
 0047A063    add         esp,0FFFFFFF4
 0047A066    push        ebx
 0047A067    mov         dword ptr [ebp-8],edx
 0047A06A    mov         dword ptr [ebp-4],eax
 0047A06D    mov         eax,dword ptr [ebp-4]
 0047A070    mov         edx,dword ptr [eax]
 0047A072    call        dword ptr [edx+14];@AbstractError
 0047A075    mov         dword ptr [ebp-0C],eax
 0047A078    mov         ecx,dword ptr [ebp-8]
 0047A07B    mov         edx,dword ptr [ebp-0C]
 0047A07E    mov         eax,dword ptr [ebp-4]
 0047A081    mov         ebx,dword ptr [eax]
 0047A083    call        dword ptr [ebx+60];@AbstractError
 0047A086    mov         eax,dword ptr [ebp-0C]
 0047A089    pop         ebx
 0047A08A    mov         esp,ebp
 0047A08C    pop         ebp
 0047A08D    ret
end;*}

//0047A090
{*function sub_0047A090(?:?; ?:?):?;
begin
 0047A090    push        ebp
 0047A091    mov         ebp,esp
 0047A093    add         esp,0FFFFFFF0
 0047A096    push        ebx
 0047A097    mov         dword ptr [ebp-0C],ecx
 0047A09A    mov         dword ptr [ebp-8],edx
 0047A09D    mov         dword ptr [ebp-4],eax
 0047A0A0    mov         edx,dword ptr [ebp-8]
 0047A0A3    mov         eax,dword ptr [ebp-4]
 0047A0A6    mov         ecx,dword ptr [eax]
 0047A0A8    call        dword ptr [ecx+38];TStrings.sub_0047A060
 0047A0AB    mov         dword ptr [ebp-10],eax
 0047A0AE    mov         ecx,dword ptr [ebp-0C]
 0047A0B1    mov         edx,dword ptr [ebp-10]
 0047A0B4    mov         eax,dword ptr [ebp-4]
 0047A0B7    mov         ebx,dword ptr [eax]
 0047A0B9    call        dword ptr [ebx+24];TStrings.sub_0047ACB8
 0047A0BC    mov         eax,dword ptr [ebp-10]
 0047A0BF    pop         ebx
 0047A0C0    mov         esp,ebp
 0047A0C2    pop         ebp
 0047A0C3    ret
end;*}

//0047A0C4
{*procedure sub_0047A0C4(?:?);
begin
 0047A0C4    push        ebp
 0047A0C5    mov         ebp,esp
 0047A0C7    add         esp,0FFFFFFEC
 0047A0CA    push        ebx
 0047A0CB    xor         ecx,ecx
 0047A0CD    mov         dword ptr [ebp-14],ecx
 0047A0D0    mov         dword ptr [ebp-8],edx
 0047A0D3    mov         dword ptr [ebp-4],eax
 0047A0D6    xor         eax,eax
 0047A0D8    push        ebp
 0047A0D9    push        47A175
 0047A0DE    push        dword ptr fs:[eax]
 0047A0E1    mov         dword ptr fs:[eax],esp
 0047A0E4    mov         eax,dword ptr [ebp-4]
 0047A0E7    call        TStrings.BeginUpdate
 0047A0EC    xor         eax,eax
 0047A0EE    push        ebp
 0047A0EF    push        47A158
 0047A0F4    push        dword ptr fs:[eax]
 0047A0F7    mov         dword ptr fs:[eax],esp
 0047A0FA    mov         eax,dword ptr [ebp-8]
 0047A0FD    mov         edx,dword ptr [eax]
 0047A0FF    call        dword ptr [edx+14]
 0047A102    dec         eax
 0047A103    test        eax,eax
>0047A105    jl          0047A142
 0047A107    inc         eax
 0047A108    mov         dword ptr [ebp-10],eax
 0047A10B    mov         dword ptr [ebp-0C],0
 0047A112    lea         ecx,[ebp-14]
 0047A115    mov         edx,dword ptr [ebp-0C]
 0047A118    mov         eax,dword ptr [ebp-8]
 0047A11B    mov         ebx,dword ptr [eax]
 0047A11D    call        dword ptr [ebx+0C]
 0047A120    mov         eax,dword ptr [ebp-14]
 0047A123    push        eax
 0047A124    mov         edx,dword ptr [ebp-0C]
 0047A127    mov         eax,dword ptr [ebp-8]
 0047A12A    mov         ecx,dword ptr [eax]
 0047A12C    call        dword ptr [ecx+18]
 0047A12F    mov         ecx,eax
 0047A131    mov         eax,dword ptr [ebp-4]
 0047A134    pop         edx
 0047A135    mov         ebx,dword ptr [eax]
 0047A137    call        dword ptr [ebx+3C];TStrings.sub_0047A090
 0047A13A    inc         dword ptr [ebp-0C]
 0047A13D    dec         dword ptr [ebp-10]
>0047A140    jne         0047A112
 0047A142    xor         eax,eax
 0047A144    pop         edx
 0047A145    pop         ecx
 0047A146    pop         ecx
 0047A147    mov         dword ptr fs:[eax],edx
 0047A14A    push        47A15F
 0047A14F    mov         eax,dword ptr [ebp-4]
 0047A152    call        TStrings.EndUpdate
 0047A157    ret
>0047A158    jmp         @HandleFinally
>0047A15D    jmp         0047A14F
 0047A15F    xor         eax,eax
 0047A161    pop         edx
 0047A162    pop         ecx
 0047A163    pop         ecx
 0047A164    mov         dword ptr fs:[eax],edx
 0047A167    push        47A17C
 0047A16C    lea         eax,[ebp-14]
 0047A16F    call        @LStrClr
 0047A174    ret
>0047A175    jmp         @HandleFinally
>0047A17A    jmp         0047A16C
 0047A17C    pop         ebx
 0047A17D    mov         esp,ebp
 0047A17F    pop         ebp
 0047A180    ret
end;*}

//0047A184
{*procedure sub_0047A184(?:?);
begin
 0047A184    push        ebp
 0047A185    mov         ebp,esp
 0047A187    add         esp,0FFFFFFF8
 0047A18A    mov         dword ptr [ebp-8],edx
 0047A18D    mov         dword ptr [ebp-4],eax
 0047A190    mov         eax,dword ptr [ebp-8]
 0047A193    mov         edx,dword ptr ds:[475F48];TStrings
 0047A199    call        @IsClass
 0047A19E    test        al,al
>0047A1A0    je          0047A218
 0047A1A2    mov         eax,dword ptr [ebp-4]
 0047A1A5    call        TStrings.BeginUpdate
 0047A1AA    xor         eax,eax
 0047A1AC    push        ebp
 0047A1AD    push        47A211
 0047A1B2    push        dword ptr fs:[eax]
 0047A1B5    mov         dword ptr fs:[eax],esp
 0047A1B8    mov         eax,dword ptr [ebp-4]
 0047A1BB    mov         edx,dword ptr [eax]
 0047A1BD    call        dword ptr [edx+44];TStrings.Clear
 0047A1C0    mov         eax,dword ptr [ebp-8]
 0047A1C3    mov         al,byte ptr [eax+4]
 0047A1C6    mov         edx,dword ptr [ebp-4]
 0047A1C9    mov         byte ptr [edx+4],al;TStrings.FDefined:TStringsDefined
 0047A1CC    mov         eax,dword ptr [ebp-8]
 0047A1CF    mov         al,byte ptr [eax+7]
 0047A1D2    mov         edx,dword ptr [ebp-4]
 0047A1D5    mov         byte ptr [edx+7],al;TStrings.FNameValueSeparator:Char
 0047A1D8    mov         eax,dword ptr [ebp-8]
 0047A1DB    mov         al,byte ptr [eax+6]
 0047A1DE    mov         edx,dword ptr [ebp-4]
 0047A1E1    mov         byte ptr [edx+6],al;TStrings.FQuoteChar:Char
 0047A1E4    mov         eax,dword ptr [ebp-8]
 0047A1E7    mov         al,byte ptr [eax+5]
 0047A1EA    mov         edx,dword ptr [ebp-4]
 0047A1ED    mov         byte ptr [edx+5],al;TStrings.FDelimiter:Char
 0047A1F0    mov         edx,dword ptr [ebp-8]
 0047A1F3    mov         eax,dword ptr [ebp-4]
 0047A1F6    mov         ecx,dword ptr [eax]
 0047A1F8    call        dword ptr [ecx+40];TStrings.sub_0047A0C4
 0047A1FB    xor         eax,eax
 0047A1FD    pop         edx
 0047A1FE    pop         ecx
 0047A1FF    pop         ecx
 0047A200    mov         dword ptr fs:[eax],edx
 0047A203    push        47A223
 0047A208    mov         eax,dword ptr [ebp-4]
 0047A20B    call        TStrings.EndUpdate
 0047A210    ret
>0047A211    jmp         @HandleFinally
>0047A216    jmp         0047A208
 0047A218    mov         edx,dword ptr [ebp-8]
 0047A21B    mov         eax,dword ptr [ebp-4]
 0047A21E    call        004790A8
 0047A223    pop         ecx
 0047A224    pop         ecx
 0047A225    pop         ebp
 0047A226    ret
end;*}

//0047A228
procedure TStrings.BeginUpdate;
begin
{*
 0047A228    push        ebp
 0047A229    mov         ebp,esp
 0047A22B    push        ecx
 0047A22C    mov         dword ptr [ebp-4],eax
 0047A22F    mov         eax,dword ptr [ebp-4]
 0047A232    cmp         dword ptr [eax+8],0
>0047A236    jne         0047A242
 0047A238    mov         dl,1
 0047A23A    mov         eax,dword ptr [ebp-4]
 0047A23D    mov         ecx,dword ptr [eax]
 0047A23F    call        dword ptr [ecx+30]
 0047A242    mov         eax,dword ptr [ebp-4]
 0047A245    inc         dword ptr [eax+8]
 0047A248    pop         ecx
 0047A249    pop         ebp
 0047A24A    ret
*}
end;

//0047A24C
function DoWrite:Boolean;
begin
{*
 0047A24C    push        ebp
 0047A24D    mov         ebp,esp
 0047A24F    push        ecx
 0047A250    mov         eax,dword ptr [ebp+8]
 0047A253    mov         eax,dword ptr [eax-4]
 0047A256    cmp         dword ptr [eax+20],0
>0047A25A    je          0047A293
 0047A25C    mov         byte ptr [ebp-1],1
 0047A260    mov         eax,dword ptr [ebp+8]
 0047A263    mov         eax,dword ptr [eax-4]
 0047A266    mov         eax,dword ptr [eax+20]
 0047A269    mov         edx,dword ptr ds:[475F48];TStrings
 0047A26F    call        @IsClass
 0047A274    test        al,al
>0047A276    je          0047A2A4
 0047A278    mov         eax,dword ptr [ebp+8]
 0047A27B    mov         eax,dword ptr [eax-4]
 0047A27E    mov         edx,dword ptr [eax+20]
 0047A281    mov         eax,dword ptr [ebp+8]
 0047A284    mov         eax,dword ptr [eax-8]
 0047A287    call        0047A31C
 0047A28C    xor         al,1
 0047A28E    mov         byte ptr [ebp-1],al
>0047A291    jmp         0047A2A4
 0047A293    mov         eax,dword ptr [ebp+8]
 0047A296    mov         eax,dword ptr [eax-8]
 0047A299    mov         edx,dword ptr [eax]
 0047A29B    call        dword ptr [edx+14]
 0047A29E    test        eax,eax
 0047A2A0    setg        byte ptr [ebp-1]
 0047A2A4    mov         al,byte ptr [ebp-1]
 0047A2A7    pop         ecx
 0047A2A8    pop         ebp
 0047A2A9    ret
*}
end;

//0047A2AC
procedure TStrings.DefineProperties(Filer:TFiler);
begin
{*
 0047A2AC    push        ebp
 0047A2AD    mov         ebp,esp
 0047A2AF    add         esp,0FFFFFFF8
 0047A2B2    push        ebx
 0047A2B3    mov         dword ptr [ebp-4],edx
 0047A2B6    mov         dword ptr [ebp-8],eax
 0047A2B9    mov         eax,dword ptr [ebp-8]
 0047A2BC    push        eax
 0047A2BD    push        47ACCC;TStrings.ReadData
 0047A2C2    mov         eax,dword ptr [ebp-8]
 0047A2C5    push        eax
 0047A2C6    push        47AFE0;TStrings.WriteData
 0047A2CB    push        ebp
 0047A2CC    call        DoWrite
 0047A2D1    pop         ecx
 0047A2D2    mov         ecx,eax
 0047A2D4    mov         edx,47A2F0;'Strings'
 0047A2D9    mov         eax,dword ptr [ebp-4]
 0047A2DC    mov         ebx,dword ptr [eax]
 0047A2DE    call        dword ptr [ebx+4]
 0047A2E1    pop         ebx
 0047A2E2    pop         ecx
 0047A2E3    pop         ecx
 0047A2E4    pop         ebp
 0047A2E5    ret
*}
end;

//0047A2F8
procedure TStrings.EndUpdate;
begin
{*
 0047A2F8    push        ebp
 0047A2F9    mov         ebp,esp
 0047A2FB    push        ecx
 0047A2FC    mov         dword ptr [ebp-4],eax
 0047A2FF    mov         eax,dword ptr [ebp-4]
 0047A302    dec         dword ptr [eax+8]
 0047A305    mov         eax,dword ptr [ebp-4]
 0047A308    cmp         dword ptr [eax+8],0
>0047A30C    jne         0047A318
 0047A30E    xor         edx,edx
 0047A310    mov         eax,dword ptr [ebp-4]
 0047A313    mov         ecx,dword ptr [eax]
 0047A315    call        dword ptr [ecx+30]
 0047A318    pop         ecx
 0047A319    pop         ebp
 0047A31A    ret
*}
end;

//0047A31C
{*function sub_0047A31C(?:?; ?:?):?;
begin
 0047A31C    push        ebp
 0047A31D    mov         ebp,esp
 0047A31F    add         esp,0FFFFFFE0
 0047A322    push        ebx
 0047A323    xor         ecx,ecx
 0047A325    mov         dword ptr [ebp-1C],ecx
 0047A328    mov         dword ptr [ebp-20],ecx
 0047A32B    mov         dword ptr [ebp-8],edx
 0047A32E    mov         dword ptr [ebp-4],eax
 0047A331    xor         eax,eax
 0047A333    push        ebp
 0047A334    push        47A3C0
 0047A339    push        dword ptr fs:[eax]
 0047A33C    mov         dword ptr fs:[eax],esp
 0047A33F    mov         byte ptr [ebp-9],0
 0047A343    mov         eax,dword ptr [ebp-4]
 0047A346    mov         edx,dword ptr [eax]
 0047A348    call        dword ptr [edx+14]
 0047A34B    mov         dword ptr [ebp-14],eax
 0047A34E    mov         eax,dword ptr [ebp-8]
 0047A351    mov         edx,dword ptr [eax]
 0047A353    call        dword ptr [edx+14]
 0047A356    cmp         eax,dword ptr [ebp-14]
>0047A359    jne         0047A3A5
 0047A35B    mov         eax,dword ptr [ebp-14]
 0047A35E    dec         eax
 0047A35F    test        eax,eax
>0047A361    jl          0047A3A1
 0047A363    inc         eax
 0047A364    mov         dword ptr [ebp-18],eax
 0047A367    mov         dword ptr [ebp-10],0
 0047A36E    lea         ecx,[ebp-1C]
 0047A371    mov         edx,dword ptr [ebp-10]
 0047A374    mov         eax,dword ptr [ebp-4]
 0047A377    mov         ebx,dword ptr [eax]
 0047A379    call        dword ptr [ebx+0C]
 0047A37C    mov         eax,dword ptr [ebp-1C]
 0047A37F    push        eax
 0047A380    lea         ecx,[ebp-20]
 0047A383    mov         edx,dword ptr [ebp-10]
 0047A386    mov         eax,dword ptr [ebp-8]
 0047A389    mov         ebx,dword ptr [eax]
 0047A38B    call        dword ptr [ebx+0C]
 0047A38E    mov         edx,dword ptr [ebp-20]
 0047A391    pop         eax
 0047A392    call        @LStrCmp
>0047A397    jne         0047A3A5
 0047A399    inc         dword ptr [ebp-10]
 0047A39C    dec         dword ptr [ebp-18]
>0047A39F    jne         0047A36E
 0047A3A1    mov         byte ptr [ebp-9],1
 0047A3A5    xor         eax,eax
 0047A3A7    pop         edx
 0047A3A8    pop         ecx
 0047A3A9    pop         ecx
 0047A3AA    mov         dword ptr fs:[eax],edx
 0047A3AD    push        47A3C7
 0047A3B2    lea         eax,[ebp-20]
 0047A3B5    mov         edx,2
 0047A3BA    call        @LStrArrayClr
 0047A3BF    ret
>0047A3C0    jmp         @HandleFinally
>0047A3C5    jmp         0047A3B2
 0047A3C7    mov         al,byte ptr [ebp-9]
 0047A3CA    pop         ebx
 0047A3CB    mov         esp,ebp
 0047A3CD    pop         ebp
 0047A3CE    ret
end;*}

//0047A3D0
{*function sub_0047A3D0(?:?):?;
begin
 0047A3D0    push        ebp
 0047A3D1    mov         ebp,esp
 0047A3D3    mov         eax,dword ptr [ebp+4]
 0047A3D6    pop         ebp
 0047A3D7    ret
end;*}

//0047A3D8
procedure sub_0047A3D8;
begin
{*
 0047A3D8    push        ebp
 0047A3D9    mov         ebp,esp
 0047A3DB    add         esp,0FFFFFFEC
 0047A3DE    mov         dword ptr [ebp-0C],ecx
 0047A3E1    mov         dword ptr [ebp-8],edx
 0047A3E4    mov         dword ptr [ebp-4],eax
 0047A3E7    push        ebp
 0047A3E8    call        0047A3D0
 0047A3ED    pop         ecx
 0047A3EE    push        eax
 0047A3EF    mov         eax,dword ptr [ebp-0C]
 0047A3F2    mov         dword ptr [ebp-14],eax
 0047A3F5    mov         byte ptr [ebp-10],0
 0047A3F9    lea         eax,[ebp-14]
 0047A3FC    push        eax
 0047A3FD    push        0
 0047A3FF    mov         ecx,dword ptr [ebp-8]
 0047A402    mov         dl,1
 0047A404    mov         eax,[00475848];EStringListError
 0047A409    call        Exception.CreateFmt;EStringListError.Create
>0047A40E    jmp         @RaiseExcept
*}
end;

//0047A418
{*procedure sub_0047A418(?:TStringList; ?:TResStringRec; ?:?);
begin
 0047A418    push        ebp
 0047A419    mov         ebp,esp
 0047A41B    add         esp,0FFFFFFF0
 0047A41E    push        ebx
 0047A41F    xor         ebx,ebx
 0047A421    mov         dword ptr [ebp-10],ebx
 0047A424    mov         dword ptr [ebp-0C],ecx
 0047A427    mov         dword ptr [ebp-8],edx
 0047A42A    mov         dword ptr [ebp-4],eax
 0047A42D    xor         eax,eax
 0047A42F    push        ebp
 0047A430    push        47A46A
 0047A435    push        dword ptr fs:[eax]
 0047A438    mov         dword ptr fs:[eax],esp
 0047A43B    lea         edx,[ebp-10]
 0047A43E    mov         eax,dword ptr [ebp-8]
 0047A441    call        LoadResString;'I/O error %d'
 0047A446    mov         edx,dword ptr [ebp-10]
 0047A449    mov         ecx,dword ptr [ebp-0C]
 0047A44C    mov         eax,dword ptr [ebp-4]
 0047A44F    call        0047A3D8
 0047A454    xor         eax,eax
 0047A456    pop         edx
 0047A457    pop         ecx
 0047A458    pop         ecx
 0047A459    mov         dword ptr fs:[eax],edx
 0047A45C    push        47A471
 0047A461    lea         eax,[ebp-10]
 0047A464    call        @LStrClr
 0047A469    ret
>0047A46A    jmp         @HandleFinally
>0047A46F    jmp         0047A461
 0047A471    pop         ebx
 0047A472    mov         esp,ebp
 0047A474    pop         ebp
 0047A475    ret
end;*}

//0047A478
{*procedure sub_0047A478(?:?; ?:?);
begin
 0047A478    push        ebp
 0047A479    mov         ebp,esp
 0047A47B    add         esp,0FFFFFFE8
 0047A47E    push        ebx
 0047A47F    xor         ebx,ebx
 0047A481    mov         dword ptr [ebp-18],ebx
 0047A484    mov         dword ptr [ebp-14],ebx
 0047A487    mov         dword ptr [ebp-0C],ecx
 0047A48A    mov         dword ptr [ebp-8],edx
 0047A48D    mov         dword ptr [ebp-4],eax
 0047A490    xor         eax,eax
 0047A492    push        ebp
 0047A493    push        47A558
 0047A498    push        dword ptr fs:[eax]
 0047A49B    mov         dword ptr fs:[eax],esp
 0047A49E    mov         eax,dword ptr [ebp-4]
 0047A4A1    call        TStrings.BeginUpdate
 0047A4A6    xor         eax,eax
 0047A4A8    push        ebp
 0047A4A9    push        47A536
 0047A4AE    push        dword ptr fs:[eax]
 0047A4B1    mov         dword ptr fs:[eax],esp
 0047A4B4    lea         ecx,[ebp-14]
 0047A4B7    mov         edx,dword ptr [ebp-8]
 0047A4BA    mov         eax,dword ptr [ebp-4]
 0047A4BD    mov         ebx,dword ptr [eax]
 0047A4BF    call        dword ptr [ebx+0C];@AbstractError
 0047A4C2    mov         edx,dword ptr [ebp-8]
 0047A4C5    mov         eax,dword ptr [ebp-4]
 0047A4C8    mov         ecx,dword ptr [eax]
 0047A4CA    call        dword ptr [ecx+18];TStrings.sub_0047A674
 0047A4CD    mov         dword ptr [ebp-10],eax
 0047A4D0    lea         ecx,[ebp-18]
 0047A4D3    mov         edx,dword ptr [ebp-0C]
 0047A4D6    mov         eax,dword ptr [ebp-4]
 0047A4D9    mov         ebx,dword ptr [eax]
 0047A4DB    call        dword ptr [ebx+0C];@AbstractError
 0047A4DE    mov         ecx,dword ptr [ebp-18]
 0047A4E1    mov         edx,dword ptr [ebp-8]
 0047A4E4    mov         eax,dword ptr [ebp-4]
 0047A4E7    mov         ebx,dword ptr [eax]
 0047A4E9    call        dword ptr [ebx+20];TStrings.sub_0047AC78
 0047A4EC    mov         edx,dword ptr [ebp-0C]
 0047A4EF    mov         eax,dword ptr [ebp-4]
 0047A4F2    mov         ecx,dword ptr [eax]
 0047A4F4    call        dword ptr [ecx+18];TStrings.sub_0047A674
 0047A4F7    mov         ecx,eax
 0047A4F9    mov         edx,dword ptr [ebp-8]
 0047A4FC    mov         eax,dword ptr [ebp-4]
 0047A4FF    mov         ebx,dword ptr [eax]
 0047A501    call        dword ptr [ebx+24];TStrings.sub_0047ACB8
 0047A504    mov         ecx,dword ptr [ebp-14]
 0047A507    mov         edx,dword ptr [ebp-0C]
 0047A50A    mov         eax,dword ptr [ebp-4]
 0047A50D    mov         ebx,dword ptr [eax]
 0047A50F    call        dword ptr [ebx+20];TStrings.sub_0047AC78
 0047A512    mov         ecx,dword ptr [ebp-10]
 0047A515    mov         edx,dword ptr [ebp-0C]
 0047A518    mov         eax,dword ptr [ebp-4]
 0047A51B    mov         ebx,dword ptr [eax]
 0047A51D    call        dword ptr [ebx+24];TStrings.sub_0047ACB8
 0047A520    xor         eax,eax
 0047A522    pop         edx
 0047A523    pop         ecx
 0047A524    pop         ecx
 0047A525    mov         dword ptr fs:[eax],edx
 0047A528    push        47A53D
 0047A52D    mov         eax,dword ptr [ebp-4]
 0047A530    call        TStrings.EndUpdate
 0047A535    ret
>0047A536    jmp         @HandleFinally
>0047A53B    jmp         0047A52D
 0047A53D    xor         eax,eax
 0047A53F    pop         edx
 0047A540    pop         ecx
 0047A541    pop         ecx
 0047A542    mov         dword ptr fs:[eax],edx
 0047A545    push        47A55F
 0047A54A    lea         eax,[ebp-18]
 0047A54D    mov         edx,2
 0047A552    call        @LStrArrayClr
 0047A557    ret
>0047A558    jmp         @HandleFinally
>0047A55D    jmp         0047A54A
 0047A55F    pop         ebx
 0047A560    mov         esp,ebp
 0047A562    pop         ebp
 0047A563    ret
end;*}

//0047A564
{*procedure sub_0047A564(?:?; ?:?; ?:?);
begin
 0047A564    push        ebp
 0047A565    mov         ebp,esp
 0047A567    add         esp,0FFFFFFEC
 0047A56A    push        ebx
 0047A56B    xor         ebx,ebx
 0047A56D    mov         dword ptr [ebp-14],ebx
 0047A570    mov         dword ptr [ebp-0C],ecx
 0047A573    mov         dword ptr [ebp-8],edx
 0047A576    mov         dword ptr [ebp-4],eax
 0047A579    xor         eax,eax
 0047A57B    push        ebp
 0047A57C    push        47A5E8
 0047A581    push        dword ptr fs:[eax]
 0047A584    mov         dword ptr fs:[eax],esp
 0047A587    mov         eax,dword ptr [ebp-0C]
 0047A58A    mov         edx,dword ptr [ebp-8]
 0047A58D    call        @LStrAsg
 0047A592    mov         eax,dword ptr [ebp-4]
 0047A595    call        0047B2C8
 0047A59A    mov         edx,eax
 0047A59C    lea         eax,[ebp-14]
 0047A59F    call        @LStrFromChar
 0047A5A4    mov         eax,dword ptr [ebp-14]
 0047A5A7    mov         edx,dword ptr [ebp-0C]
 0047A5AA    mov         edx,dword ptr [edx]
 0047A5AC    call        0046B9E0
 0047A5B1    mov         dword ptr [ebp-10],eax
 0047A5B4    cmp         dword ptr [ebp-10],0
>0047A5B8    je          0047A5C8
 0047A5BA    mov         edx,dword ptr [ebp-10]
 0047A5BD    dec         edx
 0047A5BE    mov         eax,dword ptr [ebp-0C]
 0047A5C1    call        @LStrSetLength
>0047A5C6    jmp         0047A5D2
 0047A5C8    mov         eax,dword ptr [ebp-0C]
 0047A5CB    xor         edx,edx
 0047A5CD    call        @LStrSetLength
 0047A5D2    xor         eax,eax
 0047A5D4    pop         edx
 0047A5D5    pop         ecx
 0047A5D6    pop         ecx
 0047A5D7    mov         dword ptr fs:[eax],edx
 0047A5DA    push        47A5EF
 0047A5DF    lea         eax,[ebp-14]
 0047A5E2    call        @LStrClr
 0047A5E7    ret
>0047A5E8    jmp         @HandleFinally
>0047A5ED    jmp         0047A5DF
 0047A5EF    pop         ebx
 0047A5F0    mov         esp,ebp
 0047A5F2    pop         ebp
 0047A5F3    ret
end;*}

//0047A5F4
{*function sub_0047A5F4:?;
begin
 0047A5F4    push        ebp
 0047A5F5    mov         ebp,esp
 0047A5F7    add         esp,0FFFFFFF8
 0047A5FA    mov         dword ptr [ebp-4],eax
 0047A5FD    mov         eax,dword ptr [ebp-4]
 0047A600    mov         edx,dword ptr [eax]
 0047A602    call        dword ptr [edx+14];@AbstractError
 0047A605    mov         dword ptr [ebp-8],eax
 0047A608    mov         eax,dword ptr [ebp-8]
 0047A60B    pop         ecx
 0047A60C    pop         ecx
 0047A60D    pop         ebp
 0047A60E    ret
end;*}

//0047A610
{*procedure sub_0047A610(?:TStringList; ?:?; ?:?);
begin
 0047A610    push        ebp
 0047A611    mov         ebp,esp
 0047A613    add         esp,0FFFFFFF0
 0047A616    push        ebx
 0047A617    xor         ebx,ebx
 0047A619    mov         dword ptr [ebp-10],ebx
 0047A61C    mov         dword ptr [ebp-0C],ecx
 0047A61F    mov         dword ptr [ebp-8],edx
 0047A622    mov         dword ptr [ebp-4],eax
 0047A625    xor         eax,eax
 0047A627    push        ebp
 0047A628    push        47A665
 0047A62D    push        dword ptr fs:[eax]
 0047A630    mov         dword ptr fs:[eax],esp
 0047A633    lea         ecx,[ebp-10]
 0047A636    mov         edx,dword ptr [ebp-8]
 0047A639    mov         eax,dword ptr [ebp-4]
 0047A63C    mov         ebx,dword ptr [eax]
 0047A63E    call        dword ptr [ebx+0C]
 0047A641    mov         edx,dword ptr [ebp-10]
 0047A644    mov         ecx,dword ptr [ebp-0C]
 0047A647    mov         eax,dword ptr [ebp-4]
 0047A64A    call        0047A564
 0047A64F    xor         eax,eax
 0047A651    pop         edx
 0047A652    pop         ecx
 0047A653    pop         ecx
 0047A654    mov         dword ptr fs:[eax],edx
 0047A657    push        47A66C
 0047A65C    lea         eax,[ebp-10]
 0047A65F    call        @LStrClr
 0047A664    ret
>0047A665    jmp         @HandleFinally
>0047A66A    jmp         0047A65C
 0047A66C    pop         ebx
 0047A66D    mov         esp,ebp
 0047A66F    pop         ebp
 0047A670    ret
end;*}

//0047A674
{*function sub_0047A674(?:?):?;
begin
 0047A674    push        ebp
 0047A675    mov         ebp,esp
 0047A677    add         esp,0FFFFFFF4
 0047A67A    mov         dword ptr [ebp-0C],edx
 0047A67D    mov         dword ptr [ebp-4],eax
 0047A680    xor         eax,eax
 0047A682    mov         dword ptr [ebp-8],eax
 0047A685    mov         eax,dword ptr [ebp-8]
 0047A688    mov         esp,ebp
 0047A68A    pop         ebp
 0047A68B    ret
end;*}

//0047A68C
{*function sub_0047A68C:?;
begin
 0047A68C    push        ebp
 0047A68D    mov         ebp,esp
 0047A68F    add         esp,0FFFFFFF4
 0047A692    xor         edx,edx
 0047A694    mov         dword ptr [ebp-0C],edx
 0047A697    mov         dword ptr [ebp-4],eax
 0047A69A    xor         eax,eax
 0047A69C    push        ebp
 0047A69D    push        47A6D9
 0047A6A2    push        dword ptr fs:[eax]
 0047A6A5    mov         dword ptr fs:[eax],esp
 0047A6A8    lea         edx,[ebp-0C]
 0047A6AB    mov         eax,dword ptr [ebp-4]
 0047A6AE    mov         ecx,dword ptr [eax]
 0047A6B0    call        dword ptr [ecx+1C];TStrings.sub_0047A6E8
 0047A6B3    mov         eax,dword ptr [ebp-0C]
 0047A6B6    call        @LStrToPChar
 0047A6BB    call        004674E0
 0047A6C0    mov         dword ptr [ebp-8],eax
 0047A6C3    xor         eax,eax
 0047A6C5    pop         edx
 0047A6C6    pop         ecx
 0047A6C7    pop         ecx
 0047A6C8    mov         dword ptr fs:[eax],edx
 0047A6CB    push        47A6E0
 0047A6D0    lea         eax,[ebp-0C]
 0047A6D3    call        @LStrClr
 0047A6D8    ret
>0047A6D9    jmp         @HandleFinally
>0047A6DE    jmp         0047A6D0
 0047A6E0    mov         eax,dword ptr [ebp-8]
 0047A6E3    mov         esp,ebp
 0047A6E5    pop         ebp
 0047A6E6    ret
end;*}

//0047A6E8
{*procedure sub_0047A6E8(?:?);
begin
 0047A6E8    push        ebp
 0047A6E9    mov         ebp,esp
 0047A6EB    add         esp,0FFFFFFD4
 0047A6EE    push        ebx
 0047A6EF    xor         ecx,ecx
 0047A6F1    mov         dword ptr [ebp-2C],ecx
 0047A6F4    mov         dword ptr [ebp-20],ecx
 0047A6F7    mov         dword ptr [ebp-24],ecx
 0047A6FA    mov         dword ptr [ebp-8],edx
 0047A6FD    mov         dword ptr [ebp-4],eax
 0047A700    xor         eax,eax
 0047A702    push        ebp
 0047A703    push        47A816
 0047A708    push        dword ptr fs:[eax]
 0047A70B    mov         dword ptr fs:[eax],esp
 0047A70E    mov         eax,dword ptr [ebp-4]
 0047A711    mov         edx,dword ptr [eax]
 0047A713    call        dword ptr [edx+14];@AbstractError
 0047A716    mov         dword ptr [ebp-18],eax
 0047A719    xor         eax,eax
 0047A71B    mov         dword ptr [ebp-14],eax
 0047A71E    lea         eax,[ebp-24]
 0047A721    mov         edx,47A82C;#13+#10
 0047A726    call        @LStrLAsg
 0047A72B    mov         eax,dword ptr [ebp-18]
 0047A72E    dec         eax
 0047A72F    test        eax,eax
>0047A731    jl          0047A76B
 0047A733    inc         eax
 0047A734    mov         dword ptr [ebp-28],eax
 0047A737    mov         dword ptr [ebp-0C],0
 0047A73E    lea         ecx,[ebp-2C]
 0047A741    mov         edx,dword ptr [ebp-0C]
 0047A744    mov         eax,dword ptr [ebp-4]
 0047A747    mov         ebx,dword ptr [eax]
 0047A749    call        dword ptr [ebx+0C];@AbstractError
 0047A74C    mov         eax,dword ptr [ebp-2C]
 0047A74F    call        @DynArrayLength
 0047A754    mov         ebx,eax
 0047A756    mov         eax,dword ptr [ebp-24]
 0047A759    call        @DynArrayLength
 0047A75E    add         ebx,eax
 0047A760    add         dword ptr [ebp-14],ebx
 0047A763    inc         dword ptr [ebp-0C]
 0047A766    dec         dword ptr [ebp-28]
>0047A769    jne         0047A73E
 0047A76B    mov         eax,dword ptr [ebp-8]
 0047A76E    mov         ecx,dword ptr [ebp-14]
 0047A771    xor         edx,edx
 0047A773    call        @LStrFromPCharLen
 0047A778    mov         eax,dword ptr [ebp-8]
 0047A77B    mov         eax,dword ptr [eax]
 0047A77D    mov         dword ptr [ebp-1C],eax
 0047A780    mov         eax,dword ptr [ebp-18]
 0047A783    dec         eax
 0047A784    test        eax,eax
>0047A786    jl          0047A7F3
 0047A788    inc         eax
 0047A789    mov         dword ptr [ebp-28],eax
 0047A78C    mov         dword ptr [ebp-0C],0
 0047A793    lea         ecx,[ebp-20]
 0047A796    mov         edx,dword ptr [ebp-0C]
 0047A799    mov         eax,dword ptr [ebp-4]
 0047A79C    mov         ebx,dword ptr [eax]
 0047A79E    call        dword ptr [ebx+0C];@AbstractError
 0047A7A1    mov         eax,dword ptr [ebp-20]
 0047A7A4    call        @DynArrayLength
 0047A7A9    mov         dword ptr [ebp-10],eax
 0047A7AC    cmp         dword ptr [ebp-10],0
>0047A7B0    je          0047A7C6
 0047A7B2    mov         edx,dword ptr [ebp-1C]
 0047A7B5    mov         eax,dword ptr [ebp-20]
 0047A7B8    mov         ecx,dword ptr [ebp-10]
 0047A7BB    call        Move
 0047A7C0    mov         eax,dword ptr [ebp-10]
 0047A7C3    add         dword ptr [ebp-1C],eax
 0047A7C6    mov         eax,dword ptr [ebp-24]
 0047A7C9    call        @DynArrayLength
 0047A7CE    mov         dword ptr [ebp-10],eax
 0047A7D1    cmp         dword ptr [ebp-10],0
>0047A7D5    je          0047A7EB
 0047A7D7    mov         edx,dword ptr [ebp-1C]
 0047A7DA    mov         eax,dword ptr [ebp-24]
 0047A7DD    mov         ecx,dword ptr [ebp-10]
 0047A7E0    call        Move
 0047A7E5    mov         eax,dword ptr [ebp-10]
 0047A7E8    add         dword ptr [ebp-1C],eax
 0047A7EB    inc         dword ptr [ebp-0C]
 0047A7EE    dec         dword ptr [ebp-28]
>0047A7F1    jne         0047A793
 0047A7F3    xor         eax,eax
 0047A7F5    pop         edx
 0047A7F6    pop         ecx
 0047A7F7    pop         ecx
 0047A7F8    mov         dword ptr fs:[eax],edx
 0047A7FB    push        47A81D
 0047A800    lea         eax,[ebp-2C]
 0047A803    call        @LStrClr
 0047A808    lea         eax,[ebp-24]
 0047A80B    mov         edx,2
 0047A810    call        @LStrArrayClr
 0047A815    ret
>0047A816    jmp         @HandleFinally
>0047A81B    jmp         0047A800
 0047A81D    pop         ebx
 0047A81E    mov         esp,ebp
 0047A820    pop         ebp
 0047A821    ret
end;*}

//0047A830
{*procedure sub_0047A830(?:TStringList; ?:?; ?:?);
begin
 0047A830    push        ebp
 0047A831    mov         ebp,esp
 0047A833    add         esp,0FFFFFFEC
 0047A836    push        ebx
 0047A837    xor         ebx,ebx
 0047A839    mov         dword ptr [ebp-14],ebx
 0047A83C    mov         dword ptr [ebp-0C],ecx
 0047A83F    mov         dword ptr [ebp-8],edx
 0047A842    mov         dword ptr [ebp-4],eax
 0047A845    xor         eax,eax
 0047A847    push        ebp
 0047A848    push        47A8B5
 0047A84D    push        dword ptr fs:[eax]
 0047A850    mov         dword ptr fs:[eax],esp
 0047A853    mov         edx,dword ptr [ebp-8]
 0047A856    mov         eax,dword ptr [ebp-4]
 0047A859    mov         ecx,dword ptr [eax]
 0047A85B    call        dword ptr [ecx+58]
 0047A85E    mov         dword ptr [ebp-10],eax
 0047A861    cmp         dword ptr [ebp-10],0
>0047A865    jl          0047A897
 0047A867    mov         eax,dword ptr [ebp-0C]
 0047A86A    push        eax
 0047A86B    lea         ecx,[ebp-14]
 0047A86E    mov         edx,dword ptr [ebp-10]
 0047A871    mov         eax,dword ptr [ebp-4]
 0047A874    mov         ebx,dword ptr [eax]
 0047A876    call        dword ptr [ebx+0C]
 0047A879    mov         eax,dword ptr [ebp-14]
 0047A87C    push        eax
 0047A87D    mov         eax,dword ptr [ebp-8]
 0047A880    call        @DynArrayLength
 0047A885    mov         edx,eax
 0047A887    add         edx,2
 0047A88A    mov         ecx,7FFFFFFF
 0047A88F    pop         eax
 0047A890    call        @LStrCopy
>0047A895    jmp         0047A89F
 0047A897    mov         eax,dword ptr [ebp-0C]
 0047A89A    call        @LStrClr
 0047A89F    xor         eax,eax
 0047A8A1    pop         edx
 0047A8A2    pop         ecx
 0047A8A3    pop         ecx
 0047A8A4    mov         dword ptr fs:[eax],edx
 0047A8A7    push        47A8BC
 0047A8AC    lea         eax,[ebp-14]
 0047A8AF    call        @LStrClr
 0047A8B4    ret
>0047A8B5    jmp         @HandleFinally
>0047A8BA    jmp         0047A8AC
 0047A8BC    pop         ebx
 0047A8BD    mov         esp,ebp
 0047A8BF    pop         ebp
 0047A8C0    ret
end;*}

//0047A8C4
{*function sub_0047A8C4(?:?):?;
begin
 0047A8C4    push        ebp
 0047A8C5    mov         ebp,esp
 0047A8C7    add         esp,0FFFFFFEC
 0047A8CA    push        ebx
 0047A8CB    xor         ecx,ecx
 0047A8CD    mov         dword ptr [ebp-14],ecx
 0047A8D0    mov         dword ptr [ebp-8],edx
 0047A8D3    mov         dword ptr [ebp-4],eax
 0047A8D6    xor         eax,eax
 0047A8D8    push        ebp
 0047A8D9    push        47A941
 0047A8DE    push        dword ptr fs:[eax]
 0047A8E1    mov         dword ptr fs:[eax],esp
 0047A8E4    mov         eax,dword ptr [ebp-4]
 0047A8E7    mov         edx,dword ptr [eax]
 0047A8E9    call        dword ptr [edx+14];@AbstractError
 0047A8EC    dec         eax
 0047A8ED    test        eax,eax
>0047A8EF    jl          0047A924
 0047A8F1    inc         eax
 0047A8F2    mov         dword ptr [ebp-10],eax
 0047A8F5    mov         dword ptr [ebp-0C],0
 0047A8FC    lea         ecx,[ebp-14]
 0047A8FF    mov         edx,dword ptr [ebp-0C]
 0047A902    mov         eax,dword ptr [ebp-4]
 0047A905    mov         ebx,dword ptr [eax]
 0047A907    call        dword ptr [ebx+0C];@AbstractError
 0047A90A    mov         edx,dword ptr [ebp-14]
 0047A90D    mov         ecx,dword ptr [ebp-8]
 0047A910    mov         eax,dword ptr [ebp-4]
 0047A913    mov         ebx,dword ptr [eax]
 0047A915    call        dword ptr [ebx+34];TStrings.sub_0047B2A4
 0047A918    test        eax,eax
>0047A91A    je          0047A92B
 0047A91C    inc         dword ptr [ebp-0C]
 0047A91F    dec         dword ptr [ebp-10]
>0047A922    jne         0047A8FC
 0047A924    mov         dword ptr [ebp-0C],0FFFFFFFF
 0047A92B    xor         eax,eax
 0047A92D    pop         edx
 0047A92E    pop         ecx
 0047A92F    pop         ecx
 0047A930    mov         dword ptr fs:[eax],edx
 0047A933    push        47A948
 0047A938    lea         eax,[ebp-14]
 0047A93B    call        @LStrClr
 0047A940    ret
>0047A941    jmp         @HandleFinally
>0047A946    jmp         0047A938
 0047A948    mov         eax,dword ptr [ebp-0C]
 0047A94B    pop         ebx
 0047A94C    mov         esp,ebp
 0047A94E    pop         ebp
 0047A94F    ret
end;*}

//0047A950
{*function sub_0047A950(?:?):?;
begin
 0047A950    push        ebp
 0047A951    mov         ebp,esp
 0047A953    add         esp,0FFFFFFE0
 0047A956    push        ebx
 0047A957    xor         ecx,ecx
 0047A959    mov         dword ptr [ebp-20],ecx
 0047A95C    mov         dword ptr [ebp-1C],ecx
 0047A95F    mov         dword ptr [ebp-14],ecx
 0047A962    mov         dword ptr [ebp-8],edx
 0047A965    mov         dword ptr [ebp-4],eax
 0047A968    xor         eax,eax
 0047A96A    push        ebp
 0047A96B    push        47AA1B
 0047A970    push        dword ptr fs:[eax]
 0047A973    mov         dword ptr fs:[eax],esp
 0047A976    mov         eax,dword ptr [ebp-4]
 0047A979    mov         edx,dword ptr [eax]
 0047A97B    call        dword ptr [edx+14];@AbstractError
 0047A97E    dec         eax
 0047A97F    test        eax,eax
>0047A981    jl          0047A9F1
 0047A983    inc         eax
 0047A984    mov         dword ptr [ebp-18],eax
 0047A987    mov         dword ptr [ebp-0C],0
 0047A98E    lea         ecx,[ebp-14]
 0047A991    mov         edx,dword ptr [ebp-0C]
 0047A994    mov         eax,dword ptr [ebp-4]
 0047A997    mov         ebx,dword ptr [eax]
 0047A999    call        dword ptr [ebx+0C];@AbstractError
 0047A99C    mov         eax,dword ptr [ebp-4]
 0047A99F    call        0047B2C8
 0047A9A4    mov         edx,eax
 0047A9A6    lea         eax,[ebp-1C]
 0047A9A9    call        @LStrFromChar
 0047A9AE    mov         eax,dword ptr [ebp-1C]
 0047A9B1    mov         edx,dword ptr [ebp-14]
 0047A9B4    call        0046B9E0
 0047A9B9    mov         dword ptr [ebp-10],eax
 0047A9BC    cmp         dword ptr [ebp-10],0
>0047A9C0    je          0047A9E9
 0047A9C2    lea         eax,[ebp-20]
 0047A9C5    push        eax
 0047A9C6    mov         ecx,dword ptr [ebp-10]
 0047A9C9    dec         ecx
 0047A9CA    mov         edx,1
 0047A9CF    mov         eax,dword ptr [ebp-14]
 0047A9D2    call        @LStrCopy
 0047A9D7    mov         edx,dword ptr [ebp-20]
 0047A9DA    mov         ecx,dword ptr [ebp-8]
 0047A9DD    mov         eax,dword ptr [ebp-4]
 0047A9E0    mov         ebx,dword ptr [eax]
 0047A9E2    call        dword ptr [ebx+34];TStrings.sub_0047B2A4
 0047A9E5    test        eax,eax
>0047A9E7    je          0047A9F8
 0047A9E9    inc         dword ptr [ebp-0C]
 0047A9EC    dec         dword ptr [ebp-18]
>0047A9EF    jne         0047A98E
 0047A9F1    mov         dword ptr [ebp-0C],0FFFFFFFF
 0047A9F8    xor         eax,eax
 0047A9FA    pop         edx
 0047A9FB    pop         ecx
 0047A9FC    pop         ecx
 0047A9FD    mov         dword ptr fs:[eax],edx
 0047AA00    push        47AA22
 0047AA05    lea         eax,[ebp-20]
 0047AA08    mov         edx,2
 0047AA0D    call        @LStrArrayClr
 0047AA12    lea         eax,[ebp-14]
 0047AA15    call        @LStrClr
 0047AA1A    ret
>0047AA1B    jmp         @HandleFinally
>0047AA20    jmp         0047AA05
 0047AA22    mov         eax,dword ptr [ebp-0C]
 0047AA25    pop         ebx
 0047AA26    mov         esp,ebp
 0047AA28    pop         ebp
 0047AA29    ret
end;*}

//0047AA2C
{*function sub_0047AA2C(?:?):?;
begin
 0047AA2C    push        ebp
 0047AA2D    mov         ebp,esp
 0047AA2F    add         esp,0FFFFFFF0
 0047AA32    mov         dword ptr [ebp-8],edx
 0047AA35    mov         dword ptr [ebp-4],eax
 0047AA38    mov         eax,dword ptr [ebp-4]
 0047AA3B    mov         edx,dword ptr [eax]
 0047AA3D    call        dword ptr [edx+14];@AbstractError
 0047AA40    dec         eax
 0047AA41    test        eax,eax
>0047AA43    jl          0047AA68
 0047AA45    inc         eax
 0047AA46    mov         dword ptr [ebp-10],eax
 0047AA49    mov         dword ptr [ebp-0C],0
 0047AA50    mov         edx,dword ptr [ebp-0C]
 0047AA53    mov         eax,dword ptr [ebp-4]
 0047AA56    mov         ecx,dword ptr [eax]
 0047AA58    call        dword ptr [ecx+18];TStrings.sub_0047A674
 0047AA5B    cmp         eax,dword ptr [ebp-8]
>0047AA5E    je          0047AA6F
 0047AA60    inc         dword ptr [ebp-0C]
 0047AA63    dec         dword ptr [ebp-10]
>0047AA66    jne         0047AA50
 0047AA68    mov         dword ptr [ebp-0C],0FFFFFFFF
 0047AA6F    mov         eax,dword ptr [ebp-0C]
 0047AA72    mov         esp,ebp
 0047AA74    pop         ebp
 0047AA75    ret
end;*}

//0047AA78
{*procedure sub_0047AA78(?:?; ?:?; ?:?);
begin
 0047AA78    push        ebp
 0047AA79    mov         ebp,esp
 0047AA7B    add         esp,0FFFFFFF4
 0047AA7E    push        ebx
 0047AA7F    mov         dword ptr [ebp-0C],ecx
 0047AA82    mov         dword ptr [ebp-8],edx
 0047AA85    mov         dword ptr [ebp-4],eax
 0047AA88    mov         ecx,dword ptr [ebp-0C]
 0047AA8B    mov         edx,dword ptr [ebp-8]
 0047AA8E    mov         eax,dword ptr [ebp-4]
 0047AA91    mov         ebx,dword ptr [eax]
 0047AA93    call        dword ptr [ebx+60];@AbstractError
 0047AA96    mov         ecx,dword ptr [ebp+8]
 0047AA99    mov         edx,dword ptr [ebp-8]
 0047AA9C    mov         eax,dword ptr [ebp-4]
 0047AA9F    mov         ebx,dword ptr [eax]
 0047AAA1    call        dword ptr [ebx+24];TStrings.sub_0047ACB8
 0047AAA4    pop         ebx
 0047AAA5    mov         esp,ebp
 0047AAA7    pop         ebp
 0047AAA8    ret         4
end;*}

//0047AAAC
{*procedure sub_0047AAAC(?:?);
begin
 0047AAAC    push        ebp
 0047AAAD    mov         ebp,esp
 0047AAAF    add         esp,0FFFFFFF4
 0047AAB2    mov         dword ptr [ebp-8],edx
 0047AAB5    mov         dword ptr [ebp-4],eax
 0047AAB8    push        20
 0047AABA    mov         ecx,dword ptr [ebp-8]
 0047AABD    mov         dl,1
 0047AABF    mov         eax,[00476278];TFileStream
 0047AAC4    call        TFileStream.Create;TFileStream.Create
 0047AAC9    mov         dword ptr [ebp-0C],eax
 0047AACC    xor         eax,eax
 0047AACE    push        ebp
 0047AACF    push        47AAFB
 0047AAD4    push        dword ptr fs:[eax]
 0047AAD7    mov         dword ptr fs:[eax],esp
 0047AADA    mov         edx,dword ptr [ebp-0C]
 0047AADD    mov         eax,dword ptr [ebp-4]
 0047AAE0    mov         ecx,dword ptr [eax]
 0047AAE2    call        dword ptr [ecx+6C];TStrings.sub_0047AB08
 0047AAE5    xor         eax,eax
 0047AAE7    pop         edx
 0047AAE8    pop         ecx
 0047AAE9    pop         ecx
 0047AAEA    mov         dword ptr fs:[eax],edx
 0047AAED    push        47AB02
 0047AAF2    mov         eax,dword ptr [ebp-0C]
 0047AAF5    call        TObject.Free
 0047AAFA    ret
>0047AAFB    jmp         @HandleFinally
>0047AB00    jmp         0047AAF2
 0047AB02    mov         esp,ebp
 0047AB04    pop         ebp
 0047AB05    ret
end;*}

//0047AB08
{*procedure sub_0047AB08(?:?);
begin
 0047AB08    push        ebp
 0047AB09    mov         ebp,esp
 0047AB0B    add         esp,0FFFFFFF0
 0047AB0E    push        ebx
 0047AB0F    xor         ecx,ecx
 0047AB11    mov         dword ptr [ebp-10],ecx
 0047AB14    mov         dword ptr [ebp-8],edx
 0047AB17    mov         dword ptr [ebp-4],eax
 0047AB1A    xor         eax,eax
 0047AB1C    push        ebp
 0047AB1D    push        47ABAD
 0047AB22    push        dword ptr fs:[eax]
 0047AB25    mov         dword ptr fs:[eax],esp
 0047AB28    mov         eax,dword ptr [ebp-4]
 0047AB2B    call        TStrings.BeginUpdate
 0047AB30    xor         eax,eax
 0047AB32    push        ebp
 0047AB33    push        47AB90
 0047AB38    push        dword ptr fs:[eax]
 0047AB3B    mov         dword ptr fs:[eax],esp
 0047AB3E    mov         eax,dword ptr [ebp-8]
 0047AB41    mov         edx,dword ptr [eax]
 0047AB43    call        dword ptr [edx]
 0047AB45    mov         ebx,eax
 0047AB47    mov         eax,dword ptr [ebp-8]
 0047AB4A    call        0047BCCC
 0047AB4F    sub         ebx,eax
 0047AB51    mov         dword ptr [ebp-0C],ebx
 0047AB54    lea         eax,[ebp-10]
 0047AB57    mov         ecx,dword ptr [ebp-0C]
 0047AB5A    xor         edx,edx
 0047AB5C    call        @LStrFromPCharLen
 0047AB61    mov         edx,dword ptr [ebp-10]
 0047AB64    mov         ecx,dword ptr [ebp-0C]
 0047AB67    mov         eax,dword ptr [ebp-8]
 0047AB6A    mov         ebx,dword ptr [eax]
 0047AB6C    call        dword ptr [ebx+0C]
 0047AB6F    mov         edx,dword ptr [ebp-10]
 0047AB72    mov         eax,dword ptr [ebp-4]
 0047AB75    mov         ecx,dword ptr [eax]
 0047AB77    call        dword ptr [ecx+2C];TStrings.sub_0047AEF0
 0047AB7A    xor         eax,eax
 0047AB7C    pop         edx
 0047AB7D    pop         ecx
 0047AB7E    pop         ecx
 0047AB7F    mov         dword ptr fs:[eax],edx
 0047AB82    push        47AB97
 0047AB87    mov         eax,dword ptr [ebp-4]
 0047AB8A    call        TStrings.EndUpdate
 0047AB8F    ret
>0047AB90    jmp         @HandleFinally
>0047AB95    jmp         0047AB87
 0047AB97    xor         eax,eax
 0047AB99    pop         edx
 0047AB9A    pop         ecx
 0047AB9B    pop         ecx
 0047AB9C    mov         dword ptr fs:[eax],edx
 0047AB9F    push        47ABB4
 0047ABA4    lea         eax,[ebp-10]
 0047ABA7    call        @LStrClr
 0047ABAC    ret
>0047ABAD    jmp         @HandleFinally
>0047ABB2    jmp         0047ABA4
 0047ABB4    pop         ebx
 0047ABB5    mov         esp,ebp
 0047ABB7    pop         ebp
 0047ABB8    ret
end;*}

//0047ABBC
{*procedure sub_0047ABBC(?:?; ?:?);
begin
 0047ABBC    push        ebp
 0047ABBD    mov         ebp,esp
 0047ABBF    add         esp,0FFFFFFEC
 0047ABC2    push        ebx
 0047ABC3    xor         ebx,ebx
 0047ABC5    mov         dword ptr [ebp-14],ebx
 0047ABC8    mov         dword ptr [ebp-0C],ecx
 0047ABCB    mov         dword ptr [ebp-8],edx
 0047ABCE    mov         dword ptr [ebp-4],eax
 0047ABD1    xor         eax,eax
 0047ABD3    push        ebp
 0047ABD4    push        47AC69
 0047ABD9    push        dword ptr fs:[eax]
 0047ABDC    mov         dword ptr fs:[eax],esp
 0047ABDF    mov         eax,dword ptr [ebp-8]
 0047ABE2    cmp         eax,dword ptr [ebp-0C]
>0047ABE5    je          0047AC53
 0047ABE7    mov         eax,dword ptr [ebp-4]
 0047ABEA    call        TStrings.BeginUpdate
 0047ABEF    xor         eax,eax
 0047ABF1    push        ebp
 0047ABF2    push        47AC4C
 0047ABF7    push        dword ptr fs:[eax]
 0047ABFA    mov         dword ptr fs:[eax],esp
 0047ABFD    lea         ecx,[ebp-14]
 0047AC00    mov         edx,dword ptr [ebp-8]
 0047AC03    mov         eax,dword ptr [ebp-4]
 0047AC06    mov         ebx,dword ptr [eax]
 0047AC08    call        dword ptr [ebx+0C];@AbstractError
 0047AC0B    mov         edx,dword ptr [ebp-8]
 0047AC0E    mov         eax,dword ptr [ebp-4]
 0047AC11    mov         ecx,dword ptr [eax]
 0047AC13    call        dword ptr [ecx+18];TStrings.sub_0047A674
 0047AC16    mov         dword ptr [ebp-10],eax
 0047AC19    mov         edx,dword ptr [ebp-8]
 0047AC1C    mov         eax,dword ptr [ebp-4]
 0047AC1F    mov         ecx,dword ptr [eax]
 0047AC21    call        dword ptr [ecx+48];@AbstractError
 0047AC24    mov         eax,dword ptr [ebp-10]
 0047AC27    push        eax
 0047AC28    mov         ecx,dword ptr [ebp-14]
 0047AC2B    mov         edx,dword ptr [ebp-0C]
 0047AC2E    mov         eax,dword ptr [ebp-4]
 0047AC31    mov         ebx,dword ptr [eax]
 0047AC33    call        dword ptr [ebx+64];TStrings.sub_0047AA78
 0047AC36    xor         eax,eax
 0047AC38    pop         edx
 0047AC39    pop         ecx
 0047AC3A    pop         ecx
 0047AC3B    mov         dword ptr fs:[eax],edx
 0047AC3E    push        47AC53
 0047AC43    mov         eax,dword ptr [ebp-4]
 0047AC46    call        TStrings.EndUpdate
 0047AC4B    ret
>0047AC4C    jmp         @HandleFinally
>0047AC51    jmp         0047AC43
 0047AC53    xor         eax,eax
 0047AC55    pop         edx
 0047AC56    pop         ecx
 0047AC57    pop         ecx
 0047AC58    mov         dword ptr fs:[eax],edx
 0047AC5B    push        47AC70
 0047AC60    lea         eax,[ebp-14]
 0047AC63    call        @LStrClr
 0047AC68    ret
>0047AC69    jmp         @HandleFinally
>0047AC6E    jmp         0047AC60
 0047AC70    pop         ebx
 0047AC71    mov         esp,ebp
 0047AC73    pop         ebp
 0047AC74    ret
end;*}

//0047AC78
{*procedure sub_0047AC78(?:?; ?:?);
begin
 0047AC78    push        ebp
 0047AC79    mov         ebp,esp
 0047AC7B    add         esp,0FFFFFFF0
 0047AC7E    push        ebx
 0047AC7F    mov         dword ptr [ebp-0C],ecx
 0047AC82    mov         dword ptr [ebp-8],edx
 0047AC85    mov         dword ptr [ebp-4],eax
 0047AC88    mov         edx,dword ptr [ebp-8]
 0047AC8B    mov         eax,dword ptr [ebp-4]
 0047AC8E    mov         ecx,dword ptr [eax]
 0047AC90    call        dword ptr [ecx+18];TStrings.sub_0047A674
 0047AC93    mov         dword ptr [ebp-10],eax
 0047AC96    mov         edx,dword ptr [ebp-8]
 0047AC99    mov         eax,dword ptr [ebp-4]
 0047AC9C    mov         ecx,dword ptr [eax]
 0047AC9E    call        dword ptr [ecx+48];@AbstractError
 0047ACA1    mov         eax,dword ptr [ebp-10]
 0047ACA4    push        eax
 0047ACA5    mov         ecx,dword ptr [ebp-0C]
 0047ACA8    mov         edx,dword ptr [ebp-8]
 0047ACAB    mov         eax,dword ptr [ebp-4]
 0047ACAE    mov         ebx,dword ptr [eax]
 0047ACB0    call        dword ptr [ebx+64];TStrings.sub_0047AA78
 0047ACB3    pop         ebx
 0047ACB4    mov         esp,ebp
 0047ACB6    pop         ebp
 0047ACB7    ret
end;*}

//0047ACB8
{*procedure sub_0047ACB8(?:?; ?:?);
begin
 0047ACB8    push        ebp
 0047ACB9    mov         ebp,esp
 0047ACBB    add         esp,0FFFFFFF4
 0047ACBE    mov         dword ptr [ebp-0C],ecx
 0047ACC1    mov         dword ptr [ebp-8],edx
 0047ACC4    mov         dword ptr [ebp-4],eax
 0047ACC7    mov         esp,ebp
 0047ACC9    pop         ebp
 0047ACCA    ret
end;*}

//0047ACCC
procedure TStrings.ReadData(Reader:TReader);
begin
{*
 0047ACCC    push        ebp
 0047ACCD    mov         ebp,esp
 0047ACCF    add         esp,0FFFFFFF4
 0047ACD2    xor         ecx,ecx
 0047ACD4    mov         dword ptr [ebp-0C],ecx
 0047ACD7    mov         dword ptr [ebp-8],edx
 0047ACDA    mov         dword ptr [ebp-4],eax
 0047ACDD    xor         eax,eax
 0047ACDF    push        ebp
 0047ACE0    push        47AD70
 0047ACE5    push        dword ptr fs:[eax]
 0047ACE8    mov         dword ptr fs:[eax],esp
 0047ACEB    mov         eax,dword ptr [ebp-8]
 0047ACEE    call        TReader.ReadListBegin
 0047ACF3    mov         eax,dword ptr [ebp-4]
 0047ACF6    call        TStrings.BeginUpdate
 0047ACFB    xor         eax,eax
 0047ACFD    push        ebp
 0047ACFE    push        47AD4B
 0047AD03    push        dword ptr fs:[eax]
 0047AD06    mov         dword ptr fs:[eax],esp
 0047AD09    mov         eax,dword ptr [ebp-4]
 0047AD0C    mov         edx,dword ptr [eax]
 0047AD0E    call        dword ptr [edx+44]
>0047AD11    jmp         0047AD29
 0047AD13    lea         edx,[ebp-0C]
 0047AD16    mov         eax,dword ptr [ebp-8]
 0047AD19    call        TReader.ReadString
 0047AD1E    mov         edx,dword ptr [ebp-0C]
 0047AD21    mov         eax,dword ptr [ebp-4]
 0047AD24    mov         ecx,dword ptr [eax]
 0047AD26    call        dword ptr [ecx+38]
 0047AD29    mov         eax,dword ptr [ebp-8]
 0047AD2C    call        TReader.EndOfList
 0047AD31    test        al,al
>0047AD33    je          0047AD13
 0047AD35    xor         eax,eax
 0047AD37    pop         edx
 0047AD38    pop         ecx
 0047AD39    pop         ecx
 0047AD3A    mov         dword ptr fs:[eax],edx
 0047AD3D    push        47AD52
 0047AD42    mov         eax,dword ptr [ebp-4]
 0047AD45    call        TStrings.EndUpdate
 0047AD4A    ret
>0047AD4B    jmp         @HandleFinally
>0047AD50    jmp         0047AD42
 0047AD52    mov         eax,dword ptr [ebp-8]
 0047AD55    call        TReader.ReadListEnd
 0047AD5A    xor         eax,eax
 0047AD5C    pop         edx
 0047AD5D    pop         ecx
 0047AD5E    pop         ecx
 0047AD5F    mov         dword ptr fs:[eax],edx
 0047AD62    push        47AD77
 0047AD67    lea         eax,[ebp-0C]
 0047AD6A    call        @LStrClr
 0047AD6F    ret
>0047AD70    jmp         @HandleFinally
>0047AD75    jmp         0047AD67
 0047AD77    mov         esp,ebp
 0047AD79    pop         ebp
 0047AD7A    ret
*}
end;

//0047AD7C
{*procedure sub_0047AD7C(?:?);
begin
 0047AD7C    push        ebp
 0047AD7D    mov         ebp,esp
 0047AD7F    add         esp,0FFFFFFF4
 0047AD82    mov         dword ptr [ebp-8],edx
 0047AD85    mov         dword ptr [ebp-4],eax
 0047AD88    push        0FFFF
 0047AD8D    mov         ecx,dword ptr [ebp-8]
 0047AD90    mov         dl,1
 0047AD92    mov         eax,[00476278];TFileStream
 0047AD97    call        TFileStream.Create;TFileStream.Create
 0047AD9C    mov         dword ptr [ebp-0C],eax
 0047AD9F    xor         eax,eax
 0047ADA1    push        ebp
 0047ADA2    push        47ADCE
 0047ADA7    push        dword ptr fs:[eax]
 0047ADAA    mov         dword ptr fs:[eax],esp
 0047ADAD    mov         edx,dword ptr [ebp-0C]
 0047ADB0    mov         eax,dword ptr [ebp-4]
 0047ADB3    mov         ecx,dword ptr [eax]
 0047ADB5    call        dword ptr [ecx+78];TStrings.sub_0047ADDC
 0047ADB8    xor         eax,eax
 0047ADBA    pop         edx
 0047ADBB    pop         ecx
 0047ADBC    pop         ecx
 0047ADBD    mov         dword ptr fs:[eax],edx
 0047ADC0    push        47ADD5
 0047ADC5    mov         eax,dword ptr [ebp-0C]
 0047ADC8    call        TObject.Free
 0047ADCD    ret
>0047ADCE    jmp         @HandleFinally
>0047ADD3    jmp         0047ADC5
 0047ADD5    mov         esp,ebp
 0047ADD7    pop         ebp
 0047ADD8    ret
end;*}

//0047ADDC
{*procedure sub_0047ADDC(?:?);
begin
 0047ADDC    push        ebp
 0047ADDD    mov         ebp,esp
 0047ADDF    add         esp,0FFFFFFF4
 0047ADE2    xor         ecx,ecx
 0047ADE4    mov         dword ptr [ebp-0C],ecx
 0047ADE7    mov         dword ptr [ebp-8],edx
 0047ADEA    mov         dword ptr [ebp-4],eax
 0047ADED    xor         eax,eax
 0047ADEF    push        ebp
 0047ADF0    push        47AE31
 0047ADF5    push        dword ptr fs:[eax]
 0047ADF8    mov         dword ptr fs:[eax],esp
 0047ADFB    lea         edx,[ebp-0C]
 0047ADFE    mov         eax,dword ptr [ebp-4]
 0047AE01    mov         ecx,dword ptr [eax]
 0047AE03    call        dword ptr [ecx+1C];TStrings.sub_0047A6E8
 0047AE06    mov         eax,dword ptr [ebp-0C]
 0047AE09    call        @DynArrayLength
 0047AE0E    mov         ecx,eax
 0047AE10    mov         edx,dword ptr [ebp-0C]
 0047AE13    mov         eax,dword ptr [ebp-8]
 0047AE16    call        0047BF70
 0047AE1B    xor         eax,eax
 0047AE1D    pop         edx
 0047AE1E    pop         ecx
 0047AE1F    pop         ecx
 0047AE20    mov         dword ptr fs:[eax],edx
 0047AE23    push        47AE38
 0047AE28    lea         eax,[ebp-0C]
 0047AE2B    call        @LStrClr
 0047AE30    ret
>0047AE31    jmp         @HandleFinally
>0047AE36    jmp         0047AE28
 0047AE38    mov         esp,ebp
 0047AE3A    pop         ebp
 0047AE3B    ret
end;*}

//0047AE3C
{*procedure sub_0047AE3C(?:?);
begin
 0047AE3C    push        ebp
 0047AE3D    mov         ebp,esp
 0047AE3F    add         esp,0FFFFFFF8
 0047AE42    mov         dword ptr [ebp-8],edx
 0047AE45    mov         dword ptr [ebp-4],eax
 0047AE48    pop         ecx
 0047AE49    pop         ecx
 0047AE4A    pop         ebp
 0047AE4B    ret
end;*}

//0047AE4C
{*procedure sub_0047AE4C(?:?; ?:?);
begin
 0047AE4C    push        ebp
 0047AE4D    mov         ebp,esp
 0047AE4F    add         esp,0FFFFFFF8
 0047AE52    mov         dword ptr [ebp-8],edx
 0047AE55    mov         dword ptr [ebp-4],eax
 0047AE58    mov         eax,dword ptr [ebp-4]
 0047AE5B    cmp         dword ptr [eax+0C],0
>0047AE5F    je          0047AE6C
 0047AE61    mov         eax,dword ptr [ebp-4]
 0047AE64    mov         eax,dword ptr [eax+0C]
 0047AE67    mov         edx,dword ptr [eax]
 0047AE69    call        dword ptr [edx+10]
 0047AE6C    mov         eax,dword ptr [ebp-4]
 0047AE6F    add         eax,0C
 0047AE72    mov         edx,dword ptr [ebp-8]
 0047AE75    call        @IntfCopy
 0047AE7A    mov         eax,dword ptr [ebp-4]
 0047AE7D    cmp         dword ptr [eax+0C],0
>0047AE81    je          0047AE91
 0047AE83    mov         edx,dword ptr [ebp-4]
 0047AE86    mov         eax,dword ptr [ebp-4]
 0047AE89    mov         eax,dword ptr [eax+0C]
 0047AE8C    mov         ecx,dword ptr [eax]
 0047AE8E    call        dword ptr [ecx+0C]
 0047AE91    pop         ecx
 0047AE92    pop         ecx
 0047AE93    pop         ebp
 0047AE94    ret
end;*}

//0047AE98
{*procedure sub_0047AE98(?:?);
begin
 0047AE98    push        ebp
 0047AE99    mov         ebp,esp
 0047AE9B    add         esp,0FFFFFFF4
 0047AE9E    xor         ecx,ecx
 0047AEA0    mov         dword ptr [ebp-0C],ecx
 0047AEA3    mov         dword ptr [ebp-8],edx
 0047AEA6    mov         dword ptr [ebp-4],eax
 0047AEA9    xor         eax,eax
 0047AEAB    push        ebp
 0047AEAC    push        47AEE3
 0047AEB1    push        dword ptr fs:[eax]
 0047AEB4    mov         dword ptr fs:[eax],esp
 0047AEB7    lea         eax,[ebp-0C]
 0047AEBA    mov         edx,dword ptr [ebp-8]
 0047AEBD    call        @LStrFromPChar
 0047AEC2    mov         edx,dword ptr [ebp-0C]
 0047AEC5    mov         eax,dword ptr [ebp-4]
 0047AEC8    mov         ecx,dword ptr [eax]
 0047AECA    call        dword ptr [ecx+2C];TStrings.sub_0047AEF0
 0047AECD    xor         eax,eax
 0047AECF    pop         edx
 0047AED0    pop         ecx
 0047AED1    pop         ecx
 0047AED2    mov         dword ptr fs:[eax],edx
 0047AED5    push        47AEEA
 0047AEDA    lea         eax,[ebp-0C]
 0047AEDD    call        @LStrClr
 0047AEE2    ret
>0047AEE3    jmp         @HandleFinally
>0047AEE8    jmp         0047AEDA
 0047AEEA    mov         esp,ebp
 0047AEEC    pop         ebp
 0047AEED    ret
end;*}

//0047AEF0
{*procedure sub_0047AEF0(?:?);
begin
 0047AEF0    push        ebp
 0047AEF1    mov         ebp,esp
 0047AEF3    add         esp,0FFFFFFEC
 0047AEF6    xor         ecx,ecx
 0047AEF8    mov         dword ptr [ebp-14],ecx
 0047AEFB    mov         dword ptr [ebp-8],edx
 0047AEFE    mov         dword ptr [ebp-4],eax
 0047AF01    xor         eax,eax
 0047AF03    push        ebp
 0047AF04    push        47AFC4
 0047AF09    push        dword ptr fs:[eax]
 0047AF0C    mov         dword ptr fs:[eax],esp
 0047AF0F    mov         eax,dword ptr [ebp-4]
 0047AF12    call        TStrings.BeginUpdate
 0047AF17    xor         eax,eax
 0047AF19    push        ebp
 0047AF1A    push        47AFA7
 0047AF1F    push        dword ptr fs:[eax]
 0047AF22    mov         dword ptr fs:[eax],esp
 0047AF25    mov         eax,dword ptr [ebp-4]
 0047AF28    mov         edx,dword ptr [eax]
 0047AF2A    call        dword ptr [edx+44];TStrings.Clear
 0047AF2D    mov         eax,dword ptr [ebp-8]
 0047AF30    mov         dword ptr [ebp-0C],eax
 0047AF33    cmp         dword ptr [ebp-0C],0
>0047AF37    je          0047AF91
>0047AF39    jmp         0047AF89
 0047AF3B    mov         eax,dword ptr [ebp-0C]
 0047AF3E    mov         dword ptr [ebp-10],eax
>0047AF41    jmp         0047AF46
 0047AF43    inc         dword ptr [ebp-0C]
 0047AF46    mov         eax,dword ptr [ebp-0C]
 0047AF49    mov         al,byte ptr [eax]
 0047AF4B    test        al,al
>0047AF4D    je          0047AF57
 0047AF4F    sub         al,0A
>0047AF51    je          0047AF57
 0047AF53    sub         al,3
>0047AF55    jne         0047AF43
 0047AF57    mov         ecx,dword ptr [ebp-0C]
 0047AF5A    sub         ecx,dword ptr [ebp-10]
 0047AF5D    lea         eax,[ebp-14]
 0047AF60    mov         edx,dword ptr [ebp-10]
 0047AF63    call        @LStrFromPCharLen
 0047AF68    mov         edx,dword ptr [ebp-14]
 0047AF6B    mov         eax,dword ptr [ebp-4]
 0047AF6E    mov         ecx,dword ptr [eax]
 0047AF70    call        dword ptr [ecx+38];TStrings.sub_0047A060
 0047AF73    mov         eax,dword ptr [ebp-0C]
 0047AF76    cmp         byte ptr [eax],0D
>0047AF79    jne         0047AF7E
 0047AF7B    inc         dword ptr [ebp-0C]
 0047AF7E    mov         eax,dword ptr [ebp-0C]
 0047AF81    cmp         byte ptr [eax],0A
>0047AF84    jne         0047AF89
 0047AF86    inc         dword ptr [ebp-0C]
 0047AF89    mov         eax,dword ptr [ebp-0C]
 0047AF8C    cmp         byte ptr [eax],0
>0047AF8F    jne         0047AF3B
 0047AF91    xor         eax,eax
 0047AF93    pop         edx
 0047AF94    pop         ecx
 0047AF95    pop         ecx
 0047AF96    mov         dword ptr fs:[eax],edx
 0047AF99    push        47AFAE
 0047AF9E    mov         eax,dword ptr [ebp-4]
 0047AFA1    call        TStrings.EndUpdate
 0047AFA6    ret
>0047AFA7    jmp         @HandleFinally
>0047AFAC    jmp         0047AF9E
 0047AFAE    xor         eax,eax
 0047AFB0    pop         edx
 0047AFB1    pop         ecx
 0047AFB2    pop         ecx
 0047AFB3    mov         dword ptr fs:[eax],edx
 0047AFB6    push        47AFCB
 0047AFBB    lea         eax,[ebp-14]
 0047AFBE    call        @LStrClr
 0047AFC3    ret
>0047AFC4    jmp         @HandleFinally
>0047AFC9    jmp         0047AFBB
 0047AFCB    mov         esp,ebp
 0047AFCD    pop         ebp
 0047AFCE    ret
end;*}

//0047AFD0
{*procedure sub_0047AFD0(?:?);
begin
 0047AFD0    push        ebp
 0047AFD1    mov         ebp,esp
 0047AFD3    add         esp,0FFFFFFF8
 0047AFD6    mov         byte ptr [ebp-5],dl
 0047AFD9    mov         dword ptr [ebp-4],eax
 0047AFDC    pop         ecx
 0047AFDD    pop         ecx
 0047AFDE    pop         ebp
 0047AFDF    ret
end;*}

//0047AFE0
procedure TStrings.WriteData(Writer:TWriter);
begin
{*
 0047AFE0    push        ebp
 0047AFE1    mov         ebp,esp
 0047AFE3    add         esp,0FFFFFFEC
 0047AFE6    push        ebx
 0047AFE7    xor         ecx,ecx
 0047AFE9    mov         dword ptr [ebp-14],ecx
 0047AFEC    mov         dword ptr [ebp-8],edx
 0047AFEF    mov         dword ptr [ebp-4],eax
 0047AFF2    xor         eax,eax
 0047AFF4    push        ebp
 0047AFF5    push        47B05F
 0047AFFA    push        dword ptr fs:[eax]
 0047AFFD    mov         dword ptr fs:[eax],esp
 0047B000    mov         eax,dword ptr [ebp-8]
 0047B003    call        00480AFC
 0047B008    mov         eax,dword ptr [ebp-4]
 0047B00B    mov         edx,dword ptr [eax]
 0047B00D    call        dword ptr [edx+14]
 0047B010    dec         eax
 0047B011    test        eax,eax
>0047B013    jl          0047B041
 0047B015    inc         eax
 0047B016    mov         dword ptr [ebp-10],eax
 0047B019    mov         dword ptr [ebp-0C],0
 0047B020    lea         ecx,[ebp-14]
 0047B023    mov         edx,dword ptr [ebp-0C]
 0047B026    mov         eax,dword ptr [ebp-4]
 0047B029    mov         ebx,dword ptr [eax]
 0047B02B    call        dword ptr [ebx+0C]
 0047B02E    mov         edx,dword ptr [ebp-14]
 0047B031    mov         eax,dword ptr [ebp-8]
 0047B034    call        00482400
 0047B039    inc         dword ptr [ebp-0C]
 0047B03C    dec         dword ptr [ebp-10]
>0047B03F    jne         0047B020
 0047B041    mov         eax,dword ptr [ebp-8]
 0047B044    call        00480B10
 0047B049    xor         eax,eax
 0047B04B    pop         edx
 0047B04C    pop         ecx
 0047B04D    pop         ecx
 0047B04E    mov         dword ptr fs:[eax],edx
 0047B051    push        47B066
 0047B056    lea         eax,[ebp-14]
 0047B059    call        @LStrClr
 0047B05E    ret
>0047B05F    jmp         @HandleFinally
>0047B064    jmp         0047B056
 0047B066    pop         ebx
 0047B067    mov         esp,ebp
 0047B069    pop         ebp
 0047B06A    ret
*}
end;

//0047B06C
{*procedure sub_0047B06C(?:TStringList; ?:?);
begin
 0047B06C    push        ebp
 0047B06D    mov         ebp,esp
 0047B06F    add         esp,0FFFFFFEC
 0047B072    xor         ecx,ecx
 0047B074    mov         dword ptr [ebp-14],ecx
 0047B077    mov         dword ptr [ebp-8],edx
 0047B07A    mov         dword ptr [ebp-4],eax
 0047B07D    xor         eax,eax
 0047B07F    push        ebp
 0047B080    push        47B1D8
 0047B085    push        dword ptr fs:[eax]
 0047B088    mov         dword ptr fs:[eax],esp
 0047B08B    mov         eax,dword ptr [ebp-4]
 0047B08E    call        TStrings.BeginUpdate
 0047B093    xor         eax,eax
 0047B095    push        ebp
 0047B096    push        47B1BB
 0047B09B    push        dword ptr fs:[eax]
 0047B09E    mov         dword ptr fs:[eax],esp
 0047B0A1    mov         eax,dword ptr [ebp-4]
 0047B0A4    mov         edx,dword ptr [eax]
 0047B0A6    call        dword ptr [edx+44]
 0047B0A9    mov         eax,dword ptr [ebp-8]
 0047B0AC    call        @LStrToPChar
 0047B0B1    mov         dword ptr [ebp-0C],eax
>0047B0B4    jmp         0047B0C2
 0047B0B6    mov         eax,dword ptr [ebp-0C]
 0047B0B9    push        eax
 0047B0BA    call        user32.CharNextA
 0047B0BF    mov         dword ptr [ebp-0C],eax
 0047B0C2    mov         eax,dword ptr [ebp-0C]
 0047B0C5    mov         al,byte ptr [eax]
 0047B0C7    dec         eax
 0047B0C8    sub         al,20
>0047B0CA    jb          0047B0B6
>0047B0CC    jmp         0047B199
 0047B0D1    mov         eax,dword ptr [ebp-4]
 0047B0D4    call        0047B210
 0047B0D9    mov         edx,dword ptr [ebp-0C]
 0047B0DC    cmp         al,byte ptr [edx]
>0047B0DE    jne         0047B0F7
 0047B0E0    mov         eax,dword ptr [ebp-4]
 0047B0E3    call        0047B210
 0047B0E8    mov         edx,eax
 0047B0EA    lea         ecx,[ebp-14]
 0047B0ED    lea         eax,[ebp-0C]
 0047B0F0    call        0046653C
>0047B0F5    jmp         0047B133
 0047B0F7    mov         eax,dword ptr [ebp-0C]
 0047B0FA    mov         dword ptr [ebp-10],eax
>0047B0FD    jmp         0047B10B
 0047B0FF    mov         eax,dword ptr [ebp-0C]
 0047B102    push        eax
 0047B103    call        user32.CharNextA
 0047B108    mov         dword ptr [ebp-0C],eax
 0047B10B    mov         eax,dword ptr [ebp-0C]
 0047B10E    cmp         byte ptr [eax],20
>0047B111    jbe         0047B122
 0047B113    mov         eax,dword ptr [ebp-4]
 0047B116    call        0047B1E4
 0047B11B    mov         edx,dword ptr [ebp-0C]
 0047B11E    cmp         al,byte ptr [edx]
>0047B120    jne         0047B0FF
 0047B122    mov         ecx,dword ptr [ebp-0C]
 0047B125    sub         ecx,dword ptr [ebp-10]
 0047B128    lea         eax,[ebp-14]
 0047B12B    mov         edx,dword ptr [ebp-10]
 0047B12E    call        @LStrFromPCharLen
 0047B133    mov         edx,dword ptr [ebp-14]
 0047B136    mov         eax,dword ptr [ebp-4]
 0047B139    mov         ecx,dword ptr [eax]
 0047B13B    call        dword ptr [ecx+38]
>0047B13E    jmp         0047B14C
 0047B140    mov         eax,dword ptr [ebp-0C]
 0047B143    push        eax
 0047B144    call        user32.CharNextA
 0047B149    mov         dword ptr [ebp-0C],eax
 0047B14C    mov         eax,dword ptr [ebp-0C]
 0047B14F    mov         al,byte ptr [eax]
 0047B151    dec         eax
 0047B152    sub         al,20
>0047B154    jb          0047B140
 0047B156    mov         eax,dword ptr [ebp-4]
 0047B159    call        0047B1E4
 0047B15E    mov         edx,dword ptr [ebp-0C]
 0047B161    cmp         al,byte ptr [edx]
>0047B163    jne         0047B199
 0047B165    mov         eax,dword ptr [ebp-0C]
 0047B168    mov         dword ptr [ebp-10],eax
 0047B16B    mov         eax,dword ptr [ebp-10]
 0047B16E    push        eax
 0047B16F    call        user32.CharNextA
 0047B174    cmp         byte ptr [eax],0
>0047B177    jne         0047B183
 0047B179    xor         edx,edx
 0047B17B    mov         eax,dword ptr [ebp-4]
 0047B17E    mov         ecx,dword ptr [eax]
 0047B180    call        dword ptr [ecx+38]
 0047B183    mov         eax,dword ptr [ebp-0C]
 0047B186    push        eax
 0047B187    call        user32.CharNextA
 0047B18C    mov         dword ptr [ebp-0C],eax
 0047B18F    mov         eax,dword ptr [ebp-0C]
 0047B192    mov         al,byte ptr [eax]
 0047B194    dec         eax
 0047B195    sub         al,20
>0047B197    jb          0047B183
 0047B199    mov         eax,dword ptr [ebp-0C]
 0047B19C    cmp         byte ptr [eax],0
>0047B19F    jne         0047B0D1
 0047B1A5    xor         eax,eax
 0047B1A7    pop         edx
 0047B1A8    pop         ecx
 0047B1A9    pop         ecx
 0047B1AA    mov         dword ptr fs:[eax],edx
 0047B1AD    push        47B1C2
 0047B1B2    mov         eax,dword ptr [ebp-4]
 0047B1B5    call        TStrings.EndUpdate
 0047B1BA    ret
>0047B1BB    jmp         @HandleFinally
>0047B1C0    jmp         0047B1B2
 0047B1C2    xor         eax,eax
 0047B1C4    pop         edx
 0047B1C5    pop         ecx
 0047B1C6    pop         ecx
 0047B1C7    mov         dword ptr fs:[eax],edx
 0047B1CA    push        47B1DF
 0047B1CF    lea         eax,[ebp-14]
 0047B1D2    call        @LStrClr
 0047B1D7    ret
>0047B1D8    jmp         @HandleFinally
>0047B1DD    jmp         0047B1CF
 0047B1DF    mov         esp,ebp
 0047B1E1    pop         ebp
 0047B1E2    ret
end;*}

//0047B1E4
{*function sub_0047B1E4(?:?):?;
begin
 0047B1E4    push        ebp
 0047B1E5    mov         ebp,esp
 0047B1E7    add         esp,0FFFFFFF8
 0047B1EA    mov         dword ptr [ebp-4],eax
 0047B1ED    mov         eax,dword ptr [ebp-4]
 0047B1F0    test        byte ptr [eax+4],1
>0047B1F4    jne         0047B200
 0047B1F6    mov         dl,2C
 0047B1F8    mov         eax,dword ptr [ebp-4]
 0047B1FB    call        0047B23C
 0047B200    mov         eax,dword ptr [ebp-4]
 0047B203    mov         al,byte ptr [eax+5]
 0047B206    mov         byte ptr [ebp-5],al
 0047B209    mov         al,byte ptr [ebp-5]
 0047B20C    pop         ecx
 0047B20D    pop         ecx
 0047B20E    pop         ebp
 0047B20F    ret
end;*}

//0047B210
{*function sub_0047B210(?:?):?;
begin
 0047B210    push        ebp
 0047B211    mov         ebp,esp
 0047B213    add         esp,0FFFFFFF8
 0047B216    mov         dword ptr [ebp-4],eax
 0047B219    mov         eax,dword ptr [ebp-4]
 0047B21C    test        byte ptr [eax+4],2
>0047B220    jne         0047B22C
 0047B222    mov         dl,22
 0047B224    mov         eax,dword ptr [ebp-4]
 0047B227    call        0047B270
 0047B22C    mov         eax,dword ptr [ebp-4]
 0047B22F    mov         al,byte ptr [eax+6]
 0047B232    mov         byte ptr [ebp-5],al
 0047B235    mov         al,byte ptr [ebp-5]
 0047B238    pop         ecx
 0047B239    pop         ecx
 0047B23A    pop         ebp
 0047B23B    ret
end;*}

//0047B23C
{*procedure sub_0047B23C(?:TStringList; ?:?);
begin
 0047B23C    push        ebp
 0047B23D    mov         ebp,esp
 0047B23F    add         esp,0FFFFFFF8
 0047B242    mov         byte ptr [ebp-5],dl
 0047B245    mov         dword ptr [ebp-4],eax
 0047B248    mov         eax,dword ptr [ebp-4]
 0047B24B    mov         al,byte ptr [eax+5]
 0047B24E    cmp         al,byte ptr [ebp-5]
>0047B251    jne         0047B25C
 0047B253    mov         eax,dword ptr [ebp-4]
 0047B256    test        byte ptr [eax+4],1
>0047B25A    jne         0047B26C
 0047B25C    mov         eax,dword ptr [ebp-4]
 0047B25F    or          byte ptr [eax+4],1
 0047B263    mov         al,byte ptr [ebp-5]
 0047B266    mov         edx,dword ptr [ebp-4]
 0047B269    mov         byte ptr [edx+5],al
 0047B26C    pop         ecx
 0047B26D    pop         ecx
 0047B26E    pop         ebp
 0047B26F    ret
end;*}

//0047B270
{*procedure sub_0047B270(?:?; ?:?);
begin
 0047B270    push        ebp
 0047B271    mov         ebp,esp
 0047B273    add         esp,0FFFFFFF8
 0047B276    mov         byte ptr [ebp-5],dl
 0047B279    mov         dword ptr [ebp-4],eax
 0047B27C    mov         eax,dword ptr [ebp-4]
 0047B27F    mov         al,byte ptr [eax+6]
 0047B282    cmp         al,byte ptr [ebp-5]
>0047B285    jne         0047B290
 0047B287    mov         eax,dword ptr [ebp-4]
 0047B28A    test        byte ptr [eax+4],2
>0047B28E    jne         0047B2A0
 0047B290    mov         eax,dword ptr [ebp-4]
 0047B293    or          byte ptr [eax+4],2
 0047B297    mov         al,byte ptr [ebp-5]
 0047B29A    mov         edx,dword ptr [ebp-4]
 0047B29D    mov         byte ptr [edx+6],al
 0047B2A0    pop         ecx
 0047B2A1    pop         ecx
 0047B2A2    pop         ebp
 0047B2A3    ret
end;*}

//0047B2A4
{*function sub_0047B2A4(?:?; ?:?):?;
begin
 0047B2A4    push        ebp
 0047B2A5    mov         ebp,esp
 0047B2A7    add         esp,0FFFFFFF0
 0047B2AA    mov         dword ptr [ebp-0C],ecx
 0047B2AD    mov         dword ptr [ebp-8],edx
 0047B2B0    mov         dword ptr [ebp-4],eax
 0047B2B3    mov         edx,dword ptr [ebp-0C]
 0047B2B6    mov         eax,dword ptr [ebp-8]
 0047B2B9    call        00466420
 0047B2BE    mov         dword ptr [ebp-10],eax
 0047B2C1    mov         eax,dword ptr [ebp-10]
 0047B2C4    mov         esp,ebp
 0047B2C6    pop         ebp
 0047B2C7    ret
end;*}

//0047B2C8
{*function sub_0047B2C8(?:TStrings):?;
begin
 0047B2C8    push        ebp
 0047B2C9    mov         ebp,esp
 0047B2CB    add         esp,0FFFFFFF8
 0047B2CE    mov         dword ptr [ebp-4],eax
 0047B2D1    mov         eax,dword ptr [ebp-4]
 0047B2D4    test        byte ptr [eax+4],4;TStrings.FDefined:TStringsDefined
>0047B2D8    jne         0047B2E4
 0047B2DA    mov         dl,3D
 0047B2DC    mov         eax,dword ptr [ebp-4]
 0047B2DF    call        0047B2F4
 0047B2E4    mov         eax,dword ptr [ebp-4]
 0047B2E7    mov         al,byte ptr [eax+7];TStrings.FNameValueSeparator:Char
 0047B2EA    mov         byte ptr [ebp-5],al
 0047B2ED    mov         al,byte ptr [ebp-5]
 0047B2F0    pop         ecx
 0047B2F1    pop         ecx
 0047B2F2    pop         ebp
 0047B2F3    ret
end;*}

//0047B2F4
{*procedure sub_0047B2F4(?:TStrings; ?:?);
begin
 0047B2F4    push        ebp
 0047B2F5    mov         ebp,esp
 0047B2F7    add         esp,0FFFFFFF8
 0047B2FA    mov         byte ptr [ebp-5],dl
 0047B2FD    mov         dword ptr [ebp-4],eax
 0047B300    mov         eax,dword ptr [ebp-4]
 0047B303    mov         al,byte ptr [eax+7];TStrings.FNameValueSeparator:Char
 0047B306    cmp         al,byte ptr [ebp-5]
>0047B309    jne         0047B314
 0047B30B    mov         eax,dword ptr [ebp-4]
 0047B30E    test        byte ptr [eax+4],4;TStrings.FDefined:TStringsDefined
>0047B312    jne         0047B324
 0047B314    mov         eax,dword ptr [ebp-4]
 0047B317    or          byte ptr [eax+4],4;TStrings.FDefined:TStringsDefined
 0047B31B    mov         al,byte ptr [ebp-5]
 0047B31E    mov         edx,dword ptr [ebp-4]
 0047B321    mov         byte ptr [edx+7],al;TStrings.FNameValueSeparator:Char
 0047B324    pop         ecx
 0047B325    pop         ecx
 0047B326    pop         ebp
 0047B327    ret
end;*}

//0047B328
destructor TStringList.Destroy;
begin
{*
 0047B328    push        ebp
 0047B329    mov         ebp,esp
 0047B32B    add         esp,0FFFFFFF8
 0047B32E    call        @BeforeDestruction
 0047B333    mov         byte ptr [ebp-5],dl
 0047B336    mov         dword ptr [ebp-4],eax
 0047B339    mov         eax,dword ptr [ebp-4]
 0047B33C    xor         edx,edx
 0047B33E    mov         dword ptr [eax+20],edx
 0047B341    mov         dword ptr [eax+24],edx
 0047B344    mov         eax,dword ptr [ebp-4]
 0047B347    xor         edx,edx
 0047B349    mov         dword ptr [eax+28],edx
 0047B34C    mov         dword ptr [eax+2C],edx
 0047B34F    mov         dl,byte ptr [ebp-5]
 0047B352    and         dl,0FC
 0047B355    mov         eax,dword ptr [ebp-4]
 0047B358    call        TStrings.Destroy
 0047B35D    mov         eax,dword ptr [ebp-4]
 0047B360    cmp         dword ptr [eax+14],0
>0047B364    je          0047B37D
 0047B366    mov         eax,dword ptr [ebp-4]
 0047B369    mov         ecx,dword ptr [eax+14]
 0047B36C    mov         eax,dword ptr [ebp-4]
 0047B36F    mov         eax,dword ptr [eax+10]
 0047B372    mov         edx,dword ptr ds:[476054];TStringItem
 0047B378    call        @FinalizeArray
 0047B37D    mov         eax,dword ptr [ebp-4]
 0047B380    xor         edx,edx
 0047B382    mov         dword ptr [eax+14],edx
 0047B385    xor         edx,edx
 0047B387    mov         eax,dword ptr [ebp-4]
 0047B38A    mov         ecx,dword ptr [eax]
 0047B38C    call        dword ptr [ecx+28]
 0047B38F    cmp         byte ptr [ebp-5],0
>0047B393    jle         0047B39D
 0047B395    mov         eax,dword ptr [ebp-4]
 0047B398    call        @ClassDestroy
 0047B39D    pop         ecx
 0047B39E    pop         ecx
 0047B39F    pop         ebp
 0047B3A0    ret
*}
end;

//0047B3A4
{*function sub_0047B3A4(?:?):?;
begin
 0047B3A4    push        ebp
 0047B3A5    mov         ebp,esp
 0047B3A7    add         esp,0FFFFFFF4
 0047B3AA    push        ebx
 0047B3AB    mov         dword ptr [ebp-8],edx
 0047B3AE    mov         dword ptr [ebp-4],eax
 0047B3B1    xor         ecx,ecx
 0047B3B3    mov         edx,dword ptr [ebp-8]
 0047B3B6    mov         eax,dword ptr [ebp-4]
 0047B3B9    mov         ebx,dword ptr [eax]
 0047B3BB    call        dword ptr [ebx+3C];TStringList.sub_0047B3CC
 0047B3BE    mov         dword ptr [ebp-0C],eax
 0047B3C1    mov         eax,dword ptr [ebp-0C]
 0047B3C4    pop         ebx
 0047B3C5    mov         esp,ebp
 0047B3C7    pop         ebp
 0047B3C8    ret
end;*}

//0047B3CC
{*function sub_0047B3CC(?:?; ?:?):?;
begin
 0047B3CC    push        ebp
 0047B3CD    mov         ebp,esp
 0047B3CF    add         esp,0FFFFFFF0
 0047B3D2    push        ebx
 0047B3D3    mov         dword ptr [ebp-0C],ecx
 0047B3D6    mov         dword ptr [ebp-8],edx
 0047B3D9    mov         dword ptr [ebp-4],eax
 0047B3DC    mov         eax,dword ptr [ebp-4]
 0047B3DF    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>0047B3E3    jne         0047B3F0
 0047B3E5    mov         eax,dword ptr [ebp-4]
 0047B3E8    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 0047B3EB    mov         dword ptr [ebp-10],eax
>0047B3EE    jmp         0047B425
 0047B3F0    lea         ecx,[ebp-10]
 0047B3F3    mov         edx,dword ptr [ebp-8]
 0047B3F6    mov         eax,dword ptr [ebp-4]
 0047B3F9    mov         ebx,dword ptr [eax]
 0047B3FB    call        dword ptr [ebx+8C];TStringList.sub_0047B678
 0047B401    test        al,al
>0047B403    je          0047B425
 0047B405    mov         eax,dword ptr [ebp-4]
 0047B408    mov         al,byte ptr [eax+1D];TStringList.FDuplicates:TDuplicates
 0047B40B    sub         al,1
>0047B40D    jb          0047B43A
 0047B40F    dec         al
>0047B411    je          0047B415
>0047B413    jmp         0047B425
 0047B415    mov         edx,dword ptr ds:[55B23C];^SDuplicateString:TResStringRec
 0047B41B    xor         ecx,ecx
 0047B41D    mov         eax,dword ptr [ebp-4]
 0047B420    call        0047A418
 0047B425    mov         eax,dword ptr [ebp-0C]
 0047B428    push        eax
 0047B429    mov         ecx,dword ptr [ebp-8]
 0047B42C    mov         edx,dword ptr [ebp-10]
 0047B42F    mov         eax,dword ptr [ebp-4]
 0047B432    mov         ebx,dword ptr [eax]
 0047B434    call        dword ptr [ebx+88];TStringList.sub_0047B910
 0047B43A    mov         eax,dword ptr [ebp-10]
 0047B43D    pop         ebx
 0047B43E    mov         esp,ebp
 0047B440    pop         ebp
 0047B441    ret
end;*}

//0047B444
procedure sub_0047B444;
begin
{*
 0047B444    push        ebp
 0047B445    mov         ebp,esp
 0047B447    push        ecx
 0047B448    push        ebx
 0047B449    mov         dword ptr [ebp-4],eax
 0047B44C    mov         eax,dword ptr [ebp-4]
 0047B44F    cmp         dword ptr [eax+8],0;TStringList.FUpdateCount:Integer
>0047B453    jne         0047B46B
 0047B455    mov         eax,dword ptr [ebp-4]
 0047B458    cmp         word ptr [eax+22],0;TStringList.?f22:word
>0047B45D    je          0047B46B
 0047B45F    mov         ebx,dword ptr [ebp-4]
 0047B462    mov         edx,dword ptr [ebp-4]
 0047B465    mov         eax,dword ptr [ebx+24];TStringList.?f24:dword
 0047B468    call        dword ptr [ebx+20];TStringList.FOnChange
 0047B46B    pop         ebx
 0047B46C    pop         ecx
 0047B46D    pop         ebp
 0047B46E    ret
*}
end;

//0047B470
procedure sub_0047B470;
begin
{*
 0047B470    push        ebp
 0047B471    mov         ebp,esp
 0047B473    push        ecx
 0047B474    push        ebx
 0047B475    mov         dword ptr [ebp-4],eax
 0047B478    mov         eax,dword ptr [ebp-4]
 0047B47B    cmp         dword ptr [eax+8],0;TStringList.FUpdateCount:Integer
>0047B47F    jne         0047B497
 0047B481    mov         eax,dword ptr [ebp-4]
 0047B484    cmp         word ptr [eax+2A],0;TStringList.?f2A:word
>0047B489    je          0047B497
 0047B48B    mov         ebx,dword ptr [ebp-4]
 0047B48E    mov         edx,dword ptr [ebp-4]
 0047B491    mov         eax,dword ptr [ebx+2C];TStringList.?f2C:dword
 0047B494    call        dword ptr [ebx+28];TStringList.FOnChanging
 0047B497    pop         ebx
 0047B498    pop         ecx
 0047B499    pop         ebp
 0047B49A    ret
*}
end;

//0047B49C
procedure TStringList.Clear;
begin
{*
 0047B49C    push        ebp
 0047B49D    mov         ebp,esp
 0047B49F    push        ecx
 0047B4A0    mov         dword ptr [ebp-4],eax
 0047B4A3    mov         eax,dword ptr [ebp-4]
 0047B4A6    cmp         dword ptr [eax+14],0;TStringList.FCount:Integer
>0047B4AA    je          0047B4EB
 0047B4AC    mov         eax,dword ptr [ebp-4]
 0047B4AF    mov         edx,dword ptr [eax]
 0047B4B1    call        dword ptr [edx+84];TStringList.sub_0047B470
 0047B4B7    mov         eax,dword ptr [ebp-4]
 0047B4BA    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B4BD    mov         edx,dword ptr [ebp-4]
 0047B4C0    mov         ecx,dword ptr [edx+14];TStringList.FCount:Integer
 0047B4C3    mov         edx,dword ptr ds:[476054];TStringItem
 0047B4C9    call        @FinalizeArray
 0047B4CE    mov         eax,dword ptr [ebp-4]
 0047B4D1    xor         edx,edx
 0047B4D3    mov         dword ptr [eax+14],edx;TStringList.FCount:Integer
 0047B4D6    xor         edx,edx
 0047B4D8    mov         eax,dword ptr [ebp-4]
 0047B4DB    mov         ecx,dword ptr [eax]
 0047B4DD    call        dword ptr [ecx+28];TStringList.sub_0047BB50
 0047B4E0    mov         eax,dword ptr [ebp-4]
 0047B4E3    mov         edx,dword ptr [eax]
 0047B4E5    call        dword ptr [edx+80];TStringList.sub_0047B444
 0047B4EB    pop         ecx
 0047B4EC    pop         ebp
 0047B4ED    ret
*}
end;

//0047B4F0
{*procedure sub_0047B4F0(?:?);
begin
 0047B4F0    push        ebp
 0047B4F1    mov         ebp,esp
 0047B4F3    add         esp,0FFFFFFF8
 0047B4F6    push        ebx
 0047B4F7    mov         dword ptr [ebp-8],edx
 0047B4FA    mov         dword ptr [ebp-4],eax
 0047B4FD    cmp         dword ptr [ebp-8],0
>0047B501    jl          0047B50E
 0047B503    mov         eax,dword ptr [ebp-8]
 0047B506    mov         edx,dword ptr [ebp-4]
 0047B509    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0047B50C    jl          0047B51F
 0047B50E    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 0047B514    mov         ecx,dword ptr [ebp-8]
 0047B517    mov         eax,dword ptr [ebp-4]
 0047B51A    call        0047A418
 0047B51F    mov         eax,dword ptr [ebp-4]
 0047B522    mov         edx,dword ptr [eax]
 0047B524    call        dword ptr [edx+84];TStringList.sub_0047B470
 0047B52A    mov         eax,dword ptr [ebp-4]
 0047B52D    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B530    mov         edx,dword ptr [ebp-8]
 0047B533    lea         eax,[eax+edx*8]
 0047B536    mov         edx,dword ptr ds:[476054];TStringItem
 0047B53C    call        @Finalize
 0047B541    mov         eax,dword ptr [ebp-4]
 0047B544    dec         dword ptr [eax+14];TStringList.FCount:Integer
 0047B547    mov         eax,dword ptr [ebp-8]
 0047B54A    mov         edx,dword ptr [ebp-4]
 0047B54D    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0047B550    jge         0047B57E
 0047B552    mov         eax,dword ptr [ebp-4]
 0047B555    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 0047B558    sub         eax,dword ptr [ebp-8]
 0047B55B    mov         ecx,eax
 0047B55D    shl         ecx,3
 0047B560    mov         eax,dword ptr [ebp-4]
 0047B563    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B566    mov         edx,dword ptr [ebp-8]
 0047B569    lea         edx,[eax+edx*8]
 0047B56C    mov         eax,dword ptr [ebp-4]
 0047B56F    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B572    mov         ebx,dword ptr [ebp-8]
 0047B575    lea         eax,[eax+ebx*8+8]
 0047B579    call        Move
 0047B57E    mov         eax,dword ptr [ebp-4]
 0047B581    mov         edx,dword ptr [eax]
 0047B583    call        dword ptr [edx+80];TStringList.sub_0047B444
 0047B589    pop         ebx
 0047B58A    pop         ecx
 0047B58B    pop         ecx
 0047B58C    pop         ebp
 0047B58D    ret
end;*}

//0047B590
{*procedure sub_0047B590(?:?; ?:?);
begin
 0047B590    push        ebp
 0047B591    mov         ebp,esp
 0047B593    add         esp,0FFFFFFF4
 0047B596    mov         dword ptr [ebp-0C],ecx
 0047B599    mov         dword ptr [ebp-8],edx
 0047B59C    mov         dword ptr [ebp-4],eax
 0047B59F    cmp         dword ptr [ebp-8],0
>0047B5A3    jl          0047B5B0
 0047B5A5    mov         eax,dword ptr [ebp-8]
 0047B5A8    mov         edx,dword ptr [ebp-4]
 0047B5AB    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0047B5AE    jl          0047B5C1
 0047B5B0    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 0047B5B6    mov         ecx,dword ptr [ebp-8]
 0047B5B9    mov         eax,dword ptr [ebp-4]
 0047B5BC    call        0047A418
 0047B5C1    cmp         dword ptr [ebp-0C],0
>0047B5C5    jl          0047B5D2
 0047B5C7    mov         eax,dword ptr [ebp-0C]
 0047B5CA    mov         edx,dword ptr [ebp-4]
 0047B5CD    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0047B5D0    jl          0047B5E3
 0047B5D2    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 0047B5D8    mov         ecx,dword ptr [ebp-0C]
 0047B5DB    mov         eax,dword ptr [ebp-4]
 0047B5DE    call        0047A418
 0047B5E3    mov         eax,dword ptr [ebp-4]
 0047B5E6    mov         edx,dword ptr [eax]
 0047B5E8    call        dword ptr [edx+84];TStringList.sub_0047B470
 0047B5EE    mov         ecx,dword ptr [ebp-0C]
 0047B5F1    mov         edx,dword ptr [ebp-8]
 0047B5F4    mov         eax,dword ptr [ebp-4]
 0047B5F7    call        0047B60C
 0047B5FC    mov         eax,dword ptr [ebp-4]
 0047B5FF    mov         edx,dword ptr [eax]
 0047B601    call        dword ptr [edx+80];TStringList.sub_0047B444
 0047B607    mov         esp,ebp
 0047B609    pop         ebp
 0047B60A    ret
end;*}

//0047B60C
{*procedure sub_0047B60C(?:TStringList; ?:?; ?:?);
begin
 0047B60C    push        ebp
 0047B60D    mov         ebp,esp
 0047B60F    add         esp,0FFFFFFE8
 0047B612    mov         dword ptr [ebp-0C],ecx
 0047B615    mov         dword ptr [ebp-8],edx
 0047B618    mov         dword ptr [ebp-4],eax
 0047B61B    mov         eax,dword ptr [ebp-4]
 0047B61E    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B621    mov         edx,dword ptr [ebp-8]
 0047B624    lea         eax,[eax+edx*8]
 0047B627    mov         dword ptr [ebp-14],eax
 0047B62A    mov         eax,dword ptr [ebp-4]
 0047B62D    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B630    mov         edx,dword ptr [ebp-0C]
 0047B633    lea         eax,[eax+edx*8]
 0047B636    mov         dword ptr [ebp-18],eax
 0047B639    mov         eax,dword ptr [ebp-14]
 0047B63C    mov         eax,dword ptr [eax]
 0047B63E    mov         dword ptr [ebp-10],eax
 0047B641    mov         eax,dword ptr [ebp-18]
 0047B644    mov         eax,dword ptr [eax]
 0047B646    mov         edx,dword ptr [ebp-14]
 0047B649    mov         dword ptr [edx],eax
 0047B64B    mov         eax,dword ptr [ebp-10]
 0047B64E    mov         edx,dword ptr [ebp-18]
 0047B651    mov         dword ptr [edx],eax
 0047B653    mov         eax,dword ptr [ebp-14]
 0047B656    mov         eax,dword ptr [eax+4]
 0047B659    mov         dword ptr [ebp-10],eax
 0047B65C    mov         eax,dword ptr [ebp-18]
 0047B65F    mov         eax,dword ptr [eax+4]
 0047B662    mov         edx,dword ptr [ebp-14]
 0047B665    mov         dword ptr [edx+4],eax
 0047B668    mov         eax,dword ptr [ebp-10]
 0047B66B    mov         edx,dword ptr [ebp-18]
 0047B66E    mov         dword ptr [edx+4],eax
 0047B671    mov         esp,ebp
 0047B673    pop         ebp
 0047B674    ret
end;*}

//0047B678
{*function sub_0047B678(?:?; ?:?):?;
begin
 0047B678    push        ebp
 0047B679    mov         ebp,esp
 0047B67B    add         esp,0FFFFFFE0
 0047B67E    push        ebx
 0047B67F    mov         dword ptr [ebp-0C],ecx
 0047B682    mov         dword ptr [ebp-8],edx
 0047B685    mov         dword ptr [ebp-4],eax
 0047B688    mov         byte ptr [ebp-0D],0
 0047B68C    xor         eax,eax
 0047B68E    mov         dword ptr [ebp-14],eax
 0047B691    mov         eax,dword ptr [ebp-4]
 0047B694    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 0047B697    dec         eax
 0047B698    mov         dword ptr [ebp-18],eax
 0047B69B    mov         eax,dword ptr [ebp-14]
 0047B69E    cmp         eax,dword ptr [ebp-18]
>0047B6A1    jg          0047B6FF
 0047B6A3    mov         eax,dword ptr [ebp-14]
 0047B6A6    add         eax,dword ptr [ebp-18]
 0047B6A9    shr         eax,1
 0047B6AB    mov         dword ptr [ebp-1C],eax
 0047B6AE    mov         eax,dword ptr [ebp-4]
 0047B6B1    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B6B4    mov         edx,dword ptr [ebp-1C]
 0047B6B7    mov         edx,dword ptr [eax+edx*8]
 0047B6BA    mov         ecx,dword ptr [ebp-8]
 0047B6BD    mov         eax,dword ptr [ebp-4]
 0047B6C0    mov         ebx,dword ptr [eax]
 0047B6C2    call        dword ptr [ebx+34];TStringList.sub_0047BC8C
 0047B6C5    mov         dword ptr [ebp-20],eax
 0047B6C8    cmp         dword ptr [ebp-20],0
>0047B6CC    jge         0047B6D7
 0047B6CE    mov         eax,dword ptr [ebp-1C]
 0047B6D1    inc         eax
 0047B6D2    mov         dword ptr [ebp-14],eax
>0047B6D5    jmp         0047B6F7
 0047B6D7    mov         eax,dword ptr [ebp-1C]
 0047B6DA    dec         eax
 0047B6DB    mov         dword ptr [ebp-18],eax
 0047B6DE    cmp         dword ptr [ebp-20],0
>0047B6E2    jne         0047B6F7
 0047B6E4    mov         byte ptr [ebp-0D],1
 0047B6E8    mov         eax,dword ptr [ebp-4]
 0047B6EB    cmp         byte ptr [eax+1D],1;TStringList.FDuplicates:TDuplicates
>0047B6EF    je          0047B6F7
 0047B6F1    mov         eax,dword ptr [ebp-1C]
 0047B6F4    mov         dword ptr [ebp-14],eax
 0047B6F7    mov         eax,dword ptr [ebp-14]
 0047B6FA    cmp         eax,dword ptr [ebp-18]
>0047B6FD    jle         0047B6A3
 0047B6FF    mov         eax,dword ptr [ebp-0C]
 0047B702    mov         edx,dword ptr [ebp-14]
 0047B705    mov         dword ptr [eax],edx
 0047B707    mov         al,byte ptr [ebp-0D]
 0047B70A    pop         ebx
 0047B70B    mov         esp,ebp
 0047B70D    pop         ebp
 0047B70E    ret
end;*}

//0047B710
{*procedure sub_0047B710(?:?; ?:?);
begin
 0047B710    push        ebp
 0047B711    mov         ebp,esp
 0047B713    add         esp,0FFFFFFF4
 0047B716    mov         dword ptr [ebp-0C],ecx
 0047B719    mov         dword ptr [ebp-8],edx
 0047B71C    mov         dword ptr [ebp-4],eax
 0047B71F    cmp         dword ptr [ebp-8],0
>0047B723    jl          0047B730
 0047B725    mov         eax,dword ptr [ebp-8]
 0047B728    mov         edx,dword ptr [ebp-4]
 0047B72B    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0047B72E    jl          0047B741
 0047B730    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 0047B736    mov         ecx,dword ptr [ebp-8]
 0047B739    mov         eax,dword ptr [ebp-4]
 0047B73C    call        0047A418
 0047B741    mov         eax,dword ptr [ebp-0C]
 0047B744    mov         edx,dword ptr [ebp-4]
 0047B747    mov         edx,dword ptr [edx+10];TStringList.FList:PStringItemList
 0047B74A    mov         ecx,dword ptr [ebp-8]
 0047B74D    mov         edx,dword ptr [edx+ecx*8]
 0047B750    call        @LStrAsg
 0047B755    mov         esp,ebp
 0047B757    pop         ebp
 0047B758    ret
end;*}

//0047B75C
{*function sub_0047B75C:?;
begin
 0047B75C    push        ebp
 0047B75D    mov         ebp,esp
 0047B75F    add         esp,0FFFFFFF8
 0047B762    mov         dword ptr [ebp-4],eax
 0047B765    mov         eax,dword ptr [ebp-4]
 0047B768    mov         eax,dword ptr [eax+18];TStringList.FCapacity:Integer
 0047B76B    mov         dword ptr [ebp-8],eax
 0047B76E    mov         eax,dword ptr [ebp-8]
 0047B771    pop         ecx
 0047B772    pop         ecx
 0047B773    pop         ebp
 0047B774    ret
end;*}

//0047B778
{*function sub_0047B778:?;
begin
 0047B778    push        ebp
 0047B779    mov         ebp,esp
 0047B77B    add         esp,0FFFFFFF8
 0047B77E    mov         dword ptr [ebp-4],eax
 0047B781    mov         eax,dword ptr [ebp-4]
 0047B784    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 0047B787    mov         dword ptr [ebp-8],eax
 0047B78A    mov         eax,dword ptr [ebp-8]
 0047B78D    pop         ecx
 0047B78E    pop         ecx
 0047B78F    pop         ebp
 0047B790    ret
end;*}

//0047B794
{*function sub_0047B794(?:?):?;
begin
 0047B794    push        ebp
 0047B795    mov         ebp,esp
 0047B797    add         esp,0FFFFFFF4
 0047B79A    mov         dword ptr [ebp-8],edx
 0047B79D    mov         dword ptr [ebp-4],eax
 0047B7A0    cmp         dword ptr [ebp-8],0
>0047B7A4    jl          0047B7B1
 0047B7A6    mov         eax,dword ptr [ebp-8]
 0047B7A9    mov         edx,dword ptr [ebp-4]
 0047B7AC    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0047B7AF    jl          0047B7C2
 0047B7B1    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 0047B7B7    mov         ecx,dword ptr [ebp-8]
 0047B7BA    mov         eax,dword ptr [ebp-4]
 0047B7BD    call        0047A418
 0047B7C2    mov         eax,dword ptr [ebp-4]
 0047B7C5    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B7C8    mov         edx,dword ptr [ebp-8]
 0047B7CB    mov         eax,dword ptr [eax+edx*8+4]
 0047B7CF    mov         dword ptr [ebp-0C],eax
 0047B7D2    mov         eax,dword ptr [ebp-0C]
 0047B7D5    mov         esp,ebp
 0047B7D7    pop         ebp
 0047B7D8    ret
end;*}

//0047B7DC
procedure sub_0047B7DC(?:TStringList);
begin
{*
 0047B7DC    push        ebp
 0047B7DD    mov         ebp,esp
 0047B7DF    add         esp,0FFFFFFF8
 0047B7E2    mov         dword ptr [ebp-4],eax
 0047B7E5    mov         eax,dword ptr [ebp-4]
 0047B7E8    cmp         dword ptr [eax+18],40
>0047B7EC    jle         0047B803
 0047B7EE    mov         eax,dword ptr [ebp-4]
 0047B7F1    mov         eax,dword ptr [eax+18]
 0047B7F4    test        eax,eax
>0047B7F6    jns         0047B7FB
 0047B7F8    add         eax,3
 0047B7FB    sar         eax,2
 0047B7FE    mov         dword ptr [ebp-8],eax
>0047B801    jmp         0047B81C
 0047B803    mov         eax,dword ptr [ebp-4]
 0047B806    cmp         dword ptr [eax+18],8
>0047B80A    jle         0047B815
 0047B80C    mov         dword ptr [ebp-8],10
>0047B813    jmp         0047B81C
 0047B815    mov         dword ptr [ebp-8],4
 0047B81C    mov         eax,dword ptr [ebp-4]
 0047B81F    mov         edx,dword ptr [eax+18]
 0047B822    add         edx,dword ptr [ebp-8]
 0047B825    mov         eax,dword ptr [ebp-4]
 0047B828    mov         ecx,dword ptr [eax]
 0047B82A    call        dword ptr [ecx+28]
 0047B82D    pop         ecx
 0047B82E    pop         ecx
 0047B82F    pop         ebp
 0047B830    ret
*}
end;

//0047B834
{*function sub_0047B834(?:?):?;
begin
 0047B834    push        ebp
 0047B835    mov         ebp,esp
 0047B837    add         esp,0FFFFFFF4
 0047B83A    push        ebx
 0047B83B    mov         dword ptr [ebp-8],edx
 0047B83E    mov         dword ptr [ebp-4],eax
 0047B841    mov         eax,dword ptr [ebp-4]
 0047B844    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>0047B848    jne         0047B85A
 0047B84A    mov         edx,dword ptr [ebp-8]
 0047B84D    mov         eax,dword ptr [ebp-4]
 0047B850    call        0047A8C4
 0047B855    mov         dword ptr [ebp-0C],eax
>0047B858    jmp         0047B876
 0047B85A    lea         ecx,[ebp-0C]
 0047B85D    mov         edx,dword ptr [ebp-8]
 0047B860    mov         eax,dword ptr [ebp-4]
 0047B863    mov         ebx,dword ptr [eax]
 0047B865    call        dword ptr [ebx+8C];TStringList.sub_0047B678
 0047B86B    test        al,al
>0047B86D    jne         0047B876
 0047B86F    mov         dword ptr [ebp-0C],0FFFFFFFF
 0047B876    mov         eax,dword ptr [ebp-0C]
 0047B879    pop         ebx
 0047B87A    mov         esp,ebp
 0047B87C    pop         ebp
 0047B87D    ret
end;*}

//0047B880
{*procedure sub_0047B880(?:?; ?:?);
begin
 0047B880    push        ebp
 0047B881    mov         ebp,esp
 0047B883    add         esp,0FFFFFFF4
 0047B886    push        ebx
 0047B887    mov         dword ptr [ebp-0C],ecx
 0047B88A    mov         dword ptr [ebp-8],edx
 0047B88D    mov         dword ptr [ebp-4],eax
 0047B890    push        0
 0047B892    mov         ecx,dword ptr [ebp-0C]
 0047B895    mov         edx,dword ptr [ebp-8]
 0047B898    mov         eax,dword ptr [ebp-4]
 0047B89B    mov         ebx,dword ptr [eax]
 0047B89D    call        dword ptr [ebx+64];TStringList.sub_0047B8A8
 0047B8A0    pop         ebx
 0047B8A1    mov         esp,ebp
 0047B8A3    pop         ebp
 0047B8A4    ret
end;*}

//0047B8A8
{*procedure sub_0047B8A8(?:?; ?:?; ?:?);
begin
 0047B8A8    push        ebp
 0047B8A9    mov         ebp,esp
 0047B8AB    add         esp,0FFFFFFF4
 0047B8AE    push        ebx
 0047B8AF    mov         dword ptr [ebp-0C],ecx
 0047B8B2    mov         dword ptr [ebp-8],edx
 0047B8B5    mov         dword ptr [ebp-4],eax
 0047B8B8    mov         eax,dword ptr [ebp-4]
 0047B8BB    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>0047B8BF    je          0047B8D1
 0047B8C1    mov         edx,dword ptr ds:[55B350];^SSortedListError:TResStringRec
 0047B8C7    xor         ecx,ecx
 0047B8C9    mov         eax,dword ptr [ebp-4]
 0047B8CC    call        0047A418
 0047B8D1    cmp         dword ptr [ebp-8],0
>0047B8D5    jl          0047B8E2
 0047B8D7    mov         eax,dword ptr [ebp-8]
 0047B8DA    mov         edx,dword ptr [ebp-4]
 0047B8DD    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0047B8E0    jle         0047B8F3
 0047B8E2    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 0047B8E8    mov         ecx,dword ptr [ebp-8]
 0047B8EB    mov         eax,dword ptr [ebp-4]
 0047B8EE    call        0047A418
 0047B8F3    mov         eax,dword ptr [ebp+8]
 0047B8F6    push        eax
 0047B8F7    mov         ecx,dword ptr [ebp-0C]
 0047B8FA    mov         edx,dword ptr [ebp-8]
 0047B8FD    mov         eax,dword ptr [ebp-4]
 0047B900    mov         ebx,dword ptr [eax]
 0047B902    call        dword ptr [ebx+88];TStringList.sub_0047B910
 0047B908    pop         ebx
 0047B909    mov         esp,ebp
 0047B90B    pop         ebp
 0047B90C    ret         4
end;*}

//0047B910
{*procedure sub_0047B910(?:?; ?:?; ?:?);
begin
 0047B910    push        ebp
 0047B911    mov         ebp,esp
 0047B913    add         esp,0FFFFFFF0
 0047B916    mov         dword ptr [ebp-0C],ecx
 0047B919    mov         dword ptr [ebp-8],edx
 0047B91C    mov         dword ptr [ebp-4],eax
 0047B91F    mov         eax,dword ptr [ebp-4]
 0047B922    mov         edx,dword ptr [eax]
 0047B924    call        dword ptr [edx+84];TStringList.sub_0047B470
 0047B92A    mov         eax,dword ptr [ebp-4]
 0047B92D    mov         eax,dword ptr [eax+14];TStringList.FCount:Integer
 0047B930    mov         edx,dword ptr [ebp-4]
 0047B933    cmp         eax,dword ptr [edx+18];TStringList.FCapacity:Integer
>0047B936    jne         0047B940
 0047B938    mov         eax,dword ptr [ebp-4]
 0047B93B    call        0047B7DC
 0047B940    mov         eax,dword ptr [ebp-8]
 0047B943    mov         edx,dword ptr [ebp-4]
 0047B946    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0047B949    jge         0047B975
 0047B94B    mov         eax,dword ptr [ebp-4]
 0047B94E    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B951    mov         edx,dword ptr [ebp-8]
 0047B954    lea         edx,[eax+edx*8+8]
 0047B958    mov         eax,dword ptr [ebp-4]
 0047B95B    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B95E    mov         ecx,dword ptr [ebp-8]
 0047B961    lea         eax,[eax+ecx*8]
 0047B964    mov         ecx,dword ptr [ebp-4]
 0047B967    mov         ecx,dword ptr [ecx+14]
 0047B96A    sub         ecx,dword ptr [ebp-8]
 0047B96D    shl         ecx,3
 0047B970    call        Move
 0047B975    mov         eax,dword ptr [ebp-4]
 0047B978    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047B97B    mov         edx,dword ptr [ebp-8]
 0047B97E    lea         eax,[eax+edx*8]
 0047B981    mov         dword ptr [ebp-10],eax
 0047B984    mov         eax,dword ptr [ebp-10]
 0047B987    xor         edx,edx
 0047B989    mov         dword ptr [eax],edx
 0047B98B    mov         eax,dword ptr [ebp+8]
 0047B98E    mov         edx,dword ptr [ebp-10]
 0047B991    mov         dword ptr [edx+4],eax
 0047B994    mov         eax,dword ptr [ebp-10]
 0047B997    mov         edx,dword ptr [ebp-0C]
 0047B99A    call        @LStrAsg
 0047B99F    mov         eax,dword ptr [ebp-4]
 0047B9A2    inc         dword ptr [eax+14];TStringList.FCount:Integer
 0047B9A5    mov         eax,dword ptr [ebp-4]
 0047B9A8    mov         edx,dword ptr [eax]
 0047B9AA    call        dword ptr [edx+80];TStringList.sub_0047B444
 0047B9B0    mov         esp,ebp
 0047B9B2    pop         ebp
 0047B9B3    ret         4
end;*}

//0047B9B8
{*procedure sub_0047B9B8(?:?; ?:?);
begin
 0047B9B8    push        ebp
 0047B9B9    mov         ebp,esp
 0047B9BB    add         esp,0FFFFFFF4
 0047B9BE    mov         dword ptr [ebp-0C],ecx
 0047B9C1    mov         dword ptr [ebp-8],edx
 0047B9C4    mov         dword ptr [ebp-4],eax
 0047B9C7    mov         eax,dword ptr [ebp-4]
 0047B9CA    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>0047B9CE    je          0047B9E0
 0047B9D0    mov         edx,dword ptr ds:[55B350];^SSortedListError:TResStringRec
 0047B9D6    xor         ecx,ecx
 0047B9D8    mov         eax,dword ptr [ebp-4]
 0047B9DB    call        0047A418
 0047B9E0    cmp         dword ptr [ebp-8],0
>0047B9E4    jl          0047B9F1
 0047B9E6    mov         eax,dword ptr [ebp-8]
 0047B9E9    mov         edx,dword ptr [ebp-4]
 0047B9EC    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0047B9EF    jl          0047BA02
 0047B9F1    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 0047B9F7    mov         ecx,dword ptr [ebp-8]
 0047B9FA    mov         eax,dword ptr [ebp-4]
 0047B9FD    call        0047A418
 0047BA02    mov         eax,dword ptr [ebp-4]
 0047BA05    mov         edx,dword ptr [eax]
 0047BA07    call        dword ptr [edx+84];TStringList.sub_0047B470
 0047BA0D    mov         eax,dword ptr [ebp-4]
 0047BA10    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047BA13    mov         edx,dword ptr [ebp-8]
 0047BA16    lea         eax,[eax+edx*8]
 0047BA19    mov         edx,dword ptr [ebp-0C]
 0047BA1C    call        @LStrAsg
 0047BA21    mov         eax,dword ptr [ebp-4]
 0047BA24    mov         edx,dword ptr [eax]
 0047BA26    call        dword ptr [edx+80];TStringList.sub_0047B444
 0047BA2C    mov         esp,ebp
 0047BA2E    pop         ebp
 0047BA2F    ret
end;*}

//0047BA30
{*procedure sub_0047BA30(?:?; ?:?);
begin
 0047BA30    push        ebp
 0047BA31    mov         ebp,esp
 0047BA33    add         esp,0FFFFFFF4
 0047BA36    mov         dword ptr [ebp-0C],ecx
 0047BA39    mov         dword ptr [ebp-8],edx
 0047BA3C    mov         dword ptr [ebp-4],eax
 0047BA3F    cmp         dword ptr [ebp-8],0
>0047BA43    jl          0047BA50
 0047BA45    mov         eax,dword ptr [ebp-8]
 0047BA48    mov         edx,dword ptr [ebp-4]
 0047BA4B    cmp         eax,dword ptr [edx+14];TStringList.FCount:Integer
>0047BA4E    jl          0047BA61
 0047BA50    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 0047BA56    mov         ecx,dword ptr [ebp-8]
 0047BA59    mov         eax,dword ptr [ebp-4]
 0047BA5C    call        0047A418
 0047BA61    mov         eax,dword ptr [ebp-4]
 0047BA64    mov         edx,dword ptr [eax]
 0047BA66    call        dword ptr [edx+84];TStringList.sub_0047B470
 0047BA6C    mov         eax,dword ptr [ebp-4]
 0047BA6F    mov         eax,dword ptr [eax+10];TStringList.FList:PStringItemList
 0047BA72    mov         edx,dword ptr [ebp-8]
 0047BA75    mov         ecx,dword ptr [ebp-0C]
 0047BA78    mov         dword ptr [eax+edx*8+4],ecx
 0047BA7C    mov         eax,dword ptr [ebp-4]
 0047BA7F    mov         edx,dword ptr [eax]
 0047BA81    call        dword ptr [edx+80];TStringList.sub_0047B444
 0047BA87    mov         esp,ebp
 0047BA89    pop         ebp
 0047BA8A    ret
end;*}

//0047BA8C
{*procedure sub_0047BA8C(?:TStringList; ?:?; ?:?; ?:?);
begin
 0047BA8C    push        ebp
 0047BA8D    mov         ebp,esp
 0047BA8F    add         esp,0FFFFFFE8
 0047BA92    mov         dword ptr [ebp-0C],ecx
 0047BA95    mov         dword ptr [ebp-8],edx
 0047BA98    mov         dword ptr [ebp-4],eax
 0047BA9B    mov         eax,dword ptr [ebp-8]
 0047BA9E    mov         dword ptr [ebp-10],eax
 0047BAA1    mov         eax,dword ptr [ebp-0C]
 0047BAA4    mov         dword ptr [ebp-14],eax
 0047BAA7    mov         eax,dword ptr [ebp-8]
 0047BAAA    add         eax,dword ptr [ebp-0C]
 0047BAAD    shr         eax,1
 0047BAAF    mov         dword ptr [ebp-18],eax
>0047BAB2    jmp         0047BAB7
 0047BAB4    inc         dword ptr [ebp-10]
 0047BAB7    mov         ecx,dword ptr [ebp-18]
 0047BABA    mov         edx,dword ptr [ebp-10]
 0047BABD    mov         eax,dword ptr [ebp-4]
 0047BAC0    call        dword ptr [ebp+8]
 0047BAC3    test        eax,eax
>0047BAC5    jl          0047BAB4
>0047BAC7    jmp         0047BACC
 0047BAC9    dec         dword ptr [ebp-14]
 0047BACC    mov         ecx,dword ptr [ebp-18]
 0047BACF    mov         edx,dword ptr [ebp-14]
 0047BAD2    mov         eax,dword ptr [ebp-4]
 0047BAD5    call        dword ptr [ebp+8]
 0047BAD8    test        eax,eax
>0047BADA    jg          0047BAC9
 0047BADC    mov         eax,dword ptr [ebp-10]
 0047BADF    cmp         eax,dword ptr [ebp-14]
>0047BAE2    jg          0047BB16
 0047BAE4    mov         ecx,dword ptr [ebp-14]
 0047BAE7    mov         edx,dword ptr [ebp-10]
 0047BAEA    mov         eax,dword ptr [ebp-4]
 0047BAED    call        0047B60C
 0047BAF2    mov         eax,dword ptr [ebp-18]
 0047BAF5    cmp         eax,dword ptr [ebp-10]
>0047BAF8    jne         0047BB02
 0047BAFA    mov         eax,dword ptr [ebp-14]
 0047BAFD    mov         dword ptr [ebp-18],eax
>0047BB00    jmp         0047BB10
 0047BB02    mov         eax,dword ptr [ebp-18]
 0047BB05    cmp         eax,dword ptr [ebp-14]
>0047BB08    jne         0047BB10
 0047BB0A    mov         eax,dword ptr [ebp-10]
 0047BB0D    mov         dword ptr [ebp-18],eax
 0047BB10    inc         dword ptr [ebp-10]
 0047BB13    dec         dword ptr [ebp-14]
 0047BB16    mov         eax,dword ptr [ebp-10]
 0047BB19    cmp         eax,dword ptr [ebp-14]
>0047BB1C    jle         0047BAB7
 0047BB1E    mov         eax,dword ptr [ebp-8]
 0047BB21    cmp         eax,dword ptr [ebp-14]
>0047BB24    jge         0047BB38
 0047BB26    mov         eax,dword ptr [ebp+8]
 0047BB29    push        eax
 0047BB2A    mov         ecx,dword ptr [ebp-14]
 0047BB2D    mov         edx,dword ptr [ebp-8]
 0047BB30    mov         eax,dword ptr [ebp-4]
 0047BB33    call        0047BA8C
 0047BB38    mov         eax,dword ptr [ebp-10]
 0047BB3B    mov         dword ptr [ebp-8],eax
 0047BB3E    mov         eax,dword ptr [ebp-10]
 0047BB41    cmp         eax,dword ptr [ebp-0C]
>0047BB44    jl          0047BA9B
 0047BB4A    mov         esp,ebp
 0047BB4C    pop         ebp
 0047BB4D    ret         4
end;*}

//0047BB50
{*procedure sub_0047BB50(?:?);
begin
 0047BB50    push        ebp
 0047BB51    mov         ebp,esp
 0047BB53    add         esp,0FFFFFFF8
 0047BB56    mov         dword ptr [ebp-8],edx
 0047BB59    mov         dword ptr [ebp-4],eax
 0047BB5C    mov         edx,dword ptr [ebp-8]
 0047BB5F    shl         edx,3
 0047BB62    mov         eax,dword ptr [ebp-4]
 0047BB65    add         eax,10;TStringList.FList:PStringItemList
 0047BB68    call        @ReallocMem
 0047BB6D    mov         eax,dword ptr [ebp-8]
 0047BB70    mov         edx,dword ptr [ebp-4]
 0047BB73    mov         dword ptr [edx+18],eax;TStringList.FCapacity:Integer
 0047BB76    pop         ecx
 0047BB77    pop         ecx
 0047BB78    pop         ebp
 0047BB79    ret
end;*}

//0047BB7C
{*procedure sub_0047BB7C(?:TStrings; ?:?);
begin
 0047BB7C    push        ebp
 0047BB7D    mov         ebp,esp
 0047BB7F    add         esp,0FFFFFFF8
 0047BB82    mov         byte ptr [ebp-5],dl
 0047BB85    mov         dword ptr [ebp-4],eax
 0047BB88    mov         eax,dword ptr [ebp-4]
 0047BB8B    mov         al,byte ptr [eax+1C]
 0047BB8E    cmp         al,byte ptr [ebp-5]
>0047BB91    je          0047BBAD
 0047BB93    cmp         byte ptr [ebp-5],0
>0047BB97    je          0047BBA4
 0047BB99    mov         eax,dword ptr [ebp-4]
 0047BB9C    mov         edx,dword ptr [eax]
 0047BB9E    call        dword ptr [edx+90]
 0047BBA4    mov         al,byte ptr [ebp-5]
 0047BBA7    mov         edx,dword ptr [ebp-4]
 0047BBAA    mov         byte ptr [edx+1C],al
 0047BBAD    pop         ecx
 0047BBAE    pop         ecx
 0047BBAF    pop         ebp
 0047BBB0    ret
end;*}

//0047BBB4
{*procedure sub_0047BBB4(?:?);
begin
 0047BBB4    push        ebp
 0047BBB5    mov         ebp,esp
 0047BBB7    add         esp,0FFFFFFF8
 0047BBBA    mov         byte ptr [ebp-5],dl
 0047BBBD    mov         dword ptr [ebp-4],eax
 0047BBC0    cmp         byte ptr [ebp-5],0
>0047BBC4    je          0047BBD3
 0047BBC6    mov         eax,dword ptr [ebp-4]
 0047BBC9    mov         edx,dword ptr [eax]
 0047BBCB    call        dword ptr [edx+84];TStringList.sub_0047B470
>0047BBD1    jmp         0047BBDE
 0047BBD3    mov         eax,dword ptr [ebp-4]
 0047BBD6    mov         edx,dword ptr [eax]
 0047BBD8    call        dword ptr [edx+80];TStringList.sub_0047B444
 0047BBDE    pop         ecx
 0047BBDF    pop         ecx
 0047BBE0    pop         ebp
 0047BBE1    ret
end;*}

//0047BBE4
{*function sub_0047BBE4(?:?; ?:?; ?:?):?;
begin
 0047BBE4    push        ebp
 0047BBE5    mov         ebp,esp
 0047BBE7    add         esp,0FFFFFFF0
 0047BBEA    push        ebx
 0047BBEB    mov         dword ptr [ebp-0C],ecx
 0047BBEE    mov         dword ptr [ebp-8],edx
 0047BBF1    mov         dword ptr [ebp-4],eax
 0047BBF4    mov         eax,dword ptr [ebp-4]
 0047BBF7    mov         eax,dword ptr [eax+10]
 0047BBFA    mov         edx,dword ptr [ebp-0C]
 0047BBFD    mov         ecx,dword ptr [eax+edx*8]
 0047BC00    mov         eax,dword ptr [ebp-4]
 0047BC03    mov         eax,dword ptr [eax+10]
 0047BC06    mov         edx,dword ptr [ebp-8]
 0047BC09    mov         edx,dword ptr [eax+edx*8]
 0047BC0C    mov         eax,dword ptr [ebp-4]
 0047BC0F    mov         ebx,dword ptr [eax]
 0047BC11    call        dword ptr [ebx+34]
 0047BC14    mov         dword ptr [ebp-10],eax
 0047BC17    mov         eax,dword ptr [ebp-10]
 0047BC1A    pop         ebx
 0047BC1B    mov         esp,ebp
 0047BC1D    pop         ebp
 0047BC1E    ret
end;*}

//0047BC20
procedure sub_0047BC20;
begin
{*
 0047BC20    push        ebp
 0047BC21    mov         ebp,esp
 0047BC23    push        ecx
 0047BC24    mov         dword ptr [ebp-4],eax
 0047BC27    mov         edx,47BBE4;sub_0047BBE4
 0047BC2C    mov         eax,dword ptr [ebp-4]
 0047BC2F    mov         ecx,dword ptr [eax]
 0047BC31    call        dword ptr [ecx+94];TStringList.sub_0047BC3C
 0047BC37    pop         ecx
 0047BC38    pop         ebp
 0047BC39    ret
*}
end;

//0047BC3C
{*procedure sub_0047BC3C(?:?);
begin
 0047BC3C    push        ebp
 0047BC3D    mov         ebp,esp
 0047BC3F    add         esp,0FFFFFFF8
 0047BC42    mov         dword ptr [ebp-8],edx
 0047BC45    mov         dword ptr [ebp-4],eax
 0047BC48    mov         eax,dword ptr [ebp-4]
 0047BC4B    cmp         byte ptr [eax+1C],0;TStringList.FSorted:Boolean
>0047BC4F    jne         0047BC85
 0047BC51    mov         eax,dword ptr [ebp-4]
 0047BC54    cmp         dword ptr [eax+14],1;TStringList.FCount:Integer
>0047BC58    jle         0047BC85
 0047BC5A    mov         eax,dword ptr [ebp-4]
 0047BC5D    mov         edx,dword ptr [eax]
 0047BC5F    call        dword ptr [edx+84];TStringList.sub_0047B470
 0047BC65    mov         eax,dword ptr [ebp-8]
 0047BC68    push        eax
 0047BC69    mov         eax,dword ptr [ebp-4]
 0047BC6C    mov         ecx,dword ptr [eax+14];TStringList.FCount:Integer
 0047BC6F    dec         ecx
 0047BC70    xor         edx,edx
 0047BC72    mov         eax,dword ptr [ebp-4]
 0047BC75    call        0047BA8C
 0047BC7A    mov         eax,dword ptr [ebp-4]
 0047BC7D    mov         edx,dword ptr [eax]
 0047BC7F    call        dword ptr [edx+80];TStringList.sub_0047B444
 0047BC85    pop         ecx
 0047BC86    pop         ecx
 0047BC87    pop         ebp
 0047BC88    ret
end;*}

//0047BC8C
{*function sub_0047BC8C(?:?; ?:?):?;
begin
 0047BC8C    push        ebp
 0047BC8D    mov         ebp,esp
 0047BC8F    add         esp,0FFFFFFF0
 0047BC92    mov         dword ptr [ebp-0C],ecx
 0047BC95    mov         dword ptr [ebp-8],edx
 0047BC98    mov         dword ptr [ebp-4],eax
 0047BC9B    mov         eax,dword ptr [ebp-4]
 0047BC9E    cmp         byte ptr [eax+1E],0;TStringList.FCaseSensitive:Boolean
>0047BCA2    je          0047BCB4
 0047BCA4    mov         edx,dword ptr [ebp-0C]
 0047BCA7    mov         eax,dword ptr [ebp-8]
 0047BCAA    call        004663D4
 0047BCAF    mov         dword ptr [ebp-10],eax
>0047BCB2    jmp         0047BCC2
 0047BCB4    mov         edx,dword ptr [ebp-0C]
 0047BCB7    mov         eax,dword ptr [ebp-8]
 0047BCBA    call        00466420
 0047BCBF    mov         dword ptr [ebp-10],eax
 0047BCC2    mov         eax,dword ptr [ebp-10]
 0047BCC5    mov         esp,ebp
 0047BCC7    pop         ebp
 0047BCC8    ret
end;*}

//0047BCCC
{*function sub_0047BCCC(?:TStream):?;
begin
 0047BCCC    push        ebp
 0047BCCD    mov         ebp,esp
 0047BCCF    add         esp,0FFFFFFF0
 0047BCD2    mov         dword ptr [ebp-4],eax
 0047BCD5    push        0
 0047BCD7    push        0
 0047BCD9    mov         dl,1
 0047BCDB    mov         eax,dword ptr [ebp-4]
 0047BCDE    mov         ecx,dword ptr [eax]
 0047BCE0    call        dword ptr [ecx+18]
 0047BCE3    mov         dword ptr [ebp-10],eax
 0047BCE6    mov         dword ptr [ebp-0C],edx
 0047BCE9    mov         eax,dword ptr [ebp-10]
 0047BCEC    mov         edx,dword ptr [ebp-0C]
 0047BCEF    mov         esp,ebp
 0047BCF1    pop         ebp
 0047BCF2    ret
end;*}

//0047BCF4
{*procedure sub_0047BCF4(?:TStream; ?:?; ?:?);
begin
 0047BCF4    push        ebp
 0047BCF5    mov         ebp,esp
 0047BCF7    push        ecx
 0047BCF8    mov         dword ptr [ebp-4],eax
 0047BCFB    push        dword ptr [ebp+0C]
 0047BCFE    push        dword ptr [ebp+8]
 0047BD01    xor         edx,edx
 0047BD03    mov         eax,dword ptr [ebp-4]
 0047BD06    mov         ecx,dword ptr [eax]
 0047BD08    call        dword ptr [ecx+18]
 0047BD0B    pop         ecx
 0047BD0C    pop         ebp
 0047BD0D    ret         8
end;*}

//0047BD10
procedure sub_0047BD10;
begin
{*
 0047BD10    push        ebp
 0047BD11    mov         ebp,esp
 0047BD13    add         esp,0FFFFFFE8
 0047BD16    mov         dword ptr [ebp-4],eax
 0047BD19    push        0
 0047BD1B    push        0
 0047BD1D    mov         dl,1
 0047BD1F    mov         eax,dword ptr [ebp-4]
 0047BD22    mov         ecx,dword ptr [eax]
 0047BD24    call        dword ptr [ecx+18];TStream.sub_0047BEB8
 0047BD27    mov         dword ptr [ebp-18],eax
 0047BD2A    mov         dword ptr [ebp-14],edx
 0047BD2D    push        0
 0047BD2F    push        0
 0047BD31    mov         dl,2
 0047BD33    mov         eax,dword ptr [ebp-4]
 0047BD36    mov         ecx,dword ptr [eax]
 0047BD38    call        dword ptr [ecx+18];TStream.sub_0047BEB8
 0047BD3B    mov         dword ptr [ebp-10],eax
 0047BD3E    mov         dword ptr [ebp-0C],edx
 0047BD41    push        dword ptr [ebp-14]
 0047BD44    push        dword ptr [ebp-18]
 0047BD47    xor         edx,edx
 0047BD49    mov         eax,dword ptr [ebp-4]
 0047BD4C    mov         ecx,dword ptr [eax]
 0047BD4E    call        dword ptr [ecx+18];TStream.sub_0047BEB8
 0047BD51    mov         eax,dword ptr [ebp-10]
 0047BD54    mov         edx,dword ptr [ebp-0C]
 0047BD57    mov         esp,ebp
 0047BD59    pop         ebp
 0047BD5A    ret
*}
end;

//0047BD5C
{*procedure sub_0047BD5C(?:?);
begin
 0047BD5C    push        ebp
 0047BD5D    mov         ebp,esp
 0047BD5F    add         esp,0FFFFFFF8
 0047BD62    mov         dword ptr [ebp-8],edx
 0047BD65    mov         dword ptr [ebp-4],eax
 0047BD68    pop         ecx
 0047BD69    pop         ecx
 0047BD6A    pop         ebp
 0047BD6B    ret
end;*}

//0047BD6C
{*procedure sub_0047BD6C(?:TMemoryStream; ?:?; ?:?);
begin
 0047BD6C    push        ebp
 0047BD6D    mov         ebp,esp
 0047BD6F    push        ecx
 0047BD70    mov         dword ptr [ebp-4],eax
 0047BD73    push        dword ptr [ebp+0C]
 0047BD76    push        dword ptr [ebp+8]
 0047BD79    mov         eax,dword ptr [ebp-4]
 0047BD7C    mov         edx,dword ptr [eax]
 0047BD7E    call        dword ptr [edx+8]
 0047BD81    pop         ecx
 0047BD82    pop         ebp
 0047BD83    ret         8
end;*}

//0047BD88
{*procedure sub_0047BD88(?:?; ?:?);
begin
 0047BD88    push        ebp
 0047BD89    mov         ebp,esp
 0047BD8B    push        ecx
 0047BD8C    mov         dword ptr [ebp-4],eax
 0047BD8F    cmp         dword ptr [ebp+0C],0FFFFFFFF
>0047BD93    jne         0047BDA0
 0047BD95    cmp         dword ptr [ebp+8],80000000
>0047BD9C    jb          0047BDB5
>0047BD9E    jmp         0047BDA2
>0047BDA0    jl          0047BDB5
 0047BDA2    cmp         dword ptr [ebp+0C],0
>0047BDA6    jne         0047BDB3
 0047BDA8    cmp         dword ptr [ebp+8],7FFFFFFF
>0047BDAF    jbe         0047BDCC
>0047BDB1    jmp         0047BDB5
>0047BDB3    jle         0047BDCC
 0047BDB5    mov         ecx,dword ptr ds:[55B638];^SRangeError:TResStringRec
 0047BDBB    mov         dl,1
 0047BDBD    mov         eax,[004656E8];ERangeError
 0047BDC2    call        Exception.Create;ERangeError.Create
 0047BDC7    call        @RaiseExcept
 0047BDCC    mov         eax,dword ptr [ebp+8]
 0047BDCF    mov         edx,eax
 0047BDD1    mov         eax,dword ptr [ebp-4]
 0047BDD4    mov         ecx,dword ptr [eax]
 0047BDD6    call        dword ptr [ecx+4];TStream.sub_0047BD5C
 0047BDD9    pop         ecx
 0047BDDA    pop         ebp
 0047BDDB    ret         8
end;*}

//0047BDE0
procedure RaiseException;
begin
{*
 0047BDE0    push        ebp
 0047BDE1    mov         ebp,esp
 0047BDE3    add         esp,0FFFFFEF8
 0047BDE9    lea         edx,[ebp-108]
 0047BDEF    mov         eax,dword ptr [ebp+8]
 0047BDF2    mov         eax,dword ptr [eax-4]
 0047BDF5    mov         eax,dword ptr [eax]
 0047BDF7    call        TObject.ClassName
 0047BDFC    lea         eax,[ebp-108]
 0047BE02    mov         dword ptr [ebp-8],eax
 0047BE05    mov         byte ptr [ebp-4],4
 0047BE09    lea         eax,[ebp-8]
 0047BE0C    push        eax
 0047BE0D    push        0
 0047BE0F    mov         ecx,dword ptr ds:[55B68C];^SSeekNotImplemented:TResStringRec
 0047BE15    mov         dl,1
 0047BE17    mov         eax,[00475468];EStreamError
 0047BE1C    call        Exception.CreateResFmt
 0047BE21    call        @RaiseExcept
 0047BE26    mov         esp,ebp
 0047BE28    pop         ebp
 0047BE29    ret
*}
end;

//0047BE2C
{*function sub_0047BE2C(?:?; ?:?):?;
begin
 0047BE2C    push        ebp
 0047BE2D    mov         ebp,esp
 0047BE2F    add         esp,0FFFFFFD8
 0047BE32    mov         word ptr [ebp-1E],cx
 0047BE36    mov         dword ptr [ebp-1C],edx
 0047BE39    mov         dword ptr [ebp-4],eax
 0047BE3C    mov         eax,dword ptr [ebp-4]
 0047BE3F    mov         dword ptr [ebp-0C],eax
 0047BE42    mov         eax,dword ptr [eax]
 0047BE44    mov         eax,dword ptr [eax+18]
 0047BE47    mov         dword ptr [ebp-10],eax
 0047BE4A    mov         eax,dword ptr [ebp-4]
 0047BE4D    call        TObject.ClassType
 0047BE52    mov         dword ptr [ebp-28],eax
>0047BE55    jmp         0047BE62
 0047BE57    mov         eax,dword ptr [ebp-28]
 0047BE5A    call        TObject.ClassParent
 0047BE5F    mov         dword ptr [ebp-28],eax
 0047BE62    cmp         dword ptr [ebp-28],0
>0047BE66    je          0047BE73
 0047BE68    mov         eax,dword ptr [ebp-28]
 0047BE6B    cmp         eax,dword ptr ds:[476190];TStream
>0047BE71    jne         0047BE57
 0047BE73    cmp         dword ptr [ebp-28],0
>0047BE77    jne         0047BE80
 0047BE79    push        ebp
 0047BE7A    call        RaiseException
 0047BE7F    pop         ecx
 0047BE80    lea         eax,[ebp-28]
 0047BE83    mov         dword ptr [ebp-14],eax
 0047BE86    mov         eax,dword ptr [eax]
 0047BE88    mov         eax,dword ptr [eax+18]
 0047BE8B    mov         dword ptr [ebp-18],eax
 0047BE8E    mov         eax,dword ptr [ebp-10]
 0047BE91    cmp         eax,dword ptr [ebp-18]
>0047BE94    jne         0047BE9D
 0047BE96    push        ebp
 0047BE97    call        RaiseException
 0047BE9C    pop         ecx
 0047BE9D    mov         eax,dword ptr [ebp-1C]
 0047BEA0    cdq
 0047BEA1    push        edx
 0047BEA2    push        eax
 0047BEA3    mov         dl,byte ptr [ebp-1E]
 0047BEA6    mov         eax,dword ptr [ebp-4]
 0047BEA9    mov         ecx,dword ptr [eax]
 0047BEAB    call        dword ptr [ecx+18];TStream.sub_0047BEB8
 0047BEAE    mov         dword ptr [ebp-24],eax
 0047BEB1    mov         eax,dword ptr [ebp-24]
 0047BEB4    mov         esp,ebp
 0047BEB6    pop         ebp
 0047BEB7    ret
end;*}

//0047BEB8
{*procedure sub_0047BEB8(?:?; ?:?; ?:?);
begin
 0047BEB8    push        ebp
 0047BEB9    mov         ebp,esp
 0047BEBB    add         esp,0FFFFFFF0
 0047BEBE    push        ebx
 0047BEBF    mov         byte ptr [ebp-5],dl
 0047BEC2    mov         dword ptr [ebp-4],eax
 0047BEC5    cmp         dword ptr [ebp+0C],0FFFFFFFF
>0047BEC9    jne         0047BED6
 0047BECB    cmp         dword ptr [ebp+8],80000000
>0047BED2    jb          0047BEEB
>0047BED4    jmp         0047BED8
>0047BED6    jl          0047BEEB
 0047BED8    cmp         dword ptr [ebp+0C],0
>0047BEDC    jne         0047BEE9
 0047BEDE    cmp         dword ptr [ebp+8],7FFFFFFF
>0047BEE5    jbe         0047BF02
>0047BEE7    jmp         0047BEEB
>0047BEE9    jle         0047BF02
 0047BEEB    mov         ecx,dword ptr ds:[55B638];^SRangeError:TResStringRec
 0047BEF1    mov         dl,1
 0047BEF3    mov         eax,[004656E8];ERangeError
 0047BEF8    call        Exception.Create;ERangeError.Create
 0047BEFD    call        @RaiseExcept
 0047BF02    mov         eax,dword ptr [ebp+8]
 0047BF05    mov         edx,eax
 0047BF07    xor         ecx,ecx
 0047BF09    mov         cl,byte ptr [ebp-5]
 0047BF0C    mov         eax,dword ptr [ebp-4]
 0047BF0F    mov         ebx,dword ptr [eax]
 0047BF11    call        dword ptr [ebx+14];TStream.sub_0047BE2C
 0047BF14    cdq
 0047BF15    mov         dword ptr [ebp-10],eax
 0047BF18    mov         dword ptr [ebp-0C],edx
 0047BF1B    mov         eax,dword ptr [ebp-10]
 0047BF1E    mov         edx,dword ptr [ebp-0C]
 0047BF21    pop         ebx
 0047BF22    mov         esp,ebp
 0047BF24    pop         ebp
 0047BF25    ret         8
end;*}

//0047BF28
procedure sub_0047BF28(?:TStream; ?:Pointer; ?:Integer);
begin
{*
 0047BF28    push        ebp
 0047BF29    mov         ebp,esp
 0047BF2B    add         esp,0FFFFFFF4
 0047BF2E    push        ebx
 0047BF2F    mov         dword ptr [ebp-0C],ecx
 0047BF32    mov         dword ptr [ebp-8],edx
 0047BF35    mov         dword ptr [ebp-4],eax
 0047BF38    cmp         dword ptr [ebp-0C],0
>0047BF3C    je          0047BF68
 0047BF3E    mov         edx,dword ptr [ebp-8]
 0047BF41    mov         ecx,dword ptr [ebp-0C]
 0047BF44    mov         eax,dword ptr [ebp-4]
 0047BF47    mov         ebx,dword ptr [eax]
 0047BF49    call        dword ptr [ebx+0C]
 0047BF4C    cmp         eax,dword ptr [ebp-0C]
>0047BF4F    je          0047BF68
 0047BF51    mov         ecx,dword ptr ds:[55B628];^SReadError:TResStringRec
 0047BF57    mov         dl,1
 0047BF59    mov         eax,[00475630];EReadError
 0047BF5E    call        Exception.Create;EReadError.Create
 0047BF63    call        @RaiseExcept
 0047BF68    pop         ebx
 0047BF69    mov         esp,ebp
 0047BF6B    pop         ebp
 0047BF6C    ret
*}
end;

//0047BF70
procedure sub_0047BF70(?:TStream; ?:Pointer; ?:Longint);
begin
{*
 0047BF70    push        ebp
 0047BF71    mov         ebp,esp
 0047BF73    add         esp,0FFFFFFF4
 0047BF76    push        ebx
 0047BF77    mov         dword ptr [ebp-0C],ecx
 0047BF7A    mov         dword ptr [ebp-8],edx
 0047BF7D    mov         dword ptr [ebp-4],eax
 0047BF80    cmp         dword ptr [ebp-0C],0
>0047BF84    je          0047BFB0
 0047BF86    mov         edx,dword ptr [ebp-8]
 0047BF89    mov         ecx,dword ptr [ebp-0C]
 0047BF8C    mov         eax,dword ptr [ebp-4]
 0047BF8F    mov         ebx,dword ptr [eax]
 0047BF91    call        dword ptr [ebx+10]
 0047BF94    cmp         eax,dword ptr [ebp-0C]
>0047BF97    je          0047BFB0
 0047BF99    mov         ecx,dword ptr ds:[55B3F8];^SWriteError:TResStringRec
 0047BF9F    mov         dl,1
 0047BFA1    mov         eax,[00475688];EWriteError
 0047BFA6    call        Exception.Create;EWriteError.Create
 0047BFAB    call        @RaiseExcept
 0047BFB0    pop         ebx
 0047BFB1    mov         esp,ebp
 0047BFB3    pop         ebp
 0047BFB4    ret
*}
end;

//0047BFB8
{*procedure sub_0047BFB8(?:TStream; ?:TMemoryStream; ?:?; ?:?);
begin
 0047BFB8    push        ebp
 0047BFB9    mov         ebp,esp
 0047BFBB    add         esp,0FFFFFFE4
 0047BFBE    mov         dword ptr [ebp-8],edx
 0047BFC1    mov         dword ptr [ebp-4],eax
 0047BFC4    cmp         dword ptr [ebp+0C],0
>0047BFC8    jne         0047BFE9
 0047BFCA    cmp         dword ptr [ebp+8],0
>0047BFCE    jne         0047BFE9
 0047BFD0    push        0
 0047BFD2    push        0
 0047BFD4    mov         eax,dword ptr [ebp-8]
 0047BFD7    call        0047BCF4
 0047BFDC    mov         eax,dword ptr [ebp-8]
 0047BFDF    mov         edx,dword ptr [eax]
 0047BFE1    call        dword ptr [edx]
 0047BFE3    mov         dword ptr [ebp+8],eax
 0047BFE6    mov         dword ptr [ebp+0C],edx
 0047BFE9    mov         eax,dword ptr [ebp+8]
 0047BFEC    mov         dword ptr [ebp-10],eax
 0047BFEF    mov         eax,dword ptr [ebp+0C]
 0047BFF2    mov         dword ptr [ebp-0C],eax
 0047BFF5    cmp         dword ptr [ebp+0C],0
>0047BFF9    jne         0047C006
 0047BFFB    cmp         dword ptr [ebp+8],0F000
>0047C002    jbe         0047C011
>0047C004    jmp         0047C008
>0047C006    jle         0047C011
 0047C008    mov         dword ptr [ebp-14],0F000
>0047C00F    jmp         0047C017
 0047C011    mov         eax,dword ptr [ebp+8]
 0047C014    mov         dword ptr [ebp-14],eax
 0047C017    mov         eax,dword ptr [ebp-14]
 0047C01A    call        @GetMem
 0047C01F    mov         dword ptr [ebp-1C],eax
 0047C022    xor         eax,eax
 0047C024    push        ebp
 0047C025    push        47C09D
 0047C02A    push        dword ptr fs:[eax]
 0047C02D    mov         dword ptr fs:[eax],esp
>0047C030    jmp         0047C078
 0047C032    mov         eax,dword ptr [ebp-14]
 0047C035    cdq
 0047C036    cmp         edx,dword ptr [ebp+0C]
>0047C039    jne         0047C042
 0047C03B    cmp         eax,dword ptr [ebp+8]
>0047C03E    jae         0047C04C
>0047C040    jmp         0047C044
>0047C042    jge         0047C04C
 0047C044    mov         eax,dword ptr [ebp-14]
 0047C047    mov         dword ptr [ebp-18],eax
>0047C04A    jmp         0047C052
 0047C04C    mov         eax,dword ptr [ebp+8]
 0047C04F    mov         dword ptr [ebp-18],eax
 0047C052    mov         edx,dword ptr [ebp-1C]
 0047C055    mov         ecx,dword ptr [ebp-18]
 0047C058    mov         eax,dword ptr [ebp-8]
 0047C05B    call        0047BF28
 0047C060    mov         edx,dword ptr [ebp-1C]
 0047C063    mov         ecx,dword ptr [ebp-18]
 0047C066    mov         eax,dword ptr [ebp-4]
 0047C069    call        0047BF70
 0047C06E    mov         eax,dword ptr [ebp-18]
 0047C071    cdq
 0047C072    sub         dword ptr [ebp+8],eax
 0047C075    sbb         dword ptr [ebp+0C],edx
 0047C078    cmp         dword ptr [ebp+0C],0
>0047C07C    jne         0047C032
 0047C07E    cmp         dword ptr [ebp+8],0
>0047C082    jne         0047C032
 0047C084    xor         eax,eax
 0047C086    pop         edx
 0047C087    pop         ecx
 0047C088    pop         ecx
 0047C089    mov         dword ptr fs:[eax],edx
 0047C08C    push        47C0A4
 0047C091    mov         edx,dword ptr [ebp-14]
 0047C094    mov         eax,dword ptr [ebp-1C]
 0047C097    call        @FreeMem
 0047C09C    ret
>0047C09D    jmp         @HandleFinally
>0047C0A2    jmp         0047C091
 0047C0A4    mov         eax,dword ptr [ebp-10]
 0047C0A7    mov         edx,dword ptr [ebp-0C]
 0047C0AA    mov         esp,ebp
 0047C0AC    pop         ebp
 0047C0AD    ret         8
end;*}

//0047C0B0
{*function sub_0047C0B0(?:TCustomMemoryStream; ?:TCustomListView):?;
begin
 0047C0B0    push        ebp
 0047C0B1    mov         ebp,esp
 0047C0B3    add         esp,0FFFFFFF0
 0047C0B6    mov         dword ptr [ebp-8],edx
 0047C0B9    mov         dword ptr [ebp-4],eax
 0047C0BC    push        1000
 0047C0C1    mov         ecx,dword ptr [ebp-4]
 0047C0C4    mov         dl,1
 0047C0C6    mov         eax,[004766B8];TReader
 0047C0CB    call        TFiler.Create;TReader.Create
 0047C0D0    mov         dword ptr [ebp-10],eax
 0047C0D3    xor         eax,eax
 0047C0D5    push        ebp
 0047C0D6    push        47C105
 0047C0DB    push        dword ptr fs:[eax]
 0047C0DE    mov         dword ptr fs:[eax],esp
 0047C0E1    mov         edx,dword ptr [ebp-8]
 0047C0E4    mov         eax,dword ptr [ebp-10]
 0047C0E7    call        0047EEA0
 0047C0EC    mov         dword ptr [ebp-0C],eax
 0047C0EF    xor         eax,eax
 0047C0F1    pop         edx
 0047C0F2    pop         ecx
 0047C0F3    pop         ecx
 0047C0F4    mov         dword ptr fs:[eax],edx
 0047C0F7    push        47C10C
 0047C0FC    mov         eax,dword ptr [ebp-10]
 0047C0FF    call        TObject.Free
 0047C104    ret
>0047C105    jmp         @HandleFinally
>0047C10A    jmp         0047C0FC
 0047C10C    mov         eax,dword ptr [ebp-0C]
 0047C10F    mov         esp,ebp
 0047C111    pop         ebp
 0047C112    ret
end;*}

//0047C114
procedure sub_0047C114(?:TMemoryStream; ?:TComponent);
begin
{*
 0047C114    push        ebp
 0047C115    mov         ebp,esp
 0047C117    add         esp,0FFFFFFF8
 0047C11A    mov         dword ptr [ebp-8],edx
 0047C11D    mov         dword ptr [ebp-4],eax
 0047C120    xor         ecx,ecx
 0047C122    mov         edx,dword ptr [ebp-8]
 0047C125    mov         eax,dword ptr [ebp-4]
 0047C128    call        0047C134
 0047C12D    pop         ecx
 0047C12E    pop         ecx
 0047C12F    pop         ebp
 0047C130    ret
*}
end;

//0047C134
{*procedure sub_0047C134(?:?; ?:?; ?:?);
begin
 0047C134    push        ebp
 0047C135    mov         ebp,esp
 0047C137    add         esp,0FFFFFFF0
 0047C13A    mov         dword ptr [ebp-0C],ecx
 0047C13D    mov         dword ptr [ebp-8],edx
 0047C140    mov         dword ptr [ebp-4],eax
 0047C143    push        1000
 0047C148    mov         ecx,dword ptr [ebp-4]
 0047C14B    mov         dl,1
 0047C14D    mov         eax,[00476748];TWriter
 0047C152    call        TFiler.Create;TWriter.Create
 0047C157    mov         dword ptr [ebp-10],eax
 0047C15A    xor         eax,eax
 0047C15C    push        ebp
 0047C15D    push        47C18C
 0047C162    push        dword ptr fs:[eax]
 0047C165    mov         dword ptr fs:[eax],esp
 0047C168    mov         ecx,dword ptr [ebp-0C]
 0047C16B    mov         edx,dword ptr [ebp-8]
 0047C16E    mov         eax,dword ptr [ebp-10]
 0047C171    call        0048085C
 0047C176    xor         eax,eax
 0047C178    pop         edx
 0047C179    pop         ecx
 0047C17A    pop         ecx
 0047C17B    mov         dword ptr fs:[eax],edx
 0047C17E    push        47C193
 0047C183    mov         eax,dword ptr [ebp-10]
 0047C186    call        TObject.Free
 0047C18B    ret
>0047C18C    jmp         @HandleFinally
>0047C191    jmp         0047C183
 0047C193    mov         esp,ebp
 0047C195    pop         ebp
 0047C196    ret
end;*}

//0047C198
constructor sub_0047C198;
begin
{*
 0047C198    push        ebp
 0047C199    mov         ebp,esp
 0047C19B    add         esp,0FFFFFFF4
 0047C19E    test        dl,dl
>0047C1A0    je          0047C1AA
 0047C1A2    add         esp,0FFFFFFF0
 0047C1A5    call        @ClassCreate
 0047C1AA    mov         dword ptr [ebp-0C],ecx
 0047C1AD    mov         byte ptr [ebp-5],dl
 0047C1B0    mov         dword ptr [ebp-4],eax
 0047C1B3    xor         edx,edx
 0047C1B5    mov         eax,dword ptr [ebp-4]
 0047C1B8    call        TObject.Create
 0047C1BD    mov         eax,dword ptr [ebp-4]
 0047C1C0    mov         edx,dword ptr [ebp-0C]
 0047C1C3    mov         dword ptr [eax+4],edx
 0047C1C6    mov         eax,dword ptr [ebp-4]
 0047C1C9    cmp         byte ptr [ebp-5],0
>0047C1CD    je          0047C1DE
 0047C1CF    call        @AfterConstruction
 0047C1D4    pop         dword ptr fs:[0]
 0047C1DB    add         esp,0C
 0047C1DE    mov         eax,dword ptr [ebp-4]
 0047C1E1    mov         esp,ebp
 0047C1E3    pop         ebp
 0047C1E4    ret
*}
end;

//0047C1E8
{*function sub_0047C1E8(?:?; ?:?):?;
begin
 0047C1E8    push        ebp
 0047C1E9    mov         ebp,esp
 0047C1EB    add         esp,0FFFFFFF0
 0047C1EE    mov         dword ptr [ebp-0C],ecx
 0047C1F1    mov         dword ptr [ebp-8],edx
 0047C1F4    mov         dword ptr [ebp-4],eax
 0047C1F7    mov         edx,dword ptr [ebp-8]
 0047C1FA    mov         ecx,dword ptr [ebp-0C]
 0047C1FD    mov         eax,dword ptr [ebp-4]
 0047C200    mov         eax,dword ptr [eax+4];THandleStream........FHandle:Integer
 0047C203    call        00466E48
 0047C208    mov         dword ptr [ebp-10],eax
 0047C20B    cmp         dword ptr [ebp-10],0FFFFFFFF
>0047C20F    jne         0047C216
 0047C211    xor         eax,eax
 0047C213    mov         dword ptr [ebp-10],eax
 0047C216    mov         eax,dword ptr [ebp-10]
 0047C219    mov         esp,ebp
 0047C21B    pop         ebp
 0047C21C    ret
end;*}

//0047C220
{*function sub_0047C220(?:?; ?:?):?;
begin
 0047C220    push        ebp
 0047C221    mov         ebp,esp
 0047C223    add         esp,0FFFFFFF0
 0047C226    mov         dword ptr [ebp-0C],ecx
 0047C229    mov         dword ptr [ebp-8],edx
 0047C22C    mov         dword ptr [ebp-4],eax
 0047C22F    mov         edx,dword ptr [ebp-8]
 0047C232    mov         ecx,dword ptr [ebp-0C]
 0047C235    mov         eax,dword ptr [ebp-4]
 0047C238    mov         eax,dword ptr [eax+4];THandleStream.........FHandle:Integer
 0047C23B    call        00466E80
 0047C240    mov         dword ptr [ebp-10],eax
 0047C243    cmp         dword ptr [ebp-10],0FFFFFFFF
>0047C247    jne         0047C24E
 0047C249    xor         eax,eax
 0047C24B    mov         dword ptr [ebp-10],eax
 0047C24E    mov         eax,dword ptr [ebp-10]
 0047C251    mov         esp,ebp
 0047C253    pop         ebp
 0047C254    ret
end;*}

//0047C258
{*procedure sub_0047C258(?:?; ?:?; ?:?);
begin
 0047C258    push        ebp
 0047C259    mov         ebp,esp
 0047C25B    add         esp,0FFFFFFF0
 0047C25E    mov         byte ptr [ebp-5],dl
 0047C261    mov         dword ptr [ebp-4],eax
 0047C264    push        dword ptr [ebp+0C]
 0047C267    push        dword ptr [ebp+8]
 0047C26A    xor         edx,edx
 0047C26C    mov         dl,byte ptr [ebp-5]
 0047C26F    mov         eax,dword ptr [ebp-4]
 0047C272    mov         eax,dword ptr [eax+4];THandleStream..........FHandle:Integer
 0047C275    call        00466EB8
 0047C27A    mov         dword ptr [ebp-10],eax
 0047C27D    mov         dword ptr [ebp-0C],edx
 0047C280    mov         eax,dword ptr [ebp-10]
 0047C283    mov         edx,dword ptr [ebp-0C]
 0047C286    mov         esp,ebp
 0047C288    pop         ebp
 0047C289    ret         8
end;*}

//0047C28C
{*procedure sub_0047C28C(?:?);
begin
 0047C28C    push        ebp
 0047C28D    mov         ebp,esp
 0047C28F    add         esp,0FFFFFFF8
 0047C292    mov         dword ptr [ebp-8],edx
 0047C295    mov         dword ptr [ebp-4],eax
 0047C298    mov         eax,dword ptr [ebp-8]
 0047C29B    cdq
 0047C29C    push        edx
 0047C29D    push        eax
 0047C29E    mov         eax,dword ptr [ebp-4]
 0047C2A1    mov         edx,dword ptr [eax]
 0047C2A3    call        dword ptr [edx+8];THandleStream.sub_0047C2AC
 0047C2A6    pop         ecx
 0047C2A7    pop         ecx
 0047C2A8    pop         ebp
 0047C2A9    ret
end;*}

//0047C2AC
{*procedure sub_0047C2AC(?:?; ?:?);
begin
 0047C2AC    push        ebp
 0047C2AD    mov         ebp,esp
 0047C2AF    push        ecx
 0047C2B0    mov         dword ptr [ebp-4],eax
 0047C2B3    push        dword ptr [ebp+0C]
 0047C2B6    push        dword ptr [ebp+8]
 0047C2B9    xor         edx,edx
 0047C2BB    mov         eax,dword ptr [ebp-4]
 0047C2BE    mov         ecx,dword ptr [eax]
 0047C2C0    call        dword ptr [ecx+18];THandleStream.sub_0047C258
 0047C2C3    mov         eax,dword ptr [ebp-4]
 0047C2C6    mov         eax,dword ptr [eax+4];THandleStream...........FHandle:Integer
 0047C2C9    push        eax
 0047C2CA    call        kernel32.SetEndOfFile
 0047C2CF    call        0046C4EC
 0047C2D4    pop         ecx
 0047C2D5    pop         ebp
 0047C2D6    ret         8
end;*}

//0047C2DC
{*constructor TFileStream.Create(?:?);
begin
 0047C2DC    push        ebp
 0047C2DD    mov         ebp,esp
 0047C2DF    add         esp,0FFFFFFF4
 0047C2E2    test        dl,dl
>0047C2E4    je          0047C2EE
 0047C2E6    add         esp,0FFFFFFF0
 0047C2E9    call        @ClassCreate
 0047C2EE    mov         dword ptr [ebp-0C],ecx
 0047C2F1    mov         byte ptr [ebp-5],dl
 0047C2F4    mov         dword ptr [ebp-4],eax
 0047C2F7    mov         ax,word ptr [ebp+8]
 0047C2FB    push        eax
 0047C2FC    push        0
 0047C2FE    mov         ecx,dword ptr [ebp-0C]
 0047C301    xor         edx,edx
 0047C303    mov         eax,dword ptr [ebp-4]
 0047C306    call        0047C32C
 0047C30B    mov         eax,dword ptr [ebp-4]
 0047C30E    cmp         byte ptr [ebp-5],0
>0047C312    je          0047C323
 0047C314    call        @AfterConstruction
 0047C319    pop         dword ptr fs:[0]
 0047C320    add         esp,0C
 0047C323    mov         eax,dword ptr [ebp-4]
 0047C326    mov         esp,ebp
 0047C328    pop         ebp
 0047C329    ret         4
end;*}

//0047C32C
{*constructor sub_0047C32C(?:?; ?:?);
begin
 0047C32C    push        ebp
 0047C32D    mov         ebp,esp
 0047C32F    add         esp,0FFFFFFD4
 0047C332    push        ebx
 0047C333    xor         ebx,ebx
 0047C335    mov         dword ptr [ebp-28],ebx
 0047C338    mov         dword ptr [ebp-2C],ebx
 0047C33B    mov         dword ptr [ebp-20],ebx
 0047C33E    mov         dword ptr [ebp-24],ebx
 0047C341    test        dl,dl
>0047C343    je          0047C34D
 0047C345    add         esp,0FFFFFFF0
 0047C348    call        @ClassCreate
 0047C34D    mov         dword ptr [ebp-0C],ecx
 0047C350    mov         byte ptr [ebp-5],dl
 0047C353    mov         dword ptr [ebp-4],eax
 0047C356    xor         eax,eax
 0047C358    push        ebp
 0047C359    push        47C460
 0047C35E    push        dword ptr fs:[eax]
 0047C361    mov         dword ptr fs:[eax],esp
 0047C364    cmp         word ptr [ebp+0C],0FFFF
>0047C36A    jne         0047C3DB
 0047C36C    mov         edx,dword ptr [ebp+8]
 0047C36F    mov         eax,dword ptr [ebp-0C]
 0047C372    call        00466E28
 0047C377    mov         ecx,eax
 0047C379    xor         edx,edx
 0047C37B    mov         eax,dword ptr [ebp-4]
 0047C37E    call        0047C198
 0047C383    mov         eax,dword ptr [ebp-4]
 0047C386    cmp         dword ptr [eax+4],0
>0047C38A    jge         0047C445
 0047C390    lea         edx,[ebp-20]
 0047C393    mov         eax,dword ptr [ebp-0C]
 0047C396    call        00467160
 0047C39B    mov         eax,dword ptr [ebp-20]
 0047C39E    mov         dword ptr [ebp-1C],eax
 0047C3A1    mov         byte ptr [ebp-18],0B
 0047C3A5    call        kernel32.GetLastError
 0047C3AA    lea         edx,[ebp-24]
 0047C3AD    call        SysErrorMessage
 0047C3B2    mov         eax,dword ptr [ebp-24]
 0047C3B5    mov         dword ptr [ebp-14],eax
 0047C3B8    mov         byte ptr [ebp-10],0B
 0047C3BC    lea         eax,[ebp-1C]
 0047C3BF    push        eax
 0047C3C0    push        1
 0047C3C2    mov         ecx,dword ptr ds:[55B704];^SFCreateErrorEx:TResStringRec
 0047C3C8    mov         dl,1
 0047C3CA    mov         eax,[00475524];EFCreateError
 0047C3CF    call        Exception.CreateResFmt;EFCreateError.Create
 0047C3D4    call        @RaiseExcept
>0047C3D9    jmp         0047C445
 0047C3DB    movzx       edx,word ptr [ebp+0C]
 0047C3DF    mov         eax,dword ptr [ebp-0C]
 0047C3E2    call        00466D84
 0047C3E7    mov         ecx,eax
 0047C3E9    xor         edx,edx
 0047C3EB    mov         eax,dword ptr [ebp-4]
 0047C3EE    call        0047C198
 0047C3F3    mov         eax,dword ptr [ebp-4]
 0047C3F6    cmp         dword ptr [eax+4],0
>0047C3FA    jge         0047C445
 0047C3FC    lea         edx,[ebp-28]
 0047C3FF    mov         eax,dword ptr [ebp-0C]
 0047C402    call        00467160
 0047C407    mov         eax,dword ptr [ebp-28]
 0047C40A    mov         dword ptr [ebp-1C],eax
 0047C40D    mov         byte ptr [ebp-18],0B
 0047C411    call        kernel32.GetLastError
 0047C416    lea         edx,[ebp-2C]
 0047C419    call        SysErrorMessage
 0047C41E    mov         eax,dword ptr [ebp-2C]
 0047C421    mov         dword ptr [ebp-14],eax
 0047C424    mov         byte ptr [ebp-10],0B
 0047C428    lea         eax,[ebp-1C]
 0047C42B    push        eax
 0047C42C    push        1
 0047C42E    mov         ecx,dword ptr ds:[55B0B8];^SFOpenErrorEx:TResStringRec
 0047C434    mov         dl,1
 0047C436    mov         eax,[00475580];EFOpenError
 0047C43B    call        Exception.CreateResFmt;EFOpenError.Create
 0047C440    call        @RaiseExcept
 0047C445    xor         eax,eax
 0047C447    pop         edx
 0047C448    pop         ecx
 0047C449    pop         ecx
 0047C44A    mov         dword ptr fs:[eax],edx
 0047C44D    push        47C467
 0047C452    lea         eax,[ebp-2C]
 0047C455    mov         edx,4
 0047C45A    call        @LStrArrayClr
 0047C45F    ret
>0047C460    jmp         @HandleFinally
>0047C465    jmp         0047C452
 0047C467    mov         eax,dword ptr [ebp-4]
 0047C46A    cmp         byte ptr [ebp-5],0
>0047C46E    je          0047C47F
 0047C470    call        @AfterConstruction
 0047C475    pop         dword ptr fs:[0]
 0047C47C    add         esp,0C
 0047C47F    mov         eax,dword ptr [ebp-4]
 0047C482    pop         ebx
 0047C483    mov         esp,ebp
 0047C485    pop         ebp
 0047C486    ret         8
end;*}

//0047C48C
destructor TFileStream.Destroy;
begin
{*
 0047C48C    push        ebp
 0047C48D    mov         ebp,esp
 0047C48F    add         esp,0FFFFFFF8
 0047C492    call        @BeforeDestruction
 0047C497    mov         byte ptr [ebp-5],dl
 0047C49A    mov         dword ptr [ebp-4],eax
 0047C49D    mov         eax,dword ptr [ebp-4]
 0047C4A0    cmp         dword ptr [eax+4],0;TFileStream............FHandle:Integer
>0047C4A4    jl          0047C4B1
 0047C4A6    mov         eax,dword ptr [ebp-4]
 0047C4A9    mov         eax,dword ptr [eax+4];TFileStream.............FHandle:Integer
 0047C4AC    call        00466EF4
 0047C4B1    mov         dl,byte ptr [ebp-5]
 0047C4B4    and         dl,0FC
 0047C4B7    mov         eax,dword ptr [ebp-4]
 0047C4BA    call        TObject.Destroy
 0047C4BF    cmp         byte ptr [ebp-5],0
>0047C4C3    jle         0047C4CD
 0047C4C5    mov         eax,dword ptr [ebp-4]
 0047C4C8    call        @ClassDestroy
 0047C4CD    pop         ecx
 0047C4CE    pop         ecx
 0047C4CF    pop         ebp
 0047C4D0    ret
*}
end;

//0047C4D4
procedure sub_0047C4D4(?:TCustomMemoryStream; ?:Pointer; ?:Longint);
begin
{*
 0047C4D4    push        ebp
 0047C4D5    mov         ebp,esp
 0047C4D7    add         esp,0FFFFFFF4
 0047C4DA    mov         dword ptr [ebp-0C],ecx
 0047C4DD    mov         dword ptr [ebp-8],edx
 0047C4E0    mov         dword ptr [ebp-4],eax
 0047C4E3    mov         eax,dword ptr [ebp-8]
 0047C4E6    mov         edx,dword ptr [ebp-4]
 0047C4E9    mov         dword ptr [edx+4],eax
 0047C4EC    mov         eax,dword ptr [ebp-0C]
 0047C4EF    mov         edx,dword ptr [ebp-4]
 0047C4F2    mov         dword ptr [edx+8],eax
 0047C4F5    mov         esp,ebp
 0047C4F7    pop         ebp
 0047C4F8    ret
*}
end;

//0047C4FC
{*function sub_0047C4FC(?:?; ?:?):?;
begin
 0047C4FC    push        ebp
 0047C4FD    mov         ebp,esp
 0047C4FF    add         esp,0FFFFFFF0
 0047C502    mov         dword ptr [ebp-0C],ecx
 0047C505    mov         dword ptr [ebp-8],edx
 0047C508    mov         dword ptr [ebp-4],eax
 0047C50B    mov         eax,dword ptr [ebp-4]
 0047C50E    cmp         dword ptr [eax+0C],0;TCustomMemoryStream.FPosition:Longint
>0047C512    jl          0047C55F
 0047C514    cmp         dword ptr [ebp-0C],0
>0047C518    jl          0047C55F
 0047C51A    mov         eax,dword ptr [ebp-4]
 0047C51D    mov         eax,dword ptr [eax+8];TCustomMemoryStream.FSize:Longint
 0047C520    mov         edx,dword ptr [ebp-4]
 0047C523    sub         eax,dword ptr [edx+0C]
 0047C526    mov         dword ptr [ebp-10],eax
 0047C529    cmp         dword ptr [ebp-10],0
>0047C52D    jle         0047C55F
 0047C52F    mov         eax,dword ptr [ebp-10]
 0047C532    cmp         eax,dword ptr [ebp-0C]
>0047C535    jle         0047C53D
 0047C537    mov         eax,dword ptr [ebp-0C]
 0047C53A    mov         dword ptr [ebp-10],eax
 0047C53D    mov         edx,dword ptr [ebp-8]
 0047C540    mov         eax,dword ptr [ebp-4]
 0047C543    mov         eax,dword ptr [eax+4];TCustomMemoryStream.FMemory:Pointer
 0047C546    mov         ecx,dword ptr [ebp-4]
 0047C549    add         eax,dword ptr [ecx+0C]
 0047C54C    mov         ecx,dword ptr [ebp-10]
 0047C54F    call        Move
 0047C554    mov         eax,dword ptr [ebp-10]
 0047C557    mov         edx,dword ptr [ebp-4]
 0047C55A    add         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
>0047C55D    jmp         0047C564
 0047C55F    xor         eax,eax
 0047C561    mov         dword ptr [ebp-10],eax
 0047C564    mov         eax,dword ptr [ebp-10]
 0047C567    mov         esp,ebp
 0047C569    pop         ebp
 0047C56A    ret
end;*}

//0047C56C
{*function sub_0047C56C(?:?; ?:?):?;
begin
 0047C56C    push        ebp
 0047C56D    mov         ebp,esp
 0047C56F    add         esp,0FFFFFFF0
 0047C572    mov         word ptr [ebp-0A],cx
 0047C576    mov         dword ptr [ebp-8],edx
 0047C579    mov         dword ptr [ebp-4],eax
 0047C57C    mov         ax,word ptr [ebp-0A]
 0047C580    sub         ax,1
>0047C584    jb          0047C58F
>0047C586    je          0047C59A
 0047C588    dec         ax
>0047C58B    je          0047C5A5
>0047C58D    jmp         0047C5B4
 0047C58F    mov         eax,dword ptr [ebp-8]
 0047C592    mov         edx,dword ptr [ebp-4]
 0047C595    mov         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
>0047C598    jmp         0047C5B4
 0047C59A    mov         eax,dword ptr [ebp-8]
 0047C59D    mov         edx,dword ptr [ebp-4]
 0047C5A0    add         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
>0047C5A3    jmp         0047C5B4
 0047C5A5    mov         eax,dword ptr [ebp-4]
 0047C5A8    mov         eax,dword ptr [eax+8];TCustomMemoryStream.FSize:Longint
 0047C5AB    add         eax,dword ptr [ebp-8]
 0047C5AE    mov         edx,dword ptr [ebp-4]
 0047C5B1    mov         dword ptr [edx+0C],eax;TCustomMemoryStream.FPosition:Longint
 0047C5B4    mov         eax,dword ptr [ebp-4]
 0047C5B7    mov         eax,dword ptr [eax+0C];TCustomMemoryStream.FPosition:Longint
 0047C5BA    mov         dword ptr [ebp-10],eax
 0047C5BD    mov         eax,dword ptr [ebp-10]
 0047C5C0    mov         esp,ebp
 0047C5C2    pop         ebp
 0047C5C3    ret
end;*}

//0047C5C4
destructor TMemoryStream.Destroy;
begin
{*
 0047C5C4    push        ebp
 0047C5C5    mov         ebp,esp
 0047C5C7    add         esp,0FFFFFFF8
 0047C5CA    call        @BeforeDestruction
 0047C5CF    mov         byte ptr [ebp-5],dl
 0047C5D2    mov         dword ptr [ebp-4],eax
 0047C5D5    mov         eax,dword ptr [ebp-4]
 0047C5D8    call        0047C600
 0047C5DD    mov         dl,byte ptr [ebp-5]
 0047C5E0    and         dl,0FC
 0047C5E3    mov         eax,dword ptr [ebp-4]
 0047C5E6    call        TObject.Destroy
 0047C5EB    cmp         byte ptr [ebp-5],0
>0047C5EF    jle         0047C5F9
 0047C5F1    mov         eax,dword ptr [ebp-4]
 0047C5F4    call        @ClassDestroy
 0047C5F9    pop         ecx
 0047C5FA    pop         ecx
 0047C5FB    pop         ebp
 0047C5FC    ret
*}
end;

//0047C600
procedure sub_0047C600(?:TMemoryStream);
begin
{*
 0047C600    push        ebp
 0047C601    mov         ebp,esp
 0047C603    push        ecx
 0047C604    mov         dword ptr [ebp-4],eax
 0047C607    xor         edx,edx
 0047C609    mov         eax,dword ptr [ebp-4]
 0047C60C    call        0047C6C8
 0047C611    mov         eax,dword ptr [ebp-4]
 0047C614    xor         edx,edx
 0047C616    mov         dword ptr [eax+8],edx;TMemoryStream.FSize:Longint
 0047C619    mov         eax,dword ptr [ebp-4]
 0047C61C    xor         edx,edx
 0047C61E    mov         dword ptr [eax+0C],edx;TMemoryStream.FPosition:Longint
 0047C621    pop         ecx
 0047C622    pop         ebp
 0047C623    ret
*}
end;

//0047C624
procedure sub_0047C624(?:TMemoryStream; ?:TFileStream);
begin
{*
 0047C624    push        ebp
 0047C625    mov         ebp,esp
 0047C627    add         esp,0FFFFFFF4
 0047C62A    mov         dword ptr [ebp-8],edx
 0047C62D    mov         dword ptr [ebp-4],eax
 0047C630    push        0
 0047C632    push        0
 0047C634    mov         eax,dword ptr [ebp-8]
 0047C637    call        0047BCF4
 0047C63C    mov         eax,dword ptr [ebp-8]
 0047C63F    mov         edx,dword ptr [eax]
 0047C641    call        dword ptr [edx]
 0047C643    mov         dword ptr [ebp-0C],eax
 0047C646    mov         edx,dword ptr [ebp-0C]
 0047C649    mov         eax,dword ptr [ebp-4]
 0047C64C    mov         ecx,dword ptr [eax]
 0047C64E    call        dword ptr [ecx+4]
 0047C651    cmp         dword ptr [ebp-0C],0
>0047C655    je          0047C668
 0047C657    mov         eax,dword ptr [ebp-4]
 0047C65A    mov         edx,dword ptr [eax+4]
 0047C65D    mov         ecx,dword ptr [ebp-0C]
 0047C660    mov         eax,dword ptr [ebp-8]
 0047C663    call        0047BF28
 0047C668    mov         esp,ebp
 0047C66A    pop         ebp
 0047C66B    ret
*}
end;

//0047C66C
{*procedure sub_0047C66C(?:?; ?:?);
begin
 0047C66C    push        ebp
 0047C66D    mov         ebp,esp
 0047C66F    add         esp,0FFFFFFF4
 0047C672    mov         dword ptr [ebp-8],edx
 0047C675    mov         dword ptr [ebp-4],eax
 0047C678    push        20
 0047C67A    mov         ecx,dword ptr [ebp-8]
 0047C67D    mov         dl,1
 0047C67F    mov         eax,[00476278];TFileStream
 0047C684    call        TFileStream.Create;TFileStream.Create
 0047C689    mov         dword ptr [ebp-0C],eax
 0047C68C    xor         eax,eax
 0047C68E    push        ebp
 0047C68F    push        47C6BB
 0047C694    push        dword ptr fs:[eax]
 0047C697    mov         dword ptr fs:[eax],esp
 0047C69A    mov         edx,dword ptr [ebp-0C]
 0047C69D    mov         eax,dword ptr [ebp-4]
 0047C6A0    call        0047C624
 0047C6A5    xor         eax,eax
 0047C6A7    pop         edx
 0047C6A8    pop         ecx
 0047C6A9    pop         ecx
 0047C6AA    mov         dword ptr fs:[eax],edx
 0047C6AD    push        47C6C2
 0047C6B2    mov         eax,dword ptr [ebp-0C]
 0047C6B5    call        TObject.Free
 0047C6BA    ret
>0047C6BB    jmp         @HandleFinally
>0047C6C0    jmp         0047C6B2
 0047C6C2    mov         esp,ebp
 0047C6C4    pop         ebp
 0047C6C5    ret
end;*}

//0047C6C8
{*procedure sub_0047C6C8(?:TMemoryStream; ?:?);
begin
 0047C6C8    push        ebp
 0047C6C9    mov         ebp,esp
 0047C6CB    add         esp,0FFFFFFF8
 0047C6CE    mov         dword ptr [ebp-8],edx
 0047C6D1    mov         dword ptr [ebp-4],eax
 0047C6D4    lea         edx,[ebp-8]
 0047C6D7    mov         eax,dword ptr [ebp-4]
 0047C6DA    mov         ecx,dword ptr [eax]
 0047C6DC    call        dword ptr [ecx+1C];TMemoryStream.sub_0047C744
 0047C6DF    mov         edx,eax
 0047C6E1    mov         eax,dword ptr [ebp-4]
 0047C6E4    mov         ecx,dword ptr [eax+8];TMemoryStream.FSize:Longint
 0047C6E7    mov         eax,dword ptr [ebp-4]
 0047C6EA    call        0047C4D4
 0047C6EF    mov         eax,dword ptr [ebp-8]
 0047C6F2    mov         edx,dword ptr [ebp-4]
 0047C6F5    mov         dword ptr [edx+10],eax;TMemoryStream......FCapacity:Longint
 0047C6F8    pop         ecx
 0047C6F9    pop         ecx
 0047C6FA    pop         ebp
 0047C6FB    ret
end;*}

//0047C6FC
{*procedure sub_0047C6FC(?:?);
begin
 0047C6FC    push        ebp
 0047C6FD    mov         ebp,esp
 0047C6FF    add         esp,0FFFFFFF4
 0047C702    push        ebx
 0047C703    mov         dword ptr [ebp-8],edx
 0047C706    mov         dword ptr [ebp-4],eax
 0047C709    mov         eax,dword ptr [ebp-4]
 0047C70C    mov         eax,dword ptr [eax+0C];TMemoryStream.FPosition:Longint
 0047C70F    mov         dword ptr [ebp-0C],eax
 0047C712    mov         edx,dword ptr [ebp-8]
 0047C715    mov         eax,dword ptr [ebp-4]
 0047C718    call        0047C6C8
 0047C71D    mov         eax,dword ptr [ebp-8]
 0047C720    mov         edx,dword ptr [ebp-4]
 0047C723    mov         dword ptr [edx+8],eax;TMemoryStream.FSize:Longint
 0047C726    mov         eax,dword ptr [ebp-0C]
 0047C729    cmp         eax,dword ptr [ebp-8]
>0047C72C    jle         0047C73C
 0047C72E    mov         cx,2
 0047C732    xor         edx,edx
 0047C734    mov         eax,dword ptr [ebp-4]
 0047C737    mov         ebx,dword ptr [eax]
 0047C739    call        dword ptr [ebx+14];TMemoryStream.sub_0047C56C
 0047C73C    pop         ebx
 0047C73D    mov         esp,ebp
 0047C73F    pop         ebp
 0047C740    ret
end;*}

//0047C744
{*function sub_0047C744(?:?):?;
begin
 0047C744    push        ebp
 0047C745    mov         ebp,esp
 0047C747    add         esp,0FFFFFFF4
 0047C74A    mov         dword ptr [ebp-8],edx
 0047C74D    mov         dword ptr [ebp-4],eax
 0047C750    mov         eax,dword ptr [ebp-8]
 0047C753    cmp         dword ptr [eax],0
>0047C756    jle         0047C779
 0047C758    mov         eax,dword ptr [ebp-8]
 0047C75B    mov         eax,dword ptr [eax]
 0047C75D    mov         edx,dword ptr [ebp-4]
 0047C760    cmp         eax,dword ptr [edx+8];TMemoryStream.FSize:Longint
>0047C763    je          0047C779
 0047C765    mov         eax,dword ptr [ebp-8]
 0047C768    mov         eax,dword ptr [eax]
 0047C76A    add         eax,1FFF
 0047C76F    and         eax,0FFFFE000
 0047C774    mov         edx,dword ptr [ebp-8]
 0047C777    mov         dword ptr [edx],eax
 0047C779    mov         eax,dword ptr [ebp-4]
 0047C77C    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0047C77F    mov         dword ptr [ebp-0C],eax
 0047C782    mov         eax,dword ptr [ebp-8]
 0047C785    mov         eax,dword ptr [eax]
 0047C787    mov         edx,dword ptr [ebp-4]
 0047C78A    cmp         eax,dword ptr [edx+10];TMemoryStream.......FCapacity:Longint
>0047C78D    je          0047C802
 0047C78F    mov         eax,dword ptr [ebp-8]
 0047C792    cmp         dword ptr [eax],0
>0047C795    jne         0047C7A9
 0047C797    mov         eax,dword ptr [ebp-4]
 0047C79A    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0047C79D    call        00408194
 0047C7A2    xor         eax,eax
 0047C7A4    mov         dword ptr [ebp-0C],eax
>0047C7A7    jmp         0047C802
 0047C7A9    mov         eax,dword ptr [ebp-4]
 0047C7AC    cmp         dword ptr [eax+10],0;TMemoryStream........FCapacity:Longint
>0047C7B0    jne         0047C7C9
 0047C7B2    mov         edx,dword ptr [ebp-8]
 0047C7B5    mov         edx,dword ptr [edx]
 0047C7B7    mov         eax,[0055B5B4];^gvar_0053D028
 0047C7BC    movzx       eax,word ptr [eax]
 0047C7BF    call        00408168
 0047C7C4    mov         dword ptr [ebp-0C],eax
>0047C7C7    jmp         0047C7E5
 0047C7C9    mov         ecx,dword ptr ds:[55B5B4];^gvar_0053D028
 0047C7CF    movzx       ecx,word ptr [ecx]
 0047C7D2    mov         edx,dword ptr [ebp-8]
 0047C7D5    mov         edx,dword ptr [edx]
 0047C7D7    mov         eax,dword ptr [ebp-4]
 0047C7DA    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0047C7DD    call        00408178
 0047C7E2    mov         dword ptr [ebp-0C],eax
 0047C7E5    cmp         dword ptr [ebp-0C],0
>0047C7E9    jne         0047C802
 0047C7EB    mov         ecx,dword ptr ds:[55B668];^SMemoryStreamError:TResStringRec
 0047C7F1    mov         dl,1
 0047C7F3    mov         eax,[00475468];EStreamError
 0047C7F8    call        Exception.Create;EStreamError.Create
 0047C7FD    call        @RaiseExcept
 0047C802    mov         eax,dword ptr [ebp-0C]
 0047C805    mov         esp,ebp
 0047C807    pop         ebp
 0047C808    ret
end;*}

//0047C80C
{*function sub_0047C80C(?:?; ?:?):?;
begin
 0047C80C    push        ebp
 0047C80D    mov         ebp,esp
 0047C80F    add         esp,0FFFFFFEC
 0047C812    mov         dword ptr [ebp-0C],ecx
 0047C815    mov         dword ptr [ebp-8],edx
 0047C818    mov         dword ptr [ebp-4],eax
 0047C81B    mov         eax,dword ptr [ebp-4]
 0047C81E    cmp         dword ptr [eax+0C],0;TMemoryStream.FPosition:Longint
>0047C822    jl          0047C88E
 0047C824    cmp         dword ptr [ebp-0C],0
>0047C828    jl          0047C88E
 0047C82A    mov         eax,dword ptr [ebp-4]
 0047C82D    mov         eax,dword ptr [eax+0C];TMemoryStream.FPosition:Longint
 0047C830    add         eax,dword ptr [ebp-0C]
 0047C833    mov         dword ptr [ebp-14],eax
 0047C836    cmp         dword ptr [ebp-14],0
>0047C83A    jle         0047C88E
 0047C83C    mov         eax,dword ptr [ebp-14]
 0047C83F    mov         edx,dword ptr [ebp-4]
 0047C842    cmp         eax,dword ptr [edx+8];TMemoryStream.FSize:Longint
>0047C845    jle         0047C866
 0047C847    mov         eax,dword ptr [ebp-14]
 0047C84A    mov         edx,dword ptr [ebp-4]
 0047C84D    cmp         eax,dword ptr [edx+10];TMemoryStream.........FCapacity:Longint
>0047C850    jle         0047C85D
 0047C852    mov         edx,dword ptr [ebp-14]
 0047C855    mov         eax,dword ptr [ebp-4]
 0047C858    call        0047C6C8
 0047C85D    mov         eax,dword ptr [ebp-14]
 0047C860    mov         edx,dword ptr [ebp-4]
 0047C863    mov         dword ptr [edx+8],eax;TMemoryStream.FSize:Longint
 0047C866    mov         eax,dword ptr [ebp-4]
 0047C869    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0047C86C    mov         eax,dword ptr [ebp-4]
 0047C86F    add         edx,dword ptr [eax+0C];TMemoryStream.FPosition:Longint
 0047C872    mov         eax,dword ptr [ebp-8]
 0047C875    mov         ecx,dword ptr [ebp-0C]
 0047C878    call        Move
 0047C87D    mov         eax,dword ptr [ebp-14]
 0047C880    mov         edx,dword ptr [ebp-4]
 0047C883    mov         dword ptr [edx+0C],eax;TMemoryStream.FPosition:Longint
 0047C886    mov         eax,dword ptr [ebp-0C]
 0047C889    mov         dword ptr [ebp-10],eax
>0047C88C    jmp         0047C893
 0047C88E    xor         eax,eax
 0047C890    mov         dword ptr [ebp-10],eax
 0047C893    mov         eax,dword ptr [ebp-10]
 0047C896    mov         esp,ebp
 0047C898    pop         ebp
 0047C899    ret
end;*}

//0047C89C
{*constructor TResourceStream.Create(?:?; ?:?);
begin
 0047C89C    push        ebp
 0047C89D    mov         ebp,esp
 0047C89F    add         esp,0FFFFFFF4
 0047C8A2    test        dl,dl
>0047C8A4    je          0047C8AE
 0047C8A6    add         esp,0FFFFFFF0
 0047C8A9    call        @ClassCreate
 0047C8AE    mov         dword ptr [ebp-0C],ecx
 0047C8B1    mov         byte ptr [ebp-5],dl
 0047C8B4    mov         dword ptr [ebp-4],eax
 0047C8B7    xor         edx,edx
 0047C8B9    mov         eax,dword ptr [ebp-4]
 0047C8BC    call        TObject.Create
 0047C8C1    mov         eax,dword ptr [ebp+8]
 0047C8C4    push        eax
 0047C8C5    mov         eax,dword ptr [ebp+0C]
 0047C8C8    call        @LStrToPChar
 0047C8CD    mov         ecx,eax
 0047C8CF    mov         edx,dword ptr [ebp-0C]
 0047C8D2    mov         eax,dword ptr [ebp-4]
 0047C8D5    call        0047C96C
 0047C8DA    mov         eax,dword ptr [ebp-4]
 0047C8DD    cmp         byte ptr [ebp-5],0
>0047C8E1    je          0047C8F2
 0047C8E3    call        @AfterConstruction
 0047C8E8    pop         dword ptr fs:[0]
 0047C8EF    add         esp,0C
 0047C8F2    mov         eax,dword ptr [ebp-4]
 0047C8F5    mov         esp,ebp
 0047C8F7    pop         ebp
 0047C8F8    ret         8
end;*}

//0047C8FC
procedure Error;
begin
{*
 0047C8FC    push        ebp
 0047C8FD    mov         ebp,esp
 0047C8FF    add         esp,0FFFFFFF4
 0047C902    xor         eax,eax
 0047C904    mov         dword ptr [ebp-0C],eax
 0047C907    xor         eax,eax
 0047C909    push        ebp
 0047C90A    push        47C95F
 0047C90F    push        dword ptr fs:[eax]
 0047C912    mov         dword ptr fs:[eax],esp
 0047C915    mov         eax,dword ptr [ebp+8]
 0047C918    mov         eax,dword ptr [eax-4]
 0047C91B    mov         dword ptr [ebp-8],eax
 0047C91E    mov         byte ptr [ebp-4],6
 0047C922    lea         eax,[ebp-8]
 0047C925    push        eax
 0047C926    push        0
 0047C928    lea         edx,[ebp-0C]
 0047C92B    mov         eax,[0055B390];^SResNotFound:TResStringRec
 0047C930    call        LoadResString
 0047C935    mov         ecx,dword ptr [ebp-0C]
 0047C938    mov         dl,1
 0047C93A    mov         eax,[0047573C];EResNotFound
 0047C93F    call        Exception.CreateFmt
 0047C944    call        @RaiseExcept
 0047C949    xor         eax,eax
 0047C94B    pop         edx
 0047C94C    pop         ecx
 0047C94D    pop         ecx
 0047C94E    mov         dword ptr fs:[eax],edx
 0047C951    push        47C966
 0047C956    lea         eax,[ebp-0C]
 0047C959    call        @LStrClr
 0047C95E    ret
>0047C95F    jmp         @HandleFinally
>0047C964    jmp         0047C956
 0047C966    mov         esp,ebp
 0047C968    pop         ebp
 0047C969    ret
*}
end;

//0047C96C
{*procedure sub_0047C96C(?:TResourceStream; ?:?; ?:PChar; ?:?);
begin
 0047C96C    push        ebp
 0047C96D    mov         ebp,esp
 0047C96F    add         esp,0FFFFFFF4
 0047C972    mov         dword ptr [ebp-4],ecx
 0047C975    mov         dword ptr [ebp-0C],edx
 0047C978    mov         dword ptr [ebp-8],eax
 0047C97B    mov         eax,dword ptr [ebp+8]
 0047C97E    push        eax
 0047C97F    mov         eax,dword ptr [ebp-4]
 0047C982    push        eax
 0047C983    mov         eax,dword ptr [ebp-0C]
 0047C986    push        eax
 0047C987    call        kernel32.FindResourceA
 0047C98C    mov         edx,dword ptr [ebp-8]
 0047C98F    mov         dword ptr [edx+10],eax;TResourceStream.HResInfo:THandle
 0047C992    mov         eax,dword ptr [ebp-8]
 0047C995    cmp         dword ptr [eax+10],0;TResourceStream.HResInfo:THandle
>0047C999    jne         0047C9A2
 0047C99B    push        ebp
 0047C99C    call        Error
 0047C9A1    pop         ecx
 0047C9A2    mov         eax,dword ptr [ebp-8]
 0047C9A5    mov         eax,dword ptr [eax+10];TResourceStream.HResInfo:THandle
 0047C9A8    push        eax
 0047C9A9    mov         eax,dword ptr [ebp-0C]
 0047C9AC    push        eax
 0047C9AD    call        kernel32.LoadResource
 0047C9B2    mov         edx,dword ptr [ebp-8]
 0047C9B5    mov         dword ptr [edx+14],eax;TResourceStream.HGlobal:THandle
 0047C9B8    mov         eax,dword ptr [ebp-8]
 0047C9BB    cmp         dword ptr [eax+14],0;TResourceStream.HGlobal:THandle
>0047C9BF    jne         0047C9C8
 0047C9C1    push        ebp
 0047C9C2    call        Error
 0047C9C7    pop         ecx
 0047C9C8    mov         eax,dword ptr [ebp-8]
 0047C9CB    mov         eax,dword ptr [eax+10];TResourceStream.HResInfo:THandle
 0047C9CE    push        eax
 0047C9CF    mov         eax,dword ptr [ebp-0C]
 0047C9D2    push        eax
 0047C9D3    call        kernel32.SizeofResource
 0047C9D8    push        eax
 0047C9D9    mov         eax,dword ptr [ebp-8]
 0047C9DC    mov         eax,dword ptr [eax+14];TResourceStream.HGlobal:THandle
 0047C9DF    push        eax
 0047C9E0    call        kernel32.LockResource
 0047C9E5    mov         edx,eax
 0047C9E7    mov         eax,dword ptr [ebp-8]
 0047C9EA    pop         ecx
 0047C9EB    call        0047C4D4
 0047C9F0    mov         esp,ebp
 0047C9F2    pop         ebp
 0047C9F3    ret         4
end;*}

//0047C9F8
destructor TResourceStream.Destroy;
begin
{*
 0047C9F8    push        ebp
 0047C9F9    mov         ebp,esp
 0047C9FB    add         esp,0FFFFFFF8
 0047C9FE    call        @BeforeDestruction
 0047CA03    mov         byte ptr [ebp-5],dl
 0047CA06    mov         dword ptr [ebp-4],eax
 0047CA09    mov         eax,dword ptr [ebp-4]
 0047CA0C    mov         eax,dword ptr [eax+14];TResourceStream.HGlobal:THandle
 0047CA0F    call        00408150
 0047CA14    mov         eax,dword ptr [ebp-4]
 0047CA17    mov         eax,dword ptr [eax+14];TResourceStream.HGlobal:THandle
 0047CA1A    push        eax
 0047CA1B    call        kernel32.FreeResource
 0047CA20    mov         dl,byte ptr [ebp-5]
 0047CA23    and         dl,0FC
 0047CA26    mov         eax,dword ptr [ebp-4]
 0047CA29    call        TObject.Destroy
 0047CA2E    cmp         byte ptr [ebp-5],0
>0047CA32    jle         0047CA3C
 0047CA34    mov         eax,dword ptr [ebp-4]
 0047CA37    call        @ClassDestroy
 0047CA3C    pop         ecx
 0047CA3D    pop         ecx
 0047CA3E    pop         ebp
 0047CA3F    ret
*}
end;

//0047CA40
{*function sub_0047CA40(?:?; ?:?):?;
begin
 0047CA40    push        ebp
 0047CA41    mov         ebp,esp
 0047CA43    add         esp,0FFFFFFF0
 0047CA46    mov         dword ptr [ebp-10],ecx
 0047CA49    mov         dword ptr [ebp-0C],edx
 0047CA4C    mov         dword ptr [ebp-4],eax
 0047CA4F    mov         ecx,dword ptr ds:[55B3C4];^SCantWriteResourceStreamError:TResStringRec
 0047CA55    mov         dl,1
 0047CA57    mov         eax,[00475468];EStreamError
 0047CA5C    call        Exception.Create;EStreamError.Create
 0047CA61    call        @RaiseExcept
 0047CA66    mov         eax,dword ptr [ebp-8]
 0047CA69    mov         esp,ebp
 0047CA6B    pop         ebp
 0047CA6C    ret
end;*}

//0047CA70
constructor TFiler.Create(Stream:TStream; BufSize:Integer);
begin
{*
 0047CA70    push        ebp
 0047CA71    mov         ebp,esp
 0047CA73    add         esp,0FFFFFFF4
 0047CA76    test        dl,dl
>0047CA78    je          0047CA82
 0047CA7A    add         esp,0FFFFFFF0
 0047CA7D    call        @ClassCreate
 0047CA82    mov         dword ptr [ebp-0C],ecx
 0047CA85    mov         byte ptr [ebp-5],dl
 0047CA88    mov         dword ptr [ebp-4],eax
 0047CA8B    mov         eax,dword ptr [ebp-4]
 0047CA8E    mov         edx,dword ptr [ebp-0C]
 0047CA91    mov         dword ptr [eax+4],edx
 0047CA94    mov         eax,dword ptr [ebp+8]
 0047CA97    call        @GetMem
 0047CA9C    mov         edx,dword ptr [ebp-4]
 0047CA9F    mov         dword ptr [edx+8],eax
 0047CAA2    mov         eax,dword ptr [ebp-4]
 0047CAA5    mov         edx,dword ptr [ebp+8]
 0047CAA8    mov         dword ptr [eax+0C],edx
 0047CAAB    mov         eax,dword ptr [ebp-4]
 0047CAAE    cmp         byte ptr [ebp-5],0
>0047CAB2    je          0047CAC3
 0047CAB4    call        @AfterConstruction
 0047CAB9    pop         dword ptr fs:[0]
 0047CAC0    add         esp,0C
 0047CAC3    mov         eax,dword ptr [ebp-4]
 0047CAC6    mov         esp,ebp
 0047CAC8    pop         ebp
 0047CAC9    ret         4
*}
end;

//0047CACC
destructor TFiler.Destroy;
begin
{*
 0047CACC    push        ebp
 0047CACD    mov         ebp,esp
 0047CACF    add         esp,0FFFFFFF8
 0047CAD2    call        @BeforeDestruction
 0047CAD7    mov         byte ptr [ebp-5],dl
 0047CADA    mov         dword ptr [ebp-4],eax
 0047CADD    mov         eax,dword ptr [ebp-4]
 0047CAE0    cmp         dword ptr [eax+8],0
>0047CAE4    je          0047CAF7
 0047CAE6    mov         eax,dword ptr [ebp-4]
 0047CAE9    mov         edx,dword ptr [eax+0C]
 0047CAEC    mov         eax,dword ptr [ebp-4]
 0047CAEF    mov         eax,dword ptr [eax+8]
 0047CAF2    call        @FreeMem
 0047CAF7    cmp         byte ptr [ebp-5],0
>0047CAFB    jle         0047CB05
 0047CAFD    mov         eax,dword ptr [ebp-4]
 0047CB00    call        @ClassDestroy
 0047CB05    pop         ecx
 0047CB06    pop         ecx
 0047CB07    pop         ebp
 0047CB08    ret
*}
end;

//0047CB0C
{*procedure sub_0047CB0C(?:?);
begin
 0047CB0C    push        ebp
 0047CB0D    mov         ebp,esp
 0047CB0F    add         esp,0FFFFFFF8
 0047CB12    mov         dword ptr [ebp-8],edx
 0047CB15    mov         dword ptr [ebp-4],eax
 0047CB18    mov         eax,dword ptr [ebp-8]
 0047CB1B    mov         edx,dword ptr [ebp-4]
 0047CB1E    mov         dword ptr [edx+18],eax;TFiler.FRoot:TComponent
 0047CB21    pop         ecx
 0047CB22    pop         ecx
 0047CB23    pop         ebp
 0047CB24    ret
end;*}

//0047CC00
constructor TPropFixup.Create(Instance:TPersistent; InstanceRoot:TComponent; PropInfo:PPropInfo; const RootName:AnsiString; const Name:AnsiString);
begin
{*
 0047CC00    push        ebp
 0047CC01    mov         ebp,esp
 0047CC03    add         esp,0FFFFFFF4
 0047CC06    test        dl,dl
>0047CC08    je          0047CC12
 0047CC0A    add         esp,0FFFFFFF0
 0047CC0D    call        @ClassCreate
 0047CC12    mov         dword ptr [ebp-0C],ecx
 0047CC15    mov         byte ptr [ebp-5],dl
 0047CC18    mov         dword ptr [ebp-4],eax
 0047CC1B    mov         eax,dword ptr [ebp-4]
 0047CC1E    mov         edx,dword ptr [ebp-0C]
 0047CC21    mov         dword ptr [eax+4],edx
 0047CC24    mov         eax,dword ptr [ebp-4]
 0047CC27    mov         edx,dword ptr [ebp+14]
 0047CC2A    mov         dword ptr [eax+8],edx
 0047CC2D    mov         eax,dword ptr [ebp-4]
 0047CC30    mov         edx,dword ptr [ebp+10]
 0047CC33    mov         dword ptr [eax+0C],edx
 0047CC36    mov         eax,dword ptr [ebp-4]
 0047CC39    add         eax,10
 0047CC3C    mov         edx,dword ptr [ebp+0C]
 0047CC3F    call        @LStrAsg
 0047CC44    mov         eax,dword ptr [ebp-4]
 0047CC47    add         eax,14
 0047CC4A    mov         edx,dword ptr [ebp+8]
 0047CC4D    call        @LStrAsg
 0047CC52    mov         eax,dword ptr [ebp-4]
 0047CC55    cmp         byte ptr [ebp-5],0
>0047CC59    je          0047CC6A
 0047CC5B    call        @AfterConstruction
 0047CC60    pop         dword ptr fs:[0]
 0047CC67    add         esp,0C
 0047CC6A    mov         eax,dword ptr [ebp-4]
 0047CC6D    mov         esp,ebp
 0047CC6F    pop         ebp
 0047CC70    ret         10
*}
end;

//0047CC74
{*function sub_0047CC74(?:Pointer):?;
begin
 0047CC74    push        ebp
 0047CC75    mov         ebp,esp
 0047CC77    add         esp,0FFFFFFF0
 0047CC7A    mov         dword ptr [ebp-4],eax
 0047CC7D    mov         byte ptr [ebp-5],0
 0047CC81    mov         eax,dword ptr [ebp-4]
 0047CC84    mov         eax,dword ptr [eax+14]
 0047CC87    mov         dword ptr [ebp-0C],eax
 0047CC8A    mov         eax,dword ptr [ebp-0C]
 0047CC8D    mov         dword ptr [ebp-10],eax
>0047CC90    jmp         0047CC95
 0047CC92    inc         dword ptr [ebp-10]
 0047CC95    mov         eax,dword ptr [ebp-10]
 0047CC98    mov         al,byte ptr [eax]
 0047CC9A    test        al,al
>0047CC9C    je          0047CCA2
 0047CC9E    sub         al,2E
>0047CCA0    jne         0047CC92
 0047CCA2    mov         eax,dword ptr [ebp-10]
 0047CCA5    cmp         byte ptr [eax],0
>0047CCA8    je          0047CCD9
 0047CCAA    mov         ecx,dword ptr [ebp-10]
 0047CCAD    sub         ecx,dword ptr [ebp-0C]
 0047CCB0    mov         eax,dword ptr [ebp-4]
 0047CCB3    add         eax,10
 0047CCB6    mov         edx,dword ptr [ebp-0C]
 0047CCB9    call        @LStrFromPCharLen
 0047CCBE    mov         ecx,dword ptr [ebp-10]
 0047CCC1    sub         ecx,dword ptr [ebp-0C]
 0047CCC4    inc         ecx
 0047CCC5    mov         eax,dword ptr [ebp-4]
 0047CCC8    add         eax,14
 0047CCCB    mov         edx,1
 0047CCD0    call        @LStrDelete
 0047CCD5    mov         byte ptr [ebp-5],1
 0047CCD9    mov         al,byte ptr [ebp-5]
 0047CCDC    mov         esp,ebp
 0047CCDE    pop         ebp
 0047CCDF    ret
end;*}

//0047CCE0
{*procedure sub_0047CCE0(?:?);
begin
 0047CCE0    push        ebp
 0047CCE1    mov         ebp,esp
 0047CCE3    add         esp,0FFFFFFF8
 0047CCE6    mov         dword ptr [ebp-8],edx
 0047CCE9    mov         dword ptr [ebp-4],eax
 0047CCEC    mov         ecx,dword ptr [ebp-8]
 0047CCEF    mov         eax,dword ptr [ebp-4]
 0047CCF2    mov         edx,dword ptr [eax+0C];TPropFixup.FPropInfo:PPropInfo
 0047CCF5    mov         eax,dword ptr [ebp-4]
 0047CCF8    mov         eax,dword ptr [eax+4];TPropFixup.FInstance:TPersistent
 0047CCFB    call        SetOrdProp
 0047CD00    pop         ecx
 0047CD01    pop         ecx
 0047CD02    pop         ebp
 0047CD03    ret
end;*}

//0047CD04
{*procedure sub_0047CD04(?:?);
begin
 0047CD04    push        ebp
 0047CD05    mov         ebp,esp
 0047CD07    add         esp,0FFFFFFF4
 0047CD0A    xor         ecx,ecx
 0047CD0C    mov         dword ptr [ebp-0C],ecx
 0047CD0F    mov         dword ptr [ebp-8],edx
 0047CD12    mov         dword ptr [ebp-4],eax
 0047CD15    xor         eax,eax
 0047CD17    push        ebp
 0047CD18    push        47CD8D
 0047CD1D    push        dword ptr fs:[eax]
 0047CD20    mov         dword ptr fs:[eax],esp
 0047CD23    lea         eax,[ebp-0C]
 0047CD26    call        @IntfClear
 0047CD2B    cmp         dword ptr [ebp-8],0
>0047CD2F    je          0047CD63
 0047CD31    mov         eax,dword ptr [ebp-4]
 0047CD34    mov         eax,dword ptr [eax+0C];TPropIntfFixup.FPropInfo:PPropInfo
 0047CD37    mov         eax,dword ptr [eax]
 0047CD39    mov         eax,dword ptr [eax]
 0047CD3B    call        GetTypeData
 0047CD40    add         eax,5
 0047CD43    push        eax
 0047CD44    lea         eax,[ebp-0C]
 0047CD47    call        @IntfClear
 0047CD4C    mov         ecx,eax
 0047CD4E    mov         eax,dword ptr [ebp-8]
 0047CD51    pop         edx
 0047CD52    call        0046CC0C
 0047CD57    test        al,al
>0047CD59    jne         0047CD63
 0047CD5B    lea         eax,[ebp-0C]
 0047CD5E    call        @IntfClear
 0047CD63    mov         ecx,dword ptr [ebp-0C]
 0047CD66    mov         eax,dword ptr [ebp-4]
 0047CD69    mov         edx,dword ptr [eax+0C];TPropIntfFixup.FPropInfo:PPropInfo
 0047CD6C    mov         eax,dword ptr [ebp-4]
 0047CD6F    mov         eax,dword ptr [eax+4];TPropIntfFixup.FInstance:TPersistent
 0047CD72    call        SetInterfaceProp
 0047CD77    xor         eax,eax
 0047CD79    pop         edx
 0047CD7A    pop         ecx
 0047CD7B    pop         ecx
 0047CD7C    mov         dword ptr fs:[eax],edx
 0047CD7F    push        47CD94
 0047CD84    lea         eax,[ebp-0C]
 0047CD87    call        @IntfClear
 0047CD8C    ret
>0047CD8D    jmp         @HandleFinally
>0047CD92    jmp         0047CD84
 0047CD94    mov         esp,ebp
 0047CD96    pop         ebp
 0047CD97    ret
end;*}

//0047CD98
{*function sub_0047CD98(?:?; ?:AnsiString):?;
begin
 0047CD98    push        ebp
 0047CD99    mov         ebp,esp
 0047CD9B    add         esp,0FFFFFFE0
 0047CD9E    xor         ecx,ecx
 0047CDA0    mov         dword ptr [ebp-20],ecx
 0047CDA3    mov         dword ptr [ebp-8],edx
 0047CDA6    mov         dword ptr [ebp-4],eax
 0047CDA9    xor         eax,eax
 0047CDAB    push        ebp
 0047CDAC    push        47CE82
 0047CDB1    push        dword ptr fs:[eax]
 0047CDB4    mov         dword ptr fs:[eax],esp
 0047CDB7    xor         eax,eax
 0047CDB9    mov         dword ptr [ebp-0C],eax
 0047CDBC    cmp         dword ptr [ebp-8],0
>0047CDC0    je          0047CE6C
 0047CDC6    mov         eax,dword ptr [ebp-4]
 0047CDC9    mov         dword ptr [ebp-10],eax
 0047CDCC    mov         eax,dword ptr [ebp-8]
 0047CDCF    mov         dword ptr [ebp-1C],eax
>0047CDD2    jmp         0047CE5A
 0047CDD7    mov         eax,dword ptr [ebp-1C]
 0047CDDA    mov         dword ptr [ebp-18],eax
>0047CDDD    jmp         0047CDE2
 0047CDDF    inc         dword ptr [ebp-1C]
 0047CDE2    mov         eax,dword ptr [ebp-1C]
 0047CDE5    mov         al,byte ptr [eax]
 0047CDE7    test        al,al
>0047CDE9    je          0047CDF1
 0047CDEB    add         al,0D3
 0047CDED    sub         al,2
>0047CDEF    jae         0047CDDF
 0047CDF1    mov         ecx,dword ptr [ebp-1C]
 0047CDF4    sub         ecx,dword ptr [ebp-18]
 0047CDF7    lea         eax,[ebp-20]
 0047CDFA    mov         edx,dword ptr [ebp-18]
 0047CDFD    call        @LStrFromPCharLen
 0047CE02    mov         edx,dword ptr [ebp-20]
 0047CE05    mov         eax,dword ptr [ebp-10]
 0047CE08    call        004836E0
 0047CE0D    mov         dword ptr [ebp-14],eax
 0047CE10    cmp         dword ptr [ebp-14],0
>0047CE14    jne         0047CE2D
 0047CE16    mov         edx,47CE98;'Owner'
 0047CE1B    mov         eax,dword ptr [ebp-20]
 0047CE1E    call        SameText
 0047CE23    test        al,al
>0047CE25    je          0047CE2D
 0047CE27    mov         eax,dword ptr [ebp-10]
 0047CE2A    mov         dword ptr [ebp-14],eax
 0047CE2D    cmp         dword ptr [ebp-14],0
>0047CE31    je          0047CE6C
 0047CE33    mov         eax,dword ptr [ebp-1C]
 0047CE36    cmp         byte ptr [eax],2E
>0047CE39    jne         0047CE3E
 0047CE3B    inc         dword ptr [ebp-1C]
 0047CE3E    mov         eax,dword ptr [ebp-1C]
 0047CE41    cmp         byte ptr [eax],2D
>0047CE44    jne         0047CE49
 0047CE46    inc         dword ptr [ebp-1C]
 0047CE49    mov         eax,dword ptr [ebp-1C]
 0047CE4C    cmp         byte ptr [eax],3E
>0047CE4F    jne         0047CE54
 0047CE51    inc         dword ptr [ebp-1C]
 0047CE54    mov         eax,dword ptr [ebp-14]
 0047CE57    mov         dword ptr [ebp-10],eax
 0047CE5A    mov         eax,dword ptr [ebp-1C]
 0047CE5D    cmp         byte ptr [eax],0
>0047CE60    jne         0047CDD7
 0047CE66    mov         eax,dword ptr [ebp-10]
 0047CE69    mov         dword ptr [ebp-0C],eax
 0047CE6C    xor         eax,eax
 0047CE6E    pop         edx
 0047CE6F    pop         ecx
 0047CE70    pop         ecx
 0047CE71    mov         dword ptr fs:[eax],edx
 0047CE74    push        47CE89
 0047CE79    lea         eax,[ebp-20]
 0047CE7C    call        @LStrClr
 0047CE81    ret
>0047CE82    jmp         @HandleFinally
>0047CE87    jmp         0047CE79
 0047CE89    mov         eax,dword ptr [ebp-0C]
 0047CE8C    mov         esp,ebp
 0047CE8E    pop         ebp
 0047CE8F    ret
end;*}

//0047CEA0
{*procedure sub_0047CEA0(?:?; ?:?);
begin
 0047CEA0    push        ebp
 0047CEA1    mov         ebp,esp
 0047CEA3    push        ecx
 0047CEA4    mov         dword ptr [ebp-4],eax
 0047CEA7    mov         eax,dword ptr [ebp+8]
 0047CEAA    mov         eax,dword ptr [eax-4]
 0047CEAD    mov         edx,dword ptr [ebp-4]
 0047CEB0    call        00478890
 0047CEB5    test        eax,eax
>0047CEB7    jge         0047CED9
 0047CEB9    mov         eax,dword ptr [ebp+8]
 0047CEBC    mov         eax,dword ptr [eax-8]
 0047CEBF    mov         edx,dword ptr [ebp-4]
 0047CEC2    call        00478890
 0047CEC7    test        eax,eax
>0047CEC9    jl          0047CED9
 0047CECB    mov         eax,dword ptr [ebp+8]
 0047CECE    mov         eax,dword ptr [eax-4]
 0047CED1    mov         edx,dword ptr [ebp-4]
 0047CED4    call        TList.Add
 0047CED9    pop         ecx
 0047CEDA    pop         ebp
 0047CEDB    ret
end;*}

//0047CEDC
{*procedure sub_0047CEDC(?:?; ?:?);
begin
 0047CEDC    push        ebp
 0047CEDD    mov         ebp,esp
 0047CEDF    add         esp,0FFFFFFF8
 0047CEE2    mov         dword ptr [ebp-4],eax
 0047CEE5    mov         eax,dword ptr [ebp+8]
 0047CEE8    mov         eax,dword ptr [eax-4]
 0047CEEB    mov         edx,dword ptr [ebp-4]
 0047CEEE    call        00478890
 0047CEF3    mov         dword ptr [ebp-8],eax
 0047CEF6    cmp         dword ptr [ebp-8],0FFFFFFFF
>0047CEFA    je          0047CF0A
 0047CEFC    mov         eax,dword ptr [ebp+8]
 0047CEFF    mov         eax,dword ptr [eax-4]
 0047CF02    mov         edx,dword ptr [ebp-8]
 0047CF05    call        00478668
 0047CF0A    mov         eax,dword ptr [ebp+8]
 0047CF0D    mov         eax,dword ptr [eax-8]
 0047CF10    mov         edx,dword ptr [ebp-4]
 0047CF13    call        00478890
 0047CF18    test        eax,eax
>0047CF1A    jge         0047CF2A
 0047CF1C    mov         eax,dword ptr [ebp+8]
 0047CF1F    mov         eax,dword ptr [eax-8]
 0047CF22    mov         edx,dword ptr [ebp-4]
 0047CF25    call        TList.Add
 0047CF2A    pop         ecx
 0047CF2B    pop         ecx
 0047CF2C    pop         ebp
 0047CF2D    ret
end;*}

//0047CF30
procedure sub_0047CF30;
begin
{*
 0047CF30    push        ebp
 0047CF31    mov         ebp,esp
 0047CF33    add         esp,0FFFFFFDC
 0047CF36    mov         eax,[0055DAC8];gvar_0055DAC8:IReadWriteSync
 0047CF3B    mov         edx,dword ptr [eax]
 0047CF3D    call        dword ptr [edx+14]
 0047CF40    xor         eax,eax
 0047CF42    push        ebp
 0047CF43    push        47D10B
 0047CF48    push        dword ptr fs:[eax]
 0047CF4B    mov         dword ptr fs:[eax],esp
 0047CF4E    mov         eax,[0055DAE4];gvar_0055DAE4
 0047CF53    call        TThreadList.LockList
 0047CF58    mov         dword ptr [ebp-0C],eax
 0047CF5B    xor         eax,eax
 0047CF5D    push        ebp
 0047CF5E    push        47D0EC
 0047CF63    push        dword ptr fs:[eax]
 0047CF66    mov         dword ptr fs:[eax],esp
 0047CF69    mov         eax,dword ptr [ebp-0C]
 0047CF6C    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0047CF70    jle         0047D0D4
 0047CF76    mov         dl,1
 0047CF78    mov         eax,[004759C0];TList
 0047CF7D    call        TObject.Create;TList.Create
 0047CF82    mov         dword ptr [ebp-4],eax
 0047CF85    xor         eax,eax
 0047CF87    push        ebp
 0047CF88    push        47D0CD
 0047CF8D    push        dword ptr fs:[eax]
 0047CF90    mov         dword ptr fs:[eax],esp
 0047CF93    mov         dl,1
 0047CF95    mov         eax,[004759C0];TList
 0047CF9A    call        TObject.Create;TList.Create
 0047CF9F    mov         dword ptr [ebp-8],eax
 0047CFA2    xor         eax,eax
 0047CFA4    push        ebp
 0047CFA5    push        47D069
 0047CFAA    push        dword ptr fs:[eax]
 0047CFAD    mov         dword ptr fs:[eax],esp
 0047CFB0    xor         eax,eax
 0047CFB2    mov         dword ptr [ebp-10],eax
>0047CFB5    jmp         0047D044
 0047CFBA    mov         edx,dword ptr [ebp-10]
 0047CFBD    mov         eax,dword ptr [ebp-0C]
 0047CFC0    call        TList.Get
 0047CFC5    mov         dword ptr [ebp-20],eax
 0047CFC8    mov         eax,dword ptr [ebp-20]
 0047CFCB    mov         eax,dword ptr [eax+10]
 0047CFCE    call        0047805C
 0047CFD3    mov         dword ptr [ebp-14],eax
 0047CFD6    cmp         dword ptr [ebp-14],0
>0047CFDA    jne         0047CFF1
 0047CFDC    mov         eax,dword ptr [ebp-20]
 0047CFDF    mov         edx,dword ptr [eax+0C]
 0047CFE2    mov         eax,dword ptr [ebp-20]
 0047CFE5    mov         eax,dword ptr [eax+4]
 0047CFE8    call        GetOrdProp
 0047CFED    test        eax,eax
>0047CFEF    je          0047D034
 0047CFF1    cmp         dword ptr [ebp-14],0
>0047CFF5    je          0047D012
 0047CFF7    mov         eax,dword ptr [ebp-20]
 0047CFFA    mov         edx,dword ptr [eax+14]
 0047CFFD    mov         eax,dword ptr [ebp-14]
 0047D000    call        0047CD98
 0047D005    mov         dword ptr [ebp-1C],eax
 0047D008    mov         edx,dword ptr [ebp-1C]
 0047D00B    mov         eax,dword ptr [ebp-20]
 0047D00E    mov         ecx,dword ptr [eax]
 0047D010    call        dword ptr [ecx]
 0047D012    push        ebp
 0047D013    mov         eax,dword ptr [ebp-20]
 0047D016    mov         eax,dword ptr [eax+4]
 0047D019    call        0047CEA0
 0047D01E    pop         ecx
 0047D01F    mov         edx,dword ptr [ebp-10]
 0047D022    mov         eax,dword ptr [ebp-0C]
 0047D025    call        00478668
 0047D02A    mov         eax,dword ptr [ebp-20]
 0047D02D    call        TObject.Free
>0047D032    jmp         0047D044
 0047D034    push        ebp
 0047D035    mov         eax,dword ptr [ebp-20]
 0047D038    mov         eax,dword ptr [eax+4]
 0047D03B    call        0047CEDC
 0047D040    pop         ecx
 0047D041    inc         dword ptr [ebp-10]
 0047D044    mov         eax,dword ptr [ebp-0C]
 0047D047    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0047D04A    cmp         eax,dword ptr [ebp-10]
>0047D04D    jg          0047CFBA
 0047D053    xor         eax,eax
 0047D055    pop         edx
 0047D056    pop         ecx
 0047D057    pop         ecx
 0047D058    mov         dword ptr fs:[eax],edx
 0047D05B    push        47D070
 0047D060    mov         eax,dword ptr [ebp-8]
 0047D063    call        TObject.Free
 0047D068    ret
>0047D069    jmp         @HandleFinally
>0047D06E    jmp         0047D060
 0047D070    mov         eax,dword ptr [ebp-4]
 0047D073    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0047D076    dec         eax
 0047D077    test        eax,eax
>0047D079    jl          0047D0B7
 0047D07B    inc         eax
 0047D07C    mov         dword ptr [ebp-24],eax
 0047D07F    mov         dword ptr [ebp-10],0
 0047D086    mov         edx,dword ptr [ebp-10]
 0047D089    mov         eax,dword ptr [ebp-4]
 0047D08C    call        TList.Get
 0047D091    mov         dword ptr [ebp-18],eax
 0047D094    mov         eax,dword ptr [ebp-18]
 0047D097    mov         edx,dword ptr ds:[47698C];TComponent
 0047D09D    call        @IsClass
 0047D0A2    test        al,al
>0047D0A4    je          0047D0AF
 0047D0A6    mov         eax,dword ptr [ebp-18]
 0047D0A9    and         word ptr [eax+1C],0FF7F
 0047D0AF    inc         dword ptr [ebp-10]
 0047D0B2    dec         dword ptr [ebp-24]
>0047D0B5    jne         0047D086
 0047D0B7    xor         eax,eax
 0047D0B9    pop         edx
 0047D0BA    pop         ecx
 0047D0BB    pop         ecx
 0047D0BC    mov         dword ptr fs:[eax],edx
 0047D0BF    push        47D0D4
 0047D0C4    mov         eax,dword ptr [ebp-4]
 0047D0C7    call        TObject.Free
 0047D0CC    ret
>0047D0CD    jmp         @HandleFinally
>0047D0D2    jmp         0047D0C4
 0047D0D4    xor         eax,eax
 0047D0D6    pop         edx
 0047D0D7    pop         ecx
 0047D0D8    pop         ecx
 0047D0D9    mov         dword ptr fs:[eax],edx
 0047D0DC    push        47D0F3
 0047D0E1    mov         eax,[0055DAE4];gvar_0055DAE4
 0047D0E6    call        TThreadList.UnlockList
 0047D0EB    ret
>0047D0EC    jmp         @HandleFinally
>0047D0F1    jmp         0047D0E1
 0047D0F3    xor         eax,eax
 0047D0F5    pop         edx
 0047D0F6    pop         ecx
 0047D0F7    pop         ecx
 0047D0F8    mov         dword ptr fs:[eax],edx
 0047D0FB    push        47D112
 0047D100    mov         eax,[0055DAC8];gvar_0055DAC8:IReadWriteSync
 0047D105    mov         edx,dword ptr [eax]
 0047D107    call        dword ptr [edx+18]
 0047D10A    ret
>0047D10B    jmp         @HandleFinally
>0047D110    jmp         0047D100
 0047D112    mov         esp,ebp
 0047D114    pop         ebp
 0047D115    ret
*}
end;

//0047D118
procedure RemoveFixupReferences(Root:TComponent; const RootName:AnsiString);
begin
{*
 0047D118    push        ebp
 0047D119    mov         ebp,esp
 0047D11B    add         esp,0FFFFFFEC
 0047D11E    mov         dword ptr [ebp-8],edx
 0047D121    mov         dword ptr [ebp-4],eax
 0047D124    cmp         dword ptr ds:[55DAE4],0;gvar_0055DAE4
>0047D12B    je          0047D1CD
 0047D131    mov         eax,[0055DAE4];gvar_0055DAE4
 0047D136    call        TThreadList.LockList
 0047D13B    mov         dword ptr [ebp-14],eax
 0047D13E    xor         eax,eax
 0047D140    push        ebp
 0047D141    push        47D1C6
 0047D146    push        dword ptr fs:[eax]
 0047D149    mov         dword ptr fs:[eax],esp
 0047D14C    mov         eax,dword ptr [ebp-14]
 0047D14F    mov         eax,dword ptr [eax+8]
 0047D152    dec         eax
 0047D153    cmp         eax,0
>0047D156    jl          0047D1AE
 0047D158    mov         dword ptr [ebp-0C],eax
 0047D15B    mov         edx,dword ptr [ebp-0C]
 0047D15E    mov         eax,dword ptr [ebp-14]
 0047D161    call        TList.Get
 0047D166    mov         dword ptr [ebp-10],eax
 0047D169    cmp         dword ptr [ebp-4],0
>0047D16D    je          0047D17A
 0047D16F    mov         eax,dword ptr [ebp-10]
 0047D172    mov         eax,dword ptr [eax+8]
 0047D175    cmp         eax,dword ptr [ebp-4]
>0047D178    jne         0047D1A5
 0047D17A    cmp         dword ptr [ebp-8],0
>0047D17E    je          0047D192
 0047D180    mov         eax,dword ptr [ebp-10]
 0047D183    mov         edx,dword ptr [eax+10]
 0047D186    mov         eax,dword ptr [ebp-8]
 0047D189    call        SameText
 0047D18E    test        al,al
>0047D190    je          0047D1A5
 0047D192    mov         edx,dword ptr [ebp-0C]
 0047D195    mov         eax,dword ptr [ebp-14]
 0047D198    call        00478668
 0047D19D    mov         eax,dword ptr [ebp-10]
 0047D1A0    call        TObject.Free
 0047D1A5    dec         dword ptr [ebp-0C]
 0047D1A8    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0047D1AC    jne         0047D15B
 0047D1AE    xor         eax,eax
 0047D1B0    pop         edx
 0047D1B1    pop         ecx
 0047D1B2    pop         ecx
 0047D1B3    mov         dword ptr fs:[eax],edx
 0047D1B6    push        47D1CD
 0047D1BB    mov         eax,[0055DAE4];gvar_0055DAE4
 0047D1C0    call        TThreadList.UnlockList
 0047D1C5    ret
>0047D1C6    jmp         @HandleFinally
>0047D1CB    jmp         0047D1BB
 0047D1CD    mov         esp,ebp
 0047D1CF    pop         ebp
 0047D1D0    ret
*}
end;

//0047D1D4
{*procedure sub_0047D1D4(?:?);
begin
 0047D1D4    push        ebp
 0047D1D5    mov         ebp,esp
 0047D1D7    add         esp,0FFFFFFF0
 0047D1DA    mov         dword ptr [ebp-4],eax
 0047D1DD    cmp         dword ptr ds:[55DAE4],0;gvar_0055DAE4
>0047D1E4    je          0047D264
 0047D1E6    mov         eax,[0055DAE4];gvar_0055DAE4
 0047D1EB    call        TThreadList.LockList
 0047D1F0    mov         dword ptr [ebp-10],eax
 0047D1F3    xor         eax,eax
 0047D1F5    push        ebp
 0047D1F6    push        47D25D
 0047D1FB    push        dword ptr fs:[eax]
 0047D1FE    mov         dword ptr fs:[eax],esp
 0047D201    mov         eax,dword ptr [ebp-10]
 0047D204    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0047D207    dec         eax
 0047D208    cmp         eax,0
>0047D20B    jl          0047D245
 0047D20D    mov         dword ptr [ebp-8],eax
 0047D210    mov         edx,dword ptr [ebp-8]
 0047D213    mov         eax,dword ptr [ebp-10]
 0047D216    call        TList.Get
 0047D21B    mov         dword ptr [ebp-0C],eax
 0047D21E    mov         eax,dword ptr [ebp-0C]
 0047D221    mov         eax,dword ptr [eax+4]
 0047D224    cmp         eax,dword ptr [ebp-4]
>0047D227    jne         0047D23C
 0047D229    mov         edx,dword ptr [ebp-8]
 0047D22C    mov         eax,dword ptr [ebp-10]
 0047D22F    call        00478668
 0047D234    mov         eax,dword ptr [ebp-0C]
 0047D237    call        TObject.Free
 0047D23C    dec         dword ptr [ebp-8]
 0047D23F    cmp         dword ptr [ebp-8],0FFFFFFFF
>0047D243    jne         0047D210
 0047D245    xor         eax,eax
 0047D247    pop         edx
 0047D248    pop         ecx
 0047D249    pop         ecx
 0047D24A    mov         dword ptr fs:[eax],edx
 0047D24D    push        47D264
 0047D252    mov         eax,[0055DAE4];gvar_0055DAE4
 0047D257    call        TThreadList.UnlockList
 0047D25C    ret
>0047D25D    jmp         @HandleFinally
>0047D262    jmp         0047D252
 0047D264    mov         esp,ebp
 0047D266    pop         ebp
 0047D267    ret
end;*}

//0047D268
procedure ReadError(Ident:PResStringRec);
begin
{*
 0047D268    push        ebp
 0047D269    mov         ebp,esp
 0047D26B    push        ecx
 0047D26C    mov         dword ptr [ebp-4],eax
 0047D26F    mov         ecx,dword ptr [ebp-4]
 0047D272    mov         dl,1
 0047D274    mov         eax,[00475630];EReadError
 0047D279    call        Exception.Create
 0047D27E    call        @RaiseExcept
 0047D283    pop         ecx
 0047D284    pop         ebp
 0047D285    ret
*}
end;

//0047D288
procedure sub_0047D288;
begin
{*
 0047D288    push        ebp
 0047D289    mov         ebp,esp
 0047D28B    mov         eax,[0055B494];^SInvalidProperty:TResStringRec
 0047D290    call        ReadError
 0047D295    pop         ebp
 0047D296    ret
*}
end;

//0047D298
{*procedure sub_0047D298(?:?);
begin
 0047D298    push        ebp
 0047D299    mov         ebp,esp
 0047D29B    add         esp,0FFFFFFF4
 0047D29E    mov         dword ptr [ebp-4],eax
 0047D2A1    mov         eax,dword ptr [ebp-4]
 0047D2A4    mov         dword ptr [ebp-0C],eax
 0047D2A7    mov         byte ptr [ebp-8],0B
 0047D2AB    lea         eax,[ebp-0C]
 0047D2AE    push        eax
 0047D2AF    push        0
 0047D2B1    mov         ecx,dword ptr ds:[55B1C4];^SUnknownProperty:TResStringRec
 0047D2B7    mov         dl,1
 0047D2B9    mov         eax,[00475630];EReadError
 0047D2BE    call        Exception.CreateResFmt;EReadError.Create
 0047D2C3    call        @RaiseExcept
 0047D2C8    mov         esp,ebp
 0047D2CA    pop         ebp
 0047D2CB    ret
end;*}

//0047D2CC
{*function sub_0047D2CC(?:?; ?:?):?;
begin
 0047D2CC    push        ebp
 0047D2CD    mov         ebp,esp
 0047D2CF    add         esp,0FFFFFFF4
 0047D2D2    mov         dword ptr [ebp-8],edx
 0047D2D5    mov         dword ptr [ebp-4],eax
 0047D2D8    mov         edx,dword ptr [ebp-8]
 0047D2DB    mov         eax,dword ptr [ebp-4]
 0047D2DE    call        00474454
 0047D2E3    mov         dword ptr [ebp-0C],eax
 0047D2E6    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0047D2EA    jne         0047D2F1
 0047D2EC    call        0047D288
 0047D2F1    mov         eax,dword ptr [ebp-0C]
 0047D2F4    mov         esp,ebp
 0047D2F6    pop         ebp
 0047D2F7    ret
end;*}

//0047D2F8
destructor TReader.Destroy;
begin
{*
 0047D2F8    push        ebp
 0047D2F9    mov         ebp,esp
 0047D2FB    add         esp,0FFFFFFF8
 0047D2FE    push        ebx
 0047D2FF    call        @BeforeDestruction
 0047D304    mov         byte ptr [ebp-5],dl
 0047D307    mov         dword ptr [ebp-4],eax
 0047D30A    mov         eax,dword ptr [ebp-4]
 0047D30D    mov         edx,dword ptr [eax+10]
 0047D310    mov         eax,dword ptr [ebp-4]
 0047D313    sub         edx,dword ptr [eax+14]
 0047D316    mov         eax,dword ptr [ebp-4]
 0047D319    mov         eax,dword ptr [eax+4]
 0047D31C    mov         cx,1
 0047D320    mov         ebx,dword ptr [eax]
 0047D322    call        dword ptr [ebx+14]
 0047D325    mov         dl,byte ptr [ebp-5]
 0047D328    and         dl,0FC
 0047D32B    mov         eax,dword ptr [ebp-4]
 0047D32E    call        TFiler.Destroy
 0047D333    cmp         byte ptr [ebp-5],0
>0047D337    jle         0047D341
 0047D339    mov         eax,dword ptr [ebp-4]
 0047D33C    call        @ClassDestroy
 0047D341    pop         ebx
 0047D342    pop         ecx
 0047D343    pop         ecx
 0047D344    pop         ebp
 0047D345    ret
*}
end;

//0047D348
{*procedure sub_0047D348(?:?; ?:?);
begin
 0047D348    push        ebp
 0047D349    mov         ebp,esp
 0047D34B    add         esp,0FFFFFFF8
 0047D34E    mov         byte ptr [ebp-5],dl
 0047D351    mov         dword ptr [ebp-4],eax
 0047D354    mov         eax,dword ptr [ebp-4]
 0047D357    call        TReader.ReadValue
 0047D35C    cmp         al,byte ptr [ebp-5]
>0047D35F    je          0047D374
 0047D361    mov         eax,dword ptr [ebp-4]
 0047D364    dec         dword ptr [eax+10]
 0047D367    mov         eax,dword ptr [ebp-4]
 0047D36A    call        TReader.SkipValue
 0047D36F    call        0047D288
 0047D374    pop         ecx
 0047D375    pop         ecx
 0047D376    pop         ebp
 0047D377    ret
end;*}

//0047D378
{*procedure sub_0047D378(?:?; ?:?; ?:?; ?:?);
begin
 0047D378    push        ebp
 0047D379    mov         ebp,esp
 0047D37B    add         esp,0FFFFFFF4
 0047D37E    mov         byte ptr [ebp-9],cl
 0047D381    mov         dword ptr [ebp-8],edx
 0047D384    mov         dword ptr [ebp-4],eax
 0047D387    mov         eax,dword ptr [ebp-4]
 0047D38A    mov         edx,dword ptr [eax+70];TReader.FPropName:String
 0047D38D    mov         eax,dword ptr [ebp-8]
 0047D390    call        SameText
 0047D395    test        al,al
>0047D397    je          0047D3B4
 0047D399    cmp         word ptr [ebp+12],0
>0047D39E    je          0047D3B4
 0047D3A0    mov         edx,dword ptr [ebp-4]
 0047D3A3    mov         eax,dword ptr [ebp+14]
 0047D3A6    call        dword ptr [ebp+10]
 0047D3A9    mov         eax,dword ptr [ebp-4]
 0047D3AC    add         eax,70;TReader.FPropName:String
 0047D3AF    call        @LStrClr
 0047D3B4    mov         esp,ebp
 0047D3B6    pop         ebp
 0047D3B7    ret         10
end;*}

//0047D3BC
{*procedure sub_0047D3BC(?:?; ?:?; ?:?; ?:?);
begin
 0047D3BC    push        ebp
 0047D3BD    mov         ebp,esp
 0047D3BF    add         esp,0FFFFFFEC
 0047D3C2    mov         byte ptr [ebp-11],cl
 0047D3C5    mov         dword ptr [ebp-8],edx
 0047D3C8    mov         dword ptr [ebp-4],eax
 0047D3CB    mov         eax,dword ptr [ebp-4]
 0047D3CE    mov         edx,dword ptr [eax+70];TReader.FPropName:String
 0047D3D1    mov         eax,dword ptr [ebp-8]
 0047D3D4    call        SameText
 0047D3D9    test        al,al
>0047D3DB    je          0047D493
 0047D3E1    cmp         word ptr [ebp+12],0
>0047D3E6    je          0047D493
 0047D3EC    mov         eax,dword ptr [ebp-4]
 0047D3EF    call        TReader.ReadValue
 0047D3F4    cmp         al,0A
>0047D3F6    je          0047D412
 0047D3F8    mov         eax,dword ptr [ebp-4]
 0047D3FB    dec         dword ptr [eax+10];TReader.FBufPos:Integer
 0047D3FE    mov         eax,dword ptr [ebp-4]
 0047D401    call        TReader.SkipValue
 0047D406    mov         eax,dword ptr [ebp-4]
 0047D409    mov         byte ptr [eax+78],1;TReader.FCanHandleExcepts:Boolean
 0047D40D    call        0047D288
 0047D412    mov         dl,1
 0047D414    mov         eax,[00476368];TMemoryStream
 0047D419    call        TObject.Create;TMemoryStream.Create
 0047D41E    mov         dword ptr [ebp-0C],eax
 0047D421    xor         eax,eax
 0047D423    push        ebp
 0047D424    push        47D481
 0047D429    push        dword ptr fs:[eax]
 0047D42C    mov         dword ptr fs:[eax],esp
 0047D42F    lea         edx,[ebp-10]
 0047D432    mov         ecx,4
 0047D437    mov         eax,dword ptr [ebp-4]
 0047D43A    call        TReader.Read
 0047D43F    mov         edx,dword ptr [ebp-10]
 0047D442    mov         eax,dword ptr [ebp-0C]
 0047D445    mov         ecx,dword ptr [eax]
 0047D447    call        dword ptr [ecx+4];TMemoryStream.sub_0047C6FC
 0047D44A    mov         eax,dword ptr [ebp-0C]
 0047D44D    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0047D450    mov         ecx,dword ptr [ebp-10]
 0047D453    mov         eax,dword ptr [ebp-4]
 0047D456    call        TReader.Read
 0047D45B    mov         eax,dword ptr [ebp-4]
 0047D45E    mov         byte ptr [eax+78],1;TReader.FCanHandleExcepts:Boolean
 0047D462    mov         edx,dword ptr [ebp-0C]
 0047D465    mov         eax,dword ptr [ebp+14]
 0047D468    call        dword ptr [ebp+10]
 0047D46B    xor         eax,eax
 0047D46D    pop         edx
 0047D46E    pop         ecx
 0047D46F    pop         ecx
 0047D470    mov         dword ptr fs:[eax],edx
 0047D473    push        47D488
 0047D478    mov         eax,dword ptr [ebp-0C]
 0047D47B    call        TObject.Free
 0047D480    ret
>0047D481    jmp         @HandleFinally
>0047D486    jmp         0047D478
 0047D488    mov         eax,dword ptr [ebp-4]
 0047D48B    add         eax,70;TReader.FPropName:String
 0047D48E    call        @LStrClr
 0047D493    mov         esp,ebp
 0047D495    pop         ebp
 0047D496    ret         10
end;*}

//0047D49C
function TReader.EndOfList:Boolean;
begin
{*
 0047D49C    push        ebp
 0047D49D    mov         ebp,esp
 0047D49F    add         esp,0FFFFFFF8
 0047D4A2    mov         dword ptr [ebp-4],eax
 0047D4A5    mov         eax,dword ptr [ebp-4]
 0047D4A8    call        TReader.ReadValue
 0047D4AD    test        al,al
 0047D4AF    sete        byte ptr [ebp-5]
 0047D4B3    mov         eax,dword ptr [ebp-4]
 0047D4B6    dec         dword ptr [eax+10]
 0047D4B9    mov         al,byte ptr [ebp-5]
 0047D4BC    pop         ecx
 0047D4BD    pop         ecx
 0047D4BE    pop         ebp
 0047D4BF    ret
*}
end;

//0047D4C0
{*function sub_0047D4C0(?:?):?;
begin
 0047D4C0    push        ebp
 0047D4C1    mov         ebp,esp
 0047D4C3    add         esp,0FFFFFFF4
 0047D4C6    push        ebx
 0047D4C7    mov         dword ptr [ebp-8],edx
 0047D4CA    mov         dword ptr [ebp-4],eax
 0047D4CD    mov         byte ptr [ebp-9],0
 0047D4D1    mov         eax,dword ptr [ebp-4]
 0047D4D4    cmp         word ptr [eax+5A],0;TReader.?f5A:word
>0047D4D9    je          0047D4EE
 0047D4DB    lea         eax,[ebp-9]
 0047D4DE    push        eax
 0047D4DF    mov         ebx,dword ptr [ebp-4]
 0047D4E2    mov         ecx,dword ptr [ebp-8]
 0047D4E5    mov         edx,dword ptr [ebp-4]
 0047D4E8    mov         eax,dword ptr [ebx+5C];TReader.?f5C:dword
 0047D4EB    call        dword ptr [ebx+58];TReader.FOnError
 0047D4EE    mov         al,byte ptr [ebp-9]
 0047D4F1    pop         ebx
 0047D4F2    mov         esp,ebp
 0047D4F4    pop         ebp
 0047D4F5    ret
end;*}

//0047D4F8
{*function sub_0047D4F8(?:?; ?:?):?;
begin
 0047D4F8    push        ebp
 0047D4F9    mov         ebp,esp
 0047D4FB    add         esp,0FFFFFEEC
 0047D501    push        ebx
 0047D502    mov         dword ptr [ebp-0C],ecx
 0047D505    mov         dword ptr [ebp-8],edx
 0047D508    mov         dword ptr [ebp-4],eax
 0047D50B    lea         eax,[ebp-114]
 0047D511    mov         edx,dword ptr [ebp-0C]
 0047D514    mov         ecx,0FF
 0047D519    call        @LStrToString
 0047D51E    lea         edx,[ebp-114]
 0047D524    mov         eax,dword ptr [ebp-8]
 0047D527    mov         eax,dword ptr [eax]
 0047D529    call        TObject.MethodAddress
 0047D52E    mov         dword ptr [ebp-10],eax
 0047D531    cmp         dword ptr [ebp-10],0
 0047D535    sete        byte ptr [ebp-11]
 0047D539    mov         eax,dword ptr [ebp-4]
 0047D53C    cmp         word ptr [eax+3A],0;TReader.?f3A:word
>0047D541    je          0047D55A
 0047D543    lea         eax,[ebp-10]
 0047D546    push        eax
 0047D547    lea         eax,[ebp-11]
 0047D54A    push        eax
 0047D54B    mov         ebx,dword ptr [ebp-4]
 0047D54E    mov         ecx,dword ptr [ebp-0C]
 0047D551    mov         edx,dword ptr [ebp-4]
 0047D554    mov         eax,dword ptr [ebx+3C];TReader.?f3C:dword
 0047D557    call        dword ptr [ebx+38];TReader.FOnFindMethod
 0047D55A    cmp         byte ptr [ebp-11],0
>0047D55E    je          0047D565
 0047D560    call        0047D288
 0047D565    mov         eax,dword ptr [ebp-10]
 0047D568    pop         ebx
 0047D569    mov         esp,ebp
 0047D56B    pop         ebp
 0047D56C    ret
end;*}

//0047D570
procedure sub_0047D570(?:Pointer);
begin
{*
 0047D570    push        ebp
 0047D571    mov         ebp,esp
 0047D573    add         esp,0FFFFFFF0
 0047D576    mov         dword ptr [ebp-4],eax
 0047D579    mov         eax,[0055DAE4];gvar_0055DAE4
 0047D57E    call        TThreadList.LockList
 0047D583    mov         dword ptr [ebp-0C],eax
 0047D586    xor         eax,eax
 0047D588    push        ebp
 0047D589    push        47D601
 0047D58E    push        dword ptr fs:[eax]
 0047D591    mov         dword ptr fs:[eax],esp
 0047D594    mov         eax,dword ptr [ebp-0C]
 0047D597    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0047D59A    dec         eax
 0047D59B    cmp         eax,0
>0047D59E    jl          0047D5E9
 0047D5A0    mov         dword ptr [ebp-8],eax
 0047D5A3    mov         edx,dword ptr [ebp-8]
 0047D5A6    mov         eax,dword ptr [ebp-0C]
 0047D5A9    call        TList.Get
 0047D5AE    mov         dword ptr [ebp-10],eax
 0047D5B1    mov         eax,dword ptr [ebp-10]
 0047D5B4    mov         eax,dword ptr [eax+4]
 0047D5B7    mov         edx,dword ptr [ebp-4]
 0047D5BA    cmp         eax,dword ptr [edx+4]
>0047D5BD    jne         0047D5E0
 0047D5BF    mov         eax,dword ptr [ebp-10]
 0047D5C2    mov         eax,dword ptr [eax+0C]
 0047D5C5    mov         edx,dword ptr [ebp-4]
 0047D5C8    cmp         eax,dword ptr [edx+0C]
>0047D5CB    jne         0047D5E0
 0047D5CD    mov         eax,dword ptr [ebp-10]
 0047D5D0    call        TObject.Free
 0047D5D5    mov         edx,dword ptr [ebp-8]
 0047D5D8    mov         eax,dword ptr [ebp-0C]
 0047D5DB    call        00478668
 0047D5E0    dec         dword ptr [ebp-8]
 0047D5E3    cmp         dword ptr [ebp-8],0FFFFFFFF
>0047D5E7    jne         0047D5A3
 0047D5E9    xor         eax,eax
 0047D5EB    pop         edx
 0047D5EC    pop         ecx
 0047D5ED    pop         ecx
 0047D5EE    mov         dword ptr fs:[eax],edx
 0047D5F1    push        47D608
 0047D5F6    mov         eax,[0055DAE4];gvar_0055DAE4
 0047D5FB    call        TThreadList.UnlockList
 0047D600    ret
>0047D601    jmp         @HandleFinally
>0047D606    jmp         0047D5F6
 0047D608    mov         esp,ebp
 0047D60A    pop         ebp
 0047D60B    ret
*}
end;

//0047D60C
{*procedure sub_0047D60C(?:?);
begin
 0047D60C    push        ebp
 0047D60D    mov         ebp,esp
 0047D60F    add         esp,0FFFFFFE8
 0047D612    xor         edx,edx
 0047D614    mov         dword ptr [ebp-0C],edx
 0047D617    mov         dword ptr [ebp-4],eax
 0047D61A    xor         eax,eax
 0047D61C    push        ebp
 0047D61D    push        47D735
 0047D622    push        dword ptr fs:[eax]
 0047D625    mov         dword ptr fs:[eax],esp
 0047D628    mov         eax,dword ptr [ebp-4]
 0047D62B    cmp         dword ptr [eax+30],0
>0047D62F    je          0047D71F
 0047D635    xor         eax,eax
 0047D637    push        ebp
 0047D638    push        47D718
 0047D63D    push        dword ptr fs:[eax]
 0047D640    mov         dword ptr fs:[eax],esp
 0047D643    mov         eax,dword ptr [ebp-4]
 0047D646    mov         eax,dword ptr [eax+30]
 0047D649    mov         eax,dword ptr [eax+8]
 0047D64C    dec         eax
 0047D64D    test        eax,eax
>0047D64F    jl          0047D702
 0047D655    inc         eax
 0047D656    mov         dword ptr [ebp-14],eax
 0047D659    mov         dword ptr [ebp-8],0
 0047D660    mov         eax,dword ptr [ebp-4]
 0047D663    mov         eax,dword ptr [eax+30]
 0047D666    mov         edx,dword ptr [ebp-8]
 0047D669    call        TList.Get
 0047D66E    mov         dword ptr [ebp-18],eax
 0047D671    lea         eax,[ebp-0C]
 0047D674    mov         edx,dword ptr [ebp-18]
 0047D677    mov         edx,dword ptr [edx+14]
 0047D67A    call        @LStrLAsg
 0047D67F    lea         edx,[ebp-0C]
 0047D682    mov         eax,dword ptr [ebp-4]
 0047D685    mov         ecx,dword ptr [eax]
 0047D687    call        dword ptr [ecx+20]
 0047D68A    mov         eax,dword ptr [ebp-18]
 0047D68D    mov         eax,dword ptr [eax+8]
 0047D690    mov         edx,dword ptr [ebp-0C]
 0047D693    call        0047CD98
 0047D698    mov         dword ptr [ebp-10],eax
 0047D69B    mov         eax,dword ptr [ebp-4]
 0047D69E    mov         eax,dword ptr [eax+30]
 0047D6A1    mov         edx,dword ptr [ebp-8]
 0047D6A4    call        TList.Get
 0047D6A9    call        0047D570
 0047D6AE    cmp         dword ptr [ebp-10],0
>0047D6B2    jne         0047D6EC
 0047D6B4    mov         eax,dword ptr [ebp-18]
 0047D6B7    call        0047CC74
 0047D6BC    test        al,al
>0047D6BE    je          0047D6EC
 0047D6C0    mov         eax,dword ptr [ebp-4]
 0047D6C3    mov         eax,dword ptr [eax+30]
 0047D6C6    mov         edx,dword ptr [ebp-8]
 0047D6C9    call        TList.Get
 0047D6CE    mov         edx,eax
 0047D6D0    mov         eax,[0055DAE4];gvar_0055DAE4
 0047D6D5    call        00478CF4
 0047D6DA    mov         eax,dword ptr [ebp-4]
 0047D6DD    mov         eax,dword ptr [eax+30]
 0047D6E0    xor         ecx,ecx
 0047D6E2    mov         edx,dword ptr [ebp-8]
 0047D6E5    call        00478A34
>0047D6EA    jmp         0047D6F6
 0047D6EC    mov         edx,dword ptr [ebp-10]
 0047D6EF    mov         eax,dword ptr [ebp-18]
 0047D6F2    mov         ecx,dword ptr [eax]
 0047D6F4    call        dword ptr [ecx]
 0047D6F6    inc         dword ptr [ebp-8]
 0047D6F9    dec         dword ptr [ebp-14]
>0047D6FC    jne         0047D660
 0047D702    xor         eax,eax
 0047D704    pop         edx
 0047D705    pop         ecx
 0047D706    pop         ecx
 0047D707    mov         dword ptr fs:[eax],edx
 0047D70A    push        47D71F
 0047D70F    mov         eax,dword ptr [ebp-4]
 0047D712    call        0047D770
 0047D717    ret
>0047D718    jmp         @HandleFinally
>0047D71D    jmp         0047D70F
 0047D71F    xor         eax,eax
 0047D721    pop         edx
 0047D722    pop         ecx
 0047D723    pop         ecx
 0047D724    mov         dword ptr fs:[eax],edx
 0047D727    push        47D73C
 0047D72C    lea         eax,[ebp-0C]
 0047D72F    call        @LStrClr
 0047D734    ret
>0047D735    jmp         @HandleFinally
>0047D73A    jmp         0047D72C
 0047D73C    mov         esp,ebp
 0047D73E    pop         ebp
 0047D73F    ret
end;*}

//0047D740
procedure sub_0047D740;
begin
{*
 0047D740    push        ebp
 0047D741    mov         ebp,esp
 0047D743    push        ecx
 0047D744    mov         dword ptr [ebp-4],eax
 0047D747    mov         eax,dword ptr [ebp-4]
 0047D74A    call        0047D880
 0047D74F    cdq
 0047D750    push        edx
 0047D751    push        eax
 0047D752    mov         eax,dword ptr [ebp-4]
 0047D755    mov         eax,dword ptr [eax+4];TReader.FStream:TStream
 0047D758    call        0047BCF4
 0047D75D    mov         eax,dword ptr [ebp-4]
 0047D760    xor         edx,edx
 0047D762    mov         dword ptr [eax+10],edx;TReader.FBufPos:Integer
 0047D765    mov         eax,dword ptr [ebp-4]
 0047D768    xor         edx,edx
 0047D76A    mov         dword ptr [eax+14],edx;TReader.FBufEnd:Integer
 0047D76D    pop         ecx
 0047D76E    pop         ebp
 0047D76F    ret
*}
end;

//0047D770
{*procedure sub_0047D770(?:?);
begin
 0047D770    push        ebp
 0047D771    mov         ebp,esp
 0047D773    add         esp,0FFFFFFF4
 0047D776    mov         dword ptr [ebp-4],eax
 0047D779    mov         eax,dword ptr [ebp-4]
 0047D77C    cmp         dword ptr [eax+30],0
>0047D780    je          0047D7C9
 0047D782    mov         eax,dword ptr [ebp-4]
 0047D785    mov         eax,dword ptr [eax+30]
 0047D788    mov         eax,dword ptr [eax+8]
 0047D78B    dec         eax
 0047D78C    test        eax,eax
>0047D78E    jl          0047D7B6
 0047D790    inc         eax
 0047D791    mov         dword ptr [ebp-0C],eax
 0047D794    mov         dword ptr [ebp-8],0
 0047D79B    mov         edx,dword ptr [ebp-8]
 0047D79E    mov         eax,dword ptr [ebp-4]
 0047D7A1    mov         eax,dword ptr [eax+30]
 0047D7A4    call        TList.Get
 0047D7A9    call        TObject.Free
 0047D7AE    inc         dword ptr [ebp-8]
 0047D7B1    dec         dword ptr [ebp-0C]
>0047D7B4    jne         0047D79B
 0047D7B6    mov         eax,dword ptr [ebp-4]
 0047D7B9    mov         eax,dword ptr [eax+30]
 0047D7BC    call        TObject.Free
 0047D7C1    mov         eax,dword ptr [ebp-4]
 0047D7C4    xor         edx,edx
 0047D7C6    mov         dword ptr [eax+30],edx
 0047D7C9    mov         esp,ebp
 0047D7CB    pop         ebp
 0047D7CC    ret
end;*}

//0047D7D0
{*function sub_0047D7D0(?:?; ?:?; ?:?):?;
begin
 0047D7D0    push        ebp
 0047D7D1    mov         ebp,esp
 0047D7D3    add         esp,0FFFFFFE0
 0047D7D6    mov         dword ptr [ebp-0C],ecx
 0047D7D9    mov         dword ptr [ebp-8],edx
 0047D7DC    mov         dword ptr [ebp-4],eax
 0047D7DF    mov         eax,dword ptr [ebp-8]
 0047D7E2    call        TObject.ClassType
 0047D7E7    mov         dword ptr [ebp-1C],eax
>0047D7EA    jmp         0047D844
 0047D7EC    mov         eax,dword ptr [ebp-1C]
 0047D7EF    call        GetFieldClassTable
 0047D7F4    mov         dword ptr [ebp-18],eax
 0047D7F7    cmp         dword ptr [ebp-18],0
>0047D7FB    je          0047D839
 0047D7FD    mov         eax,dword ptr [ebp-18]
 0047D800    movsx       eax,word ptr [eax]
 0047D803    dec         eax
 0047D804    test        eax,eax
>0047D806    jl          0047D839
 0047D808    inc         eax
 0047D809    mov         dword ptr [ebp-20],eax
 0047D80C    mov         dword ptr [ebp-14],0
 0047D813    mov         eax,dword ptr [ebp-14]
 0047D816    mov         edx,dword ptr [ebp-18]
 0047D819    mov         eax,dword ptr [edx+eax*4+2]
 0047D81D    mov         eax,dword ptr [eax]
 0047D81F    mov         dword ptr [ebp-10],eax
 0047D822    mov         edx,dword ptr [ebp-0C]
 0047D825    mov         eax,dword ptr [ebp-10]
 0047D828    call        TObject.ClassNameIs
 0047D82D    test        al,al
>0047D82F    jne         0047D876
 0047D831    inc         dword ptr [ebp-14]
 0047D834    dec         dword ptr [ebp-20]
>0047D837    jne         0047D813
 0047D839    mov         eax,dword ptr [ebp-1C]
 0047D83C    call        TObject.ClassParent
 0047D841    mov         dword ptr [ebp-1C],eax
 0047D844    mov         eax,dword ptr [ebp-1C]
 0047D847    cmp         eax,dword ptr ds:[475AD0];TPersistent
>0047D84D    jne         0047D7EC
 0047D84F    mov         eax,dword ptr [ebp-4]
 0047D852    cmp         dword ptr [eax+74],0
>0047D856    je          0047D86B
 0047D858    mov         eax,dword ptr [ebp-4]
 0047D85B    mov         eax,dword ptr [eax+74]
 0047D85E    mov         edx,dword ptr [ebp-0C]
 0047D861    call        004779C8
 0047D866    mov         dword ptr [ebp-10],eax
>0047D869    jmp         0047D876
 0047D86B    mov         eax,dword ptr [ebp-0C]
 0047D86E    call        00477AE0
 0047D873    mov         dword ptr [ebp-10],eax
 0047D876    mov         eax,dword ptr [ebp-10]
 0047D879    mov         esp,ebp
 0047D87B    pop         ebp
 0047D87C    ret
end;*}

//0047D880
{*function sub_0047D880(?:TReader):?;
begin
 0047D880    push        ebp
 0047D881    mov         ebp,esp
 0047D883    add         esp,0FFFFFFF8
 0047D886    mov         dword ptr [ebp-4],eax
 0047D889    mov         eax,dword ptr [ebp-4]
 0047D88C    mov         eax,dword ptr [eax+4];TReader.FStream:TStream
 0047D88F    call        0047BCCC
 0047D894    mov         edx,dword ptr [ebp-4]
 0047D897    mov         edx,dword ptr [edx+14];TReader.FBufEnd:Integer
 0047D89A    mov         ecx,dword ptr [ebp-4]
 0047D89D    sub         edx,dword ptr [ecx+10]
 0047D8A0    sub         eax,edx
 0047D8A2    mov         dword ptr [ebp-8],eax
 0047D8A5    mov         eax,dword ptr [ebp-8]
 0047D8A8    pop         ecx
 0047D8A9    pop         ecx
 0047D8AA    pop         ebp
 0047D8AB    ret
end;*}

//0047D8AC
function TReader.NextValue:TValueType;
begin
{*
 0047D8AC    push        ebp
 0047D8AD    mov         ebp,esp
 0047D8AF    add         esp,0FFFFFFF8
 0047D8B2    mov         dword ptr [ebp-4],eax
 0047D8B5    mov         eax,dword ptr [ebp-4]
 0047D8B8    call        TReader.ReadValue
 0047D8BD    mov         byte ptr [ebp-5],al
 0047D8C0    mov         eax,dword ptr [ebp-4]
 0047D8C3    dec         dword ptr [eax+10]
 0047D8C6    mov         al,byte ptr [ebp-5]
 0047D8C9    pop         ecx
 0047D8CA    pop         ecx
 0047D8CB    pop         ebp
 0047D8CC    ret
*}
end;

//0047D8D0
{*procedure sub_0047D8D0(?:?; ?:?);
begin
 0047D8D0    push        ebp
 0047D8D1    mov         ebp,esp
 0047D8D3    add         esp,0FFFFFFF8
 0047D8D6    mov         dword ptr [ebp-8],edx
 0047D8D9    mov         dword ptr [ebp-4],eax
 0047D8DC    mov         eax,dword ptr [ebp-4]
 0047D8DF    call        TReader.SkipValue
 0047D8E4    mov         eax,dword ptr [ebp-8]
 0047D8E7    call        0047D298
 0047D8EC    pop         ecx
 0047D8ED    pop         ecx
 0047D8EE    pop         ebp
 0047D8EF    ret
end;*}

//0047D8F0
procedure TReader.Read(var Buf:void ; Count:Longint);
begin
{*
 0047D8F0    push        esi
 0047D8F1    push        edi
 0047D8F2    push        ebx
 0047D8F3    mov         edi,edx
 0047D8F5    mov         ebx,ecx
 0047D8F7    mov         esi,eax
>0047D8F9    jmp         0047D931
 0047D8FB    mov         ecx,dword ptr [esi+14]
 0047D8FE    sub         ecx,dword ptr [esi+10]
>0047D901    ja          0047D90D
 0047D903    mov         eax,esi
 0047D905    call        TReader.ReadBuffer
 0047D90A    mov         ecx,dword ptr [esi+14]
 0047D90D    cmp         ecx,ebx
>0047D90F    jb          0047D913
 0047D911    mov         ecx,ebx
 0047D913    push        esi
 0047D914    sub         ebx,ecx
 0047D916    mov         eax,dword ptr [esi+8]
 0047D919    add         eax,dword ptr [esi+10]
 0047D91C    add         dword ptr [esi+10],ecx
 0047D91F    mov         esi,eax
 0047D921    mov         edx,ecx
 0047D923    shr         ecx,2
 0047D926    cld
 0047D927    rep movs    dword ptr [edi],dword ptr [esi]
 0047D929    mov         ecx,edx
 0047D92B    and         ecx,3
 0047D92E    rep movs    byte ptr [edi],byte ptr [esi]
 0047D930    pop         esi
 0047D931    or          ebx,ebx
>0047D933    jne         0047D8FB
 0047D935    pop         ebx
 0047D936    pop         edi
 0047D937    pop         esi
 0047D938    ret
*}
end;

//0047D93C
procedure TReader.ReadBuffer;
begin
{*
 0047D93C    push        ebp
 0047D93D    mov         ebp,esp
 0047D93F    push        ecx
 0047D940    push        ebx
 0047D941    mov         dword ptr [ebp-4],eax
 0047D944    mov         eax,dword ptr [ebp-4]
 0047D947    mov         edx,dword ptr [eax+8]
 0047D94A    mov         eax,dword ptr [ebp-4]
 0047D94D    mov         ecx,dword ptr [eax+0C]
 0047D950    mov         eax,dword ptr [ebp-4]
 0047D953    mov         eax,dword ptr [eax+4]
 0047D956    mov         ebx,dword ptr [eax]
 0047D958    call        dword ptr [ebx+0C]
 0047D95B    mov         edx,dword ptr [ebp-4]
 0047D95E    mov         dword ptr [edx+14],eax
 0047D961    mov         eax,dword ptr [ebp-4]
 0047D964    cmp         dword ptr [eax+14],0
>0047D968    jne         0047D981
 0047D96A    mov         ecx,dword ptr ds:[55B628];^SReadError:TResStringRec
 0047D970    mov         dl,1
 0047D972    mov         eax,[00475630];EReadError
 0047D977    call        Exception.Create
 0047D97C    call        @RaiseExcept
 0047D981    mov         eax,dword ptr [ebp-4]
 0047D984    xor         edx,edx
 0047D986    mov         dword ptr [eax+10],edx
 0047D989    pop         ebx
 0047D98A    pop         ecx
 0047D98B    pop         ebp
 0047D98C    ret
*}
end;

//0047D990
{*function sub_0047D990(?:?):?;
begin
 0047D990    push        ebp
 0047D991    mov         ebp,esp
 0047D993    add         esp,0FFFFFFF8
 0047D996    mov         dword ptr [ebp-4],eax
 0047D999    mov         eax,dword ptr [ebp-4]
 0047D99C    call        TReader.ReadValue
 0047D9A1    cmp         al,9
 0047D9A3    sete        byte ptr [ebp-5]
 0047D9A7    mov         al,byte ptr [ebp-5]
 0047D9AA    pop         ecx
 0047D9AB    pop         ecx
 0047D9AC    pop         ebp
 0047D9AD    ret
end;*}

//0047D9B0
{*function sub_0047D9B0(?:?):?;
begin
 0047D9B0    push        ebp
 0047D9B1    mov         ebp,esp
 0047D9B3    add         esp,0FFFFFFF4
 0047D9B6    xor         edx,edx
 0047D9B8    mov         dword ptr [ebp-0C],edx
 0047D9BB    mov         dword ptr [ebp-4],eax
 0047D9BE    xor         eax,eax
 0047D9C0    push        ebp
 0047D9C1    push        47DA05
 0047D9C6    push        dword ptr fs:[eax]
 0047D9C9    mov         dword ptr fs:[eax],esp
 0047D9CC    lea         edx,[ebp-0C]
 0047D9CF    mov         eax,dword ptr [ebp-4]
 0047D9D2    call        TReader.ReadString
 0047D9D7    mov         eax,dword ptr [ebp-0C]
 0047D9DA    call        @DynArrayLength
 0047D9DF    dec         eax
>0047D9E0    jle         0047D9E7
 0047D9E2    call        0047D288
 0047D9E7    mov         eax,dword ptr [ebp-0C]
 0047D9EA    mov         al,byte ptr [eax]
 0047D9EC    mov         byte ptr [ebp-5],al
 0047D9EF    xor         eax,eax
 0047D9F1    pop         edx
 0047D9F2    pop         ecx
 0047D9F3    pop         ecx
 0047D9F4    mov         dword ptr fs:[eax],edx
 0047D9F7    push        47DA0C
 0047D9FC    lea         eax,[ebp-0C]
 0047D9FF    call        @LStrClr
 0047DA04    ret
>0047DA05    jmp         @HandleFinally
>0047DA0A    jmp         0047D9FC
 0047DA0C    mov         al,byte ptr [ebp-5]
 0047DA0F    mov         esp,ebp
 0047DA11    pop         ebp
 0047DA12    ret
end;*}

//0047DA14
procedure TReader.ReadCollection(Collection:TCollection);
begin
{*
 0047DA14    push        ebp
 0047DA15    mov         ebp,esp
 0047DA17    add         esp,0FFFFFFF4
 0047DA1A    mov         dword ptr [ebp-8],edx
 0047DA1D    mov         dword ptr [ebp-4],eax
 0047DA20    mov         eax,dword ptr [ebp-8]
 0047DA23    mov         edx,dword ptr [eax]
 0047DA25    call        dword ptr [edx+20]
 0047DA28    xor         eax,eax
 0047DA2A    push        ebp
 0047DA2B    push        47DAC0
 0047DA30    push        dword ptr fs:[eax]
 0047DA33    mov         dword ptr fs:[eax],esp
 0047DA36    mov         eax,dword ptr [ebp-4]
 0047DA39    call        TReader.EndOfList
 0047DA3E    test        al,al
>0047DA40    jne         0047DA96
 0047DA42    mov         eax,dword ptr [ebp-8]
 0047DA45    call        TCollection.Clear
>0047DA4A    jmp         0047DA96
 0047DA4C    mov         eax,dword ptr [ebp-4]
 0047DA4F    call        TReader.NextValue
 0047DA54    add         al,0FE
 0047DA56    sub         al,3
>0047DA58    jae         0047DA62
 0047DA5A    mov         eax,dword ptr [ebp-4]
 0047DA5D    call        0047E504
 0047DA62    mov         eax,dword ptr [ebp-8]
 0047DA65    call        0047992C
 0047DA6A    mov         dword ptr [ebp-0C],eax
 0047DA6D    mov         eax,dword ptr [ebp-4]
 0047DA70    call        TReader.ReadListBegin
>0047DA75    jmp         0047DA82
 0047DA77    mov         edx,dword ptr [ebp-0C]
 0047DA7A    mov         eax,dword ptr [ebp-4]
 0047DA7D    call        0047E75C
 0047DA82    mov         eax,dword ptr [ebp-4]
 0047DA85    call        TReader.EndOfList
 0047DA8A    test        al,al
>0047DA8C    je          0047DA77
 0047DA8E    mov         eax,dword ptr [ebp-4]
 0047DA91    call        TReader.ReadListEnd
 0047DA96    mov         eax,dword ptr [ebp-4]
 0047DA99    call        TReader.EndOfList
 0047DA9E    test        al,al
>0047DAA0    je          0047DA4C
 0047DAA2    mov         eax,dword ptr [ebp-4]
 0047DAA5    call        TReader.ReadListEnd
 0047DAAA    xor         eax,eax
 0047DAAC    pop         edx
 0047DAAD    pop         ecx
 0047DAAE    pop         ecx
 0047DAAF    mov         dword ptr fs:[eax],edx
 0047DAB2    push        47DAC7
 0047DAB7    mov         eax,dword ptr [ebp-8]
 0047DABA    mov         edx,dword ptr [eax]
 0047DABC    call        dword ptr [edx+24]
 0047DABF    ret
>0047DAC0    jmp         @HandleFinally
>0047DAC5    jmp         0047DAB7
 0047DAC7    mov         esp,ebp
 0047DAC9    pop         ebp
 0047DACA    ret
*}
end;

//0047DAF0
{*procedure sub_0047DAF0(?:?; ?:?);
begin
 0047DAF0    push        ebp
 0047DAF1    mov         ebp,esp
 0047DAF3    add         esp,0FFFFFFF4
 0047DAF6    mov         dword ptr [ebp-0C],eax
 0047DAF9    mov         eax,dword ptr [ebp+8]
 0047DAFC    mov         eax,dword ptr [eax-4]
 0047DAFF    call        @LStrLen
 0047DB04    dec         eax
 0047DB05    test        eax,eax
>0047DB07    jl          0047DB36
 0047DB09    inc         eax
 0047DB0A    mov         dword ptr [ebp-8],eax
 0047DB0D    mov         dword ptr [ebp-4],0
 0047DB14    mov         eax,dword ptr [ebp+8]
 0047DB17    mov         eax,dword ptr [eax-4]
 0047DB1A    mov         edx,dword ptr [ebp-4]
 0047DB1D    mov         edx,dword ptr [eax+edx*4]
 0047DB20    mov         eax,dword ptr [ebp+8]
 0047DB23    mov         eax,dword ptr [eax-8]
 0047DB26    mov         eax,dword ptr [eax+34]
 0047DB29    call        TList.Add
 0047DB2E    inc         dword ptr [ebp-4]
 0047DB31    dec         dword ptr [ebp-8]
>0047DB34    jne         0047DB14
 0047DB36    mov         esp,ebp
 0047DB38    pop         ebp
 0047DB39    ret
end;*}

//0047DB3C
{*procedure sub_0047DB3C(?:?; ?:?);
begin
 0047DB3C    push        ebp
 0047DB3D    mov         ebp,esp
 0047DB3F    add         esp,0FFFFFFF4
 0047DB42    push        ebx
 0047DB43    mov         dword ptr [ebp-4],eax
 0047DB46    mov         eax,dword ptr [ebp-4]
 0047DB49    call        00483864
 0047DB4E    dec         eax
 0047DB4F    test        eax,eax
>0047DB51    jl          0047DBBF
 0047DB53    inc         eax
 0047DB54    mov         dword ptr [ebp-0C],eax
 0047DB57    mov         dword ptr [ebp-8],0
 0047DB5E    mov         edx,dword ptr [ebp-8]
 0047DB61    mov         eax,dword ptr [ebp-4]
 0047DB64    call        00483824
 0047DB69    test        byte ptr [eax+24],4
>0047DB6D    je          0047DBB7
 0047DB6F    mov         eax,dword ptr [ebp+8]
 0047DB72    mov         eax,dword ptr [eax-4]
 0047DB75    call        @LStrLen
 0047DB7A    inc         eax
 0047DB7B    push        eax
 0047DB7C    mov         eax,dword ptr [ebp+8]
 0047DB7F    add         eax,0FFFFFFFC
 0047DB82    mov         ecx,1
 0047DB87    mov         edx,dword ptr ds:[47DACC];_DynArr_37_06
 0047DB8D    call        @DynArraySetLength
 0047DB92    add         esp,4
 0047DB95    mov         edx,dword ptr [ebp-8]
 0047DB98    mov         eax,dword ptr [ebp-4]
 0047DB9B    call        00483824
 0047DBA0    mov         ebx,eax
 0047DBA2    mov         eax,dword ptr [ebp+8]
 0047DBA5    mov         eax,dword ptr [eax-4]
 0047DBA8    call        @LStrLen
 0047DBAD    mov         edx,dword ptr [ebp+8]
 0047DBB0    mov         edx,dword ptr [edx-4]
 0047DBB3    mov         dword ptr [edx+eax*4-4],ebx
 0047DBB7    inc         dword ptr [ebp-8]
 0047DBBA    dec         dword ptr [ebp-0C]
>0047DBBD    jne         0047DB5E
 0047DBBF    pop         ebx
 0047DBC0    mov         esp,ebp
 0047DBC2    pop         ebp
 0047DBC3    ret
end;*}

//0047DBC4
{*procedure sub_0047DBC4(?:?; ?:?; ?:?);
begin
 0047DBC4    push        ebp
 0047DBC5    mov         ebp,esp
 0047DBC7    add         esp,0FFFFFFF4
 0047DBCA    mov         byte ptr [ebp-3],dl
 0047DBCD    mov         word ptr [ebp-2],ax
 0047DBD1    mov         eax,dword ptr [ebp+8]
 0047DBD4    mov         eax,dword ptr [eax-4]
 0047DBD7    call        @LStrLen
 0047DBDC    dec         eax
 0047DBDD    test        eax,eax
>0047DBDF    jl          0047DC46
 0047DBE1    inc         eax
 0047DBE2    mov         dword ptr [ebp-0C],eax
 0047DBE5    mov         dword ptr [ebp-8],0
 0047DBEC    cmp         byte ptr [ebp-3],0
>0047DBF0    je          0047DC18
 0047DBF2    mov         eax,dword ptr [ebp+8]
 0047DBF5    mov         eax,dword ptr [eax-4]
 0047DBF8    mov         edx,dword ptr [ebp-8]
 0047DBFB    mov         eax,dword ptr [eax+edx*4]
 0047DBFE    mov         ax,word ptr [eax+1C]
 0047DC02    or          ax,word ptr [ebp-2]
 0047DC06    mov         edx,dword ptr [ebp+8]
 0047DC09    mov         edx,dword ptr [edx-4]
 0047DC0C    mov         ecx,dword ptr [ebp-8]
 0047DC0F    mov         edx,dword ptr [edx+ecx*4]
 0047DC12    mov         word ptr [edx+1C],ax
>0047DC16    jmp         0047DC3E
 0047DC18    mov         eax,dword ptr [ebp+8]
 0047DC1B    mov         eax,dword ptr [eax-4]
 0047DC1E    mov         edx,dword ptr [ebp-8]
 0047DC21    mov         eax,dword ptr [eax+edx*4]
 0047DC24    mov         dx,word ptr [ebp-2]
 0047DC28    not         edx
 0047DC2A    and         dx,word ptr [eax+1C]
 0047DC2E    mov         eax,dword ptr [ebp+8]
 0047DC31    mov         eax,dword ptr [eax-4]
 0047DC34    mov         ecx,dword ptr [ebp-8]
 0047DC37    mov         eax,dword ptr [eax+ecx*4]
 0047DC3A    mov         word ptr [eax+1C],dx
 0047DC3E    inc         dword ptr [ebp-8]
 0047DC41    dec         dword ptr [ebp-0C]
>0047DC44    jne         0047DBEC
 0047DC46    mov         esp,ebp
 0047DC48    pop         ebp
 0047DC49    ret
end;*}

//0047DC4C
{*function sub_0047DC4C(?:?):?;
begin
 0047DC4C    push        ebp
 0047DC4D    mov         ebp,esp
 0047DC4F    push        ecx
 0047DC50    mov         eax,dword ptr [ebp+8]
 0047DC53    test        byte ptr [eax-9],1
>0047DC57    jne         0047DC62
 0047DC59    mov         eax,dword ptr [ebp+8]
 0047DC5C    cmp         dword ptr [eax-10],0
>0047DC60    je          0047DC66
 0047DC62    xor         eax,eax
>0047DC64    jmp         0047DC68
 0047DC66    mov         al,1
 0047DC68    mov         byte ptr [ebp-1],al
 0047DC6B    mov         al,byte ptr [ebp-1]
 0047DC6E    pop         ecx
 0047DC6F    pop         ebp
 0047DC70    ret
end;*}

//0047DC74
function Recover(var Component:TComponent):Boolean;
begin
{*
 0047DC74    push        ebp
 0047DC75    mov         ebp,esp
 0047DC77    add         esp,0FFFFFFF8
 0047DC7A    mov         dword ptr [ebp-4],eax
 0047DC7D    mov         byte ptr [ebp-5],0
 0047DC81    call        ExceptObject
 0047DC86    mov         edx,dword ptr ds:[4653B4];Exception
 0047DC8C    call        @IsClass
 0047DC91    test        al,al
>0047DC93    je          0047DCD7
 0047DC95    mov         eax,dword ptr [ebp+8]
 0047DC98    push        eax
 0047DC99    call        0047DC4C
 0047DC9E    pop         ecx
 0047DC9F    test        al,al
>0047DCA1    je          0047DCAD
 0047DCA3    mov         eax,dword ptr [ebp-4]
 0047DCA6    mov         eax,dword ptr [eax]
 0047DCA8    call        TObject.Free
 0047DCAD    mov         eax,dword ptr [ebp-4]
 0047DCB0    xor         edx,edx
 0047DCB2    mov         dword ptr [eax],edx
 0047DCB4    mov         eax,dword ptr [ebp+8]
 0047DCB7    mov         eax,dword ptr [eax-8]
 0047DCBA    xor         edx,edx
 0047DCBC    call        0047F804
 0047DCC1    call        ExceptObject
 0047DCC6    mov         edx,dword ptr [eax+4]
 0047DCC9    mov         eax,dword ptr [ebp+8]
 0047DCCC    mov         eax,dword ptr [eax-8]
 0047DCCF    mov         ecx,dword ptr [eax]
 0047DCD1    call        dword ptr [ecx+10]
 0047DCD4    mov         byte ptr [ebp-5],al
 0047DCD7    mov         al,byte ptr [ebp-5]
 0047DCDA    pop         ecx
 0047DCDB    pop         ecx
 0047DCDC    pop         ebp
 0047DCDD    ret
*}
end;

//0047DCE0
{*procedure sub_0047DCE0(?:?);
begin
 0047DCE0    push        ebp
 0047DCE1    mov         ebp,esp
 0047DCE3    push        ecx
 0047DCE4    push        ebx
 0047DCE5    push        esi
 0047DCE6    push        edi
 0047DCE7    xor         eax,eax
 0047DCE9    push        ebp
 0047DCEA    push        47DDCA
 0047DCEF    push        dword ptr fs:[eax]
 0047DCF2    mov         dword ptr fs:[eax],esp
 0047DCF5    mov         eax,dword ptr [ebp+8]
 0047DCF8    mov         edx,dword ptr [eax-18]
 0047DCFB    mov         eax,dword ptr [ebp+8]
 0047DCFE    mov         eax,dword ptr [eax-8]
 0047DD01    call        0047F9EC
 0047DD06    mov         dword ptr [ebp-4],eax
 0047DD09    mov         eax,dword ptr [ebp+8]
 0047DD0C    xor         edx,edx
 0047DD0E    mov         dword ptr [eax-14],edx
 0047DD11    mov         eax,dword ptr [ebp+8]
 0047DD14    mov         eax,dword ptr [eax-8]
 0047DD17    cmp         word ptr [eax+6A],0
>0047DD1C    je          0047DD3A
 0047DD1E    mov         eax,dword ptr [ebp+8]
 0047DD21    add         eax,0FFFFFFEC
 0047DD24    push        eax
 0047DD25    mov         eax,dword ptr [ebp+8]
 0047DD28    mov         ebx,dword ptr [eax-8]
 0047DD2B    mov         eax,dword ptr [ebp+8]
 0047DD2E    mov         edx,dword ptr [eax-8]
 0047DD31    mov         ecx,dword ptr [ebp-4]
 0047DD34    mov         eax,dword ptr [ebx+6C]
 0047DD37    call        dword ptr [ebx+68]
 0047DD3A    mov         eax,dword ptr [ebp+8]
 0047DD3D    cmp         dword ptr [eax-14],0
>0047DD41    jne         0047DDB5
 0047DD43    mov         eax,dword ptr [ebp-4]
 0047DD46    call        dword ptr [eax-0C]
 0047DD49    mov         edx,dword ptr [ebp+8]
 0047DD4C    mov         dword ptr [edx-14],eax
 0047DD4F    mov         eax,dword ptr [ebp+8]
 0047DD52    test        byte ptr [eax-9],4
>0047DD56    je          0047DD6F
 0047DD58    mov         eax,dword ptr [ebp+8]
 0047DD5B    mov         eax,dword ptr [eax-14]
 0047DD5E    or          word ptr [eax+1C],1
 0047DD63    mov         eax,dword ptr [ebp+8]
 0047DD66    mov         eax,dword ptr [eax-14]
 0047DD69    or          word ptr [eax+1C],200
 0047DD6F    xor         eax,eax
 0047DD71    push        ebp
 0047DD72    push        47DD9E
 0047DD77    push        dword ptr fs:[eax]
 0047DD7A    mov         dword ptr fs:[eax],esp
 0047DD7D    mov         eax,dword ptr [ebp+8]
 0047DD80    mov         eax,dword ptr [eax-8]
 0047DD83    mov         ecx,dword ptr [eax+28]
 0047DD86    mov         eax,dword ptr [ebp+8]
 0047DD89    mov         eax,dword ptr [eax-14]
 0047DD8C    or          edx,0FFFFFFFF
 0047DD8F    mov         ebx,dword ptr [eax]
 0047DD91    call        dword ptr [ebx+2C]
 0047DD94    xor         eax,eax
 0047DD96    pop         edx
 0047DD97    pop         ecx
 0047DD98    pop         ecx
 0047DD99    mov         dword ptr fs:[eax],edx
>0047DD9C    jmp         0047DDB5
>0047DD9E    jmp         @HandleAnyException
 0047DDA3    mov         eax,dword ptr [ebp+8]
 0047DDA6    xor         edx,edx
 0047DDA8    mov         dword ptr [eax-14],edx
 0047DDAB    call        @RaiseAgain
 0047DDB0    call        @DoneExcept
 0047DDB5    mov         eax,dword ptr [ebp+8]
 0047DDB8    mov         eax,dword ptr [eax-14]
 0047DDBB    or          word ptr [eax+1C],1
 0047DDC0    xor         eax,eax
 0047DDC2    pop         edx
 0047DDC3    pop         ecx
 0047DDC4    pop         ecx
 0047DDC5    mov         dword ptr fs:[eax],edx
>0047DDC8    jmp         0047DDED
>0047DDCA    jmp         @HandleAnyException
 0047DDCF    mov         eax,dword ptr [ebp+8]
 0047DDD2    push        eax
 0047DDD3    mov         eax,dword ptr [ebp+8]
 0047DDD6    add         eax,0FFFFFFEC
 0047DDD9    call        Recover
 0047DDDE    pop         ecx
 0047DDDF    test        al,al
>0047DDE1    jne         0047DDE8
 0047DDE3    call        @RaiseAgain
 0047DDE8    call        @DoneExcept
 0047DDED    pop         edi
 0047DDEE    pop         esi
 0047DDEF    pop         ebx
 0047DDF0    pop         ecx
 0047DDF1    pop         ebp
 0047DDF2    ret
end;*}

//0047DDF4
procedure SetCompName;
begin
{*
 0047DDF4    push        ebp
 0047DDF5    mov         ebp,esp
 0047DDF7    push        ebx
 0047DDF8    push        esi
 0047DDF9    push        edi
 0047DDFA    xor         eax,eax
 0047DDFC    push        ebp
 0047DDFD    push        47DE6C
 0047DE02    push        dword ptr fs:[eax]
 0047DE05    mov         dword ptr fs:[eax],esp
 0047DE08    mov         eax,dword ptr [ebp+8]
 0047DE0B    mov         eax,dword ptr [eax-8]
 0047DE0E    mov         edx,dword ptr [eax+2C]
 0047DE11    mov         eax,dword ptr [ebp+8]
 0047DE14    mov         eax,dword ptr [eax-14]
 0047DE17    mov         si,0FFF8
 0047DE1B    call        @CallDynaInst
 0047DE20    mov         eax,dword ptr [ebp+8]
 0047DE23    lea         ecx,[eax-1C]
 0047DE26    mov         eax,dword ptr [ebp+8]
 0047DE29    mov         edx,dword ptr [eax-14]
 0047DE2C    mov         eax,dword ptr [ebp+8]
 0047DE2F    mov         eax,dword ptr [eax-8]
 0047DE32    mov         ebx,dword ptr [eax]
 0047DE34    call        dword ptr [ebx+1C]
 0047DE37    mov         eax,dword ptr [ebp+8]
 0047DE3A    mov         eax,dword ptr [eax-14]
 0047DE3D    test        byte ptr [eax+1C],10
>0047DE41    je          0047DE62
 0047DE43    mov         eax,dword ptr [ebp+8]
 0047DE46    mov         eax,dword ptr [eax-1C]
 0047DE49    call        0047805C
 0047DE4E    mov         edx,dword ptr [ebp+8]
 0047DE51    cmp         eax,dword ptr [edx-14]
>0047DE54    jne         0047DE62
 0047DE56    mov         eax,dword ptr [ebp+8]
 0047DE59    mov         eax,dword ptr [eax-14]
 0047DE5C    or          word ptr [eax+1C],200
 0047DE62    xor         eax,eax
 0047DE64    pop         edx
 0047DE65    pop         ecx
 0047DE66    pop         ecx
 0047DE67    mov         dword ptr fs:[eax],edx
>0047DE6A    jmp         0047DE8F
>0047DE6C    jmp         @HandleAnyException
 0047DE71    mov         eax,dword ptr [ebp+8]
 0047DE74    push        eax
 0047DE75    mov         eax,dword ptr [ebp+8]
 0047DE78    add         eax,0FFFFFFEC
 0047DE7B    call        Recover
 0047DE80    pop         ecx
 0047DE81    test        al,al
>0047DE83    jne         0047DE8A
 0047DE85    call        @RaiseAgain
 0047DE8A    call        @DoneExcept
 0047DE8F    pop         edi
 0047DE90    pop         esi
 0047DE91    pop         ebx
 0047DE92    pop         ebp
 0047DE93    ret
*}
end;

//0047DE94
{*procedure sub_0047DE94(?:?);
begin
 0047DE94    push        ebp
 0047DE95    mov         ebp,esp
 0047DE97    push        ebx
 0047DE98    push        esi
 0047DE99    push        edi
 0047DE9A    xor         eax,eax
 0047DE9C    push        ebp
 0047DE9D    push        47DF12
 0047DEA2    push        dword ptr fs:[eax]
 0047DEA5    mov         dword ptr fs:[eax],esp
 0047DEA8    mov         eax,dword ptr [ebp+8]
 0047DEAB    mov         edx,dword ptr [eax-18]
 0047DEAE    mov         eax,dword ptr [ebp+8]
 0047DEB1    mov         eax,dword ptr [eax-8]
 0047DEB4    call        0047F9EC
 0047DEB9    mov         ecx,eax
 0047DEBB    mov         eax,dword ptr [ebp+8]
 0047DEBE    mov         edx,dword ptr [eax-1C]
 0047DEC1    mov         eax,dword ptr [ebp+8]
 0047DEC4    mov         eax,dword ptr [eax-8]
 0047DEC7    mov         ebx,dword ptr [eax]
 0047DEC9    call        dword ptr [ebx+14]
 0047DECC    mov         edx,dword ptr [ebp+8]
 0047DECF    mov         dword ptr [edx-14],eax
 0047DED2    mov         eax,dword ptr [ebp+8]
 0047DED5    mov         eax,dword ptr [eax-14]
 0047DED8    mov         si,0FFF2
 0047DEDC    call        @CallDynaInst
 0047DEE1    mov         edx,dword ptr [ebp+8]
 0047DEE4    mov         edx,dword ptr [edx-8]
 0047DEE7    mov         dword ptr [edx+2C],eax
 0047DEEA    mov         eax,dword ptr [ebp+8]
 0047DEED    mov         eax,dword ptr [eax-8]
 0047DEF0    cmp         dword ptr [eax+2C],0
>0047DEF4    jne         0047DF08
 0047DEF6    mov         eax,dword ptr [ebp+8]
 0047DEF9    mov         eax,dword ptr [eax-8]
 0047DEFC    mov         eax,dword ptr [eax+18]
 0047DEFF    mov         edx,dword ptr [ebp+8]
 0047DF02    mov         edx,dword ptr [edx-8]
 0047DF05    mov         dword ptr [edx+2C],eax
 0047DF08    xor         eax,eax
 0047DF0A    pop         edx
 0047DF0B    pop         ecx
 0047DF0C    pop         ecx
 0047DF0D    mov         dword ptr fs:[eax],edx
>0047DF10    jmp         0047DF35
>0047DF12    jmp         @HandleAnyException
 0047DF17    mov         eax,dword ptr [ebp+8]
 0047DF1A    push        eax
 0047DF1B    mov         eax,dword ptr [ebp+8]
 0047DF1E    add         eax,0FFFFFFEC
 0047DF21    call        Recover
 0047DF26    pop         ecx
 0047DF27    test        al,al
>0047DF29    jne         0047DF30
 0047DF2B    call        @RaiseAgain
 0047DF30    call        @DoneExcept
 0047DF35    pop         edi
 0047DF36    pop         esi
 0047DF37    pop         ebx
 0047DF38    pop         ebp
 0047DF39    ret
end;*}

//0047DF3C
{*function sub_0047DF3C(?:?; ?:?):?;
begin
 0047DF3C    push        ebp
 0047DF3D    mov         ebp,esp
 0047DF3F    add         esp,0FFFFFFD4
 0047DF42    push        ebx
 0047DF43    push        esi
 0047DF44    push        edi
 0047DF45    xor         ecx,ecx
 0047DF47    mov         dword ptr [ebp-18],ecx
 0047DF4A    mov         dword ptr [ebp-1C],ecx
 0047DF4D    mov         dword ptr [ebp-4],ecx
 0047DF50    mov         dword ptr [ebp-10],edx
 0047DF53    mov         dword ptr [ebp-8],eax
 0047DF56    xor         eax,eax
 0047DF58    push        ebp
 0047DF59    push        47E15D
 0047DF5E    push        dword ptr fs:[eax]
 0047DF61    mov         dword ptr fs:[eax],esp
 0047DF64    lea         ecx,[ebp-20]
 0047DF67    lea         edx,[ebp-9]
 0047DF6A    mov         eax,dword ptr [ebp-8]
 0047DF6D    mov         ebx,dword ptr [eax]
 0047DF6F    call        dword ptr [ebx+24]
 0047DF72    lea         edx,[ebp-18]
 0047DF75    mov         eax,dword ptr [ebp-8]
 0047DF78    call        TReader.ReadStr
 0047DF7D    lea         edx,[ebp-1C]
 0047DF80    mov         eax,dword ptr [ebp-8]
 0047DF83    call        TReader.ReadStr
 0047DF88    mov         eax,dword ptr [ebp-8]
 0047DF8B    mov         eax,dword ptr [eax+2C]
 0047DF8E    mov         dword ptr [ebp-24],eax
 0047DF91    mov         eax,dword ptr [ebp-8]
 0047DF94    mov         eax,dword ptr [eax+1C]
 0047DF97    mov         dword ptr [ebp-28],eax
 0047DF9A    xor         eax,eax
 0047DF9C    push        ebp
 0047DF9D    push        47E12D
 0047DFA2    push        dword ptr fs:[eax]
 0047DFA5    mov         dword ptr fs:[eax],esp
 0047DFA8    mov         eax,dword ptr [ebp-10]
 0047DFAB    mov         dword ptr [ebp-14],eax
 0047DFAE    cmp         dword ptr [ebp-14],0
>0047DFB2    jne         0047DFCA
 0047DFB4    test        byte ptr [ebp-9],1
>0047DFB8    je          0047DFC3
 0047DFBA    push        ebp
 0047DFBB    call        0047DE94
 0047DFC0    pop         ecx
>0047DFC1    jmp         0047DFCA
 0047DFC3    push        ebp
 0047DFC4    call        0047DCE0
 0047DFC9    pop         ecx
 0047DFCA    cmp         dword ptr [ebp-14],0
>0047DFCE    je          0047E10D
 0047DFD4    xor         eax,eax
 0047DFD6    push        ebp
 0047DFD7    push        47E0EB
 0047DFDC    push        dword ptr fs:[eax]
 0047DFDF    mov         dword ptr fs:[eax],esp
 0047DFE2    push        ebp
 0047DFE3    mov         eax,dword ptr [ebp-14]
 0047DFE6    call        0047DB3C
 0047DFEB    pop         ecx
 0047DFEC    mov         eax,dword ptr [ebp-14]
 0047DFEF    or          word ptr [eax+1C],1
 0047DFF4    push        ebp
 0047DFF5    mov         dl,1
 0047DFF7    mov         ax,[0047E170];0x1 gvar_0047E170
 0047DFFD    call        0047DBC4
 0047E002    pop         ecx
 0047E003    test        byte ptr [ebp-9],1
>0047E007    jne         0047E010
 0047E009    push        ebp
 0047E00A    call        SetCompName
 0047E00F    pop         ecx
 0047E010    cmp         dword ptr [ebp-14],0
>0047E014    jne         0047E028
 0047E016    xor         eax,eax
 0047E018    pop         edx
 0047E019    pop         ecx
 0047E01A    pop         ecx
 0047E01B    mov         dword ptr fs:[eax],edx
 0047E01E    call        @TryFinallyExit
>0047E023    jmp         0047E134
 0047E028    mov         eax,dword ptr [ebp-14]
 0047E02B    test        byte ptr [eax+1D],2
>0047E02F    je          0047E03A
 0047E031    mov         eax,dword ptr [ebp-8]
 0047E034    mov         edx,dword ptr [ebp-14]
 0047E037    mov         dword ptr [eax+1C],edx
 0047E03A    mov         eax,dword ptr [ebp-14]
 0047E03D    or          word ptr [eax+1C],2
 0047E042    push        ebp
 0047E043    mov         dl,1
 0047E045    mov         ax,[0047E174];0x2 gvar_0047E174
 0047E04B    call        0047DBC4
 0047E050    pop         ecx
 0047E051    mov         edx,dword ptr [ebp-8]
 0047E054    mov         eax,dword ptr [ebp-14]
 0047E057    mov         ecx,dword ptr [eax]
 0047E059    call        dword ptr [ecx+14]
 0047E05C    mov         eax,dword ptr [ebp-14]
 0047E05F    and         word ptr [eax+1C],0FFFFFFFD
 0047E064    push        ebp
 0047E065    xor         edx,edx
 0047E067    mov         ax,[0047E174];0x2 gvar_0047E174
 0047E06D    call        0047DBC4
 0047E072    pop         ecx
 0047E073    test        byte ptr [ebp-9],2
>0047E077    je          0047E08E
 0047E079    mov         eax,dword ptr [ebp-8]
 0047E07C    mov         eax,dword ptr [eax+2C]
 0047E07F    mov         ecx,dword ptr [ebp-20]
 0047E082    mov         edx,dword ptr [ebp-14]
 0047E085    mov         si,0FFF9
 0047E089    call        @CallDynaInst
 0047E08E    test        byte ptr [ebp-9],1
>0047E092    jne         0047E09D
 0047E094    mov         eax,dword ptr [ebp-14]
 0047E097    test        byte ptr [eax+1D],2
>0047E09B    je          0047E0C9
 0047E09D    mov         eax,dword ptr [ebp-8]
 0047E0A0    mov         eax,dword ptr [eax+34]
 0047E0A3    mov         edx,dword ptr [ebp-14]
 0047E0A6    call        00478890
 0047E0AB    test        eax,eax
>0047E0AD    jge         0047E0E1
 0047E0AF    push        ebp
 0047E0B0    mov         eax,dword ptr [ebp-14]
 0047E0B3    call        0047DAF0
 0047E0B8    pop         ecx
 0047E0B9    mov         eax,dword ptr [ebp-8]
 0047E0BC    mov         eax,dword ptr [eax+34]
 0047E0BF    mov         edx,dword ptr [ebp-14]
 0047E0C2    call        TList.Add
>0047E0C7    jmp         0047E0E1
 0047E0C9    push        ebp
 0047E0CA    mov         eax,dword ptr [ebp-14]
 0047E0CD    call        0047DAF0
 0047E0D2    pop         ecx
 0047E0D3    mov         eax,dword ptr [ebp-8]
 0047E0D6    mov         eax,dword ptr [eax+34]
 0047E0D9    mov         edx,dword ptr [ebp-14]
 0047E0DC    call        TList.Add
 0047E0E1    xor         eax,eax
 0047E0E3    pop         edx
 0047E0E4    pop         ecx
 0047E0E5    pop         ecx
 0047E0E6    mov         dword ptr fs:[eax],edx
>0047E0E9    jmp         0047E10D
>0047E0EB    jmp         @HandleAnyException
 0047E0F0    push        ebp
 0047E0F1    call        0047DC4C
 0047E0F6    pop         ecx
 0047E0F7    test        al,al
>0047E0F9    je          0047E103
 0047E0FB    mov         eax,dword ptr [ebp-14]
 0047E0FE    call        TObject.Free
 0047E103    call        @RaiseAgain
 0047E108    call        @DoneExcept
 0047E10D    xor         eax,eax
 0047E10F    pop         edx
 0047E110    pop         ecx
 0047E111    pop         ecx
 0047E112    mov         dword ptr fs:[eax],edx
 0047E115    push        47E134
 0047E11A    mov         eax,dword ptr [ebp-8]
 0047E11D    mov         edx,dword ptr [ebp-24]
 0047E120    mov         dword ptr [eax+2C],edx
 0047E123    mov         eax,dword ptr [ebp-8]
 0047E126    mov         edx,dword ptr [ebp-28]
 0047E129    mov         dword ptr [eax+1C],edx
 0047E12C    ret
>0047E12D    jmp         @HandleFinally
>0047E132    jmp         0047E11A
 0047E134    xor         eax,eax
 0047E136    pop         edx
 0047E137    pop         ecx
 0047E138    pop         ecx
 0047E139    mov         dword ptr fs:[eax],edx
 0047E13C    push        47E164
 0047E141    lea         eax,[ebp-1C]
 0047E144    mov         edx,2
 0047E149    call        @LStrArrayClr
 0047E14E    lea         eax,[ebp-4]
 0047E151    mov         edx,dword ptr ds:[47DACC];_DynArr_37_06
 0047E157    call        @DynArrayClear
 0047E15C    ret
>0047E15D    jmp         @HandleFinally
>0047E162    jmp         0047E141
 0047E164    mov         eax,dword ptr [ebp-14]
 0047E167    pop         edi
 0047E168    pop         esi
 0047E169    pop         ebx
 0047E16A    mov         esp,ebp
 0047E16C    pop         ebp
 0047E16D    ret
end;*}

//0047E178
{*procedure sub_0047E178(?:?; ?:TComponent);
begin
 0047E178    push        ebp
 0047E179    mov         ebp,esp
 0047E17B    add         esp,0FFFFFFF8
 0047E17E    mov         dword ptr [ebp-8],edx
 0047E181    mov         dword ptr [ebp-4],eax
 0047E184    mov         eax,dword ptr [ebp-4]
 0047E187    cmp         dword ptr [eax+30],0
>0047E18B    jne         0047E1DD
 0047E18D    mov         dl,1
 0047E18F    mov         eax,[004759C0];TList
 0047E194    call        TObject.Create;TList.Create
 0047E199    mov         edx,dword ptr [ebp-4]
 0047E19C    mov         dword ptr [edx+30],eax
 0047E19F    xor         eax,eax
 0047E1A1    push        ebp
 0047E1A2    push        47E1D6
 0047E1A7    push        dword ptr fs:[eax]
 0047E1AA    mov         dword ptr fs:[eax],esp
 0047E1AD    mov         edx,dword ptr [ebp-8]
 0047E1B0    mov         eax,dword ptr [ebp-4]
 0047E1B3    call        0047E1EC
 0047E1B8    mov         eax,dword ptr [ebp-4]
 0047E1BB    call        0047D60C
 0047E1C0    xor         eax,eax
 0047E1C2    pop         edx
 0047E1C3    pop         ecx
 0047E1C4    pop         ecx
 0047E1C5    mov         dword ptr fs:[eax],edx
 0047E1C8    push        47E1E8
 0047E1CD    mov         eax,dword ptr [ebp-4]
 0047E1D0    call        0047D770
 0047E1D5    ret
>0047E1D6    jmp         @HandleFinally
>0047E1DB    jmp         0047E1CD
 0047E1DD    mov         edx,dword ptr [ebp-8]
 0047E1E0    mov         eax,dword ptr [ebp-4]
 0047E1E3    call        0047E1EC
 0047E1E8    pop         ecx
 0047E1E9    pop         ecx
 0047E1EA    pop         ebp
 0047E1EB    ret
end;*}

//0047E1EC
{*procedure sub_0047E1EC(?:?; ?:?);
begin
 0047E1EC    push        ebp
 0047E1ED    mov         ebp,esp
 0047E1EF    add         esp,0FFFFFFF0
 0047E1F2    push        esi
 0047E1F3    mov         dword ptr [ebp-8],edx
 0047E1F6    mov         dword ptr [ebp-4],eax
>0047E1F9    jmp         0047E206
 0047E1FB    mov         edx,dword ptr [ebp-8]
 0047E1FE    mov         eax,dword ptr [ebp-4]
 0047E201    call        0047E75C
 0047E206    mov         eax,dword ptr [ebp-4]
 0047E209    call        TReader.EndOfList
 0047E20E    test        al,al
>0047E210    je          0047E1FB
 0047E212    mov         eax,dword ptr [ebp-4]
 0047E215    call        TReader.ReadListEnd
 0047E21A    mov         eax,dword ptr [ebp-4]
 0047E21D    mov         eax,dword ptr [eax+2C]
 0047E220    mov         dword ptr [ebp-0C],eax
 0047E223    mov         eax,dword ptr [ebp-4]
 0047E226    mov         eax,dword ptr [eax+28]
 0047E229    mov         dword ptr [ebp-10],eax
 0047E22C    mov         eax,dword ptr [ebp-8]
 0047E22F    mov         si,0FFFB
 0047E233    call        @CallDynaInst
 0047E238    mov         edx,dword ptr [ebp-4]
 0047E23B    mov         dword ptr [edx+2C],eax
 0047E23E    xor         eax,eax
 0047E240    push        ebp
 0047E241    push        47E2B3
 0047E246    push        dword ptr fs:[eax]
 0047E249    mov         dword ptr fs:[eax],esp
 0047E24C    mov         eax,dword ptr [ebp-8]
 0047E24F    mov         si,0FFFC
 0047E253    call        @CallDynaInst
 0047E258    mov         edx,dword ptr [ebp-4]
 0047E25B    mov         dword ptr [edx+28],eax
 0047E25E    mov         eax,dword ptr [ebp-4]
 0047E261    cmp         dword ptr [eax+28],0
>0047E265    jne         0047E27F
 0047E267    mov         eax,dword ptr [ebp-4]
 0047E26A    mov         eax,dword ptr [eax+18]
 0047E26D    mov         edx,dword ptr [ebp-4]
 0047E270    mov         dword ptr [edx+28],eax
>0047E273    jmp         0047E27F
 0047E275    xor         edx,edx
 0047E277    mov         eax,dword ptr [ebp-4]
 0047E27A    call        0047DF3C
 0047E27F    mov         eax,dword ptr [ebp-4]
 0047E282    call        TReader.EndOfList
 0047E287    test        al,al
>0047E289    je          0047E275
 0047E28B    mov         eax,dword ptr [ebp-4]
 0047E28E    call        TReader.ReadListEnd
 0047E293    xor         eax,eax
 0047E295    pop         edx
 0047E296    pop         ecx
 0047E297    pop         ecx
 0047E298    mov         dword ptr fs:[eax],edx
 0047E29B    push        47E2BA
 0047E2A0    mov         eax,dword ptr [ebp-4]
 0047E2A3    mov         edx,dword ptr [ebp-0C]
 0047E2A6    mov         dword ptr [eax+2C],edx
 0047E2A9    mov         eax,dword ptr [ebp-4]
 0047E2AC    mov         edx,dword ptr [ebp-10]
 0047E2AF    mov         dword ptr [eax+28],edx
 0047E2B2    ret
>0047E2B3    jmp         @HandleFinally
>0047E2B8    jmp         0047E2A0
 0047E2BA    pop         esi
 0047E2BB    mov         esp,ebp
 0047E2BD    pop         ebp
 0047E2BE    ret
end;*}

//0047E2C0
{*procedure sub_0047E2C0(?:?);
begin
 0047E2C0    push        ebp
 0047E2C1    mov         ebp,esp
 0047E2C3    add         esp,0FFFFFFE8
 0047E2C6    mov         dword ptr [ebp-4],eax
 0047E2C9    mov         eax,dword ptr [ebp-4]
 0047E2CC    call        TReader.ReadValue
 0047E2D1    cmp         al,5
>0047E2D3    jne         0047E2E7
 0047E2D5    lea         edx,[ebp-10]
 0047E2D8    mov         ecx,0A
 0047E2DD    mov         eax,dword ptr [ebp-4]
 0047E2E0    call        TReader.Read
>0047E2E5    jmp         0047E302
 0047E2E7    mov         eax,dword ptr [ebp-4]
 0047E2EA    dec         dword ptr [eax+10]
 0047E2ED    mov         eax,dword ptr [ebp-4]
 0047E2F0    call        0047E574
 0047E2F5    mov         dword ptr [ebp-18],eax
 0047E2F8    mov         dword ptr [ebp-14],edx
 0047E2FB    fild        qword ptr [ebp-18]
 0047E2FE    fstp        tbyte ptr [ebp-10]
 0047E301    wait
 0047E302    fld         tbyte ptr [ebp-10]
 0047E305    mov         esp,ebp
 0047E307    pop         ebp
 0047E308    ret
end;*}

//0047E30C
{*procedure sub_0047E30C(?:?);
begin
 0047E30C    push        ebp
 0047E30D    mov         ebp,esp
 0047E30F    add         esp,0FFFFFFF0
 0047E312    mov         dword ptr [ebp-4],eax
 0047E315    mov         eax,dword ptr [ebp-4]
 0047E318    call        TReader.ReadValue
 0047E31D    cmp         al,0F
>0047E31F    jne         0047E333
 0047E321    lea         edx,[ebp-8]
 0047E324    mov         ecx,4
 0047E329    mov         eax,dword ptr [ebp-4]
 0047E32C    call        TReader.Read
>0047E331    jmp         0047E34E
 0047E333    mov         eax,dword ptr [ebp-4]
 0047E336    dec         dword ptr [eax+10]
 0047E339    mov         eax,dword ptr [ebp-4]
 0047E33C    call        0047E574
 0047E341    mov         dword ptr [ebp-10],eax
 0047E344    mov         dword ptr [ebp-0C],edx
 0047E347    fild        qword ptr [ebp-10]
 0047E34A    fstp        dword ptr [ebp-8]
 0047E34D    wait
 0047E34E    fld         dword ptr [ebp-8]
 0047E351    mov         esp,ebp
 0047E353    pop         ebp
 0047E354    ret
end;*}

//0047E358
{*procedure sub_0047E358(?:?);
begin
 0047E358    push        ebp
 0047E359    mov         ebp,esp
 0047E35B    add         esp,0FFFFFFE8
 0047E35E    mov         dword ptr [ebp-4],eax
 0047E361    mov         eax,dword ptr [ebp-4]
 0047E364    call        TReader.ReadValue
 0047E369    cmp         al,10
>0047E36B    jne         0047E37F
 0047E36D    lea         edx,[ebp-10]
 0047E370    mov         ecx,8
 0047E375    mov         eax,dword ptr [ebp-4]
 0047E378    call        TReader.Read
>0047E37D    jmp         0047E3A0
 0047E37F    mov         eax,dword ptr [ebp-4]
 0047E382    dec         dword ptr [eax+10]
 0047E385    mov         eax,dword ptr [ebp-4]
 0047E388    call        0047E574
 0047E38D    mov         dword ptr [ebp-18],eax
 0047E390    mov         dword ptr [ebp-14],edx
 0047E393    fild        qword ptr [ebp-18]
 0047E396    fmul        dword ptr ds:[47E3A8];10000:Single
 0047E39C    fistp       qword ptr [ebp-10]
 0047E39F    wait
 0047E3A0    fild        qword ptr [ebp-10]
 0047E3A3    mov         esp,ebp
 0047E3A5    pop         ebp
 0047E3A6    ret
end;*}

//0047E3AC
{*procedure sub_0047E3AC(?:?);
begin
 0047E3AC    push        ebp
 0047E3AD    mov         ebp,esp
 0047E3AF    add         esp,0FFFFFFE8
 0047E3B2    mov         dword ptr [ebp-4],eax
 0047E3B5    mov         eax,dword ptr [ebp-4]
 0047E3B8    call        TReader.ReadValue
 0047E3BD    cmp         al,11
>0047E3BF    jne         0047E3D3
 0047E3C1    lea         edx,[ebp-10]
 0047E3C4    mov         ecx,8
 0047E3C9    mov         eax,dword ptr [ebp-4]
 0047E3CC    call        TReader.Read
>0047E3D1    jmp         0047E3EE
 0047E3D3    mov         eax,dword ptr [ebp-4]
 0047E3D6    dec         dword ptr [eax+10]
 0047E3D9    mov         eax,dword ptr [ebp-4]
 0047E3DC    call        0047E574
 0047E3E1    mov         dword ptr [ebp-18],eax
 0047E3E4    mov         dword ptr [ebp-14],edx
 0047E3E7    fild        qword ptr [ebp-18]
 0047E3EA    fstp        qword ptr [ebp-10]
 0047E3ED    wait
 0047E3EE    fld         qword ptr [ebp-10]
 0047E3F1    mov         esp,ebp
 0047E3F3    pop         ebp
 0047E3F4    ret
end;*}

//0047E3F8
function TReader.ReadIdent:AnsiString;
begin
{*
 0047E3F8    push        ebp
 0047E3F9    mov         ebp,esp
 0047E3FB    add         esp,0FFFFFFF4
 0047E3FE    mov         dword ptr [ebp-8],edx
 0047E401    mov         dword ptr [ebp-4],eax
 0047E404    mov         eax,dword ptr [ebp-4]
 0047E407    call        TReader.ReadValue
 0047E40C    and         eax,7F
 0047E40F    cmp         eax,0D
>0047E412    ja          0047E4BF
 0047E418    mov         al,byte ptr [eax+47E425]
 0047E41E    jmp         dword ptr [eax*4+47E433]
 0047E41E    db          5
 0047E41E    db          0
 0047E41E    db          0
 0047E41E    db          0
 0047E41E    db          0
 0047E41E    db          0
 0047E41E    db          0
 0047E41E    db          1
 0047E41E    db          2
 0047E41E    db          3
 0047E41E    db          0
 0047E41E    db          0
 0047E41E    db          0
 0047E41E    db          4
 0047E41E    dd          0047E4BF
 0047E41E    dd          0047E44B
 0047E41E    dd          0047E483
 0047E41E    dd          0047E492
 0047E41E    dd          0047E4A1
 0047E41E    dd          0047E4B0
 0047E44B    lea         edx,[ebp-9]
 0047E44E    mov         ecx,1
 0047E453    mov         eax,dword ptr [ebp-4]
 0047E456    call        TReader.Read
 0047E45B    xor         ecx,ecx
 0047E45D    mov         cl,byte ptr [ebp-9]
 0047E460    mov         eax,dword ptr [ebp-8]
 0047E463    xor         edx,edx
 0047E465    call        @LStrFromPCharLen
 0047E46A    mov         eax,dword ptr [ebp-8]
 0047E46D    call        00404C34
 0047E472    mov         edx,eax
 0047E474    xor         ecx,ecx
 0047E476    mov         cl,byte ptr [ebp-9]
 0047E479    mov         eax,dword ptr [ebp-4]
 0047E47C    call        TReader.Read
>0047E481    jmp         0047E4C4
 0047E483    mov         eax,dword ptr [ebp-8]
 0047E486    mov         edx,47E4D0;'False'
 0047E48B    call        @LStrAsg
>0047E490    jmp         0047E4C4
 0047E492    mov         eax,dword ptr [ebp-8]
 0047E495    mov         edx,47E4E0;'True'
 0047E49A    call        @LStrAsg
>0047E49F    jmp         0047E4C4
 0047E4A1    mov         eax,dword ptr [ebp-8]
 0047E4A4    mov         edx,47E4F0;'nil'
 0047E4A9    call        @LStrAsg
>0047E4AE    jmp         0047E4C4
 0047E4B0    mov         eax,dword ptr [ebp-8]
 0047E4B3    mov         edx,47E4FC;'Null'
 0047E4B8    call        @LStrAsg
>0047E4BD    jmp         0047E4C4
 0047E4BF    call        0047D288
 0047E4C4    mov         esp,ebp
 0047E4C6    pop         ebp
 0047E4C7    ret
*}
end;

//0047E504
{*function sub_0047E504(?:TReader):?;
begin
 0047E504    push        ebp
 0047E505    mov         ebp,esp
 0047E507    add         esp,0FFFFFFF4
 0047E50A    mov         dword ptr [ebp-4],eax
 0047E50D    mov         eax,dword ptr [ebp-4]
 0047E510    call        TReader.ReadValue
 0047E515    sub         al,2
>0047E517    je          0047E523
 0047E519    dec         al
>0047E51B    je          0047E53C
 0047E51D    dec         al
>0047E51F    je          0047E555
>0047E521    jmp         0047E567
 0047E523    lea         edx,[ebp-9]
 0047E526    mov         ecx,1
 0047E52B    mov         eax,dword ptr [ebp-4]
 0047E52E    call        TReader.Read
 0047E533    movsx       eax,byte ptr [ebp-9]
 0047E537    mov         dword ptr [ebp-8],eax
>0047E53A    jmp         0047E56C
 0047E53C    lea         edx,[ebp-0C]
 0047E53F    mov         ecx,2
 0047E544    mov         eax,dword ptr [ebp-4]
 0047E547    call        TReader.Read
 0047E54C    movsx       eax,word ptr [ebp-0C]
 0047E550    mov         dword ptr [ebp-8],eax
>0047E553    jmp         0047E56C
 0047E555    lea         edx,[ebp-8]
 0047E558    mov         ecx,4
 0047E55D    mov         eax,dword ptr [ebp-4]
 0047E560    call        TReader.Read
>0047E565    jmp         0047E56C
 0047E567    call        0047D288
 0047E56C    mov         eax,dword ptr [ebp-8]
 0047E56F    mov         esp,ebp
 0047E571    pop         ebp
 0047E572    ret
end;*}

//0047E574
{*function sub_0047E574(?:?):?;
begin
 0047E574    push        ebp
 0047E575    mov         ebp,esp
 0047E577    add         esp,0FFFFFFF0
 0047E57A    mov         dword ptr [ebp-4],eax
 0047E57D    mov         eax,dword ptr [ebp-4]
 0047E580    call        TReader.NextValue
 0047E585    cmp         al,13
>0047E587    jne         0047E5A3
 0047E589    mov         eax,dword ptr [ebp-4]
 0047E58C    call        TReader.ReadValue
 0047E591    lea         edx,[ebp-10]
 0047E594    mov         ecx,8
 0047E599    mov         eax,dword ptr [ebp-4]
 0047E59C    call        TReader.Read
>0047E5A1    jmp         0047E5B2
 0047E5A3    mov         eax,dword ptr [ebp-4]
 0047E5A6    call        0047E504
 0047E5AB    cdq
 0047E5AC    mov         dword ptr [ebp-10],eax
 0047E5AF    mov         dword ptr [ebp-0C],edx
 0047E5B2    mov         eax,dword ptr [ebp-10]
 0047E5B5    mov         edx,dword ptr [ebp-0C]
 0047E5B8    mov         esp,ebp
 0047E5BA    pop         ebp
 0047E5BB    ret
end;*}

//0047E5BC
procedure TReader.ReadListBegin;
begin
{*
 0047E5BC    push        ebp
 0047E5BD    mov         ebp,esp
 0047E5BF    push        ecx
 0047E5C0    mov         dword ptr [ebp-4],eax
 0047E5C3    mov         dl,1
 0047E5C5    mov         eax,dword ptr [ebp-4]
 0047E5C8    call        0047D348
 0047E5CD    pop         ecx
 0047E5CE    pop         ebp
 0047E5CF    ret
*}
end;

//0047E5D0
procedure TReader.ReadListEnd;
begin
{*
 0047E5D0    push        ebp
 0047E5D1    mov         ebp,esp
 0047E5D3    push        ecx
 0047E5D4    mov         dword ptr [ebp-4],eax
 0047E5D7    xor         edx,edx
 0047E5D9    mov         eax,dword ptr [ebp-4]
 0047E5DC    call        0047D348
 0047E5E1    pop         ecx
 0047E5E2    pop         ebp
 0047E5E3    ret
*}
end;

//0047E5E4
{*procedure sub_0047E5E4(?:?; ?:?);
begin
 0047E5E4    push        ebp
 0047E5E5    mov         ebp,esp
 0047E5E7    add         esp,0FFFFFFF0
 0047E5EA    mov         dword ptr [ebp-0C],ecx
 0047E5ED    mov         dword ptr [ebp-8],edx
 0047E5F0    mov         dword ptr [ebp-4],eax
 0047E5F3    mov         eax,dword ptr [ebp-8]
 0047E5F6    mov         dl,byte ptr ds:[47E63C];0x0 gvar_0047E63C
 0047E5FC    mov         byte ptr [eax],dl
 0047E5FE    mov         eax,dword ptr [ebp-4]
 0047E601    call        TReader.NextValue
 0047E606    and         al,0F0
 0047E608    cmp         al,0F0
>0047E60A    jne         0047E636
 0047E60C    mov         eax,dword ptr [ebp-4]
 0047E60F    call        TReader.ReadValue
 0047E614    mov         byte ptr [ebp-0D],al
 0047E617    mov         al,byte ptr [ebp-0D]
 0047E61A    and         al,0F
 0047E61C    mov         edx,dword ptr [ebp-8]
 0047E61F    mov         byte ptr [edx],al
 0047E621    mov         eax,dword ptr [ebp-8]
 0047E624    test        byte ptr [eax],2
>0047E627    je          0047E636
 0047E629    mov         eax,dword ptr [ebp-4]
 0047E62C    call        0047E504
 0047E631    mov         edx,dword ptr [ebp-0C]
 0047E634    mov         dword ptr [edx],eax
 0047E636    mov         esp,ebp
 0047E638    pop         ebp
 0047E639    ret
end;*}

//0047E640
{*procedure sub_0047E640(?:Exception; ?:?);
begin
 0047E640    push        ebp
 0047E641    mov         ebp,esp
 0047E643    add         esp,0FFFFFED8
 0047E649    xor         edx,edx
 0047E64B    mov         dword ptr [ebp-8],edx
 0047E64E    mov         dword ptr [ebp-4],eax
 0047E651    xor         eax,eax
 0047E653    push        ebp
 0047E654    push        47E734
 0047E659    push        dword ptr fs:[eax]
 0047E65C    mov         dword ptr fs:[eax],esp
 0047E65F    lea         eax,[ebp-8]
 0047E662    call        @LStrClr
 0047E667    mov         eax,dword ptr [ebp+8]
 0047E66A    mov         eax,dword ptr [eax-4]
 0047E66D    mov         edx,dword ptr ds:[47698C];TComponent
 0047E673    call        @IsClass
 0047E678    test        al,al
>0047E67A    je          0047E68D
 0047E67C    lea         eax,[ebp-8]
 0047E67F    mov         edx,dword ptr [ebp+8]
 0047E682    mov         edx,dword ptr [edx-4]
 0047E685    mov         edx,dword ptr [edx+8]
 0047E688    call        @LStrLAsg
 0047E68D    cmp         dword ptr [ebp-8],0
>0047E691    jne         0047E6B4
 0047E693    lea         edx,[ebp-108]
 0047E699    mov         eax,dword ptr [ebp+8]
 0047E69C    mov         eax,dword ptr [eax-4]
 0047E69F    mov         eax,dword ptr [eax]
 0047E6A1    call        TObject.ClassName
 0047E6A6    lea         edx,[ebp-108]
 0047E6AC    lea         eax,[ebp-8]
 0047E6AF    call        @LStrFromString
 0047E6B4    mov         eax,dword ptr [ebp-8]
 0047E6B7    mov         dword ptr [ebp-128],eax
 0047E6BD    mov         byte ptr [ebp-124],0B
 0047E6C4    mov         eax,[0055B2DC];^gvar_00540CCC
 0047E6C9    mov         eax,dword ptr [eax]
 0047E6CB    mov         dword ptr [ebp-120],eax
 0047E6D1    mov         byte ptr [ebp-11C],0B
 0047E6D8    mov         eax,dword ptr [ebp+8]
 0047E6DB    mov         eax,dword ptr [eax-8]
 0047E6DE    mov         dword ptr [ebp-118],eax
 0047E6E4    mov         byte ptr [ebp-114],0B
 0047E6EB    mov         eax,dword ptr [ebp-4]
 0047E6EE    mov         eax,dword ptr [eax+4]
 0047E6F1    mov         dword ptr [ebp-110],eax
 0047E6F7    mov         byte ptr [ebp-10C],0B
 0047E6FE    lea         eax,[ebp-128]
 0047E704    push        eax
 0047E705    push        3
 0047E707    mov         ecx,dword ptr ds:[55B634];^SPropertyException:TResStringRec
 0047E70D    mov         dl,1
 0047E70F    mov         eax,[00475630];EReadError
 0047E714    call        Exception.CreateResFmt;EReadError.Create
 0047E719    call        @RaiseExcept
 0047E71E    xor         eax,eax
 0047E720    pop         edx
 0047E721    pop         ecx
 0047E722    pop         ecx
 0047E723    mov         dword ptr fs:[eax],edx
 0047E726    push        47E73B
 0047E72B    lea         eax,[ebp-8]
 0047E72E    call        @LStrClr
 0047E733    ret
>0047E734    jmp         @HandleFinally
>0047E739    jmp         0047E72B
 0047E73B    mov         esp,ebp
 0047E73D    pop         ebp
 0047E73E    ret
end;*}

//0047E740
procedure PropPathError;
begin
{*
 0047E740    push        ebp
 0047E741    mov         ebp,esp
 0047E743    mov         eax,dword ptr [ebp+8]
 0047E746    mov         eax,dword ptr [eax-0C]
 0047E749    call        TReader.SkipValue
 0047E74E    mov         eax,[0055B604];^SInvalidPropertyPath:TResStringRec
 0047E753    call        ReadError
 0047E758    pop         ebp
 0047E759    ret
*}
end;

//0047E75C
{*procedure sub_0047E75C(?:?; ?:?);
begin
 0047E75C    push        ebp
 0047E75D    mov         ebp,esp
 0047E75F    add         esp,0FFFFFFD4
 0047E762    push        ebx
 0047E763    push        esi
 0047E764    push        edi
 0047E765    xor         ecx,ecx
 0047E767    mov         dword ptr [ebp-8],ecx
 0047E76A    mov         dword ptr [ebp-4],edx
 0047E76D    mov         dword ptr [ebp-0C],eax
 0047E770    xor         eax,eax
 0047E772    push        ebp
 0047E773    push        47E95A
 0047E778    push        dword ptr fs:[eax]
 0047E77B    mov         dword ptr fs:[eax],esp
 0047E77E    xor         eax,eax
 0047E780    push        ebp
 0047E781    push        47E90B
 0047E786    push        dword ptr fs:[eax]
 0047E789    mov         dword ptr fs:[eax],esp
 0047E78C    lea         edx,[ebp-8]
 0047E78F    mov         eax,dword ptr [ebp-0C]
 0047E792    call        TReader.ReadStr
 0047E797    xor         eax,eax
 0047E799    push        ebp
 0047E79A    push        47E8DE
 0047E79F    push        dword ptr fs:[eax]
 0047E7A2    mov         dword ptr fs:[eax],esp
 0047E7A5    mov         dword ptr [ebp-10],1
 0047E7AC    mov         eax,dword ptr [ebp-8]
 0047E7AF    call        @DynArrayLength
 0047E7B4    mov         dword ptr [ebp-18],eax
 0047E7B7    mov         eax,dword ptr [ebp-4]
 0047E7BA    mov         dword ptr [ebp-1C],eax
 0047E7BD    mov         eax,dword ptr [ebp-0C]
 0047E7C0    mov         byte ptr [eax+78],1
 0047E7C4    mov         eax,dword ptr [ebp-10]
 0047E7C7    mov         dword ptr [ebp-14],eax
>0047E7CA    jmp         0047E7CF
 0047E7CC    inc         dword ptr [ebp-10]
 0047E7CF    mov         eax,dword ptr [ebp-10]
 0047E7D2    cmp         eax,dword ptr [ebp-18]
>0047E7D5    jg          0047E7E4
 0047E7D7    mov         eax,dword ptr [ebp-8]
 0047E7DA    mov         edx,dword ptr [ebp-10]
 0047E7DD    cmp         byte ptr [eax+edx-1],2E
>0047E7E2    jne         0047E7CC
 0047E7E4    mov         eax,dword ptr [ebp-0C]
 0047E7E7    add         eax,70
 0047E7EA    push        eax
 0047E7EB    mov         ecx,dword ptr [ebp-10]
 0047E7EE    sub         ecx,dword ptr [ebp-14]
 0047E7F1    mov         edx,dword ptr [ebp-14]
 0047E7F4    mov         eax,dword ptr [ebp-8]
 0047E7F7    call        @LStrCopy
 0047E7FC    mov         eax,dword ptr [ebp-10]
 0047E7FF    cmp         eax,dword ptr [ebp-18]
>0047E802    jg          0047E876
 0047E804    mov         eax,dword ptr [ebp-1C]
 0047E807    mov         eax,dword ptr [eax]
 0047E809    call        00403A74
 0047E80E    mov         edx,dword ptr [ebp-0C]
 0047E811    mov         edx,dword ptr [edx+70]
 0047E814    call        GetPropInfo
 0047E819    mov         dword ptr [ebp-20],eax
 0047E81C    cmp         dword ptr [ebp-20],0
>0047E820    jne         0047E830
 0047E822    mov         eax,dword ptr [ebp-0C]
 0047E825    mov         edx,dword ptr [eax+70]
 0047E828    mov         eax,dword ptr [ebp-0C]
 0047E82B    call        0047D8D0
 0047E830    xor         eax,eax
 0047E832    mov         dword ptr [ebp-24],eax
 0047E835    mov         eax,dword ptr [ebp-20]
 0047E838    mov         eax,dword ptr [eax]
 0047E83A    mov         eax,dword ptr [eax]
 0047E83C    cmp         byte ptr [eax],7
>0047E83F    jne         0047E84F
 0047E841    mov         edx,dword ptr [ebp-20]
 0047E844    mov         eax,dword ptr [ebp-1C]
 0047E847    call        GetOrdProp
 0047E84C    mov         dword ptr [ebp-24],eax
 0047E84F    mov         eax,dword ptr [ebp-24]
 0047E852    mov         edx,dword ptr ds:[475AD0];TPersistent
 0047E858    call        @IsClass
 0047E85D    test        al,al
>0047E85F    jne         0047E868
 0047E861    push        ebp
 0047E862    call        PropPathError
 0047E867    pop         ecx
 0047E868    mov         eax,dword ptr [ebp-24]
 0047E86B    mov         dword ptr [ebp-1C],eax
 0047E86E    inc         dword ptr [ebp-10]
>0047E871    jmp         0047E7C4
 0047E876    mov         eax,dword ptr [ebp-1C]
 0047E879    mov         eax,dword ptr [eax]
 0047E87B    call        00403A74
 0047E880    mov         edx,dword ptr [ebp-0C]
 0047E883    mov         edx,dword ptr [edx+70]
 0047E886    call        GetPropInfo
 0047E88B    mov         dword ptr [ebp-20],eax
 0047E88E    cmp         dword ptr [ebp-20],0
>0047E892    je          0047E8A4
 0047E894    mov         ecx,dword ptr [ebp-20]
 0047E897    mov         edx,dword ptr [ebp-1C]
 0047E89A    mov         eax,dword ptr [ebp-0C]
 0047E89D    call        0047EB18
>0047E8A2    jmp         0047E8D4
 0047E8A4    mov         eax,dword ptr [ebp-0C]
 0047E8A7    mov         byte ptr [eax+78],0
 0047E8AB    mov         edx,dword ptr [ebp-0C]
 0047E8AE    mov         eax,dword ptr [ebp-1C]
 0047E8B1    mov         ecx,dword ptr [eax]
 0047E8B3    call        dword ptr [ecx+4]
 0047E8B6    mov         eax,dword ptr [ebp-0C]
 0047E8B9    mov         byte ptr [eax+78],1
 0047E8BD    mov         eax,dword ptr [ebp-0C]
 0047E8C0    cmp         dword ptr [eax+70],0
>0047E8C4    je          0047E8D4
 0047E8C6    mov         eax,dword ptr [ebp-0C]
 0047E8C9    mov         edx,dword ptr [eax+70]
 0047E8CC    mov         eax,dword ptr [ebp-0C]
 0047E8CF    call        0047D8D0
 0047E8D4    xor         eax,eax
 0047E8D6    pop         edx
 0047E8D7    pop         ecx
 0047E8D8    pop         ecx
 0047E8D9    mov         dword ptr fs:[eax],edx
>0047E8DC    jmp         0047E901
>0047E8DE    jmp         @HandleOnException
 0047E8E3    dd          1
 0047E8E7    dd          004653B4;Exception
 0047E8EB    dd          0047E8EF
 0047E8EF    mov         dword ptr [ebp-28],eax
 0047E8F2    push        ebp
 0047E8F3    mov         eax,dword ptr [ebp-28]
 0047E8F6    call        0047E640
 0047E8FB    pop         ecx
 0047E8FC    call        @DoneExcept
 0047E901    xor         eax,eax
 0047E903    pop         edx
 0047E904    pop         ecx
 0047E905    pop         ecx
 0047E906    mov         dword ptr fs:[eax],edx
>0047E909    jmp         0047E944
>0047E90B    jmp         @HandleOnException
 0047E910    dd          1
 0047E914    dd          004653B4;Exception
 0047E918    dd          0047E91C
 0047E91C    mov         dword ptr [ebp-2C],eax
 0047E91F    mov         eax,dword ptr [ebp-0C]
 0047E922    cmp         byte ptr [eax+78],0
>0047E926    je          0047E93A
 0047E928    mov         eax,dword ptr [ebp-2C]
 0047E92B    mov         edx,dword ptr [eax+4];Exception.FMessage:String
 0047E92E    mov         eax,dword ptr [ebp-0C]
 0047E931    mov         ecx,dword ptr [eax]
 0047E933    call        dword ptr [ecx+10]
 0047E936    test        al,al
>0047E938    jne         0047E93F
 0047E93A    call        @RaiseAgain
 0047E93F    call        @DoneExcept
 0047E944    xor         eax,eax
 0047E946    pop         edx
 0047E947    pop         ecx
 0047E948    pop         ecx
 0047E949    mov         dword ptr fs:[eax],edx
 0047E94C    push        47E961
 0047E951    lea         eax,[ebp-8]
 0047E954    call        @LStrClr
 0047E959    ret
>0047E95A    jmp         @HandleFinally
>0047E95F    jmp         0047E951
 0047E961    pop         edi
 0047E962    pop         esi
 0047E963    pop         ebx
 0047E964    mov         esp,ebp
 0047E966    pop         ebp
 0047E967    ret
end;*}

//0047E968
{*procedure sub_0047E968(?:Longint; ?:PPropInfo; ?:?);
begin
 0047E968    push        ebp
 0047E969    mov         ebp,esp
 0047E96B    add         esp,0FFFFFFEC
 0047E96E    mov         dword ptr [ebp-0C],ecx
 0047E971    mov         dword ptr [ebp-8],edx
 0047E974    mov         dword ptr [ebp-4],eax
 0047E977    mov         eax,dword ptr [ebp-8]
 0047E97A    mov         eax,dword ptr [eax]
 0047E97C    mov         eax,dword ptr [eax]
 0047E97E    call        00477EAC
 0047E983    mov         dword ptr [ebp-14],eax
 0047E986    cmp         dword ptr [ebp-14],0
>0047E98A    je          0047E9A9
 0047E98C    lea         edx,[ebp-10]
 0047E98F    mov         eax,dword ptr [ebp-0C]
 0047E992    call        dword ptr [ebp-14]
 0047E995    test        al,al
>0047E997    je          0047E9A9
 0047E999    mov         ecx,dword ptr [ebp-10]
 0047E99C    mov         edx,dword ptr [ebp-8]
 0047E99F    mov         eax,dword ptr [ebp-4]
 0047E9A2    call        SetOrdProp
>0047E9A7    jmp         0047E9AE
 0047E9A9    call        0047D288
 0047E9AE    mov         esp,ebp
 0047E9B0    pop         ebp
 0047E9B1    ret
end;*}

//0047E9B4
{*procedure sub_0047E9B4(?:Longint; ?:PPropInfo; ?:?; ?:?);
begin
 0047E9B4    push        ebp
 0047E9B5    mov         ebp,esp
 0047E9B7    add         esp,0FFFFFFF4
 0047E9BA    mov         dword ptr [ebp-0C],ecx
 0047E9BD    mov         dword ptr [ebp-8],edx
 0047E9C0    mov         dword ptr [ebp-4],eax
 0047E9C3    mov         eax,dword ptr [ebp+8]
 0047E9C6    mov         eax,dword ptr [eax-4]
 0047E9C9    mov         eax,dword ptr [eax+18]
 0047E9CC    push        eax
 0047E9CD    mov         eax,dword ptr [ebp-8]
 0047E9D0    push        eax
 0047E9D1    push        0
 0047E9D3    mov         eax,dword ptr [ebp-0C]
 0047E9D6    push        eax
 0047E9D7    mov         ecx,dword ptr [ebp-4]
 0047E9DA    mov         dl,1
 0047E9DC    mov         eax,[0047CB28];TPropFixup
 0047E9E1    call        TPropFixup.Create;TPropFixup.Create
 0047E9E6    mov         edx,eax
 0047E9E8    mov         eax,dword ptr [ebp+8]
 0047E9EB    mov         eax,dword ptr [eax-4]
 0047E9EE    mov         eax,dword ptr [eax+30]
 0047E9F1    call        TList.Add
 0047E9F6    mov         esp,ebp
 0047E9F8    pop         ebp
 0047E9F9    ret
end;*}

//0047E9FC
procedure SetVariantReference;
begin
{*
 0047E9FC    push        ebp
 0047E9FD    mov         ebp,esp
 0047E9FF    xor         ecx,ecx
 0047EA01    push        ecx
 0047EA02    push        ecx
 0047EA03    push        ecx
 0047EA04    push        ecx
 0047EA05    xor         eax,eax
 0047EA07    push        ebp
 0047EA08    push        47EA4B
 0047EA0D    push        dword ptr fs:[eax]
 0047EA10    mov         dword ptr fs:[eax],esp
 0047EA13    lea         edx,[ebp-10]
 0047EA16    mov         eax,dword ptr [ebp+8]
 0047EA19    mov         eax,dword ptr [eax-4]
 0047EA1C    call        TReader.ReadVariant
 0047EA21    lea         ecx,[ebp-10]
 0047EA24    mov         eax,dword ptr [ebp+8]
 0047EA27    mov         edx,dword ptr [eax-0C]
 0047EA2A    mov         eax,dword ptr [ebp+8]
 0047EA2D    mov         eax,dword ptr [eax-8]
 0047EA30    call        SetVariantProp
 0047EA35    xor         eax,eax
 0047EA37    pop         edx
 0047EA38    pop         ecx
 0047EA39    pop         ecx
 0047EA3A    mov         dword ptr fs:[eax],edx
 0047EA3D    push        47EA52
 0047EA42    lea         eax,[ebp-10]
 0047EA45    call        @VarClr
 0047EA4A    ret
>0047EA4B    jmp         @HandleFinally
>0047EA50    jmp         0047EA42
 0047EA52    mov         esp,ebp
 0047EA54    pop         ebp
 0047EA55    ret
*}
end;

//0047EA58
procedure SetInterfaceReference;
begin
{*
 0047EA58    push        ebp
 0047EA59    mov         ebp,esp
 0047EA5B    push        0
 0047EA5D    push        0
 0047EA5F    xor         eax,eax
 0047EA61    push        ebp
 0047EA62    push        47EB0A
 0047EA67    push        dword ptr fs:[eax]
 0047EA6A    mov         dword ptr fs:[eax],esp
 0047EA6D    mov         eax,dword ptr [ebp+8]
 0047EA70    mov         eax,dword ptr [eax-4]
 0047EA73    call        TReader.NextValue
 0047EA78    cmp         al,0D
>0047EA7A    jne         0047EAA5
 0047EA7C    mov         eax,dword ptr [ebp+8]
 0047EA7F    mov         eax,dword ptr [eax-4]
 0047EA82    call        TReader.ReadValue
 0047EA87    lea         eax,[ebp-4]
 0047EA8A    call        @IntfClear
 0047EA8F    mov         eax,dword ptr [ebp+8]
 0047EA92    mov         edx,dword ptr [eax-0C]
 0047EA95    mov         eax,dword ptr [ebp+8]
 0047EA98    mov         eax,dword ptr [eax-8]
 0047EA9B    mov         ecx,dword ptr [ebp-4]
 0047EA9E    call        SetInterfaceProp
>0047EAA3    jmp         0047EAEC
 0047EAA5    mov         eax,dword ptr [ebp+8]
 0047EAA8    mov         eax,dword ptr [eax-4]
 0047EAAB    mov         eax,dword ptr [eax+18]
 0047EAAE    push        eax
 0047EAAF    mov         eax,dword ptr [ebp+8]
 0047EAB2    mov         eax,dword ptr [eax-0C]
 0047EAB5    push        eax
 0047EAB6    push        0
 0047EAB8    lea         edx,[ebp-8]
 0047EABB    mov         eax,dword ptr [ebp+8]
 0047EABE    mov         eax,dword ptr [eax-4]
 0047EAC1    call        TReader.ReadIdent
 0047EAC6    mov         eax,dword ptr [ebp-8]
 0047EAC9    push        eax
 0047EACA    mov         eax,dword ptr [ebp+8]
 0047EACD    mov         ecx,dword ptr [eax-8]
 0047EAD0    mov         dl,1
 0047EAD2    mov         eax,[0047CBA0];TPropIntfFixup
 0047EAD7    call        TPropFixup.Create
 0047EADC    mov         edx,eax
 0047EADE    mov         eax,dword ptr [ebp+8]
 0047EAE1    mov         eax,dword ptr [eax-4]
 0047EAE4    mov         eax,dword ptr [eax+30]
 0047EAE7    call        TList.Add
 0047EAEC    xor         eax,eax
 0047EAEE    pop         edx
 0047EAEF    pop         ecx
 0047EAF0    pop         ecx
 0047EAF1    mov         dword ptr fs:[eax],edx
 0047EAF4    push        47EB11
 0047EAF9    lea         eax,[ebp-8]
 0047EAFC    call        @LStrClr
 0047EB01    lea         eax,[ebp-4]
 0047EB04    call        @IntfClear
 0047EB09    ret
>0047EB0A    jmp         @HandleFinally
>0047EB0F    jmp         0047EAF9
 0047EB11    pop         ecx
 0047EB12    pop         ecx
 0047EB13    pop         ebp
 0047EB14    ret
*}
end;

//0047EB18
{*procedure sub_0047EB18(?:?; ?:Longint; ?:PPropInfo);
begin
 0047EB18    push        ebp
 0047EB19    mov         ebp,esp
 0047EB1B    add         esp,0FFFFFFD0
 0047EB1E    push        ebx
 0047EB1F    xor         ebx,ebx
 0047EB21    mov         dword ptr [ebp-30],ebx
 0047EB24    mov         dword ptr [ebp-2C],ebx
 0047EB27    mov         dword ptr [ebp-28],ebx
 0047EB2A    mov         dword ptr [ebp-24],ebx
 0047EB2D    mov         dword ptr [ebp-20],ebx
 0047EB30    mov         dword ptr [ebp-1C],ebx
 0047EB33    mov         dword ptr [ebp-0C],ecx
 0047EB36    mov         dword ptr [ebp-8],edx
 0047EB39    mov         dword ptr [ebp-4],eax
 0047EB3C    xor         eax,eax
 0047EB3E    push        ebp
 0047EB3F    push        47EE23
 0047EB44    push        dword ptr fs:[eax]
 0047EB47    mov         dword ptr fs:[eax],esp
 0047EB4A    mov         eax,dword ptr [ebp-0C]
 0047EB4D    cmp         dword ptr [eax+8],0
>0047EB51    jne         0047EB94
 0047EB53    mov         eax,dword ptr [ebp-0C]
 0047EB56    mov         eax,dword ptr [eax]
 0047EB58    mov         eax,dword ptr [eax]
 0047EB5A    cmp         byte ptr [eax],7
>0047EB5D    jne         0047EB8A
 0047EB5F    mov         edx,dword ptr [ebp-0C]
 0047EB62    mov         eax,dword ptr [ebp-8]
 0047EB65    call        GetOrdProp
 0047EB6A    mov         edx,dword ptr ds:[47698C];TComponent
 0047EB70    call        @IsClass
 0047EB75    test        al,al
>0047EB77    je          0047EB8A
 0047EB79    mov         edx,dword ptr [ebp-0C]
 0047EB7C    mov         eax,dword ptr [ebp-8]
 0047EB7F    call        GetOrdProp
 0047EB84    test        byte ptr [eax+24],4
>0047EB88    jne         0047EB94
 0047EB8A    mov         eax,[0055B538];^SReadOnlyProperty:TResStringRec
 0047EB8F    call        ReadError
 0047EB94    mov         eax,dword ptr [ebp-0C]
 0047EB97    mov         eax,dword ptr [eax]
 0047EB99    mov         eax,dword ptr [eax]
 0047EB9B    mov         dword ptr [ebp-10],eax
 0047EB9E    mov         eax,dword ptr [ebp-10]
 0047EBA1    movzx       eax,byte ptr [eax]
 0047EBA4    cmp         eax,10
>0047EBA7    ja          0047EDF3
 0047EBAD    jmp         dword ptr [eax*4+47EBB4]
 0047EBAD    dd          0047EDF3
 0047EBAD    dd          0047EBF8
 0047EBAD    dd          0047EC3E
 0047EBAD    dd          0047EC5A
 0047EBAD    dd          0047EC82
 0047EBAD    dd          0047ECA1
 0047EBAD    dd          0047ECDD
 0047EBAD    dd          0047ECFA
 0047EBAD    dd          0047ED68
 0047EBAD    dd          0047EDF3
 0047EBAD    dd          0047ECA1
 0047EBAD    dd          0047ECBF
 0047EBAD    dd          0047EDCC
 0047EBAD    dd          0047EDF3
 0047EBAD    dd          0047EDF3
 0047EBAD    dd          0047EDEC
 0047EBAD    dd          0047EDD5
 0047EBF8    mov         eax,dword ptr [ebp-4]
 0047EBFB    call        TReader.NextValue
 0047EC00    cmp         al,7
>0047EC02    jne         0047EC24
 0047EC04    push        ebp
 0047EC05    lea         edx,[ebp-1C]
 0047EC08    mov         eax,dword ptr [ebp-4]
 0047EC0B    call        TReader.ReadIdent
 0047EC10    mov         ecx,dword ptr [ebp-1C]
 0047EC13    mov         edx,dword ptr [ebp-0C]
 0047EC16    mov         eax,dword ptr [ebp-8]
 0047EC19    call        0047E968
 0047EC1E    pop         ecx
>0047EC1F    jmp         0047EDF3
 0047EC24    mov         eax,dword ptr [ebp-4]
 0047EC27    call        0047E504
 0047EC2C    mov         ecx,eax
 0047EC2E    mov         edx,dword ptr [ebp-0C]
 0047EC31    mov         eax,dword ptr [ebp-8]
 0047EC34    call        SetOrdProp
>0047EC39    jmp         0047EDF3
 0047EC3E    mov         eax,dword ptr [ebp-4]
 0047EC41    call        0047D9B0
 0047EC46    xor         ecx,ecx
 0047EC48    mov         cl,al
 0047EC4A    mov         edx,dword ptr [ebp-0C]
 0047EC4D    mov         eax,dword ptr [ebp-8]
 0047EC50    call        SetOrdProp
>0047EC55    jmp         0047EDF3
 0047EC5A    lea         edx,[ebp-20]
 0047EC5D    mov         eax,dword ptr [ebp-4]
 0047EC60    call        TReader.ReadIdent
 0047EC65    mov         edx,dword ptr [ebp-20]
 0047EC68    mov         eax,dword ptr [ebp-10]
 0047EC6B    call        00474454
 0047EC70    mov         ecx,eax
 0047EC72    mov         edx,dword ptr [ebp-0C]
 0047EC75    mov         eax,dword ptr [ebp-8]
 0047EC78    call        SetOrdProp
>0047EC7D    jmp         0047EDF3
 0047EC82    mov         eax,dword ptr [ebp-4]
 0047EC85    call        0047E2C0
 0047EC8A    add         esp,0FFFFFFF4
 0047EC8D    fstp        tbyte ptr [esp]
 0047EC90    wait
 0047EC91    mov         edx,dword ptr [ebp-0C]
 0047EC94    mov         eax,dword ptr [ebp-8]
 0047EC97    call        00474D28
>0047EC9C    jmp         0047EDF3
 0047ECA1    lea         edx,[ebp-24]
 0047ECA4    mov         eax,dword ptr [ebp-4]
 0047ECA7    call        TReader.ReadString
 0047ECAC    mov         ecx,dword ptr [ebp-24]
 0047ECAF    mov         edx,dword ptr [ebp-0C]
 0047ECB2    mov         eax,dword ptr [ebp-8]
 0047ECB5    call        00474970
>0047ECBA    jmp         0047EDF3
 0047ECBF    lea         edx,[ebp-28]
 0047ECC2    mov         eax,dword ptr [ebp-4]
 0047ECC5    call        0047F3DC
 0047ECCA    mov         ecx,dword ptr [ebp-28]
 0047ECCD    mov         edx,dword ptr [ebp-0C]
 0047ECD0    mov         eax,dword ptr [ebp-8]
 0047ECD3    call        00474AD8
>0047ECD8    jmp         0047EDF3
 0047ECDD    mov         edx,dword ptr [ebp-10]
 0047ECE0    mov         eax,dword ptr [ebp-4]
 0047ECE3    call        0047F1D4
 0047ECE8    mov         ecx,eax
 0047ECEA    mov         edx,dword ptr [ebp-0C]
 0047ECED    mov         eax,dword ptr [ebp-8]
 0047ECF0    call        SetOrdProp
>0047ECF5    jmp         0047EDF3
 0047ECFA    mov         eax,dword ptr [ebp-4]
 0047ECFD    call        TReader.NextValue
 0047ED02    sub         al,0D
>0047ED04    je          0047ED0C
 0047ED06    dec         al
>0047ED08    je          0047ED26
>0047ED0A    jmp         0047ED48
 0047ED0C    mov         eax,dword ptr [ebp-4]
 0047ED0F    call        TReader.ReadValue
 0047ED14    xor         ecx,ecx
 0047ED16    mov         edx,dword ptr [ebp-0C]
 0047ED19    mov         eax,dword ptr [ebp-8]
 0047ED1C    call        SetOrdProp
>0047ED21    jmp         0047EDF3
 0047ED26    mov         eax,dword ptr [ebp-4]
 0047ED29    call        TReader.ReadValue
 0047ED2E    mov         edx,dword ptr [ebp-0C]
 0047ED31    mov         eax,dword ptr [ebp-8]
 0047ED34    call        GetOrdProp
 0047ED39    mov         edx,eax
 0047ED3B    mov         eax,dword ptr [ebp-4]
 0047ED3E    call        TReader.ReadCollection
>0047ED43    jmp         0047EDF3
 0047ED48    push        ebp
 0047ED49    lea         edx,[ebp-2C]
 0047ED4C    mov         eax,dword ptr [ebp-4]
 0047ED4F    call        TReader.ReadIdent
 0047ED54    mov         ecx,dword ptr [ebp-2C]
 0047ED57    mov         edx,dword ptr [ebp-0C]
 0047ED5A    mov         eax,dword ptr [ebp-8]
 0047ED5D    call        0047E9B4
 0047ED62    pop         ecx
>0047ED63    jmp         0047EDF3
 0047ED68    mov         eax,dword ptr [ebp-4]
 0047ED6B    call        TReader.NextValue
 0047ED70    cmp         al,0D
>0047ED72    jne         0047ED8E
 0047ED74    mov         eax,dword ptr [ebp-4]
 0047ED77    call        TReader.ReadValue
 0047ED7C    mov         ecx,540CFC
 0047ED81    mov         edx,dword ptr [ebp-0C]
 0047ED84    mov         eax,dword ptr [ebp-8]
 0047ED87    call        SetMethodProp
>0047ED8C    jmp         0047EDF3
 0047ED8E    lea         edx,[ebp-30]
 0047ED91    mov         eax,dword ptr [ebp-4]
 0047ED94    call        TReader.ReadIdent
 0047ED99    mov         ecx,dword ptr [ebp-30]
 0047ED9C    mov         eax,dword ptr [ebp-4]
 0047ED9F    mov         edx,dword ptr [eax+18]
 0047EDA2    mov         eax,dword ptr [ebp-4]
 0047EDA5    mov         ebx,dword ptr [eax]
 0047EDA7    call        dword ptr [ebx+18]
 0047EDAA    mov         dword ptr [ebp-18],eax
 0047EDAD    mov         eax,dword ptr [ebp-4]
 0047EDB0    mov         eax,dword ptr [eax+18]
 0047EDB3    mov         dword ptr [ebp-14],eax
 0047EDB6    cmp         dword ptr [ebp-18],0
>0047EDBA    je          0047EDF3
 0047EDBC    lea         ecx,[ebp-18]
 0047EDBF    mov         edx,dword ptr [ebp-0C]
 0047EDC2    mov         eax,dword ptr [ebp-8]
 0047EDC5    call        SetMethodProp
>0047EDCA    jmp         0047EDF3
 0047EDCC    push        ebp
 0047EDCD    call        SetVariantReference
 0047EDD2    pop         ecx
>0047EDD3    jmp         0047EDF3
 0047EDD5    mov         eax,dword ptr [ebp-4]
 0047EDD8    call        0047E574
 0047EDDD    push        edx
 0047EDDE    push        eax
 0047EDDF    mov         edx,dword ptr [ebp-0C]
 0047EDE2    mov         eax,dword ptr [ebp-8]
 0047EDE5    call        SetInt64Prop
>0047EDEA    jmp         0047EDF3
 0047EDEC    push        ebp
 0047EDED    call        SetInterfaceReference
 0047EDF2    pop         ecx
 0047EDF3    xor         eax,eax
 0047EDF5    pop         edx
 0047EDF6    pop         ecx
 0047EDF7    pop         ecx
 0047EDF8    mov         dword ptr fs:[eax],edx
 0047EDFB    push        47EE2A
 0047EE00    lea         eax,[ebp-30]
 0047EE03    mov         edx,2
 0047EE08    call        @LStrArrayClr
 0047EE0D    lea         eax,[ebp-28]
 0047EE10    call        @WStrClr
 0047EE15    lea         eax,[ebp-24]
 0047EE18    mov         edx,3
 0047EE1D    call        @LStrArrayClr
 0047EE22    ret
>0047EE23    jmp         @HandleFinally
>0047EE28    jmp         0047EE00
 0047EE2A    pop         ebx
 0047EE2B    mov         esp,ebp
 0047EE2D    pop         ebp
 0047EE2E    ret
end;*}

//0047EE30
{*procedure sub_0047EE30(?:?; ?:?);
begin
 0047EE30    push        ebp
 0047EE31    mov         ebp,esp
 0047EE33    add         esp,0FFFFFFE4
 0047EE36    mov         dword ptr [ebp-8],edx
 0047EE39    mov         dword ptr [ebp-4],eax
 0047EE3C    xor         eax,eax
 0047EE3E    mov         dword ptr [ebp-0C],eax
 0047EE41    mov         eax,dword ptr [ebp-8]
 0047EE44    mov         edx,dword ptr [ebp-4]
 0047EE47    call        @LStrAsg
>0047EE4C    jmp         0047EE7B
 0047EE4E    inc         dword ptr [ebp-0C]
 0047EE51    mov         eax,dword ptr [ebp-8]
 0047EE54    push        eax
 0047EE55    mov         eax,dword ptr [ebp-4]
 0047EE58    mov         dword ptr [ebp-1C],eax
 0047EE5B    mov         byte ptr [ebp-18],0B
 0047EE5F    mov         eax,dword ptr [ebp-0C]
 0047EE62    mov         dword ptr [ebp-14],eax
 0047EE65    mov         byte ptr [ebp-10],0
 0047EE69    lea         edx,[ebp-1C]
 0047EE6C    mov         ecx,1
 0047EE71    mov         eax,47EE98;'%s_%d'
 0047EE76    call        Format
 0047EE7B    mov         eax,dword ptr [ebp-8]
 0047EE7E    mov         eax,dword ptr [eax]
 0047EE80    call        004780B4
 0047EE85    test        al,al
>0047EE87    je          0047EE4E
 0047EE89    mov         esp,ebp
 0047EE8B    pop         ebp
 0047EE8C    ret
end;*}

//0047EEA0
{*function sub_0047EEA0(?:TReader; ?:?):?;
begin
 0047EEA0    push        ebp
 0047EEA1    mov         ebp,esp
 0047EEA3    add         esp,0FFFFFFCC
 0047EEA6    push        ebx
 0047EEA7    push        esi
 0047EEA8    push        edi
 0047EEA9    xor         ecx,ecx
 0047EEAB    mov         dword ptr [ebp-30],ecx
 0047EEAE    mov         dword ptr [ebp-34],ecx
 0047EEB1    mov         dword ptr [ebp-2C],ecx
 0047EEB4    mov         dword ptr [ebp-28],ecx
 0047EEB7    mov         dword ptr [ebp-24],ecx
 0047EEBA    mov         dword ptr [ebp-20],ecx
 0047EEBD    mov         dword ptr [ebp-8],edx
 0047EEC0    mov         dword ptr [ebp-4],eax
 0047EEC3    xor         eax,eax
 0047EEC5    push        ebp
 0047EEC6    push        47F1C2
 0047EECB    push        dword ptr fs:[eax]
 0047EECE    mov         dword ptr fs:[eax],esp
 0047EED1    mov         eax,dword ptr [ebp-4]
 0047EED4    call        0047F29C
 0047EED9    xor         eax,eax
 0047EEDB    mov         dword ptr [ebp-0C],eax
 0047EEDE    mov         eax,[0055DAC8];gvar_0055DAC8:IReadWriteSync
 0047EEE3    mov         edx,dword ptr [eax]
 0047EEE5    call        dword ptr [edx+14]
 0047EEE8    xor         eax,eax
 0047EEEA    push        ebp
 0047EEEB    push        47F1A0
 0047EEF0    push        dword ptr fs:[eax]
 0047EEF3    mov         dword ptr fs:[eax],esp
 0047EEF6    xor         eax,eax
 0047EEF8    push        ebp
 0047EEF9    push        47F161
 0047EEFE    push        dword ptr fs:[eax]
 0047EF01    mov         dword ptr fs:[eax],esp
 0047EF04    lea         ecx,[ebp-10]
 0047EF07    lea         edx,[ebp-11]
 0047EF0A    mov         eax,dword ptr [ebp-4]
 0047EF0D    mov         ebx,dword ptr [eax]
 0047EF0F    call        dword ptr [ebx+24];TReader.sub_0047E5E4
 0047EF12    cmp         dword ptr [ebp-8],0
>0047EF16    jne         0047EF4D
 0047EF18    lea         edx,[ebp-20]
 0047EF1B    mov         eax,dword ptr [ebp-4]
 0047EF1E    call        TReader.ReadStr
 0047EF23    mov         eax,dword ptr [ebp-20]
 0047EF26    call        00477B38
 0047EF2B    xor         ecx,ecx
 0047EF2D    mov         dl,1
 0047EF2F    call        dword ptr [eax+2C]
 0047EF32    mov         dword ptr [ebp-0C],eax
 0047EF35    lea         edx,[ebp-24]
 0047EF38    mov         eax,dword ptr [ebp-4]
 0047EF3B    call        TReader.ReadStr
 0047EF40    mov         edx,dword ptr [ebp-24]
 0047EF43    mov         eax,dword ptr [ebp-0C]
 0047EF46    mov         ecx,dword ptr [eax]
 0047EF48    call        dword ptr [ecx+18]
>0047EF4B    jmp         0047EFA7
 0047EF4D    mov         eax,dword ptr [ebp-8]
 0047EF50    mov         dword ptr [ebp-0C],eax
 0047EF53    lea         edx,[ebp-28]
 0047EF56    mov         eax,dword ptr [ebp-4]
 0047EF59    call        TReader.ReadStr
 0047EF5E    mov         eax,dword ptr [ebp-0C]
 0047EF61    test        byte ptr [eax+1C],10
>0047EF65    je          0047EF74
 0047EF67    lea         edx,[ebp-2C]
 0047EF6A    mov         eax,dword ptr [ebp-4]
 0047EF6D    call        TReader.ReadStr
>0047EF72    jmp         0047EFA7
 0047EF74    mov         eax,dword ptr [ebp-0C]
 0047EF77    or          word ptr [eax+1C],1
 0047EF7C    mov         eax,dword ptr [ebp-0C]
 0047EF7F    or          word ptr [eax+1C],2
 0047EF84    push        ebp
 0047EF85    lea         edx,[ebp-34]
 0047EF88    mov         eax,dword ptr [ebp-4]
 0047EF8B    call        TReader.ReadStr
 0047EF90    mov         eax,dword ptr [ebp-34]
 0047EF93    lea         edx,[ebp-30]
 0047EF96    call        0047EE30
 0047EF9B    pop         ecx
 0047EF9C    mov         edx,dword ptr [ebp-30]
 0047EF9F    mov         eax,dword ptr [ebp-0C]
 0047EFA2    mov         ecx,dword ptr [eax]
 0047EFA4    call        dword ptr [ecx+18]
 0047EFA7    mov         eax,dword ptr [ebp-4]
 0047EFAA    mov         edx,dword ptr [ebp-0C]
 0047EFAD    mov         dword ptr [eax+18],edx;TReader.FRoot:TComponent
 0047EFB0    push        1
 0047EFB2    mov         eax,dword ptr [ebp-0C]
 0047EFB5    call        TObject.ClassType
 0047EFBA    mov         ecx,eax
 0047EFBC    mov         dl,1
 0047EFBE    mov         eax,[004765F8];TClassFinder
 0047EFC3    call        TClassFinder.Create;TClassFinder.Create
 0047EFC8    mov         edx,dword ptr [ebp-4]
 0047EFCB    mov         dword ptr [edx+74],eax;TReader.FFinder:TClassFinder
 0047EFCE    xor         eax,eax
 0047EFD0    push        ebp
 0047EFD1    push        47F106
 0047EFD6    push        dword ptr fs:[eax]
 0047EFD9    mov         dword ptr fs:[eax],esp
 0047EFDC    mov         eax,dword ptr [ebp-4]
 0047EFDF    mov         edx,dword ptr [ebp-0C]
 0047EFE2    mov         dword ptr [eax+1C],edx;TReader.FLookupRoot:TComponent
 0047EFE5    call        @GetTls
 0047EFEA    mov         eax,dword ptr [eax+210];{threadvar_528}
 0047EFF0    mov         dword ptr [ebp-18],eax
 0047EFF3    cmp         dword ptr [ebp-18],0
>0047EFF7    je          0047F004
 0047EFF9    mov         eax,dword ptr [ebp-4]
 0047EFFC    mov         edx,dword ptr [ebp-18]
 0047EFFF    mov         dword ptr [eax+34],edx;TReader.FLoaded:TList
>0047F002    jmp         0047F016
 0047F004    mov         dl,1
 0047F006    mov         eax,[004759C0];TList
 0047F00B    call        TObject.Create;TList.Create
 0047F010    mov         edx,dword ptr [ebp-4]
 0047F013    mov         dword ptr [edx+34],eax;TReader.FLoaded:TList
 0047F016    xor         eax,eax
 0047F018    push        ebp
 0047F019    push        47F0E6
 0047F01E    push        dword ptr fs:[eax]
 0047F021    mov         dword ptr fs:[eax],esp
 0047F024    mov         eax,dword ptr [ebp-4]
 0047F027    mov         edx,dword ptr [eax+18];TReader.FRoot:TComponent
 0047F02A    mov         eax,dword ptr [ebp-4]
 0047F02D    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 0047F030    call        00478890
 0047F035    test        eax,eax
>0047F037    jge         0047F04A
 0047F039    mov         eax,dword ptr [ebp-4]
 0047F03C    mov         edx,dword ptr [eax+18];TReader.FRoot:TComponent
 0047F03F    mov         eax,dword ptr [ebp-4]
 0047F042    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 0047F045    call        TList.Add
 0047F04A    mov         eax,dword ptr [ebp-4]
 0047F04D    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0047F050    mov         edx,dword ptr [ebp-4]
 0047F053    mov         dword ptr [edx+28],eax;TReader.FOwner:TComponent
 0047F056    mov         eax,dword ptr [ebp-4]
 0047F059    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0047F05C    or          word ptr [eax+1C],1;TComponent.FComponentState:TComponentState
 0047F061    mov         eax,dword ptr [ebp-4]
 0047F064    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0047F067    or          word ptr [eax+1C],2;TComponent.FComponentState:TComponentState
 0047F06C    mov         eax,dword ptr [ebp-4]
 0047F06F    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0047F072    mov         edx,dword ptr [ebp-4]
 0047F075    mov         ecx,dword ptr [eax]
 0047F077    call        dword ptr [ecx+14];TComponent.sub_004835E0
 0047F07A    mov         eax,dword ptr [ebp-4]
 0047F07D    mov         eax,dword ptr [eax+18];TReader.FRoot:TComponent
 0047F080    and         word ptr [eax+1C],0FFFFFFFD;TComponent.FComponentState:TComponentState
 0047F085    cmp         dword ptr [ebp-18],0
>0047F089    jne         0047F0BF
 0047F08B    mov         eax,dword ptr [ebp-4]
 0047F08E    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 0047F091    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0047F094    dec         eax
 0047F095    test        eax,eax
>0047F097    jl          0047F0BF
 0047F099    inc         eax
 0047F09A    mov         dword ptr [ebp-1C],eax
 0047F09D    mov         dword ptr [ebp-10],0
 0047F0A4    mov         eax,dword ptr [ebp-4]
 0047F0A7    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 0047F0AA    mov         edx,dword ptr [ebp-10]
 0047F0AD    call        TList.Get
 0047F0B2    mov         edx,dword ptr [eax]
 0047F0B4    call        dword ptr [edx+0C]
 0047F0B7    inc         dword ptr [ebp-10]
 0047F0BA    dec         dword ptr [ebp-1C]
>0047F0BD    jne         0047F0A4
 0047F0BF    xor         eax,eax
 0047F0C1    pop         edx
 0047F0C2    pop         ecx
 0047F0C3    pop         ecx
 0047F0C4    mov         dword ptr fs:[eax],edx
 0047F0C7    push        47F0ED
 0047F0CC    cmp         dword ptr [ebp-18],0
>0047F0D0    jne         0047F0DD
 0047F0D2    mov         eax,dword ptr [ebp-4]
 0047F0D5    mov         eax,dword ptr [eax+34];TReader.FLoaded:TList
 0047F0D8    call        TObject.Free
 0047F0DD    mov         eax,dword ptr [ebp-4]
 0047F0E0    xor         edx,edx
 0047F0E2    mov         dword ptr [eax+34],edx;TReader.FLoaded:TList
 0047F0E5    ret
>0047F0E6    jmp         @HandleFinally
>0047F0EB    jmp         0047F0CC
 0047F0ED    xor         eax,eax
 0047F0EF    pop         edx
 0047F0F0    pop         ecx
 0047F0F1    pop         ecx
 0047F0F2    mov         dword ptr fs:[eax],edx
 0047F0F5    push        47F10D
 0047F0FA    mov         eax,dword ptr [ebp-4]
 0047F0FD    mov         eax,dword ptr [eax+74];TReader.FFinder:TClassFinder
 0047F100    call        TObject.Free
 0047F105    ret
>0047F106    jmp         @HandleFinally
>0047F10B    jmp         0047F0FA
 0047F10D    xor         eax,eax
 0047F10F    push        ebp
 0047F110    push        47F132
 0047F115    push        dword ptr fs:[eax]
 0047F118    mov         dword ptr fs:[eax],esp
 0047F11B    call        0047CF30
 0047F120    xor         eax,eax
 0047F122    pop         edx
 0047F123    pop         ecx
 0047F124    pop         ecx
 0047F125    mov         dword ptr fs:[eax],edx
>0047F128    jmp         0047F157
 0047F12A    xor         eax,eax
 0047F12C    pop         edx
 0047F12D    pop         ecx
 0047F12E    pop         ecx
 0047F12F    mov         dword ptr fs:[eax],edx
>0047F132    jmp         @HandleAnyException
 0047F137    call        ExceptObject
 0047F13C    mov         edx,dword ptr [eax+4]
 0047F13F    mov         eax,dword ptr [ebp-4]
 0047F142    mov         ecx,dword ptr [eax]
 0047F144    call        dword ptr [ecx+10];TReader.sub_0047D4C0
 0047F147    test        al,al
>0047F149    jne         0047F150
 0047F14B    call        @RaiseAgain
 0047F150    call        @DoneExcept
>0047F155    jmp         0047F10D
 0047F157    xor         eax,eax
 0047F159    pop         edx
 0047F15A    pop         ecx
 0047F15B    pop         ecx
 0047F15C    mov         dword ptr fs:[eax],edx
>0047F15F    jmp         0047F188
>0047F161    jmp         @HandleAnyException
 0047F166    xor         edx,edx
 0047F168    mov         eax,dword ptr [ebp-8]
 0047F16B    call        RemoveFixupReferences
 0047F170    cmp         dword ptr [ebp-8],0
>0047F174    jne         0047F17E
 0047F176    mov         eax,dword ptr [ebp-0C]
 0047F179    call        TObject.Free
 0047F17E    call        @RaiseAgain
 0047F183    call        @DoneExcept
 0047F188    xor         eax,eax
 0047F18A    pop         edx
 0047F18B    pop         ecx
 0047F18C    pop         ecx
 0047F18D    mov         dword ptr fs:[eax],edx
 0047F190    push        47F1A7
 0047F195    mov         eax,[0055DAC8];gvar_0055DAC8:IReadWriteSync
 0047F19A    mov         edx,dword ptr [eax]
 0047F19C    call        dword ptr [edx+18]
 0047F19F    ret
>0047F1A0    jmp         @HandleFinally
>0047F1A5    jmp         0047F195
 0047F1A7    xor         eax,eax
 0047F1A9    pop         edx
 0047F1AA    pop         ecx
 0047F1AB    pop         ecx
 0047F1AC    mov         dword ptr fs:[eax],edx
 0047F1AF    push        47F1C9
 0047F1B4    lea         eax,[ebp-34]
 0047F1B7    mov         edx,6
 0047F1BC    call        @LStrArrayClr
 0047F1C1    ret
>0047F1C2    jmp         @HandleFinally
>0047F1C7    jmp         0047F1B4
 0047F1C9    mov         eax,dword ptr [ebp-0C]
 0047F1CC    pop         edi
 0047F1CD    pop         esi
 0047F1CE    pop         ebx
 0047F1CF    mov         esp,ebp
 0047F1D1    pop         ebp
 0047F1D2    ret
end;*}

//0047F1D4
{*function sub_0047F1D4(?:?; ?:PPropInfo):?;
begin
 0047F1D4    push        ebp
 0047F1D5    mov         ebp,esp
 0047F1D7    add         esp,0FFFFFFEC
 0047F1DA    push        ebx
 0047F1DB    push        esi
 0047F1DC    push        edi
 0047F1DD    xor         ecx,ecx
 0047F1DF    mov         dword ptr [ebp-14],ecx
 0047F1E2    mov         dword ptr [ebp-8],edx
 0047F1E5    mov         dword ptr [ebp-4],eax
 0047F1E8    xor         eax,eax
 0047F1EA    push        ebp
 0047F1EB    push        47F288
 0047F1F0    push        dword ptr fs:[eax]
 0047F1F3    mov         dword ptr fs:[eax],esp
 0047F1F6    xor         eax,eax
 0047F1F8    push        ebp
 0047F1F9    push        47F25B
 0047F1FE    push        dword ptr fs:[eax]
 0047F201    mov         dword ptr fs:[eax],esp
 0047F204    mov         eax,dword ptr [ebp-4]
 0047F207    call        TReader.ReadValue
 0047F20C    cmp         al,0B
>0047F20E    je          0047F215
 0047F210    call        0047D288
 0047F215    mov         eax,dword ptr [ebp-8]
 0047F218    call        GetTypeData
 0047F21D    mov         eax,dword ptr [eax+1]
 0047F220    mov         eax,dword ptr [eax]
 0047F222    mov         dword ptr [ebp-10],eax
 0047F225    xor         eax,eax
 0047F227    mov         dword ptr [ebp-0C],eax
 0047F22A    lea         edx,[ebp-14]
 0047F22D    mov         eax,dword ptr [ebp-4]
 0047F230    call        TReader.ReadStr
 0047F235    cmp         dword ptr [ebp-14],0
>0047F239    je          0047F251
 0047F23B    mov         edx,dword ptr [ebp-14]
 0047F23E    mov         eax,dword ptr [ebp-10]
 0047F241    call        0047D2CC
 0047F246    cmp         eax,1F
>0047F249    ja          0047F22A
 0047F24B    bts         dword ptr [ebp-0C],eax
>0047F24F    jmp         0047F22A
 0047F251    xor         eax,eax
 0047F253    pop         edx
 0047F254    pop         ecx
 0047F255    pop         ecx
 0047F256    mov         dword ptr fs:[eax],edx
>0047F259    jmp         0047F272
>0047F25B    jmp         @HandleAnyException
 0047F260    mov         eax,dword ptr [ebp-4]
 0047F263    call        TReader.SkipSetBody
 0047F268    call        @RaiseAgain
 0047F26D    call        @DoneExcept
 0047F272    xor         eax,eax
 0047F274    pop         edx
 0047F275    pop         ecx
 0047F276    pop         ecx
 0047F277    mov         dword ptr fs:[eax],edx
 0047F27A    push        47F28F
 0047F27F    lea         eax,[ebp-14]
 0047F282    call        @LStrClr
 0047F287    ret
>0047F288    jmp         @HandleFinally
>0047F28D    jmp         0047F27F
 0047F28F    mov         eax,dword ptr [ebp-0C]
 0047F292    pop         edi
 0047F293    pop         esi
 0047F294    pop         ebx
 0047F295    mov         esp,ebp
 0047F297    pop         ebp
 0047F298    ret
end;*}

//0047F29C
procedure sub_0047F29C(?:TReader);
begin
{*
 0047F29C    push        ebp
 0047F29D    mov         ebp,esp
 0047F29F    add         esp,0FFFFFFF8
 0047F2A2    mov         dword ptr [ebp-4],eax
 0047F2A5    lea         edx,[ebp-8]
 0047F2A8    mov         ecx,4
 0047F2AD    mov         eax,dword ptr [ebp-4]
 0047F2B0    call        TReader.Read
 0047F2B5    mov         eax,dword ptr [ebp-8]
 0047F2B8    cmp         eax,dword ptr ds:[540CF8];0x30465054 gvar_00540CF8
>0047F2BE    je          0047F2CA
 0047F2C0    mov         eax,[0055B364];^SInvalidImage:TResStringRec
 0047F2C5    call        ReadError
 0047F2CA    pop         ecx
 0047F2CB    pop         ecx
 0047F2CC    pop         ebp
 0047F2CD    ret
*}
end;

//0047F2D0
function TReader.ReadStr:AnsiString;
begin
{*
 0047F2D0    push        ebp
 0047F2D1    mov         ebp,esp
 0047F2D3    add         esp,0FFFFFFF4
 0047F2D6    mov         dword ptr [ebp-8],edx
 0047F2D9    mov         dword ptr [ebp-4],eax
 0047F2DC    lea         edx,[ebp-9]
 0047F2DF    mov         ecx,1
 0047F2E4    mov         eax,dword ptr [ebp-4]
 0047F2E7    call        TReader.Read
 0047F2EC    xor         ecx,ecx
 0047F2EE    mov         cl,byte ptr [ebp-9]
 0047F2F1    mov         eax,dword ptr [ebp-8]
 0047F2F4    xor         edx,edx
 0047F2F6    call        @LStrFromPCharLen
 0047F2FB    mov         eax,dword ptr [ebp-8]
 0047F2FE    call        00404C34
 0047F303    mov         edx,eax
 0047F305    xor         ecx,ecx
 0047F307    mov         cl,byte ptr [ebp-9]
 0047F30A    mov         eax,dword ptr [ebp-4]
 0047F30D    call        TReader.Read
 0047F312    mov         esp,ebp
 0047F314    pop         ebp
 0047F315    ret
*}
end;

//0047F318
function TReader.ReadString:AnsiString;
begin
{*
 0047F318    push        ebp
 0047F319    mov         ebp,esp
 0047F31B    add         esp,0FFFFFFF0
 0047F31E    xor         ecx,ecx
 0047F320    mov         dword ptr [ebp-10],ecx
 0047F323    mov         dword ptr [ebp-8],edx
 0047F326    mov         dword ptr [ebp-4],eax
 0047F329    xor         eax,eax
 0047F32B    push        ebp
 0047F32C    push        47F3D0
 0047F331    push        dword ptr fs:[eax]
 0047F334    mov         dword ptr fs:[eax],esp
 0047F337    mov         eax,dword ptr [ebp-4]
 0047F33A    call        TReader.NextValue
 0047F33F    sub         al,12
>0047F341    je          0047F347
 0047F343    sub         al,2
>0047F345    jne         0047F35F
 0047F347    lea         edx,[ebp-10]
 0047F34A    mov         eax,dword ptr [ebp-4]
 0047F34D    call        0047F3DC
 0047F352    mov         edx,dword ptr [ebp-10]
 0047F355    mov         eax,dword ptr [ebp-8]
 0047F358    call        @LStrFromWStr
>0047F35D    jmp         0047F3BA
 0047F35F    xor         eax,eax
 0047F361    mov         dword ptr [ebp-0C],eax
 0047F364    mov         eax,dword ptr [ebp-4]
 0047F367    call        TReader.ReadValue
 0047F36C    sub         al,6
>0047F36E    je          0047F376
 0047F370    sub         al,6
>0047F372    je          0047F388
>0047F374    jmp         0047F39A
 0047F376    lea         edx,[ebp-0C]
 0047F379    mov         ecx,1
 0047F37E    mov         eax,dword ptr [ebp-4]
 0047F381    call        TReader.Read
>0047F386    jmp         0047F39F
 0047F388    lea         edx,[ebp-0C]
 0047F38B    mov         ecx,4
 0047F390    mov         eax,dword ptr [ebp-4]
 0047F393    call        TReader.Read
>0047F398    jmp         0047F39F
 0047F39A    call        0047D288
 0047F39F    mov         eax,dword ptr [ebp-8]
 0047F3A2    mov         edx,dword ptr [ebp-0C]
 0047F3A5    call        @LStrSetLength
 0047F3AA    mov         edx,dword ptr [ebp-8]
 0047F3AD    mov         edx,dword ptr [edx]
 0047F3AF    mov         ecx,dword ptr [ebp-0C]
 0047F3B2    mov         eax,dword ptr [ebp-4]
 0047F3B5    call        TReader.Read
 0047F3BA    xor         eax,eax
 0047F3BC    pop         edx
 0047F3BD    pop         ecx
 0047F3BE    pop         ecx
 0047F3BF    mov         dword ptr fs:[eax],edx
 0047F3C2    push        47F3D7
 0047F3C7    lea         eax,[ebp-10]
 0047F3CA    call        @WStrClr
 0047F3CF    ret
>0047F3D0    jmp         @HandleFinally
>0047F3D5    jmp         0047F3C7
 0047F3D7    mov         esp,ebp
 0047F3D9    pop         ebp
 0047F3DA    ret
*}
end;

//0047F3DC
{*procedure sub_0047F3DC(?:?; ?:?);
begin
 0047F3DC    push        ebp
 0047F3DD    mov         ebp,esp
 0047F3DF    add         esp,0FFFFFFEC
 0047F3E2    xor         ecx,ecx
 0047F3E4    mov         dword ptr [ebp-14],ecx
 0047F3E7    mov         dword ptr [ebp-10],ecx
 0047F3EA    mov         dword ptr [ebp-8],edx
 0047F3ED    mov         dword ptr [ebp-4],eax
 0047F3F0    xor         eax,eax
 0047F3F2    push        ebp
 0047F3F3    push        47F4C8
 0047F3F8    push        dword ptr fs:[eax]
 0047F3FB    mov         dword ptr fs:[eax],esp
 0047F3FE    mov         eax,dword ptr [ebp-4]
 0047F401    call        TReader.NextValue
 0047F406    sub         al,6
>0047F408    je          0047F40E
 0047F40A    sub         al,6
>0047F40C    jne         0047F429
 0047F40E    lea         edx,[ebp-14]
 0047F411    mov         eax,dword ptr [ebp-4]
 0047F414    call        TReader.ReadString
 0047F419    mov         edx,dword ptr [ebp-14]
 0047F41C    mov         eax,dword ptr [ebp-8]
 0047F41F    call        @WStrFromLStr
>0047F424    jmp         0047F4AA
 0047F429    xor         eax,eax
 0047F42B    mov         dword ptr [ebp-0C],eax
 0047F42E    mov         eax,dword ptr [ebp-4]
 0047F431    call        TReader.ReadValue
 0047F436    sub         al,12
>0047F438    je          0047F440
 0047F43A    sub         al,2
>0047F43C    je          0047F46F
>0047F43E    jmp         0047F4A5
 0047F440    lea         edx,[ebp-0C]
 0047F443    mov         ecx,4
 0047F448    mov         eax,dword ptr [ebp-4]
 0047F44B    call        TReader.Read
 0047F450    mov         eax,dword ptr [ebp-8]
 0047F453    mov         edx,dword ptr [ebp-0C]
 0047F456    call        @WStrSetLength
 0047F45B    mov         ecx,dword ptr [ebp-0C]
 0047F45E    add         ecx,ecx
 0047F460    mov         edx,dword ptr [ebp-8]
 0047F463    mov         edx,dword ptr [edx]
 0047F465    mov         eax,dword ptr [ebp-4]
 0047F468    call        TReader.Read
>0047F46D    jmp         0047F4AA
 0047F46F    lea         edx,[ebp-0C]
 0047F472    mov         ecx,4
 0047F477    mov         eax,dword ptr [ebp-4]
 0047F47A    call        TReader.Read
 0047F47F    lea         eax,[ebp-10]
 0047F482    mov         edx,dword ptr [ebp-0C]
 0047F485    call        @LStrSetLength
 0047F48A    mov         edx,dword ptr [ebp-10]
 0047F48D    mov         ecx,dword ptr [ebp-0C]
 0047F490    mov         eax,dword ptr [ebp-4]
 0047F493    call        TReader.Read
 0047F498    mov         edx,dword ptr [ebp-8]
 0047F49B    mov         eax,dword ptr [ebp-10]
 0047F49E    call        00406A5C
>0047F4A3    jmp         0047F4AA
 0047F4A5    call        0047D288
 0047F4AA    xor         eax,eax
 0047F4AC    pop         edx
 0047F4AD    pop         ecx
 0047F4AE    pop         ecx
 0047F4AF    mov         dword ptr fs:[eax],edx
 0047F4B2    push        47F4CF
 0047F4B7    lea         eax,[ebp-14]
 0047F4BA    call        @LStrClr
 0047F4BF    lea         eax,[ebp-10]
 0047F4C2    call        @LStrClr
 0047F4C7    ret
>0047F4C8    jmp         @HandleFinally
>0047F4CD    jmp         0047F4B7
 0047F4CF    mov         esp,ebp
 0047F4D1    pop         ebp
 0047F4D2    ret
end;*}

//0047F4D4
function TReader.ReadValue:TValueType;
begin
{*
 0047F4D4    push        ebp
 0047F4D5    mov         ebp,esp
 0047F4D7    add         esp,0FFFFFFF8
 0047F4DA    mov         dword ptr [ebp-4],eax
 0047F4DD    lea         edx,[ebp-5]
 0047F4E0    mov         ecx,1
 0047F4E5    mov         eax,dword ptr [ebp-4]
 0047F4E8    call        TReader.Read
 0047F4ED    mov         al,byte ptr [ebp-5]
 0047F4F0    pop         ecx
 0047F4F1    pop         ecx
 0047F4F2    pop         ebp
 0047F4F3    ret
*}
end;

//0047F4F4
procedure TReader.SkipSetBody;
begin
{*
 0047F4F4    push        ebp
 0047F4F5    mov         ebp,esp
 0047F4F7    add         esp,0FFFFFFF8
 0047F4FA    xor         edx,edx
 0047F4FC    mov         dword ptr [ebp-8],edx
 0047F4FF    mov         dword ptr [ebp-4],eax
 0047F502    xor         eax,eax
 0047F504    push        ebp
 0047F505    push        47F537
 0047F50A    push        dword ptr fs:[eax]
 0047F50D    mov         dword ptr fs:[eax],esp
 0047F510    lea         edx,[ebp-8]
 0047F513    mov         eax,dword ptr [ebp-4]
 0047F516    call        TReader.ReadStr
 0047F51B    cmp         dword ptr [ebp-8],0
>0047F51F    jne         0047F510
 0047F521    xor         eax,eax
 0047F523    pop         edx
 0047F524    pop         ecx
 0047F525    pop         ecx
 0047F526    mov         dword ptr fs:[eax],edx
 0047F529    push        47F53E
 0047F52E    lea         eax,[ebp-8]
 0047F531    call        @LStrClr
 0047F536    ret
>0047F537    jmp         @HandleFinally
>0047F53C    jmp         0047F52E
 0047F53E    pop         ecx
 0047F53F    pop         ecx
 0047F540    pop         ebp
 0047F541    ret
*}
end;

//0047F544
procedure SkipList;
begin
{*
 0047F544    push        ebp
 0047F545    mov         ebp,esp
>0047F547    jmp         0047F554
 0047F549    mov         eax,dword ptr [ebp+8]
 0047F54C    mov         eax,dword ptr [eax-4]
 0047F54F    call        TReader.SkipValue
 0047F554    mov         eax,dword ptr [ebp+8]
 0047F557    mov         eax,dword ptr [eax-4]
 0047F55A    call        TReader.EndOfList
 0047F55F    test        al,al
>0047F561    je          0047F549
 0047F563    mov         eax,dword ptr [ebp+8]
 0047F566    mov         eax,dword ptr [eax-4]
 0047F569    call        TReader.ReadListEnd
 0047F56E    pop         ebp
 0047F56F    ret
*}
end;

//0047F570
procedure SkipBinary(BytesPerUnit:Integer);
begin
{*
 0047F570    push        ebp
 0047F571    mov         ebp,esp
 0047F573    add         esp,0FFFFFFF8
 0047F576    mov         dword ptr [ebp-4],eax
 0047F579    lea         edx,[ebp-8]
 0047F57C    mov         eax,dword ptr [ebp+8]
 0047F57F    mov         eax,dword ptr [eax-4]
 0047F582    mov         ecx,4
 0047F587    call        TReader.Read
 0047F58C    mov         edx,dword ptr [ebp-8]
 0047F58F    imul        edx,dword ptr [ebp-4]
 0047F593    mov         eax,dword ptr [ebp+8]
 0047F596    mov         eax,dword ptr [eax-4]
 0047F599    call        TReader.SkipBytes
 0047F59E    pop         ecx
 0047F59F    pop         ecx
 0047F5A0    pop         ebp
 0047F5A1    ret
*}
end;

//0047F5A4
procedure SkipCollection;
begin
{*
 0047F5A4    push        ebp
 0047F5A5    mov         ebp,esp
>0047F5A7    jmp         0047F5FC
 0047F5A9    mov         eax,dword ptr [ebp+8]
 0047F5AC    mov         eax,dword ptr [eax-4]
 0047F5AF    call        TReader.NextValue
 0047F5B4    add         al,0FE
 0047F5B6    sub         al,3
>0047F5B8    jae         0047F5C5
 0047F5BA    mov         eax,dword ptr [ebp+8]
 0047F5BD    mov         eax,dword ptr [eax-4]
 0047F5C0    call        TReader.SkipValue
 0047F5C5    mov         eax,dword ptr [ebp+8]
 0047F5C8    mov         eax,dword ptr [eax-4]
 0047F5CB    mov         edx,1
 0047F5D0    call        TReader.SkipBytes
>0047F5D5    jmp         0047F5E2
 0047F5D7    mov         eax,dword ptr [ebp+8]
 0047F5DA    mov         eax,dword ptr [eax-4]
 0047F5DD    call        0047F7B4
 0047F5E2    mov         eax,dword ptr [ebp+8]
 0047F5E5    mov         eax,dword ptr [eax-4]
 0047F5E8    call        TReader.EndOfList
 0047F5ED    test        al,al
>0047F5EF    je          0047F5D7
 0047F5F1    mov         eax,dword ptr [ebp+8]
 0047F5F4    mov         eax,dword ptr [eax-4]
 0047F5F7    call        TReader.ReadListEnd
 0047F5FC    mov         eax,dword ptr [ebp+8]
 0047F5FF    mov         eax,dword ptr [eax-4]
 0047F602    call        TReader.EndOfList
 0047F607    test        al,al
>0047F609    je          0047F5A9
 0047F60B    mov         eax,dword ptr [ebp+8]
 0047F60E    mov         eax,dword ptr [eax-4]
 0047F611    call        TReader.ReadListEnd
 0047F616    pop         ebp
 0047F617    ret
*}
end;

//0047F618
procedure TReader.SkipValue;
begin
{*
 0047F618    push        ebp
 0047F619    mov         ebp,esp
 0047F61B    add         esp,0FFFFFFF8
 0047F61E    xor         edx,edx
 0047F620    mov         dword ptr [ebp-8],edx
 0047F623    mov         dword ptr [ebp-4],eax
 0047F626    xor         eax,eax
 0047F628    push        ebp
 0047F629    push        47F7A7
 0047F62E    push        dword ptr fs:[eax]
 0047F631    mov         dword ptr fs:[eax],esp
 0047F634    mov         eax,dword ptr [ebp-4]
 0047F637    call        TReader.ReadValue
 0047F63C    and         eax,7F
 0047F63F    cmp         eax,14
>0047F642    ja          0047F791
 0047F648    jmp         dword ptr [eax*4+47F64F]
 0047F648    dd          0047F791
 0047F648    dd          0047F6A8
 0047F648    dd          0047F6B4
 0047F648    dd          0047F6C6
 0047F648    dd          0047F6D8
 0047F648    dd          0047F6EA
 0047F648    dd          0047F6FC
 0047F648    dd          0047F6FC
 0047F648    dd          0047F791
 0047F648    dd          0047F791
 0047F648    dd          0047F70C
 0047F648    dd          0047F71A
 0047F648    dd          0047F724
 0047F648    dd          0047F791
 0047F648    dd          0047F732
 0047F648    dd          0047F73B
 0047F648    dd          0047F74A
 0047F648    dd          0047F759
 0047F648    dd          0047F768
 0047F648    dd          0047F776
 0047F648    dd          0047F785
>0047F6A3    jmp         0047F791
 0047F6A8    push        ebp
 0047F6A9    call        SkipList
 0047F6AE    pop         ecx
>0047F6AF    jmp         0047F791
 0047F6B4    mov         edx,1
 0047F6B9    mov         eax,dword ptr [ebp-4]
 0047F6BC    call        TReader.SkipBytes
>0047F6C1    jmp         0047F791
 0047F6C6    mov         edx,2
 0047F6CB    mov         eax,dword ptr [ebp-4]
 0047F6CE    call        TReader.SkipBytes
>0047F6D3    jmp         0047F791
 0047F6D8    mov         edx,4
 0047F6DD    mov         eax,dword ptr [ebp-4]
 0047F6E0    call        TReader.SkipBytes
>0047F6E5    jmp         0047F791
 0047F6EA    mov         edx,0A
 0047F6EF    mov         eax,dword ptr [ebp-4]
 0047F6F2    call        TReader.SkipBytes
>0047F6F7    jmp         0047F791
 0047F6FC    lea         edx,[ebp-8]
 0047F6FF    mov         eax,dword ptr [ebp-4]
 0047F702    call        TReader.ReadStr
>0047F707    jmp         0047F791
 0047F70C    push        ebp
 0047F70D    mov         eax,1
 0047F712    call        SkipBinary
 0047F717    pop         ecx
>0047F718    jmp         0047F791
 0047F71A    mov         eax,dword ptr [ebp-4]
 0047F71D    call        TReader.SkipSetBody
>0047F722    jmp         0047F791
 0047F724    push        ebp
 0047F725    mov         eax,1
 0047F72A    call        SkipBinary
 0047F72F    pop         ecx
>0047F730    jmp         0047F791
 0047F732    push        ebp
 0047F733    call        SkipCollection
 0047F738    pop         ecx
>0047F739    jmp         0047F791
 0047F73B    mov         edx,4
 0047F740    mov         eax,dword ptr [ebp-4]
 0047F743    call        TReader.SkipBytes
>0047F748    jmp         0047F791
 0047F74A    mov         edx,8
 0047F74F    mov         eax,dword ptr [ebp-4]
 0047F752    call        TReader.SkipBytes
>0047F757    jmp         0047F791
 0047F759    mov         edx,8
 0047F75E    mov         eax,dword ptr [ebp-4]
 0047F761    call        TReader.SkipBytes
>0047F766    jmp         0047F791
 0047F768    push        ebp
 0047F769    mov         eax,2
 0047F76E    call        SkipBinary
 0047F773    pop         ecx
>0047F774    jmp         0047F791
 0047F776    mov         edx,8
 0047F77B    mov         eax,dword ptr [ebp-4]
 0047F77E    call        TReader.SkipBytes
>0047F783    jmp         0047F791
 0047F785    push        ebp
 0047F786    mov         eax,1
 0047F78B    call        SkipBinary
 0047F790    pop         ecx
 0047F791    xor         eax,eax
 0047F793    pop         edx
 0047F794    pop         ecx
 0047F795    pop         ecx
 0047F796    mov         dword ptr fs:[eax],edx
 0047F799    push        47F7AE
 0047F79E    lea         eax,[ebp-8]
 0047F7A1    call        @LStrClr
 0047F7A6    ret
>0047F7A7    jmp         @HandleFinally
>0047F7AC    jmp         0047F79E
 0047F7AE    pop         ecx
 0047F7AF    pop         ecx
 0047F7B0    pop         ebp
 0047F7B1    ret
*}
end;

//0047F7B4
{*procedure sub_0047F7B4(?:?);
begin
 0047F7B4    push        ebp
 0047F7B5    mov         ebp,esp
 0047F7B7    add         esp,0FFFFFFF8
 0047F7BA    xor         edx,edx
 0047F7BC    mov         dword ptr [ebp-8],edx
 0047F7BF    mov         dword ptr [ebp-4],eax
 0047F7C2    xor         eax,eax
 0047F7C4    push        ebp
 0047F7C5    push        47F7F9
 0047F7CA    push        dword ptr fs:[eax]
 0047F7CD    mov         dword ptr fs:[eax],esp
 0047F7D0    lea         edx,[ebp-8]
 0047F7D3    mov         eax,dword ptr [ebp-4]
 0047F7D6    call        TReader.ReadStr
 0047F7DB    mov         eax,dword ptr [ebp-4]
 0047F7DE    call        TReader.SkipValue
 0047F7E3    xor         eax,eax
 0047F7E5    pop         edx
 0047F7E6    pop         ecx
 0047F7E7    pop         ecx
 0047F7E8    mov         dword ptr fs:[eax],edx
 0047F7EB    push        47F800
 0047F7F0    lea         eax,[ebp-8]
 0047F7F3    call        @LStrClr
 0047F7F8    ret
>0047F7F9    jmp         @HandleFinally
>0047F7FE    jmp         0047F7F0
 0047F800    pop         ecx
 0047F801    pop         ecx
 0047F802    pop         ebp
 0047F803    ret
end;*}

//0047F804
{*procedure sub_0047F804(?:?; ?:?);
begin
 0047F804    push        ebp
 0047F805    mov         ebp,esp
 0047F807    add         esp,0FFFFFFEC
 0047F80A    push        ebx
 0047F80B    xor         ecx,ecx
 0047F80D    mov         dword ptr [ebp-14],ecx
 0047F810    mov         dword ptr [ebp-10],ecx
 0047F813    mov         byte ptr [ebp-5],dl
 0047F816    mov         dword ptr [ebp-4],eax
 0047F819    xor         eax,eax
 0047F81B    push        ebp
 0047F81C    push        47F8AA
 0047F821    push        dword ptr fs:[eax]
 0047F824    mov         dword ptr fs:[eax],esp
 0047F827    cmp         byte ptr [ebp-5],0
>0047F82B    je          0047F85B
 0047F82D    lea         ecx,[ebp-0C]
 0047F830    lea         edx,[ebp-6]
 0047F833    mov         eax,dword ptr [ebp-4]
 0047F836    mov         ebx,dword ptr [eax]
 0047F838    call        dword ptr [ebx+24]
 0047F83B    lea         edx,[ebp-10]
 0047F83E    mov         eax,dword ptr [ebp-4]
 0047F841    call        TReader.ReadStr
 0047F846    lea         edx,[ebp-14]
 0047F849    mov         eax,dword ptr [ebp-4]
 0047F84C    call        TReader.ReadStr
>0047F851    jmp         0047F85B
 0047F853    mov         eax,dword ptr [ebp-4]
 0047F856    call        0047F7B4
 0047F85B    mov         eax,dword ptr [ebp-4]
 0047F85E    call        TReader.EndOfList
 0047F863    test        al,al
>0047F865    je          0047F853
 0047F867    mov         eax,dword ptr [ebp-4]
 0047F86A    call        TReader.ReadListEnd
>0047F86F    jmp         0047F87B
 0047F871    mov         dl,1
 0047F873    mov         eax,dword ptr [ebp-4]
 0047F876    call        0047F804
 0047F87B    mov         eax,dword ptr [ebp-4]
 0047F87E    call        TReader.EndOfList
 0047F883    test        al,al
>0047F885    je          0047F871
 0047F887    mov         eax,dword ptr [ebp-4]
 0047F88A    call        TReader.ReadListEnd
 0047F88F    xor         eax,eax
 0047F891    pop         edx
 0047F892    pop         ecx
 0047F893    pop         ecx
 0047F894    mov         dword ptr fs:[eax],edx
 0047F897    push        47F8B1
 0047F89C    lea         eax,[ebp-14]
 0047F89F    mov         edx,2
 0047F8A4    call        @LStrArrayClr
 0047F8A9    ret
>0047F8AA    jmp         @HandleFinally
>0047F8AF    jmp         0047F89C
 0047F8B1    pop         ebx
 0047F8B2    mov         esp,ebp
 0047F8B4    pop         ebp
 0047F8B5    ret
end;*}

//0047F8B8
{*function sub_0047F8B8(?:?; ?:?):?;
begin
 0047F8B8    push        ebp
 0047F8B9    mov         ebp,esp
 0047F8BB    add         esp,0FFFFFFE4
 0047F8BE    push        ebx
 0047F8BF    xor         ebx,ebx
 0047F8C1    mov         dword ptr [ebp-14],ebx
 0047F8C4    mov         dword ptr [ebp-0C],ecx
 0047F8C7    mov         dword ptr [ebp-8],edx
 0047F8CA    mov         dword ptr [ebp-4],eax
 0047F8CD    xor         eax,eax
 0047F8CF    push        ebp
 0047F8D0    push        47F96F
 0047F8D5    push        dword ptr fs:[eax]
 0047F8D8    mov         dword ptr fs:[eax],esp
 0047F8DB    lea         eax,[ebp-14]
 0047F8DE    mov         edx,dword ptr [ebp-8]
 0047F8E1    call        @LStrLAsg
 0047F8E6    xor         eax,eax
 0047F8E8    mov         dword ptr [ebp-10],eax
 0047F8EB    mov         eax,dword ptr [ebp-4]
 0047F8EE    cmp         dword ptr [eax+1C],0;TReader.FLookupRoot:TComponent
>0047F8F2    je          0047F905
 0047F8F4    mov         edx,dword ptr [ebp-14]
 0047F8F7    mov         eax,dword ptr [ebp-4]
 0047F8FA    mov         eax,dword ptr [eax+1C];TReader.FLookupRoot:TComponent
 0047F8FD    call        004836E0
 0047F902    mov         dword ptr [ebp-10],eax
 0047F905    cmp         dword ptr [ebp-10],0
>0047F909    jne         0047F959
 0047F90B    mov         eax,dword ptr [ebp-4]
 0047F90E    cmp         word ptr [eax+52],0;TReader.?f52:word
>0047F913    je          0047F92C
 0047F915    mov         eax,dword ptr [ebp-0C]
 0047F918    push        eax
 0047F919    lea         eax,[ebp-10]
 0047F91C    push        eax
 0047F91D    mov         ebx,dword ptr [ebp-4]
 0047F920    mov         ecx,dword ptr [ebp-14]
 0047F923    mov         edx,dword ptr [ebp-4]
 0047F926    mov         eax,dword ptr [ebx+54];TReader.?f54:dword
 0047F929    call        dword ptr [ebx+50];TReader.FOnAncestorNotFound
 0047F92C    cmp         dword ptr [ebp-10],0
>0047F930    jne         0047F959
 0047F932    mov         eax,dword ptr [ebp-14]
 0047F935    mov         dword ptr [ebp-1C],eax
 0047F938    mov         byte ptr [ebp-18],0B
 0047F93C    lea         eax,[ebp-1C]
 0047F93F    push        eax
 0047F940    push        0
 0047F942    mov         ecx,dword ptr ds:[55B2A8];^SAncestorNotFound:TResStringRec
 0047F948    mov         dl,1
 0047F94A    mov         eax,[00475630];EReadError
 0047F94F    call        Exception.CreateResFmt;EReadError.Create
 0047F954    call        @RaiseExcept
 0047F959    xor         eax,eax
 0047F95B    pop         edx
 0047F95C    pop         ecx
 0047F95D    pop         ecx
 0047F95E    mov         dword ptr fs:[eax],edx
 0047F961    push        47F976
 0047F966    lea         eax,[ebp-14]
 0047F969    call        @LStrClr
 0047F96E    ret
>0047F96F    jmp         @HandleFinally
>0047F974    jmp         0047F966
 0047F976    mov         eax,dword ptr [ebp-10]
 0047F979    pop         ebx
 0047F97A    mov         esp,ebp
 0047F97C    pop         ebp
 0047F97D    ret
end;*}

//0047F980
{*procedure sub_0047F980(?:?);
begin
 0047F980    push        ebp
 0047F981    mov         ebp,esp
 0047F983    add         esp,0FFFFFFF8
 0047F986    push        ebx
 0047F987    mov         dword ptr [ebp-8],edx
 0047F98A    mov         dword ptr [ebp-4],eax
 0047F98D    mov         eax,dword ptr [ebp-4]
 0047F990    cmp         word ptr [eax+4A],0;TReader.?f4A:word
>0047F995    je          0047F9A6
 0047F997    mov         ecx,dword ptr [ebp-8]
 0047F99A    mov         ebx,dword ptr [ebp-4]
 0047F99D    mov         edx,dword ptr [ebp-4]
 0047F9A0    mov         eax,dword ptr [ebx+4C];TReader.?f4C:dword
 0047F9A3    call        dword ptr [ebx+48];TReader.FOnReferenceName
 0047F9A6    pop         ebx
 0047F9A7    pop         ecx
 0047F9A8    pop         ecx
 0047F9A9    pop         ebp
 0047F9AA    ret
end;*}

//0047F9AC
{*procedure sub_0047F9AC(?:?; ?:?);
begin
 0047F9AC    push        ebp
 0047F9AD    mov         ebp,esp
 0047F9AF    add         esp,0FFFFFFF4
 0047F9B2    push        ebx
 0047F9B3    mov         dword ptr [ebp-0C],ecx
 0047F9B6    mov         dword ptr [ebp-8],edx
 0047F9B9    mov         dword ptr [ebp-4],eax
 0047F9BC    mov         eax,dword ptr [ebp-4]
 0047F9BF    cmp         word ptr [eax+42],0;TReader.?f42:word
>0047F9C4    je          0047F9D9
 0047F9C6    mov         eax,dword ptr [ebp-0C]
 0047F9C9    push        eax
 0047F9CA    mov         ebx,dword ptr [ebp-4]
 0047F9CD    mov         ecx,dword ptr [ebp-8]
 0047F9D0    mov         edx,dword ptr [ebp-4]
 0047F9D3    mov         eax,dword ptr [ebx+44];TReader.?f44:dword
 0047F9D6    call        dword ptr [ebx+40];TReader.FOnSetName
 0047F9D9    mov         edx,dword ptr [ebp-0C]
 0047F9DC    mov         edx,dword ptr [edx]
 0047F9DE    mov         eax,dword ptr [ebp-8]
 0047F9E1    mov         ecx,dword ptr [eax]
 0047F9E3    call        dword ptr [ecx+18]
 0047F9E6    pop         ebx
 0047F9E7    mov         esp,ebp
 0047F9E9    pop         ebp
 0047F9EA    ret
end;*}

//0047F9EC
{*function sub_0047F9EC(?:?; ?:?):?;
begin
 0047F9EC    push        ebp
 0047F9ED    mov         ebp,esp
 0047F9EF    add         esp,0FFFFFFF4
 0047F9F2    push        ebx
 0047F9F3    mov         dword ptr [ebp-8],edx
 0047F9F6    mov         dword ptr [ebp-4],eax
 0047F9F9    mov         ecx,dword ptr [ebp-8]
 0047F9FC    mov         eax,dword ptr [ebp-4]
 0047F9FF    mov         edx,dword ptr [eax+18]
 0047FA02    mov         eax,dword ptr [ebp-4]
 0047FA05    call        0047D7D0
 0047FA0A    mov         dword ptr [ebp-0C],eax
 0047FA0D    cmp         dword ptr [ebp-0C],0
>0047FA11    jne         0047FA3E
 0047FA13    mov         eax,dword ptr [ebp-4]
 0047FA16    cmp         dword ptr [eax+1C],0
>0047FA1A    je          0047FA3E
 0047FA1C    mov         eax,dword ptr [ebp-4]
 0047FA1F    mov         eax,dword ptr [eax+1C]
 0047FA22    mov         edx,dword ptr [ebp-4]
 0047FA25    cmp         eax,dword ptr [edx+18]
>0047FA28    je          0047FA3E
 0047FA2A    mov         ecx,dword ptr [ebp-8]
 0047FA2D    mov         eax,dword ptr [ebp-4]
 0047FA30    mov         edx,dword ptr [eax+1C]
 0047FA33    mov         eax,dword ptr [ebp-4]
 0047FA36    call        0047D7D0
 0047FA3B    mov         dword ptr [ebp-0C],eax
 0047FA3E    mov         eax,dword ptr [ebp-4]
 0047FA41    cmp         word ptr [eax+62],0
>0047FA46    je          0047FA5B
 0047FA48    lea         eax,[ebp-0C]
 0047FA4B    push        eax
 0047FA4C    mov         ebx,dword ptr [ebp-4]
 0047FA4F    mov         ecx,dword ptr [ebp-8]
 0047FA52    mov         edx,dword ptr [ebp-4]
 0047FA55    mov         eax,dword ptr [ebx+64]
 0047FA58    call        dword ptr [ebx+60]
 0047FA5B    cmp         dword ptr [ebp-0C],0
>0047FA5F    je          0047FA73
 0047FA61    mov         edx,dword ptr ds:[47698C];TComponent
 0047FA67    mov         eax,dword ptr [ebp-0C]
 0047FA6A    call        TObject.InheritsFrom
 0047FA6F    test        al,al
>0047FA71    jne         0047FA7B
 0047FA73    mov         eax,dword ptr [ebp-8]
 0047FA76    call        00477A70
 0047FA7B    mov         eax,dword ptr [ebp-0C]
 0047FA7E    pop         ebx
 0047FA7F    mov         esp,ebp
 0047FA81    pop         ebp
 0047FA82    ret
end;*}

//0047FA84
procedure TReader.SkipBytes(Count:Integer);
begin
{*
 0047FA84    push        ebp
 0047FA85    mov         ebp,esp
 0047FA87    add         esp,0FFFFFEF8
 0047FA8D    mov         dword ptr [ebp-8],edx
 0047FA90    mov         dword ptr [ebp-4],eax
 0047FA93    cmp         dword ptr [ebp-8],0
>0047FA97    jle         0047FADA
 0047FA99    cmp         dword ptr [ebp-8],100
>0047FAA0    jle         0047FABE
 0047FAA2    lea         edx,[ebp-108]
 0047FAA8    mov         ecx,100
 0047FAAD    mov         eax,dword ptr [ebp-4]
 0047FAB0    call        TReader.Read
 0047FAB5    sub         dword ptr [ebp-8],100
>0047FABC    jmp         0047FAD4
 0047FABE    lea         edx,[ebp-108]
 0047FAC4    mov         ecx,dword ptr [ebp-8]
 0047FAC7    mov         eax,dword ptr [ebp-4]
 0047FACA    call        TReader.Read
 0047FACF    xor         eax,eax
 0047FAD1    mov         dword ptr [ebp-8],eax
 0047FAD4    cmp         dword ptr [ebp-8],0
>0047FAD8    jg          0047FA99
 0047FADA    mov         esp,ebp
 0047FADC    pop         ebp
 0047FADD    ret
*}
end;

//0047FAE0
{*procedure sub_0047FAE0(?:?; ?:?);
begin
 0047FAE0    push        ebp
 0047FAE1    mov         ebp,esp
 0047FAE3    add         esp,0FFFFFFE0
 0047FAE6    push        ebx
 0047FAE7    xor         edx,edx
 0047FAE9    mov         dword ptr [ebp-1C],edx
 0047FAEC    mov         dword ptr [ebp-20],edx
 0047FAEF    mov         dword ptr [ebp-4],eax
 0047FAF2    xor         eax,eax
 0047FAF4    push        ebp
 0047FAF5    push        47FC8E
 0047FAFA    push        dword ptr fs:[eax]
 0047FAFD    mov         dword ptr fs:[eax],esp
 0047FB00    mov         eax,dword ptr [ebp+8]
 0047FB03    mov         eax,dword ptr [eax-4]
 0047FB06    mov         dl,0A
 0047FB08    call        0047D348
 0047FB0D    xor         eax,eax
 0047FB0F    mov         dword ptr [ebp-0C],eax
 0047FB12    mov         dl,1
 0047FB14    mov         eax,[00476368];TMemoryStream
 0047FB19    call        TObject.Create;TMemoryStream.Create
 0047FB1E    mov         dword ptr [ebp-8],eax
 0047FB21    xor         eax,eax
 0047FB23    push        ebp
 0047FB24    push        47FC69
 0047FB29    push        dword ptr fs:[eax]
 0047FB2C    mov         dword ptr fs:[eax],esp
 0047FB2F    mov         dl,1
 0047FB31    mov         eax,[00476368];TMemoryStream
 0047FB36    call        TObject.Create;TMemoryStream.Create
 0047FB3B    mov         dword ptr [ebp-0C],eax
 0047FB3E    lea         edx,[ebp-14]
 0047FB41    mov         eax,dword ptr [ebp+8]
 0047FB44    mov         eax,dword ptr [eax-4]
 0047FB47    mov         ecx,4
 0047FB4C    call        TReader.Read
 0047FB51    mov         eax,dword ptr [ebp-14]
 0047FB54    cdq
 0047FB55    push        edx
 0047FB56    push        eax
 0047FB57    mov         eax,dword ptr [ebp-8]
 0047FB5A    call        0047BD6C
 0047FB5F    mov         eax,dword ptr [ebp-8]
 0047FB62    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0047FB65    mov         eax,dword ptr [ebp+8]
 0047FB68    mov         eax,dword ptr [eax-4]
 0047FB6B    mov         ecx,dword ptr [ebp-14]
 0047FB6E    call        TReader.Read
 0047FB73    push        400
 0047FB78    mov         ecx,dword ptr [ebp-8]
 0047FB7B    mov         dl,1
 0047FB7D    mov         eax,[004766B8];TReader
 0047FB82    call        TFiler.Create;TReader.Create
 0047FB87    mov         dword ptr [ebp-10],eax
 0047FB8A    xor         eax,eax
 0047FB8C    push        ebp
 0047FB8D    push        47FC44
 0047FB92    push        dword ptr fs:[eax]
 0047FB95    mov         dword ptr fs:[eax],esp
 0047FB98    lea         edx,[ebp-1C]
 0047FB9B    mov         eax,dword ptr [ebp-10]
 0047FB9E    call        TReader.ReadString
 0047FBA3    lea         edx,[ebp-14]
 0047FBA6    mov         ecx,4
 0047FBAB    mov         eax,dword ptr [ebp-10]
 0047FBAE    call        TReader.Read
 0047FBB3    mov         eax,dword ptr [ebp-14]
 0047FBB6    cdq
 0047FBB7    push        edx
 0047FBB8    push        eax
 0047FBB9    mov         eax,dword ptr [ebp-0C]
 0047FBBC    call        0047BD6C
 0047FBC1    mov         eax,dword ptr [ebp-0C]
 0047FBC4    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0047FBC7    mov         ecx,dword ptr [ebp-14]
 0047FBCA    mov         eax,dword ptr [ebp-10]
 0047FBCD    call        TReader.Read
 0047FBD2    lea         edx,[ebp-18]
 0047FBD5    mov         eax,dword ptr [ebp-1C]
 0047FBD8    call        FindCustomVariantType
 0047FBDD    test        al,al
>0047FBDF    je          0047FBFC
 0047FBE1    lea         eax,[ebp-20]
 0047FBE4    call        @IntfClear
 0047FBE9    mov         ecx,eax
 0047FBEB    mov         edx,47FC9C
 0047FBF0    mov         eax,dword ptr [ebp-18]
 0047FBF3    call        0046CC0C
 0047FBF8    test        al,al
>0047FBFA    jne         0047FC13
 0047FBFC    mov         ecx,dword ptr ds:[55B628];^SReadError:TResStringRec
 0047FC02    mov         dl,1
 0047FC04    mov         eax,[00475630];EReadError
 0047FC09    call        Exception.Create;EReadError.Create
 0047FC0E    call        @RaiseExcept
 0047FC13    mov         eax,dword ptr [ebp-18]
 0047FC16    mov         ax,word ptr [eax+4];TCustomVariantType...FVarType:TVarType
 0047FC1A    mov         edx,dword ptr [ebp-4]
 0047FC1D    mov         word ptr [edx],ax
 0047FC20    mov         edx,dword ptr [ebp-4]
 0047FC23    mov         ecx,dword ptr [ebp-0C]
 0047FC26    mov         eax,dword ptr [ebp-20]
 0047FC29    mov         ebx,dword ptr [eax]
 0047FC2B    call        dword ptr [ebx+0C]
 0047FC2E    xor         eax,eax
 0047FC30    pop         edx
 0047FC31    pop         ecx
 0047FC32    pop         ecx
 0047FC33    mov         dword ptr fs:[eax],edx
 0047FC36    push        47FC4B
 0047FC3B    mov         eax,dword ptr [ebp-10]
 0047FC3E    call        TObject.Free
 0047FC43    ret
>0047FC44    jmp         @HandleFinally
>0047FC49    jmp         0047FC3B
 0047FC4B    xor         eax,eax
 0047FC4D    pop         edx
 0047FC4E    pop         ecx
 0047FC4F    pop         ecx
 0047FC50    mov         dword ptr fs:[eax],edx
 0047FC53    push        47FC70
 0047FC58    mov         eax,dword ptr [ebp-0C]
 0047FC5B    call        TObject.Free
 0047FC60    mov         eax,dword ptr [ebp-8]
 0047FC63    call        TObject.Free
 0047FC68    ret
>0047FC69    jmp         @HandleFinally
>0047FC6E    jmp         0047FC58
 0047FC70    xor         eax,eax
 0047FC72    pop         edx
 0047FC73    pop         ecx
 0047FC74    pop         ecx
 0047FC75    mov         dword ptr fs:[eax],edx
 0047FC78    push        47FC95
 0047FC7D    lea         eax,[ebp-20]
 0047FC80    call        @IntfClear
 0047FC85    lea         eax,[ebp-1C]
 0047FC88    call        @LStrClr
 0047FC8D    ret
>0047FC8E    jmp         @HandleFinally
>0047FC93    jmp         0047FC7D
 0047FC95    pop         ebx
 0047FC96    mov         esp,ebp
 0047FC98    pop         ebp
 0047FC99    ret
end;*}

//0047FCAC
function TReader.ReadVariant:Variant;
begin
{*
 0047FCAC    push        ebp
 0047FCAD    mov         ebp,esp
 0047FCAF    xor         ecx,ecx
 0047FCB1    push        ecx
 0047FCB2    push        ecx
 0047FCB3    push        ecx
 0047FCB4    push        ecx
 0047FCB5    push        ecx
 0047FCB6    push        ecx
 0047FCB7    push        ecx
 0047FCB8    push        ecx
 0047FCB9    mov         dword ptr [ebp-8],edx
 0047FCBC    mov         dword ptr [ebp-4],eax
 0047FCBF    xor         eax,eax
 0047FCC1    push        ebp
 0047FCC2    push        47FEB5
 0047FCC7    push        dword ptr fs:[eax]
 0047FCCA    mov         dword ptr fs:[eax],esp
 0047FCCD    mov         eax,dword ptr [ebp-8]
 0047FCD0    call        @VarClear
 0047FCD5    mov         eax,dword ptr [ebp-4]
 0047FCD8    call        TReader.NextValue
 0047FCDD    and         eax,7F
 0047FCE0    cmp         eax,14
>0047FCE3    ja          0047FE78
 0047FCE9    jmp         dword ptr [eax*4+47FCF0]
 0047FCE9    dd          0047FD44
 0047FCE9    dd          0047FE78
 0047FCE9    dd          0047FD61
 0047FCE9    dd          0047FD7D
 0047FCE9    dd          0047FD99
 0047FCE9    dd          0047FDB2
 0047FCE9    dd          0047FE06
 0047FCE9    dd          0047FE78
 0047FCE9    dd          0047FE36
 0047FCE9    dd          0047FE36
 0047FCE9    dd          0047FE4D
 0047FCE9    dd          0047FE78
 0047FCE9    dd          0047FE06
 0047FCE9    dd          0047FD44
 0047FCE9    dd          0047FE78
 0047FCE9    dd          0047FDC7
 0047FCE9    dd          0047FDDC
 0047FCE9    dd          0047FDF1
 0047FCE9    dd          0047FE1E
 0047FCE9    dd          0047FE64
 0047FCE9    dd          0047FE1E
 0047FD44    mov         eax,dword ptr [ebp-4]
 0047FD47    call        TReader.ReadValue
 0047FD4C    cmp         al,0D
>0047FD4E    je          0047FE8F
 0047FD54    mov         eax,dword ptr [ebp-8]
 0047FD57    call        00474014
>0047FD5C    jmp         0047FE8F
 0047FD61    mov         eax,dword ptr [ebp-4]
 0047FD64    call        0047E504
 0047FD69    mov         edx,eax
 0047FD6B    movsx       edx,dl
 0047FD6E    mov         eax,dword ptr [ebp-8]
 0047FD71    mov         cl,0FF
 0047FD73    call        @VarFromInt
>0047FD78    jmp         0047FE8F
 0047FD7D    mov         eax,dword ptr [ebp-4]
 0047FD80    call        0047E504
 0047FD85    mov         edx,eax
 0047FD87    movsx       edx,dx
 0047FD8A    mov         eax,dword ptr [ebp-8]
 0047FD8D    mov         cl,0FE
 0047FD8F    call        @VarFromInt
>0047FD94    jmp         0047FE8F
 0047FD99    mov         eax,dword ptr [ebp-4]
 0047FD9C    call        0047E504
 0047FDA1    mov         edx,eax
 0047FDA3    mov         eax,dword ptr [ebp-8]
 0047FDA6    mov         cl,0FC
 0047FDA8    call        @VarFromInt
>0047FDAD    jmp         0047FE8F
 0047FDB2    mov         eax,dword ptr [ebp-4]
 0047FDB5    call        0047E2C0
 0047FDBA    mov         eax,dword ptr [ebp-8]
 0047FDBD    call        @VarFromReal
>0047FDC2    jmp         0047FE8F
 0047FDC7    mov         eax,dword ptr [ebp-4]
 0047FDCA    call        0047E30C
 0047FDCF    mov         eax,dword ptr [ebp-8]
 0047FDD2    call        @VarFromReal
>0047FDD7    jmp         0047FE8F
 0047FDDC    mov         eax,dword ptr [ebp-4]
 0047FDDF    call        0047E358
 0047FDE4    mov         eax,dword ptr [ebp-8]
 0047FDE7    call        @VarFromCurr
>0047FDEC    jmp         0047FE8F
 0047FDF1    mov         eax,dword ptr [ebp-4]
 0047FDF4    call        0047E3AC
 0047FDF9    mov         eax,dword ptr [ebp-8]
 0047FDFC    call        @VarFromTDateTime
>0047FE01    jmp         0047FE8F
 0047FE06    lea         edx,[ebp-0C]
 0047FE09    mov         eax,dword ptr [ebp-4]
 0047FE0C    call        TReader.ReadString
 0047FE11    mov         edx,dword ptr [ebp-0C]
 0047FE14    mov         eax,dword ptr [ebp-8]
 0047FE17    call        @VarFromLStr
>0047FE1C    jmp         0047FE8F
 0047FE1E    lea         edx,[ebp-10]
 0047FE21    mov         eax,dword ptr [ebp-4]
 0047FE24    call        0047F3DC
 0047FE29    mov         edx,dword ptr [ebp-10]
 0047FE2C    mov         eax,dword ptr [ebp-8]
 0047FE2F    call        @VarFromWStr
>0047FE34    jmp         0047FE8F
 0047FE36    mov         eax,dword ptr [ebp-4]
 0047FE39    call        TReader.ReadValue
 0047FE3E    cmp         al,9
 0047FE40    sete        dl
 0047FE43    mov         eax,dword ptr [ebp-8]
 0047FE46    call        @VarFromBool
>0047FE4B    jmp         0047FE8F
 0047FE4D    push        ebp
 0047FE4E    lea         eax,[ebp-20]
 0047FE51    call        0047FAE0
 0047FE56    pop         ecx
 0047FE57    lea         edx,[ebp-20]
 0047FE5A    mov         eax,dword ptr [ebp-8]
 0047FE5D    call        @VarCopy
>0047FE62    jmp         0047FE8F
 0047FE64    mov         eax,dword ptr [ebp-4]
 0047FE67    call        0047E574
 0047FE6C    push        edx
 0047FE6D    push        eax
 0047FE6E    mov         eax,dword ptr [ebp-8]
 0047FE71    call        @VarFromInt64
>0047FE76    jmp         0047FE8F
 0047FE78    mov         ecx,dword ptr ds:[55B628];^SReadError:TResStringRec
 0047FE7E    mov         dl,1
 0047FE80    mov         eax,[00475630];EReadError
 0047FE85    call        Exception.Create
 0047FE8A    call        @RaiseExcept
 0047FE8F    xor         eax,eax
 0047FE91    pop         edx
 0047FE92    pop         ecx
 0047FE93    pop         ecx
 0047FE94    mov         dword ptr fs:[eax],edx
 0047FE97    push        47FEBC
 0047FE9C    lea         eax,[ebp-20]
 0047FE9F    call        @VarClr
 0047FEA4    lea         eax,[ebp-10]
 0047FEA7    call        @WStrClr
 0047FEAC    lea         eax,[ebp-0C]
 0047FEAF    call        @LStrClr
 0047FEB4    ret
>0047FEB5    jmp         @HandleFinally
>0047FEBA    jmp         0047FE9C
 0047FEBC    mov         esp,ebp
 0047FEBE    pop         ebp
 0047FEBF    ret
*}
end;

//0047FEC0
destructor TWriter.Destroy;
begin
{*
 0047FEC0    push        ebp
 0047FEC1    mov         ebp,esp
 0047FEC3    add         esp,0FFFFFFF8
 0047FEC6    call        @BeforeDestruction
 0047FECB    mov         byte ptr [ebp-5],dl
 0047FECE    mov         dword ptr [ebp-4],eax
 0047FED1    mov         eax,dword ptr [ebp-4]
 0047FED4    call        TWriter.WriteBuffer
 0047FED9    mov         dl,byte ptr [ebp-5]
 0047FEDC    and         dl,0FC
 0047FEDF    mov         eax,dword ptr [ebp-4]
 0047FEE2    call        TFiler.Destroy
 0047FEE7    cmp         byte ptr [ebp-5],0
>0047FEEB    jle         0047FEF5
 0047FEED    mov         eax,dword ptr [ebp-4]
 0047FEF0    call        @ClassDestroy
 0047FEF5    pop         ecx
 0047FEF6    pop         ecx
 0047FEF7    pop         ebp
 0047FEF8    ret
*}
end;

//0047FF1C
{*procedure sub_0047FF1C(?:?; ?:?; ?:?; ?:?);
begin
 0047FF1C    push        ebp
 0047FF1D    mov         ebp,esp
 0047FF1F    add         esp,0FFFFFFF4
 0047FF22    mov         byte ptr [ebp-9],cl
 0047FF25    mov         dword ptr [ebp-8],edx
 0047FF28    mov         dword ptr [ebp-4],eax
 0047FF2B    cmp         byte ptr [ebp-9],0
>0047FF2F    je          0047FF4C
 0047FF31    cmp         word ptr [ebp+0A],0
>0047FF36    je          0047FF4C
 0047FF38    mov         edx,dword ptr [ebp-8]
 0047FF3B    mov         eax,dword ptr [ebp-4]
 0047FF3E    call        TWriter.WritePropName
 0047FF43    mov         edx,dword ptr [ebp-4]
 0047FF46    mov         eax,dword ptr [ebp+0C]
 0047FF49    call        dword ptr [ebp+8]
 0047FF4C    mov         esp,ebp
 0047FF4E    pop         ebp
 0047FF4F    ret         10
end;*}

//0047FF54
{*procedure sub_0047FF54(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0047FF54    push        ebp
 0047FF55    mov         ebp,esp
 0047FF57    add         esp,0FFFFFFF4
 0047FF5A    mov         byte ptr [ebp-9],cl
 0047FF5D    mov         dword ptr [ebp-8],edx
 0047FF60    mov         dword ptr [ebp-4],eax
 0047FF63    cmp         byte ptr [ebp-9],0
>0047FF67    je          0047FF89
 0047FF69    cmp         word ptr [ebp+0A],0
>0047FF6E    je          0047FF89
 0047FF70    mov         edx,dword ptr [ebp-8]
 0047FF73    mov         eax,dword ptr [ebp-4]
 0047FF76    call        TWriter.WritePropName
 0047FF7B    push        dword ptr [ebp+0C]
 0047FF7E    push        dword ptr [ebp+8]
 0047FF81    mov         eax,dword ptr [ebp-4]
 0047FF84    call        00480094
 0047FF89    mov         esp,ebp
 0047FF8B    pop         ebp
 0047FF8C    ret         10
end;*}

//0047FF90
{*function sub_0047FF90(?:TWriter):?;
begin
 0047FF90    push        ebp
 0047FF91    mov         ebp,esp
 0047FF93    add         esp,0FFFFFFF8
 0047FF96    mov         dword ptr [ebp-4],eax
 0047FF99    mov         eax,dword ptr [ebp-4]
 0047FF9C    mov         eax,dword ptr [eax+4]
 0047FF9F    call        0047BCCC
 0047FFA4    mov         edx,dword ptr [ebp-4]
 0047FFA7    add         eax,dword ptr [edx+10]
 0047FFAA    mov         dword ptr [ebp-8],eax
 0047FFAD    mov         eax,dword ptr [ebp-8]
 0047FFB0    pop         ecx
 0047FFB1    pop         ecx
 0047FFB2    pop         ebp
 0047FFB3    ret
end;*}

//0047FFB4
procedure sub_0047FFB4;
begin
{*
 0047FFB4    push        ebp
 0047FFB5    mov         ebp,esp
 0047FFB7    push        ecx
 0047FFB8    mov         dword ptr [ebp-4],eax
 0047FFBB    mov         eax,dword ptr [ebp-4]
 0047FFBE    call        TWriter.WriteBuffer
 0047FFC3    pop         ecx
 0047FFC4    pop         ebp
 0047FFC5    ret
*}
end;

//0047FFC8
{*procedure sub_0047FFC8(?:TWriter; ?:?);
begin
 0047FFC8    push        ebp
 0047FFC9    mov         ebp,esp
 0047FFCB    add         esp,0FFFFFFF4
 0047FFCE    mov         dword ptr [ebp-8],edx
 0047FFD1    mov         dword ptr [ebp-4],eax
 0047FFD4    mov         eax,dword ptr [ebp-4]
 0047FFD7    mov         eax,dword ptr [eax+4]
 0047FFDA    call        0047BCCC
 0047FFDF    mov         dword ptr [ebp-0C],eax
 0047FFE2    mov         eax,dword ptr [ebp-8]
 0047FFE5    cmp         eax,dword ptr [ebp-0C]
>0047FFE8    jl          0047FFF8
 0047FFEA    mov         eax,dword ptr [ebp-0C]
 0047FFED    mov         edx,dword ptr [ebp-4]
 0047FFF0    add         eax,dword ptr [edx+10]
 0047FFF3    cmp         eax,dword ptr [ebp-8]
>0047FFF6    jge         00480013
 0047FFF8    mov         eax,dword ptr [ebp-4]
 0047FFFB    call        TWriter.WriteBuffer
 00480000    mov         eax,dword ptr [ebp-8]
 00480003    cdq
 00480004    push        edx
 00480005    push        eax
 00480006    mov         eax,dword ptr [ebp-4]
 00480009    mov         eax,dword ptr [eax+4]
 0048000C    call        0047BCF4
>00480011    jmp         0048001F
 00480013    mov         eax,dword ptr [ebp-8]
 00480016    sub         eax,dword ptr [ebp-0C]
 00480019    mov         edx,dword ptr [ebp-4]
 0048001C    mov         dword ptr [edx+10],eax
 0048001F    mov         esp,ebp
 00480021    pop         ebp
 00480022    ret
end;*}

//00480024
{*procedure sub_00480024(?:?);
begin
 00480024    push        ebp
 00480025    mov         ebp,esp
 00480027    add         esp,0FFFFFFF8
 0048002A    mov         dword ptr [ebp-8],edx
 0048002D    mov         dword ptr [ebp-4],eax
 00480030    mov         edx,dword ptr [ebp-8]
 00480033    mov         eax,dword ptr [ebp-4]
 00480036    call        0047CB0C
 0048003B    mov         eax,dword ptr [ebp-8]
 0048003E    mov         edx,dword ptr [ebp-4]
 00480041    mov         dword ptr [edx+1C],eax;TWriter.FLookupRoot:TComponent
 00480044    pop         ecx
 00480045    pop         ecx
 00480046    pop         ebp
 00480047    ret
end;*}

//00480048
procedure TWriter.Write(const Buf:void ; Count:Longint);
begin
{*
 00480048    push        esi
 00480049    push        edi
 0048004A    push        ebx
 0048004B    mov         esi,edx
 0048004D    mov         ebx,ecx
 0048004F    mov         edi,eax
>00480051    jmp         00480089
 00480053    mov         ecx,dword ptr [edi+0C]
 00480056    sub         ecx,dword ptr [edi+10]
>00480059    ja          00480065
 0048005B    mov         eax,edi
 0048005D    call        TWriter.WriteBuffer
 00480062    mov         ecx,dword ptr [edi+0C]
 00480065    cmp         ecx,ebx
>00480067    jb          0048006B
 00480069    mov         ecx,ebx
 0048006B    sub         ebx,ecx
 0048006D    push        edi
 0048006E    mov         eax,dword ptr [edi+8]
 00480071    add         eax,dword ptr [edi+10]
 00480074    add         dword ptr [edi+10],ecx
 00480077    mov         edi,eax
 00480079    mov         edx,ecx
 0048007B    shr         ecx,2
 0048007E    cld
 0048007F    rep movs    dword ptr [edi],dword ptr [esi]
 00480081    mov         ecx,edx
 00480083    and         ecx,3
 00480086    rep movs    byte ptr [edi],byte ptr [esi]
 00480088    pop         edi
 00480089    or          ebx,ebx
>0048008B    jne         00480053
 0048008D    pop         ebx
 0048008E    pop         edi
 0048008F    pop         esi
 00480090    ret
*}
end;

//00480094
{*procedure sub_00480094(?:TWriter; ?:?);
begin
 00480094    push        ebp
 00480095    mov         ebp,esp
 00480097    add         esp,0FFFFFFF4
 0048009A    mov         dword ptr [ebp-4],eax
 0048009D    mov         dl,1
 0048009F    mov         eax,[00476368];TMemoryStream
 004800A4    call        TObject.Create;TMemoryStream.Create
 004800A9    mov         dword ptr [ebp-8],eax
 004800AC    xor         eax,eax
 004800AE    push        ebp
 004800AF    push        48010E
 004800B4    push        dword ptr fs:[eax]
 004800B7    mov         dword ptr fs:[eax],esp
 004800BA    mov         edx,dword ptr [ebp-8]
 004800BD    mov         eax,dword ptr [ebp+0C]
 004800C0    call        dword ptr [ebp+8]
 004800C3    mov         dl,0A
 004800C5    mov         eax,dword ptr [ebp-4]
 004800C8    call        TWriter.WriteValue
 004800CD    mov         eax,dword ptr [ebp-8]
 004800D0    mov         edx,dword ptr [eax]
 004800D2    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 004800D4    mov         dword ptr [ebp-0C],eax
 004800D7    lea         edx,[ebp-0C]
 004800DA    mov         ecx,4
 004800DF    mov         eax,dword ptr [ebp-4]
 004800E2    call        TWriter.Write
 004800E7    mov         eax,dword ptr [ebp-8]
 004800EA    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 004800ED    mov         ecx,dword ptr [ebp-0C]
 004800F0    mov         eax,dword ptr [ebp-4]
 004800F3    call        TWriter.Write
 004800F8    xor         eax,eax
 004800FA    pop         edx
 004800FB    pop         ecx
 004800FC    pop         ecx
 004800FD    mov         dword ptr fs:[eax],edx
 00480100    push        480115
 00480105    mov         eax,dword ptr [ebp-8]
 00480108    call        TObject.Free
 0048010D    ret
>0048010E    jmp         @HandleFinally
>00480113    jmp         00480105
 00480115    mov         esp,ebp
 00480117    pop         ebp
 00480118    ret         8
end;*}

//0048011C
procedure TWriter.WriteBuffer;
begin
{*
 0048011C    push        ebp
 0048011D    mov         ebp,esp
 0048011F    push        ecx
 00480120    mov         dword ptr [ebp-4],eax
 00480123    mov         eax,dword ptr [ebp-4]
 00480126    mov         edx,dword ptr [eax+8]
 00480129    mov         eax,dword ptr [ebp-4]
 0048012C    mov         ecx,dword ptr [eax+10]
 0048012F    mov         eax,dword ptr [ebp-4]
 00480132    mov         eax,dword ptr [eax+4]
 00480135    call        0047BF70
 0048013A    mov         eax,dword ptr [ebp-4]
 0048013D    xor         edx,edx
 0048013F    mov         dword ptr [eax+10],edx
 00480142    pop         ecx
 00480143    pop         ebp
 00480144    ret
*}
end;

//00480148
{*procedure sub_00480148(?:?; ?:?);
begin
 00480148    push        ebp
 00480149    mov         ebp,esp
 0048014B    add         esp,0FFFFFFF8
 0048014E    mov         byte ptr [ebp-5],dl
 00480151    mov         dword ptr [ebp-4],eax
 00480154    cmp         byte ptr [ebp-5],0
>00480158    je          00480166
 0048015A    mov         dl,9
 0048015C    mov         eax,dword ptr [ebp-4]
 0048015F    call        TWriter.WriteValue
>00480164    jmp         00480170
 00480166    mov         dl,8
 00480168    mov         eax,dword ptr [ebp-4]
 0048016B    call        TWriter.WriteValue
 00480170    pop         ecx
 00480171    pop         ecx
 00480172    pop         ebp
 00480173    ret
end;*}

//00480174
{*procedure sub_00480174(?:?; ?:?);
begin
 00480174    push        ebp
 00480175    mov         ebp,esp
 00480177    add         esp,0FFFFFFF4
 0048017A    xor         ecx,ecx
 0048017C    mov         dword ptr [ebp-0C],ecx
 0048017F    mov         byte ptr [ebp-5],dl
 00480182    mov         dword ptr [ebp-4],eax
 00480185    xor         eax,eax
 00480187    push        ebp
 00480188    push        4801BF
 0048018D    push        dword ptr fs:[eax]
 00480190    mov         dword ptr fs:[eax],esp
 00480193    lea         eax,[ebp-0C]
 00480196    mov         dl,byte ptr [ebp-5]
 00480199    call        @LStrFromChar
 0048019E    mov         edx,dword ptr [ebp-0C]
 004801A1    mov         eax,dword ptr [ebp-4]
 004801A4    call        00482400
 004801A9    xor         eax,eax
 004801AB    pop         edx
 004801AC    pop         ecx
 004801AD    pop         ecx
 004801AE    mov         dword ptr fs:[eax],edx
 004801B1    push        4801C6
 004801B6    lea         eax,[ebp-0C]
 004801B9    call        @LStrClr
 004801BE    ret
>004801BF    jmp         @HandleFinally
>004801C4    jmp         004801B6
 004801C6    mov         esp,ebp
 004801C8    pop         ebp
 004801C9    ret
end;*}

//004801CC
{*procedure sub_004801CC(?:TWriter; ?:?);
begin
 004801CC    push        ebp
 004801CD    mov         ebp,esp
 004801CF    add         esp,0FFFFFFEC
 004801D2    mov         dword ptr [ebp-8],edx
 004801D5    mov         dword ptr [ebp-4],eax
 004801D8    mov         eax,dword ptr [ebp-4]
 004801DB    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 004801DE    mov         dword ptr [ebp-10],eax
 004801E1    mov         eax,dword ptr [ebp-4]
 004801E4    xor         edx,edx
 004801E6    mov         dword ptr [eax+20],edx;TWriter.FAncestor:TPersistent
 004801E9    xor         eax,eax
 004801EB    push        ebp
 004801EC    push        48026B
 004801F1    push        dword ptr fs:[eax]
 004801F4    mov         dword ptr fs:[eax],esp
 004801F7    mov         dl,0E
 004801F9    mov         eax,dword ptr [ebp-4]
 004801FC    call        TWriter.WriteValue
 00480201    cmp         dword ptr [ebp-8],0
>00480205    je          0048024C
 00480207    mov         eax,dword ptr [ebp-8]
 0048020A    call        00479B60
 0048020F    dec         eax
 00480210    test        eax,eax
>00480212    jl          0048024C
 00480214    inc         eax
 00480215    mov         dword ptr [ebp-14],eax
 00480218    mov         dword ptr [ebp-0C],0
 0048021F    mov         eax,dword ptr [ebp-4]
 00480222    call        00480AFC
 00480227    mov         edx,dword ptr [ebp-0C]
 0048022A    mov         eax,dword ptr [ebp-8]
 0048022D    call        00479B7C
 00480232    mov         edx,eax
 00480234    mov         eax,dword ptr [ebp-4]
 00480237    call        TWriter.WriteProperties
 0048023C    mov         eax,dword ptr [ebp-4]
 0048023F    call        00480B10
 00480244    inc         dword ptr [ebp-0C]
 00480247    dec         dword ptr [ebp-14]
>0048024A    jne         0048021F
 0048024C    mov         eax,dword ptr [ebp-4]
 0048024F    call        00480B10
 00480254    xor         eax,eax
 00480256    pop         edx
 00480257    pop         ecx
 00480258    pop         ecx
 00480259    mov         dword ptr fs:[eax],edx
 0048025C    push        480272
 00480261    mov         eax,dword ptr [ebp-4]
 00480264    mov         edx,dword ptr [ebp-10]
 00480267    mov         dword ptr [eax+20],edx;TWriter.FAncestor:TPersistent
 0048026A    ret
>0048026B    jmp         @HandleFinally
>00480270    jmp         00480261
 00480272    mov         esp,ebp
 00480274    pop         ebp
 00480275    ret
end;*}

//00480278
{*function sub_00480278(?:?; ?:?):?;
begin
 00480278    push        ebp
 00480279    mov         ebp,esp
 0048027B    add         esp,0FFFFFFF0
 0048027E    mov         dword ptr [ebp-4],eax
 00480281    mov         eax,dword ptr [ebp+8]
 00480284    mov         eax,dword ptr [eax-4]
 00480287    mov         eax,dword ptr [eax+30]
 0048028A    mov         eax,dword ptr [eax+8]
 0048028D    dec         eax
 0048028E    test        eax,eax
>00480290    jl          004802CB
 00480292    inc         eax
 00480293    mov         dword ptr [ebp-10],eax
 00480296    mov         dword ptr [ebp-0C],0
 0048029D    mov         eax,dword ptr [ebp+8]
 004802A0    mov         eax,dword ptr [eax-4]
 004802A3    mov         eax,dword ptr [eax+30]
 004802A6    mov         edx,dword ptr [ebp-0C]
 004802A9    call        TList.Get
 004802AE    mov         dword ptr [ebp-8],eax
 004802B1    mov         eax,dword ptr [ebp-8]
 004802B4    mov         eax,dword ptr [eax+8]
 004802B7    mov         edx,dword ptr [ebp-4]
 004802BA    call        SameText
 004802BF    test        al,al
>004802C1    jne         004802D0
 004802C3    inc         dword ptr [ebp-0C]
 004802C6    dec         dword ptr [ebp-10]
>004802C9    jne         0048029D
 004802CB    xor         eax,eax
 004802CD    mov         dword ptr [ebp-8],eax
 004802D0    mov         eax,dword ptr [ebp-8]
 004802D3    mov         esp,ebp
 004802D5    pop         ebp
 004802D6    ret
end;*}

//004802D8
{*procedure sub_004802D8(?:TWriter; ?:?);
begin
 004802D8    push        ebp
 004802D9    mov         ebp,esp
 004802DB    add         esp,0FFFFFFE4
 004802DE    push        ebx
 004802DF    mov         dword ptr [ebp-8],edx
 004802E2    mov         dword ptr [ebp-4],eax
 004802E5    mov         eax,dword ptr [ebp-4]
 004802E8    mov         eax,dword ptr [eax+20]
 004802EB    mov         dword ptr [ebp-0C],eax
 004802EE    mov         eax,dword ptr [ebp-4]
 004802F1    mov         eax,dword ptr [eax+28]
 004802F4    mov         dword ptr [ebp-10],eax
 004802F7    xor         eax,eax
 004802F9    push        ebp
 004802FA    push        480439
 004802FF    push        dword ptr fs:[eax]
 00480302    mov         dword ptr fs:[eax],esp
 00480305    mov         eax,dword ptr [ebp-8]
 00480308    or          word ptr [eax+1C],4
 0048030D    mov         eax,dword ptr [ebp-8]
 00480310    call        00483864
 00480315    dec         eax
 00480316    test        eax,eax
>00480318    jl          0048034E
 0048031A    inc         eax
 0048031B    mov         dword ptr [ebp-1C],eax
 0048031E    mov         dword ptr [ebp-18],0
 00480325    mov         edx,dword ptr [ebp-18]
 00480328    mov         eax,dword ptr [ebp-8]
 0048032B    call        00483824
 00480330    test        byte ptr [eax+24],4
>00480334    je          00480346
 00480336    mov         edx,dword ptr [ebp-18]
 00480339    mov         eax,dword ptr [ebp-8]
 0048033C    call        00483824
 00480341    or          word ptr [eax+1C],4
 00480346    inc         dword ptr [ebp-18]
 00480349    dec         dword ptr [ebp-1C]
>0048034C    jne         00480325
 0048034E    mov         eax,dword ptr [ebp-4]
 00480351    cmp         dword ptr [eax+30],0
>00480355    je          0048036A
 00480357    push        ebp
 00480358    mov         eax,dword ptr [ebp-8]
 0048035B    mov         eax,dword ptr [eax+8]
 0048035E    call        00480278
 00480363    pop         ecx
 00480364    mov         edx,dword ptr [ebp-4]
 00480367    mov         dword ptr [edx+20],eax
 0048036A    mov         eax,dword ptr [ebp-4]
 0048036D    cmp         word ptr [eax+42],0
>00480372    je          004803C5
 00480374    mov         eax,dword ptr [ebp-4]
 00480377    cmp         dword ptr [eax+20],0
>0048037B    je          00480392
 0048037D    mov         eax,dword ptr [ebp-4]
 00480380    mov         eax,dword ptr [eax+20]
 00480383    mov         edx,dword ptr ds:[47698C];TComponent
 00480389    call        @IsClass
 0048038E    test        al,al
>00480390    je          004803C5
 00480392    mov         eax,dword ptr [ebp-4]
 00480395    mov         eax,dword ptr [eax+20]
 00480398    mov         dword ptr [ebp-14],eax
 0048039B    mov         eax,dword ptr [ebp-8]
 0048039E    mov         eax,dword ptr [eax+8]
 004803A1    push        eax
 004803A2    lea         eax,[ebp-14]
 004803A5    push        eax
 004803A6    mov         eax,dword ptr [ebp-4]
 004803A9    add         eax,28
 004803AC    push        eax
 004803AD    mov         ebx,dword ptr [ebp-4]
 004803B0    mov         ecx,dword ptr [ebp-8]
 004803B3    mov         edx,dword ptr [ebp-4]
 004803B6    mov         eax,dword ptr [ebx+44]
 004803B9    call        dword ptr [ebx+40]
 004803BC    mov         eax,dword ptr [ebp-4]
 004803BF    mov         edx,dword ptr [ebp-14]
 004803C2    mov         dword ptr [eax+20],edx
 004803C5    mov         edx,dword ptr [ebp-4]
 004803C8    mov         eax,dword ptr [ebp-8]
 004803CB    mov         ecx,dword ptr [eax]
 004803CD    call        dword ptr [ecx+24]
 004803D0    mov         eax,dword ptr [ebp-8]
 004803D3    and         word ptr [eax+1C],0FFFFFFFB
 004803D8    mov         eax,dword ptr [ebp-8]
 004803DB    call        00483864
 004803E0    dec         eax
 004803E1    test        eax,eax
>004803E3    jl          00480419
 004803E5    inc         eax
 004803E6    mov         dword ptr [ebp-1C],eax
 004803E9    mov         dword ptr [ebp-18],0
 004803F0    mov         edx,dword ptr [ebp-18]
 004803F3    mov         eax,dword ptr [ebp-8]
 004803F6    call        00483824
 004803FB    test        byte ptr [eax+24],4
>004803FF    je          00480411
 00480401    mov         edx,dword ptr [ebp-18]
 00480404    mov         eax,dword ptr [ebp-8]
 00480407    call        00483824
 0048040C    and         word ptr [eax+1C],0FFFFFFFB
 00480411    inc         dword ptr [ebp-18]
 00480414    dec         dword ptr [ebp-1C]
>00480417    jne         004803F0
 00480419    xor         eax,eax
 0048041B    pop         edx
 0048041C    pop         ecx
 0048041D    pop         ecx
 0048041E    mov         dword ptr fs:[eax],edx
 00480421    push        480440
 00480426    mov         eax,dword ptr [ebp-4]
 00480429    mov         edx,dword ptr [ebp-0C]
 0048042C    mov         dword ptr [eax+20],edx
 0048042F    mov         eax,dword ptr [ebp-4]
 00480432    mov         edx,dword ptr [ebp-10]
 00480435    mov         dword ptr [eax+28],edx
 00480438    ret
>00480439    jmp         @HandleFinally
>0048043E    jmp         00480426
 00480440    pop         ebx
 00480441    mov         esp,ebp
 00480443    pop         ebp
 00480444    ret
end;*}

//00480448
{*procedure sub_00480448(?:?);
begin
 00480448    push        ebp
 00480449    mov         ebp,esp
 0048044B    add         esp,0FFFFFEC8
 00480451    push        ebx
 00480452    push        esi
 00480453    xor         ecx,ecx
 00480455    mov         dword ptr [ebp-138],ecx
 0048045B    mov         dword ptr [ebp-12C],ecx
 00480461    mov         dword ptr [ebp-130],ecx
 00480467    mov         dword ptr [ebp-134],ecx
 0048046D    mov         dword ptr [ebp-8],edx
 00480470    mov         dword ptr [ebp-4],eax
 00480473    xor         eax,eax
 00480475    push        ebp
 00480476    push        48083B
 0048047B    push        dword ptr fs:[eax]
 0048047E    mov         dword ptr fs:[eax],esp
 00480481    lea         edx,[ebp-128]
 00480487    mov         eax,dword ptr [ebp-8]
 0048048A    mov         eax,dword ptr [eax]
 0048048C    call        TObject.ClassName
 00480491    xor         ebx,ebx
 00480493    mov         bl,byte ptr [ebp-128]
 00480499    mov         eax,dword ptr [ebp-8]
 0048049C    mov         eax,dword ptr [eax+8]
 0048049F    call        @DynArrayLength
 004804A4    add         ebx,eax
 004804A6    inc         ebx
 004804A7    add         ebx,5
 004804AA    add         ebx,3
 004804AD    mov         eax,dword ptr [ebp-4]
 004804B0    mov         eax,dword ptr [eax+0C];TWriter.FBufSize:Integer
 004804B3    mov         edx,dword ptr [ebp-4]
 004804B6    sub         eax,dword ptr [edx+10]
 004804B9    cmp         ebx,eax
>004804BB    jle         004804C5
 004804BD    mov         eax,dword ptr [ebp-4]
 004804C0    call        TWriter.WriteBuffer
 004804C5    mov         eax,dword ptr [ebp-4]
 004804C8    call        0047FF90
 004804CD    mov         dword ptr [ebp-0C],eax
 004804D0    mov         al,[00480848];0x0 gvar_00480848
 004804D5    mov         byte ptr [ebp-25],al
 004804D8    mov         eax,dword ptr [ebp-8]
 004804DB    test        byte ptr [eax+1D],2
>004804DF    je          00480508
 004804E1    mov         eax,dword ptr [ebp-4]
 004804E4    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>004804E8    je          00480502
 004804EA    mov         eax,dword ptr [ebp-8]
 004804ED    test        byte ptr [eax+1C],20
>004804F1    je          00480502
 004804F3    mov         eax,dword ptr [ebp-4]
 004804F6    cmp         dword ptr [eax+30],0;TWriter.FAncestorList:TList
>004804FA    je          00480502
 004804FC    or          byte ptr [ebp-25],1
>00480500    jmp         00480515
 00480502    or          byte ptr [ebp-25],4
>00480506    jmp         00480515
 00480508    mov         eax,dword ptr [ebp-4]
 0048050B    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>0048050F    je          00480515
 00480511    or          byte ptr [ebp-25],1
 00480515    mov         eax,dword ptr [ebp-4]
 00480518    cmp         dword ptr [eax+30],0;TWriter.FAncestorList:TList
>0048051C    je          00480555
 0048051E    mov         eax,dword ptr [ebp-4]
 00480521    mov         eax,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 00480524    mov         edx,dword ptr [ebp-4]
 00480527    mov         edx,dword ptr [edx+30];TWriter.FAncestorList:TList
 0048052A    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>0048052D    jge         00480555
 0048052F    mov         eax,dword ptr [ebp-4]
 00480532    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>00480536    je          00480551
 00480538    mov         eax,dword ptr [ebp-4]
 0048053B    mov         edx,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 0048053E    mov         eax,dword ptr [ebp-4]
 00480541    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList
 00480544    call        TList.Get
 00480549    mov         edx,dword ptr [ebp-4]
 0048054C    cmp         eax,dword ptr [edx+20];TWriter.FAncestor:TPersistent
>0048054F    je          00480555
 00480551    or          byte ptr [ebp-25],2
 00480555    mov         eax,dword ptr [ebp-4]
 00480558    mov         ecx,dword ptr [eax+38];TWriter.FChildPos:Integer
 0048055B    mov         dl,byte ptr [ebp-25]
 0048055E    mov         eax,dword ptr [ebp-4]
 00480561    call        00480B24
 00480566    mov         eax,dword ptr [ebp-4]
 00480569    cmp         byte ptr [eax+48],0;TWriter.FUseQualifiedNames:Boolean
>0048056D    je          004805E1
 0048056F    mov         eax,dword ptr [ebp-8]
 00480572    call        TObject.ClassType
 00480577    call        00403A74
 0048057C    call        GetTypeData
 00480581    lea         edx,[eax+0A]
 00480584    lea         eax,[ebp-130]
 0048058A    call        @LStrFromString
 0048058F    push        dword ptr [ebp-130]
 00480595    push        480854;'.'
 0048059A    lea         edx,[ebp-128]
 004805A0    mov         eax,dword ptr [ebp-8]
 004805A3    mov         eax,dword ptr [eax]
 004805A5    call        TObject.ClassName
 004805AA    lea         edx,[ebp-128]
 004805B0    lea         eax,[ebp-134]
 004805B6    call        @LStrFromString
 004805BB    push        dword ptr [ebp-134]
 004805C1    lea         eax,[ebp-12C]
 004805C7    mov         edx,3
 004805CC    call        @LStrCatN
 004805D1    mov         edx,dword ptr [ebp-12C]
 004805D7    mov         eax,dword ptr [ebp-4]
 004805DA    call        00482300
>004805DF    jmp         00480610
 004805E1    lea         edx,[ebp-128]
 004805E7    mov         eax,dword ptr [ebp-8]
 004805EA    mov         eax,dword ptr [eax]
 004805EC    call        TObject.ClassName
 004805F1    lea         edx,[ebp-128]
 004805F7    lea         eax,[ebp-138]
 004805FD    call        @LStrFromString
 00480602    mov         edx,dword ptr [ebp-138]
 00480608    mov         eax,dword ptr [ebp-4]
 0048060B    call        00482300
 00480610    mov         eax,dword ptr [ebp-8]
 00480613    mov         edx,dword ptr [eax+8]
 00480616    mov         eax,dword ptr [ebp-4]
 00480619    call        00482300
 0048061E    mov         eax,dword ptr [ebp-4]
 00480621    call        0047FF90
 00480626    mov         dword ptr [ebp-10],eax
 00480629    mov         eax,dword ptr [ebp-4]
 0048062C    cmp         dword ptr [eax+30],0;TWriter.FAncestorList:TList
>00480630    je          00480658
 00480632    mov         eax,dword ptr [ebp-4]
 00480635    mov         eax,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 00480638    mov         edx,dword ptr [ebp-4]
 0048063B    mov         edx,dword ptr [edx+30];TWriter.FAncestorList:TList
 0048063E    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>00480641    jge         00480658
 00480643    mov         eax,dword ptr [ebp-4]
 00480646    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>0048064A    je          00480652
 0048064C    mov         eax,dword ptr [ebp-4]
 0048064F    inc         dword ptr [eax+34];TWriter.FAncestorPos:Integer
 00480652    mov         eax,dword ptr [ebp-4]
 00480655    inc         dword ptr [eax+38];TWriter.FChildPos:Integer
 00480658    mov         edx,dword ptr [ebp-8]
 0048065B    mov         eax,dword ptr [ebp-4]
 0048065E    call        TWriter.WriteProperties
 00480663    mov         eax,dword ptr [ebp-4]
 00480666    call        00480B10
 0048066B    mov         eax,dword ptr [ebp-4]
 0048066E    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList
 00480671    mov         dword ptr [ebp-14],eax
 00480674    mov         eax,dword ptr [ebp-4]
 00480677    mov         eax,dword ptr [eax+34];TWriter.FAncestorPos:Integer
 0048067A    mov         dword ptr [ebp-18],eax
 0048067D    mov         eax,dword ptr [ebp-4]
 00480680    mov         eax,dword ptr [eax+38];TWriter.FChildPos:Integer
 00480683    mov         dword ptr [ebp-1C],eax
 00480686    mov         eax,dword ptr [ebp-4]
 00480689    mov         eax,dword ptr [eax+18];TWriter.FRoot:TComponent
 0048068C    mov         dword ptr [ebp-20],eax
 0048068F    mov         eax,dword ptr [ebp-4]
 00480692    mov         eax,dword ptr [eax+28];TWriter.FRootAncestor:TComponent
 00480695    mov         dword ptr [ebp-24],eax
 00480698    xor         eax,eax
 0048069A    push        ebp
 0048069B    push        4807DC
 004806A0    push        dword ptr fs:[eax]
 004806A3    mov         dword ptr fs:[eax],esp
 004806A6    mov         eax,dword ptr [ebp-4]
 004806A9    xor         edx,edx
 004806AB    mov         dword ptr [eax+30],edx;TWriter.FAncestorList:TList
 004806AE    mov         eax,dword ptr [ebp-4]
 004806B1    xor         edx,edx
 004806B3    mov         dword ptr [eax+34],edx;TWriter.FAncestorPos:Integer
 004806B6    mov         eax,dword ptr [ebp-4]
 004806B9    xor         edx,edx
 004806BB    mov         dword ptr [eax+38],edx;TWriter.FChildPos:Integer
 004806BE    mov         eax,dword ptr [ebp-4]
 004806C1    cmp         byte ptr [eax+24],0;TWriter.FIgnoreChildren:Boolean
>004806C5    jne         004807A1
 004806CB    xor         eax,eax
 004806CD    push        ebp
 004806CE    push        48079A
 004806D3    push        dword ptr fs:[eax]
 004806D6    mov         dword ptr fs:[eax],esp
 004806D9    mov         eax,dword ptr [ebp-4]
 004806DC    cmp         dword ptr [eax+20],0;TWriter.FAncestor:TPersistent
>004806E0    je          00480754
 004806E2    mov         eax,dword ptr [ebp-4]
 004806E5    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 004806E8    mov         edx,dword ptr ds:[47698C];TComponent
 004806EE    call        @IsClass
 004806F3    test        al,al
>004806F5    je          00480754
 004806F7    mov         eax,dword ptr [ebp-4]
 004806FA    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 004806FD    mov         edx,dword ptr ds:[47698C];TComponent
 00480703    call        @IsClass
 00480708    test        al,al
>0048070A    je          00480724
 0048070C    mov         eax,dword ptr [ebp-4]
 0048070F    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 00480712    test        byte ptr [eax+1D],2
>00480716    je          00480724
 00480718    mov         eax,dword ptr [ebp-4]
 0048071B    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 0048071E    mov         edx,dword ptr [ebp-4]
 00480721    mov         dword ptr [edx+28],eax;TWriter.FRootAncestor:TComponent
 00480724    mov         dl,1
 00480726    mov         eax,[004759C0];TList
 0048072B    call        TObject.Create;TList.Create
 00480730    mov         edx,dword ptr [ebp-4]
 00480733    mov         dword ptr [edx+30],eax;TWriter.FAncestorList:TList
 00480736    mov         eax,dword ptr [ebp-4]
 00480739    push        eax
 0048073A    push        47FEFC
 0048073F    mov         eax,dword ptr [ebp-4]
 00480742    mov         edx,dword ptr [eax+28];TWriter.FRootAncestor:TComponent
 00480745    mov         eax,dword ptr [ebp-4]
 00480748    mov         eax,dword ptr [eax+20];TWriter.FAncestor:TPersistent
 0048074B    mov         si,0FFFD
 0048074F    call        @CallDynaInst
 00480754    mov         eax,dword ptr [ebp-8]
 00480757    test        byte ptr [eax+1D],2
>0048075B    je          00480766
 0048075D    mov         eax,dword ptr [ebp-4]
 00480760    mov         edx,dword ptr [ebp-8]
 00480763    mov         dword ptr [eax+18],edx;TWriter.FRoot:TComponent
 00480766    mov         eax,dword ptr [ebp-4]
 00480769    push        eax
 0048076A    push        4802D8;sub_004802D8
 0048076F    mov         eax,dword ptr [ebp-4]
 00480772    mov         edx,dword ptr [eax+18];TWriter.FRoot:TComponent
 00480775    mov         eax,dword ptr [ebp-8]
 00480778    mov         si,0FFFD
 0048077C    call        @CallDynaInst
 00480781    xor         eax,eax
 00480783    pop         edx
 00480784    pop         ecx
 00480785    pop         ecx
 00480786    mov         dword ptr fs:[eax],edx
 00480789    push        4807A1
 0048078E    mov         eax,dword ptr [ebp-4]
 00480791    mov         eax,dword ptr [eax+30];TWriter.FAncestorList:TList
 00480794    call        TObject.Free
 00480799    ret
>0048079A    jmp         @HandleFinally
>0048079F    jmp         0048078E
 004807A1    xor         eax,eax
 004807A3    pop         edx
 004807A4    pop         ecx
 004807A5    pop         ecx
 004807A6    mov         dword ptr fs:[eax],edx
 004807A9    push        4807E3
 004807AE    mov         eax,dword ptr [ebp-4]
 004807B1    mov         edx,dword ptr [ebp-14]
 004807B4    mov         dword ptr [eax+30],edx;TWriter.FAncestorList:TList
 004807B7    mov         eax,dword ptr [ebp-4]
 004807BA    mov         edx,dword ptr [ebp-18]
 004807BD    mov         dword ptr [eax+34],edx;TWriter.FAncestorPos:Integer
 004807C0    mov         eax,dword ptr [ebp-4]
 004807C3    mov         edx,dword ptr [ebp-1C]
 004807C6    mov         dword ptr [eax+38],edx;TWriter.FChildPos:Integer
 004807C9    mov         eax,dword ptr [ebp-4]
 004807CC    mov         edx,dword ptr [ebp-20]
 004807CF    mov         dword ptr [eax+18],edx;TWriter.FRoot:TComponent
 004807D2    mov         eax,dword ptr [ebp-4]
 004807D5    mov         edx,dword ptr [ebp-24]
 004807D8    mov         dword ptr [eax+28],edx;TWriter.FRootAncestor:TComponent
 004807DB    ret
>004807DC    jmp         @HandleFinally
>004807E1    jmp         004807AE
 004807E3    mov         eax,dword ptr [ebp-4]
 004807E6    call        00480B10
 004807EB    mov         eax,dword ptr [ebp-4]
 004807EE    mov         eax,dword ptr [eax+18];TWriter.FRoot:TComponent
 004807F1    cmp         eax,dword ptr [ebp-8]
>004807F4    je          0048081D
 004807F6    mov         al,[00480858];0x1 gvar_00480858
 004807FB    cmp         al,byte ptr [ebp-25]
>004807FE    jne         0048081D
 00480800    mov         eax,dword ptr [ebp-4]
 00480803    call        0047FF90
 00480808    mov         edx,dword ptr [ebp-10]
 0048080B    add         edx,2
 0048080E    cmp         eax,edx
>00480810    jne         0048081D
 00480812    mov         edx,dword ptr [ebp-0C]
 00480815    mov         eax,dword ptr [ebp-4]
 00480818    call        0047FFC8
 0048081D    xor         eax,eax
 0048081F    pop         edx
 00480820    pop         ecx
 00480821    pop         ecx
 00480822    mov         dword ptr fs:[eax],edx
 00480825    push        480842
 0048082A    lea         eax,[ebp-138]
 00480830    mov         edx,4
 00480835    call        @LStrArrayClr
 0048083A    ret
>0048083B    jmp         @HandleFinally
>00480840    jmp         0048082A
 00480842    pop         esi
 00480843    pop         ebx
 00480844    mov         esp,ebp
 00480846    pop         ebp
 00480847    ret
end;*}

//0048085C
{*procedure sub_0048085C(?:TWriter; ?:?; ?:?);
begin
 0048085C    push        ebp
 0048085D    mov         ebp,esp
 0048085F    add         esp,0FFFFFFF4
 00480862    mov         dword ptr [ebp-0C],ecx
 00480865    mov         dword ptr [ebp-8],edx
 00480868    mov         dword ptr [ebp-4],eax
 0048086B    mov         eax,dword ptr [ebp-0C]
 0048086E    mov         edx,dword ptr [ebp-4]
 00480871    mov         dword ptr [edx+28],eax;TWriter.FRootAncestor:TComponent
 00480874    mov         eax,dword ptr [ebp-0C]
 00480877    mov         edx,dword ptr [ebp-4]
 0048087A    mov         dword ptr [edx+20],eax;TWriter.FAncestor:TPersistent
 0048087D    mov         eax,dword ptr [ebp-8]
 00480880    mov         edx,dword ptr [ebp-4]
 00480883    mov         dword ptr [edx+18],eax;TWriter.FRoot:TComponent
 00480886    mov         eax,dword ptr [ebp-8]
 00480889    mov         edx,dword ptr [ebp-4]
 0048088C    mov         dword ptr [edx+1C],eax;TWriter.FLookupRoot:TComponent
 0048088F    mov         eax,dword ptr [ebp-4]
 00480892    call        004822E4
 00480897    mov         edx,dword ptr [ebp-8]
 0048089A    mov         eax,dword ptr [ebp-4]
 0048089D    call        004802D8
 004808A2    mov         esp,ebp
 004808A4    pop         ebp
 004808A5    ret
end;*}

//004808A8
procedure TWriter.WriteFloat(const Value:Extended);
begin
{*
 004808A8    push        ebp
 004808A9    mov         ebp,esp
 004808AB    push        ecx
 004808AC    mov         dword ptr [ebp-4],eax
 004808AF    mov         dl,5
 004808B1    mov         eax,dword ptr [ebp-4]
 004808B4    call        TWriter.WriteValue
 004808B9    lea         edx,[ebp+8]
 004808BC    mov         ecx,0A
 004808C1    mov         eax,dword ptr [ebp-4]
 004808C4    call        TWriter.Write
 004808C9    pop         ecx
 004808CA    pop         ebp
 004808CB    ret         0C
*}
end;

//004808D0
{*procedure sub_004808D0(?:?; ?:?);
begin
 004808D0    push        ebp
 004808D1    mov         ebp,esp
 004808D3    push        ecx
 004808D4    mov         dword ptr [ebp-4],eax
 004808D7    mov         dl,0F
 004808D9    mov         eax,dword ptr [ebp-4]
 004808DC    call        TWriter.WriteValue
 004808E1    lea         edx,[ebp+8]
 004808E4    mov         ecx,4
 004808E9    mov         eax,dword ptr [ebp-4]
 004808EC    call        TWriter.Write
 004808F1    pop         ecx
 004808F2    pop         ebp
 004808F3    ret         4
end;*}

//004808F8
{*procedure sub_004808F8(?:?; ?:?);
begin
 004808F8    push        ebp
 004808F9    mov         ebp,esp
 004808FB    push        ecx
 004808FC    mov         dword ptr [ebp-4],eax
 004808FF    mov         dl,10
 00480901    mov         eax,dword ptr [ebp-4]
 00480904    call        TWriter.WriteValue
 00480909    lea         edx,[ebp+8]
 0048090C    mov         ecx,8
 00480911    mov         eax,dword ptr [ebp-4]
 00480914    call        TWriter.Write
 00480919    pop         ecx
 0048091A    pop         ebp
 0048091B    ret         8
end;*}

//00480920
{*procedure sub_00480920(?:?; ?:?);
begin
 00480920    push        ebp
 00480921    mov         ebp,esp
 00480923    push        ecx
 00480924    mov         dword ptr [ebp-4],eax
 00480927    mov         dl,11
 00480929    mov         eax,dword ptr [ebp-4]
 0048092C    call        TWriter.WriteValue
 00480931    lea         edx,[ebp+8]
 00480934    mov         ecx,8
 00480939    mov         eax,dword ptr [ebp-4]
 0048093C    call        TWriter.Write
 00480941    pop         ecx
 00480942    pop         ebp
 00480943    ret         8
end;*}

//00480948
procedure TWriter.WriteIdent(const Ident:AnsiString);
begin
{*
 00480948    push        ebp
 00480949    mov         ebp,esp
 0048094B    add         esp,0FFFFFFF8
 0048094E    mov         dword ptr [ebp-8],edx
 00480951    mov         dword ptr [ebp-4],eax
 00480954    mov         edx,4809EC;'False'
 00480959    mov         eax,dword ptr [ebp-8]
 0048095C    call        SameText
 00480961    test        al,al
>00480963    je          00480971
 00480965    mov         dl,8
 00480967    mov         eax,dword ptr [ebp-4]
 0048096A    call        TWriter.WriteValue
>0048096F    jmp         004809DD
 00480971    mov         edx,4809FC;'True'
 00480976    mov         eax,dword ptr [ebp-8]
 00480979    call        SameText
 0048097E    test        al,al
>00480980    je          0048098E
 00480982    mov         dl,9
 00480984    mov         eax,dword ptr [ebp-4]
 00480987    call        TWriter.WriteValue
>0048098C    jmp         004809DD
 0048098E    mov         edx,480A0C;'Null'
 00480993    mov         eax,dword ptr [ebp-8]
 00480996    call        SameText
 0048099B    test        al,al
>0048099D    je          004809AB
 0048099F    xor         edx,edx
 004809A1    mov         eax,dword ptr [ebp-4]
 004809A4    call        TWriter.WriteValue
>004809A9    jmp         004809DD
 004809AB    mov         edx,480A1C;'nil'
 004809B0    mov         eax,dword ptr [ebp-8]
 004809B3    call        SameText
 004809B8    test        al,al
>004809BA    je          004809C8
 004809BC    mov         dl,0D
 004809BE    mov         eax,dword ptr [ebp-4]
 004809C1    call        TWriter.WriteValue
>004809C6    jmp         004809DD
 004809C8    mov         dl,7
 004809CA    mov         eax,dword ptr [ebp-4]
 004809CD    call        TWriter.WriteValue
 004809D2    mov         edx,dword ptr [ebp-8]
 004809D5    mov         eax,dword ptr [ebp-4]
 004809D8    call        00482300
 004809DD    pop         ecx
 004809DE    pop         ecx
 004809DF    pop         ebp
 004809E0    ret
*}
end;

//00480A20
procedure sub_00480A20(?:TWriter; ?:Integer);
begin
{*
 00480A20    push        ebp
 00480A21    mov         ebp,esp
 00480A23    add         esp,0FFFFFFF8
 00480A26    mov         dword ptr [ebp-8],edx
 00480A29    mov         dword ptr [ebp-4],eax
 00480A2C    cmp         dword ptr [ebp-8],0FFFFFF80
>00480A30    jl          00480A54
 00480A32    cmp         dword ptr [ebp-8],7F
>00480A36    jg          00480A54
 00480A38    mov         dl,2
 00480A3A    mov         eax,dword ptr [ebp-4]
 00480A3D    call        TWriter.WriteValue
 00480A42    lea         edx,[ebp-8]
 00480A45    mov         ecx,1
 00480A4A    mov         eax,dword ptr [ebp-4]
 00480A4D    call        TWriter.Write
>00480A52    jmp         00480A9C
 00480A54    cmp         dword ptr [ebp-8],0FFFF8000
>00480A5B    jl          00480A82
 00480A5D    cmp         dword ptr [ebp-8],7FFF
>00480A64    jg          00480A82
 00480A66    mov         dl,3
 00480A68    mov         eax,dword ptr [ebp-4]
 00480A6B    call        TWriter.WriteValue
 00480A70    lea         edx,[ebp-8]
 00480A73    mov         ecx,2
 00480A78    mov         eax,dword ptr [ebp-4]
 00480A7B    call        TWriter.Write
>00480A80    jmp         00480A9C
 00480A82    mov         dl,4
 00480A84    mov         eax,dword ptr [ebp-4]
 00480A87    call        TWriter.WriteValue
 00480A8C    lea         edx,[ebp-8]
 00480A8F    mov         ecx,4
 00480A94    mov         eax,dword ptr [ebp-4]
 00480A97    call        TWriter.Write
 00480A9C    pop         ecx
 00480A9D    pop         ecx
 00480A9E    pop         ebp
 00480A9F    ret
*}
end;

//00480AA0
procedure TWriter.WriteInteger(Value:Longint);
begin
{*
 00480AA0    push        ebp
 00480AA1    mov         ebp,esp
 00480AA3    push        ecx
 00480AA4    mov         dword ptr [ebp-4],eax
 00480AA7    cmp         dword ptr [ebp+0C],0FFFFFFFF
>00480AAB    jne         00480AB8
 00480AAD    cmp         dword ptr [ebp+8],80000000
>00480AB4    jb          00480ADC
>00480AB6    jmp         00480ABA
>00480AB8    jl          00480ADC
 00480ABA    cmp         dword ptr [ebp+0C],0
>00480ABE    jne         00480ACB
 00480AC0    cmp         dword ptr [ebp+8],7FFFFFFF
>00480AC7    ja          00480ADC
>00480AC9    jmp         00480ACD
>00480ACB    jg          00480ADC
 00480ACD    mov         eax,dword ptr [ebp+8]
 00480AD0    mov         edx,eax
 00480AD2    mov         eax,dword ptr [ebp-4]
 00480AD5    call        00480A20
>00480ADA    jmp         00480AF6
 00480ADC    mov         dl,13
 00480ADE    mov         eax,dword ptr [ebp-4]
 00480AE1    call        TWriter.WriteValue
 00480AE6    lea         edx,[ebp+8]
 00480AE9    mov         ecx,8
 00480AEE    mov         eax,dword ptr [ebp-4]
 00480AF1    call        TWriter.Write
 00480AF6    pop         ecx
 00480AF7    pop         ebp
 00480AF8    ret         8
*}
end;

//00480AFC
procedure sub_00480AFC(?:TWriter);
begin
{*
 00480AFC    push        ebp
 00480AFD    mov         ebp,esp
 00480AFF    push        ecx
 00480B00    mov         dword ptr [ebp-4],eax
 00480B03    mov         dl,1
 00480B05    mov         eax,dword ptr [ebp-4]
 00480B08    call        TWriter.WriteValue
 00480B0D    pop         ecx
 00480B0E    pop         ebp
 00480B0F    ret
*}
end;

//00480B10
procedure sub_00480B10(?:TWriter);
begin
{*
 00480B10    push        ebp
 00480B11    mov         ebp,esp
 00480B13    push        ecx
 00480B14    mov         dword ptr [ebp-4],eax
 00480B17    xor         edx,edx
 00480B19    mov         eax,dword ptr [ebp-4]
 00480B1C    call        TWriter.WriteValue
 00480B21    pop         ecx
 00480B22    pop         ebp
 00480B23    ret
*}
end;

//00480B24
{*procedure sub_00480B24(?:TWriter; ?:?; ?:Integer);
begin
 00480B24    push        ebp
 00480B25    mov         ebp,esp
 00480B27    add         esp,0FFFFFFF0
 00480B2A    mov         dword ptr [ebp-0C],ecx
 00480B2D    mov         byte ptr [ebp-5],dl
 00480B30    mov         dword ptr [ebp-4],eax
 00480B33    mov         al,[00480B6C];0x0 gvar_00480B6C
 00480B38    cmp         al,byte ptr [ebp-5]
>00480B3B    je          00480B66
 00480B3D    mov         al,byte ptr [ebp-5]
 00480B40    or          al,0F0
 00480B42    mov         byte ptr [ebp-0D],al
 00480B45    lea         edx,[ebp-0D]
 00480B48    mov         ecx,1
 00480B4D    mov         eax,dword ptr [ebp-4]
 00480B50    call        TWriter.Write
 00480B55    test        byte ptr [ebp-5],2
>00480B59    je          00480B66
 00480B5B    mov         edx,dword ptr [ebp-0C]
 00480B5E    mov         eax,dword ptr [ebp-4]
 00480B61    call        00480A20
 00480B66    mov         esp,ebp
 00480B68    pop         ebp
 00480B69    ret
end;*}

//00480B70
procedure TWriter.WriteProperties(Instance:TPersistent);
begin
{*
 00480B70    push        ebp
 00480B71    mov         ebp,esp
 00480B73    add         esp,0FFFFFFE4
 00480B76    mov         dword ptr [ebp-8],edx
 00480B79    mov         dword ptr [ebp-4],eax
 00480B7C    mov         eax,dword ptr [ebp-8]
 00480B7F    mov         eax,dword ptr [eax]
 00480B81    call        00403A74
 00480B86    call        GetTypeData
 00480B8B    movsx       eax,word ptr [eax+8]
 00480B8F    mov         dword ptr [ebp-10],eax
 00480B92    cmp         dword ptr [ebp-10],0
>00480B96    jle         00480C37
 00480B9C    mov         eax,dword ptr [ebp-10]
 00480B9F    shl         eax,2
 00480BA2    call        @GetMem
 00480BA7    mov         dword ptr [ebp-18],eax
 00480BAA    xor         eax,eax
 00480BAC    push        ebp
 00480BAD    push        480C30
 00480BB2    push        dword ptr fs:[eax]
 00480BB5    mov         dword ptr fs:[eax],esp
 00480BB8    mov         eax,dword ptr [ebp-8]
 00480BBB    mov         eax,dword ptr [eax]
 00480BBD    call        00403A74
 00480BC2    mov         edx,dword ptr [ebp-18]
 00480BC5    call        GetPropInfos
 00480BCA    mov         eax,dword ptr [ebp-10]
 00480BCD    dec         eax
 00480BCE    test        eax,eax
>00480BD0    jl          00480C14
 00480BD2    inc         eax
 00480BD3    mov         dword ptr [ebp-1C],eax
 00480BD6    mov         dword ptr [ebp-0C],0
 00480BDD    mov         eax,dword ptr [ebp-18]
 00480BE0    mov         edx,dword ptr [ebp-0C]
 00480BE3    mov         eax,dword ptr [eax+edx*4]
 00480BE6    mov         dword ptr [ebp-14],eax
 00480BE9    cmp         dword ptr [ebp-14],0
>00480BED    je          00480C14
 00480BEF    mov         edx,dword ptr [ebp-14]
 00480BF2    mov         eax,dword ptr [ebp-8]
 00480BF5    call        IsStoredProp
 00480BFA    test        al,al
>00480BFC    je          00480C0C
 00480BFE    mov         ecx,dword ptr [ebp-14]
 00480C01    mov         edx,dword ptr [ebp-8]
 00480C04    mov         eax,dword ptr [ebp-4]
 00480C07    call        TWriter.WriteProperty
 00480C0C    inc         dword ptr [ebp-0C]
 00480C0F    dec         dword ptr [ebp-1C]
>00480C12    jne         00480BDD
 00480C14    xor         eax,eax
 00480C16    pop         edx
 00480C17    pop         ecx
 00480C18    pop         ecx
 00480C19    mov         dword ptr fs:[eax],edx
 00480C1C    push        480C37
 00480C21    mov         edx,dword ptr [ebp-10]
 00480C24    shl         edx,2
 00480C27    mov         eax,dword ptr [ebp-18]
 00480C2A    call        @FreeMem
 00480C2F    ret
>00480C30    jmp         @HandleFinally
>00480C35    jmp         00480C21
 00480C37    mov         edx,dword ptr [ebp-4]
 00480C3A    mov         eax,dword ptr [ebp-8]
 00480C3D    mov         ecx,dword ptr [eax]
 00480C3F    call        dword ptr [ecx+4]
 00480C42    mov         esp,ebp
 00480C44    pop         ebp
 00480C45    ret
*}
end;

//00480C48
function AncestorIsValid(Ancestor:TPersistent; Root:TComponent; RootAncestor:TComponent):Boolean;
begin
{*
 00480C48    push        ebp
 00480C49    mov         ebp,esp
 00480C4B    add         esp,0FFFFFFF0
 00480C4E    mov         dword ptr [ebp-0C],ecx
 00480C51    mov         dword ptr [ebp-8],edx
 00480C54    mov         dword ptr [ebp-4],eax
 00480C57    cmp         dword ptr [ebp-4],0
>00480C5B    je          00480C7B
 00480C5D    cmp         dword ptr [ebp-0C],0
>00480C61    je          00480C7B
 00480C63    mov         eax,dword ptr [ebp-0C]
 00480C66    call        TObject.ClassType
 00480C6B    mov         edx,eax
 00480C6D    mov         eax,dword ptr [ebp-8]
 00480C70    mov         eax,dword ptr [eax]
 00480C72    call        TObject.InheritsFrom
 00480C77    test        al,al
>00480C79    jne         00480C7F
 00480C7B    xor         eax,eax
>00480C7D    jmp         00480C81
 00480C7F    mov         al,1
 00480C81    mov         byte ptr [ebp-0D],al
 00480C84    mov         al,byte ptr [ebp-0D]
 00480C87    mov         esp,ebp
 00480C89    pop         ebp
 00480C8A    ret
*}
end;

//00480C8C
{*function sub_00480C8C(?:?):?;
begin
 00480C8C    push        ebp
 00480C8D    mov         ebp,esp
 00480C8F    add         esp,0FFFFFFF4
 00480C92    mov         eax,dword ptr [ebp+8]
 00480C95    mov         edx,dword ptr [eax-8]
 00480C98    mov         eax,dword ptr [ebp+8]
 00480C9B    mov         eax,dword ptr [eax-4]
 00480C9E    call        GetOrdProp
 00480CA3    mov         dword ptr [ebp-8],eax
 00480CA6    mov         eax,dword ptr [ebp+8]
 00480CA9    cmp         byte ptr [eax-9],0
>00480CAD    je          00480CC9
 00480CAF    mov         eax,dword ptr [ebp+8]
 00480CB2    mov         edx,dword ptr [eax-8]
 00480CB5    mov         eax,dword ptr [ebp+8]
 00480CB8    mov         eax,dword ptr [eax-10]
 00480CBB    call        GetOrdProp
 00480CC0    cmp         eax,dword ptr [ebp-8]
 00480CC3    sete        byte ptr [ebp-1]
>00480CC7    jmp         00480CEF
 00480CC9    mov         eax,dword ptr [ebp+8]
 00480CCC    mov         eax,dword ptr [eax-8]
 00480CCF    mov         eax,dword ptr [eax+14]
 00480CD2    mov         dword ptr [ebp-0C],eax
 00480CD5    cmp         dword ptr [ebp-0C],80000000
>00480CDC    je          00480CE6
 00480CDE    mov         eax,dword ptr [ebp-8]
 00480CE1    cmp         eax,dword ptr [ebp-0C]
>00480CE4    je          00480CEA
 00480CE6    xor         eax,eax
>00480CE8    jmp         00480CEC
 00480CEA    mov         al,1
 00480CEC    mov         byte ptr [ebp-1],al
 00480CEF    mov         al,byte ptr [ebp-1]
 00480CF2    mov         esp,ebp
 00480CF4    pop         ebp
 00480CF5    ret
end;*}

//00480CF8
{*function sub_00480CF8(?:?):?;
begin
 00480CF8    push        ebp
 00480CF9    mov         ebp,esp
 00480CFB    add         esp,0FFFFFFF0
 00480CFE    mov         eax,dword ptr [ebp+8]
 00480D01    mov         edx,dword ptr [eax-8]
 00480D04    mov         eax,dword ptr [ebp+8]
 00480D07    mov         eax,dword ptr [eax-4]
 00480D0A    call        GetFloatProp
 00480D0F    fstp        tbyte ptr [ebp-10]
 00480D12    wait
 00480D13    mov         eax,dword ptr [ebp+8]
 00480D16    cmp         byte ptr [eax-9],0
>00480D1A    je          00480D3B
 00480D1C    mov         eax,dword ptr [ebp+8]
 00480D1F    mov         edx,dword ptr [eax-8]
 00480D22    mov         eax,dword ptr [ebp+8]
 00480D25    mov         eax,dword ptr [eax-10]
 00480D28    call        GetFloatProp
 00480D2D    fld         tbyte ptr [ebp-10]
 00480D30    fcompp
 00480D32    fnstsw      al
 00480D34    sahf
 00480D35    sete        byte ptr [ebp-1]
>00480D39    jmp         00480D4B
 00480D3B    fld         tbyte ptr [ebp-10]
 00480D3E    fcomp       dword ptr ds:[480D54];0:Single
 00480D44    fnstsw      al
 00480D46    sahf
 00480D47    sete        byte ptr [ebp-1]
 00480D4B    mov         al,byte ptr [ebp-1]
 00480D4E    mov         esp,ebp
 00480D50    pop         ebp
 00480D51    ret
end;*}

//00480D58
{*function sub_00480D58(?:?):?;
begin
 00480D58    push        ebp
 00480D59    mov         ebp,esp
 00480D5B    add         esp,0FFFFFFF0
 00480D5E    mov         eax,dword ptr [ebp+8]
 00480D61    mov         edx,dword ptr [eax-8]
 00480D64    mov         eax,dword ptr [ebp+8]
 00480D67    mov         eax,dword ptr [eax-4]
 00480D6A    call        GetInt64Prop
 00480D6F    mov         dword ptr [ebp-10],eax
 00480D72    mov         dword ptr [ebp-0C],edx
 00480D75    mov         eax,dword ptr [ebp+8]
 00480D78    cmp         byte ptr [eax-9],0
>00480D7C    je          00480D9F
 00480D7E    mov         eax,dword ptr [ebp+8]
 00480D81    mov         edx,dword ptr [eax-8]
 00480D84    mov         eax,dword ptr [ebp+8]
 00480D87    mov         eax,dword ptr [eax-10]
 00480D8A    call        GetInt64Prop
 00480D8F    cmp         edx,dword ptr [ebp-0C]
>00480D92    jne         00480D97
 00480D94    cmp         eax,dword ptr [ebp-10]
 00480D97    sete        al
 00480D9A    mov         byte ptr [ebp-1],al
>00480D9D    jmp         00480DAF
 00480D9F    cmp         dword ptr [ebp-0C],0
>00480DA3    jne         00480DA9
 00480DA5    cmp         dword ptr [ebp-10],0
 00480DA9    sete        al
 00480DAC    mov         byte ptr [ebp-1],al
 00480DAF    mov         al,byte ptr [ebp-1]
 00480DB2    mov         esp,ebp
 00480DB4    pop         ebp
 00480DB5    ret
end;*}

//00480DB8
{*function sub_00480DB8(?:?):?;
begin
 00480DB8    push        ebp
 00480DB9    mov         ebp,esp
 00480DBB    push        0
 00480DBD    push        0
 00480DBF    push        0
 00480DC1    xor         eax,eax
 00480DC3    push        ebp
 00480DC4    push        480E3A
 00480DC9    push        dword ptr fs:[eax]
 00480DCC    mov         dword ptr fs:[eax],esp
 00480DCF    lea         ecx,[ebp-8]
 00480DD2    mov         eax,dword ptr [ebp+8]
 00480DD5    mov         edx,dword ptr [eax-8]
 00480DD8    mov         eax,dword ptr [ebp+8]
 00480DDB    mov         eax,dword ptr [eax-4]
 00480DDE    call        GetWideStrProp
 00480DE3    mov         eax,dword ptr [ebp+8]
 00480DE6    cmp         byte ptr [eax-9],0
>00480DEA    je          00480E11
 00480DEC    lea         ecx,[ebp-0C]
 00480DEF    mov         eax,dword ptr [ebp+8]
 00480DF2    mov         edx,dword ptr [eax-8]
 00480DF5    mov         eax,dword ptr [ebp+8]
 00480DF8    mov         eax,dword ptr [eax-10]
 00480DFB    call        GetWideStrProp
 00480E00    mov         edx,dword ptr [ebp-0C]
 00480E03    mov         eax,dword ptr [ebp-8]
 00480E06    call        @WStrCmp
 00480E0B    sete        byte ptr [ebp-1]
>00480E0F    jmp         00480E1F
 00480E11    mov         eax,dword ptr [ebp-8]
 00480E14    xor         edx,edx
 00480E16    call        @WStrCmp
 00480E1B    sete        byte ptr [ebp-1]
 00480E1F    xor         eax,eax
 00480E21    pop         edx
 00480E22    pop         ecx
 00480E23    pop         ecx
 00480E24    mov         dword ptr fs:[eax],edx
 00480E27    push        480E41
 00480E2C    lea         eax,[ebp-0C]
 00480E2F    mov         edx,2
 00480E34    call        @WStrArrayClr
 00480E39    ret
>00480E3A    jmp         @HandleFinally
>00480E3F    jmp         00480E2C
 00480E41    mov         al,byte ptr [ebp-1]
 00480E44    mov         esp,ebp
 00480E46    pop         ebp
 00480E47    ret
end;*}

//00480E48
{*function sub_00480E48(?:Longint; ?:?; ?:?):?;
begin
 00480E48    push        ebp
 00480E49    mov         ebp,esp
 00480E4B    add         esp,0FFFFFFF4
 00480E4E    mov         dword ptr [ebp-8],edx
 00480E51    mov         dword ptr [ebp-4],eax
 00480E54    cmp         dword ptr [ebp-4],0
>00480E58    je          00480E91
 00480E5A    mov         eax,dword ptr [ebp+8]
 00480E5D    mov         eax,dword ptr [eax-14]
 00480E60    mov         edx,dword ptr [ebp-4]
 00480E63    cmp         eax,dword ptr [edx+4]
>00480E66    jne         00480E91
 00480E68    cmp         dword ptr [ebp-8],0
>00480E6C    je          00480E91
 00480E6E    mov         eax,dword ptr [ebp+8]
 00480E71    mov         eax,dword ptr [eax-18]
 00480E74    mov         edx,dword ptr [ebp-8]
 00480E77    cmp         eax,dword ptr [edx+4]
>00480E7A    jne         00480E91
 00480E7C    mov         eax,dword ptr [ebp-8]
 00480E7F    mov         edx,dword ptr [eax+8]
 00480E82    mov         eax,dword ptr [ebp-4]
 00480E85    mov         eax,dword ptr [eax+8]
 00480E88    call        SameText
 00480E8D    test        al,al
>00480E8F    jne         00480E95
 00480E91    xor         eax,eax
>00480E93    jmp         00480E97
 00480E95    mov         al,1
 00480E97    mov         byte ptr [ebp-9],al
 00480E9A    mov         al,byte ptr [ebp-9]
 00480E9D    mov         esp,ebp
 00480E9F    pop         ebp
 00480EA0    ret
end;*}

//00480EA4
{*function sub_00480EA4(?:?):?;
begin
 00480EA4    push        ebp
 00480EA5    mov         ebp,esp
 00480EA7    add         esp,0FFFFFFF8
 00480EAA    xor         eax,eax
 00480EAC    mov         dword ptr [ebp-8],eax
 00480EAF    mov         eax,dword ptr [ebp+8]
 00480EB2    mov         eax,dword ptr [eax+8]
 00480EB5    cmp         byte ptr [eax-9],0
>00480EB9    je          00480EF8
 00480EBB    mov         eax,dword ptr [ebp+8]
 00480EBE    mov         eax,dword ptr [eax+8]
 00480EC1    mov         edx,dword ptr [eax-8]
 00480EC4    mov         eax,dword ptr [ebp+8]
 00480EC7    mov         eax,dword ptr [eax+8]
 00480ECA    mov         eax,dword ptr [eax-10]
 00480ECD    call        GetOrdProp
 00480ED2    mov         dword ptr [ebp-8],eax
 00480ED5    mov         eax,dword ptr [ebp+8]
 00480ED8    mov         eax,dword ptr [eax+8]
 00480EDB    push        eax
 00480EDC    mov         eax,dword ptr [ebp+8]
 00480EDF    mov         edx,dword ptr [eax-4]
 00480EE2    mov         eax,dword ptr [ebp-8]
 00480EE5    call        00480E48
 00480EEA    pop         ecx
 00480EEB    test        al,al
>00480EED    je          00480EF8
 00480EEF    mov         eax,dword ptr [ebp+8]
 00480EF2    mov         eax,dword ptr [eax-4]
 00480EF5    mov         dword ptr [ebp-8],eax
 00480EF8    mov         eax,dword ptr [ebp+8]
 00480EFB    mov         eax,dword ptr [eax-4]
 00480EFE    cmp         eax,dword ptr [ebp-8]
 00480F01    sete        byte ptr [ebp-1]
 00480F05    mov         al,byte ptr [ebp-1]
 00480F08    pop         ecx
 00480F09    pop         ecx
 00480F0A    pop         ebp
 00480F0B    ret
end;*}

//00480F0C
{*function sub_00480F0C(?:?):?;
begin
 00480F0C    push        ebp
 00480F0D    mov         ebp,esp
 00480F0F    add         esp,0FFFFFFF8
 00480F12    mov         byte ptr [ebp-5],1
 00480F16    mov         eax,dword ptr [ebp+8]
 00480F19    mov         edx,dword ptr [eax-8]
 00480F1C    mov         eax,dword ptr [ebp+8]
 00480F1F    mov         eax,dword ptr [eax-4]
 00480F22    call        GetOrdProp
 00480F27    mov         dword ptr [ebp-4],eax
 00480F2A    cmp         dword ptr [ebp-4],0
>00480F2E    jne         00480F41
 00480F30    push        ebp
 00480F31    call        00480EA4
 00480F36    pop         ecx
 00480F37    test        al,al
>00480F39    jne         00480F41
 00480F3B    mov         byte ptr [ebp-5],0
>00480F3F    jmp         00480F8C
 00480F41    mov         eax,dword ptr [ebp-4]
 00480F44    mov         edx,dword ptr ds:[475AD0];TPersistent
 00480F4A    call        @IsClass
 00480F4F    test        al,al
>00480F51    je          00480F8C
 00480F53    mov         eax,dword ptr [ebp-4]
 00480F56    mov         edx,dword ptr ds:[47698C];TComponent
 00480F5C    call        @IsClass
 00480F61    test        al,al
>00480F63    je          00480F88
 00480F65    mov         eax,dword ptr [ebp-4]
 00480F68    test        byte ptr [eax+24],4
>00480F6C    jne         00480F88
 00480F6E    push        ebp
 00480F6F    call        00480EA4
 00480F74    pop         ecx
 00480F75    test        al,al
>00480F77    jne         00480F8C
 00480F79    mov         eax,dword ptr [ebp-4]
 00480F7C    cmp         dword ptr [eax+8],0
>00480F80    je          00480F8C
 00480F82    mov         byte ptr [ebp-5],0
>00480F86    jmp         00480F8C
 00480F88    mov         byte ptr [ebp-5],0
 00480F8C    mov         al,byte ptr [ebp-5]
 00480F8F    pop         ecx
 00480F90    pop         ecx
 00480F91    pop         ebp
 00480F92    ret
end;*}

//00480F94
{*function sub_00480F94(?:?):?;
begin
 00480F94    push        ebp
 00480F95    mov         ebp,esp
 00480F97    push        0
 00480F99    push        0
 00480F9B    push        0
 00480F9D    xor         eax,eax
 00480F9F    push        ebp
 00480FA0    push        481046
 00480FA5    push        dword ptr fs:[eax]
 00480FA8    mov         dword ptr fs:[eax],esp
 00480FAB    mov         eax,dword ptr [ebp+8]
 00480FAE    cmp         dword ptr [eax-4],0
 00480FB2    sete        byte ptr [ebp-1]
 00480FB6    mov         eax,dword ptr [ebp+8]
 00480FB9    mov         eax,dword ptr [eax+8]
 00480FBC    cmp         byte ptr [eax-9],0
>00480FC0    je          00481028
 00480FC2    lea         ecx,[ebp-8]
 00480FC5    mov         eax,dword ptr [ebp+8]
 00480FC8    mov         eax,dword ptr [eax+8]
 00480FCB    mov         edx,dword ptr [eax-8]
 00480FCE    mov         eax,dword ptr [ebp+8]
 00480FD1    mov         eax,dword ptr [eax+8]
 00480FD4    mov         eax,dword ptr [eax-10]
 00480FD7    call        004750F0
 00480FDC    mov         eax,dword ptr [ebp+8]
 00480FDF    mov         eax,dword ptr [eax-4]
 00480FE2    cmp         eax,dword ptr [ebp-8]
 00480FE5    sete        byte ptr [ebp-1]
 00480FE9    cmp         byte ptr [ebp-1],0
>00480FED    jne         00481028
 00480FEF    lea         eax,[ebp-0C]
 00480FF2    call        @IntfClear
 00480FF7    mov         ecx,eax
 00480FF9    mov         edx,481054
 00480FFE    mov         eax,dword ptr [ebp-8]
 00481001    call        0046CBD0
 00481006    test        al,al
>00481008    je          00481028
 0048100A    mov         eax,dword ptr [ebp+8]
 0048100D    mov         eax,dword ptr [eax+8]
 00481010    push        eax
 00481011    mov         eax,dword ptr [ebp-0C]
 00481014    mov         edx,dword ptr [eax]
 00481016    call        dword ptr [edx+0C]
 00481019    mov         edx,dword ptr [ebp+8]
 0048101C    mov         edx,dword ptr [edx-8]
 0048101F    call        00480E48
 00481024    pop         ecx
 00481025    mov         byte ptr [ebp-1],al
 00481028    xor         eax,eax
 0048102A    pop         edx
 0048102B    pop         ecx
 0048102C    pop         ecx
 0048102D    mov         dword ptr fs:[eax],edx
 00481030    push        48104D
 00481035    lea         eax,[ebp-0C]
 00481038    call        @IntfClear
 0048103D    lea         eax,[ebp-8]
 00481040    call        @IntfClear
 00481045    ret
>00481046    jmp         @HandleFinally
>0048104B    jmp         00481035
 0048104D    mov         al,byte ptr [ebp-1]
 00481050    mov         esp,ebp
 00481052    pop         ebp
 00481053    ret
end;*}

//00481064
{*function sub_00481064(?:?):?;
begin
 00481064    push        ebp
 00481065    mov         ebp,esp
 00481067    xor         ecx,ecx
 00481069    push        ecx
 0048106A    push        ecx
 0048106B    push        ecx
 0048106C    push        ecx
 0048106D    push        ecx
 0048106E    xor         eax,eax
 00481070    push        ebp
 00481071    push        481127
 00481076    push        dword ptr fs:[eax]
 00481079    mov         dword ptr fs:[eax],esp
 0048107C    mov         byte ptr [ebp-9],1
 00481080    lea         ecx,[ebp-4]
 00481083    mov         eax,dword ptr [ebp+8]
 00481086    mov         edx,dword ptr [eax-8]
 00481089    mov         eax,dword ptr [ebp+8]
 0048108C    mov         eax,dword ptr [eax-4]
 0048108F    call        004750F0
 00481094    cmp         dword ptr [ebp-4],0
>00481098    je          004810B5
 0048109A    lea         eax,[ebp-10]
 0048109D    call        @IntfClear
 004810A2    mov         ecx,eax
 004810A4    mov         edx,481138
 004810A9    mov         eax,dword ptr [ebp-4]
 004810AC    call        0046CBD0
 004810B1    test        al,al
>004810B3    jne         004810DE
 004810B5    mov         eax,dword ptr [ebp+8]
 004810B8    cmp         byte ptr [eax-9],0
>004810BC    je          00481101
 004810BE    lea         ecx,[ebp-14]
 004810C1    mov         eax,dword ptr [ebp+8]
 004810C4    mov         edx,dword ptr [eax-8]
 004810C7    mov         eax,dword ptr [ebp+8]
 004810CA    mov         eax,dword ptr [eax-10]
 004810CD    call        004750F0
 004810D2    cmp         dword ptr [ebp-14],0
>004810D6    je          00481101
 004810D8    mov         byte ptr [ebp-9],0
>004810DC    jmp         00481101
 004810DE    mov         eax,dword ptr [ebp-10]
 004810E1    mov         edx,dword ptr [eax]
 004810E3    call        dword ptr [edx+0C]
 004810E6    mov         dword ptr [ebp-8],eax
 004810E9    push        ebp
 004810EA    call        00480F94
 004810EF    pop         ecx
 004810F0    test        al,al
>004810F2    jne         00481101
 004810F4    mov         eax,dword ptr [ebp-8]
 004810F7    cmp         dword ptr [eax+8],0
>004810FB    je          00481101
 004810FD    mov         byte ptr [ebp-9],0
 00481101    xor         eax,eax
 00481103    pop         edx
 00481104    pop         ecx
 00481105    pop         ecx
 00481106    mov         dword ptr fs:[eax],edx
 00481109    push        48112E
 0048110E    lea         eax,[ebp-14]
 00481111    call        @IntfClear
 00481116    lea         eax,[ebp-10]
 00481119    call        @IntfClear
 0048111E    lea         eax,[ebp-4]
 00481121    call        @IntfClear
 00481126    ret
>00481127    jmp         @HandleFinally
>0048112C    jmp         0048110E
 0048112E    mov         al,byte ptr [ebp-9]
 00481131    mov         esp,ebp
 00481133    pop         ebp
 00481134    ret
end;*}

//00481148
{*function sub_00481148(?:?):?;
begin
 00481148    push        ebp
 00481149    mov         ebp,esp
 0048114B    add         esp,0FFFFFEE8
 00481151    lea         ecx,[ebp-0C]
 00481154    mov         eax,dword ptr [ebp+8]
 00481157    mov         edx,dword ptr [eax-8]
 0048115A    mov         eax,dword ptr [ebp+8]
 0048115D    mov         eax,dword ptr [eax-4]
 00481160    call        GetMethodProp
 00481165    xor         eax,eax
 00481167    mov         dword ptr [ebp-10],eax
 0048116A    mov         eax,dword ptr [ebp+8]
 0048116D    cmp         byte ptr [eax-9],0
>00481171    je          0048118D
 00481173    lea         ecx,[ebp-18]
 00481176    mov         eax,dword ptr [ebp+8]
 00481179    mov         edx,dword ptr [eax-8]
 0048117C    mov         eax,dword ptr [ebp+8]
 0048117F    mov         eax,dword ptr [eax-10]
 00481182    call        GetMethodProp
 00481187    mov         eax,dword ptr [ebp-18]
 0048118A    mov         dword ptr [ebp-10],eax
 0048118D    mov         eax,dword ptr [ebp-0C]
 00481190    cmp         eax,dword ptr [ebp-10]
>00481193    je          004811BE
 00481195    cmp         dword ptr [ebp-0C],0
>00481199    je          004811BA
 0048119B    lea         ecx,[ebp-118]
 004811A1    mov         eax,dword ptr [ebp+8]
 004811A4    mov         eax,dword ptr [eax-1C]
 004811A7    mov         eax,dword ptr [eax]
 004811A9    mov         edx,dword ptr [ebp-0C]
 004811AC    call        TObject.MethodName
 004811B1    cmp         byte ptr [ebp-118],0
>004811B8    je          004811BE
 004811BA    xor         eax,eax
>004811BC    jmp         004811C0
 004811BE    mov         al,1
 004811C0    mov         byte ptr [ebp-1],al
 004811C3    mov         al,byte ptr [ebp-1]
 004811C6    mov         esp,ebp
 004811C8    pop         ebp
 004811C9    ret
end;*}

//004811CC
{*function sub_004811CC(?:?):?;
begin
 004811CC    push        ebp
 004811CD    mov         ebp,esp
 004811CF    mov         ecx,5
 004811D4    push        0
 004811D6    push        0
 004811D8    dec         ecx
>004811D9    jne         004811D4
 004811DB    xor         eax,eax
 004811DD    push        ebp
 004811DE    push        481256
 004811E3    push        dword ptr fs:[eax]
 004811E6    mov         dword ptr fs:[eax],esp
 004811E9    lea         ecx,[ebp-18]
 004811EC    mov         eax,dword ptr [ebp+8]
 004811EF    mov         edx,dword ptr [eax-8]
 004811F2    mov         eax,dword ptr [ebp+8]
 004811F5    mov         eax,dword ptr [eax-4]
 004811F8    call        GetVariantProp
 004811FD    mov         eax,dword ptr [ebp+8]
 00481200    cmp         byte ptr [eax-9],0
>00481204    je          0048122A
 00481206    lea         ecx,[ebp-28]
 00481209    mov         eax,dword ptr [ebp+8]
 0048120C    mov         edx,dword ptr [eax-8]
 0048120F    mov         eax,dword ptr [ebp+8]
 00481212    mov         eax,dword ptr [eax-10]
 00481215    call        GetVariantProp
 0048121A    lea         edx,[ebp-28]
 0048121D    lea         eax,[ebp-18]
 00481220    call        VarSameValue
 00481225    mov         byte ptr [ebp-1],al
>00481228    jmp         00481235
 0048122A    lea         eax,[ebp-18]
 0048122D    call        VarIsClear
 00481232    mov         byte ptr [ebp-1],al
 00481235    xor         eax,eax
 00481237    pop         edx
 00481238    pop         ecx
 00481239    pop         ecx
 0048123A    mov         dword ptr fs:[eax],edx
 0048123D    push        48125D
 00481242    lea         eax,[ebp-28]
 00481245    mov         edx,dword ptr ds:[4010C8];Variant
 0048124B    mov         ecx,2
 00481250    call        @FinalizeArray
 00481255    ret
>00481256    jmp         @HandleFinally
>0048125B    jmp         00481242
 0048125D    mov         al,byte ptr [ebp-1]
 00481260    mov         esp,ebp
 00481262    pop         ebp
 00481263    ret
end;*}

//00481264
function IsDefaultPropertyValue(Instance:TObject; PropInfo:PPropInfo; OnGetLookupInfo:TGetLookupInfoEvent):Boolean;
begin
{*
 00481264    push        ebp
 00481265    mov         ebp,esp
 00481267    add         esp,0FFFFFFDC
 0048126A    mov         dword ptr [ebp-8],edx
 0048126D    mov         dword ptr [ebp-4],eax
 00481270    xor         eax,eax
 00481272    mov         dword ptr [ebp-10],eax
 00481275    xor         eax,eax
 00481277    mov         dword ptr [ebp-18],eax
 0048127A    xor         eax,eax
 0048127C    mov         dword ptr [ebp-1C],eax
 0048127F    xor         eax,eax
 00481281    mov         dword ptr [ebp-14],eax
 00481284    cmp         word ptr [ebp+0A],0
>00481289    je          0048129F
 0048128B    lea         eax,[ebp-1C]
 0048128E    push        eax
 0048128F    lea         eax,[ebp-14]
 00481292    push        eax
 00481293    lea         ecx,[ebp-18]
 00481296    lea         edx,[ebp-10]
 00481299    mov         eax,dword ptr [ebp+0C]
 0048129C    call        dword ptr [ebp+8]
 0048129F    mov         ecx,dword ptr [ebp-14]
 004812A2    mov         edx,dword ptr [ebp-18]
 004812A5    mov         eax,dword ptr [ebp-10]
 004812A8    call        AncestorIsValid
 004812AD    mov         byte ptr [ebp-9],al
 004812B0    mov         byte ptr [ebp-1D],1
 004812B4    mov         eax,dword ptr [ebp-8]
 004812B7    cmp         dword ptr [eax+4],0
>004812BB    je          004813CF
 004812C1    mov         eax,dword ptr [ebp-8]
 004812C4    cmp         dword ptr [eax+8],0
>004812C8    jne         0048130D
 004812CA    mov         eax,dword ptr [ebp-8]
 004812CD    mov         eax,dword ptr [eax]
 004812CF    mov         eax,dword ptr [eax]
 004812D1    cmp         byte ptr [eax],7
>004812D4    jne         004813CF
 004812DA    mov         edx,dword ptr [ebp-8]
 004812DD    mov         eax,dword ptr [ebp-4]
 004812E0    call        GetOrdProp
 004812E5    mov         edx,dword ptr ds:[47698C];TComponent
 004812EB    call        @IsClass
 004812F0    test        al,al
>004812F2    je          004813CF
 004812F8    mov         edx,dword ptr [ebp-8]
 004812FB    mov         eax,dword ptr [ebp-4]
 004812FE    call        GetOrdProp
 00481303    test        byte ptr [eax+24],4
>00481307    je          004813CF
 0048130D    mov         eax,dword ptr [ebp-8]
 00481310    mov         eax,dword ptr [eax]
 00481312    mov         eax,dword ptr [eax]
 00481314    mov         dword ptr [ebp-24],eax
 00481317    mov         eax,dword ptr [ebp-24]
 0048131A    movzx       eax,byte ptr [eax]
 0048131D    cmp         eax,10
>00481320    ja          004813CF
 00481326    jmp         dword ptr [eax*4+48132D]
 00481326    dd          004813CF
 00481326    dd          00481371
 00481326    dd          00481371
 00481326    dd          00481371
 00481326    dd          0048137D
 00481326    dd          00481389
 00481326    dd          00481371
 00481326    dd          00481395
 00481326    dd          004813A1
 00481326    dd          004813CF
 00481326    dd          00481389
 00481326    dd          00481389
 00481326    dd          004813AD
 00481326    dd          004813CF
 00481326    dd          004813CF
 00481326    dd          004813C5
 00481326    dd          004813B9
 00481371    push        ebp
 00481372    call        00480C8C
 00481377    pop         ecx
 00481378    mov         byte ptr [ebp-1D],al
>0048137B    jmp         004813CF
 0048137D    push        ebp
 0048137E    call        00480CF8
 00481383    pop         ecx
 00481384    mov         byte ptr [ebp-1D],al
>00481387    jmp         004813CF
 00481389    push        ebp
 0048138A    call        00480DB8
 0048138F    pop         ecx
 00481390    mov         byte ptr [ebp-1D],al
>00481393    jmp         004813CF
 00481395    push        ebp
 00481396    call        00480F0C
 0048139B    pop         ecx
 0048139C    mov         byte ptr [ebp-1D],al
>0048139F    jmp         004813CF
 004813A1    push        ebp
 004813A2    call        00481148
 004813A7    pop         ecx
 004813A8    mov         byte ptr [ebp-1D],al
>004813AB    jmp         004813CF
 004813AD    push        ebp
 004813AE    call        004811CC
 004813B3    pop         ecx
 004813B4    mov         byte ptr [ebp-1D],al
>004813B7    jmp         004813CF
 004813B9    push        ebp
 004813BA    call        00480D58
 004813BF    pop         ecx
 004813C0    mov         byte ptr [ebp-1D],al
>004813C3    jmp         004813CF
 004813C5    push        ebp
 004813C6    call        00481064
 004813CB    pop         ecx
 004813CC    mov         byte ptr [ebp-1D],al
 004813CF    mov         al,byte ptr [ebp-1D]
 004813D2    mov         esp,ebp
 004813D4    pop         ebp
 004813D5    ret         8
*}
end;

//004813D8
procedure WritePropPath;
begin
{*
 004813D8    push        ebp
 004813D9    mov         ebp,esp
 004813DB    push        0
 004813DD    xor         eax,eax
 004813DF    push        ebp
 004813E0    push        481420
 004813E5    push        dword ptr fs:[eax]
 004813E8    mov         dword ptr fs:[eax],esp
 004813EB    lea         eax,[ebp-4]
 004813EE    mov         edx,dword ptr [ebp+8]
 004813F1    mov         edx,dword ptr [edx-8]
 004813F4    add         edx,1A
 004813F7    call        @LStrFromString
 004813FC    mov         edx,dword ptr [ebp-4]
 004813FF    mov         eax,dword ptr [ebp+8]
 00481402    mov         eax,dword ptr [eax-4]
 00481405    call        TWriter.WritePropName
 0048140A    xor         eax,eax
 0048140C    pop         edx
 0048140D    pop         ecx
 0048140E    pop         ecx
 0048140F    mov         dword ptr fs:[eax],edx
 00481412    push        481427
 00481417    lea         eax,[ebp-4]
 0048141A    call        @LStrClr
 0048141F    ret
>00481420    jmp         @HandleFinally
>00481425    jmp         00481417
 00481427    pop         ecx
 00481428    pop         ebp
 00481429    ret
*}
end;

//0048142C
{*procedure sub_0048142C(?:?; ?:?);
begin
 0048142C    push        ebp
 0048142D    mov         ebp,esp
 0048142F    add         esp,0FFFFFFF0
 00481432    xor         edx,edx
 00481434    mov         dword ptr [ebp-10],edx
 00481437    mov         dword ptr [ebp-4],eax
 0048143A    xor         eax,eax
 0048143C    push        ebp
 0048143D    push        4814C3
 00481442    push        dword ptr fs:[eax]
 00481445    mov         dword ptr fs:[eax],esp
 00481448    mov         eax,dword ptr [ebp+8]
 0048144B    mov         eax,dword ptr [eax-0C]
 0048144E    call        GetTypeData
 00481453    mov         eax,dword ptr [eax+1]
 00481456    mov         eax,dword ptr [eax]
 00481458    mov         dword ptr [ebp-0C],eax
 0048145B    mov         eax,dword ptr [ebp+8]
 0048145E    mov         eax,dword ptr [eax-4]
 00481461    mov         dl,0B
 00481463    call        TWriter.WriteValue
 00481468    xor         eax,eax
 0048146A    mov         dword ptr [ebp-8],eax
 0048146D    mov         eax,dword ptr [ebp-8]
 00481470    cmp         eax,1F
>00481473    ja          00481479
 00481475    bt          dword ptr [ebp-4],eax
>00481479    jae         00481497
 0048147B    lea         ecx,[ebp-10]
 0048147E    mov         edx,dword ptr [ebp-8]
 00481481    mov         eax,dword ptr [ebp-0C]
 00481484    call        00474300
 00481489    mov         edx,dword ptr [ebp-10]
 0048148C    mov         eax,dword ptr [ebp+8]
 0048148F    mov         eax,dword ptr [eax-4]
 00481492    call        00482300
 00481497    inc         dword ptr [ebp-8]
 0048149A    cmp         dword ptr [ebp-8],20
>0048149E    jne         0048146D
 004814A0    mov         eax,dword ptr [ebp+8]
 004814A3    mov         eax,dword ptr [eax-4]
 004814A6    xor         edx,edx
 004814A8    call        00482300
 004814AD    xor         eax,eax
 004814AF    pop         edx
 004814B0    pop         ecx
 004814B1    pop         ecx
 004814B2    mov         dword ptr fs:[eax],edx
 004814B5    push        4814CA
 004814BA    lea         eax,[ebp-10]
 004814BD    call        @LStrClr
 004814C2    ret
>004814C3    jmp         @HandleFinally
>004814C8    jmp         004814BA
 004814CA    mov         esp,ebp
 004814CC    pop         ebp
 004814CD    ret
end;*}

//004814D0
{*procedure sub_004814D0(?:?; ?:?; ?:?);
begin
 004814D0    push        ebp
 004814D1    mov         ebp,esp
 004814D3    add         esp,0FFFFFFF0
 004814D6    xor         ecx,ecx
 004814D8    mov         dword ptr [ebp-0C],ecx
 004814DB    mov         dword ptr [ebp-8],edx
 004814DE    mov         dword ptr [ebp-4],eax
 004814E1    xor         eax,eax
 004814E3    push        ebp
 004814E4    push        481541
 004814E9    push        dword ptr fs:[eax]
 004814EC    mov         dword ptr fs:[eax],esp
 004814EF    mov         eax,dword ptr [ebp-4]
 004814F2    call        00477E1C
 004814F7    mov         dword ptr [ebp-10],eax
 004814FA    cmp         dword ptr [ebp-10],0
>004814FE    je          0048151D
 00481500    lea         edx,[ebp-0C]
 00481503    mov         eax,dword ptr [ebp-8]
 00481506    call        dword ptr [ebp-10]
 00481509    test        al,al
>0048150B    je          0048151D
 0048150D    mov         eax,dword ptr [ebp+8]
 00481510    mov         eax,dword ptr [eax-4]
 00481513    mov         edx,dword ptr [ebp-0C]
 00481516    call        TWriter.WriteIdent
>0048151B    jmp         0048152B
 0048151D    mov         eax,dword ptr [ebp+8]
 00481520    mov         eax,dword ptr [eax-4]
 00481523    mov         edx,dword ptr [ebp-8]
 00481526    call        00480A20
 0048152B    xor         eax,eax
 0048152D    pop         edx
 0048152E    pop         ecx
 0048152F    pop         ecx
 00481530    mov         dword ptr fs:[eax],edx
 00481533    push        481548
 00481538    lea         eax,[ebp-0C]
 0048153B    call        @LStrClr
 00481540    ret
>00481541    jmp         @HandleFinally
>00481546    jmp         00481538
 00481548    mov         esp,ebp
 0048154A    pop         ebp
 0048154B    ret
end;*}

//0048154C
procedure WriteCollectionProp(Collection:TCollection);
begin
{*
 0048154C    push        ebp
 0048154D    mov         ebp,esp
 0048154F    add         esp,0FFFFFFF8
 00481552    xor         edx,edx
 00481554    mov         dword ptr [ebp-8],edx
 00481557    mov         dword ptr [ebp-4],eax
 0048155A    xor         eax,eax
 0048155C    push        ebp
 0048155D    push        4815E9
 00481562    push        dword ptr fs:[eax]
 00481565    mov         dword ptr fs:[eax],esp
 00481568    mov         eax,dword ptr [ebp+8]
 0048156B    push        eax
 0048156C    call        WritePropPath
 00481571    pop         ecx
 00481572    lea         eax,[ebp-8]
 00481575    mov         edx,dword ptr [ebp+8]
 00481578    mov         edx,dword ptr [edx-4]
 0048157B    mov         edx,dword ptr [edx+2C]
 0048157E    call        @LStrLAsg
 00481583    xor         eax,eax
 00481585    push        ebp
 00481586    push        4815CC
 0048158B    push        dword ptr fs:[eax]
 0048158E    mov         dword ptr fs:[eax],esp
 00481591    mov         eax,dword ptr [ebp+8]
 00481594    mov         eax,dword ptr [eax-4]
 00481597    add         eax,2C
 0048159A    call        @LStrClr
 0048159F    mov         eax,dword ptr [ebp+8]
 004815A2    mov         eax,dword ptr [eax-4]
 004815A5    mov         edx,dword ptr [ebp-4]
 004815A8    call        004801CC
 004815AD    xor         eax,eax
 004815AF    pop         edx
 004815B0    pop         ecx
 004815B1    pop         ecx
 004815B2    mov         dword ptr fs:[eax],edx
 004815B5    push        4815D3
 004815BA    mov         eax,dword ptr [ebp+8]
 004815BD    mov         eax,dword ptr [eax-4]
 004815C0    add         eax,2C
 004815C3    mov         edx,dword ptr [ebp-8]
 004815C6    call        @LStrAsg
 004815CB    ret
>004815CC    jmp         @HandleFinally
>004815D1    jmp         004815BA
 004815D3    xor         eax,eax
 004815D5    pop         edx
 004815D6    pop         ecx
 004815D7    pop         ecx
 004815D8    mov         dword ptr fs:[eax],edx
 004815DB    push        4815F0
 004815E0    lea         eax,[ebp-8]
 004815E3    call        @LStrClr
 004815E8    ret
>004815E9    jmp         @HandleFinally
>004815EE    jmp         004815E0
 004815F0    pop         ecx
 004815F1    pop         ecx
 004815F2    pop         ebp
 004815F3    ret
*}
end;

//004815F4
procedure WriteOrdProp;
begin
{*
 004815F4    push        ebp
 004815F5    mov         ebp,esp
 004815F7    add         esp,0FFFFFFF8
 004815FA    xor         eax,eax
 004815FC    mov         dword ptr [ebp-8],eax
 004815FF    xor         eax,eax
 00481601    push        ebp
 00481602    push        4816B2
 00481607    push        dword ptr fs:[eax]
 0048160A    mov         dword ptr fs:[eax],esp
 0048160D    mov         eax,dword ptr [ebp+8]
 00481610    mov         edx,dword ptr [eax-8]
 00481613    mov         eax,dword ptr [ebp+8]
 00481616    mov         eax,dword ptr [eax-10]
 00481619    call        GetOrdProp
 0048161E    mov         dword ptr [ebp-4],eax
 00481621    mov         eax,dword ptr [ebp+8]
 00481624    push        eax
 00481625    call        WritePropPath
 0048162A    pop         ecx
 0048162B    mov         eax,dword ptr [ebp+8]
 0048162E    mov         eax,dword ptr [eax-0C]
 00481631    mov         al,byte ptr [eax]
 00481633    dec         al
>00481635    je          00481645
 00481637    dec         al
>00481639    je          0048165E
 0048163B    dec         al
>0048163D    je          0048167D
 0048163F    sub         al,3
>00481641    je          0048166E
>00481643    jmp         0048169C
 00481645    mov         eax,dword ptr [ebp+8]
 00481648    push        eax
 00481649    mov         eax,dword ptr [ebp+8]
 0048164C    mov         eax,dword ptr [eax-8]
 0048164F    mov         eax,dword ptr [eax]
 00481651    mov         eax,dword ptr [eax]
 00481653    mov         edx,dword ptr [ebp-4]
 00481656    call        004814D0
 0048165B    pop         ecx
>0048165C    jmp         0048169C
 0048165E    mov         edx,dword ptr [ebp-4]
 00481661    mov         eax,dword ptr [ebp+8]
 00481664    mov         eax,dword ptr [eax-4]
 00481667    call        00480174
>0048166C    jmp         0048169C
 0048166E    mov         eax,dword ptr [ebp+8]
 00481671    push        eax
 00481672    mov         eax,dword ptr [ebp-4]
 00481675    call        0048142C
 0048167A    pop         ecx
>0048167B    jmp         0048169C
 0048167D    lea         ecx,[ebp-8]
 00481680    mov         eax,dword ptr [ebp+8]
 00481683    mov         eax,dword ptr [eax-0C]
 00481686    mov         edx,dword ptr [ebp-4]
 00481689    call        00474300
 0048168E    mov         edx,dword ptr [ebp-8]
 00481691    mov         eax,dword ptr [ebp+8]
 00481694    mov         eax,dword ptr [eax-4]
 00481697    call        TWriter.WriteIdent
 0048169C    xor         eax,eax
 0048169E    pop         edx
 0048169F    pop         ecx
 004816A0    pop         ecx
 004816A1    mov         dword ptr fs:[eax],edx
 004816A4    push        4816B9
 004816A9    lea         eax,[ebp-8]
 004816AC    call        @LStrClr
 004816B1    ret
>004816B2    jmp         @HandleFinally
>004816B7    jmp         004816A9
 004816B9    pop         ecx
 004816BA    pop         ecx
 004816BB    pop         ebp
 004816BC    ret
*}
end;

//004816C0
procedure WriteFloatProp;
begin
{*
 004816C0    push        ebp
 004816C1    mov         ebp,esp
 004816C3    add         esp,0FFFFFFF0
 004816C6    mov         eax,dword ptr [ebp+8]
 004816C9    mov         edx,dword ptr [eax-8]
 004816CC    mov         eax,dword ptr [ebp+8]
 004816CF    mov         eax,dword ptr [eax-10]
 004816D2    call        GetFloatProp
 004816D7    fstp        tbyte ptr [ebp-10]
 004816DA    wait
 004816DB    mov         eax,dword ptr [ebp+8]
 004816DE    push        eax
 004816DF    call        WritePropPath
 004816E4    pop         ecx
 004816E5    mov         ax,word ptr [ebp-8]
 004816E9    push        eax
 004816EA    push        dword ptr [ebp-0C]
 004816ED    push        dword ptr [ebp-10]
 004816F0    mov         eax,dword ptr [ebp+8]
 004816F3    mov         eax,dword ptr [eax-4]
 004816F6    call        TWriter.WriteFloat
 004816FB    mov         esp,ebp
 004816FD    pop         ebp
 004816FE    ret
*}
end;

//00481700
procedure WriteInt64Prop;
begin
{*
 00481700    push        ebp
 00481701    mov         ebp,esp
 00481703    add         esp,0FFFFFFF8
 00481706    mov         eax,dword ptr [ebp+8]
 00481709    mov         edx,dword ptr [eax-8]
 0048170C    mov         eax,dword ptr [ebp+8]
 0048170F    mov         eax,dword ptr [eax-10]
 00481712    call        GetInt64Prop
 00481717    mov         dword ptr [ebp-8],eax
 0048171A    mov         dword ptr [ebp-4],edx
 0048171D    mov         eax,dword ptr [ebp+8]
 00481720    push        eax
 00481721    call        WritePropPath
 00481726    pop         ecx
 00481727    push        dword ptr [ebp-4]
 0048172A    push        dword ptr [ebp-8]
 0048172D    mov         eax,dword ptr [ebp+8]
 00481730    mov         eax,dword ptr [eax-4]
 00481733    call        TWriter.WriteInteger
 00481738    pop         ecx
 00481739    pop         ecx
 0048173A    pop         ebp
 0048173B    ret
*}
end;

//0048173C
procedure WriteStrProp;
begin
{*
 0048173C    push        ebp
 0048173D    mov         ebp,esp
 0048173F    push        0
 00481741    xor         eax,eax
 00481743    push        ebp
 00481744    push        481791
 00481749    push        dword ptr fs:[eax]
 0048174C    mov         dword ptr fs:[eax],esp
 0048174F    lea         ecx,[ebp-4]
 00481752    mov         eax,dword ptr [ebp+8]
 00481755    mov         edx,dword ptr [eax-8]
 00481758    mov         eax,dword ptr [ebp+8]
 0048175B    mov         eax,dword ptr [eax-10]
 0048175E    call        GetWideStrProp
 00481763    mov         eax,dword ptr [ebp+8]
 00481766    push        eax
 00481767    call        WritePropPath
 0048176C    pop         ecx
 0048176D    mov         eax,dword ptr [ebp+8]
 00481770    mov         eax,dword ptr [eax-4]
 00481773    mov         edx,dword ptr [ebp-4]
 00481776    call        TWriter.WriteWideString
 0048177B    xor         eax,eax
 0048177D    pop         edx
 0048177E    pop         ecx
 0048177F    pop         ecx
 00481780    mov         dword ptr fs:[eax],edx
 00481783    push        481798
 00481788    lea         eax,[ebp-4]
 0048178B    call        @WStrClr
 00481790    ret
>00481791    jmp         @HandleFinally
>00481796    jmp         00481788
 00481798    pop         ecx
 00481799    pop         ebp
 0048179A    ret
*}
end;

//0048179C
{*function sub_0048179C(?:?; ?:?):?;
begin
 0048179C    push        ebp
 0048179D    mov         ebp,esp
 0048179F    add         esp,0FFFFFFF4
 004817A2    mov         dword ptr [ebp-8],edx
 004817A5    mov         dword ptr [ebp-4],eax
 004817A8    mov         byte ptr [ebp-9],1
 004817AC    cmp         dword ptr [ebp-4],0
>004817B0    je          004817C9
 004817B2    mov         eax,dword ptr [ebp-4]
 004817B5    cmp         eax,dword ptr [ebp-8]
>004817B8    je          004817CD
 004817BA    mov         eax,dword ptr [ebp-4]
 004817BD    mov         eax,dword ptr [eax+4]
 004817C0    mov         dword ptr [ebp-4],eax
 004817C3    cmp         dword ptr [ebp-4],0
>004817C7    jne         004817B2
 004817C9    mov         byte ptr [ebp-9],0
 004817CD    mov         al,byte ptr [ebp-9]
 004817D0    mov         esp,ebp
 004817D2    pop         ebp
 004817D3    ret
end;*}

//004817D4
function GetComponentValue(Component:TComponent):AnsiString;
begin
{*
 004817D4    push        ebp
 004817D5    mov         ebp,esp
 004817D7    add         esp,0FFFFFFF4
 004817DA    xor         ecx,ecx
 004817DC    mov         dword ptr [ebp-0C],ecx
 004817DF    mov         dword ptr [ebp-8],edx
 004817E2    mov         dword ptr [ebp-4],eax
 004817E5    xor         eax,eax
 004817E7    push        ebp
 004817E8    push        481905
 004817ED    push        dword ptr fs:[eax]
 004817F0    mov         dword ptr fs:[eax],esp
 004817F3    mov         eax,dword ptr [ebp+8]
 004817F6    mov         eax,dword ptr [eax-4]
 004817F9    mov         eax,dword ptr [eax+1C]
 004817FC    mov         edx,dword ptr [ebp-4]
 004817FF    cmp         eax,dword ptr [edx+4]
>00481802    jne         00481817
 00481804    mov         eax,dword ptr [ebp-8]
 00481807    mov         edx,dword ptr [ebp-4]
 0048180A    mov         edx,dword ptr [edx+8]
 0048180D    call        @LStrAsg
>00481812    jmp         004818EF
 00481817    mov         eax,dword ptr [ebp+8]
 0048181A    mov         eax,dword ptr [eax-4]
 0048181D    mov         eax,dword ptr [eax+1C]
 00481820    cmp         eax,dword ptr [ebp-4]
>00481823    jne         00481837
 00481825    mov         eax,dword ptr [ebp-8]
 00481828    mov         edx,481918;'Owner'
 0048182D    call        @LStrAsg
>00481832    jmp         004818EF
 00481837    mov         eax,dword ptr [ebp-4]
 0048183A    cmp         dword ptr [eax+4],0
>0048183E    je          004818C9
 00481844    mov         eax,dword ptr [ebp-4]
 00481847    mov         eax,dword ptr [eax+4]
 0048184A    cmp         dword ptr [eax+8],0
>0048184E    je          004818C9
 00481850    mov         eax,dword ptr [ebp-4]
 00481853    cmp         dword ptr [eax+8],0
>00481857    je          004818C9
 00481859    mov         eax,dword ptr [ebp+8]
 0048185C    push        eax
 0048185D    mov         eax,dword ptr [ebp+8]
 00481860    mov         eax,dword ptr [eax-4]
 00481863    mov         edx,dword ptr [eax+1C]
 00481866    mov         eax,dword ptr [ebp-4]
 00481869    mov         eax,dword ptr [eax+4]
 0048186C    call        0048179C
 00481871    pop         ecx
 00481872    test        al,al
>00481874    je          004818A6
 00481876    mov         eax,dword ptr [ebp+8]
 00481879    push        eax
 0048187A    lea         edx,[ebp-0C]
 0048187D    mov         eax,dword ptr [ebp-4]
 00481880    mov         eax,dword ptr [eax+4]
 00481883    call        GetComponentValue
 00481888    pop         ecx
 00481889    push        dword ptr [ebp-0C]
 0048188C    push        481928;'.'
 00481891    mov         eax,dword ptr [ebp-4]
 00481894    push        dword ptr [eax+8]
 00481897    mov         eax,dword ptr [ebp-8]
 0048189A    mov         edx,3
 0048189F    call        @LStrCatN
>004818A4    jmp         004818EF
 004818A6    mov         eax,dword ptr [ebp-4]
 004818A9    mov         eax,dword ptr [eax+4]
 004818AC    push        dword ptr [eax+8]
 004818AF    push        481928;'.'
 004818B4    mov         eax,dword ptr [ebp-4]
 004818B7    push        dword ptr [eax+8]
 004818BA    mov         eax,dword ptr [ebp-8]
 004818BD    mov         edx,3
 004818C2    call        @LStrCatN
>004818C7    jmp         004818EF
 004818C9    mov         eax,dword ptr [ebp-4]
 004818CC    cmp         dword ptr [eax+8],0
>004818D0    je          004818E7
 004818D2    mov         eax,dword ptr [ebp-8]
 004818D5    mov         ecx,481934;'.Owner'
 004818DA    mov         edx,dword ptr [ebp-4]
 004818DD    mov         edx,dword ptr [edx+8]
 004818E0    call        @LStrCat3
>004818E5    jmp         004818EF
 004818E7    mov         eax,dword ptr [ebp-8]
 004818EA    call        @LStrClr
 004818EF    xor         eax,eax
 004818F1    pop         edx
 004818F2    pop         ecx
 004818F3    pop         ecx
 004818F4    mov         dword ptr fs:[eax],edx
 004818F7    push        48190C
 004818FC    lea         eax,[ebp-0C]
 004818FF    call        @LStrClr
 00481904    ret
>00481905    jmp         @HandleFinally
>0048190A    jmp         004818FC
 0048190C    mov         esp,ebp
 0048190E    pop         ebp
 0048190F    ret
*}
end;

//0048193C
procedure WriteObjectProp;
begin
{*
 0048193C    push        ebp
 0048193D    mov         ebp,esp
 0048193F    xor         ecx,ecx
 00481941    push        ecx
 00481942    push        ecx
 00481943    push        ecx
 00481944    push        ecx
 00481945    push        ecx
 00481946    xor         eax,eax
 00481948    push        ebp
 00481949    push        481B30
 0048194E    push        dword ptr fs:[eax]
 00481951    mov         dword ptr fs:[eax],esp
 00481954    mov         eax,dword ptr [ebp+8]
 00481957    mov         edx,dword ptr [eax-8]
 0048195A    mov         eax,dword ptr [ebp+8]
 0048195D    mov         eax,dword ptr [eax-10]
 00481960    call        GetOrdProp
 00481965    mov         dword ptr [ebp-4],eax
 00481968    cmp         dword ptr [ebp-4],0
>0048196C    jne         0048198A
 0048196E    mov         eax,dword ptr [ebp+8]
 00481971    push        eax
 00481972    call        WritePropPath
 00481977    pop         ecx
 00481978    mov         eax,dword ptr [ebp+8]
 0048197B    mov         eax,dword ptr [eax-4]
 0048197E    mov         dl,0D
 00481980    call        TWriter.WriteValue
>00481985    jmp         00481B15
 0048198A    mov         eax,dword ptr [ebp-4]
 0048198D    mov         edx,dword ptr ds:[475AD0];TPersistent
 00481993    call        @IsClass
 00481998    test        al,al
>0048199A    je          00481B15
 004819A0    mov         eax,dword ptr [ebp-4]
 004819A3    mov         edx,dword ptr ds:[47698C];TComponent
 004819A9    call        @IsClass
 004819AE    test        al,al
>004819B0    je          004819F2
 004819B2    mov         eax,dword ptr [ebp-4]
 004819B5    test        byte ptr [eax+24],4
>004819B9    jne         004819F2
 004819BB    mov         eax,dword ptr [ebp+8]
 004819BE    push        eax
 004819BF    lea         edx,[ebp-10]
 004819C2    mov         eax,dword ptr [ebp-4]
 004819C5    call        GetComponentValue
 004819CA    pop         ecx
 004819CB    cmp         dword ptr [ebp-10],0
>004819CF    je          00481B15
 004819D5    mov         eax,dword ptr [ebp+8]
 004819D8    push        eax
 004819D9    call        WritePropPath
 004819DE    pop         ecx
 004819DF    mov         eax,dword ptr [ebp+8]
 004819E2    mov         eax,dword ptr [eax-4]
 004819E5    mov         edx,dword ptr [ebp-10]
 004819E8    call        TWriter.WriteIdent
>004819ED    jmp         00481B15
 004819F2    mov         eax,dword ptr [ebp+8]
 004819F5    mov         eax,dword ptr [eax-4]
 004819F8    mov         eax,dword ptr [eax+20]
 004819FB    mov         dword ptr [ebp-8],eax
 004819FE    lea         eax,[ebp-0C]
 00481A01    mov         edx,dword ptr [ebp+8]
 00481A04    mov         edx,dword ptr [edx-4]
 00481A07    mov         edx,dword ptr [edx+2C]
 00481A0A    call        @LStrLAsg
 00481A0F    xor         eax,eax
 00481A11    push        ebp
 00481A12    push        481AB1
 00481A17    push        dword ptr fs:[eax]
 00481A1A    mov         dword ptr fs:[eax],esp
 00481A1D    mov         eax,dword ptr [ebp+8]
 00481A20    mov         eax,dword ptr [eax-4]
 00481A23    push        dword ptr [eax+2C]
 00481A26    lea         eax,[ebp-14]
 00481A29    mov         edx,dword ptr [ebp+8]
 00481A2C    mov         edx,dword ptr [edx-8]
 00481A2F    add         edx,1A
 00481A32    call        @LStrFromString
 00481A37    push        dword ptr [ebp-14]
 00481A3A    push        481B44;'.'
 00481A3F    mov         eax,dword ptr [ebp+8]
 00481A42    mov         eax,dword ptr [eax-4]
 00481A45    add         eax,2C
 00481A48    mov         edx,3
 00481A4D    call        @LStrCatN
 00481A52    mov         eax,dword ptr [ebp+8]
 00481A55    cmp         byte ptr [eax-11],0
>00481A59    je          00481A78
 00481A5B    mov         eax,dword ptr [ebp+8]
 00481A5E    mov         edx,dword ptr [eax-8]
 00481A61    mov         eax,dword ptr [ebp+8]
 00481A64    mov         eax,dword ptr [eax-4]
 00481A67    mov         eax,dword ptr [eax+20]
 00481A6A    call        GetOrdProp
 00481A6F    mov         edx,dword ptr [ebp+8]
 00481A72    mov         edx,dword ptr [edx-4]
 00481A75    mov         dword ptr [edx+20],eax
 00481A78    mov         eax,dword ptr [ebp+8]
 00481A7B    mov         eax,dword ptr [eax-4]
 00481A7E    mov         edx,dword ptr [ebp-4]
 00481A81    call        TWriter.WriteProperties
 00481A86    xor         eax,eax
 00481A88    pop         edx
 00481A89    pop         ecx
 00481A8A    pop         ecx
 00481A8B    mov         dword ptr fs:[eax],edx
 00481A8E    push        481AB8
 00481A93    mov         eax,dword ptr [ebp+8]
 00481A96    mov         eax,dword ptr [eax-4]
 00481A99    mov         edx,dword ptr [ebp-8]
 00481A9C    mov         dword ptr [eax+20],edx
 00481A9F    mov         eax,dword ptr [ebp+8]
 00481AA2    mov         eax,dword ptr [eax-4]
 00481AA5    add         eax,2C
 00481AA8    mov         edx,dword ptr [ebp-0C]
 00481AAB    call        @LStrAsg
 00481AB0    ret
>00481AB1    jmp         @HandleFinally
>00481AB6    jmp         00481A93
 00481AB8    mov         eax,dword ptr [ebp-4]
 00481ABB    mov         edx,dword ptr ds:[475D80];TCollection
 00481AC1    call        @IsClass
 00481AC6    test        al,al
>00481AC8    je          00481B15
 00481ACA    mov         eax,dword ptr [ebp+8]
 00481ACD    cmp         byte ptr [eax-11],0
>00481AD1    je          00481B08
 00481AD3    mov         eax,dword ptr [ebp+8]
 00481AD6    mov         eax,dword ptr [eax-4]
 00481AD9    mov         eax,dword ptr [eax+28]
 00481ADC    push        eax
 00481ADD    mov         eax,dword ptr [ebp+8]
 00481AE0    mov         edx,dword ptr [eax-8]
 00481AE3    mov         eax,dword ptr [ebp+8]
 00481AE6    mov         eax,dword ptr [eax-4]
 00481AE9    mov         eax,dword ptr [eax+20]
 00481AEC    call        GetOrdProp
 00481AF1    mov         edx,eax
 00481AF3    mov         eax,dword ptr [ebp+8]
 00481AF6    mov         eax,dword ptr [eax-4]
 00481AF9    mov         ecx,dword ptr [eax+1C]
 00481AFC    mov         eax,dword ptr [ebp-4]
 00481AFF    call        CollectionsEqual
 00481B04    test        al,al
>00481B06    jne         00481B15
 00481B08    mov         eax,dword ptr [ebp+8]
 00481B0B    push        eax
 00481B0C    mov         eax,dword ptr [ebp-4]
 00481B0F    call        WriteCollectionProp
 00481B14    pop         ecx
 00481B15    xor         eax,eax
 00481B17    pop         edx
 00481B18    pop         ecx
 00481B19    pop         ecx
 00481B1A    mov         dword ptr fs:[eax],edx
 00481B1D    push        481B37
 00481B22    lea         eax,[ebp-14]
 00481B25    mov         edx,3
 00481B2A    call        @LStrArrayClr
 00481B2F    ret
>00481B30    jmp         @HandleFinally
>00481B35    jmp         00481B22
 00481B37    mov         esp,ebp
 00481B39    pop         ebp
 00481B3A    ret
*}
end;

//00481B48
procedure WriteInterfaceProp;
begin
{*
 00481B48    push        ebp
 00481B49    mov         ebp,esp
 00481B4B    xor         ecx,ecx
 00481B4D    push        ecx
 00481B4E    push        ecx
 00481B4F    push        ecx
 00481B50    push        ecx
 00481B51    xor         eax,eax
 00481B53    push        ebp
 00481B54    push        481C06
 00481B59    push        dword ptr fs:[eax]
 00481B5C    mov         dword ptr fs:[eax],esp
 00481B5F    lea         ecx,[ebp-4]
 00481B62    mov         eax,dword ptr [ebp+8]
 00481B65    mov         edx,dword ptr [eax-8]
 00481B68    mov         eax,dword ptr [ebp+8]
 00481B6B    mov         eax,dword ptr [eax-10]
 00481B6E    call        004750F0
 00481B73    cmp         dword ptr [ebp-4],0
>00481B77    jne         00481B92
 00481B79    mov         eax,dword ptr [ebp+8]
 00481B7C    push        eax
 00481B7D    call        WritePropPath
 00481B82    pop         ecx
 00481B83    mov         eax,dword ptr [ebp+8]
 00481B86    mov         eax,dword ptr [eax-4]
 00481B89    mov         dl,0D
 00481B8B    call        TWriter.WriteValue
>00481B90    jmp         00481BE0
 00481B92    lea         eax,[ebp-0C]
 00481B95    call        @IntfClear
 00481B9A    mov         ecx,eax
 00481B9C    mov         edx,481C14
 00481BA1    mov         eax,dword ptr [ebp-4]
 00481BA4    call        0046CBD0
 00481BA9    test        al,al
>00481BAB    je          00481BE0
 00481BAD    mov         eax,dword ptr [ebp-0C]
 00481BB0    mov         edx,dword ptr [eax]
 00481BB2    call        dword ptr [edx+0C]
 00481BB5    mov         dword ptr [ebp-8],eax
 00481BB8    mov         eax,dword ptr [ebp+8]
 00481BBB    push        eax
 00481BBC    lea         edx,[ebp-10]
 00481BBF    mov         eax,dword ptr [ebp-8]
 00481BC2    call        GetComponentValue
 00481BC7    pop         ecx
 00481BC8    mov         eax,dword ptr [ebp+8]
 00481BCB    push        eax
 00481BCC    call        WritePropPath
 00481BD1    pop         ecx
 00481BD2    mov         eax,dword ptr [ebp+8]
 00481BD5    mov         eax,dword ptr [eax-4]
 00481BD8    mov         edx,dword ptr [ebp-10]
 00481BDB    call        TWriter.WriteIdent
 00481BE0    xor         eax,eax
 00481BE2    pop         edx
 00481BE3    pop         ecx
 00481BE4    pop         ecx
 00481BE5    mov         dword ptr fs:[eax],edx
 00481BE8    push        481C0D
 00481BED    lea         eax,[ebp-10]
 00481BF0    call        @LStrClr
 00481BF5    lea         eax,[ebp-0C]
 00481BF8    call        @IntfClear
 00481BFD    lea         eax,[ebp-4]
 00481C00    call        @IntfClear
 00481C05    ret
>00481C06    jmp         @HandleFinally
>00481C0B    jmp         00481BED
 00481C0D    mov         esp,ebp
 00481C0F    pop         ebp
 00481C10    ret
*}
end;

//00481C24
procedure WriteMethodProp;
begin
{*
 00481C24    push        ebp
 00481C25    mov         ebp,esp
 00481C27    add         esp,0FFFFFEF4
 00481C2D    xor         eax,eax
 00481C2F    mov         dword ptr [ebp-0C],eax
 00481C32    xor         eax,eax
 00481C34    push        ebp
 00481C35    push        481CBE
 00481C3A    push        dword ptr fs:[eax]
 00481C3D    mov         dword ptr fs:[eax],esp
 00481C40    lea         ecx,[ebp-8]
 00481C43    mov         eax,dword ptr [ebp+8]
 00481C46    mov         edx,dword ptr [eax-8]
 00481C49    mov         eax,dword ptr [ebp+8]
 00481C4C    mov         eax,dword ptr [eax-10]
 00481C4F    call        GetMethodProp
 00481C54    mov         eax,dword ptr [ebp+8]
 00481C57    push        eax
 00481C58    call        WritePropPath
 00481C5D    pop         ecx
 00481C5E    cmp         dword ptr [ebp-8],0
>00481C62    jne         00481C73
 00481C64    mov         eax,dword ptr [ebp+8]
 00481C67    mov         eax,dword ptr [eax-4]
 00481C6A    mov         dl,0D
 00481C6C    call        TWriter.WriteValue
>00481C71    jmp         00481CA8
 00481C73    lea         ecx,[ebp-10C]
 00481C79    mov         eax,dword ptr [ebp+8]
 00481C7C    mov         eax,dword ptr [eax-4]
 00481C7F    mov         eax,dword ptr [eax+1C]
 00481C82    mov         eax,dword ptr [eax]
 00481C84    mov         edx,dword ptr [ebp-8]
 00481C87    call        TObject.MethodName
 00481C8C    lea         edx,[ebp-10C]
 00481C92    lea         eax,[ebp-0C]
 00481C95    call        @LStrFromString
 00481C9A    mov         edx,dword ptr [ebp-0C]
 00481C9D    mov         eax,dword ptr [ebp+8]
 00481CA0    mov         eax,dword ptr [eax-4]
 00481CA3    call        TWriter.WriteIdent
 00481CA8    xor         eax,eax
 00481CAA    pop         edx
 00481CAB    pop         ecx
 00481CAC    pop         ecx
 00481CAD    mov         dword ptr fs:[eax],edx
 00481CB0    push        481CC5
 00481CB5    lea         eax,[ebp-0C]
 00481CB8    call        @LStrClr
 00481CBD    ret
>00481CBE    jmp         @HandleFinally
>00481CC3    jmp         00481CB5
 00481CC5    mov         esp,ebp
 00481CC7    pop         ebp
 00481CC8    ret
*}
end;

//00481CCC
procedure WriteVariantProp;
begin
{*
 00481CCC    push        ebp
 00481CCD    mov         ebp,esp
 00481CCF    xor         ecx,ecx
 00481CD1    push        ecx
 00481CD2    push        ecx
 00481CD3    push        ecx
 00481CD4    push        ecx
 00481CD5    xor         eax,eax
 00481CD7    push        ebp
 00481CD8    push        481D25
 00481CDD    push        dword ptr fs:[eax]
 00481CE0    mov         dword ptr fs:[eax],esp
 00481CE3    lea         ecx,[ebp-10]
 00481CE6    mov         eax,dword ptr [ebp+8]
 00481CE9    mov         edx,dword ptr [eax-8]
 00481CEC    mov         eax,dword ptr [ebp+8]
 00481CEF    mov         eax,dword ptr [eax-10]
 00481CF2    call        GetVariantProp
 00481CF7    mov         eax,dword ptr [ebp+8]
 00481CFA    push        eax
 00481CFB    call        WritePropPath
 00481D00    pop         ecx
 00481D01    lea         edx,[ebp-10]
 00481D04    mov         eax,dword ptr [ebp+8]
 00481D07    mov         eax,dword ptr [eax-4]
 00481D0A    call        TWriter.WriteVariant
 00481D0F    xor         eax,eax
 00481D11    pop         edx
 00481D12    pop         ecx
 00481D13    pop         ecx
 00481D14    mov         dword ptr fs:[eax],edx
 00481D17    push        481D2C
 00481D1C    lea         eax,[ebp-10]
 00481D1F    call        @VarClr
 00481D24    ret
>00481D25    jmp         @HandleFinally
>00481D2A    jmp         00481D1C
 00481D2C    mov         esp,ebp
 00481D2E    pop         ebp
 00481D2F    ret
*}
end;

//00481D30
procedure TWriter.WriteProperty(Instance:TPersistent; PropInfo:PPropInfo);
begin
{*
 00481D30    push        ebp
 00481D31    mov         ebp,esp
 00481D33    add         esp,0FFFFFFEC
 00481D36    mov         dword ptr [ebp-8],ecx
 00481D39    mov         dword ptr [ebp-10],edx
 00481D3C    mov         dword ptr [ebp-4],eax
 00481D3F    mov         eax,dword ptr [ebp-8]
 00481D42    cmp         dword ptr [eax+4],0
>00481D46    je          00481E78
 00481D4C    mov         eax,dword ptr [ebp-8]
 00481D4F    cmp         dword ptr [eax+8],0
>00481D53    jne         00481D98
 00481D55    mov         eax,dword ptr [ebp-8]
 00481D58    mov         eax,dword ptr [eax]
 00481D5A    mov         eax,dword ptr [eax]
 00481D5C    cmp         byte ptr [eax],7
>00481D5F    jne         00481E78
 00481D65    mov         edx,dword ptr [ebp-8]
 00481D68    mov         eax,dword ptr [ebp-10]
 00481D6B    call        GetOrdProp
 00481D70    mov         edx,dword ptr ds:[47698C];TComponent
 00481D76    call        @IsClass
 00481D7B    test        al,al
>00481D7D    je          00481E78
 00481D83    mov         edx,dword ptr [ebp-8]
 00481D86    mov         eax,dword ptr [ebp-10]
 00481D89    call        GetOrdProp
 00481D8E    test        byte ptr [eax+24],4
>00481D92    je          00481E78
 00481D98    mov         eax,dword ptr [ebp-4]
 00481D9B    push        eax
 00481D9C    push        48253C;TWriter.GetLookupInfo
 00481DA1    mov         edx,dword ptr [ebp-8]
 00481DA4    mov         eax,dword ptr [ebp-10]
 00481DA7    call        IsDefaultPropertyValue
 00481DAC    test        al,al
>00481DAE    jne         00481E78
 00481DB4    mov         eax,dword ptr [ebp-4]
 00481DB7    mov         ecx,dword ptr [eax+28]
 00481DBA    mov         eax,dword ptr [ebp-4]
 00481DBD    mov         edx,dword ptr [eax+18]
 00481DC0    mov         eax,dword ptr [ebp-4]
 00481DC3    mov         eax,dword ptr [eax+20]
 00481DC6    call        AncestorIsValid
 00481DCB    mov         byte ptr [ebp-11],al
 00481DCE    mov         eax,dword ptr [ebp-8]
 00481DD1    mov         eax,dword ptr [eax]
 00481DD3    mov         eax,dword ptr [eax]
 00481DD5    mov         dword ptr [ebp-0C],eax
 00481DD8    mov         eax,dword ptr [ebp-0C]
 00481DDB    movzx       eax,byte ptr [eax]
 00481DDE    cmp         eax,10
>00481DE1    ja          00481E78
 00481DE7    jmp         dword ptr [eax*4+481DEE]
 00481DE7    dd          00481E78
 00481DE7    dd          00481E32
 00481DE7    dd          00481E32
 00481DE7    dd          00481E32
 00481DE7    dd          00481E3B
 00481DE7    dd          00481E44
 00481DE7    dd          00481E32
 00481DE7    dd          00481E4D
 00481DE7    dd          00481E56
 00481DE7    dd          00481E78
 00481DE7    dd          00481E44
 00481DE7    dd          00481E44
 00481DE7    dd          00481E5F
 00481DE7    dd          00481E78
 00481DE7    dd          00481E78
 00481DE7    dd          00481E71
 00481DE7    dd          00481E68
 00481E32    push        ebp
 00481E33    call        WriteOrdProp
 00481E38    pop         ecx
>00481E39    jmp         00481E78
 00481E3B    push        ebp
 00481E3C    call        WriteFloatProp
 00481E41    pop         ecx
>00481E42    jmp         00481E78
 00481E44    push        ebp
 00481E45    call        WriteStrProp
 00481E4A    pop         ecx
>00481E4B    jmp         00481E78
 00481E4D    push        ebp
 00481E4E    call        WriteObjectProp
 00481E53    pop         ecx
>00481E54    jmp         00481E78
 00481E56    push        ebp
 00481E57    call        WriteMethodProp
 00481E5C    pop         ecx
>00481E5D    jmp         00481E78
 00481E5F    push        ebp
 00481E60    call        WriteVariantProp
 00481E65    pop         ecx
>00481E66    jmp         00481E78
 00481E68    push        ebp
 00481E69    call        WriteInt64Prop
 00481E6E    pop         ecx
>00481E6F    jmp         00481E78
 00481E71    push        ebp
 00481E72    call        WriteInterfaceProp
 00481E77    pop         ecx
 00481E78    mov         esp,ebp
 00481E7A    pop         ebp
 00481E7B    ret
*}
end;

//00481E7C
procedure TWriter.WriteVariant(const Value:Variant);
begin
{*
 00481E7C    push        ebp
 00481E7D    mov         ebp,esp
 00481E7F    add         esp,0FFFFFEC4
 00481E85    push        ebx
 00481E86    push        esi
 00481E87    push        edi
 00481E88    xor         ecx,ecx
 00481E8A    mov         dword ptr [ebp-3C],ecx
 00481E8D    mov         dword ptr [ebp-38],ecx
 00481E90    mov         dword ptr [ebp-34],ecx
 00481E93    mov         dword ptr [ebp-30],ecx
 00481E96    mov         dword ptr [ebp-2C],ecx
 00481E99    mov         dword ptr [ebp-20],ecx
 00481E9C    mov         dword ptr [ebp-8],edx
 00481E9F    mov         dword ptr [ebp-4],eax
 00481EA2    xor         eax,eax
 00481EA4    push        ebp
 00481EA5    push        48226A
 00481EAA    push        dword ptr fs:[eax]
 00481EAD    mov         dword ptr fs:[eax],esp
 00481EB0    mov         eax,dword ptr [ebp-8]
 00481EB3    call        VarIsArray
 00481EB8    test        al,al
>00481EBA    je          00481ED3
 00481EBC    mov         ecx,dword ptr ds:[55B3F8];^SWriteError:TResStringRec
 00481EC2    mov         dl,1
 00481EC4    mov         eax,[00475688];EWriteError
 00481EC9    call        Exception.Create
 00481ECE    call        @RaiseExcept
 00481ED3    mov         eax,dword ptr [ebp-8]
 00481ED6    call        00473A14
 00481EDB    and         ax,0FFF
 00481EDF    movzx       eax,ax
 00481EE2    cmp         eax,7
>00481EE5    jg          00481F19
>00481EE7    je          0048200D
 00481EED    cmp         eax,6
>00481EF0    ja          00482074
 00481EF6    jmp         dword ptr [eax*4+481EFD]
 00481EF6    dd          00481F4E
 00481EF6    dd          00481F5D
 00481EF6    dd          00481FA2
 00481EF6    dd          00481FA2
 00481EF6    dd          00481FB9
 00481EF6    dd          00481FD5
 00481EF6    dd          00481FF1
 00481F19    cmp         eax,10
>00481F1C    jge         00481F31
 00481F1E    sub         eax,8
>00481F21    je          00481F6C
 00481F23    sub         eax,3
>00481F26    je          00482029
>00481F2C    jmp         00482074
 00481F31    add         eax,0FFFFFFF0
 00481F34    sub         eax,3
>00481F37    jb          00481FA2
 00481F39    sub         eax,2
>00481F3C    jb          00482053
 00481F42    sub         eax,0EB
>00481F47    je          00481F87
>00481F49    jmp         00482074
 00481F4E    mov         dl,0D
 00481F50    mov         eax,dword ptr [ebp-4]
 00481F53    call        TWriter.WriteValue
>00481F58    jmp         0048222F
 00481F5D    xor         edx,edx
 00481F5F    mov         eax,dword ptr [ebp-4]
 00481F62    call        TWriter.WriteValue
>00481F67    jmp         0048222F
 00481F6C    lea         eax,[ebp-2C]
 00481F6F    mov         edx,dword ptr [ebp-8]
 00481F72    call        @VarToWStr
 00481F77    mov         edx,dword ptr [ebp-2C]
 00481F7A    mov         eax,dword ptr [ebp-4]
 00481F7D    call        TWriter.WriteWideString
>00481F82    jmp         0048222F
 00481F87    lea         eax,[ebp-30]
 00481F8A    mov         edx,dword ptr [ebp-8]
 00481F8D    call        @VarToLStr
 00481F92    mov         edx,dword ptr [ebp-30]
 00481F95    mov         eax,dword ptr [ebp-4]
 00481F98    call        00482400
>00481F9D    jmp         0048222F
 00481FA2    mov         eax,dword ptr [ebp-8]
 00481FA5    call        @VarToInteger
 00481FAA    mov         edx,eax
 00481FAC    mov         eax,dword ptr [ebp-4]
 00481FAF    call        00480A20
>00481FB4    jmp         0048222F
 00481FB9    mov         eax,dword ptr [ebp-8]
 00481FBC    call        @VarToReal
 00481FC1    add         esp,0FFFFFFFC
 00481FC4    fstp        dword ptr [esp]
 00481FC7    wait
 00481FC8    mov         eax,dword ptr [ebp-4]
 00481FCB    call        004808D0
>00481FD0    jmp         0048222F
 00481FD5    mov         eax,dword ptr [ebp-8]
 00481FD8    call        @VarToReal
 00481FDD    add         esp,0FFFFFFF4
 00481FE0    fstp        tbyte ptr [esp]
 00481FE3    wait
 00481FE4    mov         eax,dword ptr [ebp-4]
 00481FE7    call        TWriter.WriteFloat
>00481FEC    jmp         0048222F
 00481FF1    mov         eax,dword ptr [ebp-8]
 00481FF4    call        @VarToCurrency
 00481FF9    add         esp,0FFFFFFF8
 00481FFC    fistp       qword ptr [esp]
 00481FFF    wait
 00482000    mov         eax,dword ptr [ebp-4]
 00482003    call        004808F8
>00482008    jmp         0048222F
 0048200D    mov         eax,dword ptr [ebp-8]
 00482010    call        @VarToReal
 00482015    add         esp,0FFFFFFF8
 00482018    fstp        qword ptr [esp]
 0048201B    wait
 0048201C    mov         eax,dword ptr [ebp-4]
 0048201F    call        00480920
>00482024    jmp         0048222F
 00482029    mov         eax,dword ptr [ebp-8]
 0048202C    call        @VarToBool
 00482031    test        al,al
>00482033    je          00482044
 00482035    mov         dl,9
 00482037    mov         eax,dword ptr [ebp-4]
 0048203A    call        TWriter.WriteValue
>0048203F    jmp         0048222F
 00482044    mov         dl,8
 00482046    mov         eax,dword ptr [ebp-4]
 00482049    call        TWriter.WriteValue
>0048204E    jmp         0048222F
 00482053    mov         eax,dword ptr [ebp-8]
 00482056    call        @VarToInt64
 0048205B    mov         dword ptr [ebp-28],eax
 0048205E    mov         dword ptr [ebp-24],edx
 00482061    push        dword ptr [ebp-24]
 00482064    push        dword ptr [ebp-28]
 00482067    mov         eax,dword ptr [ebp-4]
 0048206A    call        TWriter.WriteInteger
>0048206F    jmp         0048222F
 00482074    xor         eax,eax
 00482076    push        ebp
 00482077    push        48220E
 0048207C    push        dword ptr fs:[eax]
 0048207F    mov         dword ptr fs:[eax],esp
 00482082    lea         edx,[ebp-0C]
 00482085    mov         eax,dword ptr [ebp-8]
 00482088    mov         ax,word ptr [eax]
 0048208B    call        FindCustomVariantType
 00482090    test        al,al
>00482092    je          004820BA
 00482094    lea         eax,[ebp-20]
 00482097    call        @IntfClear
 0048209C    push        eax
 0048209D    lea         eax,[ebp-34]
 004820A0    mov         edx,dword ptr [ebp-8]
 004820A3    call        @VarToIntf
 004820A8    mov         eax,dword ptr [ebp-34]
 004820AB    mov         edx,482278
 004820B0    pop         ecx
 004820B1    call        0046CBD0
 004820B6    test        al,al
>004820B8    jne         004820D5
 004820BA    lea         eax,[ebp-38]
 004820BD    mov         edx,dword ptr [ebp-8]
 004820C0    call        @VarToLStr
 004820C5    mov         edx,dword ptr [ebp-38]
 004820C8    mov         eax,dword ptr [ebp-4]
 004820CB    call        00482400
>004820D0    jmp         00482204
 004820D5    xor         eax,eax
 004820D7    mov         dword ptr [ebp-14],eax
 004820DA    mov         dl,1
 004820DC    mov         eax,[00476368];TMemoryStream
 004820E1    call        TObject.Create
 004820E6    mov         dword ptr [ebp-10],eax
 004820E9    xor         eax,eax
 004820EB    push        ebp
 004820EC    push        4821FD
 004820F1    push        dword ptr fs:[eax]
 004820F4    mov         dword ptr fs:[eax],esp
 004820F7    mov         dl,1
 004820F9    mov         eax,[00476368];TMemoryStream
 004820FE    call        TObject.Create
 00482103    mov         dword ptr [ebp-14],eax
 00482106    push        400
 0048210B    mov         ecx,dword ptr [ebp-10]
 0048210E    mov         dl,1
 00482110    mov         eax,[00476748];TWriter
 00482115    call        TFiler.Create
 0048211A    mov         dword ptr [ebp-18],eax
 0048211D    xor         eax,eax
 0048211F    push        ebp
 00482120    push        4821A3
 00482125    push        dword ptr fs:[eax]
 00482128    mov         dword ptr fs:[eax],esp
 0048212B    mov         edx,dword ptr [ebp-8]
 0048212E    mov         ecx,dword ptr [ebp-14]
 00482131    mov         eax,dword ptr [ebp-20]
 00482134    mov         ebx,dword ptr [eax]
 00482136    call        dword ptr [ebx+10]
 00482139    mov         eax,dword ptr [ebp-14]
 0048213C    mov         edx,dword ptr [eax]
 0048213E    call        dword ptr [edx]
 00482140    mov         dword ptr [ebp-1C],eax
 00482143    lea         edx,[ebp-13C]
 00482149    mov         eax,dword ptr [ebp-0C]
 0048214C    mov         eax,dword ptr [eax]
 0048214E    call        TObject.ClassName
 00482153    lea         edx,[ebp-13C]
 00482159    lea         eax,[ebp-3C]
 0048215C    call        @LStrFromString
 00482161    mov         edx,dword ptr [ebp-3C]
 00482164    mov         eax,dword ptr [ebp-18]
 00482167    call        00482400
 0048216C    lea         edx,[ebp-1C]
 0048216F    mov         ecx,4
 00482174    mov         eax,dword ptr [ebp-18]
 00482177    call        TWriter.Write
 0048217C    mov         eax,dword ptr [ebp-14]
 0048217F    mov         edx,dword ptr [eax+4]
 00482182    mov         ecx,dword ptr [ebp-1C]
 00482185    mov         eax,dword ptr [ebp-18]
 00482188    call        TWriter.Write
 0048218D    xor         eax,eax
 0048218F    pop         edx
 00482190    pop         ecx
 00482191    pop         ecx
 00482192    mov         dword ptr fs:[eax],edx
 00482195    push        4821AA
 0048219A    mov         eax,dword ptr [ebp-18]
 0048219D    call        TObject.Free
 004821A2    ret
>004821A3    jmp         @HandleFinally
>004821A8    jmp         0048219A
 004821AA    mov         eax,dword ptr [ebp-10]
 004821AD    mov         edx,dword ptr [eax]
 004821AF    call        dword ptr [edx]
 004821B1    mov         dword ptr [ebp-1C],eax
 004821B4    mov         dl,0A
 004821B6    mov         eax,dword ptr [ebp-4]
 004821B9    call        TWriter.WriteValue
 004821BE    lea         edx,[ebp-1C]
 004821C1    mov         ecx,4
 004821C6    mov         eax,dword ptr [ebp-4]
 004821C9    call        TWriter.Write
 004821CE    mov         eax,dword ptr [ebp-10]
 004821D1    mov         edx,dword ptr [eax+4]
 004821D4    mov         ecx,dword ptr [ebp-1C]
 004821D7    mov         eax,dword ptr [ebp-4]
 004821DA    call        TWriter.Write
 004821DF    xor         eax,eax
 004821E1    pop         edx
 004821E2    pop         ecx
 004821E3    pop         ecx
 004821E4    mov         dword ptr fs:[eax],edx
 004821E7    push        482204
 004821EC    mov         eax,dword ptr [ebp-14]
 004821EF    call        TObject.Free
 004821F4    mov         eax,dword ptr [ebp-10]
 004821F7    call        TObject.Free
 004821FC    ret
>004821FD    jmp         @HandleFinally
>00482202    jmp         004821EC
 00482204    xor         eax,eax
 00482206    pop         edx
 00482207    pop         ecx
 00482208    pop         ecx
 00482209    mov         dword ptr fs:[eax],edx
>0048220C    jmp         0048222F
>0048220E    jmp         @HandleAnyException
 00482213    mov         ecx,dword ptr ds:[55B3F8];^SWriteError:TResStringRec
 00482219    mov         dl,1
 0048221B    mov         eax,[00475688];EWriteError
 00482220    call        Exception.Create
 00482225    call        @RaiseExcept
 0048222A    call        @DoneExcept
 0048222F    xor         eax,eax
 00482231    pop         edx
 00482232    pop         ecx
 00482233    pop         ecx
 00482234    mov         dword ptr fs:[eax],edx
 00482237    push        482271
 0048223C    lea         eax,[ebp-3C]
 0048223F    mov         edx,2
 00482244    call        @LStrArrayClr
 00482249    lea         eax,[ebp-34]
 0048224C    call        @IntfClear
 00482251    lea         eax,[ebp-30]
 00482254    call        @LStrClr
 00482259    lea         eax,[ebp-2C]
 0048225C    call        @WStrClr
 00482261    lea         eax,[ebp-20]
 00482264    call        @IntfClear
 00482269    ret
>0048226A    jmp         @HandleFinally
>0048226F    jmp         0048223C
 00482271    pop         edi
 00482272    pop         esi
 00482273    pop         ebx
 00482274    mov         esp,ebp
 00482276    pop         ebp
 00482277    ret
*}
end;

//00482288
procedure TWriter.WritePropName(const PropName:AnsiString);
begin
{*
 00482288    push        ebp
 00482289    mov         ebp,esp
 0048228B    add         esp,0FFFFFFF4
 0048228E    xor         ecx,ecx
 00482290    mov         dword ptr [ebp-0C],ecx
 00482293    mov         dword ptr [ebp-8],edx
 00482296    mov         dword ptr [ebp-4],eax
 00482299    xor         eax,eax
 0048229B    push        ebp
 0048229C    push        4822D9
 004822A1    push        dword ptr fs:[eax]
 004822A4    mov         dword ptr fs:[eax],esp
 004822A7    lea         eax,[ebp-0C]
 004822AA    mov         ecx,dword ptr [ebp-8]
 004822AD    mov         edx,dword ptr [ebp-4]
 004822B0    mov         edx,dword ptr [edx+2C]
 004822B3    call        @LStrCat3
 004822B8    mov         edx,dword ptr [ebp-0C]
 004822BB    mov         eax,dword ptr [ebp-4]
 004822BE    call        00482300
 004822C3    xor         eax,eax
 004822C5    pop         edx
 004822C6    pop         ecx
 004822C7    pop         ecx
 004822C8    mov         dword ptr fs:[eax],edx
 004822CB    push        4822E0
 004822D0    lea         eax,[ebp-0C]
 004822D3    call        @LStrClr
 004822D8    ret
>004822D9    jmp         @HandleFinally
>004822DE    jmp         004822D0
 004822E0    mov         esp,ebp
 004822E2    pop         ebp
 004822E3    ret
*}
end;

//004822E4
procedure sub_004822E4(?:TWriter);
begin
{*
 004822E4    push        ebp
 004822E5    mov         ebp,esp
 004822E7    push        ecx
 004822E8    mov         dword ptr [ebp-4],eax
 004822EB    mov         edx,540CF8;gvar_00540CF8
 004822F0    mov         ecx,4
 004822F5    mov         eax,dword ptr [ebp-4]
 004822F8    call        TWriter.Write
 004822FD    pop         ecx
 004822FE    pop         ebp
 004822FF    ret
*}
end;

//00482300
procedure sub_00482300(?:TWriter; ?:AnsiString);
begin
{*
 00482300    push        ebp
 00482301    mov         ebp,esp
 00482303    add         esp,0FFFFFFF4
 00482306    mov         dword ptr [ebp-8],edx
 00482309    mov         dword ptr [ebp-4],eax
 0048230C    mov         eax,dword ptr [ebp-8]
 0048230F    call        @DynArrayLength
 00482314    mov         dword ptr [ebp-0C],eax
 00482317    cmp         dword ptr [ebp-0C],0FF
>0048231E    jle         00482327
 00482320    mov         dword ptr [ebp-0C],0FF
 00482327    lea         edx,[ebp-0C]
 0048232A    mov         ecx,1
 0048232F    mov         eax,dword ptr [ebp-4]
 00482332    call        TWriter.Write
 00482337    mov         eax,dword ptr [ebp-8]
 0048233A    call        @LStrToPChar
 0048233F    mov         edx,eax
 00482341    mov         ecx,dword ptr [ebp-0C]
 00482344    mov         eax,dword ptr [ebp-4]
 00482347    call        TWriter.Write
 0048234C    mov         esp,ebp
 0048234E    pop         ebp
 0048234F    ret
*}
end;

//00482350
{*procedure sub_00482350(?:?; ?:AnsiString; ?:?);
begin
 00482350    push        ebp
 00482351    mov         ebp,esp
 00482353    add         esp,0FFFFFFF0
 00482356    mov         dword ptr [ebp-0C],ecx
 00482359    mov         dword ptr [ebp-8],edx
 0048235C    mov         dword ptr [ebp-4],eax
 0048235F    mov         eax,dword ptr [ebp-8]
 00482362    mov         edx,dword ptr [ebp-0C]
 00482365    call        @LStrCmp
>0048236A    je          004823A1
 0048236C    mov         eax,dword ptr [ebp-0C]
 0048236F    call        @DynArrayLength
 00482374    mov         dword ptr [ebp-10],eax
 00482377    mov         dl,14
 00482379    mov         eax,dword ptr [ebp-4]
 0048237C    call        TWriter.WriteValue
 00482381    lea         edx,[ebp-10]
 00482384    mov         ecx,4
 00482389    mov         eax,dword ptr [ebp-4]
 0048238C    call        TWriter.Write
 00482391    mov         edx,dword ptr [ebp-0C]
 00482394    mov         ecx,dword ptr [ebp-10]
 00482397    mov         eax,dword ptr [ebp-4]
 0048239A    call        TWriter.Write
>0048239F    jmp         004823F9
 004823A1    mov         eax,dword ptr [ebp-8]
 004823A4    call        @DynArrayLength
 004823A9    mov         dword ptr [ebp-10],eax
 004823AC    cmp         dword ptr [ebp-10],0FF
>004823B3    jg          004823D1
 004823B5    mov         dl,6
 004823B7    mov         eax,dword ptr [ebp-4]
 004823BA    call        TWriter.WriteValue
 004823BF    lea         edx,[ebp-10]
 004823C2    mov         ecx,1
 004823C7    mov         eax,dword ptr [ebp-4]
 004823CA    call        TWriter.Write
>004823CF    jmp         004823EB
 004823D1    mov         dl,0C
 004823D3    mov         eax,dword ptr [ebp-4]
 004823D6    call        TWriter.WriteValue
 004823DB    lea         edx,[ebp-10]
 004823DE    mov         ecx,4
 004823E3    mov         eax,dword ptr [ebp-4]
 004823E6    call        TWriter.Write
 004823EB    mov         edx,dword ptr [ebp-8]
 004823EE    mov         ecx,dword ptr [ebp-10]
 004823F1    mov         eax,dword ptr [ebp-4]
 004823F4    call        TWriter.Write
 004823F9    mov         esp,ebp
 004823FB    pop         ebp
 004823FC    ret
end;*}

//00482400
{*procedure sub_00482400(?:?; ?:AnsiString);
begin
 00482400    push        ebp
 00482401    mov         ebp,esp
 00482403    add         esp,0FFFFFFF4
 00482406    xor         ecx,ecx
 00482408    mov         dword ptr [ebp-0C],ecx
 0048240B    mov         dword ptr [ebp-8],edx
 0048240E    mov         dword ptr [ebp-4],eax
 00482411    xor         eax,eax
 00482413    push        ebp
 00482414    push        48244E
 00482419    push        dword ptr fs:[eax]
 0048241C    mov         dword ptr fs:[eax],esp
 0048241F    lea         edx,[ebp-0C]
 00482422    mov         eax,dword ptr [ebp-8]
 00482425    call        AnsiToUtf8
 0048242A    mov         ecx,dword ptr [ebp-0C]
 0048242D    mov         edx,dword ptr [ebp-8]
 00482430    mov         eax,dword ptr [ebp-4]
 00482433    call        00482350
 00482438    xor         eax,eax
 0048243A    pop         edx
 0048243B    pop         ecx
 0048243C    pop         ecx
 0048243D    mov         dword ptr fs:[eax],edx
 00482440    push        482455
 00482445    lea         eax,[ebp-0C]
 00482448    call        @LStrClr
 0048244D    ret
>0048244E    jmp         @HandleFinally
>00482453    jmp         00482445
 00482455    mov         esp,ebp
 00482457    pop         ebp
 00482458    ret
end;*}

//0048245C
procedure TWriter.WriteWideString(const Value:WideString);
begin
{*
 0048245C    push        ebp
 0048245D    mov         ebp,esp
 0048245F    add         esp,0FFFFFFEC
 00482462    push        ebx
 00482463    xor         ecx,ecx
 00482465    mov         dword ptr [ebp-14],ecx
 00482468    mov         dword ptr [ebp-10],ecx
 0048246B    mov         dword ptr [ebp-8],edx
 0048246E    mov         dword ptr [ebp-4],eax
 00482471    xor         eax,eax
 00482473    push        ebp
 00482474    push        482510
 00482479    push        dword ptr fs:[eax]
 0048247C    mov         dword ptr fs:[eax],esp
 0048247F    lea         edx,[ebp-10]
 00482482    mov         eax,dword ptr [ebp-8]
 00482485    call        UTF8Encode
 0048248A    mov         eax,dword ptr [ebp-10]
 0048248D    call        @DynArrayLength
 00482492    mov         ebx,eax
 00482494    mov         eax,dword ptr [ebp-8]
 00482497    call        @WStrLen
 0048249C    add         eax,eax
 0048249E    cmp         ebx,eax
>004824A0    jge         004824BD
 004824A2    lea         eax,[ebp-14]
 004824A5    mov         edx,dword ptr [ebp-8]
 004824A8    call        @LStrFromWStr
 004824AD    mov         edx,dword ptr [ebp-14]
 004824B0    mov         ecx,dword ptr [ebp-10]
 004824B3    mov         eax,dword ptr [ebp-4]
 004824B6    call        00482350
>004824BB    jmp         004824F2
 004824BD    mov         dl,12
 004824BF    mov         eax,dword ptr [ebp-4]
 004824C2    call        TWriter.WriteValue
 004824C7    mov         eax,dword ptr [ebp-8]
 004824CA    call        @WStrLen
 004824CF    mov         dword ptr [ebp-0C],eax
 004824D2    lea         edx,[ebp-0C]
 004824D5    mov         ecx,4
 004824DA    mov         eax,dword ptr [ebp-4]
 004824DD    call        TWriter.Write
 004824E2    mov         ecx,dword ptr [ebp-0C]
 004824E5    add         ecx,ecx
 004824E7    mov         edx,dword ptr [ebp-8]
 004824EA    mov         eax,dword ptr [ebp-4]
 004824ED    call        TWriter.Write
 004824F2    xor         eax,eax
 004824F4    pop         edx
 004824F5    pop         ecx
 004824F6    pop         ecx
 004824F7    mov         dword ptr fs:[eax],edx
 004824FA    push        482517
 004824FF    lea         eax,[ebp-14]
 00482502    call        @LStrClr
 00482507    lea         eax,[ebp-10]
 0048250A    call        @LStrClr
 0048250F    ret
>00482510    jmp         @HandleFinally
>00482515    jmp         004824FF
 00482517    pop         ebx
 00482518    mov         esp,ebp
 0048251A    pop         ebp
 0048251B    ret
*}
end;

//0048251C
procedure TWriter.WriteValue(Value:TValueType);
begin
{*
 0048251C    push        ebp
 0048251D    mov         ebp,esp
 0048251F    add         esp,0FFFFFFF8
 00482522    mov         byte ptr [ebp-5],dl
 00482525    mov         dword ptr [ebp-4],eax
 00482528    lea         edx,[ebp-5]
 0048252B    mov         ecx,1
 00482530    mov         eax,dword ptr [ebp-4]
 00482533    call        TWriter.Write
 00482538    pop         ecx
 00482539    pop         ecx
 0048253A    pop         ebp
 0048253B    ret
*}
end;

//0048253C
procedure TWriter.GetLookupInfo(var Ancestor:TPersistent; var Root:TComponent; var LookupRoot:TComponent; var RootAncestor:TComponent);
begin
{*
 0048253C    push        ebp
 0048253D    mov         ebp,esp
 0048253F    add         esp,0FFFFFFF4
 00482542    mov         dword ptr [ebp-0C],ecx
 00482545    mov         dword ptr [ebp-8],edx
 00482548    mov         dword ptr [ebp-4],eax
 0048254B    mov         eax,dword ptr [ebp-8]
 0048254E    mov         edx,dword ptr [ebp-4]
 00482551    mov         edx,dword ptr [edx+20]
 00482554    mov         dword ptr [eax],edx
 00482556    mov         eax,dword ptr [ebp-0C]
 00482559    mov         edx,dword ptr [ebp-4]
 0048255C    mov         edx,dword ptr [edx+18]
 0048255F    mov         dword ptr [eax],edx
 00482561    mov         eax,dword ptr [ebp+0C]
 00482564    mov         edx,dword ptr [ebp-4]
 00482567    mov         edx,dword ptr [edx+1C]
 0048256A    mov         dword ptr [eax],edx
 0048256C    mov         eax,dword ptr [ebp+8]
 0048256F    mov         edx,dword ptr [ebp-4]
 00482572    mov         edx,dword ptr [edx+28]
 00482575    mov         dword ptr [eax],edx
 00482577    mov         esp,ebp
 00482579    pop         ebp
 0048257A    ret         8
*}
end;

//00482580
{*procedure sub_00482580(?:?; ?:PChar; ?:?);
begin
 00482580    push        ebp
 00482581    mov         ebp,esp
 00482583    add         esp,0FFFFFFEC
 00482586    mov         dword ptr [ebp-0C],ecx
 00482589    mov         dword ptr [ebp-8],edx
 0048258C    mov         dword ptr [ebp-4],eax
 0048258F    mov         eax,dword ptr [ebp-0C]
 00482592    dec         eax
 00482593    test        eax,eax
>00482595    jl          004825E2
 00482597    inc         eax
 00482598    mov         dword ptr [ebp-14],eax
 0048259B    mov         dword ptr [ebp-10],0
 004825A2    mov         eax,dword ptr [ebp-4]
 004825A5    mov         edx,dword ptr [ebp-10]
 004825A8    movzx       eax,byte ptr [eax+edx]
 004825AC    shr         eax,4
 004825AF    mov         al,byte ptr [eax+540D04]
 004825B5    mov         edx,dword ptr [ebp-8]
 004825B8    mov         byte ptr [edx],al
 004825BA    mov         eax,dword ptr [ebp-4]
 004825BD    mov         edx,dword ptr [ebp-10]
 004825C0    mov         al,byte ptr [eax+edx]
 004825C3    and         al,0F
 004825C5    and         eax,0FF
 004825CA    mov         al,byte ptr [eax+540D04]
 004825D0    mov         edx,dword ptr [ebp-8]
 004825D3    mov         byte ptr [edx+1],al
 004825D6    add         dword ptr [ebp-8],2
 004825DA    inc         dword ptr [ebp-10]
 004825DD    dec         dword ptr [ebp-14]
>004825E0    jne         004825A2
 004825E2    mov         esp,ebp
 004825E4    pop         ebp
 004825E5    ret
end;*}

//004825E8
{*function sub_004825E8(?:PChar; ?:?; ?:?):?;
begin
 004825E8    push        ebp
 004825E9    mov         ebp,esp
 004825EB    add         esp,0FFFFFFEC
 004825EE    mov         dword ptr [ebp-0C],ecx
 004825F1    mov         dword ptr [ebp-8],edx
 004825F4    mov         dword ptr [ebp-4],eax
 004825F7    mov         eax,dword ptr [ebp-0C]
 004825FA    mov         dword ptr [ebp-14],eax
 004825FD    cmp         dword ptr [ebp-14],0
>00482601    jle         00482651
 00482603    mov         eax,dword ptr [ebp-4]
 00482606    mov         al,byte ptr [eax]
 00482608    add         al,0D0
 0048260A    sub         al,37
>0048260C    jae         00482651
 0048260E    mov         eax,dword ptr [ebp-4]
 00482611    mov         al,byte ptr [eax+1]
 00482614    add         al,0D0
 00482616    sub         al,37
>00482618    jae         00482651
 0048261A    mov         eax,dword ptr [ebp-4]
 0048261D    movzx       eax,byte ptr [eax]
 00482620    mov         ax,word ptr [eax*2+540CB4]
 00482628    shl         eax,4
 0048262B    mov         edx,dword ptr [ebp-4]
 0048262E    movzx       edx,byte ptr [edx+1]
 00482632    mov         dx,word ptr [edx*2+540CB4]
 0048263A    add         al,dl
 0048263C    mov         edx,dword ptr [ebp-8]
 0048263F    mov         byte ptr [edx],al
 00482641    inc         dword ptr [ebp-8]
 00482644    add         dword ptr [ebp-4],2
 00482648    dec         dword ptr [ebp-14]
 0048264B    cmp         dword ptr [ebp-14],0
>0048264F    jg          00482603
 00482651    mov         eax,dword ptr [ebp-0C]
 00482654    sub         eax,dword ptr [ebp-14]
 00482657    mov         dword ptr [ebp-10],eax
 0048265A    mov         eax,dword ptr [ebp-10]
 0048265D    mov         esp,ebp
 0048265F    pop         ebp
 00482660    ret
end;*}

//00482664
procedure InitThreadSynchronization;
begin
{*
 00482664    push        ebp
 00482665    mov         ebp,esp
 00482667    push        55DAE8;gvar_0055DAE8
 0048266C    call        kernel32.InitializeCriticalSection
 00482671    push        482698
 00482676    push        0
 00482678    push        0FF
 0048267A    push        0
 0048267C    call        kernel32.CreateEventA
 00482681    mov         [0055DAD0],eax;gvar_0055DAD0
 00482686    cmp         dword ptr ds:[55DAD0],0;gvar_0055DAD0
>0048268D    jne         00482694
 0048268F    call        RaiseLastOSError
 00482694    pop         ebp
 00482695    ret
*}
end;

//0048269C
procedure DoneThreadSynchronization;
begin
{*
 0048269C    push        ebp
 0048269D    mov         ebp,esp
 0048269F    push        55DAE8;gvar_0055DAE8
 004826A4    call        kernel32.DeleteCriticalSection
 004826A9    mov         eax,[0055DAD0];gvar_0055DAD0
 004826AE    push        eax
 004826AF    call        kernel32.CloseHandle
 004826B4    pop         ebp
 004826B5    ret
*}
end;

//004826B8
procedure sub_004826B8;
begin
{*
 004826B8    push        ebp
 004826B9    mov         ebp,esp
 004826BB    mov         eax,[0055DAD0];gvar_0055DAD0
 004826C0    push        eax
 004826C1    call        kernel32.ResetEvent
 004826C6    pop         ebp
 004826C7    ret
*}
end;

//004826C8
{*procedure sub_004826C8(?:?);
begin
 004826C8    push        ebp
 004826C9    mov         ebp,esp
 004826CB    push        ecx
 004826CC    mov         dword ptr [ebp-4],eax
 004826CF    mov         eax,dword ptr [ebp-4]
 004826D2    push        eax
 004826D3    mov         eax,[0055DAD0];gvar_0055DAD0
 004826D8    push        eax
 004826D9    call        kernel32.WaitForSingleObject
 004826DE    test        eax,eax
>004826E0    jne         004826E7
 004826E2    call        004826B8
 004826E7    pop         ecx
 004826E8    pop         ebp
 004826E9    ret
end;*}

//004826EC
procedure sub_004826EC;
begin
{*
 004826EC    push        ebp
 004826ED    mov         ebp,esp
 004826EF    mov         eax,[0055DAD0];gvar_0055DAD0
 004826F4    push        eax
 004826F5    call        kernel32.SetEvent
 004826FA    pop         ebp
 004826FB    ret
*}
end;

//004826FC
procedure sub_004826FC;
begin
{*
 004826FC    push        ebp
 004826FD    mov         ebp,esp
 004826FF    push        55DB00;gvar_0055DB00
 00482704    call        kernel32.InterlockedIncrement
 00482709    pop         ebp
 0048270A    ret
*}
end;

//0048270C
procedure sub_0048270C;
begin
{*
 0048270C    push        ebp
 0048270D    mov         ebp,esp
 0048270F    push        55DB00;gvar_0055DB00
 00482714    call        kernel32.InterlockedDecrement
 00482719    pop         ebp
 0048271A    ret
*}
end;

//0048271C
{*function sub_0048271C(?:?):?;
begin
 0048271C    push        ebp
 0048271D    mov         ebp,esp
 0048271F    add         esp,0FFFFFFE8
 00482722    push        ebx
 00482723    push        esi
 00482724    push        edi
 00482725    mov         dword ptr [ebp-4],eax
 00482728    call        kernel32.GetCurrentThreadId
 0048272D    mov         edx,dword ptr ds:[55B718];^gvar_0055B718
 00482733    cmp         eax,dword ptr [edx]
>00482735    je          00482760
 00482737    call        kernel32.GetCurrentThreadId
 0048273C    mov         dword ptr [ebp-18],eax
 0048273F    mov         byte ptr [ebp-14],0
 00482743    lea         eax,[ebp-18]
 00482746    push        eax
 00482747    push        0
 00482749    mov         ecx,dword ptr ds:[55B4C4];^SCheckSynchronizeError:TResStringRec
 0048274F    mov         dl,1
 00482751    mov         eax,[004767C4];EThread
 00482756    call        Exception.CreateResFmt;EThread.Create
 0048275B    call        @RaiseExcept
 00482760    cmp         dword ptr [ebp-4],0
>00482764    jle         00482770
 00482766    mov         eax,dword ptr [ebp-4]
 00482769    call        004826C8
>0048276E    jmp         00482775
 00482770    call        004826B8
 00482775    xor         eax,eax
 00482777    mov         dword ptr [ebp-10],eax
 0048277A    push        55DAE8;gvar_0055DAE8
 0048277F    call        kernel32.EnterCriticalSection
 00482784    xor         eax,eax
 00482786    push        ebp
 00482787    push        4828AE
 0048278C    push        dword ptr fs:[eax]
 0048278F    mov         dword ptr fs:[eax],esp
 00482792    mov         eax,dword ptr [ebp-10]
 00482795    push        eax
 00482796    push        540D84;gvar_00540D84:TList
 0048279B    call        kernel32.InterlockedExchange
 004827A0    mov         dword ptr [ebp-10],eax
 004827A3    xor         eax,eax
 004827A5    push        ebp
 004827A6    push        48288F
 004827AB    push        dword ptr fs:[eax]
 004827AE    mov         dword ptr fs:[eax],esp
 004827B1    cmp         dword ptr [ebp-10],0
>004827B5    je          004827C0
 004827B7    mov         eax,dword ptr [ebp-10]
 004827BA    cmp         dword ptr [eax+8],0
>004827BE    jg          004827C4
 004827C0    xor         eax,eax
>004827C2    jmp         004827C6
 004827C4    mov         al,1
 004827C6    mov         byte ptr [ebp-5],al
 004827C9    cmp         byte ptr [ebp-5],0
>004827CD    je          00482879
>004827D3    jmp         0048286C
 004827D8    xor         edx,edx
 004827DA    mov         eax,dword ptr [ebp-10]
 004827DD    call        TList.Get
 004827E2    mov         dword ptr [ebp-0C],eax
 004827E5    xor         edx,edx
 004827E7    mov         eax,dword ptr [ebp-10]
 004827EA    call        00478668
 004827EF    push        55DAE8;gvar_0055DAE8
 004827F4    call        kernel32.LeaveCriticalSection
 004827F9    xor         eax,eax
 004827FB    push        ebp
 004827FC    push        482859
 00482801    push        dword ptr fs:[eax]
 00482804    mov         dword ptr fs:[eax],esp
 00482807    xor         eax,eax
 00482809    push        ebp
 0048280A    push        48282A
 0048280F    push        dword ptr fs:[eax]
 00482812    mov         dword ptr fs:[eax],esp
 00482815    mov         eax,dword ptr [ebp-0C]
 00482818    mov         ebx,dword ptr [eax]
 0048281A    mov         eax,dword ptr [ebx+0C]
 0048281D    call        dword ptr [ebx+8]
 00482820    xor         eax,eax
 00482822    pop         edx
 00482823    pop         ecx
 00482824    pop         ecx
 00482825    mov         dword ptr fs:[eax],edx
>00482828    jmp         00482841
>0048282A    jmp         @HandleAnyException
 0048282F    call        AcquireExceptionObject
 00482834    mov         edx,dword ptr [ebp-0C]
 00482837    mov         edx,dword ptr [edx]
 00482839    mov         dword ptr [edx+10],eax
 0048283C    call        @DoneExcept
 00482841    xor         eax,eax
 00482843    pop         edx
 00482844    pop         ecx
 00482845    pop         ecx
 00482846    mov         dword ptr fs:[eax],edx
 00482849    push        482860
 0048284E    push        55DAE8;gvar_0055DAE8
 00482853    call        kernel32.EnterCriticalSection
 00482858    ret
>00482859    jmp         @HandleFinally
>0048285E    jmp         0048284E
 00482860    mov         eax,dword ptr [ebp-0C]
 00482863    mov         eax,dword ptr [eax+4]
 00482866    push        eax
 00482867    call        kernel32.SetEvent
 0048286C    mov         eax,dword ptr [ebp-10]
 0048286F    cmp         dword ptr [eax+8],0
>00482873    jg          004827D8
 00482879    xor         eax,eax
 0048287B    pop         edx
 0048287C    pop         ecx
 0048287D    pop         ecx
 0048287E    mov         dword ptr fs:[eax],edx
 00482881    push        482896
 00482886    mov         eax,dword ptr [ebp-10]
 00482889    call        TObject.Free
 0048288E    ret
>0048288F    jmp         @HandleFinally
>00482894    jmp         00482886
 00482896    xor         eax,eax
 00482898    pop         edx
 00482899    pop         ecx
 0048289A    pop         ecx
 0048289B    mov         dword ptr fs:[eax],edx
 0048289E    push        4828B5
 004828A3    push        55DAE8;gvar_0055DAE8
 004828A8    call        kernel32.LeaveCriticalSection
 004828AD    ret
>004828AE    jmp         @HandleFinally
>004828B3    jmp         004828A3
 004828B5    mov         al,byte ptr [ebp-5]
 004828B8    pop         edi
 004828B9    pop         esi
 004828BA    pop         ebx
 004828BB    mov         esp,ebp
 004828BD    pop         ebp
 004828BE    ret
end;*}

//00482974
constructor sub_00482974;
begin
{*
 00482974    push        ebp
 00482975    mov         ebp,esp
 00482977    add         esp,0FFFFFFEC
 0048297A    push        ebx
 0048297B    xor         ebx,ebx
 0048297D    mov         dword ptr [ebp-14],ebx
 00482980    test        dl,dl
>00482982    je          0048298C
 00482984    add         esp,0FFFFFFF0
 00482987    call        @ClassCreate
 0048298C    mov         byte ptr [ebp-6],cl
 0048298F    mov         byte ptr [ebp-5],dl
 00482992    mov         dword ptr [ebp-4],eax
 00482995    xor         eax,eax
 00482997    push        ebp
 00482998    push        482A38
 0048299D    push        dword ptr fs:[eax]
 004829A0    mov         dword ptr fs:[eax],esp
 004829A3    xor         edx,edx
 004829A5    mov         eax,dword ptr [ebp-4]
 004829A8    call        TObject.Create
 004829AD    call        004826FC
 004829B2    mov         eax,dword ptr [ebp-4]
 004829B5    mov         dl,byte ptr [ebp-6]
 004829B8    mov         byte ptr [eax+0E],dl
 004829BB    mov         eax,dword ptr [ebp-4]
 004829BE    mov         dl,byte ptr [ebp-6]
 004829C1    mov         byte ptr [eax+0C],dl
 004829C4    mov         eax,dword ptr [ebp-4]
 004829C7    push        eax
 004829C8    push        4
 004829CA    mov         eax,dword ptr [ebp-4]
 004829CD    add         eax,8
 004829D0    push        eax
 004829D1    mov         ecx,4828C0
 004829D6    xor         edx,edx
 004829D8    xor         eax,eax
 004829DA    call        BeginThread
 004829DF    mov         edx,dword ptr [ebp-4]
 004829E2    mov         dword ptr [edx+4],eax
 004829E5    mov         eax,dword ptr [ebp-4]
 004829E8    cmp         dword ptr [eax+4],0
>004829EC    jne         00482A22
 004829EE    call        kernel32.GetLastError
 004829F3    lea         edx,[ebp-14]
 004829F6    call        SysErrorMessage
 004829FB    mov         eax,dword ptr [ebp-14]
 004829FE    mov         dword ptr [ebp-10],eax
 00482A01    mov         byte ptr [ebp-0C],0B
 00482A05    lea         eax,[ebp-10]
 00482A08    push        eax
 00482A09    push        0
 00482A0B    mov         ecx,dword ptr ds:[55B64C];^SThreadCreateError:TResStringRec
 00482A11    mov         dl,1
 00482A13    mov         eax,[004767C4];EThread
 00482A18    call        Exception.CreateResFmt;EThread.Create
 00482A1D    call        @RaiseExcept
 00482A22    xor         eax,eax
 00482A24    pop         edx
 00482A25    pop         ecx
 00482A26    pop         ecx
 00482A27    mov         dword ptr fs:[eax],edx
 00482A2A    push        482A3F
 00482A2F    lea         eax,[ebp-14]
 00482A32    call        @LStrClr
 00482A37    ret
>00482A38    jmp         @HandleFinally
>00482A3D    jmp         00482A2F
 00482A3F    mov         eax,dword ptr [ebp-4]
 00482A42    cmp         byte ptr [ebp-5],0
>00482A46    je          00482A57
 00482A48    call        @AfterConstruction
 00482A4D    pop         dword ptr fs:[0]
 00482A54    add         esp,0C
 00482A57    mov         eax,dword ptr [ebp-4]
 00482A5A    pop         ebx
 00482A5B    mov         esp,ebp
 00482A5D    pop         ebp
 00482A5E    ret
*}
end;

//00482A60
destructor TThread.Destroy;
begin
{*
 00482A60    push        ebp
 00482A61    mov         ebp,esp
 00482A63    add         esp,0FFFFFFF8
 00482A66    call        @BeforeDestruction
 00482A6B    mov         byte ptr [ebp-5],dl
 00482A6E    mov         dword ptr [ebp-4],eax
 00482A71    mov         eax,dword ptr [ebp-4]
 00482A74    cmp         dword ptr [eax+8],0
>00482A78    je          00482AA4
 00482A7A    mov         eax,dword ptr [ebp-4]
 00482A7D    cmp         byte ptr [eax+10],0
>00482A81    jne         00482AA4
 00482A83    mov         eax,dword ptr [ebp-4]
 00482A86    call        00482E40
 00482A8B    mov         eax,dword ptr [ebp-4]
 00482A8E    cmp         byte ptr [eax+0C],0
>00482A92    je          00482A9C
 00482A94    mov         eax,dword ptr [ebp-4]
 00482A97    call        00482E08
 00482A9C    mov         eax,dword ptr [ebp-4]
 00482A9F    call        00482E54
 00482AA4    mov         eax,dword ptr [ebp-4]
 00482AA7    cmp         dword ptr [eax+4],0
>00482AAB    je          00482AB9
 00482AAD    mov         eax,dword ptr [ebp-4]
 00482AB0    mov         eax,dword ptr [eax+4]
 00482AB3    push        eax
 00482AB4    call        kernel32.CloseHandle
 00482AB9    mov         dl,byte ptr [ebp-5]
 00482ABC    and         dl,0FC
 00482ABF    mov         eax,dword ptr [ebp-4]
 00482AC2    call        TObject.Destroy
 00482AC7    mov         eax,dword ptr [ebp-4]
 00482ACA    mov         eax,dword ptr [eax+38]
 00482ACD    call        TObject.Free
 00482AD2    call        0048270C
 00482AD7    cmp         byte ptr [ebp-5],0
>00482ADB    jle         00482AE5
 00482ADD    mov         eax,dword ptr [ebp-4]
 00482AE0    call        @ClassDestroy
 00482AE5    pop         ecx
 00482AE6    pop         ecx
 00482AE7    pop         ebp
 00482AE8    ret
*}
end;

//00482AEC
procedure TThread.AfterConstruction;
begin
{*
 00482AEC    push        ebp
 00482AED    mov         ebp,esp
 00482AEF    push        ecx
 00482AF0    mov         dword ptr [ebp-4],eax
 00482AF3    mov         eax,dword ptr [ebp-4]
 00482AF6    cmp         byte ptr [eax+0C],0
>00482AFA    jne         00482B04
 00482AFC    mov         eax,dword ptr [ebp-4]
 00482AFF    call        00482E08
 00482B04    pop         ecx
 00482B05    pop         ebp
 00482B06    ret
*}
end;

//00482B08
{*procedure sub_00482B08(?:?; ?:Integer);
begin
 00482B08    push        ebp
 00482B09    mov         ebp,esp
 00482B0B    add         esp,0FFFFFFE4
 00482B0E    xor         ecx,ecx
 00482B10    mov         dword ptr [ebp-1C],ecx
 00482B13    mov         dword ptr [ebp-8],edx
 00482B16    mov         dword ptr [ebp-4],eax
 00482B19    xor         eax,eax
 00482B1B    push        ebp
 00482B1C    push        482B7F
 00482B21    push        dword ptr fs:[eax]
 00482B24    mov         dword ptr fs:[eax],esp
 00482B27    cmp         dword ptr [ebp-8],0
>00482B2B    je          00482B69
 00482B2D    lea         edx,[ebp-1C]
 00482B30    mov         eax,dword ptr [ebp-8]
 00482B33    call        SysErrorMessage
 00482B38    mov         eax,dword ptr [ebp-1C]
 00482B3B    mov         dword ptr [ebp-18],eax
 00482B3E    mov         byte ptr [ebp-14],0B
 00482B42    mov         eax,dword ptr [ebp-8]
 00482B45    mov         dword ptr [ebp-10],eax
 00482B48    mov         byte ptr [ebp-0C],0
 00482B4C    lea         eax,[ebp-18]
 00482B4F    push        eax
 00482B50    push        1
 00482B52    mov         ecx,dword ptr ds:[55B360];^SThreadError:TResStringRec
 00482B58    mov         dl,1
 00482B5A    mov         eax,[004767C4];EThread
 00482B5F    call        Exception.CreateResFmt;EThread.Create
 00482B64    call        @RaiseExcept
 00482B69    xor         eax,eax
 00482B6B    pop         edx
 00482B6C    pop         ecx
 00482B6D    pop         ecx
 00482B6E    mov         dword ptr fs:[eax],edx
 00482B71    push        482B86
 00482B76    lea         eax,[ebp-1C]
 00482B79    call        @LStrClr
 00482B7E    ret
>00482B7F    jmp         @HandleFinally
>00482B84    jmp         00482B76
 00482B86    mov         esp,ebp
 00482B88    pop         ebp
 00482B89    ret
end;*}

//00482B8C
{*procedure sub_00482B8C(?:?; ?:?);
begin
 00482B8C    push        ebp
 00482B8D    mov         ebp,esp
 00482B8F    add         esp,0FFFFFFF8
 00482B92    mov         byte ptr [ebp-5],dl
 00482B95    mov         dword ptr [ebp-4],eax
 00482B98    cmp         byte ptr [ebp-5],0
>00482B9C    jne         00482BAD
 00482B9E    call        kernel32.GetLastError
 00482BA3    mov         edx,eax
 00482BA5    mov         eax,dword ptr [ebp-4]
 00482BA8    call        00482B08
 00482BAD    pop         ecx
 00482BAE    pop         ecx
 00482BAF    pop         ebp
 00482BB0    ret
end;*}

//00482BD8
procedure sub_00482BD8;
begin
{*
 00482BD8    push        ebp
 00482BD9    mov         ebp,esp
 00482BDB    push        ecx
 00482BDC    mov         dword ptr [ebp-4],eax
 00482BDF    mov         eax,dword ptr [ebp-4]
 00482BE2    cmp         word ptr [eax+1A],0;TThread.?f1A:word
>00482BE7    je          00482BFA
 00482BE9    mov         eax,dword ptr [ebp-4]
 00482BEC    push        eax
 00482BED    push        482BB4
 00482BF2    mov         eax,dword ptr [ebp-4]
 00482BF5    call        00482D80
 00482BFA    pop         ecx
 00482BFB    pop         ebp
 00482BFC    ret
*}
end;

//00482C00
{*procedure sub_00482C00(?:TServerClientThread; ?:?);
begin
 00482C00    push        ebp
 00482C01    mov         ebp,esp
 00482C03    add         esp,0FFFFFFF8
 00482C06    mov         byte ptr [ebp-5],dl
 00482C09    mov         dword ptr [ebp-4],eax
 00482C0C    xor         eax,eax
 00482C0E    mov         al,byte ptr [ebp-5]
 00482C11    mov         eax,dword ptr [eax*4+540D88]
 00482C18    push        eax
 00482C19    mov         eax,dword ptr [ebp-4]
 00482C1C    mov         eax,dword ptr [eax+4]
 00482C1F    push        eax
 00482C20    call        kernel32.SetThreadPriority
 00482C25    cmp         eax,1
 00482C28    sbb         edx,edx
 00482C2A    inc         edx
 00482C2B    mov         eax,dword ptr [ebp-4]
 00482C2E    call        00482B8C
 00482C33    pop         ecx
 00482C34    pop         ecx
 00482C35    pop         ebp
 00482C36    ret
end;*}

//00482C38
{*procedure sub_00482C38(?:TThread; ?:?);
begin
 00482C38    push        ebp
 00482C39    mov         ebp,esp
 00482C3B    add         esp,0FFFFFFF0
 00482C3E    push        ebx
 00482C3F    mov         dword ptr [ebp-8],edx
 00482C42    mov         dword ptr [ebp-4],eax
 00482C45    call        kernel32.GetCurrentThreadId
 00482C4A    mov         edx,dword ptr ds:[55B718];^gvar_0055B718
 00482C50    cmp         eax,dword ptr [edx]
>00482C52    jne         00482C62
 00482C54    mov         ebx,dword ptr [ebp-8]
 00482C57    mov         eax,dword ptr [ebx+0C]
 00482C5A    call        dword ptr [ebx+8]
>00482C5D    jmp         00482D78
 00482C62    push        0
 00482C64    push        0
 00482C66    push        0FF
 00482C68    push        0
 00482C6A    call        kernel32.CreateEventA
 00482C6F    mov         dword ptr [ebp-0C],eax
 00482C72    xor         eax,eax
 00482C74    push        ebp
 00482C75    push        482D5D
 00482C7A    push        dword ptr fs:[eax]
 00482C7D    mov         dword ptr fs:[eax],esp
 00482C80    push        55DAE8;gvar_0055DAE8
 00482C85    call        kernel32.EnterCriticalSection
 00482C8A    xor         eax,eax
 00482C8C    push        ebp
 00482C8D    push        482D3F
 00482C92    push        dword ptr fs:[eax]
 00482C95    mov         dword ptr fs:[eax],esp
 00482C98    cmp         dword ptr ds:[540D84],0;gvar_00540D84:TList
>00482C9F    jne         00482CB2
 00482CA1    mov         dl,1
 00482CA3    mov         eax,[004759C0];TList
 00482CA8    call        TObject.Create;TList.Create
 00482CAD    mov         [00540D84],eax;gvar_00540D84:TList
 00482CB2    mov         eax,dword ptr [ebp-8]
 00482CB5    mov         dword ptr [ebp-10],eax
 00482CB8    lea         edx,[ebp-10]
 00482CBB    mov         eax,[00540D84];0x0 gvar_00540D84:TList
 00482CC0    call        TList.Add
 00482CC5    call        004826EC
 00482CCA    cmp         word ptr ds:[540CF2],0;gvar_00540CF2
>00482CD2    je          00482CE5
 00482CD4    mov         eax,dword ptr [ebp-10]
 00482CD7    mov         edx,dword ptr [eax]
 00482CD9    mov         eax,dword ptr ds:[540CF4];0x0 gvar_00540CF4
 00482CDF    call        dword ptr ds:[540CF0]
 00482CE5    push        55DAE8;gvar_0055DAE8
 00482CEA    call        kernel32.LeaveCriticalSection
 00482CEF    xor         eax,eax
 00482CF1    push        ebp
 00482CF2    push        482D20
 00482CF7    push        dword ptr fs:[eax]
 00482CFA    mov         dword ptr fs:[eax],esp
 00482CFD    push        0FF
 00482CFF    mov         eax,dword ptr [ebp-0C]
 00482D02    push        eax
 00482D03    call        kernel32.WaitForSingleObject
 00482D08    xor         eax,eax
 00482D0A    pop         edx
 00482D0B    pop         ecx
 00482D0C    pop         ecx
 00482D0D    mov         dword ptr fs:[eax],edx
 00482D10    push        482D27
 00482D15    push        55DAE8;gvar_0055DAE8
 00482D1A    call        kernel32.EnterCriticalSection
 00482D1F    ret
>00482D20    jmp         @HandleFinally
>00482D25    jmp         00482D15
 00482D27    xor         eax,eax
 00482D29    pop         edx
 00482D2A    pop         ecx
 00482D2B    pop         ecx
 00482D2C    mov         dword ptr fs:[eax],edx
 00482D2F    push        482D46
 00482D34    push        55DAE8;gvar_0055DAE8
 00482D39    call        kernel32.LeaveCriticalSection
 00482D3E    ret
>00482D3F    jmp         @HandleFinally
>00482D44    jmp         00482D34
 00482D46    xor         eax,eax
 00482D48    pop         edx
 00482D49    pop         ecx
 00482D4A    pop         ecx
 00482D4B    mov         dword ptr fs:[eax],edx
 00482D4E    push        482D64
 00482D53    mov         eax,dword ptr [ebp-0C]
 00482D56    push        eax
 00482D57    call        kernel32.CloseHandle
 00482D5C    ret
>00482D5D    jmp         @HandleFinally
>00482D62    jmp         00482D53
 00482D64    mov         eax,dword ptr [ebp-8]
 00482D67    cmp         dword ptr [eax+10],0
>00482D6B    je          00482D78
 00482D6D    mov         eax,dword ptr [ebp-8]
 00482D70    mov         eax,dword ptr [eax+10]
 00482D73    call        @RaiseExcept
 00482D78    pop         ebx
 00482D79    mov         esp,ebp
 00482D7B    pop         ebp
 00482D7C    ret
end;*}

//00482D80
{*procedure sub_00482D80(?:TThread; ?:?; ?:?);
begin
 00482D80    push        ebp
 00482D81    mov         ebp,esp
 00482D83    push        ecx
 00482D84    mov         dword ptr [ebp-4],eax
 00482D87    mov         eax,dword ptr [ebp-4]
 00482D8A    mov         edx,dword ptr [ebp-4]
 00482D8D    mov         dword ptr [edx+20],eax;TThread.FSynchronize:TSynchronizeRecord
 00482D90    mov         eax,dword ptr [ebp-4]
 00482D93    xor         edx,edx
 00482D95    mov         dword ptr [eax+30],edx
 00482D98    mov         eax,dword ptr [ebp-4]
 00482D9B    mov         edx,dword ptr [ebp+8]
 00482D9E    mov         dword ptr [eax+28],edx;TThread.FSynchronize.FMethod:TThreadMethod
 00482DA1    mov         edx,dword ptr [ebp+0C]
 00482DA4    mov         dword ptr [eax+2C],edx;TThread.FSynchronize.FMethod:TThreadMethod
 00482DA7    mov         eax,dword ptr [ebp-4]
 00482DAA    lea         edx,[eax+20];TThread.FSynchronize:TSynchronizeRecord
 00482DAD    mov         eax,dword ptr [ebp-4]
 00482DB0    mov         eax,dword ptr [eax]
 00482DB2    call        00482C38
 00482DB7    pop         ecx
 00482DB8    pop         ebp
 00482DB9    ret         8
end;*}

//00482DBC
{*procedure sub_00482DBC(?:?; ?:?; ?:?; ?:?);
begin
 00482DBC    push        ebp
 00482DBD    mov         ebp,esp
 00482DBF    add         esp,0FFFFFFE0
 00482DC2    mov         dword ptr [ebp-8],edx
 00482DC5    mov         dword ptr [ebp-4],eax
 00482DC8    cmp         dword ptr [ebp-8],0
>00482DCC    je          00482DDE
 00482DCE    push        dword ptr [ebp+0C]
 00482DD1    push        dword ptr [ebp+8]
 00482DD4    mov         eax,dword ptr [ebp-8]
 00482DD7    call        00482D80
>00482DDC    jmp         00482E01
 00482DDE    xor         eax,eax
 00482DE0    mov         dword ptr [ebp-20],eax
 00482DE3    xor         eax,eax
 00482DE5    mov         dword ptr [ebp-10],eax
 00482DE8    mov         eax,dword ptr [ebp+8]
 00482DEB    mov         dword ptr [ebp-18],eax
 00482DEE    mov         eax,dword ptr [ebp+0C]
 00482DF1    mov         dword ptr [ebp-14],eax
 00482DF4    lea         edx,[ebp-20]
 00482DF7    mov         eax,[00476818];TThread
 00482DFC    call        00482C38
 00482E01    mov         esp,ebp
 00482E03    pop         ebp
 00482E04    ret         8
end;*}

//00482E08
procedure sub_00482E08(?:TThread);
begin
{*
 00482E08    push        ebp
 00482E09    mov         ebp,esp
 00482E0B    add         esp,0FFFFFFF8
 00482E0E    mov         dword ptr [ebp-4],eax
 00482E11    mov         eax,dword ptr [ebp-4]
 00482E14    mov         eax,dword ptr [eax+4]
 00482E17    push        eax
 00482E18    call        kernel32.ResumeThread
 00482E1D    mov         dword ptr [ebp-8],eax
 00482E20    cmp         dword ptr [ebp-8],0
 00482E24    setge       dl
 00482E27    mov         eax,dword ptr [ebp-4]
 00482E2A    call        00482B8C
 00482E2F    cmp         dword ptr [ebp-8],1
>00482E33    jne         00482E3C
 00482E35    mov         eax,dword ptr [ebp-4]
 00482E38    mov         byte ptr [eax+0E],0
 00482E3C    pop         ecx
 00482E3D    pop         ecx
 00482E3E    pop         ebp
 00482E3F    ret
*}
end;

//00482E40
procedure sub_00482E40(?:TThread);
begin
{*
 00482E40    push        ebp
 00482E41    mov         ebp,esp
 00482E43    push        ecx
 00482E44    mov         dword ptr [ebp-4],eax
 00482E47    mov         eax,dword ptr [ebp-4]
 00482E4A    mov         byte ptr [eax+0D],1
 00482E4E    pop         ecx
 00482E4F    pop         ebp
 00482E50    ret
*}
end;

//00482E54
{*function sub_00482E54(?:?):?;
begin
 00482E54    push        ebp
 00482E55    mov         ebp,esp
 00482E57    add         esp,0FFFFFFD0
 00482E5A    mov         dword ptr [ebp-4],eax
 00482E5D    mov         eax,dword ptr [ebp-4]
 00482E60    mov         eax,dword ptr [eax+4]
 00482E63    mov         dword ptr [ebp-10],eax
 00482E66    call        kernel32.GetCurrentThreadId
 00482E6B    mov         edx,dword ptr ds:[55B718];^gvar_0055B718
 00482E71    cmp         eax,dword ptr [edx]
>00482E73    jne         00482ED4
 00482E75    xor         eax,eax
 00482E77    mov         dword ptr [ebp-14],eax
 00482E7A    mov         eax,[0055DAD0];gvar_0055DAD0
 00482E7F    mov         dword ptr [ebp-0C],eax
 00482E82    cmp         dword ptr [ebp-14],2
>00482E86    jne         00482E99
 00482E88    push        0
 00482E8A    push        0
 00482E8C    push        0
 00482E8E    push        0
 00482E90    lea         eax,[ebp-30]
 00482E93    push        eax
 00482E94    call        user32.PeekMessageA
 00482E99    push        40
 00482E9B    push        3E8
 00482EA0    push        0
 00482EA2    lea         eax,[ebp-10]
 00482EA5    push        eax
 00482EA6    push        2
 00482EA8    call        user32.MsgWaitForMultipleObjects
 00482EAD    mov         dword ptr [ebp-14],eax
 00482EB0    cmp         dword ptr [ebp-14],0FFFFFFFF
 00482EB4    setne       dl
 00482EB7    mov         eax,dword ptr [ebp-4]
 00482EBA    call        00482B8C
 00482EBF    cmp         dword ptr [ebp-14],1
>00482EC3    jne         00482ECC
 00482EC5    xor         eax,eax
 00482EC7    call        0048271C
 00482ECC    cmp         dword ptr [ebp-14],0
>00482ED0    jne         00482E82
>00482ED2    jmp         00482EDF
 00482ED4    push        0FF
 00482ED6    mov         eax,dword ptr [ebp-10]
 00482ED9    push        eax
 00482EDA    call        kernel32.WaitForSingleObject
 00482EDF    lea         eax,[ebp-8]
 00482EE2    push        eax
 00482EE3    mov         eax,dword ptr [ebp-10]
 00482EE6    push        eax
 00482EE7    call        kernel32.GetExitCodeThread
 00482EEC    cmp         eax,1
 00482EEF    sbb         edx,edx
 00482EF1    inc         edx
 00482EF2    mov         eax,dword ptr [ebp-4]
 00482EF5    call        00482B8C
 00482EFA    mov         eax,dword ptr [ebp-8]
 00482EFD    mov         esp,ebp
 00482EFF    pop         ebp
 00482F00    ret
end;*}

//00482F04
constructor sub_00482F04;
begin
{*
 00482F04    push        ebp
 00482F05    mov         ebp,esp
 00482F07    add         esp,0FFFFFFF4
 00482F0A    test        dl,dl
>00482F0C    je          00482F16
 00482F0E    add         esp,0FFFFFFF0
 00482F11    call        @ClassCreate
 00482F16    mov         dword ptr [ebp-0C],ecx
 00482F19    mov         byte ptr [ebp-5],dl
 00482F1C    mov         dword ptr [ebp-4],eax
 00482F1F    mov         eax,dword ptr [ebp-4]
 00482F22    mov         dl,byte ptr ds:[482F5C];0x1 gvar_00482F5C
 00482F28    mov         byte ptr [eax+24],dl;TComponent.FComponentStyle:TComponentStyle
 00482F2B    cmp         dword ptr [ebp-0C],0
>00482F2F    je          00482F3C
 00482F31    mov         edx,dword ptr [ebp-4]
 00482F34    mov         eax,dword ptr [ebp-0C]
 00482F37    call        004831A4
 00482F3C    mov         eax,dword ptr [ebp-4]
 00482F3F    cmp         byte ptr [ebp-5],0
>00482F43    je          00482F54
 00482F45    call        @AfterConstruction
 00482F4A    pop         dword ptr fs:[0]
 00482F51    add         esp,0C
 00482F54    mov         eax,dword ptr [ebp-4]
 00482F57    mov         esp,ebp
 00482F59    pop         ebp
 00482F5A    ret
*}
end;

//00482F60
destructor TComponent.Destroy;
begin
{*
 00482F60    push        ebp
 00482F61    mov         ebp,esp
 00482F63    add         esp,0FFFFFFF8
 00482F66    push        ebx
 00482F67    call        @BeforeDestruction
 00482F6C    mov         byte ptr [ebp-5],dl
 00482F6F    mov         dword ptr [ebp-4],eax
 00482F72    mov         eax,dword ptr [ebp-4]
 00482F75    call        004832CC
 00482F7A    mov         eax,dword ptr [ebp-4]
 00482F7D    cmp         dword ptr [eax+14],0
>00482F81    je          00482FC4
>00482F83    jmp         00482FA4
 00482F85    mov         eax,dword ptr [ebp-4]
 00482F88    mov         eax,dword ptr [eax+14]
 00482F8B    mov         edx,dword ptr [eax+8]
 00482F8E    dec         edx
 00482F8F    mov         eax,dword ptr [ebp-4]
 00482F92    mov         eax,dword ptr [eax+14]
 00482F95    call        TList.Get
 00482F9A    mov         cl,1
 00482F9C    mov         edx,dword ptr [ebp-4]
 00482F9F    mov         ebx,dword ptr [eax]
 00482FA1    call        dword ptr [ebx+10]
 00482FA4    mov         eax,dword ptr [ebp-4]
 00482FA7    cmp         dword ptr [eax+14],0
>00482FAB    je          00482FB9
 00482FAD    mov         eax,dword ptr [ebp-4]
 00482FB0    mov         eax,dword ptr [eax+14]
 00482FB3    cmp         dword ptr [eax+8],0
>00482FB7    jg          00482F85
 00482FB9    mov         eax,dword ptr [ebp-4]
 00482FBC    add         eax,14
 00482FBF    call        FreeAndNil
 00482FC4    mov         eax,dword ptr [ebp-4]
 00482FC7    call        0048325C
 00482FCC    mov         eax,dword ptr [ebp-4]
 00482FCF    cmp         dword ptr [eax+4],0
>00482FD3    je          00482FE3
 00482FD5    mov         eax,dword ptr [ebp-4]
 00482FD8    mov         eax,dword ptr [eax+4]
 00482FDB    mov         edx,dword ptr [ebp-4]
 00482FDE    call        00483214
 00482FE3    mov         dl,byte ptr [ebp-5]
 00482FE6    and         dl,0FC
 00482FE9    mov         eax,dword ptr [ebp-4]
 00482FEC    call        TPersistent.Destroy
 00482FF1    cmp         byte ptr [ebp-5],0
>00482FF5    jle         00482FFF
 00482FF7    mov         eax,dword ptr [ebp-4]
 00482FFA    call        @ClassDestroy
 00482FFF    pop         ebx
 00483000    pop         ecx
 00483001    pop         ecx
 00483002    pop         ebp
 00483003    ret
*}
end;

//00483004
procedure TComponent.BeforeDestruction;
begin
{*
 00483004    push        ebp
 00483005    mov         ebp,esp
 00483007    push        ecx
 00483008    mov         dword ptr [ebp-4],eax
 0048300B    mov         eax,dword ptr [ebp-4]
 0048300E    test        byte ptr [eax+1C],8
>00483012    jne         0048301C
 00483014    mov         eax,dword ptr [ebp-4]
 00483017    call        004832CC
 0048301C    pop         ecx
 0048301D    pop         ebp
 0048301E    ret
*}
end;

//00483020
procedure sub_00483020(?:TComponent; ?:TComponent);
begin
{*
 00483020    push        ebp
 00483021    mov         ebp,esp
 00483023    add         esp,0FFFFFFF8
 00483026    mov         dword ptr [ebp-8],edx
 00483029    mov         dword ptr [ebp-4],eax
 0048302C    mov         eax,dword ptr [ebp-4]
 0048302F    cmp         dword ptr [eax+4],0
>00483033    je          00483043
 00483035    mov         eax,dword ptr [ebp-8]
 00483038    mov         eax,dword ptr [eax+4]
 0048303B    mov         edx,dword ptr [ebp-4]
 0048303E    cmp         eax,dword ptr [edx+4]
>00483041    je          00483089
 00483043    mov         eax,dword ptr [ebp-4]
 00483046    cmp         dword ptr [eax+14],0
>0048304A    jne         0048305E
 0048304C    mov         dl,1
 0048304E    mov         eax,[004759C0];TList
 00483053    call        TObject.Create;TList.Create
 00483058    mov         edx,dword ptr [ebp-4]
 0048305B    mov         dword ptr [edx+14],eax
 0048305E    mov         edx,dword ptr [ebp-8]
 00483061    mov         eax,dword ptr [ebp-4]
 00483064    mov         eax,dword ptr [eax+14]
 00483067    call        00478890
 0048306C    test        eax,eax
>0048306E    jge         00483089
 00483070    mov         edx,dword ptr [ebp-8]
 00483073    mov         eax,dword ptr [ebp-4]
 00483076    mov         eax,dword ptr [eax+14]
 00483079    call        TList.Add
 0048307E    mov         edx,dword ptr [ebp-4]
 00483081    mov         eax,dword ptr [ebp-8]
 00483084    call        00483020
 00483089    mov         eax,dword ptr [ebp-4]
 0048308C    or          word ptr [eax+1C],100
 00483092    pop         ecx
 00483093    pop         ecx
 00483094    pop         ebp
 00483095    ret
*}
end;

//00483118
{*procedure sub_00483118(?:?; ?:TComponent);
begin
 00483118    push        ebp
 00483119    mov         ebp,esp
 0048311B    add         esp,0FFFFFFF8
 0048311E    mov         dword ptr [ebp-8],edx
 00483121    mov         dword ptr [ebp-4],eax
 00483124    mov         eax,dword ptr [ebp-4]
 00483127    cmp         dword ptr [eax+10],0
>0048312B    jne         0048313F
 0048312D    mov         dl,1
 0048312F    mov         eax,[004759C0];TList
 00483134    call        TObject.Create;TList.Create
 00483139    mov         edx,dword ptr [ebp-4]
 0048313C    mov         dword ptr [edx+10],eax
 0048313F    mov         edx,dword ptr [ebp-8]
 00483142    mov         eax,dword ptr [ebp-4]
 00483145    mov         eax,dword ptr [eax+10]
 00483148    call        TList.Add
 0048314D    mov         eax,dword ptr [ebp-4]
 00483150    mov         edx,dword ptr [ebp-8]
 00483153    mov         dword ptr [edx+4],eax
 00483156    pop         ecx
 00483157    pop         ecx
 00483158    pop         ebp
 00483159    ret
end;*}

//0048315C
{*procedure sub_0048315C(?:?; ?:?);
begin
 0048315C    push        ebp
 0048315D    mov         ebp,esp
 0048315F    add         esp,0FFFFFFF8
 00483162    mov         dword ptr [ebp-8],edx
 00483165    mov         dword ptr [ebp-4],eax
 00483168    mov         eax,dword ptr [ebp-8]
 0048316B    xor         edx,edx
 0048316D    mov         dword ptr [eax+4],edx
 00483170    mov         edx,dword ptr [ebp-8]
 00483173    mov         eax,dword ptr [ebp-4]
 00483176    mov         eax,dword ptr [eax+10]
 00483179    call        00478AC4
 0048317E    mov         eax,dword ptr [ebp-4]
 00483181    mov         eax,dword ptr [eax+10]
 00483184    cmp         dword ptr [eax+8],0
>00483188    jne         0048319D
 0048318A    mov         eax,dword ptr [ebp-4]
 0048318D    mov         eax,dword ptr [eax+10]
 00483190    call        TObject.Free
 00483195    mov         eax,dword ptr [ebp-4]
 00483198    xor         edx,edx
 0048319A    mov         dword ptr [eax+10],edx
 0048319D    pop         ecx
 0048319E    pop         ecx
 0048319F    pop         ebp
 004831A0    ret
end;*}

//004831A4
{*procedure sub_004831A4(?:?; ?:TComponent);
begin
 004831A4    push        ebp
 004831A5    mov         ebp,esp
 004831A7    add         esp,0FFFFFFF8
 004831AA    push        ebx
 004831AB    push        esi
 004831AC    mov         dword ptr [ebp-8],edx
 004831AF    mov         dword ptr [ebp-4],eax
 004831B2    mov         edx,dword ptr [ebp-4]
 004831B5    mov         eax,dword ptr [ebp-8]
 004831B8    mov         si,0FFF5
 004831BC    call        @CallDynaInst;TComponent.sub_004836AC
 004831C1    mov         eax,dword ptr [ebp-8]
 004831C4    mov         eax,dword ptr [eax+8];TComponent.Name:TComponentName
 004831C7    push        eax
 004831C8    xor         ecx,ecx
 004831CA    mov         edx,dword ptr [ebp-8]
 004831CD    mov         eax,dword ptr [ebp-4]
 004831D0    mov         ebx,dword ptr [eax]
 004831D2    call        dword ptr [ebx+20]
 004831D5    mov         edx,dword ptr [ebp-8]
 004831D8    mov         eax,dword ptr [ebp-4]
 004831DB    call        00483118
 004831E0    mov         dl,1
 004831E2    mov         eax,dword ptr [ebp-8]
 004831E5    call        00483984
 004831EA    mov         eax,dword ptr [ebp-4]
 004831ED    test        byte ptr [eax+1C],10
>004831F1    je          004831FF
 004831F3    mov         cl,1
 004831F5    mov         dl,1
 004831F7    mov         eax,dword ptr [ebp-8]
 004831FA    call        0048391C
 004831FF    xor         ecx,ecx
 00483201    mov         edx,dword ptr [ebp-8]
 00483204    mov         eax,dword ptr [ebp-4]
 00483207    mov         ebx,dword ptr [eax]
 00483209    call        dword ptr [ebx+10]
 0048320C    pop         esi
 0048320D    pop         ebx
 0048320E    pop         ecx
 0048320F    pop         ecx
 00483210    pop         ebp
 00483211    ret
end;*}

//00483214
{*procedure sub_00483214(?:?; ?:?);
begin
 00483214    push        ebp
 00483215    mov         ebp,esp
 00483217    add         esp,0FFFFFFF8
 0048321A    push        ebx
 0048321B    mov         dword ptr [ebp-8],edx
 0048321E    mov         dword ptr [ebp-4],eax
 00483221    push        0
 00483223    mov         eax,dword ptr [ebp-8]
 00483226    mov         ecx,dword ptr [eax+8]
 00483229    mov         edx,dword ptr [ebp-8]
 0048322C    mov         eax,dword ptr [ebp-4]
 0048322F    mov         ebx,dword ptr [eax]
 00483231    call        dword ptr [ebx+20]
 00483234    mov         cl,1
 00483236    mov         edx,dword ptr [ebp-8]
 00483239    mov         eax,dword ptr [ebp-4]
 0048323C    mov         ebx,dword ptr [eax]
 0048323E    call        dword ptr [ebx+10]
 00483241    xor         edx,edx
 00483243    mov         eax,dword ptr [ebp-8]
 00483246    call        00483984
 0048324B    mov         edx,dword ptr [ebp-8]
 0048324E    mov         eax,dword ptr [ebp-4]
 00483251    call        0048315C
 00483256    pop         ebx
 00483257    pop         ecx
 00483258    pop         ecx
 00483259    pop         ebp
 0048325A    ret
end;*}

//0048325C
{*procedure sub_0048325C(?:?);
begin
 0048325C    push        ebp
 0048325D    mov         ebp,esp
 0048325F    add         esp,0FFFFFFF8
 00483262    mov         dword ptr [ebp-4],eax
>00483265    jmp         004832B9
 00483267    mov         eax,dword ptr [ebp-4]
 0048326A    mov         eax,dword ptr [eax+10]
 0048326D    call        0047898C
 00483272    mov         dword ptr [ebp-8],eax
 00483275    mov         eax,dword ptr [ebp-8]
 00483278    test        byte ptr [eax+1D],1
>0048327C    jne         00483297
 0048327E    mov         ax,[004832C8];0x210 gvar_004832C8
 00483284    mov         edx,dword ptr [ebp-4]
 00483287    and         ax,word ptr [edx+1C]
 0048328B    mov         dx,word ptr ds:[4832C8];0x210 gvar_004832C8
 00483292    cmp         dx,ax
>00483295    jne         004832A4
 00483297    mov         edx,dword ptr [ebp-8]
 0048329A    mov         eax,dword ptr [ebp-4]
 0048329D    call        00483214
>004832A2    jmp         004832AF
 004832A4    mov         edx,dword ptr [ebp-8]
 004832A7    mov         eax,dword ptr [ebp-4]
 004832AA    call        0048315C
 004832AF    mov         dl,1
 004832B1    mov         eax,dword ptr [ebp-8]
 004832B4    mov         ecx,dword ptr [eax]
 004832B6    call        dword ptr [ecx-4]
 004832B9    mov         eax,dword ptr [ebp-4]
 004832BC    cmp         dword ptr [eax+10],0
>004832C0    jne         00483267
 004832C2    pop         ecx
 004832C3    pop         ecx
 004832C4    pop         ebp
 004832C5    ret
end;*}

//004832CC
procedure sub_004832CC(?:Pointer);
begin
{*
 004832CC    push        ebp
 004832CD    mov         ebp,esp
 004832CF    add         esp,0FFFFFFF4
 004832D2    mov         dword ptr [ebp-4],eax
 004832D5    mov         eax,dword ptr [ebp-4]
 004832D8    test        byte ptr [eax+1C],8
>004832DC    jne         00483323
 004832DE    mov         eax,dword ptr [ebp-4]
 004832E1    or          word ptr [eax+1C],8
 004832E6    mov         eax,dword ptr [ebp-4]
 004832E9    cmp         dword ptr [eax+10],0
>004832ED    je          00483323
 004832EF    mov         eax,dword ptr [ebp-4]
 004832F2    mov         eax,dword ptr [eax+10]
 004832F5    mov         eax,dword ptr [eax+8]
 004832F8    dec         eax
 004832F9    test        eax,eax
>004832FB    jl          00483323
 004832FD    inc         eax
 004832FE    mov         dword ptr [ebp-0C],eax
 00483301    mov         dword ptr [ebp-8],0
 00483308    mov         edx,dword ptr [ebp-8]
 0048330B    mov         eax,dword ptr [ebp-4]
 0048330E    mov         eax,dword ptr [eax+10]
 00483311    call        TList.Get
 00483316    call        004832CC
 0048331B    inc         dword ptr [ebp-8]
 0048331E    dec         dword ptr [ebp-0C]
>00483321    jne         00483308
 00483323    mov         esp,ebp
 00483325    pop         ebp
 00483326    ret
*}
end;

//00483328
{*procedure sub_00483328(?:?; ?:?);
begin
 00483328    push        ebp
 00483329    mov         ebp,esp
 0048332B    add         esp,0FFFFFFF8
 0048332E    mov         dword ptr [ebp-8],edx
 00483331    mov         dword ptr [ebp-4],eax
 00483334    mov         eax,dword ptr [ebp-4]
 00483337    cmp         dword ptr [eax+14],0
>0048333B    je          0048336A
 0048333D    mov         edx,dword ptr [ebp-8]
 00483340    mov         eax,dword ptr [ebp-4]
 00483343    mov         eax,dword ptr [eax+14]
 00483346    call        00478AC4
 0048334B    mov         eax,dword ptr [ebp-4]
 0048334E    mov         eax,dword ptr [eax+14]
 00483351    cmp         dword ptr [eax+8],0
>00483355    jne         0048336A
 00483357    mov         eax,dword ptr [ebp-4]
 0048335A    mov         eax,dword ptr [eax+14]
 0048335D    call        TObject.Free
 00483362    mov         eax,dword ptr [ebp-4]
 00483365    xor         edx,edx
 00483367    mov         dword ptr [eax+14],edx
 0048336A    pop         ecx
 0048336B    pop         ecx
 0048336C    pop         ebp
 0048336D    ret
end;*}

//00483370
procedure sub_00483370(?:TComponent; ?:TComponent);
begin
{*
 00483370    push        ebp
 00483371    mov         ebp,esp
 00483373    add         esp,0FFFFFFF8
 00483376    mov         dword ptr [ebp-8],edx
 00483379    mov         dword ptr [ebp-4],eax
 0048337C    mov         edx,dword ptr [ebp-8]
 0048337F    mov         eax,dword ptr [ebp-4]
 00483382    call        00483328
 00483387    mov         edx,dword ptr [ebp-4]
 0048338A    mov         eax,dword ptr [ebp-8]
 0048338D    call        00483328
 00483392    pop         ecx
 00483393    pop         ecx
 00483394    pop         ebp
 00483395    ret
*}
end;

//00483398
{*procedure sub_00483398(?:?; ?:?);
begin
 00483398    push        ebp
 00483399    mov         ebp,esp
 0048339B    add         esp,0FFFFFFF0
 0048339E    push        ebx
 0048339F    mov         byte ptr [ebp-9],cl
 004833A2    mov         dword ptr [ebp-8],edx
 004833A5    mov         dword ptr [ebp-4],eax
 004833A8    cmp         byte ptr [ebp-9],1
>004833AC    jne         004833BF
 004833AE    cmp         dword ptr [ebp-8],0
>004833B2    je          004833BF
 004833B4    mov         edx,dword ptr [ebp-8]
 004833B7    mov         eax,dword ptr [ebp-4]
 004833BA    call        00483370
 004833BF    mov         eax,dword ptr [ebp-4]
 004833C2    cmp         dword ptr [eax+10],0;TComponent.FComponents:TList
>004833C6    je          00483418
 004833C8    mov         eax,dword ptr [ebp-4]
 004833CB    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 004833CE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004833D1    dec         eax
 004833D2    mov         dword ptr [ebp-10],eax
 004833D5    cmp         dword ptr [ebp-10],0
>004833D9    jl          00483418
 004833DB    mov         edx,dword ptr [ebp-10]
 004833DE    mov         eax,dword ptr [ebp-4]
 004833E1    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 004833E4    call        TList.Get
 004833E9    mov         cl,byte ptr [ebp-9]
 004833EC    mov         edx,dword ptr [ebp-8]
 004833EF    mov         ebx,dword ptr [eax]
 004833F1    call        dword ptr [ebx+10]
 004833F4    dec         dword ptr [ebp-10]
 004833F7    mov         eax,dword ptr [ebp-4]
 004833FA    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 004833FD    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00483400    cmp         eax,dword ptr [ebp-10]
>00483403    jg          00483412
 00483405    mov         eax,dword ptr [ebp-4]
 00483408    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 0048340B    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0048340E    dec         eax
 0048340F    mov         dword ptr [ebp-10],eax
 00483412    cmp         dword ptr [ebp-10],0
>00483416    jge         004833DB
 00483418    pop         ebx
 00483419    mov         esp,ebp
 0048341B    pop         ebp
 0048341C    ret
end;*}

//00483420
procedure TComponent.DefineProperties(Filer:TFiler);
begin
{*
 00483420    push        ebp
 00483421    mov         ebp,esp
 00483423    add         esp,0FFFFFFF0
 00483426    push        ebx
 00483427    mov         dword ptr [ebp-0C],edx
 0048342A    mov         dword ptr [ebp-8],eax
 0048342D    xor         eax,eax
 0048342F    mov         dword ptr [ebp-4],eax
 00483432    mov         eax,dword ptr [ebp-0C]
 00483435    mov         eax,dword ptr [eax+20]
 00483438    mov         dword ptr [ebp-10],eax
 0048343B    cmp         dword ptr [ebp-10],0
>0048343F    je          0048344A
 00483441    mov         eax,dword ptr [ebp-10]
 00483444    mov         eax,dword ptr [eax+18]
 00483447    mov         dword ptr [ebp-4],eax
 0048344A    mov         eax,dword ptr [ebp-8]
 0048344D    push        eax
 0048344E    push        483098
 00483453    mov         eax,dword ptr [ebp-8]
 00483456    push        eax
 00483457    push        4830D8
 0048345C    mov         eax,dword ptr [ebp-8]
 0048345F    mov         ax,word ptr [eax+18]
 00483463    cmp         ax,word ptr [ebp-4]
 00483467    setne       cl
 0048346A    mov         edx,4834B4;'Left'
 0048346F    mov         eax,dword ptr [ebp-0C]
 00483472    mov         ebx,dword ptr [eax]
 00483474    call        dword ptr [ebx+4]
 00483477    mov         eax,dword ptr [ebp-8]
 0048347A    push        eax
 0048347B    push        4830B8
 00483480    mov         eax,dword ptr [ebp-8]
 00483483    push        eax
 00483484    push        4830F8
 00483489    mov         ax,word ptr [ebp-2]
 0048348D    mov         edx,dword ptr [ebp-8]
 00483490    cmp         ax,word ptr [edx+1A]
 00483494    setne       cl
 00483497    mov         edx,4834C4;'Top'
 0048349C    mov         eax,dword ptr [ebp-0C]
 0048349F    mov         ebx,dword ptr [eax]
 004834A1    call        dword ptr [ebx+4]
 004834A4    pop         ebx
 004834A5    mov         esp,ebp
 004834A7    pop         ebp
 004834A8    ret
*}
end;

//004834C8
procedure TComponent.sub_004834C8;
begin
{*
 004834C8    push        ebp
 004834C9    mov         ebp,esp
 004834CB    add         esp,0FFFFFFF8
 004834CE    mov         dword ptr [ebp-4],eax
 004834D1    mov         byte ptr [ebp-5],0
 004834D5    mov         al,byte ptr [ebp-5]
 004834D8    pop         ecx
 004834D9    pop         ecx
 004834DA    pop         ebp
 004834DB    ret
*}
end;

//004834DC
{*procedure TComponent.sub_004834DC(?:?);
begin
 004834DC    push        ebp
 004834DD    mov         ebp,esp
 004834DF    add         esp,0FFFFFFF8
 004834E2    mov         dword ptr [ebp-8],edx
 004834E5    mov         dword ptr [ebp-4],eax
 004834E8    pop         ecx
 004834E9    pop         ecx
 004834EA    pop         ebp
 004834EB    ret         8
end;*}

//004834F0
procedure TComponent.sub_004834F0;
begin
{*
 004834F0    push        ebp
 004834F1    mov         ebp,esp
 004834F3    add         esp,0FFFFFFF8
 004834F6    mov         dword ptr [ebp-4],eax
 004834F9    xor         eax,eax
 004834FB    mov         dword ptr [ebp-8],eax
 004834FE    mov         eax,dword ptr [ebp-8]
 00483501    pop         ecx
 00483502    pop         ecx
 00483503    pop         ebp
 00483504    ret
*}
end;

//00483508
procedure TComponent.sub_00483508;
begin
{*
 00483508    push        ebp
 00483509    mov         ebp,esp
 0048350B    add         esp,0FFFFFFF8
 0048350E    mov         dword ptr [ebp-4],eax
 00483511    mov         eax,dword ptr [ebp-4]
 00483514    mov         dword ptr [ebp-8],eax
 00483517    mov         eax,dword ptr [ebp-8]
 0048351A    pop         ecx
 0048351B    pop         ecx
 0048351C    pop         ebp
 0048351D    ret
*}
end;

//00483520
{*procedure TComponent.sub_004791D8(?:?);
begin
 00483520    push        ebp
 00483521    mov         ebp,esp
 00483523    add         esp,0FFFFFFF8
 00483526    mov         dword ptr [ebp-8],edx
 00483529    mov         dword ptr [ebp-4],eax
 0048352C    mov         eax,dword ptr [ebp-8]
 0048352F    mov         edx,dword ptr [ebp-4]
 00483532    mov         edx,dword ptr [edx+8];TComponent.Name:TComponentName
 00483535    call        @LStrAsg
 0048353A    pop         ecx
 0048353B    pop         ecx
 0048353C    pop         ebp
 0048353D    ret
end;*}

//00483540
procedure TComponent.sub_00479290;
begin
{*
 00483540    push        ebp
 00483541    mov         ebp,esp
 00483543    add         esp,0FFFFFFF8
 00483546    mov         dword ptr [ebp-4],eax
 00483549    mov         eax,dword ptr [ebp-4]
 0048354C    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 0048354F    mov         dword ptr [ebp-8],eax
 00483552    mov         eax,dword ptr [ebp-8]
 00483555    pop         ecx
 00483556    pop         ecx
 00483557    pop         ebp
 00483558    ret
*}
end;

//0048355C
{*procedure TComponent.sub_0048355C(?:?; ?:?);
begin
 0048355C    push        ebp
 0048355D    mov         ebp,esp
 0048355F    add         esp,0FFFFFFF4
 00483562    mov         dword ptr [ebp-0C],ecx
 00483565    mov         dword ptr [ebp-8],edx
 00483568    mov         dword ptr [ebp-4],eax
 0048356B    mov         esp,ebp
 0048356D    pop         ebp
 0048356E    ret
end;*}

//00483570
procedure TComponent.sub_00483570;
begin
{*
 00483570    push        ebp
 00483571    mov         ebp,esp
 00483573    add         esp,0FFFFFFF8
 00483576    mov         dword ptr [ebp-4],eax
 00483579    xor         eax,eax
 0048357B    mov         dword ptr [ebp-8],eax
 0048357E    mov         eax,dword ptr [ebp-8]
 00483581    pop         ecx
 00483582    pop         ecx
 00483583    pop         ebp
 00483584    ret
*}
end;

//00483588
{*procedure TComponent.sub_00483588(?:?);
begin
 00483588    push        ebp
 00483589    mov         ebp,esp
 0048358B    add         esp,0FFFFFFF8
 0048358E    mov         dword ptr [ebp-8],edx
 00483591    mov         dword ptr [ebp-4],eax
 00483594    pop         ecx
 00483595    pop         ecx
 00483596    pop         ebp
 00483597    ret
end;*}

//00483598
procedure TComponent.sub_00483598;
begin
{*
 00483598    push        ebp
 00483599    mov         ebp,esp
 0048359B    push        ecx
 0048359C    mov         dword ptr [ebp-4],eax
 0048359F    mov         eax,dword ptr [ebp-4]
 004835A2    or          word ptr [eax+1C],40;TComponent.FComponentState:TComponentState
 004835A7    pop         ecx
 004835A8    pop         ebp
 004835A9    ret
*}
end;

//004835AC
procedure TComponent.sub_004835AC;
begin
{*
 004835AC    push        ebp
 004835AD    mov         ebp,esp
 004835AF    push        ecx
 004835B0    mov         dword ptr [ebp-4],eax
 004835B3    mov         eax,dword ptr [ebp-4]
 004835B6    and         word ptr [eax+1C],0FFFFFFBF;TComponent.FComponentState:TComponentState
 004835BB    pop         ecx
 004835BC    pop         ebp
 004835BD    ret
*}
end;

//004835C0
procedure sub_004835C0;
begin
{*
 004835C0    push        ebp
 004835C1    mov         ebp,esp
 004835C3    push        ecx
 004835C4    mov         dword ptr [ebp-4],eax
 004835C7    mov         eax,dword ptr [ebp-4]
 004835CA    and         word ptr [eax+1C],0FFFFFFFE;TComponent.FComponentState:TComponentState
 004835CF    pop         ecx
 004835D0    pop         ebp
 004835D1    ret
*}
end;

//004835D4
procedure TComponent.sub_004835D4;
begin
{*
 004835D4    push        ebp
 004835D5    mov         ebp,esp
 004835D7    push        ecx
 004835D8    mov         dword ptr [ebp-4],eax
 004835DB    pop         ecx
 004835DC    pop         ebp
 004835DD    ret
*}
end;

//004835E0
{*procedure sub_004835E0(?:?);
begin
 004835E0    push        ebp
 004835E1    mov         ebp,esp
 004835E3    add         esp,0FFFFFFF8
 004835E6    mov         dword ptr [ebp-8],edx
 004835E9    mov         dword ptr [ebp-4],eax
 004835EC    mov         edx,dword ptr [ebp-4]
 004835EF    mov         eax,dword ptr [ebp-8]
 004835F2    call        0047E178
 004835F7    pop         ecx
 004835F8    pop         ecx
 004835F9    pop         ebp
 004835FA    ret
end;*}

//004835FC
{*procedure sub_004835FC(?:?);
begin
 004835FC    push        ebp
 004835FD    mov         ebp,esp
 004835FF    add         esp,0FFFFFFF8
 00483602    mov         dword ptr [ebp-8],edx
 00483605    mov         dword ptr [ebp-4],eax
 00483608    mov         edx,dword ptr [ebp-4]
 0048360B    mov         eax,dword ptr [ebp-8]
 0048360E    mov         ecx,dword ptr [eax]
 00483610    call        dword ptr [ecx+10]
 00483613    pop         ecx
 00483614    pop         ecx
 00483615    pop         ebp
 00483616    ret
end;*}

//00483618
{*procedure sub_00483618(?:?; ?:?; ?:?);
begin
 00483618    push        ebp
 00483619    mov         ebp,esp
 0048361B    add         esp,0FFFFFFEC
 0048361E    push        ebx
 0048361F    mov         dword ptr [ebp-0C],ecx
 00483622    mov         dword ptr [ebp-8],edx
 00483625    mov         dword ptr [ebp-4],eax
 00483628    cmp         dword ptr [ebp-8],0
>0048362C    je          0048367E
 0048362E    mov         edx,dword ptr [ebp+8]
 00483631    mov         eax,dword ptr [ebp-0C]
 00483634    call        SameText
 00483639    test        al,al
>0048363B    jne         0048367E
 0048363D    mov         eax,dword ptr [ebp-8]
 00483640    mov         eax,dword ptr [eax+4]
 00483643    cmp         eax,dword ptr [ebp-4]
>00483646    jne         0048367E
 00483648    mov         edx,dword ptr [ebp+8]
 0048364B    mov         eax,dword ptr [ebp-4]
 0048364E    call        004836E0
 00483653    test        eax,eax
>00483655    je          0048367E
 00483657    mov         eax,dword ptr [ebp+8]
 0048365A    mov         dword ptr [ebp-14],eax
 0048365D    mov         byte ptr [ebp-10],0B
 00483661    lea         eax,[ebp-14]
 00483664    push        eax
 00483665    push        0
 00483667    mov         ecx,dword ptr ds:[55B468];^SDuplicateName:TResStringRec
 0048366D    mov         dl,1
 0048366F    mov         eax,[004758A8];EComponentError
 00483674    call        Exception.CreateResFmt;EComponentError.Create
 00483679    call        @RaiseExcept
 0048367E    mov         eax,dword ptr [ebp-4]
 00483681    test        byte ptr [eax+1C],10;TComponent.FComponentState:TComponentState
>00483685    je          004836A5
 00483687    mov         eax,dword ptr [ebp-4]
 0048368A    cmp         dword ptr [eax+4],0;TComponent.FOwner:TComponent
>0048368E    je          004836A5
 00483690    mov         eax,dword ptr [ebp+8]
 00483693    push        eax
 00483694    mov         ecx,dword ptr [ebp-0C]
 00483697    mov         edx,dword ptr [ebp-8]
 0048369A    mov         eax,dword ptr [ebp-4]
 0048369D    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 004836A0    mov         ebx,dword ptr [eax]
 004836A2    call        dword ptr [ebx+20];TComponent.sub_00483618
 004836A5    pop         ebx
 004836A6    mov         esp,ebp
 004836A8    pop         ebp
 004836A9    ret         4
end;*}

//004836AC
{*procedure TComponent.sub_004836AC(?:?);
begin
 004836AC    push        ebp
 004836AD    mov         ebp,esp
 004836AF    add         esp,0FFFFFFF8
 004836B2    push        esi
 004836B3    mov         dword ptr [ebp-8],edx
 004836B6    mov         dword ptr [ebp-4],eax
 004836B9    mov         edx,dword ptr [ebp-4]
 004836BC    mov         eax,dword ptr [ebp-8]
 004836BF    mov         si,0FFF4
 004836C3    call        @CallDynaInst
 004836C8    pop         esi
 004836C9    pop         ecx
 004836CA    pop         ecx
 004836CB    pop         ebp
 004836CC    ret
end;*}

//004836D0
{*procedure TComponent.sub_004836D0(?:?);
begin
 004836D0    push        ebp
 004836D1    mov         ebp,esp
 004836D3    add         esp,0FFFFFFF8
 004836D6    mov         dword ptr [ebp-8],edx
 004836D9    mov         dword ptr [ebp-4],eax
 004836DC    pop         ecx
 004836DD    pop         ecx
 004836DE    pop         ebp
 004836DF    ret
end;*}

//004836E0
{*function sub_004836E0(?:TComponent; ?:AnsiString):?;
begin
 004836E0    push        ebp
 004836E1    mov         ebp,esp
 004836E3    add         esp,0FFFFFFEC
 004836E6    mov         dword ptr [ebp-8],edx
 004836E9    mov         dword ptr [ebp-4],eax
 004836EC    cmp         dword ptr [ebp-8],0
>004836F0    je          0048373F
 004836F2    mov         eax,dword ptr [ebp-4]
 004836F5    cmp         dword ptr [eax+10],0;TComponent.FComponents:TList
>004836F9    je          0048373F
 004836FB    mov         eax,dword ptr [ebp-4]
 004836FE    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 00483701    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00483704    dec         eax
 00483705    test        eax,eax
>00483707    jl          0048373F
 00483709    inc         eax
 0048370A    mov         dword ptr [ebp-14],eax
 0048370D    mov         dword ptr [ebp-10],0
 00483714    mov         eax,dword ptr [ebp-4]
 00483717    mov         eax,dword ptr [eax+10];TComponent.FComponents:TList
 0048371A    mov         edx,dword ptr [ebp-10]
 0048371D    call        TList.Get
 00483722    mov         dword ptr [ebp-0C],eax
 00483725    mov         eax,dword ptr [ebp-0C]
 00483728    mov         eax,dword ptr [eax+8]
 0048372B    mov         edx,dword ptr [ebp-8]
 0048372E    call        SameText
 00483733    test        al,al
>00483735    jne         00483744
 00483737    inc         dword ptr [ebp-10]
 0048373A    dec         dword ptr [ebp-14]
>0048373D    jne         00483714
 0048373F    xor         eax,eax
 00483741    mov         dword ptr [ebp-0C],eax
 00483744    mov         eax,dword ptr [ebp-0C]
 00483747    mov         esp,ebp
 00483749    pop         ebp
 0048374A    ret
end;*}

//0048374C
procedure TComponent.SetName(Value:TComponentName);
begin
{*
 0048374C    push        ebp
 0048374D    mov         ebp,esp
 0048374F    add         esp,0FFFFFFF0
 00483752    push        ebx
 00483753    mov         dword ptr [ebp-8],edx
 00483756    mov         dword ptr [ebp-4],eax
 00483759    mov         eax,dword ptr [ebp-4]
 0048375C    mov         eax,dword ptr [eax+8];TComponent.Name:TComponentName
 0048375F    mov         edx,dword ptr [ebp-8]
 00483762    call        @LStrCmp
>00483767    je          004837FC
 0048376D    cmp         dword ptr [ebp-8],0
>00483771    je          004837A6
 00483773    mov         eax,dword ptr [ebp-8]
 00483776    call        00466898
 0048377B    test        al,al
>0048377D    jne         004837A6
 0048377F    mov         eax,dword ptr [ebp-8]
 00483782    mov         dword ptr [ebp-10],eax
 00483785    mov         byte ptr [ebp-0C],0B
 00483789    lea         eax,[ebp-10]
 0048378C    push        eax
 0048378D    push        0
 0048378F    mov         ecx,dword ptr ds:[55B3B0];^SInvalidName:TResStringRec
 00483795    mov         dl,1
 00483797    mov         eax,[004758A8];EComponentError
 0048379C    call        Exception.CreateResFmt;EComponentError.Create
 004837A1    call        @RaiseExcept
 004837A6    mov         eax,dword ptr [ebp-4]
 004837A9    cmp         dword ptr [eax+4],0;TComponent.FOwner:TComponent
>004837AD    je          004837C9
 004837AF    mov         eax,dword ptr [ebp-8]
 004837B2    push        eax
 004837B3    mov         eax,dword ptr [ebp-4]
 004837B6    mov         ecx,dword ptr [eax+8];TComponent.Name:TComponentName
 004837B9    mov         edx,dword ptr [ebp-4]
 004837BC    mov         eax,dword ptr [ebp-4]
 004837BF    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 004837C2    mov         ebx,dword ptr [eax]
 004837C4    call        dword ptr [ebx+20];TComponent.sub_00483618
>004837C7    jmp         004837DD
 004837C9    mov         eax,dword ptr [ebp-8]
 004837CC    push        eax
 004837CD    mov         eax,dword ptr [ebp-4]
 004837D0    mov         ecx,dword ptr [eax+8];TComponent.Name:TComponentName
 004837D3    xor         edx,edx
 004837D5    mov         eax,dword ptr [ebp-4]
 004837D8    mov         ebx,dword ptr [eax]
 004837DA    call        dword ptr [ebx+20];TComponent.sub_00483618
 004837DD    xor         edx,edx
 004837DF    mov         eax,dword ptr [ebp-4]
 004837E2    call        00483984
 004837E7    mov         edx,dword ptr [ebp-8]
 004837EA    mov         eax,dword ptr [ebp-4]
 004837ED    call        00483804
 004837F2    mov         dl,1
 004837F4    mov         eax,dword ptr [ebp-4]
 004837F7    call        00483984
 004837FC    pop         ebx
 004837FD    mov         esp,ebp
 004837FF    pop         ebp
 00483800    ret
*}
end;

//00483804
procedure sub_00483804(?:TComponent; ?:TComponentName);
begin
{*
 00483804    push        ebp
 00483805    mov         ebp,esp
 00483807    add         esp,0FFFFFFF8
 0048380A    mov         dword ptr [ebp-8],edx
 0048380D    mov         dword ptr [ebp-4],eax
 00483810    mov         eax,dword ptr [ebp-4]
 00483813    add         eax,8;TComponent.Name:TComponentName
 00483816    mov         edx,dword ptr [ebp-8]
 00483819    call        @LStrAsg
 0048381E    pop         ecx
 0048381F    pop         ecx
 00483820    pop         ebp
 00483821    ret
*}
end;

//00483824
{*function sub_00483824(?:TComponent; ?:?):?;
begin
 00483824    push        ebp
 00483825    mov         ebp,esp
 00483827    add         esp,0FFFFFFF4
 0048382A    mov         dword ptr [ebp-8],edx
 0048382D    mov         dword ptr [ebp-4],eax
 00483830    mov         eax,dword ptr [ebp-4]
 00483833    cmp         dword ptr [eax+10],0
>00483837    jne         0048384C
 00483839    mov         edx,dword ptr ds:[55B590];^SListIndexError:TResStringRec
 0048383F    mov         ecx,dword ptr [ebp-8]
 00483842    mov         eax,[004759C0];TList
 00483847    call        00478744
 0048384C    mov         edx,dword ptr [ebp-8]
 0048384F    mov         eax,dword ptr [ebp-4]
 00483852    mov         eax,dword ptr [eax+10]
 00483855    call        TList.Get
 0048385A    mov         dword ptr [ebp-0C],eax
 0048385D    mov         eax,dword ptr [ebp-0C]
 00483860    mov         esp,ebp
 00483862    pop         ebp
 00483863    ret
end;*}

//00483864
{*function sub_00483864(?:TComponent):?;
begin
 00483864    push        ebp
 00483865    mov         ebp,esp
 00483867    add         esp,0FFFFFFF8
 0048386A    mov         dword ptr [ebp-4],eax
 0048386D    mov         eax,dword ptr [ebp-4]
 00483870    cmp         dword ptr [eax+10],0
>00483874    je          00483884
 00483876    mov         eax,dword ptr [ebp-4]
 00483879    mov         eax,dword ptr [eax+10]
 0048387C    mov         eax,dword ptr [eax+8]
 0048387F    mov         dword ptr [ebp-8],eax
>00483882    jmp         00483889
 00483884    xor         eax,eax
 00483886    mov         dword ptr [ebp-8],eax
 00483889    mov         eax,dword ptr [ebp-8]
 0048388C    pop         ecx
 0048388D    pop         ecx
 0048388E    pop         ebp
 0048388F    ret
end;*}

//00483890
{*procedure sub_00483890(?:?; ?:?);
begin
 00483890    push        ebp
 00483891    mov         ebp,esp
 00483893    add         esp,0FFFFFFF0
 00483896    mov         dword ptr [ebp-8],edx
 00483899    mov         dword ptr [ebp-4],eax
 0048389C    mov         eax,dword ptr [ebp-4]
 0048389F    cmp         dword ptr [eax+4],0
>004838A3    je          00483915
 004838A5    mov         eax,dword ptr [ebp-4]
 004838A8    mov         eax,dword ptr [eax+4]
 004838AB    mov         eax,dword ptr [eax+10]
 004838AE    mov         edx,dword ptr [ebp-4]
 004838B1    call        00478890
 004838B6    mov         dword ptr [ebp-0C],eax
 004838B9    cmp         dword ptr [ebp-0C],0
>004838BD    jl          00483915
 004838BF    mov         eax,dword ptr [ebp-4]
 004838C2    mov         eax,dword ptr [eax+4]
 004838C5    mov         eax,dword ptr [eax+10]
 004838C8    mov         eax,dword ptr [eax+8]
 004838CB    mov         dword ptr [ebp-10],eax
 004838CE    cmp         dword ptr [ebp-8],0
>004838D2    jge         004838D9
 004838D4    xor         eax,eax
 004838D6    mov         dword ptr [ebp-8],eax
 004838D9    mov         eax,dword ptr [ebp-8]
 004838DC    cmp         eax,dword ptr [ebp-10]
>004838DF    jl          004838E8
 004838E1    mov         eax,dword ptr [ebp-10]
 004838E4    dec         eax
 004838E5    mov         dword ptr [ebp-8],eax
 004838E8    mov         eax,dword ptr [ebp-8]
 004838EB    cmp         eax,dword ptr [ebp-0C]
>004838EE    je          00483915
 004838F0    mov         eax,dword ptr [ebp-4]
 004838F3    mov         eax,dword ptr [eax+4]
 004838F6    mov         eax,dword ptr [eax+10]
 004838F9    mov         edx,dword ptr [ebp-0C]
 004838FC    call        00478668
 00483901    mov         eax,dword ptr [ebp-4]
 00483904    mov         eax,dword ptr [eax+4]
 00483907    mov         eax,dword ptr [eax+10]
 0048390A    mov         ecx,dword ptr [ebp-4]
 0048390D    mov         edx,dword ptr [ebp-8]
 00483910    call        004788DC
 00483915    mov         esp,ebp
 00483917    pop         ebp
 00483918    ret
end;*}

//0048391C
{*procedure sub_0048391C(?:TComponent; ?:?; ?:?);
begin
 0048391C    push        ebp
 0048391D    mov         ebp,esp
 0048391F    add         esp,0FFFFFFF0
 00483922    mov         byte ptr [ebp-6],cl
 00483925    mov         byte ptr [ebp-5],dl
 00483928    mov         dword ptr [ebp-4],eax
 0048392B    cmp         byte ptr [ebp-5],0
>0048392F    je          0048393B
 00483931    mov         eax,dword ptr [ebp-4]
 00483934    or          word ptr [eax+1C],10;TComponent.FComponentState:TComponentState
>00483939    jmp         00483943
 0048393B    mov         eax,dword ptr [ebp-4]
 0048393E    and         word ptr [eax+1C],0FFFFFFEF;TComponent.FComponentState:TComponentState
 00483943    cmp         byte ptr [ebp-6],0
>00483947    je          0048397E
 00483949    mov         eax,dword ptr [ebp-4]
 0048394C    call        00483864
 00483951    dec         eax
 00483952    test        eax,eax
>00483954    jl          0048397E
 00483956    inc         eax
 00483957    mov         dword ptr [ebp-10],eax
 0048395A    mov         dword ptr [ebp-0C],0
 00483961    mov         edx,dword ptr [ebp-0C]
 00483964    mov         eax,dword ptr [ebp-4]
 00483967    call        00483824
 0048396C    mov         cl,1
 0048396E    mov         dl,byte ptr [ebp-5]
 00483971    call        0048391C
 00483976    inc         dword ptr [ebp-0C]
 00483979    dec         dword ptr [ebp-10]
>0048397C    jne         00483961
 0048397E    mov         esp,ebp
 00483980    pop         ebp
 00483981    ret
end;*}

//00483984
{*procedure sub_00483984(?:TComponent; ?:?);
begin
 00483984    push        ebp
 00483985    mov         ebp,esp
 00483987    add         esp,0FFFFFEF4
 0048398D    mov         byte ptr [ebp-5],dl
 00483990    mov         dword ptr [ebp-4],eax
 00483993    mov         eax,dword ptr [ebp-4]
 00483996    cmp         dword ptr [eax+4],0;TComponent.FOwner:TComponent
>0048399A    je          004839E3
 0048399C    lea         eax,[ebp-10C]
 004839A2    mov         edx,dword ptr [ebp-4]
 004839A5    mov         edx,dword ptr [edx+8];TComponent.Name:TComponentName
 004839A8    mov         ecx,0FF
 004839AD    call        @LStrToString
 004839B2    lea         edx,[ebp-10C]
 004839B8    mov         eax,dword ptr [ebp-4]
 004839BB    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 004839BE    call        TObject.FieldAddress
 004839C3    mov         dword ptr [ebp-0C],eax
 004839C6    cmp         dword ptr [ebp-0C],0
>004839CA    je          004839E3
 004839CC    cmp         byte ptr [ebp-5],0
>004839D0    je          004839DC
 004839D2    mov         eax,dword ptr [ebp-4]
 004839D5    mov         edx,dword ptr [ebp-0C]
 004839D8    mov         dword ptr [edx],eax
>004839DA    jmp         004839E3
 004839DC    mov         eax,dword ptr [ebp-0C]
 004839DF    xor         edx,edx
 004839E1    mov         dword ptr [eax],edx
 004839E3    mov         esp,ebp
 004839E5    pop         ebp
 004839E6    ret
end;*}

//004839E8
{*procedure TComponent.sub_004839E8(?:?);
begin
 004839E8    push        ebp
 004839E9    mov         ebp,esp
 004839EB    add         esp,0FFFFFFF4
 004839EE    mov         dword ptr [ebp-8],edx
 004839F1    mov         dword ptr [ebp-4],eax
 004839F4    mov         edx,dword ptr [ebp-4]
 004839F7    mov         eax,dword ptr [ebp-8]
 004839FA    mov         ecx,dword ptr [eax]
 004839FC    call        dword ptr [ecx+38]
 004839FF    mov         byte ptr [ebp-9],al
 00483A02    cmp         byte ptr [ebp-9],0
>00483A06    je          00483A13
 00483A08    mov         edx,dword ptr [ebp-4]
 00483A0B    mov         eax,dword ptr [ebp-8]
 00483A0E    mov         ecx,dword ptr [eax]
 00483A10    call        dword ptr [ecx+40]
 00483A13    mov         al,byte ptr [ebp-9]
 00483A16    mov         esp,ebp
 00483A18    pop         ebp
 00483A19    ret
end;*}

//00483A1C
{*procedure TComponent.sub_00483A1C(?:?);
begin
 00483A1C    push        ebp
 00483A1D    mov         ebp,esp
 00483A1F    add         esp,0FFFFFFF4
 00483A22    mov         dword ptr [ebp-8],edx
 00483A25    mov         dword ptr [ebp-4],eax
 00483A28    mov         edx,dword ptr [ebp-4]
 00483A2B    mov         eax,dword ptr [ebp-8]
 00483A2E    mov         ecx,dword ptr [eax]
 00483A30    call        dword ptr [ecx+38]
 00483A33    mov         byte ptr [ebp-9],al
 00483A36    cmp         byte ptr [ebp-9],0
>00483A3A    je          00483A47
 00483A3C    mov         edx,dword ptr [ebp-4]
 00483A3F    mov         eax,dword ptr [ebp-8]
 00483A42    mov         ecx,dword ptr [eax]
 00483A44    call        dword ptr [ecx+3C]
 00483A47    mov         al,byte ptr [ebp-9]
 00483A4A    mov         esp,ebp
 00483A4C    pop         ebp
 00483A4D    ret
end;*}

//00483A50
{*procedure sub_00483A50(?:TComponent; ?:?);
begin
 00483A50    push        ebp
 00483A51    mov         ebp,esp
 00483A53    add         esp,0FFFFFFF8
 00483A56    mov         byte ptr [ebp-5],dl
 00483A59    mov         dword ptr [ebp-4],eax
 00483A5C    cmp         byte ptr [ebp-5],0
>00483A60    je          00483A6B
 00483A62    mov         eax,dword ptr [ebp-4]
 00483A65    or          byte ptr [eax+24],4
>00483A69    jmp         00483A72
 00483A6B    mov         eax,dword ptr [ebp-4]
 00483A6E    and         byte ptr [eax+24],0FB
 00483A72    pop         ecx
 00483A73    pop         ecx
 00483A74    pop         ebp
 00483A75    ret
end;*}

//00483A78
function TComponent.SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;
begin
{*
 00483A78    push        ebp
 00483A79    mov         ebp,esp
 00483A7B    add         esp,0FFFFFFF0
 00483A7E    push        ebx
 00483A7F    mov         dword ptr [ebp-0C],ecx
 00483A82    mov         dword ptr [ebp-8],edx
 00483A85    mov         dword ptr [ebp-4],eax
 00483A88    mov         eax,dword ptr [ebp-4];{TObject.SafeCallException}
 00483A8B    cmp         dword ptr [eax+20],0
>00483A8F    je          00483AA7
 00483A91    mov         ecx,dword ptr [ebp-0C]
 00483A94    mov         edx,dword ptr [ebp-8]
 00483A97    mov         eax,dword ptr [ebp-4]
 00483A9A    mov         eax,dword ptr [eax+20]
 00483A9D    mov         ebx,dword ptr [eax]
 00483A9F    call        dword ptr [ebx+1C]
 00483AA2    mov         dword ptr [ebp-10],eax
>00483AA5    jmp         00483AB8
 00483AA7    mov         ecx,dword ptr [ebp-0C]
 00483AAA    mov         edx,dword ptr [ebp-8]
 00483AAD    mov         eax,dword ptr [ebp-4]
 00483AB0    call        TCustomVariantType.SafeCallException
 00483AB5    mov         dword ptr [ebp-10],eax
 00483AB8    mov         eax,dword ptr [ebp-10]
 00483ABB    pop         ebx
 00483ABC    mov         esp,ebp
 00483ABE    pop         ebp
 00483ABF    ret
*}
end;

//00483AC0
{*procedure sub_00483AC0(?:?; ?:?);
begin
 00483AC0    push        ebp
 00483AC1    mov         ebp,esp
 00483AC3    add         esp,0FFFFFFF4
 00483AC6    mov         dword ptr [ebp-0C],ecx
 00483AC9    mov         byte ptr [ebp-5],dl
 00483ACC    mov         dword ptr [ebp-4],eax
 00483ACF    mov         esp,ebp
 00483AD1    pop         ebp
 00483AD2    ret         4
end;*}

//00483AD8
{*function sub_00483AD8(?:?; ?:?):?;
begin
 00483AD8    push        ebp
 00483AD9    mov         ebp,esp
 00483ADB    push        ecx
 00483ADC    mov         eax,dword ptr [ebp+8]
 00483ADF    cmp         dword ptr [eax+20],0
>00483AE3    jne         00483B07
 00483AE5    mov         ecx,dword ptr [ebp+10]
 00483AE8    mov         edx,dword ptr [ebp+0C]
 00483AEB    mov         eax,dword ptr [ebp+8]
 00483AEE    call        TObject.GetInterface
 00483AF3    test        al,al
>00483AF5    je          00483AFE
 00483AF7    xor         eax,eax
 00483AF9    mov         dword ptr [ebp-4],eax
>00483AFC    jmp         00483B1D
 00483AFE    mov         dword ptr [ebp-4],80004002
>00483B05    jmp         00483B1D
 00483B07    mov         eax,dword ptr [ebp+10]
 00483B0A    push        eax
 00483B0B    mov         eax,dword ptr [ebp+0C]
 00483B0E    push        eax
 00483B0F    mov         eax,dword ptr [ebp+8]
 00483B12    mov         eax,dword ptr [eax+20]
 00483B15    push        eax
 00483B16    mov         eax,dword ptr [eax]
 00483B18    call        dword ptr [eax]
 00483B1A    mov         dword ptr [ebp-4],eax
 00483B1D    mov         eax,dword ptr [ebp-4]
 00483B20    pop         ecx
 00483B21    pop         ebp
 00483B22    ret         0C
end;*}

//00483B28
{*function sub_00483B28(?:?):?;
begin
 00483B28    push        ebp
 00483B29    mov         ebp,esp
 00483B2B    push        ecx
 00483B2C    mov         eax,dword ptr [ebp+8]
 00483B2F    cmp         dword ptr [eax+20],0
>00483B33    jne         00483B3E
 00483B35    mov         dword ptr [ebp-4],0FFFFFFFF
>00483B3C    jmp         00483B4D
 00483B3E    mov         eax,dword ptr [ebp+8]
 00483B41    mov         eax,dword ptr [eax+20]
 00483B44    push        eax
 00483B45    mov         eax,dword ptr [eax]
 00483B47    call        dword ptr [eax+4]
 00483B4A    mov         dword ptr [ebp-4],eax
 00483B4D    mov         eax,dword ptr [ebp-4]
 00483B50    pop         ecx
 00483B51    pop         ebp
 00483B52    ret         4
end;*}

//00483B58
{*function sub_00483B58(?:?):?;
begin
 00483B58    push        ebp
 00483B59    mov         ebp,esp
 00483B5B    push        ecx
 00483B5C    mov         eax,dword ptr [ebp+8]
 00483B5F    cmp         dword ptr [eax+20],0
>00483B63    jne         00483B6E
 00483B65    mov         dword ptr [ebp-4],0FFFFFFFF
>00483B6C    jmp         00483B7D
 00483B6E    mov         eax,dword ptr [ebp+8]
 00483B71    mov         eax,dword ptr [eax+20]
 00483B74    push        eax
 00483B75    mov         eax,dword ptr [eax]
 00483B77    call        dword ptr [eax+8]
 00483B7A    mov         dword ptr [ebp-4],eax
 00483B7D    mov         eax,dword ptr [ebp-4]
 00483B80    pop         ecx
 00483B81    pop         ebp
 00483B82    ret         4
end;*}

//00483B88
{*function sub_00483B88(?:?):?;
begin
 00483B88    push        ebp
 00483B89    mov         ebp,esp
 00483B8B    add         esp,0FFFFFFF8
 00483B8E    mov         dword ptr [ebp-4],eax
 00483B91    mov         eax,dword ptr [ebp-4]
 00483B94    mov         dword ptr [ebp-8],eax
 00483B97    mov         eax,dword ptr [ebp-8]
 00483B9A    pop         ecx
 00483B9B    pop         ecx
 00483B9C    pop         ebp
 00483B9D    ret
end;*}

//00483BA0
constructor sub_00483BA0;
begin
{*
 00483BA0    push        ebp
 00483BA1    mov         ebp,esp
 00483BA3    add         esp,0FFFFFFF4
 00483BA6    test        dl,dl
>00483BA8    je          00483BB2
 00483BAA    add         esp,0FFFFFFF0
 00483BAD    call        @ClassCreate
 00483BB2    mov         dword ptr [ebp-0C],ecx
 00483BB5    mov         byte ptr [ebp-5],dl
 00483BB8    mov         dword ptr [ebp-4],eax
 00483BBB    xor         edx,edx
 00483BBD    mov         eax,dword ptr [ebp-4]
 00483BC0    call        TObject.Create
 00483BC5    mov         edx,dword ptr [ebp-0C]
 00483BC8    mov         eax,dword ptr [ebp-4]
 00483BCB    mov         ecx,dword ptr [eax]
 00483BCD    call        dword ptr [ecx];TBasicActionLink.sub_00483BF0
 00483BCF    mov         eax,dword ptr [ebp-4]
 00483BD2    cmp         byte ptr [ebp-5],0
>00483BD6    je          00483BE7
 00483BD8    call        @AfterConstruction
 00483BDD    pop         dword ptr fs:[0]
 00483BE4    add         esp,0C
 00483BE7    mov         eax,dword ptr [ebp-4]
 00483BEA    mov         esp,ebp
 00483BEC    pop         ebp
 00483BED    ret
*}
end;

//00483BF0
{*procedure sub_00483BF0(?:?);
begin
 00483BF0    push        ebp
 00483BF1    mov         ebp,esp
 00483BF3    add         esp,0FFFFFFF8
 00483BF6    mov         dword ptr [ebp-8],edx
 00483BF9    mov         dword ptr [ebp-4],eax
 00483BFC    pop         ecx
 00483BFD    pop         ecx
 00483BFE    pop         ebp
 00483BFF    ret
end;*}

//00483C00
destructor TBasicActionLink.Destroy;
begin
{*
 00483C00    push        ebp
 00483C01    mov         ebp,esp
 00483C03    add         esp,0FFFFFFF8
 00483C06    call        @BeforeDestruction
 00483C0B    mov         byte ptr [ebp-5],dl
 00483C0E    mov         dword ptr [ebp-4],eax
 00483C11    mov         eax,dword ptr [ebp-4]
 00483C14    cmp         dword ptr [eax+10],0
>00483C18    je          00483C28
 00483C1A    mov         eax,dword ptr [ebp-4]
 00483C1D    mov         eax,dword ptr [eax+10]
 00483C20    mov         edx,dword ptr [ebp-4]
 00483C23    call        00483FA8
 00483C28    mov         dl,byte ptr [ebp-5]
 00483C2B    and         dl,0FC
 00483C2E    mov         eax,dword ptr [ebp-4]
 00483C31    call        TObject.Destroy
 00483C36    cmp         byte ptr [ebp-5],0
>00483C3A    jle         00483C44
 00483C3C    mov         eax,dword ptr [ebp-4]
 00483C3F    call        @ClassDestroy
 00483C44    pop         ecx
 00483C45    pop         ecx
 00483C46    pop         ebp
 00483C47    ret
*}
end;

//00483C48
procedure sub_00483C48;
begin
{*
 00483C48    push        ebp
 00483C49    mov         ebp,esp
 00483C4B    push        ecx
 00483C4C    push        ebx
 00483C4D    mov         dword ptr [ebp-4],eax
 00483C50    mov         eax,dword ptr [ebp-4]
 00483C53    cmp         word ptr [eax+0A],0;TBasicActionLink.?fA:word
>00483C58    je          00483C69
 00483C5A    mov         ebx,dword ptr [ebp-4]
 00483C5D    mov         eax,dword ptr [ebp-4]
 00483C60    mov         edx,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00483C63    mov         eax,dword ptr [ebx+0C];TBasicActionLink.?fC:TSpeedButton
 00483C66    call        dword ptr [ebx+8];TBasicActionLink.FOnChange
 00483C69    pop         ebx
 00483C6A    pop         ecx
 00483C6B    pop         ebp
 00483C6C    ret
*}
end;

//00483C70
{*function sub_00483C70(?:?):?;
begin
 00483C70    push        ebp
 00483C71    mov         ebp,esp
 00483C73    add         esp,0FFFFFFF4
 00483C76    push        esi
 00483C77    mov         dword ptr [ebp-8],edx
 00483C7A    mov         dword ptr [ebp-4],eax
 00483C7D    mov         edx,dword ptr [ebp-8]
 00483C80    mov         eax,dword ptr [ebp-4]
 00483C83    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00483C86    call        00484004
 00483C8B    mov         eax,dword ptr [ebp-4]
 00483C8E    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00483C91    mov         si,0FFEF
 00483C95    call        @CallDynaInst;TBasicAction.sub_00483E7C
 00483C9A    mov         byte ptr [ebp-9],al
 00483C9D    mov         al,byte ptr [ebp-9]
 00483CA0    pop         esi
 00483CA1    mov         esp,ebp
 00483CA3    pop         ebp
 00483CA4    ret
end;*}

//00483CA8
{*procedure sub_00483CA8(?:?);
begin
 00483CA8    push        ebp
 00483CA9    mov         ebp,esp
 00483CAB    add         esp,0FFFFFFF8
 00483CAE    mov         dword ptr [ebp-8],edx
 00483CB1    mov         dword ptr [ebp-4],eax
 00483CB4    mov         eax,dword ptr [ebp-8]
 00483CB7    mov         edx,dword ptr [ebp-4]
 00483CBA    cmp         eax,dword ptr [edx+10];TBasicActionLink.FAction:TBasicAction
>00483CBD    je          00483CF0
 00483CBF    mov         eax,dword ptr [ebp-4]
 00483CC2    cmp         dword ptr [eax+10],0;TBasicActionLink.FAction:TBasicAction
>00483CC6    je          00483CD6
 00483CC8    mov         edx,dword ptr [ebp-4]
 00483CCB    mov         eax,dword ptr [ebp-4]
 00483CCE    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00483CD1    call        00483FA8
 00483CD6    mov         eax,dword ptr [ebp-8]
 00483CD9    mov         edx,dword ptr [ebp-4]
 00483CDC    mov         dword ptr [edx+10],eax;TBasicActionLink.FAction:TBasicAction
 00483CDF    cmp         dword ptr [ebp-8],0
>00483CE3    je          00483CF0
 00483CE5    mov         edx,dword ptr [ebp-4]
 00483CE8    mov         eax,dword ptr [ebp-8]
 00483CEB    call        00483F80
 00483CF0    pop         ecx
 00483CF1    pop         ecx
 00483CF2    pop         ebp
 00483CF3    ret
end;*}

//00483CF4
{*function sub_00483CF4:?;
begin
 00483CF4    push        ebp
 00483CF5    mov         ebp,esp
 00483CF7    add         esp,0FFFFFFF8
 00483CFA    mov         dword ptr [ebp-4],eax
 00483CFD    mov         byte ptr [ebp-5],1
 00483D01    mov         al,byte ptr [ebp-5]
 00483D04    pop         ecx
 00483D05    pop         ecx
 00483D06    pop         ebp
 00483D07    ret
end;*}

//00483D08
procedure sub_00483D08;
begin
{*
 00483D08    push        ebp
 00483D09    mov         ebp,esp
 00483D0B    push        ecx
 00483D0C    mov         dword ptr [ebp-4],eax
 00483D0F    pop         ecx
 00483D10    pop         ebp
 00483D11    ret         8
*}
end;

//00483D14
{*function sub_00483D14:?;
begin
 00483D14    push        ebp
 00483D15    mov         ebp,esp
 00483D17    add         esp,0FFFFFFF8
 00483D1A    mov         dword ptr [ebp-4],eax
 00483D1D    mov         eax,dword ptr [ebp-4]
 00483D20    mov         eax,dword ptr [eax+10];TBasicActionLink.FAction:TBasicAction
 00483D23    mov         edx,dword ptr [eax]
 00483D25    call        dword ptr [edx+44];TBasicAction.sub_00483EB0
 00483D28    mov         byte ptr [ebp-5],al
 00483D2B    mov         al,byte ptr [ebp-5]
 00483D2E    pop         ecx
 00483D2F    pop         ecx
 00483D30    pop         ebp
 00483D31    ret
end;*}

//00483D34
constructor sub_00483D34;
begin
{*
 00483D34    push        ebp
 00483D35    mov         ebp,esp
 00483D37    add         esp,0FFFFFFF4
 00483D3A    test        dl,dl
>00483D3C    je          00483D46
 00483D3E    add         esp,0FFFFFFF0
 00483D41    call        @ClassCreate
 00483D46    mov         dword ptr [ebp-0C],ecx
 00483D49    mov         byte ptr [ebp-5],dl
 00483D4C    mov         dword ptr [ebp-4],eax
 00483D4F    mov         ecx,dword ptr [ebp-0C]
 00483D52    xor         edx,edx
 00483D54    mov         eax,dword ptr [ebp-4]
 00483D57    call        00482F04
 00483D5C    mov         dl,1
 00483D5E    mov         eax,[004759C0];TList
 00483D63    call        TObject.Create;TList.Create
 00483D68    mov         edx,dword ptr [ebp-4]
 00483D6B    mov         dword ptr [edx+50],eax;TBasicAction.FClients:TList
 00483D6E    mov         eax,dword ptr [ebp-4]
 00483D71    cmp         byte ptr [ebp-5],0
>00483D75    je          00483D86
 00483D77    call        @AfterConstruction
 00483D7C    pop         dword ptr fs:[0]
 00483D83    add         esp,0C
 00483D86    mov         eax,dword ptr [ebp-4]
 00483D89    mov         esp,ebp
 00483D8B    pop         ebp
 00483D8C    ret
*}
end;

//00483D90
destructor TBasicAction.Destroy;
begin
{*
 00483D90    push        ebp
 00483D91    mov         ebp,esp
 00483D93    add         esp,0FFFFFFF8
 00483D96    call        @BeforeDestruction
 00483D9B    mov         byte ptr [ebp-5],dl
 00483D9E    mov         dword ptr [ebp-4],eax
 00483DA1    mov         dl,byte ptr [ebp-5]
 00483DA4    and         dl,0FC
 00483DA7    mov         eax,dword ptr [ebp-4]
 00483DAA    call        TComponent.Destroy
 00483DAF    mov         eax,dword ptr [ebp-4]
 00483DB2    cmp         dword ptr [eax+30],0
>00483DB6    je          00483DDD
 00483DB8    mov         eax,dword ptr [ebp-4]
 00483DBB    mov         eax,dword ptr [eax+30]
 00483DBE    mov         edx,dword ptr [ebp-4]
 00483DC1    call        00483370
>00483DC6    jmp         00483DDD
 00483DC8    mov         eax,dword ptr [ebp-4]
 00483DCB    mov         eax,dword ptr [eax+50]
 00483DCE    call        0047898C
 00483DD3    mov         edx,eax
 00483DD5    mov         eax,dword ptr [ebp-4]
 00483DD8    call        00483FA8
 00483DDD    mov         eax,dword ptr [ebp-4]
 00483DE0    mov         eax,dword ptr [eax+50]
 00483DE3    cmp         dword ptr [eax+8],0
>00483DE7    jg          00483DC8
 00483DE9    mov         eax,dword ptr [ebp-4]
 00483DEC    add         eax,50
 00483DEF    call        FreeAndNil
 00483DF4    cmp         byte ptr [ebp-5],0
>00483DF8    jle         00483E02
 00483DFA    mov         eax,dword ptr [ebp-4]
 00483DFD    call        @ClassDestroy
 00483E02    pop         ecx
 00483E03    pop         ecx
 00483E04    pop         ebp
 00483E05    ret
*}
end;

//00483E08
{*function sub_00483E08(?:?):?;
begin
 00483E08    push        ebp
 00483E09    mov         ebp,esp
 00483E0B    add         esp,0FFFFFFF4
 00483E0E    mov         dword ptr [ebp-0C],edx
 00483E11    mov         dword ptr [ebp-4],eax
 00483E14    mov         byte ptr [ebp-5],0
 00483E18    mov         al,byte ptr [ebp-5]
 00483E1B    mov         esp,ebp
 00483E1D    pop         ebp
 00483E1E    ret
end;*}

//00483E20
{*procedure sub_00483E20(?:?);
begin
 00483E20    push        ebp
 00483E21    mov         ebp,esp
 00483E23    add         esp,0FFFFFFF8
 00483E26    mov         dword ptr [ebp-8],edx
 00483E29    mov         dword ptr [ebp-4],eax
 00483E2C    pop         ecx
 00483E2D    pop         ecx
 00483E2E    pop         ebp
 00483E2F    ret
end;*}

//00483E30
{*procedure sub_00483E30(?:?; ?:?);
begin
 00483E30    push        ebp
 00483E31    mov         ebp,esp
 00483E33    add         esp,0FFFFFFF4
 00483E36    mov         byte ptr [ebp-9],cl
 00483E39    mov         dword ptr [ebp-8],edx
 00483E3C    mov         dword ptr [ebp-4],eax
 00483E3F    mov         cl,byte ptr [ebp-9]
 00483E42    mov         edx,dword ptr [ebp-8]
 00483E45    mov         eax,dword ptr [ebp-4]
 00483E48    call        00483398
 00483E4D    cmp         byte ptr [ebp-9],1
>00483E51    jne         00483E66
 00483E53    mov         eax,dword ptr [ebp-8]
 00483E56    mov         edx,dword ptr [ebp-4]
 00483E59    cmp         eax,dword ptr [edx+30];TBasicAction.FActionComponent:TComponent
>00483E5C    jne         00483E66
 00483E5E    mov         eax,dword ptr [ebp-4]
 00483E61    xor         edx,edx
 00483E63    mov         dword ptr [eax+30],edx;TBasicAction.FActionComponent:TComponent
 00483E66    mov         esp,ebp
 00483E68    pop         ebp
 00483E69    ret
end;*}

//00483E6C
{*procedure sub_00483E6C(?:?);
begin
 00483E6C    push        ebp
 00483E6D    mov         ebp,esp
 00483E6F    add         esp,0FFFFFFF8
 00483E72    mov         dword ptr [ebp-8],edx
 00483E75    mov         dword ptr [ebp-4],eax
 00483E78    pop         ecx
 00483E79    pop         ecx
 00483E7A    pop         ebp
 00483E7B    ret
end;*}

//00483E7C
procedure TBasicAction.sub_00483E7C;
begin
{*
 00483E7C    push        ebp
 00483E7D    mov         ebp,esp
 00483E7F    add         esp,0FFFFFFF8
 00483E82    push        ebx
 00483E83    mov         dword ptr [ebp-4],eax
 00483E86    mov         eax,dword ptr [ebp-4]
 00483E89    cmp         word ptr [eax+42],0;TBasicAction.?f42:word
>00483E8E    je          00483EA2
 00483E90    mov         ebx,dword ptr [ebp-4]
 00483E93    mov         edx,dword ptr [ebp-4]
 00483E96    mov         eax,dword ptr [ebx+44];TBasicAction.?f44:dword
 00483E99    call        dword ptr [ebx+40];TBasicAction.FOnExecute
 00483E9C    mov         byte ptr [ebp-5],1
>00483EA0    jmp         00483EA6
 00483EA2    mov         byte ptr [ebp-5],0
 00483EA6    mov         al,byte ptr [ebp-5]
 00483EA9    pop         ebx
 00483EAA    pop         ecx
 00483EAB    pop         ecx
 00483EAC    pop         ebp
 00483EAD    ret
*}
end;

//00483EB0
{*function sub_00483EB0:?;
begin
 00483EB0    push        ebp
 00483EB1    mov         ebp,esp
 00483EB3    add         esp,0FFFFFFF8
 00483EB6    push        ebx
 00483EB7    mov         dword ptr [ebp-4],eax
 00483EBA    mov         eax,dword ptr [ebp-4]
 00483EBD    cmp         word ptr [eax+4A],0;TBasicAction.?f4A:word
>00483EC2    je          00483ED6
 00483EC4    mov         ebx,dword ptr [ebp-4]
 00483EC7    mov         edx,dword ptr [ebp-4]
 00483ECA    mov         eax,dword ptr [ebx+4C];TBasicAction.?f4C:dword
 00483ECD    call        dword ptr [ebx+48];TBasicAction.FOnUpdate
 00483ED0    mov         byte ptr [ebp-5],1
>00483ED4    jmp         00483EDA
 00483ED6    mov         byte ptr [ebp-5],0
 00483EDA    mov         al,byte ptr [ebp-5]
 00483EDD    pop         ebx
 00483EDE    pop         ecx
 00483EDF    pop         ecx
 00483EE0    pop         ebp
 00483EE1    ret
end;*}

//00483EE4
{*procedure TAction.SetOnExecute(Value:TNotifyEvent; ?:?; ?:?);
begin
 00483EE4    push        ebp
 00483EE5    mov         ebp,esp
 00483EE7    add         esp,0FFFFFFF4
 00483EEA    mov         dword ptr [ebp-4],eax
 00483EED    mov         eax,dword ptr [ebp+8]
 00483EF0    mov         edx,dword ptr [ebp-4]
 00483EF3    cmp         eax,dword ptr [edx+40];TAction.FOnExecute:TNotifyEvent
>00483EF6    jne         00483F03
 00483EF8    mov         eax,dword ptr [ebp+0C]
 00483EFB    mov         edx,dword ptr [ebp-4]
 00483EFE    cmp         eax,dword ptr [edx+44];TAction.?f44:dword
>00483F01    je          00483F54
 00483F03    mov         eax,dword ptr [ebp-4]
 00483F06    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 00483F09    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00483F0C    dec         eax
 00483F0D    test        eax,eax
>00483F0F    jl          00483F3D
 00483F11    inc         eax
 00483F12    mov         dword ptr [ebp-0C],eax
 00483F15    mov         dword ptr [ebp-8],0
 00483F1C    push        dword ptr [ebp+0C]
 00483F1F    push        dword ptr [ebp+8]
 00483F22    mov         edx,dword ptr [ebp-8]
 00483F25    mov         eax,dword ptr [ebp-4]
 00483F28    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 00483F2B    call        TList.Get
 00483F30    mov         edx,dword ptr [eax]
 00483F32    call        dword ptr [edx+10]
 00483F35    inc         dword ptr [ebp-8]
 00483F38    dec         dword ptr [ebp-0C]
>00483F3B    jne         00483F1C
 00483F3D    mov         eax,dword ptr [ebp-4]
 00483F40    mov         edx,dword ptr [ebp+8]
 00483F43    mov         dword ptr [eax+40],edx;TAction.FOnExecute:TNotifyEvent
 00483F46    mov         edx,dword ptr [ebp+0C]
 00483F49    mov         dword ptr [eax+44],edx;TAction.?f44:dword
 00483F4C    mov         eax,dword ptr [ebp-4]
 00483F4F    mov         edx,dword ptr [eax]
 00483F51    call        dword ptr [edx+30];TAction.sub_00483F5C
 00483F54    mov         esp,ebp
 00483F56    pop         ebp
 00483F57    ret         8
end;*}

//00483F5C
procedure sub_00483F5C;
begin
{*
 00483F5C    push        ebp
 00483F5D    mov         ebp,esp
 00483F5F    push        ecx
 00483F60    push        ebx
 00483F61    mov         dword ptr [ebp-4],eax
 00483F64    mov         eax,dword ptr [ebp-4]
 00483F67    cmp         word ptr [eax+3A],0;TBasicAction.?f3A:word
>00483F6C    je          00483F7A
 00483F6E    mov         ebx,dword ptr [ebp-4]
 00483F71    mov         edx,dword ptr [ebp-4]
 00483F74    mov         eax,dword ptr [ebx+3C];TBasicAction.?f3C:dword
 00483F77    call        dword ptr [ebx+38];TBasicAction.FOnChange
 00483F7A    pop         ebx
 00483F7B    pop         ecx
 00483F7C    pop         ebp
 00483F7D    ret
*}
end;

//00483F80
{*procedure sub_00483F80(?:?; ?:TBasicActionLink);
begin
 00483F80    push        ebp
 00483F81    mov         ebp,esp
 00483F83    add         esp,0FFFFFFF8
 00483F86    mov         dword ptr [ebp-8],edx
 00483F89    mov         dword ptr [ebp-4],eax
 00483F8C    mov         eax,dword ptr [ebp-4]
 00483F8F    mov         edx,dword ptr [ebp-8]
 00483F92    mov         dword ptr [edx+10],eax;TBasicActionLink.FAction:TBasicAction
 00483F95    mov         edx,dword ptr [ebp-8]
 00483F98    mov         eax,dword ptr [ebp-4]
 00483F9B    mov         eax,dword ptr [eax+50]
 00483F9E    call        TList.Add
 00483FA3    pop         ecx
 00483FA4    pop         ecx
 00483FA5    pop         ebp
 00483FA6    ret
end;*}

//00483FA8
procedure sub_00483FA8(?:TBasicAction; ?:TBasicActionLink);
begin
{*
 00483FA8    push        ebp
 00483FA9    mov         ebp,esp
 00483FAB    add         esp,0FFFFFFF0
 00483FAE    mov         dword ptr [ebp-8],edx
 00483FB1    mov         dword ptr [ebp-4],eax
 00483FB4    mov         eax,dword ptr [ebp-4]
 00483FB7    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 00483FBA    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00483FBD    dec         eax
 00483FBE    test        eax,eax
>00483FC0    jl          00484000
 00483FC2    inc         eax
 00483FC3    mov         dword ptr [ebp-10],eax
 00483FC6    mov         dword ptr [ebp-0C],0
 00483FCD    mov         eax,dword ptr [ebp-4]
 00483FD0    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 00483FD3    mov         edx,dword ptr [ebp-0C]
 00483FD6    call        TList.Get
 00483FDB    cmp         eax,dword ptr [ebp-8]
>00483FDE    jne         00483FF8
 00483FE0    mov         eax,dword ptr [ebp-8]
 00483FE3    xor         edx,edx
 00483FE5    mov         dword ptr [eax+10],edx;TBasicActionLink.FAction:TBasicAction
 00483FE8    mov         eax,dword ptr [ebp-4]
 00483FEB    mov         eax,dword ptr [eax+50];TBasicAction.FClients:TList
 00483FEE    mov         edx,dword ptr [ebp-0C]
 00483FF1    call        00478668
>00483FF6    jmp         00484000
 00483FF8    inc         dword ptr [ebp-0C]
 00483FFB    dec         dword ptr [ebp-10]
>00483FFE    jne         00483FCD
 00484000    mov         esp,ebp
 00484002    pop         ebp
 00484003    ret
*}
end;

//00484004
{*procedure sub_00484004(?:TBasicAction; ?:?);
begin
 00484004    push        ebp
 00484005    mov         ebp,esp
 00484007    add         esp,0FFFFFFF8
 0048400A    mov         dword ptr [ebp-8],edx
 0048400D    mov         dword ptr [ebp-4],eax
 00484010    mov         eax,dword ptr [ebp-4]
 00484013    mov         eax,dword ptr [eax+30];TBasicAction.FActionComponent:TComponent
 00484016    cmp         eax,dword ptr [ebp-8]
>00484019    je          00484052
 0048401B    mov         eax,dword ptr [ebp-4]
 0048401E    cmp         dword ptr [eax+30],0;TBasicAction.FActionComponent:TComponent
>00484022    je          00484032
 00484024    mov         edx,dword ptr [ebp-4]
 00484027    mov         eax,dword ptr [ebp-4]
 0048402A    mov         eax,dword ptr [eax+30];TBasicAction.FActionComponent:TComponent
 0048402D    call        00483370
 00484032    mov         eax,dword ptr [ebp-8]
 00484035    mov         edx,dword ptr [ebp-4]
 00484038    mov         dword ptr [edx+30],eax;TBasicAction.FActionComponent:TComponent
 0048403B    mov         eax,dword ptr [ebp-4]
 0048403E    cmp         dword ptr [eax+30],0;TBasicAction.FActionComponent:TComponent
>00484042    je          00484052
 00484044    mov         edx,dword ptr [ebp-4]
 00484047    mov         eax,dword ptr [ebp-4]
 0048404A    mov         eax,dword ptr [eax+30];TBasicAction.FActionComponent:TComponent
 0048404D    call        00483020
 00484052    pop         ecx
 00484053    pop         ecx
 00484054    pop         ebp
 00484055    ret
end;*}

//00484058
{*constructor TStreamAdapter.Create(?:?);
begin
 00484058    push        ebp
 00484059    mov         ebp,esp
 0048405B    add         esp,0FFFFFFF4
 0048405E    test        dl,dl
>00484060    je          0048406A
 00484062    add         esp,0FFFFFFF0
 00484065    call        @ClassCreate
 0048406A    mov         dword ptr [ebp-0C],ecx
 0048406D    mov         byte ptr [ebp-5],dl
 00484070    mov         dword ptr [ebp-4],eax
 00484073    xor         edx,edx
 00484075    mov         eax,dword ptr [ebp-4]
 00484078    call        TObject.Create
 0048407D    mov         eax,dword ptr [ebp-4]
 00484080    mov         edx,dword ptr [ebp-0C]
 00484083    mov         dword ptr [eax+0C],edx
 00484086    mov         eax,dword ptr [ebp-4]
 00484089    mov         dl,byte ptr [ebp+8]
 0048408C    mov         byte ptr [eax+10],dl
 0048408F    mov         eax,dword ptr [ebp-4]
 00484092    cmp         byte ptr [ebp-5],0
>00484096    je          004840A7
 00484098    call        @AfterConstruction
 0048409D    pop         dword ptr fs:[0]
 004840A4    add         esp,0C
 004840A7    mov         eax,dword ptr [ebp-4]
 004840AA    mov         esp,ebp
 004840AC    pop         ebp
 004840AD    ret         4
end;*}

//004840B0
destructor TStreamAdapter.Destroy;
begin
{*
 004840B0    push        ebp
 004840B1    mov         ebp,esp
 004840B3    add         esp,0FFFFFFF8
 004840B6    call        @BeforeDestruction
 004840BB    mov         byte ptr [ebp-5],dl
 004840BE    mov         dword ptr [ebp-4],eax
 004840C1    mov         eax,dword ptr [ebp-4]
 004840C4    cmp         byte ptr [eax+10],1
>004840C8    jne         004840DD
 004840CA    mov         eax,dword ptr [ebp-4]
 004840CD    mov         eax,dword ptr [eax+0C]
 004840D0    call        TObject.Free
 004840D5    mov         eax,dword ptr [ebp-4]
 004840D8    xor         edx,edx
 004840DA    mov         dword ptr [eax+0C],edx
 004840DD    mov         dl,byte ptr [ebp-5]
 004840E0    and         dl,0FC
 004840E3    mov         eax,dword ptr [ebp-4]
 004840E6    call        TObject.Destroy
 004840EB    cmp         byte ptr [ebp-5],0
>004840EF    jle         004840F9
 004840F1    mov         eax,dword ptr [ebp-4]
 004840F4    call        @ClassDestroy
 004840F9    pop         ecx
 004840FA    pop         ecx
 004840FB    pop         ebp
 004840FC    ret
*}
end;

//00484100
{*function sub_00484100(?:?; ?:?; ?:?):?;
begin
 00484100    push        ebp
 00484101    mov         ebp,esp
 00484103    add         esp,0FFFFFFF8
 00484106    push        ebx
 00484107    push        esi
 00484108    push        edi
 00484109    xor         eax,eax
 0048410B    push        ebp
 0048410C    push        48415F
 00484111    push        dword ptr fs:[eax]
 00484114    mov         dword ptr fs:[eax],esp
 00484117    cmp         dword ptr [ebp+0C],0
>0048411B    jne         0048412E
 0048411D    mov         dword ptr [ebp-4],80030009
 00484124    xor         eax,eax
 00484126    pop         edx
 00484127    pop         ecx
 00484128    pop         ecx
 00484129    mov         dword ptr fs:[eax],edx
>0048412C    jmp         00484170
 0048412E    mov         edx,dword ptr [ebp+0C]
 00484131    mov         eax,dword ptr [ebp+8]
 00484134    mov         eax,dword ptr [eax+0C]
 00484137    mov         ecx,dword ptr [ebp+10]
 0048413A    mov         ebx,dword ptr [eax]
 0048413C    call        dword ptr [ebx+0C]
 0048413F    mov         dword ptr [ebp-8],eax
 00484142    cmp         dword ptr [ebp+14],0
>00484146    je          00484150
 00484148    mov         eax,dword ptr [ebp+14]
 0048414B    mov         edx,dword ptr [ebp-8]
 0048414E    mov         dword ptr [eax],edx
 00484150    xor         eax,eax
 00484152    mov         dword ptr [ebp-4],eax
 00484155    xor         eax,eax
 00484157    pop         edx
 00484158    pop         ecx
 00484159    pop         ecx
 0048415A    mov         dword ptr fs:[eax],edx
>0048415D    jmp         00484170
>0048415F    jmp         @HandleAnyException
 00484164    mov         dword ptr [ebp-4],1
 0048416B    call        @DoneExcept
 00484170    mov         eax,dword ptr [ebp-4]
 00484173    pop         edi
 00484174    pop         esi
 00484175    pop         ebx
 00484176    pop         ecx
 00484177    pop         ecx
 00484178    pop         ebp
 00484179    ret         10
end;*}

//0048417C
{*function sub_0048417C(?:?; ?:?; ?:?):?;
begin
 0048417C    push        ebp
 0048417D    mov         ebp,esp
 0048417F    add         esp,0FFFFFFF8
 00484182    push        ebx
 00484183    push        esi
 00484184    push        edi
 00484185    xor         eax,eax
 00484187    push        ebp
 00484188    push        4841DB
 0048418D    push        dword ptr fs:[eax]
 00484190    mov         dword ptr fs:[eax],esp
 00484193    cmp         dword ptr [ebp+0C],0
>00484197    jne         004841AA
 00484199    mov         dword ptr [ebp-4],80030009
 004841A0    xor         eax,eax
 004841A2    pop         edx
 004841A3    pop         ecx
 004841A4    pop         ecx
 004841A5    mov         dword ptr fs:[eax],edx
>004841A8    jmp         004841EC
 004841AA    mov         edx,dword ptr [ebp+0C]
 004841AD    mov         eax,dword ptr [ebp+8]
 004841B0    mov         eax,dword ptr [eax+0C]
 004841B3    mov         ecx,dword ptr [ebp+10]
 004841B6    mov         ebx,dword ptr [eax]
 004841B8    call        dword ptr [ebx+10]
 004841BB    mov         dword ptr [ebp-8],eax
 004841BE    cmp         dword ptr [ebp+14],0
>004841C2    je          004841CC
 004841C4    mov         eax,dword ptr [ebp+14]
 004841C7    mov         edx,dword ptr [ebp-8]
 004841CA    mov         dword ptr [eax],edx
 004841CC    xor         eax,eax
 004841CE    mov         dword ptr [ebp-4],eax
 004841D1    xor         eax,eax
 004841D3    pop         edx
 004841D4    pop         ecx
 004841D5    pop         ecx
 004841D6    mov         dword ptr fs:[eax],edx
>004841D9    jmp         004841EC
>004841DB    jmp         @HandleAnyException
 004841E0    mov         dword ptr [ebp-4],80030103
 004841E7    call        @DoneExcept
 004841EC    mov         eax,dword ptr [ebp-4]
 004841EF    pop         edi
 004841F0    pop         esi
 004841F1    pop         ebx
 004841F2    pop         ecx
 004841F3    pop         ecx
 004841F4    pop         ebp
 004841F5    ret         10
end;*}

//004841F8
{*function sub_004841F8(?:?; ?:?; ?:?):?;
begin
 004841F8    push        ebp
 004841F9    mov         ebp,esp
 004841FB    add         esp,0FFFFFFF0
 004841FE    push        ebx
 004841FF    push        esi
 00484200    push        edi
 00484201    xor         eax,eax
 00484203    push        ebp
 00484204    push        484269
 00484209    push        dword ptr fs:[eax]
 0048420C    mov         dword ptr fs:[eax],esp
 0048420F    cmp         dword ptr [ebp+14],0
>00484213    jl          0048421B
 00484215    cmp         dword ptr [ebp+14],2
>00484219    jle         0048422C
 0048421B    mov         dword ptr [ebp-4],80030001
 00484222    xor         eax,eax
 00484224    pop         edx
 00484225    pop         ecx
 00484226    pop         ecx
 00484227    mov         dword ptr fs:[eax],edx
>0048422A    jmp         0048427A
 0048422C    mov         eax,dword ptr [ebp+8]
 0048422F    mov         eax,dword ptr [eax+0C]
 00484232    mov         cx,word ptr [ebp+14]
 00484236    mov         edx,dword ptr [ebp+0C]
 00484239    mov         ebx,dword ptr [eax]
 0048423B    call        dword ptr [ebx+14]
 0048423E    cdq
 0048423F    mov         dword ptr [ebp-10],eax
 00484242    mov         dword ptr [ebp-0C],edx
 00484245    mov         eax,dword ptr [ebp+18]
 00484248    test        eax,eax
>0048424A    je          0048425A
 0048424C    mov         eax,dword ptr [ebp+18]
 0048424F    mov         edx,dword ptr [ebp-10]
 00484252    mov         dword ptr [eax],edx
 00484254    mov         edx,dword ptr [ebp-0C]
 00484257    mov         dword ptr [eax+4],edx
 0048425A    xor         eax,eax
 0048425C    mov         dword ptr [ebp-4],eax
 0048425F    xor         eax,eax
 00484261    pop         edx
 00484262    pop         ecx
 00484263    pop         ecx
 00484264    mov         dword ptr fs:[eax],edx
>00484267    jmp         0048427A
>00484269    jmp         @HandleAnyException
 0048426E    mov         dword ptr [ebp-4],80030009
 00484275    call        @DoneExcept
 0048427A    mov         eax,dword ptr [ebp-4]
 0048427D    pop         edi
 0048427E    pop         esi
 0048427F    pop         ebx
 00484280    mov         esp,ebp
 00484282    pop         ebp
 00484283    ret         14
end;*}

//00484288
{*function sub_00484288(?:?; ?:?):?;
begin
 00484288    push        ebp
 00484289    mov         ebp,esp
 0048428B    push        ecx
 0048428C    push        ebx
 0048428D    push        esi
 0048428E    push        edi
 0048428F    xor         eax,eax
 00484291    push        ebp
 00484292    push        4842DA
 00484297    push        dword ptr fs:[eax]
 0048429A    mov         dword ptr fs:[eax],esp
 0048429D    push        dword ptr [ebp+10]
 004842A0    push        dword ptr [ebp+0C]
 004842A3    mov         eax,dword ptr [ebp+8]
 004842A6    mov         eax,dword ptr [eax+0C]
 004842A9    call        0047BD6C
 004842AE    mov         eax,dword ptr [ebp+8]
 004842B1    mov         eax,dword ptr [eax+0C]
 004842B4    mov         edx,dword ptr [eax]
 004842B6    call        dword ptr [edx]
 004842B8    cmp         edx,dword ptr [ebp+10]
>004842BB    jne         004842C0
 004842BD    cmp         eax,dword ptr [ebp+0C]
>004842C0    je          004842CB
 004842C2    mov         dword ptr [ebp-4],80004005
>004842C9    jmp         004842D0
 004842CB    xor         eax,eax
 004842CD    mov         dword ptr [ebp-4],eax
 004842D0    xor         eax,eax
 004842D2    pop         edx
 004842D3    pop         ecx
 004842D4    pop         ecx
 004842D5    mov         dword ptr fs:[eax],edx
>004842D8    jmp         004842EB
>004842DA    jmp         @HandleAnyException
 004842DF    mov         dword ptr [ebp-4],8000FFFF
 004842E6    call        @DoneExcept
 004842EB    mov         eax,dword ptr [ebp-4]
 004842EE    pop         edi
 004842EF    pop         esi
 004842F0    pop         ebx
 004842F1    pop         ecx
 004842F2    pop         ebp
 004842F3    ret         0C
end;*}

//004842F8
{*function sub_004842F8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004842F8    push        ebp
 004842F9    mov         ebp,esp
 004842FB    add         esp,0FFFFFFD0
 004842FE    push        ebx
 004842FF    push        esi
 00484300    push        edi
 00484301    mov         eax,dword ptr [ebp+0C]
 00484304    call        @IntfAddRef
 00484309    xor         eax,eax
 0048430B    push        ebp
 0048430C    push        484507
 00484311    push        dword ptr fs:[eax]
 00484314    mov         dword ptr fs:[eax],esp
 00484317    xor         eax,eax
 00484319    mov         dword ptr [ebp-4],eax
 0048431C    mov         dword ptr [ebp-20],0
 00484323    mov         dword ptr [ebp-1C],0
 0048432A    mov         dword ptr [ebp-28],0
 00484331    mov         dword ptr [ebp-24],0
 00484338    xor         eax,eax
 0048433A    push        ebp
 0048433B    push        4844E0
 00484340    push        dword ptr fs:[eax]
 00484343    mov         dword ptr fs:[eax],esp
 00484346    cmp         dword ptr [ebp+14],0
>0048434A    jne         00484357
 0048434C    cmp         dword ptr [ebp+10],100000
>00484353    jbe         00484362
>00484355    jmp         00484359
>00484357    jle         00484362
 00484359    mov         dword ptr [ebp-0C],100000
>00484360    jmp         00484368
 00484362    mov         eax,dword ptr [ebp+10]
 00484365    mov         dword ptr [ebp-0C],eax
 00484368    mov         eax,dword ptr [ebp-0C]
 0048436B    call        @GetMem
 00484370    mov         dword ptr [ebp-8],eax
 00484373    xor         eax,eax
 00484375    push        ebp
 00484376    push        4844CF
 0048437B    push        dword ptr fs:[eax]
 0048437E    mov         dword ptr fs:[eax],esp
>00484381    jmp         00484477
 00484386    cmp         dword ptr [ebp+14],0
>0048438A    jne         00484397
 0048438C    cmp         dword ptr [ebp+10],7FFFFFFF
>00484393    jbe         004843A2
>00484395    jmp         00484399
>00484397    jle         004843A2
 00484399    mov         dword ptr [ebp-14],7FFFFFFF
>004843A0    jmp         004843A8
 004843A2    mov         eax,dword ptr [ebp+10]
 004843A5    mov         dword ptr [ebp-14],eax
 004843A8    cmp         dword ptr [ebp-14],0
>004843AC    jle         00484477
 004843B2    mov         eax,dword ptr [ebp-14]
 004843B5    cmp         eax,dword ptr [ebp-0C]
>004843B8    jle         004843C2
 004843BA    mov         eax,dword ptr [ebp-0C]
 004843BD    mov         dword ptr [ebp-10],eax
>004843C0    jmp         004843C8
 004843C2    mov         eax,dword ptr [ebp-14]
 004843C5    mov         dword ptr [ebp-10],eax
 004843C8    mov         edx,dword ptr [ebp-8]
 004843CB    mov         eax,dword ptr [ebp+8]
 004843CE    mov         eax,dword ptr [eax+0C]
 004843D1    mov         ecx,dword ptr [ebp-10]
 004843D4    mov         ebx,dword ptr [eax]
 004843D6    call        dword ptr [ebx+0C]
 004843D9    mov         dword ptr [ebp-18],eax
 004843DC    cmp         dword ptr [ebp-18],0
>004843E0    jne         004843F4
 004843E2    call        @TryFinallyExit
 004843E7    xor         eax,eax
 004843E9    pop         edx
 004843EA    pop         ecx
 004843EB    pop         ecx
 004843EC    mov         dword ptr fs:[eax],edx
>004843EF    jmp         004844F1
 004843F4    mov         eax,dword ptr [ebp-18]
 004843F7    cdq
 004843F8    add         dword ptr [ebp-20],eax
 004843FB    adc         dword ptr [ebp-1C],edx
 004843FE    mov         dword ptr [ebp-30],0
 00484405    mov         dword ptr [ebp-2C],0
 0048440C    lea         eax,[ebp-30]
 0048440F    push        eax
 00484410    mov         eax,dword ptr [ebp-18]
 00484413    push        eax
 00484414    mov         eax,dword ptr [ebp-8]
 00484417    push        eax
 00484418    mov         eax,dword ptr [ebp+0C]
 0048441B    push        eax
 0048441C    mov         eax,dword ptr [eax]
 0048441E    call        dword ptr [eax+10]
 00484421    mov         dword ptr [ebp-4],eax
 00484424    mov         eax,dword ptr [ebp-30]
 00484427    mov         edx,dword ptr [ebp-2C]
 0048442A    add         dword ptr [ebp-28],eax
 0048442D    adc         dword ptr [ebp-24],edx
 00484430    cmp         dword ptr [ebp-4],0
>00484434    jne         00484445
 00484436    mov         eax,dword ptr [ebp-30]
 00484439    cmp         eax,dword ptr [ebp-18]
>0048443C    je          00484445
 0048443E    mov         dword ptr [ebp-4],80004005
 00484445    cmp         dword ptr [ebp-4],0
>00484449    je          0048445D
 0048444B    call        @TryFinallyExit
 00484450    xor         eax,eax
 00484452    pop         edx
 00484453    pop         ecx
 00484454    pop         ecx
 00484455    mov         dword ptr fs:[eax],edx
>00484458    jmp         004844F1
 0048445D    mov         eax,dword ptr [ebp-18]
 00484460    sub         dword ptr [ebp-14],eax
 00484463    mov         eax,dword ptr [ebp-18]
 00484466    cdq
 00484467    sub         dword ptr [ebp+10],eax
 0048446A    sbb         dword ptr [ebp+14],edx
 0048446D    cmp         dword ptr [ebp-14],0
>00484471    jg          004843B2
 00484477    cmp         dword ptr [ebp+14],0
>0048447B    jne         00484489
 0048447D    cmp         dword ptr [ebp+10],0
>00484481    ja          00484386
>00484487    jmp         0048448F
>00484489    jg          00484386
 0048448F    xor         eax,eax
 00484491    pop         edx
 00484492    pop         ecx
 00484493    pop         ecx
 00484494    mov         dword ptr fs:[eax],edx
 00484497    push        4844D6
 0048449C    mov         eax,dword ptr [ebp-8]
 0048449F    call        @FreeMem
 004844A4    mov         eax,dword ptr [ebp+1C]
 004844A7    test        eax,eax
>004844A9    je          004844B9
 004844AB    mov         eax,dword ptr [ebp+1C]
 004844AE    mov         edx,dword ptr [ebp-28]
 004844B1    mov         dword ptr [eax],edx
 004844B3    mov         edx,dword ptr [ebp-24]
 004844B6    mov         dword ptr [eax+4],edx
 004844B9    mov         eax,dword ptr [ebp+18]
 004844BC    test        eax,eax
>004844BE    je          004844CE
 004844C0    mov         eax,dword ptr [ebp+18]
 004844C3    mov         edx,dword ptr [ebp-20]
 004844C6    mov         dword ptr [eax],edx
 004844C8    mov         edx,dword ptr [ebp-1C]
 004844CB    mov         dword ptr [eax+4],edx
 004844CE    ret
>004844CF    jmp         @HandleFinally
>004844D4    jmp         0048449C
 004844D6    xor         eax,eax
 004844D8    pop         edx
 004844D9    pop         ecx
 004844DA    pop         ecx
 004844DB    mov         dword ptr fs:[eax],edx
>004844DE    jmp         004844F1
>004844E0    jmp         @HandleAnyException
 004844E5    mov         dword ptr [ebp-4],8000FFFF
 004844EC    call        @DoneExcept
 004844F1    xor         eax,eax
 004844F3    pop         edx
 004844F4    pop         ecx
 004844F5    pop         ecx
 004844F6    mov         dword ptr fs:[eax],edx
 004844F9    push        48450E
 004844FE    lea         eax,[ebp+0C]
 00484501    call        @IntfClear
 00484506    ret
>00484507    jmp         @HandleFinally
>0048450C    jmp         004844FE
 0048450E    mov         eax,dword ptr [ebp-4]
 00484511    pop         edi
 00484512    pop         esi
 00484513    pop         ebx
 00484514    mov         esp,ebp
 00484516    pop         ebp
 00484517    ret         18
end;*}

//0048451C
{*function sub_0048451C:?;
begin
 0048451C    push        ebp
 0048451D    mov         ebp,esp
 0048451F    push        ecx
 00484520    xor         eax,eax
 00484522    mov         dword ptr [ebp-4],eax
 00484525    mov         eax,dword ptr [ebp-4]
 00484528    pop         ecx
 00484529    pop         ebp
 0048452A    ret         8
end;*}

//00484530
{*function sub_00484530:?;
begin
 00484530    push        ebp
 00484531    mov         ebp,esp
 00484533    push        ecx
 00484534    mov         dword ptr [ebp-4],80030102
 0048453B    mov         eax,dword ptr [ebp-4]
 0048453E    pop         ecx
 0048453F    pop         ebp
 00484540    ret         4
end;*}

//00484544
{*function sub_00484544:?;
begin
 00484544    push        ebp
 00484545    mov         ebp,esp
 00484547    push        ecx
 00484548    mov         dword ptr [ebp-4],80030001
 0048454F    mov         eax,dword ptr [ebp-4]
 00484552    pop         ecx
 00484553    pop         ebp
 00484554    ret         18
end;*}

//00484558
{*function sub_00484558:?;
begin
 00484558    push        ebp
 00484559    mov         ebp,esp
 0048455B    push        ecx
 0048455C    mov         dword ptr [ebp-4],80030001
 00484563    mov         eax,dword ptr [ebp-4]
 00484566    pop         ecx
 00484567    pop         ebp
 00484568    ret         18
end;*}

//0048456C
{*function sub_0048456C(?:?):?;
begin
 0048456C    push        ebp
 0048456D    mov         ebp,esp
 0048456F    push        ecx
 00484570    push        ebx
 00484571    push        esi
 00484572    push        edi
 00484573    xor         eax,eax
 00484575    mov         dword ptr [ebp-4],eax
 00484578    xor         eax,eax
 0048457A    push        ebp
 0048457B    push        4845EE
 00484580    push        dword ptr fs:[eax]
 00484583    mov         dword ptr fs:[eax],esp
 00484586    mov         eax,dword ptr [ebp+0C]
 00484589    test        eax,eax
>0048458B    je          004845E4
 0048458D    mov         eax,dword ptr [ebp+0C]
 00484590    mov         dword ptr [eax+4],2
 00484597    mov         eax,dword ptr [ebp+8]
 0048459A    mov         eax,dword ptr [eax+0C]
 0048459D    mov         edx,dword ptr [eax]
 0048459F    call        dword ptr [edx]
 004845A1    mov         ecx,dword ptr [ebp+0C]
 004845A4    mov         dword ptr [ecx+8],eax
 004845A7    mov         dword ptr [ecx+0C],edx
 004845AA    mov         eax,dword ptr [ebp+0C]
 004845AD    xor         edx,edx
 004845AF    mov         dword ptr [eax+10],edx
 004845B2    mov         eax,dword ptr [ebp+0C]
 004845B5    xor         edx,edx
 004845B7    mov         dword ptr [eax+14],edx
 004845BA    mov         eax,dword ptr [ebp+0C]
 004845BD    xor         edx,edx
 004845BF    mov         dword ptr [eax+18],edx
 004845C2    mov         eax,dword ptr [ebp+0C]
 004845C5    xor         edx,edx
 004845C7    mov         dword ptr [eax+1C],edx
 004845CA    mov         eax,dword ptr [ebp+0C]
 004845CD    xor         edx,edx
 004845CF    mov         dword ptr [eax+20],edx
 004845D2    mov         eax,dword ptr [ebp+0C]
 004845D5    xor         edx,edx
 004845D7    mov         dword ptr [eax+24],edx
 004845DA    mov         eax,dword ptr [ebp+0C]
 004845DD    mov         dword ptr [eax+2C],1
 004845E4    xor         eax,eax
 004845E6    pop         edx
 004845E7    pop         ecx
 004845E8    pop         ecx
 004845E9    mov         dword ptr fs:[eax],edx
>004845EC    jmp         004845FF
>004845EE    jmp         @HandleAnyException
 004845F3    mov         dword ptr [ebp-4],8000FFFF
 004845FA    call        @DoneExcept
 004845FF    mov         eax,dword ptr [ebp-4]
 00484602    pop         edi
 00484603    pop         esi
 00484604    pop         ebx
 00484605    pop         ecx
 00484606    pop         ebp
 00484607    ret         0C
end;*}

//0048460C
{*function sub_0048460C:?;
begin
 0048460C    push        ebp
 0048460D    mov         ebp,esp
 0048460F    push        ecx
 00484610    mov         eax,dword ptr [ebp+0C]
 00484613    test        eax,eax
>00484615    je          0048461B
 00484617    xor         edx,edx
 00484619    mov         dword ptr [eax],edx
 0048461B    mov         dword ptr [ebp-4],80004001
 00484622    mov         eax,dword ptr [ebp-4]
 00484625    pop         ecx
 00484626    pop         ebp
 00484627    ret         8
end;*}

//0048462C
procedure FreeIntConstList;
begin
{*
 0048462C    push        ebp
 0048462D    mov         ebp,esp
 0048462F    add         esp,0FFFFFFF4
 00484632    mov         eax,[0055DAD8];gvar_0055DAD8
 00484637    call        TThreadList.LockList
 0048463C    mov         dword ptr [ebp-8],eax
 0048463F    xor         eax,eax
 00484641    push        ebp
 00484642    push        484693
 00484647    push        dword ptr fs:[eax]
 0048464A    mov         dword ptr fs:[eax],esp
 0048464D    mov         eax,dword ptr [ebp-8]
 00484650    mov         eax,dword ptr [eax+8]
 00484653    dec         eax
 00484654    test        eax,eax
>00484656    jl          0048467B
 00484658    inc         eax
 00484659    mov         dword ptr [ebp-0C],eax
 0048465C    mov         dword ptr [ebp-4],0
 00484663    mov         edx,dword ptr [ebp-4]
 00484666    mov         eax,dword ptr [ebp-8]
 00484669    call        TList.Get
 0048466E    call        TObject.Free
 00484673    inc         dword ptr [ebp-4]
 00484676    dec         dword ptr [ebp-0C]
>00484679    jne         00484663
 0048467B    xor         eax,eax
 0048467D    pop         edx
 0048467E    pop         ecx
 0048467F    pop         ecx
 00484680    mov         dword ptr fs:[eax],edx
 00484683    push        48469A
 00484688    mov         eax,[0055DAD8];gvar_0055DAD8
 0048468D    call        TThreadList.UnlockList
 00484692    ret
>00484693    jmp         @HandleFinally
>00484698    jmp         00484688
 0048469A    mov         eax,[0055DAD8];gvar_0055DAD8
 0048469F    call        TObject.Free
 004846A4    mov         esp,ebp
 004846A6    pop         ebp
 004846A7    ret
*}
end;

//004846A8
procedure ModuleUnload(Instance:Longint);
begin
{*
 004846A8    push        ebp
 004846A9    mov         ebp,esp
 004846AB    push        ecx
 004846AC    mov         dword ptr [ebp-4],eax
 004846AF    mov         eax,dword ptr [ebp-4]
 004846B2    call        UnRegisterModuleClasses
 004846B7    pop         ecx
 004846B8    pop         ebp
 004846B9    ret
*}
end;

//004846BC
function StdWndProc(Window:HWND; Message:Longint; WParam:Longint; LParam:Longint):Longint; stdcall;
begin
{*
 004846BC    push        ebp
 004846BD    mov         ebp,esp
 004846BF    xor         eax,eax
 004846C1    push        eax
 004846C2    push        dword ptr [ebp+14]
 004846C5    push        dword ptr [ebp+10]
 004846C8    push        dword ptr [ebp+0C]
 004846CB    mov         edx,esp
 004846CD    mov         eax,dword ptr [ecx+4]
 004846D0    call        dword ptr [ecx]
 004846D2    add         esp,0C
 004846D5    pop         eax
 004846D6    pop         ebp
 004846D7    ret         10
*}
end;

//004846DC
{*function sub_004846DC(?:?; ?:Longint):?;
begin
 004846DC    push        ebp
 004846DD    mov         ebp,esp
 004846DF    add         esp,0FFFFFFF4
 004846E2    mov         dword ptr [ebp-8],edx
 004846E5    mov         dword ptr [ebp-4],eax
 004846E8    mov         eax,dword ptr [ebp-4]
 004846EB    add         eax,5
 004846EE    mov         edx,dword ptr [ebp-8]
 004846F1    sub         edx,eax
 004846F3    mov         dword ptr [ebp-0C],edx
 004846F6    mov         eax,dword ptr [ebp-0C]
 004846F9    mov         esp,ebp
 004846FB    pop         ebp
 004846FC    ret
end;*}

//00484700
{*function sub_00484700(?:?; ?:?):?;
begin
 00484700    push        ebp
 00484701    mov         ebp,esp
 00484703    add         esp,0FFFFFFF4
 00484706    cmp         dword ptr ds:[55DB08],0;gvar_0055DB08
>0048470D    jne         004847AD
 00484713    push        40
 00484715    push        1000
 0048471A    push        1000
 0048471F    push        0
 00484721    call        kernel32.VirtualAlloc
 00484726    mov         dword ptr [ebp-8],eax
 00484729    mov         eax,[0055DB04];gvar_0055DB04:Pointer
 0048472E    mov         edx,dword ptr [ebp-8]
 00484731    mov         dword ptr [edx],eax
 00484733    mov         eax,dword ptr [ebp-8]
 00484736    lea         edx,[eax+4]
 00484739    mov         eax,540DA4
 0048473E    mov         ecx,2
 00484743    call        Move
 00484748    mov         edx,4846BC;StdWndProc:Longint
 0048474D    mov         eax,dword ptr [ebp-8]
 00484750    add         eax,5
 00484753    call        004846DC
 00484758    mov         edx,dword ptr [ebp-8]
 0048475B    mov         dword ptr [edx+6],eax
 0048475E    mov         eax,dword ptr [ebp-8]
 00484761    add         eax,0A
 00484764    mov         dword ptr [ebp-0C],eax
 00484767    mov         eax,dword ptr [ebp-0C]
 0048476A    mov         byte ptr [eax],0E8
 0048476D    mov         eax,dword ptr [ebp-8]
 00484770    lea         edx,[eax+4]
 00484773    mov         eax,dword ptr [ebp-0C]
 00484776    call        004846DC
 0048477B    mov         edx,dword ptr [ebp-0C]
 0048477E    mov         dword ptr [edx+1],eax
 00484781    mov         eax,[0055DB08];gvar_0055DB08
 00484786    mov         edx,dword ptr [ebp-0C]
 00484789    mov         dword ptr [edx+5],eax
 0048478C    mov         eax,dword ptr [ebp-0C]
 0048478F    mov         [0055DB08],eax;gvar_0055DB08
 00484794    add         dword ptr [ebp-0C],0D
 00484798    mov         eax,dword ptr [ebp-0C]
 0048479B    sub         eax,dword ptr [ebp-8]
 0048479E    cmp         eax,0FFC
>004847A3    jl          00484767
 004847A5    mov         eax,dword ptr [ebp-8]
 004847A8    mov         [0055DB04],eax;gvar_0055DB04:Pointer
 004847AD    mov         eax,[0055DB08];gvar_0055DB08
 004847B2    mov         dword ptr [ebp-4],eax
 004847B5    mov         eax,[0055DB08];gvar_0055DB08
 004847BA    mov         dword ptr [ebp-0C],eax
 004847BD    mov         eax,dword ptr [ebp-0C]
 004847C0    mov         eax,dword ptr [eax+5]
 004847C3    mov         [0055DB08],eax;gvar_0055DB08
 004847C8    mov         eax,dword ptr [ebp-0C]
 004847CB    mov         edx,dword ptr [ebp+8]
 004847CE    mov         dword ptr [eax+5],edx
 004847D1    mov         edx,dword ptr [ebp+0C]
 004847D4    mov         dword ptr [eax+9],edx
 004847D7    mov         eax,dword ptr [ebp-4]
 004847DA    mov         esp,ebp
 004847DC    pop         ebp
 004847DD    ret         8
end;*}

//004847E0
procedure sub_004847E0(?:Longint);
begin
{*
 004847E0    push        ebp
 004847E1    mov         ebp,esp
 004847E3    push        ecx
 004847E4    mov         dword ptr [ebp-4],eax
 004847E7    cmp         dword ptr [ebp-4],0
>004847EB    je          00484801
 004847ED    mov         eax,dword ptr [ebp-4]
 004847F0    mov         edx,dword ptr ds:[55DB08];gvar_0055DB08
 004847F6    mov         dword ptr [eax+5],edx
 004847F9    mov         eax,dword ptr [ebp-4]
 004847FC    mov         [0055DB08],eax;gvar_0055DB08
 00484801    pop         ecx
 00484802    pop         ebp
 00484803    ret
*}
end;

//00484804
procedure _NF__E7C;
begin
{*
 00484804    push        esp
 00484805    push        eax
 00484806    push        ebp
>00484807    je          00484872
 00484809    ins         byte ptr [edi],dl
 0048480A    push        edi
 0048480B    imul        ebp,dword ptr [esi+64],776F
 00484812    add         byte ptr [eax],al
 00484814    push        ebp
 00484815    mov         ebp,esp
 00484817    add         esp,0FFFFFFD0
 0048481A    mov         eax,[0055C664];gvar_0055C664
 0048481F    mov         [00540DB8],eax;gvar_00540DB8
 00484824    lea         eax,[ebp-2D]
 00484827    push        eax
 00484828    mov         eax,[00540DCC];^_NF__E7C
 0048482D    push        eax
 0048482E    mov         eax,[0055C664];gvar_0055C664
 00484833    push        eax
 00484834    call        user32.GetClassInfoA
 00484839    cmp         eax,1
 0048483C    sbb         eax,eax
 0048483E    inc         eax
 0048483F    mov         byte ptr [ebp-5],al
 00484842    cmp         byte ptr [ebp-5],0
>00484846    je          00484852
 00484848    mov         eax,407AE4;user32.DefWindowProcA:Longint
 0048484D    cmp         eax,dword ptr [ebp-29]
>00484850    je          00484873
 00484852    cmp         byte ptr [ebp-5],0
>00484856    je          00484869
 00484858    mov         eax,[0055C664];gvar_0055C664
 0048485D    push        eax
 0048485E    mov         eax,[00540DCC];^_NF__E7C
 00484863    push        eax
 00484864    call        user32.UnregisterClassA
 00484869    push        540DA8
 0048486E    call        user32.RegisterClassA
 00484873    push        80000000
 00484878    push        0
 0048487A    push        0
 0048487C    push        0
 0048487E    push        0
 00484880    push        0
 00484882    push        0
 00484884    mov         eax,[0055C664];gvar_0055C664
 00484889    push        eax
 0048488A    push        0
 0048488C    mov         ecx,4848CC
 00484891    mov         edx,dword ptr ds:[540DCC];^_NF__E7C
 00484897    mov         eax,80
 0048489C    call        00408304
 004848A1    mov         dword ptr [ebp-4],eax
 004848A4    cmp         word ptr [ebp+0A],0
>004848A9    je          004848C2
 004848AB    push        dword ptr [ebp+0C]
 004848AE    push        dword ptr [ebp+8]
 004848B1    call        00484700
 004848B6    push        eax
 004848B7    push        0FC
 004848B9    mov         eax,dword ptr [ebp-4]
 004848BC    push        eax
 004848BD    call        user32.SetWindowLongA
 004848C2    mov         eax,dword ptr [ebp-4]
 004848C5    mov         esp,ebp
 004848C7    pop         ebp
 004848C8    ret         8
*}
end;

//00484814
{*function sub_00484814(?:?; ?:?; ?:?):?;
begin
 00484814    push        ebp
 00484815    mov         ebp,esp
 00484817    add         esp,0FFFFFFD0
 0048481A    mov         eax,[0055C664];gvar_0055C664
 0048481F    mov         [00540DB8],eax;gvar_00540DB8
 00484824    lea         eax,[ebp-2D]
 00484827    push        eax
 00484828    mov         eax,[00540DCC];^_NF__E7C
 0048482D    push        eax
 0048482E    mov         eax,[0055C664];gvar_0055C664
 00484833    push        eax
 00484834    call        user32.GetClassInfoA
 00484839    cmp         eax,1
 0048483C    sbb         eax,eax
 0048483E    inc         eax
 0048483F    mov         byte ptr [ebp-5],al
 00484842    cmp         byte ptr [ebp-5],0
>00484846    je          00484852
 00484848    mov         eax,407AE4;user32.DefWindowProcA:Longint
 0048484D    cmp         eax,dword ptr [ebp-29]
>00484850    je          00484873
 00484852    cmp         byte ptr [ebp-5],0
>00484856    je          00484869
 00484858    mov         eax,[0055C664];gvar_0055C664
 0048485D    push        eax
 0048485E    mov         eax,[00540DCC];^_NF__E7C
 00484863    push        eax
 00484864    call        user32.UnregisterClassA
 00484869    push        540DA8
 0048486E    call        user32.RegisterClassA
 00484873    push        80000000
 00484878    push        0
 0048487A    push        0
 0048487C    push        0
 0048487E    push        0
 00484880    push        0
 00484882    push        0
 00484884    mov         eax,[0055C664];gvar_0055C664
 00484889    push        eax
 0048488A    push        0
 0048488C    mov         ecx,4848CC
 00484891    mov         edx,dword ptr ds:[540DCC];^_NF__E7C
 00484897    mov         eax,80
 0048489C    call        00408304
 004848A1    mov         dword ptr [ebp-4],eax
 004848A4    cmp         word ptr [ebp+0A],0
>004848A9    je          004848C2
 004848AB    push        dword ptr [ebp+0C]
 004848AE    push        dword ptr [ebp+8]
 004848B1    call        00484700
 004848B6    push        eax
 004848B7    push        0FC
 004848B9    mov         eax,dword ptr [ebp-4]
 004848BC    push        eax
 004848BD    call        user32.SetWindowLongA
 004848C2    mov         eax,dword ptr [ebp-4]
 004848C5    mov         esp,ebp
 004848C7    pop         ebp
 004848C8    ret         8
end;*}

//004848D0
{*procedure sub_004848D0(?:?);
begin
 004848D0    push        ebp
 004848D1    mov         ebp,esp
 004848D3    add         esp,0FFFFFFF8
 004848D6    mov         dword ptr [ebp-4],eax
 004848D9    push        0FC
 004848DB    mov         eax,dword ptr [ebp-4]
 004848DE    push        eax
 004848DF    call        user32.GetWindowLongA
 004848E4    mov         dword ptr [ebp-8],eax
 004848E7    mov         eax,dword ptr [ebp-4]
 004848EA    push        eax
 004848EB    call        user32.DestroyWindow
 004848F0    mov         eax,407AE4;user32.DefWindowProcA:Longint
 004848F5    cmp         eax,dword ptr [ebp-8]
>004848F8    je          00484902
 004848FA    mov         eax,dword ptr [ebp-8]
 004848FD    call        004847E0
 00484902    pop         ecx
 00484903    pop         ecx
 00484904    pop         ebp
 00484905    ret
end;*}

Initialization
//004849B8
{*
 004849B8    push        ebp
 004849B9    mov         ebp,esp
 004849BB    xor         eax,eax
 004849BD    push        ebp
 004849BE    push        484A41
 004849C3    push        dword ptr fs:[eax]
 004849C6    mov         dword ptr fs:[eax],esp
 004849C9    sub         dword ptr ds:[55DAD4],1
>004849D0    jae         00484A33
 004849D2    call        InitThreadSynchronization
 004849D7    mov         eax,4846A8;ModuleUnload
 004849DC    call        AddModuleUnloadProc
 004849E1    mov         dl,1
 004849E3    mov         eax,[00466008];TMultiReadExclusiveWriteSynchronizer
 004849E8    call        TMultiReadExclusiveWriteSynchronizer.Create
 004849ED    mov         edx,eax
 004849EF    test        edx,edx
>004849F1    je          004849F6
 004849F3    sub         edx,0FFFFFFD4
 004849F6    mov         eax,55DAC8;gvar_0055DAC8:IReadWriteSync
 004849FB    call        @IntfCopy
 00484A00    mov         dl,1
 00484A02    mov         eax,[00476DEC];TRegGroups
 00484A07    call        TRegGroups.Create
 00484A0C    mov         [0055DADC],eax;gvar_0055DADC
 00484A11    mov         dl,1
 00484A13    mov         eax,[00475A24];TThreadList
 00484A18    call        TThreadList.Create
 00484A1D    mov         [0055DAD8],eax;gvar_0055DAD8
 00484A22    mov         dl,1
 00484A24    mov         eax,[00475A24];TThreadList
 00484A29    call        TThreadList.Create
 00484A2E    mov         [0055DAE4],eax;gvar_0055DAE4
 00484A33    xor         eax,eax
 00484A35    pop         edx
 00484A36    pop         ecx
 00484A37    pop         ecx
 00484A38    mov         dword ptr fs:[eax],edx
 00484A3B    push        484A48
 00484A40    ret
>00484A41    jmp         @HandleFinally
>00484A46    jmp         00484A40
 00484A48    pop         ebp
 00484A49    ret
*}
Finalization
//00484908
{*
 00484908    push        ebp
 00484909    mov         ebp,esp
 0048490B    xor         eax,eax
 0048490D    push        ebp
 0048490E    push        4849AC
 00484913    push        dword ptr fs:[eax]
 00484916    mov         dword ptr fs:[eax],esp
 00484919    inc         dword ptr ds:[55DAD4]
>0048491F    jne         0048499E
 00484921    mov         eax,[0055C664];gvar_0055C664
 00484926    call        UnRegisterModuleClasses
 0048492B    mov         eax,[0055DAC8];gvar_0055DAC8:IReadWriteSync
 00484930    mov         edx,dword ptr [eax]
 00484932    call        dword ptr [edx+14]
 00484935    call        FreeIntConstList
 0048493A    xor         edx,edx
 0048493C    xor         eax,eax
 0048493E    call        RemoveFixupReferences
 00484943    mov         eax,55DAE4;gvar_0055DAE4
 00484948    call        FreeAndNil
 0048494D    call        @GetTls
 00484952    lea         eax,[eax+214];{GlobalLists:TList}
 00484958    call        FreeAndNil
 0048495D    mov         eax,55DADC;gvar_0055DADC
 00484962    call        FreeAndNil
 00484967    mov         eax,55DAC8;gvar_0055DAC8:IReadWriteSync
 0048496C    call        @IntfClear
 00484971    mov         eax,4846A8;ModuleUnload
 00484976    call        RemoveModuleUnloadProc
 0048497B    mov         eax,540D84;gvar_00540D84:TList
 00484980    call        FreeAndNil
 00484985    call        DoneThreadSynchronization
 0048498A    mov         eax,55DAE0;gvar_0055DAE0
 0048498F    call        FreeAndNil
 00484994    mov         eax,55DAC8;gvar_0055DAC8:IReadWriteSync
 00484999    call        @IntfClear
 0048499E    xor         eax,eax
 004849A0    pop         edx
 004849A1    pop         ecx
 004849A2    pop         ecx
 004849A3    mov         dword ptr fs:[eax],edx
 004849A6    push        4849B3
 004849AB    ret
>004849AC    jmp         @HandleFinally
>004849B1    jmp         004849AB
 004849B3    pop         ebp
 004849B4    ret
*}
end.