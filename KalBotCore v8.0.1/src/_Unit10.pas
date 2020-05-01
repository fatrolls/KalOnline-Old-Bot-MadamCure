//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit10;

interface

uses
  SysUtils, Classes;

type
  TINVBitmap = class(TInterfacedObject)
    //constructor Create(?:?; ?:?; ?:?; ?:?);//00426438
  end;
    //function sub_00426360(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00426360
    //procedure sub_0042641C(?:?; ?:?; ?:?);//0042641C
    //function sub_004264D0(?:?):?;//004264D0
    //function sub_004264D4(?:?):?;//004264D4
    //procedure sub_004264D8(?:?; ?:?; ?:?; ?:?);//004264D8
    //procedure sub_00426514(?:?; ?:?);//00426514
    //function sub_0042656C(?:Longint):?;//0042656C
    //procedure sub_00426594(?:?; ?:?);//00426594
    //procedure sub_00426618(?:?; ?:Longint);//00426618
    //procedure sub_00426678(?:?; ?:?);//00426678
    //procedure sub_00426740(?:?; ?:AnsiString; ?:?);//00426740
    //procedure sub_00426800(?:?; ?:?; ?:AnsiString; ?:?);//00426800
    //procedure sub_00426908(?:Pointer; ?:Pointer; ?:Pointer; ?:?; ?:?; ?:?);//00426908
    //procedure sub_004269FC(?:Pointer; ?:Pointer; ?:Pointer; ?:?; ?:?);//004269FC
    //function sub_00426BF8(?:?; ?:Pointer):?;//00426BF8
    //function sub_00426CC4(?:?; ?:?; ?:?):?;//00426CC4
    //function sub_00426E14(?:?; ?:?; ?:?; ?:?):?;//00426E14
    //procedure sub_00426F74(?:?; ?:?);//00426F74
    //procedure sub_0042710C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0042710C
    //function sub_004272EC(?:?; ?:?; ?:?):?;//004272EC
    //procedure sub_00427494(?:?; ?:Integer; ?:AnsiString; ?:?);//00427494
    //procedure sub_00427750(?:?);//00427750
    //function sub_0042778C(?:?; ?:AnsiString; ?:?; ?:?; ?:?):?;//0042778C
    //procedure sub_0042784C(?:?; ?:?; ?:AnsiString);//0042784C
    //procedure sub_004278A8(?:?);//004278A8
    //function sub_004278E4(?:?; ?:AnsiString; ?:?):?;//004278E4
    //procedure sub_0042794C(?:?; ?:?; ?:?);//0042794C
    //function sub_00427CE0(?:?; ?:?):?;//00427CE0
    //function sub_00427E00(?:?; ?:?; ?:?):?;//00427E00
    //function sub_00427F40(?:?; ?:?):?;//00427F40
    //procedure sub_00428284(?:?);//00428284
    //procedure sub_004282AC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004282AC
    //procedure sub_0042855C(?:?; ?:?; ?:?; ?:?);//0042855C
    //procedure sub_004287CC(?:?; ?:?);//004287CC
    //procedure sub_004288F0(?:HDC; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004288F0
    //procedure sub_00428AF8(?:WideString; ?:?);//00428AF8
    //procedure sub_00428C24(?:?; ?:?);//00428C24

implementation

//00426360
{*function sub_00426360(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00426360    push        ebp
 00426361    mov         ebp,esp
 00426363    add         esp,0FFFFFFF8
 00426366    push        ebx
 00426367    push        esi
 00426368    push        edi
 00426369    mov         edi,ecx
 0042636B    mov         dword ptr [ebp-8],edx
 0042636E    mov         dword ptr [ebp-4],eax
 00426371    mov         esi,dword ptr [ebp+0C]
 00426374    xor         ebx,ebx
 00426376    mov         eax,edi
 00426378    mov         edx,28
 0042637D    call        00408130
 00426382    mov         dword ptr [edi],28
 00426388    mov         eax,dword ptr [ebp-4]
 0042638B    mov         dword ptr [edi+4],eax
 0042638E    mov         eax,dword ptr [ebp-8]
 00426391    mov         dword ptr [edi+8],eax
 00426394    mov         word ptr [edi+0C],1
 0042639A    mov         word ptr [edi+0E],20
 004263A0    mov         eax,dword ptr [ebp-4]
 004263A3    shl         eax,2
 004263A6    imul        dword ptr [ebp-8]
 004263A9    mov         dword ptr [edi+14],eax
 004263AC    push        0
 004263AE    call        gdi32.CreateCompatibleDC
 004263B3    mov         dword ptr [esi],eax
 004263B5    cmp         dword ptr [esi],0
>004263B8    je          0042640F
 004263BA    mov         eax,dword ptr [ebp+8]
 004263BD    xor         edx,edx
 004263BF    mov         dword ptr [eax],edx
 004263C1    push        0
 004263C3    push        0
 004263C5    mov         eax,dword ptr [ebp+8]
 004263C8    push        eax
 004263C9    push        0
 004263CB    push        edi
 004263CC    push        0
 004263CE    call        gdi32.CreateDIBSection
 004263D3    mov         edx,dword ptr [ebp+14]
 004263D6    mov         dword ptr [edx],eax
 004263D8    mov         eax,dword ptr [ebp+14]
 004263DB    cmp         dword ptr [eax],0
>004263DE    je          004263E8
 004263E0    mov         eax,dword ptr [ebp+8]
 004263E3    cmp         dword ptr [eax],0
>004263E6    jne         004263EC
 004263E8    xor         ebx,ebx
>004263EA    jmp         004263EE
 004263EC    mov         bl,1
 004263EE    test        bl,bl
>004263F0    je          00426407
 004263F2    mov         eax,dword ptr [ebp+14]
 004263F5    mov         eax,dword ptr [eax]
 004263F7    push        eax
 004263F8    mov         eax,dword ptr [esi]
 004263FA    push        eax
 004263FB    call        gdi32.SelectObject
 00426400    mov         edx,dword ptr [ebp+10]
 00426403    mov         dword ptr [edx],eax
>00426405    jmp         0042640F
 00426407    mov         eax,dword ptr [esi]
 00426409    push        eax
 0042640A    call        gdi32.DeleteDC
 0042640F    mov         eax,ebx
 00426411    pop         edi
 00426412    pop         esi
 00426413    pop         ebx
 00426414    pop         ecx
 00426415    pop         ecx
 00426416    pop         ebp
 00426417    ret         10
end;*}

//0042641C
{*procedure sub_0042641C(?:?; ?:?; ?:?);
begin
 0042641C    push        ebx
 0042641D    push        esi
 0042641E    mov         ebx,ecx
 00426420    mov         esi,eax
 00426422    push        edx
 00426423    push        ebx
 00426424    call        gdi32.SelectObject
 00426429    push        ebx
 0042642A    call        gdi32.DeleteDC
 0042642F    push        esi
 00426430    call        gdi32.DeleteObject
 00426435    pop         esi
 00426436    pop         ebx
 00426437    ret
end;*}

//00426438
{*constructor TINVBitmap.Create(?:?; ?:?; ?:?; ?:?);
begin
 00426438    push        ebp
 00426439    mov         ebp,esp
 0042643B    push        ebx
 0042643C    push        esi
 0042643D    push        edi
 0042643E    test        dl,dl
>00426440    je          0042644A
 00426442    add         esp,0FFFFFFF0
 00426445    call        @ClassCreate
 0042644A    mov         esi,ecx
 0042644C    mov         ebx,edx
 0042644E    mov         edi,eax
 00426450    xor         edx,edx
 00426452    mov         eax,edi
 00426454    call        TObject.Create
 00426459    push        edi
 0042645A    add         edi,0C
 0042645D    mov         ecx,0A
 00426462    rep movs    dword ptr [edi],dword ptr [esi]
 00426464    pop         edi
 00426465    mov         eax,dword ptr [ebp+14]
 00426468    mov         dword ptr [edi+34],eax
 0042646B    mov         eax,dword ptr [ebp+10]
 0042646E    mov         dword ptr [edi+38],eax
 00426471    mov         eax,dword ptr [ebp+0C]
 00426474    mov         dword ptr [edi+3C],eax
 00426477    mov         eax,dword ptr [ebp+8]
 0042647A    mov         dword ptr [edi+40],eax
 0042647D    mov         eax,edi
 0042647F    test        bl,bl
>00426481    je          00426492
 00426483    call        @AfterConstruction
 00426488    pop         dword ptr fs:[0]
 0042648F    add         esp,0C
 00426492    mov         eax,edi
 00426494    pop         edi
 00426495    pop         esi
 00426496    pop         ebx
 00426497    pop         ebp
 00426498    ret         10
end;*}

//004264D0
{*function sub_004264D0(?:?):?;
begin
 004264D0    mov         eax,dword ptr [eax+10]
 004264D3    ret
end;*}

//004264D4
{*function sub_004264D4(?:?):?;
begin
 004264D4    mov         eax,dword ptr [eax+14]
 004264D7    ret
end;*}

//004264D8
{*procedure sub_004264D8(?:?; ?:?; ?:?; ?:?);
begin
 004264D8    push        ebp
 004264D9    mov         ebp,esp
 004264DB    push        ebx
 004264DC    push        esi
 004264DD    push        edi
 004264DE    mov         edi,ecx
 004264E0    mov         esi,edx
 004264E2    mov         ebx,eax
 004264E4    push        0CC0020
 004264E9    push        0
 004264EB    push        0
 004264ED    mov         eax,dword ptr [ebx+3C]
 004264F0    push        eax
 004264F1    mov         eax,dword ptr [ebx+14]
 004264F4    push        eax
 004264F5    mov         eax,dword ptr [ebx+10]
 004264F8    push        eax
 004264F9    mov         eax,dword ptr [ebp+8]
 004264FC    push        eax
 004264FD    push        edi
 004264FE    push        esi
 004264FF    call        gdi32.BitBlt
 00426504    cmp         eax,1
 00426507    sbb         eax,eax
 00426509    inc         eax
 0042650A    pop         edi
 0042650B    pop         esi
 0042650C    pop         ebx
 0042650D    pop         ebp
 0042650E    ret         4
end;*}

//00426514
{*procedure sub_00426514(?:?; ?:?);
begin
 00426514    push        ebx
 00426515    push        esi
 00426516    push        edi
 00426517    mov         esi,edx
 00426519    mov         ebx,eax
 0042651B    mov         edx,dword ptr [ebx+20]
 0042651E    add         edx,36
 00426521    mov         eax,esi
 00426523    call        @LStrSetLength
 00426528    mov         eax,dword ptr [esi]
 0042652A    mov         word ptr [eax],4D42
 0042652F    mov         edx,dword ptr [ebx+20]
 00426532    add         edx,36
 00426535    mov         dword ptr [eax+2],edx
 00426538    mov         word ptr [eax+6],0
 0042653E    mov         word ptr [eax+8],0
 00426544    mov         dword ptr [eax+0A],36
 0042654B    lea         esi,[ebx+0C]
 0042654E    lea         edi,[eax+0E]
 00426551    mov         ecx,0A
 00426556    rep movs    dword ptr [edi],dword ptr [esi]
 00426558    lea         edx,[eax+36]
 0042655B    mov         eax,dword ptr [ebx+40]
 0042655E    mov         ecx,dword ptr [ebx+20]
 00426561    call        Move
 00426566    pop         edi
 00426567    pop         esi
 00426568    pop         ebx
 00426569    ret
end;*}

//0042656C
{*function sub_0042656C(?:Longint):?;
begin
 0042656C    mov         edx,eax
 0042656E    shr         edx,18
 00426571    mov         ecx,eax
 00426573    shr         ecx,8
 00426576    and         ecx,0FF00
 0042657C    add         edx,ecx
 0042657E    mov         ecx,eax
 00426580    shl         ecx,8
 00426583    and         ecx,0FF0000
 00426589    add         edx,ecx
 0042658B    shl         eax,18
 0042658E    add         edx,eax
 00426590    mov         eax,edx
 00426592    ret
end;*}

//00426594
{*procedure sub_00426594(?:?; ?:?);
begin
 00426594    push        ebp
 00426595    mov         ebp,esp
 00426597    push        ebx
 00426598    push        esi
 00426599    mov         ebx,eax
 0042659B    mov         eax,ebx
 0042659D    mov         edx,8
 004265A2    call        @LStrSetLength
 004265A7    mov         eax,dword ptr [ebp+8]
 004265AA    mov         eax,dword ptr [eax-4]
 004265AD    call        @DynArrayLength
 004265B2    cmp         eax,300
>004265B7    jne         004265C7
 004265B9    mov         eax,ebx
 004265BB    mov         edx,426600;#8+#3+#0+#0+#0
 004265C0    call        @LStrCat
>004265C5    jmp         004265D3
 004265C7    mov         eax,ebx
 004265C9    mov         edx,426610;#4+#3+#0+#0+#0
 004265CE    call        @LStrCat
 004265D3    mov         eax,dword ptr [ebx]
 004265D5    mov         esi,eax
 004265D7    mov         eax,dword ptr [ebp+8]
 004265DA    mov         eax,dword ptr [eax-8]
 004265DD    call        0042656C
 004265E2    mov         dword ptr [esi],eax
 004265E4    add         esi,4
 004265E7    mov         eax,dword ptr [ebp+8]
 004265EA    mov         eax,dword ptr [eax-0C]
 004265ED    call        0042656C
 004265F2    mov         dword ptr [esi],eax
 004265F4    pop         esi
 004265F5    pop         ebx
 004265F6    pop         ebp
 004265F7    ret
end;*}

//00426618
{*procedure sub_00426618(?:?; ?:Longint);
begin
 00426618    push        ebx
 00426619    push        esi
 0042661A    push        edi
 0042661B    mov         edi,edx
 0042661D    mov         ebx,eax
 0042661F    mov         ecx,1
 00426624    xor         esi,esi
 00426626    test        edi,edi
>00426628    jle         0042666D
 0042662A    cmp         edi,0F0E
>00426630    jge         00426636
 00426632    mov         eax,edi
>00426634    jmp         0042663B
 00426636    mov         eax,0F0E
 0042663B    sub         edi,eax
 0042663D    test        eax,eax
>0042663F    jle         0042664F
 00426641    xor         edx,edx
 00426643    mov         dl,byte ptr [ebx]
 00426645    add         ecx,edx
 00426647    add         esi,ecx
 00426649    inc         ebx
 0042664A    dec         eax
 0042664B    test        eax,eax
>0042664D    jg          00426641
 0042664F    mov         eax,ecx
 00426651    mov         ecx,0FFF1
 00426656    xor         edx,edx
 00426658    div         eax,ecx
 0042665A    mov         ecx,edx
 0042665C    mov         eax,esi
 0042665E    mov         esi,0FFF1
 00426663    xor         edx,edx
 00426665    div         eax,esi
 00426667    mov         esi,edx
 00426669    test        edi,edi
>0042666B    jg          0042662A
 0042666D    mov         eax,esi
 0042666F    shl         eax,10
 00426672    or          eax,ecx
 00426674    pop         edi
 00426675    pop         esi
 00426676    pop         ebx
 00426677    ret
end;*}

//00426678
{*procedure sub_00426678(?:?; ?:?);
begin
 00426678    push        ebp
 00426679    mov         ebp,esp
 0042667B    push        ebx
 0042667C    push        esi
 0042667D    push        edi
 0042667E    mov         ebx,eax
 00426680    mov         eax,dword ptr [ebp+8]
 00426683    mov         eax,dword ptr [eax+0C]
 00426686    call        @DynArrayLength
 0042668B    imul        eax,eax,0B
 0042668E    mov         ecx,0A
 00426693    cdq
 00426694    idiv        eax,ecx
 00426696    mov         edx,eax
 00426698    add         edx,0C
 0042669B    mov         eax,ebx
 0042669D    call        @LStrSetLength
 004266A2    mov         eax,dword ptr [ebx]
 004266A4    call        @DynArrayLength
 004266A9    push        eax
 004266AA    mov         eax,dword ptr [ebp+8]
 004266AD    mov         eax,dword ptr [eax+0C]
 004266B0    call        @DynArrayLength
 004266B5    mov         ecx,eax
 004266B7    mov         edx,dword ptr [ebx]
 004266B9    mov         eax,dword ptr [ebp+8]
 004266BC    mov         eax,dword ptr [eax+0C]
 004266BF    call        0041B3F8
 004266C4    test        eax,eax
>004266C6    jle         0042671E
 004266C8    mov         edx,ebx
 004266CA    xchg        eax,edx
 004266CB    call        @LStrSetLength
 004266D0    push        42672C;'x'+#1
 004266D5    push        dword ptr [ebx]
 004266D7    push        426738;'adlr'
 004266DC    mov         eax,ebx
 004266DE    mov         edx,3
 004266E3    call        @LStrCatN
 004266E8    mov         eax,dword ptr [ebx]
 004266EA    call        @DynArrayLength
 004266EF    mov         edi,eax
 004266F1    mov         eax,dword ptr [ebx]
 004266F3    call        @LStrToPChar
 004266F8    add         edi,eax
 004266FA    sub         edi,4
 004266FD    mov         esi,edi
 004266FF    mov         eax,dword ptr [ebp+8]
 00426702    mov         eax,dword ptr [eax+0C]
 00426705    call        @DynArrayLength
 0042670A    mov         edx,eax
 0042670C    mov         eax,dword ptr [ebp+8]
 0042670F    mov         eax,dword ptr [eax+0C]
 00426712    call        00426618
 00426717    call        0042656C
 0042671C    mov         dword ptr [esi],eax
 0042671E    pop         edi
 0042671F    pop         esi
 00426720    pop         ebx
 00426721    pop         ebp
 00426722    ret
end;*}

//00426740
{*procedure sub_00426740(?:?; ?:AnsiString; ?:?);
begin
 00426740    push        ebp
 00426741    mov         ebp,esp
 00426743    push        ecx
 00426744    push        ebx
 00426745    push        esi
 00426746    push        edi
 00426747    mov         edi,ecx
 00426749    mov         esi,edx
 0042674B    mov         ebx,eax
 0042674D    push        dword ptr [ebx]
 0042674F    push        4267E8;'len '
 00426754    push        esi
 00426755    push        edi
 00426756    push        4267F8;'crc '
 0042675B    mov         eax,ebx
 0042675D    mov         edx,5
 00426762    call        @LStrCatN
 00426767    mov         eax,dword ptr [ebx]
 00426769    call        @DynArrayLength
 0042676E    push        eax
 0042676F    mov         eax,dword ptr [ebx]
 00426771    call        @LStrToPChar
 00426776    pop         edx
 00426777    add         edx,eax
 00426779    sub         edx,4
 0042677C    push        edx
 0042677D    mov         eax,edi
 0042677F    call        @DynArrayLength
 00426784    pop         edx
 00426785    sub         edx,eax
 00426787    sub         edx,8
 0042678A    mov         esi,edx
 0042678C    mov         eax,edi
 0042678E    call        @DynArrayLength
 00426793    mov         ecx,eax
 00426795    add         ecx,4
 00426798    mov         edx,esi
 0042679A    add         edx,4
 0042679D    or          eax,0FFFFFFFF
 004267A0    call        0041B4EC
 004267A5    not         eax
 004267A7    mov         dword ptr [ebp-4],eax
 004267AA    mov         eax,edi
 004267AC    call        @DynArrayLength
 004267B1    call        0042656C
 004267B6    mov         dword ptr [esi],eax
 004267B8    mov         eax,dword ptr [ebx]
 004267BA    call        @DynArrayLength
 004267BF    mov         edi,eax
 004267C1    mov         eax,dword ptr [ebx]
 004267C3    call        @LStrToPChar
 004267C8    add         edi,eax
 004267CA    sub         edi,4
 004267CD    mov         esi,edi
 004267CF    mov         eax,dword ptr [ebp-4]
 004267D2    call        0042656C
 004267D7    mov         dword ptr [esi],eax
 004267D9    pop         edi
 004267DA    pop         esi
 004267DB    pop         ebx
 004267DC    pop         ecx
 004267DD    pop         ebp
 004267DE    ret
end;*}

//00426800
{*procedure sub_00426800(?:?; ?:?; ?:AnsiString; ?:?);
begin
 00426800    push        ebp
 00426801    mov         ebp,esp
 00426803    add         esp,0FFFFFFEC
 00426806    push        ebx
 00426807    xor         ebx,ebx
 00426809    mov         dword ptr [ebp-14],ebx
 0042680C    mov         dword ptr [ebp-10],ebx
 0042680F    mov         dword ptr [ebp-4],ecx
 00426812    mov         dword ptr [ebp-0C],edx
 00426815    mov         dword ptr [ebp-8],eax
 00426818    mov         ebx,dword ptr [ebp+8]
 0042681B    xor         eax,eax
 0042681D    push        ebp
 0042681E    push        4268A5
 00426823    push        dword ptr fs:[eax]
 00426826    mov         dword ptr fs:[eax],esp
 00426829    mov         eax,ebx
 0042682B    mov         edx,4268BC;'‰PNG'+#13+#10+'+#10
 00426830    call        @LStrAsg
 00426835    push        ebp
 00426836    lea         eax,[ebp-10]
 00426839    call        00426594
 0042683E    pop         ecx
 0042683F    mov         ecx,dword ptr [ebp-10]
 00426842    mov         eax,ebx
 00426844    mov         edx,4268D0;'IHDR'
 00426849    call        00426740
 0042684E    cmp         dword ptr [ebp-4],0
>00426852    je          00426863
 00426854    mov         eax,ebx
 00426856    mov         ecx,dword ptr [ebp-4]
 00426859    mov         edx,4268E0;'PLTE'
 0042685E    call        00426740
 00426863    push        ebp
 00426864    lea         eax,[ebp-14]
 00426867    call        00426678
 0042686C    pop         ecx
 0042686D    mov         ecx,dword ptr [ebp-14]
 00426870    mov         eax,ebx
 00426872    mov         edx,4268F0;'IDAT'
 00426877    call        00426740
 0042687C    mov         eax,ebx
 0042687E    xor         ecx,ecx
 00426880    mov         edx,426900;'IEND'
 00426885    call        00426740
 0042688A    xor         eax,eax
 0042688C    pop         edx
 0042688D    pop         ecx
 0042688E    pop         ecx
 0042688F    mov         dword ptr fs:[eax],edx
 00426892    push        4268AC
 00426897    lea         eax,[ebp-14]
 0042689A    mov         edx,2
 0042689F    call        @LStrArrayClr
 004268A4    ret
>004268A5    jmp         @HandleFinally
>004268AA    jmp         00426897
 004268AC    pop         ebx
 004268AD    mov         esp,ebp
 004268AF    pop         ebp
 004268B0    ret         8
end;*}

//00426908
{*procedure sub_00426908(?:Pointer; ?:Pointer; ?:Pointer; ?:?; ?:?; ?:?);
begin
 00426908    push        ebp
 00426909    mov         ebp,esp
 0042690B    add         esp,0FFFFFBE4
 00426911    push        ebx
 00426912    push        esi
 00426913    push        edi
 00426914    mov         dword ptr [ebp-0C],ecx
 00426917    mov         dword ptr [ebp-8],edx
 0042691A    mov         dword ptr [ebp-4],eax
 0042691D    xor         ebx,ebx
 0042691F    lea         ecx,[ebp-418]
 00426925    mov         eax,ebx
 00426927    imul        ebx
 00426929    mov         dword ptr [ecx],eax
 0042692B    inc         ebx
 0042692C    add         ecx,4
 0042692F    cmp         ebx,100
>00426935    jne         00426925
 00426937    mov         eax,dword ptr [ebp+10]
 0042693A    mov         eax,dword ptr [eax-4]
 0042693D    dec         eax
 0042693E    test        eax,eax
>00426940    jl          004269F3
 00426946    inc         eax
 00426947    mov         dword ptr [ebp-18],eax
 0042694A    mov         eax,dword ptr [ebp+10]
 0042694D    mov         eax,dword ptr [eax-8]
 00426950    xor         ecx,ecx
 00426952    mov         cl,byte ptr [eax+2]
 00426955    mov         eax,dword ptr [ebp+10]
 00426958    mov         eax,dword ptr [eax-8]
 0042695B    xor         edx,edx
 0042695D    mov         dl,byte ptr [eax+1]
 00426960    mov         eax,dword ptr [ebp+10]
 00426963    mov         eax,dword ptr [eax-8]
 00426966    movzx       eax,byte ptr [eax]
 00426969    mov         ebx,dword ptr [ebp+10]
 0042696C    add         dword ptr [ebx-8],4
 00426970    mov         ebx,ecx
 00426972    shr         ebx,3
 00426975    inc         ebx
 00426976    mov         esi,edx
 00426978    shr         esi,3
 0042697B    inc         esi
 0042697C    mov         dword ptr [ebp-10],esi
 0042697F    mov         esi,eax
 00426981    shr         esi,3
 00426984    inc         esi
 00426985    mov         dword ptr [ebp-14],esi
 00426988    mov         esi,ebx
 0042698A    shl         esi,0A
 0042698D    mov         edi,ebx
 0042698F    shl         edi,6
 00426992    add         esi,edi
 00426994    add         ebx,esi
 00426996    mov         esi,dword ptr [ebp-10]
 00426999    shl         esi,5
 0042699C    add         ebx,esi
 0042699E    add         ebx,dword ptr [ebp-10]
 004269A1    add         ebx,dword ptr [ebp-14]
 004269A4    mov         esi,dword ptr [ebp-4]
 004269A7    inc         dword ptr [esi+ebx*4]
 004269AA    mov         esi,dword ptr [ebp-8]
 004269AD    add         dword ptr [esi+ebx*4],ecx
 004269B0    mov         esi,dword ptr [ebp-0C]
 004269B3    add         dword ptr [esi+ebx*4],edx
 004269B6    mov         esi,dword ptr [ebp+0C]
 004269B9    add         dword ptr [esi+ebx*4],eax
 004269BC    mov         ecx,dword ptr [ebp+ecx*4-418]
 004269C3    add         ecx,dword ptr [ebp+edx*4-418]
 004269CA    add         ecx,dword ptr [ebp+eax*4-418]
 004269D1    mov         dword ptr [ebp-41C],ecx
 004269D7    fild        dword ptr [ebp-41C]
 004269DD    mov         eax,dword ptr [ebp+8]
 004269E0    fadd        qword ptr [eax+ebx*8]
 004269E3    mov         eax,dword ptr [ebp+8]
 004269E6    fstp        qword ptr [eax+ebx*8]
 004269E9    wait
 004269EA    dec         dword ptr [ebp-18]
>004269ED    jne         0042694A
 004269F3    pop         edi
 004269F4    pop         esi
 004269F5    pop         ebx
 004269F6    mov         esp,ebp
 004269F8    pop         ebp
 004269F9    ret         8
end;*}

//004269FC
{*procedure sub_004269FC(?:Pointer; ?:Pointer; ?:Pointer; ?:?; ?:?);
begin
 004269FC    push        ebp
 004269FD    mov         ebp,esp
 004269FF    add         esp,0FFFFFCA8
 00426A05    push        ebx
 00426A06    push        esi
 00426A07    push        edi
 00426A08    mov         dword ptr [ebp-0C],ecx
 00426A0B    mov         dword ptr [ebp-8],edx
 00426A0E    mov         dword ptr [ebp-4],eax
 00426A11    mov         byte ptr [ebp-10],1
 00426A15    mov         byte ptr [ebp-0F],21
 00426A19    lea         eax,[ebp-0C4]
 00426A1F    lea         edx,[ebp-148]
 00426A25    lea         ecx,[ebp-1CC]
 00426A2B    lea         ebx,[ebp-250]
 00426A31    lea         esi,[ebp-358]
 00426A37    mov         dword ptr [ebp-34],esi
 00426A3A    xor         esi,esi
 00426A3C    mov         dword ptr [eax],esi
 00426A3E    xor         esi,esi
 00426A40    mov         dword ptr [edx],esi
 00426A42    xor         esi,esi
 00426A44    mov         dword ptr [ecx],esi
 00426A46    xor         esi,esi
 00426A48    mov         dword ptr [ebx],esi
 00426A4A    mov         esi,dword ptr [ebp-34]
 00426A4D    xor         edi,edi
 00426A4F    mov         dword ptr [esi],edi
 00426A51    mov         dword ptr [esi+4],edi
 00426A54    add         dword ptr [ebp-34],8
 00426A58    add         ebx,4
 00426A5B    add         ecx,4
 00426A5E    add         edx,4
 00426A61    add         eax,4
 00426A64    dec         byte ptr [ebp-0F]
>00426A67    jne         00426A3A
 00426A69    mov         byte ptr [ebp-11],1
 00426A6D    xor         eax,eax
 00426A6F    mov         dword ptr [ebp-18],eax
 00426A72    xor         eax,eax
 00426A74    mov         dword ptr [ebp-1C],eax
 00426A77    xor         eax,eax
 00426A79    mov         dword ptr [ebp-20],eax
 00426A7C    xor         eax,eax
 00426A7E    mov         dword ptr [ebp-24],eax
 00426A81    xor         eax,eax
 00426A83    mov         dword ptr [ebp-30],eax
 00426A86    mov         dword ptr [ebp-2C],eax
 00426A89    mov         byte ptr [ebp-12],1
 00426A8D    lea         edx,[ebp-0C0]
 00426A93    lea         eax,[ebp-144]
 00426A99    mov         dword ptr [ebp-38],eax
 00426A9C    lea         eax,[ebp-1C8]
 00426AA2    mov         dword ptr [ebp-3C],eax
 00426AA5    lea         eax,[ebp-24C]
 00426AAB    mov         dword ptr [ebp-40],eax
 00426AAE    lea         eax,[ebp-350]
 00426AB4    xor         ecx,ecx
 00426AB6    mov         cl,byte ptr [ebp-10]
 00426AB9    mov         esi,ecx
 00426ABB    shl         esi,0A
 00426ABE    mov         edi,ecx
 00426AC0    shl         edi,6
 00426AC3    add         si,di
 00426AC6    add         si,cx
 00426AC9    xor         ebx,ebx
 00426ACB    mov         bl,byte ptr [ebp-11]
 00426ACE    mov         ecx,ebx
 00426AD0    shl         ecx,5
 00426AD3    add         si,cx
 00426AD6    add         si,bx
 00426AD9    xor         ecx,ecx
 00426ADB    mov         cl,byte ptr [ebp-12]
 00426ADE    add         si,cx
 00426AE1    mov         ebx,esi
 00426AE3    movzx       ecx,bx
 00426AE6    mov         esi,dword ptr [ebp-4]
 00426AE9    mov         esi,dword ptr [esi+ecx*4]
 00426AEC    add         dword ptr [ebp-18],esi
 00426AEF    mov         esi,dword ptr [ebp-8]
 00426AF2    mov         esi,dword ptr [esi+ecx*4]
 00426AF5    add         dword ptr [ebp-1C],esi
 00426AF8    mov         esi,dword ptr [ebp-0C]
 00426AFB    mov         esi,dword ptr [esi+ecx*4]
 00426AFE    add         dword ptr [ebp-20],esi
 00426B01    mov         esi,dword ptr [ebp+0C]
 00426B04    mov         esi,dword ptr [esi+ecx*4]
 00426B07    add         dword ptr [ebp-24],esi
 00426B0A    fld         qword ptr [ebp-30]
 00426B0D    movzx       esi,bx
 00426B10    mov         edi,dword ptr [ebp+8]
 00426B13    fadd        qword ptr [edi+esi*8]
 00426B16    fstp        qword ptr [ebp-30]
 00426B19    wait
 00426B1A    mov         esi,dword ptr [ebp-18]
 00426B1D    add         dword ptr [edx],esi
 00426B1F    mov         esi,dword ptr [ebp-38]
 00426B22    mov         edi,dword ptr [ebp-1C]
 00426B25    add         dword ptr [esi],edi
 00426B27    mov         esi,dword ptr [ebp-3C]
 00426B2A    mov         edi,dword ptr [ebp-20]
 00426B2D    add         dword ptr [esi],edi
 00426B2F    mov         esi,dword ptr [ebp-40]
 00426B32    mov         edi,dword ptr [ebp-24]
 00426B35    add         dword ptr [esi],edi
 00426B37    fld         qword ptr [eax]
 00426B39    fadd        qword ptr [ebp-30]
 00426B3C    fstp        qword ptr [eax]
 00426B3E    wait
 00426B3F    mov         esi,ebx
 00426B41    sub         si,441
 00426B46    mov         word ptr [ebp-0E],si
 00426B4A    movzx       esi,word ptr [ebp-0E]
 00426B4E    mov         edi,dword ptr [ebp-4]
 00426B51    mov         esi,dword ptr [edi+esi*4]
 00426B54    add         esi,dword ptr [edx]
 00426B56    push        esi
 00426B57    mov         esi,dword ptr [ebp-4]
 00426B5A    pop         edi
 00426B5B    mov         dword ptr [esi+ecx*4],edi
 00426B5E    movzx       esi,word ptr [ebp-0E]
 00426B62    mov         edi,dword ptr [ebp-8]
 00426B65    mov         esi,dword ptr [edi+esi*4]
 00426B68    mov         edi,dword ptr [ebp-38]
 00426B6B    add         esi,dword ptr [edi]
 00426B6D    push        esi
 00426B6E    mov         esi,dword ptr [ebp-8]
 00426B71    pop         edi
 00426B72    mov         dword ptr [esi+ecx*4],edi
 00426B75    movzx       esi,word ptr [ebp-0E]
 00426B79    mov         edi,dword ptr [ebp-0C]
 00426B7C    mov         esi,dword ptr [edi+esi*4]
 00426B7F    mov         edi,dword ptr [ebp-3C]
 00426B82    add         esi,dword ptr [edi]
 00426B84    push        esi
 00426B85    mov         esi,dword ptr [ebp-0C]
 00426B88    pop         edi
 00426B89    mov         dword ptr [esi+ecx*4],edi
 00426B8C    movzx       esi,word ptr [ebp-0E]
 00426B90    mov         edi,dword ptr [ebp+0C]
 00426B93    mov         esi,dword ptr [edi+esi*4]
 00426B96    mov         edi,dword ptr [ebp-40]
 00426B99    add         esi,dword ptr [edi]
 00426B9B    push        esi
 00426B9C    mov         esi,dword ptr [ebp+0C]
 00426B9F    pop         edi
 00426BA0    mov         dword ptr [esi+ecx*4],edi
 00426BA3    movzx       esi,word ptr [ebp-0E]
 00426BA7    mov         edi,dword ptr [ebp+8]
 00426BAA    fld         qword ptr [edi+esi*8]
 00426BAD    fadd        qword ptr [eax]
 00426BAF    mov         ebx,dword ptr [ebp+8]
 00426BB2    fstp        qword ptr [ebx+ecx*8]
 00426BB5    wait
 00426BB6    inc         byte ptr [ebp-12]
 00426BB9    add         eax,8
 00426BBC    add         dword ptr [ebp-40],4
 00426BC0    add         dword ptr [ebp-3C],4
 00426BC4    add         dword ptr [ebp-38],4
 00426BC8    add         edx,4
 00426BCB    cmp         byte ptr [ebp-12],21
>00426BCF    jne         00426AB4
 00426BD5    inc         byte ptr [ebp-11]
 00426BD8    cmp         byte ptr [ebp-11],21
>00426BDC    jne         00426A6D
 00426BE2    inc         byte ptr [ebp-10]
 00426BE5    cmp         byte ptr [ebp-10],21
>00426BE9    jne         00426A15
 00426BEF    pop         edi
 00426BF0    pop         esi
 00426BF1    pop         ebx
 00426BF2    mov         esp,ebp
 00426BF4    pop         ebp
 00426BF5    ret         8
end;*}

//00426BF8
{*function sub_00426BF8(?:?; ?:Pointer):?;
begin
 00426BF8    push        ebx
 00426BF9    push        esi
 00426BFA    push        edi
 00426BFB    imul        ebx,dword ptr [eax+4],441
 00426C02    lea         ebx,[edx+ebx*4]
 00426C05    mov         esi,dword ptr [eax+0C]
 00426C08    mov         edi,esi
 00426C0A    shl         esi,5
 00426C0D    add         esi,edi
 00426C0F    lea         ebx,[ebx+esi*4]
 00426C12    mov         ecx,dword ptr [eax+14]
 00426C15    mov         ebx,dword ptr [ebx+ecx*4]
 00426C18    imul        esi,dword ptr [eax+4],441
 00426C1F    lea         esi,[edx+esi*4]
 00426C22    imul        edi,dword ptr [eax+0C],21
 00426C26    lea         esi,[esi+edi*4]
 00426C29    push        esi
 00426C2A    mov         esi,dword ptr [eax+10]
 00426C2D    pop         edi
 00426C2E    sub         ebx,dword ptr [edi+esi*4]
 00426C31    imul        esi,dword ptr [eax+4],441
 00426C38    lea         esi,[edx+esi*4]
 00426C3B    imul        edi,dword ptr [eax+8],21
 00426C3F    lea         esi,[esi+edi*4]
 00426C42    push        esi
 00426C43    pop         esi
 00426C44    sub         ebx,dword ptr [esi+ecx*4]
 00426C47    imul        esi,dword ptr [eax+4],441
 00426C4E    lea         esi,[edx+esi*4]
 00426C51    imul        edi,dword ptr [eax+8],21
 00426C55    lea         esi,[esi+edi*4]
 00426C58    push        esi
 00426C59    mov         esi,dword ptr [eax+10]
 00426C5C    pop         edi
 00426C5D    add         ebx,dword ptr [edi+esi*4]
 00426C60    imul        esi,dword ptr [eax],441
 00426C66    lea         esi,[edx+esi*4]
 00426C69    imul        edi,dword ptr [eax+0C],21
 00426C6D    lea         esi,[esi+edi*4]
 00426C70    push        esi
 00426C71    pop         esi
 00426C72    sub         ebx,dword ptr [esi+ecx*4]
 00426C75    imul        esi,dword ptr [eax],441
 00426C7B    lea         esi,[edx+esi*4]
 00426C7E    imul        edi,dword ptr [eax+0C],21
 00426C82    lea         esi,[esi+edi*4]
 00426C85    push        esi
 00426C86    mov         esi,dword ptr [eax+10]
 00426C89    pop         edi
 00426C8A    add         ebx,dword ptr [edi+esi*4]
 00426C8D    imul        esi,dword ptr [eax],441
 00426C93    lea         esi,[edx+esi*4]
 00426C96    imul        edi,dword ptr [eax+8],21
 00426C9A    lea         esi,[esi+edi*4]
 00426C9D    push        esi
 00426C9E    pop         esi
 00426C9F    add         ebx,dword ptr [esi+ecx*4]
 00426CA2    imul        ecx,dword ptr [eax],441
 00426CA8    lea         edx,[edx+ecx*4]
 00426CAB    mov         ecx,dword ptr [eax+8]
 00426CAE    mov         esi,ecx
 00426CB0    shl         ecx,5
 00426CB3    add         ecx,esi
 00426CB5    lea         edx,[edx+ecx*4]
 00426CB8    mov         eax,dword ptr [eax+10]
 00426CBB    sub         ebx,dword ptr [edx+eax*4]
 00426CBE    mov         eax,ebx
 00426CC0    pop         edi
 00426CC1    pop         esi
 00426CC2    pop         ebx
 00426CC3    ret
end;*}

//00426CC4
{*function sub_00426CC4(?:?; ?:?; ?:?):?;
begin
 00426CC4    push        ebx
 00426CC5    push        esi
 00426CC6    push        edi
 00426CC7    sub         dl,1
>00426CCA    jb          00426CD3
>00426CCC    je          00426D41
>00426CCE    jmp         00426DAB
 00426CD3    imul        ebx,dword ptr [eax],441
 00426CD9    lea         ebx,[ecx+ebx*4]
 00426CDC    mov         esi,dword ptr [eax+0C]
 00426CDF    mov         edi,esi
 00426CE1    shl         esi,5
 00426CE4    add         esi,edi
 00426CE6    lea         ebx,[ebx+esi*4]
 00426CE9    mov         edx,dword ptr [eax+14]
 00426CEC    mov         ebx,dword ptr [ebx+edx*4]
 00426CEF    neg         ebx
 00426CF1    imul        esi,dword ptr [eax],441
 00426CF7    lea         esi,[ecx+esi*4]
 00426CFA    imul        edi,dword ptr [eax+0C],21
 00426CFE    lea         esi,[esi+edi*4]
 00426D01    push        esi
 00426D02    mov         esi,dword ptr [eax+10]
 00426D05    pop         edi
 00426D06    add         ebx,dword ptr [edi+esi*4]
 00426D09    imul        esi,dword ptr [eax],441
 00426D0F    lea         esi,[ecx+esi*4]
 00426D12    imul        edi,dword ptr [eax+8],21
 00426D16    lea         esi,[esi+edi*4]
 00426D19    push        esi
 00426D1A    pop         esi
 00426D1B    add         ebx,dword ptr [esi+edx*4]
 00426D1E    imul        edx,dword ptr [eax],441
 00426D24    lea         edx,[ecx+edx*4]
 00426D27    mov         ecx,dword ptr [eax+8]
 00426D2A    mov         esi,ecx
 00426D2C    shl         ecx,5
 00426D2F    add         ecx,esi
 00426D31    lea         edx,[edx+ecx*4]
 00426D34    mov         eax,dword ptr [eax+10]
 00426D37    sub         ebx,dword ptr [edx+eax*4]
 00426D3A    mov         eax,ebx
>00426D3C    jmp         00426E10
 00426D41    imul        ebx,dword ptr [eax+4],441
 00426D48    lea         ebx,[ecx+ebx*4]
 00426D4B    mov         edx,dword ptr [eax+8]
 00426D4E    mov         esi,edx
 00426D50    shl         edx,5
 00426D53    add         edx,esi
 00426D55    lea         ebx,[ebx+edx*4]
 00426D58    mov         esi,dword ptr [eax+14]
 00426D5B    mov         ebx,dword ptr [ebx+esi*4]
 00426D5E    neg         ebx
 00426D60    imul        esi,dword ptr [eax+4],441
 00426D67    lea         esi,[ecx+esi*4]
 00426D6A    imul        edi,dword ptr [eax+8],21
 00426D6E    lea         esi,[esi+edi*4]
 00426D71    push        esi
 00426D72    mov         esi,dword ptr [eax+10]
 00426D75    pop         edi
 00426D76    add         ebx,dword ptr [edi+esi*4]
 00426D79    imul        esi,dword ptr [eax],441
 00426D7F    lea         esi,[ecx+esi*4]
 00426D82    lea         edx,[esi+edx*4]
 00426D85    mov         esi,dword ptr [eax+14]
 00426D88    add         ebx,dword ptr [edx+esi*4]
 00426D8B    imul        edx,dword ptr [eax],441
 00426D91    lea         edx,[ecx+edx*4]
 00426D94    mov         ecx,dword ptr [eax+8]
 00426D97    mov         esi,ecx
 00426D99    shl         ecx,5
 00426D9C    add         ecx,esi
 00426D9E    lea         edx,[edx+ecx*4]
 00426DA1    mov         eax,dword ptr [eax+10]
 00426DA4    sub         ebx,dword ptr [edx+eax*4]
 00426DA7    mov         eax,ebx
>00426DA9    jmp         00426E10
 00426DAB    imul        ebx,dword ptr [eax+4],441
 00426DB2    lea         ebx,[ecx+ebx*4]
 00426DB5    mov         esi,dword ptr [eax+0C]
 00426DB8    mov         edi,esi
 00426DBA    shl         esi,5
 00426DBD    add         esi,edi
 00426DBF    lea         ebx,[ebx+esi*4]
 00426DC2    mov         edx,dword ptr [eax+10]
 00426DC5    mov         ebx,dword ptr [ebx+edx*4]
 00426DC8    neg         ebx
 00426DCA    imul        esi,dword ptr [eax+4],441
 00426DD1    lea         esi,[ecx+esi*4]
 00426DD4    imul        edi,dword ptr [eax+8],21
 00426DD8    lea         esi,[esi+edi*4]
 00426DDB    push        esi
 00426DDC    pop         esi
 00426DDD    add         ebx,dword ptr [esi+edx*4]
 00426DE0    imul        esi,dword ptr [eax],441
 00426DE6    lea         esi,[ecx+esi*4]
 00426DE9    imul        edi,dword ptr [eax+0C],21
 00426DED    lea         esi,[esi+edi*4]
 00426DF0    push        esi
 00426DF1    pop         esi
 00426DF2    add         ebx,dword ptr [esi+edx*4]
 00426DF5    imul        esi,dword ptr [eax],441
 00426DFB    lea         ecx,[ecx+esi*4]
 00426DFE    mov         esi,dword ptr [eax+8]
 00426E01    mov         edi,esi
 00426E03    shl         esi,5
 00426E06    add         esi,edi
 00426E08    lea         ecx,[ecx+esi*4]
 00426E0B    sub         ebx,dword ptr [ecx+edx*4]
 00426E0E    mov         eax,ebx
 00426E10    pop         edi
 00426E11    pop         esi
 00426E12    pop         ebx
 00426E13    ret
end;*}

//00426E14
{*function sub_00426E14(?:?; ?:?; ?:?; ?:?):?;
begin
 00426E14    push        ebp
 00426E15    mov         ebp,esp
 00426E17    push        ecx
 00426E18    push        ebx
 00426E19    push        esi
 00426E1A    push        edi
 00426E1B    mov         byte ptr [ebp-1],dl
 00426E1E    mov         edx,dword ptr [ebp+8]
 00426E21    mov         bl,byte ptr [ebp-1]
 00426E24    sub         bl,1
>00426E27    jb          00426E30
>00426E29    je          00426E9F
>00426E2B    jmp         00426F0D
 00426E30    imul        ebx,ecx,441
 00426E36    lea         ebx,[edx+ebx*4]
 00426E39    mov         esi,dword ptr [eax+0C]
 00426E3C    mov         edi,esi
 00426E3E    shl         esi,5
 00426E41    add         esi,edi
 00426E43    lea         ebx,[ebx+esi*4]
 00426E46    mov         esi,dword ptr [eax+14]
 00426E49    mov         ebx,dword ptr [ebx+esi*4]
 00426E4C    imul        esi,ecx,441
 00426E52    lea         esi,[edx+esi*4]
 00426E55    imul        edi,dword ptr [eax+0C],21
 00426E59    lea         esi,[esi+edi*4]
 00426E5C    push        esi
 00426E5D    mov         esi,dword ptr [eax+10]
 00426E60    pop         edi
 00426E61    sub         ebx,dword ptr [edi+esi*4]
 00426E64    imul        esi,ecx,441
 00426E6A    lea         esi,[edx+esi*4]
 00426E6D    imul        edi,dword ptr [eax+8],21
 00426E71    lea         esi,[esi+edi*4]
 00426E74    push        esi
 00426E75    mov         esi,dword ptr [eax+14]
 00426E78    pop         edi
 00426E79    sub         ebx,dword ptr [edi+esi*4]
 00426E7C    imul        ecx,ecx,441
 00426E82    lea         edx,[edx+ecx*4]
 00426E85    mov         ecx,dword ptr [eax+8]
 00426E88    mov         esi,ecx
 00426E8A    shl         ecx,5
 00426E8D    add         ecx,esi
 00426E8F    lea         edx,[edx+ecx*4]
 00426E92    mov         eax,dword ptr [eax+10]
 00426E95    add         ebx,dword ptr [edx+eax*4]
 00426E98    mov         eax,ebx
>00426E9A    jmp         00426F69
 00426E9F    imul        ebx,dword ptr [eax+4],441
 00426EA6    lea         ebx,[edx+ebx*4]
 00426EA9    mov         esi,ecx
 00426EAB    shl         esi,5
 00426EAE    add         esi,ecx
 00426EB0    lea         ebx,[ebx+esi*4]
 00426EB3    mov         esi,dword ptr [eax+14]
 00426EB6    mov         ebx,dword ptr [ebx+esi*4]
 00426EB9    imul        esi,dword ptr [eax+4],441
 00426EC0    lea         esi,[edx+esi*4]
 00426EC3    mov         edi,ecx
 00426EC5    shl         edi,5
 00426EC8    add         edi,ecx
 00426ECA    lea         esi,[esi+edi*4]
 00426ECD    push        esi
 00426ECE    mov         esi,dword ptr [eax+10]
 00426ED1    pop         edi
 00426ED2    sub         ebx,dword ptr [edi+esi*4]
 00426ED5    imul        esi,dword ptr [eax],441
 00426EDB    lea         esi,[edx+esi*4]
 00426EDE    mov         edi,ecx
 00426EE0    shl         edi,5
 00426EE3    add         edi,ecx
 00426EE5    lea         esi,[esi+edi*4]
 00426EE8    push        esi
 00426EE9    mov         esi,dword ptr [eax+14]
 00426EEC    pop         edi
 00426EED    sub         ebx,dword ptr [edi+esi*4]
 00426EF0    imul        esi,dword ptr [eax],441
 00426EF6    lea         edx,[edx+esi*4]
 00426EF9    mov         esi,ecx
 00426EFB    shl         ecx,5
 00426EFE    add         ecx,esi
 00426F00    lea         edx,[edx+ecx*4]
 00426F03    mov         eax,dword ptr [eax+10]
 00426F06    add         ebx,dword ptr [edx+eax*4]
 00426F09    mov         eax,ebx
>00426F0B    jmp         00426F69
 00426F0D    imul        ebx,dword ptr [eax+4],441
 00426F14    lea         ebx,[edx+ebx*4]
 00426F17    mov         esi,dword ptr [eax+0C]
 00426F1A    mov         edi,esi
 00426F1C    shl         esi,5
 00426F1F    add         esi,edi
 00426F21    lea         ebx,[ebx+esi*4]
 00426F24    mov         ebx,dword ptr [ebx+ecx*4]
 00426F27    imul        esi,dword ptr [eax+4],441
 00426F2E    lea         esi,[edx+esi*4]
 00426F31    imul        edi,dword ptr [eax+8],21
 00426F35    lea         esi,[esi+edi*4]
 00426F38    sub         ebx,dword ptr [esi+ecx*4]
 00426F3B    imul        esi,dword ptr [eax],441
 00426F41    lea         esi,[edx+esi*4]
 00426F44    imul        edi,dword ptr [eax+0C],21
 00426F48    lea         esi,[esi+edi*4]
 00426F4B    sub         ebx,dword ptr [esi+ecx*4]
 00426F4E    imul        esi,dword ptr [eax],441
 00426F54    lea         edx,[edx+esi*4]
 00426F57    mov         eax,dword ptr [eax+8]
 00426F5A    mov         esi,eax
 00426F5C    shl         eax,5
 00426F5F    add         eax,esi
 00426F61    lea         eax,[edx+eax*4]
 00426F64    add         ebx,dword ptr [eax+ecx*4]
 00426F67    mov         eax,ebx
 00426F69    pop         edi
 00426F6A    pop         esi
 00426F6B    pop         ebx
 00426F6C    pop         ecx
 00426F6D    pop         ebp
 00426F6E    ret         4
end;*}

//00426F74
{*procedure sub_00426F74(?:?; ?:?);
begin
 00426F74    push        ebp
 00426F75    mov         ebp,esp
 00426F77    add         esp,0FFFFFFD4
 00426F7A    push        ebx
 00426F7B    push        esi
 00426F7C    push        edi
 00426F7D    mov         ebx,eax
 00426F7F    mov         eax,dword ptr [ebp+8]
 00426F82    mov         edx,dword ptr [eax-0C]
 00426F85    mov         eax,ebx
 00426F87    call        00426BF8
 00426F8C    mov         dword ptr [ebp-2C],eax
 00426F8F    fild        dword ptr [ebp-2C]
 00426F92    fstp        qword ptr [ebp-10]
 00426F95    wait
 00426F96    mov         eax,dword ptr [ebp+8]
 00426F99    mov         edx,dword ptr [eax-10]
 00426F9C    mov         eax,ebx
 00426F9E    call        00426BF8
 00426FA3    mov         dword ptr [ebp-2C],eax
 00426FA6    fild        dword ptr [ebp-2C]
 00426FA9    fstp        qword ptr [ebp-18]
 00426FAC    wait
 00426FAD    mov         eax,dword ptr [ebp+8]
 00426FB0    mov         edx,dword ptr [eax-14]
 00426FB3    mov         eax,ebx
 00426FB5    call        00426BF8
 00426FBA    mov         dword ptr [ebp-2C],eax
 00426FBD    fild        dword ptr [ebp-2C]
 00426FC0    fstp        qword ptr [ebp-20]
 00426FC3    wait
 00426FC4    imul        esi,dword ptr [ebx+4],441
 00426FCB    mov         edi,dword ptr [ebp+8]
 00426FCE    mov         edi,dword ptr [edi-18]
 00426FD1    lea         esi,[edi+esi*8]
 00426FD4    push        esi
 00426FD5    mov         esi,dword ptr [ebx+0C]
 00426FD8    mov         edi,esi
 00426FDA    shl         esi,5
 00426FDD    add         esi,edi
 00426FDF    pop         edi
 00426FE0    lea         esi,[edi+esi*8]
 00426FE3    push        esi
 00426FE4    mov         eax,dword ptr [ebx+14]
 00426FE7    pop         esi
 00426FE8    fld         qword ptr [esi+eax*8]
 00426FEB    imul        esi,dword ptr [ebx+4],441
 00426FF2    mov         edi,dword ptr [ebp+8]
 00426FF5    mov         edi,dword ptr [edi-18]
 00426FF8    lea         esi,[edi+esi*8]
 00426FFB    push        esi
 00426FFC    mov         esi,dword ptr [ebx+0C]
 00426FFF    mov         edi,esi
 00427001    shl         esi,5
 00427004    add         esi,edi
 00427006    pop         edi
 00427007    lea         esi,[edi+esi*8]
 0042700A    push        esi
 0042700B    mov         edx,dword ptr [ebx+10]
 0042700E    pop         esi
 0042700F    fsub        qword ptr [esi+edx*8]
 00427012    imul        esi,dword ptr [ebx+4],441
 00427019    mov         edi,dword ptr [ebp+8]
 0042701C    mov         edi,dword ptr [edi-18]
 0042701F    lea         esi,[edi+esi*8]
 00427022    push        esi
 00427023    mov         ecx,dword ptr [ebx+8]
 00427026    mov         esi,ecx
 00427028    shl         ecx,5
 0042702B    add         ecx,esi
 0042702D    pop         esi
 0042702E    lea         esi,[esi+ecx*8]
 00427031    fsub        qword ptr [esi+eax*8]
 00427034    imul        esi,dword ptr [ebx+4],441
 0042703B    mov         edi,dword ptr [ebp+8]
 0042703E    mov         edi,dword ptr [edi-18]
 00427041    lea         esi,[edi+esi*8]
 00427044    push        esi
 00427045    mov         esi,dword ptr [ebx+8]
 00427048    mov         edi,esi
 0042704A    shl         esi,5
 0042704D    add         esi,edi
 0042704F    pop         edi
 00427050    lea         esi,[edi+esi*8]
 00427053    push        esi
 00427054    pop         esi
 00427055    fadd        qword ptr [esi+edx*8]
 00427058    imul        esi,dword ptr [ebx],441
 0042705E    mov         edi,dword ptr [ebp+8]
 00427061    mov         edi,dword ptr [edi-18]
 00427064    lea         esi,[edi+esi*8]
 00427067    push        esi
 00427068    mov         esi,dword ptr [ebx+0C]
 0042706B    mov         edi,esi
 0042706D    shl         esi,5
 00427070    add         esi,edi
 00427072    pop         edi
 00427073    lea         esi,[edi+esi*8]
 00427076    push        esi
 00427077    pop         esi
 00427078    fsub        qword ptr [esi+eax*8]
 0042707B    imul        eax,dword ptr [ebx],441
 00427081    mov         esi,dword ptr [ebp+8]
 00427084    mov         esi,dword ptr [esi-18]
 00427087    lea         eax,[esi+eax*8]
 0042708A    mov         esi,dword ptr [ebx+0C]
 0042708D    mov         edi,esi
 0042708F    shl         esi,5
 00427092    add         esi,edi
 00427094    lea         eax,[eax+esi*8]
 00427097    fadd        qword ptr [eax+edx*8]
 0042709A    imul        eax,dword ptr [ebx],441
 004270A0    mov         edx,dword ptr [ebp+8]
 004270A3    mov         edx,dword ptr [edx-18]
 004270A6    lea         eax,[edx+eax*8]
 004270A9    lea         eax,[eax+ecx*8]
 004270AC    mov         edx,dword ptr [ebx+14]
 004270AF    fadd        qword ptr [eax+edx*8]
 004270B2    imul        eax,dword ptr [ebx],441
 004270B8    mov         edx,dword ptr [ebp+8]
 004270BB    mov         edx,dword ptr [edx-18]
 004270BE    lea         eax,[edx+eax*8]
 004270C1    lea         eax,[eax+ecx*8]
 004270C4    mov         edx,dword ptr [ebx+10]
 004270C7    fsub        qword ptr [eax+edx*8]
 004270CA    fstp        qword ptr [ebp-28]
 004270CD    wait
 004270CE    mov         eax,dword ptr [ebp+8]
 004270D1    mov         edx,dword ptr [eax-1C]
 004270D4    mov         eax,ebx
 004270D6    call        00426BF8
 004270DB    mov         dword ptr [ebp-2C],eax
 004270DE    fild        dword ptr [ebp-2C]
 004270E1    fld         qword ptr [ebp-10]
 004270E4    fmul        qword ptr [ebp-10]
 004270E7    fld         qword ptr [ebp-18]
 004270EA    fmul        qword ptr [ebp-18]
 004270ED    faddp       st(1),st
 004270EF    fld         qword ptr [ebp-20]
 004270F2    fmul        qword ptr [ebp-20]
 004270F5    faddp       st(1),st
 004270F7    fdivrp      st(1),st
 004270F9    fsubr       qword ptr [ebp-28]
 004270FC    fstp        qword ptr [ebp-8]
 004270FF    wait
 00427100    fld         qword ptr [ebp-8]
 00427103    pop         edi
 00427104    pop         esi
 00427105    pop         ebx
 00427106    mov         esp,ebp
 00427108    pop         ebp
 00427109    ret
end;*}

//0042710C
{*procedure sub_0042710C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0042710C    push        ebp
 0042710D    mov         ebp,esp
 0042710F    add         esp,0FFFFFFB8
 00427112    push        ebx
 00427113    push        esi
 00427114    push        edi
 00427115    mov         ebx,ecx
 00427117    mov         byte ptr [ebp-5],dl
 0042711A    mov         dword ptr [ebp-4],eax
 0042711D    mov         eax,dword ptr [ebp+20]
 00427120    mov         ecx,dword ptr [eax-0C]
 00427123    mov         eax,dword ptr [ebp-4]
 00427126    mov         dl,byte ptr [ebp-5]
 00427129    call        00426CC4
 0042712E    mov         dword ptr [ebp-14],eax
 00427131    mov         eax,dword ptr [ebp+20]
 00427134    mov         ecx,dword ptr [eax-10]
 00427137    mov         eax,dword ptr [ebp-4]
 0042713A    mov         dl,byte ptr [ebp-5]
 0042713D    call        00426CC4
 00427142    mov         dword ptr [ebp-18],eax
 00427145    mov         eax,dword ptr [ebp+20]
 00427148    mov         ecx,dword ptr [eax-14]
 0042714B    mov         eax,dword ptr [ebp-4]
 0042714E    mov         dl,byte ptr [ebp-5]
 00427151    call        00426CC4
 00427156    mov         dword ptr [ebp-1C],eax
 00427159    mov         eax,dword ptr [ebp+20]
 0042715C    mov         ecx,dword ptr [eax-1C]
 0042715F    mov         eax,dword ptr [ebp-4]
 00427162    mov         dl,byte ptr [ebp-5]
 00427165    call        00426CC4
 0042716A    mov         dword ptr [ebp-20],eax
 0042716D    xor         eax,eax
 0042716F    mov         dword ptr [ebp-40],eax
 00427172    mov         dword ptr [ebp-3C],eax
 00427175    mov         eax,dword ptr [ebp+18]
 00427178    mov         dword ptr [eax],0FFFFFFFF
 0042717E    mov         eax,dword ptr [ebp+1C]
 00427181    dec         eax
 00427182    sub         eax,ebx
>00427184    jl          004272D4
 0042718A    inc         eax
 0042718B    mov         dword ptr [ebp-44],eax
 0042718E    mov         dword ptr [ebp-24],ebx
 00427191    mov         eax,dword ptr [ebp+20]
 00427194    mov         eax,dword ptr [eax-0C]
 00427197    push        eax
 00427198    mov         eax,dword ptr [ebp-4]
 0042719B    mov         ecx,dword ptr [ebp-24]
 0042719E    mov         dl,byte ptr [ebp-5]
 004271A1    call        00426E14
 004271A6    mov         ebx,eax
 004271A8    add         ebx,dword ptr [ebp-14]
 004271AB    mov         eax,dword ptr [ebp+20]
 004271AE    mov         eax,dword ptr [eax-10]
 004271B1    push        eax
 004271B2    mov         eax,dword ptr [ebp-4]
 004271B5    mov         ecx,dword ptr [ebp-24]
 004271B8    mov         dl,byte ptr [ebp-5]
 004271BB    call        00426E14
 004271C0    mov         esi,eax
 004271C2    add         esi,dword ptr [ebp-18]
 004271C5    mov         eax,dword ptr [ebp+20]
 004271C8    mov         eax,dword ptr [eax-14]
 004271CB    push        eax
 004271CC    mov         eax,dword ptr [ebp-4]
 004271CF    mov         ecx,dword ptr [ebp-24]
 004271D2    mov         dl,byte ptr [ebp-5]
 004271D5    call        00426E14
 004271DA    mov         edi,eax
 004271DC    add         edi,dword ptr [ebp-1C]
 004271DF    mov         eax,dword ptr [ebp+20]
 004271E2    mov         eax,dword ptr [eax-1C]
 004271E5    push        eax
 004271E6    mov         eax,dword ptr [ebp-4]
 004271E9    mov         ecx,dword ptr [ebp-24]
 004271EC    mov         dl,byte ptr [ebp-5]
 004271EF    call        00426E14
 004271F4    add         eax,dword ptr [ebp-20]
 004271F7    test        eax,eax
>004271F9    je          004272C8
 004271FF    mov         edx,ebx
 00427201    imul        edx,ebx
 00427204    mov         dword ptr [ebp-48],edx
 00427207    fild        dword ptr [ebp-48]
 0042720A    fstp        qword ptr [ebp-30]
 0042720D    wait
 0042720E    mov         edx,esi
 00427210    imul        edx,esi
 00427213    mov         dword ptr [ebp-48],edx
 00427216    fild        dword ptr [ebp-48]
 00427219    fadd        qword ptr [ebp-30]
 0042721C    fstp        qword ptr [ebp-30]
 0042721F    wait
 00427220    mov         edx,edi
 00427222    imul        edx,edi
 00427225    mov         dword ptr [ebp-48],edx
 00427228    fild        dword ptr [ebp-48]
 0042722B    fadd        qword ptr [ebp-30]
 0042722E    fstp        qword ptr [ebp-30]
 00427231    wait
 00427232    mov         dword ptr [ebp-48],eax
 00427235    fild        dword ptr [ebp-48]
 00427238    fdivr       qword ptr [ebp-30]
 0042723B    fstp        qword ptr [ebp-30]
 0042723E    wait
 0042723F    mov         edx,dword ptr [ebp+14]
 00427242    sub         edx,ebx
 00427244    mov         ebx,edx
 00427246    mov         edx,dword ptr [ebp+10]
 00427249    sub         edx,esi
 0042724B    mov         esi,edx
 0042724D    mov         edx,dword ptr [ebp+0C]
 00427250    sub         edx,edi
 00427252    mov         edi,edx
 00427254    mov         edx,dword ptr [ebp+8]
 00427257    sub         edx,eax
 00427259    mov         eax,edx
 0042725B    test        eax,eax
>0042725D    je          004272C8
 0042725F    mov         edx,ebx
 00427261    imul        edx,ebx
 00427264    mov         dword ptr [ebp-48],edx
 00427267    fild        dword ptr [ebp-48]
 0042726A    fstp        qword ptr [ebp-38]
 0042726D    wait
 0042726E    mov         edx,esi
 00427270    imul        edx,esi
 00427273    mov         dword ptr [ebp-48],edx
 00427276    fild        dword ptr [ebp-48]
 00427279    fadd        qword ptr [ebp-38]
 0042727C    fstp        qword ptr [ebp-38]
 0042727F    wait
 00427280    mov         edx,edi
 00427282    imul        edx,edi
 00427285    mov         dword ptr [ebp-48],edx
 00427288    fild        dword ptr [ebp-48]
 0042728B    fadd        qword ptr [ebp-38]
 0042728E    fstp        qword ptr [ebp-38]
 00427291    wait
 00427292    mov         dword ptr [ebp-48],eax
 00427295    fild        dword ptr [ebp-48]
 00427298    fdivr       qword ptr [ebp-38]
 0042729B    fstp        qword ptr [ebp-38]
 0042729E    wait
 0042729F    fld         qword ptr [ebp-30]
 004272A2    fadd        qword ptr [ebp-38]
 004272A5    fstp        qword ptr [ebp-30]
 004272A8    wait
 004272A9    fld         qword ptr [ebp-30]
 004272AC    fcomp       qword ptr [ebp-40]
 004272AF    fnstsw      al
 004272B1    sahf
>004272B2    jbe         004272C8
 004272B4    mov         eax,dword ptr [ebp-30]
 004272B7    mov         dword ptr [ebp-40],eax
 004272BA    mov         eax,dword ptr [ebp-2C]
 004272BD    mov         dword ptr [ebp-3C],eax
 004272C0    mov         eax,dword ptr [ebp+18]
 004272C3    mov         edx,dword ptr [ebp-24]
 004272C6    mov         dword ptr [eax],edx
 004272C8    inc         dword ptr [ebp-24]
 004272CB    dec         dword ptr [ebp-44]
>004272CE    jne         00427191
 004272D4    mov         eax,dword ptr [ebp-40]
 004272D7    mov         dword ptr [ebp-10],eax
 004272DA    mov         eax,dword ptr [ebp-3C]
 004272DD    mov         dword ptr [ebp-0C],eax
 004272E0    fld         qword ptr [ebp-10]
 004272E3    pop         edi
 004272E4    pop         esi
 004272E5    pop         ebx
 004272E6    mov         esp,ebp
 004272E8    pop         ebp
 004272E9    ret         18
end;*}

//004272EC
{*function sub_004272EC(?:?; ?:?; ?:?):?;
begin
 004272EC    push        ebp
 004272ED    mov         ebp,esp
 004272EF    add         esp,0FFFFFFCC
 004272F2    push        ebx
 004272F3    push        esi
 004272F4    push        edi
 004272F5    mov         esi,edx
 004272F7    mov         ebx,eax
 004272F9    mov         eax,dword ptr [ebp+8]
 004272FC    mov         edx,dword ptr [eax-0C]
 004272FF    mov         eax,ebx
 00427301    call        00426BF8
 00427306    mov         edi,eax
 00427308    mov         eax,dword ptr [ebp+8]
 0042730B    mov         edx,dword ptr [eax-10]
 0042730E    mov         eax,ebx
 00427310    call        00426BF8
 00427315    mov         dword ptr [ebp-2C],eax
 00427318    mov         eax,dword ptr [ebp+8]
 0042731B    mov         edx,dword ptr [eax-14]
 0042731E    mov         eax,ebx
 00427320    call        00426BF8
 00427325    mov         dword ptr [ebp-30],eax
 00427328    mov         eax,dword ptr [ebp+8]
 0042732B    mov         edx,dword ptr [eax-1C]
 0042732E    mov         eax,ebx
 00427330    call        00426BF8
 00427335    mov         dword ptr [ebp-34],eax
 00427338    mov         eax,dword ptr [ebp+8]
 0042733B    push        eax
 0042733C    mov         eax,dword ptr [ebx+4]
 0042733F    push        eax
 00427340    lea         eax,[ebp-4]
 00427343    push        eax
 00427344    push        edi
 00427345    mov         eax,dword ptr [ebp-2C]
 00427348    push        eax
 00427349    mov         eax,dword ptr [ebp-30]
 0042734C    push        eax
 0042734D    mov         eax,dword ptr [ebp-34]
 00427350    push        eax
 00427351    mov         ecx,dword ptr [ebx]
 00427353    inc         ecx
 00427354    mov         eax,ebx
 00427356    xor         edx,edx
 00427358    call        0042710C
 0042735D    pop         ecx
 0042735E    fstp        qword ptr [ebp-18]
 00427361    wait
 00427362    mov         eax,dword ptr [ebp+8]
 00427365    push        eax
 00427366    mov         eax,dword ptr [ebx+0C]
 00427369    push        eax
 0042736A    lea         eax,[ebp-8]
 0042736D    push        eax
 0042736E    push        edi
 0042736F    mov         eax,dword ptr [ebp-2C]
 00427372    push        eax
 00427373    mov         eax,dword ptr [ebp-30]
 00427376    push        eax
 00427377    mov         eax,dword ptr [ebp-34]
 0042737A    push        eax
 0042737B    mov         ecx,dword ptr [ebx+8]
 0042737E    inc         ecx
 0042737F    mov         eax,ebx
 00427381    mov         dl,1
 00427383    call        0042710C
 00427388    pop         ecx
 00427389    fstp        qword ptr [ebp-20]
 0042738C    wait
 0042738D    mov         eax,dword ptr [ebp+8]
 00427390    push        eax
 00427391    mov         eax,dword ptr [ebx+14]
 00427394    push        eax
 00427395    lea         eax,[ebp-0C]
 00427398    push        eax
 00427399    push        edi
 0042739A    mov         eax,dword ptr [ebp-2C]
 0042739D    push        eax
 0042739E    mov         eax,dword ptr [ebp-30]
 004273A1    push        eax
 004273A2    mov         eax,dword ptr [ebp-34]
 004273A5    push        eax
 004273A6    mov         ecx,dword ptr [ebx+10]
 004273A9    inc         ecx
 004273AA    mov         eax,ebx
 004273AC    mov         dl,2
 004273AE    call        0042710C
 004273B3    pop         ecx
 004273B4    fstp        qword ptr [ebp-28]
 004273B7    wait
 004273B8    fld         qword ptr [ebp-18]
 004273BB    fcomp       qword ptr [ebp-20]
 004273BE    fnstsw      al
 004273C0    sahf
>004273C1    jb          004273DD
 004273C3    fld         qword ptr [ebp-18]
 004273C6    fcomp       qword ptr [ebp-28]
 004273C9    fnstsw      al
 004273CB    sahf
>004273CC    jb          004273DD
 004273CE    xor         eax,eax
 004273D0    cmp         dword ptr [ebp-4],0
>004273D4    jge         004273F9
 004273D6    xor         eax,eax
>004273D8    jmp         0042748C
 004273DD    fld         qword ptr [ebp-20]
 004273E0    fcomp       qword ptr [ebp-18]
 004273E3    fnstsw      al
 004273E5    sahf
>004273E6    jb          004273F7
 004273E8    fld         qword ptr [ebp-20]
 004273EB    fcomp       qword ptr [ebp-28]
 004273EE    fnstsw      al
 004273F0    sahf
>004273F1    jb          004273F7
 004273F3    mov         al,1
>004273F5    jmp         004273F9
 004273F7    mov         al,2
 004273F9    mov         edx,dword ptr [ebx+4]
 004273FC    mov         dword ptr [esi+4],edx
 004273FF    mov         edx,dword ptr [ebx+0C]
 00427402    mov         dword ptr [esi+0C],edx
 00427405    mov         edx,dword ptr [ebx+14]
 00427408    mov         dword ptr [esi+14],edx
 0042740B    sub         al,1
>0042740D    jb          00427413
>0042740F    je          0042742C
>00427411    jmp         00427444
 00427413    mov         eax,dword ptr [ebp-4]
 00427416    mov         dword ptr [ebx+4],eax
 00427419    mov         eax,dword ptr [ebp-4]
 0042741C    mov         dword ptr [esi],eax
 0042741E    mov         eax,dword ptr [ebx+8]
 00427421    mov         dword ptr [esi+8],eax
 00427424    mov         eax,dword ptr [ebx+10]
 00427427    mov         dword ptr [esi+10],eax
>0042742A    jmp         0042745A
 0042742C    mov         eax,dword ptr [ebp-8]
 0042742F    mov         dword ptr [ebx+0C],eax
 00427432    mov         eax,dword ptr [ebp-8]
 00427435    mov         dword ptr [esi+8],eax
 00427438    mov         eax,dword ptr [ebx]
 0042743A    mov         dword ptr [esi],eax
 0042743C    mov         eax,dword ptr [ebx+10]
 0042743F    mov         dword ptr [esi+10],eax
>00427442    jmp         0042745A
 00427444    mov         eax,dword ptr [ebp-0C]
 00427447    mov         dword ptr [ebx+14],eax
 0042744A    mov         eax,dword ptr [ebp-0C]
 0042744D    mov         dword ptr [esi+10],eax
 00427450    mov         eax,dword ptr [ebx]
 00427452    mov         dword ptr [esi],eax
 00427454    mov         eax,dword ptr [ebx+8]
 00427457    mov         dword ptr [esi+8],eax
 0042745A    mov         eax,dword ptr [ebx+4]
 0042745D    sub         eax,dword ptr [ebx]
 0042745F    mov         edx,dword ptr [ebx+0C]
 00427462    sub         edx,dword ptr [ebx+8]
 00427465    imul        edx
 00427467    mov         edx,dword ptr [ebx+14]
 0042746A    sub         edx,dword ptr [ebx+10]
 0042746D    imul        edx
 0042746F    mov         dword ptr [ebx+18],eax
 00427472    mov         eax,dword ptr [esi+4]
 00427475    sub         eax,dword ptr [esi]
 00427477    mov         edx,dword ptr [esi+0C]
 0042747A    sub         edx,dword ptr [esi+8]
 0042747D    imul        edx
 0042747F    mov         edx,dword ptr [esi+14]
 00427482    sub         edx,dword ptr [esi+10]
 00427485    imul        edx
 00427487    mov         dword ptr [esi+18],eax
 0042748A    mov         al,1
 0042748C    pop         edi
 0042748D    pop         esi
 0042748E    pop         ebx
 0042748F    mov         esp,ebp
 00427491    pop         ebp
 00427492    ret
end;*}

//00427494
{*procedure sub_00427494(?:?; ?:Integer; ?:AnsiString; ?:?);
begin
 00427494    push        ebp
 00427495    mov         ebp,esp
 00427497    add         esp,0FFFFFFC8
 0042749A    push        ebx
 0042749B    push        esi
 0042749C    push        edi
 0042749D    mov         dword ptr [ebp-20],ecx
 004274A0    mov         dword ptr [ebp-4],edx
 004274A3    mov         dword ptr [ebp-8],eax
 004274A6    push        46308
 004274AB    push        40
 004274AD    call        kernel32.LocalAlloc
 004274B2    mov         dword ptr [ebp-18],eax
 004274B5    push        23184
 004274BA    push        40
 004274BC    call        kernel32.LocalAlloc
 004274C1    mov         dword ptr [ebp-1C],eax
 004274C4    push        23184
 004274C9    push        40
 004274CB    call        kernel32.LocalAlloc
 004274D0    mov         dword ptr [ebp-0C],eax
 004274D3    push        23184
 004274D8    push        40
 004274DA    call        kernel32.LocalAlloc
 004274DF    mov         dword ptr [ebp-10],eax
 004274E2    push        23184
 004274E7    push        40
 004274E9    call        kernel32.LocalAlloc
 004274EE    mov         dword ptr [ebp-14],eax
 004274F1    push        1C00
 004274F6    push        40
 004274F8    call        kernel32.LocalAlloc
 004274FD    mov         dword ptr [ebp-24],eax
 00427500    push        800
 00427505    push        40
 00427507    call        kernel32.LocalAlloc
 0042750C    mov         edi,eax
 0042750E    push        ebp
 0042750F    mov         eax,dword ptr [ebp-14]
 00427512    push        eax
 00427513    mov         eax,dword ptr [ebp-18]
 00427516    push        eax
 00427517    mov         ecx,dword ptr [ebp-10]
 0042751A    mov         edx,dword ptr [ebp-0C]
 0042751D    mov         eax,dword ptr [ebp-1C]
 00427520    call        00426908
 00427525    pop         ecx
 00427526    mov         eax,dword ptr [ebp-14]
 00427529    push        eax
 0042752A    mov         eax,dword ptr [ebp-18]
 0042752D    push        eax
 0042752E    mov         ecx,dword ptr [ebp-10]
 00427531    mov         edx,dword ptr [ebp-0C]
 00427534    mov         eax,dword ptr [ebp-1C]
 00427537    call        004269FC
 0042753C    mov         eax,dword ptr [ebp-24]
 0042753F    xor         edx,edx
 00427541    mov         dword ptr [eax],edx
 00427543    mov         eax,dword ptr [ebp-24]
 00427546    xor         edx,edx
 00427548    mov         dword ptr [eax+8],edx
 0042754B    mov         eax,dword ptr [ebp-24]
 0042754E    xor         edx,edx
 00427550    mov         dword ptr [eax+10],edx
 00427553    mov         eax,dword ptr [ebp-24]
 00427556    mov         dword ptr [eax+4],20
 0042755D    mov         eax,dword ptr [ebp-24]
 00427560    mov         dword ptr [eax+0C],20
 00427567    mov         eax,dword ptr [ebp-24]
 0042756A    mov         dword ptr [eax+14],20
 00427571    xor         eax,eax
 00427573    mov         dword ptr [ebp-28],eax
 00427576    mov         dword ptr [ebp-2C],1
 0042757D    mov         eax,dword ptr [ebp-2C]
 00427580    cmp         eax,dword ptr [ebp+8]
>00427583    jge         0042767E
 00427589    push        ebp
 0042758A    mov         esi,dword ptr [ebp-2C]
 0042758D    mov         eax,esi
 0042758F    shl         esi,3
 00427592    sub         esi,eax
 00427594    mov         eax,dword ptr [ebp-24]
 00427597    lea         edx,[eax+esi*4]
 0042759A    mov         ebx,dword ptr [ebp-28]
 0042759D    mov         eax,ebx
 0042759F    shl         ebx,3
 004275A2    sub         ebx,eax
 004275A4    mov         eax,dword ptr [ebp-24]
 004275A7    lea         eax,[eax+ebx*4]
 004275AA    call        004272EC
 004275AF    pop         ecx
 004275B0    test        al,al
>004275B2    je          0042760E
 004275B4    mov         eax,dword ptr [ebp-24]
 004275B7    cmp         dword ptr [eax+ebx*4+18],1
>004275BC    jle         004275D4
 004275BE    push        ebp
 004275BF    mov         eax,dword ptr [ebp-24]
 004275C2    lea         eax,[eax+ebx*4]
 004275C5    call        00426F74
 004275CA    pop         ecx
 004275CB    mov         eax,dword ptr [ebp-28]
 004275CE    fstp        qword ptr [edi+eax*8]
 004275D1    wait
>004275D2    jmp         004275E0
 004275D4    mov         eax,dword ptr [ebp-28]
 004275D7    xor         edx,edx
 004275D9    mov         dword ptr [edi+eax*8],edx
 004275DC    mov         dword ptr [edi+eax*8+4],edx
 004275E0    mov         eax,dword ptr [ebp-24]
 004275E3    cmp         dword ptr [eax+esi*4+18],1
>004275E8    jle         00427600
 004275EA    push        ebp
 004275EB    mov         eax,dword ptr [ebp-24]
 004275EE    lea         eax,[eax+esi*4]
 004275F1    call        00426F74
 004275F6    pop         ecx
 004275F7    mov         eax,dword ptr [ebp-2C]
 004275FA    fstp        qword ptr [edi+eax*8]
 004275FD    wait
>004275FE    jmp         0042761D
 00427600    mov         eax,dword ptr [ebp-2C]
 00427603    xor         edx,edx
 00427605    mov         dword ptr [edi+eax*8],edx
 00427608    mov         dword ptr [edi+eax*8+4],edx
>0042760C    jmp         0042761D
 0042760E    mov         eax,dword ptr [ebp-28]
 00427611    xor         edx,edx
 00427613    mov         dword ptr [edi+eax*8],edx
 00427616    mov         dword ptr [edi+eax*8+4],edx
 0042761A    dec         dword ptr [ebp-2C]
 0042761D    xor         eax,eax
 0042761F    mov         dword ptr [ebp-28],eax
 00427622    mov         eax,dword ptr [edi]
 00427624    mov         dword ptr [ebp-38],eax
 00427627    mov         eax,dword ptr [edi+4]
 0042762A    mov         dword ptr [ebp-34],eax
 0042762D    mov         esi,dword ptr [ebp-2C]
 00427630    test        esi,esi
>00427632    jle         00427658
 00427634    mov         ebx,1
 00427639    fld         qword ptr [edi+ebx*8]
 0042763C    fcomp       qword ptr [ebp-38]
 0042763F    fnstsw      al
 00427641    sahf
>00427642    jbe         00427654
 00427644    mov         eax,dword ptr [edi+ebx*8]
 00427647    mov         dword ptr [ebp-38],eax
 0042764A    mov         eax,dword ptr [edi+ebx*8+4]
 0042764E    mov         dword ptr [ebp-34],eax
 00427651    mov         dword ptr [ebp-28],ebx
 00427654    inc         ebx
 00427655    dec         esi
>00427656    jne         00427639
 00427658    fld         qword ptr [ebp-38]
 0042765B    fcomp       dword ptr ds:[42774C];0:Single
 00427661    fnstsw      al
 00427663    sahf
>00427664    ja          0042766F
 00427666    mov         eax,dword ptr [ebp-2C]
 00427669    inc         eax
 0042766A    mov         dword ptr [ebp+8],eax
>0042766D    jmp         0042767E
 0042766F    inc         dword ptr [ebp-2C]
 00427672    mov         eax,dword ptr [ebp-2C]
 00427675    cmp         eax,dword ptr [ebp+8]
>00427678    jl          00427589
 0042767E    push        edi
 0042767F    call        kernel32.LocalFree
 00427684    mov         eax,dword ptr [ebp-18]
 00427687    push        eax
 00427688    call        kernel32.LocalFree
 0042768D    mov         esi,dword ptr [ebp+8]
 00427690    dec         esi
 00427691    test        esi,esi
>00427693    jl          00427713
 00427695    inc         esi
 00427696    xor         ebx,ebx
 00427698    mov         edi,dword ptr [ebp-20]
 0042769B    mov         eax,ebx
 0042769D    shl         eax,3
 004276A0    sub         eax,ebx
 004276A2    mov         edx,dword ptr [ebp-24]
 004276A5    lea         eax,[edx+eax*4]
 004276A8    mov         edx,dword ptr [ebp-1C]
 004276AB    call        00426BF8
 004276B0    mov         dword ptr [ebp-30],eax
 004276B3    cmp         dword ptr [ebp-30],0
>004276B7    je          0042770C
 004276B9    mov         eax,ebx
 004276BB    shl         eax,3
 004276BE    sub         eax,ebx
 004276C0    mov         edx,dword ptr [ebp-24]
 004276C3    lea         eax,[edx+eax*4]
 004276C6    mov         edx,dword ptr [ebp-0C]
 004276C9    call        00426BF8
 004276CE    cdq
 004276CF    idiv        eax,dword ptr [ebp-30]
 004276D2    mov         byte ptr [edi],al
 004276D4    mov         eax,ebx
 004276D6    shl         eax,3
 004276D9    sub         eax,ebx
 004276DB    mov         edx,dword ptr [ebp-24]
 004276DE    lea         eax,[edx+eax*4]
 004276E1    mov         edx,dword ptr [ebp-10]
 004276E4    call        00426BF8
 004276E9    cdq
 004276EA    idiv        eax,dword ptr [ebp-30]
 004276ED    mov         byte ptr [edi+1],al
 004276F0    mov         eax,ebx
 004276F2    shl         eax,3
 004276F5    sub         eax,ebx
 004276F7    mov         edx,dword ptr [ebp-24]
 004276FA    lea         eax,[edx+eax*4]
 004276FD    mov         edx,dword ptr [ebp-14]
 00427700    call        00426BF8
 00427705    cdq
 00427706    idiv        eax,dword ptr [ebp-30]
 00427709    mov         byte ptr [edi+2],al
 0042770C    inc         ebx
 0042770D    add         edi,3
 00427710    dec         esi
>00427711    jne         0042769B
 00427713    mov         eax,dword ptr [ebp-24]
 00427716    push        eax
 00427717    call        kernel32.LocalFree
 0042771C    mov         eax,dword ptr [ebp-1C]
 0042771F    push        eax
 00427720    call        kernel32.LocalFree
 00427725    mov         eax,dword ptr [ebp-0C]
 00427728    push        eax
 00427729    call        kernel32.LocalFree
 0042772E    mov         eax,dword ptr [ebp-10]
 00427731    push        eax
 00427732    call        kernel32.LocalFree
 00427737    mov         eax,dword ptr [ebp-14]
 0042773A    push        eax
 0042773B    call        kernel32.LocalFree
 00427740    pop         edi
 00427741    pop         esi
 00427742    pop         ebx
 00427743    mov         esp,ebp
 00427745    pop         ebp
 00427746    ret         4
end;*}

//00427750
{*procedure sub_00427750(?:?);
begin
 00427750    push        ebx
 00427751    mov         ebx,eax
 00427753    push        8000
 00427758    mov         eax,ebx
 0042775A    mov         ecx,1
 0042775F    mov         edx,dword ptr ds:[40869C];TDASmallInt
 00427765    call        @DynArraySetLength
 0042776A    add         esp,4
 0042776D    mov         eax,dword ptr [ebx]
 0042776F    call        00405CE8
 00427774    test        eax,eax
>00427776    jl          00427787
 00427778    inc         eax
 00427779    xor         edx,edx
 0042777B    mov         ecx,dword ptr [ebx]
 0042777D    mov         word ptr [ecx+edx*2],0FFFF
 00427783    inc         edx
 00427784    dec         eax
>00427785    jne         0042777B
 00427787    pop         ebx
 00427788    ret
end;*}

//0042778C
{*function sub_0042778C(?:?; ?:AnsiString; ?:?; ?:?; ?:?):?;
begin
 0042778C    push        ebp
 0042778D    mov         ebp,esp
 0042778F    add         esp,0FFFFFFF0
 00427792    push        ebx
 00427793    push        esi
 00427794    push        edi
 00427795    mov         dword ptr [ebp-8],edx
 00427798    mov         dword ptr [ebp-4],eax
 0042779B    mov         al,byte ptr [ebp+0C]
 0042779E    and         al,0F8
 004277A0    and         eax,0FF
 004277A5    shl         eax,2
 004277A8    xor         edx,edx
 004277AA    mov         dl,cl
 004277AC    shr         edx,3
 004277AF    add         eax,edx
 004277B1    mov         dl,byte ptr [ebp+8]
 004277B4    and         dl,0F8
 004277B7    and         edx,0FF
 004277BD    shl         edx,7
 004277C0    add         eax,edx
 004277C2    mov         dword ptr [ebp-0C],eax
 004277C5    mov         eax,dword ptr [ebp-4]
 004277C8    mov         edx,dword ptr [ebp-0C]
 004277CB    cmp         word ptr [eax+edx*2],0FFFFFFFF
>004277D0    jne         00427837
 004277D2    mov         dword ptr [ebp-10],7FFFFFFF
 004277D9    xor         esi,esi
 004277DB    mov         ebx,dword ptr [ebp-8]
 004277DE    xor         eax,eax
 004277E0    mov         al,cl
 004277E2    xor         edx,edx
 004277E4    mov         dl,byte ptr [ebx]
 004277E6    sub         eax,edx
 004277E8    cdq
 004277E9    xor         eax,edx
 004277EB    sub         eax,edx
 004277ED    mov         edi,eax
 004277EF    xor         eax,eax
 004277F1    mov         al,byte ptr [ebp+0C]
 004277F4    xor         edx,edx
 004277F6    mov         dl,byte ptr [ebx+1]
 004277F9    sub         eax,edx
 004277FB    cdq
 004277FC    xor         eax,edx
 004277FE    sub         eax,edx
 00427800    add         edi,eax
 00427802    xor         eax,eax
 00427804    mov         al,byte ptr [ebp+8]
 00427807    xor         edx,edx
 00427809    mov         dl,byte ptr [ebx+2]
 0042780C    sub         eax,edx
 0042780E    cdq
 0042780F    xor         eax,edx
 00427811    sub         eax,edx
 00427813    add         edi,eax
 00427815    mov         eax,edi
 00427817    cmp         eax,dword ptr [ebp-10]
>0042781A    jge         0042782B
 0042781C    mov         edx,dword ptr [ebp-4]
 0042781F    mov         edi,dword ptr [ebp-0C]
 00427822    lea         edi,[edx+edi*2]
 00427825    mov         word ptr [edi],si
 00427828    mov         dword ptr [ebp-10],eax
 0042782B    inc         esi
 0042782C    add         ebx,3
 0042782F    cmp         esi,100
>00427835    jne         004277DE
 00427837    mov         eax,dword ptr [ebp-4]
 0042783A    mov         edx,dword ptr [ebp-0C]
 0042783D    mov         al,byte ptr [eax+edx*2]
 00427840    pop         edi
 00427841    pop         esi
 00427842    pop         ebx
 00427843    mov         esp,ebp
 00427845    pop         ebp
 00427846    ret         8
end;*}

//0042784C
{*procedure sub_0042784C(?:?; ?:?; ?:AnsiString);
begin
 0042784C    push        ebp
 0042784D    mov         ebp,esp
 0042784F    add         esp,0FFFFFFF4
 00427852    push        ebx
 00427853    push        esi
 00427854    mov         dword ptr [ebp-8],ecx
 00427857    mov         dword ptr [ebp-4],edx
 0042785A    mov         esi,eax
 0042785C    mov         ebx,dword ptr [ebp-4]
 0042785F    inc         ebx
 00427860    lea         edx,[ebx+ebx*2]
 00427863    add         edx,3
 00427866    mov         eax,dword ptr [ebp-8]
 00427869    call        @LStrSetLength
 0042786E    xor         edx,edx
 00427870    test        ebx,ebx
>00427872    jl          004278A2
 00427874    inc         ebx
 00427875    mov         dword ptr [ebp-0C],ebx
 00427878    xor         ecx,ecx
 0042787A    lea         eax,[ecx+ecx*2]
 0042787D    mov         ebx,dword ptr [ebp-8]
 00427880    mov         ebx,dword ptr [ebx]
 00427882    lea         eax,[ebx+eax]
 00427885    mov         byte ptr [eax],dl
 00427887    mov         byte ptr [eax+1],dl
 0042788A    mov         byte ptr [eax+2],dl
 0042788D    mov         eax,dword ptr [ebp-4]
 00427890    inc         eax
 00427891    cmp         ecx,eax
>00427893    jge         0042789B
 00427895    xor         eax,eax
 00427897    mov         al,byte ptr [esi]
 00427899    add         edx,eax
 0042789B    inc         ecx
 0042789C    inc         esi
 0042789D    dec         dword ptr [ebp-0C]
>004278A0    jne         0042787A
 004278A2    pop         esi
 004278A3    pop         ebx
 004278A4    mov         esp,ebp
 004278A6    pop         ebp
 004278A7    ret
end;*}

//004278A8
{*procedure sub_004278A8(?:?);
begin
 004278A8    push        ebx
 004278A9    mov         ebx,eax
 004278AB    push        100
 004278B0    mov         eax,ebx
 004278B2    mov         ecx,1
 004278B7    mov         edx,dword ptr ds:[40869C];TDASmallInt
 004278BD    call        @DynArraySetLength
 004278C2    add         esp,4
 004278C5    mov         eax,dword ptr [ebx]
 004278C7    call        00405CE8
 004278CC    test        eax,eax
>004278CE    jl          004278DF
 004278D0    inc         eax
 004278D1    xor         edx,edx
 004278D3    mov         ecx,dword ptr [ebx]
 004278D5    mov         word ptr [ecx+edx*2],0FFFF
 004278DB    inc         edx
 004278DC    dec         eax
>004278DD    jne         004278D3
 004278DF    pop         ebx
 004278E0    ret
end;*}

//004278E4
{*function sub_004278E4(?:?; ?:AnsiString; ?:?):?;
begin
 004278E4    push        ebp
 004278E5    mov         ebp,esp
 004278E7    add         esp,0FFFFFFF4
 004278EA    push        ebx
 004278EB    push        esi
 004278EC    push        edi
 004278ED    mov         dword ptr [ebp-8],edx
 004278F0    mov         dword ptr [ebp-4],eax
 004278F3    xor         eax,eax
 004278F5    mov         al,cl
 004278F7    mov         edx,dword ptr [ebp-4]
 004278FA    cmp         word ptr [edx+eax*2],0FFFFFFFF
>004278FF    jne         0042793A
 00427901    mov         dword ptr [ebp-0C],7FFFFFFF
 00427908    xor         esi,esi
 0042790A    mov         ebx,dword ptr [ebp-8]
 0042790D    xor         eax,eax
 0042790F    mov         al,cl
 00427911    xor         edx,edx
 00427913    mov         dl,byte ptr [ebx]
 00427915    sub         eax,edx
 00427917    cdq
 00427918    xor         eax,edx
 0042791A    sub         eax,edx
 0042791C    cmp         eax,dword ptr [ebp-0C]
>0042791F    jge         00427931
 00427921    xor         edx,edx
 00427923    mov         dl,cl
 00427925    mov         edi,dword ptr [ebp-4]
 00427928    lea         edi,[edi+edx*2]
 0042792B    mov         word ptr [edi],si
 0042792E    mov         dword ptr [ebp-0C],eax
 00427931    inc         esi
 00427932    add         ebx,3
 00427935    cmp         esi,10
>00427938    jne         0042790D
 0042793A    xor         eax,eax
 0042793C    mov         al,cl
 0042793E    mov         edx,dword ptr [ebp-4]
 00427941    mov         al,byte ptr [edx+eax*2]
 00427944    pop         edi
 00427945    pop         esi
 00427946    pop         ebx
 00427947    mov         esp,ebp
 00427949    pop         ebp
 0042794A    ret
end;*}

//0042794C
{*procedure sub_0042794C(?:?; ?:?; ?:?);
begin
 0042794C    push        ebp
 0042794D    mov         ebp,esp
 0042794F    add         esp,0FFFFFFB8
 00427952    push        ebx
 00427953    push        esi
 00427954    push        edi
 00427955    xor         ebx,ebx
 00427957    mov         dword ptr [ebp-48],ebx
 0042795A    mov         dword ptr [ebp-34],ebx
 0042795D    mov         dword ptr [ebp-10],ebx
 00427960    mov         dword ptr [ebp-14],ebx
 00427963    mov         dword ptr [ebp-28],ebx
 00427966    mov         dword ptr [ebp-2C],ebx
 00427969    mov         dword ptr [ebp-0C],ecx
 0042796C    mov         byte ptr [ebp-5],dl
 0042796F    mov         dword ptr [ebp-4],eax
 00427972    xor         eax,eax
 00427974    push        ebp
 00427975    push        427CCF
 0042797A    push        dword ptr fs:[eax]
 0042797D    mov         dword ptr fs:[eax],esp
 00427980    mov         eax,dword ptr [ebp-0C]
 00427983    call        @LStrClr
 00427988    lea         eax,[ebp-28]
 0042798B    mov         edx,dword ptr ds:[40869C];TDASmallInt
 00427991    call        @DynArrayClear
 00427996    mov         eax,dword ptr [ebp-4]
 00427999    mov         eax,dword ptr [eax+10]
 0042799C    mov         dword ptr [ebp-18],eax
 0042799F    mov         eax,dword ptr [ebp-4]
 004279A2    mov         eax,dword ptr [eax+14]
 004279A5    mov         dword ptr [ebp-1C],eax
 004279A8    cmp         byte ptr [ebp-5],1
>004279AC    je          00427A77
 004279B2    lea         eax,[ebp-28]
 004279B5    call        00427750
 004279BA    lea         eax,[ebp-14]
 004279BD    mov         edx,300
 004279C2    call        @LStrSetLength
 004279C7    push        ebp
 004279C8    push        100
 004279CD    mov         ecx,dword ptr [ebp-14]
 004279D0    mov         ebx,dword ptr [ebp-18]
 004279D3    imul        ebx,dword ptr [ebp-1C]
 004279D7    mov         edx,ebx
 004279D9    mov         eax,dword ptr [ebp-4]
 004279DC    mov         eax,dword ptr [eax+40]
 004279DF    call        00427494
 004279E4    pop         ecx
 004279E5    mov         edx,ebx
 004279E7    add         edx,dword ptr [ebp-1C]
 004279EA    lea         eax,[ebp-10]
 004279ED    call        @LStrSetLength
 004279F2    mov         esi,dword ptr [ebp-10]
 004279F5    mov         eax,dword ptr [ebp-1C]
 004279F8    dec         eax
 004279F9    test        eax,eax
>004279FB    jl          00427A54
 004279FD    inc         eax
 004279FE    mov         dword ptr [ebp-30],eax
 00427A01    mov         dword ptr [ebp-20],0
 00427A08    mov         eax,dword ptr [ebp-4]
 00427A0B    mov         ebx,dword ptr [eax+40]
 00427A0E    mov         eax,dword ptr [ebp-18]
 00427A11    shl         eax,2
 00427A14    mov         edx,dword ptr [ebp-1C]
 00427A17    dec         edx
 00427A18    sub         edx,dword ptr [ebp-20]
 00427A1B    imul        edx
 00427A1D    add         ebx,eax
 00427A1F    mov         byte ptr [esi],0
 00427A22    inc         esi
 00427A23    mov         edi,dword ptr [ebp-18]
 00427A26    dec         edi
 00427A27    test        edi,edi
>00427A29    jl          00427A4C
 00427A2B    inc         edi
 00427A2C    mov         al,byte ptr [ebx+1]
 00427A2F    push        eax
 00427A30    mov         al,byte ptr [ebx]
 00427A32    push        eax
 00427A33    mov         eax,dword ptr [ebp-14]
 00427A36    mov         edx,eax
 00427A38    mov         cl,byte ptr [ebx+2]
 00427A3B    mov         eax,dword ptr [ebp-28]
 00427A3E    call        0042778C
 00427A43    mov         byte ptr [esi],al
 00427A45    inc         esi
 00427A46    add         ebx,4
 00427A49    dec         edi
>00427A4A    jne         00427A2C
 00427A4C    inc         dword ptr [ebp-20]
 00427A4F    dec         dword ptr [ebp-30]
>00427A52    jne         00427A08
 00427A54    push        ebp
 00427A55    mov         eax,dword ptr [ebp-10]
 00427A58    push        eax
 00427A59    lea         eax,[ebp-34]
 00427A5C    push        eax
 00427A5D    mov         ecx,dword ptr [ebp-14]
 00427A60    mov         edx,dword ptr [ebp-1C]
 00427A63    mov         eax,dword ptr [ebp-18]
 00427A66    call        00426800
 00427A6B    pop         ecx
 00427A6C    mov         edx,dword ptr [ebp-34]
 00427A6F    mov         eax,dword ptr [ebp-0C]
 00427A72    call        @LStrAsg
 00427A77    mov         eax,dword ptr [ebp-0C]
 00427A7A    cmp         dword ptr [eax],0
 00427A7D    sete        bl
 00427A80    test        bl,bl
>00427A82    jne         00427AEB
 00427A84    mov         al,byte ptr [ebp-5]
 00427A87    sub         al,2
>00427A89    je          00427A99
 00427A8B    dec         al
>00427A8D    je          00427AAE
 00427A8F    dec         al
>00427A91    je          00427AC3
 00427A93    dec         al
>00427A95    je          00427AD8
>00427A97    jmp         00427AEB
 00427A99    mov         eax,dword ptr [ebp-0C]
 00427A9C    mov         eax,dword ptr [eax]
 00427A9E    call        @DynArrayLength
 00427AA3    cmp         eax,0C800
>00427AA8    jle         00427AEB
 00427AAA    mov         bl,1
>00427AAC    jmp         00427AEB
 00427AAE    mov         eax,dword ptr [ebp-0C]
 00427AB1    mov         eax,dword ptr [eax]
 00427AB3    call        @DynArrayLength
 00427AB8    cmp         eax,19000
>00427ABD    jle         00427AEB
 00427ABF    mov         bl,1
>00427AC1    jmp         00427AEB
 00427AC3    mov         eax,dword ptr [ebp-0C]
 00427AC6    mov         eax,dword ptr [eax]
 00427AC8    call        @DynArrayLength
 00427ACD    cmp         eax,32000
>00427AD2    jle         00427AEB
 00427AD4    mov         bl,1
>00427AD6    jmp         00427AEB
 00427AD8    mov         eax,dword ptr [ebp-0C]
 00427ADB    mov         eax,dword ptr [eax]
 00427ADD    call        @DynArrayLength
 00427AE2    cmp         eax,4B000
>00427AE7    jle         00427AEB
 00427AE9    mov         bl,1
 00427AEB    test        bl,bl
>00427AED    je          00427C8E
 00427AF3    mov         eax,dword ptr [ebp-4]
 00427AF6    mov         ebx,dword ptr [eax+40]
 00427AF9    mov         eax,dword ptr [ebp-1C]
 00427AFC    imul        dword ptr [ebp-18]
 00427AFF    test        eax,eax
>00427B01    jle         00427B39
 00427B03    mov         dword ptr [ebp-30],eax
 00427B06    xor         eax,eax
 00427B08    mov         al,byte ptr [ebx+2]
 00427B0B    imul        eax,eax,4D
 00427B0E    xor         edx,edx
 00427B10    mov         dl,byte ptr [ebx+1]
 00427B13    imul        edx,edx,97
 00427B19    add         eax,edx
 00427B1B    xor         edx,edx
 00427B1D    mov         dl,byte ptr [ebx]
 00427B1F    imul        edx,edx,1C
 00427B22    add         eax,edx
 00427B24    shr         eax,8
 00427B27    mov         edx,eax
 00427B29    mov         byte ptr [ebx],dl
 00427B2B    mov         byte ptr [ebx+1],dl
 00427B2E    mov         byte ptr [ebx+2],dl
 00427B31    add         ebx,4
 00427B34    dec         dword ptr [ebp-30]
>00427B37    jne         00427B06
 00427B39    lea         eax,[ebp-28]
 00427B3C    call        004278A8
 00427B41    lea         ecx,[ebp-14]
 00427B44    mov         byte ptr [ebp-44],1C
 00427B48    mov         byte ptr [ebp-43],18
 00427B4C    mov         byte ptr [ebp-42],15
 00427B50    mov         byte ptr [ebp-41],13
 00427B54    mov         byte ptr [ebp-40],11
 00427B58    mov         byte ptr [ebp-3F],10
 00427B5C    mov         byte ptr [ebp-3E],0F
 00427B60    mov         byte ptr [ebp-3D],0F
 00427B64    mov         byte ptr [ebp-3C],0F
 00427B68    mov         byte ptr [ebp-3B],0F
 00427B6C    mov         byte ptr [ebp-3A],0E
 00427B70    mov         byte ptr [ebp-39],0E
 00427B74    mov         byte ptr [ebp-38],0E
 00427B78    mov         byte ptr [ebp-37],0E
 00427B7C    mov         byte ptr [ebp-36],0E
 00427B80    lea         eax,[ebp-44]
 00427B83    mov         edx,0E
 00427B88    call        0042784C
 00427B8D    mov         edx,dword ptr [ebp-18]
 00427B90    inc         edx
 00427B91    sar         edx,1
>00427B93    jns         00427B98
 00427B95    adc         edx,0
 00427B98    imul        edx,dword ptr [ebp-1C]
 00427B9C    add         edx,dword ptr [ebp-1C]
 00427B9F    lea         eax,[ebp-10]
 00427BA2    call        @LStrSetLength
 00427BA7    mov         esi,dword ptr [ebp-10]
 00427BAA    mov         eax,dword ptr [ebp-1C]
 00427BAD    dec         eax
 00427BAE    test        eax,eax
>00427BB0    jl          00427C3A
 00427BB6    inc         eax
 00427BB7    mov         dword ptr [ebp-30],eax
 00427BBA    mov         dword ptr [ebp-20],0
 00427BC1    mov         eax,dword ptr [ebp-4]
 00427BC4    mov         ebx,dword ptr [eax+40]
 00427BC7    mov         eax,dword ptr [ebp-1C]
 00427BCA    dec         eax
 00427BCB    sub         eax,dword ptr [ebp-20]
 00427BCE    imul        dword ptr [ebp-18]
 00427BD1    shl         eax,2
 00427BD4    add         ebx,eax
 00427BD6    mov         byte ptr [esi],0
 00427BD9    inc         esi
 00427BDA    mov         edi,dword ptr [ebp-18]
 00427BDD    dec         edi
 00427BDE    test        edi,edi
>00427BE0    jl          00427C2B
 00427BE2    inc         edi
 00427BE3    mov         dword ptr [ebp-24],0
 00427BEA    mov         eax,dword ptr [ebp-14]
 00427BED    mov         edx,eax
 00427BEF    mov         cl,byte ptr [ebx]
 00427BF1    mov         eax,dword ptr [ebp-28]
 00427BF4    call        004278E4
 00427BF9    and         eax,0FF
 00427BFE    mov         edx,dword ptr [ebp-24]
 00427C01    and         dl,1
 00427C04    test        dl,dl
>00427C06    je          00427C13
 00427C08    mov         dl,byte ptr [esi]
 00427C0A    and         dl,0F0
 00427C0D    add         dl,al
 00427C0F    mov         byte ptr [esi],dl
>00427C11    jmp         00427C18
 00427C13    shl         eax,4
 00427C16    mov         byte ptr [esi],al
 00427C18    mov         eax,dword ptr [ebp-24]
 00427C1B    and         al,1
 00427C1D    test        al,al
>00427C1F    je          00427C22
 00427C21    inc         esi
 00427C22    add         ebx,4
 00427C25    inc         dword ptr [ebp-24]
 00427C28    dec         edi
>00427C29    jne         00427BEA
 00427C2B    test        byte ptr [ebp-18],1
>00427C2F    je          00427C32
 00427C31    inc         esi
 00427C32    inc         dword ptr [ebp-20]
 00427C35    dec         dword ptr [ebp-30]
>00427C38    jne         00427BC1
 00427C3A    push        ebp
 00427C3B    mov         eax,dword ptr [ebp-10]
 00427C3E    push        eax
 00427C3F    lea         eax,[ebp-48]
 00427C42    push        eax
 00427C43    mov         ecx,dword ptr [ebp-14]
 00427C46    mov         edx,dword ptr [ebp-1C]
 00427C49    mov         eax,dword ptr [ebp-18]
 00427C4C    call        00426800
 00427C51    pop         ecx
 00427C52    mov         edx,dword ptr [ebp-48]
 00427C55    lea         eax,[ebp-2C]
 00427C58    call        @LStrLAsg
 00427C5D    cmp         dword ptr [ebp-2C],0
>00427C61    je          00427C8E
 00427C63    mov         eax,dword ptr [ebp-0C]
 00427C66    cmp         dword ptr [eax],0
>00427C69    je          00427C83
 00427C6B    mov         eax,dword ptr [ebp-2C]
 00427C6E    call        @DynArrayLength
 00427C73    mov         ebx,eax
 00427C75    mov         eax,dword ptr [ebp-0C]
 00427C78    mov         eax,dword ptr [eax]
 00427C7A    call        @DynArrayLength
 00427C7F    cmp         ebx,eax
>00427C81    jge         00427C8E
 00427C83    mov         eax,dword ptr [ebp-0C]
 00427C86    mov         edx,dword ptr [ebp-2C]
 00427C89    call        @LStrAsg
 00427C8E    xor         eax,eax
 00427C90    pop         edx
 00427C91    pop         ecx
 00427C92    pop         ecx
 00427C93    mov         dword ptr fs:[eax],edx
 00427C96    push        427CD6
 00427C9B    lea         eax,[ebp-48]
 00427C9E    call        @LStrClr
 00427CA3    lea         eax,[ebp-34]
 00427CA6    call        @LStrClr
 00427CAB    lea         eax,[ebp-2C]
 00427CAE    call        @LStrClr
 00427CB3    lea         eax,[ebp-28]
 00427CB6    mov         edx,dword ptr ds:[40869C];TDASmallInt
 00427CBC    call        @DynArrayClear
 00427CC1    lea         eax,[ebp-14]
 00427CC4    mov         edx,2
 00427CC9    call        @LStrArrayClr
 00427CCE    ret
>00427CCF    jmp         @HandleFinally
>00427CD4    jmp         00427C9B
 00427CD6    pop         edi
 00427CD7    pop         esi
 00427CD8    pop         ebx
 00427CD9    mov         esp,ebp
 00427CDB    pop         ebp
 00427CDC    ret
end;*}

//00427CE0
{*function sub_00427CE0(?:?; ?:?):?;
begin
 00427CE0    push        ebp
 00427CE1    mov         ebp,esp
 00427CE3    xor         ecx,ecx
 00427CE5    push        ecx
 00427CE6    push        ecx
 00427CE7    push        ecx
 00427CE8    push        ecx
 00427CE9    push        ebx
 00427CEA    push        esi
 00427CEB    push        edi
 00427CEC    mov         edi,edx
 00427CEE    mov         ebx,eax
 00427CF0    xor         eax,eax
 00427CF2    push        ebp
 00427CF3    push        427DEE
 00427CF8    push        dword ptr fs:[eax]
 00427CFB    mov         dword ptr fs:[eax],esp
 00427CFE    call        kernel32.GetVersion
 00427D03    test        eax,80000000
>00427D08    jne         00427D2A
 00427D0A    push        0
 00427D0C    push        0
 00427D0E    push        2
 00427D10    push        0
 00427D12    push        0
 00427D14    push        40000000
 00427D19    mov         eax,edi
 00427D1B    call        @WStrToPWChar
 00427D20    push        eax
 00427D21    call        kernel32.CreateFileW
 00427D26    mov         esi,eax
>00427D28    jmp         00427D53
 00427D2A    push        0
 00427D2C    push        0
 00427D2E    push        2
 00427D30    push        0
 00427D32    push        0
 00427D34    push        40000000
 00427D39    lea         eax,[ebp-0C]
 00427D3C    mov         edx,edi
 00427D3E    call        @LStrFromWStr
 00427D43    mov         eax,dword ptr [ebp-0C]
 00427D46    call        @LStrToPChar
 00427D4B    push        eax
 00427D4C    call        kernel32.CreateFileA
 00427D51    mov         esi,eax
 00427D53    cmp         esi,0FFFFFFFF
>00427D56    je          00427DD1
 00427D58    lea         edx,[ebp-8]
 00427D5B    mov         eax,ebx
 00427D5D    call        00426514
 00427D62    push        0
 00427D64    lea         eax,[ebp-4]
 00427D67    push        eax
 00427D68    mov         eax,dword ptr [ebp-8]
 00427D6B    call        @DynArrayLength
 00427D70    push        eax
 00427D71    mov         eax,dword ptr [ebp-8]
 00427D74    push        eax
 00427D75    push        esi
 00427D76    call        kernel32.WriteFile
 00427D7B    test        eax,eax
>00427D7D    je          00427D8C
 00427D7F    mov         eax,dword ptr [ebp-8]
 00427D82    call        @DynArrayLength
 00427D87    cmp         eax,dword ptr [ebp-4]
>00427D8A    je          00427D90
 00427D8C    xor         ebx,ebx
>00427D8E    jmp         00427D92
 00427D90    mov         bl,1
 00427D92    push        esi
 00427D93    call        kernel32.CloseHandle
 00427D98    test        bl,bl
>00427D9A    jne         00427DD3
 00427D9C    call        kernel32.GetVersion
 00427DA1    test        eax,80000000
>00427DA6    jne         00427DB7
 00427DA8    mov         eax,edi
 00427DAA    call        @WStrToPWChar
 00427DAF    push        eax
 00427DB0    call        kernel32.DeleteFileW
>00427DB5    jmp         00427DD3
 00427DB7    lea         eax,[ebp-10]
 00427DBA    mov         edx,edi
 00427DBC    call        @LStrFromWStr
 00427DC1    mov         eax,dword ptr [ebp-10]
 00427DC4    call        @LStrToPChar
 00427DC9    push        eax
 00427DCA    call        kernel32.DeleteFileA
>00427DCF    jmp         00427DD3
 00427DD1    xor         ebx,ebx
 00427DD3    xor         eax,eax
 00427DD5    pop         edx
 00427DD6    pop         ecx
 00427DD7    pop         ecx
 00427DD8    mov         dword ptr fs:[eax],edx
 00427DDB    push        427DF5
 00427DE0    lea         eax,[ebp-10]
 00427DE3    mov         edx,3
 00427DE8    call        @LStrArrayClr
 00427DED    ret
>00427DEE    jmp         @HandleFinally
>00427DF3    jmp         00427DE0
 00427DF5    mov         eax,ebx
 00427DF7    pop         edi
 00427DF8    pop         esi
 00427DF9    pop         ebx
 00427DFA    mov         esp,ebp
 00427DFC    pop         ebp
 00427DFD    ret
end;*}

//00427E00
{*function sub_00427E00(?:?; ?:?; ?:?):?;
begin
 00427E00    push        ebp
 00427E01    mov         ebp,esp
 00427E03    push        0
 00427E05    push        0
 00427E07    push        0
 00427E09    push        0
 00427E0B    push        0
 00427E0D    push        ebx
 00427E0E    push        esi
 00427E0F    push        edi
 00427E10    mov         ebx,ecx
 00427E12    mov         edi,edx
 00427E14    mov         esi,eax
 00427E16    xor         eax,eax
 00427E18    push        ebp
 00427E19    push        427F2D
 00427E1E    push        dword ptr fs:[eax]
 00427E21    mov         dword ptr fs:[eax],esp
 00427E24    mov         byte ptr [ebp-1],0
 00427E28    lea         ecx,[ebp-8]
 00427E2B    mov         edx,ebx
 00427E2D    mov         eax,esi
 00427E2F    call        0042794C
 00427E34    cmp         dword ptr [ebp-8],0
>00427E38    je          00427F0A
 00427E3E    call        kernel32.GetVersion
 00427E43    test        eax,80000000
>00427E48    jne         00427E6A
 00427E4A    push        0
 00427E4C    push        0
 00427E4E    push        2
 00427E50    push        0
 00427E52    push        0
 00427E54    push        40000000
 00427E59    mov         eax,edi
 00427E5B    call        @WStrToPWChar
 00427E60    push        eax
 00427E61    call        kernel32.CreateFileW
 00427E66    mov         ebx,eax
>00427E68    jmp         00427E93
 00427E6A    push        0
 00427E6C    push        0
 00427E6E    push        2
 00427E70    push        0
 00427E72    push        0
 00427E74    push        40000000
 00427E79    lea         eax,[ebp-10]
 00427E7C    mov         edx,edi
 00427E7E    call        @LStrFromWStr
 00427E83    mov         eax,dword ptr [ebp-10]
 00427E86    call        @LStrToPChar
 00427E8B    push        eax
 00427E8C    call        kernel32.CreateFileA
 00427E91    mov         ebx,eax
 00427E93    cmp         ebx,0FFFFFFFF
>00427E96    je          00427F0A
 00427E98    push        0
 00427E9A    lea         eax,[ebp-0C]
 00427E9D    push        eax
 00427E9E    mov         eax,dword ptr [ebp-8]
 00427EA1    call        @DynArrayLength
 00427EA6    push        eax
 00427EA7    mov         eax,dword ptr [ebp-8]
 00427EAA    push        eax
 00427EAB    push        ebx
 00427EAC    call        kernel32.WriteFile
 00427EB1    test        eax,eax
>00427EB3    je          00427EC2
 00427EB5    mov         eax,dword ptr [ebp-8]
 00427EB8    call        @DynArrayLength
 00427EBD    cmp         eax,dword ptr [ebp-0C]
>00427EC0    je          00427EC6
 00427EC2    xor         eax,eax
>00427EC4    jmp         00427EC8
 00427EC6    mov         al,1
 00427EC8    mov         byte ptr [ebp-1],al
 00427ECB    push        ebx
 00427ECC    call        kernel32.CloseHandle
 00427ED1    cmp         byte ptr [ebp-1],0
>00427ED5    jne         00427F0A
 00427ED7    call        kernel32.GetVersion
 00427EDC    test        eax,80000000
>00427EE1    jne         00427EF2
 00427EE3    mov         eax,edi
 00427EE5    call        @WStrToPWChar
 00427EEA    push        eax
 00427EEB    call        kernel32.DeleteFileW
>00427EF0    jmp         00427F0A
 00427EF2    lea         eax,[ebp-14]
 00427EF5    mov         edx,edi
 00427EF7    call        @LStrFromWStr
 00427EFC    mov         eax,dword ptr [ebp-14]
 00427EFF    call        @LStrToPChar
 00427F04    push        eax
 00427F05    call        kernel32.DeleteFileA
 00427F0A    xor         eax,eax
 00427F0C    pop         edx
 00427F0D    pop         ecx
 00427F0E    pop         ecx
 00427F0F    mov         dword ptr fs:[eax],edx
 00427F12    push        427F34
 00427F17    lea         eax,[ebp-14]
 00427F1A    mov         edx,2
 00427F1F    call        @LStrArrayClr
 00427F24    lea         eax,[ebp-8]
 00427F27    call        @LStrClr
 00427F2C    ret
>00427F2D    jmp         @HandleFinally
>00427F32    jmp         00427F17
 00427F34    mov         al,byte ptr [ebp-1]
 00427F37    pop         edi
 00427F38    pop         esi
 00427F39    pop         ebx
 00427F3A    mov         esp,ebp
 00427F3C    pop         ebp
 00427F3D    ret
end;*}

//00427F40
{*function sub_00427F40(?:?; ?:?):?;
begin
 00427F40    push        ebp
 00427F41    mov         ebp,esp
 00427F43    add         esp,0FFFFFFD0
 00427F46    push        ebx
 00427F47    push        esi
 00427F48    push        edi
 00427F49    mov         dword ptr [ebp-8],edx
 00427F4C    mov         dword ptr [ebp-4],eax
 00427F4F    mov         eax,dword ptr [ebp-8]
 00427F52    shl         eax,3
 00427F55    add         eax,4
 00427F58    push        eax
 00427F59    push        40
 00427F5B    call        kernel32.LocalAlloc
 00427F60    mov         dword ptr [ebp-0C],eax
 00427F63    mov         eax,dword ptr [ebp-0C]
 00427F66    mov         edx,dword ptr [ebp-8]
 00427F69    mov         dword ptr [eax],edx
 00427F6B    mov         eax,dword ptr [ebp-8]
 00427F6E    cmp         eax,dword ptr [ebp-4]
>00427F71    jge         004280E0
 00427F77    fild        dword ptr [ebp-8]
 00427F7A    fild        dword ptr [ebp-4]
 00427F7D    fdivp       st(1),st
 00427F7F    fstp        dword ptr [ebp-10]
 00427F82    wait
 00427F83    mov         eax,dword ptr [ebp-4]
 00427F86    shl         eax,2
 00427F89    cdq
 00427F8A    idiv        eax,dword ptr [ebp-8]
 00427F8D    inc         eax
 00427F8E    shl         eax,3
 00427F91    mov         dword ptr [ebp-1C],eax
 00427F94    mov         eax,dword ptr [ebp-8]
 00427F97    dec         eax
 00427F98    test        eax,eax
>00427F9A    jl          0042822F
 00427FA0    inc         eax
 00427FA1    mov         dword ptr [ebp-24],eax
 00427FA4    mov         dword ptr [ebp-20],0
 00427FAB    mov         eax,dword ptr [ebp-0C]
 00427FAE    mov         edx,dword ptr [ebp-20]
 00427FB1    lea         eax,[eax+edx*8+4]
 00427FB5    mov         dword ptr [ebp-28],eax
 00427FB8    mov         eax,dword ptr [ebp-1C]
 00427FBB    push        eax
 00427FBC    push        40
 00427FBE    call        kernel32.LocalAlloc
 00427FC3    mov         ebx,eax
 00427FC5    mov         eax,dword ptr [ebp-28]
 00427FC8    mov         dword ptr [eax+4],ebx
 00427FCB    mov         edi,ebx
 00427FCD    mov         eax,dword ptr [ebp-20]
 00427FD0    sub         eax,2
 00427FD3    imul        dword ptr [ebp-4]
 00427FD6    sub         eax,dword ptr [ebp-8]
 00427FD9    inc         eax
 00427FDA    cdq
 00427FDB    idiv        eax,dword ptr [ebp-8]
 00427FDE    mov         ebx,eax
 00427FE0    mov         eax,dword ptr [ebp-20]
 00427FE3    add         eax,2
 00427FE6    imul        dword ptr [ebp-4]
 00427FE9    add         eax,dword ptr [ebp-8]
 00427FEC    dec         eax
 00427FED    cdq
 00427FEE    idiv        eax,dword ptr [ebp-8]
 00427FF1    mov         esi,eax
 00427FF3    sub         esi,ebx
>00427FF5    jl          004280C0
 00427FFB    inc         esi
 00427FFC    mov         dword ptr [ebp-30],ebx
 00427FFF    fild        dword ptr [ebp-30]
 00428002    fmul        dword ptr [ebp-10]
 00428005    fild        dword ptr [ebp-20]
 00428008    fsubrp      st(1),st
 0042800A    fabs
 0042800C    fstp        dword ptr [ebp-18]
 0042800F    wait
 00428010    fld         dword ptr [ebp-18]
 00428013    fcomp       dword ptr ds:[42823C];2:Single
 00428019    fnstsw      al
 0042801B    sahf
>0042801C    jae         004280B8
 00428022    fld         dword ptr [ebp-18]
 00428025    fcomp       dword ptr ds:[428240];1:Single
 0042802B    fnstsw      al
 0042802D    sahf
>0042802E    jae         00428060
 00428030    fld         tbyte ptr ds:[428244];1.16666666666667:Extended
 00428036    fmul        dword ptr [ebp-18]
 00428039    fsub        dword ptr ds:[42823C];2:Single
 0042803F    fmul        dword ptr [ebp-18]
 00428042    fmul        dword ptr [ebp-18]
 00428045    fld         tbyte ptr ds:[428250];0.888888888888889:Extended
 0042804B    faddp       st(1),st
 0042804D    fmul        dword ptr [ebp-10]
 00428050    fmul        dword ptr ds:[42825C];65536:Single
 00428056    call        @ROUND
 0042805B    mov         dword ptr [edi+4],eax
>0042805E    jmp         00428096
 00428060    fld         tbyte ptr ds:[428260];-0.388888888888889:Extended
 00428066    fmul        dword ptr [ebp-18]
 00428069    fadd        dword ptr ds:[42823C];2:Single
 0042806F    fmul        dword ptr [ebp-18]
 00428072    fld         tbyte ptr ds:[42826C];3.33333333333333:Extended
 00428078    fsubp       st(1),st
 0042807A    fmul        dword ptr [ebp-18]
 0042807D    fld         tbyte ptr ds:[428278];1.77777777777778:Extended
 00428083    faddp       st(1),st
 00428085    fmul        dword ptr [ebp-10]
 00428088    fmul        dword ptr ds:[42825C];65536:Single
 0042808E    call        @ROUND
 00428093    mov         dword ptr [edi+4],eax
 00428096    test        ebx,ebx
>00428098    jge         004280A2
 0042809A    mov         eax,ebx
 0042809C    neg         eax
 0042809E    mov         dword ptr [edi],eax
>004280A0    jmp         004280B5
 004280A2    cmp         ebx,dword ptr [ebp-4]
>004280A5    jl          004280B3
 004280A7    mov         eax,dword ptr [ebp-4]
 004280AA    add         eax,eax
 004280AC    sub         eax,ebx
 004280AE    dec         eax
 004280AF    mov         dword ptr [edi],eax
>004280B1    jmp         004280B5
 004280B3    mov         dword ptr [edi],ebx
 004280B5    add         edi,8
 004280B8    inc         ebx
 004280B9    dec         esi
>004280BA    jne         00427FFC
 004280C0    mov         eax,dword ptr [ebp-28]
 004280C3    sub         edi,dword ptr [eax+4]
 004280C6    shr         edi,3
 004280C9    dec         edi
 004280CA    mov         eax,dword ptr [ebp-28]
 004280CD    mov         dword ptr [eax],edi
 004280CF    inc         dword ptr [ebp-20]
 004280D2    dec         dword ptr [ebp-24]
>004280D5    jne         00427FAB
>004280DB    jmp         0042822F
 004280E0    fild        dword ptr [ebp-4]
 004280E3    fild        dword ptr [ebp-8]
 004280E6    fdivp       st(1),st
 004280E8    fstp        dword ptr [ebp-10]
 004280EB    wait
 004280EC    mov         eax,dword ptr [ebp-8]
 004280EF    dec         eax
 004280F0    test        eax,eax
>004280F2    jl          0042822F
 004280F8    inc         eax
 004280F9    mov         dword ptr [ebp-24],eax
 004280FC    mov         dword ptr [ebp-20],0
 00428103    mov         eax,dword ptr [ebp-0C]
 00428106    mov         edx,dword ptr [ebp-20]
 00428109    lea         eax,[eax+edx*8+4]
 0042810D    mov         dword ptr [ebp-2C],eax
 00428110    push        28
 00428112    push        40
 00428114    call        kernel32.LocalAlloc
 00428119    mov         ebx,eax
 0042811B    mov         eax,dword ptr [ebp-2C]
 0042811E    mov         dword ptr [eax+4],ebx
 00428121    mov         edi,ebx
 00428123    fild        dword ptr [ebp-20]
 00428126    fmul        dword ptr [ebp-10]
 00428129    fstp        dword ptr [ebp-14]
 0042812C    wait
 0042812D    mov         ecx,dword ptr [ebp-20]
 00428130    imul        ecx,dword ptr [ebp-4]
 00428134    mov         eax,ecx
 00428136    mov         ebx,dword ptr [ebp-8]
 00428139    lea         ebx,[ebx+ebx*2]
 0042813C    sub         eax,ebx
 0042813E    inc         eax
 0042813F    cdq
 00428140    idiv        eax,dword ptr [ebp-8]
 00428143    push        eax
 00428144    mov         eax,ecx
 00428146    add         eax,ebx
 00428148    dec         eax
 00428149    cdq
 0042814A    idiv        eax,dword ptr [ebp-8]
 0042814D    mov         esi,eax
 0042814F    pop         eax
 00428150    sub         esi,eax
>00428152    jl          00428214
 00428158    inc         esi
 00428159    mov         ebx,eax
 0042815B    mov         dword ptr [ebp-30],ebx
 0042815E    fild        dword ptr [ebp-30]
 00428161    fsubr       dword ptr [ebp-14]
 00428164    fabs
 00428166    fstp        dword ptr [ebp-18]
 00428169    wait
 0042816A    fld         dword ptr [ebp-18]
 0042816D    fcomp       dword ptr ds:[42823C];2:Single
 00428173    fnstsw      al
 00428175    sahf
>00428176    jae         0042820C
 0042817C    fld         dword ptr [ebp-18]
 0042817F    fcomp       dword ptr ds:[428240];1:Single
 00428185    fnstsw      al
 00428187    sahf
>00428188    jae         004281B7
 0042818A    fld         tbyte ptr ds:[428244];1.16666666666667:Extended
 00428190    fmul        dword ptr [ebp-18]
 00428193    fsub        dword ptr ds:[42823C];2:Single
 00428199    fmul        dword ptr [ebp-18]
 0042819C    fmul        dword ptr [ebp-18]
 0042819F    fld         tbyte ptr ds:[428250];0.888888888888889:Extended
 004281A5    faddp       st(1),st
 004281A7    fmul        dword ptr ds:[42825C];65536:Single
 004281AD    call        @ROUND
 004281B2    mov         dword ptr [edi+4],eax
>004281B5    jmp         004281EA
 004281B7    fld         tbyte ptr ds:[428260];-0.388888888888889:Extended
 004281BD    fmul        dword ptr [ebp-18]
 004281C0    fadd        dword ptr ds:[42823C];2:Single
 004281C6    fmul        dword ptr [ebp-18]
 004281C9    fld         tbyte ptr ds:[42826C];3.33333333333333:Extended
 004281CF    fsubp       st(1),st
 004281D1    fmul        dword ptr [ebp-18]
 004281D4    fld         tbyte ptr ds:[428278];1.77777777777778:Extended
 004281DA    faddp       st(1),st
 004281DC    fmul        dword ptr ds:[42825C];65536:Single
 004281E2    call        @ROUND
 004281E7    mov         dword ptr [edi+4],eax
 004281EA    test        ebx,ebx
>004281EC    jge         004281F6
 004281EE    mov         eax,ebx
 004281F0    neg         eax
 004281F2    mov         dword ptr [edi],eax
>004281F4    jmp         00428209
 004281F6    cmp         ebx,dword ptr [ebp-4]
>004281F9    jl          00428207
 004281FB    mov         eax,dword ptr [ebp-4]
 004281FE    add         eax,eax
 00428200    sub         eax,ebx
 00428202    dec         eax
 00428203    mov         dword ptr [edi],eax
>00428205    jmp         00428209
 00428207    mov         dword ptr [edi],ebx
 00428209    add         edi,8
 0042820C    inc         ebx
 0042820D    dec         esi
>0042820E    jne         0042815B
 00428214    mov         eax,dword ptr [ebp-2C]
 00428217    sub         edi,dword ptr [eax+4]
 0042821A    shr         edi,3
 0042821D    dec         edi
 0042821E    mov         eax,dword ptr [ebp-2C]
 00428221    mov         dword ptr [eax],edi
 00428223    inc         dword ptr [ebp-20]
 00428226    dec         dword ptr [ebp-24]
>00428229    jne         00428103
 0042822F    mov         eax,dword ptr [ebp-0C]
 00428232    pop         edi
 00428233    pop         esi
 00428234    pop         ebx
 00428235    mov         esp,ebp
 00428237    pop         ebp
 00428238    ret
end;*}

//00428284
{*procedure sub_00428284(?:?);
begin
 00428284    push        ebx
 00428285    push        esi
 00428286    push        edi
 00428287    mov         edi,eax
 00428289    mov         ebx,dword ptr [edi]
 0042828B    dec         ebx
 0042828C    test        ebx,ebx
>0042828E    jl          004282A1
 00428290    inc         ebx
 00428291    xor         esi,esi
 00428293    mov         eax,dword ptr [edi+esi*8+8]
 00428297    push        eax
 00428298    call        kernel32.LocalFree
 0042829D    inc         esi
 0042829E    dec         ebx
>0042829F    jne         00428293
 004282A1    push        edi
 004282A2    call        kernel32.LocalFree
 004282A7    pop         edi
 004282A8    pop         esi
 004282A9    pop         ebx
 004282AA    ret
end;*}

//004282AC
{*procedure sub_004282AC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004282AC    push        ebp
 004282AD    mov         ebp,esp
 004282AF    add         esp,0FFFFFFC0
 004282B2    push        ebx
 004282B3    push        esi
 004282B4    push        edi
 004282B5    mov         ebx,ecx
 004282B7    mov         dword ptr [ebp-4],edx
 004282BA    mov         esi,eax
 004282BC    mov         edx,ebx
 004282BE    mov         eax,esi
 004282C0    call        00427F40
 004282C5    mov         dword ptr [ebp-10],eax
 004282C8    mov         edx,dword ptr [ebp+10]
 004282CB    mov         eax,dword ptr [ebp-4]
 004282CE    call        00427F40
 004282D3    mov         dword ptr [ebp-14],eax
 004282D6    mov         eax,dword ptr [ebp-4]
 004282D9    shl         eax,2
 004282DC    mov         edx,dword ptr [ebp-4]
 004282DF    add         eax,edx
 004282E1    push        eax
 004282E2    push        40
 004282E4    call        kernel32.LocalAlloc
 004282E9    mov         dword ptr [ebp-34],eax
 004282EC    mov         eax,dword ptr [ebp+0C]
 004282EF    mov         dword ptr [ebp-20],eax
 004282F2    mov         eax,dword ptr [ebp+8]
 004282F5    mov         dword ptr [ebp-24],eax
 004282F8    mov         eax,esi
 004282FA    shl         eax,2
 004282FD    mov         dword ptr [ebp-28],eax
 00428300    mov         eax,ebx
 00428302    shl         eax,2
 00428305    sub         eax,2
 00428308    mov         dword ptr [ebp-2C],eax
 0042830B    dec         ebx
 0042830C    test        ebx,ebx
>0042830E    jl          00428539
 00428314    inc         ebx
 00428315    mov         dword ptr [ebp-3C],ebx
 00428318    mov         dword ptr [ebp-8],0
 0042831F    mov         eax,dword ptr [ebp-34]
 00428322    mov         dword ptr [ebp-38],eax
 00428325    mov         eax,dword ptr [ebp-20]
 00428328    mov         dword ptr [ebp-30],eax
 0042832B    mov         eax,dword ptr [ebp-4]
 0042832E    dec         eax
 0042832F    test        eax,eax
>00428331    jl          00428423
 00428337    inc         eax
 00428338    mov         dword ptr [ebp-40],eax
 0042833B    xor         esi,esi
 0042833D    xor         eax,eax
 0042833F    mov         dword ptr [ebp-18],eax
 00428342    xor         eax,eax
 00428344    mov         dword ptr [ebp-1C],eax
 00428347    mov         eax,dword ptr [ebp-10]
 0042834A    mov         edx,dword ptr [ebp-8]
 0042834D    mov         edx,dword ptr [eax+edx*8+8]
 00428351    mov         eax,dword ptr [ebp-10]
 00428354    mov         ecx,dword ptr [ebp-8]
 00428357    mov         ecx,dword ptr [eax+ecx*8+4]
 0042835B    test        ecx,ecx
>0042835D    jl          00428390
 0042835F    inc         ecx
 00428360    mov         eax,dword ptr [edx+4]
 00428363    mov         ebx,dword ptr [edx]
 00428365    shl         ebx,2
 00428368    mov         edi,dword ptr [ebp-30]
 0042836B    lea         ebx,[edi+ebx]
 0042836E    movzx       edi,byte ptr [ebx]
 00428371    imul        edi,eax
 00428374    add         esi,edi
 00428376    movzx       edi,byte ptr [ebx+1]
 0042837A    imul        edi,eax
 0042837D    add         dword ptr [ebp-18],edi
 00428380    movzx       ebx,byte ptr [ebx+2]
 00428384    imul        ebx,eax
 00428387    add         dword ptr [ebp-1C],ebx
 0042838A    add         edx,8
 0042838D    dec         ecx
>0042838E    jne         00428360
 00428390    test        esi,esi
>00428392    jge         0042839C
 00428394    mov         eax,dword ptr [ebp-38]
 00428397    mov         byte ptr [eax],0
>0042839A    jmp         004283B6
 0042839C    cmp         esi,0FF0000
>004283A2    jle         004283AC
 004283A4    mov         eax,dword ptr [ebp-38]
 004283A7    mov         byte ptr [eax],0FF
>004283AA    jmp         004283B6
 004283AC    mov         eax,esi
 004283AE    shr         eax,10
 004283B1    mov         edx,dword ptr [ebp-38]
 004283B4    mov         byte ptr [edx],al
 004283B6    inc         dword ptr [ebp-38]
 004283B9    cmp         dword ptr [ebp-18],0
>004283BD    jge         004283C7
 004283BF    mov         eax,dword ptr [ebp-38]
 004283C2    mov         byte ptr [eax],0
>004283C5    jmp         004283E3
 004283C7    cmp         dword ptr [ebp-18],0FF0000
>004283CE    jle         004283D8
 004283D0    mov         eax,dword ptr [ebp-38]
 004283D3    mov         byte ptr [eax],0FF
>004283D6    jmp         004283E3
 004283D8    mov         eax,dword ptr [ebp-18]
 004283DB    shr         eax,10
 004283DE    mov         edx,dword ptr [ebp-38]
 004283E1    mov         byte ptr [edx],al
 004283E3    inc         dword ptr [ebp-38]
 004283E6    cmp         dword ptr [ebp-1C],0
>004283EA    jge         004283F4
 004283EC    mov         eax,dword ptr [ebp-38]
 004283EF    mov         byte ptr [eax],0
>004283F2    jmp         00428410
 004283F4    cmp         dword ptr [ebp-1C],0FF0000
>004283FB    jle         00428405
 004283FD    mov         eax,dword ptr [ebp-38]
 00428400    mov         byte ptr [eax],0FF
>00428403    jmp         00428410
 00428405    mov         eax,dword ptr [ebp-1C]
 00428408    shr         eax,10
 0042840B    mov         edx,dword ptr [ebp-38]
 0042840E    mov         byte ptr [edx],al
 00428410    add         dword ptr [ebp-38],2
 00428414    mov         eax,dword ptr [ebp-28]
 00428417    add         dword ptr [ebp-30],eax
 0042841A    dec         dword ptr [ebp-40]
>0042841D    jne         0042833B
 00428423    mov         eax,dword ptr [ebp-8]
 00428426    shl         eax,2
 00428429    add         eax,dword ptr [ebp-24]
 0042842C    mov         dword ptr [ebp-38],eax
 0042842F    mov         eax,dword ptr [ebp+10]
 00428432    dec         eax
 00428433    test        eax,eax
>00428435    jl          0042852D
 0042843B    inc         eax
 0042843C    mov         dword ptr [ebp-40],eax
 0042843F    mov         dword ptr [ebp-0C],0
 00428446    xor         esi,esi
 00428448    xor         eax,eax
 0042844A    mov         dword ptr [ebp-18],eax
 0042844D    xor         eax,eax
 0042844F    mov         dword ptr [ebp-1C],eax
 00428452    mov         eax,dword ptr [ebp-14]
 00428455    mov         edx,dword ptr [ebp-0C]
 00428458    mov         edx,dword ptr [eax+edx*8+8]
 0042845C    mov         eax,dword ptr [ebp-14]
 0042845F    mov         ecx,dword ptr [ebp-0C]
 00428462    mov         ecx,dword ptr [eax+ecx*8+4]
 00428466    test        ecx,ecx
>00428468    jl          0042849B
 0042846A    inc         ecx
 0042846B    mov         eax,dword ptr [edx+4]
 0042846E    mov         ebx,dword ptr [edx]
 00428470    shl         ebx,2
 00428473    mov         edi,dword ptr [ebp-34]
 00428476    lea         ebx,[edi+ebx]
 00428479    movzx       edi,byte ptr [ebx]
 0042847C    imul        edi,eax
 0042847F    add         esi,edi
 00428481    movzx       edi,byte ptr [ebx+1]
 00428485    imul        edi,eax
 00428488    add         dword ptr [ebp-18],edi
 0042848B    movzx       ebx,byte ptr [ebx+2]
 0042848F    imul        ebx,eax
 00428492    add         dword ptr [ebp-1C],ebx
 00428495    add         edx,8
 00428498    dec         ecx
>00428499    jne         0042846B
 0042849B    test        esi,esi
>0042849D    jge         004284A7
 0042849F    mov         eax,dword ptr [ebp-38]
 004284A2    mov         byte ptr [eax],0
>004284A5    jmp         004284C1
 004284A7    cmp         esi,0FF0000
>004284AD    jle         004284B7
 004284AF    mov         eax,dword ptr [ebp-38]
 004284B2    mov         byte ptr [eax],0FF
>004284B5    jmp         004284C1
 004284B7    mov         eax,esi
 004284B9    shr         eax,10
 004284BC    mov         edx,dword ptr [ebp-38]
 004284BF    mov         byte ptr [edx],al
 004284C1    inc         dword ptr [ebp-38]
 004284C4    cmp         dword ptr [ebp-18],0
>004284C8    jge         004284D2
 004284CA    mov         eax,dword ptr [ebp-38]
 004284CD    mov         byte ptr [eax],0
>004284D0    jmp         004284EE
 004284D2    cmp         dword ptr [ebp-18],0FF0000
>004284D9    jle         004284E3
 004284DB    mov         eax,dword ptr [ebp-38]
 004284DE    mov         byte ptr [eax],0FF
>004284E1    jmp         004284EE
 004284E3    mov         eax,dword ptr [ebp-18]
 004284E6    shr         eax,10
 004284E9    mov         edx,dword ptr [ebp-38]
 004284EC    mov         byte ptr [edx],al
 004284EE    inc         dword ptr [ebp-38]
 004284F1    cmp         dword ptr [ebp-1C],0
>004284F5    jge         004284FF
 004284F7    mov         eax,dword ptr [ebp-38]
 004284FA    mov         byte ptr [eax],0
>004284FD    jmp         0042851B
 004284FF    cmp         dword ptr [ebp-1C],0FF0000
>00428506    jle         00428510
 00428508    mov         eax,dword ptr [ebp-38]
 0042850B    mov         byte ptr [eax],0FF
>0042850E    jmp         0042851B
 00428510    mov         eax,dword ptr [ebp-1C]
 00428513    shr         eax,10
 00428516    mov         edx,dword ptr [ebp-38]
 00428519    mov         byte ptr [edx],al
 0042851B    mov         eax,dword ptr [ebp-2C]
 0042851E    add         dword ptr [ebp-38],eax
 00428521    inc         dword ptr [ebp-0C]
 00428524    dec         dword ptr [ebp-40]
>00428527    jne         00428446
 0042852D    inc         dword ptr [ebp-8]
 00428530    dec         dword ptr [ebp-3C]
>00428533    jne         0042831F
 00428539    mov         eax,dword ptr [ebp-34]
 0042853C    push        eax
 0042853D    call        kernel32.LocalFree
 00428542    mov         eax,dword ptr [ebp-10]
 00428545    call        00428284
 0042854A    mov         eax,dword ptr [ebp-14]
 0042854D    call        00428284
 00428552    pop         edi
 00428553    pop         esi
 00428554    pop         ebx
 00428555    mov         esp,ebp
 00428557    pop         ebp
 00428558    ret         0C
end;*}

//0042855C
{*procedure sub_0042855C(?:?; ?:?; ?:?; ?:?);
begin
 0042855C    push        ebp
 0042855D    mov         ebp,esp
 0042855F    add         esp,0FFFFFFC4
 00428562    push        ebx
 00428563    push        esi
 00428564    push        edi
 00428565    mov         edi,ecx
 00428567    mov         esi,edx
 00428569    mov         ebx,eax
 0042856B    mov         eax,dword ptr [ebx+14]
 0042856E    imul        esi
 00428570    cdq
 00428571    idiv        eax,dword ptr [ebx+10]
 00428574    mov         ecx,eax
 00428576    mov         eax,dword ptr [ebx+10]
 00428579    imul        edi
 0042857B    cdq
 0042857C    idiv        eax,dword ptr [ebx+14]
 0042857F    mov         dword ptr [ebp-14],eax
 00428582    cmp         edi,ecx
>00428584    jl          0042858B
 00428586    cmp         esi,dword ptr [ebp-14]
>00428589    jge         004285AA
 0042858B    mov         eax,dword ptr [ebx+10]
 0042858E    shl         eax,10
 00428591    cdq
 00428592    idiv        eax,esi
 00428594    push        eax
 00428595    mov         eax,dword ptr [ebx+14]
 00428598    shl         eax,10
 0042859B    cdq
 0042859C    idiv        eax,edi
 0042859E    pop         edx
 0042859F    cmp         edx,eax
>004285A1    jle         004285A7
 004285A3    mov         edi,ecx
>004285A5    jmp         004285AA
 004285A7    mov         esi,dword ptr [ebp-14]
 004285AA    lea         eax,[ebp-4]
 004285AD    push        eax
 004285AE    lea         eax,[ebp-8]
 004285B1    push        eax
 004285B2    lea         eax,[ebp-0C]
 004285B5    push        eax
 004285B6    lea         eax,[ebp-10]
 004285B9    push        eax
 004285BA    lea         ecx,[ebp-3C]
 004285BD    mov         edx,edi
 004285BF    mov         eax,esi
 004285C1    call        00426360
 004285C6    test        al,al
>004285C8    je          00428612
 004285CA    push        edi
 004285CB    mov         eax,dword ptr [ebx+40]
 004285CE    push        eax
 004285CF    mov         eax,dword ptr [ebp-10]
 004285D2    push        eax
 004285D3    mov         ecx,esi
 004285D5    mov         edx,dword ptr [ebx+14]
 004285D8    mov         eax,dword ptr [ebx+10]
 004285DB    call        004282AC
 004285E0    mov         eax,dword ptr [ebp-4]
 004285E3    push        eax
 004285E4    mov         eax,dword ptr [ebp-8]
 004285E7    push        eax
 004285E8    mov         eax,dword ptr [ebp-0C]
 004285EB    push        eax
 004285EC    mov         eax,dword ptr [ebp-10]
 004285EF    push        eax
 004285F0    lea         ecx,[ebp-3C]
 004285F3    mov         dl,1
 004285F5    mov         eax,[00426308];TINVBitmap
 004285FA    call        TINVBitmap.Create;TINVBitmap.Create
 004285FF    mov         edx,eax
 00428601    test        edx,edx
>00428603    je          00428608
 00428605    sub         edx,0FFFFFFBC
 00428608    mov         eax,dword ptr [ebp+8]
 0042860B    call        @IntfCopy
>00428610    jmp         0042861A
 00428612    mov         eax,dword ptr [ebp+8]
 00428615    call        @IntfClear
 0042861A    pop         edi
 0042861B    pop         esi
 0042861C    pop         ebx
 0042861D    mov         esp,ebp
 0042861F    pop         ebp
 00428620    ret         4
end;*}

//004287CC
{*procedure sub_004287CC(?:?; ?:?);
begin
 004287CC    push        ebp
 004287CD    mov         ebp,esp
 004287CF    add         esp,0FFFFFFD8
 004287D2    push        ebx
 004287D3    push        esi
 004287D4    mov         esi,eax
 004287D6    lea         eax,[ebp-14]
 004287D9    mov         edx,14
 004287DE    call        00408130
 004287E3    mov         dword ptr [ebp-14],14
 004287EA    push        4288D4
 004287EF    push        4288E4;'user32.dll'
 004287F4    call        kernel32.GetModuleHandleA
 004287F9    push        eax
 004287FA    call        kernel32.GetProcAddress
 004287FF    mov         ebx,eax
 00428801    test        ebx,ebx
>00428803    je          0042880F
 00428805    lea         eax,[ebp-14]
 00428808    push        eax
 00428809    call        ebx
 0042880B    test        eax,eax
>0042880D    jne         00428865
 0042880F    lea         eax,[ebp-8]
 00428812    push        eax
 00428813    call        user32.GetCursorPos
 00428818    test        eax,eax
>0042881A    je          00428865
 0042881C    push        dword ptr [ebp-4]
 0042881F    push        dword ptr [ebp-8]
 00428822    call        user32.WindowFromPoint
 00428827    test        eax,eax
>00428829    je          00428837
 0042882B    push        0
 0042882D    push        eax
 0042882E    call        user32.GetWindowThreadProcessId
 00428833    mov         ebx,eax
>00428835    jmp         00428839
 00428837    xor         ebx,ebx
 00428839    test        ebx,ebx
>0042883B    je          0042884B
 0042883D    push        0FF
 0042883F    push        ebx
 00428840    call        kernel32.GetCurrentThreadId
 00428845    push        eax
 00428846    call        user32.AttachThreadInput
 0042884B    call        user32.GetCursor
 00428850    mov         dword ptr [ebp-0C],eax
 00428853    test        ebx,ebx
>00428855    je          00428865
 00428857    push        0
 00428859    push        ebx
 0042885A    call        kernel32.GetCurrentThreadId
 0042885F    push        eax
 00428860    call        user32.AttachThreadInput
 00428865    mov         ebx,dword ptr [ebp-0C]
 00428868    test        ebx,ebx
>0042886A    je          004288CE
 0042886C    test        byte ptr [ebp-10],1
>00428870    je          004288CE
 00428872    lea         eax,[ebp-28]
 00428875    push        eax
 00428876    push        ebx
 00428877    call        user32.GetIconInfo
 0042887C    test        eax,eax
>0042887E    je          004288A6
 00428880    mov         eax,dword ptr [ebp-1C]
 00428883    test        eax,eax
>00428885    je          0042888D
 00428887    push        eax
 00428888    call        gdi32.DeleteObject
 0042888D    mov         eax,dword ptr [ebp-18]
 00428890    test        eax,eax
>00428892    je          0042889A
 00428894    push        eax
 00428895    call        gdi32.DeleteObject
 0042889A    mov         eax,dword ptr [ebp-24]
 0042889D    sub         dword ptr [ebp-8],eax
 004288A0    mov         eax,dword ptr [ebp-20]
 004288A3    sub         dword ptr [ebp-4],eax
 004288A6    push        3
 004288A8    push        0
 004288AA    push        0
 004288AC    push        0
 004288AE    push        0
 004288B0    mov         eax,dword ptr [ebp-0C]
 004288B3    push        eax
 004288B4    mov         eax,dword ptr [ebp+8]
 004288B7    mov         edx,dword ptr [ebp-4]
 004288BA    sub         edx,dword ptr [eax-8]
 004288BD    push        edx
 004288BE    mov         eax,dword ptr [ebp+8]
 004288C1    mov         edx,dword ptr [ebp-8]
 004288C4    sub         edx,dword ptr [eax-4]
 004288C7    push        edx
 004288C8    push        esi
 004288C9    call        user32.DrawIconEx
 004288CE    pop         esi
 004288CF    pop         ebx
 004288D0    mov         esp,ebp
 004288D2    pop         ebp
 004288D3    ret
end;*}

//004288F0
{*procedure sub_004288F0(?:HDC; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004288F0    push        ebp
 004288F1    mov         ebp,esp
 004288F3    add         esp,0FFFFFF90
 004288F6    push        ebx
 004288F7    push        esi
 004288F8    push        edi
 004288F9    mov         dword ptr [ebp-8],ecx
 004288FC    mov         dword ptr [ebp-4],edx
 004288FF    mov         dword ptr [ebp-0C],eax
 00428902    mov         ebx,dword ptr [ebp+0C]
 00428905    mov         esi,dword ptr [ebp+14]
 00428908    mov         edi,dword ptr [ebp+18]
 0042890B    mov         eax,dword ptr [ebp+8]
 0042890E    call        @IntfClear
 00428913    xor         eax,eax
 00428915    mov         dword ptr [ebp-68],eax
 00428918    test        bl,bl
>0042891A    je          004289D2
 00428920    mov         eax,dword ptr [ebp-4]
 00428923    mov         dword ptr [ebp-70],eax
 00428926    mov         eax,dword ptr [ebp-8]
 00428929    mov         dword ptr [ebp-6C],eax
 0042892C    mov         dword ptr [ebp-64],7FFFFFFF
 00428933    mov         dword ptr [ebp-60],7FFFFFFF
 0042893A    mov         dword ptr [ebp-5C],80000000
 00428941    mov         dword ptr [ebp-58],80000000
 00428948    lea         eax,[ebp-70]
 0042894B    push        eax
 0042894C    push        428624
 00428951    call        user32.EnumWindows
 00428956    mov         eax,dword ptr [ebp-64]
 00428959    cmp         eax,7FFFFFFF
>0042895E    jge         004289D2
 00428960    test        eax,eax
>00428962    jge         00428969
 00428964    xor         eax,eax
 00428966    mov         dword ptr [ebp-64],eax
 00428969    cmp         dword ptr [ebp-60],0
>0042896D    jge         00428974
 0042896F    xor         eax,eax
 00428971    mov         dword ptr [ebp-60],eax
 00428974    cmp         edi,dword ptr [ebp-5C]
>00428977    jge         0042897C
 00428979    mov         dword ptr [ebp-5C],edi
 0042897C    cmp         esi,dword ptr [ebp-58]
>0042897F    jge         00428984
 00428981    mov         dword ptr [ebp-58],esi
 00428984    mov         edi,dword ptr [ebp-5C]
 00428987    mov         eax,dword ptr [ebp-64]
 0042898A    sub         edi,eax
 0042898C    mov         esi,dword ptr [ebp-58]
 0042898F    mov         edx,dword ptr [ebp-60]
 00428992    sub         esi,edx
 00428994    add         dword ptr [ebp-4],eax
 00428997    add         dword ptr [ebp-8],edx
 0042899A    mov         eax,dword ptr [ebp-4]
 0042899D    mov         dword ptr [ebp-70],eax
 004289A0    mov         eax,dword ptr [ebp-8]
 004289A3    mov         dword ptr [ebp-6C],eax
 004289A6    lea         eax,[ebp-70]
 004289A9    push        eax
 004289AA    push        428738
 004289AF    call        user32.EnumWindows
 004289B4    lea         eax,[ebp-54]
 004289B7    push        eax
 004289B8    mov         eax,dword ptr [ebp-68]
 004289BB    push        eax
 004289BC    call        gdi32.GetRgnBox
 004289C1    dec         eax
>004289C2    jne         004289D2
 004289C4    mov         eax,dword ptr [ebp-68]
 004289C7    push        eax
 004289C8    call        gdi32.DeleteObject
 004289CD    xor         eax,eax
 004289CF    mov         dword ptr [ebp-68],eax
 004289D2    test        bl,bl
>004289D4    je          004289E0
 004289D6    cmp         dword ptr [ebp-68],0
>004289DA    je          00428AD2
 004289E0    lea         eax,[ebp-10]
 004289E3    push        eax
 004289E4    lea         eax,[ebp-14]
 004289E7    push        eax
 004289E8    lea         eax,[ebp-18]
 004289EB    push        eax
 004289EC    lea         eax,[ebp-1C]
 004289EF    push        eax
 004289F0    lea         ecx,[ebp-44]
 004289F3    mov         edx,esi
 004289F5    mov         eax,edi
 004289F7    call        00426360
 004289FC    test        al,al
>004289FE    je          00428AD2
 00428A04    cmp         dword ptr [ebp-68],0
>00428A08    je          00428A3C
 00428A0A    xor         eax,eax
 00428A0C    mov         dword ptr [ebp-54],eax
 00428A0F    xor         eax,eax
 00428A11    mov         dword ptr [ebp-50],eax
 00428A14    mov         dword ptr [ebp-4C],edi
 00428A17    mov         dword ptr [ebp-48],esi
 00428A1A    push        0
 00428A1C    call        gdi32.GetStockObject
 00428A21    push        eax
 00428A22    lea         eax,[ebp-54]
 00428A25    push        eax
 00428A26    mov         eax,dword ptr [ebp-18]
 00428A29    push        eax
 00428A2A    call        user32.FillRect
 00428A2F    mov         eax,dword ptr [ebp-68]
 00428A32    push        eax
 00428A33    mov         eax,dword ptr [ebp-18]
 00428A36    push        eax
 00428A37    call        gdi32.SelectClipRgn
 00428A3C    push        0CC0020
 00428A41    mov         eax,dword ptr [ebp-8]
 00428A44    push        eax
 00428A45    mov         eax,dword ptr [ebp-4]
 00428A48    push        eax
 00428A49    mov         eax,dword ptr [ebp-0C]
 00428A4C    push        eax
 00428A4D    push        esi
 00428A4E    push        edi
 00428A4F    push        0
 00428A51    push        0
 00428A53    mov         eax,dword ptr [ebp-18]
 00428A56    push        eax
 00428A57    call        gdi32.BitBlt
 00428A5C    cmp         eax,1
 00428A5F    sbb         ebx,ebx
 00428A61    inc         ebx
 00428A62    cmp         dword ptr [ebp-68],0
>00428A66    je          00428A7C
 00428A68    push        0
 00428A6A    mov         eax,dword ptr [ebp-18]
 00428A6D    push        eax
 00428A6E    call        gdi32.SelectClipRgn
 00428A73    mov         eax,dword ptr [ebp-68]
 00428A76    push        eax
 00428A77    call        gdi32.DeleteObject
 00428A7C    test        bl,bl
>00428A7E    je          00428AC2
 00428A80    cmp         byte ptr [ebp+10],0
>00428A84    je          00428A90
 00428A86    push        ebp
 00428A87    mov         eax,dword ptr [ebp-18]
 00428A8A    call        004287CC
 00428A8F    pop         ecx
 00428A90    mov         eax,dword ptr [ebp-10]
 00428A93    push        eax
 00428A94    mov         eax,dword ptr [ebp-14]
 00428A97    push        eax
 00428A98    mov         eax,dword ptr [ebp-18]
 00428A9B    push        eax
 00428A9C    mov         eax,dword ptr [ebp-1C]
 00428A9F    push        eax
 00428AA0    lea         ecx,[ebp-44]
 00428AA3    mov         dl,1
 00428AA5    mov         eax,[00426308];TINVBitmap
 00428AAA    call        TINVBitmap.Create;TINVBitmap.Create
 00428AAF    mov         edx,eax
 00428AB1    test        edx,edx
>00428AB3    je          00428AB8
 00428AB5    sub         edx,0FFFFFFBC
 00428AB8    mov         eax,dword ptr [ebp+8]
 00428ABB    call        @IntfCopy
>00428AC0    jmp         00428AEC
 00428AC2    mov         ecx,dword ptr [ebp-18]
 00428AC5    mov         edx,dword ptr [ebp-14]
 00428AC8    mov         eax,dword ptr [ebp-10]
 00428ACB    call        0042641C
>00428AD0    jmp         00428AEC
 00428AD2    cmp         dword ptr [ebp-68],0
>00428AD6    je          00428AEC
 00428AD8    push        0
 00428ADA    mov         eax,dword ptr [ebp-18]
 00428ADD    push        eax
 00428ADE    call        gdi32.SelectClipRgn
 00428AE3    mov         eax,dword ptr [ebp-68]
 00428AE6    push        eax
 00428AE7    call        gdi32.DeleteObject
 00428AEC    pop         edi
 00428AED    pop         esi
 00428AEE    pop         ebx
 00428AEF    mov         esp,ebp
 00428AF1    pop         ebp
 00428AF2    ret         14
end;*}

//00428AF8
{*procedure sub_00428AF8(?:WideString; ?:?);
begin
 00428AF8    push        ebp
 00428AF9    mov         ebp,esp
 00428AFB    add         esp,0FFFFFFEC
 00428AFE    push        ebx
 00428AFF    push        esi
 00428B00    push        edi
 00428B01    xor         ecx,ecx
 00428B03    mov         dword ptr [ebp-14],ecx
 00428B06    mov         edi,edx
 00428B08    mov         ebx,eax
 00428B0A    xor         eax,eax
 00428B0C    push        ebp
 00428B0D    push        428C13
 00428B12    push        dword ptr fs:[eax]
 00428B15    mov         dword ptr fs:[eax],esp
 00428B18    mov         eax,edi
 00428B1A    call        @IntfClear
 00428B1F    call        kernel32.GetVersion
 00428B24    test        eax,80000000
>00428B29    jne         00428B49
 00428B2B    push        2010
 00428B30    push        0
 00428B32    push        0
 00428B34    push        0
 00428B36    mov         eax,ebx
 00428B38    call        @WStrToPWChar
 00428B3D    push        eax
 00428B3E    push        0
 00428B40    call        user32.LoadImageW
 00428B45    mov         ebx,eax
>00428B47    jmp         00428B70
 00428B49    push        2010
 00428B4E    push        0
 00428B50    push        0
 00428B52    push        0
 00428B54    lea         eax,[ebp-14]
 00428B57    mov         edx,ebx
 00428B59    call        @LStrFromWStr
 00428B5E    mov         eax,dword ptr [ebp-14]
 00428B61    call        @LStrToPChar
 00428B66    push        eax
 00428B67    push        0
 00428B69    call        user32.LoadImageA
 00428B6E    mov         ebx,eax
 00428B70    test        ebx,ebx
>00428B72    je          00428BFD
 00428B78    push        18
 00428B7A    push        40
 00428B7C    call        kernel32.LocalAlloc
 00428B81    mov         esi,eax
 00428B83    test        esi,esi
>00428B85    je          00428BF7
 00428B87    push        esi
 00428B88    push        18
 00428B8A    push        ebx
 00428B8B    call        gdi32.GetObjectA
 00428B90    test        eax,eax
>00428B92    jle         00428BF1
 00428B94    mov         eax,dword ptr [esi+4]
 00428B97    mov         dword ptr [ebp-0C],eax
 00428B9A    mov         eax,dword ptr [esi+8]
 00428B9D    cdq
 00428B9E    xor         eax,edx
 00428BA0    sub         eax,edx
 00428BA2    mov         dword ptr [ebp-10],eax
 00428BA5    push        0
 00428BA7    call        gdi32.CreateCompatibleDC
 00428BAC    mov         dword ptr [ebp-4],eax
 00428BAF    cmp         dword ptr [ebp-4],0
>00428BB3    je          00428BF1
 00428BB5    push        ebx
 00428BB6    mov         eax,dword ptr [ebp-4]
 00428BB9    push        eax
 00428BBA    call        gdi32.SelectObject
 00428BBF    mov         dword ptr [ebp-8],eax
 00428BC2    mov         eax,dword ptr [ebp-0C]
 00428BC5    push        eax
 00428BC6    mov         eax,dword ptr [ebp-10]
 00428BC9    push        eax
 00428BCA    push        0
 00428BCC    push        0
 00428BCE    push        edi
 00428BCF    xor         ecx,ecx
 00428BD1    xor         edx,edx
 00428BD3    mov         eax,dword ptr [ebp-4]
 00428BD6    call        004288F0
 00428BDB    mov         eax,dword ptr [ebp-8]
 00428BDE    push        eax
 00428BDF    mov         eax,dword ptr [ebp-4]
 00428BE2    push        eax
 00428BE3    call        gdi32.SelectObject
 00428BE8    mov         eax,dword ptr [ebp-4]
 00428BEB    push        eax
 00428BEC    call        gdi32.DeleteDC
 00428BF1    push        esi
 00428BF2    call        kernel32.LocalFree
 00428BF7    push        ebx
 00428BF8    call        gdi32.DeleteObject
 00428BFD    xor         eax,eax
 00428BFF    pop         edx
 00428C00    pop         ecx
 00428C01    pop         ecx
 00428C02    mov         dword ptr fs:[eax],edx
 00428C05    push        428C1A
 00428C0A    lea         eax,[ebp-14]
 00428C0D    call        @LStrClr
 00428C12    ret
>00428C13    jmp         @HandleFinally
>00428C18    jmp         00428C0A
 00428C1A    pop         edi
 00428C1B    pop         esi
 00428C1C    pop         ebx
 00428C1D    mov         esp,ebp
 00428C1F    pop         ebp
 00428C20    ret
end;*}

//00428C24
{*procedure sub_00428C24(?:?; ?:?);
begin
 00428C24    push        ebx
 00428C25    push        esi
 00428C26    push        edi
 00428C27    push        ebp
 00428C28    add         esp,0FFFFFFF4
 00428C2B    mov         esi,edx
 00428C2D    mov         byte ptr [esp],al
 00428C30    mov         eax,esi
 00428C32    call        @IntfClear
 00428C37    push        0
 00428C39    push        0
 00428C3B    push        0
 00428C3D    push        428CCC;'DISPLAY'
 00428C42    call        gdi32.CreateDCA
 00428C47    mov         ebx,eax
 00428C49    test        ebx,ebx
>00428C4B    je          00428CC1
 00428C4D    push        50
 00428C4F    call        user32.GetSystemMetrics
 00428C54    test        eax,eax
>00428C56    jle         00428C82
 00428C58    push        4C
 00428C5A    call        user32.GetSystemMetrics
 00428C5F    mov         edi,eax
 00428C61    push        4D
 00428C63    call        user32.GetSystemMetrics
 00428C68    mov         ebp,eax
 00428C6A    push        4E
 00428C6C    call        user32.GetSystemMetrics
 00428C71    mov         dword ptr [esp+4],eax
 00428C75    push        4F
 00428C77    call        user32.GetSystemMetrics
 00428C7C    mov         dword ptr [esp+8],eax
>00428C80    jmp         00428C9E
 00428C82    xor         edi,edi
 00428C84    xor         ebp,ebp
 00428C86    push        8
 00428C88    push        ebx
 00428C89    call        gdi32.GetDeviceCaps
 00428C8E    mov         dword ptr [esp+4],eax
 00428C92    push        0A
 00428C94    push        ebx
 00428C95    call        gdi32.GetDeviceCaps
 00428C9A    mov         dword ptr [esp+8],eax
 00428C9E    mov         eax,dword ptr [esp+4]
 00428CA2    push        eax
 00428CA3    mov         eax,dword ptr [esp+0C]
 00428CA7    push        eax
 00428CA8    push        1
 00428CAA    mov         al,byte ptr [esp+0C]
 00428CAE    push        eax
 00428CAF    push        esi
 00428CB0    mov         ecx,ebp
 00428CB2    mov         edx,edi
 00428CB4    mov         eax,ebx
 00428CB6    call        004288F0
 00428CBB    push        ebx
 00428CBC    call        gdi32.DeleteDC
 00428CC1    add         esp,0C
 00428CC4    pop         ebp
 00428CC5    pop         edi
 00428CC6    pop         esi
 00428CC7    pop         ebx
 00428CC8    ret
end;*}

end.