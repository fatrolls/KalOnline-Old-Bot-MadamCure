//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit96;

interface

uses
  SysUtils, Classes, MainUnit;

type
  THeroSkills = class(TObject)
  public
    f4:TList;//f4
    constructor Create;//00535908
  end;
  THeroQuests = class(TObject)
  public
    f4:TList;//f4
    constructor Create;//00535CE0
  end;
  TPlayers = class(TInterfacedObject)
  public
    f30:dword;//f30
    f34:TMainForm;//f34
    f38:dword;//f38
    f3C:TMainForm;//f3C
    f40:dword;//f40
    f88:dword;//f88
    f8C:dword;//f8C
    constructor Create;//00534184
  end;
    //procedure sub_00534258(?:?);//00534258
    //procedure sub_005342FC(?:?; ?:?; ?:?; ?:?);//005342FC
    //function sub_0053452C(?:?; ?:?):?;//0053452C
    //function sub_005346D4(?:?; ?:?):?;//005346D4
    //function sub_00534730(?:dword; ?:String):?;//00534730
    //function sub_005347C8(?:?; ?:?):?;//005347C8
    //function sub_0053481C(?:dword; ?:dword):?;//0053481C
    //function sub_00534844(?:?; ?:?):?;//00534844
    //function sub_00534870(?:?; ?:?):?;//00534870
    //procedure sub_005348B4(?:?);//005348B4
    //function sub_00534900(?:?):?;//00534900
    //function sub_0053491C(?:?):?;//0053491C
    //function sub_005349AC(?:?; ?:?):?;//005349AC
    //function sub_00534BC0(?:?; ?:?):?;//00534BC0
    //procedure sub_00534BEC(?:?; ?:?);//00534BEC
    //procedure sub_00534CB4(?:?; ?:?);//00534CB4
    //procedure sub_00534D10(?:?; ?:?);//00534D10
    //procedure sub_00534D88(?:?; ?:?);//00534D88
    //procedure sub_00534DC4(?:?; ?:?);//00534DC4
    //procedure sub_00534E04(?:?; ?:?);//00534E04
    //procedure sub_0053500C(?:?; ?:?);//0053500C
    //procedure sub_005350BC(?:?; ?:?);//005350BC
    //procedure sub_00535144(?:?; ?:?);//00535144
    //procedure sub_005351D0(?:?; ?:?);//005351D0
    //procedure sub_005351E0(?:?);//005351E0
    //procedure sub_005351F8(?:?);//005351F8
    //function sub_00535210(?:?; ?:?):?;//00535210
    //procedure sub_00535234(?:?; ?:?);//00535234
    //procedure sub_00535288(?:?; ?:?);//00535288
    //procedure sub_005353C0(?:?; ?:?);//005353C0
    //function sub_00535414(?:?):?;//00535414
    //procedure sub_00535690(?:?; ?:?);//00535690
    //function sub_00535730(?:TPlayers):?;//00535730
    //function sub_00535788(?:?):?;//00535788
    //function sub_005357D4(?:TPlayers):?;//005357D4
    //function sub_00535800(?:TPlayers):?;//00535800
    //procedure sub_0053581C(?:?; ?:?; ?:?; ?:?);//0053581C
    //procedure sub_005358A4(?:?);//005358A4
    //function sub_005359A0(?:?; ?:?):?;//005359A0
    //function sub_005359EC(?:?; ?:?):?;//005359EC
    //function sub_00535A50(?:dword; ?:?):?;//00535A50
    //procedure sub_00535A74(?:?; ?:?);//00535A74
    //procedure sub_00535B40(?:?; ?:?);//00535B40
    //procedure sub_00535C44(?:?; ?:?; ?:?; ?:?);//00535C44
    //procedure sub_00535C94(?:?);//00535C94
    //procedure sub_00535D70(?:?; ?:?);//00535D70

implementation

//00534184
constructor TPlayers.Create;
begin
{*
 00534184    push        ebp
 00534185    mov         ebp,esp
 00534187    add         esp,0FFFFFFF4
 0053418A    test        dl,dl
>0053418C    je          00534196
 0053418E    add         esp,0FFFFFFF0
 00534191    call        @ClassCreate
 00534196    mov         dword ptr [ebp-0C],ecx
 00534199    mov         byte ptr [ebp-5],dl
 0053419C    mov         dword ptr [ebp-4],eax
 0053419F    xor         edx,edx
 005341A1    mov         eax,dword ptr [ebp-4]
 005341A4    call        TObject.Create
 005341A9    mov         eax,dword ptr [ebp-4]
 005341AC    add         eax,14
 005341AF    push        eax
 005341B0    call        kernel32.InitializeCriticalSection
 005341B5    mov         eax,dword ptr [ebp-0C]
 005341B8    mov         eax,dword ptr [eax]
 005341BA    mov         edx,dword ptr [ebp-4]
 005341BD    mov         dword ptr [edx+0C],eax
 005341C0    mov         dl,1
 005341C2    mov         eax,[004759C0];TList
 005341C7    call        TObject.Create;TList.Create
 005341CC    mov         edx,dword ptr [ebp-4]
 005341CF    mov         dword ptr [edx+10],eax
 005341D2    mov         dl,1
 005341D4    mov         eax,[00534008];THeroSkills
 005341D9    call        THeroSkills.Create;THeroSkills.Create
 005341DE    mov         edx,dword ptr [ebp-4]
 005341E1    mov         dword ptr [edx+88],eax
 005341E7    mov         dl,1
 005341E9    mov         eax,[00534060];THeroQuests
 005341EE    call        THeroQuests.Create;THeroQuests.Create
 005341F3    mov         edx,dword ptr [ebp-4]
 005341F6    mov         dword ptr [edx+8C],eax
 005341FC    push        0F
 005341FE    mov         ecx,55AFCC
 00534203    mov         edx,dword ptr [ebp-4]
 00534206    test        edx,edx
>00534208    je          00534210
 0053420A    sub         edx,0FFFFFF70
 00534210    mov         eax,dword ptr [ebp-0C]
 00534213    mov         eax,dword ptr [eax]
 00534215    call        005204E4
 0053421A    push        2
 0053421C    mov         ecx,55AFEC
 00534221    mov         edx,dword ptr [ebp-4]
 00534224    test        edx,edx
>00534226    je          0053422E
 00534228    sub         edx,0FFFFFF70
 0053422E    mov         eax,dword ptr [ebp-0C]
 00534231    mov         eax,dword ptr [eax]
 00534233    call        005203DC
 00534238    mov         eax,dword ptr [ebp-4]
 0053423B    cmp         byte ptr [ebp-5],0
>0053423F    je          00534250
 00534241    call        @AfterConstruction
 00534246    pop         dword ptr fs:[0]
 0053424D    add         esp,0C
 00534250    mov         eax,dword ptr [ebp-4]
 00534253    mov         esp,ebp
 00534255    pop         ebp
 00534256    ret
*}
end;

//00534258
{*procedure sub_00534258(?:?);
begin
 00534258    push        ebp
 00534259    mov         ebp,esp
 0053425B    push        ecx
 0053425C    mov         dword ptr [ebp-4],eax
 0053425F    pop         ecx
 00534260    pop         ebp
 00534261    ret
end;*}

//005342FC
{*procedure sub_005342FC(?:?; ?:?; ?:?; ?:?);
begin
 005342FC    push        ebp
 005342FD    mov         ebp,esp
 005342FF    add         esp,0FFFFFFF4
 00534302    mov         dword ptr [ebp-0C],ecx
 00534305    mov         byte ptr [ebp-5],dl
 00534308    mov         dword ptr [ebp-4],eax
 0053430B    mov         al,byte ptr [ebp+0C]
 0053430E    sub         al,1
>00534310    jb          0053431D
>00534312    je          005344F6
>00534318    jmp         00534523
 0053431D    xor         eax,eax
 0053431F    mov         al,byte ptr [ebp-5]
 00534322    cmp         eax,8B
>00534327    jg          00534376
>00534329    je          005343E7
 0053432F    cmp         eax,60
>00534332    jg          0053435A
>00534334    je          0053445D
 0053433A    sub         eax,1
>0053433D    jb          005344B6
 00534343    sub         eax,15
>00534346    je          00534414
 0053434C    sub         eax,3F
>0053434F    je          00534427
>00534355    jmp         00534523
 0053435A    sub         eax,62
>0053435D    je          005344C6
 00534363    sub         eax,1D
>00534366    je          005343BA
 00534368    sub         eax,9
>0053436B    je          00534496
>00534371    jmp         00534523
 00534376    cmp         eax,0AF
>0053437B    jg          005343A1
>0053437D    je          00534470
 00534383    sub         eax,9E
>00534388    je          005344E6
 0053438E    sub         eax,8
>00534391    je          0053444A
 00534397    sub         eax,6
>0053439A    je          00534414
>0053439C    jmp         00534523
 005343A1    sub         eax,0B2
>005343A6    je          005344D6
 005343AC    sub         eax,5
>005343AF    je          00534483
>005343B5    jmp         00534523
 005343BA    mov         eax,dword ptr [ebp-4]
 005343BD    call        005351E0
 005343C2    mov         eax,dword ptr [ebp-0C]
 005343C5    mov         edx,dword ptr [eax+4]
 005343C8    mov         eax,dword ptr [ebp-4]
 005343CB    call        005349AC
 005343D0    mov         edx,eax
 005343D2    mov         eax,dword ptr [ebp-4]
 005343D5    call        0053452C
 005343DA    mov         eax,dword ptr [ebp-4]
 005343DD    call        005351F8
>005343E2    jmp         00534523
 005343E7    mov         eax,dword ptr [ebp-4]
 005343EA    call        005351E0
 005343EF    mov         eax,dword ptr [ebp-0C]
 005343F2    mov         edx,dword ptr [eax+4]
 005343F5    mov         eax,dword ptr [ebp-4]
 005343F8    call        00534BC0
 005343FD    mov         edx,eax
 005343FF    mov         eax,dword ptr [ebp-4]
 00534402    call        00534844
 00534407    mov         eax,dword ptr [ebp-4]
 0053440A    call        005351F8
>0053440F    jmp         00534523
 00534414    mov         eax,dword ptr [ebp-0C]
 00534417    mov         edx,dword ptr [eax+4]
 0053441A    mov         eax,dword ptr [ebp-4]
 0053441D    call        00534BEC
>00534422    jmp         00534523
 00534427    mov         eax,dword ptr [ebp-4]
 0053442A    call        005351E0
 0053442F    mov         eax,dword ptr [ebp-0C]
 00534432    mov         edx,dword ptr [eax+4]
 00534435    mov         eax,dword ptr [ebp-4]
 00534438    call        00534D10
 0053443D    mov         eax,dword ptr [ebp-4]
 00534440    call        005351F8
>00534445    jmp         00534523
 0053444A    mov         eax,dword ptr [ebp-0C]
 0053444D    mov         edx,dword ptr [eax+4]
 00534450    mov         eax,dword ptr [ebp-4]
 00534453    call        00534E04
>00534458    jmp         00534523
 0053445D    mov         eax,dword ptr [ebp-0C]
 00534460    mov         edx,dword ptr [eax+4]
 00534463    mov         eax,dword ptr [ebp-4]
 00534466    call        0053500C
>0053446B    jmp         00534523
 00534470    mov         eax,dword ptr [ebp-0C]
 00534473    mov         edx,dword ptr [eax+4]
 00534476    mov         eax,dword ptr [ebp-4]
 00534479    call        005351D0
>0053447E    jmp         00534523
 00534483    mov         eax,dword ptr [ebp-0C]
 00534486    mov         edx,dword ptr [eax+4]
 00534489    mov         eax,dword ptr [ebp-4]
 0053448C    call        005350BC
>00534491    jmp         00534523
 00534496    mov         eax,dword ptr [ebp-4]
 00534499    call        005351E0
 0053449E    mov         eax,dword ptr [ebp-0C]
 005344A1    mov         edx,dword ptr [eax+4]
 005344A4    mov         eax,dword ptr [ebp-4]
 005344A7    call        00534DC4
 005344AC    mov         eax,dword ptr [ebp-4]
 005344AF    call        005351F8
>005344B4    jmp         00534523
 005344B6    mov         eax,dword ptr [ebp-0C]
 005344B9    mov         edx,dword ptr [eax+4]
 005344BC    mov         eax,dword ptr [ebp-4]
 005344BF    call        00535144
>005344C4    jmp         00534523
 005344C6    mov         eax,dword ptr [ebp-0C]
 005344C9    mov         edx,dword ptr [eax+4]
 005344CC    mov         eax,dword ptr [ebp-4]
 005344CF    call        00535234
>005344D4    jmp         00534523
 005344D6    mov         eax,dword ptr [ebp-0C]
 005344D9    mov         edx,dword ptr [eax+4]
 005344DC    mov         eax,dword ptr [ebp-4]
 005344DF    call        00535288
>005344E4    jmp         00534523
 005344E6    mov         eax,dword ptr [ebp-0C]
 005344E9    mov         edx,dword ptr [eax+4]
 005344EC    mov         eax,dword ptr [ebp-4]
 005344EF    call        005353C0
>005344F4    jmp         00534523
 005344F6    mov         al,byte ptr [ebp-5]
 005344F9    sub         al,6B
>005344FB    je          00534505
 005344FD    sub         al,1E
>005344FF    je          00534515
 00534501    sub         al,19
>00534503    jne         00534523
 00534505    mov         eax,dword ptr [ebp-0C]
 00534508    mov         edx,dword ptr [eax+4]
 0053450B    mov         eax,dword ptr [ebp-4]
 0053450E    call        00534CB4
>00534513    jmp         00534523
 00534515    mov         eax,dword ptr [ebp-0C]
 00534518    mov         edx,dword ptr [eax+4]
 0053451B    mov         eax,dword ptr [ebp-4]
 0053451E    call        00534D88
 00534523    mov         esp,ebp
 00534525    pop         ebp
 00534526    ret         8
end;*}

//0053452C
{*function sub_0053452C(?:?; ?:?):?;
begin
 0053452C    push        ebp
 0053452D    mov         ebp,esp
 0053452F    xor         ecx,ecx
 00534531    push        ecx
 00534532    push        ecx
 00534533    push        ecx
 00534534    push        ecx
 00534535    push        ecx
 00534536    push        ecx
 00534537    push        ecx
 00534538    push        ebx
 00534539    mov         dword ptr [ebp-8],edx
 0053453C    mov         dword ptr [ebp-4],eax
 0053453F    xor         eax,eax
 00534541    push        ebp
 00534542    push        53467F
 00534547    push        dword ptr fs:[eax]
 0053454A    mov         dword ptr fs:[eax],esp
 0053454D    mov         byte ptr [ebp-9],0
 00534551    cmp         dword ptr [ebp-8],0
>00534555    je          00534664
 0053455B    mov         eax,dword ptr [ebp-4]
 0053455E    cmp         word ptr [eax+32],0
>00534563    je          00534571
 00534565    mov         ebx,dword ptr [ebp-4]
 00534568    mov         edx,dword ptr [ebp-8]
 0053456B    mov         eax,dword ptr [ebx+34]
 0053456E    call        dword ptr [ebx+30]
 00534571    mov         eax,dword ptr [ebp-8]
 00534574    cmp         byte ptr [eax+88],0
>0053457B    je          0053458F
 0053457D    mov         eax,dword ptr [ebp-8]
 00534580    mov         edx,dword ptr [ebp-4]
 00534583    mov         dword ptr [edx+40],eax
 00534586    mov         byte ptr [ebp-9],1
>0053458A    jmp         00534664
 0053458F    mov         eax,dword ptr [ebp-8]
 00534592    mov         edx,dword ptr [eax]
 00534594    mov         eax,dword ptr [ebp-4]
 00534597    call        005347C8
 0053459C    test        al,al
>0053459E    jne         005345B7
 005345A0    mov         edx,dword ptr [ebp-8]
 005345A3    mov         eax,dword ptr [ebp-4]
 005345A6    mov         eax,dword ptr [eax+10]
 005345A9    call        TList.Add
 005345AE    mov         byte ptr [ebp-9],1
>005345B2    jmp         00534664
 005345B7    push        534698;'PlayerList: Added 2nd char with same ID='
 005345BC    mov         eax,dword ptr [ebp-8]
 005345BF    mov         eax,dword ptr [eax]
 005345C1    xor         edx,edx
 005345C3    push        edx
 005345C4    push        eax
 005345C5    lea         eax,[ebp-14]
 005345C8    call        IntToStr
 005345CD    push        dword ptr [ebp-14]
 005345D0    push        5346CC;' name='
 005345D5    mov         eax,dword ptr [ebp-8]
 005345D8    push        dword ptr [eax+4]
 005345DB    lea         eax,[ebp-10]
 005345DE    mov         edx,4
 005345E3    call        @LStrCatN
 005345E8    mov         edx,dword ptr [ebp-10]
 005345EB    mov         eax,[0055B21C];^gvar_0055E118
 005345F0    mov         eax,dword ptr [eax]
 005345F2    mov         eax,dword ptr [eax+318]
 005345F8    mov         eax,dword ptr [eax+220]
 005345FE    mov         ecx,dword ptr [eax]
 00534600    call        dword ptr [ecx+38]
 00534603    push        534698;'PlayerList: Added 2nd char with same ID='
 00534608    mov         eax,dword ptr [ebp-8]
 0053460B    mov         eax,dword ptr [eax]
 0053460D    xor         edx,edx
 0053460F    push        edx
 00534610    push        eax
 00534611    lea         eax,[ebp-1C]
 00534614    call        IntToStr
 00534619    push        dword ptr [ebp-1C]
 0053461C    push        5346CC;' name='
 00534621    mov         eax,dword ptr [ebp-8]
 00534624    push        dword ptr [eax+4]
 00534627    lea         eax,[ebp-18]
 0053462A    mov         edx,4
 0053462F    call        @LStrCatN
 00534634    mov         edx,dword ptr [ebp-18]
 00534637    mov         eax,[0055B21C];^gvar_0055E118
 0053463C    mov         eax,dword ptr [eax]
 0053463E    mov         eax,dword ptr [eax+60C]
 00534644    call        0052BAF0
 00534649    mov         eax,dword ptr [ebp-8]
 0053464C    mov         edx,dword ptr [eax]
 0053464E    mov         eax,dword ptr [ebp-4]
 00534651    call        00534844
 00534656    mov         edx,dword ptr [ebp-8]
 00534659    mov         eax,dword ptr [ebp-4]
 0053465C    mov         eax,dword ptr [eax+10]
 0053465F    call        TList.Add
 00534664    xor         eax,eax
 00534666    pop         edx
 00534667    pop         ecx
 00534668    pop         ecx
 00534669    mov         dword ptr fs:[eax],edx
 0053466C    push        534686
 00534671    lea         eax,[ebp-1C]
 00534674    mov         edx,4
 00534679    call        @LStrArrayClr
 0053467E    ret
>0053467F    jmp         @HandleFinally
>00534684    jmp         00534671
 00534686    mov         al,byte ptr [ebp-9]
 00534689    pop         ebx
 0053468A    mov         esp,ebp
 0053468C    pop         ebp
 0053468D    ret
end;*}

//005346D4
{*function sub_005346D4(?:?; ?:?):?;
begin
 005346D4    push        ebp
 005346D5    mov         ebp,esp
 005346D7    add         esp,0FFFFFFE8
 005346DA    mov         dword ptr [ebp-8],edx
 005346DD    mov         dword ptr [ebp-4],eax
 005346E0    xor         eax,eax
 005346E2    mov         dword ptr [ebp-0C],eax
 005346E5    mov         eax,dword ptr [ebp-4]
 005346E8    mov         eax,dword ptr [eax+10]
 005346EB    mov         eax,dword ptr [eax+8]
 005346EE    dec         eax
 005346EF    test        eax,eax
>005346F1    jl          00534729
 005346F3    inc         eax
 005346F4    mov         dword ptr [ebp-18],eax
 005346F7    mov         dword ptr [ebp-10],0
 005346FE    mov         eax,dword ptr [ebp-4]
 00534701    mov         eax,dword ptr [eax+10]
 00534704    mov         edx,dword ptr [ebp-10]
 00534707    call        TList.Get
 0053470C    mov         dword ptr [ebp-14],eax
 0053470F    mov         eax,dword ptr [ebp-14]
 00534712    mov         eax,dword ptr [eax]
 00534714    cmp         eax,dword ptr [ebp-8]
>00534717    jne         00534721
 00534719    mov         eax,dword ptr [ebp-14]
 0053471C    mov         dword ptr [ebp-0C],eax
>0053471F    jmp         00534729
 00534721    inc         dword ptr [ebp-10]
 00534724    dec         dword ptr [ebp-18]
>00534727    jne         005346FE
 00534729    mov         eax,dword ptr [ebp-0C]
 0053472C    mov         esp,ebp
 0053472E    pop         ebp
 0053472F    ret
end;*}

//00534730
{*function sub_00534730(?:dword; ?:String):?;
begin
 00534730    push        ebp
 00534731    mov         ebp,esp
 00534733    add         esp,0FFFFFFE8
 00534736    mov         dword ptr [ebp-8],edx
 00534739    mov         dword ptr [ebp-4],eax
 0053473C    mov         eax,dword ptr [ebp-8]
 0053473F    call        @LStrAddRef
 00534744    xor         eax,eax
 00534746    push        ebp
 00534747    push        5347B7
 0053474C    push        dword ptr fs:[eax]
 0053474F    mov         dword ptr fs:[eax],esp
 00534752    xor         eax,eax
 00534754    mov         dword ptr [ebp-0C],eax
 00534757    mov         eax,dword ptr [ebp-4]
 0053475A    mov         eax,dword ptr [eax+10]
 0053475D    mov         eax,dword ptr [eax+8]
 00534760    dec         eax
 00534761    test        eax,eax
>00534763    jl          005347A1
 00534765    inc         eax
 00534766    mov         dword ptr [ebp-18],eax
 00534769    mov         dword ptr [ebp-10],0
 00534770    mov         eax,dword ptr [ebp-4]
 00534773    mov         eax,dword ptr [eax+10]
 00534776    mov         edx,dword ptr [ebp-10]
 00534779    call        TList.Get
 0053477E    mov         dword ptr [ebp-14],eax
 00534781    mov         eax,dword ptr [ebp-14]
 00534784    mov         eax,dword ptr [eax+4]
 00534787    mov         edx,dword ptr [ebp-8]
 0053478A    call        @LStrCmp
>0053478F    jne         00534799
 00534791    mov         eax,dword ptr [ebp-14]
 00534794    mov         dword ptr [ebp-0C],eax
>00534797    jmp         005347A1
 00534799    inc         dword ptr [ebp-10]
 0053479C    dec         dword ptr [ebp-18]
>0053479F    jne         00534770
 005347A1    xor         eax,eax
 005347A3    pop         edx
 005347A4    pop         ecx
 005347A5    pop         ecx
 005347A6    mov         dword ptr fs:[eax],edx
 005347A9    push        5347BE
 005347AE    lea         eax,[ebp-8]
 005347B1    call        @LStrClr
 005347B6    ret
>005347B7    jmp         @HandleFinally
>005347BC    jmp         005347AE
 005347BE    mov         eax,dword ptr [ebp-0C]
 005347C1    mov         esp,ebp
 005347C3    pop         ebp
 005347C4    ret
end;*}

//005347C8
{*function sub_005347C8(?:?; ?:?):?;
begin
 005347C8    push        ebp
 005347C9    mov         ebp,esp
 005347CB    add         esp,0FFFFFFEC
 005347CE    mov         dword ptr [ebp-8],edx
 005347D1    mov         dword ptr [ebp-4],eax
 005347D4    mov         byte ptr [ebp-9],0
 005347D8    mov         eax,dword ptr [ebp-4]
 005347DB    mov         eax,dword ptr [eax+10]
 005347DE    mov         eax,dword ptr [eax+8]
 005347E1    dec         eax
 005347E2    test        eax,eax
>005347E4    jl          00534814
 005347E6    inc         eax
 005347E7    mov         dword ptr [ebp-14],eax
 005347EA    mov         dword ptr [ebp-10],0
 005347F1    mov         eax,dword ptr [ebp-4]
 005347F4    mov         eax,dword ptr [eax+10]
 005347F7    mov         edx,dword ptr [ebp-10]
 005347FA    call        TList.Get
 005347FF    mov         eax,dword ptr [eax]
 00534801    cmp         eax,dword ptr [ebp-8]
>00534804    jne         0053480C
 00534806    mov         byte ptr [ebp-9],1
>0053480A    jmp         00534814
 0053480C    inc         dword ptr [ebp-10]
 0053480F    dec         dword ptr [ebp-14]
>00534812    jne         005347F1
 00534814    mov         al,byte ptr [ebp-9]
 00534817    mov         esp,ebp
 00534819    pop         ebp
 0053481A    ret
end;*}

//0053481C
{*function sub_0053481C(?:dword; ?:dword):?;
begin
 0053481C    push        ebp
 0053481D    mov         ebp,esp
 0053481F    add         esp,0FFFFFFF4
 00534822    mov         dword ptr [ebp-8],edx
 00534825    mov         dword ptr [ebp-4],eax
 00534828    mov         edx,dword ptr [ebp-8]
 0053482B    mov         eax,dword ptr [ebp-4]
 0053482E    mov         eax,dword ptr [eax+10]
 00534831    call        00478890
 00534836    test        eax,eax
 00534838    setge       byte ptr [ebp-9]
 0053483C    mov         al,byte ptr [ebp-9]
 0053483F    mov         esp,ebp
 00534841    pop         ebp
 00534842    ret
end;*}

//00534844
{*function sub_00534844(?:?; ?:?):?;
begin
 00534844    push        ebp
 00534845    mov         ebp,esp
 00534847    add         esp,0FFFFFFF4
 0053484A    mov         dword ptr [ebp-8],edx
 0053484D    mov         dword ptr [ebp-4],eax
 00534850    mov         edx,dword ptr [ebp-8]
 00534853    mov         eax,dword ptr [ebp-4]
 00534856    call        005346D4
 0053485B    mov         edx,eax
 0053485D    mov         eax,dword ptr [ebp-4]
 00534860    call        00534870
 00534865    mov         byte ptr [ebp-9],al
 00534868    mov         al,byte ptr [ebp-9]
 0053486B    mov         esp,ebp
 0053486D    pop         ebp
 0053486E    ret
end;*}

//00534870
{*function sub_00534870(?:?; ?:?):?;
begin
 00534870    push        ebp
 00534871    mov         ebp,esp
 00534873    add         esp,0FFFFFFF4
 00534876    mov         dword ptr [ebp-8],edx
 00534879    mov         dword ptr [ebp-4],eax
 0053487C    mov         byte ptr [ebp-9],0
 00534880    cmp         dword ptr [ebp-8],0
>00534884    je          005348AA
 00534886    mov         edx,dword ptr [ebp-8]
 00534889    mov         eax,dword ptr [ebp-4]
 0053488C    mov         eax,dword ptr [eax+10]
 0053488F    call        00478AC4
 00534894    test        eax,eax
>00534896    jl          005348AA
 00534898    mov         edx,dword ptr ds:[51E000];TPlayer
 0053489E    mov         eax,dword ptr [ebp-8]
 005348A1    call        @Dispose
 005348A6    mov         byte ptr [ebp-9],1
 005348AA    mov         al,byte ptr [ebp-9]
 005348AD    mov         esp,ebp
 005348AF    pop         ebp
 005348B0    ret
end;*}

//005348B4
{*procedure sub_005348B4(?:?);
begin
 005348B4    push        ebp
 005348B5    mov         ebp,esp
 005348B7    add         esp,0FFFFFFF8
 005348BA    mov         dword ptr [ebp-4],eax
 005348BD    mov         eax,dword ptr [ebp-4]
 005348C0    mov         eax,dword ptr [eax+10]
 005348C3    mov         eax,dword ptr [eax+8]
 005348C6    dec         eax
 005348C7    cmp         eax,0
>005348CA    jl          005348F1
 005348CC    mov         dword ptr [ebp-8],eax
 005348CF    mov         edx,dword ptr [ebp-8]
 005348D2    mov         eax,dword ptr [ebp-4]
 005348D5    mov         eax,dword ptr [eax+10]
 005348D8    call        TList.Get
 005348DD    mov         edx,dword ptr ds:[51E000];TPlayer
 005348E3    call        @Dispose
 005348E8    dec         dword ptr [ebp-8]
 005348EB    cmp         dword ptr [ebp-8],0FFFFFFFF
>005348EF    jne         005348CF
 005348F1    mov         eax,dword ptr [ebp-4]
 005348F4    mov         eax,dword ptr [eax+10]
 005348F7    mov         edx,dword ptr [eax]
 005348F9    call        dword ptr [edx+8]
 005348FC    pop         ecx
 005348FD    pop         ecx
 005348FE    pop         ebp
 005348FF    ret
end;*}

//00534900
{*function sub_00534900(?:?):?;
begin
 00534900    push        ebp
 00534901    mov         ebp,esp
 00534903    add         esp,0FFFFFFF8
 00534906    mov         dword ptr [ebp-4],eax
 00534909    mov         eax,dword ptr [ebp-4]
 0053490C    mov         eax,dword ptr [eax+10]
 0053490F    mov         eax,dword ptr [eax+8]
 00534912    mov         dword ptr [ebp-8],eax
 00534915    mov         eax,dword ptr [ebp-8]
 00534918    pop         ecx
 00534919    pop         ecx
 0053491A    pop         ebp
 0053491B    ret
end;*}

//0053491C
{*function sub_0053491C(?:?):?;
begin
 0053491C    push        ebp
 0053491D    mov         ebp,esp
 0053491F    add         esp,0FFFFFFDC
 00534922    mov         dword ptr [ebp-4],eax
 00534925    mov         dword ptr [ebp-20],30773B76
 0053492C    mov         dword ptr [ebp-1C],7FEE42D1
 00534933    xor         eax,eax
 00534935    mov         dword ptr [ebp-8],eax
 00534938    mov         eax,dword ptr [ebp-4]
 0053493B    mov         eax,dword ptr [eax+10]
 0053493E    mov         eax,dword ptr [eax+8]
 00534941    dec         eax
 00534942    test        eax,eax
>00534944    jl          005349A4
 00534946    inc         eax
 00534947    mov         dword ptr [ebp-24],eax
 0053494A    mov         dword ptr [ebp-0C],0
 00534951    mov         edx,dword ptr [ebp-0C]
 00534954    mov         eax,dword ptr [ebp-4]
 00534957    mov         eax,dword ptr [eax+10]
 0053495A    call        TList.Get
 0053495F    lea         edx,[eax+0C]
 00534962    mov         eax,dword ptr [ebp-4]
 00534965    mov         eax,dword ptr [eax+40]
 00534968    add         eax,0C
 0053496B    call        0051F5FC
 00534970    fstp        qword ptr [ebp-18]
 00534973    wait
 00534974    fld         qword ptr [ebp-18]
 00534977    fcomp       qword ptr [ebp-20]
 0053497A    fnstsw      al
 0053497C    sahf
>0053497D    jae         0053499C
 0053497F    mov         eax,dword ptr [ebp-18]
 00534982    mov         dword ptr [ebp-20],eax
 00534985    mov         eax,dword ptr [ebp-14]
 00534988    mov         dword ptr [ebp-1C],eax
 0053498B    mov         edx,dword ptr [ebp-0C]
 0053498E    mov         eax,dword ptr [ebp-4]
 00534991    mov         eax,dword ptr [eax+10]
 00534994    call        TList.Get
 00534999    mov         dword ptr [ebp-8],eax
 0053499C    inc         dword ptr [ebp-0C]
 0053499F    dec         dword ptr [ebp-24]
>005349A2    jne         00534951
 005349A4    mov         eax,dword ptr [ebp-8]
 005349A7    mov         esp,ebp
 005349A9    pop         ebp
 005349AA    ret
end;*}

//005349AC
{*function sub_005349AC(?:?; ?:?):?;
begin
 005349AC    push        ebp
 005349AD    mov         ebp,esp
 005349AF    add         esp,0FFFFFFDC
 005349B2    xor         ecx,ecx
 005349B4    mov         dword ptr [ebp-24],ecx
 005349B7    mov         dword ptr [ebp-20],ecx
 005349BA    mov         dword ptr [ebp-1C],ecx
 005349BD    mov         dword ptr [ebp-8],edx
 005349C0    mov         dword ptr [ebp-4],eax
 005349C3    xor         eax,eax
 005349C5    push        ebp
 005349C6    push        534BAF
 005349CB    push        dword ptr fs:[eax]
 005349CE    mov         dword ptr fs:[eax],esp
 005349D1    lea         eax,[ebp-8]
 005349D4    mov         edx,3
 005349D9    call        0051F5E4
 005349DE    mov         edx,dword ptr ds:[51E000];TPlayer
 005349E4    mov         eax,90
 005349E9    call        00405948
 005349EE    mov         dword ptr [ebp-10],eax
 005349F1    mov         eax,dword ptr [ebp-10]
 005349F4    mov         dword ptr [ebp-18],eax
 005349F7    lea         eax,[ebp-8]
 005349FA    call        0051F3CC
 005349FF    mov         edx,dword ptr [ebp-18]
 00534A02    mov         dword ptr [edx],eax
 00534A04    lea         edx,[ebp-1C]
 00534A07    lea         eax,[ebp-8]
 00534A0A    call        0051F434
 00534A0F    mov         edx,dword ptr [ebp-1C]
 00534A12    mov         eax,dword ptr [ebp-18]
 00534A15    add         eax,4
 00534A18    call        @LStrAsg
 00534A1D    lea         eax,[ebp-8]
 00534A20    call        0051F338
 00534A25    mov         edx,dword ptr [ebp-18]
 00534A28    mov         byte ptr [edx+9],al
 00534A2B    mov         eax,dword ptr [ebp-18]
 00534A2E    mov         al,byte ptr [eax+9]
 00534A31    and         al,7F
 00534A33    and         al,0F
 00534A35    mov         edx,dword ptr [ebp-18]
 00534A38    mov         byte ptr [edx+8],al
 00534A3B    mov         eax,dword ptr [ebp-18]
 00534A3E    test        byte ptr [eax+9],80
 00534A42    seta        al
 00534A45    mov         edx,dword ptr [ebp-18]
 00534A48    mov         byte ptr [edx+88],al
 00534A4E    lea         eax,[ebp-8]
 00534A51    call        0051F3CC
 00534A56    mov         edx,dword ptr [ebp-18]
 00534A59    mov         dword ptr [edx+10],eax
 00534A5C    lea         eax,[ebp-8]
 00534A5F    call        0051F3CC
 00534A64    mov         edx,dword ptr [ebp-18]
 00534A67    mov         dword ptr [edx+14],eax
 00534A6A    lea         eax,[ebp-8]
 00534A6D    call        0051F3CC
 00534A72    mov         edx,dword ptr [ebp-18]
 00534A75    mov         dword ptr [edx+18],eax
 00534A78    lea         eax,[ebp-8]
 00534A7B    call        0051F398
 00534A80    mov         edx,dword ptr [ebp-18]
 00534A83    mov         word ptr [edx+1C],ax
 00534A87    lea         eax,[ebp-8]
 00534A8A    call        0051F3FC
 00534A8F    mov         ecx,dword ptr [ebp-18]
 00534A92    mov         dword ptr [ecx+20],eax
 00534A95    mov         dword ptr [ecx+24],edx
 00534A98    xor         eax,eax
 00534A9A    mov         dword ptr [ebp-14],eax
 00534A9D    lea         eax,[ebp-8]
 00534AA0    call        0051F398
 00534AA5    mov         edx,dword ptr [ebp-14]
 00534AA8    mov         ecx,dword ptr [ebp-18]
 00534AAB    mov         word ptr [ecx+edx*2+30],ax
 00534AB0    inc         dword ptr [ebp-14]
 00534AB3    cmp         dword ptr [ebp-14],7
>00534AB7    jne         00534A9D
 00534AB9    lea         eax,[ebp-8]
 00534ABC    call        0051F338
 00534AC1    mov         edx,dword ptr [ebp-18]
 00534AC4    mov         byte ptr [edx+3E],al
 00534AC7    lea         eax,[ebp-8]
 00534ACA    call        0051F338
 00534ACF    mov         edx,dword ptr [ebp-18]
 00534AD2    mov         byte ptr [edx+3F],al
 00534AD5    lea         eax,[ebp-8]
 00534AD8    call        0051F3FC
 00534ADD    mov         ecx,dword ptr [ebp-18]
 00534AE0    mov         dword ptr [ecx+28],eax
 00534AE3    mov         dword ptr [ecx+2C],edx
 00534AE6    lea         edx,[ebp-20]
 00534AE9    lea         eax,[ebp-8]
 00534AEC    call        0051F434
 00534AF1    mov         edx,dword ptr [ebp-20]
 00534AF4    mov         eax,dword ptr [ebp-18]
 00534AF7    add         eax,40
 00534AFA    call        @LStrAsg
 00534AFF    lea         edx,[ebp-24]
 00534B02    lea         eax,[ebp-8]
 00534B05    call        0051F434
 00534B0A    mov         edx,dword ptr [ebp-24]
 00534B0D    mov         eax,dword ptr [ebp-18]
 00534B10    add         eax,44
 00534B13    call        @LStrAsg
 00534B18    lea         eax,[ebp-8]
 00534B1B    call        0051F3CC
 00534B20    mov         edx,dword ptr [ebp-18]
 00534B23    mov         dword ptr [edx+48],eax
 00534B26    lea         eax,[ebp-8]
 00534B29    call        0051F338
 00534B2E    mov         edx,dword ptr [ebp-18]
 00534B31    mov         byte ptr [edx+4C],al
 00534B34    lea         eax,[ebp-8]
 00534B37    call        0051F3CC
 00534B3C    mov         edx,dword ptr [ebp-18]
 00534B3F    mov         dword ptr [edx+50],eax
 00534B42    lea         eax,[ebp-8]
 00534B45    call        0051F3CC
 00534B4A    mov         edx,dword ptr [ebp-18]
 00534B4D    mov         byte ptr [edx+54],al
 00534B50    lea         eax,[ebp-8]
 00534B53    call        0051F3CC
 00534B58    mov         edx,dword ptr [ebp-18]
 00534B5B    mov         dword ptr [edx+58],eax
 00534B5E    lea         eax,[ebp-8]
 00534B61    call        0051F3FC
 00534B66    mov         ecx,dword ptr [ebp-18]
 00534B69    mov         dword ptr [ecx+60],eax
 00534B6C    mov         dword ptr [ecx+64],edx
 00534B6F    lea         eax,[ebp-8]
 00534B72    call        0051F3FC
 00534B77    mov         ecx,dword ptr [ebp-18]
 00534B7A    mov         dword ptr [ecx+68],eax
 00534B7D    mov         dword ptr [ecx+6C],edx
 00534B80    lea         eax,[ebp-8]
 00534B83    call        0051F338
 00534B88    mov         edx,dword ptr [ebp-18]
 00534B8B    mov         byte ptr [edx+78],al
 00534B8E    mov         eax,dword ptr [ebp-10]
 00534B91    mov         dword ptr [ebp-0C],eax
 00534B94    xor         eax,eax
 00534B96    pop         edx
 00534B97    pop         ecx
 00534B98    pop         ecx
 00534B99    mov         dword ptr fs:[eax],edx
 00534B9C    push        534BB6
 00534BA1    lea         eax,[ebp-24]
 00534BA4    mov         edx,3
 00534BA9    call        @LStrArrayClr
 00534BAE    ret
>00534BAF    jmp         @HandleFinally
>00534BB4    jmp         00534BA1
 00534BB6    mov         eax,dword ptr [ebp-0C]
 00534BB9    mov         esp,ebp
 00534BBB    pop         ebp
 00534BBC    ret
end;*}

//00534BC0
{*function sub_00534BC0(?:?; ?:?):?;
begin
 00534BC0    push        ebp
 00534BC1    mov         ebp,esp
 00534BC3    add         esp,0FFFFFFF4
 00534BC6    mov         dword ptr [ebp-8],edx
 00534BC9    mov         dword ptr [ebp-4],eax
 00534BCC    lea         eax,[ebp-8]
 00534BCF    mov         edx,3
 00534BD4    call        0051F5E4
 00534BD9    lea         eax,[ebp-8]
 00534BDC    call        0051F3CC
 00534BE1    mov         dword ptr [ebp-0C],eax
 00534BE4    mov         eax,dword ptr [ebp-0C]
 00534BE7    mov         esp,ebp
 00534BE9    pop         ebp
 00534BEA    ret
end;*}

//00534BEC
{*procedure sub_00534BEC(?:?; ?:?);
begin
 00534BEC    push        ebp
 00534BED    mov         ebp,esp
 00534BEF    add         esp,0FFFFFFEC
 00534BF2    mov         dword ptr [ebp-8],edx
 00534BF5    mov         dword ptr [ebp-4],eax
 00534BF8    lea         eax,[ebp-8]
 00534BFB    mov         edx,3
 00534C00    call        0051F5E4
 00534C05    lea         eax,[ebp-8]
 00534C08    call        0051F3CC
 00534C0D    mov         dword ptr [ebp-0C],eax
 00534C10    mov         edx,dword ptr [ebp-0C]
 00534C13    mov         eax,dword ptr [ebp-4]
 00534C16    call        005346D4
 00534C1B    mov         dword ptr [ebp-10],eax
 00534C1E    cmp         dword ptr [ebp-10],0
>00534C22    je          00534C8E
 00534C24    mov         eax,dword ptr [ebp-4]
 00534C27    cmp         dword ptr [eax+40],0
>00534C2B    je          00534C52
 00534C2D    mov         eax,dword ptr [ebp-4]
 00534C30    mov         eax,dword ptr [eax+40]
 00534C33    mov         eax,dword ptr [eax]
 00534C35    mov         edx,dword ptr [ebp-10]
 00534C38    cmp         eax,dword ptr [edx]
>00534C3A    jne         00534C52
 00534C3C    mov         ecx,534C9C;'Poruszyl sie herosik'
 00534C41    mov         dl,1
 00534C43    mov         eax,[004653B4];Exception
 00534C48    call        Exception.Create;Exception.Create
 00534C4D    call        @RaiseExcept
 00534C52    mov         eax,dword ptr [ebp-10]
 00534C55    add         eax,0C
 00534C58    mov         dword ptr [ebp-14],eax
 00534C5B    lea         eax,[ebp-8]
 00534C5E    call        0051F368
 00534C63    movsx       eax,al
 00534C66    mov         edx,dword ptr [ebp-14]
 00534C69    add         dword ptr [edx+4],eax
 00534C6C    lea         eax,[ebp-8]
 00534C6F    call        0051F368
 00534C74    movsx       eax,al
 00534C77    mov         edx,dword ptr [ebp-14]
 00534C7A    add         dword ptr [edx+8],eax
 00534C7D    lea         eax,[ebp-8]
 00534C80    call        0051F368
 00534C85    movsx       eax,al
 00534C88    mov         edx,dword ptr [ebp-14]
 00534C8B    add         dword ptr [edx+0C],eax
 00534C8E    mov         esp,ebp
 00534C90    pop         ebp
 00534C91    ret
end;*}

//00534CB4
{*procedure sub_00534CB4(?:?; ?:?);
begin
 00534CB4    push        ebp
 00534CB5    mov         ebp,esp
 00534CB7    add         esp,0FFFFFFF4
 00534CBA    mov         dword ptr [ebp-8],edx
 00534CBD    mov         dword ptr [ebp-4],eax
 00534CC0    lea         eax,[ebp-8]
 00534CC3    mov         edx,7
 00534CC8    call        0051F5E4
 00534CCD    mov         eax,dword ptr [ebp-4]
 00534CD0    mov         eax,dword ptr [eax+40]
 00534CD3    add         eax,0C
 00534CD6    mov         dword ptr [ebp-0C],eax
 00534CD9    lea         eax,[ebp-8]
 00534CDC    call        0051F368
 00534CE1    movsx       eax,al
 00534CE4    mov         edx,dword ptr [ebp-0C]
 00534CE7    add         dword ptr [edx+4],eax
 00534CEA    lea         eax,[ebp-8]
 00534CED    call        0051F368
 00534CF2    movsx       eax,al
 00534CF5    mov         edx,dword ptr [ebp-0C]
 00534CF8    add         dword ptr [edx+8],eax
 00534CFB    lea         eax,[ebp-8]
 00534CFE    call        0051F368
 00534D03    movsx       eax,al
 00534D06    mov         edx,dword ptr [ebp-0C]
 00534D09    add         dword ptr [edx+0C],eax
 00534D0C    mov         esp,ebp
 00534D0E    pop         ebp
 00534D0F    ret
end;*}

//00534D10
{*procedure sub_00534D10(?:?; ?:?);
begin
 00534D10    push        ebp
 00534D11    mov         ebp,esp
 00534D13    add         esp,0FFFFFFF8
 00534D16    mov         dword ptr [ebp-8],edx
 00534D19    mov         dword ptr [ebp-4],eax
 00534D1C    lea         eax,[ebp-8]
 00534D1F    mov         edx,3
 00534D24    call        0051F5E4
 00534D29    lea         eax,[ebp-8]
 00534D2C    call        0051F338
 00534D31    mov         edx,dword ptr [ebp-4]
 00534D34    mov         edx,dword ptr [edx+40]
 00534D37    mov         byte ptr [edx+0C],al
 00534D3A    lea         eax,[ebp-8]
 00534D3D    call        0051F3CC
 00534D42    mov         edx,dword ptr [ebp-4]
 00534D45    mov         edx,dword ptr [edx+40]
 00534D48    mov         dword ptr [edx+10],eax
 00534D4B    lea         eax,[ebp-8]
 00534D4E    call        0051F3CC
 00534D53    mov         edx,dword ptr [ebp-4]
 00534D56    mov         edx,dword ptr [edx+40]
 00534D59    mov         dword ptr [edx+14],eax
 00534D5C    mov         eax,dword ptr [ebp-4]
 00534D5F    mov         eax,dword ptr [eax+40]
 00534D62    cmp         byte ptr [eax+0C],0
>00534D66    jne         00534D79
 00534D68    lea         eax,[ebp-8]
 00534D6B    call        0051F3CC
 00534D70    mov         edx,dword ptr [ebp-4]
 00534D73    mov         edx,dword ptr [edx+40]
 00534D76    mov         dword ptr [edx+18],eax
 00534D79    mov         eax,dword ptr [ebp-4]
 00534D7C    call        005348B4
 00534D81    pop         ecx
 00534D82    pop         ecx
 00534D83    pop         ebp
 00534D84    ret
end;*}

//00534D88
{*procedure sub_00534D88(?:?; ?:?);
begin
 00534D88    push        ebp
 00534D89    mov         ebp,esp
 00534D8B    add         esp,0FFFFFFF8
 00534D8E    mov         dword ptr [ebp-8],edx
 00534D91    mov         dword ptr [ebp-4],eax
 00534D94    lea         eax,[ebp-8]
 00534D97    mov         edx,7
 00534D9C    call        0051F5E4
 00534DA1    lea         eax,[ebp-8]
 00534DA4    call        0051F338
 00534DA9    cmp         al,1
>00534DAB    jne         00534DBE
 00534DAD    lea         eax,[ebp-8]
 00534DB0    call        0051F3CC
 00534DB5    mov         edx,dword ptr [ebp-4]
 00534DB8    mov         edx,dword ptr [edx+40]
 00534DBB    mov         dword ptr [edx+18],eax
 00534DBE    pop         ecx
 00534DBF    pop         ecx
 00534DC0    pop         ebp
 00534DC1    ret
end;*}

//00534DC4
{*procedure sub_00534DC4(?:?; ?:?);
begin
 00534DC4    push        ebp
 00534DC5    mov         ebp,esp
 00534DC7    add         esp,0FFFFFFF8
 00534DCA    mov         dword ptr [ebp-8],edx
 00534DCD    mov         dword ptr [ebp-4],eax
 00534DD0    mov         edx,dword ptr ds:[51E000];TPlayer
 00534DD6    mov         eax,dword ptr [ebp-4]
 00534DD9    mov         eax,dword ptr [eax+40]
 00534DDC    call        @Dispose
 00534DE1    mov         eax,dword ptr [ebp-4]
 00534DE4    xor         edx,edx
 00534DE6    mov         dword ptr [eax+40],edx
 00534DE9    mov         eax,dword ptr [ebp-4]
 00534DEC    mov         eax,dword ptr [eax+88]
 00534DF2    call        005358A4
 00534DF7    mov         eax,dword ptr [ebp-4]
 00534DFA    call        005348B4
 00534DFF    pop         ecx
 00534E00    pop         ecx
 00534E01    pop         ebp
 00534E02    ret
end;*}

//00534E04
{*procedure sub_00534E04(?:?; ?:?);
begin
 00534E04    push        ebp
 00534E05    mov         ebp,esp
 00534E07    add         esp,0FFFFFFF0
 00534E0A    xor         ecx,ecx
 00534E0C    mov         dword ptr [ebp-10],ecx
 00534E0F    mov         dword ptr [ebp-8],edx
 00534E12    mov         dword ptr [ebp-4],eax
 00534E15    xor         eax,eax
 00534E17    push        ebp
 00534E18    push        535001
 00534E1D    push        dword ptr fs:[eax]
 00534E20    mov         dword ptr fs:[eax],esp
 00534E23    lea         eax,[ebp-8]
 00534E26    mov         edx,3
 00534E2B    call        0051F5E4
 00534E30    lea         eax,[ebp-8]
 00534E33    call        0051F338
 00534E38    mov         edx,dword ptr [ebp-4]
 00534E3B    mov         byte ptr [edx+48],al
 00534E3E    lea         edx,[ebp-10]
 00534E41    lea         eax,[ebp-8]
 00534E44    call        0051F434
 00534E49    lea         eax,[ebp-8]
 00534E4C    call        0051F338
 00534E51    mov         edx,dword ptr [ebp-4]
 00534E54    mov         byte ptr [edx+49],al
 00534E57    lea         eax,[ebp-8]
 00534E5A    call        0051F398
 00534E5F    mov         edx,dword ptr [ebp-4]
 00534E62    mov         word ptr [edx+4A],ax
 00534E66    lea         eax,[ebp-8]
 00534E69    call        0051F398
 00534E6E    lea         eax,[ebp-8]
 00534E71    call        0051F398
 00534E76    lea         eax,[ebp-8]
 00534E79    call        0051F398
 00534E7E    lea         eax,[ebp-8]
 00534E81    call        0051F398
 00534E86    lea         eax,[ebp-8]
 00534E89    call        0051F398
 00534E8E    mov         eax,dword ptr [ebp-4]
 00534E91    add         eax,48
 00534E94    mov         dword ptr [ebp-0C],eax
 00534E97    lea         eax,[ebp-8]
 00534E9A    call        0051F398
 00534E9F    mov         edx,dword ptr [ebp-0C]
 00534EA2    mov         word ptr [edx+4],ax
 00534EA6    lea         eax,[ebp-8]
 00534EA9    call        0051F398
 00534EAE    mov         edx,dword ptr [ebp-0C]
 00534EB1    mov         word ptr [edx+6],ax
 00534EB5    lea         eax,[ebp-8]
 00534EB8    call        0051F398
 00534EBD    mov         edx,dword ptr [ebp-0C]
 00534EC0    mov         word ptr [edx+8],ax
 00534EC4    lea         eax,[ebp-8]
 00534EC7    call        0051F398
 00534ECC    mov         edx,dword ptr [ebp-0C]
 00534ECF    mov         word ptr [edx+0A],ax
 00534ED3    lea         eax,[ebp-8]
 00534ED6    call        0051F398
 00534EDB    mov         edx,dword ptr [ebp-0C]
 00534EDE    mov         word ptr [edx+0C],ax
 00534EE2    lea         eax,[ebp-8]
 00534EE5    call        0051F398
 00534EEA    mov         edx,dword ptr [ebp-0C]
 00534EED    mov         word ptr [edx+0E],ax
 00534EF1    lea         eax,[ebp-8]
 00534EF4    call        0051F398
 00534EF9    mov         edx,dword ptr [ebp-0C]
 00534EFC    mov         word ptr [edx+10],ax
 00534F00    lea         eax,[ebp-8]
 00534F03    call        0051F338
 00534F08    mov         edx,dword ptr [ebp-0C]
 00534F0B    mov         byte ptr [edx+12],al
 00534F0E    lea         eax,[ebp-8]
 00534F11    call        0051F3FC
 00534F16    mov         ecx,dword ptr [ebp-0C]
 00534F19    mov         dword ptr [ecx+18],eax
 00534F1C    mov         dword ptr [ecx+1C],edx
 00534F1F    lea         eax,[ebp-8]
 00534F22    call        0051F398
 00534F27    mov         edx,dword ptr [ebp-0C]
 00534F2A    mov         word ptr [edx+20],ax
 00534F2E    lea         eax,[ebp-8]
 00534F31    call        0051F398
 00534F36    mov         edx,dword ptr [ebp-0C]
 00534F39    mov         word ptr [edx+22],ax
 00534F3D    lea         eax,[ebp-8]
 00534F40    call        0051F398
 00534F45    mov         edx,dword ptr [ebp-0C]
 00534F48    mov         word ptr [edx+24],ax
 00534F4C    lea         eax,[ebp-8]
 00534F4F    call        0051F398
 00534F54    mov         edx,dword ptr [ebp-0C]
 00534F57    mov         word ptr [edx+26],ax
 00534F5B    lea         eax,[ebp-8]
 00534F5E    call        0051F398
 00534F63    mov         edx,dword ptr [ebp-0C]
 00534F66    mov         word ptr [edx+28],ax
 00534F6A    lea         eax,[ebp-8]
 00534F6D    call        0051F398
 00534F72    mov         edx,dword ptr [ebp-0C]
 00534F75    mov         word ptr [edx+2A],ax
 00534F79    lea         eax,[ebp-8]
 00534F7C    call        0051F338
 00534F81    and         eax,0FF
 00534F86    mov         edx,dword ptr [ebp-0C]
 00534F89    mov         word ptr [edx+2C],ax
 00534F8D    lea         eax,[ebp-8]
 00534F90    call        0051F338
 00534F95    and         eax,0FF
 00534F9A    mov         edx,dword ptr [ebp-0C]
 00534F9D    mov         word ptr [edx+2E],ax
 00534FA1    lea         eax,[ebp-8]
 00534FA4    call        0051F338
 00534FA9    and         eax,0FF
 00534FAE    mov         edx,dword ptr [ebp-0C]
 00534FB1    mov         word ptr [edx+30],ax
 00534FB5    lea         eax,[ebp-8]
 00534FB8    call        0051F338
 00534FBD    and         eax,0FF
 00534FC2    mov         edx,dword ptr [ebp-0C]
 00534FC5    mov         word ptr [edx+32],ax
 00534FC9    lea         eax,[ebp-8]
 00534FCC    call        0051F338
 00534FD1    and         eax,0FF
 00534FD6    mov         edx,dword ptr [ebp-0C]
 00534FD9    mov         word ptr [edx+34],ax
 00534FDD    lea         eax,[ebp-8]
 00534FE0    call        0051F3CC
 00534FE5    mov         edx,dword ptr [ebp-0C]
 00534FE8    mov         dword ptr [edx+38],eax
 00534FEB    xor         eax,eax
 00534FED    pop         edx
 00534FEE    pop         ecx
 00534FEF    pop         ecx
 00534FF0    mov         dword ptr fs:[eax],edx
 00534FF3    push        535008
 00534FF8    lea         eax,[ebp-10]
 00534FFB    call        @LStrClr
 00535000    ret
>00535001    jmp         @HandleFinally
>00535006    jmp         00534FF8
 00535008    mov         esp,ebp
 0053500A    pop         ebp
 0053500B    ret
end;*}

//0053500C
{*procedure sub_0053500C(?:?; ?:?);
begin
 0053500C    push        ebp
 0053500D    mov         ebp,esp
 0053500F    add         esp,0FFFFFFF0
 00535012    mov         dword ptr [ebp-8],edx
 00535015    mov         dword ptr [ebp-4],eax
 00535018    lea         eax,[ebp-8]
 0053501B    mov         edx,3
 00535020    call        0051F5E4
 00535025    lea         eax,[ebp-8]
 00535028    call        0051F338
 0053502D    mov         byte ptr [ebp-0D],al
 00535030    cmp         byte ptr [ebp-0D],23
>00535034    jne         00535041
 00535036    lea         eax,[ebp-8]
 00535039    call        0051F3CC
 0053503E    mov         dword ptr [ebp-0C],eax
 00535041    mov         al,byte ptr [ebp-0D]
 00535044    sub         al,5
>00535046    je          00535078
 00535048    dec         al
>0053504A    je          00535098
 0053504C    dec         al
>0053504E    je          00535056
 00535050    dec         al
>00535052    je          00535067
>00535054    jmp         005350B6
 00535056    lea         eax,[ebp-8]
 00535059    call        0051F398
 0053505E    mov         edx,dword ptr [ebp-4]
 00535061    mov         word ptr [edx+4C],ax
>00535065    jmp         005350B6
 00535067    lea         eax,[ebp-8]
 0053506A    call        0051F398
 0053506F    mov         edx,dword ptr [ebp-4]
 00535072    mov         word ptr [edx+50],ax
>00535076    jmp         005350B6
 00535078    lea         eax,[ebp-8]
 0053507B    call        0051F398
 00535080    mov         edx,dword ptr [ebp-4]
 00535083    mov         word ptr [edx+4C],ax
 00535087    lea         eax,[ebp-8]
 0053508A    call        0051F398
 0053508F    mov         edx,dword ptr [ebp-4]
 00535092    mov         word ptr [edx+4E],ax
>00535096    jmp         005350B6
 00535098    lea         eax,[ebp-8]
 0053509B    call        0051F398
 005350A0    mov         edx,dword ptr [ebp-4]
 005350A3    mov         word ptr [edx+50],ax
 005350A7    lea         eax,[ebp-8]
 005350AA    call        0051F398
 005350AF    mov         edx,dword ptr [ebp-4]
 005350B2    mov         word ptr [edx+52],ax
 005350B6    mov         esp,ebp
 005350B8    pop         ebp
 005350B9    ret
end;*}

//005350BC
{*procedure sub_005350BC(?:?; ?:?);
begin
 005350BC    push        ebp
 005350BD    mov         ebp,esp
 005350BF    add         esp,0FFFFFFEC
 005350C2    mov         dword ptr [ebp-8],edx
 005350C5    mov         dword ptr [ebp-4],eax
 005350C8    lea         eax,[ebp-8]
 005350CB    mov         edx,3
 005350D0    call        0051F5E4
 005350D5    mov         eax,dword ptr [ebp-4]
 005350D8    mov         eax,dword ptr [eax+88]
 005350DE    call        005358A4
 005350E3    lea         eax,[ebp-8]
 005350E6    call        0051F338
 005350EB    mov         byte ptr [ebp-0A],al
 005350EE    mov         al,byte ptr [ebp-0A]
 005350F1    dec         eax
 005350F2    test        al,al
>005350F4    jb          0053513F
 005350F6    inc         eax
 005350F7    mov         byte ptr [ebp-11],al
 005350FA    mov         byte ptr [ebp-9],0
 005350FE    lea         eax,[ebp-8]
 00535101    call        0051F338
 00535106    mov         byte ptr [ebp-0B],al
 00535109    lea         eax,[ebp-8]
 0053510C    call        0051F338
 00535111    mov         byte ptr [ebp-0C],al
 00535114    lea         eax,[ebp-8]
 00535117    call        0051F3CC
 0053511C    mov         dword ptr [ebp-10],eax
 0053511F    mov         eax,dword ptr [ebp-10]
 00535122    push        eax
 00535123    mov         eax,dword ptr [ebp-4]
 00535126    mov         eax,dword ptr [eax+88]
 0053512C    mov         cl,byte ptr [ebp-0C]
 0053512F    mov         dl,byte ptr [ebp-0B]
 00535132    call        0053581C
 00535137    inc         byte ptr [ebp-9]
 0053513A    dec         byte ptr [ebp-11]
>0053513D    jne         005350FE
 0053513F    mov         esp,ebp
 00535141    pop         ebp
 00535142    ret
end;*}

//00535144
{*procedure sub_00535144(?:?; ?:?);
begin
 00535144    push        ebp
 00535145    mov         ebp,esp
 00535147    add         esp,0FFFFFFF0
 0053514A    mov         dword ptr [ebp-8],edx
 0053514D    mov         dword ptr [ebp-4],eax
 00535150    lea         eax,[ebp-8]
 00535153    mov         edx,3
 00535158    call        0051F5E4
 0053515D    mov         eax,dword ptr [ebp-4]
 00535160    mov         eax,dword ptr [eax+8C]
 00535166    call        00535C94
 0053516B    lea         eax,[ebp-8]
 0053516E    call        0051F338
 00535173    mov         byte ptr [ebp-0A],al
 00535176    mov         al,byte ptr [ebp-0A]
 00535179    dec         eax
 0053517A    test        al,al
>0053517C    jb          005351C9
 0053517E    inc         eax
 0053517F    mov         byte ptr [ebp-0F],al
 00535182    mov         byte ptr [ebp-9],0
 00535186    lea         eax,[ebp-8]
 00535189    call        0051F398
 0053518E    mov         word ptr [ebp-0C],ax
 00535192    lea         eax,[ebp-8]
 00535195    call        0051F338
 0053519A    mov         byte ptr [ebp-0D],al
 0053519D    lea         eax,[ebp-8]
 005351A0    call        0051F338
 005351A5    mov         byte ptr [ebp-0E],al
 005351A8    mov         al,byte ptr [ebp-0E]
 005351AB    push        eax
 005351AC    mov         eax,dword ptr [ebp-4]
 005351AF    mov         eax,dword ptr [eax+8C]
 005351B5    mov         cl,byte ptr [ebp-0D]
 005351B8    mov         dx,word ptr [ebp-0C]
 005351BC    call        00535C44
 005351C1    inc         byte ptr [ebp-9]
 005351C4    dec         byte ptr [ebp-0F]
>005351C7    jne         00535186
 005351C9    mov         esp,ebp
 005351CB    pop         ebp
 005351CC    ret
end;*}

//005351D0
{*procedure sub_005351D0(?:?; ?:?);
begin
 005351D0    push        ebp
 005351D1    mov         ebp,esp
 005351D3    add         esp,0FFFFFFF8
 005351D6    mov         dword ptr [ebp-8],edx
 005351D9    mov         dword ptr [ebp-4],eax
 005351DC    pop         ecx
 005351DD    pop         ecx
 005351DE    pop         ebp
 005351DF    ret
end;*}

//005351E0
{*procedure sub_005351E0(?:?);
begin
 005351E0    push        ebp
 005351E1    mov         ebp,esp
 005351E3    push        ecx
 005351E4    mov         dword ptr [ebp-4],eax
 005351E7    mov         eax,dword ptr [ebp-4]
 005351EA    add         eax,14
 005351ED    push        eax
 005351EE    call        kernel32.EnterCriticalSection
 005351F3    pop         ecx
 005351F4    pop         ebp
 005351F5    ret
end;*}

//005351F8
{*procedure sub_005351F8(?:?);
begin
 005351F8    push        ebp
 005351F9    mov         ebp,esp
 005351FB    push        ecx
 005351FC    mov         dword ptr [ebp-4],eax
 005351FF    mov         eax,dword ptr [ebp-4]
 00535202    add         eax,14
 00535205    push        eax
 00535206    call        kernel32.LeaveCriticalSection
 0053520B    pop         ecx
 0053520C    pop         ebp
 0053520D    ret
end;*}

//00535210
{*function sub_00535210(?:?; ?:?):?;
begin
 00535210    push        ebp
 00535211    mov         ebp,esp
 00535213    add         esp,0FFFFFFF4
 00535216    mov         dword ptr [ebp-8],edx
 00535219    mov         dword ptr [ebp-4],eax
 0053521C    mov         edx,dword ptr [ebp-8]
 0053521F    mov         eax,dword ptr [ebp-4]
 00535222    mov         eax,dword ptr [eax+10]
 00535225    call        TList.Get
 0053522A    mov         dword ptr [ebp-0C],eax
 0053522D    mov         eax,dword ptr [ebp-0C]
 00535230    mov         esp,ebp
 00535232    pop         ebp
 00535233    ret
end;*}

//00535234
{*procedure sub_00535234(?:?; ?:?);
begin
 00535234    push        ebp
 00535235    mov         ebp,esp
 00535237    add         esp,0FFFFFFF4
 0053523A    mov         dword ptr [ebp-8],edx
 0053523D    mov         dword ptr [ebp-4],eax
 00535240    lea         eax,[ebp-8]
 00535243    mov         edx,3
 00535248    call        0051F5E4
 0053524D    lea         eax,[ebp-8]
 00535250    call        0051F3CC
 00535255    mov         dword ptr [ebp-0C],eax
 00535258    mov         eax,dword ptr [ebp-4]
 0053525B    cmp         dword ptr [eax+40],0
>0053525F    je          00535282
 00535261    mov         eax,dword ptr [ebp-4]
 00535264    mov         eax,dword ptr [eax+40]
 00535267    mov         eax,dword ptr [eax]
 00535269    cmp         eax,dword ptr [ebp-0C]
>0053526C    jne         00535282
 0053526E    lea         eax,[ebp-8]
 00535271    call        0051F3FC
 00535276    mov         ecx,dword ptr [ebp-4]
 00535279    mov         ecx,dword ptr [ecx+40]
 0053527C    mov         dword ptr [ecx+28],eax
 0053527F    mov         dword ptr [ecx+2C],edx
 00535282    mov         esp,ebp
 00535284    pop         ebp
 00535285    ret
end;*}

//00535288
{*procedure sub_00535288(?:?; ?:?);
begin
 00535288    push        ebp
 00535289    mov         ebp,esp
 0053528B    add         esp,0FFFFFFF8
 0053528E    mov         dword ptr [ebp-8],edx
 00535291    mov         dword ptr [ebp-4],eax
 00535294    lea         eax,[ebp-8]
 00535297    mov         edx,3
 0053529C    call        0051F5E4
 005352A1    pop         ecx
 005352A2    pop         ecx
 005352A3    pop         ebp
 005352A4    ret
end;*}

//005353C0
{*procedure sub_005353C0(?:?; ?:?);
begin
 005353C0    push        ebp
 005353C1    mov         ebp,esp
 005353C3    add         esp,0FFFFFFF0
 005353C6    push        ebx
 005353C7    mov         dword ptr [ebp-8],edx
 005353CA    mov         dword ptr [ebp-4],eax
 005353CD    lea         eax,[ebp-8]
 005353D0    mov         edx,3
 005353D5    call        0051F5E4
 005353DA    lea         eax,[ebp-8]
 005353DD    call        0051F3CC
 005353E2    mov         dword ptr [ebp-0C],eax
 005353E5    lea         eax,[ebp-8]
 005353E8    call        0051F338
 005353ED    mov         byte ptr [ebp-0D],al
 005353F0    mov         al,byte ptr [ebp-0D]
 005353F3    sub         al,9
>005353F5    jne         0053540D
 005353F7    mov         eax,dword ptr [ebp-4]
 005353FA    cmp         word ptr [eax+3A],0
>005353FF    je          0053540D
 00535401    mov         ebx,dword ptr [ebp-4]
 00535404    mov         edx,dword ptr [ebp-0C]
 00535407    mov         eax,dword ptr [ebx+3C]
 0053540A    call        dword ptr [ebx+38]
 0053540D    pop         ebx
 0053540E    mov         esp,ebp
 00535410    pop         ebp
 00535411    ret
end;*}

//00535414
{*function sub_00535414(?:?):?;
begin
 00535414    push        ebp
 00535415    mov         ebp,esp
 00535417    add         esp,0FFFFFFF0
 0053541A    mov         dword ptr [ebp-4],eax
 0053541D    mov         byte ptr [ebp-5],0
 00535421    mov         dword ptr [ebp-0C],7
 00535428    mov         ecx,dword ptr [ebp-0C]
 0053542B    mov         al,1
 0053542D    shl         al,cl
 0053542F    mov         byte ptr [ebp-0D],al
 00535432    mov         eax,dword ptr [ebp-4]
 00535435    mov         al,byte ptr [eax+48]
 00535438    and         al,byte ptr [ebp-0D]
>0053543B    jbe         00535445
 0053543D    mov         al,byte ptr [ebp-0C]
 00535440    mov         byte ptr [ebp-5],al
>00535443    jmp         0053544E
 00535445    dec         dword ptr [ebp-0C]
 00535448    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0053544C    jne         00535428
 0053544E    mov         al,byte ptr [ebp-5]
 00535451    mov         esp,ebp
 00535453    pop         ebp
 00535454    ret
end;*}

//00535690
{*procedure sub_00535690(?:?; ?:?);
begin
 00535690    push        ebp
 00535691    mov         ebp,esp
 00535693    add         esp,0FFFFFFF8
 00535696    mov         dword ptr [ebp-8],edx
 00535699    mov         dword ptr [ebp-4],eax
 0053569C    mov         eax,dword ptr [ebp-4]
 0053569F    mov         eax,dword ptr [eax+40]
 005356A2    mov         al,byte ptr [eax+8]
 005356A5    sub         al,1
>005356A7    jb          005356B5
>005356A9    je          005356D3
 005356AB    dec         al
>005356AD    je          005356F1
 005356AF    dec         al
>005356B1    je          0053570F
>005356B3    jmp         0053572B
 005356B5    mov         eax,dword ptr [ebp-4]
 005356B8    call        00535414
 005356BD    and         eax,0FF
 005356C2    mov         edx,dword ptr [eax*4+55B02C];^'Wandering Knight'
 005356C9    mov         eax,dword ptr [ebp-8]
 005356CC    call        @LStrAsg
>005356D1    jmp         0053572B
 005356D3    mov         eax,dword ptr [ebp-4]
 005356D6    call        00535414
 005356DB    and         eax,0FF
 005356E0    mov         edx,dword ptr [eax*4+55B044];^'Scholar'
 005356E7    mov         eax,dword ptr [ebp-8]
 005356EA    call        @LStrAsg
>005356EF    jmp         0053572B
 005356F1    mov         eax,dword ptr [ebp-4]
 005356F4    call        00535414
 005356F9    and         eax,0FF
 005356FE    mov         edx,dword ptr [eax*4+55B05C];^'Wandering Archer'
 00535705    mov         eax,dword ptr [ebp-8]
 00535708    call        @LStrAsg
>0053570D    jmp         0053572B
 0053570F    mov         eax,dword ptr [ebp-4]
 00535712    call        00535414
 00535717    and         eax,0FF
 0053571C    mov         edx,dword ptr [eax*4+55B074];^'Wandering Thief'
 00535723    mov         eax,dword ptr [ebp-8]
 00535726    call        @LStrAsg
 0053572B    pop         ecx
 0053572C    pop         ecx
 0053572D    pop         ebp
 0053572E    ret
end;*}

//00535730
{*function sub_00535730(?:TPlayers):?;
begin
 00535730    push        ebp
 00535731    mov         ebp,esp
 00535733    add         esp,0FFFFFFF8
 00535736    mov         dword ptr [ebp-4],eax
 00535739    mov         eax,dword ptr [ebp-4]
 0053573C    cmp         dword ptr [eax+40],0
>00535740    je          00535750
 00535742    mov         eax,dword ptr [ebp-4]
 00535745    mov         eax,dword ptr [eax+40]
 00535748    mov         al,byte ptr [eax+8]
 0053574B    mov         byte ptr [ebp-5],al
>0053574E    jmp         00535766
 00535750    mov         ecx,535778;'Hero not Exist'
 00535755    mov         dl,1
 00535757    mov         eax,[004653B4];Exception
 0053575C    call        Exception.Create;Exception.Create
 00535761    call        @RaiseExcept
 00535766    mov         al,byte ptr [ebp-5]
 00535769    pop         ecx
 0053576A    pop         ecx
 0053576B    pop         ebp
 0053576C    ret
end;*}

//00535788
{*function sub_00535788(?:?):?;
begin
 00535788    push        ebp
 00535789    mov         ebp,esp
 0053578B    add         esp,0FFFFFFF0
 0053578E    mov         dword ptr [ebp-4],eax
 00535791    mov         byte ptr [ebp-5],0FF
 00535795    mov         eax,dword ptr [ebp-4]
 00535798    cmp         dword ptr [eax+40],0
>0053579C    je          005357C8
 0053579E    mov         eax,dword ptr [ebp-4]
 005357A1    movzx       eax,word ptr [eax+50]
 005357A5    mov         dword ptr [ebp-0C],eax
 005357A8    fild        dword ptr [ebp-0C]
 005357AB    mov         eax,dword ptr [ebp-4]
 005357AE    movzx       eax,word ptr [eax+52]
 005357B2    mov         dword ptr [ebp-10],eax
 005357B5    fild        dword ptr [ebp-10]
 005357B8    fdivp       st(1),st
 005357BA    fmul        dword ptr ds:[5357D0];100:Single
 005357C0    call        @ROUND
 005357C5    mov         byte ptr [ebp-5],al
 005357C8    mov         al,byte ptr [ebp-5]
 005357CB    mov         esp,ebp
 005357CD    pop         ebp
 005357CE    ret
end;*}

//005357D4
{*function sub_005357D4(?:TPlayers):?;
begin
 005357D4    push        ebp
 005357D5    mov         ebp,esp
 005357D7    add         esp,0FFFFFFF8
 005357DA    mov         dword ptr [ebp-4],eax
 005357DD    mov         eax,dword ptr [ebp-4]
 005357E0    cmp         dword ptr [eax+40],0
>005357E4    je          005357F0
 005357E6    mov         eax,dword ptr [ebp-4]
 005357E9    cmp         word ptr [eax+4C],0
>005357EE    ja          005357F4
 005357F0    xor         eax,eax
>005357F2    jmp         005357F6
 005357F4    mov         al,1
 005357F6    mov         byte ptr [ebp-5],al
 005357F9    mov         al,byte ptr [ebp-5]
 005357FC    pop         ecx
 005357FD    pop         ecx
 005357FE    pop         ebp
 005357FF    ret
end;*}

//00535800
{*function sub_00535800(?:TPlayers):?;
begin
 00535800    push        ebp
 00535801    mov         ebp,esp
 00535803    add         esp,0FFFFFFF8
 00535806    mov         dword ptr [ebp-4],eax
 00535809    mov         eax,dword ptr [ebp-4]
 0053580C    cmp         dword ptr [eax+40],0
 00535810    setne       byte ptr [ebp-5]
 00535814    mov         al,byte ptr [ebp-5]
 00535817    pop         ecx
 00535818    pop         ecx
 00535819    pop         ebp
 0053581A    ret
end;*}

//0053581C
{*procedure sub_0053581C(?:?; ?:?; ?:?; ?:?);
begin
 0053581C    push        ebp
 0053581D    mov         ebp,esp
 0053581F    add         esp,0FFFFFFF4
 00535822    mov         byte ptr [ebp-6],cl
 00535825    mov         byte ptr [ebp-5],dl
 00535828    mov         dword ptr [ebp-4],eax
 0053582B    mov         eax,10
 00535830    call        @GetMem
 00535835    mov         dword ptr [ebp-0C],eax
 00535838    mov         al,byte ptr [ebp-5]
 0053583B    mov         edx,dword ptr [ebp-0C]
 0053583E    mov         byte ptr [edx],al
 00535840    mov         al,byte ptr [ebp-6]
 00535843    mov         edx,dword ptr [ebp-0C]
 00535846    mov         byte ptr [edx+1],al
 00535849    mov         eax,dword ptr [ebp+8]
 0053584C    mov         edx,dword ptr [ebp-0C]
 0053584F    mov         dword ptr [edx+4],eax
 00535852    cmp         dword ptr [ebp+8],0
>00535856    jne         0053586C
 00535858    call        004688F0
 0053585D    fsub        dword ptr ds:[5358A0];5:Single
 00535863    mov         eax,dword ptr [ebp-0C]
 00535866    fstp        qword ptr [eax+8]
 00535869    wait
>0053586A    jmp         0053588C
 0053586C    call        004688F0
 00535871    add         esp,0FFFFFFF8
 00535874    fstp        qword ptr [esp]
 00535877    wait
 00535878    mov         eax,dword ptr [ebp+8]
 0053587B    inc         eax
 0053587C    xor         edx,edx
 0053587E    push        edx
 0053587F    push        eax
 00535880    call        00521DA4
 00535885    mov         eax,dword ptr [ebp-0C]
 00535888    fstp        qword ptr [eax+8]
 0053588B    wait
 0053588C    mov         eax,dword ptr [ebp-4]
 0053588F    mov         eax,dword ptr [eax+4]
 00535892    mov         edx,dword ptr [ebp-0C]
 00535895    call        TList.Add
 0053589A    mov         esp,ebp
 0053589C    pop         ebp
 0053589D    ret         4
end;*}

//005358A4
{*procedure sub_005358A4(?:?);
begin
 005358A4    push        ebp
 005358A5    mov         ebp,esp
 005358A7    add         esp,0FFFFFFF4
 005358AA    mov         dword ptr [ebp-4],eax
 005358AD    mov         eax,dword ptr [ebp-4]
 005358B0    mov         eax,dword ptr [eax+4]
 005358B3    mov         eax,dword ptr [eax+8]
 005358B6    dec         eax
 005358B7    test        eax,eax
>005358B9    jl          005358F6
 005358BB    inc         eax
 005358BC    mov         dword ptr [ebp-0C],eax
 005358BF    mov         dword ptr [ebp-8],0
 005358C6    mov         edx,dword ptr [ebp-8]
 005358C9    mov         eax,dword ptr [ebp-4]
 005358CC    mov         eax,dword ptr [eax+4]
 005358CF    call        TList.Get
 005358D4    mov         edx,10
 005358D9    call        @FreeMem
 005358DE    xor         ecx,ecx
 005358E0    mov         edx,dword ptr [ebp-8]
 005358E3    mov         eax,dword ptr [ebp-4]
 005358E6    mov         eax,dword ptr [eax+4]
 005358E9    call        00478A34
 005358EE    inc         dword ptr [ebp-8]
 005358F1    dec         dword ptr [ebp-0C]
>005358F4    jne         005358C6
 005358F6    mov         eax,dword ptr [ebp-4]
 005358F9    mov         eax,dword ptr [eax+4]
 005358FC    mov         edx,dword ptr [eax]
 005358FE    call        dword ptr [edx+8]
 00535901    mov         esp,ebp
 00535903    pop         ebp
 00535904    ret
end;*}

//00535908
constructor THeroSkills.Create;
begin
{*
 00535908    push        ebp
 00535909    mov         ebp,esp
 0053590B    add         esp,0FFFFFFF8
 0053590E    test        dl,dl
>00535910    je          0053591A
 00535912    add         esp,0FFFFFFF0
 00535915    call        @ClassCreate
 0053591A    mov         byte ptr [ebp-5],dl
 0053591D    mov         dword ptr [ebp-4],eax
 00535920    xor         edx,edx
 00535922    mov         eax,dword ptr [ebp-4]
 00535925    call        TObject.Create
 0053592A    mov         dl,1
 0053592C    mov         eax,[004759C0];TList
 00535931    call        TObject.Create;TList.Create
 00535936    mov         edx,dword ptr [ebp-4]
 00535939    mov         dword ptr [edx+4],eax;THeroSkills..:TList
 0053593C    mov         eax,dword ptr [ebp-4]
 0053593F    cmp         byte ptr [ebp-5],0
>00535943    je          00535954
 00535945    call        @AfterConstruction
 0053594A    pop         dword ptr fs:[0]
 00535951    add         esp,0C
 00535954    mov         eax,dword ptr [ebp-4]
 00535957    pop         ecx
 00535958    pop         ecx
 00535959    pop         ebp
 0053595A    ret
*}
end;

//005359A0
{*function sub_005359A0(?:?; ?:?):?;
begin
 005359A0    push        ebp
 005359A1    mov         ebp,esp
 005359A3    add         esp,0FFFFFFF0
 005359A6    mov         byte ptr [ebp-5],dl
 005359A9    mov         dword ptr [ebp-4],eax
 005359AC    mov         dl,byte ptr [ebp-5]
 005359AF    mov         eax,dword ptr [ebp-4]
 005359B2    call        005359EC
 005359B7    mov         dword ptr [ebp-10],eax
 005359BA    cmp         dword ptr [ebp-10],0
>005359BE    je          005359DF
 005359C0    call        004688F0
 005359C5    add         esp,0FFFFFFF8
 005359C8    fstp        qword ptr [esp]
 005359CB    wait
 005359CC    mov         eax,dword ptr [ebp-10]
 005359CF    push        dword ptr [eax+0C]
 005359D2    push        dword ptr [eax+8]
 005359D5    call        00521CB4
 005359DA    mov         dword ptr [ebp-0C],eax
>005359DD    jmp         005359E4
 005359DF    xor         eax,eax
 005359E1    mov         dword ptr [ebp-0C],eax
 005359E4    mov         eax,dword ptr [ebp-0C]
 005359E7    mov         esp,ebp
 005359E9    pop         ebp
 005359EA    ret
end;*}

//005359EC
{*function sub_005359EC(?:?; ?:?):?;
begin
 005359EC    push        ebp
 005359ED    mov         ebp,esp
 005359EF    add         esp,0FFFFFFEC
 005359F2    mov         byte ptr [ebp-5],dl
 005359F5    mov         dword ptr [ebp-4],eax
 005359F8    xor         eax,eax
 005359FA    mov         dword ptr [ebp-0C],eax
 005359FD    mov         eax,dword ptr [ebp-4]
 00535A00    mov         eax,dword ptr [eax+4]
 00535A03    mov         eax,dword ptr [eax+8]
 00535A06    dec         eax
 00535A07    test        eax,eax
>00535A09    jl          00535A46
 00535A0B    inc         eax
 00535A0C    mov         dword ptr [ebp-14],eax
 00535A0F    mov         dword ptr [ebp-10],0
 00535A16    mov         eax,dword ptr [ebp-4]
 00535A19    mov         eax,dword ptr [eax+4]
 00535A1C    mov         edx,dword ptr [ebp-10]
 00535A1F    call        TList.Get
 00535A24    mov         al,byte ptr [eax]
 00535A26    cmp         al,byte ptr [ebp-5]
>00535A29    jne         00535A3E
 00535A2B    mov         eax,dword ptr [ebp-4]
 00535A2E    mov         eax,dword ptr [eax+4]
 00535A31    mov         edx,dword ptr [ebp-10]
 00535A34    call        TList.Get
 00535A39    mov         dword ptr [ebp-0C],eax
>00535A3C    jmp         00535A46
 00535A3E    inc         dword ptr [ebp-10]
 00535A41    dec         dword ptr [ebp-14]
>00535A44    jne         00535A16
 00535A46    mov         eax,dword ptr [ebp-0C]
 00535A49    mov         esp,ebp
 00535A4B    pop         ebp
 00535A4C    ret
end;*}

//00535A50
{*function sub_00535A50(?:dword; ?:?):?;
begin
 00535A50    push        ebp
 00535A51    mov         ebp,esp
 00535A53    add         esp,0FFFFFFF8
 00535A56    mov         byte ptr [ebp-5],dl
 00535A59    mov         dword ptr [ebp-4],eax
 00535A5C    mov         dl,byte ptr [ebp-5]
 00535A5F    mov         eax,dword ptr [ebp-4]
 00535A62    call        005359EC
 00535A67    test        eax,eax
 00535A69    setne       byte ptr [ebp-6]
 00535A6D    mov         al,byte ptr [ebp-6]
 00535A70    pop         ecx
 00535A71    pop         ecx
 00535A72    pop         ebp
 00535A73    ret
end;*}

//00535A74
{*procedure sub_00535A74(?:?; ?:?);
begin
 00535A74    push        ebp
 00535A75    mov         ebp,esp
 00535A77    add         esp,0FFFFFFEC
 00535A7A    xor         ecx,ecx
 00535A7C    mov         dword ptr [ebp-10],ecx
 00535A7F    mov         dword ptr [ebp-14],ecx
 00535A82    mov         byte ptr [ebp-5],dl
 00535A85    mov         dword ptr [ebp-4],eax
 00535A88    xor         eax,eax
 00535A8A    push        ebp
 00535A8B    push        535B0E
 00535A90    push        dword ptr fs:[eax]
 00535A93    mov         dword ptr fs:[eax],esp
 00535A96    mov         dl,byte ptr [ebp-5]
 00535A99    mov         eax,dword ptr [ebp-4]
 00535A9C    call        005359EC
 00535AA1    mov         dword ptr [ebp-0C],eax
 00535AA4    cmp         dword ptr [ebp-0C],0
>00535AA8    je          00535AB8
 00535AAA    call        004688F0
 00535AAF    mov         eax,dword ptr [ebp-0C]
 00535AB2    fstp        qword ptr [eax+8]
 00535AB5    wait
>00535AB6    jmp         00535AF3
 00535AB8    push        535B24;'Skill '
 00535ABD    lea         edx,[ebp-14]
 00535AC0    xor         eax,eax
 00535AC2    mov         al,byte ptr [ebp-5]
 00535AC5    call        IntToStr
 00535ACA    push        dword ptr [ebp-14]
 00535ACD    push        535B34;' not exist!'
 00535AD2    lea         eax,[ebp-10]
 00535AD5    mov         edx,3
 00535ADA    call        @LStrCatN
 00535ADF    mov         ecx,dword ptr [ebp-10]
 00535AE2    mov         dl,1
 00535AE4    mov         eax,[004653B4];Exception
 00535AE9    call        Exception.Create;Exception.Create
 00535AEE    call        @RaiseExcept
 00535AF3    xor         eax,eax
 00535AF5    pop         edx
 00535AF6    pop         ecx
 00535AF7    pop         ecx
 00535AF8    mov         dword ptr fs:[eax],edx
 00535AFB    push        535B15
 00535B00    lea         eax,[ebp-14]
 00535B03    mov         edx,2
 00535B08    call        @LStrArrayClr
 00535B0D    ret
>00535B0E    jmp         @HandleFinally
>00535B13    jmp         00535B00
 00535B15    mov         esp,ebp
 00535B17    pop         ebp
 00535B18    ret
end;*}

//00535B40
{*procedure sub_00535B40(?:?; ?:?);
begin
 00535B40    push        ebp
 00535B41    mov         ebp,esp
 00535B43    add         esp,0FFFFFFE0
 00535B46    xor         ecx,ecx
 00535B48    mov         dword ptr [ebp-18],ecx
 00535B4B    mov         dword ptr [ebp-1C],ecx
 00535B4E    mov         dword ptr [ebp-20],ecx
 00535B51    mov         dword ptr [ebp-8],edx
 00535B54    mov         dword ptr [ebp-4],eax
 00535B57    xor         eax,eax
 00535B59    push        ebp
 00535B5A    push        535C0B
 00535B5F    push        dword ptr fs:[eax]
 00535B62    mov         dword ptr fs:[eax],esp
 00535B65    mov         eax,dword ptr [ebp-4]
 00535B68    mov         eax,dword ptr [eax+4]
 00535B6B    mov         eax,dword ptr [eax+8]
 00535B6E    dec         eax
 00535B6F    test        eax,eax
>00535B71    jl          00535BF0
 00535B73    inc         eax
 00535B74    mov         dword ptr [ebp-14],eax
 00535B77    mov         dword ptr [ebp-0C],0
 00535B7E    mov         eax,dword ptr [ebp-4]
 00535B81    mov         eax,dword ptr [eax+4]
 00535B84    mov         edx,dword ptr [ebp-0C]
 00535B87    call        TList.Get
 00535B8C    mov         dword ptr [ebp-10],eax
 00535B8F    mov         eax,dword ptr [ebp-8]
 00535B92    push        dword ptr [eax]
 00535B94    lea         edx,[ebp-18]
 00535B97    mov         eax,dword ptr [ebp-10]
 00535B9A    movzx       eax,byte ptr [eax]
 00535B9D    call        IntToStr
 00535BA2    push        dword ptr [ebp-18]
 00535BA5    push        535C20;' lvl: '
 00535BAA    lea         edx,[ebp-1C]
 00535BAD    mov         eax,dword ptr [ebp-10]
 00535BB0    movzx       eax,byte ptr [eax+1]
 00535BB4    call        IntToStr
 00535BB9    push        dword ptr [ebp-1C]
 00535BBC    push        535C30;' czas: '
 00535BC1    mov         eax,dword ptr [ebp-10]
 00535BC4    mov         eax,dword ptr [eax+4]
 00535BC7    xor         edx,edx
 00535BC9    push        edx
 00535BCA    push        eax
 00535BCB    lea         eax,[ebp-20]
 00535BCE    call        IntToStr
 00535BD3    push        dword ptr [ebp-20]
 00535BD6    push        535C40;#13
 00535BDB    mov         eax,dword ptr [ebp-8]
 00535BDE    mov         edx,7
 00535BE3    call        @LStrCatN
 00535BE8    inc         dword ptr [ebp-0C]
 00535BEB    dec         dword ptr [ebp-14]
>00535BEE    jne         00535B7E
 00535BF0    xor         eax,eax
 00535BF2    pop         edx
 00535BF3    pop         ecx
 00535BF4    pop         ecx
 00535BF5    mov         dword ptr fs:[eax],edx
 00535BF8    push        535C12
 00535BFD    lea         eax,[ebp-20]
 00535C00    mov         edx,3
 00535C05    call        @LStrArrayClr
 00535C0A    ret
>00535C0B    jmp         @HandleFinally
>00535C10    jmp         00535BFD
 00535C12    mov         esp,ebp
 00535C14    pop         ebp
 00535C15    ret
end;*}

//00535C44
{*procedure sub_00535C44(?:?; ?:?; ?:?; ?:?);
begin
 00535C44    push        ebp
 00535C45    mov         ebp,esp
 00535C47    add         esp,0FFFFFFF4
 00535C4A    mov         byte ptr [ebp-7],cl
 00535C4D    mov         word ptr [ebp-6],dx
 00535C51    mov         dword ptr [ebp-4],eax
 00535C54    mov         eax,4
 00535C59    call        @GetMem
 00535C5E    mov         dword ptr [ebp-0C],eax
 00535C61    mov         ax,word ptr [ebp-6]
 00535C65    mov         edx,dword ptr [ebp-0C]
 00535C68    mov         word ptr [edx],ax
 00535C6B    mov         al,byte ptr [ebp-7]
 00535C6E    mov         edx,dword ptr [ebp-0C]
 00535C71    mov         byte ptr [edx+2],al
 00535C74    mov         al,byte ptr [ebp+8]
 00535C77    mov         edx,dword ptr [ebp-0C]
 00535C7A    mov         byte ptr [edx+3],al
 00535C7D    mov         edx,dword ptr [ebp-0C]
 00535C80    mov         eax,dword ptr [ebp-4]
 00535C83    mov         eax,dword ptr [eax+4]
 00535C86    call        TList.Add
 00535C8B    mov         esp,ebp
 00535C8D    pop         ebp
 00535C8E    ret         4
end;*}

//00535C94
{*procedure sub_00535C94(?:?);
begin
 00535C94    push        ebp
 00535C95    mov         ebp,esp
 00535C97    add         esp,0FFFFFFF8
 00535C9A    mov         dword ptr [ebp-4],eax
 00535C9D    mov         eax,dword ptr [ebp-4]
 00535CA0    mov         eax,dword ptr [eax+4]
 00535CA3    mov         eax,dword ptr [eax+8]
 00535CA6    dec         eax
 00535CA7    cmp         eax,0
>00535CAA    jl          00535CD0
 00535CAC    mov         dword ptr [ebp-8],eax
 00535CAF    mov         edx,dword ptr [ebp-8]
 00535CB2    mov         eax,dword ptr [ebp-4]
 00535CB5    mov         eax,dword ptr [eax+4]
 00535CB8    call        TList.Get
 00535CBD    mov         edx,4
 00535CC2    call        @FreeMem
 00535CC7    dec         dword ptr [ebp-8]
 00535CCA    cmp         dword ptr [ebp-8],0FFFFFFFF
>00535CCE    jne         00535CAF
 00535CD0    mov         eax,dword ptr [ebp-4]
 00535CD3    mov         eax,dword ptr [eax+4]
 00535CD6    mov         edx,dword ptr [eax]
 00535CD8    call        dword ptr [edx+8]
 00535CDB    pop         ecx
 00535CDC    pop         ecx
 00535CDD    pop         ebp
 00535CDE    ret
end;*}

//00535CE0
constructor THeroQuests.Create;
begin
{*
 00535CE0    push        ebp
 00535CE1    mov         ebp,esp
 00535CE3    add         esp,0FFFFFFF8
 00535CE6    test        dl,dl
>00535CE8    je          00535CF2
 00535CEA    add         esp,0FFFFFFF0
 00535CED    call        @ClassCreate
 00535CF2    mov         byte ptr [ebp-5],dl
 00535CF5    mov         dword ptr [ebp-4],eax
 00535CF8    mov         dl,1
 00535CFA    mov         eax,[004759C0];TList
 00535CFF    call        TObject.Create;TList.Create
 00535D04    mov         edx,dword ptr [ebp-4]
 00535D07    mov         dword ptr [edx+4],eax;THeroQuests..:TList
 00535D0A    mov         eax,dword ptr [ebp-4]
 00535D0D    cmp         byte ptr [ebp-5],0
>00535D11    je          00535D22
 00535D13    call        @AfterConstruction
 00535D18    pop         dword ptr fs:[0]
 00535D1F    add         esp,0C
 00535D22    mov         eax,dword ptr [ebp-4]
 00535D25    pop         ecx
 00535D26    pop         ecx
 00535D27    pop         ebp
 00535D28    ret
*}
end;

//00535D70
{*procedure sub_00535D70(?:?; ?:?);
begin
 00535D70    push        ebp
 00535D71    mov         ebp,esp
 00535D73    add         esp,0FFFFFFCC
 00535D76    xor         ecx,ecx
 00535D78    mov         dword ptr [ebp-1C],ecx
 00535D7B    mov         dword ptr [ebp-10],ecx
 00535D7E    mov         dword ptr [ebp-8],edx
 00535D81    mov         dword ptr [ebp-4],eax
 00535D84    xor         eax,eax
 00535D86    push        ebp
 00535D87    push        535E37
 00535D8C    push        dword ptr fs:[eax]
 00535D8F    mov         dword ptr fs:[eax],esp
 00535D92    mov         eax,dword ptr [ebp-4]
 00535D95    mov         eax,dword ptr [eax+4]
 00535D98    mov         eax,dword ptr [eax+8]
 00535D9B    dec         eax
 00535D9C    test        eax,eax
>00535D9E    jl          00535E0E
 00535DA0    inc         eax
 00535DA1    mov         dword ptr [ebp-18],eax
 00535DA4    mov         dword ptr [ebp-0C],0
 00535DAB    mov         eax,dword ptr [ebp-4]
 00535DAE    mov         eax,dword ptr [eax+4]
 00535DB1    mov         edx,dword ptr [ebp-0C]
 00535DB4    call        TList.Get
 00535DB9    mov         dword ptr [ebp-14],eax
 00535DBC    lea         eax,[ebp-1C]
 00535DBF    push        eax
 00535DC0    mov         eax,dword ptr [ebp-14]
 00535DC3    movzx       eax,word ptr [eax]
 00535DC6    mov         dword ptr [ebp-34],eax
 00535DC9    mov         byte ptr [ebp-30],0
 00535DCD    mov         eax,dword ptr [ebp-14]
 00535DD0    movzx       eax,byte ptr [eax+2]
 00535DD4    mov         dword ptr [ebp-2C],eax
 00535DD7    mov         byte ptr [ebp-28],0
 00535DDB    mov         eax,dword ptr [ebp-14]
 00535DDE    movzx       eax,byte ptr [eax+3]
 00535DE2    mov         dword ptr [ebp-24],eax
 00535DE5    mov         byte ptr [ebp-20],0
 00535DE9    lea         edx,[ebp-34]
 00535DEC    mov         ecx,2
 00535DF1    mov         eax,535E4C;'Q: %d, Flag: %d, Clear: %d'+#13
 00535DF6    call        Format
 00535DFB    mov         edx,dword ptr [ebp-1C]
 00535DFE    lea         eax,[ebp-10]
 00535E01    call        @LStrCat
 00535E06    inc         dword ptr [ebp-0C]
 00535E09    dec         dword ptr [ebp-18]
>00535E0C    jne         00535DAB
 00535E0E    mov         eax,dword ptr [ebp-8]
 00535E11    mov         edx,dword ptr [ebp-10]
 00535E14    call        @LStrAsg
 00535E19    xor         eax,eax
 00535E1B    pop         edx
 00535E1C    pop         ecx
 00535E1D    pop         ecx
 00535E1E    mov         dword ptr fs:[eax],edx
 00535E21    push        535E3E
 00535E26    lea         eax,[ebp-1C]
 00535E29    call        @LStrClr
 00535E2E    lea         eax,[ebp-10]
 00535E31    call        @LStrClr
 00535E36    ret
>00535E37    jmp         @HandleFinally
>00535E3C    jmp         00535E26
 00535E3E    mov         esp,ebp
 00535E40    pop         ebp
 00535E41    ret
end;*}

Initialization
Finalization
//00535E68
{*
 00535E68    push        ebp
 00535E69    mov         ebp,esp
 00535E6B    xor         eax,eax
 00535E6D    push        ebp
 00535E6E    push        535EF8
 00535E73    push        dword ptr fs:[eax]
 00535E76    mov         dword ptr fs:[eax],esp
 00535E79    inc         dword ptr ds:[55E110]
>00535E7F    jne         00535EEA
 00535E81    mov         eax,55B074;^'Wandering Thief'
 00535E86    mov         ecx,6
 00535E8B    mov         edx,dword ptr ds:[4010AC];String
 00535E91    call        @FinalizeArray
 00535E96    mov         eax,55B05C;^'Wandering Archer'
 00535E9B    mov         ecx,6
 00535EA0    mov         edx,dword ptr ds:[4010AC];String
 00535EA6    call        @FinalizeArray
 00535EAB    mov         eax,55B044;^'Scholar'
 00535EB0    mov         ecx,6
 00535EB5    mov         edx,dword ptr ds:[4010AC];String
 00535EBB    call        @FinalizeArray
 00535EC0    mov         eax,55B02C;^'Wandering Knight'
 00535EC5    mov         ecx,6
 00535ECA    mov         edx,dword ptr ds:[4010AC];String
 00535ED0    call        @FinalizeArray
 00535ED5    mov         eax,55AFF0;^'atCommon'
 00535EDA    mov         ecx,0F
 00535EDF    mov         edx,dword ptr ds:[4010AC];String
 00535EE5    call        @FinalizeArray
 00535EEA    xor         eax,eax
 00535EEC    pop         edx
 00535EED    pop         ecx
 00535EEE    pop         ecx
 00535EEF    mov         dword ptr fs:[eax],edx
 00535EF2    push        535EFF
 00535EF7    ret
>00535EF8    jmp         @HandleFinally
>00535EFD    jmp         00535EF7
 00535EFF    pop         ebp
 00535F00    ret
*}
end.