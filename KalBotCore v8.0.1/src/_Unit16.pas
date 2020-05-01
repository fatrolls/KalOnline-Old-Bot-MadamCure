//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit16;

interface

uses
  SysUtils, Classes;

type
  TStackItem = TStackItem = record//size=1C
f8:WideString;//f8
fC:WideString;//fC
f18:WideString;//f18
end;;
  TStackTrace = array of TStackItem;
//elSize = 1C;
  _Unit1616_2 = .2 = record//size=1C
f4:WideString;//f4
end;;
  _DynArr_16_3 = array of _Unit1616_2;
//elSize = 1C;
  _Unit1616_4 = .4 = record//size=4C
f4:WideString;//f4
f8:TFunctionInfo;//f8
end;;
  _DynArr_16_5 = array of _Unit1616_4;
//elSize = 4C;
  _DynArr_16_7 = array of ?;
//elSize = 20;
  _Unit1616_6 = .6 = record//size=C
f4:_DynArr_16_7;//f4
end;;
  TStackLinks = array [1..2] of _Unit1616_6;
  _Unit1616_8 = .8 = record//size=1C
f4:WideString;//f4
f8:WideString;//f8
f10:WideString;//f10
end;;
  TInternalStackItem = TInternalStackItem = record//size=44
fC:TStackLinks;//fC
f28:_Unit1616_8;//f28
end;;
  _DynArr_16_9 = array of TInternalStackItem;
//elSize = 44;
  _DynArr_16_01 = array of ?;
//elSize = 4;
    //function sub_00422018(?:?; ?:?):?;//00422018
    //procedure sub_00422330(?:?; ?:?);//00422330
    //procedure sub_0042236C(?:Integer; ?:?);//0042236C
    //procedure sub_004223C0(?:?; ?:?; ?:?);//004223C0
    //function sub_00422454(?:?; ?:WideString; ?:?; ?:?; ?:?; ?:?):?;//00422454
    //function sub_004229CC(?:Integer; ?:Integer):?;//004229CC
    //function sub_00422A3C(?:Integer; ?:?; ?:Integer; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00422A3C
    //procedure sub_00422DB8(?:?; ?:?; ?:?; ?:?);//00422DB8
    //procedure sub_00423060(?:?; ?:?; ?:?; ?:?);//00423060
    //function sub_0042315C:?;//0042315C
    //function sub_00423170:?;//00423170
    //function sub_004232C0:?;//004232C0
    //function sub_004232C4:?;//004232C4
    //procedure sub_004232CC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004232CC
    //procedure sub_00423388(?:?; ?:?; ?:?; ?:?);//00423388
    //procedure sub_004233D8(?:Integer; ?:?; ?:?; ?:?; ?:?);//004233D8
    //procedure sub_00423454(?:?; ?:?);//00423454
    //function sub_00423538(?:?; ?:?):?;//00423538
    //function sub_004235E0(?:?; ?:?; ?:?):?;//004235E0
    //function sub_0042369C(?:?; ?:?; ?:?; ?:?; ?:?):?;//0042369C
    //procedure sub_00423D70(?:?; ?:?);//00423D70
    //procedure sub_00423E58(?:?);//00423E58
    //function sub_00424114(?:?; ?:?):?;//00424114
    //function sub_00424150(?:?; ?:?):?;//00424150
    //procedure sub_004242A8(?:?; ?:?);//004242A8
    //procedure sub_0042430C(?:?; ?:?);//0042430C
    //function sub_004243C0(?:?):?;//004243C0
    //procedure sub_00424424(?:?; ?:?; ?:?; ?:?; ?:?);//00424424
    //procedure sub_0042466C(?:?; ?:?);//0042466C
    //function sub_00424850(?:?; ?:Integer; ?:?; ?:?):?;//00424850
    //procedure sub_00424AFC(?:?; ?:?; ?:?);//00424AFC
    //procedure sub_00424B78(?:?; ?:?; ?:?);//00424B78
    //procedure sub_00424C64(?:?; ?:?; ?:?);//00424C64
    //procedure sub_00424D7C(?:?);//00424D7C
    //procedure sub_00425068(?:?);//00425068
    //procedure sub_00425A1C(?:?; ?:?; ?:?);//00425A1C
    //function sub_00425B04:?;//00425B04
    //procedure sub_00425B08(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00425B08

implementation

//00422018
{*function sub_00422018(?:?; ?:?):?;
begin
 00422018    push        ebp
 00422019    mov         ebp,esp
 0042201B    add         esp,0FFFFFDE0
 00422021    push        ebx
 00422022    push        esi
 00422023    push        edi
 00422024    xor         ebx,ebx
 00422026    mov         dword ptr [ebp-220],ebx
 0042202C    mov         dword ptr [ebp-0C],ebx
 0042202F    mov         esi,edx
 00422031    mov         dword ptr [ebp-4],eax
 00422034    xor         eax,eax
 00422036    push        ebp
 00422037    push        42231F
 0042203C    push        dword ptr fs:[eax]
 0042203F    mov         dword ptr fs:[eax],esp
 00422042    mov         byte ptr [ebp-5],0
 00422046    mov         dword ptr [esi],0FFFFFFFF
 0042204C    mov         eax,[0055D7E0];gvar_0055D7E0
 00422051    dec         eax
 00422052    test        eax,eax
>00422054    jl          0042207D
 00422056    inc         eax
 00422057    xor         ebx,ebx
 00422059    mov         edx,ebx
 0042205B    shl         edx,3
 0042205E    sub         edx,ebx
 00422060    mov         ecx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00422066    mov         edx,dword ptr [ecx+edx*4]
 00422069    cmp         edx,dword ptr [ebp-4]
>0042206C    jne         00422079
 0042206E    mov         byte ptr [ebp-5],1
 00422072    mov         dword ptr [esi],ebx
>00422074    jmp         004222FE
 00422079    inc         ebx
 0042207A    dec         eax
>0042207B    jne         00422059
 0042207D    call        kernel32.GetVersion
 00422082    test        eax,80000000
>00422087    jne         004220BC
 00422089    push        104
 0042208E    lea         eax,[ebp-21A]
 00422094    push        eax
 00422095    mov         eax,dword ptr [ebp-4]
 00422098    push        eax
 00422099    call        kernel32.GetModuleFileNameW
 0042209E    test        eax,eax
 004220A0    setne       bl
 004220A3    test        bl,bl
>004220A5    je          004220F9
 004220A7    lea         eax,[ebp-0C]
 004220AA    lea         edx,[ebp-21A]
 004220B0    mov         ecx,105
 004220B5    call        @WStrFromWArray
>004220BA    jmp         004220F9
 004220BC    push        104
 004220C1    lea         eax,[ebp-21A]
 004220C7    push        eax
 004220C8    mov         eax,dword ptr [ebp-4]
 004220CB    push        eax
 004220CC    call        kernel32.GetModuleFileNameA
 004220D1    test        eax,eax
 004220D3    setne       bl
 004220D6    test        bl,bl
>004220D8    je          004220F9
 004220DA    lea         eax,[ebp-220]
 004220E0    lea         edx,[ebp-21A]
 004220E6    call        @LStrFromPChar
 004220EB    mov         edx,dword ptr [ebp-220]
 004220F1    lea         eax,[ebp-0C]
 004220F4    call        @WStrFromLStr
 004220F9    test        bl,bl
>004220FB    je          004222FE
 00422101    mov         eax,dword ptr [ebp-4]
 00422104    call        0040F964
 00422109    mov         dword ptr [ebp-10],eax
 0042210C    cmp         dword ptr [ebp-10],0
>00422110    je          004222FE
 00422116    mov         byte ptr [ebp-5],1
 0042211A    mov         eax,[0055D7E4];gvar_0055D7E4:?
 0042211F    call        @LStrLen
 00422124    cmp         eax,dword ptr ds:[55D7E0];gvar_0055D7E0
>0042212A    jne         00422171
 0042212C    cmp         dword ptr ds:[55D7E0],0;gvar_0055D7E0
>00422133    jne         00422151
 00422135    push        10
 00422137    mov         eax,55D7E4;gvar_0055D7E4:?
 0042213C    mov         ecx,1
 00422141    mov         edx,dword ptr ds:[421FA8];_DynArr_16_3
 00422147    call        @DynArraySetLength
 0042214C    add         esp,4
>0042214F    jmp         00422171
 00422151    mov         eax,[0055D7E0];gvar_0055D7E0
 00422156    add         eax,eax
 00422158    push        eax
 00422159    mov         eax,55D7E4;gvar_0055D7E4:?
 0042215E    mov         ecx,1
 00422163    mov         edx,dword ptr ds:[421FA8];_DynArr_16_3
 00422169    call        @DynArraySetLength
 0042216E    add         esp,4
 00422171    mov         eax,[0055D7E0];gvar_0055D7E0
 00422176    mov         dword ptr [esi],eax
 00422178    inc         dword ptr ds:[55D7E0];gvar_0055D7E0
 0042217E    mov         eax,dword ptr [esi]
 00422180    mov         edx,eax
 00422182    shl         eax,3
 00422185    sub         eax,edx
 00422187    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 0042218D    lea         eax,[edx+eax*4]
 00422190    mov         esi,eax
 00422192    mov         eax,dword ptr [ebp-4]
 00422195    mov         dword ptr [esi],eax
 00422197    lea         eax,[esi+4]
 0042219A    mov         edx,dword ptr [ebp-0C]
 0042219D    call        @WStrAsg
 004221A2    mov         eax,dword ptr [esi+4]
 004221A5    call        @WStrLen
 004221AA    mov         ebx,eax
 004221AC    cmp         ebx,1
>004221AF    jl          004221D2
 004221B1    mov         eax,dword ptr [esi+4]
 004221B4    cmp         word ptr [eax+ebx*2-2],5C
>004221BA    jne         004221CD
 004221BC    lea         eax,[esi+4]
 004221BF    mov         ecx,ebx
 004221C1    mov         edx,1
 004221C6    call        @WStrDelete
>004221CB    jmp         004221D2
 004221CD    dec         ebx
 004221CE    test        ebx,ebx
>004221D0    jne         004221B1
 004221D2    mov         eax,dword ptr [ebp-10]
 004221D5    mov         ax,word ptr [eax+18]
 004221D9    cmp         ax,20B
>004221DD    jne         004221EF
 004221DF    mov         ecx,dword ptr [ebp-10]
 004221E2    add         ecx,18
 004221E5    add         ecx,0F0
 004221EB    mov         edx,ecx
>004221ED    jmp         004221FD
 004221EF    mov         ecx,dword ptr [ebp-10]
 004221F2    add         ecx,18
 004221F5    add         ecx,0E0
 004221FB    mov         edx,ecx
 004221FD    test        byte ptr [edx+24],20
>00422201    je          00422227
 00422203    mov         eax,dword ptr [esi]
 00422205    add         eax,dword ptr [edx+0C]
 00422208    mov         dword ptr [esi+8],eax
 0042220B    add         eax,dword ptr [edx+8]
 0042220E    mov         dword ptr [esi+0C],eax
 00422211    add         edx,28
 00422214    test        byte ptr [edx+24],20
>00422218    je          00422260
 0042221A    mov         eax,dword ptr [esi]
 0042221C    add         eax,dword ptr [edx+0C]
 0042221F    add         eax,dword ptr [edx+8]
 00422222    mov         dword ptr [esi+0C],eax
>00422225    jmp         00422260
 00422227    cmp         ax,20B
>0042222B    jne         0042224C
 0042222D    mov         eax,dword ptr [esi]
 0042222F    mov         edx,dword ptr [ebp-10]
 00422232    add         edx,18
 00422235    add         eax,dword ptr [edx+14]
 00422238    mov         dword ptr [esi+8],eax
 0042223B    mov         eax,dword ptr [esi+8]
 0042223E    mov         edx,dword ptr [ebp-10]
 00422241    add         edx,18
 00422244    add         eax,dword ptr [edx+4]
 00422247    mov         dword ptr [esi+0C],eax
>0042224A    jmp         00422260
 0042224C    mov         eax,dword ptr [esi]
 0042224E    mov         edx,dword ptr [ebp-10]
 00422251    add         eax,dword ptr [edx+2C]
 00422254    mov         dword ptr [esi+8],eax
 00422257    mov         edx,dword ptr [ebp-10]
 0042225A    add         eax,dword ptr [edx+1C]
 0042225D    mov         dword ptr [esi+0C],eax
 00422260    mov         eax,dword ptr [ebp-10]
 00422263    cmp         word ptr [eax+18],20B
>00422269    jne         004222C5
 0042226B    mov         eax,dword ptr [esi+0C]
 0042226E    mov         dword ptr [esi+10],eax
 00422271    mov         eax,dword ptr [ebp-10]
 00422274    add         eax,108
 00422279    mov         edx,eax
 0042227B    mov         eax,dword ptr [ebp-10]
 0042227E    movzx       eax,word ptr [eax+6]
 00422282    dec         eax
 00422283    test        eax,eax
>00422285    jl          004222AB
 00422287    inc         eax
 00422288    mov         edi,dword ptr [edx+24]
 0042228B    test        edi,40
>00422291    jne         0042229B
 00422293    test        edi,80
>00422299    je          004222A5
 0042229B    mov         eax,dword ptr [esi]
 0042229D    add         eax,dword ptr [edx+0C]
 004222A0    mov         dword ptr [esi+10],eax
>004222A3    jmp         004222AB
 004222A5    add         edx,28
 004222A8    dec         eax
>004222A9    jne         00422288
 004222AB    mov         eax,dword ptr [esi+10]
 004222AE    mov         edx,dword ptr [ebp-10]
 004222B1    add         edx,18
 004222B4    add         eax,dword ptr [edx+8]
 004222B7    mov         edx,dword ptr [ebp-10]
 004222BA    add         edx,18
 004222BD    add         eax,dword ptr [edx+0C]
 004222C0    mov         dword ptr [esi+14],eax
>004222C3    jmp         004222DF
 004222C5    mov         eax,dword ptr [esi]
 004222C7    mov         edx,dword ptr [ebp-10]
 004222CA    add         eax,dword ptr [edx+30]
 004222CD    mov         dword ptr [esi+10],eax
 004222D0    mov         edx,dword ptr [ebp-10]
 004222D3    add         eax,dword ptr [edx+20]
 004222D6    mov         edx,dword ptr [ebp-10]
 004222D9    add         eax,dword ptr [edx+24]
 004222DC    mov         dword ptr [esi+14],eax
 004222DF    mov         eax,dword ptr [ebp-4]
 004222E2    call        004218CC
 004222E7    mov         ebx,eax
 004222E9    mov         dword ptr [esi+18],ebx
 004222EC    cmp         byte ptr [ebx+3C],0
>004222F0    jne         004222FE
 004222F2    mov         eax,ebx
 004222F4    call        TObject.Free
 004222F9    xor         eax,eax
 004222FB    mov         dword ptr [esi+18],eax
 004222FE    xor         eax,eax
 00422300    pop         edx
 00422301    pop         ecx
 00422302    pop         ecx
 00422303    mov         dword ptr fs:[eax],edx
 00422306    push        422326
 0042230B    lea         eax,[ebp-220]
 00422311    call        @LStrClr
 00422316    lea         eax,[ebp-0C]
 00422319    call        @WStrClr
 0042231E    ret
>0042231F    jmp         @HandleFinally
>00422324    jmp         0042230B
 00422326    mov         al,byte ptr [ebp-5]
 00422329    pop         edi
 0042232A    pop         esi
 0042232B    pop         ebx
 0042232C    mov         esp,ebp
 0042232E    pop         ebp
 0042232F    ret
end;*}

//00422330
{*procedure sub_00422330(?:?; ?:?);
begin
 00422330    push        ebp
 00422331    mov         ebp,esp
 00422333    push        ebx
 00422334    push        esi
 00422335    push        edi
 00422336    mov         edi,eax
 00422338    mov         esi,dword ptr ds:[55D7E8];gvar_0055D7E8
 0042233E    dec         esi
 0042233F    test        esi,esi
>00422341    jl          00422365
 00422343    inc         esi
 00422344    xor         ebx,ebx
 00422346    imul        eax,ebx,13
 00422349    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 0042234F    cmp         edi,dword ptr [edx+eax*4+0C]
>00422353    jne         00422361
 00422355    mov         eax,dword ptr [ebp+8]
 00422358    push        eax
 00422359    mov         eax,ebx
 0042235B    call        0042236C
 00422360    pop         ecx
 00422361    inc         ebx
 00422362    dec         esi
>00422363    jne         00422346
 00422365    pop         edi
 00422366    pop         esi
 00422367    pop         ebx
 00422368    pop         ebp
 00422369    ret
end;*}

//0042236C
{*procedure sub_0042236C(?:Integer; ?:?);
begin
 0042236C    push        ebp
 0042236D    mov         ebp,esp
 0042236F    push        ebx
 00422370    push        esi
 00422371    push        edi
 00422372    imul        eax,eax,13
 00422375    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 0042237B    lea         eax,[edx+eax*4]
 0042237E    lea         edi,[eax+8]
 00422381    mov         byte ptr [eax+48],1
 00422385    mov         eax,dword ptr [edi+20]
 00422388    call        00405CE8
 0042238D    mov         esi,eax
 0042238F    test        esi,esi
>00422391    jl          004223BB
 00422393    inc         esi
 00422394    xor         ebx,ebx
 00422396    mov         eax,ebx
 00422398    shl         eax,3
 0042239B    sub         eax,ebx
 0042239D    mov         edx,dword ptr [edi+20]
 004223A0    cmp         byte ptr [edx+eax*4],0
>004223A4    jne         004223B7
 004223A6    mov         edx,dword ptr [ebp+8]
 004223A9    push        edx
 004223AA    mov         edx,dword ptr [edi+20]
 004223AD    mov         eax,dword ptr [edx+eax*4+0C]
 004223B1    call        00422330
 004223B6    pop         ecx
 004223B7    inc         ebx
 004223B8    dec         esi
>004223B9    jne         00422396
 004223BB    pop         edi
 004223BC    pop         esi
 004223BD    pop         ebx
 004223BE    pop         ebp
 004223BF    ret
end;*}

//004223C0
{*procedure sub_004223C0(?:?; ?:?; ?:?);
begin
 004223C0    push        ebp
 004223C1    mov         ebp,esp
 004223C3    push        0
 004223C5    push        0
 004223C7    push        0
 004223C9    push        ebx
 004223CA    push        esi
 004223CB    push        edi
 004223CC    mov         esi,ecx
 004223CE    mov         edi,edx
 004223D0    mov         ebx,eax
 004223D2    xor         eax,eax
 004223D4    push        ebp
 004223D5    push        422445
 004223DA    push        dword ptr fs:[eax]
 004223DD    mov         dword ptr fs:[eax],esp
 004223E0    mov         eax,esi
 004223E2    call        @WStrClr
 004223E7    cmp         ebx,0FFFFFFFF
>004223EA    je          00422429
 004223EC    mov         eax,ebx
 004223EE    shl         eax,3
 004223F1    sub         eax,ebx
 004223F3    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 004223F9    lea         eax,[edx+eax*4]
 004223FC    mov         ebx,eax
 004223FE    cmp         dword ptr [ebx+18],0
>00422402    jne         00422412
 00422404    push        esi
 00422405    xor         ecx,ecx
 00422407    mov         edx,edi
 00422409    mov         eax,dword ptr [ebx]
 0042240B    call        0040FFD4
>00422410    jmp         00422429
 00422412    lea         ecx,[ebp-0C]
 00422415    mov         edx,edi
 00422417    mov         eax,dword ptr [ebx+18]
 0042241A    call        00421114
 0042241F    mov         edx,dword ptr [ebp-8]
 00422422    mov         eax,esi
 00422424    call        @WStrAsg
 00422429    xor         eax,eax
 0042242B    pop         edx
 0042242C    pop         ecx
 0042242D    pop         ecx
 0042242E    mov         dword ptr fs:[eax],edx
 00422431    push        42244C
 00422436    lea         eax,[ebp-0C]
 00422439    mov         edx,dword ptr ds:[41C63C];TMfPublic
 0042243F    call        @FinalizeRecord
 00422444    ret
>00422445    jmp         @HandleFinally
>0042244A    jmp         00422436
 0042244C    pop         edi
 0042244D    pop         esi
 0042244E    pop         ebx
 0042244F    mov         esp,ebp
 00422451    pop         ebp
 00422452    ret
end;*}

//00422454
{*function sub_00422454(?:?; ?:WideString; ?:?; ?:?; ?:?; ?:?):?;
begin
 00422454    push        ebp
 00422455    mov         ebp,esp
 00422457    add         esp,0FFFFFF90
 0042245A    push        ebx
 0042245B    push        esi
 0042245C    push        edi
 0042245D    xor         ebx,ebx
 0042245F    mov         dword ptr [ebp-70],ebx
 00422462    mov         dword ptr [ebp-8],ecx
 00422465    mov         dword ptr [ebp-4],edx
 00422468    mov         edi,eax
 0042246A    lea         eax,[ebp-50]
 0042246D    mov         edx,dword ptr ds:[410AAC];TFunctionInfo
 00422473    call        @AddRefRecord
 00422478    xor         eax,eax
 0042247A    push        ebp
 0042247B    push        4228BD
 00422480    push        dword ptr fs:[eax]
 00422483    mov         dword ptr fs:[eax],esp
 00422486    lea         eax,[ebp-50]
 00422489    mov         edx,dword ptr ds:[410AAC];TFunctionInfo
 0042248F    call        @Finalize
 00422494    mov         esi,dword ptr ds:[55D7E8];gvar_0055D7E8
 0042249A    dec         esi
 0042249B    test        esi,esi
>0042249D    jl          004224E4
 0042249F    inc         esi
 004224A0    xor         ebx,ebx
 004224A2    imul        eax,ebx,13
 004224A5    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 004224AB    cmp         edi,dword ptr [edx+eax*4+0C]
>004224AF    jne         004224E0
 004224B1    mov         dword ptr [ebp-0C],ebx
 004224B4    cmp         byte ptr [ebp+10],0
>004224B8    je          00422899
 004224BE    imul        eax,ebx,13
 004224C1    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 004224C7    cmp         byte ptr [edx+eax*4+48],0
>004224CC    jne         00422899
 004224D2    push        ebp
 004224D3    mov         eax,ebx
 004224D5    call        0042236C
 004224DA    pop         ecx
>004224DB    jmp         00422899
 004224E0    inc         ebx
 004224E1    dec         esi
>004224E2    jne         004224A2
 004224E4    test        edi,edi
 004224E6    setne       al
 004224E9    or          al,byte ptr [ebp+0C]
>004224EC    je          00422892
 004224F2    cmp         dword ptr [ebp-8],0FFFFFFFF
>004224F6    jne         0042259B
 004224FC    mov         esi,dword ptr ds:[55D7E0];gvar_0055D7E0
 00422502    dec         esi
 00422503    test        esi,esi
>00422505    jl          00422567
 00422507    inc         esi
 00422508    xor         ebx,ebx
 0042250A    mov         edx,ebx
 0042250C    shl         edx,3
 0042250F    sub         edx,ebx
 00422511    mov         ecx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00422517    mov         edx,dword ptr [ecx+edx*4+8]
 0042251B    mov         eax,edi
 0042251D    cmp         edx,eax
>0042251F    jae         00422534
 00422521    mov         edx,ebx
 00422523    shl         edx,3
 00422526    sub         edx,ebx
 00422528    mov         ecx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 0042252E    cmp         eax,dword ptr [ecx+edx*4+0C]
>00422532    jb          0042255E
 00422534    mov         eax,ebx
 00422536    shl         eax,3
 00422539    sub         eax,ebx
 0042253B    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00422541    mov         eax,dword ptr [edx+eax*4+10]
 00422545    cmp         eax,edi
>00422547    jae         00422563
 00422549    mov         eax,ebx
 0042254B    shl         eax,3
 0042254E    sub         eax,ebx
 00422550    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00422556    mov         eax,dword ptr [edx+eax*4+14]
 0042255A    cmp         eax,edi
>0042255C    jbe         00422563
 0042255E    mov         dword ptr [ebp-8],ebx
>00422561    jmp         00422567
 00422563    inc         ebx
 00422564    dec         esi
>00422565    jne         0042250A
 00422567    cmp         dword ptr [ebp-8],0FFFFFFFF
>0042256B    jne         0042259B
 0042256D    push        1C
 0042256F    lea         eax,[ebp-6C]
 00422572    push        eax
 00422573    push        edi
 00422574    call        kernel32.VirtualQuery
 00422579    cmp         eax,1C
>0042257C    jne         0042259B
 0042257E    cmp         dword ptr [ebp-5C],1000
>00422585    jne         0042259B
 00422587    cmp         dword ptr [ebp-68],0
>0042258B    je          0042259B
 0042258D    lea         edx,[ebp-8]
 00422590    mov         ecx,dword ptr [ebp+8]
 00422593    mov         eax,dword ptr [ebp-68]
 00422596    call        00422018
 0042259B    cmp         dword ptr [ebp-8],0FFFFFFFF
>0042259F    je          004225D3
 004225A1    mov         eax,dword ptr [ebp-8]
 004225A4    mov         edx,eax
 004225A6    shl         eax,3
 004225A9    sub         eax,edx
 004225AB    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 004225B1    mov         eax,dword ptr [edx+eax*4]
 004225B4    cmp         eax,dword ptr ds:[55C664];gvar_0055C664
>004225BA    je          004225D3
 004225BC    mov         eax,dword ptr [ebp-8]
 004225BF    mov         edx,eax
 004225C1    shl         eax,3
 004225C4    sub         eax,edx
 004225C6    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 004225CC    cmp         dword ptr [edx+eax*4+18],0
>004225D1    jne         004225F0
 004225D3    push        0
 004225D5    push        0
 004225D7    push        0
 004225D9    push        0
 004225DB    lea         eax,[ebp-50]
 004225DE    push        eax
 004225DF    xor         ecx,ecx
 004225E1    mov         edx,dword ptr [ebp+8]
 004225E4    mov         eax,edi
 004225E6    call        0041576C
>004225EB    jmp         00422681
 004225F0    mov         eax,dword ptr [ebp-8]
 004225F3    mov         edx,eax
 004225F5    shl         eax,3
 004225F8    sub         eax,edx
 004225FA    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00422600    mov         ebx,dword ptr [edx+eax*4+18]
 00422604    push        4228D4
 00422609    push        1
 0042260B    mov         ecx,422900;'System'
 00422610    mov         dl,1
 00422612    mov         eax,ebx
 00422614    call        004211F8
 00422619    push        eax
 0042261A    push        422914
 0042261F    push        1
 00422621    mov         ecx,422900;'System'
 00422626    mov         dl,1
 00422628    mov         eax,ebx
 0042262A    call        004211F8
 0042262F    push        eax
 00422630    push        422944
 00422635    push        1
 00422637    mov         ecx,422900;'System'
 0042263C    mov         dl,1
 0042263E    mov         eax,ebx
 00422640    call        004211F8
 00422645    push        eax
 00422646    push        422968
 0042264B    push        1
 0042264D    mov         ecx,422900;'System'
 00422652    mov         dl,1
 00422654    mov         eax,ebx
 00422656    call        004211F8
 0042265B    push        eax
 0042265C    lea         eax,[ebp-50]
 0042265F    push        eax
 00422660    push        42297C
 00422665    push        1
 00422667    mov         ecx,422900;'System'
 0042266C    mov         dl,1
 0042266E    mov         eax,ebx
 00422670    call        004211F8
 00422675    mov         ecx,eax
 00422677    mov         edx,dword ptr [ebp+8]
 0042267A    mov         eax,edi
 0042267C    call        0041576C
 00422681    mov         al,byte ptr [ebp-50]
 00422684    xor         al,1
 00422686    and         al,byte ptr [ebp+0C]
>00422689    je          0042269A
 0042268B    mov         dword ptr [ebp-4C],edi
 0042268E    mov         dword ptr [ebp-48],edi
 00422691    xor         eax,eax
 00422693    mov         dword ptr [ebp-44],eax
 00422696    mov         byte ptr [ebp-50],1
 0042269A    cmp         byte ptr [ebp-50],0
>0042269E    je          00422889
 004226A4    call        kernel32.GetVersion
 004226A9    test        eax,80000000
>004226AE    je          00422773
 004226B4    cmp         dword ptr ds:[53FDF0],0;gvar_0053FDF0
>004226BB    jne         004226D8
 004226BD    push        4229A4;'user32.dll'
 004226C2    call        kernel32.GetModuleHandleA
 004226C7    xor         ecx,ecx
 004226C9    mov         edx,4229B8;'DispatchMessageA'
 004226CE    call        0040FC34
 004226D3    mov         [0053FDF0],eax;gvar_0053FDF0
 004226D8    mov         eax,dword ptr [ebp-30]
 004226DB    call        00405CE8
 004226E0    mov         esi,eax
 004226E2    test        esi,esi
>004226E4    jl          00422773
 004226EA    inc         esi
 004226EB    xor         ebx,ebx
 004226ED    cmp         dword ptr ds:[53FDF0],0;gvar_0053FDF0
>004226F4    je          0042276B
 004226F6    mov         eax,ebx
 004226F8    shl         eax,3
 004226FB    sub         eax,ebx
 004226FD    mov         edx,dword ptr [ebp-30]
 00422700    mov         eax,dword ptr [edx+eax*4+0C]
 00422704    cmp         eax,dword ptr ds:[53FDF0];0x0 gvar_0053FDF0
>0042270A    jne         0042276B
 0042270C    mov         eax,dword ptr [ebp-2C]
 0042270F    call        @LStrLen
 00422714    mov         dword ptr [ebp-10],eax
 00422717    mov         eax,dword ptr [ebp-10]
 0042271A    inc         eax
 0042271B    push        eax
 0042271C    lea         eax,[ebp-2C]
 0042271F    mov         ecx,1
 00422724    mov         edx,dword ptr ds:[410A70];_DynArr_13_3
 0042272A    call        @DynArraySetLength
 0042272F    add         esp,4
 00422732    mov         eax,dword ptr [ebp-10]
 00422735    lea         eax,[eax+eax*2]
 00422738    mov         edx,dword ptr [ebp-2C]
 0042273B    mov         byte ptr [edx+eax*4],1
 0042273F    mov         edx,ebx
 00422741    shl         edx,3
 00422744    sub         edx,ebx
 00422746    mov         ecx,dword ptr [ebp-30]
 00422749    push        dword ptr [ecx+edx*4+4]
 0042274D    mov         edx,dword ptr [ebp-2C]
 00422750    pop         ecx
 00422751    mov         dword ptr [edx+eax*4+4],ecx
 00422755    mov         edx,ebx
 00422757    shl         edx,3
 0042275A    sub         edx,ebx
 0042275C    mov         ecx,dword ptr [ebp-30]
 0042275F    push        dword ptr [ecx+edx*4+8]
 00422763    mov         edx,dword ptr [ebp-2C]
 00422766    pop         ecx
 00422767    mov         dword ptr [edx+eax*4+8],ecx
 0042276B    inc         ebx
 0042276C    dec         esi
>0042276D    jne         004226ED
 00422773    mov         eax,[0055D7EC];gvar_0055D7EC:?
 00422778    call        @LStrLen
 0042277D    cmp         eax,dword ptr ds:[55D7E8];gvar_0055D7E8
>00422783    jne         004227CA
 00422785    cmp         dword ptr ds:[55D7E8],0;gvar_0055D7E8
>0042278C    jne         004227AA
 0042278E    push        10
 00422790    mov         eax,55D7EC;gvar_0055D7EC:?
 00422795    mov         ecx,1
 0042279A    mov         edx,dword ptr ds:[421FF0];_DynArr_16_5
 004227A0    call        @DynArraySetLength
 004227A5    add         esp,4
>004227A8    jmp         004227CA
 004227AA    mov         eax,[0055D7E8];gvar_0055D7E8
 004227AF    add         eax,eax
 004227B1    push        eax
 004227B2    mov         eax,55D7EC;gvar_0055D7EC:?
 004227B7    mov         ecx,1
 004227BC    mov         edx,dword ptr ds:[421FF0];_DynArr_16_5
 004227C2    call        @DynArraySetLength
 004227C7    add         esp,4
 004227CA    mov         eax,[0055D7E8];gvar_0055D7E8
 004227CF    mov         dword ptr [ebp-0C],eax
 004227D2    inc         dword ptr ds:[55D7E8];gvar_0055D7E8
 004227D8    imul        ebx,dword ptr [ebp-0C],13
 004227DC    mov         eax,[0055D7EC];gvar_0055D7EC:?
 004227E1    mov         edx,dword ptr [ebp-8]
 004227E4    mov         dword ptr [eax+ebx*4],edx
 004227E7    mov         eax,[0055D7EC];gvar_0055D7EC:?
 004227EC    lea         eax,[eax+ebx*4+8]
 004227F0    lea         edx,[ebp-50]
 004227F3    mov         ecx,dword ptr ds:[410AAC];TFunctionInfo
 004227F9    call        @CopyRecord
 004227FE    mov         eax,[0055D7EC];gvar_0055D7EC:?
 00422803    mov         dl,byte ptr [ebp+10]
 00422806    mov         byte ptr [eax+ebx*4+48],dl
 0042280A    mov         eax,dword ptr [ebp-4]
 0042280D    xor         edx,edx
 0042280F    call        @WStrCmp
>00422814    jne         00422836
 00422816    lea         ecx,[ebp-70]
 00422819    mov         edx,edi
 0042281B    mov         eax,dword ptr [ebp-8]
 0042281E    call        004223C0
 00422823    mov         edx,dword ptr [ebp-70]
 00422826    mov         eax,[0055D7EC];gvar_0055D7EC:?
 0042282B    lea         eax,[eax+ebx*4+4]
 0042282F    call        @WStrAsg
>00422834    jmp         00422847
 00422836    mov         eax,[0055D7EC];gvar_0055D7EC:?
 0042283B    lea         eax,[eax+ebx*4+4]
 0042283F    mov         edx,dword ptr [ebp-4]
 00422842    call        @WStrAsg
 00422847    mov         eax,dword ptr [ebp-30]
 0042284A    call        00405CE8
 0042284F    mov         esi,eax
 00422851    test        esi,esi
>00422853    jl          00422899
 00422855    inc         esi
 00422856    xor         ebx,ebx
 00422858    mov         eax,ebx
 0042285A    shl         eax,3
 0042285D    sub         eax,ebx
 0042285F    mov         edx,dword ptr [ebp-30]
 00422862    cmp         byte ptr [edx+eax*4],0
>00422866    jne         00422883
 00422868    mov         dl,byte ptr [ebp+10]
 0042286B    push        edx
 0042286C    push        0
 0042286E    mov         edx,dword ptr [ebp+8]
 00422871    push        edx
 00422872    mov         edx,dword ptr [ebp-30]
 00422875    mov         eax,dword ptr [edx+eax*4+0C]
 00422879    or          ecx,0FFFFFFFF
 0042287C    xor         edx,edx
 0042287E    call        00422454
 00422883    inc         ebx
 00422884    dec         esi
>00422885    jne         00422858
>00422887    jmp         00422899
 00422889    mov         dword ptr [ebp-0C],0FFFFFFFF
>00422890    jmp         00422899
 00422892    mov         dword ptr [ebp-0C],0FFFFFFFF
 00422899    xor         eax,eax
 0042289B    pop         edx
 0042289C    pop         ecx
 0042289D    pop         ecx
 0042289E    mov         dword ptr fs:[eax],edx
 004228A1    push        4228C4
 004228A6    lea         eax,[ebp-70]
 004228A9    call        @WStrClr
 004228AE    lea         eax,[ebp-50]
 004228B1    mov         edx,dword ptr ds:[410AAC];TFunctionInfo
 004228B7    call        @FinalizeRecord
 004228BC    ret
>004228BD    jmp         @HandleFinally
>004228C2    jmp         004228A6
 004228C4    mov         eax,dword ptr [ebp-0C]
 004228C7    pop         edi
 004228C8    pop         esi
 004228C9    pop         ebx
 004228CA    mov         esp,ebp
 004228CC    pop         ebp
 004228CD    ret         0C
end;*}

//004229CC
{*function sub_004229CC(?:Integer; ?:Integer):?;
begin
 004229CC    push        ebx
 004229CD    push        esi
 004229CE    push        edi
 004229CF    push        ebp
 004229D0    push        ecx
 004229D1    mov         esi,edx
 004229D3    mov         byte ptr [esp],0
 004229D7    cmp         eax,0FFFFFFFF
>004229DA    je          00422A33
 004229DC    imul        eax,eax,13
 004229DF    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 004229E5    lea         eax,[edx+eax*4]
 004229E8    lea         ebx,[eax+8]
 004229EB    cmp         byte ptr [eax+49],0
>004229EF    jne         00422A33
 004229F1    mov         eax,dword ptr [ebx+1C]
 004229F4    call        00405CE8
 004229F9    mov         edx,eax
 004229FB    test        edx,edx
>004229FD    jl          00422A33
 004229FF    inc         edx
 00422A00    xor         eax,eax
 00422A02    mov         ecx,eax
 00422A04    add         ecx,ecx
 00422A06    lea         ecx,[ecx+ecx*2]
 00422A09    mov         ebp,dword ptr [ebx+1C]
 00422A0C    mov         ecx,dword ptr [ebp+ecx*8]
 00422A10    mov         edi,esi
 00422A12    cmp         ecx,edi
>00422A14    jae         00422A2F
 00422A16    mov         ecx,eax
 00422A18    add         ecx,ecx
 00422A1A    lea         ecx,[ecx+ecx*2]
 00422A1D    mov         ebp,dword ptr [ebx+1C]
 00422A20    mov         ecx,dword ptr [ebp+ecx*8+4]
 00422A24    inc         ecx
 00422A25    cmp         edi,ecx
>00422A27    ja          00422A2F
 00422A29    mov         byte ptr [esp],1
>00422A2D    jmp         00422A33
 00422A2F    inc         eax
 00422A30    dec         edx
>00422A31    jne         00422A02
 00422A33    mov         al,byte ptr [esp]
 00422A36    pop         edx
 00422A37    pop         ebp
 00422A38    pop         edi
 00422A39    pop         esi
 00422A3A    pop         ebx
 00422A3B    ret
end;*}

//00422A3C
{*function sub_00422A3C(?:Integer; ?:?; ?:Integer; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00422A3C    push        ebp
 00422A3D    mov         ebp,esp
 00422A3F    add         esp,0FFFFFFA4
 00422A42    push        ebx
 00422A43    push        esi
 00422A44    push        edi
 00422A45    mov         dword ptr [ebp-8],ecx
 00422A48    mov         dword ptr [ebp-4],edx
 00422A4B    mov         ebx,eax
 00422A4D    mov         byte ptr [ebp-9],0
 00422A51    cmp         ebx,0FFFFFFFF
>00422A54    je          00422D7A
 00422A5A    imul        esi,ebx,13
 00422A5D    mov         eax,[0055D7EC];gvar_0055D7EC:?
 00422A62    cmp         byte ptr [eax+esi*4+49],0
>00422A67    jne         00422D7A
 00422A6D    cmp         byte ptr [ebp+18],0
>00422A71    je          00422C9F
 00422A77    mov         eax,[0055D7EC];gvar_0055D7EC:?
 00422A7C    cmp         dword ptr [eax+esi*4+14],0
>00422A81    jle         00422C74
 00422A87    cmp         byte ptr [ebp+18],0
>00422A8B    je          00422BA5
 00422A91    cmp         dword ptr [ebp-4],0
>00422A95    je          00422BA5
 00422A9B    imul        eax,ebx,13
 00422A9E    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422AA4    mov         eax,dword ptr [edx+eax*4+28]
 00422AA8    call        00405CE8
 00422AAD    test        eax,eax
>00422AAF    jl          00422BA5
 00422AB5    inc         eax
 00422AB6    mov         dword ptr [ebp-14],eax
 00422AB9    xor         esi,esi
 00422ABB    imul        edx,ebx,13
 00422ABE    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422AC4    mov         edx,dword ptr [ecx+edx*4+28]
 00422AC8    mov         eax,esi
 00422ACA    shl         eax,3
 00422ACD    sub         eax,esi
 00422ACF    mov         edx,dword ptr [edx+eax*4+8]
 00422AD3    cmp         edx,dword ptr [ebp-4]
>00422AD6    jne         00422B9B
 00422ADC    push        0
 00422ADE    push        0
 00422AE0    mov         edx,dword ptr [ebp+8]
 00422AE3    push        edx
 00422AE4    imul        edx,ebx,13
 00422AE7    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422AED    mov         edx,dword ptr [ecx+edx*4+28]
 00422AF1    mov         eax,dword ptr [edx+eax*4+0C]
 00422AF5    or          ecx,0FFFFFFFF
 00422AF8    xor         edx,edx
 00422AFA    call        00422454
 00422AFF    mov         dword ptr [ebp-10],eax
 00422B02    cmp         dword ptr [ebp-10],0FFFFFFFF
>00422B06    je          00422B9B
 00422B0C    push        7FFFFFFF
 00422B11    imul        eax,dword ptr [ebp-10],13
 00422B15    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422B1B    mov         edx,dword ptr [edx+eax*4+4]
 00422B1F    mov         edi,dword ptr ds:[55B2C0];^gvar_0053D14C
 00422B25    mov         edi,dword ptr [edi]
 00422B27    mov         ecx,1
 00422B2C    mov         eax,422D8C
 00422B31    call        edi
 00422B33    test        eax,eax
>00422B35    jg          00422B62
 00422B37    push        7FFFFFFF
 00422B3C    imul        eax,dword ptr [ebp-10],13
 00422B40    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422B46    mov         edx,dword ptr [edx+eax*4+4]
 00422B4A    mov         edi,dword ptr ds:[55B2C0];^gvar_0053D14C
 00422B50    mov         edi,dword ptr [edi]
 00422B52    mov         ecx,1
 00422B57    mov         eax,422DAC
 00422B5C    call        edi
 00422B5E    test        eax,eax
>00422B60    jle         00422B9B
 00422B62    mov         byte ptr [ebp-9],1
 00422B66    imul        edx,ebx,13
 00422B69    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422B6F    mov         edx,dword ptr [ecx+edx*4+28]
 00422B73    mov         eax,esi
 00422B75    shl         eax,3
 00422B78    sub         eax,esi
 00422B7A    mov         edx,dword ptr [edx+eax*4+4]
 00422B7E    mov         ecx,dword ptr [ebp+10]
 00422B81    mov         dword ptr [ecx],edx
 00422B83    imul        edx,ebx,13
 00422B86    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422B8C    mov         edx,dword ptr [ecx+edx*4+28]
 00422B90    mov         eax,dword ptr [edx+eax*4+8]
 00422B94    mov         edx,dword ptr [ebp-8]
 00422B97    mov         dword ptr [edx],eax
>00422B99    jmp         00422BA5
 00422B9B    inc         esi
 00422B9C    dec         dword ptr [ebp-14]
>00422B9F    jne         00422ABB
 00422BA5    cmp         byte ptr [ebp-9],0
>00422BA9    jne         00422D7A
 00422BAF    imul        eax,ebx,13
 00422BB2    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422BB8    mov         eax,dword ptr [edx+eax*4+24]
 00422BBC    call        00405CE8
 00422BC1    test        eax,eax
>00422BC3    jl          00422D7A
 00422BC9    inc         eax
 00422BCA    mov         dword ptr [ebp-14],eax
 00422BCD    xor         esi,esi
 00422BCF    imul        ecx,ebx,13
 00422BD2    mov         edi,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422BD8    mov         ecx,dword ptr [edi+ecx*4+24]
 00422BDC    mov         eax,esi
 00422BDE    add         eax,eax
 00422BE0    lea         eax,[eax+eax*2]
 00422BE3    mov         ecx,dword ptr [ecx+eax*8]
 00422BE6    mov         edx,dword ptr [ebp-8]
 00422BE9    mov         edx,dword ptr [edx]
 00422BEB    cmp         ecx,edx
>00422BED    jae         00422C65
 00422BEF    mov         ecx,dword ptr [ebp-8]
 00422BF2    imul        ecx,ebx,13
 00422BF5    mov         edi,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422BFB    mov         ecx,dword ptr [edi+ecx*4+24]
 00422BFF    mov         ecx,dword ptr [ecx+eax*8+4]
 00422C03    inc         ecx
 00422C04    cmp         edx,ecx
>00422C06    ja          00422C65
 00422C08    imul        edx,ebx,13
 00422C0B    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422C11    mov         edx,dword ptr [ecx+edx*4+24]
 00422C15    mov         eax,dword ptr [edx+eax*8]
 00422C18    mov         dword ptr [ebp-18],eax
 00422C1B    lea         ecx,[ebp-5C]
 00422C1E    mov         edx,dword ptr [ebp+8]
 00422C21    mov         eax,dword ptr [ebp-18]
 00422C24    call        00414A88
 00422C29    push        esi
 00422C2A    lea         esi,[ebp-5C]
 00422C2D    lea         edi,[ebp-38]
 00422C30    mov         ecx,9
 00422C35    rep movs    dword ptr [edi],dword ptr [esi]
 00422C37    pop         esi
 00422C38    mov         eax,dword ptr [ebp-8]
 00422C3B    mov         eax,dword ptr [eax]
 00422C3D    cmp         eax,dword ptr [ebp-18]
>00422C40    ja          00422C1B
 00422C42    mov         eax,dword ptr [ebp-8]
 00422C45    mov         eax,dword ptr [eax]
 00422C47    cmp         eax,dword ptr [ebp-18]
 00422C4A    sete        byte ptr [ebp-9]
 00422C4E    cmp         byte ptr [ebp-9],0
>00422C52    je          00422D7A
 00422C58    mov         eax,dword ptr [ebp+10]
 00422C5B    mov         edx,dword ptr [ebp-1C]
 00422C5E    mov         dword ptr [eax],edx
>00422C60    jmp         00422D7A
 00422C65    inc         esi
 00422C66    dec         dword ptr [ebp-14]
>00422C69    jne         00422BCF
>00422C6F    jmp         00422D7A
 00422C74    mov         eax,[0055D7EC];gvar_0055D7EC:?
 00422C79    mov         eax,dword ptr [eax+esi*4+0C]
 00422C7D    mov         edx,dword ptr [ebp-8]
 00422C80    cmp         eax,dword ptr [edx]
 00422C82    sete        byte ptr [ebp-9]
 00422C86    cmp         byte ptr [ebp-9],0
>00422C8A    je          00422D7A
 00422C90    mov         eax,dword ptr [ebp-8]
 00422C93    mov         eax,dword ptr [eax]
 00422C95    mov         edx,dword ptr [ebp+10]
 00422C98    mov         dword ptr [edx],eax
>00422C9A    jmp         00422D7A
 00422C9F    mov         eax,[0055D7EC];gvar_0055D7EC:?
 00422CA4    mov         eax,dword ptr [eax+esi*4+2C]
 00422CA8    call        00405CE8
 00422CAD    test        eax,eax
>00422CAF    jl          00422D01
 00422CB1    inc         eax
 00422CB2    mov         dword ptr [ebp-14],eax
 00422CB5    xor         esi,esi
 00422CB7    imul        edx,ebx,13
 00422CBA    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422CC0    mov         edx,dword ptr [ecx+edx*4+2C]
 00422CC4    lea         eax,[esi+esi*2]
 00422CC7    mov         edx,dword ptr [edx+eax*4+8]
 00422CCB    mov         ecx,dword ptr [ebp-8]
 00422CCE    cmp         edx,dword ptr [ecx]
>00422CD0    jne         00422CFB
 00422CD2    imul        edx,ebx,13
 00422CD5    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422CDB    mov         edx,dword ptr [ecx+edx*4+2C]
 00422CDF    mov         eax,dword ptr [edx+eax*4+4]
 00422CE3    mov         edx,dword ptr [ebp+10]
 00422CE6    mov         dword ptr [edx],eax
 00422CE8    mov         eax,dword ptr [ebp+0C]
 00422CEB    xor         edx,edx
 00422CED    mov         dword ptr [eax],edx
 00422CEF    mov         eax,dword ptr [ebp+14]
 00422CF2    mov         byte ptr [eax],0
 00422CF5    mov         byte ptr [ebp-9],1
>00422CF9    jmp         00422D7A
 00422CFB    inc         esi
 00422CFC    dec         dword ptr [ebp-14]
>00422CFF    jne         00422CB7
 00422D01    imul        eax,ebx,13
 00422D04    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422D0A    mov         eax,dword ptr [edx+eax*4+28]
 00422D0E    call        00405CE8
 00422D13    test        eax,eax
>00422D15    jl          00422D7A
 00422D17    inc         eax
 00422D18    mov         dword ptr [ebp-14],eax
 00422D1B    xor         esi,esi
 00422D1D    imul        edx,ebx,13
 00422D20    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422D26    mov         edx,dword ptr [ecx+edx*4+28]
 00422D2A    mov         eax,esi
 00422D2C    shl         eax,3
 00422D2F    sub         eax,esi
 00422D31    mov         edx,dword ptr [edx+eax*4+8]
 00422D35    mov         ecx,dword ptr [ebp-8]
 00422D38    cmp         edx,dword ptr [ecx]
>00422D3A    jne         00422D74
 00422D3C    imul        edx,ebx,13
 00422D3F    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422D45    mov         edx,dword ptr [ecx+edx*4+28]
 00422D49    mov         edx,dword ptr [edx+eax*4+4]
 00422D4D    mov         ecx,dword ptr [ebp+10]
 00422D50    mov         dword ptr [ecx],edx
 00422D52    imul        edx,ebx,13
 00422D55    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00422D5B    mov         edx,dword ptr [ecx+edx*4+28]
 00422D5F    mov         eax,dword ptr [edx+eax*4+0C]
 00422D63    mov         edx,dword ptr [ebp+0C]
 00422D66    mov         dword ptr [edx],eax
 00422D68    mov         eax,dword ptr [ebp+14]
 00422D6B    mov         byte ptr [eax],1
 00422D6E    mov         byte ptr [ebp-9],1
>00422D72    jmp         00422D7A
 00422D74    inc         esi
 00422D75    dec         dword ptr [ebp-14]
>00422D78    jne         00422D1D
 00422D7A    mov         al,byte ptr [ebp-9]
 00422D7D    pop         edi
 00422D7E    pop         esi
 00422D7F    pop         ebx
 00422D80    mov         esp,ebp
 00422D82    pop         ebp
 00422D83    ret         14
end;*}

//00422DB8
{*procedure sub_00422DB8(?:?; ?:?; ?:?; ?:?);
begin
 00422DB8    push        ebp
 00422DB9    mov         ebp,esp
 00422DBB    push        ecx
 00422DBC    mov         ecx,6
 00422DC1    push        0
 00422DC3    push        0
 00422DC5    dec         ecx
>00422DC6    jne         00422DC1
 00422DC8    xchg        ecx,dword ptr [ebp-4]
 00422DCB    push        ebx
 00422DCC    push        esi
 00422DCD    push        edi
 00422DCE    mov         byte ptr [ebp-6],cl
 00422DD1    mov         byte ptr [ebp-5],dl
 00422DD4    mov         dword ptr [ebp-4],eax
 00422DD7    xor         eax,eax
 00422DD9    push        ebp
 00422DDA    push        42300A
 00422DDF    push        dword ptr fs:[eax]
 00422DE2    mov         dword ptr fs:[eax],esp
 00422DE5    mov         eax,dword ptr [ebp+8]
 00422DE8    push        eax
 00422DE9    lea         eax,[ebp-24]
 00422DEC    push        eax
 00422DED    mov         cx,30
 00422DF1    mov         edx,8
 00422DF6    mov         eax,dword ptr [ebp-4]
 00422DF9    call        0040ACA0
 00422DFE    mov         eax,dword ptr [ebp-24]
 00422E01    mov         ecx,1
 00422E06    mov         edx,1
 00422E0B    call        00409270
 00422E10    xor         eax,eax
 00422E12    push        ebp
 00422E13    push        422E44
 00422E18    push        dword ptr fs:[eax]
 00422E1B    mov         dword ptr fs:[eax],esp
 00422E1E    lea         eax,[ebp-14]
 00422E21    push        eax
 00422E22    lea         eax,[ebp-20]
 00422E25    push        eax
 00422E26    lea         eax,[ebp-18]
 00422E29    push        eax
 00422E2A    lea         ecx,[ebp-10]
 00422E2D    lea         edx,[ebp-0C]
 00422E30    mov         eax,dword ptr [ebp-4]
 00422E33    call        00421BAC
 00422E38    mov         ebx,eax
 00422E3A    xor         eax,eax
 00422E3C    pop         edx
 00422E3D    pop         ecx
 00422E3E    pop         ecx
 00422E3F    mov         dword ptr fs:[eax],edx
>00422E42    jmp         00422E50
>00422E44    jmp         @HandleAnyException
 00422E49    xor         ebx,ebx
 00422E4B    call        @DoneExcept
 00422E50    test        bl,bl
>00422E52    je          00422FBC
 00422E58    cmp         byte ptr [ebp-5],0
>00422E5C    je          00422EA6
 00422E5E    mov         eax,dword ptr [ebp+8]
 00422E61    push        dword ptr [eax]
 00422E63    push        423020
 00422E68    lea         eax,[ebp-28]
 00422E6B    push        eax
 00422E6C    lea         eax,[ebp-2C]
 00422E6F    push        eax
 00422E70    mov         eax,dword ptr [ebp-4]
 00422E73    sub         eax,dword ptr [ebp-20]
 00422E76    mov         cx,30
 00422E7A    mov         edx,1
 00422E7F    call        0040ACA0
 00422E84    mov         eax,dword ptr [ebp-2C]
 00422E87    mov         ecx,1
 00422E8C    mov         edx,1
 00422E91    call        00409270
 00422E96    push        dword ptr [ebp-28]
 00422E99    mov         eax,dword ptr [ebp+8]
 00422E9C    mov         edx,3
 00422EA1    call        @WStrCatN
 00422EA6    mov         eax,dword ptr [ebp-0C]
 00422EA9    call        @WStrLen
 00422EAE    cmp         eax,1
>00422EB1    jl          00422EDF
 00422EB3    mov         dword ptr [ebp-1C],eax
 00422EB6    mov         eax,dword ptr [ebp-0C]
 00422EB9    mov         edx,dword ptr [ebp-1C]
 00422EBC    cmp         word ptr [eax+edx*2-2],5C
>00422EC2    jne         00422ED6
 00422EC4    lea         eax,[ebp-0C]
 00422EC7    mov         ecx,dword ptr [ebp-1C]
 00422ECA    mov         edx,1
 00422ECF    call        @WStrDelete
>00422ED4    jmp         00422EDF
 00422ED6    dec         dword ptr [ebp-1C]
 00422ED9    cmp         dword ptr [ebp-1C],0
>00422EDD    jne         00422EB6
 00422EDF    mov         eax,dword ptr [ebp+8]
 00422EE2    push        dword ptr [eax]
 00422EE4    push        42302C
 00422EE9    push        dword ptr [ebp-0C]
 00422EEC    push        42302C
 00422EF1    push        dword ptr [ebp-10]
 00422EF4    push        42302C
 00422EF9    mov         eax,dword ptr [ebp+8]
 00422EFC    mov         edx,6
 00422F01    call        @WStrCatN
 00422F06    cmp         dword ptr [ebp-18],0
>00422F0A    jle         00422F3B
 00422F0C    mov         eax,dword ptr [ebp+8]
 00422F0F    push        dword ptr [eax]
 00422F11    lea         eax,[ebp-30]
 00422F14    push        eax
 00422F15    mov         cx,30
 00422F19    mov         edx,1
 00422F1E    mov         eax,dword ptr [ebp-18]
 00422F21    call        0040AB1C
 00422F26    push        dword ptr [ebp-30]
 00422F29    push        42302C
 00422F2E    mov         eax,dword ptr [ebp+8]
 00422F31    mov         edx,3
 00422F36    call        @WStrCatN
 00422F3B    cmp         byte ptr [ebp-6],0
>00422F3F    je          00422FAC
 00422F41    xor         eax,eax
 00422F43    mov         dword ptr [ebp-1C],eax
 00422F46    lea         eax,[ebp-20]
 00422F49    push        eax
 00422F4A    mov         ebx,dword ptr ds:[55B6E4];^gvar_0053D438
 00422F50    mov         ebx,dword ptr [ebx]
 00422F52    lea         ecx,[ebp-20]
 00422F55    lea         edx,[ebp-1C]
 00422F58    mov         eax,dword ptr [ebp-20]
 00422F5B    call        ebx
 00422F5D    cmp         dword ptr [ebp-1C],0
>00422F61    jl          00422F9C
 00422F63    mov         eax,dword ptr [ebp+8]
 00422F66    push        dword ptr [eax]
 00422F68    push        423034
 00422F6D    lea         eax,[ebp-34]
 00422F70    push        eax
 00422F71    mov         eax,dword ptr [ebp-18]
 00422F74    sub         eax,dword ptr [ebp-1C]
 00422F77    mov         cx,30
 00422F7B    mov         edx,1
 00422F80    call        0040AB1C
 00422F85    push        dword ptr [ebp-34]
 00422F88    push        42302C
 00422F8D    mov         eax,dword ptr [ebp+8]
 00422F90    mov         edx,4
 00422F95    call        @WStrCatN
>00422F9A    jmp         00422FAC
 00422F9C    mov         eax,dword ptr [ebp+8]
 00422F9F    mov         edx,42303C;'+0 '
 00422FA4    call        @WStrCat
 00422FA9    mov         eax,dword ptr [ebp+8]
 00422FAC    mov         eax,dword ptr [ebp+8]
 00422FAF    mov         edx,dword ptr [ebp-14]
 00422FB2    call        @WStrCat
 00422FB7    mov         eax,dword ptr [ebp+8]
>00422FBA    jmp         00422FE2
 00422FBC    cmp         byte ptr [ebp-5],0
>00422FC0    je          00422FD2
 00422FC2    mov         eax,dword ptr [ebp+8]
 00422FC5    mov         edx,423048;' +0'
 00422FCA    call        @WStrCat
 00422FCF    mov         eax,dword ptr [ebp+8]
 00422FD2    mov         eax,dword ptr [ebp+8]
 00422FD5    mov         edx,423054;' ???'
 00422FDA    call        @WStrCat
 00422FDF    mov         eax,dword ptr [ebp+8]
 00422FE2    xor         eax,eax
 00422FE4    pop         edx
 00422FE5    pop         ecx
 00422FE6    pop         ecx
 00422FE7    mov         dword ptr fs:[eax],edx
 00422FEA    push        423011
 00422FEF    lea         eax,[ebp-34]
 00422FF2    mov         edx,5
 00422FF7    call        @WStrArrayClr
 00422FFC    lea         eax,[ebp-14]
 00422FFF    mov         edx,3
 00423004    call        @WStrArrayClr
 00423009    ret
>0042300A    jmp         @HandleFinally
>0042300F    jmp         00422FEF
 00423011    pop         edi
 00423012    pop         esi
 00423013    pop         ebx
 00423014    mov         esp,ebp
 00423016    pop         ebp
 00423017    ret         4
end;*}

//00423060
{*procedure sub_00423060(?:?; ?:?; ?:?; ?:?);
begin
 00423060    push        ebp
 00423061    mov         ebp,esp
 00423063    add         esp,0FFFFFFF4
 00423066    push        ebx
 00423067    push        esi
 00423068    push        edi
 00423069    xor         ebx,ebx
 0042306B    mov         dword ptr [ebp-0C],ebx
 0042306E    mov         byte ptr [ebp-5],cl
 00423071    mov         ebx,edx
 00423073    mov         dword ptr [ebp-4],eax
 00423076    xor         eax,eax
 00423078    push        ebp
 00423079    push        42310D
 0042307E    push        dword ptr fs:[eax]
 00423081    mov         dword ptr fs:[eax],esp
 00423084    mov         eax,dword ptr [ebp+8]
 00423087    call        @WStrClr
 0042308C    xor         eax,eax
 0042308E    push        ebp
 0042308F    push        4230D3
 00423094    push        dword ptr fs:[eax]
 00423097    mov         dword ptr fs:[eax],esp
 0042309A    call        RaiseList
 0042309F    test        eax,eax
>004230A1    je          004230C9
 004230A3    lea         eax,[ebp-0C]
 004230A6    push        eax
 004230A7    call        RaiseList
 004230AC    mov         eax,dword ptr [eax+4]
 004230AF    mov         cl,byte ptr [ebp-5]
 004230B2    mov         edx,ebx
 004230B4    call        00422DB8
 004230B9    mov         ecx,dword ptr [ebp-0C]
 004230BC    mov         eax,dword ptr [ebp+8]
 004230BF    mov         edx,423124;':'+#13+#10
 004230C4    call        @WStrCat3
 004230C9    xor         eax,eax
 004230CB    pop         edx
 004230CC    pop         ecx
 004230CD    pop         ecx
 004230CE    mov         dword ptr fs:[eax],edx
>004230D1    jmp         004230DD
>004230D3    jmp         @HandleAnyException
 004230D8    call        @DoneExcept
 004230DD    push        423130
 004230E2    push        dword ptr [ebp-4]
 004230E5    mov         eax,dword ptr [ebp+8]
 004230E8    push        dword ptr [eax]
 004230EA    mov         eax,dword ptr [ebp+8]
 004230ED    mov         edx,3
 004230F2    call        @WStrCatN
 004230F7    xor         eax,eax
 004230F9    pop         edx
 004230FA    pop         ecx
 004230FB    pop         ecx
 004230FC    mov         dword ptr fs:[eax],edx
 004230FF    push        423114
 00423104    lea         eax,[ebp-0C]
 00423107    call        @WStrClr
 0042310C    ret
>0042310D    jmp         @HandleFinally
>00423112    jmp         00423104
 00423114    pop         edi
 00423115    pop         esi
 00423116    pop         ebx
 00423117    mov         esp,ebp
 00423119    pop         ebp
 0042311A    ret         4
end;*}

//0042315C
{*function sub_0042315C:?;
begin
 0042315C    mov         eax,404170;@TryFinallyExit
 00423161    cmp         word ptr [eax],25FF
>00423166    jne         0042316D
 00423168    mov         eax,dword ptr [eax+2]
 0042316B    mov         eax,dword ptr [eax]
 0042316D    ret
end;*}

//00423170
{*function sub_00423170:?;
begin
 00423170    push        ebp
 00423171    mov         ebp,esp
 00423173    add         esp,0FFFFFFC0
 00423176    push        ebx
 00423177    lea         eax,[ebp-40]
 0042317A    mov         edx,dword ptr ds:[410AAC];TFunctionInfo
 00423180    call        @AddRefRecord
 00423185    xor         eax,eax
 00423187    push        ebp
 00423188    push        4231D1
 0042318D    push        dword ptr fs:[eax]
 00423190    mov         dword ptr fs:[eax],esp
 00423193    call        0042315C
 00423198    lea         edx,[ebp-40]
 0042319B    call        00415D08
 004231A0    mov         eax,dword ptr [ebp-1C]
 004231A3    call        @LStrLen
 004231A8    dec         eax
>004231A9    jne         004231B3
 004231AB    mov         eax,dword ptr [ebp-1C]
 004231AE    mov         ebx,dword ptr [eax+8]
>004231B1    jmp         004231B5
 004231B3    xor         ebx,ebx
 004231B5    xor         eax,eax
 004231B7    pop         edx
 004231B8    pop         ecx
 004231B9    pop         ecx
 004231BA    mov         dword ptr fs:[eax],edx
 004231BD    push        4231D8
 004231C2    lea         eax,[ebp-40]
 004231C5    mov         edx,dword ptr ds:[410AAC];TFunctionInfo
 004231CB    call        @FinalizeRecord
 004231D0    ret
>004231D1    jmp         @HandleFinally
>004231D6    jmp         004231C2
 004231D8    mov         eax,ebx
 004231DA    pop         ebx
 004231DB    mov         esp,ebp
 004231DD    pop         ebp
 004231DE    ret
end;*}

//004232C0
{*function sub_004232C0:?;
begin
 004232C0    mov         eax,esp
 004232C2    ret
end;*}

//004232C4
{*function sub_004232C4:?;
begin
 004232C4    mov         eax,dword ptr fs:[4]
 004232CB    ret
end;*}

//004232CC
{*procedure sub_004232CC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004232CC    push        ebp
 004232CD    mov         ebp,esp
 004232CF    push        ebx
 004232D0    push        esi
 004232D1    push        edi
 004232D2    mov         esi,ecx
 004232D4    mov         ecx,eax
 004232D6    shl         eax,4
 004232D9    add         eax,ecx
 004232DB    mov         ecx,dword ptr [ebp+18]
 004232DE    mov         ecx,dword ptr [ecx-4]
 004232E1    lea         eax,[ecx+eax*4]
 004232E4    and         edx,7F
 004232E7    lea         edx,[edx+edx*2]
 004232EA    lea         ebx,[eax+edx*4+0C]
 004232EE    mov         eax,dword ptr [ebx+4]
 004232F1    call        @LStrLen
 004232F6    cmp         eax,dword ptr [ebx]
>004232F8    jne         00423335
 004232FA    mov         edi,dword ptr [ebx]
 004232FC    test        edi,edi
>004232FE    jne         0042331A
 00423300    push        8
 00423302    lea         eax,[ebx+4]
 00423305    mov         ecx,1
 0042330A    mov         edx,dword ptr ds:[4231E0];_DynArr_16_7
 00423310    call        @DynArraySetLength
 00423315    add         esp,4
>00423318    jmp         00423335
 0042331A    mov         eax,edi
 0042331C    add         eax,eax
 0042331E    push        eax
 0042331F    lea         eax,[ebx+4]
 00423322    mov         ecx,1
 00423327    mov         edx,dword ptr ds:[4231E0];_DynArr_16_7
 0042332D    call        @DynArraySetLength
 00423332    add         esp,4
 00423335    mov         eax,dword ptr [ebx]
 00423337    shl         eax,2
 0042333A    mov         edx,dword ptr [ebx+4]
 0042333D    mov         dword ptr [edx+eax*8],esi
 00423340    mov         eax,dword ptr [ebx]
 00423342    shl         eax,2
 00423345    mov         edx,dword ptr [ebx+4]
 00423348    mov         ecx,dword ptr [ebp+10]
 0042334B    mov         dword ptr [edx+eax*8+4],ecx
 0042334F    mov         eax,dword ptr [ebx]
 00423351    shl         eax,2
 00423354    mov         edx,dword ptr [ebx+4]
 00423357    mov         cl,byte ptr [ebp+14]
 0042335A    mov         byte ptr [edx+eax*8+8],cl
 0042335E    mov         eax,dword ptr [ebx]
 00423360    shl         eax,2
 00423363    mov         edx,dword ptr [ebx+4]
 00423366    mov         ecx,dword ptr [ebp+0C]
 00423369    mov         dword ptr [edx+eax*8+0C],ecx
 0042336D    mov         eax,dword ptr [ebx]
 0042336F    shl         eax,2
 00423372    mov         edx,dword ptr [ebx+4]
 00423375    mov         ecx,dword ptr [ebp+8]
 00423378    mov         dword ptr [edx+eax*8+10],ecx
 0042337C    inc         dword ptr [ebx]
 0042337E    pop         edi
 0042337F    pop         esi
 00423380    pop         ebx
 00423381    pop         ebp
 00423382    ret         10
end;*}

//00423388
{*procedure sub_00423388(?:?; ?:?; ?:?; ?:?);
begin
 00423388    push        ebp
 00423389    mov         ebp,esp
 0042338B    push        ebx
 0042338C    push        esi
 0042338D    mov         ebx,eax
 0042338F    shl         eax,4
 00423392    add         eax,ebx
 00423394    mov         ebx,dword ptr [ebp+8]
 00423397    mov         ebx,dword ptr [ebx-4]
 0042339A    lea         eax,[ebx+eax*4]
 0042339D    and         edx,7F
 004233A0    lea         edx,[edx+edx*2]
 004233A3    lea         eax,[eax+edx*4+0C]
 004233A7    dec         dword ptr [eax]
 004233A9    mov         esi,dword ptr [eax]
 004233AB    cmp         ecx,esi
>004233AD    jge         004233D1
 004233AF    mov         edx,ecx
 004233B1    shl         edx,2
 004233B4    mov         ebx,dword ptr [eax+4]
 004233B7    lea         ebx,[ebx+edx*8+20]
 004233BB    push        ebx
 004233BC    mov         ebx,dword ptr [eax+4]
 004233BF    lea         edx,[ebx+edx*8]
 004233C2    sub         esi,ecx
 004233C4    mov         eax,esi
 004233C6    shl         eax,5
 004233C9    mov         ecx,eax
 004233CB    pop         eax
 004233CC    call        Move
 004233D1    pop         esi
 004233D2    pop         ebx
 004233D3    pop         ebp
 004233D4    ret
end;*}

//004233D8
{*procedure sub_004233D8(?:Integer; ?:?; ?:?; ?:?; ?:?);
begin
 004233D8    push        ebp
 004233D9    mov         ebp,esp
 004233DB    add         esp,0FFFFFFF4
 004233DE    push        ebx
 004233DF    push        esi
 004233E0    mov         dword ptr [ebp-0C],ecx
 004233E3    mov         byte ptr [ebp-5],dl
 004233E6    mov         dword ptr [ebp-4],eax
 004233E9    mov         eax,dword ptr [ebp-4]
 004233EC    mov         edx,eax
 004233EE    shl         eax,4
 004233F1    add         eax,edx
 004233F3    mov         edx,dword ptr [ebp+0C]
 004233F6    mov         edx,dword ptr [edx+8]
 004233F9    mov         edx,dword ptr [edx-4]
 004233FC    lea         eax,[edx+eax*4]
 004233FF    xor         edx,edx
 00423401    mov         dl,byte ptr [ebp-5]
 00423404    lea         edx,[edx+edx*2]
 00423407    lea         esi,[eax+edx*4+0C]
 0042340B    mov         ebx,dword ptr [esi]
 0042340D    dec         ebx
 0042340E    cmp         ebx,0
>00423411    jl          0042344A
 00423413    mov         eax,ebx
 00423415    shl         eax,2
 00423418    mov         edx,dword ptr [esi+4]
 0042341B    mov         edx,dword ptr [edx+eax*8]
 0042341E    cmp         edx,dword ptr [ebp-0C]
>00423421    jne         00423444
 00423423    mov         edx,dword ptr [esi+4]
 00423426    mov         eax,dword ptr [edx+eax*8+10]
 0042342A    cmp         eax,dword ptr [ebp+8]
>0042342D    jne         00423444
 0042342F    mov         eax,dword ptr [ebp+0C]
 00423432    mov         eax,dword ptr [eax+8]
 00423435    push        eax
 00423436    mov         ecx,ebx
 00423438    mov         dl,byte ptr [ebp-5]
 0042343B    mov         eax,dword ptr [ebp-4]
 0042343E    call        00423388
 00423443    pop         ecx
 00423444    dec         ebx
 00423445    cmp         ebx,0FFFFFFFF
>00423448    jne         00423413
 0042344A    pop         esi
 0042344B    pop         ebx
 0042344C    mov         esp,ebp
 0042344E    pop         ebp
 0042344F    ret         4
end;*}

//00423454
{*procedure sub_00423454(?:?; ?:?);
begin
 00423454    push        ebp
 00423455    mov         ebp,esp
 00423457    add         esp,0FFFFFFF0
 0042345A    push        ebx
 0042345B    push        esi
 0042345C    push        edi
 0042345D    mov         dword ptr [ebp-4],eax
 00423460    cmp         dword ptr [ebp-4],0FFFFFFFF
>00423464    je          00423507
 0042346A    mov         eax,dword ptr [ebp-4]
 0042346D    mov         edx,eax
 0042346F    shl         eax,4
 00423472    add         eax,edx
 00423474    mov         edx,dword ptr [ebp+8]
 00423477    mov         edx,dword ptr [edx-4]
 0042347A    lea         eax,[edx+eax*4]
 0042347D    mov         dword ptr [ebp-10],eax
 00423480    mov         eax,dword ptr [ebp-10]
 00423483    cmp         byte ptr [eax+4],0
>00423487    jne         00423507
 00423489    mov         eax,dword ptr [ebp-10]
 0042348C    mov         byte ptr [eax+24],1
 00423490    mov         byte ptr [ebp-9],0
 00423494    xor         eax,eax
 00423496    mov         al,byte ptr [ebp-9]
 00423499    lea         eax,[eax+eax*2]
 0042349C    mov         edx,dword ptr [ebp-10]
 0042349F    lea         esi,[edx+eax*4+0C]
 004234A3    mov         ebx,dword ptr [esi]
 004234A5    dec         ebx
 004234A6    test        ebx,ebx
>004234A8    jl          004234E5
 004234AA    inc         ebx
 004234AB    mov         dword ptr [ebp-8],0
 004234B2    mov         eax,dword ptr [ebp-8]
 004234B5    shl         eax,2
 004234B8    mov         edx,dword ptr [esi+4]
 004234BB    lea         eax,[edx+eax*8]
 004234BE    mov         edx,dword ptr [eax]
 004234C0    cmp         edx,0FFFFFFFF
>004234C3    je          004234DF
 004234C5    push        ebp
 004234C6    mov         ecx,dword ptr [eax+10]
 004234C9    push        ecx
 004234CA    mov         cl,byte ptr [ebp-9]
 004234CD    xor         cl,1
 004234D0    mov         edi,dword ptr [ebp-4]
 004234D3    mov         eax,edx
 004234D5    mov         edx,ecx
 004234D7    mov         ecx,edi
 004234D9    call        004233D8
 004234DE    pop         ecx
 004234DF    inc         dword ptr [ebp-8]
 004234E2    dec         ebx
>004234E3    jne         004234B2
 004234E5    xor         eax,eax
 004234E7    mov         dword ptr [esi],eax
 004234E9    mov         dword ptr [esi+8],0FFFFFFFF
 004234F0    lea         eax,[esi+4]
 004234F3    mov         edx,dword ptr ds:[4231E0];_DynArr_16_7
 004234F9    call        @DynArrayClear
 004234FE    inc         byte ptr [ebp-9]
 00423501    cmp         byte ptr [ebp-9],2
>00423505    jne         00423494
 00423507    pop         edi
 00423508    pop         esi
 00423509    pop         ebx
 0042350A    mov         esp,ebp
 0042350C    pop         ebp
 0042350D    ret
end;*}

//00423538
{*function sub_00423538(?:?; ?:?):?;
begin
 00423538    push        ebp
 00423539    mov         ebp,esp
 0042353B    add         esp,0FFFFFFF8
 0042353E    mov         edx,dword ptr [ebp+8]
 00423541    mov         edx,dword ptr [edx+0C]
 00423544    mov         edx,dword ptr [edx+8]
 00423547    mov         edx,dword ptr [edx-8]
 0042354A    push        edx
 0042354B    lea         edx,[ebp-8]
 0042354E    sub         eax,8
 00423551    mov         ecx,8
 00423556    call        00417250
 0042355B    test        al,al
>0042355D    je          004235D9
 0042355F    mov         eax,dword ptr [ebp-4]
 00423562    xor         edx,edx
 00423564    mov         ecx,eax
 00423566    mov         eax,dword ptr [ebp-8]
 00423569    mov         edx,eax
 0042356B    and         edx,0FF000000
 00423571    cmp         edx,0E8000000
>00423577    je          004235D7
 00423579    mov         edx,ecx
 0042357B    and         edx,30FF0000
 00423581    cmp         edx,10FF0000
>00423587    je          004235D7
 00423589    mov         edx,ecx
 0042358B    and         edx,30FF00
 00423591    cmp         edx,10FF00
>00423597    je          004235D7
 00423599    and         ecx,30FF
 0042359F    cmp         ecx,10FF
>004235A5    je          004235D7
 004235A7    mov         edx,eax
 004235A9    and         edx,30FF0000
 004235AF    cmp         edx,10FF0000
>004235B5    je          004235D7
 004235B7    mov         edx,eax
 004235B9    and         edx,30FF00
 004235BF    cmp         edx,10FF00
>004235C5    je          004235D7
 004235C7    and         eax,0FF00
 004235CC    cmp         eax,9A00
>004235D1    je          004235D7
 004235D3    xor         eax,eax
>004235D5    jmp         004235D9
 004235D7    mov         al,1
 004235D9    pop         ecx
 004235DA    pop         ecx
 004235DB    pop         ebp
 004235DC    ret
end;*}

//004235E0
{*function sub_004235E0(?:?; ?:?; ?:?):?;
begin
 004235E0    push        ebp
 004235E1    mov         ebp,esp
 004235E3    add         esp,0FFFFFFF0
 004235E6    push        ebx
 004235E7    push        esi
 004235E8    push        edi
 004235E9    mov         dword ptr [ebp-8],edx
 004235EC    mov         dword ptr [ebp-4],eax
 004235EF    mov         eax,dword ptr [ebp-4]
 004235F2    mov         edx,eax
 004235F4    shl         eax,3
 004235F7    sub         eax,edx
 004235F9    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 004235FF    lea         ebx,[edx+eax*4]
 00423602    xor         esi,esi
 00423604    mov         eax,dword ptr [ebx]
 00423606    call        0040F9FC
 0042360B    test        eax,eax
>0042360D    je          0042364A
 0042360F    mov         dword ptr [ebp-10],eax
 00423612    mov         eax,dword ptr [ebp-10]
 00423615    mov         edx,dword ptr [eax+14]
 00423618    dec         edx
 00423619    test        edx,edx
>0042361B    jl          0042364A
 0042361D    inc         edx
 0042361E    mov         dword ptr [ebp-0C],0
 00423625    mov         ecx,dword ptr [ebp-10]
 00423628    mov         ecx,dword ptr [ecx+1C]
 0042362B    mov         eax,dword ptr [ebx]
 0042362D    add         ecx,eax
 0042362F    mov         edi,dword ptr [ebp-0C]
 00423632    mov         ecx,dword ptr [ecx+edi*4]
 00423635    add         ecx,eax
 00423637    mov         eax,ecx
 00423639    cmp         eax,dword ptr [ebp-8]
>0042363C    jae         00423644
 0042363E    cmp         eax,esi
>00423640    jbe         00423644
 00423642    mov         esi,eax
 00423644    inc         dword ptr [ebp-0C]
 00423647    dec         edx
>00423648    jne         00423625
 0042364A    mov         eax,dword ptr [ebx]
 0042364C    call        0040F964
 00423651    test        eax,eax
>00423653    je          00423677
 00423655    cmp         word ptr [eax+18],20B
>0042365B    jne         00423667
 0042365D    add         eax,18
 00423660    mov         eax,dword ptr [eax+10]
 00423663    add         eax,dword ptr [ebx]
>00423665    jmp         0042366C
 00423667    mov         eax,dword ptr [eax+28]
 0042366A    add         eax,dword ptr [ebx]
 0042366C    cmp         eax,dword ptr [ebp-8]
>0042366F    jae         00423677
 00423671    cmp         eax,esi
>00423673    jbe         00423677
 00423675    mov         esi,eax
 00423677    push        1
 00423679    push        0
 0042367B    mov         eax,dword ptr [ebp+8]
 0042367E    mov         eax,dword ptr [eax+0C]
 00423681    mov         eax,dword ptr [eax+8]
 00423684    mov         eax,dword ptr [eax-8]
 00423687    push        eax
 00423688    mov         ecx,dword ptr [ebp-4]
 0042368B    xor         edx,edx
 0042368D    mov         eax,esi
 0042368F    call        00422454
 00423694    pop         edi
 00423695    pop         esi
 00423696    pop         ebx
 00423697    mov         esp,ebp
 00423699    pop         ebp
 0042369A    ret
end;*}

//0042369C
{*function sub_0042369C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0042369C    push        ebp
 0042369D    mov         ebp,esp
 0042369F    add         esp,0FFFFFF6C
 004236A5    push        ebx
 004236A6    push        esi
 004236A7    push        edi
 004236A8    xor         ebx,ebx
 004236AA    mov         dword ptr [ebp-94],ebx
 004236B0    mov         dword ptr [ebp-90],ebx
 004236B6    mov         dword ptr [ebp-8C],ebx
 004236BC    mov         dword ptr [ebp-88],ebx
 004236C2    mov         ebx,ecx
 004236C4    mov         dword ptr [ebp-4],edx
 004236C7    mov         edi,eax
 004236C9    lea         eax,[ebp-84]
 004236CF    mov         edx,dword ptr ds:[41C63C];TMfPublic
 004236D5    call        @AddRefRecord
 004236DA    xor         eax,eax
 004236DC    push        ebp
 004236DD    push        423D47
 004236E2    push        dword ptr fs:[eax]
 004236E5    mov         dword ptr fs:[eax],esp
 004236E8    xor         eax,eax
 004236EA    mov         dword ptr [ebp-1C],eax
 004236ED    mov         eax,dword ptr [ebp+0C]
 004236F0    mov         eax,dword ptr [eax-4]
 004236F3    cmp         eax,dword ptr [ebp-4]
>004236F6    jne         00423701
 004236F8    mov         byte ptr [ebp-5],0
>004236FC    jmp         00423D18
 00423701    test        bl,bl
>00423703    jne         00423729
 00423705    mov         eax,dword ptr [ebp+0C]
 00423708    mov         eax,dword ptr [eax+8]
 0042370B    cmp         byte ptr [eax+54],0
>0042370F    je          00423725
 00423711    cmp         dword ptr [ebp-4],0
>00423715    je          00423725
 00423717    mov         eax,dword ptr [ebp+0C]
 0042371A    mov         eax,dword ptr [eax+8]
 0042371D    mov         eax,dword ptr [eax+58]
 00423720    cmp         eax,dword ptr [ebp-4]
>00423723    je          00423729
 00423725    xor         eax,eax
>00423727    jmp         0042372B
 00423729    mov         al,1
 0042372B    mov         ebx,eax
 0042372D    test        bl,bl
>0042372F    je          00423775
 00423731    mov         esi,dword ptr [ebp-4]
 00423734    mov         eax,dword ptr [ebp+0C]
 00423737    mov         eax,dword ptr [eax+8]
 0042373A    mov         eax,dword ptr [eax-8]
 0042373D    push        eax
 0042373E    lea         edx,[ebp-30]
 00423741    mov         ecx,8
 00423746    mov         eax,esi
 00423748    call        00417250
 0042374D    test        al,al
>0042374F    je          00423770
 00423751    lea         ecx,[ebp-78]
 00423754    mov         eax,dword ptr [ebp+0C]
 00423757    mov         eax,dword ptr [eax+8]
 0042375A    mov         edx,dword ptr [eax-8]
 0042375D    mov         eax,esi
 0042375F    call        00414A88
 00423764    cmp         byte ptr [ebp-78],0
>00423768    je          00423770
 0042376A    mov         eax,dword ptr [ebp-58]
 0042376D    mov         dword ptr [ebp-4],eax
 00423770    mov         dword ptr [ebp-1C],esi
>00423773    jmp         00423779
 00423775    mov         esi,dword ptr [ebp-4]
 00423778    dec         esi
 00423779    mov         eax,dword ptr [ebp+0C]
 0042377C    cmp         dword ptr [eax-8],0
>00423780    jne         00423790
 00423782    mov         eax,dword ptr [ebp+0C]
 00423785    mov         eax,dword ptr [eax+8]
 00423788    cmp         dword ptr [eax+44],0
>0042378C    je          00423790
 0042378E    mov         bl,1
 00423790    mov         dword ptr [ebp-0C],0FFFFFFFF
 00423797    push        1C
 00423799    lea         eax,[ebp-54]
 0042379C    push        eax
 0042379D    push        esi
 0042379E    call        kernel32.VirtualQuery
 004237A3    cmp         eax,1C
>004237A6    jne         0042385B
 004237AC    cmp         dword ptr [ebp-44],1000
>004237B3    jne         0042385B
 004237B9    cmp         dword ptr [ebp-50],0
>004237BD    je          0042385B
 004237C3    cmp         dword ptr [ebp-4],7
>004237C7    jbe         0042385B
 004237CD    test        bl,bl
>004237CF    jne         004237DF
 004237D1    push        ebp
 004237D2    mov         eax,dword ptr [ebp-4]
 004237D5    call        00423538
 004237DA    pop         ecx
 004237DB    test        al,al
>004237DD    je          0042385B
 004237DF    mov         eax,dword ptr [ebp+0C]
 004237E2    mov         eax,dword ptr [eax+8]
 004237E5    mov         ecx,dword ptr [eax-8]
 004237E8    lea         edx,[ebp-0C]
 004237EB    mov         eax,dword ptr [ebp-50]
 004237EE    call        00422018
 004237F3    test        al,al
>004237F5    je          0042385F
 004237F7    mov         eax,dword ptr [ebp-0C]
 004237FA    mov         edx,eax
 004237FC    shl         eax,3
 004237FF    sub         eax,edx
 00423801    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00423807    mov         eax,dword ptr [edx+eax*4+10]
 0042380B    cmp         eax,dword ptr [ebp-4]
>0042380E    jae         00423829
 00423810    mov         eax,dword ptr [ebp-0C]
 00423813    mov         edx,eax
 00423815    shl         eax,3
 00423818    sub         eax,edx
 0042381A    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00423820    mov         eax,dword ptr [edx+eax*4+14]
 00423824    cmp         eax,dword ptr [ebp-4]
>00423827    jae         0042385F
 00423829    mov         eax,dword ptr [ebp-0C]
 0042382C    mov         edx,eax
 0042382E    shl         eax,3
 00423831    sub         eax,edx
 00423833    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00423839    mov         eax,dword ptr [edx+eax*4+8]
 0042383D    cmp         eax,dword ptr [ebp-4]
>00423840    jae         0042385B
 00423842    mov         eax,dword ptr [ebp-0C]
 00423845    mov         edx,eax
 00423847    shl         eax,3
 0042384A    sub         eax,edx
 0042384C    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00423852    mov         eax,dword ptr [edx+eax*4+0C]
 00423856    cmp         eax,dword ptr [ebp-4]
>00423859    jae         0042385F
 0042385B    xor         eax,eax
>0042385D    jmp         00423861
 0042385F    mov         al,1
 00423861    mov         byte ptr [ebp-5],al
 00423864    mov         al,byte ptr [ebp-5]
 00423867    or          al,bl
>00423869    je          00423D18
>0042386F    jmp         00423877
 00423871    mov         eax,dword ptr [ebp+0C]
 00423874    dec         dword ptr [eax-0C]
 00423877    mov         eax,dword ptr [ebp+0C]
 0042387A    cmp         dword ptr [eax-0C],0
>0042387E    jl          00423893
 00423880    mov         eax,dword ptr [ebp+0C]
 00423883    mov         eax,dword ptr [eax-0C]
 00423886    mov         edx,dword ptr [ebp+0C]
 00423889    mov         edx,dword ptr [edx-10]
 0042388C    mov         eax,dword ptr [edx+eax*4]
 0042388F    cmp         eax,edi
>00423891    ja          00423871
 00423893    mov         dword ptr [ebp-10],0FFFFFFFF
 0042389A    xor         eax,eax
 0042389C    mov         dword ptr [ebp-20],eax
 0042389F    mov         byte ptr [ebp-22],0
 004238A3    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004238A7    je          00423B7A
 004238AD    mov         eax,dword ptr [ebp-0C]
 004238B0    mov         edx,eax
 004238B2    shl         eax,3
 004238B5    sub         eax,edx
 004238B7    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 004238BD    mov         eax,dword ptr [edx+eax*4+8]
 004238C1    cmp         eax,dword ptr [ebp-4]
>004238C4    jae         00423B7A
 004238CA    mov         eax,dword ptr [ebp-0C]
 004238CD    mov         edx,eax
 004238CF    shl         eax,3
 004238D2    sub         eax,edx
 004238D4    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 004238DA    mov         eax,dword ptr [edx+eax*4+0C]
 004238DE    cmp         eax,dword ptr [ebp-4]
>004238E1    jb          00423B7A
 004238E7    mov         eax,dword ptr [ebp-0C]
 004238EA    mov         edx,eax
 004238EC    shl         eax,3
 004238EF    sub         eax,edx
 004238F1    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 004238F7    cmp         dword ptr [edx+eax*4+18],0
>004238FC    je          00423B09
 00423902    mov         eax,dword ptr [ebp-0C]
 00423905    mov         edx,eax
 00423907    shl         eax,3
 0042390A    sub         eax,edx
 0042390C    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00423912    mov         eax,dword ptr [edx+eax*4+18]
 00423916    lea         ecx,[ebp-84]
 0042391C    mov         edx,esi
 0042391E    call        00421114
 00423923    cmp         byte ptr [ebp-84],0
>0042392A    je          00423B03
 00423930    push        1
 00423932    push        0
 00423934    mov         eax,dword ptr [ebp+0C]
 00423937    mov         eax,dword ptr [eax+8]
 0042393A    mov         eax,dword ptr [eax-8]
 0042393D    push        eax
 0042393E    mov         ecx,dword ptr [ebp-0C]
 00423941    mov         edx,dword ptr [ebp-80]
 00423944    mov         eax,dword ptr [ebp-7C]
 00423947    call        00422454
 0042394C    mov         dword ptr [ebp-10],eax
 0042394F    mov         eax,dword ptr [ebp+0C]
 00423952    mov         eax,dword ptr [eax+8]
 00423955    cmp         byte ptr [eax+50],0
>00423959    je          00423962
 0042395B    xor         eax,eax
 0042395D    mov         dword ptr [ebp-28],eax
>00423960    jmp         00423965
 00423962    mov         dword ptr [ebp-28],esi
 00423965    cmp         dword ptr [ebp-10],0FFFFFFFF
>00423969    je          00423994
 0042396B    push        ebx
 0042396C    lea         eax,[ebp-22]
 0042396F    push        eax
 00423970    lea         eax,[ebp-1C]
 00423973    push        eax
 00423974    lea         eax,[ebp-20]
 00423977    push        eax
 00423978    mov         eax,dword ptr [ebp+0C]
 0042397B    mov         eax,dword ptr [eax+8]
 0042397E    mov         eax,dword ptr [eax-8]
 00423981    push        eax
 00423982    lea         ecx,[ebp-4]
 00423985    mov         edx,dword ptr [ebp-28]
 00423988    mov         eax,dword ptr [ebp-10]
 0042398B    call        00422A3C
 00423990    test        al,al
>00423992    jne         00423998
 00423994    xor         eax,eax
>00423996    jmp         0042399A
 00423998    mov         al,1
 0042399A    mov         byte ptr [ebp-5],al
 0042399D    cmp         dword ptr [ebp-10],0FFFFFFFF
>004239A1    je          00423B7A
 004239A7    cmp         byte ptr [ebp-5],0
>004239AB    jne         00423B7A
 004239B1    imul        eax,dword ptr [ebp-10],13
 004239B5    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 004239BB    lea         eax,[edx+eax*4+8]
 004239BF    mov         dword ptr [ebp-34],eax
 004239C2    mov         eax,dword ptr [ebp-34]
 004239C5    mov         eax,dword ptr [eax+20]
 004239C8    call        00405CE8
 004239CD    test        eax,eax
>004239CF    jl          00423B7A
 004239D5    inc         eax
 004239D6    mov         dword ptr [ebp-38],eax
 004239D9    mov         dword ptr [ebp-14],0
 004239E0    mov         eax,dword ptr [ebp-14]
 004239E3    mov         edx,eax
 004239E5    shl         eax,3
 004239E8    sub         eax,edx
 004239EA    mov         edx,dword ptr [ebp-34]
 004239ED    mov         edx,dword ptr [edx+20]
 004239F0    mov         eax,dword ptr [edx+eax*4+0C]
 004239F4    mov         edx,dword ptr [ebp-34]
 004239F7    cmp         eax,dword ptr [edx+4]
>004239FA    jbe         00423AF5
 00423A00    mov         eax,dword ptr [ebp-14]
 00423A03    mov         edx,eax
 00423A05    shl         eax,3
 00423A08    sub         eax,edx
 00423A0A    mov         edx,dword ptr [ebp-34]
 00423A0D    mov         edx,dword ptr [edx+20]
 00423A10    mov         eax,dword ptr [edx+eax*4+0C]
 00423A14    mov         edx,dword ptr [ebp-34]
 00423A17    mov         edx,dword ptr [edx+4]
 00423A1A    mov         ecx,dword ptr [ebp-34]
 00423A1D    add         edx,dword ptr [ecx+0C]
 00423A20    cmp         eax,edx
>00423A22    jb          00423A66
 00423A24    mov         eax,dword ptr [ebp-14]
 00423A27    mov         edx,eax
 00423A29    shl         eax,3
 00423A2C    sub         eax,edx
 00423A2E    mov         edx,dword ptr [ebp-34]
 00423A31    mov         edx,dword ptr [edx+20]
 00423A34    mov         edx,dword ptr [edx+eax*4+0C]
 00423A38    mov         eax,dword ptr [ebp-0C]
 00423A3B    mov         ecx,eax
 00423A3D    shl         eax,3
 00423A40    sub         eax,ecx
 00423A42    mov         ecx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00423A48    mov         eax,dword ptr [ecx+eax*4+18]
 00423A4C    lea         ecx,[ebp-90]
 00423A52    call        00421114
 00423A57    mov         eax,dword ptr [ebp-88]
 00423A5D    cmp         eax,dword ptr [ebp-7C]
>00423A60    jne         00423AF5
 00423A66    push        1
 00423A68    push        0
 00423A6A    mov         eax,dword ptr [ebp+0C]
 00423A6D    mov         eax,dword ptr [eax+8]
 00423A70    mov         eax,dword ptr [eax-8]
 00423A73    push        eax
 00423A74    lea         eax,[ebp-94]
 00423A7A    mov         ecx,423D60;'.@label'
 00423A7F    mov         edx,dword ptr [ebp-80]
 00423A82    call        @WStrCat3
 00423A87    mov         edx,dword ptr [ebp-94]
 00423A8D    mov         eax,dword ptr [ebp-14]
 00423A90    mov         ecx,eax
 00423A92    shl         eax,3
 00423A95    sub         eax,ecx
 00423A97    mov         ecx,dword ptr [ebp-34]
 00423A9A    mov         ecx,dword ptr [ecx+20]
 00423A9D    mov         eax,dword ptr [ecx+eax*4+0C]
 00423AA1    mov         ecx,dword ptr [ebp-0C]
 00423AA4    call        00422454
 00423AA9    mov         dword ptr [ebp-18],eax
 00423AAC    cmp         dword ptr [ebp-18],0FFFFFFFF
>00423AB0    je          00423ADB
 00423AB2    push        ebx
 00423AB3    lea         eax,[ebp-22]
 00423AB6    push        eax
 00423AB7    lea         eax,[ebp-1C]
 00423ABA    push        eax
 00423ABB    lea         eax,[ebp-20]
 00423ABE    push        eax
 00423ABF    mov         eax,dword ptr [ebp+0C]
 00423AC2    mov         eax,dword ptr [eax+8]
 00423AC5    mov         eax,dword ptr [eax-8]
 00423AC8    push        eax
 00423AC9    lea         ecx,[ebp-4]
 00423ACC    mov         edx,dword ptr [ebp-28]
 00423ACF    mov         eax,dword ptr [ebp-18]
 00423AD2    call        00422A3C
 00423AD7    test        al,al
>00423AD9    jne         00423ADF
 00423ADB    xor         eax,eax
>00423ADD    jmp         00423AE1
 00423ADF    mov         al,1
 00423AE1    mov         byte ptr [ebp-5],al
 00423AE4    cmp         byte ptr [ebp-5],0
>00423AE8    je          00423AF5
 00423AEA    mov         eax,dword ptr [ebp-18]
 00423AED    mov         dword ptr [ebp-10],eax
>00423AF0    jmp         00423B7A
 00423AF5    inc         dword ptr [ebp-14]
 00423AF8    dec         dword ptr [ebp-38]
>00423AFB    jne         004239E0
>00423B01    jmp         00423B7A
 00423B03    mov         byte ptr [ebp-5],0
>00423B07    jmp         00423B7A
 00423B09    push        0
 00423B0B    call        kernel32.GetModuleHandleA
 00423B10    mov         edx,dword ptr [ebp-0C]
 00423B13    mov         ecx,edx
 00423B15    shl         edx,3
 00423B18    sub         edx,ecx
 00423B1A    mov         ecx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00423B20    cmp         eax,dword ptr [ecx+edx*4]
>00423B23    je          00423B7A
 00423B25    push        ebp
 00423B26    mov         edx,dword ptr [ebp-4]
 00423B29    mov         eax,dword ptr [ebp-0C]
 00423B2C    call        004235E0
 00423B31    pop         ecx
 00423B32    mov         dword ptr [ebp-10],eax
 00423B35    cmp         dword ptr [ebp-10],0FFFFFFFF
>00423B39    je          00423B73
 00423B3B    mov         edx,dword ptr [ebp-4]
 00423B3E    mov         eax,dword ptr [ebp-10]
 00423B41    call        004229CC
 00423B46    test        al,al
>00423B48    je          00423B73
 00423B4A    push        ebx
 00423B4B    lea         eax,[ebp-22]
 00423B4E    push        eax
 00423B4F    lea         eax,[ebp-1C]
 00423B52    push        eax
 00423B53    lea         eax,[ebp-20]
 00423B56    push        eax
 00423B57    mov         eax,dword ptr [ebp+0C]
 00423B5A    mov         eax,dword ptr [eax+8]
 00423B5D    mov         eax,dword ptr [eax-8]
 00423B60    push        eax
 00423B61    lea         ecx,[ebp-4]
 00423B64    xor         edx,edx
 00423B66    mov         eax,dword ptr [ebp-10]
 00423B69    call        00422A3C
 00423B6E    mov         byte ptr [ebp-5],al
>00423B71    jmp         00423B7A
 00423B73    mov         dword ptr [ebp-10],0FFFFFFFF
 00423B7A    cmp         dword ptr [ebp-1C],0
 00423B7E    setne       byte ptr [ebp-21]
 00423B82    mov         al,byte ptr [ebp-5]
 00423B85    xor         al,1
 00423B87    test        al,bl
>00423B89    je          00423BFC
 00423B8B    mov         dword ptr [ebp-10],0FFFFFFFF
 00423B92    mov         eax,dword ptr [ebp+0C]
 00423B95    mov         eax,dword ptr [eax+8]
 00423B98    cmp         byte ptr [eax+54],0
>00423B9C    je          00423BAA
 00423B9E    mov         eax,dword ptr [ebp+0C]
 00423BA1    mov         eax,dword ptr [eax+8]
 00423BA4    cmp         byte ptr [eax+50],0
>00423BA8    je          00423BFC
 00423BAA    mov         dword ptr [ebp-1C],esi
 00423BAD    mov         byte ptr [ebp-21],1
 00423BB1    mov         eax,dword ptr [ebp+0C]
 00423BB4    mov         eax,dword ptr [eax+8]
 00423BB7    cmp         byte ptr [eax+54],0
>00423BBB    je          00423BFC
 00423BBD    mov         eax,dword ptr [ebp+0C]
 00423BC0    mov         eax,dword ptr [eax+8]
 00423BC3    mov         eax,dword ptr [eax-8]
 00423BC6    push        eax
 00423BC7    lea         edx,[ebp-30]
 00423BCA    mov         ecx,1
 00423BCF    mov         eax,esi
 00423BD1    call        00417250
 00423BD6    test        al,al
>00423BD8    jne         00423BFC
 00423BDA    push        1
 00423BDC    push        1
 00423BDE    mov         eax,dword ptr [ebp+0C]
 00423BE1    mov         eax,dword ptr [eax+8]
 00423BE4    mov         eax,dword ptr [eax-8]
 00423BE7    push        eax
 00423BE8    or          ecx,0FFFFFFFF
 00423BEB    xor         edx,edx
 00423BED    mov         eax,dword ptr [ebp-4]
 00423BF0    call        00422454
 00423BF5    mov         dword ptr [ebp-10],eax
 00423BF8    mov         byte ptr [ebp-5],1
 00423BFC    mov         al,byte ptr [ebp-5]
 00423BFF    or          al,bl
>00423C01    jne         00423C2B
 00423C03    cmp         byte ptr [ebp+8],0
>00423C07    jne         00423C2B
 00423C09    mov         eax,dword ptr [ebp+0C]
 00423C0C    cmp         dword ptr [eax-0C],0
>00423C10    jl          00423D18
 00423C16    mov         eax,dword ptr [ebp+0C]
 00423C19    mov         eax,dword ptr [eax-0C]
 00423C1C    mov         edx,dword ptr [ebp+0C]
 00423C1F    mov         edx,dword ptr [edx-10]
 00423C22    cmp         edi,dword ptr [edx+eax*4]
>00423C25    jne         00423D18
 00423C2B    mov         eax,dword ptr [ebp+0C]
 00423C2E    mov         eax,dword ptr [eax+8]
 00423C31    mov         eax,dword ptr [eax-4]
 00423C34    call        @LStrLen
 00423C39    mov         edx,dword ptr [ebp+0C]
 00423C3C    cmp         eax,dword ptr [edx-8]
>00423C3F    jne         00423C66
 00423C41    mov         eax,dword ptr [ebp+0C]
 00423C44    mov         eax,dword ptr [eax-8]
 00423C47    add         eax,eax
 00423C49    push        eax
 00423C4A    mov         eax,dword ptr [ebp+0C]
 00423C4D    mov         eax,dword ptr [eax+8]
 00423C50    add         eax,0FFFFFFFC
 00423C53    mov         ecx,1
 00423C58    mov         edx,dword ptr ds:[423298];_DynArr_16_9
 00423C5E    call        @DynArraySetLength
 00423C63    add         esp,4
 00423C66    mov         eax,dword ptr [ebp+0C]
 00423C69    mov         eax,dword ptr [eax-8]
 00423C6C    mov         edx,eax
 00423C6E    shl         eax,4
 00423C71    add         eax,edx
 00423C73    mov         edx,dword ptr [ebp+0C]
 00423C76    mov         edx,dword ptr [edx+8]
 00423C79    mov         edx,dword ptr [edx-4]
 00423C7C    lea         eax,[edx+eax*4]
 00423C7F    mov         edx,dword ptr [ebp-4]
 00423C82    mov         dword ptr [eax],edx
 00423C84    mov         edx,dword ptr [ebp-0C]
 00423C87    mov         dword ptr [eax+8],edx
 00423C8A    mov         dl,byte ptr [ebp+8]
 00423C8D    or          dl,bl
>00423C8F    jne         00423CAF
 00423C91    mov         edx,dword ptr [ebp+0C]
 00423C94    cmp         dword ptr [edx-0C],0
>00423C98    jl          00423CAB
 00423C9A    mov         edx,dword ptr [ebp+0C]
 00423C9D    mov         edx,dword ptr [edx-0C]
 00423CA0    mov         ecx,dword ptr [ebp+0C]
 00423CA3    mov         ecx,dword ptr [ecx-10]
 00423CA6    cmp         edi,dword ptr [ecx+edx*4]
>00423CA9    je          00423CAF
 00423CAB    xor         edx,edx
>00423CAD    jmp         00423CB1
 00423CAF    mov         dl,1
 00423CB1    mov         byte ptr [eax+4],dl
 00423CB4    test        bl,bl
>00423CB6    je          00423CCD
 00423CB8    mov         edx,dword ptr [ebp+0C]
 00423CBB    cmp         dword ptr [edx-8],0
>00423CBF    jne         00423CD1
 00423CC1    mov         edx,dword ptr [ebp+0C]
 00423CC4    mov         edx,dword ptr [edx+8]
 00423CC7    cmp         dword ptr [edx+44],0
>00423CCB    je          00423CD1
 00423CCD    xor         edx,edx
>00423CCF    jmp         00423CD3
 00423CD1    mov         dl,1
 00423CD3    mov         byte ptr [eax+5],dl
 00423CD6    mov         dword ptr [eax+20],0FFFFFFFF
 00423CDD    mov         dword ptr [eax+14],0FFFFFFFF
 00423CE4    cmp         byte ptr [ebp-21],0
>00423CE8    je          00423D12
 00423CEA    mov         eax,dword ptr [ebp+0C]
 00423CED    mov         eax,dword ptr [eax+8]
 00423CF0    push        eax
 00423CF1    mov         al,byte ptr [ebp-22]
 00423CF4    push        eax
 00423CF5    mov         eax,dword ptr [ebp-1C]
 00423CF8    push        eax
 00423CF9    mov         eax,dword ptr [ebp-20]
 00423CFC    push        eax
 00423CFD    mov         eax,dword ptr [ebp-10]
 00423D00    push        eax
 00423D01    mov         eax,dword ptr [ebp+0C]
 00423D04    mov         eax,dword ptr [eax-8]
 00423D07    or          ecx,0FFFFFFFF
 00423D0A    mov         dl,1
 00423D0C    call        004232CC
 00423D11    pop         ecx
 00423D12    mov         eax,dword ptr [ebp+0C]
 00423D15    inc         dword ptr [eax-8]
 00423D18    xor         eax,eax
 00423D1A    pop         edx
 00423D1B    pop         ecx
 00423D1C    pop         ecx
 00423D1D    mov         dword ptr fs:[eax],edx
 00423D20    push        423D4E
 00423D25    lea         eax,[ebp-94]
 00423D2B    call        @WStrClr
 00423D30    lea         eax,[ebp-90]
 00423D36    mov         edx,dword ptr ds:[41C63C];TMfPublic
 00423D3C    mov         ecx,2
 00423D41    call        @FinalizeArray
 00423D46    ret
>00423D47    jmp         @HandleFinally
>00423D4C    jmp         00423D25
 00423D4E    mov         al,byte ptr [ebp-5]
 00423D51    pop         edi
 00423D52    pop         esi
 00423D53    pop         ebx
 00423D54    mov         esp,ebp
 00423D56    pop         ebp
 00423D57    ret         4
end;*}

//00423D70
{*procedure sub_00423D70(?:?; ?:?);
begin
 00423D70    push        ebp
 00423D71    mov         ebp,esp
 00423D73    push        ecx
 00423D74    push        ebx
 00423D75    push        esi
 00423D76    push        edi
 00423D77    mov         ebx,eax
 00423D79    push        40
 00423D7B    mov         eax,dword ptr [ebp+8]
 00423D7E    add         eax,0FFFFFFF0
 00423D81    mov         ecx,1
 00423D86    mov         edx,dword ptr ds:[423510];_DynArr_16_01
 00423D8C    call        @DynArraySetLength
 00423D91    add         esp,4
 00423D94    xor         esi,esi
 00423D96    lea         eax,[ebx+4]
 00423D99    mov         edx,dword ptr [ebp+8]
 00423D9C    mov         edx,dword ptr [edx+8]
 00423D9F    cmp         eax,dword ptr [edx+4C]
>00423DA2    jbe         00423E03
 00423DA4    mov         edx,dword ptr [ebp+8]
 00423DA7    mov         edx,dword ptr [edx+8]
 00423DAA    cmp         eax,dword ptr [edx+48]
>00423DAD    jae         00423E03
 00423DAF    mov         edx,dword ptr [ebp+8]
 00423DB2    mov         edx,dword ptr [edx-10]
 00423DB5    mov         dword ptr [edx+esi*4],eax
 00423DB8    inc         esi
>00423DB9    jmp         00423E03
 00423DBB    mov         ebx,dword ptr [ebp-4]
 00423DBE    lea         edi,[ebx+4]
 00423DC1    mov         eax,dword ptr [ebp+8]
 00423DC4    mov         eax,dword ptr [eax+8]
 00423DC7    cmp         edi,dword ptr [eax+4C]
>00423DCA    jbe         00423E03
 00423DCC    mov         eax,dword ptr [ebp+8]
 00423DCF    mov         eax,dword ptr [eax-10]
 00423DD2    call        @LStrLen
 00423DD7    cmp         esi,eax
>00423DD9    jne         00423DF9
 00423DDB    mov         eax,esi
 00423DDD    add         eax,eax
 00423DDF    push        eax
 00423DE0    mov         eax,dword ptr [ebp+8]
 00423DE3    add         eax,0FFFFFFF0
 00423DE6    mov         ecx,1
 00423DEB    mov         edx,dword ptr ds:[423510];_DynArr_16_01
 00423DF1    call        @DynArraySetLength
 00423DF6    add         esp,4
 00423DF9    mov         eax,dword ptr [ebp+8]
 00423DFC    mov         eax,dword ptr [eax-10]
 00423DFF    mov         dword ptr [eax+esi*4],edi
 00423E02    inc         esi
 00423E03    mov         eax,dword ptr [ebp+8]
 00423E06    mov         eax,dword ptr [eax+8]
 00423E09    mov         eax,dword ptr [eax+48]
 00423E0C    sub         eax,4
 00423E0F    cmp         ebx,eax
>00423E11    jae         00423E35
 00423E13    mov         eax,dword ptr [ebp+8]
 00423E16    mov         eax,dword ptr [eax+8]
 00423E19    mov         eax,dword ptr [eax-8]
 00423E1C    push        eax
 00423E1D    lea         edx,[ebp-4]
 00423E20    mov         ecx,4
 00423E25    mov         eax,ebx
 00423E27    call        00417250
 00423E2C    test        al,al
>00423E2E    je          00423E35
 00423E30    cmp         ebx,dword ptr [ebp-4]
>00423E33    jb          00423DBB
 00423E35    push        esi
 00423E36    mov         eax,dword ptr [ebp+8]
 00423E39    add         eax,0FFFFFFF0
 00423E3C    mov         ecx,1
 00423E41    mov         edx,dword ptr ds:[423510];_DynArr_16_01
 00423E47    call        @DynArraySetLength
 00423E4C    add         esp,4
 00423E4F    pop         edi
 00423E50    pop         esi
 00423E51    pop         ebx
 00423E52    pop         ecx
 00423E53    pop         ebp
 00423E54    ret
end;*}

//00423E58
{*procedure sub_00423E58(?:?);
begin
 00423E58    push        ebp
 00423E59    mov         ebp,esp
 00423E5B    add         esp,0FFFFFFF0
 00423E5E    push        ebx
 00423E5F    xor         eax,eax
 00423E61    mov         dword ptr [ebp-10],eax
 00423E64    xor         eax,eax
 00423E66    push        ebp
 00423E67    push        424107
 00423E6C    push        dword ptr fs:[eax]
 00423E6F    mov         dword ptr fs:[eax],esp
 00423E72    xor         eax,eax
 00423E74    mov         dword ptr [ebp-8],eax
 00423E77    mov         eax,dword ptr [ebp+8]
 00423E7A    add         eax,0FFFFFFFC
 00423E7D    mov         edx,dword ptr ds:[423298];_DynArr_16_9
 00423E83    call        @DynArrayClear
 00423E88    push        40
 00423E8A    mov         eax,dword ptr [ebp+8]
 00423E8D    add         eax,0FFFFFFFC
 00423E90    mov         ecx,1
 00423E95    mov         edx,dword ptr ds:[423298];_DynArr_16_9
 00423E9B    call        @DynArraySetLength
 00423EA0    add         esp,4
 00423EA3    call        00423170
 00423EA8    mov         dword ptr [ebp-4],eax
 00423EAB    mov         dword ptr [ebp-0C],0FFFFFFFF
 00423EB2    lea         eax,[ebp-10]
 00423EB5    mov         edx,dword ptr ds:[423510];_DynArr_16_01
 00423EBB    call        @DynArrayClear
 00423EC0    mov         eax,dword ptr [ebp+8]
 00423EC3    cmp         dword ptr [eax+44],0
>00423EC7    je          00423EDC
 00423EC9    push        ebp
 00423ECA    push        0
 00423ECC    mov         eax,dword ptr [ebp+8]
 00423ECF    mov         edx,dword ptr [eax+44]
 00423ED2    xor         ecx,ecx
 00423ED4    xor         eax,eax
 00423ED6    call        0042369C
 00423EDB    pop         ecx
 00423EDC    mov         eax,dword ptr [ebp+8]
 00423EDF    cmp         dword ptr [eax+24],0
>00423EE3    jne         00423F0C
 00423EE5    mov         eax,dword ptr [ebp+8]
 00423EE8    cmp         dword ptr [eax+30],0
>00423EEC    je          00423F0C
 00423EEE    push        ebp
 00423EEF    mov         eax,dword ptr [ebp+8]
 00423EF2    mov         eax,dword ptr [eax+30]
 00423EF5    call        00423D70
 00423EFA    pop         ecx
 00423EFB    cmp         dword ptr [ebp-10],0
>00423EFF    je          00423F0C
 00423F01    mov         eax,dword ptr [ebp-10]
 00423F04    call        00405CE8
 00423F09    mov         dword ptr [ebp-0C],eax
 00423F0C    mov         eax,dword ptr [ebp+8]
 00423F0F    cmp         dword ptr [eax+24],0
>00423F13    je          00423FB4
 00423F19    xor         ebx,ebx
>00423F1B    jmp         00423F80
 00423F1D    mov         eax,dword ptr [ebp+8]
 00423F20    cmp         dword ptr [eax+20],0
>00423F24    je          00423F35
 00423F26    mov         eax,dword ptr [ebp+8]
 00423F29    mov         eax,dword ptr [eax+20]
 00423F2C    cmp         byte ptr [eax],0
>00423F2F    jne         004240EB
 00423F35    push        ebp
 00423F36    lea         eax,[ebx+ebx*4]
 00423F39    mov         edx,dword ptr [ebp+8]
 00423F3C    mov         edx,dword ptr [edx+24]
 00423F3F    mov         dl,byte ptr [edx+eax+4]
 00423F43    push        edx
 00423F44    mov         edx,dword ptr [ebp+8]
 00423F47    mov         edx,dword ptr [edx+24]
 00423F4A    mov         edx,dword ptr [edx+eax+5]
 00423F4E    xor         ecx,ecx
 00423F50    xor         eax,eax
 00423F52    call        0042369C
 00423F57    pop         ecx
 00423F58    mov         eax,dword ptr [ebp+8]
 00423F5B    cmp         dword ptr [eax+34],0
>00423F5F    je          00423F7F
 00423F61    lea         eax,[ebx+ebx*4]
 00423F64    lea         eax,[eax+eax*4]
 00423F67    mov         edx,dword ptr [ebp+8]
 00423F6A    mov         edx,dword ptr [edx+24]
 00423F6D    mov         ecx,dword ptr [edx]
 00423F6F    cdq
 00423F70    idiv        eax,ecx
 00423F72    mov         edx,eax
 00423F74    mov         eax,dword ptr [ebp+8]
 00423F77    mov         eax,dword ptr [eax+34]
 00423F7A    mov         ecx,dword ptr [eax]
 00423F7C    call        dword ptr [ecx+18]
 00423F7F    inc         ebx
 00423F80    mov         eax,dword ptr [ebp+8]
 00423F83    mov         eax,dword ptr [eax+24]
 00423F86    cmp         ebx,dword ptr [eax]
>00423F88    jge         00424088
 00423F8E    cmp         dword ptr [ebp-8],0
>00423F92    je          00423F1D
 00423F94    mov         eax,dword ptr [ebp-8]
 00423F97    mov         edx,eax
 00423F99    shl         eax,4
 00423F9C    add         eax,edx
 00423F9E    mov         edx,dword ptr [ebp+8]
 00423FA1    mov         edx,dword ptr [edx-4]
 00423FA4    cmp         byte ptr [edx+eax*4-3F],0
>00423FA9    je          00423F1D
>00423FAF    jmp         00424088
 00423FB4    mov         eax,dword ptr [ebp+8]
 00423FB7    mov         ebx,dword ptr [eax+48]
 00423FBA    sub         ebx,4
>00423FBD    jmp         00424059
 00423FC2    mov         eax,dword ptr [ebp+8]
 00423FC5    cmp         dword ptr [eax+20],0
>00423FC9    je          00423FDA
 00423FCB    mov         eax,dword ptr [ebp+8]
 00423FCE    mov         eax,dword ptr [eax+20]
 00423FD1    cmp         byte ptr [eax],0
>00423FD4    jne         004240EB
 00423FDA    push        ebp
 00423FDB    push        0
 00423FDD    xor         ecx,ecx
 00423FDF    mov         edx,dword ptr [ebx]
 00423FE1    mov         eax,ebx
 00423FE3    call        0042369C
 00423FE8    pop         ecx
 00423FE9    test        al,al
>00423FEB    je          0042401E
 00423FED    mov         eax,dword ptr [ebp-8]
 00423FF0    mov         edx,eax
 00423FF2    shl         eax,4
 00423FF5    add         eax,edx
 00423FF7    mov         edx,dword ptr [ebp+8]
 00423FFA    mov         edx,dword ptr [edx-4]
 00423FFD    cmp         byte ptr [edx+eax*4-40],0
>00424002    je          0042401E
 00424004    mov         eax,dword ptr [ebp-8]
 00424007    mov         edx,eax
 00424009    shl         eax,4
 0042400C    add         eax,edx
 0042400E    mov         edx,dword ptr [ebp+8]
 00424011    mov         edx,dword ptr [edx-4]
 00424014    cmp         byte ptr [edx+eax*4-3F],0
>00424019    jne         0042401E
 0042401B    sub         ebx,4
 0042401E    sub         ebx,4
 00424021    mov         eax,dword ptr [ebp+8]
 00424024    cmp         dword ptr [eax+34],0
>00424028    je          00424059
 0042402A    mov         eax,dword ptr [ebp+8]
 0042402D    mov         eax,dword ptr [eax+48]
 00424030    mov         edx,dword ptr [ebp+8]
 00424033    sub         eax,dword ptr [edx+4C]
 00424036    push        eax
 00424037    mov         eax,dword ptr [ebp+8]
 0042403A    mov         eax,dword ptr [eax+48]
 0042403D    sub         eax,ebx
 0042403F    lea         eax,[eax+eax*4]
 00424042    lea         eax,[eax+eax*4]
 00424045    pop         edx
 00424046    mov         ecx,edx
 00424048    xor         edx,edx
 0042404A    div         eax,ecx
 0042404C    mov         edx,eax
 0042404E    mov         eax,dword ptr [ebp+8]
 00424051    mov         eax,dword ptr [eax+34]
 00424054    mov         ecx,dword ptr [eax]
 00424056    call        dword ptr [ecx+18]
 00424059    mov         eax,dword ptr [ebp+8]
 0042405C    mov         eax,dword ptr [eax+4C]
 0042405F    cmp         eax,ebx
>00424061    ja          00424088
 00424063    cmp         dword ptr [ebp-8],0
>00424067    je          00423FC2
 0042406D    mov         eax,dword ptr [ebp-8]
 00424070    mov         edx,eax
 00424072    shl         eax,4
 00424075    add         eax,edx
 00424077    mov         edx,dword ptr [ebp+8]
 0042407A    mov         edx,dword ptr [edx-4]
 0042407D    cmp         byte ptr [edx+eax*4-3F],0
>00424082    je          00423FC2
 00424088    mov         eax,dword ptr [ebp+8]
 0042408B    cmp         byte ptr [eax+0C],0
>0042408F    jne         004240C3
 00424091    cmp         dword ptr [ebp-8],0
>00424095    je          004240AE
 00424097    mov         eax,dword ptr [ebp-8]
 0042409A    mov         edx,eax
 0042409C    shl         eax,4
 0042409F    add         eax,edx
 004240A1    mov         edx,dword ptr [ebp+8]
 004240A4    mov         edx,dword ptr [edx-4]
 004240A7    cmp         byte ptr [edx+eax*4-3F],0
>004240AC    jne         004240C3
 004240AE    push        ebp
 004240AF    push        0
 004240B1    mov         eax,dword ptr [ebp+8]
 004240B4    mov         edx,dword ptr [eax+58]
 004240B7    mov         cl,1
 004240B9    xor         eax,eax
 004240BB    call        0042369C
 004240C0    pop         ecx
>004240C1    jmp         004240CE
 004240C3    mov         eax,dword ptr [ebp+8]
 004240C6    add         eax,24
 004240C9    call        @LStrClr
 004240CE    mov         eax,dword ptr [ebp-8]
 004240D1    push        eax
 004240D2    mov         eax,dword ptr [ebp+8]
 004240D5    add         eax,0FFFFFFFC
 004240D8    mov         ecx,1
 004240DD    mov         edx,dword ptr ds:[423298];_DynArr_16_9
 004240E3    call        @DynArraySetLength
 004240E8    add         esp,4
 004240EB    xor         eax,eax
 004240ED    pop         edx
 004240EE    pop         ecx
 004240EF    pop         ecx
 004240F0    mov         dword ptr fs:[eax],edx
 004240F3    push        42410E
 004240F8    lea         eax,[ebp-10]
 004240FB    mov         edx,dword ptr ds:[423510];_DynArr_16_01
 00424101    call        @DynArrayClear
 00424106    ret
>00424107    jmp         @HandleFinally
>0042410C    jmp         004240F8
 0042410E    pop         ebx
 0042410F    mov         esp,ebp
 00424111    pop         ebp
 00424112    ret
end;*}

//00424114
{*function sub_00424114(?:?; ?:?):?;
begin
 00424114    push        ebp
 00424115    mov         ebp,esp
 00424117    push        ebx
 00424118    mov         edx,dword ptr [eax]
 0042411A    dec         edx
 0042411B    cmp         edx,0
>0042411E    jl          00424146
 00424120    mov         ecx,edx
 00424122    shl         ecx,4
 00424125    add         ecx,edx
 00424127    mov         ebx,dword ptr [ebp+8]
 0042412A    mov         ebx,dword ptr [ebx+8]
 0042412D    mov         ebx,dword ptr [ebx+8]
 00424130    mov         ebx,dword ptr [ebx-4]
 00424133    cmp         byte ptr [ebx+ecx*4+24],0
>00424138    jne         00424140
 0042413A    mov         cl,1
 0042413C    mov         dword ptr [eax],edx
>0042413E    jmp         00424148
 00424140    dec         edx
 00424141    cmp         edx,0FFFFFFFF
>00424144    jne         00424120
 00424146    xor         ecx,ecx
 00424148    mov         eax,ecx
 0042414A    pop         ebx
 0042414B    pop         ebp
 0042414C    ret
end;*}

//00424150
{*function sub_00424150(?:?; ?:?):?;
begin
 00424150    push        ebp
 00424151    mov         ebp,esp
 00424153    add         esp,0FFFFFFE8
 00424156    push        ebx
 00424157    push        esi
 00424158    push        edi
 00424159    mov         dword ptr [ebp-4],eax
 0042415C    mov         byte ptr [ebp-5],0
 00424160    mov         eax,dword ptr [ebp-4]
 00424163    mov         edx,eax
 00424165    shl         eax,4
 00424168    add         eax,edx
 0042416A    mov         edx,dword ptr [ebp+8]
 0042416D    mov         edx,dword ptr [edx+8]
 00424170    mov         edx,dword ptr [edx-4]
 00424173    mov         edx,dword ptr [edx+eax*4]
 00424176    xor         edi,edi
 00424178    mov         ebx,dword ptr [ebp-4]
 0042417B    dec         ebx
 0042417C    cmp         ebx,0
>0042417F    jl          0042429C
 00424185    mov         eax,ebx
 00424187    shl         eax,4
 0042418A    add         eax,ebx
 0042418C    mov         ecx,dword ptr [ebp+8]
 0042418F    mov         ecx,dword ptr [ecx+8]
 00424192    mov         ecx,dword ptr [ecx-4]
 00424195    cmp         byte ptr [ecx+eax*4+24],0
>0042419A    jne         00424292
 004241A0    mov         ecx,dword ptr [ebp+8]
 004241A3    mov         ecx,dword ptr [ecx+8]
 004241A6    mov         ecx,dword ptr [ecx-4]
 004241A9    cmp         edx,dword ptr [ecx+eax*4]
>004241AC    jne         00424291
 004241B2    cmp         edi,ebx
>004241B4    jg          0042429C
 004241BA    mov         byte ptr [ebp-15],1
 004241BE    mov         eax,dword ptr [ebp-4]
 004241C1    mov         dword ptr [ebp-10],eax
 004241C4    mov         dword ptr [ebp-14],ebx
 004241C7    mov         esi,edi
 004241C9    test        esi,esi
>004241CB    jle         00424220
 004241CD    push        ebp
 004241CE    lea         eax,[ebp-10]
 004241D1    call        00424114
 004241D6    pop         ecx
 004241D7    test        al,al
>004241D9    je          00424217
 004241DB    push        ebp
 004241DC    lea         eax,[ebp-14]
 004241DF    call        00424114
 004241E4    pop         ecx
 004241E5    test        al,al
>004241E7    je          00424217
 004241E9    mov         eax,dword ptr [ebp-10]
 004241EC    mov         edx,eax
 004241EE    shl         eax,4
 004241F1    add         eax,edx
 004241F3    mov         edx,dword ptr [ebp+8]
 004241F6    mov         edx,dword ptr [edx+8]
 004241F9    mov         edx,dword ptr [edx-4]
 004241FC    mov         eax,dword ptr [edx+eax*4]
 004241FF    mov         edx,dword ptr [ebp-14]
 00424202    mov         ecx,edx
 00424204    shl         edx,4
 00424207    add         edx,ecx
 00424209    mov         ecx,dword ptr [ebp+8]
 0042420C    mov         ecx,dword ptr [ecx+8]
 0042420F    mov         ecx,dword ptr [ecx-4]
 00424212    cmp         eax,dword ptr [ecx+edx*4]
>00424215    je          0042421D
 00424217    mov         byte ptr [ebp-15],0
>0042421B    jmp         00424220
 0042421D    dec         esi
>0042421E    jne         004241CD
 00424220    cmp         byte ptr [ebp-15],0
>00424224    je          0042429C
 00424226    mov         eax,dword ptr [ebp-4]
 00424229    mov         dword ptr [ebp-10],eax
 0042422C    mov         esi,edi
 0042422E    test        esi,esi
>00424230    jl          0042428B
 00424232    inc         esi
 00424233    mov         eax,dword ptr [ebp-10]
 00424236    mov         edx,eax
 00424238    shl         eax,4
 0042423B    add         eax,edx
 0042423D    mov         edx,dword ptr [ebp+8]
 00424240    mov         edx,dword ptr [edx+8]
 00424243    mov         edx,dword ptr [edx-4]
 00424246    mov         byte ptr [edx+eax*4+4],0
 0042424B    mov         eax,dword ptr [ebp+8]
 0042424E    cmp         byte ptr [eax-1],0
>00424252    je          00424266
 00424254    mov         eax,dword ptr [ebp+8]
 00424257    mov         eax,dword ptr [eax+8]
 0042425A    push        eax
 0042425B    mov         eax,dword ptr [ebp-10]
 0042425E    call        00423454
 00424263    pop         ecx
>00424264    jmp         0042427E
 00424266    mov         eax,dword ptr [ebp-10]
 00424269    mov         edx,eax
 0042426B    shl         eax,4
 0042426E    add         eax,edx
 00424270    mov         edx,dword ptr [ebp+8]
 00424273    mov         edx,dword ptr [edx+8]
 00424276    mov         edx,dword ptr [edx-4]
 00424279    mov         byte ptr [edx+eax*4+24],1
 0042427E    push        ebp
 0042427F    lea         eax,[ebp-10]
 00424282    call        00424114
 00424287    pop         ecx
 00424288    dec         esi
>00424289    jne         00424233
 0042428B    mov         byte ptr [ebp-5],1
>0042428F    jmp         0042429C
 00424291    inc         edi
 00424292    dec         ebx
 00424293    cmp         ebx,0FFFFFFFF
>00424296    jne         00424185
 0042429C    mov         al,byte ptr [ebp-5]
 0042429F    pop         edi
 004242A0    pop         esi
 004242A1    pop         ebx
 004242A2    mov         esp,ebp
 004242A4    pop         ebp
 004242A5    ret
end;*}

//004242A8
{*procedure sub_004242A8(?:?; ?:?);
begin
 004242A8    push        ebp
 004242A9    mov         ebp,esp
 004242AB    push        ecx
 004242AC    push        ebx
 004242AD    push        esi
 004242AE    push        edi
 004242AF    mov         byte ptr [ebp-1],al
 004242B2    mov         edi,dword ptr [ebp+8]
 004242B5    add         edi,20
 004242B8    mov         bl,1
 004242BA    mov         eax,dword ptr [ebp+8]
 004242BD    mov         eax,dword ptr [eax-4]
 004242C0    call        00405CE8
 004242C5    mov         esi,eax
 004242C7    cmp         esi,1
>004242CA    jl          00424300
 004242CC    cmp         dword ptr [edi],0
>004242CF    je          004242D8
 004242D1    mov         eax,dword ptr [edi]
 004242D3    cmp         byte ptr [eax],0
>004242D6    jne         00424304
 004242D8    mov         eax,esi
 004242DA    shl         eax,4
 004242DD    add         eax,esi
 004242DF    mov         edx,dword ptr [ebp+8]
 004242E2    mov         edx,dword ptr [edx-4]
 004242E5    cmp         byte ptr [edx+eax*4+24],0
>004242EA    jne         004242FB
 004242EC    push        ebp
 004242ED    mov         eax,esi
 004242EF    call        00424150
 004242F4    pop         ecx
 004242F5    test        al,al
>004242F7    je          004242FB
 004242F9    xor         ebx,ebx
 004242FB    dec         esi
 004242FC    test        esi,esi
>004242FE    jne         004242CC
 00424300    test        bl,bl
>00424302    je          004242B8
 00424304    pop         edi
 00424305    pop         esi
 00424306    pop         ebx
 00424307    pop         ecx
 00424308    pop         ebp
 00424309    ret
end;*}

//0042430C
{*procedure sub_0042430C(?:?; ?:?);
begin
 0042430C    push        ebp
 0042430D    mov         ebp,esp
 0042430F    add         esp,0FFFFFFF0
 00424312    push        ebx
 00424313    push        esi
 00424314    push        edi
 00424315    mov         dword ptr [ebp-4],eax
 00424318    cmp         dword ptr [ebp-4],0FFFFFFFF
>0042431C    je          004243B9
 00424322    imul        eax,dword ptr [ebp-4],13
 00424326    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 0042432C    mov         byte ptr [edx+eax*4+49],1
 00424331    mov         eax,dword ptr [ebp+8]
 00424334    mov         eax,dword ptr [eax+8]
 00424337    mov         eax,dword ptr [eax-4]
 0042433A    call        00405CE8
 0042433F    test        eax,eax
>00424341    jl          004243B9
 00424343    inc         eax
 00424344    mov         dword ptr [ebp-10],eax
 00424347    mov         dword ptr [ebp-8],0
 0042434E    mov         byte ptr [ebp-9],0
 00424352    mov         eax,dword ptr [ebp-8]
 00424355    mov         edx,eax
 00424357    shl         eax,4
 0042435A    add         eax,edx
 0042435C    mov         edx,dword ptr [ebp+8]
 0042435F    mov         edx,dword ptr [edx+8]
 00424362    mov         edx,dword ptr [edx-4]
 00424365    lea         eax,[edx+eax*4]
 00424368    xor         edx,edx
 0042436A    mov         dl,byte ptr [ebp-9]
 0042436D    lea         edx,[edx+edx*2]
 00424370    lea         edi,[eax+edx*4+0C]
 00424374    mov         esi,dword ptr [edi]
 00424376    dec         esi
 00424377    test        esi,esi
>00424379    jl          004243A8
 0042437B    inc         esi
 0042437C    xor         ebx,ebx
 0042437E    mov         eax,ebx
 00424380    shl         eax,2
 00424383    mov         edx,dword ptr [edi+4]
 00424386    mov         eax,dword ptr [edx+eax*8+10]
 0042438A    cmp         eax,dword ptr [ebp-4]
>0042438D    jne         004243A4
 0042438F    mov         eax,dword ptr [ebp+8]
 00424392    mov         eax,dword ptr [eax+8]
 00424395    push        eax
 00424396    mov         ecx,ebx
 00424398    mov         dl,byte ptr [ebp-9]
 0042439B    mov         eax,dword ptr [ebp-8]
 0042439E    call        00423388
 004243A3    pop         ecx
 004243A4    inc         ebx
 004243A5    dec         esi
>004243A6    jne         0042437E
 004243A8    inc         byte ptr [ebp-9]
 004243AB    cmp         byte ptr [ebp-9],2
>004243AF    jne         00424352
 004243B1    inc         dword ptr [ebp-8]
 004243B4    dec         dword ptr [ebp-10]
>004243B7    jne         0042434E
 004243B9    pop         edi
 004243BA    pop         esi
 004243BB    pop         ebx
 004243BC    mov         esp,ebp
 004243BE    pop         ebp
 004243BF    ret
end;*}

//004243C0
{*function sub_004243C0(?:?):?;
begin
 004243C0    push        ebp
 004243C1    mov         ebp,esp
 004243C3    push        ecx
 004243C4    push        ebx
 004243C5    push        esi
 004243C6    mov         dword ptr [ebp-4],0FFFFFFFF
 004243CD    mov         eax,dword ptr [ebp+8]
 004243D0    mov         eax,dword ptr [eax-4]
 004243D3    mov         edx,eax
 004243D5    shl         eax,4
 004243D8    add         eax,edx
 004243DA    mov         edx,dword ptr [ebp+8]
 004243DD    mov         edx,dword ptr [edx+8]
 004243E0    mov         edx,dword ptr [edx-4]
 004243E3    lea         edx,[edx+eax*4+18]
 004243E7    mov         ecx,dword ptr [edx]
 004243E9    dec         ecx
 004243EA    test        ecx,ecx
>004243EC    jl          0042441B
 004243EE    inc         ecx
 004243EF    xor         eax,eax
 004243F1    mov         ebx,eax
 004243F3    shl         ebx,2
 004243F6    mov         esi,dword ptr [edx+4]
 004243F9    mov         esi,dword ptr [esi+ebx*8+10]
 004243FD    cmp         esi,0FFFFFFFF
>00424400    je          00424417
 00424402    imul        ebx,esi,13
 00424405    mov         esi,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 0042440B    cmp         byte ptr [esi+ebx*4+48],0
>00424410    je          00424417
 00424412    mov         dword ptr [ebp-4],eax
>00424415    jmp         0042441B
 00424417    inc         eax
 00424418    dec         ecx
>00424419    jne         004243F1
 0042441B    mov         eax,dword ptr [ebp-4]
 0042441E    pop         esi
 0042441F    pop         ebx
 00424420    pop         ecx
 00424421    pop         ebp
 00424422    ret
end;*}

//00424424
{*procedure sub_00424424(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00424424    push        ebp
 00424425    mov         ebp,esp
 00424427    add         esp,0FFFFFFE0
 0042442A    push        ebx
 0042442B    push        esi
 0042442C    push        edi
 0042442D    mov         dword ptr [ebp-8],ecx
 00424430    mov         dword ptr [ebp-4],edx
 00424433    mov         edx,dword ptr [ebp+0C]
 00424436    mov         edx,dword ptr [edx-4]
 00424439    mov         ecx,edx
 0042443B    shl         edx,4
 0042443E    add         edx,ecx
 00424440    mov         ecx,dword ptr [ebp+0C]
 00424443    mov         ecx,dword ptr [ecx+8]
 00424446    mov         ecx,dword ptr [ecx-4]
 00424449    lea         edx,[ecx+edx*4]
 0042444C    xor         ecx,ecx
 0042444E    mov         dword ptr [ebp-10],ecx
 00424451    xor         ecx,ecx
 00424453    mov         dword ptr [ebp-14],ecx
 00424456    test        al,al
>00424458    je          004244E6
 0042445E    mov         al,byte ptr [ebp+8]
 00424461    push        eax
 00424462    push        0
 00424464    mov         eax,dword ptr [ebp+0C]
 00424467    mov         eax,dword ptr [eax+8]
 0042446A    mov         eax,dword ptr [eax-8]
 0042446D    push        eax
 0042446E    or          ecx,0FFFFFFFF
 00424471    xor         edx,edx
 00424473    mov         eax,dword ptr [ebp-8]
 00424476    call        00422454
 0042447B    mov         esi,eax
 0042447D    cmp         esi,0FFFFFFFF
 00424480    setne       byte ptr [ebp-16]
 00424484    cmp         byte ptr [ebp-16],0
>00424488    je          00424511
 0042448E    imul        eax,esi,13
 00424491    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00424497    mov         eax,dword ptr [edx+eax*4+2C]
 0042449B    call        00405CE8
 004244A0    mov         ebx,eax
 004244A2    test        ebx,ebx
>004244A4    jl          00424511
 004244A6    inc         ebx
 004244A7    mov         dword ptr [ebp-0C],0
 004244AE    imul        eax,esi,13
 004244B1    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 004244B7    mov         eax,dword ptr [edx+eax*4+2C]
 004244BB    mov         edx,dword ptr [ebp-0C]
 004244BE    lea         edx,[edx+edx*2]
 004244C1    cmp         byte ptr [eax+edx*4],0
>004244C5    jne         004244DE
 004244C7    mov         eax,dword ptr [ebp+0C]
 004244CA    push        eax
 004244CB    mov         al,byte ptr [ebp+8]
 004244CE    push        eax
 004244CF    xor         ecx,ecx
 004244D1    mov         edx,dword ptr [ebp-4]
 004244D4    xor         eax,eax
 004244D6    call        00424424
 004244DB    pop         ecx
>004244DC    jmp         00424511
 004244DE    inc         dword ptr [ebp-0C]
 004244E1    dec         ebx
>004244E2    jne         004244AE
>004244E4    jmp         00424511
 004244E6    mov         byte ptr [ebp-16],1
 004244EA    mov         ebx,dword ptr [edx+0C]
 004244ED    dec         ebx
 004244EE    test        ebx,ebx
>004244F0    jl          0042450E
 004244F2    inc         ebx
 004244F3    xor         esi,esi
 004244F5    mov         eax,esi
 004244F7    shl         eax,2
 004244FA    mov         ecx,dword ptr [edx+10]
 004244FD    cmp         dword ptr [ecx+eax*8+10],0FFFFFFFF
>00424502    jne         0042450A
 00424504    mov         byte ptr [ebp-16],0
>00424508    jmp         0042450E
 0042450A    inc         esi
 0042450B    dec         ebx
>0042450C    jne         004244F5
 0042450E    or          esi,0FFFFFFFF
 00424511    cmp         byte ptr [ebp-16],0
>00424515    je          00424663
 0042451B    mov         eax,dword ptr [ebp+0C]
 0042451E    mov         eax,dword ptr [eax-4]
 00424521    inc         eax
 00424522    push        eax
 00424523    mov         eax,dword ptr [ebp+0C]
 00424526    mov         eax,dword ptr [eax+8]
 00424529    mov         eax,dword ptr [eax-4]
 0042452C    call        00405CE8
 00424531    mov         ebx,eax
 00424533    pop         eax
 00424534    sub         ebx,eax
>00424536    jl          00424663
 0042453C    inc         ebx
 0042453D    mov         dword ptr [ebp-0C],eax
 00424540    mov         eax,dword ptr [ebp-0C]
 00424543    mov         edx,eax
 00424545    shl         eax,4
 00424548    add         eax,edx
 0042454A    mov         edx,dword ptr [ebp+0C]
 0042454D    mov         edx,dword ptr [edx+8]
 00424550    mov         edx,dword ptr [edx-4]
 00424553    lea         edi,[edx+eax*4]
 00424556    cmp         byte ptr [edi+24],0
>0042455A    jne         00424653
 00424560    cmp         esi,0FFFFFFFF
>00424563    je          00424592
 00424565    mov         al,byte ptr [edi+5]
 00424568    push        eax
 00424569    lea         eax,[ebp-15]
 0042456C    push        eax
 0042456D    lea         eax,[ebp-10]
 00424570    push        eax
 00424571    lea         eax,[ebp-14]
 00424574    push        eax
 00424575    mov         eax,dword ptr [ebp+0C]
 00424578    mov         eax,dword ptr [eax+8]
 0042457B    mov         eax,dword ptr [eax-8]
 0042457E    push        eax
 0042457F    mov         ecx,edi
 00424581    xor         edx,edx
 00424583    mov         eax,esi
 00424585    call        00422A3C
 0042458A    test        al,al
>0042458C    je          00424653
 00424592    mov         byte ptr [ebp-16],1
 00424596    cmp         byte ptr [ebp+8],0
>0042459A    jne         00424607
 0042459C    cmp         dword ptr [ebp-10],0
>004245A0    je          00424607
 004245A2    lea         eax,[edi+18]
 004245A5    mov         dword ptr [ebp-1C],eax
 004245A8    mov         eax,dword ptr [ebp-1C]
 004245AB    mov         eax,dword ptr [eax]
 004245AD    dec         eax
 004245AE    test        eax,eax
>004245B0    jl          00424607
 004245B2    inc         eax
 004245B3    mov         dword ptr [ebp-20],eax
 004245B6    xor         eax,eax
 004245B8    mov         edx,eax
 004245BA    shl         edx,2
 004245BD    mov         ecx,dword ptr [ebp-1C]
 004245C0    mov         ecx,dword ptr [ecx+4]
 004245C3    cmp         dword ptr [ecx+edx*8+10],0FFFFFFFF
>004245C8    je          00424601
 004245CA    mov         edx,eax
 004245CC    shl         edx,2
 004245CF    mov         ecx,dword ptr [ebp-1C]
 004245D2    mov         ecx,dword ptr [ecx+4]
 004245D5    mov         edx,dword ptr [ecx+edx*8+4]
 004245D9    cmp         edx,dword ptr [ebp-10]
>004245DC    je          00424601
 004245DE    mov         edx,eax
 004245E0    shl         edx,2
 004245E3    mov         ecx,dword ptr [ebp-1C]
 004245E6    mov         ecx,dword ptr [ecx+4]
 004245E9    imul        edx,dword ptr [ecx+edx*8+10],13
 004245EE    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 004245F4    cmp         byte ptr [ecx+edx*4+48],0
>004245F9    je          00424601
 004245FB    mov         byte ptr [ebp-16],0
>004245FF    jmp         00424607
 00424601    inc         eax
 00424602    dec         dword ptr [ebp-20]
>00424605    jne         004245B8
 00424607    cmp         byte ptr [ebp-16],0
>0042460B    je          00424653
 0042460D    mov         eax,dword ptr [ebp+0C]
 00424610    mov         eax,dword ptr [eax+8]
 00424613    push        eax
 00424614    mov         al,byte ptr [ebp-15]
 00424617    push        eax
 00424618    mov         eax,dword ptr [ebp-10]
 0042461B    push        eax
 0042461C    mov         eax,dword ptr [ebp-14]
 0042461F    push        eax
 00424620    push        esi
 00424621    mov         eax,dword ptr [ebp+0C]
 00424624    mov         ecx,dword ptr [eax-4]
 00424627    mov         dl,1
 00424629    mov         eax,dword ptr [ebp-0C]
 0042462C    call        004232CC
 00424631    pop         ecx
 00424632    mov         eax,dword ptr [ebp+0C]
 00424635    mov         eax,dword ptr [eax+8]
 00424638    push        eax
 00424639    push        0
 0042463B    mov         eax,dword ptr [ebp-4]
 0042463E    push        eax
 0042463F    push        0
 00424641    push        esi
 00424642    mov         eax,dword ptr [ebp+0C]
 00424645    mov         eax,dword ptr [eax-4]
 00424648    mov         ecx,dword ptr [ebp-0C]
 0042464B    xor         edx,edx
 0042464D    call        004232CC
 00424652    pop         ecx
 00424653    cmp         byte ptr [edi+4],0
>00424657    jne         00424663
 00424659    inc         dword ptr [ebp-0C]
 0042465C    dec         ebx
>0042465D    jne         00424540
 00424663    pop         edi
 00424664    pop         esi
 00424665    pop         ebx
 00424666    mov         esp,ebp
 00424668    pop         ebp
 00424669    ret         4
end;*}

//0042466C
{*procedure sub_0042466C(?:?; ?:?);
begin
 0042466C    push        ebp
 0042466D    mov         ebp,esp
 0042466F    add         esp,0FFFFFFA8
 00424672    push        ebx
 00424673    push        esi
 00424674    push        edi
 00424675    mov         dword ptr [ebp-4],eax
 00424678    mov         eax,dword ptr [ebp-4]
 0042467B    mov         edx,eax
 0042467D    shl         eax,4
 00424680    add         eax,edx
 00424682    mov         edx,dword ptr [ebp+8]
 00424685    mov         edx,dword ptr [edx-4]
 00424688    lea         edi,[edx+eax*4]
 0042468B    push        ebp
 0042468C    call        004243C0
 00424691    pop         ecx
 00424692    inc         eax
 00424693    setne       byte ptr [ebp-5]
 00424697    cmp         byte ptr [ebp-5],0
>0042469B    jne         00424731
 004246A1    mov         ebx,dword ptr ds:[55D7E8];gvar_0055D7E8
 004246A7    dec         ebx
 004246A8    test        ebx,ebx
>004246AA    jl          00424731
 004246B0    inc         ebx
 004246B1    xor         esi,esi
 004246B3    imul        eax,esi,13
 004246B6    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 004246BC    cmp         byte ptr [edx+eax*4+48],0
>004246C1    je          0042472D
 004246C3    mov         edx,dword ptr [edi]
 004246C5    mov         eax,esi
 004246C7    call        004229CC
 004246CC    test        al,al
>004246CE    je          0042472D
 004246D0    mov         al,byte ptr [edi+5]
 004246D3    push        eax
 004246D4    lea         eax,[ebp-15]
 004246D7    push        eax
 004246D8    lea         eax,[ebp-10]
 004246DB    push        eax
 004246DC    lea         eax,[ebp-14]
 004246DF    push        eax
 004246E0    mov         eax,dword ptr [ebp+8]
 004246E3    mov         eax,dword ptr [eax-8]
 004246E6    push        eax
 004246E7    mov         ecx,edi
 004246E9    xor         edx,edx
 004246EB    mov         eax,esi
 004246ED    call        00422A3C
 004246F2    test        al,al
>004246F4    je          0042471B
 004246F6    mov         byte ptr [ebp-5],1
 004246FA    mov         eax,dword ptr [ebp+8]
 004246FD    push        eax
 004246FE    mov         al,byte ptr [ebp-15]
 00424701    push        eax
 00424702    mov         eax,dword ptr [ebp-10]
 00424705    push        eax
 00424706    mov         eax,dword ptr [ebp-14]
 00424709    push        eax
 0042470A    push        esi
 0042470B    or          ecx,0FFFFFFFF
 0042470E    mov         dl,1
 00424710    mov         eax,dword ptr [ebp-4]
 00424713    call        004232CC
 00424718    pop         ecx
>00424719    jmp         00424731
 0042471B    mov         eax,dword ptr [ebp+8]
 0042471E    push        eax
 0042471F    mov         eax,dword ptr [ebp-4]
 00424722    call        00423454
 00424727    pop         ecx
>00424728    jmp         00424847
 0042472D    inc         esi
 0042472E    dec         ebx
>0042472F    jne         004246B3
 00424731    cmp         byte ptr [ebp-5],0
>00424735    je          004247B3
 00424737    push        ebp
 00424738    call        004243C0
 0042473D    pop         ecx
 0042473E    mov         esi,eax
 00424740    lea         eax,[edi+18]
 00424743    mov         edi,eax
 00424745    mov         ebx,dword ptr [edi]
 00424747    dec         ebx
 00424748    test        ebx,ebx
>0042474A    jl          00424789
 0042474C    inc         ebx
 0042474D    mov         dword ptr [ebp-0C],0
 00424754    mov         eax,esi
 00424756    shl         eax,2
 00424759    mov         edx,dword ptr [edi+4]
 0042475C    mov         eax,dword ptr [edx+eax*8+4]
 00424760    mov         edx,dword ptr [ebp-0C]
 00424763    shl         edx,2
 00424766    mov         ecx,dword ptr [edi+4]
 00424769    cmp         eax,dword ptr [ecx+edx*8+4]
>0042476D    je          00424783
 0042476F    push        ebp
 00424770    mov         eax,dword ptr [ebp-0C]
 00424773    shl         eax,2
 00424776    mov         edx,dword ptr [edi+4]
 00424779    mov         eax,dword ptr [edx+eax*8+10]
 0042477D    call        0042430C
 00424782    pop         ecx
 00424783    inc         dword ptr [ebp-0C]
 00424786    dec         ebx
>00424787    jne         00424754
 00424789    push        ebp
 0042478A    push        1
 0042478C    mov         eax,esi
 0042478E    shl         eax,2
 00424791    mov         edx,dword ptr [edi+4]
 00424794    mov         ecx,dword ptr [edx+eax*8+0C]
 00424798    mov         edx,dword ptr [edi+4]
 0042479B    mov         edx,dword ptr [edx+eax*8+4]
 0042479F    push        edx
 004247A0    mov         edx,dword ptr [edi+4]
 004247A3    mov         al,byte ptr [edx+eax*8+8]
 004247A7    pop         edx
 004247A8    call        00424424
 004247AD    pop         ecx
>004247AE    jmp         00424847
 004247B3    mov         ebx,dword ptr [edi]
 004247B5    cmp         ebx,7
>004247B8    jbe         00424847
 004247BE    push        1C
 004247C0    lea         eax,[ebp-58]
 004247C3    push        eax
 004247C4    dec         ebx
 004247C5    push        ebx
 004247C6    call        kernel32.VirtualQuery
 004247CB    cmp         eax,1C
>004247CE    jne         00424847
 004247D0    cmp         dword ptr [ebp-48],1000
>004247D7    jne         00424847
 004247D9    mov         eax,dword ptr [edi]
 004247DB    sub         eax,2
 004247DE    cmp         eax,dword ptr [ebp-58]
>004247E1    jb          00424847
 004247E3    mov         eax,dword ptr [edi]
 004247E5    sub         eax,7
 004247E8    mov         dword ptr [ebp-10],eax
 004247EB    mov         eax,dword ptr [ebp-10]
 004247EE    cmp         eax,dword ptr [ebp-58]
>004247F1    jae         004247F9
 004247F3    mov         eax,dword ptr [ebp-58]
 004247F6    mov         dword ptr [ebp-10],eax
 004247F9    mov         esi,dword ptr [ebp-10]
 004247FC    mov         ebx,dword ptr [edi]
 004247FE    sub         ebx,2
 00424801    sub         ebx,esi
>00424803    jb          00424847
 00424805    inc         ebx
 00424806    lea         ecx,[ebp-3C]
 00424809    mov         eax,dword ptr [ebp+8]
 0042480C    mov         edx,dword ptr [eax-8]
 0042480F    mov         eax,esi
 00424811    call        00414A88
 00424816    mov         eax,dword ptr [edi]
 00424818    cmp         eax,dword ptr [ebp-1C]
>0042481B    jne         00424843
 0042481D    cmp         byte ptr [ebp-37],0
>00424821    je          00424843
 00424823    push        ebp
 00424824    push        0
 00424826    cmp         dword ptr [ebp-30],0
>0042482A    jne         00424836
 0042482C    cmp         dword ptr [ebp-2C],0
>00424830    jne         00424836
 00424832    xor         eax,eax
>00424834    jmp         00424838
 00424836    mov         al,1
 00424838    mov         ecx,dword ptr [ebp-34]
 0042483B    mov         edx,esi
 0042483D    call        00424424
 00424842    pop         ecx
 00424843    inc         esi
 00424844    dec         ebx
>00424845    jne         00424806
 00424847    pop         edi
 00424848    pop         esi
 00424849    pop         ebx
 0042484A    mov         esp,ebp
 0042484C    pop         ebp
 0042484D    ret
end;*}

//00424850
{*function sub_00424850(?:?; ?:Integer; ?:?; ?:?):?;
begin
 00424850    push        ebp
 00424851    mov         ebp,esp
 00424853    add         esp,0FFFFFFE4
 00424856    push        ebx
 00424857    push        esi
 00424858    push        edi
 00424859    mov         dword ptr [ebp-8],ecx
 0042485C    mov         byte ptr [ebp-1],al
 0042485F    mov         dword ptr [ebp-10],0
 00424866    mov         dword ptr [ebp-0C],10000000
 0042486D    mov         eax,dword ptr [ebp+8]
 00424870    mov         eax,dword ptr [eax+8]
 00424873    cmp         dword ptr [eax+20],0
>00424877    je          0042488B
 00424879    mov         eax,dword ptr [ebp+8]
 0042487C    mov         eax,dword ptr [eax+8]
 0042487F    mov         eax,dword ptr [eax+20]
 00424882    cmp         byte ptr [eax],0
>00424885    jne         00424AEC
 0042488B    mov         eax,edx
 0042488D    shl         eax,4
 00424890    add         eax,edx
 00424892    mov         ecx,dword ptr [ebp+8]
 00424895    mov         ecx,dword ptr [ecx+8]
 00424898    mov         ecx,dword ptr [ecx-4]
 0042489B    lea         eax,[ecx+eax*4]
 0042489E    mov         dword ptr [ebp-18],eax
 004248A1    cmp         edx,dword ptr [ebp-8]
 004248A4    setg        al
 004248A7    and         eax,7F
 004248AA    lea         eax,[eax+eax*2]
 004248AD    mov         edx,dword ptr [ebp-18]
 004248B0    lea         eax,[edx+eax*4+0C]
 004248B4    mov         dword ptr [ebp-1C],eax
 004248B7    mov         eax,dword ptr [ebp-1C]
 004248BA    mov         esi,dword ptr [eax]
 004248BC    dec         esi
 004248BD    test        esi,esi
>004248BF    jl          00424AEC
 004248C5    inc         esi
 004248C6    xor         edi,edi
 004248C8    mov         eax,dword ptr [ebp+8]
 004248CB    mov         eax,dword ptr [eax+8]
 004248CE    cmp         dword ptr [eax+20],0
>004248D2    je          004248E6
 004248D4    mov         eax,dword ptr [ebp+8]
 004248D7    mov         eax,dword ptr [eax+8]
 004248DA    mov         eax,dword ptr [eax+20]
 004248DD    cmp         byte ptr [eax],0
>004248E0    jne         00424AEC
 004248E6    mov         eax,edi
 004248E8    shl         eax,2
 004248EB    mov         edx,dword ptr [ebp-1C]
 004248EE    mov         edx,dword ptr [edx+4]
 004248F1    lea         ebx,[edx+eax*8]
 004248F4    mov         ecx,dword ptr [ebx]
 004248F6    cmp         ecx,0FFFFFFFF
>004248F9    je          00424AE4
 004248FF    cmp         dword ptr [ebx+1C],0
>00424903    jne         00424ABE
 00424909    cmp         dword ptr [ebx+18],0
>0042490D    jne         00424ABE
 00424913    cmp         ecx,dword ptr [ebp-8]
>00424916    jne         0042493E
 00424918    cmp         dword ptr [ebx+10],0FFFFFFFF
>0042491C    je          0042492E
 0042491E    mov         dword ptr [ebx+18],0
 00424925    mov         dword ptr [ebx+1C],70000000
>0042492C    jmp         00424965
 0042492E    mov         dword ptr [ebx+18],0
 00424935    mov         dword ptr [ebx+1C],50000000
>0042493C    jmp         00424965
 0042493E    mov         eax,dword ptr [ebp+8]
 00424941    push        eax
 00424942    cmp         byte ptr [ebp-1],0
>00424946    je          0042494E
 00424948    cmp         dword ptr [ebx+10],0FFFFFFFF
>0042494C    jne         00424952
 0042494E    xor         eax,eax
>00424950    jmp         00424954
 00424952    mov         al,1
 00424954    mov         ecx,dword ptr [ebp-8]
 00424957    mov         edx,dword ptr [ebx]
 00424959    call        00424850
 0042495E    pop         ecx
 0042495F    mov         dword ptr [ebx+18],eax
 00424962    mov         dword ptr [ebx+1C],edx
 00424965    xor         eax,eax
 00424967    mov         dword ptr [ebp-14],eax
 0042496A    cmp         dword ptr [ebx+10],0FFFFFFFF
>0042496E    je          004249AD
 00424970    add         dword ptr [ebp-14],0E
 00424974    cmp         byte ptr [ebp-1],0
>00424978    jne         00424992
 0042497A    mov         eax,dword ptr [ebx+18]
 0042497D    mov         edx,dword ptr [ebx+1C]
 00424980    xor         eax,eax
 00424982    and         edx,20000000
 00424988    cmp         edx,0
>0042498B    jne         00424990
 0042498D    cmp         eax,0
>00424990    je          00424996
 00424992    add         dword ptr [ebp-14],0E
 00424996    imul        eax,dword ptr [ebx+10],13
 0042499A    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 004249A0    cmp         byte ptr [edx+eax*4+48],0
>004249A5    je          004249BF
 004249A7    add         dword ptr [ebp-14],0E
>004249AB    jmp         004249BF
 004249AD    mov         eax,dword ptr [ebx+18]
 004249B0    mov         edx,dword ptr [ebx+1C]
 004249B3    and         edx,0DFFFFFFF
 004249B9    mov         dword ptr [ebx+18],eax
 004249BC    mov         dword ptr [ebx+1C],edx
 004249BF    mov         eax,dword ptr [ebp-18]
 004249C2    cmp         dword ptr [eax+8],0FFFFFFFF
>004249C6    je          00424AA9
 004249CC    mov         eax,dword ptr [ebx]
 004249CE    mov         edx,eax
 004249D0    shl         eax,4
 004249D3    add         eax,edx
 004249D5    mov         edx,dword ptr [ebp+8]
 004249D8    mov         edx,dword ptr [edx+8]
 004249DB    mov         edx,dword ptr [edx-4]
 004249DE    cmp         dword ptr [edx+eax*4+8],0FFFFFFFF
>004249E3    je          00424AA9
 004249E9    mov         eax,dword ptr [ebp-18]
 004249EC    mov         eax,dword ptr [eax+8]
 004249EF    mov         edx,eax
 004249F1    shl         eax,3
 004249F4    sub         eax,edx
 004249F6    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 004249FC    cmp         dword ptr [edx+eax*4+18],0
>00424A01    je          00424AA9
 00424A07    add         dword ptr [ebp-14],3
 00424A0B    mov         eax,dword ptr [ebp-18]
 00424A0E    mov         eax,dword ptr [eax+8]
 00424A11    mov         edx,eax
 00424A13    shl         eax,3
 00424A16    sub         eax,edx
 00424A18    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00424A1E    mov         eax,dword ptr [edx+eax*4+18]
 00424A22    mov         edx,dword ptr [ebp-18]
 00424A25    mov         edx,dword ptr [edx]
 00424A27    dec         edx
 00424A28    call        00421434
 00424A2D    test        eax,eax
>00424A2F    je          00424AA9
 00424A31    add         dword ptr [ebp-14],3
 00424A35    mov         eax,dword ptr [ebx]
 00424A37    mov         edx,eax
 00424A39    shl         eax,4
 00424A3C    add         eax,edx
 00424A3E    mov         edx,dword ptr [ebp+8]
 00424A41    mov         edx,dword ptr [edx+8]
 00424A44    mov         edx,dword ptr [edx-4]
 00424A47    mov         eax,dword ptr [edx+eax*4+8]
 00424A4B    mov         edx,eax
 00424A4D    shl         eax,3
 00424A50    sub         eax,edx
 00424A52    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00424A58    cmp         dword ptr [edx+eax*4+18],0
>00424A5D    je          00424AA9
 00424A5F    mov         eax,dword ptr [ebx]
 00424A61    mov         edx,eax
 00424A63    shl         eax,4
 00424A66    add         eax,edx
 00424A68    mov         edx,dword ptr [ebp+8]
 00424A6B    mov         edx,dword ptr [edx+8]
 00424A6E    mov         edx,dword ptr [edx-4]
 00424A71    mov         edx,dword ptr [edx+eax*4]
 00424A74    dec         edx
 00424A75    mov         eax,dword ptr [ebx]
 00424A77    mov         ecx,eax
 00424A79    shl         eax,4
 00424A7C    add         eax,ecx
 00424A7E    mov         ecx,dword ptr [ebp+8]
 00424A81    mov         ecx,dword ptr [ecx+8]
 00424A84    mov         ecx,dword ptr [ecx-4]
 00424A87    mov         eax,dword ptr [ecx+eax*4+8]
 00424A8B    mov         ecx,eax
 00424A8D    shl         eax,3
 00424A90    sub         eax,ecx
 00424A92    mov         ecx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00424A98    mov         eax,dword ptr [ecx+eax*4+18]
 00424A9C    call        00421434
 00424AA1    test        eax,eax
>00424AA3    je          00424AA9
 00424AA5    add         dword ptr [ebp-14],3
 00424AA9    mov         eax,1
 00424AAE    xor         edx,edx
 00424AB0    mov         ecx,dword ptr [ebp-14]
 00424AB3    call        @_llshl
 00424AB8    add         dword ptr [ebx+18],eax
 00424ABB    adc         dword ptr [ebx+1C],edx
 00424ABE    mov         eax,dword ptr [ebx+18]
 00424AC1    mov         edx,dword ptr [ebx+1C]
 00424AC4    cmp         edx,dword ptr [ebp-0C]
>00424AC7    jne         00424AD0
 00424AC9    cmp         eax,dword ptr [ebp-10]
>00424ACC    jbe         00424AE4
>00424ACE    jmp         00424AD2
>00424AD0    jle         00424AE4
 00424AD2    mov         eax,dword ptr [ebx+18]
 00424AD5    mov         dword ptr [ebp-10],eax
 00424AD8    mov         eax,dword ptr [ebx+1C]
 00424ADB    mov         dword ptr [ebp-0C],eax
 00424ADE    mov         eax,dword ptr [ebp-1C]
 00424AE1    mov         dword ptr [eax+8],edi
 00424AE4    inc         edi
 00424AE5    dec         esi
>00424AE6    jne         004248C8
 00424AEC    mov         eax,dword ptr [ebp-10]
 00424AEF    mov         edx,dword ptr [ebp-0C]
 00424AF2    pop         edi
 00424AF3    pop         esi
 00424AF4    pop         ebx
 00424AF5    mov         esp,ebp
 00424AF7    pop         ebp
 00424AF8    ret
end;*}

//00424AFC
{*procedure sub_00424AFC(?:?; ?:?; ?:?);
begin
 00424AFC    push        ebp
 00424AFD    mov         ebp,esp
 00424AFF    push        ebx
 00424B00    mov         ecx,dword ptr [ebp+8]
 00424B03    mov         ecx,dword ptr [ecx+8]
 00424B06    cmp         dword ptr [ecx+20],0
>00424B0A    je          00424B1A
 00424B0C    mov         ecx,dword ptr [ebp+8]
 00424B0F    mov         ecx,dword ptr [ecx+8]
 00424B12    mov         ecx,dword ptr [ecx+20]
 00424B15    cmp         byte ptr [ecx],0
>00424B18    jne         00424B72
 00424B1A    mov         ecx,eax
 00424B1C    shl         ecx,4
 00424B1F    add         ecx,eax
 00424B21    mov         ebx,dword ptr [ebp+8]
 00424B24    mov         ebx,dword ptr [ebx+8]
 00424B27    mov         ebx,dword ptr [ebx-4]
 00424B2A    lea         ecx,[ebx+ecx*4]
 00424B2D    push        ecx
 00424B2E    cmp         edx,eax
 00424B30    setl        al
 00424B33    and         eax,7F
 00424B36    lea         eax,[eax+eax*2]
 00424B39    pop         ecx
 00424B3A    lea         eax,[ecx+eax*4+0C]
 00424B3E    mov         ecx,dword ptr [eax+8]
 00424B41    cmp         ecx,0FFFFFFFF
>00424B44    je          00424B72
 00424B46    shl         ecx,2
 00424B49    mov         eax,dword ptr [eax+4]
 00424B4C    mov         eax,dword ptr [eax+ecx*8]
 00424B4F    cmp         edx,eax
>00424B51    je          00424B72
 00424B53    mov         ecx,eax
 00424B55    shl         ecx,4
 00424B58    add         ecx,eax
 00424B5A    mov         ebx,dword ptr [ebp+8]
 00424B5D    mov         ebx,dword ptr [ebx+8]
 00424B60    mov         ebx,dword ptr [ebx-4]
 00424B63    mov         byte ptr [ebx+ecx*4+24],0
 00424B68    mov         ecx,dword ptr [ebp+8]
 00424B6B    push        ecx
 00424B6C    call        00424AFC
 00424B71    pop         ecx
 00424B72    pop         ebx
 00424B73    pop         ebp
 00424B74    ret
end;*}

//00424B78
{*procedure sub_00424B78(?:?; ?:?; ?:?);
begin
 00424B78    push        ebp
 00424B79    mov         ebp,esp
 00424B7B    add         esp,0FFFFFFE8
 00424B7E    push        ebx
 00424B7F    push        esi
 00424B80    mov         dword ptr [ebp-4],edx
 00424B83    mov         ebx,eax
 00424B85    mov         eax,dword ptr [ebp-4]
 00424B88    sub         eax,ebx
 00424B8A    dec         eax
>00424B8B    jle         00424C5E
 00424B91    cmp         ebx,0FFFFFFFF
>00424B94    jle         00424BAC
 00424B96    push        ebp
 00424B97    mov         ecx,dword ptr [ebp-4]
 00424B9A    mov         edx,ebx
 00424B9C    mov         al,1
 00424B9E    call        00424850
 00424BA3    pop         ecx
 00424BA4    mov         dword ptr [ebp-10],eax
 00424BA7    mov         dword ptr [ebp-0C],edx
>00424BAA    jmp         00424BBA
 00424BAC    mov         dword ptr [ebp-10],0
 00424BB3    mov         dword ptr [ebp-0C],0
 00424BBA    mov         eax,dword ptr [ebp+8]
 00424BBD    cmp         dword ptr [eax+20],0
>00424BC1    je          00424BD2
 00424BC3    mov         eax,dword ptr [ebp+8]
 00424BC6    mov         eax,dword ptr [eax+20]
 00424BC9    cmp         byte ptr [eax],0
>00424BCC    jne         00424C5E
 00424BD2    mov         eax,dword ptr [ebp-10]
 00424BD5    mov         edx,dword ptr [ebp-0C]
 00424BD8    xor         eax,eax
 00424BDA    and         edx,40000000
 00424BE0    cmp         edx,0
>00424BE3    jne         00424C00
 00424BE5    cmp         eax,0
>00424BE8    jne         00424C00
 00424BEA    push        ebp
 00424BEB    mov         ecx,ebx
 00424BED    mov         edx,dword ptr [ebp-4]
 00424BF0    mov         al,1
 00424BF2    call        00424850
 00424BF7    pop         ecx
 00424BF8    mov         dword ptr [ebp-18],eax
 00424BFB    mov         dword ptr [ebp-14],edx
>00424BFE    jmp         00424C0E
 00424C00    mov         dword ptr [ebp-18],0
 00424C07    mov         dword ptr [ebp-14],0
 00424C0E    lea         edx,[ebx+1]
 00424C11    mov         eax,dword ptr [ebp-4]
 00424C14    dec         eax
 00424C15    sub         eax,edx
>00424C17    jl          00424C30
 00424C19    inc         eax
 00424C1A    mov         ecx,edx
 00424C1C    shl         ecx,4
 00424C1F    add         ecx,edx
 00424C21    mov         esi,dword ptr [ebp+8]
 00424C24    mov         esi,dword ptr [esi-4]
 00424C27    mov         byte ptr [esi+ecx*4+24],1
 00424C2C    inc         edx
 00424C2D    dec         eax
>00424C2E    jne         00424C1A
 00424C30    mov         eax,dword ptr [ebp-10]
 00424C33    mov         edx,dword ptr [ebp-0C]
 00424C36    cmp         edx,dword ptr [ebp-14]
>00424C39    jne         00424C42
 00424C3B    cmp         eax,dword ptr [ebp-18]
>00424C3E    jbe         00424C52
>00424C40    jmp         00424C44
>00424C42    jle         00424C52
 00424C44    push        ebp
 00424C45    mov         edx,dword ptr [ebp-4]
 00424C48    mov         eax,ebx
 00424C4A    call        00424AFC
 00424C4F    pop         ecx
>00424C50    jmp         00424C5E
 00424C52    push        ebp
 00424C53    mov         edx,ebx
 00424C55    mov         eax,dword ptr [ebp-4]
 00424C58    call        00424AFC
 00424C5D    pop         ecx
 00424C5E    pop         esi
 00424C5F    pop         ebx
 00424C60    mov         esp,ebp
 00424C62    pop         ebp
 00424C63    ret
end;*}

//00424C64
{*procedure sub_00424C64(?:?; ?:?; ?:?);
begin
 00424C64    push        ebp
 00424C65    mov         ebp,esp
 00424C67    push        0
 00424C69    push        ebx
 00424C6A    push        esi
 00424C6B    push        edi
 00424C6C    mov         ebx,edx
 00424C6E    mov         esi,eax
 00424C70    xor         eax,eax
 00424C72    push        ebp
 00424C73    push        424D65
 00424C78    push        dword ptr fs:[eax]
 00424C7B    mov         dword ptr fs:[eax],esp
 00424C7E    mov         eax,dword ptr [ebp+8]
 00424C81    mov         eax,dword ptr [eax+8]
 00424C84    cmp         dword ptr [eax+10],0
>00424C88    je          00424D4F
 00424C8E    lea         eax,[ebp-4]
 00424C91    mov         edx,dword ptr [ebx+50]
 00424C94    call        @WStrFromLStr
 00424C99    mov         eax,dword ptr [ebp-4]
 00424C9C    xor         edx,edx
 00424C9E    call        @WStrCmp
>00424CA3    je          00424D4F
 00424CA9    push        esi
 00424CAA    push        424D78
 00424CAF    push        dword ptr [ebp-4]
 00424CB2    lea         eax,[ebp-4]
 00424CB5    mov         edx,3
 00424CBA    call        @WStrCatN
 00424CBF    mov         eax,dword ptr [ebp+8]
 00424CC2    mov         eax,dword ptr [eax+8]
 00424CC5    mov         eax,dword ptr [eax+10]
 00424CC8    mov         eax,dword ptr [eax]
 00424CCA    call        00405CE8
 00424CCF    mov         ebx,eax
 00424CD1    test        ebx,ebx
>00424CD3    jl          00424CFB
 00424CD5    inc         ebx
 00424CD6    xor         esi,esi
 00424CD8    mov         edi,dword ptr ds:[55B210];^gvar_0053D140
 00424CDE    mov         edi,dword ptr [edi]
 00424CE0    mov         eax,dword ptr [ebp+8]
 00424CE3    mov         eax,dword ptr [eax+8]
 00424CE6    mov         eax,dword ptr [eax+10]
 00424CE9    mov         eax,dword ptr [eax]
 00424CEB    mov         eax,dword ptr [eax+esi*4]
 00424CEE    mov         edx,dword ptr [ebp-4]
 00424CF1    call        edi
 00424CF3    test        al,al
>00424CF5    jne         00424D4F
 00424CF7    inc         esi
 00424CF8    dec         ebx
>00424CF9    jne         00424CD8
 00424CFB    mov         eax,dword ptr [ebp+8]
 00424CFE    mov         eax,dword ptr [eax+8]
 00424D01    mov         eax,dword ptr [eax+10]
 00424D04    mov         eax,dword ptr [eax]
 00424D06    call        @LStrLen
 00424D0B    inc         eax
 00424D0C    push        eax
 00424D0D    mov         eax,dword ptr [ebp+8]
 00424D10    mov         eax,dword ptr [eax+8]
 00424D13    mov         eax,dword ptr [eax+10]
 00424D16    mov         ecx,1
 00424D1B    mov         edx,dword ptr ds:[408778];TDAUnicodeString
 00424D21    call        @DynArraySetLength
 00424D26    add         esp,4
 00424D29    mov         eax,dword ptr [ebp+8]
 00424D2C    mov         eax,dword ptr [eax+8]
 00424D2F    mov         eax,dword ptr [eax+10]
 00424D32    mov         eax,dword ptr [eax]
 00424D34    call        00405CE8
 00424D39    mov         edx,dword ptr [ebp+8]
 00424D3C    mov         edx,dword ptr [edx+8]
 00424D3F    mov         edx,dword ptr [edx+10]
 00424D42    mov         edx,dword ptr [edx]
 00424D44    lea         eax,[edx+eax*4]
 00424D47    mov         edx,dword ptr [ebp-4]
 00424D4A    call        @WStrAsg
 00424D4F    xor         eax,eax
 00424D51    pop         edx
 00424D52    pop         ecx
 00424D53    pop         ecx
 00424D54    mov         dword ptr fs:[eax],edx
 00424D57    push        424D6C
 00424D5C    lea         eax,[ebp-4]
 00424D5F    call        @WStrClr
 00424D64    ret
>00424D65    jmp         @HandleFinally
>00424D6A    jmp         00424D5C
 00424D6C    pop         edi
 00424D6D    pop         esi
 00424D6E    pop         ebx
 00424D6F    pop         ecx
 00424D70    pop         ebp
 00424D71    ret
end;*}

//00424D7C
{*procedure sub_00424D7C(?:?);
begin
 00424D7C    push        ebp
 00424D7D    mov         ebp,esp
 00424D7F    add         esp,0FFFFFFD0
 00424D82    push        ebx
 00424D83    push        esi
 00424D84    push        edi
 00424D85    xor         eax,eax
 00424D87    mov         dword ptr [ebp-30],eax
 00424D8A    mov         dword ptr [ebp-2C],eax
 00424D8D    mov         dword ptr [ebp-28],eax
 00424D90    mov         dword ptr [ebp-24],eax
 00424D93    mov         dword ptr [ebp-20],eax
 00424D96    lea         eax,[ebp-1C]
 00424D99    mov         edx,dword ptr ds:[41C63C];TMfPublic
 00424D9F    call        @AddRefRecord
 00424DA4    xor         eax,eax
 00424DA6    push        ebp
 00424DA7    push        42504D
 00424DAC    push        dword ptr fs:[eax]
 00424DAF    mov         dword ptr fs:[eax],esp
 00424DB2    mov         byte ptr [ebp-1],1
 00424DB6    mov         eax,dword ptr [ebp+8]
 00424DB9    mov         eax,dword ptr [eax-4]
 00424DBC    call        00405CE8
 00424DC1    cmp         eax,0
>00424DC4    jl          00425023
 00424DCA    mov         dword ptr [ebp-8],eax
 00424DCD    mov         eax,dword ptr [ebp+8]
 00424DD0    cmp         dword ptr [eax+20],0
>00424DD4    je          00424DE5
 00424DD6    mov         eax,dword ptr [ebp+8]
 00424DD9    mov         eax,dword ptr [eax+20]
 00424DDC    cmp         byte ptr [eax],0
>00424DDF    jne         00425023
 00424DE5    mov         eax,dword ptr [ebp-8]
 00424DE8    mov         edx,eax
 00424DEA    shl         eax,4
 00424DED    add         eax,edx
 00424DEF    mov         edx,dword ptr [ebp+8]
 00424DF2    mov         edx,dword ptr [edx-4]
 00424DF5    lea         ebx,[edx+eax*4]
 00424DF8    lea         esi,[ebx+28]
 00424DFB    cmp         byte ptr [ebx+24],0
>00424DFF    jne         00425016
 00424E05    mov         byte ptr [ebp-0D],1
 00424E09    mov         eax,dword ptr [ebx+18]
 00424E0C    dec         eax
 00424E0D    test        eax,eax
>00424E0F    jl          00424E7F
 00424E11    inc         eax
 00424E12    mov         dword ptr [ebp-0C],0
 00424E19    mov         edx,dword ptr [ebp-0C]
 00424E1C    shl         edx,2
 00424E1F    mov         ecx,dword ptr [ebx+1C]
 00424E22    lea         edi,[ecx+edx*8]
 00424E25    cmp         dword ptr [edi+10],0FFFFFFFF
>00424E29    je          00424E79
 00424E2B    imul        edx,dword ptr [edi+10],13
 00424E2F    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00424E35    cmp         byte ptr [ecx+edx*4+48],0
>00424E3A    je          00424E79
 00424E3C    mov         eax,dword ptr [edi+4]
 00424E3F    mov         dword ptr [esi],eax
 00424E41    lea         eax,[esi+10]
 00424E44    imul        edx,dword ptr [edi+10],13
 00424E48    mov         ecx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00424E4E    mov         edx,dword ptr [ecx+edx*4+4]
 00424E52    call        @WStrAsg
 00424E57    imul        eax,dword ptr [edi+10],13
 00424E5B    mov         edx,dword ptr ds:[55D7EC];gvar_0055D7EC:?
 00424E61    mov         eax,dword ptr [edx+eax*4+0C]
 00424E65    mov         dword ptr [esi+14],eax
 00424E68    lea         edx,[esi+8]
 00424E6B    lea         eax,[esi+10]
 00424E6E    call        00410558
 00424E73    mov         byte ptr [ebp-0D],0
>00424E77    jmp         00424E7F
 00424E79    inc         dword ptr [ebp-0C]
 00424E7C    dec         eax
>00424E7D    jne         00424E19
 00424E7F    cmp         byte ptr [ebp-0D],0
>00424E83    je          00424EB4
 00424E85    mov         eax,dword ptr [ebx+18]
 00424E88    dec         eax
 00424E89    test        eax,eax
>00424E8B    jl          00424EB4
 00424E8D    inc         eax
 00424E8E    mov         dword ptr [ebp-0C],0
 00424E95    mov         edx,dword ptr [ebp-0C]
 00424E98    shl         edx,2
 00424E9B    mov         ecx,dword ptr [ebx+1C]
 00424E9E    mov         edx,dword ptr [ecx+edx*8+4]
 00424EA2    test        edx,edx
>00424EA4    je          00424EAE
 00424EA6    mov         dword ptr [esi],edx
 00424EA8    mov         byte ptr [ebp-0D],0
>00424EAC    jmp         00424EB4
 00424EAE    inc         dword ptr [ebp-0C]
 00424EB1    dec         eax
>00424EB2    jne         00424E95
 00424EB4    cmp         byte ptr [ebp-0D],0
>00424EB8    je          00424ED4
 00424EBA    mov         eax,dword ptr [ebx+14]
 00424EBD    cmp         eax,0FFFFFFFF
>00424EC0    je          00424ED0
 00424EC2    shl         eax,2
 00424EC5    mov         edx,dword ptr [ebx+10]
 00424EC8    mov         eax,dword ptr [edx+eax*8+4]
 00424ECC    mov         dword ptr [esi],eax
>00424ECE    jmp         00424ED4
 00424ED0    mov         eax,dword ptr [ebx]
 00424ED2    mov         dword ptr [esi],eax
 00424ED4    mov         edi,dword ptr [ebx+8]
 00424ED7    cmp         edi,0FFFFFFFF
>00424EDA    je          00424FEC
 00424EE0    lea         eax,[esi+4]
 00424EE3    mov         edx,edi
 00424EE5    shl         edx,3
 00424EE8    sub         edx,edi
 00424EEA    mov         ecx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00424EF0    mov         edx,dword ptr [ecx+edx*4+4]
 00424EF4    call        @WStrAsg
 00424EF9    mov         eax,dword ptr [ebx+8]
 00424EFC    mov         edx,eax
 00424EFE    shl         eax,3
 00424F01    sub         eax,edx
 00424F03    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00424F09    mov         edi,dword ptr [edx+eax*4+18]
 00424F0D    test        edi,edi
>00424F0F    je          00424FF9
 00424F15    mov         eax,dword ptr [esi+10]
 00424F18    xor         edx,edx
 00424F1A    call        @WStrCmp
>00424F1F    jne         00424F3E
 00424F21    mov         eax,edi
 00424F23    lea         ecx,[ebp-1C]
 00424F26    mov         edx,dword ptr [esi]
 00424F28    call        00421114
 00424F2D    lea         eax,[esi+10]
 00424F30    mov         edx,dword ptr [ebp-18]
 00424F33    call        @WStrAsg
 00424F38    mov         eax,dword ptr [ebp-14]
 00424F3B    mov         dword ptr [esi+14],eax
 00424F3E    lea         eax,[ebp-30]
 00424F41    push        eax
 00424F42    mov         eax,dword ptr [ebx+8]
 00424F45    mov         edx,eax
 00424F47    shl         eax,3
 00424F4A    sub         eax,edx
 00424F4C    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00424F52    mov         eax,dword ptr [edx+eax*4+18]
 00424F56    mov         ecx,dword ptr [esi]
 00424F58    mov         dl,1
 00424F5A    call        00421010
 00424F5F    mov         edx,dword ptr [ebp-24]
 00424F62    lea         eax,[esi+8]
 00424F65    call        @WStrAsg
 00424F6A    mov         eax,dword ptr [ebx+8]
 00424F6D    mov         edx,eax
 00424F6F    shl         eax,3
 00424F72    sub         eax,edx
 00424F74    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00424F7A    mov         eax,dword ptr [edx+eax*4+18]
 00424F7E    mov         edx,dword ptr [esi]
 00424F80    call        00421434
 00424F85    mov         dword ptr [esi+0C],eax
 00424F88    cmp         dword ptr [esi+0C],0
>00424F8C    jle         00424FBC
 00424F8E    mov         eax,dword ptr [ebp+8]
 00424F91    cmp         byte ptr [eax-9],0
>00424F95    je          00424FBC
 00424F97    cmp         dword ptr [esi+14],0
>00424F9B    je          00424FBC
 00424F9D    mov         eax,dword ptr [ebx+8]
 00424FA0    mov         edx,eax
 00424FA2    shl         eax,3
 00424FA5    sub         eax,edx
 00424FA7    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00424FAD    mov         eax,dword ptr [edx+eax*4+18]
 00424FB1    mov         edx,dword ptr [esi+14]
 00424FB4    call        00421434
 00424FB9    mov         dword ptr [esi+18],eax
 00424FBC    mov         eax,dword ptr [esi+18]
 00424FBF    test        eax,eax
>00424FC1    jle         00424FCC
 00424FC3    sub         dword ptr [esi+0C],eax
 00424FC6    mov         eax,dword ptr [esi+0C]
 00424FC9    add         dword ptr [esi+18],eax
 00424FCC    push        ebp
 00424FCD    mov         eax,dword ptr [ebx+8]
 00424FD0    mov         edx,eax
 00424FD2    shl         eax,3
 00424FD5    sub         eax,edx
 00424FD7    mov         edx,dword ptr ds:[55D7E4];gvar_0055D7E4:?
 00424FDD    mov         edx,dword ptr [edx+eax*4+18]
 00424FE1    mov         eax,dword ptr [esi+4]
 00424FE4    call        00424C64
 00424FE9    pop         ecx
>00424FEA    jmp         00424FF9
 00424FEC    lea         eax,[esi+4]
 00424FEF    mov         edx,425060;'???'
 00424FF4    call        @WStrAsg
 00424FF9    cmp         byte ptr [ebp-1],0
>00424FFD    je          00425012
 00424FFF    mov         eax,dword ptr [ebp+8]
 00425002    cmp         dword ptr [eax+40],0
>00425006    je          00425012
 00425008    mov         eax,dword ptr [ebp+8]
 0042500B    mov         eax,dword ptr [eax+40]
 0042500E    mov         edx,dword ptr [esi]
 00425010    mov         dword ptr [eax],edx
 00425012    mov         byte ptr [ebp-1],0
 00425016    dec         dword ptr [ebp-8]
 00425019    cmp         dword ptr [ebp-8],0FFFFFFFF
>0042501D    jne         00424DCD
 00425023    xor         eax,eax
 00425025    pop         edx
 00425026    pop         ecx
 00425027    pop         ecx
 00425028    mov         dword ptr fs:[eax],edx
 0042502B    push        425054
 00425030    lea         eax,[ebp-30]
 00425033    mov         edx,dword ptr ds:[41C61C];TMfSegment
 00425039    call        @FinalizeRecord
 0042503E    lea         eax,[ebp-1C]
 00425041    mov         edx,dword ptr ds:[41C63C];TMfPublic
 00425047    call        @FinalizeRecord
 0042504C    ret
>0042504D    jmp         @HandleFinally
>00425052    jmp         00425030
 00425054    pop         edi
 00425055    pop         esi
 00425056    pop         ebx
 00425057    mov         esp,ebp
 00425059    pop         ebp
 0042505A    ret
end;*}

//00425068
{*procedure sub_00425068(?:?);
begin
 00425068    push        ebp
 00425069    mov         ebp,esp
 0042506B    mov         ecx,0E
 00425070    push        0
 00425072    push        0
 00425074    dec         ecx
>00425075    jne         00425070
 00425077    push        ecx
 00425078    push        ebx
 00425079    push        esi
 0042507A    push        edi
 0042507B    xor         eax,eax
 0042507D    push        ebp
 0042507E    push        4259EF
 00425083    push        dword ptr fs:[eax]
 00425086    mov         dword ptr fs:[eax],esp
 00425089    mov         eax,dword ptr [ebp+8]
 0042508C    mov         eax,dword ptr [eax+8]
 0042508F    call        @WStrClr
 00425094    xor         eax,eax
 00425096    mov         dword ptr [ebp-20],eax
 00425099    xor         ebx,ebx
 0042509B    xor         eax,eax
 0042509D    mov         dword ptr [ebp-24],eax
 004250A0    xor         eax,eax
 004250A2    mov         dword ptr [ebp-28],eax
 004250A5    xor         eax,eax
 004250A7    mov         dword ptr [ebp-2C],eax
 004250AA    xor         eax,eax
 004250AC    mov         dword ptr [ebp-38],eax
 004250AF    mov         byte ptr [ebp-2D],0
 004250B3    mov         byte ptr [ebp-2F],1
 004250B7    mov         eax,dword ptr [ebp+8]
 004250BA    mov         eax,dword ptr [eax-4]
 004250BD    call        00405CE8
 004250C2    cmp         eax,0
>004250C5    jl          0042531C
 004250CB    mov         dword ptr [ebp-1C],eax
 004250CE    mov         eax,dword ptr [ebp+8]
 004250D1    cmp         dword ptr [eax+20],0
>004250D5    je          004250E6
 004250D7    mov         eax,dword ptr [ebp+8]
 004250DA    mov         eax,dword ptr [eax+20]
 004250DD    cmp         byte ptr [eax],0
>004250E0    jne         004259C7
 004250E6    mov         eax,dword ptr [ebp-1C]
 004250E9    mov         edx,eax
 004250EB    shl         eax,4
 004250EE    add         eax,edx
 004250F0    mov         edx,dword ptr [ebp+8]
 004250F3    mov         edx,dword ptr [edx-4]
 004250F6    lea         edi,[edx+eax*4]
 004250F9    lea         esi,[edi+28]
 004250FC    cmp         byte ptr [edi+24],0
>00425100    jne         0042530F
 00425106    cmp         byte ptr [edi+5],0
>0042510A    jne         00425144
 0042510C    cmp         dword ptr [ebp-1C],0
>00425110    jne         0042511B
 00425112    mov         eax,dword ptr [ebp+8]
 00425115    cmp         dword ptr [eax+44],0
>00425119    jne         00425144
 0042511B    mov         eax,dword ptr [esi+10]
 0042511E    xor         edx,edx
 00425120    call        @WStrCmp
>00425125    je          0042530F
 0042512B    cmp         dword ptr [esi+0C],0
>0042512F    jg          00425144
 00425131    mov         eax,dword ptr [ebp+8]
 00425134    cmp         byte ptr [eax-0A],0
>00425138    je          00425144
 0042513A    cmp         byte ptr [ebp-2D],0
>0042513E    je          0042530F
 00425144    inc         dword ptr [ebp-38]
 00425147    mov         eax,dword ptr [ebp+8]
 0042514A    cmp         byte ptr [eax-0B],0
>0042514E    je          004251A5
 00425150    cmp         dword ptr [esi+14],0
>00425154    je          004251A5
 00425156    mov         eax,dword ptr [esi]
 00425158    cmp         eax,dword ptr [esi+14]
>0042515B    jbe         004251A5
 0042515D    lea         eax,[ebp-3C]
 00425160    push        eax
 00425161    mov         eax,dword ptr [esi]
 00425163    sub         eax,dword ptr [esi+14]
 00425166    mov         cx,30
 0042516A    mov         edx,1
 0042516F    call        0040ACA0
 00425174    mov         eax,dword ptr [ebp-3C]
 00425177    call        @WStrLen
 0042517C    inc         eax
 0042517D    cmp         eax,dword ptr [ebp-20]
>00425180    jle         004251A5
 00425182    lea         eax,[ebp-40]
 00425185    push        eax
 00425186    mov         eax,dword ptr [esi]
 00425188    sub         eax,dword ptr [esi+14]
 0042518B    mov         cx,30
 0042518F    mov         edx,1
 00425194    call        0040ACA0
 00425199    mov         eax,dword ptr [ebp-40]
 0042519C    call        @WStrLen
 004251A1    inc         eax
 004251A2    mov         dword ptr [ebp-20],eax
 004251A5    mov         eax,dword ptr [esi+4]
 004251A8    call        @WStrLen
 004251AD    inc         eax
 004251AE    cmp         ebx,eax
>004251B0    jge         004251BD
 004251B2    mov         eax,dword ptr [esi+4]
 004251B5    call        @WStrLen
 004251BA    mov         ebx,eax
 004251BC    inc         ebx
 004251BD    mov         eax,dword ptr [esi+8]
 004251C0    call        @WStrLen
 004251C5    inc         eax
 004251C6    cmp         eax,dword ptr [ebp-24]
>004251C9    jle         004251D7
 004251CB    mov         eax,dword ptr [esi+8]
 004251CE    call        @WStrLen
 004251D3    inc         eax
 004251D4    mov         dword ptr [ebp-24],eax
 004251D7    cmp         dword ptr [esi+18],0
>004251DB    jle         00425221
 004251DD    lea         eax,[ebp-44]
 004251E0    push        eax
 004251E1    mov         eax,dword ptr [esi+18]
 004251E4    mov         cx,30
 004251E8    mov         edx,1
 004251ED    call        0040AB1C
 004251F2    mov         eax,dword ptr [ebp-44]
 004251F5    call        @WStrLen
 004251FA    inc         eax
 004251FB    cmp         eax,dword ptr [ebp-28]
>004251FE    jle         00425221
 00425200    lea         eax,[ebp-48]
 00425203    push        eax
 00425204    mov         eax,dword ptr [esi+18]
 00425207    mov         cx,30
 0042520B    mov         edx,1
 00425210    call        0040AB1C
 00425215    mov         eax,dword ptr [ebp-48]
 00425218    call        @WStrLen
 0042521D    inc         eax
 0042521E    mov         dword ptr [ebp-28],eax
 00425221    cmp         dword ptr [esi+18],0
>00425225    jg          00425231
 00425227    cmp         dword ptr [esi+0C],0
>0042522B    jle         004252D2
 00425231    mov         eax,dword ptr [ebp+8]
 00425234    cmp         byte ptr [eax-9],0
>00425238    je          0042528A
 0042523A    cmp         dword ptr [esi+18],0
>0042523E    jle         0042528A
 00425240    lea         eax,[ebp-4C]
 00425243    push        eax
 00425244    mov         eax,dword ptr [esi+0C]
 00425247    mov         cx,30
 0042524B    mov         edx,1
 00425250    call        0040AB1C
 00425255    mov         eax,dword ptr [ebp-4C]
 00425258    call        @WStrLen
 0042525D    add         eax,2
 00425260    cmp         eax,dword ptr [ebp-2C]
>00425263    jle         004252CE
 00425265    lea         eax,[ebp-50]
 00425268    push        eax
 00425269    mov         eax,dword ptr [esi+0C]
 0042526C    mov         cx,30
 00425270    mov         edx,1
 00425275    call        0040AB1C
 0042527A    mov         eax,dword ptr [ebp-50]
 0042527D    call        @WStrLen
 00425282    add         eax,2
 00425285    mov         dword ptr [ebp-2C],eax
>00425288    jmp         004252CE
 0042528A    lea         eax,[ebp-54]
 0042528D    push        eax
 0042528E    mov         eax,dword ptr [esi+0C]
 00425291    mov         cx,30
 00425295    mov         edx,1
 0042529A    call        0040AB1C
 0042529F    mov         eax,dword ptr [ebp-54]
 004252A2    call        @WStrLen
 004252A7    inc         eax
 004252A8    cmp         eax,dword ptr [ebp-2C]
>004252AB    jle         004252CE
 004252AD    lea         eax,[ebp-58]
 004252B0    push        eax
 004252B1    mov         eax,dword ptr [esi+0C]
 004252B4    mov         cx,30
 004252B8    mov         edx,1
 004252BD    call        0040AB1C
 004252C2    mov         eax,dword ptr [ebp-58]
 004252C5    call        @WStrLen
 004252CA    inc         eax
 004252CB    mov         dword ptr [ebp-2C],eax
 004252CE    mov         byte ptr [ebp-2D],0
 004252D2    cmp         byte ptr [ebp-2F],0
>004252D6    je          0042530F
 004252D8    cmp         dword ptr [esi+14],0
>004252DC    je          0042530F
 004252DE    cmp         dword ptr [esi+18],0
>004252E2    jle         0042530F
 004252E4    mov         eax,dword ptr [ebp+8]
 004252E7    cmp         dword ptr [eax+3C],0
>004252EB    je          004252F8
 004252ED    mov         eax,dword ptr [esi+14]
 004252F0    mov         edx,dword ptr [ebp+8]
 004252F3    mov         edx,dword ptr [edx+3C]
 004252F6    mov         dword ptr [edx],eax
 004252F8    mov         eax,dword ptr [ebp+8]
 004252FB    cmp         dword ptr [eax+38],0
>004252FF    je          0042530B
 00425301    mov         eax,dword ptr [esi]
 00425303    mov         edx,dword ptr [ebp+8]
 00425306    mov         edx,dword ptr [edx+38]
 00425309    mov         dword ptr [edx],eax
 0042530B    mov         byte ptr [ebp-2F],0
 0042530F    dec         dword ptr [ebp-1C]
 00425312    cmp         dword ptr [ebp-1C],0FFFFFFFF
>00425316    jne         004250CE
 0042531C    lea         eax,[ebp-8]
 0042531F    mov         edx,dword ptr [ebp-20]
 00425322    call        @WStrSetLength
 00425327    lea         eax,[ebp-0C]
 0042532A    mov         edx,ebx
 0042532C    call        @WStrSetLength
 00425331    lea         eax,[ebp-10]
 00425334    mov         edx,dword ptr [ebp-24]
 00425337    call        @WStrSetLength
 0042533C    lea         eax,[ebp-14]
 0042533F    mov         edx,dword ptr [ebp-28]
 00425342    call        @WStrSetLength
 00425347    cmp         dword ptr [ebp-28],0
>0042534B    jle         0042535A
 0042534D    mov         eax,dword ptr [ebp-14]
 00425350    mov         edx,dword ptr [ebp-28]
 00425353    mov         word ptr [eax+edx*2-2],20
 0042535A    lea         eax,[ebp-18]
 0042535D    mov         edx,dword ptr [ebp-2C]
 00425360    call        @WStrSetLength
 00425365    cmp         dword ptr [ebp-2C],0
>00425369    jle         00425378
 0042536B    mov         eax,dword ptr [ebp-18]
 0042536E    mov         edx,dword ptr [ebp-2C]
 00425371    mov         word ptr [eax+edx*2-2],20
 00425378    mov         eax,dword ptr [ebp+8]
 0042537B    cmp         dword ptr [eax+60],0
>0042537F    je          0042539E
 00425381    mov         eax,dword ptr [ebp-38]
 00425384    push        eax
 00425385    mov         eax,dword ptr [ebp+8]
 00425388    mov         eax,dword ptr [eax+60]
 0042538B    mov         ecx,1
 00425390    mov         edx,dword ptr ds:[421F60];TStackTrace
 00425396    call        @DynArraySetLength
 0042539B    add         esp,4
 0042539E    xor         eax,eax
 004253A0    mov         dword ptr [ebp-38],eax
 004253A3    xor         ebx,ebx
 004253A5    mov         byte ptr [ebp-2D],0
 004253A9    mov         byte ptr [ebp-2E],1
 004253AD    mov         eax,dword ptr [ebp+8]
 004253B0    mov         eax,dword ptr [eax-4]
 004253B3    call        00405CE8
 004253B8    cmp         eax,0
>004253BB    jl          0042598C
 004253C1    mov         dword ptr [ebp-1C],eax
 004253C4    mov         eax,dword ptr [ebp+8]
 004253C7    cmp         dword ptr [eax+20],0
>004253CB    je          004253DC
 004253CD    mov         eax,dword ptr [ebp+8]
 004253D0    mov         eax,dword ptr [eax+20]
 004253D3    cmp         byte ptr [eax],0
>004253D6    jne         004259C7
 004253DC    mov         eax,dword ptr [ebp-1C]
 004253DF    mov         edx,eax
 004253E1    shl         eax,4
 004253E4    add         eax,edx
 004253E6    mov         edx,dword ptr [ebp+8]
 004253E9    mov         edx,dword ptr [edx-4]
 004253EC    lea         edi,[edx+eax*4]
 004253EF    lea         esi,[edi+28]
 004253F2    cmp         byte ptr [edi+24],0
>004253F6    jne         0042597F
 004253FC    cmp         byte ptr [edi+5],0
>00425400    jne         00425453
 00425402    cmp         dword ptr [ebp-1C],0
>00425406    jne         00425411
 00425408    mov         eax,dword ptr [ebp+8]
 0042540B    cmp         dword ptr [eax+44],0
>0042540F    jne         00425453
 00425411    mov         eax,dword ptr [esi+10]
 00425414    xor         edx,edx
 00425416    call        @WStrCmp
>0042541B    je          0042597F
 00425421    cmp         dword ptr [esi+0C],0
>00425425    jg          0042543A
 00425427    mov         eax,dword ptr [ebp+8]
 0042542A    cmp         byte ptr [eax-0A],0
>0042542E    je          0042543A
 00425430    cmp         byte ptr [ebp-2D],0
>00425434    je          0042597F
 0042543A    cmp         ebx,dword ptr [esi]
>0042543C    jne         00425453
 0042543E    mov         eax,dword ptr [ebp+8]
 00425441    mov         eax,dword ptr [eax+8]
 00425444    mov         eax,dword ptr [eax]
 00425446    xor         edx,edx
 00425448    call        @WStrCmp
>0042544D    jne         0042597F
 00425453    mov         eax,dword ptr [ebp+8]
 00425456    cmp         dword ptr [eax+60],0
>0042545A    je          0042555A
 00425460    mov         eax,dword ptr [ebp-38]
 00425463    mov         edx,eax
 00425465    shl         eax,3
 00425468    sub         eax,edx
 0042546A    mov         edx,dword ptr [ebp+8]
 0042546D    mov         edx,dword ptr [edx+60]
 00425470    mov         edx,dword ptr [edx]
 00425472    mov         ecx,dword ptr [esi]
 00425474    mov         dword ptr [edx+eax*4],ecx
 00425477    cmp         dword ptr [esi+14],0
>0042547B    je          004254A1
 0042547D    mov         eax,dword ptr [esi]
 0042547F    cmp         eax,dword ptr [esi+14]
>00425482    jbe         004254A1
 00425484    mov         eax,dword ptr [esi]
 00425486    sub         eax,dword ptr [esi+14]
 00425489    mov         edx,dword ptr [ebp-38]
 0042548C    mov         ecx,edx
 0042548E    shl         edx,3
 00425491    sub         edx,ecx
 00425493    mov         ecx,dword ptr [ebp+8]
 00425496    mov         ecx,dword ptr [ecx+60]
 00425499    mov         ecx,dword ptr [ecx]
 0042549B    mov         dword ptr [ecx+edx*4+4],eax
>0042549F    jmp         004254B9
 004254A1    mov         eax,dword ptr [ebp-38]
 004254A4    mov         edx,eax
 004254A6    shl         eax,3
 004254A9    sub         eax,edx
 004254AB    mov         edx,dword ptr [ebp+8]
 004254AE    mov         edx,dword ptr [edx+60]
 004254B1    mov         edx,dword ptr [edx]
 004254B3    xor         ecx,ecx
 004254B5    mov         dword ptr [edx+eax*4+4],ecx
 004254B9    mov         ebx,dword ptr [ebp-38]
 004254BC    mov         eax,ebx
 004254BE    shl         ebx,3
 004254C1    sub         ebx,eax
 004254C3    mov         eax,dword ptr [ebp+8]
 004254C6    mov         eax,dword ptr [eax+60]
 004254C9    mov         eax,dword ptr [eax]
 004254CB    lea         eax,[eax+ebx*4+8]
 004254CF    mov         edx,dword ptr [esi+4]
 004254D2    call        @WStrAsg
 004254D7    mov         eax,dword ptr [ebp+8]
 004254DA    mov         eax,dword ptr [eax+60]
 004254DD    mov         eax,dword ptr [eax]
 004254DF    lea         eax,[eax+ebx*4+0C]
 004254E3    mov         edx,dword ptr [esi+8]
 004254E6    call        @WStrAsg
 004254EB    mov         eax,dword ptr [ebp+8]
 004254EE    mov         eax,dword ptr [eax+60]
 004254F1    mov         eax,dword ptr [eax]
 004254F3    mov         edx,dword ptr [esi+18]
 004254F6    mov         dword ptr [eax+ebx*4+10],edx
 004254FA    cmp         dword ptr [esi+18],0
>004254FE    jg          00425506
 00425500    cmp         dword ptr [esi+0C],0
>00425504    jle         00425521
 00425506    mov         eax,dword ptr [ebp-38]
 00425509    mov         edx,eax
 0042550B    shl         eax,3
 0042550E    sub         eax,edx
 00425510    mov         edx,dword ptr [ebp+8]
 00425513    mov         edx,dword ptr [edx+60]
 00425516    mov         edx,dword ptr [edx]
 00425518    mov         ecx,dword ptr [esi+0C]
 0042551B    mov         dword ptr [edx+eax*4+14],ecx
>0042551F    jmp         00425539
 00425521    mov         eax,dword ptr [ebp-38]
 00425524    mov         edx,eax
 00425526    shl         eax,3
 00425529    sub         eax,edx
 0042552B    mov         edx,dword ptr [ebp+8]
 0042552E    mov         edx,dword ptr [edx+60]
 00425531    mov         edx,dword ptr [edx]
 00425533    xor         ecx,ecx
 00425535    mov         dword ptr [edx+eax*4+14],ecx
 00425539    mov         eax,dword ptr [ebp-38]
 0042553C    mov         edx,eax
 0042553E    shl         eax,3
 00425541    sub         eax,edx
 00425543    mov         edx,dword ptr [ebp+8]
 00425546    mov         edx,dword ptr [edx+60]
 00425549    mov         edx,dword ptr [edx]
 0042554B    lea         eax,[edx+eax*4+18]
 0042554F    mov         edx,dword ptr [esi+10]
 00425552    call        @WStrAsg
 00425557    inc         dword ptr [ebp-38]
 0042555A    cmp         dword ptr [ebp-20],0
>0042555E    jle         004255CD
 00425560    mov         eax,dword ptr [ebp+8]
 00425563    cmp         byte ptr [eax-0B],0
>00425567    je          004255A0
 00425569    cmp         dword ptr [esi+14],0
>0042556D    je          004255A0
 0042556F    mov         eax,dword ptr [esi]
 00425571    cmp         eax,dword ptr [esi+14]
>00425574    jbe         004255A0
 00425576    lea         eax,[ebp-5C]
 00425579    push        eax
 0042557A    mov         eax,dword ptr [esi]
 0042557C    sub         eax,dword ptr [esi+14]
 0042557F    mov         edx,dword ptr [ebp-20]
 00425582    sub         edx,2
 00425585    mov         cx,30
 00425589    call        0040ACA0
 0042558E    mov         edx,dword ptr [ebp-5C]
 00425591    lea         eax,[ebp-8]
 00425594    mov         ecx,425A04;' '
 00425599    call        @WStrCat3
>0042559E    jmp         004255C5
 004255A0    lea         eax,[ebp-60]
 004255A3    push        eax
 004255A4    mov         edx,dword ptr [ebp-20]
 004255A7    sub         edx,2
 004255AA    mov         cx,30
 004255AE    xor         eax,eax
 004255B0    call        0040ACA0
 004255B5    mov         edx,dword ptr [ebp-60]
 004255B8    lea         eax,[ebp-8]
 004255BB    mov         ecx,425A04;' '
 004255C0    call        @WStrCat3
 004255C5    mov         eax,dword ptr [ebp-8]
 004255C8    mov         word ptr [eax],2B
 004255CD    lea         eax,[ebp-4]
 004255D0    mov         edx,dword ptr [esi+4]
 004255D3    call        00404F28
 004255D8    mov         eax,dword ptr [ebp-4]
 004255DB    call        @WStrLen
 004255E0    add         eax,eax
 004255E2    push        eax
 004255E3    mov         eax,dword ptr [ebp-0C]
 004255E6    call        @WStrToPWChar
 004255EB    push        eax
 004255EC    mov         eax,dword ptr [ebp-4]
 004255EF    call        @WStrToPWChar
 004255F4    pop         edx
 004255F5    pop         ecx
 004255F6    call        Move
 004255FB    mov         eax,dword ptr [ebp-4]
 004255FE    call        @WStrLen
 00425603    mov         ebx,eax
 00425605    inc         ebx
 00425606    mov         eax,dword ptr [ebp-0C]
 00425609    call        @WStrLen
 0042560E    sub         eax,ebx
>00425610    jl          00425621
 00425612    inc         eax
 00425613    mov         edx,dword ptr [ebp-0C]
 00425616    mov         word ptr [edx+ebx*2-2],20
 0042561D    inc         ebx
 0042561E    dec         eax
>0042561F    jne         00425613
 00425621    mov         eax,dword ptr [esi+8]
 00425624    call        @WStrLen
 00425629    add         eax,eax
 0042562B    push        eax
 0042562C    mov         eax,dword ptr [ebp-10]
 0042562F    call        @WStrToPWChar
 00425634    push        eax
 00425635    mov         eax,dword ptr [esi+8]
 00425638    call        @WStrToPWChar
 0042563D    pop         edx
 0042563E    pop         ecx
 0042563F    call        Move
 00425644    mov         eax,dword ptr [esi+8]
 00425647    call        @WStrLen
 0042564C    mov         ebx,eax
 0042564E    inc         ebx
 0042564F    mov         eax,dword ptr [ebp-10]
 00425652    call        @WStrLen
 00425657    sub         eax,ebx
>00425659    jl          0042566A
 0042565B    inc         eax
 0042565C    mov         edx,dword ptr [ebp-10]
 0042565F    mov         word ptr [edx+ebx*2-2],20
 00425666    inc         ebx
 00425667    dec         eax
>00425668    jne         0042565C
 0042566A    mov         ebx,dword ptr [esi+18]
 0042566D    test        ebx,ebx
>0042566F    jle         004256B6
 00425671    lea         eax,[ebp-4]
 00425674    push        eax
 00425675    mov         eax,ebx
 00425677    mov         cx,30
 0042567B    mov         edx,1
 00425680    call        0040AB1C
 00425685    mov         eax,dword ptr [ebp-4]
 00425688    call        @WStrLen
 0042568D    mov         edx,dword ptr [ebp-28]
 00425690    sub         edx,eax
 00425692    mov         eax,dword ptr [ebp-14]
 00425695    lea         eax,[eax+edx*2-2]
 00425699    push        eax
 0042569A    mov         eax,dword ptr [ebp-4]
 0042569D    call        @WStrLen
 004256A2    add         eax,eax
 004256A4    push        eax
 004256A5    mov         eax,dword ptr [ebp-4]
 004256A8    call        @WStrToPWChar
 004256AD    pop         ecx
 004256AE    pop         edx
 004256AF    call        Move
>004256B4    jmp         004256BE
 004256B6    lea         eax,[ebp-4]
 004256B9    call        @WStrClr
 004256BE    mov         eax,dword ptr [ebp-4]
 004256C1    call        @WStrLen
 004256C6    push        eax
 004256C7    mov         eax,dword ptr [ebp-28]
 004256CA    pop         edx
 004256CB    sub         eax,edx
 004256CD    dec         eax
 004256CE    test        eax,eax
>004256D0    jle         004256E5
 004256D2    mov         ebx,1
 004256D7    mov         edx,dword ptr [ebp-14]
 004256DA    mov         word ptr [edx+ebx*2-2],20
 004256E1    inc         ebx
 004256E2    dec         eax
>004256E3    jne         004256D7
 004256E5    cmp         dword ptr [esi+18],0
>004256E9    jg          004256F1
 004256EB    cmp         dword ptr [esi+0C],0
>004256EF    jle         0042575A
 004256F1    lea         eax,[ebp-4]
 004256F4    push        eax
 004256F5    mov         eax,dword ptr [esi+0C]
 004256F8    mov         cx,30
 004256FC    mov         edx,1
 00425701    call        0040AB1C
 00425706    mov         eax,dword ptr [ebp+8]
 00425709    cmp         byte ptr [eax-9],0
>0042570D    je          00425725
 0042570F    cmp         dword ptr [esi+18],0
>00425713    jle         00425725
 00425715    lea         eax,[ebp-4]
 00425718    mov         ecx,dword ptr [ebp-4]
 0042571B    mov         edx,425A0C;'+'
 00425720    call        @WStrCat3
 00425725    mov         eax,dword ptr [ebp-4]
 00425728    call        @WStrLen
 0042572D    mov         edx,dword ptr [ebp-2C]
 00425730    sub         edx,eax
 00425732    mov         eax,dword ptr [ebp-18]
 00425735    lea         eax,[eax+edx*2-2]
 00425739    push        eax
 0042573A    mov         eax,dword ptr [ebp-4]
 0042573D    call        @WStrLen
 00425742    add         eax,eax
 00425744    push        eax
 00425745    mov         eax,dword ptr [ebp-4]
 00425748    call        @WStrToPWChar
 0042574D    pop         ecx
 0042574E    pop         edx
 0042574F    call        Move
 00425754    mov         byte ptr [ebp-2D],0
>00425758    jmp         00425762
 0042575A    lea         eax,[ebp-4]
 0042575D    call        @WStrClr
 00425762    mov         eax,dword ptr [ebp-4]
 00425765    call        @WStrLen
 0042576A    push        eax
 0042576B    mov         eax,dword ptr [ebp-2C]
 0042576E    pop         edx
 0042576F    sub         eax,edx
 00425771    dec         eax
 00425772    test        eax,eax
>00425774    jle         00425789
 00425776    mov         ebx,1
 0042577B    mov         edx,dword ptr [ebp-18]
 0042577E    mov         word ptr [edx+ebx*2-2],20
 00425785    inc         ebx
 00425786    dec         eax
>00425787    jne         0042577B
 00425789    mov         eax,dword ptr [ebp+8]
 0042578C    mov         eax,dword ptr [eax+8]
 0042578F    push        dword ptr [eax]
 00425791    push        425A14
 00425796    lea         eax,[ebp-64]
 00425799    push        eax
 0042579A    lea         eax,[ebp-68]
 0042579D    push        eax
 0042579E    mov         eax,dword ptr [esi]
 004257A0    mov         cx,30
 004257A4    mov         edx,8
 004257A9    call        0040ACA0
 004257AE    mov         eax,dword ptr [ebp-68]
 004257B1    mov         ecx,8
 004257B6    mov         edx,2
 004257BB    call        @WStrCopy
 004257C0    push        dword ptr [ebp-64]
 004257C3    push        425A04;' '
 004257C8    push        dword ptr [ebp-8]
 004257CB    push        dword ptr [ebp-0C]
 004257CE    push        dword ptr [ebp-10]
 004257D1    push        dword ptr [ebp-14]
 004257D4    push        dword ptr [ebp-18]
 004257D7    push        dword ptr [esi+10]
 004257DA    mov         eax,dword ptr [ebp+8]
 004257DD    mov         eax,dword ptr [eax+8]
 004257E0    mov         edx,0A
 004257E5    call        @WStrCatN
 004257EA    mov         ebx,dword ptr [esi]
 004257EC    mov         eax,dword ptr [ebp+8]
 004257EF    cmp         dword ptr [eax+1C],0
>004257F3    je          00425948
 004257F9    mov         eax,dword ptr [ebp+8]
 004257FC    cmp         dword ptr [eax+18],0
>00425800    je          00425948
 00425806    mov         eax,dword ptr [ebp+8]
 00425809    cmp         dword ptr [eax+14],0
>0042580D    je          00425948
 00425813    cmp         dword ptr [esi+14],0
>00425817    je          004258E6
 0042581D    mov         eax,dword ptr [esi+4]
 00425820    xor         edx,edx
 00425822    call        @WStrCmp
>00425827    je          004258E6
 0042582D    mov         eax,dword ptr [esi+10]
 00425830    xor         edx,edx
 00425832    call        @WStrCmp
>00425837    je          004258E6
 0042583D    mov         eax,dword ptr [esi]
 0042583F    sub         eax,dword ptr [esi+14]
 00425842    mov         dword ptr [ebp-34],eax
 00425845    mov         edi,dword ptr ds:[55B48C];^gvar_0053D13C
 0042584B    mov         edi,dword ptr [edi]
 0042584D    lea         edx,[ebp-6C]
 00425850    mov         eax,dword ptr [esi+4]
 00425853    call        edi
 00425855    mov         eax,dword ptr [ebp-6C]
 00425858    call        @WStrToPWChar
 0042585D    push        eax
 0042585E    mov         eax,dword ptr [esi+4]
 00425861    call        @WStrLen
 00425866    mov         ecx,eax
 00425868    add         ecx,ecx
 0042586A    mov         eax,dword ptr [ebp-34]
 0042586D    pop         edx
 0042586E    call        0041B4EC
 00425873    mov         dword ptr [ebp-34],eax
 00425876    mov         eax,dword ptr [esi+8]
 00425879    xor         edx,edx
 0042587B    call        @WStrCmp
>00425880    je          004258B3
 00425882    mov         edi,dword ptr ds:[55B48C];^gvar_0053D13C
 00425888    mov         edi,dword ptr [edi]
 0042588A    lea         edx,[ebp-70]
 0042588D    mov         eax,dword ptr [esi+8]
 00425890    call        edi
 00425892    mov         eax,dword ptr [ebp-70]
 00425895    call        @WStrToPWChar
 0042589A    push        eax
 0042589B    mov         eax,dword ptr [esi+8]
 0042589E    call        @WStrLen
 004258A3    mov         ecx,eax
 004258A5    add         ecx,ecx
 004258A7    mov         eax,dword ptr [ebp-34]
 004258AA    pop         edx
 004258AB    call        0041B4EC
 004258B0    mov         dword ptr [ebp-34],eax
 004258B3    mov         edi,dword ptr ds:[55B48C];^gvar_0053D13C
 004258B9    mov         edi,dword ptr [edi]
 004258BB    lea         edx,[ebp-74]
 004258BE    mov         eax,dword ptr [esi+10]
 004258C1    call        edi
 004258C3    mov         eax,dword ptr [ebp-74]
 004258C6    call        @WStrToPWChar
 004258CB    push        eax
 004258CC    mov         eax,dword ptr [esi+10]
 004258CF    call        @WStrLen
 004258D4    mov         ecx,eax
 004258D6    add         ecx,ecx
 004258D8    mov         eax,dword ptr [ebp-34]
 004258DB    pop         edx
 004258DC    call        0041B4EC
 004258E1    mov         dword ptr [ebp-34],eax
>004258E4    jmp         004258EB
 004258E6    mov         eax,dword ptr [esi]
 004258E8    mov         dword ptr [ebp-34],eax
 004258EB    cmp         byte ptr [ebp-2E],0
>004258EF    je          0042591C
 004258F1    mov         eax,dword ptr [ebp+8]
 004258F4    mov         eax,dword ptr [eax+1C]
 004258F7    mov         edx,dword ptr [ebp-34]
 004258FA    mov         dword ptr [eax],edx
 004258FC    mov         eax,dword ptr [ebp+8]
 004258FF    mov         eax,dword ptr [eax+18]
 00425902    mov         edx,dword ptr [ebp-34]
 00425905    mov         dword ptr [eax],edx
 00425907    cmp         dword ptr [esi+0C],0
 0042590B    setg        al
 0042590E    mov         edx,dword ptr [ebp+8]
 00425911    mov         edx,dword ptr [edx+14]
 00425914    mov         byte ptr [edx],al
 00425916    mov         byte ptr [ebp-2E],0
>0042591A    jmp         00425948
 0042591C    lea         edx,[ebp-34]
 0042591F    mov         eax,dword ptr [ebp+8]
 00425922    mov         eax,dword ptr [eax+18]
 00425925    mov         eax,dword ptr [eax]
 00425927    mov         ecx,4
 0042592C    call        0041B4EC
 00425931    mov         edx,dword ptr [ebp+8]
 00425934    mov         edx,dword ptr [edx+18]
 00425937    mov         dword ptr [edx],eax
 00425939    cmp         dword ptr [esi+0C],0
>0042593D    jle         00425948
 0042593F    mov         eax,dword ptr [ebp+8]
 00425942    mov         eax,dword ptr [eax+14]
 00425945    mov         byte ptr [eax],1
 00425948    cmp         byte ptr [ebp-2F],0
>0042594C    je          0042597F
 0042594E    cmp         dword ptr [esi+14],0
>00425952    je          0042597F
 00425954    mov         eax,dword ptr [ebp+8]
 00425957    cmp         dword ptr [eax+3C],0
>0042595B    je          00425968
 0042595D    mov         eax,dword ptr [esi+14]
 00425960    mov         edx,dword ptr [ebp+8]
 00425963    mov         edx,dword ptr [edx+3C]
 00425966    mov         dword ptr [edx],eax
 00425968    mov         eax,dword ptr [ebp+8]
 0042596B    cmp         dword ptr [eax+38],0
>0042596F    je          0042597B
 00425971    mov         eax,dword ptr [esi]
 00425973    mov         edx,dword ptr [ebp+8]
 00425976    mov         edx,dword ptr [edx+38]
 00425979    mov         dword ptr [edx],eax
 0042597B    mov         byte ptr [ebp-2F],0
 0042597F    dec         dword ptr [ebp-1C]
 00425982    cmp         dword ptr [ebp-1C],0FFFFFFFF
>00425986    jne         004253C4
 0042598C    mov         eax,dword ptr [ebp+8]
 0042598F    cmp         dword ptr [eax+60],0
>00425993    je          004259B2
 00425995    mov         eax,dword ptr [ebp-38]
 00425998    push        eax
 00425999    mov         eax,dword ptr [ebp+8]
 0042599C    mov         eax,dword ptr [eax+60]
 0042599F    mov         ecx,1
 004259A4    mov         edx,dword ptr ds:[421F60];TStackTrace
 004259AA    call        @DynArraySetLength
 004259AF    add         esp,4
 004259B2    mov         eax,dword ptr [ebp+8]
 004259B5    mov         eax,dword ptr [eax+8]
 004259B8    mov         ecx,2
 004259BD    mov         edx,1
 004259C2    call        @WStrDelete
 004259C7    xor         eax,eax
 004259C9    pop         edx
 004259CA    pop         ecx
 004259CB    pop         ecx
 004259CC    mov         dword ptr fs:[eax],edx
 004259CF    push        4259F6
 004259D4    lea         eax,[ebp-74]
 004259D7    mov         edx,0F
 004259DC    call        @WStrArrayClr
 004259E1    lea         eax,[ebp-18]
 004259E4    mov         edx,6
 004259E9    call        @WStrArrayClr
 004259EE    ret
>004259EF    jmp         @HandleFinally
>004259F4    jmp         004259D4
 004259F6    pop         edi
 004259F7    pop         esi
 004259F8    pop         ebx
 004259F9    mov         esp,ebp
 004259FB    pop         ebp
 004259FC    ret
end;*}

//00425A1C
{*procedure sub_00425A1C(?:?; ?:?; ?:?);
begin
 00425A1C    push        ebp
 00425A1D    mov         ebp,esp
 00425A1F    push        0
 00425A21    push        ebx
 00425A22    push        esi
 00425A23    mov         ebx,edx
 00425A25    mov         esi,eax
 00425A27    xor         eax,eax
 00425A29    push        ebp
 00425A2A    push        425AA3
 00425A2F    push        dword ptr fs:[eax]
 00425A32    mov         dword ptr fs:[eax],esp
 00425A35    push        ebx
 00425A36    mov         eax,dword ptr [ebp+8]
 00425A39    mov         cl,byte ptr [eax-9]
 00425A3C    mov         eax,dword ptr [ebp+8]
 00425A3F    mov         dl,byte ptr [eax-0B]
 00425A42    mov         eax,esi
 00425A44    call        00423060
 00425A49    mov         eax,dword ptr [ebp+8]
 00425A4C    cmp         byte ptr [eax+54],0
>00425A50    je          00425A8D
 00425A52    push        dword ptr [ebx]
 00425A54    push        425AB4
 00425A59    push        425AC0
 00425A5E    push        425AB4
 00425A63    lea         eax,[ebp-4]
 00425A66    push        eax
 00425A67    mov         eax,dword ptr [ebp+8]
 00425A6A    mov         cl,byte ptr [eax-9]
 00425A6D    mov         eax,dword ptr [ebp+8]
 00425A70    mov         dl,byte ptr [eax-0B]
 00425A73    mov         eax,dword ptr [ebp+8]
 00425A76    mov         eax,dword ptr [eax+58]
 00425A79    call        00422DB8
 00425A7E    push        dword ptr [ebp-4]
 00425A81    mov         eax,ebx
 00425A83    mov         edx,5
 00425A88    call        @WStrCatN
 00425A8D    xor         eax,eax
 00425A8F    pop         edx
 00425A90    pop         ecx
 00425A91    pop         ecx
 00425A92    mov         dword ptr fs:[eax],edx
 00425A95    push        425AAA
 00425A9A    lea         eax,[ebp-4]
 00425A9D    call        @WStrClr
 00425AA2    ret
>00425AA3    jmp         @HandleFinally
>00425AA8    jmp         00425A9A
 00425AAA    pop         esi
 00425AAB    pop         ebx
 00425AAC    pop         ecx
 00425AAD    pop         ebp
 00425AAE    ret
end;*}

//00425B04
{*function sub_00425B04:?;
begin
 00425B04    mov         eax,ebp
 00425B06    ret
end;*}

//00425B08
{*procedure sub_00425B08(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00425B08    push        ebp
 00425B09    mov         ebp,esp
 00425B0B    push        ecx
 00425B0C    mov         ecx,4
 00425B11    push        0
 00425B13    push        0
 00425B15    dec         ecx
>00425B16    jne         00425B11
 00425B18    push        ecx
 00425B19    xchg        ecx,dword ptr [ebp-4]
 00425B1C    push        ebx
 00425B1D    push        esi
 00425B1E    push        edi
 00425B1F    mov         byte ptr [ebp-9],cl
 00425B22    mov         byte ptr [ebp-0B],dl
 00425B25    mov         byte ptr [ebp-0A],al
 00425B28    mov         eax,dword ptr [ebp+34]
 00425B2B    call        @IntfAddRef
 00425B30    mov         eax,dword ptr [ebp+24]
 00425B33    call        @LStrAddRef
 00425B38    xor         eax,eax
 00425B3A    push        ebp
 00425B3B    push        426080
 00425B40    push        dword ptr fs:[eax]
 00425B43    mov         dword ptr fs:[eax],esp
 00425B46    mov         eax,dword ptr [ebp+8]
 00425B49    call        @WStrClr
 00425B4E    cmp         dword ptr [ebp+40],0
>00425B52    je          00425B5B
 00425B54    mov         eax,dword ptr [ebp+40]
 00425B57    xor         edx,edx
 00425B59    mov         dword ptr [eax],edx
 00425B5B    cmp         dword ptr [ebp+3C],0
>00425B5F    je          00425B68
 00425B61    mov         eax,dword ptr [ebp+3C]
 00425B64    xor         edx,edx
 00425B66    mov         dword ptr [eax],edx
 00425B68    cmp         dword ptr [ebp+38],0
>00425B6C    je          00425B75
 00425B6E    mov         eax,dword ptr [ebp+38]
 00425B71    xor         edx,edx
 00425B73    mov         dword ptr [eax],edx
 00425B75    cmp         dword ptr [ebp+60],0
>00425B79    je          00425B89
 00425B7B    mov         eax,dword ptr [ebp+60]
 00425B7E    mov         edx,dword ptr ds:[421F60];TStackTrace
 00425B84    call        @DynArrayClear
 00425B89    cmp         dword ptr [ebp+4C],0
>00425B8D    jne         00425B97
 00425B8F    call        004232C0
 00425B94    mov         dword ptr [ebp+4C],eax
 00425B97    cmp         dword ptr [ebp+48],0
>00425B9B    jne         00425BA5
 00425B9D    call        004232C4
 00425BA2    mov         dword ptr [ebp+48],eax
 00425BA5    cmp         byte ptr [ebp+54],0
>00425BA9    jne         00425BBC
 00425BAB    cmp         dword ptr [ebp+58],0
>00425BAF    jne         00425BBC
 00425BB1    call        00425B04
 00425BB6    mov         eax,dword ptr [eax+4]
 00425BB9    mov         dword ptr [ebp+58],eax
 00425BBC    mov         edx,dword ptr [ebp+48]
 00425BBF    sub         edx,dword ptr [ebp+4C]
 00425BC2    mov         eax,dword ptr [ebp+4C]
 00425BC5    call        004108A4
 00425BCA    test        al,al
>00425BCC    jne         00426047
 00425BD2    call        00417050
 00425BD7    mov         dword ptr [ebp-8],eax
 00425BDA    xor         edx,edx
 00425BDC    push        ebp
 00425BDD    push        426040
 00425BE2    push        dword ptr fs:[edx]
 00425BE5    mov         dword ptr fs:[edx],esp
 00425BE8    xor         eax,eax
 00425BEA    push        ebp
 00425BEB    push        425C07
 00425BF0    push        dword ptr fs:[eax]
 00425BF3    mov         dword ptr fs:[eax],esp
 00425BF6    push        ebp
 00425BF7    call        00423E58
 00425BFC    pop         ecx
 00425BFD    xor         eax,eax
 00425BFF    pop         edx
 00425C00    pop         ecx
 00425C01    pop         ecx
 00425C02    mov         dword ptr fs:[eax],edx
>00425C05    jmp         00425C3A
>00425C07    jmp         @HandleAnyException
 00425C0C    push        ebp
 00425C0D    lea         edx,[ebp-10]
 00425C10    mov         eax,426094
 00425C15    call        00425A1C
 00425C1A    pop         ecx
 00425C1B    mov         edx,dword ptr [ebp-10]
 00425C1E    mov         eax,dword ptr [ebp+8]
 00425C21    call        @WStrAsg
 00425C26    call        @DoneExcept
 00425C2B    call        @TryFinallyExit
>00425C30    jmp         00426047
 00425C35    call        @DoneExcept
 00425C3A    cmp         dword ptr [ebp+20],0
>00425C3E    je          00425C52
 00425C40    mov         eax,dword ptr [ebp+20]
 00425C43    cmp         byte ptr [eax],0
>00425C46    je          00425C52
 00425C48    call        @TryFinallyExit
>00425C4D    jmp         00426047
 00425C52    cmp         dword ptr [ebp+34],0
>00425C56    je          00425C65
 00425C58    mov         edx,19
 00425C5D    mov         eax,dword ptr [ebp+34]
 00425C60    mov         ecx,dword ptr [eax]
 00425C62    call        dword ptr [ecx+18]
 00425C65    xor         eax,eax
 00425C67    push        ebp
 00425C68    push        425C86
 00425C6D    push        dword ptr fs:[eax]
 00425C70    mov         dword ptr fs:[eax],esp
 00425C73    push        ebp
 00425C74    mov         al,1
 00425C76    call        004242A8
 00425C7B    pop         ecx
 00425C7C    xor         eax,eax
 00425C7E    pop         edx
 00425C7F    pop         ecx
 00425C80    pop         ecx
 00425C81    mov         dword ptr fs:[eax],edx
>00425C84    jmp         00425CB9
>00425C86    jmp         @HandleAnyException
 00425C8B    push        ebp
 00425C8C    lea         edx,[ebp-14]
 00425C8F    mov         eax,4260CC
 00425C94    call        00425A1C
 00425C99    pop         ecx
 00425C9A    mov         edx,dword ptr [ebp-14]
 00425C9D    mov         eax,dword ptr [ebp+8]
 00425CA0    call        @WStrAsg
 00425CA5    call        @DoneExcept
 00425CAA    call        @TryFinallyExit
>00425CAF    jmp         00426047
 00425CB4    call        @DoneExcept
 00425CB9    cmp         dword ptr [ebp+20],0
>00425CBD    je          00425CD1
 00425CBF    mov         eax,dword ptr [ebp+20]
 00425CC2    cmp         byte ptr [eax],0
>00425CC5    je          00425CD1
 00425CC7    call        @TryFinallyExit
>00425CCC    jmp         00426047
 00425CD1    xor         eax,eax
 00425CD3    push        ebp
 00425CD4    push        425D68
 00425CD9    push        dword ptr fs:[eax]
 00425CDC    mov         dword ptr fs:[eax],esp
 00425CDF    cmp         dword ptr [ebp+44],0
 00425CE3    setne       bl
 00425CE6    and         ebx,7F
 00425CE9    mov         eax,dword ptr [ebp-4]
 00425CEC    call        00405CE8
 00425CF1    mov         esi,eax
 00425CF3    sub         esi,ebx
>00425CF5    jl          00425D5E
 00425CF7    inc         esi
 00425CF8    cmp         dword ptr [ebp+20],0
>00425CFC    je          00425D18
 00425CFE    mov         eax,dword ptr [ebp+20]
 00425D01    cmp         byte ptr [eax],0
>00425D04    je          00425D18
 00425D06    xor         eax,eax
 00425D08    pop         edx
 00425D09    pop         ecx
 00425D0A    pop         ecx
 00425D0B    mov         dword ptr fs:[eax],edx
 00425D0E    call        @TryFinallyExit
>00425D13    jmp         00426047
 00425D18    mov         eax,ebx
 00425D1A    shl         eax,4
 00425D1D    add         eax,ebx
 00425D1F    mov         edx,dword ptr [ebp-4]
 00425D22    cmp         byte ptr [edx+eax*4+24],0
>00425D27    jne         00425D32
 00425D29    push        ebp
 00425D2A    mov         eax,ebx
 00425D2C    call        0042466C
 00425D31    pop         ecx
 00425D32    cmp         dword ptr [ebp+34],0
>00425D36    je          00425D5A
 00425D38    mov         eax,dword ptr [ebp-4]
 00425D3B    call        @LStrLen
 00425D40    push        eax
 00425D41    imul        eax,ebx,271
 00425D47    pop         edx
 00425D48    mov         ecx,edx
 00425D4A    cdq
 00425D4B    idiv        eax,ecx
 00425D4D    mov         edx,eax
 00425D4F    add         edx,19
 00425D52    mov         eax,dword ptr [ebp+34]
 00425D55    mov         ecx,dword ptr [eax]
 00425D57    call        dword ptr [ecx+18]
 00425D5A    inc         ebx
 00425D5B    dec         esi
>00425D5C    jne         00425CF8
 00425D5E    xor         eax,eax
 00425D60    pop         edx
 00425D61    pop         ecx
 00425D62    pop         ecx
 00425D63    mov         dword ptr fs:[eax],edx
>00425D66    jmp         00425D9B
>00425D68    jmp         @HandleAnyException
 00425D6D    push        ebp
 00425D6E    lea         edx,[ebp-18]
 00425D71    mov         eax,426104
 00425D76    call        00425A1C
 00425D7B    pop         ecx
 00425D7C    mov         edx,dword ptr [ebp-18]
 00425D7F    mov         eax,dword ptr [ebp+8]
 00425D82    call        @WStrAsg
 00425D87    call        @DoneExcept
 00425D8C    call        @TryFinallyExit
>00425D91    jmp         00426047
 00425D96    call        @DoneExcept
 00425D9B    cmp         dword ptr [ebp+20],0
>00425D9F    je          00425DB3
 00425DA1    mov         eax,dword ptr [ebp+20]
 00425DA4    cmp         byte ptr [eax],0
>00425DA7    je          00425DB3
 00425DA9    call        @TryFinallyExit
>00425DAE    jmp         00426047
 00425DB3    cmp         dword ptr [ebp+34],0
>00425DB7    je          00425DC6
 00425DB9    mov         edx,28A
 00425DBE    mov         eax,dword ptr [ebp+34]
 00425DC1    mov         ecx,dword ptr [eax]
 00425DC3    call        dword ptr [ecx+18]
 00425DC6    cmp         byte ptr [ebp+2C],0
>00425DCA    jne         00425EDD
 00425DD0    xor         edx,edx
 00425DD2    push        ebp
 00425DD3    push        425EAA
 00425DD8    push        dword ptr fs:[edx]
 00425DDB    mov         dword ptr fs:[edx],esp
 00425DDE    mov         eax,dword ptr [ebp-4]
 00425DE1    call        00405CE8
 00425DE6    mov         esi,eax
 00425DE8    mov         eax,dword ptr [ebp-4]
 00425DEB    call        00405CE8
 00425DF0    mov         ebx,eax
 00425DF2    dec         ebx
 00425DF3    cmp         ebx,0
>00425DF6    jl          00425E74
 00425DF8    cmp         dword ptr [ebp+20],0
>00425DFC    je          00425E18
 00425DFE    mov         eax,dword ptr [ebp+20]
 00425E01    cmp         byte ptr [eax],0
>00425E04    je          00425E18
 00425E06    xor         eax,eax
 00425E08    pop         edx
 00425E09    pop         ecx
 00425E0A    pop         ecx
 00425E0B    mov         dword ptr fs:[eax],edx
 00425E0E    call        @TryFinallyExit
>00425E13    jmp         00426047
 00425E18    mov         eax,ebx
 00425E1A    shl         eax,4
 00425E1D    add         eax,ebx
 00425E1F    mov         edx,dword ptr [ebp-4]
 00425E22    lea         eax,[edx+eax*4]
 00425E25    cmp         byte ptr [eax+4],0
>00425E29    je          00425E6E
 00425E2B    push        ebp
 00425E2C    mov         edx,esi
 00425E2E    mov         eax,ebx
 00425E30    call        00424B78
 00425E35    pop         ecx
 00425E36    cmp         dword ptr [ebp+34],0
>00425E3A    je          00425E6C
 00425E3C    mov         eax,dword ptr [ebp-4]
 00425E3F    call        00405CE8
 00425E44    sub         eax,ebx
 00425E46    imul        eax,eax,15E
 00425E4C    push        eax
 00425E4D    mov         eax,dword ptr [ebp-4]
 00425E50    call        @LStrLen
 00425E55    pop         edx
 00425E56    xchg        eax,edx
 00425E57    mov         ecx,edx
 00425E59    cdq
 00425E5A    idiv        eax,ecx
 00425E5C    mov         edx,eax
 00425E5E    add         edx,28A
 00425E64    mov         eax,dword ptr [ebp+34]
 00425E67    mov         ecx,dword ptr [eax]
 00425E69    call        dword ptr [ecx+18]
 00425E6C    mov         esi,ebx
 00425E6E    dec         ebx
 00425E6F    cmp         ebx,0FFFFFFFF
>00425E72    jne         00425DF8
 00425E74    cmp         dword ptr [ebp+20],0
>00425E78    je          00425E94
 00425E7A    mov         eax,dword ptr [ebp+20]
 00425E7D    cmp         byte ptr [eax],0
>00425E80    je          00425E94
 00425E82    xor         eax,eax
 00425E84    pop         edx
 00425E85    pop         ecx
 00425E86    pop         ecx
 00425E87    mov         dword ptr fs:[eax],edx
 00425E8A    call        @TryFinallyExit
>00425E8F    jmp         00426047
 00425E94    push        ebp
 00425E95    mov         edx,esi
 00425E97    or          eax,0FFFFFFFF
 00425E9A    call        00424B78
 00425E9F    pop         ecx
 00425EA0    xor         eax,eax
 00425EA2    pop         edx
 00425EA3    pop         ecx
 00425EA4    pop         ecx
 00425EA5    mov         dword ptr fs:[eax],edx
>00425EA8    jmp         00425EDD
>00425EAA    jmp         @HandleAnyException
 00425EAF    push        ebp
 00425EB0    lea         edx,[ebp-1C]
 00425EB3    mov         eax,426124
 00425EB8    call        00425A1C
 00425EBD    pop         ecx
 00425EBE    mov         edx,dword ptr [ebp-1C]
 00425EC1    mov         eax,dword ptr [ebp+8]
 00425EC4    call        @WStrAsg
 00425EC9    call        @DoneExcept
 00425ECE    call        @TryFinallyExit
>00425ED3    jmp         00426047
 00425ED8    call        @DoneExcept
 00425EDD    cmp         dword ptr [ebp+20],0
>00425EE1    je          00425EF5
 00425EE3    mov         eax,dword ptr [ebp+20]
 00425EE6    cmp         byte ptr [eax],0
>00425EE9    je          00425EF5
 00425EEB    call        @TryFinallyExit
>00425EF0    jmp         00426047
 00425EF5    cmp         dword ptr [ebp+34],0
>00425EF9    je          00425F08
 00425EFB    mov         edx,3E8
 00425F00    mov         eax,dword ptr [ebp+34]
 00425F03    mov         ecx,dword ptr [eax]
 00425F05    call        dword ptr [ecx+18]
 00425F08    xor         eax,eax
 00425F0A    push        ebp
 00425F0B    push        425F29
 00425F10    push        dword ptr fs:[eax]
 00425F13    mov         dword ptr fs:[eax],esp
 00425F16    push        ebp
 00425F17    xor         eax,eax
 00425F19    call        004242A8
 00425F1E    pop         ecx
 00425F1F    xor         eax,eax
 00425F21    pop         edx
 00425F22    pop         ecx
 00425F23    pop         ecx
 00425F24    mov         dword ptr fs:[eax],edx
>00425F27    jmp         00425F5C
>00425F29    jmp         @HandleAnyException
 00425F2E    push        ebp
 00425F2F    lea         edx,[ebp-20]
 00425F32    mov         eax,42615C
 00425F37    call        00425A1C
 00425F3C    pop         ecx
 00425F3D    mov         edx,dword ptr [ebp-20]
 00425F40    mov         eax,dword ptr [ebp+8]
 00425F43    call        @WStrAsg
 00425F48    call        @DoneExcept
 00425F4D    call        @TryFinallyExit
>00425F52    jmp         00426047
 00425F57    call        @DoneExcept
 00425F5C    cmp         dword ptr [ebp+20],0
>00425F60    je          00425F74
 00425F62    mov         eax,dword ptr [ebp+20]
 00425F65    cmp         byte ptr [eax],0
>00425F68    je          00425F74
 00425F6A    call        @TryFinallyExit
>00425F6F    jmp         00426047
 00425F74    xor         eax,eax
 00425F76    push        ebp
 00425F77    push        425F93
 00425F7C    push        dword ptr fs:[eax]
 00425F7F    mov         dword ptr fs:[eax],esp
 00425F82    push        ebp
 00425F83    call        00424D7C
 00425F88    pop         ecx
 00425F89    xor         eax,eax
 00425F8B    pop         edx
 00425F8C    pop         ecx
 00425F8D    pop         ecx
 00425F8E    mov         dword ptr fs:[eax],edx
>00425F91    jmp         00425FC6
>00425F93    jmp         @HandleAnyException
 00425F98    push        ebp
 00425F99    lea         edx,[ebp-24]
 00425F9C    mov         eax,42618C
 00425FA1    call        00425A1C
 00425FA6    pop         ecx
 00425FA7    mov         edx,dword ptr [ebp-24]
 00425FAA    mov         eax,dword ptr [ebp+8]
 00425FAD    call        @WStrAsg
 00425FB2    call        @DoneExcept
 00425FB7    call        @TryFinallyExit
>00425FBC    jmp         00426047
 00425FC1    call        @DoneExcept
 00425FC6    cmp         dword ptr [ebp+20],0
>00425FCA    je          00425FDB
 00425FCC    mov         eax,dword ptr [ebp+20]
 00425FCF    cmp         byte ptr [eax],0
>00425FD2    je          00425FDB
 00425FD4    call        @TryFinallyExit
>00425FD9    jmp         00426047
 00425FDB    xor         eax,eax
 00425FDD    push        ebp
 00425FDE    push        425FFA
 00425FE3    push        dword ptr fs:[eax]
 00425FE6    mov         dword ptr fs:[eax],esp
 00425FE9    push        ebp
 00425FEA    call        00425068
 00425FEF    pop         ecx
 00425FF0    xor         eax,eax
 00425FF2    pop         edx
 00425FF3    pop         ecx
 00425FF4    pop         ecx
 00425FF5    mov         dword ptr fs:[eax],edx
>00425FF8    jmp         0042602A
>00425FFA    jmp         @HandleAnyException
 00425FFF    push        ebp
 00426000    lea         edx,[ebp-28]
 00426003    mov         eax,4261B0
 00426008    call        00425A1C
 0042600D    pop         ecx
 0042600E    mov         edx,dword ptr [ebp-28]
 00426011    mov         eax,dword ptr [ebp+8]
 00426014    call        @WStrAsg
 00426019    call        @DoneExcept
 0042601E    call        @TryFinallyExit
>00426023    jmp         00426047
 00426025    call        @DoneExcept
 0042602A    xor         eax,eax
 0042602C    pop         edx
 0042602D    pop         ecx
 0042602E    pop         ecx
 0042602F    mov         dword ptr fs:[eax],edx
 00426032    push        426047
 00426037    mov         eax,dword ptr [ebp-8]
 0042603A    call        0041714C
 0042603F    ret
>00426040    jmp         @HandleFinally
>00426045    jmp         00426037
 00426047    xor         eax,eax
 00426049    pop         edx
 0042604A    pop         ecx
 0042604B    pop         ecx
 0042604C    mov         dword ptr fs:[eax],edx
 0042604F    push        426087
 00426054    lea         eax,[ebp-28]
 00426057    mov         edx,7
 0042605C    call        @WStrArrayClr
 00426061    lea         eax,[ebp-4]
 00426064    mov         edx,dword ptr ds:[423298];_DynArr_16_9
 0042606A    call        @DynArrayClear
 0042606F    lea         eax,[ebp+24]
 00426072    call        @LStrClr
 00426077    lea         eax,[ebp+34]
 0042607A    call        @IntfClear
 0042607F    ret
>00426080    jmp         @HandleFinally
>00426085    jmp         00426054
 00426087    pop         edi
 00426088    pop         esi
 00426089    pop         ebx
 0042608A    mov         esp,ebp
 0042608C    pop         ebp
 0042608D    ret         5C
end;*}

Initialization
Finalization
//004261CC
{*
 004261CC    push        ebp
 004261CD    mov         ebp,esp
 004261CF    xor         eax,eax
 004261D1    push        ebp
 004261D2    push        426213
 004261D7    push        dword ptr fs:[eax]
 004261DA    mov         dword ptr fs:[eax],esp
 004261DD    inc         dword ptr ds:[55D7DC]
>004261E3    jne         00426205
 004261E5    mov         eax,55D7EC;gvar_0055D7EC:?
 004261EA    mov         edx,dword ptr ds:[421FF0];_DynArr_16_5
 004261F0    call        @DynArrayClear
 004261F5    mov         eax,55D7E4;gvar_0055D7E4:?
 004261FA    mov         edx,dword ptr ds:[421FA8];_DynArr_16_3
 00426200    call        @DynArrayClear
 00426205    xor         eax,eax
 00426207    pop         edx
 00426208    pop         ecx
 00426209    pop         ecx
 0042620A    mov         dword ptr fs:[eax],edx
 0042620D    push        42621A
 00426212    ret
>00426213    jmp         @HandleFinally
>00426218    jmp         00426212
 0042621A    pop         ebp
 0042621B    ret
*}
end.