//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit92;

interface

uses
  SysUtils, Classes, MainUnit;

type
  _DynArr_92_2 = array of IPacketsCaller;
//elSize = 4
//varType equivalent: varUnknown;
  _Arr_92_3 = array [1..256] of _DynArr_92_2;
  TListenerExecutor = class(TObject)
  public
    f4:byte;//f4
    f8:.3;//f8
    constructor Create;//00520760
  end;
  TPacketAnalyser = class(TObject)
  public
    f4:dword;//f4
    f20:byte;//f20
    f24:dword;//f24
    f28:byte;//f28
    f29:byte;//f29
    f2A:byte;//f2A
    f2C:dword;//f2C
    f30:dword;//f30
    f34:TMainForm;//f34
    f38:dword;//f38
    f3C:TMainForm;//f3C
    destructor Destroy; virtual;//0051FD38
    //procedure v0(?:?; ?:?); virtual;//v0//00520098
    //procedure v4(?:?; ?:?); virtual;//v4//005202D4
    //constructor Create(?:?; ?:?);//0051FC50
  end;
  _DynArr_92_6 = array of ?;
//elSize = 1
//varType equivalent: varByte;
  _DynArr_92_7 = array of ?;
//elSize = 1
//varType equivalent: varByte;
    destructor Destroy;//0051FD38
    procedure sub_0051FDA0(?:TPacketAnalyser);//0051FDA0
    //procedure sub_0051FDFC(?:TPacketAnalyser; ?:?; ?:Integer);//0051FDFC
    //procedure sub_0051FF58(?:TPacketAnalyser; ?:?; ?:Integer);//0051FF58
    //procedure sub_00520098(?:?; ?:?);//00520098
    //procedure sub_005202D4(?:?; ?:?);//005202D4
    //procedure sub_00520364(?:TPacketAnalyser; ?:?; ?:?);//00520364
    //procedure sub_0052038C(?:TPacketAnalyser; ?:?; ?:?);//0052038C
    //procedure sub_005203DC(?:?; ?:?; ?:?; ?:?);//005203DC
    //procedure sub_005204E4(?:?; ?:?; ?:?; ?:?);//005204E4
    //function sub_005205C8(?:?; ?:?):?;//005205C8
    //function sub_00520620(?:?; ?:?):?;//00520620
    //procedure sub_00520678(?:?; ?:?; ?:?);//00520678
    //procedure sub_005206EC(?:?; ?:?; ?:?);//005206EC
    //procedure sub_005207E4(?:?; ?:?; ?:?);//005207E4
    //procedure sub_00520878(?:?; ?:?; ?:?; ?:?);//00520878
    //function sub_00520964(?:?; ?:?):?;//00520964

implementation

//0051FC50
{*constructor TPacketAnalyser.Create(?:?; ?:?);
begin
 0051FC50    push        ebp
 0051FC51    mov         ebp,esp
 0051FC53    add         esp,0FFFFFFF4
 0051FC56    test        dl,dl
>0051FC58    je          0051FC62
 0051FC5A    add         esp,0FFFFFFF0
 0051FC5D    call        @ClassCreate
 0051FC62    mov         dword ptr [ebp-0C],ecx
 0051FC65    mov         byte ptr [ebp-5],dl
 0051FC68    mov         dword ptr [ebp-4],eax
 0051FC6B    mov         dl,1
 0051FC6D    mov         eax,[0051BD5C];TKalCrypt
 0051FC72    call        TKalCrypt.Create;TKalCrypt.Create
 0051FC77    mov         edx,dword ptr [ebp-4]
 0051FC7A    mov         dword ptr [edx+24],eax
 0051FC7D    mov         eax,dword ptr [ebp-0C]
 0051FC80    mov         eax,dword ptr [eax]
 0051FC82    mov         edx,dword ptr [ebp-4]
 0051FC85    mov         dword ptr [edx+8],eax
 0051FC88    mov         eax,dword ptr [ebp+0C]
 0051FC8B    mov         eax,dword ptr [eax]
 0051FC8D    mov         edx,dword ptr [ebp-4]
 0051FC90    mov         dword ptr [edx+0C],eax
 0051FC93    mov         eax,dword ptr [ebp-4]
 0051FC96    mov         edx,dword ptr [ebp+8]
 0051FC99    mov         dword ptr [eax+4],edx
 0051FC9C    mov         dl,1
 0051FC9E    mov         eax,[0051F710];TPacketsReader
 0051FCA3    call        TPacketsReader.Create;TPacketsReader.Create
 0051FCA8    mov         edx,dword ptr [ebp-4]
 0051FCAB    mov         dword ptr [edx+10],eax
 0051FCAE    mov         eax,dword ptr [ebp-4]
 0051FCB1    mov         eax,dword ptr [eax+10]
 0051FCB4    mov         edx,dword ptr [ebp-4]
 0051FCB7    mov         dword ptr [eax+1C],edx
 0051FCBA    mov         dword ptr [eax+18],520678;sub_00520678
 0051FCC1    mov         dl,1
 0051FCC3    mov         eax,[0051F710];TPacketsReader
 0051FCC8    call        TPacketsReader.Create;TPacketsReader.Create
 0051FCCD    mov         edx,dword ptr [ebp-4]
 0051FCD0    mov         dword ptr [edx+14],eax
 0051FCD3    mov         eax,dword ptr [ebp-4]
 0051FCD6    mov         eax,dword ptr [eax+14]
 0051FCD9    mov         edx,dword ptr [ebp-4]
 0051FCDC    mov         dword ptr [eax+1C],edx
 0051FCDF    mov         dword ptr [eax+18],5206EC;sub_005206EC
 0051FCE6    xor         ecx,ecx
 0051FCE8    mov         dl,1
 0051FCEA    mov         eax,[0051FB7C];TListenerExecutor
 0051FCEF    call        TListenerExecutor.Create;TListenerExecutor.Create
 0051FCF4    mov         edx,dword ptr [ebp-4]
 0051FCF7    mov         dword ptr [edx+18],eax
 0051FCFA    mov         cl,1
 0051FCFC    mov         dl,1
 0051FCFE    mov         eax,[0051FB7C];TListenerExecutor
 0051FD03    call        TListenerExecutor.Create;TListenerExecutor.Create
 0051FD08    mov         edx,dword ptr [ebp-4]
 0051FD0B    mov         dword ptr [edx+1C],eax
 0051FD0E    mov         eax,dword ptr [ebp-4]
 0051FD11    call        0051FDA0
 0051FD16    mov         eax,dword ptr [ebp-4]
 0051FD19    cmp         byte ptr [ebp-5],0
>0051FD1D    je          0051FD2E
 0051FD1F    call        @AfterConstruction
 0051FD24    pop         dword ptr fs:[0]
 0051FD2B    add         esp,0C
 0051FD2E    mov         eax,dword ptr [ebp-4]
 0051FD31    mov         esp,ebp
 0051FD33    pop         ebp
 0051FD34    ret         8
end;*}

//0051FD38
destructor TPacketAnalyser.Destroy;
begin
{*
 0051FD38    push        ebp
 0051FD39    mov         ebp,esp
 0051FD3B    add         esp,0FFFFFFF8
 0051FD3E    call        @BeforeDestruction
 0051FD43    mov         byte ptr [ebp-5],dl
 0051FD46    mov         dword ptr [ebp-4],eax
 0051FD49    mov         eax,dword ptr [ebp-4]
 0051FD4C    mov         eax,dword ptr [eax+14]
 0051FD4F    call        TObject.Free
 0051FD54    mov         eax,dword ptr [ebp-4]
 0051FD57    mov         eax,dword ptr [eax+10]
 0051FD5A    call        TObject.Free
 0051FD5F    mov         eax,dword ptr [ebp-4]
 0051FD62    mov         eax,dword ptr [eax+1C]
 0051FD65    call        TObject.Free
 0051FD6A    mov         eax,dword ptr [ebp-4]
 0051FD6D    mov         eax,dword ptr [eax+18]
 0051FD70    call        TObject.Free
 0051FD75    mov         eax,dword ptr [ebp-4]
 0051FD78    mov         eax,dword ptr [eax+24]
 0051FD7B    call        TObject.Free
 0051FD80    mov         dl,byte ptr [ebp-5]
 0051FD83    and         dl,0FC
 0051FD86    mov         eax,dword ptr [ebp-4]
 0051FD89    call        TObject.Destroy
 0051FD8E    cmp         byte ptr [ebp-5],0
>0051FD92    jle         0051FD9C
 0051FD94    mov         eax,dword ptr [ebp-4]
 0051FD97    call        @ClassDestroy
 0051FD9C    pop         ecx
 0051FD9D    pop         ecx
 0051FD9E    pop         ebp
 0051FD9F    ret
*}
end;

//0051FDA0
procedure sub_0051FDA0(?:TPacketAnalyser);
begin
{*
 0051FDA0    push        ebp
 0051FDA1    mov         ebp,esp
 0051FDA3    push        ecx
 0051FDA4    mov         dword ptr [ebp-4],eax
 0051FDA7    mov         eax,dword ptr [ebp-4]
 0051FDAA    mov         eax,dword ptr [eax+10]
 0051FDAD    call        0051FAB8
 0051FDB2    mov         eax,dword ptr [ebp-4]
 0051FDB5    mov         eax,dword ptr [eax+10]
 0051FDB8    call        0051FA84
 0051FDBD    mov         eax,dword ptr [ebp-4]
 0051FDC0    mov         eax,dword ptr [eax+14]
 0051FDC3    call        0051FAB8
 0051FDC8    mov         eax,dword ptr [ebp-4]
 0051FDCB    mov         eax,dword ptr [eax+14]
 0051FDCE    call        0051FA84
 0051FDD3    mov         eax,dword ptr [ebp-4]
 0051FDD6    mov         byte ptr [eax+20],0
 0051FDDA    mov         eax,dword ptr [ebp-4]
 0051FDDD    mov         byte ptr [eax+2A],0
 0051FDE1    mov         eax,dword ptr [ebp-4]
 0051FDE4    mov         byte ptr [eax+29],0
 0051FDE8    mov         eax,dword ptr [ebp-4]
 0051FDEB    mov         byte ptr [eax+28],0
 0051FDEF    mov         eax,dword ptr [ebp-4]
 0051FDF2    xor         edx,edx
 0051FDF4    mov         dword ptr [eax+2C],edx
 0051FDF7    pop         ecx
 0051FDF8    pop         ebp
 0051FDF9    ret
*}
end;

//0051FDFC
{*procedure sub_0051FDFC(?:TPacketAnalyser; ?:?; ?:Integer);
begin
 0051FDFC    push        ebp
 0051FDFD    mov         ebp,esp
 0051FDFF    add         esp,0FFFFFFF4
 0051FE02    mov         dword ptr [ebp-0C],ecx
 0051FE05    mov         dword ptr [ebp-8],edx
 0051FE08    mov         dword ptr [ebp-4],eax
 0051FE0B    mov         eax,dword ptr [ebp-4]
 0051FE0E    cmp         dword ptr [eax+2C],0
>0051FE12    je          0051FE2A
 0051FE14    mov         eax,dword ptr [ebp-4]
 0051FE17    lea         edx,[eax+2C]
 0051FE1A    mov         eax,dword ptr [ebp-8]
 0051FE1D    add         eax,3
 0051FE20    mov         ecx,4
 0051FE25    call        0040810C
 0051FE2A    mov         eax,dword ptr [ebp-8]
 0051FE2D    cmp         byte ptr [eax+2],0A
>0051FE31    je          0051FE66
 0051FE33    mov         eax,dword ptr [ebp-0C]
 0051FE36    sub         eax,3
 0051FE39    push        eax
 0051FE3A    mov         ecx,dword ptr [ebp-8]
 0051FE3D    add         ecx,3
 0051FE40    mov         eax,[0055B4F0];^gvar_0054E2AC
 0051FE45    mov         edx,0F
 0051FE4A    call        0051C140
 0051FE4F    mov         ecx,dword ptr [ebp-0C]
 0051FE52    sub         ecx,3
 0051FE55    mov         edx,dword ptr [ebp-8]
 0051FE58    add         edx,3
 0051FE5B    mov         eax,dword ptr [ebp-4]
 0051FE5E    mov         eax,dword ptr [eax+24]
 0051FE61    call        0051C2B8
 0051FE66    mov         ecx,dword ptr [ebp-0C]
 0051FE69    sub         ecx,2
 0051FE6C    mov         edx,dword ptr [ebp-8]
 0051FE6F    add         edx,2
 0051FE72    mov         eax,dword ptr [ebp-4]
 0051FE75    movzx       eax,byte ptr [eax+29]
 0051FE79    call        0051C070
 0051FE7E    mov         eax,dword ptr [ebp-4]
 0051FE81    mov         al,byte ptr [eax+29]
 0051FE84    inc         eax
 0051FE85    and         al,3F
 0051FE87    mov         edx,dword ptr [ebp-4]
 0051FE8A    mov         byte ptr [edx+29],al
 0051FE8D    mov         eax,dword ptr [ebp-4]
 0051FE90    mov         eax,dword ptr [eax+0C]
 0051FE93    mov         eax,dword ptr [eax+90]
 0051FE99    cmp         byte ptr [eax+8],0
>0051FE9D    je          0051FEE4
 0051FE9F    mov         edx,dword ptr [ebp-8]
 0051FEA2    mov         eax,dword ptr [ebp-4]
 0051FEA5    mov         eax,dword ptr [eax+0C]
 0051FEA8    mov         eax,dword ptr [eax+90]
 0051FEAE    mov         ecx,dword ptr [ebp-0C]
 0051FEB1    call        004F66CC
 0051FEB6    cmp         eax,dword ptr [ebp-0C]
>0051FEB9    je          0051FEFA
 0051FEBB    mov         eax,dword ptr [ebp-4]
 0051FEBE    mov         eax,dword ptr [eax+0C]
 0051FEC1    mov         eax,dword ptr [eax+90]
 0051FEC7    call        004F5BD0
 0051FECC    mov         ecx,51FF08;'Nie wyslano wszystkiego "SendToMainServPacket"'
 0051FED1    mov         dl,1
 0051FED3    mov         eax,[004653B4];Exception
 0051FED8    call        Exception.Create;Exception.Create
 0051FEDD    call        @RaiseExcept
>0051FEE2    jmp         0051FEFA
 0051FEE4    mov         ecx,51FF40;'MainServer zamkniety oO'
 0051FEE9    mov         dl,1
 0051FEEB    mov         eax,[004653B4];Exception
 0051FEF0    call        Exception.Create;Exception.Create
 0051FEF5    call        @RaiseExcept
 0051FEFA    mov         esp,ebp
 0051FEFC    pop         ebp
 0051FEFD    ret
end;*}

//0051FF58
{*procedure sub_0051FF58(?:TPacketAnalyser; ?:?; ?:Integer);
begin
 0051FF58    push        ebp
 0051FF59    mov         ebp,esp
 0051FF5B    add         esp,0FFFFFFF4
 0051FF5E    mov         dword ptr [ebp-0C],ecx
 0051FF61    mov         dword ptr [ebp-8],edx
 0051FF64    mov         dword ptr [ebp-4],eax
 0051FF67    mov         eax,dword ptr [ebp-8]
 0051FF6A    movzx       eax,byte ptr [eax+2]
 0051FF6E    cmp         ax,91
>0051FF72    jne         0051FF89
 0051FF74    mov         ecx,dword ptr [ebp-0C]
 0051FF77    sub         ecx,2
 0051FF7A    mov         edx,dword ptr [ebp-8]
 0051FF7D    add         edx,2
 0051FF80    xor         eax,eax
 0051FF82    call        0051C070
>0051FF87    jmp         0051FFD4
 0051FF89    mov         eax,dword ptr [ebp-0C]
 0051FF8C    sub         eax,3
 0051FF8F    push        eax
 0051FF90    mov         ecx,dword ptr [ebp-8]
 0051FF93    add         ecx,3
 0051FF96    mov         eax,[0055B4F0];^gvar_0054E2AC
 0051FF9B    mov         edx,0F
 0051FFA0    call        0051C140
 0051FFA5    mov         ecx,dword ptr [ebp-0C]
 0051FFA8    sub         ecx,3
 0051FFAB    mov         edx,dword ptr [ebp-8]
 0051FFAE    add         edx,3
 0051FFB1    mov         eax,dword ptr [ebp-4]
 0051FFB4    mov         eax,dword ptr [eax+24]
 0051FFB7    call        0051C2B8
 0051FFBC    mov         ecx,dword ptr [ebp-0C]
 0051FFBF    sub         ecx,2
 0051FFC2    mov         edx,dword ptr [ebp-8]
 0051FFC5    add         edx,2
 0051FFC8    mov         eax,dword ptr [ebp-4]
 0051FFCB    movzx       eax,byte ptr [eax+2A]
 0051FFCF    call        0051C070
 0051FFD4    mov         eax,dword ptr [ebp-4]
 0051FFD7    mov         eax,dword ptr [eax+8]
 0051FFDA    mov         eax,dword ptr [eax+90]
 0051FFE0    xor         edx,edx
 0051FFE2    call        004F7130
 0051FFE7    cmp         byte ptr [eax+8],0
>0051FFEB    je          00520028
 0051FFED    mov         eax,dword ptr [ebp-4]
 0051FFF0    mov         eax,dword ptr [eax+8]
 0051FFF3    mov         eax,dword ptr [eax+90]
 0051FFF9    xor         edx,edx
 0051FFFB    call        004F7130
 00520000    mov         edx,dword ptr [ebp-8]
 00520003    mov         ecx,dword ptr [ebp-0C]
 00520006    call        004F66CC
 0052000B    cmp         eax,dword ptr [ebp-0C]
>0052000E    je          0052003E
 00520010    mov         ecx,52004C;'Nie wyslano wszystkiego "SendToClientPacket"'
 00520015    mov         dl,1
 00520017    mov         eax,[004653B4];Exception
 0052001C    call        Exception.Create;Exception.Create
 00520021    call        @RaiseExcept
>00520026    jmp         0052003E
 00520028    mov         ecx,520084;'ROAM zamkniety oO'
 0052002D    mov         dl,1
 0052002F    mov         eax,[004653B4];Exception
 00520034    call        Exception.Create;Exception.Create
 00520039    call        @RaiseExcept
 0052003E    mov         esp,ebp
 00520040    pop         ebp
 00520041    ret
end;*}

//00520098
{*procedure sub_00520098(?:?; ?:?);
begin
 00520098    push        ebp
 00520099    mov         ebp,esp
 0052009B    add         esp,0FFFFFF94
 0052009E    push        ebx
 0052009F    xor         ebx,ebx
 005200A1    mov         dword ptr [ebp-60],ebx
 005200A4    mov         dword ptr [ebp-64],ebx
 005200A7    mov         dword ptr [ebp-68],ebx
 005200AA    mov         dword ptr [ebp-6C],ebx
 005200AD    mov         dword ptr [ebp-0C],ecx
 005200B0    mov         dword ptr [ebp-8],edx
 005200B3    mov         dword ptr [ebp-4],eax
 005200B6    xor         eax,eax
 005200B8    push        ebp
 005200B9    push        520286
 005200BE    push        dword ptr fs:[eax]
 005200C1    mov         dword ptr fs:[eax],esp
 005200C4    mov         eax,dword ptr [ebp-8]
 005200C7    mov         eax,dword ptr [eax+4]
 005200CA    mov         dword ptr [ebp-10],eax
 005200CD    mov         eax,dword ptr [ebp-8]
 005200D0    mov         edx,dword ptr [eax]
 005200D2    call        dword ptr [edx]
 005200D4    mov         word ptr [ebp-12],ax
 005200D8    movzx       ecx,word ptr [ebp-12]
 005200DC    sub         ecx,2
 005200DF    mov         edx,dword ptr [ebp-10]
 005200E2    add         edx,2
 005200E5    mov         eax,dword ptr [ebp-4]
 005200E8    movzx       eax,byte ptr [eax+2A];TPacketAnalyser.?f2A:byte
 005200EC    call        0051C0A4
 005200F1    cmp         dword ptr [ebp-0C],0
>005200F5    jbe         0052012C
 005200F7    movzx       eax,word ptr [ebp-12]
 005200FB    sub         eax,3
 005200FE    push        eax
 005200FF    mov         ecx,dword ptr [ebp-10]
 00520102    add         ecx,3
 00520105    mov         eax,[0055B4F0];^gvar_0054E2AC
 0052010A    mov         edx,0F
 0052010F    call        0051C140
 00520114    movzx       ecx,word ptr [ebp-12]
 00520118    sub         ecx,3
 0052011B    mov         edx,dword ptr [ebp-10]
 0052011E    add         edx,3
 00520121    mov         eax,dword ptr [ebp-4]
 00520124    mov         eax,dword ptr [eax+24];TPacketAnalyser.?f24:dword
 00520127    call        0051C264
 0052012C    mov         eax,dword ptr [ebp-10]
 0052012F    add         eax,2
 00520132    movzx       eax,byte ptr [eax]
 00520135    sub         ax,68
>00520139    je          0052024A
 0052013F    sub         ax,29
>00520143    jne         0052026B
 00520149    mov         eax,dword ptr [ebp-10]
 0052014C    add         eax,7
 0052014F    mov         al,byte ptr [eax]
 00520151    mov         edx,dword ptr [ebp-4]
 00520154    mov         byte ptr [edx+2A],al;TPacketAnalyser.?f2A:byte
 00520157    mov         eax,dword ptr [ebp-10]
 0052015A    add         eax,7
 0052015D    mov         al,byte ptr [eax]
 0052015F    mov         edx,dword ptr [ebp-4]
 00520162    mov         byte ptr [edx+28],al;TPacketAnalyser.?f28:byte
 00520165    mov         eax,dword ptr [ebp-10]
 00520168    add         eax,7
 0052016B    mov         al,byte ptr [eax]
 0052016D    mov         edx,dword ptr [ebp-4]
 00520170    mov         byte ptr [edx+29],al;TPacketAnalyser.?f29:byte
 00520173    mov         eax,dword ptr [ebp-10]
 00520176    lea         edx,[eax+53]
 00520179    lea         eax,[ebp-18]
 0052017C    mov         ecx,4
 00520181    call        0040810C
 00520186    mov         eax,dword ptr [ebp-18]
 00520189    call        0051C034
 0052018E    mov         edx,dword ptr [ebp-4]
 00520191    mov         dword ptr [edx+2C],eax;TPacketAnalyser.?f2C:dword
 00520194    lea         edx,[ebp-5C]
 00520197    mov         eax,dword ptr [ebp-10]
 0052019A    add         eax,1F
 0052019D    mov         ecx,34
 005201A2    call        Move
 005201A7    lea         edx,[ebp-5C]
 005201AA    lea         eax,[ebp-28]
 005201AD    call        0051BE3C
 005201B2    test        al,al
>005201B4    je          00520241
 005201BA    mov         eax,dword ptr [ebp-4]
 005201BD    cmp         dword ptr [eax+4],0;TPacketAnalyser.?f4:dword
>005201C1    je          00520233
 005201C3    push        52029C;'S2C_CODE  AES Key: '
 005201C8    lea         ecx,[ebp-64]
 005201CB    lea         eax,[ebp-28]
 005201CE    mov         edx,10
 005201D3    call        0051F290
 005201D8    push        dword ptr [ebp-64]
 005201DB    push        5202B8;' RawSync: '
 005201E0    lea         ecx,[ebp-68]
 005201E3    lea         eax,[ebp-18]
 005201E6    mov         edx,4
 005201EB    call        0051F290
 005201F0    push        dword ptr [ebp-68]
 005201F3    push        5202CC;' Sync: '
 005201F8    mov         eax,dword ptr [ebp-4]
 005201FB    mov         eax,dword ptr [eax+2C];TPacketAnalyser.?f2C:dword
 005201FE    xor         edx,edx
 00520200    push        edx
 00520201    push        eax
 00520202    lea         edx,[ebp-6C]
 00520205    mov         eax,8
 0052020A    call        IntToHex
 0052020F    push        dword ptr [ebp-6C]
 00520212    lea         eax,[ebp-60]
 00520215    mov         edx,6
 0052021A    call        @LStrCatN
 0052021F    mov         edx,dword ptr [ebp-60]
 00520222    mov         eax,dword ptr [ebp-4]
 00520225    mov         eax,dword ptr [eax+4];TPacketAnalyser.?f4:dword
 00520228    mov         eax,dword ptr [eax+220]
 0052022E    mov         ecx,dword ptr [eax]
 00520230    call        dword ptr [ecx+38]
 00520233    lea         edx,[ebp-28]
 00520236    mov         eax,dword ptr [ebp-4]
 00520239    mov         eax,dword ptr [eax+24];TPacketAnalyser.?f24:dword
 0052023C    call        0051C1C8
 00520241    mov         eax,dword ptr [ebp-4]
 00520244    mov         byte ptr [eax+20],1;TPacketAnalyser.?f20:byte
>00520248    jmp         0052026B
 0052024A    lea         edx,[ebp-18]
 0052024D    mov         eax,dword ptr [ebp-10]
 00520250    add         eax,3
 00520253    mov         ecx,4
 00520258    call        Move
 0052025D    mov         eax,dword ptr [ebp-18]
 00520260    call        0051C034
 00520265    mov         edx,dword ptr [ebp-4]
 00520268    mov         dword ptr [edx+2C],eax;TPacketAnalyser.?f2C:dword
 0052026B    xor         eax,eax
 0052026D    pop         edx
 0052026E    pop         ecx
 0052026F    pop         ecx
 00520270    mov         dword ptr fs:[eax],edx
 00520273    push        52028D
 00520278    lea         eax,[ebp-6C]
 0052027B    mov         edx,4
 00520280    call        @LStrArrayClr
 00520285    ret
>00520286    jmp         @HandleFinally
>0052028B    jmp         00520278
 0052028D    pop         ebx
 0052028E    mov         esp,ebp
 00520290    pop         ebp
 00520291    ret
end;*}

//005202D4
{*procedure sub_005202D4(?:?; ?:?);
begin
 005202D4    push        ebp
 005202D5    mov         ebp,esp
 005202D7    add         esp,0FFFFFFEC
 005202DA    mov         dword ptr [ebp-14],ecx
 005202DD    mov         dword ptr [ebp-8],edx
 005202E0    mov         dword ptr [ebp-4],eax
 005202E3    mov         eax,dword ptr [ebp-8]
 005202E6    mov         eax,dword ptr [eax+4]
 005202E9    mov         dword ptr [ebp-0C],eax
 005202EC    mov         eax,dword ptr [ebp-8]
 005202EF    mov         edx,dword ptr [eax]
 005202F1    call        dword ptr [edx]
 005202F3    mov         word ptr [ebp-0E],ax
 005202F7    movzx       ecx,word ptr [ebp-0E]
 005202FB    sub         ecx,2
 005202FE    mov         edx,dword ptr [ebp-0C]
 00520301    add         edx,2
 00520304    mov         eax,dword ptr [ebp-4]
 00520307    movzx       eax,byte ptr [eax+28];TPacketAnalyser.?f28:byte
 0052030B    call        0051C0A4
 00520310    mov         eax,dword ptr [ebp-4]
 00520313    cmp         byte ptr [eax+20],0;TPacketAnalyser.?f20:byte
>00520317    je          0052035D
 00520319    movzx       eax,word ptr [ebp-0E]
 0052031D    sub         eax,3
 00520320    push        eax
 00520321    mov         ecx,dword ptr [ebp-0C]
 00520324    add         ecx,3
 00520327    mov         eax,[0055B4F0];^gvar_0054E2AC
 0052032C    mov         edx,0F
 00520331    call        0051C140
 00520336    movzx       ecx,word ptr [ebp-0E]
 0052033A    sub         ecx,3
 0052033D    mov         edx,dword ptr [ebp-0C]
 00520340    add         edx,3
 00520343    mov         eax,dword ptr [ebp-4]
 00520346    mov         eax,dword ptr [eax+24];TPacketAnalyser.?f24:dword
 00520349    call        0051C264
 0052034E    mov         eax,dword ptr [ebp-4]
 00520351    mov         al,byte ptr [eax+28];TPacketAnalyser.?f28:byte
 00520354    inc         eax
 00520355    and         al,3F
 00520357    mov         edx,dword ptr [ebp-4]
 0052035A    mov         byte ptr [edx+28],al;TPacketAnalyser.?f28:byte
 0052035D    mov         esp,ebp
 0052035F    pop         ebp
 00520360    ret
end;*}

//00520364
{*procedure sub_00520364(?:TPacketAnalyser; ?:?; ?:?);
begin
 00520364    push        ebp
 00520365    mov         ebp,esp
 00520367    add         esp,0FFFFFFF4
 0052036A    mov         dword ptr [ebp-0C],ecx
 0052036D    mov         dword ptr [ebp-8],edx
 00520370    mov         dword ptr [ebp-4],eax
 00520373    mov         cx,word ptr [ebp-0C]
 00520377    mov         edx,dword ptr [ebp-8]
 0052037A    mov         eax,dword ptr [ebp-4]
 0052037D    mov         eax,dword ptr [eax+10]
 00520380    call        0051F7F8
 00520385    mov         esp,ebp
 00520387    pop         ebp
 00520388    ret
end;*}

//0052038C
{*procedure sub_0052038C(?:TPacketAnalyser; ?:?; ?:?);
begin
 0052038C    push        ebp
 0052038D    mov         ebp,esp
 0052038F    add         esp,0FFFFFFF4
 00520392    mov         dword ptr [ebp-0C],ecx
 00520395    mov         dword ptr [ebp-8],edx
 00520398    mov         dword ptr [ebp-4],eax
 0052039B    mov         cx,word ptr [ebp-0C]
 0052039F    mov         edx,dword ptr [ebp-8]
 005203A2    mov         eax,dword ptr [ebp-4]
 005203A5    mov         eax,dword ptr [eax+14]
 005203A8    call        0051F7F8
 005203AD    mov         esp,ebp
 005203AF    pop         ebp
 005203B0    ret
end;*}

//005203DC
{*procedure sub_005203DC(?:?; ?:?; ?:?; ?:?);
begin
 005203DC    push        ebp
 005203DD    mov         ebp,esp
 005203DF    add         esp,0FFFFFFE4
 005203E2    push        ebx
 005203E3    push        esi
 005203E4    xor         ebx,ebx
 005203E6    mov         dword ptr [ebp-18],ebx
 005203E9    mov         ebx,dword ptr [ebp+8]
 005203EC    test        ebx,ebx
>005203EE    js          005203FA
 005203F0    shr         ebx,2
 005203F3    mov         esi,dword ptr [ecx+ebx*4]
 005203F6    dec         ebx
 005203F7    push        esi
>005203F8    jns         005203F3
 005203FA    mov         ecx,esp
 005203FC    mov         dword ptr [ebp-0C],ecx
 005203FF    mov         dword ptr [ebp-8],edx
 00520402    mov         dword ptr [ebp-4],eax
 00520405    mov         eax,dword ptr [ebp-8]
 00520408    call        @IntfAddRef
 0052040D    xor         eax,eax
 0052040F    push        ebp
 00520410    push        5204A6
 00520415    push        dword ptr fs:[eax]
 00520418    mov         dword ptr fs:[eax],esp
 0052041B    mov         byte ptr [ebp-0D],1
 0052041F    mov         eax,dword ptr [ebp+8]
 00520422    inc         eax
 00520423    push        eax
 00520424    lea         eax,[ebp-18]
 00520427    mov         ecx,1
 0052042C    mov         edx,dword ptr ds:[5203B4];_DynArr_92_6
 00520432    call        @DynArraySetLength
 00520437    add         esp,4
 0052043A    mov         eax,dword ptr [ebp+8]
 0052043D    inc         eax
 0052043E    dec         eax
 0052043F    test        eax,eax
>00520441    jl          00520468
 00520443    inc         eax
 00520444    mov         dword ptr [ebp-1C],eax
 00520447    mov         dword ptr [ebp-14],0
 0052044E    mov         eax,dword ptr [ebp-0C]
 00520451    mov         edx,dword ptr [ebp-14]
 00520454    mov         al,byte ptr [eax+edx]
 00520457    mov         edx,dword ptr [ebp-18]
 0052045A    mov         ecx,dword ptr [ebp-14]
 0052045D    mov         byte ptr [edx+ecx],al
 00520460    inc         dword ptr [ebp-14]
 00520463    dec         dword ptr [ebp-1C]
>00520466    jne         0052044E
 00520468    mov         eax,dword ptr [ebp-18]
 0052046B    call        00405CE8
 00520470    push        eax
 00520471    mov         eax,dword ptr [ebp-4]
 00520474    mov         eax,dword ptr [eax+1C]
 00520477    mov         ecx,dword ptr [ebp-18]
 0052047A    mov         edx,dword ptr [ebp-8]
 0052047D    call        00520878
 00520482    xor         eax,eax
 00520484    pop         edx
 00520485    pop         ecx
 00520486    pop         ecx
 00520487    mov         dword ptr fs:[eax],edx
 0052048A    push        5204AD
 0052048F    lea         eax,[ebp-18]
 00520492    mov         edx,dword ptr ds:[5203B4];_DynArr_92_6
 00520498    call        @DynArrayClear
 0052049D    lea         eax,[ebp-8]
 005204A0    call        @IntfClear
 005204A5    ret
>005204A6    jmp         @HandleFinally
>005204AB    jmp         0052048F
 005204AD    mov         al,byte ptr [ebp-0D]
 005204B0    mov         esi,dword ptr [ebp-24]
 005204B3    mov         ebx,dword ptr [ebp-20]
 005204B6    mov         esp,ebp
 005204B8    pop         ebp
 005204B9    ret         4
end;*}

//005204E4
{*procedure sub_005204E4(?:?; ?:?; ?:?; ?:?);
begin
 005204E4    push        ebp
 005204E5    mov         ebp,esp
 005204E7    add         esp,0FFFFFFE4
 005204EA    push        ebx
 005204EB    push        esi
 005204EC    xor         ebx,ebx
 005204EE    mov         dword ptr [ebp-18],ebx
 005204F1    mov         ebx,dword ptr [ebp+8]
 005204F4    add         ebx,ebx
 005204F6    inc         ebx
 005204F7    test        ebx,ebx
>005204F9    js          00520505
 005204FB    shr         ebx,2
 005204FE    mov         esi,dword ptr [ecx+ebx*4]
 00520501    dec         ebx
 00520502    push        esi
>00520503    jns         005204FE
 00520505    mov         ecx,esp
 00520507    mov         dword ptr [ebp-0C],ecx
 0052050A    mov         dword ptr [ebp-8],edx
 0052050D    mov         dword ptr [ebp-4],eax
 00520510    mov         eax,dword ptr [ebp-8]
 00520513    call        @IntfAddRef
 00520518    xor         eax,eax
 0052051A    push        ebp
 0052051B    push        5205B1
 00520520    push        dword ptr fs:[eax]
 00520523    mov         dword ptr fs:[eax],esp
 00520526    mov         byte ptr [ebp-0D],1
 0052052A    mov         eax,dword ptr [ebp+8]
 0052052D    inc         eax
 0052052E    push        eax
 0052052F    lea         eax,[ebp-18]
 00520532    mov         ecx,1
 00520537    mov         edx,dword ptr ds:[5204BC];_DynArr_92_7
 0052053D    call        @DynArraySetLength
 00520542    add         esp,4
 00520545    mov         eax,dword ptr [ebp+8]
 00520548    inc         eax
 00520549    dec         eax
 0052054A    test        eax,eax
>0052054C    jl          00520573
 0052054E    inc         eax
 0052054F    mov         dword ptr [ebp-1C],eax
 00520552    mov         dword ptr [ebp-14],0
 00520559    mov         eax,dword ptr [ebp-0C]
 0052055C    mov         edx,dword ptr [ebp-14]
 0052055F    mov         al,byte ptr [eax+edx*2]
 00520562    mov         edx,dword ptr [ebp-18]
 00520565    mov         ecx,dword ptr [ebp-14]
 00520568    mov         byte ptr [edx+ecx],al
 0052056B    inc         dword ptr [ebp-14]
 0052056E    dec         dword ptr [ebp-1C]
>00520571    jne         00520559
 00520573    mov         eax,dword ptr [ebp-18]
 00520576    call        00405CE8
 0052057B    push        eax
 0052057C    mov         eax,dword ptr [ebp-4]
 0052057F    mov         eax,dword ptr [eax+18]
 00520582    mov         ecx,dword ptr [ebp-18]
 00520585    mov         edx,dword ptr [ebp-8]
 00520588    call        00520878
 0052058D    xor         eax,eax
 0052058F    pop         edx
 00520590    pop         ecx
 00520591    pop         ecx
 00520592    mov         dword ptr fs:[eax],edx
 00520595    push        5205B8
 0052059A    lea         eax,[ebp-18]
 0052059D    mov         edx,dword ptr ds:[5204BC];_DynArr_92_7
 005205A3    call        @DynArrayClear
 005205A8    lea         eax,[ebp-8]
 005205AB    call        @IntfClear
 005205B0    ret
>005205B1    jmp         @HandleFinally
>005205B6    jmp         0052059A
 005205B8    mov         al,byte ptr [ebp-0D]
 005205BB    mov         esi,dword ptr [ebp-24]
 005205BE    mov         ebx,dword ptr [ebp-20]
 005205C1    mov         esp,ebp
 005205C3    pop         ebp
 005205C4    ret         4
end;*}

//005205C8
{*function sub_005205C8(?:?; ?:?):?;
begin
 005205C8    push        ebp
 005205C9    mov         ebp,esp
 005205CB    add         esp,0FFFFFFF4
 005205CE    mov         dword ptr [ebp-8],edx
 005205D1    mov         dword ptr [ebp-4],eax
 005205D4    mov         eax,dword ptr [ebp-8]
 005205D7    call        @IntfAddRef
 005205DC    xor         eax,eax
 005205DE    push        ebp
 005205DF    push        520612
 005205E4    push        dword ptr fs:[eax]
 005205E7    mov         dword ptr fs:[eax],esp
 005205EA    mov         byte ptr [ebp-9],1
 005205EE    mov         edx,dword ptr [ebp-8]
 005205F1    mov         eax,dword ptr [ebp-4]
 005205F4    mov         eax,dword ptr [eax+1C]
 005205F7    call        00520964
 005205FC    xor         eax,eax
 005205FE    pop         edx
 005205FF    pop         ecx
 00520600    pop         ecx
 00520601    mov         dword ptr fs:[eax],edx
 00520604    push        520619
 00520609    lea         eax,[ebp-8]
 0052060C    call        @IntfClear
 00520611    ret
>00520612    jmp         @HandleFinally
>00520617    jmp         00520609
 00520619    mov         al,byte ptr [ebp-9]
 0052061C    mov         esp,ebp
 0052061E    pop         ebp
 0052061F    ret
end;*}

//00520620
{*function sub_00520620(?:?; ?:?):?;
begin
 00520620    push        ebp
 00520621    mov         ebp,esp
 00520623    add         esp,0FFFFFFF4
 00520626    mov         dword ptr [ebp-8],edx
 00520629    mov         dword ptr [ebp-4],eax
 0052062C    mov         eax,dword ptr [ebp-8]
 0052062F    call        @IntfAddRef
 00520634    xor         eax,eax
 00520636    push        ebp
 00520637    push        52066A
 0052063C    push        dword ptr fs:[eax]
 0052063F    mov         dword ptr fs:[eax],esp
 00520642    mov         byte ptr [ebp-9],1
 00520646    mov         edx,dword ptr [ebp-8]
 00520649    mov         eax,dword ptr [ebp-4]
 0052064C    mov         eax,dword ptr [eax+18]
 0052064F    call        00520964
 00520654    xor         eax,eax
 00520656    pop         edx
 00520657    pop         ecx
 00520658    pop         ecx
 00520659    mov         dword ptr fs:[eax],edx
 0052065C    push        520671
 00520661    lea         eax,[ebp-8]
 00520664    call        @IntfClear
 00520669    ret
>0052066A    jmp         @HandleFinally
>0052066F    jmp         00520661
 00520671    mov         al,byte ptr [ebp-9]
 00520674    mov         esp,ebp
 00520676    pop         ebp
 00520677    ret
end;*}

//00520678
{*procedure sub_00520678(?:?; ?:?; ?:?);
begin
 00520678    push        ebp
 00520679    mov         ebp,esp
 0052067B    add         esp,0FFFFFFF0
 0052067E    push        ebx
 0052067F    mov         dword ptr [ebp-0C],ecx
 00520682    mov         dword ptr [ebp-8],edx
 00520685    mov         dword ptr [ebp-4],eax
 00520688    cmp         dword ptr [ebp-8],0
>0052068C    je          005206E6
 0052068E    mov         ecx,dword ptr [ebp-0C]
 00520691    mov         edx,dword ptr [ebp-8]
 00520694    mov         eax,dword ptr [ebp-4]
 00520697    mov         ebx,dword ptr [eax]
 00520699    call        dword ptr [ebx]
 0052069B    mov         eax,dword ptr [ebp-4]
 0052069E    cmp         word ptr [eax+3A],0
>005206A3    je          005206B4
 005206A5    mov         ebx,dword ptr [ebp-4]
 005206A8    mov         ecx,dword ptr [ebp-0C]
 005206AB    mov         edx,dword ptr [ebp-8]
 005206AE    mov         eax,dword ptr [ebx+3C]
 005206B1    call        dword ptr [ebx+38]
 005206B4    mov         byte ptr [ebp-0D],0
 005206B8    lea         ecx,[ebp-0D]
 005206BB    mov         edx,dword ptr [ebp-8]
 005206BE    mov         eax,dword ptr [ebp-4]
 005206C1    mov         eax,dword ptr [eax+18]
 005206C4    call        005207E4
 005206C9    cmp         byte ptr [ebp-0D],0
>005206CD    jne         005206E6
 005206CF    mov         eax,dword ptr [ebp-8]
 005206D2    mov         edx,dword ptr [eax]
 005206D4    call        dword ptr [edx]
 005206D6    mov         ecx,eax
 005206D8    mov         eax,dword ptr [ebp-8]
 005206DB    mov         edx,dword ptr [eax+4]
 005206DE    mov         eax,dword ptr [ebp-4]
 005206E1    call        0051FF58
 005206E6    pop         ebx
 005206E7    mov         esp,ebp
 005206E9    pop         ebp
 005206EA    ret
end;*}

//005206EC
{*procedure sub_005206EC(?:?; ?:?; ?:?);
begin
 005206EC    push        ebp
 005206ED    mov         ebp,esp
 005206EF    add         esp,0FFFFFFF0
 005206F2    push        ebx
 005206F3    mov         dword ptr [ebp-0C],ecx
 005206F6    mov         dword ptr [ebp-8],edx
 005206F9    mov         dword ptr [ebp-4],eax
 005206FC    cmp         dword ptr [ebp-8],0
>00520700    je          0052075B
 00520702    mov         ecx,dword ptr [ebp-0C]
 00520705    mov         edx,dword ptr [ebp-8]
 00520708    mov         eax,dword ptr [ebp-4]
 0052070B    mov         ebx,dword ptr [eax]
 0052070D    call        dword ptr [ebx+4]
 00520710    mov         eax,dword ptr [ebp-4]
 00520713    cmp         word ptr [eax+32],0
>00520718    je          00520729
 0052071A    mov         ebx,dword ptr [ebp-4]
 0052071D    mov         ecx,dword ptr [ebp-0C]
 00520720    mov         edx,dword ptr [ebp-8]
 00520723    mov         eax,dword ptr [ebx+34]
 00520726    call        dword ptr [ebx+30]
 00520729    mov         byte ptr [ebp-0D],0
 0052072D    lea         ecx,[ebp-0D]
 00520730    mov         edx,dword ptr [ebp-8]
 00520733    mov         eax,dword ptr [ebp-4]
 00520736    mov         eax,dword ptr [eax+1C]
 00520739    call        005207E4
 0052073E    cmp         byte ptr [ebp-0D],0
>00520742    jne         0052075B
 00520744    mov         eax,dword ptr [ebp-8]
 00520747    mov         edx,dword ptr [eax]
 00520749    call        dword ptr [edx]
 0052074B    mov         ecx,eax
 0052074D    mov         eax,dword ptr [ebp-8]
 00520750    mov         edx,dword ptr [eax+4]
 00520753    mov         eax,dword ptr [ebp-4]
 00520756    call        0051FDFC
 0052075B    pop         ebx
 0052075C    mov         esp,ebp
 0052075E    pop         ebp
 0052075F    ret
end;*}

//00520760
constructor TListenerExecutor.Create;
begin
{*
 00520760    push        ebp
 00520761    mov         ebp,esp
 00520763    add         esp,0FFFFFFF8
 00520766    test        dl,dl
>00520768    je          00520772
 0052076A    add         esp,0FFFFFFF0
 0052076D    call        @ClassCreate
 00520772    mov         byte ptr [ebp-6],cl
 00520775    mov         byte ptr [ebp-5],dl
 00520778    mov         dword ptr [ebp-4],eax
 0052077B    xor         edx,edx
 0052077D    mov         eax,dword ptr [ebp-4]
 00520780    call        TObject.Create
 00520785    mov         eax,dword ptr [ebp-4]
 00520788    mov         dl,byte ptr [ebp-6]
 0052078B    mov         byte ptr [eax+4],dl;TListenerExecutor.?f4:byte
 0052078E    mov         eax,dword ptr [ebp-4]
 00520791    cmp         byte ptr [ebp-5],0
>00520795    je          005207A6
 00520797    call        @AfterConstruction
 0052079C    pop         dword ptr fs:[0]
 005207A3    add         esp,0C
 005207A6    mov         eax,dword ptr [ebp-4]
 005207A9    pop         ecx
 005207AA    pop         ecx
 005207AB    pop         ebp
 005207AC    ret
*}
end;

//005207E4
{*procedure sub_005207E4(?:?; ?:?; ?:?);
begin
 005207E4    push        ebp
 005207E5    mov         ebp,esp
 005207E7    add         esp,0FFFFFFE8
 005207EA    push        ebx
 005207EB    mov         dword ptr [ebp-0C],ecx
 005207EE    mov         dword ptr [ebp-8],edx
 005207F1    mov         dword ptr [ebp-4],eax
 005207F4    cmp         dword ptr [ebp-8],0
>005207F8    je          00520873
 005207FA    mov         eax,dword ptr [ebp-8]
 005207FD    mov         eax,dword ptr [eax+4]
 00520800    mov         al,byte ptr [eax+2]
 00520803    mov         byte ptr [ebp-11],al
 00520806    xor         eax,eax
 00520808    mov         al,byte ptr [ebp-11]
 0052080B    mov         edx,dword ptr [ebp-4]
 0052080E    mov         eax,dword ptr [edx+eax*4+8]
 00520812    call        @LStrLen
 00520817    test        eax,eax
>00520819    jle         00520873
 0052081B    xor         eax,eax
 0052081D    mov         al,byte ptr [ebp-11]
 00520820    mov         edx,dword ptr [ebp-4]
 00520823    mov         eax,dword ptr [edx+eax*4+8]
 00520827    call        00405CE8
 0052082C    test        eax,eax
>0052082E    jl          00520873
 00520830    inc         eax
 00520831    mov         dword ptr [ebp-18],eax
 00520834    mov         dword ptr [ebp-10],0
 0052083B    mov         eax,dword ptr [ebp-4]
 0052083E    mov         al,byte ptr [eax+4]
 00520841    push        eax
 00520842    mov         eax,dword ptr [ebp-0C]
 00520845    push        eax
 00520846    xor         eax,eax
 00520848    mov         al,byte ptr [ebp-11]
 0052084B    mov         edx,dword ptr [ebp-4]
 0052084E    mov         eax,dword ptr [edx+eax*4+8]
 00520852    mov         edx,dword ptr [ebp-10]
 00520855    mov         eax,dword ptr [eax+edx*4]
 00520858    mov         ecx,dword ptr [ebp-8]
 0052085B    mov         dl,byte ptr [ebp-11]
 0052085E    mov         ebx,dword ptr [eax]
 00520860    call        dword ptr [ebx+0C]
 00520863    mov         eax,dword ptr [ebp-0C]
 00520866    cmp         byte ptr [eax],0
>00520869    jne         00520873
 0052086B    inc         dword ptr [ebp-10]
 0052086E    dec         dword ptr [ebp-18]
>00520871    jne         0052083B
 00520873    pop         ebx
 00520874    mov         esp,ebp
 00520876    pop         ebp
 00520877    ret
end;*}

//00520878
{*procedure sub_00520878(?:?; ?:?; ?:?; ?:?);
begin
 00520878    push        ebp
 00520879    mov         ebp,esp
 0052087B    add         esp,0FFFFFFF0
 0052087E    push        ebx
 0052087F    push        esi
 00520880    mov         ebx,dword ptr [ebp+8]
 00520883    test        ebx,ebx
>00520885    js          00520891
 00520887    shr         ebx,2
 0052088A    mov         esi,dword ptr [ecx+ebx*4]
 0052088D    dec         ebx
 0052088E    push        esi
>0052088F    jns         0052088A
 00520891    mov         ecx,esp
 00520893    mov         dword ptr [ebp-0C],ecx
 00520896    mov         dword ptr [ebp-8],edx
 00520899    mov         dword ptr [ebp-4],eax
 0052089C    mov         eax,dword ptr [ebp-8]
 0052089F    call        @IntfAddRef
 005208A4    xor         eax,eax
 005208A6    push        ebp
 005208A7    push        52094C
 005208AC    push        dword ptr fs:[eax]
 005208AF    mov         dword ptr fs:[eax],esp
 005208B2    mov         byte ptr [ebp-0D],1
 005208B6    mov         al,byte ptr [ebp+8]
 005208B9    test        al,al
>005208BB    jb          00520936
 005208BD    inc         eax
 005208BE    mov         byte ptr [ebp-10],al
 005208C1    mov         byte ptr [ebp-0E],0
 005208C5    xor         eax,eax
 005208C7    mov         al,byte ptr [ebp-0E]
 005208CA    mov         edx,dword ptr [ebp-0C]
 005208CD    mov         al,byte ptr [edx+eax]
 005208D0    mov         byte ptr [ebp-0F],al
 005208D3    xor         eax,eax
 005208D5    mov         al,byte ptr [ebp-0F]
 005208D8    mov         edx,dword ptr [ebp-4]
 005208DB    mov         eax,dword ptr [edx+eax*4+8]
 005208DF    call        @LStrLen
 005208E4    inc         eax
 005208E5    push        eax
 005208E6    xor         eax,eax
 005208E8    mov         al,byte ptr [ebp-0F]
 005208EB    mov         edx,dword ptr [ebp-4]
 005208EE    lea         eax,[edx+eax*4+8]
 005208F2    mov         ecx,1
 005208F7    mov         edx,dword ptr ds:[51FB40];_DynArr_92_2
 005208FD    call        @DynArraySetLength
 00520902    add         esp,4
 00520905    xor         eax,eax
 00520907    mov         al,byte ptr [ebp-0F]
 0052090A    mov         edx,dword ptr [ebp-4]
 0052090D    mov         eax,dword ptr [edx+eax*4+8]
 00520911    call        @LStrLen
 00520916    xor         edx,edx
 00520918    mov         dl,byte ptr [ebp-0F]
 0052091B    mov         ecx,dword ptr [ebp-4]
 0052091E    mov         edx,dword ptr [ecx+edx*4+8]
 00520922    lea         eax,[edx+eax*4-4]
 00520926    mov         edx,dword ptr [ebp-8]
 00520929    call        @IntfCopy
 0052092E    inc         byte ptr [ebp-0E]
 00520931    dec         byte ptr [ebp-10]
>00520934    jne         005208C5
 00520936    xor         eax,eax
 00520938    pop         edx
 00520939    pop         ecx
 0052093A    pop         ecx
 0052093B    mov         dword ptr fs:[eax],edx
 0052093E    push        520953
 00520943    lea         eax,[ebp-8]
 00520946    call        @IntfClear
 0052094B    ret
>0052094C    jmp         @HandleFinally
>00520951    jmp         00520943
 00520953    mov         al,byte ptr [ebp-0D]
 00520956    mov         esi,dword ptr [ebp-18]
 00520959    mov         ebx,dword ptr [ebp-14]
 0052095C    mov         esp,ebp
 0052095E    pop         ebp
 0052095F    ret         4
end;*}

//00520964
{*function sub_00520964(?:?; ?:?):?;
begin
 00520964    push        ebp
 00520965    mov         ebp,esp
 00520967    add         esp,0FFFFFFDC
 0052096A    mov         dword ptr [ebp-8],edx
 0052096D    mov         dword ptr [ebp-4],eax
 00520970    mov         eax,dword ptr [ebp-8]
 00520973    call        @IntfAddRef
 00520978    xor         eax,eax
 0052097A    push        ebp
 0052097B    push        520AB1
 00520980    push        dword ptr fs:[eax]
 00520983    mov         dword ptr fs:[eax],esp
 00520986    mov         byte ptr [ebp-9],0
 0052098A    xor         eax,eax
 0052098C    mov         dword ptr [ebp-10],eax
 0052098F    mov         al,byte ptr [ebp-10]
 00520992    mov         byte ptr [ebp-1D],al
 00520995    xor         eax,eax
 00520997    mov         al,byte ptr [ebp-1D]
 0052099A    mov         edx,dword ptr [ebp-4]
 0052099D    mov         eax,dword ptr [edx+eax*4+8]
 005209A1    call        @LStrLen
 005209A6    test        eax,eax
>005209A8    jle         00520A8B
 005209AE    mov         dword ptr [ebp-18],0FFFFFFFF
 005209B5    xor         eax,eax
 005209B7    mov         dword ptr [ebp-1C],eax
 005209BA    xor         eax,eax
 005209BC    mov         al,byte ptr [ebp-1D]
 005209BF    mov         edx,dword ptr [ebp-4]
 005209C2    mov         eax,dword ptr [edx+eax*4+8]
 005209C6    call        00405CE8
 005209CB    test        eax,eax
>005209CD    jl          00520A57
 005209D3    inc         eax
 005209D4    mov         dword ptr [ebp-24],eax
 005209D7    mov         dword ptr [ebp-14],0
 005209DE    xor         eax,eax
 005209E0    mov         al,byte ptr [ebp-1D]
 005209E3    mov         edx,dword ptr [ebp-4]
 005209E6    mov         eax,dword ptr [edx+eax*4+8]
 005209EA    mov         edx,dword ptr [ebp-14]
 005209ED    mov         eax,dword ptr [eax+edx*4]
 005209F0    cmp         eax,dword ptr [ebp-8]
>005209F3    jne         00520A1D
 005209F5    cmp         dword ptr [ebp-18],0FFFFFFFF
>005209F9    jne         00520A18
 005209FB    mov         eax,dword ptr [ebp-14]
 005209FE    mov         dword ptr [ebp-18],eax
 00520A01    xor         eax,eax
 00520A03    mov         al,byte ptr [ebp-1D]
 00520A06    mov         edx,dword ptr [ebp-4]
 00520A09    mov         eax,dword ptr [edx+eax*4+8]
 00520A0D    mov         edx,dword ptr [ebp-18]
 00520A10    lea         eax,[eax+edx*4]
 00520A13    call        @IntfClear
 00520A18    inc         dword ptr [ebp-1C]
>00520A1B    jmp         00520A4F
 00520A1D    cmp         dword ptr [ebp-18],0FFFFFFFF
>00520A21    je          00520A4F
 00520A23    xor         eax,eax
 00520A25    mov         al,byte ptr [ebp-1D]
 00520A28    mov         edx,dword ptr [ebp-4]
 00520A2B    mov         eax,dword ptr [edx+eax*4+8]
 00520A2F    mov         edx,dword ptr [ebp-18]
 00520A32    lea         eax,[eax+edx*4]
 00520A35    xor         edx,edx
 00520A37    mov         dl,byte ptr [ebp-1D]
 00520A3A    mov         ecx,dword ptr [ebp-4]
 00520A3D    mov         edx,dword ptr [ecx+edx*4+8]
 00520A41    mov         ecx,dword ptr [ebp-14]
 00520A44    mov         edx,dword ptr [edx+ecx*4]
 00520A47    call        @IntfCopy
 00520A4C    inc         dword ptr [ebp-18]
 00520A4F    inc         dword ptr [ebp-14]
 00520A52    dec         dword ptr [ebp-24]
>00520A55    jne         005209DE
 00520A57    xor         eax,eax
 00520A59    mov         al,byte ptr [ebp-1D]
 00520A5C    mov         edx,dword ptr [ebp-4]
 00520A5F    mov         eax,dword ptr [edx+eax*4+8]
 00520A63    call        @LStrLen
 00520A68    sub         eax,dword ptr [ebp-1C]
 00520A6B    push        eax
 00520A6C    xor         eax,eax
 00520A6E    mov         al,byte ptr [ebp-1D]
 00520A71    mov         edx,dword ptr [ebp-4]
 00520A74    lea         eax,[edx+eax*4+8]
 00520A78    mov         ecx,1
 00520A7D    mov         edx,dword ptr ds:[51FB40];_DynArr_92_2
 00520A83    call        @DynArraySetLength
 00520A88    add         esp,4
 00520A8B    inc         dword ptr [ebp-10]
 00520A8E    cmp         dword ptr [ebp-10],100
>00520A95    jne         0052098F
 00520A9B    xor         eax,eax
 00520A9D    pop         edx
 00520A9E    pop         ecx
 00520A9F    pop         ecx
 00520AA0    mov         dword ptr fs:[eax],edx
 00520AA3    push        520AB8
 00520AA8    lea         eax,[ebp-8]
 00520AAB    call        @IntfClear
 00520AB0    ret
>00520AB1    jmp         @HandleFinally
>00520AB6    jmp         00520AA8
 00520AB8    mov         al,byte ptr [ebp-9]
 00520ABB    mov         esp,ebp
 00520ABD    pop         ebp
 00520ABE    ret
end;*}

end.