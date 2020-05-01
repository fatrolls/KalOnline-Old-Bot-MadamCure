//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit81;

interface

uses
  SysUtils, Classes;

type
  TSingleInitItem = TSingleInitItem = record//size=C0
f8:String;//f8
end;;
  TLispInitItems = class(TObject)
    constructor Create;//005248FC
  end;
    //procedure sub_00524844(?:?; ?:?);//00524844
    //function sub_005249A0(?:?; ?:?):?;//005249A0
    //function sub_00524A00(?:?; ?:?):?;//00524A00
    //procedure sub_00524A60(?:?; ?:Pointer; ?:?);//00524A60
    //function sub_00524D74(?:?; ?:?):?;//00524D74
    //procedure sub_00524E00(?:?; ?:TLISPListElement);//00524E00

implementation

//00524844
{*procedure sub_00524844(?:?; ?:?);
begin
 00524844    push        ebp
 00524845    mov         ebp,esp
 00524847    add         esp,0FFFFFFF4
 0052484A    mov         dword ptr [ebp-8],edx
 0052484D    mov         dword ptr [ebp-4],eax
 00524850    cmp         dword ptr [ebp-8],0
>00524854    je          005248A2
 00524856    mov         eax,dword ptr [ebp-8]
 00524859    mov         edx,dword ptr [eax+4]
 0052485C    mov         eax,dword ptr [ebp-4]
 0052485F    call        00524A00
 00524864    mov         dword ptr [ebp-0C],eax
 00524867    cmp         dword ptr [ebp-0C],0
>0052486B    jl          00524894
 0052486D    mov         edx,dword ptr [ebp-0C]
 00524870    mov         eax,dword ptr [ebp-4]
 00524873    mov         eax,dword ptr [eax+4]
 00524876    call        TList.Get
 0052487B    mov         edx,dword ptr ds:[5247C0];TSingleInitItem
 00524881    call        @Dispose
 00524886    mov         edx,dword ptr [ebp-0C]
 00524889    mov         eax,dword ptr [ebp-4]
 0052488C    mov         eax,dword ptr [eax+4]
 0052488F    call        00478668
 00524894    mov         edx,dword ptr [ebp-8]
 00524897    mov         eax,dword ptr [ebp-4]
 0052489A    mov         eax,dword ptr [eax+4]
 0052489D    call        TList.Add
 005248A2    mov         esp,ebp
 005248A4    pop         ebp
 005248A5    ret
end;*}

//005248FC
constructor TLispInitItems.Create;
begin
{*
 005248FC    push        ebp
 005248FD    mov         ebp,esp
 005248FF    add         esp,0FFFFFFF4
 00524902    test        dl,dl
>00524904    je          0052490E
 00524906    add         esp,0FFFFFFF0
 00524909    call        @ClassCreate
 0052490E    mov         dword ptr [ebp-0C],ecx
 00524911    mov         byte ptr [ebp-5],dl
 00524914    mov         dword ptr [ebp-4],eax
 00524917    xor         edx,edx
 00524919    mov         eax,dword ptr [ebp-4]
 0052491C    call        TObject.Create
 00524921    mov         dl,1
 00524923    mov         eax,[004759C0];TList
 00524928    call        TObject.Create;TList.Create
 0052492D    mov         edx,dword ptr [ebp-4]
 00524930    mov         dword ptr [edx+4],eax
 00524933    mov         eax,dword ptr [ebp-4]
 00524936    mov         edx,dword ptr [ebp-0C]
 00524939    mov         dword ptr [eax+8],edx
 0052493C    mov         eax,dword ptr [ebp-4]
 0052493F    cmp         byte ptr [ebp-5],0
>00524943    je          00524954
 00524945    call        @AfterConstruction
 0052494A    pop         dword ptr fs:[0]
 00524951    add         esp,0C
 00524954    mov         eax,dword ptr [ebp-4]
 00524957    mov         esp,ebp
 00524959    pop         ebp
 0052495A    ret
*}
end;

//005249A0
{*function sub_005249A0(?:?; ?:?):?;
begin
 005249A0    push        ebp
 005249A1    mov         ebp,esp
 005249A3    add         esp,0FFFFFFE8
 005249A6    mov         dword ptr [ebp-8],edx
 005249A9    mov         dword ptr [ebp-4],eax
 005249AC    xor         eax,eax
 005249AE    mov         dword ptr [ebp-0C],eax
 005249B1    mov         eax,dword ptr [ebp-4]
 005249B4    mov         eax,dword ptr [eax+4]
 005249B7    mov         eax,dword ptr [eax+8]
 005249BA    dec         eax
 005249BB    test        eax,eax
>005249BD    jl          005249F6
 005249BF    inc         eax
 005249C0    mov         dword ptr [ebp-18],eax
 005249C3    mov         dword ptr [ebp-10],0
 005249CA    mov         eax,dword ptr [ebp-4]
 005249CD    mov         eax,dword ptr [eax+4]
 005249D0    mov         edx,dword ptr [ebp-10]
 005249D3    call        TList.Get
 005249D8    mov         dword ptr [ebp-14],eax
 005249DB    mov         eax,dword ptr [ebp-14]
 005249DE    mov         eax,dword ptr [eax+4]
 005249E1    cmp         eax,dword ptr [ebp-8]
>005249E4    jne         005249EE
 005249E6    mov         eax,dword ptr [ebp-14]
 005249E9    mov         dword ptr [ebp-0C],eax
>005249EC    jmp         005249F6
 005249EE    inc         dword ptr [ebp-10]
 005249F1    dec         dword ptr [ebp-18]
>005249F4    jne         005249CA
 005249F6    mov         eax,dword ptr [ebp-0C]
 005249F9    mov         esp,ebp
 005249FB    pop         ebp
 005249FC    ret
end;*}

//00524A00
{*function sub_00524A00(?:?; ?:?):?;
begin
 00524A00    push        ebp
 00524A01    mov         ebp,esp
 00524A03    add         esp,0FFFFFFE8
 00524A06    mov         dword ptr [ebp-8],edx
 00524A09    mov         dword ptr [ebp-4],eax
 00524A0C    mov         dword ptr [ebp-0C],0FFFFFFFF
 00524A13    mov         eax,dword ptr [ebp-4]
 00524A16    mov         eax,dword ptr [eax+4]
 00524A19    mov         eax,dword ptr [eax+8]
 00524A1C    dec         eax
 00524A1D    test        eax,eax
>00524A1F    jl          00524A58
 00524A21    inc         eax
 00524A22    mov         dword ptr [ebp-18],eax
 00524A25    mov         dword ptr [ebp-10],0
 00524A2C    mov         eax,dword ptr [ebp-4]
 00524A2F    mov         eax,dword ptr [eax+4]
 00524A32    mov         edx,dword ptr [ebp-10]
 00524A35    call        TList.Get
 00524A3A    mov         dword ptr [ebp-14],eax
 00524A3D    mov         eax,dword ptr [ebp-14]
 00524A40    mov         eax,dword ptr [eax+4]
 00524A43    cmp         eax,dword ptr [ebp-8]
>00524A46    jne         00524A50
 00524A48    mov         eax,dword ptr [ebp-10]
 00524A4B    mov         dword ptr [ebp-0C],eax
>00524A4E    jmp         00524A58
 00524A50    inc         dword ptr [ebp-10]
 00524A53    dec         dword ptr [ebp-18]
>00524A56    jne         00524A2C
 00524A58    mov         eax,dword ptr [ebp-0C]
 00524A5B    mov         esp,ebp
 00524A5D    pop         ebp
 00524A5E    ret
end;*}

//00524A60
{*procedure sub_00524A60(?:?; ?:Pointer; ?:?);
begin
 00524A60    push        ebp
 00524A61    mov         ebp,esp
 00524A63    add         esp,0FFFFFFF0
 00524A66    mov         dword ptr [ebp-0C],ecx
 00524A69    mov         dword ptr [ebp-8],edx
 00524A6C    mov         dword ptr [ebp-4],eax
 00524A6F    mov         edx,dword ptr [ebp-8]
 00524A72    mov         eax,dword ptr [ebp-4]
 00524A75    call        005249A0
 00524A7A    mov         dword ptr [ebp-10],eax
 00524A7D    cmp         dword ptr [ebp-10],0
>00524A81    je          00524A9B
 00524A83    mov         eax,dword ptr [ebp-0C]
 00524A86    push        eax
 00524A87    mov         cl,1
 00524A89    mov         eax,dword ptr [ebp-10]
 00524A8C    mov         edx,dword ptr [eax]
 00524A8E    mov         eax,dword ptr [ebp-4]
 00524A91    mov         eax,dword ptr [eax+8]
 00524A94    call        00523E74
>00524A99    jmp         00524AA8
 00524A9B    mov         eax,dword ptr [ebp-0C]
 00524A9E    mov         edx,524AB4;'NULL'
 00524AA3    call        @LStrAsg
 00524AA8    mov         esp,ebp
 00524AAA    pop         ebp
 00524AAB    ret
end;*}

//00524D74
{*function sub_00524D74(?:?; ?:?):?;
begin
 00524D74    push        ebp
 00524D75    mov         ebp,esp
 00524D77    add         esp,0FFFFFFEC
 00524D7A    xor         ecx,ecx
 00524D7C    mov         dword ptr [ebp-14],ecx
 00524D7F    mov         dword ptr [ebp-8],edx
 00524D82    mov         dword ptr [ebp-4],eax
 00524D85    mov         eax,dword ptr [ebp-8]
 00524D88    call        @LStrAddRef
 00524D8D    xor         eax,eax
 00524D8F    push        ebp
 00524D90    push        524DF2
 00524D95    push        dword ptr fs:[eax]
 00524D98    mov         dword ptr fs:[eax],esp
 00524D9B    mov         byte ptr [ebp-9],29
 00524D9F    xor         eax,eax
 00524DA1    mov         dword ptr [ebp-10],eax
 00524DA4    lea         edx,[ebp-14]
 00524DA7    mov         eax,dword ptr [ebp-8]
 00524DAA    call        00466210
 00524DAF    mov         eax,dword ptr [ebp-14]
 00524DB2    mov         edx,dword ptr [ebp-10]
 00524DB5    mov         edx,dword ptr [edx*4+54E60C];^'name'
 00524DBC    call        @LStrCmp
>00524DC1    jne         00524DCB
 00524DC3    mov         al,byte ptr [ebp-10]
 00524DC6    mov         byte ptr [ebp-9],al
>00524DC9    jmp         00524DD4
 00524DCB    inc         dword ptr [ebp-10]
 00524DCE    cmp         dword ptr [ebp-10],29
>00524DD2    jne         00524DA4
 00524DD4    xor         eax,eax
 00524DD6    pop         edx
 00524DD7    pop         ecx
 00524DD8    pop         ecx
 00524DD9    mov         dword ptr fs:[eax],edx
 00524DDC    push        524DF9
 00524DE1    lea         eax,[ebp-14]
 00524DE4    call        @LStrClr
 00524DE9    lea         eax,[ebp-8]
 00524DEC    call        @LStrClr
 00524DF1    ret
>00524DF2    jmp         @HandleFinally
>00524DF7    jmp         00524DE1
 00524DF9    mov         al,byte ptr [ebp-9]
 00524DFC    mov         esp,ebp
 00524DFE    pop         ebp
 00524DFF    ret
end;*}

//00524E00
{*procedure sub_00524E00(?:?; ?:TLISPListElement);
begin
 00524E00    push        ebp
 00524E01    mov         ebp,esp
 00524E03    add         esp,0FFFFFFD4
 00524E06    xor         ecx,ecx
 00524E08    mov         dword ptr [ebp-2C],ecx
 00524E0B    mov         dword ptr [ebp-24],ecx
 00524E0E    mov         dword ptr [ebp-28],ecx
 00524E11    mov         dword ptr [ebp-1C],ecx
 00524E14    mov         dword ptr [ebp-20],ecx
 00524E17    mov         dword ptr [ebp-8],edx
 00524E1A    mov         dword ptr [ebp-4],eax
 00524E1D    xor         eax,eax
 00524E1F    push        ebp
 00524E20    push        5251EA
 00524E25    push        dword ptr fs:[eax]
 00524E28    mov         dword ptr fs:[eax],esp
 00524E2B    lea         ecx,[ebp-20]
 00524E2E    xor         edx,edx
 00524E30    mov         eax,dword ptr [ebp-8]
 00524E33    call        00523918
 00524E38    mov         eax,dword ptr [ebp-20]
 00524E3B    lea         edx,[ebp-1C]
 00524E3E    call        00466210
 00524E43    mov         eax,dword ptr [ebp-1C]
 00524E46    mov         edx,525200;'item'
 00524E4B    call        @LStrCmp
>00524E50    jne         005251CF
 00524E56    mov         edx,dword ptr ds:[5247C0];TSingleInitItem
 00524E5C    mov         eax,0C0
 00524E61    call        00405948
 00524E66    mov         dword ptr [ebp-14],eax
 00524E69    mov         eax,dword ptr [ebp-14]
 00524E6C    mov         dword ptr [eax+0C],0FFFFFFFF
 00524E73    mov         eax,dword ptr [ebp-14]
 00524E76    mov         byte ptr [eax+31],64
 00524E7A    mov         eax,dword ptr [ebp-8]
 00524E7D    mov         eax,dword ptr [eax+0C]
 00524E80    dec         eax
 00524E81    test        eax,eax
>00524E83    jl          005251C4
 00524E89    inc         eax
 00524E8A    mov         dword ptr [ebp-18],eax
 00524E8D    mov         dword ptr [ebp-0C],0
 00524E94    mov         edx,dword ptr [ebp-0C]
 00524E97    mov         eax,dword ptr [ebp-8]
 00524E9A    call        005238A4
 00524E9F    mov         edx,dword ptr [eax]
 00524EA1    call        dword ptr [edx]
 00524EA3    test        al,al
>00524EA5    jne         005251B8
 00524EAB    mov         edx,dword ptr [ebp-0C]
 00524EAE    mov         eax,dword ptr [ebp-8]
 00524EB1    call        005238F4
 00524EB6    mov         dword ptr [ebp-10],eax
 00524EB9    lea         ecx,[ebp-28]
 00524EBC    xor         edx,edx
 00524EBE    mov         eax,dword ptr [ebp-10]
 00524EC1    call        00523918
 00524EC6    mov         eax,dword ptr [ebp-28]
 00524EC9    lea         edx,[ebp-24]
 00524ECC    call        00466210
 00524ED1    mov         edx,dword ptr [ebp-24]
 00524ED4    mov         eax,dword ptr [ebp-4]
 00524ED7    call        00524D74
 00524EDC    and         eax,7F
 00524EDF    cmp         eax,22
>00524EE2    ja          005251B8
 00524EE8    jmp         dword ptr [eax*4+524EEF]
 00524EE8    dd          00524F93
 00524EE8    dd          00524F7B
 00524EE8    dd          00524FC2
 00524EE8    dd          00524FE5
 00524EE8    dd          005251B8
 00524EE8    dd          00525010
 00524EE8    dd          005251B8
 00524EE8    dd          00525061
 00524EE8    dd          00525079
 00524EE8    dd          005251B8
 00524EE8    dd          005250D9
 00524EE8    dd          005250F4
 00524EE8    dd          0052510F
 00524EE8    dd          005251B8
 00524EE8    dd          005251B8
 00524EE8    dd          00525099
 00524EE8    dd          00524FAA
 00524EE8    dd          005250B9
 00524EE8    dd          0052512A
 00524EE8    dd          005251B8
 00524EE8    dd          005251B8
 00524EE8    dd          005251B8
 00524EE8    dd          005251B8
 00524EE8    dd          005251B8
 00524EE8    dd          0052513F
 00524EE8    dd          005251B8
 00524EE8    dd          005251B8
 00524EE8    dd          005251B8
 00524EE8    dd          00525174
 00524EE8    dd          005251B8
 00524EE8    dd          005251A2
 00524EE8    dd          005251B8
 00524EE8    dd          005251B8
 00524EE8    dd          005251B8
 00524EE8    dd          0052515C
 00524F7B    mov         edx,1
 00524F80    mov         eax,dword ptr [ebp-10]
 00524F83    call        005238C8
 00524F88    mov         edx,dword ptr [ebp-14]
 00524F8B    mov         dword ptr [edx+4],eax
>00524F8E    jmp         005251B8
 00524F93    mov         edx,1
 00524F98    mov         eax,dword ptr [ebp-10]
 00524F9B    call        005238C8
 00524FA0    mov         edx,dword ptr [ebp-14]
 00524FA3    mov         dword ptr [edx],eax
>00524FA5    jmp         005251B8
 00524FAA    mov         edx,1
 00524FAF    mov         eax,dword ptr [ebp-10]
 00524FB2    call        005238C8
 00524FB7    mov         edx,dword ptr [ebp-14]
 00524FBA    mov         dword ptr [edx+0C],eax
>00524FBD    jmp         005251B8
 00524FC2    lea         ecx,[ebp-2C]
 00524FC5    mov         edx,1
 00524FCA    mov         eax,dword ptr [ebp-10]
 00524FCD    call        00523918
 00524FD2    mov         edx,dword ptr [ebp-2C]
 00524FD5    mov         eax,dword ptr [ebp-14]
 00524FD8    add         eax,8
 00524FDB    call        @LStrAsg
>00524FE0    jmp         005251B8
 00524FE5    mov         edx,1
 00524FEA    mov         eax,dword ptr [ebp-10]
 00524FED    call        005238C8
 00524FF2    mov         edx,dword ptr [ebp-14]
 00524FF5    mov         dword ptr [edx+14],eax
 00524FF8    mov         edx,2
 00524FFD    mov         eax,dword ptr [ebp-10]
 00525000    call        005238C8
 00525005    mov         edx,dword ptr [ebp-14]
 00525008    mov         dword ptr [edx+18],eax
>0052500B    jmp         005251B8
 00525010    mov         edx,1
 00525015    mov         eax,dword ptr [ebp-10]
 00525018    call        005238C8
 0052501D    mov         edx,dword ptr [ebp-14]
 00525020    mov         byte ptr [edx+48],al
 00525023    mov         edx,2
 00525028    mov         eax,dword ptr [ebp-10]
 0052502B    call        005238C8
 00525030    mov         edx,dword ptr [ebp-14]
 00525033    mov         byte ptr [edx+49],al
 00525036    mov         edx,3
 0052503B    mov         eax,dword ptr [ebp-10]
 0052503E    call        005238C8
 00525043    mov         edx,dword ptr [ebp-14]
 00525046    mov         byte ptr [edx+4A],al
 00525049    mov         edx,4
 0052504E    mov         eax,dword ptr [ebp-10]
 00525051    call        005238C8
 00525056    mov         edx,dword ptr [ebp-14]
 00525059    mov         byte ptr [edx+4B],al
>0052505C    jmp         005251B8
 00525061    mov         edx,1
 00525066    mov         eax,dword ptr [ebp-10]
 00525069    call        005238C8
 0052506E    mov         edx,dword ptr [ebp-14]
 00525071    mov         dword ptr [edx+10],eax
>00525074    jmp         005251B8
 00525079    mov         edx,1
 0052507E    mov         eax,dword ptr [ebp-10]
 00525081    call        005238C8
 00525086    test        eax,eax
 00525088    setg        al
 0052508B    mov         edx,dword ptr [ebp-14]
 0052508E    mov         byte ptr [edx+0A0],al
>00525094    jmp         005251B8
 00525099    mov         edx,1
 0052509E    mov         eax,dword ptr [ebp-10]
 005250A1    call        005238C8
 005250A6    test        eax,eax
 005250A8    setg        al
 005250AB    mov         edx,dword ptr [ebp-14]
 005250AE    mov         byte ptr [edx+0A2],al
>005250B4    jmp         005251B8
 005250B9    mov         edx,1
 005250BE    mov         eax,dword ptr [ebp-10]
 005250C1    call        005238C8
 005250C6    test        eax,eax
 005250C8    setg        al
 005250CB    mov         edx,dword ptr [ebp-14]
 005250CE    mov         byte ptr [edx+0A1],al
>005250D4    jmp         005251B8
 005250D9    mov         edx,1
 005250DE    mov         eax,dword ptr [ebp-10]
 005250E1    call        005238C8
 005250E6    mov         edx,dword ptr [ebp-14]
 005250E9    mov         dword ptr [edx+94],eax
>005250EF    jmp         005251B8
 005250F4    mov         edx,1
 005250F9    mov         eax,dword ptr [ebp-10]
 005250FC    call        005238C8
 00525101    mov         edx,dword ptr [ebp-14]
 00525104    mov         dword ptr [edx+0A4],eax
>0052510A    jmp         005251B8
 0052510F    mov         edx,1
 00525114    mov         eax,dword ptr [ebp-10]
 00525117    call        005238C8
 0052511C    mov         edx,dword ptr [ebp-14]
 0052511F    mov         dword ptr [edx+0A8],eax
>00525125    jmp         005251B8
 0052512A    mov         edx,1
 0052512F    mov         eax,dword ptr [ebp-10]
 00525132    call        005238C8
 00525137    mov         edx,dword ptr [ebp-14]
 0052513A    mov         dword ptr [edx+40],eax
>0052513D    jmp         005251B8
 0052513F    mov         edx,1
 00525144    mov         eax,dword ptr [ebp-10]
 00525147    call        005238C8
 0052514C    test        eax,eax
 0052514E    setg        al
 00525151    mov         edx,dword ptr [ebp-14]
 00525154    mov         byte ptr [edx+0B4],al
>0052515A    jmp         005251B8
 0052515C    mov         edx,1
 00525161    mov         eax,dword ptr [ebp-10]
 00525164    call        005238C8
 00525169    mov         edx,dword ptr [ebp-14]
 0052516C    mov         dword ptr [edx+0B0],eax
>00525172    jmp         005251B8
 00525174    mov         edx,1
 00525179    mov         eax,dword ptr [ebp-10]
 0052517C    call        005238C8
 00525181    mov         edx,dword ptr [ebp-14]
 00525184    mov         byte ptr [edx+0B5],al
 0052518A    mov         edx,1
 0052518F    mov         eax,dword ptr [ebp-10]
 00525192    call        005238C8
 00525197    mov         edx,dword ptr [ebp-14]
 0052519A    mov         dword ptr [edx+0B8],eax
>005251A0    jmp         005251B8
 005251A2    mov         edx,1
 005251A7    mov         eax,dword ptr [ebp-10]
 005251AA    call        005238C8
 005251AF    mov         edx,dword ptr [ebp-14]
 005251B2    mov         dword ptr [edx+0BC],eax
 005251B8    inc         dword ptr [ebp-0C]
 005251BB    dec         dword ptr [ebp-18]
>005251BE    jne         00524E94
 005251C4    mov         edx,dword ptr [ebp-14]
 005251C7    mov         eax,dword ptr [ebp-4]
 005251CA    call        00524844
 005251CF    xor         eax,eax
 005251D1    pop         edx
 005251D2    pop         ecx
 005251D3    pop         ecx
 005251D4    mov         dword ptr fs:[eax],edx
 005251D7    push        5251F1
 005251DC    lea         eax,[ebp-2C]
 005251DF    mov         edx,5
 005251E4    call        @LStrArrayClr
 005251E9    ret
>005251EA    jmp         @HandleFinally
>005251EF    jmp         005251DC
 005251F1    mov         esp,ebp
 005251F3    pop         ebp
 005251F4    ret
end;*}

Initialization
Finalization
//00525208
{*
 00525208    push        ebp
 00525209    mov         ebp,esp
 0052520B    xor         eax,eax
 0052520D    push        ebp
 0052520E    push        525244
 00525213    push        dword ptr fs:[eax]
 00525216    mov         dword ptr fs:[eax],esp
 00525219    inc         dword ptr ds:[55E090]
>0052521F    jne         00525236
 00525221    mov         eax,54E60C;^'name'
 00525226    mov         ecx,29
 0052522B    mov         edx,dword ptr ds:[4010AC];String
 00525231    call        @FinalizeArray
 00525236    xor         eax,eax
 00525238    pop         edx
 00525239    pop         ecx
 0052523A    pop         ecx
 0052523B    mov         dword ptr fs:[eax],edx
 0052523E    push        52524B
 00525243    ret
>00525244    jmp         @HandleFinally
>00525249    jmp         00525243
 0052524B    pop         ebp
 0052524C    ret
*}
end.