//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit85;

interface

uses
  SysUtils, Classes;

type
  TMonster = TMonster = record//size=58
f28:String;//f28
f2C:String;//f2C
end;;
  TPlayer = TPlayer = record//size=90
f4:String;//f4
f40:String;//f40
f44:String;//f44
end;;
  TPartyMember = TPartyMember = record//size=38
f4:String;//f4
end;;
  TCharPIDs = array of ?;
//elSize = 4
//varType equivalent: varInteger;
    //procedure sub_0051F290(?:?; ?:?; ?:?);//0051F290
    //function sub_0051F338(?:?):?;//0051F338
    //function sub_0051F368(?:?):?;//0051F368
    //function sub_0051F398(?:?):?;//0051F398
    //function sub_0051F3CC(?:?):?;//0051F3CC
    //function sub_0051F3FC(?:?):?;//0051F3FC
    //procedure sub_0051F434(?:?; ?:?);//0051F434
    //procedure sub_0051F4D0(?:?; ?:?);//0051F4D0
    //procedure sub_0051F4F8(?:?; ?:?);//0051F4F8
    //procedure sub_0051F524(?:?; ?:?);//0051F524
    //procedure sub_0051F54C(?:?; ?:?);//0051F54C
    //procedure sub_0051F574(?:?; ?:?);//0051F574
    //procedure sub_0051F5E4(?:?; ?:?);//0051F5E4
    //function sub_0051F5FC(?:?; ?:?):?;//0051F5FC
    //function sub_0051F64C(?:?; ?:TSinglePlace):?;//0051F64C

implementation

//0051F290
{*procedure sub_0051F290(?:?; ?:?; ?:?);
begin
 0051F290    push        ebp
 0051F291    mov         ebp,esp
 0051F293    add         esp,0FFFFFFE8
 0051F296    push        ebx
 0051F297    xor         ebx,ebx
 0051F299    mov         dword ptr [ebp-18],ebx
 0051F29C    mov         dword ptr [ebp-0C],ecx
 0051F29F    mov         dword ptr [ebp-8],edx
 0051F2A2    mov         dword ptr [ebp-4],eax
 0051F2A5    xor         eax,eax
 0051F2A7    push        ebp
 0051F2A8    push        51F31D
 0051F2AD    push        dword ptr fs:[eax]
 0051F2B0    mov         dword ptr fs:[eax],esp
 0051F2B3    mov         eax,dword ptr [ebp-0C]
 0051F2B6    call        @LStrClr
 0051F2BB    mov         eax,dword ptr [ebp-8]
 0051F2BE    dec         eax
 0051F2BF    test        eax,eax
>0051F2C1    jl          0051F307
 0051F2C3    inc         eax
 0051F2C4    mov         dword ptr [ebp-14],eax
 0051F2C7    mov         dword ptr [ebp-10],0
 0051F2CE    mov         eax,dword ptr [ebp-0C]
 0051F2D1    push        dword ptr [eax]
 0051F2D3    mov         eax,dword ptr [ebp-4]
 0051F2D6    mov         edx,dword ptr [ebp-10]
 0051F2D9    movzx       eax,byte ptr [eax+edx]
 0051F2DD    lea         ecx,[ebp-18]
 0051F2E0    mov         edx,2
 0051F2E5    call        IntToHex
 0051F2EA    push        dword ptr [ebp-18]
 0051F2ED    push        51F334;' '
 0051F2F2    mov         eax,dword ptr [ebp-0C]
 0051F2F5    mov         edx,3
 0051F2FA    call        @LStrCatN
 0051F2FF    inc         dword ptr [ebp-10]
 0051F302    dec         dword ptr [ebp-14]
>0051F305    jne         0051F2CE
 0051F307    xor         eax,eax
 0051F309    pop         edx
 0051F30A    pop         ecx
 0051F30B    pop         ecx
 0051F30C    mov         dword ptr fs:[eax],edx
 0051F30F    push        51F324
 0051F314    lea         eax,[ebp-18]
 0051F317    call        @LStrClr
 0051F31C    ret
>0051F31D    jmp         @HandleFinally
>0051F322    jmp         0051F314
 0051F324    pop         ebx
 0051F325    mov         esp,ebp
 0051F327    pop         ebp
 0051F328    ret
end;*}

//0051F338
{*function sub_0051F338(?:?):?;
begin
 0051F338    push        ebp
 0051F339    mov         ebp,esp
 0051F33B    add         esp,0FFFFFFF8
 0051F33E    mov         dword ptr [ebp-4],eax
 0051F341    mov         edx,dword ptr [ebp-4]
 0051F344    mov         edx,dword ptr [edx]
 0051F346    lea         eax,[ebp-6]
 0051F349    mov         ecx,1
 0051F34E    call        0040810C
 0051F353    mov         eax,dword ptr [ebp-4]
 0051F356    inc         dword ptr [eax]
 0051F358    mov         al,byte ptr [ebp-6]
 0051F35B    mov         byte ptr [ebp-5],al
 0051F35E    mov         al,byte ptr [ebp-5]
 0051F361    pop         ecx
 0051F362    pop         ecx
 0051F363    pop         ebp
 0051F364    ret
end;*}

//0051F368
{*function sub_0051F368(?:?):?;
begin
 0051F368    push        ebp
 0051F369    mov         ebp,esp
 0051F36B    add         esp,0FFFFFFF8
 0051F36E    mov         dword ptr [ebp-4],eax
 0051F371    mov         edx,dword ptr [ebp-4]
 0051F374    mov         edx,dword ptr [edx]
 0051F376    lea         eax,[ebp-6]
 0051F379    mov         ecx,1
 0051F37E    call        0040810C
 0051F383    mov         eax,dword ptr [ebp-4]
 0051F386    inc         dword ptr [eax]
 0051F388    mov         al,byte ptr [ebp-6]
 0051F38B    mov         byte ptr [ebp-5],al
 0051F38E    mov         al,byte ptr [ebp-5]
 0051F391    pop         ecx
 0051F392    pop         ecx
 0051F393    pop         ebp
 0051F394    ret
end;*}

//0051F398
{*function sub_0051F398(?:?):?;
begin
 0051F398    push        ebp
 0051F399    mov         ebp,esp
 0051F39B    add         esp,0FFFFFFF8
 0051F39E    mov         dword ptr [ebp-4],eax
 0051F3A1    mov         edx,dword ptr [ebp-4]
 0051F3A4    mov         edx,dword ptr [edx]
 0051F3A6    lea         eax,[ebp-8]
 0051F3A9    mov         ecx,2
 0051F3AE    call        0040810C
 0051F3B3    mov         eax,dword ptr [ebp-4]
 0051F3B6    add         dword ptr [eax],2
 0051F3B9    mov         ax,word ptr [ebp-8]
 0051F3BD    mov         word ptr [ebp-6],ax
 0051F3C1    mov         ax,word ptr [ebp-6]
 0051F3C5    pop         ecx
 0051F3C6    pop         ecx
 0051F3C7    pop         ebp
 0051F3C8    ret
end;*}

//0051F3CC
{*function sub_0051F3CC(?:?):?;
begin
 0051F3CC    push        ebp
 0051F3CD    mov         ebp,esp
 0051F3CF    add         esp,0FFFFFFF4
 0051F3D2    mov         dword ptr [ebp-4],eax
 0051F3D5    mov         edx,dword ptr [ebp-4]
 0051F3D8    mov         edx,dword ptr [edx]
 0051F3DA    lea         eax,[ebp-0C]
 0051F3DD    mov         ecx,4
 0051F3E2    call        0040810C
 0051F3E7    mov         eax,dword ptr [ebp-4]
 0051F3EA    add         dword ptr [eax],4
 0051F3ED    mov         eax,dword ptr [ebp-0C]
 0051F3F0    mov         dword ptr [ebp-8],eax
 0051F3F3    mov         eax,dword ptr [ebp-8]
 0051F3F6    mov         esp,ebp
 0051F3F8    pop         ebp
 0051F3F9    ret
end;*}

//0051F3FC
{*function sub_0051F3FC(?:?):?;
begin
 0051F3FC    push        ebp
 0051F3FD    mov         ebp,esp
 0051F3FF    add         esp,0FFFFFFE8
 0051F402    mov         dword ptr [ebp-4],eax
 0051F405    mov         edx,dword ptr [ebp-4]
 0051F408    mov         edx,dword ptr [edx]
 0051F40A    lea         eax,[ebp-18]
 0051F40D    mov         ecx,8
 0051F412    call        0040810C
 0051F417    mov         eax,dword ptr [ebp-4]
 0051F41A    add         dword ptr [eax],8
 0051F41D    mov         eax,dword ptr [ebp-18]
 0051F420    mov         dword ptr [ebp-10],eax
 0051F423    mov         eax,dword ptr [ebp-14]
 0051F426    mov         dword ptr [ebp-0C],eax
 0051F429    mov         eax,dword ptr [ebp-10]
 0051F42C    mov         edx,dword ptr [ebp-0C]
 0051F42F    mov         esp,ebp
 0051F431    pop         ebp
 0051F432    ret
end;*}

//0051F434
{*procedure sub_0051F434(?:?; ?:?);
begin
 0051F434    push        ebp
 0051F435    mov         ebp,esp
 0051F437    add         esp,0FFFFFFEC
 0051F43A    xor         ecx,ecx
 0051F43C    mov         dword ptr [ebp-14],ecx
 0051F43F    mov         dword ptr [ebp-0C],ecx
 0051F442    mov         dword ptr [ebp-8],edx
 0051F445    mov         dword ptr [ebp-4],eax
 0051F448    xor         eax,eax
 0051F44A    push        ebp
 0051F44B    push        51F4C3
 0051F450    push        dword ptr fs:[eax]
 0051F453    mov         dword ptr fs:[eax],esp
 0051F456    mov         eax,dword ptr [ebp-4]
 0051F459    mov         eax,dword ptr [eax]
 0051F45B    cmp         byte ptr [eax],0
>0051F45E    jne         0051F467
 0051F460    mov         eax,dword ptr [ebp-4]
 0051F463    inc         dword ptr [eax]
>0051F465    jmp         0051F4A5
 0051F467    lea         eax,[ebp-14]
 0051F46A    mov         edx,dword ptr [ebp-4]
 0051F46D    mov         edx,dword ptr [edx]
 0051F46F    call        @LStrFromPChar
 0051F474    mov         eax,dword ptr [ebp-14]
 0051F477    call        @DynArrayLength
 0051F47C    mov         dword ptr [ebp-10],eax
 0051F47F    lea         eax,[ebp-0C]
 0051F482    mov         edx,dword ptr [ebp-4]
 0051F485    mov         edx,dword ptr [edx]
 0051F487    call        @LStrFromPChar
 0051F48C    mov         eax,dword ptr [ebp-4]
 0051F48F    mov         eax,dword ptr [eax]
 0051F491    add         eax,dword ptr [ebp-10]
 0051F494    inc         eax
 0051F495    mov         edx,dword ptr [ebp-4]
 0051F498    mov         dword ptr [edx],eax
 0051F49A    mov         eax,dword ptr [ebp-8]
 0051F49D    mov         edx,dword ptr [ebp-0C]
 0051F4A0    call        @LStrAsg
 0051F4A5    xor         eax,eax
 0051F4A7    pop         edx
 0051F4A8    pop         ecx
 0051F4A9    pop         ecx
 0051F4AA    mov         dword ptr fs:[eax],edx
 0051F4AD    push        51F4CA
 0051F4B2    lea         eax,[ebp-14]
 0051F4B5    call        @LStrClr
 0051F4BA    lea         eax,[ebp-0C]
 0051F4BD    call        @LStrClr
 0051F4C2    ret
>0051F4C3    jmp         @HandleFinally
>0051F4C8    jmp         0051F4B2
 0051F4CA    mov         esp,ebp
 0051F4CC    pop         ebp
 0051F4CD    ret
end;*}

//0051F4D0
{*procedure sub_0051F4D0(?:?; ?:?);
begin
 0051F4D0    push        ebp
 0051F4D1    mov         ebp,esp
 0051F4D3    add         esp,0FFFFFFF8
 0051F4D6    mov         byte ptr [ebp-5],dl
 0051F4D9    mov         dword ptr [ebp-4],eax
 0051F4DC    lea         edx,[ebp-5]
 0051F4DF    mov         eax,dword ptr [ebp-4]
 0051F4E2    mov         eax,dword ptr [eax]
 0051F4E4    mov         ecx,1
 0051F4E9    call        0040810C
 0051F4EE    mov         eax,dword ptr [ebp-4]
 0051F4F1    inc         dword ptr [eax]
 0051F4F3    pop         ecx
 0051F4F4    pop         ecx
 0051F4F5    pop         ebp
 0051F4F6    ret
end;*}

//0051F4F8
{*procedure sub_0051F4F8(?:?; ?:?);
begin
 0051F4F8    push        ebp
 0051F4F9    mov         ebp,esp
 0051F4FB    add         esp,0FFFFFFF8
 0051F4FE    mov         word ptr [ebp-6],dx
 0051F502    mov         dword ptr [ebp-4],eax
 0051F505    lea         edx,[ebp-6]
 0051F508    mov         eax,dword ptr [ebp-4]
 0051F50B    mov         eax,dword ptr [eax]
 0051F50D    mov         ecx,2
 0051F512    call        0040810C
 0051F517    mov         eax,dword ptr [ebp-4]
 0051F51A    add         dword ptr [eax],2
 0051F51D    pop         ecx
 0051F51E    pop         ecx
 0051F51F    pop         ebp
 0051F520    ret
end;*}

//0051F524
{*procedure sub_0051F524(?:?; ?:?);
begin
 0051F524    push        ebp
 0051F525    mov         ebp,esp
 0051F527    add         esp,0FFFFFFF8
 0051F52A    mov         dword ptr [ebp-8],edx
 0051F52D    mov         dword ptr [ebp-4],eax
 0051F530    lea         edx,[ebp-8]
 0051F533    mov         eax,dword ptr [ebp-4]
 0051F536    mov         eax,dword ptr [eax]
 0051F538    mov         ecx,4
 0051F53D    call        0040810C
 0051F542    mov         eax,dword ptr [ebp-4]
 0051F545    add         dword ptr [eax],4
 0051F548    pop         ecx
 0051F549    pop         ecx
 0051F54A    pop         ebp
 0051F54B    ret
end;*}

//0051F54C
{*procedure sub_0051F54C(?:?; ?:?);
begin
 0051F54C    push        ebp
 0051F54D    mov         ebp,esp
 0051F54F    add         esp,0FFFFFFF8
 0051F552    mov         byte ptr [ebp-5],dl
 0051F555    mov         dword ptr [ebp-4],eax
 0051F558    lea         edx,[ebp-5]
 0051F55B    mov         eax,dword ptr [ebp-4]
 0051F55E    mov         eax,dword ptr [eax]
 0051F560    mov         ecx,1
 0051F565    call        0040810C
 0051F56A    mov         eax,dword ptr [ebp-4]
 0051F56D    inc         dword ptr [eax]
 0051F56F    pop         ecx
 0051F570    pop         ecx
 0051F571    pop         ebp
 0051F572    ret
end;*}

//0051F574
{*procedure sub_0051F574(?:?; ?:?);
begin
 0051F574    push        ebp
 0051F575    mov         ebp,esp
 0051F577    add         esp,0FFFFFFF8
 0051F57A    mov         dword ptr [ebp-8],edx
 0051F57D    mov         dword ptr [ebp-4],eax
 0051F580    mov         eax,dword ptr [ebp-8]
 0051F583    call        @LStrAddRef
 0051F588    xor         eax,eax
 0051F58A    push        ebp
 0051F58B    push        51F5D9
 0051F590    push        dword ptr fs:[eax]
 0051F593    mov         dword ptr fs:[eax],esp
 0051F596    mov         eax,dword ptr [ebp-8]
 0051F599    call        @DynArrayLength
 0051F59E    inc         eax
 0051F59F    push        eax
 0051F5A0    lea         eax,[ebp-8]
 0051F5A3    call        00404C34
 0051F5A8    mov         edx,eax
 0051F5AA    mov         eax,dword ptr [ebp-4]
 0051F5AD    mov         eax,dword ptr [eax]
 0051F5AF    pop         ecx
 0051F5B0    call        0040810C
 0051F5B5    mov         eax,dword ptr [ebp-8]
 0051F5B8    call        @DynArrayLength
 0051F5BD    inc         eax
 0051F5BE    mov         edx,dword ptr [ebp-4]
 0051F5C1    add         dword ptr [edx],eax
 0051F5C3    xor         eax,eax
 0051F5C5    pop         edx
 0051F5C6    pop         ecx
 0051F5C7    pop         ecx
 0051F5C8    mov         dword ptr fs:[eax],edx
 0051F5CB    push        51F5E0
 0051F5D0    lea         eax,[ebp-8]
 0051F5D3    call        @LStrClr
 0051F5D8    ret
>0051F5D9    jmp         @HandleFinally
>0051F5DE    jmp         0051F5D0
 0051F5E0    pop         ecx
 0051F5E1    pop         ecx
 0051F5E2    pop         ebp
 0051F5E3    ret
end;*}

//0051F5E4
{*procedure sub_0051F5E4(?:?; ?:?);
begin
 0051F5E4    push        ebp
 0051F5E5    mov         ebp,esp
 0051F5E7    add         esp,0FFFFFFF8
 0051F5EA    mov         dword ptr [ebp-8],edx
 0051F5ED    mov         dword ptr [ebp-4],eax
 0051F5F0    mov         eax,dword ptr [ebp-4]
 0051F5F3    mov         edx,dword ptr [ebp-8]
 0051F5F6    add         dword ptr [eax],edx
 0051F5F8    pop         ecx
 0051F5F9    pop         ecx
 0051F5FA    pop         ebp
 0051F5FB    ret
end;*}

//0051F5FC
{*function sub_0051F5FC(?:?; ?:?):?;
begin
 0051F5FC    push        ebp
 0051F5FD    mov         ebp,esp
 0051F5FF    add         esp,0FFFFFFC0
 0051F602    push        esi
 0051F603    push        edi
 0051F604    mov         esi,edx
 0051F606    lea         edi,[ebp-38]
 0051F609    movs        dword ptr [edi],dword ptr [esi]
 0051F60A    movs        dword ptr [edi],dword ptr [esi]
 0051F60B    movs        dword ptr [edi],dword ptr [esi]
 0051F60C    movs        dword ptr [edi],dword ptr [esi]
 0051F60D    mov         esi,eax
 0051F60F    lea         edi,[ebp-28]
 0051F612    movs        dword ptr [edi],dword ptr [esi]
 0051F613    movs        dword ptr [edi],dword ptr [esi]
 0051F614    movs        dword ptr [edi],dword ptr [esi]
 0051F615    movs        dword ptr [edi],dword ptr [esi]
 0051F616    mov         eax,dword ptr [ebp-24]
 0051F619    sub         eax,dword ptr [ebp-34]
 0051F61C    imul        eax
 0051F61E    mov         dword ptr [ebp-14],eax
 0051F621    mov         eax,dword ptr [ebp-20]
 0051F624    sub         eax,dword ptr [ebp-30]
 0051F627    imul        eax
 0051F629    mov         dword ptr [ebp-18],eax
 0051F62C    mov         eax,dword ptr [ebp-14]
 0051F62F    add         eax,dword ptr [ebp-18]
 0051F632    mov         dword ptr [ebp-40],eax
 0051F635    xor         eax,eax
 0051F637    mov         dword ptr [ebp-3C],eax
 0051F63A    fild        qword ptr [ebp-40]
 0051F63D    fsqrt
 0051F63F    fstp        tbyte ptr [ebp-10]
 0051F642    wait
 0051F643    fld         tbyte ptr [ebp-10]
 0051F646    pop         edi
 0051F647    pop         esi
 0051F648    mov         esp,ebp
 0051F64A    pop         ebp
 0051F64B    ret
end;*}

//0051F64C
{*function sub_0051F64C(?:?; ?:TSinglePlace):?;
begin
 0051F64C    push        ebp
 0051F64D    mov         ebp,esp
 0051F64F    add         esp,0FFFFFFBC
 0051F652    push        esi
 0051F653    push        edi
 0051F654    mov         esi,edx
 0051F656    lea         edi,[ebp-3C]
 0051F659    movs        dword ptr [edi],dword ptr [esi]
 0051F65A    movs        dword ptr [edi],dword ptr [esi]
 0051F65B    movs        dword ptr [edi],dword ptr [esi]
 0051F65C    movs        dword ptr [edi],dword ptr [esi]
 0051F65D    mov         esi,eax
 0051F65F    lea         edi,[ebp-2C]
 0051F662    movs        dword ptr [edi],dword ptr [esi]
 0051F663    movs        dword ptr [edi],dword ptr [esi]
 0051F664    movs        dword ptr [edi],dword ptr [esi]
 0051F665    movs        dword ptr [edi],dword ptr [esi]
 0051F666    mov         eax,dword ptr [ebp-28]
 0051F669    sub         eax,dword ptr [ebp-38]
 0051F66C    imul        eax
 0051F66E    mov         dword ptr [ebp-14],eax
 0051F671    mov         eax,dword ptr [ebp-24]
 0051F674    sub         eax,dword ptr [ebp-34]
 0051F677    imul        eax
 0051F679    mov         dword ptr [ebp-18],eax
 0051F67C    mov         eax,dword ptr [ebp-20]
 0051F67F    sub         eax,dword ptr [ebp-30]
 0051F682    imul        eax
 0051F684    mov         dword ptr [ebp-1C],eax
 0051F687    mov         eax,dword ptr [ebp-14]
 0051F68A    add         eax,dword ptr [ebp-18]
 0051F68D    add         eax,dword ptr [ebp-1C]
 0051F690    mov         dword ptr [ebp-44],eax
 0051F693    xor         eax,eax
 0051F695    mov         dword ptr [ebp-40],eax
 0051F698    fild        qword ptr [ebp-44]
 0051F69B    fsqrt
 0051F69D    fstp        tbyte ptr [ebp-10]
 0051F6A0    wait
 0051F6A1    fld         tbyte ptr [ebp-10]
 0051F6A4    pop         edi
 0051F6A5    pop         esi
 0051F6A6    mov         esp,ebp
 0051F6A8    pop         ebp
 0051F6A9    ret
end;*}

Initialization
Finalization
//0051F6AC
{*
 0051F6AC    push        ebp
 0051F6AD    mov         ebp,esp
 0051F6AF    xor         eax,eax
 0051F6B1    push        ebp
 0051F6B2    push        51F6FD
 0051F6B7    push        dword ptr fs:[eax]
 0051F6BA    mov         dword ptr fs:[eax],esp
 0051F6BD    inc         dword ptr ds:[55E060]
>0051F6C3    jne         0051F6EF
 0051F6C5    mov         eax,54E2CC;^'MSG_SHUTDOWN_MIN'
 0051F6CA    mov         ecx,0A2
 0051F6CF    mov         edx,dword ptr ds:[4010AC];String
 0051F6D5    call        @FinalizeArray
 0051F6DA    mov         eax,54E2BC;^'Knight'
 0051F6DF    mov         ecx,4
 0051F6E4    mov         edx,dword ptr ds:[4010AC];String
 0051F6EA    call        @FinalizeArray
 0051F6EF    xor         eax,eax
 0051F6F1    pop         edx
 0051F6F2    pop         ecx
 0051F6F3    pop         ecx
 0051F6F4    mov         dword ptr fs:[eax],edx
 0051F6F7    push        51F704
 0051F6FC    ret
>0051F6FD    jmp         @HandleFinally
>0051F702    jmp         0051F6FC
 0051F704    pop         ebp
 0051F705    ret
*}
end.