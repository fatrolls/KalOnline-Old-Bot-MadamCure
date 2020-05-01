//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit variants;

interface

uses
  SysUtils, Classes;

type
  TCustomVariantType = class(TObject)
  public
    .FVarType:TVarType;//f4
    destructor Destroy; virtual;//00473D48
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; virtual; stdcall;//v0//00473E4C
    function LeftPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean; virtual;//v4//00473DD8
    function RightPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean; virtual;//v8//00473E0C
    function OlePromotion(const V:TVarData; var RequiredVarType:TVarType):Boolean; virtual;//vC//00473DEC
    procedure DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer); virtual;//v10//00473E28
    //function v14:?; virtual;//v14//00473DD4
    procedure Cast(var Dest:TVarData; const Source:TVarData); virtual;//v18//00473C48
    procedure CastTo(var Dest:TVarData; const Source:TVarData; const AVarType:TVarType); virtual;//v1C//00473C80
    procedure CastToOle(var Dest:TVarData; const Source:TVarData); virtual;//v20//00473D0C
    procedure v24; virtual; abstract;//v24//00402C24
    procedure v28; virtual; abstract;//v28//00402C24
    procedure BinaryOp(var Left:TVarData; const Right:TVarData; const Operator:TVarOp); virtual;//v2C//00473C3C
    procedure v30; virtual;//v30//00473E20
    function CompareOp(const Left:TVarData; const Right:TVarData; const Operator:TVarOp):Boolean; virtual;//v34//00473CD4
    procedure Compare(const Left:TVarData; const Right:TVarData; var Relationship:TVarCompareResult); virtual;//v38//00473CC8
    function _AddRef:Integer; stdcall;//00473E34
    function _Release:Integer; stdcall;//00473E40
  end;
  EVariantInvalidOpError = class(EVariantError)
  end;
  EVariantTypeCastError = class(EVariantError)
  end;
  EVariantOverflowError = class(EVariantError)
  end;
  EVariantInvalidArgError = class(EVariantError)
  end;
  EVariantBadVarTypeError = class(EVariantError)
  end;
  EVariantBadIndexError = class(EVariantError)
  end;
  EVariantArrayLockedError = class(EVariantError)
  end;
  EVariantArrayCreateError = class(EVariantError)
  end;
  EVariantNotImplError = class(EVariantError)
  end;
  EVariantOutOfMemoryError = class(EVariantError)
  end;
  EVariantUnexpectedError = class(EVariantError)
  end;
  EVariantDispatchError = class(EVariantError)
  end;
  EVariantInvalidNullOpError = class(EVariantInvalidOpError)
  end;
  _DynArr_34_02 = array of ?;
//elSize = 4;
    procedure VarCastError;//0046E0D4
    procedure VarCastError(const ASourceType:TVarType; const ADestType:TVarType);//0046E128
    procedure VarInvalidOp;//0046E1C4
    procedure VarInvalidNullOp;//0046E218
    procedure VarOverflowError(const ASourceType:TVarType; const ADestType:TVarType);//0046E26C
    procedure VarArrayCreateError;//0046E308
    procedure TranslateResult(AResult:HRESULT);//0046E35C
    procedure VarResultCheck(AResult:HRESULT);//0046E5B0
    procedure VarResultCheck(AResult:HRESULT; ASourceType:TVarType; ADestType:TVarType);//0046E5BC
    procedure HandleConversionException(const ASourceType:TVarType; const ADestType:TVarType);//0046E5F0
    procedure @DispInvokeError;//0046E674
    procedure @VarNull(var V:TVarData);//0046E6C8
    function InBounds(At:Integer):Boolean;//0046E6DC
    function Increment(At:Integer):Boolean;//0046E70C
    procedure VarArrayClear(var V:TVarData);//0046E768
    procedure VarClearDeep(var V:TVarData);//0046E8E4
    procedure @VarClear(var V:TVarData);//0046E960
    procedure @VarClr(var V:TVarData);//0046E974
    function InBounds(At:Integer):Boolean;//0046E97C
    function Increment(At:Integer):Boolean;//0046E9AC
    procedure VarArrayCopyForEach(var Dest:TVarData; const Src:TVarData; AProc:TVarArrayForEach);//0046EA08
    procedure VarCopyCopyProc(var Dest:TVarData; const Src:TVarData);//0046EBD4
    procedure VarCopyDeep(var Dest:TVarData; const Source:TVarData);//0046EBDC
    procedure @VarCopy(var Dest:TVarData; const Source:TVarData);//0046EC88
    procedure VarCastAsAny(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);//0046ECCC
    procedure VarCastAsOleStr(var Dest:TVarData; const Source:TVarData);//0046ED38
    procedure VarCastAsString(var Dest:TVarData; const Source:TVarData);//0046ED84
    procedure VarCastAsDispatch(var Dest:TVarData; const Source:TVarData);//0046EDD0
    procedure VarCastAsInterface(var Dest:TVarData; const Source:TVarData);//0046EE1C
    procedure VarCastViaOS(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);//0046EE68
    procedure VarCastRare(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);//0046EEE8
    procedure @VarCast(var Dest:TVarData; const Source:TVarData; AVarType:Integer);//0046EF54
    function VarToIntAsString(const V:TVarData):Integer;//0046F180
    function VarToIntViaOS(const V:TVarData):Integer;//0046F234
    function VarToIntAny(const V:TVarData):Integer;//0046F270
    function VarToIntCustom(const V:TVarData; var AValue:Integer):Boolean;//0046F2D4
    function @VarToInteger(const V:TVarData):Integer;//0046F318
    function @VarToShortInt(const V:TVarData):Shortint;//0046F768
    function @VarToByte(const V:TVarData):Byte;//0046F818
    function @VarToSmallInt(const V:TVarData):Smallint;//0046F8C0
    function @VarToWord(const V:TVarData):Word;//0046F9B8
    function @VarToLongWord(const V:TVarData):LongWord;//0046FA90
    function VarToInt64ViaOS(const V:TVarData):Int64;//0046FB78
    function VarToInt64AsString(const V:TVarData):Int64;//0046FC24
    function VarToInt64Any(const V:TVarData):Int64;//0046FD24
    function VarToInt64Custom(const V:TVarData; var AValue:Int64):Boolean;//0046FD90
    function @VarToInt64(const V:TVarData):Int64;//0046FDDC
    function VarToBoolAsString(const V:TVarData):Boolean;//00470220
    function VarToBoolViaOS(const V:TVarData):Boolean;//004702E8
    function VarToBoolAny(const V:TVarData):Boolean;//00470328
    function VarToBoolCustom(const V:TVarData; var AValue:Boolean):Boolean;//0047038C
    function @VarToBoolean(const V:TVarData):Boolean;//004703D8
    function @VarToBool(const V:TVarData):LongBool;//00470720
    function VarToDoubleAsString(const V:TVarData):Double;//0047072C
    function VarToDoubleViaOS(const V:TVarData):Double;//004707F0
    function VarToDateAny(const V:TVarData):TDateTime;//0047083C
    function VarToDoubleCustom(const V:TVarData; var AValue:Double):Boolean;//004708A0
    //function sub_004708EC(?:?):?;//004708EC
    function @VarToReal(const V:TVarData):Extended;//00470C68
    function @VarToSingle(const V:TVarData):Single;//00470C84
    function VarToDateAsString(const V:TVarData):TDateTime;//00470E14
    function VarToDateAsDouble(const V:TVarData; const Value:Double):TDateTime;//00470F00
    function VarToDateViaOS(const V:TVarData):TDateTime;//00470F60
    function VarToDoubleAny(const V:TVarData):Double;//00470FAC
    function VarToDateCustom(const V:TVarData; var AValue:TDateTime):Boolean;//00471010
    //function sub_0047105C(?:?):?;//0047105C
    function VarToCurrencyAsString(const V:TVarData):Currency;//004713AC
    function VarToCurrencyAsDouble(const V:TVarData; const Value:Double):Currency;//00471468
    function VarToCurrencyViaOS(const V:TVarData):Currency;//004714C8
    function VarToCurrencyAny(const V:TVarData):Currency;//00471514
    function VarToCurrencyCustom(const V:TVarData; var AValue:Currency):Boolean;//00471578
    function @VarToCurrency(const V:TVarData):Currency;//004715C4
    function CurrToWStrViaOS(const AValue:Currency):WideString;//00471990
    function DateToWStrViaOS(const AValue:TDateTime):WideString;//004719C8
    function BoolToWStrViaOS(const AValue:WordBool):WideString;//00471A00
    function VarToLStrViaOS(const V:TVarData):AnsiString;//00471AC4
    function VarToLStrAny(const V:TVarData):AnsiString;//00471B90
    function VarToLStrCustom(const V:TVarData; var AValue:AnsiString):Boolean;//00471BF4
    procedure @VarToLStr(var S:AnsiString; const V:TVarData);//00471C78
    function VarToWStrViaOS(const V:TVarData):WideString;//004721BC
    function VarToWStrAny(const V:TVarData):WideString;//00472274
    function VarToWStrCustom(const V:TVarData; var AValue:WideString):Boolean;//004722D8
    procedure @VarToWStr(var S:WideString; const V:TVarData);//004723A0
    procedure AnyToIntf(var Intf:IInterface; const V:TVarData);//00472900
    procedure @VarToIntf(var Intf:IInterface; const V:TVarData);//00472978
    procedure @VarToDisp(var Dispatch:IDispatch; const V:TVarData);//00472A44
    procedure @VarFromInt(var V:TVarData; const Value:Integer; const Range:Shortint);//00472AF0
    procedure @OleVarFromInt(var V:TVarData; const Value:Integer; const Range:Shortint);//00472B2C
    procedure @VarFromByte(var V:TVarData; const Value:Byte);//00472B4C
    procedure @VarFromWord(var V:TVarData; const Value:Word);//00472B6C
    procedure @VarFromLongWord(var V:TVarData; const Value:LongWord);//00472B8C
    procedure @VarFromShortInt(var V:TVarData; const Value:Shortint);//00472BAC
    procedure @VarFromSmallInt(var V:TVarData; const Value:Smallint);//00472BCC
    procedure @VarFromInt64(var V:TVarData; const Value:Int64);//00472BEC
    procedure @VarFromSingle(var Dest:TVarData; const Value:Single);//00472C18
    procedure @VarFromDouble(var Dest:TVarData; const Value:Double);//00472C3C
    procedure @VarFromCurrency(var Dest:TVarData; const Value:Currency);//00472C68
    procedure @VarFromDate(var Dest:TVarData; const Value:TDateTime);//00472C94
    procedure @VarFromBool(var V:TVarData; const Value:Boolean);//00472CC0
    procedure @VarFromReal(var v:Variant);//00472CE8
    procedure @VarFromTDateTime(var v:Variant);//00472CFC
    procedure @VarFromCurr(var v:Variant);//00472D10
    procedure @VarFromLStr(var V:TVarData; const Value:AnsiString);//00472D24
    procedure @VarFromWStr(var V:TVarData; const Value:WideString);//00472D50
    procedure @VarFromIntf(var V:TVarData; const Value:IInterface);//00472D88
    procedure @VarFromDisp(var V:TVarData; const Value:IDispatch);//00472DB4
    function CheckType(T:TVarType):TVarType;//00472DE0
    function VarCompareAny(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;//00472E04
    function EmptyCompare(L:TBaseType; R:TBaseType):TVarCompareResult;//00472ED8
    function NullCompare(L:TBaseType; R:TBaseType; OpCode:TVarOp):TVarCompareResult;//00472EEC
    function IntCompare(A:Integer; B:Integer):TVarCompareResult;//00472FD4
    function Int64Compare(const A:Int64; const B:Int64):TVarCompareResult;//00472FE8
    function DateCompare(const A:TDateTime; const B:TDateTime):TVarCompareResult;//00473024
    function RealCompare(const A:Double; const B:Double):TVarCompareResult;//0047304C
    function CurrCompare(const A:Currency; const B:Currency):TVarCompareResult;//00473074
    function StringCompare(const L:TVarData; const R:TVarData):TVarCompareResult;//004730A0
    //function sub_0047310C(?:?; ?:?; ?:?):?;//0047310C
    function VarCompareRare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;//00473298
    function VarCompare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;//004736B8
    function VarTypeAsText(const AType:TVarType):AnsiString;//004738A4
    //function sub_00473A14(?:?):?;//00473A14
    function FindVarData(const V:Variant):PVarData;//00473A18
    function VarIsClear(const V:Variant):Boolean;//00473A28
    function VarSameValue(const A:Variant; const B:Variant):Boolean;//00473A9C
    procedure SetVarAsError(var V:TVarData; AResult:HRESULT);//00473B14
    procedure SetClearVarToEmptyParam(var V:TVarData);//00473B2C
    function GetVarDataArrayInfo(const AVarData:TVarData; var AVarType:TVarType; var AVarArray:PVarArray):Boolean;//00473B38
    function VarIsArray(const A:Variant):Boolean;//00473B7C
    function VarIsArray(const A:Variant; AResolveByRef:Boolean):Boolean;//00473B84
    procedure sub_00473BD0;//00473BD0
    procedure BinaryOp(var Left:TVarData; const Right:TVarData; const Operator:TVarOp);//00473C3C
    procedure Cast(var Dest:TVarData; const Source:TVarData);//00473C48
    procedure CastTo(var Dest:TVarData; const Source:TVarData; const AVarType:TVarType);//00473C80
    procedure Compare(const Left:TVarData; const Right:TVarData; var Relationship:TVarCompareResult);//00473CC8
    function CompareOp(const Left:TVarData; const Right:TVarData; const Operator:TVarOp):Boolean;//00473CD4
    procedure CastToOle(var Dest:TVarData; const Source:TVarData);//00473D0C
    destructor Destroy;//00473D48
    //function sub_00473DD4:?;//00473DD4
    function LeftPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;//00473DD8
    function OlePromotion(const V:TVarData; var RequiredVarType:TVarType):Boolean;//00473DEC
    procedure sub_00473DF4;//00473DF4
    procedure sub_00473DFC;//00473DFC
    procedure sub_00473E04;//00473E04
    function RightPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;//00473E0C
    procedure sub_00473E20;//00473E20
    procedure DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer);//00473E28
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;//00473E4C
    function FindCustomVariantType(const AVarType:TVarType; var CustomVariantType:TCustomVariantType):Boolean;//00473E74
    function FindCustomVariantType(const TypeName:AnsiString; var CustomVariantType:TCustomVariantType):Boolean;//00473F2C
    procedure sub_00474014;//00474014
    procedure @VarCmpEQ(const Left:TVarData; const Right:TVarData);//0047401C

implementation

//0046E0D4
procedure VarCastError;
begin
{*
 0046E0D4    push        ebp
 0046E0D5    mov         ebp,esp
 0046E0D7    push        0
 0046E0D9    xor         eax,eax
 0046E0DB    push        ebp
 0046E0DC    push        46E11E
 0046E0E1    push        dword ptr fs:[eax]
 0046E0E4    mov         dword ptr fs:[eax],esp
 0046E0E7    lea         edx,[ebp-4]
 0046E0EA    mov         eax,[0055B418];^SInvalidVarCast:TResStringRec
 0046E0EF    call        LoadResString
 0046E0F4    mov         ecx,dword ptr [ebp-4]
 0046E0F7    mov         dl,1
 0046E0F9    mov         eax,[0046DC14];EVariantTypeCastError
 0046E0FE    call        Exception.Create
 0046E103    call        @RaiseExcept
 0046E108    xor         eax,eax
 0046E10A    pop         edx
 0046E10B    pop         ecx
 0046E10C    pop         ecx
 0046E10D    mov         dword ptr fs:[eax],edx
 0046E110    push        46E125
 0046E115    lea         eax,[ebp-4]
 0046E118    call        @LStrClr
 0046E11D    ret
>0046E11E    jmp         @HandleFinally
>0046E123    jmp         0046E115
 0046E125    pop         ecx
 0046E126    pop         ebp
 0046E127    ret
*}
end;

//0046E128
procedure VarCastError(const ASourceType:TVarType; const ADestType:TVarType);
begin
{*
 0046E128    push        ebp
 0046E129    mov         ebp,esp
 0046E12B    add         esp,0FFFFFFE4
 0046E12E    push        ebx
 0046E12F    push        esi
 0046E130    xor         ecx,ecx
 0046E132    mov         dword ptr [ebp-14],ecx
 0046E135    mov         dword ptr [ebp-18],ecx
 0046E138    mov         dword ptr [ebp-1C],ecx
 0046E13B    mov         esi,edx
 0046E13D    mov         ebx,eax
 0046E13F    xor         eax,eax
 0046E141    push        ebp
 0046E142    push        46E1B7
 0046E147    push        dword ptr fs:[eax]
 0046E14A    mov         dword ptr fs:[eax],esp
 0046E14D    lea         edx,[ebp-14]
 0046E150    mov         eax,ebx
 0046E152    call        VarTypeAsText
 0046E157    mov         eax,dword ptr [ebp-14]
 0046E15A    mov         dword ptr [ebp-10],eax
 0046E15D    mov         byte ptr [ebp-0C],0B
 0046E161    lea         edx,[ebp-18]
 0046E164    mov         eax,esi
 0046E166    call        VarTypeAsText
 0046E16B    mov         eax,dword ptr [ebp-18]
 0046E16E    mov         dword ptr [ebp-8],eax
 0046E171    mov         byte ptr [ebp-4],0B
 0046E175    lea         eax,[ebp-10]
 0046E178    push        eax
 0046E179    push        1
 0046E17B    lea         edx,[ebp-1C]
 0046E17E    mov         eax,[0055B0BC];^SVarTypeCouldNotConvert:TResStringRec
 0046E183    call        LoadResString
 0046E188    mov         ecx,dword ptr [ebp-1C]
 0046E18B    mov         dl,1
 0046E18D    mov         eax,[0046DC14];EVariantTypeCastError
 0046E192    call        Exception.CreateFmt
 0046E197    call        @RaiseExcept
 0046E19C    xor         eax,eax
 0046E19E    pop         edx
 0046E19F    pop         ecx
 0046E1A0    pop         ecx
 0046E1A1    mov         dword ptr fs:[eax],edx
 0046E1A4    push        46E1BE
 0046E1A9    lea         eax,[ebp-1C]
 0046E1AC    mov         edx,3
 0046E1B1    call        @LStrArrayClr
 0046E1B6    ret
>0046E1B7    jmp         @HandleFinally
>0046E1BC    jmp         0046E1A9
 0046E1BE    pop         esi
 0046E1BF    pop         ebx
 0046E1C0    mov         esp,ebp
 0046E1C2    pop         ebp
 0046E1C3    ret
*}
end;

//0046E1C4
procedure VarInvalidOp;
begin
{*
 0046E1C4    push        ebp
 0046E1C5    mov         ebp,esp
 0046E1C7    push        0
 0046E1C9    xor         eax,eax
 0046E1CB    push        ebp
 0046E1CC    push        46E20E
 0046E1D1    push        dword ptr fs:[eax]
 0046E1D4    mov         dword ptr fs:[eax],esp
 0046E1D7    lea         edx,[ebp-4]
 0046E1DA    mov         eax,[0055B3A0];^SInvalidVarOp:TResStringRec
 0046E1DF    call        LoadResString
 0046E1E4    mov         ecx,dword ptr [ebp-4]
 0046E1E7    mov         dl,1
 0046E1E9    mov         eax,[0046DBB0];EVariantInvalidOpError
 0046E1EE    call        Exception.Create
 0046E1F3    call        @RaiseExcept
 0046E1F8    xor         eax,eax
 0046E1FA    pop         edx
 0046E1FB    pop         ecx
 0046E1FC    pop         ecx
 0046E1FD    mov         dword ptr fs:[eax],edx
 0046E200    push        46E215
 0046E205    lea         eax,[ebp-4]
 0046E208    call        @LStrClr
 0046E20D    ret
>0046E20E    jmp         @HandleFinally
>0046E213    jmp         0046E205
 0046E215    pop         ecx
 0046E216    pop         ebp
 0046E217    ret
*}
end;

//0046E218
procedure VarInvalidNullOp;
begin
{*
 0046E218    push        ebp
 0046E219    mov         ebp,esp
 0046E21B    push        0
 0046E21D    xor         eax,eax
 0046E21F    push        ebp
 0046E220    push        46E262
 0046E225    push        dword ptr fs:[eax]
 0046E228    mov         dword ptr fs:[eax],esp
 0046E22B    lea         edx,[ebp-4]
 0046E22E    mov         eax,[0055B420];^SInvalidVarNullOp:TResStringRec
 0046E233    call        LoadResString
 0046E238    mov         ecx,dword ptr [ebp-4]
 0046E23B    mov         dl,1
 0046E23D    mov         eax,[0046E06C];EVariantInvalidNullOpError
 0046E242    call        Exception.Create
 0046E247    call        @RaiseExcept
 0046E24C    xor         eax,eax
 0046E24E    pop         edx
 0046E24F    pop         ecx
 0046E250    pop         ecx
 0046E251    mov         dword ptr fs:[eax],edx
 0046E254    push        46E269
 0046E259    lea         eax,[ebp-4]
 0046E25C    call        @LStrClr
 0046E261    ret
>0046E262    jmp         @HandleFinally
>0046E267    jmp         0046E259
 0046E269    pop         ecx
 0046E26A    pop         ebp
 0046E26B    ret
*}
end;

//0046E26C
procedure VarOverflowError(const ASourceType:TVarType; const ADestType:TVarType);
begin
{*
 0046E26C    push        ebp
 0046E26D    mov         ebp,esp
 0046E26F    add         esp,0FFFFFFE4
 0046E272    push        ebx
 0046E273    push        esi
 0046E274    xor         ecx,ecx
 0046E276    mov         dword ptr [ebp-14],ecx
 0046E279    mov         dword ptr [ebp-18],ecx
 0046E27C    mov         dword ptr [ebp-1C],ecx
 0046E27F    mov         esi,edx
 0046E281    mov         ebx,eax
 0046E283    xor         eax,eax
 0046E285    push        ebp
 0046E286    push        46E2FB
 0046E28B    push        dword ptr fs:[eax]
 0046E28E    mov         dword ptr fs:[eax],esp
 0046E291    lea         edx,[ebp-14]
 0046E294    mov         eax,ebx
 0046E296    call        VarTypeAsText
 0046E29B    mov         eax,dword ptr [ebp-14]
 0046E29E    mov         dword ptr [ebp-10],eax
 0046E2A1    mov         byte ptr [ebp-0C],0B
 0046E2A5    lea         edx,[ebp-18]
 0046E2A8    mov         eax,esi
 0046E2AA    call        VarTypeAsText
 0046E2AF    mov         eax,dword ptr [ebp-18]
 0046E2B2    mov         dword ptr [ebp-8],eax
 0046E2B5    mov         byte ptr [ebp-4],0B
 0046E2B9    lea         eax,[ebp-10]
 0046E2BC    push        eax
 0046E2BD    push        1
 0046E2BF    lea         edx,[ebp-1C]
 0046E2C2    mov         eax,[0055B4BC];^SVarTypeConvertOverflow:TResStringRec
 0046E2C7    call        LoadResString
 0046E2CC    mov         ecx,dword ptr [ebp-1C]
 0046E2CF    mov         dl,1
 0046E2D1    mov         eax,[0046DC78];EVariantOverflowError
 0046E2D6    call        Exception.CreateFmt
 0046E2DB    call        @RaiseExcept
 0046E2E0    xor         eax,eax
 0046E2E2    pop         edx
 0046E2E3    pop         ecx
 0046E2E4    pop         ecx
 0046E2E5    mov         dword ptr fs:[eax],edx
 0046E2E8    push        46E302
 0046E2ED    lea         eax,[ebp-1C]
 0046E2F0    mov         edx,3
 0046E2F5    call        @LStrArrayClr
 0046E2FA    ret
>0046E2FB    jmp         @HandleFinally
>0046E300    jmp         0046E2ED
 0046E302    pop         esi
 0046E303    pop         ebx
 0046E304    mov         esp,ebp
 0046E306    pop         ebp
 0046E307    ret
*}
end;

//0046E308
procedure VarArrayCreateError;
begin
{*
 0046E308    push        ebp
 0046E309    mov         ebp,esp
 0046E30B    push        0
 0046E30D    xor         eax,eax
 0046E30F    push        ebp
 0046E310    push        46E352
 0046E315    push        dword ptr fs:[eax]
 0046E318    mov         dword ptr fs:[eax],esp
 0046E31B    lea         edx,[ebp-4]
 0046E31E    mov         eax,[0055B330];^SVarArrayCreate:TResStringRec
 0046E323    call        LoadResString
 0046E328    mov         ecx,dword ptr [ebp-4]
 0046E32B    mov         dl,1
 0046E32D    mov         eax,[0046DE70];EVariantArrayCreateError
 0046E332    call        Exception.Create
 0046E337    call        @RaiseExcept
 0046E33C    xor         eax,eax
 0046E33E    pop         edx
 0046E33F    pop         ecx
 0046E340    pop         ecx
 0046E341    mov         dword ptr fs:[eax],edx
 0046E344    push        46E359
 0046E349    lea         eax,[ebp-4]
 0046E34C    call        @LStrClr
 0046E351    ret
>0046E352    jmp         @HandleFinally
>0046E357    jmp         0046E349
 0046E359    pop         ecx
 0046E35A    pop         ebp
 0046E35B    ret
*}
end;

//0046E35C
procedure TranslateResult(AResult:HRESULT);
begin
{*
 0046E35C    push        ebp
 0046E35D    mov         ebp,esp
 0046E35F    mov         ecx,8
 0046E364    push        0
 0046E366    push        0
 0046E368    dec         ecx
>0046E369    jne         0046E364
 0046E36B    push        ebx
 0046E36C    mov         ebx,eax
 0046E36E    xor         eax,eax
 0046E370    push        ebp
 0046E371    push        46E5A1
 0046E376    push        dword ptr fs:[eax]
 0046E379    mov         dword ptr fs:[eax],esp
 0046E37C    mov         eax,ebx
 0046E37E    cmp         eax,8002000A
>0046E383    jg          0046E3BE
>0046E385    je          0046E425
 0046E38B    cmp         eax,80020005
>0046E390    jg          0046E3AF
>0046E392    je          0046E3EB
 0046E394    sub         eax,80004001
>0046E399    je          0046E497
 0046E39F    sub         eax,0BFFE
>0046E3A4    je          0046E506
>0046E3AA    jmp         0046E529
 0046E3AF    sub         eax,80020008
>0046E3B4    je          0046E3F5
 0046E3B6    dec         eax
>0046E3B7    je          0046E41B
>0046E3B9    jmp         0046E529
 0046E3BE    sub         eax,8002000B
>0046E3C3    je          0046E44B
 0046E3C9    sub         eax,2
>0046E3CC    je          0046E471
 0046E3D2    sub         eax,50001
>0046E3D7    je          0046E4BD
 0046E3DD    sub         eax,49
>0046E3E0    je          0046E4E3
>0046E3E6    jmp         0046E529
 0046E3EB    call        VarCastError
>0046E3F0    jmp         0046E579
 0046E3F5    lea         edx,[ebp-4]
 0046E3F8    mov         eax,[0055B644];^SVarBadType:TResStringRec
 0046E3FD    call        LoadResString
 0046E402    mov         ecx,dword ptr [ebp-4]
 0046E405    mov         dl,1
 0046E407    mov         eax,[0046DD40];EVariantBadVarTypeError
 0046E40C    call        Exception.Create
 0046E411    call        @RaiseExcept
>0046E416    jmp         0046E579
 0046E41B    call        VarInvalidOp
>0046E420    jmp         0046E579
 0046E425    lea         edx,[ebp-8]
 0046E428    mov         eax,[0055B174];^SVarOverflow:TResStringRec
 0046E42D    call        LoadResString
 0046E432    mov         ecx,dword ptr [ebp-8]
 0046E435    mov         dl,1
 0046E437    mov         eax,[0046DC78];EVariantOverflowError
 0046E43C    call        Exception.Create
 0046E441    call        @RaiseExcept
>0046E446    jmp         0046E579
 0046E44B    lea         edx,[ebp-0C]
 0046E44E    mov         eax,[0055B57C];^SVarArrayBounds:TResStringRec
 0046E453    call        LoadResString
 0046E458    mov         ecx,dword ptr [ebp-0C]
 0046E45B    mov         dl,1
 0046E45D    mov         eax,[0046DDA4];EVariantBadIndexError
 0046E462    call        Exception.Create
 0046E467    call        @RaiseExcept
>0046E46C    jmp         0046E579
 0046E471    lea         edx,[ebp-10]
 0046E474    mov         eax,[0055B6E8];^SVarArrayLocked:TResStringRec
 0046E479    call        LoadResString
 0046E47E    mov         ecx,dword ptr [ebp-10]
 0046E481    mov         dl,1
 0046E483    mov         eax,[0046DE08];EVariantArrayLockedError
 0046E488    call        Exception.Create
 0046E48D    call        @RaiseExcept
>0046E492    jmp         0046E579
 0046E497    lea         edx,[ebp-14]
 0046E49A    mov         eax,[0055B448];^SVarNotImplemented:TResStringRec
 0046E49F    call        LoadResString
 0046E4A4    mov         ecx,dword ptr [ebp-14]
 0046E4A7    mov         dl,1
 0046E4A9    mov         eax,[0046DED8];EVariantNotImplError
 0046E4AE    call        Exception.Create
 0046E4B3    call        @RaiseExcept
>0046E4B8    jmp         0046E579
 0046E4BD    lea         edx,[ebp-18]
 0046E4C0    mov         eax,[0055B200];^SOutOfMemory:TResStringRec
 0046E4C5    call        LoadResString
 0046E4CA    mov         ecx,dword ptr [ebp-18]
 0046E4CD    mov         dl,1
 0046E4CF    mov         eax,[0046DF3C];EVariantOutOfMemoryError
 0046E4D4    call        Exception.Create
 0046E4D9    call        @RaiseExcept
>0046E4DE    jmp         0046E579
 0046E4E3    lea         edx,[ebp-1C]
 0046E4E6    mov         eax,[0055B22C];^SVarInvalid:TResStringRec
 0046E4EB    call        LoadResString
 0046E4F0    mov         ecx,dword ptr [ebp-1C]
 0046E4F3    mov         dl,1
 0046E4F5    mov         eax,[0046DCDC];EVariantInvalidArgError
 0046E4FA    call        Exception.Create
 0046E4FF    call        @RaiseExcept
>0046E504    jmp         0046E579
 0046E506    lea         edx,[ebp-20]
 0046E509    mov         eax,[0055B170];^SVarUnexpected:TResStringRec
 0046E50E    call        LoadResString
 0046E513    mov         ecx,dword ptr [ebp-20]
 0046E516    mov         dl,1
 0046E518    mov         eax,[0046DFA4];EVariantUnexpectedError
 0046E51D    call        Exception.Create
 0046E522    call        @RaiseExcept
>0046E527    jmp         0046E579
 0046E529    mov         eax,[0055B65C];^gvar_0054099C
 0046E52E    mov         eax,dword ptr [eax]
 0046E530    mov         dword ptr [ebp-38],eax
 0046E533    mov         byte ptr [ebp-34],0B
 0046E537    mov         dword ptr [ebp-30],ebx
 0046E53A    mov         byte ptr [ebp-2C],0
 0046E53E    lea         edx,[ebp-3C]
 0046E541    mov         eax,ebx
 0046E543    call        SysErrorMessage
 0046E548    mov         eax,dword ptr [ebp-3C]
 0046E54B    mov         dword ptr [ebp-28],eax
 0046E54E    mov         byte ptr [ebp-24],0B
 0046E552    lea         eax,[ebp-38]
 0046E555    push        eax
 0046E556    push        2
 0046E558    lea         edx,[ebp-40]
 0046E55B    mov         eax,[0055B334];^SResString1:TResStringRec
 0046E560    call        LoadResString
 0046E565    mov         ecx,dword ptr [ebp-40]
 0046E568    mov         dl,1
 0046E56A    mov         eax,[00465BD4];EVariantError
 0046E56F    call        Exception.CreateFmt
 0046E574    call        @RaiseExcept
 0046E579    xor         eax,eax
 0046E57B    pop         edx
 0046E57C    pop         ecx
 0046E57D    pop         ecx
 0046E57E    mov         dword ptr fs:[eax],edx
 0046E581    push        46E5A8
 0046E586    lea         eax,[ebp-40]
 0046E589    mov         edx,2
 0046E58E    call        @LStrArrayClr
 0046E593    lea         eax,[ebp-20]
 0046E596    mov         edx,8
 0046E59B    call        @LStrArrayClr
 0046E5A0    ret
>0046E5A1    jmp         @HandleFinally
>0046E5A6    jmp         0046E586
 0046E5A8    pop         ebx
 0046E5A9    mov         esp,ebp
 0046E5AB    pop         ebp
 0046E5AC    ret
*}
end;

//0046E5B0
procedure VarResultCheck(AResult:HRESULT);
begin
{*
 0046E5B0    test        eax,eax
>0046E5B2    je          0046E5B9
 0046E5B4    call        TranslateResult
 0046E5B9    ret
*}
end;

//0046E5BC
procedure VarResultCheck(AResult:HRESULT; ASourceType:TVarType; ADestType:TVarType);
begin
{*
 0046E5BC    push        ebx
 0046E5BD    test        eax,eax
>0046E5BF    je          0046E5ED
 0046E5C1    mov         ebx,eax
 0046E5C3    sub         ebx,80020005
>0046E5C9    je          0046E5D2
 0046E5CB    sub         ebx,5
>0046E5CE    je          0046E5DD
>0046E5D0    jmp         0046E5E8
 0046E5D2    mov         eax,edx
 0046E5D4    mov         edx,ecx
 0046E5D6    call        VarCastError
>0046E5DB    jmp         0046E5ED
 0046E5DD    mov         eax,edx
 0046E5DF    mov         edx,ecx
 0046E5E1    call        VarOverflowError
>0046E5E6    jmp         0046E5ED
 0046E5E8    call        TranslateResult
 0046E5ED    pop         ebx
 0046E5EE    ret
*}
end;

//0046E5F0
procedure HandleConversionException(const ASourceType:TVarType; const ADestType:TVarType);
begin
{*
 0046E5F0    push        ebx
 0046E5F1    push        esi
 0046E5F2    mov         esi,edx
 0046E5F4    mov         ebx,eax
 0046E5F6    call        ExceptObject
 0046E5FB    mov         edx,dword ptr ds:[4656E8];ERangeError
 0046E601    call        @IsClass
 0046E606    test        al,al
>0046E608    je          0046E61B
 0046E60A    mov         ecx,esi
 0046E60C    mov         edx,ebx
 0046E60E    mov         eax,8002000A
 0046E613    call        VarResultCheck
 0046E618    pop         esi
 0046E619    pop         ebx
 0046E61A    ret
 0046E61B    call        ExceptObject
 0046E620    mov         edx,dword ptr ds:[4658A4];EOverflow
 0046E626    call        @IsClass
 0046E62B    test        al,al
>0046E62D    je          0046E63F
 0046E62F    mov         ecx,esi
 0046E631    mov         edx,ebx
 0046E633    mov         eax,8002000A
 0046E638    call        VarResultCheck
>0046E63D    jmp         0046E671
 0046E63F    call        ExceptObject
 0046E644    mov         edx,dword ptr ds:[465A0C];EConvertError
 0046E64A    call        @IsClass
 0046E64F    test        al,al
>0046E651    je          0046E663
 0046E653    mov         ecx,esi
 0046E655    mov         edx,ebx
 0046E657    mov         eax,80020005
 0046E65C    call        VarResultCheck
>0046E661    jmp         0046E671
 0046E663    call        AcquireExceptionObject
 0046E668    mov         edx,eax
 0046E66A    mov         eax,edx
 0046E66C    call        @RaiseExcept
 0046E671    pop         esi
 0046E672    pop         ebx
 0046E673    ret
*}
end;

//0046E674
procedure @DispInvokeError;
begin
{*
 0046E674    push        ebp
 0046E675    mov         ebp,esp
 0046E677    push        0
 0046E679    xor         eax,eax
 0046E67B    push        ebp
 0046E67C    push        46E6BE
 0046E681    push        dword ptr fs:[eax]
 0046E684    mov         dword ptr fs:[eax],esp
 0046E687    lea         edx,[ebp-4]
 0046E68A    mov         eax,[0055B0AC];^SDispatchError:TResStringRec
 0046E68F    call        LoadResString
 0046E694    mov         ecx,dword ptr [ebp-4]
 0046E697    mov         dl,1
 0046E699    mov         eax,[0046E008];EVariantDispatchError
 0046E69E    call        Exception.Create
 0046E6A3    call        @RaiseExcept
 0046E6A8    xor         eax,eax
 0046E6AA    pop         edx
 0046E6AB    pop         ecx
 0046E6AC    pop         ecx
 0046E6AD    mov         dword ptr fs:[eax],edx
 0046E6B0    push        46E6C5
 0046E6B5    lea         eax,[ebp-4]
 0046E6B8    call        @LStrClr
 0046E6BD    ret
>0046E6BE    jmp         @HandleFinally
>0046E6C3    jmp         0046E6B5
 0046E6C5    pop         ecx
 0046E6C6    pop         ebp
 0046E6C7    ret
*}
end;

//0046E6C8
procedure @VarNull(var V:TVarData);
begin
{*
 0046E6C8    push        ebx
 0046E6C9    mov         ebx,eax
 0046E6CB    mov         eax,ebx
 0046E6CD    call        @VarClear
 0046E6D2    mov         word ptr [ebx],1
 0046E6D7    pop         ebx
 0046E6D8    ret
*}
end;

//0046E6DC
function InBounds(At:Integer):Boolean;
begin
{*
 0046E6DC    push        ebp
 0046E6DD    mov         ebp,esp
 0046E6DF    push        ebx
 0046E6E0    mov         ecx,dword ptr [ebp+8]
 0046E6E3    add         ecx,0FFFFFD00
 0046E6E9    mov         edx,dword ptr [ecx+eax*8+4]
 0046E6ED    add         edx,dword ptr [ecx+eax*8]
 0046E6F0    mov         ebx,dword ptr [ebp+8]
 0046E6F3    cmp         edx,dword ptr [ebx+eax*4-100]
 0046E6FA    setg        dl
 0046E6FD    dec         eax
 0046E6FE    test        dl,dl
>0046E700    je          0046E706
 0046E702    test        eax,eax
>0046E704    jge         0046E6E9
 0046E706    mov         eax,edx
 0046E708    pop         ebx
 0046E709    pop         ebp
 0046E70A    ret
*}
end;

//0046E70C
function Increment(At:Integer):Boolean;
begin
{*
 0046E70C    push        ebp
 0046E70D    mov         ebp,esp
 0046E70F    push        ebx
 0046E710    push        esi
 0046E711    mov         dl,1
 0046E713    mov         ecx,dword ptr [ebp+8]
 0046E716    inc         dword ptr [ecx+eax*4-100]
 0046E71D    mov         ecx,dword ptr [ebp+8]
 0046E720    mov         ecx,dword ptr [ecx+eax*8-2FC]
 0046E727    mov         ebx,ecx
 0046E729    mov         esi,dword ptr [ebp+8]
 0046E72C    add         ebx,dword ptr [esi+eax*8-300]
 0046E733    mov         esi,dword ptr [ebp+8]
 0046E736    cmp         ebx,dword ptr [esi+eax*4-100]
>0046E73D    jg          0046E761
 0046E73F    test        eax,eax
>0046E741    jne         0046E747
 0046E743    xor         edx,edx
>0046E745    jmp         0046E761
 0046E747    mov         edx,dword ptr [ebp+8]
 0046E74A    mov         edx,dword ptr [ebp+8]
 0046E74D    mov         dword ptr [edx+eax*4-100],ecx
 0046E754    mov         edx,dword ptr [ebp+8]
 0046E757    push        edx
 0046E758    dec         eax
 0046E759    call        Increment
 0046E75E    pop         ecx
 0046E75F    mov         edx,eax
 0046E761    mov         eax,edx
 0046E763    pop         esi
 0046E764    pop         ebx
 0046E765    pop         ebp
 0046E766    ret
*}
end;

//0046E768
procedure VarArrayClear(var V:TVarData);
begin
{*
 0046E768    push        ebp
 0046E769    mov         ebp,esp
 0046E76B    add         esp,0FFFFFCE8
 0046E771    push        ebx
 0046E772    push        esi
 0046E773    push        edi
 0046E774    mov         dword ptr [ebp-304],eax
 0046E77A    mov         eax,dword ptr [ebp-304]
 0046E780    test        byte ptr [eax+1],20
>0046E784    jne         0046E790
 0046E786    mov         eax,80070057
 0046E78B    call        VarResultCheck
 0046E790    mov         eax,dword ptr [ebp-304]
 0046E796    mov         ax,word ptr [eax]
 0046E799    mov         edx,eax
 0046E79B    and         dx,0FFF
 0046E7A0    cmp         dx,0C
>0046E7A4    jne         0046E8CC
 0046E7AA    mov         edx,dword ptr [ebp-304]
 0046E7B0    test        ah,40
>0046E7B3    je          0046E7C8
 0046E7B5    mov         eax,dword ptr [ebp-304]
 0046E7BB    mov         eax,dword ptr [eax+8]
 0046E7BE    mov         eax,dword ptr [eax]
 0046E7C0    mov         dword ptr [ebp-308],eax
>0046E7C6    jmp         0046E7D7
 0046E7C8    mov         eax,dword ptr [ebp-304]
 0046E7CE    mov         eax,dword ptr [eax+8]
 0046E7D1    mov         dword ptr [ebp-308],eax
 0046E7D7    mov         eax,dword ptr [ebp-308]
 0046E7DD    movzx       eax,word ptr [eax]
 0046E7E0    mov         dword ptr [ebp-310],eax
 0046E7E6    mov         ebx,dword ptr [ebp-310]
 0046E7EC    dec         ebx
 0046E7ED    test        ebx,ebx
>0046E7EF    jl          0046E85C
 0046E7F1    inc         ebx
 0046E7F2    xor         edi,edi
 0046E7F4    lea         esi,[ebp-300]
 0046E7FA    mov         eax,esi
 0046E7FC    mov         dword ptr [ebp-318],eax
 0046E802    mov         eax,dword ptr [ebp-318]
 0046E808    add         eax,4
 0046E80B    push        eax
 0046E80C    lea         eax,[edi+1]
 0046E80F    push        eax
 0046E810    mov         eax,dword ptr [ebp-308]
 0046E816    push        eax
 0046E817    call        oleaut32.SafeArrayGetLBound
 0046E81C    call        VarResultCheck
 0046E821    lea         eax,[ebp-30C]
 0046E827    push        eax
 0046E828    lea         eax,[edi+1]
 0046E82B    push        eax
 0046E82C    mov         eax,dword ptr [ebp-308]
 0046E832    push        eax
 0046E833    call        oleaut32.SafeArrayGetUBound
 0046E838    call        VarResultCheck
 0046E83D    mov         eax,dword ptr [ebp-318]
 0046E843    mov         edx,dword ptr [ebp-30C]
 0046E849    sub         edx,dword ptr [eax+4]
 0046E84C    inc         edx
 0046E84D    mov         eax,dword ptr [ebp-318]
 0046E853    mov         dword ptr [eax],edx
 0046E855    inc         edi
 0046E856    add         esi,8
 0046E859    dec         ebx
>0046E85A    jne         0046E7FA
 0046E85C    mov         ebx,dword ptr [ebp-310]
 0046E862    dec         ebx
 0046E863    test        ebx,ebx
>0046E865    jl          0046E881
 0046E867    inc         ebx
 0046E868    lea         eax,[ebp-2FC]
 0046E86E    lea         edx,[ebp-100]
 0046E874    mov         ecx,dword ptr [eax]
 0046E876    mov         dword ptr [edx],ecx
 0046E878    add         edx,4
 0046E87B    add         eax,8
 0046E87E    dec         ebx
>0046E87F    jne         0046E874
 0046E881    push        ebp
 0046E882    mov         ebx,dword ptr [ebp-310]
 0046E888    dec         ebx
 0046E889    mov         eax,ebx
 0046E88B    call        InBounds
 0046E890    pop         ecx
 0046E891    test        al,al
>0046E893    je          0046E8BF
 0046E895    lea         eax,[ebp-314]
 0046E89B    push        eax
 0046E89C    lea         eax,[ebp-100]
 0046E8A2    push        eax
 0046E8A3    mov         eax,dword ptr [ebp-308]
 0046E8A9    push        eax
 0046E8AA    call        oleaut32.SafeArrayPtrOfIndex
 0046E8AF    call        VarResultCheck
 0046E8B4    mov         eax,dword ptr [ebp-314]
 0046E8BA    call        @VarClear
 0046E8BF    push        ebp
 0046E8C0    mov         eax,ebx
 0046E8C2    call        Increment
 0046E8C7    pop         ecx
 0046E8C8    test        al,al
>0046E8CA    jne         0046E881
 0046E8CC    mov         eax,dword ptr [ebp-304]
 0046E8D2    push        eax
 0046E8D3    call        oleaut32.VariantClear
 0046E8D8    call        VarResultCheck
 0046E8DD    pop         edi
 0046E8DE    pop         esi
 0046E8DF    pop         ebx
 0046E8E0    mov         esp,ebp
 0046E8E2    pop         ebp
 0046E8E3    ret
*}
end;

//0046E8E4
procedure VarClearDeep(var V:TVarData);
begin
{*
 0046E8E4    push        ebx
 0046E8E5    push        esi
 0046E8E6    push        ecx
 0046E8E7    mov         ebx,eax
 0046E8E9    mov         si,word ptr [ebx]
 0046E8EC    cmp         si,14
>0046E8F0    jae         0046E8FF
 0046E8F2    push        ebx
 0046E8F3    call        oleaut32.VariantClear
 0046E8F8    call        VarResultCheck
>0046E8FD    jmp         0046E95A
 0046E8FF    cmp         si,100
>0046E904    jne         0046E915
 0046E906    mov         word ptr [ebx],0
 0046E90B    lea         eax,[ebx+8]
 0046E90E    call        @LStrClr
>0046E913    jmp         0046E95A
 0046E915    cmp         si,101
>0046E91A    jne         0046E926
 0046E91C    mov         eax,ebx
 0046E91E    call        dword ptr ds:[55DA94]
>0046E924    jmp         0046E95A
 0046E926    test        si,2000
>0046E92B    je          0046E936
 0046E92D    mov         eax,ebx
 0046E92F    call        VarArrayClear
>0046E934    jmp         0046E95A
 0046E936    mov         edx,esp
 0046E938    mov         eax,esi
 0046E93A    call        FindCustomVariantType
 0046E93F    test        al,al
>0046E941    je          0046E94F
 0046E943    mov         edx,ebx
 0046E945    mov         eax,dword ptr [esp]
 0046E948    mov         ecx,dword ptr [eax]
 0046E94A    call        dword ptr [ecx+24]
>0046E94D    jmp         0046E95A
 0046E94F    push        ebx
 0046E950    call        oleaut32.VariantClear
 0046E955    call        VarResultCheck
 0046E95A    pop         edx
 0046E95B    pop         esi
 0046E95C    pop         ebx
 0046E95D    ret
*}
end;

//0046E960
procedure @VarClear(var V:TVarData);
begin
{*
 0046E960    test        word ptr [eax],0BFE8
>0046E965    jne         0046E96D
 0046E967    mov         word ptr [eax],0
 0046E96C    ret
 0046E96D    call        VarClearDeep
 0046E972    ret
*}
end;

//0046E974
procedure @VarClr(var V:TVarData);
begin
{*
 0046E974    push        eax
 0046E975    call        @VarClear
 0046E97A    pop         eax
 0046E97B    ret
*}
end;

//0046E97C
function InBounds(At:Integer):Boolean;
begin
{*
 0046E97C    push        ebp
 0046E97D    mov         ebp,esp
 0046E97F    push        ebx
 0046E980    mov         ecx,dword ptr [ebp+8]
 0046E983    add         ecx,0FFFFFD00
 0046E989    mov         edx,dword ptr [ecx+eax*8+4]
 0046E98D    add         edx,dword ptr [ecx+eax*8]
 0046E990    mov         ebx,dword ptr [ebp+8]
 0046E993    cmp         edx,dword ptr [ebx+eax*4-100]
 0046E99A    setg        dl
 0046E99D    dec         eax
 0046E99E    test        dl,dl
>0046E9A0    je          0046E9A6
 0046E9A2    test        eax,eax
>0046E9A4    jge         0046E989
 0046E9A6    mov         eax,edx
 0046E9A8    pop         ebx
 0046E9A9    pop         ebp
 0046E9AA    ret
*}
end;

//0046E9AC
function Increment(At:Integer):Boolean;
begin
{*
 0046E9AC    push        ebp
 0046E9AD    mov         ebp,esp
 0046E9AF    push        ebx
 0046E9B0    push        esi
 0046E9B1    mov         dl,1
 0046E9B3    mov         ecx,dword ptr [ebp+8]
 0046E9B6    inc         dword ptr [ecx+eax*4-100]
 0046E9BD    mov         ecx,dword ptr [ebp+8]
 0046E9C0    mov         ecx,dword ptr [ecx+eax*8-2FC]
 0046E9C7    mov         ebx,ecx
 0046E9C9    mov         esi,dword ptr [ebp+8]
 0046E9CC    add         ebx,dword ptr [esi+eax*8-300]
 0046E9D3    mov         esi,dword ptr [ebp+8]
 0046E9D6    cmp         ebx,dword ptr [esi+eax*4-100]
>0046E9DD    jg          0046EA01
 0046E9DF    test        eax,eax
>0046E9E1    jne         0046E9E7
 0046E9E3    xor         edx,edx
>0046E9E5    jmp         0046EA01
 0046E9E7    mov         edx,dword ptr [ebp+8]
 0046E9EA    mov         edx,dword ptr [ebp+8]
 0046E9ED    mov         dword ptr [edx+eax*4-100],ecx
 0046E9F4    mov         edx,dword ptr [ebp+8]
 0046E9F7    push        edx
 0046E9F8    dec         eax
 0046E9F9    call        Increment
 0046E9FE    pop         ecx
 0046E9FF    mov         edx,eax
 0046EA01    mov         eax,edx
 0046EA03    pop         esi
 0046EA04    pop         ebx
 0046EA05    pop         ebp
 0046EA06    ret
*}
end;

//0046EA08
procedure VarArrayCopyForEach(var Dest:TVarData; const Src:TVarData; AProc:TVarArrayForEach);
begin
{*
 0046EA08    push        ebp
 0046EA09    mov         ebp,esp
 0046EA0B    add         esp,0FFFFFCE0
 0046EA11    push        ebx
 0046EA12    push        esi
 0046EA13    push        edi
 0046EA14    mov         dword ptr [ebp-308],ecx
 0046EA1A    mov         ebx,edx
 0046EA1C    mov         dword ptr [ebp-304],eax
 0046EA22    test        byte ptr [ebx+1],20
>0046EA26    jne         0046EA32
 0046EA28    mov         eax,80070057
 0046EA2D    call        VarResultCheck
 0046EA32    mov         ax,word ptr [ebx]
 0046EA35    mov         edx,eax
 0046EA37    and         dx,0FFF
 0046EA3C    cmp         dx,0C
>0046EA40    jne         0046EBB9
 0046EA46    test        ah,40
>0046EA49    je          0046EA58
 0046EA4B    mov         eax,dword ptr [ebx+8]
 0046EA4E    mov         eax,dword ptr [eax]
 0046EA50    mov         dword ptr [ebp-314],eax
>0046EA56    jmp         0046EA61
 0046EA58    mov         eax,dword ptr [ebx+8]
 0046EA5B    mov         dword ptr [ebp-314],eax
 0046EA61    mov         eax,dword ptr [ebp-314]
 0046EA67    movzx       eax,word ptr [eax]
 0046EA6A    mov         dword ptr [ebp-310],eax
 0046EA70    mov         ebx,dword ptr [ebp-310]
 0046EA76    dec         ebx
 0046EA77    test        ebx,ebx
>0046EA79    jl          0046EAE6
 0046EA7B    inc         ebx
 0046EA7C    xor         edi,edi
 0046EA7E    lea         esi,[ebp-300]
 0046EA84    mov         eax,esi
 0046EA86    mov         dword ptr [ebp-320],eax
 0046EA8C    mov         eax,dword ptr [ebp-320]
 0046EA92    add         eax,4
 0046EA95    push        eax
 0046EA96    lea         eax,[edi+1]
 0046EA99    push        eax
 0046EA9A    mov         eax,dword ptr [ebp-314]
 0046EAA0    push        eax
 0046EAA1    call        oleaut32.SafeArrayGetLBound
 0046EAA6    call        VarResultCheck
 0046EAAB    lea         eax,[ebp-30C]
 0046EAB1    push        eax
 0046EAB2    lea         eax,[edi+1]
 0046EAB5    push        eax
 0046EAB6    mov         eax,dword ptr [ebp-314]
 0046EABC    push        eax
 0046EABD    call        oleaut32.SafeArrayGetUBound
 0046EAC2    call        VarResultCheck
 0046EAC7    mov         eax,dword ptr [ebp-320]
 0046EACD    mov         edx,dword ptr [ebp-30C]
 0046EAD3    sub         edx,dword ptr [eax+4]
 0046EAD6    inc         edx
 0046EAD7    mov         eax,dword ptr [ebp-320]
 0046EADD    mov         dword ptr [eax],edx
 0046EADF    inc         edi
 0046EAE0    add         esi,8
 0046EAE3    dec         ebx
>0046EAE4    jne         0046EA84
 0046EAE6    lea         eax,[ebp-300]
 0046EAEC    push        eax
 0046EAED    mov         eax,dword ptr [ebp-310]
 0046EAF3    push        eax
 0046EAF4    push        0C
 0046EAF6    call        oleaut32.SafeArrayCreate
 0046EAFB    mov         esi,eax
 0046EAFD    test        esi,esi
>0046EAFF    jne         0046EB06
 0046EB01    call        VarArrayCreateError
 0046EB06    mov         eax,dword ptr [ebp-304]
 0046EB0C    call        @VarClear
 0046EB11    mov         eax,dword ptr [ebp-304]
 0046EB17    mov         word ptr [eax],200C
 0046EB1C    mov         eax,dword ptr [ebp-304]
 0046EB22    mov         dword ptr [eax+8],esi
 0046EB25    mov         ebx,dword ptr [ebp-310]
 0046EB2B    dec         ebx
 0046EB2C    test        ebx,ebx
>0046EB2E    jl          0046EB4A
 0046EB30    inc         ebx
 0046EB31    lea         eax,[ebp-2FC]
 0046EB37    lea         edx,[ebp-100]
 0046EB3D    mov         ecx,dword ptr [eax]
 0046EB3F    mov         dword ptr [edx],ecx
 0046EB41    add         edx,4
 0046EB44    add         eax,8
 0046EB47    dec         ebx
>0046EB48    jne         0046EB3D
 0046EB4A    push        ebp
 0046EB4B    mov         ebx,dword ptr [ebp-310]
 0046EB51    dec         ebx
 0046EB52    mov         eax,ebx
 0046EB54    call        InBounds
 0046EB59    pop         ecx
 0046EB5A    test        al,al
>0046EB5C    je          0046EBAA
 0046EB5E    lea         eax,[ebp-318]
 0046EB64    push        eax
 0046EB65    lea         eax,[ebp-100]
 0046EB6B    push        eax
 0046EB6C    mov         eax,dword ptr [ebp-314]
 0046EB72    push        eax
 0046EB73    call        oleaut32.SafeArrayPtrOfIndex
 0046EB78    call        VarResultCheck
 0046EB7D    lea         eax,[ebp-31C]
 0046EB83    push        eax
 0046EB84    lea         eax,[ebp-100]
 0046EB8A    push        eax
 0046EB8B    push        esi
 0046EB8C    call        oleaut32.SafeArrayPtrOfIndex
 0046EB91    call        VarResultCheck
 0046EB96    mov         eax,dword ptr [ebp-318]
 0046EB9C    mov         edx,eax
 0046EB9E    mov         eax,dword ptr [ebp-31C]
 0046EBA4    call        dword ptr [ebp-308]
 0046EBAA    push        ebp
 0046EBAB    mov         eax,ebx
 0046EBAD    call        Increment
 0046EBB2    pop         ecx
 0046EBB3    test        al,al
>0046EBB5    jne         0046EB4A
>0046EBB7    jmp         0046EBCB
 0046EBB9    push        ebx
 0046EBBA    mov         eax,dword ptr [ebp-304]
 0046EBC0    push        eax
 0046EBC1    call        oleaut32.VariantCopy
 0046EBC6    call        VarResultCheck
 0046EBCB    pop         edi
 0046EBCC    pop         esi
 0046EBCD    pop         ebx
 0046EBCE    mov         esp,ebp
 0046EBD0    pop         ebp
 0046EBD1    ret
*}
end;

//0046EBD4
procedure VarCopyCopyProc(var Dest:TVarData; const Src:TVarData);
begin
{*
 0046EBD4    call        @VarCopy
 0046EBD9    ret
*}
end;

//0046EBDC
procedure VarCopyDeep(var Dest:TVarData; const Source:TVarData);
begin
{*
 0046EBDC    push        ebx
 0046EBDD    push        esi
 0046EBDE    push        edi
 0046EBDF    push        ecx
 0046EBE0    mov         esi,edx
 0046EBE2    mov         ebx,eax
 0046EBE4    test        word ptr [ebx],0BFE8
>0046EBE9    je          0046EBF2
 0046EBEB    mov         eax,ebx
 0046EBED    call        VarClearDeep
 0046EBF2    mov         di,word ptr [esi]
 0046EBF5    cmp         di,14
>0046EBF9    jae         0046EC09
 0046EBFB    push        esi
 0046EBFC    push        ebx
 0046EBFD    call        oleaut32.VariantCopy
 0046EC02    call        VarResultCheck
>0046EC07    jmp         0046EC82
 0046EC09    cmp         di,100
>0046EC0E    jne         0046EC27
 0046EC10    mov         word ptr [ebx],100
 0046EC15    xor         eax,eax
 0046EC17    mov         dword ptr [ebx+8],eax
 0046EC1A    lea         eax,[ebx+8]
 0046EC1D    mov         edx,dword ptr [esi+8]
 0046EC20    call        @LStrAsg
>0046EC25    jmp         0046EC82
 0046EC27    cmp         di,101
>0046EC2C    jne         0046EC41
 0046EC2E    mov         word ptr [ebx],di
 0046EC31    mov         eax,dword ptr [esi+8]
 0046EC34    mov         dword ptr [ebx+8],eax
 0046EC37    mov         eax,ebx
 0046EC39    call        dword ptr ds:[55DA9C]
>0046EC3F    jmp         0046EC82
 0046EC41    test        di,2000
>0046EC46    je          0046EC58
 0046EC48    mov         ecx,46EBD4;VarCopyCopyProc
 0046EC4D    mov         edx,esi
 0046EC4F    mov         eax,ebx
 0046EC51    call        VarArrayCopyForEach
>0046EC56    jmp         0046EC82
 0046EC58    mov         edx,esp
 0046EC5A    mov         eax,edi
 0046EC5C    call        FindCustomVariantType
 0046EC61    test        al,al
>0046EC63    je          0046EC76
 0046EC65    push        0
 0046EC67    mov         ecx,esi
 0046EC69    mov         edx,ebx
 0046EC6B    mov         eax,dword ptr [esp+4]
 0046EC6F    mov         ebx,dword ptr [eax]
 0046EC71    call        dword ptr [ebx+28]
>0046EC74    jmp         0046EC82
 0046EC76    push        esi
 0046EC77    push        ebx
 0046EC78    call        oleaut32.VariantCopy
 0046EC7D    call        VarResultCheck
 0046EC82    pop         edx
 0046EC83    pop         edi
 0046EC84    pop         esi
 0046EC85    pop         ebx
 0046EC86    ret
*}
end;

//0046EC88
procedure @VarCopy(var Dest:TVarData; const Source:TVarData);
begin
{*
 0046EC88    push        ebx
 0046EC89    push        esi
 0046EC8A    mov         ebx,edx
 0046EC8C    mov         esi,eax
 0046EC8E    cmp         esi,ebx
>0046EC90    je          0046ECC8
 0046EC92    test        word ptr [ebx],0BFE8
>0046EC97    jne         0046ECBF
 0046EC99    test        word ptr [esi],0BFE8
>0046EC9E    je          0046ECA7
 0046ECA0    mov         eax,esi
 0046ECA2    call        VarClearDeep
 0046ECA7    mov         eax,dword ptr [ebx]
 0046ECA9    mov         dword ptr [esi],eax
 0046ECAB    mov         eax,dword ptr [ebx+4]
 0046ECAE    mov         dword ptr [esi+4],eax
 0046ECB1    mov         eax,dword ptr [ebx+8]
 0046ECB4    mov         dword ptr [esi+8],eax
 0046ECB7    mov         eax,dword ptr [ebx+0C]
 0046ECBA    mov         dword ptr [esi+0C],eax
>0046ECBD    jmp         0046ECC8
 0046ECBF    mov         edx,ebx
 0046ECC1    mov         eax,esi
 0046ECC3    call        VarCopyDeep
 0046ECC8    pop         esi
 0046ECC9    pop         ebx
 0046ECCA    ret
*}
end;

//0046ECCC
procedure VarCastAsAny(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);
begin
{*
 0046ECCC    push        ebp
 0046ECCD    mov         ebp,esp
 0046ECCF    add         esp,0FFFFFFF0
 0046ECD2    push        ebx
 0046ECD3    push        esi
 0046ECD4    push        edi
 0046ECD5    mov         edi,ecx
 0046ECD7    mov         esi,edx
 0046ECD9    mov         ebx,eax
 0046ECDB    lea         eax,[ebp-10]
 0046ECDE    push        eax
 0046ECDF    call        oleaut32.VariantInit
 0046ECE4    xor         eax,eax
 0046ECE6    push        ebp
 0046ECE7    push        46ED28
 0046ECEC    push        dword ptr fs:[eax]
 0046ECEF    mov         dword ptr fs:[eax],esp
 0046ECF2    mov         edx,esi
 0046ECF4    lea         eax,[ebp-10]
 0046ECF7    call        @VarCopy
 0046ECFC    lea         eax,[ebp-10]
 0046ECFF    call        dword ptr ds:[55DA98]
 0046ED05    movzx       ecx,di
 0046ED08    lea         edx,[ebp-10]
 0046ED0B    mov         eax,ebx
 0046ED0D    call        @VarCast
 0046ED12    xor         eax,eax
 0046ED14    pop         edx
 0046ED15    pop         ecx
 0046ED16    pop         ecx
 0046ED17    mov         dword ptr fs:[eax],edx
 0046ED1A    push        46ED2F
 0046ED1F    lea         eax,[ebp-10]
 0046ED22    call        @VarClear
 0046ED27    ret
>0046ED28    jmp         @HandleFinally
>0046ED2D    jmp         0046ED1F
 0046ED2F    pop         edi
 0046ED30    pop         esi
 0046ED31    pop         ebx
 0046ED32    mov         esp,ebp
 0046ED34    pop         ebp
 0046ED35    ret
*}
end;

//0046ED38
procedure VarCastAsOleStr(var Dest:TVarData; const Source:TVarData);
begin
{*
 0046ED38    push        ebp
 0046ED39    mov         ebp,esp
 0046ED3B    push        0
 0046ED3D    push        ebx
 0046ED3E    mov         ebx,eax
 0046ED40    xor         eax,eax
 0046ED42    push        ebp
 0046ED43    push        46ED76
 0046ED48    push        dword ptr fs:[eax]
 0046ED4B    mov         dword ptr fs:[eax],esp
 0046ED4E    lea         eax,[ebp-4]
 0046ED51    call        @VarToWStr
 0046ED56    mov         eax,ebx
 0046ED58    mov         edx,dword ptr [ebp-4]
 0046ED5B    call        @VarFromWStr
 0046ED60    xor         eax,eax
 0046ED62    pop         edx
 0046ED63    pop         ecx
 0046ED64    pop         ecx
 0046ED65    mov         dword ptr fs:[eax],edx
 0046ED68    push        46ED7D
 0046ED6D    lea         eax,[ebp-4]
 0046ED70    call        @WStrClr
 0046ED75    ret
>0046ED76    jmp         @HandleFinally
>0046ED7B    jmp         0046ED6D
 0046ED7D    pop         ebx
 0046ED7E    pop         ecx
 0046ED7F    pop         ebp
 0046ED80    ret
*}
end;

//0046ED84
procedure VarCastAsString(var Dest:TVarData; const Source:TVarData);
begin
{*
 0046ED84    push        ebp
 0046ED85    mov         ebp,esp
 0046ED87    push        0
 0046ED89    push        ebx
 0046ED8A    mov         ebx,eax
 0046ED8C    xor         eax,eax
 0046ED8E    push        ebp
 0046ED8F    push        46EDC2
 0046ED94    push        dword ptr fs:[eax]
 0046ED97    mov         dword ptr fs:[eax],esp
 0046ED9A    lea         eax,[ebp-4]
 0046ED9D    call        @VarToLStr
 0046EDA2    mov         eax,ebx
 0046EDA4    mov         edx,dword ptr [ebp-4]
 0046EDA7    call        @VarFromLStr
 0046EDAC    xor         eax,eax
 0046EDAE    pop         edx
 0046EDAF    pop         ecx
 0046EDB0    pop         ecx
 0046EDB1    mov         dword ptr fs:[eax],edx
 0046EDB4    push        46EDC9
 0046EDB9    lea         eax,[ebp-4]
 0046EDBC    call        @LStrClr
 0046EDC1    ret
>0046EDC2    jmp         @HandleFinally
>0046EDC7    jmp         0046EDB9
 0046EDC9    pop         ebx
 0046EDCA    pop         ecx
 0046EDCB    pop         ebp
 0046EDCC    ret
*}
end;

//0046EDD0
procedure VarCastAsDispatch(var Dest:TVarData; const Source:TVarData);
begin
{*
 0046EDD0    push        ebp
 0046EDD1    mov         ebp,esp
 0046EDD3    push        0
 0046EDD5    push        ebx
 0046EDD6    mov         ebx,eax
 0046EDD8    xor         eax,eax
 0046EDDA    push        ebp
 0046EDDB    push        46EE0E
 0046EDE0    push        dword ptr fs:[eax]
 0046EDE3    mov         dword ptr fs:[eax],esp
 0046EDE6    lea         eax,[ebp-4]
 0046EDE9    call        @VarToDisp
 0046EDEE    mov         eax,ebx
 0046EDF0    mov         edx,dword ptr [ebp-4]
 0046EDF3    call        @VarFromDisp
 0046EDF8    xor         eax,eax
 0046EDFA    pop         edx
 0046EDFB    pop         ecx
 0046EDFC    pop         ecx
 0046EDFD    mov         dword ptr fs:[eax],edx
 0046EE00    push        46EE15
 0046EE05    lea         eax,[ebp-4]
 0046EE08    call        @IntfClear
 0046EE0D    ret
>0046EE0E    jmp         @HandleFinally
>0046EE13    jmp         0046EE05
 0046EE15    pop         ebx
 0046EE16    pop         ecx
 0046EE17    pop         ebp
 0046EE18    ret
*}
end;

//0046EE1C
procedure VarCastAsInterface(var Dest:TVarData; const Source:TVarData);
begin
{*
 0046EE1C    push        ebp
 0046EE1D    mov         ebp,esp
 0046EE1F    push        0
 0046EE21    push        ebx
 0046EE22    mov         ebx,eax
 0046EE24    xor         eax,eax
 0046EE26    push        ebp
 0046EE27    push        46EE5A
 0046EE2C    push        dword ptr fs:[eax]
 0046EE2F    mov         dword ptr fs:[eax],esp
 0046EE32    lea         eax,[ebp-4]
 0046EE35    call        @VarToIntf
 0046EE3A    mov         eax,ebx
 0046EE3C    mov         edx,dword ptr [ebp-4]
 0046EE3F    call        @VarFromIntf
 0046EE44    xor         eax,eax
 0046EE46    pop         edx
 0046EE47    pop         ecx
 0046EE48    pop         ecx
 0046EE49    mov         dword ptr fs:[eax],edx
 0046EE4C    push        46EE61
 0046EE51    lea         eax,[ebp-4]
 0046EE54    call        @IntfClear
 0046EE59    ret
>0046EE5A    jmp         @HandleFinally
>0046EE5F    jmp         0046EE51
 0046EE61    pop         ebx
 0046EE62    pop         ecx
 0046EE63    pop         ebp
 0046EE64    ret
*}
end;

//0046EE68
procedure VarCastViaOS(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);
begin
{*
 0046EE68    push        ebx
 0046EE69    push        esi
 0046EE6A    push        edi
 0046EE6B    mov         esi,ecx
 0046EE6D    mov         ebx,edx
 0046EE6F    mov         edi,eax
 0046EE71    mov         ax,word ptr [ebx]
 0046EE74    mov         edx,eax
 0046EE76    and         dx,0FFF
 0046EE7B    cmp         dx,14
>0046EE7F    jb          0046EEAE
 0046EE81    mov         edx,ebx
 0046EE83    mov         eax,edi
 0046EE85    mov         ecx,8
 0046EE8A    call        @VarCast
 0046EE8F    push        esi
 0046EE90    push        0
 0046EE92    push        400
 0046EE97    push        edi
 0046EE98    push        edi
 0046EE99    mov         eax,[0055B5C0];^gvar_0055DA24
 0046EE9E    mov         eax,dword ptr [eax]
 0046EEA0    call        eax
 0046EEA2    mov         dx,word ptr [ebx]
 0046EEA5    mov         ecx,esi
 0046EEA7    call        VarResultCheck
>0046EEAC    jmp         0046EEE1
 0046EEAE    mov         edx,esi
 0046EEB0    and         dx,0FFF
 0046EEB5    cmp         dx,14
>0046EEB9    jae         0046EEDA
 0046EEBB    push        esi
 0046EEBC    push        0
 0046EEBE    push        400
 0046EEC3    push        ebx
 0046EEC4    push        edi
 0046EEC5    mov         eax,[0055B5C0];^gvar_0055DA24
 0046EECA    mov         eax,dword ptr [eax]
 0046EECC    call        eax
 0046EECE    mov         dx,word ptr [ebx]
 0046EED1    mov         ecx,esi
 0046EED3    call        VarResultCheck
>0046EED8    jmp         0046EEE1
 0046EEDA    mov         edx,esi
 0046EEDC    call        VarCastError
 0046EEE1    pop         edi
 0046EEE2    pop         esi
 0046EEE3    pop         ebx
 0046EEE4    ret
*}
end;

//0046EEE8
procedure VarCastRare(var Dest:TVarData; const Source:TVarData; ADestType:TVarType);
begin
{*
 0046EEE8    push        ebx
 0046EEE9    push        esi
 0046EEEA    push        edi
 0046EEEB    push        ebp
 0046EEEC    push        ecx
 0046EEED    mov         esi,ecx
 0046EEEF    mov         ebx,edx
 0046EEF1    mov         edi,eax
 0046EEF3    mov         bp,word ptr [ebx]
 0046EEF6    cmp         bp,101
>0046EEFB    jne         0046EF0A
 0046EEFD    mov         edx,ebx
 0046EEFF    mov         eax,edi
 0046EF01    mov         ecx,esi
 0046EF03    call        VarCastAsAny
>0046EF08    jmp         0046EF4D
 0046EF0A    mov         edx,esp
 0046EF0C    mov         eax,ebp
 0046EF0E    call        FindCustomVariantType
 0046EF13    test        al,al
>0046EF15    je          0046EF27
 0046EF17    push        esi
 0046EF18    mov         ecx,ebx
 0046EF1A    mov         edx,edi
 0046EF1C    mov         eax,dword ptr [esp+4]
 0046EF20    mov         ebx,dword ptr [eax]
 0046EF22    call        dword ptr [ebx+1C]
>0046EF25    jmp         0046EF4D
 0046EF27    mov         edx,esp
 0046EF29    mov         eax,esi
 0046EF2B    call        FindCustomVariantType
 0046EF30    test        al,al
>0046EF32    je          0046EF42
 0046EF34    mov         ecx,ebx
 0046EF36    mov         edx,edi
 0046EF38    mov         eax,dword ptr [esp]
 0046EF3B    mov         ebx,dword ptr [eax]
 0046EF3D    call        dword ptr [ebx+18]
>0046EF40    jmp         0046EF4D
 0046EF42    mov         edx,ebx
 0046EF44    mov         eax,edi
 0046EF46    mov         ecx,esi
 0046EF48    call        VarCastViaOS
 0046EF4D    pop         edx
 0046EF4E    pop         ebp
 0046EF4F    pop         edi
 0046EF50    pop         esi
 0046EF51    pop         ebx
 0046EF52    ret
*}
end;

//0046EF54
procedure @VarCast(var Dest:TVarData; const Source:TVarData; AVarType:Integer);
begin
{*
 0046EF54    push        ebx
 0046EF55    push        esi
 0046EF56    mov         ebx,edx
 0046EF58    mov         esi,eax
 0046EF5A    mov         ax,word ptr [ebx]
 0046EF5D    movzx       edx,ax
 0046EF60    cmp         ecx,edx
>0046EF62    jne         0046EF70
 0046EF64    mov         edx,ebx
 0046EF66    mov         eax,esi
 0046EF68    call        @VarCopy
 0046EF6D    pop         esi
 0046EF6E    pop         ebx
 0046EF6F    ret
 0046EF70    cmp         ax,400C
>0046EF74    jne         0046EF87
 0046EF76    mov         eax,dword ptr [ebx+8]
 0046EF79    mov         edx,eax
 0046EF7B    mov         eax,esi
 0046EF7D    call        @VarCast
>0046EF82    jmp         0046F17A
 0046EF87    mov         edx,ecx
 0046EF89    cmp         edx,14
>0046EF8C    ja          0046F14C
 0046EF92    jmp         dword ptr [edx*4+46EF99]
 0046EF92    dd          0046EFED
 0046EF92    dd          0046F018
 0046EF92    dd          0046F024
 0046EF92    dd          0046F039
 0046EF92    dd          0046F04E
 0046EF92    dd          0046F068
 0046EF92    dd          0046F082
 0046EF92    dd          0046F09C
 0046EF92    dd          0046F0B6
 0046EF92    dd          0046F136
 0046EF92    dd          0046F14C
 0046EF92    dd          0046F0C4
 0046EF92    dd          0046F14C
 0046EF92    dd          0046F141
 0046EF92    dd          0046F14C
 0046EF92    dd          0046F14C
 0046EF92    dd          0046F0D9
 0046EF92    dd          0046F0EE
 0046EF92    dd          0046F100
 0046EF92    dd          0046F112
 0046EF92    dd          0046F124
 0046EFED    cmp         word ptr [ebx],1
>0046EFF1    jne         0046F00C
 0046EFF3    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>0046EFFA    je          0046F00C
 0046EFFC    xor         edx,edx
 0046EFFE    mov         ax,1
 0046F002    call        VarCastError
>0046F007    jmp         0046F17A
 0046F00C    mov         eax,esi
 0046F00E    call        @VarClear
>0046F013    jmp         0046F17A
 0046F018    mov         eax,esi
 0046F01A    call        @VarNull
>0046F01F    jmp         0046F17A
 0046F024    mov         eax,ebx
 0046F026    call        @VarToSmallInt
 0046F02B    mov         edx,eax
 0046F02D    mov         eax,esi
 0046F02F    call        @VarFromSmallInt
>0046F034    jmp         0046F17A
 0046F039    mov         eax,ebx
 0046F03B    call        @VarToInteger
 0046F040    mov         edx,eax
 0046F042    mov         eax,esi
 0046F044    call        @OleVarFromInt
>0046F049    jmp         0046F17A
 0046F04E    mov         eax,ebx
 0046F050    call        @VarToSingle
 0046F055    add         esp,0FFFFFFFC
 0046F058    fstp        dword ptr [esp]
 0046F05B    wait
 0046F05C    mov         eax,esi
 0046F05E    call        @VarFromSingle
>0046F063    jmp         0046F17A
 0046F068    mov         eax,ebx
 0046F06A    call        004708EC
 0046F06F    add         esp,0FFFFFFF8
 0046F072    fstp        qword ptr [esp]
 0046F075    wait
 0046F076    mov         eax,esi
 0046F078    call        @VarFromDouble
>0046F07D    jmp         0046F17A
 0046F082    mov         eax,ebx
 0046F084    call        @VarToCurrency
 0046F089    add         esp,0FFFFFFF8
 0046F08C    fistp       qword ptr [esp]
 0046F08F    wait
 0046F090    mov         eax,esi
 0046F092    call        @VarFromCurrency
>0046F097    jmp         0046F17A
 0046F09C    mov         eax,ebx
 0046F09E    call        0047105C
 0046F0A3    add         esp,0FFFFFFF8
 0046F0A6    fstp        qword ptr [esp]
 0046F0A9    wait
 0046F0AA    mov         eax,esi
 0046F0AC    call        @VarFromDate
>0046F0B1    jmp         0046F17A
 0046F0B6    mov         edx,ebx
 0046F0B8    mov         eax,esi
 0046F0BA    call        VarCastAsOleStr
>0046F0BF    jmp         0046F17A
 0046F0C4    mov         eax,ebx
 0046F0C6    call        @VarToBoolean
 0046F0CB    mov         edx,eax
 0046F0CD    mov         eax,esi
 0046F0CF    call        @VarFromBool
>0046F0D4    jmp         0046F17A
 0046F0D9    mov         eax,ebx
 0046F0DB    call        @VarToShortInt
 0046F0E0    mov         edx,eax
 0046F0E2    mov         eax,esi
 0046F0E4    call        @VarFromShortInt
>0046F0E9    jmp         0046F17A
 0046F0EE    mov         eax,ebx
 0046F0F0    call        @VarToByte
 0046F0F5    mov         edx,eax
 0046F0F7    mov         eax,esi
 0046F0F9    call        @VarFromByte
>0046F0FE    jmp         0046F17A
 0046F100    mov         eax,ebx
 0046F102    call        @VarToWord
 0046F107    mov         edx,eax
 0046F109    mov         eax,esi
 0046F10B    call        @VarFromWord
>0046F110    jmp         0046F17A
 0046F112    mov         eax,ebx
 0046F114    call        @VarToLongWord
 0046F119    mov         edx,eax
 0046F11B    mov         eax,esi
 0046F11D    call        @VarFromLongWord
>0046F122    jmp         0046F17A
 0046F124    mov         eax,ebx
 0046F126    call        @VarToInt64
 0046F12B    push        edx
 0046F12C    push        eax
 0046F12D    mov         eax,esi
 0046F12F    call        @VarFromInt64
>0046F134    jmp         0046F17A
 0046F136    mov         edx,ebx
 0046F138    mov         eax,esi
 0046F13A    call        VarCastAsDispatch
>0046F13F    jmp         0046F17A
 0046F141    mov         edx,ebx
 0046F143    mov         eax,esi
 0046F145    call        VarCastAsInterface
>0046F14A    jmp         0046F17A
 0046F14C    mov         edx,ecx
 0046F14E    sub         edx,100
>0046F154    je          0046F15B
 0046F156    dec         edx
>0046F157    je          0046F166
>0046F159    jmp         0046F171
 0046F15B    mov         edx,ebx
 0046F15D    mov         eax,esi
 0046F15F    call        VarCastAsString
>0046F164    jmp         0046F17A
 0046F166    mov         dx,101
 0046F16A    call        VarCastError
>0046F16F    jmp         0046F17A
 0046F171    mov         edx,ebx
 0046F173    mov         eax,esi
 0046F175    call        VarCastRare
 0046F17A    pop         esi
 0046F17B    pop         ebx
 0046F17C    ret
*}
end;

//0046F180
function VarToIntAsString(const V:TVarData):Integer;
begin
{*
 0046F180    push        ebp
 0046F181    mov         ebp,esp
 0046F183    push        0
 0046F185    push        0
 0046F187    push        0
 0046F189    push        ebx
 0046F18A    mov         ebx,eax
 0046F18C    xor         eax,eax
 0046F18E    push        ebp
 0046F18F    push        46F223
 0046F194    push        dword ptr fs:[eax]
 0046F197    mov         dword ptr fs:[eax],esp
 0046F19A    mov         edx,ebx
 0046F19C    lea         eax,[ebp-8]
 0046F19F    call        @VarToWStr
 0046F1A4    lea         eax,[ebp-4]
 0046F1A7    push        eax
 0046F1A8    push        0
 0046F1AA    push        400
 0046F1AF    mov         eax,dword ptr [ebp-8]
 0046F1B2    push        eax
 0046F1B3    mov         eax,[0055B6A8];^gvar_0055DA58
 0046F1B8    mov         eax,dword ptr [eax]
 0046F1BA    call        eax
 0046F1BC    mov         edx,eax
 0046F1BE    sub         edx,80020005
>0046F1C4    je          0046F1D0
 0046F1C6    sub         edx,7FFDFFFB
>0046F1CC    jne         0046F1F9
>0046F1CE    jmp         0046F205
 0046F1D0    lea         eax,[ebp-0C]
 0046F1D3    mov         edx,dword ptr [ebp-8]
 0046F1D6    call        @LStrFromWStr
 0046F1DB    mov         eax,dword ptr [ebp-0C]
 0046F1DE    lea         edx,[ebp-4]
 0046F1E1    call        00466B3C
 0046F1E6    test        al,al
>0046F1E8    jne         0046F205
 0046F1EA    mov         eax,ebx
 0046F1EC    call        @VarToBoolean
 0046F1F1    and         eax,7F
 0046F1F4    mov         dword ptr [ebp-4],eax
>0046F1F7    jmp         0046F205
 0046F1F9    mov         dx,word ptr [ebx]
 0046F1FC    mov         cx,3
 0046F200    call        VarResultCheck
 0046F205    xor         eax,eax
 0046F207    pop         edx
 0046F208    pop         ecx
 0046F209    pop         ecx
 0046F20A    mov         dword ptr fs:[eax],edx
 0046F20D    push        46F22A
 0046F212    lea         eax,[ebp-0C]
 0046F215    call        @LStrClr
 0046F21A    lea         eax,[ebp-8]
 0046F21D    call        @WStrClr
 0046F222    ret
>0046F223    jmp         @HandleFinally
>0046F228    jmp         0046F212
 0046F22A    mov         eax,dword ptr [ebp-4]
 0046F22D    pop         ebx
 0046F22E    mov         esp,ebp
 0046F230    pop         ebp
 0046F231    ret
*}
end;

//0046F234
function VarToIntViaOS(const V:TVarData):Integer;
begin
{*
 0046F234    push        ebx
 0046F235    add         esp,0FFFFFFF0
 0046F238    mov         ebx,eax
 0046F23A    push        esp
 0046F23B    call        oleaut32.VariantInit
 0046F240    push        3
 0046F242    push        0
 0046F244    push        400
 0046F249    push        ebx
 0046F24A    lea         eax,[esp+10]
 0046F24E    push        eax
 0046F24F    mov         eax,[0055B5C0];^gvar_0055DA24
 0046F254    mov         eax,dword ptr [eax]
 0046F256    call        eax
 0046F258    mov         dx,word ptr [ebx]
 0046F25B    mov         cx,3
 0046F25F    call        VarResultCheck
 0046F264    mov         eax,dword ptr [esp+8]
 0046F268    add         esp,10
 0046F26B    pop         ebx
 0046F26C    ret
*}
end;

//0046F270
function VarToIntAny(const V:TVarData):Integer;
begin
{*
 0046F270    push        ebp
 0046F271    mov         ebp,esp
 0046F273    add         esp,0FFFFFFEC
 0046F276    push        ebx
 0046F277    mov         ebx,eax
 0046F279    lea         eax,[ebp-14]
 0046F27C    push        eax
 0046F27D    call        oleaut32.VariantInit
 0046F282    xor         eax,eax
 0046F284    push        ebp
 0046F285    push        46F2C4
 0046F28A    push        dword ptr fs:[eax]
 0046F28D    mov         dword ptr fs:[eax],esp
 0046F290    mov         edx,ebx
 0046F292    lea         eax,[ebp-14]
 0046F295    call        @VarCopy
 0046F29A    lea         eax,[ebp-14]
 0046F29D    call        dword ptr ds:[55DA98]
 0046F2A3    lea         eax,[ebp-14]
 0046F2A6    call        @VarToInteger
 0046F2AB    mov         dword ptr [ebp-4],eax
 0046F2AE    xor         eax,eax
 0046F2B0    pop         edx
 0046F2B1    pop         ecx
 0046F2B2    pop         ecx
 0046F2B3    mov         dword ptr fs:[eax],edx
 0046F2B6    push        46F2CB
 0046F2BB    lea         eax,[ebp-14]
 0046F2BE    call        @VarClear
 0046F2C3    ret
>0046F2C4    jmp         @HandleFinally
>0046F2C9    jmp         0046F2BB
 0046F2CB    mov         eax,dword ptr [ebp-4]
 0046F2CE    pop         ebx
 0046F2CF    mov         esp,ebp
 0046F2D1    pop         ebp
 0046F2D2    ret
*}
end;

//0046F2D4
function VarToIntCustom(const V:TVarData; var AValue:Integer):Boolean;
begin
{*
 0046F2D4    push        ebx
 0046F2D5    push        esi
 0046F2D6    push        edi
 0046F2D7    add         esp,0FFFFFFEC
 0046F2DA    mov         edi,edx
 0046F2DC    mov         esi,eax
 0046F2DE    mov         edx,esp
 0046F2E0    mov         ax,word ptr [esi]
 0046F2E3    call        FindCustomVariantType
 0046F2E8    mov         ebx,eax
 0046F2EA    test        bl,bl
>0046F2EC    je          0046F30F
 0046F2EE    lea         eax,[esp+4]
 0046F2F2    push        eax
 0046F2F3    call        oleaut32.VariantInit
 0046F2F8    push        3
 0046F2FA    mov         ecx,esi
 0046F2FC    lea         edx,[esp+8]
 0046F300    mov         eax,dword ptr [esp+4]
 0046F304    mov         esi,dword ptr [eax]
 0046F306    call        dword ptr [esi+1C]
 0046F309    mov         eax,dword ptr [esp+0C]
 0046F30D    mov         dword ptr [edi],eax
 0046F30F    mov         eax,ebx
 0046F311    add         esp,14
 0046F314    pop         edi
 0046F315    pop         esi
 0046F316    pop         ebx
 0046F317    ret
*}
end;

//0046F318
function @VarToInteger(const V:TVarData):Integer;
begin
{*
 0046F318    push        ebp
 0046F319    mov         ebp,esp
 0046F31B    add         esp,0FFFFFFF8
 0046F31E    push        ebx
 0046F31F    push        esi
 0046F320    push        edi
 0046F321    mov         dword ptr [ebp-4],eax
 0046F324    xor         edx,edx
 0046F326    push        ebp
 0046F327    push        46F739
 0046F32C    push        dword ptr fs:[edx]
 0046F32F    mov         dword ptr fs:[edx],esp
 0046F332    mov         eax,dword ptr [ebp-4]
 0046F335    mov         ax,word ptr [eax]
 0046F338    movzx       edx,ax
 0046F33B    cmp         edx,14
>0046F33E    ja          0046F515
 0046F344    jmp         dword ptr [edx*4+46F34B]
 0046F344    dd          0046F39F
 0046F344    dd          0046F3A9
 0046F344    dd          0046F3C9
 0046F344    dd          0046F3D8
 0046F344    dd          0046F3E6
 0046F344    dd          0046F407
 0046F344    dd          0046F428
 0046F344    dd          0046F44F
 0046F344    dd          0046F470
 0046F344    dd          0046F505
 0046F344    dd          0046F515
 0046F344    dd          0046F480
 0046F344    dd          0046F4F2
 0046F344    dd          0046F505
 0046F344    dd          0046F515
 0046F344    dd          0046F515
 0046F344    dd          0046F48F
 0046F344    dd          0046F49E
 0046F344    dd          0046F4AD
 0046F344    dd          0046F4BC
 0046F344    dd          0046F4D3
 0046F39F    xor         eax,eax
 0046F3A1    mov         dword ptr [ebp-8],eax
>0046F3A4    jmp         0046F72F
 0046F3A9    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>0046F3B0    je          0046F3BF
 0046F3B2    mov         dx,3
 0046F3B6    mov         ax,1
 0046F3BA    call        VarCastError
 0046F3BF    xor         eax,eax
 0046F3C1    mov         dword ptr [ebp-8],eax
>0046F3C4    jmp         0046F72F
 0046F3C9    mov         eax,dword ptr [ebp-4]
 0046F3CC    movsx       eax,word ptr [eax+8]
 0046F3D0    mov         dword ptr [ebp-8],eax
>0046F3D3    jmp         0046F72F
 0046F3D8    mov         eax,dword ptr [ebp-4]
 0046F3DB    mov         eax,dword ptr [eax+8]
 0046F3DE    mov         dword ptr [ebp-8],eax
>0046F3E1    jmp         0046F72F
 0046F3E6    mov         eax,dword ptr [ebp-4]
 0046F3E9    fld         dword ptr [eax+8]
 0046F3EC    call        @ROUND
 0046F3F1    push        eax
 0046F3F2    sar         eax,1F
 0046F3F5    cmp         eax,edx
 0046F3F7    pop         eax
>0046F3F8    je          0046F3FF
 0046F3FA    call        @BoundErr
 0046F3FF    mov         dword ptr [ebp-8],eax
>0046F402    jmp         0046F72F
 0046F407    mov         eax,dword ptr [ebp-4]
 0046F40A    fld         qword ptr [eax+8]
 0046F40D    call        @ROUND
 0046F412    push        eax
 0046F413    sar         eax,1F
 0046F416    cmp         eax,edx
 0046F418    pop         eax
>0046F419    je          0046F420
 0046F41B    call        @BoundErr
 0046F420    mov         dword ptr [ebp-8],eax
>0046F423    jmp         0046F72F
 0046F428    mov         eax,dword ptr [ebp-4]
 0046F42B    fild        qword ptr [eax+8]
 0046F42E    fdiv        dword ptr ds:[46F764]
 0046F434    call        @ROUND
 0046F439    push        eax
 0046F43A    sar         eax,1F
 0046F43D    cmp         eax,edx
 0046F43F    pop         eax
>0046F440    je          0046F447
 0046F442    call        @BoundErr
 0046F447    mov         dword ptr [ebp-8],eax
>0046F44A    jmp         0046F72F
 0046F44F    mov         eax,dword ptr [ebp-4]
 0046F452    fld         qword ptr [eax+8]
 0046F455    call        @ROUND
 0046F45A    push        eax
 0046F45B    sar         eax,1F
 0046F45E    cmp         eax,edx
 0046F460    pop         eax
>0046F461    je          0046F468
 0046F463    call        @BoundErr
 0046F468    mov         dword ptr [ebp-8],eax
>0046F46B    jmp         0046F72F
 0046F470    mov         eax,dword ptr [ebp-4]
 0046F473    call        VarToIntAsString
 0046F478    mov         dword ptr [ebp-8],eax
>0046F47B    jmp         0046F72F
 0046F480    mov         eax,dword ptr [ebp-4]
 0046F483    movsx       eax,word ptr [eax+8]
 0046F487    mov         dword ptr [ebp-8],eax
>0046F48A    jmp         0046F72F
 0046F48F    mov         eax,dword ptr [ebp-4]
 0046F492    movsx       eax,byte ptr [eax+8]
 0046F496    mov         dword ptr [ebp-8],eax
>0046F499    jmp         0046F72F
 0046F49E    mov         eax,dword ptr [ebp-4]
 0046F4A1    movzx       eax,byte ptr [eax+8]
 0046F4A5    mov         dword ptr [ebp-8],eax
>0046F4A8    jmp         0046F72F
 0046F4AD    mov         eax,dword ptr [ebp-4]
 0046F4B0    movzx       eax,word ptr [eax+8]
 0046F4B4    mov         dword ptr [ebp-8],eax
>0046F4B7    jmp         0046F72F
 0046F4BC    mov         eax,dword ptr [ebp-4]
 0046F4BF    mov         eax,dword ptr [eax+8]
 0046F4C2    test        eax,eax
>0046F4C4    jns         0046F4CB
 0046F4C6    call        @BoundErr
 0046F4CB    mov         dword ptr [ebp-8],eax
>0046F4CE    jmp         0046F72F
 0046F4D3    mov         eax,dword ptr [ebp-4]
 0046F4D6    mov         edx,dword ptr [eax+0C]
 0046F4D9    mov         eax,dword ptr [eax+8]
 0046F4DC    push        eax
 0046F4DD    sar         eax,1F
 0046F4E0    cmp         eax,edx
 0046F4E2    pop         eax
>0046F4E3    je          0046F4EA
 0046F4E5    call        @BoundErr
 0046F4EA    mov         dword ptr [ebp-8],eax
>0046F4ED    jmp         0046F72F
 0046F4F2    mov         eax,dword ptr [ebp-4]
 0046F4F5    mov         eax,dword ptr [eax+8]
 0046F4F8    call        @VarToInteger
 0046F4FD    mov         dword ptr [ebp-8],eax
>0046F500    jmp         0046F72F
 0046F505    mov         eax,dword ptr [ebp-4]
 0046F508    call        VarToIntViaOS
 0046F50D    mov         dword ptr [ebp-8],eax
>0046F510    jmp         0046F72F
 0046F515    mov         edx,dword ptr [ebp-4]
 0046F518    mov         edx,eax
 0046F51A    sub         dx,100
>0046F51F    je          0046F528
 0046F521    dec         dx
>0046F524    je          0046F538
>0046F526    jmp         0046F548
 0046F528    mov         eax,dword ptr [ebp-4]
 0046F52B    call        VarToIntAsString
 0046F530    mov         dword ptr [ebp-8],eax
>0046F533    jmp         0046F72F
 0046F538    mov         eax,dword ptr [ebp-4]
 0046F53B    call        VarToIntAny
 0046F540    mov         dword ptr [ebp-8],eax
>0046F543    jmp         0046F72F
 0046F548    mov         edx,dword ptr [ebp-4]
 0046F54B    test        ah,40
>0046F54E    je          0046F715
 0046F554    mov         edx,dword ptr [ebp-4]
 0046F557    movzx       eax,ax
 0046F55A    and         eax,0FFFFBFFF
 0046F55F    cmp         eax,14
>0046F562    ja          0046F708
 0046F568    jmp         dword ptr [eax*4+46F56F]
 0046F568    dd          0046F708
 0046F568    dd          0046F708
 0046F568    dd          0046F5C3
 0046F568    dd          0046F5D4
 0046F568    dd          0046F5E4
 0046F568    dd          0046F607
 0046F568    dd          0046F62A
 0046F568    dd          0046F653
 0046F568    dd          0046F676
 0046F568    dd          0046F708
 0046F568    dd          0046F708
 0046F568    dd          0046F686
 0046F568    dd          0046F6F8
 0046F568    dd          0046F708
 0046F568    dd          0046F708
 0046F568    dd          0046F708
 0046F568    dd          0046F697
 0046F568    dd          0046F6A8
 0046F568    dd          0046F6B6
 0046F568    dd          0046F6C4
 0046F568    dd          0046F6DA
 0046F5C3    mov         eax,dword ptr [ebp-4]
 0046F5C6    mov         eax,dword ptr [eax+8]
 0046F5C9    movsx       eax,word ptr [eax]
 0046F5CC    mov         dword ptr [ebp-8],eax
>0046F5CF    jmp         0046F72F
 0046F5D4    mov         eax,dword ptr [ebp-4]
 0046F5D7    mov         eax,dword ptr [eax+8]
 0046F5DA    mov         eax,dword ptr [eax]
 0046F5DC    mov         dword ptr [ebp-8],eax
>0046F5DF    jmp         0046F72F
 0046F5E4    mov         eax,dword ptr [ebp-4]
 0046F5E7    mov         eax,dword ptr [eax+8]
 0046F5EA    fld         dword ptr [eax]
 0046F5EC    call        @ROUND
 0046F5F1    push        eax
 0046F5F2    sar         eax,1F
 0046F5F5    cmp         eax,edx
 0046F5F7    pop         eax
>0046F5F8    je          0046F5FF
 0046F5FA    call        @BoundErr
 0046F5FF    mov         dword ptr [ebp-8],eax
>0046F602    jmp         0046F72F
 0046F607    mov         eax,dword ptr [ebp-4]
 0046F60A    mov         eax,dword ptr [eax+8]
 0046F60D    fld         qword ptr [eax]
 0046F60F    call        @ROUND
 0046F614    push        eax
 0046F615    sar         eax,1F
 0046F618    cmp         eax,edx
 0046F61A    pop         eax
>0046F61B    je          0046F622
 0046F61D    call        @BoundErr
 0046F622    mov         dword ptr [ebp-8],eax
>0046F625    jmp         0046F72F
 0046F62A    mov         eax,dword ptr [ebp-4]
 0046F62D    mov         eax,dword ptr [eax+8]
 0046F630    fild        qword ptr [eax]
 0046F632    fdiv        dword ptr ds:[46F764]
 0046F638    call        @ROUND
 0046F63D    push        eax
 0046F63E    sar         eax,1F
 0046F641    cmp         eax,edx
 0046F643    pop         eax
>0046F644    je          0046F64B
 0046F646    call        @BoundErr
 0046F64B    mov         dword ptr [ebp-8],eax
>0046F64E    jmp         0046F72F
 0046F653    mov         eax,dword ptr [ebp-4]
 0046F656    mov         eax,dword ptr [eax+8]
 0046F659    fld         qword ptr [eax]
 0046F65B    call        @ROUND
 0046F660    push        eax
 0046F661    sar         eax,1F
 0046F664    cmp         eax,edx
 0046F666    pop         eax
>0046F667    je          0046F66E
 0046F669    call        @BoundErr
 0046F66E    mov         dword ptr [ebp-8],eax
>0046F671    jmp         0046F72F
 0046F676    mov         eax,dword ptr [ebp-4]
 0046F679    call        VarToIntAsString
 0046F67E    mov         dword ptr [ebp-8],eax
>0046F681    jmp         0046F72F
 0046F686    mov         eax,dword ptr [ebp-4]
 0046F689    mov         eax,dword ptr [eax+8]
 0046F68C    movsx       eax,word ptr [eax]
 0046F68F    mov         dword ptr [ebp-8],eax
>0046F692    jmp         0046F72F
 0046F697    mov         eax,dword ptr [ebp-4]
 0046F69A    mov         eax,dword ptr [eax+8]
 0046F69D    movsx       eax,byte ptr [eax]
 0046F6A0    mov         dword ptr [ebp-8],eax
>0046F6A3    jmp         0046F72F
 0046F6A8    mov         eax,dword ptr [ebp-4]
 0046F6AB    mov         eax,dword ptr [eax+8]
 0046F6AE    movzx       eax,byte ptr [eax]
 0046F6B1    mov         dword ptr [ebp-8],eax
>0046F6B4    jmp         0046F72F
 0046F6B6    mov         eax,dword ptr [ebp-4]
 0046F6B9    mov         eax,dword ptr [eax+8]
 0046F6BC    movzx       eax,word ptr [eax]
 0046F6BF    mov         dword ptr [ebp-8],eax
>0046F6C2    jmp         0046F72F
 0046F6C4    mov         eax,dword ptr [ebp-4]
 0046F6C7    mov         eax,dword ptr [eax+8]
 0046F6CA    mov         eax,dword ptr [eax]
 0046F6CC    test        eax,eax
>0046F6CE    jns         0046F6D5
 0046F6D0    call        @BoundErr
 0046F6D5    mov         dword ptr [ebp-8],eax
>0046F6D8    jmp         0046F72F
 0046F6DA    mov         eax,dword ptr [ebp-4]
 0046F6DD    mov         eax,dword ptr [eax+8]
 0046F6E0    mov         edx,dword ptr [eax+4]
 0046F6E3    mov         eax,dword ptr [eax]
 0046F6E5    push        eax
 0046F6E6    sar         eax,1F
 0046F6E9    cmp         eax,edx
 0046F6EB    pop         eax
>0046F6EC    je          0046F6F3
 0046F6EE    call        @BoundErr
 0046F6F3    mov         dword ptr [ebp-8],eax
>0046F6F6    jmp         0046F72F
 0046F6F8    mov         eax,dword ptr [ebp-4]
 0046F6FB    mov         eax,dword ptr [eax+8]
 0046F6FE    call        @VarToInteger
 0046F703    mov         dword ptr [ebp-8],eax
>0046F706    jmp         0046F72F
 0046F708    mov         eax,dword ptr [ebp-4]
 0046F70B    call        VarToIntViaOS
 0046F710    mov         dword ptr [ebp-8],eax
>0046F713    jmp         0046F72F
 0046F715    lea         edx,[ebp-8]
 0046F718    mov         eax,dword ptr [ebp-4]
 0046F71B    call        VarToIntCustom
 0046F720    test        al,al
>0046F722    jne         0046F72F
 0046F724    mov         eax,dword ptr [ebp-4]
 0046F727    call        VarToIntViaOS
 0046F72C    mov         dword ptr [ebp-8],eax
 0046F72F    xor         eax,eax
 0046F731    pop         edx
 0046F732    pop         ecx
 0046F733    pop         ecx
 0046F734    mov         dword ptr fs:[eax],edx
>0046F737    jmp         0046F757
>0046F739    jmp         @HandleAnyException
 0046F73E    mov         eax,dword ptr [ebp-4]
 0046F741    mov         ax,word ptr [eax]
 0046F744    mov         dx,3
 0046F748    call        HandleConversionException
 0046F74D    xor         eax,eax
 0046F74F    mov         dword ptr [ebp-8],eax
 0046F752    call        @DoneExcept
 0046F757    mov         eax,dword ptr [ebp-8]
 0046F75A    pop         edi
 0046F75B    pop         esi
 0046F75C    pop         ebx
 0046F75D    pop         ecx
 0046F75E    pop         ecx
 0046F75F    pop         ebp
 0046F760    ret
*}
end;

//0046F768
function @VarToShortInt(const V:TVarData):Shortint;
begin
{*
 0046F768    push        ebp
 0046F769    mov         ebp,esp
 0046F76B    push        ecx
 0046F76C    push        ebx
 0046F76D    push        esi
 0046F76E    push        edi
 0046F76F    mov         dword ptr [ebp-4],eax
 0046F772    mov         eax,dword ptr [ebp-4]
 0046F775    mov         ax,word ptr [eax]
 0046F778    sub         ax,1
>0046F77C    jb          0046F78E
>0046F77E    je          0046F792
 0046F780    sub         ax,0A
>0046F784    je          0046F7AC
 0046F786    sub         ax,5
>0046F78A    je          0046F7B4
>0046F78C    jmp         0046F7BC
 0046F78E    xor         ebx,ebx
>0046F790    jmp         0046F80F
 0046F792    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>0046F799    je          0046F7A8
 0046F79B    mov         dx,10
 0046F79F    mov         ax,1
 0046F7A3    call        VarCastError
 0046F7A8    xor         ebx,ebx
>0046F7AA    jmp         0046F80F
 0046F7AC    mov         ebx,dword ptr [ebp-4]
 0046F7AF    mov         bl,byte ptr [ebx+8]
>0046F7B2    jmp         0046F80F
 0046F7B4    mov         ebx,dword ptr [ebp-4]
 0046F7B7    mov         bl,byte ptr [ebx+8]
>0046F7BA    jmp         0046F80F
 0046F7BC    xor         eax,eax
 0046F7BE    push        ebp
 0046F7BF    push        46F7F4
 0046F7C4    push        dword ptr fs:[eax]
 0046F7C7    mov         dword ptr fs:[eax],esp
 0046F7CA    mov         eax,dword ptr [ebp-4]
 0046F7CD    call        @VarToInteger
 0046F7D2    mov         ebx,eax
 0046F7D4    add         ebx,80
 0046F7DA    cmp         ebx,0FF
>0046F7E0    jbe         0046F7E7
 0046F7E2    call        @BoundErr
 0046F7E7    add         ebx,0FFFFFF80
 0046F7EA    xor         eax,eax
 0046F7EC    pop         edx
 0046F7ED    pop         ecx
 0046F7EE    pop         ecx
 0046F7EF    mov         dword ptr fs:[eax],edx
>0046F7F2    jmp         0046F80F
>0046F7F4    jmp         @HandleAnyException
 0046F7F9    mov         eax,dword ptr [ebp-4]
 0046F7FC    mov         ax,word ptr [eax]
 0046F7FF    mov         dx,10
 0046F803    call        HandleConversionException
 0046F808    xor         ebx,ebx
 0046F80A    call        @DoneExcept
 0046F80F    mov         eax,ebx
 0046F811    pop         edi
 0046F812    pop         esi
 0046F813    pop         ebx
 0046F814    pop         ecx
 0046F815    pop         ebp
 0046F816    ret
*}
end;

//0046F818
function @VarToByte(const V:TVarData):Byte;
begin
{*
 0046F818    push        ebp
 0046F819    mov         ebp,esp
 0046F81B    push        ecx
 0046F81C    push        ebx
 0046F81D    push        esi
 0046F81E    push        edi
 0046F81F    mov         dword ptr [ebp-4],eax
 0046F822    mov         eax,dword ptr [ebp-4]
 0046F825    mov         ax,word ptr [eax]
 0046F828    sub         ax,1
>0046F82C    jb          0046F83E
>0046F82E    je          0046F842
 0046F830    sub         ax,0A
>0046F834    je          0046F85C
 0046F836    sub         ax,6
>0046F83A    je          0046F864
>0046F83C    jmp         0046F86C
 0046F83E    xor         ebx,ebx
>0046F840    jmp         0046F8B6
 0046F842    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>0046F849    je          0046F858
 0046F84B    mov         dx,11
 0046F84F    mov         ax,1
 0046F853    call        VarCastError
 0046F858    xor         ebx,ebx
>0046F85A    jmp         0046F8B6
 0046F85C    mov         ebx,dword ptr [ebp-4]
 0046F85F    mov         bl,byte ptr [ebx+8]
>0046F862    jmp         0046F8B6
 0046F864    mov         ebx,dword ptr [ebp-4]
 0046F867    mov         bl,byte ptr [ebx+8]
>0046F86A    jmp         0046F8B6
 0046F86C    xor         eax,eax
 0046F86E    push        ebp
 0046F86F    push        46F89B
 0046F874    push        dword ptr fs:[eax]
 0046F877    mov         dword ptr fs:[eax],esp
 0046F87A    mov         eax,dword ptr [ebp-4]
 0046F87D    call        @VarToInteger
 0046F882    mov         ebx,eax
 0046F884    cmp         ebx,0FF
>0046F88A    jbe         0046F891
 0046F88C    call        @BoundErr
 0046F891    xor         eax,eax
 0046F893    pop         edx
 0046F894    pop         ecx
 0046F895    pop         ecx
 0046F896    mov         dword ptr fs:[eax],edx
>0046F899    jmp         0046F8B6
>0046F89B    jmp         @HandleAnyException
 0046F8A0    mov         eax,dword ptr [ebp-4]
 0046F8A3    mov         ax,word ptr [eax]
 0046F8A6    mov         dx,11
 0046F8AA    call        HandleConversionException
 0046F8AF    xor         ebx,ebx
 0046F8B1    call        @DoneExcept
 0046F8B6    mov         eax,ebx
 0046F8B8    pop         edi
 0046F8B9    pop         esi
 0046F8BA    pop         ebx
 0046F8BB    pop         ecx
 0046F8BC    pop         ebp
 0046F8BD    ret
*}
end;

//0046F8C0
function @VarToSmallInt(const V:TVarData):Smallint;
begin
{*
 0046F8C0    push        ebp
 0046F8C1    mov         ebp,esp
 0046F8C3    push        ecx
 0046F8C4    push        ebx
 0046F8C5    push        esi
 0046F8C6    push        edi
 0046F8C7    mov         dword ptr [ebp-4],eax
 0046F8CA    mov         eax,dword ptr [ebp-4]
 0046F8CD    movzx       eax,word ptr [eax]
 0046F8D0    cmp         eax,11
>0046F8D3    ja          0046F959
 0046F8D9    mov         al,byte ptr [eax+46F8E6]
 0046F8DF    jmp         dword ptr [eax*4+46F8F8]
 0046F8DF    db          1
 0046F8DF    db          2
 0046F8DF    db          3
 0046F8DF    db          0
 0046F8DF    db          0
 0046F8DF    db          0
 0046F8DF    db          0
 0046F8DF    db          0
 0046F8DF    db          0
 0046F8DF    db          0
 0046F8DF    db          0
 0046F8DF    db          4
 0046F8DF    db          0
 0046F8DF    db          0
 0046F8DF    db          0
 0046F8DF    db          0
 0046F8DF    db          5
 0046F8DF    db          6
 0046F8DF    dd          0046F959
 0046F8DF    dd          0046F914
 0046F8DF    dd          0046F91B
 0046F8DF    dd          0046F935
 0046F8DF    dd          0046F93E
 0046F8DF    dd          0046F947
 0046F8DF    dd          0046F950
 0046F914    xor         ebx,ebx
>0046F916    jmp         0046F9AF
 0046F91B    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>0046F922    je          0046F931
 0046F924    mov         dx,2
 0046F928    mov         ax,1
 0046F92C    call        VarCastError
 0046F931    xor         ebx,ebx
>0046F933    jmp         0046F9AF
 0046F935    mov         ebx,dword ptr [ebp-4]
 0046F938    mov         bx,word ptr [ebx+8]
>0046F93C    jmp         0046F9AF
 0046F93E    mov         ebx,dword ptr [ebp-4]
 0046F941    mov         bx,word ptr [ebx+8]
>0046F945    jmp         0046F9AF
 0046F947    mov         ebx,dword ptr [ebp-4]
 0046F94A    movsx       ebx,byte ptr [ebx+8]
>0046F94E    jmp         0046F9AF
 0046F950    mov         ebx,dword ptr [ebp-4]
 0046F953    movzx       ebx,byte ptr [ebx+8]
>0046F957    jmp         0046F9AF
 0046F959    xor         eax,eax
 0046F95B    push        ebp
 0046F95C    push        46F994
 0046F961    push        dword ptr fs:[eax]
 0046F964    mov         dword ptr fs:[eax],esp
 0046F967    mov         eax,dword ptr [ebp-4]
 0046F96A    call        @VarToInteger
 0046F96F    mov         ebx,eax
 0046F971    add         ebx,8000
 0046F977    cmp         ebx,0FFFF
>0046F97D    jbe         0046F984
 0046F97F    call        @BoundErr
 0046F984    add         ebx,0FFFF8000
 0046F98A    xor         eax,eax
 0046F98C    pop         edx
 0046F98D    pop         ecx
 0046F98E    pop         ecx
 0046F98F    mov         dword ptr fs:[eax],edx
>0046F992    jmp         0046F9AF
>0046F994    jmp         @HandleAnyException
 0046F999    mov         eax,dword ptr [ebp-4]
 0046F99C    mov         ax,word ptr [eax]
 0046F99F    mov         dx,2
 0046F9A3    call        HandleConversionException
 0046F9A8    xor         ebx,ebx
 0046F9AA    call        @DoneExcept
 0046F9AF    mov         eax,ebx
 0046F9B1    pop         edi
 0046F9B2    pop         esi
 0046F9B3    pop         ebx
 0046F9B4    pop         ecx
 0046F9B5    pop         ebp
 0046F9B6    ret
*}
end;

//0046F9B8
function @VarToWord(const V:TVarData):Word;
begin
{*
 0046F9B8    push        ebp
 0046F9B9    mov         ebp,esp
 0046F9BB    push        ecx
 0046F9BC    push        ebx
 0046F9BD    push        esi
 0046F9BE    push        edi
 0046F9BF    mov         dword ptr [ebp-4],eax
 0046F9C2    mov         eax,dword ptr [ebp-4]
 0046F9C5    movzx       eax,word ptr [eax]
 0046F9C8    cmp         eax,12
>0046F9CB    ja          0046FA3E
 0046F9CD    mov         al,byte ptr [eax+46F9DA]
 0046F9D3    jmp         dword ptr [eax*4+46F9ED]
 0046F9D3    db          1
 0046F9D3    db          2
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          3
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          0
 0046F9D3    db          4
 0046F9D3    db          5
 0046F9D3    dd          0046FA3E
 0046F9D3    dd          0046FA05
 0046F9D3    dd          0046FA09
 0046F9D3    dd          0046FA23
 0046F9D3    dd          0046FA2C
 0046F9D3    dd          0046FA35
 0046FA05    xor         ebx,ebx
>0046FA07    jmp         0046FA88
 0046FA09    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>0046FA10    je          0046FA1F
 0046FA12    mov         dx,12
 0046FA16    mov         ax,1
 0046FA1A    call        VarCastError
 0046FA1F    xor         ebx,ebx
>0046FA21    jmp         0046FA88
 0046FA23    mov         ebx,dword ptr [ebp-4]
 0046FA26    mov         bx,word ptr [ebx+8]
>0046FA2A    jmp         0046FA88
 0046FA2C    mov         ebx,dword ptr [ebp-4]
 0046FA2F    movzx       ebx,byte ptr [ebx+8]
>0046FA33    jmp         0046FA88
 0046FA35    mov         ebx,dword ptr [ebp-4]
 0046FA38    mov         bx,word ptr [ebx+8]
>0046FA3C    jmp         0046FA88
 0046FA3E    xor         eax,eax
 0046FA40    push        ebp
 0046FA41    push        46FA6D
 0046FA46    push        dword ptr fs:[eax]
 0046FA49    mov         dword ptr fs:[eax],esp
 0046FA4C    mov         eax,dword ptr [ebp-4]
 0046FA4F    call        @VarToInteger
 0046FA54    mov         ebx,eax
 0046FA56    cmp         ebx,0FFFF
>0046FA5C    jbe         0046FA63
 0046FA5E    call        @BoundErr
 0046FA63    xor         eax,eax
 0046FA65    pop         edx
 0046FA66    pop         ecx
 0046FA67    pop         ecx
 0046FA68    mov         dword ptr fs:[eax],edx
>0046FA6B    jmp         0046FA88
>0046FA6D    jmp         @HandleAnyException
 0046FA72    mov         eax,dword ptr [ebp-4]
 0046FA75    mov         ax,word ptr [eax]
 0046FA78    mov         dx,12
 0046FA7C    call        HandleConversionException
 0046FA81    xor         ebx,ebx
 0046FA83    call        @DoneExcept
 0046FA88    mov         eax,ebx
 0046FA8A    pop         edi
 0046FA8B    pop         esi
 0046FA8C    pop         ebx
 0046FA8D    pop         ecx
 0046FA8E    pop         ebp
 0046FA8F    ret
*}
end;

//0046FA90
function @VarToLongWord(const V:TVarData):LongWord;
begin
{*
 0046FA90    push        ebp
 0046FA91    mov         ebp,esp
 0046FA93    push        ecx
 0046FA94    push        ebx
 0046FA95    push        esi
 0046FA96    push        edi
 0046FA97    mov         dword ptr [ebp-4],eax
 0046FA9A    mov         eax,dword ptr [ebp-4]
 0046FA9D    movzx       eax,word ptr [eax]
 0046FAA0    cmp         eax,13
>0046FAA3    ja          0046FB2A
 0046FAA9    mov         al,byte ptr [eax+46FAB6]
 0046FAAF    jmp         dword ptr [eax*4+46FACA]
 0046FAAF    db          1
 0046FAAF    db          2
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          3
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          0
 0046FAAF    db          4
 0046FAAF    db          5
 0046FAAF    db          6
 0046FAAF    dd          0046FB2A
 0046FAAF    dd          0046FAE6
 0046FAAF    dd          0046FAED
 0046FAAF    dd          0046FB07
 0046FAAF    dd          0046FB10
 0046FAAF    dd          0046FB19
 0046FAAF    dd          0046FB22
 0046FAE6    xor         ebx,ebx
>0046FAE8    jmp         0046FB70
 0046FAED    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>0046FAF4    je          0046FB03
 0046FAF6    mov         dx,13
 0046FAFA    mov         ax,1
 0046FAFE    call        VarCastError
 0046FB03    xor         ebx,ebx
>0046FB05    jmp         0046FB70
 0046FB07    mov         ebx,dword ptr [ebp-4]
 0046FB0A    movsx       ebx,word ptr [ebx+8]
>0046FB0E    jmp         0046FB70
 0046FB10    mov         ebx,dword ptr [ebp-4]
 0046FB13    movzx       ebx,byte ptr [ebx+8]
>0046FB17    jmp         0046FB70
 0046FB19    mov         ebx,dword ptr [ebp-4]
 0046FB1C    movzx       ebx,word ptr [ebx+8]
>0046FB20    jmp         0046FB70
 0046FB22    mov         ebx,dword ptr [ebp-4]
 0046FB25    mov         ebx,dword ptr [ebx+8]
>0046FB28    jmp         0046FB70
 0046FB2A    xor         eax,eax
 0046FB2C    push        ebp
 0046FB2D    push        46FB55
 0046FB32    push        dword ptr fs:[eax]
 0046FB35    mov         dword ptr fs:[eax],esp
 0046FB38    mov         eax,dword ptr [ebp-4]
 0046FB3B    call        @VarToInt64
 0046FB40    test        edx,edx
>0046FB42    je          0046FB49
 0046FB44    call        @BoundErr
 0046FB49    mov         ebx,eax
 0046FB4B    xor         eax,eax
 0046FB4D    pop         edx
 0046FB4E    pop         ecx
 0046FB4F    pop         ecx
 0046FB50    mov         dword ptr fs:[eax],edx
>0046FB53    jmp         0046FB70
>0046FB55    jmp         @HandleAnyException
 0046FB5A    mov         eax,dword ptr [ebp-4]
 0046FB5D    mov         ax,word ptr [eax]
 0046FB60    mov         dx,13
 0046FB64    call        HandleConversionException
 0046FB69    xor         ebx,ebx
 0046FB6B    call        @DoneExcept
 0046FB70    mov         eax,ebx
 0046FB72    pop         edi
 0046FB73    pop         esi
 0046FB74    pop         ebx
 0046FB75    pop         ecx
 0046FB76    pop         ebp
 0046FB77    ret
*}
end;

//0046FB78
function VarToInt64ViaOS(const V:TVarData):Int64;
begin
{*
 0046FB78    push        ebx
 0046FB79    add         esp,0FFFFFFE8
 0046FB7C    mov         ebx,eax
 0046FB7E    lea         eax,[esp+8]
 0046FB82    push        eax
 0046FB83    call        oleaut32.VariantInit
 0046FB88    push        3
 0046FB8A    push        0
 0046FB8C    push        400
 0046FB91    push        ebx
 0046FB92    lea         eax,[esp+18]
 0046FB96    push        eax
 0046FB97    mov         eax,[0055B5C0];^gvar_0055DA24
 0046FB9C    mov         eax,dword ptr [eax]
 0046FB9E    call        eax
 0046FBA0    test        eax,eax
>0046FBA2    jne         0046FBB2
 0046FBA4    mov         eax,dword ptr [esp+10]
 0046FBA8    cdq
 0046FBA9    mov         dword ptr [esp],eax
 0046FBAC    mov         dword ptr [esp+4],edx
>0046FBB0    jmp         0046FC17
 0046FBB2    push        5
 0046FBB4    push        0
 0046FBB6    push        400
 0046FBBB    push        ebx
 0046FBBC    lea         eax,[esp+18]
 0046FBC0    push        eax
 0046FBC1    mov         eax,[0055B5C0];^gvar_0055DA24
 0046FBC6    mov         eax,dword ptr [eax]
 0046FBC8    call        eax
 0046FBCA    test        eax,eax
>0046FBCC    jne         0046FBE0
 0046FBCE    fld         qword ptr [esp+10]
 0046FBD2    call        @ROUND
 0046FBD7    mov         dword ptr [esp],eax
 0046FBDA    mov         dword ptr [esp+4],edx
>0046FBDE    jmp         0046FC17
 0046FBE0    cmp         eax,80020005
>0046FBE5    jne         0046FBFC
 0046FBE7    mov         eax,ebx
 0046FBE9    call        @VarToBoolean
 0046FBEE    and         eax,7F
 0046FBF1    xor         edx,edx
 0046FBF3    mov         dword ptr [esp],eax
 0046FBF6    mov         dword ptr [esp+4],edx
>0046FBFA    jmp         0046FC17
 0046FBFC    mov         dx,word ptr [ebx]
 0046FBFF    mov         cx,14
 0046FC03    call        VarResultCheck
 0046FC08    mov         dword ptr [esp],0
 0046FC0F    mov         dword ptr [esp+4],0
 0046FC17    mov         eax,dword ptr [esp]
 0046FC1A    mov         edx,dword ptr [esp+4]
 0046FC1E    add         esp,18
 0046FC21    pop         ebx
 0046FC22    ret
*}
end;

//0046FC24
function VarToInt64AsString(const V:TVarData):Int64;
begin
{*
 0046FC24    push        ebp
 0046FC25    mov         ebp,esp
 0046FC27    add         esp,0FFFFFFE4
 0046FC2A    push        ebx
 0046FC2B    xor         edx,edx
 0046FC2D    mov         dword ptr [ebp-1C],edx
 0046FC30    mov         dword ptr [ebp-0C],edx
 0046FC33    mov         ebx,eax
 0046FC35    xor         eax,eax
 0046FC37    push        ebp
 0046FC38    push        46FD12
 0046FC3D    push        dword ptr fs:[eax]
 0046FC40    mov         dword ptr fs:[eax],esp
 0046FC43    mov         edx,ebx
 0046FC45    lea         eax,[ebp-0C]
 0046FC48    call        @VarToWStr
 0046FC4D    lea         eax,[ebp-1C]
 0046FC50    mov         edx,dword ptr [ebp-0C]
 0046FC53    call        @LStrFromWStr
 0046FC58    mov         eax,dword ptr [ebp-1C]
 0046FC5B    lea         edx,[ebp-8]
 0046FC5E    call        00466B68
 0046FC63    test        al,al
>0046FC65    jne         0046FCF4
 0046FC6B    lea         eax,[ebp-10]
 0046FC6E    push        eax
 0046FC6F    push        0
 0046FC71    push        400
 0046FC76    mov         eax,dword ptr [ebp-0C]
 0046FC79    push        eax
 0046FC7A    mov         eax,[0055B6A8];^gvar_0055DA58
 0046FC7F    mov         eax,dword ptr [eax]
 0046FC81    call        eax
 0046FC83    test        eax,eax
>0046FC85    jne         0046FC93
 0046FC87    mov         eax,dword ptr [ebp-10]
 0046FC8A    cdq
 0046FC8B    mov         dword ptr [ebp-8],eax
 0046FC8E    mov         dword ptr [ebp-4],edx
>0046FC91    jmp         0046FCF4
 0046FC93    lea         eax,[ebp-18]
 0046FC96    push        eax
 0046FC97    push        0
 0046FC99    push        400
 0046FC9E    mov         eax,dword ptr [ebp-0C]
 0046FCA1    push        eax
 0046FCA2    mov         eax,[0055B444];^gvar_0055DA60
 0046FCA7    mov         eax,dword ptr [eax]
 0046FCA9    call        eax
 0046FCAB    test        eax,eax
>0046FCAD    jne         0046FCBF
 0046FCAF    fld         qword ptr [ebp-18]
 0046FCB2    call        @ROUND
 0046FCB7    mov         dword ptr [ebp-8],eax
 0046FCBA    mov         dword ptr [ebp-4],edx
>0046FCBD    jmp         0046FCF4
 0046FCBF    cmp         eax,80020005
>0046FCC4    jne         0046FCDA
 0046FCC6    mov         eax,ebx
 0046FCC8    call        @VarToBoolean
 0046FCCD    and         eax,7F
 0046FCD0    xor         edx,edx
 0046FCD2    mov         dword ptr [ebp-8],eax
 0046FCD5    mov         dword ptr [ebp-4],edx
>0046FCD8    jmp         0046FCF4
 0046FCDA    mov         dx,word ptr [ebx]
 0046FCDD    mov         cx,14
 0046FCE1    call        VarResultCheck
 0046FCE6    mov         dword ptr [ebp-8],0
 0046FCED    mov         dword ptr [ebp-4],0
 0046FCF4    xor         eax,eax
 0046FCF6    pop         edx
 0046FCF7    pop         ecx
 0046FCF8    pop         ecx
 0046FCF9    mov         dword ptr fs:[eax],edx
 0046FCFC    push        46FD19
 0046FD01    lea         eax,[ebp-1C]
 0046FD04    call        @LStrClr
 0046FD09    lea         eax,[ebp-0C]
 0046FD0C    call        @WStrClr
 0046FD11    ret
>0046FD12    jmp         @HandleFinally
>0046FD17    jmp         0046FD01
 0046FD19    mov         eax,dword ptr [ebp-8]
 0046FD1C    mov         edx,dword ptr [ebp-4]
 0046FD1F    pop         ebx
 0046FD20    mov         esp,ebp
 0046FD22    pop         ebp
 0046FD23    ret
*}
end;

//0046FD24
function VarToInt64Any(const V:TVarData):Int64;
begin
{*
 0046FD24    push        ebp
 0046FD25    mov         ebp,esp
 0046FD27    add         esp,0FFFFFFE8
 0046FD2A    push        ebx
 0046FD2B    mov         ebx,eax
 0046FD2D    lea         eax,[ebp-18]
 0046FD30    push        eax
 0046FD31    call        oleaut32.VariantInit
 0046FD36    xor         eax,eax
 0046FD38    push        ebp
 0046FD39    push        46FD7B
 0046FD3E    push        dword ptr fs:[eax]
 0046FD41    mov         dword ptr fs:[eax],esp
 0046FD44    mov         edx,ebx
 0046FD46    lea         eax,[ebp-18]
 0046FD49    call        @VarCopy
 0046FD4E    lea         eax,[ebp-18]
 0046FD51    call        dword ptr ds:[55DA98]
 0046FD57    lea         eax,[ebp-18]
 0046FD5A    call        @VarToInt64
 0046FD5F    mov         dword ptr [ebp-8],eax
 0046FD62    mov         dword ptr [ebp-4],edx
 0046FD65    xor         eax,eax
 0046FD67    pop         edx
 0046FD68    pop         ecx
 0046FD69    pop         ecx
 0046FD6A    mov         dword ptr fs:[eax],edx
 0046FD6D    push        46FD82
 0046FD72    lea         eax,[ebp-18]
 0046FD75    call        @VarClear
 0046FD7A    ret
>0046FD7B    jmp         @HandleFinally
>0046FD80    jmp         0046FD72
 0046FD82    mov         eax,dword ptr [ebp-8]
 0046FD85    mov         edx,dword ptr [ebp-4]
 0046FD88    pop         ebx
 0046FD89    mov         esp,ebp
 0046FD8B    pop         ebp
 0046FD8C    ret
*}
end;

//0046FD90
function VarToInt64Custom(const V:TVarData; var AValue:Int64):Boolean;
begin
{*
 0046FD90    push        ebx
 0046FD91    push        esi
 0046FD92    push        edi
 0046FD93    add         esp,0FFFFFFEC
 0046FD96    mov         edi,edx
 0046FD98    mov         esi,eax
 0046FD9A    mov         edx,esp
 0046FD9C    mov         ax,word ptr [esi]
 0046FD9F    call        FindCustomVariantType
 0046FDA4    mov         ebx,eax
 0046FDA6    test        bl,bl
>0046FDA8    je          0046FDD2
 0046FDAA    lea         eax,[esp+4]
 0046FDAE    push        eax
 0046FDAF    call        oleaut32.VariantInit
 0046FDB4    push        14
 0046FDB6    mov         ecx,esi
 0046FDB8    lea         edx,[esp+8]
 0046FDBC    mov         eax,dword ptr [esp+4]
 0046FDC0    mov         esi,dword ptr [eax]
 0046FDC2    call        dword ptr [esi+1C]
 0046FDC5    mov         eax,dword ptr [esp+0C]
 0046FDC9    mov         dword ptr [edi],eax
 0046FDCB    mov         eax,dword ptr [esp+10]
 0046FDCF    mov         dword ptr [edi+4],eax
 0046FDD2    mov         eax,ebx
 0046FDD4    add         esp,14
 0046FDD7    pop         edi
 0046FDD8    pop         esi
 0046FDD9    pop         ebx
 0046FDDA    ret
*}
end;

//0046FDDC
function @VarToInt64(const V:TVarData):Int64;
begin
{*
 0046FDDC    push        ebp
 0046FDDD    mov         ebp,esp
 0046FDDF    add         esp,0FFFFFFF0
 0046FDE2    push        ebx
 0046FDE3    push        esi
 0046FDE4    push        edi
 0046FDE5    mov         dword ptr [ebp-4],eax
 0046FDE8    xor         edx,edx
 0046FDEA    push        ebp
 0046FDEB    push        4701E8
 0046FDF0    push        dword ptr fs:[edx]
 0046FDF3    mov         dword ptr fs:[edx],esp
 0046FDF6    mov         eax,dword ptr [ebp-4]
 0046FDF9    mov         ax,word ptr [eax]
 0046FDFC    movzx       edx,ax
 0046FDFF    cmp         edx,14
>0046FE02    ja          0046FFD3
 0046FE08    jmp         dword ptr [edx*4+46FE0F]
 0046FE08    dd          0046FE63
 0046FE08    dd          0046FE76
 0046FE08    dd          0046FE9F
 0046FE08    dd          0046FEB2
 0046FE08    dd          0046FEC4
 0046FE08    dd          0046FEDA
 0046FE08    dd          0046FEF0
 0046FE08    dd          0046FF0C
 0046FE08    dd          0046FF22
 0046FE08    dd          0046FFC0
 0046FE08    dd          0046FFD3
 0046FE08    dd          0046FF35
 0046FE08    dd          0046FFAA
 0046FE08    dd          0046FFC0
 0046FE08    dd          0046FFD3
 0046FE08    dd          0046FFD3
 0046FE08    dd          0046FF48
 0046FE08    dd          0046FF5B
 0046FE08    dd          0046FF6F
 0046FE08    dd          0046FF83
 0046FE08    dd          0046FF96
 0046FE63    mov         dword ptr [ebp-10],0
 0046FE6A    mov         dword ptr [ebp-0C],0
>0046FE71    jmp         004701DE
 0046FE76    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>0046FE7D    je          0046FE8C
 0046FE7F    mov         dx,14
 0046FE83    mov         ax,1
 0046FE87    call        VarCastError
 0046FE8C    mov         dword ptr [ebp-10],0
 0046FE93    mov         dword ptr [ebp-0C],0
>0046FE9A    jmp         004701DE
 0046FE9F    mov         eax,dword ptr [ebp-4]
 0046FEA2    movsx       eax,word ptr [eax+8]
 0046FEA6    cdq
 0046FEA7    mov         dword ptr [ebp-10],eax
 0046FEAA    mov         dword ptr [ebp-0C],edx
>0046FEAD    jmp         004701DE
 0046FEB2    mov         eax,dword ptr [ebp-4]
 0046FEB5    mov         eax,dword ptr [eax+8]
 0046FEB8    cdq
 0046FEB9    mov         dword ptr [ebp-10],eax
 0046FEBC    mov         dword ptr [ebp-0C],edx
>0046FEBF    jmp         004701DE
 0046FEC4    mov         eax,dword ptr [ebp-4]
 0046FEC7    fld         dword ptr [eax+8]
 0046FECA    call        @ROUND
 0046FECF    mov         dword ptr [ebp-10],eax
 0046FED2    mov         dword ptr [ebp-0C],edx
>0046FED5    jmp         004701DE
 0046FEDA    mov         eax,dword ptr [ebp-4]
 0046FEDD    fld         qword ptr [eax+8]
 0046FEE0    call        @ROUND
 0046FEE5    mov         dword ptr [ebp-10],eax
 0046FEE8    mov         dword ptr [ebp-0C],edx
>0046FEEB    jmp         004701DE
 0046FEF0    mov         eax,dword ptr [ebp-4]
 0046FEF3    fild        qword ptr [eax+8]
 0046FEF6    fdiv        dword ptr ds:[47021C]
 0046FEFC    call        @ROUND
 0046FF01    mov         dword ptr [ebp-10],eax
 0046FF04    mov         dword ptr [ebp-0C],edx
>0046FF07    jmp         004701DE
 0046FF0C    mov         eax,dword ptr [ebp-4]
 0046FF0F    fld         qword ptr [eax+8]
 0046FF12    call        @ROUND
 0046FF17    mov         dword ptr [ebp-10],eax
 0046FF1A    mov         dword ptr [ebp-0C],edx
>0046FF1D    jmp         004701DE
 0046FF22    mov         eax,dword ptr [ebp-4]
 0046FF25    call        VarToInt64AsString
 0046FF2A    mov         dword ptr [ebp-10],eax
 0046FF2D    mov         dword ptr [ebp-0C],edx
>0046FF30    jmp         004701DE
 0046FF35    mov         eax,dword ptr [ebp-4]
 0046FF38    movsx       eax,word ptr [eax+8]
 0046FF3C    cdq
 0046FF3D    mov         dword ptr [ebp-10],eax
 0046FF40    mov         dword ptr [ebp-0C],edx
>0046FF43    jmp         004701DE
 0046FF48    mov         eax,dword ptr [ebp-4]
 0046FF4B    movsx       eax,byte ptr [eax+8]
 0046FF4F    cdq
 0046FF50    mov         dword ptr [ebp-10],eax
 0046FF53    mov         dword ptr [ebp-0C],edx
>0046FF56    jmp         004701DE
 0046FF5B    mov         eax,dword ptr [ebp-4]
 0046FF5E    movzx       eax,byte ptr [eax+8]
 0046FF62    xor         edx,edx
 0046FF64    mov         dword ptr [ebp-10],eax
 0046FF67    mov         dword ptr [ebp-0C],edx
>0046FF6A    jmp         004701DE
 0046FF6F    mov         eax,dword ptr [ebp-4]
 0046FF72    movzx       eax,word ptr [eax+8]
 0046FF76    xor         edx,edx
 0046FF78    mov         dword ptr [ebp-10],eax
 0046FF7B    mov         dword ptr [ebp-0C],edx
>0046FF7E    jmp         004701DE
 0046FF83    mov         eax,dword ptr [ebp-4]
 0046FF86    mov         eax,dword ptr [eax+8]
 0046FF89    xor         edx,edx
 0046FF8B    mov         dword ptr [ebp-10],eax
 0046FF8E    mov         dword ptr [ebp-0C],edx
>0046FF91    jmp         004701DE
 0046FF96    mov         eax,dword ptr [ebp-4]
 0046FF99    mov         edx,dword ptr [eax+8]
 0046FF9C    mov         dword ptr [ebp-10],edx
 0046FF9F    mov         edx,dword ptr [eax+0C]
 0046FFA2    mov         dword ptr [ebp-0C],edx
>0046FFA5    jmp         004701DE
 0046FFAA    mov         eax,dword ptr [ebp-4]
 0046FFAD    mov         eax,dword ptr [eax+8]
 0046FFB0    call        @VarToInt64
 0046FFB5    mov         dword ptr [ebp-10],eax
 0046FFB8    mov         dword ptr [ebp-0C],edx
>0046FFBB    jmp         004701DE
 0046FFC0    mov         eax,dword ptr [ebp-4]
 0046FFC3    call        VarToInt64ViaOS
 0046FFC8    mov         dword ptr [ebp-10],eax
 0046FFCB    mov         dword ptr [ebp-0C],edx
>0046FFCE    jmp         004701DE
 0046FFD3    mov         edx,dword ptr [ebp-4]
 0046FFD6    mov         edx,eax
 0046FFD8    sub         dx,100
>0046FFDD    je          0046FFE6
 0046FFDF    dec         dx
>0046FFE2    je          0046FFF9
>0046FFE4    jmp         0047000C
 0046FFE6    mov         eax,dword ptr [ebp-4]
 0046FFE9    call        VarToInt64AsString
 0046FFEE    mov         dword ptr [ebp-10],eax
 0046FFF1    mov         dword ptr [ebp-0C],edx
>0046FFF4    jmp         004701DE
 0046FFF9    mov         eax,dword ptr [ebp-4]
 0046FFFC    call        VarToInt64Any
 00470001    mov         dword ptr [ebp-10],eax
 00470004    mov         dword ptr [ebp-0C],edx
>00470007    jmp         004701DE
 0047000C    mov         edx,dword ptr [ebp-4]
 0047000F    test        ah,40
>00470012    je          004701C1
 00470018    mov         edx,dword ptr [ebp-4]
 0047001B    movzx       eax,ax
 0047001E    and         eax,0FFFFBFFF
 00470023    cmp         eax,14
>00470026    ja          004701B1
 0047002C    jmp         dword ptr [eax*4+470033]
 0047002C    dd          004701B1
 0047002C    dd          004701B1
 0047002C    dd          00470087
 0047002C    dd          0047009C
 0047002C    dd          004700B0
 0047002C    dd          004700C8
 0047002C    dd          004700E0
 0047002C    dd          004700FE
 0047002C    dd          00470116
 0047002C    dd          004701B1
 0047002C    dd          004701B1
 0047002C    dd          00470129
 0047002C    dd          0047019E
 0047002C    dd          004701B1
 0047002C    dd          004701B1
 0047002C    dd          004701B1
 0047002C    dd          0047013E
 0047002C    dd          00470153
 0047002C    dd          00470166
 0047002C    dd          00470179
 0047002C    dd          0047018B
 00470087    mov         eax,dword ptr [ebp-4]
 0047008A    mov         eax,dword ptr [eax+8]
 0047008D    movsx       eax,word ptr [eax]
 00470090    cdq
 00470091    mov         dword ptr [ebp-10],eax
 00470094    mov         dword ptr [ebp-0C],edx
>00470097    jmp         004701DE
 0047009C    mov         eax,dword ptr [ebp-4]
 0047009F    mov         eax,dword ptr [eax+8]
 004700A2    mov         eax,dword ptr [eax]
 004700A4    cdq
 004700A5    mov         dword ptr [ebp-10],eax
 004700A8    mov         dword ptr [ebp-0C],edx
>004700AB    jmp         004701DE
 004700B0    mov         eax,dword ptr [ebp-4]
 004700B3    mov         eax,dword ptr [eax+8]
 004700B6    fld         dword ptr [eax]
 004700B8    call        @ROUND
 004700BD    mov         dword ptr [ebp-10],eax
 004700C0    mov         dword ptr [ebp-0C],edx
>004700C3    jmp         004701DE
 004700C8    mov         eax,dword ptr [ebp-4]
 004700CB    mov         eax,dword ptr [eax+8]
 004700CE    fld         qword ptr [eax]
 004700D0    call        @ROUND
 004700D5    mov         dword ptr [ebp-10],eax
 004700D8    mov         dword ptr [ebp-0C],edx
>004700DB    jmp         004701DE
 004700E0    mov         eax,dword ptr [ebp-4]
 004700E3    mov         eax,dword ptr [eax+8]
 004700E6    fild        qword ptr [eax]
 004700E8    fdiv        dword ptr ds:[47021C]
 004700EE    call        @ROUND
 004700F3    mov         dword ptr [ebp-10],eax
 004700F6    mov         dword ptr [ebp-0C],edx
>004700F9    jmp         004701DE
 004700FE    mov         eax,dword ptr [ebp-4]
 00470101    mov         eax,dword ptr [eax+8]
 00470104    fld         qword ptr [eax]
 00470106    call        @ROUND
 0047010B    mov         dword ptr [ebp-10],eax
 0047010E    mov         dword ptr [ebp-0C],edx
>00470111    jmp         004701DE
 00470116    mov         eax,dword ptr [ebp-4]
 00470119    call        VarToInt64AsString
 0047011E    mov         dword ptr [ebp-10],eax
 00470121    mov         dword ptr [ebp-0C],edx
>00470124    jmp         004701DE
 00470129    mov         eax,dword ptr [ebp-4]
 0047012C    mov         eax,dword ptr [eax+8]
 0047012F    movsx       eax,word ptr [eax]
 00470132    cdq
 00470133    mov         dword ptr [ebp-10],eax
 00470136    mov         dword ptr [ebp-0C],edx
>00470139    jmp         004701DE
 0047013E    mov         eax,dword ptr [ebp-4]
 00470141    mov         eax,dword ptr [eax+8]
 00470144    movsx       eax,byte ptr [eax]
 00470147    cdq
 00470148    mov         dword ptr [ebp-10],eax
 0047014B    mov         dword ptr [ebp-0C],edx
>0047014E    jmp         004701DE
 00470153    mov         eax,dword ptr [ebp-4]
 00470156    mov         eax,dword ptr [eax+8]
 00470159    movzx       eax,byte ptr [eax]
 0047015C    xor         edx,edx
 0047015E    mov         dword ptr [ebp-10],eax
 00470161    mov         dword ptr [ebp-0C],edx
>00470164    jmp         004701DE
 00470166    mov         eax,dword ptr [ebp-4]
 00470169    mov         eax,dword ptr [eax+8]
 0047016C    movzx       eax,word ptr [eax]
 0047016F    xor         edx,edx
 00470171    mov         dword ptr [ebp-10],eax
 00470174    mov         dword ptr [ebp-0C],edx
>00470177    jmp         004701DE
 00470179    mov         eax,dword ptr [ebp-4]
 0047017C    mov         eax,dword ptr [eax+8]
 0047017F    mov         eax,dword ptr [eax]
 00470181    xor         edx,edx
 00470183    mov         dword ptr [ebp-10],eax
 00470186    mov         dword ptr [ebp-0C],edx
>00470189    jmp         004701DE
 0047018B    mov         eax,dword ptr [ebp-4]
 0047018E    mov         eax,dword ptr [eax+8]
 00470191    mov         edx,dword ptr [eax]
 00470193    mov         dword ptr [ebp-10],edx
 00470196    mov         edx,dword ptr [eax+4]
 00470199    mov         dword ptr [ebp-0C],edx
>0047019C    jmp         004701DE
 0047019E    mov         eax,dword ptr [ebp-4]
 004701A1    mov         eax,dword ptr [eax+8]
 004701A4    call        @VarToInt64
 004701A9    mov         dword ptr [ebp-10],eax
 004701AC    mov         dword ptr [ebp-0C],edx
>004701AF    jmp         004701DE
 004701B1    mov         eax,dword ptr [ebp-4]
 004701B4    call        VarToInt64ViaOS
 004701B9    mov         dword ptr [ebp-10],eax
 004701BC    mov         dword ptr [ebp-0C],edx
>004701BF    jmp         004701DE
 004701C1    lea         edx,[ebp-10]
 004701C4    mov         eax,dword ptr [ebp-4]
 004701C7    call        VarToInt64Custom
 004701CC    test        al,al
>004701CE    jne         004701DE
 004701D0    mov         eax,dword ptr [ebp-4]
 004701D3    call        VarToInt64ViaOS
 004701D8    mov         dword ptr [ebp-10],eax
 004701DB    mov         dword ptr [ebp-0C],edx
 004701DE    xor         eax,eax
 004701E0    pop         edx
 004701E1    pop         ecx
 004701E2    pop         ecx
 004701E3    mov         dword ptr fs:[eax],edx
>004701E6    jmp         0047020F
>004701E8    jmp         @HandleAnyException
 004701ED    mov         eax,dword ptr [ebp-4]
 004701F0    mov         ax,word ptr [eax]
 004701F3    mov         dx,14
 004701F7    call        HandleConversionException
 004701FC    mov         dword ptr [ebp-10],0
 00470203    mov         dword ptr [ebp-0C],0
 0047020A    call        @DoneExcept
 0047020F    mov         eax,dword ptr [ebp-10]
 00470212    mov         edx,dword ptr [ebp-0C]
 00470215    pop         edi
 00470216    pop         esi
 00470217    pop         ebx
 00470218    mov         esp,ebp
 0047021A    pop         ebp
 0047021B    ret
*}
end;

//00470220
function VarToBoolAsString(const V:TVarData):Boolean;
begin
{*
 00470220    push        ebp
 00470221    mov         ebp,esp
 00470223    add         esp,0FFFFFFF0
 00470226    push        ebx
 00470227    xor         edx,edx
 00470229    mov         dword ptr [ebp-10],edx
 0047022C    mov         dword ptr [ebp-8],edx
 0047022F    mov         ebx,eax
 00470231    xor         eax,eax
 00470233    push        ebp
 00470234    push        4702D7
 00470239    push        dword ptr fs:[eax]
 0047023C    mov         dword ptr fs:[eax],esp
 0047023F    mov         edx,ebx
 00470241    lea         eax,[ebp-8]
 00470244    call        @VarToWStr
 00470249    lea         eax,[ebp-0A]
 0047024C    push        eax
 0047024D    push        0
 0047024F    push        400
 00470254    mov         eax,dword ptr [ebp-8]
 00470257    push        eax
 00470258    mov         eax,[0055B3DC];^gvar_0055DA6C
 0047025D    mov         eax,dword ptr [eax]
 0047025F    call        eax
 00470261    mov         edx,eax
 00470263    sub         edx,80020005
>00470269    je          00470280
 0047026B    sub         edx,7FFDFFFB
>00470271    jne         004702AD
 00470273    cmp         word ptr [ebp-0A],1
 00470278    sbb         eax,eax
 0047027A    inc         eax
 0047027B    mov         byte ptr [ebp-1],al
>0047027E    jmp         004702B9
 00470280    lea         eax,[ebp-10]
 00470283    mov         edx,dword ptr [ebp-8]
 00470286    call        @LStrFromWStr
 0047028B    mov         eax,dword ptr [ebp-10]
 0047028E    lea         edx,[ebp-1]
 00470291    call        00466C7C
 00470296    test        al,al
>00470298    jne         004702B9
 0047029A    mov         dx,word ptr [ebx]
 0047029D    mov         cx,0B
 004702A1    mov         eax,80020005
 004702A6    call        VarResultCheck
>004702AB    jmp         004702B9
 004702AD    mov         dx,word ptr [ebx]
 004702B0    mov         cx,0B
 004702B4    call        VarResultCheck
 004702B9    xor         eax,eax
 004702BB    pop         edx
 004702BC    pop         ecx
 004702BD    pop         ecx
 004702BE    mov         dword ptr fs:[eax],edx
 004702C1    push        4702DE
 004702C6    lea         eax,[ebp-10]
 004702C9    call        @LStrClr
 004702CE    lea         eax,[ebp-8]
 004702D1    call        @WStrClr
 004702D6    ret
>004702D7    jmp         @HandleFinally
>004702DC    jmp         004702C6
 004702DE    mov         al,byte ptr [ebp-1]
 004702E1    pop         ebx
 004702E2    mov         esp,ebp
 004702E4    pop         ebp
 004702E5    ret
*}
end;

//004702E8
function VarToBoolViaOS(const V:TVarData):Boolean;
begin
{*
 004702E8    push        ebx
 004702E9    add         esp,0FFFFFFF0
 004702EC    mov         ebx,eax
 004702EE    push        esp
 004702EF    call        oleaut32.VariantInit
 004702F4    push        0B
 004702F6    push        0
 004702F8    push        400
 004702FD    push        ebx
 004702FE    lea         eax,[esp+10]
 00470302    push        eax
 00470303    mov         eax,[0055B5C0];^gvar_0055DA24
 00470308    mov         eax,dword ptr [eax]
 0047030A    call        eax
 0047030C    mov         dx,word ptr [ebx]
 0047030F    mov         cx,0B
 00470313    call        VarResultCheck
 00470318    cmp         word ptr [esp+8],1
 0047031E    sbb         eax,eax
 00470320    inc         eax
 00470321    add         esp,10
 00470324    pop         ebx
 00470325    ret
*}
end;

//00470328
function VarToBoolAny(const V:TVarData):Boolean;
begin
{*
 00470328    push        ebp
 00470329    mov         ebp,esp
 0047032B    add         esp,0FFFFFFEC
 0047032E    push        ebx
 0047032F    mov         ebx,eax
 00470331    lea         eax,[ebp-11]
 00470334    push        eax
 00470335    call        oleaut32.VariantInit
 0047033A    xor         eax,eax
 0047033C    push        ebp
 0047033D    push        47037C
 00470342    push        dword ptr fs:[eax]
 00470345    mov         dword ptr fs:[eax],esp
 00470348    mov         edx,ebx
 0047034A    lea         eax,[ebp-11]
 0047034D    call        @VarCopy
 00470352    lea         eax,[ebp-11]
 00470355    call        dword ptr ds:[55DA98]
 0047035B    lea         eax,[ebp-11]
 0047035E    call        @VarToBoolean
 00470363    mov         byte ptr [ebp-1],al
 00470366    xor         eax,eax
 00470368    pop         edx
 00470369    pop         ecx
 0047036A    pop         ecx
 0047036B    mov         dword ptr fs:[eax],edx
 0047036E    push        470383
 00470373    lea         eax,[ebp-11]
 00470376    call        @VarClear
 0047037B    ret
>0047037C    jmp         @HandleFinally
>00470381    jmp         00470373
 00470383    mov         al,byte ptr [ebp-1]
 00470386    pop         ebx
 00470387    mov         esp,ebp
 00470389    pop         ebp
 0047038A    ret
*}
end;

//0047038C
function VarToBoolCustom(const V:TVarData; var AValue:Boolean):Boolean;
begin
{*
 0047038C    push        ebx
 0047038D    push        esi
 0047038E    push        edi
 0047038F    add         esp,0FFFFFFEC
 00470392    mov         edi,edx
 00470394    mov         esi,eax
 00470396    mov         edx,esp
 00470398    mov         ax,word ptr [esi]
 0047039B    call        FindCustomVariantType
 004703A0    mov         ebx,eax
 004703A2    test        bl,bl
>004703A4    je          004703CC
 004703A6    lea         eax,[esp+4]
 004703AA    push        eax
 004703AB    call        oleaut32.VariantInit
 004703B0    push        0B
 004703B2    mov         ecx,esi
 004703B4    lea         edx,[esp+8]
 004703B8    mov         eax,dword ptr [esp+4]
 004703BC    mov         esi,dword ptr [eax]
 004703BE    call        dword ptr [esi+1C]
 004703C1    cmp         word ptr [esp+0C],1
 004703C7    sbb         eax,eax
 004703C9    inc         eax
 004703CA    mov         byte ptr [edi],al
 004703CC    mov         eax,ebx
 004703CE    add         esp,14
 004703D1    pop         edi
 004703D2    pop         esi
 004703D3    pop         ebx
 004703D4    ret
*}
end;

//004703D8
function @VarToBoolean(const V:TVarData):Boolean;
begin
{*
 004703D8    push        ebx
 004703D9    push        ecx
 004703DA    mov         ebx,eax
 004703DC    mov         ax,word ptr [ebx]
 004703DF    movzx       edx,ax
 004703E2    cmp         edx,14
>004703E5    ja          00470565
 004703EB    jmp         dword ptr [edx*4+4703F2]
 004703EB    dd          00470446
 004703EB    dd          0047044F
 004703EB    dd          0047046E
 004703EB    dd          0047047C
 004703EB    dd          00470489
 004703EB    dd          0047049E
 004703EB    dd          004704B3
 004703EB    dd          004704C8
 004703EB    dd          004704DD
 004703EB    dd          00470556
 004703EB    dd          00470565
 004703EB    dd          004704EC
 004703EB    dd          00470546
 004703EB    dd          00470556
 004703EB    dd          00470565
 004703EB    dd          00470565
 004703EB    dd          004704FC
 004703EB    dd          00470509
 004703EB    dd          00470516
 004703EB    dd          00470524
 004703EB    dd          00470531
 00470446    mov         byte ptr [esp],0
>0047044A    jmp         00470716
 0047044F    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>00470456    je          00470465
 00470458    mov         dx,0B
 0047045C    mov         ax,1
 00470460    call        VarCastError
 00470465    mov         byte ptr [esp],0
>00470469    jmp         00470716
 0047046E    cmp         word ptr [ebx+8],0
 00470473    setne       byte ptr [esp]
>00470477    jmp         00470716
 0047047C    cmp         dword ptr [ebx+8],0
 00470480    setne       byte ptr [esp]
>00470484    jmp         00470716
 00470489    fld         dword ptr [ebx+8]
 0047048C    fcomp       dword ptr ds:[47071C]
 00470492    fnstsw      al
 00470494    sahf
 00470495    setne       byte ptr [esp]
>00470499    jmp         00470716
 0047049E    fld         qword ptr [ebx+8]
 004704A1    fcomp       dword ptr ds:[47071C]
 004704A7    fnstsw      al
 004704A9    sahf
 004704AA    setne       byte ptr [esp]
>004704AE    jmp         00470716
 004704B3    fild        qword ptr [ebx+8]
 004704B6    fcomp       dword ptr ds:[47071C]
 004704BC    fnstsw      al
 004704BE    sahf
 004704BF    setne       byte ptr [esp]
>004704C3    jmp         00470716
 004704C8    fld         qword ptr [ebx+8]
 004704CB    fcomp       dword ptr ds:[47071C]
 004704D1    fnstsw      al
 004704D3    sahf
 004704D4    setne       byte ptr [esp]
>004704D8    jmp         00470716
 004704DD    mov         eax,ebx
 004704DF    call        VarToBoolAsString
 004704E4    mov         byte ptr [esp],al
>004704E7    jmp         00470716
 004704EC    cmp         word ptr [ebx+8],1
 004704F1    sbb         eax,eax
 004704F3    inc         eax
 004704F4    mov         byte ptr [esp],al
>004704F7    jmp         00470716
 004704FC    cmp         byte ptr [ebx+8],0
 00470500    setne       byte ptr [esp]
>00470504    jmp         00470716
 00470509    cmp         byte ptr [ebx+8],0
 0047050D    setne       byte ptr [esp]
>00470511    jmp         00470716
 00470516    cmp         word ptr [ebx+8],0
 0047051B    setne       byte ptr [esp]
>0047051F    jmp         00470716
 00470524    cmp         dword ptr [ebx+8],0
 00470528    setne       byte ptr [esp]
>0047052C    jmp         00470716
 00470531    cmp         dword ptr [ebx+0C],0
>00470535    jne         0047053B
 00470537    cmp         dword ptr [ebx+8],0
 0047053B    setne       al
 0047053E    mov         byte ptr [esp],al
>00470541    jmp         00470716
 00470546    mov         eax,dword ptr [ebx+8]
 00470549    call        @VarToBoolean
 0047054E    mov         byte ptr [esp],al
>00470551    jmp         00470716
 00470556    mov         eax,ebx
 00470558    call        VarToBoolViaOS
 0047055D    mov         byte ptr [esp],al
>00470560    jmp         00470716
 00470565    mov         edx,eax
 00470567    sub         dx,100
>0047056C    je          00470575
 0047056E    dec         dx
>00470571    je          00470584
>00470573    jmp         00470593
 00470575    mov         eax,ebx
 00470577    call        VarToBoolAsString
 0047057C    mov         byte ptr [esp],al
>0047057F    jmp         00470716
 00470584    mov         eax,ebx
 00470586    call        VarToBoolAny
 0047058B    mov         byte ptr [esp],al
>0047058E    jmp         00470716
 00470593    test        ah,40
>00470596    je          004706FF
 0047059C    movzx       eax,ax
 0047059F    and         eax,0FFFFBFFF
 004705A4    cmp         eax,14
>004705A7    ja          004706F3
 004705AD    jmp         dword ptr [eax*4+4705B4]
 004705AD    dd          004706F3
 004705AD    dd          004706F3
 004705AD    dd          00470608
 004705AD    dd          00470618
 004705AD    dd          00470627
 004705AD    dd          0047063E
 004705AD    dd          00470655
 004705AD    dd          0047066C
 004705AD    dd          00470683
 004705AD    dd          004706F3
 004705AD    dd          004706F3
 004705AD    dd          00470692
 004705AD    dd          004706E6
 004705AD    dd          004706F3
 004705AD    dd          004706F3
 004705AD    dd          004706F3
 004705AD    dd          004706A1
 004705AD    dd          004706AD
 004705AD    dd          004706B9
 004705AD    dd          004706C6
 004705AD    dd          004706D2
 00470608    mov         eax,dword ptr [ebx+8]
 0047060B    cmp         word ptr [eax],0
 0047060F    setne       byte ptr [esp]
>00470613    jmp         00470716
 00470618    mov         eax,dword ptr [ebx+8]
 0047061B    cmp         dword ptr [eax],0
 0047061E    setne       byte ptr [esp]
>00470622    jmp         00470716
 00470627    mov         eax,dword ptr [ebx+8]
 0047062A    fld         dword ptr [eax]
 0047062C    fcomp       dword ptr ds:[47071C]
 00470632    fnstsw      al
 00470634    sahf
 00470635    setne       byte ptr [esp]
>00470639    jmp         00470716
 0047063E    mov         eax,dword ptr [ebx+8]
 00470641    fld         qword ptr [eax]
 00470643    fcomp       dword ptr ds:[47071C]
 00470649    fnstsw      al
 0047064B    sahf
 0047064C    setne       byte ptr [esp]
>00470650    jmp         00470716
 00470655    mov         eax,dword ptr [ebx+8]
 00470658    fild        qword ptr [eax]
 0047065A    fcomp       dword ptr ds:[47071C]
 00470660    fnstsw      al
 00470662    sahf
 00470663    setne       byte ptr [esp]
>00470667    jmp         00470716
 0047066C    mov         eax,dword ptr [ebx+8]
 0047066F    fld         qword ptr [eax]
 00470671    fcomp       dword ptr ds:[47071C]
 00470677    fnstsw      al
 00470679    sahf
 0047067A    setne       byte ptr [esp]
>0047067E    jmp         00470716
 00470683    mov         eax,ebx
 00470685    call        VarToBoolAsString
 0047068A    mov         byte ptr [esp],al
>0047068D    jmp         00470716
 00470692    mov         eax,dword ptr [ebx+8]
 00470695    cmp         word ptr [eax],1
 00470699    sbb         eax,eax
 0047069B    inc         eax
 0047069C    mov         byte ptr [esp],al
>0047069F    jmp         00470716
 004706A1    mov         eax,dword ptr [ebx+8]
 004706A4    cmp         byte ptr [eax],0
 004706A7    setne       byte ptr [esp]
>004706AB    jmp         00470716
 004706AD    mov         eax,dword ptr [ebx+8]
 004706B0    cmp         byte ptr [eax],0
 004706B3    setne       byte ptr [esp]
>004706B7    jmp         00470716
 004706B9    mov         eax,dword ptr [ebx+8]
 004706BC    cmp         word ptr [eax],0
 004706C0    setne       byte ptr [esp]
>004706C4    jmp         00470716
 004706C6    mov         eax,dword ptr [ebx+8]
 004706C9    cmp         dword ptr [eax],0
 004706CC    setne       byte ptr [esp]
>004706D0    jmp         00470716
 004706D2    mov         eax,dword ptr [ebx+8]
 004706D5    cmp         dword ptr [eax+4],0
>004706D9    jne         004706DE
 004706DB    cmp         dword ptr [eax],0
 004706DE    setne       al
 004706E1    mov         byte ptr [esp],al
>004706E4    jmp         00470716
 004706E6    mov         eax,dword ptr [ebx+8]
 004706E9    call        @VarToBoolean
 004706EE    mov         byte ptr [esp],al
>004706F1    jmp         00470716
 004706F3    mov         eax,ebx
 004706F5    call        VarToBoolViaOS
 004706FA    mov         byte ptr [esp],al
>004706FD    jmp         00470716
 004706FF    mov         edx,esp
 00470701    mov         eax,ebx
 00470703    call        VarToBoolCustom
 00470708    test        al,al
>0047070A    jne         00470716
 0047070C    mov         eax,ebx
 0047070E    call        VarToBoolViaOS
 00470713    mov         byte ptr [esp],al
 00470716    mov         al,byte ptr [esp]
 00470719    pop         edx
 0047071A    pop         ebx
 0047071B    ret
*}
end;

//00470720
function @VarToBool(const V:TVarData):LongBool;
begin
{*
 00470720    call        @VarToBoolean
 00470725    neg         al
 00470727    sbb         eax,eax
 00470729    neg         eax
 0047072B    ret
*}
end;

//0047072C
function VarToDoubleAsString(const V:TVarData):Double;
begin
{*
 0047072C    push        ebp
 0047072D    mov         ebp,esp
 0047072F    add         esp,0FFFFFFE4
 00470732    push        ebx
 00470733    xor         edx,edx
 00470735    mov         dword ptr [ebp-1C],edx
 00470738    mov         dword ptr [ebp-0C],edx
 0047073B    mov         ebx,eax
 0047073D    xor         eax,eax
 0047073F    push        ebp
 00470740    push        4707E1
 00470745    push        dword ptr fs:[eax]
 00470748    mov         dword ptr fs:[eax],esp
 0047074B    mov         edx,ebx
 0047074D    lea         eax,[ebp-0C]
 00470750    call        @VarToWStr
 00470755    lea         eax,[ebp-8]
 00470758    push        eax
 00470759    push        0
 0047075B    push        400
 00470760    mov         eax,dword ptr [ebp-0C]
 00470763    push        eax
 00470764    mov         eax,[0055B444];^gvar_0055DA60
 00470769    mov         eax,dword ptr [eax]
 0047076B    call        eax
 0047076D    mov         edx,eax
 0047076F    sub         edx,80020005
>00470775    je          00470781
 00470777    sub         edx,7FFDFFFB
>0047077D    jne         004707B7
>0047077F    jmp         004707C3
 00470781    lea         eax,[ebp-1C]
 00470784    mov         edx,dword ptr [ebp-0C]
 00470787    call        @LStrFromWStr
 0047078C    mov         eax,dword ptr [ebp-1C]
 0047078F    lea         edx,[ebp-18]
 00470792    call        00468338
 00470797    test        al,al
>00470799    je          004707A4
 0047079B    fld         tbyte ptr [ebp-18]
 0047079E    fstp        qword ptr [ebp-8]
 004707A1    wait
>004707A2    jmp         004707C3
 004707A4    mov         dx,word ptr [ebx]
 004707A7    mov         cx,5
 004707AB    mov         eax,80020005
 004707B0    call        VarResultCheck
>004707B5    jmp         004707C3
 004707B7    mov         dx,word ptr [ebx]
 004707BA    mov         cx,5
 004707BE    call        VarResultCheck
 004707C3    xor         eax,eax
 004707C5    pop         edx
 004707C6    pop         ecx
 004707C7    pop         ecx
 004707C8    mov         dword ptr fs:[eax],edx
 004707CB    push        4707E8
 004707D0    lea         eax,[ebp-1C]
 004707D3    call        @LStrClr
 004707D8    lea         eax,[ebp-0C]
 004707DB    call        @WStrClr
 004707E0    ret
>004707E1    jmp         @HandleFinally
>004707E6    jmp         004707D0
 004707E8    fld         qword ptr [ebp-8]
 004707EB    pop         ebx
 004707EC    mov         esp,ebp
 004707EE    pop         ebp
 004707EF    ret
*}
end;

//004707F0
function VarToDoubleViaOS(const V:TVarData):Double;
begin
{*
 004707F0    push        ebx
 004707F1    add         esp,0FFFFFFE8
 004707F4    mov         ebx,eax
 004707F6    lea         eax,[esp+8]
 004707FA    push        eax
 004707FB    call        oleaut32.VariantInit
 00470800    push        5
 00470802    push        0
 00470804    push        400
 00470809    push        ebx
 0047080A    lea         eax,[esp+18]
 0047080E    push        eax
 0047080F    mov         eax,[0055B5C0];^gvar_0055DA24
 00470814    mov         eax,dword ptr [eax]
 00470816    call        eax
 00470818    mov         dx,word ptr [ebx]
 0047081B    mov         cx,5
 0047081F    call        VarResultCheck
 00470824    mov         eax,dword ptr [esp+10]
 00470828    mov         dword ptr [esp],eax
 0047082B    mov         eax,dword ptr [esp+14]
 0047082F    mov         dword ptr [esp+4],eax
 00470833    fld         qword ptr [esp]
 00470836    add         esp,18
 00470839    pop         ebx
 0047083A    ret
*}
end;

//0047083C
function VarToDateAny(const V:TVarData):TDateTime;
begin
{*
 0047083C    push        ebp
 0047083D    mov         ebp,esp
 0047083F    add         esp,0FFFFFFE8
 00470842    push        ebx
 00470843    mov         ebx,eax
 00470845    lea         eax,[ebp-18]
 00470848    push        eax
 00470849    call        oleaut32.VariantInit
 0047084E    xor         eax,eax
 00470850    push        ebp
 00470851    push        470891
 00470856    push        dword ptr fs:[eax]
 00470859    mov         dword ptr fs:[eax],esp
 0047085C    mov         edx,ebx
 0047085E    lea         eax,[ebp-18]
 00470861    call        @VarCopy
 00470866    lea         eax,[ebp-18]
 00470869    call        dword ptr ds:[55DA98]
 0047086F    lea         eax,[ebp-18]
 00470872    call        004708EC
 00470877    fstp        qword ptr [ebp-8]
 0047087A    wait
 0047087B    xor         eax,eax
 0047087D    pop         edx
 0047087E    pop         ecx
 0047087F    pop         ecx
 00470880    mov         dword ptr fs:[eax],edx
 00470883    push        470898
 00470888    lea         eax,[ebp-18]
 0047088B    call        @VarClear
 00470890    ret
>00470891    jmp         @HandleFinally
>00470896    jmp         00470888
 00470898    fld         qword ptr [ebp-8]
 0047089B    pop         ebx
 0047089C    mov         esp,ebp
 0047089E    pop         ebp
 0047089F    ret
*}
end;

//004708A0
function VarToDoubleCustom(const V:TVarData; var AValue:Double):Boolean;
begin
{*
 004708A0    push        ebx
 004708A1    push        esi
 004708A2    push        edi
 004708A3    add         esp,0FFFFFFEC
 004708A6    mov         edi,edx
 004708A8    mov         esi,eax
 004708AA    mov         edx,esp
 004708AC    mov         ax,word ptr [esi]
 004708AF    call        FindCustomVariantType
 004708B4    mov         ebx,eax
 004708B6    test        bl,bl
>004708B8    je          004708E2
 004708BA    lea         eax,[esp+4]
 004708BE    push        eax
 004708BF    call        oleaut32.VariantInit
 004708C4    push        5
 004708C6    mov         ecx,esi
 004708C8    lea         edx,[esp+8]
 004708CC    mov         eax,dword ptr [esp+4]
 004708D0    mov         esi,dword ptr [eax]
 004708D2    call        dword ptr [esi+1C]
 004708D5    mov         eax,dword ptr [esp+0C]
 004708D9    mov         dword ptr [edi],eax
 004708DB    mov         eax,dword ptr [esp+10]
 004708DF    mov         dword ptr [edi+4],eax
 004708E2    mov         eax,ebx
 004708E4    add         esp,14
 004708E7    pop         edi
 004708E8    pop         esi
 004708E9    pop         ebx
 004708EA    ret
*}
end;

//004708EC
{*function sub_004708EC(?:?):?;
begin
 004708EC    push        ebx
 004708ED    add         esp,0FFFFFFEC
 004708F0    mov         ebx,eax
 004708F2    mov         ax,word ptr [ebx]
 004708F5    movzx       edx,ax
 004708F8    cmp         edx,14
>004708FB    ja          00470A94
 00470901    jmp         dword ptr [edx*4+470908]
 00470901    dd          0047095C
 00470901    dd          0047096A
 00470901    dd          0047098E
 00470901    dd          0047099A
 00470901    dd          004709A6
 00470901    dd          004709B2
 00470901    dd          004709C4
 00470901    dd          004709D6
 00470901    dd          004709E8
 00470901    dd          00470A84
 00470901    dd          00470A94
 00470901    dd          004709F8
 00470901    dd          00470A73
 00470901    dd          00470A84
 00470901    dd          00470A94
 00470901    dd          00470A94
 00470901    dd          00470A0D
 00470901    dd          00470A22
 00470901    dd          00470A38
 00470901    dd          00470A4D
 00470901    dd          00470A67
 0047095C    xor         eax,eax
 0047095E    mov         dword ptr [esp],eax
 00470961    mov         dword ptr [esp+4],eax
>00470965    jmp         00470C59
 0047096A    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>00470971    je          00470980
 00470973    mov         dx,5
 00470977    mov         ax,1
 0047097B    call        VarCastError
 00470980    xor         eax,eax
 00470982    mov         dword ptr [esp],eax
 00470985    mov         dword ptr [esp+4],eax
>00470989    jmp         00470C59
 0047098E    fild        word ptr [ebx+8]
 00470991    fstp        qword ptr [esp]
 00470994    wait
>00470995    jmp         00470C59
 0047099A    fild        dword ptr [ebx+8]
 0047099D    fstp        qword ptr [esp]
 004709A0    wait
>004709A1    jmp         00470C59
 004709A6    fld         dword ptr [ebx+8]
 004709A9    fstp        qword ptr [esp]
 004709AC    wait
>004709AD    jmp         00470C59
 004709B2    mov         eax,dword ptr [ebx+8]
 004709B5    mov         dword ptr [esp],eax
 004709B8    mov         eax,dword ptr [ebx+0C]
 004709BB    mov         dword ptr [esp+4],eax
>004709BF    jmp         00470C59
 004709C4    fild        qword ptr [ebx+8]
 004709C7    fdiv        dword ptr ds:[470C64];10000:Single
 004709CD    fstp        qword ptr [esp]
 004709D0    wait
>004709D1    jmp         00470C59
 004709D6    mov         eax,dword ptr [ebx+8]
 004709D9    mov         dword ptr [esp],eax
 004709DC    mov         eax,dword ptr [ebx+0C]
 004709DF    mov         dword ptr [esp+4],eax
>004709E3    jmp         00470C59
 004709E8    mov         eax,ebx
 004709EA    call        VarToDoubleAsString
 004709EF    fstp        qword ptr [esp]
 004709F2    wait
>004709F3    jmp         00470C59
 004709F8    movsx       eax,word ptr [ebx+8]
 004709FC    mov         dword ptr [esp+8],eax
 00470A00    fild        dword ptr [esp+8]
 00470A04    fstp        qword ptr [esp]
 00470A07    wait
>00470A08    jmp         00470C59
 00470A0D    movsx       eax,byte ptr [ebx+8]
 00470A11    mov         dword ptr [esp+8],eax
 00470A15    fild        dword ptr [esp+8]
 00470A19    fstp        qword ptr [esp]
 00470A1C    wait
>00470A1D    jmp         00470C59
 00470A22    xor         eax,eax
 00470A24    mov         al,byte ptr [ebx+8]
 00470A27    mov         dword ptr [esp+8],eax
 00470A2B    fild        dword ptr [esp+8]
 00470A2F    fstp        qword ptr [esp]
 00470A32    wait
>00470A33    jmp         00470C59
 00470A38    movzx       eax,word ptr [ebx+8]
 00470A3C    mov         dword ptr [esp+8],eax
 00470A40    fild        dword ptr [esp+8]
 00470A44    fstp        qword ptr [esp]
 00470A47    wait
>00470A48    jmp         00470C59
 00470A4D    mov         eax,dword ptr [ebx+8]
 00470A50    mov         dword ptr [esp+0C],eax
 00470A54    xor         eax,eax
 00470A56    mov         dword ptr [esp+10],eax
 00470A5A    fild        qword ptr [esp+0C]
 00470A5E    fstp        qword ptr [esp]
 00470A61    wait
>00470A62    jmp         00470C59
 00470A67    fild        qword ptr [ebx+8]
 00470A6A    fstp        qword ptr [esp]
 00470A6D    wait
>00470A6E    jmp         00470C59
 00470A73    mov         eax,dword ptr [ebx+8]
 00470A76    call        004708EC
 00470A7B    fstp        qword ptr [esp]
 00470A7E    wait
>00470A7F    jmp         00470C59
 00470A84    mov         eax,ebx
 00470A86    call        VarToDoubleViaOS
 00470A8B    fstp        qword ptr [esp]
 00470A8E    wait
>00470A8F    jmp         00470C59
 00470A94    mov         edx,eax
 00470A96    sub         dx,100
>00470A9B    je          00470AA4
 00470A9D    dec         dx
>00470AA0    je          00470AB4
>00470AA2    jmp         00470AC4
 00470AA4    mov         eax,ebx
 00470AA6    call        VarToDoubleAsString
 00470AAB    fstp        qword ptr [esp]
 00470AAE    wait
>00470AAF    jmp         00470C59
 00470AB4    mov         eax,ebx
 00470AB6    call        VarToDateAny
 00470ABB    fstp        qword ptr [esp]
 00470ABE    wait
>00470ABF    jmp         00470C59
 00470AC4    test        ah,40
>00470AC7    je          00470C41
 00470ACD    movzx       eax,ax
 00470AD0    and         eax,0FFFFBFFF
 00470AD5    cmp         eax,14
>00470AD8    ja          00470C34
 00470ADE    jmp         dword ptr [eax*4+470AE5]
 00470ADE    dd          00470C34
 00470ADE    dd          00470C34
 00470ADE    dd          00470B39
 00470ADE    dd          00470B47
 00470ADE    dd          00470B55
 00470ADE    dd          00470B63
 00470ADE    dd          00470B77
 00470ADE    dd          00470B8B
 00470ADE    dd          00470B9F
 00470ADE    dd          00470C34
 00470ADE    dd          00470C34
 00470ADE    dd          00470BAF
 00470ADE    dd          00470C26
 00470ADE    dd          00470C34
 00470ADE    dd          00470C34
 00470ADE    dd          00470C34
 00470ADE    dd          00470BC6
 00470ADE    dd          00470BDA
 00470ADE    dd          00470BEE
 00470ADE    dd          00470C02
 00470ADE    dd          00470C1B
 00470B39    mov         eax,dword ptr [ebx+8]
 00470B3C    fild        word ptr [eax]
 00470B3E    fstp        qword ptr [esp]
 00470B41    wait
>00470B42    jmp         00470C59
 00470B47    mov         eax,dword ptr [ebx+8]
 00470B4A    fild        dword ptr [eax]
 00470B4C    fstp        qword ptr [esp]
 00470B4F    wait
>00470B50    jmp         00470C59
 00470B55    mov         eax,dword ptr [ebx+8]
 00470B58    fld         dword ptr [eax]
 00470B5A    fstp        qword ptr [esp]
 00470B5D    wait
>00470B5E    jmp         00470C59
 00470B63    mov         eax,dword ptr [ebx+8]
 00470B66    mov         edx,dword ptr [eax]
 00470B68    mov         dword ptr [esp],edx
 00470B6B    mov         edx,dword ptr [eax+4]
 00470B6E    mov         dword ptr [esp+4],edx
>00470B72    jmp         00470C59
 00470B77    mov         eax,dword ptr [ebx+8]
 00470B7A    fild        qword ptr [eax]
 00470B7C    fdiv        dword ptr ds:[470C64];10000:Single
 00470B82    fstp        qword ptr [esp]
 00470B85    wait
>00470B86    jmp         00470C59
 00470B8B    mov         eax,dword ptr [ebx+8]
 00470B8E    mov         edx,dword ptr [eax]
 00470B90    mov         dword ptr [esp],edx
 00470B93    mov         edx,dword ptr [eax+4]
 00470B96    mov         dword ptr [esp+4],edx
>00470B9A    jmp         00470C59
 00470B9F    mov         eax,ebx
 00470BA1    call        VarToDoubleAsString
 00470BA6    fstp        qword ptr [esp]
 00470BA9    wait
>00470BAA    jmp         00470C59
 00470BAF    mov         eax,dword ptr [ebx+8]
 00470BB2    movsx       eax,word ptr [eax]
 00470BB5    mov         dword ptr [esp+8],eax
 00470BB9    fild        dword ptr [esp+8]
 00470BBD    fstp        qword ptr [esp]
 00470BC0    wait
>00470BC1    jmp         00470C59
 00470BC6    mov         eax,dword ptr [ebx+8]
 00470BC9    movsx       eax,byte ptr [eax]
 00470BCC    mov         dword ptr [esp+8],eax
 00470BD0    fild        dword ptr [esp+8]
 00470BD4    fstp        qword ptr [esp]
 00470BD7    wait
>00470BD8    jmp         00470C59
 00470BDA    mov         eax,dword ptr [ebx+8]
 00470BDD    movzx       eax,byte ptr [eax]
 00470BE0    mov         dword ptr [esp+8],eax
 00470BE4    fild        dword ptr [esp+8]
 00470BE8    fstp        qword ptr [esp]
 00470BEB    wait
>00470BEC    jmp         00470C59
 00470BEE    mov         eax,dword ptr [ebx+8]
 00470BF1    movzx       eax,word ptr [eax]
 00470BF4    mov         dword ptr [esp+8],eax
 00470BF8    fild        dword ptr [esp+8]
 00470BFC    fstp        qword ptr [esp]
 00470BFF    wait
>00470C00    jmp         00470C59
 00470C02    mov         eax,dword ptr [ebx+8]
 00470C05    mov         eax,dword ptr [eax]
 00470C07    mov         dword ptr [esp+0C],eax
 00470C0B    xor         eax,eax
 00470C0D    mov         dword ptr [esp+10],eax
 00470C11    fild        qword ptr [esp+0C]
 00470C15    fstp        qword ptr [esp]
 00470C18    wait
>00470C19    jmp         00470C59
 00470C1B    mov         eax,dword ptr [ebx+8]
 00470C1E    fild        qword ptr [eax]
 00470C20    fstp        qword ptr [esp]
 00470C23    wait
>00470C24    jmp         00470C59
 00470C26    mov         eax,dword ptr [ebx+8]
 00470C29    call        004708EC
 00470C2E    fstp        qword ptr [esp]
 00470C31    wait
>00470C32    jmp         00470C59
 00470C34    mov         eax,ebx
 00470C36    call        VarToDoubleViaOS
 00470C3B    fstp        qword ptr [esp]
 00470C3E    wait
>00470C3F    jmp         00470C59
 00470C41    mov         edx,esp
 00470C43    mov         eax,ebx
 00470C45    call        VarToDoubleCustom
 00470C4A    test        al,al
>00470C4C    jne         00470C59
 00470C4E    mov         eax,ebx
 00470C50    call        VarToDoubleViaOS
 00470C55    fstp        qword ptr [esp]
 00470C58    wait
 00470C59    fld         qword ptr [esp]
 00470C5C    add         esp,14
 00470C5F    pop         ebx
 00470C60    ret
end;*}

//00470C68
function @VarToReal(const V:TVarData):Extended;
begin
{*
 00470C68    push        ebx
 00470C69    add         esp,0FFFFFFF4
 00470C6C    mov         ebx,eax
 00470C6E    mov         eax,ebx
 00470C70    call        004708EC
 00470C75    fstp        tbyte ptr [esp]
 00470C78    wait
 00470C79    fld         tbyte ptr [esp]
 00470C7C    add         esp,0C
 00470C7F    pop         ebx
 00470C80    ret
*}
end;

//00470C84
function @VarToSingle(const V:TVarData):Single;
begin
{*
 00470C84    push        ebp
 00470C85    mov         ebp,esp
 00470C87    add         esp,0FFFFFFEC
 00470C8A    push        ebx
 00470C8B    push        esi
 00470C8C    push        edi
 00470C8D    mov         dword ptr [ebp-4],eax
 00470C90    mov         eax,dword ptr [ebp-4]
 00470C93    movzx       eax,word ptr [eax]
 00470C96    cmp         eax,14
>00470C99    ja          00470DC5
 00470C9F    jmp         dword ptr [eax*4+470CA6]
 00470C9F    dd          00470CFA
 00470C9F    dd          00470D04
 00470C9F    dd          00470D24
 00470C9F    dd          00470D33
 00470C9F    dd          00470D42
 00470C9F    dd          00470DC5
 00470C9F    dd          00470DC5
 00470C9F    dd          00470DC5
 00470C9F    dd          00470DC5
 00470C9F    dd          00470DC5
 00470C9F    dd          00470DC5
 00470C9F    dd          00470D50
 00470C9F    dd          00470DC5
 00470C9F    dd          00470DC5
 00470C9F    dd          00470DC5
 00470C9F    dd          00470DC5
 00470C9F    dd          00470D66
 00470C9F    dd          00470D7C
 00470C9F    dd          00470D8F
 00470C9F    dd          00470DA2
 00470C9F    dd          00470DB9
 00470CFA    xor         eax,eax
 00470CFC    mov         dword ptr [ebp-8],eax
>00470CFF    jmp         00470E07
 00470D04    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>00470D0B    je          00470D1A
 00470D0D    mov         dx,4
 00470D11    mov         ax,1
 00470D15    call        VarCastError
 00470D1A    xor         eax,eax
 00470D1C    mov         dword ptr [ebp-8],eax
>00470D1F    jmp         00470E07
 00470D24    mov         eax,dword ptr [ebp-4]
 00470D27    fild        word ptr [eax+8]
 00470D2A    fstp        dword ptr [ebp-8]
 00470D2D    wait
>00470D2E    jmp         00470E07
 00470D33    mov         eax,dword ptr [ebp-4]
 00470D36    fild        dword ptr [eax+8]
 00470D39    fstp        dword ptr [ebp-8]
 00470D3C    wait
>00470D3D    jmp         00470E07
 00470D42    mov         eax,dword ptr [ebp-4]
 00470D45    mov         eax,dword ptr [eax+8]
 00470D48    mov         dword ptr [ebp-8],eax
>00470D4B    jmp         00470E07
 00470D50    mov         eax,dword ptr [ebp-4]
 00470D53    movsx       eax,word ptr [eax+8]
 00470D57    mov         dword ptr [ebp-0C],eax
 00470D5A    fild        dword ptr [ebp-0C]
 00470D5D    fstp        dword ptr [ebp-8]
 00470D60    wait
>00470D61    jmp         00470E07
 00470D66    mov         eax,dword ptr [ebp-4]
 00470D69    movsx       eax,byte ptr [eax+8]
 00470D6D    mov         dword ptr [ebp-0C],eax
 00470D70    fild        dword ptr [ebp-0C]
 00470D73    fstp        dword ptr [ebp-8]
 00470D76    wait
>00470D77    jmp         00470E07
 00470D7C    mov         eax,dword ptr [ebp-4]
 00470D7F    movzx       eax,byte ptr [eax+8]
 00470D83    mov         dword ptr [ebp-0C],eax
 00470D86    fild        dword ptr [ebp-0C]
 00470D89    fstp        dword ptr [ebp-8]
 00470D8C    wait
>00470D8D    jmp         00470E07
 00470D8F    mov         eax,dword ptr [ebp-4]
 00470D92    movzx       eax,word ptr [eax+8]
 00470D96    mov         dword ptr [ebp-0C],eax
 00470D99    fild        dword ptr [ebp-0C]
 00470D9C    fstp        dword ptr [ebp-8]
 00470D9F    wait
>00470DA0    jmp         00470E07
 00470DA2    mov         eax,dword ptr [ebp-4]
 00470DA5    mov         eax,dword ptr [eax+8]
 00470DA8    mov         dword ptr [ebp-14],eax
 00470DAB    xor         eax,eax
 00470DAD    mov         dword ptr [ebp-10],eax
 00470DB0    fild        qword ptr [ebp-14]
 00470DB3    fstp        dword ptr [ebp-8]
 00470DB6    wait
>00470DB7    jmp         00470E07
 00470DB9    mov         eax,dword ptr [ebp-4]
 00470DBC    fild        qword ptr [eax+8]
 00470DBF    fstp        dword ptr [ebp-8]
 00470DC2    wait
>00470DC3    jmp         00470E07
 00470DC5    xor         eax,eax
 00470DC7    push        ebp
 00470DC8    push        470DE9
 00470DCD    push        dword ptr fs:[eax]
 00470DD0    mov         dword ptr fs:[eax],esp
 00470DD3    mov         eax,dword ptr [ebp-4]
 00470DD6    call        004708EC
 00470DDB    fstp        dword ptr [ebp-8]
 00470DDE    wait
 00470DDF    xor         eax,eax
 00470DE1    pop         edx
 00470DE2    pop         ecx
 00470DE3    pop         ecx
 00470DE4    mov         dword ptr fs:[eax],edx
>00470DE7    jmp         00470E07
>00470DE9    jmp         @HandleAnyException
 00470DEE    mov         eax,dword ptr [ebp-4]
 00470DF1    mov         ax,word ptr [eax]
 00470DF4    mov         dx,4
 00470DF8    call        HandleConversionException
 00470DFD    xor         eax,eax
 00470DFF    mov         dword ptr [ebp-8],eax
 00470E02    call        @DoneExcept
 00470E07    fld         dword ptr [ebp-8]
 00470E0A    pop         edi
 00470E0B    pop         esi
 00470E0C    pop         ebx
 00470E0D    mov         esp,ebp
 00470E0F    pop         ebp
 00470E10    ret
*}
end;

//00470E14
function VarToDateAsString(const V:TVarData):TDateTime;
begin
{*
 00470E14    push        ebp
 00470E15    mov         ebp,esp
 00470E17    add         esp,0FFFFFFE0
 00470E1A    push        ebx
 00470E1B    xor         edx,edx
 00470E1D    mov         dword ptr [ebp-20],edx
 00470E20    mov         dword ptr [ebp-1C],edx
 00470E23    mov         dword ptr [ebp-0C],edx
 00470E26    mov         ebx,eax
 00470E28    xor         eax,eax
 00470E2A    push        ebp
 00470E2B    push        470EF0
 00470E30    push        dword ptr fs:[eax]
 00470E33    mov         dword ptr fs:[eax],esp
 00470E36    mov         edx,ebx
 00470E38    lea         eax,[ebp-0C]
 00470E3B    call        @VarToWStr
 00470E40    lea         eax,[ebp-8]
 00470E43    push        eax
 00470E44    push        0
 00470E46    push        400
 00470E4B    mov         eax,dword ptr [ebp-0C]
 00470E4E    push        eax
 00470E4F    mov         eax,[0055B220];^gvar_0055DA64
 00470E54    mov         eax,dword ptr [eax]
 00470E56    call        eax
 00470E58    mov         edx,eax
 00470E5A    sub         edx,80020005
>00470E60    je          00470E6C
 00470E62    sub         edx,7FFDFFFB
>00470E68    jne         00470EC1
>00470E6A    jmp         00470ECD
 00470E6C    lea         eax,[ebp-1C]
 00470E6F    mov         edx,dword ptr [ebp-0C]
 00470E72    call        @LStrFromWStr
 00470E77    mov         eax,dword ptr [ebp-1C]
 00470E7A    lea         edx,[ebp-8]
 00470E7D    call        00469FA8
 00470E82    test        al,al
>00470E84    jne         00470ECD
 00470E86    lea         eax,[ebp-20]
 00470E89    mov         edx,dword ptr [ebp-0C]
 00470E8C    call        @LStrFromWStr
 00470E91    mov         eax,dword ptr [ebp-20]
 00470E94    lea         edx,[ebp-18]
 00470E97    call        00468390
 00470E9C    test        al,al
>00470E9E    je          00470EAE
 00470EA0    mov         eax,dword ptr [ebp-18]
 00470EA3    mov         dword ptr [ebp-8],eax
 00470EA6    mov         eax,dword ptr [ebp-14]
 00470EA9    mov         dword ptr [ebp-4],eax
>00470EAC    jmp         00470ECD
 00470EAE    mov         dx,word ptr [ebx]
 00470EB1    mov         cx,7
 00470EB5    mov         eax,80020005
 00470EBA    call        VarResultCheck
>00470EBF    jmp         00470ECD
 00470EC1    mov         dx,word ptr [ebx]
 00470EC4    mov         cx,7
 00470EC8    call        VarResultCheck
 00470ECD    xor         eax,eax
 00470ECF    pop         edx
 00470ED0    pop         ecx
 00470ED1    pop         ecx
 00470ED2    mov         dword ptr fs:[eax],edx
 00470ED5    push        470EF7
 00470EDA    lea         eax,[ebp-20]
 00470EDD    mov         edx,2
 00470EE2    call        @LStrArrayClr
 00470EE7    lea         eax,[ebp-0C]
 00470EEA    call        @WStrClr
 00470EEF    ret
>00470EF0    jmp         @HandleFinally
>00470EF5    jmp         00470EDA
 00470EF7    fld         qword ptr [ebp-8]
 00470EFA    pop         ebx
 00470EFB    mov         esp,ebp
 00470EFD    pop         ebp
 00470EFE    ret
*}
end;

//00470F00
function VarToDateAsDouble(const V:TVarData; const Value:Double):TDateTime;
begin
{*
 00470F00    push        ebp
 00470F01    mov         ebp,esp
 00470F03    add         esp,0FFFFFFE8
 00470F06    push        ebx
 00470F07    mov         ebx,eax
 00470F09    lea         eax,[ebp-18]
 00470F0C    push        eax
 00470F0D    call        oleaut32.VariantInit
 00470F12    mov         word ptr [ebp-18],5
 00470F18    mov         eax,dword ptr [ebp+8]
 00470F1B    mov         dword ptr [ebp-10],eax
 00470F1E    mov         eax,dword ptr [ebp+0C]
 00470F21    mov         dword ptr [ebp-0C],eax
 00470F24    push        7
 00470F26    push        0
 00470F28    push        400
 00470F2D    lea         eax,[ebp-18]
 00470F30    push        eax
 00470F31    lea         eax,[ebp-18]
 00470F34    push        eax
 00470F35    mov         eax,[0055B5C0];^gvar_0055DA24
 00470F3A    mov         eax,dword ptr [eax]
 00470F3C    call        eax
 00470F3E    mov         dx,word ptr [ebx]
 00470F41    mov         cx,7
 00470F45    call        VarResultCheck
 00470F4A    mov         eax,dword ptr [ebp-10]
 00470F4D    mov         dword ptr [ebp-8],eax
 00470F50    mov         eax,dword ptr [ebp-0C]
 00470F53    mov         dword ptr [ebp-4],eax
 00470F56    fld         qword ptr [ebp-8]
 00470F59    pop         ebx
 00470F5A    mov         esp,ebp
 00470F5C    pop         ebp
 00470F5D    ret         8
*}
end;

//00470F60
function VarToDateViaOS(const V:TVarData):TDateTime;
begin
{*
 00470F60    push        ebx
 00470F61    add         esp,0FFFFFFE8
 00470F64    mov         ebx,eax
 00470F66    lea         eax,[esp+8]
 00470F6A    push        eax
 00470F6B    call        oleaut32.VariantInit
 00470F70    push        7
 00470F72    push        0
 00470F74    push        400
 00470F79    push        ebx
 00470F7A    lea         eax,[esp+18]
 00470F7E    push        eax
 00470F7F    mov         eax,[0055B5C0];^gvar_0055DA24
 00470F84    mov         eax,dword ptr [eax]
 00470F86    call        eax
 00470F88    mov         dx,word ptr [ebx]
 00470F8B    mov         cx,7
 00470F8F    call        VarResultCheck
 00470F94    mov         eax,dword ptr [esp+10]
 00470F98    mov         dword ptr [esp],eax
 00470F9B    mov         eax,dword ptr [esp+14]
 00470F9F    mov         dword ptr [esp+4],eax
 00470FA3    fld         qword ptr [esp]
 00470FA6    add         esp,18
 00470FA9    pop         ebx
 00470FAA    ret
*}
end;

//00470FAC
function VarToDoubleAny(const V:TVarData):Double;
begin
{*
 00470FAC    push        ebp
 00470FAD    mov         ebp,esp
 00470FAF    add         esp,0FFFFFFE8
 00470FB2    push        ebx
 00470FB3    mov         ebx,eax
 00470FB5    lea         eax,[ebp-18]
 00470FB8    push        eax
 00470FB9    call        oleaut32.VariantInit
 00470FBE    xor         eax,eax
 00470FC0    push        ebp
 00470FC1    push        471001
 00470FC6    push        dword ptr fs:[eax]
 00470FC9    mov         dword ptr fs:[eax],esp
 00470FCC    mov         edx,ebx
 00470FCE    lea         eax,[ebp-18]
 00470FD1    call        @VarCopy
 00470FD6    lea         eax,[ebp-18]
 00470FD9    call        dword ptr ds:[55DA98]
 00470FDF    lea         eax,[ebp-18]
 00470FE2    call        0047105C
 00470FE7    fstp        qword ptr [ebp-8]
 00470FEA    wait
 00470FEB    xor         eax,eax
 00470FED    pop         edx
 00470FEE    pop         ecx
 00470FEF    pop         ecx
 00470FF0    mov         dword ptr fs:[eax],edx
 00470FF3    push        471008
 00470FF8    lea         eax,[ebp-18]
 00470FFB    call        @VarClear
 00471000    ret
>00471001    jmp         @HandleFinally
>00471006    jmp         00470FF8
 00471008    fld         qword ptr [ebp-8]
 0047100B    pop         ebx
 0047100C    mov         esp,ebp
 0047100E    pop         ebp
 0047100F    ret
*}
end;

//00471010
function VarToDateCustom(const V:TVarData; var AValue:TDateTime):Boolean;
begin
{*
 00471010    push        ebx
 00471011    push        esi
 00471012    push        edi
 00471013    add         esp,0FFFFFFEC
 00471016    mov         edi,edx
 00471018    mov         esi,eax
 0047101A    mov         edx,esp
 0047101C    mov         ax,word ptr [esi]
 0047101F    call        FindCustomVariantType
 00471024    mov         ebx,eax
 00471026    test        bl,bl
>00471028    je          00471052
 0047102A    lea         eax,[esp+4]
 0047102E    push        eax
 0047102F    call        oleaut32.VariantInit
 00471034    push        7
 00471036    mov         ecx,esi
 00471038    lea         edx,[esp+8]
 0047103C    mov         eax,dword ptr [esp+4]
 00471040    mov         esi,dword ptr [eax]
 00471042    call        dword ptr [esi+1C]
 00471045    mov         eax,dword ptr [esp+0C]
 00471049    mov         dword ptr [edi],eax
 0047104B    mov         eax,dword ptr [esp+10]
 0047104F    mov         dword ptr [edi+4],eax
 00471052    mov         eax,ebx
 00471054    add         esp,14
 00471057    pop         edi
 00471058    pop         esi
 00471059    pop         ebx
 0047105A    ret
*}
end;

//0047105C
{*function sub_0047105C(?:?):?;
begin
 0047105C    push        ebx
 0047105D    add         esp,0FFFFFFEC
 00471060    mov         ebx,eax
 00471062    mov         ax,word ptr [ebx]
 00471065    movzx       edx,ax
 00471068    cmp         edx,14
>0047106B    ja          004711F2
 00471071    jmp         dword ptr [edx*4+471078]
 00471071    dd          004710CC
 00471071    dd          004710DA
 00471071    dd          004710FE
 00471071    dd          0047110A
 00471071    dd          00471116
 00471071    dd          00471116
 00471071    dd          00471116
 00471071    dd          00471126
 00471071    dd          00471138
 00471071    dd          004711E2
 00471071    dd          004711F2
 00471071    dd          00471148
 00471071    dd          004711D1
 00471071    dd          004711E2
 00471071    dd          004711F2
 00471071    dd          004711F2
 00471071    dd          0047115D
 00471071    dd          00471172
 00471071    dd          00471188
 00471071    dd          0047119D
 00471071    dd          004711B7
 004710CC    xor         eax,eax
 004710CE    mov         dword ptr [esp],eax
 004710D1    mov         dword ptr [esp+4],eax
>004710D5    jmp         004713A2
 004710DA    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>004710E1    je          004710F0
 004710E3    mov         dx,7
 004710E7    mov         ax,1
 004710EB    call        VarCastError
 004710F0    xor         eax,eax
 004710F2    mov         dword ptr [esp],eax
 004710F5    mov         dword ptr [esp+4],eax
>004710F9    jmp         004713A2
 004710FE    fild        word ptr [ebx+8]
 00471101    fstp        qword ptr [esp]
 00471104    wait
>00471105    jmp         004713A2
 0047110A    fild        dword ptr [ebx+8]
 0047110D    fstp        qword ptr [esp]
 00471110    wait
>00471111    jmp         004713A2
 00471116    mov         eax,ebx
 00471118    call        VarToDateViaOS
 0047111D    fstp        qword ptr [esp]
 00471120    wait
>00471121    jmp         004713A2
 00471126    mov         eax,dword ptr [ebx+8]
 00471129    mov         dword ptr [esp],eax
 0047112C    mov         eax,dword ptr [ebx+0C]
 0047112F    mov         dword ptr [esp+4],eax
>00471133    jmp         004713A2
 00471138    mov         eax,ebx
 0047113A    call        VarToDateAsString
 0047113F    fstp        qword ptr [esp]
 00471142    wait
>00471143    jmp         004713A2
 00471148    movsx       eax,word ptr [ebx+8]
 0047114C    mov         dword ptr [esp+8],eax
 00471150    fild        dword ptr [esp+8]
 00471154    fstp        qword ptr [esp]
 00471157    wait
>00471158    jmp         004713A2
 0047115D    movsx       eax,byte ptr [ebx+8]
 00471161    mov         dword ptr [esp+8],eax
 00471165    fild        dword ptr [esp+8]
 00471169    fstp        qword ptr [esp]
 0047116C    wait
>0047116D    jmp         004713A2
 00471172    xor         eax,eax
 00471174    mov         al,byte ptr [ebx+8]
 00471177    mov         dword ptr [esp+8],eax
 0047117B    fild        dword ptr [esp+8]
 0047117F    fstp        qword ptr [esp]
 00471182    wait
>00471183    jmp         004713A2
 00471188    movzx       eax,word ptr [ebx+8]
 0047118C    mov         dword ptr [esp+8],eax
 00471190    fild        dword ptr [esp+8]
 00471194    fstp        qword ptr [esp]
 00471197    wait
>00471198    jmp         004713A2
 0047119D    mov         eax,dword ptr [ebx+8]
 004711A0    mov         dword ptr [esp+0C],eax
 004711A4    xor         eax,eax
 004711A6    mov         dword ptr [esp+10],eax
 004711AA    fild        qword ptr [esp+0C]
 004711AE    fstp        qword ptr [esp]
 004711B1    wait
>004711B2    jmp         004713A2
 004711B7    fild        qword ptr [ebx+8]
 004711BA    add         esp,0FFFFFFF8
 004711BD    fstp        qword ptr [esp]
 004711C0    wait
 004711C1    mov         eax,ebx
 004711C3    call        VarToDateAsDouble
 004711C8    fstp        qword ptr [esp]
 004711CB    wait
>004711CC    jmp         004713A2
 004711D1    mov         eax,dword ptr [ebx+8]
 004711D4    call        0047105C
 004711D9    fstp        qword ptr [esp]
 004711DC    wait
>004711DD    jmp         004713A2
 004711E2    mov         eax,ebx
 004711E4    call        VarToDateViaOS
 004711E9    fstp        qword ptr [esp]
 004711EC    wait
>004711ED    jmp         004713A2
 004711F2    mov         edx,eax
 004711F4    sub         dx,100
>004711F9    je          00471202
 004711FB    dec         dx
>004711FE    je          00471212
>00471200    jmp         00471222
 00471202    mov         eax,ebx
 00471204    call        VarToDateAsString
 00471209    fstp        qword ptr [esp]
 0047120C    wait
>0047120D    jmp         004713A2
 00471212    mov         eax,ebx
 00471214    call        VarToDoubleAny
 00471219    fstp        qword ptr [esp]
 0047121C    wait
>0047121D    jmp         004713A2
 00471222    test        ah,40
>00471225    je          0047138A
 0047122B    movzx       eax,ax
 0047122E    and         eax,0FFFFBFFF
 00471233    cmp         eax,14
>00471236    ja          0047137D
 0047123C    jmp         dword ptr [eax*4+471243]
 0047123C    dd          0047137D
 0047123C    dd          0047137D
 0047123C    dd          00471297
 0047123C    dd          004712A5
 0047123C    dd          004712B3
 0047123C    dd          004712B3
 0047123C    dd          004712B3
 0047123C    dd          004712C3
 0047123C    dd          004712D7
 0047123C    dd          0047137D
 0047123C    dd          0047137D
 0047123C    dd          004712E7
 0047123C    dd          0047136F
 0047123C    dd          0047137D
 0047123C    dd          0047137D
 0047123C    dd          0047137D
 0047123C    dd          004712FE
 0047123C    dd          00471315
 0047123C    dd          00471329
 0047123C    dd          0047133D
 0047123C    dd          00471356
 00471297    mov         eax,dword ptr [ebx+8]
 0047129A    fild        word ptr [eax]
 0047129C    fstp        qword ptr [esp]
 0047129F    wait
>004712A0    jmp         004713A2
 004712A5    mov         eax,dword ptr [ebx+8]
 004712A8    fild        dword ptr [eax]
 004712AA    fstp        qword ptr [esp]
 004712AD    wait
>004712AE    jmp         004713A2
 004712B3    mov         eax,ebx
 004712B5    call        VarToDateViaOS
 004712BA    fstp        qword ptr [esp]
 004712BD    wait
>004712BE    jmp         004713A2
 004712C3    mov         eax,dword ptr [ebx+8]
 004712C6    mov         edx,dword ptr [eax]
 004712C8    mov         dword ptr [esp],edx
 004712CB    mov         edx,dword ptr [eax+4]
 004712CE    mov         dword ptr [esp+4],edx
>004712D2    jmp         004713A2
 004712D7    mov         eax,ebx
 004712D9    call        VarToDateAsString
 004712DE    fstp        qword ptr [esp]
 004712E1    wait
>004712E2    jmp         004713A2
 004712E7    mov         eax,dword ptr [ebx+8]
 004712EA    movsx       eax,word ptr [eax]
 004712ED    mov         dword ptr [esp+8],eax
 004712F1    fild        dword ptr [esp+8]
 004712F5    fstp        qword ptr [esp]
 004712F8    wait
>004712F9    jmp         004713A2
 004712FE    mov         eax,dword ptr [ebx+8]
 00471301    movsx       eax,byte ptr [eax]
 00471304    mov         dword ptr [esp+8],eax
 00471308    fild        dword ptr [esp+8]
 0047130C    fstp        qword ptr [esp]
 0047130F    wait
>00471310    jmp         004713A2
 00471315    mov         eax,dword ptr [ebx+8]
 00471318    movzx       eax,byte ptr [eax]
 0047131B    mov         dword ptr [esp+8],eax
 0047131F    fild        dword ptr [esp+8]
 00471323    fstp        qword ptr [esp]
 00471326    wait
>00471327    jmp         004713A2
 00471329    mov         eax,dword ptr [ebx+8]
 0047132C    movzx       eax,word ptr [eax]
 0047132F    mov         dword ptr [esp+8],eax
 00471333    fild        dword ptr [esp+8]
 00471337    fstp        qword ptr [esp]
 0047133A    wait
>0047133B    jmp         004713A2
 0047133D    mov         eax,dword ptr [ebx+8]
 00471340    mov         eax,dword ptr [eax]
 00471342    mov         dword ptr [esp+0C],eax
 00471346    xor         eax,eax
 00471348    mov         dword ptr [esp+10],eax
 0047134C    fild        qword ptr [esp+0C]
 00471350    fstp        qword ptr [esp]
 00471353    wait
>00471354    jmp         004713A2
 00471356    mov         eax,dword ptr [ebx+8]
 00471359    fild        qword ptr [eax]
 0047135B    add         esp,0FFFFFFF8
 0047135E    fstp        qword ptr [esp]
 00471361    wait
 00471362    mov         eax,ebx
 00471364    call        VarToDateAsDouble
 00471369    fstp        qword ptr [esp]
 0047136C    wait
>0047136D    jmp         004713A2
 0047136F    mov         eax,dword ptr [ebx+8]
 00471372    call        0047105C
 00471377    fstp        qword ptr [esp]
 0047137A    wait
>0047137B    jmp         004713A2
 0047137D    mov         eax,ebx
 0047137F    call        VarToDateViaOS
 00471384    fstp        qword ptr [esp]
 00471387    wait
>00471388    jmp         004713A2
 0047138A    mov         edx,esp
 0047138C    mov         eax,ebx
 0047138E    call        VarToDateCustom
 00471393    test        al,al
>00471395    jne         004713A2
 00471397    mov         eax,ebx
 00471399    call        VarToDateViaOS
 0047139E    fstp        qword ptr [esp]
 004713A1    wait
 004713A2    fld         qword ptr [esp]
 004713A5    add         esp,14
 004713A8    pop         ebx
 004713A9    ret
end;*}

//004713AC
function VarToCurrencyAsString(const V:TVarData):Currency;
begin
{*
 004713AC    push        ebp
 004713AD    mov         ebp,esp
 004713AF    add         esp,0FFFFFFF0
 004713B2    push        ebx
 004713B3    xor         edx,edx
 004713B5    mov         dword ptr [ebp-10],edx
 004713B8    mov         dword ptr [ebp-0C],edx
 004713BB    mov         ebx,eax
 004713BD    xor         eax,eax
 004713BF    push        ebp
 004713C0    push        471458
 004713C5    push        dword ptr fs:[eax]
 004713C8    mov         dword ptr fs:[eax],esp
 004713CB    mov         edx,ebx
 004713CD    lea         eax,[ebp-0C]
 004713D0    call        @VarToWStr
 004713D5    lea         eax,[ebp-8]
 004713D8    push        eax
 004713D9    push        0
 004713DB    push        400
 004713E0    mov         eax,dword ptr [ebp-0C]
 004713E3    push        eax
 004713E4    mov         eax,[0055B660];^gvar_0055DA68
 004713E9    mov         eax,dword ptr [eax]
 004713EB    call        eax
 004713ED    mov         edx,eax
 004713EF    sub         edx,80020005
>004713F5    je          00471401
 004713F7    sub         edx,7FFDFFFB
>004713FD    jne         0047142E
>004713FF    jmp         0047143A
 00471401    lea         eax,[ebp-10]
 00471404    mov         edx,dword ptr [ebp-0C]
 00471407    call        @LStrFromWStr
 0047140C    mov         eax,dword ptr [ebp-10]
 0047140F    lea         edx,[ebp-8]
 00471412    call        00468400
 00471417    test        al,al
>00471419    jne         0047143A
 0047141B    mov         dx,word ptr [ebx]
 0047141E    mov         cx,6
 00471422    mov         eax,80020005
 00471427    call        VarResultCheck
>0047142C    jmp         0047143A
 0047142E    mov         dx,word ptr [ebx]
 00471431    mov         cx,6
 00471435    call        VarResultCheck
 0047143A    xor         eax,eax
 0047143C    pop         edx
 0047143D    pop         ecx
 0047143E    pop         ecx
 0047143F    mov         dword ptr fs:[eax],edx
 00471442    push        47145F
 00471447    lea         eax,[ebp-10]
 0047144A    call        @LStrClr
 0047144F    lea         eax,[ebp-0C]
 00471452    call        @WStrClr
 00471457    ret
>00471458    jmp         @HandleFinally
>0047145D    jmp         00471447
 0047145F    fild        qword ptr [ebp-8]
 00471462    pop         ebx
 00471463    mov         esp,ebp
 00471465    pop         ebp
 00471466    ret
*}
end;

//00471468
function VarToCurrencyAsDouble(const V:TVarData; const Value:Double):Currency;
begin
{*
 00471468    push        ebp
 00471469    mov         ebp,esp
 0047146B    add         esp,0FFFFFFE8
 0047146E    push        ebx
 0047146F    mov         ebx,eax
 00471471    lea         eax,[ebp-18]
 00471474    push        eax
 00471475    call        oleaut32.VariantInit
 0047147A    mov         word ptr [ebp-18],5
 00471480    mov         eax,dword ptr [ebp+8]
 00471483    mov         dword ptr [ebp-10],eax
 00471486    mov         eax,dword ptr [ebp+0C]
 00471489    mov         dword ptr [ebp-0C],eax
 0047148C    push        6
 0047148E    push        0
 00471490    push        400
 00471495    lea         eax,[ebp-18]
 00471498    push        eax
 00471499    lea         eax,[ebp-18]
 0047149C    push        eax
 0047149D    mov         eax,[0055B5C0];^gvar_0055DA24
 004714A2    mov         eax,dword ptr [eax]
 004714A4    call        eax
 004714A6    mov         dx,word ptr [ebx]
 004714A9    mov         cx,6
 004714AD    call        VarResultCheck
 004714B2    mov         eax,dword ptr [ebp-10]
 004714B5    mov         dword ptr [ebp-8],eax
 004714B8    mov         eax,dword ptr [ebp-0C]
 004714BB    mov         dword ptr [ebp-4],eax
 004714BE    fild        qword ptr [ebp-8]
 004714C1    pop         ebx
 004714C2    mov         esp,ebp
 004714C4    pop         ebp
 004714C5    ret         8
*}
end;

//004714C8
function VarToCurrencyViaOS(const V:TVarData):Currency;
begin
{*
 004714C8    push        ebx
 004714C9    add         esp,0FFFFFFE8
 004714CC    mov         ebx,eax
 004714CE    lea         eax,[esp+8]
 004714D2    push        eax
 004714D3    call        oleaut32.VariantInit
 004714D8    push        6
 004714DA    push        0
 004714DC    push        400
 004714E1    push        ebx
 004714E2    lea         eax,[esp+18]
 004714E6    push        eax
 004714E7    mov         eax,[0055B5C0];^gvar_0055DA24
 004714EC    mov         eax,dword ptr [eax]
 004714EE    call        eax
 004714F0    mov         dx,word ptr [ebx]
 004714F3    mov         cx,6
 004714F7    call        VarResultCheck
 004714FC    mov         eax,dword ptr [esp+10]
 00471500    mov         dword ptr [esp],eax
 00471503    mov         eax,dword ptr [esp+14]
 00471507    mov         dword ptr [esp+4],eax
 0047150B    fild        qword ptr [esp]
 0047150E    add         esp,18
 00471511    pop         ebx
 00471512    ret
*}
end;

//00471514
function VarToCurrencyAny(const V:TVarData):Currency;
begin
{*
 00471514    push        ebp
 00471515    mov         ebp,esp
 00471517    add         esp,0FFFFFFE8
 0047151A    push        ebx
 0047151B    mov         ebx,eax
 0047151D    lea         eax,[ebp-18]
 00471520    push        eax
 00471521    call        oleaut32.VariantInit
 00471526    xor         eax,eax
 00471528    push        ebp
 00471529    push        471569
 0047152E    push        dword ptr fs:[eax]
 00471531    mov         dword ptr fs:[eax],esp
 00471534    mov         edx,ebx
 00471536    lea         eax,[ebp-18]
 00471539    call        @VarCopy
 0047153E    lea         eax,[ebp-18]
 00471541    call        dword ptr ds:[55DA98]
 00471547    lea         eax,[ebp-18]
 0047154A    call        @VarToCurrency
 0047154F    fistp       qword ptr [ebp-8]
 00471552    wait
 00471553    xor         eax,eax
 00471555    pop         edx
 00471556    pop         ecx
 00471557    pop         ecx
 00471558    mov         dword ptr fs:[eax],edx
 0047155B    push        471570
 00471560    lea         eax,[ebp-18]
 00471563    call        @VarClear
 00471568    ret
>00471569    jmp         @HandleFinally
>0047156E    jmp         00471560
 00471570    fild        qword ptr [ebp-8]
 00471573    pop         ebx
 00471574    mov         esp,ebp
 00471576    pop         ebp
 00471577    ret
*}
end;

//00471578
function VarToCurrencyCustom(const V:TVarData; var AValue:Currency):Boolean;
begin
{*
 00471578    push        ebx
 00471579    push        esi
 0047157A    push        edi
 0047157B    add         esp,0FFFFFFEC
 0047157E    mov         edi,edx
 00471580    mov         esi,eax
 00471582    mov         edx,esp
 00471584    mov         ax,word ptr [esi]
 00471587    call        FindCustomVariantType
 0047158C    mov         ebx,eax
 0047158E    test        bl,bl
>00471590    je          004715BA
 00471592    lea         eax,[esp+4]
 00471596    push        eax
 00471597    call        oleaut32.VariantInit
 0047159C    push        6
 0047159E    mov         ecx,esi
 004715A0    lea         edx,[esp+8]
 004715A4    mov         eax,dword ptr [esp+4]
 004715A8    mov         esi,dword ptr [eax]
 004715AA    call        dword ptr [esi+1C]
 004715AD    mov         eax,dword ptr [esp+0C]
 004715B1    mov         dword ptr [edi],eax
 004715B3    mov         eax,dword ptr [esp+10]
 004715B7    mov         dword ptr [edi+4],eax
 004715BA    mov         eax,ebx
 004715BC    add         esp,14
 004715BF    pop         edi
 004715C0    pop         esi
 004715C1    pop         ebx
 004715C2    ret
*}
end;

//004715C4
function @VarToCurrency(const V:TVarData):Currency;
begin
{*
 004715C4    push        ebx
 004715C5    add         esp,0FFFFFFEC
 004715C8    mov         ebx,eax
 004715CA    mov         ax,word ptr [ebx]
 004715CD    movzx       edx,ax
 004715D0    cmp         edx,14
>004715D3    ja          00471794
 004715D9    jmp         dword ptr [edx*4+4715E0]
 004715D9    dd          00471634
 004715D9    dd          00471642
 004715D9    dd          00471666
 004715D9    dd          00471678
 004715D9    dd          0047168A
 004715D9    dd          0047168A
 004715D9    dd          0047169A
 004715D9    dd          004716AC
 004715D9    dd          004716BC
 004715D9    dd          00471784
 004715D9    dd          00471794
 004715D9    dd          004716CC
 004715D9    dd          00471773
 004715D9    dd          00471784
 004715D9    dd          00471794
 004715D9    dd          00471794
 004715D9    dd          004716E7
 004715D9    dd          00471702
 004715D9    dd          0047171E
 004715D9    dd          00471739
 004715D9    dd          00471759
 00471634    xor         eax,eax
 00471636    mov         dword ptr [esp],eax
 00471639    mov         dword ptr [esp+4],eax
>0047163D    jmp         00471981
 00471642    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>00471649    je          00471658
 0047164B    mov         dx,6
 0047164F    mov         ax,1
 00471653    call        VarCastError
 00471658    xor         eax,eax
 0047165A    mov         dword ptr [esp],eax
 0047165D    mov         dword ptr [esp+4],eax
>00471661    jmp         00471981
 00471666    fild        word ptr [ebx+8]
 00471669    fmul        dword ptr ds:[47198C]
 0047166F    fistp       qword ptr [esp]
 00471672    wait
>00471673    jmp         00471981
 00471678    fild        dword ptr [ebx+8]
 0047167B    fmul        dword ptr ds:[47198C]
 00471681    fistp       qword ptr [esp]
 00471684    wait
>00471685    jmp         00471981
 0047168A    mov         eax,ebx
 0047168C    call        VarToCurrencyViaOS
 00471691    fistp       qword ptr [esp]
 00471694    wait
>00471695    jmp         00471981
 0047169A    mov         eax,dword ptr [ebx+8]
 0047169D    mov         dword ptr [esp],eax
 004716A0    mov         eax,dword ptr [ebx+0C]
 004716A3    mov         dword ptr [esp+4],eax
>004716A7    jmp         00471981
 004716AC    mov         eax,ebx
 004716AE    call        VarToCurrencyViaOS
 004716B3    fistp       qword ptr [esp]
 004716B6    wait
>004716B7    jmp         00471981
 004716BC    mov         eax,ebx
 004716BE    call        VarToCurrencyAsString
 004716C3    fistp       qword ptr [esp]
 004716C6    wait
>004716C7    jmp         00471981
 004716CC    movsx       eax,word ptr [ebx+8]
 004716D0    mov         dword ptr [esp+8],eax
 004716D4    fild        dword ptr [esp+8]
 004716D8    fmul        dword ptr ds:[47198C]
 004716DE    fistp       qword ptr [esp]
 004716E1    wait
>004716E2    jmp         00471981
 004716E7    movsx       eax,byte ptr [ebx+8]
 004716EB    mov         dword ptr [esp+8],eax
 004716EF    fild        dword ptr [esp+8]
 004716F3    fmul        dword ptr ds:[47198C]
 004716F9    fistp       qword ptr [esp]
 004716FC    wait
>004716FD    jmp         00471981
 00471702    xor         eax,eax
 00471704    mov         al,byte ptr [ebx+8]
 00471707    mov         dword ptr [esp+8],eax
 0047170B    fild        dword ptr [esp+8]
 0047170F    fmul        dword ptr ds:[47198C]
 00471715    fistp       qword ptr [esp]
 00471718    wait
>00471719    jmp         00471981
 0047171E    movzx       eax,word ptr [ebx+8]
 00471722    mov         dword ptr [esp+8],eax
 00471726    fild        dword ptr [esp+8]
 0047172A    fmul        dword ptr ds:[47198C]
 00471730    fistp       qword ptr [esp]
 00471733    wait
>00471734    jmp         00471981
 00471739    mov         eax,dword ptr [ebx+8]
 0047173C    mov         dword ptr [esp+0C],eax
 00471740    xor         eax,eax
 00471742    mov         dword ptr [esp+10],eax
 00471746    fild        qword ptr [esp+0C]
 0047174A    fmul        dword ptr ds:[47198C]
 00471750    fistp       qword ptr [esp]
 00471753    wait
>00471754    jmp         00471981
 00471759    fild        qword ptr [ebx+8]
 0047175C    add         esp,0FFFFFFF8
 0047175F    fstp        qword ptr [esp]
 00471762    wait
 00471763    mov         eax,ebx
 00471765    call        VarToCurrencyAsDouble
 0047176A    fistp       qword ptr [esp]
 0047176D    wait
>0047176E    jmp         00471981
 00471773    mov         eax,dword ptr [ebx+8]
 00471776    call        @VarToCurrency
 0047177B    fistp       qword ptr [esp]
 0047177E    wait
>0047177F    jmp         00471981
 00471784    mov         eax,ebx
 00471786    call        VarToCurrencyViaOS
 0047178B    fistp       qword ptr [esp]
 0047178E    wait
>0047178F    jmp         00471981
 00471794    mov         edx,eax
 00471796    sub         dx,100
>0047179B    je          004717A4
 0047179D    dec         dx
>004717A0    je          004717B4
>004717A2    jmp         004717C4
 004717A4    mov         eax,ebx
 004717A6    call        VarToCurrencyAsString
 004717AB    fistp       qword ptr [esp]
 004717AE    wait
>004717AF    jmp         00471981
 004717B4    mov         eax,ebx
 004717B6    call        VarToCurrencyAny
 004717BB    fistp       qword ptr [esp]
 004717BE    wait
>004717BF    jmp         00471981
 004717C4    test        ah,40
>004717C7    je          00471969
 004717CD    movzx       eax,ax
 004717D0    and         eax,0FFFFBFFF
 004717D5    cmp         eax,14
>004717D8    ja          0047195C
 004717DE    jmp         dword ptr [eax*4+4717E5]
 004717DE    dd          0047195C
 004717DE    dd          0047195C
 004717DE    dd          00471839
 004717DE    dd          0047184D
 004717DE    dd          00471861
 004717DE    dd          00471861
 004717DE    dd          00471871
 004717DE    dd          00471885
 004717DE    dd          00471895
 004717DE    dd          0047195C
 004717DE    dd          0047195C
 004717DE    dd          004718A5
 004717DE    dd          0047194E
 004717DE    dd          0047195C
 004717DE    dd          0047195C
 004717DE    dd          0047195C
 004717DE    dd          004718C2
 004717DE    dd          004718DF
 004717DE    dd          004718FC
 004717DE    dd          00471916
 004717DE    dd          00471935
 00471839    mov         eax,dword ptr [ebx+8]
 0047183C    fild        word ptr [eax]
 0047183E    fmul        dword ptr ds:[47198C]
 00471844    fistp       qword ptr [esp]
 00471847    wait
>00471848    jmp         00471981
 0047184D    mov         eax,dword ptr [ebx+8]
 00471850    fild        dword ptr [eax]
 00471852    fmul        dword ptr ds:[47198C]
 00471858    fistp       qword ptr [esp]
 0047185B    wait
>0047185C    jmp         00471981
 00471861    mov         eax,ebx
 00471863    call        VarToCurrencyViaOS
 00471868    fistp       qword ptr [esp]
 0047186B    wait
>0047186C    jmp         00471981
 00471871    mov         eax,dword ptr [ebx+8]
 00471874    mov         edx,dword ptr [eax]
 00471876    mov         dword ptr [esp],edx
 00471879    mov         edx,dword ptr [eax+4]
 0047187C    mov         dword ptr [esp+4],edx
>00471880    jmp         00471981
 00471885    mov         eax,ebx
 00471887    call        VarToCurrencyViaOS
 0047188C    fistp       qword ptr [esp]
 0047188F    wait
>00471890    jmp         00471981
 00471895    mov         eax,ebx
 00471897    call        VarToCurrencyAsString
 0047189C    fistp       qword ptr [esp]
 0047189F    wait
>004718A0    jmp         00471981
 004718A5    mov         eax,dword ptr [ebx+8]
 004718A8    movsx       eax,word ptr [eax]
 004718AB    mov         dword ptr [esp+8],eax
 004718AF    fild        dword ptr [esp+8]
 004718B3    fmul        dword ptr ds:[47198C]
 004718B9    fistp       qword ptr [esp]
 004718BC    wait
>004718BD    jmp         00471981
 004718C2    mov         eax,dword ptr [ebx+8]
 004718C5    movsx       eax,byte ptr [eax]
 004718C8    mov         dword ptr [esp+8],eax
 004718CC    fild        dword ptr [esp+8]
 004718D0    fmul        dword ptr ds:[47198C]
 004718D6    fistp       qword ptr [esp]
 004718D9    wait
>004718DA    jmp         00471981
 004718DF    mov         eax,dword ptr [ebx+8]
 004718E2    movzx       eax,byte ptr [eax]
 004718E5    mov         dword ptr [esp+8],eax
 004718E9    fild        dword ptr [esp+8]
 004718ED    fmul        dword ptr ds:[47198C]
 004718F3    fistp       qword ptr [esp]
 004718F6    wait
>004718F7    jmp         00471981
 004718FC    mov         eax,dword ptr [ebx+8]
 004718FF    movzx       eax,word ptr [eax]
 00471902    mov         dword ptr [esp+8],eax
 00471906    fild        dword ptr [esp+8]
 0047190A    fmul        dword ptr ds:[47198C]
 00471910    fistp       qword ptr [esp]
 00471913    wait
>00471914    jmp         00471981
 00471916    mov         eax,dword ptr [ebx+8]
 00471919    mov         eax,dword ptr [eax]
 0047191B    mov         dword ptr [esp+0C],eax
 0047191F    xor         eax,eax
 00471921    mov         dword ptr [esp+10],eax
 00471925    fild        qword ptr [esp+0C]
 00471929    fmul        dword ptr ds:[47198C]
 0047192F    fistp       qword ptr [esp]
 00471932    wait
>00471933    jmp         00471981
 00471935    mov         eax,dword ptr [ebx+8]
 00471938    fild        qword ptr [eax]
 0047193A    add         esp,0FFFFFFF8
 0047193D    fstp        qword ptr [esp]
 00471940    wait
 00471941    mov         eax,ebx
 00471943    call        VarToCurrencyAsDouble
 00471948    fistp       qword ptr [esp]
 0047194B    wait
>0047194C    jmp         00471981
 0047194E    mov         eax,dword ptr [ebx+8]
 00471951    call        @VarToCurrency
 00471956    fistp       qword ptr [esp]
 00471959    wait
>0047195A    jmp         00471981
 0047195C    mov         eax,ebx
 0047195E    call        VarToCurrencyViaOS
 00471963    fistp       qword ptr [esp]
 00471966    wait
>00471967    jmp         00471981
 00471969    mov         edx,esp
 0047196B    mov         eax,ebx
 0047196D    call        VarToCurrencyCustom
 00471972    test        al,al
>00471974    jne         00471981
 00471976    mov         eax,ebx
 00471978    call        VarToCurrencyViaOS
 0047197D    fistp       qword ptr [esp]
 00471980    wait
 00471981    fild        qword ptr [esp]
 00471984    add         esp,14
 00471987    pop         ebx
 00471988    ret
*}
end;

//00471990
function CurrToWStrViaOS(const AValue:Currency):WideString;
begin
{*
 00471990    push        ebp
 00471991    mov         ebp,esp
 00471993    push        ebx
 00471994    mov         ebx,eax
 00471996    mov         eax,ebx
 00471998    call        @WStrClr
 0047199D    push        eax
 0047199E    push        0
 004719A0    push        400
 004719A5    push        dword ptr [ebp+0C]
 004719A8    push        dword ptr [ebp+8]
 004719AB    mov         eax,[0055B188];^gvar_0055DA70
 004719B0    mov         eax,dword ptr [eax]
 004719B2    call        eax
 004719B4    mov         cx,8
 004719B8    mov         dx,6
 004719BC    call        VarResultCheck
 004719C1    pop         ebx
 004719C2    pop         ebp
 004719C3    ret         8
*}
end;

//004719C8
function DateToWStrViaOS(const AValue:TDateTime):WideString;
begin
{*
 004719C8    push        ebp
 004719C9    mov         ebp,esp
 004719CB    push        ebx
 004719CC    mov         ebx,eax
 004719CE    mov         eax,ebx
 004719D0    call        @WStrClr
 004719D5    push        eax
 004719D6    push        0
 004719D8    push        400
 004719DD    push        dword ptr [ebp+0C]
 004719E0    push        dword ptr [ebp+8]
 004719E3    mov         eax,[0055B3EC];^gvar_0055DA74
 004719E8    mov         eax,dword ptr [eax]
 004719EA    call        eax
 004719EC    mov         cx,8
 004719F0    mov         dx,7
 004719F4    call        VarResultCheck
 004719F9    pop         ebx
 004719FA    pop         ebp
 004719FB    ret         8
*}
end;

//00471A00
function BoolToWStrViaOS(const AValue:WordBool):WideString;
begin
{*
 00471A00    push        ebp
 00471A01    mov         ebp,esp
 00471A03    xor         ecx,ecx
 00471A05    push        ecx
 00471A06    push        ecx
 00471A07    push        ecx
 00471A08    push        ecx
 00471A09    push        ebx
 00471A0A    push        esi
 00471A0B    mov         ebx,edx
 00471A0D    mov         esi,eax
 00471A0F    xor         eax,eax
 00471A11    push        ebp
 00471A12    push        471AB6
 00471A17    push        dword ptr fs:[eax]
 00471A1A    mov         dword ptr fs:[eax],esp
 00471A1D    mov         eax,ebx
 00471A1F    call        @WStrClr
 00471A24    push        eax
 00471A25    push        0
 00471A27    push        400
 00471A2C    push        esi
 00471A2D    mov         eax,[0055B580];^gvar_0055DA78
 00471A32    mov         eax,dword ptr [eax]
 00471A34    call        eax
 00471A36    mov         cx,8
 00471A3A    mov         dx,0B
 00471A3E    call        VarResultCheck
 00471A43    mov         al,[00540BA0]
 00471A48    sub         al,1
>00471A4A    jb          00471A9B
>00471A4C    je          00471A54
 00471A4E    dec         al
>00471A50    je          00471A75
>00471A52    jmp         00471A96
 00471A54    lea         eax,[ebp-8]
 00471A57    mov         edx,dword ptr [ebx]
 00471A59    call        @LStrFromWStr
 00471A5E    mov         eax,dword ptr [ebp-8]
 00471A61    lea         edx,[ebp-4]
 00471A64    call        00466210
 00471A69    mov         edx,dword ptr [ebp-4]
 00471A6C    mov         eax,ebx
 00471A6E    call        @WStrFromLStr
>00471A73    jmp         00471A9B
 00471A75    lea         eax,[ebp-10]
 00471A78    mov         edx,dword ptr [ebx]
 00471A7A    call        @LStrFromWStr
 00471A7F    mov         eax,dword ptr [ebp-10]
 00471A82    lea         edx,[ebp-0C]
 00471A85    call        004661A4
 00471A8A    mov         edx,dword ptr [ebp-0C]
 00471A8D    mov         eax,ebx
 00471A8F    call        @WStrFromLStr
>00471A94    jmp         00471A9B
 00471A96    call        VarInvalidOp
 00471A9B    xor         eax,eax
 00471A9D    pop         edx
 00471A9E    pop         ecx
 00471A9F    pop         ecx
 00471AA0    mov         dword ptr fs:[eax],edx
 00471AA3    push        471ABD
 00471AA8    lea         eax,[ebp-10]
 00471AAB    mov         edx,4
 00471AB0    call        @LStrArrayClr
 00471AB5    ret
>00471AB6    jmp         @HandleFinally
>00471ABB    jmp         00471AA8
 00471ABD    pop         esi
 00471ABE    pop         ebx
 00471ABF    mov         esp,ebp
 00471AC1    pop         ebp
 00471AC2    ret
*}
end;

//00471AC4
function VarToLStrViaOS(const V:TVarData):AnsiString;
begin
{*
 00471AC4    push        ebp
 00471AC5    mov         ebp,esp
 00471AC7    add         esp,0FFFFFFE8
 00471ACA    push        ebx
 00471ACB    push        esi
 00471ACC    xor         ecx,ecx
 00471ACE    mov         dword ptr [ebp-14],ecx
 00471AD1    mov         dword ptr [ebp-18],ecx
 00471AD4    mov         esi,edx
 00471AD6    mov         ebx,eax
 00471AD8    xor         eax,eax
 00471ADA    push        ebp
 00471ADB    push        471B83
 00471AE0    push        dword ptr fs:[eax]
 00471AE3    mov         dword ptr fs:[eax],esp
 00471AE6    lea         eax,[ebp-10]
 00471AE9    push        eax
 00471AEA    call        oleaut32.VariantInit
 00471AEF    xor         eax,eax
 00471AF1    push        ebp
 00471AF2    push        471B61
 00471AF7    push        dword ptr fs:[eax]
 00471AFA    mov         dword ptr fs:[eax],esp
 00471AFD    push        8
 00471AFF    push        0
 00471B01    push        400
 00471B06    push        ebx
 00471B07    lea         eax,[ebp-10]
 00471B0A    push        eax
 00471B0B    mov         eax,[0055B5C0];^gvar_0055DA24
 00471B10    mov         eax,dword ptr [eax]
 00471B12    call        eax
 00471B14    mov         dx,word ptr [ebx]
 00471B17    mov         cx,100
 00471B1B    call        VarResultCheck
 00471B20    lea         eax,[ebp-14]
 00471B23    push        eax
 00471B24    lea         eax,[ebp-18]
 00471B27    mov         edx,dword ptr [ebp-8]
 00471B2A    call        @WStrFromPWChar
 00471B2F    mov         eax,dword ptr [ebp-18]
 00471B32    mov         ecx,7FFFFFFF
 00471B37    mov         edx,1
 00471B3C    call        @WStrCopy
 00471B41    mov         edx,dword ptr [ebp-14]
 00471B44    mov         eax,esi
 00471B46    call        @LStrFromWStr
 00471B4B    xor         eax,eax
 00471B4D    pop         edx
 00471B4E    pop         ecx
 00471B4F    pop         ecx
 00471B50    mov         dword ptr fs:[eax],edx
 00471B53    push        471B68
 00471B58    lea         eax,[ebp-10]
 00471B5B    call        @VarClear
 00471B60    ret
>00471B61    jmp         @HandleFinally
>00471B66    jmp         00471B58
 00471B68    xor         eax,eax
 00471B6A    pop         edx
 00471B6B    pop         ecx
 00471B6C    pop         ecx
 00471B6D    mov         dword ptr fs:[eax],edx
 00471B70    push        471B8A
 00471B75    lea         eax,[ebp-18]
 00471B78    mov         edx,2
 00471B7D    call        @WStrArrayClr
 00471B82    ret
>00471B83    jmp         @HandleFinally
>00471B88    jmp         00471B75
 00471B8A    pop         esi
 00471B8B    pop         ebx
 00471B8C    mov         esp,ebp
 00471B8E    pop         ebp
 00471B8F    ret
*}
end;

//00471B90
function VarToLStrAny(const V:TVarData):AnsiString;
begin
{*
 00471B90    push        ebp
 00471B91    mov         ebp,esp
 00471B93    add         esp,0FFFFFFF0
 00471B96    push        ebx
 00471B97    push        esi
 00471B98    mov         esi,edx
 00471B9A    mov         ebx,eax
 00471B9C    lea         eax,[ebp-10]
 00471B9F    push        eax
 00471BA0    call        oleaut32.VariantInit
 00471BA5    xor         eax,eax
 00471BA7    push        ebp
 00471BA8    push        471BE6
 00471BAD    push        dword ptr fs:[eax]
 00471BB0    mov         dword ptr fs:[eax],esp
 00471BB3    mov         edx,ebx
 00471BB5    lea         eax,[ebp-10]
 00471BB8    call        @VarCopy
 00471BBD    lea         eax,[ebp-10]
 00471BC0    call        dword ptr ds:[55DA98]
 00471BC6    lea         edx,[ebp-10]
 00471BC9    mov         eax,esi
 00471BCB    call        @VarToLStr
 00471BD0    xor         eax,eax
 00471BD2    pop         edx
 00471BD3    pop         ecx
 00471BD4    pop         ecx
 00471BD5    mov         dword ptr fs:[eax],edx
 00471BD8    push        471BED
 00471BDD    lea         eax,[ebp-10]
 00471BE0    call        @VarClear
 00471BE5    ret
>00471BE6    jmp         @HandleFinally
>00471BEB    jmp         00471BDD
 00471BED    pop         esi
 00471BEE    pop         ebx
 00471BEF    mov         esp,ebp
 00471BF1    pop         ebp
 00471BF2    ret
*}
end;

//00471BF4
function VarToLStrCustom(const V:TVarData; var AValue:AnsiString):Boolean;
begin
{*
 00471BF4    push        ebp
 00471BF5    mov         ebp,esp
 00471BF7    add         esp,0FFFFFFE4
 00471BFA    push        ebx
 00471BFB    mov         dword ptr [ebp-4],edx
 00471BFE    mov         ebx,eax
 00471C00    mov         eax,dword ptr [ebp-4]
 00471C03    test        eax,eax
>00471C05    je          00471C0B
 00471C07    xor         edx,edx
 00471C09    mov         dword ptr [eax],edx
 00471C0B    lea         edx,[ebp-0C]
 00471C0E    mov         ax,word ptr [ebx]
 00471C11    call        FindCustomVariantType
 00471C16    mov         byte ptr [ebp-5],al
 00471C19    cmp         byte ptr [ebp-5],0
>00471C1D    je          00471C70
 00471C1F    lea         eax,[ebp-1C]
 00471C22    push        eax
 00471C23    call        oleaut32.VariantInit
 00471C28    xor         eax,eax
 00471C2A    push        ebp
 00471C2B    push        471C69
 00471C30    push        dword ptr fs:[eax]
 00471C33    mov         dword ptr fs:[eax],esp
 00471C36    push        100
 00471C3B    mov         ecx,ebx
 00471C3D    lea         edx,[ebp-1C]
 00471C40    mov         eax,dword ptr [ebp-0C]
 00471C43    mov         ebx,dword ptr [eax]
 00471C45    call        dword ptr [ebx+1C]
 00471C48    mov         eax,dword ptr [ebp-4]
 00471C4B    mov         edx,dword ptr [ebp-14]
 00471C4E    call        @LStrAsg
 00471C53    xor         eax,eax
 00471C55    pop         edx
 00471C56    pop         ecx
 00471C57    pop         ecx
 00471C58    mov         dword ptr fs:[eax],edx
 00471C5B    push        471C70
 00471C60    lea         eax,[ebp-1C]
 00471C63    call        @VarClear
 00471C68    ret
>00471C69    jmp         @HandleFinally
>00471C6E    jmp         00471C60
 00471C70    mov         al,byte ptr [ebp-5]
 00471C73    pop         ebx
 00471C74    mov         esp,ebp
 00471C76    pop         ebp
 00471C77    ret
*}
end;

//00471C78
procedure @VarToLStr(var S:AnsiString; const V:TVarData);
begin
{*
 00471C78    push        ebp
 00471C79    mov         ebp,esp
 00471C7B    mov         ecx,0F
 00471C80    push        0
 00471C82    push        0
 00471C84    dec         ecx
>00471C85    jne         00471C80
 00471C87    push        ebx
 00471C88    push        esi
 00471C89    mov         ebx,edx
 00471C8B    mov         esi,eax
 00471C8D    xor         eax,eax
 00471C8F    push        ebp
 00471C90    push        4721AF
 00471C95    push        dword ptr fs:[eax]
 00471C98    mov         dword ptr fs:[eax],esp
 00471C9B    mov         ax,word ptr [ebx]
 00471C9E    movzx       edx,ax
 00471CA1    cmp         edx,14
>00471CA4    ja          00471EEC
 00471CAA    jmp         dword ptr [edx*4+471CB1]
 00471CAA    dd          00471D05
 00471CAA    dd          00471D11
 00471CAA    dd          00471D39
 00471CAA    dd          00471D54
 00471CAA    dd          00471D6E
 00471CAA    dd          00471D8F
 00471CAA    dd          00471DB0
 00471CAA    dd          00471DCD
 00471CAA    dd          00471DEA
 00471CAA    dd          00471ED3
 00471CAA    dd          00471EEC
 00471CAA    dd          00471E1A
 00471CAA    dd          00471EC2
 00471CAA    dd          00471ED3
 00471CAA    dd          00471EEC
 00471CAA    dd          00471EEC
 00471CAA    dd          00471E35
 00471CAA    dd          00471E50
 00471CAA    dd          00471E6C
 00471CAA    dd          00471E87
 00471CAA    dd          00471EA5
 00471D05    mov         eax,esi
 00471D07    call        @LStrClr
>00471D0C    jmp         00472160
 00471D11    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>00471D18    je          00471D27
 00471D1A    mov         dx,100
 00471D1E    mov         ax,1
 00471D22    call        VarCastError
 00471D27    mov         eax,esi
 00471D29    mov         edx,dword ptr ds:[540B98]
 00471D2F    call        @LStrAsg
>00471D34    jmp         00472160
 00471D39    lea         edx,[ebp-4]
 00471D3C    movsx       eax,word ptr [ebx+8]
 00471D40    call        IntToStr
 00471D45    mov         edx,dword ptr [ebp-4]
 00471D48    mov         eax,esi
 00471D4A    call        @LStrAsg
>00471D4F    jmp         00472160
 00471D54    lea         edx,[ebp-8]
 00471D57    mov         eax,dword ptr [ebx+8]
 00471D5A    call        IntToStr
 00471D5F    mov         edx,dword ptr [ebp-8]
 00471D62    mov         eax,esi
 00471D64    call        @LStrAsg
>00471D69    jmp         00472160
 00471D6E    fld         dword ptr [ebx+8]
 00471D71    add         esp,0FFFFFFF4
 00471D74    fstp        tbyte ptr [esp]
 00471D77    wait
 00471D78    lea         eax,[ebp-0C]
 00471D7B    call        00468298
 00471D80    mov         edx,dword ptr [ebp-0C]
 00471D83    mov         eax,esi
 00471D85    call        @LStrAsg
>00471D8A    jmp         00472160
 00471D8F    fld         qword ptr [ebx+8]
 00471D92    add         esp,0FFFFFFF4
 00471D95    fstp        tbyte ptr [esp]
 00471D98    wait
 00471D99    lea         eax,[ebp-10]
 00471D9C    call        00468298
 00471DA1    mov         edx,dword ptr [ebp-10]
 00471DA4    mov         eax,esi
 00471DA6    call        @LStrAsg
>00471DAB    jmp         00472160
 00471DB0    push        dword ptr [ebx+0C]
 00471DB3    push        dword ptr [ebx+8]
 00471DB6    lea         eax,[ebp-14]
 00471DB9    call        CurrToWStrViaOS
 00471DBE    mov         edx,dword ptr [ebp-14]
 00471DC1    mov         eax,esi
 00471DC3    call        @LStrFromWStr
>00471DC8    jmp         00472160
 00471DCD    push        dword ptr [ebx+0C]
 00471DD0    push        dword ptr [ebx+8]
 00471DD3    lea         eax,[ebp-18]
 00471DD6    call        DateToWStrViaOS
 00471DDB    mov         edx,dword ptr [ebp-18]
 00471DDE    mov         eax,esi
 00471DE0    call        @LStrFromWStr
>00471DE5    jmp         00472160
 00471DEA    lea         eax,[ebp-1C]
 00471DED    push        eax
 00471DEE    lea         eax,[ebp-20]
 00471DF1    mov         edx,dword ptr [ebx+8]
 00471DF4    call        @WStrFromPWChar
 00471DF9    mov         eax,dword ptr [ebp-20]
 00471DFC    mov         ecx,7FFFFFFF
 00471E01    mov         edx,1
 00471E06    call        @WStrCopy
 00471E0B    mov         edx,dword ptr [ebp-1C]
 00471E0E    mov         eax,esi
 00471E10    call        @LStrFromWStr
>00471E15    jmp         00472160
 00471E1A    lea         edx,[ebp-24]
 00471E1D    mov         ax,word ptr [ebx+8]
 00471E21    call        BoolToWStrViaOS
 00471E26    mov         edx,dword ptr [ebp-24]
 00471E29    mov         eax,esi
 00471E2B    call        @LStrFromWStr
>00471E30    jmp         00472160
 00471E35    lea         edx,[ebp-28]
 00471E38    movsx       eax,byte ptr [ebx+8]
 00471E3C    call        IntToStr
 00471E41    mov         edx,dword ptr [ebp-28]
 00471E44    mov         eax,esi
 00471E46    call        @LStrAsg
>00471E4B    jmp         00472160
 00471E50    lea         edx,[ebp-2C]
 00471E53    xor         eax,eax
 00471E55    mov         al,byte ptr [ebx+8]
 00471E58    call        IntToStr
 00471E5D    mov         edx,dword ptr [ebp-2C]
 00471E60    mov         eax,esi
 00471E62    call        @LStrAsg
>00471E67    jmp         00472160
 00471E6C    lea         edx,[ebp-30]
 00471E6F    movzx       eax,word ptr [ebx+8]
 00471E73    call        IntToStr
 00471E78    mov         edx,dword ptr [ebp-30]
 00471E7B    mov         eax,esi
 00471E7D    call        @LStrAsg
>00471E82    jmp         00472160
 00471E87    mov         eax,dword ptr [ebx+8]
 00471E8A    xor         edx,edx
 00471E8C    push        edx
 00471E8D    push        eax
 00471E8E    lea         eax,[ebp-34]
 00471E91    call        IntToStr
 00471E96    mov         edx,dword ptr [ebp-34]
 00471E99    mov         eax,esi
 00471E9B    call        @LStrAsg
>00471EA0    jmp         00472160
 00471EA5    push        dword ptr [ebx+0C]
 00471EA8    push        dword ptr [ebx+8]
 00471EAB    lea         eax,[ebp-38]
 00471EAE    call        IntToStr
 00471EB3    mov         edx,dword ptr [ebp-38]
 00471EB6    mov         eax,esi
 00471EB8    call        @LStrAsg
>00471EBD    jmp         00472160
 00471EC2    mov         eax,dword ptr [ebx+8]
 00471EC5    mov         edx,eax
 00471EC7    mov         eax,esi
 00471EC9    call        @VarToLStr
>00471ECE    jmp         00472160
 00471ED3    lea         edx,[ebp-3C]
 00471ED6    mov         eax,ebx
 00471ED8    call        VarToLStrViaOS
 00471EDD    mov         edx,dword ptr [ebp-3C]
 00471EE0    mov         eax,esi
 00471EE2    call        @LStrAsg
>00471EE7    jmp         00472160
 00471EEC    mov         edx,eax
 00471EEE    sub         dx,100
>00471EF3    je          00471EFC
 00471EF5    dec         dx
>00471EF8    je          00471F0B
>00471EFA    jmp         00471F24
 00471EFC    mov         eax,esi
 00471EFE    mov         edx,dword ptr [ebx+8]
 00471F01    call        @LStrAsg
>00471F06    jmp         00472160
 00471F0B    lea         edx,[ebp-40]
 00471F0E    mov         eax,ebx
 00471F10    call        VarToLStrAny
 00471F15    mov         edx,dword ptr [ebp-40]
 00471F18    mov         eax,esi
 00471F1A    call        @LStrAsg
>00471F1F    jmp         00472160
 00471F24    test        ah,40
>00471F27    je          00472138
 00471F2D    movzx       eax,ax
 00471F30    and         eax,0FFFFBFFF
 00471F35    cmp         eax,14
>00471F38    ja          00472122
 00471F3E    jmp         dword ptr [eax*4+471F45]
 00471F3E    dd          00472122
 00471F3E    dd          00472122
 00471F3E    dd          00471F99
 00471F3E    dd          00471FB6
 00471F3E    dd          00471FD2
 00471F3E    dd          00471FF5
 00471F3E    dd          00472018
 00471F3E    dd          00472037
 00471F3E    dd          00472056
 00471F3E    dd          00472122
 00471F3E    dd          00472122
 00471F3E    dd          00472067
 00471F3E    dd          00472114
 00471F3E    dd          00472122
 00471F3E    dd          00472122
 00471F3E    dd          00472122
 00471F3E    dd          00472084
 00471F3E    dd          004720A1
 00471F3E    dd          004720BE
 00471F3E    dd          004720DB
 00471F3E    dd          004720F8
 00471F99    lea         edx,[ebp-44]
 00471F9C    mov         eax,dword ptr [ebx+8]
 00471F9F    movsx       eax,word ptr [eax]
 00471FA2    call        IntToStr
 00471FA7    mov         edx,dword ptr [ebp-44]
 00471FAA    mov         eax,esi
 00471FAC    call        @LStrAsg
>00471FB1    jmp         00472160
 00471FB6    lea         edx,[ebp-48]
 00471FB9    mov         eax,dword ptr [ebx+8]
 00471FBC    mov         eax,dword ptr [eax]
 00471FBE    call        IntToStr
 00471FC3    mov         edx,dword ptr [ebp-48]
 00471FC6    mov         eax,esi
 00471FC8    call        @LStrAsg
>00471FCD    jmp         00472160
 00471FD2    mov         eax,dword ptr [ebx+8]
 00471FD5    fld         dword ptr [eax]
 00471FD7    add         esp,0FFFFFFF4
 00471FDA    fstp        tbyte ptr [esp]
 00471FDD    wait
 00471FDE    lea         eax,[ebp-4C]
 00471FE1    call        00468298
 00471FE6    mov         edx,dword ptr [ebp-4C]
 00471FE9    mov         eax,esi
 00471FEB    call        @LStrAsg
>00471FF0    jmp         00472160
 00471FF5    mov         eax,dword ptr [ebx+8]
 00471FF8    fld         qword ptr [eax]
 00471FFA    add         esp,0FFFFFFF4
 00471FFD    fstp        tbyte ptr [esp]
 00472000    wait
 00472001    lea         eax,[ebp-50]
 00472004    call        00468298
 00472009    mov         edx,dword ptr [ebp-50]
 0047200C    mov         eax,esi
 0047200E    call        @LStrAsg
>00472013    jmp         00472160
 00472018    mov         eax,dword ptr [ebx+8]
 0047201B    push        dword ptr [eax+4]
 0047201E    push        dword ptr [eax]
 00472020    lea         eax,[ebp-54]
 00472023    call        CurrToWStrViaOS
 00472028    mov         edx,dword ptr [ebp-54]
 0047202B    mov         eax,esi
 0047202D    call        @LStrFromWStr
>00472032    jmp         00472160
 00472037    mov         eax,dword ptr [ebx+8]
 0047203A    push        dword ptr [eax+4]
 0047203D    push        dword ptr [eax]
 0047203F    lea         eax,[ebp-58]
 00472042    call        DateToWStrViaOS
 00472047    mov         edx,dword ptr [ebp-58]
 0047204A    mov         eax,esi
 0047204C    call        @LStrFromWStr
>00472051    jmp         00472160
 00472056    mov         eax,esi
 00472058    mov         edx,dword ptr [ebx+8]
 0047205B    mov         edx,dword ptr [edx]
 0047205D    call        @LStrFromPWChar
>00472062    jmp         00472160
 00472067    lea         edx,[ebp-5C]
 0047206A    mov         eax,dword ptr [ebx+8]
 0047206D    mov         ax,word ptr [eax]
 00472070    call        BoolToWStrViaOS
 00472075    mov         edx,dword ptr [ebp-5C]
 00472078    mov         eax,esi
 0047207A    call        @LStrFromWStr
>0047207F    jmp         00472160
 00472084    lea         edx,[ebp-60]
 00472087    mov         eax,dword ptr [ebx+8]
 0047208A    movsx       eax,byte ptr [eax]
 0047208D    call        IntToStr
 00472092    mov         edx,dword ptr [ebp-60]
 00472095    mov         eax,esi
 00472097    call        @LStrAsg
>0047209C    jmp         00472160
 004720A1    lea         edx,[ebp-64]
 004720A4    mov         eax,dword ptr [ebx+8]
 004720A7    movzx       eax,byte ptr [eax]
 004720AA    call        IntToStr
 004720AF    mov         edx,dword ptr [ebp-64]
 004720B2    mov         eax,esi
 004720B4    call        @LStrAsg
>004720B9    jmp         00472160
 004720BE    lea         edx,[ebp-68]
 004720C1    mov         eax,dword ptr [ebx+8]
 004720C4    movzx       eax,word ptr [eax]
 004720C7    call        IntToStr
 004720CC    mov         edx,dword ptr [ebp-68]
 004720CF    mov         eax,esi
 004720D1    call        @LStrAsg
>004720D6    jmp         00472160
 004720DB    mov         eax,dword ptr [ebx+8]
 004720DE    mov         eax,dword ptr [eax]
 004720E0    xor         edx,edx
 004720E2    push        edx
 004720E3    push        eax
 004720E4    lea         eax,[ebp-6C]
 004720E7    call        IntToStr
 004720EC    mov         edx,dword ptr [ebp-6C]
 004720EF    mov         eax,esi
 004720F1    call        @LStrAsg
>004720F6    jmp         00472160
 004720F8    mov         eax,dword ptr [ebx+8]
 004720FB    push        dword ptr [eax+4]
 004720FE    push        dword ptr [eax]
 00472100    lea         eax,[ebp-70]
 00472103    call        IntToStr
 00472108    mov         edx,dword ptr [ebp-70]
 0047210B    mov         eax,esi
 0047210D    call        @LStrAsg
>00472112    jmp         00472160
 00472114    mov         eax,dword ptr [ebx+8]
 00472117    mov         edx,eax
 00472119    mov         eax,esi
 0047211B    call        @VarToLStr
>00472120    jmp         00472160
 00472122    lea         edx,[ebp-74]
 00472125    mov         eax,ebx
 00472127    call        VarToLStrViaOS
 0047212C    mov         edx,dword ptr [ebp-74]
 0047212F    mov         eax,esi
 00472131    call        @LStrAsg
>00472136    jmp         00472160
 00472138    mov         eax,esi
 0047213A    call        @LStrClr
 0047213F    mov         edx,eax
 00472141    mov         eax,ebx
 00472143    call        VarToLStrCustom
 00472148    test        al,al
>0047214A    jne         00472160
 0047214C    lea         edx,[ebp-78]
 0047214F    mov         eax,ebx
 00472151    call        VarToLStrViaOS
 00472156    mov         edx,dword ptr [ebp-78]
 00472159    mov         eax,esi
 0047215B    call        @LStrAsg
 00472160    xor         eax,eax
 00472162    pop         edx
 00472163    pop         ecx
 00472164    pop         ecx
 00472165    mov         dword ptr fs:[eax],edx
 00472168    push        4721B6
 0047216D    lea         eax,[ebp-78]
 00472170    mov         edx,7
 00472175    call        @LStrArrayClr
 0047217A    lea         eax,[ebp-5C]
 0047217D    mov         edx,3
 00472182    call        @WStrArrayClr
 00472187    lea         eax,[ebp-50]
 0047218A    mov         edx,0B
 0047218F    call        @LStrArrayClr
 00472194    lea         eax,[ebp-24]
 00472197    mov         edx,5
 0047219C    call        @WStrArrayClr
 004721A1    lea         eax,[ebp-10]
 004721A4    mov         edx,4
 004721A9    call        @LStrArrayClr
 004721AE    ret
>004721AF    jmp         @HandleFinally
>004721B4    jmp         0047216D
 004721B6    pop         esi
 004721B7    pop         ebx
 004721B8    mov         esp,ebp
 004721BA    pop         ebp
 004721BB    ret
*}
end;

//004721BC
function VarToWStrViaOS(const V:TVarData):WideString;
begin
{*
 004721BC    push        ebp
 004721BD    mov         ebp,esp
 004721BF    add         esp,0FFFFFFEC
 004721C2    push        ebx
 004721C3    push        esi
 004721C4    xor         ecx,ecx
 004721C6    mov         dword ptr [ebp-14],ecx
 004721C9    mov         esi,edx
 004721CB    mov         ebx,eax
 004721CD    xor         eax,eax
 004721CF    push        ebp
 004721D0    push        472266
 004721D5    push        dword ptr fs:[eax]
 004721D8    mov         dword ptr fs:[eax],esp
 004721DB    lea         eax,[ebp-10]
 004721DE    push        eax
 004721DF    call        oleaut32.VariantInit
 004721E4    xor         eax,eax
 004721E6    push        ebp
 004721E7    push        472249
 004721EC    push        dword ptr fs:[eax]
 004721EF    mov         dword ptr fs:[eax],esp
 004721F2    push        8
 004721F4    push        0
 004721F6    push        400
 004721FB    push        ebx
 004721FC    lea         eax,[ebp-10]
 004721FF    push        eax
 00472200    mov         eax,[0055B5C0];^gvar_0055DA24
 00472205    mov         eax,dword ptr [eax]
 00472207    call        eax
 00472209    mov         dx,word ptr [ebx]
 0047220C    mov         cx,8
 00472210    call        VarResultCheck
 00472215    push        esi
 00472216    lea         eax,[ebp-14]
 00472219    mov         edx,dword ptr [ebp-8]
 0047221C    call        @WStrFromPWChar
 00472221    mov         eax,dword ptr [ebp-14]
 00472224    mov         ecx,7FFFFFFF
 00472229    mov         edx,1
 0047222E    call        @WStrCopy
 00472233    xor         eax,eax
 00472235    pop         edx
 00472236    pop         ecx
 00472237    pop         ecx
 00472238    mov         dword ptr fs:[eax],edx
 0047223B    push        472250
 00472240    lea         eax,[ebp-10]
 00472243    call        @VarClear
 00472248    ret
>00472249    jmp         @HandleFinally
>0047224E    jmp         00472240
 00472250    xor         eax,eax
 00472252    pop         edx
 00472253    pop         ecx
 00472254    pop         ecx
 00472255    mov         dword ptr fs:[eax],edx
 00472258    push        47226D
 0047225D    lea         eax,[ebp-14]
 00472260    call        @WStrClr
 00472265    ret
>00472266    jmp         @HandleFinally
>0047226B    jmp         0047225D
 0047226D    pop         esi
 0047226E    pop         ebx
 0047226F    mov         esp,ebp
 00472271    pop         ebp
 00472272    ret
*}
end;

//00472274
function VarToWStrAny(const V:TVarData):WideString;
begin
{*
 00472274    push        ebp
 00472275    mov         ebp,esp
 00472277    add         esp,0FFFFFFF0
 0047227A    push        ebx
 0047227B    push        esi
 0047227C    mov         esi,edx
 0047227E    mov         ebx,eax
 00472280    lea         eax,[ebp-10]
 00472283    push        eax
 00472284    call        oleaut32.VariantInit
 00472289    xor         eax,eax
 0047228B    push        ebp
 0047228C    push        4722CA
 00472291    push        dword ptr fs:[eax]
 00472294    mov         dword ptr fs:[eax],esp
 00472297    mov         edx,ebx
 00472299    lea         eax,[ebp-10]
 0047229C    call        @VarCopy
 004722A1    lea         eax,[ebp-10]
 004722A4    call        dword ptr ds:[55DA98]
 004722AA    lea         edx,[ebp-10]
 004722AD    mov         eax,esi
 004722AF    call        @VarToWStr
 004722B4    xor         eax,eax
 004722B6    pop         edx
 004722B7    pop         ecx
 004722B8    pop         ecx
 004722B9    mov         dword ptr fs:[eax],edx
 004722BC    push        4722D1
 004722C1    lea         eax,[ebp-10]
 004722C4    call        @VarClear
 004722C9    ret
>004722CA    jmp         @HandleFinally
>004722CF    jmp         004722C1
 004722D1    pop         esi
 004722D2    pop         ebx
 004722D3    mov         esp,ebp
 004722D5    pop         ebp
 004722D6    ret
*}
end;

//004722D8
function VarToWStrCustom(const V:TVarData; var AValue:WideString):Boolean;
begin
{*
 004722D8    push        ebp
 004722D9    mov         ebp,esp
 004722DB    add         esp,0FFFFFFE0
 004722DE    push        ebx
 004722DF    xor         ecx,ecx
 004722E1    mov         dword ptr [ebp-20],ecx
 004722E4    mov         dword ptr [ebp-4],edx
 004722E7    mov         ebx,eax
 004722E9    mov         eax,dword ptr [ebp-4]
 004722EC    test        eax,eax
>004722EE    je          004722F4
 004722F0    xor         edx,edx
 004722F2    mov         dword ptr [eax],edx
 004722F4    xor         eax,eax
 004722F6    push        ebp
 004722F7    push        472390
 004722FC    push        dword ptr fs:[eax]
 004722FF    mov         dword ptr fs:[eax],esp
 00472302    lea         edx,[ebp-0C]
 00472305    mov         ax,word ptr [ebx]
 00472308    call        FindCustomVariantType
 0047230D    mov         byte ptr [ebp-5],al
 00472310    cmp         byte ptr [ebp-5],0
>00472314    je          0047237A
 00472316    lea         eax,[ebp-1C]
 00472319    push        eax
 0047231A    call        oleaut32.VariantInit
 0047231F    xor         eax,eax
 00472321    push        ebp
 00472322    push        472373
 00472327    push        dword ptr fs:[eax]
 0047232A    mov         dword ptr fs:[eax],esp
 0047232D    push        8
 0047232F    mov         ecx,ebx
 00472331    lea         edx,[ebp-1C]
 00472334    mov         eax,dword ptr [ebp-0C]
 00472337    mov         ebx,dword ptr [eax]
 00472339    call        dword ptr [ebx+1C]
 0047233C    mov         eax,dword ptr [ebp-4]
 0047233F    push        eax
 00472340    lea         eax,[ebp-20]
 00472343    mov         edx,dword ptr [ebp-14]
 00472346    call        @WStrFromPWChar
 0047234B    mov         eax,dword ptr [ebp-20]
 0047234E    mov         ecx,7FFFFFFF
 00472353    mov         edx,1
 00472358    call        @WStrCopy
 0047235D    xor         eax,eax
 0047235F    pop         edx
 00472360    pop         ecx
 00472361    pop         ecx
 00472362    mov         dword ptr fs:[eax],edx
 00472365    push        47237A
 0047236A    lea         eax,[ebp-1C]
 0047236D    call        @VarClear
 00472372    ret
>00472373    jmp         @HandleFinally
>00472378    jmp         0047236A
 0047237A    xor         eax,eax
 0047237C    pop         edx
 0047237D    pop         ecx
 0047237E    pop         ecx
 0047237F    mov         dword ptr fs:[eax],edx
 00472382    push        472397
 00472387    lea         eax,[ebp-20]
 0047238A    call        @WStrClr
 0047238F    ret
>00472390    jmp         @HandleFinally
>00472395    jmp         00472387
 00472397    mov         al,byte ptr [ebp-5]
 0047239A    pop         ebx
 0047239B    mov         esp,ebp
 0047239D    pop         ebp
 0047239E    ret
*}
end;

//004723A0
procedure @VarToWStr(var S:WideString; const V:TVarData);
begin
{*
 004723A0    push        ebp
 004723A1    mov         ebp,esp
 004723A3    mov         ecx,0E
 004723A8    push        0
 004723AA    push        0
 004723AC    dec         ecx
>004723AD    jne         004723A8
 004723AF    push        ecx
 004723B0    push        ebx
 004723B1    push        esi
 004723B2    mov         ebx,edx
 004723B4    mov         esi,eax
 004723B6    xor         eax,eax
 004723B8    push        ebp
 004723B9    push        4728F2
 004723BE    push        dword ptr fs:[eax]
 004723C1    mov         dword ptr fs:[eax],esp
 004723C4    mov         ax,word ptr [ebx]
 004723C7    movzx       edx,ax
 004723CA    cmp         edx,14
>004723CD    ja          00472608
 004723D3    jmp         dword ptr [edx*4+4723DA]
 004723D3    dd          0047242E
 004723D3    dd          0047243A
 004723D3    dd          00472462
 004723D3    dd          0047247D
 004723D3    dd          00472497
 004723D3    dd          004724B8
 004723D3    dd          004724D9
 004723D3    dd          004724F6
 004723D3    dd          00472513
 004723D3    dd          004725EF
 004723D3    dd          00472608
 004723D3    dd          00472536
 004723D3    dd          004725DE
 004723D3    dd          004725EF
 004723D3    dd          00472608
 004723D3    dd          00472608
 004723D3    dd          00472551
 004723D3    dd          0047256C
 004723D3    dd          00472588
 004723D3    dd          004725A3
 004723D3    dd          004725C1
 0047242E    mov         eax,esi
 00472430    call        @WStrClr
>00472435    jmp         0047287C
 0047243A    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>00472441    je          00472450
 00472443    mov         dx,8
 00472447    mov         ax,1
 0047244B    call        VarCastError
 00472450    mov         eax,esi
 00472452    mov         edx,dword ptr ds:[540B98]
 00472458    call        @WStrFromLStr
>0047245D    jmp         0047287C
 00472462    lea         edx,[ebp-4]
 00472465    movsx       eax,word ptr [ebx+8]
 00472469    call        IntToStr
 0047246E    mov         edx,dword ptr [ebp-4]
 00472471    mov         eax,esi
 00472473    call        @WStrFromLStr
>00472478    jmp         0047287C
 0047247D    lea         edx,[ebp-8]
 00472480    mov         eax,dword ptr [ebx+8]
 00472483    call        IntToStr
 00472488    mov         edx,dword ptr [ebp-8]
 0047248B    mov         eax,esi
 0047248D    call        @WStrFromLStr
>00472492    jmp         0047287C
 00472497    fld         dword ptr [ebx+8]
 0047249A    add         esp,0FFFFFFF4
 0047249D    fstp        tbyte ptr [esp]
 004724A0    wait
 004724A1    lea         eax,[ebp-0C]
 004724A4    call        00468298
 004724A9    mov         edx,dword ptr [ebp-0C]
 004724AC    mov         eax,esi
 004724AE    call        @WStrFromLStr
>004724B3    jmp         0047287C
 004724B8    fld         qword ptr [ebx+8]
 004724BB    add         esp,0FFFFFFF4
 004724BE    fstp        tbyte ptr [esp]
 004724C1    wait
 004724C2    lea         eax,[ebp-10]
 004724C5    call        00468298
 004724CA    mov         edx,dword ptr [ebp-10]
 004724CD    mov         eax,esi
 004724CF    call        @WStrFromLStr
>004724D4    jmp         0047287C
 004724D9    push        dword ptr [ebx+0C]
 004724DC    push        dword ptr [ebx+8]
 004724DF    lea         eax,[ebp-14]
 004724E2    call        CurrToWStrViaOS
 004724E7    mov         edx,dword ptr [ebp-14]
 004724EA    mov         eax,esi
 004724EC    call        @WStrAsg
>004724F1    jmp         0047287C
 004724F6    push        dword ptr [ebx+0C]
 004724F9    push        dword ptr [ebx+8]
 004724FC    lea         eax,[ebp-18]
 004724FF    call        DateToWStrViaOS
 00472504    mov         edx,dword ptr [ebp-18]
 00472507    mov         eax,esi
 00472509    call        @WStrAsg
>0047250E    jmp         0047287C
 00472513    push        esi
 00472514    lea         eax,[ebp-1C]
 00472517    mov         edx,dword ptr [ebx+8]
 0047251A    call        @WStrFromPWChar
 0047251F    mov         eax,dword ptr [ebp-1C]
 00472522    mov         ecx,7FFFFFFF
 00472527    mov         edx,1
 0047252C    call        @WStrCopy
>00472531    jmp         0047287C
 00472536    lea         edx,[ebp-20]
 00472539    mov         ax,word ptr [ebx+8]
 0047253D    call        BoolToWStrViaOS
 00472542    mov         edx,dword ptr [ebp-20]
 00472545    mov         eax,esi
 00472547    call        @WStrAsg
>0047254C    jmp         0047287C
 00472551    lea         edx,[ebp-24]
 00472554    movsx       eax,byte ptr [ebx+8]
 00472558    call        IntToStr
 0047255D    mov         edx,dword ptr [ebp-24]
 00472560    mov         eax,esi
 00472562    call        @WStrFromLStr
>00472567    jmp         0047287C
 0047256C    lea         edx,[ebp-28]
 0047256F    xor         eax,eax
 00472571    mov         al,byte ptr [ebx+8]
 00472574    call        IntToStr
 00472579    mov         edx,dword ptr [ebp-28]
 0047257C    mov         eax,esi
 0047257E    call        @WStrFromLStr
>00472583    jmp         0047287C
 00472588    lea         edx,[ebp-2C]
 0047258B    movzx       eax,word ptr [ebx+8]
 0047258F    call        IntToStr
 00472594    mov         edx,dword ptr [ebp-2C]
 00472597    mov         eax,esi
 00472599    call        @WStrFromLStr
>0047259E    jmp         0047287C
 004725A3    mov         eax,dword ptr [ebx+8]
 004725A6    xor         edx,edx
 004725A8    push        edx
 004725A9    push        eax
 004725AA    lea         eax,[ebp-30]
 004725AD    call        IntToStr
 004725B2    mov         edx,dword ptr [ebp-30]
 004725B5    mov         eax,esi
 004725B7    call        @WStrFromLStr
>004725BC    jmp         0047287C
 004725C1    push        dword ptr [ebx+0C]
 004725C4    push        dword ptr [ebx+8]
 004725C7    lea         eax,[ebp-34]
 004725CA    call        IntToStr
 004725CF    mov         edx,dword ptr [ebp-34]
 004725D2    mov         eax,esi
 004725D4    call        @WStrFromLStr
>004725D9    jmp         0047287C
 004725DE    mov         eax,dword ptr [ebx+8]
 004725E1    mov         edx,eax
 004725E3    mov         eax,esi
 004725E5    call        @VarToWStr
>004725EA    jmp         0047287C
 004725EF    lea         edx,[ebp-38]
 004725F2    mov         eax,ebx
 004725F4    call        VarToWStrViaOS
 004725F9    mov         edx,dword ptr [ebp-38]
 004725FC    mov         eax,esi
 004725FE    call        @WStrAsg
>00472603    jmp         0047287C
 00472608    mov         edx,eax
 0047260A    sub         dx,100
>0047260F    je          00472618
 00472611    dec         dx
>00472614    je          00472627
>00472616    jmp         00472640
 00472618    mov         eax,esi
 0047261A    mov         edx,dword ptr [ebx+8]
 0047261D    call        @WStrFromLStr
>00472622    jmp         0047287C
 00472627    lea         edx,[ebp-3C]
 0047262A    mov         eax,ebx
 0047262C    call        VarToWStrAny
 00472631    mov         edx,dword ptr [ebp-3C]
 00472634    mov         eax,esi
 00472636    call        @WStrAsg
>0047263B    jmp         0047287C
 00472640    test        ah,40
>00472643    je          00472854
 00472649    movzx       eax,ax
 0047264C    and         eax,0FFFFBFFF
 00472651    cmp         eax,14
>00472654    ja          0047283E
 0047265A    jmp         dword ptr [eax*4+472661]
 0047265A    dd          0047283E
 0047265A    dd          0047283E
 0047265A    dd          004726B5
 0047265A    dd          004726D2
 0047265A    dd          004726EE
 0047265A    dd          00472711
 0047265A    dd          00472734
 0047265A    dd          00472753
 0047265A    dd          00472772
 0047265A    dd          0047283E
 0047265A    dd          0047283E
 0047265A    dd          00472783
 0047265A    dd          00472830
 0047265A    dd          0047283E
 0047265A    dd          0047283E
 0047265A    dd          0047283E
 0047265A    dd          004727A0
 0047265A    dd          004727BD
 0047265A    dd          004727DA
 0047265A    dd          004727F7
 0047265A    dd          00472814
 004726B5    lea         edx,[ebp-40]
 004726B8    mov         eax,dword ptr [ebx+8]
 004726BB    movsx       eax,word ptr [eax]
 004726BE    call        IntToStr
 004726C3    mov         edx,dword ptr [ebp-40]
 004726C6    mov         eax,esi
 004726C8    call        @WStrFromLStr
>004726CD    jmp         0047287C
 004726D2    lea         edx,[ebp-44]
 004726D5    mov         eax,dword ptr [ebx+8]
 004726D8    mov         eax,dword ptr [eax]
 004726DA    call        IntToStr
 004726DF    mov         edx,dword ptr [ebp-44]
 004726E2    mov         eax,esi
 004726E4    call        @WStrFromLStr
>004726E9    jmp         0047287C
 004726EE    mov         eax,dword ptr [ebx+8]
 004726F1    fld         dword ptr [eax]
 004726F3    add         esp,0FFFFFFF4
 004726F6    fstp        tbyte ptr [esp]
 004726F9    wait
 004726FA    lea         eax,[ebp-48]
 004726FD    call        00468298
 00472702    mov         edx,dword ptr [ebp-48]
 00472705    mov         eax,esi
 00472707    call        @WStrFromLStr
>0047270C    jmp         0047287C
 00472711    mov         eax,dword ptr [ebx+8]
 00472714    fld         qword ptr [eax]
 00472716    add         esp,0FFFFFFF4
 00472719    fstp        tbyte ptr [esp]
 0047271C    wait
 0047271D    lea         eax,[ebp-4C]
 00472720    call        00468298
 00472725    mov         edx,dword ptr [ebp-4C]
 00472728    mov         eax,esi
 0047272A    call        @WStrFromLStr
>0047272F    jmp         0047287C
 00472734    mov         eax,dword ptr [ebx+8]
 00472737    push        dword ptr [eax+4]
 0047273A    push        dword ptr [eax]
 0047273C    lea         eax,[ebp-50]
 0047273F    call        CurrToWStrViaOS
 00472744    mov         edx,dword ptr [ebp-50]
 00472747    mov         eax,esi
 00472749    call        @WStrAsg
>0047274E    jmp         0047287C
 00472753    mov         eax,dword ptr [ebx+8]
 00472756    push        dword ptr [eax+4]
 00472759    push        dword ptr [eax]
 0047275B    lea         eax,[ebp-54]
 0047275E    call        DateToWStrViaOS
 00472763    mov         edx,dword ptr [ebp-54]
 00472766    mov         eax,esi
 00472768    call        @WStrAsg
>0047276D    jmp         0047287C
 00472772    mov         eax,esi
 00472774    mov         edx,dword ptr [ebx+8]
 00472777    mov         edx,dword ptr [edx]
 00472779    call        @WStrFromPWChar
>0047277E    jmp         0047287C
 00472783    lea         edx,[ebp-58]
 00472786    mov         eax,dword ptr [ebx+8]
 00472789    mov         ax,word ptr [eax]
 0047278C    call        BoolToWStrViaOS
 00472791    mov         edx,dword ptr [ebp-58]
 00472794    mov         eax,esi
 00472796    call        @WStrAsg
>0047279B    jmp         0047287C
 004727A0    lea         edx,[ebp-5C]
 004727A3    mov         eax,dword ptr [ebx+8]
 004727A6    movsx       eax,byte ptr [eax]
 004727A9    call        IntToStr
 004727AE    mov         edx,dword ptr [ebp-5C]
 004727B1    mov         eax,esi
 004727B3    call        @WStrFromLStr
>004727B8    jmp         0047287C
 004727BD    lea         edx,[ebp-60]
 004727C0    mov         eax,dword ptr [ebx+8]
 004727C3    movzx       eax,byte ptr [eax]
 004727C6    call        IntToStr
 004727CB    mov         edx,dword ptr [ebp-60]
 004727CE    mov         eax,esi
 004727D0    call        @WStrFromLStr
>004727D5    jmp         0047287C
 004727DA    lea         edx,[ebp-64]
 004727DD    mov         eax,dword ptr [ebx+8]
 004727E0    movzx       eax,word ptr [eax]
 004727E3    call        IntToStr
 004727E8    mov         edx,dword ptr [ebp-64]
 004727EB    mov         eax,esi
 004727ED    call        @WStrFromLStr
>004727F2    jmp         0047287C
 004727F7    mov         eax,dword ptr [ebx+8]
 004727FA    mov         eax,dword ptr [eax]
 004727FC    xor         edx,edx
 004727FE    push        edx
 004727FF    push        eax
 00472800    lea         eax,[ebp-68]
 00472803    call        IntToStr
 00472808    mov         edx,dword ptr [ebp-68]
 0047280B    mov         eax,esi
 0047280D    call        @WStrFromLStr
>00472812    jmp         0047287C
 00472814    mov         eax,dword ptr [ebx+8]
 00472817    push        dword ptr [eax+4]
 0047281A    push        dword ptr [eax]
 0047281C    lea         eax,[ebp-6C]
 0047281F    call        IntToStr
 00472824    mov         edx,dword ptr [ebp-6C]
 00472827    mov         eax,esi
 00472829    call        @WStrFromLStr
>0047282E    jmp         0047287C
 00472830    mov         eax,dword ptr [ebx+8]
 00472833    mov         edx,eax
 00472835    mov         eax,esi
 00472837    call        @VarToWStr
>0047283C    jmp         0047287C
 0047283E    lea         edx,[ebp-70]
 00472841    mov         eax,ebx
 00472843    call        VarToWStrViaOS
 00472848    mov         edx,dword ptr [ebp-70]
 0047284B    mov         eax,esi
 0047284D    call        @WStrAsg
>00472852    jmp         0047287C
 00472854    mov         eax,esi
 00472856    call        @WStrClr
 0047285B    mov         edx,eax
 0047285D    mov         eax,ebx
 0047285F    call        VarToWStrCustom
 00472864    test        al,al
>00472866    jne         0047287C
 00472868    lea         edx,[ebp-74]
 0047286B    mov         eax,ebx
 0047286D    call        VarToWStrViaOS
 00472872    mov         edx,dword ptr [ebp-74]
 00472875    mov         eax,esi
 00472877    call        @WStrAsg
 0047287C    xor         eax,eax
 0047287E    pop         edx
 0047287F    pop         ecx
 00472880    pop         ecx
 00472881    mov         dword ptr fs:[eax],edx
 00472884    push        4728F9
 00472889    lea         eax,[ebp-74]
 0047288C    mov         edx,2
 00472891    call        @WStrArrayClr
 00472896    lea         eax,[ebp-6C]
 00472899    mov         edx,5
 0047289E    call        @LStrArrayClr
 004728A3    lea         eax,[ebp-58]
 004728A6    mov         edx,3
 004728AB    call        @WStrArrayClr
 004728B0    lea         eax,[ebp-4C]
 004728B3    mov         edx,4
 004728B8    call        @LStrArrayClr
 004728BD    lea         eax,[ebp-3C]
 004728C0    mov         edx,2
 004728C5    call        @WStrArrayClr
 004728CA    lea         eax,[ebp-34]
 004728CD    mov         edx,5
 004728D2    call        @LStrArrayClr
 004728D7    lea         eax,[ebp-20]
 004728DA    mov         edx,4
 004728DF    call        @WStrArrayClr
 004728E4    lea         eax,[ebp-10]
 004728E7    mov         edx,4
 004728EC    call        @LStrArrayClr
 004728F1    ret
>004728F2    jmp         @HandleFinally
>004728F7    jmp         00472889
 004728F9    pop         esi
 004728FA    pop         ebx
 004728FB    mov         esp,ebp
 004728FD    pop         ebp
 004728FE    ret
*}
end;

//00472900
procedure AnyToIntf(var Intf:IInterface; const V:TVarData);
begin
{*
 00472900    push        ebp
 00472901    mov         ebp,esp
 00472903    add         esp,0FFFFFFF0
 00472906    push        ebx
 00472907    push        esi
 00472908    mov         esi,edx
 0047290A    mov         ebx,eax
 0047290C    lea         eax,[ebp-10]
 0047290F    push        eax
 00472910    call        oleaut32.VariantInit
 00472915    xor         eax,eax
 00472917    push        ebp
 00472918    push        47296A
 0047291D    push        dword ptr fs:[eax]
 00472920    mov         dword ptr fs:[eax],esp
 00472923    mov         edx,esi
 00472925    lea         eax,[ebp-10]
 00472928    call        @VarCopy
 0047292D    lea         eax,[ebp-10]
 00472930    call        dword ptr ds:[55DA98]
 00472936    cmp         word ptr [ebp-10],0D
>0047293B    je          0047294A
 0047293D    mov         dx,0D
 00472941    mov         ax,101
 00472945    call        VarCastError
 0047294A    mov         eax,ebx
 0047294C    mov         edx,dword ptr [ebp-8]
 0047294F    call        @IntfCopy
 00472954    xor         eax,eax
 00472956    pop         edx
 00472957    pop         ecx
 00472958    pop         ecx
 00472959    mov         dword ptr fs:[eax],edx
 0047295C    push        472971
 00472961    lea         eax,[ebp-10]
 00472964    call        @VarClear
 00472969    ret
>0047296A    jmp         @HandleFinally
>0047296F    jmp         00472961
 00472971    pop         esi
 00472972    pop         ebx
 00472973    mov         esp,ebp
 00472975    pop         ebp
 00472976    ret
*}
end;

//00472978
procedure @VarToIntf(var Intf:IInterface; const V:TVarData);
begin
{*
 00472978    push        ebx
 00472979    push        esi
 0047297A    push        ecx
 0047297B    mov         ebx,edx
 0047297D    mov         esi,eax
 0047297F    movzx       eax,word ptr [ebx]
 00472982    cmp         eax,0D
>00472985    jg          00472997
>00472987    je          004729D4
 00472989    sub         eax,1
>0047298C    jb          004729AC
>0047298E    je          004729B5
 00472990    sub         eax,8
>00472993    je          004729D4
>00472995    jmp         004729F9
 00472997    sub         eax,101
>0047299C    je          004729EE
 0047299E    sub         eax,3F08
>004729A3    je          004729E0
 004729A5    sub         eax,4
>004729A8    je          004729E0
>004729AA    jmp         004729F9
 004729AC    mov         eax,esi
 004729AE    call        @IntfClear
>004729B3    jmp         00472A2D
 004729B5    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>004729BC    je          004729CB
 004729BE    mov         dx,0D
 004729C2    mov         ax,1
 004729C6    call        VarCastError
 004729CB    mov         eax,esi
 004729CD    call        @IntfClear
>004729D2    jmp         00472A2D
 004729D4    mov         eax,esi
 004729D6    mov         edx,dword ptr [ebx+8]
 004729D9    call        @IntfCopy
>004729DE    jmp         00472A2D
 004729E0    mov         eax,esi
 004729E2    mov         edx,dword ptr [ebx+8]
 004729E5    mov         edx,dword ptr [edx]
 004729E7    call        @IntfCopy
>004729EC    jmp         00472A2D
 004729EE    mov         edx,ebx
 004729F0    mov         eax,esi
 004729F2    call        AnyToIntf
>004729F7    jmp         00472A2D
 004729F9    mov         edx,esp
 004729FB    mov         ax,word ptr [ebx]
 004729FE    call        FindCustomVariantType
 00472A03    test        al,al
>00472A05    je          00472A21
 00472A07    mov         eax,esi
 00472A09    call        @IntfClear
 00472A0E    mov         ecx,eax
 00472A10    mov         edx,472A34
 00472A15    mov         eax,dword ptr [esp]
 00472A18    call        TObject.GetInterface
 00472A1D    test        al,al
>00472A1F    jne         00472A2D
 00472A21    mov         ax,word ptr [ebx]
 00472A24    mov         dx,0D
 00472A28    call        VarCastError
 00472A2D    pop         edx
 00472A2E    pop         esi
 00472A2F    pop         ebx
 00472A30    ret
*}
end;

//00472A44
procedure @VarToDisp(var Dispatch:IDispatch; const V:TVarData);
begin
{*
 00472A44    push        ebx
 00472A45    push        esi
 00472A46    push        ecx
 00472A47    mov         ebx,edx
 00472A49    mov         esi,eax
 00472A4B    mov         ax,word ptr [ebx]
 00472A4E    sub         ax,1
>00472A52    jb          00472A64
>00472A54    je          00472A6D
 00472A56    sub         ax,8
>00472A5A    je          00472A8C
 00472A5C    sub         ax,4000
>00472A60    je          00472A98
>00472A62    jmp         00472AA6
 00472A64    mov         eax,esi
 00472A66    call        @IntfClear
>00472A6B    jmp         00472ADA
 00472A6D    cmp         byte ptr ds:[540B94],0;gvar_00540B94
>00472A74    je          00472A83
 00472A76    mov         dx,9
 00472A7A    mov         ax,1
 00472A7E    call        VarCastError
 00472A83    mov         eax,esi
 00472A85    call        @IntfClear
>00472A8A    jmp         00472ADA
 00472A8C    mov         eax,esi
 00472A8E    mov         edx,dword ptr [ebx+8]
 00472A91    call        @IntfCopy
>00472A96    jmp         00472ADA
 00472A98    mov         eax,esi
 00472A9A    mov         edx,dword ptr [ebx+8]
 00472A9D    mov         edx,dword ptr [edx]
 00472A9F    call        @IntfCopy
>00472AA4    jmp         00472ADA
 00472AA6    mov         edx,esp
 00472AA8    mov         ax,word ptr [ebx]
 00472AAB    call        FindCustomVariantType
 00472AB0    test        al,al
>00472AB2    je          00472ACE
 00472AB4    mov         eax,esi
 00472AB6    call        @IntfClear
 00472ABB    mov         ecx,eax
 00472ABD    mov         edx,472AE0
 00472AC2    mov         eax,dword ptr [esp]
 00472AC5    call        TObject.GetInterface
 00472ACA    test        al,al
>00472ACC    jne         00472ADA
 00472ACE    mov         ax,word ptr [ebx]
 00472AD1    mov         dx,9
 00472AD5    call        VarCastError
 00472ADA    pop         edx
 00472ADB    pop         esi
 00472ADC    pop         ebx
 00472ADD    ret
*}
end;

//00472AF0
procedure @VarFromInt(var V:TVarData; const Value:Integer; const Range:Shortint);
begin
{*
 00472AF0    push        ebx
 00472AF1    push        esi
 00472AF2    push        edi
 00472AF3    mov         ebx,ecx
 00472AF5    mov         esi,edx
 00472AF7    mov         edi,eax
 00472AF9    test        word ptr [edi],0BFE8
>00472AFE    je          00472B07
 00472B00    mov         eax,edi
 00472B02    call        VarClearDeep
 00472B07    cmp         byte ptr ds:[540B9C],0
>00472B0E    je          00472B20
 00472B10    movsx       eax,bl
 00472B13    mov         ax,word ptr [eax*2+540BC8]
 00472B1B    mov         word ptr [edi],ax
>00472B1E    jmp         00472B25
 00472B20    mov         word ptr [edi],3
 00472B25    mov         dword ptr [edi+8],esi
 00472B28    pop         edi
 00472B29    pop         esi
 00472B2A    pop         ebx
 00472B2B    ret
*}
end;

//00472B2C
procedure @OleVarFromInt(var V:TVarData; const Value:Integer; const Range:Shortint);
begin
{*
 00472B2C    push        ebx
 00472B2D    push        esi
 00472B2E    mov         esi,edx
 00472B30    mov         ebx,eax
 00472B32    test        word ptr [ebx],0BFE8
>00472B37    je          00472B40
 00472B39    mov         eax,ebx
 00472B3B    call        VarClearDeep
 00472B40    mov         word ptr [ebx],3
 00472B45    mov         dword ptr [ebx+8],esi
 00472B48    pop         esi
 00472B49    pop         ebx
 00472B4A    ret
*}
end;

//00472B4C
procedure @VarFromByte(var V:TVarData; const Value:Byte);
begin
{*
 00472B4C    push        ebx
 00472B4D    push        esi
 00472B4E    mov         ebx,edx
 00472B50    mov         esi,eax
 00472B52    test        word ptr [esi],0BFE8
>00472B57    je          00472B60
 00472B59    mov         eax,esi
 00472B5B    call        VarClearDeep
 00472B60    mov         word ptr [esi],11
 00472B65    mov         byte ptr [esi+8],bl
 00472B68    pop         esi
 00472B69    pop         ebx
 00472B6A    ret
*}
end;

//00472B6C
procedure @VarFromWord(var V:TVarData; const Value:Word);
begin
{*
 00472B6C    push        ebx
 00472B6D    push        esi
 00472B6E    mov         esi,edx
 00472B70    mov         ebx,eax
 00472B72    test        word ptr [ebx],0BFE8
>00472B77    je          00472B80
 00472B79    mov         eax,ebx
 00472B7B    call        VarClearDeep
 00472B80    mov         word ptr [ebx],12
 00472B85    mov         word ptr [ebx+8],si
 00472B89    pop         esi
 00472B8A    pop         ebx
 00472B8B    ret
*}
end;

//00472B8C
procedure @VarFromLongWord(var V:TVarData; const Value:LongWord);
begin
{*
 00472B8C    push        ebx
 00472B8D    push        esi
 00472B8E    mov         esi,edx
 00472B90    mov         ebx,eax
 00472B92    test        word ptr [ebx],0BFE8
>00472B97    je          00472BA0
 00472B99    mov         eax,ebx
 00472B9B    call        VarClearDeep
 00472BA0    mov         word ptr [ebx],13
 00472BA5    mov         dword ptr [ebx+8],esi
 00472BA8    pop         esi
 00472BA9    pop         ebx
 00472BAA    ret
*}
end;

//00472BAC
procedure @VarFromShortInt(var V:TVarData; const Value:Shortint);
begin
{*
 00472BAC    push        ebx
 00472BAD    push        esi
 00472BAE    mov         ebx,edx
 00472BB0    mov         esi,eax
 00472BB2    test        word ptr [esi],0BFE8
>00472BB7    je          00472BC0
 00472BB9    mov         eax,esi
 00472BBB    call        VarClearDeep
 00472BC0    mov         word ptr [esi],10
 00472BC5    mov         byte ptr [esi+8],bl
 00472BC8    pop         esi
 00472BC9    pop         ebx
 00472BCA    ret
*}
end;

//00472BCC
procedure @VarFromSmallInt(var V:TVarData; const Value:Smallint);
begin
{*
 00472BCC    push        ebx
 00472BCD    push        esi
 00472BCE    mov         esi,edx
 00472BD0    mov         ebx,eax
 00472BD2    test        word ptr [ebx],0BFE8
>00472BD7    je          00472BE0
 00472BD9    mov         eax,ebx
 00472BDB    call        VarClearDeep
 00472BE0    mov         word ptr [ebx],2
 00472BE5    mov         word ptr [ebx+8],si
 00472BE9    pop         esi
 00472BEA    pop         ebx
 00472BEB    ret
*}
end;

//00472BEC
procedure @VarFromInt64(var V:TVarData; const Value:Int64);
begin
{*
 00472BEC    push        ebp
 00472BED    mov         ebp,esp
 00472BEF    push        ebx
 00472BF0    mov         ebx,eax
 00472BF2    test        word ptr [ebx],0BFE8
>00472BF7    je          00472C00
 00472BF9    mov         eax,ebx
 00472BFB    call        VarClearDeep
 00472C00    mov         word ptr [ebx],14
 00472C05    mov         eax,dword ptr [ebp+8]
 00472C08    mov         dword ptr [ebx+8],eax
 00472C0B    mov         eax,dword ptr [ebp+0C]
 00472C0E    mov         dword ptr [ebx+0C],eax
 00472C11    pop         ebx
 00472C12    pop         ebp
 00472C13    ret         8
*}
end;

//00472C18
procedure @VarFromSingle(var Dest:TVarData; const Value:Single);
begin
{*
 00472C18    push        ebp
 00472C19    mov         ebp,esp
 00472C1B    push        ebx
 00472C1C    mov         ebx,eax
 00472C1E    test        word ptr [ebx],0BFE8
>00472C23    je          00472C2C
 00472C25    mov         eax,ebx
 00472C27    call        VarClearDeep
 00472C2C    mov         eax,dword ptr [ebp+8]
 00472C2F    mov         dword ptr [ebx+8],eax
 00472C32    mov         word ptr [ebx],4
 00472C37    pop         ebx
 00472C38    pop         ebp
 00472C39    ret         4
*}
end;

//00472C3C
procedure @VarFromDouble(var Dest:TVarData; const Value:Double);
begin
{*
 00472C3C    push        ebp
 00472C3D    mov         ebp,esp
 00472C3F    push        ebx
 00472C40    mov         ebx,eax
 00472C42    test        word ptr [ebx],0BFE8
>00472C47    je          00472C50
 00472C49    mov         eax,ebx
 00472C4B    call        VarClearDeep
 00472C50    mov         eax,dword ptr [ebp+8]
 00472C53    mov         dword ptr [ebx+8],eax
 00472C56    mov         eax,dword ptr [ebp+0C]
 00472C59    mov         dword ptr [ebx+0C],eax
 00472C5C    mov         word ptr [ebx],5
 00472C61    pop         ebx
 00472C62    pop         ebp
 00472C63    ret         8
*}
end;

//00472C68
procedure @VarFromCurrency(var Dest:TVarData; const Value:Currency);
begin
{*
 00472C68    push        ebp
 00472C69    mov         ebp,esp
 00472C6B    push        ebx
 00472C6C    mov         ebx,eax
 00472C6E    test        word ptr [ebx],0BFE8
>00472C73    je          00472C7C
 00472C75    mov         eax,ebx
 00472C77    call        VarClearDeep
 00472C7C    mov         eax,dword ptr [ebp+8]
 00472C7F    mov         dword ptr [ebx+8],eax
 00472C82    mov         eax,dword ptr [ebp+0C]
 00472C85    mov         dword ptr [ebx+0C],eax
 00472C88    mov         word ptr [ebx],6
 00472C8D    pop         ebx
 00472C8E    pop         ebp
 00472C8F    ret         8
*}
end;

//00472C94
procedure @VarFromDate(var Dest:TVarData; const Value:TDateTime);
begin
{*
 00472C94    push        ebp
 00472C95    mov         ebp,esp
 00472C97    push        ebx
 00472C98    mov         ebx,eax
 00472C9A    test        word ptr [ebx],0BFE8
>00472C9F    je          00472CA8
 00472CA1    mov         eax,ebx
 00472CA3    call        VarClearDeep
 00472CA8    mov         eax,dword ptr [ebp+8]
 00472CAB    mov         dword ptr [ebx+8],eax
 00472CAE    mov         eax,dword ptr [ebp+0C]
 00472CB1    mov         dword ptr [ebx+0C],eax
 00472CB4    mov         word ptr [ebx],7
 00472CB9    pop         ebx
 00472CBA    pop         ebp
 00472CBB    ret         8
*}
end;

//00472CC0
procedure @VarFromBool(var V:TVarData; const Value:Boolean);
begin
{*
 00472CC0    push        ebx
 00472CC1    push        esi
 00472CC2    mov         ebx,edx
 00472CC4    mov         esi,eax
 00472CC6    test        word ptr [esi],0BFE8
>00472CCB    je          00472CD4
 00472CCD    mov         eax,esi
 00472CCF    call        VarClearDeep
 00472CD4    mov         word ptr [esi],0B
 00472CD9    cmp         bl,1
 00472CDC    cmc
 00472CDD    sbb         eax,eax
 00472CDF    mov         word ptr [esi+8],ax
 00472CE3    pop         esi
 00472CE4    pop         ebx
 00472CE5    ret
*}
end;

//00472CE8
procedure @VarFromReal(var v:Variant);
begin
{*
 00472CE8    push        eax
 00472CE9    call        @VarClear
 00472CEE    pop         eax
 00472CEF    mov         word ptr [eax],5
 00472CF4    fstp        qword ptr [eax+8]
 00472CF7    wait
 00472CF8    ret
*}
end;

//00472CFC
procedure @VarFromTDateTime(var v:Variant);
begin
{*
 00472CFC    push        eax
 00472CFD    call        @VarClear
 00472D02    pop         eax
 00472D03    mov         word ptr [eax],7
 00472D08    fstp        qword ptr [eax+8]
 00472D0B    wait
 00472D0C    ret
*}
end;

//00472D10
procedure @VarFromCurr(var v:Variant);
begin
{*
 00472D10    push        eax
 00472D11    call        @VarClear
 00472D16    pop         eax
 00472D17    mov         word ptr [eax],6
 00472D1C    fistp       qword ptr [eax+8]
 00472D1F    wait
 00472D20    ret
*}
end;

//00472D24
procedure @VarFromLStr(var V:TVarData; const Value:AnsiString);
begin
{*
 00472D24    push        ebx
 00472D25    push        esi
 00472D26    mov         esi,edx
 00472D28    mov         ebx,eax
 00472D2A    test        word ptr [ebx],0BFE8
>00472D2F    je          00472D38
 00472D31    mov         eax,ebx
 00472D33    call        VarClearDeep
 00472D38    xor         eax,eax
 00472D3A    mov         dword ptr [ebx+8],eax
 00472D3D    mov         word ptr [ebx],100
 00472D42    lea         eax,[ebx+8]
 00472D45    mov         edx,esi
 00472D47    call        @LStrAsg
 00472D4C    pop         esi
 00472D4D    pop         ebx
 00472D4E    ret
*}
end;

//00472D50
procedure @VarFromWStr(var V:TVarData; const Value:WideString);
begin
{*
 00472D50    push        ebx
 00472D51    push        esi
 00472D52    mov         esi,edx
 00472D54    mov         ebx,eax
 00472D56    test        word ptr [ebx],0BFE8
>00472D5B    je          00472D64
 00472D5D    mov         eax,ebx
 00472D5F    call        VarClearDeep
 00472D64    xor         eax,eax
 00472D66    mov         dword ptr [ebx+8],eax
 00472D69    mov         word ptr [ebx],8
 00472D6E    lea         eax,[ebx+8]
 00472D71    push        eax
 00472D72    mov         ecx,7FFFFFFF
 00472D77    mov         edx,1
 00472D7C    mov         eax,esi
 00472D7E    call        @WStrCopy
 00472D83    pop         esi
 00472D84    pop         ebx
 00472D85    ret
*}
end;

//00472D88
procedure @VarFromIntf(var V:TVarData; const Value:IInterface);
begin
{*
 00472D88    push        ebx
 00472D89    push        esi
 00472D8A    mov         esi,edx
 00472D8C    mov         ebx,eax
 00472D8E    test        word ptr [ebx],0BFE8
>00472D93    je          00472D9C
 00472D95    mov         eax,ebx
 00472D97    call        VarClearDeep
 00472D9C    xor         eax,eax
 00472D9E    mov         dword ptr [ebx+8],eax
 00472DA1    mov         word ptr [ebx],0D
 00472DA6    lea         eax,[ebx+8]
 00472DA9    mov         edx,esi
 00472DAB    call        @IntfCopy
 00472DB0    pop         esi
 00472DB1    pop         ebx
 00472DB2    ret
*}
end;

//00472DB4
procedure @VarFromDisp(var V:TVarData; const Value:IDispatch);
begin
{*
 00472DB4    push        ebx
 00472DB5    push        esi
 00472DB6    mov         esi,edx
 00472DB8    mov         ebx,eax
 00472DBA    test        word ptr [ebx],0BFE8
>00472DBF    je          00472DC8
 00472DC1    mov         eax,ebx
 00472DC3    call        VarClearDeep
 00472DC8    xor         eax,eax
 00472DCA    mov         dword ptr [ebx+8],eax
 00472DCD    mov         word ptr [ebx],9
 00472DD2    lea         eax,[ebx+8]
 00472DD5    mov         edx,esi
 00472DD7    call        @IntfCopy
 00472DDC    pop         esi
 00472DDD    pop         ebx
 00472DDE    ret
*}
end;

//00472DE0
function CheckType(T:TVarType):TVarType;
begin
{*
 00472DE0    push        ebx
 00472DE1    mov         ebx,eax
 00472DE3    and         bx,0FFF
 00472DE8    cmp         bx,14
>00472DEC    jbe         00472E00
 00472DEE    cmp         bx,100
>00472DF3    jne         00472DFB
 00472DF5    mov         bx,8
>00472DF9    jmp         00472E00
 00472DFB    call        VarInvalidOp
 00472E00    mov         eax,ebx
 00472E02    pop         ebx
 00472E03    ret
*}
end;

//00472E04
function VarCompareAny(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;
begin
{*
 00472E04    push        ebp
 00472E05    mov         ebp,esp
 00472E07    add         esp,0FFFFFFDC
 00472E0A    push        ebx
 00472E0B    push        esi
 00472E0C    push        edi
 00472E0D    mov         edi,ecx
 00472E0F    mov         ebx,edx
 00472E11    mov         esi,eax
 00472E13    lea         eax,[ebp-11]
 00472E16    push        eax
 00472E17    call        oleaut32.VariantInit
 00472E1C    xor         eax,eax
 00472E1E    push        ebp
 00472E1F    push        472EC7
 00472E24    push        dword ptr fs:[eax]
 00472E27    mov         dword ptr fs:[eax],esp
 00472E2A    mov         edx,esi
 00472E2C    lea         eax,[ebp-11]
 00472E2F    call        @VarCopy
 00472E34    cmp         word ptr [esi],101
>00472E39    jne         00472E44
 00472E3B    lea         eax,[ebp-11]
 00472E3E    call        dword ptr ds:[55DA98]
 00472E44    cmp         word ptr [ebx],101
>00472E49    jne         00472EA2
 00472E4B    lea         eax,[ebp-21]
 00472E4E    push        eax
 00472E4F    call        oleaut32.VariantInit
 00472E54    xor         eax,eax
 00472E56    push        ebp
 00472E57    push        472E9B
 00472E5C    push        dword ptr fs:[eax]
 00472E5F    mov         dword ptr fs:[eax],esp
 00472E62    mov         edx,ebx
 00472E64    lea         eax,[ebp-21]
 00472E67    call        @VarCopy
 00472E6C    lea         eax,[ebp-21]
 00472E6F    call        dword ptr ds:[55DA98]
 00472E75    lea         edx,[ebp-21]
 00472E78    lea         eax,[ebp-11]
 00472E7B    mov         ecx,edi
 00472E7D    call        VarCompare
 00472E82    mov         byte ptr [ebp-1],al
 00472E85    xor         eax,eax
 00472E87    pop         edx
 00472E88    pop         ecx
 00472E89    pop         ecx
 00472E8A    mov         dword ptr fs:[eax],edx
 00472E8D    push        472EB1
 00472E92    lea         eax,[ebp-21]
 00472E95    call        @VarClear
 00472E9A    ret
>00472E9B    jmp         @HandleFinally
>00472EA0    jmp         00472E92
 00472EA2    mov         edx,ebx
 00472EA4    lea         eax,[ebp-11]
 00472EA7    mov         ecx,edi
 00472EA9    call        VarCompare
 00472EAE    mov         byte ptr [ebp-1],al
 00472EB1    xor         eax,eax
 00472EB3    pop         edx
 00472EB4    pop         ecx
 00472EB5    pop         ecx
 00472EB6    mov         dword ptr fs:[eax],edx
 00472EB9    push        472ECE
 00472EBE    lea         eax,[ebp-11]
 00472EC1    call        @VarClear
 00472EC6    ret
>00472EC7    jmp         @HandleFinally
>00472ECC    jmp         00472EBE
 00472ECE    mov         al,byte ptr [ebp-1]
 00472ED1    pop         edi
 00472ED2    pop         esi
 00472ED3    pop         ebx
 00472ED4    mov         esp,ebp
 00472ED6    pop         ebp
 00472ED7    ret
*}
end;

//00472ED8
function EmptyCompare(L:TBaseType; R:TBaseType):TVarCompareResult;
begin
{*
 00472ED8    cmp         al,1
>00472EDA    jne         00472EE8
 00472EDC    cmp         dl,1
>00472EDF    jne         00472EE5
 00472EE1    mov         al,1
>00472EE3    jmp         00472EEA
 00472EE5    xor         eax,eax
 00472EE7    ret
 00472EE8    mov         al,2
 00472EEA    ret
*}
end;

//00472EEC
function NullCompare(L:TBaseType; R:TBaseType; OpCode:TVarOp):TVarCompareResult;
begin
{*
 00472EEC    push        ebx
 00472EED    push        ecx
 00472EEE    mov         byte ptr [esp],dl
 00472EF1    mov         bl,1
 00472EF3    mov         edx,ecx
 00472EF5    sub         edx,0E
>00472EF8    je          00472F0C
 00472EFA    dec         edx
>00472EFB    je          00472F52
 00472EFD    dec         edx
 00472EFE    sub         edx,4
>00472F01    jb          00472F8F
>00472F07    jmp         00472FC8
 00472F0C    mov         dl,byte ptr ds:[540B8C]
 00472F12    sub         dl,1
>00472F15    jb          00472F22
>00472F17    je          00472F2C
 00472F19    dec         dl
>00472F1B    je          00472F37
>00472F1D    jmp         00472FCD
 00472F22    call        VarInvalidNullOp
>00472F27    jmp         00472FCD
 00472F2C    mov         bl,byte ptr ds:[540BD4]
>00472F32    jmp         00472FCD
 00472F37    cmp         al,2
>00472F39    jne         00472F41
 00472F3B    cmp         byte ptr [esp],2
>00472F3F    je          00472F45
 00472F41    xor         eax,eax
>00472F43    jmp         00472F47
 00472F45    mov         al,1
 00472F47    and         eax,7F
 00472F4A    mov         bl,byte ptr [eax+540BD4]
>00472F50    jmp         00472FCD
 00472F52    mov         dl,byte ptr ds:[540B8C]
 00472F58    sub         dl,1
>00472F5B    jb          00472F65
>00472F5D    je          00472F6C
 00472F5F    dec         dl
>00472F61    je          00472F74
>00472F63    jmp         00472FCD
 00472F65    call        VarInvalidNullOp
>00472F6A    jmp         00472FCD
 00472F6C    mov         bl,byte ptr ds:[540BD6]
>00472F72    jmp         00472FCD
 00472F74    cmp         al,2
>00472F76    jne         00472F82
 00472F78    cmp         byte ptr [esp],2
>00472F7C    jne         00472F82
 00472F7E    xor         eax,eax
>00472F80    jmp         00472F84
 00472F82    mov         al,1
 00472F84    and         eax,7F
 00472F87    mov         bl,byte ptr [eax+540BD6]
>00472F8D    jmp         00472FCD
 00472F8F    mov         dl,byte ptr ds:[540B90]
 00472F95    sub         dl,1
>00472F98    jb          00472FA2
>00472F9A    je          00472FA9
 00472F9C    dec         dl
>00472F9E    je          00472FB2
>00472FA0    jmp         00472FCD
 00472FA2    call        VarInvalidNullOp
>00472FA7    jmp         00472FCD
 00472FA9    mov         bl,byte ptr [ecx*2+540BB8]
>00472FB0    jmp         00472FCD
 00472FB2    cmp         al,2
>00472FB4    jne         00472FC4
 00472FB6    cmp         byte ptr [esp],2
>00472FBA    jne         00472FC0
 00472FBC    mov         bl,1
>00472FBE    jmp         00472FCD
 00472FC0    xor         ebx,ebx
>00472FC2    jmp         00472FCD
 00472FC4    mov         bl,2
>00472FC6    jmp         00472FCD
 00472FC8    call        VarInvalidOp
 00472FCD    mov         eax,ebx
 00472FCF    pop         edx
 00472FD0    pop         ebx
 00472FD1    ret
*}
end;

//00472FD4
function IntCompare(A:Integer; B:Integer):TVarCompareResult;
begin
{*
 00472FD4    cmp         edx,eax
>00472FD6    jle         00472FDB
 00472FD8    xor         eax,eax
 00472FDA    ret
 00472FDB    cmp         edx,eax
>00472FDD    jge         00472FE3
 00472FDF    mov         al,2
>00472FE1    jmp         00472FE5
 00472FE3    mov         al,1
 00472FE5    ret
*}
end;

//00472FE8
function Int64Compare(const A:Int64; const B:Int64):TVarCompareResult;
begin
{*
 00472FE8    push        ebp
 00472FE9    mov         ebp,esp
 00472FEB    mov         eax,dword ptr [ebp+10]
 00472FEE    mov         edx,dword ptr [ebp+14]
 00472FF1    cmp         edx,dword ptr [ebp+0C]
>00472FF4    jne         00472FFD
 00472FF6    cmp         eax,dword ptr [ebp+8]
>00472FF9    jae         00473003
>00472FFB    jmp         00472FFF
>00472FFD    jge         00473003
 00472FFF    xor         eax,eax
>00473001    jmp         0047301D
 00473003    mov         eax,dword ptr [ebp+10]
 00473006    mov         edx,dword ptr [ebp+14]
 00473009    cmp         edx,dword ptr [ebp+0C]
>0047300C    jne         00473015
 0047300E    cmp         eax,dword ptr [ebp+8]
>00473011    jbe         0047301B
>00473013    jmp         00473017
>00473015    jle         0047301B
 00473017    mov         al,2
>00473019    jmp         0047301D
 0047301B    mov         al,1
 0047301D    pop         ebp
 0047301E    ret         10
*}
end;

//00473024
function DateCompare(const A:TDateTime; const B:TDateTime):TVarCompareResult;
begin
{*
 00473024    push        ebp
 00473025    mov         ebp,esp
 00473027    fld         qword ptr [ebp+10]
 0047302A    fcomp       qword ptr [ebp+8]
 0047302D    fnstsw      al
 0047302F    sahf
>00473030    jae         00473036
 00473032    xor         eax,eax
>00473034    jmp         00473047
 00473036    fld         qword ptr [ebp+10]
 00473039    fcomp       qword ptr [ebp+8]
 0047303C    fnstsw      al
 0047303E    sahf
>0047303F    jbe         00473045
 00473041    mov         al,2
>00473043    jmp         00473047
 00473045    mov         al,1
 00473047    pop         ebp
 00473048    ret         10
*}
end;

//0047304C
function RealCompare(const A:Double; const B:Double):TVarCompareResult;
begin
{*
 0047304C    push        ebp
 0047304D    mov         ebp,esp
 0047304F    fld         qword ptr [ebp+10]
 00473052    fcomp       qword ptr [ebp+8]
 00473055    fnstsw      al
 00473057    sahf
>00473058    jae         0047305E
 0047305A    xor         eax,eax
>0047305C    jmp         0047306F
 0047305E    fld         qword ptr [ebp+10]
 00473061    fcomp       qword ptr [ebp+8]
 00473064    fnstsw      al
 00473066    sahf
>00473067    jbe         0047306D
 00473069    mov         al,2
>0047306B    jmp         0047306F
 0047306D    mov         al,1
 0047306F    pop         ebp
 00473070    ret         10
*}
end;

//00473074
function CurrCompare(const A:Currency; const B:Currency):TVarCompareResult;
begin
{*
 00473074    push        ebp
 00473075    mov         ebp,esp
 00473077    fild        qword ptr [ebp+10]
 0047307A    fild        qword ptr [ebp+8]
 0047307D    fcompp
 0047307F    fnstsw      al
 00473081    sahf
>00473082    jbe         00473088
 00473084    xor         eax,eax
>00473086    jmp         0047309B
 00473088    fild        qword ptr [ebp+10]
 0047308B    fild        qword ptr [ebp+8]
 0047308E    fcompp
 00473090    fnstsw      al
 00473092    sahf
>00473093    jae         00473099
 00473095    mov         al,2
>00473097    jmp         0047309B
 00473099    mov         al,1
 0047309B    pop         ebp
 0047309C    ret         10
*}
end;

//004730A0
function StringCompare(const L:TVarData; const R:TVarData):TVarCompareResult;
begin
{*
 004730A0    push        ebp
 004730A1    mov         ebp,esp
 004730A3    push        0
 004730A5    push        0
 004730A7    push        ebx
 004730A8    mov         ebx,edx
 004730AA    xor         edx,edx
 004730AC    push        ebp
 004730AD    push        4730FB
 004730B2    push        dword ptr fs:[edx]
 004730B5    mov         dword ptr fs:[edx],esp
 004730B8    mov         edx,eax
 004730BA    lea         eax,[ebp-4]
 004730BD    call        @VarToLStr
 004730C2    mov         edx,ebx
 004730C4    lea         eax,[ebp-8]
 004730C7    call        @VarToLStr
 004730CC    mov         edx,dword ptr [ebp-8]
 004730CF    mov         eax,dword ptr [ebp-4]
 004730D2    call        CompareStr
 004730D7    xor         edx,edx
 004730D9    call        IntCompare
 004730DE    mov         ebx,eax
 004730E0    xor         eax,eax
 004730E2    pop         edx
 004730E3    pop         ecx
 004730E4    pop         ecx
 004730E5    mov         dword ptr fs:[eax],edx
 004730E8    push        473102
 004730ED    lea         eax,[ebp-8]
 004730F0    mov         edx,2
 004730F5    call        @LStrArrayClr
 004730FA    ret
>004730FB    jmp         @HandleFinally
>00473100    jmp         004730ED
 00473102    mov         eax,ebx
 00473104    pop         ebx
 00473105    pop         ecx
 00473106    pop         ecx
 00473107    pop         ebp
 00473108    ret
*}
end;

//0047310C
{*function sub_0047310C(?:?; ?:?; ?:?):?;
begin
 0047310C    push        ebx
 0047310D    push        esi
 0047310E    push        edi
 0047310F    push        ebp
 00473110    mov         ebp,ecx
 00473112    mov         edi,edx
 00473114    mov         esi,eax
 00473116    mov         ax,word ptr [esi]
 00473119    call        CheckType
 0047311E    movzx       eax,ax
 00473121    mov         bl,byte ptr [eax+540BA4]
 00473127    mov         ax,word ptr [edi]
 0047312A    call        CheckType
 0047312F    movzx       eax,ax
 00473132    mov         al,byte ptr [eax+540BA4]
 00473138    xor         edx,edx
 0047313A    mov         dl,al
 0047313C    xor         ecx,ecx
 0047313E    mov         cl,bl
 00473140    imul        ecx,ecx,0B
 00473143    add         ecx,540BE0
 00473149    movzx       edx,byte ptr [ecx+edx]
 0047314D    cmp         edx,0A
>00473150    ja          0047328A
 00473156    jmp         dword ptr [edx*4+47315D]
 00473156    dd          00473189
 00473156    dd          00473195
 00473156    dd          004731A3
 00473156    dd          004731B3
 00473156    dd          004731E9
 00473156    dd          00473232
 00473156    dd          00473255
 00473156    dd          00473260
 00473156    dd          0047320F
 00473156    dd          004731CD
 00473156    dd          0047327D
 00473189    call        VarInvalidOp
 0047318E    mov         al,1
>00473190    jmp         00473291
 00473195    mov         edx,eax
 00473197    mov         eax,ebx
 00473199    call        EmptyCompare
>0047319E    jmp         00473291
 004731A3    mov         ecx,ebp
 004731A5    mov         edx,eax
 004731A7    mov         eax,ebx
 004731A9    call        NullCompare
>004731AE    jmp         00473291
 004731B3    mov         eax,edi
 004731B5    call        @VarToInteger
 004731BA    push        eax
 004731BB    mov         eax,esi
 004731BD    call        @VarToInteger
 004731C2    pop         edx
 004731C3    call        IntCompare
>004731C8    jmp         00473291
 004731CD    mov         eax,esi
 004731CF    call        @VarToInt64
 004731D4    push        edx
 004731D5    push        eax
 004731D6    mov         eax,edi
 004731D8    call        @VarToInt64
 004731DD    push        edx
 004731DE    push        eax
 004731DF    call        Int64Compare
>004731E4    jmp         00473291
 004731E9    mov         eax,esi
 004731EB    call        004708EC
 004731F0    add         esp,0FFFFFFF8
 004731F3    fstp        qword ptr [esp]
 004731F6    wait
 004731F7    mov         eax,edi
 004731F9    call        004708EC
 004731FE    add         esp,0FFFFFFF8
 00473201    fstp        qword ptr [esp]
 00473204    wait
 00473205    call        DateCompare
>0047320A    jmp         00473291
 0047320F    mov         eax,esi
 00473211    call        0047105C
 00473216    add         esp,0FFFFFFF8
 00473219    fstp        qword ptr [esp]
 0047321C    wait
 0047321D    mov         eax,edi
 0047321F    call        0047105C
 00473224    add         esp,0FFFFFFF8
 00473227    fstp        qword ptr [esp]
 0047322A    wait
 0047322B    call        RealCompare
>00473230    jmp         00473291
 00473232    mov         eax,esi
 00473234    call        @VarToCurrency
 00473239    add         esp,0FFFFFFF8
 0047323C    fistp       qword ptr [esp]
 0047323F    wait
 00473240    mov         eax,edi
 00473242    call        @VarToCurrency
 00473247    add         esp,0FFFFFFF8
 0047324A    fistp       qword ptr [esp]
 0047324D    wait
 0047324E    call        CurrCompare
>00473253    jmp         00473291
 00473255    mov         edx,edi
 00473257    mov         eax,esi
 00473259    call        StringCompare
>0047325E    jmp         00473291
 00473260    mov         eax,edi
 00473262    call        @VarToBoolean
 00473267    and         eax,7F
 0047326A    push        eax
 0047326B    mov         eax,esi
 0047326D    call        @VarToBoolean
 00473272    and         eax,7F
 00473275    pop         edx
 00473276    call        IntCompare
>0047327B    jmp         00473291
 0047327D    mov         edx,edi
 0047327F    mov         eax,esi
 00473281    mov         ecx,ebp
 00473283    call        VarCompareAny
>00473288    jmp         00473291
 0047328A    call        VarInvalidOp
 0047328F    mov         al,1
 00473291    pop         ebp
 00473292    pop         edi
 00473293    pop         esi
 00473294    pop         ebx
 00473295    ret
end;*}

//00473298
function VarCompareRare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;
begin
{*
 00473298    push        ebp
 00473299    mov         ebp,esp
 0047329B    add         esp,0FFFFFFD8
 0047329E    push        ebx
 0047329F    push        esi
 004732A0    mov         dword ptr [ebp-8],ecx
 004732A3    mov         dword ptr [ebp-4],edx
 004732A6    mov         ebx,eax
 004732A8    mov         byte ptr [ebp-9],1
 004732AC    mov         si,word ptr [ebx]
 004732AF    mov         eax,esi
 004732B1    and         ax,0FFF
 004732B5    cmp         ax,10F
>004732B9    jae         00473438
 004732BF    test        si,si
>004732C2    jne         004732D5
 004732C4    xor         edx,edx
 004732C6    mov         al,1
 004732C8    call        EmptyCompare
 004732CD    mov         byte ptr [ebp-9],al
>004732D0    jmp         004736AC
 004732D5    cmp         si,1
>004732D9    jne         004732EF
 004732DB    mov         ecx,dword ptr [ebp-8]
 004732DE    xor         edx,edx
 004732E0    mov         al,2
 004732E2    call        NullCompare
 004732E7    mov         byte ptr [ebp-9],al
>004732EA    jmp         004736AC
 004732EF    lea         edx,[ebp-18]
 004732F2    mov         eax,dword ptr [ebp-4]
 004732F5    mov         ax,word ptr [eax]
 004732F8    call        FindCustomVariantType
 004732FD    test        al,al
>004732FF    jne         0047330B
 00473301    call        VarInvalidOp
>00473306    jmp         004736AC
 0047330B    lea         eax,[ebp-0C]
 0047330E    push        eax
 0047330F    mov         edx,ebx
 00473311    mov         ecx,0B
 00473316    mov         eax,dword ptr [ebp-18]
 00473319    mov         esi,dword ptr [eax]
 0047331B    call        dword ptr [esi+4]
 0047331E    test        al,al
>00473320    je          004733D4
 00473326    mov         ax,word ptr [ebx]
 00473329    cmp         ax,word ptr [ebp-0C]
>0047332D    je          004733AA
 0047332F    lea         eax,[ebp-28]
 00473332    push        eax
 00473333    call        oleaut32.VariantInit
 00473338    xor         eax,eax
 0047333A    push        ebp
 0047333B    push        4733A3
 00473340    push        dword ptr fs:[eax]
 00473343    mov         dword ptr fs:[eax],esp
 00473346    movzx       ecx,word ptr [ebp-0C]
 0047334A    mov         edx,ebx
 0047334C    lea         eax,[ebp-28]
 0047334F    call        @VarCast
 00473354    mov         ax,word ptr [ebp-28]
 00473358    and         ax,0FFF
 0047335C    cmp         ax,word ptr [ebp-0C]
>00473360    je          00473367
 00473362    call        VarCastError
 00473367    mov         eax,dword ptr [ebp-8]
 0047336A    push        eax
 0047336B    mov         ecx,dword ptr [ebp-4]
 0047336E    lea         edx,[ebp-28]
 00473371    mov         eax,dword ptr [ebp-18]
 00473374    mov         ebx,dword ptr [eax]
 00473376    call        dword ptr [ebx+34]
 00473379    and         eax,7F
 0047337C    mov         edx,dword ptr [ebp-8]
 0047337F    lea         edx,[edx*2+540BD4]
 00473386    mov         al,byte ptr [edx+eax-1C]
 0047338A    mov         byte ptr [ebp-9],al
 0047338D    xor         eax,eax
 0047338F    pop         edx
 00473390    pop         ecx
 00473391    pop         ecx
 00473392    mov         dword ptr fs:[eax],edx
 00473395    push        4736AC
 0047339A    lea         eax,[ebp-28]
 0047339D    call        @VarClear
 004733A2    ret
>004733A3    jmp         @HandleFinally
>004733A8    jmp         0047339A
 004733AA    mov         eax,dword ptr [ebp-8]
 004733AD    push        eax
 004733AE    mov         ecx,dword ptr [ebp-4]
 004733B1    mov         edx,ebx
 004733B3    mov         eax,dword ptr [ebp-18]
 004733B6    mov         ebx,dword ptr [eax]
 004733B8    call        dword ptr [ebx+34]
 004733BB    and         eax,7F
 004733BE    mov         edx,dword ptr [ebp-8]
 004733C1    lea         edx,[edx*2+540BD4]
 004733C8    mov         al,byte ptr [edx+eax-1C]
 004733CC    mov         byte ptr [ebp-9],al
>004733CF    jmp         004736AC
 004733D4    lea         eax,[ebp-28]
 004733D7    push        eax
 004733D8    call        oleaut32.VariantInit
 004733DD    xor         eax,eax
 004733DF    push        ebp
 004733E0    push        473431
 004733E5    push        dword ptr fs:[eax]
 004733E8    mov         dword ptr fs:[eax],esp
 004733EB    movzx       ecx,word ptr [ebx]
 004733EE    mov         edx,dword ptr [ebp-4]
 004733F1    lea         eax,[ebp-28]
 004733F4    call        @VarCast
 004733F9    mov         ax,word ptr [ebp-28]
 004733FD    and         ax,0FFF
 00473401    cmp         ax,word ptr [ebx]
>00473404    je          0047340B
 00473406    call        VarCastError
 0047340B    lea         edx,[ebp-28]
 0047340E    mov         eax,ebx
 00473410    mov         ecx,dword ptr [ebp-8]
 00473413    call        0047310C
 00473418    mov         byte ptr [ebp-9],al
 0047341B    xor         eax,eax
 0047341D    pop         edx
 0047341E    pop         ecx
 0047341F    pop         ecx
 00473420    mov         dword ptr fs:[eax],edx
 00473423    push        4736AC
 00473428    lea         eax,[ebp-28]
 0047342B    call        @VarClear
 00473430    ret
>00473431    jmp         @HandleFinally
>00473436    jmp         00473428
 00473438    mov         eax,dword ptr [ebp-4]
 0047343B    mov         ax,word ptr [eax]
 0047343E    test        ax,ax
>00473441    jne         00473454
 00473443    mov         dl,1
 00473445    xor         eax,eax
 00473447    call        EmptyCompare
 0047344C    mov         byte ptr [ebp-9],al
>0047344F    jmp         004736AC
 00473454    mov         edx,dword ptr [ebp-4]
 00473457    cmp         ax,1
>0047345B    jne         00473471
 0047345D    mov         ecx,dword ptr [ebp-8]
 00473460    mov         dl,2
 00473462    xor         eax,eax
 00473464    call        NullCompare
 00473469    mov         byte ptr [ebp-9],al
>0047346C    jmp         004736AC
 00473471    lea         edx,[ebp-14]
 00473474    mov         eax,esi
 00473476    call        FindCustomVariantType
 0047347B    test        al,al
>0047347D    jne         00473489
 0047347F    call        VarInvalidOp
>00473484    jmp         004736AC
 00473489    lea         eax,[ebp-0E]
 0047348C    push        eax
 0047348D    mov         edx,dword ptr [ebp-4]
 00473490    mov         ecx,0B
 00473495    mov         eax,dword ptr [ebp-14]
 00473498    mov         esi,dword ptr [eax]
 0047349A    call        dword ptr [esi+8]
 0047349D    test        al,al
>0047349F    je          00473552
 004734A5    mov         eax,dword ptr [ebp-4]
 004734A8    mov         ax,word ptr [eax]
 004734AB    cmp         ax,word ptr [ebp-0E]
>004734AF    je          00473528
 004734B1    lea         eax,[ebp-28]
 004734B4    push        eax
 004734B5    call        oleaut32.VariantInit
 004734BA    xor         eax,eax
 004734BC    push        ebp
 004734BD    push        473521
 004734C2    push        dword ptr fs:[eax]
 004734C5    mov         dword ptr fs:[eax],esp
 004734C8    movzx       ecx,word ptr [ebp-0E]
 004734CC    mov         edx,dword ptr [ebp-4]
 004734CF    lea         eax,[ebp-28]
 004734D2    call        @VarCast
 004734D7    mov         ax,word ptr [ebp-28]
 004734DB    cmp         ax,word ptr [ebp-0E]
>004734DF    je          004734E6
 004734E1    call        VarCastError
 004734E6    mov         eax,dword ptr [ebp-8]
 004734E9    push        eax
 004734EA    lea         ecx,[ebp-28]
 004734ED    mov         edx,ebx
 004734EF    mov         eax,dword ptr [ebp-14]
 004734F2    mov         ebx,dword ptr [eax]
 004734F4    call        dword ptr [ebx+34]
 004734F7    and         eax,7F
 004734FA    mov         edx,dword ptr [ebp-8]
 004734FD    lea         edx,[edx*2+540BD4]
 00473504    mov         al,byte ptr [edx+eax-1C]
 00473508    mov         byte ptr [ebp-9],al
 0047350B    xor         eax,eax
 0047350D    pop         edx
 0047350E    pop         ecx
 0047350F    pop         ecx
 00473510    mov         dword ptr fs:[eax],edx
 00473513    push        4736AC
 00473518    lea         eax,[ebp-28]
 0047351B    call        @VarClear
 00473520    ret
>00473521    jmp         @HandleFinally
>00473526    jmp         00473518
 00473528    mov         eax,dword ptr [ebp-8]
 0047352B    push        eax
 0047352C    mov         ecx,dword ptr [ebp-4]
 0047352F    mov         edx,ebx
 00473531    mov         eax,dword ptr [ebp-14]
 00473534    mov         ebx,dword ptr [eax]
 00473536    call        dword ptr [ebx+34]
 00473539    and         eax,7F
 0047353C    mov         edx,dword ptr [ebp-8]
 0047353F    lea         edx,[edx*2+540BD4]
 00473546    mov         al,byte ptr [edx+eax-1C]
 0047354A    mov         byte ptr [ebp-9],al
>0047354D    jmp         004736AC
 00473552    mov         esi,dword ptr [ebp-4]
 00473555    mov         si,word ptr [esi]
 00473558    mov         eax,esi
 0047355A    and         ax,0FFF
 0047355E    cmp         ax,10F
>00473562    jae         004735CA
 00473564    lea         eax,[ebp-28]
 00473567    push        eax
 00473568    call        oleaut32.VariantInit
 0047356D    xor         eax,eax
 0047356F    push        ebp
 00473570    push        4735C3
 00473575    push        dword ptr fs:[eax]
 00473578    mov         dword ptr fs:[eax],esp
 0047357B    mov         ecx,dword ptr [ebp-4]
 0047357E    movzx       ecx,word ptr [ecx]
 00473581    mov         edx,ebx
 00473583    lea         eax,[ebp-28]
 00473586    call        @VarCast
 0047358B    mov         eax,dword ptr [ebp-4]
 0047358E    mov         ax,word ptr [eax]
 00473591    cmp         ax,word ptr [ebp-28]
>00473595    je          0047359C
 00473597    call        VarCastError
 0047359C    mov         edx,dword ptr [ebp-4]
 0047359F    lea         eax,[ebp-28]
 004735A2    mov         ecx,dword ptr [ebp-8]
 004735A5    call        0047310C
 004735AA    mov         byte ptr [ebp-9],al
 004735AD    xor         eax,eax
 004735AF    pop         edx
 004735B0    pop         ecx
 004735B1    pop         ecx
 004735B2    mov         dword ptr fs:[eax],edx
 004735B5    push        4736AC
 004735BA    lea         eax,[ebp-28]
 004735BD    call        @VarClear
 004735C2    ret
>004735C3    jmp         @HandleFinally
>004735C8    jmp         004735BA
 004735CA    lea         edx,[ebp-18]
 004735CD    mov         eax,dword ptr [ebp-4]
 004735D0    mov         eax,esi
 004735D2    call        FindCustomVariantType
 004735D7    test        al,al
>004735D9    jne         004735E5
 004735DB    call        VarInvalidOp
>004735E0    jmp         004736AC
 004735E5    lea         eax,[ebp-0C]
 004735E8    push        eax
 004735E9    mov         edx,ebx
 004735EB    mov         ecx,0B
 004735F0    mov         eax,dword ptr [ebp-18]
 004735F3    mov         esi,dword ptr [eax]
 004735F5    call        dword ptr [esi+4]
 004735F8    test        al,al
>004735FA    je          004736A7
 00473600    mov         ax,word ptr [ebx]
 00473603    cmp         ax,word ptr [ebp-0C]
>00473607    je          00473680
 00473609    lea         eax,[ebp-28]
 0047360C    push        eax
 0047360D    call        oleaut32.VariantInit
 00473612    xor         eax,eax
 00473614    push        ebp
 00473615    push        473679
 0047361A    push        dword ptr fs:[eax]
 0047361D    mov         dword ptr fs:[eax],esp
 00473620    movzx       ecx,word ptr [ebp-0C]
 00473624    mov         edx,ebx
 00473626    lea         eax,[ebp-28]
 00473629    call        @VarCast
 0047362E    mov         ax,word ptr [ebp-28]
 00473632    cmp         ax,word ptr [ebp-0C]
>00473636    je          0047363D
 00473638    call        VarCastError
 0047363D    mov         eax,dword ptr [ebp-8]
 00473640    push        eax
 00473641    mov         ecx,dword ptr [ebp-4]
 00473644    lea         edx,[ebp-28]
 00473647    mov         eax,dword ptr [ebp-18]
 0047364A    mov         ebx,dword ptr [eax]
 0047364C    call        dword ptr [ebx+34]
 0047364F    and         eax,7F
 00473652    mov         edx,dword ptr [ebp-8]
 00473655    lea         edx,[edx*2+540BD4]
 0047365C    mov         al,byte ptr [edx+eax-1C]
 00473660    mov         byte ptr [ebp-9],al
 00473663    xor         eax,eax
 00473665    pop         edx
 00473666    pop         ecx
 00473667    pop         ecx
 00473668    mov         dword ptr fs:[eax],edx
 0047366B    push        4736AC
 00473670    lea         eax,[ebp-28]
 00473673    call        @VarClear
 00473678    ret
>00473679    jmp         @HandleFinally
>0047367E    jmp         00473670
 00473680    mov         eax,dword ptr [ebp-8]
 00473683    push        eax
 00473684    mov         ecx,dword ptr [ebp-4]
 00473687    mov         edx,ebx
 00473689    mov         eax,dword ptr [ebp-18]
 0047368C    mov         ebx,dword ptr [eax]
 0047368E    call        dword ptr [ebx+34]
 00473691    and         eax,7F
 00473694    mov         edx,dword ptr [ebp-8]
 00473697    lea         edx,[edx*2+540BD4]
 0047369E    mov         al,byte ptr [edx+eax-1C]
 004736A2    mov         byte ptr [ebp-9],al
>004736A5    jmp         004736AC
 004736A7    call        VarInvalidOp
 004736AC    mov         al,byte ptr [ebp-9]
 004736AF    pop         esi
 004736B0    pop         ebx
 004736B1    mov         esp,ebp
 004736B3    pop         ebp
 004736B4    ret
*}
end;

//004736B8
function VarCompare(const Left:TVarData; const Right:TVarData; const OpCode:TVarOp):TVarCompareResult;
begin
{*
 004736B8    push        esi
 004736B9    push        edi
 004736BA    mov         si,word ptr [eax]
 004736BD    mov         di,word ptr [edx]
 004736C0    cmp         si,10F
>004736C5    jae         004736D6
 004736C7    cmp         di,10F
>004736CC    jae         004736D6
 004736CE    call        0047310C
 004736D3    pop         edi
 004736D4    pop         esi
 004736D5    ret
 004736D6    cmp         si,400C
>004736DB    jne         004736E7
 004736DD    mov         eax,dword ptr [eax+8]
 004736E0    call        VarCompare
>004736E5    jmp         0047371C
 004736E7    cmp         di,400C
>004736EC    jne         004736F8
 004736EE    mov         edx,dword ptr [edx+8]
 004736F1    call        VarCompare
>004736F6    jmp         0047371C
 004736F8    and         si,0FFF
 004736FD    cmp         si,10F
>00473702    jae         00473717
 00473704    and         di,0FFF
 00473709    cmp         di,10F
>0047370E    jae         00473717
 00473710    call        0047310C
>00473715    jmp         0047371C
 00473717    call        VarCompareRare
 0047371C    pop         edi
 0047371D    pop         esi
 0047371E    ret
*}
end;

//004738A4
function VarTypeAsText(const AType:TVarType):AnsiString;
begin
{*
 004738A4    push        ebp
 004738A5    mov         ebp,esp
 004738A7    add         esp,0FFFFFDF8
 004738AD    push        ebx
 004738AE    push        esi
 004738AF    push        edi
 004738B0    xor         ecx,ecx
 004738B2    mov         dword ptr [ebp-208],ecx
 004738B8    mov         esi,edx
 004738BA    mov         ebx,eax
 004738BC    xor         eax,eax
 004738BE    push        ebp
 004738BF    push        4739CA
 004738C4    push        dword ptr fs:[eax]
 004738C7    mov         dword ptr fs:[eax],esp
 004738CA    mov         edi,ebx
 004738CC    and         di,0FFF
 004738D1    cmp         di,14
>004738D5    ja          004738ED
 004738D7    mov         eax,esi
 004738D9    movzx       edx,di
 004738DC    mov         edx,dword ptr [edx*4+540C5C];^'Empty'
 004738E3    call        @LStrAsg
>004738E8    jmp         0047398B
 004738ED    cmp         bx,100
>004738F2    jne         00473905
 004738F4    mov         eax,esi
 004738F6    mov         edx,4739E0;'String'
 004738FB    call        @LStrAsg
>00473900    jmp         0047398B
 00473905    cmp         bx,101
>0047390A    jne         0047391A
 0047390C    mov         eax,esi
 0047390E    mov         edx,4739F0;'Any'
 00473913    call        @LStrAsg
>00473918    jmp         0047398B
 0047391A    lea         edx,[ebp-4]
 0047391D    mov         eax,ebx
 0047391F    call        FindCustomVariantType
 00473924    test        al,al
>00473926    je          00473963
 00473928    lea         eax,[ebp-104]
 0047392E    push        eax
 0047392F    lea         edx,[ebp-204]
 00473935    mov         eax,dword ptr [ebp-4]
 00473938    mov         eax,dword ptr [eax]
 0047393A    call        TObject.ClassName
 0047393F    lea         eax,[ebp-204]
 00473945    mov         ecx,7FFFFFFF
 0047394A    mov         edx,2
 0047394F    call        @Copy
 00473954    lea         edx,[ebp-104]
 0047395A    mov         eax,esi
 0047395C    call        @LStrFromString
>00473961    jmp         0047398B
 00473963    lea         ecx,[ebp-208]
 00473969    movzx       eax,di
 0047396C    mov         edx,4
 00473971    call        IntToHex
 00473976    mov         ecx,dword ptr [ebp-208]
 0047397C    mov         edx,dword ptr ds:[55B65C];^gvar_0054099C
 00473982    mov         edx,dword ptr [edx]
 00473984    mov         eax,esi
 00473986    call        @LStrCat3
 0047398B    test        bh,20
>0047398E    je          0047399E
 00473990    mov         ecx,dword ptr [esi]
 00473992    mov         eax,esi
 00473994    mov         edx,4739FC;'Array '
 00473999    call        @LStrCat3
 0047399E    test        bh,40
>004739A1    je          004739B1
 004739A3    mov         ecx,dword ptr [esi]
 004739A5    mov         eax,esi
 004739A7    mov         edx,473A0C;'ByRef '
 004739AC    call        @LStrCat3
 004739B1    xor         eax,eax
 004739B3    pop         edx
 004739B4    pop         ecx
 004739B5    pop         ecx
 004739B6    mov         dword ptr fs:[eax],edx
 004739B9    push        4739D1
 004739BE    lea         eax,[ebp-208]
 004739C4    call        @LStrClr
 004739C9    ret
>004739CA    jmp         @HandleFinally
>004739CF    jmp         004739BE
 004739D1    pop         edi
 004739D2    pop         esi
 004739D3    pop         ebx
 004739D4    mov         esp,ebp
 004739D6    pop         ebp
 004739D7    ret
*}
end;

//00473A14
{*function sub_00473A14(?:?):?;
begin
 00473A14    mov         ax,word ptr [eax]
 00473A17    ret
end;*}

//00473A18
function FindVarData(const V:Variant):PVarData;
begin
{*
>00473A18    jmp         00473A1D
 00473A1A    mov         eax,dword ptr [eax+8]
 00473A1D    cmp         word ptr [eax],400C
>00473A22    je          00473A1A
 00473A24    ret
*}
end;

//00473A28
function VarIsClear(const V:Variant):Boolean;
begin
{*
 00473A28    push        ebx
 00473A29    push        esi
 00473A2A    push        edi
 00473A2B    add         esp,0FFFFFFEC
 00473A2E    mov         ebx,eax
 00473A30    mov         eax,ebx
 00473A32    call        FindVarData
 00473A37    mov         esi,eax
 00473A39    lea         edi,[esp+4]
 00473A3D    movs        dword ptr [edi],dword ptr [esi]
 00473A3E    movs        dword ptr [edi],dword ptr [esi]
 00473A3F    movs        dword ptr [edi],dword ptr [esi]
 00473A40    movs        dword ptr [edi],dword ptr [esi]
 00473A41    mov         bx,word ptr [esp+4]
 00473A46    cmp         bx,10F
>00473A4B    jae         00473A75
 00473A4D    cmp         word ptr [esp+4],0
>00473A53    je          00473A71
 00473A55    mov         ax,word ptr [esp+4]
 00473A5A    cmp         ax,9
>00473A5E    je          00473A66
 00473A60    cmp         ax,0D
>00473A64    jne         00473A6D
 00473A66    cmp         dword ptr [esp+0C],0
>00473A6B    je          00473A71
 00473A6D    xor         eax,eax
>00473A6F    jmp         00473A92
 00473A71    mov         al,1
>00473A73    jmp         00473A92
 00473A75    mov         edx,esp
 00473A77    mov         eax,ebx
 00473A79    call        FindCustomVariantType
 00473A7E    test        al,al
>00473A80    je          00473A90
 00473A82    lea         edx,[esp+4]
 00473A86    mov         eax,dword ptr [esp]
 00473A89    mov         ecx,dword ptr [eax]
 00473A8B    call        dword ptr [ecx+14]
>00473A8E    jmp         00473A92
 00473A90    xor         eax,eax
 00473A92    add         esp,14
 00473A95    pop         edi
 00473A96    pop         esi
 00473A97    pop         ebx
 00473A98    ret
*}
end;

//00473A9C
function VarSameValue(const A:Variant; const B:Variant):Boolean;
begin
{*
 00473A9C    push        ebx
 00473A9D    push        esi
 00473A9E    push        edi
 00473A9F    add         esp,0FFFFFFE0
 00473AA2    mov         esi,edx
 00473AA4    mov         ebx,eax
 00473AA6    mov         eax,ebx
 00473AA8    call        FindVarData
 00473AAD    push        esi
 00473AAE    mov         esi,eax
 00473AB0    lea         edi,[esp+4]
 00473AB4    movs        dword ptr [edi],dword ptr [esi]
 00473AB5    movs        dword ptr [edi],dword ptr [esi]
 00473AB6    movs        dword ptr [edi],dword ptr [esi]
 00473AB7    movs        dword ptr [edi],dword ptr [esi]
 00473AB8    pop         esi
 00473AB9    mov         eax,esi
 00473ABB    call        FindVarData
 00473AC0    push        esi
 00473AC1    mov         esi,eax
 00473AC3    lea         edi,[esp+14]
 00473AC7    movs        dword ptr [edi],dword ptr [esi]
 00473AC8    movs        dword ptr [edi],dword ptr [esi]
 00473AC9    movs        dword ptr [edi],dword ptr [esi]
 00473ACA    movs        dword ptr [edi],dword ptr [esi]
 00473ACB    pop         esi
 00473ACC    mov         ax,word ptr [esp]
 00473AD0    test        ax,ax
>00473AD3    jne         00473AE0
 00473AD5    cmp         word ptr [esp+10],0
 00473ADB    sete        al
>00473ADE    jmp         00473B0C
 00473AE0    cmp         ax,1
>00473AE4    jne         00473AF1
 00473AE6    cmp         word ptr [esp+10],1
 00473AEC    sete        al
>00473AEF    jmp         00473B0C
 00473AF1    mov         ax,word ptr [esp+10]
 00473AF6    sub         ax,2
>00473AFA    jae         00473B00
 00473AFC    xor         eax,eax
>00473AFE    jmp         00473B0C
 00473B00    mov         eax,ebx
 00473B02    mov         edx,esi
 00473B04    call        @VarCmpEQ
 00473B09    sete        al
 00473B0C    add         esp,20
 00473B0F    pop         edi
 00473B10    pop         esi
 00473B11    pop         ebx
 00473B12    ret
*}
end;

//00473B14
procedure SetVarAsError(var V:TVarData; AResult:HRESULT);
begin
{*
 00473B14    push        ebx
 00473B15    push        esi
 00473B16    mov         esi,edx
 00473B18    mov         ebx,eax
 00473B1A    mov         eax,ebx
 00473B1C    call        @VarClear
 00473B21    mov         word ptr [ebx],0A
 00473B26    mov         dword ptr [ebx+8],esi
 00473B29    pop         esi
 00473B2A    pop         ebx
 00473B2B    ret
*}
end;

//00473B2C
procedure SetClearVarToEmptyParam(var V:TVarData);
begin
{*
 00473B2C    mov         edx,80020004
 00473B31    call        SetVarAsError
 00473B36    ret
*}
end;

//00473B38
function GetVarDataArrayInfo(const AVarData:TVarData; var AVarType:TVarType; var AVarArray:PVarArray):Boolean;
begin
{*
 00473B38    push        ebx
 00473B39    mov         bx,word ptr [eax]
 00473B3C    cmp         bx,400C
>00473B41    jne         00473B4F
 00473B43    mov         eax,dword ptr [eax+8]
 00473B46    call        GetVarDataArrayInfo
 00473B4B    mov         ebx,eax
>00473B4D    jmp         00473B77
 00473B4F    mov         word ptr [edx],bx
 00473B52    test        byte ptr [edx+1],20
 00473B56    setne       bl
 00473B59    test        bl,bl
>00473B5B    je          00473B73
 00473B5D    test        byte ptr [edx+1],40
>00473B61    je          00473B6C
 00473B63    mov         eax,dword ptr [eax+8]
 00473B66    mov         eax,dword ptr [eax]
 00473B68    mov         dword ptr [ecx],eax
>00473B6A    jmp         00473B77
 00473B6C    mov         eax,dword ptr [eax+8]
 00473B6F    mov         dword ptr [ecx],eax
>00473B71    jmp         00473B77
 00473B73    xor         eax,eax
 00473B75    mov         dword ptr [ecx],eax
 00473B77    mov         eax,ebx
 00473B79    pop         ebx
 00473B7A    ret
*}
end;

//00473B7C
function VarIsArray(const A:Variant):Boolean;
begin
{*
 00473B7C    mov         dl,1
 00473B7E    call        VarIsArray
 00473B83    ret
*}
end;

//00473B84
function VarIsArray(const A:Variant; AResolveByRef:Boolean):Boolean;
begin
{*
 00473B84    add         esp,0FFFFFFF8
 00473B87    test        dl,dl
>00473B89    je          00473B99
 00473B8B    lea         ecx,[esp+4]
 00473B8F    mov         edx,esp
 00473B91    call        GetVarDataArrayInfo
 00473B96    pop         ecx
 00473B97    pop         edx
 00473B98    ret
 00473B99    mov         ax,word ptr [eax]
 00473B9C    and         ax,2000
 00473BA0    cmp         ax,2000
 00473BA4    sete        al
 00473BA7    pop         ecx
 00473BA8    pop         edx
 00473BA9    ret
*}
end;

//00473BD0
procedure sub_00473BD0;
begin
{*
 00473BD0    push        ebp
 00473BD1    mov         ebp,esp
 00473BD3    push        ebx
 00473BD4    push        esi
 00473BD5    mov         esi,55DAA4;gvar_0055DAA4:?
 00473BDA    push        55DAA8;gvar_0055DAA8
 00473BDF    call        kernel32.EnterCriticalSection
 00473BE4    xor         edx,edx
 00473BE6    push        ebp
 00473BE7    push        473C31
 00473BEC    push        dword ptr fs:[edx]
 00473BEF    mov         dword ptr fs:[edx],esp
 00473BF2    mov         eax,dword ptr [esi]
 00473BF4    call        @LStrLen
 00473BF9    mov         ebx,eax
 00473BFB    dec         ebx
 00473BFC    cmp         ebx,0
>00473BFF    jl          00473C19
 00473C01    mov         eax,dword ptr [esi]
 00473C03    mov         eax,dword ptr [eax+ebx*4]
 00473C06    cmp         eax,dword ptr ds:[540BBC];0xFFFFFFFF gvar_00540BBC
>00473C0C    je          00473C13
 00473C0E    call        TObject.Free
 00473C13    dec         ebx
 00473C14    cmp         ebx,0FFFFFFFF
>00473C17    jne         00473C01
 00473C19    xor         eax,eax
 00473C1B    pop         edx
 00473C1C    pop         ecx
 00473C1D    pop         ecx
 00473C1E    mov         dword ptr fs:[eax],edx
 00473C21    push        473C38
 00473C26    push        55DAA8;gvar_0055DAA8
 00473C2B    call        kernel32.LeaveCriticalSection
 00473C30    ret
>00473C31    jmp         @HandleFinally
>00473C36    jmp         00473C26
 00473C38    pop         esi
 00473C39    pop         ebx
 00473C3A    pop         ebp
 00473C3B    ret
*}
end;

//00473C3C
procedure TCustomVariantType.BinaryOp(var Left:TVarData; const Right:TVarData; const Operator:TVarOp);
begin
{*
 00473C3C    push        ebp
 00473C3D    mov         ebp,esp
 00473C3F    call        00473DFC
 00473C44    pop         ebp
 00473C45    ret         4
*}
end;

//00473C48
procedure TCustomVariantType.Cast(var Dest:TVarData; const Source:TVarData);
begin
{*
 00473C48    push        ebx
 00473C49    push        esi
 00473C4A    push        edi
 00473C4B    push        ecx
 00473C4C    mov         esi,ecx
 00473C4E    mov         edi,edx
 00473C50    mov         ebx,eax
 00473C52    mov         edx,esp
 00473C54    mov         ax,word ptr [esi]
 00473C57    call        FindCustomVariantType
 00473C5C    test        al,al
>00473C5E    je          00473C74
 00473C60    mov         ax,word ptr [ebx+4]
 00473C64    push        eax
 00473C65    mov         ecx,esi
 00473C67    mov         edx,edi
 00473C69    mov         eax,dword ptr [esp+4]
 00473C6D    mov         ebx,dword ptr [eax]
 00473C6F    call        dword ptr [ebx+1C]
>00473C72    jmp         00473C7B
 00473C74    mov         eax,ebx
 00473C76    call        00473DF4
 00473C7B    pop         edx
 00473C7C    pop         edi
 00473C7D    pop         esi
 00473C7E    pop         ebx
 00473C7F    ret
*}
end;

//00473C80
procedure TCustomVariantType.CastTo(var Dest:TVarData; const Source:TVarData; const AVarType:TVarType);
begin
{*
 00473C80    push        ebp
 00473C81    mov         ebp,esp
 00473C83    add         esp,0FFFFFFF8
 00473C86    push        ebx
 00473C87    push        esi
 00473C88    push        edi
 00473C89    mov         esi,ecx
 00473C8B    mov         dword ptr [ebp-4],edx
 00473C8E    mov         ebx,eax
 00473C90    mov         edi,dword ptr [ebp+8]
 00473C93    cmp         di,word ptr [ebx+4]
>00473C97    je          00473CB8
 00473C99    lea         edx,[ebp-8]
 00473C9C    mov         ax,word ptr [esi]
 00473C9F    call        FindCustomVariantType
 00473CA4    test        al,al
>00473CA6    je          00473CB8
 00473CA8    push        edi
 00473CA9    mov         ecx,esi
 00473CAB    mov         edx,dword ptr [ebp-4]
 00473CAE    mov         eax,dword ptr [ebp-8]
 00473CB1    mov         ebx,dword ptr [eax]
 00473CB3    call        dword ptr [ebx+1C]
>00473CB6    jmp         00473CBF
 00473CB8    mov         eax,ebx
 00473CBA    call        00473DF4
 00473CBF    pop         edi
 00473CC0    pop         esi
 00473CC1    pop         ebx
 00473CC2    pop         ecx
 00473CC3    pop         ecx
 00473CC4    pop         ebp
 00473CC5    ret         4
*}
end;

//00473CC8
procedure TCustomVariantType.Compare(const Left:TVarData; const Right:TVarData; var Relationship:TVarCompareResult);
begin
{*
 00473CC8    push        ebp
 00473CC9    mov         ebp,esp
 00473CCB    call        00473DFC
 00473CD0    pop         ebp
 00473CD1    ret         4
*}
end;

//00473CD4
function TCustomVariantType.CompareOp(const Left:TVarData; const Right:TVarData; const Operator:TVarOp):Boolean;
begin
{*
 00473CD4    push        ebp
 00473CD5    mov         ebp,esp
 00473CD7    push        ecx
 00473CD8    push        ebx
 00473CD9    push        esi
 00473CDA    push        edi
 00473CDB    mov         edi,edx
 00473CDD    mov         esi,eax
 00473CDF    lea         eax,[ebp-1]
 00473CE2    push        eax
 00473CE3    mov         edx,edi
 00473CE5    mov         eax,esi
 00473CE7    mov         ebx,dword ptr [eax]
 00473CE9    call        dword ptr [ebx+38]
 00473CEC    xor         eax,eax
 00473CEE    mov         al,byte ptr [ebp-1]
 00473CF1    mov         edx,dword ptr [ebp+8]
 00473CF4    lea         edx,[edx+edx*2]
 00473CF7    add         edx,540CB0
 00473CFD    mov         al,byte ptr [edx+eax-2A]
 00473D01    pop         edi
 00473D02    pop         esi
 00473D03    pop         ebx
 00473D04    pop         ecx
 00473D05    pop         ebp
 00473D06    ret         4
*}
end;

//00473D0C
procedure TCustomVariantType.CastToOle(var Dest:TVarData; const Source:TVarData);
begin
{*
 00473D0C    push        ebx
 00473D0D    push        esi
 00473D0E    push        edi
 00473D0F    push        ebp
 00473D10    push        ecx
 00473D11    mov         esi,ecx
 00473D13    mov         edi,edx
 00473D15    mov         ebx,eax
 00473D17    mov         ecx,esp
 00473D19    mov         edx,esi
 00473D1B    mov         eax,ebx
 00473D1D    mov         ebp,dword ptr [eax]
 00473D1F    call        dword ptr [ebp+0C]
 00473D22    test        al,al
>00473D24    je          00473D38
 00473D26    mov         ax,word ptr [esp]
 00473D2A    push        eax
 00473D2B    mov         ecx,esi
 00473D2D    mov         edx,edi
 00473D2F    mov         eax,ebx
 00473D31    mov         ebx,dword ptr [eax]
 00473D33    call        dword ptr [ebx+1C]
>00473D36    jmp         00473D3F
 00473D38    mov         eax,ebx
 00473D3A    call        00473DF4
 00473D3F    pop         edx
 00473D40    pop         ebp
 00473D41    pop         edi
 00473D42    pop         esi
 00473D43    pop         ebx
 00473D44    ret
*}
end;

//00473D48
destructor TCustomVariantType.Destroy;
begin
{*
 00473D48    push        ebp
 00473D49    mov         ebp,esp
 00473D4B    add         esp,0FFFFFFF8
 00473D4E    call        @BeforeDestruction
 00473D53    mov         byte ptr [ebp-5],dl
 00473D56    mov         dword ptr [ebp-4],eax
 00473D59    push        55DAA8;gvar_0055DAA8
 00473D5E    call        kernel32.EnterCriticalSection
 00473D63    xor         edx,edx
 00473D65    push        ebp
 00473D66    push        473DAB
 00473D6B    push        dword ptr fs:[edx]
 00473D6E    mov         dword ptr fs:[edx],esp
 00473D71    mov         eax,dword ptr [ebp-4]
 00473D74    mov         ax,word ptr [eax+4]
 00473D78    test        ax,ax
>00473D7B    je          00473D93
 00473D7D    movzx       eax,ax
 00473D80    mov         edx,dword ptr ds:[55DAA4];gvar_0055DAA4:?
 00473D86    mov         ecx,dword ptr ds:[540BBC];gvar_00540BBC
 00473D8C    mov         dword ptr [edx+eax*4-400],ecx
 00473D93    xor         eax,eax
 00473D95    pop         edx
 00473D96    pop         ecx
 00473D97    pop         ecx
 00473D98    mov         dword ptr fs:[eax],edx
 00473D9B    push        473DB2
 00473DA0    push        55DAA8;gvar_0055DAA8
 00473DA5    call        kernel32.LeaveCriticalSection
 00473DAA    ret
>00473DAB    jmp         @HandleFinally
>00473DB0    jmp         00473DA0
 00473DB2    mov         dl,byte ptr [ebp-5]
 00473DB5    and         dl,0FC
 00473DB8    mov         eax,dword ptr [ebp-4]
 00473DBB    call        TObject.Destroy
 00473DC0    cmp         byte ptr [ebp-5],0
>00473DC4    jle         00473DCE
 00473DC6    mov         eax,dword ptr [ebp-4]
 00473DC9    call        @ClassDestroy
 00473DCE    pop         ecx
 00473DCF    pop         ecx
 00473DD0    pop         ebp
 00473DD1    ret
*}
end;

//00473DD4
{*function sub_00473DD4:?;
begin
 00473DD4    xor         eax,eax
 00473DD6    ret
end;*}

//00473DD8
function TCustomVariantType.LeftPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;
begin
{*
 00473DD8    push        ebp
 00473DD9    mov         ebp,esp
 00473DDB    mov         edx,dword ptr [ebp+8]
 00473DDE    mov         ax,word ptr [eax+4]
 00473DE2    mov         word ptr [edx],ax
 00473DE5    mov         al,1
 00473DE7    pop         ebp
 00473DE8    ret         4
*}
end;

//00473DEC
function TCustomVariantType.OlePromotion(const V:TVarData; var RequiredVarType:TVarType):Boolean;
begin
{*
 00473DEC    mov         word ptr [ecx],8
 00473DF1    mov         al,1
 00473DF3    ret
*}
end;

//00473DF4
procedure sub_00473DF4;
begin
{*
 00473DF4    call        VarCastError
 00473DF9    ret
*}
end;

//00473DFC
procedure sub_00473DFC;
begin
{*
 00473DFC    call        VarInvalidOp
 00473E01    ret
*}
end;

//00473E04
procedure sub_00473E04;
begin
{*
 00473E04    call        @DispInvokeError
 00473E09    ret
*}
end;

//00473E0C
function TCustomVariantType.RightPromotion(const V:TVarData; const Operator:TVarOp; var RequiredVarType:TVarType):Boolean;
begin
{*
 00473E0C    push        ebp
 00473E0D    mov         ebp,esp
 00473E0F    mov         edx,dword ptr [ebp+8]
 00473E12    mov         ax,word ptr [eax+4]
 00473E16    mov         word ptr [edx],ax
 00473E19    mov         al,1
 00473E1B    pop         ebp
 00473E1C    ret         4
*}
end;

//00473E20
procedure sub_00473E20;
begin
{*
 00473E20    call        00473DFC
 00473E25    ret
*}
end;

//00473E28
procedure TCustomVariantType.DispInvoke(Dest:PVarData; const Source:TVarData; CallDesc:PCallDesc; Params:Pointer);
begin
{*
 00473E28    push        ebp
 00473E29    mov         ebp,esp
 00473E2B    call        00473E04
 00473E30    pop         ebp
 00473E31    ret         8
*}
end;

//00473E34
function TCustomVariantType._AddRef:Integer; stdcall;
begin
{*
 00473E34    push        ebp
 00473E35    mov         ebp,esp
 00473E37    or          eax,0FFFFFFFF
 00473E3A    pop         ebp
 00473E3B    ret         4
*}
end;

//00473E40
function TCustomVariantType._Release:Integer; stdcall;
begin
{*
 00473E40    push        ebp
 00473E41    mov         ebp,esp
 00473E43    or          eax,0FFFFFFFF
 00473E46    pop         ebp
 00473E47    ret         4
*}
end;

//00473E4C
function TCustomVariantType.QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;
begin
{*
 00473E4C    push        ebp
 00473E4D    mov         ebp,esp
 00473E4F    push        ebx
 00473E50    mov         ebx,dword ptr [ebp+8]
 00473E53    mov         ecx,dword ptr [ebp+10]
 00473E56    mov         edx,dword ptr [ebp+0C]
 00473E59    mov         eax,ebx
 00473E5B    call        TObject.GetInterface
 00473E60    test        al,al
>00473E62    je          00473E68
 00473E64    xor         eax,eax
>00473E66    jmp         00473E6D
 00473E68    mov         eax,80004002
 00473E6D    pop         ebx
 00473E6E    pop         ebp
 00473E6F    ret         0C
*}
end;

//00473E74
function FindCustomVariantType(const AVarType:TVarType; var CustomVariantType:TCustomVariantType):Boolean;
begin
{*
 00473E74    push        ebp
 00473E75    mov         ebp,esp
 00473E77    push        ecx
 00473E78    push        ebx
 00473E79    push        esi
 00473E7A    push        edi
 00473E7B    mov         esi,edx
 00473E7D    mov         ebx,eax
 00473E7F    cmp         dword ptr ds:[55DAA4],0;gvar_0055DAA4:?
>00473E86    je          00473E96
 00473E88    cmp         bx,100
>00473E8D    jb          00473E96
 00473E8F    cmp         bx,7FF
>00473E94    jbe         00473E9A
 00473E96    xor         eax,eax
>00473E98    jmp         00473E9C
 00473E9A    mov         al,1
 00473E9C    mov         byte ptr [ebp-1],al
 00473E9F    cmp         byte ptr [ebp-1],0
>00473EA3    je          00473F23
 00473EA5    push        55DAA8;gvar_0055DAA8
 00473EAA    call        kernel32.EnterCriticalSection
 00473EAF    xor         eax,eax
 00473EB1    push        ebp
 00473EB2    push        473F1C
 00473EB7    push        dword ptr fs:[eax]
 00473EBA    mov         dword ptr fs:[eax],esp
 00473EBD    mov         eax,[0055DAA4];gvar_0055DAA4:?
 00473EC2    call        @LStrLen
 00473EC7    movzx       edi,bx
 00473ECA    mov         edx,edi
 00473ECC    sub         edx,100
 00473ED2    cmp         eax,edx
 00473ED4    setg        byte ptr [ebp-1]
 00473ED8    cmp         byte ptr [ebp-1],0
>00473EDC    je          00473F04
 00473EDE    mov         eax,[0055DAA4];gvar_0055DAA4:?
 00473EE3    mov         eax,dword ptr [eax+edi*4-400]
 00473EEA    mov         dword ptr [esi],eax
 00473EEC    cmp         dword ptr [esi],0
>00473EEF    je          00473EFB
 00473EF1    mov         eax,dword ptr [esi]
 00473EF3    cmp         eax,dword ptr ds:[540BBC];gvar_00540BBC
>00473EF9    jne         00473EFF
 00473EFB    xor         eax,eax
>00473EFD    jmp         00473F01
 00473EFF    mov         al,1
 00473F01    mov         byte ptr [ebp-1],al
 00473F04    xor         eax,eax
 00473F06    pop         edx
 00473F07    pop         ecx
 00473F08    pop         ecx
 00473F09    mov         dword ptr fs:[eax],edx
 00473F0C    push        473F23
 00473F11    push        55DAA8;gvar_0055DAA8
 00473F16    call        kernel32.LeaveCriticalSection
 00473F1B    ret
>00473F1C    jmp         @HandleFinally
>00473F21    jmp         00473F11
 00473F23    mov         al,byte ptr [ebp-1]
 00473F26    pop         edi
 00473F27    pop         esi
 00473F28    pop         ebx
 00473F29    pop         ecx
 00473F2A    pop         ebp
 00473F2B    ret
*}
end;

//00473F2C
function FindCustomVariantType(const TypeName:AnsiString; var CustomVariantType:TCustomVariantType):Boolean;
begin
{*
 00473F2C    push        ebp
 00473F2D    mov         ebp,esp
 00473F2F    add         esp,0FFFFFEF0
 00473F35    push        ebx
 00473F36    push        esi
 00473F37    push        edi
 00473F38    xor         ecx,ecx
 00473F3A    mov         dword ptr [ebp-10],ecx
 00473F3D    mov         dword ptr [ebp-8],edx
 00473F40    mov         dword ptr [ebp-4],eax
 00473F43    xor         eax,eax
 00473F45    push        ebp
 00473F46    push        474002
 00473F4B    push        dword ptr fs:[eax]
 00473F4E    mov         dword ptr fs:[eax],esp
 00473F51    mov         byte ptr [ebp-9],0
 00473F55    push        55DAA8;gvar_0055DAA8
 00473F5A    call        kernel32.EnterCriticalSection
 00473F5F    xor         eax,eax
 00473F61    push        ebp
 00473F62    push        473FE5
 00473F67    push        dword ptr fs:[eax]
 00473F6A    mov         dword ptr fs:[eax],esp
 00473F6D    mov         eax,[0055DAA4];gvar_0055DAA4:?
 00473F72    call        00405CE8
 00473F77    mov         esi,eax
 00473F79    test        esi,esi
>00473F7B    jl          00473FCD
 00473F7D    inc         esi
 00473F7E    xor         edi,edi
 00473F80    mov         eax,[0055DAA4];gvar_0055DAA4:?
 00473F85    mov         ebx,dword ptr [eax+edi*4]
 00473F88    test        ebx,ebx
>00473F8A    je          00473FC9
 00473F8C    cmp         ebx,dword ptr ds:[540BBC];gvar_00540BBC
>00473F92    je          00473FC9
 00473F94    lea         edx,[ebp-110]
 00473F9A    mov         eax,dword ptr [ebx]
 00473F9C    call        TObject.ClassName
 00473FA1    lea         edx,[ebp-110]
 00473FA7    lea         eax,[ebp-10]
 00473FAA    call        @LStrFromString
 00473FAF    mov         eax,dword ptr [ebp-10]
 00473FB2    mov         edx,dword ptr [ebp-4]
 00473FB5    call        SameText
 00473FBA    test        al,al
>00473FBC    je          00473FC9
 00473FBE    mov         eax,dword ptr [ebp-8]
 00473FC1    mov         dword ptr [eax],ebx
 00473FC3    mov         byte ptr [ebp-9],1
>00473FC7    jmp         00473FCD
 00473FC9    inc         edi
 00473FCA    dec         esi
>00473FCB    jne         00473F80
 00473FCD    xor         eax,eax
 00473FCF    pop         edx
 00473FD0    pop         ecx
 00473FD1    pop         ecx
 00473FD2    mov         dword ptr fs:[eax],edx
 00473FD5    push        473FEC
 00473FDA    push        55DAA8;gvar_0055DAA8
 00473FDF    call        kernel32.LeaveCriticalSection
 00473FE4    ret
>00473FE5    jmp         @HandleFinally
>00473FEA    jmp         00473FDA
 00473FEC    xor         eax,eax
 00473FEE    pop         edx
 00473FEF    pop         ecx
 00473FF0    pop         ecx
 00473FF1    mov         dword ptr fs:[eax],edx
 00473FF4    push        474009
 00473FF9    lea         eax,[ebp-10]
 00473FFC    call        @LStrClr
 00474001    ret
>00474002    jmp         @HandleFinally
>00474007    jmp         00473FF9
 00474009    mov         al,byte ptr [ebp-9]
 0047400C    pop         edi
 0047400D    pop         esi
 0047400E    pop         ebx
 0047400F    mov         esp,ebp
 00474011    pop         ebp
 00474012    ret
*}
end;

//00474014
procedure sub_00474014;
begin
{*
 00474014    call        @VarNull
 00474019    ret
*}
end;

//0047401C
procedure @VarCmpEQ(const Left:TVarData; const Right:TVarData);
begin
{*
 0047401C    mov         ecx,0E
 00474021    call        VarCompare
 00474026    cmp         al,1
 00474028    ret
*}
end;

Initialization
//004740A4
{*
 004740A4    push        ebp
 004740A5    mov         ebp,esp
 004740A7    xor         eax,eax
 004740A9    push        ebp
 004740AA    push        474145
 004740AF    push        dword ptr fs:[eax]
 004740B2    mov         dword ptr fs:[eax],esp
 004740B5    sub         dword ptr ds:[55DAA0],1
>004740BC    jae         00474137
 004740BE    mov         eax,55DA80;gvar_0055DA80:Variant
 004740C3    call        SetClearVarToEmptyParam
 004740C8    mov         eax,46E674;@DispInvokeError
 004740CD    mov         [0055DA90],eax;gvar_0055DA90
 004740D2    mov         eax,46E1C4;VarInvalidOp
 004740D7    mov         [0055DA94],eax;gvar_0055DA94
 004740DC    mov         edx,46E0D4;VarCastError
 004740E1    mov         dword ptr ds:[55DA98],edx;gvar_0055DA98
 004740E7    mov         [0055DA9C],eax;gvar_0055DA9C
 004740EC    mov         eax,46E974;@VarClr
 004740F1    mov         edx,dword ptr ds:[55B414];^gvar_0053D010
 004740F7    mov         dword ptr [edx],eax
 004740F9    mov         eax,473720
 004740FE    mov         edx,dword ptr ds:[55B110];^gvar_0053D014
 00474104    mov         dword ptr [edx],eax
 00474106    mov         eax,46EC88;@VarCopy
 0047410B    mov         edx,dword ptr ds:[55B4CC];^gvar_0053D018
 00474111    mov         dword ptr [edx],eax
 00474113    mov         eax,471C78;@VarToLStr
 00474118    mov         edx,dword ptr ds:[55B6B4];^gvar_0053D01C
 0047411E    mov         dword ptr [edx],eax
 00474120    mov         eax,4723A0;@VarToWStr
 00474125    mov         edx,dword ptr ds:[55B4FC];^gvar_0053D020
 0047412B    mov         dword ptr [edx],eax
 0047412D    push        55DAA8;gvar_0055DAA8
 00474132    call        kernel32.InitializeCriticalSection
 00474137    xor         eax,eax
 00474139    pop         edx
 0047413A    pop         ecx
 0047413B    pop         ecx
 0047413C    mov         dword ptr fs:[eax],edx
 0047413F    push        47414C
 00474144    ret
>00474145    jmp         @HandleFinally
>0047414A    jmp         00474144
 0047414C    pop         ebp
 0047414D    ret
*}
Finalization
//0047402C
{*
 0047402C    push        ebp
 0047402D    mov         ebp,esp
 0047402F    xor         eax,eax
 00474031    push        ebp
 00474032    push        47409B
 00474037    push        dword ptr fs:[eax]
 0047403A    mov         dword ptr fs:[eax],esp
 0047403D    inc         dword ptr ds:[55DAA0]
>00474043    jne         0047408D
 00474045    call        00473BD0
 0047404A    push        55DAA8;gvar_0055DAA8
 0047404F    call        kernel32.DeleteCriticalSection
 00474054    mov         eax,55DAA4;gvar_0055DAA4:?
 00474059    mov         edx,dword ptr ds:[473BAC];_DynArr_34_02
 0047405F    call        @DynArrayClear
 00474064    mov         eax,540C5C;^'Empty'
 00474069    mov         ecx,15
 0047406E    mov         edx,dword ptr ds:[4010AC];String
 00474074    call        @FinalizeArray
 00474079    mov         eax,540B98
 0047407E    call        @LStrClr
 00474083    mov         eax,55DA80;gvar_0055DA80:Variant
 00474088    call        @VarClr
 0047408D    xor         eax,eax
 0047408F    pop         edx
 00474090    pop         ecx
 00474091    pop         ecx
 00474092    mov         dword ptr fs:[eax],edx
 00474095    push        4740A2
 0047409A    ret
>0047409B    jmp         @HandleFinally
>004740A0    jmp         0047409A
 004740A2    pop         ebp
 004740A3    ret
*}
end.