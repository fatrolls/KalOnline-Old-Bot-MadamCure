//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit77;

interface

uses
  SysUtils, Classes;

type
  TTokenizer = class(TObject)
  public
    f4:dword;//f4
    f8:dword;//f8
    f10:String;//f10
    f14:dword;//f14
    //f18:?;//f18
    destructor Destroy; virtual;//00522740
    //function v0:?; virtual;//v0//00522990
    //function v4:?; virtual;//v4//00522E60
    //function v8:?; virtual;//v8//00522CC8
    //function vC:?; virtual;//vC//00522B10
    //function v10:?; virtual;//v10//00522C00
    //function v14:?; virtual;//v14//00522E04
    //function v18:?; virtual;//v18//005229D4
    //function v1C(?:?):?; virtual;//v1C//00522F4C
    //function v20:?; virtual;//v20//0052301C
    constructor Create;//005226C8
  end;
    destructor Destroy;//00522740
    //function sub_0052277C(?:?):?;//0052277C
    //function sub_00522900(?:?; ?:?):?;//00522900
    //function sub_00522990:?;//00522990
    //function sub_005229D4:?;//005229D4
    //function sub_00522B10:?;//00522B10
    //function sub_00522C00:?;//00522C00
    //function sub_00522CC8:?;//00522CC8
    //function sub_00522E04:?;//00522E04
    //function sub_00522E60:?;//00522E60
    //function sub_00522F4C(?:?):?;//00522F4C
    //function sub_0052301C:?;//0052301C

implementation

//005226C8
constructor TTokenizer.Create;
begin
{*
 005226C8    push        ebp
 005226C9    mov         ebp,esp
 005226CB    add         esp,0FFFFFFF8
 005226CE    test        dl,dl
>005226D0    je          005226DA
 005226D2    add         esp,0FFFFFFF0
 005226D5    call        @ClassCreate
 005226DA    mov         byte ptr [ebp-5],dl
 005226DD    mov         dword ptr [ebp-4],eax
 005226E0    xor         edx,edx
 005226E2    mov         eax,dword ptr [ebp-4]
 005226E5    call        TObject.Create
 005226EA    mov         dl,1
 005226EC    mov         eax,[00476368];TMemoryStream
 005226F1    call        TObject.Create;TMemoryStream.Create
 005226F6    mov         edx,dword ptr [ebp-4]
 005226F9    mov         dword ptr [edx+4],eax
 005226FC    mov         eax,dword ptr [ebp-4]
 005226FF    add         eax,10
 00522702    mov         edx,14
 00522707    call        @LStrSetLength
 0052270C    mov         eax,dword ptr [ebp-4]
 0052270F    mov         dword ptr [eax+8],1
 00522716    mov         eax,dword ptr [ebp-4]
 00522719    xor         edx,edx
 0052271B    mov         dword ptr [eax+0C],edx
 0052271E    mov         eax,dword ptr [ebp-4]
 00522721    cmp         byte ptr [ebp-5],0
>00522725    je          00522736
 00522727    call        @AfterConstruction
 0052272C    pop         dword ptr fs:[0]
 00522733    add         esp,0C
 00522736    mov         eax,dword ptr [ebp-4]
 00522739    pop         ecx
 0052273A    pop         ecx
 0052273B    pop         ebp
 0052273C    ret
*}
end;

//00522740
destructor TTokenizer.Destroy;
begin
{*
 00522740    push        ebp
 00522741    mov         ebp,esp
 00522743    add         esp,0FFFFFFF8
 00522746    call        @BeforeDestruction
 0052274B    mov         byte ptr [ebp-5],dl
 0052274E    mov         dword ptr [ebp-4],eax
 00522751    mov         eax,dword ptr [ebp-4]
 00522754    mov         eax,dword ptr [eax+4]
 00522757    call        TObject.Free
 0052275C    mov         dl,byte ptr [ebp-5]
 0052275F    and         dl,0FC
 00522762    mov         eax,dword ptr [ebp-4]
 00522765    call        TObject.Destroy
 0052276A    cmp         byte ptr [ebp-5],0
>0052276E    jle         00522778
 00522770    mov         eax,dword ptr [ebp-4]
 00522773    call        @ClassDestroy
 00522778    pop         ecx
 00522779    pop         ecx
 0052277A    pop         ebp
 0052277B    ret
*}
end;

//0052277C
{*function sub_0052277C(?:?):?;
begin
 0052277C    push        ebp
 0052277D    mov         ebp,esp
 0052277F    add         esp,0FFFFFFF8
 00522782    push        ebx
 00522783    mov         dword ptr [ebp-4],eax
 00522786    lea         edx,[ebp-6]
 00522789    mov         ecx,1
 0052278E    mov         eax,dword ptr [ebp-4]
 00522791    mov         eax,dword ptr [eax+4]
 00522794    mov         ebx,dword ptr [eax]
 00522796    call        dword ptr [ebx+0C]
 00522799    test        eax,eax
>0052279B    jne         005227A6
 0052279D    mov         byte ptr [ebp-5],0
>005227A1    jmp         005228F6
 005227A6    xor         eax,eax
 005227A8    mov         al,byte ptr [ebp-6]
 005227AB    cmp         eax,29
>005227AE    jg          005227E9
>005227B0    je          00522855
 005227B6    cmp         eax,20
>005227B9    jg          005227CF
>005227BB    je          00522786
 005227BD    sub         eax,9
>005227C0    je          00522786
 005227C2    dec         eax
>005227C3    je          0052283B
 005227C5    sub         eax,3
>005227C8    je          00522786
>005227CA    jmp         005228D3
 005227CF    sub         eax,22
>005227D2    je          00522864
 005227D8    sub         eax,5
>005227DB    je          00522873
 005227E1    dec         eax
>005227E2    je          00522846
>005227E4    jmp         005228D3
 005227E9    cmp         eax,31
>005227EC    jge         0052280E
 005227EE    sub         eax,2B
>005227F1    je          00522882
 005227F7    sub         eax,2
>005227FA    je          00522882
 00522800    sub         eax,3
>00522803    je          0052289D
>00522809    jmp         005228D3
 0052280E    add         eax,0FFFFFFCF
 00522811    sub         eax,9
>00522814    jb          005228B8
 0052281A    dec         eax
>0052281B    je          0052282C
 0052281D    sub         eax,40
>00522820    je          00522846
 00522822    sub         eax,2
>00522825    je          00522855
>00522827    jmp         005228D3
 0052282C    mov         eax,dword ptr [ebp-4]
 0052282F    mov         edx,dword ptr [eax]
 00522831    call        dword ptr [edx]
 00522833    mov         byte ptr [ebp-5],al
>00522836    jmp         005228EC
 0052283B    mov         eax,dword ptr [ebp-4]
 0052283E    inc         dword ptr [eax+8]
>00522841    jmp         00522786
 00522846    mov         eax,dword ptr [ebp-4]
 00522849    inc         dword ptr [eax+0C]
 0052284C    mov         byte ptr [ebp-5],4
>00522850    jmp         005228EC
 00522855    mov         eax,dword ptr [ebp-4]
 00522858    dec         dword ptr [eax+0C]
 0052285B    mov         byte ptr [ebp-5],5
>0052285F    jmp         005228EC
 00522864    mov         dl,22
 00522866    mov         eax,dword ptr [ebp-4]
 00522869    mov         ecx,dword ptr [eax]
 0052286B    call        dword ptr [ecx+1C]
 0052286E    mov         byte ptr [ebp-5],al
>00522871    jmp         005228EC
 00522873    mov         dl,27
 00522875    mov         eax,dword ptr [ebp-4]
 00522878    mov         ecx,dword ptr [eax]
 0052287A    call        dword ptr [ecx+1C]
 0052287D    mov         byte ptr [ebp-5],al
>00522880    jmp         005228EC
 00522882    mov         eax,dword ptr [ebp-4]
 00522885    add         eax,10
 00522888    mov         dl,byte ptr [ebp-6]
 0052288B    call        @LStrFromChar
 00522890    mov         eax,dword ptr [ebp-4]
 00522893    mov         edx,dword ptr [eax]
 00522895    call        dword ptr [edx+4]
 00522898    mov         byte ptr [ebp-5],al
>0052289B    jmp         005228EC
 0052289D    mov         eax,dword ptr [ebp-4]
 005228A0    add         eax,10
 005228A3    mov         dl,byte ptr [ebp-6]
 005228A6    call        @LStrFromChar
 005228AB    mov         eax,dword ptr [ebp-4]
 005228AE    mov         edx,dword ptr [eax]
 005228B0    call        dword ptr [edx+8]
 005228B3    mov         byte ptr [ebp-5],al
>005228B6    jmp         005228EC
 005228B8    mov         eax,dword ptr [ebp-4]
 005228BB    add         eax,10
 005228BE    mov         dl,byte ptr [ebp-6]
 005228C1    call        @LStrFromChar
 005228C6    mov         eax,dword ptr [ebp-4]
 005228C9    mov         edx,dword ptr [eax]
 005228CB    call        dword ptr [edx+0C]
 005228CE    mov         byte ptr [ebp-5],al
>005228D1    jmp         005228EC
 005228D3    mov         eax,dword ptr [ebp-4]
 005228D6    add         eax,10
 005228D9    mov         dl,byte ptr [ebp-6]
 005228DC    call        @LStrFromChar
 005228E1    mov         eax,dword ptr [ebp-4]
 005228E4    mov         edx,dword ptr [eax]
 005228E6    call        dword ptr [edx+20]
 005228E9    mov         byte ptr [ebp-5],al
 005228EC    cmp         byte ptr [ebp-5],7
>005228F0    je          00522786
 005228F6    mov         al,byte ptr [ebp-5]
 005228F9    pop         ebx
 005228FA    pop         ecx
 005228FB    pop         ecx
 005228FC    pop         ebp
 005228FD    ret
end;*}

//00522900
{*function sub_00522900(?:?; ?:?):?;
begin
 00522900    push        ebp
 00522901    mov         ebp,esp
 00522903    add         esp,0FFFFFFF4
 00522906    push        ebx
 00522907    push        esi
 00522908    push        edi
 00522909    mov         dword ptr [ebp-8],edx
 0052290C    mov         dword ptr [ebp-4],eax
 0052290F    mov         eax,dword ptr [ebp-8]
 00522912    call        @LStrAddRef
 00522917    xor         eax,eax
 00522919    push        ebp
 0052291A    push        52297E
 0052291F    push        dword ptr fs:[eax]
 00522922    mov         dword ptr fs:[eax],esp
 00522925    mov         eax,dword ptr [ebp-4]
 00522928    mov         eax,dword ptr [eax+4]
 0052292B    call        0047C600
 00522930    mov         byte ptr [ebp-9],1
 00522934    xor         eax,eax
 00522936    push        ebp
 00522937    push        52295A
 0052293C    push        dword ptr fs:[eax]
 0052293F    mov         dword ptr fs:[eax],esp
 00522942    mov         eax,dword ptr [ebp-4]
 00522945    mov         eax,dword ptr [eax+4]
 00522948    mov         edx,dword ptr [ebp-8]
 0052294B    call        0047C66C
 00522950    xor         eax,eax
 00522952    pop         edx
 00522953    pop         ecx
 00522954    pop         ecx
 00522955    mov         dword ptr fs:[eax],edx
>00522958    jmp         00522968
>0052295A    jmp         @HandleAnyException
 0052295F    mov         byte ptr [ebp-9],0
 00522963    call        @DoneExcept
 00522968    xor         eax,eax
 0052296A    pop         edx
 0052296B    pop         ecx
 0052296C    pop         ecx
 0052296D    mov         dword ptr fs:[eax],edx
 00522970    push        522985
 00522975    lea         eax,[ebp-8]
 00522978    call        @LStrClr
 0052297D    ret
>0052297E    jmp         @HandleFinally
>00522983    jmp         00522975
 00522985    mov         al,byte ptr [ebp-9]
 00522988    pop         edi
 00522989    pop         esi
 0052298A    pop         ebx
 0052298B    mov         esp,ebp
 0052298D    pop         ebp
 0052298E    ret
end;*}

//00522990
{*function sub_00522990:?;
begin
 00522990    push        ebp
 00522991    mov         ebp,esp
 00522993    add         esp,0FFFFFFF8
 00522996    push        ebx
 00522997    mov         dword ptr [ebp-4],eax
 0052299A    mov         byte ptr [ebp-5],0
>0052299E    jmp         005229B3
 005229A0    mov         al,byte ptr [ebp-6]
 005229A3    sub         al,0A
>005229A5    jne         005229B3
 005229A7    mov         eax,dword ptr [ebp-4]
 005229AA    inc         dword ptr [eax+8];TTokenizer.?f8:dword
 005229AD    mov         byte ptr [ebp-5],7
>005229B1    jmp         005229C9
 005229B3    lea         edx,[ebp-6]
 005229B6    mov         ecx,1
 005229BB    mov         eax,dword ptr [ebp-4]
 005229BE    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 005229C1    mov         ebx,dword ptr [eax]
 005229C3    call        dword ptr [ebx+0C]
 005229C6    dec         eax
>005229C7    je          005229A0
 005229C9    mov         al,byte ptr [ebp-5]
 005229CC    pop         ebx
 005229CD    pop         ecx
 005229CE    pop         ecx
 005229CF    pop         ebp
 005229D0    ret
end;*}

//005229D4
{*function sub_005229D4:?;
begin
 005229D4    push        ebp
 005229D5    mov         ebp,esp
 005229D7    add         esp,0FFFFFF34
 005229DD    push        ebx
 005229DE    xor         edx,edx
 005229E0    mov         dword ptr [ebp-0CC],edx
 005229E6    mov         dword ptr [ebp-4],eax
 005229E9    lea         eax,[ebp-0C8]
 005229EF    mov         edx,dword ptr ds:[465E60];TFormatSettings
 005229F5    call        @AddRefRecord
 005229FA    xor         eax,eax
 005229FC    push        ebp
 005229FD    push        522AF2
 00522A02    push        dword ptr fs:[eax]
 00522A05    mov         dword ptr fs:[eax],esp
>00522A08    jmp         00522A32
 00522A0A    mov         al,byte ptr [ebp-6]
 00522A0D    add         al,0D0
 00522A0F    sub         al,0A
>00522A11    jae         00522A48
 00522A13    lea         eax,[ebp-0CC]
 00522A19    mov         dl,byte ptr [ebp-6]
 00522A1C    call        @LStrFromChar
 00522A21    mov         edx,dword ptr [ebp-0CC]
 00522A27    mov         eax,dword ptr [ebp-4]
 00522A2A    add         eax,10;TTokenizer.?f10:String
 00522A2D    call        @LStrCat
 00522A32    lea         edx,[ebp-6]
 00522A35    mov         ecx,1
 00522A3A    mov         eax,dword ptr [ebp-4]
 00522A3D    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522A40    mov         ebx,dword ptr [eax]
 00522A42    call        dword ptr [ebx+0C]
 00522A45    dec         eax
>00522A46    je          00522A0A
 00522A48    mov         eax,dword ptr [ebp-4]
 00522A4B    mov         edx,dword ptr [eax+10];TTokenizer.?f10:String
 00522A4E    mov         eax,522B0C;'.'
 00522A53    call        @LStrPos
 00522A58    test        eax,eax
>00522A5A    jle         00522A7E
 00522A5C    mov         eax,dword ptr [ebp-4]
 00522A5F    mov         edx,dword ptr [eax+10];TTokenizer.?f10:String
 00522A62    mov         eax,522B0C;'.'
 00522A67    call        @LStrPos
 00522A6C    mov         ebx,eax
 00522A6E    mov         eax,dword ptr [ebp-4]
 00522A71    add         eax,10;TTokenizer.?f10:String
 00522A74    call        00404C34
 00522A79    mov         byte ptr [eax+ebx-1],2C
 00522A7E    mov         byte ptr [ebp-0C5],2C
 00522A85    lea         ecx,[ebp-0C8]
 00522A8B    mov         eax,dword ptr [ebp-4]
 00522A8E    lea         edx,[eax+18];TTokenizer.?f18:?
 00522A91    mov         eax,dword ptr [ebp-4]
 00522A94    mov         eax,dword ptr [eax+10];TTokenizer.?f10:String
 00522A97    call        00468360
 00522A9C    test        al,al
>00522A9E    je          00522AC4
 00522AA0    mov         eax,dword ptr [ebp-4]
 00522AA3    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522AA6    call        0047BCCC
 00522AAB    sub         eax,1
 00522AAE    sbb         edx,0
 00522AB1    push        edx
 00522AB2    push        eax
 00522AB3    mov         eax,dword ptr [ebp-4]
 00522AB6    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522AB9    call        0047BCF4
 00522ABE    mov         byte ptr [ebp-5],3
>00522AC2    jmp         00522AC8
 00522AC4    mov         byte ptr [ebp-5],6
 00522AC8    xor         eax,eax
 00522ACA    pop         edx
 00522ACB    pop         ecx
 00522ACC    pop         ecx
 00522ACD    mov         dword ptr fs:[eax],edx
 00522AD0    push        522AF9
 00522AD5    lea         eax,[ebp-0CC]
 00522ADB    call        @LStrClr
 00522AE0    lea         eax,[ebp-0C8]
 00522AE6    mov         edx,dword ptr ds:[465E60];TFormatSettings
 00522AEC    call        @FinalizeRecord
 00522AF1    ret
>00522AF2    jmp         @HandleFinally
>00522AF7    jmp         00522AD5
 00522AF9    mov         al,byte ptr [ebp-5]
 00522AFC    pop         ebx
 00522AFD    mov         esp,ebp
 00522AFF    pop         ebp
 00522B00    ret
end;*}

//00522B10
{*function sub_00522B10:?;
begin
 00522B10    push        ebp
 00522B11    mov         ebp,esp
 00522B13    add         esp,0FFFFFFF0
 00522B16    push        ebx
 00522B17    xor         edx,edx
 00522B19    mov         dword ptr [ebp-10],edx
 00522B1C    mov         dword ptr [ebp-0C],edx
 00522B1F    mov         dword ptr [ebp-4],eax
 00522B22    xor         eax,eax
 00522B24    push        ebp
 00522B25    push        522BEE
 00522B2A    push        dword ptr fs:[eax]
 00522B2D    mov         dword ptr fs:[eax],esp
>00522B30    jmp         00522B80
 00522B32    mov         al,byte ptr [ebp-6]
 00522B35    sub         al,2E
>00522B37    je          00522B5A
 00522B39    add         al,0FE
 00522B3B    sub         al,0A
>00522B3D    jae         00522B96
 00522B3F    lea         eax,[ebp-0C]
 00522B42    mov         dl,byte ptr [ebp-6]
 00522B45    call        @LStrFromChar
 00522B4A    mov         edx,dword ptr [ebp-0C]
 00522B4D    mov         eax,dword ptr [ebp-4]
 00522B50    add         eax,10;TTokenizer.?f10:String
 00522B53    call        @LStrCat
>00522B58    jmp         00522B80
 00522B5A    lea         eax,[ebp-10]
 00522B5D    mov         dl,byte ptr [ebp-6]
 00522B60    call        @LStrFromChar
 00522B65    mov         edx,dword ptr [ebp-10]
 00522B68    mov         eax,dword ptr [ebp-4]
 00522B6B    add         eax,10;TTokenizer.?f10:String
 00522B6E    call        @LStrCat
 00522B73    mov         eax,dword ptr [ebp-4]
 00522B76    mov         edx,dword ptr [eax]
 00522B78    call        dword ptr [edx+18];TTokenizer.sub_005229D4
 00522B7B    mov         byte ptr [ebp-5],al
>00522B7E    jmp         00522BD3
 00522B80    lea         edx,[ebp-6]
 00522B83    mov         ecx,1
 00522B88    mov         eax,dword ptr [ebp-4]
 00522B8B    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522B8E    mov         ebx,dword ptr [eax]
 00522B90    call        dword ptr [ebx+0C]
 00522B93    dec         eax
>00522B94    je          00522B32
 00522B96    mov         eax,dword ptr [ebp-4]
 00522B99    lea         edx,[eax+14];TTokenizer.?f14:dword
 00522B9C    mov         eax,dword ptr [ebp-4]
 00522B9F    mov         eax,dword ptr [eax+10];TTokenizer.?f10:String
 00522BA2    call        00466B3C
 00522BA7    test        al,al
>00522BA9    je          00522BCF
 00522BAB    mov         eax,dword ptr [ebp-4]
 00522BAE    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522BB1    call        0047BCCC
 00522BB6    sub         eax,1
 00522BB9    sbb         edx,0
 00522BBC    push        edx
 00522BBD    push        eax
 00522BBE    mov         eax,dword ptr [ebp-4]
 00522BC1    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522BC4    call        0047BCF4
 00522BC9    mov         byte ptr [ebp-5],2
>00522BCD    jmp         00522BD3
 00522BCF    mov         byte ptr [ebp-5],6
 00522BD3    xor         eax,eax
 00522BD5    pop         edx
 00522BD6    pop         ecx
 00522BD7    pop         ecx
 00522BD8    mov         dword ptr fs:[eax],edx
 00522BDB    push        522BF5
 00522BE0    lea         eax,[ebp-10]
 00522BE3    mov         edx,2
 00522BE8    call        @LStrArrayClr
 00522BED    ret
>00522BEE    jmp         @HandleFinally
>00522BF3    jmp         00522BE0
 00522BF5    mov         al,byte ptr [ebp-5]
 00522BF8    pop         ebx
 00522BF9    mov         esp,ebp
 00522BFB    pop         ebp
 00522BFC    ret
end;*}

//00522C00
{*function sub_00522C00:?;
begin
 00522C00    push        ebp
 00522C01    mov         ebp,esp
 00522C03    add         esp,0FFFFFFF4
 00522C06    push        ebx
 00522C07    xor         edx,edx
 00522C09    mov         dword ptr [ebp-0C],edx
 00522C0C    mov         dword ptr [ebp-4],eax
 00522C0F    xor         eax,eax
 00522C11    push        ebp
 00522C12    push        522CB6
 00522C17    push        dword ptr fs:[eax]
 00522C1A    mov         dword ptr fs:[eax],esp
>00522C1D    jmp         00522C4D
 00522C1F    mov         al,byte ptr [ebp-6]
 00522C22    add         al,0D0
 00522C24    sub         al,0A
>00522C26    jb          00522C34
 00522C28    add         al,0F9
 00522C2A    sub         al,6
>00522C2C    jb          00522C34
 00522C2E    add         al,0E6
 00522C30    sub         al,6
>00522C32    jae         00522C63
 00522C34    lea         eax,[ebp-0C]
 00522C37    mov         dl,byte ptr [ebp-6]
 00522C3A    call        @LStrFromChar
 00522C3F    mov         edx,dword ptr [ebp-0C]
 00522C42    mov         eax,dword ptr [ebp-4]
 00522C45    add         eax,10;TTokenizer.?f10:String
 00522C48    call        @LStrCat
 00522C4D    lea         edx,[ebp-6]
 00522C50    mov         ecx,1
 00522C55    mov         eax,dword ptr [ebp-4]
 00522C58    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522C5B    mov         ebx,dword ptr [eax]
 00522C5D    call        dword ptr [ebx+0C]
 00522C60    dec         eax
>00522C61    je          00522C1F
 00522C63    mov         eax,dword ptr [ebp-4]
 00522C66    lea         edx,[eax+14];TTokenizer.?f14:dword
 00522C69    mov         eax,dword ptr [ebp-4]
 00522C6C    mov         eax,dword ptr [eax+10];TTokenizer.?f10:String
 00522C6F    call        00466B3C
 00522C74    test        al,al
>00522C76    je          00522C9C
 00522C78    mov         eax,dword ptr [ebp-4]
 00522C7B    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522C7E    call        0047BCCC
 00522C83    sub         eax,1
 00522C86    sbb         edx,0
 00522C89    push        edx
 00522C8A    push        eax
 00522C8B    mov         eax,dword ptr [ebp-4]
 00522C8E    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522C91    call        0047BCF4
 00522C96    mov         byte ptr [ebp-5],2
>00522C9A    jmp         00522CA0
 00522C9C    mov         byte ptr [ebp-5],6
 00522CA0    xor         eax,eax
 00522CA2    pop         edx
 00522CA3    pop         ecx
 00522CA4    pop         ecx
 00522CA5    mov         dword ptr fs:[eax],edx
 00522CA8    push        522CBD
 00522CAD    lea         eax,[ebp-0C]
 00522CB0    call        @LStrClr
 00522CB5    ret
>00522CB6    jmp         @HandleFinally
>00522CBB    jmp         00522CAD
 00522CBD    mov         al,byte ptr [ebp-5]
 00522CC0    pop         ebx
 00522CC1    mov         esp,ebp
 00522CC3    pop         ebp
 00522CC4    ret
end;*}

//00522CC8
{*function sub_00522CC8:?;
begin
 00522CC8    push        ebp
 00522CC9    mov         ebp,esp
 00522CCB    xor         ecx,ecx
 00522CCD    push        ecx
 00522CCE    push        ecx
 00522CCF    push        ecx
 00522CD0    push        ecx
 00522CD1    push        ecx
 00522CD2    push        ebx
 00522CD3    mov         dword ptr [ebp-4],eax
 00522CD6    xor         eax,eax
 00522CD8    push        ebp
 00522CD9    push        522DF3
 00522CDE    push        dword ptr fs:[eax]
 00522CE1    mov         dword ptr fs:[eax],esp
 00522CE4    mov         byte ptr [ebp-5],2
>00522CE8    jmp         00522DBE
 00522CED    xor         eax,eax
 00522CEF    mov         al,byte ptr [ebp-6]
 00522CF2    cmp         eax,38
>00522CF5    jge         00522D09
 00522CF7    sub         eax,2E
>00522CFA    je          00522D70
 00522CFC    add         eax,0FFFFFFFE
 00522CFF    sub         eax,8
>00522D02    jb          00522D44
>00522D04    jmp         00522D96
 00522D09    add         eax,0FFFFFFC8
 00522D0C    sub         eax,2
>00522D0F    jb          00522D6A
 00522D11    sub         eax,1E
>00522D14    je          00522D1B
 00522D16    sub         eax,20
>00522D19    jne         00522D96
 00522D1B    lea         eax,[ebp-0C]
 00522D1E    mov         dl,byte ptr [ebp-6]
 00522D21    call        @LStrFromChar
 00522D26    mov         edx,dword ptr [ebp-0C]
 00522D29    mov         eax,dword ptr [ebp-4]
 00522D2C    add         eax,10;TTokenizer.?f10:String
 00522D2F    call        @LStrCat
 00522D34    mov         eax,dword ptr [ebp-4]
 00522D37    mov         edx,dword ptr [eax]
 00522D39    call        dword ptr [edx+10];TTokenizer.sub_00522C00
 00522D3C    mov         byte ptr [ebp-5],al
>00522D3F    jmp         00522DD8
 00522D44    lea         eax,[ebp-10]
 00522D47    mov         dl,byte ptr [ebp-6]
 00522D4A    call        @LStrFromChar
 00522D4F    mov         edx,dword ptr [ebp-10]
 00522D52    mov         eax,dword ptr [ebp-4]
 00522D55    add         eax,10;TTokenizer.?f10:String
 00522D58    call        @LStrCat
 00522D5D    mov         eax,dword ptr [ebp-4]
 00522D60    mov         edx,dword ptr [eax]
 00522D62    call        dword ptr [edx+14];TTokenizer.sub_00522E04
 00522D65    mov         byte ptr [ebp-5],al
>00522D68    jmp         00522DBE
 00522D6A    mov         byte ptr [ebp-5],6
>00522D6E    jmp         00522DD8
 00522D70    lea         eax,[ebp-14]
 00522D73    mov         dl,byte ptr [ebp-6]
 00522D76    call        @LStrFromChar
 00522D7B    mov         edx,dword ptr [ebp-14]
 00522D7E    mov         eax,dword ptr [ebp-4]
 00522D81    add         eax,10;TTokenizer.?f10:String
 00522D84    call        @LStrCat
 00522D89    mov         eax,dword ptr [ebp-4]
 00522D8C    mov         edx,dword ptr [eax]
 00522D8E    call        dword ptr [edx+18];TTokenizer.sub_005229D4
 00522D91    mov         byte ptr [ebp-5],al
>00522D94    jmp         00522DD8
 00522D96    mov         eax,dword ptr [ebp-4]
 00522D99    xor         edx,edx
 00522D9B    mov         dword ptr [eax+14],edx;TTokenizer.?f14:dword
 00522D9E    mov         eax,dword ptr [ebp-4]
 00522DA1    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522DA4    call        0047BCCC
 00522DA9    sub         eax,1
 00522DAC    sbb         edx,0
 00522DAF    push        edx
 00522DB0    push        eax
 00522DB1    mov         eax,dword ptr [ebp-4]
 00522DB4    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522DB7    call        0047BCF4
>00522DBC    jmp         00522DD8
 00522DBE    lea         edx,[ebp-6]
 00522DC1    mov         ecx,1
 00522DC6    mov         eax,dword ptr [ebp-4]
 00522DC9    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522DCC    mov         ebx,dword ptr [eax]
 00522DCE    call        dword ptr [ebx+0C]
 00522DD1    dec         eax
>00522DD2    je          00522CED
 00522DD8    xor         eax,eax
 00522DDA    pop         edx
 00522DDB    pop         ecx
 00522DDC    pop         ecx
 00522DDD    mov         dword ptr fs:[eax],edx
 00522DE0    push        522DFA
 00522DE5    lea         eax,[ebp-14]
 00522DE8    mov         edx,3
 00522DED    call        @LStrArrayClr
 00522DF2    ret
>00522DF3    jmp         @HandleFinally
>00522DF8    jmp         00522DE5
 00522DFA    mov         al,byte ptr [ebp-5]
 00522DFD    pop         ebx
 00522DFE    mov         esp,ebp
 00522E00    pop         ebp
 00522E01    ret
end;*}

//00522E04
{*function sub_00522E04:?;
begin
 00522E04    push        ebp
 00522E05    mov         ebp,esp
 00522E07    add         esp,0FFFFFFF8
 00522E0A    mov         dword ptr [ebp-4],eax
 00522E0D    mov         ecx,522E34;'Metoda "TokenizeOctal" Niezaimplementowana'
 00522E12    mov         dl,1
 00522E14    mov         eax,[004653B4];Exception
 00522E19    call        Exception.Create;Exception.Create
 00522E1E    call        @RaiseExcept
 00522E23    mov         al,byte ptr [ebp-5]
 00522E26    pop         ecx
 00522E27    pop         ecx
 00522E28    pop         ebp
 00522E29    ret
end;*}

//00522E60
{*function sub_00522E60:?;
begin
 00522E60    push        ebp
 00522E61    mov         ebp,esp
 00522E63    xor         ecx,ecx
 00522E65    push        ecx
 00522E66    push        ecx
 00522E67    push        ecx
 00522E68    push        ecx
 00522E69    push        ecx
 00522E6A    push        ebx
 00522E6B    mov         dword ptr [ebp-4],eax
 00522E6E    xor         eax,eax
 00522E70    push        ebp
 00522E71    push        522F3C
 00522E76    push        dword ptr fs:[eax]
 00522E79    mov         dword ptr fs:[eax],esp
 00522E7C    mov         byte ptr [ebp-5],1
>00522E80    jmp         00522F07
 00522E85    mov         al,byte ptr [ebp-6]
 00522E88    sub         al,2E
>00522E8A    je          00522EE1
 00522E8C    sub         al,2
>00522E8E    je          00522EBB
 00522E90    dec         eax
 00522E91    sub         al,9
>00522E93    jae         00522F07
 00522E95    lea         eax,[ebp-0C]
 00522E98    mov         dl,byte ptr [ebp-6]
 00522E9B    call        @LStrFromChar
 00522EA0    mov         edx,dword ptr [ebp-0C]
 00522EA3    mov         eax,dword ptr [ebp-4]
 00522EA6    add         eax,10;TTokenizer.?f10:String
 00522EA9    call        @LStrCat
 00522EAE    mov         eax,dword ptr [ebp-4]
 00522EB1    mov         edx,dword ptr [eax]
 00522EB3    call        dword ptr [edx+0C];TTokenizer.sub_00522B10
 00522EB6    mov         byte ptr [ebp-5],al
>00522EB9    jmp         00522F21
 00522EBB    lea         eax,[ebp-10]
 00522EBE    mov         dl,byte ptr [ebp-6]
 00522EC1    call        @LStrFromChar
 00522EC6    mov         edx,dword ptr [ebp-10]
 00522EC9    mov         eax,dword ptr [ebp-4]
 00522ECC    add         eax,10;TTokenizer.?f10:String
 00522ECF    call        @LStrCat
 00522ED4    mov         eax,dword ptr [ebp-4]
 00522ED7    mov         edx,dword ptr [eax]
 00522ED9    call        dword ptr [edx+8];TTokenizer.sub_00522CC8
 00522EDC    mov         byte ptr [ebp-5],al
>00522EDF    jmp         00522F21
 00522EE1    lea         eax,[ebp-14]
 00522EE4    mov         dl,byte ptr [ebp-6]
 00522EE7    call        @LStrFromChar
 00522EEC    mov         edx,dword ptr [ebp-14]
 00522EEF    mov         eax,dword ptr [ebp-4]
 00522EF2    add         eax,10;TTokenizer.?f10:String
 00522EF5    call        @LStrCat
 00522EFA    mov         eax,dword ptr [ebp-4]
 00522EFD    mov         edx,dword ptr [eax]
 00522EFF    call        dword ptr [edx+18];TTokenizer.sub_005229D4
 00522F02    mov         byte ptr [ebp-5],al
>00522F05    jmp         00522F21
 00522F07    lea         edx,[ebp-6]
 00522F0A    mov         ecx,1
 00522F0F    mov         eax,dword ptr [ebp-4]
 00522F12    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522F15    mov         ebx,dword ptr [eax]
 00522F17    call        dword ptr [ebx+0C]
 00522F1A    dec         eax
>00522F1B    je          00522E85
 00522F21    xor         eax,eax
 00522F23    pop         edx
 00522F24    pop         ecx
 00522F25    pop         ecx
 00522F26    mov         dword ptr fs:[eax],edx
 00522F29    push        522F43
 00522F2E    lea         eax,[ebp-14]
 00522F31    mov         edx,3
 00522F36    call        @LStrArrayClr
 00522F3B    ret
>00522F3C    jmp         @HandleFinally
>00522F41    jmp         00522F2E
 00522F43    mov         al,byte ptr [ebp-5]
 00522F46    pop         ebx
 00522F47    mov         esp,ebp
 00522F49    pop         ebp
 00522F4A    ret
end;*}

//00522F4C
{*function sub_00522F4C(?:?):?;
begin
 00522F4C    push        ebp
 00522F4D    mov         ebp,esp
 00522F4F    add         esp,0FFFFFFF0
 00522F52    push        ebx
 00522F53    xor         ecx,ecx
 00522F55    mov         dword ptr [ebp-10],ecx
 00522F58    mov         dword ptr [ebp-0C],ecx
 00522F5B    mov         byte ptr [ebp-5],dl
 00522F5E    mov         dword ptr [ebp-4],eax
 00522F61    xor         eax,eax
 00522F63    push        ebp
 00522F64    push        52300C
 00522F69    push        dword ptr fs:[eax]
 00522F6C    mov         dword ptr fs:[eax],esp
 00522F6F    mov         byte ptr [ebp-6],6
 00522F73    mov         eax,dword ptr [ebp-4]
 00522F76    add         eax,10;TTokenizer.?f10:String
 00522F79    call        @LStrClr
>00522F7E    jmp         00522FDB
 00522F80    mov         al,byte ptr [ebp-7]
 00522F83    sub         al,0A
>00522F85    je          00522FBC
 00522F87    sub         al,3
>00522F89    je          00522FBC
 00522F8B    sub         al,15
>00522F8D    je          00522F93
 00522F8F    sub         al,5
>00522F91    jne         00522FC2
 00522F93    mov         al,byte ptr [ebp-7]
 00522F96    cmp         al,byte ptr [ebp-5]
>00522F99    jne         00522FA1
 00522F9B    mov         byte ptr [ebp-6],1
>00522F9F    jmp         00522FF1
 00522FA1    lea         eax,[ebp-0C]
 00522FA4    mov         dl,byte ptr [ebp-7]
 00522FA7    call        @LStrFromChar
 00522FAC    mov         edx,dword ptr [ebp-0C]
 00522FAF    mov         eax,dword ptr [ebp-4]
 00522FB2    add         eax,10;TTokenizer.?f10:String
 00522FB5    call        @LStrCat
>00522FBA    jmp         00522FDB
 00522FBC    mov         byte ptr [ebp-6],6
>00522FC0    jmp         00522FF1
 00522FC2    lea         eax,[ebp-10]
 00522FC5    mov         dl,byte ptr [ebp-7]
 00522FC8    call        @LStrFromChar
 00522FCD    mov         edx,dword ptr [ebp-10]
 00522FD0    mov         eax,dword ptr [ebp-4]
 00522FD3    add         eax,10;TTokenizer.?f10:String
 00522FD6    call        @LStrCat
 00522FDB    lea         edx,[ebp-7]
 00522FDE    mov         ecx,1
 00522FE3    mov         eax,dword ptr [ebp-4]
 00522FE6    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00522FE9    mov         ebx,dword ptr [eax]
 00522FEB    call        dword ptr [ebx+0C]
 00522FEE    dec         eax
>00522FEF    je          00522F80
 00522FF1    xor         eax,eax
 00522FF3    pop         edx
 00522FF4    pop         ecx
 00522FF5    pop         ecx
 00522FF6    mov         dword ptr fs:[eax],edx
 00522FF9    push        523013
 00522FFE    lea         eax,[ebp-10]
 00523001    mov         edx,2
 00523006    call        @LStrArrayClr
 0052300B    ret
>0052300C    jmp         @HandleFinally
>00523011    jmp         00522FFE
 00523013    mov         al,byte ptr [ebp-6]
 00523016    pop         ebx
 00523017    mov         esp,ebp
 00523019    pop         ebp
 0052301A    ret
end;*}

//0052301C
{*function sub_0052301C:?;
begin
 0052301C    push        ebp
 0052301D    mov         ebp,esp
 0052301F    add         esp,0FFFFFFF4
 00523022    push        ebx
 00523023    xor         edx,edx
 00523025    mov         dword ptr [ebp-0C],edx
 00523028    mov         dword ptr [ebp-4],eax
 0052302B    xor         eax,eax
 0052302D    push        ebp
 0052302E    push        5230BF
 00523033    push        dword ptr fs:[eax]
 00523036    mov         dword ptr fs:[eax],esp
 00523039    mov         byte ptr [ebp-5],6
>0052303D    jmp         00523093
 0052303F    mov         al,byte ptr [ebp-6]
 00523042    add         al,0F7
 00523044    sub         al,2
>00523046    jb          00523056
 00523048    sub         al,2
>0052304A    je          00523056
 0052304C    sub         al,13
>0052304E    je          00523056
 00523050    add         al,0F8
 00523052    sub         al,2
>00523054    jae         0052307A
 00523056    mov         byte ptr [ebp-5],1
 0052305A    mov         eax,dword ptr [ebp-4]
 0052305D    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00523060    call        0047BCCC
 00523065    sub         eax,1
 00523068    sbb         edx,0
 0052306B    push        edx
 0052306C    push        eax
 0052306D    mov         eax,dword ptr [ebp-4]
 00523070    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 00523073    call        0047BCF4
>00523078    jmp         005230A9
 0052307A    lea         eax,[ebp-0C]
 0052307D    mov         dl,byte ptr [ebp-6]
 00523080    call        @LStrFromChar
 00523085    mov         edx,dword ptr [ebp-0C]
 00523088    mov         eax,dword ptr [ebp-4]
 0052308B    add         eax,10;TTokenizer.?f10:String
 0052308E    call        @LStrCat
 00523093    lea         edx,[ebp-6]
 00523096    mov         ecx,1
 0052309B    mov         eax,dword ptr [ebp-4]
 0052309E    mov         eax,dword ptr [eax+4];TTokenizer.?f4:dword
 005230A1    mov         ebx,dword ptr [eax]
 005230A3    call        dword ptr [ebx+0C]
 005230A6    dec         eax
>005230A7    je          0052303F
 005230A9    xor         eax,eax
 005230AB    pop         edx
 005230AC    pop         ecx
 005230AD    pop         ecx
 005230AE    mov         dword ptr fs:[eax],edx
 005230B1    push        5230C6
 005230B6    lea         eax,[ebp-0C]
 005230B9    call        @LStrClr
 005230BE    ret
>005230BF    jmp         @HandleFinally
>005230C4    jmp         005230B6
 005230C6    mov         al,byte ptr [ebp-5]
 005230C9    pop         ebx
 005230CA    mov         esp,ebp
 005230CC    pop         ebp
 005230CD    ret
end;*}

Initialization
Finalization
//005230D0
{*
 005230D0    push        ebp
 005230D1    mov         ebp,esp
 005230D3    xor         eax,eax
 005230D5    push        ebp
 005230D6    push        52310C
 005230DB    push        dword ptr fs:[eax]
 005230DE    mov         dword ptr fs:[eax],esp
 005230E1    inc         dword ptr ds:[55E080]
>005230E7    jne         005230FE
 005230E9    mov         eax,54E580;^'T_END'
 005230EE    mov         ecx,8
 005230F3    mov         edx,dword ptr ds:[4010AC];String
 005230F9    call        @FinalizeArray
 005230FE    xor         eax,eax
 00523100    pop         edx
 00523101    pop         ecx
 00523102    pop         ecx
 00523103    mov         dword ptr fs:[eax],edx
 00523106    push        523113
 0052310B    ret
>0052310C    jmp         @HandleFinally
>00523111    jmp         0052310B
 00523113    pop         ebp
 00523114    ret
*}
end.