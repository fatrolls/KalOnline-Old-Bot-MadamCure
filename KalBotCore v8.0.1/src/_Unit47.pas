//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit47;

interface

uses
  SysUtils, Classes;

type
  TSynchroObject = class(TObject)
  public
    procedure v0; virtual;//v0//00492184
    procedure v4; virtual;//v4//00492190
  end;
  THandleObject = class(TSynchroObject)
  public
    f4:dword;//f4
    destructor Destroy; virtual;//0049219C
  end;
  TEvent = class(THandleObject)
  end;
  TSimpleEvent = class(TEvent)
    constructor Create;//004922D4
  end;
  TCriticalSection = class(TSynchroObject)
  public
    //..:?;//f4
    destructor Destroy; virtual;//00492370
    procedure v0; virtual;//v0//004923B0
    procedure v4; virtual;//v4//004923C8
    constructor Create;//00492320
  end;
    procedure sub_00492184;//00492184
    procedure sub_00492190;//00492190
    destructor Destroy;//0049219C
    //constructor sub_004921DC(?:?; ?:?; ?:?);//004921DC
    //function sub_00492240(?:?; ?:?):?;//00492240
    //procedure sub_004922A4(?:?);//004922A4
    //procedure sub_004922BC(?:?);//004922BC
    destructor Destroy;//00492370
    procedure sub_004923B0;//004923B0
    procedure sub_004923C8;//004923C8
    procedure sub_004923E0(?:TCriticalSection);//004923E0
    procedure sub_004923F4(?:TCriticalSection);//004923F4

implementation

//00492184
procedure sub_00492184;
begin
{*
 00492184    push        ebp
 00492185    mov         ebp,esp
 00492187    push        ecx
 00492188    mov         dword ptr [ebp-4],eax
 0049218B    pop         ecx
 0049218C    pop         ebp
 0049218D    ret
*}
end;

//00492190
procedure sub_00492190;
begin
{*
 00492190    push        ebp
 00492191    mov         ebp,esp
 00492193    push        ecx
 00492194    mov         dword ptr [ebp-4],eax
 00492197    pop         ecx
 00492198    pop         ebp
 00492199    ret
*}
end;

//0049219C
destructor THandleObject.Destroy;
begin
{*
 0049219C    push        ebp
 0049219D    mov         ebp,esp
 0049219F    add         esp,0FFFFFFF8
 004921A2    call        @BeforeDestruction
 004921A7    mov         byte ptr [ebp-5],dl
 004921AA    mov         dword ptr [ebp-4],eax
 004921AD    mov         eax,dword ptr [ebp-4]
 004921B0    mov         eax,dword ptr [eax+4];THandleObject..:dword
 004921B3    push        eax
 004921B4    call        kernel32.CloseHandle
 004921B9    mov         dl,byte ptr [ebp-5]
 004921BC    and         dl,0FC
 004921BF    mov         eax,dword ptr [ebp-4]
 004921C2    call        TObject.Destroy
 004921C7    cmp         byte ptr [ebp-5],0
>004921CB    jle         004921D5
 004921CD    mov         eax,dword ptr [ebp-4]
 004921D0    call        @ClassDestroy
 004921D5    pop         ecx
 004921D6    pop         ecx
 004921D7    pop         ebp
 004921D8    ret
*}
end;

//004921DC
{*constructor sub_004921DC(?:?; ?:?; ?:?);
begin
 004921DC    push        ebp
 004921DD    mov         ebp,esp
 004921DF    add         esp,0FFFFFFF4
 004921E2    test        dl,dl
>004921E4    je          004921EE
 004921E6    add         esp,0FFFFFFF0
 004921E9    call        @ClassCreate
 004921EE    mov         dword ptr [ebp-0C],ecx
 004921F1    mov         byte ptr [ebp-5],dl
 004921F4    mov         dword ptr [ebp-4],eax
 004921F7    mov         eax,dword ptr [ebp+8]
 004921FA    call        @LStrToPChar
 004921FF    push        eax
 00492200    cmp         byte ptr [ebp+0C],1
 00492204    cmc
 00492205    sbb         eax,eax
 00492207    push        eax
 00492208    cmp         byte ptr [ebp+10],1
 0049220C    cmc
 0049220D    sbb         eax,eax
 0049220F    push        eax
 00492210    mov         eax,dword ptr [ebp-0C]
 00492213    push        eax
 00492214    call        kernel32.CreateEventA
 00492219    mov         edx,dword ptr [ebp-4]
 0049221C    mov         dword ptr [edx+4],eax
 0049221F    mov         eax,dword ptr [ebp-4]
 00492222    cmp         byte ptr [ebp-5],0
>00492226    je          00492237
 00492228    call        @AfterConstruction
 0049222D    pop         dword ptr fs:[0]
 00492234    add         esp,0C
 00492237    mov         eax,dword ptr [ebp-4]
 0049223A    mov         esp,ebp
 0049223C    pop         ebp
 0049223D    ret         0C
end;*}

//00492240
{*function sub_00492240(?:?; ?:?):?;
begin
 00492240    push        ebp
 00492241    mov         ebp,esp
 00492243    add         esp,0FFFFFFF4
 00492246    mov         dword ptr [ebp-8],edx
 00492249    mov         dword ptr [ebp-4],eax
 0049224C    mov         eax,dword ptr [ebp-8]
 0049224F    push        eax
 00492250    mov         eax,dword ptr [ebp-4]
 00492253    mov         eax,dword ptr [eax+4]
 00492256    push        eax
 00492257    call        kernel32.WaitForSingleObject
 0049225C    sub         eax,0FFFFFFFF
>0049225F    je          00492286
 00492261    dec         eax
>00492262    je          0049227A
 00492264    sub         eax,80
>00492269    je          00492274
 0049226B    sub         eax,82
>00492270    je          00492280
>00492272    jmp         00492297
 00492274    mov         byte ptr [ebp-9],2
>00492278    jmp         0049229B
 0049227A    mov         byte ptr [ebp-9],0
>0049227E    jmp         0049229B
 00492280    mov         byte ptr [ebp-9],1
>00492284    jmp         0049229B
 00492286    mov         byte ptr [ebp-9],3
 0049228A    call        kernel32.GetLastError
 0049228F    mov         edx,dword ptr [ebp-4]
 00492292    mov         dword ptr [edx+8],eax
>00492295    jmp         0049229B
 00492297    mov         byte ptr [ebp-9],3
 0049229B    mov         al,byte ptr [ebp-9]
 0049229E    mov         esp,ebp
 004922A0    pop         ebp
 004922A1    ret
end;*}

//004922A4
{*procedure sub_004922A4(?:?);
begin
 004922A4    push        ebp
 004922A5    mov         ebp,esp
 004922A7    push        ecx
 004922A8    mov         dword ptr [ebp-4],eax
 004922AB    mov         eax,dword ptr [ebp-4]
 004922AE    mov         eax,dword ptr [eax+4]
 004922B1    push        eax
 004922B2    call        kernel32.SetEvent
 004922B7    pop         ecx
 004922B8    pop         ebp
 004922B9    ret
end;*}

//004922BC
{*procedure sub_004922BC(?:?);
begin
 004922BC    push        ebp
 004922BD    mov         ebp,esp
 004922BF    push        ecx
 004922C0    mov         dword ptr [ebp-4],eax
 004922C3    mov         eax,dword ptr [ebp-4]
 004922C6    mov         eax,dword ptr [eax+4]
 004922C9    push        eax
 004922CA    call        kernel32.ResetEvent
 004922CF    pop         ecx
 004922D0    pop         ebp
 004922D1    ret
end;*}

//004922D4
constructor TSimpleEvent.Create;
begin
{*
 004922D4    push        ebp
 004922D5    mov         ebp,esp
 004922D7    add         esp,0FFFFFFF8
 004922DA    test        dl,dl
>004922DC    je          004922E6
 004922DE    add         esp,0FFFFFFF0
 004922E1    call        @ClassCreate
 004922E6    mov         byte ptr [ebp-5],dl
 004922E9    mov         dword ptr [ebp-4],eax
 004922EC    push        1
 004922EE    push        0
 004922F0    push        0
 004922F2    xor         ecx,ecx
 004922F4    xor         edx,edx
 004922F6    mov         eax,dword ptr [ebp-4]
 004922F9    call        004921DC
 004922FE    mov         eax,dword ptr [ebp-4]
 00492301    cmp         byte ptr [ebp-5],0
>00492305    je          00492316
 00492307    call        @AfterConstruction
 0049230C    pop         dword ptr fs:[0]
 00492313    add         esp,0C
 00492316    mov         eax,dword ptr [ebp-4]
 00492319    pop         ecx
 0049231A    pop         ecx
 0049231B    pop         ebp
 0049231C    ret
*}
end;

//00492320
constructor TCriticalSection.Create;
begin
{*
 00492320    push        ebp
 00492321    mov         ebp,esp
 00492323    add         esp,0FFFFFFF8
 00492326    test        dl,dl
>00492328    je          00492332
 0049232A    add         esp,0FFFFFFF0
 0049232D    call        @ClassCreate
 00492332    mov         byte ptr [ebp-5],dl
 00492335    mov         dword ptr [ebp-4],eax
 00492338    xor         edx,edx
 0049233A    mov         eax,dword ptr [ebp-4]
 0049233D    call        TObject.Create
 00492342    mov         eax,dword ptr [ebp-4]
 00492345    add         eax,4
 00492348    push        eax
 00492349    call        kernel32.InitializeCriticalSection
 0049234E    mov         eax,dword ptr [ebp-4]
 00492351    cmp         byte ptr [ebp-5],0
>00492355    je          00492366
 00492357    call        @AfterConstruction
 0049235C    pop         dword ptr fs:[0]
 00492363    add         esp,0C
 00492366    mov         eax,dword ptr [ebp-4]
 00492369    pop         ecx
 0049236A    pop         ecx
 0049236B    pop         ebp
 0049236C    ret
*}
end;

//00492370
destructor TCriticalSection.Destroy;
begin
{*
 00492370    push        ebp
 00492371    mov         ebp,esp
 00492373    add         esp,0FFFFFFF8
 00492376    call        @BeforeDestruction
 0049237B    mov         byte ptr [ebp-5],dl
 0049237E    mov         dword ptr [ebp-4],eax
 00492381    mov         eax,dword ptr [ebp-4]
 00492384    add         eax,4;TCriticalSection....:?
 00492387    push        eax
 00492388    call        kernel32.DeleteCriticalSection
 0049238D    mov         dl,byte ptr [ebp-5]
 00492390    and         dl,0FC
 00492393    mov         eax,dword ptr [ebp-4]
 00492396    call        TObject.Destroy
 0049239B    cmp         byte ptr [ebp-5],0
>0049239F    jle         004923A9
 004923A1    mov         eax,dword ptr [ebp-4]
 004923A4    call        @ClassDestroy
 004923A9    pop         ecx
 004923AA    pop         ecx
 004923AB    pop         ebp
 004923AC    ret
*}
end;

//004923B0
procedure sub_004923B0;
begin
{*
 004923B0    push        ebp
 004923B1    mov         ebp,esp
 004923B3    push        ecx
 004923B4    mov         dword ptr [ebp-4],eax
 004923B7    mov         eax,dword ptr [ebp-4]
 004923BA    add         eax,4;TCriticalSection.....:?
 004923BD    push        eax
 004923BE    call        kernel32.EnterCriticalSection
 004923C3    pop         ecx
 004923C4    pop         ebp
 004923C5    ret
*}
end;

//004923C8
procedure sub_004923C8;
begin
{*
 004923C8    push        ebp
 004923C9    mov         ebp,esp
 004923CB    push        ecx
 004923CC    mov         dword ptr [ebp-4],eax
 004923CF    mov         eax,dword ptr [ebp-4]
 004923D2    add         eax,4;TCriticalSection......:?
 004923D5    push        eax
 004923D6    call        kernel32.LeaveCriticalSection
 004923DB    pop         ecx
 004923DC    pop         ebp
 004923DD    ret
*}
end;

//004923E0
procedure sub_004923E0(?:TCriticalSection);
begin
{*
 004923E0    push        ebp
 004923E1    mov         ebp,esp
 004923E3    push        ecx
 004923E4    mov         dword ptr [ebp-4],eax
 004923E7    mov         eax,dword ptr [ebp-4]
 004923EA    mov         edx,dword ptr [eax]
 004923EC    call        dword ptr [edx]
 004923EE    pop         ecx
 004923EF    pop         ebp
 004923F0    ret
*}
end;

//004923F4
procedure sub_004923F4(?:TCriticalSection);
begin
{*
 004923F4    push        ebp
 004923F5    mov         ebp,esp
 004923F7    push        ecx
 004923F8    mov         dword ptr [ebp-4],eax
 004923FB    mov         eax,dword ptr [ebp-4]
 004923FE    mov         edx,dword ptr [eax]
 00492400    call        dword ptr [edx+4]
 00492403    pop         ecx
 00492404    pop         ebp
 00492405    ret
*}
end;

end.