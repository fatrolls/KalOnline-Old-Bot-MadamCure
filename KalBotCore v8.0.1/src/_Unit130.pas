//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit130;

interface

uses
  SysUtils, Classes;

type
  TFreeObject = class(TObject)
  public
    //function v0:?; virtual;//v0//0052D118
  end;
  TFreeBitmap = class(TFreeObject)
  public
    f4:dword;//f4
    //f8:?;//f8
    fA:word;//fA
    fC:dword;//fC
    //f10:?;//f10
    f12:word;//f12
    f14:dword;//f14
    destructor Destroy; virtual;//0052D204
    //function v0:?; virtual;//v0//0052D298
    procedure v4; virtual;//v4//0052D150
    procedure sub_0052D12C; dynamic;//0052D12C
    //procedure sub_0052D3F8(?:?); dynamic;//0052D3F8
    //procedure sub_0052D24C(?:?; ?:?); dynamic;//0052D24C
  end;
  TFreeWinBitmap = class(TFreeBitmap)
  public
    f18:byte;//f18
    f1C:dword;//f1C
    destructor Destroy; virtual;//0052D630
    procedure v4; virtual;//v4//0052D538
    //constructor Create(?:?; ?:?; ?:?);//0052D5CC
  end;
  TFreeMemoryIO = class(TFreeObject)
  public
    ..:dword;//f4
    destructor Destroy; virtual;//0052D6D4
    //function v0:?; virtual;//v0//0052D738
    //constructor Create(?:?);//0052D678
  end;
    //function sub_0052D118:?;//0052D118
    procedure sub_0052D12C;//0052D12C
    procedure sub_0052D150;//0052D150
    //constructor sub_0052D188(?:?; ?:?; ?:?);//0052D188
    destructor Destroy;//0052D204
    //procedure sub_0052D24C(?:?; ?:?);//0052D24C
    //function sub_0052D298:?;//0052D298
    //function sub_0052D2B4(?:?; ?:TFreeMemoryIO; ?:?):?;//0052D2B4
    //function sub_0052D330(?:?; ?:?; ?:?):?;//0052D330
    //procedure sub_0052D3F8(?:?);//0052D3F8
    //function sub_0052D460(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0052D460
    procedure sub_0052D538;//0052D538
    //function sub_0052D560(?:?):?;//0052D560
    destructor Destroy;//0052D630
    destructor Destroy;//0052D6D4
    //function sub_0052D714(?:?):?;//0052D714
    //function sub_0052D738:?;//0052D738
    //function sub_0052D754(?:?; ?:?; ?:?):?;//0052D754

implementation

//0052D118
{*function sub_0052D118:?;
begin
 0052D118    push        ebp
 0052D119    mov         ebp,esp
 0052D11B    add         esp,0FFFFFFF8
 0052D11E    mov         dword ptr [ebp-4],eax
 0052D121    mov         byte ptr [ebp-5],0
 0052D125    mov         al,byte ptr [ebp-5]
 0052D128    pop         ecx
 0052D129    pop         ecx
 0052D12A    pop         ebp
 0052D12B    ret
end;*}

//0052D12C
procedure TFreeBitmap.sub_0052D12C;
begin
{*
 0052D12C    push        ebp
 0052D12D    mov         ebp,esp
 0052D12F    push        ecx
 0052D130    push        ebx
 0052D131    mov         dword ptr [ebp-4],eax
 0052D134    mov         eax,dword ptr [ebp-4]
 0052D137    cmp         word ptr [eax+0A],0;TFreeBitmap.?fA:word
>0052D13C    je          0052D14A
 0052D13E    mov         ebx,dword ptr [ebp-4]
 0052D141    mov         edx,dword ptr [ebp-4]
 0052D144    mov         eax,dword ptr [ebx+0C];TFreeBitmap.?fC:dword
 0052D147    call        dword ptr [ebx+8]
 0052D14A    pop         ebx
 0052D14B    pop         ecx
 0052D14C    pop         ebp
 0052D14D    ret
*}
end;

//0052D150
procedure sub_0052D150;
begin
{*
 0052D150    push        ebp
 0052D151    mov         ebp,esp
 0052D153    push        ecx
 0052D154    push        esi
 0052D155    mov         dword ptr [ebp-4],eax
 0052D158    mov         eax,dword ptr [ebp-4]
 0052D15B    cmp         dword ptr [eax+4],0;TFreeBitmap.?f4:dword
>0052D15F    je          0052D181
 0052D161    mov         eax,dword ptr [ebp-4]
 0052D164    mov         eax,dword ptr [eax+4];TFreeBitmap.?f4:dword
 0052D167    push        eax
 0052D168    call        0052CEF4
 0052D16D    mov         eax,dword ptr [ebp-4]
 0052D170    xor         edx,edx
 0052D172    mov         dword ptr [eax+4],edx;TFreeBitmap.?f4:dword
 0052D175    mov         eax,dword ptr [ebp-4]
 0052D178    mov         si,0FFFD
 0052D17C    call        @CallDynaInst;TFreeBitmap.sub_0052D12C
 0052D181    pop         esi
 0052D182    pop         ecx
 0052D183    pop         ebp
 0052D184    ret
*}
end;

//0052D188
{*constructor sub_0052D188(?:?; ?:?; ?:?);
begin
 0052D188    push        ebp
 0052D189    mov         ebp,esp
 0052D18B    add         esp,0FFFFFFF4
 0052D18E    test        dl,dl
>0052D190    je          0052D19A
 0052D192    add         esp,0FFFFFFF0
 0052D195    call        @ClassCreate
 0052D19A    mov         dword ptr [ebp-0C],ecx
 0052D19D    mov         byte ptr [ebp-5],dl
 0052D1A0    mov         dword ptr [ebp-4],eax
 0052D1A3    xor         edx,edx
 0052D1A5    mov         eax,dword ptr [ebp-4]
 0052D1A8    call        TObject.Create
 0052D1AD    mov         eax,dword ptr [ebp-4]
 0052D1B0    xor         edx,edx
 0052D1B2    mov         dword ptr [eax+4],edx
 0052D1B5    cmp         dword ptr [ebp+10],0
>0052D1B9    jle         0052D1E3
 0052D1BB    cmp         dword ptr [ebp+0C],0
>0052D1BF    jle         0052D1E3
 0052D1C1    cmp         dword ptr [ebp+8],0
>0052D1C5    jle         0052D1E3
 0052D1C7    mov         eax,dword ptr [ebp+0C]
 0052D1CA    push        eax
 0052D1CB    mov         eax,dword ptr [ebp+8]
 0052D1CE    push        eax
 0052D1CF    push        0
 0052D1D1    push        0
 0052D1D3    push        0
 0052D1D5    mov         ecx,dword ptr [ebp+10]
 0052D1D8    mov         edx,dword ptr [ebp-0C]
 0052D1DB    mov         eax,dword ptr [ebp-4]
 0052D1DE    call        0052D460
 0052D1E3    mov         eax,dword ptr [ebp-4]
 0052D1E6    cmp         byte ptr [ebp-5],0
>0052D1EA    je          0052D1FB
 0052D1EC    call        @AfterConstruction
 0052D1F1    pop         dword ptr fs:[0]
 0052D1F8    add         esp,0C
 0052D1FB    mov         eax,dword ptr [ebp-4]
 0052D1FE    mov         esp,ebp
 0052D200    pop         ebp
 0052D201    ret         0C
end;*}

//0052D204
destructor TFreeBitmap.Destroy;
begin
{*
 0052D204    push        ebp
 0052D205    mov         ebp,esp
 0052D207    add         esp,0FFFFFFF8
 0052D20A    call        @BeforeDestruction
 0052D20F    mov         byte ptr [ebp-5],dl
 0052D212    mov         dword ptr [ebp-4],eax
 0052D215    mov         eax,dword ptr [ebp-4]
 0052D218    cmp         dword ptr [eax+4],0;TFreeBitmap.?f4:dword
>0052D21C    je          0052D22A
 0052D21E    mov         eax,dword ptr [ebp-4]
 0052D221    mov         eax,dword ptr [eax+4];TFreeBitmap.?f4:dword
 0052D224    push        eax
 0052D225    call        0052CEF4
 0052D22A    mov         dl,byte ptr [ebp-5]
 0052D22D    and         dl,0FC
 0052D230    mov         eax,dword ptr [ebp-4]
 0052D233    call        TObject.Destroy
 0052D238    cmp         byte ptr [ebp-5],0
>0052D23C    jle         0052D246
 0052D23E    mov         eax,dword ptr [ebp-4]
 0052D241    call        @ClassDestroy
 0052D246    pop         ecx
 0052D247    pop         ecx
 0052D248    pop         ebp
 0052D249    ret
*}
end;

//0052D24C
{*procedure TFreeBitmap.sub_0052D24C(?:?; ?:?);
begin
 0052D24C    push        ebp
 0052D24D    mov         ebp,esp
 0052D24F    add         esp,0FFFFFFF0
 0052D252    push        ebx
 0052D253    mov         dword ptr [ebp-0C],ecx
 0052D256    mov         dword ptr [ebp-8],edx
 0052D259    mov         dword ptr [ebp-4],eax
 0052D25C    mov         byte ptr [ebp-0D],0
 0052D260    mov         eax,dword ptr [ebp-8]
 0052D263    mov         eax,dword ptr [eax]
 0052D265    mov         edx,dword ptr [ebp-0C]
 0052D268    cmp         eax,dword ptr [edx]
>0052D26A    je          0052D28D
 0052D26C    mov         eax,dword ptr [ebp-4]
 0052D26F    cmp         word ptr [eax+12],0;TFreeBitmap.?f12:word
>0052D274    je          0052D28D
 0052D276    mov         eax,dword ptr [ebp-0C]
 0052D279    push        eax
 0052D27A    lea         eax,[ebp-0D]
 0052D27D    push        eax
 0052D27E    mov         ecx,dword ptr [ebp-8]
 0052D281    mov         ebx,dword ptr [ebp-4]
 0052D284    mov         edx,dword ptr [ebp-4]
 0052D287    mov         eax,dword ptr [ebx+14];TFreeBitmap.?f14:dword
 0052D28A    call        dword ptr [ebx+10]
 0052D28D    mov         al,byte ptr [ebp-0D]
 0052D290    pop         ebx
 0052D291    mov         esp,ebp
 0052D293    pop         ebp
 0052D294    ret
end;*}

//0052D298
{*function sub_0052D298:?;
begin
 0052D298    push        ebp
 0052D299    mov         ebp,esp
 0052D29B    add         esp,0FFFFFFF8
 0052D29E    mov         dword ptr [ebp-4],eax
 0052D2A1    mov         eax,dword ptr [ebp-4]
 0052D2A4    cmp         dword ptr [eax+4],0;TFreeBitmap.?f4:dword
 0052D2A8    setne       byte ptr [ebp-5]
 0052D2AC    mov         al,byte ptr [ebp-5]
 0052D2AF    pop         ecx
 0052D2B0    pop         ecx
 0052D2B1    pop         ebp
 0052D2B2    ret
end;*}

//0052D2B4
{*function sub_0052D2B4(?:?; ?:TFreeMemoryIO; ?:?):?;
begin
 0052D2B4    push        ebp
 0052D2B5    mov         ebp,esp
 0052D2B7    add         esp,0FFFFFFEC
 0052D2BA    push        esi
 0052D2BB    mov         dword ptr [ebp-0C],ecx
 0052D2BE    mov         dword ptr [ebp-8],edx
 0052D2C1    mov         dword ptr [ebp-4],eax
 0052D2C4    mov         eax,dword ptr [ebp-8]
 0052D2C7    call        0052D714
 0052D2CC    mov         dword ptr [ebp-14],eax
 0052D2CF    cmp         dword ptr [ebp-14],0FFFFFFFF
>0052D2D3    je          0052D323
 0052D2D5    mov         eax,dword ptr [ebp-14]
 0052D2D8    push        eax
 0052D2D9    call        0052CF14
 0052D2DE    test        eax,eax
>0052D2E0    je          0052D323
 0052D2E2    mov         eax,dword ptr [ebp-4]
 0052D2E5    cmp         dword ptr [eax+4],0
>0052D2E9    je          0052D2F7
 0052D2EB    mov         eax,dword ptr [ebp-4]
 0052D2EE    mov         eax,dword ptr [eax+4]
 0052D2F1    push        eax
 0052D2F2    call        0052CEF4
 0052D2F7    mov         ecx,dword ptr [ebp-0C]
 0052D2FA    mov         edx,dword ptr [ebp-14]
 0052D2FD    mov         eax,dword ptr [ebp-8]
 0052D300    call        0052D754
 0052D305    mov         edx,dword ptr [ebp-4]
 0052D308    mov         dword ptr [edx+4],eax
 0052D30B    mov         eax,dword ptr [ebp-4]
 0052D30E    mov         edx,dword ptr [eax]
 0052D310    call        dword ptr [edx]
 0052D312    mov         byte ptr [ebp-0D],al
 0052D315    mov         eax,dword ptr [ebp-4]
 0052D318    mov         si,0FFFD
 0052D31C    call        @CallDynaInst
>0052D321    jmp         0052D327
 0052D323    mov         byte ptr [ebp-0D],0
 0052D327    mov         al,byte ptr [ebp-0D]
 0052D32A    pop         esi
 0052D32B    mov         esp,ebp
 0052D32D    pop         ebp
 0052D32E    ret
end;*}

//0052D330
{*function sub_0052D330(?:?; ?:?; ?:?):?;
begin
 0052D330    push        ebp
 0052D331    mov         ebp,esp
 0052D333    add         esp,0FFFFFFE0
 0052D336    mov         dword ptr [ebp-20],ecx
 0052D339    mov         dword ptr [ebp-8],edx
 0052D33C    mov         dword ptr [ebp-4],eax
 0052D33F    mov         eax,dword ptr [ebp-8]
 0052D342    mov         edx,dword ptr [eax]
 0052D344    call        dword ptr [edx]
 0052D346    mov         dword ptr [ebp-1C],eax
 0052D349    mov         dl,1
 0052D34B    mov         eax,[00476368];TMemoryStream
 0052D350    call        TObject.Create;TMemoryStream.Create
 0052D355    mov         dword ptr [ebp-18],eax
 0052D358    xor         eax,eax
 0052D35A    push        ebp
 0052D35B    push        52D3E8
 0052D360    push        dword ptr fs:[eax]
 0052D363    mov         dword ptr fs:[eax],esp
 0052D366    mov         eax,dword ptr [ebp-1C]
 0052D369    xor         edx,edx
 0052D36B    push        edx
 0052D36C    push        eax
 0052D36D    mov         edx,dword ptr [ebp-8]
 0052D370    mov         eax,dword ptr [ebp-18]
 0052D373    call        0047BFB8
 0052D378    mov         eax,dword ptr [ebp-18]
 0052D37B    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0052D37E    mov         dword ptr [ebp-14],eax
 0052D381    mov         eax,dword ptr [ebp-1C]
 0052D384    push        eax
 0052D385    mov         ecx,dword ptr [ebp-14]
 0052D388    mov         dl,1
 0052D38A    mov         eax,[0052D0B8];TFreeMemoryIO
 0052D38F    call        TFreeMemoryIO.Create;TFreeMemoryIO.Create
 0052D394    mov         dword ptr [ebp-10],eax
 0052D397    xor         eax,eax
 0052D399    push        ebp
 0052D39A    push        52D3CB
 0052D39F    push        dword ptr fs:[eax]
 0052D3A2    mov         dword ptr fs:[eax],esp
 0052D3A5    xor         ecx,ecx
 0052D3A7    mov         edx,dword ptr [ebp-10]
 0052D3AA    mov         eax,dword ptr [ebp-4]
 0052D3AD    call        0052D2B4
 0052D3B2    mov         byte ptr [ebp-9],al
 0052D3B5    xor         eax,eax
 0052D3B7    pop         edx
 0052D3B8    pop         ecx
 0052D3B9    pop         ecx
 0052D3BA    mov         dword ptr fs:[eax],edx
 0052D3BD    push        52D3D2
 0052D3C2    mov         eax,dword ptr [ebp-10]
 0052D3C5    call        TObject.Free
 0052D3CA    ret
>0052D3CB    jmp         @HandleFinally
>0052D3D0    jmp         0052D3C2
 0052D3D2    xor         eax,eax
 0052D3D4    pop         edx
 0052D3D5    pop         ecx
 0052D3D6    pop         ecx
 0052D3D7    mov         dword ptr fs:[eax],edx
 0052D3DA    push        52D3EF
 0052D3DF    mov         eax,dword ptr [ebp-18]
 0052D3E2    call        TObject.Free
 0052D3E7    ret
>0052D3E8    jmp         @HandleFinally
>0052D3ED    jmp         0052D3DF
 0052D3EF    mov         al,byte ptr [ebp-9]
 0052D3F2    mov         esp,ebp
 0052D3F4    pop         ebp
 0052D3F5    ret
end;*}

//0052D3F8
{*procedure TFreeBitmap.sub_0052D3F8(?:?);
begin
 0052D3F8    push        ebp
 0052D3F9    mov         ebp,esp
 0052D3FB    add         esp,0FFFFFFF4
 0052D3FE    push        esi
 0052D3FF    mov         dword ptr [ebp-8],edx
 0052D402    mov         dword ptr [ebp-4],eax
 0052D405    mov         byte ptr [ebp-9],0
 0052D409    cmp         dword ptr [ebp-8],0
>0052D40D    je          0052D458
 0052D40F    lea         ecx,[ebp-8]
 0052D412    mov         eax,dword ptr [ebp-4]
 0052D415    lea         edx,[eax+4];TFreeBitmap.?f4:dword
 0052D418    mov         eax,dword ptr [ebp-4]
 0052D41B    mov         si,0FFFF
 0052D41F    call        @CallDynaInst;TFreeBitmap.sub_0052D24C
 0052D424    test        al,al
>0052D426    jne         0052D43F
 0052D428    mov         eax,dword ptr [ebp-4]
 0052D42B    mov         edx,dword ptr [eax]
 0052D42D    call        dword ptr [edx];TFreeBitmap.sub_0052D298
 0052D42F    test        al,al
>0052D431    je          0052D43F
 0052D433    mov         eax,dword ptr [ebp-4]
 0052D436    mov         eax,dword ptr [eax+4];TFreeBitmap.?f4:dword
 0052D439    push        eax
 0052D43A    call        0052CEF4
 0052D43F    mov         eax,dword ptr [ebp-8]
 0052D442    mov         edx,dword ptr [ebp-4]
 0052D445    mov         dword ptr [edx+4],eax;TFreeBitmap.?f4:dword
 0052D448    mov         byte ptr [ebp-9],1
 0052D44C    mov         eax,dword ptr [ebp-4]
 0052D44F    mov         si,0FFFD
 0052D453    call        @CallDynaInst;TFreeBitmap.sub_0052D12C
 0052D458    mov         al,byte ptr [ebp-9]
 0052D45B    pop         esi
 0052D45C    mov         esp,ebp
 0052D45E    pop         ebp
 0052D45F    ret
end;*}

//0052D460
{*function sub_0052D460(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0052D460    push        ebp
 0052D461    mov         ebp,esp
 0052D463    add         esp,0FFFFFFE4
 0052D466    push        esi
 0052D467    mov         dword ptr [ebp-0C],ecx
 0052D46A    mov         dword ptr [ebp-8],edx
 0052D46D    mov         dword ptr [ebp-4],eax
 0052D470    mov         byte ptr [ebp-0D],0
 0052D474    mov         eax,dword ptr [ebp-4]
 0052D477    cmp         dword ptr [eax+4],0
>0052D47B    je          0052D489
 0052D47D    mov         eax,dword ptr [ebp-4]
 0052D480    mov         eax,dword ptr [eax+4]
 0052D483    push        eax
 0052D484    call        0052CEF4
 0052D489    mov         eax,dword ptr [ebp+8]
 0052D48C    push        eax
 0052D48D    mov         eax,dword ptr [ebp+0C]
 0052D490    push        eax
 0052D491    mov         eax,dword ptr [ebp+10]
 0052D494    push        eax
 0052D495    mov         eax,dword ptr [ebp+14]
 0052D498    push        eax
 0052D499    mov         eax,dword ptr [ebp+18]
 0052D49C    push        eax
 0052D49D    mov         eax,dword ptr [ebp-0C]
 0052D4A0    push        eax
 0052D4A1    call        0052CEEC
 0052D4A6    mov         edx,dword ptr [ebp-4]
 0052D4A9    mov         dword ptr [edx+4],eax
 0052D4AC    mov         eax,dword ptr [ebp-4]
 0052D4AF    cmp         dword ptr [eax+4],0
>0052D4B3    je          0052D52C
 0052D4B5    cmp         dword ptr [ebp-8],1
>0052D4B9    jne         0052D51C
 0052D4BB    mov         eax,dword ptr [ebp+14]
 0052D4BE    dec         eax
>0052D4BF    je          0052D4CB
 0052D4C1    sub         eax,3
>0052D4C4    je          0052D4CB
 0052D4C6    sub         eax,4
>0052D4C9    jne         0052D51C
 0052D4CB    mov         eax,dword ptr [ebp-4]
 0052D4CE    mov         eax,dword ptr [eax+4]
 0052D4D1    push        eax
 0052D4D2    call        0052CF34
 0052D4D7    mov         dword ptr [ebp-14],eax
 0052D4DA    mov         eax,dword ptr [ebp-4]
 0052D4DD    mov         eax,dword ptr [eax+4]
 0052D4E0    push        eax
 0052D4E1    call        0052CF2C
 0052D4E6    dec         eax
 0052D4E7    test        eax,eax
>0052D4E9    jb          0052D51C
 0052D4EB    inc         eax
 0052D4EC    mov         dword ptr [ebp-1C],eax
 0052D4EF    mov         dword ptr [ebp-18],0
 0052D4F6    mov         al,byte ptr [ebp-18]
 0052D4F9    mov         edx,dword ptr [ebp-14]
 0052D4FC    mov         byte ptr [edx],al
 0052D4FE    mov         al,byte ptr [ebp-18]
 0052D501    mov         edx,dword ptr [ebp-14]
 0052D504    mov         byte ptr [edx+1],al
 0052D507    mov         al,byte ptr [ebp-18]
 0052D50A    mov         edx,dword ptr [ebp-14]
 0052D50D    mov         byte ptr [edx+2],al
 0052D510    add         dword ptr [ebp-14],4
 0052D514    inc         dword ptr [ebp-18]
 0052D517    dec         dword ptr [ebp-1C]
>0052D51A    jne         0052D4F6
 0052D51C    mov         byte ptr [ebp-0D],1
 0052D520    mov         eax,dword ptr [ebp-4]
 0052D523    mov         si,0FFFD
 0052D527    call        @CallDynaInst
 0052D52C    mov         al,byte ptr [ebp-0D]
 0052D52F    pop         esi
 0052D530    mov         esp,ebp
 0052D532    pop         ebp
 0052D533    ret         14
end;*}

//0052D538
procedure sub_0052D538;
begin
{*
 0052D538    push        ebp
 0052D539    mov         ebp,esp
 0052D53B    push        ecx
 0052D53C    mov         dword ptr [ebp-4],eax
 0052D53F    mov         eax,dword ptr [ebp-4]
 0052D542    cmp         byte ptr [eax+18],0;TFreeWinBitmap.?f18:byte
>0052D546    je          0052D554
 0052D548    mov         eax,dword ptr [ebp-4]
 0052D54B    mov         eax,dword ptr [eax+1C];TFreeWinBitmap.?f1C:dword
 0052D54E    push        eax
 0052D54F    call        0052CEF4
 0052D554    mov         eax,dword ptr [ebp-4]
 0052D557    call        0052D150
 0052D55C    pop         ecx
 0052D55D    pop         ebp
 0052D55E    ret
*}
end;

//0052D560
{*function sub_0052D560(?:?):?;
begin
 0052D560    push        ebp
 0052D561    mov         ebp,esp
 0052D563    add         esp,0FFFFFFF4
 0052D566    mov         dword ptr [ebp-4],eax
 0052D569    xor         eax,eax
 0052D56B    mov         dword ptr [ebp-8],eax
 0052D56E    mov         eax,dword ptr [ebp-4]
 0052D571    mov         edx,dword ptr [eax]
 0052D573    call        dword ptr [edx]
 0052D575    test        al,al
>0052D577    je          0052D5C5
 0052D579    push        0
 0052D57B    call        user32.GetDC
 0052D580    mov         dword ptr [ebp-0C],eax
 0052D583    push        0
 0052D585    mov         eax,dword ptr [ebp-4]
 0052D588    mov         eax,dword ptr [eax+4]
 0052D58B    push        eax
 0052D58C    call        0052CF44
 0052D591    push        eax
 0052D592    mov         eax,dword ptr [ebp-4]
 0052D595    mov         eax,dword ptr [eax+4]
 0052D598    push        eax
 0052D599    call        0052CF24
 0052D59E    push        eax
 0052D59F    push        4
 0052D5A1    mov         eax,dword ptr [ebp-4]
 0052D5A4    mov         eax,dword ptr [eax+4]
 0052D5A7    push        eax
 0052D5A8    call        0052CF3C
 0052D5AD    push        eax
 0052D5AE    mov         eax,dword ptr [ebp-0C]
 0052D5B1    push        eax
 0052D5B2    call        gdi32.CreateDIBitmap
 0052D5B7    mov         dword ptr [ebp-8],eax
 0052D5BA    mov         eax,dword ptr [ebp-0C]
 0052D5BD    push        eax
 0052D5BE    push        0
 0052D5C0    call        user32.ReleaseDC
 0052D5C5    mov         eax,dword ptr [ebp-8]
 0052D5C8    mov         esp,ebp
 0052D5CA    pop         ebp
 0052D5CB    ret
end;*}

//0052D5CC
{*constructor TFreeWinBitmap.Create(?:?; ?:?; ?:?);
begin
 0052D5CC    push        ebp
 0052D5CD    mov         ebp,esp
 0052D5CF    add         esp,0FFFFFFF4
 0052D5D2    test        dl,dl
>0052D5D4    je          0052D5DE
 0052D5D6    add         esp,0FFFFFFF0
 0052D5D9    call        @ClassCreate
 0052D5DE    mov         dword ptr [ebp-0C],ecx
 0052D5E1    mov         byte ptr [ebp-5],dl
 0052D5E4    mov         dword ptr [ebp-4],eax
 0052D5E7    mov         eax,dword ptr [ebp+10]
 0052D5EA    push        eax
 0052D5EB    mov         eax,dword ptr [ebp+0C]
 0052D5EE    push        eax
 0052D5EF    mov         eax,dword ptr [ebp+8]
 0052D5F2    push        eax
 0052D5F3    mov         ecx,dword ptr [ebp-0C]
 0052D5F6    xor         edx,edx
 0052D5F8    mov         eax,dword ptr [ebp-4]
 0052D5FB    call        0052D188
 0052D600    mov         eax,dword ptr [ebp-4]
 0052D603    xor         edx,edx
 0052D605    mov         dword ptr [eax+1C],edx
 0052D608    mov         eax,dword ptr [ebp-4]
 0052D60B    mov         byte ptr [eax+18],0
 0052D60F    mov         eax,dword ptr [ebp-4]
 0052D612    cmp         byte ptr [ebp-5],0
>0052D616    je          0052D627
 0052D618    call        @AfterConstruction
 0052D61D    pop         dword ptr fs:[0]
 0052D624    add         esp,0C
 0052D627    mov         eax,dword ptr [ebp-4]
 0052D62A    mov         esp,ebp
 0052D62C    pop         ebp
 0052D62D    ret         0C
end;*}

//0052D630
destructor TFreeWinBitmap.Destroy;
begin
{*
 0052D630    push        ebp
 0052D631    mov         ebp,esp
 0052D633    add         esp,0FFFFFFF8
 0052D636    call        @BeforeDestruction
 0052D63B    mov         byte ptr [ebp-5],dl
 0052D63E    mov         dword ptr [ebp-4],eax
 0052D641    mov         eax,dword ptr [ebp-4]
 0052D644    cmp         byte ptr [eax+18],0;TFreeWinBitmap.?f18:byte
>0052D648    je          0052D656
 0052D64A    mov         eax,dword ptr [ebp-4]
 0052D64D    mov         eax,dword ptr [eax+1C];TFreeWinBitmap.?f1C:dword
 0052D650    push        eax
 0052D651    call        0052CEF4
 0052D656    mov         dl,byte ptr [ebp-5]
 0052D659    and         dl,0FC
 0052D65C    mov         eax,dword ptr [ebp-4]
 0052D65F    call        TFreeBitmap.Destroy
 0052D664    cmp         byte ptr [ebp-5],0
>0052D668    jle         0052D672
 0052D66A    mov         eax,dword ptr [ebp-4]
 0052D66D    call        @ClassDestroy
 0052D672    pop         ecx
 0052D673    pop         ecx
 0052D674    pop         ebp
 0052D675    ret
*}
end;

//0052D678
{*constructor TFreeMemoryIO.Create(?:?);
begin
 0052D678    push        ebp
 0052D679    mov         ebp,esp
 0052D67B    add         esp,0FFFFFFF4
 0052D67E    test        dl,dl
>0052D680    je          0052D68A
 0052D682    add         esp,0FFFFFFF0
 0052D685    call        @ClassCreate
 0052D68A    mov         dword ptr [ebp-0C],ecx
 0052D68D    mov         byte ptr [ebp-5],dl
 0052D690    mov         dword ptr [ebp-4],eax
 0052D693    xor         edx,edx
 0052D695    mov         eax,dword ptr [ebp-4]
 0052D698    call        TObject.Create
 0052D69D    mov         eax,dword ptr [ebp+8]
 0052D6A0    push        eax
 0052D6A1    mov         eax,dword ptr [ebp-0C]
 0052D6A4    push        eax
 0052D6A5    call        0052CEFC
 0052D6AA    mov         edx,dword ptr [ebp-4]
 0052D6AD    mov         dword ptr [edx+4],eax;TFreeMemoryIO....:dword
 0052D6B0    mov         eax,dword ptr [ebp-4]
 0052D6B3    cmp         byte ptr [ebp-5],0
>0052D6B7    je          0052D6C8
 0052D6B9    call        @AfterConstruction
 0052D6BE    pop         dword ptr fs:[0]
 0052D6C5    add         esp,0C
 0052D6C8    mov         eax,dword ptr [ebp-4]
 0052D6CB    mov         esp,ebp
 0052D6CD    pop         ebp
 0052D6CE    ret         4
end;*}

//0052D6D4
destructor TFreeMemoryIO.Destroy;
begin
{*
 0052D6D4    push        ebp
 0052D6D5    mov         ebp,esp
 0052D6D7    add         esp,0FFFFFFF8
 0052D6DA    call        @BeforeDestruction
 0052D6DF    mov         byte ptr [ebp-5],dl
 0052D6E2    mov         dword ptr [ebp-4],eax
 0052D6E5    mov         eax,dword ptr [ebp-4]
 0052D6E8    mov         eax,dword ptr [eax+4];TFreeMemoryIO.....:dword
 0052D6EB    push        eax
 0052D6EC    call        0052CF04
 0052D6F1    mov         dl,byte ptr [ebp-5]
 0052D6F4    and         dl,0FC
 0052D6F7    mov         eax,dword ptr [ebp-4]
 0052D6FA    call        TObject.Destroy
 0052D6FF    cmp         byte ptr [ebp-5],0
>0052D703    jle         0052D70D
 0052D705    mov         eax,dword ptr [ebp-4]
 0052D708    call        @ClassDestroy
 0052D70D    pop         ecx
 0052D70E    pop         ecx
 0052D70F    pop         ebp
 0052D710    ret
*}
end;

//0052D714
{*function sub_0052D714(?:?):?;
begin
 0052D714    push        ebp
 0052D715    mov         ebp,esp
 0052D717    add         esp,0FFFFFFF8
 0052D71A    mov         dword ptr [ebp-4],eax
 0052D71D    push        0
 0052D71F    mov         eax,dword ptr [ebp-4]
 0052D722    mov         eax,dword ptr [eax+4]
 0052D725    push        eax
 0052D726    call        0052CF1C
 0052D72B    mov         dword ptr [ebp-8],eax
 0052D72E    mov         eax,dword ptr [ebp-8]
 0052D731    pop         ecx
 0052D732    pop         ecx
 0052D733    pop         ebp
 0052D734    ret
end;*}

//0052D738
{*function sub_0052D738:?;
begin
 0052D738    push        ebp
 0052D739    mov         ebp,esp
 0052D73B    add         esp,0FFFFFFF8
 0052D73E    mov         dword ptr [ebp-4],eax
 0052D741    mov         eax,dword ptr [ebp-4]
 0052D744    cmp         dword ptr [eax+4],0;TFreeMemoryIO......:dword
 0052D748    setne       byte ptr [ebp-5]
 0052D74C    mov         al,byte ptr [ebp-5]
 0052D74F    pop         ecx
 0052D750    pop         ecx
 0052D751    pop         ebp
 0052D752    ret
end;*}

//0052D754
{*function sub_0052D754(?:?; ?:?; ?:?):?;
begin
 0052D754    push        ebp
 0052D755    mov         ebp,esp
 0052D757    add         esp,0FFFFFFF0
 0052D75A    mov         dword ptr [ebp-0C],ecx
 0052D75D    mov         dword ptr [ebp-8],edx
 0052D760    mov         dword ptr [ebp-4],eax
 0052D763    mov         eax,dword ptr [ebp-0C]
 0052D766    push        eax
 0052D767    mov         eax,dword ptr [ebp-4]
 0052D76A    mov         eax,dword ptr [eax+4]
 0052D76D    push        eax
 0052D76E    mov         eax,dword ptr [ebp-8]
 0052D771    push        eax
 0052D772    call        0052CF0C
 0052D777    mov         dword ptr [ebp-10],eax
 0052D77A    mov         eax,dword ptr [ebp-10]
 0052D77D    mov         esp,ebp
 0052D77F    pop         ebp
 0052D780    ret
end;*}

end.