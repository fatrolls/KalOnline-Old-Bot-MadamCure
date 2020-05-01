//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit110;

interface

uses
  SysUtils, Classes;

type
  TParty = class(TInterfacedObject)
    //constructor Create(?:?);//005323DC
  end;
    //procedure sub_00532498(?:?; ?:?; ?:?; ?:?);//00532498
    //function sub_00532544(?:dword; ?:?):?;//00532544
    //function sub_0053259C(?:?; ?:?):?;//0053259C
    //procedure sub_005325CC(?:?; ?:?);//005325CC
    //function sub_00532650(?:?; ?:?):?;//00532650
    //procedure sub_005326A8(?:?);//005326A8
    //procedure sub_005326FC(?:?);//005326FC
    //procedure sub_00532708(?:?; ?:?);//00532708
    //procedure sub_00532718(?:?; ?:?);//00532718
    //procedure sub_00532870(?:?; ?:?);//00532870
    //procedure sub_005328A8(?:?; ?:?);//005328A8
    //procedure sub_005329E0(?:?; ?:?);//005329E0
    //procedure sub_00532A94(?:?; ?:?);//00532A94
    //function sub_00532B48(?:dword; ?:?):?;//00532B48

implementation

//005323DC
{*constructor TParty.Create(?:?);
begin
 005323DC    push        ebp
 005323DD    mov         ebp,esp
 005323DF    add         esp,0FFFFFFF4
 005323E2    test        dl,dl
>005323E4    je          005323EE
 005323E6    add         esp,0FFFFFFF0
 005323E9    call        @ClassCreate
 005323EE    mov         dword ptr [ebp-0C],ecx
 005323F1    mov         byte ptr [ebp-5],dl
 005323F4    mov         dword ptr [ebp-4],eax
 005323F7    xor         edx,edx
 005323F9    mov         eax,dword ptr [ebp-4]
 005323FC    call        TObject.Create
 00532401    mov         eax,dword ptr [ebp-0C]
 00532404    mov         eax,dword ptr [eax]
 00532406    mov         edx,dword ptr [ebp-4]
 00532409    mov         dword ptr [edx+30],eax
 0053240C    mov         eax,dword ptr [ebp-4]
 0053240F    mov         edx,dword ptr [ebp+8]
 00532412    mov         dword ptr [eax+34],edx
 00532415    mov         eax,dword ptr [ebp-4]
 00532418    xor         edx,edx
 0053241A    mov         dword ptr [eax+0C],edx
 0053241D    push        5
 0053241F    mov         ecx,55AF6C
 00532424    mov         edx,dword ptr [ebp-4]
 00532427    test        edx,edx
>00532429    je          0053242E
 0053242B    sub         edx,0FFFFFFC8
 0053242E    mov         eax,dword ptr [ebp-0C]
 00532431    mov         eax,dword ptr [eax]
 00532433    call        005204E4
 00532438    mov         eax,dword ptr [ebp-4]
 0053243B    cmp         byte ptr [ebp-5],0
>0053243F    je          00532450
 00532441    call        @AfterConstruction
 00532446    pop         dword ptr fs:[0]
 0053244D    add         esp,0C
 00532450    mov         eax,dword ptr [ebp-4]
 00532453    mov         esp,ebp
 00532455    pop         ebp
 00532456    ret         4
end;*}

//00532498
{*procedure sub_00532498(?:?; ?:?; ?:?; ?:?);
begin
 00532498    push        ebp
 00532499    mov         ebp,esp
 0053249B    add         esp,0FFFFFFF4
 0053249E    mov         dword ptr [ebp-0C],ecx
 005324A1    mov         byte ptr [ebp-5],dl
 005324A4    mov         dword ptr [ebp-4],eax
 005324A7    mov         al,byte ptr [ebp+0C]
 005324AA    sub         al,1
>005324AC    jae         0053253D
 005324B2    xor         eax,eax
 005324B4    mov         al,byte ptr [ebp-5]
 005324B7    cmp         eax,99
>005324BC    jg          005324D1
>005324BE    je          005324FF
 005324C0    sub         eax,0F
>005324C3    je          0053252F
 005324C5    sub         eax,38
>005324C8    je          005324DF
 005324CA    sub         eax,11
>005324CD    je          005324EF
>005324CF    jmp         0053253D
 005324D1    sub         eax,0A7
>005324D6    je          0053251F
 005324D8    sub         eax,12
>005324DB    je          0053250F
>005324DD    jmp         0053253D
 005324DF    mov         eax,dword ptr [ebp-0C]
 005324E2    mov         edx,dword ptr [eax+4]
 005324E5    mov         eax,dword ptr [ebp-4]
 005324E8    call        005328A8
>005324ED    jmp         0053253D
 005324EF    mov         eax,dword ptr [ebp-0C]
 005324F2    mov         edx,dword ptr [eax+4]
 005324F5    mov         eax,dword ptr [ebp-4]
 005324F8    call        00532A94
>005324FD    jmp         0053253D
 005324FF    mov         eax,dword ptr [ebp-0C]
 00532502    mov         edx,dword ptr [eax+4]
 00532505    mov         eax,dword ptr [ebp-4]
 00532508    call        005329E0
>0053250D    jmp         0053253D
 0053250F    mov         eax,dword ptr [ebp-0C]
 00532512    mov         edx,dword ptr [eax+4]
 00532515    mov         eax,dword ptr [ebp-4]
 00532518    call        00532708
>0053251D    jmp         0053253D
 0053251F    mov         eax,dword ptr [ebp-0C]
 00532522    mov         edx,dword ptr [eax+4]
 00532525    mov         eax,dword ptr [ebp-4]
 00532528    call        00532870
>0053252D    jmp         0053253D
 0053252F    mov         eax,dword ptr [ebp-0C]
 00532532    mov         edx,dword ptr [eax+4]
 00532535    mov         eax,dword ptr [ebp-4]
 00532538    call        00532718
 0053253D    mov         esp,ebp
 0053253F    pop         ebp
 00532540    ret         8
end;*}

//00532544
{*function sub_00532544(?:dword; ?:?):?;
begin
 00532544    push        ebp
 00532545    mov         ebp,esp
 00532547    add         esp,0FFFFFFEC
 0053254A    mov         dword ptr [ebp-8],edx
 0053254D    mov         dword ptr [ebp-4],eax
 00532550    xor         eax,eax
 00532552    mov         dword ptr [ebp-0C],eax
 00532555    mov         eax,dword ptr [ebp-4]
 00532558    mov         eax,dword ptr [eax+0C]
 0053255B    dec         eax
 0053255C    test        eax,eax
>0053255E    jl          00532593
 00532560    inc         eax
 00532561    mov         dword ptr [ebp-14],eax
 00532564    mov         dword ptr [ebp-10],0
 0053256B    mov         eax,dword ptr [ebp-4]
 0053256E    mov         edx,dword ptr [ebp-10]
 00532571    mov         eax,dword ptr [eax+edx*4+10]
 00532575    mov         eax,dword ptr [eax]
 00532577    cmp         eax,dword ptr [ebp-8]
>0053257A    jne         0053258B
 0053257C    mov         eax,dword ptr [ebp-4]
 0053257F    mov         edx,dword ptr [ebp-10]
 00532582    mov         eax,dword ptr [eax+edx*4+10]
 00532586    mov         dword ptr [ebp-0C],eax
>00532589    jmp         00532593
 0053258B    inc         dword ptr [ebp-10]
 0053258E    dec         dword ptr [ebp-14]
>00532591    jne         0053256B
 00532593    mov         eax,dword ptr [ebp-0C]
 00532596    mov         esp,ebp
 00532598    pop         ebp
 00532599    ret
end;*}

//0053259C
{*function sub_0053259C(?:?; ?:?):?;
begin
 0053259C    push        ebp
 0053259D    mov         ebp,esp
 0053259F    add         esp,0FFFFFFF4
 005325A2    mov         dword ptr [ebp-8],edx
 005325A5    mov         dword ptr [ebp-4],eax
 005325A8    mov         byte ptr [ebp-9],1
 005325AC    mov         eax,dword ptr [ebp-4]
 005325AF    mov         eax,dword ptr [eax+0C]
 005325B2    mov         edx,dword ptr [ebp-4]
 005325B5    mov         ecx,dword ptr [ebp-8]
 005325B8    mov         dword ptr [edx+eax*4+10],ecx
 005325BC    mov         eax,dword ptr [ebp-4]
 005325BF    inc         dword ptr [eax+0C]
 005325C2    mov         al,byte ptr [ebp-9]
 005325C5    mov         esp,ebp
 005325C7    pop         ebp
 005325C8    ret
end;*}

//005325CC
{*procedure sub_005325CC(?:?; ?:?);
begin
 005325CC    push        ebp
 005325CD    mov         ebp,esp
 005325CF    add         esp,0FFFFFFF8
 005325D2    mov         byte ptr [ebp-5],dl
 005325D5    mov         dword ptr [ebp-4],eax
 005325D8    xor         eax,eax
 005325DA    mov         al,byte ptr [ebp-5]
 005325DD    mov         edx,dword ptr [ebp-4]
 005325E0    mov         edx,dword ptr [edx+0C]
 005325E3    dec         edx
 005325E4    cmp         eax,edx
>005325E6    jg          0053264B
 005325E8    xor         eax,eax
 005325EA    mov         al,byte ptr [ebp-5]
 005325ED    mov         edx,dword ptr [ebp-4]
 005325F0    mov         eax,dword ptr [edx+eax*4+10]
 005325F4    mov         edx,dword ptr ds:[51E030];TPartyMember
 005325FA    call        @Dispose
 005325FF    mov         al,byte ptr [ebp-5]
 00532602    mov         edx,dword ptr [ebp-4]
 00532605    mov         dl,byte ptr [edx+0C]
 00532608    sub         dl,2
 0053260B    sub         dl,al
>0053260D    jb          00532636
 0053260F    inc         edx
 00532610    mov         byte ptr [ebp-7],dl
 00532613    mov         byte ptr [ebp-6],al
 00532616    xor         eax,eax
 00532618    mov         al,byte ptr [ebp-6]
 0053261B    mov         edx,dword ptr [ebp-4]
 0053261E    mov         eax,dword ptr [edx+eax*4+14]
 00532622    xor         edx,edx
 00532624    mov         dl,byte ptr [ebp-6]
 00532627    mov         ecx,dword ptr [ebp-4]
 0053262A    mov         dword ptr [ecx+edx*4+10],eax
 0053262E    inc         byte ptr [ebp-6]
 00532631    dec         byte ptr [ebp-7]
>00532634    jne         00532616
 00532636    mov         eax,dword ptr [ebp-4]
 00532639    mov         eax,dword ptr [eax+0C]
 0053263C    mov         edx,dword ptr [ebp-4]
 0053263F    xor         ecx,ecx
 00532641    mov         dword ptr [edx+eax*4+0C],ecx
 00532645    mov         eax,dword ptr [ebp-4]
 00532648    dec         dword ptr [eax+0C]
 0053264B    pop         ecx
 0053264C    pop         ecx
 0053264D    pop         ebp
 0053264E    ret
end;*}

//00532650
{*function sub_00532650(?:?; ?:?):?;
begin
 00532650    push        ebp
 00532651    mov         ebp,esp
 00532653    add         esp,0FFFFFFF4
 00532656    mov         dword ptr [ebp-8],edx
 00532659    mov         dword ptr [ebp-4],eax
 0053265C    mov         byte ptr [ebp-9],0
 00532660    mov         eax,dword ptr [ebp-4]
 00532663    mov         al,byte ptr [eax+0C]
 00532666    dec         eax
 00532667    test        al,al
>00532669    jb          0053269F
 0053266B    inc         eax
 0053266C    mov         byte ptr [ebp-0B],al
 0053266F    mov         byte ptr [ebp-0A],0
 00532673    xor         eax,eax
 00532675    mov         al,byte ptr [ebp-0A]
 00532678    mov         edx,dword ptr [ebp-4]
 0053267B    mov         eax,dword ptr [edx+eax*4+10]
 0053267F    mov         eax,dword ptr [eax]
 00532681    cmp         eax,dword ptr [ebp-8]
>00532684    jne         00532697
 00532686    mov         dl,byte ptr [ebp-0A]
 00532689    mov         eax,dword ptr [ebp-4]
 0053268C    call        005325CC
 00532691    mov         byte ptr [ebp-9],1
>00532695    jmp         0053269F
 00532697    inc         byte ptr [ebp-0A]
 0053269A    dec         byte ptr [ebp-0B]
>0053269D    jne         00532673
 0053269F    mov         al,byte ptr [ebp-9]
 005326A2    mov         esp,ebp
 005326A4    pop         ebp
 005326A5    ret
end;*}

//005326A8
{*procedure sub_005326A8(?:?);
begin
 005326A8    push        ebp
 005326A9    mov         ebp,esp
 005326AB    add         esp,0FFFFFFF4
 005326AE    mov         dword ptr [ebp-4],eax
 005326B1    mov         eax,dword ptr [ebp-4]
 005326B4    mov         eax,dword ptr [eax+0C]
 005326B7    dec         eax
 005326B8    test        eax,eax
>005326BA    jl          005326F0
 005326BC    inc         eax
 005326BD    mov         dword ptr [ebp-0C],eax
 005326C0    mov         dword ptr [ebp-8],0
 005326C7    mov         edx,dword ptr ds:[51E030];TPartyMember
 005326CD    mov         eax,dword ptr [ebp-8]
 005326D0    mov         ecx,dword ptr [ebp-4]
 005326D3    mov         eax,dword ptr [ecx+eax*4+10]
 005326D7    call        @Dispose
 005326DC    mov         eax,dword ptr [ebp-8]
 005326DF    mov         edx,dword ptr [ebp-4]
 005326E2    xor         ecx,ecx
 005326E4    mov         dword ptr [edx+eax*4+10],ecx
 005326E8    inc         dword ptr [ebp-8]
 005326EB    dec         dword ptr [ebp-0C]
>005326EE    jne         005326C7
 005326F0    mov         eax,dword ptr [ebp-4]
 005326F3    xor         edx,edx
 005326F5    mov         dword ptr [eax+0C],edx
 005326F8    mov         esp,ebp
 005326FA    pop         ebp
 005326FB    ret
end;*}

//005326FC
{*procedure sub_005326FC(?:?);
begin
 005326FC    push        ebp
 005326FD    mov         ebp,esp
 005326FF    push        ecx
 00532700    mov         dword ptr [ebp-4],eax
 00532703    pop         ecx
 00532704    pop         ebp
 00532705    ret
end;*}

//00532708
{*procedure sub_00532708(?:?; ?:?);
begin
 00532708    push        ebp
 00532709    mov         ebp,esp
 0053270B    add         esp,0FFFFFFF8
 0053270E    mov         dword ptr [ebp-8],edx
 00532711    mov         dword ptr [ebp-4],eax
 00532714    pop         ecx
 00532715    pop         ecx
 00532716    pop         ebp
 00532717    ret
end;*}

//00532718
{*procedure sub_00532718(?:?; ?:?);
begin
 00532718    push        ebp
 00532719    mov         ebp,esp
 0053271B    add         esp,0FFFFFFD8
 0053271E    xor         ecx,ecx
 00532720    mov         dword ptr [ebp-18],ecx
 00532723    mov         dword ptr [ebp-8],edx
 00532726    mov         dword ptr [ebp-4],eax
 00532729    xor         eax,eax
 0053272B    push        ebp
 0053272C    push        532863
 00532731    push        dword ptr fs:[eax]
 00532734    mov         dword ptr fs:[eax],esp
 00532737    lea         eax,[ebp-8]
 0053273A    mov         edx,3
 0053273F    call        0051F5E4
 00532744    lea         eax,[ebp-8]
 00532747    call        0051F338
 0053274C    mov         byte ptr [ebp-9],al
 0053274F    mov         al,byte ptr [ebp-9]
 00532752    sub         al,1D
>00532754    je          0053276B
 00532756    sub         al,3
>00532758    je          0053281F
 0053275E    dec         al
>00532760    je          00532837
>00532766    jmp         0053284D
 0053276B    mov         edx,dword ptr ds:[51E030];TPartyMember
 00532771    mov         eax,38
 00532776    call        00405948
 0053277B    mov         dword ptr [ebp-10],eax
 0053277E    lea         eax,[ebp-8]
 00532781    call        0051F3CC
 00532786    mov         edx,dword ptr [ebp-10]
 00532789    mov         dword ptr [edx],eax
 0053278B    lea         edx,[ebp-18]
 0053278E    lea         eax,[ebp-8]
 00532791    call        0051F434
 00532796    mov         edx,dword ptr [ebp-18]
 00532799    mov         eax,dword ptr [ebp-10]
 0053279C    add         eax,4
 0053279F    call        @LStrAsg
 005327A4    lea         eax,[ebp-8]
 005327A7    call        0051F338
 005327AC    and         eax,0FF
 005327B1    mov         edx,dword ptr [ebp-10]
 005327B4    mov         dword ptr [edx+8],eax
 005327B7    lea         eax,[ebp-8]
 005327BA    call        0051F338
 005327BF    mov         edx,dword ptr [ebp-10]
 005327C2    mov         byte ptr [edx+0C],al
 005327C5    lea         eax,[ebp-8]
 005327C8    call        0051F398
 005327CD    movzx       eax,ax
 005327D0    mov         edx,dword ptr [ebp-10]
 005327D3    mov         dword ptr [edx+10],eax
 005327D6    lea         eax,[ebp-8]
 005327D9    call        0051F398
 005327DE    movzx       eax,ax
 005327E1    mov         edx,dword ptr [ebp-10]
 005327E4    mov         dword ptr [edx+14],eax
 005327E7    mov         eax,dword ptr [ebp-10]
 005327EA    mov         eax,dword ptr [eax+10]
 005327ED    mov         dword ptr [ebp-20],eax
 005327F0    xor         eax,eax
 005327F2    mov         dword ptr [ebp-1C],eax
 005327F5    fild        qword ptr [ebp-20]
 005327F8    mov         eax,dword ptr [ebp-10]
 005327FB    mov         eax,dword ptr [eax+14]
 005327FE    mov         dword ptr [ebp-28],eax
 00532801    xor         eax,eax
 00532803    mov         dword ptr [ebp-24],eax
 00532806    fild        qword ptr [ebp-28]
 00532809    fdivp       st(1),st
 0053280B    mov         eax,dword ptr [ebp-10]
 0053280E    fstp        qword ptr [eax+20]
 00532811    wait
 00532812    mov         edx,dword ptr [ebp-10]
 00532815    mov         eax,dword ptr [ebp-4]
 00532818    call        0053259C
>0053281D    jmp         0053284D
 0053281F    lea         eax,[ebp-8]
 00532822    call        0051F3CC
 00532827    mov         dword ptr [ebp-14],eax
 0053282A    mov         edx,dword ptr [ebp-14]
 0053282D    mov         eax,dword ptr [ebp-4]
 00532830    call        00532650
>00532835    jmp         0053284D
 00532837    lea         eax,[ebp-8]
 0053283A    call        0051F3CC
 0053283F    mov         dword ptr [ebp-14],eax
 00532842    mov         edx,dword ptr [ebp-14]
 00532845    mov         eax,dword ptr [ebp-4]
 00532848    call        00532650
 0053284D    xor         eax,eax
 0053284F    pop         edx
 00532850    pop         ecx
 00532851    pop         ecx
 00532852    mov         dword ptr fs:[eax],edx
 00532855    push        53286A
 0053285A    lea         eax,[ebp-18]
 0053285D    call        @LStrClr
 00532862    ret
>00532863    jmp         @HandleFinally
>00532868    jmp         0053285A
 0053286A    mov         esp,ebp
 0053286C    pop         ebp
 0053286D    ret
end;*}

//00532870
{*procedure sub_00532870(?:?; ?:?);
begin
 00532870    push        ebp
 00532871    mov         ebp,esp
 00532873    add         esp,0FFFFFFF4
 00532876    mov         dword ptr [ebp-8],edx
 00532879    mov         dword ptr [ebp-4],eax
 0053287C    lea         eax,[ebp-8]
 0053287F    mov         edx,3
 00532884    call        0051F5E4
 00532889    lea         eax,[ebp-8]
 0053288C    call        0051F338
 00532891    mov         byte ptr [ebp-9],al
 00532894    mov         al,byte ptr [ebp-9]
 00532897    sub         al,20
>00532899    jne         005328A3
 0053289B    mov         eax,dword ptr [ebp-4]
 0053289E    call        005326A8
 005328A3    mov         esp,ebp
 005328A5    pop         ebp
 005328A6    ret
end;*}

//005328A8
{*procedure sub_005328A8(?:?; ?:?);
begin
 005328A8    push        ebp
 005328A9    mov         ebp,esp
 005328AB    add         esp,0FFFFFFD4
 005328AE    xor         ecx,ecx
 005328B0    mov         dword ptr [ebp-1C],ecx
 005328B3    mov         dword ptr [ebp-8],edx
 005328B6    mov         dword ptr [ebp-4],eax
 005328B9    xor         eax,eax
 005328BB    push        ebp
 005328BC    push        5329D5
 005328C1    push        dword ptr fs:[eax]
 005328C4    mov         dword ptr fs:[eax],esp
 005328C7    mov         eax,dword ptr [ebp-4]
 005328CA    call        005326A8
 005328CF    lea         eax,[ebp-8]
 005328D2    mov         edx,3
 005328D7    call        0051F5E4
 005328DC    lea         eax,[ebp-8]
 005328DF    call        0051F338
 005328E4    mov         byte ptr [ebp-0A],al
 005328E7    mov         al,byte ptr [ebp-0A]
 005328EA    dec         eax
 005328EB    test        al,al
>005328ED    jb          005329BF
 005328F3    inc         eax
 005328F4    mov         byte ptr [ebp-11],al
 005328F7    mov         byte ptr [ebp-9],0
 005328FB    mov         edx,dword ptr ds:[51E030];TPartyMember
 00532901    mov         eax,38
 00532906    call        00405948
 0053290B    mov         dword ptr [ebp-10],eax
 0053290E    mov         eax,dword ptr [ebp-10]
 00532911    mov         dword ptr [ebp-18],eax
 00532914    lea         eax,[ebp-8]
 00532917    call        0051F3CC
 0053291C    mov         edx,dword ptr [ebp-18]
 0053291F    mov         dword ptr [edx],eax
 00532921    lea         edx,[ebp-1C]
 00532924    lea         eax,[ebp-8]
 00532927    call        0051F434
 0053292C    mov         edx,dword ptr [ebp-1C]
 0053292F    mov         eax,dword ptr [ebp-18]
 00532932    add         eax,4
 00532935    call        @LStrAsg
 0053293A    lea         eax,[ebp-8]
 0053293D    call        0051F338
 00532942    and         eax,0FF
 00532947    mov         edx,dword ptr [ebp-18]
 0053294A    mov         dword ptr [edx+8],eax
 0053294D    lea         eax,[ebp-8]
 00532950    call        0051F338
 00532955    mov         edx,dword ptr [ebp-18]
 00532958    mov         byte ptr [edx+0C],al
 0053295B    lea         eax,[ebp-8]
 0053295E    call        0051F398
 00532963    movzx       eax,ax
 00532966    mov         edx,dword ptr [ebp-18]
 00532969    mov         dword ptr [edx+10],eax
 0053296C    lea         eax,[ebp-8]
 0053296F    call        0051F398
 00532974    movzx       eax,ax
 00532977    mov         edx,dword ptr [ebp-18]
 0053297A    mov         dword ptr [edx+14],eax
 0053297D    mov         eax,dword ptr [ebp-18]
 00532980    mov         eax,dword ptr [eax+10]
 00532983    mov         dword ptr [ebp-24],eax
 00532986    xor         eax,eax
 00532988    mov         dword ptr [ebp-20],eax
 0053298B    fild        qword ptr [ebp-24]
 0053298E    mov         eax,dword ptr [ebp-18]
 00532991    mov         eax,dword ptr [eax+14]
 00532994    mov         dword ptr [ebp-2C],eax
 00532997    xor         eax,eax
 00532999    mov         dword ptr [ebp-28],eax
 0053299C    fild        qword ptr [ebp-2C]
 0053299F    fdivp       st(1),st
 005329A1    mov         eax,dword ptr [ebp-18]
 005329A4    fstp        qword ptr [eax+20]
 005329A7    wait
 005329A8    mov         edx,dword ptr [ebp-10]
 005329AB    mov         eax,dword ptr [ebp-4]
 005329AE    call        0053259C
 005329B3    inc         byte ptr [ebp-9]
 005329B6    dec         byte ptr [ebp-11]
>005329B9    jne         005328FB
 005329BF    xor         eax,eax
 005329C1    pop         edx
 005329C2    pop         ecx
 005329C3    pop         ecx
 005329C4    mov         dword ptr fs:[eax],edx
 005329C7    push        5329DC
 005329CC    lea         eax,[ebp-1C]
 005329CF    call        @LStrClr
 005329D4    ret
>005329D5    jmp         @HandleFinally
>005329DA    jmp         005329CC
 005329DC    mov         esp,ebp
 005329DE    pop         ebp
 005329DF    ret
end;*}

//005329E0
{*procedure sub_005329E0(?:?; ?:?);
begin
 005329E0    push        ebp
 005329E1    mov         ebp,esp
 005329E3    add         esp,0FFFFFFE8
 005329E6    mov         dword ptr [ebp-8],edx
 005329E9    mov         dword ptr [ebp-4],eax
 005329EC    lea         eax,[ebp-8]
 005329EF    mov         edx,3
 005329F4    call        0051F5E4
 005329F9    lea         eax,[ebp-8]
 005329FC    call        0051F338
 00532A01    mov         byte ptr [ebp-9],al
 00532A04    mov         al,byte ptr [ebp-9]
 00532A07    dec         eax
 00532A08    test        al,al
>00532A0A    jb          00532A6D
 00532A0C    inc         eax
 00532A0D    mov         byte ptr [ebp-16],al
 00532A10    mov         byte ptr [ebp-15],0
 00532A14    lea         eax,[ebp-8]
 00532A17    call        0051F3CC
 00532A1C    mov         dword ptr [ebp-14],eax
 00532A1F    mov         edx,dword ptr [ebp-14]
 00532A22    mov         eax,dword ptr [ebp-4]
 00532A25    call        00532544
 00532A2A    mov         dword ptr [ebp-10],eax
 00532A2D    cmp         dword ptr [ebp-10],0
>00532A31    jne         00532A49
 00532A33    mov         ecx,532A7C;'Party meber don't exist'
 00532A38    mov         dl,1
 00532A3A    mov         eax,[004653B4];Exception
 00532A3F    call        Exception.Create;Exception.Create
 00532A44    call        @RaiseExcept
 00532A49    lea         eax,[ebp-8]
 00532A4C    call        0051F3CC
 00532A51    mov         edx,dword ptr [ebp-10]
 00532A54    mov         dword ptr [edx+2C],eax
 00532A57    lea         eax,[ebp-8]
 00532A5A    call        0051F3CC
 00532A5F    mov         edx,dword ptr [ebp-10]
 00532A62    mov         dword ptr [edx+30],eax
 00532A65    inc         byte ptr [ebp-15]
 00532A68    dec         byte ptr [ebp-16]
>00532A6B    jne         00532A14
 00532A6D    mov         esp,ebp
 00532A6F    pop         ebp
 00532A70    ret
end;*}

//00532A94
{*procedure sub_00532A94(?:?; ?:?);
begin
 00532A94    push        ebp
 00532A95    mov         ebp,esp
 00532A97    add         esp,0FFFFFFD8
 00532A9A    mov         dword ptr [ebp-8],edx
 00532A9D    mov         dword ptr [ebp-4],eax
 00532AA0    lea         eax,[ebp-8]
 00532AA3    mov         edx,3
 00532AA8    call        0051F5E4
 00532AAD    lea         eax,[ebp-8]
 00532AB0    call        0051F3CC
 00532AB5    mov         dword ptr [ebp-10],eax
 00532AB8    lea         eax,[ebp-8]
 00532ABB    call        0051F338
 00532AC0    mov         byte ptr [ebp-11],al
 00532AC3    mov         edx,dword ptr [ebp-10]
 00532AC6    mov         eax,dword ptr [ebp-4]
 00532AC9    call        00532544
 00532ACE    mov         dword ptr [ebp-0C],eax
 00532AD1    cmp         dword ptr [ebp-0C],0
>00532AD5    je          00532B41
 00532AD7    mov         al,byte ptr [ebp-11]
 00532ADA    sub         al,7
>00532ADC    je          00532AE4
 00532ADE    sub         al,13
>00532AE0    je          00532B33
>00532AE2    jmp         00532B41
 00532AE4    mov         eax,dword ptr [ebp-0C]
 00532AE7    mov         dword ptr [ebp-18],eax
 00532AEA    lea         eax,[ebp-8]
 00532AED    call        0051F3CC
 00532AF2    mov         edx,dword ptr [ebp-18]
 00532AF5    mov         dword ptr [edx+10],eax
 00532AF8    lea         eax,[ebp-8]
 00532AFB    call        0051F3CC
 00532B00    mov         edx,dword ptr [ebp-18]
 00532B03    mov         dword ptr [edx+14],eax
 00532B06    mov         eax,dword ptr [ebp-18]
 00532B09    mov         eax,dword ptr [eax+10]
 00532B0C    mov         dword ptr [ebp-20],eax
 00532B0F    xor         eax,eax
 00532B11    mov         dword ptr [ebp-1C],eax
 00532B14    fild        qword ptr [ebp-20]
 00532B17    mov         eax,dword ptr [ebp-18]
 00532B1A    mov         eax,dword ptr [eax+14]
 00532B1D    mov         dword ptr [ebp-28],eax
 00532B20    xor         eax,eax
 00532B22    mov         dword ptr [ebp-24],eax
 00532B25    fild        qword ptr [ebp-28]
 00532B28    fdivp       st(1),st
 00532B2A    mov         eax,dword ptr [ebp-18]
 00532B2D    fstp        qword ptr [eax+20]
 00532B30    wait
>00532B31    jmp         00532B41
 00532B33    lea         eax,[ebp-8]
 00532B36    call        0051F3CC
 00532B3B    mov         edx,dword ptr [ebp-0C]
 00532B3E    mov         byte ptr [edx+0C],al
 00532B41    mov         esp,ebp
 00532B43    pop         ebp
 00532B44    ret
end;*}

//00532B48
{*function sub_00532B48(?:dword; ?:?):?;
begin
 00532B48    push        ebp
 00532B49    mov         ebp,esp
 00532B4B    add         esp,0FFFFFFDC
 00532B4E    mov         dword ptr [ebp-4],eax
 00532B51    xor         eax,eax
 00532B53    mov         dword ptr [ebp-8],eax
 00532B56    xor         eax,eax
 00532B58    mov         dword ptr [ebp-18],eax
 00532B5B    mov         dword ptr [ebp-14],40590000
 00532B62    mov         eax,dword ptr [ebp-4]
 00532B65    mov         eax,dword ptr [eax+0C]
 00532B68    dec         eax
 00532B69    test        eax,eax
>00532B6B    jl          00532C2F
 00532B71    inc         eax
 00532B72    mov         dword ptr [ebp-24],eax
 00532B75    mov         dword ptr [ebp-0C],0
 00532B7C    mov         eax,dword ptr [ebp-0C]
 00532B7F    mov         edx,dword ptr [ebp-4]
 00532B82    mov         eax,dword ptr [edx+eax*4+10]
 00532B86    mov         dword ptr [ebp-1C],eax
 00532B89    mov         eax,dword ptr [ebp-4]
 00532B8C    mov         eax,dword ptr [eax+34]
 00532B8F    call        005351E0
 00532B94    mov         eax,dword ptr [ebp-4]
 00532B97    mov         eax,dword ptr [eax+34]
 00532B9A    mov         eax,dword ptr [eax+40]
 00532B9D    mov         eax,dword ptr [eax]
 00532B9F    mov         edx,dword ptr [ebp-1C]
 00532BA2    cmp         eax,dword ptr [edx]
>00532BA4    jne         00532BB4
 00532BA6    mov         eax,dword ptr [ebp-4]
 00532BA9    mov         eax,dword ptr [eax+34]
 00532BAC    mov         eax,dword ptr [eax+40]
 00532BAF    mov         dword ptr [ebp-20],eax
>00532BB2    jmp         00532BC7
 00532BB4    mov         eax,dword ptr [ebp-1C]
 00532BB7    mov         edx,dword ptr [eax]
 00532BB9    mov         eax,dword ptr [ebp-4]
 00532BBC    mov         eax,dword ptr [eax+34]
 00532BBF    call        005346D4
 00532BC4    mov         dword ptr [ebp-20],eax
 00532BC7    mov         eax,dword ptr [ebp-4]
 00532BCA    mov         eax,dword ptr [eax+34]
 00532BCD    call        005351F8
 00532BD2    cmp         dword ptr [ebp-20],0
>00532BD6    je          00532C23
 00532BD8    mov         eax,dword ptr [ebp-20]
 00532BDB    lea         edx,[eax+0C]
 00532BDE    mov         eax,dword ptr [ebp-4]
 00532BE1    mov         eax,dword ptr [eax+34]
 00532BE4    mov         eax,dword ptr [eax+40]
 00532BE7    add         eax,0C
 00532BEA    call        0051F5FC
 00532BEF    fcomp       qword ptr [ebp+8]
 00532BF2    fnstsw      al
 00532BF4    sahf
>00532BF5    ja          00532C23
 00532BF7    mov         eax,dword ptr [ebp-1C]
 00532BFA    cmp         dword ptr [eax+10],0
>00532BFE    je          00532C23
 00532C00    mov         eax,dword ptr [ebp-1C]
 00532C03    fld         qword ptr [eax+20]
 00532C06    fcomp       qword ptr [ebp-18]
 00532C09    fnstsw      al
 00532C0B    sahf
>00532C0C    jae         00532C23
 00532C0E    mov         eax,dword ptr [ebp-1C]
 00532C11    mov         edx,dword ptr [eax+20]
 00532C14    mov         dword ptr [ebp-18],edx
 00532C17    mov         edx,dword ptr [eax+24]
 00532C1A    mov         dword ptr [ebp-14],edx
 00532C1D    mov         eax,dword ptr [ebp-1C]
 00532C20    mov         dword ptr [ebp-8],eax
 00532C23    inc         dword ptr [ebp-0C]
 00532C26    dec         dword ptr [ebp-24]
>00532C29    jne         00532B7C
 00532C2F    mov         eax,dword ptr [ebp-8]
 00532C32    mov         esp,ebp
 00532C34    pop         ebp
 00532C35    ret         8
end;*}

end.