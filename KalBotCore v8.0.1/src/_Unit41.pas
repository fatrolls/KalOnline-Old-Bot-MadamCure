//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit41;

interface

uses
  SysUtils, Classes;

    //function sub_004900E0(?:?; ?:?; ?:AnsiString):?;//004900E0
    //function sub_004901E0(?:?):?;//004901E0
    //function sub_00490284(?:?; ?:?):?;//00490284
    //function sub_00490324(?:?; ?:?):?;//00490324
    //function sub_004903D0(?:?; ?:?; ?:?):?;//004903D0
    //function sub_0049046C(?:?; ?:?):?;//0049046C
    //function sub_00490568(?:?; ?:?):?;//00490568
    //function sub_00490664(?:?; ?:?):?;//00490664
    //function sub_00490760(?:?; ?:?; ?:?; ?:?):?;//00490760
    procedure sub_004908AC;//004908AC

implementation

//004900E0
{*function sub_004900E0(?:?; ?:?; ?:AnsiString):?;
begin
 004900E0    push        ebp
 004900E1    mov         ebp,esp
 004900E3    add         esp,0FFFFFFF0
 004900E6    mov         dword ptr [ebp-0C],ecx
 004900E9    mov         dword ptr [ebp-8],edx
 004900EC    mov         byte ptr [ebp-1],al
 004900EF    mov         eax,dword ptr [ebp-0C]
 004900F2    call        @LStrAddRef
 004900F7    xor         eax,eax
 004900F9    push        ebp
 004900FA    push        4901B7
 004900FF    push        dword ptr fs:[eax]
 00490102    mov         dword ptr fs:[eax],esp
 00490105    xor         eax,eax
 00490107    mov         dword ptr [ebp-10],eax
 0049010A    xor         eax,eax
 0049010C    mov         al,byte ptr [ebp-1]
 0049010F    cmp         byte ptr [eax+55DBA0],0;gvar_0055DBA0
>00490116    jne         004901A1
 0049011C    cmp         dword ptr ds:[55DB9C],0;gvar_0055DB9C:HMODULE
>00490123    je          00490175
 00490125    cmp         byte ptr [ebp-1],0
>00490129    jne         0049015C
 0049012B    cmp         byte ptr ds:[55DBA8],0;gvar_0055DBA8
>00490132    jne         0049015C
 00490134    mov         ecx,4901D0;'GetMonitorInfoA'
 00490139    mov         edx,dword ptr ds:[55DB88];gvar_0055DB88
 0049013F    mov         al,4
 00490141    call        004900E0
 00490146    mov         [0055DB88],eax;gvar_0055DB88
 0049014B    cmp         byte ptr ds:[55DBA8],0;gvar_0055DBA8
>00490152    jne         0049015C
 00490154    lea         eax,[ebp-0C]
 00490157    call        @LStrClr
 0049015C    mov         eax,dword ptr [ebp-0C]
 0049015F    call        @LStrToPChar
 00490164    push        eax
 00490165    mov         eax,[0055DB9C];gvar_0055DB9C:HMODULE
 0049016A    push        eax
 0049016B    call        kernel32.GetProcAddress
 00490170    mov         dword ptr [ebp-10],eax
>00490173    jmp         0049017A
 00490175    xor         eax,eax
 00490177    mov         dword ptr [ebp-10],eax
 0049017A    cmp         dword ptr [ebp-10],0
>0049017E    jne         00490188
 00490180    mov         eax,dword ptr [ebp-8]
 00490183    mov         dword ptr [ebp-10],eax
>00490186    jmp         00490195
 00490188    cmp         byte ptr [ebp-1],0
>0049018C    je          00490195
 0049018E    mov         byte ptr ds:[55DBA8],1;gvar_0055DBA8
 00490195    xor         eax,eax
 00490197    mov         al,byte ptr [ebp-1]
 0049019A    mov         byte ptr [eax+55DBA0],1;gvar_0055DBA0
 004901A1    xor         eax,eax
 004901A3    pop         edx
 004901A4    pop         ecx
 004901A5    pop         ecx
 004901A6    mov         dword ptr fs:[eax],edx
 004901A9    push        4901BE
 004901AE    lea         eax,[ebp-0C]
 004901B1    call        @LStrClr
 004901B6    ret
>004901B7    jmp         @HandleFinally
>004901BC    jmp         004901AE
 004901BE    mov         eax,dword ptr [ebp-10]
 004901C1    mov         esp,ebp
 004901C3    pop         ebp
 004901C4    ret
end;*}

//004901E0
{*function sub_004901E0(?:?):?;
begin
 004901E0    push        ebp
 004901E1    mov         ebp,esp
 004901E3    push        ecx
 004901E4    cmp         byte ptr ds:[55DBA0],0;gvar_0055DBA0
>004901EB    jne         00490213
 004901ED    mov         ecx,490270;'GetSystemMetrics'
 004901F2    mov         edx,dword ptr ds:[55DB78];gvar_0055DB78
 004901F8    xor         eax,eax
 004901FA    call        004900E0
 004901FF    mov         [0055DB78],eax;gvar_0055DB78
 00490204    mov         eax,dword ptr [ebp+8]
 00490207    push        eax
 00490208    call        dword ptr ds:[55DB78]
 0049020E    mov         dword ptr [ebp-4],eax
>00490211    jmp         00490260
 00490213    mov         dword ptr [ebp-4],0FFFFFFFF
 0049021A    mov         eax,dword ptr [ebp+8]
 0049021D    add         eax,0FFFFFFB4
 00490220    sub         eax,2
>00490223    jb          00490239
>00490225    je          00490240
 00490227    dec         eax
>00490228    je          00490247
 0049022A    dec         eax
 0049022B    sub         eax,2
>0049022E    jae         0049024E
 00490230    mov         dword ptr [ebp-4],1
>00490237    jmp         0049024E
 00490239    xor         eax,eax
 0049023B    mov         dword ptr [ebp-4],eax
>0049023E    jmp         0049024E
 00490240    xor         eax,eax
 00490242    mov         dword ptr [ebp+8],eax
>00490245    jmp         0049024E
 00490247    mov         dword ptr [ebp+8],1
 0049024E    cmp         dword ptr [ebp-4],0FFFFFFFF
>00490252    jne         00490260
 00490254    mov         eax,dword ptr [ebp+8]
 00490257    push        eax
 00490258    call        user32.GetSystemMetrics
 0049025D    mov         dword ptr [ebp-4],eax
 00490260    mov         eax,dword ptr [ebp-4]
 00490263    pop         ecx
 00490264    pop         ebp
 00490265    ret         4
end;*}

//00490284
{*function sub_00490284(?:?; ?:?):?;
begin
 00490284    push        ebp
 00490285    mov         ebp,esp
 00490287    push        ecx
 00490288    cmp         byte ptr ds:[55DBA2],0;gvar_0055DBA2
>0049028F    jne         004902BB
 00490291    mov         ecx,490314;'MonitorFromRect'
 00490296    mov         edx,dword ptr ds:[55DB80];gvar_0055DB80
 0049029C    mov         al,2
 0049029E    call        004900E0
 004902A3    mov         [0055DB80],eax;gvar_0055DB80
 004902A8    mov         eax,dword ptr [ebp+0C]
 004902AB    push        eax
 004902AC    mov         eax,dword ptr [ebp+8]
 004902AF    push        eax
 004902B0    call        dword ptr ds:[55DB80]
 004902B6    mov         dword ptr [ebp-4],eax
>004902B9    jmp         00490302
 004902BB    xor         eax,eax
 004902BD    mov         dword ptr [ebp-4],eax
 004902C0    mov         eax,dword ptr [ebp+0C]
 004902C3    and         eax,3
 004902C6    test        al,al
>004902C8    jne         004902FB
 004902CA    mov         eax,dword ptr [ebp+8]
 004902CD    cmp         dword ptr [eax+8],0
>004902D1    jle         00490302
 004902D3    mov         eax,dword ptr [ebp+8]
 004902D6    cmp         dword ptr [eax+0C],0
>004902DA    jle         00490302
 004902DC    push        0
 004902DE    call        dword ptr ds:[55DB78]
 004902E4    mov         edx,dword ptr [ebp+8]
 004902E7    cmp         eax,dword ptr [edx]
>004902E9    jle         00490302
 004902EB    push        1
 004902ED    call        dword ptr ds:[55DB78]
 004902F3    mov         edx,dword ptr [ebp+8]
 004902F6    cmp         eax,dword ptr [edx+4]
>004902F9    jle         00490302
 004902FB    mov         dword ptr [ebp-4],12340042
 00490302    mov         eax,dword ptr [ebp-4]
 00490305    pop         ecx
 00490306    pop         ebp
 00490307    ret         8
end;*}

//00490324
{*function sub_00490324(?:?; ?:?):?;
begin
 00490324    push        ebp
 00490325    mov         ebp,esp
 00490327    add         esp,0FFFFFFD0
 0049032A    cmp         byte ptr ds:[55DBA1],0;gvar_0055DBA1
>00490331    jne         0049035D
 00490333    mov         ecx,4903BC;'MonitorFromWindow'
 00490338    mov         edx,dword ptr ds:[55DB7C];gvar_0055DB7C
 0049033E    mov         al,1
 00490340    call        004900E0
 00490345    mov         [0055DB7C],eax;gvar_0055DB7C
 0049034A    mov         eax,dword ptr [ebp+0C]
 0049034D    push        eax
 0049034E    mov         eax,dword ptr [ebp+8]
 00490351    push        eax
 00490352    call        dword ptr ds:[55DB7C]
 00490358    mov         dword ptr [ebp-4],eax
>0049035B    jmp         004903A9
 0049035D    mov         eax,dword ptr [ebp+0C]
 00490360    and         eax,3
 00490363    test        al,al
>00490365    je          00490370
 00490367    mov         dword ptr [ebp-4],12340042
>0049036E    jmp         004903A9
 00490370    mov         eax,dword ptr [ebp+8]
 00490373    push        eax
 00490374    call        user32.IsIconic
 00490379    test        eax,eax
>0049037B    je          0049038C
 0049037D    lea         eax,[ebp-30]
 00490380    push        eax
 00490381    mov         eax,dword ptr [ebp+8]
 00490384    push        eax
 00490385    call        user32.GetWindowPlacement
>0049038A    jmp         00490399
 0049038C    lea         eax,[ebp-14]
 0049038F    push        eax
 00490390    mov         eax,dword ptr [ebp+8]
 00490393    push        eax
 00490394    call        user32.GetWindowRect
 00490399    mov         eax,dword ptr [ebp+0C]
 0049039C    push        eax
 0049039D    lea         eax,[ebp-14]
 004903A0    push        eax
 004903A1    call        00490284
 004903A6    mov         dword ptr [ebp-4],eax
 004903A9    mov         eax,dword ptr [ebp-4]
 004903AC    mov         esp,ebp
 004903AE    pop         ebp
 004903AF    ret         8
end;*}

//004903D0
{*function sub_004903D0(?:?; ?:?; ?:?):?;
begin
 004903D0    push        ebp
 004903D1    mov         ebp,esp
 004903D3    push        ecx
 004903D4    cmp         byte ptr ds:[55DBA3],0;gvar_0055DBA3
>004903DB    jne         00490409
 004903DD    mov         ecx,490458;'MonitorFromPoint'
 004903E2    mov         edx,dword ptr ds:[55DB84];gvar_0055DB84
 004903E8    mov         al,3
 004903EA    call        004900E0
 004903EF    mov         [0055DB84],eax;gvar_0055DB84
 004903F4    mov         eax,dword ptr [ebp+10]
 004903F7    push        eax
 004903F8    push        dword ptr [ebp+0C]
 004903FB    push        dword ptr [ebp+8]
 004903FE    call        dword ptr ds:[55DB84]
 00490404    mov         dword ptr [ebp-4],eax
>00490407    jmp         00490445
 00490409    xor         eax,eax
 0049040B    mov         dword ptr [ebp-4],eax
 0049040E    mov         eax,dword ptr [ebp+10]
 00490411    and         eax,3
 00490414    test        al,al
>00490416    jne         0049043E
 00490418    cmp         dword ptr [ebp+8],0
>0049041C    jl          00490445
 0049041E    push        0
 00490420    call        dword ptr ds:[55DB78]
 00490426    cmp         eax,dword ptr [ebp+8]
>00490429    jle         00490445
 0049042B    cmp         dword ptr [ebp+0C],0
>0049042F    jl          00490445
 00490431    push        1
 00490433    call        dword ptr ds:[55DB78]
 00490439    cmp         eax,dword ptr [ebp+0C]
>0049043C    jle         00490445
 0049043E    mov         dword ptr [ebp-4],12340042
 00490445    mov         eax,dword ptr [ebp-4]
 00490448    pop         ecx
 00490449    pop         ebp
 0049044A    ret         0C
end;*}

//0049046C
{*function sub_0049046C(?:?; ?:?):?;
begin
 0049046C    push        ebp
 0049046D    mov         ebp,esp
 0049046F    add         esp,0FFFFFFEC
 00490472    push        esi
 00490473    push        edi
 00490474    cmp         byte ptr ds:[55DBA4],0;gvar_0055DBA4
>0049047B    jne         004904AA
 0049047D    mov         ecx,490550;'GetMonitorInfo'
 00490482    mov         edx,dword ptr ds:[55DB88];gvar_0055DB88
 00490488    mov         al,4
 0049048A    call        004900E0
 0049048F    mov         [0055DB88],eax;gvar_0055DB88
 00490494    mov         eax,dword ptr [ebp+0C]
 00490497    push        eax
 00490498    mov         eax,dword ptr [ebp+8]
 0049049B    push        eax
 0049049C    call        dword ptr ds:[55DB88]
 004904A2    mov         byte ptr [ebp-1],al
>004904A5    jmp         0049053C
 004904AA    mov         byte ptr [ebp-1],0
 004904AE    cmp         dword ptr [ebp+8],12340042
>004904B5    jne         0049053C
 004904BB    cmp         dword ptr [ebp+0C],0
>004904BF    je          0049053C
 004904C1    mov         eax,dword ptr [ebp+0C]
 004904C4    cmp         dword ptr [eax],28
>004904C7    jb          0049053C
 004904C9    push        0
 004904CB    lea         eax,[ebp-11]
 004904CE    push        eax
 004904CF    push        0
 004904D1    push        30
 004904D3    call        user32.SystemParametersInfoA
 004904D8    test        eax,eax
>004904DA    je          0049053C
 004904DC    mov         eax,dword ptr [ebp+0C]
 004904DF    xor         edx,edx
 004904E1    mov         dword ptr [eax+4],edx
 004904E4    mov         eax,dword ptr [ebp+0C]
 004904E7    xor         edx,edx
 004904E9    mov         dword ptr [eax+8],edx
 004904EC    push        0
 004904EE    call        dword ptr ds:[55DB78]
 004904F4    mov         edx,dword ptr [ebp+0C]
 004904F7    mov         dword ptr [edx+0C],eax
 004904FA    push        1
 004904FC    call        dword ptr ds:[55DB78]
 00490502    mov         edx,dword ptr [ebp+0C]
 00490505    mov         dword ptr [edx+10],eax
 00490508    mov         eax,dword ptr [ebp+0C]
 0049050B    lea         esi,[ebp-11]
 0049050E    lea         edi,[eax+14]
 00490511    movs        dword ptr [edi],dword ptr [esi]
 00490512    movs        dword ptr [edi],dword ptr [esi]
 00490513    movs        dword ptr [edi],dword ptr [esi]
 00490514    movs        dword ptr [edi],dword ptr [esi]
 00490515    mov         eax,dword ptr [ebp+0C]
 00490518    mov         dword ptr [eax+24],1
 0049051F    mov         eax,dword ptr [ebp+0C]
 00490522    cmp         dword ptr [eax],4C
>00490525    jb          00490538
 00490527    push        490560;'DISPLAY'
 0049052C    mov         eax,dword ptr [ebp+0C]
 0049052F    add         eax,28
 00490532    push        eax
 00490533    call        kernel32.lstrcpyA
 00490538    mov         byte ptr [ebp-1],1
 0049053C    mov         al,byte ptr [ebp-1]
 0049053F    pop         edi
 00490540    pop         esi
 00490541    mov         esp,ebp
 00490543    pop         ebp
 00490544    ret         8
end;*}

//00490568
{*function sub_00490568(?:?; ?:?):?;
begin
 00490568    push        ebp
 00490569    mov         ebp,esp
 0049056B    add         esp,0FFFFFFEC
 0049056E    push        esi
 0049056F    push        edi
 00490570    cmp         byte ptr ds:[55DBA5],0;gvar_0055DBA5
>00490577    jne         004905A6
 00490579    mov         ecx,49064C;'GetMonitorInfoA'
 0049057E    mov         edx,dword ptr ds:[55DB8C];gvar_0055DB8C
 00490584    mov         al,5
 00490586    call        004900E0
 0049058B    mov         [0055DB8C],eax;gvar_0055DB8C
 00490590    mov         eax,dword ptr [ebp+0C]
 00490593    push        eax
 00490594    mov         eax,dword ptr [ebp+8]
 00490597    push        eax
 00490598    call        dword ptr ds:[55DB8C]
 0049059E    mov         byte ptr [ebp-1],al
>004905A1    jmp         00490638
 004905A6    mov         byte ptr [ebp-1],0
 004905AA    cmp         dword ptr [ebp+8],12340042
>004905B1    jne         00490638
 004905B7    cmp         dword ptr [ebp+0C],0
>004905BB    je          00490638
 004905BD    mov         eax,dword ptr [ebp+0C]
 004905C0    cmp         dword ptr [eax],28
>004905C3    jb          00490638
 004905C5    push        0
 004905C7    lea         eax,[ebp-11]
 004905CA    push        eax
 004905CB    push        0
 004905CD    push        30
 004905CF    call        user32.SystemParametersInfoA
 004905D4    test        eax,eax
>004905D6    je          00490638
 004905D8    mov         eax,dword ptr [ebp+0C]
 004905DB    xor         edx,edx
 004905DD    mov         dword ptr [eax+4],edx
 004905E0    mov         eax,dword ptr [ebp+0C]
 004905E3    xor         edx,edx
 004905E5    mov         dword ptr [eax+8],edx
 004905E8    push        0
 004905EA    call        dword ptr ds:[55DB78]
 004905F0    mov         edx,dword ptr [ebp+0C]
 004905F3    mov         dword ptr [edx+0C],eax
 004905F6    push        1
 004905F8    call        dword ptr ds:[55DB78]
 004905FE    mov         edx,dword ptr [ebp+0C]
 00490601    mov         dword ptr [edx+10],eax
 00490604    mov         eax,dword ptr [ebp+0C]
 00490607    lea         esi,[ebp-11]
 0049060A    lea         edi,[eax+14]
 0049060D    movs        dword ptr [edi],dword ptr [esi]
 0049060E    movs        dword ptr [edi],dword ptr [esi]
 0049060F    movs        dword ptr [edi],dword ptr [esi]
 00490610    movs        dword ptr [edi],dword ptr [esi]
 00490611    mov         eax,dword ptr [ebp+0C]
 00490614    mov         dword ptr [eax+24],1
 0049061B    mov         eax,dword ptr [ebp+0C]
 0049061E    cmp         dword ptr [eax],4C
>00490621    jb          00490634
 00490623    push        49065C;'DISPLAY'
 00490628    mov         eax,dword ptr [ebp+0C]
 0049062B    add         eax,28
 0049062E    push        eax
 0049062F    call        kernel32.lstrcpyA
 00490634    mov         byte ptr [ebp-1],1
 00490638    mov         al,byte ptr [ebp-1]
 0049063B    pop         edi
 0049063C    pop         esi
 0049063D    mov         esp,ebp
 0049063F    pop         ebp
 00490640    ret         8
end;*}

//00490664
{*function sub_00490664(?:?; ?:?):?;
begin
 00490664    push        ebp
 00490665    mov         ebp,esp
 00490667    add         esp,0FFFFFFEC
 0049066A    push        esi
 0049066B    push        edi
 0049066C    cmp         byte ptr ds:[55DBA6],0;gvar_0055DBA6
>00490673    jne         004906A2
 00490675    mov         ecx,490748;'GetMonitorInfoW'
 0049067A    mov         edx,dword ptr ds:[55DB90];gvar_0055DB90
 00490680    mov         al,6
 00490682    call        004900E0
 00490687    mov         [0055DB90],eax;gvar_0055DB90
 0049068C    mov         eax,dword ptr [ebp+0C]
 0049068F    push        eax
 00490690    mov         eax,dword ptr [ebp+8]
 00490693    push        eax
 00490694    call        dword ptr ds:[55DB90]
 0049069A    mov         byte ptr [ebp-1],al
>0049069D    jmp         00490734
 004906A2    mov         byte ptr [ebp-1],0
 004906A6    cmp         dword ptr [ebp+8],12340042
>004906AD    jne         00490734
 004906B3    cmp         dword ptr [ebp+0C],0
>004906B7    je          00490734
 004906B9    mov         eax,dword ptr [ebp+0C]
 004906BC    cmp         dword ptr [eax],28
>004906BF    jb          00490734
 004906C1    push        0
 004906C3    lea         eax,[ebp-11]
 004906C6    push        eax
 004906C7    push        0
 004906C9    push        30
 004906CB    call        user32.SystemParametersInfoA
 004906D0    test        eax,eax
>004906D2    je          00490734
 004906D4    mov         eax,dword ptr [ebp+0C]
 004906D7    xor         edx,edx
 004906D9    mov         dword ptr [eax+4],edx
 004906DC    mov         eax,dword ptr [ebp+0C]
 004906DF    xor         edx,edx
 004906E1    mov         dword ptr [eax+8],edx
 004906E4    push        0
 004906E6    call        dword ptr ds:[55DB78]
 004906EC    mov         edx,dword ptr [ebp+0C]
 004906EF    mov         dword ptr [edx+0C],eax
 004906F2    push        1
 004906F4    call        dword ptr ds:[55DB78]
 004906FA    mov         edx,dword ptr [ebp+0C]
 004906FD    mov         dword ptr [edx+10],eax
 00490700    mov         eax,dword ptr [ebp+0C]
 00490703    lea         esi,[ebp-11]
 00490706    lea         edi,[eax+14]
 00490709    movs        dword ptr [edi],dword ptr [esi]
 0049070A    movs        dword ptr [edi],dword ptr [esi]
 0049070B    movs        dword ptr [edi],dword ptr [esi]
 0049070C    movs        dword ptr [edi],dword ptr [esi]
 0049070D    mov         eax,dword ptr [ebp+0C]
 00490710    mov         dword ptr [eax+24],1
 00490717    mov         eax,dword ptr [ebp+0C]
 0049071A    cmp         dword ptr [eax],4C
>0049071D    jb          00490730
 0049071F    push        490758;'DISPLAY'
 00490724    mov         eax,dword ptr [ebp+0C]
 00490727    add         eax,28
 0049072A    push        eax
 0049072B    call        kernel32.lstrcpyA
 00490730    mov         byte ptr [ebp-1],1
 00490734    mov         al,byte ptr [ebp-1]
 00490737    pop         edi
 00490738    pop         esi
 00490739    mov         esp,ebp
 0049073B    pop         ebp
 0049073C    ret         8
end;*}

//00490760
{*function sub_00490760(?:?; ?:?; ?:?; ?:?):?;
begin
 00490760    push        ebp
 00490761    mov         ebp,esp
 00490763    add         esp,0FFFFFFD0
 00490766    cmp         byte ptr ds:[55DBA7],0;gvar_0055DBA7
>0049076D    jne         004907A4
 0049076F    mov         ecx,490898;'EnumDisplayMonitors'
 00490774    mov         edx,dword ptr ds:[55DB94];gvar_0055DB94
 0049077A    mov         al,7
 0049077C    call        004900E0
 00490781    mov         [0055DB94],eax;gvar_0055DB94
 00490786    mov         eax,dword ptr [ebp+14]
 00490789    push        eax
 0049078A    mov         eax,dword ptr [ebp+10]
 0049078D    push        eax
 0049078E    mov         eax,dword ptr [ebp+0C]
 00490791    push        eax
 00490792    mov         eax,dword ptr [ebp+8]
 00490795    push        eax
 00490796    call        dword ptr ds:[55DB94]
 0049079C    mov         byte ptr [ebp-1],al
>0049079F    jmp         00490886
 004907A4    mov         byte ptr [ebp-1],0
 004907A8    cmp         dword ptr [ebp+10],0
>004907AC    je          00490886
 004907B2    xor         eax,eax
 004907B4    mov         dword ptr [ebp-20],eax
 004907B7    xor         eax,eax
 004907B9    mov         dword ptr [ebp-1C],eax
 004907BC    push        0
 004907BE    call        dword ptr ds:[55DB78]
 004907C4    mov         dword ptr [ebp-18],eax
 004907C7    push        1
 004907C9    call        dword ptr ds:[55DB78]
 004907CF    mov         dword ptr [ebp-14],eax
 004907D2    cmp         dword ptr [ebp+8],0
>004907D6    je          0049084E
 004907D8    lea         eax,[ebp-30]
 004907DB    push        eax
 004907DC    mov         eax,dword ptr [ebp+8]
 004907DF    push        eax
 004907E0    call        gdi32.GetClipBox
 004907E5    mov         dword ptr [ebp-10],eax
 004907E8    lea         eax,[ebp-9]
 004907EB    push        eax
 004907EC    mov         eax,dword ptr [ebp+8]
 004907EF    push        eax
 004907F0    call        gdi32.GetDCOrgEx
 004907F5    test        eax,eax
>004907F7    je          00490886
 004907FD    mov         eax,dword ptr [ebp-5]
 00490800    neg         eax
 00490802    push        eax
 00490803    mov         eax,dword ptr [ebp-9]
 00490806    neg         eax
 00490808    push        eax
 00490809    lea         eax,[ebp-20]
 0049080C    push        eax
 0049080D    call        user32.OffsetRect
 00490812    lea         eax,[ebp-30]
 00490815    push        eax
 00490816    lea         eax,[ebp-20]
 00490819    push        eax
 0049081A    lea         eax,[ebp-20]
 0049081D    push        eax
 0049081E    call        user32.IntersectRect
 00490823    test        eax,eax
>00490825    je          0049082D
 00490827    cmp         dword ptr [ebp+0C],0
>0049082B    je          0049086F
 0049082D    mov         eax,dword ptr [ebp+0C]
 00490830    push        eax
 00490831    lea         eax,[ebp-20]
 00490834    push        eax
 00490835    lea         eax,[ebp-20]
 00490838    push        eax
 00490839    call        user32.IntersectRect
 0049083E    test        eax,eax
>00490840    jne         0049086F
 00490842    cmp         dword ptr [ebp-10],1
>00490846    jne         00490886
 00490848    mov         byte ptr [ebp-1],1
>0049084C    jmp         00490886
 0049084E    cmp         dword ptr [ebp+0C],0
>00490852    je          0049086F
 00490854    mov         eax,dword ptr [ebp+0C]
 00490857    push        eax
 00490858    lea         eax,[ebp-20]
 0049085B    push        eax
 0049085C    lea         eax,[ebp-20]
 0049085F    push        eax
 00490860    call        user32.IntersectRect
 00490865    test        eax,eax
>00490867    jne         0049086F
 00490869    mov         byte ptr [ebp-1],1
>0049086D    jmp         00490886
 0049086F    mov         eax,dword ptr [ebp+14]
 00490872    push        eax
 00490873    lea         eax,[ebp-20]
 00490876    push        eax
 00490877    mov         eax,dword ptr [ebp+8]
 0049087A    push        eax
 0049087B    push        12340042
 00490880    call        dword ptr [ebp+10]
 00490883    mov         byte ptr [ebp-1],al
 00490886    mov         al,byte ptr [ebp-1]
 00490889    mov         esp,ebp
 0049088B    pop         ebp
 0049088C    ret         10
end;*}

//004908AC
procedure sub_004908AC;
begin
{*
 004908AC    push        ebp
 004908AD    mov         ebp,esp
 004908AF    push        490910;'USER32.DLL'
 004908B4    call        kernel32.GetModuleHandleA
 004908B9    mov         [0055DB9C],eax;gvar_0055DB9C:HMODULE
 004908BE    mov         dword ptr ds:[55DB78],4901E0
 004908C8    mov         dword ptr ds:[55DB7C],490324
 004908D2    mov         dword ptr ds:[55DB80],490284
 004908DC    mov         dword ptr ds:[55DB84],4903D0
 004908E6    mov         dword ptr ds:[55DB88],49046C
 004908F0    mov         dword ptr ds:[55DB8C],490568
 004908FA    mov         dword ptr ds:[55DB90],490664
 00490904    mov         dword ptr ds:[55DB94],490760
 0049090E    pop         ebp
 0049090F    ret
*}
end;

Initialization
//0049094C
{*
 0049094C    push        ebp
 0049094D    mov         ebp,esp
 0049094F    sub         dword ptr ds:[55DB98],1
>00490956    jae         0049095D
 00490958    call        004908AC
 0049095D    pop         ebp
 0049095E    ret
*}
Finalization
end.