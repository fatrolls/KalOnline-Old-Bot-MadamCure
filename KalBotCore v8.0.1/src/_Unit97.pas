//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit97;

interface

uses
  SysUtils, Classes, MainUnit;

type
  TSinglePlace = TSinglePlace = record//size=14
f10:String;//f10
end;;
  TDynPlacesArray = array of TSinglePlace;
//elSize = 14;
  TFastWalkLocationsList = class(TObject)
  public
    f4:TDynPlacesArray;//f4
    constructor Create;//00530458
  end;
  TAutoFastWalking = class(TThread)
  public
    f40:dword;//f40
    f44:dword;//f44
    f4C:byte;//f4C
    f4D:byte;//f4D
    f50:TSinglePlace;//f50
    f6C:byte;//f6C
    f70:dword;//f70
    f72:word;//f72
    f74:TMainForm;//f74
    destructor Destroy; virtual;//0052FFF0
    procedure Execute; virtual;//v4//00530024
    //constructor Create(?:?; ?:?; ?:?);//0052FF7C
  end;
    //procedure sub_0052FE64(?:?; ?:?);//0052FE64
    destructor Destroy;//0052FFF0
    procedure Execute;//00530024
    //function sub_00530118(?:TAutoFastWalking):?;//00530118
    //procedure sub_00530318(?:TAutoFastWalking; ?:?);//00530318
    //procedure sub_00530388(?:TFastWalkLocationsList; ?:?);//00530388
    //procedure sub_00530430(?:?);//00530430
    //procedure sub_005304EC(?:TFastWalkLocationsList; ?:?; ?:?);//005304EC
    //function sub_0053051C(?:TFastWalkLocationsList; ?:TStrings):?;//0053051C
    //function sub_00530640(?:TFastWalkLocationsList):?;//00530640
    //function sub_0053076C(?:TFastWalkLocationsList):?;//0053076C
    //function sub_00530908(?:TFastWalkLocationsList; ?:?):?;//00530908

implementation

//0052FE64
{*procedure sub_0052FE64(?:?; ?:?);
begin
 0052FE64    push        ebp
 0052FE65    mov         ebp,esp
 0052FE67    xor         ecx,ecx
 0052FE69    push        ecx
 0052FE6A    push        ecx
 0052FE6B    push        ecx
 0052FE6C    push        ecx
 0052FE6D    push        ecx
 0052FE6E    push        ecx
 0052FE6F    push        ecx
 0052FE70    push        ecx
 0052FE71    push        ebx
 0052FE72    mov         dword ptr [ebp-8],edx
 0052FE75    mov         dword ptr [ebp-4],eax
 0052FE78    mov         eax,dword ptr [ebp-4]
 0052FE7B    call        @LStrAddRef
 0052FE80    xor         eax,eax
 0052FE82    push        ebp
 0052FE83    push        52FF6F
 0052FE88    push        dword ptr fs:[eax]
 0052FE8B    mov         dword ptr fs:[eax],esp
 0052FE8E    mov         dl,1
 0052FE90    mov         eax,[00476078];TStringList
 0052FE95    call        TObject.Create;TStringList.Create
 0052FE9A    mov         dword ptr [ebp-0C],eax
 0052FE9D    mov         dl,2C
 0052FE9F    mov         eax,dword ptr [ebp-0C]
 0052FEA2    call        0047B23C
 0052FEA7    mov         edx,dword ptr [ebp-4]
 0052FEAA    mov         eax,dword ptr [ebp-0C]
 0052FEAD    call        0047B06C
 0052FEB2    lea         ecx,[ebp-10]
 0052FEB5    xor         edx,edx
 0052FEB7    mov         eax,dword ptr [ebp-0C]
 0052FEBA    mov         ebx,dword ptr [eax]
 0052FEBC    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 0052FEBF    mov         eax,dword ptr [ebp-10]
 0052FEC2    call        StrToInt
 0052FEC7    mov         edx,dword ptr [ebp-8]
 0052FECA    mov         byte ptr [edx],al
 0052FECC    lea         ecx,[ebp-14]
 0052FECF    mov         edx,1
 0052FED4    mov         eax,dword ptr [ebp-0C]
 0052FED7    mov         ebx,dword ptr [eax]
 0052FED9    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 0052FEDC    mov         eax,dword ptr [ebp-14]
 0052FEDF    call        StrToInt
 0052FEE4    mov         edx,dword ptr [ebp-8]
 0052FEE7    mov         dword ptr [edx+4],eax
 0052FEEA    lea         ecx,[ebp-18]
 0052FEED    mov         edx,2
 0052FEF2    mov         eax,dword ptr [ebp-0C]
 0052FEF5    mov         ebx,dword ptr [eax]
 0052FEF7    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 0052FEFA    mov         eax,dword ptr [ebp-18]
 0052FEFD    call        StrToInt
 0052FF02    mov         edx,dword ptr [ebp-8]
 0052FF05    mov         dword ptr [edx+8],eax
 0052FF08    lea         ecx,[ebp-1C]
 0052FF0B    mov         edx,3
 0052FF10    mov         eax,dword ptr [ebp-0C]
 0052FF13    mov         ebx,dword ptr [eax]
 0052FF15    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 0052FF18    mov         eax,dword ptr [ebp-1C]
 0052FF1B    call        StrToInt
 0052FF20    mov         edx,dword ptr [ebp-8]
 0052FF23    mov         dword ptr [edx+0C],eax
 0052FF26    lea         ecx,[ebp-20]
 0052FF29    mov         edx,4
 0052FF2E    mov         eax,dword ptr [ebp-0C]
 0052FF31    mov         ebx,dword ptr [eax]
 0052FF33    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 0052FF36    mov         edx,dword ptr [ebp-20]
 0052FF39    mov         eax,dword ptr [ebp-8]
 0052FF3C    add         eax,10
 0052FF3F    call        @LStrAsg
 0052FF44    mov         eax,dword ptr [ebp-0C]
 0052FF47    call        TObject.Free
 0052FF4C    xor         eax,eax
 0052FF4E    pop         edx
 0052FF4F    pop         ecx
 0052FF50    pop         ecx
 0052FF51    mov         dword ptr fs:[eax],edx
 0052FF54    push        52FF76
 0052FF59    lea         eax,[ebp-20]
 0052FF5C    mov         edx,5
 0052FF61    call        @LStrArrayClr
 0052FF66    lea         eax,[ebp-4]
 0052FF69    call        @LStrClr
 0052FF6E    ret
>0052FF6F    jmp         @HandleFinally
>0052FF74    jmp         0052FF59
 0052FF76    pop         ebx
 0052FF77    mov         esp,ebp
 0052FF79    pop         ebp
 0052FF7A    ret
end;*}

//0052FF7C
{*constructor TAutoFastWalking.Create(?:?; ?:?; ?:?);
begin
 0052FF7C    push        ebp
 0052FF7D    mov         ebp,esp
 0052FF7F    add         esp,0FFFFFFF4
 0052FF82    test        dl,dl
>0052FF84    je          0052FF8E
 0052FF86    add         esp,0FFFFFFF0
 0052FF89    call        @ClassCreate
 0052FF8E    mov         dword ptr [ebp-0C],ecx
 0052FF91    mov         byte ptr [ebp-5],dl
 0052FF94    mov         dword ptr [ebp-4],eax
 0052FF97    mov         cl,1
 0052FF99    xor         edx,edx
 0052FF9B    mov         eax,dword ptr [ebp-4]
 0052FF9E    call        00482974
 0052FFA3    mov         eax,dword ptr [ebp-4]
 0052FFA6    mov         edx,dword ptr [ebp-0C]
 0052FFA9    mov         dword ptr [eax+40],edx
 0052FFAC    mov         eax,dword ptr [ebp-4]
 0052FFAF    mov         edx,dword ptr [ebp+10]
 0052FFB2    mov         dword ptr [eax+44],edx
 0052FFB5    mov         eax,dword ptr [ebp-4]
 0052FFB8    mov         edx,dword ptr [ebp+0C]
 0052FFBB    mov         dword ptr [eax+48],edx
 0052FFBE    mov         eax,dword ptr [ebp-4]
 0052FFC1    mov         byte ptr [eax+4D],0
 0052FFC5    mov         eax,dword ptr [ebp-4]
 0052FFC8    mov         dl,byte ptr [ebp+8]
 0052FFCB    mov         byte ptr [eax+4C],dl
 0052FFCE    mov         eax,dword ptr [ebp-4]
 0052FFD1    cmp         byte ptr [ebp-5],0
>0052FFD5    je          0052FFE6
 0052FFD7    call        @AfterConstruction
 0052FFDC    pop         dword ptr fs:[0]
 0052FFE3    add         esp,0C
 0052FFE6    mov         eax,dword ptr [ebp-4]
 0052FFE9    mov         esp,ebp
 0052FFEB    pop         ebp
 0052FFEC    ret         0C
end;*}

//0052FFF0
destructor TAutoFastWalking.Destroy;
begin
{*
 0052FFF0    push        ebp
 0052FFF1    mov         ebp,esp
 0052FFF3    add         esp,0FFFFFFF8
 0052FFF6    call        @BeforeDestruction
 0052FFFB    mov         byte ptr [ebp-5],dl
 0052FFFE    mov         dword ptr [ebp-4],eax
 00530001    mov         dl,byte ptr [ebp-5]
 00530004    and         dl,0FC
 00530007    mov         eax,dword ptr [ebp-4]
 0053000A    call        TThread.Destroy
 0053000F    cmp         byte ptr [ebp-5],0
>00530013    jle         0053001D
 00530015    mov         eax,dword ptr [ebp-4]
 00530018    call        @ClassDestroy
 0053001D    pop         ecx
 0053001E    pop         ecx
 0053001F    pop         ebp
 00530020    ret
*}
end;

//00530024
procedure TAutoFastWalking.Execute;
begin
{*
 00530024    push        ebp
 00530025    mov         ebp,esp
 00530027    add         esp,0FFFFFFF4
 0053002A    mov         dword ptr [ebp-4],eax
 0053002D    mov         eax,dword ptr [ebp-4]
 00530030    mov         byte ptr [eax+0F],1;TAutoFastWalking.FFreeOnTerminate:Boolean
 00530034    mov         eax,dword ptr [ebp-4]
 00530037    mov         byte ptr [eax+6C],0;TAutoFastWalking.?f6C:byte
 0053003B    mov         eax,dword ptr [ebp-4]
 0053003E    mov         byte ptr [eax+4D],1;TAutoFastWalking.?f4D:byte
 00530042    mov         eax,dword ptr [ebp-4]
 00530045    mov         eax,dword ptr [eax+44];TAutoFastWalking.?f44:dword
 00530048    mov         eax,dword ptr [eax+40]
 0053004B    add         eax,0C
 0053004E    mov         edx,dword ptr [ebp-4]
 00530051    add         edx,50;TAutoFastWalking.?f50:TSinglePlace
 00530054    call        0051F64C
 00530059    call        @ROUND
 0053005E    mov         edx,dword ptr [ebp-4]
 00530061    mov         dword ptr [edx+64],eax
 00530064    mov         eax,dword ptr [ebp-4]
 00530067    xor         edx,edx
 00530069    mov         dword ptr [eax+68],edx
 0053006C    xor         eax,eax
 0053006E    mov         dword ptr [ebp-0C],eax
 00530071    mov         eax,dword ptr [ebp-4]
 00530074    mov         eax,dword ptr [eax+64]
 00530077    mov         ecx,64
 0053007C    cdq
 0053007D    idiv        eax,ecx
 0053007F    mov         dword ptr [ebp-8],eax
>00530082    jmp         005300D6
 00530084    mov         eax,dword ptr [ebp-4]
 00530087    call        00530118
 0053008C    mov         edx,dword ptr [ebp-4]
 0053008F    mov         edx,dword ptr [edx+64]
 00530092    sub         edx,eax
 00530094    mov         eax,dword ptr [ebp-4]
 00530097    mov         dword ptr [eax+68],edx
 0053009A    mov         eax,dword ptr [ebp-4]
 0053009D    mov         eax,dword ptr [eax+68]
 005300A0    cmp         eax,dword ptr [ebp-0C]
>005300A3    jle         005300C6
 005300A5    mov         eax,dword ptr [ebp-8]
 005300A8    add         dword ptr [ebp-0C],eax
 005300AB    mov         eax,dword ptr [ebp-4]
 005300AE    cmp         word ptr [eax+72],0;TAutoFastWalking.?f72:word
>005300B3    je          005300C6
 005300B5    mov         eax,dword ptr [ebp-4]
 005300B8    push        eax
 005300B9    push        5302F0
 005300BE    mov         eax,dword ptr [ebp-4]
 005300C1    call        00482D80
 005300C6    push        14
 005300C8    call        kernel32.Sleep
 005300CD    mov         eax,dword ptr [ebp-4]
 005300D0    cmp         byte ptr [eax+4D],0;TAutoFastWalking.?f4D:byte
>005300D4    je          005300DF
 005300D6    mov         eax,dword ptr [ebp-4]
 005300D9    cmp         byte ptr [eax+0D],0;TAutoFastWalking.FTerminated:Boolean
>005300DD    je          00530084
 005300DF    mov         eax,dword ptr [ebp-4]
 005300E2    cmp         byte ptr [eax+0D],0;TAutoFastWalking.FTerminated:Boolean
>005300E6    je          005300F6
 005300E8    mov         eax,dword ptr [ebp-4]
 005300EB    mov         byte ptr [eax+4D],0;TAutoFastWalking.?f4D:byte
 005300EF    mov         eax,dword ptr [ebp-4]
 005300F2    mov         byte ptr [eax+6C],3;TAutoFastWalking.?f6C:byte
 005300F6    mov         eax,dword ptr [ebp-4]
 005300F9    cmp         word ptr [eax+72],0;TAutoFastWalking.?f72:word
>005300FE    je          00530111
 00530100    mov         eax,dword ptr [ebp-4]
 00530103    push        eax
 00530104    push        5302F0
 00530109    mov         eax,dword ptr [ebp-4]
 0053010C    call        00482D80
 00530111    mov         esp,ebp
 00530113    pop         ebp
 00530114    ret
*}
end;

//00530118
{*function sub_00530118(?:TAutoFastWalking):?;
begin
 00530118    push        ebp
 00530119    mov         ebp,esp
 0053011B    add         esp,0FFFFFFBC
 0053011E    push        esi
 0053011F    push        edi
 00530120    xor         edx,edx
 00530122    mov         dword ptr [ebp-0C],edx
 00530125    mov         dword ptr [ebp-4],eax
 00530128    xor         eax,eax
 0053012A    push        ebp
 0053012B    push        5302DE
 00530130    push        dword ptr fs:[eax]
 00530133    mov         dword ptr fs:[eax],esp
 00530136    mov         eax,dword ptr [ebp-4]
 00530139    mov         eax,dword ptr [eax+44];TAutoFastWalking.?f44:dword
 0053013C    mov         eax,dword ptr [eax+40]
 0053013F    lea         esi,[eax+0C]
 00530142    lea         edi,[ebp-40]
 00530145    movs        dword ptr [edi],dword ptr [esi]
 00530146    movs        dword ptr [edi],dword ptr [esi]
 00530147    movs        dword ptr [edi],dword ptr [esi]
 00530148    movs        dword ptr [edi],dword ptr [esi]
 00530149    mov         eax,dword ptr [ebp-4]
 0053014C    lea         edx,[eax+50];TAutoFastWalking.?f50:TSinglePlace
 0053014F    lea         eax,[ebp-40]
 00530152    call        0051F64C
 00530157    fstp        tbyte ptr [ebp-18]
 0053015A    wait
 0053015B    mov         eax,dword ptr [ebp-4]
 0053015E    movzx       eax,byte ptr [eax+4C];TAutoFastWalking.?f4C:byte
 00530162    mov         dword ptr [ebp-44],eax
 00530165    fild        dword ptr [ebp-44]
 00530168    fld         tbyte ptr [ebp-18]
 0053016B    fcompp
 0053016D    fnstsw      al
 0053016F    sahf
>00530170    jbe         00530219
 00530176    mov         eax,dword ptr [ebp-4]
 00530179    movzx       eax,byte ptr [eax+4C];TAutoFastWalking.?f4C:byte
 0053017D    mov         dword ptr [ebp-44],eax
 00530180    fild        dword ptr [ebp-44]
 00530183    fld         tbyte ptr [ebp-18]
 00530186    fdivp       st(1),st
 00530188    fstp        tbyte ptr [ebp-28]
 0053018B    wait
 0053018C    mov         eax,dword ptr [ebp-4]
 0053018F    mov         eax,dword ptr [eax+54]
 00530192    sub         eax,dword ptr [ebp-3C]
 00530195    mov         dword ptr [ebp-44],eax
 00530198    fild        dword ptr [ebp-44]
 0053019B    fld         tbyte ptr [ebp-28]
 0053019E    fmulp       st(1),st
 005301A0    call        @ROUND
 005301A5    mov         byte ptr [ebp-29],al
 005301A8    mov         eax,dword ptr [ebp-4]
 005301AB    mov         eax,dword ptr [eax+58]
 005301AE    sub         eax,dword ptr [ebp-38]
 005301B1    mov         dword ptr [ebp-44],eax
 005301B4    fild        dword ptr [ebp-44]
 005301B7    fld         tbyte ptr [ebp-28]
 005301BA    fmulp       st(1),st
 005301BC    call        @ROUND
 005301C1    mov         byte ptr [ebp-2A],al
 005301C4    mov         eax,dword ptr [ebp-4]
 005301C7    mov         eax,dword ptr [eax+5C]
 005301CA    sub         eax,dword ptr [ebp-34]
 005301CD    mov         dword ptr [ebp-44],eax
 005301D0    fild        dword ptr [ebp-44]
 005301D3    fld         tbyte ptr [ebp-28]
 005301D6    fmulp       st(1),st
 005301D8    call        @ROUND
 005301DD    mov         dword ptr [ebp-30],eax
 005301E0    cmp         dword ptr [ebp-30],0FFFFFFBF
>005301E4    jl          005301EC
 005301E6    cmp         dword ptr [ebp-30],41
>005301EA    jle         005301F1
 005301EC    xor         eax,eax
 005301EE    mov         dword ptr [ebp-30],eax
 005301F1    push        0
 005301F3    lea         eax,[ebp-0C]
 005301F6    push        eax
 005301F7    mov         cl,byte ptr [ebp-30]
 005301FA    mov         dl,byte ptr [ebp-2A]
 005301FD    mov         al,byte ptr [ebp-29]
 00530200    call        00521568
 00530205    mov         eax,dword ptr [ebp-4]
 00530208    mov         byte ptr [eax+6C],1;TAutoFastWalking.?f6C:byte
 0053020C    fld         tbyte ptr [ebp-18]
 0053020F    call        @ROUND
 00530214    mov         dword ptr [ebp-8],eax
>00530217    jmp         0053027B
 00530219    mov         eax,dword ptr [ebp-4]
 0053021C    mov         al,byte ptr [eax+54]
 0053021F    sub         al,byte ptr [ebp-3C]
 00530222    mov         byte ptr [ebp-29],al
 00530225    mov         eax,dword ptr [ebp-4]
 00530228    mov         al,byte ptr [eax+58]
 0053022B    sub         al,byte ptr [ebp-38]
 0053022E    mov         byte ptr [ebp-2A],al
 00530231    mov         eax,dword ptr [ebp-4]
 00530234    mov         eax,dword ptr [eax+5C]
 00530237    sub         eax,dword ptr [ebp-34]
 0053023A    mov         dword ptr [ebp-30],eax
 0053023D    cmp         dword ptr [ebp-30],0FFFFFFBF
>00530241    jl          00530249
 00530243    cmp         dword ptr [ebp-30],41
>00530247    jle         0053024E
 00530249    xor         eax,eax
 0053024B    mov         dword ptr [ebp-30],eax
 0053024E    push        1
 00530250    lea         eax,[ebp-0C]
 00530253    push        eax
 00530254    mov         cl,byte ptr [ebp-30]
 00530257    mov         dl,byte ptr [ebp-2A]
 0053025A    mov         al,byte ptr [ebp-29]
 0053025D    call        00521568
 00530262    mov         eax,dword ptr [ebp-4]
 00530265    mov         byte ptr [eax+4D],0;TAutoFastWalking.?f4D:byte
 00530269    mov         eax,dword ptr [ebp-4]
 0053026C    mov         byte ptr [eax+6C],2;TAutoFastWalking.?f6C:byte
 00530270    fld         tbyte ptr [ebp-18]
 00530273    call        @ROUND
 00530278    mov         dword ptr [ebp-8],eax
 0053027B    movsx       eax,byte ptr [ebp-29]
 0053027F    mov         edx,dword ptr [ebp-4]
 00530282    mov         edx,dword ptr [edx+44];TAutoFastWalking.?f44:dword
 00530285    mov         edx,dword ptr [edx+40]
 00530288    add         dword ptr [edx+10],eax
 0053028B    movsx       eax,byte ptr [ebp-2A]
 0053028F    mov         edx,dword ptr [ebp-4]
 00530292    mov         edx,dword ptr [edx+44];TAutoFastWalking.?f44:dword
 00530295    mov         edx,dword ptr [edx+40]
 00530298    add         dword ptr [edx+14],eax
 0053029B    mov         eax,dword ptr [ebp-4]
 0053029E    mov         eax,dword ptr [eax+44];TAutoFastWalking.?f44:dword
 005302A1    mov         eax,dword ptr [eax+40]
 005302A4    mov         edx,dword ptr [ebp-30]
 005302A7    add         dword ptr [eax+18],edx
 005302AA    mov         eax,dword ptr [ebp-0C]
 005302AD    call        @LStrLen
 005302B2    mov         ecx,eax
 005302B4    mov         edx,dword ptr [ebp-0C]
 005302B7    mov         eax,dword ptr [ebp-4]
 005302BA    mov         eax,dword ptr [eax+40];TAutoFastWalking.?f40:dword
 005302BD    call        0051FDFC
 005302C2    xor         eax,eax
 005302C4    pop         edx
 005302C5    pop         ecx
 005302C6    pop         ecx
 005302C7    mov         dword ptr fs:[eax],edx
 005302CA    push        5302E5
 005302CF    lea         eax,[ebp-0C]
 005302D2    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 005302D8    call        @DynArrayClear
 005302DD    ret
>005302DE    jmp         @HandleFinally
>005302E3    jmp         005302CF
 005302E5    mov         eax,dword ptr [ebp-8]
 005302E8    pop         edi
 005302E9    pop         esi
 005302EA    mov         esp,ebp
 005302EC    pop         ebp
 005302ED    ret
end;*}

//00530318
{*procedure sub_00530318(?:TAutoFastWalking; ?:?);
begin
 00530318    push        ebp
 00530319    mov         ebp,esp
 0053031B    add         esp,0FFFFFFE8
 0053031E    push        esi
 0053031F    push        edi
 00530320    mov         esi,edx
 00530322    lea         edi,[ebp-18]
 00530325    movs        dword ptr [edi],dword ptr [esi]
 00530326    movs        dword ptr [edi],dword ptr [esi]
 00530327    movs        dword ptr [edi],dword ptr [esi]
 00530328    movs        dword ptr [edi],dword ptr [esi]
 00530329    movs        dword ptr [edi],dword ptr [esi]
 0053032A    mov         dword ptr [ebp-4],eax
 0053032D    lea         eax,[ebp-18]
 00530330    mov         edx,dword ptr ds:[52FD08];TSinglePlace
 00530336    call        @InitializeRecord
 0053033B    xor         eax,eax
 0053033D    push        ebp
 0053033E    push        530379
 00530343    push        dword ptr fs:[eax]
 00530346    mov         dword ptr fs:[eax],esp
 00530349    mov         eax,dword ptr [ebp-4]
 0053034C    add         eax,50
 0053034F    lea         edx,[ebp-18]
 00530352    mov         ecx,dword ptr ds:[52FD08];TSinglePlace
 00530358    call        @CopyRecord
 0053035D    xor         eax,eax
 0053035F    pop         edx
 00530360    pop         ecx
 00530361    pop         ecx
 00530362    mov         dword ptr fs:[eax],edx
 00530365    push        530380
 0053036A    lea         eax,[ebp-18]
 0053036D    mov         edx,dword ptr ds:[52FD08];TSinglePlace
 00530373    call        @FinalizeRecord
 00530378    ret
>00530379    jmp         @HandleFinally
>0053037E    jmp         0053036A
 00530380    pop         edi
 00530381    pop         esi
 00530382    mov         esp,ebp
 00530384    pop         ebp
 00530385    ret
end;*}

//00530388
{*procedure sub_00530388(?:TFastWalkLocationsList; ?:?);
begin
 00530388    push        ebp
 00530389    mov         ebp,esp
 0053038B    add         esp,0FFFFFFE8
 0053038E    push        esi
 0053038F    push        edi
 00530390    mov         esi,edx
 00530392    lea         edi,[ebp-18]
 00530395    movs        dword ptr [edi],dword ptr [esi]
 00530396    movs        dword ptr [edi],dword ptr [esi]
 00530397    movs        dword ptr [edi],dword ptr [esi]
 00530398    movs        dword ptr [edi],dword ptr [esi]
 00530399    movs        dword ptr [edi],dword ptr [esi]
 0053039A    mov         dword ptr [ebp-4],eax
 0053039D    lea         eax,[ebp-18]
 005303A0    mov         edx,dword ptr ds:[52FD08];TSinglePlace
 005303A6    call        @InitializeRecord
 005303AB    xor         eax,eax
 005303AD    push        ebp
 005303AE    push        530420
 005303B3    push        dword ptr fs:[eax]
 005303B6    mov         dword ptr fs:[eax],esp
 005303B9    mov         eax,dword ptr [ebp-4]
 005303BC    mov         eax,dword ptr [eax+4]
 005303BF    call        @LStrLen
 005303C4    inc         eax
 005303C5    push        eax
 005303C6    mov         eax,dword ptr [ebp-4]
 005303C9    add         eax,4
 005303CC    mov         ecx,1
 005303D1    mov         edx,dword ptr ds:[52FD2C];TDynPlacesArray
 005303D7    call        @DynArraySetLength
 005303DC    add         esp,4
 005303DF    mov         eax,dword ptr [ebp-4]
 005303E2    mov         eax,dword ptr [eax+4]
 005303E5    call        00405CE8
 005303EA    lea         eax,[eax+eax*4]
 005303ED    mov         edx,dword ptr [ebp-4]
 005303F0    mov         edx,dword ptr [edx+4]
 005303F3    lea         eax,[edx+eax*4]
 005303F6    lea         edx,[ebp-18]
 005303F9    mov         ecx,dword ptr ds:[52FD08];TSinglePlace
 005303FF    call        @CopyRecord
 00530404    xor         eax,eax
 00530406    pop         edx
 00530407    pop         ecx
 00530408    pop         ecx
 00530409    mov         dword ptr fs:[eax],edx
 0053040C    push        530427
 00530411    lea         eax,[ebp-18]
 00530414    mov         edx,dword ptr ds:[52FD08];TSinglePlace
 0053041A    call        @FinalizeRecord
 0053041F    ret
>00530420    jmp         @HandleFinally
>00530425    jmp         00530411
 00530427    pop         edi
 00530428    pop         esi
 00530429    mov         esp,ebp
 0053042B    pop         ebp
 0053042C    ret
end;*}

//00530430
{*procedure sub_00530430(?:?);
begin
 00530430    push        ebp
 00530431    mov         ebp,esp
 00530433    push        ecx
 00530434    mov         dword ptr [ebp-4],eax
 00530437    push        0
 00530439    mov         eax,dword ptr [ebp-4]
 0053043C    add         eax,4
 0053043F    mov         ecx,1
 00530444    mov         edx,dword ptr ds:[52FD2C];TDynPlacesArray
 0053044A    call        @DynArraySetLength
 0053044F    add         esp,4
 00530452    pop         ecx
 00530453    pop         ebp
 00530454    ret
end;*}

//00530458
constructor TFastWalkLocationsList.Create;
begin
{*
 00530458    push        ebp
 00530459    mov         ebp,esp
 0053045B    add         esp,0FFFFFFF4
 0053045E    test        dl,dl
>00530460    je          0053046A
 00530462    add         esp,0FFFFFFF0
 00530465    call        @ClassCreate
 0053046A    mov         dword ptr [ebp-0C],ecx
 0053046D    mov         byte ptr [ebp-5],dl
 00530470    mov         dword ptr [ebp-4],eax
 00530473    xor         edx,edx
 00530475    mov         eax,dword ptr [ebp-4]
 00530478    call        TObject.Create
 0053047D    mov         eax,dword ptr [ebp-4]
 00530480    mov         edx,dword ptr [ebp-0C]
 00530483    mov         dword ptr [eax+8],edx
 00530486    mov         eax,dword ptr [ebp-4]
 00530489    call        00530430
 0053048E    mov         eax,dword ptr [ebp-4]
 00530491    cmp         byte ptr [ebp-5],0
>00530495    je          005304A6
 00530497    call        @AfterConstruction
 0053049C    pop         dword ptr fs:[0]
 005304A3    add         esp,0C
 005304A6    mov         eax,dword ptr [ebp-4]
 005304A9    mov         esp,ebp
 005304AB    pop         ebp
 005304AC    ret
*}
end;

//005304EC
{*procedure sub_005304EC(?:TFastWalkLocationsList; ?:?; ?:?);
begin
 005304EC    push        ebp
 005304ED    mov         ebp,esp
 005304EF    add         esp,0FFFFFFF4
 005304F2    mov         dword ptr [ebp-0C],ecx
 005304F5    mov         dword ptr [ebp-8],edx
 005304F8    mov         dword ptr [ebp-4],eax
 005304FB    mov         eax,dword ptr [ebp-0C]
 005304FE    mov         edx,dword ptr [ebp-8]
 00530501    lea         edx,[edx+edx*4]
 00530504    mov         ecx,dword ptr [ebp-4]
 00530507    mov         ecx,dword ptr [ecx+4]
 0053050A    lea         edx,[ecx+edx*4]
 0053050D    mov         ecx,dword ptr ds:[52FD08];TSinglePlace
 00530513    call        @CopyRecord
 00530518    mov         esp,ebp
 0053051A    pop         ebp
 0053051B    ret
end;*}

//0053051C
{*function sub_0053051C(?:TFastWalkLocationsList; ?:TStrings):?;
begin
 0053051C    push        ebp
 0053051D    mov         ebp,esp
 0053051F    add         esp,0FFFFFFC0
 00530522    xor         ecx,ecx
 00530524    mov         dword ptr [ebp-18],ecx
 00530527    mov         dword ptr [ebp-8],edx
 0053052A    mov         dword ptr [ebp-4],eax
 0053052D    xor         eax,eax
 0053052F    push        ebp
 00530530    push        530610
 00530535    push        dword ptr fs:[eax]
 00530538    mov         dword ptr fs:[eax],esp
 0053053B    mov         eax,dword ptr [ebp-4]
 0053053E    mov         eax,dword ptr [eax+4]
 00530541    call        @LStrLen
 00530546    dec         eax
 00530547    test        eax,eax
>00530549    jl          005305FA
 0053054F    inc         eax
 00530550    mov         dword ptr [ebp-14],eax
 00530553    mov         dword ptr [ebp-10],0
 0053055A    lea         eax,[ebp-18]
 0053055D    push        eax
 0053055E    mov         eax,dword ptr [ebp-10]
 00530561    lea         eax,[eax+eax*4]
 00530564    mov         edx,dword ptr [ebp-4]
 00530567    mov         edx,dword ptr [edx+4]
 0053056A    movzx       eax,byte ptr [edx+eax*4]
 0053056E    mov         dword ptr [ebp-40],eax
 00530571    mov         byte ptr [ebp-3C],0
 00530575    mov         eax,dword ptr [ebp-10]
 00530578    lea         eax,[eax+eax*4]
 0053057B    mov         edx,dword ptr [ebp-4]
 0053057E    mov         edx,dword ptr [edx+4]
 00530581    mov         eax,dword ptr [edx+eax*4+4]
 00530585    mov         dword ptr [ebp-38],eax
 00530588    mov         byte ptr [ebp-34],0
 0053058C    mov         eax,dword ptr [ebp-10]
 0053058F    lea         eax,[eax+eax*4]
 00530592    mov         edx,dword ptr [ebp-4]
 00530595    mov         edx,dword ptr [edx+4]
 00530598    mov         eax,dword ptr [edx+eax*4+8]
 0053059C    mov         dword ptr [ebp-30],eax
 0053059F    mov         byte ptr [ebp-2C],0
 005305A3    mov         eax,dword ptr [ebp-10]
 005305A6    lea         eax,[eax+eax*4]
 005305A9    mov         edx,dword ptr [ebp-4]
 005305AC    mov         edx,dword ptr [edx+4]
 005305AF    mov         eax,dword ptr [edx+eax*4+0C]
 005305B3    mov         dword ptr [ebp-28],eax
 005305B6    mov         byte ptr [ebp-24],0
 005305BA    mov         eax,dword ptr [ebp-10]
 005305BD    lea         eax,[eax+eax*4]
 005305C0    mov         edx,dword ptr [ebp-4]
 005305C3    mov         edx,dword ptr [edx+4]
 005305C6    mov         eax,dword ptr [edx+eax*4+10]
 005305CA    mov         dword ptr [ebp-20],eax
 005305CD    mov         byte ptr [ebp-1C],0B
 005305D1    lea         edx,[ebp-40]
 005305D4    mov         ecx,4
 005305D9    mov         eax,530628;'Map:%d [%d, %d, %d] %s'
 005305DE    call        Format
 005305E3    mov         edx,dword ptr [ebp-18]
 005305E6    mov         eax,dword ptr [ebp-8]
 005305E9    mov         ecx,dword ptr [eax]
 005305EB    call        dword ptr [ecx+38]
 005305EE    inc         dword ptr [ebp-10]
 005305F1    dec         dword ptr [ebp-14]
>005305F4    jne         0053055A
 005305FA    xor         eax,eax
 005305FC    pop         edx
 005305FD    pop         ecx
 005305FE    pop         ecx
 005305FF    mov         dword ptr fs:[eax],edx
 00530602    push        530617
 00530607    lea         eax,[ebp-18]
 0053060A    call        @LStrClr
 0053060F    ret
>00530610    jmp         @HandleFinally
>00530615    jmp         00530607
 00530617    mov         al,byte ptr [ebp-9]
 0053061A    mov         esp,ebp
 0053061C    pop         ebp
 0053061D    ret
end;*}

//00530640
{*function sub_00530640(?:TFastWalkLocationsList):?;
begin
 00530640    push        ebp
 00530641    mov         ebp,esp
 00530643    mov         ecx,6
 00530648    push        0
 0053064A    push        0
 0053064C    dec         ecx
>0053064D    jne         00530648
 0053064F    push        ecx
 00530650    push        ebx
 00530651    mov         dword ptr [ebp-4],eax
 00530654    xor         eax,eax
 00530656    push        ebp
 00530657    push        53075C
 0053065C    push        dword ptr fs:[eax]
 0053065F    mov         dword ptr fs:[eax],esp
 00530662    mov         byte ptr [ebp-5],0
 00530666    mov         eax,dword ptr [ebp-4]
 00530669    call        00530430
 0053066E    lea         edx,[ebp-18]
 00530671    mov         eax,52FE54;^gvar_0055C664
 00530676    call        LoadResString
 0053067B    mov         eax,dword ptr [ebp-18]
 0053067E    call        00466F78
 00530683    test        al,al
>00530685    je          0053072B
 0053068B    mov         dl,1
 0053068D    mov         eax,[00476078];TStringList
 00530692    call        TObject.Create;TStringList.Create
 00530697    mov         dword ptr [ebp-10],eax
 0053069A    xor         eax,eax
 0053069C    push        ebp
 0053069D    push        530724
 005306A2    push        dword ptr fs:[eax]
 005306A5    mov         dword ptr fs:[eax],esp
 005306A8    lea         edx,[ebp-1C]
 005306AB    mov         eax,52FE54;^gvar_0055C664
 005306B0    call        LoadResString
 005306B5    mov         edx,dword ptr [ebp-1C]
 005306B8    mov         eax,dword ptr [ebp-10]
 005306BB    mov         ecx,dword ptr [eax]
 005306BD    call        dword ptr [ecx+68];TStringList.sub_0047AAAC
 005306C0    mov         eax,dword ptr [ebp-10]
 005306C3    mov         edx,dword ptr [eax]
 005306C5    call        dword ptr [edx+14];TStringList.sub_0047B778
 005306C8    dec         eax
>005306C9    jle         0053070E
 005306CB    mov         eax,dword ptr [ebp-10]
 005306CE    mov         edx,dword ptr [eax]
 005306D0    call        dword ptr [edx+14];TStringList.sub_0047B778
 005306D3    dec         eax
 005306D4    test        eax,eax
>005306D6    jle         0053070E
 005306D8    mov         dword ptr [ebp-14],eax
 005306DB    mov         dword ptr [ebp-0C],1
 005306E2    lea         ecx,[ebp-34]
 005306E5    mov         edx,dword ptr [ebp-0C]
 005306E8    mov         eax,dword ptr [ebp-10]
 005306EB    mov         ebx,dword ptr [eax]
 005306ED    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 005306F0    mov         eax,dword ptr [ebp-34]
 005306F3    lea         edx,[ebp-30]
 005306F6    call        0052FE64
 005306FB    lea         edx,[ebp-30]
 005306FE    mov         eax,dword ptr [ebp-4]
 00530701    call        00530388
 00530706    inc         dword ptr [ebp-0C]
 00530709    dec         dword ptr [ebp-14]
>0053070C    jne         005306E2
 0053070E    xor         eax,eax
 00530710    pop         edx
 00530711    pop         ecx
 00530712    pop         ecx
 00530713    mov         dword ptr fs:[eax],edx
 00530716    push        53072B
 0053071B    mov         eax,dword ptr [ebp-10]
 0053071E    call        TObject.Free
 00530723    ret
>00530724    jmp         @HandleFinally
>00530729    jmp         0053071B
 0053072B    xor         eax,eax
 0053072D    pop         edx
 0053072E    pop         ecx
 0053072F    pop         ecx
 00530730    mov         dword ptr fs:[eax],edx
 00530733    push        530763
 00530738    lea         eax,[ebp-34]
 0053073B    call        @LStrClr
 00530740    lea         eax,[ebp-30]
 00530743    mov         edx,dword ptr ds:[52FD08];TSinglePlace
 00530749    call        @FinalizeRecord
 0053074E    lea         eax,[ebp-1C]
 00530751    mov         edx,2
 00530756    call        @LStrArrayClr
 0053075B    ret
>0053075C    jmp         @HandleFinally
>00530761    jmp         00530738
 00530763    mov         al,byte ptr [ebp-5]
 00530766    pop         ebx
 00530767    mov         esp,ebp
 00530769    pop         ebp
 0053076A    ret
end;*}

//0053076C
{*function sub_0053076C(?:TFastWalkLocationsList):?;
begin
 0053076C    push        ebp
 0053076D    mov         ebp,esp
 0053076F    add         esp,0FFFFFFB8
 00530772    xor         edx,edx
 00530774    mov         dword ptr [ebp-48],edx
 00530777    mov         dword ptr [ebp-1C],edx
 0053077A    mov         dword ptr [ebp-18],edx
 0053077D    mov         dword ptr [ebp-4],eax
 00530780    xor         eax,eax
 00530782    push        ebp
 00530783    push        5308DE
 00530788    push        dword ptr fs:[eax]
 0053078B    mov         dword ptr fs:[eax],esp
 0053078E    mov         byte ptr [ebp-5],0
 00530792    mov         dl,1
 00530794    mov         eax,[00476078];TStringList
 00530799    call        TObject.Create;TStringList.Create
 0053079E    mov         dword ptr [ebp-10],eax
 005307A1    xor         eax,eax
 005307A3    push        ebp
 005307A4    push        5308B4
 005307A9    push        dword ptr fs:[eax]
 005307AC    mov         dword ptr fs:[eax],esp
 005307AF    lea         edx,[ebp-18]
 005307B2    mov         eax,52FE5C;^gvar_0055C664
 005307B7    call        LoadResString
 005307BC    mov         edx,dword ptr [ebp-18]
 005307BF    mov         eax,dword ptr [ebp-10]
 005307C2    mov         ecx,dword ptr [eax]
 005307C4    call        dword ptr [ecx+38];TStringList.sub_0047B3A4
 005307C7    mov         eax,dword ptr [ebp-4]
 005307CA    mov         eax,dword ptr [eax+4]
 005307CD    call        @LStrLen
 005307D2    dec         eax
 005307D3    test        eax,eax
>005307D5    jl          00530886
 005307DB    inc         eax
 005307DC    mov         dword ptr [ebp-14],eax
 005307DF    mov         dword ptr [ebp-0C],0
 005307E6    lea         eax,[ebp-1C]
 005307E9    push        eax
 005307EA    mov         eax,dword ptr [ebp-0C]
 005307ED    lea         eax,[eax+eax*4]
 005307F0    mov         edx,dword ptr [ebp-4]
 005307F3    mov         edx,dword ptr [edx+4]
 005307F6    movzx       eax,byte ptr [edx+eax*4]
 005307FA    mov         dword ptr [ebp-44],eax
 005307FD    mov         byte ptr [ebp-40],0
 00530801    mov         eax,dword ptr [ebp-0C]
 00530804    lea         eax,[eax+eax*4]
 00530807    mov         edx,dword ptr [ebp-4]
 0053080A    mov         edx,dword ptr [edx+4]
 0053080D    mov         eax,dword ptr [edx+eax*4+4]
 00530811    mov         dword ptr [ebp-3C],eax
 00530814    mov         byte ptr [ebp-38],0
 00530818    mov         eax,dword ptr [ebp-0C]
 0053081B    lea         eax,[eax+eax*4]
 0053081E    mov         edx,dword ptr [ebp-4]
 00530821    mov         edx,dword ptr [edx+4]
 00530824    mov         eax,dword ptr [edx+eax*4+8]
 00530828    mov         dword ptr [ebp-34],eax
 0053082B    mov         byte ptr [ebp-30],0
 0053082F    mov         eax,dword ptr [ebp-0C]
 00530832    lea         eax,[eax+eax*4]
 00530835    mov         edx,dword ptr [ebp-4]
 00530838    mov         edx,dword ptr [edx+4]
 0053083B    mov         eax,dword ptr [edx+eax*4+0C]
 0053083F    mov         dword ptr [ebp-2C],eax
 00530842    mov         byte ptr [ebp-28],0
 00530846    mov         eax,dword ptr [ebp-0C]
 00530849    lea         eax,[eax+eax*4]
 0053084C    mov         edx,dword ptr [ebp-4]
 0053084F    mov         edx,dword ptr [edx+4]
 00530852    mov         eax,dword ptr [edx+eax*4+10]
 00530856    mov         dword ptr [ebp-24],eax
 00530859    mov         byte ptr [ebp-20],0B
 0053085D    lea         edx,[ebp-44]
 00530860    mov         ecx,4
 00530865    mov         eax,5308F4;'%d,%d,%d,%d,"%s"'
 0053086A    call        Format
 0053086F    mov         edx,dword ptr [ebp-1C]
 00530872    mov         eax,dword ptr [ebp-10]
 00530875    mov         ecx,dword ptr [eax]
 00530877    call        dword ptr [ecx+38];TStringList.sub_0047B3A4
 0053087A    inc         dword ptr [ebp-0C]
 0053087D    dec         dword ptr [ebp-14]
>00530880    jne         005307E6
 00530886    lea         edx,[ebp-48]
 00530889    mov         eax,52FE54;^gvar_0055C664
 0053088E    call        LoadResString
 00530893    mov         edx,dword ptr [ebp-48]
 00530896    mov         eax,dword ptr [ebp-10]
 00530899    mov         ecx,dword ptr [eax]
 0053089B    call        dword ptr [ecx+74];TStringList.sub_0047AD7C
 0053089E    xor         eax,eax
 005308A0    pop         edx
 005308A1    pop         ecx
 005308A2    pop         ecx
 005308A3    mov         dword ptr fs:[eax],edx
 005308A6    push        5308BB
 005308AB    mov         eax,dword ptr [ebp-10]
 005308AE    call        TObject.Free
 005308B3    ret
>005308B4    jmp         @HandleFinally
>005308B9    jmp         005308AB
 005308BB    xor         eax,eax
 005308BD    pop         edx
 005308BE    pop         ecx
 005308BF    pop         ecx
 005308C0    mov         dword ptr fs:[eax],edx
 005308C3    push        5308E5
 005308C8    lea         eax,[ebp-48]
 005308CB    call        @LStrClr
 005308D0    lea         eax,[ebp-1C]
 005308D3    mov         edx,2
 005308D8    call        @LStrArrayClr
 005308DD    ret
>005308DE    jmp         @HandleFinally
>005308E3    jmp         005308C8
 005308E5    mov         al,byte ptr [ebp-5]
 005308E8    mov         esp,ebp
 005308EA    pop         ebp
 005308EB    ret
end;*}

//00530908
{*function sub_00530908(?:TFastWalkLocationsList; ?:?):?;
begin
 00530908    push        ebp
 00530909    mov         ebp,esp
 0053090B    add         esp,0FFFFFFE8
 0053090E    mov         dword ptr [ebp-8],edx
 00530911    mov         dword ptr [ebp-4],eax
 00530914    mov         byte ptr [ebp-9],0
 00530918    mov         eax,dword ptr [ebp-4]
 0053091B    mov         eax,dword ptr [eax+4]
 0053091E    call        @LStrLen
 00530923    mov         dword ptr [ebp-14],eax
 00530926    mov         eax,dword ptr [ebp-8]
 00530929    cmp         eax,dword ptr [ebp-14]
>0053092C    jge         0053099B
 0053092E    cmp         dword ptr [ebp-8],0
>00530932    jle         0053099B
 00530934    mov         eax,dword ptr [ebp-8]
 00530937    mov         edx,dword ptr [ebp-14]
 0053093A    dec         edx
 0053093B    dec         edx
 0053093C    sub         edx,eax
>0053093E    jl          00530979
 00530940    inc         edx
 00530941    mov         dword ptr [ebp-18],edx
 00530944    mov         dword ptr [ebp-10],eax
 00530947    mov         eax,dword ptr [ebp-10]
 0053094A    lea         eax,[eax+eax*4]
 0053094D    mov         edx,dword ptr [ebp-4]
 00530950    mov         edx,dword ptr [edx+4]
 00530953    lea         eax,[edx+eax*4]
 00530956    mov         edx,dword ptr [ebp-10]
 00530959    lea         edx,[edx+edx*4]
 0053095C    mov         ecx,dword ptr [ebp-4]
 0053095F    mov         ecx,dword ptr [ecx+4]
 00530962    lea         edx,[ecx+edx*4+14]
 00530966    mov         ecx,dword ptr ds:[52FD08];TSinglePlace
 0053096C    call        @CopyRecord
 00530971    inc         dword ptr [ebp-10]
 00530974    dec         dword ptr [ebp-18]
>00530977    jne         00530947
 00530979    mov         eax,dword ptr [ebp-14]
 0053097C    dec         eax
 0053097D    push        eax
 0053097E    mov         eax,dword ptr [ebp-4]
 00530981    add         eax,4
 00530984    mov         ecx,1
 00530989    mov         edx,dword ptr ds:[52FD2C];TDynPlacesArray
 0053098F    call        @DynArraySetLength
 00530994    add         esp,4
 00530997    mov         byte ptr [ebp-9],1
 0053099B    mov         al,byte ptr [ebp-9]
 0053099E    mov         esp,ebp
 005309A0    pop         ebp
 005309A1    ret
end;*}

end.