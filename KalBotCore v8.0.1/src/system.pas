//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit system;

interface

uses
  SysUtils, Classes;

type
  Boolean = (False, True);
  TObject = class()
    function ClassType:TClass;//0040377C
    function ClassName:ShortString;//00403784
    function ClassNameIs(const Name:AnsiString):Boolean;//00403798
    function ClassParent:TClass;//004037C0
    function InstanceSize:Integer;//004037FC
    constructor Create;//00403804
    procedure Free;//00403834
    function InitInstance(Instance:Pointer):TObject;//00403840
    procedure CleanupInstance;//00403898
    function GetInterface(const IID:TGUID; var Obj:void ):Boolean;//004038E8
    function GetInterfaceEntry(const IID:TGUID):PInterfaceEntry;//0040397C
    function InheritsFrom(AClass:TClass):Boolean;//00403A60
    function MethodAddress(const Name:ShortString):Pointer;//00403AB8
    function MethodName(Address:Pointer):ShortString;//00403B08
    function FieldAddress(const Name:ShortString):Pointer;//00403B48
  end;
  TInterfacedObject = class(TObject)
  public
    FRefCount:Integer;//f4
    function _AddRef:Integer; stdcall;//00406748
    function _Release:Integer; stdcall;//0040675C
  end;
    function CloseHandle:Integer; stdcall;//0040122C
    function CreateFileA(dwDesiredAccess:Integer; dwShareMode:Integer; lpSecurityAttributes:Pointer; dwCreationDisposition:Integer; dwFlagsAndAttributes:Integer; hTemplateFile:Integer):Integer; stdcall;//00401234
    function GetFileType:DWORD; stdcall;//0040123C
    function GetFileSize(x:Integer):Integer; stdcall;//00401244
    function GetStdHandle:Integer; stdcall;//0040124C
    procedure RaiseException(dwExceptionFlags:DWORD; nNumberOfArguments:DWORD; lpArguments:PDWORD); stdcall;//00401254
    function ReadFile(var Buffer:void ; nNumberOfBytesToRead:Cardinal; var lpNumberOfBytesRead:Cardinal; lpOverlapped:Pointer):Integer; stdcall;//0040125C
    procedure RtlUnwind;//00401264
    function SetEndOfFile:LongBool; stdcall;//0040126C
    function SetFilePointer(Distance:Integer; DistanceHigh:Pointer; MoveMethod:Integer):Integer; stdcall;//00401274
    function UnhandledExceptionFilter:Longint; stdcall;//0040127C
    function WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Cardinal; var lpNumberOfBytesWritten:Cardinal; lpOverlapped:Pointer):Integer; stdcall;//00401284
    function CharNextA:PAnsiChar; stdcall;//0040128C
    function CreateThread(dwStackSize:DWORD; lpStartAddress:Pointer; lpParameter:Pointer; dwCreationFlags:DWORD; var lpThreadId:DWORD):THandle; stdcall;//00401294
    procedure ExitThread; stdcall;//0040129C
    procedure ExitProcess; stdcall;//004012A4
    function MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;//004012AC
    procedure FindClose;//004012B4
    function FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;//004012BC
    function FreeLibrary:LongBool; stdcall;//004012C4
    function GetCommandLineA:PAnsiChar;//004012CC
    function GetLastError:Integer;//004012D4
    function GetLocaleInfoA(LCType:DWORD; lpLCData:PAnsiChar; cchData:Integer):Integer; stdcall;//004012DC
    function GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;//004012E4
    function GetModuleHandleA:HMODULE; stdcall;//004012EC
    function GetProcAddress(lpProcName:PAnsiChar):Pointer; stdcall;//004012F4
    procedure GetStartupInfoA; stdcall;//004012FC
    function GetThreadLocale:Integer;//00401304
    function LoadLibraryExA(hFile:THandle; dwFlags:DWORD):HMODULE; stdcall;//0040130C
    function LoadStringA(uID:LongWord; lpBuffer:PAnsiChar; nBufferMax:Integer):Integer; stdcall;//00401314
    function lstrcpynA(lpString2:PAnsiChar; iMaxLength:Integer):PAnsiChar; stdcall;//0040131C
    function lstrlenA:Integer; stdcall;//00401324
    function MultiByteToWideChar(Flags:Integer; MBStr:PAnsiChar; MBCount:Integer; WCStr:PWideChar; WCCount:Integer):Integer; stdcall;//0040132C
    function RegCloseKey:Integer; stdcall;//00401334
    function RegOpenKeyExA(lpSubKey:PAnsiChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;//0040133C
    function RegQueryValueExA(lpValueName:PAnsiChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;//00401344
    function WideCharToMultiByte(dwFlags:DWORD; lpWideCharStr:PWideChar; cchWideChar:Integer; lpMultiByteStr:PAnsiChar; cchMultiByte:Integer; lpDefaultChar:PAnsiChar; lpUsedDefaultChar:PBOOL):Integer; stdcall;//0040134C
    function VirtualQuery(var lpBuffer:TMemInfo; dwLength:Integer):Integer; stdcall;//00401354
    function SysAllocStringLen(Len:Integer):PWideChar; stdcall;//0040135C
    function SysReAllocStringLen(psz:PWideChar; len:Integer):Integer; stdcall;//00401364
    procedure SysFreeString; stdcall;//0040136C
    function InterlockedIncrement:Integer; stdcall;//00401374
    function InterlockedDecrement:Integer;//0040137C
    function GetCurrentThreadId:Cardinal;//00401384
    function GetVersion:DWORD;//0040138C
    function QueryPerformanceCounter:LongBool; stdcall;//00401394
    function GetTickCount:Cardinal;//0040139C
    function GetCmdShow:Integer;//004013A4
    function LocalAlloc(size:Integer):Pointer; stdcall;//004013C8
    function LocalFree:Pointer; stdcall;//004013D0
    function VirtualAlloc(dwSize:DWORD; flAllocationType:DWORD; flProtect:DWORD):Pointer; stdcall;//004013D8
    function VirtualFree(dwSize:DWORD; dwFreeType:DWORD):LongBool; stdcall;//004013E0
    procedure InitializeCriticalSection; stdcall;//004013E8
    procedure EnterCriticalSection; stdcall;//004013F0
    procedure LeaveCriticalSection; stdcall;//004013F8
    procedure DeleteCriticalSection; stdcall;//00401400
    function GetBlockDesc:PBlockDesc;//00401408
    procedure MakeEmpty(bd:PBlockDesc);//00401458
    function AddBlockAfter(prev:PBlockDesc; const b:TBlock):Boolean;//00401460
    procedure DeleteBlock(bd:PBlockDesc);//00401490
    function MergeBlockAfter(prev:PBlockDesc; const b:TBlock):TBlock;//004014A8
    function RemoveBlock(bd:PBlockDesc; const b:TBlock):Boolean;//00401518
    function GetSpace(minSize:Integer):TBlock;//004015AC
    function GetSpaceAt(addr:PAnsiChar; minSize:Integer):TBlock;//00401610
    function FreeSpace(addr:Pointer; maxSize:Integer):TBlock;//00401688
    function Commit(addr:Pointer; minSize:Integer):TBlock;//00401740
    function Decommit(addr:Pointer; maxSize:Integer):TBlock;//004017D4
    function GetCommitted(minSize:Integer):TBlock;//00401854
    function GetCommittedAt(addr:PAnsiChar; minSize:Integer):TBlock;//004018E4
    function FreeCommitted(addr:PAnsiChar; maxSize:Integer):TBlock;//00401A08
    function InitAllocator:Boolean;//00401A94
    procedure UninitAllocator;//00401B58
    procedure DeleteFree(f:PFree);//00401C38
    function FindCommitted(addr:PAnsiChar):PBlockDesc;//00401C9C
    procedure FillBeforeGap(a:PAnsiChar; size:Integer);//00401CCC
    procedure InternalFreeMem(a:PAnsiChar);//00401CFC
    procedure FillAfterGap(a:PAnsiChar; size:Integer);//00401D20
    function FillerSizeBeforeGap(a:PAnsiChar):Integer;//00401D48
    function FillerSizeAfterGap(a:PAnsiChar):Integer;//00401DB8
    function DecommitFree(a:PAnsiChar; size:Integer):Boolean;//00401DF0
    procedure InsertFree(a:Pointer; size:Integer);//00401EA0
    procedure FreeCurAlloc;//00401F28
    function MergeCommit(b:TBlock):Boolean;//00401F74
    function NewCommit(minSize:Integer):Boolean;//00402000
    function NewCommitAt(addr:Pointer; minSize:Integer):Boolean;//0040202C
    function SearchSmallBlocks(size:Integer):PFree;//00402060
    function TryHarder(size:Integer):Pointer;//0040208C
    function SysGetMem(Size:Integer):Pointer;//00402180
    function SysFreeMem(P:Pointer):Integer;//00402310
    function ResizeInPlace(p:Pointer; newSize:Integer):Boolean;//004024B4
    function SysReallocMem(P:Pointer; Size:Integer):Pointer;//00402690
    function @GetMem(size:Integer):Pointer;//00402754
    function @FreeMem(p:Pointer):Integer;//00402774
    function @ReallocMem(var P:Pointer; NewSize:Integer):Pointer;//00402794
    procedure GetMemoryManager(var MemMgr:TMemoryManager);//004027E4
    function ExceptObject:TObject;//00402800
    function ExceptAddr:Pointer;//00402820
    function AcquireExceptionObject:Pointer;//00402840
    function RaiseList:Pointer;//00402874
    procedure RunErrorAt(ErrCode:Integer; ErrorAtAddr:Pointer);//00402880
    procedure ErrorAt(ErrorCode:Byte; ErrorAddr:Pointer);//0040288C
    procedure Error(errorCode:TRuntimeError);//004028D8
    procedure @_IOTest;//004028E4
    procedure SetInOutRes(NewValue:Integer);//00402904
    procedure @Copy(S:ShortString; Index:Integer; Count:Integer; Result:ShortString);//00402914
    function IOResult:Integer;//00402958
    procedure Move(const Source:void ; var Dest:void ; Count:Integer);//00402978
    function GetParamStr(P:PAnsiChar; var Param:AnsiString):PAnsiChar;//004029B8
    function ParamCount:Integer;//00402AA4
    function ParamStr(Index:Integer):String;//00402B04
    procedure Randomize;//00402B64
    function UpCase(Ch:Char):Char;//00402B8C
    procedure Set8087CW(NewCW:Word);//00402B98
    //function sub_00402BA8:?;//00402BA8
    procedure @COS;//00402BB0
    procedure @SIN;//00402BC0
    procedure @FRAC;//00402BD0
    procedure @ROUND;//00402BF4
    function @TRUNC(X:Extended):Int64;//00402C00
    procedure @AbstractError;//00402C24
    function OpenText(var t:TTextRec; Mode:Word):Integer;//00402C40
    function @RewritText(var T:TTextRec):Integer;//00402C98
    function TextIn(var t:TTextRec):Integer;//00402CA4
    function FileNOPProc(var t:void ):Integer;//00402CE0
    function TextOut(var t:TTextRec):Integer;//00402CE4
    function InternalClose(Handle:Integer):Boolean;//00402D20
    function TextClose(var t:TTextRec):Integer;//00402D30
    function TextOpen(var t:TTextRec):Integer;//00402D50
    function InternalFlush(var t:TTextRec; Func:TTextIOFunc):Integer;//00402EFC
    function Flush(var t:Text):Integer;//00402F44
    procedure @Flush(var F:TFileRec);//00402F50
    procedure @Close(var F:TFileRec);//00402F5C
    procedure @PStrNCpy(Dest:PShortString; Source:PShortString; MaxLen:Byte);//00402FB4
    procedure @PStrCmp(S1:PShortString; S2:PShortString);//00402FD0
    procedure @AStrCmp(S1:PShortString; S2:PShortString; Bytes:Integer);//00403054
    procedure @FillChar(var dst:Pointer; cnt:Integer; val:Char);//004030C4
    function @RandInt(Range:Integer):Integer;//004030E4
    function @ValLong(s:AnsiString; var code:Integer):Longint;//00403100
    function TryOpenForOutput(var t:TTextRec):Boolean;//004031D4
    function @WriteBytes(var t:TTextRec; const b:void ; cnt:Integer):Pointer;//00403218
    function @WriteSpaces(var t:TTextRec; cnt:Integer):Pointer;//0040326C
    procedure @WriteLn(var T:TTextRec);//004032E8
    procedure @_CToPasStr(Dest:PShortString; const Source:PAnsiChar);//00403330
    procedure @_CLenToPasStr(Dest:PShortString; const Source:PAnsiChar; MaxLen:Integer);//0040333C
    procedure @SetEq;//00403360
    procedure @SetUnion;//00403374
    procedure FPower10;//00403380
    procedure @Pow10;//00403388
    function GetKeyboardType:Integer; stdcall;//0040366C
    function @isNECWindows:Boolean;//00403674
    procedure @FpuMaskInit;//004036A4
    procedure @FpuInit;//00403768
    procedure @BoundErr;//00403774
    function NewInstance:TObject;//004037CC
    procedure FreeInstance;//004037E8
    destructor Destroy;//00403824
    function InvokeImplGetter(Self:TObject; ImplGetter:Cardinal):IInterface;//004038B8
    function @IsClass(Child:TObject; Parent:TClass):Boolean;//004039C0
    function @AsClass(child:TObject; parent:TClass):TObject;//004039E4
    procedure GetDynaMethod;//00403A00
    procedure @CallDynaInst;//00403A30
    procedure @FindDynaInst;//00403A48
    //function sub_00403A74(?:Longint):?;//00403A74
    //function SafeCallException:?;//00403A7C
    procedure DefaultHandler;//00403A84
    procedure AfterConstruction;//00403A88
    procedure BeforeDestruction;//00403A8C
    procedure Dispatch(var Message:void );//00403A90
    function @ClassCreate(AClass:TClass; Alloc:Boolean):TObject;//00403B98
    procedure @ClassDestroy(Instance:TObject);//00403BE8
    function @AfterConstruction(Instance:TObject):TObject;//00403BF0
    function @BeforeDestruction(Instance:TObject; OuterMost:Shortint):TObject;//00403C00
    procedure NotifyReRaise;//00403C10
    procedure NotifyNonDelphiException;//00403C2C
    procedure NotifyExcept;//00403C50
    procedure NotifyOnExcept;//00403C68
    procedure NotifyAnyExcept;//00403C7C
    procedure CheckJmp;//00403C90
    procedure NotifyExceptFinally;//00403CB0
    procedure NotifyTerminate;//00403CD8
    procedure NotifyUnhandled;//00403CF4
    procedure @HandleAnyException;//00403D14
    procedure @HandleOnException;//00403E40
    procedure @HandleFinally;//00403FC8
    procedure @HandleAutoException;//00404000
    procedure @RaiseExcept;//004040C4
    procedure @RaiseAgain;//004040EC
    procedure @DoneExcept;//00404140
    procedure @TryFinallyExit;//00404170
    procedure MapToRunError(P:PExceptionRecord); stdcall;//00404188
    procedure @ExceptionHandler;//00404228
    procedure SetExceptionHandler;//004042C8
    procedure UnsetExceptionHandler;//004042E8
    procedure FinalizeUnits;//00404310
    procedure InitUnits;//00404370
    procedure @StartExe(InitTable:PackageInfo; Module:PLibModule);//004043D0
    procedure @InitResStrings;//00404410
    procedure @InitResStringImports;//00404434
    procedure @InitImports;//0040445C
    procedure MakeErrorMessage;//00404480
    procedure ExitDll;//004044DC
    procedure WriteErrorMessage;//0040450C
    procedure @Halt0;//00404598
    procedure @Halt(Code:Integer);//00404670
    procedure @RunError(errorCode:Byte);//0040467C
    function ThreadWrapper(Parameter:Pointer):Integer; stdcall;//00404688
    function BeginThread(SecurityAttributes:Pointer; StackSize:Cardinal; ThreadFunc:TThreadFunc; Parameter:Pointer; CreationFlags:Cardinal; var ThreadId:Cardinal):Integer;//004046C0
    procedure @LStrClr(var S:AnsiString);//0040470C
    procedure @LStrArrayClr(var StrArray:Pointer; Count:Integer);//00404730
    procedure @LStrAsg(var Dest:AnsiString; Source:AnsiString);//00404760
    procedure @LStrLAsg(var Dest:AnsiString; const Source:AnsiString);//004047A4
    function @NewAnsiString(length:Integer):Pointer;//004047D0
    procedure @LStrFromPCharLen(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);//004047FC
    function CharFromWChar(CharDest:PAnsiChar; DestBytes:Integer; const WCharSource:PWideChar; SrcChars:Integer):Integer;//0040482C
    function WCharFromChar(WCharDest:PWideChar; DestChars:Integer; const CharSource:PAnsiChar; SrcBytes:Integer):Integer;//0040484C
    procedure @LStrFromPWCharLen(var Dest:AnsiString; Source:PWideChar; Length:Integer);//00404868
    procedure @LStrFromChar(var Dest:AnsiString; Source:AnsiChar);//004048F4
    procedure @LStrFromWChar(var Dest:AnsiString; Source:WideChar);//00404904
    procedure @LStrFromPChar(var Dest:AnsiString; Source:PAnsiChar);//00404914
    procedure @LStrFromPWChar(var Dest:AnsiString; Source:PWideChar);//00404944
    procedure @LStrFromString(var Dest:AnsiString; const Source:ShortString);//00404980
    procedure @LStrFromArray(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);//0040498C
    procedure @LStrFromWStr(var Dest:AnsiString; const Source:WideString);//004049A4
    procedure @LStrToString(var Dest:ShortString; const Source:AnsiString; MaxLen:Integer);//004049B8
    function @DynArrayLength(Arr:Pointer):Longint;//004049DC
    procedure @LStrCat(var Dest:AnsiString; Source:AnsiString);//004049E4
    procedure @LStrCat3(var Dest:AnsiString; Source1:AnsiString; Source2:AnsiString);//00404A28
    procedure @LStrCatN(var Dest:AnsiString; ArgCnt:Integer);//00404A9C
    //function @LStrCmp(Left:AnsiString; Right:AnsiString):?;//00404B28
    function @LStrAddRef(var S:AnsiString):Pointer;//00404BCC
    function @LStrToPChar(S:AnsiString):PChar;//00404BDC
    function InternalUniqueString(var str:void ):Pointer;//00404BE8
    procedure UniqueString(var str:AnsiString);//00404C2C
    //function sub_00404C34:?;//00404C34
    function @LStrCopy(const S:AnsiString; Index:Integer; Count:Integer):AnsiString;//00404C40
    procedure @LStrDelete(var S:AnsiString; Index:Integer; Count:Integer);//00404C80
    procedure @LStrInsert(const Source:AnsiString; var S:AnsiString; Index:Integer);//00404CC8
    function @LStrPos(const Substr:AnsiString; const S:AnsiString):Integer;//00404D24
    procedure @LStrSetLength(var S:AnsiString; NewLen:Integer);//00404D6C
    procedure @LStrOfChar(C:Char; Count:Integer; var Result:AnsiString);//00404DD0
    procedure @Write0Bool(var T:TTextRec; Val:Boolean);//00404DFC
    procedure @WriteBool(var T:TTextRec; Val:Boolean; Width:Longint);//00404E04
    procedure @Write0CString(var T:TTextRec; S:PAnsiChar);//00404E24
    procedure @WriteCString(var T:TTextRec; S:PAnsiChar; Width:Longint);//00404E2C
    procedure WStrError;//00404E98
    function @NewWideString(CharLength:Integer):Pointer;//00404EA0
    procedure WStrSet(var S:WideString; P:PWideChar);//00404EB8
    procedure @WStrClr(var S:WideString);//00404EC8
    procedure @WStrArrayClr(var StrArray:Pointer; Count:Integer);//00404EE0
    procedure @WStrAsg(var Dest:WideString; Source:WideString);//00404F04
    procedure sub_00404F28;//00404F28
    procedure @WStrFromPCharLen(var Dest:WideString; Source:PAnsiChar; Length:Integer);//00404F30
    procedure @WStrFromPWCharLen(var Dest:WideString; Source:PWideChar; Length:Integer);//00404FBC
    procedure @WStrFromWChar(var Dest:WideString; Source:WideChar);//00404FE0
    procedure @WStrFromPWChar(var Dest:WideString; Source:PWideChar);//00404FF0
    procedure @WStrFromString(var Dest:WideString; const Source:ShortString);//0040502C
    procedure @WStrFromArray(var Dest:WideString; Source:PAnsiChar; Length:Integer);//00405038
    procedure @WStrFromWArray(var Dest:WideString; Source:PWideChar; Length:Integer);//00405050
    procedure @WStrFromLStr(var Dest:WideString; const Source:AnsiString);//0040506C
    function @WStrToPWChar(S:WideString):PWideChar;//0040507C
    function @WStrLen(S:WideString):Integer;//0040508C
    procedure @WStrCat(var Dest:WideString; Source:WideString);//00405098
    procedure @WStrCat3(var Dest:WideString; Source1:WideString; Source2:WideString);//004050F8
    procedure @WStrCatN(var Dest:WideString; ArgCnt:Integer);//0040515C
    //function @WStrCmp(Left:WideString; Right:WideString):?;//004051A4
    function @WStrCopy(const S:WideString; Index:Integer; Count:Integer):WideString;//00405228
    procedure @WStrDelete(var S:WideString; Index:Integer; Count:Integer);//00405274
    procedure @WStrInsert(const Source:WideString; var S:WideString; Index:Integer);//00405304
    procedure @WStrSetLength(var S:WideString; NewLen:Integer);//004053A0
    function @WStrAddRef(var S:WideString):Pointer;//004053E4
    procedure @AddRefRecord;//00405404
    procedure @AddRefArray;//00405434
    procedure @AddRef;//004054C8
    procedure @FinalizeRecord(P:Pointer; typeInfo:Pointer);//004054D4
    procedure @VarClr(var v:TVarData);//00405508
    procedure @FinalizeArray(p:Pointer; typeInfo:Pointer; elemCount:Cardinal);//00405520
    procedure @Finalize(p:Pointer; typeInfo:Pointer);//0040560C
    procedure @InitializeRecord(p:Pointer; typeInfo:Pointer);//00405618
    procedure @VarAddRef(var v:TVarData);//00405648
    procedure @InitializeArray(p:Pointer; typeInfo:Pointer; elemCount:Cardinal);//00405660
    procedure @VarCopy(var Dest:TVarData; const Src:TVarData);//00405720
    procedure @CopyRecord(Dest:Pointer; Source:Pointer; TypeInfo:Pointer);//00405738
    procedure @CopyArray(Dest:Pointer; Source:Pointer; TypeInfo:Pointer; Cnt:Integer);//00405854
    //function sub_00405948:?;//00405948
    procedure @Dispose(p:Pointer; typeInfo:Pointer);//0040595C
    procedure @DispCallByIDError;//0040596C
    procedure @_llmul;//00405974
    procedure @_lldiv;//00405998
    procedure @_llmod;//00405A14
    procedure @_llshl;//00405A90
    function @ValInt64(const s:AnsiString; var code:Integer):Int64;//00405AB0
    function @LStrLen(S:AnsiString):Integer;//00405CE0
    //function sub_00405CE8:?;//00405CE8
    procedure CopyArray(dest:Pointer; source:Pointer; typeInfo:Pointer; cnt:Integer);//00405CF0
    procedure FinalizeArray(p:Pointer; typeInfo:Pointer; cnt:Integer);//00405D00
    procedure DynArrayClear(var arr:Pointer; typeInfo:PDynArrayTypeInfo);//00405D08
    procedure DynArraySetLength(var arr:Pointer; typeInfo:PDynArrayTypeInfo; dimCnt:Longint; lenVec:PLongint);//00405D10
    procedure @DynArraySetLength(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo; DimCnt:Longint; LengthVec:Longint);//00405E9C
    procedure @DynArrayCopy(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; var Result:Pointer);//00405EA8
    procedure @DynArrayCopyRange(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; Index:Integer; Count:Integer; var Result:Pointer);//00405EC8
    procedure @DynArrayClear(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo);//00405FBC
    procedure @DynArrayAsg(var Dest:Pointer; Source:Pointer; TypeInfo:PDynArrayTypeInfo);//00405FF8
    procedure @DynArrayAddRef(Arr:Pointer);//00406020
    function FindHInstance(Address:Pointer):Cardinal;//0040602C
    procedure sub_00406054;//00406054
    function DelayLoadResourceModule(Module:PLibModule):Cardinal;//0040605C
    function FindResourceHInstance(Instance:Cardinal):Cardinal;//004060A4
    function FindBS(Current:PAnsiChar):PAnsiChar;//004060CC
    function ToLongPath(AFileName:PAnsiChar; BufSize:Integer):PAnsiChar;//004060E0
    function LoadResourceModule(ModuleName:PAnsiChar; CheckOwner:Boolean):Cardinal;//00406298
    procedure AddModuleUnloadProc(Proc:TModuleUnloadProc);//00406508
    procedure RemoveModuleUnloadProc(Proc:TModuleUnloadProc);//00406510
    procedure AddModuleUnloadProc(Proc:TModuleUnloadProcLW);//00406518
    procedure RemoveModuleUnloadProc(Proc:TModuleUnloadProcLW);//00406538
    procedure NotifyModuleUnload(HInstance:Cardinal);//00406598
    procedure RegisterModule(LibModule:PLibModule);//004065F4
    procedure UnregisterModule(LibModule:PLibModule);//00406604
    function @IntfClear(var Dest:IInterface):Pointer;//00406674
    procedure @IntfCopy(var Dest:IInterface; const Source:IInterface);//0040668C
    procedure @IntfCast(var Dest:IInterface; const Source:IInterface; const IID:TGUID);//004066B8
    procedure @IntfAddRef(const Dest:IInterface);//004066E8
    procedure AfterConstruction;//004066F4
    procedure BeforeDestruction;//00406700
    function NewInstance:TObject;//00406710
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;//00406720
    function FreeMemory(P:Pointer):Integer; cdecl;//00406784
    function UnicodeToUtf8(Dest:PAnsiChar; MaxDestBytes:Cardinal; Source:PWideChar; SourceChars:Cardinal):Cardinal;//0040679C
    function Utf8ToUnicode(Dest:PWideChar; MaxDestChars:Cardinal; Source:PAnsiChar; SourceBytes:Cardinal):Cardinal;//00406878
    function UTF8Encode(const WS:WideString):UTF8String;//004069B0
    //procedure sub_00406A5C(?:AnsiString; ?:?);//00406A5C
    function AnsiToUtf8(const S:AnsiString):UTF8String;//00406B00
    function LoadResString(ResStringRec:PResStringRec):String;//00406B50
    function LCIDToCodePage(ALcid:Cardinal):Integer;//00406BA8

implementation

//0040122C
function kernel32.CloseHandle:Integer; stdcall;
begin
{*
 0040122C    jmp         dword ptr ds:[55F280]
*}
end;

//00401234
function kernel32.CreateFileA(dwDesiredAccess:Integer; dwShareMode:Integer; lpSecurityAttributes:Pointer; dwCreationDisposition:Integer; dwFlagsAndAttributes:Integer; hTemplateFile:Integer):Integer; stdcall;
begin
{*
 00401234    jmp         dword ptr ds:[55F27C]
*}
end;

//0040123C
function kernel32.GetFileType:DWORD; stdcall;
begin
{*
 0040123C    jmp         dword ptr ds:[55F278]
*}
end;

//00401244
function kernel32.GetFileSize(x:Integer):Integer; stdcall;
begin
{*
 00401244    jmp         dword ptr ds:[55F274]
*}
end;

//0040124C
function kernel32.GetStdHandle:Integer; stdcall;
begin
{*
 0040124C    jmp         dword ptr ds:[55F270]
*}
end;

//00401254
procedure kernel32.RaiseException(dwExceptionFlags:DWORD; nNumberOfArguments:DWORD; lpArguments:PDWORD); stdcall;
begin
{*
 00401254    jmp         dword ptr ds:[55F26C]
*}
end;

//0040125C
function kernel32.ReadFile(var Buffer:void ; nNumberOfBytesToRead:Cardinal; var lpNumberOfBytesRead:Cardinal; lpOverlapped:Pointer):Integer; stdcall;
begin
{*
 0040125C    jmp         dword ptr ds:[55F268]
*}
end;

//00401264
procedure kernel32.RtlUnwind;
begin
{*
 00401264    jmp         dword ptr ds:[55F264]
*}
end;

//0040126C
function kernel32.SetEndOfFile:LongBool; stdcall;
begin
{*
 0040126C    jmp         dword ptr ds:[55F260]
*}
end;

//00401274
function kernel32.SetFilePointer(Distance:Integer; DistanceHigh:Pointer; MoveMethod:Integer):Integer; stdcall;
begin
{*
 00401274    jmp         dword ptr ds:[55F25C]
*}
end;

//0040127C
function kernel32.UnhandledExceptionFilter:Longint; stdcall;
begin
{*
 0040127C    jmp         dword ptr ds:[55F258]
*}
end;

//00401284
function kernel32.WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Cardinal; var lpNumberOfBytesWritten:Cardinal; lpOverlapped:Pointer):Integer; stdcall;
begin
{*
 00401284    jmp         dword ptr ds:[55F254]
*}
end;

//0040128C
function user32.CharNextA:PAnsiChar; stdcall;
begin
{*
 0040128C    jmp         dword ptr ds:[55F294]
*}
end;

//00401294
function kernel32.CreateThread(dwStackSize:DWORD; lpStartAddress:Pointer; lpParameter:Pointer; dwCreationFlags:DWORD; var lpThreadId:DWORD):THandle; stdcall;
begin
{*
 00401294    jmp         dword ptr ds:[55F250]
*}
end;

//0040129C
procedure kernel32.ExitThread; stdcall;
begin
{*
 0040129C    jmp         dword ptr ds:[55F24C]
*}
end;

//004012A4
procedure kernel32.ExitProcess; stdcall;
begin
{*
 004012A4    jmp         dword ptr ds:[55F248]
*}
end;

//004012AC
function user32.MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;
begin
{*
 004012AC    jmp         dword ptr ds:[55F290]
*}
end;

//004012B4
procedure kernel32.FindClose;
begin
{*
 004012B4    jmp         dword ptr ds:[55F244]
*}
end;

//004012BC
function kernel32.FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;
begin
{*
 004012BC    jmp         dword ptr ds:[55F240]
*}
end;

//004012C4
function kernel32.FreeLibrary:LongBool; stdcall;
begin
{*
 004012C4    jmp         dword ptr ds:[55F23C]
*}
end;

//004012CC
function kernel32.GetCommandLineA:PAnsiChar;
begin
{*
 004012CC    jmp         dword ptr ds:[55F238]
*}
end;

//004012D4
function kernel32.GetLastError:Integer;
begin
{*
 004012D4    jmp         dword ptr ds:[55F234]
*}
end;

//004012DC
function kernel32.GetLocaleInfoA(LCType:DWORD; lpLCData:PAnsiChar; cchData:Integer):Integer; stdcall;
begin
{*
 004012DC    jmp         dword ptr ds:[55F230]
*}
end;

//004012E4
function kernel32.GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;
begin
{*
 004012E4    jmp         dword ptr ds:[55F22C]
*}
end;

//004012EC
function kernel32.GetModuleHandleA:HMODULE; stdcall;
begin
{*
 004012EC    jmp         dword ptr ds:[55F228]
*}
end;

//004012F4
function kernel32.GetProcAddress(lpProcName:PAnsiChar):Pointer; stdcall;
begin
{*
 004012F4    jmp         dword ptr ds:[55F224]
*}
end;

//004012FC
procedure kernel32.GetStartupInfoA; stdcall;
begin
{*
 004012FC    jmp         dword ptr ds:[55F220]
*}
end;

//00401304
function kernel32.GetThreadLocale:Integer;
begin
{*
 00401304    jmp         dword ptr ds:[55F21C]
*}
end;

//0040130C
function kernel32.LoadLibraryExA(hFile:THandle; dwFlags:DWORD):HMODULE; stdcall;
begin
{*
 0040130C    jmp         dword ptr ds:[55F218]
*}
end;

//00401314
function user32.LoadStringA(uID:LongWord; lpBuffer:PAnsiChar; nBufferMax:Integer):Integer; stdcall;
begin
{*
 00401314    jmp         dword ptr ds:[55F28C]
*}
end;

//0040131C
function kernel32.lstrcpynA(lpString2:PAnsiChar; iMaxLength:Integer):PAnsiChar; stdcall;
begin
{*
 0040131C    jmp         dword ptr ds:[55F214]
*}
end;

//00401324
function kernel32.lstrlenA:Integer; stdcall;
begin
{*
 00401324    jmp         dword ptr ds:[55F210]
*}
end;

//0040132C
function kernel32.MultiByteToWideChar(Flags:Integer; MBStr:PAnsiChar; MBCount:Integer; WCStr:PWideChar; WCCount:Integer):Integer; stdcall;
begin
{*
 0040132C    jmp         dword ptr ds:[55F20C]
*}
end;

//00401334
function advapi32.RegCloseKey:Integer; stdcall;
begin
{*
 00401334    jmp         dword ptr ds:[55F2A4]
*}
end;

//0040133C
function advapi32.RegOpenKeyExA(lpSubKey:PAnsiChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;
begin
{*
 0040133C    jmp         dword ptr ds:[55F2A0]
*}
end;

//00401344
function advapi32.RegQueryValueExA(lpValueName:PAnsiChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;
begin
{*
 00401344    jmp         dword ptr ds:[55F29C]
*}
end;

//0040134C
function kernel32.WideCharToMultiByte(dwFlags:DWORD; lpWideCharStr:PWideChar; cchWideChar:Integer; lpMultiByteStr:PAnsiChar; cchMultiByte:Integer; lpDefaultChar:PAnsiChar; lpUsedDefaultChar:PBOOL):Integer; stdcall;
begin
{*
 0040134C    jmp         dword ptr ds:[55F208]
*}
end;

//00401354
function kernel32.VirtualQuery(var lpBuffer:TMemInfo; dwLength:Integer):Integer; stdcall;
begin
{*
 00401354    jmp         dword ptr ds:[55F204]
*}
end;

//0040135C
function oleaut32.SysAllocStringLen(Len:Integer):PWideChar; stdcall;
begin
{*
 0040135C    jmp         dword ptr ds:[55F2B4]
*}
end;

//00401364
function oleaut32.SysReAllocStringLen(psz:PWideChar; len:Integer):Integer; stdcall;
begin
{*
 00401364    jmp         dword ptr ds:[55F2B0]
*}
end;

//0040136C
procedure oleaut32.SysFreeString; stdcall;
begin
{*
 0040136C    jmp         dword ptr ds:[55F2AC]
*}
end;

//00401374
function kernel32.InterlockedIncrement:Integer; stdcall;
begin
{*
 00401374    jmp         dword ptr ds:[55F200]
*}
end;

//0040137C
function kernel32.InterlockedDecrement:Integer;
begin
{*
 0040137C    jmp         dword ptr ds:[55F1FC]
*}
end;

//00401384
function kernel32.GetCurrentThreadId:Cardinal;
begin
{*
 00401384    jmp         dword ptr ds:[55F1F8]
*}
end;

//0040138C
function kernel32.GetVersion:DWORD;
begin
{*
 0040138C    jmp         dword ptr ds:[55F1F4]
*}
end;

//00401394
function kernel32.QueryPerformanceCounter:LongBool; stdcall;
begin
{*
 00401394    jmp         dword ptr ds:[55F1F0]
*}
end;

//0040139C
function kernel32.GetTickCount:Cardinal;
begin
{*
 0040139C    jmp         dword ptr ds:[55F1EC]
*}
end;

//004013A4
function GetCmdShow:Integer;
begin
{*
 004013A4    push        ebx
 004013A5    add         esp,0FFFFFFBC
 004013A8    mov         ebx,0A
 004013AD    push        esp
 004013AE    call        kernel32.GetStartupInfoA
 004013B3    test        byte ptr [esp+2C],1
>004013B8    je          004013BF
 004013BA    movzx       ebx,word ptr [esp+30]
 004013BF    mov         eax,ebx
 004013C1    add         esp,44
 004013C4    pop         ebx
 004013C5    ret
*}
end;

//004013C8
function kernel32.LocalAlloc(size:Integer):Pointer; stdcall;
begin
{*
 004013C8    jmp         dword ptr ds:[55F1E8]
*}
end;

//004013D0
function kernel32.LocalFree:Pointer; stdcall;
begin
{*
 004013D0    jmp         dword ptr ds:[55F1E4]
*}
end;

//004013D8
function kernel32.VirtualAlloc(dwSize:DWORD; flAllocationType:DWORD; flProtect:DWORD):Pointer; stdcall;
begin
{*
 004013D8    jmp         dword ptr ds:[55F1E0]
*}
end;

//004013E0
function kernel32.VirtualFree(dwSize:DWORD; dwFreeType:DWORD):LongBool; stdcall;
begin
{*
 004013E0    jmp         dword ptr ds:[55F1DC]
*}
end;

//004013E8
procedure kernel32.InitializeCriticalSection; stdcall;
begin
{*
 004013E8    jmp         dword ptr ds:[55F1D8]
*}
end;

//004013F0
procedure kernel32.EnterCriticalSection; stdcall;
begin
{*
 004013F0    jmp         dword ptr ds:[55F1D4]
*}
end;

//004013F8
procedure kernel32.LeaveCriticalSection; stdcall;
begin
{*
 004013F8    jmp         dword ptr ds:[55F1D0]
*}
end;

//00401400
procedure kernel32.DeleteCriticalSection; stdcall;
begin
{*
 00401400    jmp         dword ptr ds:[55F1CC]
*}
end;

//00401408
function GetBlockDesc:PBlockDesc;
begin
{*
 00401408    push        ebx
 00401409    push        esi
 0040140A    mov         esi,55C5E4
 0040140F    cmp         dword ptr [esi],0
>00401412    jne         0040144E
 00401414    push        644
 00401419    push        0
 0040141B    call        kernel32.LocalAlloc
 00401420    mov         ecx,eax
 00401422    test        ecx,ecx
>00401424    jne         0040142B
 00401426    xor         eax,eax
 00401428    pop         esi
 00401429    pop         ebx
 0040142A    ret
 0040142B    mov         eax,[0055C5E0]
 00401430    mov         dword ptr [ecx],eax
 00401432    mov         dword ptr ds:[55C5E0],ecx
 00401438    xor         edx,edx
 0040143A    mov         eax,edx
 0040143C    add         eax,eax
 0040143E    lea         eax,[ecx+eax*8+4]
 00401442    mov         ebx,dword ptr [esi]
 00401444    mov         dword ptr [eax],ebx
 00401446    mov         dword ptr [esi],eax
 00401448    inc         edx
 00401449    cmp         edx,64
>0040144C    jne         0040143A
 0040144E    mov         eax,dword ptr [esi]
 00401450    mov         edx,dword ptr [eax]
 00401452    mov         dword ptr [esi],edx
 00401454    pop         esi
 00401455    pop         ebx
 00401456    ret
*}
end;

//00401458
procedure MakeEmpty(bd:PBlockDesc);
begin
{*
 00401458    mov         dword ptr [eax],eax
 0040145A    mov         dword ptr [eax+4],eax
 0040145D    ret
*}
end;

//00401460
function AddBlockAfter(prev:PBlockDesc; const b:TBlock):Boolean;
begin
{*
 00401460    push        ebx
 00401461    push        esi
 00401462    mov         esi,edx
 00401464    mov         ebx,eax
 00401466    call        GetBlockDesc
 0040146B    test        eax,eax
>0040146D    jne         00401474
 0040146F    xor         eax,eax
 00401471    pop         esi
 00401472    pop         ebx
 00401473    ret
 00401474    mov         edx,dword ptr [esi]
 00401476    mov         dword ptr [eax+8],edx
 00401479    mov         edx,dword ptr [esi+4]
 0040147C    mov         dword ptr [eax+0C],edx
 0040147F    mov         edx,dword ptr [ebx]
 00401481    mov         dword ptr [eax],edx
 00401483    mov         dword ptr [eax+4],ebx
 00401486    mov         dword ptr [edx+4],eax
 00401489    mov         dword ptr [ebx],eax
 0040148B    mov         al,1
 0040148D    pop         esi
 0040148E    pop         ebx
 0040148F    ret
*}
end;

//00401490
procedure DeleteBlock(bd:PBlockDesc);
begin
{*
 00401490    mov         edx,dword ptr [eax+4]
 00401493    mov         ecx,dword ptr [eax]
 00401495    mov         dword ptr [edx],ecx
 00401497    mov         dword ptr [ecx+4],edx
 0040149A    mov         edx,dword ptr ds:[55C5E4]
 004014A0    mov         dword ptr [eax],edx
 004014A2    mov         [0055C5E4],eax
 004014A7    ret
*}
end;

//004014A8
function MergeBlockAfter(prev:PBlockDesc; const b:TBlock):TBlock;
begin
{*
 004014A8    push        ebx
 004014A9    push        esi
 004014AA    push        edi
 004014AB    push        ebp
 004014AC    push        ecx
 004014AD    mov         esi,ecx
 004014AF    mov         dword ptr [esp],edx
 004014B2    mov         ebp,eax
 004014B4    mov         ebx,dword ptr [ebp]
 004014B7    mov         eax,dword ptr [esp]
 004014BA    mov         edx,dword ptr [eax]
 004014BC    mov         dword ptr [esi],edx
 004014BE    mov         edx,dword ptr [eax+4]
 004014C1    mov         dword ptr [esi+4],edx
 004014C4    mov         edi,dword ptr [ebx]
 004014C6    mov         eax,dword ptr [esi]
 004014C8    mov         edx,dword ptr [ebx+8]
 004014CB    add         edx,dword ptr [ebx+0C]
 004014CE    cmp         eax,edx
>004014D0    jne         004014E6
 004014D2    mov         eax,ebx
 004014D4    call        DeleteBlock
 004014D9    mov         eax,dword ptr [ebx+8]
 004014DC    mov         dword ptr [esi],eax
 004014DE    mov         eax,dword ptr [ebx+0C]
 004014E1    add         dword ptr [esi+4],eax
>004014E4    jmp         004014FB
 004014E6    add         eax,dword ptr [esi+4]
 004014E9    cmp         eax,dword ptr [ebx+8]
>004014EC    jne         004014FB
 004014EE    mov         eax,ebx
 004014F0    call        DeleteBlock
 004014F5    mov         eax,dword ptr [ebx+0C]
 004014F8    add         dword ptr [esi+4],eax
 004014FB    mov         ebx,edi
 004014FD    cmp         ebp,ebx
>004014FF    jne         004014C4
 00401501    mov         edx,esi
 00401503    mov         eax,ebp
 00401505    call        AddBlockAfter
 0040150A    test        al,al
>0040150C    jne         00401512
 0040150E    xor         eax,eax
 00401510    mov         dword ptr [esi],eax
 00401512    pop         edx
 00401513    pop         ebp
 00401514    pop         edi
 00401515    pop         esi
 00401516    pop         ebx
 00401517    ret
*}
end;

//00401518
function RemoveBlock(bd:PBlockDesc; const b:TBlock):Boolean;
begin
{*
 00401518    push        ebx
 00401519    push        esi
 0040151A    push        edi
 0040151B    push        ebp
 0040151C    add         esp,0FFFFFFF8
 0040151F    mov         ebx,eax
 00401521    mov         edi,ebx
 00401523    mov         esi,dword ptr [edx]
 00401525    mov         eax,dword ptr [ebx+8]
 00401528    cmp         esi,eax
>0040152A    jb          0040159C
 0040152C    mov         ecx,esi
 0040152E    add         ecx,dword ptr [edx+4]
 00401531    mov         ebp,eax
 00401533    add         ebp,dword ptr [ebx+0C]
 00401536    cmp         ecx,ebp
>00401538    ja          0040159C
 0040153A    cmp         esi,eax
>0040153C    jne         00401559
 0040153E    mov         eax,dword ptr [edx+4]
 00401541    add         dword ptr [ebx+8],eax
 00401544    mov         eax,dword ptr [edx+4]
 00401547    sub         dword ptr [ebx+0C],eax
 0040154A    cmp         dword ptr [ebx+0C],0
>0040154E    jne         00401598
 00401550    mov         eax,ebx
 00401552    call        DeleteBlock
>00401557    jmp         00401598
 00401559    mov         ecx,esi
 0040155B    mov         edi,dword ptr [edx+4]
 0040155E    add         ecx,edi
 00401560    mov         ebp,eax
 00401562    add         ebp,dword ptr [ebx+0C]
 00401565    cmp         ecx,ebp
>00401567    jne         0040156E
 00401569    sub         dword ptr [ebx+0C],edi
>0040156C    jmp         00401598
 0040156E    mov         ecx,dword ptr [edx]
 00401570    add         ecx,dword ptr [edx+4]
 00401573    mov         dword ptr [esp],ecx
 00401576    mov         edi,dword ptr [ebx+8]
 00401579    add         edi,dword ptr [ebx+0C]
 0040157C    sub         edi,ecx
 0040157E    mov         dword ptr [esp+4],edi
 00401582    sub         esi,eax
 00401584    mov         dword ptr [ebx+0C],esi
 00401587    mov         edx,esp
 00401589    mov         eax,ebx
 0040158B    call        AddBlockAfter
 00401590    test        al,al
>00401592    jne         00401598
 00401594    xor         eax,eax
>00401596    jmp         004015A4
 00401598    mov         al,1
>0040159A    jmp         004015A4
 0040159C    mov         ebx,dword ptr [ebx]
 0040159E    cmp         edi,ebx
>004015A0    jne         00401523
 004015A2    xor         eax,eax
 004015A4    pop         ecx
 004015A5    pop         edx
 004015A6    pop         ebp
 004015A7    pop         edi
 004015A8    pop         esi
 004015A9    pop         ebx
 004015AA    ret
*}
end;

//004015AC
function GetSpace(minSize:Integer):TBlock;
begin
{*
 004015AC    push        ebx
 004015AD    push        esi
 004015AE    push        edi
 004015AF    mov         ebx,edx
 004015B1    mov         esi,eax
 004015B3    cmp         esi,100000
>004015B9    jge         004015C2
 004015BB    mov         esi,100000
>004015C0    jmp         004015CE
 004015C2    add         esi,0FFFF
 004015C8    and         esi,0FFFF0000
 004015CE    mov         dword ptr [ebx+4],esi
 004015D1    push        1
 004015D3    push        2000
 004015D8    push        esi
 004015D9    push        0
 004015DB    call        kernel32.VirtualAlloc
 004015E0    mov         edi,eax
 004015E2    mov         dword ptr [ebx],edi
 004015E4    test        edi,edi
>004015E6    je          0040160B
 004015E8    mov         edx,ebx
 004015EA    mov         eax,55C5E8
 004015EF    call        AddBlockAfter
 004015F4    test        al,al
>004015F6    jne         0040160B
 004015F8    push        8000
 004015FD    push        0
 004015FF    mov         eax,dword ptr [ebx]
 00401601    push        eax
 00401602    call        kernel32.VirtualFree
 00401607    xor         eax,eax
 00401609    mov         dword ptr [ebx],eax
 0040160B    pop         edi
 0040160C    pop         esi
 0040160D    pop         ebx
 0040160E    ret
*}
end;

//00401610
function GetSpaceAt(addr:PAnsiChar; minSize:Integer):TBlock;
begin
{*
 00401610    push        ebx
 00401611    push        esi
 00401612    push        edi
 00401613    push        ebp
 00401614    mov         ebx,ecx
 00401616    mov         esi,edx
 00401618    mov         ebp,eax
 0040161A    mov         dword ptr [ebx+4],100000
 00401621    push        4
 00401623    push        2000
 00401628    push        100000
 0040162D    push        ebp
 0040162E    call        kernel32.VirtualAlloc
 00401633    mov         edi,eax
 00401635    mov         dword ptr [ebx],edi
 00401637    test        edi,edi
>00401639    jne         0040165A
 0040163B    add         esi,0FFFF
 00401641    and         esi,0FFFF0000
 00401647    mov         dword ptr [ebx+4],esi
 0040164A    push        4
 0040164C    push        2000
 00401651    push        esi
 00401652    push        ebp
 00401653    call        kernel32.VirtualAlloc
 00401658    mov         dword ptr [ebx],eax
 0040165A    cmp         dword ptr [ebx],0
>0040165D    je          00401682
 0040165F    mov         edx,ebx
 00401661    mov         eax,55C5E8
 00401666    call        AddBlockAfter
 0040166B    test        al,al
>0040166D    jne         00401682
 0040166F    push        8000
 00401674    push        0
 00401676    mov         eax,dword ptr [ebx]
 00401678    push        eax
 00401679    call        kernel32.VirtualFree
 0040167E    xor         eax,eax
 00401680    mov         dword ptr [ebx],eax
 00401682    pop         ebp
 00401683    pop         edi
 00401684    pop         esi
 00401685    pop         ebx
 00401686    ret
*}
end;

//00401688
function FreeSpace(addr:Pointer; maxSize:Integer):TBlock;
begin
{*
 00401688    push        ebx
 00401689    push        esi
 0040168A    push        edi
 0040168B    push        ebp
 0040168C    add         esp,0FFFFFFEC
 0040168F    mov         dword ptr [esp+4],ecx
 00401693    mov         dword ptr [esp],edx
 00401696    mov         dword ptr [esp+8],0FFFFFFFF
 0040169E    xor         edx,edx
 004016A0    mov         dword ptr [esp+0C],edx
 004016A4    mov         ebp,eax
 004016A6    mov         eax,dword ptr [esp]
 004016A9    add         eax,ebp
 004016AB    mov         dword ptr [esp+10],eax
 004016AF    mov         ebx,dword ptr ds:[55C5E8]
>004016B5    jmp         00401708
 004016B7    mov         edi,dword ptr [ebx]
 004016B9    mov         esi,dword ptr [ebx+8]
 004016BC    cmp         ebp,esi
>004016BE    ja          00401706
 004016C0    mov         eax,esi
 004016C2    add         eax,dword ptr [ebx+0C]
 004016C5    cmp         eax,dword ptr [esp+10]
>004016C9    ja          00401706
 004016CB    cmp         esi,dword ptr [esp+8]
>004016CF    jae         004016D5
 004016D1    mov         dword ptr [esp+8],esi
 004016D5    mov         eax,esi
 004016D7    add         eax,dword ptr [ebx+0C]
 004016DA    cmp         eax,dword ptr [esp+0C]
>004016DE    jbe         004016E4
 004016E0    mov         dword ptr [esp+0C],eax
 004016E4    push        8000
 004016E9    push        0
 004016EB    push        esi
 004016EC    call        kernel32.VirtualFree
 004016F1    test        eax,eax
>004016F3    jne         004016FF
 004016F5    mov         dword ptr ds:[55C5C4],1
 004016FF    mov         eax,ebx
 00401701    call        DeleteBlock
 00401706    mov         ebx,edi
 00401708    cmp         ebx,55C5E8
>0040170E    jne         004016B7
 00401710    mov         eax,dword ptr [esp+4]
 00401714    xor         edx,edx
 00401716    mov         dword ptr [eax],edx
 00401718    cmp         dword ptr [esp+0C],0
>0040171D    je          00401738
 0040171F    mov         eax,dword ptr [esp+4]
 00401723    mov         edx,dword ptr [esp+8]
 00401727    mov         dword ptr [eax],edx
 00401729    mov         eax,dword ptr [esp+0C]
 0040172D    sub         eax,dword ptr [esp+8]
 00401731    mov         edx,dword ptr [esp+4]
 00401735    mov         dword ptr [edx+4],eax
 00401738    add         esp,14
 0040173B    pop         ebp
 0040173C    pop         edi
 0040173D    pop         esi
 0040173E    pop         ebx
 0040173F    ret
*}
end;

//00401740
function Commit(addr:Pointer; minSize:Integer):TBlock;
begin
{*
 00401740    push        ebx
 00401741    push        esi
 00401742    push        edi
 00401743    push        ebp
 00401744    add         esp,0FFFFFFF4
 00401747    mov         dword ptr [esp+4],ecx
 0040174B    mov         dword ptr [esp],edx
 0040174E    mov         edx,eax
 00401750    mov         ebp,edx
 00401752    and         ebp,0FFFFF000
 00401758    add         edx,dword ptr [esp]
 0040175B    add         edx,0FFF
 00401761    and         edx,0FFFFF000
 00401767    mov         dword ptr [esp+8],edx
 0040176B    mov         eax,dword ptr [esp+4]
 0040176F    mov         dword ptr [eax],ebp
 00401771    mov         eax,dword ptr [esp+8]
 00401775    sub         eax,ebp
 00401777    mov         edx,dword ptr [esp+4]
 0040177B    mov         dword ptr [edx+4],eax
 0040177E    mov         esi,dword ptr ds:[55C5E8]
>00401784    jmp         004017C2
 00401786    mov         ebx,dword ptr [esi+8]
 00401789    mov         edi,dword ptr [esi+0C]
 0040178C    add         edi,ebx
 0040178E    cmp         ebp,ebx
>00401790    jbe         00401794
 00401792    mov         ebx,ebp
 00401794    cmp         edi,dword ptr [esp+8]
>00401798    jbe         0040179E
 0040179A    mov         edi,dword ptr [esp+8]
 0040179E    cmp         edi,ebx
>004017A0    jbe         004017C0
 004017A2    push        4
 004017A4    push        1000
 004017A9    sub         edi,ebx
 004017AB    push        edi
 004017AC    push        ebx
 004017AD    call        kernel32.VirtualAlloc
 004017B2    test        eax,eax
>004017B4    jne         004017C0
 004017B6    mov         eax,dword ptr [esp+4]
 004017BA    xor         edx,edx
 004017BC    mov         dword ptr [eax],edx
>004017BE    jmp         004017CA
 004017C0    mov         esi,dword ptr [esi]
 004017C2    cmp         esi,55C5E8
>004017C8    jne         00401786
 004017CA    add         esp,0C
 004017CD    pop         ebp
 004017CE    pop         edi
 004017CF    pop         esi
 004017D0    pop         ebx
 004017D1    ret
*}
end;

//004017D4
function Decommit(addr:Pointer; maxSize:Integer):TBlock;
begin
{*
 004017D4    push        ebx
 004017D5    push        esi
 004017D6    push        edi
 004017D7    push        ebp
 004017D8    push        ecx
 004017D9    mov         ebx,eax
 004017DB    mov         esi,ebx
 004017DD    add         esi,0FFF
 004017E3    and         esi,0FFFFF000
 004017E9    mov         dword ptr [esp],esi
 004017EC    mov         ebp,ebx
 004017EE    add         ebp,edx
 004017F0    and         ebp,0FFFFF000
 004017F6    mov         eax,dword ptr [esp]
 004017F9    mov         dword ptr [ecx],eax
 004017FB    mov         eax,ebp
 004017FD    sub         eax,dword ptr [esp]
 00401800    mov         dword ptr [ecx+4],eax
 00401803    mov         esi,dword ptr ds:[55C5E8]
>00401809    jmp         00401843
 0040180B    mov         ebx,dword ptr [esi+8]
 0040180E    mov         edi,dword ptr [esi+0C]
 00401811    add         edi,ebx
 00401813    cmp         ebx,dword ptr [esp]
>00401816    jae         0040181B
 00401818    mov         ebx,dword ptr [esp]
 0040181B    cmp         ebp,edi
>0040181D    jae         00401821
 0040181F    mov         edi,ebp
 00401821    cmp         edi,ebx
>00401823    jbe         00401841
 00401825    push        4000
 0040182A    sub         edi,ebx
 0040182C    push        edi
 0040182D    push        ebx
 0040182E    call        kernel32.VirtualFree
 00401833    test        eax,eax
>00401835    jne         00401841
 00401837    mov         dword ptr ds:[55C5C4],2
 00401841    mov         esi,dword ptr [esi]
 00401843    cmp         esi,55C5E8
>00401849    jne         0040180B
 0040184B    pop         edx
 0040184C    pop         ebp
 0040184D    pop         edi
 0040184E    pop         esi
 0040184F    pop         ebx
 00401850    ret
*}
end;

//00401854
function GetCommitted(minSize:Integer):TBlock;
begin
{*
 00401854    push        ebx
 00401855    push        esi
 00401856    push        edi
 00401857    push        ebp
 00401858    add         esp,0FFFFFFF8
 0040185B    mov         esi,edx
 0040185D    mov         edi,eax
 0040185F    mov         ebp,55C5F8
 00401864    add         edi,3FFF
 0040186A    and         edi,0FFFFC000
 00401870    mov         ebx,dword ptr [ebp]
>00401873    jmp         004018A8
 00401875    cmp         edi,dword ptr [ebx+0C]
>00401878    jg          004018A6
 0040187A    mov         ecx,esi
 0040187C    mov         edx,edi
 0040187E    mov         eax,dword ptr [ebx+8]
 00401881    call        Commit
 00401886    cmp         dword ptr [esi],0
>00401889    je          004018DB
 0040188B    mov         eax,dword ptr [esi+4]
 0040188E    add         dword ptr [ebx+8],eax
 00401891    mov         eax,dword ptr [esi+4]
 00401894    sub         dword ptr [ebx+0C],eax
 00401897    cmp         dword ptr [ebx+0C],0
>0040189B    jne         004018DB
 0040189D    mov         eax,ebx
 0040189F    call        DeleteBlock
>004018A4    jmp         004018DB
 004018A6    mov         ebx,dword ptr [ebx]
 004018A8    cmp         ebx,ebp
>004018AA    jne         00401875
 004018AC    mov         edx,esi
 004018AE    mov         eax,edi
 004018B0    call        GetSpace
 004018B5    cmp         dword ptr [esi],0
>004018B8    je          004018DB
 004018BA    mov         ecx,esp
 004018BC    mov         edx,esi
 004018BE    mov         eax,ebp
 004018C0    call        MergeBlockAfter
 004018C5    cmp         dword ptr [esp],0
>004018C9    jne         00401870
 004018CB    mov         ecx,esp
 004018CD    mov         edx,dword ptr [esi+4]
 004018D0    mov         eax,dword ptr [esi]
 004018D2    call        FreeSpace
 004018D7    xor         eax,eax
 004018D9    mov         dword ptr [esi],eax
 004018DB    pop         ecx
 004018DC    pop         edx
 004018DD    pop         ebp
 004018DE    pop         edi
 004018DF    pop         esi
 004018E0    pop         ebx
 004018E1    ret
*}
end;

//004018E4
function GetCommittedAt(addr:PAnsiChar; minSize:Integer):TBlock;
begin
{*
 004018E4    push        ebx
 004018E5    push        esi
 004018E6    push        edi
 004018E7    push        ebp
 004018E8    add         esp,0FFFFFFEC
 004018EB    mov         dword ptr [esp],ecx
 004018EE    mov         edi,edx
 004018F0    mov         esi,eax
 004018F2    mov         ebp,55C5F8
 004018F7    add         edi,3FFF
 004018FD    and         edi,0FFFFC000
 00401903    mov         ebx,dword ptr [ebp]
>00401906    jmp         0040190A
 00401908    mov         ebx,dword ptr [ebx]
 0040190A    cmp         ebx,ebp
>0040190C    je          00401913
 0040190E    cmp         esi,dword ptr [ebx+8]
>00401911    jne         00401908
 00401913    cmp         esi,dword ptr [ebx+8]
>00401916    jne         0040196F
 00401918    cmp         edi,dword ptr [ebx+0C]
>0040191B    jle         004019B7
 00401921    lea         ecx,[esp+4]
 00401925    mov         edx,edi
 00401927    sub         edx,dword ptr [ebx+0C]
 0040192A    mov         eax,dword ptr [ebx+8]
 0040192D    add         eax,dword ptr [ebx+0C]
 00401930    call        GetSpaceAt
 00401935    cmp         dword ptr [esp+4],0
>0040193A    je          0040196F
 0040193C    lea         ecx,[esp+0C]
 00401940    lea         edx,[esp+4]
 00401944    mov         eax,ebp
 00401946    call        MergeBlockAfter
 0040194B    cmp         dword ptr [esp+0C],0
>00401950    jne         00401903
 00401952    lea         ecx,[esp+0C]
 00401956    mov         edx,dword ptr [esp+8]
 0040195A    mov         eax,dword ptr [esp+4]
 0040195E    call        FreeSpace
 00401963    mov         eax,dword ptr [esp]
 00401966    xor         edx,edx
 00401968    mov         dword ptr [eax],edx
>0040196A    jmp         004019FF
 0040196F    lea         ecx,[esp+4]
 00401973    mov         edx,edi
 00401975    mov         eax,esi
 00401977    call        GetSpaceAt
 0040197C    cmp         dword ptr [esp+4],0
>00401981    je          004019B7
 00401983    lea         ecx,[esp+0C]
 00401987    lea         edx,[esp+4]
 0040198B    mov         eax,ebp
 0040198D    call        MergeBlockAfter
 00401992    cmp         dword ptr [esp+0C],0
>00401997    jne         00401903
 0040199D    lea         ecx,[esp+0C]
 004019A1    mov         edx,dword ptr [esp+8]
 004019A5    mov         eax,dword ptr [esp+4]
 004019A9    call        FreeSpace
 004019AE    mov         eax,dword ptr [esp]
 004019B1    xor         edx,edx
 004019B3    mov         dword ptr [eax],edx
>004019B5    jmp         004019FF
 004019B7    mov         ebp,dword ptr [ebx+8]
 004019BA    cmp         esi,ebp
>004019BC    jne         004019F8
 004019BE    cmp         edi,dword ptr [ebx+0C]
>004019C1    jg          004019F8
 004019C3    mov         ecx,dword ptr [esp]
 004019C6    mov         edx,edi
 004019C8    mov         eax,ebp
 004019CA    call        Commit
 004019CF    mov         eax,dword ptr [esp]
 004019D2    cmp         dword ptr [eax],0
>004019D5    je          004019FF
 004019D7    mov         eax,dword ptr [esp]
 004019DA    mov         eax,dword ptr [eax+4]
 004019DD    add         dword ptr [ebx+8],eax
 004019E0    mov         eax,dword ptr [esp]
 004019E3    mov         eax,dword ptr [eax+4]
 004019E6    sub         dword ptr [ebx+0C],eax
 004019E9    cmp         dword ptr [ebx+0C],0
>004019ED    jne         004019FF
 004019EF    mov         eax,ebx
 004019F1    call        DeleteBlock
>004019F6    jmp         004019FF
 004019F8    mov         eax,dword ptr [esp]
 004019FB    xor         edx,edx
 004019FD    mov         dword ptr [eax],edx
 004019FF    add         esp,14
 00401A02    pop         ebp
 00401A03    pop         edi
 00401A04    pop         esi
 00401A05    pop         ebx
 00401A06    ret
*}
end;

//00401A08
function FreeCommitted(addr:PAnsiChar; maxSize:Integer):TBlock;
begin
{*
 00401A08    push        ebx
 00401A09    push        esi
 00401A0A    push        edi
 00401A0B    add         esp,0FFFFFFEC
 00401A0E    mov         edi,ecx
 00401A10    mov         dword ptr [esp],edx
 00401A13    lea         ebx,[eax+3FFF]
 00401A19    and         ebx,0FFFFC000
 00401A1F    mov         esi,dword ptr [esp]
 00401A22    add         esi,eax
 00401A24    and         esi,0FFFFC000
 00401A2A    cmp         ebx,esi
>00401A2C    jae         00401A89
 00401A2E    mov         ecx,edi
 00401A30    mov         edx,esi
 00401A32    sub         edx,ebx
 00401A34    mov         eax,ebx
 00401A36    call        Decommit
 00401A3B    lea         ecx,[esp+4]
 00401A3F    mov         edx,edi
 00401A41    mov         eax,55C5F8
 00401A46    call        MergeBlockAfter
 00401A4B    mov         ebx,dword ptr [esp+4]
 00401A4F    test        ebx,ebx
>00401A51    je          00401A72
 00401A53    lea         ecx,[esp+0C]
 00401A57    mov         edx,dword ptr [esp+8]
 00401A5B    mov         eax,ebx
 00401A5D    call        FreeSpace
 00401A62    mov         eax,dword ptr [esp+0C]
 00401A66    mov         dword ptr [esp+4],eax
 00401A6A    mov         eax,dword ptr [esp+10]
 00401A6E    mov         dword ptr [esp+8],eax
 00401A72    cmp         dword ptr [esp+4],0
>00401A77    je          00401A8D
 00401A79    lea         edx,[esp+4]
 00401A7D    mov         eax,55C5F8
 00401A82    call        RemoveBlock
>00401A87    jmp         00401A8D
 00401A89    xor         eax,eax
 00401A8B    mov         dword ptr [edi],eax
 00401A8D    add         esp,14
 00401A90    pop         edi
 00401A91    pop         esi
 00401A92    pop         ebx
 00401A93    ret
*}
end;

//00401A94
function InitAllocator:Boolean;
begin
{*
 00401A94    push        ebp
 00401A95    mov         ebp,esp
 00401A97    xor         edx,edx
 00401A99    push        ebp
 00401A9A    push        401B4A
 00401A9F    push        dword ptr fs:[edx]
 00401AA2    mov         dword ptr fs:[edx],esp
 00401AA5    push        55C5C8
 00401AAA    call        kernel32.InitializeCriticalSection
 00401AAF    cmp         byte ptr ds:[55C049],0;gvar_0055C049
>00401AB6    je          00401AC2
 00401AB8    push        55C5C8
 00401ABD    call        kernel32.EnterCriticalSection
 00401AC2    mov         eax,55C5E8
 00401AC7    call        MakeEmpty
 00401ACC    mov         eax,55C5F8
 00401AD1    call        MakeEmpty
 00401AD6    mov         eax,55C624
 00401ADB    call        MakeEmpty
 00401AE0    push        0FF8
 00401AE5    push        0
 00401AE7    call        kernel32.LocalAlloc
 00401AEC    mov         [0055C620],eax
 00401AF1    cmp         dword ptr ds:[55C620],0
>00401AF8    je          00401B29
 00401AFA    mov         eax,3
 00401AFF    mov         edx,dword ptr ds:[55C620]
 00401B05    xor         ecx,ecx
 00401B07    mov         dword ptr [edx+eax*4-0C],ecx
 00401B0B    inc         eax
 00401B0C    cmp         eax,401
>00401B11    jne         00401AFF
 00401B13    mov         eax,55C608
 00401B18    mov         dword ptr [eax+4],eax
 00401B1B    mov         dword ptr [eax],eax
 00401B1D    mov         [0055C614],eax
 00401B22    mov         byte ptr ds:[55C5C0],1
 00401B29    xor         eax,eax
 00401B2B    pop         edx
 00401B2C    pop         ecx
 00401B2D    pop         ecx
 00401B2E    mov         dword ptr fs:[eax],edx
 00401B31    push        401B51
 00401B36    cmp         byte ptr ds:[55C049],0;gvar_0055C049
>00401B3D    je          00401B49
 00401B3F    push        55C5C8
 00401B44    call        kernel32.LeaveCriticalSection
 00401B49    ret
>00401B4A    jmp         @HandleFinally
>00401B4F    jmp         00401B36
 00401B51    mov         al,[0055C5C0]
 00401B56    pop         ebp
 00401B57    ret
*}
end;

//00401B58
procedure UninitAllocator;
begin
{*
 00401B58    push        ebp
 00401B59    mov         ebp,esp
 00401B5B    push        ebx
 00401B5C    cmp         byte ptr ds:[55C5C0],0
>00401B63    je          00401C35
 00401B69    xor         edx,edx
 00401B6B    push        ebp
 00401B6C    push        401C2E
 00401B71    push        dword ptr fs:[edx]
 00401B74    mov         dword ptr fs:[edx],esp
 00401B77    cmp         byte ptr ds:[55C049],0;gvar_0055C049
>00401B7E    je          00401B8A
 00401B80    push        55C5C8
 00401B85    call        kernel32.EnterCriticalSection
 00401B8A    mov         byte ptr ds:[55C5C0],0
 00401B91    mov         eax,[0055C620]
 00401B96    push        eax
 00401B97    call        kernel32.LocalFree
 00401B9C    xor         eax,eax
 00401B9E    mov         [0055C620],eax
 00401BA3    mov         ebx,dword ptr ds:[55C5E8]
>00401BA9    jmp         00401BBD
 00401BAB    push        8000
 00401BB0    push        0
 00401BB2    mov         eax,dword ptr [ebx+8]
 00401BB5    push        eax
 00401BB6    call        kernel32.VirtualFree
 00401BBB    mov         ebx,dword ptr [ebx]
 00401BBD    cmp         ebx,55C5E8
>00401BC3    jne         00401BAB
 00401BC5    mov         eax,55C5E8
 00401BCA    call        MakeEmpty
 00401BCF    mov         eax,55C5F8
 00401BD4    call        MakeEmpty
 00401BD9    mov         eax,55C624
 00401BDE    call        MakeEmpty
 00401BE3    mov         eax,[0055C5E0]
 00401BE8    test        eax,eax
>00401BEA    je          00401C03
 00401BEC    mov         edx,dword ptr [eax]
 00401BEE    mov         dword ptr ds:[55C5E0],edx
 00401BF4    push        eax
 00401BF5    call        kernel32.LocalFree
 00401BFA    mov         eax,[0055C5E0]
 00401BFF    test        eax,eax
>00401C01    jne         00401BEC
 00401C03    xor         eax,eax
 00401C05    pop         edx
 00401C06    pop         ecx
 00401C07    pop         ecx
 00401C08    mov         dword ptr fs:[eax],edx
 00401C0B    push        401C35
 00401C10    cmp         byte ptr ds:[55C049],0;gvar_0055C049
>00401C17    je          00401C23
 00401C19    push        55C5C8
 00401C1E    call        kernel32.LeaveCriticalSection
 00401C23    push        55C5C8
 00401C28    call        kernel32.DeleteCriticalSection
 00401C2D    ret
>00401C2E    jmp         @HandleFinally
>00401C33    jmp         00401C10
 00401C35    pop         ebx
 00401C36    pop         ebp
 00401C37    ret
*}
end;

//00401C38
procedure DeleteFree(f:PFree);
begin
{*
 00401C38    push        ebx
 00401C39    cmp         eax,dword ptr ds:[55C614]
>00401C3F    jne         00401C4A
 00401C41    mov         edx,dword ptr [eax+4]
 00401C44    mov         dword ptr ds:[55C614],edx
 00401C4A    mov         edx,dword ptr [eax+4]
 00401C4D    mov         ecx,dword ptr [eax+8]
 00401C50    cmp         ecx,1000
>00401C56    jg          00401C90
 00401C58    cmp         eax,edx
>00401C5A    jne         00401C73
 00401C5C    test        ecx,ecx
>00401C5E    jns         00401C63
 00401C60    add         ecx,3
 00401C63    sar         ecx,2
 00401C66    mov         eax,[0055C620]
 00401C6B    xor         edx,edx
 00401C6D    mov         dword ptr [eax+ecx*4-0C],edx
>00401C71    jmp         00401C97
 00401C73    test        ecx,ecx
>00401C75    jns         00401C7A
 00401C77    add         ecx,3
 00401C7A    sar         ecx,2
 00401C7D    mov         ebx,dword ptr ds:[55C620]
 00401C83    mov         dword ptr [ebx+ecx*4-0C],edx
 00401C87    mov         eax,dword ptr [eax]
 00401C89    mov         dword ptr [edx],eax
 00401C8B    mov         dword ptr [eax+4],edx
 00401C8E    pop         ebx
 00401C8F    ret
 00401C90    mov         eax,dword ptr [eax]
 00401C92    mov         dword ptr [edx],eax
 00401C94    mov         dword ptr [eax+4],edx
 00401C97    pop         ebx
 00401C98    ret
*}
end;

//00401C9C
function FindCommitted(addr:PAnsiChar):PBlockDesc;
begin
{*
 00401C9C    mov         edx,dword ptr ds:[55C624]
>00401CA2    jmp         00401CB4
 00401CA4    mov         ecx,dword ptr [edx+8]
 00401CA7    cmp         eax,ecx
>00401CA9    jb          00401CB2
 00401CAB    add         ecx,dword ptr [edx+0C]
 00401CAE    cmp         eax,ecx
>00401CB0    jb          00401CC8
 00401CB2    mov         edx,dword ptr [edx]
 00401CB4    cmp         edx,55C624
>00401CBA    jne         00401CA4
 00401CBC    mov         dword ptr ds:[55C5C4],3
 00401CC6    xor         edx,edx
 00401CC8    mov         eax,edx
 00401CCA    ret
*}
end;

//00401CCC
procedure FillBeforeGap(a:PAnsiChar; size:Integer);
begin
{*
 00401CCC    push        ebx
 00401CCD    mov         ecx,edx
 00401CCF    sub         ecx,4
 00401CD2    lea         ebx,[ecx+eax]
 00401CD5    cmp         edx,10
>00401CD8    jl          00401CE9
 00401CDA    mov         dword ptr [ebx],80000007
 00401CE0    mov         edx,ecx
 00401CE2    call        InsertFree
 00401CE7    pop         ebx
 00401CE8    ret
 00401CE9    cmp         edx,4
>00401CEC    jl          00401CFA
 00401CEE    mov         ecx,edx
 00401CF0    or          ecx,80000002
 00401CF6    mov         dword ptr [eax],ecx
 00401CF8    mov         dword ptr [ebx],ecx
 00401CFA    pop         ebx
 00401CFB    ret
*}
end;

//00401CFC
procedure InternalFreeMem(a:PAnsiChar);
begin
{*
 00401CFC    inc         dword ptr ds:[55C5B0]
 00401D02    mov         edx,eax
 00401D04    sub         edx,4
 00401D07    mov         edx,dword ptr [edx]
 00401D09    and         edx,7FFFFFFC
 00401D0F    sub         edx,4
 00401D12    add         dword ptr ds:[55C5B4],edx
 00401D18    call        SysFreeMem
 00401D1D    ret
*}
end;

//00401D20
procedure FillAfterGap(a:PAnsiChar; size:Integer);
begin
{*
 00401D20    cmp         edx,0C
>00401D23    jl          00401D33
 00401D25    or          edx,2
 00401D28    mov         dword ptr [eax],edx
 00401D2A    add         eax,4
 00401D2D    call        InternalFreeMem
 00401D32    ret
 00401D33    cmp         edx,4
>00401D36    jl          00401D42
 00401D38    mov         ecx,edx
 00401D3A    or          ecx,80000002
 00401D40    mov         dword ptr [eax],ecx
 00401D42    add         eax,edx
 00401D44    and         dword ptr [eax],0FFFFFFFE
 00401D47    ret
*}
end;

//00401D48
function FillerSizeBeforeGap(a:PAnsiChar):Integer;
begin
{*
 00401D48    push        ebx
 00401D49    push        esi
 00401D4A    mov         edx,eax
 00401D4C    sub         edx,4
 00401D4F    mov         edx,dword ptr [edx]
 00401D51    mov         ecx,edx
 00401D53    and         ecx,80000002
 00401D59    cmp         ecx,80000002
>00401D5F    je          00401D6B
 00401D61    mov         dword ptr ds:[55C5C4],4
 00401D6B    mov         ebx,edx
 00401D6D    and         ebx,7FFFFFFC
 00401D73    sub         eax,ebx
 00401D75    mov         ecx,eax
 00401D77    xor         edx,dword ptr [ecx]
 00401D79    test        edx,0FFFFFFFE
>00401D7F    je          00401D8B
 00401D81    mov         dword ptr ds:[55C5C4],5
 00401D8B    test        byte ptr [ecx],1
>00401D8E    je          00401DB0
 00401D90    mov         edx,eax
 00401D92    sub         edx,0C
 00401D95    mov         esi,dword ptr [edx+8]
 00401D98    sub         eax,esi
 00401D9A    cmp         esi,dword ptr [eax+8]
>00401D9D    je          00401DA9
 00401D9F    mov         dword ptr ds:[55C5C4],6
 00401DA9    call        DeleteFree
 00401DAE    add         ebx,esi
 00401DB0    mov         eax,ebx
 00401DB2    pop         esi
 00401DB3    pop         ebx
 00401DB4    ret
*}
end;

//00401DB8
function FillerSizeAfterGap(a:PAnsiChar):Integer;
begin
{*
 00401DB8    push        ebx
 00401DB9    push        esi
 00401DBA    push        edi
 00401DBB    mov         ebx,eax
 00401DBD    xor         edi,edi
 00401DBF    mov         eax,dword ptr [ebx]
 00401DC1    test        eax,80000000
>00401DC6    je          00401DD3
 00401DC8    and         eax,7FFFFFFC
 00401DCD    add         edi,eax
 00401DCF    add         ebx,eax
 00401DD1    mov         eax,dword ptr [ebx]
 00401DD3    test        al,2
>00401DD5    jne         00401DEA
 00401DD7    mov         esi,ebx
 00401DD9    mov         eax,esi
 00401DDB    call        DeleteFree
 00401DE0    mov         eax,dword ptr [esi+8]
 00401DE3    add         edi,eax
 00401DE5    add         ebx,eax
 00401DE7    and         dword ptr [ebx],0FFFFFFFE
 00401DEA    mov         eax,edi
 00401DEC    pop         edi
 00401DED    pop         esi
 00401DEE    pop         ebx
 00401DEF    ret
*}
end;

//00401DF0
function DecommitFree(a:PAnsiChar; size:Integer):Boolean;
begin
{*
 00401DF0    push        ebx
 00401DF1    push        esi
 00401DF2    push        edi
 00401DF3    push        ebp
 00401DF4    add         esp,0FFFFFFF4
 00401DF7    mov         edi,edx
 00401DF9    mov         esi,eax
 00401DFB    mov         byte ptr [esp],0
 00401DFF    mov         eax,esi
 00401E01    call        FindCommitted
 00401E06    mov         ebx,eax
 00401E08    test        ebx,ebx
>00401E0A    je          00401E92
 00401E10    mov         ebp,dword ptr [ebx+8]
 00401E13    mov         eax,ebp
 00401E15    add         eax,dword ptr [ebx+0C]
 00401E18    mov         edx,eax
 00401E1A    lea         ecx,[edi+esi]
 00401E1D    sub         edx,ecx
 00401E1F    cmp         edx,0C
>00401E22    jg          00401E28
 00401E24    mov         edi,eax
 00401E26    sub         edi,esi
 00401E28    mov         eax,esi
 00401E2A    sub         eax,ebp
 00401E2C    cmp         eax,0C
>00401E2F    jge         00401E45
 00401E31    lea         ecx,[esp+1]
 00401E35    mov         edx,esi
 00401E37    sub         edx,dword ptr [ebx+8]
 00401E3A    add         edx,edi
 00401E3C    mov         eax,ebp
 00401E3E    call        FreeCommitted
>00401E43    jmp         00401E56
 00401E45    lea         ecx,[esp+1]
 00401E49    mov         edx,edi
 00401E4B    sub         edx,4
 00401E4E    lea         eax,[esi+4]
 00401E51    call        FreeCommitted
 00401E56    mov         ebp,dword ptr [esp+1]
 00401E5A    test        ebp,ebp
>00401E5C    je          00401E92
 00401E5E    mov         edx,ebp
 00401E60    sub         edx,esi
 00401E62    mov         eax,esi
 00401E64    call        FillBeforeGap
 00401E69    mov         eax,ebp
 00401E6B    add         eax,dword ptr [esp+5]
 00401E6F    mov         edx,dword ptr [ebx+8]
 00401E72    add         edx,dword ptr [ebx+0C]
 00401E75    cmp         eax,edx
>00401E77    jae         00401E83
 00401E79    lea         edx,[edi+esi]
 00401E7C    sub         edx,eax
 00401E7E    call        FillAfterGap
 00401E83    lea         edx,[esp+1]
 00401E87    mov         eax,ebx
 00401E89    call        RemoveBlock
 00401E8E    mov         byte ptr [esp],1
 00401E92    mov         al,byte ptr [esp]
 00401E95    add         esp,0C
 00401E98    pop         ebp
 00401E99    pop         edi
 00401E9A    pop         esi
 00401E9B    pop         ebx
 00401E9C    ret
*}
end;

//00401EA0
procedure InsertFree(a:Pointer; size:Integer);
begin
{*
 00401EA0    push        ebx
 00401EA1    push        esi
 00401EA2    push        edi
 00401EA3    mov         esi,edx
 00401EA5    mov         edi,eax
 00401EA7    mov         ebx,edi
 00401EA9    mov         dword ptr [ebx+8],esi
 00401EAC    mov         eax,ebx
 00401EAE    add         eax,esi
 00401EB0    sub         eax,0C
 00401EB3    mov         dword ptr [eax+8],esi
 00401EB6    cmp         esi,1000
>00401EBC    jg          00401EF5
 00401EBE    mov         edx,esi
 00401EC0    test        edx,edx
>00401EC2    jns         00401EC7
 00401EC4    add         edx,3
 00401EC7    sar         edx,2
 00401ECA    mov         eax,[0055C620]
 00401ECF    mov         eax,dword ptr [eax+edx*4-0C]
 00401ED3    test        eax,eax
>00401ED5    jne         00401EE7
 00401ED7    mov         eax,[0055C620]
 00401EDC    mov         dword ptr [eax+edx*4-0C],ebx
 00401EE0    mov         dword ptr [ebx+4],ebx
 00401EE3    mov         dword ptr [ebx],ebx
>00401EE5    jmp         00401F21
 00401EE7    mov         edx,dword ptr [eax]
 00401EE9    mov         dword ptr [ebx+4],eax
 00401EEC    mov         dword ptr [ebx],edx
 00401EEE    mov         dword ptr [eax],ebx
 00401EF0    mov         dword ptr [edx+4],ebx
>00401EF3    jmp         00401F21
 00401EF5    cmp         esi,3C00
>00401EFB    jl          00401F0A
 00401EFD    mov         edx,esi
 00401EFF    mov         eax,edi
 00401F01    call        DecommitFree
 00401F06    test        al,al
>00401F08    jne         00401F21
 00401F0A    mov         eax,[0055C614]
 00401F0F    mov         dword ptr ds:[55C614],ebx
 00401F15    mov         edx,dword ptr [eax]
 00401F17    mov         dword ptr [ebx+4],eax
 00401F1A    mov         dword ptr [ebx],edx
 00401F1C    mov         dword ptr [eax],ebx
 00401F1E    mov         dword ptr [edx+4],ebx
 00401F21    pop         edi
 00401F22    pop         esi
 00401F23    pop         ebx
 00401F24    ret
*}
end;

//00401F28
procedure FreeCurAlloc;
begin
{*
 00401F28    cmp         dword ptr ds:[55C618],0
>00401F2F    jle         00401F71
 00401F31    cmp         dword ptr ds:[55C618],0C
>00401F38    jge         00401F46
 00401F3A    mov         dword ptr ds:[55C5C4],7
>00401F44    jmp         00401F71
 00401F46    mov         eax,[0055C618]
 00401F4B    or          eax,2
 00401F4E    mov         edx,dword ptr ds:[55C61C]
 00401F54    mov         dword ptr [edx],eax
 00401F56    mov         eax,[0055C61C]
 00401F5B    add         eax,4
 00401F5E    call        InternalFreeMem
 00401F63    xor         eax,eax
 00401F65    mov         [0055C61C],eax
 00401F6A    xor         eax,eax
 00401F6C    mov         [0055C618],eax
 00401F71    ret
*}
end;

//00401F74
function MergeCommit(b:TBlock):Boolean;
begin
{*
 00401F74    push        ebx
 00401F75    push        esi
 00401F76    push        edi
 00401F77    add         esp,0FFFFFFF0
 00401F7A    mov         esi,eax
 00401F7C    lea         edi,[esp]
 00401F7F    movs        dword ptr [edi],dword ptr [esi]
 00401F80    movs        dword ptr [edi],dword ptr [esi]
 00401F81    mov         edi,esp
 00401F83    call        FreeCurAlloc
 00401F88    lea         ecx,[esp+8]
 00401F8C    mov         edx,edi
 00401F8E    mov         eax,55C624
 00401F93    call        MergeBlockAfter
 00401F98    mov         ebx,dword ptr [esp+8]
 00401F9C    test        ebx,ebx
>00401F9E    jne         00401FA4
 00401FA0    xor         eax,eax
>00401FA2    jmp         00401FF6
 00401FA4    mov         eax,dword ptr [edi]
 00401FA6    cmp         ebx,eax
>00401FA8    jae         00401FB4
 00401FAA    call        FillerSizeBeforeGap
 00401FAF    sub         dword ptr [edi],eax
 00401FB1    add         dword ptr [edi+4],eax
 00401FB4    mov         eax,dword ptr [edi]
 00401FB6    add         eax,dword ptr [edi+4]
 00401FB9    mov         esi,ebx
 00401FBB    add         esi,dword ptr [esp+0C]
 00401FBF    cmp         eax,esi
>00401FC1    jae         00401FCB
 00401FC3    call        FillerSizeAfterGap
 00401FC8    add         dword ptr [edi+4],eax
 00401FCB    mov         eax,dword ptr [edi]
 00401FCD    add         eax,dword ptr [edi+4]
 00401FD0    cmp         esi,eax
>00401FD2    jne         00401FE5
 00401FD4    sub         eax,4
 00401FD7    mov         edx,4
 00401FDC    call        FillBeforeGap
 00401FE1    sub         dword ptr [edi+4],4
 00401FE5    mov         eax,dword ptr [edi]
 00401FE7    mov         [0055C61C],eax
 00401FEC    mov         eax,dword ptr [edi+4]
 00401FEF    mov         [0055C618],eax
 00401FF4    mov         al,1
 00401FF6    add         esp,10
 00401FF9    pop         edi
 00401FFA    pop         esi
 00401FFB    pop         ebx
 00401FFC    ret
*}
end;

//00402000
function NewCommit(minSize:Integer):Boolean;
begin
{*
 00402000    push        ebx
 00402001    add         esp,0FFFFFFF8
 00402004    mov         ebx,eax
 00402006    mov         edx,esp
 00402008    lea         eax,[ebx+4]
 0040200B    call        GetCommitted
 00402010    cmp         dword ptr [esp],0
>00402014    je          00402021
 00402016    mov         eax,esp
 00402018    call        MergeCommit
 0040201D    test        al,al
>0040201F    jne         00402025
 00402021    xor         eax,eax
>00402023    jmp         00402027
 00402025    mov         al,1
 00402027    pop         ecx
 00402028    pop         edx
 00402029    pop         ebx
 0040202A    ret
*}
end;

//0040202C
function NewCommitAt(addr:Pointer; minSize:Integer):Boolean;
begin
{*
 0040202C    push        ebx
 0040202D    push        esi
 0040202E    add         esp,0FFFFFFF8
 00402031    mov         esi,edx
 00402033    mov         ebx,eax
 00402035    mov         ecx,esp
 00402037    lea         edx,[esi+4]
 0040203A    mov         eax,ebx
 0040203C    call        GetCommittedAt
 00402041    cmp         dword ptr [esp],0
>00402045    je          00402052
 00402047    mov         eax,esp
 00402049    call        MergeCommit
 0040204E    test        al,al
>00402050    jne         00402056
 00402052    xor         eax,eax
>00402054    jmp         00402058
 00402056    mov         al,1
 00402058    pop         ecx
 00402059    pop         edx
 0040205A    pop         esi
 0040205B    pop         ebx
 0040205C    ret
*}
end;

//00402060
function SearchSmallBlocks(size:Integer):PFree;
begin
{*
 00402060    xor         edx,edx
 00402062    test        eax,eax
>00402064    jns         00402069
 00402066    add         eax,3
 00402069    sar         eax,2
 0040206C    cmp         eax,400
>00402071    jg          00402089
 00402073    mov         edx,dword ptr ds:[55C620]
 00402079    mov         edx,dword ptr [edx+eax*4-0C]
 0040207D    test        edx,edx
>0040207F    jne         00402089
 00402081    inc         eax
 00402082    cmp         eax,401
>00402087    jne         00402073
 00402089    mov         eax,edx
 0040208B    ret
*}
end;

//0040208C
function TryHarder(size:Integer):Pointer;
begin
{*
 0040208C    push        ebx
 0040208D    push        esi
 0040208E    push        edi
 0040208F    push        ebp
 00402090    mov         esi,eax
 00402092    mov         edi,55C614
 00402097    mov         ebp,55C618
 0040209C    mov         ebx,dword ptr ds:[55C60C]
 004020A2    cmp         esi,dword ptr [ebx+8]
>004020A5    jle         0040212F
 004020AB    mov         ebx,dword ptr [edi]
 004020AD    mov         eax,dword ptr [ebx+8]
 004020B0    cmp         esi,eax
>004020B2    jle         0040212F
 004020B4    mov         dword ptr [ebx+8],esi
 004020B7    mov         ebx,dword ptr [ebx+4]
 004020BA    cmp         esi,dword ptr [ebx+8]
>004020BD    jg          004020B7
 004020BF    mov         edx,dword ptr [edi]
 004020C1    mov         dword ptr [edx+8],eax
 004020C4    cmp         ebx,dword ptr [edi]
>004020C6    je          004020CC
 004020C8    mov         dword ptr [edi],ebx
>004020CA    jmp         0040212F
 004020CC    cmp         esi,1000
>004020D2    jg          004020E1
 004020D4    mov         eax,esi
 004020D6    call        SearchSmallBlocks
 004020DB    mov         ebx,eax
 004020DD    test        ebx,ebx
>004020DF    jne         0040212F
 004020E1    mov         eax,esi
 004020E3    call        NewCommit
 004020E8    test        al,al
>004020EA    jne         004020F3
 004020EC    xor         eax,eax
>004020EE    jmp         0040217B
 004020F3    cmp         esi,dword ptr [ebp]
>004020F6    jg          0040209C
 004020F8    sub         dword ptr [ebp],esi
 004020FB    cmp         dword ptr [ebp],0C
>004020FF    jge         00402109
 00402101    add         esi,dword ptr [ebp]
 00402104    xor         eax,eax
 00402106    mov         dword ptr [ebp],eax
 00402109    mov         eax,[0055C61C]
 0040210E    add         dword ptr ds:[55C61C],esi
 00402114    mov         edx,esi
 00402116    or          edx,2
 00402119    mov         dword ptr [eax],edx
 0040211B    add         eax,4
 0040211E    inc         dword ptr ds:[55C5B0]
 00402124    sub         esi,4
 00402127    add         dword ptr ds:[55C5B4],esi
>0040212D    jmp         0040217B
 0040212F    mov         eax,ebx
 00402131    call        DeleteFree
 00402136    mov         edx,dword ptr [ebx+8]
 00402139    mov         eax,edx
 0040213B    sub         eax,esi
 0040213D    cmp         eax,0C
>00402140    jl          0040214E
 00402142    mov         edx,ebx
 00402144    add         edx,esi
 00402146    xchg        eax,edx
 00402147    call        InsertFree
>0040214C    jmp         00402160
 0040214E    mov         esi,edx
 00402150    cmp         ebx,dword ptr [edi]
>00402152    jne         00402159
 00402154    mov         eax,dword ptr [ebx+4]
 00402157    mov         dword ptr [edi],eax
 00402159    mov         eax,ebx
 0040215B    add         eax,esi
 0040215D    and         dword ptr [eax],0FFFFFFFE
 00402160    mov         eax,ebx
 00402162    mov         edx,esi
 00402164    or          edx,2
 00402167    mov         dword ptr [eax],edx
 00402169    add         eax,4
 0040216C    inc         dword ptr ds:[55C5B0]
 00402172    sub         esi,4
 00402175    add         dword ptr ds:[55C5B4],esi
 0040217B    pop         ebp
 0040217C    pop         edi
 0040217D    pop         esi
 0040217E    pop         ebx
 0040217F    ret
*}
end;

//00402180
function SysGetMem(Size:Integer):Pointer;
begin
{*
 00402180    push        ebp
 00402181    mov         ebp,esp
 00402183    add         esp,0FFFFFFF8
 00402186    push        ebx
 00402187    push        esi
 00402188    push        edi
 00402189    mov         ebx,eax
 0040218B    cmp         byte ptr ds:[55C5C0],0
>00402192    jne         0040219D
 00402194    call        InitAllocator
 00402199    test        al,al
>0040219B    je          004021A5
 0040219D    cmp         ebx,7FFFFFF8
>004021A3    jle         004021AF
 004021A5    xor         eax,eax
 004021A7    mov         dword ptr [ebp-4],eax
>004021AA    jmp         00402303
 004021AF    xor         ecx,ecx
 004021B1    push        ebp
 004021B2    push        4022FC
 004021B7    push        dword ptr fs:[ecx]
 004021BA    mov         dword ptr fs:[ecx],esp
 004021BD    cmp         byte ptr ds:[55C049],0;gvar_0055C049
>004021C4    je          004021D0
 004021C6    push        55C5C8
 004021CB    call        kernel32.EnterCriticalSection
 004021D0    add         ebx,7
 004021D3    and         ebx,0FFFFFFFC
 004021D6    cmp         ebx,0C
>004021D9    jge         004021E0
 004021DB    mov         ebx,0C
 004021E0    cmp         ebx,1000
>004021E6    jg          0040227F
 004021EC    mov         eax,ebx
 004021EE    test        eax,eax
>004021F0    jns         004021F5
 004021F2    add         eax,3
 004021F5    sar         eax,2
 004021F8    mov         edx,dword ptr ds:[55C620]
 004021FE    mov         edx,dword ptr [edx+eax*4-0C]
 00402202    test        edx,edx
>00402204    je          0040227F
 00402206    mov         esi,edx
 00402208    mov         eax,esi
 0040220A    add         eax,ebx
 0040220C    and         dword ptr [eax],0FFFFFFFE
 0040220F    mov         eax,dword ptr [edx+4]
 00402212    cmp         edx,eax
>00402214    jne         00402230
 00402216    mov         eax,ebx
 00402218    test        eax,eax
>0040221A    jns         0040221F
 0040221C    add         eax,3
 0040221F    sar         eax,2
 00402222    mov         ecx,dword ptr ds:[55C620]
 00402228    xor         edi,edi
 0040222A    mov         dword ptr [ecx+eax*4-0C],edi
>0040222E    jmp         00402256
 00402230    mov         ecx,ebx
 00402232    test        ecx,ecx
>00402234    jns         00402239
 00402236    add         ecx,3
 00402239    sar         ecx,2
 0040223C    mov         edi,dword ptr ds:[55C620]
 00402242    mov         dword ptr [edi+ecx*4-0C],eax
 00402246    mov         ecx,dword ptr [edx]
 00402248    mov         dword ptr [ebp-8],ecx
 0040224B    mov         ecx,dword ptr [ebp-8]
 0040224E    mov         dword ptr [ecx+4],eax
 00402251    mov         ecx,dword ptr [ebp-8]
 00402254    mov         dword ptr [eax],ecx
 00402256    mov         eax,esi
 00402258    mov         edx,dword ptr [edx+8]
 0040225B    or          edx,2
 0040225E    mov         dword ptr [eax],edx
 00402260    add         eax,4
 00402263    mov         dword ptr [ebp-4],eax
 00402266    inc         dword ptr ds:[55C5B0]
 0040226C    sub         ebx,4
 0040226F    add         dword ptr ds:[55C5B4],ebx
 00402275    call        @TryFinallyExit
>0040227A    jmp         00402303
 0040227F    cmp         ebx,dword ptr ds:[55C618]
>00402285    jg          004022D1
 00402287    sub         dword ptr ds:[55C618],ebx
 0040228D    cmp         dword ptr ds:[55C618],0C
>00402294    jge         004022A3
 00402296    add         ebx,dword ptr ds:[55C618]
 0040229C    xor         eax,eax
 0040229E    mov         [0055C618],eax
 004022A3    mov         eax,[0055C61C]
 004022A8    add         dword ptr ds:[55C61C],ebx
 004022AE    mov         edx,ebx
 004022B0    or          edx,2
 004022B3    mov         dword ptr [eax],edx
 004022B5    add         eax,4
 004022B8    mov         dword ptr [ebp-4],eax
 004022BB    inc         dword ptr ds:[55C5B0]
 004022C1    sub         ebx,4
 004022C4    add         dword ptr ds:[55C5B4],ebx
 004022CA    call        @TryFinallyExit
>004022CF    jmp         00402303
 004022D1    mov         eax,ebx
 004022D3    call        TryHarder
 004022D8    mov         dword ptr [ebp-4],eax
 004022DB    xor         eax,eax
 004022DD    pop         edx
 004022DE    pop         ecx
 004022DF    pop         ecx
 004022E0    mov         dword ptr fs:[eax],edx
 004022E3    push        402303
 004022E8    cmp         byte ptr ds:[55C049],0;gvar_0055C049
>004022EF    je          004022FB
 004022F1    push        55C5C8
 004022F6    call        kernel32.LeaveCriticalSection
 004022FB    ret
>004022FC    jmp         @HandleFinally
>00402301    jmp         004022E8
 00402303    mov         eax,dword ptr [ebp-4]
 00402306    pop         edi
 00402307    pop         esi
 00402308    pop         ebx
 00402309    pop         ecx
 0040230A    pop         ecx
 0040230B    pop         ebp
 0040230C    ret
*}
end;

//00402310
function SysFreeMem(P:Pointer):Integer;
begin
{*
 00402310    push        ebp
 00402311    mov         ebp,esp
 00402313    push        ecx
 00402314    push        ebx
 00402315    push        esi
 00402316    push        edi
 00402317    mov         ebx,eax
 00402319    xor         eax,eax
 0040231B    mov         [0055C5C4],eax
 00402320    cmp         byte ptr ds:[55C5C0],0
>00402327    jne         00402348
 00402329    call        InitAllocator
 0040232E    test        al,al
>00402330    jne         00402348
 00402332    mov         dword ptr ds:[55C5C4],8
 0040233C    mov         dword ptr [ebp-4],8
>00402343    jmp         004024A9
 00402348    xor         ecx,ecx
 0040234A    push        ebp
 0040234B    push        4024A2
 00402350    push        dword ptr fs:[ecx]
 00402353    mov         dword ptr fs:[ecx],esp
 00402356    cmp         byte ptr ds:[55C049],0;gvar_0055C049
>0040235D    je          00402369
 0040235F    push        55C5C8
 00402364    call        kernel32.EnterCriticalSection
 00402369    mov         esi,ebx
 0040236B    sub         esi,4
 0040236E    mov         ebx,dword ptr [esi]
 00402370    test        bl,2
>00402373    jne         00402384
 00402375    mov         dword ptr ds:[55C5C4],9
>0040237F    jmp         00402479
 00402384    dec         dword ptr ds:[55C5B0]
 0040238A    mov         eax,ebx
 0040238C    and         eax,7FFFFFFC
 00402391    sub         eax,4
 00402394    sub         dword ptr ds:[55C5B4],eax
 0040239A    test        bl,1
>0040239D    je          004023E4
 0040239F    mov         eax,esi
 004023A1    sub         eax,0C
 004023A4    mov         edx,dword ptr [eax+8]
 004023A7    cmp         edx,0C
>004023AA    jl          004023B4
 004023AC    test        edx,80000003
>004023B2    je          004023C3
 004023B4    mov         dword ptr ds:[55C5C4],0A
>004023BE    jmp         00402479
 004023C3    mov         eax,esi
 004023C5    sub         eax,edx
 004023C7    cmp         edx,dword ptr [eax+8]
>004023CA    je          004023DB
 004023CC    mov         dword ptr ds:[55C5C4],0A
>004023D6    jmp         00402479
 004023DB    add         ebx,edx
 004023DD    mov         esi,eax
 004023DF    call        DeleteFree
 004023E4    and         ebx,7FFFFFFC
 004023EA    mov         eax,esi
 004023EC    add         eax,ebx
 004023EE    mov         edi,eax
 004023F0    cmp         edi,dword ptr ds:[55C61C]
>004023F6    jne         00402424
 004023F8    sub         dword ptr ds:[55C61C],ebx
 004023FE    add         dword ptr ds:[55C618],ebx
 00402404    cmp         dword ptr ds:[55C618],3C00
>0040240E    jle         00402415
 00402410    call        FreeCurAlloc
 00402415    xor         eax,eax
 00402417    mov         dword ptr [ebp-4],eax
 0040241A    call        @TryFinallyExit
>0040241F    jmp         004024A9
 00402424    mov         edx,dword ptr [eax]
 00402426    test        dl,2
>00402429    je          00402447
 0040242B    and         edx,7FFFFFFC
 00402431    cmp         edx,4
>00402434    jge         00402442
 00402436    mov         dword ptr ds:[55C5C4],0B
>00402440    jmp         00402479
 00402442    or          dword ptr [eax],1
>00402445    jmp         00402470
 00402447    mov         eax,edi
 00402449    cmp         dword ptr [eax+4],0
>0040244D    je          0040245A
 0040244F    cmp         dword ptr [eax],0
>00402452    je          0040245A
 00402454    cmp         dword ptr [eax+8],0C
>00402458    jge         00402466
 0040245A    mov         dword ptr ds:[55C5C4],0B
>00402464    jmp         00402479
 00402466    mov         edx,dword ptr [eax+8]
 00402469    add         ebx,edx
 0040246B    call        DeleteFree
 00402470    mov         edx,ebx
 00402472    mov         eax,esi
 00402474    call        InsertFree
 00402479    mov         eax,[0055C5C4]
 0040247E    mov         dword ptr [ebp-4],eax
 00402481    xor         eax,eax
 00402483    pop         edx
 00402484    pop         ecx
 00402485    pop         ecx
 00402486    mov         dword ptr fs:[eax],edx
 00402489    push        4024A9
 0040248E    cmp         byte ptr ds:[55C049],0;gvar_0055C049
>00402495    je          004024A1
 00402497    push        55C5C8
 0040249C    call        kernel32.LeaveCriticalSection
 004024A1    ret
>004024A2    jmp         @HandleFinally
>004024A7    jmp         0040248E
 004024A9    mov         eax,dword ptr [ebp-4]
 004024AC    pop         edi
 004024AD    pop         esi
 004024AE    pop         ebx
 004024AF    pop         ecx
 004024B0    pop         ebp
 004024B1    ret
*}
end;

//004024B4
function ResizeInPlace(p:Pointer; newSize:Integer):Boolean;
begin
{*
 004024B4    push        ebx
 004024B5    push        esi
 004024B6    push        edi
 004024B7    push        ebp
 004024B8    add         esp,0FFFFFFF8
 004024BB    mov         esi,edx
 004024BD    add         esi,7
 004024C0    and         esi,0FFFFFFFC
 004024C3    cmp         esi,0C
>004024C6    jge         004024CD
 004024C8    mov         esi,0C
 004024CD    mov         ebp,eax
 004024CF    sub         ebp,4
 004024D2    mov         edi,dword ptr [ebp]
 004024D5    and         edi,7FFFFFFC
 004024DB    mov         eax,ebp
 004024DD    add         eax,edi
 004024DF    mov         ebx,eax
 004024E1    cmp         edi,esi
>004024E3    jne         004024EC
 004024E5    mov         al,1
>004024E7    jmp         00402687
 004024EC    cmp         edi,esi
>004024EE    jle         00402577
 004024F4    mov         edx,edi
 004024F6    sub         edx,esi
 004024F8    mov         dword ptr [esp],edx
 004024FB    cmp         ebx,dword ptr ds:[55C61C]
>00402501    jne         0040253B
 00402503    mov         eax,dword ptr [esp]
 00402506    sub         dword ptr ds:[55C61C],eax
 0040250C    mov         eax,dword ptr [esp]
 0040250F    add         dword ptr ds:[55C618],eax
 00402515    cmp         dword ptr ds:[55C618],0C
>0040251C    jge         0040266E
 00402522    mov         eax,dword ptr [esp]
 00402525    add         dword ptr ds:[55C61C],eax
 0040252B    mov         eax,dword ptr [esp]
 0040252E    sub         dword ptr ds:[55C618],eax
 00402534    mov         esi,edi
>00402536    jmp         0040266E
 0040253B    mov         ebx,eax
 0040253D    test        byte ptr [ebx],2
>00402540    jne         0040254F
 00402542    mov         eax,ebx
 00402544    mov         edx,dword ptr [eax+8]
 00402547    add         dword ptr [esp],edx
 0040254A    call        DeleteFree
 0040254F    cmp         dword ptr [esp],0C
>00402553    jl          00402570
 00402555    mov         ebx,ebp
 00402557    add         ebx,esi
 00402559    mov         eax,dword ptr [esp]
 0040255C    or          eax,2
 0040255F    mov         dword ptr [ebx],eax
 00402561    mov         eax,ebx
 00402563    add         eax,4
 00402566    call        InternalFreeMem
>0040256B    jmp         0040266E
 00402570    mov         esi,edi
>00402572    jmp         0040266E
 00402577    mov         eax,esi
 00402579    sub         eax,edi
 0040257B    mov         dword ptr [esp+4],eax
 0040257F    cmp         ebx,dword ptr ds:[55C61C]
>00402585    jne         004025EE
 00402587    mov         eax,[0055C618]
 0040258C    cmp         eax,dword ptr [esp+4]
>00402590    jl          004025E5
 00402592    mov         eax,dword ptr [esp+4]
 00402596    sub         dword ptr ds:[55C618],eax
 0040259C    mov         eax,dword ptr [esp+4]
 004025A0    add         dword ptr ds:[55C61C],eax
 004025A6    cmp         dword ptr ds:[55C618],0C
>004025AD    jge         004025C7
 004025AF    mov         eax,[0055C618]
 004025B4    add         dword ptr ds:[55C61C],eax
 004025BA    add         esi,dword ptr ds:[55C618]
 004025C0    xor         eax,eax
 004025C2    mov         [0055C618],eax
 004025C7    mov         eax,esi
 004025C9    sub         eax,edi
 004025CB    add         dword ptr ds:[55C5B4],eax
 004025D1    mov         eax,dword ptr [ebp]
 004025D4    and         eax,80000003
 004025D9    or          esi,eax
 004025DB    mov         dword ptr [ebp],esi
 004025DE    mov         al,1
>004025E0    jmp         00402687
 004025E5    call        FreeCurAlloc
 004025EA    mov         ebx,ebp
 004025EC    add         ebx,edi
 004025EE    test        byte ptr [ebx],2
>004025F1    jne         00402640
 004025F3    mov         edx,ebx
 004025F5    mov         eax,edx
 004025F7    mov         ecx,dword ptr [eax+8]
 004025FA    mov         dword ptr [esp],ecx
 004025FD    mov         ecx,dword ptr [esp]
 00402600    cmp         ecx,dword ptr [esp+4]
>00402604    jge         00402614
 00402606    add         edx,dword ptr [esp]
 00402609    mov         ebx,edx
 0040260B    mov         eax,dword ptr [esp]
 0040260E    sub         dword ptr [esp+4],eax
>00402612    jmp         00402640
 00402614    call        DeleteFree
 00402619    mov         eax,dword ptr [esp+4]
 0040261D    sub         dword ptr [esp],eax
 00402620    cmp         dword ptr [esp],0C
>00402624    jl          00402634
 00402626    mov         eax,ebp
 00402628    add         eax,esi
 0040262A    mov         edx,dword ptr [esp]
 0040262D    call        InsertFree
>00402632    jmp         0040266E
 00402634    add         esi,dword ptr [esp]
 00402637    mov         ebx,ebp
 00402639    add         ebx,esi
 0040263B    and         dword ptr [ebx],0FFFFFFFE
>0040263E    jmp         0040266E
 00402640    mov         eax,dword ptr [ebx]
 00402642    test        eax,80000000
>00402647    je          0040266A
 00402649    and         eax,7FFFFFFC
 0040264E    add         eax,ebx
 00402650    mov         ebx,eax
 00402652    mov         edx,dword ptr [esp+4]
 00402656    mov         eax,ebx
 00402658    call        NewCommitAt
 0040265D    test        al,al
>0040265F    je          0040266A
 00402661    mov         ebx,ebp
 00402663    add         ebx,edi
>00402665    jmp         00402577
 0040266A    xor         eax,eax
>0040266C    jmp         00402687
 0040266E    mov         eax,esi
 00402670    sub         eax,edi
 00402672    add         dword ptr ds:[55C5B4],eax
 00402678    mov         eax,dword ptr [ebp]
 0040267B    and         eax,80000003
 00402680    or          esi,eax
 00402682    mov         dword ptr [ebp],esi
 00402685    mov         al,1
 00402687    pop         ecx
 00402688    pop         edx
 00402689    pop         ebp
 0040268A    pop         edi
 0040268B    pop         esi
 0040268C    pop         ebx
 0040268D    ret
*}
end;

//00402690
function SysReallocMem(P:Pointer; Size:Integer):Pointer;
begin
{*
 00402690    push        ebp
 00402691    mov         ebp,esp
 00402693    push        ecx
 00402694    push        ebx
 00402695    push        esi
 00402696    push        edi
 00402697    mov         esi,edx
 00402699    mov         ebx,eax
 0040269B    cmp         byte ptr ds:[55C5C0],0
>004026A2    jne         004026B7
 004026A4    call        InitAllocator
 004026A9    test        al,al
>004026AB    jne         004026B7
 004026AD    xor         eax,eax
 004026AF    mov         dword ptr [ebp-4],eax
>004026B2    jmp         00402748
 004026B7    xor         edx,edx
 004026B9    push        ebp
 004026BA    push        402741
 004026BF    push        dword ptr fs:[edx]
 004026C2    mov         dword ptr fs:[edx],esp
 004026C5    cmp         byte ptr ds:[55C049],0;gvar_0055C049
>004026CC    je          004026D8
 004026CE    push        55C5C8
 004026D3    call        kernel32.EnterCriticalSection
 004026D8    mov         edx,esi
 004026DA    mov         eax,ebx
 004026DC    call        ResizeInPlace
 004026E1    test        al,al
>004026E3    je          004026EA
 004026E5    mov         dword ptr [ebp-4],ebx
>004026E8    jmp         00402720
 004026EA    mov         eax,esi
 004026EC    call        SysGetMem
 004026F1    mov         edi,eax
 004026F3    mov         eax,ebx
 004026F5    sub         eax,4
 004026F8    mov         eax,dword ptr [eax]
 004026FA    and         eax,7FFFFFFC
 004026FF    sub         eax,4
 00402702    cmp         esi,eax
>00402704    jge         00402708
 00402706    mov         eax,esi
 00402708    test        edi,edi
>0040270A    je          0040271D
 0040270C    mov         edx,edi
 0040270E    mov         ecx,ebx
 00402710    xchg        eax,ecx
 00402711    call        Move
 00402716    mov         eax,ebx
 00402718    call        SysFreeMem
 0040271D    mov         dword ptr [ebp-4],edi
 00402720    xor         eax,eax
 00402722    pop         edx
 00402723    pop         ecx
 00402724    pop         ecx
 00402725    mov         dword ptr fs:[eax],edx
 00402728    push        402748
 0040272D    cmp         byte ptr ds:[55C049],0;gvar_0055C049
>00402734    je          00402740
 00402736    push        55C5C8
 0040273B    call        kernel32.LeaveCriticalSection
 00402740    ret
>00402741    jmp         @HandleFinally
>00402746    jmp         0040272D
 00402748    mov         eax,dword ptr [ebp-4]
 0040274B    pop         edi
 0040274C    pop         esi
 0040274D    pop         ebx
 0040274E    pop         ecx
 0040274F    pop         ebp
 00402750    ret
*}
end;

//00402754
function @GetMem(size:Integer):Pointer;
begin
{*
 00402754    push        ebx
 00402755    test        eax,eax
>00402757    jle         0040276E
 00402759    call        dword ptr ds:[53D044]
 0040275F    mov         ebx,eax
 00402761    test        ebx,ebx
>00402763    jne         00402770
 00402765    mov         al,1
 00402767    call        Error
>0040276C    jmp         00402770
 0040276E    xor         ebx,ebx
 00402770    mov         eax,ebx
 00402772    pop         ebx
 00402773    ret
*}
end;

//00402774
function @FreeMem(p:Pointer):Integer;
begin
{*
 00402774    push        ebx
 00402775    test        eax,eax
>00402777    je          0040278E
 00402779    call        dword ptr ds:[53D048]
 0040277F    mov         ebx,eax
 00402781    test        ebx,ebx
>00402783    je          00402790
 00402785    mov         al,2
 00402787    call        Error
>0040278C    jmp         00402790
 0040278E    xor         ebx,ebx
 00402790    mov         eax,ebx
 00402792    pop         ebx
 00402793    ret
*}
end;

//00402794
function @ReallocMem(var P:Pointer; NewSize:Integer):Pointer;
begin
{*
 00402794    mov         ecx,dword ptr [eax]
 00402796    test        ecx,ecx
>00402798    je          004027CC
 0040279A    test        edx,edx
>0040279C    je          004027B6
 0040279E    push        eax
 0040279F    mov         eax,ecx
 004027A1    call        dword ptr ds:[53D04C]
 004027A7    pop         ecx
 004027A8    or          eax,eax
>004027AA    je          004027C5
 004027AC    mov         dword ptr [ecx],eax
 004027AE    ret
 004027AF    mov         al,2
>004027B1    jmp         Error
 004027B6    mov         dword ptr [eax],edx
 004027B8    mov         eax,ecx
 004027BA    call        dword ptr ds:[53D048]
 004027C0    or          eax,eax
>004027C2    jne         004027AF
 004027C4    ret
 004027C5    mov         al,1
>004027C7    jmp         Error
 004027CC    test        edx,edx
>004027CE    je          004027E0
 004027D0    push        eax
 004027D1    mov         eax,edx
 004027D3    call        dword ptr ds:[53D044]
 004027D9    pop         ecx
 004027DA    or          eax,eax
>004027DC    je          004027C5
 004027DE    mov         dword ptr [ecx],eax
 004027E0    ret
*}
end;

//004027E4
procedure GetMemoryManager(var MemMgr:TMemoryManager);
begin
{*
 004027E4    mov         edx,dword ptr ds:[53D044];^SysGetMem:Pointer
 004027EA    mov         dword ptr [eax],edx
 004027EC    mov         edx,dword ptr ds:[53D048];^SysFreeMem:Integer
 004027F2    mov         dword ptr [eax+4],edx
 004027F5    mov         edx,dword ptr ds:[53D04C];^SysReallocMem:Pointer
 004027FB    mov         dword ptr [eax+8],edx
 004027FE    ret
*}
end;

//00402800
function ExceptObject:TObject;
begin
{*
 00402800    call        @GetTls
 00402805    cmp         dword ptr [eax+0],0;{RaiseListPtr:Pointer}
>0040280C    je          0040281D
 0040280E    call        @GetTls
 00402813    mov         eax,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00402819    mov         eax,dword ptr [eax+8]
 0040281C    ret
 0040281D    xor         eax,eax
 0040281F    ret
*}
end;

//00402820
function ExceptAddr:Pointer;
begin
{*
 00402820    call        @GetTls
 00402825    cmp         dword ptr [eax+0],0;{RaiseListPtr:Pointer}
>0040282C    je          0040283D
 0040282E    call        @GetTls
 00402833    mov         eax,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00402839    mov         eax,dword ptr [eax+4]
 0040283C    ret
 0040283D    xor         eax,eax
 0040283F    ret
*}
end;

//00402840
function AcquireExceptionObject:Pointer;
begin
{*
 00402840    push        ebx
 00402841    push        esi
 00402842    call        @GetTls
 00402847    cmp         dword ptr [eax+0],0;{RaiseListPtr:Pointer}
>0040284E    je          0040286A
 00402850    call        @GetTls
 00402855    mov         esi,dword ptr [eax+0];{RaiseListPtr:Pointer}
 0040285B    mov         ebx,dword ptr [esi+8]
 0040285E    call        @GetTls
 00402863    xor         eax,eax
 00402865    mov         dword ptr [esi+8],eax
>00402868    jmp         0040286C
 0040286A    xor         ebx,ebx
 0040286C    mov         eax,ebx
 0040286E    pop         esi
 0040286F    pop         ebx
 00402870    ret
*}
end;

//00402874
function RaiseList:Pointer;
begin
{*
 00402874    call        @GetTls
 00402879    mov         eax,dword ptr [eax+0];{RaiseListPtr:Pointer}
 0040287F    ret
*}
end;

//00402880
procedure RunErrorAt(ErrCode:Integer; ErrorAtAddr:Pointer);
begin
{*
 00402880    mov         dword ptr ds:[53D004],edx
 00402886    call        @Halt
 0040288B    ret
*}
end;

//0040288C
procedure ErrorAt(ErrorCode:Byte; ErrorAddr:Pointer);
begin
{*
 0040288C    push        ebx
 0040288D    push        esi
 0040288E    mov         esi,edx
 00402890    mov         ebx,eax
 00402892    and         bl,7F
 00402895    cmp         dword ptr ds:[55C008],0;gvar_0055C008
>0040289C    je          004028A8
 0040289E    mov         edx,esi
 004028A0    mov         eax,ebx
 004028A2    call        dword ptr ds:[55C008]
 004028A8    test        bl,bl
>004028AA    jne         004028B9
 004028AC    call        @GetTls
 004028B1    mov         ebx,dword ptr [eax+4];{InOutRes:Integer}
>004028B7    jmp         004028C8
 004028B9    cmp         bl,18
>004028BC    ja          004028C8
 004028BE    xor         eax,eax
 004028C0    mov         al,bl
 004028C2    mov         bl,byte ptr [eax+53D050]
 004028C8    xor         eax,eax
 004028CA    mov         al,bl
 004028CC    mov         edx,esi
 004028CE    call        RunErrorAt
 004028D3    pop         esi
 004028D4    pop         ebx
 004028D5    ret
*}
end;

//004028D8
procedure Error(errorCode:TRuntimeError);
begin
{*
 004028D8    and         eax,7F
 004028DB    mov         edx,dword ptr [esp]
>004028DE    jmp         ErrorAt
 004028E3    ret
*}
end;

//004028E4
procedure @_IOTest;
begin
{*
 004028E4    push        eax
 004028E5    push        edx
 004028E6    push        ecx
 004028E7    call        @GetTls
 004028EC    cmp         dword ptr [eax+4],0;{InOutRes:Integer}
 004028F3    pop         ecx
 004028F4    pop         edx
 004028F5    pop         eax
>004028F6    jne         004028F9
 004028F8    ret
 004028F9    xor         eax,eax
>004028FB    jmp         Error
 00402900    ret
*}
end;

//00402904
procedure SetInOutRes(NewValue:Integer);
begin
{*
 00402904    push        ebx
 00402905    mov         ebx,eax
 00402907    call        @GetTls
 0040290C    mov         dword ptr [eax+4],ebx;{InOutRes:Integer}
 00402912    pop         ebx
 00402913    ret
*}
end;

//00402914
procedure @Copy(S:ShortString; Index:Integer; Count:Integer; Result:ShortString);
begin
{*
 00402914    push        esi
 00402915    push        edi
 00402916    mov         esi,eax
 00402918    mov         edi,dword ptr [esp+0C]
 0040291C    xor         eax,eax
 0040291E    or          al,byte ptr [esi]
>00402920    je          0040294D
 00402922    test        edx,edx
>00402924    jle         0040293E
 00402926    cmp         edx,eax
>00402928    jg          00402945
 0040292A    sub         eax,edx
 0040292C    inc         eax
 0040292D    test        ecx,ecx
>0040292F    jl          00402945
 00402931    cmp         ecx,eax
>00402933    jg          00402949
 00402935    add         esi,edx
 00402937    mov         byte ptr [edi],cl
 00402939    inc         edi
 0040293A    rep movs    byte ptr [edi],byte ptr [esi]
>0040293C    jmp         0040294F
 0040293E    mov         edx,1
>00402943    jmp         0040292A
 00402945    xor         ecx,ecx
>00402947    jmp         00402935
 00402949    mov         ecx,eax
>0040294B    jmp         00402935
 0040294D    mov         byte ptr [edi],al
 0040294F    pop         edi
 00402950    pop         esi
 00402951    ret         4
*}
end;

//00402958
function IOResult:Integer;
begin
{*
 00402958    push        ebx
 00402959    call        @GetTls
 0040295E    mov         ebx,dword ptr [eax+4];{InOutRes:Integer}
 00402964    call        @GetTls
 00402969    xor         edx,edx
 0040296B    mov         dword ptr [eax+4],edx;{InOutRes:Integer}
 00402971    mov         eax,ebx
 00402973    pop         ebx
 00402974    ret
*}
end;

//00402978
procedure Move(const Source:void ; var Dest:void ; Count:Integer);
begin
{*
 00402978    push        esi
 00402979    push        edi
 0040297A    mov         esi,eax
 0040297C    mov         edi,edx
 0040297E    mov         eax,ecx
 00402980    cmp         edi,esi
>00402982    ja          00402997
>00402984    je          004029B5
 00402986    sar         ecx,2
>00402989    js          004029B5
 0040298B    rep movs    dword ptr [edi],dword ptr [esi]
 0040298D    mov         ecx,eax
 0040298F    and         ecx,3
 00402992    rep movs    byte ptr [edi],byte ptr [esi]
 00402994    pop         edi
 00402995    pop         esi
 00402996    ret
 00402997    lea         esi,[ecx+esi-4]
 0040299B    lea         edi,[ecx+edi-4]
 0040299F    sar         ecx,2
>004029A2    js          004029B5
 004029A4    std
 004029A5    rep movs    dword ptr [edi],dword ptr [esi]
 004029A7    mov         ecx,eax
 004029A9    and         ecx,3
 004029AC    add         esi,3
 004029AF    add         edi,3
 004029B2    rep movs    byte ptr [edi],byte ptr [esi]
 004029B4    cld
 004029B5    pop         edi
 004029B6    pop         esi
 004029B7    ret
*}
end;

//004029B8
function GetParamStr(P:PAnsiChar; var Param:AnsiString):PAnsiChar;
begin
{*
 004029B8    push        ebx
 004029B9    push        esi
 004029BA    push        edi
 004029BB    push        ebp
 004029BC    mov         esi,edx
 004029BE    mov         ebx,eax
>004029C0    jmp         004029CA
 004029C2    push        ebx
 004029C3    call        user32.CharNextA
 004029C8    mov         ebx,eax
 004029CA    mov         al,byte ptr [ebx]
 004029CC    test        al,al
>004029CE    je          004029D4
 004029D0    cmp         al,20
>004029D2    jbe         004029C2
 004029D4    cmp         byte ptr [ebx],22
>004029D7    jne         004029E4
 004029D9    cmp         byte ptr [ebx+1],22
>004029DD    jne         004029E4
 004029DF    add         ebx,2
>004029E2    jmp         004029CA
 004029E4    xor         ebp,ebp
 004029E6    mov         edi,ebx
>004029E8    jmp         00402A2D
 004029EA    cmp         al,22
>004029EC    jne         00402A1F
 004029EE    push        ebx
 004029EF    call        user32.CharNextA
 004029F4    mov         ebx,eax
>004029F6    jmp         00402A06
 004029F8    push        ebx
 004029F9    call        user32.CharNextA
 004029FE    mov         edx,eax
 00402A00    sub         edx,ebx
 00402A02    add         ebp,edx
 00402A04    mov         ebx,eax
 00402A06    mov         al,byte ptr [ebx]
 00402A08    test        al,al
>00402A0A    je          00402A10
 00402A0C    cmp         al,22
>00402A0E    jne         004029F8
 00402A10    cmp         byte ptr [ebx],0
>00402A13    je          00402A2D
 00402A15    push        ebx
 00402A16    call        user32.CharNextA
 00402A1B    mov         ebx,eax
>00402A1D    jmp         00402A2D
 00402A1F    push        ebx
 00402A20    call        user32.CharNextA
 00402A25    mov         edx,eax
 00402A27    sub         edx,ebx
 00402A29    add         ebp,edx
 00402A2B    mov         ebx,eax
 00402A2D    mov         al,byte ptr [ebx]
 00402A2F    cmp         al,20
>00402A31    ja          004029EA
 00402A33    mov         eax,esi
 00402A35    mov         edx,ebp
 00402A37    call        @LStrSetLength
 00402A3C    mov         ebx,edi
 00402A3E    mov         edi,dword ptr [esi]
 00402A40    xor         esi,esi
>00402A42    jmp         00402A95
 00402A44    cmp         al,22
>00402A46    jne         00402A80
 00402A48    push        ebx
 00402A49    call        user32.CharNextA
 00402A4E    mov         ebx,eax
>00402A50    jmp         00402A67
 00402A52    push        ebx
 00402A53    call        user32.CharNextA
 00402A58    cmp         eax,ebx
>00402A5A    jbe         00402A67
 00402A5C    mov         dl,byte ptr [ebx]
 00402A5E    mov         byte ptr [edi+esi],dl
 00402A61    inc         ebx
 00402A62    inc         esi
 00402A63    cmp         eax,ebx
>00402A65    ja          00402A5C
 00402A67    mov         al,byte ptr [ebx]
 00402A69    test        al,al
>00402A6B    je          00402A71
 00402A6D    cmp         al,22
>00402A6F    jne         00402A52
 00402A71    cmp         byte ptr [ebx],0
>00402A74    je          00402A95
 00402A76    push        ebx
 00402A77    call        user32.CharNextA
 00402A7C    mov         ebx,eax
>00402A7E    jmp         00402A95
 00402A80    push        ebx
 00402A81    call        user32.CharNextA
 00402A86    cmp         eax,ebx
>00402A88    jbe         00402A95
 00402A8A    mov         dl,byte ptr [ebx]
 00402A8C    mov         byte ptr [edi+esi],dl
 00402A8F    inc         ebx
 00402A90    inc         esi
 00402A91    cmp         eax,ebx
>00402A93    ja          00402A8A
 00402A95    mov         al,byte ptr [ebx]
 00402A97    cmp         al,20
>00402A99    ja          00402A44
 00402A9B    mov         eax,ebx
 00402A9D    pop         ebp
 00402A9E    pop         edi
 00402A9F    pop         esi
 00402AA0    pop         ebx
 00402AA1    ret
*}
end;

//00402AA4
function ParamCount:Integer;
begin
{*
 00402AA4    push        ebp
 00402AA5    mov         ebp,esp
 00402AA7    push        0
 00402AA9    push        ebx
 00402AAA    push        esi
 00402AAB    xor         eax,eax
 00402AAD    push        ebp
 00402AAE    push        402AF5
 00402AB3    push        dword ptr fs:[eax]
 00402AB6    mov         dword ptr fs:[eax],esp
 00402AB9    xor         esi,esi
 00402ABB    call        kernel32.GetCommandLineA
 00402AC0    lea         edx,[ebp-4]
 00402AC3    call        GetParamStr
 00402AC8    mov         ebx,eax
 00402ACA    lea         edx,[ebp-4]
 00402ACD    mov         eax,ebx
 00402ACF    call        GetParamStr
 00402AD4    mov         ebx,eax
 00402AD6    cmp         dword ptr [ebp-4],0
>00402ADA    je          00402ADF
 00402ADC    inc         esi
>00402ADD    jmp         00402ACA
 00402ADF    xor         eax,eax
 00402AE1    pop         edx
 00402AE2    pop         ecx
 00402AE3    pop         ecx
 00402AE4    mov         dword ptr fs:[eax],edx
 00402AE7    push        402AFC
 00402AEC    lea         eax,[ebp-4]
 00402AEF    call        @LStrClr
 00402AF4    ret
>00402AF5    jmp         @HandleFinally
>00402AFA    jmp         00402AEC
 00402AFC    mov         eax,esi
 00402AFE    pop         esi
 00402AFF    pop         ebx
 00402B00    pop         ecx
 00402B01    pop         ebp
 00402B02    ret
*}
end;

//00402B04
function ParamStr(Index:Integer):String;
begin
{*
 00402B04    push        ebx
 00402B05    push        esi
 00402B06    push        edi
 00402B07    add         esp,0FFFFFEF8
 00402B0D    mov         ebx,edx
 00402B0F    mov         esi,eax
 00402B11    mov         eax,ebx
 00402B13    call        @LStrClr
 00402B18    test        esi,esi
>00402B1A    jne         00402B3A
 00402B1C    push        105
 00402B21    lea         eax,[esp+4]
 00402B25    push        eax
 00402B26    push        0
 00402B28    call        kernel32.GetModuleFileNameA
 00402B2D    mov         ecx,eax
 00402B2F    mov         edx,esp
 00402B31    mov         eax,ebx
 00402B33    call        @LStrFromPCharLen
>00402B38    jmp         00402B58
 00402B3A    call        kernel32.GetCommandLineA
 00402B3F    mov         edi,eax
 00402B41    mov         edx,ebx
 00402B43    mov         eax,edi
 00402B45    call        GetParamStr
 00402B4A    mov         edi,eax
 00402B4C    test        esi,esi
>00402B4E    je          00402B58
 00402B50    cmp         dword ptr [ebx],0
>00402B53    je          00402B58
 00402B55    dec         esi
>00402B56    jmp         00402B41
 00402B58    add         esp,108
 00402B5E    pop         edi
 00402B5F    pop         esi
 00402B60    pop         ebx
 00402B61    ret
*}
end;

//00402B64
procedure Randomize;
begin
{*
 00402B64    add         esp,0FFFFFFF8
 00402B67    push        esp
 00402B68    call        kernel32.QueryPerformanceCounter
 00402B6D    test        eax,eax
>00402B6F    je          00402B7C
 00402B71    mov         eax,dword ptr [esp]
 00402B74    mov         [0053D008],eax
 00402B79    pop         ecx
 00402B7A    pop         edx
 00402B7B    ret
 00402B7C    call        kernel32.GetTickCount
 00402B81    mov         [0053D008],eax
 00402B86    pop         ecx
 00402B87    pop         edx
 00402B88    ret
*}
end;

//00402B8C
function UpCase(Ch:Char):Char;
begin
{*
 00402B8C    cmp         al,61
>00402B8E    jb          00402B96
 00402B90    cmp         al,7A
>00402B92    ja          00402B96
 00402B94    sub         al,20
 00402B96    ret
*}
end;

//00402B98
procedure Set8087CW(NewCW:Word);
begin
{*
 00402B98    mov         [0053D024],ax
 00402B9E    fnclex
 00402BA0    fldcw       word ptr ds:[53D024]
 00402BA6    ret
*}
end;

//00402BA8
{*function sub_00402BA8:?;
begin
 00402BA8    push        0
 00402BAA    fnstcw      word ptr [esp]
 00402BAD    pop         eax
 00402BAE    ret
end;*}

//00402BB0
procedure @COS;
begin
{*
 00402BB0    fcos
 00402BB2    fnstsw      al
 00402BB4    sahf
>00402BB5    jp          00402BB8
 00402BB7    ret
 00402BB8    fstp        st(0)
 00402BBA    fldz
 00402BBC    ret
*}
end;

//00402BC0
procedure @SIN;
begin
{*
 00402BC0    fsin
 00402BC2    fnstsw      al
 00402BC4    sahf
>00402BC5    jp          00402BC8
 00402BC7    ret
 00402BC8    fstp        st(0)
 00402BCA    fldz
 00402BCC    ret
*}
end;

//00402BD0
procedure @FRAC;
begin
{*
 00402BD0    fld         st(0)
 00402BD2    sub         esp,4
 00402BD5    fnstcw      word ptr [esp]
 00402BD8    fnstcw      word ptr [esp+2]
 00402BDC    wait
 00402BDD    or          word ptr [esp+2],0F00
 00402BE4    fldcw       word ptr [esp+2]
 00402BE8    frndint
 00402BEA    wait
 00402BEB    fldcw       word ptr [esp]
 00402BEE    add         esp,4
 00402BF1    fsubp       st(1),st
 00402BF3    ret
*}
end;

//00402BF4
procedure @ROUND;
begin
{*
 00402BF4    sub         esp,8
 00402BF7    fistp       qword ptr [esp]
 00402BFA    wait
 00402BFB    pop         eax
 00402BFC    pop         edx
 00402BFD    ret
*}
end;

//00402C00
function @TRUNC(X:Extended):Int64;
begin
{*
 00402C00    sub         esp,0C
 00402C03    fnstcw      word ptr [esp]
 00402C06    fnstcw      word ptr [esp+2]
 00402C0A    wait
 00402C0B    or          word ptr [esp+2],0F00
 00402C12    fldcw       word ptr [esp+2]
 00402C16    fistp       qword ptr [esp+4]
 00402C1A    wait
 00402C1B    fldcw       word ptr [esp]
 00402C1E    pop         ecx
 00402C1F    pop         eax
 00402C20    pop         edx
 00402C21    ret
*}
end;

//00402C24
procedure @AbstractError;
begin
{*
 00402C24    cmp         dword ptr ds:[55C028],0;gvar_0055C028
>00402C2B    je          00402C33
 00402C2D    call        dword ptr ds:[55C028]
 00402C33    mov         eax,0D2
>00402C38    jmp         @RunError
 00402C3D    ret
*}
end;

//00402C40
function OpenText(var t:TTextRec; Mode:Word):Integer;
begin
{*
 00402C40    push        ebx
 00402C41    push        esi
 00402C42    mov         esi,edx
 00402C44    mov         ebx,eax
 00402C46    mov         ax,word ptr [ebx+4]
 00402C4A    cmp         ax,0D7B0
>00402C4E    jb          00402C56
 00402C50    cmp         ax,0D7B3
>00402C54    jbe         00402C5D
 00402C56    mov         ebx,66
>00402C5B    jmp         00402C88
 00402C5D    cmp         ax,0D7B0
>00402C61    je          00402C6A
 00402C63    mov         eax,ebx
 00402C65    call        @Close
 00402C6A    mov         word ptr [ebx+4],si
 00402C6E    cmp         byte ptr [ebx+48],0
>00402C72    jne         00402C81
 00402C74    cmp         dword ptr [ebx+18],0
>00402C78    jne         00402C81
 00402C7A    mov         dword ptr [ebx+18],402D50;TextOpen:Integer
 00402C81    mov         eax,ebx
 00402C83    call        dword ptr [ebx+18]
 00402C86    mov         ebx,eax
 00402C88    test        ebx,ebx
>00402C8A    je          00402C93
 00402C8C    mov         eax,ebx
 00402C8E    call        SetInOutRes
 00402C93    mov         eax,ebx
 00402C95    pop         esi
 00402C96    pop         ebx
 00402C97    ret
*}
end;

//00402C98
function @RewritText(var T:TTextRec):Integer;
begin
{*
 00402C98    mov         dx,0D7B2
 00402C9C    call        OpenText
 00402CA1    ret
*}
end;

//00402CA4
function TextIn(var t:TTextRec):Integer;
begin
{*
 00402CA4    push        ebx
 00402CA5    mov         ebx,eax
 00402CA7    xor         eax,eax
 00402CA9    mov         dword ptr [ebx+10],eax
 00402CAC    xor         eax,eax
 00402CAE    mov         dword ptr [ebx+0C],eax
 00402CB1    push        0
 00402CB3    lea         eax,[ebx+10]
 00402CB6    push        eax
 00402CB7    mov         eax,dword ptr [ebx+8]
 00402CBA    push        eax
 00402CBB    mov         eax,dword ptr [ebx+14]
 00402CBE    push        eax
 00402CBF    mov         eax,dword ptr [ebx]
 00402CC1    push        eax
 00402CC2    call        kernel32.ReadFile
 00402CC7    test        eax,eax
>00402CC9    jne         00402CD9
 00402CCB    call        kernel32.GetLastError
 00402CD0    cmp         eax,6D
>00402CD3    jne         00402CDB
 00402CD5    xor         eax,eax
 00402CD7    pop         ebx
 00402CD8    ret
 00402CD9    xor         eax,eax
 00402CDB    pop         ebx
 00402CDC    ret
*}
end;

//00402CE0
function FileNOPProc(var t:void ):Integer;
begin
{*
 00402CE0    xor         eax,eax
 00402CE2    ret
*}
end;

//00402CE4
function TextOut(var t:TTextRec):Integer;
begin
{*
 00402CE4    push        ebx
 00402CE5    push        esi
 00402CE6    push        ecx
 00402CE7    mov         ebx,eax
 00402CE9    mov         esi,dword ptr [ebx+0C]
 00402CEC    test        esi,esi
>00402CEE    jne         00402CF4
 00402CF0    xor         eax,eax
>00402CF2    jmp         00402D1A
 00402CF4    push        0
 00402CF6    lea         eax,[esp+4]
 00402CFA    push        eax
 00402CFB    push        esi
 00402CFC    mov         eax,dword ptr [ebx+14]
 00402CFF    push        eax
 00402D00    mov         eax,dword ptr [ebx]
 00402D02    push        eax
 00402D03    call        kernel32.WriteFile
 00402D08    test        eax,eax
>00402D0A    jne         00402D13
 00402D0C    call        kernel32.GetLastError
>00402D11    jmp         00402D15
 00402D13    xor         eax,eax
 00402D15    xor         edx,edx
 00402D17    mov         dword ptr [ebx+0C],edx
 00402D1A    pop         edx
 00402D1B    pop         esi
 00402D1C    pop         ebx
 00402D1D    ret
*}
end;

//00402D20
function InternalClose(Handle:Integer):Boolean;
begin
{*
 00402D20    push        ebx
 00402D21    mov         ebx,eax
 00402D23    push        ebx
 00402D24    call        kernel32.CloseHandle
 00402D29    dec         eax
 00402D2A    sete        al
 00402D2D    pop         ebx
 00402D2E    ret
*}
end;

//00402D30
function TextClose(var t:TTextRec):Integer;
begin
{*
 00402D30    push        ebx
 00402D31    mov         ebx,eax
 00402D33    mov         word ptr [ebx+4],0D7B0
 00402D39    mov         eax,dword ptr [ebx]
 00402D3B    call        InternalClose
 00402D40    test        al,al
>00402D42    jne         00402D4B
 00402D44    call        kernel32.GetLastError
 00402D49    pop         ebx
 00402D4A    ret
 00402D4B    xor         eax,eax
 00402D4D    pop         ebx
 00402D4E    ret
*}
end;

//00402D50
function TextOpen(var t:TTextRec):Integer;
begin
{*
 00402D50    push        esi
 00402D51    mov         esi,eax
 00402D53    xor         eax,eax
 00402D55    mov         dword ptr [esi+0C],eax
 00402D58    mov         dword ptr [esi+10],eax
 00402D5B    mov         ax,word ptr [esi+4]
 00402D5F    sub         eax,0D7B1
>00402D64    je          00402D71
 00402D66    dec         eax
>00402D67    je          00402D89
 00402D69    dec         eax
>00402D6A    je          00402D9A
>00402D6C    jmp         00402ED8
 00402D71    mov         eax,80000000
 00402D76    mov         edx,1
 00402D7B    mov         ecx,3
 00402D80    mov         dword ptr [esi+1C],402CA4;TextIn:Integer
>00402D87    jmp         00402DB0
 00402D89    mov         eax,40000000
 00402D8E    mov         edx,1
 00402D93    mov         ecx,2
>00402D98    jmp         00402DA9
 00402D9A    mov         eax,0C0000000
 00402D9F    mov         edx,1
 00402DA4    mov         ecx,3
 00402DA9    mov         dword ptr [esi+1C],402CE4;TextOut:Integer
 00402DB0    mov         dword ptr [esi+24],402D30;TextClose:Integer
 00402DB7    mov         dword ptr [esi+20],402CE0;FileNOPProc:Integer
 00402DBE    cmp         byte ptr [esi+48],0
>00402DC2    je          00402E7A
 00402DC8    push        0
 00402DCA    push        80
 00402DCF    push        ecx
 00402DD0    push        0
 00402DD2    push        edx
 00402DD3    push        eax
 00402DD4    lea         eax,[esi+48]
 00402DD7    push        eax
 00402DD8    call        kernel32.CreateFileA
 00402DDD    cmp         eax,0FFFFFFFF
>00402DE0    je          00402EEE
 00402DE6    mov         dword ptr [esi],eax
 00402DE8    cmp         word ptr [esi+4],0D7B3
>00402DEE    jne         00402EB7
 00402DF4    dec         word ptr [esi+4]
 00402DF8    push        0
 00402DFA    push        dword ptr [esi]
 00402DFC    call        kernel32.GetFileSize
 00402E01    inc         eax
>00402E02    je          00402EEE
 00402E08    sub         eax,81
>00402E0D    jae         00402E11
 00402E0F    xor         eax,eax
 00402E11    push        0
 00402E13    push        0
 00402E15    push        eax
 00402E16    push        dword ptr [esi]
 00402E18    call        kernel32.SetFilePointer
 00402E1D    inc         eax
>00402E1E    je          00402EEE
 00402E24    push        0
 00402E26    mov         edx,esp
 00402E28    push        0
 00402E2A    push        edx
 00402E2B    push        80
 00402E30    lea         edx,[esi+14C]
 00402E36    push        edx
 00402E37    push        dword ptr [esi]
 00402E39    call        kernel32.ReadFile
 00402E3E    pop         edx
 00402E3F    dec         eax
>00402E40    jne         00402EEE
 00402E46    xor         eax,eax
 00402E48    cmp         eax,edx
>00402E4A    jae         00402EB7
 00402E4C    cmp         byte ptr [esi+eax+14C],0E
>00402E54    je          00402E59
 00402E56    inc         eax
>00402E57    jmp         00402E48
 00402E59    push        2
 00402E5B    push        0
 00402E5D    sub         eax,edx
 00402E5F    push        eax
 00402E60    push        dword ptr [esi]
 00402E62    call        kernel32.SetFilePointer
 00402E67    inc         eax
>00402E68    je          00402EEE
 00402E6E    push        dword ptr [esi]
 00402E70    call        kernel32.SetEndOfFile
 00402E75    dec         eax
>00402E76    jne         00402EEE
>00402E78    jmp         00402EB7
 00402E7A    lea         eax,[esi+14C]
 00402E80    mov         dword ptr [esi+8],80
 00402E87    mov         dword ptr [esi+24],402CE0;FileNOPProc:Integer
 00402E8E    mov         dword ptr [esi+14],eax
 00402E91    cmp         word ptr [esi+4],0D7B2
>00402E97    je          00402E9D
 00402E99    push        0F6
>00402E9B    jmp         00402EAB
 00402E9D    cmp         esi,55C3E4
>00402EA3    jne         00402EA9
 00402EA5    push        0F4
>00402EA7    jmp         00402EAB
 00402EA9    push        0F5
 00402EAB    call        kernel32.GetStdHandle
 00402EB0    cmp         eax,0FFFFFFFF
>00402EB3    je          00402EEE
 00402EB5    mov         dword ptr [esi],eax
 00402EB7    cmp         word ptr [esi+4],0D7B1
>00402EBD    je          00402ED6
 00402EBF    push        dword ptr [esi]
 00402EC1    call        kernel32.GetFileType
 00402EC6    test        eax,eax
>00402EC8    je          00402EDA
 00402ECA    cmp         eax,2
>00402ECD    jne         00402ED6
 00402ECF    mov         dword ptr [esi+20],402CE4;TextOut:Integer
 00402ED6    xor         eax,eax
 00402ED8    pop         esi
 00402ED9    ret
 00402EDA    push        dword ptr [esi]
 00402EDC    call        kernel32.CloseHandle
 00402EE1    mov         word ptr [esi+4],0D7B0
 00402EE7    mov         eax,69
>00402EEC    jmp         00402ED8
 00402EEE    mov         word ptr [esi+4],0D7B0
 00402EF4    call        kernel32.GetLastError
>00402EF9    jmp         00402ED8
 00402EFB    ret
*}
end;

//00402EFC
function InternalFlush(var t:TTextRec; Func:TTextIOFunc):Integer;
begin
{*
 00402EFC    push        ebx
 00402EFD    mov         cx,word ptr [eax+4]
 00402F01    sub         cx,0D7B1
>00402F06    je          00402F17
 00402F08    dec         ecx
 00402F09    sub         cx,2
>00402F0D    jae         00402F1B
 00402F0F    mov         ebx,edx
 00402F11    call        ebx
 00402F13    mov         ebx,eax
>00402F15    jmp         00402F32
 00402F17    xor         ebx,ebx
>00402F19    jmp         00402F32
 00402F1B    cmp         eax,55C218;gvar_0055C218:TTextRec
>00402F20    je          00402F29
 00402F22    cmp         eax,55C3E4
>00402F27    jne         00402F2D
 00402F29    xor         ebx,ebx
>00402F2B    jmp         00402F32
 00402F2D    mov         ebx,67
 00402F32    test        ebx,ebx
>00402F34    je          00402F3D
 00402F36    mov         eax,ebx
 00402F38    call        SetInOutRes
 00402F3D    mov         eax,ebx
 00402F3F    pop         ebx
 00402F40    ret
*}
end;

//00402F44
function Flush(var t:Text):Integer;
begin
{*
 00402F44    mov         edx,dword ptr [eax+1C]
 00402F47    call        InternalFlush
 00402F4C    ret
*}
end;

//00402F50
procedure @Flush(var F:TFileRec);
begin
{*
 00402F50    mov         edx,dword ptr [eax+20]
 00402F53    call        InternalFlush
 00402F58    ret
*}
end;

//00402F5C
procedure @Close(var F:TFileRec);
begin
{*
 00402F5C    push        ebx
 00402F5D    push        esi
 00402F5E    mov         ebx,eax
 00402F60    xor         esi,esi
 00402F62    mov         ax,word ptr [ebx+4]
 00402F66    cmp         ax,0D7B1
>00402F6A    jb          00402F9B
 00402F6C    cmp         ax,0D7B3
>00402F70    ja          00402F9B
 00402F72    and         ax,0D7B2
 00402F76    cmp         ax,0D7B2
>00402F7A    jne         00402F83
 00402F7C    mov         eax,ebx
 00402F7E    call        dword ptr [ebx+1C]
 00402F81    mov         esi,eax
 00402F83    test        esi,esi
>00402F85    jne         00402F8E
 00402F87    mov         eax,ebx
 00402F89    call        dword ptr [ebx+24]
 00402F8C    mov         esi,eax
 00402F8E    test        esi,esi
>00402F90    je          00402FAD
 00402F92    mov         eax,esi
 00402F94    call        SetInOutRes
>00402F99    jmp         00402FAD
 00402F9B    cmp         ebx,55C04C
>00402FA1    je          00402FAD
 00402FA3    mov         eax,67
 00402FA8    call        SetInOutRes
 00402FAD    mov         eax,esi
 00402FAF    pop         esi
 00402FB0    pop         ebx
 00402FB1    ret
*}
end;

//00402FB4
procedure @PStrNCpy(Dest:PShortString; Source:PShortString; MaxLen:Byte);
begin
{*
 00402FB4    push        ebx
 00402FB5    mov         bl,byte ptr [edx]
 00402FB7    cmp         cl,bl
>00402FB9    jbe         00402FBD
 00402FBB    mov         ecx,ebx
 00402FBD    mov         byte ptr [eax],cl
 00402FBF    inc         edx
 00402FC0    inc         eax
 00402FC1    and         ecx,0FF
 00402FC7    xchg        eax,edx
 00402FC8    call        Move
 00402FCD    pop         ebx
 00402FCE    ret
*}
end;

//00402FD0
procedure @PStrCmp(S1:PShortString; S2:PShortString);
begin
{*
 00402FD0    push        ebx
 00402FD1    push        esi
 00402FD2    push        edi
 00402FD3    mov         esi,eax
 00402FD5    mov         edi,edx
 00402FD7    xor         eax,eax
 00402FD9    xor         edx,edx
 00402FDB    mov         al,byte ptr [esi]
 00402FDD    mov         dl,byte ptr [edi]
 00402FDF    inc         esi
 00402FE0    inc         edi
 00402FE1    sub         eax,edx
>00402FE3    ja          00402FE7
 00402FE5    add         edx,eax
 00402FE7    push        edx
 00402FE8    shr         edx,2
>00402FEB    je          00403013
 00402FED    mov         ecx,dword ptr [esi]
 00402FEF    mov         ebx,dword ptr [edi]
 00402FF1    cmp         ecx,ebx
>00402FF3    jne         00403039
 00402FF5    dec         edx
>00402FF6    je          0040300D
 00402FF8    mov         ecx,dword ptr [esi+4]
 00402FFB    mov         ebx,dword ptr [edi+4]
 00402FFE    cmp         ecx,ebx
>00403000    jne         00403039
 00403002    add         esi,8
 00403005    add         edi,8
 00403008    dec         edx
>00403009    jne         00402FED
>0040300B    jmp         00403013
 0040300D    add         esi,4
 00403010    add         edi,4
 00403013    pop         edx
 00403014    and         edx,3
>00403017    je          00403035
 00403019    mov         cl,byte ptr [esi]
 0040301B    cmp         cl,byte ptr [edi]
>0040301D    jne         0040304E
 0040301F    dec         edx
>00403020    je          00403035
 00403022    mov         cl,byte ptr [esi+1]
 00403025    cmp         cl,byte ptr [edi+1]
>00403028    jne         0040304E
 0040302A    dec         edx
>0040302B    je          00403035
 0040302D    mov         cl,byte ptr [esi+2]
 00403030    cmp         cl,byte ptr [edi+2]
>00403033    jne         0040304E
 00403035    add         eax,eax
>00403037    jmp         0040304E
 00403039    pop         edx
 0040303A    cmp         cl,bl
>0040303C    jne         0040304E
 0040303E    cmp         ch,bh
>00403040    jne         0040304E
 00403042    shr         ecx,10
 00403045    shr         ebx,10
 00403048    cmp         cl,bl
>0040304A    jne         0040304E
 0040304C    cmp         ch,bh
 0040304E    pop         edi
 0040304F    pop         esi
 00403050    pop         ebx
 00403051    ret
*}
end;

//00403054
procedure @AStrCmp(S1:PShortString; S2:PShortString; Bytes:Integer);
begin
{*
 00403054    push        ebx
 00403055    push        esi
 00403056    push        ecx
 00403057    mov         esi,ecx
 00403059    shr         esi,2
>0040305C    je          00403084
 0040305E    mov         ecx,dword ptr [eax]
 00403060    mov         ebx,dword ptr [edx]
 00403062    cmp         ecx,ebx
>00403064    jne         004030AB
 00403066    dec         esi
>00403067    je          0040307E
 00403069    mov         ecx,dword ptr [eax+4]
 0040306C    mov         ebx,dword ptr [edx+4]
 0040306F    cmp         ecx,ebx
>00403071    jne         004030AB
 00403073    add         eax,8
 00403076    add         edx,8
 00403079    dec         esi
>0040307A    jne         0040305E
>0040307C    jmp         00403084
 0040307E    add         eax,4
 00403081    add         edx,4
 00403084    pop         esi
 00403085    and         esi,3
>00403088    je          004030C0
 0040308A    mov         cl,byte ptr [eax]
 0040308C    cmp         cl,byte ptr [edx]
>0040308E    jne         004030C0
 00403090    dec         esi
>00403091    je          004030A6
 00403093    mov         cl,byte ptr [eax+1]
 00403096    cmp         cl,byte ptr [edx+1]
>00403099    jne         004030C0
 0040309B    dec         esi
>0040309C    je          004030A6
 0040309E    mov         cl,byte ptr [eax+2]
 004030A1    cmp         cl,byte ptr [edx+2]
>004030A4    jne         004030C0
 004030A6    xor         eax,eax
 004030A8    pop         esi
 004030A9    pop         ebx
 004030AA    ret
 004030AB    pop         esi
 004030AC    cmp         cl,bl
>004030AE    jne         004030C0
 004030B0    cmp         ch,bh
>004030B2    jne         004030C0
 004030B4    shr         ecx,10
 004030B7    shr         ebx,10
 004030BA    cmp         cl,bl
>004030BC    jne         004030C0
 004030BE    cmp         ch,bh
 004030C0    pop         esi
 004030C1    pop         ebx
 004030C2    ret
*}
end;

//004030C4
procedure @FillChar(var dst:Pointer; cnt:Integer; val:Char);
begin
{*
 004030C4    push        edi
 004030C5    mov         edi,eax
 004030C7    mov         ch,cl
 004030C9    mov         eax,ecx
 004030CB    shl         eax,10
 004030CE    mov         ax,cx
 004030D1    mov         ecx,edx
 004030D3    sar         ecx,2
>004030D6    js          004030E1
 004030D8    rep stos    dword ptr [edi]
 004030DA    mov         ecx,edx
 004030DC    and         ecx,3
 004030DF    rep stos    byte ptr [edi]
 004030E1    pop         edi
 004030E2    ret
*}
end;

//004030E4
function @RandInt(Range:Integer):Integer;
begin
{*
 004030E4    push        ebx
 004030E5    xor         ebx,ebx
 004030E7    imul        edx,dword ptr [ebx+53D008],8088405
 004030F1    inc         edx
 004030F2    mov         dword ptr [ebx+53D008],edx
 004030F8    mul         eax,edx
 004030FA    mov         eax,edx
 004030FC    pop         ebx
 004030FD    ret
*}
end;

//00403100
function @ValLong(s:AnsiString; var code:Integer):Longint;
begin
{*
 00403100    push        ebx
 00403101    push        esi
 00403102    push        edi
 00403103    mov         esi,eax
 00403105    push        eax
 00403106    test        eax,eax
>00403108    je          00403176
 0040310A    xor         eax,eax
 0040310C    xor         ebx,ebx
 0040310E    mov         edi,0CCCCCCC
 00403113    mov         bl,byte ptr [esi]
 00403115    inc         esi
 00403116    cmp         bl,20
>00403119    je          00403113
 0040311B    mov         ch,0
 0040311D    cmp         bl,2D
>00403120    je          00403184
 00403122    cmp         bl,2B
>00403125    je          00403186
 00403127    cmp         bl,24
>0040312A    je          0040318B
 0040312C    cmp         bl,78
>0040312F    je          0040318B
 00403131    cmp         bl,58
>00403134    je          0040318B
 00403136    cmp         bl,30
>00403139    jne         0040314E
 0040313B    mov         bl,byte ptr [esi]
 0040313D    inc         esi
 0040313E    cmp         bl,78
>00403141    je          0040318B
 00403143    cmp         bl,58
>00403146    je          0040318B
 00403148    test        bl,bl
>0040314A    je          0040316C
>0040314C    jmp         00403152
 0040314E    test        bl,bl
>00403150    je          0040317F
 00403152    sub         bl,30
 00403155    cmp         bl,9
>00403158    ja          0040317F
 0040315A    cmp         eax,edi
>0040315C    ja          0040317F
 0040315E    lea         eax,[eax+eax*4]
 00403161    add         eax,eax
 00403163    add         eax,ebx
 00403165    mov         bl,byte ptr [esi]
 00403167    inc         esi
 00403168    test        bl,bl
>0040316A    jne         00403152
 0040316C    dec         ch
>0040316E    je          00403179
 00403170    test        eax,eax
>00403172    jge         004031C8
>00403174    jmp         0040317F
 00403176    inc         esi
>00403177    jmp         0040317F
 00403179    neg         eax
>0040317B    jle         004031C8
>0040317D    js          004031C8
 0040317F    pop         ebx
 00403180    sub         esi,ebx
>00403182    jmp         004031CB
 00403184    inc         ch
 00403186    mov         bl,byte ptr [esi]
 00403188    inc         esi
>00403189    jmp         00403127
 0040318B    mov         edi,0FFFFFFF
 00403190    mov         bl,byte ptr [esi]
 00403192    inc         esi
 00403193    test        bl,bl
>00403195    je          00403176
 00403197    cmp         bl,61
>0040319A    jb          0040319F
 0040319C    sub         bl,20
 0040319F    sub         bl,30
 004031A2    cmp         bl,9
>004031A5    jbe         004031B2
 004031A7    sub         bl,11
 004031AA    cmp         bl,5
>004031AD    ja          0040317F
 004031AF    add         bl,0A
 004031B2    cmp         eax,edi
>004031B4    ja          0040317F
 004031B6    shl         eax,4
 004031B9    add         eax,ebx
 004031BB    mov         bl,byte ptr [esi]
 004031BD    inc         esi
 004031BE    test        bl,bl
>004031C0    jne         00403197
 004031C2    dec         ch
>004031C4    jne         004031C8
 004031C6    neg         eax
 004031C8    pop         ecx
 004031C9    xor         esi,esi
 004031CB    mov         dword ptr [edx],esi
 004031CD    pop         edi
 004031CE    pop         esi
 004031CF    pop         ebx
 004031D0    ret
*}
end;

//004031D4
function TryOpenForOutput(var t:TTextRec):Boolean;
begin
{*
 004031D4    push        ebx
 004031D5    mov         ebx,eax
 004031D7    cmp         ebx,55C218;gvar_0055C218:TTextRec
>004031DD    je          004031E7
 004031DF    cmp         ebx,55C3E4
>004031E5    jne         004031F9
 004031E7    xor         eax,eax
 004031E9    mov         al,[0053D038]
 004031EE    mov         word ptr [ebx+6],ax
 004031F2    mov         eax,ebx
 004031F4    call        @RewritText
 004031F9    cmp         word ptr [ebx+4],0D7B2
 004031FF    sete        al
 00403202    mov         ebx,eax
 00403204    test        bl,bl
>00403206    jne         00403212
 00403208    mov         eax,69
 0040320D    call        SetInOutRes
 00403212    mov         eax,ebx
 00403214    pop         ebx
 00403215    ret
*}
end;

//00403218
function @WriteBytes(var t:TTextRec; const b:void ; cnt:Integer):Pointer;
begin
{*
 00403218    push        esi
 00403219    push        edi
 0040321A    mov         esi,edx
 0040321C    cmp         word ptr [eax+4],0D7B2
>00403222    je          00403233
 00403224    push        eax
 00403225    push        edx
 00403226    push        ecx
 00403227    call        TryOpenForOutput
 0040322C    test        al,al
 0040322E    pop         ecx
 0040322F    pop         edx
 00403230    pop         eax
>00403231    je          00403268
 00403233    mov         edi,dword ptr [eax+14]
 00403236    add         edi,dword ptr [eax+0C]
 00403239    mov         edx,dword ptr [eax+8]
 0040323C    sub         edx,dword ptr [eax+0C]
 0040323F    cmp         edx,ecx
>00403241    jg          00403263
 00403243    add         dword ptr [eax+0C],edx
 00403246    sub         ecx,edx
 00403248    push        eax
 00403249    push        ecx
 0040324A    mov         ecx,edx
 0040324C    rep movs    byte ptr [edi],byte ptr [esi]
 0040324E    call        dword ptr [eax+1C]
 00403251    test        eax,eax
>00403253    jne         00403259
 00403255    pop         ecx
 00403256    pop         eax
>00403257    jmp         00403233
 00403259    call        SetInOutRes
 0040325E    pop         ecx
 0040325F    pop         eax
 00403260    pop         edi
 00403261    pop         esi
 00403262    ret
 00403263    add         dword ptr [eax+0C],ecx
 00403266    rep movs    byte ptr [edi],byte ptr [esi]
 00403268    pop         edi
 00403269    pop         esi
 0040326A    ret
*}
end;

//0040326C
function @WriteSpaces(var t:TTextRec; cnt:Integer):Pointer;
begin
{*
 0040326C    mov         ecx,edx
 0040326E    mov         edx,40329C
 00403273    cmp         ecx,40
>00403276    jle         004032DC
 00403278    sub         ecx,40
 0040327B    push        eax
 0040327C    push        ecx
 0040327D    mov         ecx,40
 00403282    call        @WriteBytes
 00403287    call        @GetTls
 0040328C    cmp         dword ptr [eax+4],0;{InOutRes:Integer}
>00403293    jne         00403299
 00403295    pop         ecx
 00403296    pop         eax
>00403297    jmp         0040326E
 00403299    pop         ecx
 0040329A    pop         eax
 0040329B    ret
 0040329C    and         byte ptr [eax],ah
 0040329E    and         byte ptr [eax],ah
 004032A0    and         byte ptr [eax],ah
 004032A2    and         byte ptr [eax],ah
 004032A4    and         byte ptr [eax],ah
 004032A6    and         byte ptr [eax],ah
 004032A8    and         byte ptr [eax],ah
 004032AA    and         byte ptr [eax],ah
 004032AC    and         byte ptr [eax],ah
 004032AE    and         byte ptr [eax],ah
 004032B0    and         byte ptr [eax],ah
 004032B2    and         byte ptr [eax],ah
 004032B4    and         byte ptr [eax],ah
 004032B6    and         byte ptr [eax],ah
 004032B8    and         byte ptr [eax],ah
 004032BA    and         byte ptr [eax],ah
 004032BC    and         byte ptr [eax],ah
 004032BE    and         byte ptr [eax],ah
 004032C0    and         byte ptr [eax],ah
 004032C2    and         byte ptr [eax],ah
 004032C4    and         byte ptr [eax],ah
 004032C6    and         byte ptr [eax],ah
 004032C8    and         byte ptr [eax],ah
 004032CA    and         byte ptr [eax],ah
 004032CC    and         byte ptr [eax],ah
 004032CE    and         byte ptr [eax],ah
 004032D0    and         byte ptr [eax],ah
 004032D2    and         byte ptr [eax],ah
 004032D4    and         byte ptr [eax],ah
 004032D6    and         byte ptr [eax],ah
 004032D8    and         byte ptr [eax],ah
 004032DA    and         byte ptr [eax],ah
 004032DC    test        ecx,ecx
>004032DE    jg          00403218
 004032E4    ret
*}
end;

//004032E8
procedure @WriteLn(var T:TTextRec);
begin
{*
 004032E8    push        ebx
 004032E9    push        esi
 004032EA    push        ecx
 004032EB    mov         ebx,eax
 004032ED    test        byte ptr [ebx+6],1
>004032F1    je          0040330E
 004032F3    mov         byte ptr [esp],0D
 004032F7    mov         byte ptr [esp+1],0A
 004032FC    mov         edx,esp
 004032FE    mov         eax,ebx
 00403300    mov         ecx,2
 00403305    call        @WriteBytes
 0040330A    mov         esi,eax
>0040330C    jmp         00403322
 0040330E    mov         byte ptr [esp],0A
 00403312    mov         edx,esp
 00403314    mov         eax,ebx
 00403316    mov         ecx,1
 0040331B    call        @WriteBytes
 00403320    mov         esi,eax
 00403322    mov         eax,ebx
 00403324    call        @Flush
 00403329    mov         eax,esi
 0040332B    pop         edx
 0040332C    pop         esi
 0040332D    pop         ebx
 0040332E    ret
*}
end;

//00403330
procedure @_CToPasStr(Dest:PShortString; const Source:PAnsiChar);
begin
{*
 00403330    mov         ecx,0FF
 00403335    call        @_CLenToPasStr
 0040333A    ret
*}
end;

//0040333C
procedure @_CLenToPasStr(Dest:PShortString; const Source:PAnsiChar; MaxLen:Integer);
begin
{*
 0040333C    push        ebx
 0040333D    push        eax
 0040333E    cmp         ecx,0FF
>00403344    jbe         0040334B
 00403346    mov         ecx,0FF
 0040334B    mov         bl,byte ptr [edx]
 0040334D    inc         edx
 0040334E    test        bl,bl
>00403350    je          00403358
 00403352    inc         eax
 00403353    mov         byte ptr [eax],bl
 00403355    dec         ecx
>00403356    jne         0040334B
 00403358    pop         edx
 00403359    sub         eax,edx
 0040335B    mov         byte ptr [edx],al
 0040335D    pop         ebx
 0040335E    ret
*}
end;

//00403360
procedure @SetEq;
begin
{*
 00403360    push        esi
 00403361    push        edi
 00403362    mov         esi,eax
 00403364    mov         edi,edx
 00403366    and         ecx,0FF
 0040336C    repe cmps   byte ptr [esi],byte ptr [edi]
 0040336E    pop         edi
 0040336F    pop         esi
 00403370    ret
*}
end;

//00403374
procedure @SetUnion;
begin
{*
 00403374    mov         ch,byte ptr [edx]
 00403376    inc         edx
 00403377    or          byte ptr [eax],ch
 00403379    inc         eax
 0040337A    dec         cl
>0040337C    jne         00403374
 0040337E    ret
*}
end;

//00403380
procedure FPower10;
begin
{*
>00403380    jmp         @Pow10
 00403385    ret
*}
end;

//00403388
procedure @Pow10;
begin
{*
 00403388    push        ebx
 00403389    xor         ebx,ebx
 0040338B    test        eax,eax
>0040338D    jl          004033DC
>0040338F    je          0040342F
 00403395    cmp         eax,1400
>0040339A    jge         00403421
 004033A0    mov         edx,eax
 004033A2    and         edx,1F
 004033A5    lea         edx,[edx+edx*4]
 004033A8    fld         tbyte ptr [ebx+edx*2+40343B]
 004033AF    fmulp       st(1),st
 004033B1    shr         eax,5
>004033B4    je          0040342F
 004033B6    mov         edx,eax
 004033B8    and         edx,0F
>004033BB    je          004033C9
 004033BD    lea         edx,[edx+edx*4]
 004033C0    fld         tbyte ptr [ebx+edx*2+403571]
 004033C7    fmulp       st(1),st
 004033C9    shr         eax,4
>004033CC    je          0040342F
 004033CE    lea         eax,[eax+eax*4]
 004033D1    fld         tbyte ptr [ebx+eax*2+403607]
 004033D8    fmulp       st(1),st
>004033DA    jmp         0040342F
 004033DC    neg         eax
 004033DE    cmp         eax,1400
>004033E3    jge         0040342B
 004033E5    mov         edx,eax
 004033E7    and         edx,1F
 004033EA    lea         edx,[edx+edx*4]
 004033ED    fld         tbyte ptr [ebx+edx*2+40343B]
 004033F4    fdivp       st(1),st
 004033F6    shr         eax,5
>004033F9    je          0040342F
 004033FB    mov         edx,eax
 004033FD    and         edx,0F
>00403400    je          0040340E
 00403402    lea         edx,[edx+edx*4]
 00403405    fld         tbyte ptr [ebx+edx*2+403571]
 0040340C    fdivp       st(1),st
 0040340E    shr         eax,4
>00403411    je          0040342F
 00403413    lea         eax,[eax+eax*4]
 00403416    fld         tbyte ptr [ebx+eax*2+403607]
 0040341D    fdivp       st(1),st
>0040341F    jmp         0040342F
 00403421    fstp        st(0)
 00403423    fld         tbyte ptr [ebx+403431]
>00403429    jmp         0040342F
 0040342B    fstp        st(0)
 0040342D    fldz
 0040342F    pop         ebx
 00403430    ret
*}
end;

//0040366C
function user32.GetKeyboardType:Integer; stdcall;
begin
{*
 0040366C    jmp         dword ptr ds:[55F288]
*}
end;

//00403674
function @isNECWindows:Boolean;
begin
{*
 00403674    push        ebx
 00403675    xor         ebx,ebx
 00403677    push        0
 00403679    call        user32.GetKeyboardType
 0040367E    cmp         eax,7
>00403681    jne         0040369F
 00403683    push        1
 00403685    call        user32.GetKeyboardType
 0040368A    and         eax,0FF00
 0040368F    cmp         eax,0D00
>00403694    je          0040369D
 00403696    cmp         eax,400
>0040369B    jne         0040369F
 0040369D    mov         bl,1
 0040369F    mov         eax,ebx
 004036A1    pop         ebx
 004036A2    ret
*}
end;

//004036A4
procedure @FpuMaskInit;
begin
{*
 004036A4    push        ebp
 004036A5    mov         ebp,esp
 004036A7    add         esp,0FFFFFFF4
 004036AA    movzx       eax,word ptr ds:[53D024]
 004036B1    mov         dword ptr [ebp-8],eax
 004036B4    lea         eax,[ebp-4]
 004036B7    push        eax
 004036B8    push        1
 004036BA    push        0
 004036BC    push        40373C
 004036C1    push        80000002
 004036C6    call        advapi32.RegOpenKeyExA
 004036CB    test        eax,eax
>004036CD    jne         0040371C
 004036CF    xor         eax,eax
 004036D1    push        ebp
 004036D2    push        403715
 004036D7    push        dword ptr fs:[eax]
 004036DA    mov         dword ptr fs:[eax],esp
 004036DD    mov         dword ptr [ebp-0C],4
 004036E4    lea         eax,[ebp-0C]
 004036E7    push        eax
 004036E8    lea         eax,[ebp-8]
 004036EB    push        eax
 004036EC    push        0
 004036EE    push        0
 004036F0    push        403758
 004036F5    mov         eax,dword ptr [ebp-4]
 004036F8    push        eax
 004036F9    call        advapi32.RegQueryValueExA
 004036FE    xor         eax,eax
 00403700    pop         edx
 00403701    pop         ecx
 00403702    pop         ecx
 00403703    mov         dword ptr fs:[eax],edx
 00403706    push        40371C
 0040370B    mov         eax,dword ptr [ebp-4]
 0040370E    push        eax
 0040370F    call        advapi32.RegCloseKey
 00403714    ret
>00403715    jmp         @HandleFinally
>0040371A    jmp         0040370B
 0040371C    mov         ax,[0053D024]
 00403722    and         ax,0FFC0
 00403726    mov         dx,word ptr [ebp-8]
 0040372A    and         dx,3F
 0040372E    or          ax,dx
 00403731    mov         [0053D024],ax
 00403737    mov         esp,ebp
 00403739    pop         ebp
 0040373A    ret
*}
end;

//00403768
procedure @FpuInit;
begin
{*
 00403768    fninit
 0040376A    wait
 0040376B    fldcw       word ptr ds:[53D024]
 00403771    ret
*}
end;

//00403774
procedure @BoundErr;
begin
{*
 00403774    mov         al,4
>00403776    jmp         Error
 0040377B    ret
*}
end;

//0040377C
function TObject.ClassType:TClass;
begin
{*
 0040377C    mov         eax,dword ptr [eax]
 0040377E    mov         edx,eax
 00403780    mov         eax,edx
 00403782    ret
*}
end;

//00403784
function TObject.ClassName:ShortString;
begin
{*
 00403784    push        esi
 00403785    push        edi
 00403786    mov         edi,edx
 00403788    mov         esi,dword ptr [eax-2C]
 0040378B    xor         ecx,ecx
 0040378D    mov         cl,byte ptr [esi]
 0040378F    inc         ecx
 00403790    rep movs    byte ptr [edi],byte ptr [esi]
 00403792    pop         edi
 00403793    pop         esi
 00403794    ret
*}
end;

//00403798
function TObject.ClassNameIs(const Name:AnsiString):Boolean;
begin
{*
 00403798    push        ebx
 00403799    xor         ebx,ebx
 0040379B    or          edx,edx
>0040379D    je          004037BB
 0040379F    mov         eax,dword ptr [eax-2C]
 004037A2    xor         ecx,ecx
 004037A4    mov         cl,byte ptr [eax]
 004037A6    cmp         ecx,dword ptr [edx-4]
>004037A9    jne         004037BB
 004037AB    dec         edx
 004037AC    mov         bh,byte ptr [ecx+eax]
 004037AF    xor         bh,byte ptr [ecx+edx]
 004037B2    and         bh,0DF
>004037B5    jne         004037BB
 004037B7    dec         ecx
>004037B8    jne         004037AC
 004037BA    inc         ebx
 004037BB    mov         al,bl
 004037BD    pop         ebx
 004037BE    ret
*}
end;

//004037C0
function TObject.ClassParent:TClass;
begin
{*
 004037C0    mov         eax,dword ptr [eax-24]
 004037C3    test        eax,eax
>004037C5    je          004037C9
 004037C7    mov         eax,dword ptr [eax]
 004037C9    ret
*}
end;

//004037CC
function TObject.NewInstance:TObject;
begin
{*
 004037CC    push        ebx
 004037CD    mov         ebx,eax
 004037CF    mov         eax,ebx
 004037D1    call        TObject.InstanceSize
 004037D6    call        @GetMem
 004037DB    mov         edx,eax
 004037DD    mov         eax,ebx
 004037DF    call        TObject.InitInstance
 004037E4    pop         ebx
 004037E5    ret
*}
end;

//004037E8
procedure TObject.FreeInstance;
begin
{*
 004037E8    push        ebx
 004037E9    mov         ebx,eax
 004037EB    mov         eax,ebx
 004037ED    call        TObject.CleanupInstance
 004037F2    mov         eax,ebx
 004037F4    call        @FreeMem
 004037F9    pop         ebx
 004037FA    ret
*}
end;

//004037FC
function TObject.InstanceSize:Integer;
begin
{*
 004037FC    add         eax,0FFFFFFD8
 004037FF    mov         eax,dword ptr [eax]
 00403801    ret
*}
end;

//00403804
constructor TObject.Create;
begin
{*
 00403804    test        dl,dl
>00403806    je          00403810
 00403808    add         esp,0FFFFFFF0
 0040380B    call        @ClassCreate
 00403810    test        dl,dl
>00403812    je          00403823
 00403814    call        @AfterConstruction
 00403819    pop         dword ptr fs:[0]
 00403820    add         esp,0C
 00403823    ret
*}
end;

//00403824
destructor TObject.Destroy;
begin
{*
 00403824    call        @BeforeDestruction
 00403829    test        dl,dl
>0040382B    jle         00403832
 0040382D    call        @ClassDestroy
 00403832    ret
*}
end;

//00403834
procedure TObject.Free;
begin
{*
 00403834    test        eax,eax
>00403836    je          0040383F
 00403838    mov         dl,1
 0040383A    mov         ecx,dword ptr [eax]
 0040383C    call        dword ptr [ecx-4]
 0040383F    ret
*}
end;

//00403840
function TObject.InitInstance(Instance:Pointer):TObject;
begin
{*
 00403840    push        ebx
 00403841    push        esi
 00403842    push        edi
 00403843    mov         ebx,eax
 00403845    mov         edi,edx
 00403847    stos        dword ptr [edi]
 00403848    mov         ecx,dword ptr [ebx-28]
 0040384B    xor         eax,eax
 0040384D    push        ecx
 0040384E    shr         ecx,2
 00403851    dec         ecx
 00403852    rep stos    dword ptr [edi]
 00403854    pop         ecx
 00403855    and         ecx,3
 00403858    rep stos    byte ptr [edi]
 0040385A    mov         eax,edx
 0040385C    mov         edx,esp
 0040385E    mov         ecx,dword ptr [ebx-48]
 00403861    test        ecx,ecx
>00403863    je          00403866
 00403865    push        ecx
 00403866    mov         ebx,dword ptr [ebx-24]
 00403869    test        ebx,ebx
>0040386B    je          00403871
 0040386D    mov         ebx,dword ptr [ebx]
>0040386F    jmp         0040385E
 00403871    cmp         esp,edx
>00403873    je          00403892
 00403875    pop         ebx
 00403876    mov         ecx,dword ptr [ebx]
 00403878    add         ebx,4
 0040387B    mov         esi,dword ptr [ebx+10]
 0040387E    test        esi,esi
>00403880    je          00403888
 00403882    mov         edi,dword ptr [ebx+14]
 00403885    mov         dword ptr [edi+eax],esi
 00403888    add         ebx,1C
 0040388B    dec         ecx
>0040388C    jne         0040387B
 0040388E    cmp         esp,edx
>00403890    jne         00403875
 00403892    pop         edi
 00403893    pop         esi
 00403894    pop         ebx
 00403895    ret
*}
end;

//00403898
procedure TObject.CleanupInstance;
begin
{*
 00403898    push        ebx
 00403899    push        esi
 0040389A    mov         ebx,eax
 0040389C    mov         esi,eax
 0040389E    mov         esi,dword ptr [esi]
 004038A0    mov         edx,dword ptr [esi-40]
 004038A3    mov         esi,dword ptr [esi-24]
 004038A6    test        edx,edx
>004038A8    je          004038B1
 004038AA    call        @FinalizeRecord
 004038AF    mov         eax,ebx
 004038B1    test        esi,esi
>004038B3    jne         0040389E
 004038B5    pop         esi
 004038B6    pop         ebx
 004038B7    ret
*}
end;

//004038B8
function InvokeImplGetter(Self:TObject; ImplGetter:Cardinal):IInterface;
begin
{*
 004038B8    xchg        edx,ecx
 004038BA    cmp         ecx,0FF000000
>004038C0    jae         004038D3
 004038C2    cmp         ecx,0FE000000
>004038C8    jb          004038D1
 004038CA    movsx       ecx,cx
 004038CD    add         ecx,dword ptr [eax]
 004038CF    jmp         dword ptr [ecx]
 004038D1    jmp         ecx
 004038D3    and         ecx,0FFFFFF
 004038D9    add         ecx,eax
 004038DB    mov         eax,edx
 004038DD    mov         edx,dword ptr [ecx]
>004038DF    jmp         @IntfCopy
 004038E4    ret
*}
end;

//004038E8
function TObject.GetInterface(const IID:TGUID; var Obj:void ):Boolean;
begin
{*
 004038E8    push        ebp
 004038E9    mov         ebp,esp
 004038EB    add         esp,0FFFFFFF8
 004038EE    push        ebx
 004038EF    push        esi
 004038F0    push        edi
 004038F1    xor         ebx,ebx
 004038F3    mov         dword ptr [ebp-8],ebx
 004038F6    mov         esi,ecx
 004038F8    mov         dword ptr [ebp-4],edx
 004038FB    mov         edi,eax
 004038FD    xor         eax,eax
 004038FF    push        ebp
 00403900    push        40396C
 00403905    push        dword ptr fs:[eax]
 00403908    mov         dword ptr fs:[eax],esp
 0040390B    xor         eax,eax
 0040390D    mov         dword ptr [esi],eax
 0040390F    mov         edx,dword ptr [ebp-4]
 00403912    mov         eax,dword ptr [edi]
 00403914    call        TObject.GetInterfaceEntry
 00403919    mov         ebx,eax
 0040391B    test        ebx,ebx
>0040391D    je          00403950
 0040391F    mov         eax,dword ptr [ebx+14]
 00403922    test        eax,eax
>00403924    je          00403939
 00403926    add         edi,eax
 00403928    mov         dword ptr [esi],edi
 0040392A    cmp         dword ptr [esi],0
>0040392D    je          00403950
 0040392F    mov         eax,dword ptr [esi]
 00403931    push        eax
 00403932    mov         eax,dword ptr [eax]
 00403934    call        dword ptr [eax+4]
>00403937    jmp         00403950
 00403939    lea         ecx,[ebp-8]
 0040393C    mov         edx,dword ptr [ebx+18]
 0040393F    mov         eax,edi
 00403941    call        InvokeImplGetter
 00403946    mov         edx,dword ptr [ebp-8]
 00403949    mov         eax,esi
 0040394B    call        @IntfCopy
 00403950    cmp         dword ptr [esi],0
 00403953    setne       bl
 00403956    xor         eax,eax
 00403958    pop         edx
 00403959    pop         ecx
 0040395A    pop         ecx
 0040395B    mov         dword ptr fs:[eax],edx
 0040395E    push        403973
 00403963    lea         eax,[ebp-8]
 00403966    call        @IntfClear
 0040396B    ret
>0040396C    jmp         @HandleFinally
>00403971    jmp         00403963
 00403973    mov         eax,ebx
 00403975    pop         edi
 00403976    pop         esi
 00403977    pop         ebx
 00403978    pop         ecx
 00403979    pop         ecx
 0040397A    pop         ebp
 0040397B    ret
*}
end;

//0040397C
function TObject.GetInterfaceEntry(const IID:TGUID):PInterfaceEntry;
begin
{*
 0040397C    push        ebx
 0040397D    push        esi
 0040397E    mov         ebx,eax
 00403980    mov         eax,dword ptr [ebx-48]
 00403983    test        eax,eax
>00403985    je          004039B0
 00403987    mov         ecx,dword ptr [eax]
 00403989    add         eax,4
 0040398C    mov         esi,dword ptr [edx]
 0040398E    cmp         esi,dword ptr [eax]
>00403990    jne         004039AA
 00403992    mov         esi,dword ptr [edx+4]
 00403995    cmp         esi,dword ptr [eax+4]
>00403998    jne         004039AA
 0040399A    mov         esi,dword ptr [edx+8]
 0040399D    cmp         esi,dword ptr [eax+8]
>004039A0    jne         004039AA
 004039A2    mov         esi,dword ptr [edx+0C]
 004039A5    cmp         esi,dword ptr [eax+0C]
>004039A8    je          004039BD
 004039AA    add         eax,1C
 004039AD    dec         ecx
>004039AE    jne         0040398C
 004039B0    mov         ebx,dword ptr [ebx-24]
 004039B3    test        ebx,ebx
>004039B5    je          004039BB
 004039B7    mov         ebx,dword ptr [ebx]
>004039B9    jmp         00403980
 004039BB    xor         eax,eax
 004039BD    pop         esi
 004039BE    pop         ebx
 004039BF    ret
*}
end;

//004039C0
function @IsClass(Child:TObject; Parent:TClass):Boolean;
begin
{*
 004039C0    push        ebx
 004039C1    push        esi
 004039C2    mov         esi,edx
 004039C4    mov         ebx,eax
 004039C6    test        ebx,ebx
>004039C8    je          004039D7
 004039CA    mov         edx,esi
 004039CC    mov         eax,dword ptr [ebx]
 004039CE    call        TObject.InheritsFrom
 004039D3    test        al,al
>004039D5    jne         004039DC
 004039D7    xor         eax,eax
 004039D9    pop         esi
 004039DA    pop         ebx
 004039DB    ret
 004039DC    mov         al,1
 004039DE    pop         esi
 004039DF    pop         ebx
 004039E0    ret
*}
end;

//004039E4
function @AsClass(child:TObject; parent:TClass):TObject;
begin
{*
 004039E4    test        eax,eax
>004039E6    je          004039FE
 004039E8    mov         ecx,eax
 004039EA    mov         ecx,dword ptr [ecx]
 004039EC    cmp         ecx,edx
>004039EE    je          004039FE
 004039F0    mov         ecx,dword ptr [ecx-24]
 004039F3    test        ecx,ecx
>004039F5    jne         004039EA
 004039F7    mov         al,0A
>004039F9    jmp         Error
 004039FE    ret
*}
end;

//00403A00
procedure GetDynaMethod;
begin
{*
 00403A00    push        edi
 00403A01    xchg        eax,esi
>00403A02    jmp         00403A06
 00403A04    mov         esi,dword ptr [esi]
 00403A06    mov         edi,dword ptr [esi-30]
 00403A09    test        edi,edi
>00403A0B    je          00403A1A
 00403A0D    movzx       ecx,word ptr [edi]
 00403A10    push        ecx
 00403A11    add         edi,2
 00403A14    repne scas  word ptr [edi]
>00403A17    je          00403A23
 00403A19    pop         ecx
 00403A1A    mov         esi,dword ptr [esi-24]
 00403A1D    test        esi,esi
>00403A1F    jne         00403A04
 00403A21    pop         edi
 00403A22    ret
 00403A23    pop         eax
 00403A24    add         eax,eax
 00403A26    sub         eax,ecx
 00403A28    mov         esi,dword ptr [edi+eax*2-4]
 00403A2C    pop         edi
 00403A2D    ret
*}
end;

//00403A30
procedure @CallDynaInst;
begin
{*
 00403A30    push        eax
 00403A31    push        ecx
 00403A32    mov         eax,dword ptr [eax]
 00403A34    call        GetDynaMethod
 00403A39    pop         ecx
 00403A3A    pop         eax
>00403A3B    je          00403A3F
 00403A3D    jmp         esi
 00403A3F    pop         ecx
>00403A40    jmp         @AbstractError
 00403A45    ret
*}
end;

//00403A48
procedure @FindDynaInst;
begin
{*
 00403A48    push        esi
 00403A49    mov         esi,edx
 00403A4B    mov         eax,dword ptr [eax]
 00403A4D    call        GetDynaMethod
 00403A52    mov         eax,esi
 00403A54    pop         esi
>00403A55    jne         00403A5D
 00403A57    pop         ecx
>00403A58    jmp         @AbstractError
 00403A5D    ret
*}
end;

//00403A60
function TObject.InheritsFrom(AClass:TClass):Boolean;
begin
{*
>00403A60    jmp         00403A64
 00403A62    mov         eax,dword ptr [eax]
 00403A64    cmp         eax,edx
>00403A66    je          00403A70
 00403A68    mov         eax,dword ptr [eax-24]
 00403A6B    test        eax,eax
>00403A6D    jne         00403A62
 00403A6F    ret
 00403A70    mov         al,1
 00403A72    ret
*}
end;

//00403A74
{*function sub_00403A74(?:Longint):?;
begin
 00403A74    add         eax,0FFFFFFC4
 00403A77    mov         eax,dword ptr [eax]
 00403A79    ret
end;*}

//00403A7C
{*function TCustomVariantType.SafeCallException:?;
begin
 00403A7C    mov         eax,8000FFFF
 00403A81    ret
end;*}

//00403A84
procedure TCustomVariantType.DefaultHandler;
begin
{*
 00403A84    ret
*}
end;

//00403A88
procedure TCustomVariantType.AfterConstruction;
begin
{*
 00403A88    ret
*}
end;

//00403A8C
procedure TCustomVariantType.BeforeDestruction;
begin
{*
 00403A8C    ret
*}
end;

//00403A90
procedure TObject.Dispatch(var Message:void );
begin
{*
 00403A90    push        esi
 00403A91    mov         si,word ptr [edx]
 00403A94    or          si,si
>00403A97    je          00403AB0
 00403A99    cmp         si,0C000
>00403A9E    jae         00403AB0
 00403AA0    push        eax
 00403AA1    mov         eax,dword ptr [eax]
 00403AA3    call        GetDynaMethod
 00403AA8    pop         eax
>00403AA9    je          00403AB0
 00403AAB    mov         ecx,esi
 00403AAD    pop         esi
 00403AAE    jmp         ecx
 00403AB0    pop         esi
 00403AB1    mov         ecx,dword ptr [eax]
 00403AB3    jmp         dword ptr [ecx-10]
 00403AB6    ret
*}
end;

//00403AB8
function TObject.MethodAddress(const Name:ShortString):Pointer;
begin
{*
 00403AB8    push        ebx
 00403AB9    push        esi
 00403ABA    push        edi
 00403ABB    xor         ecx,ecx
 00403ABD    xor         edi,edi
 00403ABF    mov         bl,byte ptr [edx]
>00403AC1    jmp         00403AC5
 00403AC3    mov         eax,dword ptr [eax]
 00403AC5    mov         esi,dword ptr [eax-34]
 00403AC8    test        esi,esi
>00403ACA    je          00403AE1
 00403ACC    mov         di,word ptr [esi]
 00403ACF    add         esi,2
 00403AD2    mov         cl,byte ptr [esi+6]
 00403AD5    cmp         cl,bl
>00403AD7    je          00403AEE
 00403AD9    mov         cx,word ptr [esi]
 00403ADC    add         esi,ecx
 00403ADE    dec         edi
>00403ADF    jne         00403AD2
 00403AE1    mov         eax,dword ptr [eax-24]
 00403AE4    test        eax,eax
>00403AE6    jne         00403AC3
>00403AE8    jmp         00403B02
 00403AEA    mov         bl,byte ptr [edx]
>00403AEC    jmp         00403AD9
 00403AEE    mov         ch,0
 00403AF0    mov         bl,byte ptr [ecx+esi+6]
 00403AF4    xor         bl,byte ptr [ecx+edx]
 00403AF7    and         bl,0DF
>00403AFA    jne         00403AEA
 00403AFC    dec         ecx
>00403AFD    jne         00403AF0
 00403AFF    mov         eax,dword ptr [esi+2]
 00403B02    pop         edi
 00403B03    pop         esi
 00403B04    pop         ebx
 00403B05    ret
*}
end;

//00403B08
function TObject.MethodName(Address:Pointer):ShortString;
begin
{*
 00403B08    push        ebx
 00403B09    push        esi
 00403B0A    push        edi
 00403B0B    mov         edi,ecx
 00403B0D    xor         ebx,ebx
 00403B0F    xor         ecx,ecx
>00403B11    jmp         00403B15
 00403B13    mov         eax,dword ptr [eax]
 00403B15    mov         esi,dword ptr [eax-34]
 00403B18    test        esi,esi
>00403B1A    je          00403B2F
 00403B1C    mov         cx,word ptr [esi]
 00403B1F    add         esi,2
 00403B22    cmp         edx,dword ptr [esi+2]
>00403B25    je          00403B3A
 00403B27    mov         bx,word ptr [esi]
 00403B2A    add         esi,ebx
 00403B2C    dec         ecx
>00403B2D    jne         00403B22
 00403B2F    mov         eax,dword ptr [eax-24]
 00403B32    test        eax,eax
>00403B34    jne         00403B13
 00403B36    mov         byte ptr [edi],al
>00403B38    jmp         00403B44
 00403B3A    add         esi,6
 00403B3D    xor         ecx,ecx
 00403B3F    mov         cl,byte ptr [esi]
 00403B41    inc         ecx
 00403B42    rep movs    byte ptr [edi],byte ptr [esi]
 00403B44    pop         edi
 00403B45    pop         esi
 00403B46    pop         ebx
 00403B47    ret
*}
end;

//00403B48
function TObject.FieldAddress(const Name:ShortString):Pointer;
begin
{*
 00403B48    push        ebx
 00403B49    push        esi
 00403B4A    push        edi
 00403B4B    xor         ecx,ecx
 00403B4D    xor         edi,edi
 00403B4F    mov         bl,byte ptr [edx]
 00403B51    push        eax
 00403B52    mov         eax,dword ptr [eax]
 00403B54    mov         esi,dword ptr [eax-38]
 00403B57    test        esi,esi
>00403B59    je          00403B6F
 00403B5B    mov         di,word ptr [esi]
 00403B5E    add         esi,6
 00403B61    mov         cl,byte ptr [esi+6]
 00403B64    cmp         cl,bl
>00403B66    je          00403B80
 00403B68    lea         esi,[ecx+esi+7]
 00403B6C    dec         edi
>00403B6D    jne         00403B61
 00403B6F    mov         eax,dword ptr [eax-24]
 00403B72    test        eax,eax
>00403B74    jne         00403B52
 00403B76    pop         edx
>00403B77    jmp         00403B94
 00403B79    mov         bl,byte ptr [edx]
 00403B7B    mov         cl,byte ptr [esi+6]
>00403B7E    jmp         00403B68
 00403B80    mov         bl,byte ptr [ecx+esi+6]
 00403B84    xor         bl,byte ptr [ecx+edx]
 00403B87    and         bl,0DF
>00403B8A    jne         00403B79
 00403B8C    dec         ecx
>00403B8D    jne         00403B80
 00403B8F    mov         eax,dword ptr [esi]
 00403B91    pop         edx
 00403B92    add         eax,edx
 00403B94    pop         edi
 00403B95    pop         esi
 00403B96    pop         ebx
 00403B97    ret
*}
end;

//00403B98
function @ClassCreate(AClass:TClass; Alloc:Boolean):TObject;
begin
{*
 00403B98    push        edx
 00403B99    push        ecx
 00403B9A    push        ebx
 00403B9B    test        dl,dl
>00403B9D    jl          00403BA2
 00403B9F    call        dword ptr [eax-0C]
 00403BA2    xor         edx,edx
 00403BA4    lea         ecx,[esp+10]
 00403BA8    mov         ebx,dword ptr fs:[edx]
 00403BAB    mov         dword ptr [ecx],ebx
 00403BAD    mov         dword ptr [ecx+8],ebp
 00403BB0    mov         dword ptr [ecx+4],403BC1
 00403BB7    mov         dword ptr [ecx+0C],eax
 00403BBA    mov         dword ptr fs:[edx],ecx
 00403BBD    pop         ebx
 00403BBE    pop         ecx
 00403BBF    pop         edx
 00403BC0    ret
*}
end;

//00403BE8
procedure @ClassDestroy(Instance:TObject);
begin
{*
 00403BE8    mov         edx,dword ptr [eax]
 00403BEA    call        dword ptr [edx-8]
 00403BED    ret
*}
end;

//00403BF0
function @AfterConstruction(Instance:TObject):TObject;
begin
{*
 00403BF0    push        ebx
 00403BF1    mov         ebx,eax
 00403BF3    mov         eax,ebx
 00403BF5    mov         edx,dword ptr [eax]
 00403BF7    call        dword ptr [edx-1C]
 00403BFA    mov         eax,ebx
 00403BFC    pop         ebx
 00403BFD    ret
*}
end;

//00403C00
function @BeforeDestruction(Instance:TObject; OuterMost:Shortint):TObject;
begin
{*
 00403C00    test        dl,dl
>00403C02    jg          00403C05
 00403C04    ret
 00403C05    push        eax
 00403C06    push        edx
 00403C07    mov         edx,dword ptr [eax]
 00403C09    call        dword ptr [edx-18]
 00403C0C    pop         edx
 00403C0D    pop         eax
 00403C0E    ret
*}
end;

//00403C10
procedure NotifyReRaise;
begin
{*
 00403C10    cmp         byte ptr ds:[53D02C],1;gvar_0053D02C
>00403C17    jbe         00403C2A
 00403C19    push        0
 00403C1B    push        0
 00403C1D    push        0
 00403C1F    push        0EEDFADF
 00403C24    call        dword ptr ds:[55C014]
 00403C2A    ret
*}
end;

//00403C2C
procedure NotifyNonDelphiException;
begin
{*
 00403C2C    cmp         byte ptr ds:[53D02C],0;gvar_0053D02C
>00403C33    je          00403C4C
 00403C35    push        eax
 00403C36    push        eax
 00403C37    push        edx
 00403C38    push        esp
 00403C39    push        2
 00403C3B    push        0
 00403C3D    push        0EEDFAE4
 00403C42    call        dword ptr ds:[55C014]
 00403C48    add         esp,8
 00403C4B    pop         eax
 00403C4C    ret
*}
end;

//00403C50
procedure NotifyExcept;
begin
{*
 00403C50    push        esp
 00403C51    push        1
 00403C53    push        0
 00403C55    push        0EEDFAE0
 00403C5A    call        dword ptr ds:[55C014]
 00403C60    add         esp,4
 00403C63    pop         eax
 00403C64    ret
*}
end;

//00403C68
procedure NotifyOnExcept;
begin
{*
 00403C68    cmp         byte ptr ds:[53D02C],1;gvar_0053D02C
>00403C6F    jbe         00403C7A
 00403C71    push        eax
 00403C72    push        dword ptr [ebx+4]
>00403C75    jmp         NotifyExcept
 00403C7A    ret
*}
end;

//00403C7C
procedure NotifyAnyExcept;
begin
{*
 00403C7C    cmp         byte ptr ds:[53D02C],1;gvar_0053D02C
>00403C83    jbe         00403C8C
 00403C85    push        eax
 00403C86    push        ebx
>00403C87    jmp         NotifyExcept
 00403C8C    ret
*}
end;

//00403C90
procedure CheckJmp;
begin
{*
 00403C90    test        ecx,ecx
>00403C92    je          00403CAD
 00403C94    mov         eax,dword ptr [ecx+1]
 00403C97    cmp         byte ptr [ecx],0E9
>00403C9A    je          00403CA8
 00403C9C    cmp         byte ptr [ecx],0EB
>00403C9F    jne         00403CAD
 00403CA1    movsx       eax,al
 00403CA4    inc         ecx
 00403CA5    inc         ecx
>00403CA6    jmp         00403CAB
 00403CA8    add         ecx,5
 00403CAB    add         ecx,eax
 00403CAD    ret
*}
end;

//00403CB0
procedure NotifyExceptFinally;
begin
{*
 00403CB0    cmp         byte ptr ds:[53D02C],1;gvar_0053D02C
>00403CB7    jbe         00403CD6
 00403CB9    push        eax
 00403CBA    push        edx
 00403CBB    push        ecx
 00403CBC    call        CheckJmp
 00403CC1    push        ecx
 00403CC2    push        esp
 00403CC3    push        1
 00403CC5    push        0
 00403CC7    push        0EEDFAE1
 00403CCC    call        dword ptr ds:[55C014]
 00403CD2    pop         ecx
 00403CD3    pop         ecx
 00403CD4    pop         edx
 00403CD5    pop         eax
 00403CD6    ret
*}
end;

//00403CD8
procedure NotifyTerminate;
begin
{*
 00403CD8    cmp         byte ptr ds:[53D02C],1;gvar_0053D02C
>00403CDF    jbe         00403CF3
 00403CE1    push        edx
 00403CE2    push        esp
 00403CE3    push        1
 00403CE5    push        0
 00403CE7    push        0EEDFAE2
 00403CEC    call        dword ptr ds:[55C014]
 00403CF2    pop         edx
 00403CF3    ret
*}
end;

//00403CF4
procedure NotifyUnhandled;
begin
{*
 00403CF4    push        eax
 00403CF5    push        edx
 00403CF6    cmp         byte ptr ds:[53D02C],1;gvar_0053D02C
>00403CFD    jbe         00403D0F
 00403CFF    push        esp
 00403D00    push        2
 00403D02    push        0
 00403D04    push        0EEDFAE3
 00403D09    call        dword ptr ds:[55C014]
 00403D0F    pop         edx
 00403D10    pop         eax
 00403D11    ret
*}
end;

//00403D14
procedure @HandleAnyException;
begin
{*
 00403D14    mov         eax,dword ptr [esp+4]
 00403D18    test        dword ptr [eax+4],6
>00403D1F    jne         00403E38
 00403D25    cmp         dword ptr [eax],0EEDFADE
 00403D2B    mov         edx,dword ptr [eax+18]
 00403D2E    mov         ecx,dword ptr [eax+14]
>00403D31    je          00403DA1
 00403D33    cld
 00403D34    call        @FpuInit
 00403D39    mov         edx,dword ptr ds:[55C010];gvar_0055C010
 00403D3F    test        edx,edx
>00403D41    je          00403E38
 00403D47    call        edx
 00403D49    test        eax,eax
>00403D4B    je          00403E38
 00403D51    mov         edx,dword ptr [esp+0C]
 00403D55    mov         ecx,dword ptr [esp+4]
 00403D59    cmp         dword ptr [ecx],0EEFFACE
>00403D5F    je          00403D98
 00403D61    call        NotifyNonDelphiException
 00403D66    cmp         byte ptr ds:[53D030],0
>00403D6D    jbe         00403D98
 00403D6F    cmp         byte ptr ds:[53D02C],0;gvar_0053D02C
>00403D76    ja          00403D98
 00403D78    lea         ecx,[esp+4]
 00403D7C    push        eax
 00403D7D    push        ecx
 00403D7E    call        kernel32.UnhandledExceptionFilter
 00403D83    cmp         eax,0
 00403D86    pop         eax
>00403D87    je          00403E38
 00403D8D    mov         edx,eax
 00403D8F    mov         eax,dword ptr [esp+4]
 00403D93    mov         ecx,dword ptr [eax+0C]
>00403D96    jmp         00403DC8
 00403D98    mov         edx,eax
 00403D9A    mov         eax,dword ptr [esp+4]
 00403D9E    mov         ecx,dword ptr [eax+0C]
 00403DA1    cmp         byte ptr ds:[53D030],1
>00403DA8    jbe         00403DC8
 00403DAA    cmp         byte ptr ds:[53D02C],0;gvar_0053D02C
>00403DB1    ja          00403DC8
 00403DB3    push        eax
 00403DB4    lea         eax,[esp+8]
 00403DB8    push        edx
 00403DB9    push        ecx
 00403DBA    push        eax
 00403DBB    call        kernel32.UnhandledExceptionFilter
 00403DC0    cmp         eax,0
 00403DC3    pop         ecx
 00403DC4    pop         edx
 00403DC5    pop         eax
>00403DC6    je          00403E38
 00403DC8    or          dword ptr [eax+4],2
 00403DCC    push        ebx
 00403DCD    xor         ebx,ebx
 00403DCF    push        esi
 00403DD0    push        edi
 00403DD1    push        ebp
 00403DD2    mov         ebx,dword ptr fs:[ebx]
 00403DD5    push        ebx
 00403DD6    push        eax
 00403DD7    push        edx
 00403DD8    push        ecx
 00403DD9    mov         edx,dword ptr [esp+28]
 00403DDD    push        0
 00403DDF    push        eax
 00403DE0    push        403DEC
 00403DE5    push        edx
 00403DE6    call        dword ptr ds:[55C018]
 00403DEC    mov         edi,dword ptr [esp+28]
 00403DF0    call        @GetTls
 00403DF5    push        dword ptr [eax+0];{RaiseListPtr:Pointer}
 00403DFB    mov         dword ptr [eax+0],esp;{RaiseListPtr:Pointer}
 00403E01    mov         ebp,dword ptr [edi+8]
 00403E04    mov         ebx,dword ptr [edi+4]
 00403E07    mov         dword ptr [edi+4],403E18
 00403E0E    add         ebx,5
 00403E11    call        NotifyAnyExcept
 00403E16    jmp         ebx
>00403E18    jmp         @HandleFinally
 00403E1D    call        @GetTls
 00403E22    mov         ecx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00403E28    mov         edx,dword ptr [ecx]
 00403E2A    mov         dword ptr [eax+0],edx;{RaiseListPtr:Pointer}
 00403E30    mov         eax,dword ptr [ecx+8]
>00403E33    jmp         TObject.Free
 00403E38    mov         eax,1
 00403E3D    ret
*}
end;

//00403E40
procedure @HandleOnException;
begin
{*
 00403E40    mov         eax,dword ptr [esp+4]
 00403E44    test        dword ptr [eax+4],6
>00403E4B    jne         00403FC0
 00403E51    cmp         dword ptr [eax],0EEDFADE
>00403E57    je          00403E78
 00403E59    cld
 00403E5A    call        @FpuInit
 00403E5F    mov         edx,dword ptr ds:[55C00C];gvar_0055C00C
 00403E65    test        edx,edx
>00403E67    je          00403FC0
 00403E6D    call        edx
 00403E6F    test        eax,eax
>00403E71    jne         00403E7D
>00403E73    jmp         00403FC0
 00403E78    mov         eax,dword ptr [eax+18]
 00403E7B    mov         eax,dword ptr [eax]
 00403E7D    mov         edx,dword ptr [esp+8]
 00403E81    push        ebx
 00403E82    push        esi
 00403E83    push        edi
 00403E84    push        ebp
 00403E85    mov         ecx,dword ptr [edx+4]
 00403E88    mov         ebx,dword ptr [ecx+5]
 00403E8B    lea         esi,[ecx+9]
 00403E8E    mov         ebp,eax
 00403E90    mov         eax,dword ptr [esi]
 00403E92    test        eax,eax
>00403E94    je          00403ED9
 00403E96    mov         edi,ebp
>00403E98    jmp         00403E9C
 00403E9A    mov         edi,dword ptr [edi]
 00403E9C    mov         eax,dword ptr [eax]
 00403E9E    cmp         eax,edi
>00403EA0    je          00403ED9
 00403EA2    mov         ecx,dword ptr [eax-28]
 00403EA5    cmp         ecx,dword ptr [edi-28]
>00403EA8    jne         00403EC1
 00403EAA    mov         eax,dword ptr [eax-2C]
 00403EAD    mov         edx,dword ptr [edi-2C]
 00403EB0    xor         ecx,ecx
 00403EB2    mov         cl,byte ptr [eax]
 00403EB4    cmp         cl,byte ptr [edx]
>00403EB6    jne         00403EC1
 00403EB8    inc         eax
 00403EB9    inc         edx
 00403EBA    call        @AStrCmp
>00403EBF    je          00403ED9
 00403EC1    mov         edi,dword ptr [edi-24]
 00403EC4    mov         eax,dword ptr [esi]
 00403EC6    test        edi,edi
>00403EC8    jne         00403E9A
 00403ECA    add         esi,8
 00403ECD    dec         ebx
>00403ECE    jne         00403E90
 00403ED0    pop         ebp
 00403ED1    pop         edi
 00403ED2    pop         esi
 00403ED3    pop         ebx
>00403ED4    jmp         00403FC0
 00403ED9    mov         eax,dword ptr [esp+14]
 00403EDD    cmp         dword ptr [eax],0EEDFADE
 00403EE3    mov         edx,dword ptr [eax+18]
 00403EE6    mov         ecx,dword ptr [eax+14]
>00403EE9    je          00403F2C
 00403EEB    call        dword ptr ds:[55C010]
 00403EF1    mov         edx,dword ptr [esp+1C]
 00403EF5    call        NotifyNonDelphiException
 00403EFA    cmp         byte ptr ds:[53D030],0
>00403F01    jbe         00403F21
 00403F03    cmp         byte ptr ds:[53D02C],0;gvar_0053D02C
>00403F0A    ja          00403F21
 00403F0C    lea         ecx,[esp+4]
 00403F10    push        eax
 00403F11    push        ecx
 00403F12    call        kernel32.UnhandledExceptionFilter
 00403F17    cmp         eax,0
 00403F1A    pop         eax
>00403F1B    je          00403FC0
 00403F21    mov         edx,eax
 00403F23    mov         eax,dword ptr [esp+14]
 00403F27    mov         ecx,dword ptr [eax+0C]
>00403F2A    jmp         00403F53
 00403F2C    cmp         byte ptr ds:[53D030],1
>00403F33    jbe         00403F53
 00403F35    cmp         byte ptr ds:[53D02C],0;gvar_0053D02C
>00403F3C    ja          00403F53
 00403F3E    push        eax
 00403F3F    lea         eax,[esp+8]
 00403F43    push        edx
 00403F44    push        ecx
 00403F45    push        eax
 00403F46    call        kernel32.UnhandledExceptionFilter
 00403F4B    cmp         eax,0
 00403F4E    pop         ecx
 00403F4F    pop         edx
 00403F50    pop         eax
>00403F51    je          00403FC0
 00403F53    xor         ebx,ebx
 00403F55    mov         ebx,dword ptr fs:[ebx]
 00403F58    push        ebx
 00403F59    push        eax
 00403F5A    push        edx
 00403F5B    push        ecx
 00403F5C    mov         edx,dword ptr [esp+28]
 00403F60    or          dword ptr [eax+4],2
 00403F64    push        esi
 00403F65    push        0
 00403F67    push        eax
 00403F68    push        403F74
 00403F6D    push        edx
 00403F6E    call        dword ptr ds:[55C018]
 00403F74    pop         ebx
 00403F75    mov         edi,dword ptr [esp+28]
 00403F79    call        @GetTls
 00403F7E    push        dword ptr [eax+0];{RaiseListPtr:Pointer}
 00403F84    mov         dword ptr [eax+0],esp;{RaiseListPtr:Pointer}
 00403F8A    mov         ebp,dword ptr [edi+8]
 00403F8D    mov         dword ptr [edi+4],403FA0
 00403F94    mov         eax,dword ptr [esp+8]
 00403F98    call        NotifyOnExcept
 00403F9D    jmp         dword ptr [ebx+4]
>00403FA0    jmp         @HandleFinally
 00403FA5    call        @GetTls
 00403FAA    mov         ecx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00403FB0    mov         edx,dword ptr [ecx]
 00403FB2    mov         dword ptr [eax+0],edx;{RaiseListPtr:Pointer}
 00403FB8    mov         eax,dword ptr [ecx+8]
>00403FBB    jmp         TObject.Free
 00403FC0    mov         eax,1
 00403FC5    ret
*}
end;

//00403FC8
procedure @HandleFinally;
begin
{*
 00403FC8    mov         eax,dword ptr [esp+4]
 00403FCC    mov         edx,dword ptr [esp+8]
 00403FD0    test        dword ptr [eax+4],6
>00403FD7    je          00403FF8
 00403FD9    mov         ecx,dword ptr [edx+4]
 00403FDC    mov         dword ptr [edx+4],403FF8
 00403FE3    push        ebx
 00403FE4    push        esi
 00403FE5    push        edi
 00403FE6    push        ebp
 00403FE7    mov         ebp,dword ptr [edx+8]
 00403FEA    add         ecx,5
 00403FED    call        NotifyExceptFinally
 00403FF2    call        ecx
 00403FF4    pop         ebp
 00403FF5    pop         edi
 00403FF6    pop         esi
 00403FF7    pop         ebx
 00403FF8    mov         eax,1
 00403FFD    ret
*}
end;

//00404000
procedure @HandleAutoException;
begin
{*
 00404000    mov         eax,dword ptr [esp+4]
 00404004    test        dword ptr [eax+4],6
>0040400B    jne         004040BC
 00404011    cmp         dword ptr [eax],0EEDFADE
 00404017    cld
 00404018    call        @FpuInit
>0040401D    je          00404046
 0040401F    cmp         byte ptr ds:[53D030],0
>00404026    jbe         00404046
 00404028    cmp         byte ptr ds:[53D02C],0;gvar_0053D02C
>0040402F    ja          00404046
 00404031    lea         eax,[esp+4]
 00404035    push        eax
 00404036    call        kernel32.UnhandledExceptionFilter
 0040403B    cmp         eax,0
>0040403E    je          004040BC
 00404040    mov         eax,dword ptr [esp+4]
>00404044    jmp         00404058
 00404046    cmp         byte ptr ds:[53D030],1
>0040404D    jbe         00404058
 0040404F    cmp         byte ptr ds:[53D02C],0;gvar_0053D02C
>00404056    jbe         00404031
 00404058    or          dword ptr [eax+4],2
 0040405C    push        esi
 0040405D    push        edi
 0040405E    push        ebp
 0040405F    mov         edx,dword ptr [esp+14]
 00404063    push        0
 00404065    push        eax
 00404066    push        404072
 0040406B    push        edx
 0040406C    call        dword ptr ds:[55C018]
 00404072    pop         ebp
 00404073    pop         edi
 00404074    pop         esi
 00404075    mov         eax,dword ptr [esp+4]
 00404079    mov         ebx,8000FFFF
 0040407E    cmp         dword ptr [eax],0EEDFADE
>00404084    jne         004040AA
 00404086    mov         edx,dword ptr [eax+18]
 00404089    mov         ecx,dword ptr [eax+14]
 0040408C    mov         eax,dword ptr [esp+8]
 00404090    mov         eax,dword ptr [eax+0C]
 00404093    test        eax,eax
>00404095    je          0040409E
 00404097    mov         ebx,dword ptr [eax]
 00404099    call        dword ptr [ebx-20]
 0040409C    mov         ebx,eax
 0040409E    mov         eax,dword ptr [esp+4]
 004040A2    mov         eax,dword ptr [eax+18]
 004040A5    call        TObject.Free
 004040AA    xor         eax,eax
 004040AC    mov         esp,dword ptr [esp+8]
 004040B0    pop         ecx
 004040B1    mov         dword ptr fs:[eax],ecx
 004040B4    pop         edx
 004040B5    pop         ebp
 004040B6    lea         edx,[edx+5]
 004040B9    pop         ecx
 004040BA    jmp         edx
 004040BC    mov         eax,1
 004040C1    ret
*}
end;

//004040C4
procedure @RaiseExcept;
begin
{*
 004040C4    or          eax,eax
>004040C6    jne         004040D2
 004040C8    mov         eax,0D8
 004040CD    call        @RunError
 004040D2    pop         edx
 004040D3    push        esp
 004040D4    push        ebp
 004040D5    push        edi
 004040D6    push        esi
 004040D7    push        ebx
 004040D8    push        eax
 004040D9    push        edx
 004040DA    push        esp
 004040DB    push        7
 004040DD    push        1
 004040DF    push        0EEDFADE
 004040E4    push        edx
 004040E5    jmp         dword ptr ds:[55C014]
 004040EB    ret
*}
end;

//004040EC
procedure @RaiseAgain;
begin
{*
 004040EC    mov         eax,dword ptr [esp+30]
 004040F0    mov         dword ptr [eax+4],404137
 004040F7    call        @GetTls
 004040FC    mov         edx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 00404102    mov         ecx,dword ptr [edx]
 00404104    mov         dword ptr [eax+0],ecx;{RaiseListPtr:Pointer}
 0040410A    mov         eax,dword ptr [edx+0C]
 0040410D    and         dword ptr [eax+4],0FFFFFFFD
 00404111    cmp         dword ptr [eax],0EEDFADE
>00404117    je          00404126
 00404119    mov         eax,dword ptr [edx+8]
 0040411C    call        TObject.Free
 00404121    call        NotifyReRaise
 00404126    xor         eax,eax
 00404128    add         esp,14
 0040412B    mov         edx,dword ptr fs:[eax]
 0040412E    pop         ecx
 0040412F    mov         edx,dword ptr [edx]
 00404131    mov         dword ptr [ecx],edx
 00404133    pop         ebp
 00404134    pop         edi
 00404135    pop         esi
 00404136    pop         ebx
 00404137    mov         eax,1
 0040413C    ret
*}
end;

//00404140
procedure @DoneExcept;
begin
{*
 00404140    call        @GetTls
 00404145    mov         edx,dword ptr [eax+0];{RaiseListPtr:Pointer}
 0040414B    mov         ecx,dword ptr [edx]
 0040414D    mov         dword ptr [eax+0],ecx;{RaiseListPtr:Pointer}
 00404153    mov         eax,dword ptr [edx+8]
 00404156    call        TObject.Free
 0040415B    pop         edx
 0040415C    mov         esp,dword ptr [esp+2C]
 00404160    xor         eax,eax
 00404162    pop         ecx
 00404163    mov         dword ptr fs:[eax],ecx
 00404166    pop         eax
 00404167    pop         ebp
 00404168    call        NotifyTerminate
 0040416D    jmp         edx
 0040416F    ret
*}
end;

//00404170
procedure @TryFinallyExit;
begin
{*
 00404170    xor         edx,edx
 00404172    mov         ecx,dword ptr [esp+8]
 00404176    mov         eax,dword ptr [esp+4]
 0040417A    add         ecx,5
 0040417D    mov         dword ptr fs:[edx],eax
 00404180    call        ecx
 00404182    ret         0C
*}
end;

//00404188
procedure MapToRunError(P:PExceptionRecord); stdcall;
begin
{*
 00404188    push        ebp
 00404189    mov         ebp,esp
 0040418B    mov         edx,dword ptr [ebp+8]
 0040418E    mov         eax,dword ptr [edx]
 00404190    cmp         eax,0C0000092
>00404195    jg          004041C3
>00404197    je          004041F5
 00404199    cmp         eax,0C000008E
>0040419E    jg          004041B5
>004041A0    je          004041F9
 004041A2    sub         eax,0C0000005
>004041A7    je          00404205
 004041A9    sub         eax,87
>004041AE    je          004041ED
 004041B0    dec         eax
>004041B1    je          00404201
>004041B3    jmp         00404215
 004041B5    add         eax,3FFFFF71
 004041BA    sub         eax,2
>004041BD    jb          004041F5
>004041BF    je          004041F1
>004041C1    jmp         00404215
 004041C3    cmp         eax,0C0000096
>004041C8    jg          004041DB
>004041CA    je          00404209
 004041CC    sub         eax,0C0000093
>004041D1    je          00404201
 004041D3    dec         eax
>004041D4    je          004041E9
 004041D6    dec         eax
>004041D7    je          004041FD
>004041D9    jmp         00404215
 004041DB    sub         eax,0C00000FD
>004041E0    je          00404211
 004041E2    sub         eax,3D
>004041E5    je          0040420D
>004041E7    jmp         00404215
 004041E9    mov         al,0C8
>004041EB    jmp         00404217
 004041ED    mov         al,0C9
>004041EF    jmp         00404217
 004041F1    mov         al,0CD
>004041F3    jmp         00404217
 004041F5    mov         al,0CF
>004041F7    jmp         00404217
 004041F9    mov         al,0C8
>004041FB    jmp         00404217
 004041FD    mov         al,0D7
>004041FF    jmp         00404217
 00404201    mov         al,0CE
>00404203    jmp         00404217
 00404205    mov         al,0D8
>00404207    jmp         00404217
 00404209    mov         al,0DA
>0040420B    jmp         00404217
 0040420D    mov         al,0D9
>0040420F    jmp         00404217
 00404211    mov         al,0CA
>00404213    jmp         00404217
 00404215    mov         al,0FF
 00404217    and         eax,0FF
 0040421C    mov         edx,dword ptr [edx+0C]
 0040421F    call        RunErrorAt
 00404224    pop         ebp
 00404225    ret         4
*}
end;

//00404228
procedure @ExceptionHandler;
begin
{*
 00404228    mov         eax,dword ptr [esp+4]
 0040422C    test        dword ptr [eax+4],6
>00404233    jne         004042C2
 00404239    cmp         byte ptr ds:[53D02C],0;gvar_0053D02C
>00404240    ja          00404251
 00404242    lea         eax,[esp+4]
 00404246    push        eax
 00404247    call        kernel32.UnhandledExceptionFilter
 0040424C    cmp         eax,0
>0040424F    je          004042C2
 00404251    mov         eax,dword ptr [esp+4]
 00404255    cld
 00404256    call        @FpuInit
 0040425B    mov         edx,dword ptr [esp+8]
 0040425F    push        0
 00404261    push        eax
 00404262    push        40426E
 00404267    push        edx
 00404268    call        dword ptr ds:[55C018]
 0040426E    mov         ebx,dword ptr [esp+4]
 00404272    cmp         dword ptr [ebx],0EEDFADE
 00404278    mov         edx,dword ptr [ebx+14]
 0040427B    mov         eax,dword ptr [ebx+18]
>0040427E    je          0040429D
 00404280    mov         edx,dword ptr ds:[55C010];gvar_0055C010
 00404286    test        edx,edx
>00404288    je          00404188
 0040428E    mov         eax,ebx
 00404290    call        edx
 00404292    test        eax,eax
>00404294    je          00404188
 0040429A    mov         edx,dword ptr [ebx+0C]
 0040429D    call        NotifyUnhandled
 004042A2    mov         ecx,dword ptr ds:[55C004];gvar_0055C004
 004042A8    test        ecx,ecx
>004042AA    je          004042AE
 004042AC    call        ecx
 004042AE    mov         ecx,dword ptr [esp+4]
 004042B2    mov         eax,0D9
 004042B7    mov         edx,dword ptr [ecx+14]
 004042BA    mov         dword ptr [esp],edx
>004042BD    jmp         @RunError
 004042C2    xor         eax,eax
 004042C4    ret
*}
end;

//004042C8
procedure SetExceptionHandler;
begin
{*
 004042C8    xor         edx,edx
 004042CA    lea         eax,[ebp-0C]
 004042CD    mov         ecx,dword ptr fs:[edx]
 004042D0    mov         dword ptr fs:[edx],eax
 004042D3    mov         dword ptr [eax],ecx
 004042D5    mov         dword ptr [eax+4],404228;@ExceptionHandler
 004042DC    mov         dword ptr [eax+8],ebp
 004042DF    mov         [0055C638],eax
 004042E4    ret
*}
end;

//004042E8
procedure UnsetExceptionHandler;
begin
{*
 004042E8    xor         edx,edx
 004042EA    mov         eax,[0055C638]
 004042EF    test        eax,eax
>004042F1    je          0040430F
 004042F3    mov         ecx,dword ptr fs:[edx]
 004042F6    cmp         eax,ecx
>004042F8    jne         00404302
 004042FA    mov         eax,dword ptr [eax]
 004042FC    mov         dword ptr fs:[edx],eax
 004042FF    ret
 00404300    mov         ecx,dword ptr [ecx]
 00404302    cmp         ecx,0FFFFFFFF
>00404305    je          0040430F
 00404307    cmp         dword ptr [ecx],eax
>00404309    jne         00404300
 0040430B    mov         eax,dword ptr [eax]
 0040430D    mov         dword ptr [ecx],eax
 0040430F    ret
*}
end;

//00404310
procedure FinalizeUnits;
begin
{*
 00404310    push        ebp
 00404311    mov         ebp,esp
 00404313    push        ebx
 00404314    push        esi
 00404315    push        edi
 00404316    mov         edi,55C634
 0040431B    mov         eax,dword ptr [edi+8]
 0040431E    test        eax,eax
>00404320    je          0040436A
 00404322    mov         ebx,dword ptr [edi+0C]
 00404325    mov         esi,dword ptr [eax+4]
 00404328    xor         edx,edx
 0040432A    push        ebp
 0040432B    push        404356
 00404330    push        dword ptr fs:[edx]
 00404333    mov         dword ptr fs:[edx],esp
 00404336    test        ebx,ebx
>00404338    jle         0040434C
 0040433A    dec         ebx
 0040433B    mov         dword ptr [edi+0C],ebx
 0040433E    mov         eax,dword ptr [esi+ebx*8+4]
 00404342    test        eax,eax
>00404344    je          00404348
 00404346    call        eax
 00404348    test        ebx,ebx
>0040434A    jg          0040433A
 0040434C    xor         eax,eax
 0040434E    pop         edx
 0040434F    pop         ecx
 00404350    pop         ecx
 00404351    mov         dword ptr fs:[eax],edx
>00404354    jmp         0040436A
>00404356    jmp         @HandleAnyException
 0040435B    call        FinalizeUnits
 00404360    call        @RaiseAgain
 00404365    call        @DoneExcept
 0040436A    pop         edi
 0040436B    pop         esi
 0040436C    pop         ebx
 0040436D    pop         ebp
 0040436E    ret
*}
end;

//00404370
procedure InitUnits;
begin
{*
 00404370    push        ebp
 00404371    mov         ebp,esp
 00404373    push        ebx
 00404374    push        esi
 00404375    push        edi
 00404376    mov         eax,[0055C63C]
 0040437B    test        eax,eax
>0040437D    je          004043CA
 0040437F    mov         esi,dword ptr [eax]
 00404381    xor         ebx,ebx
 00404383    mov         edi,dword ptr [eax+4]
 00404386    xor         edx,edx
 00404388    push        ebp
 00404389    push        4043B6
 0040438E    push        dword ptr fs:[edx]
 00404391    mov         dword ptr fs:[edx],esp
 00404394    cmp         esi,ebx
>00404396    jle         004043AC
 00404398    mov         eax,dword ptr [edi+ebx*8]
 0040439B    inc         ebx
 0040439C    mov         dword ptr ds:[55C640],ebx
 004043A2    test        eax,eax
>004043A4    je          004043A8
 004043A6    call        eax
 004043A8    cmp         esi,ebx
>004043AA    jg          00404398
 004043AC    xor         eax,eax
 004043AE    pop         edx
 004043AF    pop         ecx
 004043B0    pop         ecx
 004043B1    mov         dword ptr fs:[eax],edx
>004043B4    jmp         004043CA
>004043B6    jmp         @HandleAnyException
 004043BB    call        FinalizeUnits
 004043C0    call        @RaiseAgain
 004043C5    call        @DoneExcept
 004043CA    pop         edi
 004043CB    pop         esi
 004043CC    pop         ebx
 004043CD    pop         ebp
 004043CE    ret
*}
end;

//004043D0
procedure @StartExe(InitTable:PackageInfo; Module:PLibModule);
begin
{*
 004043D0    mov         dword ptr ds:[55C014],401254
 004043DA    mov         dword ptr ds:[55C018],401264
 004043E4    mov         [0055C63C],eax
 004043E9    xor         eax,eax
 004043EB    mov         [0055C640],eax
 004043F0    mov         dword ptr ds:[55C644],edx
 004043F6    mov         eax,dword ptr [edx+4]
 004043F9    mov         [0055C02C],eax;gvar_0055C02C
 004043FE    call        SetExceptionHandler
 00404403    mov         byte ptr ds:[55C034],0;gvar_0055C034
 0040440A    call        InitUnits
 0040440F    ret
*}
end;

//00404410
procedure @InitResStrings;
begin
{*
 00404410    push        ebx
 00404411    xor         ebx,ebx
 00404413    push        edi
 00404414    push        esi
 00404415    mov         edi,dword ptr [eax+ebx]
 00404418    lea         esi,[eax+ebx+4]
 0040441C    mov         eax,dword ptr [esi+4]
 0040441F    mov         edx,dword ptr [esi]
 00404421    add         eax,ebx
 00404423    add         edx,ebx
 00404425    call        LoadResString
 0040442A    add         esi,8
 0040442D    dec         edi
>0040442E    jne         0040441C
 00404430    pop         esi
 00404431    pop         edi
 00404432    pop         ebx
 00404433    ret
*}
end;

//00404434
procedure @InitResStringImports;
begin
{*
 00404434    push        ebx
 00404435    xor         ebx,ebx
 00404437    push        edi
 00404438    push        esi
 00404439    mov         edi,dword ptr [eax+ebx]
 0040443C    lea         esi,[eax+ebx+4]
 00404440    mov         eax,dword ptr [esi+4]
 00404443    mov         edx,dword ptr [esi]
 00404445    mov         eax,dword ptr [eax+ebx]
 00404448    add         edx,ebx
 0040444A    call        LoadResString
 0040444F    add         esi,8
 00404452    dec         edi
>00404453    jne         00404440
 00404455    pop         esi
 00404456    pop         edi
 00404457    pop         ebx
 00404458    ret
*}
end;

//0040445C
procedure @InitImports;
begin
{*
 0040445C    push        ebx
 0040445D    xor         ebx,ebx
 0040445F    push        edi
 00404460    push        esi
 00404461    mov         edi,dword ptr [eax+ebx]
 00404464    lea         esi,[eax+ebx+4]
 00404468    mov         eax,dword ptr [esi+4]
 0040446B    mov         edx,dword ptr [esi]
 0040446D    mov         eax,dword ptr [eax+ebx]
 00404470    add         eax,dword ptr [esi+8]
 00404473    mov         dword ptr [edx+ebx],eax
 00404476    add         esi,0C
 00404479    dec         edi
>0040447A    jne         00404468
 0040447C    pop         esi
 0040447D    pop         edi
 0040447E    pop         ebx
 0040447F    ret
*}
end;

//00404480
procedure MakeErrorMessage;
begin
{*
 00404480    push        ebx
 00404481    push        esi
 00404482    push        edi
 00404483    mov         esi,53D074
 00404488    mov         cl,10
 0040448A    mov         ebx,dword ptr ds:[53D000]
 00404490    mov         eax,ebx
 00404492    mov         edi,0A
 00404497    cdq
 00404498    idiv        eax,edi
 0040449A    add         dl,30
 0040449D    xor         eax,eax
 0040449F    mov         al,cl
 004044A1    mov         byte ptr [esi+eax],dl
 004044A4    mov         eax,ebx
 004044A6    mov         ebx,0A
 004044AB    cdq
 004044AC    idiv        eax,ebx
 004044AE    mov         ebx,eax
 004044B0    dec         ecx
 004044B1    test        ebx,ebx
>004044B3    jne         00404490
 004044B5    mov         cl,1C
 004044B7    mov         eax,[0053D004]
 004044BC    mov         edx,eax
 004044BE    and         edx,0F
 004044C1    mov         dl,byte ptr [edx+53D094]
 004044C7    xor         ebx,ebx
 004044C9    mov         bl,cl
 004044CB    mov         byte ptr [esi+ebx],dl
 004044CE    shr         eax,4
 004044D1    dec         ecx
 004044D2    test        eax,eax
>004044D4    jne         004044BC
 004044D6    pop         edi
 004044D7    pop         esi
 004044D8    pop         ebx
 004044D9    ret
*}
end;

//004044DC
procedure ExitDll;
begin
{*
 004044DC    xor         eax,eax
 004044DE    xchg        eax,dword ptr ds:[53D000]
 004044E4    neg         eax
 004044E6    sbb         eax,eax
 004044E8    inc         eax
 004044E9    mov         edi,55C634
 004044EE    mov         ebx,dword ptr [edi+18]
 004044F1    mov         ebp,dword ptr [edi+14]
 004044F4    push        dword ptr [edi+1C]
 004044F7    push        dword ptr [edi+20]
 004044FA    mov         esi,dword ptr [edi]
 004044FC    mov         ecx,0B
 00404501    rep movs    dword ptr [edi],dword ptr [esi]
 00404503    pop         edi
 00404504    pop         esi
 00404505    leave
 00404506    ret         0C
*}
end;

//0040450C
procedure WriteErrorMessage;
begin
{*
 0040450C    push        ecx
 0040450D    cmp         byte ptr ds:[55C048],0;gvar_0055C048
>00404514    je          0040456D
 00404516    cmp         word ptr ds:[55C21C],0D7B2
>0040451F    jne         00404535
 00404521    cmp         dword ptr ds:[55C224],0
>00404528    jbe         00404535
 0040452A    mov         eax,55C218;gvar_0055C218:TTextRec
 0040452F    call        dword ptr ds:[55C234]
 00404535    push        0
 00404537    lea         eax,[esp+4]
 0040453B    push        eax
 0040453C    push        1E
 0040453E    push        53D074
 00404543    push        0F5
 00404545    call        kernel32.GetStdHandle
 0040454A    push        eax
 0040454B    call        kernel32.WriteFile
 00404550    push        0
 00404552    lea         eax,[esp+4]
 00404556    push        eax
 00404557    push        2
 00404559    push        404594;#13+#10
 0040455E    push        0F5
 00404560    call        kernel32.GetStdHandle
 00404565    push        eax
 00404566    call        kernel32.WriteFile
 0040456B    pop         edx
 0040456C    ret
 0040456D    cmp         byte ptr ds:[53D034],0
>00404574    jne         00404589
 00404576    push        0
 00404578    push        53D06C
 0040457D    push        53D074
 00404582    push        0
 00404584    call        user32.MessageBoxA
 00404589    pop         edx
 0040458A    ret
*}
end;

//00404598
procedure @Halt0;
begin
{*
 00404598    push        ebx
 00404599    push        esi
 0040459A    push        edi
 0040459B    push        ebp
 0040459C    mov         ebx,55C634
 004045A1    mov         esi,53D000
 004045A6    mov         edi,55C044;gvar_0055C044
 004045AB    cmp         byte ptr [ebx+28],0
>004045AF    jne         004045C7
 004045B1    cmp         dword ptr [edi],0
>004045B4    je          004045C7
 004045B6    mov         edx,dword ptr [edi]
 004045B8    mov         eax,edx
 004045BA    xor         edx,edx
 004045BC    mov         dword ptr [edi],edx
 004045BE    mov         ebp,eax
 004045C0    call        ebp
 004045C2    cmp         dword ptr [edi],0
>004045C5    jne         004045B6
 004045C7    cmp         dword ptr ds:[53D004],0
>004045CE    je          004045E1
 004045D0    call        MakeErrorMessage
 004045D5    call        WriteErrorMessage
 004045DA    xor         eax,eax
 004045DC    mov         [0053D004],eax
 004045E1    cmp         byte ptr [ebx+28],2
>004045E5    jne         004045F1
 004045E7    cmp         dword ptr [esi],0
>004045EA    jne         004045F1
 004045EC    xor         eax,eax
 004045EE    mov         dword ptr [ebx+0C],eax
 004045F1    call        FinalizeUnits
 004045F6    cmp         byte ptr [ebx+28],1
>004045FA    jbe         00404601
 004045FC    cmp         dword ptr [esi],0
>004045FF    je          00404622
 00404601    mov         eax,dword ptr [ebx+10]
 00404604    test        eax,eax
>00404606    je          00404622
 00404608    call        UnregisterModule
 0040460D    mov         edx,dword ptr [ebx+10]
 00404610    mov         eax,dword ptr [edx+10]
 00404613    cmp         eax,dword ptr [edx+4]
>00404616    je          00404622
 00404618    test        eax,eax
>0040461A    je          00404622
 0040461C    push        eax
 0040461D    call        kernel32.FreeLibrary
 00404622    call        UnsetExceptionHandler
 00404627    cmp         byte ptr [ebx+28],1
>0040462B    jne         00404630
 0040462D    call        dword ptr [ebx+24]
 00404630    cmp         byte ptr [ebx+28],0
>00404634    je          0040463B
 00404636    call        ExitDll
 0040463B    cmp         dword ptr [ebx],0
>0040463E    jne         00404657
 00404640    cmp         dword ptr ds:[55C024],0
>00404647    je          0040464F
 00404649    call        dword ptr ds:[55C024]
 0040464F    mov         eax,dword ptr [esi]
 00404651    push        eax
 00404652    call        kernel32.ExitProcess
 00404657    mov         eax,dword ptr [ebx]
 00404659    push        esi
 0040465A    mov         esi,eax
 0040465C    mov         edi,ebx
 0040465E    mov         ecx,0B
 00404663    rep movs    dword ptr [edi],dword ptr [esi]
 00404665    pop         esi
>00404666    jmp         004045E1
 0040466B    pop         ebp
 0040466C    pop         edi
 0040466D    pop         esi
 0040466E    pop         ebx
 0040466F    ret
*}
end;

//00404670
procedure @Halt(Code:Integer);
begin
{*
 00404670    mov         [0053D000],eax
 00404675    call        @Halt0
 0040467A    ret
*}
end;

//0040467C
procedure @RunError(errorCode:Byte);
begin
{*
 0040467C    pop         dword ptr ds:[53D004]
>00404682    jmp         @Halt
 00404687    ret
*}
end;

//00404688
function ThreadWrapper(Parameter:Pointer):Integer; stdcall;
begin
{*
 00404688    push        ebp
 00404689    mov         ebp,esp
 0040468B    call        @FpuInit
 00404690    push        ebp
 00404691    xor         ecx,ecx
 00404693    push        404228;@ExceptionHandler
 00404698    mov         edx,dword ptr fs:[ecx]
 0040469B    push        edx
 0040469C    mov         dword ptr fs:[ecx],esp
 0040469F    mov         eax,dword ptr [ebp+8]
 004046A2    mov         ecx,dword ptr [eax+4]
 004046A5    mov         edx,dword ptr [eax]
 004046A7    push        ecx
 004046A8    push        edx
 004046A9    call        @FreeMem
 004046AE    pop         edx
 004046AF    pop         eax
 004046B0    call        edx
 004046B2    xor         edx,edx
 004046B4    pop         ecx
 004046B5    mov         dword ptr fs:[edx],ecx
 004046B8    pop         ecx
 004046B9    pop         ebp
 004046BA    pop         ebp
 004046BB    ret         4
*}
end;

//004046C0
function BeginThread(SecurityAttributes:Pointer; StackSize:Cardinal; ThreadFunc:TThreadFunc; Parameter:Pointer; CreationFlags:Cardinal; var ThreadId:Cardinal):Integer;
begin
{*
 004046C0    push        ebp
 004046C1    mov         ebp,esp
 004046C3    push        ebx
 004046C4    push        esi
 004046C5    push        edi
 004046C6    mov         edi,ecx
 004046C8    mov         esi,edx
 004046CA    mov         ebx,eax
 004046CC    mov         eax,8
 004046D1    call        @GetMem
 004046D6    mov         dword ptr [eax],edi
 004046D8    mov         edx,dword ptr [ebp+10]
 004046DB    mov         dword ptr [eax+4],edx
 004046DE    mov         byte ptr ds:[55C049],1;gvar_0055C049
 004046E5    mov         edx,dword ptr [ebp+8]
 004046E8    push        edx
 004046E9    mov         edx,dword ptr [ebp+0C]
 004046EC    push        edx
 004046ED    push        eax
 004046EE    mov         eax,404688;ThreadWrapper:Integer
 004046F3    push        eax
 004046F4    push        esi
 004046F5    push        ebx
 004046F6    call        kernel32.CreateThread
 004046FB    pop         edi
 004046FC    pop         esi
 004046FD    pop         ebx
 004046FE    pop         ebp
 004046FF    ret         0C
*}
end;

//0040470C
procedure @LStrClr(var S:AnsiString);
begin
{*
 0040470C    mov         edx,dword ptr [eax]
 0040470E    test        edx,edx
>00404710    je          0040472E
 00404712    mov         dword ptr [eax],0
 00404718    mov         ecx,dword ptr [edx-8]
 0040471B    dec         ecx
>0040471C    jl          0040472E
 0040471E    lock dec    dword ptr [edx-8]
>00404722    jne         0040472E
 00404724    push        eax
 00404725    lea         eax,[edx-8]
 00404728    call        @FreeMem
 0040472D    pop         eax
 0040472E    ret
*}
end;

//00404730
procedure @LStrArrayClr(var StrArray:Pointer; Count:Integer);
begin
{*
 00404730    push        ebx
 00404731    push        esi
 00404732    mov         ebx,eax
 00404734    mov         esi,edx
 00404736    mov         edx,dword ptr [ebx]
 00404738    test        edx,edx
>0040473A    je          00404756
 0040473C    mov         dword ptr [ebx],0
 00404742    mov         ecx,dword ptr [edx-8]
 00404745    dec         ecx
>00404746    jl          00404756
 00404748    lock dec    dword ptr [edx-8]
>0040474C    jne         00404756
 0040474E    lea         eax,[edx-8]
 00404751    call        @FreeMem
 00404756    add         ebx,4
 00404759    dec         esi
>0040475A    jne         00404736
 0040475C    pop         esi
 0040475D    pop         ebx
 0040475E    ret
*}
end;

//00404760
procedure @LStrAsg(var Dest:AnsiString; Source:AnsiString);
begin
{*
 00404760    test        edx,edx
>00404762    je          00404788
 00404764    mov         ecx,dword ptr [edx-8]
 00404767    inc         ecx
>00404768    jg          00404784
 0040476A    push        eax
 0040476B    push        edx
 0040476C    mov         eax,dword ptr [edx-4]
 0040476F    call        @NewAnsiString
 00404774    mov         edx,eax
 00404776    pop         eax
 00404777    push        edx
 00404778    mov         ecx,dword ptr [eax-4]
 0040477B    call        Move
 00404780    pop         edx
 00404781    pop         eax
>00404782    jmp         00404788
 00404784    lock inc    dword ptr [edx-8]
 00404788    xchg        edx,dword ptr [eax]
 0040478A    test        edx,edx
>0040478C    je          004047A2
 0040478E    mov         ecx,dword ptr [edx-8]
 00404791    dec         ecx
>00404792    jl          004047A2
 00404794    lock dec    dword ptr [edx-8]
>00404798    jne         004047A2
 0040479A    lea         eax,[edx-8]
 0040479D    call        @FreeMem
 004047A2    ret
*}
end;

//004047A4
procedure @LStrLAsg(var Dest:AnsiString; const Source:AnsiString);
begin
{*
 004047A4    test        edx,edx
>004047A6    je          004047B2
 004047A8    mov         ecx,dword ptr [edx-8]
 004047AB    inc         ecx
>004047AC    jle         004047B2
 004047AE    lock inc    dword ptr [edx-8]
 004047B2    xchg        edx,dword ptr [eax]
 004047B4    test        edx,edx
>004047B6    je          004047CC
 004047B8    mov         ecx,dword ptr [edx-8]
 004047BB    dec         ecx
>004047BC    jl          004047CC
 004047BE    lock dec    dword ptr [edx-8]
>004047C2    jne         004047CC
 004047C4    lea         eax,[edx-8]
 004047C7    call        @FreeMem
 004047CC    ret
*}
end;

//004047D0
function @NewAnsiString(length:Integer):Pointer;
begin
{*
 004047D0    test        eax,eax
>004047D2    jle         004047F8
 004047D4    push        eax
 004047D5    add         eax,0A
 004047D8    and         eax,0FFFFFFFE
 004047DB    push        eax
 004047DC    call        @GetMem
 004047E1    pop         edx
 004047E2    mov         word ptr [edx+eax-2],0
 004047E9    add         eax,8
 004047EC    pop         edx
 004047ED    mov         dword ptr [eax-4],edx
 004047F0    mov         dword ptr [eax-8],1
 004047F7    ret
 004047F8    xor         eax,eax
 004047FA    ret
*}
end;

//004047FC
procedure @LStrFromPCharLen(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);
begin
{*
 004047FC    push        ebx
 004047FD    push        esi
 004047FE    push        edi
 004047FF    mov         ebx,eax
 00404801    mov         esi,edx
 00404803    mov         edi,ecx
 00404805    mov         eax,edi
 00404807    call        @NewAnsiString
 0040480C    mov         ecx,edi
 0040480E    mov         edi,eax
 00404810    test        esi,esi
>00404812    je          0040481D
 00404814    mov         edx,eax
 00404816    mov         eax,esi
 00404818    call        Move
 0040481D    mov         eax,ebx
 0040481F    call        @LStrClr
 00404824    mov         dword ptr [ebx],edi
 00404826    pop         edi
 00404827    pop         esi
 00404828    pop         ebx
 00404829    ret
*}
end;

//0040482C
function CharFromWChar(CharDest:PAnsiChar; DestBytes:Integer; const WCharSource:PWideChar; SrcChars:Integer):Integer;
begin
{*
 0040482C    push        ebp
 0040482D    mov         ebp,esp
 0040482F    push        0
 00404831    push        0
 00404833    push        edx
 00404834    push        eax
 00404835    mov         eax,dword ptr [ebp+8]
 00404838    push        eax
 00404839    push        ecx
 0040483A    push        0
 0040483C    mov         eax,[0055C5BC]
 00404841    push        eax
 00404842    call        kernel32.WideCharToMultiByte
 00404847    pop         ebp
 00404848    ret         4
*}
end;

//0040484C
function WCharFromChar(WCharDest:PWideChar; DestChars:Integer; const CharSource:PAnsiChar; SrcBytes:Integer):Integer;
begin
{*
 0040484C    push        ebp
 0040484D    mov         ebp,esp
 0040484F    push        edx
 00404850    push        eax
 00404851    mov         eax,dword ptr [ebp+8]
 00404854    push        eax
 00404855    push        ecx
 00404856    push        0
 00404858    mov         eax,[0055C5BC]
 0040485D    push        eax
 0040485E    call        kernel32.MultiByteToWideChar
 00404863    pop         ebp
 00404864    ret         4
*}
end;

//00404868
procedure @LStrFromPWCharLen(var Dest:AnsiString; Source:PWideChar; Length:Integer);
begin
{*
 00404868    push        ebx
 00404869    push        esi
 0040486A    push        edi
 0040486B    push        ebp
 0040486C    add         esp,0FFFFF004
 00404872    push        eax
 00404873    add         esp,0FFFFFFFC
 00404876    mov         esi,ecx
 00404878    mov         dword ptr [esp],edx
 0040487B    mov         edi,eax
 0040487D    test        esi,esi
>0040487F    jg          0040488A
 00404881    mov         eax,edi
 00404883    call        @LStrClr
>00404888    jmp         004048E9
 0040488A    lea         ebp,[esi+1]
 0040488D    cmp         ebp,7FF
>00404893    jge         004048BD
 00404895    push        esi
 00404896    lea         eax,[esp+8]
 0040489A    mov         ecx,dword ptr [esp+4]
 0040489E    mov         edx,0FFF
 004048A3    call        CharFromWChar
 004048A8    mov         ebx,eax
 004048AA    test        ebx,ebx
>004048AC    jl          004048BD
 004048AE    lea         edx,[esp+4]
 004048B2    mov         eax,edi
 004048B4    mov         ecx,ebx
 004048B6    call        @LStrFromPCharLen
>004048BB    jmp         004048E9
 004048BD    mov         ebx,ebp
 004048BF    add         ebx,ebx
 004048C1    mov         eax,edi
 004048C3    mov         edx,ebx
 004048C5    call        @LStrSetLength
 004048CA    push        esi
 004048CB    mov         eax,dword ptr [edi]
 004048CD    mov         ecx,dword ptr [esp+4]
 004048D1    mov         edx,ebx
 004048D3    call        CharFromWChar
 004048D8    mov         ebx,eax
 004048DA    test        ebx,ebx
>004048DC    jge         004048E0
 004048DE    xor         ebx,ebx
 004048E0    mov         eax,edi
 004048E2    mov         edx,ebx
 004048E4    call        @LStrSetLength
 004048E9    add         esp,1004
 004048EF    pop         ebp
 004048F0    pop         edi
 004048F1    pop         esi
 004048F2    pop         ebx
 004048F3    ret
*}
end;

//004048F4
procedure @LStrFromChar(var Dest:AnsiString; Source:AnsiChar);
begin
{*
 004048F4    push        edx
 004048F5    mov         edx,esp
 004048F7    mov         ecx,1
 004048FC    call        @LStrFromPCharLen
 00404901    pop         edx
 00404902    ret
*}
end;

//00404904
procedure @LStrFromWChar(var Dest:AnsiString; Source:WideChar);
begin
{*
 00404904    push        edx
 00404905    mov         edx,esp
 00404907    mov         ecx,1
 0040490C    call        @LStrFromPWCharLen
 00404911    pop         edx
 00404912    ret
*}
end;

//00404914
procedure @LStrFromPChar(var Dest:AnsiString; Source:PAnsiChar);
begin
{*
 00404914    xor         ecx,ecx
 00404916    test        edx,edx
>00404918    je          0040493B
 0040491A    push        edx
 0040491B    cmp         cl,byte ptr [edx]
>0040491D    je          00404936
 0040491F    cmp         cl,byte ptr [edx+1]
>00404922    je          00404935
 00404924    cmp         cl,byte ptr [edx+2]
>00404927    je          00404934
 00404929    cmp         cl,byte ptr [edx+3]
>0040492C    je          00404933
 0040492E    add         edx,4
>00404931    jmp         0040491B
 00404933    inc         edx
 00404934    inc         edx
 00404935    inc         edx
 00404936    mov         ecx,edx
 00404938    pop         edx
 00404939    sub         ecx,edx
>0040493B    jmp         @LStrFromPCharLen
 00404940    ret
*}
end;

//00404944
procedure @LStrFromPWChar(var Dest:AnsiString; Source:PWideChar);
begin
{*
 00404944    xor         ecx,ecx
 00404946    test        edx,edx
>00404948    je          00404977
 0040494A    push        edx
 0040494B    cmp         cx,word ptr [edx]
>0040494E    je          00404970
 00404950    cmp         cx,word ptr [edx+2]
>00404954    je          0040496D
 00404956    cmp         cx,word ptr [edx+4]
>0040495A    je          0040496A
 0040495C    cmp         cx,word ptr [edx+6]
>00404960    je          00404967
 00404962    add         edx,8
>00404965    jmp         0040494B
 00404967    add         edx,2
 0040496A    add         edx,2
 0040496D    add         edx,2
 00404970    mov         ecx,edx
 00404972    pop         edx
 00404973    sub         ecx,edx
 00404975    shr         ecx,1
>00404977    jmp         @LStrFromPWCharLen
 0040497C    ret
*}
end;

//00404980
procedure @LStrFromString(var Dest:AnsiString; const Source:ShortString);
begin
{*
 00404980    xor         ecx,ecx
 00404982    mov         cl,byte ptr [edx]
 00404984    inc         edx
>00404985    jmp         @LStrFromPCharLen
 0040498A    ret
*}
end;

//0040498C
procedure @LStrFromArray(var Dest:AnsiString; Source:PAnsiChar; Length:Integer);
begin
{*
 0040498C    push        edi
 0040498D    push        eax
 0040498E    push        ecx
 0040498F    mov         edi,edx
 00404991    xor         eax,eax
 00404993    repne scas  byte ptr [edi]
>00404995    jne         00404999
 00404997    not         ecx
 00404999    pop         eax
 0040499A    add         ecx,eax
 0040499C    pop         eax
 0040499D    pop         edi
>0040499E    jmp         @LStrFromPCharLen
 004049A3    ret
*}
end;

//004049A4
procedure @LStrFromWStr(var Dest:AnsiString; const Source:WideString);
begin
{*
 004049A4    xor         ecx,ecx
 004049A6    test        edx,edx
>004049A8    je          004049AF
 004049AA    mov         ecx,dword ptr [edx-4]
 004049AD    shr         ecx,1
>004049AF    jmp         @LStrFromPWCharLen
 004049B4    ret
*}
end;

//004049B8
procedure @LStrToString(var Dest:ShortString; const Source:AnsiString; MaxLen:Integer);
begin
{*
 004049B8    push        ebx
 004049B9    test        edx,edx
>004049BB    je          004049D5
 004049BD    mov         ebx,dword ptr [edx-4]
 004049C0    test        ebx,ebx
>004049C2    je          004049D5
 004049C4    cmp         ecx,ebx
>004049C6    jl          004049CA
 004049C8    mov         ecx,ebx
 004049CA    mov         byte ptr [eax],cl
 004049CC    inc         eax
 004049CD    xchg        eax,edx
 004049CE    call        Move
 004049D3    pop         ebx
 004049D4    ret
 004049D5    mov         byte ptr [eax],0
 004049D8    pop         ebx
 004049D9    ret
*}
end;

//004049DC
function @DynArrayLength(Arr:Pointer):Longint;
begin
{*
 004049DC    test        eax,eax
>004049DE    je          004049E3
 004049E0    mov         eax,dword ptr [eax-4]
 004049E3    ret
*}
end;

//004049E4
procedure @LStrCat(var Dest:AnsiString; Source:AnsiString);
begin
{*
 004049E4    test        edx,edx
>004049E6    je          00404A27
 004049E8    mov         ecx,dword ptr [eax]
 004049EA    test        ecx,ecx
>004049EC    je          00404760
 004049F2    push        ebx
 004049F3    push        esi
 004049F4    push        edi
 004049F5    mov         ebx,eax
 004049F7    mov         esi,edx
 004049F9    mov         edi,dword ptr [ecx-4]
 004049FC    mov         edx,dword ptr [esi-4]
 004049FF    add         edx,edi
 00404A01    cmp         esi,ecx
>00404A03    je          00404A1C
 00404A05    call        @LStrSetLength
 00404A0A    mov         eax,esi
 00404A0C    mov         ecx,dword ptr [esi-4]
 00404A0F    mov         edx,dword ptr [ebx]
 00404A11    add         edx,edi
 00404A13    call        Move
 00404A18    pop         edi
 00404A19    pop         esi
 00404A1A    pop         ebx
 00404A1B    ret
 00404A1C    call        @LStrSetLength
 00404A21    mov         eax,dword ptr [ebx]
 00404A23    mov         ecx,edi
>00404A25    jmp         00404A0F
 00404A27    ret
*}
end;

//00404A28
procedure @LStrCat3(var Dest:AnsiString; Source1:AnsiString; Source2:AnsiString);
begin
{*
 00404A28    test        edx,edx
>00404A2A    je          00404A8D
 00404A2C    test        ecx,ecx
>00404A2E    je          00404760
 00404A34    cmp         edx,dword ptr [eax]
>00404A36    je          00404A94
 00404A38    cmp         ecx,dword ptr [eax]
>00404A3A    je          00404A4A
 00404A3C    push        eax
 00404A3D    push        ecx
 00404A3E    call        @LStrAsg
 00404A43    pop         edx
 00404A44    pop         eax
>00404A45    jmp         @LStrCat
 00404A4A    push        ebx
 00404A4B    push        esi
 00404A4C    push        edi
 00404A4D    mov         ebx,edx
 00404A4F    mov         esi,ecx
 00404A51    push        eax
 00404A52    mov         eax,dword ptr [ebx-4]
 00404A55    add         eax,dword ptr [esi-4]
 00404A58    call        @NewAnsiString
 00404A5D    mov         edi,eax
 00404A5F    mov         edx,eax
 00404A61    mov         eax,ebx
 00404A63    mov         ecx,dword ptr [ebx-4]
 00404A66    call        Move
 00404A6B    mov         edx,edi
 00404A6D    mov         eax,esi
 00404A6F    mov         ecx,dword ptr [esi-4]
 00404A72    add         edx,dword ptr [ebx-4]
 00404A75    call        Move
 00404A7A    pop         eax
 00404A7B    mov         edx,edi
 00404A7D    test        edi,edi
>00404A7F    je          00404A84
 00404A81    dec         dword ptr [edi-8]
 00404A84    call        @LStrAsg
 00404A89    pop         edi
 00404A8A    pop         esi
 00404A8B    pop         ebx
 00404A8C    ret
 00404A8D    mov         edx,ecx
>00404A8F    jmp         @LStrAsg
 00404A94    mov         edx,ecx
>00404A96    jmp         @LStrCat
 00404A9B    ret
*}
end;

//00404A9C
procedure @LStrCatN(var Dest:AnsiString; ArgCnt:Integer);
begin
{*
 00404A9C    push        ebx
 00404A9D    push        esi
 00404A9E    push        edi
 00404A9F    push        edx
 00404AA0    push        eax
 00404AA1    mov         ebx,edx
 00404AA3    xor         edi,edi
 00404AA5    mov         ecx,dword ptr [esp+edx*4+14]
 00404AA9    test        ecx,ecx
>00404AAB    je          00404AB9
 00404AAD    cmp         dword ptr [eax],ecx
>00404AAF    jne         00404AB9
 00404AB1    mov         edi,ecx
 00404AB3    mov         eax,dword ptr [ecx-4]
 00404AB6    dec         edx
>00404AB7    jmp         00404ABB
 00404AB9    xor         eax,eax
 00404ABB    mov         ecx,dword ptr [esp+edx*4+14]
 00404ABF    test        ecx,ecx
>00404AC1    je          00404ACC
 00404AC3    add         eax,dword ptr [ecx-4]
 00404AC6    cmp         edi,ecx
>00404AC8    jne         00404ACC
 00404ACA    xor         edi,edi
 00404ACC    dec         edx
>00404ACD    jne         00404ABB
 00404ACF    test        edi,edi
>00404AD1    je          00404AEA
 00404AD3    mov         edx,eax
 00404AD5    mov         eax,dword ptr [esp]
 00404AD8    mov         esi,dword ptr [edi-4]
 00404ADB    call        @LStrSetLength
 00404AE0    mov         edi,dword ptr [esp]
 00404AE3    push        dword ptr [edi]
 00404AE5    add         esi,dword ptr [edi]
 00404AE7    dec         ebx
>00404AE8    jmp         00404AF2
 00404AEA    call        @NewAnsiString
 00404AEF    push        eax
 00404AF0    mov         esi,eax
 00404AF2    mov         eax,dword ptr [esp+ebx*4+18]
 00404AF6    mov         edx,esi
 00404AF8    test        eax,eax
>00404AFA    je          00404B06
 00404AFC    mov         ecx,dword ptr [eax-4]
 00404AFF    add         esi,ecx
 00404B01    call        Move
 00404B06    dec         ebx
>00404B07    jne         00404AF2
 00404B09    pop         edx
 00404B0A    pop         eax
 00404B0B    test        edi,edi
>00404B0D    jne         00404B1B
 00404B0F    test        edx,edx
>00404B11    je          00404B16
 00404B13    dec         dword ptr [edx-8]
 00404B16    call        @LStrAsg
 00404B1B    pop         edx
 00404B1C    pop         edi
 00404B1D    pop         esi
 00404B1E    pop         ebx
 00404B1F    pop         eax
 00404B20    lea         esp,[esp+edx*4]
 00404B23    jmp         eax
 00404B25    ret
*}
end;

//00404B28
{*function @LStrCmp(Left:AnsiString; Right:AnsiString):?;
begin
 00404B28    push        ebx
 00404B29    push        esi
 00404B2A    push        edi
 00404B2B    mov         esi,eax
 00404B2D    mov         edi,edx
 00404B2F    cmp         eax,edx
>00404B31    je          00404BC6
 00404B37    test        esi,esi
>00404B39    je          00404BA3
 00404B3B    test        edi,edi
>00404B3D    je          00404BAA
 00404B3F    mov         eax,dword ptr [esi-4]
 00404B42    mov         edx,dword ptr [edi-4]
 00404B45    sub         eax,edx
>00404B47    ja          00404B4B
 00404B49    add         edx,eax
 00404B4B    push        edx
 00404B4C    shr         edx,2
>00404B4F    je          00404B77
 00404B51    mov         ecx,dword ptr [esi]
 00404B53    mov         ebx,dword ptr [edi]
 00404B55    cmp         ecx,ebx
>00404B57    jne         00404BB1
 00404B59    dec         edx
>00404B5A    je          00404B71
 00404B5C    mov         ecx,dword ptr [esi+4]
 00404B5F    mov         ebx,dword ptr [edi+4]
 00404B62    cmp         ecx,ebx
>00404B64    jne         00404BB1
 00404B66    add         esi,8
 00404B69    add         edi,8
 00404B6C    dec         edx
>00404B6D    jne         00404B51
>00404B6F    jmp         00404B77
 00404B71    add         esi,4
 00404B74    add         edi,4
 00404B77    pop         edx
 00404B78    and         edx,3
>00404B7B    je          00404B9F
 00404B7D    mov         ecx,dword ptr [esi]
 00404B7F    mov         ebx,dword ptr [edi]
 00404B81    cmp         cl,bl
>00404B83    jne         00404BC6
 00404B85    dec         edx
>00404B86    je          00404B9F
 00404B88    cmp         ch,bh
>00404B8A    jne         00404BC6
 00404B8C    dec         edx
>00404B8D    je          00404B9F
 00404B8F    and         ebx,0FF0000
 00404B95    and         ecx,0FF0000
 00404B9B    cmp         ecx,ebx
>00404B9D    jne         00404BC6
 00404B9F    add         eax,eax
>00404BA1    jmp         00404BC6
 00404BA3    mov         edx,dword ptr [edi-4]
 00404BA6    sub         eax,edx
>00404BA8    jmp         00404BC6
 00404BAA    mov         eax,dword ptr [esi-4]
 00404BAD    sub         eax,edx
>00404BAF    jmp         00404BC6
 00404BB1    pop         edx
 00404BB2    cmp         cl,bl
>00404BB4    jne         00404BC6
 00404BB6    cmp         ch,bh
>00404BB8    jne         00404BC6
 00404BBA    shr         ecx,10
 00404BBD    shr         ebx,10
 00404BC0    cmp         cl,bl
>00404BC2    jne         00404BC6
 00404BC4    cmp         ch,bh
 00404BC6    pop         edi
 00404BC7    pop         esi
 00404BC8    pop         ebx
 00404BC9    ret
end;*}

//00404BCC
function @LStrAddRef(var S:AnsiString):Pointer;
begin
{*
 00404BCC    test        eax,eax
>00404BCE    je          00404BDA
 00404BD0    mov         edx,dword ptr [eax-8]
 00404BD3    inc         edx
>00404BD4    jle         00404BDA
 00404BD6    lock inc    dword ptr [eax-8]
 00404BDA    ret
*}
end;

//00404BDC
function @LStrToPChar(S:AnsiString):PChar;
begin
{*
 00404BDC    test        eax,eax
>00404BDE    je          00404BE2
 00404BE0    ret
 00404BE1    add         byte ptr [eax+404BE1],bh
 00404BE7    ret
*}
end;

//00404BE8
function InternalUniqueString(var str:void ):Pointer;
begin
{*
 00404BE8    mov         edx,dword ptr [eax]
 00404BEA    test        edx,edx
>00404BEC    je          00404C26
 00404BEE    mov         ecx,dword ptr [edx-8]
 00404BF1    dec         ecx
>00404BF2    je          00404C26
 00404BF4    push        ebx
 00404BF5    mov         ebx,eax
 00404BF7    mov         eax,dword ptr [edx-4]
 00404BFA    call        @NewAnsiString
 00404BFF    mov         edx,eax
 00404C01    mov         eax,dword ptr [ebx]
 00404C03    mov         dword ptr [ebx],edx
 00404C05    push        eax
 00404C06    mov         ecx,dword ptr [eax-4]
 00404C09    call        Move
 00404C0E    pop         eax
 00404C0F    mov         ecx,dword ptr [eax-8]
 00404C12    dec         ecx
>00404C13    jl          00404C23
 00404C15    lock dec    dword ptr [eax-8]
>00404C19    jne         00404C23
 00404C1B    lea         eax,[eax-8]
 00404C1E    call        @FreeMem
 00404C23    mov         edx,dword ptr [ebx]
 00404C25    pop         ebx
 00404C26    mov         eax,edx
 00404C28    ret
*}
end;

//00404C2C
procedure UniqueString(var str:AnsiString);
begin
{*
>00404C2C    jmp         InternalUniqueString
 00404C31    ret
*}
end;

//00404C34
{*function sub_00404C34:?;
begin
>00404C34    jmp         InternalUniqueString
end;*}

//00404C40
function @LStrCopy(const S:AnsiString; Index:Integer; Count:Integer):AnsiString;
begin
{*
 00404C40    push        ebx
 00404C41    test        eax,eax
>00404C43    je          00404C72
 00404C45    mov         ebx,dword ptr [eax-4]
 00404C48    test        ebx,ebx
>00404C4A    je          00404C72
 00404C4C    dec         edx
>00404C4D    jl          00404C6A
 00404C4F    cmp         edx,ebx
>00404C51    jge         00404C72
 00404C53    sub         ebx,edx
 00404C55    test        ecx,ecx
>00404C57    jl          00404C72
 00404C59    cmp         ecx,ebx
>00404C5B    jg          00404C6E
 00404C5D    add         edx,eax
 00404C5F    mov         eax,dword ptr [esp+8]
 00404C63    call        @LStrFromPCharLen
>00404C68    jmp         00404C7B
 00404C6A    xor         edx,edx
>00404C6C    jmp         00404C53
 00404C6E    mov         ecx,ebx
>00404C70    jmp         00404C5D
 00404C72    mov         eax,dword ptr [esp+8]
 00404C76    call        @LStrClr
 00404C7B    pop         ebx
 00404C7C    ret         4
*}
end;

//00404C80
procedure @LStrDelete(var S:AnsiString; Index:Integer; Count:Integer);
begin
{*
 00404C80    push        ebx
 00404C81    push        esi
 00404C82    push        edi
 00404C83    mov         ebx,eax
 00404C85    mov         esi,edx
 00404C87    mov         edi,ecx
 00404C89    call        UniqueString
 00404C8E    mov         edx,dword ptr [ebx]
 00404C90    test        edx,edx
>00404C92    je          00404CC4
 00404C94    mov         ecx,dword ptr [edx-4]
 00404C97    dec         esi
>00404C98    jl          00404CC4
 00404C9A    cmp         esi,ecx
>00404C9C    jge         00404CC4
 00404C9E    test        edi,edi
>00404CA0    jle         00404CC4
 00404CA2    sub         ecx,esi
 00404CA4    cmp         edi,ecx
>00404CA6    jle         00404CAA
 00404CA8    mov         edi,ecx
 00404CAA    sub         ecx,edi
 00404CAC    add         edx,esi
 00404CAE    lea         eax,[edi+edx]
 00404CB1    call        Move
 00404CB6    mov         edx,dword ptr [ebx]
 00404CB8    mov         eax,ebx
 00404CBA    mov         edx,dword ptr [edx-4]
 00404CBD    sub         edx,edi
 00404CBF    call        @LStrSetLength
 00404CC4    pop         edi
 00404CC5    pop         esi
 00404CC6    pop         ebx
 00404CC7    ret
*}
end;

//00404CC8
procedure @LStrInsert(const Source:AnsiString; var S:AnsiString; Index:Integer);
begin
{*
 00404CC8    test        eax,eax
>00404CCA    je          00404D22
 00404CCC    push        ebx
 00404CCD    push        esi
 00404CCE    push        edi
 00404CCF    push        ebp
 00404CD0    mov         ebx,eax
 00404CD2    mov         esi,edx
 00404CD4    mov         edi,ecx
 00404CD6    mov         edx,dword ptr [edx]
 00404CD8    push        edx
 00404CD9    test        edx,edx
>00404CDB    je          00404CE0
 00404CDD    mov         edx,dword ptr [edx-4]
 00404CE0    dec         edi
>00404CE1    jge         00404CE5
 00404CE3    xor         edi,edi
 00404CE5    cmp         edi,edx
>00404CE7    jle         00404CEB
 00404CE9    mov         edi,edx
 00404CEB    mov         ebp,dword ptr [ebx-4]
 00404CEE    mov         eax,esi
 00404CF0    add         edx,ebp
 00404CF2    call        @LStrSetLength
 00404CF7    pop         eax
 00404CF8    cmp         eax,ebx
>00404CFA    jne         00404CFE
 00404CFC    mov         ebx,dword ptr [esi]
 00404CFE    mov         eax,dword ptr [esi]
 00404D00    lea         edx,[edi+ebp]
 00404D03    mov         ecx,dword ptr [eax-4]
 00404D06    sub         ecx,edx
 00404D08    add         edx,eax
 00404D0A    add         eax,edi
 00404D0C    call        Move
 00404D11    mov         eax,ebx
 00404D13    mov         edx,dword ptr [esi]
 00404D15    mov         ecx,ebp
 00404D17    add         edx,edi
 00404D19    call        Move
 00404D1E    pop         ebp
 00404D1F    pop         edi
 00404D20    pop         esi
 00404D21    pop         ebx
 00404D22    ret
*}
end;

//00404D24
function @LStrPos(const Substr:AnsiString; const S:AnsiString):Integer;
begin
{*
 00404D24    test        eax,eax
>00404D26    je          00404D68
 00404D28    test        edx,edx
>00404D2A    je          00404D5D
 00404D2C    push        ebx
 00404D2D    push        esi
 00404D2E    push        edi
 00404D2F    mov         esi,eax
 00404D31    mov         edi,edx
 00404D33    mov         ecx,dword ptr [edi-4]
 00404D36    push        edi
 00404D37    mov         edx,dword ptr [esi-4]
 00404D3A    dec         edx
>00404D3B    js          00404D58
 00404D3D    mov         al,byte ptr [esi]
 00404D3F    inc         esi
 00404D40    sub         ecx,edx
>00404D42    jle         00404D58
 00404D44    repne scas  byte ptr [edi]
>00404D46    jne         00404D58
 00404D48    mov         ebx,ecx
 00404D4A    push        esi
 00404D4B    push        edi
 00404D4C    mov         ecx,edx
 00404D4E    repe cmps   byte ptr [esi],byte ptr [edi]
 00404D50    pop         edi
 00404D51    pop         esi
>00404D52    je          00404D60
 00404D54    mov         ecx,ebx
>00404D56    jmp         00404D44
 00404D58    pop         edx
 00404D59    xor         eax,eax
>00404D5B    jmp         00404D65
 00404D5D    xor         eax,eax
 00404D5F    ret
 00404D60    pop         edx
 00404D61    mov         eax,edi
 00404D63    sub         eax,edx
 00404D65    pop         edi
 00404D66    pop         esi
 00404D67    pop         ebx
 00404D68    ret
*}
end;

//00404D6C
procedure @LStrSetLength(var S:AnsiString; NewLen:Integer);
begin
{*
 00404D6C    push        ebx
 00404D6D    push        esi
 00404D6E    push        edi
 00404D6F    mov         ebx,eax
 00404D71    mov         esi,edx
 00404D73    xor         edi,edi
 00404D75    test        edx,edx
>00404D77    jle         00404DC1
 00404D79    mov         eax,dword ptr [ebx]
 00404D7B    test        eax,eax
>00404D7D    je          00404DA2
 00404D7F    cmp         dword ptr [eax-8],1
>00404D83    jne         00404DA2
 00404D85    sub         eax,8
 00404D88    add         edx,9
 00404D8B    push        eax
 00404D8C    mov         eax,esp
 00404D8E    call        @ReallocMem
 00404D93    pop         eax
 00404D94    add         eax,8
 00404D97    mov         dword ptr [ebx],eax
 00404D99    mov         dword ptr [eax-4],esi
 00404D9C    mov         byte ptr [esi+eax],0
>00404DA0    jmp         00404DCA
 00404DA2    mov         eax,edx
 00404DA4    call        @NewAnsiString
 00404DA9    mov         edi,eax
 00404DAB    mov         eax,dword ptr [ebx]
 00404DAD    test        eax,eax
>00404DAF    je          00404DC1
 00404DB1    mov         edx,edi
 00404DB3    mov         ecx,dword ptr [eax-4]
 00404DB6    cmp         ecx,esi
>00404DB8    jl          00404DBC
 00404DBA    mov         ecx,esi
 00404DBC    call        Move
 00404DC1    mov         eax,ebx
 00404DC3    call        @LStrClr
 00404DC8    mov         dword ptr [ebx],edi
 00404DCA    pop         edi
 00404DCB    pop         esi
 00404DCC    pop         ebx
 00404DCD    ret
*}
end;

//00404DD0
procedure @LStrOfChar(C:Char; Count:Integer; var Result:AnsiString);
begin
{*
 00404DD0    push        ebx
 00404DD1    push        esi
 00404DD2    push        edi
 00404DD3    mov         ebx,eax
 00404DD5    mov         esi,edx
 00404DD7    mov         edi,ecx
 00404DD9    mov         eax,ecx
 00404DDB    call        @LStrClr
 00404DE0    test        esi,esi
>00404DE2    jle         00404DF6
 00404DE4    mov         eax,esi
 00404DE6    call        @NewAnsiString
 00404DEB    mov         dword ptr [edi],eax
 00404DED    mov         edx,esi
 00404DEF    mov         cl,bl
 00404DF1    call        @FillChar
 00404DF6    pop         edi
 00404DF7    pop         esi
 00404DF8    pop         ebx
 00404DF9    ret
*}
end;

//00404DFC
procedure @Write0Bool(var T:TTextRec; Val:Boolean);
begin
{*
 00404DFC    xor         ecx,ecx
 00404DFE    call        @WriteBool
 00404E03    ret
*}
end;

//00404E04
procedure @WriteBool(var T:TTextRec; Val:Boolean; Width:Longint);
begin
{*
 00404E04    push        ebx
 00404E05    mov         ebx,edx
 00404E07    mov         edx,ecx
 00404E09    xor         ecx,ecx
 00404E0B    test        ebx,ebx
>00404E0D    je          00404E14
 00404E0F    mov         ecx,dword ptr [ebx-4]
 00404E12    sub         edx,ecx
 00404E14    push        ecx
 00404E15    call        @WriteSpaces
 00404E1A    pop         ecx
 00404E1B    mov         edx,ebx
 00404E1D    pop         ebx
>00404E1E    jmp         @WriteBytes
*}
end;

//00404E24
procedure @Write0CString(var T:TTextRec; S:PAnsiChar);
begin
{*
 00404E24    xor         ecx,ecx
 00404E26    call        @WriteCString
 00404E2B    ret
*}
end;

//00404E2C
procedure @WriteCString(var T:TTextRec; S:PAnsiChar; Width:Longint);
begin
{*
 00404E2C    push        ebp
 00404E2D    mov         ebp,esp
 00404E2F    push        0
 00404E31    push        ebx
 00404E32    push        esi
 00404E33    push        edi
 00404E34    mov         edi,ecx
 00404E36    mov         esi,edx
 00404E38    mov         ebx,eax
 00404E3A    xor         eax,eax
 00404E3C    push        ebp
 00404E3D    push        404E88
 00404E42    push        dword ptr fs:[eax]
 00404E45    mov         dword ptr fs:[eax],esp
 00404E48    mov         eax,esi
 00404E4A    call        @WStrLen
 00404E4F    mov         edx,edi
 00404E51    sub         edx,eax
 00404E53    mov         eax,ebx
 00404E55    call        @WriteSpaces
 00404E5A    lea         eax,[ebp-4]
 00404E5D    mov         edx,esi
 00404E5F    call        @LStrFromWStr
 00404E64    mov         edx,dword ptr [ebp-4]
 00404E67    mov         eax,ebx
 00404E69    xor         ecx,ecx
 00404E6B    call        @WriteBool
 00404E70    mov         ebx,eax
 00404E72    xor         eax,eax
 00404E74    pop         edx
 00404E75    pop         ecx
 00404E76    pop         ecx
 00404E77    mov         dword ptr fs:[eax],edx
 00404E7A    push        404E8F
 00404E7F    lea         eax,[ebp-4]
 00404E82    call        @LStrClr
 00404E87    ret
>00404E88    jmp         @HandleFinally
>00404E8D    jmp         00404E7F
 00404E8F    mov         eax,ebx
 00404E91    pop         edi
 00404E92    pop         esi
 00404E93    pop         ebx
 00404E94    pop         ecx
 00404E95    pop         ebp
 00404E96    ret
*}
end;

//00404E98
procedure WStrError;
begin
{*
 00404E98    mov         al,1
>00404E9A    jmp         Error
 00404E9F    ret
*}
end;

//00404EA0
function @NewWideString(CharLength:Integer):Pointer;
begin
{*
 00404EA0    test        eax,eax
>00404EA2    je          00404EB4
 00404EA4    push        eax
 00404EA5    push        0
 00404EA7    call        oleaut32.SysAllocStringLen
 00404EAC    test        eax,eax
>00404EAE    je          00404E98
 00404EB4    ret
*}
end;

//00404EB8
procedure WStrSet(var S:WideString; P:PWideChar);
begin
{*
 00404EB8    xchg        edx,dword ptr [eax]
 00404EBA    test        edx,edx
>00404EBC    je          00404EC4
 00404EBE    push        edx
 00404EBF    call        oleaut32.SysFreeString
 00404EC4    ret
*}
end;

//00404EC8
procedure @WStrClr(var S:WideString);
begin
{*
 00404EC8    mov         edx,dword ptr [eax]
 00404ECA    test        edx,edx
>00404ECC    je          00404EDC
 00404ECE    mov         dword ptr [eax],0
 00404ED4    push        eax
 00404ED5    push        edx
 00404ED6    call        oleaut32.SysFreeString
 00404EDB    pop         eax
 00404EDC    ret
*}
end;

//00404EE0
procedure @WStrArrayClr(var StrArray:Pointer; Count:Integer);
begin
{*
 00404EE0    push        ebx
 00404EE1    push        esi
 00404EE2    mov         ebx,eax
 00404EE4    mov         esi,edx
 00404EE6    mov         eax,dword ptr [ebx]
 00404EE8    test        eax,eax
>00404EEA    je          00404EF8
 00404EEC    mov         dword ptr [ebx],0
 00404EF2    push        eax
 00404EF3    call        oleaut32.SysFreeString
 00404EF8    add         ebx,4
 00404EFB    dec         esi
>00404EFC    jne         00404EE6
 00404EFE    pop         esi
 00404EFF    pop         ebx
 00404F00    ret
*}
end;

//00404F04
procedure @WStrAsg(var Dest:WideString; Source:WideString);
begin
{*
 00404F04    test        edx,edx
>00404F06    je          00404EC8
 00404F0C    mov         ecx,dword ptr [edx-4]
 00404F0F    shr         ecx,1
>00404F11    je          00404EC8
 00404F17    push        ecx
 00404F18    push        edx
 00404F19    push        eax
 00404F1A    call        oleaut32.SysReAllocStringLen
 00404F1F    test        eax,eax
>00404F21    je          00404E98
 00404F27    ret
*}
end;

//00404F28
procedure sub_00404F28;
begin
{*
>00404F28    jmp         @WStrAsg
*}
end;

//00404F30
procedure @WStrFromPCharLen(var Dest:WideString; Source:PAnsiChar; Length:Integer);
begin
{*
 00404F30    push        ebx
 00404F31    push        esi
 00404F32    push        edi
 00404F33    push        ebp
 00404F34    add         esp,0FFFFF004
 00404F3A    push        eax
 00404F3B    add         esp,0FFFFFFFC
 00404F3E    mov         esi,ecx
 00404F40    mov         dword ptr [esp],edx
 00404F43    mov         edi,eax
 00404F45    test        esi,esi
>00404F47    jg          00404F52
 00404F49    mov         eax,edi
 00404F4B    call        @WStrClr
>00404F50    jmp         00404FAF
 00404F52    lea         ebp,[esi+1]
 00404F55    cmp         ebp,7FF
>00404F5B    jge         00404F85
 00404F5D    push        esi
 00404F5E    lea         eax,[esp+8]
 00404F62    mov         ecx,dword ptr [esp+4]
 00404F66    mov         edx,7FF
 00404F6B    call        WCharFromChar
 00404F70    mov         ebx,eax
 00404F72    test        ebx,ebx
>00404F74    jle         00404F85
 00404F76    lea         edx,[esp+4]
 00404F7A    mov         eax,edi
 00404F7C    mov         ecx,ebx
 00404F7E    call        @WStrFromPWCharLen
>00404F83    jmp         00404FAF
 00404F85    mov         ebx,ebp
 00404F87    mov         eax,edi
 00404F89    mov         edx,ebx
 00404F8B    call        @WStrSetLength
 00404F90    push        esi
 00404F91    mov         eax,dword ptr [edi]
 00404F93    mov         ecx,dword ptr [esp+4]
 00404F97    mov         edx,ebx
 00404F99    call        WCharFromChar
 00404F9E    mov         ebx,eax
 00404FA0    test        ebx,ebx
>00404FA2    jge         00404FA6
 00404FA4    xor         ebx,ebx
 00404FA6    mov         eax,edi
 00404FA8    mov         edx,ebx
 00404FAA    call        @WStrSetLength
 00404FAF    add         esp,1004
 00404FB5    pop         ebp
 00404FB6    pop         edi
 00404FB7    pop         esi
 00404FB8    pop         ebx
 00404FB9    ret
*}
end;

//00404FBC
procedure @WStrFromPWCharLen(var Dest:WideString; Source:PWideChar; Length:Integer);
begin
{*
 00404FBC    test        ecx,ecx
>00404FBE    je          00404EC8
 00404FC4    push        eax
 00404FC5    push        ecx
 00404FC6    push        edx
 00404FC7    call        oleaut32.SysAllocStringLen
 00404FCC    test        eax,eax
>00404FCE    je          00404E98
 00404FD4    pop         edx
 00404FD5    push        dword ptr [edx]
 00404FD7    mov         dword ptr [edx],eax
 00404FD9    call        oleaut32.SysFreeString
 00404FDE    ret
*}
end;

//00404FE0
procedure @WStrFromWChar(var Dest:WideString; Source:WideChar);
begin
{*
 00404FE0    push        edx
 00404FE1    mov         edx,esp
 00404FE3    mov         ecx,1
 00404FE8    call        @WStrFromPWCharLen
 00404FED    pop         edx
 00404FEE    ret
*}
end;

//00404FF0
procedure @WStrFromPWChar(var Dest:WideString; Source:PWideChar);
begin
{*
 00404FF0    xor         ecx,ecx
 00404FF2    test        edx,edx
>00404FF4    je          00405023
 00404FF6    push        edx
 00404FF7    cmp         cx,word ptr [edx]
>00404FFA    je          0040501C
 00404FFC    cmp         cx,word ptr [edx+2]
>00405000    je          00405019
 00405002    cmp         cx,word ptr [edx+4]
>00405006    je          00405016
 00405008    cmp         cx,word ptr [edx+6]
>0040500C    je          00405013
 0040500E    add         edx,8
>00405011    jmp         00404FF7
 00405013    add         edx,2
 00405016    add         edx,2
 00405019    add         edx,2
 0040501C    mov         ecx,edx
 0040501E    pop         edx
 0040501F    sub         ecx,edx
 00405021    shr         ecx,1
>00405023    jmp         @WStrFromPWCharLen
 00405028    ret
*}
end;

//0040502C
procedure @WStrFromString(var Dest:WideString; const Source:ShortString);
begin
{*
 0040502C    xor         ecx,ecx
 0040502E    mov         cl,byte ptr [edx]
 00405030    inc         edx
>00405031    jmp         @WStrFromPCharLen
 00405036    ret
*}
end;

//00405038
procedure @WStrFromArray(var Dest:WideString; Source:PAnsiChar; Length:Integer);
begin
{*
 00405038    push        edi
 00405039    push        eax
 0040503A    push        ecx
 0040503B    mov         edi,edx
 0040503D    xor         eax,eax
 0040503F    repne scas  byte ptr [edi]
>00405041    jne         00405045
 00405043    not         ecx
 00405045    pop         eax
 00405046    add         ecx,eax
 00405048    pop         eax
 00405049    pop         edi
>0040504A    jmp         @WStrFromPCharLen
 0040504F    ret
*}
end;

//00405050
procedure @WStrFromWArray(var Dest:WideString; Source:PWideChar; Length:Integer);
begin
{*
 00405050    push        edi
 00405051    push        eax
 00405052    push        ecx
 00405053    mov         edi,edx
 00405055    xor         eax,eax
 00405057    repne scas  word ptr [edi]
>0040505A    jne         0040505E
 0040505C    not         ecx
 0040505E    pop         eax
 0040505F    add         ecx,eax
 00405061    pop         eax
 00405062    pop         edi
>00405063    jmp         @WStrFromPWCharLen
 00405068    ret
*}
end;

//0040506C
procedure @WStrFromLStr(var Dest:WideString; const Source:AnsiString);
begin
{*
 0040506C    xor         ecx,ecx
 0040506E    test        edx,edx
>00405070    je          00405075
 00405072    mov         ecx,dword ptr [edx-4]
>00405075    jmp         @WStrFromPCharLen
 0040507A    ret
*}
end;

//0040507C
function @WStrToPWChar(S:WideString):PWideChar;
begin
{*
 0040507C    test        eax,eax
>0040507E    je          00405084
 00405080    ret
 00405081    nop
 00405082    add         byte ptr [eax],al
 00405084    mov         eax,405082
 00405089    ret
*}
end;

//0040508C
function @WStrLen(S:WideString):Integer;
begin
{*
 0040508C    test        eax,eax
>0040508E    je          00405095
 00405090    mov         eax,dword ptr [eax-4]
 00405093    shr         eax,1
 00405095    ret
*}
end;

//00405098
procedure @WStrCat(var Dest:WideString; Source:WideString);
begin
{*
 00405098    push        ebx
 00405099    push        esi
 0040509A    push        edi
 0040509B    push        ebp
 0040509C    push        ecx
 0040509D    mov         ebp,edx
 0040509F    mov         dword ptr [esp],eax
 004050A2    mov         eax,ebp
 004050A4    call        @WStrLen
 004050A9    mov         ebx,eax
 004050AB    test        ebx,ebx
>004050AD    je          004050F1
 004050AF    mov         eax,dword ptr [esp]
 004050B2    mov         eax,dword ptr [eax]
 004050B4    call        @WStrLen
 004050B9    mov         esi,eax
 004050BB    lea         eax,[ebx+esi]
 004050BE    call        @NewWideString
 004050C3    mov         edi,eax
 004050C5    test        esi,esi
>004050C7    jle         004050D9
 004050C9    mov         ecx,esi
 004050CB    add         ecx,ecx
 004050CD    mov         edx,edi
 004050CF    mov         eax,dword ptr [esp]
 004050D2    mov         eax,dword ptr [eax]
 004050D4    call        Move
 004050D9    mov         ecx,ebx
 004050DB    add         ecx,ecx
 004050DD    lea         edx,[edi+esi*2]
 004050E0    mov         eax,ebp
 004050E2    call        Move
 004050E7    mov         eax,dword ptr [esp]
 004050EA    mov         edx,edi
 004050EC    call        WStrSet
 004050F1    pop         edx
 004050F2    pop         ebp
 004050F3    pop         edi
 004050F4    pop         esi
 004050F5    pop         ebx
 004050F6    ret
*}
end;

//004050F8
procedure @WStrCat3(var Dest:WideString; Source1:WideString; Source2:WideString);
begin
{*
 004050F8    push        ebx
 004050F9    push        esi
 004050FA    push        edi
 004050FB    push        ebp
 004050FC    add         esp,0FFFFFFF8
 004050FF    mov         dword ptr [esp+4],ecx
 00405103    mov         ebp,edx
 00405105    mov         dword ptr [esp],eax
 00405108    mov         eax,ebp
 0040510A    call        @WStrLen
 0040510F    mov         ebx,eax
 00405111    mov         eax,dword ptr [esp+4]
 00405115    call        @WStrLen
 0040511A    mov         esi,eax
 0040511C    test        ebx,ebx
>0040511E    jne         00405124
 00405120    test        esi,esi
>00405122    je          00405155
 00405124    lea         eax,[esi+ebx]
 00405127    call        @NewWideString
 0040512C    mov         edi,eax
 0040512E    mov         ecx,ebx
 00405130    add         ecx,ecx
 00405132    mov         edx,edi
 00405134    mov         eax,ebp
 00405136    call        Move
 0040513B    mov         ecx,esi
 0040513D    add         ecx,ecx
 0040513F    lea         edx,[edi+ebx*2]
 00405142    mov         eax,dword ptr [esp+4]
 00405146    call        Move
 0040514B    mov         eax,dword ptr [esp]
 0040514E    mov         edx,edi
 00405150    call        WStrSet
 00405155    pop         ecx
 00405156    pop         edx
 00405157    pop         ebp
 00405158    pop         edi
 00405159    pop         esi
 0040515A    pop         ebx
 0040515B    ret
*}
end;

//0040515C
procedure @WStrCatN(var Dest:WideString; ArgCnt:Integer);
begin
{*
 0040515C    push        ebx
 0040515D    push        esi
 0040515E    push        edx
 0040515F    push        eax
 00405160    mov         ebx,edx
 00405162    xor         eax,eax
 00405164    mov         ecx,dword ptr [esp+edx*4+10]
 00405168    test        ecx,ecx
>0040516A    je          0040516F
 0040516C    add         eax,dword ptr [ecx-4]
 0040516F    dec         edx
>00405170    jne         00405164
 00405172    shr         eax,1
 00405174    call        @NewWideString
 00405179    push        eax
 0040517A    mov         esi,eax
 0040517C    mov         eax,dword ptr [esp+ebx*4+14]
 00405180    mov         edx,esi
 00405182    test        eax,eax
>00405184    je          00405190
 00405186    mov         ecx,dword ptr [eax-4]
 00405189    add         esi,ecx
 0040518B    call        Move
 00405190    dec         ebx
>00405191    jne         0040517C
 00405193    pop         edx
 00405194    pop         eax
 00405195    call        WStrSet
 0040519A    pop         edx
 0040519B    pop         esi
 0040519C    pop         ebx
 0040519D    pop         eax
 0040519E    lea         esp,[esp+edx*4]
 004051A1    jmp         eax
 004051A3    ret
*}
end;

//004051A4
{*function @WStrCmp(Left:WideString; Right:WideString):?;
begin
 004051A4    push        ebx
 004051A5    push        esi
 004051A6    push        edi
 004051A7    mov         esi,eax
 004051A9    mov         edi,edx
 004051AB    cmp         eax,edx
>004051AD    je          00405221
 004051AF    test        esi,esi
>004051B1    je          00405204
 004051B3    test        edi,edi
>004051B5    je          0040520B
 004051B7    mov         eax,dword ptr [esi-4]
 004051BA    mov         edx,dword ptr [edi-4]
 004051BD    sub         eax,edx
>004051BF    ja          004051C3
 004051C1    add         edx,eax
 004051C3    push        edx
 004051C4    shr         edx,2
>004051C7    je          004051EF
 004051C9    mov         ecx,dword ptr [esi]
 004051CB    mov         ebx,dword ptr [edi]
 004051CD    cmp         ecx,ebx
>004051CF    jne         00405212
 004051D1    dec         edx
>004051D2    je          004051E9
 004051D4    mov         ecx,dword ptr [esi+4]
 004051D7    mov         ebx,dword ptr [edi+4]
 004051DA    cmp         ecx,ebx
>004051DC    jne         00405212
 004051DE    add         esi,8
 004051E1    add         edi,8
 004051E4    dec         edx
>004051E5    jne         004051C9
>004051E7    jmp         004051EF
 004051E9    add         esi,4
 004051EC    add         edi,4
 004051EF    pop         edx
 004051F0    and         edx,2
>004051F3    je          00405200
 004051F5    mov         cx,word ptr [esi]
 004051F8    mov         bx,word ptr [edi]
 004051FB    cmp         cx,bx
>004051FE    jne         00405221
 00405200    add         eax,eax
>00405202    jmp         00405221
 00405204    mov         edx,dword ptr [edi-4]
 00405207    sub         eax,edx
>00405209    jmp         00405221
 0040520B    mov         eax,dword ptr [esi-4]
 0040520E    sub         eax,edx
>00405210    jmp         00405221
 00405212    pop         edx
 00405213    cmp         cx,bx
>00405216    jne         00405221
 00405218    shr         ecx,10
 0040521B    shr         ebx,10
 0040521E    cmp         cx,bx
 00405221    pop         edi
 00405222    pop         esi
 00405223    pop         ebx
 00405224    ret
end;*}

//00405228
function @WStrCopy(const S:WideString; Index:Integer; Count:Integer):WideString;
begin
{*
 00405228    push        ebp
 00405229    mov         ebp,esp
 0040522B    push        ebx
 0040522C    push        esi
 0040522D    push        edi
 0040522E    mov         edi,ecx
 00405230    mov         ebx,edx
 00405232    mov         esi,eax
 00405234    mov         eax,esi
 00405236    call        @WStrLen
 0040523B    cmp         ebx,1
>0040523E    jge         00405244
 00405240    xor         ebx,ebx
>00405242    jmp         0040524B
 00405244    dec         ebx
 00405245    cmp         eax,ebx
>00405247    jge         0040524B
 00405249    mov         ebx,eax
 0040524B    test        edi,edi
>0040524D    jge         00405253
 0040524F    xor         eax,eax
>00405251    jmp         0040525B
 00405253    sub         eax,ebx
 00405255    cmp         edi,eax
>00405257    jge         0040525B
 00405259    mov         eax,edi
 0040525B    mov         edx,ebx
 0040525D    add         edx,edx
 0040525F    add         edx,esi
 00405261    mov         ecx,dword ptr [ebp+8]
 00405264    xchg        eax,ecx
 00405265    call        @WStrFromPWCharLen
 0040526A    pop         edi
 0040526B    pop         esi
 0040526C    pop         ebx
 0040526D    pop         ebp
 0040526E    ret         4
*}
end;

//00405274
procedure @WStrDelete(var S:WideString; Index:Integer; Count:Integer);
begin
{*
 00405274    push        ebx
 00405275    push        esi
 00405276    push        edi
 00405277    push        ebp
 00405278    push        ecx
 00405279    mov         edi,ecx
 0040527B    mov         ebx,edx
 0040527D    mov         ebp,eax
 0040527F    mov         eax,dword ptr [ebp]
 00405282    call        @WStrLen
 00405287    mov         esi,eax
 00405289    test        esi,esi
>0040528B    jle         004052FB
 0040528D    cmp         ebx,1
>00405290    jl          004052FB
 00405292    cmp         esi,ebx
>00405294    jl          004052FB
 00405296    test        edi,edi
>00405298    jle         004052FB
 0040529A    dec         ebx
 0040529B    mov         eax,esi
 0040529D    sub         eax,ebx
 0040529F    sub         eax,edi
 004052A1    mov         edi,eax
 004052A3    test        edi,edi
>004052A5    jge         004052A9
 004052A7    xor         edi,edi
 004052A9    test        ebx,ebx
>004052AB    jne         004052B8
 004052AD    test        edi,edi
>004052AF    jne         004052B8
 004052B1    xor         eax,eax
 004052B3    mov         dword ptr [esp],eax
>004052B6    jmp         004052F1
 004052B8    lea         eax,[edi+ebx]
 004052BB    call        @NewWideString
 004052C0    mov         dword ptr [esp],eax
 004052C3    test        ebx,ebx
>004052C5    jle         004052D6
 004052C7    mov         ecx,ebx
 004052C9    add         ecx,ecx
 004052CB    mov         edx,dword ptr [esp]
 004052CE    mov         eax,dword ptr [ebp]
 004052D1    call        Move
 004052D6    test        edi,edi
>004052D8    jle         004052F1
 004052DA    sub         esi,edi
 004052DC    mov         eax,dword ptr [ebp]
 004052DF    lea         eax,[eax+esi*2]
 004052E2    mov         ecx,edi
 004052E4    add         ecx,ecx
 004052E6    mov         edx,dword ptr [esp]
 004052E9    lea         edx,[edx+ebx*2]
 004052EC    call        Move
 004052F1    mov         eax,ebp
 004052F3    mov         edx,dword ptr [esp]
 004052F6    call        WStrSet
 004052FB    pop         edx
 004052FC    pop         ebp
 004052FD    pop         edi
 004052FE    pop         esi
 004052FF    pop         ebx
 00405300    ret
*}
end;

//00405304
procedure @WStrInsert(const Source:WideString; var S:WideString; Index:Integer);
begin
{*
 00405304    push        ebx
 00405305    push        esi
 00405306    push        edi
 00405307    push        ebp
 00405308    add         esp,0FFFFFFF8
 0040530B    mov         ebx,ecx
 0040530D    mov         dword ptr [esp+4],edx
 00405311    mov         dword ptr [esp],eax
 00405314    mov         eax,dword ptr [esp]
 00405317    call        @WStrLen
 0040531C    mov         esi,eax
 0040531E    test        esi,esi
>00405320    jle         00405397
 00405322    mov         eax,dword ptr [esp+4]
 00405326    mov         eax,dword ptr [eax]
 00405328    call        @WStrLen
 0040532D    mov         edi,eax
 0040532F    cmp         ebx,1
>00405332    jge         00405338
 00405334    xor         ebx,ebx
>00405336    jmp         0040533F
 00405338    dec         ebx
 00405339    cmp         edi,ebx
>0040533B    jge         0040533F
 0040533D    mov         ebx,edi
 0040533F    lea         eax,[esi+edi]
 00405342    call        @NewWideString
 00405347    mov         ebp,eax
 00405349    test        ebx,ebx
>0040534B    jle         0040535E
 0040534D    mov         ecx,ebx
 0040534F    add         ecx,ecx
 00405351    mov         edx,ebp
 00405353    mov         eax,dword ptr [esp+4]
 00405357    mov         eax,dword ptr [eax]
 00405359    call        Move
 0040535E    mov         ecx,esi
 00405360    add         ecx,ecx
 00405362    lea         edx,[ebp+ebx*2]
 00405366    mov         eax,dword ptr [esp]
 00405369    call        Move
 0040536E    cmp         edi,ebx
>00405370    jle         0040538C
 00405372    add         esi,ebx
 00405374    lea         edx,[ebp+esi*2]
 00405378    sub         edi,ebx
 0040537A    mov         ecx,edi
 0040537C    add         ecx,ecx
 0040537E    mov         eax,dword ptr [esp+4]
 00405382    mov         eax,dword ptr [eax]
 00405384    lea         eax,[eax+ebx*2]
 00405387    call        Move
 0040538C    mov         eax,dword ptr [esp+4]
 00405390    mov         edx,ebp
 00405392    call        WStrSet
 00405397    pop         ecx
 00405398    pop         edx
 00405399    pop         ebp
 0040539A    pop         edi
 0040539B    pop         esi
 0040539C    pop         ebx
 0040539D    ret
*}
end;

//004053A0
procedure @WStrSetLength(var S:WideString; NewLen:Integer);
begin
{*
 004053A0    push        ebx
 004053A1    push        esi
 004053A2    push        edi
 004053A3    mov         esi,edx
 004053A5    mov         edi,eax
 004053A7    xor         ebx,ebx
 004053A9    test        esi,esi
>004053AB    jle         004053D4
 004053AD    mov         eax,esi
 004053AF    call        @NewWideString
 004053B4    mov         ebx,eax
 004053B6    mov         eax,dword ptr [edi]
 004053B8    call        @WStrLen
 004053BD    test        eax,eax
>004053BF    jle         004053D4
 004053C1    cmp         esi,eax
>004053C3    jge         004053C7
 004053C5    mov         eax,esi
 004053C7    mov         ecx,eax
 004053C9    add         ecx,ecx
 004053CB    mov         edx,ebx
 004053CD    mov         eax,dword ptr [edi]
 004053CF    call        Move
 004053D4    mov         eax,edi
 004053D6    mov         edx,ebx
 004053D8    call        WStrSet
 004053DD    pop         edi
 004053DE    pop         esi
 004053DF    pop         ebx
 004053E0    ret
*}
end;

//004053E4
function @WStrAddRef(var S:WideString):Pointer;
begin
{*
 004053E4    mov         edx,dword ptr [eax]
 004053E6    test        edx,edx
>004053E8    je          00405402
 004053EA    push        eax
 004053EB    mov         ecx,dword ptr [edx-4]
 004053EE    shr         ecx,1
 004053F0    push        ecx
 004053F1    push        edx
 004053F2    call        oleaut32.SysAllocStringLen
 004053F7    pop         edx
 004053F8    test        eax,eax
>004053FA    je          00404E98
 00405400    mov         dword ptr [edx],eax
 00405402    ret
*}
end;

//00405404
procedure @AddRefRecord;
begin
{*
 00405404    xor         ecx,ecx
 00405406    push        ebx
 00405407    mov         cl,byte ptr [edx+1]
 0040540A    push        esi
 0040540B    push        edi
 0040540C    mov         ebx,eax
 0040540E    lea         esi,[ecx+edx+0A]
 00405412    mov         edi,dword ptr [ecx+edx+6]
 00405416    mov         edx,dword ptr [esi]
 00405418    mov         eax,dword ptr [esi+4]
 0040541B    add         eax,ebx
 0040541D    mov         edx,dword ptr [edx]
 0040541F    mov         ecx,1
 00405424    call        @AddRefArray
 00405429    add         esi,8
 0040542C    dec         edi
>0040542D    jg          00405416
 0040542F    pop         edi
 00405430    pop         esi
 00405431    pop         ebx
 00405432    ret
*}
end;

//00405434
procedure @AddRefArray;
begin
{*
 00405434    test        ecx,ecx
>00405436    je          004054C6
 0040543C    push        ebx
 0040543D    push        esi
 0040543E    push        edi
 0040543F    mov         ebx,eax
 00405441    mov         esi,edx
 00405443    mov         edi,ecx
 00405445    xor         edx,edx
 00405447    mov         al,byte ptr [esi]
 00405449    mov         dl,byte ptr [esi+1]
 0040544C    xor         ecx,ecx
 0040544E    cmp         al,0A
>00405450    je          00405474
 00405452    cmp         al,0B
>00405454    je          00405474
 00405456    cmp         al,0C
>00405458    je          0040547E
 0040545A    cmp         al,0D
>0040545C    je          00405491
 0040545E    cmp         al,0E
>00405460    je          004054AF
 00405462    cmp         al,0F
>00405464    je          00405474
 00405466    cmp         al,11
>00405468    je          00405474
 0040546A    mov         al,2
 0040546C    pop         edi
 0040546D    pop         esi
 0040546E    pop         ebx
>0040546F    jmp         Error
 00405474    mov         dword ptr [ebx],ecx
 00405476    add         ebx,4
 00405479    dec         edi
>0040547A    jg          00405474
>0040547C    jmp         004054C3
 0040547E    mov         dword ptr [ebx],ecx
 00405480    mov         dword ptr [ebx+4],ecx
 00405483    mov         dword ptr [ebx+8],ecx
 00405486    mov         dword ptr [ebx+0C],ecx
 00405489    add         ebx,10
 0040548C    dec         edi
>0040548D    jg          0040547E
>0040548F    jmp         004054C3
 00405491    push        ebp
 00405492    mov         ebp,edx
 00405494    mov         edx,dword ptr [esi+ebp+0A]
 00405498    mov         eax,ebx
 0040549A    add         ebx,dword ptr [esi+ebp+2]
 0040549E    mov         ecx,dword ptr [esi+ebp+6]
 004054A2    mov         edx,dword ptr [edx]
 004054A4    call        @AddRefArray
 004054A9    dec         edi
>004054AA    jg          00405494
 004054AC    pop         ebp
>004054AD    jmp         004054C3
 004054AF    push        ebp
 004054B0    mov         ebp,edx
 004054B2    mov         eax,ebx
 004054B4    add         ebx,dword ptr [esi+ebp+2]
 004054B8    mov         edx,esi
 004054BA    call        @AddRefRecord
 004054BF    dec         edi
>004054C0    jg          004054B2
 004054C2    pop         ebp
 004054C3    pop         edi
 004054C4    pop         esi
 004054C5    pop         ebx
 004054C6    ret
*}
end;

//004054C8
procedure @AddRef;
begin
{*
 004054C8    mov         ecx,1
>004054CD    jmp         @AddRefArray
 004054D2    ret
*}
end;

//004054D4
procedure @FinalizeRecord(P:Pointer; typeInfo:Pointer);
begin
{*
 004054D4    xor         ecx,ecx
 004054D6    push        ebx
 004054D7    mov         cl,byte ptr [edx+1]
 004054DA    push        esi
 004054DB    push        edi
 004054DC    mov         ebx,eax
 004054DE    lea         esi,[ecx+edx+0A]
 004054E2    mov         edi,dword ptr [ecx+edx+6]
 004054E6    mov         edx,dword ptr [esi]
 004054E8    mov         eax,dword ptr [esi+4]
 004054EB    add         eax,ebx
 004054ED    mov         edx,dword ptr [edx]
 004054EF    mov         ecx,1
 004054F4    call        @FinalizeArray
 004054F9    add         esi,8
 004054FC    dec         edi
>004054FD    jg          004054E6
 004054FF    mov         eax,ebx
 00405501    pop         edi
 00405502    pop         esi
 00405503    pop         ebx
 00405504    ret
*}
end;

//00405508
procedure @VarClr(var v:TVarData);
begin
{*
 00405508    cmp         dword ptr ds:[53D010],0;gvar_0053D010
>0040550F    je          00405518
 00405511    call        dword ptr ds:[53D010]
 00405517    ret
 00405518    mov         al,10
 0040551A    call        Error
 0040551F    ret
*}
end;

//00405520
procedure @FinalizeArray(p:Pointer; typeInfo:Pointer; elemCount:Cardinal);
begin
{*
 00405520    cmp         ecx,0
>00405523    je          00405609
 00405529    push        eax
 0040552A    push        ebx
 0040552B    push        esi
 0040552C    push        edi
 0040552D    mov         ebx,eax
 0040552F    mov         esi,edx
 00405531    mov         edi,ecx
 00405533    xor         edx,edx
 00405535    mov         al,byte ptr [esi]
 00405537    mov         dl,byte ptr [esi+1]
 0040553A    cmp         al,0A
>0040553C    je          00405563
 0040553E    cmp         al,0B
>00405540    je          00405580
 00405542    cmp         al,0C
>00405544    je          00405597
 00405546    cmp         al,0D
>00405548    je          004055A6
 0040554A    cmp         al,0E
>0040554C    je          004055C4
 0040554E    cmp         al,0F
>00405550    je          004055DA
 00405556    cmp         al,11
>00405558    je          004055E9
>0040555E    jmp         004055FA
 00405563    cmp         ecx,1
 00405566    mov         eax,ebx
>00405568    jg          00405574
 0040556A    call        @LStrClr
>0040556F    jmp         00405605
 00405574    mov         edx,ecx
 00405576    call        @LStrArrayClr
>0040557B    jmp         00405605
 00405580    cmp         ecx,1
 00405583    mov         eax,ebx
>00405585    jg          0040558E
 00405587    call        @WStrClr
>0040558C    jmp         00405605
 0040558E    mov         edx,ecx
 00405590    call        @WStrArrayClr
>00405595    jmp         00405605
 00405597    mov         eax,ebx
 00405599    add         ebx,10
 0040559C    call        @VarClr
 004055A1    dec         edi
>004055A2    jg          00405597
>004055A4    jmp         00405605
 004055A6    push        ebp
 004055A7    mov         ebp,edx
 004055A9    mov         edx,dword ptr [esi+ebp+0A]
 004055AD    mov         eax,ebx
 004055AF    add         ebx,dword ptr [esi+ebp+2]
 004055B3    mov         ecx,dword ptr [esi+ebp+6]
 004055B7    mov         edx,dword ptr [edx]
 004055B9    call        @FinalizeArray
 004055BE    dec         edi
>004055BF    jg          004055A9
 004055C1    pop         ebp
>004055C2    jmp         00405605
 004055C4    push        ebp
 004055C5    mov         ebp,edx
 004055C7    mov         eax,ebx
 004055C9    add         ebx,dword ptr [esi+ebp+2]
 004055CD    mov         edx,esi
 004055CF    call        @FinalizeRecord
 004055D4    dec         edi
>004055D5    jg          004055C7
 004055D7    pop         ebp
>004055D8    jmp         00405605
 004055DA    mov         eax,ebx
 004055DC    add         ebx,4
 004055DF    call        @IntfClear
 004055E4    dec         edi
>004055E5    jg          004055DA
>004055E7    jmp         00405605
 004055E9    mov         eax,ebx
 004055EB    mov         edx,esi
 004055ED    add         ebx,4
 004055F0    call        @DynArrayClear
 004055F5    dec         edi
>004055F6    jg          004055E9
>004055F8    jmp         00405605
 004055FA    pop         edi
 004055FB    pop         esi
 004055FC    pop         ebx
 004055FD    pop         eax
 004055FE    mov         al,2
>00405600    jmp         Error
 00405605    pop         edi
 00405606    pop         esi
 00405607    pop         ebx
 00405608    pop         eax
 00405609    ret
*}
end;

//0040560C
procedure @Finalize(p:Pointer; typeInfo:Pointer);
begin
{*
 0040560C    mov         ecx,1
>00405611    jmp         @FinalizeArray
 00405616    ret
*}
end;

//00405618
procedure @InitializeRecord(p:Pointer; typeInfo:Pointer);
begin
{*
 00405618    xor         ecx,ecx
 0040561A    push        ebx
 0040561B    mov         cl,byte ptr [edx+1]
 0040561E    push        esi
 0040561F    push        edi
 00405620    mov         ebx,eax
 00405622    lea         esi,[ecx+edx+0A]
 00405626    mov         edi,dword ptr [ecx+edx+6]
 0040562A    mov         edx,dword ptr [esi]
 0040562C    mov         eax,dword ptr [esi+4]
 0040562F    add         eax,ebx
 00405631    mov         edx,dword ptr [edx]
 00405633    mov         ecx,1
 00405638    call        @InitializeArray
 0040563D    add         esi,8
 00405640    dec         edi
>00405641    jg          0040562A
 00405643    pop         edi
 00405644    pop         esi
 00405645    pop         ebx
 00405646    ret
*}
end;

//00405648
procedure @VarAddRef(var v:TVarData);
begin
{*
 00405648    cmp         dword ptr ds:[53D014],0;gvar_0053D014
>0040564F    je          00405658
 00405651    call        dword ptr ds:[53D014]
 00405657    ret
 00405658    mov         al,10
 0040565A    call        Error
 0040565F    ret
*}
end;

//00405660
procedure @InitializeArray(p:Pointer; typeInfo:Pointer; elemCount:Cardinal);
begin
{*
 00405660    push        ebx
 00405661    push        esi
 00405662    push        edi
 00405663    test        ecx,ecx
>00405665    je          0040571B
 0040566B    mov         ebx,eax
 0040566D    mov         esi,edx
 0040566F    mov         edi,ecx
 00405671    xor         edx,edx
 00405673    mov         al,byte ptr [esi]
 00405675    mov         dl,byte ptr [esi+1]
 00405678    cmp         al,0A
>0040567A    je          0040569E
 0040567C    cmp         al,0B
>0040567E    je          004056AD
 00405680    cmp         al,0C
>00405682    je          004056BC
 00405684    cmp         al,0D
>00405686    je          004056CB
 00405688    cmp         al,0E
>0040568A    je          004056E9
 0040568C    cmp         al,0F
>0040568E    je          004056FF
 00405690    cmp         al,11
>00405692    je          0040570E
 00405694    mov         al,2
 00405696    pop         edi
 00405697    pop         esi
 00405698    pop         ebx
>00405699    jmp         Error
 0040569E    mov         eax,dword ptr [ebx]
 004056A0    add         ebx,4
 004056A3    call        @LStrAddRef
 004056A8    dec         edi
>004056A9    jg          0040569E
>004056AB    jmp         0040571B
 004056AD    mov         eax,ebx
 004056AF    add         ebx,4
 004056B2    call        @WStrAddRef
 004056B7    dec         edi
>004056B8    jg          004056AD
>004056BA    jmp         0040571B
 004056BC    mov         eax,ebx
 004056BE    add         ebx,10
 004056C1    call        @VarAddRef
 004056C6    dec         edi
>004056C7    jg          004056BC
>004056C9    jmp         0040571B
 004056CB    push        ebp
 004056CC    mov         ebp,edx
 004056CE    mov         edx,dword ptr [esi+ebp+0A]
 004056D2    mov         eax,ebx
 004056D4    add         ebx,dword ptr [esi+ebp+2]
 004056D8    mov         ecx,dword ptr [esi+ebp+6]
 004056DC    mov         edx,dword ptr [edx]
 004056DE    call        @InitializeArray
 004056E3    dec         edi
>004056E4    jg          004056CE
 004056E6    pop         ebp
>004056E7    jmp         0040571B
 004056E9    push        ebp
 004056EA    mov         ebp,edx
 004056EC    mov         eax,ebx
 004056EE    add         ebx,dword ptr [esi+ebp+2]
 004056F2    mov         edx,esi
 004056F4    call        @InitializeRecord
 004056F9    dec         edi
>004056FA    jg          004056EC
 004056FC    pop         ebp
>004056FD    jmp         0040571B
 004056FF    mov         eax,dword ptr [ebx]
 00405701    add         ebx,4
 00405704    call        @IntfAddRef
 00405709    dec         edi
>0040570A    jg          004056FF
>0040570C    jmp         0040571B
 0040570E    mov         eax,dword ptr [ebx]
 00405710    add         ebx,4
 00405713    call        @DynArrayAddRef
 00405718    dec         edi
>00405719    jg          0040570E
 0040571B    pop         edi
 0040571C    pop         esi
 0040571D    pop         ebx
 0040571E    ret
*}
end;

//00405720
procedure @VarCopy(var Dest:TVarData; const Src:TVarData);
begin
{*
 00405720    cmp         dword ptr ds:[53D018],0;gvar_0053D018
>00405727    je          00405730
 00405729    call        dword ptr ds:[53D018]
 0040572F    ret
 00405730    mov         al,10
 00405732    call        Error
 00405737    ret
*}
end;

//00405738
procedure @CopyRecord(Dest:Pointer; Source:Pointer; TypeInfo:Pointer);
begin
{*
 00405738    push        ebx
 00405739    push        esi
 0040573A    push        edi
 0040573B    push        ebp
 0040573C    mov         ebx,eax
 0040573E    mov         esi,edx
 00405740    xor         eax,eax
 00405742    mov         al,byte ptr [ecx+1]
 00405745    lea         edi,[eax+ecx+0A]
 00405749    mov         ebp,dword ptr [edi-4]
 0040574C    xor         eax,eax
 0040574E    mov         ecx,dword ptr [edi-8]
 00405751    push        ecx
 00405752    mov         ecx,dword ptr [edi+4]
 00405755    sub         ecx,eax
>00405757    jle         00405764
 00405759    mov         edx,eax
 0040575B    add         eax,esi
 0040575D    add         edx,ebx
 0040575F    call        Move
 00405764    mov         eax,dword ptr [edi+4]
 00405767    mov         edx,dword ptr [edi]
 00405769    mov         edx,dword ptr [edx]
 0040576B    mov         cl,byte ptr [edx]
 0040576D    cmp         cl,0A
>00405770    je          004057A3
 00405772    cmp         cl,0B
>00405775    je          004057B4
 00405777    cmp         cl,0C
>0040577A    je          004057C5
 0040577C    cmp         cl,0D
>0040577F    je          004057D6
 00405781    cmp         cl,0E
>00405784    je          004057F6
 00405786    cmp         cl,0F
>00405789    je          0040580F
 0040578F    cmp         cl,11
>00405792    je          00405820
 00405798    mov         al,2
 0040579A    pop         ebp
 0040579B    pop         edi
 0040579C    pop         esi
 0040579D    pop         ebx
>0040579E    jmp         Error
 004057A3    mov         edx,dword ptr [eax+esi]
 004057A6    add         eax,ebx
 004057A8    call        @LStrAsg
 004057AD    mov         eax,4
>004057B2    jmp         00405831
 004057B4    mov         edx,dword ptr [eax+esi]
 004057B7    add         eax,ebx
 004057B9    call        @WStrAsg
 004057BE    mov         eax,4
>004057C3    jmp         00405831
 004057C5    lea         edx,[eax+esi]
 004057C8    add         eax,ebx
 004057CA    call        @VarCopy
 004057CF    mov         eax,10
>004057D4    jmp         00405831
 004057D6    xor         ecx,ecx
 004057D8    mov         cl,byte ptr [edx+1]
 004057DB    push        dword ptr [ecx+edx+2]
 004057DF    push        dword ptr [ecx+edx+6]
 004057E3    mov         ecx,dword ptr [ecx+edx+0A]
 004057E7    mov         ecx,dword ptr [ecx]
 004057E9    lea         edx,[eax+esi]
 004057EC    add         eax,ebx
 004057EE    call        @CopyArray
 004057F3    pop         eax
>004057F4    jmp         00405831
 004057F6    xor         ecx,ecx
 004057F8    mov         cl,byte ptr [edx+1]
 004057FB    mov         ecx,dword ptr [ecx+edx+2]
 004057FF    push        ecx
 00405800    mov         ecx,edx
 00405802    lea         edx,[eax+esi]
 00405805    add         eax,ebx
 00405807    call        @CopyRecord
 0040580C    pop         eax
>0040580D    jmp         00405831
 0040580F    mov         edx,dword ptr [eax+esi]
 00405812    add         eax,ebx
 00405814    call        @IntfCopy
 00405819    mov         eax,4
>0040581E    jmp         00405831
 00405820    mov         ecx,edx
 00405822    mov         edx,dword ptr [eax+esi]
 00405825    add         eax,ebx
 00405827    call        @DynArrayAsg
 0040582C    mov         eax,4
 00405831    add         eax,dword ptr [edi+4]
 00405834    add         edi,8
 00405837    dec         ebp
>00405838    jne         00405752
 0040583E    pop         ecx
 0040583F    sub         ecx,eax
>00405841    jle         0040584D
 00405843    lea         edx,[eax+ebx]
 00405846    add         eax,esi
 00405848    call        Move
 0040584D    pop         ebp
 0040584E    pop         edi
 0040584F    pop         esi
 00405850    pop         ebx
 00405851    ret
*}
end;

//00405854
procedure @CopyArray(Dest:Pointer; Source:Pointer; TypeInfo:Pointer; Cnt:Integer);
begin
{*
 00405854    push        ebx
 00405855    push        esi
 00405856    push        edi
 00405857    push        ebp
 00405858    mov         ebx,eax
 0040585A    mov         esi,edx
 0040585C    mov         edi,ecx
 0040585E    mov         ebp,dword ptr [esp+14]
 00405862    mov         cl,byte ptr [edi]
 00405864    cmp         cl,0A
>00405867    je          0040589A
 00405869    cmp         cl,0B
>0040586C    je          004058B1
 0040586E    cmp         cl,0C
>00405871    je          004058C5
 00405873    cmp         cl,0D
>00405876    je          004058D9
 00405878    cmp         cl,0E
>0040587B    je          004058FA
 0040587D    cmp         cl,0F
>00405880    je          00405917
 00405886    cmp         cl,11
>00405889    je          0040592B
 0040588F    mov         al,2
 00405891    pop         ebp
 00405892    pop         edi
 00405893    pop         esi
 00405894    pop         ebx
>00405895    jmp         Error
 0040589A    mov         eax,ebx
 0040589C    mov         edx,dword ptr [esi]
 0040589E    call        @LStrAsg
 004058A3    add         ebx,4
 004058A6    add         esi,4
 004058A9    dec         ebp
>004058AA    jne         0040589A
>004058AC    jmp         0040593F
 004058B1    mov         eax,ebx
 004058B3    mov         edx,dword ptr [esi]
 004058B5    call        @WStrAsg
 004058BA    add         ebx,4
 004058BD    add         esi,4
 004058C0    dec         ebp
>004058C1    jne         004058B1
>004058C3    jmp         0040593F
 004058C5    mov         eax,ebx
 004058C7    mov         edx,esi
 004058C9    call        @VarCopy
 004058CE    add         ebx,10
 004058D1    add         esi,10
 004058D4    dec         ebp
>004058D5    jne         004058C5
>004058D7    jmp         0040593F
 004058D9    xor         ecx,ecx
 004058DB    mov         cl,byte ptr [edi+1]
 004058DE    lea         edi,[ecx+edi+2]
 004058E2    mov         eax,ebx
 004058E4    mov         edx,esi
 004058E6    mov         ecx,dword ptr [edi+8]
 004058E9    push        dword ptr [edi+4]
 004058EC    call        @CopyArray
 004058F1    add         ebx,dword ptr [edi]
 004058F3    add         esi,dword ptr [edi]
 004058F5    dec         ebp
>004058F6    jne         004058E2
>004058F8    jmp         0040593F
 004058FA    mov         eax,ebx
 004058FC    mov         edx,esi
 004058FE    mov         ecx,edi
 00405900    call        @CopyRecord
 00405905    xor         eax,eax
 00405907    mov         al,byte ptr [edi+1]
 0040590A    add         ebx,dword ptr [eax+edi+2]
 0040590E    add         esi,dword ptr [eax+edi+2]
 00405912    dec         ebp
>00405913    jne         004058FA
>00405915    jmp         0040593F
 00405917    mov         eax,ebx
 00405919    mov         edx,dword ptr [esi]
 0040591B    call        @IntfCopy
 00405920    add         ebx,4
 00405923    add         esi,4
 00405926    dec         ebp
>00405927    jne         00405917
>00405929    jmp         0040593F
 0040592B    mov         eax,ebx
 0040592D    mov         edx,dword ptr [esi]
 0040592F    mov         ecx,edi
 00405931    call        @DynArrayAsg
 00405936    add         ebx,4
 00405939    add         esi,4
 0040593C    dec         ebp
>0040593D    jne         0040592B
 0040593F    pop         ebp
 00405940    pop         edi
 00405941    pop         esi
 00405942    pop         ebx
 00405943    ret         4
*}
end;

//00405948
{*function sub_00405948:?;
begin
 00405948    push        edx
 00405949    call        @GetMem
 0040594E    pop         edx
 0040594F    test        eax,eax
>00405951    je          0040595A
 00405953    push        eax
 00405954    call        @AddRef
 00405959    pop         eax
 0040595A    ret
end;*}

//0040595C
procedure @Dispose(p:Pointer; typeInfo:Pointer);
begin
{*
 0040595C    push        eax
 0040595D    call        @Finalize
 00405962    pop         eax
 00405963    call        @FreeMem
 00405968    ret
*}
end;

//0040596C
procedure @DispCallByIDError;
begin
{*
 0040596C    mov         al,11
>0040596E    jmp         Error
 00405973    ret
*}
end;

//00405974
procedure @_llmul;
begin
{*
 00405974    push        edx
 00405975    push        eax
 00405976    mov         eax,dword ptr [esp+10]
 0040597A    mul         eax,dword ptr [esp]
 0040597D    mov         ecx,eax
 0040597F    mov         eax,dword ptr [esp+4]
 00405983    mul         eax,dword ptr [esp+0C]
 00405987    add         ecx,eax
 00405989    mov         eax,dword ptr [esp]
 0040598C    mul         eax,dword ptr [esp+0C]
 00405990    add         edx,ecx
 00405992    pop         ecx
 00405993    pop         ecx
 00405994    ret         8
*}
end;

//00405998
procedure @_lldiv;
begin
{*
 00405998    push        ebp
 00405999    push        ebx
 0040599A    push        esi
 0040599B    push        edi
 0040599C    xor         edi,edi
 0040599E    mov         ebx,dword ptr [esp+14]
 004059A2    mov         ecx,dword ptr [esp+18]
 004059A6    or          ecx,ecx
>004059A8    jne         004059B2
 004059AA    or          edx,edx
>004059AC    je          00405A0A
 004059AE    or          ebx,ebx
>004059B0    je          00405A0A
 004059B2    or          edx,edx
>004059B4    jns         004059C0
 004059B6    neg         edx
 004059B8    neg         eax
 004059BA    sbb         edx,0
 004059BD    or          edi,1
 004059C0    or          ecx,ecx
>004059C2    jns         004059CE
 004059C4    neg         ecx
 004059C6    neg         ebx
 004059C8    sbb         ecx,0
 004059CB    xor         edi,1
 004059CE    mov         ebp,ecx
 004059D0    mov         ecx,40
 004059D5    push        edi
 004059D6    xor         edi,edi
 004059D8    xor         esi,esi
 004059DA    shl         eax,1
 004059DC    rcl         edx,1
 004059DE    rcl         esi,1
 004059E0    rcl         edi,1
 004059E2    cmp         edi,ebp
>004059E4    jb          004059F1
>004059E6    ja          004059EC
 004059E8    cmp         esi,ebx
>004059EA    jb          004059F1
 004059EC    sub         esi,ebx
 004059EE    sbb         edi,ebp
 004059F0    inc         eax
 004059F1    loop        004059DA
 004059F3    pop         ebx
 004059F4    test        ebx,1
>004059FA    je          00405A03
 004059FC    neg         edx
 004059FE    neg         eax
 00405A00    sbb         edx,0
 00405A03    pop         edi
 00405A04    pop         esi
 00405A05    pop         ebx
 00405A06    pop         ebp
 00405A07    ret         8
 00405A0A    div         eax,ebx
 00405A0C    xor         edx,edx
>00405A0E    jmp         00405A03
 00405A10    ret
*}
end;

//00405A14
procedure @_llmod;
begin
{*
 00405A14    push        ebp
 00405A15    push        ebx
 00405A16    push        esi
 00405A17    push        edi
 00405A18    xor         edi,edi
 00405A1A    mov         ebx,dword ptr [esp+14]
 00405A1E    mov         ecx,dword ptr [esp+18]
 00405A22    or          ecx,ecx
>00405A24    jne         00405A2E
 00405A26    or          edx,edx
>00405A28    je          00405A87
 00405A2A    or          ebx,ebx
>00405A2C    je          00405A87
 00405A2E    or          edx,edx
>00405A30    jns         00405A3C
 00405A32    neg         edx
 00405A34    neg         eax
 00405A36    sbb         edx,0
 00405A39    or          edi,1
 00405A3C    or          ecx,ecx
>00405A3E    jns         00405A47
 00405A40    neg         ecx
 00405A42    neg         ebx
 00405A44    sbb         ecx,0
 00405A47    mov         ebp,ecx
 00405A49    mov         ecx,40
 00405A4E    push        edi
 00405A4F    xor         edi,edi
 00405A51    xor         esi,esi
 00405A53    shl         eax,1
 00405A55    rcl         edx,1
 00405A57    rcl         esi,1
 00405A59    rcl         edi,1
 00405A5B    cmp         edi,ebp
>00405A5D    jb          00405A6A
>00405A5F    ja          00405A65
 00405A61    cmp         esi,ebx
>00405A63    jb          00405A6A
 00405A65    sub         esi,ebx
 00405A67    sbb         edi,ebp
 00405A69    inc         eax
 00405A6A    loop        00405A53
 00405A6C    mov         eax,esi
 00405A6E    mov         edx,edi
 00405A70    pop         ebx
 00405A71    test        ebx,1
>00405A77    je          00405A80
 00405A79    neg         edx
 00405A7B    neg         eax
 00405A7D    sbb         edx,0
 00405A80    pop         edi
 00405A81    pop         esi
 00405A82    pop         ebx
 00405A83    pop         ebp
 00405A84    ret         8
 00405A87    div         eax,ebx
 00405A89    xchg        eax,edx
 00405A8A    xor         edx,edx
>00405A8C    jmp         00405A80
 00405A8E    ret
*}
end;

//00405A90
procedure @_llshl;
begin
{*
 00405A90    cmp         cl,20
>00405A93    jl          00405AA6
 00405A95    cmp         cl,40
>00405A98    jl          00405A9F
 00405A9A    xor         edx,edx
 00405A9C    xor         eax,eax
 00405A9E    ret
 00405A9F    mov         edx,eax
 00405AA1    shl         edx,cl
 00405AA3    xor         eax,eax
 00405AA5    ret
 00405AA6    shld        edx,eax,cl
 00405AA9    shl         eax,cl
 00405AAB    ret
*}
end;

//00405AB0
function @ValInt64(const s:AnsiString; var code:Integer):Int64;
begin
{*
 00405AB0    push        ebx
 00405AB1    push        esi
 00405AB2    push        edi
 00405AB3    push        ebp
 00405AB4    add         esp,0FFFFFFEC
 00405AB7    mov         dword ptr [esp],edx
 00405ABA    mov         esi,eax
 00405ABC    mov         ebp,1
 00405AC1    xor         edi,edi
 00405AC3    mov         dword ptr [esp+8],0
 00405ACB    mov         dword ptr [esp+0C],0
 00405AD3    test        esi,esi
>00405AD5    jne         00405AE2
 00405AD7    mov         eax,dword ptr [esp]
 00405ADA    mov         dword ptr [eax],ebp
>00405ADC    jmp         00405CCF
 00405AE1    inc         ebp
 00405AE2    cmp         byte ptr [esi+ebp-1],20
>00405AE7    je          00405AE1
 00405AE9    mov         byte ptr [esp+10],0
 00405AEE    mov         al,byte ptr [esi+ebp-1]
 00405AF2    cmp         al,2D
>00405AF4    jne         00405AFE
 00405AF6    mov         byte ptr [esp+10],1
 00405AFB    inc         ebp
>00405AFC    jmp         00405B03
 00405AFE    cmp         al,2B
>00405B00    jne         00405B03
 00405B02    inc         ebp
 00405B03    mov         bl,1
 00405B05    cmp         byte ptr [esi+ebp-1],24
>00405B0A    je          00405B34
 00405B0C    mov         al,byte ptr [esi+ebp-1]
 00405B10    call        UpCase
 00405B15    cmp         al,58
>00405B17    je          00405B34
 00405B19    cmp         byte ptr [esi+ebp-1],30
>00405B1E    jne         00405BFE
 00405B24    mov         al,byte ptr [esi+ebp]
 00405B27    call        UpCase
 00405B2C    cmp         al,58
>00405B2E    jne         00405BFE
 00405B34    cmp         byte ptr [esi+ebp-1],30
>00405B39    jne         00405B3C
 00405B3B    inc         ebp
 00405B3C    inc         ebp
 00405B3D    mov         al,byte ptr [esi+ebp-1]
 00405B41    mov         edx,eax
 00405B43    add         dl,0D0
 00405B46    sub         dl,0A
>00405B49    jb          00405B5D
 00405B4B    add         dl,0F9
 00405B4E    sub         dl,6
>00405B51    jb          00405B6A
 00405B53    add         dl,0E6
 00405B56    sub         dl,6
>00405B59    jb          00405B77
>00405B5B    jmp         00405BD7
 00405B5D    mov         edi,eax
 00405B5F    and         edi,0FF
 00405B65    sub         edi,30
>00405B68    jmp         00405B82
 00405B6A    mov         edi,eax
 00405B6C    and         edi,0FF
 00405B72    sub         edi,37
>00405B75    jmp         00405B82
 00405B77    mov         edi,eax
 00405B79    and         edi,0FF
 00405B7F    sub         edi,57
 00405B82    cmp         dword ptr [esp+0C],0
>00405B87    jne         00405B92
 00405B89    cmp         dword ptr [esp+8],0
>00405B8E    jb          00405BD7
>00405B90    jmp         00405B94
>00405B92    jl          00405BD7
 00405B94    cmp         dword ptr [esp+0C],0FFFFFFF
>00405B9C    jne         00405BA7
 00405B9E    cmp         dword ptr [esp+8],0FFFFFFFF
>00405BA3    jbe         00405BA9
>00405BA5    jmp         00405BD7
>00405BA7    jg          00405BD7
 00405BA9    mov         eax,edi
 00405BAB    cdq
 00405BAC    push        edx
 00405BAD    push        eax
 00405BAE    mov         eax,dword ptr [esp+10]
 00405BB2    mov         edx,dword ptr [esp+14]
 00405BB6    shld        edx,eax,4
 00405BBA    shl         eax,4
 00405BBD    add         eax,dword ptr [esp]
 00405BC0    adc         edx,dword ptr [esp+4]
 00405BC4    add         esp,8
 00405BC7    mov         dword ptr [esp+8],eax
 00405BCB    mov         dword ptr [esp+0C],edx
 00405BCF    inc         ebp
 00405BD0    xor         ebx,ebx
>00405BD2    jmp         00405B3D
 00405BD7    cmp         byte ptr [esp+10],0
>00405BDC    je          00405CB5
 00405BE2    mov         eax,dword ptr [esp+8]
 00405BE6    mov         edx,dword ptr [esp+0C]
 00405BEA    neg         eax
 00405BEC    adc         edx,0
 00405BEF    neg         edx
 00405BF1    mov         dword ptr [esp+8],eax
 00405BF5    mov         dword ptr [esp+0C],edx
>00405BF9    jmp         00405CB5
 00405BFE    mov         al,byte ptr [esi+ebp-1]
 00405C02    mov         edx,eax
 00405C04    add         dl,0D0
 00405C07    sub         dl,0A
>00405C0A    jae         00405C6E
 00405C0C    mov         edi,eax
 00405C0E    and         edi,0FF
 00405C14    sub         edi,30
 00405C17    cmp         dword ptr [esp+0C],0
>00405C1C    jne         00405C27
 00405C1E    cmp         dword ptr [esp+8],0
>00405C23    jb          00405C6E
>00405C25    jmp         00405C29
>00405C27    jl          00405C6E
 00405C29    cmp         dword ptr [esp+0C],0CCCCCCC
>00405C31    jne         00405C3F
 00405C33    cmp         dword ptr [esp+8],0CCCCCCCC
>00405C3B    jbe         00405C41
>00405C3D    jmp         00405C6E
>00405C3F    jg          00405C6E
 00405C41    push        0
 00405C43    push        0A
 00405C45    mov         eax,dword ptr [esp+10]
 00405C49    mov         edx,dword ptr [esp+14]
 00405C4D    call        @_llmul
 00405C52    push        edx
 00405C53    push        eax
 00405C54    mov         eax,edi
 00405C56    cdq
 00405C57    add         eax,dword ptr [esp]
 00405C5A    adc         edx,dword ptr [esp+4]
 00405C5E    add         esp,8
 00405C61    mov         dword ptr [esp+8],eax
 00405C65    mov         dword ptr [esp+0C],edx
 00405C69    inc         ebp
 00405C6A    xor         ebx,ebx
>00405C6C    jmp         00405BFE
 00405C6E    cmp         byte ptr [esp+10],0
>00405C73    je          00405C8C
 00405C75    mov         eax,dword ptr [esp+8]
 00405C79    mov         edx,dword ptr [esp+0C]
 00405C7D    neg         eax
 00405C7F    adc         edx,0
 00405C82    neg         edx
 00405C84    mov         dword ptr [esp+8],eax
 00405C88    mov         dword ptr [esp+0C],edx
 00405C8C    cmp         dword ptr [esp+0C],0
>00405C91    jne         00405C98
 00405C93    cmp         dword ptr [esp+8],0
>00405C98    je          00405CB5
 00405C9A    cmp         dword ptr [esp+0C],0
>00405C9F    jne         00405CAB
 00405CA1    cmp         dword ptr [esp+8],0
 00405CA6    setb        al
>00405CA9    jmp         00405CAE
 00405CAB    setl        al
 00405CAE    cmp         al,byte ptr [esp+10]
>00405CB2    je          00405CB5
 00405CB4    dec         ebp
 00405CB5    cmp         byte ptr [esi+ebp-1],0
 00405CBA    setne       al
 00405CBD    or          bl,al
>00405CBF    je          00405CC8
 00405CC1    mov         eax,dword ptr [esp]
 00405CC4    mov         dword ptr [eax],ebp
>00405CC6    jmp         00405CCF
 00405CC8    mov         eax,dword ptr [esp]
 00405CCB    xor         edx,edx
 00405CCD    mov         dword ptr [eax],edx
 00405CCF    mov         eax,dword ptr [esp+8]
 00405CD3    mov         edx,dword ptr [esp+0C]
 00405CD7    add         esp,14
 00405CDA    pop         ebp
 00405CDB    pop         edi
 00405CDC    pop         esi
 00405CDD    pop         ebx
 00405CDE    ret
*}
end;

//00405CE0
function @LStrLen(S:AnsiString):Integer;
begin
{*
 00405CE0    test        eax,eax
>00405CE2    je          00405CE7
 00405CE4    mov         eax,dword ptr [eax-4]
 00405CE7    ret
*}
end;

//00405CE8
{*function sub_00405CE8:?;
begin
 00405CE8    call        @LStrLen
 00405CED    dec         eax
 00405CEE    ret
end;*}

//00405CF0
procedure CopyArray(dest:Pointer; source:Pointer; typeInfo:Pointer; cnt:Integer);
begin
{*
 00405CF0    push        ebp
 00405CF1    mov         ebp,esp
 00405CF3    push        dword ptr [ebp+8]
 00405CF6    call        @CopyArray
 00405CFB    pop         ebp
 00405CFC    ret         4
*}
end;

//00405D00
procedure FinalizeArray(p:Pointer; typeInfo:Pointer; cnt:Integer);
begin
{*
>00405D00    jmp         @FinalizeArray
 00405D05    ret
*}
end;

//00405D08
procedure DynArrayClear(var arr:Pointer; typeInfo:PDynArrayTypeInfo);
begin
{*
 00405D08    call        @DynArrayClear
 00405D0D    ret
*}
end;

//00405D10
procedure DynArraySetLength(var arr:Pointer; typeInfo:PDynArrayTypeInfo; dimCnt:Longint; lenVec:PLongint);
begin
{*
 00405D10    push        ebp
 00405D11    mov         ebp,esp
 00405D13    add         esp,0FFFFFFE0
 00405D16    push        ebx
 00405D17    push        esi
 00405D18    push        edi
 00405D19    mov         dword ptr [ebp-8],ecx
 00405D1C    mov         esi,edx
 00405D1E    mov         dword ptr [ebp-4],eax
 00405D21    mov         ebx,dword ptr [ebp-4]
 00405D24    mov         ebx,dword ptr [ebx]
 00405D26    mov         eax,dword ptr [ebp+8]
 00405D29    mov         edi,dword ptr [eax]
 00405D2B    test        edi,edi
>00405D2D    jg          00405D49
 00405D2F    test        edi,edi
>00405D31    jge         00405D3A
 00405D33    mov         al,4
 00405D35    call        Error
 00405D3A    mov         eax,dword ptr [ebp-4]
 00405D3D    mov         edx,esi
 00405D3F    call        DynArrayClear
>00405D44    jmp         00405E93
 00405D49    xor         eax,eax
 00405D4B    mov         dword ptr [ebp-10],eax
 00405D4E    test        ebx,ebx
>00405D50    je          00405D5D
 00405D52    sub         ebx,4
 00405D55    mov         eax,dword ptr [ebx]
 00405D57    mov         dword ptr [ebp-10],eax
 00405D5A    sub         ebx,4
 00405D5D    xor         eax,eax
 00405D5F    mov         al,byte ptr [esi+1]
 00405D62    add         esi,eax
 00405D64    mov         eax,esi
 00405D66    mov         edx,dword ptr [eax+2]
 00405D69    mov         dword ptr [ebp-18],edx
 00405D6C    mov         edx,dword ptr [eax+6]
 00405D6F    test        edx,edx
>00405D71    je          00405D77
 00405D73    mov         esi,dword ptr [edx]
>00405D75    jmp         00405D79
 00405D77    xor         esi,esi
 00405D79    mov         eax,edi
 00405D7B    imul        dword ptr [ebp-18]
 00405D7E    mov         dword ptr [ebp-1C],eax
 00405D81    mov         eax,dword ptr [ebp-1C]
 00405D84    cdq
 00405D85    idiv        eax,edi
 00405D87    cmp         eax,dword ptr [ebp-18]
>00405D8A    je          00405D93
 00405D8C    mov         al,4
 00405D8E    call        Error
 00405D93    add         dword ptr [ebp-1C],8
 00405D97    test        ebx,ebx
>00405D99    je          00405DA0
 00405D9B    cmp         dword ptr [ebx],1
>00405D9E    jne         00405DD5
 00405DA0    mov         dword ptr [ebp-20],ebx
 00405DA3    cmp         edi,dword ptr [ebp-10]
>00405DA6    jge         00405DC5
 00405DA8    test        esi,esi
>00405DAA    je          00405DC5
 00405DAC    mov         eax,ebx
 00405DAE    add         eax,8
 00405DB1    mov         edx,edi
 00405DB3    imul        edx,dword ptr [ebp-18]
 00405DB7    add         eax,edx
 00405DB9    mov         ecx,dword ptr [ebp-10]
 00405DBC    sub         ecx,edi
 00405DBE    mov         edx,esi
 00405DC0    call        FinalizeArray
 00405DC5    lea         eax,[ebp-20]
 00405DC8    mov         edx,dword ptr [ebp-1C]
 00405DCB    call        @ReallocMem
 00405DD0    mov         ebx,dword ptr [ebp-20]
>00405DD3    jmp         00405E33
 00405DD5    dec         dword ptr [ebx]
 00405DD7    mov         eax,dword ptr [ebp-1C]
 00405DDA    call        @GetMem
 00405DDF    mov         ebx,eax
 00405DE1    mov         eax,dword ptr [ebp-10]
 00405DE4    mov         dword ptr [ebp-14],eax
 00405DE7    cmp         edi,dword ptr [ebp-14]
>00405DEA    jge         00405DEF
 00405DEC    mov         dword ptr [ebp-14],edi
 00405DEF    test        esi,esi
>00405DF1    je          00405E1D
 00405DF3    mov         edx,dword ptr [ebp-14]
 00405DF6    imul        edx,dword ptr [ebp-18]
 00405DFA    mov         eax,ebx
 00405DFC    add         eax,8
 00405DFF    xor         ecx,ecx
 00405E01    call        @FillChar
 00405E06    mov         eax,dword ptr [ebp-14]
 00405E09    push        eax
 00405E0A    mov         edx,dword ptr [ebp-4]
 00405E0D    mov         edx,dword ptr [edx]
 00405E0F    mov         eax,ebx
 00405E11    add         eax,8
 00405E14    mov         ecx,esi
 00405E16    call        CopyArray
>00405E1B    jmp         00405E33
 00405E1D    mov         ecx,dword ptr [ebp-14]
 00405E20    imul        ecx,dword ptr [ebp-18]
 00405E24    mov         edx,ebx
 00405E26    add         edx,8
 00405E29    mov         eax,dword ptr [ebp-4]
 00405E2C    mov         eax,dword ptr [eax]
 00405E2E    call        Move
 00405E33    mov         dword ptr [ebx],1
 00405E39    add         ebx,4
 00405E3C    mov         dword ptr [ebx],edi
 00405E3E    add         ebx,4
 00405E41    mov         edx,edi
 00405E43    sub         edx,dword ptr [ebp-10]
 00405E46    imul        edx,dword ptr [ebp-18]
 00405E4A    mov         eax,dword ptr [ebp-18]
 00405E4D    imul        eax,dword ptr [ebp-10]
 00405E51    add         eax,ebx
 00405E53    xor         ecx,ecx
 00405E55    call        @FillChar
 00405E5A    cmp         dword ptr [ebp-8],1
>00405E5E    jle         00405E8E
 00405E60    add         dword ptr [ebp+8],4
 00405E64    dec         dword ptr [ebp-8]
 00405E67    dec         edi
 00405E68    test        edi,edi
>00405E6A    jl          00405E8E
 00405E6C    inc         edi
 00405E6D    mov         dword ptr [ebp-0C],0
 00405E74    mov         eax,dword ptr [ebp+8]
 00405E77    push        eax
 00405E78    mov         eax,dword ptr [ebp-0C]
 00405E7B    lea         eax,[ebx+eax*4]
 00405E7E    mov         ecx,dword ptr [ebp-8]
 00405E81    mov         edx,esi
 00405E83    call        DynArraySetLength
 00405E88    inc         dword ptr [ebp-0C]
 00405E8B    dec         edi
>00405E8C    jne         00405E74
 00405E8E    mov         eax,dword ptr [ebp-4]
 00405E91    mov         dword ptr [eax],ebx
 00405E93    pop         edi
 00405E94    pop         esi
 00405E95    pop         ebx
 00405E96    mov         esp,ebp
 00405E98    pop         ebp
 00405E99    ret         4
*}
end;

//00405E9C
procedure @DynArraySetLength(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo; DimCnt:Longint; LengthVec:Longint);
begin
{*
 00405E9C    push        esp
 00405E9D    add         dword ptr [esp],4
 00405EA1    call        DynArraySetLength
 00405EA6    ret
*}
end;

//00405EA8
procedure @DynArrayCopy(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; var Result:Pointer);
begin
{*
 00405EA8    push        ebx
 00405EA9    test        eax,eax
>00405EAB    je          00405EBF
 00405EAD    mov         ebx,eax
 00405EAF    sub         ebx,4
 00405EB2    mov         ebx,dword ptr [ebx]
 00405EB4    push        ebx
 00405EB5    push        ecx
 00405EB6    xor         ecx,ecx
 00405EB8    call        @DynArrayCopyRange
 00405EBD    pop         ebx
 00405EBE    ret
 00405EBF    mov         eax,ecx
 00405EC1    call        @DynArrayClear
 00405EC6    pop         ebx
 00405EC7    ret
*}
end;

//00405EC8
procedure @DynArrayCopyRange(Arr:Pointer; TypeInfo:PDynArrayTypeInfo; Index:Integer; Count:Integer; var Result:Pointer);
begin
{*
 00405EC8    push        ebp
 00405EC9    mov         ebp,esp
 00405ECB    add         esp,0FFFFFFF0
 00405ECE    push        ebx
 00405ECF    push        esi
 00405ED0    push        edi
 00405ED1    mov         edi,ecx
 00405ED3    mov         dword ptr [ebp-8],edx
 00405ED6    mov         dword ptr [ebp-4],eax
 00405ED9    mov         esi,dword ptr [ebp+0C]
 00405EDC    xor         ebx,ebx
 00405EDE    cmp         dword ptr [ebp-4],0
>00405EE2    je          00405FA2
 00405EE8    mov         eax,dword ptr [ebp-8]
 00405EEB    mov         dword ptr [ebp-10],eax
 00405EEE    test        edi,edi
>00405EF0    jge         00405EF6
 00405EF2    add         esi,edi
 00405EF4    xor         edi,edi
 00405EF6    mov         eax,dword ptr [ebp-4]
 00405EF9    sub         eax,4
 00405EFC    mov         eax,dword ptr [eax]
 00405EFE    cmp         eax,edi
>00405F00    jge         00405F04
 00405F02    mov         edi,eax
 00405F04    mov         edx,eax
 00405F06    sub         edx,edi
 00405F08    cmp         esi,edx
>00405F0A    jle         00405F0E
 00405F0C    mov         esi,edx
 00405F0E    test        esi,esi
>00405F10    jge         00405F14
 00405F12    xor         esi,esi
 00405F14    test        esi,esi
>00405F16    jle         00405FA2
 00405F1C    mov         eax,dword ptr [ebp-10]
 00405F1F    movzx       eax,byte ptr [eax+1]
 00405F23    add         dword ptr [ebp-10],eax
 00405F26    mov         eax,dword ptr [ebp-10]
 00405F29    mov         eax,dword ptr [eax+2]
 00405F2C    mov         dword ptr [ebp-0C],eax
 00405F2F    mov         eax,dword ptr [ebp-10]
 00405F32    mov         eax,dword ptr [eax+6]
 00405F35    test        eax,eax
>00405F37    je          00405F40
 00405F39    mov         eax,dword ptr [eax]
 00405F3B    mov         dword ptr [ebp-10],eax
>00405F3E    jmp         00405F45
 00405F40    xor         eax,eax
 00405F42    mov         dword ptr [ebp-10],eax
 00405F45    mov         eax,esi
 00405F47    imul        dword ptr [ebp-0C]
 00405F4A    add         eax,8
 00405F4D    call        @GetMem
 00405F52    mov         ebx,eax
 00405F54    mov         dword ptr [ebx],1
 00405F5A    add         ebx,4
 00405F5D    mov         dword ptr [ebx],esi
 00405F5F    add         ebx,4
 00405F62    imul        edi,dword ptr [ebp-0C]
 00405F66    add         dword ptr [ebp-4],edi
 00405F69    test        esi,esi
>00405F6B    jle         00405FA2
 00405F6D    cmp         dword ptr [ebp-10],0
>00405F71    je          00405F92
 00405F73    mov         edx,esi
 00405F75    imul        edx,dword ptr [ebp-0C]
 00405F79    mov         eax,ebx
 00405F7B    xor         ecx,ecx
 00405F7D    call        @FillChar
 00405F82    push        esi
 00405F83    mov         ecx,dword ptr [ebp-10]
 00405F86    mov         edx,dword ptr [ebp-4]
 00405F89    mov         eax,ebx
 00405F8B    call        CopyArray
>00405F90    jmp         00405FA2
 00405F92    mov         ecx,esi
 00405F94    imul        ecx,dword ptr [ebp-0C]
 00405F98    mov         edx,ebx
 00405F9A    mov         eax,dword ptr [ebp-4]
 00405F9D    call        Move
 00405FA2    mov         eax,dword ptr [ebp+8]
 00405FA5    mov         edx,dword ptr [ebp-8]
 00405FA8    call        DynArrayClear
 00405FAD    mov         eax,dword ptr [ebp+8]
 00405FB0    mov         dword ptr [eax],ebx
 00405FB2    pop         edi
 00405FB3    pop         esi
 00405FB4    pop         ebx
 00405FB5    mov         esp,ebp
 00405FB7    pop         ebp
 00405FB8    ret         8
*}
end;

//00405FBC
procedure @DynArrayClear(var Arr:Pointer; TypeInfo:PDynArrayTypeInfo);
begin
{*
 00405FBC    mov         ecx,dword ptr [eax]
 00405FBE    test        ecx,ecx
>00405FC0    je          00405FF5
 00405FC2    mov         dword ptr [eax],0
 00405FC8    lock dec    dword ptr [ecx-8]
>00405FCC    jne         00405FF5
 00405FCE    push        eax
 00405FCF    mov         eax,ecx
 00405FD1    xor         ecx,ecx
 00405FD3    mov         cl,byte ptr [edx+1]
 00405FD6    mov         edx,dword ptr [ecx+edx+6]
 00405FDA    test        edx,edx
>00405FDC    je          00405FEC
 00405FDE    mov         ecx,dword ptr [eax-4]
 00405FE1    test        ecx,ecx
>00405FE3    je          00405FEC
 00405FE5    mov         edx,dword ptr [edx]
 00405FE7    call        @FinalizeArray
 00405FEC    sub         eax,8
 00405FEF    call        @FreeMem
 00405FF4    pop         eax
 00405FF5    ret
*}
end;

//00405FF8
procedure @DynArrayAsg(var Dest:Pointer; Source:Pointer; TypeInfo:PDynArrayTypeInfo);
begin
{*
 00405FF8    push        ebx
 00405FF9    mov         ebx,dword ptr [eax]
 00405FFB    test        edx,edx
>00405FFD    je          00406003
 00405FFF    lock inc    dword ptr [edx-8]
 00406003    test        ebx,ebx
>00406005    je          0040601B
 00406007    lock dec    dword ptr [ebx-8]
>0040600B    jne         0040601B
 0040600D    push        eax
 0040600E    push        edx
 0040600F    mov         edx,ecx
 00406011    inc         dword ptr [ebx-8]
 00406014    call        @DynArrayClear
 00406019    pop         edx
 0040601A    pop         eax
 0040601B    mov         dword ptr [eax],edx
 0040601D    pop         ebx
 0040601E    ret
*}
end;

//00406020
procedure @DynArrayAddRef(Arr:Pointer);
begin
{*
 00406020    test        eax,eax
>00406022    je          00406028
 00406024    lock inc    dword ptr [eax-8]
 00406028    ret
*}
end;

//0040602C
function FindHInstance(Address:Pointer):Cardinal;
begin
{*
 0040602C    add         esp,0FFFFFFE4
 0040602F    push        1C
 00406031    lea         edx,[esp+4]
 00406035    push        edx
 00406036    push        eax
 00406037    call        kernel32.VirtualQuery
 0040603C    cmp         dword ptr [esp+10],1000
>00406044    jne         0040604C
 00406046    mov         eax,dword ptr [esp+4]
>0040604A    jmp         0040604E
 0040604C    xor         eax,eax
 0040604E    add         esp,1C
 00406051    ret
*}
end;

//00406054
procedure sub_00406054;
begin
{*
 00406054    call        FindHInstance
 00406059    ret
*}
end;

//0040605C
function DelayLoadResourceModule(Module:PLibModule):Cardinal;
begin
{*
 0040605C    push        ebx
 0040605D    push        esi
 0040605E    add         esp,0FFFFFEF8
 00406064    mov         ebx,eax
 00406066    cmp         dword ptr [ebx+10],0
>0040606A    jne         00406097
 0040606C    push        105
 00406071    lea         eax,[esp+4]
 00406075    push        eax
 00406076    mov         eax,dword ptr [ebx+4]
 00406079    push        eax
 0040607A    call        kernel32.GetModuleFileNameA
 0040607F    mov         eax,esp
 00406081    mov         dl,1
 00406083    call        LoadResourceModule
 00406088    mov         esi,eax
 0040608A    mov         dword ptr [ebx+10],esi
 0040608D    test        esi,esi
>0040608F    jne         00406097
 00406091    mov         eax,dword ptr [ebx+4]
 00406094    mov         dword ptr [ebx+10],eax
 00406097    mov         eax,dword ptr [ebx+10]
 0040609A    add         esp,108
 004060A0    pop         esi
 004060A1    pop         ebx
 004060A2    ret
*}
end;

//004060A4
function FindResourceHInstance(Instance:Cardinal):Cardinal;
begin
{*
 004060A4    mov         edx,dword ptr ds:[53D03C]
 004060AA    test        edx,edx
>004060AC    je          004060CB
 004060AE    cmp         eax,dword ptr [edx+4]
>004060B1    je          004060BD
 004060B3    cmp         eax,dword ptr [edx+8]
>004060B6    je          004060BD
 004060B8    cmp         eax,dword ptr [edx+0C]
>004060BB    jne         004060C5
 004060BD    mov         eax,edx
 004060BF    call        DelayLoadResourceModule
 004060C4    ret
 004060C5    mov         edx,dword ptr [edx]
 004060C7    test        edx,edx
>004060C9    jne         004060AE
 004060CB    ret
*}
end;

//004060CC
function FindBS(Current:PAnsiChar):PAnsiChar;
begin
{*
>004060CC    jmp         004060D4
 004060CE    push        eax
 004060CF    call        user32.CharNextA
 004060D4    mov         dl,byte ptr [eax]
 004060D6    test        dl,dl
>004060D8    je          004060DF
 004060DA    cmp         dl,5C
>004060DD    jne         004060CE
 004060DF    ret
*}
end;

//004060E0
function ToLongPath(AFileName:PAnsiChar; BufSize:Integer):PAnsiChar;
begin
{*
 004060E0    push        ebp
 004060E1    mov         ebp,esp
 004060E3    add         esp,0FFFFFDB0
 004060E9    push        ebx
 004060EA    push        esi
 004060EB    push        edi
 004060EC    mov         dword ptr [ebp-8],edx
 004060EF    mov         dword ptr [ebp-4],eax
 004060F2    mov         eax,dword ptr [ebp-4]
 004060F5    mov         dword ptr [ebp-0C],eax
 004060F8    push        406274
 004060FD    call        kernel32.GetModuleHandleA
 00406102    mov         esi,eax
 00406104    test        esi,esi
>00406106    je          00406148
 00406108    push        406284
 0040610D    push        esi
 0040610E    call        kernel32.GetProcAddress
 00406113    mov         ebx,eax
 00406115    test        ebx,ebx
>00406117    je          00406148
 00406119    push        105
 0040611E    lea         eax,[ebp-24F]
 00406124    push        eax
 00406125    mov         eax,dword ptr [ebp-4]
 00406128    push        eax
 00406129    call        ebx
 0040612B    test        eax,eax
>0040612D    je          00406148
 0040612F    mov         eax,dword ptr [ebp-8]
 00406132    push        eax
 00406133    lea         eax,[ebp-24F]
 00406139    push        eax
 0040613A    mov         eax,dword ptr [ebp-4]
 0040613D    push        eax
 0040613E    call        kernel32.lstrcpynA
>00406143    jmp         0040626A
 00406148    mov         eax,dword ptr [ebp-4]
 0040614B    cmp         byte ptr [eax],5C
>0040614E    jne         00406188
 00406150    mov         eax,dword ptr [ebp-4]
 00406153    cmp         byte ptr [eax+1],5C
>00406157    jne         0040626A
 0040615D    mov         eax,dword ptr [ebp-4]
 00406160    add         eax,2
 00406163    call        FindBS
 00406168    mov         esi,eax
 0040616A    cmp         byte ptr [esi],0
>0040616D    je          0040626A
 00406173    lea         eax,[esi+1]
 00406176    call        FindBS
 0040617B    mov         esi,eax
 0040617D    cmp         byte ptr [esi],0
>00406180    je          0040626A
>00406186    jmp         0040618E
 00406188    mov         esi,dword ptr [ebp-4]
 0040618B    add         esi,2
 0040618E    mov         ebx,esi
 00406190    sub         ebx,dword ptr [ebp-4]
 00406193    lea         eax,[ebx+1]
 00406196    push        eax
 00406197    mov         eax,dword ptr [ebp-4]
 0040619A    push        eax
 0040619B    lea         eax,[ebp-24F]
 004061A1    push        eax
 004061A2    call        kernel32.lstrcpynA
>004061A7    jmp         0040624D
 004061AC    lea         eax,[esi+1]
 004061AF    call        FindBS
 004061B4    mov         edi,eax
 004061B6    mov         eax,edi
 004061B8    sub         eax,esi
 004061BA    mov         edx,eax
 004061BC    add         edx,ebx
 004061BE    inc         edx
 004061BF    cmp         edx,105
>004061C5    jg          0040626A
 004061CB    inc         eax
 004061CC    push        eax
 004061CD    push        esi
 004061CE    lea         eax,[ebp-24F]
 004061D4    add         eax,ebx
 004061D6    push        eax
 004061D7    call        kernel32.lstrcpynA
 004061DC    lea         eax,[ebp-14A]
 004061E2    push        eax
 004061E3    lea         eax,[ebp-24F]
 004061E9    push        eax
 004061EA    call        kernel32.FindFirstFileA
 004061EF    mov         esi,eax
 004061F1    cmp         esi,0FFFFFFFF
>004061F4    je          0040626A
 004061F6    push        esi
 004061F7    call        kernel32.FindClose
 004061FC    lea         eax,[ebp-11E]
 00406202    push        eax
 00406203    call        kernel32.lstrlenA
 00406208    lea         edx,[ebx+1]
 0040620B    add         eax,edx
 0040620D    inc         eax
 0040620E    cmp         eax,105
>00406213    jg          0040626A
 00406215    mov         byte ptr [ebp+ebx-24F],5C
 0040621D    mov         eax,105
 00406222    sub         eax,ebx
 00406224    dec         eax
 00406225    push        eax
 00406226    lea         eax,[ebp-11E]
 0040622C    push        eax
 0040622D    lea         eax,[ebp-24F]
 00406233    add         eax,ebx
 00406235    inc         eax
 00406236    push        eax
 00406237    call        kernel32.lstrcpynA
 0040623C    lea         eax,[ebp-11E]
 00406242    push        eax
 00406243    call        kernel32.lstrlenA
 00406248    inc         eax
 00406249    add         ebx,eax
 0040624B    mov         esi,edi
 0040624D    cmp         byte ptr [esi],0
>00406250    jne         004061AC
 00406256    mov         eax,dword ptr [ebp-8]
 00406259    push        eax
 0040625A    lea         eax,[ebp-24F]
 00406260    push        eax
 00406261    mov         eax,dword ptr [ebp-4]
 00406264    push        eax
 00406265    call        kernel32.lstrcpynA
 0040626A    mov         eax,dword ptr [ebp-0C]
 0040626D    pop         edi
 0040626E    pop         esi
 0040626F    pop         ebx
 00406270    mov         esp,ebp
 00406272    pop         ebp
 00406273    ret
*}
end;

//00406298
function LoadResourceModule(ModuleName:PAnsiChar; CheckOwner:Boolean):Cardinal;
begin
{*
 00406298    push        ebp
 00406299    mov         ebp,esp
 0040629B    add         esp,0FFFFFEE0
 004062A1    push        ebx
 004062A2    push        esi
 004062A3    mov         dword ptr [ebp-4],eax
 004062A6    push        105
 004062AB    lea         eax,[ebp-11D]
 004062B1    push        eax
 004062B2    push        0
 004062B4    call        kernel32.GetModuleFileNameA
 004062B9    mov         byte ptr [ebp-12],0
 004062BD    lea         eax,[ebp-8]
 004062C0    push        eax
 004062C1    push        0F0019
 004062C6    push        0
 004062C8    push        4064C8
 004062CD    push        80000001
 004062D2    call        advapi32.RegOpenKeyExA
 004062D7    test        eax,eax
>004062D9    je          0040631B
 004062DB    lea         eax,[ebp-8]
 004062DE    push        eax
 004062DF    push        0F0019
 004062E4    push        0
 004062E6    push        4064C8
 004062EB    push        80000002
 004062F0    call        advapi32.RegOpenKeyExA
 004062F5    test        eax,eax
>004062F7    je          0040631B
 004062F9    lea         eax,[ebp-8]
 004062FC    push        eax
 004062FD    push        0F0019
 00406302    push        0
 00406304    push        4064E4
 00406309    push        80000001
 0040630E    call        advapi32.RegOpenKeyExA
 00406313    test        eax,eax
>00406315    jne         004063A4
 0040631B    xor         eax,eax
 0040631D    push        ebp
 0040631E    push        40639D
 00406323    push        dword ptr fs:[eax]
 00406326    mov         dword ptr fs:[eax],esp
 00406329    mov         dword ptr [ebp-18],5
 00406330    lea         eax,[ebp-11D]
 00406336    mov         edx,105
 0040633B    call        ToLongPath
 00406340    lea         eax,[ebp-18]
 00406343    push        eax
 00406344    lea         eax,[ebp-12]
 00406347    push        eax
 00406348    push        0
 0040634A    push        0
 0040634C    lea         eax,[ebp-11D]
 00406352    push        eax
 00406353    mov         eax,dword ptr [ebp-8]
 00406356    push        eax
 00406357    call        advapi32.RegQueryValueExA
 0040635C    test        eax,eax
>0040635E    je          00406382
 00406360    lea         eax,[ebp-18]
 00406363    push        eax
 00406364    lea         eax,[ebp-12]
 00406367    push        eax
 00406368    push        0
 0040636A    push        0
 0040636C    push        406504
 00406371    mov         eax,dword ptr [ebp-8]
 00406374    push        eax
 00406375    call        advapi32.RegQueryValueExA
 0040637A    test        eax,eax
>0040637C    je          00406382
 0040637E    mov         byte ptr [ebp-12],0
 00406382    mov         byte ptr [ebp-0E],0
 00406386    xor         eax,eax
 00406388    pop         edx
 00406389    pop         ecx
 0040638A    pop         ecx
 0040638B    mov         dword ptr fs:[eax],edx
 0040638E    push        4063A4
 00406393    mov         eax,dword ptr [ebp-8]
 00406396    push        eax
 00406397    call        advapi32.RegCloseKey
 0040639C    ret
>0040639D    jmp         @HandleFinally
>004063A2    jmp         00406393
 004063A4    push        105
 004063A9    mov         eax,dword ptr [ebp-4]
 004063AC    push        eax
 004063AD    lea         eax,[ebp-11D]
 004063B3    push        eax
 004063B4    call        kernel32.lstrcpynA
 004063B9    push        5
 004063BB    lea         eax,[ebp-0D]
 004063BE    push        eax
 004063BF    push        3
 004063C1    call        kernel32.GetThreadLocale
 004063C6    push        eax
 004063C7    call        kernel32.GetLocaleInfoA
 004063CC    xor         esi,esi
 004063CE    cmp         byte ptr [ebp-11D],0
>004063D5    je          004064BE
 004063DB    cmp         byte ptr [ebp-0D],0
>004063DF    jne         004063EB
 004063E1    cmp         byte ptr [ebp-12],0
>004063E5    je          004064BE
 004063EB    lea         eax,[ebp-11D]
 004063F1    push        eax
 004063F2    call        kernel32.lstrlenA
 004063F7    mov         ebx,eax
 004063F9    lea         eax,[ebp-11D]
 004063FF    add         ebx,eax
>00406401    jmp         00406404
 00406403    dec         ebx
 00406404    cmp         byte ptr [ebx],2E
>00406407    je          00406413
 00406409    lea         eax,[ebp-11D]
 0040640F    cmp         ebx,eax
>00406411    jne         00406403
 00406413    lea         eax,[ebp-11D]
 00406419    cmp         ebx,eax
>0040641B    je          004064BE
 00406421    inc         ebx
 00406422    cmp         byte ptr [ebp-12],0
>00406426    je          00406450
 00406428    mov         edx,ebx
 0040642A    sub         edx,eax
 0040642C    mov         eax,105
 00406431    sub         eax,edx
 00406433    push        eax
 00406434    lea         eax,[ebp-12]
 00406437    push        eax
 00406438    push        ebx
 00406439    call        kernel32.lstrcpynA
 0040643E    push        2
 00406440    push        0
 00406442    lea         eax,[ebp-11D]
 00406448    push        eax
 00406449    call        kernel32.LoadLibraryExA
 0040644E    mov         esi,eax
 00406450    test        esi,esi
>00406452    jne         004064BE
 00406454    cmp         byte ptr [ebp-0D],0
>00406458    je          004064BE
 0040645A    lea         eax,[ebp-11D]
 00406460    mov         edx,ebx
 00406462    sub         edx,eax
 00406464    mov         eax,105
 00406469    sub         eax,edx
 0040646B    push        eax
 0040646C    lea         eax,[ebp-0D]
 0040646F    push        eax
 00406470    push        ebx
 00406471    call        kernel32.lstrcpynA
 00406476    push        2
 00406478    push        0
 0040647A    lea         eax,[ebp-11D]
 00406480    push        eax
 00406481    call        kernel32.LoadLibraryExA
 00406486    mov         esi,eax
 00406488    test        esi,esi
>0040648A    jne         004064BE
 0040648C    mov         byte ptr [ebp-0B],0
 00406490    lea         eax,[ebp-11D]
 00406496    mov         edx,ebx
 00406498    sub         edx,eax
 0040649A    mov         eax,105
 0040649F    sub         eax,edx
 004064A1    push        eax
 004064A2    lea         eax,[ebp-0D]
 004064A5    push        eax
 004064A6    push        ebx
 004064A7    call        kernel32.lstrcpynA
 004064AC    push        2
 004064AE    push        0
 004064B0    lea         eax,[ebp-11D]
 004064B6    push        eax
 004064B7    call        kernel32.LoadLibraryExA
 004064BC    mov         esi,eax
 004064BE    mov         eax,esi
 004064C0    pop         esi
 004064C1    pop         ebx
 004064C2    mov         esp,ebp
 004064C4    pop         ebp
 004064C5    ret
*}
end;

//00406508
procedure AddModuleUnloadProc(Proc:TModuleUnloadProc);
begin
{*
 00406508    call        AddModuleUnloadProc
 0040650D    ret
*}
end;

//00406510
procedure RemoveModuleUnloadProc(Proc:TModuleUnloadProc);
begin
{*
 00406510    call        RemoveModuleUnloadProc
 00406515    ret
*}
end;

//00406518
procedure AddModuleUnloadProc(Proc:TModuleUnloadProcLW);
begin
{*
 00406518    push        ebx
 00406519    mov         ebx,eax
 0040651B    mov         eax,8
 00406520    call        @GetMem
 00406525    mov         edx,dword ptr ds:[53D040]
 0040652B    mov         dword ptr [eax],edx
 0040652D    mov         dword ptr [eax+4],ebx
 00406530    mov         [0053D040],eax
 00406535    pop         ebx
 00406536    ret
*}
end;

//00406538
procedure RemoveModuleUnloadProc(Proc:TModuleUnloadProcLW);
begin
{*
 00406538    push        ebx
 00406539    push        esi
 0040653A    mov         esi,dword ptr ds:[53D040]
 00406540    test        esi,esi
>00406542    je          00406566
 00406544    mov         edx,dword ptr [esi+4]
 00406547    cmp         edx,eax
>00406549    jne         00406566
 0040654B    mov         eax,[0053D040]
 00406550    mov         eax,dword ptr [eax]
 00406552    mov         [0053D040],eax
 00406557    mov         edx,8
 0040655C    mov         eax,esi
 0040655E    call        @FreeMem
 00406563    pop         esi
 00406564    pop         ebx
 00406565    ret
 00406566    mov         edx,esi
 00406568    test        edx,edx
>0040656A    je          00406593
 0040656C    mov         ecx,dword ptr [edx]
 0040656E    test        ecx,ecx
>00406570    je          0040658D
 00406572    mov         ebx,dword ptr [ecx+4]
 00406575    cmp         ebx,eax
>00406577    jne         0040658D
 00406579    mov         esi,ecx
 0040657B    mov         eax,dword ptr [ecx]
 0040657D    mov         dword ptr [edx],eax
 0040657F    mov         edx,8
 00406584    mov         eax,esi
 00406586    call        @FreeMem
>0040658B    jmp         00406593
 0040658D    mov         edx,dword ptr [edx]
 0040658F    test        edx,edx
>00406591    jne         0040656C
 00406593    pop         esi
 00406594    pop         ebx
 00406595    ret
*}
end;

//00406598
procedure NotifyModuleUnload(HInstance:Cardinal);
begin
{*
 00406598    push        ebp
 00406599    mov         ebp,esp
 0040659B    add         esp,0FFFFFFF8
 0040659E    push        ebx
 0040659F    push        esi
 004065A0    push        edi
 004065A1    mov         dword ptr [ebp-4],eax
 004065A4    mov         eax,[0053D040]
 004065A9    mov         dword ptr [ebp-8],eax
 004065AC    cmp         dword ptr [ebp-8],0
>004065B0    je          004065EB
 004065B2    xor         eax,eax
 004065B4    push        ebp
 004065B5    push        4065D3
 004065BA    push        dword ptr fs:[eax]
 004065BD    mov         dword ptr fs:[eax],esp
 004065C0    mov         ebx,dword ptr [ebp-8]
 004065C3    mov         eax,dword ptr [ebp-4]
 004065C6    call        dword ptr [ebx+4]
 004065C9    xor         eax,eax
 004065CB    pop         edx
 004065CC    pop         ecx
 004065CD    pop         ecx
 004065CE    mov         dword ptr fs:[eax],edx
>004065D1    jmp         004065DD
>004065D3    jmp         @HandleAnyException
 004065D8    call        @DoneExcept
 004065DD    mov         eax,dword ptr [ebp-8]
 004065E0    mov         eax,dword ptr [eax]
 004065E2    mov         dword ptr [ebp-8],eax
 004065E5    cmp         dword ptr [ebp-8],0
>004065E9    jne         004065B2
 004065EB    pop         edi
 004065EC    pop         esi
 004065ED    pop         ebx
 004065EE    pop         ecx
 004065EF    pop         ecx
 004065F0    pop         ebp
 004065F1    ret
*}
end;

//004065F4
procedure RegisterModule(LibModule:PLibModule);
begin
{*
 004065F4    mov         edx,dword ptr ds:[53D03C]
 004065FA    mov         dword ptr [eax],edx
 004065FC    mov         [0053D03C],eax
 00406601    ret
*}
end;

//00406604
procedure UnregisterModule(LibModule:PLibModule);
begin
{*
 00406604    push        ebp
 00406605    mov         ebp,esp
 00406607    push        ecx
 00406608    mov         dword ptr [ebp-4],eax
 0040660B    xor         edx,edx
 0040660D    push        ebp
 0040660E    push        406668
 00406613    push        dword ptr fs:[edx]
 00406616    mov         dword ptr fs:[edx],esp
 00406619    mov         eax,dword ptr [ebp-4]
 0040661C    mov         eax,dword ptr [eax+4]
 0040661F    call        NotifyModuleUnload
 00406624    xor         eax,eax
 00406626    pop         edx
 00406627    pop         ecx
 00406628    pop         ecx
 00406629    mov         dword ptr fs:[eax],edx
 0040662C    push        40666F
 00406631    mov         eax,dword ptr [ebp-4]
 00406634    cmp         eax,dword ptr ds:[53D03C]
>0040663A    jne         00406648
 0040663C    mov         eax,dword ptr [ebp-4]
 0040663F    mov         eax,dword ptr [eax]
 00406641    mov         [0053D03C],eax
>00406646    jmp         00406667
 00406648    mov         eax,[0053D03C]
 0040664D    test        eax,eax
>0040664F    je          00406667
 00406651    mov         edx,dword ptr [eax]
 00406653    cmp         edx,dword ptr [ebp-4]
>00406656    jne         00406661
 00406658    mov         edx,dword ptr [ebp-4]
 0040665B    mov         edx,dword ptr [edx]
 0040665D    mov         dword ptr [eax],edx
>0040665F    jmp         00406667
 00406661    mov         eax,dword ptr [eax]
 00406663    test        eax,eax
>00406665    jne         00406651
 00406667    ret
>00406668    jmp         @HandleFinally
>0040666D    jmp         00406631
 0040666F    pop         ecx
 00406670    pop         ebp
 00406671    ret
*}
end;

//00406674
function @IntfClear(var Dest:IInterface):Pointer;
begin
{*
 00406674    mov         edx,dword ptr [eax]
 00406676    test        edx,edx
>00406678    je          00406688
 0040667A    mov         dword ptr [eax],0
 00406680    push        eax
 00406681    push        edx
 00406682    mov         eax,dword ptr [edx]
 00406684    call        dword ptr [eax+8]
 00406687    pop         eax
 00406688    ret
*}
end;

//0040668C
procedure @IntfCopy(var Dest:IInterface; const Source:IInterface);
begin
{*
 0040668C    test        edx,edx
>0040668E    je          004066A9
 00406690    push        edx
 00406691    push        eax
 00406692    mov         eax,dword ptr [edx]
 00406694    push        edx
 00406695    call        dword ptr [eax+4]
 00406698    pop         eax
 00406699    mov         ecx,dword ptr [eax]
 0040669B    pop         dword ptr [eax]
 0040669D    test        ecx,ecx
>0040669F    jne         004066A2
 004066A1    ret
 004066A2    mov         eax,dword ptr [ecx]
 004066A4    push        ecx
 004066A5    call        dword ptr [eax+8]
 004066A8    ret
 004066A9    mov         ecx,dword ptr [eax]
 004066AB    test        ecx,ecx
 004066AD    mov         dword ptr [eax],edx
>004066AF    je          004066B7
 004066B1    mov         eax,dword ptr [ecx]
 004066B3    push        ecx
 004066B4    call        dword ptr [eax+8]
 004066B7    ret
*}
end;

//004066B8
procedure @IntfCast(var Dest:IInterface; const Source:IInterface; const IID:TGUID);
begin
{*
 004066B8    test        edx,edx
>004066BA    je          00406674
 004066C0    push        edi
 004066C1    mov         edi,eax
 004066C3    push        0
 004066C5    push        esp
 004066C6    push        ecx
 004066C7    push        edx
 004066C8    mov         eax,dword ptr [edx]
 004066CA    call        dword ptr [eax]
 004066CC    test        eax,eax
>004066CE    je          004066D7
 004066D0    mov         al,17
>004066D2    jmp         Error
 004066D7    mov         eax,dword ptr [edi]
 004066D9    test        eax,eax
>004066DB    je          004066E3
 004066DD    push        eax
 004066DE    mov         eax,dword ptr [eax]
 004066E0    call        dword ptr [eax+8]
 004066E3    pop         eax
 004066E4    mov         dword ptr [edi],eax
 004066E6    pop         edi
 004066E7    ret
*}
end;

//004066E8
procedure @IntfAddRef(const Dest:IInterface);
begin
{*
 004066E8    test        eax,eax
>004066EA    je          004066F2
 004066EC    push        eax
 004066ED    mov         eax,dword ptr [eax]
 004066EF    call        dword ptr [eax+4]
 004066F2    ret
*}
end;

//004066F4
procedure TInterfacedObject.AfterConstruction;
begin
{*
 004066F4    add         eax,4
 004066F7    push        eax
 004066F8    call        kernel32.InterlockedDecrement
 004066FD    ret
*}
end;

//00406700
procedure TInterfacedObject.BeforeDestruction;
begin
{*
 00406700    cmp         dword ptr [eax+4],0
>00406704    je          0040670D
 00406706    mov         al,2
 00406708    call        Error
 0040670D    ret
*}
end;

//00406710
function TInterfacedObject.NewInstance:TObject;
begin
{*
 00406710    call        TObject.NewInstance
 00406715    mov         dword ptr [eax+4],1
 0040671C    ret
*}
end;

//00406720
function TContainedObject.QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;
begin
{*
 00406720    push        ebp
 00406721    mov         ebp,esp
 00406723    push        ebx
 00406724    mov         ebx,dword ptr [ebp+8]
 00406727    mov         ecx,dword ptr [ebp+10]
 0040672A    mov         edx,dword ptr [ebp+0C]
 0040672D    mov         eax,ebx
 0040672F    call        TObject.GetInterface
 00406734    test        al,al
>00406736    je          0040673C
 00406738    xor         eax,eax
>0040673A    jmp         00406741
 0040673C    mov         eax,80004002
 00406741    pop         ebx
 00406742    pop         ebp
 00406743    ret         0C
*}
end;

//00406748
function TInterfacedObject._AddRef:Integer; stdcall;
begin
{*
 00406748    push        ebp
 00406749    mov         ebp,esp
 0040674B    mov         eax,dword ptr [ebp+8]
 0040674E    add         eax,4
 00406751    push        eax
 00406752    call        kernel32.InterlockedIncrement
 00406757    pop         ebp
 00406758    ret         4
*}
end;

//0040675C
function TInterfacedObject._Release:Integer; stdcall;
begin
{*
 0040675C    push        ebp
 0040675D    mov         ebp,esp
 0040675F    push        ebx
 00406760    push        esi
 00406761    mov         ebx,dword ptr [ebp+8]
 00406764    lea         eax,[ebx+4]
 00406767    push        eax
 00406768    call        kernel32.InterlockedDecrement
 0040676D    mov         esi,eax
 0040676F    test        esi,esi
>00406771    jne         0040677C
 00406773    mov         dl,1
 00406775    mov         eax,ebx
 00406777    mov         ecx,dword ptr [eax]
 00406779    call        dword ptr [ecx-4]
 0040677C    mov         eax,esi
 0040677E    pop         esi
 0040677F    pop         ebx
 00406780    pop         ebp
 00406781    ret         4
*}
end;

//00406784
function FreeMemory(P:Pointer):Integer; cdecl;
begin
{*
 00406784    push        ebp
 00406785    mov         ebp,esp
 00406787    mov         eax,dword ptr [ebp+8]
 0040678A    test        eax,eax
>0040678C    jne         00406792
 0040678E    xor         eax,eax
 00406790    pop         ebp
 00406791    ret
 00406792    call        dword ptr ds:[53D048]
 00406798    pop         ebp
 00406799    ret
*}
end;

//0040679C
function UnicodeToUtf8(Dest:PAnsiChar; MaxDestBytes:Cardinal; Source:PWideChar; SourceChars:Cardinal):Cardinal;
begin
{*
 0040679C    push        ebp
 0040679D    mov         ebp,esp
 0040679F    add         esp,0FFFFFFF8
 004067A2    push        ebx
 004067A3    push        esi
 004067A4    mov         dword ptr [ebp-8],ecx
 004067A7    mov         dword ptr [ebp-4],edx
 004067AA    xor         edx,edx
 004067AC    cmp         dword ptr [ebp-8],0
>004067B0    je          0040686E
 004067B6    xor         esi,esi
 004067B8    xor         ecx,ecx
 004067BA    test        eax,eax
>004067BC    je          00406849
>004067C2    jmp         00406830
 004067C4    mov         edx,dword ptr [ebp-8]
 004067C7    movzx       edx,word ptr [edx+ecx*2]
 004067CB    inc         ecx
 004067CC    cmp         edx,7F
>004067CF    ja          004067D7
 004067D1    mov         byte ptr [eax+esi],dl
 004067D4    inc         esi
>004067D5    jmp         00406830
 004067D7    cmp         edx,7FF
>004067DD    jbe         00406810
 004067DF    lea         ebx,[esi+3]
 004067E2    cmp         ebx,dword ptr [ebp-4]
>004067E5    ja          0040683A
 004067E7    mov         ebx,edx
 004067E9    shr         ebx,0C
 004067EC    or          bl,0E0
 004067EF    mov         byte ptr [eax+esi],bl
 004067F2    mov         ebx,edx
 004067F4    shr         ebx,6
 004067F7    and         bl,3F
 004067FA    or          bl,80
 004067FD    mov         byte ptr [eax+esi+1],bl
 00406801    and         dl,3F
 00406804    or          dl,80
 00406807    mov         byte ptr [eax+esi+2],dl
 0040680B    add         esi,3
>0040680E    jmp         00406830
 00406810    lea         ebx,[esi+2]
 00406813    cmp         ebx,dword ptr [ebp-4]
>00406816    ja          0040683A
 00406818    mov         ebx,edx
 0040681A    shr         ebx,6
 0040681D    or          bl,0C0
 00406820    mov         byte ptr [eax+esi],bl
 00406823    and         dl,3F
 00406826    or          dl,80
 00406829    mov         byte ptr [eax+esi+1],dl
 0040682D    add         esi,2
 00406830    cmp         ecx,dword ptr [ebp+8]
>00406833    jae         0040683A
 00406835    cmp         esi,dword ptr [ebp-4]
>00406838    jb          004067C4
 0040683A    cmp         esi,dword ptr [ebp-4]
>0040683D    jb          00406843
 0040683F    mov         esi,dword ptr [ebp-4]
 00406842    dec         esi
 00406843    mov         byte ptr [eax+esi],0
>00406847    jmp         0040686B
 00406849    cmp         ecx,dword ptr [ebp+8]
>0040684C    jae         0040686B
 0040684E    mov         eax,dword ptr [ebp-8]
 00406851    movzx       edx,word ptr [eax+ecx*2]
 00406855    inc         ecx
 00406856    cmp         edx,7F
>00406859    jbe         00406865
 0040685B    cmp         edx,7FF
>00406861    jbe         00406864
 00406863    inc         esi
 00406864    inc         esi
 00406865    inc         esi
 00406866    cmp         ecx,dword ptr [ebp+8]
>00406869    jb          0040684E
 0040686B    lea         edx,[esi+1]
 0040686E    mov         eax,edx
 00406870    pop         esi
 00406871    pop         ebx
 00406872    pop         ecx
 00406873    pop         ecx
 00406874    pop         ebp
 00406875    ret         4
*}
end;

//00406878
function Utf8ToUnicode(Dest:PWideChar; MaxDestChars:Cardinal; Source:PAnsiChar; SourceBytes:Cardinal):Cardinal;
begin
{*
 00406878    push        ebp
 00406879    mov         ebp,esp
 0040687B    add         esp,0FFFFFFF0
 0040687E    push        ebx
 0040687F    push        esi
 00406880    mov         dword ptr [ebp-0C],ecx
 00406883    mov         dword ptr [ebp-8],edx
 00406886    mov         dword ptr [ebp-4],eax
 00406889    cmp         dword ptr [ebp-0C],0
>0040688D    jne         00406899
 0040688F    xor         eax,eax
 00406891    mov         dword ptr [ebp-10],eax
>00406894    jmp         004069A2
 00406899    mov         dword ptr [ebp-10],0FFFFFFFF
 004068A0    xor         eax,eax
 004068A2    xor         esi,esi
 004068A4    cmp         dword ptr [ebp-4],0
>004068A8    je          00406957
>004068AE    jmp         00406935
 004068B3    mov         edx,dword ptr [ebp-0C]
 004068B6    xor         ecx,ecx
 004068B8    mov         cl,byte ptr [edx+esi]
 004068BB    inc         esi
 004068BC    test        cl,80
>004068BF    je          0040692D
 004068C1    cmp         esi,dword ptr [ebp+8]
>004068C4    jae         004069A2
 004068CA    and         ecx,3F
 004068CD    test        cl,20
>004068D0    je          00406900
 004068D2    mov         edx,dword ptr [ebp-0C]
 004068D5    mov         dl,byte ptr [edx+esi]
 004068D8    inc         esi
 004068D9    mov         ebx,edx
 004068DB    and         bl,0C0
 004068DE    cmp         bl,80
>004068E1    jne         004069A2
 004068E7    cmp         esi,dword ptr [ebp+8]
>004068EA    jae         004069A2
 004068F0    and         dl,3F
 004068F3    and         edx,0FF
 004068F9    shl         ecx,6
 004068FC    or          edx,ecx
 004068FE    mov         ecx,edx
 00406900    mov         edx,dword ptr [ebp-0C]
 00406903    mov         dl,byte ptr [edx+esi]
 00406906    inc         esi
 00406907    mov         ebx,edx
 00406909    and         bl,0C0
 0040690C    cmp         bl,80
>0040690F    jne         004069A2
 00406915    and         dl,3F
 00406918    and         edx,0FF
 0040691E    shl         ecx,6
 00406921    or          dx,cx
 00406924    mov         ecx,dword ptr [ebp-4]
 00406927    mov         word ptr [ecx+eax*2],dx
>0040692B    jmp         00406934
 0040692D    mov         edx,dword ptr [ebp-4]
 00406930    mov         word ptr [edx+eax*2],cx
 00406934    inc         eax
 00406935    cmp         esi,dword ptr [ebp+8]
>00406938    jae         00406943
 0040693A    cmp         eax,dword ptr [ebp-8]
>0040693D    jb          004068B3
 00406943    cmp         eax,dword ptr [ebp-8]
>00406946    jb          0040694C
 00406948    mov         eax,dword ptr [ebp-8]
 0040694B    dec         eax
 0040694C    mov         edx,dword ptr [ebp-4]
 0040694F    mov         word ptr [edx+eax*2],0
>00406955    jmp         0040699E
 00406957    cmp         esi,dword ptr [ebp+8]
>0040695A    jae         0040699E
 0040695C    mov         edx,dword ptr [ebp-0C]
 0040695F    mov         dl,byte ptr [edx+esi]
 00406962    inc         esi
 00406963    test        dl,80
>00406966    je          00406998
 00406968    cmp         esi,dword ptr [ebp+8]
>0040696B    jae         004069A2
 0040696D    and         dl,3F
 00406970    test        dl,20
>00406973    je          00406989
 00406975    mov         edx,dword ptr [ebp-0C]
 00406978    mov         dl,byte ptr [edx+esi]
 0040697B    inc         esi
 0040697C    and         dl,0C0
 0040697F    cmp         dl,80
>00406982    jne         004069A2
 00406984    cmp         esi,dword ptr [ebp+8]
>00406987    jae         004069A2
 00406989    mov         edx,dword ptr [ebp-0C]
 0040698C    mov         dl,byte ptr [edx+esi]
 0040698F    inc         esi
 00406990    and         dl,0C0
 00406993    cmp         dl,80
>00406996    jne         004069A2
 00406998    inc         eax
 00406999    cmp         esi,dword ptr [ebp+8]
>0040699C    jb          0040695C
 0040699E    inc         eax
 0040699F    mov         dword ptr [ebp-10],eax
 004069A2    mov         eax,dword ptr [ebp-10]
 004069A5    pop         esi
 004069A6    pop         ebx
 004069A7    mov         esp,ebp
 004069A9    pop         ebp
 004069AA    ret         4
*}
end;

//004069B0
function UTF8Encode(const WS:WideString):UTF8String;
begin
{*
 004069B0    push        ebp
 004069B1    mov         ebp,esp
 004069B3    push        0
 004069B5    push        ebx
 004069B6    push        esi
 004069B7    mov         esi,edx
 004069B9    mov         ebx,eax
 004069BB    xor         eax,eax
 004069BD    push        ebp
 004069BE    push        406A4F
 004069C3    push        dword ptr fs:[eax]
 004069C6    mov         dword ptr fs:[eax],esp
 004069C9    mov         eax,esi
 004069CB    call        @LStrClr
 004069D0    mov         eax,ebx
 004069D2    xor         edx,edx
 004069D4    call        @WStrCmp
>004069D9    je          00406A39
 004069DB    mov         eax,ebx
 004069DD    call        @WStrLen
 004069E2    lea         edx,[eax+eax*2]
 004069E5    lea         eax,[ebp-4]
 004069E8    call        @LStrSetLength
 004069ED    mov         eax,ebx
 004069EF    call        @WStrLen
 004069F4    push        eax
 004069F5    mov         eax,dword ptr [ebp-4]
 004069F8    call        @DynArrayLength
 004069FD    inc         eax
 004069FE    push        eax
 004069FF    mov         eax,ebx
 00406A01    call        @WStrToPWChar
 00406A06    push        eax
 00406A07    mov         eax,dword ptr [ebp-4]
 00406A0A    call        @LStrToPChar
 00406A0F    pop         ecx
 00406A10    pop         edx
 00406A11    call        UnicodeToUtf8
 00406A16    test        eax,eax
>00406A18    jle         00406A27
 00406A1A    mov         edx,eax
 00406A1C    dec         edx
 00406A1D    lea         eax,[ebp-4]
 00406A20    call        @LStrSetLength
>00406A25    jmp         00406A2F
 00406A27    lea         eax,[ebp-4]
 00406A2A    call        @LStrClr
 00406A2F    mov         eax,esi
 00406A31    mov         edx,dword ptr [ebp-4]
 00406A34    call        @LStrAsg
 00406A39    xor         eax,eax
 00406A3B    pop         edx
 00406A3C    pop         ecx
 00406A3D    pop         ecx
 00406A3E    mov         dword ptr fs:[eax],edx
 00406A41    push        406A56
 00406A46    lea         eax,[ebp-4]
 00406A49    call        @LStrClr
 00406A4E    ret
>00406A4F    jmp         @HandleFinally
>00406A54    jmp         00406A46
 00406A56    pop         esi
 00406A57    pop         ebx
 00406A58    pop         ecx
 00406A59    pop         ebp
 00406A5A    ret
*}
end;

//00406A5C
{*procedure sub_00406A5C(?:AnsiString; ?:?);
begin
 00406A5C    push        ebp
 00406A5D    mov         ebp,esp
 00406A5F    push        0
 00406A61    push        ebx
 00406A62    push        esi
 00406A63    mov         esi,edx
 00406A65    mov         ebx,eax
 00406A67    xor         eax,eax
 00406A69    push        ebp
 00406A6A    push        406AF3
 00406A6F    push        dword ptr fs:[eax]
 00406A72    mov         dword ptr fs:[eax],esp
 00406A75    mov         eax,esi
 00406A77    call        @WStrClr
 00406A7C    test        ebx,ebx
>00406A7E    je          00406ADD
 00406A80    mov         eax,ebx
 00406A82    call        @DynArrayLength
 00406A87    mov         edx,eax
 00406A89    lea         eax,[ebp-4]
 00406A8C    call        @WStrSetLength
 00406A91    mov         eax,ebx
 00406A93    call        @DynArrayLength
 00406A98    push        eax
 00406A99    mov         eax,dword ptr [ebp-4]
 00406A9C    call        @WStrLen
 00406AA1    inc         eax
 00406AA2    push        eax
 00406AA3    mov         eax,ebx
 00406AA5    call        @LStrToPChar
 00406AAA    push        eax
 00406AAB    mov         eax,dword ptr [ebp-4]
 00406AAE    call        @WStrToPWChar
 00406AB3    pop         ecx
 00406AB4    pop         edx
 00406AB5    call        Utf8ToUnicode
 00406ABA    test        eax,eax
>00406ABC    jle         00406ACB
 00406ABE    mov         edx,eax
 00406AC0    dec         edx
 00406AC1    lea         eax,[ebp-4]
 00406AC4    call        @WStrSetLength
>00406AC9    jmp         00406AD3
 00406ACB    lea         eax,[ebp-4]
 00406ACE    call        @WStrClr
 00406AD3    mov         eax,esi
 00406AD5    mov         edx,dword ptr [ebp-4]
 00406AD8    call        @WStrAsg
 00406ADD    xor         eax,eax
 00406ADF    pop         edx
 00406AE0    pop         ecx
 00406AE1    pop         ecx
 00406AE2    mov         dword ptr fs:[eax],edx
 00406AE5    push        406AFA
 00406AEA    lea         eax,[ebp-4]
 00406AED    call        @WStrClr
 00406AF2    ret
>00406AF3    jmp         @HandleFinally
>00406AF8    jmp         00406AEA
 00406AFA    pop         esi
 00406AFB    pop         ebx
 00406AFC    pop         ecx
 00406AFD    pop         ebp
 00406AFE    ret
end;*}

//00406B00
function AnsiToUtf8(const S:AnsiString):UTF8String;
begin
{*
 00406B00    push        ebp
 00406B01    mov         ebp,esp
 00406B03    push        0
 00406B05    push        ebx
 00406B06    push        esi
 00406B07    mov         esi,edx
 00406B09    mov         ebx,eax
 00406B0B    xor         eax,eax
 00406B0D    push        ebp
 00406B0E    push        406B43
 00406B13    push        dword ptr fs:[eax]
 00406B16    mov         dword ptr fs:[eax],esp
 00406B19    lea         eax,[ebp-4]
 00406B1C    mov         edx,ebx
 00406B1E    call        @WStrFromLStr
 00406B23    mov         eax,dword ptr [ebp-4]
 00406B26    mov         edx,esi
 00406B28    call        UTF8Encode
 00406B2D    xor         eax,eax
 00406B2F    pop         edx
 00406B30    pop         ecx
 00406B31    pop         ecx
 00406B32    mov         dword ptr fs:[eax],edx
 00406B35    push        406B4A
 00406B3A    lea         eax,[ebp-4]
 00406B3D    call        @WStrClr
 00406B42    ret
>00406B43    jmp         @HandleFinally
>00406B48    jmp         00406B3A
 00406B4A    pop         esi
 00406B4B    pop         ebx
 00406B4C    pop         ecx
 00406B4D    pop         ebp
 00406B4E    ret
*}
end;

//00406B50
function LoadResString(ResStringRec:PResStringRec):String;
begin
{*
 00406B50    push        ebx
 00406B51    push        esi
 00406B52    add         esp,0FFFFFC00
 00406B58    mov         esi,edx
 00406B5A    mov         ebx,eax
 00406B5C    test        ebx,ebx
>00406B5E    je          00406B9D
 00406B60    cmp         dword ptr [ebx+4],10000
>00406B67    jge         00406B93
 00406B69    push        400
 00406B6E    lea         eax,[esp+4]
 00406B72    push        eax
 00406B73    mov         eax,dword ptr [ebx+4]
 00406B76    push        eax
 00406B77    mov         eax,dword ptr [ebx]
 00406B79    mov         eax,dword ptr [eax]
 00406B7B    call        FindResourceHInstance
 00406B80    push        eax
 00406B81    call        user32.LoadStringA
 00406B86    mov         ecx,eax
 00406B88    mov         edx,esp
 00406B8A    mov         eax,esi
 00406B8C    call        @LStrFromPCharLen
>00406B91    jmp         00406B9D
 00406B93    mov         eax,esi
 00406B95    mov         edx,dword ptr [ebx+4]
 00406B98    call        @LStrFromPChar
 00406B9D    add         esp,400
 00406BA3    pop         esi
 00406BA4    pop         ebx
 00406BA5    ret
*}
end;

//00406BA8
function LCIDToCodePage(ALcid:Cardinal):Integer;
begin
{*
 00406BA8    push        ebp
 00406BA9    mov         ebp,esp
 00406BAB    add         esp,0FFFFFFF0
 00406BAE    push        ebx
 00406BAF    xor         edx,edx
 00406BB1    mov         dword ptr [ebp-10],edx
 00406BB4    xor         edx,edx
 00406BB6    push        ebp
 00406BB7    push        406C0E
 00406BBC    push        dword ptr fs:[edx]
 00406BBF    mov         dword ptr fs:[edx],esp
 00406BC2    push        7
 00406BC4    lea         edx,[ebp-0B]
 00406BC7    push        edx
 00406BC8    push        1004
 00406BCD    push        eax
 00406BCE    call        kernel32.GetLocaleInfoA
 00406BD3    lea         eax,[ebp-10]
 00406BD6    lea         edx,[ebp-0B]
 00406BD9    mov         ecx,7
 00406BDE    call        @LStrFromArray
 00406BE3    mov         eax,dword ptr [ebp-10]
 00406BE6    lea         edx,[ebp-4]
 00406BE9    call        @ValLong
 00406BEE    mov         ebx,eax
 00406BF0    cmp         dword ptr [ebp-4],0
>00406BF4    je          00406BF8
 00406BF6    xor         ebx,ebx
 00406BF8    xor         eax,eax
 00406BFA    pop         edx
 00406BFB    pop         ecx
 00406BFC    pop         ecx
 00406BFD    mov         dword ptr fs:[eax],edx
 00406C00    push        406C15
 00406C05    lea         eax,[ebp-10]
 00406C08    call        @LStrClr
 00406C0D    ret
>00406C0E    jmp         @HandleFinally
>00406C13    jmp         00406C05
 00406C15    mov         eax,ebx
 00406C17    pop         ebx
 00406C18    mov         esp,ebp
 00406C1A    pop         ebp
 00406C1B    ret
*}
end;

Initialization
//00406C70
{*
 00406C70    sub         dword ptr ds:[55C5B8],1
>00406C77    jae         00406D42
 00406C7D    mov         byte ptr ds:[53D00C],2
 00406C84    mov         dword ptr ds:[55C014],401254
 00406C8E    mov         dword ptr ds:[55C018],401264
 00406C98    mov         byte ptr ds:[55C04A],2
 00406C9F    mov         dword ptr ds:[55C000],40596C
 00406CA9    call        @isNECWindows
 00406CAE    test        al,al
>00406CB0    je          00406CB7
 00406CB2    call        @FpuMaskInit
 00406CB7    call        @FpuInit
 00406CBC    mov         word ptr ds:[55C050],0D7B0
 00406CC5    mov         word ptr ds:[55C21C],0D7B0
 00406CCE    mov         word ptr ds:[55C3E8],0D7B0
 00406CD7    call        kernel32.GetCommandLineA
 00406CDC    mov         [0055C03C],eax
 00406CE1    call        GetCmdShow
 00406CE6    mov         [0055C038],eax;gvar_0055C038
 00406CEB    call        kernel32.GetVersion
 00406CF0    and         eax,80000000
 00406CF5    cmp         eax,80000000
>00406CFA    je          00406D29
 00406CFC    call        kernel32.GetVersion
 00406D01    and         eax,0FF
 00406D06    cmp         ax,4
>00406D0A    jbe         00406D18
 00406D0C    mov         dword ptr ds:[55C5BC],3
>00406D16    jmp         00406D38
 00406D18    call        kernel32.GetThreadLocale
 00406D1D    call        LCIDToCodePage
 00406D22    mov         [0055C5BC],eax
>00406D27    jmp         00406D38
 00406D29    call        kernel32.GetThreadLocale
 00406D2E    call        LCIDToCodePage
 00406D33    mov         [0055C5BC],eax
 00406D38    call        kernel32.GetCurrentThreadId
 00406D3D    mov         [0055C030],eax;gvar_0055B718
 00406D42    ret
*}
Finalization
//00406C1C
{*
 00406C1C    push        ebp
 00406C1D    mov         ebp,esp
 00406C1F    xor         eax,eax
 00406C21    push        ebp
 00406C22    push        406C66
 00406C27    push        dword ptr fs:[eax]
 00406C2A    mov         dword ptr fs:[eax],esp
 00406C2D    inc         dword ptr ds:[55C5B8]
>00406C33    jne         00406C58
 00406C35    mov         eax,55C04C
 00406C3A    call        @Close
 00406C3F    mov         eax,55C218;gvar_0055C218:TTextRec
 00406C44    call        @Close
 00406C49    mov         eax,55C3E4
 00406C4E    call        @Close
 00406C53    call        UninitAllocator
 00406C58    xor         eax,eax
 00406C5A    pop         edx
 00406C5B    pop         ecx
 00406C5C    pop         ecx
 00406C5D    mov         dword ptr fs:[eax],edx
 00406C60    push        406C6D
 00406C65    ret
>00406C66    jmp         @HandleFinally
>00406C6B    jmp         00406C65
 00406C6D    pop         ebp
 00406C6E    ret
*}
end.