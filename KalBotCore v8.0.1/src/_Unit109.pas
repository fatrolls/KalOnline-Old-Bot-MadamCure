//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit109;

interface

uses
  SysUtils, Classes;

type
  TAutoThiefAttack = class(TThread)
  public
    f40:dword;//f40
    f44:dword;//f44
    f50:byte;//f50
    f51:byte;//f51
    f52:byte;//f52
    f53:byte;//f53
    f54:byte;//f54
    f58:dword;//f58
    f6C:dword;//f6C
    destructor Destroy; virtual;//005286E4
    procedure Execute; virtual;//v4//00528720
    //constructor Create(?:?; ?:?; ?:?);//005283AC
  end;
    //function sub_005284A8(?:?; ?:?):?;//005284A8
    procedure sub_0052853C(?:TAutoThiefAttack);//0052853C
    destructor Destroy;//005286E4
    procedure Execute;//00528720
    //function sub_00528C94(?:TAutoThiefAttack):?;//00528C94
    //procedure sub_00528CB0(?:TAutoThiefAttack; ?:?);//00528CB0
    //procedure sub_00528CCC(?:TAutoThiefAttack; ?:?);//00528CCC

implementation

//005283AC
{*constructor TAutoThiefAttack.Create(?:?; ?:?; ?:?);
begin
 005283AC    push        ebp
 005283AD    mov         ebp,esp
 005283AF    add         esp,0FFFFFFF4
 005283B2    test        dl,dl
>005283B4    je          005283BE
 005283B6    add         esp,0FFFFFFF0
 005283B9    call        @ClassCreate
 005283BE    mov         dword ptr [ebp-0C],ecx
 005283C1    mov         byte ptr [ebp-5],dl
 005283C4    mov         dword ptr [ebp-4],eax
 005283C7    xor         ecx,ecx
 005283C9    xor         edx,edx
 005283CB    mov         eax,dword ptr [ebp-4]
 005283CE    call        00482974
 005283D3    mov         eax,dword ptr [ebp-4]
 005283D6    mov         byte ptr [eax+0F],0
 005283DA    mov         eax,dword ptr [ebp-0C]
 005283DD    mov         eax,dword ptr [eax]
 005283DF    mov         edx,dword ptr [ebp-4]
 005283E2    mov         dword ptr [edx+40],eax
 005283E5    mov         eax,dword ptr [ebp+10]
 005283E8    mov         eax,dword ptr [eax]
 005283EA    mov         edx,dword ptr [ebp-4]
 005283ED    mov         dword ptr [edx+44],eax
 005283F0    mov         eax,dword ptr [ebp-4]
 005283F3    mov         edx,dword ptr [ebp+0C]
 005283F6    mov         dword ptr [eax+48],edx
 005283F9    mov         eax,dword ptr [ebp+8]
 005283FC    mov         eax,dword ptr [eax]
 005283FE    mov         edx,dword ptr [ebp-4]
 00528401    mov         dword ptr [edx+4C],eax
 00528404    mov         eax,dword ptr [ebp-4]
 00528407    mov         eax,dword ptr [eax+4C]
 0052840A    push        eax
 0052840B    mov         eax,dword ptr [ebp-4]
 0052840E    mov         eax,dword ptr [eax+44]
 00528411    push        eax
 00528412    mov         eax,dword ptr [ebp-4]
 00528415    mov         eax,dword ptr [eax+48]
 00528418    push        eax
 00528419    mov         ecx,dword ptr [ebp-4]
 0052841C    mov         dl,1
 0052841E    mov         eax,[00527010];TMedicineHelper
 00528423    call        TMedicineHelper.Create;TMedicineHelper.Create
 00528428    mov         edx,dword ptr [ebp-4]
 0052842B    mov         dword ptr [edx+58],eax
 0052842E    mov         eax,dword ptr [ebp-4]
 00528431    mov         eax,dword ptr [eax+58]
 00528434    mov         dl,byte ptr ds:[5284A4];0xA gvar_005284A4
 0052843A    mov         byte ptr [eax+30],dl
 0052843D    mov         eax,dword ptr [ebp-4]
 00528440    mov         eax,dword ptr [eax+58]
 00528443    mov         byte ptr [eax+4],0
 00528447    mov         eax,dword ptr [ebp-4]
 0052844A    mov         eax,dword ptr [eax+58]
 0052844D    mov         word ptr [eax+1C],0FFFF
 00528453    mov         eax,dword ptr [ebp-4]
 00528456    mov         eax,dword ptr [eax+58]
 00528459    mov         word ptr [eax+1A],0FFFF
 0052845F    mov         eax,dword ptr [ebp-4]
 00528462    mov         eax,dword ptr [eax+58]
 00528465    mov         word ptr [eax+18],0FFFF
 0052846B    mov         eax,dword ptr [ebp-4]
 0052846E    xor         edx,edx
 00528470    mov         dword ptr [eax+60],edx
 00528473    mov         dword ptr [eax+64],40540000
 0052847A    mov         eax,dword ptr [ebp-4]
 0052847D    mov         word ptr [eax+68],32
 00528483    mov         eax,dword ptr [ebp-4]
 00528486    cmp         byte ptr [ebp-5],0
>0052848A    je          0052849B
 0052848C    call        @AfterConstruction
 00528491    pop         dword ptr fs:[0]
 00528498    add         esp,0C
 0052849B    mov         eax,dword ptr [ebp-4]
 0052849E    mov         esp,ebp
 005284A0    pop         ebp
 005284A1    ret         0C
end;*}

//005284A8
{*function sub_005284A8(?:?; ?:?):?;
begin
 005284A8    push        ebp
 005284A9    mov         ebp,esp
 005284AB    add         esp,0FFFFFFF0
 005284AE    mov         dword ptr [ebp-8],edx
 005284B1    mov         dword ptr [ebp-4],eax
 005284B4    mov         byte ptr [ebp-9],0
 005284B8    mov         eax,dword ptr [ebp-4]
 005284BB    mov         eax,dword ptr [eax+40]
 005284BE    call        00533F88
 005284C3    mov         edx,dword ptr [ebp-8]
 005284C6    mov         eax,dword ptr [ebp-4]
 005284C9    mov         eax,dword ptr [eax+40]
 005284CC    call        005338A4
 005284D1    mov         dword ptr [ebp-10],eax
 005284D4    mov         eax,dword ptr [ebp-4]
 005284D7    mov         eax,dword ptr [eax+40]
 005284DA    call        00533FA0
 005284DF    cmp         dword ptr [ebp-10],0
>005284E3    je          0052852E
 005284E5    mov         eax,dword ptr [ebp-10]
 005284E8    mov         al,byte ptr [eax+51]
 005284EB    not         eax
 005284ED    and         al,byte ptr ds:[528538];0x2 gvar_00528538
>005284F3    jne         0052852E
 005284F5    mov         eax,dword ptr [ebp-10]
 005284F8    and         byte ptr [eax+51],0FE
 005284FC    mov         eax,dword ptr [ebp-10]
 005284FF    and         byte ptr [eax+51],0FD
 00528503    mov         eax,dword ptr [ebp-8]
 00528506    mov         edx,dword ptr [ebp-4]
 00528509    mov         dword ptr [edx+6C],eax
 0052850C    mov         eax,[0055B164];^gvar_0054E554
 00528511    mov         al,byte ptr [eax]
 00528513    mov         edx,dword ptr [ebp-4]
 00528516    mov         byte ptr [edx+70],al
 00528519    mov         eax,dword ptr [ebp-4]
 0052851C    push        eax
 0052851D    push        528C20
 00528522    mov         eax,dword ptr [ebp-4]
 00528525    call        00482D80
 0052852A    mov         byte ptr [ebp-9],1
 0052852E    mov         al,byte ptr [ebp-9]
 00528531    mov         esp,ebp
 00528533    pop         ebp
 00528534    ret
end;*}

//0052853C
procedure sub_0052853C(?:TAutoThiefAttack);
begin
{*
 0052853C    push        ebp
 0052853D    mov         ebp,esp
 0052853F    add         esp,0FFFFFFEC
 00528542    xor         edx,edx
 00528544    mov         dword ptr [ebp-10],edx
 00528547    mov         dword ptr [ebp-4],eax
 0052854A    xor         eax,eax
 0052854C    push        ebp
 0052854D    push        5286D9
 00528552    push        dword ptr fs:[eax]
 00528555    mov         dword ptr fs:[eax],esp
 00528558    mov         eax,dword ptr [ebp-4]
 0052855B    mov         eax,dword ptr [eax+44]
 0052855E    call        00535788
 00528563    mov         byte ptr [ebp-9],al
 00528566    movsx       eax,byte ptr [ebp-9]
 0052856A    mov         ecx,0A
 0052856F    cdq
 00528570    idiv        eax,ecx
 00528572    mov         dl,0A
 00528574    sub         dl,al
 00528576    mov         byte ptr [ebp-0A],dl
 00528579    push        0
 0052857B    lea         eax,[ebp-10]
 0052857E    mov         ecx,1
 00528583    mov         edx,dword ptr ds:[51E054];TCharPIDs
 00528589    call        @DynArraySetLength
 0052858E    add         esp,4
 00528591    mov         al,byte ptr [ebp-9]
 00528594    sub         al,5B
>00528596    jb          005285A5
 00528598    sub         al,0A
>0052859A    jb          00528646
>005285A0    jmp         005286BD
 005285A5    mov         eax,dword ptr [ebp-4]
 005285A8    mov         eax,dword ptr [eax+40]
 005285AB    call        00533F88
 005285B0    mov         eax,dword ptr [ebp-4]
 005285B3    push        dword ptr [eax+64]
 005285B6    push        dword ptr [eax+60]
 005285B9    lea         eax,[ebp-10]
 005285BC    push        eax
 005285BD    mov         eax,dword ptr [ebp-4]
 005285C0    mov         eax,dword ptr [eax+44]
 005285C3    mov         eax,dword ptr [eax+40]
 005285C6    lea         ecx,[eax+0C]
 005285C9    mov         edx,533460;sub_00533460
 005285CE    mov         eax,dword ptr [ebp-4]
 005285D1    mov         eax,dword ptr [eax+40]
 005285D4    call        00533ED0
 005285D9    mov         eax,dword ptr [ebp-4]
 005285DC    mov         eax,dword ptr [eax+40]
 005285DF    call        00533FA0
 005285E4    mov         eax,dword ptr [ebp-10]
 005285E7    call        @LStrLen
 005285EC    test        eax,eax
>005285EE    jle         005286BD
 005285F4    cmp         byte ptr [ebp-0A],1
>005285F8    jl          005286BD
 005285FE    mov         eax,dword ptr [ebp-10]
 00528601    call        @LStrLen
 00528606    mov         byte ptr [ebp-0A],al
 00528609    movsx       eax,byte ptr [ebp-0A]
 0052860D    dec         eax
 0052860E    test        eax,eax
>00528610    jl          005286BD
 00528616    inc         eax
 00528617    mov         dword ptr [ebp-14],eax
 0052861A    mov         dword ptr [ebp-8],0
 00528621    mov         eax,dword ptr [ebp-10]
 00528624    mov         edx,dword ptr [ebp-8]
 00528627    mov         edx,dword ptr [eax+edx*4]
 0052862A    mov         eax,dword ptr [ebp-4]
 0052862D    call        005284A8
 00528632    push        0BE
 00528637    call        kernel32.Sleep
 0052863C    inc         dword ptr [ebp-8]
 0052863F    dec         dword ptr [ebp-14]
>00528642    jne         00528621
>00528644    jmp         005286BD
 00528646    mov         eax,dword ptr [ebp-4]
 00528649    mov         eax,dword ptr [eax+40]
 0052864C    call        00533F88
 00528651    mov         eax,dword ptr [ebp-4]
 00528654    push        dword ptr [eax+64]
 00528657    push        dword ptr [eax+60]
 0052865A    lea         eax,[ebp-10]
 0052865D    push        eax
 0052865E    mov         eax,dword ptr [ebp-4]
 00528661    mov         eax,dword ptr [eax+44]
 00528664    mov         eax,dword ptr [eax+40]
 00528667    lea         ecx,[eax+0C]
 0052866A    mov         edx,533460;sub_00533460
 0052866F    mov         eax,dword ptr [ebp-4]
 00528672    mov         eax,dword ptr [eax+40]
 00528675    call        00533ED0
 0052867A    mov         eax,dword ptr [ebp-4]
 0052867D    mov         eax,dword ptr [eax+40]
 00528680    call        00533FA0
 00528685    mov         eax,dword ptr [ebp-10]
 00528688    call        @LStrLen
 0052868D    test        eax,eax
>0052868F    jle         005286BD
 00528691    mov         eax,dword ptr [ebp-10]
 00528694    mov         edx,dword ptr [eax]
 00528696    mov         eax,dword ptr [ebp-4]
 00528699    call        005284A8
 0052869E    push        0BE
 005286A3    call        kernel32.Sleep
 005286A8    mov         eax,3E8
 005286AD    call        @RandInt
 005286B2    mov         edx,dword ptr [ebp-4]
 005286B5    movsx       edx,word ptr [edx+68]
 005286B9    cmp         eax,edx
>005286BB    jge         00528646
 005286BD    xor         eax,eax
 005286BF    pop         edx
 005286C0    pop         ecx
 005286C1    pop         ecx
 005286C2    mov         dword ptr fs:[eax],edx
 005286C5    push        5286E0
 005286CA    lea         eax,[ebp-10]
 005286CD    mov         edx,dword ptr ds:[51E054];TCharPIDs
 005286D3    call        @DynArrayClear
 005286D8    ret
>005286D9    jmp         @HandleFinally
>005286DE    jmp         005286CA
 005286E0    mov         esp,ebp
 005286E2    pop         ebp
 005286E3    ret
*}
end;

//005286E4
destructor TAutoThiefAttack.Destroy;
begin
{*
 005286E4    push        ebp
 005286E5    mov         ebp,esp
 005286E7    add         esp,0FFFFFFF8
 005286EA    call        @BeforeDestruction
 005286EF    mov         byte ptr [ebp-5],dl
 005286F2    mov         dword ptr [ebp-4],eax
 005286F5    mov         eax,dword ptr [ebp-4]
 005286F8    mov         eax,dword ptr [eax+58]
 005286FB    call        TObject.Free
 00528700    mov         dl,byte ptr [ebp-5]
 00528703    and         dl,0FC
 00528706    mov         eax,dword ptr [ebp-4]
 00528709    call        TThread.Destroy
 0052870E    cmp         byte ptr [ebp-5],0
>00528712    jle         0052871C
 00528714    mov         eax,dword ptr [ebp-4]
 00528717    call        @ClassDestroy
 0052871C    pop         ecx
 0052871D    pop         ecx
 0052871E    pop         ebp
 0052871F    ret
*}
end;

//00528720
procedure TAutoThiefAttack.Execute;
begin
{*
 00528720    push        ebp
 00528721    mov         ebp,esp
 00528723    add         esp,0FFFFFFF8
 00528726    mov         dword ptr [ebp-4],eax
>00528729    jmp         00528A59
 0052872E    push        14
 00528730    call        kernel32.Sleep
>00528735    jmp         0052874B
 00528737    mov         eax,dword ptr [ebp-4]
 0052873A    cmp         byte ptr [eax+0D],0;TAutoThiefAttack.FTerminated:Boolean
>0052873E    jne         00528A66
 00528744    push        14
 00528746    call        kernel32.Sleep
 0052874B    mov         eax,dword ptr [ebp-4]
 0052874E    cmp         byte ptr [eax+50],0;TAutoThiefAttack.?f50:byte
>00528752    je          00528737
 00528754    mov         eax,dword ptr [ebp-4]
 00528757    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 0052875A    cmp         dword ptr [eax+40],0
>0052875E    je          00528A59
 00528764    mov         eax,dword ptr [ebp-4]
 00528767    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 0052876A    call        00535730
 0052876F    cmp         al,3
>00528771    jne         00528A59
 00528777    mov         eax,dword ptr [ebp-4]
 0052877A    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 0052877D    cmp         word ptr [eax+4C],0
>00528782    je          00528A59
 00528788    mov         eax,dword ptr [ebp-4]
 0052878B    call        0052853C
 00528790    mov         eax,dword ptr [ebp-4]
 00528793    call        00528C94
 00528798    test        al,al
>0052879A    je          005287B4
 0052879C    mov         eax,dword ptr [ebp-4]
 0052879F    mov         eax,dword ptr [eax+58];TAutoThiefAttack.?f58:dword
 005287A2    cmp         word ptr [eax+1A],0
>005287A7    jle         005287B4
 005287A9    mov         eax,dword ptr [ebp-4]
 005287AC    mov         eax,dword ptr [eax+58];TAutoThiefAttack.?f58:dword
 005287AF    call        0052724C
 005287B4    mov         eax,dword ptr [ebp-4]
 005287B7    mov         eax,dword ptr [eax+40];TAutoThiefAttack.?f40:dword
 005287BA    call        00533F88
 005287BF    mov         eax,dword ptr [ebp-4]
 005287C2    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 005287C5    mov         eax,dword ptr [eax+40]
 005287C8    lea         edx,[eax+0C]
 005287CB    mov         eax,dword ptr [ebp-4]
 005287CE    mov         eax,dword ptr [eax+40];TAutoThiefAttack.?f40:dword
 005287D1    call        00533E38
 005287D6    mov         dword ptr [ebp-8],eax
 005287D9    mov         eax,dword ptr [ebp-4]
 005287DC    mov         eax,dword ptr [eax+40];TAutoThiefAttack.?f40:dword
 005287DF    call        00533FA0
 005287E4    cmp         dword ptr [ebp-8],0
>005287E8    je          00528A59
 005287EE    mov         eax,dword ptr [ebp-4]
 005287F1    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 005287F4    mov         eax,dword ptr [eax+40]
 005287F7    lea         edx,[eax+0C]
 005287FA    mov         eax,dword ptr [ebp-8]
 005287FD    add         eax,4
 00528800    call        0051F5FC
 00528805    fcomp       dword ptr ds:[528A6C];120:Single
 0052880B    fnstsw      al
 0052880D    sahf
>0052880E    ja          00528A59
 00528814    mov         eax,dword ptr [ebp-4]
 00528817    cmp         byte ptr [eax+51],0;TAutoThiefAttack.?f51:byte
>0052881B    je          00528895
 0052881D    mov         eax,dword ptr [ebp-4]
 00528820    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 00528823    mov         eax,dword ptr [eax+88]
 00528829    mov         dl,byte ptr ds:[54E700];0xD gvar_0054E700
 0052882F    call        00535A50
 00528834    test        al,al
>00528836    je          00528895
 00528838    mov         eax,dword ptr [ebp-4]
 0052883B    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 0052883E    mov         eax,dword ptr [eax+88]
 00528844    mov         dl,byte ptr ds:[54E700];0xD gvar_0054E700
 0052884A    call        005359A0
 0052884F    cmp         eax,9E34
>00528854    jbe         00528895
 00528856    mov         eax,dword ptr [ebp-4]
 00528859    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 0052885C    mov         ax,word ptr [eax+50]
 00528860    xor         edx,edx
 00528862    mov         dl,byte ptr ds:[54E710];0x78 gvar_0054E710
 00528868    cmp         ax,dx
>0052886B    jbe         00528895
 0052886D    mov         eax,dword ptr [ebp-4]
 00528870    push        eax
 00528871    push        528AE8
 00528876    mov         eax,dword ptr [ebp-4]
 00528879    call        00482D80
 0052887E    mov         eax,dword ptr [ebp-4]
 00528881    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 00528884    mov         eax,dword ptr [eax+88]
 0052888A    mov         dl,byte ptr ds:[54E700];0xD gvar_0054E700
 00528890    call        00535A74
 00528895    mov         eax,dword ptr [ebp-4]
 00528898    cmp         byte ptr [eax+52],0;TAutoThiefAttack.?f52:byte
>0052889C    je          00528938
 005288A2    mov         eax,dword ptr [ebp-4]
 005288A5    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 005288A8    mov         eax,dword ptr [eax+88]
 005288AE    mov         dl,byte ptr ds:[54E70C];0x3F gvar_0054E70C
 005288B4    call        00535A50
 005288B9    test        al,al
>005288BB    je          00528938
 005288BD    mov         eax,dword ptr [ebp-4]
 005288C0    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 005288C3    mov         eax,dword ptr [eax+88]
 005288C9    mov         dl,byte ptr ds:[54E70C];0x3F gvar_0054E70C
 005288CF    call        005359A0
 005288D4    cmp         eax,16184
>005288D9    jbe         00528938
 005288DB    mov         eax,dword ptr [ebp-4]
 005288DE    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 005288E1    mov         ax,word ptr [eax+50]
 005288E5    xor         edx,edx
 005288E7    mov         dl,byte ptr ds:[54E718];0xC8 gvar_0054E718
 005288ED    cmp         ax,dx
>005288F0    jbe         00528938
 005288F2    mov         eax,dword ptr [ebp-4]
 005288F5    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 005288F8    mov         eax,dword ptr [eax+88]
 005288FE    mov         dl,byte ptr ds:[54E708];0x14 gvar_0054E708
 00528904    call        005359A0
 00528909    cmp         eax,7918
>0052890E    jbe         00528938
 00528910    mov         eax,dword ptr [ebp-4]
 00528913    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 00528916    mov         eax,dword ptr [eax+88]
 0052891C    mov         dl,byte ptr ds:[54E70C];0x3F gvar_0054E70C
 00528922    call        00535A74
 00528927    mov         eax,dword ptr [ebp-4]
 0052892A    push        eax
 0052892B    push        528B50
 00528930    mov         eax,dword ptr [ebp-4]
 00528933    call        00482D80
 00528938    mov         eax,dword ptr [ebp-4]
 0052893B    cmp         byte ptr [eax+53],0;TAutoThiefAttack.?f53:byte
>0052893F    je          005289DB
 00528945    mov         eax,dword ptr [ebp-4]
 00528948    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 0052894B    mov         eax,dword ptr [eax+88]
 00528951    mov         dl,byte ptr ds:[54E708];0x14 gvar_0054E708
 00528957    call        00535A50
 0052895C    test        al,al
>0052895E    je          005289DB
 00528960    mov         eax,dword ptr [ebp-4]
 00528963    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 00528966    mov         eax,dword ptr [eax+88]
 0052896C    mov         dl,byte ptr ds:[54E708];0x14 gvar_0054E708
 00528972    call        005359A0
 00528977    cmp         eax,0EC54
>0052897C    jbe         005289DB
 0052897E    mov         eax,dword ptr [ebp-4]
 00528981    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 00528984    mov         ax,word ptr [eax+50]
 00528988    xor         edx,edx
 0052898A    mov         dl,byte ptr ds:[54E714];0xC3 gvar_0054E714
 00528990    cmp         ax,dx
>00528993    jbe         005289DB
 00528995    mov         eax,dword ptr [ebp-4]
 00528998    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 0052899B    mov         eax,dword ptr [eax+88]
 005289A1    mov         dl,byte ptr ds:[54E70C];0x3F gvar_0054E70C
 005289A7    call        005359A0
 005289AC    cmp         eax,7918
>005289B1    jbe         005289DB
 005289B3    mov         eax,dword ptr [ebp-4]
 005289B6    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 005289B9    mov         eax,dword ptr [eax+88]
 005289BF    mov         dl,byte ptr ds:[54E708];0x14 gvar_0054E708
 005289C5    call        00535A74
 005289CA    mov         eax,dword ptr [ebp-4]
 005289CD    push        eax
 005289CE    push        528BB8
 005289D3    mov         eax,dword ptr [ebp-4]
 005289D6    call        00482D80
 005289DB    mov         eax,dword ptr [ebp-4]
 005289DE    mov         eax,dword ptr [eax+40];TAutoThiefAttack.?f40:dword
 005289E1    call        00533F88
 005289E6    mov         eax,dword ptr [ebp-4]
 005289E9    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 005289EC    mov         eax,dword ptr [eax+40]
 005289EF    lea         edx,[eax+0C]
 005289F2    mov         eax,dword ptr [ebp-4]
 005289F5    mov         eax,dword ptr [eax+40];TAutoThiefAttack.?f40:dword
 005289F8    call        00533E38
 005289FD    mov         dword ptr [ebp-8],eax
 00528A00    mov         eax,dword ptr [ebp-4]
 00528A03    mov         eax,dword ptr [eax+40];TAutoThiefAttack.?f40:dword
 00528A06    call        00533FA0
 00528A0B    cmp         dword ptr [ebp-8],0
>00528A0F    je          00528A59
 00528A11    mov         eax,dword ptr [ebp-4]
 00528A14    mov         eax,dword ptr [eax+44];TAutoThiefAttack.?f44:dword
 00528A17    mov         eax,dword ptr [eax+40]
 00528A1A    lea         edx,[eax+0C]
 00528A1D    mov         eax,dword ptr [ebp-8]
 00528A20    add         eax,4
 00528A23    call        0051F5FC
 00528A28    fcomp       dword ptr ds:[528A6C];120:Single
 00528A2E    fnstsw      al
 00528A30    sahf
>00528A31    ja          00528A59
 00528A33    mov         eax,dword ptr [ebp-8]
 00528A36    mov         eax,dword ptr [eax]
 00528A38    mov         edx,dword ptr [ebp-4]
 00528A3B    mov         dword ptr [edx+6C],eax;TAutoThiefAttack.?f6C:dword
 00528A3E    mov         eax,dword ptr [ebp-4]
 00528A41    push        eax
 00528A42    push        528A70
 00528A47    mov         eax,dword ptr [ebp-4]
 00528A4A    call        00482D80
 00528A4F    push        12C
 00528A54    call        kernel32.Sleep
 00528A59    mov         eax,dword ptr [ebp-4]
 00528A5C    cmp         byte ptr [eax+0D],0;TAutoThiefAttack.FTerminated:Boolean
>00528A60    je          0052872E
 00528A66    pop         ecx
 00528A67    pop         ecx
 00528A68    pop         ebp
 00528A69    ret
*}
end;

//00528C94
{*function sub_00528C94(?:TAutoThiefAttack):?;
begin
 00528C94    push        ebp
 00528C95    mov         ebp,esp
 00528C97    add         esp,0FFFFFFF8
 00528C9A    mov         dword ptr [ebp-4],eax
 00528C9D    mov         eax,dword ptr [ebp-4]
 00528CA0    mov         eax,dword ptr [eax+58];TAutoThiefAttack.?f58:dword
 00528CA3    mov         al,byte ptr [eax+4]
 00528CA6    mov         byte ptr [ebp-5],al
 00528CA9    mov         al,byte ptr [ebp-5]
 00528CAC    pop         ecx
 00528CAD    pop         ecx
 00528CAE    pop         ebp
 00528CAF    ret
end;*}

//00528CB0
{*procedure sub_00528CB0(?:TAutoThiefAttack; ?:?);
begin
 00528CB0    push        ebp
 00528CB1    mov         ebp,esp
 00528CB3    add         esp,0FFFFFFF8
 00528CB6    mov         byte ptr [ebp-5],dl
 00528CB9    mov         dword ptr [ebp-4],eax
 00528CBC    mov         eax,dword ptr [ebp-4]
 00528CBF    mov         eax,dword ptr [eax+58]
 00528CC2    mov         dl,byte ptr [ebp-5]
 00528CC5    mov         byte ptr [eax+4],dl
 00528CC8    pop         ecx
 00528CC9    pop         ecx
 00528CCA    pop         ebp
 00528CCB    ret
end;*}

//00528CCC
{*procedure sub_00528CCC(?:TAutoThiefAttack; ?:?);
begin
 00528CCC    push        ebp
 00528CCD    mov         ebp,esp
 00528CCF    add         esp,0FFFFFFF8
 00528CD2    mov         word ptr [ebp-6],dx
 00528CD6    mov         dword ptr [ebp-4],eax
 00528CD9    mov         eax,dword ptr [ebp-4]
 00528CDC    mov         eax,dword ptr [eax+58]
 00528CDF    mov         dx,word ptr [ebp-6]
 00528CE3    mov         word ptr [eax+1A],dx
 00528CE7    pop         ecx
 00528CE8    pop         ecx
 00528CE9    pop         ebp
 00528CEA    ret
end;*}

end.