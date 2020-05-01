//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit78;

interface

uses
  SysUtils, Classes;

type
  TLISPElement = class(TObject)
  public
    //function v0:?; virtual;//v0//00523A20
    //procedure v4(?:?); virtual;//v4//00523A34
  end;
  TLISPIntElement = class(TLISPElement)
  public
    f4:dword;//f4
    //function v0:?; virtual;//v0//00523380
    //procedure v4(?:?); virtual;//v4//005233B0
    constructor Create;//00523330
  end;
  TLISPStrElement = class(TLISPElement)
  public
    .:String;//f4
    //function v0:?; virtual;//v0//00523458
    //procedure v4(?:?); virtual;//v4//0052348C
    constructor Create;//005233D0
  end;
  TLISPFloatElement = class(TLISPElement)
  public
    f8:dword;//f8
    fC:dword;//fC
    f10:word;//f10
    //function v0:?; virtual;//v0//005234FC
    //procedure v4(?:?); virtual;//v4//00523510
    //constructor Create(?:?; ?:?; ?:?);//005234AC
  end;
  TLISPListElement = class(TLISPElement)
  public
    f14:dword;//f14
    destructor Destroy; virtual;//00523688
    //function v0:?; virtual;//v0//00523798
    //procedure v4(?:?); virtual;//v4//005237DC
    //constructor Create(?:?);//005235C4
  end;
    //function sub_00523380:?;//00523380
    //function sub_00523394(?:Pointer):?;//00523394
    //procedure sub_005233B0(?:?);//005233B0
    //function sub_00523458:?;//00523458
    //procedure sub_0052346C(?:Pointer; ?:?);//0052346C
    //procedure sub_0052348C(?:?);//0052348C
    //function sub_005234FC:?;//005234FC
    //procedure sub_00523510(?:?);//00523510
    //procedure sub_00523538(?:?; ?:TLISPElement);//00523538
    procedure sub_00523570(?:TLISPListElement);//00523570
    destructor Destroy;//00523688
    //function sub_005236CC(?:?; ?:AnsiString):?;//005236CC
    //function sub_00523798:?;//00523798
    //procedure sub_005237AC(?:TLISPListElement; ?:?);//005237AC
    //procedure sub_005237DC(?:?);//005237DC
    //procedure sub_005237F8(?:?; ?:?);//005237F8
    //function sub_005238A4(?:Pointer; ?:?):?;//005238A4
    //function sub_005238C8(?:?; ?:?):?;//005238C8
    //function sub_005238F4(?:?; ?:?):?;//005238F4
    //procedure sub_00523918(?:?; ?:?; ?:?);//00523918
    //procedure sub_00523944(?:?);//00523944
    //function sub_00523A20:?;//00523A20
    //procedure sub_00523A34(?:?);//00523A34

implementation

//00523330
constructor TLISPIntElement.Create;
begin
{*
 00523330    push        ebp
 00523331    mov         ebp,esp
 00523333    add         esp,0FFFFFFF4
 00523336    test        dl,dl
>00523338    je          00523342
 0052333A    add         esp,0FFFFFFF0
 0052333D    call        @ClassCreate
 00523342    mov         dword ptr [ebp-0C],ecx
 00523345    mov         byte ptr [ebp-5],dl
 00523348    mov         dword ptr [ebp-4],eax
 0052334B    xor         edx,edx
 0052334D    mov         eax,dword ptr [ebp-4]
 00523350    call        TObject.Create
 00523355    mov         eax,dword ptr [ebp-4]
 00523358    mov         edx,dword ptr [ebp-0C]
 0052335B    mov         dword ptr [eax+4],edx
 0052335E    mov         eax,dword ptr [ebp-4]
 00523361    cmp         byte ptr [ebp-5],0
>00523365    je          00523376
 00523367    call        @AfterConstruction
 0052336C    pop         dword ptr fs:[0]
 00523373    add         esp,0C
 00523376    mov         eax,dword ptr [ebp-4]
 00523379    mov         esp,ebp
 0052337B    pop         ebp
 0052337C    ret
*}
end;

//00523380
{*function sub_00523380:?;
begin
 00523380    push        ebp
 00523381    mov         ebp,esp
 00523383    add         esp,0FFFFFFF8
 00523386    mov         dword ptr [ebp-4],eax
 00523389    mov         byte ptr [ebp-5],1
 0052338D    mov         al,byte ptr [ebp-5]
 00523390    pop         ecx
 00523391    pop         ecx
 00523392    pop         ebp
 00523393    ret
end;*}

//00523394
{*function sub_00523394(?:Pointer):?;
begin
 00523394    push        ebp
 00523395    mov         ebp,esp
 00523397    add         esp,0FFFFFFF8
 0052339A    mov         dword ptr [ebp-4],eax
 0052339D    mov         eax,dword ptr [ebp-4]
 005233A0    mov         eax,dword ptr [eax+4]
 005233A3    mov         dword ptr [ebp-8],eax
 005233A6    mov         eax,dword ptr [ebp-8]
 005233A9    pop         ecx
 005233AA    pop         ecx
 005233AB    pop         ebp
 005233AC    ret
end;*}

//005233B0
{*procedure sub_005233B0(?:?);
begin
 005233B0    push        ebp
 005233B1    mov         ebp,esp
 005233B3    add         esp,0FFFFFFF8
 005233B6    mov         dword ptr [ebp-8],edx
 005233B9    mov         dword ptr [ebp-4],eax
 005233BC    mov         edx,dword ptr [ebp-8]
 005233BF    mov         eax,dword ptr [ebp-4]
 005233C2    mov         eax,dword ptr [eax+4];TLISPIntElement..:dword
 005233C5    call        IntToStr
 005233CA    pop         ecx
 005233CB    pop         ecx
 005233CC    pop         ebp
 005233CD    ret
end;*}

//005233D0
constructor TLISPStrElement.Create;
begin
{*
 005233D0    push        ebp
 005233D1    mov         ebp,esp
 005233D3    add         esp,0FFFFFFF4
 005233D6    test        dl,dl
>005233D8    je          005233E2
 005233DA    add         esp,0FFFFFFF0
 005233DD    call        @ClassCreate
 005233E2    mov         dword ptr [ebp-0C],ecx
 005233E5    mov         byte ptr [ebp-5],dl
 005233E8    mov         dword ptr [ebp-4],eax
 005233EB    mov         eax,dword ptr [ebp-0C]
 005233EE    call        @LStrAddRef
 005233F3    xor         eax,eax
 005233F5    push        ebp
 005233F6    push        52342F
 005233FB    push        dword ptr fs:[eax]
 005233FE    mov         dword ptr fs:[eax],esp
 00523401    xor         edx,edx
 00523403    mov         eax,dword ptr [ebp-4]
 00523406    call        TObject.Create
 0052340B    mov         eax,dword ptr [ebp-4]
 0052340E    add         eax,4
 00523411    mov         edx,dword ptr [ebp-0C]
 00523414    call        @LStrAsg
 00523419    xor         eax,eax
 0052341B    pop         edx
 0052341C    pop         ecx
 0052341D    pop         ecx
 0052341E    mov         dword ptr fs:[eax],edx
 00523421    push        523436
 00523426    lea         eax,[ebp-0C]
 00523429    call        @LStrClr
 0052342E    ret
>0052342F    jmp         @HandleFinally
>00523434    jmp         00523426
 00523436    mov         eax,dword ptr [ebp-4]
 00523439    cmp         byte ptr [ebp-5],0
>0052343D    je          0052344E
 0052343F    call        @AfterConstruction
 00523444    pop         dword ptr fs:[0]
 0052344B    add         esp,0C
 0052344E    mov         eax,dword ptr [ebp-4]
 00523451    mov         esp,ebp
 00523453    pop         ebp
 00523454    ret
*}
end;

//00523458
{*function sub_00523458:?;
begin
 00523458    push        ebp
 00523459    mov         ebp,esp
 0052345B    add         esp,0FFFFFFF8
 0052345E    mov         dword ptr [ebp-4],eax
 00523461    mov         byte ptr [ebp-5],3
 00523465    mov         al,byte ptr [ebp-5]
 00523468    pop         ecx
 00523469    pop         ecx
 0052346A    pop         ebp
 0052346B    ret
end;*}

//0052346C
{*procedure sub_0052346C(?:Pointer; ?:?);
begin
 0052346C    push        ebp
 0052346D    mov         ebp,esp
 0052346F    add         esp,0FFFFFFF8
 00523472    mov         dword ptr [ebp-8],edx
 00523475    mov         dword ptr [ebp-4],eax
 00523478    mov         eax,dword ptr [ebp-8]
 0052347B    mov         edx,dword ptr [ebp-4]
 0052347E    mov         edx,dword ptr [edx+4]
 00523481    call        @LStrAsg
 00523486    pop         ecx
 00523487    pop         ecx
 00523488    pop         ebp
 00523489    ret
end;*}

//0052348C
{*procedure sub_0052348C(?:?);
begin
 0052348C    push        ebp
 0052348D    mov         ebp,esp
 0052348F    add         esp,0FFFFFFF8
 00523492    mov         dword ptr [ebp-8],edx
 00523495    mov         dword ptr [ebp-4],eax
 00523498    mov         eax,dword ptr [ebp-8]
 0052349B    mov         edx,dword ptr [ebp-4]
 0052349E    mov         edx,dword ptr [edx+4];TLISPStrElement...:String
 005234A1    call        @LStrAsg
 005234A6    pop         ecx
 005234A7    pop         ecx
 005234A8    pop         ebp
 005234A9    ret
end;*}

//005234AC
{*constructor TLISPFloatElement.Create(?:?; ?:?; ?:?);
begin
 005234AC    push        ebp
 005234AD    mov         ebp,esp
 005234AF    add         esp,0FFFFFFF8
 005234B2    test        dl,dl
>005234B4    je          005234BE
 005234B6    add         esp,0FFFFFFF0
 005234B9    call        @ClassCreate
 005234BE    mov         byte ptr [ebp-5],dl
 005234C1    mov         dword ptr [ebp-4],eax
 005234C4    mov         eax,dword ptr [ebp-4]
 005234C7    mov         edx,dword ptr [ebp+8]
 005234CA    mov         dword ptr [eax+8],edx
 005234CD    mov         edx,dword ptr [ebp+0C]
 005234D0    mov         dword ptr [eax+0C],edx
 005234D3    mov         dx,word ptr [ebp+10]
 005234D7    mov         word ptr [eax+10],dx
 005234DB    mov         eax,dword ptr [ebp-4]
 005234DE    cmp         byte ptr [ebp-5],0
>005234E2    je          005234F3
 005234E4    call        @AfterConstruction
 005234E9    pop         dword ptr fs:[0]
 005234F0    add         esp,0C
 005234F3    mov         eax,dword ptr [ebp-4]
 005234F6    pop         ecx
 005234F7    pop         ecx
 005234F8    pop         ebp
 005234F9    ret         0C
end;*}

//005234FC
{*function sub_005234FC:?;
begin
 005234FC    push        ebp
 005234FD    mov         ebp,esp
 005234FF    add         esp,0FFFFFFF8
 00523502    mov         dword ptr [ebp-4],eax
 00523505    mov         byte ptr [ebp-5],2
 00523509    mov         al,byte ptr [ebp-5]
 0052350C    pop         ecx
 0052350D    pop         ecx
 0052350E    pop         ebp
 0052350F    ret
end;*}

//00523510
{*procedure sub_00523510(?:?);
begin
 00523510    push        ebp
 00523511    mov         ebp,esp
 00523513    add         esp,0FFFFFFF8
 00523516    mov         dword ptr [ebp-8],edx
 00523519    mov         dword ptr [ebp-4],eax
 0052351C    mov         eax,dword ptr [ebp-4]
 0052351F    mov         dx,word ptr [eax+10];TLISPFloatElement.?f10:word
 00523523    push        edx
 00523524    push        dword ptr [eax+0C];TLISPFloatElement.?fC:dword
 00523527    push        dword ptr [eax+8];TLISPFloatElement.?f8:dword
 0052352A    mov         eax,dword ptr [ebp-8]
 0052352D    call        00468298
 00523532    pop         ecx
 00523533    pop         ecx
 00523534    pop         ebp
 00523535    ret
end;*}

//00523538
{*procedure sub_00523538(?:?; ?:TLISPElement);
begin
 00523538    push        ebp
 00523539    mov         ebp,esp
 0052353B    add         esp,0FFFFFFF8
 0052353E    mov         dword ptr [ebp-8],edx
 00523541    mov         dword ptr [ebp-4],eax
 00523544    mov         edx,dword ptr [ebp-8]
 00523547    mov         eax,dword ptr [ebp-4]
 0052354A    mov         eax,dword ptr [eax+14]
 0052354D    call        TList.Add
 00523552    mov         eax,dword ptr [ebp-4]
 00523555    inc         dword ptr [eax+0C]
 00523558    mov         eax,dword ptr [ebp-8]
 0052355B    mov         edx,dword ptr [eax]
 0052355D    call        dword ptr [edx]
 0052355F    mov         edx,eax
 00523561    mov         eax,dword ptr [ebp-4]
 00523564    call        005237F8
 00523569    pop         ecx
 0052356A    pop         ecx
 0052356B    pop         ebp
 0052356C    ret
end;*}

//00523570
procedure sub_00523570(?:TLISPListElement);
begin
{*
 00523570    push        ebp
 00523571    mov         ebp,esp
 00523573    add         esp,0FFFFFFF4
 00523576    mov         dword ptr [ebp-4],eax
 00523579    mov         eax,dword ptr [ebp-4]
 0052357C    mov         eax,dword ptr [eax+14]
 0052357F    mov         eax,dword ptr [eax+8]
 00523582    dec         eax
 00523583    test        eax,eax
>00523585    jl          005235AD
 00523587    inc         eax
 00523588    mov         dword ptr [ebp-0C],eax
 0052358B    mov         dword ptr [ebp-8],0
 00523592    mov         edx,dword ptr [ebp-8]
 00523595    mov         eax,dword ptr [ebp-4]
 00523598    mov         eax,dword ptr [eax+14]
 0052359B    call        TList.Get
 005235A0    call        TObject.Free
 005235A5    inc         dword ptr [ebp-8]
 005235A8    dec         dword ptr [ebp-0C]
>005235AB    jne         00523592
 005235AD    mov         eax,dword ptr [ebp-4]
 005235B0    mov         eax,dword ptr [eax+14]
 005235B3    mov         edx,dword ptr [eax]
 005235B5    call        dword ptr [edx+8]
 005235B8    mov         eax,dword ptr [ebp-4]
 005235BB    xor         edx,edx
 005235BD    mov         dword ptr [eax+0C],edx
 005235C0    mov         esp,ebp
 005235C2    pop         ebp
 005235C3    ret
*}
end;

//005235C4
{*constructor TLISPListElement.Create(?:?);
begin
 005235C4    push        ebp
 005235C5    mov         ebp,esp
 005235C7    add         esp,0FFFFFFF8
 005235CA    test        dl,dl
>005235CC    je          005235D6
 005235CE    add         esp,0FFFFFFF0
 005235D1    call        @ClassCreate
 005235D6    mov         byte ptr [ebp-6],cl
 005235D9    mov         byte ptr [ebp-5],dl
 005235DC    mov         dword ptr [ebp-4],eax
 005235DF    cmp         dword ptr [ebp+8],0
>005235E3    jne         005235FB
 005235E5    mov         ecx,523658;'TTokenizer not initialized in TLISPListElement'
 005235EA    mov         dl,1
 005235EC    mov         eax,[004653B4];Exception
 005235F1    call        Exception.Create;Exception.Create
 005235F6    call        @RaiseExcept
 005235FB    mov         dl,1
 005235FD    mov         eax,[004759C0];TList
 00523602    call        TObject.Create;TList.Create
 00523607    mov         edx,dword ptr [ebp-4]
 0052360A    mov         dword ptr [edx+14],eax
 0052360D    mov         eax,dword ptr [ebp-4]
 00523610    mov         byte ptr [eax+10],0
 00523614    mov         eax,dword ptr [ebp-4]
 00523617    mov         dl,byte ptr [ebp-6]
 0052361A    mov         byte ptr [eax+8],dl
 0052361D    mov         eax,dword ptr [ebp-4]
 00523620    mov         edx,dword ptr [ebp+8]
 00523623    mov         dword ptr [eax+4],edx
 00523626    mov         eax,dword ptr [ebp-4]
 00523629    call        00523944
 0052362E    mov         eax,dword ptr [ebp-4]
 00523631    cmp         byte ptr [ebp-5],0
>00523635    je          00523646
 00523637    call        @AfterConstruction
 0052363C    pop         dword ptr fs:[0]
 00523643    add         esp,0C
 00523646    mov         eax,dword ptr [ebp-4]
 00523649    pop         ecx
 0052364A    pop         ecx
 0052364B    pop         ebp
 0052364C    ret         4
end;*}

//00523688
destructor TLISPListElement.Destroy;
begin
{*
 00523688    push        ebp
 00523689    mov         ebp,esp
 0052368B    add         esp,0FFFFFFF8
 0052368E    call        @BeforeDestruction
 00523693    mov         byte ptr [ebp-5],dl
 00523696    mov         dword ptr [ebp-4],eax
 00523699    mov         eax,dword ptr [ebp-4]
 0052369C    call        00523570
 005236A1    mov         eax,dword ptr [ebp-4]
 005236A4    mov         eax,dword ptr [eax+14];TLISPListElement..:dword
 005236A7    call        TObject.Free
 005236AC    mov         dl,byte ptr [ebp-5]
 005236AF    and         dl,0FC
 005236B2    mov         eax,dword ptr [ebp-4]
 005236B5    call        TObject.Destroy
 005236BA    cmp         byte ptr [ebp-5],0
>005236BE    jle         005236C8
 005236C0    mov         eax,dword ptr [ebp-4]
 005236C3    call        @ClassDestroy
 005236C8    pop         ecx
 005236C9    pop         ecx
 005236CA    pop         ebp
 005236CB    ret
*}
end;

//005236CC
{*function sub_005236CC(?:?; ?:AnsiString):?;
begin
 005236CC    push        ebp
 005236CD    mov         ebp,esp
 005236CF    add         esp,0FFFFFFE8
 005236D2    xor         ecx,ecx
 005236D4    mov         dword ptr [ebp-18],ecx
 005236D7    mov         dword ptr [ebp-8],edx
 005236DA    mov         dword ptr [ebp-4],eax
 005236DD    mov         eax,dword ptr [ebp-8]
 005236E0    call        @LStrAddRef
 005236E5    xor         eax,eax
 005236E7    push        ebp
 005236E8    push        523787
 005236ED    push        dword ptr fs:[eax]
 005236F0    mov         dword ptr fs:[eax],esp
 005236F3    xor         eax,eax
 005236F5    mov         dword ptr [ebp-0C],eax
 005236F8    mov         eax,dword ptr [ebp-4]
 005236FB    mov         eax,dword ptr [eax+0C]
 005236FE    dec         eax
 005236FF    test        eax,eax
>00523701    jl          00523769
 00523703    inc         eax
 00523704    mov         dword ptr [ebp-14],eax
 00523707    mov         dword ptr [ebp-10],0
 0052370E    mov         eax,dword ptr [ebp-4]
 00523711    mov         eax,dword ptr [eax+14]
 00523714    mov         edx,dword ptr [ebp-10]
 00523717    call        TList.Get
 0052371C    mov         edx,dword ptr [eax]
 0052371E    call        dword ptr [edx]
 00523720    test        al,al
>00523722    jne         00523761
 00523724    mov         eax,dword ptr [ebp-4]
 00523727    mov         eax,dword ptr [eax+14]
 0052372A    mov         edx,dword ptr [ebp-10]
 0052372D    call        TList.Get
 00523732    xor         edx,edx
 00523734    call        005238A4
 00523739    lea         edx,[ebp-18]
 0052373C    mov         ecx,dword ptr [eax]
 0052373E    call        dword ptr [ecx+4]
 00523741    mov         eax,dword ptr [ebp-18]
 00523744    mov         edx,dword ptr [ebp-8]
 00523747    call        @LStrCmp
>0052374C    jne         00523761
 0052374E    mov         eax,dword ptr [ebp-4]
 00523751    mov         eax,dword ptr [eax+14]
 00523754    mov         edx,dword ptr [ebp-10]
 00523757    call        TList.Get
 0052375C    mov         dword ptr [ebp-0C],eax
>0052375F    jmp         00523769
 00523761    inc         dword ptr [ebp-10]
 00523764    dec         dword ptr [ebp-14]
>00523767    jne         0052370E
 00523769    xor         eax,eax
 0052376B    pop         edx
 0052376C    pop         ecx
 0052376D    pop         ecx
 0052376E    mov         dword ptr fs:[eax],edx
 00523771    push        52378E
 00523776    lea         eax,[ebp-18]
 00523779    call        @LStrClr
 0052377E    lea         eax,[ebp-8]
 00523781    call        @LStrClr
 00523786    ret
>00523787    jmp         @HandleFinally
>0052378C    jmp         00523776
 0052378E    mov         eax,dword ptr [ebp-0C]
 00523791    mov         esp,ebp
 00523793    pop         ebp
 00523794    ret
end;*}

//00523798
{*function sub_00523798:?;
begin
 00523798    push        ebp
 00523799    mov         ebp,esp
 0052379B    add         esp,0FFFFFFF8
 0052379E    mov         dword ptr [ebp-4],eax
 005237A1    mov         byte ptr [ebp-5],0
 005237A5    mov         al,byte ptr [ebp-5]
 005237A8    pop         ecx
 005237A9    pop         ecx
 005237AA    pop         ebp
 005237AB    ret
end;*}

//005237AC
{*procedure sub_005237AC(?:TLISPListElement; ?:?);
begin
 005237AC    push        ebp
 005237AD    mov         ebp,esp
 005237AF    add         esp,0FFFFFFF8
 005237B2    mov         dword ptr [ebp-8],edx
 005237B5    mov         dword ptr [ebp-4],eax
 005237B8    mov         eax,dword ptr [ebp-4]
 005237BB    cmp         dword ptr [eax+0C],0
>005237BF    jle         005237D6
 005237C1    xor         edx,edx
 005237C3    mov         eax,dword ptr [ebp-4]
 005237C6    mov         eax,dword ptr [eax+14]
 005237C9    call        TList.Get
 005237CE    mov         edx,dword ptr [ebp-8]
 005237D1    mov         ecx,dword ptr [eax]
 005237D3    call        dword ptr [ecx+4]
 005237D6    pop         ecx
 005237D7    pop         ecx
 005237D8    pop         ebp
 005237D9    ret
end;*}

//005237DC
{*procedure sub_005237DC(?:?);
begin
 005237DC    push        ebp
 005237DD    mov         ebp,esp
 005237DF    add         esp,0FFFFFFF8
 005237E2    mov         dword ptr [ebp-8],edx
 005237E5    mov         dword ptr [ebp-4],eax
 005237E8    mov         edx,dword ptr [ebp-8]
 005237EB    mov         eax,dword ptr [ebp-4]
 005237EE    call        005237AC
 005237F3    pop         ecx
 005237F4    pop         ecx
 005237F5    pop         ebp
 005237F6    ret
end;*}

//005237F8
{*procedure sub_005237F8(?:?; ?:?);
begin
 005237F8    push        ebp
 005237F9    mov         ebp,esp
 005237FB    add         esp,0FFFFFFF8
 005237FE    mov         byte ptr [ebp-5],dl
 00523801    mov         dword ptr [ebp-4],eax
 00523804    mov         eax,dword ptr [ebp-4]
 00523807    mov         al,byte ptr [eax+10]
 0052380A    add         al,0FE
 0052380C    sub         al,3
>0052380E    jae         00523862
 00523810    mov         al,byte ptr [ebp-5]
 00523813    sub         al,1
>00523815    jb          00523823
>00523817    je          0052382C
 00523819    dec         al
>0052381B    je          00523850
 0052381D    dec         al
>0052381F    je          0052383E
>00523821    jmp         005238A0
 00523823    mov         eax,dword ptr [ebp-4]
 00523826    mov         byte ptr [eax+10],1
>0052382A    jmp         005238A0
 0052382C    mov         eax,dword ptr [ebp-4]
 0052382F    cmp         byte ptr [eax+10],2
>00523833    je          005238A0
 00523835    mov         eax,dword ptr [ebp-4]
 00523838    mov         byte ptr [eax+10],1
>0052383C    jmp         005238A0
 0052383E    mov         eax,dword ptr [ebp-4]
 00523841    cmp         byte ptr [eax+10],3
>00523845    je          005238A0
 00523847    mov         eax,dword ptr [ebp-4]
 0052384A    mov         byte ptr [eax+10],1
>0052384E    jmp         005238A0
 00523850    mov         eax,dword ptr [ebp-4]
 00523853    cmp         byte ptr [eax+10],4
>00523857    je          005238A0
 00523859    mov         eax,dword ptr [ebp-4]
 0052385C    mov         byte ptr [eax+10],1
>00523860    jmp         005238A0
 00523862    mov         eax,dword ptr [ebp-4]
 00523865    cmp         byte ptr [eax+10],0
>00523869    jne         005238A0
 0052386B    mov         al,byte ptr [ebp-5]
 0052386E    sub         al,1
>00523870    jb          0052387E
>00523872    je          00523887
 00523874    dec         al
>00523876    je          00523899
 00523878    dec         al
>0052387A    je          00523890
>0052387C    jmp         005238A0
 0052387E    mov         eax,dword ptr [ebp-4]
 00523881    mov         byte ptr [eax+10],1
>00523885    jmp         005238A0
 00523887    mov         eax,dword ptr [ebp-4]
 0052388A    mov         byte ptr [eax+10],2
>0052388E    jmp         005238A0
 00523890    mov         eax,dword ptr [ebp-4]
 00523893    mov         byte ptr [eax+10],3
>00523897    jmp         005238A0
 00523899    mov         eax,dword ptr [ebp-4]
 0052389C    mov         byte ptr [eax+10],4
 005238A0    pop         ecx
 005238A1    pop         ecx
 005238A2    pop         ebp
 005238A3    ret
end;*}

//005238A4
{*function sub_005238A4(?:Pointer; ?:?):?;
begin
 005238A4    push        ebp
 005238A5    mov         ebp,esp
 005238A7    add         esp,0FFFFFFF4
 005238AA    mov         dword ptr [ebp-8],edx
 005238AD    mov         dword ptr [ebp-4],eax
 005238B0    mov         edx,dword ptr [ebp-8]
 005238B3    mov         eax,dword ptr [ebp-4]
 005238B6    mov         eax,dword ptr [eax+14]
 005238B9    call        TList.Get
 005238BE    mov         dword ptr [ebp-0C],eax
 005238C1    mov         eax,dword ptr [ebp-0C]
 005238C4    mov         esp,ebp
 005238C6    pop         ebp
 005238C7    ret
end;*}

//005238C8
{*function sub_005238C8(?:?; ?:?):?;
begin
 005238C8    push        ebp
 005238C9    mov         ebp,esp
 005238CB    add         esp,0FFFFFFF4
 005238CE    mov         dword ptr [ebp-8],edx
 005238D1    mov         dword ptr [ebp-4],eax
 005238D4    mov         edx,dword ptr [ebp-8]
 005238D7    mov         eax,dword ptr [ebp-4]
 005238DA    mov         eax,dword ptr [eax+14]
 005238DD    call        TList.Get
 005238E2    call        00523394
 005238E7    mov         dword ptr [ebp-0C],eax
 005238EA    mov         eax,dword ptr [ebp-0C]
 005238ED    mov         esp,ebp
 005238EF    pop         ebp
 005238F0    ret
end;*}

//005238F4
{*function sub_005238F4(?:?; ?:?):?;
begin
 005238F4    push        ebp
 005238F5    mov         ebp,esp
 005238F7    add         esp,0FFFFFFF4
 005238FA    mov         dword ptr [ebp-8],edx
 005238FD    mov         dword ptr [ebp-4],eax
 00523900    mov         edx,dword ptr [ebp-8]
 00523903    mov         eax,dword ptr [ebp-4]
 00523906    mov         eax,dword ptr [eax+14]
 00523909    call        TList.Get
 0052390E    mov         dword ptr [ebp-0C],eax
 00523911    mov         eax,dword ptr [ebp-0C]
 00523914    mov         esp,ebp
 00523916    pop         ebp
 00523917    ret
end;*}

//00523918
{*procedure sub_00523918(?:?; ?:?; ?:?);
begin
 00523918    push        ebp
 00523919    mov         ebp,esp
 0052391B    add         esp,0FFFFFFF4
 0052391E    mov         dword ptr [ebp-0C],ecx
 00523921    mov         dword ptr [ebp-8],edx
 00523924    mov         dword ptr [ebp-4],eax
 00523927    mov         edx,dword ptr [ebp-8]
 0052392A    mov         eax,dword ptr [ebp-4]
 0052392D    mov         eax,dword ptr [eax+14]
 00523930    call        TList.Get
 00523935    mov         edx,dword ptr [ebp-0C]
 00523938    call        0052346C
 0052393D    mov         esp,ebp
 0052393F    pop         ebp
 00523940    ret
end;*}

//00523944
{*procedure sub_00523944(?:?);
begin
 00523944    push        ebp
 00523945    mov         ebp,esp
 00523947    push        ecx
 00523948    mov         dword ptr [ebp-4],eax
 0052394B    mov         eax,dword ptr [ebp-4]
 0052394E    mov         eax,dword ptr [eax+4]
 00523951    call        0052277C
 00523956    mov         edx,dword ptr [ebp-4]
 00523959    mov         byte ptr [edx+8],al
 0052395C    mov         eax,dword ptr [ebp-4]
 0052395F    mov         al,byte ptr [eax+8]
 00523962    dec         al
>00523964    je          00523977
 00523966    dec         al
>00523968    je          00523998
 0052396A    dec         al
>0052396C    je          005239B9
 0052396E    dec         al
>00523970    je          005239E2
>00523972    jmp         00523A1B
 00523977    mov         eax,dword ptr [ebp-4]
 0052397A    mov         eax,dword ptr [eax+4]
 0052397D    mov         ecx,dword ptr [eax+10]
 00523980    mov         dl,1
 00523982    mov         eax,[005231E8];TLISPStrElement
 00523987    call        TLISPStrElement.Create;TLISPStrElement.Create
 0052398C    mov         edx,eax
 0052398E    mov         eax,dword ptr [ebp-4]
 00523991    call        00523538
>00523996    jmp         00523A05
 00523998    mov         eax,dword ptr [ebp-4]
 0052399B    mov         eax,dword ptr [eax+4]
 0052399E    mov         ecx,dword ptr [eax+14]
 005239A1    mov         dl,1
 005239A3    mov         eax,[00523184];TLISPIntElement
 005239A8    call        TLISPIntElement.Create;TLISPIntElement.Create
 005239AD    mov         edx,eax
 005239AF    mov         eax,dword ptr [ebp-4]
 005239B2    call        00523538
>005239B7    jmp         00523A05
 005239B9    mov         eax,dword ptr [ebp-4]
 005239BC    mov         eax,dword ptr [eax+4]
 005239BF    mov         dx,word ptr [eax+20]
 005239C3    push        edx
 005239C4    push        dword ptr [eax+1C]
 005239C7    push        dword ptr [eax+18]
 005239CA    mov         dl,1
 005239CC    mov         eax,[00523260];TLISPFloatElement
 005239D1    call        TLISPFloatElement.Create;TLISPFloatElement.Create
 005239D6    mov         edx,eax
 005239D8    mov         eax,dword ptr [ebp-4]
 005239DB    call        00523538
>005239E0    jmp         00523A05
 005239E2    mov         eax,dword ptr [ebp-4]
 005239E5    mov         eax,dword ptr [eax+4]
 005239E8    push        eax
 005239E9    mov         eax,dword ptr [ebp-4]
 005239EC    mov         cl,byte ptr [eax+8]
 005239EF    mov         dl,1
 005239F1    mov         eax,[005232C8];TLISPListElement
 005239F6    call        TLISPListElement.Create;TLISPListElement.Create
 005239FB    mov         edx,eax
 005239FD    mov         eax,dword ptr [ebp-4]
 00523A00    call        00523538
 00523A05    mov         eax,dword ptr [ebp-4]
 00523A08    cmp         byte ptr [eax+8],5
>00523A0C    je          00523A1B
 00523A0E    mov         eax,dword ptr [ebp-4]
 00523A11    cmp         byte ptr [eax+8],0
>00523A15    jne         0052394B
 00523A1B    pop         ecx
 00523A1C    pop         ebp
 00523A1D    ret
end;*}

//00523A20
{*function sub_00523A20:?;
begin
 00523A20    push        ebp
 00523A21    mov         ebp,esp
 00523A23    add         esp,0FFFFFFF8
 00523A26    mov         dword ptr [ebp-4],eax
 00523A29    mov         byte ptr [ebp-5],0
 00523A2D    mov         al,byte ptr [ebp-5]
 00523A30    pop         ecx
 00523A31    pop         ecx
 00523A32    pop         ebp
 00523A33    ret
end;*}

//00523A34
{*procedure sub_00523A34(?:?);
begin
 00523A34    push        ebp
 00523A35    mov         ebp,esp
 00523A37    add         esp,0FFFFFFF8
 00523A3A    mov         dword ptr [ebp-8],edx
 00523A3D    mov         dword ptr [ebp-4],eax
 00523A40    mov         eax,dword ptr [ebp-8]
 00523A43    mov         edx,523A5C;'ERROR TLISPElement base'
 00523A48    call        @LStrAsg
 00523A4D    pop         ecx
 00523A4E    pop         ecx
 00523A4F    pop         ebp
 00523A50    ret
end;*}

end.