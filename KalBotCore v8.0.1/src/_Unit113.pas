//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit113;

interface

uses
  SysUtils, Classes;

type
  TNPC = class(TInterfacedObject)
    constructor Create;//00521F0C
  end;
    //procedure sub_00521EC0(?:?);//00521EC0
    //procedure sub_00521FE8(?:?; ?:?; ?:?; ?:?);//00521FE8
    //procedure sub_005220C4(?:?; ?:?);//005220C4
    //function sub_005220DC(?:?; ?:?):?;//005220DC
    //function sub_00522174(?:?; ?:?):?;//00522174
    //procedure sub_005221A0(?:?; ?:?);//005221A0
    //procedure sub_005221B8(?:?);//005221B8
    //procedure sub_005221C4(?:?);//005221C4
    //procedure sub_005221DC(?:?);//005221DC
    //function sub_005221F4(?:?; ?:?):?;//005221F4
    //function sub_00522220(?:?; ?:?):?;//00522220
    //function sub_0052224C(?:?; ?:?):?;//0052224C
    //function sub_0052228C(?:?; ?:?):?;//0052228C
    //function sub_005222E8(?:TNPC):?;//005222E8

implementation

//00521EC0
{*procedure sub_00521EC0(?:?);
begin
 00521EC0    push        ebp
 00521EC1    mov         ebp,esp
 00521EC3    add         esp,0FFFFFFF8
 00521EC6    mov         dword ptr [ebp-4],eax
 00521EC9    mov         eax,dword ptr [ebp-4]
 00521ECC    mov         eax,dword ptr [eax+10]
 00521ECF    mov         eax,dword ptr [eax+8]
 00521ED2    dec         eax
 00521ED3    cmp         eax,0
>00521ED6    jl          00521EFC
 00521ED8    mov         dword ptr [ebp-8],eax
 00521EDB    mov         edx,dword ptr [ebp-8]
 00521EDE    mov         eax,dword ptr [ebp-4]
 00521EE1    mov         eax,dword ptr [eax+10]
 00521EE4    call        TList.Get
 00521EE9    mov         edx,24
 00521EEE    call        @FreeMem
 00521EF3    dec         dword ptr [ebp-8]
 00521EF6    cmp         dword ptr [ebp-8],0FFFFFFFF
>00521EFA    jne         00521EDB
 00521EFC    mov         eax,dword ptr [ebp-4]
 00521EFF    mov         eax,dword ptr [eax+10]
 00521F02    mov         edx,dword ptr [eax]
 00521F04    call        dword ptr [edx+8]
 00521F07    pop         ecx
 00521F08    pop         ecx
 00521F09    pop         ebp
 00521F0A    ret
end;*}

//00521F0C
constructor TNPC.Create;
begin
{*
 00521F0C    push        ebp
 00521F0D    mov         ebp,esp
 00521F0F    add         esp,0FFFFFFF4
 00521F12    test        dl,dl
>00521F14    je          00521F1E
 00521F16    add         esp,0FFFFFFF0
 00521F19    call        @ClassCreate
 00521F1E    mov         dword ptr [ebp-0C],ecx
 00521F21    mov         byte ptr [ebp-5],dl
 00521F24    mov         dword ptr [ebp-4],eax
 00521F27    xor         edx,edx
 00521F29    mov         eax,dword ptr [ebp-4]
 00521F2C    call        TObject.Create
 00521F31    mov         eax,dword ptr [ebp-4]
 00521F34    add         eax,14
 00521F37    push        eax
 00521F38    call        kernel32.InitializeCriticalSection
 00521F3D    mov         eax,dword ptr [ebp-4]
 00521F40    mov         edx,dword ptr [ebp-0C]
 00521F43    mov         dword ptr [eax+0C],edx
 00521F46    mov         dl,1
 00521F48    mov         eax,[004759C0];TList
 00521F4D    call        TObject.Create;TList.Create
 00521F52    mov         edx,dword ptr [ebp-4]
 00521F55    mov         dword ptr [edx+10],eax
 00521F58    push        3
 00521F5A    mov         ecx,54E578
 00521F5F    mov         edx,dword ptr [ebp-4]
 00521F62    test        edx,edx
>00521F64    je          00521F69
 00521F66    sub         edx,0FFFFFFD4
 00521F69    mov         eax,dword ptr [ebp-0C]
 00521F6C    call        005204E4
 00521F71    mov         eax,dword ptr [ebp-4]
 00521F74    cmp         byte ptr [ebp-5],0
>00521F78    je          00521F89
 00521F7A    call        @AfterConstruction
 00521F7F    pop         dword ptr fs:[0]
 00521F86    add         esp,0C
 00521F89    mov         eax,dword ptr [ebp-4]
 00521F8C    mov         esp,ebp
 00521F8E    pop         ebp
 00521F8F    ret
*}
end;

//00521FE8
{*procedure sub_00521FE8(?:?; ?:?; ?:?; ?:?);
begin
 00521FE8    push        ebp
 00521FE9    mov         ebp,esp
 00521FEB    add         esp,0FFFFFFF0
 00521FEE    mov         dword ptr [ebp-0C],ecx
 00521FF1    mov         byte ptr [ebp-5],dl
 00521FF4    mov         dword ptr [ebp-4],eax
 00521FF7    mov         al,byte ptr [ebp+0C]
 00521FFA    sub         al,1
>00521FFC    jae         005220BE
 00522002    xor         eax,eax
 00522004    mov         al,byte ptr [ebp-5]
 00522007    sub         ax,55
>0052200B    je          00522080
 0052200D    sub         ax,33
>00522011    je          005220A0
 00522017    sub         ax,13
>0052201B    je          00522028
 0052201D    sub         ax,16
>00522021    je          00522052
>00522023    jmp         005220BE
 00522028    mov         eax,dword ptr [ebp-4]
 0052202B    call        005221C4
 00522030    mov         eax,dword ptr [ebp-0C]
 00522033    mov         edx,dword ptr [eax+4]
 00522036    mov         eax,dword ptr [ebp-4]
 00522039    call        005220DC
 0052203E    mov         edx,eax
 00522040    mov         eax,dword ptr [ebp-4]
 00522043    call        005221F4
 00522048    mov         eax,dword ptr [ebp-4]
 0052204B    call        005221DC
>00522050    jmp         005220BE
 00522052    mov         eax,dword ptr [ebp-0C]
 00522055    mov         edx,dword ptr [eax+4]
 00522058    mov         eax,dword ptr [ebp-4]
 0052205B    call        00522174
 00522060    mov         dword ptr [ebp-10],eax
 00522063    mov         eax,dword ptr [ebp-4]
 00522066    call        005221C4
 0052206B    mov         edx,dword ptr [ebp-10]
 0052206E    mov         eax,dword ptr [ebp-4]
 00522071    call        00522220
 00522076    mov         eax,dword ptr [ebp-4]
 00522079    call        005221DC
>0052207E    jmp         005220BE
 00522080    mov         eax,dword ptr [ebp-4]
 00522083    call        005221C4
 00522088    mov         eax,dword ptr [ebp-0C]
 0052208B    mov         edx,dword ptr [eax+4]
 0052208E    mov         eax,dword ptr [ebp-4]
 00522091    call        005221A0
 00522096    mov         eax,dword ptr [ebp-4]
 00522099    call        005221DC
>0052209E    jmp         005220BE
 005220A0    mov         eax,dword ptr [ebp-4]
 005220A3    call        005221C4
 005220A8    mov         eax,dword ptr [ebp-0C]
 005220AB    mov         edx,dword ptr [eax+4]
 005220AE    mov         eax,dword ptr [ebp-4]
 005220B1    call        005220C4
 005220B6    mov         eax,dword ptr [ebp-4]
 005220B9    call        005221DC
 005220BE    mov         esp,ebp
 005220C0    pop         ebp
 005220C1    ret         8
end;*}

//005220C4
{*procedure sub_005220C4(?:?; ?:?);
begin
 005220C4    push        ebp
 005220C5    mov         ebp,esp
 005220C7    add         esp,0FFFFFFF8
 005220CA    mov         dword ptr [ebp-8],edx
 005220CD    mov         dword ptr [ebp-4],eax
 005220D0    mov         eax,dword ptr [ebp-4]
 005220D3    call        00521EC0
 005220D8    pop         ecx
 005220D9    pop         ecx
 005220DA    pop         ebp
 005220DB    ret
end;*}

//005220DC
{*function sub_005220DC(?:?; ?:?):?;
begin
 005220DC    push        ebp
 005220DD    mov         ebp,esp
 005220DF    add         esp,0FFFFFFF0
 005220E2    mov         dword ptr [ebp-8],edx
 005220E5    mov         dword ptr [ebp-4],eax
 005220E8    mov         eax,24
 005220ED    call        @GetMem
 005220F2    mov         dword ptr [ebp-10],eax
 005220F5    lea         eax,[ebp-8]
 005220F8    mov         edx,3
 005220FD    call        0051F5E4
 00522102    lea         eax,[ebp-8]
 00522105    call        0051F3CC
 0052210A    mov         edx,dword ptr [ebp-10]
 0052210D    mov         dword ptr [edx],eax
 0052210F    lea         eax,[ebp-8]
 00522112    call        0051F398
 00522117    mov         edx,dword ptr [ebp-10]
 0052211A    mov         word ptr [edx+4],ax
 0052211E    lea         eax,[ebp-8]
 00522121    call        0051F338
 00522126    mov         edx,dword ptr [ebp-10]
 00522129    mov         byte ptr [edx+6],al
 0052212C    lea         eax,[ebp-8]
 0052212F    call        0051F3CC
 00522134    mov         edx,dword ptr [ebp-10]
 00522137    mov         dword ptr [edx+0C],eax
 0052213A    lea         eax,[ebp-8]
 0052213D    call        0051F3CC
 00522142    mov         edx,dword ptr [ebp-10]
 00522145    mov         dword ptr [edx+10],eax
 00522148    lea         eax,[ebp-8]
 0052214B    call        0051F3CC
 00522150    mov         edx,dword ptr [ebp-10]
 00522153    mov         dword ptr [edx+14],eax
 00522156    lea         eax,[ebp-8]
 00522159    call        0051F398
 0052215E    mov         edx,dword ptr [ebp-10]
 00522161    mov         word ptr [edx+18],ax
 00522165    mov         eax,dword ptr [ebp-10]
 00522168    mov         dword ptr [ebp-0C],eax
 0052216B    mov         eax,dword ptr [ebp-0C]
 0052216E    mov         esp,ebp
 00522170    pop         ebp
 00522171    ret
end;*}

//00522174
{*function sub_00522174(?:?; ?:?):?;
begin
 00522174    push        ebp
 00522175    mov         ebp,esp
 00522177    add         esp,0FFFFFFF4
 0052217A    mov         dword ptr [ebp-8],edx
 0052217D    mov         dword ptr [ebp-4],eax
 00522180    lea         eax,[ebp-8]
 00522183    mov         edx,3
 00522188    call        0051F5E4
 0052218D    lea         eax,[ebp-8]
 00522190    call        0051F3CC
 00522195    mov         dword ptr [ebp-0C],eax
 00522198    mov         eax,dword ptr [ebp-0C]
 0052219B    mov         esp,ebp
 0052219D    pop         ebp
 0052219E    ret
end;*}

//005221A0
{*procedure sub_005221A0(?:?; ?:?);
begin
 005221A0    push        ebp
 005221A1    mov         ebp,esp
 005221A3    add         esp,0FFFFFFF8
 005221A6    mov         dword ptr [ebp-8],edx
 005221A9    mov         dword ptr [ebp-4],eax
 005221AC    mov         eax,dword ptr [ebp-4]
 005221AF    call        00521EC0
 005221B4    pop         ecx
 005221B5    pop         ecx
 005221B6    pop         ebp
 005221B7    ret
end;*}

//005221B8
{*procedure sub_005221B8(?:?);
begin
 005221B8    push        ebp
 005221B9    mov         ebp,esp
 005221BB    push        ecx
 005221BC    mov         dword ptr [ebp-4],eax
 005221BF    pop         ecx
 005221C0    pop         ebp
 005221C1    ret
end;*}

//005221C4
{*procedure sub_005221C4(?:?);
begin
 005221C4    push        ebp
 005221C5    mov         ebp,esp
 005221C7    push        ecx
 005221C8    mov         dword ptr [ebp-4],eax
 005221CB    mov         eax,dword ptr [ebp-4]
 005221CE    add         eax,14
 005221D1    push        eax
 005221D2    call        kernel32.EnterCriticalSection
 005221D7    pop         ecx
 005221D8    pop         ebp
 005221D9    ret
end;*}

//005221DC
{*procedure sub_005221DC(?:?);
begin
 005221DC    push        ebp
 005221DD    mov         ebp,esp
 005221DF    push        ecx
 005221E0    mov         dword ptr [ebp-4],eax
 005221E3    mov         eax,dword ptr [ebp-4]
 005221E6    add         eax,14
 005221E9    push        eax
 005221EA    call        kernel32.LeaveCriticalSection
 005221EF    pop         ecx
 005221F0    pop         ebp
 005221F1    ret
end;*}

//005221F4
{*function sub_005221F4(?:?; ?:?):?;
begin
 005221F4    push        ebp
 005221F5    mov         ebp,esp
 005221F7    add         esp,0FFFFFFF4
 005221FA    mov         dword ptr [ebp-8],edx
 005221FD    mov         dword ptr [ebp-4],eax
 00522200    mov         byte ptr [ebp-9],0
 00522204    cmp         dword ptr [ebp-8],0
>00522208    je          00522218
 0052220A    mov         edx,dword ptr [ebp-8]
 0052220D    mov         eax,dword ptr [ebp-4]
 00522210    mov         eax,dword ptr [eax+10]
 00522213    call        TList.Add
 00522218    mov         al,byte ptr [ebp-9]
 0052221B    mov         esp,ebp
 0052221D    pop         ebp
 0052221E    ret
end;*}

//00522220
{*function sub_00522220(?:?; ?:?):?;
begin
 00522220    push        ebp
 00522221    mov         ebp,esp
 00522223    add         esp,0FFFFFFF4
 00522226    mov         dword ptr [ebp-8],edx
 00522229    mov         dword ptr [ebp-4],eax
 0052222C    mov         edx,dword ptr [ebp-8]
 0052222F    mov         eax,dword ptr [ebp-4]
 00522232    call        0052228C
 00522237    mov         edx,eax
 00522239    mov         eax,dword ptr [ebp-4]
 0052223C    call        0052224C
 00522241    mov         byte ptr [ebp-9],al
 00522244    mov         al,byte ptr [ebp-9]
 00522247    mov         esp,ebp
 00522249    pop         ebp
 0052224A    ret
end;*}

//0052224C
{*function sub_0052224C(?:?; ?:?):?;
begin
 0052224C    push        ebp
 0052224D    mov         ebp,esp
 0052224F    add         esp,0FFFFFFF4
 00522252    mov         dword ptr [ebp-8],edx
 00522255    mov         dword ptr [ebp-4],eax
 00522258    mov         byte ptr [ebp-9],0
 0052225C    cmp         dword ptr [ebp-8],0
>00522260    je          00522285
 00522262    mov         edx,dword ptr [ebp-8]
 00522265    mov         eax,dword ptr [ebp-4]
 00522268    mov         eax,dword ptr [eax+10]
 0052226B    call        00478AC4
 00522270    test        eax,eax
>00522272    jl          00522285
 00522274    mov         edx,24
 00522279    mov         eax,dword ptr [ebp-8]
 0052227C    call        @FreeMem
 00522281    mov         byte ptr [ebp-9],1
 00522285    mov         al,byte ptr [ebp-9]
 00522288    mov         esp,ebp
 0052228A    pop         ebp
 0052228B    ret
end;*}

//0052228C
{*function sub_0052228C(?:?; ?:?):?;
begin
 0052228C    push        ebp
 0052228D    mov         ebp,esp
 0052228F    add         esp,0FFFFFFE8
 00522292    mov         dword ptr [ebp-8],edx
 00522295    mov         dword ptr [ebp-4],eax
 00522298    xor         eax,eax
 0052229A    mov         dword ptr [ebp-0C],eax
 0052229D    mov         eax,dword ptr [ebp-4]
 005222A0    mov         eax,dword ptr [eax+10]
 005222A3    mov         eax,dword ptr [eax+8]
 005222A6    dec         eax
 005222A7    test        eax,eax
>005222A9    jl          005222E1
 005222AB    inc         eax
 005222AC    mov         dword ptr [ebp-18],eax
 005222AF    mov         dword ptr [ebp-10],0
 005222B6    mov         eax,dword ptr [ebp-4]
 005222B9    mov         eax,dword ptr [eax+10]
 005222BC    mov         edx,dword ptr [ebp-10]
 005222BF    call        TList.Get
 005222C4    mov         dword ptr [ebp-14],eax
 005222C7    mov         eax,dword ptr [ebp-14]
 005222CA    mov         eax,dword ptr [eax]
 005222CC    cmp         eax,dword ptr [ebp-8]
>005222CF    jne         005222D9
 005222D1    mov         eax,dword ptr [ebp-14]
 005222D4    mov         dword ptr [ebp-0C],eax
>005222D7    jmp         005222E1
 005222D9    inc         dword ptr [ebp-10]
 005222DC    dec         dword ptr [ebp-18]
>005222DF    jne         005222B6
 005222E1    mov         eax,dword ptr [ebp-0C]
 005222E4    mov         esp,ebp
 005222E6    pop         ebp
 005222E7    ret
end;*}

//005222E8
{*function sub_005222E8(?:TNPC):?;
begin
 005222E8    push        ebp
 005222E9    mov         ebp,esp
 005222EB    add         esp,0FFFFFFF0
 005222EE    mov         dword ptr [ebp-4],eax
 005222F1    xor         eax,eax
 005222F3    mov         dword ptr [ebp-8],eax
 005222F6    mov         eax,dword ptr [ebp-4]
 005222F9    mov         eax,dword ptr [eax+10]
 005222FC    mov         eax,dword ptr [eax+8]
 005222FF    dec         eax
 00522300    test        eax,eax
>00522302    jl          0052233E
 00522304    inc         eax
 00522305    mov         dword ptr [ebp-10],eax
 00522308    mov         dword ptr [ebp-0C],0
 0052230F    mov         eax,dword ptr [ebp-4]
 00522312    mov         eax,dword ptr [eax+10]
 00522315    mov         edx,dword ptr [ebp-0C]
 00522318    call        TList.Get
 0052231D    cmp         byte ptr [eax+6],0A
>00522321    jne         00522336
 00522323    mov         eax,dword ptr [ebp-4]
 00522326    mov         eax,dword ptr [eax+10]
 00522329    mov         edx,dword ptr [ebp-0C]
 0052232C    call        TList.Get
 00522331    mov         dword ptr [ebp-8],eax
>00522334    jmp         0052233E
 00522336    inc         dword ptr [ebp-0C]
 00522339    dec         dword ptr [ebp-10]
>0052233C    jne         0052230F
 0052233E    mov         eax,dword ptr [ebp-8]
 00522341    mov         esp,ebp
 00522343    pop         ebp
 00522344    ret
end;*}

end.