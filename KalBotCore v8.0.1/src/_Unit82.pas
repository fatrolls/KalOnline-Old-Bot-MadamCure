//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit82;

interface

uses
  SysUtils, Classes;

type
  TLispPrefixes = class(TObject)
    constructor Create;//005240AC
  end;
    //procedure sub_00523FF8(?:?; ?:Pointer);//00523FF8
    //function sub_00524150(?:?; ?:?):?;//00524150
    //procedure sub_005241B0(?:?; ?:?; ?:?);//005241B0
    //procedure sub_00524210(?:?; ?:TLISPListElement);//00524210
    //function sub_005246E4(?:?; ?:?):?;//005246E4

implementation

//00523FF8
{*procedure sub_00523FF8(?:?; ?:Pointer);
begin
 00523FF8    push        ebp
 00523FF9    mov         ebp,esp
 00523FFB    add         esp,0FFFFFFF4
 00523FFE    mov         dword ptr [ebp-8],edx
 00524001    mov         dword ptr [ebp-4],eax
 00524004    cmp         dword ptr [ebp-8],0
>00524008    je          00524054
 0052400A    mov         eax,dword ptr [ebp-8]
 0052400D    mov         edx,dword ptr [eax]
 0052400F    mov         eax,dword ptr [ebp-4]
 00524012    call        00524150
 00524017    mov         dword ptr [ebp-0C],eax
 0052401A    cmp         dword ptr [ebp-0C],0
>0052401E    jl          00524046
 00524020    mov         edx,dword ptr [ebp-0C]
 00524023    mov         eax,dword ptr [ebp-4]
 00524026    mov         eax,dword ptr [eax+4]
 00524029    call        TList.Get
 0052402E    mov         edx,40
 00524033    call        @FreeMem
 00524038    mov         edx,dword ptr [ebp-0C]
 0052403B    mov         eax,dword ptr [ebp-4]
 0052403E    mov         eax,dword ptr [eax+4]
 00524041    call        00478668
 00524046    mov         edx,dword ptr [ebp-8]
 00524049    mov         eax,dword ptr [ebp-4]
 0052404C    mov         eax,dword ptr [eax+4]
 0052404F    call        TList.Add
 00524054    mov         esp,ebp
 00524056    pop         ebp
 00524057    ret
end;*}

//005240AC
constructor TLispPrefixes.Create;
begin
{*
 005240AC    push        ebp
 005240AD    mov         ebp,esp
 005240AF    add         esp,0FFFFFFF4
 005240B2    test        dl,dl
>005240B4    je          005240BE
 005240B6    add         esp,0FFFFFFF0
 005240B9    call        @ClassCreate
 005240BE    mov         dword ptr [ebp-0C],ecx
 005240C1    mov         byte ptr [ebp-5],dl
 005240C4    mov         dword ptr [ebp-4],eax
 005240C7    xor         edx,edx
 005240C9    mov         eax,dword ptr [ebp-4]
 005240CC    call        TObject.Create
 005240D1    mov         dl,1
 005240D3    mov         eax,[004759C0];TList
 005240D8    call        TObject.Create;TList.Create
 005240DD    mov         edx,dword ptr [ebp-4]
 005240E0    mov         dword ptr [edx+4],eax
 005240E3    mov         eax,dword ptr [ebp-4]
 005240E6    mov         edx,dword ptr [ebp-0C]
 005240E9    mov         dword ptr [eax+8],edx
 005240EC    mov         eax,dword ptr [ebp-4]
 005240EF    cmp         byte ptr [ebp-5],0
>005240F3    je          00524104
 005240F5    call        @AfterConstruction
 005240FA    pop         dword ptr fs:[0]
 00524101    add         esp,0C
 00524104    mov         eax,dword ptr [ebp-4]
 00524107    mov         esp,ebp
 00524109    pop         ebp
 0052410A    ret
*}
end;

//00524150
{*function sub_00524150(?:?; ?:?):?;
begin
 00524150    push        ebp
 00524151    mov         ebp,esp
 00524153    add         esp,0FFFFFFE8
 00524156    mov         dword ptr [ebp-8],edx
 00524159    mov         dword ptr [ebp-4],eax
 0052415C    mov         dword ptr [ebp-0C],0FFFFFFFF
 00524163    mov         eax,dword ptr [ebp-4]
 00524166    mov         eax,dword ptr [eax+4]
 00524169    mov         eax,dword ptr [eax+8]
 0052416C    dec         eax
 0052416D    test        eax,eax
>0052416F    jl          005241A7
 00524171    inc         eax
 00524172    mov         dword ptr [ebp-18],eax
 00524175    mov         dword ptr [ebp-10],0
 0052417C    mov         eax,dword ptr [ebp-4]
 0052417F    mov         eax,dword ptr [eax+4]
 00524182    mov         edx,dword ptr [ebp-10]
 00524185    call        TList.Get
 0052418A    mov         dword ptr [ebp-14],eax
 0052418D    mov         eax,dword ptr [ebp-14]
 00524190    mov         eax,dword ptr [eax]
 00524192    cmp         eax,dword ptr [ebp-8]
>00524195    jne         0052419F
 00524197    mov         eax,dword ptr [ebp-10]
 0052419A    mov         dword ptr [ebp-0C],eax
>0052419D    jmp         005241A7
 0052419F    inc         dword ptr [ebp-10]
 005241A2    dec         dword ptr [ebp-18]
>005241A5    jne         0052417C
 005241A7    mov         eax,dword ptr [ebp-0C]
 005241AA    mov         esp,ebp
 005241AC    pop         ebp
 005241AD    ret
end;*}

//005241B0
{*procedure sub_005241B0(?:?; ?:?; ?:?);
begin
 005241B0    push        ebp
 005241B1    mov         ebp,esp
 005241B3    add         esp,0FFFFFFF4
 005241B6    mov         dword ptr [ebp-0C],ecx
 005241B9    mov         dword ptr [ebp-8],edx
 005241BC    mov         dword ptr [ebp-4],eax
 005241BF    mov         eax,dword ptr [ebp-0C]
 005241C2    mov         edx,5241F8;'Not found: LispMessages'
 005241C7    call        @LStrAsg
 005241CC    mov         eax,dword ptr [ebp-4]
 005241CF    cmp         dword ptr [eax+8],0
>005241D3    je          005241E9
 005241D5    mov         eax,dword ptr [ebp-0C]
 005241D8    push        eax
 005241D9    mov         cl,3
 005241DB    mov         edx,dword ptr [ebp-8]
 005241DE    mov         eax,dword ptr [ebp-4]
 005241E1    mov         eax,dword ptr [eax+8]
 005241E4    call        00523E74
 005241E9    mov         esp,ebp
 005241EB    pop         ebp
 005241EC    ret
end;*}

//00524210
{*procedure sub_00524210(?:?; ?:TLISPListElement);
begin
 00524210    push        ebp
 00524211    mov         ebp,esp
 00524213    add         esp,0FFFFFFD0
 00524216    xor         ecx,ecx
 00524218    mov         dword ptr [ebp-2C],ecx
 0052421B    mov         dword ptr [ebp-30],ecx
 0052421E    mov         dword ptr [ebp-24],ecx
 00524221    mov         dword ptr [ebp-28],ecx
 00524224    mov         dword ptr [ebp-1C],ecx
 00524227    mov         dword ptr [ebp-20],ecx
 0052422A    mov         dword ptr [ebp-8],edx
 0052422D    mov         dword ptr [ebp-4],eax
 00524230    xor         eax,eax
 00524232    push        ebp
 00524233    push        52457B
 00524238    push        dword ptr fs:[eax]
 0052423B    mov         dword ptr fs:[eax],esp
 0052423E    lea         ecx,[ebp-20]
 00524241    xor         edx,edx
 00524243    mov         eax,dword ptr [ebp-8]
 00524246    call        00523918
 0052424B    mov         eax,dword ptr [ebp-20]
 0052424E    lea         edx,[ebp-1C]
 00524251    call        00466210
 00524256    mov         eax,dword ptr [ebp-1C]
 00524259    mov         edx,524590;'prefix'
 0052425E    call        @LStrCmp
>00524263    jne         00524560
 00524269    mov         eax,40
 0052426E    call        @GetMem
 00524273    mov         dword ptr [ebp-14],eax
 00524276    mov         eax,dword ptr [ebp-8]
 00524279    mov         eax,dword ptr [eax+0C]
 0052427C    dec         eax
 0052427D    test        eax,eax
>0052427F    jl          00524555
 00524285    inc         eax
 00524286    mov         dword ptr [ebp-18],eax
 00524289    mov         dword ptr [ebp-0C],0
 00524290    mov         edx,dword ptr [ebp-0C]
 00524293    mov         eax,dword ptr [ebp-8]
 00524296    call        005238A4
 0052429B    mov         edx,dword ptr [eax]
 0052429D    call        dword ptr [edx]
 0052429F    test        al,al
>005242A1    jne         00524549
 005242A7    mov         edx,dword ptr [ebp-0C]
 005242AA    mov         eax,dword ptr [ebp-8]
 005242AD    call        005238F4
 005242B2    mov         dword ptr [ebp-10],eax
 005242B5    lea         ecx,[ebp-28]
 005242B8    xor         edx,edx
 005242BA    mov         eax,dword ptr [ebp-10]
 005242BD    call        00523918
 005242C2    mov         eax,dword ptr [ebp-28]
 005242C5    lea         edx,[ebp-24]
 005242C8    call        00466210
 005242CD    mov         edx,dword ptr [ebp-24]
 005242D0    mov         eax,dword ptr [ebp-4]
 005242D3    call        005246E4
 005242D8    and         eax,7F
 005242DB    cmp         eax,12
>005242DE    ja          00524518
 005242E4    jmp         dword ptr [eax*4+5242EB]
 005242E4    dd          00524337
 005242E4    dd          0052434E
 005242E4    dd          00524366
 005242E4    dd          0052437E
 005242E4    dd          00524396
 005242E4    dd          005243AE
 005242E4    dd          005243C6
 005242E4    dd          005243DE
 005242E4    dd          00524409
 005242E4    dd          00524434
 005242E4    dd          0052444C
 005242E4    dd          00524464
 005242E4    dd          0052447C
 005242E4    dd          00524494
 005242E4    dd          005244AC
 005242E4    dd          005244C4
 005242E4    dd          005244D9
 005242E4    dd          005244EE
 005242E4    dd          00524503
 00524337    mov         edx,1
 0052433C    mov         eax,dword ptr [ebp-10]
 0052433F    call        005238C8
 00524344    mov         edx,dword ptr [ebp-14]
 00524347    mov         dword ptr [edx],eax
>00524349    jmp         00524549
 0052434E    mov         edx,1
 00524353    mov         eax,dword ptr [ebp-10]
 00524356    call        005238C8
 0052435B    mov         edx,dword ptr [ebp-14]
 0052435E    mov         byte ptr [edx+4],al
>00524361    jmp         00524549
 00524366    mov         edx,1
 0052436B    mov         eax,dword ptr [ebp-10]
 0052436E    call        005238C8
 00524373    mov         edx,dword ptr [ebp-14]
 00524376    mov         byte ptr [edx+5],al
>00524379    jmp         00524549
 0052437E    mov         edx,1
 00524383    mov         eax,dword ptr [ebp-10]
 00524386    call        005238C8
 0052438B    mov         edx,dword ptr [ebp-14]
 0052438E    mov         byte ptr [edx+6],al
>00524391    jmp         00524549
 00524396    mov         edx,1
 0052439B    mov         eax,dword ptr [ebp-10]
 0052439E    call        005238C8
 005243A3    mov         edx,dword ptr [ebp-14]
 005243A6    mov         byte ptr [edx+7],al
>005243A9    jmp         00524549
 005243AE    mov         edx,1
 005243B3    mov         eax,dword ptr [ebp-10]
 005243B6    call        005238C8
 005243BB    mov         edx,dword ptr [ebp-14]
 005243BE    mov         byte ptr [edx+8],al
>005243C1    jmp         00524549
 005243C6    mov         edx,1
 005243CB    mov         eax,dword ptr [ebp-10]
 005243CE    call        005238C8
 005243D3    mov         edx,dword ptr [ebp-14]
 005243D6    mov         byte ptr [edx+9],al
>005243D9    jmp         00524549
 005243DE    mov         edx,1
 005243E3    mov         eax,dword ptr [ebp-10]
 005243E6    call        005238C8
 005243EB    mov         edx,dword ptr [ebp-14]
 005243EE    mov         dword ptr [edx+0C],eax
 005243F1    mov         edx,2
 005243F6    mov         eax,dword ptr [ebp-10]
 005243F9    call        005238C8
 005243FE    mov         edx,dword ptr [ebp-14]
 00524401    mov         dword ptr [edx+10],eax
>00524404    jmp         00524549
 00524409    mov         edx,1
 0052440E    mov         eax,dword ptr [ebp-10]
 00524411    call        005238C8
 00524416    mov         edx,dword ptr [ebp-14]
 00524419    mov         dword ptr [edx+14],eax
 0052441C    mov         edx,2
 00524421    mov         eax,dword ptr [ebp-10]
 00524424    call        005238C8
 00524429    mov         edx,dword ptr [ebp-14]
 0052442C    mov         dword ptr [edx+18],eax
>0052442F    jmp         00524549
 00524434    mov         edx,1
 00524439    mov         eax,dword ptr [ebp-10]
 0052443C    call        005238C8
 00524441    mov         edx,dword ptr [ebp-14]
 00524444    mov         byte ptr [edx+1C],al
>00524447    jmp         00524549
 0052444C    mov         edx,1
 00524451    mov         eax,dword ptr [ebp-10]
 00524454    call        005238C8
 00524459    mov         edx,dword ptr [ebp-14]
 0052445C    mov         byte ptr [edx+1D],al
>0052445F    jmp         00524549
 00524464    mov         edx,1
 00524469    mov         eax,dword ptr [ebp-10]
 0052446C    call        005238C8
 00524471    mov         edx,dword ptr [ebp-14]
 00524474    mov         dword ptr [edx+20],eax
>00524477    jmp         00524549
 0052447C    mov         edx,1
 00524481    mov         eax,dword ptr [ebp-10]
 00524484    call        005238C8
 00524489    mov         edx,dword ptr [ebp-14]
 0052448C    mov         dword ptr [edx+24],eax
>0052448F    jmp         00524549
 00524494    mov         edx,1
 00524499    mov         eax,dword ptr [ebp-10]
 0052449C    call        005238C8
 005244A1    mov         edx,dword ptr [ebp-14]
 005244A4    mov         dword ptr [edx+28],eax
>005244A7    jmp         00524549
 005244AC    mov         edx,1
 005244B1    mov         eax,dword ptr [ebp-10]
 005244B4    call        005238C8
 005244B9    mov         edx,dword ptr [ebp-14]
 005244BC    mov         dword ptr [edx+2C],eax
>005244BF    jmp         00524549
 005244C4    mov         edx,1
 005244C9    mov         eax,dword ptr [ebp-10]
 005244CC    call        005238C8
 005244D1    mov         edx,dword ptr [ebp-14]
 005244D4    mov         dword ptr [edx+30],eax
>005244D7    jmp         00524549
 005244D9    mov         edx,1
 005244DE    mov         eax,dword ptr [ebp-10]
 005244E1    call        005238C8
 005244E6    mov         edx,dword ptr [ebp-14]
 005244E9    mov         dword ptr [edx+34],eax
>005244EC    jmp         00524549
 005244EE    mov         edx,1
 005244F3    mov         eax,dword ptr [ebp-10]
 005244F6    call        005238C8
 005244FB    mov         edx,dword ptr [ebp-14]
 005244FE    mov         dword ptr [edx+38],eax
>00524501    jmp         00524549
 00524503    mov         edx,1
 00524508    mov         eax,dword ptr [ebp-10]
 0052450B    call        005238C8
 00524510    mov         edx,dword ptr [ebp-14]
 00524513    mov         dword ptr [edx+3C],eax
>00524516    jmp         00524549
 00524518    lea         ecx,[ebp-30]
 0052451B    xor         edx,edx
 0052451D    mov         eax,dword ptr [ebp-10]
 00524520    call        00523918
 00524525    mov         ecx,dword ptr [ebp-30]
 00524528    lea         eax,[ebp-2C]
 0052452B    mov         edx,5245A0;'Unknown prefix argument: '
 00524530    call        @LStrCat3
 00524535    mov         ecx,dword ptr [ebp-2C]
 00524538    mov         dl,1
 0052453A    mov         eax,[004653B4];Exception
 0052453F    call        Exception.Create;Exception.Create
 00524544    call        @RaiseExcept
 00524549    inc         dword ptr [ebp-0C]
 0052454C    dec         dword ptr [ebp-18]
>0052454F    jne         00524290
 00524555    mov         edx,dword ptr [ebp-14]
 00524558    mov         eax,dword ptr [ebp-4]
 0052455B    call        00523FF8
 00524560    xor         eax,eax
 00524562    pop         edx
 00524563    pop         ecx
 00524564    pop         ecx
 00524565    mov         dword ptr fs:[eax],edx
 00524568    push        524582
 0052456D    lea         eax,[ebp-30]
 00524570    mov         edx,6
 00524575    call        @LStrArrayClr
 0052457A    ret
>0052457B    jmp         @HandleFinally
>00524580    jmp         0052456D
 00524582    mov         esp,ebp
 00524584    pop         ebp
 00524585    ret
end;*}

//005246E4
{*function sub_005246E4(?:?; ?:?):?;
begin
 005246E4    push        ebp
 005246E5    mov         ebp,esp
 005246E7    add         esp,0FFFFFFEC
 005246EA    xor         ecx,ecx
 005246EC    mov         dword ptr [ebp-14],ecx
 005246EF    mov         dword ptr [ebp-8],edx
 005246F2    mov         dword ptr [ebp-4],eax
 005246F5    mov         eax,dword ptr [ebp-8]
 005246F8    call        @LStrAddRef
 005246FD    xor         eax,eax
 005246FF    push        ebp
 00524700    push        524762
 00524705    push        dword ptr fs:[eax]
 00524708    mov         dword ptr fs:[eax],esp
 0052470B    mov         byte ptr [ebp-9],13
 0052470F    xor         eax,eax
 00524711    mov         dword ptr [ebp-10],eax
 00524714    lea         edx,[ebp-14]
 00524717    mov         eax,dword ptr [ebp-8]
 0052471A    call        00466210
 0052471F    mov         eax,dword ptr [ebp-14]
 00524722    mov         edx,dword ptr [ebp-10]
 00524725    mov         edx,dword ptr [edx*4+54E5C0];^'index'
 0052472C    call        @LStrCmp
>00524731    jne         0052473B
 00524733    mov         al,byte ptr [ebp-10]
 00524736    mov         byte ptr [ebp-9],al
>00524739    jmp         00524744
 0052473B    inc         dword ptr [ebp-10]
 0052473E    cmp         dword ptr [ebp-10],13
>00524742    jne         00524714
 00524744    xor         eax,eax
 00524746    pop         edx
 00524747    pop         ecx
 00524748    pop         ecx
 00524749    mov         dword ptr fs:[eax],edx
 0052474C    push        524769
 00524751    lea         eax,[ebp-14]
 00524754    call        @LStrClr
 00524759    lea         eax,[ebp-8]
 0052475C    call        @LStrClr
 00524761    ret
>00524762    jmp         @HandleFinally
>00524767    jmp         00524751
 00524769    mov         al,byte ptr [ebp-9]
 0052476C    mov         esp,ebp
 0052476E    pop         ebp
 0052476F    ret
end;*}

Initialization
Finalization
//00524770
{*
 00524770    push        ebp
 00524771    mov         ebp,esp
 00524773    xor         eax,eax
 00524775    push        ebp
 00524776    push        5247AC
 0052477B    push        dword ptr fs:[eax]
 0052477E    mov         dword ptr fs:[eax],esp
 00524781    inc         dword ptr ds:[55E08C]
>00524787    jne         0052479E
 00524789    mov         eax,54E5C0;^'index'
 0052478E    mov         ecx,13
 00524793    mov         edx,dword ptr ds:[4010AC];String
 00524799    call        @FinalizeArray
 0052479E    xor         eax,eax
 005247A0    pop         edx
 005247A1    pop         ecx
 005247A2    pop         ecx
 005247A3    mov         dword ptr fs:[eax],edx
 005247A6    push        5247B3
 005247AB    ret
>005247AC    jmp         @HandleFinally
>005247B1    jmp         005247AB
 005247B3    pop         ebp
 005247B4    ret
*}
end.