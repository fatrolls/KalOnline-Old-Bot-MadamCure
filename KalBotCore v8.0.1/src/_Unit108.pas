//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit108;

interface

uses
  SysUtils, Classes, MainUnit;

type
  TMonsters = class(TInterfacedObject)
  public
    f30:dword;//f30
    f34:TMainForm;//f34
    constructor Create;//005334F4
  end;
    //function sub_00533460(?:?; ?:?; ?:?):?;//00533460
    //function sub_005334A8(?:?; ?:?; ?:?):?;//005334A8
    //procedure sub_005335D0(?:?; ?:?; ?:?; ?:?);//005335D0
    //function sub_00533710(?:?; ?:?):?;//00533710
    //function sub_005338A4(?:dword; ?:?):?;//005338A4
    //function sub_00533900(?:?; ?:?):?;//00533900
    //function sub_00533954(?:?; ?:?):?;//00533954
    //function sub_00533980(?:?; ?:?):?;//00533980
    //function sub_005339C4(?:?; ?:?; ?:?; ?:?):?;//005339C4
    //procedure sub_00533A14(?:?);//00533A14
    //procedure sub_00533A60(?:?);//00533A60
    //function sub_00533A6C(?:?; ?:?):?;//00533A6C
    //function sub_00533BF8(?:?; ?:?):?;//00533BF8
    //procedure sub_00533C24(?:?; ?:?);//00533C24
    //procedure sub_00533D9C(?:?; ?:?);//00533D9C
    //procedure sub_00533E08(?:?; ?:?);//00533E08
    //procedure sub_00533E20(?:?; ?:?);//00533E20
    //function sub_00533E38(?:dword; ?:?):?;//00533E38
    //procedure sub_00533ED0(?:dword; ?:?; ?:?; ?:?; ?:?; ?:?);//00533ED0
    procedure sub_00533F88(?:dword);//00533F88
    procedure sub_00533FA0(?:dword);//00533FA0

implementation

//00533460
{*function sub_00533460(?:?; ?:?; ?:?):?;
begin
 00533460    push        ebp
 00533461    mov         ebp,esp
 00533463    add         esp,0FFFFFFE8
 00533466    push        esi
 00533467    push        edi
 00533468    mov         esi,eax
 0053346A    lea         edi,[ebp-18]
 0053346D    movs        dword ptr [edi],dword ptr [esi]
 0053346E    movs        dword ptr [edi],dword ptr [esi]
 0053346F    movs        dword ptr [edi],dword ptr [esi]
 00533470    movs        dword ptr [edi],dword ptr [esi]
 00533471    mov         dword ptr [ebp-4],edx
 00533474    mov         byte ptr [ebp-5],0
 00533478    mov         eax,dword ptr [ebp-4]
 0053347B    test        byte ptr [eax+51],2
>0053347F    je          0053349B
 00533481    mov         eax,dword ptr [ebp-4]
 00533484    lea         edx,[eax+4]
 00533487    lea         eax,[ebp-18]
 0053348A    call        0051F5FC
 0053348F    fcomp       qword ptr [ebp+8]
 00533492    fnstsw      al
 00533494    sahf
>00533495    ja          0053349B
 00533497    mov         byte ptr [ebp-5],1
 0053349B    mov         al,byte ptr [ebp-5]
 0053349E    pop         edi
 0053349F    pop         esi
 005334A0    mov         esp,ebp
 005334A2    pop         ebp
 005334A3    ret         8
end;*}

//005334A8
{*function sub_005334A8(?:?; ?:?; ?:?):?;
begin
 005334A8    push        ebp
 005334A9    mov         ebp,esp
 005334AB    add         esp,0FFFFFFE8
 005334AE    push        esi
 005334AF    push        edi
 005334B0    mov         esi,eax
 005334B2    lea         edi,[ebp-18]
 005334B5    movs        dword ptr [edi],dword ptr [esi]
 005334B6    movs        dword ptr [edi],dword ptr [esi]
 005334B7    movs        dword ptr [edi],dword ptr [esi]
 005334B8    movs        dword ptr [edi],dword ptr [esi]
 005334B9    mov         dword ptr [ebp-4],edx
 005334BC    mov         byte ptr [ebp-5],0
 005334C0    cmp         dword ptr [ebp-4],0
>005334C4    je          005334E9
 005334C6    mov         eax,dword ptr [ebp-4]
 005334C9    test        byte ptr [eax+51],1
>005334CD    je          005334E9
 005334CF    mov         eax,dword ptr [ebp-4]
 005334D2    lea         edx,[eax+4]
 005334D5    lea         eax,[ebp-18]
 005334D8    call        0051F5FC
 005334DD    fcomp       qword ptr [ebp+8]
 005334E0    fnstsw      al
 005334E2    sahf
>005334E3    ja          005334E9
 005334E5    mov         byte ptr [ebp-5],1
 005334E9    mov         al,byte ptr [ebp-5]
 005334EC    pop         edi
 005334ED    pop         esi
 005334EE    mov         esp,ebp
 005334F0    pop         ebp
 005334F1    ret         8
end;*}

//005334F4
constructor TMonsters.Create;
begin
{*
 005334F4    push        ebp
 005334F5    mov         ebp,esp
 005334F7    add         esp,0FFFFFFF4
 005334FA    test        dl,dl
>005334FC    je          00533506
 005334FE    add         esp,0FFFFFFF0
 00533501    call        @ClassCreate
 00533506    mov         dword ptr [ebp-0C],ecx
 00533509    mov         byte ptr [ebp-5],dl
 0053350C    mov         dword ptr [ebp-4],eax
 0053350F    xor         edx,edx
 00533511    mov         eax,dword ptr [ebp-4]
 00533514    call        TObject.Create
 00533519    mov         eax,dword ptr [ebp-4]
 0053351C    add         eax,14
 0053351F    push        eax
 00533520    call        kernel32.InitializeCriticalSection
 00533525    mov         eax,dword ptr [ebp-4]
 00533528    mov         edx,dword ptr [ebp-0C]
 0053352B    mov         dword ptr [eax+0C],edx
 0053352E    mov         dl,1
 00533530    mov         eax,[004759C0];TList
 00533535    call        TObject.Create;TList.Create
 0053353A    mov         edx,dword ptr [ebp-4]
 0053353D    mov         dword ptr [edx+10],eax
 00533540    push        6
 00533542    mov         ecx,55AF80
 00533547    mov         edx,dword ptr [ebp-4]
 0053354A    test        edx,edx
>0053354C    je          00533551
 0053354E    sub         edx,0FFFFFFC8
 00533551    mov         eax,dword ptr [ebp-0C]
 00533554    call        005204E4
 00533559    mov         eax,dword ptr [ebp-4]
 0053355C    cmp         byte ptr [ebp-5],0
>00533560    je          00533571
 00533562    call        @AfterConstruction
 00533567    pop         dword ptr fs:[0]
 0053356E    add         esp,0C
 00533571    mov         eax,dword ptr [ebp-4]
 00533574    mov         esp,ebp
 00533576    pop         ebp
 00533577    ret
*}
end;

//005335D0
{*procedure sub_005335D0(?:?; ?:?; ?:?; ?:?);
begin
 005335D0    push        ebp
 005335D1    mov         ebp,esp
 005335D3    add         esp,0FFFFFFF0
 005335D6    mov         dword ptr [ebp-0C],ecx
 005335D9    mov         byte ptr [ebp-5],dl
 005335DC    mov         dword ptr [ebp-4],eax
 005335DF    mov         al,byte ptr [ebp+0C]
 005335E2    sub         al,1
>005335E4    jae         00533707
 005335EA    xor         eax,eax
 005335EC    mov         al,byte ptr [ebp-5]
 005335EF    cmp         eax,9E
>005335F4    jg          00533618
>005335F6    je          005336A9
 005335FC    sub         eax,55
>005335FF    je          005336C9
 00533605    sub         eax,33
>00533608    je          005336E9
 0053360E    sub         eax,14
>00533611    je          0053365B
>00533613    jmp         00533707
 00533618    sub         eax,0A8
>0053361D    je          0053362E
 0053361F    sub         eax,5
>00533622    je          00533689
 00533624    sub         eax,17
>00533627    je          00533689
>00533629    jmp         00533707
 0053362E    mov         eax,dword ptr [ebp-4]
 00533631    call        00533F88
 00533636    mov         eax,dword ptr [ebp-0C]
 00533639    mov         edx,dword ptr [eax+4]
 0053363C    mov         eax,dword ptr [ebp-4]
 0053363F    call        00533A6C
 00533644    mov         edx,eax
 00533646    mov         eax,dword ptr [ebp-4]
 00533649    call        00533710
 0053364E    mov         eax,dword ptr [ebp-4]
 00533651    call        00533FA0
>00533656    jmp         00533707
 0053365B    mov         eax,dword ptr [ebp-0C]
 0053365E    mov         edx,dword ptr [eax+4]
 00533661    mov         eax,dword ptr [ebp-4]
 00533664    call        00533BF8
 00533669    mov         dword ptr [ebp-10],eax
 0053366C    mov         eax,dword ptr [ebp-4]
 0053366F    call        00533F88
 00533674    mov         edx,dword ptr [ebp-10]
 00533677    mov         eax,dword ptr [ebp-4]
 0053367A    call        00533954
 0053367F    mov         eax,dword ptr [ebp-4]
 00533682    call        00533FA0
>00533687    jmp         00533707
 00533689    mov         eax,dword ptr [ebp-4]
 0053368C    call        00533F88
 00533691    mov         eax,dword ptr [ebp-0C]
 00533694    mov         edx,dword ptr [eax+4]
 00533697    mov         eax,dword ptr [ebp-4]
 0053369A    call        00533C24
 0053369F    mov         eax,dword ptr [ebp-4]
 005336A2    call        00533FA0
>005336A7    jmp         00533707
 005336A9    mov         eax,dword ptr [ebp-4]
 005336AC    call        00533F88
 005336B1    mov         eax,dword ptr [ebp-0C]
 005336B4    mov         edx,dword ptr [eax+4]
 005336B7    mov         eax,dword ptr [ebp-4]
 005336BA    call        00533D9C
 005336BF    mov         eax,dword ptr [ebp-4]
 005336C2    call        00533FA0
>005336C7    jmp         00533707
 005336C9    mov         eax,dword ptr [ebp-4]
 005336CC    call        00533F88
 005336D1    mov         eax,dword ptr [ebp-0C]
 005336D4    mov         edx,dword ptr [eax+4]
 005336D7    mov         eax,dword ptr [ebp-4]
 005336DA    call        00533E08
 005336DF    mov         eax,dword ptr [ebp-4]
 005336E2    call        00533FA0
>005336E7    jmp         00533707
 005336E9    mov         eax,dword ptr [ebp-4]
 005336EC    call        00533F88
 005336F1    mov         eax,dword ptr [ebp-0C]
 005336F4    mov         edx,dword ptr [eax+4]
 005336F7    mov         eax,dword ptr [ebp-4]
 005336FA    call        00533E20
 005336FF    mov         eax,dword ptr [ebp-4]
 00533702    call        00533FA0
 00533707    mov         esp,ebp
 00533709    pop         ebp
 0053370A    ret         8
end;*}

//00533710
{*function sub_00533710(?:?; ?:?):?;
begin
 00533710    push        ebp
 00533711    mov         ebp,esp
 00533713    xor         ecx,ecx
 00533715    push        ecx
 00533716    push        ecx
 00533717    push        ecx
 00533718    push        ecx
 00533719    push        ecx
 0053371A    push        ecx
 0053371B    push        ecx
 0053371C    push        ebx
 0053371D    mov         dword ptr [ebp-8],edx
 00533720    mov         dword ptr [ebp-4],eax
 00533723    xor         eax,eax
 00533725    push        ebp
 00533726    push        533857
 0053372B    push        dword ptr fs:[eax]
 0053372E    mov         dword ptr fs:[eax],esp
 00533731    mov         byte ptr [ebp-9],0
 00533735    cmp         dword ptr [ebp-8],0
>00533739    je          0053383C
 0053373F    mov         eax,dword ptr [ebp-4]
 00533742    cmp         word ptr [eax+32],0
>00533747    je          00533755
 00533749    mov         ebx,dword ptr [ebp-4]
 0053374C    mov         edx,dword ptr [ebp-8]
 0053374F    mov         eax,dword ptr [ebx+34]
 00533752    call        dword ptr [ebx+30]
 00533755    mov         eax,dword ptr [ebp-8]
 00533758    cmp         word ptr [eax+24],13B
>0053375E    je          0053376B
 00533760    mov         eax,dword ptr [ebp-8]
 00533763    cmp         word ptr [eax+24],138
>00533769    jne         0053377E
 0053376B    mov         edx,dword ptr ds:[51DFD8];TMonster
 00533771    mov         eax,dword ptr [ebp-8]
 00533774    call        @Dispose
>00533779    jmp         0053383C
 0053377E    mov         eax,dword ptr [ebp-8]
 00533781    mov         edx,dword ptr [eax]
 00533783    mov         eax,dword ptr [ebp-4]
 00533786    call        00533900
 0053378B    test        al,al
>0053378D    jne         005337B2
 0053378F    mov         eax,dword ptr [ebp-8]
 00533792    mov         dl,byte ptr ds:[533868];0x1 gvar_00533868
 00533798    mov         byte ptr [eax+51],dl
 0053379B    mov         edx,dword ptr [ebp-8]
 0053379E    mov         eax,dword ptr [ebp-4]
 005337A1    mov         eax,dword ptr [eax+10]
 005337A4    call        TList.Add
 005337A9    mov         byte ptr [ebp-9],1
>005337AD    jmp         0053383C
 005337B2    mov         eax,dword ptr [ebp-8]
 005337B5    mov         eax,dword ptr [eax]
 005337B7    xor         edx,edx
 005337B9    push        edx
 005337BA    push        eax
 005337BB    lea         eax,[ebp-14]
 005337BE    call        IntToStr
 005337C3    mov         ecx,dword ptr [ebp-14]
 005337C6    lea         eax,[ebp-10]
 005337C9    mov         edx,533874;'MonsterList: Added 2nd monster with same ID='
 005337CE    call        @LStrCat3
 005337D3    mov         edx,dword ptr [ebp-10]
 005337D6    mov         eax,[0055B21C];^gvar_0055E118
 005337DB    mov         eax,dword ptr [eax]
 005337DD    mov         eax,dword ptr [eax+318]
 005337E3    mov         eax,dword ptr [eax+220]
 005337E9    mov         ecx,dword ptr [eax]
 005337EB    call        dword ptr [ecx+38]
 005337EE    mov         eax,dword ptr [ebp-8]
 005337F1    mov         eax,dword ptr [eax]
 005337F3    xor         edx,edx
 005337F5    push        edx
 005337F6    push        eax
 005337F7    lea         eax,[ebp-1C]
 005337FA    call        IntToStr
 005337FF    mov         ecx,dword ptr [ebp-1C]
 00533802    lea         eax,[ebp-18]
 00533805    mov         edx,533874;'MonsterList: Added 2nd monster with same ID='
 0053380A    call        @LStrCat3
 0053380F    mov         edx,dword ptr [ebp-18]
 00533812    mov         eax,[0055B21C];^gvar_0055E118
 00533817    mov         eax,dword ptr [eax]
 00533819    mov         eax,dword ptr [eax+60C]
 0053381F    call        0052BAF0
 00533824    mov         eax,dword ptr [ebp-8]
 00533827    mov         edx,dword ptr [eax]
 00533829    mov         eax,dword ptr [ebp-4]
 0053382C    call        00533954
 00533831    mov         edx,dword ptr [ebp-8]
 00533834    mov         eax,dword ptr [ebp-4]
 00533837    call        00533710
 0053383C    xor         eax,eax
 0053383E    pop         edx
 0053383F    pop         ecx
 00533840    pop         ecx
 00533841    mov         dword ptr fs:[eax],edx
 00533844    push        53385E
 00533849    lea         eax,[ebp-1C]
 0053384C    mov         edx,4
 00533851    call        @LStrArrayClr
 00533856    ret
>00533857    jmp         @HandleFinally
>0053385C    jmp         00533849
 0053385E    mov         al,byte ptr [ebp-9]
 00533861    pop         ebx
 00533862    mov         esp,ebp
 00533864    pop         ebp
 00533865    ret
end;*}

//005338A4
{*function sub_005338A4(?:dword; ?:?):?;
begin
 005338A4    push        ebp
 005338A5    mov         ebp,esp
 005338A7    add         esp,0FFFFFFE8
 005338AA    mov         dword ptr [ebp-8],edx
 005338AD    mov         dword ptr [ebp-4],eax
 005338B0    xor         eax,eax
 005338B2    mov         dword ptr [ebp-0C],eax
 005338B5    mov         eax,dword ptr [ebp-4]
 005338B8    mov         eax,dword ptr [eax+10]
 005338BB    mov         eax,dword ptr [eax+8]
 005338BE    dec         eax
 005338BF    test        eax,eax
>005338C1    jl          005338F9
 005338C3    inc         eax
 005338C4    mov         dword ptr [ebp-18],eax
 005338C7    mov         dword ptr [ebp-10],0
 005338CE    mov         eax,dword ptr [ebp-4]
 005338D1    mov         eax,dword ptr [eax+10]
 005338D4    mov         edx,dword ptr [ebp-10]
 005338D7    call        TList.Get
 005338DC    mov         dword ptr [ebp-14],eax
 005338DF    mov         eax,dword ptr [ebp-14]
 005338E2    mov         eax,dword ptr [eax]
 005338E4    cmp         eax,dword ptr [ebp-8]
>005338E7    jne         005338F1
 005338E9    mov         eax,dword ptr [ebp-14]
 005338EC    mov         dword ptr [ebp-0C],eax
>005338EF    jmp         005338F9
 005338F1    inc         dword ptr [ebp-10]
 005338F4    dec         dword ptr [ebp-18]
>005338F7    jne         005338CE
 005338F9    mov         eax,dword ptr [ebp-0C]
 005338FC    mov         esp,ebp
 005338FE    pop         ebp
 005338FF    ret
end;*}

//00533900
{*function sub_00533900(?:?; ?:?):?;
begin
 00533900    push        ebp
 00533901    mov         ebp,esp
 00533903    add         esp,0FFFFFFEC
 00533906    mov         dword ptr [ebp-8],edx
 00533909    mov         dword ptr [ebp-4],eax
 0053390C    mov         byte ptr [ebp-9],0
 00533910    mov         eax,dword ptr [ebp-4]
 00533913    mov         eax,dword ptr [eax+10]
 00533916    mov         eax,dword ptr [eax+8]
 00533919    dec         eax
 0053391A    test        eax,eax
>0053391C    jl          0053394C
 0053391E    inc         eax
 0053391F    mov         dword ptr [ebp-14],eax
 00533922    mov         dword ptr [ebp-10],0
 00533929    mov         eax,dword ptr [ebp-4]
 0053392C    mov         eax,dword ptr [eax+10]
 0053392F    mov         edx,dword ptr [ebp-10]
 00533932    call        TList.Get
 00533937    mov         eax,dword ptr [eax]
 00533939    cmp         eax,dword ptr [ebp-8]
>0053393C    jne         00533944
 0053393E    mov         byte ptr [ebp-9],1
>00533942    jmp         0053394C
 00533944    inc         dword ptr [ebp-10]
 00533947    dec         dword ptr [ebp-14]
>0053394A    jne         00533929
 0053394C    mov         al,byte ptr [ebp-9]
 0053394F    mov         esp,ebp
 00533951    pop         ebp
 00533952    ret
end;*}

//00533954
{*function sub_00533954(?:?; ?:?):?;
begin
 00533954    push        ebp
 00533955    mov         ebp,esp
 00533957    add         esp,0FFFFFFF4
 0053395A    mov         dword ptr [ebp-8],edx
 0053395D    mov         dword ptr [ebp-4],eax
 00533960    mov         edx,dword ptr [ebp-8]
 00533963    mov         eax,dword ptr [ebp-4]
 00533966    call        005338A4
 0053396B    mov         edx,eax
 0053396D    mov         eax,dword ptr [ebp-4]
 00533970    call        00533980
 00533975    mov         byte ptr [ebp-9],al
 00533978    mov         al,byte ptr [ebp-9]
 0053397B    mov         esp,ebp
 0053397D    pop         ebp
 0053397E    ret
end;*}

//00533980
{*function sub_00533980(?:?; ?:?):?;
begin
 00533980    push        ebp
 00533981    mov         ebp,esp
 00533983    add         esp,0FFFFFFF4
 00533986    mov         dword ptr [ebp-8],edx
 00533989    mov         dword ptr [ebp-4],eax
 0053398C    mov         byte ptr [ebp-9],0
 00533990    cmp         dword ptr [ebp-8],0
>00533994    je          005339BA
 00533996    mov         edx,dword ptr [ebp-8]
 00533999    mov         eax,dword ptr [ebp-4]
 0053399C    mov         eax,dword ptr [eax+10]
 0053399F    call        00478AC4
 005339A4    test        eax,eax
>005339A6    jl          005339BA
 005339A8    mov         edx,dword ptr ds:[51DFD8];TMonster
 005339AE    mov         eax,dword ptr [ebp-8]
 005339B1    call        @Dispose
 005339B6    mov         byte ptr [ebp-9],1
 005339BA    mov         al,byte ptr [ebp-9]
 005339BD    mov         esp,ebp
 005339BF    pop         ebp
 005339C0    ret
end;*}

//005339C4
{*function sub_005339C4(?:?; ?:?; ?:?; ?:?):?;
begin
 005339C4    push        ebp
 005339C5    mov         ebp,esp
 005339C7    add         esp,0FFFFFFEC
 005339CA    mov         byte ptr [ebp-9],cl
 005339CD    mov         dword ptr [ebp-8],edx
 005339D0    mov         dword ptr [ebp-4],eax
 005339D3    mov         byte ptr [ebp-0A],0
 005339D7    mov         edx,dword ptr [ebp-8]
 005339DA    mov         eax,dword ptr [ebp-4]
 005339DD    call        005338A4
 005339E2    mov         dword ptr [ebp-10],eax
 005339E5    cmp         dword ptr [ebp-10],0
>005339E9    je          00533A09
 005339EB    mov         eax,dword ptr [ebp-10]
 005339EE    mov         dword ptr [ebp-14],eax
 005339F1    movsx       eax,byte ptr [ebp-9]
 005339F5    mov         edx,dword ptr [ebp-14]
 005339F8    add         dword ptr [edx+8],eax
 005339FB    movsx       eax,byte ptr [ebp+0C]
 005339FF    mov         edx,dword ptr [ebp-14]
 00533A02    add         dword ptr [edx+0C],eax
 00533A05    mov         byte ptr [ebp-0A],1
 00533A09    mov         al,byte ptr [ebp-0A]
 00533A0C    mov         esp,ebp
 00533A0E    pop         ebp
 00533A0F    ret         8
end;*}

//00533A14
{*procedure sub_00533A14(?:?);
begin
 00533A14    push        ebp
 00533A15    mov         ebp,esp
 00533A17    add         esp,0FFFFFFF8
 00533A1A    mov         dword ptr [ebp-4],eax
 00533A1D    mov         eax,dword ptr [ebp-4]
 00533A20    mov         eax,dword ptr [eax+10]
 00533A23    mov         eax,dword ptr [eax+8]
 00533A26    dec         eax
 00533A27    cmp         eax,0
>00533A2A    jl          00533A51
 00533A2C    mov         dword ptr [ebp-8],eax
 00533A2F    mov         edx,dword ptr [ebp-8]
 00533A32    mov         eax,dword ptr [ebp-4]
 00533A35    mov         eax,dword ptr [eax+10]
 00533A38    call        TList.Get
 00533A3D    mov         edx,dword ptr ds:[51DFD8];TMonster
 00533A43    call        @Dispose
 00533A48    dec         dword ptr [ebp-8]
 00533A4B    cmp         dword ptr [ebp-8],0FFFFFFFF
>00533A4F    jne         00533A2F
 00533A51    mov         eax,dword ptr [ebp-4]
 00533A54    mov         eax,dword ptr [eax+10]
 00533A57    mov         edx,dword ptr [eax]
 00533A59    call        dword ptr [edx+8]
 00533A5C    pop         ecx
 00533A5D    pop         ecx
 00533A5E    pop         ebp
 00533A5F    ret
end;*}

//00533A60
{*procedure sub_00533A60(?:?);
begin
 00533A60    push        ebp
 00533A61    mov         ebp,esp
 00533A63    push        ecx
 00533A64    mov         dword ptr [ebp-4],eax
 00533A67    pop         ecx
 00533A68    pop         ebp
 00533A69    ret
end;*}

//00533A6C
{*function sub_00533A6C(?:?; ?:?):?;
begin
 00533A6C    push        ebp
 00533A6D    mov         ebp,esp
 00533A6F    add         esp,0FFFFFFE4
 00533A72    xor         ecx,ecx
 00533A74    mov         dword ptr [ebp-1C],ecx
 00533A77    mov         dword ptr [ebp-18],ecx
 00533A7A    mov         dword ptr [ebp-8],edx
 00533A7D    mov         dword ptr [ebp-4],eax
 00533A80    xor         eax,eax
 00533A82    push        ebp
 00533A83    push        533BE4
 00533A88    push        dword ptr fs:[eax]
 00533A8B    mov         dword ptr fs:[eax],esp
 00533A8E    mov         edx,dword ptr ds:[51DFD8];TMonster
 00533A94    mov         eax,58
 00533A99    call        00405948
 00533A9E    mov         dword ptr [ebp-10],eax
 00533AA1    lea         eax,[ebp-8]
 00533AA4    mov         edx,3
 00533AA9    call        0051F5E4
 00533AAE    mov         eax,dword ptr [ebp-10]
 00533AB1    mov         dword ptr [ebp-14],eax
 00533AB4    lea         eax,[ebp-8]
 00533AB7    call        0051F398
 00533ABC    mov         edx,dword ptr [ebp-14]
 00533ABF    mov         word ptr [edx+24],ax
 00533AC3    lea         eax,[ebp-8]
 00533AC6    call        0051F3CC
 00533ACB    mov         edx,dword ptr [ebp-14]
 00533ACE    mov         dword ptr [edx],eax
 00533AD0    lea         eax,[ebp-8]
 00533AD3    call        0051F3CC
 00533AD8    mov         edx,dword ptr [ebp-14]
 00533ADB    mov         dword ptr [edx+8],eax
 00533ADE    lea         eax,[ebp-8]
 00533AE1    call        0051F3CC
 00533AE6    mov         edx,dword ptr [ebp-14]
 00533AE9    mov         dword ptr [edx+0C],eax
 00533AEC    lea         eax,[ebp-8]
 00533AEF    call        0051F398
 00533AF4    mov         edx,dword ptr [ebp-14]
 00533AF7    mov         word ptr [edx+14],ax
 00533AFB    lea         eax,[ebp-8]
 00533AFE    call        0051F3CC
 00533B03    mov         edx,dword ptr [ebp-14]
 00533B06    mov         dword ptr [edx+1C],eax
 00533B09    lea         eax,[ebp-8]
 00533B0C    call        0051F3CC
 00533B11    mov         edx,dword ptr [ebp-14]
 00533B14    mov         dword ptr [edx+20],eax
 00533B17    lea         eax,[ebp-8]
 00533B1A    call        0051F3FC
 00533B1F    mov         ecx,dword ptr [ebp-14]
 00533B22    mov         dword ptr [ecx+30],eax
 00533B25    mov         dword ptr [ecx+34],edx
 00533B28    lea         eax,[ebp-8]
 00533B2B    call        0051F3FC
 00533B30    mov         ecx,dword ptr [ebp-14]
 00533B33    mov         dword ptr [ecx+38],eax
 00533B36    mov         dword ptr [ecx+3C],edx
 00533B39    lea         edx,[ebp-18]
 00533B3C    lea         eax,[ebp-8]
 00533B3F    call        0051F434
 00533B44    mov         edx,dword ptr [ebp-18]
 00533B47    mov         eax,dword ptr [ebp-14]
 00533B4A    add         eax,28
 00533B4D    call        @LStrAsg
 00533B52    lea         eax,[ebp-8]
 00533B55    call        0051F338
 00533B5A    mov         edx,dword ptr [ebp-14]
 00533B5D    mov         byte ptr [edx+26],al
 00533B60    lea         eax,[ebp-8]
 00533B63    call        0051F3CC
 00533B68    mov         edx,dword ptr [ebp-14]
 00533B6B    mov         dword ptr [edx+18],eax
 00533B6E    lea         edx,[ebp-1C]
 00533B71    lea         eax,[ebp-8]
 00533B74    call        0051F434
 00533B79    mov         edx,dword ptr [ebp-1C]
 00533B7C    mov         eax,dword ptr [ebp-14]
 00533B7F    add         eax,2C
 00533B82    call        @LStrAsg
 00533B87    lea         eax,[ebp-8]
 00533B8A    call        0051F3FC
 00533B8F    mov         ecx,dword ptr [ebp-14]
 00533B92    mov         dword ptr [ecx+48],eax
 00533B95    mov         dword ptr [ecx+4C],edx
 00533B98    lea         eax,[ebp-8]
 00533B9B    call        0051F3FC
 00533BA0    mov         ecx,dword ptr [ebp-14]
 00533BA3    mov         dword ptr [ecx+40],eax
 00533BA6    mov         dword ptr [ecx+44],edx
 00533BA9    lea         eax,[ebp-8]
 00533BAC    call        0051F338
 00533BB1    mov         edx,dword ptr [ebp-14]
 00533BB4    mov         byte ptr [edx+50],al
 00533BB7    mov         eax,dword ptr [ebp-14]
 00533BBA    mov         dl,byte ptr ds:[533BF4];0x1 gvar_00533BF4
 00533BC0    mov         byte ptr [eax+51],dl
 00533BC3    mov         eax,dword ptr [ebp-10]
 00533BC6    mov         dword ptr [ebp-0C],eax
 00533BC9    xor         eax,eax
 00533BCB    pop         edx
 00533BCC    pop         ecx
 00533BCD    pop         ecx
 00533BCE    mov         dword ptr fs:[eax],edx
 00533BD1    push        533BEB
 00533BD6    lea         eax,[ebp-1C]
 00533BD9    mov         edx,2
 00533BDE    call        @LStrArrayClr
 00533BE3    ret
>00533BE4    jmp         @HandleFinally
>00533BE9    jmp         00533BD6
 00533BEB    mov         eax,dword ptr [ebp-0C]
 00533BEE    mov         esp,ebp
 00533BF0    pop         ebp
 00533BF1    ret
end;*}

//00533BF8
{*function sub_00533BF8(?:?; ?:?):?;
begin
 00533BF8    push        ebp
 00533BF9    mov         ebp,esp
 00533BFB    add         esp,0FFFFFFF4
 00533BFE    mov         dword ptr [ebp-8],edx
 00533C01    mov         dword ptr [ebp-4],eax
 00533C04    lea         eax,[ebp-8]
 00533C07    mov         edx,3
 00533C0C    call        0051F5E4
 00533C11    lea         eax,[ebp-8]
 00533C14    call        0051F3CC
 00533C19    mov         dword ptr [ebp-0C],eax
 00533C1C    mov         eax,dword ptr [ebp-0C]
 00533C1F    mov         esp,ebp
 00533C21    pop         ebp
 00533C22    ret
end;*}

//00533C24
{*procedure sub_00533C24(?:?; ?:?);
begin
 00533C24    push        ebp
 00533C25    mov         ebp,esp
 00533C27    add         esp,0FFFFFFF0
 00533C2A    mov         dword ptr [ebp-8],edx
 00533C2D    mov         dword ptr [ebp-4],eax
 00533C30    lea         eax,[ebp-8]
 00533C33    mov         edx,3
 00533C38    call        0051F5E4
 00533C3D    lea         eax,[ebp-8]
 00533C40    call        0051F3CC
 00533C45    mov         dword ptr [ebp-0C],eax
 00533C48    lea         eax,[ebp-8]
 00533C4B    call        0051F368
 00533C50    mov         byte ptr [ebp-0D],al
 00533C53    lea         eax,[ebp-8]
 00533C56    call        0051F368
 00533C5B    mov         byte ptr [ebp-0E],al
 00533C5E    lea         eax,[ebp-8]
 00533C61    call        0051F338
 00533C66    mov         byte ptr [ebp-0F],al
 00533C69    mov         al,byte ptr [ebp-0E]
 00533C6C    push        eax
 00533C6D    mov         al,byte ptr [ebp-0F]
 00533C70    push        eax
 00533C71    mov         cl,byte ptr [ebp-0D]
 00533C74    mov         edx,dword ptr [ebp-0C]
 00533C77    mov         eax,dword ptr [ebp-4]
 00533C7A    call        005339C4
 00533C7F    mov         esp,ebp
 00533C81    pop         ebp
 00533C82    ret
end;*}

//00533D9C
{*procedure sub_00533D9C(?:?; ?:?);
begin
 00533D9C    push        ebp
 00533D9D    mov         ebp,esp
 00533D9F    add         esp,0FFFFFFF0
 00533DA2    mov         dword ptr [ebp-8],edx
 00533DA5    mov         dword ptr [ebp-4],eax
 00533DA8    lea         eax,[ebp-8]
 00533DAB    mov         edx,3
 00533DB0    call        0051F5E4
 00533DB5    lea         eax,[ebp-8]
 00533DB8    call        0051F3CC
 00533DBD    mov         dword ptr [ebp-0C],eax
 00533DC0    lea         eax,[ebp-8]
 00533DC3    call        0051F338
 00533DC8    mov         byte ptr [ebp-0D],al
 00533DCB    mov         al,byte ptr [ebp-0D]
 00533DCE    sub         al,8
>00533DD0    je          00533DD9
 00533DD2    dec         eax
 00533DD3    sub         al,2
>00533DD5    jb          00533DF9
>00533DD7    jmp         00533E04
 00533DD9    mov         edx,dword ptr [ebp-0C]
 00533DDC    mov         eax,dword ptr [ebp-4]
 00533DDF    call        005338A4
 00533DE4    and         byte ptr [eax+51],0FE
 00533DE8    mov         edx,dword ptr [ebp-0C]
 00533DEB    mov         eax,dword ptr [ebp-4]
 00533DEE    call        005338A4
 00533DF3    or          byte ptr [eax+51],2
>00533DF7    jmp         00533E04
 00533DF9    mov         edx,dword ptr [ebp-0C]
 00533DFC    mov         eax,dword ptr [ebp-4]
 00533DFF    call        00533954
 00533E04    mov         esp,ebp
 00533E06    pop         ebp
 00533E07    ret
end;*}

//00533E08
{*procedure sub_00533E08(?:?; ?:?);
begin
 00533E08    push        ebp
 00533E09    mov         ebp,esp
 00533E0B    add         esp,0FFFFFFF8
 00533E0E    mov         dword ptr [ebp-8],edx
 00533E11    mov         dword ptr [ebp-4],eax
 00533E14    mov         eax,dword ptr [ebp-4]
 00533E17    call        00533A14
 00533E1C    pop         ecx
 00533E1D    pop         ecx
 00533E1E    pop         ebp
 00533E1F    ret
end;*}

//00533E20
{*procedure sub_00533E20(?:?; ?:?);
begin
 00533E20    push        ebp
 00533E21    mov         ebp,esp
 00533E23    add         esp,0FFFFFFF8
 00533E26    mov         dword ptr [ebp-8],edx
 00533E29    mov         dword ptr [ebp-4],eax
 00533E2C    mov         eax,dword ptr [ebp-4]
 00533E2F    call        00533A14
 00533E34    pop         ecx
 00533E35    pop         ecx
 00533E36    pop         ebp
 00533E37    ret
end;*}

//00533E38
{*function sub_00533E38(?:dword; ?:?):?;
begin
 00533E38    push        ebp
 00533E39    mov         ebp,esp
 00533E3B    add         esp,0FFFFFFCC
 00533E3E    push        esi
 00533E3F    push        edi
 00533E40    mov         esi,edx
 00533E42    lea         edi,[ebp-34]
 00533E45    movs        dword ptr [edi],dword ptr [esi]
 00533E46    movs        dword ptr [edi],dword ptr [esi]
 00533E47    movs        dword ptr [edi],dword ptr [esi]
 00533E48    movs        dword ptr [edi],dword ptr [esi]
 00533E49    mov         dword ptr [ebp-4],eax
 00533E4C    mov         dword ptr [ebp-20],30773B76
 00533E53    mov         dword ptr [ebp-1C],7FEE42D1
 00533E5A    xor         eax,eax
 00533E5C    mov         dword ptr [ebp-8],eax
 00533E5F    mov         eax,dword ptr [ebp-4]
 00533E62    mov         eax,dword ptr [eax+10]
 00533E65    mov         eax,dword ptr [eax+8]
 00533E68    dec         eax
 00533E69    test        eax,eax
>00533E6B    jl          00533EC5
 00533E6D    inc         eax
 00533E6E    mov         dword ptr [ebp-24],eax
 00533E71    mov         dword ptr [ebp-0C],0
 00533E78    mov         eax,dword ptr [ebp-4]
 00533E7B    mov         eax,dword ptr [eax+10]
 00533E7E    mov         edx,dword ptr [ebp-0C]
 00533E81    call        TList.Get
 00533E86    lea         edx,[eax+4]
 00533E89    lea         eax,[ebp-34]
 00533E8C    call        0051F5FC
 00533E91    fstp        qword ptr [ebp-18]
 00533E94    wait
 00533E95    fld         qword ptr [ebp-18]
 00533E98    fcomp       qword ptr [ebp-20]
 00533E9B    fnstsw      al
 00533E9D    sahf
>00533E9E    jae         00533EBD
 00533EA0    mov         eax,dword ptr [ebp-18]
 00533EA3    mov         dword ptr [ebp-20],eax
 00533EA6    mov         eax,dword ptr [ebp-14]
 00533EA9    mov         dword ptr [ebp-1C],eax
 00533EAC    mov         eax,dword ptr [ebp-4]
 00533EAF    mov         eax,dword ptr [eax+10]
 00533EB2    mov         edx,dword ptr [ebp-0C]
 00533EB5    call        TList.Get
 00533EBA    mov         dword ptr [ebp-8],eax
 00533EBD    inc         dword ptr [ebp-0C]
 00533EC0    dec         dword ptr [ebp-24]
>00533EC3    jne         00533E78
 00533EC5    mov         eax,dword ptr [ebp-8]
 00533EC8    pop         edi
 00533EC9    pop         esi
 00533ECA    mov         esp,ebp
 00533ECC    pop         ebp
 00533ECD    ret
end;*}

//00533ED0
{*procedure sub_00533ED0(?:dword; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00533ED0    push        ebp
 00533ED1    mov         ebp,esp
 00533ED3    add         esp,0FFFFFFD8
 00533ED6    push        esi
 00533ED7    push        edi
 00533ED8    mov         esi,ecx
 00533EDA    lea         edi,[ebp-28]
 00533EDD    movs        dword ptr [edi],dword ptr [esi]
 00533EDE    movs        dword ptr [edi],dword ptr [esi]
 00533EDF    movs        dword ptr [edi],dword ptr [esi]
 00533EE0    movs        dword ptr [edi],dword ptr [esi]
 00533EE1    mov         dword ptr [ebp-8],edx
 00533EE4    mov         dword ptr [ebp-4],eax
 00533EE7    mov         eax,dword ptr [ebp-4]
 00533EEA    mov         eax,dword ptr [eax+10]
 00533EED    mov         eax,dword ptr [eax+8]
 00533EF0    push        eax
 00533EF1    mov         eax,dword ptr [ebp+8]
 00533EF4    mov         ecx,1
 00533EF9    mov         edx,dword ptr ds:[51E054];TCharPIDs
 00533EFF    call        @DynArraySetLength
 00533F04    add         esp,4
 00533F07    xor         eax,eax
 00533F09    mov         dword ptr [ebp-0C],eax
 00533F0C    mov         eax,dword ptr [ebp-4]
 00533F0F    mov         eax,dword ptr [eax+10]
 00533F12    mov         eax,dword ptr [eax+8]
 00533F15    dec         eax
 00533F16    test        eax,eax
>00533F18    jl          00533F64
 00533F1A    inc         eax
 00533F1B    mov         dword ptr [ebp-18],eax
 00533F1E    mov         dword ptr [ebp-10],0
 00533F25    mov         eax,dword ptr [ebp-4]
 00533F28    mov         eax,dword ptr [eax+10]
 00533F2B    mov         edx,dword ptr [ebp-10]
 00533F2E    call        TList.Get
 00533F33    mov         dword ptr [ebp-14],eax
 00533F36    push        dword ptr [ebp+10]
 00533F39    push        dword ptr [ebp+0C]
 00533F3C    mov         edx,dword ptr [ebp-14]
 00533F3F    lea         eax,[ebp-28]
 00533F42    call        dword ptr [ebp-8]
 00533F45    test        al,al
>00533F47    je          00533F5C
 00533F49    mov         eax,dword ptr [ebp+8]
 00533F4C    mov         eax,dword ptr [eax]
 00533F4E    mov         edx,dword ptr [ebp-0C]
 00533F51    mov         ecx,dword ptr [ebp-14]
 00533F54    mov         ecx,dword ptr [ecx]
 00533F56    mov         dword ptr [eax+edx*4],ecx
 00533F59    inc         dword ptr [ebp-0C]
 00533F5C    inc         dword ptr [ebp-10]
 00533F5F    dec         dword ptr [ebp-18]
>00533F62    jne         00533F25
 00533F64    mov         eax,dword ptr [ebp-0C]
 00533F67    push        eax
 00533F68    mov         eax,dword ptr [ebp+8]
 00533F6B    mov         ecx,1
 00533F70    mov         edx,dword ptr ds:[51E054];TCharPIDs
 00533F76    call        @DynArraySetLength
 00533F7B    add         esp,4
 00533F7E    pop         edi
 00533F7F    pop         esi
 00533F80    mov         esp,ebp
 00533F82    pop         ebp
 00533F83    ret         0C
end;*}

//00533F88
procedure sub_00533F88(?:dword);
begin
{*
 00533F88    push        ebp
 00533F89    mov         ebp,esp
 00533F8B    push        ecx
 00533F8C    mov         dword ptr [ebp-4],eax
 00533F8F    mov         eax,dword ptr [ebp-4]
 00533F92    add         eax,14
 00533F95    push        eax
 00533F96    call        kernel32.EnterCriticalSection
 00533F9B    pop         ecx
 00533F9C    pop         ebp
 00533F9D    ret
*}
end;

//00533FA0
procedure sub_00533FA0(?:dword);
begin
{*
 00533FA0    push        ebp
 00533FA1    mov         ebp,esp
 00533FA3    push        ecx
 00533FA4    mov         dword ptr [ebp-4],eax
 00533FA7    mov         eax,dword ptr [ebp-4]
 00533FAA    add         eax,14
 00533FAD    push        eax
 00533FAE    call        kernel32.LeaveCriticalSection
 00533FB3    pop         ecx
 00533FB4    pop         ebp
 00533FB5    ret
*}
end;

Initialization
Finalization
//00533FB8
{*
 00533FB8    push        ebp
 00533FB9    mov         ebp,esp
 00533FBB    xor         eax,eax
 00533FBD    push        ebp
 00533FBE    push        533FF4
 00533FC3    push        dword ptr fs:[eax]
 00533FC6    mov         dword ptr fs:[eax],esp
 00533FC9    inc         dword ptr ds:[55E10C]
>00533FCF    jne         00533FE6
 00533FD1    mov         eax,55AF90;^'atCommon'
 00533FD6    mov         ecx,0F
 00533FDB    mov         edx,dword ptr ds:[4010AC];String
 00533FE1    call        @FinalizeArray
 00533FE6    xor         eax,eax
 00533FE8    pop         edx
 00533FE9    pop         ecx
 00533FEA    pop         ecx
 00533FEB    mov         dword ptr fs:[eax],edx
 00533FEE    push        533FFB
 00533FF3    ret
>00533FF4    jmp         @HandleFinally
>00533FF9    jmp         00533FF3
 00533FFB    pop         ebp
 00533FFC    ret
*}
end.