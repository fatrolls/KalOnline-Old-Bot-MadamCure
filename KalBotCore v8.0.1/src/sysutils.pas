//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit sysutils;

interface

uses
  SysUtils, Classes;

type
  Exception = class(TObject)
  public
    FMessage:String;//f4
    FHelpContext:Integer;//f8
    constructor Create(const Msg:AnsiString);//0046AAB8
    constructor CreateFmt(const Msg:AnsiString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);//0046AB00
    constructor Create;//0046AB90
    constructor CreateResFmt(Ident:Integer; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);//0046ABD8
  end;
  EAbort = class(Exception)
  end;
  EHeapException = class(Exception)
  public
    AllowFree:Boolean;//fC
  end;
  EOutOfMemory = class(EHeapException)
  end;
  EInOutError = class(Exception)
  public
    .ErrorCode:Integer;//fC
  end;
  EExternal = class(Exception)
  public
    ExceptionRecord:PExceptionRecord;//fC
  end;
  EExternalException = class(EExternal)
  end;
  EIntError = class(EExternal)
  end;
  EDivByZero = class(EIntError)
  end;
  ERangeError = class(EIntError)
  end;
  EIntOverflow = class(EIntError)
  end;
  EMathError = class(EExternal)
  end;
  EInvalidOp = class(EMathError)
  end;
  EZeroDivide = class(EMathError)
  end;
  EOverflow = class(EMathError)
  end;
  EUnderflow = class(EMathError)
  end;
  EInvalidPointer = class(EHeapException)
  end;
  EInvalidCast = class(Exception)
  end;
  EConvertError = class(Exception)
  end;
  EAccessViolation = class(EExternal)
  end;
  EPrivilege = class(EExternal)
  end;
  EStackOverflow = class(EExternal)
  end;
  EControlC = class(EExternal)
  end;
  EVariantError = class(Exception)
  end;
  EAssertionFailed = class(Exception)
  end;
  EAbstractError = class(Exception)
  end;
  EIntfCastError = class(Exception)
  end;
  EOSError = class(Exception)
  public
    ErrorCode:DWORD;//fC
  end;
  ESafecallException = class(Exception)
  end;
  _Arr_32_24 = array [1..12] of String;
  _Arr_32_34 = array [1..12] of String;
  _Arr_32_44 = array [1..7] of String;
  _Arr_32_54 = array [1..7] of String;
  TFormatSettings = TFormatSettings = record//size=C0
f8:String;//f8
fC:String;//fC
f10:String;//f10
f14:String;//f14
f18:String;//f18
f1C:String;//f1C
f20:String;//f20
f24:_Arr_32_24;//f24
f54:_Arr_32_34;//f54
f84:_Arr_32_44;//f84
fA0:_Arr_32_54;//fA0
end;;
  _DynArr_32_74 = array of String;
//elSize = 4
//varType equivalent: varStrArg;
  _DynArr_32_84 = array of String;
//elSize = 4
//varType equivalent: varStrArg;
  TThreadLocalCounter = class(TObject)
  public
    FHashTable:array[$0..$F] of PThreadInfo;//f4
  end;
  TMultiReadExclusiveWriteSynchronizer = class(TInterfacedObject)
  public
    FSentinel:Integer;//fC
    FReadSignal:THandle;//f10
    FWriteSignal:THandle;//f14
    FWaitRecycle:Cardinal;//f18
    FWriteRecursionCount:Cardinal;//f1C
    tls:TThreadLocalCounter;//f20
    FWriterID:Cardinal;//f24
    FRevisionLevel:Cardinal;//f28
    constructor Create;//0046C7E4
  end;
  TErrorRec = TErrorRec = record//size=8
f4:String;//f4
end;;
  TExceptRec = TExceptRec = record//size=8
f4:String;//f4
end;;
    procedure DivMod(Dividend:Integer; Divisor:Word; var Result:Word; var Remainder:Word);//0046607C
    procedure sub_00466098(?:TResStringRec);//00466098
    //procedure sub_004660B8(?:TResStringRec; ?:?; ?:?);//004660B8
    //function sub_004660E8(?:?):?;//004660E8
    procedure sub_00466110;//00466110
    //procedure sub_00466154(?:?);//00466154
    //procedure sub_004661A4(?:?; ?:?);//004661A4
    //procedure sub_00466210(?:?; ?:?);//00466210
    function CompareStr(const S1:AnsiString; const S2:AnsiString):Integer;//0046627C
    function CompareMem(P1:Pointer; P2:Pointer; Length:Integer):Boolean;//004662AC
    function CompareText(const S1:AnsiString; const S2:AnsiString):Integer;//004662CC
    function SameText(const S1:AnsiString; const S2:AnsiString):Boolean;//00466320
    //procedure sub_0046638C(?:AnsiString; ?:?);//0046638C
    //function sub_004663D4(?:?; ?:?):?;//004663D4
    //function sub_00466420(?:TImeName; ?:?):?;//00466420
    //function sub_0046646C(?:?; ?:?):?;//0046646C
    //function sub_00466490(?:PChar; ?:?; ?:?):?;//00466490
    //procedure sub_004664C8(?:?; ?:?);//004664C8
    //procedure sub_0046653C(?:PAnsiChar; ?:?; ?:?);//0046653C
    //procedure sub_004666C4(?:?; ?:?; ?:?);//004666C4
    //function sub_00466898(?:TComponentName):?;//00466898
    procedure CvtInt;//00466914
    function IntToStr(Value:Integer):AnsiString;//00466960
    procedure CvtInt64;//00466980
    function IntToStr(Value:Int64):AnsiString;//00466A4C
    function IntToHex(Value:Integer; Digits:Integer):AnsiString;//00466A74
    function IntToHex(Digits:Integer; Value:Int64):AnsiString;//00466A9C
    function StrToInt(const S:AnsiString):Integer;//00466ACC
    //function sub_00466B0C(?:AnsiString; ?:LongWord):?;//00466B0C
    //function sub_00466B3C(?:String; ?:?):?;//00466B3C
    //function sub_00466B68(?:?; ?:?):?;//00466B68
    procedure sub_00466B98;//00466B98
    //function sub_00466C2C(?:?; ?:?; ?:?):?;//00466C2C
    //function sub_00466C7C(?:?; ?:?):?;//00466C7C
    //function sub_00466D84(?:?; ?:?):?;//00466D84
    //function sub_00466DF4(?:?):?;//00466DF4
    //function sub_00466E28(?:?; ?:?):?;//00466E28
    //function sub_00466E48(?:Integer; ?:?; ?:?):?;//00466E48
    //function sub_00466E80(?:Integer; ?:?; ?:?):?;//00466E80
    //function sub_00466EB8(?:Integer; ?:?; ?:?; ?:?):?;//00466EB8
    procedure sub_00466EF4(?:Integer);//00466EF4
    //function sub_00466F08(?:?):?;//00466F08
    //function sub_00466F78(?:TFileName):?;//00466F78
    //function sub_00466F98(?:?):?;//00466F98
    //function sub_00466FC0(?:AnsiString):?;//00466FC0
    //function sub_0046700C(?:AnsiString; ?:?):?;//0046700C
    //procedure sub_0046707C(?:?; ?:?);//0046707C
    //procedure sub_00467100(?:?; ?:?);//00467100
    //procedure sub_00467160(?:TFileName; ?:?);//00467160
    //function sub_004671A4(?:?; ?:?; ?:?):?;//004671A4
    function StrLen(const Str:PChar):Cardinal;//00467224
    function StrEnd(const Str:PChar):PChar;//0046723C
    //function sub_00467250(?:?; ?:?; ?:?):?;//00467250
    function StrCopy(Dest:PChar; const Source:PChar):PChar;//0046727C
    function StrLCopy(Dest:PChar; const Source:PChar; MaxLen:Cardinal):PChar;//004672A4
    //function sub_004672D8(?:?; ?:AnsiString):?;//004672D8
    //function sub_0046730C(?:?; ?:?; ?:?):?;//0046730C
    function StrComp(const Str1:PChar; const Str2:PChar):Integer;//0046733C
    function StrIComp(const Str1:PChar; const Str2:PChar):Integer;//00467360
    function StrLIComp(const Str1:PChar; const Str2:PChar; MaxLen:Cardinal):Integer;//004673A0
    //function sub_004673E4(?:PChar; ?:?):?;//004673E4
    function StrPos(const Str1:PChar; const Str2:PChar):PChar;//0046741C
    //procedure sub_00467470(?:?; ?:AnsiString);//00467470
    //function sub_0046748C(?:?):?;//0046748C
    //function sub_004674B8(?:PChar):?;//004674B8
    //function sub_004674E0(?:PChar):?;//004674E0
    //procedure sub_00467520(?:?);//00467520
    procedure FormatError(ErrorCode:Integer; Format:PChar; FmtLen:Cardinal);//00467544
    procedure FormatVarToStr(var S:AnsiString; const V:TVarData);//004675AC
    procedure FormatClearStr(var S:AnsiString);//004675E4
    function FormatBuf(var Buffer:void ; BufLen:Cardinal; const Format:void ; FmtLen:Cardinal; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):Cardinal;//004675F8
    //function sub_00467970(?:?; ?:?; ?:?; ?:?):?;//00467970
    //function sub_004679CC(?:?; ?:?; ?:?; ?:?; ?:?):?;//004679CC
    function Format(const Format:AnsiString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):AnsiString;//00467A24
    //procedure sub_00467A4C(?:?; ?:?; ?:?; ?:?);//00467A4C
    procedure PutExponent;//00467B28
    function FloatToText(BufferArg:PChar; const Value:void ; ValueType:TFloatValue; Format:TFloatFormat; Precision:Integer; Digits:Integer):Integer;//00467B6C
    procedure FloatToDecimal(var Result:TFloatRec; const Value:void ; ValueType:TFloatValue; Precision:Integer; Decimals:Integer);//00467E40
    function TextToFloat(Buffer:PChar; var Value:void ; ValueType:TFloatValue):Boolean;//0046806C
    function TextToFloat(Buffer:PChar; var Value:void ; ValueType:TFloatValue; const FormatSettings:TFormatSettings):Boolean;//00468180
    //procedure sub_00468298(?:?; ?:?);//00468298
    //function sub_004682F8(?:?):?;//004682F8
    //function sub_00468338(?:?; ?:?):?;//00468338
    //function sub_00468360(?:String; ?:?; ?:?):?;//00468360
    //function sub_00468390(?:?; ?:?):?;//00468390
    //function sub_00468400(?:?; ?:?):?;//00468400
    function DateTimeToTimeStamp(DateTime:TDateTime):TTimeStamp;//00468428
    //function sub_0046846C(?:?; ?:?; ?:?; ?:?; ?:?):?;//0046846C
    //procedure sub_004684EC(?:?; ?:?; ?:?; ?:?);//004684EC
    procedure DecodeTime(var Hour:Word; var Min:Word; var Sec:Word; const DateTime:TDateTime; var MSec:Word);//00468530
    //function sub_00468590(?:Word):?;//00468590
    //function sub_004685D4(?:Integer; ?:?; ?:?; ?:?):?;//004685D4
    //function sub_004686D8(?:?; ?:?; ?:?):?;//004686D8
    //function sub_00468714(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00468714
    procedure DecodeDate(var Year:Word; var Month:Word; var Day:Word; const DateTime:TDateTime);//00468890
    //function sub_004688C0(?:?; ?:?):?;//004688C0
    procedure sub_004688F0;//004688F0
    //function sub_00468938:?;//00468938
    //procedure sub_00468958(?:void ; ?:Longint; ?:?);//00468958
    //procedure sub_004689B8(?:?; ?:?);//004689B8
    //procedure sub_004689DC(?:?; ?:?; ?:?);//004689DC
    //procedure sub_00468A2C(?:?);//00468A2C
    procedure GetDate;//00468A64
    procedure GetTime;//00468A9C
    //procedure sub_00468ADC(?:?; ?:?; ?:?);//00468ADC
    //procedure sub_00468C60(?:?; ?:?; ?:?);//00468C60
    //procedure sub_00468D78(?:?; ?:?);//00468D78
    //procedure sub_00469580(?:?; ?:AnsiString);//00469580
    //procedure sub_004695EC(?:?; ?:?; ?:?);//004695EC
    //procedure sub_0046960C(?:?; ?:?; ?:?);//0046960C
    //procedure sub_0046962C(?:?; ?:?; ?:?);//0046962C
    //procedure sub_00469648(?:?; ?:?);//00469648
    //function sub_00469688(?:?; ?:?; ?:?; ?:?):?;//00469688
    //function sub_0046973C(?:?; ?:?; ?:AnsiString):?;//0046973C
    //function sub_004697D4(?:?; ?:?; ?:?):?;//004697D4
    //function sub_00469824(?:?):?;//00469824
    //procedure sub_0046988C(?:?; ?:?);//0046988C
    //function sub_004698F4(?:?):?;//004698F4
    //function sub_00469958(?:?; ?:?):?;//00469958
    //function sub_004699C0(?:?; ?:?; ?:?):?;//004699C0
    //function sub_00469D54(?:?; ?:?; ?:?):?;//00469D54
    //function sub_00469F70(?:?):?;//00469F70
    //function sub_00469FA8(?:?; ?:?):?;//00469FA8
    //function sub_00469FEC(?:?):?;//00469FEC
    //function sub_0046A024(?:?; ?:?):?;//0046A024
    //function sub_0046A068(?:?):?;//0046A068
    //function sub_0046A0A0(?:?; ?:?):?;//0046A0A0
    function SysErrorMessage(ErrorCode:Integer):AnsiString;//0046A134
    //procedure sub_0046A198(?:Integer; ?:?; ?:AnsiString; ?:?);//0046A198
    //function sub_0046A1F4(?:Integer; ?:?; ?:?):?;//0046A1F4
    //procedure sub_0046A230(?:?; ?:?; ?:?; ?:?; ?:?);//0046A230
    procedure sub_0046A274;//0046A274
    procedure sub_0046A480;//0046A480
    //procedure sub_0046A544(?:?; ?:?);//0046A544
    //function sub_0046A7E8(?:?):?;//0046A7E8
    //function sub_0046A7F8(?:?; ?:?; ?:?; ?:?):?;//0046A7F8
    //procedure sub_0046A9B0(?:?; ?:?);//0046A9B0
    //function sub_0046AA8C(?:?):?;//0046AA8C
    procedure sub_0046AA94;//0046AA94
    //function sub_0046ACB8:?;//0046ACB8
    procedure sub_0046AD5C;//0046AD5C
    //function sub_0046ADCC(?:?; ?:?; ?:?):?;//0046ADCC
    procedure RaiseAssertException(const E:Exception; const ErrorAddr:Pointer; const ErrorStack:Pointer);//0046AE84
    //procedure sub_0046AE94(?:?; ?:?; ?:?; ?:?);//0046AE94
    procedure sub_0046AECC;//0046AECC
    //function sub_0046AEE8(?:?):?;//0046AEE8
    //function sub_0046AF9C(?:?):?;//0046AF9C
    //procedure sub_0046B28C(?:?; ?:?);//0046B28C
    procedure sub_0046B2B4;//0046B2B4
    procedure sub_0046B33C;//0046B33C
    procedure sub_0046B3C0;//0046B3C0
    //function sub_0046B440(?:?; ?:?):?;//0046B440
    //function sub_0046B47C(?:AnsiString):?;//0046B47C
    procedure sub_0046B56C;//0046B56C
    //function sub_0046B578(?:PChar; ?:?):?;//0046B578
    //function sub_0046B624(?:String; ?:Longint):?;//0046B624
    //function sub_0046B658(?:PChar; ?:?):?;//0046B658
    //function sub_0046B688(?:?; ?:Longint):?;//0046B688
    //function sub_0046B6C4(?:?; ?:Longint):?;//0046B6C4
    //procedure sub_0046B748(?:AnsiString; ?:Longint; ?:?; ?:?);//0046B748
    //function sub_0046B800(?:?; ?:?):?;//0046B800
    //function sub_0046B878(?:AnsiString; ?:?):?;//0046B878
    //function sub_0046B8EC(?:?):?;//0046B8EC
    //function sub_0046B920(?:?):?;//0046B920
    //function sub_0046B93C(?:?; ?:?):?;//0046B93C
    //function sub_0046B98C(?:?; ?:?):?;//0046B98C
    //function sub_0046B9E0(?:AnsiString; ?:AnsiString):?;//0046B9E0
    //procedure sub_0046BA2C(?:?; ?:?);//0046BA2C
    //function sub_0046BB00(?:PChar; ?:?):?;//0046BB00
    //function sub_0046BBD8(?:?; ?:?):?;//0046BBD8
    //function sub_0046BC28(?:Char; ?:?):?;//0046BC28
    //function sub_0046BC80(?:?):?;//0046BC80
    //procedure sub_0046BCF8(?:?);//0046BCF8
    //function sub_0046BD78:?;//0046BD78
    procedure sub_0046BD9C;//0046BD9C
    procedure sub_0046BF48;//0046BF48
    procedure Sleep; stdcall;//0046C438
    procedure RaiseLastOSError;//0046C440
    //function sub_0046C4EC(?:LongBool):?;//0046C4EC
    //function sub_0046C510:?;//0046C510
    procedure sub_0046C54C;//0046C54C
    procedure sub_0046C580;//0046C580
    function InterlockedIncrement(var I:Integer):Integer;//0046C5E4
    function InterlockedDecrement(var I:Integer):Integer;//0046C5F0
    //function sub_0046C5FC(?:Integer; ?:?):?;//0046C5FC
    //function sub_0046C604(?:?; ?:?):?;//0046C604
    //function sub_0046C688(?:?):?;//0046C688
    //procedure sub_0046C6AC(?:?; ?:?);//0046C6AC
    //procedure sub_0046C75C(?:?; ?:?);//0046C75C
    //function sub_0046C780(?:?):?;//0046C780
    //procedure sub_0046C8D0(?:?);//0046C8D0
    //procedure sub_0046C8E8(?:?);//0046C8E8
    //procedure sub_0046C900(?:?);//0046C900
    //procedure sub_0046C918(?:?);//0046C918
    //procedure sub_0046C938(?:?);//0046C938
    //function sub_0046C958(?:?):?;//0046C958
    //procedure sub_0046CA34(?:?);//0046CA34
    //procedure sub_0046CAA0(?:?);//0046CAA0
    //procedure sub_0046CB28(?:?);//0046CB28
    procedure FreeAndNil(var Obj:void );//0046CBAC
    //function sub_0046CBD0(?:IAutoComplete; ?:?; ?:?):?;//0046CBD0
    //function sub_0046CC0C(?:TCustomVariantType; ?:?; ?:?):?;//0046CC0C
    //function sub_0046CCB4(?:AnsiString; ?:?):?;//0046CCB4
    procedure _NF__C58;//0046CD3C
    procedure _NF__C59;//0046CE28

implementation

//0046607C
procedure DivMod(Dividend:Integer; Divisor:Word; var Result:Word; var Remainder:Word);
begin
{*
 0046607C    push        ebp
 0046607D    mov         ebp,esp
 0046607F    push        ebx
 00466080    mov         ebx,edx
 00466082    mov         edx,eax
 00466084    shr         edx,10
 00466087    div         ax,bx
 0046608A    mov         ebx,dword ptr [ebp+8]
 0046608D    mov         word ptr [ecx],ax
 00466090    mov         word ptr [ebx],dx
 00466093    pop         ebx
 00466094    pop         ebp
 00466095    ret         4
*}
end;

//00466098
procedure sub_00466098(?:TResStringRec);
begin
{*
 00466098    push        ebp
 00466099    mov         ebp,esp
 0046609B    push        ecx
 0046609C    mov         dword ptr [ebp-4],eax
 0046609F    mov         ecx,dword ptr [ebp-4]
 004660A2    mov         dl,1
 004660A4    mov         eax,[00465A0C];EConvertError
 004660A9    call        Exception.Create;EConvertError.Create
 004660AE    call        @RaiseExcept
 004660B3    pop         ecx
 004660B4    pop         ebp
 004660B5    ret
*}
end;

//004660B8
{*procedure sub_004660B8(?:TResStringRec; ?:?; ?:?);
begin
 004660B8    push        ebp
 004660B9    mov         ebp,esp
 004660BB    add         esp,0FFFFFFF4
 004660BE    mov         dword ptr [ebp-0C],ecx
 004660C1    mov         dword ptr [ebp-8],edx
 004660C4    mov         dword ptr [ebp-4],eax
 004660C7    mov         eax,dword ptr [ebp-8]
 004660CA    push        eax
 004660CB    mov         eax,dword ptr [ebp-0C]
 004660CE    push        eax
 004660CF    mov         ecx,dword ptr [ebp-4]
 004660D2    mov         dl,1
 004660D4    mov         eax,[00465A0C];EConvertError
 004660D9    call        Exception.CreateResFmt;EConvertError.Create
 004660DE    call        @RaiseExcept
 004660E3    mov         esp,ebp
 004660E5    pop         ebp
 004660E6    ret
end;*}

//004660E8
{*function sub_004660E8(?:?):?;
begin
 004660E8    push        ebp
 004660E9    mov         ebp,esp
 004660EB    add         esp,0FFFFFFF8
 004660EE    mov         dword ptr [ebp-4],eax
 004660F1    mov         eax,dword ptr [ebp-4]
 004660F4    call        @GetMem
 004660F9    mov         dword ptr [ebp-8],eax
 004660FC    mov         eax,dword ptr [ebp-8]
 004660FF    xor         ecx,ecx
 00466101    mov         edx,dword ptr [ebp-4]
 00466104    call        @FillChar
 00466109    mov         eax,dword ptr [ebp-8]
 0046610C    pop         ecx
 0046610D    pop         ecx
 0046610E    pop         ebp
 0046610F    ret
end;*}

//00466110
procedure sub_00466110;
begin
{*
 00466110    push        ebp
 00466111    mov         ebp,esp
 00466113    add         esp,0FFFFFFF8
 00466116    mov         eax,[005409A4];0x0 gvar_005409A4:Pointer
 0046611B    mov         dword ptr [ebp-4],eax
 0046611E    mov         eax,dword ptr [ebp-4]
 00466121    mov         eax,dword ptr [eax]
 00466123    mov         [005409A4],eax;gvar_005409A4:Pointer
 00466128    mov         eax,[0055B11C];^gvar_0055C044
 0046612D    mov         edx,dword ptr [ebp-4]
 00466130    mov         edx,dword ptr [edx+4]
 00466133    mov         dword ptr [eax],edx
 00466135    mov         eax,dword ptr [ebp-4]
 00466138    mov         eax,dword ptr [eax+8]
 0046613B    mov         dword ptr [ebp-8],eax
 0046613E    mov         edx,0C
 00466143    mov         eax,dword ptr [ebp-4]
 00466146    call        @FreeMem
 0046614B    call        dword ptr [ebp-8]
 0046614E    pop         ecx
 0046614F    pop         ecx
 00466150    pop         ebp
 00466151    ret
*}
end;

//00466154
{*procedure sub_00466154(?:?);
begin
 00466154    push        ebp
 00466155    mov         ebp,esp
 00466157    add         esp,0FFFFFFF8
 0046615A    mov         dword ptr [ebp-4],eax
 0046615D    mov         eax,0C
 00466162    call        @GetMem
 00466167    mov         dword ptr [ebp-8],eax
 0046616A    mov         eax,[005409A4];0x0 gvar_005409A4:Pointer
 0046616F    mov         edx,dword ptr [ebp-8]
 00466172    mov         dword ptr [edx],eax
 00466174    mov         eax,[0055B11C];^gvar_0055C044
 00466179    mov         eax,dword ptr [eax]
 0046617B    mov         edx,dword ptr [ebp-8]
 0046617E    mov         dword ptr [edx+4],eax
 00466181    mov         eax,dword ptr [ebp-4]
 00466184    mov         edx,dword ptr [ebp-8]
 00466187    mov         dword ptr [edx+8],eax
 0046618A    mov         eax,dword ptr [ebp-8]
 0046618D    mov         [005409A4],eax;gvar_005409A4:Pointer
 00466192    mov         eax,[0055B11C];^gvar_0055C044
 00466197    mov         dword ptr [eax],466110;sub_00466110
 0046619D    pop         ecx
 0046619E    pop         ecx
 0046619F    pop         ebp
 004661A0    ret
end;*}

//004661A4
{*procedure sub_004661A4(?:?; ?:?);
begin
 004661A4    push        ebp
 004661A5    mov         ebp,esp
 004661A7    add         esp,0FFFFFFE8
 004661AA    mov         dword ptr [ebp-8],edx
 004661AD    mov         dword ptr [ebp-4],eax
 004661B0    mov         eax,dword ptr [ebp-4]
 004661B3    call        @DynArrayLength
 004661B8    mov         dword ptr [ebp-10],eax
 004661BB    mov         eax,dword ptr [ebp-8]
 004661BE    mov         edx,dword ptr [ebp-10]
 004661C1    call        @LStrSetLength
 004661C6    mov         eax,dword ptr [ebp-4]
 004661C9    mov         dword ptr [ebp-14],eax
 004661CC    mov         eax,dword ptr [ebp-8]
 004661CF    mov         eax,dword ptr [eax]
 004661D1    mov         dword ptr [ebp-18],eax
 004661D4    cmp         dword ptr [ebp-10],0
>004661D8    je          00466209
 004661DA    mov         eax,dword ptr [ebp-14]
 004661DD    mov         al,byte ptr [eax]
 004661DF    mov         byte ptr [ebp-9],al
 004661E2    cmp         byte ptr [ebp-9],61
>004661E6    jb          004661F2
 004661E8    cmp         byte ptr [ebp-9],7A
>004661EC    ja          004661F2
 004661EE    sub         byte ptr [ebp-9],20
 004661F2    mov         eax,dword ptr [ebp-18]
 004661F5    mov         dl,byte ptr [ebp-9]
 004661F8    mov         byte ptr [eax],dl
 004661FA    inc         dword ptr [ebp-14]
 004661FD    inc         dword ptr [ebp-18]
 00466200    dec         dword ptr [ebp-10]
 00466203    cmp         dword ptr [ebp-10],0
>00466207    jne         004661DA
 00466209    mov         esp,ebp
 0046620B    pop         ebp
 0046620C    ret
end;*}

//00466210
{*procedure sub_00466210(?:?; ?:?);
begin
 00466210    push        ebp
 00466211    mov         ebp,esp
 00466213    add         esp,0FFFFFFE8
 00466216    mov         dword ptr [ebp-8],edx
 00466219    mov         dword ptr [ebp-4],eax
 0046621C    mov         eax,dword ptr [ebp-4]
 0046621F    call        @DynArrayLength
 00466224    mov         dword ptr [ebp-10],eax
 00466227    mov         eax,dword ptr [ebp-8]
 0046622A    mov         edx,dword ptr [ebp-10]
 0046622D    call        @LStrSetLength
 00466232    mov         eax,dword ptr [ebp-4]
 00466235    mov         dword ptr [ebp-14],eax
 00466238    mov         eax,dword ptr [ebp-8]
 0046623B    mov         eax,dword ptr [eax]
 0046623D    mov         dword ptr [ebp-18],eax
 00466240    cmp         dword ptr [ebp-10],0
>00466244    je          00466275
 00466246    mov         eax,dword ptr [ebp-14]
 00466249    mov         al,byte ptr [eax]
 0046624B    mov         byte ptr [ebp-9],al
 0046624E    cmp         byte ptr [ebp-9],41
>00466252    jb          0046625E
 00466254    cmp         byte ptr [ebp-9],5A
>00466258    ja          0046625E
 0046625A    add         byte ptr [ebp-9],20
 0046625E    mov         eax,dword ptr [ebp-18]
 00466261    mov         dl,byte ptr [ebp-9]
 00466264    mov         byte ptr [eax],dl
 00466266    inc         dword ptr [ebp-14]
 00466269    inc         dword ptr [ebp-18]
 0046626C    dec         dword ptr [ebp-10]
 0046626F    cmp         dword ptr [ebp-10],0
>00466273    jne         00466246
 00466275    mov         esp,ebp
 00466277    pop         ebp
 00466278    ret
end;*}

//0046627C
function CompareStr(const S1:AnsiString; const S2:AnsiString):Integer;
begin
{*
 0046627C    push        esi
 0046627D    push        edi
 0046627E    mov         esi,eax
 00466280    mov         edi,edx
 00466282    or          eax,eax
>00466284    je          00466289
 00466286    mov         eax,dword ptr [eax-4]
 00466289    or          edx,edx
>0046628B    je          00466290
 0046628D    mov         edx,dword ptr [edx-4]
 00466290    mov         ecx,eax
 00466292    cmp         ecx,edx
>00466294    jbe         00466298
 00466296    mov         ecx,edx
 00466298    cmp         ecx,ecx
 0046629A    repe cmps   byte ptr [esi],byte ptr [edi]
>0046629C    je          004662A6
 0046629E    movzx       eax,byte ptr [esi-1]
 004662A2    movzx       edx,byte ptr [edi-1]
 004662A6    sub         eax,edx
 004662A8    pop         edi
 004662A9    pop         esi
 004662AA    ret
*}
end;

//004662AC
function CompareMem(P1:Pointer; P2:Pointer; Length:Integer):Boolean;
begin
{*
 004662AC    push        esi
 004662AD    push        edi
 004662AE    mov         esi,eax
 004662B0    mov         edi,edx
 004662B2    mov         edx,ecx
 004662B4    xor         eax,eax
 004662B6    and         edx,3
 004662B9    sar         ecx,2
>004662BC    js          004662C8
 004662BE    repe cmps   dword ptr [esi],dword ptr [edi]
>004662C0    jne         004662C9
 004662C2    mov         ecx,edx
 004662C4    repe cmps   byte ptr [esi],byte ptr [edi]
>004662C6    jne         004662C9
 004662C8    inc         eax
 004662C9    pop         edi
 004662CA    pop         esi
 004662CB    ret
*}
end;

//004662CC
function CompareText(const S1:AnsiString; const S2:AnsiString):Integer;
begin
{*
 004662CC    push        esi
 004662CD    push        edi
 004662CE    push        ebx
 004662CF    mov         esi,eax
 004662D1    mov         edi,edx
 004662D3    or          eax,eax
>004662D5    je          004662DA
 004662D7    mov         eax,dword ptr [eax-4]
 004662DA    or          edx,edx
>004662DC    je          004662E1
 004662DE    mov         edx,dword ptr [edx-4]
 004662E1    mov         ecx,eax
 004662E3    cmp         ecx,edx
>004662E5    jbe         004662E9
 004662E7    mov         ecx,edx
 004662E9    cmp         ecx,ecx
 004662EB    repe cmps   byte ptr [esi],byte ptr [edi]
>004662ED    je          00466319
 004662EF    mov         bl,byte ptr [esi-1]
 004662F2    cmp         bl,61
>004662F5    jb          004662FF
 004662F7    cmp         bl,7A
>004662FA    ja          004662FF
 004662FC    sub         bl,20
 004662FF    mov         bh,byte ptr [edi-1]
 00466302    cmp         bh,61
>00466305    jb          0046630F
 00466307    cmp         bh,7A
>0046630A    ja          0046630F
 0046630C    sub         bh,20
 0046630F    cmp         bl,bh
>00466311    je          004662EB
 00466313    movzx       eax,bl
 00466316    movzx       edx,bh
 00466319    sub         eax,edx
 0046631B    pop         ebx
 0046631C    pop         edi
 0046631D    pop         esi
 0046631E    ret
*}
end;

//00466320
function SameText(const S1:AnsiString; const S2:AnsiString):Boolean;
begin
{*
 00466320    cmp         eax,edx
>00466322    je          0046633D
 00466324    or          eax,eax
>00466326    je          0046633F
 00466328    or          edx,edx
>0046632A    je          00466340
 0046632C    mov         ecx,dword ptr [eax-4]
 0046632F    cmp         ecx,dword ptr [edx-4]
>00466332    jne         00466340
 00466334    call        CompareText
 00466339    test        eax,eax
>0046633B    jne         00466340
 0046633D    mov         al,1
 0046633F    ret
 00466340    xor         eax,eax
 00466342    ret
*}
end;

//0046638C
{*procedure sub_0046638C(?:AnsiString; ?:?);
begin
 0046638C    push        ebp
 0046638D    mov         ebp,esp
 0046638F    add         esp,0FFFFFFF4
 00466392    mov         dword ptr [ebp-8],edx
 00466395    mov         dword ptr [ebp-4],eax
 00466398    mov         eax,dword ptr [ebp-4]
 0046639B    call        @DynArrayLength
 004663A0    mov         dword ptr [ebp-0C],eax
 004663A3    mov         eax,dword ptr [ebp-4]
 004663A6    call        @LStrToPChar
 004663AB    mov         edx,eax
 004663AD    mov         eax,dword ptr [ebp-8]
 004663B0    mov         ecx,dword ptr [ebp-0C]
 004663B3    call        @LStrFromPCharLen
 004663B8    cmp         dword ptr [ebp-0C],0
>004663BC    jle         004663CD
 004663BE    mov         eax,dword ptr [ebp-0C]
 004663C1    push        eax
 004663C2    mov         eax,dword ptr [ebp-8]
 004663C5    mov         eax,dword ptr [eax]
 004663C7    push        eax
 004663C8    call        user32.CharLowerBuffA
 004663CD    mov         esp,ebp
 004663CF    pop         ebp
 004663D0    ret
end;*}

//004663D4
{*function sub_004663D4(?:?; ?:?):?;
begin
 004663D4    push        ebp
 004663D5    mov         ebp,esp
 004663D7    add         esp,0FFFFFFF4
 004663DA    mov         dword ptr [ebp-8],edx
 004663DD    mov         dword ptr [ebp-4],eax
 004663E0    mov         eax,dword ptr [ebp-8]
 004663E3    call        @DynArrayLength
 004663E8    push        eax
 004663E9    mov         eax,dword ptr [ebp-8]
 004663EC    call        @LStrToPChar
 004663F1    push        eax
 004663F2    mov         eax,dword ptr [ebp-4]
 004663F5    call        @DynArrayLength
 004663FA    push        eax
 004663FB    mov         eax,dword ptr [ebp-4]
 004663FE    call        @LStrToPChar
 00466403    push        eax
 00466404    push        0
 00466406    push        400
 0046640B    call        kernel32.CompareStringA
 00466410    sub         eax,2
 00466413    mov         dword ptr [ebp-0C],eax
 00466416    mov         eax,dword ptr [ebp-0C]
 00466419    mov         esp,ebp
 0046641B    pop         ebp
 0046641C    ret
end;*}

//00466420
{*function sub_00466420(?:TImeName; ?:?):?;
begin
 00466420    push        ebp
 00466421    mov         ebp,esp
 00466423    add         esp,0FFFFFFF4
 00466426    mov         dword ptr [ebp-8],edx
 00466429    mov         dword ptr [ebp-4],eax
 0046642C    mov         eax,dword ptr [ebp-8]
 0046642F    call        @DynArrayLength
 00466434    push        eax
 00466435    mov         eax,dword ptr [ebp-8]
 00466438    call        @LStrToPChar
 0046643D    push        eax
 0046643E    mov         eax,dword ptr [ebp-4]
 00466441    call        @DynArrayLength
 00466446    push        eax
 00466447    mov         eax,dword ptr [ebp-4]
 0046644A    call        @LStrToPChar
 0046644F    push        eax
 00466450    push        1
 00466452    push        400
 00466457    call        kernel32.CompareStringA
 0046645C    sub         eax,2
 0046645F    mov         dword ptr [ebp-0C],eax
 00466462    mov         eax,dword ptr [ebp-0C]
 00466465    mov         esp,ebp
 00466467    pop         ebp
 00466468    ret
end;*}

//0046646C
{*function sub_0046646C(?:?; ?:?):?;
begin
 0046646C    push        ebp
 0046646D    mov         ebp,esp
 0046646F    add         esp,0FFFFFFF4
 00466472    mov         dword ptr [ebp-8],edx
 00466475    mov         dword ptr [ebp-4],eax
 00466478    mov         edx,dword ptr [ebp-8]
 0046647B    mov         eax,dword ptr [ebp-4]
 0046647E    call        00466420
 00466483    test        eax,eax
 00466485    sete        byte ptr [ebp-9]
 00466489    mov         al,byte ptr [ebp-9]
 0046648C    mov         esp,ebp
 0046648E    pop         ebp
 0046648F    ret
end;*}

//00466490
{*function sub_00466490(?:PChar; ?:?; ?:?):?;
begin
 00466490    push        ebp
 00466491    mov         ebp,esp
 00466493    add         esp,0FFFFFFF0
 00466496    mov         dword ptr [ebp-0C],ecx
 00466499    mov         dword ptr [ebp-8],edx
 0046649C    mov         dword ptr [ebp-4],eax
 0046649F    mov         eax,dword ptr [ebp-0C]
 004664A2    push        eax
 004664A3    mov         eax,dword ptr [ebp-8]
 004664A6    push        eax
 004664A7    mov         eax,dword ptr [ebp-0C]
 004664AA    push        eax
 004664AB    mov         eax,dword ptr [ebp-4]
 004664AE    push        eax
 004664AF    push        1
 004664B1    push        400
 004664B6    call        kernel32.CompareStringA
 004664BB    sub         eax,2
 004664BE    mov         dword ptr [ebp-10],eax
 004664C1    mov         eax,dword ptr [ebp-10]
 004664C4    mov         esp,ebp
 004664C6    pop         ebp
 004664C7    ret
end;*}

//004664C8
{*procedure sub_004664C8(?:?; ?:?);
begin
 004664C8    push        ebp
 004664C9    mov         ebp,esp
 004664CB    add         esp,0FFFFFFF0
 004664CE    mov         dword ptr [ebp-8],edx
 004664D1    mov         dword ptr [ebp-4],eax
 004664D4    mov         eax,dword ptr [ebp-4]
 004664D7    call        @DynArrayLength
 004664DC    mov         dword ptr [ebp-10],eax
 004664DF    mov         dword ptr [ebp-0C],1
>004664E6    jmp         004664EB
 004664E8    inc         dword ptr [ebp-0C]
 004664EB    mov         eax,dword ptr [ebp-0C]
 004664EE    cmp         eax,dword ptr [ebp-10]
>004664F1    jg          00466500
 004664F3    mov         eax,dword ptr [ebp-4]
 004664F6    mov         edx,dword ptr [ebp-0C]
 004664F9    cmp         byte ptr [eax+edx-1],20
>004664FE    jbe         004664E8
 00466500    mov         eax,dword ptr [ebp-0C]
 00466503    cmp         eax,dword ptr [ebp-10]
>00466506    jle         00466515
 00466508    mov         eax,dword ptr [ebp-8]
 0046650B    call        @LStrClr
>00466510    jmp         00466538
 00466512    dec         dword ptr [ebp-10]
 00466515    mov         eax,dword ptr [ebp-4]
 00466518    mov         edx,dword ptr [ebp-10]
 0046651B    cmp         byte ptr [eax+edx-1],20
>00466520    jbe         00466512
 00466522    mov         eax,dword ptr [ebp-8]
 00466525    push        eax
 00466526    mov         ecx,dword ptr [ebp-10]
 00466529    sub         ecx,dword ptr [ebp-0C]
 0046652C    inc         ecx
 0046652D    mov         edx,dword ptr [ebp-0C]
 00466530    mov         eax,dword ptr [ebp-4]
 00466533    call        @LStrCopy
 00466538    mov         esp,ebp
 0046653A    pop         ebp
 0046653B    ret
end;*}

//0046653C
{*procedure sub_0046653C(?:PAnsiChar; ?:?; ?:?);
begin
 0046653C    push        ebp
 0046653D    mov         ebp,esp
 0046653F    add         esp,0FFFFFFE8
 00466542    mov         dword ptr [ebp-0C],ecx
 00466545    mov         byte ptr [ebp-5],dl
 00466548    mov         dword ptr [ebp-4],eax
 0046654B    mov         eax,dword ptr [ebp-0C]
 0046654E    call        @LStrClr
 00466553    mov         eax,dword ptr [ebp-4]
 00466556    cmp         dword ptr [eax],0
>00466559    je          004666BE
 0046655F    mov         eax,dword ptr [ebp-4]
 00466562    mov         eax,dword ptr [eax]
 00466564    mov         al,byte ptr [eax]
 00466566    cmp         al,byte ptr [ebp-5]
>00466569    jne         004666BE
 0046656F    mov         eax,dword ptr [ebp-4]
 00466572    inc         dword ptr [eax]
 00466574    mov         dword ptr [ebp-18],1
 0046657B    mov         eax,dword ptr [ebp-4]
 0046657E    mov         eax,dword ptr [eax]
 00466580    mov         dword ptr [ebp-10],eax
 00466583    mov         eax,dword ptr [ebp-4]
 00466586    mov         eax,dword ptr [eax]
 00466588    mov         dl,byte ptr [ebp-5]
 0046658B    call        0046BC28
 00466590    mov         edx,dword ptr [ebp-4]
 00466593    mov         dword ptr [edx],eax
>00466595    jmp         004665C2
 00466597    mov         eax,dword ptr [ebp-4]
 0046659A    inc         dword ptr [eax]
 0046659C    mov         eax,dword ptr [ebp-4]
 0046659F    mov         eax,dword ptr [eax]
 004665A1    mov         al,byte ptr [eax]
 004665A3    cmp         al,byte ptr [ebp-5]
>004665A6    jne         004665CA
 004665A8    mov         eax,dword ptr [ebp-4]
 004665AB    inc         dword ptr [eax]
 004665AD    inc         dword ptr [ebp-18]
 004665B0    mov         eax,dword ptr [ebp-4]
 004665B3    mov         eax,dword ptr [eax]
 004665B5    mov         dl,byte ptr [ebp-5]
 004665B8    call        0046BC28
 004665BD    mov         edx,dword ptr [ebp-4]
 004665C0    mov         dword ptr [edx],eax
 004665C2    mov         eax,dword ptr [ebp-4]
 004665C5    cmp         dword ptr [eax],0
>004665C8    jne         00466597
 004665CA    mov         eax,dword ptr [ebp-4]
 004665CD    cmp         dword ptr [eax],0
>004665D0    jne         004665DF
 004665D2    mov         eax,dword ptr [ebp-10]
 004665D5    call        StrEnd
 004665DA    mov         edx,dword ptr [ebp-4]
 004665DD    mov         dword ptr [edx],eax
 004665DF    mov         eax,dword ptr [ebp-4]
 004665E2    mov         eax,dword ptr [eax]
 004665E4    sub         eax,dword ptr [ebp-10]
 004665E7    dec         eax
>004665E8    jle         004666BE
 004665EE    cmp         dword ptr [ebp-18],1
>004665F2    jne         0046660D
 004665F4    mov         ecx,dword ptr [ebp-4]
 004665F7    mov         ecx,dword ptr [ecx]
 004665F9    sub         ecx,dword ptr [ebp-10]
 004665FC    dec         ecx
 004665FD    mov         eax,dword ptr [ebp-0C]
 00466600    mov         edx,dword ptr [ebp-10]
 00466603    call        @LStrFromPCharLen
>00466608    jmp         004666BE
 0046660D    mov         edx,dword ptr [ebp-4]
 00466610    mov         edx,dword ptr [edx]
 00466612    sub         edx,dword ptr [ebp-10]
 00466615    sub         edx,dword ptr [ebp-18]
 00466618    mov         eax,dword ptr [ebp-0C]
 0046661B    call        @LStrSetLength
 00466620    mov         eax,dword ptr [ebp-0C]
 00466623    mov         eax,dword ptr [eax]
 00466625    call        @LStrToPChar
 0046662A    mov         dword ptr [ebp-14],eax
 0046662D    mov         dl,byte ptr [ebp-5]
 00466630    mov         eax,dword ptr [ebp-10]
 00466633    call        0046BC28
 00466638    mov         edx,dword ptr [ebp-4]
 0046663B    mov         dword ptr [edx],eax
>0046663D    jmp         0046668D
 0046663F    mov         eax,dword ptr [ebp-4]
 00466642    inc         dword ptr [eax]
 00466644    mov         eax,dword ptr [ebp-4]
 00466647    mov         eax,dword ptr [eax]
 00466649    mov         al,byte ptr [eax]
 0046664B    cmp         al,byte ptr [ebp-5]
>0046664E    jne         00466695
 00466650    mov         ecx,dword ptr [ebp-4]
 00466653    mov         ecx,dword ptr [ecx]
 00466655    sub         ecx,dword ptr [ebp-10]
 00466658    mov         edx,dword ptr [ebp-14]
 0046665B    mov         eax,dword ptr [ebp-10]
 0046665E    call        Move
 00466663    mov         eax,dword ptr [ebp-4]
 00466666    mov         eax,dword ptr [eax]
 00466668    sub         eax,dword ptr [ebp-10]
 0046666B    add         dword ptr [ebp-14],eax
 0046666E    mov         eax,dword ptr [ebp-4]
 00466671    inc         dword ptr [eax]
 00466673    mov         eax,dword ptr [ebp-4]
 00466676    mov         eax,dword ptr [eax]
 00466678    mov         dword ptr [ebp-10],eax
 0046667B    mov         eax,dword ptr [ebp-4]
 0046667E    mov         eax,dword ptr [eax]
 00466680    mov         dl,byte ptr [ebp-5]
 00466683    call        0046BC28
 00466688    mov         edx,dword ptr [ebp-4]
 0046668B    mov         dword ptr [edx],eax
 0046668D    mov         eax,dword ptr [ebp-4]
 00466690    cmp         dword ptr [eax],0
>00466693    jne         0046663F
 00466695    mov         eax,dword ptr [ebp-4]
 00466698    cmp         dword ptr [eax],0
>0046669B    jne         004666AA
 0046669D    mov         eax,dword ptr [ebp-10]
 004666A0    call        StrEnd
 004666A5    mov         edx,dword ptr [ebp-4]
 004666A8    mov         dword ptr [edx],eax
 004666AA    mov         ecx,dword ptr [ebp-4]
 004666AD    mov         ecx,dword ptr [ecx]
 004666AF    sub         ecx,dword ptr [ebp-10]
 004666B2    dec         ecx
 004666B3    mov         edx,dword ptr [ebp-14]
 004666B6    mov         eax,dword ptr [ebp-10]
 004666B9    call        Move
 004666BE    mov         esp,ebp
 004666C0    pop         ebp
 004666C1    ret
end;*}

//004666C4
{*procedure sub_004666C4(?:?; ?:?; ?:?);
begin
 004666C4    push        ebp
 004666C5    mov         ebp,esp
 004666C7    add         esp,0FFFFFFDC
 004666CA    push        ebx
 004666CB    xor         ebx,ebx
 004666CD    mov         dword ptr [ebp-24],ebx
 004666D0    mov         dword ptr [ebp-0C],ecx
 004666D3    mov         byte ptr [ebp-5],dl
 004666D6    mov         dword ptr [ebp-4],eax
 004666D9    xor         eax,eax
 004666DB    push        ebp
 004666DC    push        466889
 004666E1    push        dword ptr fs:[eax]
 004666E4    mov         dword ptr fs:[eax],esp
 004666E7    mov         eax,dword ptr [ebp-4]
 004666EA    mov         dword ptr [ebp-10],eax
 004666ED    mov         eax,dword ptr [ebp-4]
 004666F0    call        @DynArrayLength
 004666F5    add         eax,dword ptr [ebp-10]
 004666F8    mov         dword ptr [ebp-14],eax
 004666FB    mov         eax,dword ptr [ebp-4]
 004666FE    call        @DynArrayLength
 00466703    mov         dword ptr [ebp-1C],eax
 00466706    mov         eax,dword ptr [ebp-10]
 00466709    cmp         eax,dword ptr [ebp-14]
>0046670C    jae         0046677A
 0046670E    mov         eax,dword ptr [ebp-10]
 00466711    mov         al,byte ptr [eax]
 00466713    sub         al,0A
>00466715    je          0046671D
 00466717    sub         al,3
>00466719    je          00466728
>0046671B    jmp         0046674F
 0046671D    cmp         byte ptr [ebp-5],1
>00466721    jne         0046676F
 00466723    inc         dword ptr [ebp-1C]
>00466726    jmp         0046676F
 00466728    cmp         byte ptr [ebp-5],1
>0046672C    jne         00466741
 0046672E    mov         eax,dword ptr [ebp-10]
 00466731    cmp         byte ptr [eax+1],0A
>00466735    jne         0046673C
 00466737    inc         dword ptr [ebp-10]
>0046673A    jmp         0046676F
 0046673C    inc         dword ptr [ebp-1C]
>0046673F    jmp         0046676F
 00466741    mov         eax,dword ptr [ebp-10]
 00466744    cmp         byte ptr [eax+1],0A
>00466748    jne         0046676F
 0046674A    dec         dword ptr [ebp-1C]
>0046674D    jmp         0046676F
 0046674F    mov         eax,dword ptr [ebp-10]
 00466752    mov         al,byte ptr [eax]
 00466754    and         eax,0FF
 00466759    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>00466760    jae         0046676F
 00466762    mov         eax,dword ptr [ebp-10]
 00466765    call        0046B920
 0046676A    mov         dword ptr [ebp-10],eax
>0046676D    jmp         00466772
 0046676F    inc         dword ptr [ebp-10]
 00466772    mov         eax,dword ptr [ebp-10]
 00466775    cmp         eax,dword ptr [ebp-14]
>00466778    jb          0046670E
 0046677A    lea         eax,[ebp-24]
 0046677D    mov         edx,dword ptr [ebp-10]
 00466780    call        @LStrFromPChar
 00466785    mov         eax,dword ptr [ebp-24]
 00466788    call        @DynArrayLength
 0046678D    cmp         eax,dword ptr [ebp-1C]
>00466790    jne         004667A2
 00466792    mov         eax,dword ptr [ebp-0C]
 00466795    mov         edx,dword ptr [ebp-4]
 00466798    call        @LStrAsg
>0046679D    jmp         00466873
 004667A2    mov         eax,dword ptr [ebp-4]
 004667A5    mov         dword ptr [ebp-10],eax
 004667A8    mov         eax,dword ptr [ebp-0C]
 004667AB    mov         ecx,dword ptr [ebp-1C]
 004667AE    xor         edx,edx
 004667B0    call        @LStrFromPCharLen
 004667B5    mov         eax,dword ptr [ebp-0C]
 004667B8    mov         eax,dword ptr [eax]
 004667BA    mov         dword ptr [ebp-18],eax
 004667BD    mov         eax,dword ptr [ebp-10]
 004667C0    cmp         eax,dword ptr [ebp-14]
>004667C3    jae         00466873
 004667C9    mov         eax,dword ptr [ebp-10]
 004667CC    mov         al,byte ptr [eax]
 004667CE    sub         al,0A
>004667D0    je          004667D8
 004667D2    sub         al,3
>004667D4    je          004667F5
>004667D6    jmp         0046681D
 004667D8    cmp         byte ptr [ebp-5],1
>004667DC    jne         004667E7
 004667DE    mov         eax,dword ptr [ebp-18]
 004667E1    mov         byte ptr [eax],0D
 004667E4    inc         dword ptr [ebp-18]
 004667E7    mov         eax,dword ptr [ebp-18]
 004667EA    mov         byte ptr [eax],0A
 004667ED    inc         dword ptr [ebp-18]
 004667F0    inc         dword ptr [ebp-10]
>004667F3    jmp         00466867
 004667F5    cmp         byte ptr [ebp-5],1
>004667F9    jne         00466804
 004667FB    mov         eax,dword ptr [ebp-18]
 004667FE    mov         byte ptr [eax],0D
 00466801    inc         dword ptr [ebp-18]
 00466804    mov         eax,dword ptr [ebp-18]
 00466807    mov         byte ptr [eax],0A
 0046680A    inc         dword ptr [ebp-18]
 0046680D    inc         dword ptr [ebp-10]
 00466810    mov         eax,dword ptr [ebp-10]
 00466813    cmp         byte ptr [eax],0A
>00466816    jne         00466867
 00466818    inc         dword ptr [ebp-10]
>0046681B    jmp         00466867
 0046681D    mov         eax,dword ptr [ebp-10]
 00466820    mov         al,byte ptr [eax]
 00466822    and         eax,0FF
 00466827    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046682E    jae         00466857
 00466830    mov         eax,dword ptr [ebp-10]
 00466833    call        0046B8EC
 00466838    mov         dword ptr [ebp-20],eax
 0046683B    mov         edx,dword ptr [ebp-18]
 0046683E    mov         eax,dword ptr [ebp-10]
 00466841    mov         ecx,dword ptr [ebp-20]
 00466844    call        Move
 00466849    mov         eax,dword ptr [ebp-20]
 0046684C    add         dword ptr [ebp-18],eax
 0046684F    mov         eax,dword ptr [ebp-20]
 00466852    add         dword ptr [ebp-10],eax
>00466855    jmp         00466867
 00466857    mov         eax,dword ptr [ebp-18]
 0046685A    mov         edx,dword ptr [ebp-10]
 0046685D    mov         dl,byte ptr [edx]
 0046685F    mov         byte ptr [eax],dl
 00466861    inc         dword ptr [ebp-18]
 00466864    inc         dword ptr [ebp-10]
 00466867    mov         eax,dword ptr [ebp-10]
 0046686A    cmp         eax,dword ptr [ebp-14]
>0046686D    jb          004667C9
 00466873    xor         eax,eax
 00466875    pop         edx
 00466876    pop         ecx
 00466877    pop         ecx
 00466878    mov         dword ptr fs:[eax],edx
 0046687B    push        466890
 00466880    lea         eax,[ebp-24]
 00466883    call        @LStrClr
 00466888    ret
>00466889    jmp         @HandleFinally
>0046688E    jmp         00466880
 00466890    pop         ebx
 00466891    mov         esp,ebp
 00466893    pop         ebp
 00466894    ret
end;*}

//00466898
{*function sub_00466898(?:TComponentName):?;
begin
 00466898    push        ebp
 00466899    mov         ebp,esp
 0046689B    add         esp,0FFFFFFF0
 0046689E    mov         dword ptr [ebp-4],eax
 004668A1    mov         byte ptr [ebp-5],0
 004668A5    mov         eax,dword ptr [ebp-4]
 004668A8    call        @DynArrayLength
 004668AD    test        eax,eax
>004668AF    je          0046690A
 004668B1    mov         eax,dword ptr [ebp-4]
 004668B4    mov         al,byte ptr [eax]
 004668B6    add         al,0BF
 004668B8    sub         al,1A
>004668BA    jb          004668C6
 004668BC    sub         al,4
>004668BE    je          004668C6
 004668C0    add         al,0FE
 004668C2    sub         al,1A
>004668C4    jae         0046690A
 004668C6    mov         eax,dword ptr [ebp-4]
 004668C9    call        @DynArrayLength
 004668CE    sub         eax,2
>004668D1    jl          00466906
 004668D3    inc         eax
 004668D4    mov         dword ptr [ebp-10],eax
 004668D7    mov         dword ptr [ebp-0C],2
 004668DE    mov         eax,dword ptr [ebp-4]
 004668E1    mov         edx,dword ptr [ebp-0C]
 004668E4    mov         al,byte ptr [eax+edx-1]
 004668E8    add         al,0D0
 004668EA    sub         al,0A
>004668EC    jb          004668FE
 004668EE    add         al,0F9
 004668F0    sub         al,1A
>004668F2    jb          004668FE
 004668F4    sub         al,4
>004668F6    je          004668FE
 004668F8    add         al,0FE
 004668FA    sub         al,1A
>004668FC    jae         0046690A
 004668FE    inc         dword ptr [ebp-0C]
 00466901    dec         dword ptr [ebp-10]
>00466904    jne         004668DE
 00466906    mov         byte ptr [ebp-5],1
 0046690A    mov         al,byte ptr [ebp-5]
 0046690D    mov         esp,ebp
 0046690F    pop         ebp
 00466910    ret
end;*}

//00466914
procedure CvtInt;
begin
{*
 00466914    or          cl,cl
>00466916    jne         0046692F
 00466918    or          eax,eax
>0046691A    jns         0046692A
 0046691C    neg         eax
 0046691E    call        0046692A
 00466923    mov         al,2D
 00466925    inc         ecx
 00466926    dec         esi
 00466927    mov         byte ptr [esi],al
 00466929    ret
 0046692A    mov         ecx,0A
 0046692F    push        edx
 00466930    push        esi
 00466931    xor         edx,edx
 00466933    div         eax,ecx
 00466935    dec         esi
 00466936    add         dl,30
 00466939    cmp         dl,3A
>0046693C    jb          00466941
 0046693E    add         dl,7
 00466941    mov         byte ptr [esi],dl
 00466943    or          eax,eax
>00466945    jne         00466931
 00466947    pop         ecx
 00466948    pop         edx
 00466949    sub         ecx,esi
 0046694B    sub         edx,ecx
>0046694D    jbe         0046695F
 0046694F    add         ecx,edx
 00466951    mov         al,30
 00466953    sub         esi,edx
>00466955    jmp         0046695A
 00466957    mov         byte ptr [edx+esi],al
 0046695A    dec         edx
>0046695B    jne         00466957
 0046695D    mov         byte ptr [esi],al
 0046695F    ret
*}
end;

//00466960
function IntToStr(Value:Integer):AnsiString;
begin
{*
 00466960    push        esi
 00466961    mov         esi,esp
 00466963    sub         esp,10
 00466966    xor         ecx,ecx
 00466968    push        edx
 00466969    xor         edx,edx
 0046696B    call        CvtInt
 00466970    mov         edx,esi
 00466972    pop         eax
 00466973    call        @LStrFromPCharLen
 00466978    add         esp,10
 0046697B    pop         esi
 0046697C    ret
*}
end;

//00466980
procedure CvtInt64;
begin
{*
 00466980    or          cl,cl
>00466982    jne         004669B4
 00466984    mov         ecx,0A
 00466989    test        dword ptr [eax+4],80000000
>00466990    je          004669B4
 00466992    push        dword ptr [eax+4]
 00466995    push        dword ptr [eax]
 00466997    mov         eax,esp
 00466999    neg         dword ptr [esp]
 0046699C    adc         dword ptr [esp+4],0
 004669A1    neg         dword ptr [esp+4]
 004669A5    call        004669B4
 004669AA    mov         byte ptr [esi-1],2D
 004669AE    dec         esi
 004669AF    inc         ecx
 004669B0    add         esp,8
 004669B3    ret
*}
end;

//00466A4C
function IntToStr(Value:Int64):AnsiString;
begin
{*
 00466A4C    push        ebp
 00466A4D    mov         ebp,esp
 00466A4F    push        esi
 00466A50    mov         esi,esp
 00466A52    sub         esp,20
 00466A55    xor         ecx,ecx
 00466A57    push        eax
 00466A58    xor         edx,edx
 00466A5A    lea         eax,[ebp+8]
 00466A5D    call        CvtInt64
 00466A62    mov         edx,esi
 00466A64    pop         eax
 00466A65    call        @LStrFromPCharLen
 00466A6A    add         esp,20
 00466A6D    pop         esi
 00466A6E    pop         ebp
 00466A6F    ret         8
*}
end;

//00466A74
function IntToHex(Value:Integer; Digits:Integer):AnsiString;
begin
{*
 00466A74    cmp         edx,20
>00466A77    jbe         00466A7B
 00466A79    xor         edx,edx
 00466A7B    push        esi
 00466A7C    mov         esi,esp
 00466A7E    sub         esp,20
 00466A81    push        ecx
 00466A82    mov         ecx,10
 00466A87    call        CvtInt
 00466A8C    mov         edx,esi
 00466A8E    pop         eax
 00466A8F    call        @LStrFromPCharLen
 00466A94    add         esp,20
 00466A97    pop         esi
 00466A98    ret
*}
end;

//00466A9C
function IntToHex(Digits:Integer; Value:Int64):AnsiString;
begin
{*
 00466A9C    push        ebp
 00466A9D    mov         ebp,esp
 00466A9F    cmp         eax,20
>00466AA2    jle         00466AA6
 00466AA4    xor         eax,eax
 00466AA6    push        esi
 00466AA7    mov         esi,esp
 00466AA9    sub         esp,20
 00466AAC    mov         ecx,10
 00466AB1    push        edx
 00466AB2    mov         edx,eax
 00466AB4    lea         eax,[ebp+8]
 00466AB7    call        CvtInt64
 00466ABC    mov         edx,esi
 00466ABE    pop         eax
 00466ABF    call        @LStrFromPCharLen
 00466AC4    add         esp,20
 00466AC7    pop         esi
 00466AC8    pop         ebp
 00466AC9    ret         8
*}
end;

//00466ACC
function StrToInt(const S:AnsiString):Integer;
begin
{*
 00466ACC    push        ebp
 00466ACD    mov         ebp,esp
 00466ACF    add         esp,0FFFFFFEC
 00466AD2    mov         dword ptr [ebp-4],eax
 00466AD5    lea         edx,[ebp-0C]
 00466AD8    mov         eax,dword ptr [ebp-4]
 00466ADB    call        @ValLong
 00466AE0    mov         dword ptr [ebp-8],eax
 00466AE3    cmp         dword ptr [ebp-0C],0
>00466AE7    je          00466B02
 00466AE9    mov         eax,dword ptr [ebp-4]
 00466AEC    mov         dword ptr [ebp-14],eax
 00466AEF    mov         byte ptr [ebp-10],0B
 00466AF3    lea         edx,[ebp-14]
 00466AF6    mov         eax,[0055B2E0];^SInvalidInteger:TResStringRec
 00466AFB    xor         ecx,ecx
 00466AFD    call        004660B8
 00466B02    mov         eax,dword ptr [ebp-8]
 00466B05    mov         esp,ebp
 00466B07    pop         ebp
 00466B08    ret
*}
end;

//00466B0C
{*function sub_00466B0C(?:AnsiString; ?:LongWord):?;
begin
 00466B0C    push        ebp
 00466B0D    mov         ebp,esp
 00466B0F    add         esp,0FFFFFFF0
 00466B12    mov         dword ptr [ebp-8],edx
 00466B15    mov         dword ptr [ebp-4],eax
 00466B18    lea         edx,[ebp-10]
 00466B1B    mov         eax,dword ptr [ebp-4]
 00466B1E    call        @ValLong
 00466B23    mov         dword ptr [ebp-0C],eax
 00466B26    cmp         dword ptr [ebp-10],0
>00466B2A    je          00466B32
 00466B2C    mov         eax,dword ptr [ebp-8]
 00466B2F    mov         dword ptr [ebp-0C],eax
 00466B32    mov         eax,dword ptr [ebp-0C]
 00466B35    mov         esp,ebp
 00466B37    pop         ebp
 00466B38    ret
end;*}

//00466B3C
{*function sub_00466B3C(?:String; ?:?):?;
begin
 00466B3C    push        ebp
 00466B3D    mov         ebp,esp
 00466B3F    add         esp,0FFFFFFF0
 00466B42    mov         dword ptr [ebp-8],edx
 00466B45    mov         dword ptr [ebp-4],eax
 00466B48    lea         edx,[ebp-10]
 00466B4B    mov         eax,dword ptr [ebp-4]
 00466B4E    call        @ValLong
 00466B53    mov         edx,dword ptr [ebp-8]
 00466B56    mov         dword ptr [edx],eax
 00466B58    cmp         dword ptr [ebp-10],0
 00466B5C    sete        byte ptr [ebp-9]
 00466B60    mov         al,byte ptr [ebp-9]
 00466B63    mov         esp,ebp
 00466B65    pop         ebp
 00466B66    ret
end;*}

//00466B68
{*function sub_00466B68(?:?; ?:?):?;
begin
 00466B68    push        ebp
 00466B69    mov         ebp,esp
 00466B6B    add         esp,0FFFFFFF0
 00466B6E    mov         dword ptr [ebp-8],edx
 00466B71    mov         dword ptr [ebp-4],eax
 00466B74    lea         edx,[ebp-10]
 00466B77    mov         eax,dword ptr [ebp-4]
 00466B7A    call        @ValInt64
 00466B7F    mov         ecx,dword ptr [ebp-8]
 00466B82    mov         dword ptr [ecx],eax
 00466B84    mov         dword ptr [ecx+4],edx
 00466B87    cmp         dword ptr [ebp-10],0
 00466B8B    sete        byte ptr [ebp-9]
 00466B8F    mov         al,byte ptr [ebp-9]
 00466B92    mov         esp,ebp
 00466B94    pop         ebp
 00466B95    ret
end;*}

//00466B98
procedure sub_00466B98;
begin
{*
 00466B98    push        ebp
 00466B99    mov         ebp,esp
 00466B9B    mov         eax,[0055DA0C];gvar_0055DA0C:?
 00466BA0    call        @LStrLen
 00466BA5    test        eax,eax
>00466BA7    jne         00466BD2
 00466BA9    push        1
 00466BAB    mov         eax,55DA0C;gvar_0055DA0C:?
 00466BB0    mov         ecx,1
 00466BB5    mov         edx,dword ptr ds:[465ED8];_DynArr_32_74
 00466BBB    call        @DynArraySetLength
 00466BC0    add         esp,4
 00466BC3    mov         eax,[0055DA0C];gvar_0055DA0C:?
 00466BC8    mov         edx,466C14;'True'
 00466BCD    call        @LStrAsg
 00466BD2    mov         eax,[0055DA10];gvar_0055DA10:?
 00466BD7    call        @LStrLen
 00466BDC    test        eax,eax
>00466BDE    jne         00466C09
 00466BE0    push        1
 00466BE2    mov         eax,55DA10;gvar_0055DA10:?
 00466BE7    mov         ecx,1
 00466BEC    mov         edx,dword ptr ds:[465EFC];_DynArr_32_84
 00466BF2    call        @DynArraySetLength
 00466BF7    add         esp,4
 00466BFA    mov         eax,[0055DA10];gvar_0055DA10:?
 00466BFF    mov         edx,466C24;'False'
 00466C04    call        @LStrAsg
 00466C09    pop         ebp
 00466C0A    ret
*}
end;

//00466C2C
{*function sub_00466C2C(?:?; ?:?; ?:?):?;
begin
 00466C2C    push        ebp
 00466C2D    mov         ebp,esp
 00466C2F    add         esp,0FFFFFFEC
 00466C32    mov         dword ptr [ebp-8],edx
 00466C35    mov         dword ptr [ebp-4],eax
 00466C38    mov         byte ptr [ebp-9],0
 00466C3C    mov         eax,dword ptr [ebp-8]
 00466C3F    test        eax,eax
>00466C41    jl          00466C74
 00466C43    inc         eax
 00466C44    mov         dword ptr [ebp-14],eax
 00466C47    mov         dword ptr [ebp-10],0
 00466C4E    mov         eax,dword ptr [ebp-4]
 00466C51    mov         edx,dword ptr [ebp-10]
 00466C54    mov         edx,dword ptr [eax+edx*4]
 00466C57    mov         eax,dword ptr [ebp+8]
 00466C5A    mov         eax,dword ptr [eax-4]
 00466C5D    call        0046646C
 00466C62    test        al,al
>00466C64    je          00466C6C
 00466C66    mov         byte ptr [ebp-9],1
>00466C6A    jmp         00466C74
 00466C6C    inc         dword ptr [ebp-10]
 00466C6F    dec         dword ptr [ebp-14]
>00466C72    jne         00466C4E
 00466C74    mov         al,byte ptr [ebp-9]
 00466C77    mov         esp,ebp
 00466C79    pop         ebp
 00466C7A    ret
end;*}

//00466C7C
{*function sub_00466C7C(?:?; ?:?):?;
begin
 00466C7C    push        ebp
 00466C7D    mov         ebp,esp
 00466C7F    add         esp,0FFFFFFE8
 00466C82    mov         dword ptr [ebp-8],edx
 00466C85    mov         dword ptr [ebp-4],eax
 00466C88    lea         edx,[ebp-18]
 00466C8B    mov         eax,dword ptr [ebp-4]
 00466C8E    call        00468338
 00466C93    mov         byte ptr [ebp-9],al
 00466C96    cmp         byte ptr [ebp-9],0
>00466C9A    je          00466CB0
 00466C9C    fld         tbyte ptr [ebp-18]
 00466C9F    fcomp       dword ptr ds:[466D0C];0:Single
 00466CA5    fnstsw      al
 00466CA7    sahf
 00466CA8    mov         eax,dword ptr [ebp-8]
 00466CAB    setne       byte ptr [eax]
>00466CAE    jmp         00466D05
 00466CB0    call        00466B98
 00466CB5    push        ebp
 00466CB6    mov         eax,[0055DA0C];gvar_0055DA0C:?
 00466CBB    call        00405CE8
 00466CC0    mov         edx,eax
 00466CC2    mov         eax,[0055DA0C];gvar_0055DA0C:?
 00466CC7    call        00466C2C
 00466CCC    pop         ecx
 00466CCD    mov         byte ptr [ebp-9],al
 00466CD0    cmp         byte ptr [ebp-9],0
>00466CD4    je          00466CDE
 00466CD6    mov         eax,dword ptr [ebp-8]
 00466CD9    mov         byte ptr [eax],1
>00466CDC    jmp         00466D05
 00466CDE    push        ebp
 00466CDF    mov         eax,[0055DA10];gvar_0055DA10:?
 00466CE4    call        00405CE8
 00466CE9    mov         edx,eax
 00466CEB    mov         eax,[0055DA10];gvar_0055DA10:?
 00466CF0    call        00466C2C
 00466CF5    pop         ecx
 00466CF6    mov         byte ptr [ebp-9],al
 00466CF9    cmp         byte ptr [ebp-9],0
>00466CFD    je          00466D05
 00466CFF    mov         eax,dword ptr [ebp-8]
 00466D02    mov         byte ptr [eax],0
 00466D05    mov         al,byte ptr [ebp-9]
 00466D08    mov         esp,ebp
 00466D0A    pop         ebp
 00466D0B    ret
end;*}

//00466D84
{*function sub_00466D84(?:?; ?:?):?;
begin
 00466D84    push        ebp
 00466D85    mov         ebp,esp
 00466D87    add         esp,0FFFFFFF4
 00466D8A    mov         dword ptr [ebp-8],edx
 00466D8D    mov         dword ptr [ebp-4],eax
 00466D90    mov         dword ptr [ebp-0C],0FFFFFFFF
 00466D97    mov         eax,dword ptr [ebp-8]
 00466D9A    and         eax,3
 00466D9D    cmp         eax,2
>00466DA0    ja          00466DEC
 00466DA2    mov         eax,dword ptr [ebp-8]
 00466DA5    and         eax,0F0
 00466DAA    cmp         eax,40
>00466DAD    ja          00466DEC
 00466DAF    push        0
 00466DB1    push        80
 00466DB6    push        3
 00466DB8    push        0
 00466DBA    mov         eax,dword ptr [ebp-8]
 00466DBD    and         eax,0F0
 00466DC2    shr         eax,4
 00466DC5    mov         eax,dword ptr [eax*4+5409BC]
 00466DCC    push        eax
 00466DCD    mov         eax,dword ptr [ebp-8]
 00466DD0    and         eax,3
 00466DD3    mov         eax,dword ptr [eax*4+5409B0]
 00466DDA    push        eax
 00466DDB    mov         eax,dword ptr [ebp-4]
 00466DDE    call        @LStrToPChar
 00466DE3    push        eax
 00466DE4    call        kernel32.CreateFileA
 00466DE9    mov         dword ptr [ebp-0C],eax
 00466DEC    mov         eax,dword ptr [ebp-0C]
 00466DEF    mov         esp,ebp
 00466DF1    pop         ebp
 00466DF2    ret
end;*}

//00466DF4
{*function sub_00466DF4(?:?):?;
begin
 00466DF4    push        ebp
 00466DF5    mov         ebp,esp
 00466DF7    add         esp,0FFFFFFF8
 00466DFA    mov         dword ptr [ebp-4],eax
 00466DFD    push        0
 00466DFF    push        80
 00466E04    push        2
 00466E06    push        0
 00466E08    push        0
 00466E0A    push        0C0000000
 00466E0F    mov         eax,dword ptr [ebp-4]
 00466E12    call        @LStrToPChar
 00466E17    push        eax
 00466E18    call        kernel32.CreateFileA
 00466E1D    mov         dword ptr [ebp-8],eax
 00466E20    mov         eax,dword ptr [ebp-8]
 00466E23    pop         ecx
 00466E24    pop         ecx
 00466E25    pop         ebp
 00466E26    ret
end;*}

//00466E28
{*function sub_00466E28(?:?; ?:?):?;
begin
 00466E28    push        ebp
 00466E29    mov         ebp,esp
 00466E2B    add         esp,0FFFFFFF4
 00466E2E    mov         dword ptr [ebp-0C],edx
 00466E31    mov         dword ptr [ebp-4],eax
 00466E34    mov         eax,dword ptr [ebp-4]
 00466E37    call        00466DF4
 00466E3C    mov         dword ptr [ebp-8],eax
 00466E3F    mov         eax,dword ptr [ebp-8]
 00466E42    mov         esp,ebp
 00466E44    pop         ebp
 00466E45    ret
end;*}

//00466E48
{*function sub_00466E48(?:Integer; ?:?; ?:?):?;
begin
 00466E48    push        ebp
 00466E49    mov         ebp,esp
 00466E4B    add         esp,0FFFFFFF0
 00466E4E    mov         dword ptr [ebp-0C],ecx
 00466E51    mov         dword ptr [ebp-8],edx
 00466E54    mov         dword ptr [ebp-4],eax
 00466E57    push        0
 00466E59    lea         eax,[ebp-10]
 00466E5C    push        eax
 00466E5D    mov         eax,dword ptr [ebp-0C]
 00466E60    push        eax
 00466E61    mov         eax,dword ptr [ebp-8]
 00466E64    push        eax
 00466E65    mov         eax,dword ptr [ebp-4]
 00466E68    push        eax
 00466E69    call        kernel32.ReadFile
 00466E6E    test        eax,eax
>00466E70    jne         00466E79
 00466E72    mov         dword ptr [ebp-10],0FFFFFFFF
 00466E79    mov         eax,dword ptr [ebp-10]
 00466E7C    mov         esp,ebp
 00466E7E    pop         ebp
 00466E7F    ret
end;*}

//00466E80
{*function sub_00466E80(?:Integer; ?:?; ?:?):?;
begin
 00466E80    push        ebp
 00466E81    mov         ebp,esp
 00466E83    add         esp,0FFFFFFF0
 00466E86    mov         dword ptr [ebp-0C],ecx
 00466E89    mov         dword ptr [ebp-8],edx
 00466E8C    mov         dword ptr [ebp-4],eax
 00466E8F    push        0
 00466E91    lea         eax,[ebp-10]
 00466E94    push        eax
 00466E95    mov         eax,dword ptr [ebp-0C]
 00466E98    push        eax
 00466E99    mov         eax,dword ptr [ebp-8]
 00466E9C    push        eax
 00466E9D    mov         eax,dword ptr [ebp-4]
 00466EA0    push        eax
 00466EA1    call        kernel32.WriteFile
 00466EA6    test        eax,eax
>00466EA8    jne         00466EB1
 00466EAA    mov         dword ptr [ebp-10],0FFFFFFFF
 00466EB1    mov         eax,dword ptr [ebp-10]
 00466EB4    mov         esp,ebp
 00466EB6    pop         ebp
 00466EB7    ret
end;*}

//00466EB8
{*function sub_00466EB8(?:Integer; ?:?; ?:?; ?:?):?;
begin
 00466EB8    push        ebp
 00466EB9    mov         ebp,esp
 00466EBB    add         esp,0FFFFFFF0
 00466EBE    mov         dword ptr [ebp-10],edx
 00466EC1    mov         dword ptr [ebp-0C],eax
 00466EC4    mov         eax,dword ptr [ebp+8]
 00466EC7    mov         dword ptr [ebp-8],eax
 00466ECA    mov         eax,dword ptr [ebp+0C]
 00466ECD    mov         dword ptr [ebp-4],eax
 00466ED0    mov         eax,dword ptr [ebp-10]
 00466ED3    push        eax
 00466ED4    lea         eax,[ebp-4]
 00466ED7    push        eax
 00466ED8    mov         eax,dword ptr [ebp-8]
 00466EDB    push        eax
 00466EDC    mov         eax,dword ptr [ebp-0C]
 00466EDF    push        eax
 00466EE0    call        kernel32.SetFilePointer
 00466EE5    mov         dword ptr [ebp-8],eax
 00466EE8    mov         eax,dword ptr [ebp-8]
 00466EEB    mov         edx,dword ptr [ebp-4]
 00466EEE    mov         esp,ebp
 00466EF0    pop         ebp
 00466EF1    ret         8
end;*}

//00466EF4
procedure sub_00466EF4(?:Integer);
begin
{*
 00466EF4    push        ebp
 00466EF5    mov         ebp,esp
 00466EF7    push        ecx
 00466EF8    mov         dword ptr [ebp-4],eax
 00466EFB    mov         eax,dword ptr [ebp-4]
 00466EFE    push        eax
 00466EFF    call        kernel32.CloseHandle
 00466F04    pop         ecx
 00466F05    pop         ebp
 00466F06    ret
*}
end;

//00466F08
{*function sub_00466F08(?:?):?;
begin
 00466F08    push        ebp
 00466F09    mov         ebp,esp
 00466F0B    add         esp,0FFFFFEAC
 00466F11    mov         dword ptr [ebp-8],eax
 00466F14    lea         eax,[ebp-154]
 00466F1A    push        eax
 00466F1B    mov         eax,dword ptr [ebp-8]
 00466F1E    call        @LStrToPChar
 00466F23    push        eax
 00466F24    call        kernel32.FindFirstFileA
 00466F29    mov         dword ptr [ebp-0C],eax
 00466F2C    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00466F30    je          00466F69
 00466F32    mov         eax,dword ptr [ebp-0C]
 00466F35    push        eax
 00466F36    call        kernel32.FindClose
 00466F3B    test        byte ptr [ebp-154],10
>00466F42    jne         00466F69
 00466F44    lea         eax,[ebp-14]
 00466F47    push        eax
 00466F48    lea         eax,[ebp-140]
 00466F4E    push        eax
 00466F4F    call        kernel32.FileTimeToLocalFileTime
 00466F54    lea         eax,[ebp-4]
 00466F57    push        eax
 00466F58    lea         eax,[ebp-2]
 00466F5B    push        eax
 00466F5C    lea         eax,[ebp-14]
 00466F5F    push        eax
 00466F60    call        kernel32.FileTimeToDosDateTime
 00466F65    test        eax,eax
>00466F67    jne         00466F70
 00466F69    mov         dword ptr [ebp-4],0FFFFFFFF
 00466F70    mov         eax,dword ptr [ebp-4]
 00466F73    mov         esp,ebp
 00466F75    pop         ebp
 00466F76    ret
end;*}

//00466F78
{*function sub_00466F78(?:TFileName):?;
begin
 00466F78    push        ebp
 00466F79    mov         ebp,esp
 00466F7B    add         esp,0FFFFFFF8
 00466F7E    mov         dword ptr [ebp-4],eax
 00466F81    mov         eax,dword ptr [ebp-4]
 00466F84    call        00466F08
 00466F89    inc         eax
 00466F8A    setne       byte ptr [ebp-5]
 00466F8E    mov         al,byte ptr [ebp-5]
 00466F91    pop         ecx
 00466F92    pop         ecx
 00466F93    pop         ebp
 00466F94    ret
end;*}

//00466F98
{*function sub_00466F98(?:?):?;
begin
 00466F98    push        ebp
 00466F99    mov         ebp,esp
 00466F9B    add         esp,0FFFFFFF8
 00466F9E    mov         dword ptr [ebp-4],eax
 00466FA1    mov         eax,dword ptr [ebp-4]
 00466FA4    call        @LStrToPChar
 00466FA9    push        eax
 00466FAA    call        kernel32.DeleteFileA
 00466FAF    cmp         eax,1
 00466FB2    sbb         eax,eax
 00466FB4    inc         eax
 00466FB5    mov         byte ptr [ebp-5],al
 00466FB8    mov         al,byte ptr [ebp-5]
 00466FBB    pop         ecx
 00466FBC    pop         ecx
 00466FBD    pop         ebp
 00466FBE    ret
end;*}

//00466FC0
{*function sub_00466FC0(?:AnsiString):?;
begin
 00466FC0    push        ebp
 00466FC1    mov         ebp,esp
 00466FC3    add         esp,0FFFFFFF4
 00466FC6    mov         dword ptr [ebp-4],eax
 00466FC9    mov         eax,dword ptr [ebp-4]
 00466FCC    call        @DynArrayLength
 00466FD1    mov         dword ptr [ebp-0C],eax
 00466FD4    cmp         dword ptr [ebp-0C],0
>00466FD8    je          00466FFD
>00466FDA    jmp         00466FDF
 00466FDC    dec         dword ptr [ebp-0C]
 00466FDF    mov         edx,dword ptr [ebp-0C]
 00466FE2    mov         eax,dword ptr [ebp-4]
 00466FE5    call        0046B624
 00466FEA    cmp         al,2
>00466FEC    je          00466FDC
 00466FEE    mov         eax,dword ptr [ebp-0C]
 00466FF1    mov         edx,dword ptr [ebp-4]
 00466FF4    lea         eax,[edx+eax-1]
 00466FF8    mov         dword ptr [ebp-8],eax
>00466FFB    jmp         00467002
 00466FFD    xor         eax,eax
 00466FFF    mov         dword ptr [ebp-8],eax
 00467002    mov         eax,dword ptr [ebp-8]
 00467005    mov         esp,ebp
 00467007    pop         ebp
 00467008    ret
end;*}

//0046700C
{*function sub_0046700C(?:AnsiString; ?:?):?;
begin
 0046700C    push        ebp
 0046700D    mov         ebp,esp
 0046700F    add         esp,0FFFFFFF0
 00467012    mov         dword ptr [ebp-8],edx
 00467015    mov         dword ptr [ebp-4],eax
 00467018    mov         eax,dword ptr [ebp-8]
 0046701B    call        @DynArrayLength
 00467020    mov         dword ptr [ebp-0C],eax
 00467023    mov         eax,dword ptr [ebp-4]
 00467026    call        @LStrToPChar
 0046702B    mov         dword ptr [ebp-10],eax
 0046702E    cmp         dword ptr [ebp-0C],0
>00467032    jle         00467072
 00467034    mov         eax,dword ptr [ebp-0C]
 00467037    mov         edx,dword ptr [ebp-8]
 0046703A    cmp         byte ptr [edx+eax-1],0
>0046703F    je          00467069
 00467041    mov         eax,dword ptr [ebp-0C]
 00467044    mov         edx,dword ptr [ebp-8]
 00467047    mov         dl,byte ptr [edx+eax-1]
 0046704B    mov         eax,dword ptr [ebp-10]
 0046704E    call        004673E4
 00467053    test        eax,eax
>00467055    je          00467069
 00467057    mov         edx,dword ptr [ebp-0C]
 0046705A    mov         eax,dword ptr [ebp-8]
 0046705D    call        0046B624
 00467062    cmp         al,2
>00467064    jne         00467072
 00467066    dec         dword ptr [ebp-0C]
 00467069    dec         dword ptr [ebp-0C]
 0046706C    cmp         dword ptr [ebp-0C],0
>00467070    jg          00467034
 00467072    mov         eax,dword ptr [ebp-0C]
 00467075    mov         esp,ebp
 00467077    pop         ebp
 00467078    ret
end;*}

//0046707C
{*procedure sub_0046707C(?:?; ?:?);
begin
 0046707C    push        ebp
 0046707D    mov         ebp,esp
 0046707F    add         esp,0FFFFFFF4
 00467082    mov         dword ptr [ebp-8],edx
 00467085    mov         dword ptr [ebp-4],eax
 00467088    mov         edx,dword ptr [ebp-4]
 0046708B    mov         eax,4670B8;'\:'
 00467090    call        0046700C
 00467095    mov         dword ptr [ebp-0C],eax
 00467098    mov         eax,dword ptr [ebp-8]
 0046709B    push        eax
 0046709C    mov         ecx,dword ptr [ebp-0C]
 0046709F    mov         edx,1
 004670A4    mov         eax,dword ptr [ebp-4]
 004670A7    call        @LStrCopy
 004670AC    mov         esp,ebp
 004670AE    pop         ebp
 004670AF    ret
end;*}

//00467100
{*procedure sub_00467100(?:?; ?:?);
begin
 00467100    push        ebp
 00467101    mov         ebp,esp
 00467103    add         esp,0FFFFFFF4
 00467106    mov         dword ptr [ebp-8],edx
 00467109    mov         dword ptr [ebp-4],eax
 0046710C    mov         edx,dword ptr [ebp-4]
 0046710F    mov         eax,46715C;'.\:'
 00467114    call        0046700C
 00467119    mov         dword ptr [ebp-0C],eax
 0046711C    cmp         dword ptr [ebp-0C],0
>00467120    jle         00467145
 00467122    mov         eax,dword ptr [ebp-0C]
 00467125    mov         edx,dword ptr [ebp-4]
 00467128    cmp         byte ptr [edx+eax-1],2E
>0046712D    jne         00467145
 0046712F    mov         eax,dword ptr [ebp-8]
 00467132    push        eax
 00467133    mov         ecx,7FFFFFFF
 00467138    mov         edx,dword ptr [ebp-0C]
 0046713B    mov         eax,dword ptr [ebp-4]
 0046713E    call        @LStrCopy
>00467143    jmp         0046714D
 00467145    mov         eax,dword ptr [ebp-8]
 00467148    call        @LStrClr
 0046714D    mov         esp,ebp
 0046714F    pop         ebp
 00467150    ret
end;*}

//00467160
{*procedure sub_00467160(?:TFileName; ?:?);
begin
 00467160    push        ebp
 00467161    mov         ebp,esp
 00467163    add         esp,0FFFFFEF0
 00467169    mov         dword ptr [ebp-8],edx
 0046716C    mov         dword ptr [ebp-4],eax
 0046716F    lea         eax,[ebp-0C]
 00467172    push        eax
 00467173    lea         eax,[ebp-110]
 00467179    push        eax
 0046717A    push        104
 0046717F    mov         eax,dword ptr [ebp-4]
 00467182    call        @LStrToPChar
 00467187    push        eax
 00467188    call        kernel32.GetFullPathNameA
 0046718D    mov         ecx,eax
 0046718F    lea         edx,[ebp-110]
 00467195    mov         eax,dword ptr [ebp-8]
 00467198    call        @LStrFromPCharLen
 0046719D    mov         esp,ebp
 0046719F    pop         ebp
 004671A0    ret
end;*}

//004671A4
{*function sub_004671A4(?:?; ?:?; ?:?):?;
begin
 004671A4    push        ebp
 004671A5    mov         ebp,esp
 004671A7    add         esp,0FFFFFFDC
 004671AA    cmp         dword ptr [ebp+8],0
>004671AE    je          004671B8
 004671B0    mov         eax,dword ptr [ebp+8]
 004671B3    mov         dword ptr [ebp-24],eax
>004671B6    jmp         004671BD
 004671B8    xor         eax,eax
 004671BA    mov         dword ptr [ebp-24],eax
 004671BD    lea         eax,[ebp-14]
 004671C0    push        eax
 004671C1    lea         eax,[ebp-10]
 004671C4    push        eax
 004671C5    lea         eax,[ebp-0C]
 004671C8    push        eax
 004671C9    lea         eax,[ebp-8]
 004671CC    push        eax
 004671CD    mov         eax,dword ptr [ebp-24]
 004671D0    push        eax
 004671D1    call        kernel32.GetDiskFreeSpaceA
 004671D6    mov         dword ptr [ebp-4],eax
 004671D9    mov         eax,dword ptr [ebp-8]
 004671DC    imul        dword ptr [ebp-0C]
 004671DF    xor         edx,edx
 004671E1    mov         dword ptr [ebp-20],eax
 004671E4    mov         dword ptr [ebp-1C],edx
 004671E7    mov         eax,dword ptr [ebp-10]
 004671EA    xor         edx,edx
 004671EC    push        edx
 004671ED    push        eax
 004671EE    mov         eax,dword ptr [ebp-20]
 004671F1    mov         edx,dword ptr [ebp-1C]
 004671F4    call        @_llmul
 004671F9    mov         ecx,dword ptr [ebp+0C]
 004671FC    mov         dword ptr [ecx],eax
 004671FE    mov         dword ptr [ecx+4],edx
 00467201    mov         eax,dword ptr [ebp-14]
 00467204    xor         edx,edx
 00467206    push        edx
 00467207    push        eax
 00467208    mov         eax,dword ptr [ebp-20]
 0046720B    mov         edx,dword ptr [ebp-1C]
 0046720E    call        @_llmul
 00467213    mov         ecx,dword ptr [ebp+10]
 00467216    mov         dword ptr [ecx],eax
 00467218    mov         dword ptr [ecx+4],edx
 0046721B    mov         eax,dword ptr [ebp-4]
 0046721E    mov         esp,ebp
 00467220    pop         ebp
 00467221    ret         10
end;*}

//00467224
function StrLen(const Str:PChar):Cardinal;
begin
{*
 00467224    mov         edx,edi
 00467226    mov         edi,eax
 00467228    mov         ecx,0FFFFFFFF
 0046722D    xor         al,al
 0046722F    repne scas  byte ptr [edi]
 00467231    mov         eax,0FFFFFFFE
 00467236    sub         eax,ecx
 00467238    mov         edi,edx
 0046723A    ret
*}
end;

//0046723C
function StrEnd(const Str:PChar):PChar;
begin
{*
 0046723C    mov         edx,edi
 0046723E    mov         edi,eax
 00467240    mov         ecx,0FFFFFFFF
 00467245    xor         al,al
 00467247    repne scas  byte ptr [edi]
 00467249    lea         eax,[edi-1]
 0046724C    mov         edi,edx
 0046724E    ret
*}
end;

//00467250
{*function sub_00467250(?:?; ?:?; ?:?):?;
begin
 00467250    push        ebp
 00467251    mov         ebp,esp
 00467253    add         esp,0FFFFFFF0
 00467256    mov         dword ptr [ebp-0C],ecx
 00467259    mov         dword ptr [ebp-8],edx
 0046725C    mov         dword ptr [ebp-4],eax
 0046725F    mov         eax,dword ptr [ebp-4]
 00467262    mov         dword ptr [ebp-10],eax
 00467265    mov         edx,dword ptr [ebp-4]
 00467268    mov         eax,dword ptr [ebp-8]
 0046726B    mov         ecx,dword ptr [ebp-0C]
 0046726E    call        Move
 00467273    mov         eax,dword ptr [ebp-10]
 00467276    mov         esp,ebp
 00467278    pop         ebp
 00467279    ret
end;*}

//0046727C
function StrCopy(Dest:PChar; const Source:PChar):PChar;
begin
{*
 0046727C    push        edi
 0046727D    push        esi
 0046727E    mov         esi,eax
 00467280    mov         edi,edx
 00467282    mov         ecx,0FFFFFFFF
 00467287    xor         al,al
 00467289    repne scas  byte ptr [edi]
 0046728B    not         ecx
 0046728D    mov         edi,esi
 0046728F    mov         esi,edx
 00467291    mov         edx,ecx
 00467293    mov         eax,edi
 00467295    shr         ecx,2
 00467298    rep movs    dword ptr [edi],dword ptr [esi]
 0046729A    mov         ecx,edx
 0046729C    and         ecx,3
 0046729F    rep movs    byte ptr [edi],byte ptr [esi]
 004672A1    pop         esi
 004672A2    pop         edi
 004672A3    ret
*}
end;

//004672A4
function StrLCopy(Dest:PChar; const Source:PChar; MaxLen:Cardinal):PChar;
begin
{*
 004672A4    push        edi
 004672A5    push        esi
 004672A6    push        ebx
 004672A7    mov         esi,eax
 004672A9    mov         edi,edx
 004672AB    mov         ebx,ecx
 004672AD    xor         al,al
 004672AF    test        ecx,ecx
>004672B1    je          004672B8
 004672B3    repne scas  byte ptr [edi]
>004672B5    jne         004672B8
 004672B7    inc         ecx
 004672B8    sub         ebx,ecx
 004672BA    mov         edi,esi
 004672BC    mov         esi,edx
 004672BE    mov         edx,edi
 004672C0    mov         ecx,ebx
 004672C2    shr         ecx,2
 004672C5    rep movs    dword ptr [edi],dword ptr [esi]
 004672C7    mov         ecx,ebx
 004672C9    and         ecx,3
 004672CC    rep movs    byte ptr [edi],byte ptr [esi]
 004672CE    stos        byte ptr [edi]
 004672CF    mov         eax,edx
 004672D1    pop         ebx
 004672D2    pop         esi
 004672D3    pop         edi
 004672D4    ret
*}
end;

//004672D8
{*function sub_004672D8(?:?; ?:AnsiString):?;
begin
 004672D8    push        ebp
 004672D9    mov         ebp,esp
 004672DB    add         esp,0FFFFFFF4
 004672DE    mov         dword ptr [ebp-8],edx
 004672E1    mov         dword ptr [ebp-4],eax
 004672E4    mov         eax,dword ptr [ebp-8]
 004672E7    call        @DynArrayLength
 004672EC    push        eax
 004672ED    mov         eax,dword ptr [ebp-8]
 004672F0    call        @LStrToPChar
 004672F5    mov         edx,eax
 004672F7    mov         eax,dword ptr [ebp-4]
 004672FA    pop         ecx
 004672FB    call        StrLCopy
 00467300    mov         dword ptr [ebp-0C],eax
 00467303    mov         eax,dword ptr [ebp-0C]
 00467306    mov         esp,ebp
 00467308    pop         ebp
 00467309    ret
end;*}

//0046730C
{*function sub_0046730C(?:?; ?:?; ?:?):?;
begin
 0046730C    push        ebp
 0046730D    mov         ebp,esp
 0046730F    add         esp,0FFFFFFF0
 00467312    mov         dword ptr [ebp-0C],ecx
 00467315    mov         dword ptr [ebp-8],edx
 00467318    mov         dword ptr [ebp-4],eax
 0046731B    mov         eax,dword ptr [ebp-8]
 0046731E    call        @LStrToPChar
 00467323    mov         edx,eax
 00467325    mov         ecx,dword ptr [ebp-0C]
 00467328    mov         eax,dword ptr [ebp-4]
 0046732B    call        StrLCopy
 00467330    mov         dword ptr [ebp-10],eax
 00467333    mov         eax,dword ptr [ebp-10]
 00467336    mov         esp,ebp
 00467338    pop         ebp
 00467339    ret
end;*}

//0046733C
function StrComp(const Str1:PChar; const Str2:PChar):Integer;
begin
{*
 0046733C    push        edi
 0046733D    push        esi
 0046733E    mov         edi,edx
 00467340    mov         esi,eax
 00467342    mov         ecx,0FFFFFFFF
 00467347    xor         eax,eax
 00467349    repne scas  byte ptr [edi]
 0046734B    not         ecx
 0046734D    mov         edi,edx
 0046734F    xor         edx,edx
 00467351    repe cmps   byte ptr [esi],byte ptr [edi]
 00467353    mov         al,byte ptr [esi-1]
 00467356    mov         dl,byte ptr [edi-1]
 00467359    sub         eax,edx
 0046735B    pop         esi
 0046735C    pop         edi
 0046735D    ret
*}
end;

//00467360
function StrIComp(const Str1:PChar; const Str2:PChar):Integer;
begin
{*
 00467360    push        edi
 00467361    push        esi
 00467362    mov         edi,edx
 00467364    mov         esi,eax
 00467366    mov         ecx,0FFFFFFFF
 0046736B    xor         eax,eax
 0046736D    repne scas  byte ptr [edi]
 0046736F    not         ecx
 00467371    mov         edi,edx
 00467373    xor         edx,edx
 00467375    repe cmps   byte ptr [esi],byte ptr [edi]
>00467377    je          0046739A
 00467379    mov         al,byte ptr [esi-1]
 0046737C    cmp         al,61
>0046737E    jb          00467386
 00467380    cmp         al,7A
>00467382    ja          00467386
 00467384    sub         al,20
 00467386    mov         dl,byte ptr [edi-1]
 00467389    cmp         dl,61
>0046738C    jb          00467396
 0046738E    cmp         dl,7A
>00467391    ja          00467396
 00467393    sub         dl,20
 00467396    sub         eax,edx
>00467398    je          00467375
 0046739A    pop         esi
 0046739B    pop         edi
 0046739C    ret
*}
end;

//004673A0
function StrLIComp(const Str1:PChar; const Str2:PChar; MaxLen:Cardinal):Integer;
begin
{*
 004673A0    push        edi
 004673A1    push        esi
 004673A2    push        ebx
 004673A3    mov         edi,edx
 004673A5    mov         esi,eax
 004673A7    mov         ebx,ecx
 004673A9    xor         eax,eax
 004673AB    or          ecx,ecx
>004673AD    je          004673DE
 004673AF    repne scas  byte ptr [edi]
 004673B1    sub         ebx,ecx
 004673B3    mov         ecx,ebx
 004673B5    mov         edi,edx
 004673B7    xor         edx,edx
 004673B9    repe cmps   byte ptr [esi],byte ptr [edi]
>004673BB    je          004673DE
 004673BD    mov         al,byte ptr [esi-1]
 004673C0    cmp         al,61
>004673C2    jb          004673CA
 004673C4    cmp         al,7A
>004673C6    ja          004673CA
 004673C8    sub         al,20
 004673CA    mov         dl,byte ptr [edi-1]
 004673CD    cmp         dl,61
>004673D0    jb          004673DA
 004673D2    cmp         dl,7A
>004673D5    ja          004673DA
 004673D7    sub         dl,20
 004673DA    sub         eax,edx
>004673DC    je          004673B9
 004673DE    pop         ebx
 004673DF    pop         esi
 004673E0    pop         edi
 004673E1    ret
*}
end;

//004673E4
{*function sub_004673E4(?:PChar; ?:?):?;
begin
 004673E4    push        ebp
 004673E5    mov         ebp,esp
 004673E7    add         esp,0FFFFFFF4
 004673EA    mov         byte ptr [ebp-5],dl
 004673ED    mov         dword ptr [ebp-4],eax
 004673F0    mov         eax,dword ptr [ebp-4]
 004673F3    mov         dword ptr [ebp-0C],eax
>004673F6    jmp         0046740A
 004673F8    mov         eax,dword ptr [ebp-0C]
 004673FB    cmp         byte ptr [eax],0
>004673FE    jne         00467407
 00467400    xor         eax,eax
 00467402    mov         dword ptr [ebp-0C],eax
>00467405    jmp         00467414
 00467407    inc         dword ptr [ebp-0C]
 0046740A    mov         eax,dword ptr [ebp-0C]
 0046740D    mov         al,byte ptr [eax]
 0046740F    cmp         al,byte ptr [ebp-5]
>00467412    jne         004673F8
 00467414    mov         eax,dword ptr [ebp-0C]
 00467417    mov         esp,ebp
 00467419    pop         ebp
 0046741A    ret
end;*}

//0046741C
function StrPos(const Str1:PChar; const Str2:PChar):PChar;
begin
{*
 0046741C    push        edi
 0046741D    push        esi
 0046741E    push        ebx
 0046741F    or          eax,eax
>00467421    je          00467467
 00467423    or          edx,edx
>00467425    je          00467467
 00467427    mov         ebx,eax
 00467429    mov         edi,edx
 0046742B    xor         al,al
 0046742D    mov         ecx,0FFFFFFFF
 00467432    repne scas  byte ptr [edi]
 00467434    not         ecx
 00467436    dec         ecx
>00467437    je          00467467
 00467439    mov         esi,ecx
 0046743B    mov         edi,ebx
 0046743D    mov         ecx,0FFFFFFFF
 00467442    repne scas  byte ptr [edi]
 00467444    not         ecx
 00467446    sub         ecx,esi
>00467448    jbe         00467467
 0046744A    mov         edi,ebx
 0046744C    lea         ebx,[esi-1]
 0046744F    mov         esi,edx
 00467451    lods        byte ptr [esi]
 00467452    repne scas  byte ptr [edi]
>00467454    jne         00467467
 00467456    mov         eax,ecx
 00467458    push        edi
 00467459    mov         ecx,ebx
 0046745B    repe cmps   byte ptr [esi],byte ptr [edi]
 0046745D    pop         edi
 0046745E    mov         ecx,eax
>00467460    jne         0046744F
 00467462    lea         eax,[edi-1]
>00467465    jmp         00467469
 00467467    xor         eax,eax
 00467469    pop         ebx
 0046746A    pop         esi
 0046746B    pop         edi
 0046746C    ret
*}
end;

//00467470
{*procedure sub_00467470(?:?; ?:AnsiString);
begin
 00467470    push        ebp
 00467471    mov         ebp,esp
 00467473    add         esp,0FFFFFFF8
 00467476    mov         dword ptr [ebp-8],edx
 00467479    mov         dword ptr [ebp-4],eax
 0046747C    mov         eax,dword ptr [ebp-8]
 0046747F    mov         edx,dword ptr [ebp-4]
 00467482    call        @LStrFromPChar
 00467487    pop         ecx
 00467488    pop         ecx
 00467489    pop         ebp
 0046748A    ret
end;*}

//0046748C
{*function sub_0046748C(?:?):?;
begin
 0046748C    push        ebp
 0046748D    mov         ebp,esp
 0046748F    add         esp,0FFFFFFF8
 00467492    mov         dword ptr [ebp-4],eax
 00467495    add         dword ptr [ebp-4],4
 00467499    mov         eax,dword ptr [ebp-4]
 0046749C    call        @GetMem
 004674A1    mov         dword ptr [ebp-8],eax
 004674A4    mov         eax,dword ptr [ebp-8]
 004674A7    mov         edx,dword ptr [ebp-4]
 004674AA    mov         dword ptr [eax],edx
 004674AC    add         dword ptr [ebp-8],4
 004674B0    mov         eax,dword ptr [ebp-8]
 004674B3    pop         ecx
 004674B4    pop         ecx
 004674B5    pop         ebp
 004674B6    ret
end;*}

//004674B8
{*function sub_004674B8(?:PChar):?;
begin
 004674B8    push        ebp
 004674B9    mov         ebp,esp
 004674BB    add         esp,0FFFFFFF4
 004674BE    mov         dword ptr [ebp-4],eax
 004674C1    mov         eax,dword ptr [ebp-4]
 004674C4    mov         dword ptr [ebp-0C],eax
 004674C7    sub         dword ptr [ebp-0C],4
 004674CB    mov         eax,dword ptr [ebp-0C]
 004674CE    mov         eax,dword ptr [eax]
 004674D0    sub         eax,4
 004674D3    mov         dword ptr [ebp-8],eax
 004674D6    mov         eax,dword ptr [ebp-8]
 004674D9    mov         esp,ebp
 004674DB    pop         ebp
 004674DC    ret
end;*}

//004674E0
{*function sub_004674E0(?:PChar):?;
begin
 004674E0    push        ebp
 004674E1    mov         ebp,esp
 004674E3    add         esp,0FFFFFFF4
 004674E6    mov         dword ptr [ebp-4],eax
 004674E9    cmp         dword ptr [ebp-4],0
>004674ED    jne         004674F6
 004674EF    xor         eax,eax
 004674F1    mov         dword ptr [ebp-8],eax
>004674F4    jmp         00467518
 004674F6    mov         eax,dword ptr [ebp-4]
 004674F9    call        StrLen
 004674FE    inc         eax
 004674FF    mov         dword ptr [ebp-0C],eax
 00467502    mov         eax,dword ptr [ebp-0C]
 00467505    call        0046748C
 0046750A    mov         ecx,dword ptr [ebp-0C]
 0046750D    mov         edx,dword ptr [ebp-4]
 00467510    call        00467250
 00467515    mov         dword ptr [ebp-8],eax
 00467518    mov         eax,dword ptr [ebp-8]
 0046751B    mov         esp,ebp
 0046751D    pop         ebp
 0046751E    ret
end;*}

//00467520
{*procedure sub_00467520(?:?);
begin
 00467520    push        ebp
 00467521    mov         ebp,esp
 00467523    push        ecx
 00467524    mov         dword ptr [ebp-4],eax
 00467527    cmp         dword ptr [ebp-4],0
>0046752B    je          0046753E
 0046752D    sub         dword ptr [ebp-4],4
 00467531    mov         eax,dword ptr [ebp-4]
 00467534    mov         edx,dword ptr [eax]
 00467536    mov         eax,dword ptr [ebp-4]
 00467539    call        @FreeMem
 0046753E    pop         ecx
 0046753F    pop         ebp
 00467540    ret
end;*}

//00467544
procedure FormatError(ErrorCode:Integer; Format:PChar; FmtLen:Cardinal);
begin
{*
 00467544    push        ebp
 00467545    mov         ebp,esp
 00467547    add         esp,0FFFFFFCC
 0046754A    mov         dword ptr [ebp-0C],ecx
 0046754D    mov         dword ptr [ebp-8],edx
 00467550    mov         dword ptr [ebp-4],eax
 00467553    cmp         dword ptr [ebp-0C],1F
>00467557    jbe         00467560
 00467559    mov         dword ptr [ebp-0C],1F
 00467560    mov         edx,dword ptr [ebp-0C]
 00467563    dec         edx
 00467564    mov         eax,dword ptr [ebp-8]
 00467567    call        0046B658
 0046756C    cmp         al,1
>0046756E    jne         00467573
 00467570    dec         dword ptr [ebp-0C]
 00467573    lea         eax,[ebp-2C]
 00467576    mov         ecx,dword ptr [ebp-0C]
 00467579    mov         edx,dword ptr [ebp-8]
 0046757C    call        00467250
 00467581    mov         eax,dword ptr [ebp-0C]
 00467584    mov         byte ptr [ebp+eax-2C],0
 00467589    lea         eax,[ebp-2C]
 0046758C    mov         dword ptr [ebp-34],eax
 0046758F    mov         byte ptr [ebp-30],6
 00467593    lea         edx,[ebp-34]
 00467596    mov         eax,dword ptr [ebp-4]
 00467599    mov         eax,dword ptr [eax*4+5409D0];^SInvalidFormat:TResStringRec
 004675A0    xor         ecx,ecx
 004675A2    call        004660B8
 004675A7    mov         esp,ebp
 004675A9    pop         ebp
 004675AA    ret
*}
end;

//004675AC
procedure FormatVarToStr(var S:AnsiString; const V:TVarData);
begin
{*
 004675AC    push        ebp
 004675AD    mov         ebp,esp
 004675AF    add         esp,0FFFFFFF8
 004675B2    push        ebx
 004675B3    mov         dword ptr [ebp-8],edx
 004675B6    mov         dword ptr [ebp-4],eax
 004675B9    mov         eax,[0055B6B4];^gvar_0053D01C
 004675BE    cmp         dword ptr [eax],0
>004675C1    je          004675D5
 004675C3    mov         ebx,dword ptr ds:[55B6B4];^gvar_0053D01C
 004675C9    mov         ebx,dword ptr [ebx]
 004675CB    mov         edx,dword ptr [ebp-8]
 004675CE    mov         eax,dword ptr [ebp-4]
 004675D1    call        ebx
>004675D3    jmp         004675DC
 004675D5    mov         al,10
 004675D7    call        Error
 004675DC    pop         ebx
 004675DD    pop         ecx
 004675DE    pop         ecx
 004675DF    pop         ebp
 004675E0    ret
*}
end;

//004675E4
procedure FormatClearStr(var S:AnsiString);
begin
{*
 004675E4    push        ebp
 004675E5    mov         ebp,esp
 004675E7    push        ecx
 004675E8    mov         dword ptr [ebp-4],eax
 004675EB    mov         eax,dword ptr [ebp-4]
 004675EE    call        @LStrClr
 004675F3    pop         ecx
 004675F4    pop         ebp
 004675F5    ret
*}
end;

//004675F8
function FormatBuf(var Buffer:void ; BufLen:Cardinal; const Format:void ; FmtLen:Cardinal; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):Cardinal;
begin
{*
 004675F8    push        ebp
 004675F9    mov         ebp,esp
 004675FB    add         esp,0FFFFFF94
 004675FE    push        ebx
 004675FF    xor         ebx,ebx
 00467601    mov         dword ptr [ebp-14],ebx
 00467604    push        ebx
 00467605    push        esi
 00467606    push        edi
 00467607    mov         edi,eax
 00467609    mov         esi,ecx
 0046760B    xor         eax,eax
 0046760D    mov         dword ptr [ebp-4],eax
 00467610    add         ecx,dword ptr [ebp+10]
 00467613    mov         dword ptr [ebp-8],edi
 00467616    xor         eax,eax
 00467618    mov         dword ptr [ebp-0C],eax
 0046761B    mov         dword ptr [ebp-10],eax
 0046761E    mov         dword ptr [ebp-14],eax
 00467621    or          edx,edx
>00467623    je          00467632
 00467625    cmp         esi,ecx
>00467627    je          00467632
 00467629    lods        byte ptr [esi]
 0046762A    cmp         al,25
>0046762C    je          0046763C
 0046762E    stos        byte ptr [edi]
 0046762F    dec         edx
>00467630    jne         00467625
 00467632    mov         eax,edi
 00467634    sub         eax,dword ptr [ebp-8]
>00467637    jmp         0046795F
 0046763C    cmp         esi,ecx
>0046763E    je          00467632
 00467640    lods        byte ptr [esi]
 00467641    cmp         al,25
>00467643    je          0046762E
 00467645    lea         ebx,[esi-2]
 00467648    mov         dword ptr [ebp-18],ebx
 0046764B    mov         byte ptr [ebp-19],al
 0046764E    cmp         al,2D
>00467650    jne         00467657
 00467652    cmp         esi,ecx
>00467654    je          00467632
 00467656    lods        byte ptr [esi]
 00467657    call        004676DA
 0046765C    cmp         al,3A
>0046765E    jne         0046766A
 00467660    mov         dword ptr [ebp-0C],ebx
 00467663    cmp         esi,ecx
>00467665    je          00467632
 00467667    lods        byte ptr [esi]
>00467668    jmp         0046764B
 0046766A    mov         dword ptr [ebp-20],ebx
 0046766D    mov         ebx,0FFFFFFFF
 00467672    cmp         al,2E
>00467674    jne         00467680
 00467676    cmp         esi,ecx
>00467678    je          00467632
 0046767A    lods        byte ptr [esi]
 0046767B    call        004676DA
 00467680    mov         dword ptr [ebp-24],ebx
 00467683    mov         dword ptr [ebp-28],esi
 00467686    push        ecx
 00467687    push        edx
 00467688    call        00467722
 0046768D    pop         edx
 0046768E    mov         ebx,dword ptr [ebp-20]
 00467691    sub         ebx,ecx
>00467693    jae         00467697
 00467695    xor         ebx,ebx
 00467697    cmp         byte ptr [ebp-19],2D
>0046769B    jne         004676A7
 0046769D    sub         edx,ecx
>0046769F    jae         004676A5
 004676A1    add         ecx,edx
 004676A3    xor         edx,edx
 004676A5    rep movs    byte ptr [edi],byte ptr [esi]
 004676A7    xchg        ebx,ecx
 004676A9    sub         edx,ecx
>004676AB    jae         004676B1
 004676AD    add         ecx,edx
 004676AF    xor         edx,edx
 004676B1    mov         al,20
 004676B3    rep stos    byte ptr [edi]
 004676B5    xchg        ebx,ecx
 004676B7    sub         edx,ecx
>004676B9    jae         004676BF
 004676BB    add         ecx,edx
 004676BD    xor         edx,edx
 004676BF    rep movs    byte ptr [edi],byte ptr [esi]
 004676C1    cmp         dword ptr [ebp-10],0
>004676C5    je          004676D1
 004676C7    push        edx
 004676C8    lea         eax,[ebp-10]
 004676CB    call        FormatClearStr
 004676D0    pop         edx
 004676D1    pop         ecx
 004676D2    mov         esi,dword ptr [ebp-28]
>004676D5    jmp         00467621
 004676DA    xor         ebx,ebx
 004676DC    cmp         al,2A
>004676DE    je          00467702
 004676E0    cmp         al,30
>004676E2    jb          00467721
 004676E4    cmp         al,39
>004676E6    ja          00467721
 004676E8    imul        ebx,ebx,0A
 004676EE    sub         al,30
 004676F0    movzx       eax,al
 004676F3    add         ebx,eax
 004676F5    cmp         esi,ecx
>004676F7    je          004676FC
 004676F9    lods        byte ptr [esi]
>004676FA    jmp         004676E0
 004676FC    pop         eax
>004676FD    jmp         00467632
 00467702    mov         eax,dword ptr [ebp-0C]
 00467705    cmp         eax,dword ptr [ebp+8]
>00467708    jg          0046771C
 0046770A    inc         dword ptr [ebp-0C]
 0046770D    mov         ebx,dword ptr [ebp+0C]
 00467710    cmp         byte ptr [ebx+eax*8+4],0
 00467715    mov         ebx,dword ptr [ebx+eax*8]
>00467718    je          0046771C
 0046771A    xor         ebx,ebx
 0046771C    cmp         esi,ecx
>0046771E    je          004676FC
 00467720    lods        byte ptr [esi]
 00467721    ret
*}
end;

//00467970
{*function sub_00467970(?:?; ?:?; ?:?; ?:?):?;
begin
 00467970    push        ebp
 00467971    mov         ebp,esp
 00467973    add         esp,0FFFFFFF0
 00467976    mov         dword ptr [ebp-0C],ecx
 00467979    mov         dword ptr [ebp-8],edx
 0046797C    mov         dword ptr [ebp-4],eax
 0046797F    cmp         dword ptr [ebp-4],0
>00467983    je          004679BB
 00467985    cmp         dword ptr [ebp-8],0
>00467989    je          004679BB
 0046798B    mov         eax,dword ptr [ebp-8]
 0046798E    call        StrLen
 00467993    push        eax
 00467994    mov         eax,dword ptr [ebp-0C]
 00467997    push        eax
 00467998    mov         eax,dword ptr [ebp+8]
 0046799B    push        eax
 0046799C    mov         ecx,dword ptr [ebp-8]
 0046799F    mov         eax,dword ptr [ebp-4]
 004679A2    mov         edx,7FFFFFFF
 004679A7    call        FormatBuf
 004679AC    mov         edx,dword ptr [ebp-4]
 004679AF    mov         byte ptr [edx+eax],0
 004679B3    mov         eax,dword ptr [ebp-4]
 004679B6    mov         dword ptr [ebp-10],eax
>004679B9    jmp         004679C0
 004679BB    xor         eax,eax
 004679BD    mov         dword ptr [ebp-10],eax
 004679C0    mov         eax,dword ptr [ebp-10]
 004679C3    mov         esp,ebp
 004679C5    pop         ebp
 004679C6    ret         4
end;*}

//004679CC
{*function sub_004679CC(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004679CC    push        ebp
 004679CD    mov         ebp,esp
 004679CF    add         esp,0FFFFFFF0
 004679D2    mov         dword ptr [ebp-0C],ecx
 004679D5    mov         dword ptr [ebp-8],edx
 004679D8    mov         dword ptr [ebp-4],eax
 004679DB    cmp         dword ptr [ebp-4],0
>004679DF    je          00467A15
 004679E1    cmp         dword ptr [ebp-0C],0
>004679E5    je          00467A15
 004679E7    mov         eax,dword ptr [ebp-0C]
 004679EA    call        StrLen
 004679EF    push        eax
 004679F0    mov         eax,dword ptr [ebp+0C]
 004679F3    push        eax
 004679F4    mov         eax,dword ptr [ebp+8]
 004679F7    push        eax
 004679F8    mov         ecx,dword ptr [ebp-0C]
 004679FB    mov         eax,dword ptr [ebp-4]
 004679FE    mov         edx,dword ptr [ebp-8]
 00467A01    call        FormatBuf
 00467A06    mov         edx,dword ptr [ebp-4]
 00467A09    mov         byte ptr [edx+eax],0
 00467A0D    mov         eax,dword ptr [ebp-4]
 00467A10    mov         dword ptr [ebp-10],eax
>00467A13    jmp         00467A1A
 00467A15    xor         eax,eax
 00467A17    mov         dword ptr [ebp-10],eax
 00467A1A    mov         eax,dword ptr [ebp-10]
 00467A1D    mov         esp,ebp
 00467A1F    pop         ebp
 00467A20    ret         8
end;*}

//00467A24
function Format(const Format:AnsiString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):AnsiString;
begin
{*
 00467A24    push        ebp
 00467A25    mov         ebp,esp
 00467A27    add         esp,0FFFFFFF4
 00467A2A    mov         dword ptr [ebp-0C],ecx
 00467A2D    mov         dword ptr [ebp-8],edx
 00467A30    mov         dword ptr [ebp-4],eax
 00467A33    mov         eax,dword ptr [ebp-0C]
 00467A36    push        eax
 00467A37    mov         ecx,dword ptr [ebp-8]
 00467A3A    mov         eax,dword ptr [ebp+8]
 00467A3D    mov         edx,dword ptr [ebp-4]
 00467A40    call        00467A4C
 00467A45    mov         esp,ebp
 00467A47    pop         ebp
 00467A48    ret         4
*}
end;

//00467A4C
{*procedure sub_00467A4C(?:?; ?:?; ?:?; ?:?);
begin
 00467A4C    push        ebp
 00467A4D    mov         ebp,esp
 00467A4F    add         esp,0FFFFF004
 00467A55    push        eax
 00467A56    add         esp,0FFFFFFEC
 00467A59    mov         dword ptr [ebp-0C],ecx
 00467A5C    mov         dword ptr [ebp-8],edx
 00467A5F    mov         dword ptr [ebp-4],eax
 00467A62    mov         dword ptr [ebp-14],1000
 00467A69    mov         eax,dword ptr [ebp-8]
 00467A6C    call        @DynArrayLength
 00467A71    cmp         eax,0C00
>00467A76    jge         00467AA1
 00467A78    mov         eax,dword ptr [ebp-8]
 00467A7B    call        @DynArrayLength
 00467A80    push        eax
 00467A81    mov         eax,dword ptr [ebp-0C]
 00467A84    push        eax
 00467A85    mov         eax,dword ptr [ebp+8]
 00467A88    push        eax
 00467A89    mov         ecx,dword ptr [ebp-8]
 00467A8C    lea         eax,[ebp-1014]
 00467A92    mov         edx,0FFF
 00467A97    call        FormatBuf
 00467A9C    mov         dword ptr [ebp-10],eax
>00467A9F    jmp         00467AB2
 00467AA1    mov         eax,dword ptr [ebp-8]
 00467AA4    call        @DynArrayLength
 00467AA9    mov         dword ptr [ebp-14],eax
 00467AAC    mov         eax,dword ptr [ebp-14]
 00467AAF    mov         dword ptr [ebp-10],eax
 00467AB2    mov         eax,dword ptr [ebp-14]
 00467AB5    dec         eax
 00467AB6    cmp         eax,dword ptr [ebp-10]
>00467AB9    jg          00467B11
>00467ABB    jmp         00467AFB
 00467ABD    mov         eax,dword ptr [ebp-14]
 00467AC0    add         dword ptr [ebp-14],eax
 00467AC3    mov         eax,dword ptr [ebp-4]
 00467AC6    call        @LStrClr
 00467ACB    mov         eax,dword ptr [ebp-4]
 00467ACE    mov         edx,dword ptr [ebp-14]
 00467AD1    call        @LStrSetLength
 00467AD6    mov         eax,dword ptr [ebp-8]
 00467AD9    call        @DynArrayLength
 00467ADE    push        eax
 00467ADF    mov         eax,dword ptr [ebp-0C]
 00467AE2    push        eax
 00467AE3    mov         eax,dword ptr [ebp+8]
 00467AE6    push        eax
 00467AE7    mov         ecx,dword ptr [ebp-8]
 00467AEA    mov         edx,dword ptr [ebp-14]
 00467AED    dec         edx
 00467AEE    mov         eax,dword ptr [ebp-4]
 00467AF1    mov         eax,dword ptr [eax]
 00467AF3    call        FormatBuf
 00467AF8    mov         dword ptr [ebp-10],eax
 00467AFB    mov         eax,dword ptr [ebp-14]
 00467AFE    dec         eax
 00467AFF    cmp         eax,dword ptr [ebp-10]
>00467B02    jle         00467ABD
 00467B04    mov         eax,dword ptr [ebp-4]
 00467B07    mov         edx,dword ptr [ebp-10]
 00467B0A    call        @LStrSetLength
>00467B0F    jmp         00467B22
 00467B11    lea         edx,[ebp-1014]
 00467B17    mov         eax,dword ptr [ebp-4]
 00467B1A    mov         ecx,dword ptr [ebp-10]
 00467B1D    call        @LStrFromPCharLen
 00467B22    mov         esp,ebp
 00467B24    pop         ebp
 00467B25    ret         4
end;*}

//00467B28
procedure PutExponent;
begin
{*
 00467B28    push        esi
 00467B29    xor         esi,esi
 00467B2B    stos        byte ptr [edi]
 00467B2C    or          bl,bl
>00467B2E    jne         00467B34
 00467B30    xor         edx,edx
>00467B32    jmp         00467B3E
 00467B34    or          edx,edx
>00467B36    jge         00467B3E
 00467B38    mov         al,2D
 00467B3A    neg         edx
>00467B3C    jmp         00467B44
 00467B3E    or          ah,ah
>00467B40    je          00467B45
 00467B42    mov         al,ah
 00467B44    stos        byte ptr [edi]
 00467B45    xchg        eax,edx
 00467B46    push        eax
 00467B47    mov         ebx,esp
 00467B49    xor         edx,edx
 00467B4B    div         eax,dword ptr [esi+5409E4]
 00467B51    add         dl,30
 00467B54    mov         byte ptr [ebx],dl
 00467B56    inc         ebx
 00467B57    dec         ecx
 00467B58    or          eax,eax
>00467B5A    jne         00467B49
 00467B5C    or          ecx,ecx
>00467B5E    jg          00467B49
 00467B60    dec         ebx
 00467B61    mov         al,byte ptr [ebx]
 00467B63    stos        byte ptr [edi]
 00467B64    cmp         ebx,esp
>00467B66    jne         00467B60
 00467B68    pop         eax
 00467B69    pop         esi
 00467B6A    ret
*}
end;

//00467B6C
function FloatToText(BufferArg:PChar; const Value:void ; ValueType:TFloatValue; Format:TFloatFormat; Precision:Integer; Digits:Integer):Integer;
begin
{*
 00467B6C    push        ebp
 00467B6D    mov         ebp,esp
 00467B6F    add         esp,0FFFFFFD4
 00467B72    push        edi
 00467B73    push        esi
 00467B74    push        ebx
 00467B75    mov         dword ptr [ebp-4],eax
 00467B78    mov         al,[0055D90B];gvar_0055D90B
 00467B7D    mov         byte ptr [ebp-5],al
 00467B80    mov         al,[0055D90A];gvar_0055D90A
 00467B85    mov         byte ptr [ebp-6],al
 00467B88    mov         eax,[0055D904];gvar_0055D904:AnsiString
 00467B8D    mov         dword ptr [ebp-0C],eax
 00467B90    mov         al,[0055D908];gvar_0055D908
 00467B95    mov         byte ptr [ebp-0D],al
 00467B98    mov         al,[0055D909];gvar_0055D909
 00467B9D    mov         byte ptr [ebp-0E],al
 00467BA0    mov         dword ptr [ebp-14],0
 00467BA7    mov         eax,13
 00467BAC    cmp         cl,0
>00467BAF    jne         00467BC8
 00467BB1    mov         eax,dword ptr [ebp+0C]
 00467BB4    cmp         eax,2
>00467BB7    jge         00467BBE
 00467BB9    mov         eax,2
 00467BBE    cmp         eax,12
>00467BC1    jle         00467BC8
 00467BC3    mov         eax,12
 00467BC8    mov         dword ptr [ebp+0C],eax
 00467BCB    push        eax
 00467BCC    mov         eax,270F
 00467BD1    cmp         byte ptr [ebp+10],2
>00467BD5    jb          00467BDA
 00467BD7    mov         eax,dword ptr [ebp+8]
 00467BDA    push        eax
 00467BDB    lea         eax,[ebp-2C]
 00467BDE    call        FloatToDecimal
 00467BE3    mov         edi,dword ptr [ebp-4]
 00467BE6    movzx       eax,word ptr [ebp-2C]
 00467BEA    sub         eax,7FFF
 00467BEF    cmp         eax,2
>00467BF2    jae         00467C0E
 00467BF4    mov         ecx,eax
 00467BF6    call        00467C6B
 00467BFB    lea         esi,[ecx+ecx*2+467C5C]
 00467C02    add         esi,dword ptr [ebp-14]
 00467C05    mov         ecx,3
 00467C0A    rep movs    byte ptr [edi],byte ptr [esi]
>00467C0C    jmp         00467C3B
 00467C0E    lea         esi,[ebp-29]
 00467C11    movzx       ebx,byte ptr [ebp+10]
 00467C15    cmp         bl,1
>00467C18    je          00467C2A
 00467C1A    cmp         bl,4
>00467C1D    ja          00467C28
 00467C1F    movsx       eax,word ptr [ebp-2C]
 00467C23    cmp         eax,dword ptr [ebp+0C]
>00467C26    jle         00467C2A
 00467C28    mov         bl,0
 00467C2A    lea         ebx,[ebx*4+467C48]
 00467C31    add         ebx,dword ptr [ebp-14]
 00467C34    mov         ebx,dword ptr [ebx]
 00467C36    add         ebx,dword ptr [ebp-14]
 00467C39    call        ebx
 00467C3B    mov         eax,edi
 00467C3D    sub         eax,dword ptr [ebp-4]
 00467C40    pop         ebx
 00467C41    pop         esi
 00467C42    pop         edi
>00467C43    jmp         00467E39
>00467C48    jne         00467CC6
 00467C4A    inc         esi
 00467C4B    add         cl,dl
>00467C4D    jl          00467C95
 00467C4F    add         byte ptr [eax],cl
>00467C51    jge         00467C99
 00467C53    add         byte ptr [eax],cl
>00467C55    jge         00467C9D
 00467C57    add         byte ptr [edx+7D],dh
 00467C5A    inc         esi
 00467C5B    add         byte ptr [ecx+4E],cl
 00467C5E    inc         esi
 00467C5F    dec         esi
 00467C60    inc         ecx
 00467C61    dec         esi
 00467C62    lods        byte ptr [esi]
 00467C63    or          al,al
>00467C65    jne         00467C6A
 00467C67    mov         al,30
 00467C69    dec         esi
 00467C6A    ret
 00467C6B    cmp         byte ptr [ebp-2A],0
>00467C6F    je          00467C74
 00467C71    mov         al,2D
 00467C73    stos        byte ptr [edi]
 00467C74    ret
 00467C75    call        00467C6B
 00467C7A    movsx       ecx,word ptr [ebp-2C]
 00467C7E    xor         edx,edx
 00467C80    cmp         ecx,dword ptr [ebp+0C]
>00467C83    jg          00467CA2
 00467C85    cmp         ecx,0FFFFFFFD
>00467C88    jl          00467CA2
 00467C8A    or          ecx,ecx
>00467C8C    jg          00467CA8
 00467C8E    mov         al,30
 00467C90    stos        byte ptr [edi]
 00467C91    cmp         byte ptr [esi],0
>00467C94    je          00467CD0
 00467C96    mov         al,byte ptr [ebp-5]
 00467C99    stos        byte ptr [edi]
 00467C9A    neg         ecx
 00467C9C    mov         al,30
 00467C9E    rep stos    byte ptr [edi]
>00467CA0    jmp         00467CBC
 00467CA2    mov         ecx,1
 00467CA7    inc         edx
 00467CA8    lods        byte ptr [esi]
 00467CA9    or          al,al
>00467CAB    je          00467CC4
 00467CAD    stos        byte ptr [edi]
 00467CAE    loop        00467CA8
 00467CB0    lods        byte ptr [esi]
 00467CB1    or          al,al
>00467CB3    je          00467CC8
 00467CB5    mov         ah,al
 00467CB7    mov         al,byte ptr [ebp-5]
 00467CBA    stos        word ptr [edi]
 00467CBC    lods        byte ptr [esi]
 00467CBD    or          al,al
>00467CBF    je          00467CC8
 00467CC1    stos        byte ptr [edi]
>00467CC2    jmp         00467CBC
 00467CC4    mov         al,30
 00467CC6    rep stos    byte ptr [edi]
 00467CC8    or          edx,edx
>00467CCA    je          00467CD0
 00467CCC    xor         eax,eax
>00467CCE    jmp         00467CEE
 00467CD0    ret
 00467CD1    call        00467C6B
 00467CD6    call        00467C62
 00467CDB    mov         ah,byte ptr [ebp-5]
 00467CDE    stos        word ptr [edi]
 00467CE0    mov         ecx,dword ptr [ebp+0C]
 00467CE3    dec         ecx
 00467CE4    call        00467C62
 00467CE9    stos        byte ptr [edi]
 00467CEA    loop        00467CE4
 00467CEC    mov         ah,2B
 00467CEE    mov         ecx,dword ptr [ebp+8]
 00467CF1    cmp         ecx,4
>00467CF4    jbe         00467CF8
 00467CF6    xor         ecx,ecx
 00467CF8    mov         al,45
 00467CFA    mov         bl,byte ptr [ebp-29]
 00467CFD    movsx       edx,word ptr [ebp-2C]
 00467D01    dec         edx
 00467D02    call        PutExponent
 00467D07    ret
*}
end;

//00467E40
procedure FloatToDecimal(var Result:TFloatRec; const Value:void ; ValueType:TFloatValue; Precision:Integer; Decimals:Integer);
begin
{*
 00467E40    push        ebp
 00467E41    mov         ebp,esp
 00467E43    add         esp,0FFFFFFE0
 00467E46    push        edi
 00467E47    push        esi
 00467E48    push        ebx
 00467E49    mov         ebx,eax
 00467E4B    mov         esi,edx
 00467E4D    mov         dword ptr [ebp-4],0
 00467E54    cmp         cl,0
>00467E57    je          00467E63
 00467E59    call        00467F8F
>00467E5E    jmp         00468063
 00467E63    call        00467E6D
>00467E68    jmp         00468063
 00467E6D    mov         ax,word ptr [esi+8]
 00467E71    mov         edx,eax
 00467E73    and         eax,7FFF
>00467E78    je          00467E98
 00467E7A    cmp         eax,7FFF
>00467E7F    jne         00467EA3
 00467E81    test        word ptr [esi+6],8000
>00467E87    je          00467E9A
 00467E89    cmp         dword ptr [esi],0
>00467E8C    jne         00467E97
 00467E8E    cmp         dword ptr [esi+4],80000000
>00467E95    je          00467E9A
 00467E97    inc         eax
 00467E98    xor         edx,edx
 00467E9A    mov         byte ptr [ebx+3],0
>00467E9E    jmp         00467F70
 00467EA3    fld         tbyte ptr [esi]
 00467EA5    sub         eax,3FFF
 00467EAA    imul        eax,eax,4D10
 00467EB0    sar         eax,10
 00467EB3    inc         eax
 00467EB4    mov         dword ptr [ebp-8],eax
 00467EB7    mov         eax,12
 00467EBC    sub         eax,dword ptr [ebp-8]
 00467EBF    fabs
 00467EC1    push        ebx
 00467EC2    mov         ebx,dword ptr [ebp-4]
 00467EC5    call        FPower10
 00467ECA    pop         ebx
 00467ECB    frndint
 00467ECD    mov         edi,dword ptr [ebp-4]
 00467ED0    fld         tbyte ptr [edi+5409D8]
 00467ED6    fcomp       st(1)
 00467ED8    wait
 00467ED9    fnstsw      word ptr [ebp-0A]
 00467EDC    wait
 00467EDD    test        word ptr [ebp-0A],4100
>00467EE3    je          00467EEE
 00467EE5    fidiv       dword ptr [edi+5409E4]
 00467EEB    inc         dword ptr [ebp-8]
 00467EEE    fbstp       tbyte ptr [ebp-18]
 00467EF1    lea         edi,[ebx+3]
 00467EF4    mov         edx,9
 00467EF9    wait
 00467EFA    mov         al,byte ptr [edx+ebp-19]
 00467EFE    mov         ah,al
 00467F00    shr         al,4
 00467F03    and         ah,0F
 00467F06    add         ax,3030
 00467F0A    stos        word ptr [edi]
 00467F0C    dec         edx
>00467F0D    jne         00467EFA
 00467F0F    xor         al,al
 00467F11    stos        byte ptr [edi]
 00467F12    mov         edi,dword ptr [ebp-8]
 00467F15    add         edi,dword ptr [ebp+8]
>00467F18    jns         00467F21
 00467F1A    xor         eax,eax
>00467F1C    jmp         00467E98
 00467F21    cmp         edi,dword ptr [ebp+0C]
>00467F24    jb          00467F29
 00467F26    mov         edi,dword ptr [ebp+0C]
 00467F29    cmp         edi,12
>00467F2C    jae         00467F55
 00467F2E    cmp         byte ptr [ebx+edi+3],35
>00467F33    jb          00467F5A
 00467F35    mov         byte ptr [ebx+edi+3],0
 00467F3A    dec         edi
>00467F3B    js          00467F4A
 00467F3D    inc         byte ptr [ebx+edi+3]
 00467F41    cmp         byte ptr [ebx+edi+3],39
>00467F46    ja          00467F35
>00467F48    jmp         00467F69
 00467F4A    mov         word ptr [ebx+3],31
 00467F50    inc         dword ptr [ebp-8]
>00467F53    jmp         00467F69
 00467F55    mov         edi,12
 00467F5A    mov         byte ptr [ebx+edi+3],0
 00467F5F    dec         edi
>00467F60    js          00467F7B
 00467F62    cmp         byte ptr [ebx+edi+3],30
>00467F67    je          00467F5A
 00467F69    mov         dx,word ptr [esi+8]
 00467F6D    mov         eax,dword ptr [ebp-8]
 00467F70    shr         dx,0F
 00467F74    mov         word ptr [ebx],ax
 00467F77    mov         byte ptr [ebx+2],dl
 00467F7A    ret
 00467F7B    xor         edx,edx
>00467F7D    jmp         00467F6D
 00467F7F    or          al,byte ptr [eax]
 00467F81    add         byte ptr [eax],al
 00467F83    add         byte ptr fs:[eax],al
 00467F86    add         al,ch
 00467F88    add         eax,dword ptr [eax]
 00467F8A    add         byte ptr [eax],dl
 00467F8C    daa
 00467F8D    add         byte ptr [eax],al
 00467F8F    mov         eax,dword ptr [esi]
 00467F91    mov         edx,dword ptr [esi+4]
 00467F94    mov         ecx,eax
 00467F96    or          ecx,edx
>00467F98    je          00468055
 00467F9E    or          edx,edx
>00467FA0    jns         00467FA9
 00467FA2    neg         edx
 00467FA4    neg         eax
 00467FA6    sbb         edx,0
 00467FA9    xor         ecx,ecx
 00467FAB    mov         edi,dword ptr [ebp+8]
 00467FAE    or          edi,edi
>00467FB0    jge         00467FB4
 00467FB2    xor         edi,edi
 00467FB4    cmp         edi,4
>00467FB7    jl          00467FD8
 00467FB9    mov         edi,4
 00467FBE    inc         ecx
 00467FBF    sub         eax,0A7640000
 00467FC4    sbb         edx,0DE0B6B3
>00467FCA    jae         00467FBE
 00467FCC    dec         ecx
 00467FCD    add         eax,0A7640000
 00467FD2    adc         edx,0DE0B6B3
 00467FD8    mov         dword ptr [ebp-20],eax
 00467FDB    mov         dword ptr [ebp-1C],edx
 00467FDE    fild        qword ptr [ebp-20]
 00467FE1    mov         edx,edi
 00467FE3    mov         eax,4
 00467FE8    sub         eax,edx
>00467FEA    je          00467FF6
 00467FEC    mov         edi,dword ptr [ebp-4]
 00467FEF    fidiv       dword ptr [edi+eax*4+467F7B]
 00467FF6    fbstp       tbyte ptr [ebp-18]
 00467FF9    lea         edi,[ebx+3]
 00467FFC    wait
 00467FFD    or          ecx,ecx
>00467FFF    jne         0046801C
 00468001    mov         ecx,9
 00468006    mov         al,byte ptr [ecx+ebp-19]
 0046800A    mov         ah,al
 0046800C    shr         al,4
>0046800F    jne         0046802F
 00468011    mov         al,ah
 00468013    and         al,0F
>00468015    jne         00468036
 00468017    dec         ecx
>00468018    jne         00468006
>0046801A    jmp         00468055
 0046801C    mov         al,cl
 0046801E    add         al,30
 00468020    stos        byte ptr [edi]
 00468021    mov         ecx,9
 00468026    mov         al,byte ptr [ecx+ebp-19]
 0046802A    mov         ah,al
 0046802C    shr         al,4
 0046802F    add         al,30
 00468031    stos        byte ptr [edi]
 00468032    mov         al,ah
 00468034    and         al,0F
 00468036    add         al,30
 00468038    stos        byte ptr [edi]
 00468039    dec         ecx
>0046803A    jne         00468026
 0046803C    mov         eax,edi
 0046803E    lea         ecx,[ebx+edx+3]
 00468042    sub         eax,ecx
 00468044    mov         byte ptr [edi],0
 00468047    dec         edi
 00468048    cmp         byte ptr [edi],30
>0046804B    je          00468044
 0046804D    mov         edx,dword ptr [esi+4]
 00468050    shr         edx,1F
>00468053    jmp         0046805C
 00468055    xor         eax,eax
 00468057    xor         edx,edx
 00468059    mov         byte ptr [ebx+3],al
 0046805C    mov         word ptr [ebx],ax
 0046805F    mov         byte ptr [ebx+2],dl
 00468062    ret
*}
end;

//0046806C
function TextToFloat(Buffer:PChar; var Value:void ; ValueType:TFloatValue):Boolean;
begin
{*
 0046806C    push        ebp
 0046806D    mov         ebp,esp
 0046806F    add         esp,0FFFFFFF4
 00468072    push        edi
 00468073    push        esi
 00468074    push        ebx
 00468075    mov         esi,eax
 00468077    mov         edi,edx
 00468079    mov         dword ptr [ebp-4],0
 00468080    mov         al,[0055D90B];gvar_0055D90B
 00468085    mov         byte ptr [ebp-5],al
 00468088    mov         ebx,ecx
 0046808A    wait
 0046808B    fnstcw      word ptr [ebp-8]
 0046808E    wait
 0046808F    fnclex
 00468091    fldcw       word ptr ds:[5409E8]
 00468097    fldz
 00468099    call        00468123
 0046809E    mov         bh,byte ptr [esi]
 004680A0    cmp         bh,2B
>004680A3    je          004680AA
 004680A5    cmp         bh,2D
>004680A8    jne         004680AB
 004680AA    inc         esi
 004680AB    mov         ecx,esi
 004680AD    call        0046812E
 004680B2    xor         edx,edx
 004680B4    mov         al,byte ptr [esi]
 004680B6    cmp         al,byte ptr [ebp-5]
>004680B9    jne         004680C3
 004680BB    inc         esi
 004680BC    call        0046812E
 004680C1    neg         edx
 004680C3    cmp         ecx,esi
>004680C5    je          00468116
 004680C7    mov         al,byte ptr [esi]
 004680C9    and         al,0DF
 004680CB    cmp         al,45
>004680CD    jne         004680D9
 004680CF    inc         esi
 004680D0    push        edx
 004680D1    call        0046814A
 004680D6    pop         eax
 004680D7    add         edx,eax
 004680D9    call        00468123
 004680DE    cmp         byte ptr [esi],0
>004680E1    jne         00468116
 004680E3    mov         eax,edx
 004680E5    cmp         bl,1
>004680E8    jne         004680ED
 004680EA    add         eax,4
 004680ED    push        ebx
 004680EE    mov         ebx,dword ptr [ebp-4]
 004680F1    call        FPower10
 004680F6    pop         ebx
 004680F7    cmp         bh,2D
>004680FA    jne         004680FE
 004680FC    fchs
 004680FE    cmp         bl,0
>00468101    je          00468107
 00468103    fistp       qword ptr [edi]
>00468105    jmp         00468109
 00468107    fstp        tbyte ptr [edi]
 00468109    wait
 0046810A    fnstsw      al
 0046810C    test        ax,9
>00468110    jne         00468118
 00468112    mov         al,1
>00468114    jmp         0046811A
 00468116    fstp        st(0)
 00468118    xor         eax,eax
 0046811A    wait
 0046811B    fnclex
 0046811D    fldcw       word ptr [ebp-8]
 00468120    wait
>00468121    jmp         00468179
 00468123    lods        byte ptr [esi]
 00468124    or          al,al
>00468126    je          0046812C
 00468128    cmp         al,20
>0046812A    je          00468123
 0046812C    dec         esi
 0046812D    ret
 0046812E    xor         eax,eax
 00468130    xor         edx,edx
 00468132    lods        byte ptr [esi]
 00468133    sub         al,3A
 00468135    add         al,0A
>00468137    jae         00468148
 00468139    fimul       dword ptr ds:[5409E4]
 0046813F    mov         dword ptr [ebp-0C],eax
 00468142    fiadd       dword ptr [ebp-0C]
 00468145    inc         edx
>00468146    jmp         00468132
 00468148    dec         esi
 00468149    ret
 0046814A    xor         eax,eax
 0046814C    xor         edx,edx
 0046814E    mov         cl,byte ptr [esi]
 00468150    cmp         cl,2B
>00468153    je          0046815A
 00468155    cmp         cl,2D
>00468158    jne         0046815B
 0046815A    inc         esi
 0046815B    mov         al,byte ptr [esi]
 0046815D    sub         al,3A
 0046815F    add         al,0A
>00468161    jae         00468171
 00468163    inc         esi
 00468164    imul        edx,edx,0A
 00468167    add         edx,eax
 00468169    cmp         edx,1F4
>0046816F    jb          0046815B
 00468171    cmp         cl,2D
>00468174    jne         00468178
 00468176    neg         edx
 00468178    ret
 00468179    pop         ebx
 0046817A    pop         esi
 0046817B    pop         edi
 0046817C    mov         esp,ebp
 0046817E    pop         ebp
 0046817F    ret
*}
end;

//00468180
function TextToFloat(Buffer:PChar; var Value:void ; ValueType:TFloatValue; const FormatSettings:TFormatSettings):Boolean;
begin
{*
 00468180    push        ebp
 00468181    mov         ebp,esp
 00468183    add         esp,0FFFFFFF4
 00468186    push        edi
 00468187    push        esi
 00468188    push        ebx
 00468189    mov         esi,eax
 0046818B    mov         edi,edx
 0046818D    mov         dword ptr [ebp-4],0
 00468194    mov         ebx,ecx
 00468196    mov         eax,dword ptr [ebp+8]
 00468199    mov         al,byte ptr [eax+3]
 0046819C    mov         byte ptr [ebp-5],al
 0046819F    wait
 004681A0    fnstcw      word ptr [ebp-8]
 004681A3    wait
 004681A4    fnclex
 004681A6    fldcw       word ptr ds:[5409EC]
 004681AC    fldz
 004681AE    call        00468238
 004681B3    mov         bh,byte ptr [esi]
 004681B5    cmp         bh,2B
>004681B8    je          004681BF
 004681BA    cmp         bh,2D
>004681BD    jne         004681C0
 004681BF    inc         esi
 004681C0    mov         ecx,esi
 004681C2    call        00468243
 004681C7    xor         edx,edx
 004681C9    mov         al,byte ptr [esi]
 004681CB    cmp         al,byte ptr [ebp-5]
>004681CE    jne         004681D8
 004681D0    inc         esi
 004681D1    call        00468243
 004681D6    neg         edx
 004681D8    cmp         ecx,esi
>004681DA    je          0046822B
 004681DC    mov         al,byte ptr [esi]
 004681DE    and         al,0DF
 004681E0    cmp         al,45
>004681E2    jne         004681EE
 004681E4    inc         esi
 004681E5    push        edx
 004681E6    call        0046825F
 004681EB    pop         eax
 004681EC    add         edx,eax
 004681EE    call        00468238
 004681F3    cmp         byte ptr [esi],0
>004681F6    jne         0046822B
 004681F8    mov         eax,edx
 004681FA    cmp         bl,1
>004681FD    jne         00468202
 004681FF    add         eax,4
 00468202    push        ebx
 00468203    mov         ebx,dword ptr [ebp-4]
 00468206    call        FPower10
 0046820B    pop         ebx
 0046820C    cmp         bh,2D
>0046820F    jne         00468213
 00468211    fchs
 00468213    cmp         bl,0
>00468216    je          0046821C
 00468218    fistp       qword ptr [edi]
>0046821A    jmp         0046821E
 0046821C    fstp        tbyte ptr [edi]
 0046821E    wait
 0046821F    fnstsw      al
 00468221    test        ax,9
>00468225    jne         0046822D
 00468227    mov         al,1
>00468229    jmp         0046822F
 0046822B    fstp        st(0)
 0046822D    xor         eax,eax
 0046822F    wait
 00468230    fnclex
 00468232    fldcw       word ptr [ebp-8]
 00468235    wait
>00468236    jmp         0046828E
 00468238    lods        byte ptr [esi]
 00468239    or          al,al
>0046823B    je          00468241
 0046823D    cmp         al,20
>0046823F    je          00468238
 00468241    dec         esi
 00468242    ret
 00468243    xor         eax,eax
 00468245    xor         edx,edx
 00468247    lods        byte ptr [esi]
 00468248    sub         al,3A
 0046824A    add         al,0A
>0046824C    jae         0046825D
 0046824E    fimul       dword ptr ds:[5409E4]
 00468254    mov         dword ptr [ebp-0C],eax
 00468257    fiadd       dword ptr [ebp-0C]
 0046825A    inc         edx
>0046825B    jmp         00468247
 0046825D    dec         esi
 0046825E    ret
 0046825F    xor         eax,eax
 00468261    xor         edx,edx
 00468263    mov         cl,byte ptr [esi]
 00468265    cmp         cl,2B
>00468268    je          0046826F
 0046826A    cmp         cl,2D
>0046826D    jne         00468270
 0046826F    inc         esi
 00468270    mov         al,byte ptr [esi]
 00468272    sub         al,3A
 00468274    add         al,0A
>00468276    jae         00468286
 00468278    inc         esi
 00468279    imul        edx,edx,0A
 0046827C    add         edx,eax
 0046827E    cmp         edx,1F4
>00468284    jb          00468270
 00468286    cmp         cl,2D
>00468289    jne         0046828D
 0046828B    neg         edx
 0046828D    ret
 0046828E    pop         ebx
 0046828F    pop         esi
 00468290    pop         edi
 00468291    mov         esp,ebp
 00468293    pop         ebp
 00468294    ret         4
*}
end;

//00468298
{*procedure sub_00468298(?:?; ?:?);
begin
 00468298    push        ebp
 00468299    mov         ebp,esp
 0046829B    add         esp,0FFFFFFBC
 0046829E    mov         dword ptr [ebp-4],eax
 004682A1    push        0
 004682A3    push        0F
 004682A5    push        0
 004682A7    lea         edx,[ebp+8]
 004682AA    lea         eax,[ebp-44]
 004682AD    xor         ecx,ecx
 004682AF    call        FloatToText
 004682B4    mov         ecx,eax
 004682B6    lea         edx,[ebp-44]
 004682B9    mov         eax,dword ptr [ebp-4]
 004682BC    call        @LStrFromPCharLen
 004682C1    mov         esp,ebp
 004682C3    pop         ebp
 004682C4    ret         0C
end;*}

//004682F8
{*function sub_004682F8(?:?):?;
begin
 004682F8    push        ebp
 004682F9    mov         ebp,esp
 004682FB    add         esp,0FFFFFFE8
 004682FE    mov         dword ptr [ebp-4],eax
 00468301    mov         eax,dword ptr [ebp-4]
 00468304    call        @LStrToPChar
 00468309    lea         edx,[ebp-10]
 0046830C    xor         ecx,ecx
 0046830E    call        TextToFloat
 00468313    test        al,al
>00468315    jne         00468330
 00468317    mov         eax,dword ptr [ebp-4]
 0046831A    mov         dword ptr [ebp-18],eax
 0046831D    mov         byte ptr [ebp-14],0B
 00468321    lea         edx,[ebp-18]
 00468324    mov         eax,[0055B1BC];^SInvalidFloat:TResStringRec
 00468329    xor         ecx,ecx
 0046832B    call        004660B8
 00468330    fld         tbyte ptr [ebp-10]
 00468333    mov         esp,ebp
 00468335    pop         ebp
 00468336    ret
end;*}

//00468338
{*function sub_00468338(?:?; ?:?):?;
begin
 00468338    push        ebp
 00468339    mov         ebp,esp
 0046833B    add         esp,0FFFFFFF4
 0046833E    mov         dword ptr [ebp-8],edx
 00468341    mov         dword ptr [ebp-4],eax
 00468344    mov         eax,dword ptr [ebp-4]
 00468347    call        @LStrToPChar
 0046834C    mov         edx,dword ptr [ebp-8]
 0046834F    xor         ecx,ecx
 00468351    call        TextToFloat
 00468356    mov         byte ptr [ebp-9],al
 00468359    mov         al,byte ptr [ebp-9]
 0046835C    mov         esp,ebp
 0046835E    pop         ebp
 0046835F    ret
end;*}

//00468360
{*function sub_00468360(?:String; ?:?; ?:?):?;
begin
 00468360    push        ebp
 00468361    mov         ebp,esp
 00468363    add         esp,0FFFFFFF0
 00468366    mov         dword ptr [ebp-0C],ecx
 00468369    mov         dword ptr [ebp-8],edx
 0046836C    mov         dword ptr [ebp-4],eax
 0046836F    mov         eax,dword ptr [ebp-0C]
 00468372    push        eax
 00468373    mov         eax,dword ptr [ebp-4]
 00468376    call        @LStrToPChar
 0046837B    mov         edx,dword ptr [ebp-8]
 0046837E    xor         ecx,ecx
 00468380    call        TextToFloat
 00468385    mov         byte ptr [ebp-0D],al
 00468388    mov         al,byte ptr [ebp-0D]
 0046838B    mov         esp,ebp
 0046838D    pop         ebp
 0046838E    ret
end;*}

//00468390
{*function sub_00468390(?:?; ?:?):?;
begin
 00468390    push        ebp
 00468391    mov         ebp,esp
 00468393    add         esp,0FFFFFFE8
 00468396    mov         dword ptr [ebp-8],edx
 00468399    mov         dword ptr [ebp-4],eax
 0046839C    mov         eax,dword ptr [ebp-4]
 0046839F    call        @LStrToPChar
 004683A4    lea         edx,[ebp-18]
 004683A7    xor         ecx,ecx
 004683A9    call        TextToFloat
 004683AE    mov         byte ptr [ebp-9],al
 004683B1    cmp         byte ptr [ebp-9],0
>004683B5    je          004683C0
 004683B7    fld         tbyte ptr [ebp-18]
 004683BA    mov         eax,dword ptr [ebp-8]
 004683BD    fstp        qword ptr [eax]
 004683BF    wait
 004683C0    mov         al,byte ptr [ebp-9]
 004683C3    mov         esp,ebp
 004683C5    pop         ebp
 004683C6    ret
end;*}

//00468400
{*function sub_00468400(?:?; ?:?):?;
begin
 00468400    push        ebp
 00468401    mov         ebp,esp
 00468403    add         esp,0FFFFFFF4
 00468406    mov         dword ptr [ebp-8],edx
 00468409    mov         dword ptr [ebp-4],eax
 0046840C    mov         eax,dword ptr [ebp-4]
 0046840F    call        @LStrToPChar
 00468414    mov         edx,dword ptr [ebp-8]
 00468417    mov         cl,1
 00468419    call        TextToFloat
 0046841E    mov         byte ptr [ebp-9],al
 00468421    mov         al,byte ptr [ebp-9]
 00468424    mov         esp,ebp
 00468426    pop         ebp
 00468427    ret
end;*}

//00468428
function DateTimeToTimeStamp(DateTime:TDateTime):TTimeStamp;
begin
{*
 00468428    push        ebp
 00468429    mov         ebp,esp
 0046842B    push        ebx
 0046842C    xor         ebx,ebx
 0046842E    mov         ecx,eax
 00468430    fld         qword ptr [ebp+8]
 00468433    fmul        dword ptr [ebx+5409F0]
 00468439    sub         esp,8
 0046843C    fistp       qword ptr [esp]
 0046843F    wait
 00468440    pop         eax
 00468441    pop         edx
 00468442    or          edx,edx
>00468444    jns         00468457
 00468446    neg         edx
 00468448    neg         eax
 0046844A    sbb         edx,0
 0046844D    div         eax,dword ptr [ebx+5409F4]
 00468453    neg         eax
>00468455    jmp         0046845D
 00468457    div         eax,dword ptr [ebx+5409F4]
 0046845D    add         eax,0A955A
 00468462    mov         dword ptr [ecx],edx
 00468464    mov         dword ptr [ecx+4],eax
 00468467    pop         ebx
 00468468    pop         ebp
 00468469    ret         8
*}
end;

//0046846C
{*function sub_0046846C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0046846C    push        ebp
 0046846D    mov         ebp,esp
 0046846F    add         esp,0FFFFFFF4
 00468472    mov         word ptr [ebp-6],cx
 00468476    mov         word ptr [ebp-4],dx
 0046847A    mov         word ptr [ebp-2],ax
 0046847E    mov         byte ptr [ebp-7],0
 00468482    cmp         word ptr [ebp-2],18
>00468487    jae         004684DD
 00468489    cmp         word ptr [ebp-4],3C
>0046848E    jae         004684DD
 00468490    cmp         word ptr [ebp-6],3C
>00468495    jae         004684DD
 00468497    cmp         word ptr [ebp+0C],3E8
>0046849D    jae         004684DD
 0046849F    movzx       eax,word ptr [ebp-2]
 004684A3    imul        eax,eax,36EE80
 004684A9    movzx       edx,word ptr [ebp-4]
 004684AD    imul        edx,edx,0EA60
 004684B3    add         eax,edx
 004684B5    movzx       edx,word ptr [ebp-6]
 004684B9    imul        edx,edx,3E8
 004684BF    add         eax,edx
 004684C1    movzx       edx,word ptr [ebp+0C]
 004684C5    add         eax,edx
 004684C7    mov         dword ptr [ebp-0C],eax
 004684CA    fild        dword ptr [ebp-0C]
 004684CD    fdiv        dword ptr ds:[4684E8];86400000:Single
 004684D3    mov         eax,dword ptr [ebp+8]
 004684D6    fstp        qword ptr [eax]
 004684D8    wait
 004684D9    mov         byte ptr [ebp-7],1
 004684DD    mov         al,byte ptr [ebp-7]
 004684E0    mov         esp,ebp
 004684E2    pop         ebp
 004684E3    ret         8
end;*}

//004684EC
{*procedure sub_004684EC(?:?; ?:?; ?:?; ?:?);
begin
 004684EC    push        ebp
 004684ED    mov         ebp,esp
 004684EF    add         esp,0FFFFFFF0
 004684F2    mov         word ptr [ebp-6],cx
 004684F6    mov         word ptr [ebp-4],dx
 004684FA    mov         word ptr [ebp-2],ax
 004684FE    mov         ax,word ptr [ebp+8]
 00468502    push        eax
 00468503    lea         eax,[ebp-10]
 00468506    push        eax
 00468507    mov         cx,word ptr [ebp-6]
 0046850B    mov         dx,word ptr [ebp-4]
 0046850F    mov         ax,word ptr [ebp-2]
 00468513    call        0046846C
 00468518    test        al,al
>0046851A    jne         00468526
 0046851C    mov         eax,[0055B3A8];^STimeEncodeError:TResStringRec
 00468521    call        00466098
 00468526    fld         qword ptr [ebp-10]
 00468529    mov         esp,ebp
 0046852B    pop         ebp
 0046852C    ret         4
end;*}

//00468530
procedure DecodeTime(var Hour:Word; var Min:Word; var Sec:Word; const DateTime:TDateTime; var MSec:Word);
begin
{*
 00468530    push        ebp
 00468531    mov         ebp,esp
 00468533    add         esp,0FFFFFFE8
 00468536    mov         dword ptr [ebp-0C],ecx
 00468539    mov         dword ptr [ebp-8],edx
 0046853C    mov         dword ptr [ebp-4],eax
 0046853F    lea         eax,[ebp-10]
 00468542    push        eax
 00468543    push        dword ptr [ebp+10]
 00468546    push        dword ptr [ebp+0C]
 00468549    lea         eax,[ebp-18]
 0046854C    call        DateTimeToTimeStamp
 00468551    mov         eax,dword ptr [ebp-18]
 00468554    lea         ecx,[ebp-0E]
 00468557    mov         dx,0EA60
 0046855B    call        DivMod
 00468560    mov         eax,dword ptr [ebp-8]
 00468563    push        eax
 00468564    mov         ecx,dword ptr [ebp-4]
 00468567    movzx       eax,word ptr [ebp-0E]
 0046856B    mov         dx,3C
 0046856F    call        DivMod
 00468574    mov         eax,dword ptr [ebp+8]
 00468577    push        eax
 00468578    mov         ecx,dword ptr [ebp-0C]
 0046857B    movzx       eax,word ptr [ebp-10]
 0046857F    mov         dx,3E8
 00468583    call        DivMod
 00468588    mov         esp,ebp
 0046858A    pop         ebp
 0046858B    ret         0C
*}
end;

//00468590
{*function sub_00468590(?:Word):?;
begin
 00468590    push        ebp
 00468591    mov         ebp,esp
 00468593    push        ecx
 00468594    mov         word ptr [ebp-2],ax
 00468598    movzx       eax,word ptr [ebp-2]
 0046859C    and         eax,3
 0046859F    test        eax,eax
>004685A1    jne         004685C5
 004685A3    movzx       eax,word ptr [ebp-2]
 004685A7    mov         ecx,64
 004685AC    xor         edx,edx
 004685AE    div         eax,ecx
 004685B0    test        edx,edx
>004685B2    jne         004685C9
 004685B4    movzx       eax,word ptr [ebp-2]
 004685B8    mov         ecx,190
 004685BD    xor         edx,edx
 004685BF    div         eax,ecx
 004685C1    test        edx,edx
>004685C3    je          004685C9
 004685C5    xor         eax,eax
>004685C7    jmp         004685CB
 004685C9    mov         al,1
 004685CB    mov         byte ptr [ebp-3],al
 004685CE    mov         al,byte ptr [ebp-3]
 004685D1    pop         ecx
 004685D2    pop         ebp
 004685D3    ret
end;*}

//004685D4
{*function sub_004685D4(?:Integer; ?:?; ?:?; ?:?):?;
begin
 004685D4    push        ebp
 004685D5    mov         ebp,esp
 004685D7    add         esp,0FFFFFFE8
 004685DA    push        ebx
 004685DB    mov         word ptr [ebp-6],cx
 004685DF    mov         word ptr [ebp-4],dx
 004685E3    mov         word ptr [ebp-2],ax
 004685E7    mov         byte ptr [ebp-7],0
 004685EB    mov         ax,word ptr [ebp-2]
 004685EF    call        00468590
 004685F4    and         eax,7F
 004685F7    lea         eax,[eax+eax*2]
 004685FA    lea         eax,[eax*8+54094C]
 00468601    mov         dword ptr [ebp-10],eax
 00468604    cmp         word ptr [ebp-2],1
>00468609    jb          004686CC
 0046860F    cmp         word ptr [ebp-2],270F
>00468615    ja          004686CC
 0046861B    cmp         word ptr [ebp-4],1
>00468620    jb          004686CC
 00468626    cmp         word ptr [ebp-4],0C
>0046862B    ja          004686CC
 00468631    cmp         word ptr [ebp-6],1
>00468636    jb          004686CC
 0046863C    movzx       eax,word ptr [ebp-4]
 00468640    mov         edx,dword ptr [ebp-10]
 00468643    mov         ax,word ptr [edx+eax*2-2]
 00468648    cmp         ax,word ptr [ebp-6]
>0046864C    jb          004686CC
 0046864E    movzx       eax,word ptr [ebp-4]
 00468652    dec         eax
 00468653    test        eax,eax
>00468655    jle         00468678
 00468657    mov         dword ptr [ebp-14],eax
 0046865A    mov         dword ptr [ebp-0C],1
 00468661    mov         eax,dword ptr [ebp-10]
 00468664    mov         edx,dword ptr [ebp-0C]
 00468667    mov         ax,word ptr [eax+edx*2-2]
 0046866C    add         word ptr [ebp-6],ax
 00468670    inc         dword ptr [ebp-0C]
 00468673    dec         dword ptr [ebp-14]
>00468676    jne         00468661
 00468678    movzx       eax,word ptr [ebp-2]
 0046867C    dec         eax
 0046867D    mov         dword ptr [ebp-0C],eax
 00468680    mov         eax,dword ptr [ebp-0C]
 00468683    mov         ecx,64
 00468688    cdq
 00468689    idiv        eax,ecx
 0046868B    imul        ecx,dword ptr [ebp-0C],16D
 00468692    mov         edx,dword ptr [ebp-0C]
 00468695    test        edx,edx
>00468697    jns         0046869C
 00468699    add         edx,3
 0046869C    sar         edx,2
 0046869F    add         ecx,edx
 004686A1    sub         ecx,eax
 004686A3    mov         eax,dword ptr [ebp-0C]
 004686A6    mov         ebx,190
 004686AB    cdq
 004686AC    idiv        eax,ebx
 004686AE    add         ecx,eax
 004686B0    movzx       eax,word ptr [ebp-6]
 004686B4    add         ecx,eax
 004686B6    sub         ecx,0A955A
 004686BC    mov         dword ptr [ebp-18],ecx
 004686BF    fild        dword ptr [ebp-18]
 004686C2    mov         eax,dword ptr [ebp+8]
 004686C5    fstp        qword ptr [eax]
 004686C7    wait
 004686C8    mov         byte ptr [ebp-7],1
 004686CC    mov         al,byte ptr [ebp-7]
 004686CF    pop         ebx
 004686D0    mov         esp,ebp
 004686D2    pop         ebp
 004686D3    ret         4
end;*}

//004686D8
{*function sub_004686D8(?:?; ?:?; ?:?):?;
begin
 004686D8    push        ebp
 004686D9    mov         ebp,esp
 004686DB    add         esp,0FFFFFFF0
 004686DE    mov         word ptr [ebp-6],cx
 004686E2    mov         word ptr [ebp-4],dx
 004686E6    mov         word ptr [ebp-2],ax
 004686EA    lea         eax,[ebp-10]
 004686ED    push        eax
 004686EE    mov         cx,word ptr [ebp-6]
 004686F2    mov         dx,word ptr [ebp-4]
 004686F6    mov         ax,word ptr [ebp-2]
 004686FA    call        004685D4
 004686FF    test        al,al
>00468701    jne         0046870D
 00468703    mov         eax,[0055B508];^SDateEncodeError:TResStringRec
 00468708    call        00466098
 0046870D    fld         qword ptr [ebp-10]
 00468710    mov         esp,ebp
 00468712    pop         ebp
 00468713    ret
end;*}

//00468714
{*function sub_00468714(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00468714    push        ebp
 00468715    mov         ebp,esp
 00468717    add         esp,0FFFFFFD8
 0046871A    mov         dword ptr [ebp-0C],ecx
 0046871D    mov         dword ptr [ebp-8],edx
 00468720    mov         dword ptr [ebp-4],eax
 00468723    push        dword ptr [ebp+10]
 00468726    push        dword ptr [ebp+0C]
 00468729    lea         eax,[ebp-28]
 0046872C    call        DateTimeToTimeStamp
 00468731    mov         eax,dword ptr [ebp-24]
 00468734    mov         dword ptr [ebp-1C],eax
 00468737    cmp         dword ptr [ebp-1C],0
>0046873B    jg          00468766
 0046873D    mov         eax,dword ptr [ebp-4]
 00468740    mov         word ptr [eax],0
 00468745    mov         eax,dword ptr [ebp-8]
 00468748    mov         word ptr [eax],0
 0046874D    mov         eax,dword ptr [ebp-0C]
 00468750    mov         word ptr [eax],0
 00468755    mov         eax,dword ptr [ebp+8]
 00468758    mov         word ptr [eax],0
 0046875D    mov         byte ptr [ebp-0D],0
>00468761    jmp         00468884
 00468766    mov         eax,dword ptr [ebp-1C]
 00468769    mov         ecx,7
 0046876E    cdq
 0046876F    idiv        eax,ecx
 00468771    inc         edx
 00468772    mov         eax,dword ptr [ebp+8]
 00468775    mov         word ptr [eax],dx
 00468778    dec         dword ptr [ebp-1C]
 0046877B    mov         word ptr [ebp-10],1
 00468781    cmp         dword ptr [ebp-1C],23AB1
>00468788    jl          004687A0
 0046878A    sub         dword ptr [ebp-1C],23AB1
 00468791    add         word ptr [ebp-10],190
 00468797    cmp         dword ptr [ebp-1C],23AB1
>0046879E    jge         0046878A
 004687A0    lea         eax,[ebp-14]
 004687A3    push        eax
 004687A4    lea         ecx,[ebp-16]
 004687A7    mov         dx,8EAC
 004687AB    mov         eax,dword ptr [ebp-1C]
 004687AE    call        DivMod
 004687B3    cmp         word ptr [ebp-16],4
>004687B8    jne         004687C4
 004687BA    dec         word ptr [ebp-16]
 004687BE    add         word ptr [ebp-14],8EAC
 004687C4    imul        ax,word ptr [ebp-16],64
 004687C9    add         word ptr [ebp-10],ax
 004687CD    lea         eax,[ebp-14]
 004687D0    push        eax
 004687D1    lea         ecx,[ebp-16]
 004687D4    movzx       eax,word ptr [ebp-14]
 004687D8    mov         dx,5B5
 004687DC    call        DivMod
 004687E1    mov         ax,word ptr [ebp-16]
 004687E5    shl         eax,2
 004687E8    add         word ptr [ebp-10],ax
 004687EC    lea         eax,[ebp-14]
 004687EF    push        eax
 004687F0    lea         ecx,[ebp-16]
 004687F3    movzx       eax,word ptr [ebp-14]
 004687F7    mov         dx,16D
 004687FB    call        DivMod
 00468800    cmp         word ptr [ebp-16],4
>00468805    jne         00468811
 00468807    dec         word ptr [ebp-16]
 0046880B    add         word ptr [ebp-14],16D
 00468811    mov         ax,word ptr [ebp-16]
 00468815    add         word ptr [ebp-10],ax
 00468819    mov         ax,word ptr [ebp-10]
 0046881D    call        00468590
 00468822    mov         byte ptr [ebp-0D],al
 00468825    xor         eax,eax
 00468827    mov         al,byte ptr [ebp-0D]
 0046882A    lea         eax,[eax+eax*2]
 0046882D    lea         eax,[eax*8+54094C]
 00468834    mov         dword ptr [ebp-20],eax
 00468837    mov         word ptr [ebp-12],1
 0046883D    movzx       eax,word ptr [ebp-12]
 00468841    mov         edx,dword ptr [ebp-20]
 00468844    mov         ax,word ptr [edx+eax*2-2]
 00468849    mov         word ptr [ebp-16],ax
 0046884D    mov         ax,word ptr [ebp-14]
 00468851    cmp         ax,word ptr [ebp-16]
>00468855    jb          00468865
 00468857    mov         ax,word ptr [ebp-16]
 0046885B    sub         word ptr [ebp-14],ax
 0046885F    inc         word ptr [ebp-12]
>00468863    jmp         0046883D
 00468865    mov         eax,dword ptr [ebp-4]
 00468868    mov         dx,word ptr [ebp-10]
 0046886C    mov         word ptr [eax],dx
 0046886F    mov         eax,dword ptr [ebp-8]
 00468872    mov         dx,word ptr [ebp-12]
 00468876    mov         word ptr [eax],dx
 00468879    mov         ax,word ptr [ebp-14]
 0046887D    inc         eax
 0046887E    mov         edx,dword ptr [ebp-0C]
 00468881    mov         word ptr [edx],ax
 00468884    mov         al,byte ptr [ebp-0D]
 00468887    mov         esp,ebp
 00468889    pop         ebp
 0046888A    ret         0C
end;*}

//00468890
procedure DecodeDate(var Year:Word; var Month:Word; var Day:Word; const DateTime:TDateTime);
begin
{*
 00468890    push        ebp
 00468891    mov         ebp,esp
 00468893    add         esp,0FFFFFFF0
 00468896    mov         dword ptr [ebp-0C],ecx
 00468899    mov         dword ptr [ebp-8],edx
 0046889C    mov         dword ptr [ebp-4],eax
 0046889F    push        dword ptr [ebp+0C]
 004688A2    push        dword ptr [ebp+8]
 004688A5    lea         eax,[ebp-0E]
 004688A8    push        eax
 004688A9    mov         ecx,dword ptr [ebp-0C]
 004688AC    mov         edx,dword ptr [ebp-8]
 004688AF    mov         eax,dword ptr [ebp-4]
 004688B2    call        00468714
 004688B7    mov         esp,ebp
 004688B9    pop         ebp
 004688BA    ret         8
*}
end;

//004688C0
{*function sub_004688C0(?:?; ?:?):?;
begin
 004688C0    push        ebp
 004688C1    mov         ebp,esp
 004688C3    add         esp,0FFFFFFF4
 004688C6    push        dword ptr [ebp+0C]
 004688C9    push        dword ptr [ebp+8]
 004688CC    lea         eax,[ebp-0C]
 004688CF    call        DateTimeToTimeStamp
 004688D4    mov         eax,dword ptr [ebp-8]
 004688D7    mov         ecx,7
 004688DC    cdq
 004688DD    idiv        eax,ecx
 004688DF    inc         edx
 004688E0    mov         word ptr [ebp-2],dx
 004688E4    mov         ax,word ptr [ebp-2]
 004688E8    mov         esp,ebp
 004688EA    pop         ebp
 004688EB    ret         8
end;*}

//004688F0
procedure sub_004688F0;
begin
{*
 004688F0    push        ebp
 004688F1    mov         ebp,esp
 004688F3    add         esp,0FFFFFFE0
 004688F6    lea         eax,[ebp-18]
 004688F9    push        eax
 004688FA    call        kernel32.GetLocalTime
 004688FF    mov         cx,word ptr [ebp-12]
 00468903    mov         dx,word ptr [ebp-16]
 00468907    mov         ax,word ptr [ebp-18]
 0046890B    call        004686D8
 00468910    fstp        qword ptr [ebp-20]
 00468913    wait
 00468914    mov         ax,word ptr [ebp-0A]
 00468918    push        eax
 00468919    mov         cx,word ptr [ebp-0C]
 0046891D    mov         dx,word ptr [ebp-0E]
 00468921    mov         ax,word ptr [ebp-10]
 00468925    call        004684EC
 0046892A    fadd        qword ptr [ebp-20]
 0046892D    fstp        qword ptr [ebp-8]
 00468930    wait
 00468931    fld         qword ptr [ebp-8]
 00468934    mov         esp,ebp
 00468936    pop         ebp
 00468937    ret
*}
end;

//00468938
{*function sub_00468938:?;
begin
 00468938    push        ebp
 00468939    mov         ebp,esp
 0046893B    add         esp,0FFFFFFEC
 0046893E    lea         eax,[ebp-12]
 00468941    push        eax
 00468942    call        kernel32.GetLocalTime
 00468947    mov         ax,word ptr [ebp-12]
 0046894B    mov         word ptr [ebp-2],ax
 0046894F    mov         ax,word ptr [ebp-2]
 00468953    mov         esp,ebp
 00468955    pop         ebp
 00468956    ret
end;*}

//00468958
{*procedure sub_00468958(?:void ; ?:Longint; ?:?);
begin
 00468958    push        ebp
 00468959    mov         ebp,esp
 0046895B    add         esp,0FFFFFFF4
 0046895E    mov         dword ptr [ebp-8],edx
 00468961    mov         dword ptr [ebp-4],eax
 00468964    mov         eax,dword ptr [ebp+8]
 00468967    mov         edx,100
 0046896C    sub         edx,dword ptr [eax-104]
 00468972    mov         dword ptr [ebp-0C],edx
 00468975    mov         eax,dword ptr [ebp-0C]
 00468978    cmp         eax,dword ptr [ebp-8]
>0046897B    jle         00468983
 0046897D    mov         eax,dword ptr [ebp-8]
 00468980    mov         dword ptr [ebp-0C],eax
 00468983    cmp         dword ptr [ebp-0C],0
>00468987    je          004689A7
 00468989    mov         eax,dword ptr [ebp+8]
 0046898C    mov         eax,dword ptr [eax-104]
 00468992    mov         edx,dword ptr [ebp+8]
 00468995    lea         edx,[edx+eax-100]
 0046899C    mov         eax,dword ptr [ebp-4]
 0046899F    mov         ecx,dword ptr [ebp-0C]
 004689A2    call        Move
 004689A7    mov         eax,dword ptr [ebp+8]
 004689AA    mov         edx,dword ptr [ebp-0C]
 004689AD    add         dword ptr [eax-104],edx
 004689B3    mov         esp,ebp
 004689B5    pop         ebp
 004689B6    ret
end;*}

//004689B8
{*procedure sub_004689B8(?:?; ?:?);
begin
 004689B8    push        ebp
 004689B9    mov         ebp,esp
 004689BB    push        ecx
 004689BC    mov         dword ptr [ebp-4],eax
 004689BF    mov         eax,dword ptr [ebp+8]
 004689C2    push        eax
 004689C3    mov         eax,dword ptr [ebp-4]
 004689C6    call        @DynArrayLength
 004689CB    mov         edx,eax
 004689CD    mov         eax,dword ptr [ebp-4]
 004689D0    call        00468958
 004689D5    pop         ecx
 004689D6    pop         ecx
 004689D7    pop         ebp
 004689D8    ret
end;*}

//004689DC
{*procedure sub_004689DC(?:?; ?:?; ?:?);
begin
 004689DC    push        ebp
 004689DD    mov         ebp,esp
 004689DF    add         esp,0FFFFFFD8
 004689E2    mov         dword ptr [ebp-8],edx
 004689E5    mov         dword ptr [ebp-4],eax
 004689E8    mov         eax,dword ptr [ebp+8]
 004689EB    push        eax
 004689EC    push        4
 004689EE    mov         eax,dword ptr [ebp-8]
 004689F1    mov         dword ptr [ebp-28],eax
 004689F4    mov         byte ptr [ebp-24],0
 004689F8    mov         eax,dword ptr [ebp-4]
 004689FB    mov         dword ptr [ebp-20],eax
 004689FE    mov         byte ptr [ebp-1C],0
 00468A02    lea         eax,[ebp-28]
 00468A05    push        eax
 00468A06    push        1
 00468A08    mov         ecx,5409F8
 00468A0D    lea         eax,[ebp-18]
 00468A10    mov         edx,10
 00468A15    call        FormatBuf
 00468A1A    mov         edx,eax
 00468A1C    lea         eax,[ebp-18]
 00468A1F    call        00468958
 00468A24    pop         ecx
 00468A25    mov         esp,ebp
 00468A27    pop         ebp
 00468A28    ret
end;*}

//00468A2C
{*procedure sub_00468A2C(?:?);
begin
 00468A2C    push        ebp
 00468A2D    mov         ebp,esp
 00468A2F    push        ecx
 00468A30    mov         eax,dword ptr [ebp+8]
 00468A33    mov         eax,dword ptr [eax-4]
 00468A36    mov         dword ptr [ebp-4],eax
>00468A39    jmp         00468A41
 00468A3B    mov         eax,dword ptr [ebp+8]
 00468A3E    inc         dword ptr [eax-4]
 00468A41    mov         eax,dword ptr [ebp+8]
 00468A44    mov         eax,dword ptr [eax-4]
 00468A47    mov         al,byte ptr [eax]
 00468A49    mov         edx,dword ptr [ebp+8]
 00468A4C    cmp         al,byte ptr [edx-5]
>00468A4F    je          00468A3B
 00468A51    mov         eax,dword ptr [ebp+8]
 00468A54    mov         eax,dword ptr [eax-4]
 00468A57    sub         eax,dword ptr [ebp-4]
 00468A5A    inc         eax
 00468A5B    mov         edx,dword ptr [ebp+8]
 00468A5E    mov         dword ptr [edx-0C],eax
 00468A61    pop         ecx
 00468A62    pop         ebp
 00468A63    ret
end;*}

//00468A64
procedure GetDate;
begin
{*
 00468A64    push        ebp
 00468A65    mov         ebp,esp
 00468A67    mov         eax,dword ptr [ebp+8]
 00468A6A    cmp         byte ptr [eax-13],0
>00468A6E    jne         00468A9A
 00468A70    mov         eax,dword ptr [ebp+8]
 00468A73    mov         eax,dword ptr [eax+8]
 00468A76    push        dword ptr [eax+0C]
 00468A79    push        dword ptr [eax+8]
 00468A7C    mov         eax,dword ptr [ebp+8]
 00468A7F    lea         ecx,[eax-12]
 00468A82    mov         eax,dword ptr [ebp+8]
 00468A85    lea         edx,[eax-10]
 00468A88    mov         eax,dword ptr [ebp+8]
 00468A8B    add         eax,0FFFFFFF2
 00468A8E    call        DecodeDate
 00468A93    mov         eax,dword ptr [ebp+8]
 00468A96    mov         byte ptr [eax-13],1
 00468A9A    pop         ebp
 00468A9B    ret
*}
end;

//00468A9C
procedure GetTime;
begin
{*
 00468A9C    push        ebp
 00468A9D    mov         ebp,esp
 00468A9F    mov         eax,dword ptr [ebp+8]
 00468AA2    cmp         byte ptr [eax-1D],0
>00468AA6    jne         00468AD9
 00468AA8    mov         eax,dword ptr [ebp+8]
 00468AAB    mov         eax,dword ptr [eax+8]
 00468AAE    push        dword ptr [eax+0C]
 00468AB1    push        dword ptr [eax+8]
 00468AB4    mov         eax,dword ptr [ebp+8]
 00468AB7    add         eax,0FFFFFFE4
 00468ABA    push        eax
 00468ABB    mov         eax,dword ptr [ebp+8]
 00468ABE    lea         ecx,[eax-1A]
 00468AC1    mov         eax,dword ptr [ebp+8]
 00468AC4    lea         edx,[eax-18]
 00468AC7    mov         eax,dword ptr [ebp+8]
 00468ACA    add         eax,0FFFFFFEA
 00468ACD    call        DecodeTime
 00468AD2    mov         eax,dword ptr [ebp+8]
 00468AD5    mov         byte ptr [eax-1D],1
 00468AD9    pop         ebp
 00468ADA    ret
*}
end;

//00468ADC
{*procedure sub_00468ADC(?:?; ?:?; ?:?);
begin
 00468ADC    push        ebp
 00468ADD    mov         ebp,esp
 00468ADF    add         esp,0FFFFFEDC
 00468AE5    xor         ecx,ecx
 00468AE7    mov         dword ptr [ebp-124],ecx
 00468AED    mov         dword ptr [ebp-0C],ecx
 00468AF0    mov         dword ptr [ebp-8],edx
 00468AF3    mov         dword ptr [ebp-4],eax
 00468AF6    xor         eax,eax
 00468AF8    push        ebp
 00468AF9    push        468C49
 00468AFE    push        dword ptr fs:[eax]
 00468B01    mov         dword ptr fs:[eax],esp
 00468B04    mov         eax,dword ptr [ebp-8]
 00468B07    call        @LStrClr
 00468B0C    mov         eax,dword ptr [ebp+8]
 00468B0F    mov         ax,word ptr [eax-0E]
 00468B13    mov         word ptr [ebp-20],ax
 00468B17    mov         eax,dword ptr [ebp+8]
 00468B1A    mov         ax,word ptr [eax-10]
 00468B1E    mov         word ptr [ebp-1E],ax
 00468B22    mov         eax,dword ptr [ebp+8]
 00468B25    mov         ax,word ptr [eax-12]
 00468B29    mov         word ptr [ebp-1A],ax
 00468B2D    lea         eax,[ebp-0C]
 00468B30    mov         edx,468C5C;'gg'
 00468B35    call        @LStrLAsg
 00468B3A    push        100
 00468B3F    lea         eax,[ebp-120]
 00468B45    push        eax
 00468B46    mov         eax,dword ptr [ebp-0C]
 00468B49    call        @LStrToPChar
 00468B4E    push        eax
 00468B4F    lea         eax,[ebp-20]
 00468B52    push        eax
 00468B53    push        4
 00468B55    call        kernel32.GetThreadLocale
 00468B5A    push        eax
 00468B5B    call        kernel32.GetDateFormatA
 00468B60    test        eax,eax
>00468B62    je          00468C28
 00468B68    mov         eax,dword ptr [ebp-8]
 00468B6B    lea         edx,[ebp-120]
 00468B71    mov         ecx,100
 00468B76    call        @LStrFromArray
 00468B7B    cmp         dword ptr [ebp-4],1
>00468B7F    jne         00468C28
 00468B85    mov         eax,[0055D9C8];gvar_0055D9C8
 00468B8A    sub         eax,4
>00468B8D    je          00468BBE
 00468B8F    sub         eax,0D
>00468B92    jne         00468C28
 00468B98    mov         eax,dword ptr [ebp-8]
 00468B9B    push        eax
 00468B9C    mov         eax,dword ptr [ebp-8]
 00468B9F    mov         eax,dword ptr [eax]
 00468BA1    mov         edx,1
 00468BA6    call        0046B878
 00468BAB    mov         ecx,eax
 00468BAD    mov         eax,dword ptr [ebp-8]
 00468BB0    mov         eax,dword ptr [eax]
 00468BB2    mov         edx,1
 00468BB7    call        @LStrCopy
>00468BBC    jmp         00468C28
 00468BBE    cmp         dword ptr ds:[55D9CC],1;gvar_0055D9CC
>00468BC5    jne         00468C28
 00468BC7    mov         eax,dword ptr [ebp-8]
 00468BCA    mov         eax,dword ptr [eax]
 00468BCC    call        @DynArrayLength
 00468BD1    mov         edx,eax
 00468BD3    mov         eax,dword ptr [ebp-8]
 00468BD6    mov         eax,dword ptr [eax]
 00468BD8    call        0046B688
 00468BDD    cmp         eax,4
>00468BE0    jne         00468C28
 00468BE2    mov         eax,dword ptr [ebp-8]
 00468BE5    mov         eax,dword ptr [eax]
 00468BE7    mov         edx,3
 00468BEC    call        0046B800
 00468BF1    lea         edx,[ebp-120]
 00468BF7    add         eax,edx
 00468BF9    dec         eax
 00468BFA    mov         dword ptr [ebp-10],eax
 00468BFD    lea         eax,[ebp-124]
 00468C03    mov         edx,dword ptr [ebp-10]
 00468C06    call        @LStrFromPChar
 00468C0B    mov         eax,dword ptr [ebp-124]
 00468C11    mov         edx,2
 00468C16    call        0046B878
 00468C1B    mov         ecx,eax
 00468C1D    mov         eax,dword ptr [ebp-8]
 00468C20    mov         edx,dword ptr [ebp-10]
 00468C23    call        @LStrFromPCharLen
 00468C28    xor         eax,eax
 00468C2A    pop         edx
 00468C2B    pop         ecx
 00468C2C    pop         ecx
 00468C2D    mov         dword ptr fs:[eax],edx
 00468C30    push        468C50
 00468C35    lea         eax,[ebp-124]
 00468C3B    call        @LStrClr
 00468C40    lea         eax,[ebp-0C]
 00468C43    call        @LStrClr
 00468C48    ret
>00468C49    jmp         @HandleFinally
>00468C4E    jmp         00468C35
 00468C50    mov         esp,ebp
 00468C52    pop         ebp
 00468C53    ret
end;*}

//00468C60
{*procedure sub_00468C60(?:?; ?:?; ?:?);
begin
 00468C60    push        ebp
 00468C61    mov         ebp,esp
 00468C63    add         esp,0FFFFFEE4
 00468C69    xor         ecx,ecx
 00468C6B    mov         dword ptr [ebp-0C],ecx
 00468C6E    mov         dword ptr [ebp-8],edx
 00468C71    mov         dword ptr [ebp-4],eax
 00468C74    xor         eax,eax
 00468C76    push        ebp
 00468C77    push        468D50
 00468C7C    push        dword ptr fs:[eax]
 00468C7F    mov         dword ptr fs:[eax],esp
 00468C82    mov         eax,dword ptr [ebp-8]
 00468C85    call        @LStrClr
 00468C8A    mov         eax,dword ptr [ebp+8]
 00468C8D    mov         ax,word ptr [eax-0E]
 00468C91    mov         word ptr [ebp-1C],ax
 00468C95    mov         eax,dword ptr [ebp+8]
 00468C98    mov         ax,word ptr [eax-10]
 00468C9C    mov         word ptr [ebp-1A],ax
 00468CA0    mov         eax,dword ptr [ebp+8]
 00468CA3    mov         ax,word ptr [eax-12]
 00468CA7    mov         word ptr [ebp-16],ax
 00468CAB    cmp         dword ptr [ebp-4],2
>00468CAF    jg          00468CC0
 00468CB1    lea         eax,[ebp-0C]
 00468CB4    mov         edx,468D64;'yy'
 00468CB9    call        @LStrLAsg
>00468CBE    jmp         00468CCD
 00468CC0    lea         eax,[ebp-0C]
 00468CC3    mov         edx,468D70;'yyyy'
 00468CC8    call        @LStrLAsg
 00468CCD    push        100
 00468CD2    lea         eax,[ebp-11C]
 00468CD8    push        eax
 00468CD9    mov         eax,dword ptr [ebp-0C]
 00468CDC    call        @LStrToPChar
 00468CE1    push        eax
 00468CE2    lea         eax,[ebp-1C]
 00468CE5    push        eax
 00468CE6    push        4
 00468CE8    call        kernel32.GetThreadLocale
 00468CED    push        eax
 00468CEE    call        kernel32.GetDateFormatA
 00468CF3    test        eax,eax
>00468CF5    je          00468D3A
 00468CF7    mov         eax,dword ptr [ebp-8]
 00468CFA    lea         edx,[ebp-11C]
 00468D00    mov         ecx,100
 00468D05    call        @LStrFromArray
 00468D0A    cmp         dword ptr [ebp-4],1
>00468D0E    jne         00468D3A
 00468D10    mov         eax,dword ptr [ebp-8]
 00468D13    mov         eax,dword ptr [eax]
 00468D15    cmp         byte ptr [eax],30
>00468D18    jne         00468D3A
 00468D1A    mov         eax,dword ptr [ebp-8]
 00468D1D    push        eax
 00468D1E    mov         eax,dword ptr [ebp-8]
 00468D21    mov         eax,dword ptr [eax]
 00468D23    call        @DynArrayLength
 00468D28    mov         ecx,eax
 00468D2A    dec         ecx
 00468D2B    mov         eax,dword ptr [ebp-8]
 00468D2E    mov         eax,dword ptr [eax]
 00468D30    mov         edx,2
 00468D35    call        @LStrCopy
 00468D3A    xor         eax,eax
 00468D3C    pop         edx
 00468D3D    pop         ecx
 00468D3E    pop         ecx
 00468D3F    mov         dword ptr fs:[eax],edx
 00468D42    push        468D57
 00468D47    lea         eax,[ebp-0C]
 00468D4A    call        @LStrClr
 00468D4F    ret
>00468D50    jmp         @HandleFinally
>00468D55    jmp         00468D47
 00468D57    mov         esp,ebp
 00468D59    pop         ebp
 00468D5A    ret
end;*}

//00468D78
{*procedure sub_00468D78(?:?; ?:?);
begin
 00468D78    push        ebp
 00468D79    mov         ebp,esp
 00468D7B    add         esp,0FFFFFFCC
 00468D7E    xor         edx,edx
 00468D80    mov         dword ptr [ebp-34],edx
 00468D83    mov         dword ptr [ebp-30],edx
 00468D86    mov         dword ptr [ebp-4],eax
 00468D89    xor         eax,eax
 00468D8B    push        ebp
 00468D8C    push        46954E
 00468D91    push        dword ptr fs:[eax]
 00468D94    mov         dword ptr fs:[eax],esp
 00468D97    cmp         dword ptr [ebp-4],0
>00468D9B    je          00469533
 00468DA1    mov         eax,dword ptr [ebp+8]
 00468DA4    cmp         dword ptr [eax-108],2
>00468DAB    jge         00469533
 00468DB1    mov         eax,dword ptr [ebp+8]
 00468DB4    inc         dword ptr [eax-108]
 00468DBA    mov         byte ptr [ebp-1F],20
 00468DBE    mov         byte ptr [ebp-13],0
 00468DC2    mov         byte ptr [ebp-1D],0
 00468DC6    mov         byte ptr [ebp-20],0
>00468DCA    jmp         0046951E
 00468DCF    mov         eax,dword ptr [ebp-4]
 00468DD2    mov         al,byte ptr [eax]
 00468DD4    mov         byte ptr [ebp-5],al
 00468DD7    mov         al,byte ptr [ebp-5]
 00468DDA    and         eax,0FF
 00468DDF    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>00468DE6    jae         00468E13
 00468DE8    mov         eax,dword ptr [ebp+8]
 00468DEB    push        eax
 00468DEC    mov         eax,dword ptr [ebp-4]
 00468DEF    call        0046B8EC
 00468DF4    mov         edx,eax
 00468DF6    mov         eax,dword ptr [ebp-4]
 00468DF9    call        00468958
 00468DFE    pop         ecx
 00468DFF    mov         eax,dword ptr [ebp-4]
 00468E02    call        0046B920
 00468E07    mov         dword ptr [ebp-4],eax
 00468E0A    mov         byte ptr [ebp-1F],20
>00468E0E    jmp         0046951E
 00468E13    mov         eax,dword ptr [ebp-4]
 00468E16    call        0046B920
 00468E1B    mov         dword ptr [ebp-4],eax
 00468E1E    mov         al,byte ptr [ebp-5]
 00468E21    mov         byte ptr [ebp-1E],al
 00468E24    mov         al,byte ptr [ebp-1E]
 00468E27    add         al,9F
 00468E29    sub         al,1A
>00468E2B    jae         00468E31
 00468E2D    sub         byte ptr [ebp-1E],20
 00468E31    mov         al,byte ptr [ebp-1E]
 00468E34    add         al,0BF
 00468E36    sub         al,1A
>00468E38    jae         00468E50
 00468E3A    cmp         byte ptr [ebp-1E],4D
>00468E3E    jne         00468E4A
 00468E40    cmp         byte ptr [ebp-1F],48
>00468E44    jne         00468E4A
 00468E46    mov         byte ptr [ebp-1E],4E
 00468E4A    mov         al,byte ptr [ebp-1E]
 00468E4D    mov         byte ptr [ebp-1F],al
 00468E50    xor         eax,eax
 00468E52    mov         al,byte ptr [ebp-1E]
 00468E55    add         eax,0FFFFFFDE
 00468E58    cmp         eax,38
>00468E5B    ja          0046950C
 00468E61    mov         al,byte ptr [eax+468E6E]
 00468E67    jmp         dword ptr [eax*4+468EA7]
 00468E67    db          15
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          15
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          13
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          14
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          11
 00468E67    db          0
 00468E67    db          12
 00468E67    db          5
 00468E67    db          3
 00468E67    db          0
 00468E67    db          2
 00468E67    db          6
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          4
 00468E67    db          7
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          8
 00468E67    db          9
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          0
 00468E67    db          1
 00468E67    db          10
 00468E67    dd          0046950C
 00468E67    dd          00468EE7
 00468E67    dd          00468F36
 00468E67    dd          00468F63
 00468E67    dd          00468F90
 00468E67    dd          00468FF5
 00468E67    dd          004690A2
 00468E67    dd          004691C1
 00468E67    dd          004691F2
 00468E67    dd          00469223
 00468E67    dd          00469258
 00468E67    dd          00469289
 00468E67    dd          00469408
 00468E67    dd          00469466
 00468E67    dd          0046948C
 00468E67    dd          004694AF
 00468EE7    push        ebp
 00468EE8    call        00468A2C
 00468EED    pop         ecx
 00468EEE    push        ebp
 00468EEF    call        GetDate
 00468EF4    pop         ecx
 00468EF5    cmp         dword ptr [ebp-0C],2
>00468EF9    jg          00468F1E
 00468EFB    mov         eax,dword ptr [ebp+8]
 00468EFE    push        eax
 00468EFF    movzx       eax,word ptr [ebp-0E]
 00468F03    mov         ecx,64
 00468F08    xor         edx,edx
 00468F0A    div         eax,ecx
 00468F0C    mov         eax,edx
 00468F0E    mov         edx,2
 00468F13    call        004689DC
 00468F18    pop         ecx
>00468F19    jmp         0046951E
 00468F1E    mov         eax,dword ptr [ebp+8]
 00468F21    push        eax
 00468F22    movzx       eax,word ptr [ebp-0E]
 00468F26    mov         edx,4
 00468F2B    call        004689DC
 00468F30    pop         ecx
>00468F31    jmp         0046951E
 00468F36    push        ebp
 00468F37    call        00468A2C
 00468F3C    pop         ecx
 00468F3D    push        ebp
 00468F3E    call        GetDate
 00468F43    pop         ecx
 00468F44    mov         eax,dword ptr [ebp+8]
 00468F47    push        eax
 00468F48    push        ebp
 00468F49    lea         edx,[ebp-30]
 00468F4C    mov         eax,dword ptr [ebp-0C]
 00468F4F    call        00468ADC
 00468F54    pop         ecx
 00468F55    mov         eax,dword ptr [ebp-30]
 00468F58    call        004689B8
 00468F5D    pop         ecx
>00468F5E    jmp         0046951E
 00468F63    push        ebp
 00468F64    call        00468A2C
 00468F69    pop         ecx
 00468F6A    push        ebp
 00468F6B    call        GetDate
 00468F70    pop         ecx
 00468F71    mov         eax,dword ptr [ebp+8]
 00468F74    push        eax
 00468F75    push        ebp
 00468F76    lea         edx,[ebp-34]
 00468F79    mov         eax,dword ptr [ebp-0C]
 00468F7C    call        00468C60
 00468F81    pop         ecx
 00468F82    mov         eax,dword ptr [ebp-34]
 00468F85    call        004689B8
 00468F8A    pop         ecx
>00468F8B    jmp         0046951E
 00468F90    push        ebp
 00468F91    call        00468A2C
 00468F96    pop         ecx
 00468F97    push        ebp
 00468F98    call        GetDate
 00468F9D    pop         ecx
 00468F9E    mov         eax,dword ptr [ebp-0C]
 00468FA1    dec         eax
 00468FA2    sub         eax,2
>00468FA5    jb          00468FAB
>00468FA7    je          00468FC1
>00468FA9    jmp         00468FDB
 00468FAB    mov         eax,dword ptr [ebp+8]
 00468FAE    push        eax
 00468FAF    movzx       eax,word ptr [ebp-10]
 00468FB3    mov         edx,dword ptr [ebp-0C]
 00468FB6    call        004689DC
 00468FBB    pop         ecx
>00468FBC    jmp         0046951E
 00468FC1    mov         eax,dword ptr [ebp+8]
 00468FC4    push        eax
 00468FC5    movzx       eax,word ptr [ebp-10]
 00468FC9    mov         eax,dword ptr [eax*4+55D928];gvar_0055D928:AnsiString
 00468FD0    call        004689B8
 00468FD5    pop         ecx
>00468FD6    jmp         0046951E
 00468FDB    mov         eax,dword ptr [ebp+8]
 00468FDE    push        eax
 00468FDF    movzx       eax,word ptr [ebp-10]
 00468FE3    mov         eax,dword ptr [eax*4+55D958];gvar_0055D958
 00468FEA    call        004689B8
 00468FEF    pop         ecx
>00468FF0    jmp         0046951E
 00468FF5    push        ebp
 00468FF6    call        00468A2C
 00468FFB    pop         ecx
 00468FFC    mov         eax,dword ptr [ebp-0C]
 00468FFF    dec         eax
 00469000    sub         eax,2
>00469003    jb          0046900F
>00469005    je          0046902C
 00469007    dec         eax
>00469008    je          00469053
 0046900A    dec         eax
>0046900B    je          0046907A
>0046900D    jmp         0046908E
 0046900F    push        ebp
 00469010    call        GetDate
 00469015    pop         ecx
 00469016    mov         eax,dword ptr [ebp+8]
 00469019    push        eax
 0046901A    movzx       eax,word ptr [ebp-12]
 0046901E    mov         edx,dword ptr [ebp-0C]
 00469021    call        004689DC
 00469026    pop         ecx
>00469027    jmp         0046951E
 0046902C    mov         eax,dword ptr [ebp+8]
 0046902F    push        eax
 00469030    mov         eax,dword ptr [ebp+8]
 00469033    push        dword ptr [eax+0C]
 00469036    push        dword ptr [eax+8]
 00469039    call        004688C0
 0046903E    movzx       eax,ax
 00469041    mov         eax,dword ptr [eax*4+55D988];gvar_0055D988
 00469048    call        004689B8
 0046904D    pop         ecx
>0046904E    jmp         0046951E
 00469053    mov         eax,dword ptr [ebp+8]
 00469056    push        eax
 00469057    mov         eax,dword ptr [ebp+8]
 0046905A    push        dword ptr [eax+0C]
 0046905D    push        dword ptr [eax+8]
 00469060    call        004688C0
 00469065    movzx       eax,ax
 00469068    mov         eax,dword ptr [eax*4+55D9A4];gvar_0055D9A4
 0046906F    call        004689B8
 00469074    pop         ecx
>00469075    jmp         0046951E
 0046907A    mov         eax,dword ptr [ebp+8]
 0046907D    push        eax
 0046907E    mov         eax,[0055D910];gvar_0055D910:AnsiString
 00469083    call        00468D78
 00469088    pop         ecx
>00469089    jmp         0046951E
 0046908E    mov         eax,dword ptr [ebp+8]
 00469091    push        eax
 00469092    mov         eax,[0055D914];gvar_0055D914:AnsiString
 00469097    call        00468D78
 0046909C    pop         ecx
>0046909D    jmp         0046951E
 004690A2    push        ebp
 004690A3    call        00468A2C
 004690A8    pop         ecx
 004690A9    push        ebp
 004690AA    call        GetTime
 004690AF    pop         ecx
 004690B0    mov         byte ptr [ebp-21],0
 004690B4    mov         eax,dword ptr [ebp-4]
 004690B7    mov         dword ptr [ebp-28],eax
>004690BA    jmp         00469169
 004690BF    mov         eax,dword ptr [ebp-28]
 004690C2    mov         al,byte ptr [eax]
 004690C4    and         eax,0FF
 004690C9    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>004690D0    jae         004690E2
 004690D2    mov         eax,dword ptr [ebp-28]
 004690D5    call        0046B920
 004690DA    mov         dword ptr [ebp-28],eax
>004690DD    jmp         00469169
 004690E2    mov         eax,dword ptr [ebp-28]
 004690E5    movzx       eax,byte ptr [eax]
 004690E8    cmp         eax,48
>004690EB    jg          00469104
>004690ED    je          00469175
 004690F3    sub         eax,22
>004690F6    je          0046915E
 004690F8    sub         eax,5
>004690FB    je          0046915E
 004690FD    sub         eax,1A
>00469100    je          00469110
>00469102    jmp         00469166
 00469104    sub         eax,61
>00469107    je          00469110
 00469109    sub         eax,7
>0046910C    je          00469175
>0046910E    jmp         00469166
 00469110    cmp         byte ptr [ebp-21],0
>00469114    jne         00469166
 00469116    mov         edx,46955C
 0046911B    mov         ecx,5
 00469120    mov         eax,dword ptr [ebp-28]
 00469123    call        StrLIComp
 00469128    test        eax,eax
>0046912A    je          00469158
 0046912C    mov         edx,469564
 00469131    mov         ecx,3
 00469136    mov         eax,dword ptr [ebp-28]
 00469139    call        StrLIComp
 0046913E    test        eax,eax
>00469140    je          00469158
 00469142    mov         edx,469568
 00469147    mov         ecx,4
 0046914C    mov         eax,dword ptr [ebp-28]
 0046914F    call        StrLIComp
 00469154    test        eax,eax
>00469156    jne         00469175
 00469158    mov         byte ptr [ebp-20],1
>0046915C    jmp         00469175
 0046915E    mov         al,byte ptr [ebp-21]
 00469161    xor         al,1
 00469163    mov         byte ptr [ebp-21],al
 00469166    inc         dword ptr [ebp-28]
 00469169    mov         eax,dword ptr [ebp-28]
 0046916C    cmp         byte ptr [eax],0
>0046916F    jne         004690BF
 00469175    mov         ax,word ptr [ebp-16]
 00469179    mov         word ptr [ebp-2A],ax
 0046917D    cmp         byte ptr [ebp-20],0
>00469181    je          0046919E
 00469183    cmp         word ptr [ebp-2A],0
>00469188    jne         00469192
 0046918A    mov         word ptr [ebp-2A],0C
>00469190    jmp         0046919E
 00469192    cmp         word ptr [ebp-2A],0C
>00469197    jbe         0046919E
 00469199    sub         word ptr [ebp-2A],0C
 0046919E    cmp         dword ptr [ebp-0C],2
>004691A2    jle         004691AB
 004691A4    mov         dword ptr [ebp-0C],2
 004691AB    mov         eax,dword ptr [ebp+8]
 004691AE    push        eax
 004691AF    movzx       eax,word ptr [ebp-2A]
 004691B3    mov         edx,dword ptr [ebp-0C]
 004691B6    call        004689DC
 004691BB    pop         ecx
>004691BC    jmp         0046951E
 004691C1    push        ebp
 004691C2    call        00468A2C
 004691C7    pop         ecx
 004691C8    push        ebp
 004691C9    call        GetTime
 004691CE    pop         ecx
 004691CF    cmp         dword ptr [ebp-0C],2
>004691D3    jle         004691DC
 004691D5    mov         dword ptr [ebp-0C],2
 004691DC    mov         eax,dword ptr [ebp+8]
 004691DF    push        eax
 004691E0    movzx       eax,word ptr [ebp-18]
 004691E4    mov         edx,dword ptr [ebp-0C]
 004691E7    call        004689DC
 004691EC    pop         ecx
>004691ED    jmp         0046951E
 004691F2    push        ebp
 004691F3    call        00468A2C
 004691F8    pop         ecx
 004691F9    push        ebp
 004691FA    call        GetTime
 004691FF    pop         ecx
 00469200    cmp         dword ptr [ebp-0C],2
>00469204    jle         0046920D
 00469206    mov         dword ptr [ebp-0C],2
 0046920D    mov         eax,dword ptr [ebp+8]
 00469210    push        eax
 00469211    movzx       eax,word ptr [ebp-1A]
 00469215    mov         edx,dword ptr [ebp-0C]
 00469218    call        004689DC
 0046921D    pop         ecx
>0046921E    jmp         0046951E
 00469223    push        ebp
 00469224    call        00468A2C
 00469229    pop         ecx
 0046922A    cmp         dword ptr [ebp-0C],1
>0046922E    jne         00469244
 00469230    mov         eax,dword ptr [ebp+8]
 00469233    push        eax
 00469234    mov         eax,[0055D924];gvar_0055D924:AnsiString
 00469239    call        00468D78
 0046923E    pop         ecx
>0046923F    jmp         0046951E
 00469244    mov         eax,dword ptr [ebp+8]
 00469247    push        eax
 00469248    mov         eax,[0055D928];gvar_0055D928:AnsiString
 0046924D    call        00468D78
 00469252    pop         ecx
>00469253    jmp         0046951E
 00469258    push        ebp
 00469259    call        00468A2C
 0046925E    pop         ecx
 0046925F    push        ebp
 00469260    call        GetTime
 00469265    pop         ecx
 00469266    cmp         dword ptr [ebp-0C],3
>0046926A    jle         00469273
 0046926C    mov         dword ptr [ebp-0C],3
 00469273    mov         eax,dword ptr [ebp+8]
 00469276    push        eax
 00469277    movzx       eax,word ptr [ebp-1C]
 0046927B    mov         edx,dword ptr [ebp-0C]
 0046927E    call        004689DC
 00469283    pop         ecx
>00469284    jmp         0046951E
 00469289    push        ebp
 0046928A    call        GetTime
 0046928F    pop         ecx
 00469290    mov         eax,dword ptr [ebp-4]
 00469293    dec         eax
 00469294    mov         dword ptr [ebp-28],eax
 00469297    mov         edx,46955C
 0046929C    mov         ecx,5
 004692A1    mov         eax,dword ptr [ebp-28]
 004692A4    call        StrLIComp
 004692A9    test        eax,eax
>004692AB    jne         004692D7
 004692AD    cmp         word ptr [ebp-16],0C
>004692B2    jb          004692B8
 004692B4    add         dword ptr [ebp-28],3
 004692B8    mov         eax,dword ptr [ebp+8]
 004692BB    push        eax
 004692BC    mov         edx,2
 004692C1    mov         eax,dword ptr [ebp-28]
 004692C4    call        00468958
 004692C9    pop         ecx
 004692CA    add         dword ptr [ebp-4],4
 004692CE    mov         byte ptr [ebp-20],1
>004692D2    jmp         0046951E
 004692D7    mov         edx,469564
 004692DC    mov         ecx,3
 004692E1    mov         eax,dword ptr [ebp-28]
 004692E4    call        StrLIComp
 004692E9    test        eax,eax
>004692EB    jne         00469317
 004692ED    cmp         word ptr [ebp-16],0C
>004692F2    jb          004692F8
 004692F4    add         dword ptr [ebp-28],2
 004692F8    mov         eax,dword ptr [ebp+8]
 004692FB    push        eax
 004692FC    mov         edx,1
 00469301    mov         eax,dword ptr [ebp-28]
 00469304    call        00468958
 00469309    pop         ecx
 0046930A    add         dword ptr [ebp-4],2
 0046930E    mov         byte ptr [ebp-20],1
>00469312    jmp         0046951E
 00469317    mov         edx,469568
 0046931C    mov         ecx,4
 00469321    mov         eax,dword ptr [ebp-28]
 00469324    call        StrLIComp
 00469329    test        eax,eax
>0046932B    jne         00469361
 0046932D    cmp         word ptr [ebp-16],0C
>00469332    jae         00469345
 00469334    mov         eax,dword ptr [ebp+8]
 00469337    push        eax
 00469338    mov         eax,[0055D91C];gvar_0055D91C:AnsiString
 0046933D    call        004689B8
 00469342    pop         ecx
>00469343    jmp         00469354
 00469345    mov         eax,dword ptr [ebp+8]
 00469348    push        eax
 00469349    mov         eax,[0055D920];gvar_0055D920:AnsiString
 0046934E    call        004689B8
 00469353    pop         ecx
 00469354    add         dword ptr [ebp-4],3
 00469358    mov         byte ptr [ebp-20],1
>0046935C    jmp         0046951E
 00469361    mov         edx,469570
 00469366    mov         ecx,4
 0046936B    mov         eax,dword ptr [ebp-28]
 0046936E    call        StrLIComp
 00469373    test        eax,eax
>00469375    jne         004693A9
 00469377    push        ebp
 00469378    call        GetDate
 0046937D    pop         ecx
 0046937E    mov         eax,dword ptr [ebp+8]
 00469381    push        eax
 00469382    mov         eax,dword ptr [ebp+8]
 00469385    push        dword ptr [eax+0C]
 00469388    push        dword ptr [eax+8]
 0046938B    call        004688C0
 00469390    movzx       eax,ax
 00469393    mov         eax,dword ptr [eax*4+55D9A4];gvar_0055D9A4
 0046939A    call        004689B8
 0046939F    pop         ecx
 004693A0    add         dword ptr [ebp-4],3
>004693A4    jmp         0046951E
 004693A9    mov         edx,469578
 004693AE    mov         ecx,3
 004693B3    mov         eax,dword ptr [ebp-28]
 004693B6    call        StrLIComp
 004693BB    test        eax,eax
>004693BD    jne         004693F1
 004693BF    push        ebp
 004693C0    call        GetDate
 004693C5    pop         ecx
 004693C6    mov         eax,dword ptr [ebp+8]
 004693C9    push        eax
 004693CA    mov         eax,dword ptr [ebp+8]
 004693CD    push        dword ptr [eax+0C]
 004693D0    push        dword ptr [eax+8]
 004693D3    call        004688C0
 004693D8    movzx       eax,ax
 004693DB    mov         eax,dword ptr [eax*4+55D988];gvar_0055D988
 004693E2    call        004689B8
 004693E7    pop         ecx
 004693E8    add         dword ptr [ebp-4],2
>004693EC    jmp         0046951E
 004693F1    mov         eax,dword ptr [ebp+8]
 004693F4    push        eax
 004693F5    lea         eax,[ebp-5]
 004693F8    mov         edx,1
 004693FD    call        00468958
 00469402    pop         ecx
>00469403    jmp         0046951E
 00469408    push        ebp
 00469409    call        00468A2C
 0046940E    pop         ecx
 0046940F    mov         eax,dword ptr [ebp+8]
 00469412    push        eax
 00469413    mov         eax,[0055D910];gvar_0055D910:AnsiString
 00469418    call        00468D78
 0046941D    pop         ecx
 0046941E    push        ebp
 0046941F    call        GetTime
 00469424    pop         ecx
 00469425    cmp         word ptr [ebp-16],0
>0046942A    jne         0046943E
 0046942C    cmp         word ptr [ebp-18],0
>00469431    jne         0046943E
 00469433    cmp         word ptr [ebp-1A],0
>00469438    je          0046951E
 0046943E    mov         eax,dword ptr [ebp+8]
 00469441    push        eax
 00469442    mov         eax,46957C
 00469447    mov         edx,1
 0046944C    call        00468958
 00469451    pop         ecx
 00469452    mov         eax,dword ptr [ebp+8]
 00469455    push        eax
 00469456    mov         eax,[0055D928];gvar_0055D928:AnsiString
 0046945B    call        00468D78
 00469460    pop         ecx
>00469461    jmp         0046951E
 00469466    cmp         byte ptr ds:[55D90D],0;gvar_0055D90D:void 
>0046946D    je          0046951E
 00469473    mov         eax,dword ptr [ebp+8]
 00469476    push        eax
 00469477    mov         eax,55D90D;gvar_0055D90D:void 
 0046947C    mov         edx,1
 00469481    call        00468958
 00469486    pop         ecx
>00469487    jmp         0046951E
 0046948C    cmp         byte ptr ds:[55D918],0;gvar_0055D918:void 
>00469493    je          0046951E
 00469499    mov         eax,dword ptr [ebp+8]
 0046949C    push        eax
 0046949D    mov         eax,55D918;gvar_0055D918:void 
 004694A2    mov         edx,1
 004694A7    call        00468958
 004694AC    pop         ecx
>004694AD    jmp         0046951E
 004694AF    mov         eax,dword ptr [ebp-4]
 004694B2    mov         dword ptr [ebp-28],eax
>004694B5    jmp         004694DA
 004694B7    mov         eax,dword ptr [ebp-4]
 004694BA    mov         al,byte ptr [eax]
 004694BC    and         eax,0FF
 004694C1    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>004694C8    jae         004694D7
 004694CA    mov         eax,dword ptr [ebp-4]
 004694CD    call        0046B920
 004694D2    mov         dword ptr [ebp-4],eax
>004694D5    jmp         004694DA
 004694D7    inc         dword ptr [ebp-4]
 004694DA    mov         eax,dword ptr [ebp-4]
 004694DD    cmp         byte ptr [eax],0
>004694E0    je          004694EC
 004694E2    mov         eax,dword ptr [ebp-4]
 004694E5    mov         al,byte ptr [eax]
 004694E7    cmp         al,byte ptr [ebp-5]
>004694EA    jne         004694B7
 004694EC    mov         eax,dword ptr [ebp+8]
 004694EF    push        eax
 004694F0    mov         edx,dword ptr [ebp-4]
 004694F3    sub         edx,dword ptr [ebp-28]
 004694F6    mov         eax,dword ptr [ebp-28]
 004694F9    call        00468958
 004694FE    pop         ecx
 004694FF    mov         eax,dword ptr [ebp-4]
 00469502    cmp         byte ptr [eax],0
>00469505    je          0046951E
 00469507    inc         dword ptr [ebp-4]
>0046950A    jmp         0046951E
 0046950C    mov         eax,dword ptr [ebp+8]
 0046950F    push        eax
 00469510    lea         eax,[ebp-5]
 00469513    mov         edx,1
 00469518    call        00468958
 0046951D    pop         ecx
 0046951E    mov         eax,dword ptr [ebp-4]
 00469521    cmp         byte ptr [eax],0
>00469524    jne         00468DCF
 0046952A    mov         eax,dword ptr [ebp+8]
 0046952D    dec         dword ptr [eax-108]
 00469533    xor         eax,eax
 00469535    pop         edx
 00469536    pop         ecx
 00469537    pop         ecx
 00469538    mov         dword ptr fs:[eax],edx
 0046953B    push        469555
 00469540    lea         eax,[ebp-34]
 00469543    mov         edx,2
 00469548    call        @LStrArrayClr
 0046954D    ret
>0046954E    jmp         @HandleFinally
>00469553    jmp         00469540
 00469555    mov         esp,ebp
 00469557    pop         ebp
 00469558    ret
end;*}

//00469580
{*procedure sub_00469580(?:?; ?:AnsiString);
begin
 00469580    push        ebp
 00469581    mov         ebp,esp
 00469583    add         esp,0FFFFFEF0
 00469589    mov         dword ptr [ebp-110],edx
 0046958F    mov         dword ptr [ebp-10C],eax
 00469595    xor         eax,eax
 00469597    mov         dword ptr [ebp-104],eax
 0046959D    xor         eax,eax
 0046959F    mov         dword ptr [ebp-108],eax
 004695A5    cmp         dword ptr [ebp-110],0
>004695AC    je          004695BD
 004695AE    push        ebp
 004695AF    mov         eax,dword ptr [ebp-110]
 004695B5    call        00468D78
 004695BA    pop         ecx
>004695BB    jmp         004695C9
 004695BD    push        ebp
 004695BE    mov         eax,4695E8
 004695C3    call        00468D78
 004695C8    pop         ecx
 004695C9    lea         edx,[ebp-100]
 004695CF    mov         eax,dword ptr [ebp-10C]
 004695D5    mov         ecx,dword ptr [ebp-104]
 004695DB    call        @LStrFromPCharLen
 004695E0    mov         esp,ebp
 004695E2    pop         ebp
 004695E3    ret         8
end;*}

//004695EC
{*procedure sub_004695EC(?:?; ?:?; ?:?);
begin
 004695EC    push        ebp
 004695ED    mov         ebp,esp
 004695EF    push        ecx
 004695F0    mov         dword ptr [ebp-4],eax
 004695F3    push        dword ptr [ebp+0C]
 004695F6    push        dword ptr [ebp+8]
 004695F9    mov         eax,dword ptr [ebp-4]
 004695FC    mov         edx,dword ptr ds:[55D910];gvar_0055D910:AnsiString
 00469602    call        00469580
 00469607    pop         ecx
 00469608    pop         ebp
 00469609    ret         8
end;*}

//0046960C
{*procedure sub_0046960C(?:?; ?:?; ?:?);
begin
 0046960C    push        ebp
 0046960D    mov         ebp,esp
 0046960F    push        ecx
 00469610    mov         dword ptr [ebp-4],eax
 00469613    push        dword ptr [ebp+0C]
 00469616    push        dword ptr [ebp+8]
 00469619    mov         eax,dword ptr [ebp-4]
 0046961C    mov         edx,dword ptr ds:[55D928];gvar_0055D928:AnsiString
 00469622    call        00469580
 00469627    pop         ecx
 00469628    pop         ebp
 00469629    ret         8
end;*}

//0046962C
{*procedure sub_0046962C(?:?; ?:?; ?:?);
begin
 0046962C    push        ebp
 0046962D    mov         ebp,esp
 0046962F    push        ecx
 00469630    mov         dword ptr [ebp-4],eax
 00469633    push        dword ptr [ebp+0C]
 00469636    push        dword ptr [ebp+8]
 00469639    mov         eax,dword ptr [ebp-4]
 0046963C    xor         edx,edx
 0046963E    call        00469580
 00469643    pop         ecx
 00469644    pop         ebp
 00469645    ret         8
end;*}

//00469648
{*procedure sub_00469648(?:?; ?:?);
begin
 00469648    push        ebp
 00469649    mov         ebp,esp
 0046964B    add         esp,0FFFFFFF4
 0046964E    mov         dword ptr [ebp-8],edx
 00469651    mov         dword ptr [ebp-4],eax
 00469654    mov         eax,dword ptr [ebp-8]
 00469657    mov         eax,dword ptr [eax]
 00469659    mov         dword ptr [ebp-0C],eax
>0046965C    jmp         00469661
 0046965E    inc         dword ptr [ebp-0C]
 00469661    mov         eax,dword ptr [ebp-4]
 00469664    call        @DynArrayLength
 00469669    cmp         eax,dword ptr [ebp-0C]
>0046966C    jl          0046967B
 0046966E    mov         eax,dword ptr [ebp-0C]
 00469671    mov         edx,dword ptr [ebp-4]
 00469674    cmp         byte ptr [edx+eax-1],20
>00469679    je          0046965E
 0046967B    mov         eax,dword ptr [ebp-8]
 0046967E    mov         edx,dword ptr [ebp-0C]
 00469681    mov         dword ptr [eax],edx
 00469683    mov         esp,ebp
 00469685    pop         ebp
 00469686    ret
end;*}

//00469688
{*function sub_00469688(?:?; ?:?; ?:?; ?:?):?;
begin
 00469688    push        ebp
 00469689    mov         ebp,esp
 0046968B    add         esp,0FFFFFFE8
 0046968E    mov         dword ptr [ebp-0C],ecx
 00469691    mov         dword ptr [ebp-8],edx
 00469694    mov         dword ptr [ebp-4],eax
 00469697    mov         byte ptr [ebp-0D],0
 0046969B    mov         eax,dword ptr [ebp+8]
 0046969E    mov         byte ptr [eax],0
 004696A1    mov         edx,dword ptr [ebp-8]
 004696A4    mov         eax,dword ptr [ebp-4]
 004696A7    call        00469648
 004696AC    mov         eax,dword ptr [ebp-8]
 004696AF    mov         eax,dword ptr [eax]
 004696B1    mov         dword ptr [ebp-14],eax
 004696B4    mov         word ptr [ebp-16],0
>004696BA    jmp         004696DE
 004696BC    mov         ax,word ptr [ebp-16]
 004696C0    add         eax,eax
 004696C2    lea         eax,[eax+eax*4]
 004696C5    mov         edx,dword ptr [ebp-4]
 004696C8    mov         ecx,dword ptr [ebp-14]
 004696CB    movzx       edx,byte ptr [edx+ecx-1]
 004696D0    sub         dx,30
 004696D4    add         ax,dx
 004696D7    mov         word ptr [ebp-16],ax
 004696DB    inc         dword ptr [ebp-14]
 004696DE    mov         eax,dword ptr [ebp-4]
 004696E1    call        @DynArrayLength
 004696E6    cmp         eax,dword ptr [ebp-14]
>004696E9    jl          00469703
 004696EB    mov         eax,dword ptr [ebp-4]
 004696EE    mov         edx,dword ptr [ebp-14]
 004696F1    mov         al,byte ptr [eax+edx-1]
 004696F5    add         al,0D0
 004696F7    sub         al,0A
>004696F9    jae         00469703
 004696FB    cmp         word ptr [ebp-16],3E8
>00469701    jb          004696BC
 00469703    mov         eax,dword ptr [ebp-8]
 00469706    mov         eax,dword ptr [eax]
 00469708    cmp         eax,dword ptr [ebp-14]
>0046970B    jge         00469732
 0046970D    mov         al,byte ptr [ebp-14]
 00469710    mov         edx,dword ptr [ebp-8]
 00469713    mov         edx,dword ptr [edx]
 00469715    sub         al,dl
 00469717    mov         edx,dword ptr [ebp+8]
 0046971A    mov         byte ptr [edx],al
 0046971C    mov         eax,dword ptr [ebp-8]
 0046971F    mov         edx,dword ptr [ebp-14]
 00469722    mov         dword ptr [eax],edx
 00469724    mov         eax,dword ptr [ebp-0C]
 00469727    mov         dx,word ptr [ebp-16]
 0046972B    mov         word ptr [eax],dx
 0046972E    mov         byte ptr [ebp-0D],1
 00469732    mov         al,byte ptr [ebp-0D]
 00469735    mov         esp,ebp
 00469737    pop         ebp
 00469738    ret         4
end;*}

//0046973C
{*function sub_0046973C(?:?; ?:?; ?:AnsiString):?;
begin
 0046973C    push        ebp
 0046973D    mov         ebp,esp
 0046973F    add         esp,0FFFFFFEC
 00469742    push        ebx
 00469743    xor         ebx,ebx
 00469745    mov         dword ptr [ebp-14],ebx
 00469748    mov         dword ptr [ebp-0C],ecx
 0046974B    mov         dword ptr [ebp-8],edx
 0046974E    mov         dword ptr [ebp-4],eax
 00469751    xor         eax,eax
 00469753    push        ebp
 00469754    push        4697C5
 00469759    push        dword ptr fs:[eax]
 0046975C    mov         dword ptr fs:[eax],esp
 0046975F    mov         byte ptr [ebp-0D],0
 00469763    cmp         dword ptr [ebp-0C],0
>00469767    je          004697AF
 00469769    mov         edx,dword ptr [ebp-8]
 0046976C    mov         eax,dword ptr [ebp-4]
 0046976F    call        00469648
 00469774    lea         eax,[ebp-14]
 00469777    push        eax
 00469778    mov         eax,dword ptr [ebp-0C]
 0046977B    call        @DynArrayLength
 00469780    mov         ecx,eax
 00469782    mov         edx,dword ptr [ebp-8]
 00469785    mov         edx,dword ptr [edx]
 00469787    mov         eax,dword ptr [ebp-4]
 0046978A    call        @LStrCopy
 0046978F    mov         edx,dword ptr [ebp-14]
 00469792    mov         eax,dword ptr [ebp-0C]
 00469795    call        00466420
 0046979A    test        eax,eax
>0046979C    jne         004697AF
 0046979E    mov         eax,dword ptr [ebp-0C]
 004697A1    call        @DynArrayLength
 004697A6    mov         edx,dword ptr [ebp-8]
 004697A9    add         dword ptr [edx],eax
 004697AB    mov         byte ptr [ebp-0D],1
 004697AF    xor         eax,eax
 004697B1    pop         edx
 004697B2    pop         ecx
 004697B3    pop         ecx
 004697B4    mov         dword ptr fs:[eax],edx
 004697B7    push        4697CC
 004697BC    lea         eax,[ebp-14]
 004697BF    call        @LStrClr
 004697C4    ret
>004697C5    jmp         @HandleFinally
>004697CA    jmp         004697BC
 004697CC    mov         al,byte ptr [ebp-0D]
 004697CF    pop         ebx
 004697D0    mov         esp,ebp
 004697D2    pop         ebp
 004697D3    ret
end;*}

//004697D4
{*function sub_004697D4(?:?; ?:?; ?:?):?;
begin
 004697D4    push        ebp
 004697D5    mov         ebp,esp
 004697D7    add         esp,0FFFFFFF4
 004697DA    mov         byte ptr [ebp-9],cl
 004697DD    mov         dword ptr [ebp-8],edx
 004697E0    mov         dword ptr [ebp-4],eax
 004697E3    mov         byte ptr [ebp-0A],0
 004697E7    mov         edx,dword ptr [ebp-8]
 004697EA    mov         eax,dword ptr [ebp-4]
 004697ED    call        00469648
 004697F2    mov         eax,dword ptr [ebp-4]
 004697F5    call        @DynArrayLength
 004697FA    mov         edx,dword ptr [ebp-8]
 004697FD    cmp         eax,dword ptr [edx]
>004697FF    jl          0046981B
 00469801    mov         eax,dword ptr [ebp-8]
 00469804    mov         eax,dword ptr [eax]
 00469806    mov         edx,dword ptr [ebp-4]
 00469809    mov         al,byte ptr [edx+eax-1]
 0046980D    cmp         al,byte ptr [ebp-9]
>00469810    jne         0046981B
 00469812    mov         eax,dword ptr [ebp-8]
 00469815    inc         dword ptr [eax]
 00469817    mov         byte ptr [ebp-0A],1
 0046981B    mov         al,byte ptr [ebp-0A]
 0046981E    mov         esp,ebp
 00469820    pop         ebp
 00469821    ret
end;*}

//00469824
{*function sub_00469824(?:?):?;
begin
 00469824    push        ebp
 00469825    mov         ebp,esp
 00469827    add         esp,0FFFFFFF4
 0046982A    mov         dword ptr [ebp-4],eax
 0046982D    mov         byte ptr [ebp-5],0
 00469831    mov         dword ptr [ebp-0C],1
>00469838    jmp         00469873
 0046983A    mov         eax,dword ptr [ebp-0C]
 0046983D    mov         edx,dword ptr [ebp-4]
 00469840    mov         al,byte ptr [edx+eax-1]
 00469844    and         al,0DF
 00469846    sub         al,44
>00469848    je          0046986A
 0046984A    dec         al
>0046984C    je          00469858
 0046984E    sub         al,8
>00469850    je          00469864
 00469852    sub         al,0C
>00469854    je          0046985E
>00469856    jmp         00469870
 00469858    mov         byte ptr [ebp-5],2
>0046985C    jmp         00469884
 0046985E    mov         byte ptr [ebp-5],2
>00469862    jmp         00469884
 00469864    mov         byte ptr [ebp-5],0
>00469868    jmp         00469884
 0046986A    mov         byte ptr [ebp-5],1
>0046986E    jmp         00469884
 00469870    inc         dword ptr [ebp-0C]
 00469873    mov         eax,dword ptr [ebp-4]
 00469876    call        @DynArrayLength
 0046987B    cmp         eax,dword ptr [ebp-0C]
>0046987E    jge         0046983A
 00469880    mov         byte ptr [ebp-5],0
 00469884    mov         al,byte ptr [ebp-5]
 00469887    mov         esp,ebp
 00469889    pop         ebp
 0046988A    ret
end;*}

//0046988C
{*procedure sub_0046988C(?:?; ?:?);
begin
 0046988C    push        ebp
 0046988D    mov         ebp,esp
 0046988F    add         esp,0FFFFFFF8
 00469892    mov         dword ptr [ebp-8],edx
 00469895    mov         dword ptr [ebp-4],eax
>00469898    jmp         004698CD
 0046989A    mov         eax,dword ptr [ebp-8]
 0046989D    mov         eax,dword ptr [eax]
 0046989F    mov         edx,dword ptr [ebp-4]
 004698A2    mov         al,byte ptr [edx+eax-1]
 004698A6    and         eax,0FF
 004698AB    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>004698B2    jae         004698C8
 004698B4    mov         edx,dword ptr [ebp-8]
 004698B7    mov         edx,dword ptr [edx]
 004698B9    mov         eax,dword ptr [ebp-4]
 004698BC    call        0046B98C
 004698C1    mov         edx,dword ptr [ebp-8]
 004698C4    mov         dword ptr [edx],eax
>004698C6    jmp         004698CD
 004698C8    mov         eax,dword ptr [ebp-8]
 004698CB    inc         dword ptr [eax]
 004698CD    mov         eax,dword ptr [ebp-4]
 004698D0    call        @DynArrayLength
 004698D5    mov         edx,dword ptr [ebp-8]
 004698D8    cmp         eax,dword ptr [edx]
>004698DA    jl          004698EE
 004698DC    mov         eax,dword ptr [ebp-8]
 004698DF    mov         eax,dword ptr [eax]
 004698E1    mov         edx,dword ptr [ebp-4]
 004698E4    mov         al,byte ptr [edx+eax-1]
 004698E8    add         al,0D0
 004698EA    sub         al,0A
>004698EC    jae         0046989A
 004698EE    pop         ecx
 004698EF    pop         ecx
 004698F0    pop         ebp
 004698F1    ret
end;*}

//004698F4
{*function sub_004698F4(?:?):?;
begin
 004698F4    push        ebp
 004698F5    mov         ebp,esp
 004698F7    add         esp,0FFFFFFF4
 004698FA    mov         dword ptr [ebp-4],eax
 004698FD    xor         eax,eax
 004698FF    mov         dword ptr [ebp-8],eax
 00469902    mov         dword ptr [ebp-0C],1
 00469909    mov         eax,dword ptr [ebp-0C]
 0046990C    cmp         dword ptr [eax*4+55D9D0],0;gvar_0055D9D0
>00469914    je          00469950
 00469916    mov         eax,dword ptr [ebp-4]
 00469919    call        @LStrToPChar
 0046991E    push        eax
 0046991F    mov         eax,dword ptr [ebp-0C]
 00469922    mov         eax,dword ptr [eax*4+55D9D0];gvar_0055D9D0
 00469929    call        @LStrToPChar
 0046992E    pop         edx
 0046992F    call        0046BB00
 00469934    test        eax,eax
>00469936    je          00469947
 00469938    mov         eax,dword ptr [ebp-0C]
 0046993B    mov         eax,dword ptr [eax*4+55D9EC];gvar_0055D9EC
 00469942    mov         dword ptr [ebp-8],eax
>00469945    jmp         00469950
 00469947    inc         dword ptr [ebp-0C]
 0046994A    cmp         dword ptr [ebp-0C],8
>0046994E    jne         00469909
 00469950    mov         eax,dword ptr [ebp-8]
 00469953    mov         esp,ebp
 00469955    pop         ebp
 00469956    ret
end;*}

//00469958
{*function sub_00469958(?:?; ?:?):?;
begin
 00469958    push        ebp
 00469959    mov         ebp,esp
 0046995B    add         esp,0FFFFFFF8
 0046995E    mov         dword ptr [ebp-4],eax
 00469961    cmp         dword ptr ds:[55D9C8],12;gvar_0055D9C8
>00469968    jne         004699A6
 0046996A    cmp         dword ptr [ebp-4],63
>0046996E    jg          00469995
 00469970    call        00468938
 00469975    movzx       ecx,ax
 00469978    mov         eax,dword ptr [ebp+8]
 0046997B    mov         eax,dword ptr [eax-4]
 0046997E    cdq
 0046997F    xor         eax,edx
 00469981    sub         eax,edx
 00469983    add         ecx,eax
 00469985    mov         eax,ecx
 00469987    mov         ecx,64
 0046998C    cdq
 0046998D    idiv        eax,ecx
 0046998F    imul        eax,eax,64
 00469992    add         dword ptr [ebp-4],eax
 00469995    mov         eax,dword ptr [ebp+8]
 00469998    cmp         dword ptr [eax-4],0
>0046999C    jle         004699AC
 0046999E    mov         eax,dword ptr [ebp+8]
 004699A1    neg         dword ptr [eax-4]
>004699A4    jmp         004699AC
 004699A6    mov         eax,dword ptr [ebp+8]
 004699A9    dec         dword ptr [eax-4]
 004699AC    mov         eax,dword ptr [ebp+8]
 004699AF    mov         eax,dword ptr [eax-4]
 004699B2    add         eax,dword ptr [ebp-4]
 004699B5    mov         dword ptr [ebp-8],eax
 004699B8    mov         eax,dword ptr [ebp-8]
 004699BB    pop         ecx
 004699BC    pop         ecx
 004699BD    pop         ebp
 004699BE    ret
end;*}

//004699C0
{*function sub_004699C0(?:?; ?:?; ?:?):?;
begin
 004699C0    push        ebp
 004699C1    mov         ebp,esp
 004699C3    add         esp,0FFFFFFC8
 004699C6    push        ebx
 004699C7    xor         ebx,ebx
 004699C9    mov         dword ptr [ebp-38],ebx
 004699CC    mov         dword ptr [ebp-34],ebx
 004699CF    mov         dword ptr [ebp-30],ebx
 004699D2    mov         dword ptr [ebp-2C],ebx
 004699D5    mov         dword ptr [ebp-10],ecx
 004699D8    mov         dword ptr [ebp-0C],edx
 004699DB    mov         dword ptr [ebp-8],eax
 004699DE    xor         eax,eax
 004699E0    push        ebp
 004699E1    push        469D2D
 004699E6    push        dword ptr fs:[eax]
 004699E9    mov         dword ptr fs:[eax],esp
 004699EC    mov         word ptr [ebp-1A],0
 004699F2    mov         word ptr [ebp-1C],0
 004699F8    mov         word ptr [ebp-1E],0
 004699FE    mov         byte ptr [ebp-22],0
 00469A02    mov         byte ptr [ebp-11],0
 00469A06    mov         eax,[0055D910];gvar_0055D910:AnsiString
 00469A0B    call        00469824
 00469A10    mov         byte ptr [ebp-12],al
 00469A13    xor         eax,eax
 00469A15    mov         dword ptr [ebp-4],eax
 00469A18    cmp         dword ptr ds:[55D910],0;gvar_0055D910:AnsiString
>00469A1F    je          00469A65
 00469A21    mov         eax,[0055D910];gvar_0055D910:AnsiString
 00469A26    cmp         byte ptr [eax],67
>00469A29    jne         00469A65
 00469A2B    mov         edx,dword ptr [ebp-0C]
 00469A2E    mov         eax,dword ptr [ebp-8]
 00469A31    call        0046988C
 00469A36    lea         eax,[ebp-30]
 00469A39    push        eax
 00469A3A    mov         ecx,dword ptr [ebp-0C]
 00469A3D    mov         ecx,dword ptr [ecx]
 00469A3F    dec         ecx
 00469A40    mov         edx,1
 00469A45    mov         eax,dword ptr [ebp-8]
 00469A48    call        @LStrCopy
 00469A4D    mov         eax,dword ptr [ebp-30]
 00469A50    lea         edx,[ebp-2C]
 00469A53    call        004664C8
 00469A58    mov         eax,dword ptr [ebp-2C]
 00469A5B    call        004698F4
 00469A60    mov         dword ptr [ebp-4],eax
>00469A63    jmp         00469A81
 00469A65    mov         edx,dword ptr ds:[55D910];gvar_0055D910:AnsiString
 00469A6B    mov         eax,469D44;'e'
 00469A70    call        0046B9E0
 00469A75    test        eax,eax
>00469A77    jle         00469A81
 00469A79    mov         eax,[0055D9F0];gvar_0055D9F0
 00469A7E    mov         dword ptr [ebp-4],eax
 00469A81    lea         eax,[ebp-1F]
 00469A84    push        eax
 00469A85    lea         ecx,[ebp-14]
 00469A88    mov         edx,dword ptr [ebp-0C]
 00469A8B    mov         eax,dword ptr [ebp-8]
 00469A8E    call        00469688
 00469A93    test        al,al
>00469A95    je          00469D12
 00469A9B    mov         edx,dword ptr [ebp-0C]
 00469A9E    mov         cl,byte ptr ds:[55D90D];gvar_0055D90D:void 
 00469AA4    mov         eax,dword ptr [ebp-8]
 00469AA7    call        004697D4
 00469AAC    test        al,al
>00469AAE    je          00469D12
 00469AB4    lea         eax,[ebp-20]
 00469AB7    push        eax
 00469AB8    lea         ecx,[ebp-16]
 00469ABB    mov         edx,dword ptr [ebp-0C]
 00469ABE    mov         eax,dword ptr [ebp-8]
 00469AC1    call        00469688
 00469AC6    test        al,al
>00469AC8    je          00469D12
 00469ACE    mov         edx,dword ptr [ebp-0C]
 00469AD1    mov         cl,byte ptr ds:[55D90D];gvar_0055D90D:void 
 00469AD7    mov         eax,dword ptr [ebp-8]
 00469ADA    call        004697D4
 00469ADF    test        al,al
>00469AE1    je          00469BCC
 00469AE7    lea         eax,[ebp-21]
 00469AEA    push        eax
 00469AEB    lea         ecx,[ebp-18]
 00469AEE    mov         edx,dword ptr [ebp-0C]
 00469AF1    mov         eax,dword ptr [ebp-8]
 00469AF4    call        00469688
 00469AF9    test        al,al
>00469AFB    je          00469D12
 00469B01    mov         al,byte ptr [ebp-12]
 00469B04    sub         al,1
>00469B06    jb          00469B10
>00469B08    je          00469B30
 00469B0A    dec         al
>00469B0C    je          00469B50
>00469B0E    jmp         00469B6E
 00469B10    mov         ax,word ptr [ebp-18]
 00469B14    mov         word ptr [ebp-1A],ax
 00469B18    mov         al,byte ptr [ebp-21]
 00469B1B    mov         byte ptr [ebp-22],al
 00469B1E    mov         ax,word ptr [ebp-14]
 00469B22    mov         word ptr [ebp-1C],ax
 00469B26    mov         ax,word ptr [ebp-16]
 00469B2A    mov         word ptr [ebp-1E],ax
>00469B2E    jmp         00469B6E
 00469B30    mov         ax,word ptr [ebp-18]
 00469B34    mov         word ptr [ebp-1A],ax
 00469B38    mov         al,byte ptr [ebp-21]
 00469B3B    mov         byte ptr [ebp-22],al
 00469B3E    mov         ax,word ptr [ebp-16]
 00469B42    mov         word ptr [ebp-1C],ax
 00469B46    mov         ax,word ptr [ebp-14]
 00469B4A    mov         word ptr [ebp-1E],ax
>00469B4E    jmp         00469B6E
 00469B50    mov         ax,word ptr [ebp-14]
 00469B54    mov         word ptr [ebp-1A],ax
 00469B58    mov         al,byte ptr [ebp-1F]
 00469B5B    mov         byte ptr [ebp-22],al
 00469B5E    mov         ax,word ptr [ebp-16]
 00469B62    mov         word ptr [ebp-1C],ax
 00469B66    mov         ax,word ptr [ebp-18]
 00469B6A    mov         word ptr [ebp-1E],ax
 00469B6E    cmp         dword ptr [ebp-4],0
>00469B72    jle         00469B85
 00469B74    push        ebp
 00469B75    movzx       eax,word ptr [ebp-1A]
 00469B79    call        00469958
 00469B7E    pop         ecx
 00469B7F    mov         word ptr [ebp-1A],ax
>00469B83    jmp         00469BFD
 00469B85    cmp         byte ptr [ebp-22],2
>00469B89    ja          00469BFD
 00469B8B    call        00468938
 00469B90    movzx       eax,ax
 00469B93    movzx       edx,word ptr ds:[540948];0xC08B0032 gvar_00540948
 00469B9A    sub         eax,edx
 00469B9C    mov         dword ptr [ebp-28],eax
 00469B9F    mov         eax,dword ptr [ebp-28]
 00469BA2    mov         ecx,64
 00469BA7    cdq
 00469BA8    idiv        eax,ecx
 00469BAA    imul        ax,ax,64
 00469BAE    add         word ptr [ebp-1A],ax
 00469BB2    cmp         word ptr ds:[540948],0;gvar_00540948
>00469BBA    jbe         00469BFD
 00469BBC    movzx       eax,word ptr [ebp-1A]
 00469BC0    cmp         eax,dword ptr [ebp-28]
>00469BC3    jge         00469BFD
 00469BC5    add         word ptr [ebp-1A],64
>00469BCA    jmp         00469BFD
 00469BCC    call        00468938
 00469BD1    mov         word ptr [ebp-1A],ax
 00469BD5    cmp         byte ptr [ebp-12],1
>00469BD9    jne         00469BED
 00469BDB    mov         ax,word ptr [ebp-14]
 00469BDF    mov         word ptr [ebp-1E],ax
 00469BE3    mov         ax,word ptr [ebp-16]
 00469BE7    mov         word ptr [ebp-1C],ax
>00469BEB    jmp         00469BFD
 00469BED    mov         ax,word ptr [ebp-14]
 00469BF1    mov         word ptr [ebp-1C],ax
 00469BF5    mov         ax,word ptr [ebp-16]
 00469BF9    mov         word ptr [ebp-1E],ax
 00469BFD    mov         edx,dword ptr [ebp-0C]
 00469C00    mov         cl,byte ptr ds:[55D90D];gvar_0055D90D:void 
 00469C06    mov         eax,dword ptr [ebp-8]
 00469C09    call        004697D4
 00469C0E    mov         edx,dword ptr [ebp-0C]
 00469C11    mov         eax,dword ptr [ebp-8]
 00469C14    call        00469648
 00469C19    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>00469C20    je          00469CFA
 00469C26    mov         edx,dword ptr ds:[55D910];gvar_0055D910:AnsiString
 00469C2C    mov         eax,469D50;'ddd'
 00469C31    call        @LStrPos
 00469C36    test        eax,eax
>00469C38    je          00469CFA
 00469C3E    mov         eax,[0055D924];gvar_0055D924:AnsiString
 00469C43    mov         al,byte ptr [eax]
 00469C45    add         al,0D0
 00469C47    sub         al,0A
>00469C49    jae         00469C62
 00469C4B    mov         edx,dword ptr [ebp-0C]
 00469C4E    mov         eax,dword ptr [ebp-8]
 00469C51    call        0046988C
>00469C56    jmp         00469CFA
>00469C5B    jmp         00469C62
 00469C5D    mov         eax,dword ptr [ebp-0C]
 00469C60    inc         dword ptr [eax]
 00469C62    mov         eax,dword ptr [ebp-8]
 00469C65    call        @DynArrayLength
 00469C6A    mov         edx,dword ptr [ebp-0C]
 00469C6D    cmp         eax,dword ptr [edx]
>00469C6F    jl          00469C80
 00469C71    mov         eax,dword ptr [ebp-0C]
 00469C74    mov         eax,dword ptr [eax]
 00469C76    mov         edx,dword ptr [ebp-8]
 00469C79    cmp         byte ptr [edx+eax-1],20
>00469C7E    jne         00469C5D
 00469C80    mov         edx,dword ptr [ebp-0C]
 00469C83    mov         eax,dword ptr [ebp-8]
 00469C86    call        00469648
 00469C8B    mov         eax,dword ptr [ebp-8]
 00469C8E    call        @DynArrayLength
 00469C93    mov         edx,dword ptr [ebp-0C]
 00469C96    cmp         eax,dword ptr [edx]
>00469C98    jl          00469CFA
 00469C9A    lea         eax,[ebp-34]
 00469C9D    push        eax
 00469C9E    mov         eax,[0055D91C];gvar_0055D91C:AnsiString
 00469CA3    call        @DynArrayLength
 00469CA8    mov         ecx,eax
 00469CAA    mov         edx,dword ptr [ebp-0C]
 00469CAD    mov         edx,dword ptr [edx]
 00469CAF    mov         eax,dword ptr [ebp-8]
 00469CB2    call        @LStrCopy
 00469CB7    mov         edx,dword ptr [ebp-34]
 00469CBA    mov         eax,[0055D91C];gvar_0055D91C:AnsiString
 00469CBF    call        00466420
 00469CC4    test        eax,eax
>00469CC6    je          00469CFA
 00469CC8    lea         eax,[ebp-38]
 00469CCB    push        eax
 00469CCC    mov         eax,[0055D920];gvar_0055D920:AnsiString
 00469CD1    call        @DynArrayLength
 00469CD6    mov         ecx,eax
 00469CD8    mov         edx,dword ptr [ebp-0C]
 00469CDB    mov         edx,dword ptr [edx]
 00469CDD    mov         eax,dword ptr [ebp-8]
 00469CE0    call        @LStrCopy
 00469CE5    mov         edx,dword ptr [ebp-38]
 00469CE8    mov         eax,[0055D920];gvar_0055D920:AnsiString
 00469CED    call        00466420
 00469CF2    test        eax,eax
>00469CF4    jne         00469C62
 00469CFA    mov         eax,dword ptr [ebp-10]
 00469CFD    push        eax
 00469CFE    mov         cx,word ptr [ebp-1E]
 00469D02    mov         dx,word ptr [ebp-1C]
 00469D06    mov         ax,word ptr [ebp-1A]
 00469D0A    call        004685D4
 00469D0F    mov         byte ptr [ebp-11],al
 00469D12    xor         eax,eax
 00469D14    pop         edx
 00469D15    pop         ecx
 00469D16    pop         ecx
 00469D17    mov         dword ptr fs:[eax],edx
 00469D1A    push        469D34
 00469D1F    lea         eax,[ebp-38]
 00469D22    mov         edx,4
 00469D27    call        @LStrArrayClr
 00469D2C    ret
>00469D2D    jmp         @HandleFinally
>00469D32    jmp         00469D1F
 00469D34    mov         al,byte ptr [ebp-11]
 00469D37    pop         ebx
 00469D38    mov         esp,ebp
 00469D3A    pop         ebp
 00469D3B    ret
end;*}

//00469D54
{*function sub_00469D54(?:?; ?:?; ?:?):?;
begin
 00469D54    push        ebp
 00469D55    mov         ebp,esp
 00469D57    add         esp,0FFFFFFE0
 00469D5A    mov         dword ptr [ebp-0C],ecx
 00469D5D    mov         dword ptr [ebp-8],edx
 00469D60    mov         dword ptr [ebp-4],eax
 00469D63    mov         byte ptr [ebp-0D],0
 00469D67    mov         dword ptr [ebp-14],0FFFFFFFF
 00469D6E    mov         edx,dword ptr [ebp-8]
 00469D71    mov         ecx,dword ptr ds:[55D91C];gvar_0055D91C:AnsiString
 00469D77    mov         eax,dword ptr [ebp-4]
 00469D7A    call        0046973C
 00469D7F    test        al,al
>00469D81    jne         00469D97
 00469D83    mov         edx,dword ptr [ebp-8]
 00469D86    mov         ecx,469F60;'AM'
 00469D8B    mov         eax,dword ptr [ebp-4]
 00469D8E    call        0046973C
 00469D93    test        al,al
>00469D95    je          00469D9E
 00469D97    xor         eax,eax
 00469D99    mov         dword ptr [ebp-14],eax
>00469D9C    jmp         00469DCE
 00469D9E    mov         edx,dword ptr [ebp-8]
 00469DA1    mov         ecx,dword ptr ds:[55D920];gvar_0055D920:AnsiString
 00469DA7    mov         eax,dword ptr [ebp-4]
 00469DAA    call        0046973C
 00469DAF    test        al,al
>00469DB1    jne         00469DC7
 00469DB3    mov         edx,dword ptr [ebp-8]
 00469DB6    mov         ecx,469F6C;'PM'
 00469DBB    mov         eax,dword ptr [ebp-4]
 00469DBE    call        0046973C
 00469DC3    test        al,al
>00469DC5    je          00469DCE
 00469DC7    mov         dword ptr [ebp-14],0C
 00469DCE    cmp         dword ptr [ebp-14],0
>00469DD2    jl          00469DDF
 00469DD4    mov         edx,dword ptr [ebp-8]
 00469DD7    mov         eax,dword ptr [ebp-4]
 00469DDA    call        00469648
 00469DDF    lea         eax,[ebp-1D]
 00469DE2    push        eax
 00469DE3    lea         ecx,[ebp-16]
 00469DE6    mov         edx,dword ptr [ebp-8]
 00469DE9    mov         eax,dword ptr [ebp-4]
 00469DEC    call        00469688
 00469DF1    test        al,al
>00469DF3    je          00469F4F
 00469DF9    mov         word ptr [ebp-18],0
 00469DFF    mov         word ptr [ebp-1A],0
 00469E05    mov         word ptr [ebp-1C],0
 00469E0B    mov         edx,dword ptr [ebp-8]
 00469E0E    mov         cl,byte ptr ds:[55D918];gvar_0055D918:void 
 00469E14    mov         eax,dword ptr [ebp-4]
 00469E17    call        004697D4
 00469E1C    test        al,al
>00469E1E    je          00469E98
 00469E20    lea         eax,[ebp-1D]
 00469E23    push        eax
 00469E24    lea         ecx,[ebp-18]
 00469E27    mov         edx,dword ptr [ebp-8]
 00469E2A    mov         eax,dword ptr [ebp-4]
 00469E2D    call        00469688
 00469E32    test        al,al
>00469E34    je          00469F4F
 00469E3A    mov         edx,dword ptr [ebp-8]
 00469E3D    mov         cl,byte ptr ds:[55D918];gvar_0055D918:void 
 00469E43    mov         eax,dword ptr [ebp-4]
 00469E46    call        004697D4
 00469E4B    test        al,al
>00469E4D    je          00469E98
 00469E4F    lea         eax,[ebp-1D]
 00469E52    push        eax
 00469E53    lea         ecx,[ebp-1A]
 00469E56    mov         edx,dword ptr [ebp-8]
 00469E59    mov         eax,dword ptr [ebp-4]
 00469E5C    call        00469688
 00469E61    test        al,al
>00469E63    je          00469F4F
 00469E69    mov         edx,dword ptr [ebp-8]
 00469E6C    mov         cl,byte ptr ds:[55D90B];gvar_0055D90B
 00469E72    mov         eax,dword ptr [ebp-4]
 00469E75    call        004697D4
 00469E7A    test        al,al
>00469E7C    je          00469E98
 00469E7E    lea         eax,[ebp-1D]
 00469E81    push        eax
 00469E82    lea         ecx,[ebp-1C]
 00469E85    mov         edx,dword ptr [ebp-8]
 00469E88    mov         eax,dword ptr [ebp-4]
 00469E8B    call        00469688
 00469E90    test        al,al
>00469E92    je          00469F4F
 00469E98    cmp         dword ptr [ebp-14],0
>00469E9C    jge         00469EFE
 00469E9E    mov         edx,dword ptr [ebp-8]
 00469EA1    mov         ecx,dword ptr ds:[55D91C];gvar_0055D91C:AnsiString
 00469EA7    mov         eax,dword ptr [ebp-4]
 00469EAA    call        0046973C
 00469EAF    test        al,al
>00469EB1    jne         00469EC7
 00469EB3    mov         edx,dword ptr [ebp-8]
 00469EB6    mov         ecx,469F60;'AM'
 00469EBB    mov         eax,dword ptr [ebp-4]
 00469EBE    call        0046973C
 00469EC3    test        al,al
>00469EC5    je          00469ECE
 00469EC7    xor         eax,eax
 00469EC9    mov         dword ptr [ebp-14],eax
>00469ECC    jmp         00469EFE
 00469ECE    mov         edx,dword ptr [ebp-8]
 00469ED1    mov         ecx,dword ptr ds:[55D920];gvar_0055D920:AnsiString
 00469ED7    mov         eax,dword ptr [ebp-4]
 00469EDA    call        0046973C
 00469EDF    test        al,al
>00469EE1    jne         00469EF7
 00469EE3    mov         edx,dword ptr [ebp-8]
 00469EE6    mov         ecx,469F6C;'PM'
 00469EEB    mov         eax,dword ptr [ebp-4]
 00469EEE    call        0046973C
 00469EF3    test        al,al
>00469EF5    je          00469EFE
 00469EF7    mov         dword ptr [ebp-14],0C
 00469EFE    cmp         dword ptr [ebp-14],0
>00469F02    jl          00469F27
 00469F04    cmp         word ptr [ebp-16],0
>00469F09    je          00469F4F
 00469F0B    cmp         word ptr [ebp-16],0C
>00469F10    ja          00469F4F
 00469F12    cmp         word ptr [ebp-16],0C
>00469F17    jne         00469F1F
 00469F19    mov         word ptr [ebp-16],0
 00469F1F    mov         ax,word ptr [ebp-14]
 00469F23    add         word ptr [ebp-16],ax
 00469F27    mov         edx,dword ptr [ebp-8]
 00469F2A    mov         eax,dword ptr [ebp-4]
 00469F2D    call        00469648
 00469F32    mov         ax,word ptr [ebp-1C]
 00469F36    push        eax
 00469F37    mov         eax,dword ptr [ebp-0C]
 00469F3A    push        eax
 00469F3B    mov         cx,word ptr [ebp-1A]
 00469F3F    mov         dx,word ptr [ebp-18]
 00469F43    mov         ax,word ptr [ebp-16]
 00469F47    call        0046846C
 00469F4C    mov         byte ptr [ebp-0D],al
 00469F4F    mov         al,byte ptr [ebp-0D]
 00469F52    mov         esp,ebp
 00469F54    pop         ebp
 00469F55    ret
end;*}

//00469F70
{*function sub_00469F70(?:?):?;
begin
 00469F70    push        ebp
 00469F71    mov         ebp,esp
 00469F73    add         esp,0FFFFFFE8
 00469F76    mov         dword ptr [ebp-4],eax
 00469F79    lea         edx,[ebp-10]
 00469F7C    mov         eax,dword ptr [ebp-4]
 00469F7F    call        00469FA8
 00469F84    test        al,al
>00469F86    jne         00469FA1
 00469F88    mov         eax,dword ptr [ebp-4]
 00469F8B    mov         dword ptr [ebp-18],eax
 00469F8E    mov         byte ptr [ebp-14],0B
 00469F92    lea         edx,[ebp-18]
 00469F95    mov         eax,[0055B3C0];^SInvalidDate:TResStringRec
 00469F9A    xor         ecx,ecx
 00469F9C    call        004660B8
 00469FA1    fld         qword ptr [ebp-10]
 00469FA4    mov         esp,ebp
 00469FA6    pop         ebp
 00469FA7    ret
end;*}

//00469FA8
{*function sub_00469FA8(?:?; ?:?):?;
begin
 00469FA8    push        ebp
 00469FA9    mov         ebp,esp
 00469FAB    add         esp,0FFFFFFF0
 00469FAE    mov         dword ptr [ebp-8],edx
 00469FB1    mov         dword ptr [ebp-4],eax
 00469FB4    mov         dword ptr [ebp-10],1
 00469FBB    mov         ecx,dword ptr [ebp-8]
 00469FBE    lea         edx,[ebp-10]
 00469FC1    mov         eax,dword ptr [ebp-4]
 00469FC4    call        004699C0
 00469FC9    test        al,al
>00469FCB    je          00469FDA
 00469FCD    mov         eax,dword ptr [ebp-4]
 00469FD0    call        @DynArrayLength
 00469FD5    cmp         eax,dword ptr [ebp-10]
>00469FD8    jl          00469FDE
 00469FDA    xor         eax,eax
>00469FDC    jmp         00469FE0
 00469FDE    mov         al,1
 00469FE0    mov         byte ptr [ebp-9],al
 00469FE3    mov         al,byte ptr [ebp-9]
 00469FE6    mov         esp,ebp
 00469FE8    pop         ebp
 00469FE9    ret
end;*}

//00469FEC
{*function sub_00469FEC(?:?):?;
begin
 00469FEC    push        ebp
 00469FED    mov         ebp,esp
 00469FEF    add         esp,0FFFFFFE8
 00469FF2    mov         dword ptr [ebp-4],eax
 00469FF5    lea         edx,[ebp-10]
 00469FF8    mov         eax,dword ptr [ebp-4]
 00469FFB    call        0046A024
 0046A000    test        al,al
>0046A002    jne         0046A01D
 0046A004    mov         eax,dword ptr [ebp-4]
 0046A007    mov         dword ptr [ebp-18],eax
 0046A00A    mov         byte ptr [ebp-14],0B
 0046A00E    lea         edx,[ebp-18]
 0046A011    mov         eax,[0055B24C];^SInvalidTime:TResStringRec
 0046A016    xor         ecx,ecx
 0046A018    call        004660B8
 0046A01D    fld         qword ptr [ebp-10]
 0046A020    mov         esp,ebp
 0046A022    pop         ebp
 0046A023    ret
end;*}

//0046A024
{*function sub_0046A024(?:?; ?:?):?;
begin
 0046A024    push        ebp
 0046A025    mov         ebp,esp
 0046A027    add         esp,0FFFFFFF0
 0046A02A    mov         dword ptr [ebp-8],edx
 0046A02D    mov         dword ptr [ebp-4],eax
 0046A030    mov         dword ptr [ebp-10],1
 0046A037    mov         ecx,dword ptr [ebp-8]
 0046A03A    lea         edx,[ebp-10]
 0046A03D    mov         eax,dword ptr [ebp-4]
 0046A040    call        00469D54
 0046A045    test        al,al
>0046A047    je          0046A056
 0046A049    mov         eax,dword ptr [ebp-4]
 0046A04C    call        @DynArrayLength
 0046A051    cmp         eax,dword ptr [ebp-10]
>0046A054    jl          0046A05A
 0046A056    xor         eax,eax
>0046A058    jmp         0046A05C
 0046A05A    mov         al,1
 0046A05C    mov         byte ptr [ebp-9],al
 0046A05F    mov         al,byte ptr [ebp-9]
 0046A062    mov         esp,ebp
 0046A064    pop         ebp
 0046A065    ret
end;*}

//0046A068
{*function sub_0046A068(?:?):?;
begin
 0046A068    push        ebp
 0046A069    mov         ebp,esp
 0046A06B    add         esp,0FFFFFFE8
 0046A06E    mov         dword ptr [ebp-4],eax
 0046A071    lea         edx,[ebp-10]
 0046A074    mov         eax,dword ptr [ebp-4]
 0046A077    call        0046A0A0
 0046A07C    test        al,al
>0046A07E    jne         0046A099
 0046A080    mov         eax,dword ptr [ebp-4]
 0046A083    mov         dword ptr [ebp-18],eax
 0046A086    mov         byte ptr [ebp-14],0B
 0046A08A    lea         edx,[ebp-18]
 0046A08D    mov         eax,[0055B128];^SInvalidDateTime:TResStringRec
 0046A092    xor         ecx,ecx
 0046A094    call        004660B8
 0046A099    fld         qword ptr [ebp-10]
 0046A09C    mov         esp,ebp
 0046A09E    pop         ebp
 0046A09F    ret
end;*}

//0046A0A0
{*function sub_0046A0A0(?:?; ?:?):?;
begin
 0046A0A0    push        ebp
 0046A0A1    mov         ebp,esp
 0046A0A3    add         esp,0FFFFFFE0
 0046A0A6    mov         dword ptr [ebp-8],edx
 0046A0A9    mov         dword ptr [ebp-4],eax
 0046A0AC    mov         byte ptr [ebp-9],1
 0046A0B0    mov         dword ptr [ebp-10],1
 0046A0B7    xor         eax,eax
 0046A0B9    mov         dword ptr [ebp-20],eax
 0046A0BC    mov         dword ptr [ebp-1C],eax
 0046A0BF    lea         ecx,[ebp-18]
 0046A0C2    lea         edx,[ebp-10]
 0046A0C5    mov         eax,dword ptr [ebp-4]
 0046A0C8    call        004699C0
 0046A0CD    test        al,al
>0046A0CF    je          0046A0F0
 0046A0D1    mov         eax,dword ptr [ebp-4]
 0046A0D4    call        @DynArrayLength
 0046A0D9    cmp         eax,dword ptr [ebp-10]
>0046A0DC    jl          0046A100
 0046A0DE    lea         ecx,[ebp-20]
 0046A0E1    lea         edx,[ebp-10]
 0046A0E4    mov         eax,dword ptr [ebp-4]
 0046A0E7    call        00469D54
 0046A0EC    test        al,al
>0046A0EE    jne         0046A100
 0046A0F0    mov         edx,dword ptr [ebp-8]
 0046A0F3    mov         eax,dword ptr [ebp-4]
 0046A0F6    call        0046A024
 0046A0FB    mov         byte ptr [ebp-9],al
>0046A0FE    jmp         0046A128
 0046A100    fld         qword ptr [ebp-18]
 0046A103    fcomp       dword ptr ds:[46A130];0:Single
 0046A109    fnstsw      al
 0046A10B    sahf
>0046A10C    jb          0046A11C
 0046A10E    fld         qword ptr [ebp-18]
 0046A111    fadd        qword ptr [ebp-20]
 0046A114    mov         eax,dword ptr [ebp-8]
 0046A117    fstp        qword ptr [eax]
 0046A119    wait
>0046A11A    jmp         0046A128
 0046A11C    fld         qword ptr [ebp-18]
 0046A11F    fsub        qword ptr [ebp-20]
 0046A122    mov         eax,dword ptr [ebp-8]
 0046A125    fstp        qword ptr [eax]
 0046A127    wait
 0046A128    mov         al,byte ptr [ebp-9]
 0046A12B    mov         esp,ebp
 0046A12D    pop         ebp
 0046A12E    ret
end;*}

//0046A134
function SysErrorMessage(ErrorCode:Integer):AnsiString;
begin
{*
 0046A134    push        ebp
 0046A135    mov         ebp,esp
 0046A137    add         esp,0FFFFFEF4
 0046A13D    mov         dword ptr [ebp-8],edx
 0046A140    mov         dword ptr [ebp-4],eax
 0046A143    push        0
 0046A145    push        100
 0046A14A    lea         eax,[ebp-10C]
 0046A150    push        eax
 0046A151    push        0
 0046A153    mov         eax,dword ptr [ebp-4]
 0046A156    push        eax
 0046A157    push        0
 0046A159    push        3200
 0046A15E    call        kernel32.FormatMessageA
 0046A163    mov         dword ptr [ebp-0C],eax
>0046A166    jmp         0046A16B
 0046A168    dec         dword ptr [ebp-0C]
 0046A16B    cmp         dword ptr [ebp-0C],0
>0046A16F    jle         0046A183
 0046A171    mov         eax,dword ptr [ebp-0C]
 0046A174    mov         al,byte ptr [ebp+eax-10D]
 0046A17B    sub         al,21
>0046A17D    jb          0046A168
 0046A17F    sub         al,0D
>0046A181    je          0046A168
 0046A183    lea         edx,[ebp-10C]
 0046A189    mov         eax,dword ptr [ebp-8]
 0046A18C    mov         ecx,dword ptr [ebp-0C]
 0046A18F    call        @LStrFromPCharLen
 0046A194    mov         esp,ebp
 0046A196    pop         ebp
 0046A197    ret
*}
end;

//0046A198
{*procedure sub_0046A198(?:Integer; ?:?; ?:AnsiString; ?:?);
begin
 0046A198    push        ebp
 0046A199    mov         ebp,esp
 0046A19B    add         esp,0FFFFFEF0
 0046A1A1    mov         dword ptr [ebp-0C],ecx
 0046A1A4    mov         dword ptr [ebp-8],edx
 0046A1A7    mov         dword ptr [ebp-4],eax
 0046A1AA    push        100
 0046A1AF    lea         eax,[ebp-110]
 0046A1B5    push        eax
 0046A1B6    mov         eax,dword ptr [ebp-8]
 0046A1B9    push        eax
 0046A1BA    mov         eax,dword ptr [ebp-4]
 0046A1BD    push        eax
 0046A1BE    call        kernel32.GetLocaleInfoA
 0046A1C3    mov         dword ptr [ebp-10],eax
 0046A1C6    cmp         dword ptr [ebp-10],0
>0046A1CA    jle         0046A1E0
 0046A1CC    mov         ecx,dword ptr [ebp-10]
 0046A1CF    dec         ecx
 0046A1D0    lea         edx,[ebp-110]
 0046A1D6    mov         eax,dword ptr [ebp+8]
 0046A1D9    call        @LStrFromPCharLen
>0046A1DE    jmp         0046A1EB
 0046A1E0    mov         eax,dword ptr [ebp+8]
 0046A1E3    mov         edx,dword ptr [ebp-0C]
 0046A1E6    call        @LStrAsg
 0046A1EB    mov         esp,ebp
 0046A1ED    pop         ebp
 0046A1EE    ret         4
end;*}

//0046A1F4
{*function sub_0046A1F4(?:Integer; ?:?; ?:?):?;
begin
 0046A1F4    push        ebp
 0046A1F5    mov         ebp,esp
 0046A1F7    add         esp,0FFFFFFF4
 0046A1FA    mov         byte ptr [ebp-9],cl
 0046A1FD    mov         dword ptr [ebp-8],edx
 0046A200    mov         dword ptr [ebp-4],eax
 0046A203    push        2
 0046A205    lea         eax,[ebp-0C]
 0046A208    push        eax
 0046A209    mov         eax,dword ptr [ebp-8]
 0046A20C    push        eax
 0046A20D    mov         eax,dword ptr [ebp-4]
 0046A210    push        eax
 0046A211    call        kernel32.GetLocaleInfoA
 0046A216    test        eax,eax
>0046A218    jle         0046A222
 0046A21A    mov         al,byte ptr [ebp-0C]
 0046A21D    mov         byte ptr [ebp-0A],al
>0046A220    jmp         0046A228
 0046A222    mov         al,byte ptr [ebp-9]
 0046A225    mov         byte ptr [ebp-0A],al
 0046A228    mov         al,byte ptr [ebp-0A]
 0046A22B    mov         esp,ebp
 0046A22D    pop         ebp
 0046A22E    ret
end;*}

//0046A230
{*procedure sub_0046A230(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0046A230    push        ebp
 0046A231    mov         ebp,esp
 0046A233    add         esp,0FFFFFFF4
 0046A236    mov         dword ptr [ebp-0C],ecx
 0046A239    mov         dword ptr [ebp-8],edx
 0046A23C    mov         dword ptr [ebp-4],eax
 0046A23F    mov         eax,dword ptr [ebp+8]
 0046A242    push        eax
 0046A243    mov         eax,dword ptr [ebp+10]
 0046A246    mov         eax,dword ptr [eax-4]
 0046A249    xor         ecx,ecx
 0046A24B    mov         edx,dword ptr [ebp-4]
 0046A24E    call        0046A198
 0046A253    mov         eax,dword ptr [ebp+8]
 0046A256    cmp         dword ptr [eax],0
>0046A259    jne         0046A26C
 0046A25B    mov         eax,dword ptr [ebp-0C]
 0046A25E    mov         edx,dword ptr [ebp-8]
 0046A261    mov         eax,dword ptr [eax+edx*4]
 0046A264    mov         edx,dword ptr [ebp+8]
 0046A267    call        LoadResString
 0046A26C    mov         esp,ebp
 0046A26E    pop         ebp
 0046A26F    ret         8
end;*}

//0046A274
procedure sub_0046A274;
begin
{*
 0046A274    push        ebp
 0046A275    mov         ebp,esp
 0046A277    xor         ecx,ecx
 0046A279    push        ecx
 0046A27A    push        ecx
 0046A27B    push        ecx
 0046A27C    push        ecx
 0046A27D    push        ecx
 0046A27E    push        ecx
 0046A27F    push        ecx
 0046A280    xor         eax,eax
 0046A282    push        ebp
 0046A283    push        46A39C
 0046A288    push        dword ptr fs:[eax]
 0046A28B    mov         dword ptr fs:[eax],esp
 0046A28E    call        kernel32.GetThreadLocale
 0046A293    mov         dword ptr [ebp-4],eax
 0046A296    mov         dword ptr [ebp-8],1
 0046A29D    push        ebp
 0046A29E    push        0B
 0046A2A0    lea         eax,[ebp-10]
 0046A2A3    push        eax
 0046A2A4    mov         ecx,5409FC;^SShortMonthNameJan:TResStringRec
 0046A2A9    mov         edx,dword ptr [ebp-8]
 0046A2AC    dec         edx
 0046A2AD    mov         eax,dword ptr [ebp-8]
 0046A2B0    add         eax,44
 0046A2B3    dec         eax
 0046A2B4    call        0046A230
 0046A2B9    pop         ecx
 0046A2BA    mov         edx,dword ptr [ebp-10]
 0046A2BD    mov         eax,dword ptr [ebp-8]
 0046A2C0    lea         eax,[eax*4+55D928];gvar_0055D928:AnsiString
 0046A2C7    call        @LStrAsg
 0046A2CC    push        ebp
 0046A2CD    push        0B
 0046A2CF    lea         eax,[ebp-14]
 0046A2D2    push        eax
 0046A2D3    mov         ecx,540A2C;^SLongMonthNameJan:TResStringRec
 0046A2D8    mov         edx,dword ptr [ebp-8]
 0046A2DB    dec         edx
 0046A2DC    mov         eax,dword ptr [ebp-8]
 0046A2DF    add         eax,38
 0046A2E2    dec         eax
 0046A2E3    call        0046A230
 0046A2E8    pop         ecx
 0046A2E9    mov         edx,dword ptr [ebp-14]
 0046A2EC    mov         eax,dword ptr [ebp-8]
 0046A2EF    lea         eax,[eax*4+55D958];gvar_0055D958
 0046A2F6    call        @LStrAsg
 0046A2FB    inc         dword ptr [ebp-8]
 0046A2FE    cmp         dword ptr [ebp-8],0D
>0046A302    jne         0046A29D
 0046A304    mov         dword ptr [ebp-8],1
 0046A30B    mov         eax,dword ptr [ebp-8]
 0046A30E    add         eax,5
 0046A311    mov         ecx,7
 0046A316    cdq
 0046A317    idiv        eax,ecx
 0046A319    mov         dword ptr [ebp-0C],edx
 0046A31C    push        ebp
 0046A31D    push        6
 0046A31F    lea         eax,[ebp-18]
 0046A322    push        eax
 0046A323    mov         ecx,540A5C;^SShortDayNameSun:TResStringRec
 0046A328    mov         edx,dword ptr [ebp-8]
 0046A32B    dec         edx
 0046A32C    mov         eax,dword ptr [ebp-0C]
 0046A32F    add         eax,31
 0046A332    call        0046A230
 0046A337    pop         ecx
 0046A338    mov         edx,dword ptr [ebp-18]
 0046A33B    mov         eax,dword ptr [ebp-8]
 0046A33E    lea         eax,[eax*4+55D988];gvar_0055D988
 0046A345    call        @LStrAsg
 0046A34A    push        ebp
 0046A34B    push        6
 0046A34D    lea         eax,[ebp-1C]
 0046A350    push        eax
 0046A351    mov         ecx,540A78;^SLongDayNameSun:TResStringRec
 0046A356    mov         edx,dword ptr [ebp-8]
 0046A359    dec         edx
 0046A35A    mov         eax,dword ptr [ebp-0C]
 0046A35D    add         eax,2A
 0046A360    call        0046A230
 0046A365    pop         ecx
 0046A366    mov         edx,dword ptr [ebp-1C]
 0046A369    mov         eax,dword ptr [ebp-8]
 0046A36C    lea         eax,[eax*4+55D9A4];gvar_0055D9A4
 0046A373    call        @LStrAsg
 0046A378    inc         dword ptr [ebp-8]
 0046A37B    cmp         dword ptr [ebp-8],8
>0046A37F    jne         0046A30B
 0046A381    xor         eax,eax
 0046A383    pop         edx
 0046A384    pop         ecx
 0046A385    pop         ecx
 0046A386    mov         dword ptr fs:[eax],edx
 0046A389    push        46A3A3
 0046A38E    lea         eax,[ebp-1C]
 0046A391    mov         edx,4
 0046A396    call        @LStrArrayClr
 0046A39B    ret
>0046A39C    jmp         @HandleFinally
>0046A3A1    jmp         0046A38E
 0046A3A3    mov         esp,ebp
 0046A3A5    pop         ebp
 0046A3A6    ret
*}
end;

//0046A480
procedure sub_0046A480;
begin
{*
 0046A480    push        ebp
 0046A481    mov         ebp,esp
 0046A483    add         esp,0FFFFFFF4
 0046A486    xor         eax,eax
 0046A488    mov         dword ptr [ebp-0C],eax
 0046A48B    xor         eax,eax
 0046A48D    push        ebp
 0046A48E    push        46A52C
 0046A493    push        dword ptr fs:[eax]
 0046A496    mov         dword ptr fs:[eax],esp
 0046A499    lea         eax,[ebp-0C]
 0046A49C    push        eax
 0046A49D    call        kernel32.GetThreadLocale
 0046A4A2    mov         ecx,46A540;'1'
 0046A4A7    mov         edx,100B
 0046A4AC    call        0046A198
 0046A4B1    mov         eax,dword ptr [ebp-0C]
 0046A4B4    mov         edx,1
 0046A4B9    call        00466B0C
 0046A4BE    mov         dword ptr [ebp-8],eax
 0046A4C1    mov         eax,dword ptr [ebp-8]
 0046A4C4    add         eax,0FFFFFFFD
 0046A4C7    sub         eax,3
>0046A4CA    jae         0046A516
 0046A4CC    push        4
 0046A4CE    mov         eax,dword ptr [ebp-8]
 0046A4D1    push        eax
 0046A4D2    call        kernel32.GetThreadLocale
 0046A4D7    push        eax
 0046A4D8    push        46A3A8
 0046A4DD    call        kernel32.EnumCalendarInfoA
 0046A4E2    mov         dword ptr [ebp-4],1
 0046A4E9    mov         eax,dword ptr [ebp-4]
 0046A4EC    mov         dword ptr [eax*4+55D9EC],0FFFFFFFF;gvar_0055D9EC
 0046A4F7    inc         dword ptr [ebp-4]
 0046A4FA    cmp         dword ptr [ebp-4],8
>0046A4FE    jne         0046A4E9
 0046A500    push        3
 0046A502    mov         eax,dword ptr [ebp-8]
 0046A505    push        eax
 0046A506    call        kernel32.GetThreadLocale
 0046A50B    push        eax
 0046A50C    push        46A3F4
 0046A511    call        kernel32.EnumCalendarInfoA
 0046A516    xor         eax,eax
 0046A518    pop         edx
 0046A519    pop         ecx
 0046A51A    pop         ecx
 0046A51B    mov         dword ptr fs:[eax],edx
 0046A51E    push        46A533
 0046A523    lea         eax,[ebp-0C]
 0046A526    call        @LStrClr
 0046A52B    ret
>0046A52C    jmp         @HandleFinally
>0046A531    jmp         0046A523
 0046A533    mov         esp,ebp
 0046A535    pop         ebp
 0046A536    ret
*}
end;

//0046A544
{*procedure sub_0046A544(?:?; ?:?);
begin
 0046A544    push        ebp
 0046A545    mov         ebp,esp
 0046A547    add         esp,0FFFFFFD8
 0046A54A    xor         ecx,ecx
 0046A54C    mov         dword ptr [ebp-28],ecx
 0046A54F    mov         dword ptr [ebp-24],ecx
 0046A552    mov         dword ptr [ebp-20],ecx
 0046A555    mov         dword ptr [ebp-1C],ecx
 0046A558    mov         dword ptr [ebp-8],edx
 0046A55B    mov         dword ptr [ebp-4],eax
 0046A55E    xor         eax,eax
 0046A560    push        ebp
 0046A561    push        46A78A
 0046A566    push        dword ptr fs:[eax]
 0046A569    mov         dword ptr fs:[eax],esp
 0046A56C    mov         dword ptr [ebp-0C],1
 0046A573    mov         eax,dword ptr [ebp-8]
 0046A576    call        @LStrClr
 0046A57B    lea         eax,[ebp-1C]
 0046A57E    push        eax
 0046A57F    call        kernel32.GetThreadLocale
 0046A584    mov         ecx,46A7A0;'1'
 0046A589    mov         edx,1009
 0046A58E    call        0046A198
 0046A593    mov         eax,dword ptr [ebp-1C]
 0046A596    mov         edx,1
 0046A59B    call        00466B0C
 0046A5A0    mov         dword ptr [ebp-14],eax
 0046A5A3    mov         eax,dword ptr [ebp-14]
 0046A5A6    add         eax,0FFFFFFFD
 0046A5A9    sub         eax,3
>0046A5AC    jb          0046A75E
 0046A5B2    mov         eax,[0055D9C8];gvar_0055D9C8
 0046A5B7    sub         eax,4
>0046A5BA    je          0046A5C8
 0046A5BC    add         eax,0FFFFFFF3
 0046A5BF    sub         eax,2
>0046A5C2    jb          0046A5C8
 0046A5C4    xor         eax,eax
>0046A5C6    jmp         0046A5CA
 0046A5C8    mov         al,1
 0046A5CA    mov         byte ptr [ebp-15],al
 0046A5CD    cmp         byte ptr [ebp-15],0
>0046A5D1    je          0046A61C
>0046A5D3    jmp         0046A60A
 0046A5D5    mov         eax,dword ptr [ebp-0C]
 0046A5D8    mov         edx,dword ptr [ebp-4]
 0046A5DB    mov         al,byte ptr [edx+eax-1]
 0046A5DF    sub         al,47
>0046A5E1    je          0046A607
 0046A5E3    sub         al,20
>0046A5E5    je          0046A607
 0046A5E7    lea         eax,[ebp-20]
 0046A5EA    mov         edx,dword ptr [ebp-0C]
 0046A5ED    mov         ecx,dword ptr [ebp-4]
 0046A5F0    mov         dl,byte ptr [ecx+edx-1]
 0046A5F4    call        @LStrFromChar
 0046A5F9    mov         edx,dword ptr [ebp-20]
 0046A5FC    mov         eax,dword ptr [ebp-8]
 0046A5FF    call        @LStrCat
 0046A604    mov         eax,dword ptr [ebp-8]
 0046A607    inc         dword ptr [ebp-0C]
 0046A60A    mov         eax,dword ptr [ebp-4]
 0046A60D    call        @DynArrayLength
 0046A612    cmp         eax,dword ptr [ebp-0C]
>0046A615    jge         0046A5D5
>0046A617    jmp         0046A76F
 0046A61C    mov         eax,dword ptr [ebp-8]
 0046A61F    mov         edx,dword ptr [ebp-4]
 0046A622    call        @LStrAsg
>0046A627    jmp         0046A76F
 0046A62C    mov         eax,dword ptr [ebp-0C]
 0046A62F    mov         edx,dword ptr [ebp-4]
 0046A632    mov         al,byte ptr [edx+eax-1]
 0046A636    and         eax,0FF
 0046A63B    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046A642    jae         0046A67D
 0046A644    mov         edx,dword ptr [ebp-0C]
 0046A647    mov         eax,dword ptr [ebp-4]
 0046A64A    call        0046B93C
 0046A64F    mov         dword ptr [ebp-10],eax
 0046A652    lea         eax,[ebp-24]
 0046A655    push        eax
 0046A656    mov         ecx,dword ptr [ebp-10]
 0046A659    mov         edx,dword ptr [ebp-0C]
 0046A65C    mov         eax,dword ptr [ebp-4]
 0046A65F    call        @LStrCopy
 0046A664    mov         edx,dword ptr [ebp-24]
 0046A667    mov         eax,dword ptr [ebp-8]
 0046A66A    call        @LStrCat
 0046A66F    mov         eax,dword ptr [ebp-8]
 0046A672    mov         eax,dword ptr [ebp-10]
 0046A675    add         dword ptr [ebp-0C],eax
>0046A678    jmp         0046A75E
 0046A67D    mov         edx,46A7A4
 0046A682    mov         eax,dword ptr [ebp-0C]
 0046A685    mov         ecx,dword ptr [ebp-4]
 0046A688    lea         eax,[ecx+eax-1]
 0046A68C    mov         ecx,2
 0046A691    call        StrLIComp
 0046A696    test        eax,eax
>0046A698    jne         0046A6B2
 0046A69A    mov         eax,dword ptr [ebp-8]
 0046A69D    mov         edx,46A7B0;'ggg'
 0046A6A2    call        @LStrCat
 0046A6A7    mov         eax,dword ptr [ebp-8]
 0046A6AA    inc         dword ptr [ebp-0C]
>0046A6AD    jmp         0046A75B
 0046A6B2    mov         edx,46A7B4
 0046A6B7    mov         eax,dword ptr [ebp-0C]
 0046A6BA    mov         ecx,dword ptr [ebp-4]
 0046A6BD    lea         eax,[ecx+eax-1]
 0046A6C1    mov         ecx,4
 0046A6C6    call        StrLIComp
 0046A6CB    test        eax,eax
>0046A6CD    jne         0046A6E5
 0046A6CF    mov         eax,dword ptr [ebp-8]
 0046A6D2    mov         edx,46A7C4;'eeee'
 0046A6D7    call        @LStrCat
 0046A6DC    mov         eax,dword ptr [ebp-8]
 0046A6DF    add         dword ptr [ebp-0C],3
>0046A6E3    jmp         0046A75B
 0046A6E5    mov         edx,46A7CC
 0046A6EA    mov         eax,dword ptr [ebp-0C]
 0046A6ED    mov         ecx,dword ptr [ebp-4]
 0046A6F0    lea         eax,[ecx+eax-1]
 0046A6F4    mov         ecx,2
 0046A6F9    call        StrLIComp
 0046A6FE    test        eax,eax
>0046A700    jne         0046A717
 0046A702    mov         eax,dword ptr [ebp-8]
 0046A705    mov         edx,46A7D8;'ee'
 0046A70A    call        @LStrCat
 0046A70F    mov         eax,dword ptr [ebp-8]
 0046A712    inc         dword ptr [ebp-0C]
>0046A715    jmp         0046A75B
 0046A717    mov         eax,dword ptr [ebp-0C]
 0046A71A    mov         edx,dword ptr [ebp-4]
 0046A71D    mov         al,byte ptr [edx+eax-1]
 0046A721    sub         al,59
>0046A723    je          0046A729
 0046A725    sub         al,20
>0046A727    jne         0046A73B
 0046A729    mov         eax,dword ptr [ebp-8]
 0046A72C    mov         edx,46A7E4;'e'
 0046A731    call        @LStrCat
 0046A736    mov         eax,dword ptr [ebp-8]
>0046A739    jmp         0046A75B
 0046A73B    lea         eax,[ebp-28]
 0046A73E    mov         edx,dword ptr [ebp-0C]
 0046A741    mov         ecx,dword ptr [ebp-4]
 0046A744    mov         dl,byte ptr [ecx+edx-1]
 0046A748    call        @LStrFromChar
 0046A74D    mov         edx,dword ptr [ebp-28]
 0046A750    mov         eax,dword ptr [ebp-8]
 0046A753    call        @LStrCat
 0046A758    mov         eax,dword ptr [ebp-8]
 0046A75B    inc         dword ptr [ebp-0C]
 0046A75E    mov         eax,dword ptr [ebp-4]
 0046A761    call        @DynArrayLength
 0046A766    cmp         eax,dword ptr [ebp-0C]
>0046A769    jge         0046A62C
 0046A76F    xor         eax,eax
 0046A771    pop         edx
 0046A772    pop         ecx
 0046A773    pop         ecx
 0046A774    mov         dword ptr fs:[eax],edx
 0046A777    push        46A791
 0046A77C    lea         eax,[ebp-28]
 0046A77F    mov         edx,4
 0046A784    call        @LStrArrayClr
 0046A789    ret
>0046A78A    jmp         @HandleFinally
>0046A78F    jmp         0046A77C
 0046A791    mov         esp,ebp
 0046A793    pop         ebp
 0046A794    ret
end;*}

//0046A7E8
{*function sub_0046A7E8(?:?):?;
begin
 0046A7E8    push        ebp
 0046A7E9    mov         ebp,esp
 0046A7EB    test        eax,eax
>0046A7ED    je          0046A7F4
 0046A7EF    sub         eax,1000
 0046A7F4    pop         ebp
 0046A7F5    ret
end;*}

//0046A7F8
{*function sub_0046A7F8(?:?; ?:?; ?:?; ?:?):?;
begin
 0046A7F8    push        ebp
 0046A7F9    mov         ebp,esp
 0046A7FB    add         esp,0FFFFFB90
 0046A801    mov         dword ptr [ebp-0C],ecx
 0046A804    mov         dword ptr [ebp-8],edx
 0046A807    mov         dword ptr [ebp-4],eax
 0046A80A    push        1C
 0046A80C    lea         eax,[ebp-348]
 0046A812    push        eax
 0046A813    mov         eax,dword ptr [ebp-8]
 0046A816    push        eax
 0046A817    call        kernel32.VirtualQuery
 0046A81C    cmp         dword ptr [ebp-338],1000
>0046A826    jne         0046A844
 0046A828    push        105
 0046A82D    lea         eax,[ebp-22A]
 0046A833    push        eax
 0046A834    mov         eax,dword ptr [ebp-344]
 0046A83A    push        eax
 0046A83B    call        kernel32.GetModuleFileNameA
 0046A840    test        eax,eax
>0046A842    jne         0046A86A
 0046A844    push        105
 0046A849    lea         eax,[ebp-22A]
 0046A84F    push        eax
 0046A850    mov         eax,[0055C664];gvar_0055C664
 0046A855    push        eax
 0046A856    call        kernel32.GetModuleFileNameA
 0046A85B    push        ebp
 0046A85C    mov         eax,dword ptr [ebp-8]
 0046A85F    call        0046A7E8
 0046A864    pop         ecx
 0046A865    mov         dword ptr [ebp-20],eax
>0046A868    jmp         0046A876
 0046A86A    mov         eax,dword ptr [ebp-8]
 0046A86D    sub         eax,dword ptr [ebp-344]
 0046A873    mov         dword ptr [ebp-20],eax
 0046A876    lea         eax,[ebp-22A]
 0046A87C    mov         dl,5C
 0046A87E    call        0046BBD8
 0046A883    mov         edx,eax
 0046A885    inc         edx
 0046A886    lea         eax,[ebp-125]
 0046A88C    mov         ecx,104
 0046A891    call        StrLCopy
 0046A896    mov         eax,46A9A8
 0046A89B    mov         dword ptr [ebp-14],eax
 0046A89E    mov         eax,46A9A8
 0046A8A3    mov         dword ptr [ebp-18],eax
 0046A8A6    mov         eax,dword ptr [ebp-4]
 0046A8A9    mov         edx,dword ptr ds:[4653B4];Exception
 0046A8AF    call        @IsClass
 0046A8B4    test        al,al
>0046A8B6    je          0046A8EC
 0046A8B8    mov         eax,dword ptr [ebp-4]
 0046A8BB    mov         eax,dword ptr [eax+4]
 0046A8BE    call        @LStrToPChar
 0046A8C3    mov         dword ptr [ebp-14],eax
 0046A8C6    mov         eax,dword ptr [ebp-14]
 0046A8C9    call        StrLen
 0046A8CE    mov         dword ptr [ebp-1C],eax
 0046A8D1    cmp         dword ptr [ebp-1C],0
>0046A8D5    je          0046A8EC
 0046A8D7    mov         eax,dword ptr [ebp-1C]
 0046A8DA    mov         edx,dword ptr [ebp-14]
 0046A8DD    cmp         byte ptr [edx+eax-1],2E
>0046A8E2    je          0046A8EC
 0046A8E4    mov         eax,46A9AC
 0046A8E9    mov         dword ptr [ebp-18],eax
 0046A8EC    push        100
 0046A8F1    lea         eax,[ebp-32A]
 0046A8F7    push        eax
 0046A8F8    mov         eax,[0055B6C0];^SResString0:TResStringRec
 0046A8FD    mov         eax,dword ptr [eax+4]
 0046A900    push        eax
 0046A901    mov         eax,[0055C664];gvar_0055C664
 0046A906    call        FindResourceHInstance
 0046A90B    push        eax
 0046A90C    call        user32.LoadStringA
 0046A911    lea         edx,[ebp-470]
 0046A917    mov         eax,dword ptr [ebp-4]
 0046A91A    mov         eax,dword ptr [eax]
 0046A91C    call        TObject.ClassName
 0046A921    lea         eax,[ebp-470]
 0046A927    mov         dword ptr [ebp-370],eax
 0046A92D    mov         byte ptr [ebp-36C],4
 0046A934    lea         eax,[ebp-125]
 0046A93A    mov         dword ptr [ebp-368],eax
 0046A940    mov         byte ptr [ebp-364],6
 0046A947    mov         eax,dword ptr [ebp-20]
 0046A94A    mov         dword ptr [ebp-360],eax
 0046A950    mov         byte ptr [ebp-35C],5
 0046A957    mov         eax,dword ptr [ebp-14]
 0046A95A    mov         dword ptr [ebp-358],eax
 0046A960    mov         byte ptr [ebp-354],6
 0046A967    mov         eax,dword ptr [ebp-18]
 0046A96A    mov         dword ptr [ebp-350],eax
 0046A970    mov         byte ptr [ebp-34C],6
 0046A977    lea         eax,[ebp-370]
 0046A97D    push        eax
 0046A97E    push        4
 0046A980    lea         ecx,[ebp-32A]
 0046A986    mov         edx,dword ptr [ebp+8]
 0046A989    mov         eax,dword ptr [ebp-0C]
 0046A98C    call        004679CC
 0046A991    mov         eax,dword ptr [ebp-0C]
 0046A994    call        StrLen
 0046A999    mov         dword ptr [ebp-10],eax
 0046A99C    mov         eax,dword ptr [ebp-10]
 0046A99F    mov         esp,ebp
 0046A9A1    pop         ebp
 0046A9A2    ret         4
end;*}

//0046A9B0
{*procedure sub_0046A9B0(?:?; ?:?);
begin
 0046A9B0    push        ebp
 0046A9B1    mov         ebp,esp
 0046A9B3    add         esp,0FFFFFBB4
 0046A9B9    mov         dword ptr [ebp-8],edx
 0046A9BC    mov         dword ptr [ebp-4],eax
 0046A9BF    push        400
 0046A9C4    lea         ecx,[ebp-44C]
 0046A9CA    mov         edx,dword ptr [ebp-8]
 0046A9CD    mov         eax,dword ptr [ebp-4]
 0046A9D0    call        0046A7F8
 0046A9D5    mov         eax,[0055B570];^gvar_0055C048
 0046A9DA    cmp         byte ptr [eax],0
>0046A9DD    je          0046AA43
 0046A9DF    mov         eax,[0055B274];^gvar_0055C218:TTextRec
 0046A9E4    call        Flush
 0046A9E9    call        @_IOTest
 0046A9EE    lea         eax,[ebp-44C]
 0046A9F4    push        eax
 0046A9F5    lea         eax,[ebp-44C]
 0046A9FB    push        eax
 0046A9FC    call        user32.CharToOemA
 0046AA01    push        0
 0046AA03    lea         eax,[ebp-0C]
 0046AA06    push        eax
 0046AA07    lea         eax,[ebp-44C]
 0046AA0D    call        StrLen
 0046AA12    push        eax
 0046AA13    lea         eax,[ebp-44C]
 0046AA19    push        eax
 0046AA1A    push        0F4
 0046AA1C    call        kernel32.GetStdHandle
 0046AA21    push        eax
 0046AA22    call        kernel32.WriteFile
 0046AA27    push        0
 0046AA29    lea         eax,[ebp-0C]
 0046AA2C    push        eax
 0046AA2D    push        2
 0046AA2F    push        46AA88;#13+#10
 0046AA34    push        0F4
 0046AA36    call        kernel32.GetStdHandle
 0046AA3B    push        eax
 0046AA3C    call        kernel32.WriteFile
>0046AA41    jmp         0046AA79
 0046AA43    push        40
 0046AA45    lea         eax,[ebp-4C]
 0046AA48    push        eax
 0046AA49    mov         eax,[0055B1F8];^SExceptTitle:TResStringRec
 0046AA4E    mov         eax,dword ptr [eax+4]
 0046AA51    push        eax
 0046AA52    mov         eax,[0055C664];gvar_0055C664
 0046AA57    call        FindResourceHInstance
 0046AA5C    push        eax
 0046AA5D    call        user32.LoadStringA
 0046AA62    push        2010
 0046AA67    lea         eax,[ebp-4C]
 0046AA6A    push        eax
 0046AA6B    lea         eax,[ebp-44C]
 0046AA71    push        eax
 0046AA72    push        0
 0046AA74    call        user32.MessageBoxA
 0046AA79    mov         esp,ebp
 0046AA7B    pop         ebp
 0046AA7C    ret
end;*}

//0046AA8C
{*function sub_0046AA8C(?:?):?;
begin
 0046AA8C    push        ebp
 0046AA8D    mov         ebp,esp
 0046AA8F    mov         eax,dword ptr [ebp+4]
 0046AA92    pop         ebp
 0046AA93    ret
end;*}

//0046AA94
procedure sub_0046AA94;
begin
{*
 0046AA94    push        ebp
 0046AA95    mov         ebp,esp
 0046AA97    push        ebp
 0046AA98    call        0046AA8C
 0046AA9D    pop         ecx
 0046AA9E    push        eax
 0046AA9F    mov         ecx,dword ptr ds:[55B380];^SOperationAborted:TResStringRec
 0046AAA5    mov         dl,1
 0046AAA7    mov         eax,[0046541C];EAbort
 0046AAAC    call        Exception.Create;EAbort.Create
>0046AAB1    jmp         @RaiseExcept
*}
end;

//0046AAB8
constructor Exception.Create(const Msg:AnsiString);
begin
{*
 0046AAB8    push        ebp
 0046AAB9    mov         ebp,esp
 0046AABB    add         esp,0FFFFFFF4
 0046AABE    test        dl,dl
>0046AAC0    je          0046AACA
 0046AAC2    add         esp,0FFFFFFF0
 0046AAC5    call        @ClassCreate
 0046AACA    mov         dword ptr [ebp-0C],ecx
 0046AACD    mov         byte ptr [ebp-5],dl
 0046AAD0    mov         dword ptr [ebp-4],eax
 0046AAD3    mov         eax,dword ptr [ebp-4]
 0046AAD6    add         eax,4
 0046AAD9    mov         edx,dword ptr [ebp-0C]
 0046AADC    call        @LStrAsg
 0046AAE1    mov         eax,dword ptr [ebp-4]
 0046AAE4    cmp         byte ptr [ebp-5],0
>0046AAE8    je          0046AAF9
 0046AAEA    call        @AfterConstruction
 0046AAEF    pop         dword ptr fs:[0]
 0046AAF6    add         esp,0C
 0046AAF9    mov         eax,dword ptr [ebp-4]
 0046AAFC    mov         esp,ebp
 0046AAFE    pop         ebp
 0046AAFF    ret
*}
end;

//0046AB00
constructor Exception.CreateFmt(const Msg:AnsiString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);
begin
{*
 0046AB00    push        ebp
 0046AB01    mov         ebp,esp
 0046AB03    add         esp,0FFFFFFF0
 0046AB06    push        ebx
 0046AB07    xor         ebx,ebx
 0046AB09    mov         dword ptr [ebp-10],ebx
 0046AB0C    test        dl,dl
>0046AB0E    je          0046AB18
 0046AB10    add         esp,0FFFFFFF0
 0046AB13    call        @ClassCreate
 0046AB18    mov         dword ptr [ebp-0C],ecx
 0046AB1B    mov         byte ptr [ebp-5],dl
 0046AB1E    mov         dword ptr [ebp-4],eax
 0046AB21    xor         eax,eax
 0046AB23    push        ebp
 0046AB24    push        46AB65
 0046AB29    push        dword ptr fs:[eax]
 0046AB2C    mov         dword ptr fs:[eax],esp
 0046AB2F    lea         eax,[ebp-10]
 0046AB32    push        eax
 0046AB33    mov         edx,dword ptr [ebp+0C]
 0046AB36    mov         ecx,dword ptr [ebp+8]
 0046AB39    mov         eax,dword ptr [ebp-0C]
 0046AB3C    call        Format
 0046AB41    mov         edx,dword ptr [ebp-10]
 0046AB44    mov         eax,dword ptr [ebp-4]
 0046AB47    add         eax,4
 0046AB4A    call        @LStrAsg
 0046AB4F    xor         eax,eax
 0046AB51    pop         edx
 0046AB52    pop         ecx
 0046AB53    pop         ecx
 0046AB54    mov         dword ptr fs:[eax],edx
 0046AB57    push        46AB6C
 0046AB5C    lea         eax,[ebp-10]
 0046AB5F    call        @LStrClr
 0046AB64    ret
>0046AB65    jmp         @HandleFinally
>0046AB6A    jmp         0046AB5C
 0046AB6C    mov         eax,dword ptr [ebp-4]
 0046AB6F    cmp         byte ptr [ebp-5],0
>0046AB73    je          0046AB84
 0046AB75    call        @AfterConstruction
 0046AB7A    pop         dword ptr fs:[0]
 0046AB81    add         esp,0C
 0046AB84    mov         eax,dword ptr [ebp-4]
 0046AB87    pop         ebx
 0046AB88    mov         esp,ebp
 0046AB8A    pop         ebp
 0046AB8B    ret         8
*}
end;

//0046AB90
constructor Exception.Create;
begin
{*
 0046AB90    push        ebp
 0046AB91    mov         ebp,esp
 0046AB93    add         esp,0FFFFFFF4
 0046AB96    test        dl,dl
>0046AB98    je          0046ABA2
 0046AB9A    add         esp,0FFFFFFF0
 0046AB9D    call        @ClassCreate
 0046ABA2    mov         dword ptr [ebp-0C],ecx
 0046ABA5    mov         byte ptr [ebp-5],dl
 0046ABA8    mov         dword ptr [ebp-4],eax
 0046ABAB    mov         eax,dword ptr [ebp-4]
 0046ABAE    lea         edx,[eax+4];Exception.FMessage:String
 0046ABB1    mov         eax,dword ptr [ebp-0C]
 0046ABB4    call        LoadResString;''%s' is not a valid date and time'
 0046ABB9    mov         eax,dword ptr [ebp-4]
 0046ABBC    cmp         byte ptr [ebp-5],0
>0046ABC0    je          0046ABD1
 0046ABC2    call        @AfterConstruction
 0046ABC7    pop         dword ptr fs:[0]
 0046ABCE    add         esp,0C
 0046ABD1    mov         eax,dword ptr [ebp-4]
 0046ABD4    mov         esp,ebp
 0046ABD6    pop         ebp
 0046ABD7    ret
*}
end;

//0046ABD8
constructor Exception.CreateResFmt(Ident:Integer; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);
begin
{*
 0046ABD8    push        ebp
 0046ABD9    mov         ebp,esp
 0046ABDB    add         esp,0FFFFFFEC
 0046ABDE    push        ebx
 0046ABDF    xor         ebx,ebx
 0046ABE1    mov         dword ptr [ebp-10],ebx
 0046ABE4    mov         dword ptr [ebp-14],ebx
 0046ABE7    test        dl,dl
>0046ABE9    je          0046ABF3
 0046ABEB    add         esp,0FFFFFFF0
 0046ABEE    call        @ClassCreate
 0046ABF3    mov         dword ptr [ebp-0C],ecx
 0046ABF6    mov         byte ptr [ebp-5],dl
 0046ABF9    mov         dword ptr [ebp-4],eax
 0046ABFC    xor         eax,eax
 0046ABFE    push        ebp
 0046ABFF    push        46AC50
 0046AC04    push        dword ptr fs:[eax]
 0046AC07    mov         dword ptr fs:[eax],esp
 0046AC0A    lea         eax,[ebp-10]
 0046AC0D    push        eax
 0046AC0E    lea         edx,[ebp-14]
 0046AC11    mov         eax,dword ptr [ebp-0C]
 0046AC14    call        LoadResString
 0046AC19    mov         eax,dword ptr [ebp-14]
 0046AC1C    mov         edx,dword ptr [ebp+0C]
 0046AC1F    mov         ecx,dword ptr [ebp+8]
 0046AC22    call        Format
 0046AC27    mov         edx,dword ptr [ebp-10]
 0046AC2A    mov         eax,dword ptr [ebp-4]
 0046AC2D    add         eax,4
 0046AC30    call        @LStrAsg
 0046AC35    xor         eax,eax
 0046AC37    pop         edx
 0046AC38    pop         ecx
 0046AC39    pop         ecx
 0046AC3A    mov         dword ptr fs:[eax],edx
 0046AC3D    push        46AC57
 0046AC42    lea         eax,[ebp-14]
 0046AC45    mov         edx,2
 0046AC4A    call        @LStrArrayClr
 0046AC4F    ret
>0046AC50    jmp         @HandleFinally
>0046AC55    jmp         0046AC42
 0046AC57    mov         eax,dword ptr [ebp-4]
 0046AC5A    cmp         byte ptr [ebp-5],0
>0046AC5E    je          0046AC6F
 0046AC60    call        @AfterConstruction
 0046AC65    pop         dword ptr fs:[0]
 0046AC6C    add         esp,0C
 0046AC6F    mov         eax,dword ptr [ebp-4]
 0046AC72    pop         ebx
 0046AC73    mov         esp,ebp
 0046AC75    pop         ebp
 0046AC76    ret         8
*}
end;

//0046ACB8
{*function sub_0046ACB8:?;
begin
 0046ACB8    push        ebp
 0046ACB9    mov         ebp,esp
 0046ACBB    add         esp,0FFFFFFEC
 0046ACBE    xor         eax,eax
 0046ACC0    mov         dword ptr [ebp-8],eax
 0046ACC3    call        IOResult
 0046ACC8    mov         dword ptr [ebp-0C],eax
>0046ACCB    jmp         0046ACD0
 0046ACCD    inc         dword ptr [ebp-8]
 0046ACD0    cmp         dword ptr [ebp-8],6
>0046ACD4    jg          0046ACE5
 0046ACD6    mov         eax,dword ptr [ebp-8]
 0046ACD9    mov         eax,dword ptr [eax*8+540A94];gvar_00540A94:array[7] of ?
 0046ACE0    cmp         eax,dword ptr [ebp-0C]
>0046ACE3    jne         0046ACCD
 0046ACE5    cmp         dword ptr [ebp-8],6
>0046ACE9    jg          0046AD06
 0046ACEB    mov         eax,dword ptr [ebp-8]
 0046ACEE    mov         ecx,dword ptr [eax*8+540A98]
 0046ACF5    mov         dl,1
 0046ACF7    mov         eax,[00465528];EInOutError
 0046ACFC    call        Exception.Create;EInOutError.Create
 0046AD01    mov         dword ptr [ebp-4],eax
>0046AD04    jmp         0046AD2B
 0046AD06    mov         eax,dword ptr [ebp-0C]
 0046AD09    mov         dword ptr [ebp-14],eax
 0046AD0C    mov         byte ptr [ebp-10],0
 0046AD10    lea         eax,[ebp-14]
 0046AD13    push        eax
 0046AD14    push        0
 0046AD16    mov         ecx,dword ptr ds:[55B1F0];^SInOutError:TResStringRec
 0046AD1C    mov         dl,1
 0046AD1E    mov         eax,[00465528];EInOutError
 0046AD23    call        Exception.CreateResFmt;EInOutError.Create
 0046AD28    mov         dword ptr [ebp-4],eax
 0046AD2B    mov         eax,dword ptr [ebp-4]
 0046AD2E    mov         edx,dword ptr [ebp-0C]
 0046AD31    mov         dword ptr [eax+0C],edx;EInOutError...ErrorCode:Integer
 0046AD34    mov         eax,dword ptr [ebp-4]
 0046AD37    mov         esp,ebp
 0046AD39    pop         ebp
 0046AD3A    ret
end;*}

//0046AD5C
procedure sub_0046AD5C;
begin
{*
 0046AD5C    push        ebp
 0046AD5D    mov         ebp,esp
 0046AD5F    add         esp,0FFFFFFF0
 0046AD62    mov         dword ptr [ebp-8],edx
 0046AD65    mov         byte ptr [ebp-1],al
 0046AD68    mov         al,byte ptr [ebp-1]
 0046AD6B    dec         al
>0046AD6D    je          0046AD7A
 0046AD6F    dec         al
>0046AD71    je          0046AD84
 0046AD73    dec         eax
 0046AD74    sub         al,16
>0046AD76    jb          0046AD8E
>0046AD78    jmp         0046ADB4
 0046AD7A    mov         eax,[0055DA18];gvar_0055DA18:EOutOfMemory
 0046AD7F    mov         dword ptr [ebp-0C],eax
>0046AD82    jmp         0046ADBC
 0046AD84    mov         eax,[0055DA1C];gvar_0055DA1C:EInvalidPointer
 0046AD89    mov         dword ptr [ebp-0C],eax
>0046AD8C    jmp         0046ADBC
 0046AD8E    xor         eax,eax
 0046AD90    mov         al,byte ptr [ebp-1]
 0046AD93    lea         eax,[eax*8+540AB4]
 0046AD9A    mov         dword ptr [ebp-10],eax
 0046AD9D    mov         eax,dword ptr [ebp-10]
 0046ADA0    mov         ecx,dword ptr [eax+4]
 0046ADA3    mov         eax,dword ptr [ebp-10]
 0046ADA6    mov         eax,dword ptr [eax]
 0046ADA8    mov         dl,1
 0046ADAA    call        Exception.Create
 0046ADAF    mov         dword ptr [ebp-0C],eax
>0046ADB2    jmp         0046ADBC
 0046ADB4    call        0046ACB8
 0046ADB9    mov         dword ptr [ebp-0C],eax
 0046ADBC    push        dword ptr [ebp-8]
 0046ADBF    mov         eax,dword ptr [ebp-0C]
>0046ADC2    jmp         @RaiseExcept
*}
end;

//0046ADCC
{*function sub_0046ADCC(?:?; ?:?; ?:?):?;
begin
 0046ADCC    push        ebp
 0046ADCD    mov         ebp,esp
 0046ADCF    add         esp,0FFFFFFD0
 0046ADD2    push        ebx
 0046ADD3    xor         ebx,ebx
 0046ADD5    mov         dword ptr [ebp-30],ebx
 0046ADD8    mov         dword ptr [ebp-14],ebx
 0046ADDB    mov         dword ptr [ebp-0C],ecx
 0046ADDE    mov         dword ptr [ebp-8],edx
 0046ADE1    mov         dword ptr [ebp-4],eax
 0046ADE4    xor         eax,eax
 0046ADE6    push        ebp
 0046ADE7    push        46AE73
 0046ADEC    push        dword ptr fs:[eax]
 0046ADEF    mov         dword ptr fs:[eax],esp
 0046ADF2    cmp         dword ptr [ebp-4],0
>0046ADF6    je          0046AE05
 0046ADF8    lea         eax,[ebp-14]
 0046ADFB    mov         edx,dword ptr [ebp-4]
 0046ADFE    call        @LStrLAsg
>0046AE03    jmp         0046AE12
 0046AE05    lea         edx,[ebp-14]
 0046AE08    mov         eax,[0055B520];^SAssertionFailed:TResStringRec
 0046AE0D    call        LoadResString;'Windows socket error: %s (%d), on API '%s''
 0046AE12    mov         eax,dword ptr [ebp-14]
 0046AE15    mov         dword ptr [ebp-2C],eax
 0046AE18    mov         byte ptr [ebp-28],0B
 0046AE1C    mov         eax,dword ptr [ebp-8]
 0046AE1F    mov         dword ptr [ebp-24],eax
 0046AE22    mov         byte ptr [ebp-20],0B
 0046AE26    mov         eax,dword ptr [ebp-0C]
 0046AE29    mov         dword ptr [ebp-1C],eax
 0046AE2C    mov         byte ptr [ebp-18],0
 0046AE30    lea         eax,[ebp-2C]
 0046AE33    push        eax
 0046AE34    push        2
 0046AE36    lea         edx,[ebp-30]
 0046AE39    mov         eax,[0055B5F0];^SAssertError:TResStringRec
 0046AE3E    call        LoadResString;'Resource %s not found'
 0046AE43    mov         ecx,dword ptr [ebp-30]
 0046AE46    mov         dl,1
 0046AE48    mov         eax,[00465C30];EAssertionFailed
 0046AE4D    call        Exception.CreateFmt;EAssertionFailed.Create
 0046AE52    mov         dword ptr [ebp-10],eax
 0046AE55    xor         eax,eax
 0046AE57    pop         edx
 0046AE58    pop         ecx
 0046AE59    pop         ecx
 0046AE5A    mov         dword ptr fs:[eax],edx
 0046AE5D    push        46AE7A
 0046AE62    lea         eax,[ebp-30]
 0046AE65    call        @LStrClr
 0046AE6A    lea         eax,[ebp-14]
 0046AE6D    call        @LStrClr
 0046AE72    ret
>0046AE73    jmp         @HandleFinally
>0046AE78    jmp         0046AE62
 0046AE7A    mov         eax,dword ptr [ebp-10]
 0046AE7D    pop         ebx
 0046AE7E    mov         esp,ebp
 0046AE80    pop         ebp
 0046AE81    ret
end;*}

//0046AE84
procedure RaiseAssertException(const E:Exception; const ErrorAddr:Pointer; const ErrorStack:Pointer);
begin
{*
 0046AE84    mov         esp,ecx
 0046AE86    mov         dword ptr [esp],edx
 0046AE89    mov         ebp,dword ptr [ebp]
>0046AE8C    jmp         @RaiseExcept
 0046AE91    ret
*}
end;

//0046AE94
{*procedure sub_0046AE94(?:?; ?:?; ?:?; ?:?);
begin
 0046AE94    push        ebp
 0046AE95    mov         ebp,esp
 0046AE97    add         esp,0FFFFFFF0
 0046AE9A    mov         dword ptr [ebp-0C],ecx
 0046AE9D    mov         dword ptr [ebp-8],edx
 0046AEA0    mov         dword ptr [ebp-4],eax
 0046AEA3    mov         ecx,dword ptr [ebp-0C]
 0046AEA6    mov         edx,dword ptr [ebp-8]
 0046AEA9    mov         eax,dword ptr [ebp-4]
 0046AEAC    call        0046ADCC
 0046AEB1    mov         dword ptr [ebp-10],eax
 0046AEB4    lea         ecx,[ebp+8]
 0046AEB7    add         ecx,4
 0046AEBA    mov         edx,dword ptr [ebp+8]
 0046AEBD    mov         eax,dword ptr [ebp-10]
 0046AEC0    call        RaiseAssertException
 0046AEC5    mov         esp,ebp
 0046AEC7    pop         ebp
 0046AEC8    ret         4
end;*}

//0046AECC
procedure sub_0046AECC;
begin
{*
 0046AECC    push        ebp
 0046AECD    mov         ebp,esp
 0046AECF    mov         ecx,dword ptr ds:[55B228];^SAbstractError:TResStringRec
 0046AED5    mov         dl,1
 0046AED7    mov         eax,[00465C90];EAbstractError
 0046AEDC    call        Exception.Create;EAbstractError.Create
 0046AEE1    call        @RaiseExcept
 0046AEE6    pop         ebp
 0046AEE7    ret
*}
end;

//0046AEE8
{*function sub_0046AEE8(?:?):?;
begin
 0046AEE8    push        ebp
 0046AEE9    mov         ebp,esp
 0046AEEB    add         esp,0FFFFFFF8
 0046AEEE    mov         dword ptr [ebp-4],eax
 0046AEF1    mov         eax,dword ptr [ebp-4]
 0046AEF4    mov         eax,dword ptr [eax]
 0046AEF6    cmp         eax,0C0000092
>0046AEFB    jg          0046AF29
>0046AEFD    je          0046AF61
 0046AEFF    cmp         eax,0C000008E
>0046AF04    jg          0046AF1B
>0046AF06    je          0046AF67
 0046AF08    sub         eax,0C0000005
>0046AF0D    je          0046AF79
 0046AF0F    sub         eax,87
>0046AF14    je          0046AF55
 0046AF16    dec         eax
>0046AF17    je          0046AF73
>0046AF19    jmp         0046AF91
 0046AF1B    add         eax,3FFFFF71
 0046AF20    sub         eax,2
>0046AF23    jb          0046AF61
>0046AF25    je          0046AF6D
>0046AF27    jmp         0046AF91
 0046AF29    cmp         eax,0C0000096
>0046AF2E    jg          0046AF41
>0046AF30    je          0046AF7F
 0046AF32    sub         eax,0C0000093
>0046AF37    je          0046AF73
 0046AF39    dec         eax
>0046AF3A    je          0046AF4F
 0046AF3C    dec         eax
>0046AF3D    je          0046AF5B
>0046AF3F    jmp         0046AF91
 0046AF41    sub         eax,0C00000FD
>0046AF46    je          0046AF8B
 0046AF48    sub         eax,3D
>0046AF4B    je          0046AF85
>0046AF4D    jmp         0046AF91
 0046AF4F    mov         byte ptr [ebp-5],3
>0046AF53    jmp         0046AF95
 0046AF55    mov         byte ptr [ebp-5],4
>0046AF59    jmp         0046AF95
 0046AF5B    mov         byte ptr [ebp-5],5
>0046AF5F    jmp         0046AF95
 0046AF61    mov         byte ptr [ebp-5],6
>0046AF65    jmp         0046AF95
 0046AF67    mov         byte ptr [ebp-5],7
>0046AF6B    jmp         0046AF95
 0046AF6D    mov         byte ptr [ebp-5],8
>0046AF71    jmp         0046AF95
 0046AF73    mov         byte ptr [ebp-5],9
>0046AF77    jmp         0046AF95
 0046AF79    mov         byte ptr [ebp-5],0B
>0046AF7D    jmp         0046AF95
 0046AF7F    mov         byte ptr [ebp-5],0C
>0046AF83    jmp         0046AF95
 0046AF85    mov         byte ptr [ebp-5],0D
>0046AF89    jmp         0046AF95
 0046AF8B    mov         byte ptr [ebp-5],0E
>0046AF8F    jmp         0046AF95
 0046AF91    mov         byte ptr [ebp-5],16
 0046AF95    mov         al,byte ptr [ebp-5]
 0046AF98    pop         ecx
 0046AF99    pop         ecx
 0046AF9A    pop         ebp
 0046AF9B    ret
end;*}

//0046AF9C
{*function sub_0046AF9C(?:?):?;
begin
 0046AF9C    push        ebp
 0046AF9D    mov         ebp,esp
 0046AF9F    add         esp,0FFFFFFF4
 0046AFA2    mov         dword ptr [ebp-4],eax
 0046AFA5    mov         eax,dword ptr [ebp-4]
 0046AFA8    call        0046AEE8
 0046AFAD    mov         byte ptr [ebp-9],al
 0046AFB0    xor         eax,eax
 0046AFB2    mov         al,byte ptr [ebp-9]
 0046AFB5    mov         eax,dword ptr [eax*8+540AB4]
 0046AFBC    mov         dword ptr [ebp-8],eax
 0046AFBF    mov         eax,dword ptr [ebp-8]
 0046AFC2    mov         esp,ebp
 0046AFC4    pop         ebp
 0046AFC5    ret
end;*}

//0046B28C
{*procedure sub_0046B28C(?:?; ?:?);
begin
 0046B28C    push        ebp
 0046B28D    mov         ebp,esp
 0046B28F    add         esp,0FFFFFFF8
 0046B292    mov         dword ptr [ebp-8],edx
 0046B295    mov         dword ptr [ebp-4],eax
 0046B298    mov         edx,dword ptr [ebp-8]
 0046B29B    mov         eax,dword ptr [ebp-4]
 0046B29E    call        0046A9B0
 0046B2A3    mov         eax,1
 0046B2A8    call        @Halt
 0046B2AD    pop         ecx
 0046B2AE    pop         ecx
 0046B2AF    pop         ebp
 0046B2B0    ret
end;*}

//0046B2B4
procedure sub_0046B2B4;
begin
{*
 0046B2B4    push        ebp
 0046B2B5    mov         ebp,esp
 0046B2B7    mov         ecx,dword ptr ds:[55B200];^SOutOfMemory:TResStringRec
 0046B2BD    mov         dl,1
 0046B2BF    mov         eax,[004654CC];EOutOfMemory
 0046B2C4    call        Exception.Create;EOutOfMemory.Create
 0046B2C9    mov         [0055DA18],eax;gvar_0055DA18:EOutOfMemory
 0046B2CE    mov         ecx,dword ptr ds:[55B46C];^SInvalidPointer:TResStringRec
 0046B2D4    mov         dl,1
 0046B2D6    mov         eax,[00465954];EInvalidPointer
 0046B2DB    call        Exception.Create;EInvalidPointer.Create
 0046B2E0    mov         [0055DA1C],eax;gvar_0055DA1C:EInvalidPointer
 0046B2E5    mov         eax,[0055B124];^gvar_0055C008
 0046B2EA    mov         dword ptr [eax],46AD5C;sub_0046AD5C
 0046B2F0    mov         eax,[0055B2B8];^gvar_0055C004
 0046B2F5    mov         dword ptr [eax],46B28C;sub_0046B28C
 0046B2FB    mov         eax,[0055B1E0];^gvar_0055C01C:MadException
 0046B300    mov         edx,dword ptr ds:[4653B4];Exception
 0046B306    mov         dword ptr [eax],edx
 0046B308    mov         eax,[0055B298];^gvar_0055C00C
 0046B30D    mov         dword ptr [eax],46AF9C;sub_0046AF9C
 0046B313    mov         eax,[0055B2C8];^gvar_0055C010
 0046B318    mov         dword ptr [eax],46B1AC
 0046B31E    mov         eax,46AE94;sub_0046AE94
 0046B323    mov         edx,dword ptr ds:[55B4B4];^gvar_0055C020
 0046B329    mov         dword ptr [edx],eax
 0046B32B    mov         eax,46AECC;sub_0046AECC
 0046B330    mov         edx,dword ptr ds:[55B0FC];^gvar_0055C028
 0046B336    mov         dword ptr [edx],eax
 0046B338    pop         ebp
 0046B339    ret
*}
end;

//0046B33C
procedure sub_0046B33C;
begin
{*
 0046B33C    push        ebp
 0046B33D    mov         ebp,esp
 0046B33F    cmp         dword ptr ds:[55DA18],0;gvar_0055DA18:EOutOfMemory
>0046B346    je          0046B362
 0046B348    mov         eax,[0055DA18];gvar_0055DA18:EOutOfMemory
 0046B34D    mov         byte ptr [eax+0C],1
 0046B351    mov         eax,[0055DA18];gvar_0055DA18:EOutOfMemory
 0046B356    mov         edx,dword ptr [eax]
 0046B358    call        dword ptr [edx-8]
 0046B35B    xor         eax,eax
 0046B35D    mov         [0055DA18],eax;gvar_0055DA18:EOutOfMemory
 0046B362    cmp         dword ptr ds:[55DA1C],0;gvar_0055DA1C:EInvalidPointer
>0046B369    je          0046B385
 0046B36B    mov         eax,[0055DA1C];gvar_0055DA1C:EInvalidPointer
 0046B370    mov         byte ptr [eax+0C],1
 0046B374    mov         eax,[0055DA1C];gvar_0055DA1C:EInvalidPointer
 0046B379    call        TObject.Free
 0046B37E    xor         eax,eax
 0046B380    mov         [0055DA1C],eax;gvar_0055DA1C:EInvalidPointer
 0046B385    mov         eax,[0055B124];^gvar_0055C008
 0046B38A    xor         edx,edx
 0046B38C    mov         dword ptr [eax],edx
 0046B38E    mov         eax,[0055B2B8];^gvar_0055C004
 0046B393    xor         edx,edx
 0046B395    mov         dword ptr [eax],edx
 0046B397    mov         eax,[0055B1E0];^gvar_0055C01C:MadException
 0046B39C    xor         edx,edx
 0046B39E    mov         dword ptr [eax],edx
 0046B3A0    mov         eax,[0055B298];^gvar_0055C00C
 0046B3A5    xor         edx,edx
 0046B3A7    mov         dword ptr [eax],edx
 0046B3A9    mov         eax,[0055B2C8];^gvar_0055C010
 0046B3AE    xor         edx,edx
 0046B3B0    mov         dword ptr [eax],edx
 0046B3B2    mov         eax,[0055B4B4];^gvar_0055C020
 0046B3B7    xor         edx,edx
 0046B3B9    mov         dword ptr [eax],edx
 0046B3BB    pop         ebp
 0046B3BC    ret
*}
end;

//0046B3C0
procedure sub_0046B3C0;
begin
{*
 0046B3C0    push        ebp
 0046B3C1    mov         ebp,esp
 0046B3C3    add         esp,0FFFFFF6C
 0046B3C9    mov         dword ptr [ebp-94],94
 0046B3D3    lea         eax,[ebp-94]
 0046B3D9    push        eax
 0046B3DA    call        kernel32.GetVersionExA
 0046B3DF    test        eax,eax
>0046B3E1    je          0046B43C
 0046B3E3    mov         eax,dword ptr [ebp-84]
 0046B3E9    mov         [00540934],eax;gvar_00540934
 0046B3EE    mov         eax,dword ptr [ebp-90]
 0046B3F4    mov         [00540938],eax;gvar_00540938
 0046B3F9    mov         eax,dword ptr [ebp-8C]
 0046B3FF    mov         [0054093C],eax;gvar_0054093C
 0046B404    cmp         dword ptr ds:[540934],1;gvar_00540934
>0046B40B    jne         0046B41F
 0046B40D    mov         eax,dword ptr [ebp-88]
 0046B413    and         eax,0FFFF
 0046B418    mov         [00540940],eax;gvar_00540940
>0046B41D    jmp         0046B42A
 0046B41F    mov         eax,dword ptr [ebp-88]
 0046B425    mov         [00540940],eax;gvar_00540940
 0046B42A    mov         eax,540944
 0046B42F    lea         edx,[ebp-80]
 0046B432    mov         ecx,80
 0046B437    call        @LStrFromArray
 0046B43C    mov         esp,ebp
 0046B43E    pop         ebp
 0046B43F    ret
*}
end;

//0046B440
{*function sub_0046B440(?:?; ?:?):?;
begin
 0046B440    push        ebp
 0046B441    mov         ebp,esp
 0046B443    add         esp,0FFFFFFF4
 0046B446    mov         dword ptr [ebp-8],edx
 0046B449    mov         dword ptr [ebp-4],eax
 0046B44C    mov         eax,[00540938];0x0 gvar_00540938
 0046B451    cmp         eax,dword ptr [ebp-4]
>0046B454    jg          0046B46E
 0046B456    mov         eax,[00540938];0x0 gvar_00540938
 0046B45B    cmp         eax,dword ptr [ebp-4]
>0046B45E    jne         0046B46A
 0046B460    mov         eax,[0054093C];0x0 gvar_0054093C
 0046B465    cmp         eax,dword ptr [ebp-8]
>0046B468    jge         0046B46E
 0046B46A    xor         eax,eax
>0046B46C    jmp         0046B470
 0046B46E    mov         al,1
 0046B470    mov         byte ptr [ebp-9],al
 0046B473    mov         al,byte ptr [ebp-9]
 0046B476    mov         esp,ebp
 0046B478    pop         ebp
 0046B479    ret
end;*}

//0046B47C
{*function sub_0046B47C(?:AnsiString):?;
begin
 0046B47C    push        ebp
 0046B47D    mov         ebp,esp
 0046B47F    add         esp,0FFFFFFE0
 0046B482    xor         edx,edx
 0046B484    mov         dword ptr [ebp-0C],edx
 0046B487    mov         dword ptr [ebp-4],eax
 0046B48A    xor         eax,eax
 0046B48C    push        ebp
 0046B48D    push        46B55A
 0046B492    push        dword ptr fs:[eax]
 0046B495    mov         dword ptr fs:[eax],esp
 0046B498    mov         dword ptr [ebp-8],0FFFFFFFF
 0046B49F    lea         eax,[ebp-0C]
 0046B4A2    mov         edx,dword ptr [ebp-4]
 0046B4A5    call        @LStrLAsg
 0046B4AA    lea         eax,[ebp-0C]
 0046B4AD    call        UniqueString
 0046B4B2    lea         eax,[ebp-14]
 0046B4B5    push        eax
 0046B4B6    mov         eax,dword ptr [ebp-0C]
 0046B4B9    call        @LStrToPChar
 0046B4BE    push        eax
 0046B4BF    call        version.GetFileVersionInfoSizeA
 0046B4C4    mov         dword ptr [ebp-10],eax
 0046B4C7    cmp         dword ptr [ebp-10],0
>0046B4CB    je          0046B544
 0046B4CD    mov         eax,dword ptr [ebp-10]
 0046B4D0    call        @GetMem
 0046B4D5    mov         dword ptr [ebp-18],eax
 0046B4D8    xor         eax,eax
 0046B4DA    push        ebp
 0046B4DB    push        46B53D
 0046B4E0    push        dword ptr fs:[eax]
 0046B4E3    mov         dword ptr fs:[eax],esp
 0046B4E6    mov         eax,dword ptr [ebp-18]
 0046B4E9    push        eax
 0046B4EA    mov         eax,dword ptr [ebp-10]
 0046B4ED    push        eax
 0046B4EE    mov         eax,dword ptr [ebp-14]
 0046B4F1    push        eax
 0046B4F2    mov         eax,dword ptr [ebp-0C]
 0046B4F5    call        @LStrToPChar
 0046B4FA    push        eax
 0046B4FB    call        version.GetFileVersionInfoA
 0046B500    test        eax,eax
>0046B502    je          0046B527
 0046B504    lea         eax,[ebp-20]
 0046B507    push        eax
 0046B508    lea         eax,[ebp-1C]
 0046B50B    push        eax
 0046B50C    push        46B568;'\'
 0046B511    mov         eax,dword ptr [ebp-18]
 0046B514    push        eax
 0046B515    call        version.VerQueryValueA
 0046B51A    test        eax,eax
>0046B51C    je          0046B527
 0046B51E    mov         eax,dword ptr [ebp-1C]
 0046B521    mov         eax,dword ptr [eax+8]
 0046B524    mov         dword ptr [ebp-8],eax
 0046B527    xor         eax,eax
 0046B529    pop         edx
 0046B52A    pop         ecx
 0046B52B    pop         ecx
 0046B52C    mov         dword ptr fs:[eax],edx
 0046B52F    push        46B544
 0046B534    mov         eax,dword ptr [ebp-18]
 0046B537    call        @FreeMem
 0046B53C    ret
>0046B53D    jmp         @HandleFinally
>0046B542    jmp         0046B534
 0046B544    xor         eax,eax
 0046B546    pop         edx
 0046B547    pop         ecx
 0046B548    pop         ecx
 0046B549    mov         dword ptr fs:[eax],edx
 0046B54C    push        46B561
 0046B551    lea         eax,[ebp-0C]
 0046B554    call        @LStrClr
 0046B559    ret
>0046B55A    jmp         @HandleFinally
>0046B55F    jmp         0046B551
 0046B561    mov         eax,dword ptr [ebp-8]
 0046B564    mov         esp,ebp
 0046B566    pop         ebp
 0046B567    ret
end;*}

//0046B56C
procedure sub_0046B56C;
begin
{*
 0046B56C    push        ebp
 0046B56D    mov         ebp,esp
 0046B56F    push        0
 0046B571    call        user32.MessageBeep
 0046B576    pop         ebp
 0046B577    ret
*}
end;

//0046B578
{*function sub_0046B578(?:PChar; ?:?):?;
begin
 0046B578    push        ebp
 0046B579    mov         ebp,esp
 0046B57B    add         esp,0FFFFFFF0
 0046B57E    mov         dword ptr [ebp-8],edx
 0046B581    mov         dword ptr [ebp-4],eax
 0046B584    mov         byte ptr [ebp-9],0
 0046B588    cmp         dword ptr [ebp-4],0
>0046B58C    je          0046B61D
 0046B592    mov         eax,dword ptr [ebp-8]
 0046B595    mov         edx,dword ptr [ebp-4]
 0046B598    cmp         byte ptr [edx+eax],0
>0046B59C    je          0046B61D
 0046B59E    cmp         dword ptr [ebp-8],0
>0046B5A2    jne         0046B5BD
 0046B5A4    mov         eax,dword ptr [ebp-4]
 0046B5A7    mov         al,byte ptr [eax]
 0046B5A9    and         eax,0FF
 0046B5AE    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046B5B5    jae         0046B61D
 0046B5B7    mov         byte ptr [ebp-9],1
>0046B5BB    jmp         0046B61D
 0046B5BD    mov         eax,dword ptr [ebp-8]
 0046B5C0    dec         eax
 0046B5C1    mov         dword ptr [ebp-10],eax
>0046B5C4    jmp         0046B5C9
 0046B5C6    dec         dword ptr [ebp-10]
 0046B5C9    cmp         dword ptr [ebp-10],0
>0046B5CD    jl          0046B5E6
 0046B5CF    mov         eax,dword ptr [ebp-10]
 0046B5D2    mov         edx,dword ptr [ebp-4]
 0046B5D5    mov         al,byte ptr [edx+eax]
 0046B5D8    and         eax,0FF
 0046B5DD    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046B5E4    jb          0046B5C6
 0046B5E6    mov         eax,dword ptr [ebp-8]
 0046B5E9    sub         eax,dword ptr [ebp-10]
 0046B5EC    and         eax,80000001
>0046B5F1    jns         0046B5F8
 0046B5F3    dec         eax
 0046B5F4    or          eax,0FFFFFFFE
 0046B5F7    inc         eax
 0046B5F8    test        eax,eax
>0046B5FA    jne         0046B602
 0046B5FC    mov         byte ptr [ebp-9],2
>0046B600    jmp         0046B61D
 0046B602    mov         eax,dword ptr [ebp-8]
 0046B605    mov         edx,dword ptr [ebp-4]
 0046B608    mov         al,byte ptr [edx+eax]
 0046B60B    and         eax,0FF
 0046B610    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046B617    jae         0046B61D
 0046B619    mov         byte ptr [ebp-9],1
 0046B61D    mov         al,byte ptr [ebp-9]
 0046B620    mov         esp,ebp
 0046B622    pop         ebp
 0046B623    ret
end;*}

//0046B624
{*function sub_0046B624(?:String; ?:Longint):?;
begin
 0046B624    push        ebp
 0046B625    mov         ebp,esp
 0046B627    add         esp,0FFFFFFF4
 0046B62A    mov         dword ptr [ebp-8],edx
 0046B62D    mov         dword ptr [ebp-4],eax
 0046B630    mov         byte ptr [ebp-9],0
 0046B634    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046B63B    je          0046B651
 0046B63D    mov         eax,dword ptr [ebp-4]
 0046B640    call        @LStrToPChar
 0046B645    mov         edx,dword ptr [ebp-8]
 0046B648    dec         edx
 0046B649    call        0046B578
 0046B64E    mov         byte ptr [ebp-9],al
 0046B651    mov         al,byte ptr [ebp-9]
 0046B654    mov         esp,ebp
 0046B656    pop         ebp
 0046B657    ret
end;*}

//0046B658
{*function sub_0046B658(?:PChar; ?:?):?;
begin
 0046B658    push        ebp
 0046B659    mov         ebp,esp
 0046B65B    add         esp,0FFFFFFF4
 0046B65E    mov         dword ptr [ebp-8],edx
 0046B661    mov         dword ptr [ebp-4],eax
 0046B664    mov         byte ptr [ebp-9],0
 0046B668    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046B66F    je          0046B67F
 0046B671    mov         edx,dword ptr [ebp-8]
 0046B674    mov         eax,dword ptr [ebp-4]
 0046B677    call        0046B578
 0046B67C    mov         byte ptr [ebp-9],al
 0046B67F    mov         al,byte ptr [ebp-9]
 0046B682    mov         esp,ebp
 0046B684    pop         ebp
 0046B685    ret
end;*}

//0046B688
{*function sub_0046B688(?:?; ?:Longint):?;
begin
 0046B688    push        ebp
 0046B689    mov         ebp,esp
 0046B68B    add         esp,0FFFFFFF4
 0046B68E    mov         dword ptr [ebp-8],edx
 0046B691    mov         dword ptr [ebp-4],eax
 0046B694    mov         eax,dword ptr [ebp-4]
 0046B697    call        @DynArrayLength
 0046B69C    cmp         eax,dword ptr [ebp-8]
>0046B69F    jge         0046B6AC
 0046B6A1    mov         eax,dword ptr [ebp-4]
 0046B6A4    call        @DynArrayLength
 0046B6A9    mov         dword ptr [ebp-8],eax
 0046B6AC    mov         edx,dword ptr [ebp-8]
 0046B6AF    mov         eax,dword ptr [ebp-4]
 0046B6B2    call        0046B6C4
 0046B6B7    mov         dword ptr [ebp-0C],eax
 0046B6BA    mov         eax,dword ptr [ebp-0C]
 0046B6BD    mov         esp,ebp
 0046B6BF    pop         ebp
 0046B6C0    ret
end;*}

//0046B6C4
{*function sub_0046B6C4(?:?; ?:Longint):?;
begin
 0046B6C4    push        ebp
 0046B6C5    mov         ebp,esp
 0046B6C7    add         esp,0FFFFFFF0
 0046B6CA    mov         dword ptr [ebp-8],edx
 0046B6CD    mov         dword ptr [ebp-4],eax
 0046B6D0    xor         eax,eax
 0046B6D2    mov         dword ptr [ebp-0C],eax
 0046B6D5    cmp         dword ptr [ebp-8],0
>0046B6D9    jle         0046B741
 0046B6DB    mov         eax,dword ptr [ebp-4]
 0046B6DE    call        @DynArrayLength
 0046B6E3    cmp         eax,dword ptr [ebp-8]
>0046B6E6    jl          0046B741
 0046B6E8    mov         eax,dword ptr [ebp-8]
 0046B6EB    mov         dword ptr [ebp-0C],eax
 0046B6EE    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046B6F5    je          0046B741
 0046B6F7    mov         dword ptr [ebp-10],1
 0046B6FE    xor         eax,eax
 0046B700    mov         dword ptr [ebp-0C],eax
 0046B703    mov         eax,dword ptr [ebp-10]
 0046B706    cmp         eax,dword ptr [ebp-8]
>0046B709    jg          0046B741
 0046B70B    mov         eax,dword ptr [ebp-10]
 0046B70E    mov         edx,dword ptr [ebp-4]
 0046B711    mov         al,byte ptr [edx+eax-1]
 0046B715    and         eax,0FF
 0046B71A    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046B721    jae         0046B733
 0046B723    mov         edx,dword ptr [ebp-10]
 0046B726    mov         eax,dword ptr [ebp-4]
 0046B729    call        0046B98C
 0046B72E    mov         dword ptr [ebp-10],eax
>0046B731    jmp         0046B736
 0046B733    inc         dword ptr [ebp-10]
 0046B736    inc         dword ptr [ebp-0C]
 0046B739    mov         eax,dword ptr [ebp-10]
 0046B73C    cmp         eax,dword ptr [ebp-8]
>0046B73F    jle         0046B70B
 0046B741    mov         eax,dword ptr [ebp-0C]
 0046B744    mov         esp,ebp
 0046B746    pop         ebp
 0046B747    ret
end;*}

//0046B748
{*procedure sub_0046B748(?:AnsiString; ?:Longint; ?:?; ?:?);
begin
 0046B748    push        ebp
 0046B749    mov         ebp,esp
 0046B74B    add         esp,0FFFFFFE8
 0046B74E    mov         dword ptr [ebp-0C],ecx
 0046B751    mov         dword ptr [ebp-8],edx
 0046B754    mov         dword ptr [ebp-4],eax
 0046B757    mov         eax,dword ptr [ebp-4]
 0046B75A    call        @DynArrayLength
 0046B75F    mov         dword ptr [ebp-14],eax
 0046B762    mov         dword ptr [ebp-10],1
 0046B769    mov         dword ptr [ebp-18],1
>0046B770    jmp         0046B7A0
 0046B772    inc         dword ptr [ebp-10]
 0046B775    mov         eax,dword ptr [ebp-4]
 0046B778    mov         edx,dword ptr [ebp-18]
 0046B77B    mov         al,byte ptr [eax+edx-1]
 0046B77F    and         eax,0FF
 0046B784    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046B78B    jae         0046B79D
 0046B78D    mov         edx,dword ptr [ebp-18]
 0046B790    mov         eax,dword ptr [ebp-4]
 0046B793    call        0046B98C
 0046B798    mov         dword ptr [ebp-18],eax
>0046B79B    jmp         0046B7A0
 0046B79D    inc         dword ptr [ebp-18]
 0046B7A0    mov         eax,dword ptr [ebp-18]
 0046B7A3    cmp         eax,dword ptr [ebp-14]
>0046B7A6    jge         0046B7B0
 0046B7A8    mov         eax,dword ptr [ebp-10]
 0046B7AB    cmp         eax,dword ptr [ebp-8]
>0046B7AE    jl          0046B772
 0046B7B0    mov         eax,dword ptr [ebp-10]
 0046B7B3    cmp         eax,dword ptr [ebp-8]
>0046B7B6    jne         0046B7E7
 0046B7B8    mov         eax,dword ptr [ebp-18]
 0046B7BB    cmp         eax,dword ptr [ebp-14]
>0046B7BE    jge         0046B7E7
 0046B7C0    mov         eax,dword ptr [ebp-4]
 0046B7C3    mov         edx,dword ptr [ebp-18]
 0046B7C6    mov         al,byte ptr [eax+edx-1]
 0046B7CA    and         eax,0FF
 0046B7CF    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046B7D6    jae         0046B7E7
 0046B7D8    mov         edx,dword ptr [ebp-18]
 0046B7DB    mov         eax,dword ptr [ebp-4]
 0046B7DE    call        0046B98C
 0046B7E3    dec         eax
 0046B7E4    mov         dword ptr [ebp-18],eax
 0046B7E7    mov         eax,dword ptr [ebp-0C]
 0046B7EA    mov         edx,dword ptr [ebp-10]
 0046B7ED    mov         dword ptr [eax],edx
 0046B7EF    mov         eax,dword ptr [ebp+8]
 0046B7F2    mov         edx,dword ptr [ebp-18]
 0046B7F5    mov         dword ptr [eax],edx
 0046B7F7    mov         esp,ebp
 0046B7F9    pop         ebp
 0046B7FA    ret         4
end;*}

//0046B800
{*function sub_0046B800(?:?; ?:?):?;
begin
 0046B800    push        ebp
 0046B801    mov         ebp,esp
 0046B803    add         esp,0FFFFFFF0
 0046B806    mov         dword ptr [ebp-8],edx
 0046B809    mov         dword ptr [ebp-4],eax
 0046B80C    xor         eax,eax
 0046B80E    mov         dword ptr [ebp-0C],eax
 0046B811    cmp         dword ptr [ebp-8],0
>0046B815    jle         0046B86E
 0046B817    mov         eax,dword ptr [ebp-4]
 0046B81A    call        @DynArrayLength
 0046B81F    cmp         eax,dword ptr [ebp-8]
>0046B822    jl          0046B86E
 0046B824    cmp         dword ptr [ebp-8],1
>0046B828    jle         0046B868
 0046B82A    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046B831    je          0046B868
 0046B833    lea         eax,[ebp-0C]
 0046B836    push        eax
 0046B837    lea         ecx,[ebp-10]
 0046B83A    mov         edx,dword ptr [ebp-8]
 0046B83D    dec         edx
 0046B83E    mov         eax,dword ptr [ebp-4]
 0046B841    call        0046B748
 0046B846    mov         eax,dword ptr [ebp-8]
 0046B849    dec         eax
 0046B84A    cmp         eax,dword ptr [ebp-10]
>0046B84D    jg          0046B85C
 0046B84F    mov         eax,dword ptr [ebp-4]
 0046B852    call        @DynArrayLength
 0046B857    cmp         eax,dword ptr [ebp-0C]
>0046B85A    jg          0046B863
 0046B85C    xor         eax,eax
 0046B85E    mov         dword ptr [ebp-0C],eax
>0046B861    jmp         0046B86E
 0046B863    inc         dword ptr [ebp-0C]
>0046B866    jmp         0046B86E
 0046B868    mov         eax,dword ptr [ebp-8]
 0046B86B    mov         dword ptr [ebp-0C],eax
 0046B86E    mov         eax,dword ptr [ebp-0C]
 0046B871    mov         esp,ebp
 0046B873    pop         ebp
 0046B874    ret
end;*}

//0046B878
{*function sub_0046B878(?:AnsiString; ?:?):?;
begin
 0046B878    push        ebp
 0046B879    mov         ebp,esp
 0046B87B    add         esp,0FFFFFFF0
 0046B87E    mov         dword ptr [ebp-8],edx
 0046B881    mov         dword ptr [ebp-4],eax
 0046B884    xor         eax,eax
 0046B886    mov         dword ptr [ebp-0C],eax
 0046B889    cmp         dword ptr [ebp-8],0
>0046B88D    jle         0046B8E2
 0046B88F    mov         eax,dword ptr [ebp-4]
 0046B892    call        @DynArrayLength
 0046B897    cmp         eax,dword ptr [ebp-8]
>0046B89A    jge         0046B8A7
 0046B89C    mov         eax,dword ptr [ebp-4]
 0046B89F    call        @DynArrayLength
 0046B8A4    mov         dword ptr [ebp-8],eax
 0046B8A7    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046B8AE    je          0046B8DC
 0046B8B0    lea         eax,[ebp-0C]
 0046B8B3    push        eax
 0046B8B4    lea         ecx,[ebp-10]
 0046B8B7    mov         edx,dword ptr [ebp-8]
 0046B8BA    mov         eax,dword ptr [ebp-4]
 0046B8BD    call        0046B748
 0046B8C2    mov         eax,dword ptr [ebp-4]
 0046B8C5    call        @DynArrayLength
 0046B8CA    cmp         eax,dword ptr [ebp-0C]
>0046B8CD    jge         0046B8E2
 0046B8CF    mov         eax,dword ptr [ebp-4]
 0046B8D2    call        @DynArrayLength
 0046B8D7    mov         dword ptr [ebp-0C],eax
>0046B8DA    jmp         0046B8E2
 0046B8DC    mov         eax,dword ptr [ebp-8]
 0046B8DF    mov         dword ptr [ebp-0C],eax
 0046B8E2    mov         eax,dword ptr [ebp-0C]
 0046B8E5    mov         esp,ebp
 0046B8E7    pop         ebp
 0046B8E8    ret
end;*}

//0046B8EC
{*function sub_0046B8EC(?:?):?;
begin
 0046B8EC    push        ebp
 0046B8ED    mov         ebp,esp
 0046B8EF    add         esp,0FFFFFFF8
 0046B8F2    mov         dword ptr [ebp-4],eax
 0046B8F5    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046B8FC    je          0046B90F
 0046B8FE    mov         eax,dword ptr [ebp-4]
 0046B901    push        eax
 0046B902    call        user32.CharNextA
 0046B907    sub         eax,dword ptr [ebp-4]
 0046B90A    mov         dword ptr [ebp-8],eax
>0046B90D    jmp         0046B916
 0046B90F    mov         dword ptr [ebp-8],1
 0046B916    mov         eax,dword ptr [ebp-8]
 0046B919    pop         ecx
 0046B91A    pop         ecx
 0046B91B    pop         ebp
 0046B91C    ret
end;*}

//0046B920
{*function sub_0046B920(?:?):?;
begin
 0046B920    push        ebp
 0046B921    mov         ebp,esp
 0046B923    add         esp,0FFFFFFF8
 0046B926    mov         dword ptr [ebp-4],eax
 0046B929    mov         eax,dword ptr [ebp-4]
 0046B92C    push        eax
 0046B92D    call        user32.CharNextA
 0046B932    mov         dword ptr [ebp-8],eax
 0046B935    mov         eax,dword ptr [ebp-8]
 0046B938    pop         ecx
 0046B939    pop         ecx
 0046B93A    pop         ebp
 0046B93B    ret
end;*}

//0046B93C
{*function sub_0046B93C(?:?; ?:?):?;
begin
 0046B93C    push        ebp
 0046B93D    mov         ebp,esp
 0046B93F    add         esp,0FFFFFFF4
 0046B942    mov         dword ptr [ebp-8],edx
 0046B945    mov         dword ptr [ebp-4],eax
 0046B948    mov         dword ptr [ebp-0C],1
 0046B94F    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046B956    je          0046B984
 0046B958    mov         eax,dword ptr [ebp-8]
 0046B95B    mov         edx,dword ptr [ebp-4]
 0046B95E    mov         al,byte ptr [edx+eax-1]
 0046B962    and         eax,0FF
 0046B967    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046B96E    jae         0046B984
 0046B970    mov         eax,dword ptr [ebp-4]
 0046B973    call        @LStrToPChar
 0046B978    add         eax,dword ptr [ebp-8]
 0046B97B    dec         eax
 0046B97C    call        0046B8EC
 0046B981    mov         dword ptr [ebp-0C],eax
 0046B984    mov         eax,dword ptr [ebp-0C]
 0046B987    mov         esp,ebp
 0046B989    pop         ebp
 0046B98A    ret
end;*}

//0046B98C
{*function sub_0046B98C(?:?; ?:?):?;
begin
 0046B98C    push        ebp
 0046B98D    mov         ebp,esp
 0046B98F    add         esp,0FFFFFFF4
 0046B992    mov         dword ptr [ebp-8],edx
 0046B995    mov         dword ptr [ebp-4],eax
 0046B998    mov         eax,dword ptr [ebp-8]
 0046B99B    inc         eax
 0046B99C    mov         dword ptr [ebp-0C],eax
 0046B99F    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046B9A6    je          0046B9D7
 0046B9A8    mov         eax,dword ptr [ebp-8]
 0046B9AB    mov         edx,dword ptr [ebp-4]
 0046B9AE    mov         al,byte ptr [edx+eax-1]
 0046B9B2    and         eax,0FF
 0046B9B7    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046B9BE    jae         0046B9D7
 0046B9C0    mov         eax,dword ptr [ebp-4]
 0046B9C3    call        @LStrToPChar
 0046B9C8    add         eax,dword ptr [ebp-8]
 0046B9CB    dec         eax
 0046B9CC    call        0046B8EC
 0046B9D1    add         eax,dword ptr [ebp-8]
 0046B9D4    mov         dword ptr [ebp-0C],eax
 0046B9D7    mov         eax,dword ptr [ebp-0C]
 0046B9DA    mov         esp,ebp
 0046B9DC    pop         ebp
 0046B9DD    ret
end;*}

//0046B9E0
{*function sub_0046B9E0(?:AnsiString; ?:AnsiString):?;
begin
 0046B9E0    push        ebp
 0046B9E1    mov         ebp,esp
 0046B9E3    add         esp,0FFFFFFF0
 0046B9E6    mov         dword ptr [ebp-8],edx
 0046B9E9    mov         dword ptr [ebp-4],eax
 0046B9EC    xor         eax,eax
 0046B9EE    mov         dword ptr [ebp-0C],eax
 0046B9F1    mov         eax,dword ptr [ebp-4]
 0046B9F4    call        @LStrToPChar
 0046B9F9    push        eax
 0046B9FA    mov         eax,dword ptr [ebp-8]
 0046B9FD    call        @LStrToPChar
 0046BA02    pop         edx
 0046BA03    call        0046BB00
 0046BA08    mov         dword ptr [ebp-10],eax
 0046BA0B    cmp         dword ptr [ebp-10],0
>0046BA0F    je          0046BA22
 0046BA11    mov         eax,dword ptr [ebp-8]
 0046BA14    call        @LStrToPChar
 0046BA19    mov         edx,dword ptr [ebp-10]
 0046BA1C    sub         edx,eax
 0046BA1E    inc         edx
 0046BA1F    mov         dword ptr [ebp-0C],edx
 0046BA22    mov         eax,dword ptr [ebp-0C]
 0046BA25    mov         esp,ebp
 0046BA27    pop         ebp
 0046BA28    ret
end;*}

//0046BA2C
{*procedure sub_0046BA2C(?:?; ?:?);
begin
 0046BA2C    push        ebp
 0046BA2D    mov         ebp,esp
 0046BA2F    add         esp,0FFFFFFF0
 0046BA32    push        ebx
 0046BA33    mov         dword ptr [ebp-8],edx
 0046BA36    mov         dword ptr [ebp-4],eax
 0046BA39    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046BA40    je          0046BAED
 0046BA46    mov         eax,dword ptr [ebp-4]
 0046BA49    call        @DynArrayLength
 0046BA4E    mov         dword ptr [ebp-10],eax
 0046BA51    mov         eax,dword ptr [ebp-8]
 0046BA54    mov         edx,dword ptr [ebp-10]
 0046BA57    call        @LStrSetLength
 0046BA5C    mov         dword ptr [ebp-0C],1
 0046BA63    mov         eax,dword ptr [ebp-0C]
 0046BA66    cmp         eax,dword ptr [ebp-10]
>0046BA69    jg          0046BAF8
 0046BA6F    mov         eax,dword ptr [ebp-8]
 0046BA72    call        00404C34
 0046BA77    mov         edx,dword ptr [ebp-0C]
 0046BA7A    mov         ecx,dword ptr [ebp-0C]
 0046BA7D    mov         ebx,dword ptr [ebp-4]
 0046BA80    mov         cl,byte ptr [ebx+ecx-1]
 0046BA84    mov         byte ptr [eax+edx-1],cl
 0046BA88    mov         eax,dword ptr [ebp-0C]
 0046BA8B    mov         edx,dword ptr [ebp-4]
 0046BA8E    mov         al,byte ptr [edx+eax-1]
 0046BA92    and         eax,0FF
 0046BA97    bt          dword ptr ds:[54097C],eax;gvar_0054097C
>0046BA9E    jae         0046BABE
 0046BAA0    inc         dword ptr [ebp-0C]
 0046BAA3    mov         eax,dword ptr [ebp-8]
 0046BAA6    call        00404C34
 0046BAAB    mov         edx,dword ptr [ebp-0C]
 0046BAAE    mov         ecx,dword ptr [ebp-0C]
 0046BAB1    mov         ebx,dword ptr [ebp-4]
 0046BAB4    mov         cl,byte ptr [ebx+ecx-1]
 0046BAB8    mov         byte ptr [eax+edx-1],cl
>0046BABC    jmp         0046BAE0
 0046BABE    mov         eax,dword ptr [ebp-8]
 0046BAC1    mov         eax,dword ptr [eax]
 0046BAC3    mov         edx,dword ptr [ebp-0C]
 0046BAC6    mov         al,byte ptr [eax+edx-1]
 0046BACA    add         al,0BF
 0046BACC    sub         al,1A
>0046BACE    jae         0046BAE0
 0046BAD0    mov         eax,dword ptr [ebp-8]
 0046BAD3    call        00404C34
 0046BAD8    mov         edx,dword ptr [ebp-0C]
 0046BADB    add         byte ptr [eax+edx-1],20
 0046BAE0    inc         dword ptr [ebp-0C]
 0046BAE3    mov         eax,dword ptr [ebp-0C]
 0046BAE6    cmp         eax,dword ptr [ebp-10]
>0046BAE9    jle         0046BA6F
>0046BAEB    jmp         0046BAF8
 0046BAED    mov         edx,dword ptr [ebp-8]
 0046BAF0    mov         eax,dword ptr [ebp-4]
 0046BAF3    call        0046638C
 0046BAF8    pop         ebx
 0046BAF9    mov         esp,ebp
 0046BAFB    pop         ebp
 0046BAFC    ret
end;*}

//0046BB00
{*function sub_0046BB00(?:PChar; ?:?):?;
begin
 0046BB00    push        ebp
 0046BB01    mov         ebp,esp
 0046BB03    add         esp,0FFFFFFE8
 0046BB06    mov         dword ptr [ebp-8],edx
 0046BB09    mov         dword ptr [ebp-4],eax
 0046BB0C    xor         eax,eax
 0046BB0E    mov         dword ptr [ebp-0C],eax
 0046BB11    cmp         dword ptr [ebp-4],0
>0046BB15    je          0046BBD0
 0046BB1B    mov         eax,dword ptr [ebp-4]
 0046BB1E    cmp         byte ptr [eax],0
>0046BB21    je          0046BBD0
 0046BB27    cmp         dword ptr [ebp-8],0
>0046BB2B    je          0046BBD0
 0046BB31    mov         eax,dword ptr [ebp-8]
 0046BB34    cmp         byte ptr [eax],0
>0046BB37    je          0046BBD0
 0046BB3D    mov         eax,dword ptr [ebp-4]
 0046BB40    call        StrLen
 0046BB45    mov         dword ptr [ebp-10],eax
 0046BB48    mov         eax,dword ptr [ebp-8]
 0046BB4B    call        StrLen
 0046BB50    mov         dword ptr [ebp-14],eax
 0046BB53    mov         edx,dword ptr [ebp-8]
 0046BB56    mov         eax,dword ptr [ebp-4]
 0046BB59    call        StrPos
 0046BB5E    mov         dword ptr [ebp-0C],eax
>0046BB61    jmp         0046BBB5
 0046BB63    mov         edx,dword ptr [ebp-0C]
 0046BB66    sub         edx,dword ptr [ebp-4]
 0046BB69    mov         eax,dword ptr [ebp-4]
 0046BB6C    call        0046B658
 0046BB71    mov         byte ptr [ebp-15],al
 0046BB74    cmp         byte ptr [ebp-15],2
>0046BB78    je          0046BB9B
 0046BB7A    mov         eax,dword ptr [ebp-14]
 0046BB7D    push        eax
 0046BB7E    mov         eax,dword ptr [ebp-8]
 0046BB81    push        eax
 0046BB82    mov         eax,dword ptr [ebp-14]
 0046BB85    push        eax
 0046BB86    mov         eax,dword ptr [ebp-0C]
 0046BB89    push        eax
 0046BB8A    push        0
 0046BB8C    push        400
 0046BB91    call        kernel32.CompareStringA
 0046BB96    cmp         eax,2
>0046BB99    je          0046BBD0
 0046BB9B    cmp         byte ptr [ebp-15],1
>0046BB9F    jne         0046BBA4
 0046BBA1    inc         dword ptr [ebp-0C]
 0046BBA4    inc         dword ptr [ebp-0C]
 0046BBA7    mov         edx,dword ptr [ebp-8]
 0046BBAA    mov         eax,dword ptr [ebp-0C]
 0046BBAD    call        StrPos
 0046BBB2    mov         dword ptr [ebp-0C],eax
 0046BBB5    cmp         dword ptr [ebp-0C],0
>0046BBB9    je          0046BBCB
 0046BBBB    mov         eax,dword ptr [ebp-0C]
 0046BBBE    sub         eax,dword ptr [ebp-4]
 0046BBC1    mov         edx,dword ptr [ebp-10]
 0046BBC4    sub         edx,eax
 0046BBC6    cmp         edx,dword ptr [ebp-14]
>0046BBC9    jae         0046BB63
 0046BBCB    xor         eax,eax
 0046BBCD    mov         dword ptr [ebp-0C],eax
 0046BBD0    mov         eax,dword ptr [ebp-0C]
 0046BBD3    mov         esp,ebp
 0046BBD5    pop         ebp
 0046BBD6    ret
end;*}

//0046BBD8
{*function sub_0046BBD8(?:?; ?:?):?;
begin
 0046BBD8    push        ebp
 0046BBD9    mov         ebp,esp
 0046BBDB    add         esp,0FFFFFFF4
 0046BBDE    mov         byte ptr [ebp-5],dl
 0046BBE1    mov         dword ptr [ebp-4],eax
 0046BBE4    mov         dl,byte ptr [ebp-5]
 0046BBE7    mov         eax,dword ptr [ebp-4]
 0046BBEA    call        0046BC28
 0046BBEF    mov         dword ptr [ebp-4],eax
 0046BBF2    mov         eax,dword ptr [ebp-4]
 0046BBF5    mov         dword ptr [ebp-0C],eax
 0046BBF8    cmp         byte ptr [ebp-5],0
>0046BBFC    je          0046BC21
 0046BBFE    cmp         dword ptr [ebp-4],0
>0046BC02    je          0046BC21
 0046BC04    mov         eax,dword ptr [ebp-4]
 0046BC07    mov         dword ptr [ebp-0C],eax
 0046BC0A    inc         dword ptr [ebp-4]
 0046BC0D    mov         dl,byte ptr [ebp-5]
 0046BC10    mov         eax,dword ptr [ebp-4]
 0046BC13    call        0046BC28
 0046BC18    mov         dword ptr [ebp-4],eax
 0046BC1B    cmp         dword ptr [ebp-4],0
>0046BC1F    jne         0046BC04
 0046BC21    mov         eax,dword ptr [ebp-0C]
 0046BC24    mov         esp,ebp
 0046BC26    pop         ebp
 0046BC27    ret
end;*}

//0046BC28
{*function sub_0046BC28(?:Char; ?:?):?;
begin
 0046BC28    push        ebp
 0046BC29    mov         ebp,esp
 0046BC2B    add         esp,0FFFFFFF4
 0046BC2E    mov         byte ptr [ebp-5],dl
 0046BC31    mov         dword ptr [ebp-4],eax
 0046BC34    mov         dl,byte ptr [ebp-5]
 0046BC37    mov         eax,dword ptr [ebp-4]
 0046BC3A    call        004673E4
 0046BC3F    mov         dword ptr [ebp-0C],eax
 0046BC42    cmp         dword ptr [ebp-0C],0
>0046BC46    je          0046BC78
 0046BC48    mov         edx,dword ptr [ebp-0C]
 0046BC4B    sub         edx,dword ptr [ebp-4]
 0046BC4E    mov         eax,dword ptr [ebp-4]
 0046BC51    call        0046B658
 0046BC56    sub         al,1
>0046BC58    jb          0046BC78
>0046BC5A    je          0046BC5E
>0046BC5C    jmp         0046BC61
 0046BC5E    inc         dword ptr [ebp-0C]
 0046BC61    inc         dword ptr [ebp-0C]
 0046BC64    mov         dl,byte ptr [ebp-5]
 0046BC67    mov         eax,dword ptr [ebp-0C]
 0046BC6A    call        004673E4
 0046BC6F    mov         dword ptr [ebp-0C],eax
 0046BC72    cmp         dword ptr [ebp-0C],0
>0046BC76    jne         0046BC48
 0046BC78    mov         eax,dword ptr [ebp-0C]
 0046BC7B    mov         esp,ebp
 0046BC7D    pop         ebp
 0046BC7E    ret
end;*}

//0046BC80
{*function sub_0046BC80(?:?):?;
begin
 0046BC80    push        ebp
 0046BC81    mov         ebp,esp
 0046BC83    add         esp,0FFFFFFEC
 0046BC86    xor         edx,edx
 0046BC88    mov         dword ptr [ebp-14],edx
 0046BC8B    mov         dword ptr [ebp-4],eax
 0046BC8E    xor         eax,eax
 0046BC90    push        ebp
 0046BC91    push        46BCEA
 0046BC96    push        dword ptr fs:[eax]
 0046BC99    mov         dword ptr fs:[eax],esp
 0046BC9C    push        7
 0046BC9E    lea         eax,[ebp-0F]
 0046BCA1    push        eax
 0046BCA2    push        1004
 0046BCA7    mov         eax,dword ptr [ebp-4]
 0046BCAA    push        eax
 0046BCAB    call        kernel32.GetLocaleInfoA
 0046BCB0    lea         eax,[ebp-14]
 0046BCB3    lea         edx,[ebp-0F]
 0046BCB6    mov         ecx,7
 0046BCBB    call        @LStrFromArray
 0046BCC0    mov         eax,dword ptr [ebp-14]
 0046BCC3    push        eax
 0046BCC4    call        kernel32.GetACP
 0046BCC9    mov         edx,eax
 0046BCCB    pop         eax
 0046BCCC    call        00466B0C
 0046BCD1    mov         dword ptr [ebp-8],eax
 0046BCD4    xor         eax,eax
 0046BCD6    pop         edx
 0046BCD7    pop         ecx
 0046BCD8    pop         ecx
 0046BCD9    mov         dword ptr fs:[eax],edx
 0046BCDC    push        46BCF1
 0046BCE1    lea         eax,[ebp-14]
 0046BCE4    call        @LStrClr
 0046BCE9    ret
>0046BCEA    jmp         @HandleFinally
>0046BCEF    jmp         0046BCE1
 0046BCF1    mov         eax,dword ptr [ebp-8]
 0046BCF4    mov         esp,ebp
 0046BCF6    pop         ebp
 0046BCF7    ret
end;*}

//0046BCF8
{*procedure sub_0046BCF8(?:?);
begin
 0046BCF8    push        ebp
 0046BCF9    mov         ebp,esp
 0046BCFB    add         esp,0FFFFFFF8
 0046BCFE    mov         eax,dword ptr [ebp+8]
 0046BD01    add         eax,0FFFFFFEC
 0046BD04    push        eax
 0046BD05    mov         eax,[0055D9C4];gvar_0055D9C4:Integer
 0046BD0A    call        0046BC80
 0046BD0F    push        eax
 0046BD10    call        kernel32.GetCPInfo
 0046BD15    xor         eax,eax
 0046BD17    mov         dword ptr [ebp-4],eax
>0046BD1A    jmp         0046BD56
 0046BD1C    mov         eax,dword ptr [ebp+8]
 0046BD1F    mov         edx,dword ptr [ebp-4]
 0046BD22    mov         al,byte ptr [eax+edx-0E]
 0046BD26    mov         edx,dword ptr [ebp+8]
 0046BD29    mov         ecx,dword ptr [ebp-4]
 0046BD2C    mov         dl,byte ptr [edx+ecx-0D]
 0046BD30    sub         dl,al
>0046BD32    jb          0046BD52
 0046BD34    inc         edx
 0046BD35    mov         byte ptr [ebp-6],dl
 0046BD38    mov         byte ptr [ebp-5],al
 0046BD3B    mov         al,byte ptr [ebp-5]
 0046BD3E    and         eax,0FF
 0046BD43    bts         dword ptr ds:[54097C],eax;gvar_0054097C
 0046BD4A    inc         byte ptr [ebp-5]
 0046BD4D    dec         byte ptr [ebp-6]
>0046BD50    jne         0046BD3B
 0046BD52    add         dword ptr [ebp-4],2
 0046BD56    cmp         dword ptr [ebp-4],0C
>0046BD5A    jge         0046BD72
 0046BD5C    mov         eax,dword ptr [ebp+8]
 0046BD5F    mov         edx,dword ptr [ebp-4]
 0046BD62    mov         al,byte ptr [eax+edx-0E]
 0046BD66    mov         edx,dword ptr [ebp+8]
 0046BD69    mov         ecx,dword ptr [ebp-4]
 0046BD6C    or          al,byte ptr [edx+ecx-0D]
>0046BD70    jne         0046BD1C
 0046BD72    pop         ecx
 0046BD73    pop         ecx
 0046BD74    pop         ebp
 0046BD75    ret
end;*}

//0046BD78
{*function sub_0046BD78:?;
begin
 0046BD78    push        ebp
 0046BD79    mov         ebp,esp
 0046BD7B    push        ecx
 0046BD7C    mov         eax,[0055D9C8];gvar_0055D9C8
 0046BD81    cmp         eax,1F
>0046BD84    ja          0046BD8D
 0046BD86    bt          dword ptr ds:[540B7C],eax;gvar_00540B7C
 0046BD8D    setb        al
 0046BD90    mov         byte ptr [ebp-1],al
 0046BD93    mov         al,byte ptr [ebp-1]
 0046BD96    pop         ecx
 0046BD97    pop         ebp
 0046BD98    ret
end;*}

//0046BD9C
procedure sub_0046BD9C;
begin
{*
 0046BD9C    push        ebp
 0046BD9D    mov         ebp,esp
 0046BD9F    add         esp,0FFFFFE58
 0046BDA5    push        esi
 0046BDA6    push        edi
 0046BDA7    mov         dword ptr ds:[55D9C4],409;gvar_0055D9C4:Integer
 0046BDB1    mov         dword ptr ds:[55D9C8],9;gvar_0055D9C8
 0046BDBB    mov         dword ptr ds:[55D9CC],1;gvar_0055D9CC
 0046BDC5    call        kernel32.GetThreadLocale
 0046BDCA    mov         dword ptr [ebp-18],eax
 0046BDCD    cmp         dword ptr [ebp-18],0
>0046BDD1    je          0046BDDB
 0046BDD3    mov         eax,dword ptr [ebp-18]
 0046BDD6    mov         [0055D9C4],eax;gvar_0055D9C4:Integer
 0046BDDB    mov         ax,word ptr [ebp-18]
 0046BDDF    mov         word ptr [ebp-1A],ax
 0046BDE3    cmp         word ptr [ebp-1A],0
>0046BDE8    je          0046BE06
 0046BDEA    mov         ax,word ptr [ebp-1A]
 0046BDEE    and         ax,3FF
 0046BDF2    movzx       eax,ax
 0046BDF5    mov         [0055D9C8],eax;gvar_0055D9C8
 0046BDFA    movzx       eax,word ptr [ebp-1A]
 0046BDFE    shr         eax,0A
 0046BE01    mov         [0055D9CC],eax;gvar_0055D9CC
 0046BE06    mov         esi,46BF28
 0046BE0B    mov         edi,54097C;gvar_0054097C
 0046BE10    mov         ecx,8
 0046BE15    rep movs    dword ptr [edi],dword ptr [esi]
 0046BE17    cmp         dword ptr ds:[540934],2;gvar_00540934
>0046BE1E    jne         0046BEEF
 0046BE24    push        ebp
 0046BE25    call        0046BD78
 0046BE2A    pop         ecx
 0046BE2B    test        al,al
>0046BE2D    je          0046BE42
 0046BE2F    mov         byte ptr ds:[55D9D1],0;gvar_0055D9D1
 0046BE36    mov         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046BE3D    jmp         0046BF21
 0046BE42    push        ebp
 0046BE43    call        0046BCF8
 0046BE48    pop         ecx
 0046BE49    mov         eax,54097C;gvar_0054097C
 0046BE4E    mov         edx,46BF28
 0046BE53    mov         cl,20
 0046BE55    call        @SetEq
 0046BE5A    setne       al
 0046BE5D    mov         [0055D9D0],al;gvar_0055D9D0
 0046BE62    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046BE69    je          0046BE77
 0046BE6B    mov         byte ptr ds:[55D9D1],0;gvar_0055D9D1
>0046BE72    jmp         0046BF21
 0046BE77    mov         dword ptr [ebp-20],80
 0046BE7E    mov         al,byte ptr [ebp-20]
 0046BE81    mov         edx,dword ptr [ebp-20]
 0046BE84    mov         byte ptr [ebp+edx-124],al
 0046BE8B    inc         dword ptr [ebp-20]
 0046BE8E    cmp         dword ptr [ebp-20],100
>0046BE95    jne         0046BE7E
 0046BE97    lea         eax,[ebp-0A4]
 0046BE9D    mov         dword ptr [ebp-24],eax
 0046BEA0    lea         eax,[ebp-1A6]
 0046BEA6    push        eax
 0046BEA7    push        80
 0046BEAC    mov         eax,dword ptr [ebp-24]
 0046BEAF    push        eax
 0046BEB0    push        2
 0046BEB2    mov         eax,[0055D9C4];gvar_0055D9C4:Integer
 0046BEB7    push        eax
 0046BEB8    call        kernel32.GetStringTypeExA
 0046BEBD    mov         dword ptr [ebp-20],80
 0046BEC4    mov         eax,dword ptr [ebp-20]
 0046BEC7    cmp         word ptr [ebp+eax*2-2A6],2
 0046BED0    sete        al
 0046BED3    mov         [0055D9D1],al;gvar_0055D9D1
 0046BED8    cmp         byte ptr ds:[55D9D1],0;gvar_0055D9D1
>0046BEDF    jne         0046BF21
 0046BEE1    inc         dword ptr [ebp-20]
 0046BEE4    cmp         dword ptr [ebp-20],100
>0046BEEB    jne         0046BEC4
>0046BEED    jmp         0046BF21
 0046BEEF    push        4A
 0046BEF1    call        user32.GetSystemMetrics
 0046BEF6    test        eax,eax
 0046BEF8    setne       al
 0046BEFB    mov         [0055D9D1],al;gvar_0055D9D1
 0046BF00    push        2A
 0046BF02    call        user32.GetSystemMetrics
 0046BF07    test        eax,eax
 0046BF09    setne       al
 0046BF0C    mov         [0055D9D0],al;gvar_0055D9D0
 0046BF11    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046BF18    je          0046BF21
 0046BF1A    push        ebp
 0046BF1B    call        0046BCF8
 0046BF20    pop         ecx
 0046BF21    pop         edi
 0046BF22    pop         esi
 0046BF23    mov         esp,ebp
 0046BF25    pop         ebp
 0046BF26    ret
*}
end;

//0046BF48
procedure sub_0046BF48;
begin
{*
 0046BF48    push        ebp
 0046BF49    mov         ebp,esp
 0046BF4B    mov         ecx,8
 0046BF50    push        0
 0046BF52    push        0
 0046BF54    dec         ecx
>0046BF55    jne         0046BF50
 0046BF57    push        ecx
 0046BF58    xor         eax,eax
 0046BF5A    push        ebp
 0046BF5B    push        46C231
 0046BF60    push        dword ptr fs:[eax]
 0046BF63    mov         dword ptr fs:[eax],esp
 0046BF66    call        0046BD9C
 0046BF6B    call        0046A274
 0046BF70    cmp         byte ptr ds:[55D9D0],0;gvar_0055D9D0
>0046BF77    je          0046BF7E
 0046BF79    call        0046A480
 0046BF7E    call        kernel32.GetThreadLocale
 0046BF83    mov         dword ptr [ebp-10],eax
 0046BF86    lea         eax,[ebp-14]
 0046BF89    push        eax
 0046BF8A    xor         ecx,ecx
 0046BF8C    mov         edx,14
 0046BF91    mov         eax,dword ptr [ebp-10]
 0046BF94    call        0046A198
 0046BF99    mov         edx,dword ptr [ebp-14]
 0046BF9C    mov         eax,55D904;gvar_0055D904:AnsiString
 0046BFA1    call        @LStrAsg
 0046BFA6    lea         eax,[ebp-18]
 0046BFA9    push        eax
 0046BFAA    mov         ecx,46C244;'0'
 0046BFAF    mov         edx,1B
 0046BFB4    mov         eax,dword ptr [ebp-10]
 0046BFB7    call        0046A198
 0046BFBC    mov         eax,dword ptr [ebp-18]
 0046BFBF    xor         edx,edx
 0046BFC1    call        00466B0C
 0046BFC6    mov         [0055D908],al;gvar_0055D908
 0046BFCB    lea         eax,[ebp-1C]
 0046BFCE    push        eax
 0046BFCF    mov         ecx,46C244;'0'
 0046BFD4    mov         edx,1C
 0046BFD9    mov         eax,dword ptr [ebp-10]
 0046BFDC    call        0046A198
 0046BFE1    mov         eax,dword ptr [ebp-1C]
 0046BFE4    xor         edx,edx
 0046BFE6    call        00466B0C
 0046BFEB    mov         [0055D909],al;gvar_0055D909
 0046BFF0    mov         cl,2C
 0046BFF2    mov         edx,0F
 0046BFF7    mov         eax,dword ptr [ebp-10]
 0046BFFA    call        0046A1F4
 0046BFFF    mov         [0055D90A],al;gvar_0055D90A
 0046C004    mov         cl,2E
 0046C006    mov         edx,0E
 0046C00B    mov         eax,dword ptr [ebp-10]
 0046C00E    call        0046A1F4
 0046C013    mov         [0055D90B],al;gvar_0055D90B
 0046C018    lea         eax,[ebp-20]
 0046C01B    push        eax
 0046C01C    mov         ecx,46C244;'0'
 0046C021    mov         edx,19
 0046C026    mov         eax,dword ptr [ebp-10]
 0046C029    call        0046A198
 0046C02E    mov         eax,dword ptr [ebp-20]
 0046C031    xor         edx,edx
 0046C033    call        00466B0C
 0046C038    mov         [0055D90C],al;gvar_0055D90C
 0046C03D    mov         cl,2F
 0046C03F    mov         edx,1D
 0046C044    mov         eax,dword ptr [ebp-10]
 0046C047    call        0046A1F4
 0046C04C    mov         [0055D90D],al;gvar_0055D90D:void 
 0046C051    lea         eax,[ebp-28]
 0046C054    push        eax
 0046C055    mov         ecx,46C250;'m/d/yy'
 0046C05A    mov         edx,1F
 0046C05F    mov         eax,dword ptr [ebp-10]
 0046C062    call        0046A198
 0046C067    mov         eax,dword ptr [ebp-28]
 0046C06A    lea         edx,[ebp-24]
 0046C06D    call        0046A544
 0046C072    mov         edx,dword ptr [ebp-24]
 0046C075    mov         eax,55D910;gvar_0055D910:AnsiString
 0046C07A    call        @LStrAsg
 0046C07F    lea         eax,[ebp-30]
 0046C082    push        eax
 0046C083    mov         ecx,46C260;'mmmm d, yyyy'
 0046C088    mov         edx,20
 0046C08D    mov         eax,dword ptr [ebp-10]
 0046C090    call        0046A198
 0046C095    mov         eax,dword ptr [ebp-30]
 0046C098    lea         edx,[ebp-2C]
 0046C09B    call        0046A544
 0046C0A0    mov         edx,dword ptr [ebp-2C]
 0046C0A3    mov         eax,55D914;gvar_0055D914:AnsiString
 0046C0A8    call        @LStrAsg
 0046C0AD    mov         cl,3A
 0046C0AF    mov         edx,1E
 0046C0B4    mov         eax,dword ptr [ebp-10]
 0046C0B7    call        0046A1F4
 0046C0BC    mov         [0055D918],al;gvar_0055D918:void 
 0046C0C1    lea         eax,[ebp-34]
 0046C0C4    push        eax
 0046C0C5    mov         ecx,46C278;'am'
 0046C0CA    mov         edx,28
 0046C0CF    mov         eax,dword ptr [ebp-10]
 0046C0D2    call        0046A198
 0046C0D7    mov         edx,dword ptr [ebp-34]
 0046C0DA    mov         eax,55D91C;gvar_0055D91C:AnsiString
 0046C0DF    call        @LStrAsg
 0046C0E4    lea         eax,[ebp-38]
 0046C0E7    push        eax
 0046C0E8    mov         ecx,46C284;'pm'
 0046C0ED    mov         edx,29
 0046C0F2    mov         eax,dword ptr [ebp-10]
 0046C0F5    call        0046A198
 0046C0FA    mov         edx,dword ptr [ebp-38]
 0046C0FD    mov         eax,55D920;gvar_0055D920:AnsiString
 0046C102    call        @LStrAsg
 0046C107    lea         eax,[ebp-8]
 0046C10A    call        @LStrClr
 0046C10F    lea         eax,[ebp-0C]
 0046C112    call        @LStrClr
 0046C117    lea         eax,[ebp-3C]
 0046C11A    push        eax
 0046C11B    mov         ecx,46C244;'0'
 0046C120    mov         edx,25
 0046C125    mov         eax,dword ptr [ebp-10]
 0046C128    call        0046A198
 0046C12D    mov         eax,dword ptr [ebp-3C]
 0046C130    xor         edx,edx
 0046C132    call        00466B0C
 0046C137    test        eax,eax
>0046C139    jne         0046C14A
 0046C13B    lea         eax,[ebp-4]
 0046C13E    mov         edx,46C290;'h'
 0046C143    call        @LStrLAsg
>0046C148    jmp         0046C157
 0046C14A    lea         eax,[ebp-4]
 0046C14D    mov         edx,46C29C;'hh'
 0046C152    call        @LStrLAsg
 0046C157    lea         eax,[ebp-40]
 0046C15A    push        eax
 0046C15B    mov         ecx,46C244;'0'
 0046C160    mov         edx,23
 0046C165    mov         eax,dword ptr [ebp-10]
 0046C168    call        0046A198
 0046C16D    mov         eax,dword ptr [ebp-40]
 0046C170    xor         edx,edx
 0046C172    call        00466B0C
 0046C177    test        eax,eax
>0046C179    jne         0046C1BB
 0046C17B    lea         eax,[ebp-44]
 0046C17E    push        eax
 0046C17F    mov         ecx,46C244;'0'
 0046C184    mov         edx,1005
 0046C189    mov         eax,dword ptr [ebp-10]
 0046C18C    call        0046A198
 0046C191    mov         eax,dword ptr [ebp-44]
 0046C194    xor         edx,edx
 0046C196    call        00466B0C
 0046C19B    test        eax,eax
>0046C19D    jne         0046C1AE
 0046C19F    lea         eax,[ebp-0C]
 0046C1A2    mov         edx,46C2A8;' AMPM'
 0046C1A7    call        @LStrLAsg
>0046C1AC    jmp         0046C1BB
 0046C1AE    lea         eax,[ebp-8]
 0046C1B1    mov         edx,46C2B8;'AMPM '
 0046C1B6    call        @LStrLAsg
 0046C1BB    push        dword ptr [ebp-8]
 0046C1BE    push        dword ptr [ebp-4]
 0046C1C1    push        46C2C8;':mm'
 0046C1C6    push        dword ptr [ebp-0C]
 0046C1C9    mov         eax,55D924;gvar_0055D924:AnsiString
 0046C1CE    mov         edx,4
 0046C1D3    call        @LStrCatN
 0046C1D8    push        dword ptr [ebp-8]
 0046C1DB    push        dword ptr [ebp-4]
 0046C1DE    push        46C2D4;':mm:ss'
 0046C1E3    push        dword ptr [ebp-0C]
 0046C1E6    mov         eax,55D928;gvar_0055D928:AnsiString
 0046C1EB    mov         edx,4
 0046C1F0    call        @LStrCatN
 0046C1F5    mov         cl,2C
 0046C1F7    mov         edx,0C
 0046C1FC    mov         eax,dword ptr [ebp-10]
 0046C1FF    call        0046A1F4
 0046C204    mov         [0055D9D2],al;gvar_0055D9D2
 0046C209    xor         eax,eax
 0046C20B    pop         edx
 0046C20C    pop         ecx
 0046C20D    pop         ecx
 0046C20E    mov         dword ptr fs:[eax],edx
 0046C211    push        46C238
 0046C216    lea         eax,[ebp-44]
 0046C219    mov         edx,0D
 0046C21E    call        @LStrArrayClr
 0046C223    lea         eax,[ebp-0C]
 0046C226    mov         edx,3
 0046C22B    call        @LStrArrayClr
 0046C230    ret
>0046C231    jmp         @HandleFinally
>0046C236    jmp         0046C216
 0046C238    mov         esp,ebp
 0046C23A    pop         ebp
 0046C23B    ret
*}
end;

//0046C438
procedure kernel32.Sleep; stdcall;
begin
{*
 0046C438    jmp         dword ptr ds:[55FB38]
*}
end;

//0046C440
procedure RaiseLastOSError;
begin
{*
 0046C440    push        ebp
 0046C441    mov         ebp,esp
 0046C443    add         esp,0FFFFFFE4
 0046C446    xor         eax,eax
 0046C448    mov         dword ptr [ebp-1C],eax
 0046C44B    xor         eax,eax
 0046C44D    push        ebp
 0046C44E    push        46C4DF
 0046C453    push        dword ptr fs:[eax]
 0046C456    mov         dword ptr fs:[eax],esp
 0046C459    call        kernel32.GetLastError
 0046C45E    mov         dword ptr [ebp-4],eax
 0046C461    cmp         dword ptr [ebp-4],0
>0046C465    je          0046C4A3
 0046C467    mov         eax,dword ptr [ebp-4]
 0046C46A    mov         dword ptr [ebp-18],eax
 0046C46D    mov         byte ptr [ebp-14],0
 0046C471    lea         edx,[ebp-1C]
 0046C474    mov         eax,dword ptr [ebp-4]
 0046C477    call        SysErrorMessage
 0046C47C    mov         eax,dword ptr [ebp-1C]
 0046C47F    mov         dword ptr [ebp-10],eax
 0046C482    mov         byte ptr [ebp-0C],0B
 0046C486    lea         eax,[ebp-18]
 0046C489    push        eax
 0046C48A    push        1
 0046C48C    mov         ecx,dword ptr ds:[55B504];^SResString2:TResStringRec
 0046C492    mov         dl,1
 0046C494    mov         eax,[00465D48];EOSError
 0046C499    call        Exception.CreateResFmt
 0046C49E    mov         dword ptr [ebp-8],eax
>0046C4A1    jmp         0046C4B8
 0046C4A3    mov         ecx,dword ptr ds:[55B674];^SUnkOSError:TResStringRec
 0046C4A9    mov         dl,1
 0046C4AB    mov         eax,[00465D48];EOSError
 0046C4B0    call        Exception.Create
 0046C4B5    mov         dword ptr [ebp-8],eax
 0046C4B8    mov         eax,dword ptr [ebp-4]
 0046C4BB    mov         edx,dword ptr [ebp-8]
 0046C4BE    mov         dword ptr [edx+0C],eax
 0046C4C1    mov         eax,dword ptr [ebp-8]
 0046C4C4    call        @RaiseExcept
 0046C4C9    xor         eax,eax
 0046C4CB    pop         edx
 0046C4CC    pop         ecx
 0046C4CD    pop         ecx
 0046C4CE    mov         dword ptr fs:[eax],edx
 0046C4D1    push        46C4E6
 0046C4D6    lea         eax,[ebp-1C]
 0046C4D9    call        @LStrClr
 0046C4DE    ret
>0046C4DF    jmp         @HandleFinally
>0046C4E4    jmp         0046C4D6
 0046C4E6    mov         esp,ebp
 0046C4E8    pop         ebp
 0046C4E9    ret
*}
end;

//0046C4EC
{*function sub_0046C4EC(?:LongBool):?;
begin
 0046C4EC    push        ebp
 0046C4ED    mov         ebp,esp
 0046C4EF    add         esp,0FFFFFFF8
 0046C4F2    mov         dword ptr [ebp-4],eax
 0046C4F5    cmp         dword ptr [ebp-4],0
>0046C4F9    jne         0046C500
 0046C4FB    call        RaiseLastOSError
 0046C500    mov         eax,dword ptr [ebp-4]
 0046C503    mov         dword ptr [ebp-8],eax
 0046C506    mov         eax,dword ptr [ebp-8]
 0046C509    pop         ecx
 0046C50A    pop         ecx
 0046C50B    pop         ebp
 0046C50C    ret
end;*}

//0046C510
{*function sub_0046C510:?;
begin
 0046C510    push        ebp
 0046C511    mov         ebp,esp
 0046C513    add         esp,0FFFFFFF8
 0046C516    push        ebx
 0046C517    mov         byte ptr [ebp-1],1
 0046C51B    mov         eax,[00540B80];0x0 gvar_00540B80
 0046C520    mov         dword ptr [ebp-8],eax
>0046C523    jmp         0046C536
 0046C525    mov         ebx,dword ptr [ebp-8]
 0046C528    call        dword ptr [ebx+4]
 0046C52B    mov         byte ptr [ebp-1],al
 0046C52E    mov         eax,dword ptr [ebp-8]
 0046C531    mov         eax,dword ptr [eax]
 0046C533    mov         dword ptr [ebp-8],eax
 0046C536    cmp         byte ptr [ebp-1],0
>0046C53A    je          0046C542
 0046C53C    cmp         dword ptr [ebp-8],0
>0046C540    jne         0046C525
 0046C542    mov         al,byte ptr [ebp-1]
 0046C545    pop         ebx
 0046C546    pop         ecx
 0046C547    pop         ecx
 0046C548    pop         ebp
 0046C549    ret
end;*}

//0046C54C
procedure sub_0046C54C;
begin
{*
 0046C54C    push        ebp
 0046C54D    mov         ebp,esp
 0046C54F    push        ecx
>0046C550    jmp         0046C571
 0046C552    mov         eax,[00540B80];0x0 gvar_00540B80
 0046C557    mov         dword ptr [ebp-4],eax
 0046C55A    mov         eax,dword ptr [ebp-4]
 0046C55D    mov         eax,dword ptr [eax]
 0046C55F    mov         [00540B80],eax;gvar_00540B80
 0046C564    mov         edx,8
 0046C569    mov         eax,dword ptr [ebp-4]
 0046C56C    call        @FreeMem
 0046C571    cmp         dword ptr ds:[540B80],0;gvar_00540B80
>0046C578    jne         0046C552
 0046C57A    pop         ecx
 0046C57B    pop         ebp
 0046C57C    ret
*}
end;

//0046C580
procedure sub_0046C580;
begin
{*
 0046C580    push        ebp
 0046C581    mov         ebp,esp
 0046C583    push        ecx
 0046C584    push        46C5C0;'kernel32.dll'
 0046C589    call        kernel32.GetModuleHandleA
 0046C58E    mov         dword ptr [ebp-4],eax
 0046C591    cmp         dword ptr [ebp-4],0
>0046C595    je          0046C5AA
 0046C597    push        46C5D0;'GetDiskFreeSpaceExA'
 0046C59C    mov         eax,dword ptr [ebp-4]
 0046C59F    push        eax
 0046C5A0    call        kernel32.GetProcAddress
 0046C5A5    mov         [005409A0],eax;gvar_005409A0:Pointer
 0046C5AA    cmp         dword ptr ds:[5409A0],0;gvar_005409A0:Pointer
>0046C5B1    jne         0046C5BD
 0046C5B3    mov         eax,4671A4;sub_004671A4
 0046C5B8    mov         [005409A0],eax;gvar_005409A0:Pointer
 0046C5BD    pop         ecx
 0046C5BE    pop         ebp
 0046C5BF    ret
*}
end;

//0046C5E4
function InterlockedIncrement(var I:Integer):Integer;
begin
{*
 0046C5E4    mov         edx,1
 0046C5E9    xchg        eax,edx
 0046C5EA    lock xadd   dword ptr [edx],eax
 0046C5EE    inc         eax
 0046C5EF    ret
*}
end;

//0046C5F0
function InterlockedDecrement(var I:Integer):Integer;
begin
{*
 0046C5F0    mov         edx,0FFFFFFFF
 0046C5F5    xchg        eax,edx
 0046C5F6    lock xadd   dword ptr [edx],eax
 0046C5FA    dec         eax
 0046C5FB    ret
*}
end;

//0046C5FC
{*function sub_0046C5FC(?:Integer; ?:?):?;
begin
 0046C5FC    xchg        edx,dword ptr [eax]
 0046C5FE    mov         eax,edx
 0046C600    ret
end;*}

//0046C604
{*function sub_0046C604(?:?; ?:?):?;
begin
 0046C604    xchg        eax,edx
 0046C605    lock xadd   dword ptr [edx],eax
 0046C609    ret
end;*}

//0046C688
{*function sub_0046C688(?:?):?;
begin
 0046C688    push        ebp
 0046C689    mov         ebp,esp
 0046C68B    add         esp,0FFFFFFF4
 0046C68E    mov         dword ptr [ebp-8],eax
 0046C691    call        kernel32.GetCurrentThreadId
 0046C696    mov         word ptr [ebp-2],ax
 0046C69A    mov         al,byte ptr [ebp-2]
 0046C69D    xor         al,byte ptr [ebp-1]
 0046C6A0    and         al,0F
 0046C6A2    mov         byte ptr [ebp-9],al
 0046C6A5    mov         al,byte ptr [ebp-9]
 0046C6A8    mov         esp,ebp
 0046C6AA    pop         ebp
 0046C6AB    ret
end;*}

//0046C6AC
{*procedure sub_0046C6AC(?:?; ?:?);
begin
 0046C6AC    push        ebp
 0046C6AD    mov         ebp,esp
 0046C6AF    add         esp,0FFFFFFEC
 0046C6B2    mov         dword ptr [ebp-8],edx
 0046C6B5    mov         dword ptr [ebp-4],eax
 0046C6B8    mov         eax,dword ptr [ebp-4]
 0046C6BB    call        0046C688
 0046C6C0    mov         byte ptr [ebp-11],al
 0046C6C3    call        kernel32.GetCurrentThreadId
 0046C6C8    mov         dword ptr [ebp-10],eax
 0046C6CB    xor         eax,eax
 0046C6CD    mov         al,byte ptr [ebp-11]
 0046C6D0    mov         edx,dword ptr [ebp-4]
 0046C6D3    mov         eax,dword ptr [edx+eax*4+4]
 0046C6D7    mov         dword ptr [ebp-0C],eax
>0046C6DA    jmp         0046C6E4
 0046C6DC    mov         eax,dword ptr [ebp-0C]
 0046C6DF    mov         eax,dword ptr [eax]
 0046C6E1    mov         dword ptr [ebp-0C],eax
 0046C6E4    cmp         dword ptr [ebp-0C],0
>0046C6E8    je          0046C6F5
 0046C6EA    mov         eax,dword ptr [ebp-0C]
 0046C6ED    mov         eax,dword ptr [eax+4]
 0046C6F0    cmp         eax,dword ptr [ebp-10]
>0046C6F3    jne         0046C6DC
 0046C6F5    cmp         dword ptr [ebp-0C],0
>0046C6F9    jne         0046C74D
 0046C6FB    mov         eax,dword ptr [ebp-4]
 0046C6FE    call        0046C780
 0046C703    mov         dword ptr [ebp-0C],eax
 0046C706    cmp         dword ptr [ebp-0C],0
>0046C70A    jne         0046C74D
 0046C70C    mov         eax,10
 0046C711    call        004660E8
 0046C716    mov         dword ptr [ebp-0C],eax
 0046C719    mov         eax,dword ptr [ebp-10]
 0046C71C    mov         edx,dword ptr [ebp-0C]
 0046C71F    mov         dword ptr [edx+4],eax
 0046C722    mov         eax,dword ptr [ebp-0C]
 0046C725    mov         dword ptr [eax+8],7FFFFFFF
 0046C72C    mov         eax,dword ptr [ebp-0C]
 0046C72F    mov         edx,dword ptr [ebp-0C]
 0046C732    mov         dword ptr [edx],eax
 0046C734    xor         eax,eax
 0046C736    mov         al,byte ptr [ebp-11]
 0046C739    mov         edx,dword ptr [ebp-4]
 0046C73C    lea         eax,[edx+eax*4+4]
 0046C740    mov         edx,dword ptr [ebp-0C]
 0046C743    call        0046C5FC
 0046C748    mov         edx,dword ptr [ebp-0C]
 0046C74B    mov         dword ptr [edx],eax
 0046C74D    mov         eax,dword ptr [ebp-8]
 0046C750    mov         edx,dword ptr [ebp-0C]
 0046C753    mov         dword ptr [eax],edx
 0046C755    mov         esp,ebp
 0046C757    pop         ebp
 0046C758    ret
end;*}

//0046C75C
{*procedure sub_0046C75C(?:?; ?:?);
begin
 0046C75C    push        ebp
 0046C75D    mov         ebp,esp
 0046C75F    add         esp,0FFFFFFF8
 0046C762    mov         dword ptr [ebp-8],edx
 0046C765    mov         dword ptr [ebp-4],eax
 0046C768    mov         eax,dword ptr [ebp-8]
 0046C76B    mov         eax,dword ptr [eax]
 0046C76D    xor         edx,edx
 0046C76F    mov         dword ptr [eax+4],edx
 0046C772    mov         eax,dword ptr [ebp-8]
 0046C775    mov         eax,dword ptr [eax]
 0046C777    xor         edx,edx
 0046C779    mov         dword ptr [eax+8],edx
 0046C77C    pop         ecx
 0046C77D    pop         ecx
 0046C77E    pop         ebp
 0046C77F    ret
end;*}

//0046C780
{*function sub_0046C780(?:?):?;
begin
 0046C780    push        ebp
 0046C781    mov         ebp,esp
 0046C783    add         esp,0FFFFFFF4
 0046C786    mov         dword ptr [ebp-4],eax
 0046C789    mov         eax,dword ptr [ebp-4]
 0046C78C    call        0046C688
 0046C791    and         eax,0FF
 0046C796    mov         edx,dword ptr [ebp-4]
 0046C799    mov         eax,dword ptr [edx+eax*4+4]
 0046C79D    mov         dword ptr [ebp-8],eax
 0046C7A0    cmp         dword ptr [ebp-8],0
>0046C7A4    je          0046C7DD
 0046C7A6    mov         eax,dword ptr [ebp-8]
 0046C7A9    add         eax,8
 0046C7AC    mov         edx,7FFFFFFF
 0046C7B1    call        0046C5FC
 0046C7B6    mov         dword ptr [ebp-0C],eax
 0046C7B9    cmp         dword ptr [ebp-0C],7FFFFFFF
>0046C7C0    je          0046C7CF
 0046C7C2    call        kernel32.GetCurrentThreadId
 0046C7C7    mov         edx,dword ptr [ebp-8]
 0046C7CA    mov         dword ptr [edx+4],eax
>0046C7CD    jmp         0046C7DD
 0046C7CF    mov         eax,dword ptr [ebp-8]
 0046C7D2    mov         eax,dword ptr [eax]
 0046C7D4    mov         dword ptr [ebp-8],eax
 0046C7D7    cmp         dword ptr [ebp-8],0
>0046C7DB    jne         0046C7A6
 0046C7DD    mov         eax,dword ptr [ebp-8]
 0046C7E0    mov         esp,ebp
 0046C7E2    pop         ebp
 0046C7E3    ret
end;*}

//0046C7E4
constructor TMultiReadExclusiveWriteSynchronizer.Create;
begin
{*
 0046C7E4    push        ebp
 0046C7E5    mov         ebp,esp
 0046C7E7    add         esp,0FFFFFFF8
 0046C7EA    test        dl,dl
>0046C7EC    je          0046C7F6
 0046C7EE    add         esp,0FFFFFFF0
 0046C7F1    call        @ClassCreate
 0046C7F6    mov         byte ptr [ebp-5],dl
 0046C7F9    mov         dword ptr [ebp-4],eax
 0046C7FC    xor         edx,edx
 0046C7FE    mov         eax,dword ptr [ebp-4]
 0046C801    call        TObject.Create
 0046C806    mov         eax,dword ptr [ebp-4]
 0046C809    mov         dword ptr [eax+0C],0FFFF
 0046C810    push        0
 0046C812    push        0FF
 0046C814    push        0FF
 0046C816    push        0
 0046C818    call        kernel32.CreateEventA
 0046C81D    mov         edx,dword ptr [ebp-4]
 0046C820    mov         dword ptr [edx+10],eax
 0046C823    push        0
 0046C825    push        0
 0046C827    push        0
 0046C829    push        0
 0046C82B    call        kernel32.CreateEventA
 0046C830    mov         edx,dword ptr [ebp-4]
 0046C833    mov         dword ptr [edx+14],eax
 0046C836    mov         eax,dword ptr [ebp-4]
 0046C839    mov         dword ptr [eax+18],0FFFFFFFF
 0046C840    mov         dl,1
 0046C842    mov         eax,[00465F2C];TThreadLocalCounter
 0046C847    call        TObject.Create
 0046C84C    mov         edx,dword ptr [ebp-4]
 0046C84F    mov         dword ptr [edx+20],eax
 0046C852    mov         eax,dword ptr [ebp-4]
 0046C855    cmp         byte ptr [ebp-5],0
>0046C859    je          0046C86A
 0046C85B    call        @AfterConstruction
 0046C860    pop         dword ptr fs:[0]
 0046C867    add         esp,0C
 0046C86A    mov         eax,dword ptr [ebp-4]
 0046C86D    pop         ecx
 0046C86E    pop         ecx
 0046C86F    pop         ebp
 0046C870    ret
*}
end;

//0046C8D0
{*procedure sub_0046C8D0(?:?);
begin
 0046C8D0    push        ebp
 0046C8D1    mov         ebp,esp
 0046C8D3    push        ecx
 0046C8D4    mov         dword ptr [ebp-4],eax
 0046C8D7    mov         eax,dword ptr [ebp-4]
 0046C8DA    mov         eax,dword ptr [eax+10]
 0046C8DD    push        eax
 0046C8DE    call        kernel32.ResetEvent
 0046C8E3    pop         ecx
 0046C8E4    pop         ebp
 0046C8E5    ret
end;*}

//0046C8E8
{*procedure sub_0046C8E8(?:?);
begin
 0046C8E8    push        ebp
 0046C8E9    mov         ebp,esp
 0046C8EB    push        ecx
 0046C8EC    mov         dword ptr [ebp-4],eax
 0046C8EF    mov         eax,dword ptr [ebp-4]
 0046C8F2    mov         eax,dword ptr [eax+10]
 0046C8F5    push        eax
 0046C8F6    call        kernel32.SetEvent
 0046C8FB    pop         ecx
 0046C8FC    pop         ebp
 0046C8FD    ret
end;*}

//0046C900
{*procedure sub_0046C900(?:?);
begin
 0046C900    push        ebp
 0046C901    mov         ebp,esp
 0046C903    push        ecx
 0046C904    mov         dword ptr [ebp-4],eax
 0046C907    mov         eax,dword ptr [ebp-4]
 0046C90A    mov         eax,dword ptr [eax+14]
 0046C90D    push        eax
 0046C90E    call        kernel32.SetEvent
 0046C913    pop         ecx
 0046C914    pop         ebp
 0046C915    ret
end;*}

//0046C918
{*procedure sub_0046C918(?:?);
begin
 0046C918    push        ebp
 0046C919    mov         ebp,esp
 0046C91B    push        ecx
 0046C91C    mov         dword ptr [ebp-4],eax
 0046C91F    mov         eax,dword ptr [ebp-4]
 0046C922    mov         eax,dword ptr [eax+18]
 0046C925    push        eax
 0046C926    mov         eax,dword ptr [ebp-4]
 0046C929    mov         eax,dword ptr [eax+10]
 0046C92C    push        eax
 0046C92D    call        kernel32.WaitForSingleObject
 0046C932    pop         ecx
 0046C933    pop         ebp
 0046C934    ret
end;*}

//0046C938
{*procedure sub_0046C938(?:?);
begin
 0046C938    push        ebp
 0046C939    mov         ebp,esp
 0046C93B    push        ecx
 0046C93C    mov         dword ptr [ebp-4],eax
 0046C93F    mov         eax,dword ptr [ebp-4]
 0046C942    mov         eax,dword ptr [eax+18]
 0046C945    push        eax
 0046C946    mov         eax,dword ptr [ebp-4]
 0046C949    mov         eax,dword ptr [eax+14]
 0046C94C    push        eax
 0046C94D    call        kernel32.WaitForSingleObject
 0046C952    pop         ecx
 0046C953    pop         ebp
 0046C954    ret
end;*}

//0046C958
{*function sub_0046C958(?:?):?;
begin
 0046C958    push        ebp
 0046C959    mov         ebp,esp
 0046C95B    add         esp,0FFFFFFE4
 0046C95E    mov         dword ptr [ebp-4],eax
 0046C961    mov         byte ptr [ebp-5],1
 0046C965    call        kernel32.GetCurrentThreadId
 0046C96A    mov         dword ptr [ebp-14],eax
 0046C96D    mov         eax,dword ptr [ebp-4]
 0046C970    mov         eax,dword ptr [eax+24]
 0046C973    cmp         eax,dword ptr [ebp-14]
>0046C976    je          0046CA26
 0046C97C    mov         eax,dword ptr [ebp-4]
 0046C97F    call        0046C8D0
 0046C984    mov         eax,dword ptr [ebp-4]
 0046C987    mov         eax,dword ptr [eax+28]
 0046C98A    mov         dword ptr [ebp-1C],eax
 0046C98D    lea         edx,[ebp-0C]
 0046C990    mov         eax,dword ptr [ebp-4]
 0046C993    mov         eax,dword ptr [eax+20]
 0046C996    call        0046C6AC
 0046C99B    mov         eax,dword ptr [ebp-0C]
 0046C99E    cmp         dword ptr [eax+0C],0
 0046C9A2    seta        byte ptr [ebp-0D]
 0046C9A6    cmp         byte ptr [ebp-0D],0
>0046C9AA    je          0046C9DA
 0046C9AC    mov         eax,dword ptr [ebp-4]
 0046C9AF    add         eax,0C
 0046C9B2    call        InterlockedIncrement
>0046C9B7    jmp         0046C9DA
 0046C9B9    mov         eax,dword ptr [ebp-4]
 0046C9BC    add         eax,0C
 0046C9BF    mov         edx,0FFFF
 0046C9C4    call        0046C604
 0046C9C9    mov         dword ptr [ebp-18],eax
 0046C9CC    cmp         dword ptr [ebp-18],0
>0046C9D0    je          0046C9DA
 0046C9D2    mov         eax,dword ptr [ebp-4]
 0046C9D5    call        0046C938
 0046C9DA    mov         eax,dword ptr [ebp-4]
 0046C9DD    add         eax,0C
 0046C9E0    mov         edx,0FFFF0001
 0046C9E5    call        0046C604
 0046C9EA    cmp         eax,0FFFF
>0046C9EF    jne         0046C9B9
 0046C9F1    mov         eax,dword ptr [ebp-4]
 0046C9F4    call        0046C8D0
 0046C9F9    cmp         byte ptr [ebp-0D],0
>0046C9FD    je          0046CA0A
 0046C9FF    mov         eax,dword ptr [ebp-4]
 0046CA02    add         eax,0C
 0046CA05    call        InterlockedDecrement
 0046CA0A    mov         eax,dword ptr [ebp-14]
 0046CA0D    mov         edx,dword ptr [ebp-4]
 0046CA10    mov         dword ptr [edx+24],eax
 0046CA13    mov         eax,dword ptr [ebp-4]
 0046CA16    add         eax,28
 0046CA19    call        InterlockedIncrement
 0046CA1E    dec         eax
 0046CA1F    cmp         eax,dword ptr [ebp-1C]
 0046CA22    sete        byte ptr [ebp-5]
 0046CA26    mov         eax,dword ptr [ebp-4]
 0046CA29    inc         dword ptr [eax+1C]
 0046CA2C    mov         al,byte ptr [ebp-5]
 0046CA2F    mov         esp,ebp
 0046CA31    pop         ebp
 0046CA32    ret
end;*}

//0046CA34
{*procedure sub_0046CA34(?:?);
begin
 0046CA34    push        ebp
 0046CA35    mov         ebp,esp
 0046CA37    add         esp,0FFFFFFF8
 0046CA3A    mov         dword ptr [ebp-4],eax
 0046CA3D    lea         edx,[ebp-8]
 0046CA40    mov         eax,dword ptr [ebp-4]
 0046CA43    mov         eax,dword ptr [eax+20]
 0046CA46    call        0046C6AC
 0046CA4B    mov         eax,dword ptr [ebp-4]
 0046CA4E    dec         dword ptr [eax+1C]
 0046CA51    mov         eax,dword ptr [ebp-4]
 0046CA54    cmp         dword ptr [eax+1C],0
>0046CA58    jne         0046CA82
 0046CA5A    mov         eax,dword ptr [ebp-4]
 0046CA5D    xor         edx,edx
 0046CA5F    mov         dword ptr [eax+24],edx
 0046CA62    mov         eax,dword ptr [ebp-4]
 0046CA65    add         eax,0C
 0046CA68    mov         edx,0FFFF
 0046CA6D    call        0046C604
 0046CA72    mov         eax,dword ptr [ebp-4]
 0046CA75    call        0046C900
 0046CA7A    mov         eax,dword ptr [ebp-4]
 0046CA7D    call        0046C8E8
 0046CA82    mov         eax,dword ptr [ebp-8]
 0046CA85    cmp         dword ptr [eax+0C],0
>0046CA89    jne         0046CA99
 0046CA8B    lea         edx,[ebp-8]
 0046CA8E    mov         eax,dword ptr [ebp-4]
 0046CA91    mov         eax,dword ptr [eax+20]
 0046CA94    call        0046C75C
 0046CA99    pop         ecx
 0046CA9A    pop         ecx
 0046CA9B    pop         ebp
 0046CA9C    ret
end;*}

//0046CAA0
{*procedure sub_0046CAA0(?:?);
begin
 0046CAA0    push        ebp
 0046CAA1    mov         ebp,esp
 0046CAA3    add         esp,0FFFFFFF0
 0046CAA6    mov         dword ptr [ebp-4],eax
 0046CAA9    lea         edx,[ebp-8]
 0046CAAC    mov         eax,dword ptr [ebp-4]
 0046CAAF    mov         eax,dword ptr [eax+20]
 0046CAB2    call        0046C6AC
 0046CAB7    mov         eax,dword ptr [ebp-8]
 0046CABA    inc         dword ptr [eax+0C]
 0046CABD    mov         eax,dword ptr [ebp-8]
 0046CAC0    cmp         dword ptr [eax+0C],1
 0046CAC4    seta        byte ptr [ebp-9]
 0046CAC8    call        kernel32.GetCurrentThreadId
 0046CACD    mov         edx,dword ptr [ebp-4]
 0046CAD0    cmp         eax,dword ptr [edx+24]
>0046CAD3    je          0046CB22
 0046CAD5    cmp         byte ptr [ebp-9],0
>0046CAD9    jne         0046CB22
 0046CADB    mov         eax,dword ptr [ebp-4]
 0046CADE    call        0046C918
>0046CAE3    jmp         0046CB13
 0046CAE5    mov         eax,dword ptr [ebp-4]
 0046CAE8    add         eax,0C
 0046CAEB    call        InterlockedIncrement
 0046CAF0    mov         dword ptr [ebp-10],eax
 0046CAF3    cmp         dword ptr [ebp-10],0FFFF
>0046CAFA    jne         0046CB04
 0046CAFC    mov         eax,dword ptr [ebp-4]
 0046CAFF    call        0046C900
 0046CB04    push        0
 0046CB06    call        kernel32.Sleep
 0046CB0B    mov         eax,dword ptr [ebp-4]
 0046CB0E    call        0046C918
 0046CB13    mov         eax,dword ptr [ebp-4]
 0046CB16    add         eax,0C
 0046CB19    call        InterlockedDecrement
 0046CB1E    test        eax,eax
>0046CB20    jle         0046CAE5
 0046CB22    mov         esp,ebp
 0046CB24    pop         ebp
 0046CB25    ret
end;*}

//0046CB28
{*procedure sub_0046CB28(?:?);
begin
 0046CB28    push        ebp
 0046CB29    mov         ebp,esp
 0046CB2B    add         esp,0FFFFFFF4
 0046CB2E    mov         dword ptr [ebp-4],eax
 0046CB31    lea         edx,[ebp-8]
 0046CB34    mov         eax,dword ptr [ebp-4]
 0046CB37    mov         eax,dword ptr [eax+20]
 0046CB3A    call        0046C6AC
 0046CB3F    mov         eax,dword ptr [ebp-8]
 0046CB42    dec         dword ptr [eax+0C]
 0046CB45    mov         eax,dword ptr [ebp-8]
 0046CB48    cmp         dword ptr [eax+0C],0
>0046CB4C    jne         0046CBA7
 0046CB4E    lea         edx,[ebp-8]
 0046CB51    mov         eax,dword ptr [ebp-4]
 0046CB54    mov         eax,dword ptr [eax+20]
 0046CB57    call        0046C75C
 0046CB5C    call        kernel32.GetCurrentThreadId
 0046CB61    mov         edx,dword ptr [ebp-4]
 0046CB64    cmp         eax,dword ptr [edx+24]
>0046CB67    je          0046CBA7
 0046CB69    mov         eax,dword ptr [ebp-4]
 0046CB6C    add         eax,0C
 0046CB6F    call        InterlockedIncrement
 0046CB74    mov         dword ptr [ebp-0C],eax
 0046CB77    cmp         dword ptr [ebp-0C],0FFFF
>0046CB7E    jne         0046CB8A
 0046CB80    mov         eax,dword ptr [ebp-4]
 0046CB83    call        0046C900
>0046CB88    jmp         0046CBA7
 0046CB8A    cmp         dword ptr [ebp-0C],0
>0046CB8E    jg          0046CBA7
 0046CB90    mov         eax,dword ptr [ebp-0C]
 0046CB93    mov         ecx,0FFFF
 0046CB98    cdq
 0046CB99    idiv        eax,ecx
 0046CB9B    test        edx,edx
>0046CB9D    jne         0046CBA7
 0046CB9F    mov         eax,dword ptr [ebp-4]
 0046CBA2    call        0046C900
 0046CBA7    mov         esp,ebp
 0046CBA9    pop         ebp
 0046CBAA    ret
end;*}

//0046CBAC
procedure FreeAndNil(var Obj:void );
begin
{*
 0046CBAC    push        ebp
 0046CBAD    mov         ebp,esp
 0046CBAF    add         esp,0FFFFFFF8
 0046CBB2    mov         dword ptr [ebp-4],eax
 0046CBB5    mov         eax,dword ptr [ebp-4]
 0046CBB8    mov         eax,dword ptr [eax]
 0046CBBA    mov         dword ptr [ebp-8],eax
 0046CBBD    mov         eax,dword ptr [ebp-4]
 0046CBC0    xor         edx,edx
 0046CBC2    mov         dword ptr [eax],edx
 0046CBC4    mov         eax,dword ptr [ebp-8]
 0046CBC7    call        TObject.Free
 0046CBCC    pop         ecx
 0046CBCD    pop         ecx
 0046CBCE    pop         ebp
 0046CBCF    ret
*}
end;

//0046CBD0
{*function sub_0046CBD0(?:IAutoComplete; ?:?; ?:?):?;
begin
 0046CBD0    push        ebp
 0046CBD1    mov         ebp,esp
 0046CBD3    add         esp,0FFFFFFF0
 0046CBD6    mov         dword ptr [ebp-0C],ecx
 0046CBD9    mov         dword ptr [ebp-8],edx
 0046CBDC    mov         dword ptr [ebp-4],eax
 0046CBDF    cmp         dword ptr [ebp-4],0
>0046CBE3    je          0046CBF9
 0046CBE5    mov         eax,dword ptr [ebp-0C]
 0046CBE8    push        eax
 0046CBE9    mov         eax,dword ptr [ebp-8]
 0046CBEC    push        eax
 0046CBED    mov         eax,dword ptr [ebp-4]
 0046CBF0    push        eax
 0046CBF1    mov         eax,dword ptr [eax]
 0046CBF3    call        dword ptr [eax]
 0046CBF5    test        eax,eax
>0046CBF7    je          0046CBFD
 0046CBF9    xor         eax,eax
>0046CBFB    jmp         0046CBFF
 0046CBFD    mov         al,1
 0046CBFF    mov         byte ptr [ebp-0D],al
 0046CC02    mov         al,byte ptr [ebp-0D]
 0046CC05    mov         esp,ebp
 0046CC07    pop         ebp
 0046CC08    ret
end;*}

//0046CC0C
{*function sub_0046CC0C(?:TCustomVariantType; ?:?; ?:?):?;
begin
 0046CC0C    push        ebp
 0046CC0D    mov         ebp,esp
 0046CC0F    add         esp,0FFFFFFEC
 0046CC12    push        ebx
 0046CC13    xor         ebx,ebx
 0046CC15    mov         dword ptr [ebp-14],ebx
 0046CC18    mov         dword ptr [ebp-0C],ecx
 0046CC1B    mov         dword ptr [ebp-8],edx
 0046CC1E    mov         dword ptr [ebp-4],eax
 0046CC21    xor         eax,eax
 0046CC23    push        ebp
 0046CC24    push        46CC93
 0046CC29    push        dword ptr fs:[eax]
 0046CC2C    mov         dword ptr fs:[eax],esp
 0046CC2F    cmp         dword ptr [ebp-4],0
>0046CC33    je          0046CC74
 0046CC35    lea         eax,[ebp-14]
 0046CC38    call        @IntfClear
 0046CC3D    mov         ecx,eax
 0046CC3F    mov         edx,46CCA4;['{00000000-0000-0000-C000-000000000046}']
 0046CC44    mov         eax,dword ptr [ebp-4]
 0046CC47    call        TObject.GetInterface
 0046CC4C    test        al,al
>0046CC4E    je          0046CC62
 0046CC50    mov         ecx,dword ptr [ebp-0C]
 0046CC53    mov         edx,dword ptr [ebp-8]
 0046CC56    mov         eax,dword ptr [ebp-14]
 0046CC59    call        0046CBD0
 0046CC5E    test        al,al
>0046CC60    jne         0046CC78
 0046CC62    mov         ecx,dword ptr [ebp-0C]
 0046CC65    mov         edx,dword ptr [ebp-8]
 0046CC68    mov         eax,dword ptr [ebp-4]
 0046CC6B    call        TObject.GetInterface
 0046CC70    test        al,al
>0046CC72    jne         0046CC78
 0046CC74    xor         eax,eax
>0046CC76    jmp         0046CC7A
 0046CC78    mov         al,1
 0046CC7A    mov         byte ptr [ebp-0D],al
 0046CC7D    xor         eax,eax
 0046CC7F    pop         edx
 0046CC80    pop         ecx
 0046CC81    pop         ecx
 0046CC82    mov         dword ptr fs:[eax],edx
 0046CC85    push        46CC9A
 0046CC8A    lea         eax,[ebp-14]
 0046CC8D    call        @IntfClear
 0046CC92    ret
>0046CC93    jmp         @HandleFinally
>0046CC98    jmp         0046CC8A
 0046CC9A    mov         al,byte ptr [ebp-0D]
 0046CC9D    pop         ebx
 0046CC9E    mov         esp,ebp
 0046CCA0    pop         ebp
 0046CCA1    ret
end;*}

//0046CCB4
{*function sub_0046CCB4(?:AnsiString; ?:?):?;
begin
 0046CCB4    push        ebp
 0046CCB5    mov         ebp,esp
 0046CCB7    add         esp,0FFFFFFEC
 0046CCBA    mov         dword ptr [ebp-0C],edx
 0046CCBD    mov         dword ptr [ebp-8],eax
 0046CCC0    mov         eax,dword ptr [ebp-0C]
 0046CCC3    push        eax
 0046CCC4    call        kernel32.SetErrorMode
 0046CCC9    mov         dword ptr [ebp-14],eax
 0046CCCC    xor         eax,eax
 0046CCCE    push        ebp
 0046CCCF    push        46CD2D
 0046CCD4    push        dword ptr fs:[eax]
 0046CCD7    mov         dword ptr fs:[eax],esp
 0046CCDA    fnstcw      word ptr [ebp-2]
 0046CCDD    xor         eax,eax
 0046CCDF    push        ebp
 0046CCE0    push        46CD0F
 0046CCE5    push        dword ptr fs:[eax]
 0046CCE8    mov         dword ptr fs:[eax],esp
 0046CCEB    mov         eax,dword ptr [ebp-8]
 0046CCEE    call        @LStrToPChar
 0046CCF3    push        eax
 0046CCF4    call        kernel32.LoadLibraryA
 0046CCF9    mov         dword ptr [ebp-10],eax
 0046CCFC    xor         eax,eax
 0046CCFE    pop         edx
 0046CCFF    pop         ecx
 0046CD00    pop         ecx
 0046CD01    mov         dword ptr fs:[eax],edx
 0046CD04    push        46CD16
 0046CD09    fnclex
 0046CD0B    fldcw       word ptr [ebp-2]
 0046CD0E    ret
>0046CD0F    jmp         @HandleFinally
>0046CD14    jmp         0046CD09
 0046CD16    xor         eax,eax
 0046CD18    pop         edx
 0046CD19    pop         ecx
 0046CD1A    pop         ecx
 0046CD1B    mov         dword ptr fs:[eax],edx
 0046CD1E    push        46CD34
 0046CD23    mov         eax,dword ptr [ebp-14]
 0046CD26    push        eax
 0046CD27    call        kernel32.SetErrorMode
 0046CD2C    ret
>0046CD2D    jmp         @HandleFinally
>0046CD32    jmp         0046CD23
 0046CD34    mov         eax,dword ptr [ebp-10]
 0046CD37    mov         esp,ebp
 0046CD39    pop         ebp
 0046CD3A    ret
end;*}

//0046CD3C
procedure _NF__C58;
begin
{*
 0046CD3C    sbb         eax,78000000
 0046CD41    or          edx,dword ptr [eax+eax-48]
 0046CD45    mov         ah,55
 0046CD47    add         byte ptr [eax+0B],dh
 0046CD4A    push        esp
 0046CD4B    add         byte ptr [eax-4D],bl
 0046CD4E    push        ebp
 0046CD4F    add         byte ptr [eax+0B],ch
 0046CD52    push        esp
 0046CD53    add         byte ptr [eax],cl
 0046CD55    mov         cl,55
 0046CD57    add         byte ptr [eax+0B],ah
 0046CD5A    push        esp
 0046CD5B    add         byte ptr [eax],ah
 0046CD5D    mov         ch,55
 0046CD5F    add         byte ptr [eax+0B],bl
 0046CD62    push        esp
 0046CD63    add         byte ptr [ebp+esi*4+55],bh
 0046CD67    add         byte ptr [eax+0B],dl
 0046CD6A    push        esp
 0046CD6B    add         byte ptr [edx+esi*4],ch
 0046CD6E    push        ebp
 0046CD6F    add         byte ptr [eax+0B],cl
 0046CD72    push        esp
 0046CD73    add         byte ptr [eax],dh
 0046CD75    mov         bl,55
 0046CD77    add         byte ptr [eax+0B],al
 0046CD7A    push        esp
 0046CD7B    add         byte ptr [eax+esi*4+0B380055],ch
 0046CD82    push        esp
 0046CD83    add         byte ptr [eax+300055B3],ah
 0046CD89    or          edx,dword ptr [eax+eax+18]
 0046CD8D    mov         ah,55
 0046CD8F    add         byte ptr [eax],ch
 0046CD91    or          edx,dword ptr [eax+eax-0C]
 0046CD95    mov         dl,55
 0046CD97    add         byte ptr [eax],ah
 0046CD99    or          edx,dword ptr [eax+eax-4]
 0046CD9D    mov         dl,55
 0046CD9F    add         byte ptr [eax],bl
 0046CDA1    or          edx,dword ptr [eax+eax+30]
 0046CDA5    mov         dh,55
 0046CDA7    add         byte ptr [eax],dl
 0046CDA9    or          edx,dword ptr [eax+eax-8]
 0046CDAD    mov         dl,55
 0046CDAF    add         byte ptr [eax],cl
 0046CDB1    or          edx,dword ptr [eax+eax-38]
 0046CDB5    mov         dh,55
 0046CDB7    add         byte ptr [eax],al
 0046CDB9    or          edx,dword ptr [eax+eax+74]
 0046CDBD    mov         ah,55
 0046CDBF    add         al,bh
 0046CDC1    or          dl,byte ptr [eax+eax+40]
 0046CDC5    mov         ah,55
 0046CDC7    add         al,dh
 0046CDC9    or          dl,byte ptr [eax+eax-14]
 0046CDCD    mov         dh,55
 0046CDCF    add         al,ch
 0046CDD1    or          dl,byte ptr [eax+eax+78]
 0046CDD5    mov         dh,55
 0046CDD7    add         al,ah
 0046CDD9    or          dl,byte ptr [eax+eax+14]
 0046CDDD    mov         bl,55
 0046CDDF    add         al,bl
 0046CDE1    or          dl,byte ptr [eax+eax+38]
 0046CDE5    mov         dh,55
 0046CDE7    add         al,dl
 0046CDE9    or          dl,byte ptr [eax+eax+48]
 0046CDED    mov         dh,55
 0046CDEF    add         al,cl
 0046CDF1    or          dl,byte ptr [eax+eax+0C]
 0046CDF5    mov         dl,55
 0046CDF7    add         al,al
 0046CDF9    or          dl,byte ptr [eax+eax-68]
 0046CDFD    mov         cl,55
 0046CDFF    add         byte ptr [eax+3800540A],bh
 0046CE05    mov         ah,55
 0046CE07    add         byte ptr [eax+1000540A],dh
 0046CE0D    mov         ch,55
 0046CE0F    add         byte ptr [eax-3FFFABF6],ch
 0046CE15    mov         al,55
 0046CE17    add         byte ptr [eax+2C00540A],ah
 0046CE1D    mov         dh,55
 0046CE1F    add         byte ptr [eax+1000540A],bl
 0046CE25    mov         bl,55
 0046CE27    add         byte ptr [eax],ch;{_NF__C59}
*}
end;

//0046CE28
procedure _NF__C59;
begin
{*
 0046CE28    sub         byte ptr [eax],al
 0046CE2A    add         byte ptr [eax],al
 0046CE2C    nop
 0046CE2D    or          dl,byte ptr [eax+eax+10]
 0046CE31    mov         dh,55
 0046CE33    add         byte ptr [eax],al
 0046CE35    add         byte ptr [eax],al
 0046CE37    add         byte ptr [edx+ecx-4EEBFFAC],cl
 0046CE3E    push        ebp
 0046CE3F    add         byte ptr [eax],al
 0046CE41    add         byte ptr [eax],al
 0046CE43    add         byte ptr [eax+540A],cl
 0046CE49    mov         ch,55
 0046CE4B    add         byte ptr [eax],al
 0046CE4D    add         byte ptr [eax],al
 0046CE4F    add         byte ptr [edx+ecx-4F33FFAC],al
 0046CE56    push        ebp
 0046CE57    add         byte ptr [eax],al
 0046CE59    add         byte ptr [eax],al
 0046CE5B    add         byte ptr [eax-2FFFABF6],al
 0046CE61    mov         cl,55
 0046CE63    add         byte ptr [eax],al
 0046CE65    add         byte ptr [eax],al
 0046CE67    add         byte ptr [edx+ecx+54],bh
 0046CE6B    add         al,cl
 0046CE6D    mov         cl,55
 0046CE6F    add         byte ptr [eax],al
 0046CE71    add         byte ptr [eax],al
 0046CE73    add         byte ptr [eax+0A],bh
 0046CE76    push        esp
 0046CE77    add         byte ptr [eax],bh
 0046CE79    mov         cl,55
 0046CE7B    add         byte ptr [eax],al
 0046CE7D    add         byte ptr [eax],al
 0046CE7F    add         byte ptr [edx+ecx+54],dh
 0046CE83    add         byte ptr [ebx+esi*4],cl
 0046CE86    push        ebp
 0046CE87    add         byte ptr [eax],al
 0046CE89    add         byte ptr [eax],al
 0046CE8B    add         byte ptr [eax+0A],dh
 0046CE8E    push        esp
 0046CE8F    add         byte ptr [eax-4C],dh
 0046CE92    push        ebp
 0046CE93    add         byte ptr [eax],al
 0046CE95    add         byte ptr [eax],al
 0046CE97    add         byte ptr [edx+ecx+54],ch
 0046CE9B    add         ah,cl
 0046CE9D    mov         cl,55
 0046CE9F    add         byte ptr [eax],al
 0046CEA1    add         byte ptr [eax],al
 0046CEA3    add         byte ptr [eax+0A],ch
 0046CEA6    push        esp
 0046CEA7    add         byte ptr [esp+esi*4],ch
 0046CEAA    push        ebp
 0046CEAB    add         byte ptr [eax],al
 0046CEAD    add         byte ptr [eax],al
 0046CEAF    add         byte ptr [edx+ecx+54],ah
 0046CEB3    add         byte ptr [ebp+esi*4+55],ch
 0046CEB7    add         byte ptr [eax],al
 0046CEB9    add         byte ptr [eax],al
 0046CEBB    add         byte ptr [eax+0A],ah
 0046CEBE    push        esp
 0046CEBF    add         byte ptr [eax-4B],dl
 0046CEC2    push        ebp
 0046CEC3    add         byte ptr [eax],al
 0046CEC5    add         byte ptr [eax],al
 0046CEC7    add         byte ptr [edx+ecx+54],bl
 0046CECB    add         byte ptr [eax+55B4],ah
 0046CED1    add         byte ptr [eax],al
 0046CED3    add         byte ptr [eax+0A],bl
 0046CED6    push        esp
 0046CED7    add         al,dh
 0046CED9    mov         dl,55
 0046CEDB    add         byte ptr [eax],al
 0046CEDD    add         byte ptr [eax],al
 0046CEDF    add         byte ptr [edx+ecx+54],dl
 0046CEE3    add         byte ptr [edx+esi*4+55],bh
 0046CEE7    add         byte ptr [eax],al
 0046CEE9    add         byte ptr [eax],al
 0046CEEB    add         byte ptr [eax+0A],dl
 0046CEEE    push        esp
 0046CEEF    add         al,cl
 0046CEF1    mov         al,55
 0046CEF3    add         byte ptr [eax],al
 0046CEF5    add         byte ptr [eax],al
 0046CEF7    add         byte ptr [edx+ecx+54],cl
 0046CEFB    add         byte ptr [eax-4B],cl
 0046CEFE    push        ebp
 0046CEFF    add         byte ptr [eax],al
 0046CF01    add         byte ptr [eax],al
 0046CF03    add         byte ptr [eax+0A],cl
 0046CF06    push        esp
 0046CF07    add         ah,ah
 0046CF09    mov         bl,55
 0046CF0B    add         byte ptr [eax],al
 0046CF0D    add         byte ptr [eax],al
 0046CF0F    add         byte ptr [edx+ecx+54],al
 0046CF13    add         byte ptr [eax-4E],ah
 0046CF16    push        ebp
 0046CF17    add         byte ptr [eax],al
 0046CF19    add         byte ptr [eax],al
 0046CF1B    add         byte ptr [eax+0A],al
 0046CF1E    push        esp
 0046CF1F    add         byte ptr [ebx+esi*4+55],bl
 0046CF26    add         byte ptr [eax],al
 0046CF28    cmp         al,0A
 0046CF2A    push        esp
 0046CF2B    add         byte ptr [esp+esi*4+55],cl
 0046CF2F    add         byte ptr [eax],al
 0046CF31    add         byte ptr [eax],al
 0046CF33    add         byte ptr [eax],bh
 0046CF35    or          dl,byte ptr [eax+eax-48]
 0046CF39    mov         bl,55
 0046CF3B    add         byte ptr [eax],al
 0046CF3D    add         byte ptr [eax],al
 0046CF3F    add         byte ptr [edx+ecx],dh
 0046CF42    push        esp
 0046CF43    add         byte ptr [eax+55B2],dh
 0046CF49    add         byte ptr [eax],al
 0046CF4B    add         byte ptr [eax],dh
 0046CF4D    or          dl,byte ptr [eax+eax-3C]
 0046CF51    mov         al,55
 0046CF53    add         byte ptr [eax],al
 0046CF55    add         byte ptr [eax],al
 0046CF57    add         byte ptr [edx+ecx],ch
 0046CF5A    push        esp
 0046CF5B    add         byte ptr [ebx+esi*4+55],al
 0046CF5F    add         byte ptr [eax],al
 0046CF61    add         byte ptr [eax],al
 0046CF63    add         byte ptr [eax],ch
 0046CF65    or          dl,byte ptr [eax+eax+50]
 0046CF69    mov         dh,55
 0046CF6B    add         byte ptr [eax],al
 0046CF6D    add         byte ptr [eax],al
 0046CF6F    add         byte ptr [edx+ecx],ah
 0046CF72    push        esp
 0046CF73    add         ah,dh
 0046CF75    mov         ch,55
 0046CF77    add         byte ptr [eax],al
 0046CF79    add         byte ptr [eax],al
 0046CF7B    add         byte ptr [eax],ah
 0046CF7D    or          dl,byte ptr [eax+eax+28]
 0046CF81    mov         ah,55
 0046CF83    add         byte ptr [eax],al
 0046CF85    add         byte ptr [eax],al
 0046CF87    add         byte ptr [edx+ecx],bl
 0046CF8A    push        esp
 0046CF8B    add         byte ptr [eax],cl
 0046CF8D    mov         dl,55
 0046CF8F    add         byte ptr [eax],al
 0046CF91    add         byte ptr [eax],al
 0046CF93    add         byte ptr [eax],bl
 0046CF95    or          dl,byte ptr [eax+eax-2C]
 0046CF99    mov         al,55
 0046CF9B    add         byte ptr [eax],al
 0046CF9D    add         byte ptr [eax],al
 0046CF9F    add         byte ptr [edx+ecx],dl
 0046CFA2    push        esp
 0046CFA3    add         ah,cl
 0046CFA5    mov         ch,55
 0046CFA7    add         byte ptr [eax],al
 0046CFA9    add         byte ptr [eax],al
 0046CFAB    add         byte ptr [eax],dl
 0046CFAD    or          dl,byte ptr [eax+eax+10]
 0046CFB1    mov         bh,55
 0046CFB3    add         byte ptr [eax],al
 0046CFB5    add         byte ptr [eax],al
 0046CFB7    add         byte ptr [edx+ecx],cl
 0046CFBA    push        esp
 0046CFBB    add         byte ptr [eax-4F],dl
 0046CFBE    push        ebp
 0046CFBF    add         byte ptr [eax],al
 0046CFC1    add         byte ptr [eax],al
 0046CFC3    add         byte ptr [eax],cl
 0046CFC5    or          dl,byte ptr [eax+eax-58]
 0046CFC9    mov         al,55
 0046CFCB    add         byte ptr [eax],al
 0046CFCD    add         byte ptr [eax],al
 0046CFCF    add         byte ptr [edx+ecx],al
 0046CFD2    push        esp
 0046CFD3    add         byte ptr [eax],ah
 0046CFD5    mov         dh,55
 0046CFD7    add         byte ptr [eax],al
 0046CFD9    add         byte ptr [eax],al
 0046CFDB    add         byte ptr [eax],al
 0046CFDD    or          dl,byte ptr [eax+eax+24]
 0046CFE1    mov         ah,55
 0046CFE3    add         byte ptr [eax],al
 0046CFE5    add         byte ptr [eax],al
 0046CFE7    add         ah,bh
 0046CFE9    or          dword ptr [eax+eax-64],edx
 0046CFED    mov         dh,55
 0046CFEF    add         byte ptr [eax],al
 0046CFF1    add         byte ptr [eax],al
 0046CFF3    add         ah,dl
 0046CFF5    or          dword ptr [eax+eax+20],edx
 0046CFF9    mov         bl,55
 0046CFFB    add         byte ptr [eax],al
 0046CFFD    add         byte ptr [eax],al
 0046CFFF    add         al,dl
 0046D001    or          dword ptr [eax+eax+18],edx
 0046D005    mov         dl,55
 0046D007    add         byte ptr [eax],al
 0046D009    add         byte ptr [eax],al
 0046D00B    add         byte ptr [ebp-75],dl
*}
end;

Initialization
//0046D18C
{*
 0046D18C    push        ebp
 0046D18D    mov         ebp,esp
 0046D18F    xor         eax,eax
 0046D191    push        ebp
 0046D192    push        46D1F4
 0046D197    push        dword ptr fs:[eax]
 0046D19A    mov         dword ptr fs:[eax],esp
 0046D19D    sub         dword ptr ds:[55DA14],1
>0046D1A4    jae         0046D1E6
 0046D1A6    mov         eax,46CD3C;_NF__C58
 0046D1AB    call        @InitResStringImports
 0046D1B0    mov         eax,46CE28;_NF__C59
 0046D1B5    call        @InitImports
 0046D1BA    cmp         byte ptr ds:[55C661],0;gvar_0055C661
>0046D1C1    je          0046D1D2
 0046D1C3    mov         eax,54099C;gvar_0054099C
 0046D1C8    mov         edx,46D208;'0x'
 0046D1CD    call        @LStrAsg
 0046D1D2    call        0046B2B4
 0046D1D7    call        0046B3C0
 0046D1DC    call        0046C580
 0046D1E1    call        0046BF48
 0046D1E6    xor         eax,eax
 0046D1E8    pop         edx
 0046D1E9    pop         ecx
 0046D1EA    pop         ecx
 0046D1EB    mov         dword ptr fs:[eax],edx
 0046D1EE    push        46D1FB
 0046D1F3    ret
>0046D1F4    jmp         @HandleFinally
>0046D1F9    jmp         0046D1F3
 0046D1FB    pop         ebp
 0046D1FC    ret
*}
Finalization
//0046D00C
{*
 0046D00C    push        ebp
 0046D00D    mov         ebp,esp
 0046D00F    xor         eax,eax
 0046D011    push        ebp
 0046D012    push        46D181
 0046D017    push        dword ptr fs:[eax]
 0046D01A    mov         dword ptr fs:[eax],esp
 0046D01D    inc         dword ptr ds:[55DA14]
>0046D023    jne         0046D173
 0046D029    mov         eax,55DA20;gvar_0055DA20:void 
 0046D02E    call        FreeAndNil
 0046D033    call        0046C54C
 0046D038    call        0046B33C
 0046D03D    mov         eax,540ACC;gvar_00540ACC:array[22] of ?
 0046D042    mov         ecx,16
 0046D047    mov         edx,dword ptr ds:[46AD3C];TExceptRec
 0046D04D    call        @FinalizeArray
 0046D052    mov         eax,540A94;gvar_00540A94:array[7] of ?
 0046D057    mov         ecx,7
 0046D05C    mov         edx,dword ptr ds:[46AC98];TErrorRec
 0046D062    call        @FinalizeArray
 0046D067    mov         eax,5409A8;gvar_005409A8:array[2] of ?
 0046D06C    mov         ecx,2
 0046D071    mov         edx,dword ptr ds:[4010AC];String
 0046D077    call        @FinalizeArray
 0046D07C    mov         eax,54099C;gvar_0054099C
 0046D081    call        @LStrClr
 0046D086    mov         eax,55DA10;gvar_0055DA10:?
 0046D08B    mov         edx,dword ptr ds:[465EFC];_DynArr_32_84
 0046D091    call        @DynArrayClear
 0046D096    mov         eax,55DA0C;gvar_0055DA0C:?
 0046D09B    mov         edx,dword ptr ds:[465ED8];_DynArr_32_74
 0046D0A1    call        @DynArrayClear
 0046D0A6    mov         eax,55D9D4;gvar_0055D9D4:array[7] of ?
 0046D0AB    mov         ecx,7
 0046D0B0    mov         edx,dword ptr ds:[4010AC];String
 0046D0B6    call        @FinalizeArray
 0046D0BB    mov         eax,55D9A8;gvar_0055D9A8:array[7] of ?
 0046D0C0    mov         ecx,7
 0046D0C5    mov         edx,dword ptr ds:[4010AC];String
 0046D0CB    call        @FinalizeArray
 0046D0D0    mov         eax,55D98C;gvar_0055D98C:array[7] of ?
 0046D0D5    mov         ecx,7
 0046D0DA    mov         edx,dword ptr ds:[4010AC];String
 0046D0E0    call        @FinalizeArray
 0046D0E5    mov         eax,55D95C;gvar_0055D95C:array[12] of ?
 0046D0EA    mov         ecx,0C
 0046D0EF    mov         edx,dword ptr ds:[4010AC];String
 0046D0F5    call        @FinalizeArray
 0046D0FA    mov         eax,55D92C;gvar_0055D92C:array[12] of ?
 0046D0FF    mov         ecx,0C
 0046D104    mov         edx,dword ptr ds:[4010AC];String
 0046D10A    call        @FinalizeArray
 0046D10F    mov         eax,55D928;gvar_0055D928:AnsiString
 0046D114    call        @LStrClr
 0046D119    mov         eax,55D924;gvar_0055D924:AnsiString
 0046D11E    call        @LStrClr
 0046D123    mov         eax,55D920;gvar_0055D920:AnsiString
 0046D128    call        @LStrClr
 0046D12D    mov         eax,55D91C;gvar_0055D91C:AnsiString
 0046D132    call        @LStrClr
 0046D137    mov         eax,55D914;gvar_0055D914:AnsiString
 0046D13C    call        @LStrClr
 0046D141    mov         eax,55D910;gvar_0055D910:AnsiString
 0046D146    call        @LStrClr
 0046D14B    mov         eax,55D904;gvar_0055D904:AnsiString
 0046D150    call        @LStrClr
 0046D155    mov         eax,540944
 0046D15A    call        @LStrClr
 0046D15F    mov         eax,540930
 0046D164    call        @WStrClr
 0046D169    mov         eax,54092C
 0046D16E    call        @LStrClr
 0046D173    xor         eax,eax
 0046D175    pop         edx
 0046D176    pop         ecx
 0046D177    pop         ecx
 0046D178    mov         dword ptr fs:[eax],edx
 0046D17B    push        46D188
 0046D180    ret
>0046D181    jmp         @HandleFinally
>0046D186    jmp         0046D180
 0046D188    pop         ebp
 0046D189    ret
*}
end.