//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit76;

interface

uses
  SysUtils, Classes;

type
  TStringLoggs = class(TObject)
  public
    fC:String;//fC
    f10:String;//f10
    f14:String;//f14
    f18:dword;//f18
    constructor Create;//0052B9C8
  end;
    //procedure sub_0052BAF0(?:?; ?:AnsiString);//0052BAF0
    //procedure sub_0052BBB0(?:?);//0052BBB0

implementation

//0052B9C8
constructor TStringLoggs.Create;
begin
{*
 0052B9C8    push        ebp
 0052B9C9    mov         ebp,esp
 0052B9CB    add         esp,0FFFFFFF4
 0052B9CE    test        dl,dl
>0052B9D0    je          0052B9DA
 0052B9D2    add         esp,0FFFFFFF0
 0052B9D5    call        @ClassCreate
 0052B9DA    mov         dword ptr [ebp-0C],ecx
 0052B9DD    mov         byte ptr [ebp-5],dl
 0052B9E0    mov         dword ptr [ebp-4],eax
 0052B9E3    mov         eax,dword ptr [ebp-4]
 0052B9E6    add         eax,14
 0052B9E9    mov         edx,dword ptr [ebp-0C]
 0052B9EC    call        @LStrAsg
 0052B9F1    mov         eax,dword ptr [ebp-4]
 0052B9F4    add         eax,0C
 0052B9F7    mov         edx,52BA78;'%s | %s'
 0052B9FC    call        @LStrAsg
 0052BA01    mov         eax,dword ptr [ebp-4]
 0052BA04    add         eax,10
 0052BA07    mov         edx,52BA88;'yyyy-mm-dd hh:nn:ss:zzz'
 0052BA0C    call        @LStrAsg
 0052BA11    push        0FFFF
 0052BA16    mov         ecx,dword ptr [ebp-0C]
 0052BA19    mov         dl,1
 0052BA1B    mov         eax,[00476278];TFileStream
 0052BA20    call        TFileStream.Create;TFileStream.Create
 0052BA25    mov         edx,dword ptr [ebp-4]
 0052BA28    mov         dword ptr [edx+4],eax
 0052BA2B    mov         dl,1
 0052BA2D    mov         eax,[00476078];TStringList
 0052BA32    call        TObject.Create;TStringList.Create
 0052BA37    mov         edx,dword ptr [ebp-4]
 0052BA3A    mov         dword ptr [edx+8],eax
 0052BA3D    mov         eax,dword ptr [ebp-4]
 0052BA40    xor         edx,edx
 0052BA42    mov         dword ptr [eax+1C],edx
 0052BA45    mov         eax,dword ptr [ebp-4]
 0052BA48    mov         dword ptr [eax+18],12C
 0052BA4F    mov         eax,dword ptr [ebp-4]
 0052BA52    cmp         byte ptr [ebp-5],0
>0052BA56    je          0052BA67
 0052BA58    call        @AfterConstruction
 0052BA5D    pop         dword ptr fs:[0]
 0052BA64    add         esp,0C
 0052BA67    mov         eax,dword ptr [ebp-4]
 0052BA6A    mov         esp,ebp
 0052BA6C    pop         ebp
 0052BA6D    ret
*}
end;

//0052BAF0
{*procedure sub_0052BAF0(?:?; ?:AnsiString);
begin
 0052BAF0    push        ebp
 0052BAF1    mov         ebp,esp
 0052BAF3    add         esp,0FFFFFFE0
 0052BAF6    xor         ecx,ecx
 0052BAF8    mov         dword ptr [ebp-10],ecx
 0052BAFB    mov         dword ptr [ebp-0C],ecx
 0052BAFE    mov         dword ptr [ebp-8],edx
 0052BB01    mov         dword ptr [ebp-4],eax
 0052BB04    mov         eax,dword ptr [ebp-8]
 0052BB07    call        @LStrAddRef
 0052BB0C    xor         eax,eax
 0052BB0E    push        ebp
 0052BB0F    push        52BBA4
 0052BB14    push        dword ptr fs:[eax]
 0052BB17    mov         dword ptr fs:[eax],esp
 0052BB1A    call        004688F0
 0052BB1F    add         esp,0FFFFFFF8
 0052BB22    fstp        qword ptr [esp]
 0052BB25    wait
 0052BB26    lea         eax,[ebp-0C]
 0052BB29    mov         edx,dword ptr [ebp-4]
 0052BB2C    mov         edx,dword ptr [edx+10]
 0052BB2F    call        00469580
 0052BB34    lea         eax,[ebp-10]
 0052BB37    push        eax
 0052BB38    mov         eax,dword ptr [ebp-0C]
 0052BB3B    mov         dword ptr [ebp-20],eax
 0052BB3E    mov         byte ptr [ebp-1C],0B
 0052BB42    mov         eax,dword ptr [ebp-8]
 0052BB45    mov         dword ptr [ebp-18],eax
 0052BB48    mov         byte ptr [ebp-14],0B
 0052BB4C    lea         edx,[ebp-20]
 0052BB4F    mov         ecx,1
 0052BB54    mov         eax,dword ptr [ebp-4]
 0052BB57    mov         eax,dword ptr [eax+0C]
 0052BB5A    call        Format
 0052BB5F    mov         edx,dword ptr [ebp-10]
 0052BB62    mov         eax,dword ptr [ebp-4]
 0052BB65    mov         eax,dword ptr [eax+8]
 0052BB68    mov         ecx,dword ptr [eax]
 0052BB6A    call        dword ptr [ecx+38]
 0052BB6D    mov         eax,dword ptr [ebp-4]
 0052BB70    inc         dword ptr [eax+1C]
 0052BB73    mov         eax,dword ptr [ebp-4]
 0052BB76    mov         eax,dword ptr [eax+1C]
 0052BB79    mov         edx,dword ptr [ebp-4]
 0052BB7C    cmp         eax,dword ptr [edx+18]
>0052BB7F    jl          0052BB89
 0052BB81    mov         eax,dword ptr [ebp-4]
 0052BB84    call        0052BBB0
 0052BB89    xor         eax,eax
 0052BB8B    pop         edx
 0052BB8C    pop         ecx
 0052BB8D    pop         ecx
 0052BB8E    mov         dword ptr fs:[eax],edx
 0052BB91    push        52BBAB
 0052BB96    lea         eax,[ebp-10]
 0052BB99    mov         edx,3
 0052BB9E    call        @LStrArrayClr
 0052BBA3    ret
>0052BBA4    jmp         @HandleFinally
>0052BBA9    jmp         0052BB96
 0052BBAB    mov         esp,ebp
 0052BBAD    pop         ebp
 0052BBAE    ret
end;*}

//0052BBB0
{*procedure sub_0052BBB0(?:?);
begin
 0052BBB0    push        ebp
 0052BBB1    mov         ebp,esp
 0052BBB3    push        ecx
 0052BBB4    push        ebx
 0052BBB5    mov         dword ptr [ebp-4],eax
 0052BBB8    mov         cx,2
 0052BBBC    xor         edx,edx
 0052BBBE    mov         eax,dword ptr [ebp-4]
 0052BBC1    mov         eax,dword ptr [eax+4]
 0052BBC4    mov         ebx,dword ptr [eax]
 0052BBC6    call        dword ptr [ebx+14]
 0052BBC9    mov         eax,dword ptr [ebp-4]
 0052BBCC    mov         edx,dword ptr [eax+4]
 0052BBCF    mov         eax,dword ptr [ebp-4]
 0052BBD2    mov         eax,dword ptr [eax+8]
 0052BBD5    mov         ecx,dword ptr [eax]
 0052BBD7    call        dword ptr [ecx+78]
 0052BBDA    mov         eax,dword ptr [ebp-4]
 0052BBDD    mov         eax,dword ptr [eax+8]
 0052BBE0    mov         edx,dword ptr [eax]
 0052BBE2    call        dword ptr [edx+44]
 0052BBE5    mov         eax,dword ptr [ebp-4]
 0052BBE8    xor         edx,edx
 0052BBEA    mov         dword ptr [eax+1C],edx
 0052BBED    pop         ebx
 0052BBEE    pop         ecx
 0052BBEF    pop         ebp
 0052BBF0    ret
end;*}

end.