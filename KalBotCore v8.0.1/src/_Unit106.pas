//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit106;

interface

uses
  SysUtils, Classes;

type
  TDropsToPick = array of ?;
//elSize = 38;
  TAutoPick = class(TThread)
  public
    f40:byte;//f40
    f44:dword;//f44
    f50:byte;//f50
    f54:Integer;//f54
    f58:TDropsToPick;//f58
    destructor Destroy; virtual;//00529D7C
    procedure Execute; virtual;//v4//00529DB0
    //constructor Create(?:?; ?:?);//00529D0C
  end;
    destructor Destroy;//00529D7C
    procedure Execute;//00529DB0
    procedure sub_00529F20(?:TAutoPick);//00529F20
    //procedure sub_00529FE8(?:TAutoPick; ?:?);//00529FE8

implementation

//00529D0C
{*constructor TAutoPick.Create(?:?; ?:?);
begin
 00529D0C    push        ebp
 00529D0D    mov         ebp,esp
 00529D0F    add         esp,0FFFFFFF4
 00529D12    test        dl,dl
>00529D14    je          00529D1E
 00529D16    add         esp,0FFFFFFF0
 00529D19    call        @ClassCreate
 00529D1E    mov         dword ptr [ebp-0C],ecx
 00529D21    mov         byte ptr [ebp-5],dl
 00529D24    mov         dword ptr [ebp-4],eax
 00529D27    mov         cl,1
 00529D29    xor         edx,edx
 00529D2B    mov         eax,dword ptr [ebp-4]
 00529D2E    call        00482974
 00529D33    mov         eax,dword ptr [ebp-0C]
 00529D36    mov         eax,dword ptr [eax]
 00529D38    mov         edx,dword ptr [ebp-4]
 00529D3B    mov         dword ptr [edx+4C],eax
 00529D3E    mov         eax,dword ptr [ebp-4]
 00529D41    mov         edx,dword ptr [ebp+0C]
 00529D44    mov         dword ptr [eax+44],edx
 00529D47    mov         eax,dword ptr [ebp-4]
 00529D4A    mov         edx,dword ptr [ebp+8]
 00529D4D    mov         dword ptr [eax+48],edx
 00529D50    mov         eax,dword ptr [ebp-4]
 00529D53    mov         dword ptr [eax+54],9C40
 00529D5A    mov         eax,dword ptr [ebp-4]
 00529D5D    cmp         byte ptr [ebp-5],0
>00529D61    je          00529D72
 00529D63    call        @AfterConstruction
 00529D68    pop         dword ptr fs:[0]
 00529D6F    add         esp,0C
 00529D72    mov         eax,dword ptr [ebp-4]
 00529D75    mov         esp,ebp
 00529D77    pop         ebp
 00529D78    ret         8
end;*}

//00529D7C
destructor TAutoPick.Destroy;
begin
{*
 00529D7C    push        ebp
 00529D7D    mov         ebp,esp
 00529D7F    add         esp,0FFFFFFF8
 00529D82    call        @BeforeDestruction
 00529D87    mov         byte ptr [ebp-5],dl
 00529D8A    mov         dword ptr [ebp-4],eax
 00529D8D    mov         dl,byte ptr [ebp-5]
 00529D90    and         dl,0FC
 00529D93    mov         eax,dword ptr [ebp-4]
 00529D96    call        TThread.Destroy
 00529D9B    cmp         byte ptr [ebp-5],0
>00529D9F    jle         00529DA9
 00529DA1    mov         eax,dword ptr [ebp-4]
 00529DA4    call        @ClassDestroy
 00529DA9    pop         ecx
 00529DAA    pop         ecx
 00529DAB    pop         ebp
 00529DAC    ret
*}
end;

//00529DB0
procedure TAutoPick.Execute;
begin
{*
 00529DB0    push        ebp
 00529DB1    mov         ebp,esp
 00529DB3    add         esp,0FFFFFFF0
 00529DB6    push        esi
 00529DB7    push        edi
 00529DB8    mov         dword ptr [ebp-4],eax
>00529DBB    jmp         00529F08
>00529DC0    jmp         00529DC9
 00529DC2    push        64
 00529DC4    call        kernel32.Sleep
 00529DC9    mov         eax,dword ptr [ebp-4]
 00529DCC    cmp         byte ptr [eax+40],0;TAutoPick.?f40:byte
>00529DD0    je          00529DC2
 00529DD2    push        14
 00529DD4    call        kernel32.Sleep
 00529DD9    mov         eax,dword ptr [ebp-4]
 00529DDC    mov         al,byte ptr [eax+50];TAutoPick.?f50:byte
 00529DDF    sub         al,2
>00529DE1    jb          00529DEA
>00529DE3    je          00529DF9
>00529DE5    jmp         00529F08
 00529DEA    push        12C
 00529DEF    call        kernel32.Sleep
>00529DF4    jmp         00529F08
 00529DF9    mov         eax,dword ptr [ebp-4]
 00529DFC    mov         eax,dword ptr [eax+44];TAutoPick.?f44:dword
 00529DFF    call        005332FC
 00529E04    mov         eax,dword ptr [ebp-4]
 00529E07    mov         eax,dword ptr [eax+44];TAutoPick.?f44:dword
 00529E0A    call        0053319C
 00529E0F    dec         eax
 00529E10    test        eax,eax
>00529E12    jl          00529EEC
 00529E18    inc         eax
 00529E19    mov         dword ptr [ebp-10],eax
 00529E1C    mov         dword ptr [ebp-8],0
 00529E23    mov         edx,dword ptr [ebp-8]
 00529E26    mov         eax,dword ptr [ebp-4]
 00529E29    mov         eax,dword ptr [eax+44];TAutoPick.?f44:dword
 00529E2C    call        0053332C
 00529E31    mov         dword ptr [ebp-0C],eax
 00529E34    mov         eax,dword ptr [ebp-0C]
 00529E37    fld         qword ptr [eax+28]
 00529E3A    fcomp       dword ptr ds:[529F1C];0:Single
 00529E40    fnstsw      al
 00529E42    sahf
>00529E43    jne         00529EE0
 00529E49    call        004688F0
 00529E4E    add         esp,0FFFFFFF8
 00529E51    fstp        qword ptr [esp]
 00529E54    wait
 00529E55    mov         eax,dword ptr [ebp-0C]
 00529E58    push        dword ptr [eax+24]
 00529E5B    push        dword ptr [eax+20]
 00529E5E    call        00521CB4
 00529E63    push        edx
 00529E64    push        eax
 00529E65    mov         eax,dword ptr [ebp-4]
 00529E68    mov         eax,dword ptr [eax+54];TAutoPick.?f54:Integer
 00529E6B    xor         edx,edx
 00529E6D    cmp         edx,dword ptr [esp+4]
>00529E71    jne         00529E7C
 00529E73    cmp         eax,dword ptr [esp]
 00529E76    pop         edx
 00529E77    pop         eax
>00529E78    jae         00529EE0
>00529E7A    jmp         00529E80
 00529E7C    pop         edx
 00529E7D    pop         eax
>00529E7E    jge         00529EE0
 00529E80    call        004688F0
 00529E85    mov         eax,dword ptr [ebp-0C]
 00529E88    fstp        qword ptr [eax+28]
 00529E8B    wait
 00529E8C    mov         eax,dword ptr [ebp-0C]
 00529E8F    mov         byte ptr [eax+30],1
 00529E93    mov         eax,dword ptr [ebp-4]
 00529E96    mov         eax,dword ptr [eax+58];TAutoPick.?f58:TDropsToPick
 00529E99    call        @LStrLen
 00529E9E    inc         eax
 00529E9F    push        eax
 00529EA0    mov         eax,dword ptr [ebp-4]
 00529EA3    add         eax,58;TAutoPick.?f58:TDropsToPick
 00529EA6    mov         ecx,1
 00529EAB    mov         edx,dword ptr ds:[529C6C];TDropsToPick
 00529EB1    call        @DynArraySetLength
 00529EB6    add         esp,4
 00529EB9    mov         eax,dword ptr [ebp-4]
 00529EBC    mov         eax,dword ptr [eax+58];TAutoPick.?f58:TDropsToPick
 00529EBF    call        00405CE8
 00529EC4    mov         edx,eax
 00529EC6    shl         eax,3
 00529EC9    sub         eax,edx
 00529ECB    mov         edx,dword ptr [ebp-4]
 00529ECE    mov         edx,dword ptr [edx+58];TAutoPick.?f58:TDropsToPick
 00529ED1    mov         ecx,dword ptr [ebp-0C]
 00529ED4    lea         edi,[edx+eax*8]
 00529ED7    mov         esi,ecx
 00529ED9    mov         ecx,0E
 00529EDE    rep movs    dword ptr [edi],dword ptr [esi]
 00529EE0    inc         dword ptr [ebp-8]
 00529EE3    dec         dword ptr [ebp-10]
>00529EE6    jne         00529E23
 00529EEC    mov         eax,dword ptr [ebp-4]
 00529EEF    mov         eax,dword ptr [eax+44];TAutoPick.?f44:dword
 00529EF2    call        00533314
 00529EF7    mov         eax,dword ptr [ebp-4]
 00529EFA    push        eax
 00529EFB    push        52A014
 00529F00    mov         eax,dword ptr [ebp-4]
 00529F03    call        00482D80
 00529F08    mov         eax,dword ptr [ebp-4]
 00529F0B    cmp         byte ptr [eax+0D],0;TAutoPick.FTerminated:Boolean
>00529F0F    je          00529DC9
 00529F15    pop         edi
 00529F16    pop         esi
 00529F17    mov         esp,ebp
 00529F19    pop         ebp
 00529F1A    ret
*}
end;

//00529F20
procedure sub_00529F20(?:TAutoPick);
begin
{*
 00529F20    push        ebp
 00529F21    mov         ebp,esp
 00529F23    add         esp,0FFFFFFF4
 00529F26    push        esi
 00529F27    push        edi
 00529F28    mov         dword ptr [ebp-4],eax
 00529F2B    mov         eax,dword ptr [ebp-4]
 00529F2E    mov         eax,dword ptr [eax+44]
 00529F31    call        005332FC
 00529F36    mov         eax,dword ptr [ebp-4]
 00529F39    mov         eax,dword ptr [eax+44]
 00529F3C    call        0053319C
 00529F41    dec         eax
 00529F42    cmp         eax,0
>00529F45    jl          00529FC4
 00529F47    mov         dword ptr [ebp-8],eax
 00529F4A    mov         edx,dword ptr [ebp-8]
 00529F4D    mov         eax,dword ptr [ebp-4]
 00529F50    mov         eax,dword ptr [eax+44]
 00529F53    call        0053332C
 00529F58    mov         dword ptr [ebp-0C],eax
 00529F5B    call        004688F0
 00529F60    mov         eax,dword ptr [ebp-0C]
 00529F63    fstp        qword ptr [eax+28]
 00529F66    wait
 00529F67    mov         eax,dword ptr [ebp-0C]
 00529F6A    mov         byte ptr [eax+30],1
 00529F6E    mov         eax,dword ptr [ebp-4]
 00529F71    mov         eax,dword ptr [eax+58]
 00529F74    call        @LStrLen
 00529F79    inc         eax
 00529F7A    push        eax
 00529F7B    mov         eax,dword ptr [ebp-4]
 00529F7E    add         eax,58
 00529F81    mov         ecx,1
 00529F86    mov         edx,dword ptr ds:[529C6C];TDropsToPick
 00529F8C    call        @DynArraySetLength
 00529F91    add         esp,4
 00529F94    mov         eax,dword ptr [ebp-4]
 00529F97    mov         eax,dword ptr [eax+58]
 00529F9A    call        00405CE8
 00529F9F    mov         edx,eax
 00529FA1    shl         eax,3
 00529FA4    sub         eax,edx
 00529FA6    mov         edx,dword ptr [ebp-4]
 00529FA9    mov         edx,dword ptr [edx+58]
 00529FAC    mov         ecx,dword ptr [ebp-0C]
 00529FAF    lea         edi,[edx+eax*8]
 00529FB2    mov         esi,ecx
 00529FB4    mov         ecx,0E
 00529FB9    rep movs    dword ptr [edi],dword ptr [esi]
 00529FBB    dec         dword ptr [ebp-8]
 00529FBE    cmp         dword ptr [ebp-8],0FFFFFFFF
>00529FC2    jne         00529F4A
 00529FC4    mov         eax,dword ptr [ebp-4]
 00529FC7    mov         eax,dword ptr [eax+44]
 00529FCA    call        00533314
 00529FCF    mov         eax,dword ptr [ebp-4]
 00529FD2    push        eax
 00529FD3    push        52A014
 00529FD8    mov         eax,dword ptr [ebp-4]
 00529FDB    call        00482D80
 00529FE0    pop         edi
 00529FE1    pop         esi
 00529FE2    mov         esp,ebp
 00529FE4    pop         ebp
 00529FE5    ret
*}
end;

//00529FE8
{*procedure sub_00529FE8(?:TAutoPick; ?:?);
begin
 00529FE8    push        ebp
 00529FE9    mov         ebp,esp
 00529FEB    add         esp,0FFFFFFF8
 00529FEE    mov         byte ptr [ebp-5],dl
 00529FF1    mov         dword ptr [ebp-4],eax
 00529FF4    mov         al,byte ptr [ebp-5]
 00529FF7    mov         edx,dword ptr [ebp-4]
 00529FFA    mov         byte ptr [edx+50],al
 00529FFD    cmp         byte ptr [ebp-5],1
 0052A001    sete        al
 0052A004    mov         edx,dword ptr [ebp-4]
 0052A007    mov         edx,dword ptr [edx+44]
 0052A00A    mov         byte ptr [edx+38],al
 0052A00D    pop         ecx
 0052A00E    pop         ecx
 0052A00F    pop         ebp
 0052A010    ret
end;*}

end.