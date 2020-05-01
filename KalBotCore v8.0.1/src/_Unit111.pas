//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit111;

interface

uses
  SysUtils, Classes;

type
  TAutoSplash = class(TThread)
  public
    f44:dword;//f44
    f48:dword;//f48
    f50:Double;//f50
    f54:dword;//f54
    f58:dword;//f58
    f5C:byte;//f5C
    f5D:byte;//f5D
    f5E:byte;//f5E
    f60:dword;//f60
    f64:dword;//f64
    f70:Boolean;//f70
    f71:Boolean;//f71
    destructor Destroy; virtual;//00527CDC
    procedure Execute; virtual;//v4//00527D10
    //constructor Create(?:?; ?:?; ?:?);//00527C30
  end;
    destructor Destroy;//00527CDC
    procedure Execute;//00527D10
    procedure sub_00527D90(?:TAutoSplash);//00527D90
    //function sub_00527EFC(?:TAutoSplash; ?:?):?;//00527EFC
    procedure sub_00527F78(?:TAutoSplash);//00527F78
    //function sub_00527FAC(?:TAutoSplash):?;//00527FAC
    //function sub_005281F0(?:TAutoSplash):?;//005281F0
    //procedure sub_0052820C(?:TAutoSplash; ?:?);//0052820C

implementation

//00527C30
{*constructor TAutoSplash.Create(?:?; ?:?; ?:?);
begin
 00527C30    push        ebp
 00527C31    mov         ebp,esp
 00527C33    add         esp,0FFFFFFF4
 00527C36    test        dl,dl
>00527C38    je          00527C42
 00527C3A    add         esp,0FFFFFFF0
 00527C3D    call        @ClassCreate
 00527C42    mov         dword ptr [ebp-0C],ecx
 00527C45    mov         byte ptr [ebp-5],dl
 00527C48    mov         dword ptr [ebp-4],eax
 00527C4B    mov         cl,1
 00527C4D    xor         edx,edx
 00527C4F    mov         eax,dword ptr [ebp-4]
 00527C52    call        00482974
 00527C57    mov         eax,dword ptr [ebp-4]
 00527C5A    mov         edx,dword ptr [ebp-0C]
 00527C5D    mov         dword ptr [eax+4C],edx
 00527C60    mov         eax,dword ptr [ebp-4]
 00527C63    mov         edx,dword ptr [ebp+8]
 00527C66    mov         dword ptr [eax+40],edx
 00527C69    mov         eax,dword ptr [ebp-4]
 00527C6C    mov         edx,dword ptr [ebp+10]
 00527C6F    mov         dword ptr [eax+44],edx
 00527C72    mov         eax,dword ptr [ebp-4]
 00527C75    mov         edx,dword ptr [ebp+0C]
 00527C78    mov         dword ptr [eax+48],edx
 00527C7B    mov         eax,dword ptr [ebp-4]
 00527C7E    mov         byte ptr [eax+70],1
 00527C82    mov         eax,dword ptr [ebp-4]
 00527C85    xor         edx,edx
 00527C87    mov         dword ptr [eax+50],edx
 00527C8A    mov         dword ptr [eax+54],edx
 00527C8D    mov         eax,dword ptr [ebp-4]
 00527C90    xor         edx,edx
 00527C92    mov         dword ptr [eax+60],edx
 00527C95    mov         dword ptr [eax+64],40450000
 00527C9C    mov         eax,dword ptr [ebp-4]
 00527C9F    mov         dword ptr [eax+68],6A4
 00527CA6    mov         eax,dword ptr [ebp-4]
 00527CA9    mov         dword ptr [eax+6C],258
 00527CB0    mov         eax,dword ptr [ebp-4]
 00527CB3    call        00482E08
 00527CB8    mov         eax,dword ptr [ebp-4]
 00527CBB    cmp         byte ptr [ebp-5],0
>00527CBF    je          00527CD0
 00527CC1    call        @AfterConstruction
 00527CC6    pop         dword ptr fs:[0]
 00527CCD    add         esp,0C
 00527CD0    mov         eax,dword ptr [ebp-4]
 00527CD3    mov         esp,ebp
 00527CD5    pop         ebp
 00527CD6    ret         0C
end;*}

//00527CDC
destructor TAutoSplash.Destroy;
begin
{*
 00527CDC    push        ebp
 00527CDD    mov         ebp,esp
 00527CDF    add         esp,0FFFFFFF8
 00527CE2    call        @BeforeDestruction
 00527CE7    mov         byte ptr [ebp-5],dl
 00527CEA    mov         dword ptr [ebp-4],eax
 00527CED    mov         dl,byte ptr [ebp-5]
 00527CF0    and         dl,0FC
 00527CF3    mov         eax,dword ptr [ebp-4]
 00527CF6    call        TThread.Destroy
 00527CFB    cmp         byte ptr [ebp-5],0
>00527CFF    jle         00527D09
 00527D01    mov         eax,dword ptr [ebp-4]
 00527D04    call        @ClassDestroy
 00527D09    pop         ecx
 00527D0A    pop         ecx
 00527D0B    pop         ebp
 00527D0C    ret
*}
end;

//00527D10
procedure TAutoSplash.Execute;
begin
{*
 00527D10    push        ebp
 00527D11    mov         ebp,esp
 00527D13    push        ecx
 00527D14    mov         dword ptr [ebp-4],eax
>00527D17    jmp         00527D84
>00527D19    jmp         00527D22
 00527D1B    push        64
 00527D1D    call        kernel32.Sleep
 00527D22    mov         eax,dword ptr [ebp-4]
 00527D25    cmp         byte ptr [eax+5E],0;TAutoSplash.?f5E:byte
>00527D29    je          00527D1B
 00527D2B    push        14
 00527D2D    call        kernel32.Sleep
 00527D32    mov         eax,dword ptr [ebp-4]
 00527D35    cmp         byte ptr [eax+70],0;TAutoSplash.?f70:Boolean
>00527D39    je          00527D6B
 00527D3B    mov         eax,dword ptr [ebp-4]
 00527D3E    push        dword ptr [eax+54];TAutoSplash.?f54:dword
 00527D41    push        dword ptr [eax+50];TAutoSplash.?f50:Double
 00527D44    call        004688F0
 00527D49    add         esp,0FFFFFFF8
 00527D4C    fstp        qword ptr [esp]
 00527D4F    wait
 00527D50    call        00521C54
 00527D55    cmp         edx,0
>00527D58    jne         00527D61
 00527D5A    cmp         eax,0D
>00527D5D    jb          00527D6B
>00527D5F    jmp         00527D63
>00527D61    jl          00527D6B
 00527D63    mov         eax,dword ptr [ebp-4]
 00527D66    call        00527F78
 00527D6B    mov         eax,dword ptr [ebp-4]
 00527D6E    cmp         byte ptr [eax+71],0;TAutoSplash.?f71:Boolean
>00527D72    je          00527D7C
 00527D74    mov         eax,dword ptr [ebp-4]
 00527D77    call        00527D90
 00527D7C    mov         eax,dword ptr [ebp-4]
 00527D7F    call        00527FAC
 00527D84    mov         eax,dword ptr [ebp-4]
 00527D87    cmp         byte ptr [eax+0D],0;TAutoSplash.FTerminated:Boolean
>00527D8B    je          00527D22
 00527D8D    pop         ecx
 00527D8E    pop         ebp
 00527D8F    ret
*}
end;

//00527D90
procedure sub_00527D90(?:TAutoSplash);
begin
{*
 00527D90    push        ebp
 00527D91    mov         ebp,esp
 00527D93    add         esp,0FFFFFFEC
 00527D96    push        ebx
 00527D97    xor         edx,edx
 00527D99    mov         dword ptr [ebp-10],edx
 00527D9C    mov         dword ptr [ebp-4],eax
 00527D9F    xor         eax,eax
 00527DA1    push        ebp
 00527DA2    push        527EEF
 00527DA7    push        dword ptr fs:[eax]
 00527DAA    mov         dword ptr fs:[eax],esp
 00527DAD    mov         eax,dword ptr [ebp-4]
 00527DB0    mov         eax,dword ptr [eax+44];TAutoSplash.?f44:dword
 00527DB3    call        00535788
 00527DB8    mov         byte ptr [ebp-9],al
 00527DBB    movsx       eax,byte ptr [ebp-9]
 00527DBF    mov         ecx,0A
 00527DC4    cdq
 00527DC5    idiv        eax,ecx
 00527DC7    mov         dl,0A
 00527DC9    sub         dl,al
 00527DCB    mov         byte ptr [ebp-0A],dl
 00527DCE    mov         al,byte ptr [ebp-9]
 00527DD1    sub         al,5B
>00527DD3    jb          00527DE2
 00527DD5    sub         al,0A
>00527DD7    jb          00527E6C
>00527DDD    jmp         00527ED3
 00527DE2    mov         eax,dword ptr [ebp-4]
 00527DE5    push        dword ptr [eax+64];TAutoSplash.?f64:dword
 00527DE8    push        dword ptr [eax+60];TAutoSplash.?f60:dword
 00527DEB    lea         eax,[ebp-10]
 00527DEE    push        eax
 00527DEF    mov         eax,dword ptr [ebp-4]
 00527DF2    mov         eax,dword ptr [eax+44];TAutoSplash.?f44:dword
 00527DF5    mov         eax,dword ptr [eax+40]
 00527DF8    lea         ecx,[eax+0C]
 00527DFB    mov         edx,533460;sub_00533460
 00527E00    mov         eax,dword ptr [ebp-4]
 00527E03    mov         eax,dword ptr [eax+48];TAutoSplash.?f48:dword
 00527E06    call        00533ED0
 00527E0B    mov         eax,dword ptr [ebp-10]
 00527E0E    call        @LStrLen
 00527E13    dec         eax
>00527E14    jl          00527ED3
 00527E1A    cmp         byte ptr [ebp-0A],1
>00527E1E    jl          00527ED3
 00527E24    mov         eax,dword ptr [ebp-10]
 00527E27    call        @LStrLen
 00527E2C    mov         byte ptr [ebp-0A],al
 00527E2F    movsx       eax,byte ptr [ebp-0A]
 00527E33    dec         eax
 00527E34    test        eax,eax
>00527E36    jl          00527ED3
 00527E3C    inc         eax
 00527E3D    mov         dword ptr [ebp-14],eax
 00527E40    mov         dword ptr [ebp-8],0
 00527E47    mov         eax,dword ptr [ebp-10]
 00527E4A    mov         edx,dword ptr [ebp-8]
 00527E4D    mov         edx,dword ptr [eax+edx*4]
 00527E50    mov         eax,dword ptr [ebp-4]
 00527E53    call        00527EFC
 00527E58    push        0BE
 00527E5D    call        kernel32.Sleep
 00527E62    inc         dword ptr [ebp-8]
 00527E65    dec         dword ptr [ebp-14]
>00527E68    jne         00527E47
>00527E6A    jmp         00527ED3
 00527E6C    mov         eax,dword ptr [ebp-4]
 00527E6F    push        dword ptr [eax+64];TAutoSplash.?f64:dword
 00527E72    push        dword ptr [eax+60];TAutoSplash.?f60:dword
 00527E75    lea         eax,[ebp-10]
 00527E78    push        eax
 00527E79    mov         eax,dword ptr [ebp-4]
 00527E7C    mov         eax,dword ptr [eax+44];TAutoSplash.?f44:dword
 00527E7F    mov         eax,dword ptr [eax+40]
 00527E82    lea         ecx,[eax+0C]
 00527E85    mov         edx,533460;sub_00533460
 00527E8A    mov         eax,dword ptr [ebp-4]
 00527E8D    mov         eax,dword ptr [eax+48];TAutoSplash.?f48:dword
 00527E90    call        00533ED0
 00527E95    mov         eax,dword ptr [ebp-10]
 00527E98    call        @LStrLen
 00527E9D    test        eax,eax
>00527E9F    jle         00527ED3
 00527EA1    mov         eax,dword ptr [ebp-10]
 00527EA4    mov         edx,dword ptr [eax]
 00527EA6    mov         eax,dword ptr [ebp-4]
 00527EA9    call        00527EFC
 00527EAE    push        0BE
 00527EB3    call        kernel32.Sleep
 00527EB8    mov         eax,3E8
 00527EBD    call        @RandInt
 00527EC2    mov         ebx,eax
 00527EC4    mov         eax,dword ptr [ebp-4]
 00527EC7    call        005281F0
 00527ECC    movsx       eax,al
 00527ECF    cmp         ebx,eax
>00527ED1    jge         00527E6C
 00527ED3    xor         eax,eax
 00527ED5    pop         edx
 00527ED6    pop         ecx
 00527ED7    pop         ecx
 00527ED8    mov         dword ptr fs:[eax],edx
 00527EDB    push        527EF6
 00527EE0    lea         eax,[ebp-10]
 00527EE3    mov         edx,dword ptr ds:[51E054];TCharPIDs
 00527EE9    call        @DynArrayClear
 00527EEE    ret
>00527EEF    jmp         @HandleFinally
>00527EF4    jmp         00527EE0
 00527EF6    pop         ebx
 00527EF7    mov         esp,ebp
 00527EF9    pop         ebp
 00527EFA    ret
*}
end;

//00527EFC
{*function sub_00527EFC(?:TAutoSplash; ?:?):?;
begin
 00527EFC    push        ebp
 00527EFD    mov         ebp,esp
 00527EFF    add         esp,0FFFFFFF0
 00527F02    mov         dword ptr [ebp-8],edx
 00527F05    mov         dword ptr [ebp-4],eax
 00527F08    mov         byte ptr [ebp-9],0
 00527F0C    mov         edx,dword ptr [ebp-8]
 00527F0F    mov         eax,dword ptr [ebp-4]
 00527F12    mov         eax,dword ptr [eax+48];TAutoSplash.?f48:dword
 00527F15    call        005338A4
 00527F1A    mov         dword ptr [ebp-10],eax
 00527F1D    cmp         dword ptr [ebp-10],0
>00527F21    je          00527F6C
 00527F23    mov         eax,dword ptr [ebp-10]
 00527F26    mov         al,byte ptr [eax+51]
 00527F29    not         eax
 00527F2B    and         al,byte ptr ds:[527F74];0x2 gvar_00527F74
>00527F31    jne         00527F6C
 00527F33    mov         eax,dword ptr [ebp-10]
 00527F36    and         byte ptr [eax+51],0FE
 00527F3A    mov         eax,dword ptr [ebp-10]
 00527F3D    and         byte ptr [eax+51],0FD
 00527F41    mov         eax,dword ptr [ebp-8]
 00527F44    mov         edx,dword ptr [ebp-4]
 00527F47    mov         dword ptr [edx+58],eax;TAutoSplash.?f58:dword
 00527F4A    mov         eax,[0055B164];^gvar_0054E554
 00527F4F    mov         al,byte ptr [eax]
 00527F51    mov         edx,dword ptr [ebp-4]
 00527F54    mov         byte ptr [edx+5C],al;TAutoSplash.?f5C:byte
 00527F57    mov         eax,dword ptr [ebp-4]
 00527F5A    push        eax
 00527F5B    push        528110
 00527F60    mov         eax,dword ptr [ebp-4]
 00527F63    call        00482D80
 00527F68    mov         byte ptr [ebp-9],1
 00527F6C    mov         al,byte ptr [ebp-9]
 00527F6F    mov         esp,ebp
 00527F71    pop         ebp
 00527F72    ret
end;*}

//00527F78
procedure sub_00527F78(?:TAutoSplash);
begin
{*
 00527F78    push        ebp
 00527F79    mov         ebp,esp
 00527F7B    push        ecx
 00527F7C    mov         dword ptr [ebp-4],eax
 00527F7F    mov         eax,[0055B6A0];^gvar_0054E56C
 00527F84    mov         al,byte ptr [eax]
 00527F86    mov         edx,dword ptr [ebp-4]
 00527F89    mov         byte ptr [edx+5C],al;TAutoSplash.?f5C:byte
 00527F8C    mov         eax,dword ptr [ebp-4]
 00527F8F    push        eax
 00527F90    push        528184
 00527F95    mov         eax,dword ptr [ebp-4]
 00527F98    call        00482D80
 00527F9D    call        004688F0
 00527FA2    mov         eax,dword ptr [ebp-4]
 00527FA5    fstp        qword ptr [eax+50];TAutoSplash.?f50:Double
 00527FA8    wait
 00527FA9    pop         ecx
 00527FAA    pop         ebp
 00527FAB    ret
*}
end;

//00527FAC
{*function sub_00527FAC(?:TAutoSplash):?;
begin
 00527FAC    push        ebp
 00527FAD    mov         ebp,esp
 00527FAF    add         esp,0FFFFFFF4
 00527FB2    xor         edx,edx
 00527FB4    mov         dword ptr [ebp-0C],edx
 00527FB7    mov         dword ptr [ebp-4],eax
 00527FBA    xor         eax,eax
 00527FBC    push        ebp
 00527FBD    push        528092
 00527FC2    push        dword ptr fs:[eax]
 00527FC5    mov         dword ptr fs:[eax],esp
 00527FC8    mov         byte ptr [ebp-5],0
 00527FCC    mov         eax,dword ptr [ebp-4]
 00527FCF    mov         eax,dword ptr [eax+48];TAutoSplash.?f48:dword
 00527FD2    call        00533F88
 00527FD7    push        40540000
 00527FDC    push        0
 00527FDE    lea         eax,[ebp-0C]
 00527FE1    push        eax
 00527FE2    mov         eax,dword ptr [ebp-4]
 00527FE5    mov         eax,dword ptr [eax+44];TAutoSplash.?f44:dword
 00527FE8    mov         eax,dword ptr [eax+40]
 00527FEB    lea         ecx,[eax+0C]
 00527FEE    mov         edx,5334A8;sub_005334A8
 00527FF3    mov         eax,dword ptr [ebp-4]
 00527FF6    mov         eax,dword ptr [eax+48];TAutoSplash.?f48:dword
 00527FF9    call        00533ED0
 00527FFE    mov         eax,dword ptr [ebp-0C]
 00528001    call        @LStrLen
 00528006    test        eax,eax
>00528008    jne         00528017
 0052800A    mov         eax,dword ptr [ebp-4]
 0052800D    mov         eax,dword ptr [eax+48];TAutoSplash.?f48:dword
 00528010    call        00533FA0
>00528015    jmp         00528076
 00528017    mov         eax,dword ptr [ebp-4]
 0052801A    mov         eax,dword ptr [eax+48];TAutoSplash.?f48:dword
 0052801D    call        00533FA0
 00528022    mov         eax,dword ptr [ebp-4]
 00528025    mov         eax,dword ptr [eax+44];TAutoSplash.?f44:dword
 00528028    mov         eax,dword ptr [eax+40]
 0052802B    mov         eax,dword ptr [eax]
 0052802D    mov         edx,dword ptr [ebp-4]
 00528030    mov         dword ptr [edx+58],eax;TAutoSplash.?f58:dword
 00528033    mov         eax,[0055B368];^gvar_0054E560
 00528038    mov         al,byte ptr [eax]
 0052803A    mov         edx,dword ptr [ebp-4]
 0052803D    mov         byte ptr [edx+5C],al;TAutoSplash.?f5C:byte
 00528040    mov         eax,dword ptr [ebp-4]
 00528043    push        eax
 00528044    push        5280A0
 00528049    mov         eax,dword ptr [ebp-4]
 0052804C    call        00482D80
 00528051    push        172
 00528056    call        kernel32.Sleep
 0052805B    mov         eax,dword ptr [ebp-4]
 0052805E    push        eax
 0052805F    push        528184
 00528064    mov         eax,dword ptr [ebp-4]
 00528067    call        00482D80
 0052806C    push        4B0
 00528071    call        kernel32.Sleep
 00528076    xor         eax,eax
 00528078    pop         edx
 00528079    pop         ecx
 0052807A    pop         ecx
 0052807B    mov         dword ptr fs:[eax],edx
 0052807E    push        528099
 00528083    lea         eax,[ebp-0C]
 00528086    mov         edx,dword ptr ds:[51E054];TCharPIDs
 0052808C    call        @DynArrayClear
 00528091    ret
>00528092    jmp         @HandleFinally
>00528097    jmp         00528083
 00528099    mov         al,byte ptr [ebp-5]
 0052809C    mov         esp,ebp
 0052809E    pop         ebp
 0052809F    ret
end;*}

//005281F0
{*function sub_005281F0(?:TAutoSplash):?;
begin
 005281F0    push        ebp
 005281F1    mov         ebp,esp
 005281F3    add         esp,0FFFFFFF8
 005281F6    mov         dword ptr [ebp-4],eax
 005281F9    mov         eax,dword ptr [ebp-4]
 005281FC    mov         al,byte ptr [eax+5D];TAutoSplash.?f5D:byte
 005281FF    mov         byte ptr [ebp-5],al
 00528202    mov         al,byte ptr [ebp-5]
 00528205    pop         ecx
 00528206    pop         ecx
 00528207    pop         ebp
 00528208    ret
end;*}

//0052820C
{*procedure sub_0052820C(?:TAutoSplash; ?:?);
begin
 0052820C    push        ebp
 0052820D    mov         ebp,esp
 0052820F    add         esp,0FFFFFFF0
 00528212    xor         ecx,ecx
 00528214    mov         dword ptr [ebp-0C],ecx
 00528217    mov         dword ptr [ebp-10],ecx
 0052821A    mov         byte ptr [ebp-5],dl
 0052821D    mov         dword ptr [ebp-4],eax
 00528220    xor         eax,eax
 00528222    push        ebp
 00528223    push        52829A
 00528228    push        dword ptr fs:[eax]
 0052822B    mov         dword ptr fs:[eax],esp
 0052822E    cmp         byte ptr [ebp-5],0
>00528232    jle         00528245
 00528234    cmp         byte ptr [ebp-5],64
>00528238    jg          00528245
 0052823A    mov         al,byte ptr [ebp-5]
 0052823D    mov         edx,dword ptr [ebp-4]
 00528240    mov         byte ptr [edx+5D],al
>00528243    jmp         0052827F
 00528245    push        5282B0;'TAutoSplash.SetBeheadAggressive - aggressivity val: '
 0052824A    lea         edx,[ebp-10]
 0052824D    movsx       eax,byte ptr [ebp-5]
 00528251    call        IntToStr
 00528256    push        dword ptr [ebp-10]
 00528259    push        5282F0;' must be in range 1-100 '
 0052825E    lea         eax,[ebp-0C]
 00528261    mov         edx,3
 00528266    call        @LStrCatN
 0052826B    mov         ecx,dword ptr [ebp-0C]
 0052826E    mov         dl,1
 00528270    mov         eax,[004653B4];Exception
 00528275    call        Exception.Create;Exception.Create
 0052827A    call        @RaiseExcept
 0052827F    xor         eax,eax
 00528281    pop         edx
 00528282    pop         ecx
 00528283    pop         ecx
 00528284    mov         dword ptr fs:[eax],edx
 00528287    push        5282A1
 0052828C    lea         eax,[ebp-10]
 0052828F    mov         edx,2
 00528294    call        @LStrArrayClr
 00528299    ret
>0052829A    jmp         @HandleFinally
>0052829F    jmp         0052828C
 005282A1    mov         esp,ebp
 005282A3    pop         ebp
 005282A4    ret
end;*}

end.