//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit114;

interface

uses
  SysUtils, Classes, MainUnit;

type
  TIncomingMessage = TIncomingMessage = record//size=18
f8:String;//f8
fC:String;//fC
end;;
  TOutgoingMessage = TOutgoingMessage = record//size=10
f8:String;//f8
end;;
  TChatManager = class(TInterfacedObject)
  public
    f18:dword;//f18
    f1C:TMainForm;//f1C
    f20:dword;//f20
    f24:TMainForm;//f24
    //constructor Create(?:?);//00521860
  end;
    //function sub_0052174C(?:?; ?:?):?;//0052174C
    //procedure sub_00521940(?:?; ?:?; ?:?; ?:?; ?:?);//00521940
    //function sub_005219FC(?:?; ?:?):?;//005219FC
    //function sub_00521AC4(?:?; ?:?):?;//00521AC4
    //procedure sub_00521B6C(?:?);//00521B6C
    //procedure sub_00521BA0(?:TChatManager; ?:?);//00521BA0

implementation

//0052174C
{*function sub_0052174C(?:?; ?:?):?;
begin
 0052174C    push        ebp
 0052174D    mov         ebp,esp
 0052174F    add         esp,0FFFFFFEC
 00521752    xor         ecx,ecx
 00521754    mov         dword ptr [ebp-14],ecx
 00521757    mov         dword ptr [ebp-10],ecx
 0052175A    mov         dword ptr [ebp-8],edx
 0052175D    mov         dword ptr [ebp-4],eax
 00521760    mov         eax,dword ptr [ebp-8]
 00521763    call        @LStrAddRef
 00521768    xor         eax,eax
 0052176A    push        ebp
 0052176B    push        521835
 00521770    push        dword ptr fs:[eax]
 00521773    mov         dword ptr fs:[eax],esp
 00521776    mov         byte ptr [ebp-9],0
 0052177A    mov         eax,dword ptr [ebp-8]
 0052177D    movzx       eax,byte ptr [eax]
 00521780    cmp         eax,2A
>00521783    jg          00521797
>00521785    je          005217C6
 00521787    sub         eax,23
>0052178A    je          005217AE
 0052178C    dec         eax
>0052178D    je          005217B4
 0052178F    dec         eax
>00521790    je          005217CC
 00521792    dec         eax
>00521793    je          005217C0
>00521795    jmp         00521812
 00521797    sub         eax,2F
>0052179A    je          005217D2
 0052179C    sub         eax,11
>0052179F    je          005217A8
 005217A1    sub         eax,3E
>005217A4    je          005217BA
>005217A6    jmp         00521812
 005217A8    mov         byte ptr [ebp-9],2
>005217AC    jmp         00521812
 005217AE    mov         byte ptr [ebp-9],3
>005217B2    jmp         00521812
 005217B4    mov         byte ptr [ebp-9],4
>005217B8    jmp         00521812
 005217BA    mov         byte ptr [ebp-9],5
>005217BE    jmp         00521812
 005217C0    mov         byte ptr [ebp-9],6
>005217C4    jmp         00521812
 005217C6    mov         byte ptr [ebp-9],7
>005217CA    jmp         00521812
 005217CC    mov         byte ptr [ebp-9],8
>005217D0    jmp         00521812
 005217D2    lea         edx,[ebp-10]
 005217D5    mov         eax,dword ptr [ebp-8]
 005217D8    call        00466210
 005217DD    mov         edx,dword ptr [ebp-10]
 005217E0    mov         eax,52184C;'/s'
 005217E5    call        @LStrPos
 005217EA    dec         eax
>005217EB    je          00521808
 005217ED    lea         edx,[ebp-14]
 005217F0    mov         eax,dword ptr [ebp-8]
 005217F3    call        00466210
 005217F8    mov         edx,dword ptr [ebp-14]
 005217FB    mov         eax,521858;'/shout'
 00521800    call        @LStrPos
 00521805    dec         eax
>00521806    jne         0052180E
 00521808    mov         byte ptr [ebp-9],1
>0052180C    jmp         00521812
 0052180E    mov         byte ptr [ebp-9],9
 00521812    xor         eax,eax
 00521814    pop         edx
 00521815    pop         ecx
 00521816    pop         ecx
 00521817    mov         dword ptr fs:[eax],edx
 0052181A    push        52183C
 0052181F    lea         eax,[ebp-14]
 00521822    mov         edx,2
 00521827    call        @LStrArrayClr
 0052182C    lea         eax,[ebp-8]
 0052182F    call        @LStrClr
 00521834    ret
>00521835    jmp         @HandleFinally
>0052183A    jmp         0052181F
 0052183C    mov         al,byte ptr [ebp-9]
 0052183F    mov         esp,ebp
 00521841    pop         ebp
 00521842    ret
end;*}

//00521860
{*constructor TChatManager.Create(?:?);
begin
 00521860    push        ebp
 00521861    mov         ebp,esp
 00521863    add         esp,0FFFFFFF4
 00521866    test        dl,dl
>00521868    je          00521872
 0052186A    add         esp,0FFFFFFF0
 0052186D    call        @ClassCreate
 00521872    mov         dword ptr [ebp-0C],ecx
 00521875    mov         byte ptr [ebp-5],dl
 00521878    mov         dword ptr [ebp-4],eax
 0052187B    xor         edx,edx
 0052187D    mov         eax,dword ptr [ebp-4]
 00521880    call        TObject.Create
 00521885    mov         dl,1
 00521887    mov         eax,[004759C0];TList
 0052188C    call        TObject.Create;TList.Create
 00521891    mov         edx,dword ptr [ebp-4]
 00521894    mov         dword ptr [edx+0C],eax
 00521897    mov         eax,dword ptr [ebp-4]
 0052189A    mov         edx,dword ptr [ebp+8]
 0052189D    mov         dword ptr [eax+10],edx
 005218A0    mov         eax,dword ptr [ebp-4]
 005218A3    mov         edx,dword ptr [ebp-0C]
 005218A6    mov         dword ptr [eax+14],edx
 005218A9    push        0
 005218AB    mov         ecx,54E570
 005218B0    mov         edx,dword ptr [ebp-4]
 005218B3    test        edx,edx
>005218B5    je          005218BA
 005218B7    sub         edx,0FFFFFFD8
 005218BA    mov         eax,dword ptr [ebp-0C]
 005218BD    call        005204E4
 005218C2    push        0
 005218C4    mov         ecx,54E574
 005218C9    mov         edx,dword ptr [ebp-4]
 005218CC    test        edx,edx
>005218CE    je          005218D3
 005218D0    sub         edx,0FFFFFFD8
 005218D3    mov         eax,dword ptr [ebp-0C]
 005218D6    call        005203DC
 005218DB    mov         eax,dword ptr [ebp-4]
 005218DE    cmp         byte ptr [ebp-5],0
>005218E2    je          005218F3
 005218E4    call        @AfterConstruction
 005218E9    pop         dword ptr fs:[0]
 005218F0    add         esp,0C
 005218F3    mov         eax,dword ptr [ebp-4]
 005218F6    mov         esp,ebp
 005218F8    pop         ebp
 005218F9    ret         4
end;*}

//00521940
{*procedure sub_00521940(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00521940    push        ebp
 00521941    mov         ebp,esp
 00521943    add         esp,0FFFFFFEC
 00521946    push        ebx
 00521947    mov         dword ptr [ebp-0C],ecx
 0052194A    mov         byte ptr [ebp-5],dl
 0052194D    mov         dword ptr [ebp-4],eax
 00521950    mov         al,byte ptr [ebp+0C]
 00521953    sub         al,1
>00521955    jb          0052195E
>00521957    je          005219B1
>00521959    jmp         005219F2
 0052195E    xor         eax,eax
 00521960    mov         al,byte ptr [ebp-5]
 00521963    cmp         ax,81
>00521967    jne         005219F2
 0052196D    mov         eax,dword ptr [ebp-0C]
 00521970    mov         edx,dword ptr [eax+4]
 00521973    mov         eax,dword ptr [ebp-4]
 00521976    call        005219FC
 0052197B    mov         dword ptr [ebp-10],eax
 0052197E    mov         eax,dword ptr [ebp-4]
 00521981    cmp         word ptr [eax+1A],0
>00521986    je          005219A1
 00521988    mov         eax,dword ptr [ebp+8]
 0052198B    push        eax
 0052198C    mov         eax,dword ptr [ebp-10]
 0052198F    mov         ecx,dword ptr [eax+0C]
 00521992    mov         eax,dword ptr [ebp-10]
 00521995    mov         edx,dword ptr [eax+8]
 00521998    mov         ebx,dword ptr [ebp-4]
 0052199B    mov         eax,dword ptr [ebx+1C]
 0052199E    call        dword ptr [ebx+18]
 005219A1    mov         edx,dword ptr ds:[521634];TIncomingMessage
 005219A7    mov         eax,dword ptr [ebp-10]
 005219AA    call        @Dispose
>005219AF    jmp         005219F2
 005219B1    cmp         byte ptr [ebp-5],2C
>005219B5    jne         005219F2
 005219B7    mov         eax,dword ptr [ebp-0C]
 005219BA    mov         edx,dword ptr [eax+4]
 005219BD    mov         eax,dword ptr [ebp-4]
 005219C0    call        00521AC4
 005219C5    mov         dword ptr [ebp-14],eax
 005219C8    mov         eax,dword ptr [ebp-4]
 005219CB    cmp         word ptr [eax+22],0
>005219D0    je          005219E4
 005219D2    mov         ecx,dword ptr [ebp+8]
 005219D5    mov         eax,dword ptr [ebp-14]
 005219D8    mov         edx,dword ptr [eax+8]
 005219DB    mov         ebx,dword ptr [ebp-4]
 005219DE    mov         eax,dword ptr [ebx+24]
 005219E1    call        dword ptr [ebx+20]
 005219E4    mov         edx,dword ptr ds:[521664];TOutgoingMessage
 005219EA    mov         eax,dword ptr [ebp-14]
 005219ED    call        @Dispose
 005219F2    pop         ebx
 005219F3    mov         esp,ebp
 005219F5    pop         ebp
 005219F6    ret         8
end;*}

//005219FC
{*function sub_005219FC(?:?; ?:?):?;
begin
 005219FC    push        ebp
 005219FD    mov         ebp,esp
 005219FF    add         esp,0FFFFFFE4
 00521A02    xor         ecx,ecx
 00521A04    mov         dword ptr [ebp-1C],ecx
 00521A07    mov         dword ptr [ebp-18],ecx
 00521A0A    mov         dword ptr [ebp-8],edx
 00521A0D    mov         dword ptr [ebp-4],eax
 00521A10    xor         eax,eax
 00521A12    push        ebp
 00521A13    push        521AB6
 00521A18    push        dword ptr fs:[eax]
 00521A1B    mov         dword ptr fs:[eax],esp
 00521A1E    lea         eax,[ebp-8]
 00521A21    mov         edx,3
 00521A26    call        0051F5E4
 00521A2B    mov         edx,dword ptr ds:[521634];TIncomingMessage
 00521A31    mov         eax,18
 00521A36    call        00405948
 00521A3B    mov         dword ptr [ebp-10],eax
 00521A3E    mov         eax,dword ptr [ebp-10]
 00521A41    mov         dword ptr [ebp-14],eax
 00521A44    call        004688F0
 00521A49    mov         eax,dword ptr [ebp-14]
 00521A4C    fstp        qword ptr [eax]
 00521A4E    wait
 00521A4F    lea         edx,[ebp-18]
 00521A52    lea         eax,[ebp-8]
 00521A55    call        0051F434
 00521A5A    mov         edx,dword ptr [ebp-18]
 00521A5D    mov         eax,dword ptr [ebp-14]
 00521A60    add         eax,8
 00521A63    call        @LStrAsg
 00521A68    lea         edx,[ebp-1C]
 00521A6B    lea         eax,[ebp-8]
 00521A6E    call        0051F434
 00521A73    mov         edx,dword ptr [ebp-1C]
 00521A76    mov         eax,dword ptr [ebp-14]
 00521A79    add         eax,0C
 00521A7C    call        @LStrAsg
 00521A81    mov         eax,dword ptr [ebp-14]
 00521A84    mov         edx,dword ptr [eax+0C]
 00521A87    mov         eax,dword ptr [ebp-4]
 00521A8A    call        0052174C
 00521A8F    mov         edx,dword ptr [ebp-14]
 00521A92    mov         byte ptr [edx+10],al
 00521A95    mov         eax,dword ptr [ebp-10]
 00521A98    mov         dword ptr [ebp-0C],eax
 00521A9B    xor         eax,eax
 00521A9D    pop         edx
 00521A9E    pop         ecx
 00521A9F    pop         ecx
 00521AA0    mov         dword ptr fs:[eax],edx
 00521AA3    push        521ABD
 00521AA8    lea         eax,[ebp-1C]
 00521AAB    mov         edx,2
 00521AB0    call        @LStrArrayClr
 00521AB5    ret
>00521AB6    jmp         @HandleFinally
>00521ABB    jmp         00521AA8
 00521ABD    mov         eax,dword ptr [ebp-0C]
 00521AC0    mov         esp,ebp
 00521AC2    pop         ebp
 00521AC3    ret
end;*}

//00521AC4
{*function sub_00521AC4(?:?; ?:?):?;
begin
 00521AC4    push        ebp
 00521AC5    mov         ebp,esp
 00521AC7    add         esp,0FFFFFFE8
 00521ACA    xor         ecx,ecx
 00521ACC    mov         dword ptr [ebp-18],ecx
 00521ACF    mov         dword ptr [ebp-8],edx
 00521AD2    mov         dword ptr [ebp-4],eax
 00521AD5    xor         eax,eax
 00521AD7    push        ebp
 00521AD8    push        521B5D
 00521ADD    push        dword ptr fs:[eax]
 00521AE0    mov         dword ptr fs:[eax],esp
 00521AE3    lea         eax,[ebp-8]
 00521AE6    mov         edx,7
 00521AEB    call        0051F5E4
 00521AF0    mov         edx,dword ptr ds:[521664];TOutgoingMessage
 00521AF6    mov         eax,10
 00521AFB    call        00405948
 00521B00    mov         dword ptr [ebp-10],eax
 00521B03    mov         eax,dword ptr [ebp-10]
 00521B06    mov         dword ptr [ebp-14],eax
 00521B09    call        004688F0
 00521B0E    mov         eax,dword ptr [ebp-14]
 00521B11    fstp        qword ptr [eax]
 00521B13    wait
 00521B14    lea         edx,[ebp-18]
 00521B17    lea         eax,[ebp-8]
 00521B1A    call        0051F434
 00521B1F    mov         edx,dword ptr [ebp-18]
 00521B22    mov         eax,dword ptr [ebp-14]
 00521B25    add         eax,8
 00521B28    call        @LStrAsg
 00521B2D    mov         eax,dword ptr [ebp-14]
 00521B30    mov         edx,dword ptr [eax+8]
 00521B33    mov         eax,dword ptr [ebp-4]
 00521B36    call        0052174C
 00521B3B    mov         edx,dword ptr [ebp-14]
 00521B3E    mov         byte ptr [edx+0C],al
 00521B41    mov         eax,dword ptr [ebp-10]
 00521B44    mov         dword ptr [ebp-0C],eax
 00521B47    xor         eax,eax
 00521B49    pop         edx
 00521B4A    pop         ecx
 00521B4B    pop         ecx
 00521B4C    mov         dword ptr fs:[eax],edx
 00521B4F    push        521B64
 00521B54    lea         eax,[ebp-18]
 00521B57    call        @LStrClr
 00521B5C    ret
>00521B5D    jmp         @HandleFinally
>00521B62    jmp         00521B54
 00521B64    mov         eax,dword ptr [ebp-0C]
 00521B67    mov         esp,ebp
 00521B69    pop         ebp
 00521B6A    ret
end;*}

//00521B6C
{*procedure sub_00521B6C(?:?);
begin
 00521B6C    push        ebp
 00521B6D    mov         ebp,esp
 00521B6F    push        ecx
 00521B70    mov         dword ptr [ebp-4],eax
 00521B73    mov         edx,dword ptr [ebp-4]
 00521B76    test        edx,edx
>00521B78    je          00521B7D
 00521B7A    sub         edx,0FFFFFFD8
 00521B7D    mov         eax,dword ptr [ebp-4]
 00521B80    mov         eax,dword ptr [eax+14]
 00521B83    call        00520620
 00521B88    mov         edx,dword ptr [ebp-4]
 00521B8B    test        edx,edx
>00521B8D    je          00521B92
 00521B8F    sub         edx,0FFFFFFD8
 00521B92    mov         eax,dword ptr [ebp-4]
 00521B95    mov         eax,dword ptr [eax+14]
 00521B98    call        005205C8
 00521B9D    pop         ecx
 00521B9E    pop         ebp
 00521B9F    ret
end;*}

//00521BA0
{*procedure sub_00521BA0(?:TChatManager; ?:?);
begin
 00521BA0    push        ebp
 00521BA1    mov         ebp,esp
 00521BA3    add         esp,0FFFFFFF4
 00521BA6    xor         ecx,ecx
 00521BA8    mov         dword ptr [ebp-0C],ecx
 00521BAB    mov         dword ptr [ebp-8],edx
 00521BAE    mov         dword ptr [ebp-4],eax
 00521BB1    mov         eax,dword ptr [ebp-8]
 00521BB4    call        @LStrAddRef
 00521BB9    xor         eax,eax
 00521BBB    push        ebp
 00521BBC    push        521C0E
 00521BC1    push        dword ptr fs:[eax]
 00521BC4    mov         dword ptr fs:[eax],esp
 00521BC7    lea         edx,[ebp-0C]
 00521BCA    mov         eax,dword ptr [ebp-8]
 00521BCD    call        00521120
 00521BD2    mov         eax,dword ptr [ebp-0C]
 00521BD5    call        @LStrLen
 00521BDA    mov         ecx,eax
 00521BDC    mov         edx,dword ptr [ebp-0C]
 00521BDF    mov         eax,dword ptr [ebp-4]
 00521BE2    mov         eax,dword ptr [eax+14]
 00521BE5    call        0051FDFC
 00521BEA    xor         eax,eax
 00521BEC    pop         edx
 00521BED    pop         ecx
 00521BEE    pop         ecx
 00521BEF    mov         dword ptr fs:[eax],edx
 00521BF2    push        521C15
 00521BF7    lea         eax,[ebp-0C]
 00521BFA    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00521C00    call        @DynArrayClear
 00521C05    lea         eax,[ebp-8]
 00521C08    call        @LStrClr
 00521C0D    ret
>00521C0E    jmp         @HandleFinally
>00521C13    jmp         00521BF7
 00521C15    mov         esp,ebp
 00521C17    pop         ebp
 00521C18    ret
end;*}

end.