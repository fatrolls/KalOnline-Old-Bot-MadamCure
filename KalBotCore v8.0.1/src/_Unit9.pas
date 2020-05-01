//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit9;

interface

uses
  SysUtils, Classes;

type
  _Unit99_01 = .01 = record//size=34
f0:String;//f0
end;;
  _DynArr_9_11 = array of _Unit99_01;
//elSize = 34;
    //function sub_004173E4(?:?; ?:?; ?:?; ?:?):?;//004173E4
    //function sub_00417424(?:Integer; ?:?; ?:?; ?:?; ?:?):?;//00417424
    //procedure sub_00417478(?:?; ?:?);//00417478
    //procedure sub_00417490(?:?; ?:?);//00417490
    //procedure sub_004175E0(?:?; ?:?);//004175E0
    //procedure sub_00417680(?:?; ?:?);//00417680
    //function sub_00417794(?:Pointer; ?:?):?;//00417794
    //function sub_00417908(?:?; ?:?; ?:?; ?:?):?;//00417908
    //procedure sub_0041797C(?:Pointer; ?:?);//0041797C
    procedure sub_00417AE8(?:Pointer);//00417AE8
    //procedure sub_00417B54(?:?; ?:?);//00417B54
    //function sub_00417BD0(?:?; ?:?):?;//00417BD0
    //procedure sub_00417BF4(?:?; ?:?; ?:?);//00417BF4
    //procedure sub_00417C60(?:?; ?:?; ?:?);//00417C60
    //procedure sub_00417D50(?:?; ?:?);//00417D50
    //procedure sub_00417F3C(?:?; ?:?);//00417F3C
    //procedure sub_00418184(?:?);//00418184
    //procedure sub_004181E8(?:?; ?:?; ?:?);//004181E8
    //procedure sub_00418278(?:?; ?:?; ?:?);//00418278
    //procedure sub_00418418(?:?; ?:?; ?:?; ?:?);//00418418
    //procedure sub_004184C4(?:?; ?:?; ?:?);//004184C4
    //function sub_004185CC(?:?):?;//004185CC
    //procedure sub_00418640(?:?; ?:?; ?:?; ?:?);//00418640
    //procedure sub_004186DC(?:?; ?:?; ?:?; ?:?);//004186DC
    //procedure sub_0041872C(?:?; ?:?; ?:?);//0041872C
    //function sub_0041887C(?:?; ?:?; ?:?; ?:?):?;//0041887C
    procedure sub_004189B4(?:Pointer);//004189B4
    //function sub_004189F8(?:Pointer; ?:?; ?:?):Boolean;//004189F8
    //procedure sub_00418A88(?:Pointer; ?:?; ?:?);//00418A88
    //procedure sub_00418ACC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00418ACC
    //procedure sub_00419020(?:Byte; ?:?);//00419020
    //procedure sub_00419174(?:Byte; ?:?);//00419174
    //procedure sub_00419248(?:Byte; ?:?);//00419248
    //procedure sub_0041932C(?:?);//0041932C
    //function sub_00419404(?:?; ?:?; ?:?):?;//00419404
    //procedure sub_00419488(?:?);//00419488
    //function sub_0041954C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0041954C
    //function sub_004197F4(?:?; ?:?; ?:?; ?:?):?;//004197F4
    //function sub_00419828(?:?; ?:?):?;//00419828
    //function sub_004198C0(?:?; ?:?; ?:?; ?:?):?;//004198C0
    //function sub_00419F54(?:Integer; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00419F54
    //function sub_0041A34C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0041A34C
    //function sub_0041A3F0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0041A3F0
    //function sub_0041A524(?:?; ?:?; ?:?; ?:?):?;//0041A524
    //function sub_0041A6EC(?:?; ?:?):?;//0041A6EC
    //function sub_0041A780(?:?; ?:Byte; ?:?):?;//0041A780
    procedure sub_0041B110(?:Pointer);//0041B110
    //function sub_0041B150(?:Byte; ?:?):?;//0041B150
    //procedure sub_0041B20C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0041B20C
    //function sub_0041B3F8(?:Pointer; ?:Pointer; ?:Integer; ?:?):?;//0041B3F8
    //function sub_0041B42C(?:?; ?:?; ?:?; ?:?):?;//0041B42C
    //procedure sub_0041B460(?:?; ?:?);//0041B460
    //function sub_0041B4EC(?:?; ?:PChar; ?:Integer):?;//0041B4EC
    //function sub_0041B554(?:WideString; ?:?; ?:?; ?:?):?;//0041B554

implementation

//004173E4
{*function sub_004173E4(?:?; ?:?; ?:?; ?:?):?;
begin
 004173E4    push        ebp
 004173E5    mov         ebp,esp
 004173E7    add         esp,0FFFFFFF8
 004173EA    mov         eax,dword ptr [ebp+10]
 004173ED    mov         edx,dword ptr [ebp+14]
 004173F0    cmp         edx,dword ptr [ebp+0C]
>004173F3    jne         004173FC
 004173F5    cmp         eax,dword ptr [ebp+8]
>004173F8    jae         0041740C
>004173FA    jmp         004173FE
>004173FC    jge         0041740C
 004173FE    mov         eax,dword ptr [ebp+10]
 00417401    mov         dword ptr [ebp-8],eax
 00417404    mov         eax,dword ptr [ebp+14]
 00417407    mov         dword ptr [ebp-4],eax
>0041740A    jmp         00417418
 0041740C    mov         eax,dword ptr [ebp+8]
 0041740F    mov         dword ptr [ebp-8],eax
 00417412    mov         eax,dword ptr [ebp+0C]
 00417415    mov         dword ptr [ebp-4],eax
 00417418    mov         eax,dword ptr [ebp-8]
 0041741B    mov         edx,dword ptr [ebp-4]
 0041741E    pop         ecx
 0041741F    pop         ecx
 00417420    pop         ebp
 00417421    ret         10
end;*}

//00417424
{*function sub_00417424(?:Integer; ?:?; ?:?; ?:?; ?:?):?;
begin
 00417424    push        ebp
 00417425    mov         ebp,esp
 00417427    push        ebx
 00417428    push        esi
 00417429    push        edi
 0041742A    mov         ebx,ecx
 0041742C    mov         edi,edx
 0041742E    mov         esi,eax
 00417430    push        0
 00417432    call        kernel32.SetLastError
 00417437    push        edi
 00417438    lea         eax,[ebp+0C]
 0041743B    push        eax
 0041743C    mov         eax,dword ptr [ebp+8]
 0041743F    push        eax
 00417440    push        esi
 00417441    call        kernel32.SetFilePointer
 00417446    mov         dword ptr [ebp+8],eax
 00417449    cmp         dword ptr [ebp+8],0FFFFFFFF
>0041744D    jne         0041745C
 0041744F    call        kernel32.GetLastError
 00417454    test        eax,eax
>00417456    je          0041745C
 00417458    xor         eax,eax
>0041745A    jmp         0041745E
 0041745C    mov         al,1
 0041745E    test        al,al
>00417460    je          00417471
 00417462    test        ebx,ebx
>00417464    je          00417471
 00417466    mov         edx,dword ptr [ebp+8]
 00417469    mov         dword ptr [ebx],edx
 0041746B    mov         edx,dword ptr [ebp+0C]
 0041746E    mov         dword ptr [ebx+4],edx
 00417471    pop         edi
 00417472    pop         esi
 00417473    pop         ebx
 00417474    pop         ebp
 00417475    ret         8
end;*}

//00417478
{*procedure sub_00417478(?:?; ?:?);
begin
 00417478    push        ebp
 00417479    mov         ebp,esp
 0041747B    push        ecx
 0041747C    mov         ecx,dword ptr [ebp+8]
 0041747F    push        ecx
 00417480    mov         ecx,dword ptr [ebp+0C]
 00417483    push        ecx
 00417484    push        edx
 00417485    push        eax
 00417486    call        kernel32.MapViewOfFile
 0041748B    pop         ebp
 0041748C    ret         8
end;*}

//00417490
{*procedure sub_00417490(?:?; ?:?);
begin
 00417490    push        ebp
 00417491    mov         ebp,esp
 00417493    push        ecx
 00417494    push        ebx
 00417495    push        esi
 00417496    mov         ebx,eax
 00417498    mov         eax,dword ptr [ebp+8]
 0041749B    cmp         dword ptr [eax-4],0
>0041749F    je          004175DA
 004174A5    mov         eax,dword ptr [ebp+8]
 004174A8    cmp         dword ptr [eax+20],0
>004174AC    je          004174B8
 004174AE    cmp         dword ptr [ebx+4],0
>004174B2    jne         004175DA
 004174B8    mov         eax,dword ptr [ebp+8]
 004174BB    cmp         dword ptr [eax-8],0
>004174BF    je          004174DE
 004174C1    mov         eax,dword ptr [ebp+8]
 004174C4    cmp         dword ptr [eax+20],0
>004174C8    je          004174DE
 004174CA    mov         eax,dword ptr [ebp+8]
 004174CD    mov         eax,dword ptr [eax+20]
 004174D0    push        eax
 004174D1    call        kernel32.UnmapViewOfFile
 004174D6    mov         eax,dword ptr [ebp+8]
 004174D9    xor         edx,edx
 004174DB    mov         dword ptr [eax+20],edx
 004174DE    push        0
 004174E0    push        100000
 004174E5    mov         eax,dword ptr [ebp+8]
 004174E8    mov         edx,dword ptr [eax+18]
 004174EB    mov         eax,dword ptr [eax+14]
 004174EE    sub         eax,dword ptr [ebx+8]
 004174F1    sbb         edx,dword ptr [ebx+0C]
 004174F4    push        edx
 004174F5    push        eax
 004174F6    call        004173E4
 004174FB    mov         esi,eax
 004174FD    mov         dword ptr [ebx+4],esi
 00417500    test        esi,esi
>00417502    je          004175DA
 00417508    mov         eax,dword ptr [ebp+8]
 0041750B    cmp         dword ptr [eax-8],0
>0041750F    jne         0041758D
 00417511    mov         eax,dword ptr [ebp+8]
 00417514    cmp         dword ptr [eax-0C],0
>00417518    jne         00417533
 0041751A    push        4
 0041751C    push        1000
 00417521    push        100000
 00417526    push        0
 00417528    call        kernel32.VirtualAlloc
 0041752D    mov         edx,dword ptr [ebp+8]
 00417530    mov         dword ptr [edx-0C],eax
 00417533    push        dword ptr [ebx+0C]
 00417536    push        dword ptr [ebx+8]
 00417539    mov         eax,dword ptr [ebp+8]
 0041753C    mov         eax,dword ptr [eax-4]
 0041753F    xor         ecx,ecx
 00417541    xor         edx,edx
 00417543    call        00417424
 00417548    test        al,al
>0041754A    je          00417583
 0041754C    push        0
 0041754E    lea         eax,[ebp-4]
 00417551    push        eax
 00417552    mov         eax,dword ptr [ebx+4]
 00417555    push        eax
 00417556    mov         eax,dword ptr [ebp+8]
 00417559    mov         eax,dword ptr [eax-0C]
 0041755C    push        eax
 0041755D    mov         eax,dword ptr [ebp+8]
 00417560    mov         eax,dword ptr [eax-4]
 00417563    push        eax
 00417564    call        kernel32.ReadFile
 00417569    test        eax,eax
>0041756B    je          00417583
 0041756D    mov         eax,dword ptr [ebx+4]
 00417570    cmp         eax,dword ptr [ebp-4]
>00417573    jne         00417583
 00417575    mov         eax,dword ptr [ebp+8]
 00417578    mov         eax,dword ptr [eax-0C]
 0041757B    mov         edx,dword ptr [ebp+8]
 0041757E    mov         dword ptr [edx+20],eax
>00417581    jmp         004175AB
 00417583    mov         eax,dword ptr [ebp+8]
 00417586    xor         edx,edx
 00417588    mov         dword ptr [eax+20],edx
>0041758B    jmp         004175AB
 0041758D    push        dword ptr [ebx+0C]
 00417590    push        dword ptr [ebx+8]
 00417593    mov         ecx,esi
 00417595    mov         eax,dword ptr [ebp+8]
 00417598    mov         eax,dword ptr [eax-8]
 0041759B    mov         edx,4
 004175A0    call        00417478
 004175A5    mov         edx,dword ptr [ebp+8]
 004175A8    mov         dword ptr [edx+20],eax
 004175AB    mov         eax,dword ptr [ebp+8]
 004175AE    mov         eax,dword ptr [eax+20]
 004175B1    mov         dword ptr [ebx],eax
 004175B3    mov         eax,dword ptr [ebp+8]
 004175B6    cmp         dword ptr [eax+8],0
>004175BA    je          004175DA
 004175BC    mov         ecx,dword ptr [ebx+4]
 004175BF    mov         eax,dword ptr [ebp+8]
 004175C2    mov         edx,dword ptr [eax+20]
 004175C5    mov         eax,dword ptr [ebp+8]
 004175C8    mov         eax,dword ptr [eax+8]
 004175CB    mov         eax,dword ptr [eax]
 004175CD    call        0041B4EC
 004175D2    mov         edx,dword ptr [ebp+8]
 004175D5    mov         edx,dword ptr [edx+8]
 004175D8    mov         dword ptr [edx],eax
 004175DA    pop         esi
 004175DB    pop         ebx
 004175DC    pop         ecx
 004175DD    pop         ebp
 004175DE    ret
end;*}

//004175E0
{*procedure sub_004175E0(?:?; ?:?);
begin
 004175E0    push        ebp
 004175E1    mov         ebp,esp
 004175E3    push        ecx
 004175E4    push        ebx
 004175E5    mov         ebx,eax
 004175E7    mov         eax,dword ptr [ebp+8]
 004175EA    cmp         dword ptr [eax-10],0
>004175EE    je          0041765D
 004175F0    mov         eax,dword ptr [ebp+8]
 004175F3    cmp         dword ptr [eax+28],0
>004175F7    jne         0041765D
 004175F9    cmp         dword ptr [ebx+1C],0
>004175FD    jne         00417607
 004175FF    cmp         dword ptr [ebx+18],0
>00417603    jbe         0041765D
>00417605    jmp         00417609
>00417607    jle         0041765D
 00417609    push        0
 0041760B    push        100000
 00417610    mov         eax,dword ptr [ebx+18]
 00417613    mov         edx,dword ptr [ebx+1C]
 00417616    call        @_llmod
 0041761B    mov         ebx,eax
 0041761D    test        ebx,ebx
>0041761F    jne         00417626
 00417621    mov         ebx,100000
 00417626    push        0
 00417628    lea         eax,[ebp-4]
 0041762B    push        eax
 0041762C    push        ebx
 0041762D    mov         eax,dword ptr [ebp+8]
 00417630    mov         eax,dword ptr [eax-14]
 00417633    push        eax
 00417634    mov         eax,dword ptr [ebp+8]
 00417637    mov         eax,dword ptr [eax-10]
 0041763A    push        eax
 0041763B    call        kernel32.WriteFile
 00417640    test        eax,eax
>00417642    je          00417649
 00417644    cmp         ebx,dword ptr [ebp-4]
>00417647    je          0041765D
 00417649    mov         edx,41766C;'Stream write error.'
 0041764E    mov         eax,[004087A8];MadException
 00417653    call        00408814
 00417658    call        @RaiseExcept
 0041765D    pop         ebx
 0041765E    pop         ecx
 0041765F    pop         ebp
 00417660    ret
end;*}

//00417680
{*procedure sub_00417680(?:?; ?:?);
begin
 00417680    push        ebp
 00417681    mov         ebp,esp
 00417683    push        ebx
 00417684    push        esi
 00417685    mov         ebx,eax
 00417687    mov         eax,dword ptr [ebp+8]
 0041768A    cmp         dword ptr [eax-10],0
>0041768E    je          0041778E
 00417694    mov         eax,dword ptr [ebp+8]
 00417697    cmp         dword ptr [eax+1C],0
>0041769B    je          004176A7
 0041769D    cmp         dword ptr [ebx+14],0
>004176A1    jne         0041778E
 004176A7    mov         eax,dword ptr [ebp+8]
 004176AA    push        eax
 004176AB    mov         eax,ebx
 004176AD    call        004175E0
 004176B2    pop         ecx
 004176B3    mov         eax,dword ptr [ebp+8]
 004176B6    cmp         dword ptr [eax+28],0
>004176BA    je          004176D9
 004176BC    mov         eax,dword ptr [ebp+8]
 004176BF    cmp         dword ptr [eax+1C],0
>004176C3    je          004176D9
 004176C5    mov         eax,dword ptr [ebp+8]
 004176C8    mov         eax,dword ptr [eax+1C]
 004176CB    push        eax
 004176CC    call        kernel32.UnmapViewOfFile
 004176D1    mov         eax,dword ptr [ebp+8]
 004176D4    xor         edx,edx
 004176D6    mov         dword ptr [eax+1C],edx
 004176D9    push        0
 004176DB    push        100000
 004176E0    mov         eax,dword ptr [ebp+8]
 004176E3    mov         edx,dword ptr [eax+10]
 004176E6    mov         eax,dword ptr [eax+0C]
 004176E9    sub         eax,dword ptr [ebx+18]
 004176EC    sbb         edx,dword ptr [ebx+1C]
 004176EF    push        edx
 004176F0    push        eax
 004176F1    call        004173E4
 004176F6    mov         esi,eax
 004176F8    mov         dword ptr [ebx+14],esi
 004176FB    test        esi,esi
>004176FD    je          0041778E
 00417703    mov         eax,dword ptr [ebp+8]
 00417706    cmp         dword ptr [eax+28],0
>0041770A    jne         0041773C
 0041770C    mov         eax,dword ptr [ebp+8]
 0041770F    cmp         dword ptr [eax-14],0
>00417713    jne         0041772E
 00417715    push        4
 00417717    push        1000
 0041771C    push        100000
 00417721    push        0
 00417723    call        kernel32.VirtualAlloc
 00417728    mov         edx,dword ptr [ebp+8]
 0041772B    mov         dword ptr [edx-14],eax
 0041772E    mov         eax,dword ptr [ebp+8]
 00417731    mov         eax,dword ptr [eax-14]
 00417734    mov         edx,dword ptr [ebp+8]
 00417737    mov         dword ptr [edx+1C],eax
>0041773A    jmp         0041775A
 0041773C    push        dword ptr [ebx+1C]
 0041773F    push        dword ptr [ebx+18]
 00417742    mov         ecx,esi
 00417744    mov         eax,dword ptr [ebp+8]
 00417747    mov         eax,dword ptr [eax+28]
 0041774A    mov         edx,0F001F
 0041774F    call        00417478
 00417754    mov         edx,dword ptr [ebp+8]
 00417757    mov         dword ptr [edx+1C],eax
 0041775A    mov         eax,dword ptr [ebp+8]
 0041775D    mov         eax,dword ptr [eax+1C]
 00417760    mov         dword ptr [ebx+10],eax
 00417763    cmp         dword ptr [ebx+1C],0
>00417767    jne         0041778E
 00417769    cmp         dword ptr [ebx+18],0
>0041776D    jne         0041778E
 0041776F    mov         eax,dword ptr [ebp+8]
 00417772    mov         eax,dword ptr [eax+24]
 00417775    cdq
 00417776    mov         dword ptr [ebx+18],eax
 00417779    mov         dword ptr [ebx+1C],edx
 0041777C    mov         eax,dword ptr [ebp+8]
 0041777F    mov         eax,dword ptr [eax+24]
 00417782    add         dword ptr [ebx+10],eax
 00417785    mov         eax,dword ptr [ebp+8]
 00417788    mov         eax,dword ptr [eax+24]
 0041778B    sub         dword ptr [ebx+14],eax
 0041778E    pop         esi
 0041778F    pop         ebx
 00417790    pop         ebp
 00417791    ret
end;*}

//00417794
{*function sub_00417794(?:Pointer; ?:?):?;
begin
 00417794    push        ebp
 00417795    mov         ebp,esp
 00417797    add         esp,0FFFFFFE0
 0041779A    push        ebx
 0041779B    push        esi
 0041779C    push        edi
 0041779D    mov         dword ptr [ebp-4],8
 004177A4    mov         ecx,dword ptr [eax+54]
 004177A7    mov         ebx,dword ptr [eax+20]
 004177AA    lea         esi,[ebx+ecx]
 004177AD    mov         ebx,dword ptr [eax+60]
 004177B0    mov         dword ptr [ebp-8],ebx
 004177B3    mov         dword ptr [ebp-0C],10
 004177BA    mov         edi,dword ptr [eax+14]
 004177BD    sub         edi,106
 004177C3    cmp         edi,ecx
>004177C5    jae         004177D0
 004177C7    mov         ebx,ecx
 004177C9    sub         ebx,edi
 004177CB    mov         dword ptr [ebp-10],ebx
>004177CE    jmp         004177D5
 004177D0    xor         ebx,ebx
 004177D2    mov         dword ptr [ebp-10],ebx
 004177D5    mov         ebx,dword ptr [eax+28]
 004177D8    mov         dword ptr [ebp-14],ebx
 004177DB    mov         ebx,dword ptr [eax+1C]
 004177DE    mov         dword ptr [ebp-18],ebx
 004177E1    mov         ebx,dword ptr [eax+20]
 004177E4    lea         ecx,[ebx+ecx+102]
 004177EB    mov         dword ptr [ebp-1C],ecx
 004177EE    mov         ecx,dword ptr [ebp-8]
 004177F1    mov         cl,byte ptr [esi+ecx-1]
 004177F5    mov         byte ptr [ebp-1D],cl
 004177F8    mov         ecx,dword ptr [ebp-8]
 004177FB    mov         cl,byte ptr [esi+ecx]
 004177FE    mov         byte ptr [ebp-1E],cl
 00417801    cmp         dword ptr [eax+60],4
>00417805    jb          0041780B
 00417807    shr         dword ptr [ebp-4],2
 0041780B    mov         ecx,dword ptr [eax+5C]
 0041780E    cmp         ecx,dword ptr [ebp-0C]
>00417811    jae         00417816
 00417813    mov         dword ptr [ebp-0C],ecx
 00417816    mov         ecx,dword ptr [eax+20]
 00417819    add         ecx,edx
 0041781B    mov         ebx,dword ptr [ebp-8]
 0041781E    mov         bl,byte ptr [ecx+ebx]
 00417821    cmp         bl,byte ptr [ebp-1E]
>00417824    jne         004178D3
 0041782A    mov         ebx,dword ptr [ebp-8]
 0041782D    mov         bl,byte ptr [ecx+ebx-1]
 00417831    cmp         bl,byte ptr [ebp-1D]
>00417834    jne         004178D3
 0041783A    mov         bl,byte ptr [ecx]
 0041783C    cmp         bl,byte ptr [esi]
>0041783E    jne         004178D3
 00417844    inc         ecx
 00417845    mov         bl,byte ptr [esi+1]
 00417848    cmp         bl,byte ptr [ecx]
>0041784A    jne         004178D3
 00417850    add         esi,2
 00417853    inc         ecx
 00417854    inc         esi
 00417855    inc         ecx
 00417856    mov         bl,byte ptr [esi]
 00417858    cmp         bl,byte ptr [ecx]
>0041785A    jne         00417899
 0041785C    inc         esi
 0041785D    inc         ecx
 0041785E    mov         bl,byte ptr [esi]
 00417860    cmp         bl,byte ptr [ecx]
>00417862    jne         00417899
 00417864    inc         esi
 00417865    inc         ecx
 00417866    mov         bl,byte ptr [esi]
 00417868    cmp         bl,byte ptr [ecx]
>0041786A    jne         00417899
 0041786C    inc         esi
 0041786D    inc         ecx
 0041786E    mov         bl,byte ptr [esi]
 00417870    cmp         bl,byte ptr [ecx]
>00417872    jne         00417899
 00417874    inc         esi
 00417875    inc         ecx
 00417876    mov         bl,byte ptr [esi]
 00417878    cmp         bl,byte ptr [ecx]
>0041787A    jne         00417899
 0041787C    inc         esi
 0041787D    inc         ecx
 0041787E    mov         bl,byte ptr [esi]
 00417880    cmp         bl,byte ptr [ecx]
>00417882    jne         00417899
 00417884    inc         esi
 00417885    inc         ecx
 00417886    mov         bl,byte ptr [esi]
 00417888    cmp         bl,byte ptr [ecx]
>0041788A    jne         00417899
 0041788C    inc         esi
 0041788D    inc         ecx
 0041788E    mov         bl,byte ptr [esi]
 00417890    cmp         bl,byte ptr [ecx]
>00417892    jne         00417899
 00417894    cmp         esi,dword ptr [ebp-1C]
>00417897    jb          00417854
 00417899    mov         ecx,dword ptr [ebp-1C]
 0041789C    sub         ecx,esi
 0041789E    push        ecx
 0041789F    mov         ecx,102
 004178A4    pop         ebx
 004178A5    sub         ecx,ebx
 004178A7    mov         esi,dword ptr [ebp-1C]
 004178AA    sub         esi,102
 004178B0    cmp         ecx,dword ptr [ebp-8]
>004178B3    jbe         004178D3
 004178B5    mov         dword ptr [eax+58],edx
 004178B8    mov         dword ptr [ebp-8],ecx
 004178BB    cmp         ecx,dword ptr [ebp-0C]
>004178BE    jae         004178EF
 004178C0    mov         ecx,dword ptr [ebp-8]
 004178C3    mov         cl,byte ptr [esi+ecx-1]
 004178C7    mov         byte ptr [ebp-1D],cl
 004178CA    mov         ecx,dword ptr [ebp-8]
 004178CD    mov         cl,byte ptr [esi+ecx]
 004178D0    mov         byte ptr [ebp-1E],cl
 004178D3    and         edx,dword ptr [ebp-18]
 004178D6    mov         ecx,dword ptr [ebp-14]
 004178D9    movzx       edx,word ptr [ecx+edx*2]
 004178DD    dec         dword ptr [ebp-4]
 004178E0    cmp         edx,dword ptr [ebp-10]
>004178E3    jbe         004178EF
 004178E5    cmp         dword ptr [ebp-4],0
>004178E9    jne         00417816
 004178EF    mov         edx,dword ptr [eax+5C]
 004178F2    cmp         edx,dword ptr [ebp-8]
>004178F5    jb          004178FC
 004178F7    mov         eax,dword ptr [ebp-8]
>004178FA    jmp         004178FE
 004178FC    mov         eax,edx
 004178FE    pop         edi
 004178FF    pop         esi
 00417900    pop         ebx
 00417901    mov         esp,ebp
 00417903    pop         ebp
 00417904    ret
end;*}

//00417908
{*function sub_00417908(?:?; ?:?; ?:?; ?:?):?;
begin
 00417908    push        ebp
 00417909    mov         ebp,esp
 0041790B    push        ecx
 0041790C    push        ebx
 0041790D    push        esi
 0041790E    push        edi
 0041790F    mov         edi,ecx
 00417911    mov         dword ptr [ebp-4],edx
 00417914    mov         esi,eax
 00417916    mov         ebx,dword ptr [esi+4]
 00417919    cmp         edi,ebx
>0041791B    jae         0041791F
 0041791D    mov         ebx,edi
 0041791F    test        ebx,ebx
>00417921    jbe         0041793E
 00417923    sub         dword ptr [esi+4],ebx
 00417926    mov         edx,dword ptr [ebp-4]
 00417929    mov         eax,dword ptr [esi]
 0041792B    mov         ecx,ebx
 0041792D    call        Move
 00417932    add         dword ptr [esi],ebx
 00417934    mov         eax,ebx
 00417936    xor         edx,edx
 00417938    add         dword ptr [esi+8],eax
 0041793B    adc         dword ptr [esi+0C],edx
 0041793E    cmp         edi,ebx
>00417940    jbe         00417974
 00417942    cmp         dword ptr [esi+4],0
>00417946    jne         00417974
 00417948    mov         eax,dword ptr [ebp+8]
 0041794B    mov         eax,dword ptr [eax+8]
 0041794E    push        eax
 0041794F    mov         eax,esi
 00417951    call        00417490
 00417956    pop         ecx
 00417957    cmp         dword ptr [esi+4],0
>0041795B    je          00417974
 0041795D    mov         eax,dword ptr [ebp+8]
 00417960    push        eax
 00417961    mov         ecx,edi
 00417963    sub         ecx,ebx
 00417965    mov         edx,dword ptr [ebp-4]
 00417968    add         edx,ebx
 0041796A    mov         eax,esi
 0041796C    call        00417908
 00417971    pop         ecx
 00417972    add         ebx,eax
 00417974    mov         eax,ebx
 00417976    pop         edi
 00417977    pop         esi
 00417978    pop         ebx
 00417979    pop         ecx
 0041797A    pop         ebp
 0041797B    ret
end;*}

//0041797C
{*procedure sub_0041797C(?:Pointer; ?:?);
begin
 0041797C    push        ebp
 0041797D    mov         ebp,esp
 0041797F    add         esp,0FFFFFFF8
 00417982    push        ebx
 00417983    push        esi
 00417984    mov         ebx,eax
 00417986    mov         eax,dword ptr [ebx+14]
 00417989    mov         dword ptr [ebp-8],eax
 0041798C    mov         esi,dword ptr [ebx+24]
 0041798F    sub         esi,dword ptr [ebx+5C]
 00417992    sub         esi,dword ptr [ebx+54]
 00417995    test        esi,esi
>00417997    jne         004179AD
 00417999    cmp         dword ptr [ebx+54],0
>0041799D    jne         004179AD
 0041799F    cmp         dword ptr [ebx+5C],0
>004179A3    jne         004179AD
 004179A5    mov         esi,dword ptr [ebp-8]
>004179A8    jmp         00417A58
 004179AD    cmp         esi,0FFFFFFFF
>004179B0    jne         004179B8
 004179B2    dec         esi
>004179B3    jmp         00417A58
 004179B8    mov         eax,dword ptr [ebx+54]
 004179BB    mov         edx,dword ptr [ebp-8]
 004179BE    sub         edx,106
 004179C4    add         edx,dword ptr [ebp-8]
 004179C7    cmp         eax,edx
>004179C9    jb          00417A58
 004179CF    mov         eax,dword ptr [ebx+20]
 004179D2    mov         edx,dword ptr [ebp-8]
 004179D5    lea         edx,[eax+edx]
 004179D8    mov         ecx,dword ptr [ebp-8]
 004179DB    xchg        eax,edx
 004179DC    call        Move
 004179E1    mov         eax,dword ptr [ebp-8]
 004179E4    sub         dword ptr [ebx+58],eax
 004179E7    mov         eax,dword ptr [ebp-8]
 004179EA    sub         dword ptr [ebx+54],eax
 004179ED    mov         eax,dword ptr [ebp-8]
 004179F0    sub         dword ptr [ebx+44],eax
 004179F3    mov         eax,dword ptr [ebx+34]
 004179F6    mov         edx,dword ptr [ebx+2C]
 004179F9    lea         edx,[edx+eax*2]
 004179FC    sub         edx,2
 004179FF    movzx       ecx,word ptr [edx]
 00417A02    mov         dword ptr [ebp-4],ecx
 00417A05    mov         ecx,dword ptr [ebp-4]
 00417A08    cmp         ecx,dword ptr [ebp-8]
>00417A0B    jb          00417A1A
 00417A0D    mov         cx,word ptr [ebp-4]
 00417A11    sub         cx,word ptr [ebp-8]
 00417A15    mov         word ptr [edx],cx
>00417A18    jmp         00417A1F
 00417A1A    mov         word ptr [edx],0
 00417A1F    dec         eax
 00417A20    test        eax,eax
>00417A22    jne         004179FC
 00417A24    mov         eax,dword ptr [ebp-8]
 00417A27    mov         edx,dword ptr [ebx+28]
 00417A2A    lea         edx,[edx+eax*2]
 00417A2D    sub         edx,2
 00417A30    movzx       ecx,word ptr [edx]
 00417A33    mov         dword ptr [ebp-4],ecx
 00417A36    mov         ecx,dword ptr [ebp-4]
 00417A39    cmp         ecx,dword ptr [ebp-8]
>00417A3C    jb          00417A4B
 00417A3E    mov         cx,word ptr [ebp-4]
 00417A42    sub         cx,word ptr [ebp-8]
 00417A46    mov         word ptr [edx],cx
>00417A49    jmp         00417A50
 00417A4B    mov         word ptr [edx],0
 00417A50    dec         eax
 00417A51    test        eax,eax
>00417A53    jne         00417A2D
 00417A55    add         esi,dword ptr [ebp-8]
 00417A58    mov         ecx,dword ptr [ebx]
 00417A5A    mov         eax,dword ptr [ecx+8]
 00417A5D    mov         edx,dword ptr [ecx+0C]
 00417A60    push        edx
 00417A61    push        eax
 00417A62    mov         eax,dword ptr [ebp+8]
 00417A65    mov         edx,dword ptr [eax+18]
 00417A68    mov         eax,dword ptr [eax+14]
 00417A6B    cmp         edx,dword ptr [esp+4]
>00417A6F    jne         00417A74
 00417A71    cmp         eax,dword ptr [esp]
 00417A74    pop         edx
 00417A75    pop         eax
>00417A76    je          00417AE2
 00417A78    push        ebp
 00417A79    mov         eax,dword ptr [ebx+54]
 00417A7C    add         eax,dword ptr [ebx+5C]
 00417A7F    mov         edx,dword ptr [ebx+20]
 00417A82    add         edx,eax
 00417A84    mov         eax,ecx
 00417A86    mov         ecx,esi
 00417A88    call        00417908
 00417A8D    pop         ecx
 00417A8E    add         dword ptr [ebx+5C],eax
 00417A91    cmp         dword ptr [ebx+5C],3
>00417A95    jb          00417ABC
 00417A97    mov         eax,dword ptr [ebx+54]
 00417A9A    mov         edx,dword ptr [ebx+20]
 00417A9D    movzx       eax,byte ptr [edx+eax]
 00417AA1    mov         dword ptr [ebx+30],eax
 00417AA4    mov         ecx,dword ptr [ebx+40]
 00417AA7    shl         eax,cl
 00417AA9    mov         edx,dword ptr [ebx+54]
 00417AAC    mov         ecx,dword ptr [ebx+20]
 00417AAF    movzx       edx,byte ptr [ecx+edx+1]
 00417AB4    xor         eax,edx
 00417AB6    and         eax,dword ptr [ebx+3C]
 00417AB9    mov         dword ptr [ebx+30],eax
 00417ABC    cmp         dword ptr [ebx+5C],106
>00417AC3    jae         00417AE2
 00417AC5    mov         eax,dword ptr [ebx]
 00417AC7    mov         edx,dword ptr [eax+0C]
 00417ACA    mov         eax,dword ptr [eax+8]
 00417ACD    mov         ecx,dword ptr [ebp+8]
 00417AD0    cmp         edx,dword ptr [ecx+18]
>00417AD3    jne         0041798C
 00417AD9    cmp         eax,dword ptr [ecx+14]
>00417ADC    jne         0041798C
 00417AE2    pop         esi
 00417AE3    pop         ebx
 00417AE4    pop         ecx
 00417AE5    pop         ecx
 00417AE6    pop         ebp
 00417AE7    ret
end;*}

//00417AE8
procedure sub_00417AE8(?:Pointer);
begin
{*
 00417AE8    mov         edx,11E
 00417AED    lea         ecx,[eax+64]
 00417AF0    mov         word ptr [ecx],0
 00417AF5    add         ecx,4
 00417AF8    dec         edx
>00417AF9    jne         00417AF0
 00417AFB    mov         edx,1E
 00417B00    lea         ecx,[eax+958]
 00417B06    mov         word ptr [ecx],0
 00417B0B    add         ecx,4
 00417B0E    dec         edx
>00417B0F    jne         00417B06
 00417B11    mov         edx,13
 00417B16    lea         ecx,[eax+0A4C]
 00417B1C    mov         word ptr [ecx],0
 00417B21    add         ecx,4
 00417B24    dec         edx
>00417B25    jne         00417B1C
 00417B27    mov         word ptr [eax+464],1
 00417B30    xor         edx,edx
 00417B32    mov         dword ptr [eax+167C],edx
 00417B38    xor         edx,edx
 00417B3A    mov         dword ptr [eax+1678],edx
 00417B40    xor         edx,edx
 00417B42    mov         dword ptr [eax+1684],edx
 00417B48    xor         edx,edx
 00417B4A    mov         dword ptr [eax+1670],edx
 00417B50    ret
*}
end;

//00417B54
{*procedure sub_00417B54(?:?; ?:?);
begin
 00417B54    push        ebp
 00417B55    mov         ebp,esp
 00417B57    push        ebx
 00417B58    push        esi
 00417B59    push        edi
 00417B5A    mov         ebx,eax
 00417B5C    mov         edi,dword ptr [ebx+20]
 00417B5F    mov         esi,dword ptr [edi+10]
 00417B62    mov         eax,dword ptr [ebx+14]
 00417B65    cmp         esi,eax
>00417B67    jbe         00417B6B
 00417B69    mov         esi,eax
 00417B6B    test        esi,esi
>00417B6D    jbe         00417B9E
 00417B6F    mov         edx,dword ptr [ebx+10]
 00417B72    mov         eax,dword ptr [edi+0C]
 00417B75    mov         ecx,esi
 00417B77    call        Move
 00417B7C    add         dword ptr [ebx+10],esi
 00417B7F    add         dword ptr [edi+0C],esi
 00417B82    mov         eax,esi
 00417B84    xor         edx,edx
 00417B86    add         dword ptr [ebx+18],eax
 00417B89    adc         dword ptr [ebx+1C],edx
 00417B8C    sub         dword ptr [ebx+14],esi
 00417B8F    sub         dword ptr [edi+10],esi
 00417B92    cmp         dword ptr [edi+10],0
>00417B96    jne         00417B9E
 00417B98    mov         eax,dword ptr [edi+4]
 00417B9B    mov         dword ptr [edi+0C],eax
 00417B9E    cmp         dword ptr [edi+10],0
>00417BA2    jle         00417BCB
 00417BA4    cmp         dword ptr [ebx+14],0
>00417BA8    jne         00417BCB
 00417BAA    mov         eax,dword ptr [ebp+8]
 00417BAD    mov         eax,dword ptr [eax+8]
 00417BB0    push        eax
 00417BB1    mov         eax,ebx
 00417BB3    call        00417680
 00417BB8    pop         ecx
 00417BB9    cmp         dword ptr [ebx+14],0
>00417BBD    jbe         00417BCB
 00417BBF    mov         eax,dword ptr [ebp+8]
 00417BC2    push        eax
 00417BC3    mov         eax,ebx
 00417BC5    call        00417B54
 00417BCA    pop         ecx
 00417BCB    pop         edi
 00417BCC    pop         esi
 00417BCD    pop         ebx
 00417BCE    pop         ebp
 00417BCF    ret
end;*}

//00417BD0
{*function sub_00417BD0(?:?; ?:?):?;
begin
 00417BD0    push        ebx
 00417BD1    xor         ecx,ecx
 00417BD3    mov         ebx,eax
 00417BD5    and         bx,1
 00417BD9    or          cx,bx
 00417BDC    movzx       eax,ax
 00417BDF    shr         eax,1
 00417BE1    add         ecx,ecx
 00417BE3    dec         edx
 00417BE4    test        edx,edx
>00417BE6    jg          00417BD3
 00417BE8    movzx       eax,cx
 00417BEB    shr         eax,1
 00417BED    mov         ecx,eax
 00417BEF    mov         eax,ecx
 00417BF1    pop         ebx
 00417BF2    ret
end;*}

//00417BF4
{*procedure sub_00417BF4(?:?; ?:?; ?:?);
begin
 00417BF4    push        ebp
 00417BF5    mov         ebp,esp
 00417BF7    add         esp,0FFFFFFD4
 00417BFA    push        ebx
 00417BFB    push        esi
 00417BFC    push        edi
 00417BFD    mov         dword ptr [ebp-0C],ecx
 00417C00    mov         dword ptr [ebp-8],edx
 00417C03    mov         dword ptr [ebp-4],eax
 00417C06    xor         ecx,ecx
 00417C08    mov         edx,0F
 00417C0D    mov         eax,dword ptr [ebp-0C]
 00417C10    lea         ebx,[ebp-2A]
 00417C13    add         cx,word ptr [eax]
 00417C16    add         ecx,ecx
 00417C18    mov         word ptr [ebx],cx
 00417C1B    add         ebx,2
 00417C1E    add         eax,2
 00417C21    dec         edx
>00417C22    jne         00417C13
 00417C24    mov         edi,dword ptr [ebp-8]
 00417C27    test        edi,edi
>00417C29    jl          00417C56
 00417C2B    inc         edi
 00417C2C    xor         esi,esi
 00417C2E    mov         eax,dword ptr [ebp-4]
 00417C31    movzx       ebx,word ptr [eax+esi*4+2]
 00417C36    test        ebx,ebx
>00417C38    je          00417C52
 00417C3A    mov         ax,word ptr [ebp+ebx*2-2C]
 00417C3F    mov         edx,ebx
 00417C41    call        00417BD0
 00417C46    mov         edx,dword ptr [ebp-4]
 00417C49    mov         word ptr [edx+esi*4],ax
 00417C4D    inc         word ptr [ebp+ebx*2-2C]
 00417C52    inc         esi
 00417C53    dec         edi
>00417C54    jne         00417C2E
 00417C56    pop         edi
 00417C57    pop         esi
 00417C58    pop         ebx
 00417C59    mov         esp,ebp
 00417C5B    pop         ebp
 00417C5C    ret         4
end;*}

//00417C60
{*procedure sub_00417C60(?:?; ?:?; ?:?);
begin
 00417C60    push        ebp
 00417C61    mov         ebp,esp
 00417C63    add         esp,0FFFFFFF8
 00417C66    push        ebx
 00417C67    push        esi
 00417C68    mov         dword ptr [ebp-4],ecx
 00417C6B    mov         ecx,dword ptr [ebp-4]
 00417C6E    mov         ecx,dword ptr [eax+ecx*4+0B2C]
 00417C75    mov         dword ptr [ebp-8],ecx
 00417C78    mov         ecx,dword ptr [ebp-4]
 00417C7B    add         ecx,ecx
>00417C7D    jmp         00417D31
 00417C82    cmp         ecx,dword ptr [eax+1420]
>00417C88    jge         00417CD9
 00417C8A    mov         ebx,dword ptr [eax+ecx*4+0B30]
 00417C91    mov         bx,word ptr [edx+ebx*4]
 00417C95    mov         esi,dword ptr [eax+ecx*4+0B2C]
 00417C9C    cmp         bx,word ptr [edx+esi*4]
>00417CA0    jb          00417CD8
 00417CA2    mov         ebx,dword ptr [eax+ecx*4+0B30]
 00417CA9    mov         bx,word ptr [edx+ebx*4]
 00417CAD    mov         esi,dword ptr [eax+ecx*4+0B2C]
 00417CB4    cmp         bx,word ptr [edx+esi*4]
>00417CB8    jne         00417CD9
 00417CBA    mov         ebx,dword ptr [eax+ecx*4+0B30]
 00417CC1    mov         bl,byte ptr [eax+ebx+1428]
 00417CC8    mov         esi,dword ptr [eax+ecx*4+0B2C]
 00417CCF    cmp         bl,byte ptr [eax+esi+1428]
>00417CD6    ja          00417CD9
 00417CD8    inc         ecx
 00417CD9    mov         ebx,dword ptr [ebp-8]
 00417CDC    mov         bx,word ptr [edx+ebx*4]
 00417CE0    mov         esi,dword ptr [eax+ecx*4+0B2C]
 00417CE7    cmp         bx,word ptr [edx+esi*4]
>00417CEB    jb          00417D3D
 00417CED    mov         ebx,dword ptr [ebp-8]
 00417CF0    mov         bx,word ptr [edx+ebx*4]
 00417CF4    mov         esi,dword ptr [eax+ecx*4+0B2C]
 00417CFB    cmp         bx,word ptr [edx+esi*4]
>00417CFF    jne         00417D1B
 00417D01    mov         ebx,dword ptr [ebp-8]
 00417D04    mov         bl,byte ptr [eax+ebx+1428]
 00417D0B    mov         esi,dword ptr [eax+ecx*4+0B2C]
 00417D12    cmp         bl,byte ptr [eax+esi+1428]
>00417D19    jbe         00417D3D
 00417D1B    mov         ebx,dword ptr [ebp-4]
 00417D1E    mov         esi,dword ptr [eax+ecx*4+0B2C]
 00417D25    mov         dword ptr [eax+ebx*4+0B2C],esi
 00417D2C    mov         dword ptr [ebp-4],ecx
 00417D2F    add         ecx,ecx
 00417D31    cmp         ecx,dword ptr [eax+1420]
>00417D37    jle         00417C82
 00417D3D    mov         edx,dword ptr [ebp-4]
 00417D40    mov         ecx,dword ptr [ebp-8]
 00417D43    mov         dword ptr [eax+edx*4+0B2C],ecx
 00417D4A    pop         esi
 00417D4B    pop         ebx
 00417D4C    pop         ecx
 00417D4D    pop         ecx
 00417D4E    pop         ebp
 00417D4F    ret
end;*}

//00417D50
{*procedure sub_00417D50(?:?; ?:?);
begin
 00417D50    push        ebp
 00417D51    mov         ebp,esp
 00417D53    add         esp,0FFFFFFD4
 00417D56    push        ebx
 00417D57    push        esi
 00417D58    push        edi
 00417D59    mov         ebx,eax
 00417D5B    mov         eax,dword ptr [edx]
 00417D5D    mov         dword ptr [ebp-4],eax
 00417D60    mov         eax,dword ptr [edx+4]
 00417D63    mov         dword ptr [ebp-8],eax
 00417D66    mov         eax,dword ptr [edx+8]
 00417D69    mov         ecx,dword ptr [eax]
 00417D6B    mov         dword ptr [ebp-0C],ecx
 00417D6E    mov         ecx,dword ptr [eax+4]
 00417D71    mov         dword ptr [ebp-10],ecx
 00417D74    mov         ecx,dword ptr [eax+8]
 00417D77    mov         dword ptr [ebp-14],ecx
 00417D7A    mov         eax,dword ptr [eax+10]
 00417D7D    mov         dword ptr [ebp-18],eax
 00417D80    xor         eax,eax
 00417D82    mov         dword ptr [ebp-28],eax
 00417D85    lea         eax,[ebx+0B0C]
 00417D8B    xor         ecx,ecx
 00417D8D    mov         edx,20
 00417D92    call        @FillChar
 00417D97    mov         eax,dword ptr [ebx+1424]
 00417D9D    mov         eax,dword ptr [ebx+eax*4+0B2C]
 00417DA4    mov         edx,dword ptr [ebp-4]
 00417DA7    mov         word ptr [edx+eax*4+2],0
 00417DAE    mov         eax,dword ptr [ebx+1424]
 00417DB4    inc         eax
 00417DB5    cmp         eax,23C
>00417DBA    jg          00417E6E
 00417DC0    mov         dword ptr [ebp-1C],eax
 00417DC3    mov         eax,dword ptr [ebp-1C]
 00417DC6    lea         edx,[ebx+eax*4+0B2C]
 00417DCD    mov         esi,dword ptr [edx]
 00417DCF    mov         eax,dword ptr [ebp-4]
 00417DD2    movzx       eax,word ptr [eax+esi*4+2]
 00417DD7    mov         ecx,dword ptr [ebp-4]
 00417DDA    mov         ax,word ptr [ecx+eax*4+2]
 00417DDF    inc         eax
 00417DE0    movzx       ecx,ax
 00417DE3    cmp         ecx,dword ptr [ebp-18]
>00417DE6    jle         00417DEF
 00417DE8    mov         ax,word ptr [ebp-18]
 00417DEC    inc         dword ptr [ebp-28]
 00417DEF    mov         ecx,dword ptr [ebp-4]
 00417DF2    mov         word ptr [ecx+esi*4+2],ax
 00417DF7    cmp         esi,dword ptr [ebp-8]
>00417DFA    jg          00417E5B
 00417DFC    movzx       ecx,ax
 00417DFF    inc         word ptr [ebx+ecx*2+0B0C]
 00417E07    xor         ecx,ecx
 00417E09    mov         dword ptr [ebp-20],ecx
 00417E0C    cmp         esi,dword ptr [ebp-14]
>00417E0F    jl          00417E1F
 00417E11    mov         ecx,esi
 00417E13    sub         ecx,dword ptr [ebp-14]
 00417E16    mov         edi,dword ptr [ebp-10]
 00417E19    mov         ecx,dword ptr [edi+ecx*4]
 00417E1C    mov         dword ptr [ebp-20],ecx
 00417E1F    mov         ecx,dword ptr [ebp-4]
 00417E22    mov         cx,word ptr [ecx+esi*4]
 00417E26    mov         word ptr [ebp-22],cx
 00417E2A    movzx       ecx,word ptr [ebp-22]
 00417E2E    movzx       eax,ax
 00417E31    add         eax,dword ptr [ebp-20]
 00417E34    imul        ecx,eax
 00417E37    add         dword ptr [ebx+1678],ecx
 00417E3D    cmp         dword ptr [ebp-0C],0
>00417E41    je          00417E5B
 00417E43    mov         eax,dword ptr [ebp-0C]
 00417E46    movzx       eax,word ptr [eax+esi*4+2]
 00417E4B    add         eax,dword ptr [ebp-20]
 00417E4E    movzx       ecx,word ptr [ebp-22]
 00417E52    imul        eax,ecx
 00417E55    add         dword ptr [ebx+167C],eax
 00417E5B    inc         dword ptr [ebp-1C]
 00417E5E    add         edx,4
 00417E61    cmp         dword ptr [ebp-1C],23D
>00417E68    jne         00417DCD
 00417E6E    cmp         dword ptr [ebp-28],0
>00417E72    je          00417F32
 00417E78    mov         ax,word ptr [ebp-18]
 00417E7C    dec         eax
>00417E7D    jmp         00417E80
 00417E7F    dec         eax
 00417E80    movzx       edx,ax
 00417E83    cmp         word ptr [ebx+edx*2+0B0C],0
>00417E8C    je          00417E7F
 00417E8E    movzx       edx,ax
 00417E91    dec         word ptr [ebx+edx*2+0B0C]
 00417E99    movzx       eax,ax
 00417E9C    add         word ptr [ebx+eax*2+0B0E],2
 00417EA5    mov         eax,dword ptr [ebp-18]
 00417EA8    dec         word ptr [ebx+eax*2+0B0C]
 00417EB0    sub         dword ptr [ebp-28],2
 00417EB4    cmp         dword ptr [ebp-28],0
>00417EB8    jg          00417E78
 00417EBA    mov         dword ptr [ebp-1C],23D
 00417EC1    mov         ax,word ptr [ebp-18]
 00417EC5    cmp         ax,1
>00417EC9    jb          00417F32
 00417ECB    movzx       edx,ax
 00417ECE    lea         edx,[ebx+edx*2+0B0C]
 00417ED5    mov         dword ptr [ebp-2C],edx
 00417ED8    mov         edx,dword ptr [ebp-2C]
 00417EDB    movzx       esi,word ptr [edx]
 00417EDE    test        esi,esi
>00417EE0    je          00417F28
 00417EE2    dec         dword ptr [ebp-1C]
 00417EE5    mov         edx,dword ptr [ebp-1C]
 00417EE8    mov         edx,dword ptr [ebx+edx*4+0B2C]
 00417EEF    cmp         edx,dword ptr [ebp-8]
>00417EF2    jg          00417F24
 00417EF4    mov         ecx,dword ptr [ebp-4]
 00417EF7    cmp         ax,word ptr [ecx+edx*4+2]
>00417EFC    je          00417F23
 00417EFE    movzx       ecx,ax
 00417F01    mov         edi,dword ptr [ebp-4]
 00417F04    movzx       edi,word ptr [edi+edx*4+2]
 00417F09    sub         ecx,edi
 00417F0B    mov         edi,dword ptr [ebp-4]
 00417F0E    movzx       edi,word ptr [edi+edx*4]
 00417F12    imul        ecx,edi
 00417F15    add         dword ptr [ebx+1678],ecx
 00417F1B    mov         ecx,dword ptr [ebp-4]
 00417F1E    mov         word ptr [ecx+edx*4+2],ax
 00417F23    dec         esi
 00417F24    test        esi,esi
>00417F26    jne         00417EE2
 00417F28    dec         eax
 00417F29    sub         dword ptr [ebp-2C],2
 00417F2D    test        ax,ax
>00417F30    jne         00417ED8
 00417F32    pop         edi
 00417F33    pop         esi
 00417F34    pop         ebx
 00417F35    mov         esp,ebp
 00417F37    pop         ebp
 00417F38    ret
end;*}

//00417F3C
{*procedure sub_00417F3C(?:?; ?:?);
begin
 00417F3C    push        ebp
 00417F3D    mov         ebp,esp
 00417F3F    add         esp,0FFFFFFE8
 00417F42    push        ebx
 00417F43    push        esi
 00417F44    push        edi
 00417F45    mov         dword ptr [ebp-4],edx
 00417F48    mov         ebx,eax
 00417F4A    mov         edi,dword ptr [ebp-4]
 00417F4D    mov         edi,dword ptr [edi]
 00417F4F    mov         eax,dword ptr [ebp-4]
 00417F52    mov         eax,dword ptr [eax+8]
 00417F55    mov         edx,dword ptr [eax]
 00417F57    mov         dword ptr [ebp-8],edx
 00417F5A    mov         edx,dword ptr [ebp-4]
 00417F5D    mov         eax,dword ptr [eax+0C]
 00417F60    mov         dword ptr [ebp-0C],eax
 00417F63    mov         dword ptr [ebp-10],0FFFFFFFF
 00417F6A    xor         eax,eax
 00417F6C    mov         dword ptr [ebx+1420],eax
 00417F72    mov         dword ptr [ebx+1424],23D
 00417F7C    mov         eax,dword ptr [ebp-0C]
 00417F7F    dec         eax
 00417F80    test        eax,eax
>00417F82    jl          00418032
 00417F88    inc         eax
 00417F89    mov         dword ptr [ebp-18],eax
 00417F8C    xor         esi,esi
 00417F8E    lea         eax,[ebx+1428]
 00417F94    cmp         word ptr [edi+esi*4],0
>00417F99    jne         00417FA4
 00417F9B    mov         word ptr [edi+esi*4+2],0
>00417FA2    jmp         00417FBD
 00417FA4    mov         dword ptr [ebp-10],esi
 00417FA7    inc         dword ptr [ebx+1420]
 00417FAD    mov         edx,dword ptr [ebx+1420]
 00417FB3    mov         dword ptr [ebx+edx*4+0B2C],esi
 00417FBA    mov         byte ptr [eax],0
 00417FBD    inc         esi
 00417FBE    inc         eax
 00417FBF    dec         dword ptr [ebp-18]
>00417FC2    jne         00417F94
>00417FC4    jmp         00418032
 00417FC6    inc         dword ptr [ebx+1420]
 00417FCC    cmp         dword ptr [ebp-10],2
>00417FD0    jge         00417FED
 00417FD2    inc         dword ptr [ebp-10]
 00417FD5    mov         eax,dword ptr [ebx+1420]
 00417FDB    mov         edx,dword ptr [ebp-10]
 00417FDE    mov         dword ptr [ebx+eax*4+0B2C],edx
 00417FE5    mov         eax,dword ptr [ebp-10]
 00417FE8    mov         dword ptr [ebp-14],eax
>00417FEB    jmp         00418001
 00417FED    mov         eax,dword ptr [ebx+1420]
 00417FF3    xor         edx,edx
 00417FF5    mov         dword ptr [ebx+eax*4+0B2C],edx
 00417FFC    xor         eax,eax
 00417FFE    mov         dword ptr [ebp-14],eax
 00418001    mov         eax,dword ptr [ebp-14]
 00418004    mov         word ptr [edi+eax*4],1
 0041800A    mov         eax,dword ptr [ebp-14]
 0041800D    mov         byte ptr [ebx+eax+1428],0
 00418015    dec         dword ptr [ebx+1678]
 0041801B    cmp         dword ptr [ebp-8],0
>0041801F    je          00418032
 00418021    mov         eax,dword ptr [ebp-8]
 00418024    mov         edx,dword ptr [ebp-14]
 00418027    movzx       eax,word ptr [eax+edx*4+2]
 0041802C    sub         dword ptr [ebx+167C],eax
 00418032    cmp         dword ptr [ebx+1420],2
>00418039    jl          00417FC6
 0041803B    mov         eax,dword ptr [ebp-4]
 0041803E    mov         edx,dword ptr [ebp-10]
 00418041    mov         dword ptr [eax+4],edx
 00418044    mov         esi,dword ptr [ebx+1420]
 0041804A    sar         esi,1
>0041804C    jns         00418051
 0041804E    adc         esi,0
 00418051    cmp         esi,1
>00418054    jl          00418066
 00418056    mov         edx,edi
 00418058    mov         eax,ebx
 0041805A    mov         ecx,esi
 0041805C    call        00417C60
 00418061    dec         esi
 00418062    test        esi,esi
>00418064    jne         00418056
 00418066    mov         eax,dword ptr [ebp-0C]
 00418069    mov         dword ptr [ebp-14],eax
 0041806C    mov         esi,dword ptr [ebx+0B30]
 00418072    mov         eax,dword ptr [ebx+1420]
 00418078    mov         eax,dword ptr [ebx+eax*4+0B2C]
 0041807F    mov         dword ptr [ebx+0B30],eax
 00418085    dec         dword ptr [ebx+1420]
 0041808B    mov         edx,edi
 0041808D    mov         eax,ebx
 0041808F    mov         ecx,1
 00418094    call        00417C60
 00418099    mov         eax,dword ptr [ebx+0B30]
 0041809F    dec         dword ptr [ebx+1424]
 004180A5    mov         edx,dword ptr [ebx+1424]
 004180AB    mov         dword ptr [ebx+edx*4+0B2C],esi
 004180B2    dec         dword ptr [ebx+1424]
 004180B8    mov         edx,dword ptr [ebx+1424]
 004180BE    mov         dword ptr [ebx+edx*4+0B2C],eax
 004180C5    mov         dx,word ptr [edi+eax*4]
 004180C9    add         dx,word ptr [edi+esi*4]
 004180CD    push        edx
 004180CE    mov         edx,dword ptr [ebp-14]
 004180D1    pop         ecx
 004180D2    mov         word ptr [edi+edx*4],cx
 004180D6    mov         dl,byte ptr [ebx+eax+1428]
 004180DD    cmp         dl,byte ptr [ebx+esi+1428]
>004180E4    ja          004180FA
 004180E6    mov         edx,dword ptr [ebp-14]
 004180E9    mov         cl,byte ptr [ebx+esi+1428]
 004180F0    inc         ecx
 004180F1    mov         byte ptr [ebx+edx+1428],cl
>004180F8    jmp         0041810E
 004180FA    mov         dl,byte ptr [ebx+eax+1428]
 00418101    inc         edx
 00418102    push        edx
 00418103    mov         edx,dword ptr [ebp-14]
 00418106    pop         ecx
 00418107    mov         byte ptr [ebx+edx+1428],cl
 0041810E    mov         dx,word ptr [ebp-14]
 00418112    mov         word ptr [edi+eax*4+2],dx
 00418117    mov         ax,word ptr [ebp-14]
 0041811B    mov         word ptr [edi+esi*4+2],ax
 00418120    mov         eax,dword ptr [ebp-14]
 00418123    mov         dword ptr [ebx+0B30],eax
 00418129    inc         dword ptr [ebp-14]
 0041812C    mov         edx,edi
 0041812E    mov         eax,ebx
 00418130    mov         ecx,1
 00418135    call        00417C60
 0041813A    cmp         dword ptr [ebx+1420],2
>00418141    jge         0041806C
 00418147    dec         dword ptr [ebx+1424]
 0041814D    mov         eax,dword ptr [ebx+1424]
 00418153    mov         edx,dword ptr [ebx+0B30]
 00418159    mov         dword ptr [ebx+eax*4+0B2C],edx
 00418160    mov         edx,dword ptr [ebp-4]
 00418163    mov         eax,ebx
 00418165    call        00417D50
 0041816A    push        0F
 0041816C    lea         ecx,[ebx+0B0C]
 00418172    mov         edx,dword ptr [ebp-10]
 00418175    mov         eax,edi
 00418177    call        00417BF4
 0041817C    pop         edi
 0041817D    pop         esi
 0041817E    pop         ebx
 0041817F    mov         esp,ebp
 00418181    pop         ebp
 00418182    ret
end;*}

//00418184
{*procedure sub_00418184(?:?);
begin
 00418184    push        ebx
 00418185    mov         edx,dword ptr [eax+1690]
 0041818B    cmp         edx,8
>0041818E    jle         004181BD
 00418190    mov         edx,dword ptr [eax+10]
 00418193    mov         ecx,dword ptr [eax+4]
 00418196    mov         bl,byte ptr [eax+168C]
 0041819C    and         bl,0FF
 0041819F    mov         byte ptr [ecx+edx],bl
 004181A2    inc         dword ptr [eax+10]
 004181A5    mov         edx,dword ptr [eax+10]
 004181A8    mov         ecx,dword ptr [eax+4]
 004181AB    movzx       ebx,word ptr [eax+168C]
 004181B2    shr         ebx,8
 004181B5    mov         byte ptr [ecx+edx],bl
 004181B8    inc         dword ptr [eax+10]
>004181BB    jmp         004181D3
 004181BD    test        edx,edx
>004181BF    jle         004181D3
 004181C1    mov         edx,dword ptr [eax+10]
 004181C4    mov         ecx,dword ptr [eax+4]
 004181C7    mov         bl,byte ptr [eax+168C]
 004181CD    mov         byte ptr [ecx+edx],bl
 004181D0    inc         dword ptr [eax+10]
 004181D3    mov         word ptr [eax+168C],0
 004181DC    xor         edx,edx
 004181DE    mov         dword ptr [eax+1690],edx
 004181E4    pop         ebx
 004181E5    ret
end;*}

//004181E8
{*procedure sub_004181E8(?:?; ?:?; ?:?);
begin
 004181E8    push        ebx
 004181E9    push        esi
 004181EA    mov         ebx,ecx
 004181EC    mov         esi,dword ptr [eax+1690]
 004181F2    mov         ecx,10
 004181F7    sub         ecx,ebx
 004181F9    cmp         esi,ecx
>004181FB    jle         00418263
 004181FD    mov         ecx,esi
 004181FF    movzx       esi,dx
 00418202    shl         esi,cl
 00418204    mov         ecx,esi
 00418206    or          word ptr [eax+168C],cx
 0041820D    mov         ecx,dword ptr [eax+10]
 00418210    mov         esi,dword ptr [eax+4]
 00418213    lea         ecx,[esi+ecx]
 00418216    push        ecx
 00418217    mov         cl,byte ptr [eax+168C]
 0041821D    and         cl,0FF
 00418220    pop         esi
 00418221    mov         byte ptr [esi],cl
 00418223    inc         dword ptr [eax+10]
 00418226    mov         ecx,dword ptr [eax+10]
 00418229    mov         esi,dword ptr [eax+4]
 0041822C    lea         ecx,[esi+ecx]
 0041822F    push        ecx
 00418230    movzx       ecx,word ptr [eax+168C]
 00418237    shr         ecx,8
 0041823A    pop         esi
 0041823B    mov         byte ptr [esi],cl
 0041823D    inc         dword ptr [eax+10]
 00418240    mov         ecx,10
 00418245    sub         ecx,dword ptr [eax+1690]
 0041824B    movzx       edx,dx
 0041824E    shr         edx,cl
 00418250    mov         word ptr [eax+168C],dx
 00418257    sub         ebx,10
 0041825A    add         dword ptr [eax+1690],ebx
 00418260    pop         esi
 00418261    pop         ebx
 00418262    ret
 00418263    mov         ecx,esi
 00418265    shl         dx,cl
 00418268    or          word ptr [eax+168C],dx
 0041826F    add         dword ptr [eax+1690],ebx
 00418275    pop         esi
 00418276    pop         ebx
 00418277    ret
end;*}

//00418278
{*procedure sub_00418278(?:?; ?:?; ?:?);
begin
 00418278    push        ebp
 00418279    mov         ebp,esp
 0041827B    add         esp,0FFFFFFE8
 0041827E    push        ebx
 0041827F    push        esi
 00418280    push        edi
 00418281    mov         dword ptr [ebp-8],edx
 00418284    mov         dword ptr [ebp-4],eax
 00418287    mov         dword ptr [ebp-0C],0FFFFFFFF
 0041828E    mov         edi,dword ptr [ebp-8]
 00418291    movzx       edi,word ptr [edi+2]
 00418295    xor         ebx,ebx
 00418297    mov         eax,7
 0041829C    mov         dword ptr [ebp-10],4
 004182A3    test        edi,edi
>004182A5    jne         004182B3
 004182A7    mov         eax,8A
 004182AC    mov         dword ptr [ebp-10],3
 004182B3    mov         edx,dword ptr [ebp+8]
 004182B6    test        edx,edx
>004182B8    jl          0041840D
 004182BE    inc         edx
 004182BF    mov         dword ptr [ebp-14],edx
 004182C2    mov         edx,dword ptr [ebp-8]
 004182C5    add         edx,6
 004182C8    mov         dword ptr [ebp-18],edx
 004182CB    mov         esi,edi
 004182CD    mov         edx,dword ptr [ebp-18]
 004182D0    movzx       edi,word ptr [edx]
 004182D3    inc         ebx
 004182D4    cmp         eax,ebx
>004182D6    jle         004182E0
 004182D8    cmp         edi,esi
>004182DA    je          00418400
 004182E0    cmp         ebx,dword ptr [ebp-10]
>004182E3    jge         0041830D
 004182E5    mov         eax,dword ptr [ebp-4]
 004182E8    movzx       ecx,word ptr [eax+esi*4+0A4E]
 004182F0    mov         eax,dword ptr [ebp-4]
 004182F3    mov         dx,word ptr [eax+esi*4+0A4C]
 004182FB    mov         eax,dword ptr [ebp-4]
 004182FE    call        004181E8
 00418303    dec         ebx
 00418304    test        ebx,ebx
>00418306    jne         004182E5
>00418308    jmp         004183CB
 0041830D    test        esi,esi
>0041830F    je          00418366
 00418311    cmp         esi,dword ptr [ebp-0C]
>00418314    je          00418335
 00418316    mov         eax,dword ptr [ebp-4]
 00418319    movzx       ecx,word ptr [eax+esi*4+0A4E]
 00418321    mov         eax,dword ptr [ebp-4]
 00418324    mov         dx,word ptr [eax+esi*4+0A4C]
 0041832C    mov         eax,dword ptr [ebp-4]
 0041832F    call        004181E8
 00418334    dec         ebx
 00418335    mov         ecx,dword ptr [ebp-4]
 00418338    movzx       ecx,word ptr [ecx+0A8E]
 0041833F    mov         edx,dword ptr [ebp-4]
 00418342    mov         dx,word ptr [edx+0A8C]
 00418349    mov         eax,dword ptr [ebp-4]
 0041834C    call        004181E8
 00418351    mov         edx,ebx
 00418353    sub         dx,3
 00418357    mov         eax,dword ptr [ebp-4]
 0041835A    mov         ecx,2
 0041835F    call        004181E8
>00418364    jmp         004183CB
 00418366    cmp         ebx,0A
>00418369    jg          0041839C
 0041836B    mov         ecx,dword ptr [ebp-4]
 0041836E    movzx       ecx,word ptr [ecx+0A92]
 00418375    mov         edx,dword ptr [ebp-4]
 00418378    mov         dx,word ptr [edx+0A90]
 0041837F    mov         eax,dword ptr [ebp-4]
 00418382    call        004181E8
 00418387    mov         edx,ebx
 00418389    sub         dx,3
 0041838D    mov         eax,dword ptr [ebp-4]
 00418390    mov         ecx,3
 00418395    call        004181E8
>0041839A    jmp         004183CB
 0041839C    mov         ecx,dword ptr [ebp-4]
 0041839F    movzx       ecx,word ptr [ecx+0A96]
 004183A6    mov         edx,dword ptr [ebp-4]
 004183A9    mov         dx,word ptr [edx+0A94]
 004183B0    mov         eax,dword ptr [ebp-4]
 004183B3    call        004181E8
 004183B8    mov         edx,ebx
 004183BA    sub         dx,0B
 004183BE    mov         eax,dword ptr [ebp-4]
 004183C1    mov         ecx,7
 004183C6    call        004181E8
 004183CB    xor         ebx,ebx
 004183CD    mov         dword ptr [ebp-0C],esi
 004183D0    test        edi,edi
>004183D2    jne         004183E2
 004183D4    mov         eax,8A
 004183D9    mov         dword ptr [ebp-10],3
>004183E0    jmp         00418400
 004183E2    cmp         edi,esi
>004183E4    jne         004183F4
 004183E6    mov         eax,6
 004183EB    mov         dword ptr [ebp-10],3
>004183F2    jmp         00418400
 004183F4    mov         eax,7
 004183F9    mov         dword ptr [ebp-10],4
 00418400    add         dword ptr [ebp-18],4
 00418404    dec         dword ptr [ebp-14]
>00418407    jne         004182CB
 0041840D    pop         edi
 0041840E    pop         esi
 0041840F    pop         ebx
 00418410    mov         esp,ebp
 00418412    pop         ebp
 00418413    ret         4
end;*}

//00418418
{*procedure sub_00418418(?:?; ?:?; ?:?; ?:?);
begin
 00418418    push        ebp
 00418419    mov         ebp,esp
 0041841B    add         esp,0FFFFFFF8
 0041841E    push        ebx
 0041841F    push        esi
 00418420    push        edi
 00418421    mov         dword ptr [ebp-8],ecx
 00418424    mov         dword ptr [ebp-4],edx
 00418427    mov         esi,eax
 00418429    mov         ebx,dword ptr [ebp+8]
 0041842C    mov         dx,word ptr [ebp-4]
 00418430    sub         dx,101
 00418435    mov         eax,esi
 00418437    mov         ecx,5
 0041843C    call        004181E8
 00418441    mov         dx,word ptr [ebp-8]
 00418445    dec         edx
 00418446    mov         eax,esi
 00418448    mov         ecx,5
 0041844D    call        004181E8
 00418452    mov         edx,ebx
 00418454    sub         dx,4
 00418458    mov         eax,esi
 0041845A    mov         ecx,4
 0041845F    call        004181E8
 00418464    mov         edi,ebx
 00418466    dec         edi
 00418467    test        edi,edi
>00418469    jl          0041848D
 0041846B    inc         edi
 0041846C    mov         ebx,53E69C
 00418471    xor         eax,eax
 00418473    mov         al,byte ptr [ebx]
 00418475    mov         dx,word ptr [esi+eax*4+0A4E]
 0041847D    mov         eax,esi
 0041847F    mov         ecx,3
 00418484    call        004181E8
 00418489    inc         ebx
 0041848A    dec         edi
>0041848B    jne         00418471
 0041848D    mov         eax,dword ptr [ebp-4]
 00418490    dec         eax
 00418491    push        eax
 00418492    lea         edx,[esi+64]
 00418495    mov         eax,esi
 00418497    mov         ecx,23C
 0041849C    call        00418278
 004184A1    mov         eax,dword ptr [ebp-8]
 004184A4    dec         eax
 004184A5    push        eax
 004184A6    lea         edx,[esi+958]
 004184AC    mov         eax,esi
 004184AE    mov         ecx,3C
 004184B3    call        00418278
 004184B8    pop         edi
 004184B9    pop         esi
 004184BA    pop         ebx
 004184BB    pop         ecx
 004184BC    pop         ecx
 004184BD    pop         ebp
 004184BE    ret         4
end;*}

//004184C4
{*procedure sub_004184C4(?:?; ?:?; ?:?);
begin
 004184C4    push        ebp
 004184C5    mov         ebp,esp
 004184C7    add         esp,0FFFFFFEC
 004184CA    push        ebx
 004184CB    push        esi
 004184CC    mov         dword ptr [ebp-4],eax
 004184CF    mov         eax,dword ptr [ebp+8]
 004184D2    mov         dword ptr [ebp-8],0FFFFFFFF
 004184D9    movzx       ecx,word ptr [edx+2]
 004184DD    xor         ebx,ebx
 004184DF    mov         dword ptr [ebp-0C],ebx
 004184E2    mov         esi,7
 004184E7    mov         dword ptr [ebp-10],4
 004184EE    test        ecx,ecx
>004184F0    jne         004184FE
 004184F2    mov         esi,8A
 004184F7    mov         dword ptr [ebp-10],3
 004184FE    mov         word ptr [edx+eax*4+6],0FFFF
 00418505    test        eax,eax
>00418507    jl          004185C4
 0041850D    inc         eax
 0041850E    mov         dword ptr [ebp-14],eax
 00418511    lea         eax,[edx+6]
 00418514    mov         edx,eax
 00418516    mov         eax,ecx
 00418518    movzx       ecx,word ptr [edx]
 0041851B    inc         dword ptr [ebp-0C]
 0041851E    cmp         esi,dword ptr [ebp-0C]
>00418521    jle         0041852B
 00418523    cmp         ecx,eax
>00418525    je          004185B8
 0041852B    mov         ebx,dword ptr [ebp-0C]
 0041852E    cmp         ebx,dword ptr [ebp-10]
>00418531    jge         00418544
 00418533    mov         ebx,dword ptr [ebp-4]
 00418536    mov         si,word ptr [ebp-0C]
 0041853A    add         word ptr [ebx+eax*4+0A4C],si
>00418542    jmp         00418580
 00418544    test        eax,eax
>00418546    je          00418564
 00418548    cmp         eax,dword ptr [ebp-8]
>0041854B    je          00418558
 0041854D    mov         ebx,dword ptr [ebp-4]
 00418550    inc         word ptr [ebx+eax*4+0A4C]
 00418558    mov         ebx,dword ptr [ebp-4]
 0041855B    inc         word ptr [ebx+0A8C]
>00418562    jmp         00418580
 00418564    cmp         dword ptr [ebp-0C],0A
>00418568    jg          00418576
 0041856A    mov         ebx,dword ptr [ebp-4]
 0041856D    inc         word ptr [ebx+0A90]
>00418574    jmp         00418580
 00418576    mov         ebx,dword ptr [ebp-4]
 00418579    inc         word ptr [ebx+0A94]
 00418580    xor         ebx,ebx
 00418582    mov         dword ptr [ebp-0C],ebx
 00418585    mov         dword ptr [ebp-8],eax
 00418588    test        ecx,ecx
>0041858A    jne         0041859A
 0041858C    mov         esi,8A
 00418591    mov         dword ptr [ebp-10],3
>00418598    jmp         004185B8
 0041859A    cmp         ecx,eax
>0041859C    jne         004185AC
 0041859E    mov         esi,6
 004185A3    mov         dword ptr [ebp-10],3
>004185AA    jmp         004185B8
 004185AC    mov         esi,7
 004185B1    mov         dword ptr [ebp-10],4
 004185B8    add         edx,4
 004185BB    dec         dword ptr [ebp-14]
>004185BE    jne         00418516
 004185C4    pop         esi
 004185C5    pop         ebx
 004185C6    mov         esp,ebp
 004185C8    pop         ebp
 004185C9    ret         4
end;*}

//004185CC
{*function sub_004185CC(?:?):?;
begin
 004185CC    push        ebx
 004185CD    mov         ebx,eax
 004185CF    mov         eax,dword ptr [ebx+0AEC]
 004185D5    push        eax
 004185D6    lea         edx,[ebx+64]
 004185D9    mov         eax,ebx
 004185DB    mov         ecx,23C
 004185E0    call        004184C4
 004185E5    mov         eax,dword ptr [ebx+0AF8]
 004185EB    push        eax
 004185EC    lea         edx,[ebx+958]
 004185F2    mov         eax,ebx
 004185F4    mov         ecx,3C
 004185F9    call        004184C4
 004185FE    lea         edx,[ebx+0B00]
 00418604    mov         eax,ebx
 00418606    call        00417F3C
 0041860B    mov         edx,12
 00418610    mov         eax,53E6AE
 00418615    xor         ecx,ecx
 00418617    mov         cl,byte ptr [eax]
 00418619    cmp         word ptr [ebx+ecx*4+0A4E],0
>00418622    jne         0041862B
 00418624    dec         edx
 00418625    dec         eax
 00418626    cmp         edx,2
>00418629    jne         00418615
 0041862B    lea         eax,[edx+1]
 0041862E    lea         eax,[eax+eax*2]
 00418631    add         eax,0E
 00418634    add         dword ptr [ebx+1678],eax
 0041863A    mov         eax,edx
 0041863C    pop         ebx
 0041863D    ret
end;*}

//00418640
{*procedure sub_00418640(?:?; ?:?; ?:?; ?:?);
begin
 00418640    push        ebp
 00418641    mov         ebp,esp
 00418643    push        ebx
 00418644    push        esi
 00418645    push        edi
 00418646    mov         esi,ecx
 00418648    mov         edi,edx
 0041864A    mov         ebx,eax
 0041864C    mov         eax,ebx
 0041864E    call        00418184
 00418653    mov         dword ptr [ebx+1688],8
 0041865D    cmp         byte ptr [ebp+8],0
>00418661    je          004186BB
 00418663    mov         edx,dword ptr [ebx+10]
 00418666    mov         ecx,dword ptr [ebx+4]
 00418669    lea         edx,[ecx+edx]
 0041866C    push        edx
 0041866D    mov         eax,esi
 0041866F    mov         edx,eax
 00418671    and         dl,0FF
 00418674    pop         ecx
 00418675    mov         byte ptr [ecx],dl
 00418677    inc         dword ptr [ebx+10]
 0041867A    mov         edx,dword ptr [ebx+10]
 0041867D    mov         ecx,dword ptr [ebx+4]
 00418680    lea         edx,[ecx+edx]
 00418683    push        edx
 00418684    movzx       edx,si
 00418687    shr         edx,8
 0041868A    pop         ecx
 0041868B    mov         byte ptr [ecx],dl
 0041868D    inc         dword ptr [ebx+10]
 00418690    mov         edx,dword ptr [ebx+10]
 00418693    mov         ecx,dword ptr [ebx+4]
 00418696    lea         edx,[ecx+edx]
 00418699    push        edx
 0041869A    not         al
 0041869C    and         al,0FF
 0041869E    pop         edx
 0041869F    mov         byte ptr [edx],al
 004186A1    inc         dword ptr [ebx+10]
 004186A4    mov         eax,dword ptr [ebx+10]
 004186A7    mov         edx,dword ptr [ebx+4]
 004186AA    mov         ecx,esi
 004186AC    not         cx
 004186AF    movzx       ecx,cx
 004186B2    shr         ecx,8
 004186B5    mov         byte ptr [edx+eax],cl
 004186B8    inc         dword ptr [ebx+10]
 004186BB    test        esi,esi
>004186BD    jbe         004186D3
 004186BF    dec         esi
 004186C0    mov         eax,dword ptr [ebx+10]
 004186C3    mov         edx,dword ptr [ebx+4]
 004186C6    mov         cl,byte ptr [edi]
 004186C8    mov         byte ptr [edx+eax],cl
 004186CB    inc         edi
 004186CC    inc         dword ptr [ebx+10]
 004186CF    test        esi,esi
>004186D1    ja          004186BF
 004186D3    pop         edi
 004186D4    pop         esi
 004186D5    pop         ebx
 004186D6    pop         ebp
 004186D7    ret         4
end;*}

//004186DC
{*procedure sub_004186DC(?:?; ?:?; ?:?; ?:?);
begin
 004186DC    push        ebp
 004186DD    mov         ebp,esp
 004186DF    push        ebx
 004186E0    push        esi
 004186E1    push        edi
 004186E2    mov         esi,ecx
 004186E4    mov         edi,edx
 004186E6    mov         ebx,eax
 004186E8    xor         edx,edx
 004186EA    mov         dl,byte ptr [ebp+8]
 004186ED    mov         eax,ebx
 004186EF    mov         ecx,3
 004186F4    call        004181E8
 004186F9    mov         eax,dword ptr [ebx+1680]
 004186FF    add         eax,0A
 00418702    and         eax,0FFFFFFF8
 00418705    mov         dword ptr [ebx+1680],eax
 0041870B    lea         eax,[esi+4]
 0041870E    shl         eax,3
 00418711    add         dword ptr [ebx+1680],eax
 00418717    push        1
 00418719    mov         eax,ebx
 0041871B    mov         ecx,esi
 0041871D    mov         edx,edi
 0041871F    call        00418640
 00418724    pop         edi
 00418725    pop         esi
 00418726    pop         ebx
 00418727    pop         ebp
 00418728    ret         4
end;*}

//0041872C
{*procedure sub_0041872C(?:?; ?:?; ?:?);
begin
 0041872C    push        ebp
 0041872D    mov         ebp,esp
 0041872F    add         esp,0FFFFFFF4
 00418732    push        ebx
 00418733    push        esi
 00418734    push        edi
 00418735    mov         dword ptr [ebp-4],edx
 00418738    mov         ebx,eax
 0041873A    xor         edi,edi
 0041873C    cmp         dword ptr [ebx+1670],0
>00418743    je          00418846
 00418749    mov         eax,dword ptr [ebx+1674]
 0041874F    movzx       eax,word ptr [eax+edi*2]
 00418753    mov         dword ptr [ebp-8],eax
 00418756    mov         eax,dword ptr [ebx+1668]
 0041875C    movzx       eax,byte ptr [eax+edi]
 00418760    mov         dword ptr [ebp-0C],eax
 00418763    inc         edi
 00418764    cmp         dword ptr [ebp-8],0
>00418768    jne         0041878B
 0041876A    mov         eax,dword ptr [ebp-4]
 0041876D    mov         edx,dword ptr [ebp-0C]
 00418770    movzx       ecx,word ptr [eax+edx*4+2]
 00418775    mov         eax,dword ptr [ebp-4]
 00418778    mov         edx,dword ptr [ebp-0C]
 0041877B    mov         dx,word ptr [eax+edx*4]
 0041877F    mov         eax,ebx
 00418781    call        004181E8
>00418786    jmp         0041883A
 0041878B    mov         eax,dword ptr [ebp-0C]
 0041878E    movzx       esi,byte ptr [eax+53E378]
 00418795    lea         eax,[esi+100]
 0041879B    mov         edx,dword ptr [ebp-4]
 0041879E    movzx       edx,word ptr [edx+eax*4+6]
 004187A3    push        edx
 004187A4    mov         edx,dword ptr [ebp-4]
 004187A7    mov         dx,word ptr [edx+eax*4+4]
 004187AC    mov         eax,ebx
 004187AE    pop         ecx
 004187AF    call        004181E8
 004187B4    mov         eax,dword ptr [esi*4+53E564]
 004187BB    test        eax,eax
>004187BD    je          004187D7
 004187BF    mov         edx,dword ptr [esi*4+53E478]
 004187C6    sub         dword ptr [ebp-0C],edx
 004187C9    mov         edx,ebx
 004187CB    mov         ecx,eax
 004187CD    mov         ax,word ptr [ebp-0C]
 004187D1    xchg        eax,edx
 004187D2    call        004181E8
 004187D7    dec         dword ptr [ebp-8]
 004187DA    cmp         dword ptr [ebp-8],100
>004187E1    jae         004187EF
 004187E3    mov         eax,dword ptr [ebp-8]
 004187E6    movzx       esi,byte ptr [eax+53E178]
>004187ED    jmp         00418801
 004187EF    mov         eax,dword ptr [ebp-8]
 004187F2    shr         eax,7
 004187F5    add         eax,100
 004187FA    movzx       esi,byte ptr [eax+53E178]
 00418801    mov         eax,dword ptr [ebp+0C]
 00418804    movzx       ecx,word ptr [eax+esi*4+2]
 00418809    mov         eax,dword ptr [ebp+0C]
 0041880C    mov         dx,word ptr [eax+esi*4]
 00418810    mov         eax,ebx
 00418812    call        004181E8
 00418817    mov         eax,dword ptr [esi*4+53E5D8]
 0041881E    test        eax,eax
>00418820    je          0041883A
 00418822    mov         edx,dword ptr [esi*4+53E4EC]
 00418829    sub         dword ptr [ebp-8],edx
 0041882C    mov         edx,ebx
 0041882E    mov         ecx,eax
 00418830    mov         ax,word ptr [ebp-8]
 00418834    xchg        eax,edx
 00418835    call        004181E8
 0041883A    cmp         edi,dword ptr [ebx+1670]
>00418840    jb          00418749
 00418846    mov         ecx,dword ptr [ebp-4]
 00418849    movzx       ecx,word ptr [ecx+402]
 00418850    mov         edx,dword ptr [ebp-4]
 00418853    mov         dx,word ptr [edx+400]
 0041885A    mov         eax,ebx
 0041885C    call        004181E8
 00418861    mov         eax,dword ptr [ebp-4]
 00418864    movzx       eax,word ptr [eax+402]
 0041886B    mov         dword ptr [ebx+1688],eax
 00418871    pop         edi
 00418872    pop         esi
 00418873    pop         ebx
 00418874    mov         esp,ebp
 00418876    pop         ebp
 00418877    ret         8
end;*}

//0041887C
{*function sub_0041887C(?:?; ?:?; ?:?; ?:?):?;
begin
 0041887C    push        ebp
 0041887D    mov         ebp,esp
 0041887F    add         esp,0FFFFFFF8
 00418882    push        ebx
 00418883    push        esi
 00418884    mov         dword ptr [ebp-4],ecx
 00418887    mov         esi,edx
 00418889    mov         ebx,eax
 0041888B    lea         edx,[ebx+0AE8]
 00418891    mov         eax,ebx
 00418893    call        00417F3C
 00418898    lea         edx,[ebx+0AF4]
 0041889E    mov         eax,ebx
 004188A0    call        00417F3C
 004188A5    mov         eax,ebx
 004188A7    call        004185CC
 004188AC    mov         dword ptr [ebp-8],eax
 004188AF    mov         eax,dword ptr [ebx+1678]
 004188B5    add         eax,0A
 004188B8    shr         eax,3
 004188BB    mov         edx,dword ptr [ebx+167C]
 004188C1    add         edx,0A
 004188C4    shr         edx,3
 004188C7    cmp         eax,edx
>004188C9    jl          004188CD
 004188CB    mov         eax,edx
 004188CD    mov         ecx,dword ptr [ebp-4]
 004188D0    add         ecx,4
 004188D3    cmp         eax,ecx
>004188D5    jl          004188F0
 004188D7    test        esi,esi
>004188D9    je          004188F0
 004188DB    mov         al,byte ptr [ebp+8]
 004188DE    push        eax
 004188DF    mov         eax,ebx
 004188E1    mov         ecx,dword ptr [ebp-4]
 004188E4    mov         edx,esi
 004188E6    call        004186DC
>004188EB    jmp         00418988
 004188F0    cmp         eax,edx
>004188F2    jne         00418932
 004188F4    xor         edx,edx
 004188F6    mov         dl,byte ptr [ebp+8]
 004188F9    add         dx,2
 004188FD    mov         eax,ebx
 004188FF    mov         ecx,3
 00418904    call        004181E8
 00418909    push        53E100
 0041890E    push        1D
 00418910    mov         edx,53DC80
 00418915    mov         eax,ebx
 00418917    mov         ecx,11F
 0041891C    call        0041872C
 00418921    mov         eax,dword ptr [ebx+167C]
 00418927    add         eax,3
 0041892A    add         dword ptr [ebx+1680],eax
>00418930    jmp         00418988
 00418932    xor         edx,edx
 00418934    mov         dl,byte ptr [ebp+8]
 00418937    add         dx,4
 0041893B    mov         eax,ebx
 0041893D    mov         ecx,3
 00418942    call        004181E8
 00418947    mov         eax,dword ptr [ebp-8]
 0041894A    inc         eax
 0041894B    push        eax
 0041894C    mov         ecx,dword ptr [ebx+0AF8]
 00418952    inc         ecx
 00418953    mov         edx,dword ptr [ebx+0AEC]
 00418959    inc         edx
 0041895A    mov         eax,ebx
 0041895C    call        00418418
 00418961    lea         eax,[ebx+958]
 00418967    push        eax
 00418968    push        3C
 0041896A    lea         edx,[ebx+64]
 0041896D    mov         eax,ebx
 0041896F    mov         ecx,23C
 00418974    call        0041872C
 00418979    mov         eax,dword ptr [ebx+1678]
 0041897F    add         eax,3
 00418982    add         dword ptr [ebx+1680],eax
 00418988    mov         eax,ebx
 0041898A    call        00417AE8
 0041898F    cmp         byte ptr [ebp+8],0
>00418993    je          004189A3
 00418995    mov         eax,ebx
 00418997    call        00418184
 0041899C    add         dword ptr [ebx+1680],7
 004189A3    mov         eax,dword ptr [ebx+1680]
 004189A9    shr         eax,3
 004189AC    pop         esi
 004189AD    pop         ebx
 004189AE    pop         ecx
 004189AF    pop         ecx
 004189B0    pop         ebp
 004189B1    ret         4
end;*}

//004189B4
procedure sub_004189B4(?:Pointer);
begin
{*
 004189B4    push        ebp
 004189B5    mov         ebp,esp
 004189B7    push        ebx
 004189B8    mov         ebx,eax
 004189BA    mov         eax,dword ptr [ebx+44]
 004189BD    test        eax,eax
>004189BF    jl          004189D5
 004189C1    push        edx
 004189C2    mov         ecx,dword ptr [ebx+54]
 004189C5    sub         ecx,eax
 004189C7    mov         edx,dword ptr [ebx+20]
 004189CA    add         edx,eax
 004189CC    mov         eax,ebx
 004189CE    call        0041887C
>004189D3    jmp         004189E4
 004189D5    push        edx
 004189D6    mov         ecx,dword ptr [ebx+54]
 004189D9    sub         ecx,eax
 004189DB    mov         eax,ebx
 004189DD    xor         edx,edx
 004189DF    call        0041887C
 004189E4    mov         eax,dword ptr [ebx+54]
 004189E7    mov         dword ptr [ebx+44],eax
 004189EA    push        ebp
 004189EB    mov         eax,dword ptr [ebx]
 004189ED    call        00417B54
 004189F2    pop         ecx
 004189F3    pop         ebx
 004189F4    pop         ebp
 004189F5    ret
*}
end;

//004189F8
{*function sub_004189F8(?:Pointer; ?:?; ?:?):Boolean;
begin
 004189F8    push        ebx
 004189F9    push        esi
 004189FA    mov         ebx,dword ptr [eax+1670]
 00418A00    mov         esi,dword ptr [eax+1674]
 00418A06    mov         word ptr [esi+ebx*2],dx
 00418A0A    mov         ebx,dword ptr [eax+1670]
 00418A10    mov         esi,dword ptr [eax+1668]
 00418A16    lea         ebx,[esi+ebx]
 00418A19    push        ebx
 00418A1A    pop         ebx
 00418A1B    mov         byte ptr [ebx],cl
 00418A1D    inc         dword ptr [eax+1670]
 00418A23    test        edx,edx
>00418A25    jne         00418A2E
 00418A27    inc         word ptr [eax+ecx*4+64]
>00418A2C    jmp         00418A73
 00418A2E    inc         dword ptr [eax+1684]
 00418A34    dec         edx
 00418A35    cmp         edx,100
>00418A3B    jae         00418A46
 00418A3D    movzx       edx,byte ptr [edx+53E178]
>00418A44    jmp         00418A56
 00418A46    shr         edx,7
 00418A49    add         edx,100
 00418A4F    movzx       edx,byte ptr [edx+53E178]
 00418A56    movzx       ecx,byte ptr [ecx+53E378]
 00418A5D    add         ecx,100
 00418A63    inc         word ptr [eax+ecx*4+68]
 00418A68    movzx       edx,dx
 00418A6B    inc         word ptr [eax+edx*4+958]
 00418A73    mov         edx,dword ptr [eax+1670]
 00418A79    mov         eax,dword ptr [eax+166C]
 00418A7F    dec         eax
 00418A80    cmp         edx,eax
 00418A82    sete        al
 00418A85    pop         esi
 00418A86    pop         ebx
 00418A87    ret
end;*}

//00418A88
{*procedure sub_00418A88(?:Pointer; ?:?; ?:?);
begin
 00418A88    push        ebx
 00418A89    push        esi
 00418A8A    mov         ebx,ecx
 00418A8C    mov         ecx,dword ptr [eax+40]
 00418A8F    mov         esi,dword ptr [eax+30]
 00418A92    shl         esi,cl
 00418A94    mov         ecx,dword ptr [eax+20]
 00418A97    movzx       ecx,byte ptr [ecx+edx+2]
 00418A9C    xor         esi,ecx
 00418A9E    and         esi,dword ptr [eax+3C]
 00418AA1    mov         dword ptr [eax+30],esi
 00418AA4    mov         ecx,dword ptr [eax+30]
 00418AA7    mov         esi,dword ptr [eax+2C]
 00418AAA    movzx       ecx,word ptr [esi+ecx*2]
 00418AAE    mov         dword ptr [ebx],ecx
 00418AB0    mov         ecx,dword ptr [eax+1C]
 00418AB3    and         ecx,edx
 00418AB5    mov         esi,dword ptr [eax+28]
 00418AB8    mov         ebx,dword ptr [ebx]
 00418ABA    mov         word ptr [esi+ecx*2],bx
 00418ABE    mov         ecx,dword ptr [eax+30]
 00418AC1    mov         eax,dword ptr [eax+2C]
 00418AC4    mov         word ptr [eax+ecx*2],dx
 00418AC8    pop         esi
 00418AC9    pop         ebx
 00418ACA    ret
end;*}

//00418ACC
{*procedure sub_00418ACC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00418ACC    push        ebp
 00418ACD    mov         ebp,esp
 00418ACF    add         esp,0FFFFFFB0
 00418AD2    push        ebx
 00418AD3    push        esi
 00418AD4    push        edi
 00418AD5    mov         dword ptr [ebp-8],ecx
 00418AD8    mov         dword ptr [ebp-10],edx
 00418ADB    mov         dword ptr [ebp-4],eax
 00418ADE    lea         esi,[ebp-28]
 00418AE1    mov         dword ptr [ebp-20],0
 00418AE8    mov         dword ptr [ebp-1C],0
 00418AEF    xor         eax,eax
 00418AF1    mov         dword ptr [ebp-0C],eax
 00418AF4    xor         eax,eax
 00418AF6    mov         dword ptr [ebp-14],eax
 00418AF9    lea         eax,[ebp-50]
 00418AFC    mov         edx,28
 00418B01    call        00408130
 00418B06    mov         eax,dword ptr [ebp+20]
 00418B09    mov         dword ptr [ebp-50],eax
 00418B0C    mov         eax,dword ptr [ebp+14]
 00418B0F    mov         dword ptr [ebp-4C],eax
 00418B12    mov         eax,dword ptr [ebp+1C]
 00418B15    mov         dword ptr [ebp-40],eax
 00418B18    mov         eax,dword ptr [ebp+0C]
 00418B1B    mov         dword ptr [ebp-3C],eax
 00418B1E    mov         dword ptr [ebp-38],0
 00418B25    mov         dword ptr [ebp-34],0
 00418B2C    mov         dword ptr [ebp-48],0
 00418B33    mov         dword ptr [ebp-44],0
 00418B3A    cmp         dword ptr [ebp+8],0
>00418B3E    je          00418B49
 00418B40    mov         eax,dword ptr [ebp+8]
 00418B43    mov         dword ptr [eax],0FFFFFFFF
 00418B49    push        ebp
 00418B4A    lea         eax,[ebp-50]
 00418B4D    call        00417490
 00418B52    pop         ecx
 00418B53    push        ebp
 00418B54    lea         eax,[ebp-50]
 00418B57    call        00417680
 00418B5C    pop         ecx
 00418B5D    mov         eax,1694
 00418B62    call        @GetMem
 00418B67    mov         dword ptr [ebp-24],eax
 00418B6A    mov         edx,1694
 00418B6F    mov         eax,dword ptr [ebp-24]
 00418B72    call        00408130
 00418B77    xor         ecx,ecx
 00418B79    push        ebp
 00418B7A    push        418F5B
 00418B7F    push        dword ptr fs:[ecx]
 00418B82    mov         dword ptr fs:[ecx],esp
 00418B85    mov         eax,dword ptr [ebp-24]
 00418B88    mov         dword ptr [ebp-30],eax
 00418B8B    lea         eax,[ebp-50]
 00418B8E    mov         edx,dword ptr [ebp-24]
 00418B91    mov         dword ptr [edx],eax
 00418B93    mov         edx,dword ptr [ebp-24]
 00418B96    mov         eax,8000
 00418B9B    mov         dword ptr [edx+14],eax
 00418B9E    dec         eax
 00418B9F    mov         edx,dword ptr [ebp-24]
 00418BA2    mov         dword ptr [edx+1C],eax
 00418BA5    mov         edx,dword ptr [ebp-24]
 00418BA8    mov         eax,0F
 00418BAD    mov         dword ptr [edx+38],eax
 00418BB0    mov         ecx,eax
 00418BB2    mov         edx,1
 00418BB7    shl         edx,cl
 00418BB9    mov         eax,dword ptr [ebp-24]
 00418BBC    mov         dword ptr [eax+34],edx
 00418BBF    dec         edx
 00418BC0    mov         eax,dword ptr [ebp-24]
 00418BC3    mov         dword ptr [eax+3C],edx
 00418BC6    mov         eax,dword ptr [ebp-24]
 00418BC9    mov         eax,dword ptr [eax+38]
 00418BCC    add         eax,3
 00418BCF    dec         eax
 00418BD0    mov         ecx,3
 00418BD5    xor         edx,edx
 00418BD7    div         eax,ecx
 00418BD9    mov         edx,dword ptr [ebp-24]
 00418BDC    mov         dword ptr [edx+40],eax
 00418BDF    mov         eax,dword ptr [ebp-24]
 00418BE2    mov         eax,dword ptr [eax+14]
 00418BE5    add         eax,eax
 00418BE7    call        @GetMem
 00418BEC    mov         edx,dword ptr [ebp-24]
 00418BEF    mov         dword ptr [edx+20],eax
 00418BF2    mov         eax,dword ptr [ebp-24]
 00418BF5    mov         eax,dword ptr [eax+14]
 00418BF8    add         eax,eax
 00418BFA    call        @GetMem
 00418BFF    mov         edx,dword ptr [ebp-24]
 00418C02    mov         dword ptr [edx+28],eax
 00418C05    mov         eax,dword ptr [ebp-24]
 00418C08    mov         eax,dword ptr [eax+34]
 00418C0B    add         eax,eax
 00418C0D    call        @GetMem
 00418C12    mov         edx,dword ptr [ebp-24]
 00418C15    mov         dword ptr [edx+2C],eax
 00418C18    mov         edx,dword ptr [ebp-24]
 00418C1B    mov         eax,4000
 00418C20    mov         dword ptr [edx+166C],eax
 00418C26    push        40
 00418C28    push        1000
 00418C2D    shl         eax,2
 00418C30    push        eax
 00418C31    push        0
 00418C33    call        kernel32.VirtualAlloc
 00418C38    mov         edx,dword ptr [ebp-24]
 00418C3B    mov         dword ptr [edx+4],eax
 00418C3E    mov         edx,dword ptr [ebp-24]
 00418C41    mov         edx,dword ptr [edx+166C]
 00418C47    shl         edx,2
 00418C4A    mov         ecx,dword ptr [ebp-24]
 00418C4D    mov         dword ptr [ecx+8],edx
 00418C50    mov         edx,dword ptr [ebp-24]
 00418C53    mov         edx,dword ptr [edx+166C]
 00418C59    shr         edx,1
 00418C5B    lea         eax,[eax+edx*2]
 00418C5E    mov         edx,dword ptr [ebp-24]
 00418C61    mov         dword ptr [edx+1674],eax
 00418C67    mov         eax,dword ptr [ebp-24]
 00418C6A    mov         eax,dword ptr [eax+166C]
 00418C70    lea         eax,[eax+eax*2]
 00418C73    mov         edx,dword ptr [ebp-24]
 00418C76    mov         edx,dword ptr [edx+4]
 00418C79    lea         eax,[edx+eax]
 00418C7C    mov         edx,dword ptr [ebp-24]
 00418C7F    mov         dword ptr [edx+1668],eax
 00418C85    mov         eax,dword ptr [ebp-24]
 00418C88    xor         edx,edx
 00418C8A    mov         dword ptr [eax+10],edx
 00418C8D    mov         eax,dword ptr [ebp-24]
 00418C90    mov         eax,dword ptr [eax+4]
 00418C93    mov         edx,dword ptr [ebp-24]
 00418C96    mov         dword ptr [edx+0C],eax
 00418C99    mov         eax,dword ptr [ebp-24]
 00418C9C    xor         edx,edx
 00418C9E    mov         dword ptr [eax+1680],edx
 00418CA4    mov         eax,dword ptr [ebp-24]
 00418CA7    add         eax,64
 00418CAA    mov         edx,dword ptr [ebp-24]
 00418CAD    mov         dword ptr [edx+0AE8],eax
 00418CB3    mov         eax,dword ptr [ebp-24]
 00418CB6    mov         dword ptr [eax+0AF0],53E6B0
 00418CC0    mov         eax,dword ptr [ebp-24]
 00418CC3    add         eax,958
 00418CC8    mov         edx,dword ptr [ebp-24]
 00418CCB    mov         dword ptr [edx+0AF4],eax
 00418CD1    mov         eax,dword ptr [ebp-24]
 00418CD4    mov         dword ptr [eax+0AFC],53E6C4
 00418CDE    mov         eax,dword ptr [ebp-24]
 00418CE1    add         eax,0A4C
 00418CE6    mov         edx,dword ptr [ebp-24]
 00418CE9    mov         dword ptr [edx+0B00],eax
 00418CEF    mov         eax,dword ptr [ebp-24]
 00418CF2    mov         dword ptr [eax+0B08],53E6D8
 00418CFC    mov         eax,dword ptr [ebp-24]
 00418CFF    mov         word ptr [eax+168C],0
 00418D08    mov         eax,dword ptr [ebp-24]
 00418D0B    xor         edx,edx
 00418D0D    mov         dword ptr [eax+1690],edx
 00418D13    mov         eax,dword ptr [ebp-24]
 00418D16    mov         dword ptr [eax+1688],8
 00418D20    mov         eax,dword ptr [ebp-24]
 00418D23    call        00417AE8
 00418D28    mov         eax,dword ptr [ebp-24]
 00418D2B    mov         eax,dword ptr [eax+14]
 00418D2E    add         eax,eax
 00418D30    mov         edx,dword ptr [ebp-24]
 00418D33    mov         dword ptr [edx+24],eax
 00418D36    mov         eax,dword ptr [ebp-24]
 00418D39    mov         eax,dword ptr [eax+34]
 00418D3C    mov         edx,dword ptr [ebp-24]
 00418D3F    mov         edx,dword ptr [edx+2C]
 00418D42    mov         word ptr [edx+eax*2-2],0
 00418D49    mov         eax,dword ptr [ebp-24]
 00418D4C    mov         eax,dword ptr [eax+34]
 00418D4F    dec         eax
 00418D50    mov         edx,eax
 00418D52    add         edx,edx
 00418D54    mov         eax,dword ptr [ebp-24]
 00418D57    mov         eax,dword ptr [eax+2C]
 00418D5A    call        00408130
 00418D5F    mov         eax,dword ptr [ebp-24]
 00418D62    xor         edx,edx
 00418D64    mov         dword ptr [eax+54],edx
 00418D67    mov         eax,dword ptr [ebp-24]
 00418D6A    xor         edx,edx
 00418D6C    mov         dword ptr [eax+44],edx
 00418D6F    mov         eax,dword ptr [ebp-24]
 00418D72    xor         edx,edx
 00418D74    mov         dword ptr [eax+5C],edx
 00418D77    mov         eax,dword ptr [ebp-24]
 00418D7A    mov         dword ptr [eax+60],2
 00418D81    mov         eax,dword ptr [ebp-24]
 00418D84    mov         dword ptr [eax+48],2
 00418D8B    mov         eax,dword ptr [ebp-24]
 00418D8E    mov         byte ptr [eax+50],0
 00418D92    mov         eax,dword ptr [ebp-24]
 00418D95    xor         edx,edx
 00418D97    mov         dword ptr [eax+30],edx
 00418D9A    xor         eax,eax
 00418D9C    mov         dword ptr [esi],eax
 00418D9E    mov         eax,dword ptr [ebp-24]
 00418DA1    cmp         dword ptr [eax+5C],106
>00418DA8    jae         00418DF5
 00418DAA    push        ebp
 00418DAB    mov         ebx,dword ptr [ebp-24]
 00418DAE    mov         eax,ebx
 00418DB0    call        0041797C
 00418DB5    pop         ecx
 00418DB6    mov         eax,dword ptr [ebp-24]
 00418DB9    cmp         dword ptr [eax+5C],0
>00418DBD    jne         00418DF5
 00418DBF    push        ebp
 00418DC0    mov         eax,ebx
 00418DC2    mov         dl,1
 00418DC4    call        004189B4
 00418DC9    pop         ecx
 00418DCA    cmp         dword ptr [ebp-3C],0
>00418DCE    je          00418F47
 00418DD4    mov         eax,dword ptr [ebp-38]
 00418DD7    mov         edx,dword ptr [ebp-34]
 00418DDA    push        edx
 00418DDB    push        eax
 00418DDC    mov         eax,dword ptr [ebp+24]
 00418DDF    xor         edx,edx
 00418DE1    sub         dword ptr [esp],eax
 00418DE4    sbb         dword ptr [esp+4],edx
 00418DE8    pop         eax
 00418DE9    pop         edx
 00418DEA    mov         dword ptr [ebp-20],eax
 00418DED    mov         dword ptr [ebp-1C],edx
>00418DF0    jmp         00418F47
 00418DF5    mov         eax,dword ptr [ebp-24]
 00418DF8    cmp         dword ptr [eax+5C],3
>00418DFC    jb          00418E0E
 00418DFE    mov         ecx,esi
 00418E00    mov         eax,dword ptr [ebp-24]
 00418E03    mov         edx,dword ptr [eax+54]
 00418E06    mov         eax,dword ptr [ebp-24]
 00418E09    call        00418A88
 00418E0E    cmp         dword ptr [esi],0
>00418E11    je          00418E3B
 00418E13    mov         eax,dword ptr [ebp-24]
 00418E16    mov         eax,dword ptr [eax+54]
 00418E19    sub         eax,dword ptr [esi]
 00418E1B    mov         edx,dword ptr [ebp-24]
 00418E1E    mov         edx,dword ptr [edx+14]
 00418E21    sub         edx,106
 00418E27    cmp         eax,edx
>00418E29    ja          00418E3B
 00418E2B    mov         eax,dword ptr [ebp-24]
 00418E2E    mov         edx,dword ptr [esi]
 00418E30    call        00417794
 00418E35    mov         edx,dword ptr [ebp-24]
 00418E38    mov         dword ptr [edx+48],eax
 00418E3B    mov         eax,dword ptr [ebp-24]
 00418E3E    mov         eax,dword ptr [eax+48]
 00418E41    cmp         eax,3
>00418E44    jb          00418F05
 00418E4A    mov         edx,dword ptr [ebp-24]
 00418E4D    mov         edx,dword ptr [edx+54]
 00418E50    mov         ecx,dword ptr [ebp-24]
 00418E53    sub         edx,dword ptr [ecx+58]
 00418E56    mov         ecx,eax
 00418E58    sub         ecx,3
 00418E5B    mov         eax,dword ptr [ebp-24]
 00418E5E    call        004189F8
 00418E63    mov         ebx,eax
 00418E65    mov         eax,dword ptr [ebp-24]
 00418E68    mov         eax,dword ptr [eax+48]
 00418E6B    mov         edx,dword ptr [ebp-24]
 00418E6E    sub         dword ptr [edx+5C],eax
 00418E71    mov         eax,dword ptr [ebp-24]
 00418E74    mov         eax,dword ptr [eax+48]
 00418E77    cmp         eax,5
>00418E7A    ja          00418EB8
 00418E7C    mov         edx,dword ptr [ebp-24]
 00418E7F    cmp         dword ptr [edx+5C],3
>00418E83    jb          00418EB8
 00418E85    mov         eax,dword ptr [ebp-24]
 00418E88    dec         dword ptr [eax+48]
 00418E8B    mov         eax,dword ptr [ebp-24]
 00418E8E    inc         dword ptr [eax+54]
 00418E91    mov         ecx,esi
 00418E93    mov         eax,dword ptr [ebp-24]
 00418E96    mov         edx,dword ptr [eax+54]
 00418E99    mov         eax,dword ptr [ebp-24]
 00418E9C    call        00418A88
 00418EA1    mov         eax,dword ptr [ebp-24]
 00418EA4    dec         dword ptr [eax+48]
 00418EA7    mov         eax,dword ptr [ebp-24]
 00418EAA    cmp         dword ptr [eax+48],0
>00418EAE    jne         00418E8B
 00418EB0    mov         eax,dword ptr [ebp-24]
 00418EB3    inc         dword ptr [eax+54]
>00418EB6    jmp         00418F2E
 00418EB8    mov         edx,dword ptr [ebp-24]
 00418EBB    add         dword ptr [edx+54],eax
 00418EBE    mov         eax,dword ptr [ebp-24]
 00418EC1    xor         edx,edx
 00418EC3    mov         dword ptr [eax+48],edx
 00418EC6    mov         eax,dword ptr [ebp-24]
 00418EC9    mov         eax,dword ptr [eax+54]
 00418ECC    mov         edx,dword ptr [ebp-24]
 00418ECF    mov         edx,dword ptr [edx+20]
 00418ED2    movzx       eax,byte ptr [edx+eax]
 00418ED6    mov         edx,dword ptr [ebp-24]
 00418ED9    mov         dword ptr [edx+30],eax
 00418EDC    mov         edx,dword ptr [ebp-24]
 00418EDF    mov         ecx,dword ptr [edx+40]
 00418EE2    shl         eax,cl
 00418EE4    mov         edx,dword ptr [ebp-24]
 00418EE7    mov         edx,dword ptr [edx+54]
 00418EEA    mov         ecx,dword ptr [ebp-24]
 00418EED    mov         ecx,dword ptr [ecx+20]
 00418EF0    movzx       edx,byte ptr [ecx+edx+1]
 00418EF5    xor         eax,edx
 00418EF7    mov         edx,dword ptr [ebp-24]
 00418EFA    and         eax,dword ptr [edx+3C]
 00418EFD    mov         edx,dword ptr [ebp-24]
 00418F00    mov         dword ptr [edx+30],eax
>00418F03    jmp         00418F2E
 00418F05    mov         eax,dword ptr [ebp-24]
 00418F08    mov         eax,dword ptr [eax+54]
 00418F0B    mov         edx,dword ptr [ebp-24]
 00418F0E    mov         edx,dword ptr [edx+20]
 00418F11    xor         ecx,ecx
 00418F13    mov         cl,byte ptr [edx+eax]
 00418F16    mov         eax,dword ptr [ebp-24]
 00418F19    xor         edx,edx
 00418F1B    call        004189F8
 00418F20    mov         ebx,eax
 00418F22    mov         eax,dword ptr [ebp-24]
 00418F25    dec         dword ptr [eax+5C]
 00418F28    mov         eax,dword ptr [ebp-24]
 00418F2B    inc         dword ptr [eax+54]
 00418F2E    test        bl,bl
>00418F30    je          00418D9E
 00418F36    push        ebp
 00418F37    mov         eax,dword ptr [ebp-24]
 00418F3A    xor         edx,edx
 00418F3C    call        004189B4
 00418F41    pop         ecx
>00418F42    jmp         00418D9E
 00418F47    push        ebp
 00418F48    lea         eax,[ebp-50]
 00418F4B    call        004175E0
 00418F50    pop         ecx
 00418F51    xor         eax,eax
 00418F53    pop         edx
 00418F54    pop         ecx
 00418F55    pop         ecx
 00418F56    mov         dword ptr fs:[eax],edx
>00418F59    jmp         00418F73
>00418F5B    jmp         @HandleAnyException
 00418F60    mov         dword ptr [ebp-20],0
 00418F67    mov         dword ptr [ebp-1C],0
 00418F6E    call        @DoneExcept
 00418F73    cmp         dword ptr [ebp-8],0
>00418F77    je          00418F88
 00418F79    cmp         dword ptr [ebp+20],0
>00418F7D    je          00418F88
 00418F7F    mov         eax,dword ptr [ebp+20]
 00418F82    push        eax
 00418F83    call        kernel32.UnmapViewOfFile
 00418F88    cmp         dword ptr [ebp+28],0
>00418F8C    je          00418F9D
 00418F8E    cmp         dword ptr [ebp+1C],0
>00418F92    je          00418F9D
 00418F94    mov         eax,dword ptr [ebp+1C]
 00418F97    push        eax
 00418F98    call        kernel32.UnmapViewOfFile
 00418F9D    push        8000
 00418FA2    push        0
 00418FA4    mov         eax,dword ptr [ebp-24]
 00418FA7    mov         eax,dword ptr [eax+4]
 00418FAA    push        eax
 00418FAB    call        kernel32.VirtualFree
 00418FB0    mov         eax,dword ptr [ebp-24]
 00418FB3    mov         eax,dword ptr [eax+2C]
 00418FB6    call        @FreeMem
 00418FBB    mov         eax,dword ptr [ebp-24]
 00418FBE    mov         eax,dword ptr [eax+28]
 00418FC1    call        @FreeMem
 00418FC6    mov         eax,dword ptr [ebp-24]
 00418FC9    mov         eax,dword ptr [eax+20]
 00418FCC    call        @FreeMem
 00418FD1    mov         eax,dword ptr [ebp-24]
 00418FD4    call        @FreeMem
 00418FD9    cmp         dword ptr [ebp-0C],0
>00418FDD    je          00418FEF
 00418FDF    push        8000
 00418FE4    push        0
 00418FE6    mov         eax,dword ptr [ebp-0C]
 00418FE9    push        eax
 00418FEA    call        kernel32.VirtualFree
 00418FEF    cmp         dword ptr [ebp-14],0
>00418FF3    je          00419005
 00418FF5    push        8000
 00418FFA    push        0
 00418FFC    mov         eax,dword ptr [ebp-14]
 00418FFF    push        eax
 00419000    call        kernel32.VirtualFree
 00419005    cmp         dword ptr [ebp+8],0
>00419009    je          00419010
 0041900B    mov         eax,dword ptr [ebp+8]
 0041900E    not         dword ptr [eax]
 00419010    mov         eax,dword ptr [ebp-20]
 00419013    mov         edx,dword ptr [ebp-1C]
 00419016    pop         edi
 00419017    pop         esi
 00419018    pop         ebx
 00419019    mov         esp,ebp
 0041901B    pop         ebp
 0041901C    ret         24
end;*}

//00419020
{*procedure sub_00419020(?:Byte; ?:?);
begin
 00419020    push        ebp
 00419021    mov         ebp,esp
 00419023    push        ecx
 00419024    push        ebx
 00419025    push        esi
 00419026    mov         ebx,eax
 00419028    mov         eax,dword ptr [ebp+8]
 0041902B    cmp         dword ptr [eax-4],0
>0041902F    je          0041916D
 00419035    mov         eax,dword ptr [ebp+8]
 00419038    cmp         dword ptr [eax+20],0
>0041903C    je          00419048
 0041903E    cmp         dword ptr [ebx+4],0
>00419042    jne         0041916D
 00419048    mov         eax,dword ptr [ebp+8]
 0041904B    cmp         dword ptr [eax-8],0
>0041904F    je          0041906E
 00419051    mov         eax,dword ptr [ebp+8]
 00419054    cmp         dword ptr [eax+20],0
>00419058    je          0041906E
 0041905A    mov         eax,dword ptr [ebp+8]
 0041905D    mov         eax,dword ptr [eax+20]
 00419060    push        eax
 00419061    call        kernel32.UnmapViewOfFile
 00419066    mov         eax,dword ptr [ebp+8]
 00419069    xor         edx,edx
 0041906B    mov         dword ptr [eax+20],edx
 0041906E    push        0
 00419070    push        100000
 00419075    mov         eax,dword ptr [ebp+8]
 00419078    mov         edx,dword ptr [eax+18]
 0041907B    mov         eax,dword ptr [eax+14]
 0041907E    sub         eax,dword ptr [ebx+8]
 00419081    sbb         edx,dword ptr [ebx+0C]
 00419084    push        edx
 00419085    push        eax
 00419086    call        004173E4
 0041908B    mov         esi,eax
 0041908D    mov         dword ptr [ebx+4],esi
 00419090    test        esi,esi
>00419092    je          0041916D
 00419098    mov         eax,dword ptr [ebp+8]
 0041909B    cmp         dword ptr [eax-8],0
>0041909F    jne         0041911D
 004190A1    mov         eax,dword ptr [ebp+8]
 004190A4    cmp         dword ptr [eax-0C],0
>004190A8    jne         004190C3
 004190AA    push        4
 004190AC    push        1000
 004190B1    push        100000
 004190B6    push        0
 004190B8    call        kernel32.VirtualAlloc
 004190BD    mov         edx,dword ptr [ebp+8]
 004190C0    mov         dword ptr [edx-0C],eax
 004190C3    push        dword ptr [ebx+0C]
 004190C6    push        dword ptr [ebx+8]
 004190C9    mov         eax,dword ptr [ebp+8]
 004190CC    mov         eax,dword ptr [eax-4]
 004190CF    xor         ecx,ecx
 004190D1    xor         edx,edx
 004190D3    call        00417424
 004190D8    test        al,al
>004190DA    je          00419113
 004190DC    push        0
 004190DE    lea         eax,[ebp-4]
 004190E1    push        eax
 004190E2    mov         eax,dword ptr [ebx+4]
 004190E5    push        eax
 004190E6    mov         eax,dword ptr [ebp+8]
 004190E9    mov         eax,dword ptr [eax-0C]
 004190EC    push        eax
 004190ED    mov         eax,dword ptr [ebp+8]
 004190F0    mov         eax,dword ptr [eax-4]
 004190F3    push        eax
 004190F4    call        kernel32.ReadFile
 004190F9    test        eax,eax
>004190FB    je          00419113
 004190FD    mov         eax,dword ptr [ebx+4]
 00419100    cmp         eax,dword ptr [ebp-4]
>00419103    jne         00419113
 00419105    mov         eax,dword ptr [ebp+8]
 00419108    mov         eax,dword ptr [eax-0C]
 0041910B    mov         edx,dword ptr [ebp+8]
 0041910E    mov         dword ptr [edx+20],eax
>00419111    jmp         0041913B
 00419113    mov         eax,dword ptr [ebp+8]
 00419116    xor         edx,edx
 00419118    mov         dword ptr [eax+20],edx
>0041911B    jmp         0041913B
 0041911D    push        dword ptr [ebx+0C]
 00419120    push        dword ptr [ebx+8]
 00419123    mov         ecx,esi
 00419125    mov         eax,dword ptr [ebp+8]
 00419128    mov         eax,dword ptr [eax-8]
 0041912B    mov         edx,4
 00419130    call        00417478
 00419135    mov         edx,dword ptr [ebp+8]
 00419138    mov         dword ptr [edx+20],eax
 0041913B    mov         eax,dword ptr [ebp+8]
 0041913E    mov         eax,dword ptr [eax+20]
 00419141    mov         dword ptr [ebx],eax
 00419143    cmp         dword ptr [ebx+0C],0
>00419147    jne         0041916D
 00419149    cmp         dword ptr [ebx+8],0
>0041914D    jne         0041916D
 0041914F    mov         eax,dword ptr [ebp+8]
 00419152    mov         eax,dword ptr [eax+24]
 00419155    cdq
 00419156    mov         dword ptr [ebx+8],eax
 00419159    mov         dword ptr [ebx+0C],edx
 0041915C    mov         eax,dword ptr [ebp+8]
 0041915F    mov         eax,dword ptr [eax+24]
 00419162    add         dword ptr [ebx],eax
 00419164    mov         eax,dword ptr [ebp+8]
 00419167    mov         eax,dword ptr [eax+24]
 0041916A    sub         dword ptr [ebx+4],eax
 0041916D    pop         esi
 0041916E    pop         ebx
 0041916F    pop         ecx
 00419170    pop         ebp
 00419171    ret
end;*}

//00419174
{*procedure sub_00419174(?:Byte; ?:?);
begin
 00419174    push        ebp
 00419175    mov         ebp,esp
 00419177    push        ecx
 00419178    push        ebx
 00419179    mov         ebx,eax
 0041917B    cmp         dword ptr [ebx+1C],0
>0041917F    jne         0041918D
 00419181    cmp         dword ptr [ebx+18],0
>00419185    jbe         00419228
>0041918B    jmp         00419193
>0041918D    jle         00419228
 00419193    push        0
 00419195    push        100000
 0041919A    mov         eax,dword ptr [ebx+18]
 0041919D    mov         edx,dword ptr [ebx+1C]
 004191A0    call        @_llmod
 004191A5    mov         ebx,eax
 004191A7    test        ebx,ebx
>004191A9    jne         004191B0
 004191AB    mov         ebx,100000
 004191B0    mov         eax,dword ptr [ebp+8]
 004191B3    cmp         dword ptr [eax+1C],0
>004191B7    je          004191DF
 004191B9    mov         eax,dword ptr [ebp+8]
 004191BC    cmp         dword ptr [eax+8],0
>004191C0    je          004191DF
 004191C2    mov         eax,dword ptr [ebp+8]
 004191C5    mov         edx,dword ptr [eax+1C]
 004191C8    mov         eax,dword ptr [ebp+8]
 004191CB    mov         eax,dword ptr [eax+8]
 004191CE    mov         eax,dword ptr [eax]
 004191D0    mov         ecx,ebx
 004191D2    call        0041B4EC
 004191D7    mov         edx,dword ptr [ebp+8]
 004191DA    mov         edx,dword ptr [edx+8]
 004191DD    mov         dword ptr [edx],eax
 004191DF    mov         eax,dword ptr [ebp+8]
 004191E2    cmp         dword ptr [eax-10],0
>004191E6    je          00419228
 004191E8    mov         eax,dword ptr [ebp+8]
 004191EB    cmp         dword ptr [eax+28],0
>004191EF    jne         00419228
 004191F1    push        0
 004191F3    lea         eax,[ebp-4]
 004191F6    push        eax
 004191F7    push        ebx
 004191F8    mov         eax,dword ptr [ebp+8]
 004191FB    mov         eax,dword ptr [eax-14]
 004191FE    push        eax
 004191FF    mov         eax,dword ptr [ebp+8]
 00419202    mov         eax,dword ptr [eax-10]
 00419205    push        eax
 00419206    call        kernel32.WriteFile
 0041920B    test        eax,eax
>0041920D    je          00419214
 0041920F    cmp         ebx,dword ptr [ebp-4]
>00419212    je          00419228
 00419214    mov         edx,419234;'Stream write error.'
 00419219    mov         eax,[004087A8];MadException
 0041921E    call        00408814
 00419223    call        @RaiseExcept
 00419228    pop         ebx
 00419229    pop         ecx
 0041922A    pop         ebp
 0041922B    ret
end;*}

//00419248
{*procedure sub_00419248(?:Byte; ?:?);
begin
 00419248    push        ebp
 00419249    mov         ebp,esp
 0041924B    push        ebx
 0041924C    push        esi
 0041924D    mov         ebx,eax
 0041924F    mov         eax,dword ptr [ebp+8]
 00419252    cmp         dword ptr [eax-10],0
>00419256    je          00419327
 0041925C    mov         eax,dword ptr [ebp+8]
 0041925F    cmp         dword ptr [eax+1C],0
>00419263    je          0041926F
 00419265    cmp         dword ptr [ebx+14],0
>00419269    jne         00419327
 0041926F    mov         eax,dword ptr [ebp+8]
 00419272    push        eax
 00419273    mov         eax,ebx
 00419275    call        00419174
 0041927A    pop         ecx
 0041927B    mov         eax,dword ptr [ebp+8]
 0041927E    cmp         dword ptr [eax+28],0
>00419282    je          004192A1
 00419284    mov         eax,dword ptr [ebp+8]
 00419287    cmp         dword ptr [eax+1C],0
>0041928B    je          004192A1
 0041928D    mov         eax,dword ptr [ebp+8]
 00419290    mov         eax,dword ptr [eax+1C]
 00419293    push        eax
 00419294    call        kernel32.UnmapViewOfFile
 00419299    mov         eax,dword ptr [ebp+8]
 0041929C    xor         edx,edx
 0041929E    mov         dword ptr [eax+1C],edx
 004192A1    push        0
 004192A3    push        100000
 004192A8    mov         eax,dword ptr [ebp+8]
 004192AB    mov         edx,dword ptr [eax+10]
 004192AE    mov         eax,dword ptr [eax+0C]
 004192B1    sub         eax,dword ptr [ebx+18]
 004192B4    sbb         edx,dword ptr [ebx+1C]
 004192B7    push        edx
 004192B8    push        eax
 004192B9    call        004173E4
 004192BE    mov         esi,eax
 004192C0    mov         dword ptr [ebx+14],esi
 004192C3    test        esi,esi
>004192C5    je          00419327
 004192C7    mov         eax,dword ptr [ebp+8]
 004192CA    cmp         dword ptr [eax+28],0
>004192CE    jne         00419300
 004192D0    mov         eax,dword ptr [ebp+8]
 004192D3    cmp         dword ptr [eax-14],0
>004192D7    jne         004192F2
 004192D9    push        4
 004192DB    push        1000
 004192E0    push        100000
 004192E5    push        0
 004192E7    call        kernel32.VirtualAlloc
 004192EC    mov         edx,dword ptr [ebp+8]
 004192EF    mov         dword ptr [edx-14],eax
 004192F2    mov         eax,dword ptr [ebp+8]
 004192F5    mov         eax,dword ptr [eax-14]
 004192F8    mov         edx,dword ptr [ebp+8]
 004192FB    mov         dword ptr [edx+1C],eax
>004192FE    jmp         0041931E
 00419300    push        dword ptr [ebx+1C]
 00419303    push        dword ptr [ebx+18]
 00419306    mov         ecx,esi
 00419308    mov         eax,dword ptr [ebp+8]
 0041930B    mov         eax,dword ptr [eax+28]
 0041930E    mov         edx,0F001F
 00419313    call        00417478
 00419318    mov         edx,dword ptr [ebp+8]
 0041931B    mov         dword ptr [edx+1C],eax
 0041931E    mov         eax,dword ptr [ebp+8]
 00419321    mov         eax,dword ptr [eax+1C]
 00419324    mov         dword ptr [ebx+10],eax
 00419327    pop         esi
 00419328    pop         ebx
 00419329    pop         ebp
 0041932A    ret
end;*}

//0041932C
{*procedure sub_0041932C(?:?);
begin
 0041932C    push        ebp
 0041932D    mov         ebp,esp
 0041932F    push        ebx
 00419330    push        esi
 00419331    mov         ebx,dword ptr [ebp+8]
 00419334    add         ebx,0FFFFFFFC
 00419337    mov         esi,dword ptr [ebp+8]
 0041933A    mov         esi,dword ptr [esi-8]
 0041933D    mov         eax,dword ptr [esi+14]
 00419340    cmp         eax,dword ptr [ebx]
>00419342    jae         004193B8
 00419344    test        eax,eax
>00419346    jbe         00419394
 00419348    mov         eax,dword ptr [ebp+8]
 0041934B    cmp         dword ptr [eax-0C],0FFFFFFFB
>0041934F    jne         00419359
 00419351    mov         eax,dword ptr [ebp+8]
 00419354    xor         edx,edx
 00419356    mov         dword ptr [eax-0C],edx
 00419359    mov         ecx,dword ptr [esi+14]
 0041935C    mov         eax,dword ptr [ebp+8]
 0041935F    mov         edx,dword ptr [eax-14]
 00419362    mov         eax,dword ptr [ebp+8]
 00419365    mov         eax,dword ptr [eax-10]
 00419368    call        Move
 0041936D    mov         eax,dword ptr [esi+14]
 00419370    mov         edx,dword ptr [ebp+8]
 00419373    add         dword ptr [edx-14],eax
 00419376    mov         eax,dword ptr [esi+14]
 00419379    mov         edx,dword ptr [ebp+8]
 0041937C    add         dword ptr [edx-10],eax
 0041937F    mov         eax,dword ptr [esi+14]
 00419382    xor         edx,edx
 00419384    add         dword ptr [esi+18],eax
 00419387    adc         dword ptr [esi+1C],edx
 0041938A    mov         eax,dword ptr [esi+14]
 0041938D    sub         dword ptr [ebx],eax
 0041938F    xor         eax,eax
 00419391    mov         dword ptr [esi+14],eax
 00419394    mov         eax,dword ptr [ebp+8]
 00419397    mov         eax,dword ptr [eax+8]
 0041939A    mov         eax,dword ptr [eax+8]
 0041939D    push        eax
 0041939E    mov         eax,esi
 004193A0    call        00419248
 004193A5    pop         ecx
 004193A6    mov         eax,dword ptr [esi+10]
 004193A9    mov         edx,dword ptr [ebp+8]
 004193AC    mov         dword ptr [edx-14],eax
 004193AF    mov         eax,dword ptr [esi+14]
 004193B2    cmp         eax,dword ptr [ebx]
>004193B4    jae         004193B8
 004193B6    mov         dword ptr [ebx],eax
 004193B8    cmp         dword ptr [ebx],0
>004193BB    je          004193CE
 004193BD    mov         eax,dword ptr [ebp+8]
 004193C0    cmp         dword ptr [eax-0C],0FFFFFFFB
>004193C4    jne         004193CE
 004193C6    mov         eax,dword ptr [ebp+8]
 004193C9    xor         edx,edx
 004193CB    mov         dword ptr [eax-0C],edx
 004193CE    mov         eax,dword ptr [ebx]
 004193D0    sub         dword ptr [esi+14],eax
 004193D3    mov         eax,dword ptr [ebx]
 004193D5    xor         edx,edx
 004193D7    add         dword ptr [esi+18],eax
 004193DA    adc         dword ptr [esi+1C],edx
 004193DD    mov         ecx,dword ptr [ebx]
 004193DF    mov         eax,dword ptr [ebp+8]
 004193E2    mov         edx,dword ptr [eax-14]
 004193E5    mov         eax,dword ptr [ebp+8]
 004193E8    mov         eax,dword ptr [eax-10]
 004193EB    call        Move
 004193F0    mov         eax,dword ptr [ebx]
 004193F2    mov         edx,dword ptr [ebp+8]
 004193F5    add         dword ptr [edx-14],eax
 004193F8    mov         eax,dword ptr [ebx]
 004193FA    mov         edx,dword ptr [ebp+8]
 004193FD    add         dword ptr [edx-10],eax
 00419400    pop         esi
 00419401    pop         ebx
 00419402    pop         ebp
 00419403    ret
end;*}

//00419404
{*function sub_00419404(?:?; ?:?; ?:?):?;
begin
 00419404    push        ebp
 00419405    mov         ebp,esp
 00419407    add         esp,0FFFFFFEC
 0041940A    push        ebx
 0041940B    mov         dword ptr [ebp-0C],ecx
 0041940E    mov         dword ptr [ebp-8],edx
 00419411    mov         ebx,eax
 00419413    mov         eax,dword ptr [ebp-8]
 00419416    mov         eax,dword ptr [eax+10]
 00419419    mov         dword ptr [ebp-14],eax
 0041941C    mov         eax,dword ptr [ebx+30]
 0041941F    mov         dword ptr [ebp-10],eax
 00419422    mov         edx,dword ptr [ebx+34]
 00419425    mov         eax,dword ptr [ebp-10]
 00419428    cmp         edx,eax
>0041942A    jb          00419433
 0041942C    sub         edx,eax
 0041942E    mov         dword ptr [ebp-4],edx
>00419431    jmp         0041943B
 00419433    mov         edx,dword ptr [ebx+2C]
 00419436    sub         edx,eax
 00419438    mov         dword ptr [ebp-4],edx
 0041943B    push        ebp
 0041943C    call        0041932C
 00419441    pop         ecx
 00419442    mov         eax,dword ptr [ebx+2C]
 00419445    cmp         eax,dword ptr [ebp-10]
>00419448    jne         0041946E
 0041944A    mov         eax,dword ptr [ebx+28]
 0041944D    mov         dword ptr [ebp-10],eax
 00419450    mov         eax,dword ptr [ebx+34]
 00419453    cmp         eax,dword ptr [ebx+2C]
>00419456    jne         0041945E
 00419458    mov         eax,dword ptr [ebx+28]
 0041945B    mov         dword ptr [ebx+34],eax
 0041945E    mov         eax,dword ptr [ebx+34]
 00419461    sub         eax,dword ptr [ebp-10]
 00419464    mov         dword ptr [ebp-4],eax
 00419467    push        ebp
 00419468    call        0041932C
 0041946D    pop         ecx
 0041946E    mov         eax,dword ptr [ebp-8]
 00419471    mov         edx,dword ptr [ebp-14]
 00419474    mov         dword ptr [eax+10],edx
 00419477    mov         eax,dword ptr [ebp-10]
 0041947A    mov         dword ptr [ebx+30],eax
 0041947D    mov         eax,dword ptr [ebp-0C]
 00419480    pop         ebx
 00419481    mov         esp,ebp
 00419483    pop         ebp
 00419484    ret
end;*}

//00419488
{*procedure sub_00419488(?:?);
begin
 00419488    push        ebp
 00419489    mov         ebp,esp
 0041948B    mov         eax,dword ptr [ebp+8]
 0041948E    mov         eax,dword ptr [eax+8]
 00419491    mov         eax,dword ptr [eax+4]
 00419494    mov         edx,dword ptr [ebp+8]
 00419497    sub         eax,dword ptr [edx-4]
 0041949A    mov         edx,dword ptr [ebp+8]
 0041949D    mov         dword ptr [edx-8],eax
 004194A0    mov         eax,dword ptr [ebp+8]
 004194A3    mov         eax,dword ptr [eax-0C]
 004194A6    shr         eax,3
 004194A9    mov         edx,dword ptr [ebp+8]
 004194AC    cmp         eax,dword ptr [edx-8]
>004194AF    jae         004194BA
 004194B1    mov         edx,dword ptr [ebp+8]
 004194B4    mov         edx,dword ptr [ebp+8]
 004194B7    mov         dword ptr [edx-8],eax
 004194BA    mov         eax,dword ptr [ebp+8]
 004194BD    mov         eax,dword ptr [eax-8]
 004194C0    mov         edx,dword ptr [ebp+8]
 004194C3    add         dword ptr [edx-4],eax
 004194C6    mov         eax,dword ptr [ebp+8]
 004194C9    mov         eax,dword ptr [eax-8]
 004194CC    mov         edx,dword ptr [ebp+8]
 004194CF    sub         dword ptr [edx-10],eax
 004194D2    mov         eax,dword ptr [ebp+8]
 004194D5    mov         eax,dword ptr [eax-8]
 004194D8    shl         eax,3
 004194DB    mov         edx,dword ptr [ebp+8]
 004194DE    sub         dword ptr [edx-0C],eax
 004194E1    mov         eax,dword ptr [ebp+8]
 004194E4    mov         eax,dword ptr [eax-14]
 004194E7    mov         edx,dword ptr [ebp+8]
 004194EA    mov         edx,dword ptr [edx+0C]
 004194ED    mov         dword ptr [edx+20],eax
 004194F0    mov         eax,dword ptr [ebp+8]
 004194F3    mov         eax,dword ptr [eax-0C]
 004194F6    mov         edx,dword ptr [ebp+8]
 004194F9    mov         edx,dword ptr [edx+0C]
 004194FC    mov         dword ptr [edx+1C],eax
 004194FF    mov         eax,dword ptr [ebp+8]
 00419502    mov         eax,dword ptr [eax-4]
 00419505    mov         edx,dword ptr [ebp+8]
 00419508    mov         edx,dword ptr [edx+8]
 0041950B    mov         dword ptr [edx+4],eax
 0041950E    mov         eax,dword ptr [ebp+8]
 00419511    mov         eax,dword ptr [eax-10]
 00419514    mov         edx,dword ptr [ebp+8]
 00419517    mov         edx,dword ptr [edx+8]
 0041951A    sub         eax,dword ptr [edx]
 0041951C    xor         edx,edx
 0041951E    mov         ecx,dword ptr [ebp+8]
 00419521    mov         ecx,dword ptr [ecx+8]
 00419524    add         dword ptr [ecx+8],eax
 00419527    adc         dword ptr [ecx+0C],edx
 0041952A    mov         eax,dword ptr [ebp+8]
 0041952D    mov         eax,dword ptr [eax-10]
 00419530    mov         edx,dword ptr [ebp+8]
 00419533    mov         edx,dword ptr [edx+8]
 00419536    mov         dword ptr [edx],eax
 00419538    mov         eax,dword ptr [ebp+8]
 0041953B    mov         eax,dword ptr [eax-18]
 0041953E    mov         edx,dword ptr [ebp+8]
 00419541    mov         edx,dword ptr [edx+0C]
 00419544    mov         dword ptr [edx+34],eax
 00419547    pop         ebp
 00419548    ret
end;*}

//0041954C
{*function sub_0041954C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0041954C    push        ebp
 0041954D    mov         ebp,esp
 0041954F    add         esp,0FFFFFFD0
 00419552    push        ebx
 00419553    push        esi
 00419554    push        edi
 00419555    mov         dword ptr [ebp-20],ecx
 00419558    mov         dword ptr [ebp-1C],edx
 0041955B    lea         esi,[ebp-0C]
 0041955E    lea         edx,[ebp-14]
 00419561    mov         ecx,dword ptr [ebp+8]
 00419564    mov         ecx,dword ptr [ecx]
 00419566    mov         dword ptr [ebp-10],ecx
 00419569    mov         ecx,dword ptr [ebp+8]
 0041956C    mov         ecx,dword ptr [ecx+4]
 0041956F    mov         dword ptr [ebp-4],ecx
 00419572    mov         ecx,dword ptr [ebp+0C]
 00419575    mov         ecx,dword ptr [ecx+20]
 00419578    mov         dword ptr [edx],ecx
 0041957A    mov         ecx,dword ptr [ebp+0C]
 0041957D    mov         ecx,dword ptr [ecx+1C]
 00419580    mov         dword ptr [esi],ecx
 00419582    mov         ecx,dword ptr [ebp+0C]
 00419585    mov         ecx,dword ptr [ecx+34]
 00419588    mov         dword ptr [ebp-18],ecx
 0041958B    mov         edi,dword ptr [ebp+0C]
 0041958E    mov         edi,dword ptr [edi+30]
 00419591    mov         ecx,dword ptr [ebp-18]
 00419594    cmp         edi,ecx
>00419596    jbe         004195A3
 00419598    mov         ebx,dword ptr [ebp+0C]
 0041959B    sub         edi,ecx
 0041959D    dec         edi
 0041959E    mov         dword ptr [ebp-24],edi
>004195A1    jmp         004195AE
 004195A3    mov         ebx,dword ptr [ebp+0C]
 004195A6    mov         ebx,dword ptr [ebx+2C]
 004195A9    sub         ebx,ecx
 004195AB    mov         dword ptr [ebp-24],ebx
 004195AE    mov         eax,dword ptr [eax*4+53E8D8]
 004195B5    mov         dword ptr [ebp-28],eax
 004195B8    mov         eax,dword ptr [ebp-1C]
 004195BB    mov         eax,dword ptr [eax*4+53E8D8]
 004195C2    mov         dword ptr [ebp-2C],eax
 004195C5    cmp         dword ptr [esi],14
>004195C8    jae         004195E4
 004195CA    dec         dword ptr [ebp-4]
 004195CD    mov         ecx,dword ptr [esi]
 004195CF    mov         eax,dword ptr [ebp-10]
 004195D2    movzx       eax,byte ptr [eax]
 004195D5    shl         eax,cl
 004195D7    or          dword ptr [edx],eax
 004195D9    inc         dword ptr [ebp-10]
 004195DC    add         dword ptr [esi],8
 004195DF    cmp         dword ptr [esi],14
>004195E2    jb          004195CA
 004195E4    mov         eax,dword ptr [edx]
 004195E6    and         eax,dword ptr [ebp-28]
 004195E9    mov         ecx,dword ptr [ebp-20]
 004195EC    lea         eax,[ecx+eax*8]
 004195EF    xor         ebx,ebx
 004195F1    mov         bl,byte ptr [eax]
 004195F3    test        ebx,ebx
>004195F5    jne         00419616
 004195F7    mov         cl,byte ptr [eax+1]
 004195FA    shr         dword ptr [edx],cl
 004195FC    xor         ecx,ecx
 004195FE    mov         cl,byte ptr [eax+1]
 00419601    sub         dword ptr [esi],ecx
 00419603    mov         al,byte ptr [eax+4]
 00419606    mov         ecx,dword ptr [ebp-18]
 00419609    mov         byte ptr [ecx],al
 0041960B    inc         dword ptr [ebp-18]
 0041960E    dec         dword ptr [ebp-24]
>00419611    jmp         004197CC
 00419616    mov         cl,byte ptr [eax+1]
 00419619    shr         dword ptr [edx],cl
 0041961B    xor         ecx,ecx
 0041961D    mov         cl,byte ptr [eax+1]
 00419620    sub         dword ptr [esi],ecx
 00419622    test        bl,10
>00419625    je          00419772
 0041962B    and         ebx,0F
 0041962E    mov         eax,dword ptr [eax+4]
 00419631    mov         ecx,dword ptr [ebx*4+53E8D8]
 00419638    and         ecx,dword ptr [edx]
 0041963A    add         eax,ecx
 0041963C    mov         dword ptr [ebp-8],eax
 0041963F    mov         ecx,ebx
 00419641    shr         dword ptr [edx],cl
 00419643    sub         dword ptr [esi],ebx
 00419645    cmp         dword ptr [esi],0F
>00419648    jae         00419664
 0041964A    dec         dword ptr [ebp-4]
 0041964D    mov         ecx,dword ptr [esi]
 0041964F    mov         eax,dword ptr [ebp-10]
 00419652    movzx       eax,byte ptr [eax]
 00419655    shl         eax,cl
 00419657    or          dword ptr [edx],eax
 00419659    inc         dword ptr [ebp-10]
 0041965C    add         dword ptr [esi],8
 0041965F    cmp         dword ptr [esi],0F
>00419662    jb          0041964A
 00419664    mov         eax,dword ptr [edx]
 00419666    and         eax,dword ptr [ebp-2C]
 00419669    mov         ecx,dword ptr [ebp+10]
 0041966C    lea         eax,[ecx+eax*8]
 0041966F    xor         ebx,ebx
 00419671    mov         bl,byte ptr [eax]
 00419673    mov         cl,byte ptr [eax+1]
 00419676    shr         dword ptr [edx],cl
 00419678    xor         ecx,ecx
 0041967A    mov         cl,byte ptr [eax+1]
 0041967D    sub         dword ptr [esi],ecx
 0041967F    test        bl,10
>00419682    je          00419743
 00419688    and         ebx,0F
 0041968B    cmp         ebx,dword ptr [esi]
>0041968D    jbe         004196A8
 0041968F    dec         dword ptr [ebp-4]
 00419692    mov         ecx,dword ptr [esi]
 00419694    mov         edi,dword ptr [ebp-10]
 00419697    movzx       edi,byte ptr [edi]
 0041969A    shl         edi,cl
 0041969C    or          dword ptr [edx],edi
 0041969E    inc         dword ptr [ebp-10]
 004196A1    add         dword ptr [esi],8
 004196A4    cmp         ebx,dword ptr [esi]
>004196A6    ja          0041968F
 004196A8    mov         eax,dword ptr [eax+4]
 004196AB    mov         ecx,dword ptr [ebx*4+53E8D8]
 004196B2    and         ecx,dword ptr [edx]
 004196B4    add         eax,ecx
 004196B6    mov         dword ptr [ebp-30],eax
 004196B9    mov         ecx,ebx
 004196BB    shr         dword ptr [edx],cl
 004196BD    sub         dword ptr [esi],ebx
 004196BF    mov         eax,dword ptr [ebp-8]
 004196C2    sub         dword ptr [ebp-24],eax
 004196C5    mov         eax,dword ptr [ebp+0C]
 004196C8    push        dword ptr [eax+28]
 004196CB    mov         eax,dword ptr [ebp-18]
 004196CE    pop         ecx
 004196CF    sub         eax,ecx
 004196D1    cmp         eax,dword ptr [ebp-30]
>004196D4    jb          004196FA
 004196D6    mov         eax,dword ptr [ebp-18]
 004196D9    sub         eax,dword ptr [ebp-30]
 004196DC    mov         ecx,dword ptr [ebp-18]
 004196DF    mov         bl,byte ptr [eax]
 004196E1    mov         byte ptr [ecx],bl
 004196E3    inc         dword ptr [ebp-18]
 004196E6    inc         eax
 004196E7    dec         dword ptr [ebp-8]
 004196EA    mov         ecx,dword ptr [ebp-18]
 004196ED    mov         bl,byte ptr [eax]
 004196EF    mov         byte ptr [ecx],bl
 004196F1    inc         dword ptr [ebp-18]
 004196F4    inc         eax
 004196F5    dec         dword ptr [ebp-8]
>004196F8    jmp         0041972A
 004196FA    mov         ecx,dword ptr [ebp+0C]
 004196FD    mov         ebx,dword ptr [ebp-30]
 00419700    sub         ebx,eax
 00419702    mov         eax,dword ptr [ebp+0C]
 00419705    mov         eax,dword ptr [eax+2C]
 00419708    sub         eax,ebx
 0041970A    cmp         ebx,dword ptr [ebp-8]
>0041970D    jae         0041972A
 0041970F    sub         dword ptr [ebp-8],ebx
 00419712    mov         ecx,dword ptr [ebp-18]
 00419715    mov         edi,ecx
 00419717    mov         cl,byte ptr [eax]
 00419719    mov         byte ptr [edi],cl
 0041971B    inc         dword ptr [ebp-18]
 0041971E    inc         eax
 0041971F    dec         ebx
 00419720    test        ebx,ebx
>00419722    jne         00419712
 00419724    mov         eax,dword ptr [ebp+0C]
 00419727    mov         eax,dword ptr [eax+28]
 0041972A    mov         ecx,dword ptr [ebp-18]
 0041972D    mov         bl,byte ptr [eax]
 0041972F    mov         byte ptr [ecx],bl
 00419731    inc         dword ptr [ebp-18]
 00419734    inc         eax
 00419735    dec         dword ptr [ebp-8]
 00419738    cmp         dword ptr [ebp-8],0
>0041973C    jne         0041972A
>0041973E    jmp         004197CC
 00419743    test        bl,40
>00419746    jne         00419764
 00419748    mov         ecx,dword ptr [eax+4]
 0041974B    mov         ebx,dword ptr [ebx*4+53E8D8]
 00419752    and         ebx,dword ptr [edx]
 00419754    add         ecx,ebx
 00419756    shl         ecx,3
 00419759    add         eax,ecx
 0041975B    xor         ebx,ebx
 0041975D    mov         bl,byte ptr [eax]
>0041975F    jmp         00419673
 00419764    push        ebp
 00419765    call        00419488
 0041976A    pop         ecx
 0041976B    mov         eax,0FFFFFFFD
>00419770    jmp         004197E8
 00419772    test        bl,40
>00419775    jne         004197B2
 00419777    mov         ecx,dword ptr [eax+4]
 0041977A    mov         ebx,dword ptr [ebx*4+53E8D8]
 00419781    and         ebx,dword ptr [edx]
 00419783    add         ecx,ebx
 00419785    shl         ecx,3
 00419788    add         eax,ecx
 0041978A    xor         ebx,ebx
 0041978C    mov         bl,byte ptr [eax]
 0041978E    test        ebx,ebx
>00419790    jne         00419616
 00419796    mov         cl,byte ptr [eax+1]
 00419799    shr         dword ptr [edx],cl
 0041979B    xor         ecx,ecx
 0041979D    mov         cl,byte ptr [eax+1]
 004197A0    sub         dword ptr [esi],ecx
 004197A2    mov         al,byte ptr [eax+4]
 004197A5    mov         ecx,dword ptr [ebp-18]
 004197A8    mov         byte ptr [ecx],al
 004197AA    inc         dword ptr [ebp-18]
 004197AD    dec         dword ptr [ebp-24]
>004197B0    jmp         004197CC
 004197B2    push        ebp
 004197B3    call        00419488
 004197B8    pop         ecx
 004197B9    test        bl,20
>004197BC    je          004197C5
 004197BE    mov         eax,1
>004197C3    jmp         004197E8
 004197C5    mov         eax,0FFFFFFFD
>004197CA    jmp         004197E8
 004197CC    cmp         dword ptr [ebp-24],102
>004197D3    jb          004197DF
 004197D5    cmp         dword ptr [ebp-4],0A
>004197D9    jae         004195C5
 004197DF    push        ebp
 004197E0    call        00419488
 004197E5    pop         ecx
 004197E6    xor         eax,eax
 004197E8    pop         edi
 004197E9    pop         esi
 004197EA    pop         ebx
 004197EB    mov         esp,ebp
 004197ED    pop         ebp
 004197EE    ret         0C
end;*}

//004197F4
{*function sub_004197F4(?:?; ?:?; ?:?; ?:?):?;
begin
 004197F4    push        ebp
 004197F5    mov         ebp,esp
 004197F7    push        ebx
 004197F8    push        esi
 004197F9    push        edi
 004197FA    mov         edi,ecx
 004197FC    mov         esi,edx
 004197FE    mov         ebx,eax
 00419800    mov         eax,1C
 00419805    call        @GetMem
 0041980A    mov         byte ptr [eax],0
 0041980D    mov         byte ptr [eax+10],bl
 00419810    mov         edx,esi
 00419812    mov         byte ptr [eax+11],dl
 00419815    mov         dword ptr [eax+14],edi
 00419818    mov         edx,dword ptr [ebp+0C]
 0041981B    mov         dword ptr [eax+18],edx
 0041981E    pop         edi
 0041981F    pop         esi
 00419820    pop         ebx
 00419821    pop         ebp
 00419822    ret         8
end;*}

//00419828
{*function sub_00419828(?:?; ?:?):?;
begin
 00419828    push        ebp
 00419829    mov         ebp,esp
 0041982B    push        ebx
 0041982C    mov         ecx,eax
 0041982E    mov         eax,dword ptr [ebp+8]
 00419831    mov         eax,dword ptr [eax-4]
 00419834    mov         edx,dword ptr [ebp+8]
 00419837    mov         edx,dword ptr [edx-8]
 0041983A    mov         dword ptr [edx+20],eax
 0041983D    mov         eax,dword ptr [ebp+8]
 00419840    mov         eax,dword ptr [eax-0C]
 00419843    mov         edx,dword ptr [ebp+8]
 00419846    mov         edx,dword ptr [edx-8]
 00419849    mov         dword ptr [edx+1C],eax
 0041984C    mov         eax,dword ptr [ebp+8]
 0041984F    mov         eax,dword ptr [eax-10]
 00419852    mov         edx,dword ptr [ebp+8]
 00419855    mov         edx,dword ptr [edx-14]
 00419858    mov         dword ptr [edx+4],eax
 0041985B    mov         eax,dword ptr [ebp+8]
 0041985E    mov         eax,dword ptr [eax-18]
 00419861    mov         edx,dword ptr [ebp+8]
 00419864    mov         edx,dword ptr [edx-14]
 00419867    sub         eax,dword ptr [edx]
 00419869    xor         edx,edx
 0041986B    mov         ebx,dword ptr [ebp+8]
 0041986E    mov         ebx,dword ptr [ebx-14]
 00419871    add         dword ptr [ebx+8],eax
 00419874    adc         dword ptr [ebx+0C],edx
 00419877    mov         eax,dword ptr [ebp+8]
 0041987A    mov         eax,dword ptr [eax-18]
 0041987D    mov         edx,dword ptr [ebp+8]
 00419880    mov         edx,dword ptr [edx-14]
 00419883    mov         dword ptr [edx],eax
 00419885    mov         eax,dword ptr [ebp+8]
 00419888    mov         eax,dword ptr [eax-1C]
 0041988B    mov         edx,dword ptr [ebp+8]
 0041988E    mov         edx,dword ptr [edx-8]
 00419891    mov         dword ptr [edx+34],eax
 00419894    test        cl,cl
>00419896    je          004198BA
 00419898    mov         eax,dword ptr [ebp+8]
 0041989B    mov         eax,dword ptr [eax+8]
 0041989E    push        eax
 0041989F    mov         eax,dword ptr [ebp+8]
 004198A2    mov         ecx,dword ptr [eax-20]
 004198A5    mov         eax,dword ptr [ebp+8]
 004198A8    mov         edx,dword ptr [eax-14]
 004198AB    mov         eax,dword ptr [ebp+8]
 004198AE    mov         eax,dword ptr [eax-8]
 004198B1    call        00419404
 004198B6    pop         ecx
 004198B7    pop         ebx
 004198B8    pop         ebp
 004198B9    ret
 004198BA    xor         eax,eax
 004198BC    pop         ebx
 004198BD    pop         ebp
 004198BE    ret
end;*}

//004198C0
{*function sub_004198C0(?:?; ?:?; ?:?; ?:?):?;
begin
 004198C0    push        ebp
 004198C1    mov         ebp,esp
 004198C3    add         esp,0FFFFFFE0
 004198C6    push        ebx
 004198C7    push        esi
 004198C8    push        edi
 004198C9    mov         dword ptr [ebp-20],ecx
 004198CC    mov         dword ptr [ebp-14],edx
 004198CF    mov         dword ptr [ebp-8],eax
 004198D2    mov         ebx,dword ptr [ebp-8]
 004198D5    mov         ebx,dword ptr [ebx+0C]
 004198D8    mov         eax,dword ptr [ebp-14]
 004198DB    mov         eax,dword ptr [eax]
 004198DD    mov         dword ptr [ebp-18],eax
 004198E0    mov         eax,dword ptr [ebp-14]
 004198E3    mov         eax,dword ptr [eax+4]
 004198E6    mov         dword ptr [ebp-10],eax
 004198E9    mov         eax,dword ptr [ebp-8]
 004198EC    mov         eax,dword ptr [eax+20]
 004198EF    mov         dword ptr [ebp-4],eax
 004198F2    mov         eax,dword ptr [ebp-8]
 004198F5    mov         eax,dword ptr [eax+1C]
 004198F8    mov         dword ptr [ebp-0C],eax
 004198FB    mov         eax,dword ptr [ebp-8]
 004198FE    mov         eax,dword ptr [eax+34]
 00419901    mov         dword ptr [ebp-1C],eax
 00419904    mov         edx,dword ptr [ebp-8]
 00419907    mov         edx,dword ptr [edx+30]
 0041990A    mov         eax,dword ptr [ebp-1C]
 0041990D    cmp         edx,eax
>0041990F    jbe         00419919
 00419911    mov         ecx,dword ptr [ebp-8]
 00419914    sub         edx,eax
 00419916    dec         edx
>00419917    jmp         00419921
 00419919    mov         edx,dword ptr [ebp-8]
 0041991C    mov         edx,dword ptr [edx+2C]
 0041991F    sub         edx,eax
 00419921    xor         eax,eax
 00419923    mov         al,byte ptr [ebx]
 00419925    cmp         eax,9
>00419928    ja          00419F30
 0041992E    jmp         dword ptr [eax*4+419935]
 0041992E    dd          0041995D
 0041992E    dd          00419A1D
 0041992E    dd          00419AE2
 0041992E    dd          00419B4B
 0041992E    dd          00419BF0
 0041992E    dd          00419C4B
 0041992E    dd          00419D95
 0041992E    dd          00419E96
 0041992E    dd          00419F0C
 0041992E    dd          00419F1E
 0041995D    cmp         edx,102
>00419963    jb          00419A07
 00419969    cmp         dword ptr [ebp-10],0A
>0041996D    jb          00419A07
 00419973    push        ebp
 00419974    xor         eax,eax
 00419976    call        00419828
 0041997B    pop         ecx
 0041997C    mov         eax,dword ptr [ebp+8]
 0041997F    push        eax
 00419980    mov         eax,dword ptr [ebx+18]
 00419983    push        eax
 00419984    mov         eax,dword ptr [ebp-8]
 00419987    push        eax
 00419988    mov         eax,dword ptr [ebp-14]
 0041998B    push        eax
 0041998C    xor         edx,edx
 0041998E    mov         dl,byte ptr [ebx+11]
 00419991    xor         eax,eax
 00419993    mov         al,byte ptr [ebx+10]
 00419996    mov         ecx,dword ptr [ebx+14]
 00419999    call        0041954C
 0041999E    pop         ecx
 0041999F    mov         dword ptr [ebp-20],eax
 004199A2    mov         eax,dword ptr [ebp-14]
 004199A5    mov         eax,dword ptr [eax]
 004199A7    mov         dword ptr [ebp-18],eax
 004199AA    mov         eax,dword ptr [ebp-14]
 004199AD    mov         eax,dword ptr [eax+4]
 004199B0    mov         dword ptr [ebp-10],eax
 004199B3    mov         eax,dword ptr [ebp-8]
 004199B6    mov         eax,dword ptr [eax+20]
 004199B9    mov         dword ptr [ebp-4],eax
 004199BC    mov         eax,dword ptr [ebp-8]
 004199BF    mov         eax,dword ptr [eax+1C]
 004199C2    mov         dword ptr [ebp-0C],eax
 004199C5    mov         eax,dword ptr [ebp-8]
 004199C8    mov         eax,dword ptr [eax+34]
 004199CB    mov         dword ptr [ebp-1C],eax
 004199CE    mov         edx,dword ptr [ebp-8]
 004199D1    mov         edx,dword ptr [edx+30]
 004199D4    mov         eax,dword ptr [ebp-1C]
 004199D7    cmp         edx,eax
>004199D9    jbe         004199E3
 004199DB    mov         ecx,dword ptr [ebp-8]
 004199DE    sub         edx,eax
 004199E0    dec         edx
>004199E1    jmp         004199EB
 004199E3    mov         edx,dword ptr [ebp-8]
 004199E6    mov         edx,dword ptr [edx+2C]
 004199E9    sub         edx,eax
 004199EB    cmp         dword ptr [ebp-20],0
>004199EF    je          00419A07
 004199F1    cmp         dword ptr [ebp-20],1
>004199F5    jne         004199FF
 004199F7    mov         byte ptr [ebx],7
>004199FA    jmp         00419921
 004199FF    mov         byte ptr [ebx],9
>00419A02    jmp         00419921
 00419A07    xor         eax,eax
 00419A09    mov         al,byte ptr [ebx+10]
 00419A0C    mov         dword ptr [ebx+0C],eax
 00419A0F    mov         eax,dword ptr [ebx+14]
 00419A12    mov         dword ptr [ebx+8],eax
 00419A15    mov         byte ptr [ebx],1
>00419A18    jmp         00419921
 00419A1D    mov         eax,dword ptr [ebx+0C]
 00419A20    cmp         eax,dword ptr [ebp-0C]
>00419A23    jbe         00419A5B
 00419A25    cmp         dword ptr [ebp-10],0
>00419A29    jne         00419A39
 00419A2B    push        ebp
 00419A2C    mov         al,1
 00419A2E    call        00419828
 00419A33    pop         ecx
>00419A34    jmp         00419F4C
 00419A39    xor         ecx,ecx
 00419A3B    mov         dword ptr [ebp-20],ecx
 00419A3E    dec         dword ptr [ebp-10]
 00419A41    mov         ecx,dword ptr [ebp-0C]
 00419A44    mov         esi,dword ptr [ebp-18]
 00419A47    movzx       esi,byte ptr [esi]
 00419A4A    shl         esi,cl
 00419A4C    or          dword ptr [ebp-4],esi
 00419A4F    inc         dword ptr [ebp-18]
 00419A52    add         dword ptr [ebp-0C],8
 00419A56    cmp         eax,dword ptr [ebp-0C]
>00419A59    ja          00419A25
 00419A5B    mov         esi,dword ptr [ebx+8]
 00419A5E    mov         eax,dword ptr [eax*4+53E8D8]
 00419A65    and         eax,dword ptr [ebp-4]
 00419A68    shl         eax,3
 00419A6B    add         esi,eax
 00419A6D    mov         cl,byte ptr [esi+1]
 00419A70    shr         dword ptr [ebp-4],cl
 00419A73    xor         eax,eax
 00419A75    mov         al,byte ptr [esi+1]
 00419A78    sub         dword ptr [ebp-0C],eax
 00419A7B    xor         eax,eax
 00419A7D    mov         al,byte ptr [esi]
 00419A7F    test        eax,eax
>00419A81    jne         00419A91
 00419A83    mov         eax,dword ptr [esi+4]
 00419A86    mov         dword ptr [ebx+8],eax
 00419A89    mov         byte ptr [ebx],6
>00419A8C    jmp         00419921
 00419A91    test        al,10
>00419A93    je          00419AA9
 00419A95    and         eax,0F
 00419A98    mov         dword ptr [ebx+8],eax
 00419A9B    mov         eax,dword ptr [esi+4]
 00419A9E    mov         dword ptr [ebx+4],eax
 00419AA1    mov         byte ptr [ebx],2
>00419AA4    jmp         00419921
 00419AA9    test        al,40
>00419AAB    jne         00419ABE
 00419AAD    mov         dword ptr [ebx+0C],eax
 00419AB0    mov         eax,dword ptr [esi+4]
 00419AB3    lea         eax,[esi+eax*8]
 00419AB6    mov         dword ptr [ebx+8],eax
>00419AB9    jmp         00419921
 00419ABE    test        al,20
>00419AC0    je          00419ACA
 00419AC2    mov         byte ptr [ebx],7
>00419AC5    jmp         00419921
 00419ACA    mov         byte ptr [ebx],9
 00419ACD    mov         dword ptr [ebp-20],0FFFFFFFD
 00419AD4    push        ebp
 00419AD5    mov         al,1
 00419AD7    call        00419828
 00419ADC    pop         ecx
>00419ADD    jmp         00419F4C
 00419AE2    mov         eax,dword ptr [ebx+8]
 00419AE5    cmp         eax,dword ptr [ebp-0C]
>00419AE8    jbe         00419B20
 00419AEA    cmp         dword ptr [ebp-10],0
>00419AEE    jne         00419AFE
 00419AF0    push        ebp
 00419AF1    mov         al,1
 00419AF3    call        00419828
 00419AF8    pop         ecx
>00419AF9    jmp         00419F4C
 00419AFE    xor         ecx,ecx
 00419B00    mov         dword ptr [ebp-20],ecx
 00419B03    dec         dword ptr [ebp-10]
 00419B06    mov         ecx,dword ptr [ebp-0C]
 00419B09    mov         esi,dword ptr [ebp-18]
 00419B0C    movzx       esi,byte ptr [esi]
 00419B0F    shl         esi,cl
 00419B11    or          dword ptr [ebp-4],esi
 00419B14    inc         dword ptr [ebp-18]
 00419B17    add         dword ptr [ebp-0C],8
 00419B1B    cmp         eax,dword ptr [ebp-0C]
>00419B1E    ja          00419AEA
 00419B20    mov         ecx,dword ptr [eax*4+53E8D8]
 00419B27    and         ecx,dword ptr [ebp-4]
 00419B2A    add         dword ptr [ebx+4],ecx
 00419B2D    mov         ecx,eax
 00419B2F    shr         dword ptr [ebp-4],cl
 00419B32    sub         dword ptr [ebp-0C],eax
 00419B35    xor         eax,eax
 00419B37    mov         al,byte ptr [ebx+11]
 00419B3A    mov         dword ptr [ebx+0C],eax
 00419B3D    mov         eax,dword ptr [ebx+18]
 00419B40    mov         dword ptr [ebx+8],eax
 00419B43    mov         byte ptr [ebx],3
>00419B46    jmp         00419921
 00419B4B    mov         eax,dword ptr [ebx+0C]
 00419B4E    cmp         eax,dword ptr [ebp-0C]
>00419B51    jbe         00419B89
 00419B53    cmp         dword ptr [ebp-10],0
>00419B57    jne         00419B67
 00419B59    push        ebp
 00419B5A    mov         al,1
 00419B5C    call        00419828
 00419B61    pop         ecx
>00419B62    jmp         00419F4C
 00419B67    xor         ecx,ecx
 00419B69    mov         dword ptr [ebp-20],ecx
 00419B6C    dec         dword ptr [ebp-10]
 00419B6F    mov         ecx,dword ptr [ebp-0C]
 00419B72    mov         esi,dword ptr [ebp-18]
 00419B75    movzx       esi,byte ptr [esi]
 00419B78    shl         esi,cl
 00419B7A    or          dword ptr [ebp-4],esi
 00419B7D    inc         dword ptr [ebp-18]
 00419B80    add         dword ptr [ebp-0C],8
 00419B84    cmp         eax,dword ptr [ebp-0C]
>00419B87    ja          00419B53
 00419B89    mov         eax,dword ptr [eax*4+53E8D8]
 00419B90    and         eax,dword ptr [ebp-4]
 00419B93    mov         ecx,dword ptr [ebx+8]
 00419B96    lea         esi,[ecx+eax*8]
 00419B99    mov         cl,byte ptr [esi+1]
 00419B9C    shr         dword ptr [ebp-4],cl
 00419B9F    xor         eax,eax
 00419BA1    mov         al,byte ptr [esi+1]
 00419BA4    sub         dword ptr [ebp-0C],eax
 00419BA7    xor         eax,eax
 00419BA9    mov         al,byte ptr [esi]
 00419BAB    test        al,10
>00419BAD    je          00419BC3
 00419BAF    and         eax,0F
 00419BB2    mov         dword ptr [ebx+8],eax
 00419BB5    mov         eax,dword ptr [esi+4]
 00419BB8    mov         dword ptr [ebx+0C],eax
 00419BBB    mov         byte ptr [ebx],4
>00419BBE    jmp         00419921
 00419BC3    test        al,40
>00419BC5    jne         00419BD8
 00419BC7    mov         dword ptr [ebx+0C],eax
 00419BCA    mov         eax,dword ptr [esi+4]
 00419BCD    lea         eax,[esi+eax*8]
 00419BD0    mov         dword ptr [ebx+8],eax
>00419BD3    jmp         00419921
 00419BD8    mov         byte ptr [ebx],9
 00419BDB    mov         dword ptr [ebp-20],0FFFFFFFD
 00419BE2    push        ebp
 00419BE3    mov         al,1
 00419BE5    call        00419828
 00419BEA    pop         ecx
>00419BEB    jmp         00419F4C
 00419BF0    mov         eax,dword ptr [ebx+8]
 00419BF3    cmp         eax,dword ptr [ebp-0C]
>00419BF6    jbe         00419C2E
 00419BF8    cmp         dword ptr [ebp-10],0
>00419BFC    jne         00419C0C
 00419BFE    push        ebp
 00419BFF    mov         al,1
 00419C01    call        00419828
 00419C06    pop         ecx
>00419C07    jmp         00419F4C
 00419C0C    xor         ecx,ecx
 00419C0E    mov         dword ptr [ebp-20],ecx
 00419C11    dec         dword ptr [ebp-10]
 00419C14    mov         ecx,dword ptr [ebp-0C]
 00419C17    mov         esi,dword ptr [ebp-18]
 00419C1A    movzx       esi,byte ptr [esi]
 00419C1D    shl         esi,cl
 00419C1F    or          dword ptr [ebp-4],esi
 00419C22    inc         dword ptr [ebp-18]
 00419C25    add         dword ptr [ebp-0C],8
 00419C29    cmp         eax,dword ptr [ebp-0C]
>00419C2C    ja          00419BF8
 00419C2E    mov         ecx,dword ptr [eax*4+53E8D8]
 00419C35    and         ecx,dword ptr [ebp-4]
 00419C38    add         dword ptr [ebx+0C],ecx
 00419C3B    mov         ecx,eax
 00419C3D    shr         dword ptr [ebp-4],cl
 00419C40    sub         dword ptr [ebp-0C],eax
 00419C43    mov         byte ptr [ebx],5
>00419C46    jmp         00419921
 00419C4B    mov         esi,dword ptr [ebp-1C]
 00419C4E    mov         eax,dword ptr [ebx+0C]
 00419C51    sub         esi,eax
 00419C53    mov         ecx,dword ptr [ebp-8]
 00419C56    mov         edi,dword ptr [ebp-1C]
 00419C59    sub         edi,dword ptr [ecx+28]
 00419C5C    cmp         eax,edi
>00419C5E    jbe         00419D83
 00419C64    mov         esi,dword ptr [ebp-8]
 00419C67    mov         esi,dword ptr [esi+2C]
 00419C6A    mov         ecx,dword ptr [ebp-8]
 00419C6D    mov         edi,dword ptr [ebp-1C]
 00419C70    sub         edi,dword ptr [ecx+28]
 00419C73    sub         eax,edi
 00419C75    sub         esi,eax
>00419C77    jmp         00419D83
 00419C7C    test        edx,edx
>00419C7E    jne         00419D61
 00419C84    mov         eax,dword ptr [ebp-8]
 00419C87    mov         eax,dword ptr [eax+2C]
 00419C8A    cmp         eax,dword ptr [ebp-1C]
>00419C8D    jne         00419CC3
 00419C8F    mov         eax,dword ptr [ebp-8]
 00419C92    mov         eax,dword ptr [eax+30]
 00419C95    mov         ecx,dword ptr [ebp-8]
 00419C98    cmp         eax,dword ptr [ecx+28]
>00419C9B    je          00419CC3
 00419C9D    mov         eax,dword ptr [ebp-8]
 00419CA0    mov         eax,dword ptr [eax+28]
 00419CA3    mov         dword ptr [ebp-1C],eax
 00419CA6    mov         edx,dword ptr [ebp-8]
 00419CA9    mov         edx,dword ptr [edx+30]
 00419CAC    mov         eax,dword ptr [ebp-1C]
 00419CAF    cmp         edx,eax
>00419CB1    jbe         00419CBB
 00419CB3    mov         ecx,dword ptr [ebp-8]
 00419CB6    sub         edx,eax
 00419CB8    dec         edx
>00419CB9    jmp         00419CC3
 00419CBB    mov         edx,dword ptr [ebp-8]
 00419CBE    mov         edx,dword ptr [edx+2C]
 00419CC1    sub         edx,eax
 00419CC3    test        edx,edx
>00419CC5    jne         00419D61
 00419CCB    mov         eax,dword ptr [ebp-8]
 00419CCE    mov         edx,dword ptr [ebp-1C]
 00419CD1    mov         dword ptr [eax+34],edx
 00419CD4    mov         eax,dword ptr [ebp+8]
 00419CD7    push        eax
 00419CD8    mov         edx,dword ptr [ebp-14]
 00419CDB    mov         eax,dword ptr [ebp-8]
 00419CDE    mov         ecx,dword ptr [ebp-20]
 00419CE1    call        00419404
 00419CE6    pop         ecx
 00419CE7    mov         dword ptr [ebp-20],eax
 00419CEA    mov         eax,dword ptr [ebp-8]
 00419CED    mov         eax,dword ptr [eax+34]
 00419CF0    mov         dword ptr [ebp-1C],eax
 00419CF3    mov         edx,dword ptr [ebp-8]
 00419CF6    mov         edx,dword ptr [edx+30]
 00419CF9    mov         eax,dword ptr [ebp-1C]
 00419CFC    cmp         edx,eax
>00419CFE    jbe         00419D08
 00419D00    mov         ecx,dword ptr [ebp-8]
 00419D03    sub         edx,eax
 00419D05    dec         edx
>00419D06    jmp         00419D10
 00419D08    mov         edx,dword ptr [ebp-8]
 00419D0B    mov         edx,dword ptr [edx+2C]
 00419D0E    sub         edx,eax
 00419D10    mov         eax,dword ptr [ebp-8]
 00419D13    mov         eax,dword ptr [eax+2C]
 00419D16    cmp         eax,dword ptr [ebp-1C]
>00419D19    jne         00419D4F
 00419D1B    mov         eax,dword ptr [ebp-8]
 00419D1E    mov         eax,dword ptr [eax+30]
 00419D21    mov         ecx,dword ptr [ebp-8]
 00419D24    cmp         eax,dword ptr [ecx+28]
>00419D27    je          00419D4F
 00419D29    mov         eax,dword ptr [ebp-8]
 00419D2C    mov         eax,dword ptr [eax+28]
 00419D2F    mov         dword ptr [ebp-1C],eax
 00419D32    mov         edx,dword ptr [ebp-8]
 00419D35    mov         edx,dword ptr [edx+30]
 00419D38    mov         eax,dword ptr [ebp-1C]
 00419D3B    cmp         edx,eax
>00419D3D    jbe         00419D47
 00419D3F    mov         ecx,dword ptr [ebp-8]
 00419D42    sub         edx,eax
 00419D44    dec         edx
>00419D45    jmp         00419D4F
 00419D47    mov         edx,dword ptr [ebp-8]
 00419D4A    mov         edx,dword ptr [edx+2C]
 00419D4D    sub         edx,eax
 00419D4F    test        edx,edx
>00419D51    jne         00419D61
 00419D53    push        ebp
 00419D54    mov         al,1
 00419D56    call        00419828
 00419D5B    pop         ecx
>00419D5C    jmp         00419F4C
 00419D61    xor         eax,eax
 00419D63    mov         dword ptr [ebp-20],eax
 00419D66    mov         al,byte ptr [esi]
 00419D68    mov         ecx,dword ptr [ebp-1C]
 00419D6B    mov         byte ptr [ecx],al
 00419D6D    inc         dword ptr [ebp-1C]
 00419D70    inc         esi
 00419D71    dec         edx
 00419D72    mov         eax,dword ptr [ebp-8]
 00419D75    cmp         esi,dword ptr [eax+2C]
>00419D78    jne         00419D80
 00419D7A    mov         esi,dword ptr [ebp-8]
 00419D7D    mov         esi,dword ptr [esi+28]
 00419D80    dec         dword ptr [ebx+4]
 00419D83    cmp         dword ptr [ebx+4],0
>00419D87    jne         00419C7C
 00419D8D    mov         byte ptr [ebx],0
>00419D90    jmp         00419921
 00419D95    test        edx,edx
>00419D97    jne         00419E7D
 00419D9D    mov         eax,dword ptr [ebp-8]
 00419DA0    mov         eax,dword ptr [eax+2C]
 00419DA3    cmp         eax,dword ptr [ebp-1C]
>00419DA6    jne         00419DDC
 00419DA8    mov         eax,dword ptr [ebp-8]
 00419DAB    mov         eax,dword ptr [eax+30]
 00419DAE    mov         ecx,dword ptr [ebp-8]
 00419DB1    cmp         eax,dword ptr [ecx+28]
>00419DB4    je          00419DDC
 00419DB6    mov         eax,dword ptr [ebp-8]
 00419DB9    mov         eax,dword ptr [eax+28]
 00419DBC    mov         dword ptr [ebp-1C],eax
 00419DBF    mov         edx,dword ptr [ebp-8]
 00419DC2    mov         edx,dword ptr [edx+30]
 00419DC5    mov         eax,dword ptr [ebp-1C]
 00419DC8    cmp         edx,eax
>00419DCA    jbe         00419DD4
 00419DCC    mov         ecx,dword ptr [ebp-8]
 00419DCF    sub         edx,eax
 00419DD1    dec         edx
>00419DD2    jmp         00419DDC
 00419DD4    mov         edx,dword ptr [ebp-8]
 00419DD7    mov         edx,dword ptr [edx+2C]
 00419DDA    sub         edx,eax
 00419DDC    test        edx,edx
>00419DDE    jne         00419E7D
 00419DE4    mov         eax,dword ptr [ebp-8]
 00419DE7    mov         edx,dword ptr [ebp-1C]
 00419DEA    mov         dword ptr [eax+34],edx
 00419DED    mov         eax,dword ptr [ebp+8]
 00419DF0    push        eax
 00419DF1    mov         edx,dword ptr [ebp-14]
 00419DF4    mov         eax,dword ptr [ebp-8]
 00419DF7    mov         ecx,dword ptr [ebp-20]
 00419DFA    call        00419404
 00419DFF    pop         ecx
 00419E00    mov         dword ptr [ebp-20],eax
 00419E03    mov         eax,dword ptr [ebp-8]
 00419E06    mov         eax,dword ptr [eax+34]
 00419E09    mov         dword ptr [ebp-1C],eax
 00419E0C    mov         edx,dword ptr [ebp-8]
 00419E0F    mov         edx,dword ptr [edx+30]
 00419E12    mov         eax,dword ptr [ebp-1C]
 00419E15    cmp         edx,eax
>00419E17    jbe         00419E21
 00419E19    mov         ecx,dword ptr [ebp-8]
 00419E1C    sub         edx,eax
 00419E1E    dec         edx
>00419E1F    jmp         00419E29
 00419E21    mov         edx,dword ptr [ebp-8]
 00419E24    mov         edx,dword ptr [edx+2C]
 00419E27    sub         edx,eax
 00419E29    mov         eax,dword ptr [ebp-8]
 00419E2C    mov         eax,dword ptr [eax+2C]
 00419E2F    cmp         eax,dword ptr [ebp-1C]
>00419E32    jne         00419E6B
 00419E34    mov         eax,dword ptr [ebp-8]
 00419E37    mov         eax,dword ptr [eax+30]
 00419E3A    mov         ecx,dword ptr [ebp-8]
 00419E3D    cmp         eax,dword ptr [ecx+28]
>00419E40    je          00419E6B
 00419E42    mov         eax,dword ptr [ebp-8]
 00419E45    mov         eax,dword ptr [eax+28]
 00419E48    mov         dword ptr [ebp-1C],eax
 00419E4B    mov         edx,dword ptr [ebp-8]
 00419E4E    mov         edx,dword ptr [edx+30]
 00419E51    mov         eax,dword ptr [ebp-1C]
 00419E54    cmp         edx,eax
>00419E56    jbe         00419E63
 00419E58    mov         edx,dword ptr [ebp-8]
 00419E5B    mov         edx,dword ptr [edx+30]
 00419E5E    sub         edx,eax
 00419E60    dec         edx
>00419E61    jmp         00419E6B
 00419E63    mov         edx,dword ptr [ebp-8]
 00419E66    mov         edx,dword ptr [edx+2C]
 00419E69    sub         edx,eax
 00419E6B    test        edx,edx
>00419E6D    jne         00419E7D
 00419E6F    push        ebp
 00419E70    mov         al,1
 00419E72    call        00419828
 00419E77    pop         ecx
>00419E78    jmp         00419F4C
 00419E7D    xor         eax,eax
 00419E7F    mov         dword ptr [ebp-20],eax
 00419E82    mov         eax,dword ptr [ebp-1C]
 00419E85    mov         cl,byte ptr [ebx+8]
 00419E88    mov         byte ptr [eax],cl
 00419E8A    inc         dword ptr [ebp-1C]
 00419E8D    dec         edx
 00419E8E    mov         byte ptr [ebx],0
>00419E91    jmp         00419921
 00419E96    cmp         dword ptr [ebp-0C],7
>00419E9A    jbe         00419EA6
 00419E9C    sub         dword ptr [ebp-0C],8
 00419EA0    inc         dword ptr [ebp-10]
 00419EA3    dec         dword ptr [ebp-18]
 00419EA6    mov         eax,dword ptr [ebp-8]
 00419EA9    mov         edx,dword ptr [ebp-1C]
 00419EAC    mov         dword ptr [eax+34],edx
 00419EAF    mov         eax,dword ptr [ebp+8]
 00419EB2    push        eax
 00419EB3    mov         edx,dword ptr [ebp-14]
 00419EB6    mov         eax,dword ptr [ebp-8]
 00419EB9    mov         ecx,dword ptr [ebp-20]
 00419EBC    call        00419404
 00419EC1    pop         ecx
 00419EC2    mov         dword ptr [ebp-20],eax
 00419EC5    mov         eax,dword ptr [ebp-8]
 00419EC8    mov         eax,dword ptr [eax+34]
 00419ECB    mov         dword ptr [ebp-1C],eax
 00419ECE    mov         edx,dword ptr [ebp-8]
 00419ED1    mov         edx,dword ptr [edx+30]
 00419ED4    mov         eax,dword ptr [ebp-1C]
 00419ED7    cmp         edx,eax
>00419ED9    jbe         00419EE3
 00419EDB    mov         ecx,dword ptr [ebp-8]
 00419EDE    sub         edx,eax
 00419EE0    dec         edx
>00419EE1    jmp         00419EEB
 00419EE3    mov         edx,dword ptr [ebp-8]
 00419EE6    mov         edx,dword ptr [edx+2C]
 00419EE9    sub         edx,eax
 00419EEB    mov         eax,dword ptr [ebp-8]
 00419EEE    mov         eax,dword ptr [eax+30]
 00419EF1    mov         ecx,dword ptr [ebp-8]
 00419EF4    cmp         eax,dword ptr [ecx+34]
>00419EF7    je          00419F04
 00419EF9    push        ebp
 00419EFA    mov         al,1
 00419EFC    call        00419828
 00419F01    pop         ecx
>00419F02    jmp         00419F4C
 00419F04    mov         byte ptr [ebx],8
>00419F07    jmp         00419921
 00419F0C    mov         dword ptr [ebp-20],1
 00419F13    push        ebp
 00419F14    mov         al,1
 00419F16    call        00419828
 00419F1B    pop         ecx
>00419F1C    jmp         00419F4C
 00419F1E    mov         dword ptr [ebp-20],0FFFFFFFD
 00419F25    push        ebp
 00419F26    mov         al,1
 00419F28    call        00419828
 00419F2D    pop         ecx
>00419F2E    jmp         00419F4C
 00419F30    mov         dword ptr [ebp-20],0FFFFFFFE
 00419F37    push        ebp
 00419F38    mov         al,1
 00419F3A    call        00419828
 00419F3F    pop         ecx
>00419F40    jmp         00419F4C
>00419F42    jmp         00419921
 00419F47    mov         eax,0FFFFFFFE
 00419F4C    pop         edi
 00419F4D    pop         esi
 00419F4E    pop         ebx
 00419F4F    mov         esp,ebp
 00419F51    pop         ebp
 00419F52    ret
end;*}

//00419F54
{*function sub_00419F54(?:Integer; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00419F54    push        ebp
 00419F55    mov         ebp,esp
 00419F57    add         esp,0FFFFFF08
 00419F5D    push        ebx
 00419F5E    push        esi
 00419F5F    push        edi
 00419F60    mov         dword ptr [ebp-0C],ecx
 00419F63    mov         dword ptr [ebp-8],edx
 00419F66    mov         dword ptr [ebp-4],eax
 00419F69    lea         eax,[ebp-7C]
 00419F6C    xor         ecx,ecx
 00419F6E    mov         edx,40
 00419F73    call        @FillChar
 00419F78    mov         ecx,dword ptr [ebp-0C]
 00419F7B    dec         ecx
 00419F7C    test        ecx,ecx
>00419F7E    jb          00419F90
 00419F80    inc         ecx
 00419F81    mov         edx,dword ptr [ebp-4]
 00419F84    mov         eax,dword ptr [edx]
 00419F86    inc         dword ptr [ebp+eax*4-7C]
 00419F8A    add         edx,4
 00419F8D    dec         ecx
>00419F8E    jne         00419F84
 00419F90    mov         eax,dword ptr [ebp-7C]
 00419F93    cmp         eax,dword ptr [ebp-0C]
>00419F96    jne         00419FAD
 00419F98    mov         eax,dword ptr [ebp+20]
 00419F9B    xor         edx,edx
 00419F9D    mov         dword ptr [eax],edx
 00419F9F    mov         eax,dword ptr [ebp+1C]
 00419FA2    xor         edx,edx
 00419FA4    mov         dword ptr [eax],edx
 00419FA6    xor         eax,eax
>00419FA8    jmp         0041A340
 00419FAD    mov         eax,dword ptr [ebp+1C]
 00419FB0    mov         eax,dword ptr [eax]
 00419FB2    mov         dword ptr [ebp-28],eax
 00419FB5    mov         eax,1
 00419FBA    lea         edx,[ebp-78]
 00419FBD    cmp         dword ptr [edx],0
>00419FC0    jne         00419FCB
 00419FC2    inc         eax
 00419FC3    add         edx,4
 00419FC6    cmp         eax,10
>00419FC9    jne         00419FBD
 00419FCB    mov         dword ptr [ebp-24],eax
 00419FCE    cmp         eax,dword ptr [ebp-28]
>00419FD1    jbe         00419FD6
 00419FD3    mov         dword ptr [ebp-28],eax
 00419FD6    mov         dword ptr [ebp-20],0F
 00419FDD    lea         edx,[ebp-40]
 00419FE0    cmp         dword ptr [edx],0
>00419FE3    jne         00419FF1
 00419FE5    dec         dword ptr [ebp-20]
 00419FE8    sub         edx,4
 00419FEB    cmp         dword ptr [ebp-20],0
>00419FEF    jne         00419FE0
 00419FF1    mov         edx,dword ptr [ebp-20]
 00419FF4    mov         dword ptr [ebp-18],edx
 00419FF7    mov         edx,dword ptr [ebp-28]
 00419FFA    cmp         edx,dword ptr [ebp-20]
>00419FFD    jbe         0041A005
 00419FFF    mov         edx,dword ptr [ebp-20]
 0041A002    mov         dword ptr [ebp-28],edx
 0041A005    mov         edx,dword ptr [ebp+1C]
 0041A008    mov         ecx,dword ptr [ebp-28]
 0041A00B    mov         dword ptr [edx],ecx
 0041A00D    mov         ecx,eax
 0041A00F    mov         edx,1
 0041A014    shl         edx,cl
 0041A016    mov         dword ptr [ebp-3C],edx
 0041A019    cmp         eax,dword ptr [ebp-20]
>0041A01C    jae         0041A03E
 0041A01E    mov         edx,dword ptr [ebp+eax*4-7C]
 0041A022    sub         dword ptr [ebp-3C],edx
 0041A025    cmp         dword ptr [ebp-3C],0
>0041A029    jge         0041A035
 0041A02B    mov         eax,0FFFFFFFD
>0041A030    jmp         0041A340
 0041A035    inc         eax
 0041A036    shl         dword ptr [ebp-3C],1
 0041A039    cmp         eax,dword ptr [ebp-20]
>0041A03C    jb          0041A01E
 0041A03E    mov         eax,dword ptr [ebp-20]
 0041A041    mov         eax,dword ptr [ebp+eax*4-7C]
 0041A045    sub         dword ptr [ebp-3C],eax
 0041A048    cmp         dword ptr [ebp-3C],0
>0041A04C    jge         0041A058
 0041A04E    mov         eax,0FFFFFFFD
>0041A053    jmp         0041A340
 0041A058    mov         eax,dword ptr [ebp-20]
 0041A05B    mov         edx,dword ptr [ebp-3C]
 0041A05E    add         dword ptr [ebp+eax*4-7C],edx
 0041A062    xor         eax,eax
 0041A064    mov         dword ptr [ebp-0F4],eax
 0041A06A    xor         eax,eax
 0041A06C    lea         edx,[ebp-78]
 0041A06F    mov         dword ptr [ebp-2C],edx
 0041A072    lea         ecx,[ebp-0F0]
 0041A078    dec         dword ptr [ebp-20]
 0041A07B    cmp         dword ptr [ebp-20],0
>0041A07F    jbe         0041A098
 0041A081    mov         edx,dword ptr [ebp-2C]
 0041A084    add         eax,dword ptr [edx]
 0041A086    mov         dword ptr [ecx],eax
 0041A088    add         dword ptr [ebp-2C],4
 0041A08C    add         ecx,4
 0041A08F    dec         dword ptr [ebp-20]
 0041A092    cmp         dword ptr [ebp-20],0
>0041A096    ja          0041A081
 0041A098    mov         ecx,dword ptr [ebp-0C]
 0041A09B    dec         ecx
 0041A09C    test        ecx,ecx
>0041A09E    jb          0041A0D1
 0041A0A0    inc         ecx
 0041A0A1    mov         dword ptr [ebp-20],0
 0041A0A8    mov         edx,dword ptr [ebp-4]
 0041A0AB    mov         eax,dword ptr [edx]
 0041A0AD    test        eax,eax
>0041A0AF    je          0041A0C8
 0041A0B1    mov         ebx,dword ptr [ebp+eax*4-0F8]
 0041A0B8    mov         esi,dword ptr [ebp+0C]
 0041A0BB    mov         edi,dword ptr [ebp-20]
 0041A0BE    mov         dword ptr [esi+ebx*4],edi
 0041A0C1    inc         dword ptr [ebp+eax*4-0F8]
 0041A0C8    inc         dword ptr [ebp-20]
 0041A0CB    add         edx,4
 0041A0CE    dec         ecx
>0041A0CF    jne         0041A0AB
 0041A0D1    mov         eax,dword ptr [ebp-18]
 0041A0D4    mov         eax,dword ptr [ebp+eax*4-0F8]
 0041A0DB    mov         dword ptr [ebp-0C],eax
 0041A0DE    xor         eax,eax
 0041A0E0    mov         dword ptr [ebp-20],eax
 0041A0E3    xor         eax,eax
 0041A0E5    mov         dword ptr [ebp-0F8],eax
 0041A0EB    mov         eax,dword ptr [ebp+0C]
 0041A0EE    mov         dword ptr [ebp-2C],eax
 0041A0F1    mov         dword ptr [ebp-1C],0FFFFFFFF
 0041A0F8    mov         esi,dword ptr [ebp-28]
 0041A0FB    neg         esi
 0041A0FD    xor         eax,eax
 0041A0FF    mov         dword ptr [ebp-0B8],eax
 0041A105    xor         eax,eax
 0041A107    mov         dword ptr [ebp-30],eax
 0041A10A    xor         edx,edx
 0041A10C    mov         eax,dword ptr [ebp-24]
 0041A10F    cmp         eax,dword ptr [ebp-18]
>0041A112    jg          0041A32B
 0041A118    mov         eax,dword ptr [ebp-24]
 0041A11B    mov         eax,dword ptr [ebp+eax*4-7C]
 0041A11F    mov         dword ptr [ebp-10],eax
 0041A122    cmp         dword ptr [ebp-10],0
>0041A126    je          0041A31C
 0041A12C    dec         dword ptr [ebp-10]
>0041A12F    jmp         0041A227
 0041A134    inc         dword ptr [ebp-1C]
 0041A137    add         esi,dword ptr [ebp-28]
 0041A13A    mov         edx,dword ptr [ebp-18]
 0041A13D    sub         edx,esi
 0041A13F    cmp         edx,dword ptr [ebp-28]
>0041A142    jbe         0041A147
 0041A144    mov         edx,dword ptr [ebp-28]
 0041A147    mov         eax,dword ptr [ebp-24]
 0041A14A    sub         eax,esi
 0041A14C    mov         ecx,eax
 0041A14E    mov         ebx,1
 0041A153    shl         ebx,cl
 0041A155    mov         dword ptr [ebp-14],ebx
 0041A158    mov         ecx,dword ptr [ebp-10]
 0041A15B    inc         ecx
 0041A15C    cmp         ecx,dword ptr [ebp-14]
>0041A15F    jae         0041A189
 0041A161    sub         dword ptr [ebp-14],ecx
 0041A164    mov         ecx,dword ptr [ebp-24]
 0041A167    lea         ecx,[ebp+ecx*4-7C]
 0041A16B    cmp         edx,eax
>0041A16D    jbe         0041A189
 0041A16F    inc         eax
 0041A170    cmp         edx,eax
>0041A172    jbe         0041A189
 0041A174    shl         dword ptr [ebp-14],1
 0041A177    add         ecx,4
 0041A17A    mov         edi,dword ptr [ecx]
 0041A17C    cmp         edi,dword ptr [ebp-14]
>0041A17F    jae         0041A189
 0041A181    sub         dword ptr [ebp-14],edi
 0041A184    inc         eax
 0041A185    cmp         edx,eax
>0041A187    ja          0041A174
 0041A189    mov         ecx,eax
 0041A18B    mov         edx,1
 0041A190    shl         edx,cl
 0041A192    mov         ecx,dword ptr [ebp+10]
 0041A195    mov         ecx,dword ptr [ecx]
 0041A197    add         ecx,edx
 0041A199    cmp         ecx,5A0
>0041A19F    jbe         0041A1AB
 0041A1A1    mov         eax,0FFFFFFFC
>0041A1A6    jmp         0041A340
 0041A1AB    mov         ecx,dword ptr [ebp+10]
 0041A1AE    mov         ecx,dword ptr [ecx]
 0041A1B0    mov         ebx,dword ptr [ebp+18]
 0041A1B3    lea         ecx,[ebx+ecx*8]
 0041A1B6    mov         dword ptr [ebp-30],ecx
 0041A1B9    mov         ecx,dword ptr [ebp-1C]
 0041A1BC    mov         ebx,dword ptr [ebp-30]
 0041A1BF    mov         dword ptr [ebp+ecx*4-0B8],ebx
 0041A1C6    mov         ecx,dword ptr [ebp+10]
 0041A1C9    add         dword ptr [ecx],edx
 0041A1CB    cmp         dword ptr [ebp-1C],0
>0041A1CF    je          0041A21F
 0041A1D1    mov         ecx,dword ptr [ebp-1C]
 0041A1D4    mov         ebx,dword ptr [ebp-20]
 0041A1D7    mov         dword ptr [ebp+ecx*4-0F8],ebx
 0041A1DE    mov         cl,byte ptr [ebp-28]
 0041A1E1    mov         byte ptr [ebp-37],cl
 0041A1E4    mov         byte ptr [ebp-38],al
 0041A1E7    mov         ecx,esi
 0041A1E9    sub         ecx,dword ptr [ebp-28]
 0041A1EC    mov         eax,dword ptr [ebp-20]
 0041A1EF    shr         eax,cl
 0041A1F1    mov         ecx,dword ptr [ebp-1C]
 0041A1F4    mov         ebx,dword ptr [ebp-30]
 0041A1F7    sub         ebx,dword ptr [ebp+ecx*4-0BC]
 0041A1FE    shr         ebx,3
 0041A201    sub         ebx,eax
 0041A203    mov         dword ptr [ebp-34],ebx
 0041A206    mov         ecx,dword ptr [ebp-1C]
 0041A209    mov         ecx,dword ptr [ebp+ecx*4-0BC]
 0041A210    mov         ebx,dword ptr [ebp-38]
 0041A213    mov         dword ptr [ecx+eax*8],ebx
 0041A216    mov         ebx,dword ptr [ebp-34]
 0041A219    mov         dword ptr [ecx+eax*8+4],ebx
>0041A21D    jmp         0041A227
 0041A21F    mov         eax,dword ptr [ebp+20]
 0041A222    mov         ecx,dword ptr [ebp-30]
 0041A225    mov         dword ptr [eax],ecx
 0041A227    mov         eax,dword ptr [ebp-28]
 0041A22A    add         eax,esi
 0041A22C    cmp         eax,dword ptr [ebp-24]
>0041A22F    jl          0041A134
 0041A235    mov         al,byte ptr [ebp-24]
 0041A238    mov         ecx,esi
 0041A23A    sub         al,cl
 0041A23C    mov         byte ptr [ebp-37],al
 0041A23F    mov         eax,dword ptr [ebp+0C]
 0041A242    mov         ecx,dword ptr [ebp-0C]
 0041A245    lea         eax,[eax+ecx*4]
 0041A248    cmp         eax,dword ptr [ebp-2C]
>0041A24B    ja          0041A253
 0041A24D    mov         byte ptr [ebp-38],0C0
>0041A251    jmp         0041A29C
 0041A253    mov         eax,dword ptr [ebp-2C]
 0041A256    mov         eax,dword ptr [eax]
 0041A258    cmp         eax,dword ptr [ebp+34]
>0041A25B    jae         0041A277
 0041A25D    cmp         eax,100
>0041A262    jae         0041A26A
 0041A264    mov         byte ptr [ebp-38],0
>0041A268    jmp         0041A26E
 0041A26A    mov         byte ptr [ebp-38],60
 0041A26E    mov         dword ptr [ebp-34],eax
 0041A271    add         dword ptr [ebp-2C],4
>0041A275    jmp         0041A29C
 0041A277    sub         eax,dword ptr [ebp+34]
 0041A27A    mov         ecx,dword ptr [ebp+28]
 0041A27D    mov         al,byte ptr [ecx+eax*4]
 0041A280    add         al,10
 0041A282    add         al,40
 0041A284    mov         byte ptr [ebp-38],al
 0041A287    mov         eax,dword ptr [ebp-2C]
 0041A28A    mov         eax,dword ptr [eax]
 0041A28C    sub         eax,dword ptr [ebp+34]
 0041A28F    mov         ecx,dword ptr [ebp+30]
 0041A292    mov         eax,dword ptr [ecx+eax*4]
 0041A295    mov         dword ptr [ebp-34],eax
 0041A298    add         dword ptr [ebp-2C],4
 0041A29C    mov         ecx,dword ptr [ebp-24]
 0041A29F    sub         ecx,esi
 0041A2A1    mov         eax,1
 0041A2A6    shl         eax,cl
 0041A2A8    mov         dword ptr [ebp-14],eax
 0041A2AB    mov         ecx,esi
 0041A2AD    mov         eax,dword ptr [ebp-20]
 0041A2B0    shr         eax,cl
 0041A2B2    cmp         edx,eax
>0041A2B4    jbe         0041A2CD
 0041A2B6    mov         ecx,dword ptr [ebp-30]
 0041A2B9    mov         ebx,dword ptr [ebp-38]
 0041A2BC    mov         dword ptr [ecx+eax*8],ebx
 0041A2BF    mov         ebx,dword ptr [ebp-34]
 0041A2C2    mov         dword ptr [ecx+eax*8+4],ebx
 0041A2C6    add         eax,dword ptr [ebp-14]
 0041A2C9    cmp         edx,eax
>0041A2CB    ja          0041A2B6
 0041A2CD    mov         ecx,dword ptr [ebp-24]
 0041A2D0    dec         ecx
 0041A2D1    mov         eax,1
 0041A2D6    shl         eax,cl
>0041A2D8    jmp         0041A2DF
 0041A2DA    xor         dword ptr [ebp-20],eax
 0041A2DD    shr         eax,1
 0041A2DF    test        dword ptr [ebp-20],eax
>0041A2E2    jne         0041A2DA
 0041A2E4    xor         dword ptr [ebp-20],eax
 0041A2E7    mov         ecx,esi
 0041A2E9    mov         eax,1
 0041A2EE    shl         eax,cl
 0041A2F0    dec         eax
>0041A2F1    jmp         0041A303
 0041A2F3    dec         dword ptr [ebp-1C]
 0041A2F6    sub         esi,dword ptr [ebp-28]
 0041A2F9    mov         ecx,esi
 0041A2FB    mov         eax,1
 0041A300    shl         eax,cl
 0041A302    dec         eax
 0041A303    and         eax,dword ptr [ebp-20]
 0041A306    mov         ecx,dword ptr [ebp-1C]
 0041A309    cmp         eax,dword ptr [ebp+ecx*4-0F8]
>0041A310    jne         0041A2F3
 0041A312    cmp         dword ptr [ebp-10],0
>0041A316    jne         0041A12C
 0041A31C    inc         dword ptr [ebp-24]
 0041A31F    mov         eax,dword ptr [ebp-24]
 0041A322    cmp         eax,dword ptr [ebp-18]
>0041A325    jle         0041A118
 0041A32B    cmp         dword ptr [ebp-3C],0
>0041A32F    je          0041A33E
 0041A331    cmp         dword ptr [ebp-18],1
>0041A335    je          0041A33E
 0041A337    mov         eax,0FFFFFFFB
>0041A33C    jmp         0041A340
 0041A33E    xor         eax,eax
 0041A340    pop         edi
 0041A341    pop         esi
 0041A342    pop         ebx
 0041A343    mov         esp,ebp
 0041A345    pop         ebp
 0041A346    ret         30
end;*}

//0041A34C
{*function sub_0041A34C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0041A34C    push        ebp
 0041A34D    mov         ebp,esp
 0041A34F    add         esp,0FFFFFFF4
 0041A352    push        ebx
 0041A353    push        esi
 0041A354    push        edi
 0041A355    mov         ebx,ecx
 0041A357    mov         edi,edx
 0041A359    mov         esi,eax
 0041A35B    xor         eax,eax
 0041A35D    mov         dword ptr [ebp-8],eax
 0041A360    mov         eax,4C
 0041A365    call        @GetMem
 0041A36A    mov         dword ptr [ebp-0C],eax
 0041A36D    xor         edx,edx
 0041A36F    push        ebp
 0041A370    push        41A3DB
 0041A375    push        dword ptr fs:[edx]
 0041A378    mov         dword ptr fs:[edx],esp
 0041A37B    push        13
 0041A37D    push        53E6F0
 0041A382    push        1E
 0041A384    push        53E76C
 0041A389    push        1E
 0041A38B    mov         eax,dword ptr [ebp+14]
 0041A38E    push        eax
 0041A38F    push        ebx
 0041A390    mov         eax,dword ptr [ebp+10]
 0041A393    push        eax
 0041A394    mov         eax,dword ptr [ebp+0C]
 0041A397    push        eax
 0041A398    lea         eax,[ebp-8]
 0041A39B    push        eax
 0041A39C    mov         eax,dword ptr [ebp-0C]
 0041A39F    push        eax
 0041A3A0    push        1FFFFFFE
 0041A3A5    mov         eax,esi
 0041A3A7    mov         ecx,13
 0041A3AC    mov         edx,edi
 0041A3AE    call        00419F54
 0041A3B3    cmp         eax,0FFFFFFFB
>0041A3B6    je          0041A3BD
 0041A3B8    cmp         dword ptr [ebx],0
>0041A3BB    jne         0041A3C2
 0041A3BD    mov         eax,0FFFFFFFD
 0041A3C2    mov         dword ptr [ebp-4],eax
 0041A3C5    xor         eax,eax
 0041A3C7    pop         edx
 0041A3C8    pop         ecx
 0041A3C9    pop         ecx
 0041A3CA    mov         dword ptr fs:[eax],edx
 0041A3CD    push        41A3E2
 0041A3D2    mov         eax,dword ptr [ebp-0C]
 0041A3D5    call        @FreeMem
 0041A3DA    ret
>0041A3DB    jmp         @HandleFinally
>0041A3E0    jmp         0041A3D2
 0041A3E2    mov         eax,dword ptr [ebp-4]
 0041A3E5    pop         edi
 0041A3E6    pop         esi
 0041A3E7    pop         ebx
 0041A3E8    mov         esp,ebp
 0041A3EA    pop         ebp
 0041A3EB    ret         10
end;*}

//0041A3F0
{*function sub_0041A3F0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0041A3F0    push        ebp
 0041A3F1    mov         ebp,esp
 0041A3F3    add         esp,0FFFFFFF0
 0041A3F6    push        ebx
 0041A3F7    push        esi
 0041A3F8    push        edi
 0041A3F9    mov         edi,ecx
 0041A3FB    mov         dword ptr [ebp-4],edx
 0041A3FE    mov         esi,eax
 0041A400    xor         eax,eax
 0041A402    mov         dword ptr [ebp-0C],eax
 0041A405    mov         eax,480
 0041A40A    call        @GetMem
 0041A40F    mov         dword ptr [ebp-10],eax
 0041A412    xor         eax,eax
 0041A414    push        ebp
 0041A415    push        41A50E
 0041A41A    push        dword ptr fs:[eax]
 0041A41D    mov         dword ptr fs:[eax],esp
 0041A420    xor         eax,eax
 0041A422    mov         dword ptr [ebp-8],eax
 0041A425    push        101
 0041A42A    push        53E6F0
 0041A42F    push        1E
 0041A431    push        53E76C
 0041A436    push        1E
 0041A438    mov         eax,dword ptr [ebp+18]
 0041A43B    push        eax
 0041A43C    mov         eax,dword ptr [ebp+20]
 0041A43F    push        eax
 0041A440    mov         eax,dword ptr [ebp+10]
 0041A443    push        eax
 0041A444    mov         eax,dword ptr [ebp+0C]
 0041A447    push        eax
 0041A448    lea         eax,[ebp-0C]
 0041A44B    push        eax
 0041A44C    mov         eax,dword ptr [ebp-10]
 0041A44F    push        eax
 0041A450    push        1FFFFFFE
 0041A455    mov         eax,edi
 0041A457    mov         ecx,esi
 0041A459    mov         edx,dword ptr [ebp+24]
 0041A45C    call        00419F54
 0041A461    mov         ebx,eax
 0041A463    test        ebx,ebx
>0041A465    jne         0041A46F
 0041A467    mov         eax,dword ptr [ebp+20]
 0041A46A    cmp         dword ptr [eax],0
>0041A46D    jne         0041A484
 0041A46F    mov         eax,dword ptr [ebp-10]
 0041A472    call        @FreeMem
 0041A477    mov         dword ptr [ebp-8],ebx
 0041A47A    call        @TryFinallyExit
>0041A47F    jmp         0041A515
 0041A484    push        0
 0041A486    push        53E7E8
 0041A48B    push        1D
 0041A48D    push        53E860
 0041A492    push        1D
 0041A494    mov         eax,dword ptr [ebp+14]
 0041A497    push        eax
 0041A498    mov         eax,dword ptr [ebp+1C]
 0041A49B    push        eax
 0041A49C    mov         eax,dword ptr [ebp+10]
 0041A49F    push        eax
 0041A4A0    mov         eax,dword ptr [ebp+0C]
 0041A4A3    push        eax
 0041A4A4    lea         eax,[ebp-0C]
 0041A4A7    push        eax
 0041A4A8    mov         eax,dword ptr [ebp-10]
 0041A4AB    push        eax
 0041A4AC    push        1FFFFFFE
 0041A4B1    lea         eax,[edi+esi*4]
 0041A4B4    mov         ecx,dword ptr [ebp-4]
 0041A4B7    mov         edx,1FFFFFFE
 0041A4BC    call        00419F54
 0041A4C1    mov         ebx,eax
 0041A4C3    test        ebx,ebx
>0041A4C5    jne         0041A4D7
 0041A4C7    mov         eax,dword ptr [ebp+1C]
 0041A4CA    cmp         dword ptr [eax],0
>0041A4CD    jne         0041A4F8
 0041A4CF    cmp         esi,101
>0041A4D5    jbe         0041A4F8
 0041A4D7    cmp         ebx,0FFFFFFFB
>0041A4DA    jne         0041A4E3
 0041A4DC    mov         ebx,0FFFFFFFD
>0041A4E1    jmp         0041A4ED
 0041A4E3    cmp         ebx,0FFFFFFFC
>0041A4E6    je          0041A4ED
 0041A4E8    mov         ebx,0FFFFFFFD
 0041A4ED    mov         eax,dword ptr [ebp-10]
 0041A4F0    call        @FreeMem
 0041A4F5    mov         dword ptr [ebp-8],ebx
 0041A4F8    xor         eax,eax
 0041A4FA    pop         edx
 0041A4FB    pop         ecx
 0041A4FC    pop         ecx
 0041A4FD    mov         dword ptr fs:[eax],edx
 0041A500    push        41A515
 0041A505    mov         eax,dword ptr [ebp-10]
 0041A508    call        @FreeMem
 0041A50D    ret
>0041A50E    jmp         @HandleFinally
>0041A513    jmp         0041A505
 0041A515    mov         eax,dword ptr [ebp-8]
 0041A518    pop         edi
 0041A519    pop         esi
 0041A51A    pop         ebx
 0041A51B    mov         esp,ebp
 0041A51D    pop         ebp
 0041A51E    ret         20
end;*}

//0041A524
{*function sub_0041A524(?:?; ?:?; ?:?; ?:?):?;
begin
 0041A524    push        ebp
 0041A525    mov         ebp,esp
 0041A527    add         esp,0FFFFFFE8
 0041A52A    mov         dword ptr [ebp-0C],ecx
 0041A52D    mov         dword ptr [ebp-8],edx
 0041A530    mov         dword ptr [ebp-4],eax
 0041A533    cmp         byte ptr ds:[53E6EC],0;gvar_0053E6EC
>0041A53A    jne         0041A6B7
 0041A540    xor         eax,eax
 0041A542    mov         dword ptr [ebp-18],eax
 0041A545    xor         eax,eax
 0041A547    mov         dword ptr [ebp-10],eax
 0041A54A    xor         eax,eax
 0041A54C    mov         dword ptr [ebp-14],eax
 0041A54F    xor         edx,edx
 0041A551    push        ebp
 0041A552    push        41A6B0
 0041A557    push        dword ptr fs:[edx]
 0041A55A    mov         dword ptr fs:[edx],esp
 0041A55D    mov         eax,480
 0041A562    call        @GetMem
 0041A567    mov         dword ptr [ebp-10],eax
 0041A56A    mov         eax,480
 0041A56F    call        @GetMem
 0041A574    mov         dword ptr [ebp-14],eax
 0041A577    xor         eax,eax
 0041A579    mov         edx,dword ptr [ebp-10]
 0041A57C    mov         dword ptr [edx+eax*4],8
 0041A583    inc         eax
 0041A584    cmp         eax,90
>0041A589    jne         0041A579
 0041A58B    mov         eax,90
 0041A590    mov         edx,dword ptr [ebp-10]
 0041A593    mov         dword ptr [edx+eax*4],9
 0041A59A    inc         eax
 0041A59B    cmp         eax,100
>0041A5A0    jne         0041A590
 0041A5A2    mov         eax,100
 0041A5A7    mov         edx,dword ptr [ebp-10]
 0041A5AA    mov         dword ptr [edx+eax*4],7
 0041A5B1    inc         eax
 0041A5B2    cmp         eax,118
>0041A5B7    jne         0041A5A7
 0041A5B9    mov         eax,118
 0041A5BE    mov         edx,dword ptr [ebp-10]
 0041A5C1    mov         dword ptr [edx+eax*4],8
 0041A5C8    inc         eax
 0041A5C9    cmp         eax,120
>0041A5CE    jne         0041A5BE
 0041A5D0    mov         dword ptr ds:[55D7C0],9;gvar_0055D7C0
 0041A5DA    push        101
 0041A5DF    push        53E6F0
 0041A5E4    push        1E
 0041A5E6    push        53E76C
 0041A5EB    push        1E
 0041A5ED    push        55D7C8;gvar_0055D7C8
 0041A5F2    push        55D7C0;gvar_0055D7C0
 0041A5F7    push        55C6C0;gvar_0055C6C0
 0041A5FC    push        21F
 0041A601    lea         eax,[ebp-18]
 0041A604    push        eax
 0041A605    mov         eax,dword ptr [ebp-14]
 0041A608    push        eax
 0041A609    push        1FFFFFFE
 0041A60E    mov         eax,dword ptr [ebp-10]
 0041A611    mov         ecx,120
 0041A616    mov         edx,11F
 0041A61B    call        00419F54
 0041A620    xor         eax,eax
 0041A622    mov         edx,dword ptr [ebp-10]
 0041A625    mov         dword ptr [edx+eax*4],5
 0041A62C    inc         eax
 0041A62D    cmp         eax,1E
>0041A630    jne         0041A622
 0041A632    mov         dword ptr ds:[55D7C4],5;gvar_0055D7C4
 0041A63C    push        0
 0041A63E    push        53E7E8
 0041A643    push        1D
 0041A645    push        53E860
 0041A64A    push        1D
 0041A64C    push        55D7CC;gvar_0055D7CC
 0041A651    push        55D7C4;gvar_0055D7C4
 0041A656    push        55C6C0;gvar_0055C6C0
 0041A65B    push        21F
 0041A660    lea         eax,[ebp-18]
 0041A663    push        eax
 0041A664    mov         eax,dword ptr [ebp-14]
 0041A667    push        eax
 0041A668    push        1FFFFFFE
 0041A66D    mov         eax,dword ptr [ebp-10]
 0041A670    mov         ecx,1E
 0041A675    mov         edx,11F
 0041A67A    call        00419F54
 0041A67F    mov         byte ptr ds:[53E6EC],1;gvar_0053E6EC
 0041A686    xor         eax,eax
 0041A688    pop         edx
 0041A689    pop         ecx
 0041A68A    pop         ecx
 0041A68B    mov         dword ptr fs:[eax],edx
 0041A68E    push        41A6B7
 0041A693    cmp         dword ptr [ebp-14],0
>0041A697    je          0041A6A1
 0041A699    mov         eax,dword ptr [ebp-14]
 0041A69C    call        @FreeMem
 0041A6A1    cmp         dword ptr [ebp-10],0
>0041A6A5    je          0041A6AF
 0041A6A7    mov         eax,dword ptr [ebp-10]
 0041A6AA    call        @FreeMem
 0041A6AF    ret
>0041A6B0    jmp         @HandleFinally
>0041A6B5    jmp         0041A693
 0041A6B7    mov         eax,dword ptr [ebp-4]
 0041A6BA    mov         edx,dword ptr ds:[55D7C0];gvar_0055D7C0
 0041A6C0    mov         dword ptr [eax],edx
 0041A6C2    mov         eax,dword ptr [ebp-8]
 0041A6C5    mov         edx,dword ptr ds:[55D7C4];gvar_0055D7C4
 0041A6CB    mov         dword ptr [eax],edx
 0041A6CD    mov         eax,dword ptr [ebp-0C]
 0041A6D0    mov         edx,dword ptr ds:[55D7C8];gvar_0055D7C8
 0041A6D6    mov         dword ptr [eax],edx
 0041A6D8    mov         eax,dword ptr [ebp+0C]
 0041A6DB    mov         edx,dword ptr ds:[55D7CC];gvar_0055D7CC
 0041A6E1    mov         dword ptr [eax],edx
 0041A6E3    xor         eax,eax
 0041A6E5    mov         esp,ebp
 0041A6E7    pop         ebp
 0041A6E8    ret         8
end;*}

//0041A6EC
{*function sub_0041A6EC(?:?; ?:?):?;
begin
 0041A6EC    push        ebp
 0041A6ED    mov         ebp,esp
 0041A6EF    push        ebx
 0041A6F0    mov         ecx,eax
 0041A6F2    mov         eax,dword ptr [ebp+8]
 0041A6F5    mov         eax,dword ptr [eax-4]
 0041A6F8    mov         edx,dword ptr [ebp+8]
 0041A6FB    mov         edx,dword ptr [edx-8]
 0041A6FE    mov         dword ptr [edx+20],eax
 0041A701    mov         eax,dword ptr [ebp+8]
 0041A704    mov         eax,dword ptr [eax-0C]
 0041A707    mov         edx,dword ptr [ebp+8]
 0041A70A    mov         edx,dword ptr [edx-8]
 0041A70D    mov         dword ptr [edx+1C],eax
 0041A710    mov         eax,dword ptr [ebp+8]
 0041A713    mov         eax,dword ptr [eax-10]
 0041A716    mov         edx,dword ptr [ebp+8]
 0041A719    mov         edx,dword ptr [edx-14]
 0041A71C    mov         dword ptr [edx+4],eax
 0041A71F    mov         eax,dword ptr [ebp+8]
 0041A722    mov         eax,dword ptr [eax-18]
 0041A725    mov         edx,dword ptr [ebp+8]
 0041A728    mov         edx,dword ptr [edx-14]
 0041A72B    sub         eax,dword ptr [edx]
 0041A72D    xor         edx,edx
 0041A72F    mov         ebx,dword ptr [ebp+8]
 0041A732    mov         ebx,dword ptr [ebx-14]
 0041A735    add         dword ptr [ebx+8],eax
 0041A738    adc         dword ptr [ebx+0C],edx
 0041A73B    mov         eax,dword ptr [ebp+8]
 0041A73E    mov         eax,dword ptr [eax-18]
 0041A741    mov         edx,dword ptr [ebp+8]
 0041A744    mov         edx,dword ptr [edx-14]
 0041A747    mov         dword ptr [edx],eax
 0041A749    mov         eax,dword ptr [ebp+8]
 0041A74C    mov         eax,dword ptr [eax-1C]
 0041A74F    mov         edx,dword ptr [ebp+8]
 0041A752    mov         edx,dword ptr [edx-8]
 0041A755    mov         dword ptr [edx+34],eax
 0041A758    test        cl,cl
>0041A75A    je          0041A77B
 0041A75C    mov         eax,dword ptr [ebp+8]
 0041A75F    push        eax
 0041A760    mov         eax,dword ptr [ebp+8]
 0041A763    mov         ecx,dword ptr [eax-20]
 0041A766    mov         eax,dword ptr [ebp+8]
 0041A769    mov         edx,dword ptr [eax-14]
 0041A76C    mov         eax,dword ptr [ebp+8]
 0041A76F    mov         eax,dword ptr [eax-8]
 0041A772    call        00419404
 0041A777    pop         ecx
 0041A778    pop         ebx
 0041A779    pop         ebp
 0041A77A    ret
 0041A77B    xor         eax,eax
 0041A77D    pop         ebx
 0041A77E    pop         ebp
 0041A77F    ret
end;*}

//0041A780
{*function sub_0041A780(?:?; ?:Byte; ?:?):?;
begin
 0041A780    push        ebp
 0041A781    mov         ebp,esp
 0041A783    add         esp,0FFFFFFC8
 0041A786    push        ebx
 0041A787    push        esi
 0041A788    push        edi
 0041A789    mov         dword ptr [ebp-20],ecx
 0041A78C    mov         dword ptr [ebp-14],edx
 0041A78F    mov         dword ptr [ebp-8],eax
 0041A792    lea         esi,[ebp-0C]
 0041A795    mov         eax,dword ptr [ebp-14]
 0041A798    mov         eax,dword ptr [eax]
 0041A79A    mov         dword ptr [ebp-18],eax
 0041A79D    mov         eax,dword ptr [ebp-14]
 0041A7A0    mov         eax,dword ptr [eax+4]
 0041A7A3    mov         dword ptr [ebp-10],eax
 0041A7A6    mov         eax,dword ptr [ebp-8]
 0041A7A9    mov         eax,dword ptr [eax+20]
 0041A7AC    mov         dword ptr [ebp-4],eax
 0041A7AF    mov         eax,dword ptr [ebp-8]
 0041A7B2    mov         eax,dword ptr [eax+1C]
 0041A7B5    mov         dword ptr [esi],eax
 0041A7B7    mov         eax,dword ptr [ebp-8]
 0041A7BA    mov         eax,dword ptr [eax+34]
 0041A7BD    mov         dword ptr [ebp-1C],eax
 0041A7C0    mov         edx,dword ptr [ebp-8]
 0041A7C3    mov         edx,dword ptr [edx+30]
 0041A7C6    mov         eax,dword ptr [ebp-1C]
 0041A7C9    cmp         edx,eax
>0041A7CB    jbe         0041A7D8
 0041A7CD    mov         ecx,dword ptr [ebp-8]
 0041A7D0    sub         edx,eax
 0041A7D2    dec         edx
 0041A7D3    mov         dword ptr [ebp-24],edx
>0041A7D6    jmp         0041A7E3
 0041A7D8    mov         edx,dword ptr [ebp-8]
 0041A7DB    mov         edx,dword ptr [edx+2C]
 0041A7DE    sub         edx,eax
 0041A7E0    mov         dword ptr [ebp-24],edx
 0041A7E3    mov         eax,dword ptr [ebp-8]
 0041A7E6    movzx       eax,byte ptr [eax]
 0041A7E9    cmp         eax,9
>0041A7EC    ja          0041B0F7
 0041A7F2    jmp         dword ptr [eax*4+41A7F9]
 0041A7F2    dd          0041A821
 0041A7F2    dd          0041A93B
 0041A7F2    dd          0041A9F3
 0041A7F2    dd          0041AB67
 0041A7F2    dd          0041ACB4
 0041A7F2    dd          0041AD6B
 0041A7F2    dd          0041AFD6
 0041A7F2    dd          0041B08A
 0041A7F2    dd          0041B0D3
 0041A7F2    dd          0041B0E5
 0041A821    cmp         dword ptr [esi],3
>0041A824    jae         0041A85A
 0041A826    cmp         dword ptr [ebp-10],0
>0041A82A    jne         0041A83A
 0041A82C    push        ebp
 0041A82D    mov         al,1
 0041A82F    call        0041A6EC
 0041A834    pop         ecx
>0041A835    jmp         0041B107
 0041A83A    xor         eax,eax
 0041A83C    mov         dword ptr [ebp-20],eax
 0041A83F    dec         dword ptr [ebp-10]
 0041A842    mov         ecx,dword ptr [esi]
 0041A844    mov         eax,dword ptr [ebp-18]
 0041A847    movzx       eax,byte ptr [eax]
 0041A84A    shl         eax,cl
 0041A84C    or          dword ptr [ebp-4],eax
 0041A84F    inc         dword ptr [ebp-18]
 0041A852    add         dword ptr [esi],8
 0041A855    cmp         dword ptr [esi],3
>0041A858    jb          0041A826
 0041A85A    mov         ebx,dword ptr [ebp-4]
 0041A85D    and         ebx,7
 0041A860    mov         eax,ebx
 0041A862    and         eax,1
 0041A865    mov         edx,dword ptr [ebp-8]
 0041A868    mov         byte ptr [edx+18],al
 0041A86B    shr         ebx,1
 0041A86D    sub         ebx,1
>0041A870    jb          0041A887
>0041A872    je          0041A8A5
 0041A874    dec         ebx
>0041A875    je          0041A907
 0041A87B    dec         ebx
>0041A87C    je          0041A919
>0041A882    jmp         0041A7E3
 0041A887    shr         dword ptr [ebp-4],3
 0041A88B    sub         dword ptr [esi],3
 0041A88E    mov         ebx,dword ptr [esi]
 0041A890    and         ebx,7
 0041A893    mov         ecx,ebx
 0041A895    shr         dword ptr [ebp-4],cl
 0041A898    sub         dword ptr [esi],ebx
 0041A89A    mov         eax,dword ptr [ebp-8]
 0041A89D    mov         byte ptr [eax],1
>0041A8A0    jmp         0041A7E3
 0041A8A5    lea         eax,[ebp-34]
 0041A8A8    push        eax
 0041A8A9    mov         eax,dword ptr [ebp-14]
 0041A8AC    push        eax
 0041A8AD    lea         ecx,[ebp-30]
 0041A8B0    lea         edx,[ebp-2C]
 0041A8B3    lea         eax,[ebp-28]
 0041A8B6    call        0041A524
 0041A8BB    mov         eax,dword ptr [ebp-34]
 0041A8BE    push        eax
 0041A8BF    mov         eax,dword ptr [ebp-14]
 0041A8C2    push        eax
 0041A8C3    mov         ecx,dword ptr [ebp-30]
 0041A8C6    mov         edx,dword ptr [ebp-2C]
 0041A8C9    mov         eax,dword ptr [ebp-28]
 0041A8CC    call        004197F4
 0041A8D1    mov         ebx,eax
 0041A8D3    mov         eax,dword ptr [ebp-8]
 0041A8D6    mov         dword ptr [eax+0C],ebx
 0041A8D9    mov         eax,dword ptr [ebp-8]
 0041A8DC    test        ebx,ebx
>0041A8DE    jne         0041A8F5
 0041A8E0    mov         dword ptr [ebp-20],0FFFFFFFC
 0041A8E7    push        ebp
 0041A8E8    mov         al,1
 0041A8EA    call        0041A6EC
 0041A8EF    pop         ecx
>0041A8F0    jmp         0041B107
 0041A8F5    shr         dword ptr [ebp-4],3
 0041A8F9    sub         dword ptr [esi],3
 0041A8FC    mov         eax,dword ptr [ebp-8]
 0041A8FF    mov         byte ptr [eax],6
>0041A902    jmp         0041A7E3
 0041A907    shr         dword ptr [ebp-4],3
 0041A90B    sub         dword ptr [esi],3
 0041A90E    mov         eax,dword ptr [ebp-8]
 0041A911    mov         byte ptr [eax],3
>0041A914    jmp         0041A7E3
 0041A919    shr         dword ptr [ebp-4],3
 0041A91D    sub         dword ptr [esi],3
 0041A920    mov         eax,dword ptr [ebp-8]
 0041A923    mov         byte ptr [eax],9
 0041A926    mov         dword ptr [ebp-20],0FFFFFFFD
 0041A92D    push        ebp
 0041A92E    mov         al,1
 0041A930    call        0041A6EC
 0041A935    pop         ecx
>0041A936    jmp         0041B107
 0041A93B    cmp         dword ptr [esi],20
>0041A93E    jae         0041A974
 0041A940    cmp         dword ptr [ebp-10],0
>0041A944    jne         0041A954
 0041A946    push        ebp
 0041A947    mov         al,1
 0041A949    call        0041A6EC
 0041A94E    pop         ecx
>0041A94F    jmp         0041B107
 0041A954    xor         eax,eax
 0041A956    mov         dword ptr [ebp-20],eax
 0041A959    dec         dword ptr [ebp-10]
 0041A95C    mov         ecx,dword ptr [esi]
 0041A95E    mov         eax,dword ptr [ebp-18]
 0041A961    movzx       eax,byte ptr [eax]
 0041A964    shl         eax,cl
 0041A966    or          dword ptr [ebp-4],eax
 0041A969    inc         dword ptr [ebp-18]
 0041A96C    add         dword ptr [esi],8
 0041A96F    cmp         dword ptr [esi],20
>0041A972    jb          0041A940
 0041A974    mov         eax,dword ptr [ebp-4]
 0041A977    not         eax
 0041A979    shr         eax,10
 0041A97C    and         eax,0FFFF
 0041A981    mov         edx,dword ptr [ebp-4]
 0041A984    and         edx,0FFFF
 0041A98A    cmp         eax,edx
>0041A98C    je          0041A9A9
 0041A98E    mov         eax,dword ptr [ebp-8]
 0041A991    mov         byte ptr [eax],9
 0041A994    mov         dword ptr [ebp-20],0FFFFFFFD
 0041A99B    push        ebp
 0041A99C    mov         al,1
 0041A99E    call        0041A6EC
 0041A9A3    pop         ecx
>0041A9A4    jmp         0041B107
 0041A9A9    mov         eax,dword ptr [ebp-4]
 0041A9AC    and         eax,0FFFF
 0041A9B1    mov         edx,dword ptr [ebp-8]
 0041A9B4    mov         dword ptr [edx+4],eax
 0041A9B7    xor         eax,eax
 0041A9B9    mov         dword ptr [esi],eax
 0041A9BB    xor         eax,eax
 0041A9BD    mov         dword ptr [ebp-4],eax
 0041A9C0    mov         eax,dword ptr [ebp-8]
 0041A9C3    cmp         dword ptr [eax+4],0
>0041A9C7    je          0041A9D4
 0041A9C9    mov         eax,dword ptr [ebp-8]
 0041A9CC    mov         byte ptr [eax],2
>0041A9CF    jmp         0041A7E3
 0041A9D4    mov         eax,dword ptr [ebp-8]
 0041A9D7    cmp         byte ptr [eax+18],0
>0041A9DB    je          0041A9E8
 0041A9DD    mov         eax,dword ptr [ebp-8]
 0041A9E0    mov         byte ptr [eax],7
>0041A9E3    jmp         0041A7E3
 0041A9E8    mov         eax,dword ptr [ebp-8]
 0041A9EB    mov         byte ptr [eax],0
>0041A9EE    jmp         0041A7E3
 0041A9F3    cmp         dword ptr [ebp-10],0
>0041A9F7    jne         0041AA07
 0041A9F9    push        ebp
 0041A9FA    mov         al,1
 0041A9FC    call        0041A6EC
 0041AA01    pop         ecx
>0041AA02    jmp         0041B107
 0041AA07    cmp         dword ptr [ebp-24],0
>0041AA0B    jne         0041AB01
 0041AA11    mov         eax,dword ptr [ebp-8]
 0041AA14    mov         eax,dword ptr [eax+2C]
 0041AA17    cmp         eax,dword ptr [ebp-1C]
>0041AA1A    jne         0041AA56
 0041AA1C    mov         eax,dword ptr [ebp-8]
 0041AA1F    mov         eax,dword ptr [eax+30]
 0041AA22    mov         edx,dword ptr [ebp-8]
 0041AA25    cmp         eax,dword ptr [edx+28]
>0041AA28    je          0041AA56
 0041AA2A    mov         eax,dword ptr [ebp-8]
 0041AA2D    mov         eax,dword ptr [eax+28]
 0041AA30    mov         dword ptr [ebp-1C],eax
 0041AA33    mov         edx,dword ptr [ebp-8]
 0041AA36    mov         edx,dword ptr [edx+30]
 0041AA39    mov         eax,dword ptr [ebp-1C]
 0041AA3C    cmp         edx,eax
>0041AA3E    jbe         0041AA4B
 0041AA40    mov         ecx,dword ptr [ebp-8]
 0041AA43    sub         edx,eax
 0041AA45    dec         edx
 0041AA46    mov         dword ptr [ebp-24],edx
>0041AA49    jmp         0041AA56
 0041AA4B    mov         edx,dword ptr [ebp-8]
 0041AA4E    mov         edx,dword ptr [edx+2C]
 0041AA51    sub         edx,eax
 0041AA53    mov         dword ptr [ebp-24],edx
 0041AA56    cmp         dword ptr [ebp-24],0
>0041AA5A    jne         0041AB01
 0041AA60    mov         eax,dword ptr [ebp-8]
 0041AA63    mov         edx,dword ptr [ebp-1C]
 0041AA66    mov         dword ptr [eax+34],edx
 0041AA69    push        ebp
 0041AA6A    mov         edx,dword ptr [ebp-14]
 0041AA6D    mov         eax,dword ptr [ebp-8]
 0041AA70    mov         ecx,dword ptr [ebp-20]
 0041AA73    call        00419404
 0041AA78    pop         ecx
 0041AA79    mov         dword ptr [ebp-20],eax
 0041AA7C    mov         eax,dword ptr [ebp-8]
 0041AA7F    mov         eax,dword ptr [eax+34]
 0041AA82    mov         dword ptr [ebp-1C],eax
 0041AA85    mov         edx,dword ptr [ebp-8]
 0041AA88    mov         edx,dword ptr [edx+30]
 0041AA8B    mov         eax,dword ptr [ebp-1C]
 0041AA8E    cmp         edx,eax
>0041AA90    jbe         0041AA9D
 0041AA92    mov         ecx,dword ptr [ebp-8]
 0041AA95    sub         edx,eax
 0041AA97    dec         edx
 0041AA98    mov         dword ptr [ebp-24],edx
>0041AA9B    jmp         0041AAA8
 0041AA9D    mov         edx,dword ptr [ebp-8]
 0041AAA0    mov         edx,dword ptr [edx+2C]
 0041AAA3    sub         edx,eax
 0041AAA5    mov         dword ptr [ebp-24],edx
 0041AAA8    mov         eax,dword ptr [ebp-8]
 0041AAAB    mov         eax,dword ptr [eax+2C]
 0041AAAE    cmp         eax,dword ptr [ebp-1C]
>0041AAB1    jne         0041AAED
 0041AAB3    mov         eax,dword ptr [ebp-8]
 0041AAB6    mov         eax,dword ptr [eax+30]
 0041AAB9    mov         edx,dword ptr [ebp-8]
 0041AABC    cmp         eax,dword ptr [edx+28]
>0041AABF    je          0041AAED
 0041AAC1    mov         eax,dword ptr [ebp-8]
 0041AAC4    mov         eax,dword ptr [eax+28]
 0041AAC7    mov         dword ptr [ebp-1C],eax
 0041AACA    mov         edx,dword ptr [ebp-8]
 0041AACD    mov         edx,dword ptr [edx+30]
 0041AAD0    mov         eax,dword ptr [ebp-1C]
 0041AAD3    cmp         edx,eax
>0041AAD5    jbe         0041AAE2
 0041AAD7    mov         ecx,dword ptr [ebp-8]
 0041AADA    sub         edx,eax
 0041AADC    dec         edx
 0041AADD    mov         dword ptr [ebp-24],edx
>0041AAE0    jmp         0041AAED
 0041AAE2    mov         edx,dword ptr [ebp-8]
 0041AAE5    mov         edx,dword ptr [edx+2C]
 0041AAE8    sub         edx,eax
 0041AAEA    mov         dword ptr [ebp-24],edx
 0041AAED    cmp         dword ptr [ebp-24],0
>0041AAF1    jne         0041AB01
 0041AAF3    push        ebp
 0041AAF4    mov         al,1
 0041AAF6    call        0041A6EC
 0041AAFB    pop         ecx
>0041AAFC    jmp         0041B107
 0041AB01    xor         eax,eax
 0041AB03    mov         dword ptr [ebp-20],eax
 0041AB06    mov         ebx,dword ptr [ebp-8]
 0041AB09    mov         ebx,dword ptr [ebx+4]
 0041AB0C    cmp         ebx,dword ptr [ebp-10]
>0041AB0F    jbe         0041AB14
 0041AB11    mov         ebx,dword ptr [ebp-10]
 0041AB14    cmp         ebx,dword ptr [ebp-24]
>0041AB17    jbe         0041AB1C
 0041AB19    mov         ebx,dword ptr [ebp-24]
 0041AB1C    mov         edx,dword ptr [ebp-1C]
 0041AB1F    mov         eax,dword ptr [ebp-18]
 0041AB22    mov         ecx,ebx
 0041AB24    call        Move
 0041AB29    add         dword ptr [ebp-18],ebx
 0041AB2C    sub         dword ptr [ebp-10],ebx
 0041AB2F    add         dword ptr [ebp-1C],ebx
 0041AB32    sub         dword ptr [ebp-24],ebx
 0041AB35    mov         eax,dword ptr [ebp-8]
 0041AB38    sub         dword ptr [eax+4],ebx
 0041AB3B    mov         eax,dword ptr [ebp-8]
 0041AB3E    cmp         dword ptr [eax+4],0
>0041AB42    jne         0041A7E3
 0041AB48    mov         eax,dword ptr [ebp-8]
 0041AB4B    cmp         byte ptr [eax+18],0
>0041AB4F    je          0041AB5C
 0041AB51    mov         eax,dword ptr [ebp-8]
 0041AB54    mov         byte ptr [eax],7
>0041AB57    jmp         0041A7E3
 0041AB5C    mov         eax,dword ptr [ebp-8]
 0041AB5F    mov         byte ptr [eax],0
>0041AB62    jmp         0041A7E3
 0041AB67    cmp         dword ptr [esi],0E
>0041AB6A    jae         0041ABA0
 0041AB6C    cmp         dword ptr [ebp-10],0
>0041AB70    jne         0041AB80
 0041AB72    push        ebp
 0041AB73    mov         al,1
 0041AB75    call        0041A6EC
 0041AB7A    pop         ecx
>0041AB7B    jmp         0041B107
 0041AB80    xor         eax,eax
 0041AB82    mov         dword ptr [ebp-20],eax
 0041AB85    dec         dword ptr [ebp-10]
 0041AB88    mov         ecx,dword ptr [esi]
 0041AB8A    mov         eax,dword ptr [ebp-18]
 0041AB8D    movzx       eax,byte ptr [eax]
 0041AB90    shl         eax,cl
 0041AB92    or          dword ptr [ebp-4],eax
 0041AB95    inc         dword ptr [ebp-18]
 0041AB98    add         dword ptr [esi],8
 0041AB9B    cmp         dword ptr [esi],0E
>0041AB9E    jb          0041AB6C
 0041ABA0    mov         ebx,dword ptr [ebp-4]
 0041ABA3    and         ebx,3FFF
 0041ABA9    mov         eax,dword ptr [ebp-8]
 0041ABAC    mov         dword ptr [eax+4],ebx
 0041ABAF    mov         eax,ebx
 0041ABB1    and         eax,1F
 0041ABB4    cmp         eax,1D
>0041ABB7    ja          0041ABC6
 0041ABB9    mov         edx,ebx
 0041ABBB    shr         edx,5
 0041ABBE    and         edx,1F
 0041ABC1    cmp         edx,1D
>0041ABC4    jbe         0041ABE1
 0041ABC6    mov         eax,dword ptr [ebp-8]
 0041ABC9    mov         byte ptr [eax],9
 0041ABCC    mov         dword ptr [ebp-20],0FFFFFFFD
 0041ABD3    push        ebp
 0041ABD4    mov         al,1
 0041ABD6    call        0041A6EC
 0041ABDB    pop         ecx
>0041ABDC    jmp         0041B107
 0041ABE1    add         eax,102
 0041ABE6    shr         ebx,5
 0041ABE9    and         ebx,1F
 0041ABEC    add         eax,ebx
 0041ABEE    mov         ebx,eax
 0041ABF0    xor         eax,eax
 0041ABF2    push        ebp
 0041ABF3    push        41AC18
 0041ABF8    push        dword ptr fs:[eax]
 0041ABFB    mov         dword ptr fs:[eax],esp
 0041ABFE    mov         eax,ebx
 0041AC00    shl         eax,2
 0041AC03    call        @GetMem
 0041AC08    mov         edx,dword ptr [ebp-8]
 0041AC0B    mov         dword ptr [edx+0C],eax
 0041AC0E    xor         eax,eax
 0041AC10    pop         edx
 0041AC11    pop         ecx
 0041AC12    pop         ecx
 0041AC13    mov         dword ptr fs:[eax],edx
>0041AC16    jmp         0041AC37
>0041AC18    jmp         @HandleAnyException
 0041AC1D    mov         dword ptr [ebp-20],0FFFFFFFC
 0041AC24    push        ebp
 0041AC25    mov         al,1
 0041AC27    call        0041A6EC
 0041AC2C    pop         ecx
 0041AC2D    call        @RaiseAgain
 0041AC32    call        @DoneExcept
 0041AC37    shr         dword ptr [ebp-4],0E
 0041AC3B    sub         dword ptr [esi],0E
 0041AC3E    mov         eax,dword ptr [ebp-8]
 0041AC41    xor         edx,edx
 0041AC43    mov         dword ptr [eax+8],edx
 0041AC46    mov         eax,dword ptr [ebp-8]
 0041AC49    mov         byte ptr [eax],4
>0041AC4C    jmp         0041A7E3
 0041AC51    cmp         dword ptr [esi],3
>0041AC54    jae         0041AC8A
 0041AC56    cmp         dword ptr [ebp-10],0
>0041AC5A    jne         0041AC6A
 0041AC5C    push        ebp
 0041AC5D    mov         al,1
 0041AC5F    call        0041A6EC
 0041AC64    pop         ecx
>0041AC65    jmp         0041B107
 0041AC6A    xor         eax,eax
 0041AC6C    mov         dword ptr [ebp-20],eax
 0041AC6F    dec         dword ptr [ebp-10]
 0041AC72    mov         ecx,dword ptr [esi]
 0041AC74    mov         eax,dword ptr [ebp-18]
 0041AC77    movzx       eax,byte ptr [eax]
 0041AC7A    shl         eax,cl
 0041AC7C    or          dword ptr [ebp-4],eax
 0041AC7F    inc         dword ptr [ebp-18]
 0041AC82    add         dword ptr [esi],8
 0041AC85    cmp         dword ptr [esi],3
>0041AC88    jb          0041AC56
 0041AC8A    mov         eax,dword ptr [ebp-8]
 0041AC8D    mov         eax,dword ptr [eax+8]
 0041AC90    movzx       eax,word ptr [eax*2+53E91C]
 0041AC98    mov         edx,dword ptr [ebp-8]
 0041AC9B    mov         edx,dword ptr [edx+0C]
 0041AC9E    mov         ecx,dword ptr [ebp-4]
 0041ACA1    and         ecx,7
 0041ACA4    mov         dword ptr [edx+eax*4],ecx
 0041ACA7    mov         eax,dword ptr [ebp-8]
 0041ACAA    inc         dword ptr [eax+8]
 0041ACAD    shr         dword ptr [ebp-4],3
 0041ACB1    sub         dword ptr [esi],3
 0041ACB4    mov         eax,dword ptr [ebp-8]
 0041ACB7    mov         eax,dword ptr [eax+8]
 0041ACBA    mov         edx,dword ptr [ebp-8]
 0041ACBD    mov         edx,dword ptr [edx+4]
 0041ACC0    shr         edx,0A
 0041ACC3    add         edx,4
 0041ACC6    cmp         eax,edx
>0041ACC8    jb          0041AC51
>0041ACCA    jmp         0041ACE8
 0041ACCC    mov         edx,dword ptr [ebp-8]
 0041ACCF    movzx       eax,word ptr [eax*2+53E91C]
 0041ACD7    mov         edx,dword ptr [ebp-8]
 0041ACDA    mov         edx,dword ptr [edx+0C]
 0041ACDD    xor         ecx,ecx
 0041ACDF    mov         dword ptr [edx+eax*4],ecx
 0041ACE2    mov         eax,dword ptr [ebp-8]
 0041ACE5    inc         dword ptr [eax+8]
 0041ACE8    mov         eax,dword ptr [ebp-8]
 0041ACEB    mov         eax,dword ptr [eax+8]
 0041ACEE    cmp         eax,13
>0041ACF1    jb          0041ACCC
 0041ACF3    mov         eax,dword ptr [ebp-8]
 0041ACF6    mov         dword ptr [eax+10],7
 0041ACFD    mov         eax,dword ptr [ebp-8]
 0041AD00    add         eax,14
 0041AD03    push        eax
 0041AD04    mov         eax,dword ptr [ebp-8]
 0041AD07    mov         eax,dword ptr [eax+24]
 0041AD0A    push        eax
 0041AD0B    push        0FFFFFFE
 0041AD10    mov         eax,dword ptr [ebp-14]
 0041AD13    push        eax
 0041AD14    mov         ecx,dword ptr [ebp-8]
 0041AD17    add         ecx,10
 0041AD1A    mov         eax,dword ptr [ebp-8]
 0041AD1D    mov         eax,dword ptr [eax+0C]
 0041AD20    mov         edx,1FFFFFFE
 0041AD25    call        0041A34C
 0041AD2A    mov         ebx,eax
 0041AD2C    test        ebx,ebx
>0041AD2E    je          0041AD58
 0041AD30    mov         eax,dword ptr [ebp-8]
 0041AD33    mov         eax,dword ptr [eax+0C]
 0041AD36    call        @FreeMem
 0041AD3B    mov         dword ptr [ebp-20],ebx
 0041AD3E    cmp         dword ptr [ebp-20],0FFFFFFFD
>0041AD42    jne         0041AD4A
 0041AD44    mov         eax,dword ptr [ebp-8]
 0041AD47    mov         byte ptr [eax],9
 0041AD4A    push        ebp
 0041AD4B    mov         al,1
 0041AD4D    call        0041A6EC
 0041AD52    pop         ecx
>0041AD53    jmp         0041B107
 0041AD58    mov         eax,dword ptr [ebp-8]
 0041AD5B    xor         edx,edx
 0041AD5D    mov         dword ptr [eax+8],edx
 0041AD60    mov         eax,dword ptr [ebp-8]
 0041AD63    mov         byte ptr [eax],5
>0041AD66    jmp         0041A7E3
 0041AD6B    mov         ebx,dword ptr [ebp-8]
 0041AD6E    mov         ebx,dword ptr [ebx+4]
 0041AD71    mov         eax,ebx
 0041AD73    and         eax,1F
 0041AD76    add         eax,102
 0041AD7B    shr         ebx,5
 0041AD7E    and         ebx,1F
 0041AD81    add         eax,ebx
 0041AD83    mov         edx,dword ptr [ebp-8]
 0041AD86    cmp         eax,dword ptr [edx+8]
>0041AD89    jbe         0041AF0A
 0041AD8F    mov         ebx,dword ptr [ebp-8]
 0041AD92    mov         ebx,dword ptr [ebx+10]
 0041AD95    cmp         ebx,dword ptr [esi]
>0041AD97    jbe         0041ADCC
 0041AD99    cmp         dword ptr [ebp-10],0
>0041AD9D    jne         0041ADAD
 0041AD9F    push        ebp
 0041ADA0    mov         al,1
 0041ADA2    call        0041A6EC
 0041ADA7    pop         ecx
>0041ADA8    jmp         0041B107
 0041ADAD    xor         eax,eax
 0041ADAF    mov         dword ptr [ebp-20],eax
 0041ADB2    dec         dword ptr [ebp-10]
 0041ADB5    mov         ecx,dword ptr [esi]
 0041ADB7    mov         eax,dword ptr [ebp-18]
 0041ADBA    movzx       eax,byte ptr [eax]
 0041ADBD    shl         eax,cl
 0041ADBF    or          dword ptr [ebp-4],eax
 0041ADC2    inc         dword ptr [ebp-18]
 0041ADC5    add         dword ptr [esi],8
 0041ADC8    cmp         ebx,dword ptr [esi]
>0041ADCA    ja          0041AD99
 0041ADCC    mov         eax,dword ptr [ebp-8]
 0041ADCF    mov         eax,dword ptr [eax+14]
 0041ADD2    mov         edx,dword ptr [ebx*4+53E8D8]
 0041ADD9    and         edx,dword ptr [ebp-4]
 0041ADDC    shl         edx,3
 0041ADDF    add         eax,edx
 0041ADE1    xor         ebx,ebx
 0041ADE3    mov         bl,byte ptr [eax+1]
 0041ADE6    mov         edx,dword ptr [eax+4]
 0041ADE9    cmp         edx,10
>0041ADEC    jae         0041AE0F
 0041ADEE    mov         ecx,ebx
 0041ADF0    shr         dword ptr [ebp-4],cl
 0041ADF3    sub         dword ptr [esi],ebx
 0041ADF5    mov         eax,dword ptr [ebp-8]
 0041ADF8    mov         eax,dword ptr [eax+8]
 0041ADFB    mov         ecx,dword ptr [ebp-8]
 0041ADFE    mov         ecx,dword ptr [ecx+0C]
 0041AE01    mov         dword ptr [ecx+eax*4],edx
 0041AE04    mov         eax,dword ptr [ebp-8]
 0041AE07    inc         dword ptr [eax+8]
>0041AE0A    jmp         0041AD6B
 0041AE0F    cmp         edx,12
>0041AE12    jne         0041AE22
 0041AE14    mov         eax,7
 0041AE19    mov         dword ptr [ebp-38],0B
>0041AE20    jmp         0041AE5F
 0041AE22    mov         eax,edx
 0041AE24    sub         eax,0E
 0041AE27    mov         dword ptr [ebp-38],3
>0041AE2E    jmp         0041AE5F
 0041AE30    cmp         dword ptr [ebp-10],0
>0041AE34    jne         0041AE44
 0041AE36    push        ebp
 0041AE37    mov         al,1
 0041AE39    call        0041A6EC
 0041AE3E    pop         ecx
>0041AE3F    jmp         0041B107
 0041AE44    xor         ecx,ecx
 0041AE46    mov         dword ptr [ebp-20],ecx
 0041AE49    dec         dword ptr [ebp-10]
 0041AE4C    mov         ecx,dword ptr [esi]
 0041AE4E    mov         edi,dword ptr [ebp-18]
 0041AE51    movzx       edi,byte ptr [edi]
 0041AE54    shl         edi,cl
 0041AE56    or          dword ptr [ebp-4],edi
 0041AE59    inc         dword ptr [ebp-18]
 0041AE5C    add         dword ptr [esi],8
 0041AE5F    lea         ecx,[eax+ebx]
 0041AE62    cmp         ecx,dword ptr [esi]
>0041AE64    ja          0041AE30
 0041AE66    mov         ecx,ebx
 0041AE68    shr         dword ptr [ebp-4],cl
 0041AE6B    sub         dword ptr [esi],ebx
 0041AE6D    mov         ecx,dword ptr [eax*4+53E8D8]
 0041AE74    and         ecx,dword ptr [ebp-4]
 0041AE77    add         dword ptr [ebp-38],ecx
 0041AE7A    mov         ecx,eax
 0041AE7C    shr         dword ptr [ebp-4],cl
 0041AE7F    sub         dword ptr [esi],eax
 0041AE81    mov         eax,dword ptr [ebp-8]
 0041AE84    mov         eax,dword ptr [eax+8]
 0041AE87    mov         ebx,dword ptr [ebp-8]
 0041AE8A    mov         ebx,dword ptr [ebx+4]
 0041AE8D    mov         ecx,ebx
 0041AE8F    and         ecx,1F
 0041AE92    add         ecx,102
 0041AE98    shr         ebx,5
 0041AE9B    and         ebx,1F
 0041AE9E    add         ecx,ebx
 0041AEA0    mov         ebx,dword ptr [ebp-38]
 0041AEA3    add         ebx,eax
 0041AEA5    cmp         ecx,ebx
>0041AEA7    jb          0041AEB3
 0041AEA9    cmp         edx,10
>0041AEAC    jne         0041AED9
 0041AEAE    cmp         eax,1
>0041AEB1    jae         0041AED9
 0041AEB3    mov         eax,dword ptr [ebp-8]
 0041AEB6    mov         eax,dword ptr [eax+0C]
 0041AEB9    call        @FreeMem
 0041AEBE    mov         eax,dword ptr [ebp-8]
 0041AEC1    mov         byte ptr [eax],9
 0041AEC4    mov         dword ptr [ebp-20],0FFFFFFFD
 0041AECB    push        ebp
 0041AECC    mov         al,1
 0041AECE    call        0041A6EC
 0041AED3    pop         ecx
>0041AED4    jmp         0041B107
 0041AED9    cmp         edx,10
>0041AEDC    jne         0041AEEA
 0041AEDE    mov         edx,dword ptr [ebp-8]
 0041AEE1    mov         edx,dword ptr [edx+0C]
 0041AEE4    mov         edx,dword ptr [edx+eax*4-4]
>0041AEE8    jmp         0041AEEC
 0041AEEA    xor         edx,edx
 0041AEEC    mov         ecx,dword ptr [ebp-8]
 0041AEEF    mov         ecx,dword ptr [ecx+0C]
 0041AEF2    mov         dword ptr [ecx+eax*4],edx
 0041AEF5    inc         eax
 0041AEF6    dec         dword ptr [ebp-38]
 0041AEF9    cmp         dword ptr [ebp-38],0
>0041AEFD    jne         0041AEEC
 0041AEFF    mov         edx,dword ptr [ebp-8]
 0041AF02    mov         dword ptr [edx+8],eax
>0041AF05    jmp         0041AD6B
 0041AF0A    mov         eax,dword ptr [ebp-8]
 0041AF0D    xor         edx,edx
 0041AF0F    mov         dword ptr [eax+14],edx
 0041AF12    mov         dword ptr [ebp-28],9
 0041AF19    mov         dword ptr [ebp-2C],6
 0041AF20    mov         ebx,dword ptr [ebp-8]
 0041AF23    mov         ebx,dword ptr [ebx+4]
 0041AF26    push        1FFFFFFE
 0041AF2B    lea         eax,[ebp-28]
 0041AF2E    push        eax
 0041AF2F    lea         eax,[ebp-2C]
 0041AF32    push        eax
 0041AF33    lea         eax,[ebp-30]
 0041AF36    push        eax
 0041AF37    lea         eax,[ebp-34]
 0041AF3A    push        eax
 0041AF3B    mov         eax,dword ptr [ebp-8]
 0041AF3E    mov         eax,dword ptr [eax+24]
 0041AF41    push        eax
 0041AF42    push        0FFFFFFE
 0041AF47    mov         eax,dword ptr [ebp-14]
 0041AF4A    push        eax
 0041AF4B    mov         ecx,dword ptr [ebp-8]
 0041AF4E    mov         ecx,dword ptr [ecx+0C]
 0041AF51    mov         edx,ebx
 0041AF53    shr         edx,5
 0041AF56    and         edx,1F
 0041AF59    inc         edx
 0041AF5A    mov         eax,ebx
 0041AF5C    and         eax,1F
 0041AF5F    add         eax,101
 0041AF64    call        0041A3F0
 0041AF69    mov         ebx,eax
 0041AF6B    mov         eax,dword ptr [ebp-8]
 0041AF6E    mov         eax,dword ptr [eax+0C]
 0041AF71    call        @FreeMem
 0041AF76    test        ebx,ebx
>0041AF78    je          0041AF96
 0041AF7A    cmp         ebx,0FFFFFFFD
>0041AF7D    jne         0041AF85
 0041AF7F    mov         eax,dword ptr [ebp-8]
 0041AF82    mov         byte ptr [eax],9
 0041AF85    mov         dword ptr [ebp-20],ebx
 0041AF88    push        ebp
 0041AF89    mov         al,1
 0041AF8B    call        0041A6EC
 0041AF90    pop         ecx
>0041AF91    jmp         0041B107
 0041AF96    mov         eax,dword ptr [ebp-34]
 0041AF99    push        eax
 0041AF9A    mov         eax,dword ptr [ebp-14]
 0041AF9D    push        eax
 0041AF9E    mov         ecx,dword ptr [ebp-30]
 0041AFA1    mov         edx,dword ptr [ebp-2C]
 0041AFA4    mov         eax,dword ptr [ebp-28]
 0041AFA7    call        004197F4
 0041AFAC    test        eax,eax
>0041AFAE    jne         0041AFC5
 0041AFB0    mov         dword ptr [ebp-20],0FFFFFFFC
 0041AFB7    push        ebp
 0041AFB8    mov         al,1
 0041AFBA    call        0041A6EC
 0041AFBF    pop         ecx
>0041AFC0    jmp         0041B107
 0041AFC5    mov         edx,dword ptr [ebp-8]
 0041AFC8    mov         dword ptr [edx+0C],eax
 0041AFCB    mov         eax,dword ptr [ebp-8]
 0041AFCE    mov         byte ptr [eax],6
>0041AFD1    jmp         0041A7E3
 0041AFD6    push        ebp
 0041AFD7    xor         eax,eax
 0041AFD9    call        0041A6EC
 0041AFDE    pop         ecx
 0041AFDF    push        ebp
 0041AFE0    mov         edx,dword ptr [ebp-14]
 0041AFE3    mov         eax,dword ptr [ebp-8]
 0041AFE6    mov         ecx,dword ptr [ebp-20]
 0041AFE9    call        004198C0
 0041AFEE    pop         ecx
 0041AFEF    mov         dword ptr [ebp-20],eax
 0041AFF2    cmp         dword ptr [ebp-20],1
>0041AFF6    je          0041B00D
 0041AFF8    push        ebp
 0041AFF9    mov         edx,dword ptr [ebp-14]
 0041AFFC    mov         eax,dword ptr [ebp-8]
 0041AFFF    mov         ecx,dword ptr [ebp-20]
 0041B002    call        00419404
 0041B007    pop         ecx
>0041B008    jmp         0041B107
 0041B00D    xor         eax,eax
 0041B00F    mov         dword ptr [ebp-20],eax
 0041B012    mov         eax,dword ptr [ebp-8]
 0041B015    mov         eax,dword ptr [eax+0C]
 0041B018    call        @FreeMem
 0041B01D    mov         eax,dword ptr [ebp-14]
 0041B020    mov         eax,dword ptr [eax]
 0041B022    mov         dword ptr [ebp-18],eax
 0041B025    mov         eax,dword ptr [ebp-14]
 0041B028    mov         eax,dword ptr [eax+4]
 0041B02B    mov         dword ptr [ebp-10],eax
 0041B02E    mov         eax,dword ptr [ebp-8]
 0041B031    mov         eax,dword ptr [eax+20]
 0041B034    mov         dword ptr [ebp-4],eax
 0041B037    mov         eax,dword ptr [ebp-8]
 0041B03A    mov         eax,dword ptr [eax+1C]
 0041B03D    mov         dword ptr [esi],eax
 0041B03F    mov         eax,dword ptr [ebp-8]
 0041B042    mov         eax,dword ptr [eax+34]
 0041B045    mov         dword ptr [ebp-1C],eax
 0041B048    mov         edx,dword ptr [ebp-8]
 0041B04B    mov         edx,dword ptr [edx+30]
 0041B04E    mov         eax,dword ptr [ebp-1C]
 0041B051    cmp         edx,eax
>0041B053    jbe         0041B060
 0041B055    mov         ecx,dword ptr [ebp-8]
 0041B058    sub         edx,eax
 0041B05A    dec         edx
 0041B05B    mov         dword ptr [ebp-24],edx
>0041B05E    jmp         0041B06B
 0041B060    mov         edx,dword ptr [ebp-8]
 0041B063    mov         edx,dword ptr [edx+2C]
 0041B066    sub         edx,eax
 0041B068    mov         dword ptr [ebp-24],edx
 0041B06B    mov         eax,dword ptr [ebp-8]
 0041B06E    cmp         byte ptr [eax+18],0
>0041B072    jne         0041B07F
 0041B074    mov         eax,dword ptr [ebp-8]
 0041B077    mov         byte ptr [eax],0
>0041B07A    jmp         0041A7E3
 0041B07F    mov         eax,dword ptr [ebp-8]
 0041B082    mov         byte ptr [eax],7
>0041B085    jmp         0041A7E3
 0041B08A    mov         eax,dword ptr [ebp-8]
 0041B08D    mov         edx,dword ptr [ebp-1C]
 0041B090    mov         dword ptr [eax+34],edx
 0041B093    push        ebp
 0041B094    mov         edx,dword ptr [ebp-14]
 0041B097    mov         eax,dword ptr [ebp-8]
 0041B09A    mov         ecx,dword ptr [ebp-20]
 0041B09D    call        00419404
 0041B0A2    pop         ecx
 0041B0A3    mov         dword ptr [ebp-20],eax
 0041B0A6    mov         eax,dword ptr [ebp-8]
 0041B0A9    mov         eax,dword ptr [eax+34]
 0041B0AC    mov         dword ptr [ebp-1C],eax
 0041B0AF    mov         eax,dword ptr [ebp-8]
 0041B0B2    mov         eax,dword ptr [eax+30]
 0041B0B5    mov         edx,dword ptr [ebp-8]
 0041B0B8    cmp         eax,dword ptr [edx+34]
>0041B0BB    je          0041B0C8
 0041B0BD    push        ebp
 0041B0BE    mov         al,1
 0041B0C0    call        0041A6EC
 0041B0C5    pop         ecx
>0041B0C6    jmp         0041B107
 0041B0C8    mov         eax,dword ptr [ebp-8]
 0041B0CB    mov         byte ptr [eax],8
>0041B0CE    jmp         0041A7E3
 0041B0D3    mov         dword ptr [ebp-20],1
 0041B0DA    push        ebp
 0041B0DB    mov         al,1
 0041B0DD    call        0041A6EC
 0041B0E2    pop         ecx
>0041B0E3    jmp         0041B107
 0041B0E5    mov         dword ptr [ebp-20],0FFFFFFFD
 0041B0EC    push        ebp
 0041B0ED    mov         al,1
 0041B0EF    call        0041A6EC
 0041B0F4    pop         ecx
>0041B0F5    jmp         0041B107
 0041B0F7    mov         dword ptr [ebp-20],0FFFFFFFE
 0041B0FE    push        ebp
 0041B0FF    mov         al,1
 0041B101    call        0041A6EC
 0041B106    pop         ecx
 0041B107    pop         edi
 0041B108    pop         esi
 0041B109    pop         ebx
 0041B10A    mov         esp,ebp
 0041B10C    pop         ebp
 0041B10D    ret
end;*}

//0041B110
procedure sub_0041B110(?:Pointer);
begin
{*
 0041B110    push        ebx
 0041B111    mov         ebx,eax
 0041B113    mov         al,byte ptr [ebx]
 0041B115    cmp         al,4
>0041B117    je          0041B11D
 0041B119    cmp         al,5
>0041B11B    jne         0041B125
 0041B11D    mov         eax,dword ptr [ebx+0C]
 0041B120    call        @FreeMem
 0041B125    cmp         byte ptr [ebx],6
>0041B128    jne         0041B132
 0041B12A    mov         eax,dword ptr [ebx+0C]
 0041B12D    call        @FreeMem
 0041B132    mov         byte ptr [ebx],0
 0041B135    xor         eax,eax
 0041B137    mov         dword ptr [ebx+1C],eax
 0041B13A    xor         eax,eax
 0041B13C    mov         dword ptr [ebx+20],eax
 0041B13F    mov         eax,dword ptr [ebx+28]
 0041B142    mov         dword ptr [ebx+34],eax
 0041B145    mov         eax,dword ptr [ebx+28]
 0041B148    mov         dword ptr [ebx+30],eax
 0041B14B    pop         ebx
 0041B14C    ret
*}
end;

//0041B150
{*function sub_0041B150(?:Byte; ?:?):?;
begin
 0041B150    push        ebp
 0041B151    mov         ebp,esp
 0041B153    push        ecx
 0041B154    push        ebx
 0041B155    push        esi
 0041B156    push        edi
 0041B157    mov         ebx,edx
 0041B159    mov         edi,eax
 0041B15B    mov         eax,38
 0041B160    call        @GetMem
 0041B165    mov         dword ptr [ebp-4],eax
 0041B168    cmp         dword ptr [ebp-4],0
>0041B16C    jne         0041B176
 0041B16E    mov         eax,dword ptr [ebp-4]
>0041B171    jmp         0041B203
 0041B176    xor         edx,edx
 0041B178    push        ebp
 0041B179    push        41B1CE
 0041B17E    push        dword ptr fs:[edx]
 0041B181    mov         dword ptr fs:[edx],esp
 0041B184    mov         eax,2D00
 0041B189    call        @GetMem
 0041B18E    mov         edx,dword ptr [ebp-4]
 0041B191    mov         dword ptr [edx+24],eax
 0041B194    mov         eax,ebx
 0041B196    call        @GetMem
 0041B19B    mov         esi,eax
 0041B19D    mov         eax,dword ptr [ebp-4]
 0041B1A0    mov         dword ptr [eax+28],esi
 0041B1A3    mov         eax,dword ptr [ebp-4]
 0041B1A6    mov         dword ptr [eax+2C],esi
 0041B1A9    mov         eax,dword ptr [ebp-4]
 0041B1AC    add         dword ptr [eax+2C],ebx
 0041B1AF    mov         eax,dword ptr [ebp-4]
 0041B1B2    mov         byte ptr [eax],0
 0041B1B5    mov         edx,edi
 0041B1B7    mov         eax,dword ptr [ebp-4]
 0041B1BA    call        0041B110
 0041B1BF    mov         eax,dword ptr [ebp-4]
 0041B1C2    pop         dword ptr fs:[0]
 0041B1C9    add         esp,8
>0041B1CC    jmp         0041B203
>0041B1CE    jmp         @HandleAnyException
 0041B1D3    mov         eax,dword ptr [ebp-4]
 0041B1D6    mov         eax,dword ptr [eax+28]
 0041B1D9    test        eax,eax
>0041B1DB    je          0041B1E2
 0041B1DD    call        @FreeMem
 0041B1E2    mov         eax,dword ptr [ebp-4]
 0041B1E5    mov         eax,dword ptr [eax+24]
 0041B1E8    test        eax,eax
>0041B1EA    je          0041B1F1
 0041B1EC    call        @FreeMem
 0041B1F1    mov         eax,dword ptr [ebp-4]
 0041B1F4    call        @FreeMem
 0041B1F9    call        @RaiseAgain
 0041B1FE    call        @DoneExcept
 0041B203    pop         edi
 0041B204    pop         esi
 0041B205    pop         ebx
 0041B206    pop         ecx
 0041B207    pop         ebp
 0041B208    ret
end;*}

//0041B20C
{*procedure sub_0041B20C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0041B20C    push        ebp
 0041B20D    mov         ebp,esp
 0041B20F    add         esp,0FFFFFFB8
 0041B212    push        ebx
 0041B213    push        esi
 0041B214    push        edi
 0041B215    mov         dword ptr [ebp-8],ecx
 0041B218    mov         dword ptr [ebp-10],edx
 0041B21B    mov         dword ptr [ebp-4],eax
 0041B21E    mov         dword ptr [ebp-20],0
 0041B225    mov         dword ptr [ebp-1C],0
 0041B22C    xor         eax,eax
 0041B22E    mov         dword ptr [ebp-0C],eax
 0041B231    xor         eax,eax
 0041B233    mov         dword ptr [ebp-14],eax
 0041B236    lea         eax,[ebp-48]
 0041B239    mov         edx,28
 0041B23E    call        00408130
 0041B243    mov         eax,dword ptr [ebp+20]
 0041B246    mov         dword ptr [ebp-48],eax
 0041B249    mov         eax,dword ptr [ebp+14]
 0041B24C    mov         dword ptr [ebp-44],eax
 0041B24F    mov         eax,dword ptr [ebp+1C]
 0041B252    mov         dword ptr [ebp-38],eax
 0041B255    mov         eax,dword ptr [ebp+0C]
 0041B258    mov         dword ptr [ebp-34],eax
 0041B25B    mov         dword ptr [ebp-30],0
 0041B262    mov         dword ptr [ebp-2C],0
 0041B269    mov         dword ptr [ebp-40],0
 0041B270    mov         dword ptr [ebp-3C],0
 0041B277    cmp         dword ptr [ebp+8],0
>0041B27B    je          0041B286
 0041B27D    mov         eax,dword ptr [ebp+8]
 0041B280    mov         dword ptr [eax],0FFFFFFFF
 0041B286    push        ebp
 0041B287    lea         eax,[ebp-48]
 0041B28A    call        00419020
 0041B28F    pop         ecx
 0041B290    push        ebp
 0041B291    lea         eax,[ebp-48]
 0041B294    call        00419248
 0041B299    pop         ecx
 0041B29A    xor         eax,eax
 0041B29C    push        ebp
 0041B29D    push        41B340
 0041B2A2    push        dword ptr fs:[eax]
 0041B2A5    mov         dword ptr fs:[eax],esp
 0041B2A8    lea         eax,[ebp-48]
 0041B2AB    mov         edx,8000
 0041B2B0    call        0041B150
 0041B2B5    mov         ebx,eax
 0041B2B7    mov         dword ptr [ebp-28],ebx
 0041B2BA    lea         edx,[ebp-48]
 0041B2BD    mov         eax,ebx
 0041B2BF    call        0041B110
 0041B2C4    push        ebp
 0041B2C5    lea         edx,[ebp-48]
 0041B2C8    mov         eax,dword ptr [ebp-28]
 0041B2CB    mov         ecx,0FFFFFFFB
 0041B2D0    call        0041A780
 0041B2D5    pop         ecx
 0041B2D6    mov         ebx,eax
 0041B2D8    push        ebp
 0041B2D9    lea         eax,[ebp-48]
 0041B2DC    call        00419020
 0041B2E1    pop         ecx
 0041B2E2    test        ebx,ebx
>0041B2E4    jne         0041B2F6
 0041B2E6    mov         eax,dword ptr [ebp-40]
 0041B2E9    mov         edx,dword ptr [ebp-3C]
 0041B2EC    cmp         edx,dword ptr [ebp+18]
>0041B2EF    jne         0041B2C4
 0041B2F1    cmp         eax,dword ptr [ebp+14]
>0041B2F4    jne         0041B2C4
 0041B2F6    cmp         ebx,1
>0041B2F9    je          0041B2FF
 0041B2FB    test        ebx,ebx
>0041B2FD    jne         0041B32B
 0041B2FF    mov         eax,dword ptr [ebp-40]
 0041B302    mov         edx,dword ptr [ebp-3C]
 0041B305    cmp         edx,dword ptr [ebp+18]
>0041B308    jne         0041B32B
 0041B30A    cmp         eax,dword ptr [ebp+14]
>0041B30D    jne         0041B32B
 0041B30F    mov         eax,dword ptr [ebp-30]
 0041B312    mov         edx,dword ptr [ebp-2C]
 0041B315    cmp         edx,dword ptr [ebp+10]
>0041B318    jne         0041B32B
 0041B31A    cmp         eax,dword ptr [ebp+0C]
>0041B31D    jne         0041B32B
 0041B31F    mov         eax,dword ptr [ebp-30]
 0041B322    mov         dword ptr [ebp-20],eax
 0041B325    mov         eax,dword ptr [ebp-2C]
 0041B328    mov         dword ptr [ebp-1C],eax
 0041B32B    lea         edx,[ebp-48]
 0041B32E    mov         eax,dword ptr [ebp-28]
 0041B331    call        0041B110
 0041B336    xor         eax,eax
 0041B338    pop         edx
 0041B339    pop         ecx
 0041B33A    pop         ecx
 0041B33B    mov         dword ptr fs:[eax],edx
>0041B33E    jmp         0041B358
>0041B340    jmp         @HandleAnyException
 0041B345    mov         dword ptr [ebp-20],0
 0041B34C    mov         dword ptr [ebp-1C],0
 0041B353    call        @DoneExcept
 0041B358    push        ebp
 0041B359    lea         eax,[ebp-48]
 0041B35C    call        00419174
 0041B361    pop         ecx
 0041B362    cmp         dword ptr [ebp+8],0
>0041B366    je          0041B373
 0041B368    cmp         dword ptr [ebp+1C],0
>0041B36C    je          0041B373
 0041B36E    mov         eax,dword ptr [ebp+8]
 0041B371    not         dword ptr [eax]
 0041B373    cmp         dword ptr [ebp-8],0
>0041B377    je          0041B388
 0041B379    cmp         dword ptr [ebp+20],0
>0041B37D    je          0041B388
 0041B37F    mov         eax,dword ptr [ebp+20]
 0041B382    push        eax
 0041B383    call        kernel32.UnmapViewOfFile
 0041B388    cmp         dword ptr [ebp+28],0
>0041B38C    je          0041B39D
 0041B38E    cmp         dword ptr [ebp+1C],0
>0041B392    je          0041B39D
 0041B394    mov         eax,dword ptr [ebp+1C]
 0041B397    push        eax
 0041B398    call        kernel32.UnmapViewOfFile
 0041B39D    mov         eax,dword ptr [ebp-28]
 0041B3A0    mov         eax,dword ptr [eax+28]
 0041B3A3    call        @FreeMem
 0041B3A8    mov         eax,dword ptr [ebp-28]
 0041B3AB    mov         eax,dword ptr [eax+24]
 0041B3AE    call        @FreeMem
 0041B3B3    mov         eax,dword ptr [ebp-28]
 0041B3B6    call        @FreeMem
 0041B3BB    cmp         dword ptr [ebp-0C],0
>0041B3BF    je          0041B3D1
 0041B3C1    push        8000
 0041B3C6    push        0
 0041B3C8    mov         eax,dword ptr [ebp-0C]
 0041B3CB    push        eax
 0041B3CC    call        kernel32.VirtualFree
 0041B3D1    cmp         dword ptr [ebp-14],0
>0041B3D5    je          0041B3E7
 0041B3D7    push        8000
 0041B3DC    push        0
 0041B3DE    mov         eax,dword ptr [ebp-14]
 0041B3E1    push        eax
 0041B3E2    call        kernel32.VirtualFree
 0041B3E7    mov         eax,dword ptr [ebp-20]
 0041B3EA    mov         edx,dword ptr [ebp-1C]
 0041B3ED    pop         edi
 0041B3EE    pop         esi
 0041B3EF    pop         ebx
 0041B3F0    mov         esp,ebp
 0041B3F2    pop         ebp
 0041B3F3    ret         24
end;*}

//0041B3F8
{*function sub_0041B3F8(?:Pointer; ?:Pointer; ?:Integer; ?:?):?;
begin
 0041B3F8    push        ebp
 0041B3F9    mov         ebp,esp
 0041B3FB    push        ebx
 0041B3FC    push        esi
 0041B3FD    push        edi
 0041B3FE    mov         edi,ecx
 0041B400    mov         esi,edx
 0041B402    mov         ebx,eax
 0041B404    push        0
 0041B406    push        0
 0041B408    push        ebx
 0041B409    push        esi
 0041B40A    mov         eax,edi
 0041B40C    cdq
 0041B40D    push        edx
 0041B40E    push        eax
 0041B40F    mov         eax,dword ptr [ebp+8]
 0041B412    cdq
 0041B413    push        edx
 0041B414    push        eax
 0041B415    push        0
 0041B417    xor         ecx,ecx
 0041B419    xor         edx,edx
 0041B41B    xor         eax,eax
 0041B41D    call        00418ACC
 0041B422    pop         edi
 0041B423    pop         esi
 0041B424    pop         ebx
 0041B425    pop         ebp
 0041B426    ret         4
end;*}

//0041B42C
{*function sub_0041B42C(?:?; ?:?; ?:?; ?:?):?;
begin
 0041B42C    push        ebp
 0041B42D    mov         ebp,esp
 0041B42F    push        ebx
 0041B430    push        esi
 0041B431    push        edi
 0041B432    mov         edi,ecx
 0041B434    mov         esi,edx
 0041B436    mov         ebx,eax
 0041B438    push        0
 0041B43A    push        0
 0041B43C    push        ebx
 0041B43D    push        esi
 0041B43E    mov         eax,edi
 0041B440    cdq
 0041B441    push        edx
 0041B442    push        eax
 0041B443    mov         eax,dword ptr [ebp+8]
 0041B446    cdq
 0041B447    push        edx
 0041B448    push        eax
 0041B449    push        0
 0041B44B    xor         ecx,ecx
 0041B44D    xor         edx,edx
 0041B44F    xor         eax,eax
 0041B451    call        0041B20C
 0041B456    pop         edi
 0041B457    pop         esi
 0041B458    pop         ebx
 0041B459    pop         ebp
 0041B45A    ret         4
end;*}

//0041B460
{*procedure sub_0041B460(?:?; ?:?);
begin
 0041B460    push        ebx
 0041B461    push        esi
 0041B462    mov         ebx,edx
 0041B464    mov         esi,eax
 0041B466    mov         eax,esi
 0041B468    call        @DynArrayLength
 0041B46D    cmp         eax,0C
>0041B470    jle         0041B4E2
 0041B472    mov         eax,dword ptr [esi]
 0041B474    mov         edx,eax
 0041B476    mov         eax,ebx
 0041B478    call        @LStrSetLength
 0041B47D    mov         eax,dword ptr [ebx]
 0041B47F    call        @DynArrayLength
 0041B484    push        eax
 0041B485    mov         eax,esi
 0041B487    call        @DynArrayLength
 0041B48C    sub         eax,0C
 0041B48F    push        eax
 0041B490    mov         eax,dword ptr [ebx]
 0041B492    call        @LStrToPChar
 0041B497    push        eax
 0041B498    mov         eax,esi
 0041B49A    call        @LStrToPChar
 0041B49F    add         eax,0C
 0041B4A2    pop         edx
 0041B4A3    pop         ecx
 0041B4A4    call        0041B42C
 0041B4A9    mov         edx,eax
 0041B4AB    mov         eax,ebx
 0041B4AD    call        @LStrSetLength
 0041B4B2    cmp         dword ptr [ebx],0
>0041B4B5    je          0041B4E9
 0041B4B7    mov         eax,dword ptr [ebx]
 0041B4B9    call        @DynArrayLength
 0041B4BE    push        eax
 0041B4BF    mov         eax,dword ptr [ebx]
 0041B4C1    call        @LStrToPChar
 0041B4C6    mov         edx,eax
 0041B4C8    or          eax,0FFFFFFFF
 0041B4CB    pop         ecx
 0041B4CC    call        0041B4EC
 0041B4D1    not         eax
 0041B4D3    cmp         eax,dword ptr [esi+8]
>0041B4D6    je          0041B4E9
 0041B4D8    mov         eax,ebx
 0041B4DA    call        @LStrClr
 0041B4DF    pop         esi
 0041B4E0    pop         ebx
 0041B4E1    ret
 0041B4E2    mov         eax,ebx
 0041B4E4    call        @LStrClr
 0041B4E9    pop         esi
 0041B4EA    pop         ebx
 0041B4EB    ret
end;*}

//0041B4EC
{*function sub_0041B4EC(?:?; ?:PChar; ?:Integer):?;
begin
 0041B4EC    push        esi
 0041B4ED    mov         esi,eax
 0041B4EF    dec         ecx
 0041B4F0    test        ecx,ecx
>0041B4F2    jl          0041B513
 0041B4F4    inc         ecx
 0041B4F5    mov         eax,edx
 0041B4F7    mov         edx,esi
 0041B4F9    xor         dl,byte ptr [eax]
 0041B4FB    and         edx,0FF
 0041B501    mov         edx,dword ptr [edx*4+53E944]
 0041B508    shr         esi,8
 0041B50B    xor         edx,esi
 0041B50D    mov         esi,edx
 0041B50F    inc         eax
 0041B510    dec         ecx
>0041B511    jne         0041B4F7
 0041B513    mov         eax,esi
 0041B515    pop         esi
 0041B516    ret
end;*}

//0041B554
{*function sub_0041B554(?:WideString; ?:?; ?:?; ?:?):?;
begin
 0041B554    push        ebp
 0041B555    mov         ebp,esp
 0041B557    add         esp,0FFFFFF70
 0041B55D    push        ebx
 0041B55E    push        esi
 0041B55F    push        edi
 0041B560    xor         ebx,ebx
 0041B562    mov         dword ptr [ebp-90],ebx
 0041B568    mov         dword ptr [ebp-8C],ebx
 0041B56E    mov         dword ptr [ebp-88],ebx
 0041B574    mov         dword ptr [ebp-84],ebx
 0041B57A    mov         dword ptr [ebp-80],ebx
 0041B57D    mov         dword ptr [ebp-30],ebx
 0041B580    mov         dword ptr [ebp-34],ebx
 0041B583    mov         ebx,ecx
 0041B585    mov         esi,edx
 0041B587    mov         dword ptr [ebp-4],eax
 0041B58A    xor         eax,eax
 0041B58C    push        ebp
 0041B58D    push        41BB1C
 0041B592    push        dword ptr fs:[eax]
 0041B595    mov         dword ptr fs:[eax],esp
 0041B598    call        kernel32.GetVersion
 0041B59D    test        eax,80000000
>0041B5A2    jne         0041B5C6
 0041B5A4    push        0
 0041B5A6    push        0
 0041B5A8    push        2
 0041B5AA    push        0
 0041B5AC    push        0
 0041B5AE    push        40000000
 0041B5B3    mov         eax,dword ptr [ebp-4]
 0041B5B6    call        @WStrToPWChar
 0041B5BB    push        eax
 0041B5BC    call        kernel32.CreateFileW
 0041B5C1    mov         dword ptr [ebp-14],eax
>0041B5C4    jmp         0041B5F1
 0041B5C6    push        0
 0041B5C8    push        0
 0041B5CA    push        2
 0041B5CC    push        0
 0041B5CE    push        0
 0041B5D0    push        40000000
 0041B5D5    lea         eax,[ebp-80]
 0041B5D8    mov         edx,dword ptr [ebp-4]
 0041B5DB    call        @LStrFromWStr
 0041B5E0    mov         eax,dword ptr [ebp-80]
 0041B5E3    call        @LStrToPChar
 0041B5E8    push        eax
 0041B5E9    call        kernel32.CreateFileA
 0041B5EE    mov         dword ptr [ebp-14],eax
 0041B5F1    cmp         dword ptr [ebp-14],0FFFFFFFF
 0041B5F5    setne       byte ptr [ebp-5]
 0041B5F9    cmp         byte ptr [ebp-5],0
>0041B5FD    je          0041BAE8
 0041B603    lea         eax,[ebx+1]
 0041B606    push        eax
 0041B607    lea         eax,[ebp-34]
 0041B60A    mov         ecx,1
 0041B60F    mov         edx,dword ptr ds:[41B534];_DynArr_9_11
 0041B615    call        @DynArraySetLength
 0041B61A    add         esp,4
 0041B61D    xor         eax,eax
 0041B61F    mov         dword ptr [ebp-10],eax
 0041B622    mov         edi,ebx
 0041B624    test        edi,edi
>0041B626    jl          0041B98C
 0041B62C    inc         edi
 0041B62D    mov         dword ptr [ebp-0C],0
 0041B634    imul        eax,dword ptr [ebp-10],0D
 0041B638    mov         edx,dword ptr [ebp-34]
 0041B63B    lea         eax,[edx+eax*4]
 0041B63E    mov         dword ptr [ebp-44],eax
 0041B641    mov         eax,dword ptr [ebp+8]
 0041B644    call        @LStrLen
 0041B649    cmp         eax,dword ptr [ebp-0C]
>0041B64C    jg          0041B68A
 0041B64E    lea         eax,[ebp-30]
 0041B651    mov         edx,dword ptr [esi]
 0041B653    call        00404F28
 0041B658    mov         eax,dword ptr [ebp-30]
 0041B65B    call        @WStrLen
 0041B660    mov         ebx,eax
 0041B662    cmp         ebx,1
>0041B665    jl          0041B69B
 0041B667    mov         eax,dword ptr [ebp-30]
 0041B66A    cmp         word ptr [eax+ebx*2-2],5C
>0041B670    jne         0041B683
 0041B672    lea         eax,[ebp-30]
 0041B675    mov         ecx,ebx
 0041B677    mov         edx,1
 0041B67C    call        @WStrDelete
>0041B681    jmp         0041B69B
 0041B683    dec         ebx
 0041B684    test        ebx,ebx
>0041B686    jne         0041B667
>0041B688    jmp         0041B69B
 0041B68A    lea         eax,[ebp-30]
 0041B68D    mov         edx,dword ptr [ebp+8]
 0041B690    mov         ecx,dword ptr [ebp-0C]
 0041B693    mov         edx,dword ptr [edx+ecx*4]
 0041B696    call        00404F28
 0041B69B    lea         edx,[ebp-84]
 0041B6A1    mov         eax,dword ptr [ebp-30]
 0041B6A4    call        0040BE3C
 0041B6A9    mov         edx,dword ptr [ebp-84]
 0041B6AF    mov         eax,dword ptr [ebp-44]
 0041B6B2    call        @LStrAsg
 0041B6B7    call        kernel32.GetVersion
 0041B6BC    test        eax,80000000
>0041B6C1    jne         0041B6E3
 0041B6C3    push        0
 0041B6C5    push        0
 0041B6C7    push        3
 0041B6C9    push        0
 0041B6CB    push        3
 0041B6CD    push        80000000
 0041B6D2    mov         eax,dword ptr [esi]
 0041B6D4    call        @WStrToPWChar
 0041B6D9    push        eax
 0041B6DA    call        kernel32.CreateFileW
 0041B6DF    mov         ebx,eax
>0041B6E1    jmp         0041B712
 0041B6E3    push        0
 0041B6E5    push        0
 0041B6E7    push        3
 0041B6E9    push        0
 0041B6EB    push        3
 0041B6ED    push        80000000
 0041B6F2    lea         eax,[ebp-88]
 0041B6F8    mov         edx,dword ptr [esi]
 0041B6FA    call        @LStrFromWStr
 0041B6FF    mov         eax,dword ptr [ebp-88]
 0041B705    call        @LStrToPChar
 0041B70A    push        eax
 0041B70B    call        kernel32.CreateFileA
 0041B710    mov         ebx,eax
 0041B712    cmp         ebx,0FFFFFFFF
>0041B715    je          0041B979
 0041B71B    push        0
 0041B71D    push        ebx
 0041B71E    call        kernel32.GetFileSize
 0041B723    mov         dword ptr [ebp-2C],eax
 0041B726    mov         eax,dword ptr [ebp-2C]
 0041B729    push        eax
 0041B72A    push        40
 0041B72C    call        kernel32.LocalAlloc
 0041B731    mov         dword ptr [ebp-24],eax
 0041B734    cmp         dword ptr [ebp-24],0
>0041B738    je          0041B973
 0041B73E    imul        eax,dword ptr [ebp-2C],0B
 0041B742    mov         ecx,0A
 0041B747    xor         edx,edx
 0041B749    div         eax,ecx
 0041B74B    add         eax,0C
 0041B74E    push        eax
 0041B74F    push        40
 0041B751    call        kernel32.LocalAlloc
 0041B756    mov         dword ptr [ebp-28],eax
 0041B759    cmp         dword ptr [ebp-28],0
>0041B75D    je          0041B96A
 0041B763    push        0
 0041B765    lea         eax,[ebp-20]
 0041B768    push        eax
 0041B769    mov         eax,dword ptr [ebp-2C]
 0041B76C    push        eax
 0041B76D    mov         eax,dword ptr [ebp-24]
 0041B770    push        eax
 0041B771    push        ebx
 0041B772    call        kernel32.ReadFile
 0041B777    test        eax,eax
>0041B779    je          0041B961
 0041B77F    mov         eax,dword ptr [ebp-20]
 0041B782    cmp         eax,dword ptr [ebp-2C]
>0041B785    jne         0041B961
 0041B78B    mov         dword ptr [ebp-66],4034B50
 0041B792    mov         word ptr [ebp-62],14
 0041B798    mov         word ptr [ebp-60],800
 0041B79E    mov         word ptr [ebp-5E],8
 0041B7A4    mov         edx,dword ptr [ebp-24]
 0041B7A7    mov         ecx,dword ptr [ebp-2C]
 0041B7AA    or          eax,0FFFFFFFF
 0041B7AD    call        0041B4EC
 0041B7B2    not         eax
 0041B7B4    mov         dword ptr [ebp-58],eax
 0041B7B7    imul        eax,dword ptr [ebp-2C],0B
 0041B7BB    mov         ecx,0A
 0041B7C0    xor         edx,edx
 0041B7C2    div         eax,ecx
 0041B7C4    add         eax,0C
 0041B7C7    push        eax
 0041B7C8    mov         ecx,dword ptr [ebp-2C]
 0041B7CB    mov         edx,dword ptr [ebp-28]
 0041B7CE    mov         eax,dword ptr [ebp-24]
 0041B7D1    call        0041B3F8
 0041B7D6    mov         dword ptr [ebp-54],eax
 0041B7D9    mov         eax,dword ptr [ebp-2C]
 0041B7DC    mov         dword ptr [ebp-50],eax
 0041B7DF    mov         eax,dword ptr [ebp-44]
 0041B7E2    mov         eax,dword ptr [eax]
 0041B7E4    call        @DynArrayLength
 0041B7E9    mov         word ptr [ebp-4C],ax
 0041B7ED    mov         word ptr [ebp-4A],0
 0041B7F3    lea         eax,[ebp-1C]
 0041B7F6    push        eax
 0041B7F7    push        0
 0041B7F9    push        0
 0041B7FB    push        ebx
 0041B7FC    call        kernel32.GetFileTime
 0041B801    lea         eax,[ebp-1C]
 0041B804    push        eax
 0041B805    lea         eax,[ebp-1C]
 0041B808    push        eax
 0041B809    call        kernel32.FileTimeToLocalFileTime
 0041B80E    lea         eax,[ebp-5C]
 0041B811    push        eax
 0041B812    lea         eax,[ebp-5A]
 0041B815    push        eax
 0041B816    lea         eax,[ebp-1C]
 0041B819    push        eax
 0041B81A    call        kernel32.FileTimeToDosDateTime
 0041B81F    mov         eax,dword ptr [ebp-44]
 0041B822    add         eax,4
 0041B825    mov         dword ptr [ebp-48],eax
 0041B828    mov         eax,dword ptr [ebp-48]
 0041B82B    mov         dword ptr [eax],2014B50
 0041B831    mov         eax,dword ptr [ebp-48]
 0041B834    mov         word ptr [eax+4],14
 0041B83A    mov         eax,dword ptr [ebp-48]
 0041B83D    push        esi
 0041B83E    push        edi
 0041B83F    lea         edi,[eax+6]
 0041B842    lea         esi,[ebp-62]
 0041B845    mov         ecx,6
 0041B84A    rep movs    dword ptr [edi],dword ptr [esi]
 0041B84C    movs        word ptr [edi],word ptr [esi]
 0041B84E    pop         edi
 0041B84F    pop         esi
 0041B850    mov         eax,dword ptr [ebp-48]
 0041B853    mov         word ptr [eax+20],0
 0041B859    mov         eax,dword ptr [ebp-48]
 0041B85C    mov         word ptr [eax+22],0
 0041B862    mov         eax,dword ptr [ebp-48]
 0041B865    mov         word ptr [eax+24],0
 0041B86B    call        kernel32.GetVersion
 0041B870    test        eax,80000000
>0041B875    jne         0041B88C
 0041B877    mov         eax,dword ptr [esi]
 0041B879    call        @WStrToPWChar
 0041B87E    push        eax
 0041B87F    call        kernel32.GetFileAttributesW
 0041B884    mov         edx,dword ptr [ebp-48]
 0041B887    mov         dword ptr [edx+26],eax
>0041B88A    jmp         0041B8B0
 0041B88C    lea         eax,[ebp-8C]
 0041B892    mov         edx,dword ptr [esi]
 0041B894    call        @LStrFromWStr
 0041B899    mov         eax,dword ptr [ebp-8C]
 0041B89F    call        @LStrToPChar
 0041B8A4    push        eax
 0041B8A5    call        kernel32.GetFileAttributesA
 0041B8AA    mov         edx,dword ptr [ebp-48]
 0041B8AD    mov         dword ptr [edx+26],eax
 0041B8B0    mov         dword ptr [ebp-40],0
 0041B8B7    mov         dword ptr [ebp-3C],0
 0041B8BE    push        0
 0041B8C0    push        0
 0041B8C2    lea         ecx,[ebp-40]
 0041B8C5    mov         edx,1
 0041B8CA    mov         eax,dword ptr [ebp-14]
 0041B8CD    call        00417424
 0041B8D2    mov         eax,dword ptr [ebp-48]
 0041B8D5    mov         edx,dword ptr [ebp-40]
 0041B8D8    mov         dword ptr [eax+2A],edx
 0041B8DB    push        0
 0041B8DD    lea         eax,[ebp-20]
 0041B8E0    push        eax
 0041B8E1    push        1E
 0041B8E3    lea         eax,[ebp-66]
 0041B8E6    push        eax
 0041B8E7    mov         eax,dword ptr [ebp-14]
 0041B8EA    push        eax
 0041B8EB    call        kernel32.WriteFile
 0041B8F0    test        eax,eax
>0041B8F2    je          0041B955
 0041B8F4    cmp         dword ptr [ebp-20],1E
>0041B8F8    jne         0041B955
 0041B8FA    push        0
 0041B8FC    lea         eax,[ebp-20]
 0041B8FF    push        eax
 0041B900    mov         eax,dword ptr [ebp-44]
 0041B903    mov         eax,dword ptr [eax]
 0041B905    call        @DynArrayLength
 0041B90A    push        eax
 0041B90B    mov         eax,dword ptr [ebp-44]
 0041B90E    mov         eax,dword ptr [eax]
 0041B910    call        @LStrToPChar
 0041B915    push        eax
 0041B916    mov         eax,dword ptr [ebp-14]
 0041B919    push        eax
 0041B91A    call        kernel32.WriteFile
 0041B91F    test        eax,eax
>0041B921    je          0041B955
 0041B923    mov         eax,dword ptr [ebp-44]
 0041B926    mov         eax,dword ptr [eax]
 0041B928    call        @DynArrayLength
 0041B92D    cmp         eax,dword ptr [ebp-20]
>0041B930    jne         0041B955
 0041B932    push        0
 0041B934    lea         eax,[ebp-20]
 0041B937    push        eax
 0041B938    mov         eax,dword ptr [ebp-54]
 0041B93B    push        eax
 0041B93C    mov         eax,dword ptr [ebp-28]
 0041B93F    push        eax
 0041B940    mov         eax,dword ptr [ebp-14]
 0041B943    push        eax
 0041B944    call        kernel32.WriteFile
 0041B949    test        eax,eax
>0041B94B    je          0041B955
 0041B94D    mov         eax,dword ptr [ebp-20]
 0041B950    cmp         eax,dword ptr [ebp-54]
>0041B953    je          0041B959
 0041B955    xor         eax,eax
>0041B957    jmp         0041B95B
 0041B959    mov         al,1
 0041B95B    mov         byte ptr [ebp-5],al
 0041B95E    inc         dword ptr [ebp-10]
 0041B961    mov         eax,dword ptr [ebp-28]
 0041B964    push        eax
 0041B965    call        kernel32.LocalFree
 0041B96A    mov         eax,dword ptr [ebp-24]
 0041B96D    push        eax
 0041B96E    call        kernel32.LocalFree
 0041B973    push        ebx
 0041B974    call        kernel32.CloseHandle
 0041B979    cmp         byte ptr [ebp-5],0
>0041B97D    je          0041B98C
 0041B97F    inc         dword ptr [ebp-0C]
 0041B982    add         esi,4
 0041B985    dec         edi
>0041B986    jne         0041B634
 0041B98C    cmp         byte ptr [ebp-5],0
>0041B990    je          0041B998
 0041B992    cmp         dword ptr [ebp-10],0
>0041B996    jg          0041B99C
 0041B998    xor         eax,eax
>0041B99A    jmp         0041B99E
 0041B99C    mov         al,1
 0041B99E    mov         byte ptr [ebp-5],al
 0041B9A1    cmp         byte ptr [ebp-5],0
>0041B9A5    je          0041BA9E
 0041B9AB    mov         dword ptr [ebp-7C],6054B50
 0041B9B2    mov         word ptr [ebp-78],0
 0041B9B8    mov         word ptr [ebp-76],0
 0041B9BE    mov         ax,word ptr [ebp-10]
 0041B9C2    mov         word ptr [ebp-74],ax
 0041B9C6    mov         word ptr [ebp-72],ax
 0041B9CA    xor         eax,eax
 0041B9CC    mov         dword ptr [ebp-70],eax
 0041B9CF    push        0
 0041B9D1    push        0
 0041B9D3    lea         ecx,[ebp-40]
 0041B9D6    mov         edx,1
 0041B9DB    mov         eax,dword ptr [ebp-14]
 0041B9DE    call        00417424
 0041B9E3    mov         eax,dword ptr [ebp-40]
 0041B9E6    mov         dword ptr [ebp-6C],eax
 0041B9E9    mov         word ptr [ebp-68],0
 0041B9EF    mov         edi,dword ptr [ebp-10]
 0041B9F2    dec         edi
 0041B9F3    test        edi,edi
>0041B9F5    jl          0041BA70
 0041B9F7    inc         edi
 0041B9F8    mov         dword ptr [ebp-0C],0
 0041B9FF    imul        eax,dword ptr [ebp-0C],0D
 0041BA03    mov         edx,dword ptr [ebp-34]
 0041BA06    lea         ebx,[edx+eax*4]
 0041BA09    mov         eax,dword ptr [ebx]
 0041BA0B    call        @DynArrayLength
 0041BA10    add         eax,2E
 0041BA13    add         dword ptr [ebp-70],eax
 0041BA16    push        0
 0041BA18    lea         eax,[ebp-20]
 0041BA1B    push        eax
 0041BA1C    push        2E
 0041BA1E    lea         eax,[ebx+4]
 0041BA21    push        eax
 0041BA22    mov         eax,dword ptr [ebp-14]
 0041BA25    push        eax
 0041BA26    call        kernel32.WriteFile
 0041BA2B    test        eax,eax
>0041BA2D    je          0041BA64
 0041BA2F    cmp         dword ptr [ebp-20],2E
>0041BA33    jne         0041BA64
 0041BA35    push        0
 0041BA37    lea         eax,[ebp-20]
 0041BA3A    push        eax
 0041BA3B    mov         eax,dword ptr [ebx]
 0041BA3D    call        @DynArrayLength
 0041BA42    push        eax
 0041BA43    mov         eax,dword ptr [ebx]
 0041BA45    call        @LStrToPChar
 0041BA4A    push        eax
 0041BA4B    mov         eax,dword ptr [ebp-14]
 0041BA4E    push        eax
 0041BA4F    call        kernel32.WriteFile
 0041BA54    test        eax,eax
>0041BA56    je          0041BA64
 0041BA58    mov         eax,dword ptr [ebx]
 0041BA5A    call        @DynArrayLength
 0041BA5F    cmp         eax,dword ptr [ebp-20]
>0041BA62    je          0041BA6A
 0041BA64    mov         byte ptr [ebp-5],0
>0041BA68    jmp         0041BA70
 0041BA6A    inc         dword ptr [ebp-0C]
 0041BA6D    dec         edi
>0041BA6E    jne         0041B9FF
 0041BA70    cmp         byte ptr [ebp-5],0
>0041BA74    je          0041BA95
 0041BA76    push        0
 0041BA78    lea         eax,[ebp-20]
 0041BA7B    push        eax
 0041BA7C    push        16
 0041BA7E    lea         eax,[ebp-7C]
 0041BA81    push        eax
 0041BA82    mov         eax,dword ptr [ebp-14]
 0041BA85    push        eax
 0041BA86    call        kernel32.WriteFile
 0041BA8B    test        eax,eax
>0041BA8D    je          0041BA95
 0041BA8F    cmp         dword ptr [ebp-20],16
>0041BA93    je          0041BA99
 0041BA95    xor         eax,eax
>0041BA97    jmp         0041BA9B
 0041BA99    mov         al,1
 0041BA9B    mov         byte ptr [ebp-5],al
 0041BA9E    mov         eax,dword ptr [ebp-14]
 0041BAA1    push        eax
 0041BAA2    call        kernel32.CloseHandle
 0041BAA7    cmp         byte ptr [ebp-5],0
>0041BAAB    jne         0041BAE8
 0041BAAD    call        kernel32.GetVersion
 0041BAB2    test        eax,80000000
>0041BAB7    jne         0041BAC9
 0041BAB9    mov         eax,dword ptr [ebp-4]
 0041BABC    call        @WStrToPWChar
 0041BAC1    push        eax
 0041BAC2    call        kernel32.DeleteFileW
>0041BAC7    jmp         0041BAE8
 0041BAC9    lea         eax,[ebp-90]
 0041BACF    mov         edx,dword ptr [ebp-4]
 0041BAD2    call        @LStrFromWStr
 0041BAD7    mov         eax,dword ptr [ebp-90]
 0041BADD    call        @LStrToPChar
 0041BAE2    push        eax
 0041BAE3    call        kernel32.DeleteFileA
 0041BAE8    xor         eax,eax
 0041BAEA    pop         edx
 0041BAEB    pop         ecx
 0041BAEC    pop         ecx
 0041BAED    mov         dword ptr fs:[eax],edx
 0041BAF0    push        41BB23
 0041BAF5    lea         eax,[ebp-90]
 0041BAFB    mov         edx,5
 0041BB00    call        @LStrArrayClr
 0041BB05    lea         eax,[ebp-34]
 0041BB08    mov         edx,dword ptr ds:[41B534];_DynArr_9_11
 0041BB0E    call        @DynArrayClear
 0041BB13    lea         eax,[ebp-30]
 0041BB16    call        @WStrClr
 0041BB1B    ret
>0041BB1C    jmp         @HandleFinally
>0041BB21    jmp         0041BAF5
 0041BB23    mov         al,byte ptr [ebp-5]
 0041BB26    pop         edi
 0041BB27    pop         esi
 0041BB28    pop         ebx
 0041BB29    mov         esp,ebp
 0041BB2B    pop         ebp
 0041BB2C    ret         4
end;*}

end.