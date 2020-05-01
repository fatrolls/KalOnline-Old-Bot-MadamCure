//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnList;

interface

uses
  SysUtils, Classes, ActnList, ImgList, system;

type
  TContainedAction = class(TBasicAction)
  public
    Category:String;//f58
    FActionList:TCustomActionList;//f5C
    destructor Destroy; virtual;//004DA8E8
    //procedure v14(?:?); virtual;//v14//004DA9D8
    //function v44:?; virtual;//v44//004DABBC
    procedure sub_00483E7C; dynamic;//004DAB50
    procedure sub_004834C8; dynamic;//004DA9AC
    procedure sub_00483570; dynamic;//004DA97C
    //procedure sub_00483588(?:?); dynamic;//004DAB18
    function IsStoredCategory(Value:String):Boolean;//004DA968
    procedure SetCategory(Value:String);//004DAA90
  end;
  TActionEvent = procedure(Action:TBasicAction; var Handled:Boolean) of object;;
  TActionListState = (asNormal, asSuspended, asSuspendedEnabled);
  TCustomActionList = class(TComponent)
  public
    FActions:TList;//f30
    FImageChangeLink:TChangeLink;//f34
    FImages:TCustomImageList;//f38
    FOnChange:TNotifyEvent;//f40
    f42:word;//f42
    f44:dword;//f44
    FOnExecute:TActionEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FOnUpdate:TActionEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    FState:TActionListState;//f58
    FOnStateChange:TNotifyEvent;//f60
    f62:word;//f62
    f64:dword;//f64
    destructor Destroy; virtual;//004DACB0
    //procedure v10(?:?; ?:?); virtual;//v10//004DAE70
    constructor v2C; virtual;//v2C//004DAC28
    procedure v30; virtual;//v30//004DAF2C
    procedure SetImages(Value:TCustomImageList); virtual;//v34//004DADF0
    //procedure sub_00483A1C(?:?); dynamic;//004DB0C0
    //procedure sub_004839E8(?:?); dynamic;//004DB08C
    //procedure sub_0048355C(?:?; ?:?); dynamic;//004DAD74
    //procedure sub_004834DC(?:?; ?:?); dynamic;//004DAD18
  end;
  TActionList = class(TCustomActionList)
    procedure SetState(Value:TActionListState);//004DB0F4
  end;
  TShortCutList = class(TStringList)
  public
    //function v38(?:?):?; virtual;//v38//004DBEF4
  end;
  THintEvent = procedure(var HintStr:String; var CanShow:Boolean) of object;;
  TCustomAction = class(TContainedAction)
  public
    FDisableIfNoHandler:Boolean;//f60
    FCaption:String;//f64
    FChecking:Boolean;//f68
    FChecked:Boolean;//f69
    FEnabled:Boolean;//f6A
    FGroupIndex:Integer;//f6C
    FHelpType:THelpType;//f70
    FHelpContext:THelpContext;//f74
    FHelpKeyword:String;//f78
    FHint:String;//f7C
    FImageIndex:TImageIndex;//f80
    FShortCut:TShortCut;//f84
    FVisible:Boolean;//f86
    FOnHint:THintEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    FSecondaryShortCuts:TShortCutList;//f90
    FSavedEnabledState:Boolean;//f94
    FAutoCheck:Boolean;//f95
    FImage:TObject;//f98
    FMask:TObject;//f9C
    destructor Destroy; virtual;//004DB474
    //procedure v0(?:?); virtual;//v0//004DB4DC
    //procedure v18(?:?); virtual;//v18//004DBCDC
    constructor Create; virtual;//v2C//004DB404
    procedure SetHelpContext(Value:THelpContext); virtual;//v48//004DBA40
    procedure SetHelpKeyword(Value:String); virtual;//v4C//004DB9B4
    //function v50:?; virtual;//v50//004DBED0
    //procedure sub_004DBD48(?:?); dynamic;//004DBD48
    procedure sub_00483E7C; dynamic;//004DBD84
  end;
  TAction = class(TCustomAction)
  public
    constructor v2C; virtual;//v2C//004DBF30
    procedure SetAutoCheck(Value:Boolean);//004DB5C0
    procedure SetChecked(Value:Boolean);//004DB6D0
    procedure SetGroupIndex(Value:Integer);//004DB8B8
  end;
  TActionLink = class(TBasicActionLink)
  public
    //function v20:?; virtual;//v20//004DB1D8
    //function v24:?; virtual;//v24//004DB1FC
    //function v28:?; virtual;//v28//004DB220
    //function v2C:?; virtual;//v2C//004DB244
    //function v30:?; virtual;//v30//004DB268
    //function v34:?; virtual;//v34//004DB28C
    //function v38:?; virtual;//v38//004DB2B0
    //function v3C:?; virtual;//v3C//004DB2D4
    //function v40:?; virtual;//v40//004DB2F8
    //function v44:?; virtual;//v44//004DB31C
    //procedure v48(?:?); virtual;//v48//004DB340
    //procedure v4C(?:?); virtual;//v4C//004DB350
    //procedure v50(?:?); virtual;//v50//004DB360
    //procedure v54(?:?); virtual;//v54//004DB370
    //procedure v58(?:?); virtual;//v58//004DB380
    //procedure v5C(?:?); virtual;//v5C//004DB390
    //procedure v60(?:?); virtual;//v60//004DB3A0
    //procedure v64(?:?); virtual;//v64//004DB3B0
    //procedure v68(?:?); virtual;//v68//004DB3C0
    //procedure v6C(?:?); virtual;//v6C//004DB3D0
    //procedure v70(?:?); virtual;//v70//004DB3E0
    //procedure v74(?:?); virtual;//v74//004DB3F4
  end;
    destructor Destroy;//004DA8E8
    //function sub_004DA930(?:?):?;//004DA930
    procedure sub_00483570;//004DA97C
    procedure sub_004834C8;//004DA9AC
    //procedure sub_004DA9D8(?:?);//004DA9D8
    //procedure sub_004DAA18(?:TContainedAction; ?:?);//004DAA18
    //procedure sub_004DAAD4(?:TContainedAction; ?:?);//004DAAD4
    //procedure sub_00483588(?:?);//004DAB18
    procedure sub_00483E7C;//004DAB50
    //function sub_004DABBC:?;//004DABBC
    constructor sub_004DAC28;//004DAC28
    destructor Destroy;//004DACB0
    //procedure sub_004834DC(?:?; ?:?);//004DAD18
    //procedure sub_0048355C(?:?; ?:?);//004DAD74
    //function sub_004DADB0(?:TCustomActionList; ?:?):?;//004DADB0
    //function sub_004DADD4(?:TCustomActionList):?;//004DADD4
    procedure SetImages(Value:TCustomImageList);//004DADF0
    //procedure sub_004DAE4C(?:?; ?:?);//004DAE4C
    //procedure sub_004DAE70(?:?; ?:?);//004DAE70
    //procedure sub_004DAECC(?:?; ?:TContainedAction);//004DAECC
    procedure sub_004DAF00(?:TCustomActionList; ?:TContainedAction);//004DAF00
    procedure sub_004DAF2C;//004DAF2C
    //function sub_004DAFC4(?:Pointer; ?:?):?;//004DAFC4
    //procedure sub_004839E8(?:?);//004DB08C
    //procedure sub_00483A1C(?:?);//004DB0C0
    //function sub_004DB1D8:?;//004DB1D8
    //function sub_004DB1FC:?;//004DB1FC
    //function sub_004DB220:?;//004DB220
    //function sub_004DB244:?;//004DB244
    //function sub_004DB268:?;//004DB268
    //function sub_004DB28C:?;//004DB28C
    //function sub_004DB2B0:?;//004DB2B0
    //function sub_004DB2D4:?;//004DB2D4
    //function sub_004DB2F8:?;//004DB2F8
    //function sub_004DB31C:?;//004DB31C
    //procedure sub_004DB340(?:?);//004DB340
    //procedure sub_004DB350(?:?);//004DB350
    //procedure sub_004DB360(?:?);//004DB360
    //procedure sub_004DB370(?:?);//004DB370
    //procedure sub_004DB380(?:?);//004DB380
    //procedure sub_004DB390(?:?);//004DB390
    //procedure sub_004DB3A0(?:?);//004DB3A0
    //procedure sub_004DB3B0(?:?);//004DB3B0
    //procedure sub_004DB3C0(?:?);//004DB3C0
    //procedure sub_004DB3D0(?:?);//004DB3D0
    //procedure sub_004DB3E0(?:?);//004DB3E0
    //procedure sub_004DB3F4(?:?);//004DB3F4
    constructor Create;//004DB404
    destructor Destroy;//004DB474
    //procedure sub_004DB4DC(?:?);//004DB4DC
    procedure SetCaption(Value:String);//004DB648
    procedure SetEnabled(Value:Boolean);//004DB808
    procedure SetHelpType(Value:THelpType);//004DB934
    procedure SetHelpKeyword(Value:String);//004DB9B4
    procedure SetHelpContext(Value:THelpContext);//004DBA40
    procedure SetHint(Value:String);//004DBABC
    procedure SetImageIndex(Value:TImageIndex);//004DBB44
    procedure SetShortCut(Value:TShortCut);//004DBBC8
    procedure SetVisible(Value:Boolean);//004DBC50
    //procedure sub_004DBCDC(?:?);//004DBCDC
    //procedure sub_004DBD48(?:?);//004DBD48
    procedure sub_00483E7C;//004DBD84
    //function GetSecondaryShortCuts:?;//004DBE14
    procedure SetSecondaryShortCuts(Value:TShortCutList);//004DBE54
    function IsStoredSecondaryShortCuts(Value:TShortCutList):Boolean;//004DBE98
    //function sub_004DBED0:?;//004DBED0
    //function sub_004DBEF4(?:?):?;//004DBEF4
    constructor sub_004DBF30;//004DBF30
    //function sub_004DBF80(?:?; ?:?):?;//004DBF80

implementation

//004DA8E8
destructor TContainedAction.Destroy;
begin
{*
 004DA8E8    push        ebp
 004DA8E9    mov         ebp,esp
 004DA8EB    add         esp,0FFFFFFF8
 004DA8EE    call        @BeforeDestruction
 004DA8F3    mov         byte ptr [ebp-5],dl
 004DA8F6    mov         dword ptr [ebp-4],eax
 004DA8F9    mov         eax,dword ptr [ebp-4]
 004DA8FC    cmp         dword ptr [eax+5C],0
>004DA900    je          004DA910
 004DA902    mov         eax,dword ptr [ebp-4]
 004DA905    mov         eax,dword ptr [eax+5C]
 004DA908    mov         edx,dword ptr [ebp-4]
 004DA90B    call        004DAF00
 004DA910    mov         dl,byte ptr [ebp-5]
 004DA913    and         dl,0FC
 004DA916    mov         eax,dword ptr [ebp-4]
 004DA919    call        TBasicAction.Destroy
 004DA91E    cmp         byte ptr [ebp-5],0
>004DA922    jle         004DA92C
 004DA924    mov         eax,dword ptr [ebp-4]
 004DA927    call        @ClassDestroy
 004DA92C    pop         ecx
 004DA92D    pop         ecx
 004DA92E    pop         ebp
 004DA92F    ret
*}
end;

//004DA930
{*function sub_004DA930(?:?):?;
begin
 004DA930    push        ebp
 004DA931    mov         ebp,esp
 004DA933    add         esp,0FFFFFFF8
 004DA936    mov         dword ptr [ebp-4],eax
 004DA939    mov         eax,dword ptr [ebp-4]
 004DA93C    cmp         dword ptr [eax+5C],0
>004DA940    je          004DA958
 004DA942    mov         eax,dword ptr [ebp-4]
 004DA945    mov         eax,dword ptr [eax+5C]
 004DA948    mov         eax,dword ptr [eax+30]
 004DA94B    mov         edx,dword ptr [ebp-4]
 004DA94E    call        00478890
 004DA953    mov         dword ptr [ebp-8],eax
>004DA956    jmp         004DA95F
 004DA958    mov         dword ptr [ebp-8],0FFFFFFFF
 004DA95F    mov         eax,dword ptr [ebp-8]
 004DA962    pop         ecx
 004DA963    pop         ecx
 004DA964    pop         ebp
 004DA965    ret
end;*}

//004DA968
function TContainedAction.IsStoredCategory(Value:String):Boolean;
begin
{*
 004DA968    push        ebp
 004DA969    mov         ebp,esp
 004DA96B    add         esp,0FFFFFFF8
 004DA96E    mov         dword ptr [ebp-4],eax
 004DA971    mov         byte ptr [ebp-5],1
 004DA975    mov         al,byte ptr [ebp-5]
 004DA978    pop         ecx
 004DA979    pop         ecx
 004DA97A    pop         ebp
 004DA97B    ret
*}
end;

//004DA97C
procedure TContainedAction.sub_00483570;
begin
{*
 004DA97C    push        ebp
 004DA97D    mov         ebp,esp
 004DA97F    add         esp,0FFFFFFF8
 004DA982    mov         dword ptr [ebp-4],eax
 004DA985    mov         eax,dword ptr [ebp-4]
 004DA988    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>004DA98C    je          004DA999
 004DA98E    mov         eax,dword ptr [ebp-4]
 004DA991    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 004DA994    mov         dword ptr [ebp-8],eax
>004DA997    jmp         004DA9A4
 004DA999    mov         eax,dword ptr [ebp-4]
 004DA99C    call        TComponent.sub_00483570
 004DA9A1    mov         dword ptr [ebp-8],eax
 004DA9A4    mov         eax,dword ptr [ebp-8]
 004DA9A7    pop         ecx
 004DA9A8    pop         ecx
 004DA9A9    pop         ebp
 004DA9AA    ret
*}
end;

//004DA9AC
procedure TContainedAction.sub_004834C8;
begin
{*
 004DA9AC    push        ebp
 004DA9AD    mov         ebp,esp
 004DA9AF    add         esp,0FFFFFFF8
 004DA9B2    mov         dword ptr [ebp-4],eax
 004DA9B5    mov         eax,dword ptr [ebp-4]
 004DA9B8    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>004DA9BC    je          004DA9C4
 004DA9BE    mov         byte ptr [ebp-5],1
>004DA9C2    jmp         004DA9CF
 004DA9C4    mov         eax,dword ptr [ebp-4]
 004DA9C7    call        TComponent.sub_004834C8
 004DA9CC    mov         byte ptr [ebp-5],al
 004DA9CF    mov         al,byte ptr [ebp-5]
 004DA9D2    pop         ecx
 004DA9D3    pop         ecx
 004DA9D4    pop         ebp
 004DA9D5    ret
*}
end;

//004DA9D8
{*procedure sub_004DA9D8(?:?);
begin
 004DA9D8    push        ebp
 004DA9D9    mov         ebp,esp
 004DA9DB    add         esp,0FFFFFFF8
 004DA9DE    mov         dword ptr [ebp-8],edx
 004DA9E1    mov         dword ptr [ebp-4],eax
 004DA9E4    mov         edx,dword ptr [ebp-8]
 004DA9E7    mov         eax,dword ptr [ebp-4]
 004DA9EA    call        004835E0
 004DA9EF    mov         eax,dword ptr [ebp-8]
 004DA9F2    mov         eax,dword ptr [eax+2C]
 004DA9F5    mov         edx,dword ptr ds:[4DA048];TCustomActionList
 004DA9FB    call        @IsClass
 004DAA00    test        al,al
>004DAA02    je          004DAA12
 004DAA04    mov         eax,dword ptr [ebp-8]
 004DAA07    mov         edx,dword ptr [eax+2C]
 004DAA0A    mov         eax,dword ptr [ebp-4]
 004DAA0D    call        004DAAD4
 004DAA12    pop         ecx
 004DAA13    pop         ecx
 004DAA14    pop         ebp
 004DAA15    ret
end;*}

//004DAA18
{*procedure sub_004DAA18(?:TContainedAction; ?:?);
begin
 004DAA18    push        ebp
 004DAA19    mov         ebp,esp
 004DAA1B    add         esp,0FFFFFFF0
 004DAA1E    mov         dword ptr [ebp-8],edx
 004DAA21    mov         dword ptr [ebp-4],eax
 004DAA24    mov         eax,dword ptr [ebp-4]
 004DAA27    call        004DA930
 004DAA2C    mov         dword ptr [ebp-0C],eax
 004DAA2F    cmp         dword ptr [ebp-0C],0
>004DAA33    jl          004DAA8B
 004DAA35    mov         eax,dword ptr [ebp-4]
 004DAA38    mov         eax,dword ptr [eax+5C]
 004DAA3B    mov         eax,dword ptr [eax+30]
 004DAA3E    mov         eax,dword ptr [eax+8]
 004DAA41    mov         dword ptr [ebp-10],eax
 004DAA44    cmp         dword ptr [ebp-8],0
>004DAA48    jge         004DAA4F
 004DAA4A    xor         eax,eax
 004DAA4C    mov         dword ptr [ebp-8],eax
 004DAA4F    mov         eax,dword ptr [ebp-8]
 004DAA52    cmp         eax,dword ptr [ebp-10]
>004DAA55    jl          004DAA5E
 004DAA57    mov         eax,dword ptr [ebp-10]
 004DAA5A    dec         eax
 004DAA5B    mov         dword ptr [ebp-8],eax
 004DAA5E    mov         eax,dword ptr [ebp-8]
 004DAA61    cmp         eax,dword ptr [ebp-0C]
>004DAA64    je          004DAA8B
 004DAA66    mov         eax,dword ptr [ebp-4]
 004DAA69    mov         eax,dword ptr [eax+5C]
 004DAA6C    mov         eax,dword ptr [eax+30]
 004DAA6F    mov         edx,dword ptr [ebp-0C]
 004DAA72    call        00478668
 004DAA77    mov         eax,dword ptr [ebp-4]
 004DAA7A    mov         eax,dword ptr [eax+5C]
 004DAA7D    mov         eax,dword ptr [eax+30]
 004DAA80    mov         ecx,dword ptr [ebp-4]
 004DAA83    mov         edx,dword ptr [ebp-8]
 004DAA86    call        004788DC
 004DAA8B    mov         esp,ebp
 004DAA8D    pop         ebp
 004DAA8E    ret
end;*}

//004DAA90
procedure TContainedAction.SetCategory(Value:String);
begin
{*
 004DAA90    push        ebp
 004DAA91    mov         ebp,esp
 004DAA93    add         esp,0FFFFFFF8
 004DAA96    mov         dword ptr [ebp-8],edx
 004DAA99    mov         dword ptr [ebp-4],eax
 004DAA9C    mov         eax,dword ptr [ebp-8]
 004DAA9F    mov         edx,dword ptr [ebp-4]
 004DAAA2    mov         edx,dword ptr [edx+58];TContainedAction.Category:String
 004DAAA5    call        @LStrCmp
>004DAAAA    je          004DAACE
 004DAAAC    mov         eax,dword ptr [ebp-4]
 004DAAAF    add         eax,58;TContainedAction.Category:String
 004DAAB2    mov         edx,dword ptr [ebp-8]
 004DAAB5    call        @LStrAsg
 004DAABA    mov         eax,dword ptr [ebp-4]
 004DAABD    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>004DAAC1    je          004DAACE
 004DAAC3    mov         eax,dword ptr [ebp-4]
 004DAAC6    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 004DAAC9    mov         edx,dword ptr [eax]
 004DAACB    call        dword ptr [edx+30];TCustomActionList.sub_004DAF2C
 004DAACE    pop         ecx
 004DAACF    pop         ecx
 004DAAD0    pop         ebp
 004DAAD1    ret
*}
end;

//004DAAD4
{*procedure sub_004DAAD4(?:TContainedAction; ?:?);
begin
 004DAAD4    push        ebp
 004DAAD5    mov         ebp,esp
 004DAAD7    add         esp,0FFFFFFF8
 004DAADA    mov         dword ptr [ebp-8],edx
 004DAADD    mov         dword ptr [ebp-4],eax
 004DAAE0    mov         eax,dword ptr [ebp-8]
 004DAAE3    mov         edx,dword ptr [ebp-4]
 004DAAE6    cmp         eax,dword ptr [edx+5C];TContainedAction.FActionList:TCustomActionList
>004DAAE9    je          004DAB13
 004DAAEB    mov         eax,dword ptr [ebp-4]
 004DAAEE    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>004DAAF2    je          004DAB02
 004DAAF4    mov         edx,dword ptr [ebp-4]
 004DAAF7    mov         eax,dword ptr [ebp-4]
 004DAAFA    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 004DAAFD    call        004DAF00
 004DAB02    cmp         dword ptr [ebp-8],0
>004DAB06    je          004DAB13
 004DAB08    mov         edx,dword ptr [ebp-4]
 004DAB0B    mov         eax,dword ptr [ebp-8]
 004DAB0E    call        004DAECC
 004DAB13    pop         ecx
 004DAB14    pop         ecx
 004DAB15    pop         ebp
 004DAB16    ret
end;*}

//004DAB18
{*procedure TContainedAction.sub_00483588(?:?);
begin
 004DAB18    push        ebp
 004DAB19    mov         ebp,esp
 004DAB1B    add         esp,0FFFFFFF8
 004DAB1E    mov         dword ptr [ebp-8],edx
 004DAB21    mov         dword ptr [ebp-4],eax
 004DAB24    mov         eax,dword ptr [ebp-4]
 004DAB27    test        byte ptr [eax+1C],1;TContainedAction.FComponentState:TComponentState
>004DAB2B    jne         004DAB4A
 004DAB2D    mov         eax,dword ptr [ebp-8]
 004DAB30    mov         edx,dword ptr ds:[4DA048];TCustomActionList
 004DAB36    call        @IsClass
 004DAB3B    test        al,al
>004DAB3D    je          004DAB4A
 004DAB3F    mov         edx,dword ptr [ebp-8]
 004DAB42    mov         eax,dword ptr [ebp-4]
 004DAB45    call        004DAAD4
 004DAB4A    pop         ecx
 004DAB4B    pop         ecx
 004DAB4C    pop         ebp
 004DAB4D    ret
end;*}

//004DAB50
procedure TContainedAction.sub_00483E7C;
begin
{*
 004DAB50    push        ebp
 004DAB51    mov         ebp,esp
 004DAB53    add         esp,0FFFFFFF8
 004DAB56    push        esi
 004DAB57    mov         dword ptr [ebp-4],eax
 004DAB5A    mov         eax,dword ptr [ebp-4]
 004DAB5D    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>004DAB61    je          004DAB79
 004DAB63    mov         edx,dword ptr [ebp-4]
 004DAB66    mov         eax,dword ptr [ebp-4]
 004DAB69    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 004DAB6C    mov         si,0FFF3
 004DAB70    call        @CallDynaInst;TCustomActionList.sub_004839E8
 004DAB75    test        al,al
>004DAB77    jne         004DABAE
 004DAB79    mov         eax,[0055B4C8];^Application:TApplication
 004DAB7E    mov         eax,dword ptr [eax]
 004DAB80    mov         edx,dword ptr [ebp-4]
 004DAB83    call        004F44A8
 004DAB88    test        al,al
>004DAB8A    jne         004DABAE
 004DAB8C    mov         eax,dword ptr [ebp-4]
 004DAB8F    call        TBasicAction.sub_00483E7C
 004DAB94    test        al,al
>004DAB96    jne         004DABAE
 004DAB98    mov         ecx,dword ptr [ebp-4]
 004DAB9B    xor         edx,edx
 004DAB9D    mov         eax,0B040
 004DABA2    call        004C6FEC
 004DABA7    dec         eax
>004DABA8    je          004DABAE
 004DABAA    xor         eax,eax
>004DABAC    jmp         004DABB0
 004DABAE    mov         al,1
 004DABB0    mov         byte ptr [ebp-5],al
 004DABB3    mov         al,byte ptr [ebp-5]
 004DABB6    pop         esi
 004DABB7    pop         ecx
 004DABB8    pop         ecx
 004DABB9    pop         ebp
 004DABBA    ret
*}
end;

//004DABBC
{*function sub_004DABBC:?;
begin
 004DABBC    push        ebp
 004DABBD    mov         ebp,esp
 004DABBF    add         esp,0FFFFFFF8
 004DABC2    push        esi
 004DABC3    mov         dword ptr [ebp-4],eax
 004DABC6    mov         eax,dword ptr [ebp-4]
 004DABC9    cmp         dword ptr [eax+5C],0;TContainedAction.FActionList:TCustomActionList
>004DABCD    je          004DABE5
 004DABCF    mov         edx,dword ptr [ebp-4]
 004DABD2    mov         eax,dword ptr [ebp-4]
 004DABD5    mov         eax,dword ptr [eax+5C];TContainedAction.FActionList:TCustomActionList
 004DABD8    mov         si,0FFF0
 004DABDC    call        @CallDynaInst;TCustomActionList.sub_00483A1C
 004DABE1    test        al,al
>004DABE3    jne         004DAC1A
 004DABE5    mov         eax,[0055B4C8];^Application:TApplication
 004DABEA    mov         eax,dword ptr [eax]
 004DABEC    mov         edx,dword ptr [ebp-4]
 004DABEF    call        004F44E4
 004DABF4    test        al,al
>004DABF6    jne         004DAC1A
 004DABF8    mov         eax,dword ptr [ebp-4]
 004DABFB    call        00483EB0
 004DAC00    test        al,al
>004DAC02    jne         004DAC1A
 004DAC04    mov         ecx,dword ptr [ebp-4]
 004DAC07    xor         edx,edx
 004DAC09    mov         eax,0B03F
 004DAC0E    call        004C6FEC
 004DAC13    dec         eax
>004DAC14    je          004DAC1A
 004DAC16    xor         eax,eax
>004DAC18    jmp         004DAC1C
 004DAC1A    mov         al,1
 004DAC1C    mov         byte ptr [ebp-5],al
 004DAC1F    mov         al,byte ptr [ebp-5]
 004DAC22    pop         esi
 004DAC23    pop         ecx
 004DAC24    pop         ecx
 004DAC25    pop         ebp
 004DAC26    ret
end;*}

//004DAC28
constructor sub_004DAC28;
begin
{*
 004DAC28    push        ebp
 004DAC29    mov         ebp,esp
 004DAC2B    add         esp,0FFFFFFF4
 004DAC2E    test        dl,dl
>004DAC30    je          004DAC3A
 004DAC32    add         esp,0FFFFFFF0
 004DAC35    call        @ClassCreate
 004DAC3A    mov         dword ptr [ebp-0C],ecx
 004DAC3D    mov         byte ptr [ebp-5],dl
 004DAC40    mov         dword ptr [ebp-4],eax
 004DAC43    mov         ecx,dword ptr [ebp-0C]
 004DAC46    xor         edx,edx
 004DAC48    mov         eax,dword ptr [ebp-4]
 004DAC4B    call        00482F04
 004DAC50    mov         dl,1
 004DAC52    mov         eax,[004759C0];TList
 004DAC57    call        TObject.Create;TList.Create
 004DAC5C    mov         edx,dword ptr [ebp-4]
 004DAC5F    mov         dword ptr [edx+30],eax;TCustomActionList.FActions:TList
 004DAC62    mov         dl,1
 004DAC64    mov         eax,[004DC034];TChangeLink
 004DAC69    call        TObject.Create;TChangeLink.Create
 004DAC6E    mov         edx,dword ptr [ebp-4]
 004DAC71    mov         dword ptr [edx+34],eax;TCustomActionList.FImageChangeLink:TChangeLink
 004DAC74    mov         eax,dword ptr [ebp-4]
 004DAC77    mov         eax,dword ptr [eax+34];TCustomActionList.FImageChangeLink:TChangeLink
 004DAC7A    mov         edx,dword ptr [ebp-4]
 004DAC7D    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomTabControl
 004DAC80    mov         dword ptr [eax+8],4DAE4C;TChangeLink.FOnChange:TNotifyEvent sub_004DAE4C
 004DAC87    mov         eax,dword ptr [ebp-4]
 004DAC8A    mov         byte ptr [eax+58],0;TCustomActionList.FState:TActionListState
 004DAC8E    mov         eax,dword ptr [ebp-4]
 004DAC91    cmp         byte ptr [ebp-5],0
>004DAC95    je          004DACA6
 004DAC97    call        @AfterConstruction
 004DAC9C    pop         dword ptr fs:[0]
 004DACA3    add         esp,0C
 004DACA6    mov         eax,dword ptr [ebp-4]
 004DACA9    mov         esp,ebp
 004DACAB    pop         ebp
 004DACAC    ret
*}
end;

//004DACB0
destructor TCustomActionList.Destroy;
begin
{*
 004DACB0    push        ebp
 004DACB1    mov         ebp,esp
 004DACB3    add         esp,0FFFFFFF8
 004DACB6    call        @BeforeDestruction
 004DACBB    mov         byte ptr [ebp-5],dl
 004DACBE    mov         dword ptr [ebp-4],eax
 004DACC1    mov         eax,dword ptr [ebp-4]
 004DACC4    mov         eax,dword ptr [eax+34]
 004DACC7    call        TObject.Free
>004DACCC    jmp         004DACDE
 004DACCE    mov         eax,dword ptr [ebp-4]
 004DACD1    mov         eax,dword ptr [eax+30]
 004DACD4    call        0047898C
 004DACD9    call        TObject.Free
 004DACDE    mov         eax,dword ptr [ebp-4]
 004DACE1    mov         eax,dword ptr [eax+30]
 004DACE4    cmp         dword ptr [eax+8],0
>004DACE8    jg          004DACCE
 004DACEA    mov         eax,dword ptr [ebp-4]
 004DACED    mov         eax,dword ptr [eax+30]
 004DACF0    call        TObject.Free
 004DACF5    mov         dl,byte ptr [ebp-5]
 004DACF8    and         dl,0FC
 004DACFB    mov         eax,dword ptr [ebp-4]
 004DACFE    call        TComponent.Destroy
 004DAD03    cmp         byte ptr [ebp-5],0
>004DAD07    jle         004DAD11
 004DAD09    mov         eax,dword ptr [ebp-4]
 004DAD0C    call        @ClassDestroy
 004DAD11    pop         ecx
 004DAD12    pop         ecx
 004DAD13    pop         ebp
 004DAD14    ret
*}
end;

//004DAD18
{*procedure TCustomActionList.sub_004834DC(?:?; ?:?);
begin
 004DAD18    push        ebp
 004DAD19    mov         ebp,esp
 004DAD1B    add         esp,0FFFFFFEC
 004DAD1E    mov         dword ptr [ebp-8],edx
 004DAD21    mov         dword ptr [ebp-4],eax
 004DAD24    mov         eax,dword ptr [ebp-4]
 004DAD27    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 004DAD2A    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DAD2D    dec         eax
 004DAD2E    test        eax,eax
>004DAD30    jl          004DAD6B
 004DAD32    inc         eax
 004DAD33    mov         dword ptr [ebp-14],eax
 004DAD36    mov         dword ptr [ebp-0C],0
 004DAD3D    mov         eax,dword ptr [ebp-4]
 004DAD40    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 004DAD43    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DAD46    mov         edx,dword ptr [ebp-0C]
 004DAD49    mov         eax,dword ptr [eax+edx*4]
 004DAD4C    mov         dword ptr [ebp-10],eax
 004DAD4F    mov         eax,dword ptr [ebp-10]
 004DAD52    mov         eax,dword ptr [eax+4]
 004DAD55    cmp         eax,dword ptr [ebp-8]
>004DAD58    jne         004DAD63
 004DAD5A    mov         edx,dword ptr [ebp-10]
 004DAD5D    mov         eax,dword ptr [ebp+0C]
 004DAD60    call        dword ptr [ebp+8]
 004DAD63    inc         dword ptr [ebp-0C]
 004DAD66    dec         dword ptr [ebp-14]
>004DAD69    jne         004DAD3D
 004DAD6B    mov         esp,ebp
 004DAD6D    pop         ebp
 004DAD6E    ret         8
end;*}

//004DAD74
{*procedure TCustomActionList.sub_0048355C(?:?; ?:?);
begin
 004DAD74    push        ebp
 004DAD75    mov         ebp,esp
 004DAD77    add         esp,0FFFFFFF4
 004DAD7A    mov         dword ptr [ebp-0C],ecx
 004DAD7D    mov         dword ptr [ebp-8],edx
 004DAD80    mov         dword ptr [ebp-4],eax
 004DAD83    mov         edx,dword ptr [ebp-8]
 004DAD86    mov         eax,dword ptr [ebp-4]
 004DAD89    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 004DAD8C    call        00478890
 004DAD91    test        eax,eax
>004DAD93    jl          004DADAB
 004DAD95    mov         eax,dword ptr [ebp-8]
 004DAD98    mov         edx,dword ptr ds:[4D9E8C];TContainedAction
 004DAD9E    call        @AsClass
 004DADA3    mov         edx,dword ptr [ebp-0C]
 004DADA6    call        004DAA18
 004DADAB    mov         esp,ebp
 004DADAD    pop         ebp
 004DADAE    ret
end;*}

//004DADB0
{*function sub_004DADB0(?:TCustomActionList; ?:?):?;
begin
 004DADB0    push        ebp
 004DADB1    mov         ebp,esp
 004DADB3    add         esp,0FFFFFFF4
 004DADB6    mov         dword ptr [ebp-8],edx
 004DADB9    mov         dword ptr [ebp-4],eax
 004DADBC    mov         edx,dword ptr [ebp-8]
 004DADBF    mov         eax,dword ptr [ebp-4]
 004DADC2    mov         eax,dword ptr [eax+30]
 004DADC5    call        TList.Get
 004DADCA    mov         dword ptr [ebp-0C],eax
 004DADCD    mov         eax,dword ptr [ebp-0C]
 004DADD0    mov         esp,ebp
 004DADD2    pop         ebp
 004DADD3    ret
end;*}

//004DADD4
{*function sub_004DADD4(?:TCustomActionList):?;
begin
 004DADD4    push        ebp
 004DADD5    mov         ebp,esp
 004DADD7    add         esp,0FFFFFFF8
 004DADDA    mov         dword ptr [ebp-4],eax
 004DADDD    mov         eax,dword ptr [ebp-4]
 004DADE0    mov         eax,dword ptr [eax+30]
 004DADE3    mov         eax,dword ptr [eax+8]
 004DADE6    mov         dword ptr [ebp-8],eax
 004DADE9    mov         eax,dword ptr [ebp-8]
 004DADEC    pop         ecx
 004DADED    pop         ecx
 004DADEE    pop         ebp
 004DADEF    ret
end;*}

//004DADF0
procedure TActionList.SetImages(Value:TCustomImageList);
begin
{*
 004DADF0    push        ebp
 004DADF1    mov         ebp,esp
 004DADF3    add         esp,0FFFFFFF8
 004DADF6    mov         dword ptr [ebp-8],edx
 004DADF9    mov         dword ptr [ebp-4],eax
 004DADFC    mov         eax,dword ptr [ebp-4]
 004DADFF    cmp         dword ptr [eax+38],0;TActionList.FImages:TCustomImageList
>004DAE03    je          004DAE16
 004DAE05    mov         eax,dword ptr [ebp-4]
 004DAE08    mov         edx,dword ptr [eax+34];TActionList.FImageChangeLink:TChangeLink
 004DAE0B    mov         eax,dword ptr [ebp-4]
 004DAE0E    mov         eax,dword ptr [eax+38];TActionList.FImages:TCustomImageList
 004DAE11    call        004DD6F8
 004DAE16    mov         eax,dword ptr [ebp-8]
 004DAE19    mov         edx,dword ptr [ebp-4]
 004DAE1C    mov         dword ptr [edx+38],eax;TActionList.FImages:TCustomImageList
 004DAE1F    mov         eax,dword ptr [ebp-4]
 004DAE22    cmp         dword ptr [eax+38],0;TActionList.FImages:TCustomImageList
>004DAE26    je          004DAE47
 004DAE28    mov         eax,dword ptr [ebp-4]
 004DAE2B    mov         edx,dword ptr [eax+34];TActionList.FImageChangeLink:TChangeLink
 004DAE2E    mov         eax,dword ptr [ebp-4]
 004DAE31    mov         eax,dword ptr [eax+38];TActionList.FImages:TCustomImageList
 004DAE34    call        004DD760
 004DAE39    mov         edx,dword ptr [ebp-4]
 004DAE3C    mov         eax,dword ptr [ebp-4]
 004DAE3F    mov         eax,dword ptr [eax+38];TActionList.FImages:TCustomImageList
 004DAE42    call        00483020
 004DAE47    pop         ecx
 004DAE48    pop         ecx
 004DAE49    pop         ebp
 004DAE4A    ret
*}
end;

//004DAE4C
{*procedure sub_004DAE4C(?:?; ?:?);
begin
 004DAE4C    push        ebp
 004DAE4D    mov         ebp,esp
 004DAE4F    add         esp,0FFFFFFF8
 004DAE52    mov         dword ptr [ebp-8],edx
 004DAE55    mov         dword ptr [ebp-4],eax
 004DAE58    mov         eax,dword ptr [ebp-8]
 004DAE5B    mov         edx,dword ptr [ebp-4]
 004DAE5E    cmp         eax,dword ptr [edx+38]
>004DAE61    jne         004DAE6B
 004DAE63    mov         eax,dword ptr [ebp-4]
 004DAE66    mov         edx,dword ptr [eax]
 004DAE68    call        dword ptr [edx+30]
 004DAE6B    pop         ecx
 004DAE6C    pop         ecx
 004DAE6D    pop         ebp
 004DAE6E    ret
end;*}

//004DAE70
{*procedure sub_004DAE70(?:?; ?:?);
begin
 004DAE70    push        ebp
 004DAE71    mov         ebp,esp
 004DAE73    add         esp,0FFFFFFF4
 004DAE76    mov         byte ptr [ebp-9],cl
 004DAE79    mov         dword ptr [ebp-8],edx
 004DAE7C    mov         dword ptr [ebp-4],eax
 004DAE7F    mov         cl,byte ptr [ebp-9]
 004DAE82    mov         edx,dword ptr [ebp-8]
 004DAE85    mov         eax,dword ptr [ebp-4]
 004DAE88    call        00483398
 004DAE8D    cmp         byte ptr [ebp-9],1
>004DAE91    jne         004DAEC7
 004DAE93    mov         eax,dword ptr [ebp-8]
 004DAE96    mov         edx,dword ptr [ebp-4]
 004DAE99    cmp         eax,dword ptr [edx+38];TCustomActionList.FImages:TCustomImageList
>004DAE9C    jne         004DAEAA
 004DAE9E    xor         edx,edx
 004DAEA0    mov         eax,dword ptr [ebp-4]
 004DAEA3    mov         ecx,dword ptr [eax]
 004DAEA5    call        dword ptr [ecx+34];TActionList.SetImages
>004DAEA8    jmp         004DAEC7
 004DAEAA    mov         eax,dword ptr [ebp-8]
 004DAEAD    mov         edx,dword ptr ds:[4D9E8C];TContainedAction
 004DAEB3    call        @IsClass
 004DAEB8    test        al,al
>004DAEBA    je          004DAEC7
 004DAEBC    mov         edx,dword ptr [ebp-8]
 004DAEBF    mov         eax,dword ptr [ebp-4]
 004DAEC2    call        004DAF00
 004DAEC7    mov         esp,ebp
 004DAEC9    pop         ebp
 004DAECA    ret
end;*}

//004DAECC
{*procedure sub_004DAECC(?:?; ?:TContainedAction);
begin
 004DAECC    push        ebp
 004DAECD    mov         ebp,esp
 004DAECF    add         esp,0FFFFFFF8
 004DAED2    mov         dword ptr [ebp-8],edx
 004DAED5    mov         dword ptr [ebp-4],eax
 004DAED8    mov         edx,dword ptr [ebp-8]
 004DAEDB    mov         eax,dword ptr [ebp-4]
 004DAEDE    mov         eax,dword ptr [eax+30]
 004DAEE1    call        TList.Add
 004DAEE6    mov         eax,dword ptr [ebp-4]
 004DAEE9    mov         edx,dword ptr [ebp-8]
 004DAEEC    mov         dword ptr [edx+5C],eax;TContainedAction.FActionList:TCustomActionList
 004DAEEF    mov         edx,dword ptr [ebp-4]
 004DAEF2    mov         eax,dword ptr [ebp-8]
 004DAEF5    call        00483020
 004DAEFA    pop         ecx
 004DAEFB    pop         ecx
 004DAEFC    pop         ebp
 004DAEFD    ret
end;*}

//004DAF00
procedure sub_004DAF00(?:TCustomActionList; ?:TContainedAction);
begin
{*
 004DAF00    push        ebp
 004DAF01    mov         ebp,esp
 004DAF03    add         esp,0FFFFFFF8
 004DAF06    mov         dword ptr [ebp-8],edx
 004DAF09    mov         dword ptr [ebp-4],eax
 004DAF0C    mov         edx,dword ptr [ebp-8]
 004DAF0F    mov         eax,dword ptr [ebp-4]
 004DAF12    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 004DAF15    call        00478AC4
 004DAF1A    test        eax,eax
>004DAF1C    jl          004DAF26
 004DAF1E    mov         eax,dword ptr [ebp-8]
 004DAF21    xor         edx,edx
 004DAF23    mov         dword ptr [eax+5C],edx;TContainedAction.FActionList:TCustomActionList
 004DAF26    pop         ecx
 004DAF27    pop         ecx
 004DAF28    pop         ebp
 004DAF29    ret
*}
end;

//004DAF2C
procedure sub_004DAF2C;
begin
{*
 004DAF2C    push        ebp
 004DAF2D    mov         ebp,esp
 004DAF2F    add         esp,0FFFFFFF4
 004DAF32    push        ebx
 004DAF33    mov         dword ptr [ebp-4],eax
 004DAF36    mov         eax,dword ptr [ebp-4]
 004DAF39    cmp         word ptr [eax+42],0;TCustomActionList.?f42:word
>004DAF3E    je          004DAF4C
 004DAF40    mov         ebx,dword ptr [ebp-4]
 004DAF43    mov         edx,dword ptr [ebp-4]
 004DAF46    mov         eax,dword ptr [ebx+44];TCustomActionList.?f44:dword
 004DAF49    call        dword ptr [ebx+40];TCustomActionList.FOnChange
 004DAF4C    mov         eax,dword ptr [ebp-4]
 004DAF4F    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 004DAF52    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DAF55    dec         eax
 004DAF56    test        eax,eax
>004DAF58    jl          004DAF81
 004DAF5A    inc         eax
 004DAF5B    mov         dword ptr [ebp-0C],eax
 004DAF5E    mov         dword ptr [ebp-8],0
 004DAF65    mov         eax,dword ptr [ebp-4]
 004DAF68    mov         eax,dword ptr [eax+30];TCustomActionList.FActions:TList
 004DAF6B    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DAF6E    mov         edx,dword ptr [ebp-8]
 004DAF71    mov         eax,dword ptr [eax+edx*4]
 004DAF74    mov         edx,dword ptr [eax]
 004DAF76    call        dword ptr [edx+30]
 004DAF79    inc         dword ptr [ebp-8]
 004DAF7C    dec         dword ptr [ebp-0C]
>004DAF7F    jne         004DAF65
 004DAF81    mov         eax,dword ptr [ebp-4]
 004DAF84    test        byte ptr [eax+1C],10;TCustomActionList.FComponentState:TComponentState
>004DAF88    je          004DAFBF
 004DAF8A    mov         eax,dword ptr [ebp-4]
 004DAF8D    mov         eax,dword ptr [eax+4];TCustomActionList.FOwner:TComponent
 004DAF90    mov         edx,dword ptr ds:[4E6708];TForm
 004DAF96    call        @IsClass
 004DAF9B    test        al,al
>004DAF9D    je          004DAFBF
 004DAF9F    mov         eax,dword ptr [ebp-4]
 004DAFA2    mov         eax,dword ptr [eax+4];TCustomActionList.FOwner:TComponent
 004DAFA5    cmp         dword ptr [eax+250],0
>004DAFAC    je          004DAFBF
 004DAFAE    mov         eax,dword ptr [ebp-4]
 004DAFB1    mov         eax,dword ptr [eax+4];TCustomActionList.FOwner:TComponent
 004DAFB4    mov         eax,dword ptr [eax+250]
 004DAFBA    mov         edx,dword ptr [eax]
 004DAFBC    call        dword ptr [edx+0C]
 004DAFBF    pop         ebx
 004DAFC0    mov         esp,ebp
 004DAFC2    pop         ebp
 004DAFC3    ret
*}
end;

//004DAFC4
{*function sub_004DAFC4(?:Pointer; ?:?):?;
begin
 004DAFC4    push        ebp
 004DAFC5    mov         ebp,esp
 004DAFC7    add         esp,0FFFFFFE4
 004DAFCA    mov         dword ptr [ebp-8],edx
 004DAFCD    mov         dword ptr [ebp-4],eax
 004DAFD0    mov         eax,dword ptr [ebp-8]
 004DAFD3    mov         eax,dword ptr [eax+8]
 004DAFD6    call        004E7D80
 004DAFDB    mov         byte ptr [ebp-13],al
 004DAFDE    mov         eax,dword ptr [ebp-8]
 004DAFE1    mov         ax,word ptr [eax+4]
 004DAFE5    mov         dl,byte ptr [ebp-13]
 004DAFE8    call        004DF08C
 004DAFED    mov         word ptr [ebp-12],ax
 004DAFF1    cmp         word ptr [ebp-12],0
>004DAFF6    je          004DB07E
 004DAFFC    mov         eax,dword ptr [ebp-4]
 004DAFFF    mov         eax,dword ptr [eax+30]
 004DB002    mov         eax,dword ptr [eax+8]
 004DB005    dec         eax
 004DB006    test        eax,eax
>004DB008    jl          004DB07E
 004DB00A    inc         eax
 004DB00B    mov         dword ptr [ebp-1C],eax
 004DB00E    mov         dword ptr [ebp-10],0
 004DB015    mov         eax,dword ptr [ebp-4]
 004DB018    mov         eax,dword ptr [eax+30]
 004DB01B    mov         eax,dword ptr [eax+4]
 004DB01E    mov         edx,dword ptr [ebp-10]
 004DB021    mov         eax,dword ptr [eax+edx*4]
 004DB024    mov         dword ptr [ebp-18],eax
 004DB027    mov         eax,dword ptr [ebp-18]
 004DB02A    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB030    call        @IsClass
 004DB035    test        al,al
>004DB037    je          004DB076
 004DB039    mov         eax,dword ptr [ebp-18]
 004DB03C    mov         ax,word ptr [eax+84]
 004DB043    cmp         ax,word ptr [ebp-12]
>004DB047    je          004DB069
 004DB049    mov         eax,dword ptr [ebp-18]
 004DB04C    cmp         dword ptr [eax+90],0
>004DB053    je          004DB076
 004DB055    mov         eax,dword ptr [ebp-18]
 004DB058    call        TVirtualListAction.GetSecondaryShortCuts
 004DB05D    mov         dx,word ptr [ebp-12]
 004DB061    call        004DBF80
 004DB066    inc         eax
>004DB067    je          004DB076
 004DB069    mov         eax,dword ptr [ebp-18]
 004DB06C    mov         edx,dword ptr [eax]
 004DB06E    call        dword ptr [edx+50]
 004DB071    mov         byte ptr [ebp-9],al
>004DB074    jmp         004DB082
 004DB076    inc         dword ptr [ebp-10]
 004DB079    dec         dword ptr [ebp-1C]
>004DB07C    jne         004DB015
 004DB07E    mov         byte ptr [ebp-9],0
 004DB082    mov         al,byte ptr [ebp-9]
 004DB085    mov         esp,ebp
 004DB087    pop         ebp
 004DB088    ret
end;*}

//004DB08C
{*procedure TCustomActionList.sub_004839E8(?:?);
begin
 004DB08C    push        ebp
 004DB08D    mov         ebp,esp
 004DB08F    add         esp,0FFFFFFF4
 004DB092    push        ebx
 004DB093    mov         dword ptr [ebp-8],edx
 004DB096    mov         dword ptr [ebp-4],eax
 004DB099    mov         byte ptr [ebp-9],0
 004DB09D    mov         eax,dword ptr [ebp-4]
 004DB0A0    cmp         word ptr [eax+4A],0;TCustomActionList.?f4A:word
>004DB0A5    je          004DB0B6
 004DB0A7    lea         ecx,[ebp-9]
 004DB0AA    mov         ebx,dword ptr [ebp-4]
 004DB0AD    mov         edx,dword ptr [ebp-8]
 004DB0B0    mov         eax,dword ptr [ebx+4C];TCustomActionList.?f4C:dword
 004DB0B3    call        dword ptr [ebx+48];TCustomActionList.FOnExecute
 004DB0B6    mov         al,byte ptr [ebp-9]
 004DB0B9    pop         ebx
 004DB0BA    mov         esp,ebp
 004DB0BC    pop         ebp
 004DB0BD    ret
end;*}

//004DB0C0
{*procedure TCustomActionList.sub_00483A1C(?:?);
begin
 004DB0C0    push        ebp
 004DB0C1    mov         ebp,esp
 004DB0C3    add         esp,0FFFFFFF4
 004DB0C6    push        ebx
 004DB0C7    mov         dword ptr [ebp-8],edx
 004DB0CA    mov         dword ptr [ebp-4],eax
 004DB0CD    mov         byte ptr [ebp-9],0
 004DB0D1    mov         eax,dword ptr [ebp-4]
 004DB0D4    cmp         word ptr [eax+52],0;TCustomActionList.?f52:word
>004DB0D9    je          004DB0EA
 004DB0DB    lea         ecx,[ebp-9]
 004DB0DE    mov         ebx,dword ptr [ebp-4]
 004DB0E1    mov         edx,dword ptr [ebp-8]
 004DB0E4    mov         eax,dword ptr [ebx+54];TCustomActionList.?f54:dword
 004DB0E7    call        dword ptr [ebx+50];TCustomActionList.FOnUpdate
 004DB0EA    mov         al,byte ptr [ebp-9]
 004DB0ED    pop         ebx
 004DB0EE    mov         esp,ebp
 004DB0F0    pop         ebp
 004DB0F1    ret
end;*}

//004DB0F4
procedure TActionList.SetState(Value:TActionListState);
begin
{*
 004DB0F4    push        ebp
 004DB0F5    mov         ebp,esp
 004DB0F7    add         esp,0FFFFFFE8
 004DB0FA    push        ebx
 004DB0FB    mov         byte ptr [ebp-5],dl
 004DB0FE    mov         dword ptr [ebp-4],eax
 004DB101    mov         eax,dword ptr [ebp-4]
 004DB104    mov         al,byte ptr [eax+58];TActionList.FState:TActionListState
 004DB107    cmp         al,byte ptr [ebp-5]
>004DB10A    je          004DB1D1
 004DB110    mov         eax,dword ptr [ebp-4]
 004DB113    mov         al,byte ptr [eax+58];TActionList.FState:TActionListState
 004DB116    mov         byte ptr [ebp-11],al
 004DB119    mov         al,byte ptr [ebp-5]
 004DB11C    mov         edx,dword ptr [ebp-4]
 004DB11F    mov         byte ptr [edx+58],al;TActionList.FState:TActionListState
 004DB122    mov         eax,dword ptr [ebp-4]
 004DB125    cmp         byte ptr [eax+58],1;TActionList.FState:TActionListState
>004DB129    je          004DB1D1
 004DB12F    mov         eax,dword ptr [ebp-4]
 004DB132    mov         eax,dword ptr [eax+30];TActionList.FActions:TList
 004DB135    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DB138    dec         eax
 004DB139    test        eax,eax
>004DB13B    jl          004DB1BB
 004DB13D    inc         eax
 004DB13E    mov         dword ptr [ebp-18],eax
 004DB141    mov         dword ptr [ebp-0C],0
 004DB148    mov         eax,dword ptr [ebp-4]
 004DB14B    mov         eax,dword ptr [eax+30];TActionList.FActions:TList
 004DB14E    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DB151    mov         edx,dword ptr [ebp-0C]
 004DB154    mov         eax,dword ptr [eax+edx*4]
 004DB157    mov         dword ptr [ebp-10],eax
 004DB15A    mov         al,byte ptr [ebp-5]
 004DB15D    sub         al,1
>004DB15F    jb          004DB167
 004DB161    dec         al
>004DB163    je          004DB18E
>004DB165    jmp         004DB1B3
 004DB167    cmp         dword ptr [ebp-10],0
>004DB16B    je          004DB184
 004DB16D    cmp         byte ptr [ebp-11],2
>004DB171    jne         004DB184
 004DB173    mov         eax,dword ptr [ebp-10]
 004DB176    mov         dl,byte ptr [eax+94]
 004DB17C    mov         eax,dword ptr [ebp-10]
 004DB17F    call        TVirtualListAction.SetEnabled
 004DB184    mov         eax,dword ptr [ebp-10]
 004DB187    mov         edx,dword ptr [eax]
 004DB189    call        dword ptr [edx+44]
>004DB18C    jmp         004DB1B3
 004DB18E    cmp         dword ptr [ebp-10],0
>004DB192    je          004DB1B3
 004DB194    cmp         byte ptr [ebp-5],2
>004DB198    jne         004DB1B3
 004DB19A    mov         eax,dword ptr [ebp-10]
 004DB19D    mov         al,byte ptr [eax+6A]
 004DB1A0    mov         edx,dword ptr [ebp-10]
 004DB1A3    mov         byte ptr [edx+94],al
 004DB1A9    mov         dl,1
 004DB1AB    mov         eax,dword ptr [ebp-10]
 004DB1AE    call        TVirtualListAction.SetEnabled
 004DB1B3    inc         dword ptr [ebp-0C]
 004DB1B6    dec         dword ptr [ebp-18]
>004DB1B9    jne         004DB148
 004DB1BB    mov         eax,dword ptr [ebp-4]
 004DB1BE    cmp         word ptr [eax+62],0;TActionList.?f62:word
>004DB1C3    je          004DB1D1
 004DB1C5    mov         ebx,dword ptr [ebp-4]
 004DB1C8    mov         edx,dword ptr [ebp-4]
 004DB1CB    mov         eax,dword ptr [ebx+64];TActionList.?f64:dword
 004DB1CE    call        dword ptr [ebx+60];TActionList.FOnStateChange
 004DB1D1    pop         ebx
 004DB1D2    mov         esp,ebp
 004DB1D4    pop         ebp
 004DB1D5    ret
*}
end;

//004DB1D8
{*function sub_004DB1D8:?;
begin
 004DB1D8    push        ebp
 004DB1D9    mov         ebp,esp
 004DB1DB    add         esp,0FFFFFFF8
 004DB1DE    mov         dword ptr [ebp-4],eax
 004DB1E1    mov         eax,dword ptr [ebp-4]
 004DB1E4    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 004DB1E7    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB1ED    call        @IsClass
 004DB1F2    mov         byte ptr [ebp-5],al
 004DB1F5    mov         al,byte ptr [ebp-5]
 004DB1F8    pop         ecx
 004DB1F9    pop         ecx
 004DB1FA    pop         ebp
 004DB1FB    ret
end;*}

//004DB1FC
{*function sub_004DB1FC:?;
begin
 004DB1FC    push        ebp
 004DB1FD    mov         ebp,esp
 004DB1FF    add         esp,0FFFFFFF8
 004DB202    mov         dword ptr [ebp-4],eax
 004DB205    mov         eax,dword ptr [ebp-4]
 004DB208    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 004DB20B    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB211    call        @IsClass
 004DB216    mov         byte ptr [ebp-5],al
 004DB219    mov         al,byte ptr [ebp-5]
 004DB21C    pop         ecx
 004DB21D    pop         ecx
 004DB21E    pop         ebp
 004DB21F    ret
end;*}

//004DB220
{*function sub_004DB220:?;
begin
 004DB220    push        ebp
 004DB221    mov         ebp,esp
 004DB223    add         esp,0FFFFFFF8
 004DB226    mov         dword ptr [ebp-4],eax
 004DB229    mov         eax,dword ptr [ebp-4]
 004DB22C    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 004DB22F    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB235    call        @IsClass
 004DB23A    mov         byte ptr [ebp-5],al
 004DB23D    mov         al,byte ptr [ebp-5]
 004DB240    pop         ecx
 004DB241    pop         ecx
 004DB242    pop         ebp
 004DB243    ret
end;*}

//004DB244
{*function sub_004DB244:?;
begin
 004DB244    push        ebp
 004DB245    mov         ebp,esp
 004DB247    add         esp,0FFFFFFF8
 004DB24A    mov         dword ptr [ebp-4],eax
 004DB24D    mov         eax,dword ptr [ebp-4]
 004DB250    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 004DB253    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB259    call        @IsClass
 004DB25E    mov         byte ptr [ebp-5],al
 004DB261    mov         al,byte ptr [ebp-5]
 004DB264    pop         ecx
 004DB265    pop         ecx
 004DB266    pop         ebp
 004DB267    ret
end;*}

//004DB268
{*function sub_004DB268:?;
begin
 004DB268    push        ebp
 004DB269    mov         ebp,esp
 004DB26B    add         esp,0FFFFFFF8
 004DB26E    mov         dword ptr [ebp-4],eax
 004DB271    mov         eax,dword ptr [ebp-4]
 004DB274    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 004DB277    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB27D    call        @IsClass
 004DB282    mov         byte ptr [ebp-5],al
 004DB285    mov         al,byte ptr [ebp-5]
 004DB288    pop         ecx
 004DB289    pop         ecx
 004DB28A    pop         ebp
 004DB28B    ret
end;*}

//004DB28C
{*function sub_004DB28C:?;
begin
 004DB28C    push        ebp
 004DB28D    mov         ebp,esp
 004DB28F    add         esp,0FFFFFFF8
 004DB292    mov         dword ptr [ebp-4],eax
 004DB295    mov         eax,dword ptr [ebp-4]
 004DB298    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 004DB29B    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB2A1    call        @IsClass
 004DB2A6    mov         byte ptr [ebp-5],al
 004DB2A9    mov         al,byte ptr [ebp-5]
 004DB2AC    pop         ecx
 004DB2AD    pop         ecx
 004DB2AE    pop         ebp
 004DB2AF    ret
end;*}

//004DB2B0
{*function sub_004DB2B0:?;
begin
 004DB2B0    push        ebp
 004DB2B1    mov         ebp,esp
 004DB2B3    add         esp,0FFFFFFF8
 004DB2B6    mov         dword ptr [ebp-4],eax
 004DB2B9    mov         eax,dword ptr [ebp-4]
 004DB2BC    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 004DB2BF    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB2C5    call        @IsClass
 004DB2CA    mov         byte ptr [ebp-5],al
 004DB2CD    mov         al,byte ptr [ebp-5]
 004DB2D0    pop         ecx
 004DB2D1    pop         ecx
 004DB2D2    pop         ebp
 004DB2D3    ret
end;*}

//004DB2D4
{*function sub_004DB2D4:?;
begin
 004DB2D4    push        ebp
 004DB2D5    mov         ebp,esp
 004DB2D7    add         esp,0FFFFFFF8
 004DB2DA    mov         dword ptr [ebp-4],eax
 004DB2DD    mov         eax,dword ptr [ebp-4]
 004DB2E0    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 004DB2E3    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB2E9    call        @IsClass
 004DB2EE    mov         byte ptr [ebp-5],al
 004DB2F1    mov         al,byte ptr [ebp-5]
 004DB2F4    pop         ecx
 004DB2F5    pop         ecx
 004DB2F6    pop         ebp
 004DB2F7    ret
end;*}

//004DB2F8
{*function sub_004DB2F8:?;
begin
 004DB2F8    push        ebp
 004DB2F9    mov         ebp,esp
 004DB2FB    add         esp,0FFFFFFF8
 004DB2FE    mov         dword ptr [ebp-4],eax
 004DB301    mov         eax,dword ptr [ebp-4]
 004DB304    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 004DB307    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB30D    call        @IsClass
 004DB312    mov         byte ptr [ebp-5],al
 004DB315    mov         al,byte ptr [ebp-5]
 004DB318    pop         ecx
 004DB319    pop         ecx
 004DB31A    pop         ebp
 004DB31B    ret
end;*}

//004DB31C
{*function sub_004DB31C:?;
begin
 004DB31C    push        ebp
 004DB31D    mov         ebp,esp
 004DB31F    add         esp,0FFFFFFF8
 004DB322    mov         dword ptr [ebp-4],eax
 004DB325    mov         eax,dword ptr [ebp-4]
 004DB328    mov         eax,dword ptr [eax+10];TActionLink.FAction:TBasicAction
 004DB32B    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB331    call        @IsClass
 004DB336    mov         byte ptr [ebp-5],al
 004DB339    mov         al,byte ptr [ebp-5]
 004DB33C    pop         ecx
 004DB33D    pop         ecx
 004DB33E    pop         ebp
 004DB33F    ret
end;*}

//004DB340
{*procedure sub_004DB340(?:?);
begin
 004DB340    push        ebp
 004DB341    mov         ebp,esp
 004DB343    add         esp,0FFFFFFF8
 004DB346    mov         byte ptr [ebp-5],dl
 004DB349    mov         dword ptr [ebp-4],eax
 004DB34C    pop         ecx
 004DB34D    pop         ecx
 004DB34E    pop         ebp
 004DB34F    ret
end;*}

//004DB350
{*procedure sub_004DB350(?:?);
begin
 004DB350    push        ebp
 004DB351    mov         ebp,esp
 004DB353    add         esp,0FFFFFFF8
 004DB356    mov         dword ptr [ebp-8],edx
 004DB359    mov         dword ptr [ebp-4],eax
 004DB35C    pop         ecx
 004DB35D    pop         ecx
 004DB35E    pop         ebp
 004DB35F    ret
end;*}

//004DB360
{*procedure sub_004DB360(?:?);
begin
 004DB360    push        ebp
 004DB361    mov         ebp,esp
 004DB363    add         esp,0FFFFFFF8
 004DB366    mov         byte ptr [ebp-5],dl
 004DB369    mov         dword ptr [ebp-4],eax
 004DB36C    pop         ecx
 004DB36D    pop         ecx
 004DB36E    pop         ebp
 004DB36F    ret
end;*}

//004DB370
{*procedure sub_004DB370(?:?);
begin
 004DB370    push        ebp
 004DB371    mov         ebp,esp
 004DB373    add         esp,0FFFFFFF8
 004DB376    mov         byte ptr [ebp-5],dl
 004DB379    mov         dword ptr [ebp-4],eax
 004DB37C    pop         ecx
 004DB37D    pop         ecx
 004DB37E    pop         ebp
 004DB37F    ret
end;*}

//004DB380
{*procedure sub_004DB380(?:?);
begin
 004DB380    push        ebp
 004DB381    mov         ebp,esp
 004DB383    add         esp,0FFFFFFF8
 004DB386    mov         dword ptr [ebp-8],edx
 004DB389    mov         dword ptr [ebp-4],eax
 004DB38C    pop         ecx
 004DB38D    pop         ecx
 004DB38E    pop         ebp
 004DB38F    ret
end;*}

//004DB390
{*procedure sub_004DB390(?:?);
begin
 004DB390    push        ebp
 004DB391    mov         ebp,esp
 004DB393    add         esp,0FFFFFFF8
 004DB396    mov         dword ptr [ebp-8],edx
 004DB399    mov         dword ptr [ebp-4],eax
 004DB39C    pop         ecx
 004DB39D    pop         ecx
 004DB39E    pop         ebp
 004DB39F    ret
end;*}

//004DB3A0
{*procedure sub_004DB3A0(?:?);
begin
 004DB3A0    push        ebp
 004DB3A1    mov         ebp,esp
 004DB3A3    add         esp,0FFFFFFF8
 004DB3A6    mov         dword ptr [ebp-8],edx
 004DB3A9    mov         dword ptr [ebp-4],eax
 004DB3AC    pop         ecx
 004DB3AD    pop         ecx
 004DB3AE    pop         ebp
 004DB3AF    ret
end;*}

//004DB3B0
{*procedure sub_004DB3B0(?:?);
begin
 004DB3B0    push        ebp
 004DB3B1    mov         ebp,esp
 004DB3B3    add         esp,0FFFFFFF8
 004DB3B6    mov         byte ptr [ebp-5],dl
 004DB3B9    mov         dword ptr [ebp-4],eax
 004DB3BC    pop         ecx
 004DB3BD    pop         ecx
 004DB3BE    pop         ebp
 004DB3BF    ret
end;*}

//004DB3C0
{*procedure sub_004DB3C0(?:?);
begin
 004DB3C0    push        ebp
 004DB3C1    mov         ebp,esp
 004DB3C3    add         esp,0FFFFFFF8
 004DB3C6    mov         dword ptr [ebp-8],edx
 004DB3C9    mov         dword ptr [ebp-4],eax
 004DB3CC    pop         ecx
 004DB3CD    pop         ecx
 004DB3CE    pop         ebp
 004DB3CF    ret
end;*}

//004DB3D0
{*procedure sub_004DB3D0(?:?);
begin
 004DB3D0    push        ebp
 004DB3D1    mov         ebp,esp
 004DB3D3    add         esp,0FFFFFFF8
 004DB3D6    mov         dword ptr [ebp-8],edx
 004DB3D9    mov         dword ptr [ebp-4],eax
 004DB3DC    pop         ecx
 004DB3DD    pop         ecx
 004DB3DE    pop         ebp
 004DB3DF    ret
end;*}

//004DB3E0
{*procedure sub_004DB3E0(?:?);
begin
 004DB3E0    push        ebp
 004DB3E1    mov         ebp,esp
 004DB3E3    add         esp,0FFFFFFF8
 004DB3E6    mov         word ptr [ebp-6],dx
 004DB3EA    mov         dword ptr [ebp-4],eax
 004DB3ED    pop         ecx
 004DB3EE    pop         ecx
 004DB3EF    pop         ebp
 004DB3F0    ret
end;*}

//004DB3F4
{*procedure sub_004DB3F4(?:?);
begin
 004DB3F4    push        ebp
 004DB3F5    mov         ebp,esp
 004DB3F7    add         esp,0FFFFFFF8
 004DB3FA    mov         byte ptr [ebp-5],dl
 004DB3FD    mov         dword ptr [ebp-4],eax
 004DB400    pop         ecx
 004DB401    pop         ecx
 004DB402    pop         ebp
 004DB403    ret
end;*}

//004DB404
constructor TCustomAction.Create;
begin
{*
 004DB404    push        ebp
 004DB405    mov         ebp,esp
 004DB407    add         esp,0FFFFFFF4
 004DB40A    test        dl,dl
>004DB40C    je          004DB416
 004DB40E    add         esp,0FFFFFFF0
 004DB411    call        @ClassCreate
 004DB416    mov         dword ptr [ebp-0C],ecx
 004DB419    mov         byte ptr [ebp-5],dl
 004DB41C    mov         dword ptr [ebp-4],eax
 004DB41F    mov         ecx,dword ptr [ebp-0C]
 004DB422    xor         edx,edx
 004DB424    mov         eax,dword ptr [ebp-4]
 004DB427    call        00483D34
 004DB42C    mov         eax,dword ptr [ebp-4]
 004DB42F    mov         byte ptr [eax+6A],1;TCustomAction.FEnabled:Boolean
 004DB433    mov         eax,dword ptr [ebp-4]
 004DB436    mov         dword ptr [eax+80],0FFFFFFFF;TCustomAction.FImageIndex:TImageIndex
 004DB440    mov         eax,dword ptr [ebp-4]
 004DB443    mov         byte ptr [eax+86],1;TCustomAction.FVisible:Boolean
 004DB44A    mov         eax,dword ptr [ebp-4]
 004DB44D    xor         edx,edx
 004DB44F    mov         dword ptr [eax+90],edx;TCustomAction.FSecondaryShortCuts:TShortCutList
 004DB455    mov         eax,dword ptr [ebp-4]
 004DB458    cmp         byte ptr [ebp-5],0
>004DB45C    je          004DB46D
 004DB45E    call        @AfterConstruction
 004DB463    pop         dword ptr fs:[0]
 004DB46A    add         esp,0C
 004DB46D    mov         eax,dword ptr [ebp-4]
 004DB470    mov         esp,ebp
 004DB472    pop         ebp
 004DB473    ret
*}
end;

//004DB474
destructor TCustomAction.Destroy;
begin
{*
 004DB474    push        ebp
 004DB475    mov         ebp,esp
 004DB477    add         esp,0FFFFFFF8
 004DB47A    call        @BeforeDestruction
 004DB47F    mov         byte ptr [ebp-5],dl
 004DB482    mov         dword ptr [ebp-4],eax
 004DB485    mov         eax,dword ptr [ebp-4]
 004DB488    mov         eax,dword ptr [eax+98]
 004DB48E    call        TObject.Free
 004DB493    mov         eax,dword ptr [ebp-4]
 004DB496    mov         eax,dword ptr [eax+9C]
 004DB49C    call        TObject.Free
 004DB4A1    mov         eax,dword ptr [ebp-4]
 004DB4A4    cmp         dword ptr [eax+90],0
>004DB4AB    je          004DB4BA
 004DB4AD    mov         eax,dword ptr [ebp-4]
 004DB4B0    add         eax,90
 004DB4B5    call        FreeAndNil
 004DB4BA    mov         dl,byte ptr [ebp-5]
 004DB4BD    and         dl,0FC
 004DB4C0    mov         eax,dword ptr [ebp-4]
 004DB4C3    call        TContainedAction.Destroy
 004DB4C8    cmp         byte ptr [ebp-5],0
>004DB4CC    jle         004DB4D6
 004DB4CE    mov         eax,dword ptr [ebp-4]
 004DB4D1    call        @ClassDestroy
 004DB4D6    pop         ecx
 004DB4D7    pop         ecx
 004DB4D8    pop         ebp
 004DB4D9    ret
*}
end;

//004DB4DC
{*procedure sub_004DB4DC(?:?);
begin
 004DB4DC    push        ebp
 004DB4DD    mov         ebp,esp
 004DB4DF    add         esp,0FFFFFFF8
 004DB4E2    mov         dword ptr [ebp-8],edx
 004DB4E5    mov         dword ptr [ebp-4],eax
 004DB4E8    mov         eax,dword ptr [ebp-8]
 004DB4EB    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB4F1    call        @IsClass
 004DB4F6    test        al,al
>004DB4F8    je          004DB5AF
 004DB4FE    mov         eax,dword ptr [ebp-4]
 004DB501    mov         edx,dword ptr [eax+64];TCustomAction.FCaption:String
 004DB504    mov         eax,dword ptr [ebp-8]
 004DB507    call        TVirtualListAction.SetCaption
 004DB50C    mov         eax,dword ptr [ebp-4]
 004DB50F    mov         dl,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 004DB512    mov         eax,dword ptr [ebp-8]
 004DB515    call        TAction.SetChecked
 004DB51A    mov         eax,dword ptr [ebp-4]
 004DB51D    mov         dl,byte ptr [eax+6A];TCustomAction.FEnabled:Boolean
 004DB520    mov         eax,dword ptr [ebp-8]
 004DB523    call        TVirtualListAction.SetEnabled
 004DB528    mov         eax,dword ptr [ebp-4]
 004DB52B    mov         edx,dword ptr [eax+74];TCustomAction.FHelpContext:THelpContext
 004DB52E    mov         eax,dword ptr [ebp-8]
 004DB531    mov         ecx,dword ptr [eax]
 004DB533    call        dword ptr [ecx+48]
 004DB536    mov         eax,dword ptr [ebp-4]
 004DB539    mov         edx,dword ptr [eax+7C];TCustomAction.FHint:String
 004DB53C    mov         eax,dword ptr [ebp-8]
 004DB53F    call        TVirtualListAction.SetHint
 004DB544    mov         eax,dword ptr [ebp-4]
 004DB547    mov         edx,dword ptr [eax+80];TCustomAction.FImageIndex:TImageIndex
 004DB54D    mov         eax,dword ptr [ebp-8]
 004DB550    call        TFileExit.SetImageIndex
 004DB555    mov         eax,dword ptr [ebp-4]
 004DB558    mov         dx,word ptr [eax+84];TCustomAction.FShortCut:TShortCut
 004DB55F    mov         eax,dword ptr [ebp-8]
 004DB562    call        TVirtualListAction.SetShortCut
 004DB567    mov         eax,dword ptr [ebp-4]
 004DB56A    mov         dl,byte ptr [eax+86];TCustomAction.FVisible:Boolean
 004DB570    mov         eax,dword ptr [ebp-8]
 004DB573    call        TVirtualListAction.SetVisible
 004DB578    mov         eax,dword ptr [ebp-4]
 004DB57B    push        dword ptr [eax+44];TCustomAction.?f44:dword
 004DB57E    push        dword ptr [eax+40];TCustomAction.FOnExecute:TNotifyEvent
 004DB581    mov         eax,dword ptr [ebp-8]
 004DB584    mov         edx,dword ptr [eax]
 004DB586    call        dword ptr [edx+34]
 004DB589    mov         eax,dword ptr [ebp-8]
 004DB58C    mov         edx,dword ptr [ebp-4]
 004DB58F    mov         ecx,dword ptr [edx+48];TCustomAction.FOnUpdate:TNotifyEvent
 004DB592    mov         dword ptr [eax+48],ecx
 004DB595    mov         ecx,dword ptr [edx+4C];TCustomAction.?f4C:dword
 004DB598    mov         dword ptr [eax+4C],ecx
 004DB59B    mov         eax,dword ptr [ebp-8]
 004DB59E    mov         edx,dword ptr [ebp-4]
 004DB5A1    mov         ecx,dword ptr [edx+38];TCustomAction.FOnChange:TNotifyEvent
 004DB5A4    mov         dword ptr [eax+38],ecx
 004DB5A7    mov         ecx,dword ptr [edx+3C];TCustomAction.?f3C:dword
 004DB5AA    mov         dword ptr [eax+3C],ecx
>004DB5AD    jmp         004DB5BA
 004DB5AF    mov         edx,dword ptr [ebp-8]
 004DB5B2    mov         eax,dword ptr [ebp-4]
 004DB5B5    call        004791AC
 004DB5BA    pop         ecx
 004DB5BB    pop         ecx
 004DB5BC    pop         ebp
 004DB5BD    ret
end;*}

//004DB5C0
procedure TAction.SetAutoCheck(Value:Boolean);
begin
{*
 004DB5C0    push        ebp
 004DB5C1    mov         ebp,esp
 004DB5C3    add         esp,0FFFFFFF0
 004DB5C6    mov         byte ptr [ebp-5],dl
 004DB5C9    mov         dword ptr [ebp-4],eax
 004DB5CC    mov         al,byte ptr [ebp-5]
 004DB5CF    mov         edx,dword ptr [ebp-4]
 004DB5D2    cmp         al,byte ptr [edx+95];TAction.FAutoCheck:Boolean
>004DB5D8    je          004DB642
 004DB5DA    mov         eax,dword ptr [ebp-4]
 004DB5DD    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 004DB5E0    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DB5E3    dec         eax
 004DB5E4    test        eax,eax
>004DB5E6    jl          004DB62E
 004DB5E8    inc         eax
 004DB5E9    mov         dword ptr [ebp-10],eax
 004DB5EC    mov         dword ptr [ebp-0C],0
 004DB5F3    mov         edx,dword ptr [ebp-0C]
 004DB5F6    mov         eax,dword ptr [ebp-4]
 004DB5F9    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 004DB5FC    call        TList.Get
 004DB601    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DB607    call        @IsClass
 004DB60C    test        al,al
>004DB60E    je          004DB626
 004DB610    mov         edx,dword ptr [ebp-0C]
 004DB613    mov         eax,dword ptr [ebp-4]
 004DB616    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 004DB619    call        TList.Get
 004DB61E    mov         dl,byte ptr [ebp-5]
 004DB621    mov         ecx,dword ptr [eax]
 004DB623    call        dword ptr [ecx+48]
 004DB626    inc         dword ptr [ebp-0C]
 004DB629    dec         dword ptr [ebp-10]
>004DB62C    jne         004DB5F3
 004DB62E    mov         al,byte ptr [ebp-5]
 004DB631    mov         edx,dword ptr [ebp-4]
 004DB634    mov         byte ptr [edx+95],al;TAction.FAutoCheck:Boolean
 004DB63A    mov         eax,dword ptr [ebp-4]
 004DB63D    mov         edx,dword ptr [eax]
 004DB63F    call        dword ptr [edx+30];TAction.sub_00483F5C
 004DB642    mov         esp,ebp
 004DB644    pop         ebp
 004DB645    ret
*}
end;

//004DB648
procedure TVirtualListAction.SetCaption(Value:String);
begin
{*
 004DB648    push        ebp
 004DB649    mov         ebp,esp
 004DB64B    add         esp,0FFFFFFEC
 004DB64E    mov         dword ptr [ebp-8],edx
 004DB651    mov         dword ptr [ebp-4],eax
 004DB654    mov         eax,dword ptr [ebp-8]
 004DB657    mov         edx,dword ptr [ebp-4]
 004DB65A    mov         edx,dword ptr [edx+64];TVirtualListAction.FCaption:String
 004DB65D    call        @LStrCmp
>004DB662    je          004DB6C9
 004DB664    mov         eax,dword ptr [ebp-4]
 004DB667    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DB66A    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DB66D    dec         eax
 004DB66E    test        eax,eax
>004DB670    jl          004DB6B3
 004DB672    inc         eax
 004DB673    mov         dword ptr [ebp-14],eax
 004DB676    mov         dword ptr [ebp-0C],0
 004DB67D    mov         eax,dword ptr [ebp-4]
 004DB680    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DB683    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DB686    mov         edx,dword ptr [ebp-0C]
 004DB689    mov         eax,dword ptr [eax+edx*4]
 004DB68C    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DB692    call        @AsClass
 004DB697    mov         dword ptr [ebp-10],eax
 004DB69A    cmp         dword ptr [ebp-10],0
>004DB69E    je          004DB6AB
 004DB6A0    mov         edx,dword ptr [ebp-8]
 004DB6A3    mov         eax,dword ptr [ebp-10]
 004DB6A6    mov         ecx,dword ptr [eax]
 004DB6A8    call        dword ptr [ecx+4C];TActionLink.sub_004DB350
 004DB6AB    inc         dword ptr [ebp-0C]
 004DB6AE    dec         dword ptr [ebp-14]
>004DB6B1    jne         004DB67D
 004DB6B3    mov         eax,dword ptr [ebp-4]
 004DB6B6    add         eax,64;TVirtualListAction.FCaption:String
 004DB6B9    mov         edx,dword ptr [ebp-8]
 004DB6BC    call        @LStrAsg
 004DB6C1    mov         eax,dword ptr [ebp-4]
 004DB6C4    mov         edx,dword ptr [eax]
 004DB6C6    call        dword ptr [edx+30];TVirtualListAction.sub_00483F5C
 004DB6C9    mov         esp,ebp
 004DB6CB    pop         ebp
 004DB6CC    ret
*}
end;

//004DB6D0
procedure TAction.SetChecked(Value:Boolean);
begin
{*
 004DB6D0    push        ebp
 004DB6D1    mov         ebp,esp
 004DB6D3    add         esp,0FFFFFFE8
 004DB6D6    mov         byte ptr [ebp-5],dl
 004DB6D9    mov         dword ptr [ebp-4],eax
 004DB6DC    mov         eax,dword ptr [ebp-4]
 004DB6DF    cmp         byte ptr [eax+68],0;TAction.FChecking:Boolean
>004DB6E3    jne         004DB801
 004DB6E9    mov         eax,dword ptr [ebp-4]
 004DB6EC    mov         byte ptr [eax+68],1;TAction.FChecking:Boolean
 004DB6F0    xor         eax,eax
 004DB6F2    push        ebp
 004DB6F3    push        4DB7FA
 004DB6F8    push        dword ptr fs:[eax]
 004DB6FB    mov         dword ptr fs:[eax],esp
 004DB6FE    mov         eax,dword ptr [ebp-4]
 004DB701    mov         al,byte ptr [eax+69];TAction.FChecked:Boolean
 004DB704    cmp         al,byte ptr [ebp-5]
>004DB707    je          004DB7E5
 004DB70D    mov         eax,dword ptr [ebp-4]
 004DB710    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 004DB713    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DB716    dec         eax
 004DB717    test        eax,eax
>004DB719    jl          004DB75C
 004DB71B    inc         eax
 004DB71C    mov         dword ptr [ebp-18],eax
 004DB71F    mov         dword ptr [ebp-0C],0
 004DB726    mov         eax,dword ptr [ebp-4]
 004DB729    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 004DB72C    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DB72F    mov         edx,dword ptr [ebp-0C]
 004DB732    mov         eax,dword ptr [eax+edx*4]
 004DB735    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DB73B    call        @AsClass
 004DB740    mov         dword ptr [ebp-10],eax
 004DB743    cmp         dword ptr [ebp-10],0
>004DB747    je          004DB754
 004DB749    mov         dl,byte ptr [ebp-5]
 004DB74C    mov         eax,dword ptr [ebp-10]
 004DB74F    mov         ecx,dword ptr [eax]
 004DB751    call        dword ptr [ecx+50];TActionLink.sub_004DB360
 004DB754    inc         dword ptr [ebp-0C]
 004DB757    dec         dword ptr [ebp-18]
>004DB75A    jne         004DB726
 004DB75C    mov         eax,dword ptr [ebp-4]
 004DB75F    mov         dl,byte ptr [ebp-5]
 004DB762    mov         byte ptr [eax+69],dl;TAction.FChecked:Boolean
 004DB765    mov         eax,dword ptr [ebp-4]
 004DB768    cmp         dword ptr [eax+6C],0;TAction.FGroupIndex:Integer
>004DB76C    jle         004DB7DD
 004DB76E    mov         eax,dword ptr [ebp-4]
 004DB771    cmp         byte ptr [eax+69],0;TAction.FChecked:Boolean
>004DB775    je          004DB7DD
 004DB777    mov         eax,dword ptr [ebp-4]
 004DB77A    mov         eax,dword ptr [eax+5C];TAction.FActionList:TCustomActionList
 004DB77D    call        004DADD4
 004DB782    dec         eax
 004DB783    test        eax,eax
>004DB785    jl          004DB7DD
 004DB787    inc         eax
 004DB788    mov         dword ptr [ebp-18],eax
 004DB78B    mov         dword ptr [ebp-0C],0
 004DB792    mov         eax,dword ptr [ebp-4]
 004DB795    mov         eax,dword ptr [eax+5C];TAction.FActionList:TCustomActionList
 004DB798    mov         edx,dword ptr [ebp-0C]
 004DB79B    call        004DADB0
 004DB7A0    mov         dword ptr [ebp-14],eax
 004DB7A3    mov         eax,dword ptr [ebp-14]
 004DB7A6    cmp         eax,dword ptr [ebp-4]
>004DB7A9    je          004DB7D5
 004DB7AB    mov         eax,dword ptr [ebp-14]
 004DB7AE    mov         edx,dword ptr ds:[4DA408];TCustomAction
 004DB7B4    call        @IsClass
 004DB7B9    test        al,al
>004DB7BB    je          004DB7D5
 004DB7BD    mov         eax,dword ptr [ebp-14]
 004DB7C0    mov         eax,dword ptr [eax+6C]
 004DB7C3    mov         edx,dword ptr [ebp-4]
 004DB7C6    cmp         eax,dword ptr [edx+6C];TAction.FGroupIndex:Integer
>004DB7C9    jne         004DB7D5
 004DB7CB    xor         edx,edx
 004DB7CD    mov         eax,dword ptr [ebp-14]
 004DB7D0    call        TAction.SetChecked
 004DB7D5    inc         dword ptr [ebp-0C]
 004DB7D8    dec         dword ptr [ebp-18]
>004DB7DB    jne         004DB792
 004DB7DD    mov         eax,dword ptr [ebp-4]
 004DB7E0    mov         edx,dword ptr [eax]
 004DB7E2    call        dword ptr [edx+30];TAction.sub_00483F5C
 004DB7E5    xor         eax,eax
 004DB7E7    pop         edx
 004DB7E8    pop         ecx
 004DB7E9    pop         ecx
 004DB7EA    mov         dword ptr fs:[eax],edx
 004DB7ED    push        4DB801
 004DB7F2    mov         eax,dword ptr [ebp-4]
 004DB7F5    mov         byte ptr [eax+68],0;TAction.FChecking:Boolean
 004DB7F9    ret
>004DB7FA    jmp         @HandleFinally
>004DB7FF    jmp         004DB7F2
 004DB801    mov         esp,ebp
 004DB803    pop         ebp
 004DB804    ret
*}
end;

//004DB808
procedure TVirtualListAction.SetEnabled(Value:Boolean);
begin
{*
 004DB808    push        ebp
 004DB809    mov         ebp,esp
 004DB80B    add         esp,0FFFFFFEC
 004DB80E    mov         byte ptr [ebp-5],dl
 004DB811    mov         dword ptr [ebp-4],eax
 004DB814    mov         al,byte ptr [ebp-5]
 004DB817    mov         edx,dword ptr [ebp-4]
 004DB81A    cmp         al,byte ptr [edx+6A];TVirtualListAction.FEnabled:Boolean
>004DB81D    je          004DB8B3
 004DB823    mov         eax,dword ptr [ebp-4]
 004DB826    cmp         dword ptr [eax+5C],0;TVirtualListAction.FActionList:TCustomActionList
>004DB82A    je          004DB853
 004DB82C    mov         eax,dword ptr [ebp-4]
 004DB82F    mov         eax,dword ptr [eax+5C];TVirtualListAction.FActionList:TCustomActionList
 004DB832    cmp         byte ptr [eax+58],1;TCustomActionList.FState:TActionListState
>004DB836    jne         004DB843
 004DB838    mov         al,byte ptr [ebp-5]
 004DB83B    mov         edx,dword ptr [ebp-4]
 004DB83E    mov         byte ptr [edx+6A],al;TVirtualListAction.FEnabled:Boolean
>004DB841    jmp         004DB8B3
 004DB843    mov         eax,dword ptr [ebp-4]
 004DB846    mov         eax,dword ptr [eax+5C];TVirtualListAction.FActionList:TCustomActionList
 004DB849    cmp         byte ptr [eax+58],2;TCustomActionList.FState:TActionListState
>004DB84D    jne         004DB853
 004DB84F    mov         byte ptr [ebp-5],1
 004DB853    mov         eax,dword ptr [ebp-4]
 004DB856    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DB859    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DB85C    dec         eax
 004DB85D    test        eax,eax
>004DB85F    jl          004DB8A2
 004DB861    inc         eax
 004DB862    mov         dword ptr [ebp-14],eax
 004DB865    mov         dword ptr [ebp-0C],0
 004DB86C    mov         eax,dword ptr [ebp-4]
 004DB86F    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DB872    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DB875    mov         edx,dword ptr [ebp-0C]
 004DB878    mov         eax,dword ptr [eax+edx*4]
 004DB87B    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DB881    call        @AsClass
 004DB886    mov         dword ptr [ebp-10],eax
 004DB889    cmp         dword ptr [ebp-10],0
>004DB88D    je          004DB89A
 004DB88F    mov         dl,byte ptr [ebp-5]
 004DB892    mov         eax,dword ptr [ebp-10]
 004DB895    mov         ecx,dword ptr [eax]
 004DB897    call        dword ptr [ecx+54];TActionLink.sub_004DB370
 004DB89A    inc         dword ptr [ebp-0C]
 004DB89D    dec         dword ptr [ebp-14]
>004DB8A0    jne         004DB86C
 004DB8A2    mov         al,byte ptr [ebp-5]
 004DB8A5    mov         edx,dword ptr [ebp-4]
 004DB8A8    mov         byte ptr [edx+6A],al;TVirtualListAction.FEnabled:Boolean
 004DB8AB    mov         eax,dword ptr [ebp-4]
 004DB8AE    mov         edx,dword ptr [eax]
 004DB8B0    call        dword ptr [edx+30];TVirtualListAction.sub_00483F5C
 004DB8B3    mov         esp,ebp
 004DB8B5    pop         ebp
 004DB8B6    ret
*}
end;

//004DB8B8
procedure TAction.SetGroupIndex(Value:Integer);
begin
{*
 004DB8B8    push        ebp
 004DB8B9    mov         ebp,esp
 004DB8BB    add         esp,0FFFFFFEC
 004DB8BE    mov         dword ptr [ebp-8],edx
 004DB8C1    mov         dword ptr [ebp-4],eax
 004DB8C4    mov         eax,dword ptr [ebp-8]
 004DB8C7    mov         edx,dword ptr [ebp-4]
 004DB8CA    cmp         eax,dword ptr [edx+6C];TAction.FGroupIndex:Integer
>004DB8CD    je          004DB92F
 004DB8CF    mov         eax,dword ptr [ebp-8]
 004DB8D2    mov         edx,dword ptr [ebp-4]
 004DB8D5    mov         dword ptr [edx+6C],eax;TAction.FGroupIndex:Integer
 004DB8D8    mov         eax,dword ptr [ebp-4]
 004DB8DB    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 004DB8DE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DB8E1    dec         eax
 004DB8E2    test        eax,eax
>004DB8E4    jl          004DB927
 004DB8E6    inc         eax
 004DB8E7    mov         dword ptr [ebp-14],eax
 004DB8EA    mov         dword ptr [ebp-0C],0
 004DB8F1    mov         eax,dword ptr [ebp-4]
 004DB8F4    mov         eax,dword ptr [eax+50];TAction.FClients:TList
 004DB8F7    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DB8FA    mov         edx,dword ptr [ebp-0C]
 004DB8FD    mov         eax,dword ptr [eax+edx*4]
 004DB900    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DB906    call        @AsClass
 004DB90B    mov         dword ptr [ebp-10],eax
 004DB90E    cmp         dword ptr [ebp-10],0
>004DB912    je          004DB91F
 004DB914    mov         edx,dword ptr [ebp-8]
 004DB917    mov         eax,dword ptr [ebp-10]
 004DB91A    mov         ecx,dword ptr [eax]
 004DB91C    call        dword ptr [ecx+58];TActionLink.sub_004DB380
 004DB91F    inc         dword ptr [ebp-0C]
 004DB922    dec         dword ptr [ebp-14]
>004DB925    jne         004DB8F1
 004DB927    mov         eax,dword ptr [ebp-4]
 004DB92A    mov         edx,dword ptr [eax]
 004DB92C    call        dword ptr [edx+30];TAction.sub_00483F5C
 004DB92F    mov         esp,ebp
 004DB931    pop         ebp
 004DB932    ret
*}
end;

//004DB934
procedure TFileExit.SetHelpType(Value:THelpType);
begin
{*
 004DB934    push        ebp
 004DB935    mov         ebp,esp
 004DB937    add         esp,0FFFFFFF0
 004DB93A    mov         byte ptr [ebp-5],dl
 004DB93D    mov         dword ptr [ebp-4],eax
 004DB940    mov         al,byte ptr [ebp-5]
 004DB943    mov         edx,dword ptr [ebp-4]
 004DB946    cmp         al,byte ptr [edx+70];TFileExit.FHelpType:THelpType
>004DB949    je          004DB9B0
 004DB94B    mov         eax,dword ptr [ebp-4]
 004DB94E    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 004DB951    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DB954    dec         eax
 004DB955    test        eax,eax
>004DB957    jl          004DB99F
 004DB959    inc         eax
 004DB95A    mov         dword ptr [ebp-10],eax
 004DB95D    mov         dword ptr [ebp-0C],0
 004DB964    mov         edx,dword ptr [ebp-0C]
 004DB967    mov         eax,dword ptr [ebp-4]
 004DB96A    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 004DB96D    call        TList.Get
 004DB972    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DB978    call        @IsClass
 004DB97D    test        al,al
>004DB97F    je          004DB997
 004DB981    mov         edx,dword ptr [ebp-0C]
 004DB984    mov         eax,dword ptr [ebp-4]
 004DB987    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 004DB98A    call        TList.Get
 004DB98F    mov         dl,byte ptr [ebp-5]
 004DB992    mov         ecx,dword ptr [eax]
 004DB994    call        dword ptr [ecx+64]
 004DB997    inc         dword ptr [ebp-0C]
 004DB99A    dec         dword ptr [ebp-10]
>004DB99D    jne         004DB964
 004DB99F    mov         al,byte ptr [ebp-5]
 004DB9A2    mov         edx,dword ptr [ebp-4]
 004DB9A5    mov         byte ptr [edx+70],al;TFileExit.FHelpType:THelpType
 004DB9A8    mov         eax,dword ptr [ebp-4]
 004DB9AB    mov         edx,dword ptr [eax]
 004DB9AD    call        dword ptr [edx+30];TFileExit.sub_00483F5C
 004DB9B0    mov         esp,ebp
 004DB9B2    pop         ebp
 004DB9B3    ret
*}
end;

//004DB9B4
procedure TFileExit.SetHelpKeyword(Value:String);
begin
{*
 004DB9B4    push        ebp
 004DB9B5    mov         ebp,esp
 004DB9B7    add         esp,0FFFFFFF0
 004DB9BA    mov         dword ptr [ebp-8],edx
 004DB9BD    mov         dword ptr [ebp-4],eax
 004DB9C0    mov         eax,dword ptr [ebp-8]
 004DB9C3    mov         edx,dword ptr [ebp-4]
 004DB9C6    mov         edx,dword ptr [edx+78];TFileExit.FHelpKeyword:String
 004DB9C9    call        @LStrCmp
>004DB9CE    je          004DBA3A
 004DB9D0    mov         eax,dword ptr [ebp-4]
 004DB9D3    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 004DB9D6    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DB9D9    dec         eax
 004DB9DA    test        eax,eax
>004DB9DC    jl          004DBA24
 004DB9DE    inc         eax
 004DB9DF    mov         dword ptr [ebp-10],eax
 004DB9E2    mov         dword ptr [ebp-0C],0
 004DB9E9    mov         edx,dword ptr [ebp-0C]
 004DB9EC    mov         eax,dword ptr [ebp-4]
 004DB9EF    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 004DB9F2    call        TList.Get
 004DB9F7    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DB9FD    call        @IsClass
 004DBA02    test        al,al
>004DBA04    je          004DBA1C
 004DBA06    mov         edx,dword ptr [ebp-0C]
 004DBA09    mov         eax,dword ptr [ebp-4]
 004DBA0C    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 004DBA0F    call        TList.Get
 004DBA14    mov         edx,dword ptr [ebp-8]
 004DBA17    mov         ecx,dword ptr [eax]
 004DBA19    call        dword ptr [ecx+60]
 004DBA1C    inc         dword ptr [ebp-0C]
 004DBA1F    dec         dword ptr [ebp-10]
>004DBA22    jne         004DB9E9
 004DBA24    mov         eax,dword ptr [ebp-4]
 004DBA27    add         eax,78;TFileExit.FHelpKeyword:String
 004DBA2A    mov         edx,dword ptr [ebp-8]
 004DBA2D    call        @LStrAsg
 004DBA32    mov         eax,dword ptr [ebp-4]
 004DBA35    mov         edx,dword ptr [eax]
 004DBA37    call        dword ptr [edx+30];TFileExit.sub_00483F5C
 004DBA3A    mov         esp,ebp
 004DBA3C    pop         ebp
 004DBA3D    ret
*}
end;

//004DBA40
procedure TVirtualListAction.SetHelpContext(Value:THelpContext);
begin
{*
 004DBA40    push        ebp
 004DBA41    mov         ebp,esp
 004DBA43    add         esp,0FFFFFFEC
 004DBA46    mov         dword ptr [ebp-8],edx
 004DBA49    mov         dword ptr [ebp-4],eax
 004DBA4C    mov         eax,dword ptr [ebp-8]
 004DBA4F    mov         edx,dword ptr [ebp-4]
 004DBA52    cmp         eax,dword ptr [edx+74];TVirtualListAction.FHelpContext:THelpContext
>004DBA55    je          004DBAB7
 004DBA57    mov         eax,dword ptr [ebp-4]
 004DBA5A    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DBA5D    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DBA60    dec         eax
 004DBA61    test        eax,eax
>004DBA63    jl          004DBAA6
 004DBA65    inc         eax
 004DBA66    mov         dword ptr [ebp-14],eax
 004DBA69    mov         dword ptr [ebp-0C],0
 004DBA70    mov         eax,dword ptr [ebp-4]
 004DBA73    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DBA76    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DBA79    mov         edx,dword ptr [ebp-0C]
 004DBA7C    mov         eax,dword ptr [eax+edx*4]
 004DBA7F    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DBA85    call        @AsClass
 004DBA8A    mov         dword ptr [ebp-10],eax
 004DBA8D    cmp         dword ptr [ebp-10],0
>004DBA91    je          004DBA9E
 004DBA93    mov         edx,dword ptr [ebp-8]
 004DBA96    mov         eax,dword ptr [ebp-10]
 004DBA99    mov         ecx,dword ptr [eax]
 004DBA9B    call        dword ptr [ecx+5C];TActionLink.sub_004DB390
 004DBA9E    inc         dword ptr [ebp-0C]
 004DBAA1    dec         dword ptr [ebp-14]
>004DBAA4    jne         004DBA70
 004DBAA6    mov         eax,dword ptr [ebp-8]
 004DBAA9    mov         edx,dword ptr [ebp-4]
 004DBAAC    mov         dword ptr [edx+74],eax;TVirtualListAction.FHelpContext:THelpContext
 004DBAAF    mov         eax,dword ptr [ebp-4]
 004DBAB2    mov         edx,dword ptr [eax]
 004DBAB4    call        dword ptr [edx+30];TVirtualListAction.sub_00483F5C
 004DBAB7    mov         esp,ebp
 004DBAB9    pop         ebp
 004DBABA    ret
*}
end;

//004DBABC
procedure TVirtualListAction.SetHint(Value:String);
begin
{*
 004DBABC    push        ebp
 004DBABD    mov         ebp,esp
 004DBABF    add         esp,0FFFFFFEC
 004DBAC2    mov         dword ptr [ebp-8],edx
 004DBAC5    mov         dword ptr [ebp-4],eax
 004DBAC8    mov         eax,dword ptr [ebp-8]
 004DBACB    mov         edx,dword ptr [ebp-4]
 004DBACE    mov         edx,dword ptr [edx+7C];TVirtualListAction.FHint:String
 004DBAD1    call        @LStrCmp
>004DBAD6    je          004DBB3D
 004DBAD8    mov         eax,dword ptr [ebp-4]
 004DBADB    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DBADE    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DBAE1    dec         eax
 004DBAE2    test        eax,eax
>004DBAE4    jl          004DBB27
 004DBAE6    inc         eax
 004DBAE7    mov         dword ptr [ebp-14],eax
 004DBAEA    mov         dword ptr [ebp-0C],0
 004DBAF1    mov         eax,dword ptr [ebp-4]
 004DBAF4    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DBAF7    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DBAFA    mov         edx,dword ptr [ebp-0C]
 004DBAFD    mov         eax,dword ptr [eax+edx*4]
 004DBB00    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DBB06    call        @AsClass
 004DBB0B    mov         dword ptr [ebp-10],eax
 004DBB0E    cmp         dword ptr [ebp-10],0
>004DBB12    je          004DBB1F
 004DBB14    mov         edx,dword ptr [ebp-8]
 004DBB17    mov         eax,dword ptr [ebp-10]
 004DBB1A    mov         ecx,dword ptr [eax]
 004DBB1C    call        dword ptr [ecx+68];TActionLink.sub_004DB3C0
 004DBB1F    inc         dword ptr [ebp-0C]
 004DBB22    dec         dword ptr [ebp-14]
>004DBB25    jne         004DBAF1
 004DBB27    mov         eax,dword ptr [ebp-4]
 004DBB2A    add         eax,7C;TVirtualListAction.FHint:String
 004DBB2D    mov         edx,dword ptr [ebp-8]
 004DBB30    call        @LStrAsg
 004DBB35    mov         eax,dword ptr [ebp-4]
 004DBB38    mov         edx,dword ptr [eax]
 004DBB3A    call        dword ptr [edx+30];TVirtualListAction.sub_00483F5C
 004DBB3D    mov         esp,ebp
 004DBB3F    pop         ebp
 004DBB40    ret
*}
end;

//004DBB44
procedure TFileExit.SetImageIndex(Value:TImageIndex);
begin
{*
 004DBB44    push        ebp
 004DBB45    mov         ebp,esp
 004DBB47    add         esp,0FFFFFFEC
 004DBB4A    mov         dword ptr [ebp-8],edx
 004DBB4D    mov         dword ptr [ebp-4],eax
 004DBB50    mov         eax,dword ptr [ebp-8]
 004DBB53    mov         edx,dword ptr [ebp-4]
 004DBB56    cmp         eax,dword ptr [edx+80];TFileExit.FImageIndex:TImageIndex
>004DBB5C    je          004DBBC1
 004DBB5E    mov         eax,dword ptr [ebp-4]
 004DBB61    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 004DBB64    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DBB67    dec         eax
 004DBB68    test        eax,eax
>004DBB6A    jl          004DBBAD
 004DBB6C    inc         eax
 004DBB6D    mov         dword ptr [ebp-14],eax
 004DBB70    mov         dword ptr [ebp-0C],0
 004DBB77    mov         eax,dword ptr [ebp-4]
 004DBB7A    mov         eax,dword ptr [eax+50];TFileExit.FClients:TList
 004DBB7D    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DBB80    mov         edx,dword ptr [ebp-0C]
 004DBB83    mov         eax,dword ptr [eax+edx*4]
 004DBB86    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DBB8C    call        @AsClass
 004DBB91    mov         dword ptr [ebp-10],eax
 004DBB94    cmp         dword ptr [ebp-10],0
>004DBB98    je          004DBBA5
 004DBB9A    mov         edx,dword ptr [ebp-8]
 004DBB9D    mov         eax,dword ptr [ebp-10]
 004DBBA0    mov         ecx,dword ptr [eax]
 004DBBA2    call        dword ptr [ecx+6C];TActionLink.sub_004DB3D0
 004DBBA5    inc         dword ptr [ebp-0C]
 004DBBA8    dec         dword ptr [ebp-14]
>004DBBAB    jne         004DBB77
 004DBBAD    mov         eax,dword ptr [ebp-8]
 004DBBB0    mov         edx,dword ptr [ebp-4]
 004DBBB3    mov         dword ptr [edx+80],eax;TFileExit.FImageIndex:TImageIndex
 004DBBB9    mov         eax,dword ptr [ebp-4]
 004DBBBC    mov         edx,dword ptr [eax]
 004DBBBE    call        dword ptr [edx+30];TFileExit.sub_00483F5C
 004DBBC1    mov         esp,ebp
 004DBBC3    pop         ebp
 004DBBC4    ret
*}
end;

//004DBBC8
procedure TVirtualListAction.SetShortCut(Value:TShortCut);
begin
{*
 004DBBC8    push        ebp
 004DBBC9    mov         ebp,esp
 004DBBCB    add         esp,0FFFFFFEC
 004DBBCE    mov         word ptr [ebp-6],dx
 004DBBD2    mov         dword ptr [ebp-4],eax
 004DBBD5    mov         ax,word ptr [ebp-6]
 004DBBD9    mov         edx,dword ptr [ebp-4]
 004DBBDC    cmp         ax,word ptr [edx+84];TVirtualListAction.FShortCut:TShortCut
>004DBBE3    je          004DBC4B
 004DBBE5    mov         eax,dword ptr [ebp-4]
 004DBBE8    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DBBEB    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DBBEE    dec         eax
 004DBBEF    test        eax,eax
>004DBBF1    jl          004DBC35
 004DBBF3    inc         eax
 004DBBF4    mov         dword ptr [ebp-14],eax
 004DBBF7    mov         dword ptr [ebp-0C],0
 004DBBFE    mov         eax,dword ptr [ebp-4]
 004DBC01    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DBC04    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DBC07    mov         edx,dword ptr [ebp-0C]
 004DBC0A    mov         eax,dword ptr [eax+edx*4]
 004DBC0D    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DBC13    call        @AsClass
 004DBC18    mov         dword ptr [ebp-10],eax
 004DBC1B    cmp         dword ptr [ebp-10],0
>004DBC1F    je          004DBC2D
 004DBC21    mov         dx,word ptr [ebp-6]
 004DBC25    mov         eax,dword ptr [ebp-10]
 004DBC28    mov         ecx,dword ptr [eax]
 004DBC2A    call        dword ptr [ecx+70];TActionLink.sub_004DB3E0
 004DBC2D    inc         dword ptr [ebp-0C]
 004DBC30    dec         dword ptr [ebp-14]
>004DBC33    jne         004DBBFE
 004DBC35    mov         ax,word ptr [ebp-6]
 004DBC39    mov         edx,dword ptr [ebp-4]
 004DBC3C    mov         word ptr [edx+84],ax;TVirtualListAction.FShortCut:TShortCut
 004DBC43    mov         eax,dword ptr [ebp-4]
 004DBC46    mov         edx,dword ptr [eax]
 004DBC48    call        dword ptr [edx+30];TVirtualListAction.sub_00483F5C
 004DBC4B    mov         esp,ebp
 004DBC4D    pop         ebp
 004DBC4E    ret
*}
end;

//004DBC50
procedure TVirtualListAction.SetVisible(Value:Boolean);
begin
{*
 004DBC50    push        ebp
 004DBC51    mov         ebp,esp
 004DBC53    add         esp,0FFFFFFEC
 004DBC56    mov         byte ptr [ebp-5],dl
 004DBC59    mov         dword ptr [ebp-4],eax
 004DBC5C    mov         al,byte ptr [ebp-5]
 004DBC5F    mov         edx,dword ptr [ebp-4]
 004DBC62    cmp         al,byte ptr [edx+86];TVirtualListAction.FVisible:Boolean
>004DBC68    je          004DBCD8
 004DBC6A    mov         eax,dword ptr [ebp-4]
 004DBC6D    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DBC70    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DBC73    dec         eax
 004DBC74    test        eax,eax
>004DBC76    jl          004DBCC4
 004DBC78    inc         eax
 004DBC79    mov         dword ptr [ebp-14],eax
 004DBC7C    mov         dword ptr [ebp-0C],0
 004DBC83    mov         eax,dword ptr [ebp-4]
 004DBC86    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DBC89    mov         eax,dword ptr [eax+4];TList.FList:PPointerList
 004DBC8C    mov         edx,dword ptr [ebp-0C]
 004DBC8F    mov         eax,dword ptr [eax+edx*4]
 004DBC92    mov         edx,dword ptr ds:[4DA818];TActionLink
 004DBC98    call        @AsClass
 004DBC9D    mov         dword ptr [ebp-10],eax
 004DBCA0    cmp         dword ptr [ebp-10],0
>004DBCA4    je          004DBCBC
 004DBCA6    mov         edx,dword ptr [ebp-0C]
 004DBCA9    mov         eax,dword ptr [ebp-4]
 004DBCAC    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004DBCAF    call        TList.Get
 004DBCB4    mov         dl,byte ptr [ebp-5]
 004DBCB7    mov         ecx,dword ptr [eax]
 004DBCB9    call        dword ptr [ecx+74]
 004DBCBC    inc         dword ptr [ebp-0C]
 004DBCBF    dec         dword ptr [ebp-14]
>004DBCC2    jne         004DBC83
 004DBCC4    mov         al,byte ptr [ebp-5]
 004DBCC7    mov         edx,dword ptr [ebp-4]
 004DBCCA    mov         byte ptr [edx+86],al;TVirtualListAction.FVisible:Boolean
 004DBCD0    mov         eax,dword ptr [ebp-4]
 004DBCD3    mov         edx,dword ptr [eax]
 004DBCD5    call        dword ptr [edx+30];TVirtualListAction.sub_00483F5C
 004DBCD8    mov         esp,ebp
 004DBCDA    pop         ebp
 004DBCDB    ret
*}
end;

//004DBCDC
{*procedure sub_004DBCDC(?:?);
begin
 004DBCDC    push        ebp
 004DBCDD    mov         ebp,esp
 004DBCDF    add         esp,0FFFFFFF4
 004DBCE2    mov         dword ptr [ebp-8],edx
 004DBCE5    mov         dword ptr [ebp-4],eax
 004DBCE8    mov         eax,dword ptr [ebp-4]
 004DBCEB    mov         eax,dword ptr [eax+8];TCustomAction.Name:TComponentName
 004DBCEE    mov         edx,dword ptr [ebp-4]
 004DBCF1    mov         edx,dword ptr [edx+64];TCustomAction.FCaption:String
 004DBCF4    call        @LStrCmp
>004DBCF9    jne         004DBD10
 004DBCFB    mov         eax,dword ptr [ebp-4]
 004DBCFE    cmp         dword ptr [eax+4],0;TCustomAction.FOwner:TComponent
>004DBD02    je          004DBD14
 004DBD04    mov         eax,dword ptr [ebp-4]
 004DBD07    mov         eax,dword ptr [eax+4];TCustomAction.FOwner:TComponent
 004DBD0A    test        byte ptr [eax+1C],1;TComponent.FComponentState:TComponentState
>004DBD0E    je          004DBD14
 004DBD10    xor         eax,eax
>004DBD12    jmp         004DBD16
 004DBD14    mov         al,1
 004DBD16    mov         byte ptr [ebp-9],al
 004DBD19    mov         edx,dword ptr [ebp-8]
 004DBD1C    mov         eax,dword ptr [ebp-4]
 004DBD1F    call        TComponent.SetName
 004DBD24    cmp         byte ptr [ebp-9],0
>004DBD28    je          004DBD41
 004DBD2A    mov         eax,dword ptr [ebp-4]
 004DBD2D    mov         eax,dword ptr [eax+50];TCustomAction.FClients:TList
 004DBD30    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>004DBD34    jne         004DBD41
 004DBD36    mov         edx,dword ptr [ebp-8]
 004DBD39    mov         eax,dword ptr [ebp-4]
 004DBD3C    call        TVirtualListAction.SetCaption
 004DBD41    mov         esp,ebp
 004DBD43    pop         ebp
 004DBD44    ret
end;*}

//004DBD48
{*procedure TCustomAction.sub_004DBD48(?:?);
begin
 004DBD48    push        ebp
 004DBD49    mov         ebp,esp
 004DBD4B    add         esp,0FFFFFFF4
 004DBD4E    push        ebx
 004DBD4F    mov         dword ptr [ebp-8],edx
 004DBD52    mov         dword ptr [ebp-4],eax
 004DBD55    mov         byte ptr [ebp-9],1
 004DBD59    mov         eax,dword ptr [ebp-4]
 004DBD5C    cmp         word ptr [eax+8A],0;TCustomAction.?f8A:word
>004DBD64    je          004DBD7B
 004DBD66    lea         ecx,[ebp-9]
 004DBD69    mov         edx,dword ptr [ebp-8]
 004DBD6C    mov         ebx,dword ptr [ebp-4]
 004DBD6F    mov         eax,dword ptr [ebx+8C];TCustomAction.?f8C:dword
 004DBD75    call        dword ptr [ebx+88];TCustomAction.FOnHint
 004DBD7B    mov         al,byte ptr [ebp-9]
 004DBD7E    pop         ebx
 004DBD7F    mov         esp,ebp
 004DBD81    pop         ebp
 004DBD82    ret
end;*}

//004DBD84
procedure TCustomAction.sub_00483E7C;
begin
{*
 004DBD84    push        ebp
 004DBD85    mov         ebp,esp
 004DBD87    add         esp,0FFFFFFF8
 004DBD8A    mov         dword ptr [ebp-4],eax
 004DBD8D    mov         byte ptr [ebp-5],0
 004DBD91    mov         eax,dword ptr [ebp-4]
 004DBD94    cmp         dword ptr [eax+5C],0;TCustomAction.FActionList:TCustomActionList
>004DBD98    je          004DBDA6
 004DBD9A    mov         eax,dword ptr [ebp-4]
 004DBD9D    mov         eax,dword ptr [eax+5C];TCustomAction.FActionList:TCustomActionList
 004DBDA0    cmp         byte ptr [eax+58],0;TCustomActionList.FState:TActionListState
>004DBDA4    jne         004DBE0D
 004DBDA6    mov         eax,dword ptr [ebp-4]
 004DBDA9    mov         edx,dword ptr [eax]
 004DBDAB    call        dword ptr [edx+44];TCustomAction.sub_004DABBC
 004DBDAE    mov         eax,dword ptr [ebp-4]
 004DBDB1    cmp         byte ptr [eax+6A],0;TCustomAction.FEnabled:Boolean
>004DBDB5    je          004DBDEF
 004DBDB7    mov         eax,dword ptr [ebp-4]
 004DBDBA    cmp         byte ptr [eax+95],0;TCustomAction.FAutoCheck:Boolean
>004DBDC1    je          004DBDEF
 004DBDC3    mov         eax,dword ptr [ebp-4]
 004DBDC6    cmp         byte ptr [eax+69],0;TCustomAction.FChecked:Boolean
>004DBDCA    je          004DBDDE
 004DBDCC    mov         eax,dword ptr [ebp-4]
 004DBDCF    cmp         byte ptr [eax+69],0;TCustomAction.FChecked:Boolean
>004DBDD3    je          004DBDEF
 004DBDD5    mov         eax,dword ptr [ebp-4]
 004DBDD8    cmp         dword ptr [eax+6C],0;TCustomAction.FGroupIndex:Integer
>004DBDDC    jne         004DBDEF
 004DBDDE    mov         eax,dword ptr [ebp-4]
 004DBDE1    mov         dl,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 004DBDE4    xor         dl,1
 004DBDE7    mov         eax,dword ptr [ebp-4]
 004DBDEA    call        TAction.SetChecked
 004DBDEF    mov         eax,dword ptr [ebp-4]
 004DBDF2    cmp         byte ptr [eax+6A],0;TCustomAction.FEnabled:Boolean
>004DBDF6    je          004DBE04
 004DBDF8    mov         eax,dword ptr [ebp-4]
 004DBDFB    call        TContainedAction.sub_00483E7C
 004DBE00    test        al,al
>004DBE02    jne         004DBE08
 004DBE04    xor         eax,eax
>004DBE06    jmp         004DBE0A
 004DBE08    mov         al,1
 004DBE0A    mov         byte ptr [ebp-5],al
 004DBE0D    mov         al,byte ptr [ebp-5]
 004DBE10    pop         ecx
 004DBE11    pop         ecx
 004DBE12    pop         ebp
 004DBE13    ret
*}
end;

//004DBE14
{*function TVirtualListAction.GetSecondaryShortCuts:?;
begin
 004DBE14    push        ebp
 004DBE15    mov         ebp,esp
 004DBE17    add         esp,0FFFFFFF8
 004DBE1A    mov         dword ptr [ebp-4],eax
 004DBE1D    mov         eax,dword ptr [ebp-4]
 004DBE20    cmp         dword ptr [eax+90],0;TVirtualListAction.FSecondaryShortCuts:TShortCutList
>004DBE27    jne         004DBE3E
 004DBE29    mov         dl,1
 004DBE2B    mov         eax,[004DA2B0];TShortCutList
 004DBE30    call        TObject.Create;TShortCutList.Create
 004DBE35    mov         edx,dword ptr [ebp-4]
 004DBE38    mov         dword ptr [edx+90],eax;TVirtualListAction.FSecondaryShortCuts:TShortCutList
 004DBE3E    mov         eax,dword ptr [ebp-4]
 004DBE41    mov         eax,dword ptr [eax+90];TVirtualListAction.FSecondaryShortCuts:TShortCutList
 004DBE47    mov         dword ptr [ebp-8],eax
 004DBE4A    mov         eax,dword ptr [ebp-8]
 004DBE4D    pop         ecx
 004DBE4E    pop         ecx
 004DBE4F    pop         ebp
 004DBE50    ret
end;*}

//004DBE54
procedure TVirtualListAction.SetSecondaryShortCuts(Value:TShortCutList);
begin
{*
 004DBE54    push        ebp
 004DBE55    mov         ebp,esp
 004DBE57    add         esp,0FFFFFFF8
 004DBE5A    mov         dword ptr [ebp-8],edx
 004DBE5D    mov         dword ptr [ebp-4],eax
 004DBE60    mov         eax,dword ptr [ebp-4]
 004DBE63    cmp         dword ptr [eax+90],0;TVirtualListAction.FSecondaryShortCuts:TShortCutList
>004DBE6A    jne         004DBE81
 004DBE6C    mov         dl,1
 004DBE6E    mov         eax,[004DA2B0];TShortCutList
 004DBE73    call        TObject.Create;TShortCutList.Create
 004DBE78    mov         edx,dword ptr [ebp-4]
 004DBE7B    mov         dword ptr [edx+90],eax;TVirtualListAction.FSecondaryShortCuts:TShortCutList
 004DBE81    mov         edx,dword ptr [ebp-8]
 004DBE84    mov         eax,dword ptr [ebp-4]
 004DBE87    mov         eax,dword ptr [eax+90];TVirtualListAction.FSecondaryShortCuts:TShortCutList
 004DBE8D    mov         ecx,dword ptr [eax]
 004DBE8F    call        dword ptr [ecx+8];TShortCutList.sub_0047A184
 004DBE92    pop         ecx
 004DBE93    pop         ecx
 004DBE94    pop         ebp
 004DBE95    ret
*}
end;

//004DBE98
function TVirtualListAction.IsStoredSecondaryShortCuts(Value:TShortCutList):Boolean;
begin
{*
 004DBE98    push        ebp
 004DBE99    mov         ebp,esp
 004DBE9B    add         esp,0FFFFFFF8
 004DBE9E    mov         dword ptr [ebp-4],eax
 004DBEA1    mov         eax,dword ptr [ebp-4]
 004DBEA4    cmp         dword ptr [eax+90],0;TVirtualListAction.FSecondaryShortCuts:TShortCutList
>004DBEAB    je          004DBEBF
 004DBEAD    mov         eax,dword ptr [ebp-4]
 004DBEB0    mov         eax,dword ptr [eax+90];TVirtualListAction.FSecondaryShortCuts:TShortCutList
 004DBEB6    mov         edx,dword ptr [eax]
 004DBEB8    call        dword ptr [edx+14];TShortCutList.sub_0047B778
 004DBEBB    test        eax,eax
>004DBEBD    jg          004DBEC3
 004DBEBF    xor         eax,eax
>004DBEC1    jmp         004DBEC5
 004DBEC3    mov         al,1
 004DBEC5    mov         byte ptr [ebp-5],al
 004DBEC8    mov         al,byte ptr [ebp-5]
 004DBECB    pop         ecx
 004DBECC    pop         ecx
 004DBECD    pop         ebp
 004DBECE    ret
*}
end;

//004DBED0
{*function sub_004DBED0:?;
begin
 004DBED0    push        ebp
 004DBED1    mov         ebp,esp
 004DBED3    add         esp,0FFFFFFF8
 004DBED6    push        esi
 004DBED7    mov         dword ptr [ebp-4],eax
 004DBEDA    mov         eax,dword ptr [ebp-4]
 004DBEDD    mov         si,0FFEF
 004DBEE1    call        @CallDynaInst;TCustomAction.sub_00483E7C
 004DBEE6    mov         byte ptr [ebp-5],al
 004DBEE9    mov         al,byte ptr [ebp-5]
 004DBEEC    pop         esi
 004DBEED    pop         ecx
 004DBEEE    pop         ecx
 004DBEEF    pop         ebp
 004DBEF0    ret
end;*}

//004DBEF4
{*function sub_004DBEF4(?:?):?;
begin
 004DBEF4    push        ebp
 004DBEF5    mov         ebp,esp
 004DBEF7    add         esp,0FFFFFFF4
 004DBEFA    push        ebx
 004DBEFB    mov         dword ptr [ebp-8],edx
 004DBEFE    mov         dword ptr [ebp-4],eax
 004DBF01    mov         edx,dword ptr [ebp-8]
 004DBF04    mov         eax,dword ptr [ebp-4]
 004DBF07    call        0047B3A4
 004DBF0C    mov         dword ptr [ebp-0C],eax
 004DBF0F    mov         eax,dword ptr [ebp-8]
 004DBF12    call        004DF3D0
 004DBF17    movzx       ecx,ax
 004DBF1A    mov         edx,dword ptr [ebp-0C]
 004DBF1D    mov         eax,dword ptr [ebp-4]
 004DBF20    mov         ebx,dword ptr [eax]
 004DBF22    call        dword ptr [ebx+24];TShortCutList.sub_0047BA30
 004DBF25    mov         eax,dword ptr [ebp-0C]
 004DBF28    pop         ebx
 004DBF29    mov         esp,ebp
 004DBF2B    pop         ebp
 004DBF2C    ret
end;*}

//004DBF30
constructor sub_004DBF30;
begin
{*
 004DBF30    push        ebp
 004DBF31    mov         ebp,esp
 004DBF33    add         esp,0FFFFFFF4
 004DBF36    test        dl,dl
>004DBF38    je          004DBF42
 004DBF3A    add         esp,0FFFFFFF0
 004DBF3D    call        @ClassCreate
 004DBF42    mov         dword ptr [ebp-0C],ecx
 004DBF45    mov         byte ptr [ebp-5],dl
 004DBF48    mov         dword ptr [ebp-4],eax
 004DBF4B    mov         ecx,dword ptr [ebp-0C]
 004DBF4E    xor         edx,edx
 004DBF50    mov         eax,dword ptr [ebp-4]
 004DBF53    call        TCustomAction.Create
 004DBF58    mov         eax,dword ptr [ebp-4]
 004DBF5B    mov         byte ptr [eax+60],1;TAction.FDisableIfNoHandler:Boolean
 004DBF5F    mov         eax,dword ptr [ebp-4]
 004DBF62    cmp         byte ptr [ebp-5],0
>004DBF66    je          004DBF77
 004DBF68    call        @AfterConstruction
 004DBF6D    pop         dword ptr fs:[0]
 004DBF74    add         esp,0C
 004DBF77    mov         eax,dword ptr [ebp-4]
 004DBF7A    mov         esp,ebp
 004DBF7C    pop         ebp
 004DBF7D    ret
*}
end;

//004DBF80
{*function sub_004DBF80(?:?; ?:?):?;
begin
 004DBF80    push        ebp
 004DBF81    mov         ebp,esp
 004DBF83    add         esp,0FFFFFFEC
 004DBF86    mov         word ptr [ebp-6],dx
 004DBF8A    mov         dword ptr [ebp-4],eax
 004DBF8D    mov         dword ptr [ebp-0C],0FFFFFFFF
 004DBF94    mov         eax,dword ptr [ebp-4]
 004DBF97    mov         edx,dword ptr [eax]
 004DBF99    call        dword ptr [edx+14]
 004DBF9C    dec         eax
 004DBF9D    test        eax,eax
>004DBF9F    jl          004DBFCD
 004DBFA1    inc         eax
 004DBFA2    mov         dword ptr [ebp-14],eax
 004DBFA5    mov         dword ptr [ebp-10],0
 004DBFAC    mov         edx,dword ptr [ebp-10]
 004DBFAF    mov         eax,dword ptr [ebp-4]
 004DBFB2    mov         ecx,dword ptr [eax]
 004DBFB4    call        dword ptr [ecx+18]
 004DBFB7    cmp         ax,word ptr [ebp-6]
>004DBFBB    jne         004DBFC5
 004DBFBD    mov         eax,dword ptr [ebp-10]
 004DBFC0    mov         dword ptr [ebp-0C],eax
>004DBFC3    jmp         004DBFCD
 004DBFC5    inc         dword ptr [ebp-10]
 004DBFC8    dec         dword ptr [ebp-14]
>004DBFCB    jne         004DBFAC
 004DBFCD    mov         eax,dword ptr [ebp-0C]
 004DBFD0    mov         esp,ebp
 004DBFD2    pop         ebp
 004DBFD3    ret
end;*}

Initialization
//004DC004
{*
 004DC004    push        ebp
 004DC005    mov         ebp,esp
 004DC007    sub         dword ptr ds:[55DE2C],1
>004DC00E    jae         004DC030
 004DC010    mov         edx,dword ptr ds:[4C5774];TControl
 004DC016    mov         eax,[004DA048];TCustomActionList
 004DC01B    call        GroupDescendentsWith
 004DC020    mov         edx,dword ptr ds:[4C5774];TControl
 004DC026    mov         eax,[004D9E8C];TContainedAction
 004DC02B    call        GroupDescendentsWith
 004DC030    pop         ebp
 004DC031    ret
*}
Finalization
end.