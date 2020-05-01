//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit101;

interface

uses
  SysUtils, Classes;

type
  EOtherMacroRecording = class(Exception)
  end;
  EMacroNameAlredyExist = class(Exception)
  end;
  TDynCommandParameters = array of Variant;
//elSize = 10
//varType equivalent: varVariant;
  TSingleMacroCommand = TSingleMacroCommand = record//size=8
f4:TDynCommandParameters;//f4
end;;
  TDynMacroCommands = array of TSingleMacroCommand;
//elSize = 8;
  TStallMacro = class(TObject)
  public
    ........:TDynMacroCommands;//f4
    constructor Create;//00532068
  end;
  TAutoStall = class(TInterfacedObject)
  public
    f18:String;//f18
    f20:byte;//f20
    f21:byte;//f21
    f28:byte;//f28
    f2C:String;//f2C
    //constructor Create(?:?; ?:?);//00530CE8
  end;
    //procedure sub_00530DBC(?:?; ?:?; ?:?; ?:?);//00530DBC
    procedure sub_00530E50(?:TAutoStall);//00530E50
    //procedure sub_00530E94(?:?);//00530E94
    //procedure sub_00530EA0(?:?; ?:?);//00530EA0
    //procedure sub_00530F6C(?:?; ?:?);//00530F6C
    //procedure sub_00530FB4(?:?; ?:?);//00530FB4
    //procedure sub_00530FC4(?:?; ?:?);//00530FC4
    //procedure sub_005310CC(?:?; ?:?);//005310CC
    //procedure sub_0053126C(?:?; ?:Int64; ?:?; ?:?);//0053126C
    //procedure sub_00531370(?:?; ?:AnsiString);//00531370
    //procedure sub_00531438(?:?; ?:?);//00531438
    //procedure sub_005314CC(?:?);//005314CC
    //procedure sub_0053151C(?:?);//0053151C
    //procedure sub_00531560(?:TAutoStall; ?:?);//00531560
    //function sub_005316E8(?:TAutoStall):?;//005316E8
    //function sub_005317F8(?:TAutoStall; ?:?):?;//005317F8
    //function sub_00531888(?:TAutoStall):?;//00531888
    //function sub_005318A4(?:TAutoStall; ?:?):?;//005318A4
    procedure sub_00531B58(?:TAutoStall);//00531B58
    //function sub_00531DF8(?:TAutoStall):?;//00531DF8
    procedure sub_00532040(?:TStallMacro);//00532040
    //function sub_005320F0(?:?):?;//005320F0
    //procedure sub_00532110(?:?; ?:?);//00532110
    //procedure sub_00532134(?:TStallMacro; ?:Byte; ?:Byte; ?:?);//00532134
    procedure sub_0053221C(?:TStallMacro; ?:AnsiString);//0053221C

implementation

//00530CE8
{*constructor TAutoStall.Create(?:?; ?:?);
begin
 00530CE8    push        ebp
 00530CE9    mov         ebp,esp
 00530CEB    add         esp,0FFFFFFF4
 00530CEE    test        dl,dl
>00530CF0    je          00530CFA
 00530CF2    add         esp,0FFFFFFF0
 00530CF5    call        @ClassCreate
 00530CFA    mov         dword ptr [ebp-0C],ecx
 00530CFD    mov         byte ptr [ebp-5],dl
 00530D00    mov         dword ptr [ebp-4],eax
 00530D03    xor         edx,edx
 00530D05    mov         eax,dword ptr [ebp-4]
 00530D08    call        TObject.Create
 00530D0D    mov         eax,dword ptr [ebp-0C]
 00530D10    mov         eax,dword ptr [eax]
 00530D12    mov         edx,dword ptr [ebp-4]
 00530D15    mov         dword ptr [edx+0C],eax
 00530D18    mov         eax,dword ptr [ebp-4]
 00530D1B    mov         edx,dword ptr [ebp+0C]
 00530D1E    mov         dword ptr [eax+10],edx
 00530D21    mov         eax,dword ptr [ebp-4]
 00530D24    mov         edx,dword ptr [ebp+8]
 00530D27    mov         dword ptr [eax+14],edx
 00530D2A    mov         eax,dword ptr [ebp-4]
 00530D2D    mov         byte ptr [eax+28],0
 00530D31    mov         eax,dword ptr [ebp-4]
 00530D34    mov         byte ptr [eax+21],0
 00530D38    mov         dl,1
 00530D3A    mov         eax,[00476078];TStringList
 00530D3F    call        TObject.Create;TStringList.Create
 00530D44    mov         edx,dword ptr [ebp-4]
 00530D47    mov         dword ptr [edx+24],eax
 00530D4A    mov         eax,dword ptr [ebp-4]
 00530D4D    mov         eax,dword ptr [eax+24]
 00530D50    mov         byte ptr [eax+1D],2
 00530D54    mov         eax,dword ptr [ebp-4]
 00530D57    cmp         byte ptr [ebp-5],0
>00530D5B    je          00530D6C
 00530D5D    call        @AfterConstruction
 00530D62    pop         dword ptr fs:[0]
 00530D69    add         esp,0C
 00530D6C    mov         eax,dword ptr [ebp-4]
 00530D6F    mov         esp,ebp
 00530D71    pop         ebp
 00530D72    ret         8
end;*}

//00530DBC
{*procedure sub_00530DBC(?:?; ?:?; ?:?; ?:?);
begin
 00530DBC    push        ebp
 00530DBD    mov         ebp,esp
 00530DBF    add         esp,0FFFFFFF4
 00530DC2    mov         dword ptr [ebp-0C],ecx
 00530DC5    mov         byte ptr [ebp-5],dl
 00530DC8    mov         dword ptr [ebp-4],eax
 00530DCB    mov         al,byte ptr [ebp+0C]
 00530DCE    sub         al,1
>00530DD0    jb          00530DD6
>00530DD2    je          00530E1D
>00530DD4    jmp         00530E48
 00530DD6    xor         eax,eax
 00530DD8    mov         al,byte ptr [ebp-5]
 00530DDB    sub         ax,0B
>00530DDF    je          00530DFD
 00530DE1    sub         ax,19
>00530DE5    je          00530E0D
 00530DE7    sub         ax,61
>00530DEB    jne         00530E48
 00530DED    mov         eax,dword ptr [ebp-0C]
 00530DF0    mov         edx,dword ptr [eax+4]
 00530DF3    mov         eax,dword ptr [ebp-4]
 00530DF6    call        00530FB4
>00530DFB    jmp         00530E48
 00530DFD    mov         eax,dword ptr [ebp-0C]
 00530E00    mov         edx,dword ptr [eax+4]
 00530E03    mov         eax,dword ptr [ebp-4]
 00530E06    call        00530FC4
>00530E0B    jmp         00530E48
 00530E0D    mov         eax,dword ptr [ebp-0C]
 00530E10    mov         edx,dword ptr [eax+4]
 00530E13    mov         eax,dword ptr [ebp-4]
 00530E16    call        005310CC
>00530E1B    jmp         00530E48
 00530E1D    mov         al,byte ptr [ebp-5]
 00530E20    sub         al,23
>00530E22    je          00530E2A
 00530E24    sub         al,18
>00530E26    je          00530E3A
>00530E28    jmp         00530E48
 00530E2A    mov         eax,dword ptr [ebp-0C]
 00530E2D    mov         edx,dword ptr [eax+4]
 00530E30    mov         eax,dword ptr [ebp-4]
 00530E33    call        00530F6C
>00530E38    jmp         00530E48
 00530E3A    mov         eax,dword ptr [ebp-0C]
 00530E3D    mov         edx,dword ptr [eax+4]
 00530E40    mov         eax,dword ptr [ebp-4]
 00530E43    call        00530EA0
 00530E48    mov         esp,ebp
 00530E4A    pop         ebp
 00530E4B    ret         8
end;*}

//00530E50
procedure sub_00530E50(?:TAutoStall);
begin
{*
 00530E50    push        ebp
 00530E51    mov         ebp,esp
 00530E53    push        ecx
 00530E54    mov         dword ptr [ebp-4],eax
 00530E57    push        2
 00530E59    mov         ecx,55AF60
 00530E5E    mov         edx,dword ptr [ebp-4]
 00530E61    test        edx,edx
>00530E63    je          00530E68
 00530E65    sub         edx,0FFFFFFD0
 00530E68    mov         eax,dword ptr [ebp-4]
 00530E6B    mov         eax,dword ptr [eax+0C]
 00530E6E    call        005204E4
 00530E73    push        1
 00530E75    mov         ecx,55AF68
 00530E7A    mov         edx,dword ptr [ebp-4]
 00530E7D    test        edx,edx
>00530E7F    je          00530E84
 00530E81    sub         edx,0FFFFFFD0
 00530E84    mov         eax,dword ptr [ebp-4]
 00530E87    mov         eax,dword ptr [eax+0C]
 00530E8A    call        005203DC
 00530E8F    pop         ecx
 00530E90    pop         ebp
 00530E91    ret
*}
end;

//00530E94
{*procedure sub_00530E94(?:?);
begin
 00530E94    push        ebp
 00530E95    mov         ebp,esp
 00530E97    push        ecx
 00530E98    mov         dword ptr [ebp-4],eax
 00530E9B    pop         ecx
 00530E9C    pop         ebp
 00530E9D    ret
end;*}

//00530EA0
{*procedure sub_00530EA0(?:?; ?:?);
begin
 00530EA0    push        ebp
 00530EA1    mov         ebp,esp
 00530EA3    add         esp,0FFFFFFE4
 00530EA6    xor         ecx,ecx
 00530EA8    mov         dword ptr [ebp-1C],ecx
 00530EAB    mov         dword ptr [ebp-8],edx
 00530EAE    mov         dword ptr [ebp-4],eax
 00530EB1    xor         eax,eax
 00530EB3    push        ebp
 00530EB4    push        530F5F
 00530EB9    push        dword ptr fs:[eax]
 00530EBC    mov         dword ptr fs:[eax],esp
 00530EBF    lea         eax,[ebp-8]
 00530EC2    mov         edx,7
 00530EC7    call        0051F5E4
 00530ECC    lea         eax,[ebp-8]
 00530ECF    call        0051F338
 00530ED4    mov         byte ptr [ebp-9],al
 00530ED7    mov         al,byte ptr [ebp-9]
 00530EDA    sub         al,1
>00530EDC    jb          00530EE6
>00530EDE    je          00530F1B
 00530EE0    dec         al
>00530EE2    je          00530F33
>00530EE4    jmp         00530F49
 00530EE6    lea         eax,[ebp-8]
 00530EE9    call        0051F3CC
 00530EEE    mov         dword ptr [ebp-10],eax
 00530EF1    lea         eax,[ebp-8]
 00530EF4    call        0051F3CC
 00530EF9    mov         dword ptr [ebp-14],eax
 00530EFC    lea         eax,[ebp-8]
 00530EFF    call        0051F3CC
 00530F04    mov         dword ptr [ebp-18],eax
 00530F07    mov         eax,dword ptr [ebp-18]
 00530F0A    push        eax
 00530F0B    mov         ecx,dword ptr [ebp-14]
 00530F0E    mov         edx,dword ptr [ebp-10]
 00530F11    mov         eax,dword ptr [ebp-4]
 00530F14    call        0053126C
>00530F19    jmp         00530F49
 00530F1B    lea         eax,[ebp-8]
 00530F1E    call        0051F3CC
 00530F23    mov         dword ptr [ebp-10],eax
 00530F26    mov         edx,dword ptr [ebp-10]
 00530F29    mov         eax,dword ptr [ebp-4]
 00530F2C    call        00531438
>00530F31    jmp         00530F49
 00530F33    lea         edx,[ebp-1C]
 00530F36    lea         eax,[ebp-8]
 00530F39    call        0051F434
 00530F3E    mov         edx,dword ptr [ebp-1C]
 00530F41    mov         eax,dword ptr [ebp-4]
 00530F44    call        00531370
 00530F49    xor         eax,eax
 00530F4B    pop         edx
 00530F4C    pop         ecx
 00530F4D    pop         ecx
 00530F4E    mov         dword ptr fs:[eax],edx
 00530F51    push        530F66
 00530F56    lea         eax,[ebp-1C]
 00530F59    call        @LStrClr
 00530F5E    ret
>00530F5F    jmp         @HandleFinally
>00530F64    jmp         00530F56
 00530F66    mov         esp,ebp
 00530F68    pop         ebp
 00530F69    ret
end;*}

//00530F6C
{*procedure sub_00530F6C(?:?; ?:?);
begin
 00530F6C    push        ebp
 00530F6D    mov         ebp,esp
 00530F6F    add         esp,0FFFFFFF4
 00530F72    mov         dword ptr [ebp-8],edx
 00530F75    mov         dword ptr [ebp-4],eax
 00530F78    lea         eax,[ebp-8]
 00530F7B    mov         edx,7
 00530F80    call        0051F5E4
 00530F85    lea         eax,[ebp-8]
 00530F88    call        0051F338
 00530F8D    mov         byte ptr [ebp-9],al
 00530F90    cmp         byte ptr [ebp-9],0
>00530F94    jne         00530FA0
 00530F96    mov         eax,dword ptr [ebp-4]
 00530F99    call        005314CC
>00530F9E    jmp         00530FAE
 00530FA0    cmp         byte ptr [ebp-9],1
>00530FA4    jne         00530FAE
 00530FA6    mov         eax,dword ptr [ebp-4]
 00530FA9    call        0053151C
 00530FAE    mov         esp,ebp
 00530FB0    pop         ebp
 00530FB1    ret
end;*}

//00530FB4
{*procedure sub_00530FB4(?:?; ?:?);
begin
 00530FB4    push        ebp
 00530FB5    mov         ebp,esp
 00530FB7    add         esp,0FFFFFFF8
 00530FBA    mov         dword ptr [ebp-8],edx
 00530FBD    mov         dword ptr [ebp-4],eax
 00530FC0    pop         ecx
 00530FC1    pop         ecx
 00530FC2    pop         ebp
 00530FC3    ret
end;*}

//00530FC4
{*procedure sub_00530FC4(?:?; ?:?);
begin
 00530FC4    push        ebp
 00530FC5    mov         ebp,esp
 00530FC7    add         esp,0FFFFFFD4
 00530FCA    xor         ecx,ecx
 00530FCC    mov         dword ptr [ebp-18],ecx
 00530FCF    mov         dword ptr [ebp-2C],ecx
 00530FD2    mov         dword ptr [ebp-8],edx
 00530FD5    mov         dword ptr [ebp-4],eax
 00530FD8    xor         eax,eax
 00530FDA    push        ebp
 00530FDB    push        5310A3
 00530FE0    push        dword ptr fs:[eax]
 00530FE3    mov         dword ptr fs:[eax],esp
 00530FE6    lea         eax,[ebp-8]
 00530FE9    mov         edx,3
 00530FEE    call        0051F5E4
 00530FF3    lea         eax,[ebp-8]
 00530FF6    call        0051F3CC
 00530FFB    mov         dword ptr [ebp-0C],eax
 00530FFE    lea         eax,[ebp-8]
 00531001    call        0051F338
 00531006    mov         byte ptr [ebp-0D],al
 00531009    cmp         byte ptr [ebp-0D],1A
>0053100D    jne         00531085
 0053100F    mov         edx,dword ptr [ebp-0C]
 00531012    mov         eax,dword ptr [ebp-4]
 00531015    mov         eax,dword ptr [eax+14]
 00531018    call        00526754
 0053101D    mov         dword ptr [ebp-14],eax
 00531020    cmp         dword ptr [ebp-14],0
>00531024    je          00531085
 00531026    lea         eax,[ebp-18]
 00531029    push        eax
 0053102A    mov         eax,dword ptr [ebp-14]
 0053102D    mov         eax,dword ptr [eax+10]
 00531030    mov         dword ptr [ebp-28],eax
 00531033    mov         byte ptr [ebp-24],0
 00531037    lea         ecx,[ebp-2C]
 0053103A    mov         eax,dword ptr [ebp-14]
 0053103D    movzx       edx,word ptr [eax]
 00531040    mov         eax,dword ptr [ebp-4]
 00531043    mov         eax,dword ptr [eax+10]
 00531046    mov         eax,dword ptr [eax+10]
 00531049    call        00524A60
 0053104E    mov         eax,dword ptr [ebp-2C]
 00531051    mov         dword ptr [ebp-20],eax
 00531054    mov         byte ptr [ebp-1C],0B
 00531058    lea         edx,[ebp-28]
 0053105B    mov         ecx,1
 00531060    mov         eax,5310B8;'Sold all %d * %s'
 00531065    call        Format
 0053106A    mov         edx,dword ptr [ebp-18]
 0053106D    mov         eax,[0055B21C];^gvar_0055E118
 00531072    mov         eax,dword ptr [eax]
 00531074    mov         eax,dword ptr [eax+480]
 0053107A    mov         eax,dword ptr [eax+220]
 00531080    mov         ecx,dword ptr [eax]
 00531082    call        dword ptr [ecx+38]
 00531085    xor         eax,eax
 00531087    pop         edx
 00531088    pop         ecx
 00531089    pop         ecx
 0053108A    mov         dword ptr fs:[eax],edx
 0053108D    push        5310AA
 00531092    lea         eax,[ebp-2C]
 00531095    call        @LStrClr
 0053109A    lea         eax,[ebp-18]
 0053109D    call        @LStrClr
 005310A2    ret
>005310A3    jmp         @HandleFinally
>005310A8    jmp         00531092
 005310AA    mov         esp,ebp
 005310AC    pop         ebp
 005310AD    ret
end;*}

//005310CC
{*procedure sub_005310CC(?:?; ?:?);
begin
 005310CC    push        ebp
 005310CD    mov         ebp,esp
 005310CF    add         esp,0FFFFFFC8
 005310D2    xor         ecx,ecx
 005310D4    mov         dword ptr [ebp-34],ecx
 005310D7    mov         dword ptr [ebp-38],ecx
 005310DA    mov         dword ptr [ebp-1C],ecx
 005310DD    mov         dword ptr [ebp-30],ecx
 005310E0    mov         dword ptr [ebp-8],edx
 005310E3    mov         dword ptr [ebp-4],eax
 005310E6    xor         eax,eax
 005310E8    push        ebp
 005310E9    push        53122B
 005310EE    push        dword ptr fs:[eax]
 005310F1    mov         dword ptr fs:[eax],esp
 005310F4    lea         eax,[ebp-8]
 005310F7    mov         edx,3
 005310FC    call        0051F5E4
 00531101    lea         eax,[ebp-8]
 00531104    call        0051F3CC
 00531109    mov         dword ptr [ebp-0C],eax
 0053110C    lea         eax,[ebp-8]
 0053110F    call        0051F3CC
 00531114    mov         dword ptr [ebp-10],eax
 00531117    mov         edx,dword ptr [ebp-0C]
 0053111A    mov         eax,dword ptr [ebp-4]
 0053111D    mov         eax,dword ptr [eax+14]
 00531120    call        00526754
 00531125    mov         dword ptr [ebp-14],eax
 00531128    cmp         dword ptr [ebp-14],0
>0053112C    je          00531208
 00531132    mov         eax,dword ptr [ebp-10]
 00531135    mov         edx,dword ptr [ebp-14]
 00531138    sub         eax,dword ptr [edx+10]
 0053113B    mov         dword ptr [ebp-18],eax
 0053113E    cmp         dword ptr [ebp-18],0
>00531142    jl          005311A7
 00531144    lea         eax,[ebp-1C]
 00531147    push        eax
 00531148    mov         eax,dword ptr [ebp-18]
 0053114B    cdq
 0053114C    xor         eax,edx
 0053114E    sub         eax,edx
 00531150    mov         dword ptr [ebp-2C],eax
 00531153    mov         byte ptr [ebp-28],0
 00531157    lea         ecx,[ebp-30]
 0053115A    mov         eax,dword ptr [ebp-14]
 0053115D    movzx       edx,word ptr [eax]
 00531160    mov         eax,dword ptr [ebp-4]
 00531163    mov         eax,dword ptr [eax+10]
 00531166    mov         eax,dword ptr [eax+10]
 00531169    call        00524A60
 0053116E    mov         eax,dword ptr [ebp-30]
 00531171    mov         dword ptr [ebp-24],eax
 00531174    mov         byte ptr [ebp-20],0B
 00531178    lea         edx,[ebp-2C]
 0053117B    mov         ecx,1
 00531180    mov         eax,531240;'You got %d * %s'
 00531185    call        Format
 0053118A    mov         edx,dword ptr [ebp-1C]
 0053118D    mov         eax,[0055B21C];^gvar_0055E118
 00531192    mov         eax,dword ptr [eax]
 00531194    mov         eax,dword ptr [eax+480]
 0053119A    mov         eax,dword ptr [eax+220]
 005311A0    mov         ecx,dword ptr [eax]
 005311A2    call        dword ptr [ecx+38]
>005311A5    jmp         00531208
 005311A7    lea         eax,[ebp-34]
 005311AA    push        eax
 005311AB    mov         eax,dword ptr [ebp-18]
 005311AE    cdq
 005311AF    xor         eax,edx
 005311B1    sub         eax,edx
 005311B3    mov         dword ptr [ebp-2C],eax
 005311B6    mov         byte ptr [ebp-28],0
 005311BA    lea         ecx,[ebp-38]
 005311BD    mov         eax,dword ptr [ebp-14]
 005311C0    movzx       edx,word ptr [eax]
 005311C3    mov         eax,dword ptr [ebp-4]
 005311C6    mov         eax,dword ptr [eax+10]
 005311C9    mov         eax,dword ptr [eax+10]
 005311CC    call        00524A60
 005311D1    mov         eax,dword ptr [ebp-38]
 005311D4    mov         dword ptr [ebp-24],eax
 005311D7    mov         byte ptr [ebp-20],0B
 005311DB    lea         edx,[ebp-2C]
 005311DE    mov         ecx,1
 005311E3    mov         eax,531258;'You sold %d * %s'
 005311E8    call        Format
 005311ED    mov         edx,dword ptr [ebp-34]
 005311F0    mov         eax,[0055B21C];^gvar_0055E118
 005311F5    mov         eax,dword ptr [eax]
 005311F7    mov         eax,dword ptr [eax+480]
 005311FD    mov         eax,dword ptr [eax+220]
 00531203    mov         ecx,dword ptr [eax]
 00531205    call        dword ptr [ecx+38]
 00531208    xor         eax,eax
 0053120A    pop         edx
 0053120B    pop         ecx
 0053120C    pop         ecx
 0053120D    mov         dword ptr fs:[eax],edx
 00531210    push        531232
 00531215    lea         eax,[ebp-38]
 00531218    mov         edx,3
 0053121D    call        @LStrArrayClr
 00531222    lea         eax,[ebp-1C]
 00531225    call        @LStrClr
 0053122A    ret
>0053122B    jmp         @HandleFinally
>00531230    jmp         00531215
 00531232    mov         esp,ebp
 00531234    pop         ebp
 00531235    ret
end;*}

//0053126C
{*procedure sub_0053126C(?:?; ?:Int64; ?:?; ?:?);
begin
 0053126C    push        ebp
 0053126D    mov         ebp,esp
 0053126F    add         esp,0FFFFFFD8
 00531272    push        ebx
 00531273    xor         ebx,ebx
 00531275    mov         dword ptr [ebp-10],ebx
 00531278    mov         dword ptr [ebp-0C],ecx
 0053127B    mov         dword ptr [ebp-8],edx
 0053127E    mov         dword ptr [ebp-4],eax
 00531281    xor         eax,eax
 00531283    push        ebp
 00531284    push        53131B
 00531289    push        dword ptr fs:[eax]
 0053128C    mov         dword ptr fs:[eax],esp
 0053128F    lea         eax,[ebp-10]
 00531292    push        eax
 00531293    mov         eax,dword ptr [ebp-8]
 00531296    mov         dword ptr [ebp-28],eax
 00531299    mov         byte ptr [ebp-24],0
 0053129D    mov         eax,dword ptr [ebp-0C]
 005312A0    mov         dword ptr [ebp-20],eax
 005312A3    mov         byte ptr [ebp-1C],0
 005312A7    mov         eax,dword ptr [ebp+8]
 005312AA    mov         dword ptr [ebp-18],eax
 005312AD    mov         byte ptr [ebp-14],0
 005312B1    lea         edx,[ebp-28]
 005312B4    mov         ecx,2
 005312B9    mov         eax,531334;'Register to sell: ItemId %d, SelectedCount %d, Price %d '
 005312BE    call        Format
 005312C3    mov         edx,dword ptr [ebp-10]
 005312C6    mov         eax,[0055B21C];^gvar_0055E118
 005312CB    mov         eax,dword ptr [eax]
 005312CD    mov         eax,dword ptr [eax+480]
 005312D3    mov         eax,dword ptr [eax+220]
 005312D9    mov         ecx,dword ptr [eax]
 005312DB    call        dword ptr [ecx+38]
 005312DE    mov         eax,dword ptr [ebp-4]
 005312E1    cmp         byte ptr [eax+20],0
>005312E5    je          00531305
 005312E7    mov         eax,dword ptr [ebp-4]
 005312EA    cmp         dword ptr [eax+1C],0
>005312EE    je          00531305
 005312F0    mov         eax,dword ptr [ebp+8]
 005312F3    push        eax
 005312F4    mov         ecx,dword ptr [ebp-0C]
 005312F7    mov         edx,dword ptr [ebp-8]
 005312FA    mov         eax,dword ptr [ebp-4]
 005312FD    mov         eax,dword ptr [eax+1C]
 00531300    call        00532134
 00531305    xor         eax,eax
 00531307    pop         edx
 00531308    pop         ecx
 00531309    pop         ecx
 0053130A    mov         dword ptr fs:[eax],edx
 0053130D    push        531322
 00531312    lea         eax,[ebp-10]
 00531315    call        @LStrClr
 0053131A    ret
>0053131B    jmp         @HandleFinally
>00531320    jmp         00531312
 00531322    pop         ebx
 00531323    mov         esp,ebp
 00531325    pop         ebp
 00531326    ret         4
end;*}

//00531370
{*procedure sub_00531370(?:?; ?:AnsiString);
begin
 00531370    push        ebp
 00531371    mov         ebp,esp
 00531373    add         esp,0FFFFFFF4
 00531376    xor         ecx,ecx
 00531378    mov         dword ptr [ebp-0C],ecx
 0053137B    mov         dword ptr [ebp-8],edx
 0053137E    mov         dword ptr [ebp-4],eax
 00531381    mov         eax,dword ptr [ebp-8]
 00531384    call        @LStrAddRef
 00531389    xor         eax,eax
 0053138B    push        ebp
 0053138C    push        53140B
 00531391    push        dword ptr fs:[eax]
 00531394    mov         dword ptr fs:[eax],esp
 00531397    lea         eax,[ebp-0C]
 0053139A    mov         ecx,dword ptr [ebp-8]
 0053139D    mov         edx,531420;'New shop title set: '
 005313A2    call        @LStrCat3
 005313A7    mov         edx,dword ptr [ebp-0C]
 005313AA    mov         eax,[0055B21C];^gvar_0055E118
 005313AF    mov         eax,dword ptr [eax]
 005313B1    mov         eax,dword ptr [eax+480]
 005313B7    mov         eax,dword ptr [eax+220]
 005313BD    mov         ecx,dword ptr [eax]
 005313BF    call        dword ptr [ecx+38]
 005313C2    mov         eax,dword ptr [ebp-4]
 005313C5    add         eax,2C
 005313C8    mov         edx,dword ptr [ebp-8]
 005313CB    call        @LStrAsg
 005313D0    mov         eax,dword ptr [ebp-4]
 005313D3    cmp         byte ptr [eax+20],0
>005313D7    je          005313F0
 005313D9    mov         eax,dword ptr [ebp-4]
 005313DC    cmp         dword ptr [eax+1C],0
>005313E0    je          005313F0
 005313E2    mov         edx,dword ptr [ebp-8]
 005313E5    mov         eax,dword ptr [ebp-4]
 005313E8    mov         eax,dword ptr [eax+1C]
 005313EB    call        0053221C
 005313F0    xor         eax,eax
 005313F2    pop         edx
 005313F3    pop         ecx
 005313F4    pop         ecx
 005313F5    mov         dword ptr fs:[eax],edx
 005313F8    push        531412
 005313FD    lea         eax,[ebp-0C]
 00531400    mov         edx,2
 00531405    call        @LStrArrayClr
 0053140A    ret
>0053140B    jmp         @HandleFinally
>00531410    jmp         005313FD
 00531412    mov         esp,ebp
 00531414    pop         ebp
 00531415    ret
end;*}

//00531438
{*procedure sub_00531438(?:?; ?:?);
begin
 00531438    push        ebp
 00531439    mov         ebp,esp
 0053143B    add         esp,0FFFFFFEC
 0053143E    xor         ecx,ecx
 00531440    mov         dword ptr [ebp-0C],ecx
 00531443    mov         dword ptr [ebp-8],edx
 00531446    mov         dword ptr [ebp-4],eax
 00531449    xor         eax,eax
 0053144B    push        ebp
 0053144C    push        5314A5
 00531451    push        dword ptr fs:[eax]
 00531454    mov         dword ptr fs:[eax],esp
 00531457    lea         eax,[ebp-0C]
 0053145A    push        eax
 0053145B    mov         eax,dword ptr [ebp-8]
 0053145E    mov         dword ptr [ebp-14],eax
 00531461    mov         byte ptr [ebp-10],0
 00531465    lea         edx,[ebp-14]
 00531468    xor         ecx,ecx
 0053146A    mov         eax,5314B8;'Deleting ItemId %d'
 0053146F    call        Format
 00531474    mov         edx,dword ptr [ebp-0C]
 00531477    mov         eax,[0055B21C];^gvar_0055E118
 0053147C    mov         eax,dword ptr [eax]
 0053147E    mov         eax,dword ptr [eax+480]
 00531484    mov         eax,dword ptr [eax+220]
 0053148A    mov         ecx,dword ptr [eax]
 0053148C    call        dword ptr [ecx+38]
 0053148F    xor         eax,eax
 00531491    pop         edx
 00531492    pop         ecx
 00531493    pop         ecx
 00531494    mov         dword ptr fs:[eax],edx
 00531497    push        5314AC
 0053149C    lea         eax,[ebp-0C]
 0053149F    call        @LStrClr
 005314A4    ret
>005314A5    jmp         @HandleFinally
>005314AA    jmp         0053149C
 005314AC    mov         esp,ebp
 005314AE    pop         ebp
 005314AF    ret
end;*}

//005314CC
{*procedure sub_005314CC(?:?);
begin
 005314CC    push        ebp
 005314CD    mov         ebp,esp
 005314CF    push        ecx
 005314D0    mov         dword ptr [ebp-4],eax
 005314D3    mov         eax,dword ptr [ebp-4]
 005314D6    cmp         byte ptr [eax+28],0
>005314DA    je          00531500
 005314DC    mov         eax,[0055B21C];^gvar_0055E118
 005314E1    mov         eax,dword ptr [eax]
 005314E3    mov         eax,dword ptr [eax+480]
 005314E9    mov         eax,dword ptr [eax+220]
 005314EF    mov         edx,53150C;'Stall closed!'
 005314F4    mov         ecx,dword ptr [eax]
 005314F6    call        dword ptr [ecx+38]
 005314F9    mov         eax,dword ptr [ebp-4]
 005314FC    mov         byte ptr [eax+28],0
 00531500    pop         ecx
 00531501    pop         ebp
 00531502    ret
end;*}

//0053151C
{*procedure sub_0053151C(?:?);
begin
 0053151C    push        ebp
 0053151D    mov         ebp,esp
 0053151F    push        ecx
 00531520    mov         dword ptr [ebp-4],eax
 00531523    mov         eax,[0055B21C];^gvar_0055E118
 00531528    mov         eax,dword ptr [eax]
 0053152A    mov         eax,dword ptr [eax+480]
 00531530    mov         eax,dword ptr [eax+220]
 00531536    mov         edx,531554;'Stall open!'
 0053153B    mov         ecx,dword ptr [eax]
 0053153D    call        dword ptr [ecx+38]
 00531540    mov         eax,dword ptr [ebp-4]
 00531543    mov         byte ptr [eax+28],1
 00531547    pop         ecx
 00531548    pop         ebp
 00531549    ret
end;*}

//00531560
{*procedure sub_00531560(?:TAutoStall; ?:?);
begin
 00531560    push        ebp
 00531561    mov         ebp,esp
 00531563    add         esp,0FFFFFFEC
 00531566    push        ebx
 00531567    push        esi
 00531568    push        edi
 00531569    xor         ecx,ecx
 0053156B    mov         dword ptr [ebp-0C],ecx
 0053156E    mov         dword ptr [ebp-8],edx
 00531571    mov         dword ptr [ebp-4],eax
 00531574    mov         eax,dword ptr [ebp-8]
 00531577    call        @LStrAddRef
 0053157C    xor         eax,eax
 0053157E    push        ebp
 0053157F    push        531676
 00531584    push        dword ptr fs:[eax]
 00531587    mov         dword ptr fs:[eax],esp
 0053158A    mov         eax,dword ptr [ebp-4]
 0053158D    cmp         byte ptr [eax+20],0
>00531591    je          005315A9
 00531593    mov         ecx,53168C;'Other mactro is in recording process.'
 00531598    mov         dl,1
 0053159A    mov         eax,[005309DC];EOtherMacroRecording
 0053159F    call        Exception.Create;EOtherMacroRecording.Create
 005315A4    call        @RaiseExcept
 005315A9    mov         eax,dword ptr [ebp-4]
 005315AC    mov         eax,dword ptr [eax+24]
 005315AF    mov         edx,dword ptr [ebp-8]
 005315B2    mov         ecx,dword ptr [eax]
 005315B4    call        dword ptr [ecx+54]
 005315B7    test        eax,eax
>005315B9    jl          005315EC
 005315BB    lea         eax,[ebp-0C]
 005315BE    push        eax
 005315BF    mov         eax,dword ptr [ebp-8]
 005315C2    mov         dword ptr [ebp-14],eax
 005315C5    mov         byte ptr [ebp-10],0B
 005315C9    lea         edx,[ebp-14]
 005315CC    xor         ecx,ecx
 005315CE    mov         eax,5316BC;'Other macro with name "%s" alredy exist.'
 005315D3    call        Format
 005315D8    mov         ecx,dword ptr [ebp-0C]
 005315DB    mov         dl,1
 005315DD    mov         eax,[00530A40];EMacroNameAlredyExist
 005315E2    call        Exception.Create;EMacroNameAlredyExist.Create
 005315E7    call        @RaiseExcept
 005315EC    mov         eax,dword ptr [ebp-4]
 005315EF    mov         byte ptr [eax+20],1
 005315F3    mov         eax,dword ptr [ebp-4]
 005315F6    add         eax,18
 005315F9    mov         edx,dword ptr [ebp-8]
 005315FC    call        @LStrAsg
 00531601    mov         dl,1
 00531603    mov         eax,[00530B44];TStallMacro
 00531608    call        TStallMacro.Create;TStallMacro.Create
 0053160D    mov         edx,dword ptr [ebp-4]
 00531610    mov         dword ptr [edx+1C],eax
 00531613    xor         eax,eax
 00531615    push        ebp
 00531616    push        53163F
 0053161B    push        dword ptr fs:[eax]
 0053161E    mov         dword ptr fs:[eax],esp
 00531621    mov         eax,dword ptr [ebp-4]
 00531624    mov         ecx,dword ptr [eax+1C]
 00531627    mov         eax,dword ptr [ebp-4]
 0053162A    mov         eax,dword ptr [eax+24]
 0053162D    mov         edx,dword ptr [ebp-8]
 00531630    mov         ebx,dword ptr [eax]
 00531632    call        dword ptr [ebx+3C]
 00531635    xor         eax,eax
 00531637    pop         edx
 00531638    pop         ecx
 00531639    pop         ecx
 0053163A    mov         dword ptr fs:[eax],edx
>0053163D    jmp         0053165B
>0053163F    jmp         @HandleAnyException
 00531644    mov         eax,dword ptr [ebp-4]
 00531647    add         eax,1C
 0053164A    call        FreeAndNil
 0053164F    mov         eax,dword ptr [ebp-4]
 00531652    mov         byte ptr [eax+20],0
 00531656    call        @DoneExcept
 0053165B    xor         eax,eax
 0053165D    pop         edx
 0053165E    pop         ecx
 0053165F    pop         ecx
 00531660    mov         dword ptr fs:[eax],edx
 00531663    push        53167D
 00531668    lea         eax,[ebp-0C]
 0053166B    mov         edx,2
 00531670    call        @LStrArrayClr
 00531675    ret
>00531676    jmp         @HandleFinally
>0053167B    jmp         00531668
 0053167D    pop         edi
 0053167E    pop         esi
 0053167F    pop         ebx
 00531680    mov         esp,ebp
 00531682    pop         ebp
 00531683    ret
end;*}

//005316E8
{*function sub_005316E8(?:TAutoStall):?;
begin
 005316E8    push        ebp
 005316E9    mov         ebp,esp
 005316EB    add         esp,0FFFFFFEC
 005316EE    xor         edx,edx
 005316F0    mov         dword ptr [ebp-10],edx
 005316F3    mov         dword ptr [ebp-4],eax
 005316F6    xor         eax,eax
 005316F8    push        ebp
 005316F9    push        5317EA
 005316FE    push        dword ptr fs:[eax]
 00531701    mov         dword ptr fs:[eax],esp
 00531704    mov         byte ptr [ebp-5],0
 00531708    push        0
 0053170A    lea         eax,[ebp-10]
 0053170D    mov         ecx,1
 00531712    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 00531718    call        @DynArraySetLength
 0053171D    add         esp,4
 00531720    mov         byte ptr [ebp-6],0
 00531724    mov         byte ptr [ebp-7],0
 00531728    mov         eax,dword ptr [ebp-4]
 0053172B    cmp         byte ptr [eax+20],0
>0053172F    je          0053173A
 00531731    mov         eax,dword ptr [ebp-4]
 00531734    cmp         dword ptr [eax+1C],0
>00531738    jne         0053174D
 0053173A    mov         eax,dword ptr [ebp-4]
 0053173D    mov         edx,dword ptr [eax+18]
 00531740    mov         eax,dword ptr [ebp-4]
 00531743    call        005317F8
>00531748    jmp         005317CE
 0053174D    lea         edx,[ebp-10]
 00531750    mov         eax,dword ptr [ebp-4]
 00531753    mov         eax,dword ptr [eax+1C]
 00531756    call        00532110
 0053175B    mov         eax,dword ptr [ebp-4]
 0053175E    mov         eax,dword ptr [eax+1C]
 00531761    call        005320F0
 00531766    dec         eax
 00531767    test        eax,eax
>00531769    jl          00531799
 0053176B    inc         eax
 0053176C    mov         dword ptr [ebp-14],eax
 0053176F    mov         dword ptr [ebp-0C],0
 00531776    mov         eax,dword ptr [ebp-10]
 00531779    mov         edx,dword ptr [ebp-0C]
 0053177C    mov         al,byte ptr [eax+edx*8]
 0053177F    sub         al,1
>00531781    jb          00531787
>00531783    je          0053178D
>00531785    jmp         00531791
 00531787    mov         byte ptr [ebp-7],1
>0053178B    jmp         00531791
 0053178D    mov         byte ptr [ebp-6],1
 00531791    inc         dword ptr [ebp-0C]
 00531794    dec         dword ptr [ebp-14]
>00531797    jne         00531776
 00531799    cmp         byte ptr [ebp-7],0
>0053179D    je          005317A5
 0053179F    cmp         byte ptr [ebp-6],0
>005317A3    jne         005317BC
 005317A5    mov         eax,dword ptr [ebp-4]
 005317A8    mov         edx,dword ptr [eax+18]
 005317AB    mov         eax,dword ptr [ebp-4]
 005317AE    call        005317F8
 005317B3    mov         eax,dword ptr [ebp-4]
 005317B6    mov         byte ptr [eax+20],0
>005317BA    jmp         005317CE
 005317BC    mov         eax,dword ptr [ebp-4]
 005317BF    mov         byte ptr [eax+20],0
 005317C3    mov         eax,dword ptr [ebp-4]
 005317C6    mov         byte ptr [eax+21],1
 005317CA    mov         byte ptr [ebp-5],1
 005317CE    xor         eax,eax
 005317D0    pop         edx
 005317D1    pop         ecx
 005317D2    pop         ecx
 005317D3    mov         dword ptr fs:[eax],edx
 005317D6    push        5317F1
 005317DB    lea         eax,[ebp-10]
 005317DE    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 005317E4    call        @DynArrayClear
 005317E9    ret
>005317EA    jmp         @HandleFinally
>005317EF    jmp         005317DB
 005317F1    mov         al,byte ptr [ebp-5]
 005317F4    mov         esp,ebp
 005317F6    pop         ebp
 005317F7    ret
end;*}

//005317F8
{*function sub_005317F8(?:TAutoStall; ?:?):?;
begin
 005317F8    push        ebp
 005317F9    mov         ebp,esp
 005317FB    add         esp,0FFFFFFF0
 005317FE    mov         dword ptr [ebp-8],edx
 00531801    mov         dword ptr [ebp-4],eax
 00531804    mov         eax,dword ptr [ebp-8]
 00531807    call        @LStrAddRef
 0053180C    xor         eax,eax
 0053180E    push        ebp
 0053180F    push        531877
 00531814    push        dword ptr fs:[eax]
 00531817    mov         dword ptr fs:[eax],esp
 0053181A    mov         byte ptr [ebp-9],0
 0053181E    mov         edx,dword ptr [ebp-8]
 00531821    mov         eax,dword ptr [ebp-4]
 00531824    mov         eax,dword ptr [eax+24]
 00531827    mov         ecx,dword ptr [eax]
 00531829    call        dword ptr [ecx+54]
 0053182C    mov         dword ptr [ebp-10],eax
 0053182F    cmp         dword ptr [ebp-10],0
>00531833    jl          00531861
 00531835    mov         edx,dword ptr [ebp-10]
 00531838    mov         eax,dword ptr [ebp-4]
 0053183B    mov         eax,dword ptr [eax+24]
 0053183E    mov         ecx,dword ptr [eax]
 00531840    call        dword ptr [ecx+18]
 00531843    call        TObject.Free
 00531848    mov         edx,dword ptr [ebp-10]
 0053184B    mov         eax,dword ptr [ebp-4]
 0053184E    mov         eax,dword ptr [eax+24]
 00531851    mov         ecx,dword ptr [eax]
 00531853    call        dword ptr [ecx+48]
 00531856    mov         byte ptr [ebp-9],1
 0053185A    mov         eax,dword ptr [ebp-4]
 0053185D    mov         byte ptr [eax+21],1
 00531861    xor         eax,eax
 00531863    pop         edx
 00531864    pop         ecx
 00531865    pop         ecx
 00531866    mov         dword ptr fs:[eax],edx
 00531869    push        53187E
 0053186E    lea         eax,[ebp-8]
 00531871    call        @LStrClr
 00531876    ret
>00531877    jmp         @HandleFinally
>0053187C    jmp         0053186E
 0053187E    mov         al,byte ptr [ebp-9]
 00531881    mov         esp,ebp
 00531883    pop         ebp
 00531884    ret
end;*}

//00531888
{*function sub_00531888(?:TAutoStall):?;
begin
 00531888    push        ebp
 00531889    mov         ebp,esp
 0053188B    add         esp,0FFFFFFF8
 0053188E    mov         dword ptr [ebp-4],eax
 00531891    mov         eax,dword ptr [ebp-4]
 00531894    mov         eax,dword ptr [eax+24]
 00531897    mov         dword ptr [ebp-8],eax
 0053189A    mov         eax,dword ptr [ebp-8]
 0053189D    pop         ecx
 0053189E    pop         ecx
 0053189F    pop         ebp
 005318A0    ret
end;*}

//005318A4
{*function sub_005318A4(?:TAutoStall; ?:?):?;
begin
 005318A4    push        ebp
 005318A5    mov         ebp,esp
 005318A7    add         esp,0FFFFFFCC
 005318AA    xor         ecx,ecx
 005318AC    mov         dword ptr [ebp-34],ecx
 005318AF    mov         dword ptr [ebp-30],ecx
 005318B2    mov         dword ptr [ebp-18],ecx
 005318B5    mov         dword ptr [ebp-1C],ecx
 005318B8    mov         dword ptr [ebp-8],edx
 005318BB    mov         dword ptr [ebp-4],eax
 005318BE    mov         eax,dword ptr [ebp-8]
 005318C1    call        @LStrAddRef
 005318C6    xor         eax,eax
 005318C8    push        ebp
 005318C9    push        531B47
 005318CE    push        dword ptr fs:[eax]
 005318D1    mov         dword ptr fs:[eax],esp
 005318D4    mov         byte ptr [ebp-9],0
 005318D8    push        0
 005318DA    lea         eax,[ebp-18]
 005318DD    mov         ecx,1
 005318E2    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 005318E8    call        @DynArraySetLength
 005318ED    add         esp,4
 005318F0    push        0
 005318F2    lea         eax,[ebp-1C]
 005318F5    mov         ecx,1
 005318FA    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00531900    call        @DynArraySetLength
 00531905    add         esp,4
 00531908    mov         byte ptr [ebp-21],0
 0053190C    mov         byte ptr [ebp-22],0
 00531910    mov         eax,dword ptr [ebp-4]
 00531913    cmp         byte ptr [eax+20],0
>00531917    jne         00531B08
 0053191D    mov         edx,dword ptr [ebp-8]
 00531920    mov         eax,dword ptr [ebp-4]
 00531923    mov         eax,dword ptr [eax+24]
 00531926    mov         ecx,dword ptr [eax]
 00531928    call        dword ptr [ecx+54]
 0053192B    inc         eax
>0053192C    je          00531B08
 00531932    mov         eax,dword ptr [ebp-4]
 00531935    cmp         byte ptr [eax+28],0
>00531939    jne         00531B08
 0053193F    mov         edx,dword ptr [ebp-8]
 00531942    mov         eax,dword ptr [ebp-4]
 00531945    mov         eax,dword ptr [eax+24]
 00531948    mov         ecx,dword ptr [eax]
 0053194A    call        dword ptr [ecx+54]
 0053194D    mov         dword ptr [ebp-10],eax
 00531950    mov         edx,dword ptr [ebp-10]
 00531953    mov         eax,dword ptr [ebp-4]
 00531956    mov         eax,dword ptr [eax+24]
 00531959    mov         ecx,dword ptr [eax]
 0053195B    call        dword ptr [ecx+18]
 0053195E    mov         edx,dword ptr [ebp-4]
 00531961    mov         dword ptr [edx+1C],eax
 00531964    lea         edx,[ebp-18]
 00531967    mov         eax,dword ptr [ebp-4]
 0053196A    mov         eax,dword ptr [eax+1C]
 0053196D    call        00532110
 00531972    mov         eax,dword ptr [ebp-18]
 00531975    call        00405CE8
 0053197A    test        eax,eax
>0053197C    jl          00531AD3
 00531982    inc         eax
 00531983    mov         dword ptr [ebp-28],eax
 00531986    mov         dword ptr [ebp-14],0
 0053198D    mov         eax,dword ptr [ebp-18]
 00531990    mov         edx,dword ptr [ebp-14]
 00531993    mov         al,byte ptr [eax+edx*8]
 00531996    sub         al,1
>00531998    jb          005319A1
>0053199A    je          005319FC
>0053199C    jmp         00531AC7
 005319A1    lea         eax,[ebp-30]
 005319A4    mov         edx,dword ptr [ebp-18]
 005319A7    mov         ecx,dword ptr [ebp-14]
 005319AA    mov         edx,dword ptr [edx+ecx*8+4]
 005319AE    call        @VarToLStr
 005319B3    mov         eax,dword ptr [ebp-30]
 005319B6    lea         edx,[ebp-1C]
 005319B9    call        00521288
 005319BE    mov         eax,dword ptr [ebp-1C]
 005319C1    call        @LStrLen
 005319C6    mov         ecx,eax
 005319C8    mov         edx,dword ptr [ebp-1C]
 005319CB    mov         eax,dword ptr [ebp-4]
 005319CE    mov         eax,dword ptr [eax+0C]
 005319D1    call        0051FDFC
 005319D6    lea         eax,[ebp-34]
 005319D9    mov         edx,dword ptr [ebp-18]
 005319DC    mov         ecx,dword ptr [ebp-14]
 005319DF    mov         edx,dword ptr [edx+ecx*8+4]
 005319E3    call        @VarToLStr
 005319E8    mov         edx,dword ptr [ebp-34]
 005319EB    mov         eax,dword ptr [ebp-4]
 005319EE    call        00531370
 005319F3    mov         byte ptr [ebp-22],1
>005319F7    jmp         00531AC7
 005319FC    mov         eax,dword ptr [ebp-18]
 005319FF    mov         edx,dword ptr [ebp-14]
 00531A02    lea         eax,[eax+edx*8]
 00531A05    mov         dword ptr [ebp-2C],eax
 00531A08    mov         eax,dword ptr [ebp-2C]
 00531A0B    mov         eax,dword ptr [eax+4]
 00531A0E    call        @VarToInt64
 00531A13    mov         edx,eax
 00531A15    mov         eax,dword ptr [ebp-4]
 00531A18    mov         eax,dword ptr [eax+14]
 00531A1B    call        00526754
 00531A20    mov         dword ptr [ebp-20],eax
 00531A23    cmp         dword ptr [ebp-20],0
>00531A27    je          00531AC7
 00531A2D    lea         eax,[ebp-1C]
 00531A30    push        eax
 00531A31    mov         eax,dword ptr [ebp-2C]
 00531A34    mov         eax,dword ptr [eax+4]
 00531A37    add         eax,10
 00531A3A    call        @VarToInteger
 00531A3F    mov         edx,dword ptr [ebp-20]
 00531A42    mov         edx,dword ptr [edx+10]
 00531A45    call        0048FCA0
 00531A4A    push        eax
 00531A4B    mov         eax,dword ptr [ebp-2C]
 00531A4E    mov         eax,dword ptr [eax+4]
 00531A51    add         eax,20
 00531A54    call        @VarToInt64
 00531A59    push        eax
 00531A5A    mov         eax,dword ptr [ebp-2C]
 00531A5D    mov         eax,dword ptr [eax+4]
 00531A60    call        @VarToInt64
 00531A65    pop         ecx
 00531A66    pop         edx
 00531A67    call        00521338
 00531A6C    mov         eax,dword ptr [ebp-1C]
 00531A6F    call        @LStrLen
 00531A74    mov         ecx,eax
 00531A76    mov         edx,dword ptr [ebp-1C]
 00531A79    mov         eax,dword ptr [ebp-4]
 00531A7C    mov         eax,dword ptr [eax+0C]
 00531A7F    call        0051FDFC
 00531A84    mov         eax,dword ptr [ebp-2C]
 00531A87    mov         eax,dword ptr [eax+4]
 00531A8A    add         eax,20
 00531A8D    call        @VarToInt64
 00531A92    push        eax
 00531A93    mov         eax,dword ptr [ebp-2C]
 00531A96    mov         eax,dword ptr [eax+4]
 00531A99    add         eax,10
 00531A9C    call        @VarToInteger
 00531AA1    mov         edx,dword ptr [ebp-20]
 00531AA4    mov         edx,dword ptr [edx+10]
 00531AA7    call        0048FCA0
 00531AAC    push        eax
 00531AAD    mov         eax,dword ptr [ebp-2C]
 00531AB0    mov         eax,dword ptr [eax+4]
 00531AB3    call        @VarToInt64
 00531AB8    mov         edx,eax
 00531ABA    mov         eax,dword ptr [ebp-4]
 00531ABD    pop         ecx
 00531ABE    call        0053126C
 00531AC3    mov         byte ptr [ebp-21],1
 00531AC7    inc         dword ptr [ebp-14]
 00531ACA    dec         dword ptr [ebp-28]
>00531ACD    jne         0053198D
 00531AD3    mov         al,byte ptr [ebp-21]
 00531AD6    and         al,byte ptr [ebp-22]
>00531AD9    je          00531B08
 00531ADB    lea         edx,[ebp-1C]
 00531ADE    mov         al,1
 00531AE0    call        005213C4
 00531AE5    mov         eax,dword ptr [ebp-1C]
 00531AE8    call        @LStrLen
 00531AED    mov         ecx,eax
 00531AEF    mov         edx,dword ptr [ebp-1C]
 00531AF2    mov         eax,dword ptr [ebp-4]
 00531AF5    mov         eax,dword ptr [eax+0C]
 00531AF8    call        0051FDFC
 00531AFD    mov         eax,dword ptr [ebp-4]
 00531B00    mov         byte ptr [eax+28],1
 00531B04    mov         byte ptr [ebp-9],1
 00531B08    xor         eax,eax
 00531B0A    pop         edx
 00531B0B    pop         ecx
 00531B0C    pop         ecx
 00531B0D    mov         dword ptr fs:[eax],edx
 00531B10    push        531B4E
 00531B15    lea         eax,[ebp-34]
 00531B18    mov         edx,2
 00531B1D    call        @LStrArrayClr
 00531B22    lea         eax,[ebp-1C]
 00531B25    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00531B2B    call        @DynArrayClear
 00531B30    lea         eax,[ebp-18]
 00531B33    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 00531B39    call        @DynArrayClear
 00531B3E    lea         eax,[ebp-8]
 00531B41    call        @LStrClr
 00531B46    ret
>00531B47    jmp         @HandleFinally
>00531B4C    jmp         00531B15
 00531B4E    mov         al,byte ptr [ebp-9]
 00531B51    mov         esp,ebp
 00531B53    pop         ebp
 00531B54    ret
end;*}

//00531B58
procedure sub_00531B58(?:TAutoStall);
begin
{*
 00531B58    push        ebp
 00531B59    mov         ebp,esp
 00531B5B    add         esp,0FFFFFFC4
 00531B5E    push        ebx
 00531B5F    xor         edx,edx
 00531B61    mov         dword ptr [ebp-18],edx
 00531B64    mov         dword ptr [ebp-30],edx
 00531B67    mov         dword ptr [ebp-4],eax
 00531B6A    xor         eax,eax
 00531B6C    push        ebp
 00531B6D    push        531DCC
 00531B72    push        dword ptr fs:[eax]
 00531B75    mov         dword ptr fs:[eax],esp
 00531B78    push        0
 00531B7A    lea         eax,[ebp-30]
 00531B7D    mov         ecx,1
 00531B82    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 00531B88    call        @DynArraySetLength
 00531B8D    add         esp,4
 00531B90    mov         eax,dword ptr [ebp-4]
 00531B93    mov         eax,dword ptr [eax+24]
 00531B96    mov         edx,dword ptr [eax]
 00531B98    call        dword ptr [edx+14]
 00531B9B    mov         dword ptr [ebp-14],eax
 00531B9E    push        0FFFF
 00531BA3    mov         ecx,531DE0;'profile\ShopMacros.dat'
 00531BA8    mov         dl,1
 00531BAA    mov         eax,[00476278];TFileStream
 00531BAF    call        TFileStream.Create;TFileStream.Create
 00531BB4    mov         dword ptr [ebp-10],eax
 00531BB7    xor         eax,eax
 00531BB9    push        ebp
 00531BBA    push        531D9A
 00531BBF    push        dword ptr fs:[eax]
 00531BC2    mov         dword ptr fs:[eax],esp
 00531BC5    cmp         dword ptr [ebp-14],0
>00531BC9    jne         00531BDC
 00531BCB    mov         eax,dword ptr [ebp-4]
 00531BCE    mov         byte ptr [eax+21],0
 00531BD2    call        @TryFinallyExit
>00531BD7    jmp         00531DA8
 00531BDC    lea         edx,[ebp-14]
 00531BDF    mov         ecx,4
 00531BE4    mov         eax,dword ptr [ebp-10]
 00531BE7    call        0047BF70
 00531BEC    mov         eax,dword ptr [ebp-14]
 00531BEF    dec         eax
 00531BF0    test        eax,eax
>00531BF2    jl          00531D84
 00531BF8    inc         eax
 00531BF9    mov         dword ptr [ebp-38],eax
 00531BFC    mov         dword ptr [ebp-8],0
 00531C03    lea         ecx,[ebp-18]
 00531C06    mov         eax,dword ptr [ebp-4]
 00531C09    mov         eax,dword ptr [eax+24]
 00531C0C    mov         edx,dword ptr [ebp-8]
 00531C0F    mov         ebx,dword ptr [eax]
 00531C11    call        dword ptr [ebx+0C]
 00531C14    mov         eax,dword ptr [ebp-18]
 00531C17    call        @DynArrayLength
 00531C1C    mov         dword ptr [ebp-1C],eax
 00531C1F    lea         edx,[ebp-1C]
 00531C22    mov         ecx,4
 00531C27    mov         eax,dword ptr [ebp-10]
 00531C2A    call        0047BF70
 00531C2F    lea         eax,[ebp-18]
 00531C32    call        00404C34
 00531C37    mov         edx,eax
 00531C39    mov         ecx,dword ptr [ebp-1C]
 00531C3C    mov         eax,dword ptr [ebp-10]
 00531C3F    call        0047BF70
 00531C44    mov         eax,dword ptr [ebp-4]
 00531C47    mov         eax,dword ptr [eax+24]
 00531C4A    mov         edx,dword ptr [ebp-8]
 00531C4D    mov         ecx,dword ptr [eax]
 00531C4F    call        dword ptr [ecx+18]
 00531C52    mov         dword ptr [ebp-2C],eax
 00531C55    lea         edx,[ebp-30]
 00531C58    mov         eax,dword ptr [ebp-2C]
 00531C5B    call        00532110
 00531C60    mov         eax,dword ptr [ebp-30]
 00531C63    call        @LStrLen
 00531C68    mov         dword ptr [ebp-34],eax
 00531C6B    lea         edx,[ebp-34]
 00531C6E    mov         ecx,4
 00531C73    mov         eax,dword ptr [ebp-10]
 00531C76    call        0047BF70
 00531C7B    mov         eax,dword ptr [ebp-34]
 00531C7E    dec         eax
 00531C7F    test        eax,eax
>00531C81    jl          00531D78
 00531C87    inc         eax
 00531C88    mov         dword ptr [ebp-3C],eax
 00531C8B    mov         dword ptr [ebp-0C],0
 00531C92    mov         eax,dword ptr [ebp-30]
 00531C95    mov         edx,dword ptr [ebp-0C]
 00531C98    lea         edx,[eax+edx*8]
 00531C9B    mov         ecx,1
 00531CA0    mov         eax,dword ptr [ebp-10]
 00531CA3    call        0047BF70
 00531CA8    mov         eax,dword ptr [ebp-30]
 00531CAB    mov         edx,dword ptr [ebp-0C]
 00531CAE    mov         al,byte ptr [eax+edx*8]
 00531CB1    sub         al,1
>00531CB3    jb          00531CBC
>00531CB5    je          00531D00
>00531CB7    jmp         00531D6C
 00531CBC    lea         eax,[ebp-18]
 00531CBF    mov         edx,dword ptr [ebp-30]
 00531CC2    mov         ecx,dword ptr [ebp-0C]
 00531CC5    mov         edx,dword ptr [edx+ecx*8+4]
 00531CC9    call        @VarToLStr
 00531CCE    mov         eax,dword ptr [ebp-18]
 00531CD1    call        @DynArrayLength
 00531CD6    mov         dword ptr [ebp-1C],eax
 00531CD9    lea         edx,[ebp-1C]
 00531CDC    mov         ecx,4
 00531CE1    mov         eax,dword ptr [ebp-10]
 00531CE4    call        0047BF70
 00531CE9    lea         eax,[ebp-18]
 00531CEC    call        00404C34
 00531CF1    mov         edx,eax
 00531CF3    mov         ecx,dword ptr [ebp-1C]
 00531CF6    mov         eax,dword ptr [ebp-10]
 00531CF9    call        0047BF70
>00531CFE    jmp         00531D6C
 00531D00    mov         eax,dword ptr [ebp-30]
 00531D03    mov         edx,dword ptr [ebp-0C]
 00531D06    mov         eax,dword ptr [eax+edx*8+4]
 00531D0A    call        @VarToInt64
 00531D0F    mov         dword ptr [ebp-20],eax
 00531D12    mov         eax,dword ptr [ebp-30]
 00531D15    mov         edx,dword ptr [ebp-0C]
 00531D18    mov         eax,dword ptr [eax+edx*8+4]
 00531D1C    add         eax,10
 00531D1F    call        @VarToInt64
 00531D24    mov         dword ptr [ebp-24],eax
 00531D27    mov         eax,dword ptr [ebp-30]
 00531D2A    mov         edx,dword ptr [ebp-0C]
 00531D2D    mov         eax,dword ptr [eax+edx*8+4]
 00531D31    add         eax,20
 00531D34    call        @VarToInt64
 00531D39    mov         dword ptr [ebp-28],eax
 00531D3C    lea         edx,[ebp-20]
 00531D3F    mov         ecx,4
 00531D44    mov         eax,dword ptr [ebp-10]
 00531D47    call        0047BF70
 00531D4C    lea         edx,[ebp-24]
 00531D4F    mov         ecx,4
 00531D54    mov         eax,dword ptr [ebp-10]
 00531D57    call        0047BF70
 00531D5C    lea         edx,[ebp-28]
 00531D5F    mov         ecx,4
 00531D64    mov         eax,dword ptr [ebp-10]
 00531D67    call        0047BF70
 00531D6C    inc         dword ptr [ebp-0C]
 00531D6F    dec         dword ptr [ebp-3C]
>00531D72    jne         00531C92
 00531D78    inc         dword ptr [ebp-8]
 00531D7B    dec         dword ptr [ebp-38]
>00531D7E    jne         00531C03
 00531D84    xor         eax,eax
 00531D86    pop         edx
 00531D87    pop         ecx
 00531D88    pop         ecx
 00531D89    mov         dword ptr fs:[eax],edx
 00531D8C    push        531DA1
 00531D91    mov         eax,dword ptr [ebp-10]
 00531D94    call        TObject.Free
 00531D99    ret
>00531D9A    jmp         @HandleFinally
>00531D9F    jmp         00531D91
 00531DA1    mov         eax,dword ptr [ebp-4]
 00531DA4    mov         byte ptr [eax+21],0
 00531DA8    xor         eax,eax
 00531DAA    pop         edx
 00531DAB    pop         ecx
 00531DAC    pop         ecx
 00531DAD    mov         dword ptr fs:[eax],edx
 00531DB0    push        531DD3
 00531DB5    lea         eax,[ebp-30]
 00531DB8    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 00531DBE    call        @DynArrayClear
 00531DC3    lea         eax,[ebp-18]
 00531DC6    call        @LStrClr
 00531DCB    ret
>00531DCC    jmp         @HandleFinally
>00531DD1    jmp         00531DB5
 00531DD3    pop         ebx
 00531DD4    mov         esp,ebp
 00531DD6    pop         ebp
 00531DD7    ret
*}
end;

//00531DF8
{*function sub_00531DF8(?:TAutoStall):?;
begin
 00531DF8    push        ebp
 00531DF9    mov         ebp,esp
 00531DFB    add         esp,0FFFFFFBC
 00531DFE    push        ebx
 00531DFF    xor         edx,edx
 00531E01    mov         dword ptr [ebp-1C],edx
 00531E04    mov         dword ptr [ebp-34],edx
 00531E07    mov         dword ptr [ebp-4],eax
 00531E0A    xor         eax,eax
 00531E0C    push        ebp
 00531E0D    push        53200F
 00531E12    push        dword ptr fs:[eax]
 00531E15    mov         dword ptr fs:[eax],esp
 00531E18    mov         byte ptr [ebp-5],0
 00531E1C    push        0
 00531E1E    lea         eax,[ebp-34]
 00531E21    mov         ecx,1
 00531E26    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 00531E2C    call        @DynArraySetLength
 00531E31    add         esp,4
 00531E34    push        0
 00531E36    mov         ecx,532028;'profile\ShopMacros.dat'
 00531E3B    mov         dl,1
 00531E3D    mov         eax,[00476278];TFileStream
 00531E42    call        TFileStream.Create;TFileStream.Create
 00531E47    mov         dword ptr [ebp-14],eax
 00531E4A    xor         eax,eax
 00531E4C    push        ebp
 00531E4D    push        531FDD
 00531E52    push        dword ptr fs:[eax]
 00531E55    mov         dword ptr fs:[eax],esp
 00531E58    mov         eax,dword ptr [ebp-14]
 00531E5B    mov         edx,dword ptr [eax]
 00531E5D    call        dword ptr [edx];TFileStream.sub_0047BD10
 00531E5F    cmp         edx,0
>00531E62    jne         00531E6B
 00531E64    cmp         eax,4
>00531E67    ja          00531E77
>00531E69    jmp         00531E6D
>00531E6B    jg          00531E77
 00531E6D    call        @TryFinallyExit
>00531E72    jmp         00531FEB
 00531E77    lea         edx,[ebp-18]
 00531E7A    mov         ecx,4
 00531E7F    mov         eax,dword ptr [ebp-14]
 00531E82    call        0047BF28
 00531E87    mov         eax,dword ptr [ebp-18]
 00531E8A    dec         eax
 00531E8B    test        eax,eax
>00531E8D    jl          00531FC7
 00531E93    inc         eax
 00531E94    mov         dword ptr [ebp-40],eax
 00531E97    mov         dword ptr [ebp-0C],0
 00531E9E    lea         edx,[ebp-20]
 00531EA1    mov         ecx,4
 00531EA6    mov         eax,dword ptr [ebp-14]
 00531EA9    call        0047BF28
 00531EAE    lea         eax,[ebp-1C]
 00531EB1    mov         edx,dword ptr [ebp-20]
 00531EB4    call        @LStrSetLength
 00531EB9    lea         eax,[ebp-1C]
 00531EBC    call        00404C34
 00531EC1    mov         edx,eax
 00531EC3    mov         ecx,dword ptr [ebp-20]
 00531EC6    mov         eax,dword ptr [ebp-14]
 00531EC9    call        0047BF28
 00531ECE    mov         dl,1
 00531ED0    mov         eax,[00530B44];TStallMacro
 00531ED5    call        TStallMacro.Create;TStallMacro.Create
 00531EDA    mov         dword ptr [ebp-30],eax
 00531EDD    mov         eax,dword ptr [ebp-4]
 00531EE0    mov         eax,dword ptr [eax+24]
 00531EE3    mov         ecx,dword ptr [ebp-30]
 00531EE6    mov         edx,dword ptr [ebp-1C]
 00531EE9    mov         ebx,dword ptr [eax]
 00531EEB    call        dword ptr [ebx+3C]
 00531EEE    lea         edx,[ebp-38]
 00531EF1    mov         ecx,4
 00531EF6    mov         eax,dword ptr [ebp-14]
 00531EF9    call        0047BF28
 00531EFE    mov         eax,dword ptr [ebp-38]
 00531F01    dec         eax
 00531F02    test        eax,eax
>00531F04    jl          00531FBB
 00531F0A    inc         eax
 00531F0B    mov         dword ptr [ebp-44],eax
 00531F0E    mov         dword ptr [ebp-10],0
 00531F15    lea         edx,[ebp-39]
 00531F18    mov         ecx,1
 00531F1D    mov         eax,dword ptr [ebp-14]
 00531F20    call        0047BF28
 00531F25    mov         al,byte ptr [ebp-39]
 00531F28    sub         al,1
>00531F2A    jb          00531F30
>00531F2C    je          00531F6D
>00531F2E    jmp         00531FAF
 00531F30    lea         edx,[ebp-20]
 00531F33    mov         ecx,4
 00531F38    mov         eax,dword ptr [ebp-14]
 00531F3B    call        0047BF28
 00531F40    lea         eax,[ebp-1C]
 00531F43    mov         edx,dword ptr [ebp-20]
 00531F46    call        @LStrSetLength
 00531F4B    lea         eax,[ebp-1C]
 00531F4E    call        00404C34
 00531F53    mov         edx,eax
 00531F55    mov         ecx,dword ptr [ebp-20]
 00531F58    mov         eax,dword ptr [ebp-14]
 00531F5B    call        0047BF28
 00531F60    mov         edx,dword ptr [ebp-1C]
 00531F63    mov         eax,dword ptr [ebp-30]
 00531F66    call        0053221C
>00531F6B    jmp         00531FAF
 00531F6D    lea         edx,[ebp-24]
 00531F70    mov         ecx,4
 00531F75    mov         eax,dword ptr [ebp-14]
 00531F78    call        0047BF28
 00531F7D    lea         edx,[ebp-28]
 00531F80    mov         ecx,4
 00531F85    mov         eax,dword ptr [ebp-14]
 00531F88    call        0047BF28
 00531F8D    lea         edx,[ebp-2C]
 00531F90    mov         ecx,4
 00531F95    mov         eax,dword ptr [ebp-14]
 00531F98    call        0047BF28
 00531F9D    mov         eax,dword ptr [ebp-2C]
 00531FA0    push        eax
 00531FA1    mov         ecx,dword ptr [ebp-28]
 00531FA4    mov         edx,dword ptr [ebp-24]
 00531FA7    mov         eax,dword ptr [ebp-30]
 00531FAA    call        00532134
 00531FAF    inc         dword ptr [ebp-10]
 00531FB2    dec         dword ptr [ebp-44]
>00531FB5    jne         00531F15
 00531FBB    inc         dword ptr [ebp-0C]
 00531FBE    dec         dword ptr [ebp-40]
>00531FC1    jne         00531E9E
 00531FC7    xor         eax,eax
 00531FC9    pop         edx
 00531FCA    pop         ecx
 00531FCB    pop         ecx
 00531FCC    mov         dword ptr fs:[eax],edx
 00531FCF    push        531FE4
 00531FD4    mov         eax,dword ptr [ebp-14]
 00531FD7    call        TObject.Free
 00531FDC    ret
>00531FDD    jmp         @HandleFinally
>00531FE2    jmp         00531FD4
 00531FE4    mov         eax,dword ptr [ebp-4]
 00531FE7    mov         byte ptr [eax+21],0
 00531FEB    xor         eax,eax
 00531FED    pop         edx
 00531FEE    pop         ecx
 00531FEF    pop         ecx
 00531FF0    mov         dword ptr fs:[eax],edx
 00531FF3    push        532016
 00531FF8    lea         eax,[ebp-34]
 00531FFB    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 00532001    call        @DynArrayClear
 00532006    lea         eax,[ebp-1C]
 00532009    call        @LStrClr
 0053200E    ret
>0053200F    jmp         @HandleFinally
>00532014    jmp         00531FF8
 00532016    mov         al,byte ptr [ebp-5]
 00532019    pop         ebx
 0053201A    mov         esp,ebp
 0053201C    pop         ebp
 0053201D    ret
end;*}

//00532040
procedure sub_00532040(?:TStallMacro);
begin
{*
 00532040    push        ebp
 00532041    mov         ebp,esp
 00532043    push        ecx
 00532044    mov         dword ptr [ebp-4],eax
 00532047    push        0
 00532049    mov         eax,dword ptr [ebp-4]
 0053204C    add         eax,4
 0053204F    mov         ecx,1
 00532054    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 0053205A    call        @DynArraySetLength
 0053205F    add         esp,4
 00532062    pop         ecx
 00532063    pop         ebp
 00532064    ret
*}
end;

//00532068
constructor TStallMacro.Create;
begin
{*
 00532068    push        ebp
 00532069    mov         ebp,esp
 0053206B    add         esp,0FFFFFFF8
 0053206E    test        dl,dl
>00532070    je          0053207A
 00532072    add         esp,0FFFFFFF0
 00532075    call        @ClassCreate
 0053207A    mov         byte ptr [ebp-5],dl
 0053207D    mov         dword ptr [ebp-4],eax
 00532080    xor         edx,edx
 00532082    mov         eax,dword ptr [ebp-4]
 00532085    call        TObject.Create
 0053208A    mov         eax,dword ptr [ebp-4]
 0053208D    call        00532040
 00532092    mov         eax,dword ptr [ebp-4]
 00532095    cmp         byte ptr [ebp-5],0
>00532099    je          005320AA
 0053209B    call        @AfterConstruction
 005320A0    pop         dword ptr fs:[0]
 005320A7    add         esp,0C
 005320AA    mov         eax,dword ptr [ebp-4]
 005320AD    pop         ecx
 005320AE    pop         ecx
 005320AF    pop         ebp
 005320B0    ret
*}
end;

//005320F0
{*function sub_005320F0(?:?):?;
begin
 005320F0    push        ebp
 005320F1    mov         ebp,esp
 005320F3    add         esp,0FFFFFFF8
 005320F6    mov         dword ptr [ebp-4],eax
 005320F9    mov         eax,dword ptr [ebp-4]
 005320FC    mov         eax,dword ptr [eax+4]
 005320FF    call        @LStrLen
 00532104    mov         dword ptr [ebp-8],eax
 00532107    mov         eax,dword ptr [ebp-8]
 0053210A    pop         ecx
 0053210B    pop         ecx
 0053210C    pop         ebp
 0053210D    ret
end;*}

//00532110
{*procedure sub_00532110(?:?; ?:?);
begin
 00532110    push        ebp
 00532111    mov         ebp,esp
 00532113    add         esp,0FFFFFFF8
 00532116    mov         dword ptr [ebp-8],edx
 00532119    mov         dword ptr [ebp-4],eax
 0053211C    mov         eax,dword ptr [ebp-8]
 0053211F    mov         edx,dword ptr [ebp-4]
 00532122    mov         edx,dword ptr [edx+4]
 00532125    mov         ecx,dword ptr ds:[530B0C];TDynMacroCommands
 0053212B    call        @DynArrayAsg
 00532130    pop         ecx
 00532131    pop         ecx
 00532132    pop         ebp
 00532133    ret
end;*}

//00532134
{*procedure sub_00532134(?:TStallMacro; ?:Byte; ?:Byte; ?:?);
begin
 00532134    push        ebp
 00532135    mov         ebp,esp
 00532137    add         esp,0FFFFFFEC
 0053213A    mov         dword ptr [ebp-0C],ecx
 0053213D    mov         dword ptr [ebp-8],edx
 00532140    mov         dword ptr [ebp-4],eax
 00532143    lea         eax,[ebp-14]
 00532146    mov         edx,dword ptr ds:[530AE0];TSingleMacroCommand
 0053214C    call        @AddRefRecord
 00532151    xor         eax,eax
 00532153    push        ebp
 00532154    push        53220C
 00532159    push        dword ptr fs:[eax]
 0053215C    mov         dword ptr fs:[eax],esp
 0053215F    mov         byte ptr [ebp-14],1
 00532163    push        3
 00532165    lea         eax,[ebp-10]
 00532168    mov         ecx,1
 0053216D    mov         edx,dword ptr ds:[530AA4];TDynCommandParameters
 00532173    call        @DynArraySetLength
 00532178    add         esp,4
 0053217B    mov         eax,dword ptr [ebp-10]
 0053217E    mov         edx,dword ptr [ebp-8]
 00532181    mov         cl,4
 00532183    call        @VarFromInt
 00532188    mov         eax,dword ptr [ebp-10]
 0053218B    add         eax,10
 0053218E    mov         edx,dword ptr [ebp-0C]
 00532191    mov         cl,4
 00532193    call        @VarFromInt
 00532198    mov         eax,dword ptr [ebp-10]
 0053219B    add         eax,20
 0053219E    mov         edx,dword ptr [ebp+8]
 005321A1    mov         cl,4
 005321A3    call        @VarFromInt
 005321A8    mov         eax,dword ptr [ebp-4]
 005321AB    mov         eax,dword ptr [eax+4];TStallMacro..........:TDynMacroCommands
 005321AE    call        @LStrLen
 005321B3    inc         eax
 005321B4    push        eax
 005321B5    mov         eax,dword ptr [ebp-4]
 005321B8    add         eax,4;TStallMacro...........:TDynMacroCommands
 005321BB    mov         ecx,1
 005321C0    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 005321C6    call        @DynArraySetLength
 005321CB    add         esp,4
 005321CE    mov         eax,dword ptr [ebp-4]
 005321D1    mov         eax,dword ptr [eax+4];TStallMacro............:TDynMacroCommands
 005321D4    call        00405CE8
 005321D9    mov         edx,dword ptr [ebp-4]
 005321DC    mov         edx,dword ptr [edx+4];TStallMacro.............:TDynMacroCommands
 005321DF    lea         eax,[edx+eax*8]
 005321E2    lea         edx,[ebp-14]
 005321E5    mov         ecx,dword ptr ds:[530AE0];TSingleMacroCommand
 005321EB    call        @CopyRecord
 005321F0    xor         eax,eax
 005321F2    pop         edx
 005321F3    pop         ecx
 005321F4    pop         ecx
 005321F5    mov         dword ptr fs:[eax],edx
 005321F8    push        532213
 005321FD    lea         eax,[ebp-14]
 00532200    mov         edx,dword ptr ds:[530AE0];TSingleMacroCommand
 00532206    call        @FinalizeRecord
 0053220B    ret
>0053220C    jmp         @HandleFinally
>00532211    jmp         005321FD
 00532213    mov         esp,ebp
 00532215    pop         ebp
 00532216    ret         4
end;*}

//0053221C
procedure sub_0053221C(?:TStallMacro; ?:AnsiString);
begin
{*
 0053221C    push        ebp
 0053221D    mov         ebp,esp
 0053221F    add         esp,0FFFFFFF0
 00532222    mov         dword ptr [ebp-8],edx
 00532225    mov         dword ptr [ebp-4],eax
 00532228    mov         eax,dword ptr [ebp-8]
 0053222B    call        @LStrAddRef
 00532230    lea         eax,[ebp-10]
 00532233    mov         edx,dword ptr ds:[530AE0];TSingleMacroCommand
 00532239    call        @AddRefRecord
 0053223E    xor         eax,eax
 00532240    push        ebp
 00532241    push        5322DF
 00532246    push        dword ptr fs:[eax]
 00532249    mov         dword ptr fs:[eax],esp
 0053224C    mov         byte ptr [ebp-10],0
 00532250    push        1
 00532252    lea         eax,[ebp-0C]
 00532255    mov         ecx,1
 0053225A    mov         edx,dword ptr ds:[530AA4];TDynCommandParameters
 00532260    call        @DynArraySetLength
 00532265    add         esp,4
 00532268    mov         eax,dword ptr [ebp-0C]
 0053226B    mov         edx,dword ptr [ebp-8]
 0053226E    call        @VarFromLStr
 00532273    mov         eax,dword ptr [ebp-4]
 00532276    mov         eax,dword ptr [eax+4];TStallMacro..............:TDynMacroCommands
 00532279    call        @LStrLen
 0053227E    inc         eax
 0053227F    push        eax
 00532280    mov         eax,dword ptr [ebp-4]
 00532283    add         eax,4;TStallMacro...............:TDynMacroCommands
 00532286    mov         ecx,1
 0053228B    mov         edx,dword ptr ds:[530B0C];TDynMacroCommands
 00532291    call        @DynArraySetLength
 00532296    add         esp,4
 00532299    mov         eax,dword ptr [ebp-4]
 0053229C    mov         eax,dword ptr [eax+4];TStallMacro................:TDynMacroCommands
 0053229F    call        00405CE8
 005322A4    mov         edx,dword ptr [ebp-4]
 005322A7    mov         edx,dword ptr [edx+4];TStallMacro.................:TDynMacroCommands
 005322AA    lea         eax,[edx+eax*8]
 005322AD    lea         edx,[ebp-10]
 005322B0    mov         ecx,dword ptr ds:[530AE0];TSingleMacroCommand
 005322B6    call        @CopyRecord
 005322BB    xor         eax,eax
 005322BD    pop         edx
 005322BE    pop         ecx
 005322BF    pop         ecx
 005322C0    mov         dword ptr fs:[eax],edx
 005322C3    push        5322E6
 005322C8    lea         eax,[ebp-10]
 005322CB    mov         edx,dword ptr ds:[530AE0];TSingleMacroCommand
 005322D1    call        @FinalizeRecord
 005322D6    lea         eax,[ebp-8]
 005322D9    call        @LStrClr
 005322DE    ret
>005322DF    jmp         @HandleFinally
>005322E4    jmp         005322C8
 005322E6    mov         esp,ebp
 005322E8    pop         ebp
 005322E9    ret
*}
end;

end.