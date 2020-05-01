//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit99;

interface

uses
  SysUtils, Classes;

type
  TInventory = class(TInterfacedObject)
    //constructor Create(?:?);//00526884
  end;
    //function sub_00526710(?:?; ?:Pointer):?;//00526710
    //function sub_00526754(?:?; ?:Int64):?;//00526754
    //function sub_005267B8(?:?; ?:?):?;//005267B8
    //procedure sub_0052681C(?:?);//0052681C
    //function sub_00526868(?:?):?;//00526868
    //procedure sub_00526944(?:TInventory; ?:?);//00526944
    //procedure sub_00526CE8(?:?);//00526CE8
    //procedure sub_00526CF4(?:?; ?:?; ?:?; ?:?);//00526CF4
    //procedure sub_00526DBC(?:?; ?:?);//00526DBC
    //procedure sub_00526DFC(?:?; ?:?);//00526DFC
    //procedure sub_00526E6C(?:?; ?:?);//00526E6C
    //procedure sub_00526ED0(?:?; ?:?);//00526ED0
    //procedure sub_00526EE0(?:?; ?:?);//00526EE0
    //procedure sub_00526F48(?:?; ?:?);//00526F48
    //procedure sub_00526F98(?:?; ?:?);//00526F98
    procedure sub_00526FB0(?:TInventory);//00526FB0

implementation

//00526710
{*function sub_00526710(?:?; ?:Pointer):?;
begin
 00526710    push        ebp
 00526711    mov         ebp,esp
 00526713    add         esp,0FFFFFFF4
 00526716    mov         dword ptr [ebp-8],edx
 00526719    mov         dword ptr [ebp-4],eax
 0052671C    mov         byte ptr [ebp-9],0
 00526720    cmp         dword ptr [ebp-8],0
>00526724    je          0052674A
 00526726    mov         eax,dword ptr [ebp-8]
 00526729    mov         edx,dword ptr [eax+4]
 0052672C    mov         eax,dword ptr [ebp-4]
 0052672F    call        00526754
 00526734    test        eax,eax
>00526736    jne         0052674A
 00526738    mov         edx,dword ptr [ebp-8]
 0052673B    mov         eax,dword ptr [ebp-4]
 0052673E    mov         eax,dword ptr [eax+10]
 00526741    call        TList.Add
 00526746    mov         byte ptr [ebp-9],1
 0052674A    mov         al,byte ptr [ebp-9]
 0052674D    mov         esp,ebp
 0052674F    pop         ebp
 00526750    ret
end;*}

//00526754
{*function sub_00526754(?:?; ?:Int64):?;
begin
 00526754    push        ebp
 00526755    mov         ebp,esp
 00526757    add         esp,0FFFFFFEC
 0052675A    mov         dword ptr [ebp-8],edx
 0052675D    mov         dword ptr [ebp-4],eax
 00526760    xor         eax,eax
 00526762    mov         dword ptr [ebp-0C],eax
 00526765    mov         eax,dword ptr [ebp-4]
 00526768    mov         eax,dword ptr [eax+10]
 0052676B    mov         eax,dword ptr [eax+8]
 0052676E    dec         eax
 0052676F    test        eax,eax
>00526771    jl          005267AF
 00526773    inc         eax
 00526774    mov         dword ptr [ebp-14],eax
 00526777    mov         dword ptr [ebp-10],0
 0052677E    mov         eax,dword ptr [ebp-4]
 00526781    mov         eax,dword ptr [eax+10]
 00526784    mov         edx,dword ptr [ebp-10]
 00526787    call        TList.Get
 0052678C    mov         eax,dword ptr [eax+4]
 0052678F    cmp         eax,dword ptr [ebp-8]
>00526792    jne         005267A7
 00526794    mov         eax,dword ptr [ebp-4]
 00526797    mov         eax,dword ptr [eax+10]
 0052679A    mov         edx,dword ptr [ebp-10]
 0052679D    call        TList.Get
 005267A2    mov         dword ptr [ebp-0C],eax
>005267A5    jmp         005267AF
 005267A7    inc         dword ptr [ebp-10]
 005267AA    dec         dword ptr [ebp-14]
>005267AD    jne         0052677E
 005267AF    mov         eax,dword ptr [ebp-0C]
 005267B2    mov         esp,ebp
 005267B4    pop         ebp
 005267B5    ret
end;*}

//005267B8
{*function sub_005267B8(?:?; ?:?):?;
begin
 005267B8    push        ebp
 005267B9    mov         ebp,esp
 005267BB    add         esp,0FFFFFFEC
 005267BE    mov         word ptr [ebp-6],dx
 005267C2    mov         dword ptr [ebp-4],eax
 005267C5    xor         eax,eax
 005267C7    mov         dword ptr [ebp-0C],eax
 005267CA    mov         eax,dword ptr [ebp-4]
 005267CD    mov         eax,dword ptr [eax+10]
 005267D0    mov         eax,dword ptr [eax+8]
 005267D3    dec         eax
 005267D4    test        eax,eax
>005267D6    jl          00526815
 005267D8    inc         eax
 005267D9    mov         dword ptr [ebp-14],eax
 005267DC    mov         dword ptr [ebp-10],0
 005267E3    mov         eax,dword ptr [ebp-4]
 005267E6    mov         eax,dword ptr [eax+10]
 005267E9    mov         edx,dword ptr [ebp-10]
 005267EC    call        TList.Get
 005267F1    mov         ax,word ptr [eax]
 005267F4    cmp         ax,word ptr [ebp-6]
>005267F8    jne         0052680D
 005267FA    mov         eax,dword ptr [ebp-4]
 005267FD    mov         eax,dword ptr [eax+10]
 00526800    mov         edx,dword ptr [ebp-10]
 00526803    call        TList.Get
 00526808    mov         dword ptr [ebp-0C],eax
>0052680B    jmp         00526815
 0052680D    inc         dword ptr [ebp-10]
 00526810    dec         dword ptr [ebp-14]
>00526813    jne         005267E3
 00526815    mov         eax,dword ptr [ebp-0C]
 00526818    mov         esp,ebp
 0052681A    pop         ebp
 0052681B    ret
end;*}

//0052681C
{*procedure sub_0052681C(?:?);
begin
 0052681C    push        ebp
 0052681D    mov         ebp,esp
 0052681F    add         esp,0FFFFFFF8
 00526822    mov         dword ptr [ebp-4],eax
 00526825    mov         eax,dword ptr [ebp-4]
 00526828    mov         eax,dword ptr [eax+10]
 0052682B    mov         eax,dword ptr [eax+8]
 0052682E    dec         eax
 0052682F    cmp         eax,0
>00526832    jl          00526858
 00526834    mov         dword ptr [ebp-8],eax
 00526837    mov         edx,dword ptr [ebp-8]
 0052683A    mov         eax,dword ptr [ebp-4]
 0052683D    mov         eax,dword ptr [eax+10]
 00526840    call        TList.Get
 00526845    mov         edx,38
 0052684A    call        @FreeMem
 0052684F    dec         dword ptr [ebp-8]
 00526852    cmp         dword ptr [ebp-8],0FFFFFFFF
>00526856    jne         00526837
 00526858    mov         eax,dword ptr [ebp-4]
 0052685B    mov         eax,dword ptr [eax+10]
 0052685E    mov         edx,dword ptr [eax]
 00526860    call        dword ptr [edx+8]
 00526863    pop         ecx
 00526864    pop         ecx
 00526865    pop         ebp
 00526866    ret
end;*}

//00526868
{*function sub_00526868(?:?):?;
begin
 00526868    push        ebp
 00526869    mov         ebp,esp
 0052686B    add         esp,0FFFFFFF8
 0052686E    mov         dword ptr [ebp-4],eax
 00526871    mov         eax,dword ptr [ebp-4]
 00526874    mov         eax,dword ptr [eax+10]
 00526877    mov         eax,dword ptr [eax+8]
 0052687A    mov         dword ptr [ebp-8],eax
 0052687D    mov         eax,dword ptr [ebp-8]
 00526880    pop         ecx
 00526881    pop         ecx
 00526882    pop         ebp
 00526883    ret
end;*}

//00526884
{*constructor TInventory.Create(?:?);
begin
 00526884    push        ebp
 00526885    mov         ebp,esp
 00526887    add         esp,0FFFFFFF4
 0052688A    test        dl,dl
>0052688C    je          00526896
 0052688E    add         esp,0FFFFFFF0
 00526891    call        @ClassCreate
 00526896    mov         dword ptr [ebp-0C],ecx
 00526899    mov         byte ptr [ebp-5],dl
 0052689C    mov         dword ptr [ebp-4],eax
 0052689F    xor         edx,edx
 005268A1    mov         eax,dword ptr [ebp-4]
 005268A4    call        TObject.Create
 005268A9    mov         eax,dword ptr [ebp-4]
 005268AC    mov         edx,dword ptr [ebp-0C]
 005268AF    mov         dword ptr [eax+0C],edx
 005268B2    mov         dl,1
 005268B4    mov         eax,[004759C0];TList
 005268B9    call        TObject.Create;TList.Create
 005268BE    mov         edx,dword ptr [ebp-4]
 005268C1    mov         dword ptr [edx+10],eax
 005268C4    mov         eax,dword ptr [ebp-4]
 005268C7    mov         edx,dword ptr [ebp+8]
 005268CA    mov         dword ptr [eax+14],edx
 005268CD    mov         eax,dword ptr [ebp-4]
 005268D0    cmp         byte ptr [ebp-5],0
>005268D4    je          005268E5
 005268D6    call        @AfterConstruction
 005268DB    pop         dword ptr fs:[0]
 005268E2    add         esp,0C
 005268E5    mov         eax,dword ptr [ebp-4]
 005268E8    mov         esp,ebp
 005268EA    pop         ebp
 005268EB    ret         4
end;*}

//00526944
{*procedure sub_00526944(?:TInventory; ?:?);
begin
 00526944    push        ebp
 00526945    mov         ebp,esp
 00526947    mov         ecx,0C
 0052694C    push        0
 0052694E    push        0
 00526950    dec         ecx
>00526951    jne         0052694C
 00526953    push        ecx
 00526954    mov         dword ptr [ebp-8],edx
 00526957    mov         dword ptr [ebp-4],eax
 0052695A    xor         eax,eax
 0052695C    push        ebp
 0052695D    push        526BAC
 00526962    push        dword ptr fs:[eax]
 00526965    mov         dword ptr fs:[eax],esp
 00526968    mov         eax,dword ptr [ebp-4]
 0052696B    call        00526868
 00526970    dec         eax
 00526971    test        eax,eax
>00526973    jl          00526B91
 00526979    inc         eax
 0052697A    mov         dword ptr [ebp-14],eax
 0052697D    mov         dword ptr [ebp-0C],0
 00526984    mov         edx,dword ptr [ebp-0C]
 00526987    mov         eax,dword ptr [ebp-4]
 0052698A    mov         eax,dword ptr [eax+10]
 0052698D    call        TList.Get
 00526992    mov         dword ptr [ebp-10],eax
 00526995    mov         eax,dword ptr [ebp-8]
 00526998    push        dword ptr [eax]
 0052699A    push        526BC0;'Name: '
 0052699F    lea         ecx,[ebp-18]
 005269A2    mov         eax,dword ptr [ebp-10]
 005269A5    movzx       edx,word ptr [eax]
 005269A8    mov         eax,dword ptr [ebp-4]
 005269AB    mov         eax,dword ptr [eax+14]
 005269AE    mov         eax,dword ptr [eax+10]
 005269B1    call        00524A60
 005269B6    push        dword ptr [ebp-18]
 005269B9    push        526BD0;' IID: '
 005269BE    lea         edx,[ebp-1C]
 005269C1    mov         eax,dword ptr [ebp-10]
 005269C4    movzx       eax,word ptr [eax]
 005269C7    call        IntToStr
 005269CC    push        dword ptr [ebp-1C]
 005269CF    push        526BE0;' Index: '
 005269D4    mov         eax,dword ptr [ebp-10]
 005269D7    mov         eax,dword ptr [eax+4]
 005269DA    xor         edx,edx
 005269DC    push        edx
 005269DD    push        eax
 005269DE    lea         eax,[ebp-20]
 005269E1    call        IntToStr
 005269E6    push        dword ptr [ebp-20]
 005269E9    push        526BF4;' Prefix: '
 005269EE    lea         edx,[ebp-24]
 005269F1    mov         eax,dword ptr [ebp-10]
 005269F4    movzx       eax,byte ptr [eax+8]
 005269F8    call        IntToStr
 005269FD    push        dword ptr [ebp-24]
 00526A00    push        526C08;' Ilosc: '
 00526A05    mov         eax,dword ptr [ebp-10]
 00526A08    mov         eax,dword ptr [eax+10]
 00526A0B    xor         edx,edx
 00526A0D    push        edx
 00526A0E    push        eax
 00526A0F    lea         eax,[ebp-28]
 00526A12    call        IntToStr
 00526A17    push        dword ptr [ebp-28]
 00526A1A    push        526C1C;' Endurance: '
 00526A1F    lea         edx,[ebp-2C]
 00526A22    mov         eax,dword ptr [ebp-10]
 00526A25    movzx       eax,byte ptr [eax+15]
 00526A29    call        IntToStr
 00526A2E    push        dword ptr [ebp-2C]
 00526A31    push        526C34;'/'
 00526A36    lea         edx,[ebp-30]
 00526A39    mov         eax,dword ptr [ebp-10]
 00526A3C    movzx       eax,byte ptr [eax+14]
 00526A40    call        IntToStr
 00526A45    push        dword ptr [ebp-30]
 00526A48    push        526C40;' PhiAtta: '
 00526A4D    lea         edx,[ebp-34]
 00526A50    mov         eax,dword ptr [ebp-10]
 00526A53    movzx       eax,byte ptr [eax+17]
 00526A57    call        IntToStr
 00526A5C    push        dword ptr [ebp-34]
 00526A5F    push        526C54;' MagAtta: '
 00526A64    lea         edx,[ebp-38]
 00526A67    mov         eax,dword ptr [ebp-10]
 00526A6A    movzx       eax,byte ptr [eax+18]
 00526A6E    call        IntToStr
 00526A73    push        dword ptr [ebp-38]
 00526A76    push        526C68;' ToD/ToA: '
 00526A7B    lea         edx,[ebp-3C]
 00526A7E    mov         eax,dword ptr [ebp-10]
 00526A81    movzx       eax,byte ptr [eax+19]
 00526A85    call        IntToStr
 00526A8A    push        dword ptr [ebp-3C]
 00526A8D    push        526C34;'/'
 00526A92    lea         edx,[ebp-40]
 00526A95    mov         eax,dword ptr [ebp-10]
 00526A98    movzx       eax,byte ptr [eax+1A]
 00526A9C    call        IntToStr
 00526AA1    push        dword ptr [ebp-40]
 00526AA4    push        526C7C;' Fusion: '
 00526AA9    lea         edx,[ebp-44]
 00526AAC    mov         eax,dword ptr [ebp-10]
 00526AAF    movzx       eax,byte ptr [eax+24]
 00526AB3    call        IntToStr
 00526AB8    push        dword ptr [ebp-44]
 00526ABB    push        526C90;' mele/mag attack: '
 00526AC0    lea         edx,[ebp-48]
 00526AC3    mov         eax,dword ptr [ebp-10]
 00526AC6    movzx       eax,word ptr [eax+26]
 00526ACA    call        IntToStr
 00526ACF    push        dword ptr [ebp-48]
 00526AD2    push        526C34;'/'
 00526AD7    lea         edx,[ebp-4C]
 00526ADA    mov         eax,dword ptr [ebp-10]
 00526ADD    movzx       eax,word ptr [eax+28]
 00526AE1    call        IntToStr
 00526AE6    push        dword ptr [ebp-4C]
 00526AE9    push        526CAC;' Stats: def/str/hlt/wis/int/agi '
 00526AEE    lea         edx,[ebp-50]
 00526AF1    mov         eax,dword ptr [ebp-10]
 00526AF4    movzx       eax,byte ptr [eax+2A]
 00526AF8    call        IntToStr
 00526AFD    push        dword ptr [ebp-50]
 00526B00    push        526CD8;'|'
 00526B05    lea         edx,[ebp-54]
 00526B08    mov         eax,dword ptr [ebp-10]
 00526B0B    movzx       eax,byte ptr [eax+32]
 00526B0F    call        IntToStr
 00526B14    push        dword ptr [ebp-54]
 00526B17    push        526C34;'/'
 00526B1C    lea         edx,[ebp-58]
 00526B1F    mov         eax,dword ptr [ebp-10]
 00526B22    movzx       eax,byte ptr [eax+33]
 00526B26    call        IntToStr
 00526B2B    push        dword ptr [ebp-58]
 00526B2E    push        526C34;'/'
 00526B33    lea         edx,[ebp-5C]
 00526B36    mov         eax,dword ptr [ebp-10]
 00526B39    movzx       eax,byte ptr [eax+35]
 00526B3D    call        IntToStr
 00526B42    push        dword ptr [ebp-5C]
 00526B45    push        526C34;'/'
 00526B4A    lea         edx,[ebp-60]
 00526B4D    mov         eax,dword ptr [ebp-10]
 00526B50    movzx       eax,byte ptr [eax+34]
 00526B54    call        IntToStr
 00526B59    push        dword ptr [ebp-60]
 00526B5C    push        526C34;'/'
 00526B61    lea         edx,[ebp-64]
 00526B64    mov         eax,dword ptr [ebp-10]
 00526B67    movzx       eax,byte ptr [eax+36]
 00526B6B    call        IntToStr
 00526B70    push        dword ptr [ebp-64]
 00526B73    push        526CE4;#13
 00526B78    mov         eax,dword ptr [ebp-8]
 00526B7B    mov         edx,2A
 00526B80    call        @LStrCatN
 00526B85    inc         dword ptr [ebp-0C]
 00526B88    dec         dword ptr [ebp-14]
>00526B8B    jne         00526984
 00526B91    xor         eax,eax
 00526B93    pop         edx
 00526B94    pop         ecx
 00526B95    pop         ecx
 00526B96    mov         dword ptr fs:[eax],edx
 00526B99    push        526BB3
 00526B9E    lea         eax,[ebp-64]
 00526BA1    mov         edx,14
 00526BA6    call        @LStrArrayClr
 00526BAB    ret
>00526BAC    jmp         @HandleFinally
>00526BB1    jmp         00526B9E
 00526BB3    mov         esp,ebp
 00526BB5    pop         ebp
 00526BB6    ret
end;*}

//00526CE8
{*procedure sub_00526CE8(?:?);
begin
 00526CE8    push        ebp
 00526CE9    mov         ebp,esp
 00526CEB    push        ecx
 00526CEC    mov         dword ptr [ebp-4],eax
 00526CEF    pop         ecx
 00526CF0    pop         ebp
 00526CF1    ret
end;*}

//00526CF4
{*procedure sub_00526CF4(?:?; ?:?; ?:?; ?:?);
begin
 00526CF4    push        ebp
 00526CF5    mov         ebp,esp
 00526CF7    add         esp,0FFFFFFF4
 00526CFA    mov         dword ptr [ebp-0C],ecx
 00526CFD    mov         byte ptr [ebp-5],dl
 00526D00    mov         dword ptr [ebp-4],eax
 00526D03    mov         al,byte ptr [ebp+0C]
 00526D06    sub         al,1
>00526D08    jae         00526DB5
 00526D0E    xor         eax,eax
 00526D10    mov         al,byte ptr [ebp-5]
 00526D13    cmp         eax,88
>00526D18    jg          00526D34
>00526D1A    je          00526DA7
 00526D20    sub         eax,4
>00526D23    je          00526D87
 00526D25    sub         eax,7
>00526D28    je          00526D97
 00526D2A    sub         eax,19
>00526D2D    je          00526D77
>00526D2F    jmp         00526DB5
 00526D34    sub         eax,90
>00526D39    je          00526D47
 00526D3B    sub         eax,0A
>00526D3E    je          00526D57
 00526D40    sub         eax,19
>00526D43    je          00526D67
>00526D45    jmp         00526DB5
 00526D47    mov         eax,dword ptr [ebp-0C]
 00526D4A    mov         edx,dword ptr [eax+4]
 00526D4D    mov         eax,dword ptr [ebp-4]
 00526D50    call        00526DFC
>00526D55    jmp         00526DB5
 00526D57    mov         eax,dword ptr [ebp-0C]
 00526D5A    mov         edx,dword ptr [eax+4]
 00526D5D    mov         eax,dword ptr [ebp-4]
 00526D60    call        00526DBC
>00526D65    jmp         00526DB5
 00526D67    mov         eax,dword ptr [ebp-0C]
 00526D6A    mov         edx,dword ptr [eax+4]
 00526D6D    mov         eax,dword ptr [ebp-4]
 00526D70    call        00526EE0
>00526D75    jmp         00526DB5
 00526D77    mov         eax,dword ptr [ebp-0C]
 00526D7A    mov         edx,dword ptr [eax+4]
 00526D7D    mov         eax,dword ptr [ebp-4]
 00526D80    call        00526F48
>00526D85    jmp         00526DB5
 00526D87    mov         eax,dword ptr [ebp-0C]
 00526D8A    mov         edx,dword ptr [eax+4]
 00526D8D    mov         eax,dword ptr [ebp-4]
 00526D90    call        00526ED0
>00526D95    jmp         00526DB5
 00526D97    mov         eax,dword ptr [ebp-0C]
 00526D9A    mov         edx,dword ptr [eax+4]
 00526D9D    mov         eax,dword ptr [ebp-4]
 00526DA0    call        00526E6C
>00526DA5    jmp         00526DB5
 00526DA7    mov         eax,dword ptr [ebp-0C]
 00526DAA    mov         edx,dword ptr [eax+4]
 00526DAD    mov         eax,dword ptr [ebp-4]
 00526DB0    call        00526F98
 00526DB5    mov         esp,ebp
 00526DB7    pop         ebp
 00526DB8    ret         8
end;*}

//00526DBC
{*procedure sub_00526DBC(?:?; ?:?);
begin
 00526DBC    push        ebp
 00526DBD    mov         ebp,esp
 00526DBF    add         esp,0FFFFFFF4
 00526DC2    mov         dword ptr [ebp-8],edx
 00526DC5    mov         dword ptr [ebp-4],eax
 00526DC8    lea         eax,[ebp-8]
 00526DCB    mov         edx,3
 00526DD0    call        0051F5E4
 00526DD5    mov         eax,38
 00526DDA    call        @GetMem
 00526DDF    mov         dword ptr [ebp-0C],eax
 00526DE2    lea         edx,[ebp-8]
 00526DE5    mov         eax,dword ptr [ebp-0C]
 00526DE8    call        00522380
 00526DED    mov         edx,dword ptr [ebp-0C]
 00526DF0    mov         eax,dword ptr [ebp-4]
 00526DF3    call        00526710
 00526DF8    mov         esp,ebp
 00526DFA    pop         ebp
 00526DFB    ret
end;*}

//00526DFC
{*procedure sub_00526DFC(?:?; ?:?);
begin
 00526DFC    push        ebp
 00526DFD    mov         ebp,esp
 00526DFF    add         esp,0FFFFFFEC
 00526E02    mov         dword ptr [ebp-8],edx
 00526E05    mov         dword ptr [ebp-4],eax
 00526E08    mov         eax,dword ptr [ebp-4]
 00526E0B    call        0052681C
 00526E10    lea         eax,[ebp-8]
 00526E13    mov         edx,3
 00526E18    call        0051F5E4
 00526E1D    lea         eax,[ebp-8]
 00526E20    call        0051F338
 00526E25    mov         byte ptr [ebp-9],al
 00526E28    mov         al,byte ptr [ebp-9]
 00526E2B    dec         eax
 00526E2C    test        al,al
>00526E2E    jb          00526E66
 00526E30    inc         eax
 00526E31    mov         byte ptr [ebp-12],al
 00526E34    mov         byte ptr [ebp-11],0
 00526E38    mov         eax,38
 00526E3D    call        @GetMem
 00526E42    mov         dword ptr [ebp-10],eax
 00526E45    lea         edx,[ebp-8]
 00526E48    mov         eax,dword ptr [ebp-10]
 00526E4B    call        00522380
 00526E50    mov         eax,dword ptr [ebp-4]
 00526E53    mov         eax,dword ptr [eax+10]
 00526E56    mov         edx,dword ptr [ebp-10]
 00526E59    call        TList.Add
 00526E5E    inc         byte ptr [ebp-11]
 00526E61    dec         byte ptr [ebp-12]
>00526E64    jne         00526E38
 00526E66    mov         esp,ebp
 00526E68    pop         ebp
 00526E69    ret
end;*}

//00526E6C
{*procedure sub_00526E6C(?:?; ?:?);
begin
 00526E6C    push        ebp
 00526E6D    mov         ebp,esp
 00526E6F    add         esp,0FFFFFFEC
 00526E72    mov         dword ptr [ebp-8],edx
 00526E75    mov         dword ptr [ebp-4],eax
 00526E78    lea         eax,[ebp-8]
 00526E7B    mov         edx,3
 00526E80    call        0051F5E4
 00526E85    lea         eax,[ebp-8]
 00526E88    call        0051F3CC
 00526E8D    mov         dword ptr [ebp-0C],eax
 00526E90    lea         eax,[ebp-8]
 00526E93    call        0051F338
 00526E98    mov         byte ptr [ebp-0D],al
 00526E9B    mov         edx,dword ptr [ebp-0C]
 00526E9E    mov         eax,dword ptr [ebp-4]
 00526EA1    call        00526754
 00526EA6    mov         dword ptr [ebp-14],eax
 00526EA9    cmp         dword ptr [ebp-14],0
>00526EAD    je          00526ECA
 00526EAF    mov         edx,38
 00526EB4    mov         eax,dword ptr [ebp-14]
 00526EB7    call        @FreeMem
 00526EBC    mov         edx,dword ptr [ebp-14]
 00526EBF    mov         eax,dword ptr [ebp-4]
 00526EC2    mov         eax,dword ptr [eax+10]
 00526EC5    call        00478AC4
 00526ECA    mov         esp,ebp
 00526ECC    pop         ebp
 00526ECD    ret
end;*}

//00526ED0
{*procedure sub_00526ED0(?:?; ?:?);
begin
 00526ED0    push        ebp
 00526ED1    mov         ebp,esp
 00526ED3    add         esp,0FFFFFFF8
 00526ED6    mov         dword ptr [ebp-8],edx
 00526ED9    mov         dword ptr [ebp-4],eax
 00526EDC    pop         ecx
 00526EDD    pop         ecx
 00526EDE    pop         ebp
 00526EDF    ret
end;*}

//00526EE0
{*procedure sub_00526EE0(?:?; ?:?);
begin
 00526EE0    push        ebp
 00526EE1    mov         ebp,esp
 00526EE3    add         esp,0FFFFFFF0
 00526EE6    mov         dword ptr [ebp-8],edx
 00526EE9    mov         dword ptr [ebp-4],eax
 00526EEC    lea         eax,[ebp-8]
 00526EEF    mov         edx,3
 00526EF4    call        0051F5E4
 00526EF9    mov         eax,38
 00526EFE    call        @GetMem
 00526F03    mov         dword ptr [ebp-0C],eax
 00526F06    lea         edx,[ebp-8]
 00526F09    mov         eax,dword ptr [ebp-0C]
 00526F0C    call        00522380
 00526F11    mov         eax,dword ptr [ebp-0C]
 00526F14    mov         edx,dword ptr [eax+4]
 00526F17    mov         eax,dword ptr [ebp-4]
 00526F1A    call        00526754
 00526F1F    mov         dword ptr [ebp-10],eax
 00526F22    cmp         dword ptr [ebp-10],0
>00526F26    jne         00526F35
 00526F28    mov         edx,dword ptr [ebp-0C]
 00526F2B    mov         eax,dword ptr [ebp-4]
 00526F2E    call        00526710
>00526F33    jmp         00526F42
 00526F35    mov         edx,38
 00526F3A    mov         eax,dword ptr [ebp-0C]
 00526F3D    call        @FreeMem
 00526F42    mov         esp,ebp
 00526F44    pop         ebp
 00526F45    ret
end;*}

//00526F48
{*procedure sub_00526F48(?:?; ?:?);
begin
 00526F48    push        ebp
 00526F49    mov         ebp,esp
 00526F4B    add         esp,0FFFFFFE8
 00526F4E    mov         dword ptr [ebp-8],edx
 00526F51    mov         dword ptr [ebp-4],eax
 00526F54    lea         eax,[ebp-8]
 00526F57    mov         edx,3
 00526F5C    call        0051F5E4
 00526F61    lea         eax,[ebp-8]
 00526F64    call        0051F3CC
 00526F69    mov         dword ptr [ebp-0C],eax
 00526F6C    lea         eax,[ebp-8]
 00526F6F    call        0051F3CC
 00526F74    mov         dword ptr [ebp-10],eax
 00526F77    mov         edx,dword ptr [ebp-0C]
 00526F7A    mov         eax,dword ptr [ebp-4]
 00526F7D    call        00526754
 00526F82    mov         dword ptr [ebp-14],eax
 00526F85    cmp         dword ptr [ebp-14],0
>00526F89    je          00526F94
 00526F8B    mov         eax,dword ptr [ebp-10]
 00526F8E    mov         edx,dword ptr [ebp-14]
 00526F91    mov         dword ptr [edx+10],eax
 00526F94    mov         esp,ebp
 00526F96    pop         ebp
 00526F97    ret
end;*}

//00526F98
{*procedure sub_00526F98(?:?; ?:?);
begin
 00526F98    push        ebp
 00526F99    mov         ebp,esp
 00526F9B    add         esp,0FFFFFFF8
 00526F9E    mov         dword ptr [ebp-8],edx
 00526FA1    mov         dword ptr [ebp-4],eax
 00526FA4    mov         eax,dword ptr [ebp-4]
 00526FA7    call        0052681C
 00526FAC    pop         ecx
 00526FAD    pop         ecx
 00526FAE    pop         ebp
 00526FAF    ret
end;*}

//00526FB0
procedure sub_00526FB0(?:TInventory);
begin
{*
 00526FB0    push        ebp
 00526FB1    mov         ebp,esp
 00526FB3    push        ecx
 00526FB4    mov         dword ptr [ebp-4],eax
 00526FB7    push        6
 00526FB9    mov         ecx,54E6EC
 00526FBE    mov         edx,dword ptr [ebp-4]
 00526FC1    test        edx,edx
>00526FC3    je          00526FC8
 00526FC5    sub         edx,0FFFFFFE8
 00526FC8    mov         eax,dword ptr [ebp-4]
 00526FCB    mov         eax,dword ptr [eax+0C]
 00526FCE    call        005204E4
 00526FD3    pop         ecx
 00526FD4    pop         ebp
 00526FD5    ret
*}
end;

end.