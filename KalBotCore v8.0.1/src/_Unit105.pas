//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit105;

interface

uses
  SysUtils, Classes;

type
  TDrops = class(TInterfacedObject)
    constructor Create;//00532D28
  end;
    //procedure sub_00532DFC(?:?; ?:?; ?:?; ?:?);//00532DFC
    //function sub_00532F68(?:?; ?:?):?;//00532F68
    //function sub_0053307C(?:?; ?:?):?;//0053307C
    //function sub_005330DC(?:?; ?:?):?;//005330DC
    //function sub_00533130(?:?; ?:?):?;//00533130
    //function sub_0053315C(?:?; ?:?):?;//0053315C
    //function sub_0053319C(?:dword):?;//0053319C
    //procedure sub_005331B8(?:?);//005331B8
    //procedure sub_00533204(?:?);//00533204
    //function sub_00533210(?:?; ?:?):?;//00533210
    //function sub_005332B8(?:?; ?:?):?;//005332B8
    //procedure sub_005332E4(?:?; ?:?);//005332E4
    //procedure sub_005332FC(?:?);//005332FC
    procedure sub_00533314(?:dword);//00533314
    //function sub_0053332C(?:dword; ?:?):?;//0053332C
    //procedure sub_00533350(?:?; ?:?);//00533350

implementation

//00532D28
constructor TDrops.Create;
begin
{*
 00532D28    push        ebp
 00532D29    mov         ebp,esp
 00532D2B    add         esp,0FFFFFFF4
 00532D2E    test        dl,dl
>00532D30    je          00532D3A
 00532D32    add         esp,0FFFFFFF0
 00532D35    call        @ClassCreate
 00532D3A    mov         dword ptr [ebp-0C],ecx
 00532D3D    mov         byte ptr [ebp-5],dl
 00532D40    mov         dword ptr [ebp-4],eax
 00532D43    xor         edx,edx
 00532D45    mov         eax,dword ptr [ebp-4]
 00532D48    call        TObject.Create
 00532D4D    mov         eax,dword ptr [ebp-4]
 00532D50    add         eax,14
 00532D53    push        eax
 00532D54    call        kernel32.InitializeCriticalSection
 00532D59    mov         eax,dword ptr [ebp-4]
 00532D5C    mov         edx,dword ptr [ebp-0C]
 00532D5F    mov         dword ptr [eax+0C],edx
 00532D62    mov         dl,1
 00532D64    mov         eax,[004759C0];TList
 00532D69    call        TObject.Create;TList.Create
 00532D6E    mov         edx,dword ptr [ebp-4]
 00532D71    mov         dword ptr [edx+10],eax
 00532D74    push        3
 00532D76    mov         ecx,55AF78
 00532D7B    mov         edx,dword ptr [ebp-4]
 00532D7E    test        edx,edx
>00532D80    je          00532D85
 00532D82    sub         edx,0FFFFFFC4
 00532D85    mov         eax,dword ptr [ebp-0C]
 00532D88    call        005204E4
 00532D8D    mov         eax,dword ptr [ebp-4]
 00532D90    cmp         byte ptr [ebp-5],0
>00532D94    je          00532DA5
 00532D96    call        @AfterConstruction
 00532D9B    pop         dword ptr fs:[0]
 00532DA2    add         esp,0C
 00532DA5    mov         eax,dword ptr [ebp-4]
 00532DA8    mov         esp,ebp
 00532DAA    pop         ebp
 00532DAB    ret
*}
end;

//00532DFC
{*procedure sub_00532DFC(?:?; ?:?; ?:?; ?:?);
begin
 00532DFC    push        ebp
 00532DFD    mov         ebp,esp
 00532DFF    add         esp,0FFFFFFE8
 00532E02    push        ebx
 00532E03    xor         ebx,ebx
 00532E05    mov         dword ptr [ebp-14],ebx
 00532E08    mov         dword ptr [ebp-0C],ecx
 00532E0B    mov         byte ptr [ebp-5],dl
 00532E0E    mov         dword ptr [ebp-4],eax
 00532E11    xor         eax,eax
 00532E13    push        ebp
 00532E14    push        532F5A
 00532E19    push        dword ptr fs:[eax]
 00532E1C    mov         dword ptr fs:[eax],esp
 00532E1F    mov         al,byte ptr [ebp+0C]
 00532E22    sub         al,1
>00532E24    jae         00532F3E
 00532E2A    xor         eax,eax
 00532E2C    mov         al,byte ptr [ebp-5]
 00532E2F    sub         ax,55
>00532E33    je          00532F00
 00532E39    sub         ax,15
>00532E3D    je          00532ED2
 00532E43    sub         ax,1E
>00532E47    je          00532F20
 00532E4D    sub         ax,26
>00532E51    jne         00532F3E
 00532E57    mov         eax,dword ptr [ebp-0C]
 00532E5A    mov         edx,dword ptr [eax+4]
 00532E5D    mov         eax,dword ptr [ebp-4]
 00532E60    call        00533210
 00532E65    mov         dword ptr [ebp-18],eax
 00532E68    mov         eax,dword ptr [ebp-4]
 00532E6B    call        005332FC
 00532E70    mov         edx,dword ptr [ebp-18]
 00532E73    mov         eax,dword ptr [ebp-4]
 00532E76    call        00532F68
 00532E7B    mov         eax,dword ptr [ebp-4]
 00532E7E    call        00533314
 00532E83    mov         eax,dword ptr [ebp-4]
 00532E86    cmp         byte ptr [eax+38],0
>00532E8A    je          00532F3E
 00532E90    cmp         dword ptr [ebp-18],0
>00532E94    je          00532F3E
 00532E9A    lea         edx,[ebp-14]
 00532E9D    mov         eax,dword ptr [ebp-18]
 00532EA0    call        0052102C
 00532EA5    mov         eax,dword ptr [ebp-14]
 00532EA8    call        @LStrLen
 00532EAD    mov         ecx,eax
 00532EAF    mov         edx,dword ptr [ebp-14]
 00532EB2    mov         eax,dword ptr [ebp-4]
 00532EB5    mov         eax,dword ptr [eax+0C]
 00532EB8    call        0051FDFC
 00532EBD    call        004688F0
 00532EC2    mov         eax,dword ptr [ebp-18]
 00532EC5    fstp        qword ptr [eax+28]
 00532EC8    wait
 00532EC9    mov         eax,dword ptr [ebp-18]
 00532ECC    mov         byte ptr [eax+30],1
>00532ED0    jmp         00532F3E
 00532ED2    mov         eax,dword ptr [ebp-0C]
 00532ED5    mov         edx,dword ptr [eax+4]
 00532ED8    mov         eax,dword ptr [ebp-4]
 00532EDB    call        005332B8
 00532EE0    mov         dword ptr [ebp-10],eax
 00532EE3    mov         eax,dword ptr [ebp-4]
 00532EE6    call        005332FC
 00532EEB    mov         edx,dword ptr [ebp-10]
 00532EEE    mov         eax,dword ptr [ebp-4]
 00532EF1    call        00533130
 00532EF6    mov         eax,dword ptr [ebp-4]
 00532EF9    call        00533314
>00532EFE    jmp         00532F3E
 00532F00    mov         eax,dword ptr [ebp-4]
 00532F03    call        005332FC
 00532F08    mov         eax,dword ptr [ebp-0C]
 00532F0B    mov         edx,dword ptr [eax+4]
 00532F0E    mov         eax,dword ptr [ebp-4]
 00532F11    call        005332E4
 00532F16    mov         eax,dword ptr [ebp-4]
 00532F19    call        00533314
>00532F1E    jmp         00532F3E
 00532F20    mov         eax,dword ptr [ebp-4]
 00532F23    call        005332FC
 00532F28    mov         eax,dword ptr [ebp-0C]
 00532F2B    mov         edx,dword ptr [eax+4]
 00532F2E    mov         eax,dword ptr [ebp-4]
 00532F31    call        00533350
 00532F36    mov         eax,dword ptr [ebp-4]
 00532F39    call        00533314
 00532F3E    xor         eax,eax
 00532F40    pop         edx
 00532F41    pop         ecx
 00532F42    pop         ecx
 00532F43    mov         dword ptr fs:[eax],edx
 00532F46    push        532F61
 00532F4B    lea         eax,[ebp-14]
 00532F4E    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00532F54    call        @DynArrayClear
 00532F59    ret
>00532F5A    jmp         @HandleFinally
>00532F5F    jmp         00532F4B
 00532F61    pop         ebx
 00532F62    mov         esp,ebp
 00532F64    pop         ebp
 00532F65    ret         8
end;*}

//00532F68
{*function sub_00532F68(?:?; ?:?):?;
begin
 00532F68    push        ebp
 00532F69    mov         ebp,esp
 00532F6B    add         esp,0FFFFFFEC
 00532F6E    xor         ecx,ecx
 00532F70    mov         dword ptr [ebp-10],ecx
 00532F73    mov         dword ptr [ebp-14],ecx
 00532F76    mov         dword ptr [ebp-8],edx
 00532F79    mov         dword ptr [ebp-4],eax
 00532F7C    xor         eax,eax
 00532F7E    push        ebp
 00532F7F    push        53303B
 00532F84    push        dword ptr fs:[eax]
 00532F87    mov         dword ptr fs:[eax],esp
 00532F8A    mov         byte ptr [ebp-9],0
 00532F8E    cmp         dword ptr [ebp-8],0
>00532F92    je          00533020
 00532F98    mov         eax,dword ptr [ebp-8]
 00532F9B    mov         edx,dword ptr [eax+4]
 00532F9E    mov         eax,dword ptr [ebp-4]
 00532FA1    call        005330DC
 00532FA6    test        al,al
>00532FA8    jne         00532FBE
 00532FAA    mov         edx,dword ptr [ebp-8]
 00532FAD    mov         eax,dword ptr [ebp-4]
 00532FB0    mov         eax,dword ptr [eax+10]
 00532FB3    call        TList.Add
 00532FB8    mov         byte ptr [ebp-9],1
>00532FBC    jmp         00533020
 00532FBE    mov         eax,dword ptr [ebp-8]
 00532FC1    mov         edx,dword ptr [eax+4]
 00532FC4    mov         eax,dword ptr [ebp-4]
 00532FC7    call        00533130
 00532FCC    mov         edx,dword ptr [ebp-8]
 00532FCF    mov         eax,dword ptr [ebp-4]
 00532FD2    mov         eax,dword ptr [eax+10]
 00532FD5    call        TList.Add
 00532FDA    mov         eax,dword ptr [ebp-8]
 00532FDD    mov         eax,dword ptr [eax+4]
 00532FE0    xor         edx,edx
 00532FE2    push        edx
 00532FE3    push        eax
 00532FE4    lea         eax,[ebp-14]
 00532FE7    call        IntToStr
 00532FEC    mov         ecx,dword ptr [ebp-14]
 00532FEF    lea         eax,[ebp-10]
 00532FF2    mov         edx,533054;'DropList: Added 2nd Drop with same ID='
 00532FF7    call        @LStrCat3
 00532FFC    mov         edx,dword ptr [ebp-10]
 00532FFF    mov         eax,[0055B21C];^gvar_0055E118
 00533004    mov         eax,dword ptr [eax]
 00533006    mov         eax,dword ptr [eax+610]
 0053300C    call        0052BAF0
 00533011    push        2BC
 00533016    push        2EE
 0053301B    call        kernel32.Beep
 00533020    xor         eax,eax
 00533022    pop         edx
 00533023    pop         ecx
 00533024    pop         ecx
 00533025    mov         dword ptr fs:[eax],edx
 00533028    push        533042
 0053302D    lea         eax,[ebp-14]
 00533030    mov         edx,2
 00533035    call        @LStrArrayClr
 0053303A    ret
>0053303B    jmp         @HandleFinally
>00533040    jmp         0053302D
 00533042    mov         al,byte ptr [ebp-9]
 00533045    mov         esp,ebp
 00533047    pop         ebp
 00533048    ret
end;*}

//0053307C
{*function sub_0053307C(?:?; ?:?):?;
begin
 0053307C    push        ebp
 0053307D    mov         ebp,esp
 0053307F    add         esp,0FFFFFFE8
 00533082    mov         dword ptr [ebp-8],edx
 00533085    mov         dword ptr [ebp-4],eax
 00533088    xor         eax,eax
 0053308A    mov         dword ptr [ebp-0C],eax
 0053308D    mov         eax,dword ptr [ebp-4]
 00533090    mov         eax,dword ptr [eax+10]
 00533093    mov         eax,dword ptr [eax+8]
 00533096    dec         eax
 00533097    test        eax,eax
>00533099    jl          005330D2
 0053309B    inc         eax
 0053309C    mov         dword ptr [ebp-18],eax
 0053309F    mov         dword ptr [ebp-10],0
 005330A6    mov         eax,dword ptr [ebp-4]
 005330A9    mov         eax,dword ptr [eax+10]
 005330AC    mov         edx,dword ptr [ebp-10]
 005330AF    call        TList.Get
 005330B4    mov         dword ptr [ebp-14],eax
 005330B7    mov         eax,dword ptr [ebp-14]
 005330BA    mov         eax,dword ptr [eax+4]
 005330BD    cmp         eax,dword ptr [ebp-8]
>005330C0    jne         005330CA
 005330C2    mov         eax,dword ptr [ebp-14]
 005330C5    mov         dword ptr [ebp-0C],eax
>005330C8    jmp         005330D2
 005330CA    inc         dword ptr [ebp-10]
 005330CD    dec         dword ptr [ebp-18]
>005330D0    jne         005330A6
 005330D2    mov         eax,dword ptr [ebp-0C]
 005330D5    mov         esp,ebp
 005330D7    pop         ebp
 005330D8    ret
end;*}

//005330DC
{*function sub_005330DC(?:?; ?:?):?;
begin
 005330DC    push        ebp
 005330DD    mov         ebp,esp
 005330DF    add         esp,0FFFFFFEC
 005330E2    mov         dword ptr [ebp-8],edx
 005330E5    mov         dword ptr [ebp-4],eax
 005330E8    mov         byte ptr [ebp-9],0
 005330EC    mov         eax,dword ptr [ebp-4]
 005330EF    mov         eax,dword ptr [eax+10]
 005330F2    mov         eax,dword ptr [eax+8]
 005330F5    dec         eax
 005330F6    test        eax,eax
>005330F8    jl          00533129
 005330FA    inc         eax
 005330FB    mov         dword ptr [ebp-14],eax
 005330FE    mov         dword ptr [ebp-10],0
 00533105    mov         eax,dword ptr [ebp-4]
 00533108    mov         eax,dword ptr [eax+10]
 0053310B    mov         edx,dword ptr [ebp-10]
 0053310E    call        TList.Get
 00533113    mov         eax,dword ptr [eax+4]
 00533116    cmp         eax,dword ptr [ebp-8]
>00533119    jne         00533121
 0053311B    mov         byte ptr [ebp-9],1
>0053311F    jmp         00533129
 00533121    inc         dword ptr [ebp-10]
 00533124    dec         dword ptr [ebp-14]
>00533127    jne         00533105
 00533129    mov         al,byte ptr [ebp-9]
 0053312C    mov         esp,ebp
 0053312E    pop         ebp
 0053312F    ret
end;*}

//00533130
{*function sub_00533130(?:?; ?:?):?;
begin
 00533130    push        ebp
 00533131    mov         ebp,esp
 00533133    add         esp,0FFFFFFF4
 00533136    mov         dword ptr [ebp-8],edx
 00533139    mov         dword ptr [ebp-4],eax
 0053313C    mov         edx,dword ptr [ebp-8]
 0053313F    mov         eax,dword ptr [ebp-4]
 00533142    call        0053307C
 00533147    mov         edx,eax
 00533149    mov         eax,dword ptr [ebp-4]
 0053314C    call        0053315C
 00533151    mov         byte ptr [ebp-9],al
 00533154    mov         al,byte ptr [ebp-9]
 00533157    mov         esp,ebp
 00533159    pop         ebp
 0053315A    ret
end;*}

//0053315C
{*function sub_0053315C(?:?; ?:?):?;
begin
 0053315C    push        ebp
 0053315D    mov         ebp,esp
 0053315F    add         esp,0FFFFFFF4
 00533162    mov         dword ptr [ebp-8],edx
 00533165    mov         dword ptr [ebp-4],eax
 00533168    mov         byte ptr [ebp-9],0
 0053316C    cmp         dword ptr [ebp-8],0
>00533170    je          00533195
 00533172    mov         edx,dword ptr [ebp-8]
 00533175    mov         eax,dword ptr [ebp-4]
 00533178    mov         eax,dword ptr [eax+10]
 0053317B    call        00478AC4
 00533180    test        eax,eax
>00533182    jl          00533195
 00533184    mov         edx,38
 00533189    mov         eax,dword ptr [ebp-8]
 0053318C    call        @FreeMem
 00533191    mov         byte ptr [ebp-9],1
 00533195    mov         al,byte ptr [ebp-9]
 00533198    mov         esp,ebp
 0053319A    pop         ebp
 0053319B    ret
end;*}

//0053319C
{*function sub_0053319C(?:dword):?;
begin
 0053319C    push        ebp
 0053319D    mov         ebp,esp
 0053319F    add         esp,0FFFFFFF8
 005331A2    mov         dword ptr [ebp-4],eax
 005331A5    mov         eax,dword ptr [ebp-4]
 005331A8    mov         eax,dword ptr [eax+10]
 005331AB    mov         eax,dword ptr [eax+8]
 005331AE    mov         dword ptr [ebp-8],eax
 005331B1    mov         eax,dword ptr [ebp-8]
 005331B4    pop         ecx
 005331B5    pop         ecx
 005331B6    pop         ebp
 005331B7    ret
end;*}

//005331B8
{*procedure sub_005331B8(?:?);
begin
 005331B8    push        ebp
 005331B9    mov         ebp,esp
 005331BB    add         esp,0FFFFFFF8
 005331BE    mov         dword ptr [ebp-4],eax
 005331C1    mov         eax,dword ptr [ebp-4]
 005331C4    mov         eax,dword ptr [eax+10]
 005331C7    mov         eax,dword ptr [eax+8]
 005331CA    dec         eax
 005331CB    cmp         eax,0
>005331CE    jl          005331F4
 005331D0    mov         dword ptr [ebp-8],eax
 005331D3    mov         edx,dword ptr [ebp-8]
 005331D6    mov         eax,dword ptr [ebp-4]
 005331D9    mov         eax,dword ptr [eax+10]
 005331DC    call        TList.Get
 005331E1    mov         edx,38
 005331E6    call        @FreeMem
 005331EB    dec         dword ptr [ebp-8]
 005331EE    cmp         dword ptr [ebp-8],0FFFFFFFF
>005331F2    jne         005331D3
 005331F4    mov         eax,dword ptr [ebp-4]
 005331F7    mov         eax,dword ptr [eax+10]
 005331FA    mov         edx,dword ptr [eax]
 005331FC    call        dword ptr [edx+8]
 005331FF    pop         ecx
 00533200    pop         ecx
 00533201    pop         ebp
 00533202    ret
end;*}

//00533204
{*procedure sub_00533204(?:?);
begin
 00533204    push        ebp
 00533205    mov         ebp,esp
 00533207    push        ecx
 00533208    mov         dword ptr [ebp-4],eax
 0053320B    pop         ecx
 0053320C    pop         ebp
 0053320D    ret
end;*}

//00533210
{*function sub_00533210(?:?; ?:?):?;
begin
 00533210    push        ebp
 00533211    mov         ebp,esp
 00533213    add         esp,0FFFFFFEC
 00533216    mov         dword ptr [ebp-8],edx
 00533219    mov         dword ptr [ebp-4],eax
 0053321C    mov         eax,38
 00533221    call        @GetMem
 00533226    mov         dword ptr [ebp-10],eax
 00533229    lea         eax,[ebp-8]
 0053322C    mov         edx,3
 00533231    call        0051F5E4
 00533236    mov         eax,dword ptr [ebp-10]
 00533239    mov         dword ptr [ebp-14],eax
 0053323C    lea         eax,[ebp-8]
 0053323F    call        0051F398
 00533244    mov         edx,dword ptr [ebp-14]
 00533247    mov         word ptr [edx],ax
 0053324A    lea         eax,[ebp-8]
 0053324D    call        0051F3CC
 00533252    mov         edx,dword ptr [ebp-14]
 00533255    mov         dword ptr [edx+4],eax
 00533258    lea         eax,[ebp-8]
 0053325B    call        0051F3CC
 00533260    mov         edx,dword ptr [ebp-14]
 00533263    mov         dword ptr [edx+0C],eax
 00533266    lea         eax,[ebp-8]
 00533269    call        0051F3CC
 0053326E    mov         edx,dword ptr [ebp-14]
 00533271    mov         dword ptr [edx+10],eax
 00533274    mov         eax,dword ptr [ebp-14]
 00533277    xor         edx,edx
 00533279    mov         dword ptr [eax+14],edx
 0053327C    lea         eax,[ebp-8]
 0053327F    call        0051F3CC
 00533284    mov         edx,dword ptr [ebp-14]
 00533287    mov         dword ptr [edx+18],eax
 0053328A    call        004688F0
 0053328F    mov         eax,dword ptr [ebp-14]
 00533292    fstp        qword ptr [eax+20]
 00533295    wait
 00533296    mov         eax,dword ptr [ebp-14]
 00533299    xor         edx,edx
 0053329B    mov         dword ptr [eax+28],edx
 0053329E    mov         dword ptr [eax+2C],edx
 005332A1    mov         eax,dword ptr [ebp-14]
 005332A4    mov         byte ptr [eax+30],0
 005332A8    mov         eax,dword ptr [ebp-10]
 005332AB    mov         dword ptr [ebp-0C],eax
 005332AE    mov         eax,dword ptr [ebp-0C]
 005332B1    mov         esp,ebp
 005332B3    pop         ebp
 005332B4    ret
end;*}

//005332B8
{*function sub_005332B8(?:?; ?:?):?;
begin
 005332B8    push        ebp
 005332B9    mov         ebp,esp
 005332BB    add         esp,0FFFFFFF4
 005332BE    mov         dword ptr [ebp-8],edx
 005332C1    mov         dword ptr [ebp-4],eax
 005332C4    lea         eax,[ebp-8]
 005332C7    mov         edx,3
 005332CC    call        0051F5E4
 005332D1    lea         eax,[ebp-8]
 005332D4    call        0051F3CC
 005332D9    mov         dword ptr [ebp-0C],eax
 005332DC    mov         eax,dword ptr [ebp-0C]
 005332DF    mov         esp,ebp
 005332E1    pop         ebp
 005332E2    ret
end;*}

//005332E4
{*procedure sub_005332E4(?:?; ?:?);
begin
 005332E4    push        ebp
 005332E5    mov         ebp,esp
 005332E7    add         esp,0FFFFFFF8
 005332EA    mov         dword ptr [ebp-8],edx
 005332ED    mov         dword ptr [ebp-4],eax
 005332F0    mov         eax,dword ptr [ebp-4]
 005332F3    call        005331B8
 005332F8    pop         ecx
 005332F9    pop         ecx
 005332FA    pop         ebp
 005332FB    ret
end;*}

//005332FC
{*procedure sub_005332FC(?:?);
begin
 005332FC    push        ebp
 005332FD    mov         ebp,esp
 005332FF    push        ecx
 00533300    mov         dword ptr [ebp-4],eax
 00533303    mov         eax,dword ptr [ebp-4]
 00533306    add         eax,14
 00533309    push        eax
 0053330A    call        kernel32.EnterCriticalSection
 0053330F    pop         ecx
 00533310    pop         ebp
 00533311    ret
end;*}

//00533314
procedure sub_00533314(?:dword);
begin
{*
 00533314    push        ebp
 00533315    mov         ebp,esp
 00533317    push        ecx
 00533318    mov         dword ptr [ebp-4],eax
 0053331B    mov         eax,dword ptr [ebp-4]
 0053331E    add         eax,14
 00533321    push        eax
 00533322    call        kernel32.LeaveCriticalSection
 00533327    pop         ecx
 00533328    pop         ebp
 00533329    ret
*}
end;

//0053332C
{*function sub_0053332C(?:dword; ?:?):?;
begin
 0053332C    push        ebp
 0053332D    mov         ebp,esp
 0053332F    add         esp,0FFFFFFF4
 00533332    mov         dword ptr [ebp-8],edx
 00533335    mov         dword ptr [ebp-4],eax
 00533338    mov         edx,dword ptr [ebp-8]
 0053333B    mov         eax,dword ptr [ebp-4]
 0053333E    mov         eax,dword ptr [eax+10]
 00533341    call        TList.Get
 00533346    mov         dword ptr [ebp-0C],eax
 00533349    mov         eax,dword ptr [ebp-0C]
 0053334C    mov         esp,ebp
 0053334E    pop         ebp
 0053334F    ret
end;*}

//00533350
{*procedure sub_00533350(?:?; ?:?);
begin
 00533350    push        ebp
 00533351    mov         ebp,esp
 00533353    add         esp,0FFFFFFF8
 00533356    mov         dword ptr [ebp-8],edx
 00533359    mov         dword ptr [ebp-4],eax
 0053335C    mov         eax,dword ptr [ebp-4]
 0053335F    call        005331B8
 00533364    pop         ecx
 00533365    pop         ecx
 00533366    pop         ebp
 00533367    ret
end;*}

end.