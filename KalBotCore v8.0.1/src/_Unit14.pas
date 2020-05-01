//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit14;

interface

uses
  SysUtils, Classes;

type
  TMfSegment = TMfSegment = record//size=14
fC:WideString;//fC
end;;
  TMfPublic = TMfPublic = record//size=C
f4:WideString;//f4
end;;
  _DynArr_14_2 = array of TMfSegment;
//elSize = 14;
  _DynArr_14_3 = array of TMfPublic;
//elSize = C;
  _DynArr_14_4 = array of ?;
//elSize = 8;
  TMapFile = class(TObject)
  public
    f8:.2;//f8
    f14:.3;//f14
    f20:.4;//f20
    f3C:byte;//f3C
    f48:WideString;//f48
    f4C:WideString;//f4C
    f50:String;//f50
    //constructor Create(?:?; ?:?; ?:?; ?:?; ?:?);//00420CF4
  end;
  TMiniStream = class(TObject)
  public
    f4:dword;//f4
    f8:dword;//f8
  end;
  TSegment = TSegment = record//size=14
fC:String;//fC
end;;
  _DynArr_14_7 = array of TSegment;
//elSize = 14;
  _DynArr_14_8 = array of ?;
//elSize = 4;
  _DynArr_14_11 = array of ?;
//elSize = C;
    //procedure sub_0041C7F4(?:TMiniStream; ?:?);//0041C7F4
    //function sub_0041C850(?:TMiniStream; ?:AnsiString; ?:?):?;//0041C850
    //procedure sub_0041C888(?:Longint; ?:?);//0041C888
    //procedure sub_0041C98C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0041C98C
    //procedure sub_0041CC28(?:?; ?:?; ?:WideString; ?:?; ?:?);//0041CC28
    //procedure sub_0041D010(?:?; ?:?; ?:?; ?:?);//0041D010
    //function sub_0041D250(?:WideString; ?:?):?;//0041D250
    //function sub_0041D3CC(?:?):?;//0041D3CC
    //procedure sub_0041D40C(?:?; ?:?);//0041D40C
    //function sub_0041D498(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0041D498
    //function sub_0041D6C0(?:TMiniStream; ?:?):?;//0041D6C0
    //function sub_0041D82C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0041D82C
    //function sub_0041DA60(?:TMiniStream; ?:?):?;//0041DA60
    //function sub_0041DBD0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0041DBD0
    //function sub_0041DD54(?:TMiniStream; ?:?):?;//0041DD54
    //function sub_0041DE24(?:?; ?:?):?;//0041DE24
    //function sub_0041E290(?:?):?;//0041E290
    //procedure sub_0041E31C(?:?; ?:?; ?:?);//0041E31C
    //procedure sub_0041E404(?:?; ?:?; ?:?);//0041E404
    //procedure sub_0041E550(?:?; ?:?; ?:?);//0041E550
    //procedure sub_0041E7C0(?:?; ?:?);//0041E7C0
    //function sub_0041E93C(?:?):?;//0041E93C
    //procedure sub_0041E9FC(?:?; ?:?);//0041E9FC
    //procedure sub_0041EFB8(?:AnsiString; ?:?);//0041EFB8
    //procedure sub_0041F014(?:?; ?:?);//0041F014
    //procedure sub_0041F15C(?:Pointer; ?:?; ?:WideString);//0041F15C
    //function sub_0041F1C4(?:?; ?:?):Boolean;//0041F1C4
    //function sub_0041F1FC(?:WideString; ?:?):?;//0041F1FC
    //function sub_0041F5F0:?;//0041F5F0
    //function sub_0041F8DC(?:WideString; ?:?):?;//0041F8DC
    //procedure sub_0041FB20(?:?; ?:?);//0041FB20
    //procedure sub_0041FB74(?:?; ?:?);//0041FB74
    //procedure sub_0041FC58(?:?; ?:?; ?:?);//0041FC58
    //procedure sub_0041FEB8(?:?; ?:?; ?:?; ?:?);//0041FEB8
    //procedure sub_0041FF88(?:?; ?:?; ?:?);//0041FF88
    //procedure sub_004200A8(?:?);//004200A8
    //procedure sub_004200DC(?:?; ?:?; ?:?);//004200DC
    //function sub_00420208(?:Pointer; ?:?):?;//00420208
    //function sub_00420338(?:WideString):?;//00420338
    //function sub_004203FC(?:WideString):?;//004203FC
    //function sub_00420594(?:?; ?:?; ?:?; ?:?; ?:?):?;//00420594
    //function sub_00420940(?:?; ?:?):?;//00420940
    //procedure sub_00421010(?:?; ?:?; ?:?; ?:?);//00421010
    //procedure sub_00421114(?:?; ?:?; ?:?);//00421114
    //function sub_004211F8(?:?; ?:?; ?:WideString; ?:?; ?:?):?;//004211F8
    //function sub_00421434:?;//00421434
    //function sub_00421440(?:?; ?:?; ?:?):?;//00421440
    //procedure sub_00421614(?:TMapFile; ?:?);//00421614
    //function sub_00421710(?:WideString; ?:?):?;//00421710
    procedure sub_00421890;//00421890
    //function sub_004218CC(?:?):?;//004218CC
    //function sub_00421AA8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00421AA8
    //function sub_00421BAC(?:?; ?:?; ?:?):?;//00421BAC
    //procedure sub_00421E38(?:?; ?:?; ?:?; ?:?);//00421E38

implementation

//0041C7F4
{*procedure sub_0041C7F4(?:TMiniStream; ?:?);
begin
 0041C7F4    push        ebx
 0041C7F5    push        esi
 0041C7F6    mov         ebx,edx
 0041C7F8    mov         esi,eax
 0041C7FA    mov         dword ptr [esi+8],ebx
 0041C7FD    cmp         ebx,dword ptr [esi+0C]
>0041C800    jge         0041C805
 0041C802    mov         dword ptr [esi+0C],ebx
 0041C805    test        ebx,ebx
>0041C807    jle         0041C815
 0041C809    add         ebx,1FFF
 0041C80F    and         ebx,0FFFFE000
 0041C815    mov         eax,dword ptr [esi+10]
 0041C818    cmp         ebx,eax
>0041C81A    je          0041C84D
 0041C81C    test        ebx,ebx
>0041C81E    jne         0041C830
 0041C820    mov         eax,dword ptr [esi+4]
 0041C823    push        eax
 0041C824    call        kernel32.LocalFree
 0041C829    xor         eax,eax
 0041C82B    mov         dword ptr [esi+4],eax
>0041C82E    jmp         0041C84A
 0041C830    test        eax,eax
>0041C832    jne         0041C840
 0041C834    mov         eax,ebx
 0041C836    call        @GetMem
 0041C83B    mov         dword ptr [esi+4],eax
>0041C83E    jmp         0041C84A
 0041C840    lea         eax,[esi+4]
 0041C843    mov         edx,ebx
 0041C845    call        @ReallocMem
 0041C84A    mov         dword ptr [esi+10],ebx
 0041C84D    pop         esi
 0041C84E    pop         ebx
 0041C84F    ret
end;*}

//0041C850
{*function sub_0041C850(?:TMiniStream; ?:AnsiString; ?:?):?;
begin
 0041C850    push        ebx
 0041C851    push        esi
 0041C852    push        edi
 0041C853    mov         ebx,eax
 0041C855    mov         edi,dword ptr [ebx+0C]
 0041C858    test        edi,edi
>0041C85A    jl          0041C880
 0041C85C    test        ecx,ecx
>0041C85E    jl          0041C880
 0041C860    mov         esi,dword ptr [ebx+8]
 0041C863    sub         esi,edi
 0041C865    test        esi,esi
>0041C867    jle         0041C882
 0041C869    cmp         ecx,esi
>0041C86B    jge         0041C86F
 0041C86D    mov         esi,ecx
 0041C86F    mov         eax,dword ptr [ebx+4]
 0041C872    add         eax,edi
 0041C874    mov         ecx,esi
 0041C876    call        Move
 0041C87B    add         dword ptr [ebx+0C],esi
>0041C87E    jmp         0041C882
 0041C880    xor         esi,esi
 0041C882    mov         eax,esi
 0041C884    pop         edi
 0041C885    pop         esi
 0041C886    pop         ebx
 0041C887    ret
end;*}

//0041C888
{*procedure sub_0041C888(?:Longint; ?:?);
begin
 0041C888    push        ebp
 0041C889    mov         ebp,esp
 0041C88B    xor         ecx,ecx
 0041C88D    push        ecx
 0041C88E    push        ecx
 0041C88F    push        ecx
 0041C890    push        ecx
 0041C891    push        ecx
 0041C892    push        ebx
 0041C893    push        esi
 0041C894    push        edi
 0041C895    mov         ebx,edx
 0041C897    mov         esi,eax
 0041C899    xor         eax,eax
 0041C89B    push        ebp
 0041C89C    push        41C97C
 0041C8A1    push        dword ptr fs:[eax]
 0041C8A4    mov         dword ptr fs:[eax],esp
 0041C8A7    mov         eax,ebx
 0041C8A9    mov         edx,6
 0041C8AE    call        @LStrSetLength
 0041C8B3    mov         eax,ebx
 0041C8B5    call        00404C34
 0041C8BA    mov         byte ptr [eax],6D
 0041C8BD    mov         eax,ebx
 0041C8BF    call        00404C34
 0041C8C4    mov         byte ptr [eax+1],61
 0041C8C8    mov         eax,ebx
 0041C8CA    call        00404C34
 0041C8CF    mov         byte ptr [eax+2],64
 0041C8D3    mov         eax,ebx
 0041C8D5    call        00404C34
 0041C8DA    mov         byte ptr [eax+3],73
 0041C8DE    mov         eax,ebx
 0041C8E0    call        00404C34
 0041C8E5    mov         byte ptr [eax+4],68
 0041C8E9    mov         eax,ebx
 0041C8EB    call        00404C34
 0041C8F0    mov         byte ptr [eax+5],69
 0041C8F4    lea         eax,[ebp-10]
 0041C8F7    push        eax
 0041C8F8    mov         cl,30
 0041C8FA    mov         edx,7
 0041C8FF    mov         eax,esi
 0041C901    call        0040AA68
 0041C906    mov         eax,dword ptr [ebp-10]
 0041C909    mov         edi,dword ptr ds:[55B5D0];^gvar_0053D0E0
 0041C90F    mov         edi,dword ptr [edi]
 0041C911    lea         edx,[ebp-0C]
 0041C914    call        edi
 0041C916    mov         ecx,dword ptr [ebp-0C]
 0041C919    mov         edx,dword ptr [ebx]
 0041C91B    lea         eax,[ebp-4]
 0041C91E    call        @LStrCat3
 0041C923    lea         eax,[ebp-14]
 0041C926    push        eax
 0041C927    mov         cl,30
 0041C929    mov         edx,8
 0041C92E    mov         eax,esi
 0041C930    call        0040AA44
 0041C935    mov         ecx,dword ptr [ebp-14]
 0041C938    mov         edx,dword ptr [ebx]
 0041C93A    lea         eax,[ebp-8]
 0041C93D    call        @LStrCat3
 0041C942    mov         eax,ebx
 0041C944    mov         ecx,dword ptr [ebp-8]
 0041C947    mov         edx,dword ptr [ebp-4]
 0041C94A    call        @LStrCat3
 0041C94F    mov         eax,ebx
 0041C951    mov         edx,dword ptr [ebx]
 0041C953    call        @LStrCat
 0041C958    mov         edx,dword ptr [ebx]
 0041C95A    mov         eax,ebx
 0041C95C    call        0041C2E4
 0041C961    xor         eax,eax
 0041C963    pop         edx
 0041C964    pop         ecx
 0041C965    pop         ecx
 0041C966    mov         dword ptr fs:[eax],edx
 0041C969    push        41C983
 0041C96E    lea         eax,[ebp-14]
 0041C971    mov         edx,5
 0041C976    call        @LStrArrayClr
 0041C97B    ret
>0041C97C    jmp         @HandleFinally
>0041C981    jmp         0041C96E
 0041C983    pop         edi
 0041C984    pop         esi
 0041C985    pop         ebx
 0041C986    mov         esp,ebp
 0041C988    pop         ebp
 0041C989    ret
end;*}

//0041C98C
{*procedure sub_0041C98C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0041C98C    push        ebp
 0041C98D    mov         ebp,esp
 0041C98F    push        ecx
 0041C990    push        ebx
 0041C991    push        esi
 0041C992    push        edi
 0041C993    mov         byte ptr [ebp-2],cl
 0041C996    mov         byte ptr [ebp-1],dl
 0041C999    mov         esi,eax
 0041C99B    lea         eax,[ebp+10]
 0041C99E    call        @WStrAddRef
 0041C9A3    mov         edi,dword ptr ds:[55B4EC];^gvar_0053D138
 0041C9A9    xor         eax,eax
 0041C9AB    push        ebp
 0041C9AC    push        41CC19
 0041C9B1    push        dword ptr fs:[eax]
 0041C9B4    mov         dword ptr fs:[eax],esp
 0041C9B7    cmp         byte ptr [esi+4],0
>0041C9BB    je          0041C9C7
 0041C9BD    cmp         byte ptr [ebp-1],0
>0041C9C1    je          0041CC03
 0041C9C7    mov         eax,dword ptr [esi+10]
 0041C9CA    cmp         eax,dword ptr [esi+0C]
>0041C9CD    jne         0041CA01
 0041C9CF    cmp         eax,8
>0041C9D2    jge         0041C9DD
 0041C9D4    mov         dword ptr [esi+10],10
>0041C9DB    jmp         0041C9E7
 0041C9DD    sar         eax,1
>0041C9DF    jns         0041C9E4
 0041C9E1    adc         eax,0
 0041C9E4    add         dword ptr [esi+10],eax
 0041C9E7    mov         eax,dword ptr [esi+10]
 0041C9EA    push        eax
 0041C9EB    lea         eax,[esi+8]
 0041C9EE    mov         ecx,1
 0041C9F3    mov         edx,dword ptr ds:[41C65C];_DynArr_14_2
 0041C9F9    call        @DynArraySetLength
 0041C9FE    add         esp,4
 0041CA01    mov         eax,dword ptr [ebp+10]
 0041CA04    call        @WStrLen
 0041CA09    mov         ebx,eax
 0041CA0B    cmp         ebx,1
>0041CA0E    jl          0041CAB6
 0041CA14    mov         eax,dword ptr [ebp+10]
 0041CA17    cmp         word ptr [eax+ebx*2-2],2E
>0041CA1D    jne         0041CAAD
 0041CA23    mov         eax,dword ptr [ebp+10]
 0041CA26    call        @WStrLen
 0041CA2B    sub         eax,ebx
 0041CA2D    cmp         eax,3
>0041CA30    jne         0041CAAD
 0041CA32    mov         edx,dword ptr [edi]
 0041CA34    mov         eax,dword ptr [ebp+10]
 0041CA37    mov         ax,word ptr [eax+ebx*2]
 0041CA3B    call        edx
 0041CA3D    cmp         ax,64
>0041CA41    jne         0041CA67
 0041CA43    mov         edx,dword ptr [edi]
 0041CA45    mov         eax,dword ptr [ebp+10]
 0041CA48    mov         ax,word ptr [eax+ebx*2+2]
 0041CA4D    call        edx
 0041CA4F    cmp         ax,70
>0041CA53    jne         0041CA67
 0041CA55    mov         edx,dword ptr [edi]
 0041CA57    mov         eax,dword ptr [ebp+10]
 0041CA5A    mov         ax,word ptr [eax+ebx*2+4]
 0041CA5F    call        edx
 0041CA61    cmp         ax,72
>0041CA65    je          0041CA9C
 0041CA67    mov         edx,dword ptr [edi]
 0041CA69    mov         eax,dword ptr [ebp+10]
 0041CA6C    mov         ax,word ptr [eax+ebx*2]
 0041CA70    call        edx
 0041CA72    cmp         ax,70
>0041CA76    jne         0041CAAD
 0041CA78    mov         edx,dword ptr [edi]
 0041CA7A    mov         eax,dword ptr [ebp+10]
 0041CA7D    mov         ax,word ptr [eax+ebx*2+2]
 0041CA82    call        edx
 0041CA84    cmp         ax,61
>0041CA88    jne         0041CAAD
 0041CA8A    mov         edx,dword ptr [edi]
 0041CA8C    mov         eax,dword ptr [ebp+10]
 0041CA8F    mov         ax,word ptr [eax+ebx*2+4]
 0041CA94    call        edx
 0041CA96    cmp         ax,73
>0041CA9A    jne         0041CAAD
 0041CA9C    lea         eax,[ebp+10]
 0041CA9F    mov         ecx,7FFFFFFF
 0041CAA4    mov         edx,ebx
 0041CAA6    call        @WStrDelete
>0041CAAB    jmp         0041CAB6
 0041CAAD    dec         ebx
 0041CAAE    test        ebx,ebx
>0041CAB0    jne         0041CA14
 0041CAB6    cmp         byte ptr [ebp-2],0
>0041CABA    je          0041CAD0
 0041CABC    cmp         byte ptr [ebp-1],0
>0041CAC0    je          0041CACA
 0041CAC2    mov         eax,dword ptr [esi+40]
 0041CAC5    add         dword ptr [ebp+18],eax
>0041CAC8    jmp         0041CAD0
 0041CACA    mov         eax,dword ptr [esi+30]
 0041CACD    add         dword ptr [ebp+18],eax
 0041CAD0    cmp         byte ptr [ebp+0C],0
>0041CAD4    je          0041CBCE
 0041CADA    xor         eax,eax
 0041CADC    mov         al,byte ptr [ebp-1]
 0041CADF    mov         eax,dword ptr [esi+eax*4+54]
 0041CAE3    cmp         eax,0FFFFFFFF
>0041CAE6    je          0041CB35
 0041CAE8    lea         eax,[eax+eax*4]
 0041CAEB    mov         edx,dword ptr [esi+8]
 0041CAEE    lea         ebx,[edx+eax*4]
 0041CAF1    mov         eax,dword ptr [ebx+0C]
 0041CAF4    mov         edx,dword ptr [ebp+10]
 0041CAF7    call        @WStrCmp
>0041CAFC    jne         0041CB35
 0041CAFE    mov         eax,dword ptr [ebx+4]
 0041CB01    cmp         eax,dword ptr [ebp+18]
>0041CB04    ja          0041CB35
 0041CB06    mov         eax,dword ptr [ebx+4]
 0041CB09    add         eax,dword ptr [ebx+8]
 0041CB0C    add         eax,2
 0041CB0F    cmp         eax,dword ptr [ebp+18]
>0041CB12    jb          0041CB35
 0041CB14    mov         eax,dword ptr [ebp+18]
 0041CB17    add         eax,dword ptr [ebp+14]
 0041CB1A    sub         eax,dword ptr [ebx+4]
 0041CB1D    xor         edx,edx
 0041CB1F    mov         dl,byte ptr [ebp-1]
 0041CB22    mov         edx,dword ptr [esi+edx*4+54]
 0041CB26    lea         edx,[edx+edx*4]
 0041CB29    mov         ecx,dword ptr [esi+8]
 0041CB2C    mov         dword ptr [ecx+edx*4+8],eax
>0041CB30    jmp         0041CC03
 0041CB35    cmp         byte ptr [ebp+8],0
>0041CB39    je          0041CB41
 0041CB3B    cmp         dword ptr [esi+0C],0
>0041CB3F    jne         0041CB46
 0041CB41    mov         ebx,dword ptr [esi+0C]
>0041CB44    jmp         0041CBC3
 0041CB46    mov         ebx,dword ptr [esi+0C]
 0041CB49    cmp         ebx,1
>0041CB4C    jl          0041CBC3
 0041CB4E    cmp         byte ptr [ebp-1],0
>0041CB52    je          0041CB61
 0041CB54    lea         ecx,[ebx+ebx*4]
 0041CB57    mov         edi,dword ptr [esi+8]
 0041CB5A    cmp         byte ptr [edi+ecx*4-13],0
>0041CB5F    je          0041CBA3
 0041CB61    lea         edx,[ebx+ebx*4]
 0041CB64    mov         ecx,dword ptr [esi+8]
 0041CB67    mov         cl,byte ptr [ecx+edx*4-13]
 0041CB6B    cmp         cl,byte ptr [ebp-1]
>0041CB6E    jne         0041CB7C
 0041CB70    mov         ecx,dword ptr [esi+8]
 0041CB73    mov         edx,dword ptr [ecx+edx*4-10]
 0041CB77    cmp         edx,dword ptr [ebp+18]
>0041CB7A    ja          0041CBA3
 0041CB7C    lea         eax,[ebx+ebx*4]
 0041CB7F    mov         edx,dword ptr [esi+8]
 0041CB82    mov         dl,byte ptr [edx+eax*4-13]
 0041CB86    cmp         dl,byte ptr [ebp-1]
>0041CB89    jne         0041CBC3
 0041CB8B    mov         edx,dword ptr [esi+8]
 0041CB8E    mov         edx,dword ptr [edx+eax*4-10]
 0041CB92    cmp         edx,dword ptr [ebp+18]
>0041CB95    jne         0041CBC3
 0041CB97    mov         edx,dword ptr [esi+8]
 0041CB9A    mov         eax,dword ptr [edx+eax*4-0C]
 0041CB9E    cmp         eax,dword ptr [ebp+14]
>0041CBA1    jae         0041CBC3
 0041CBA3    lea         edi,[ebx+ebx*4]
 0041CBA6    mov         eax,dword ptr [esi+8]
 0041CBA9    lea         eax,[eax+edi*4]
 0041CBAC    mov         edx,dword ptr [esi+8]
 0041CBAF    lea         edx,[edx+edi*4-14]
 0041CBB3    mov         ecx,dword ptr ds:[41C61C];TMfSegment
 0041CBB9    call        @CopyRecord
 0041CBBE    dec         ebx
 0041CBBF    test        ebx,ebx
>0041CBC1    jne         0041CB4E
 0041CBC3    xor         eax,eax
 0041CBC5    mov         al,byte ptr [ebp-1]
 0041CBC8    mov         dword ptr [esi+eax*4+54],ebx
>0041CBCC    jmp         0041CBD1
 0041CBCE    mov         ebx,dword ptr [esi+0C]
 0041CBD1    lea         eax,[ebx+ebx*4]
 0041CBD4    mov         edx,dword ptr [esi+8]
 0041CBD7    lea         eax,[edx+eax*4]
 0041CBDA    mov         ebx,eax
 0041CBDC    mov         byte ptr [ebx],1
 0041CBDF    mov         al,byte ptr [ebp-1]
 0041CBE2    mov         byte ptr [ebx+1],al
 0041CBE5    mov         eax,dword ptr [ebp+18]
 0041CBE8    mov         dword ptr [ebx+4],eax
 0041CBEB    mov         eax,dword ptr [ebp+14]
 0041CBEE    mov         dword ptr [ebx+8],eax
 0041CBF1    lea         eax,[ebx+0C]
 0041CBF4    mov         edx,dword ptr [ebp+10]
 0041CBF7    call        @WStrAsg
 0041CBFC    mov         byte ptr [ebx+10],0
 0041CC00    inc         dword ptr [esi+0C]
 0041CC03    xor         eax,eax
 0041CC05    pop         edx
 0041CC06    pop         ecx
 0041CC07    pop         ecx
 0041CC08    mov         dword ptr fs:[eax],edx
 0041CC0B    push        41CC20
 0041CC10    lea         eax,[ebp+10]
 0041CC13    call        @WStrClr
 0041CC18    ret
>0041CC19    jmp         @HandleFinally
>0041CC1E    jmp         0041CC10
 0041CC20    pop         edi
 0041CC21    pop         esi
 0041CC22    pop         ebx
 0041CC23    pop         ecx
 0041CC24    pop         ebp
 0041CC25    ret         14
end;*}

//0041CC28
{*procedure sub_0041CC28(?:?; ?:?; ?:WideString; ?:?; ?:?);
begin
 0041CC28    push        ebp
 0041CC29    mov         ebp,esp
 0041CC2B    add         esp,0FFFFFFD8
 0041CC2E    push        ebx
 0041CC2F    push        esi
 0041CC30    push        edi
 0041CC31    xor         ebx,ebx
 0041CC33    mov         dword ptr [ebp-28],ebx
 0041CC36    mov         dword ptr [ebp-8],ebx
 0041CC39    mov         dword ptr [ebp-0C],ebx
 0041CC3C    mov         dword ptr [ebp-4],ecx
 0041CC3F    mov         ebx,edx
 0041CC41    mov         esi,eax
 0041CC43    lea         eax,[ebp-4]
 0041CC46    call        @WStrAddRef
 0041CC4B    lea         eax,[ebp-24]
 0041CC4E    mov         edx,dword ptr ds:[41C61C];TMfSegment
 0041CC54    call        @AddRefRecord
 0041CC59    xor         eax,eax
 0041CC5B    push        ebp
 0041CC5C    push        41CFD4
 0041CC61    push        dword ptr fs:[eax]
 0041CC64    mov         dword ptr fs:[eax],esp
 0041CC67    cmp         byte ptr [esi+4],0
>0041CC6B    je          0041CC75
 0041CC6D    test        bl,bl
>0041CC6F    je          0041CFA3
 0041CC75    lea         eax,[ebp-0C]
 0041CC78    mov         edx,dword ptr [ebp-4]
 0041CC7B    call        00404F28
 0041CC80    mov         eax,dword ptr [ebp-4]
 0041CC83    call        @WStrLen
 0041CC88    cmp         eax,5
>0041CC8B    jle         0041CCB8
 0041CC8D    mov         eax,dword ptr [ebp-4]
 0041CC90    cmp         word ptr [eax],40
>0041CC94    jne         0041CCB8
 0041CC96    mov         eax,dword ptr [ebp-4]
 0041CC99    cmp         word ptr [eax+2],24
>0041CC9E    jne         0041CCB8
 0041CCA0    mov         eax,dword ptr [ebp-4]
 0041CCA3    cmp         word ptr [eax+4],78
>0041CCA8    jne         0041CCB8
 0041CCAA    mov         eax,dword ptr [ebp-4]
 0041CCAD    cmp         word ptr [eax+8],24
>0041CCB2    je          0041CFA3
 0041CCB8    lea         edx,[ebp-8]
 0041CCBB    lea         eax,[ebp-4]
 0041CCBE    call        00410558
 0041CCC3    mov         eax,dword ptr [ebp-4]
 0041CCC6    call        @WStrLen
 0041CCCB    cmp         eax,2
>0041CCCE    jle         0041CCF5
 0041CCD0    mov         eax,dword ptr [ebp-4]
 0041CCD3    cmp         word ptr [eax],40
>0041CCD7    jne         0041CCF5
 0041CCD9    mov         eax,dword ptr [ebp-4]
 0041CCDC    cmp         word ptr [eax+2],40
>0041CCE1    jne         0041CCF5
 0041CCE3    lea         eax,[ebp-4]
 0041CCE6    mov         ecx,2
 0041CCEB    mov         edx,1
 0041CCF0    call        @WStrDelete
 0041CCF5    test        bl,bl
>0041CCF7    je          0041CD01
 0041CCF9    mov         eax,dword ptr [esi+40]
 0041CCFC    add         dword ptr [ebp+0C],eax
>0041CCFF    jmp         0041CD07
 0041CD01    mov         eax,dword ptr [esi+30]
 0041CD04    add         dword ptr [ebp+0C],eax
 0041CD07    mov         byte ptr [ebp-0D],1
 0041CD0B    lea         eax,[ebp-24]
 0041CD0E    push        eax
 0041CD0F    mov         ecx,dword ptr [ebp+0C]
 0041CD12    mov         edx,ebx
 0041CD14    mov         eax,esi
 0041CD16    call        00421010
 0041CD1B    cmp         byte ptr [ebp-24],0
>0041CD1F    je          0041CE69
 0041CD25    mov         byte ptr [ebp-0D],0
 0041CD29    mov         eax,dword ptr [ebp-8]
 0041CD2C    xor         edx,edx
 0041CD2E    call        @WStrCmp
>0041CD33    jne         0041CDA0
 0041CD35    mov         eax,dword ptr [ebp-18]
 0041CD38    xor         edx,edx
 0041CD3A    call        @WStrCmp
>0041CD3F    je          0041CDA0
 0041CD41    mov         eax,dword ptr [ebp-18]
 0041CD44    call        @WStrLen
 0041CD49    mov         edi,eax
 0041CD4B    mov         eax,dword ptr [ebp-4]
 0041CD4E    call        @WStrLen
 0041CD53    cmp         edi,eax
>0041CD55    jge         0041CDA0
 0041CD57    mov         edi,dword ptr ds:[55B6D0];^gvar_0053D158
 0041CD5D    mov         edi,dword ptr [edi]
 0041CD5F    mov         edx,dword ptr [ebp-4]
 0041CD62    mov         eax,dword ptr [ebp-18]
 0041CD65    call        edi
 0041CD67    test        al,al
>0041CD69    je          0041CDA0
 0041CD6B    mov         eax,dword ptr [ebp-18]
 0041CD6E    call        @WStrLen
 0041CD73    mov         edx,dword ptr [ebp-4]
 0041CD76    cmp         word ptr [edx+eax*2],2E
>0041CD7B    jne         0041CDA0
 0041CD7D    lea         eax,[ebp-8]
 0041CD80    mov         edx,dword ptr [ebp-18]
 0041CD83    call        00404F28
 0041CD88    mov         eax,dword ptr [ebp-8]
 0041CD8B    call        @WStrLen
 0041CD90    mov         ecx,eax
 0041CD92    inc         ecx
 0041CD93    lea         eax,[ebp-4]
 0041CD96    mov         edx,1
 0041CD9B    call        @WStrDelete
 0041CDA0    mov         eax,dword ptr [ebp-4]
 0041CDA3    mov         edx,dword ptr [ebp-18]
 0041CDA6    call        @WStrCmp
>0041CDAB    jne         0041CDBA
 0041CDAD    lea         eax,[ebp-4]
 0041CDB0    mov         edx,41CFE8
 0041CDB5    call        00404F28
 0041CDBA    mov         eax,dword ptr [ebp-8]
 0041CDBD    xor         edx,edx
 0041CDBF    call        @WStrCmp
>0041CDC4    je          0041CE69
 0041CDCA    mov         edi,dword ptr ds:[55B210];^gvar_0053D140
 0041CDD0    mov         edi,dword ptr [edi]
 0041CDD2    mov         edx,dword ptr [ebp-18]
 0041CDD5    mov         eax,dword ptr [ebp-8]
 0041CDD8    call        edi
 0041CDDA    test        al,al
>0041CDDC    jne         0041CE69
 0041CDE2    push        dword ptr [ebp-8]
 0041CDE5    push        41D00C;'.'
 0041CDEA    push        dword ptr [ebp-4]
 0041CDED    lea         eax,[ebp-4]
 0041CDF0    mov         edx,3
 0041CDF5    call        @WStrCatN
 0041CDFA    lea         eax,[ebp-8]
 0041CDFD    mov         edx,dword ptr [ebp-18]
 0041CE00    call        00404F28
 0041CE05    mov         eax,dword ptr [ebp-18]
 0041CE08    call        @WStrLen
 0041CE0D    mov         edi,eax
 0041CE0F    mov         eax,dword ptr [ebp-4]
 0041CE12    call        @WStrLen
 0041CE17    cmp         edi,eax
>0041CE19    jge         0041CE69
 0041CE1B    mov         eax,dword ptr [ebp-18]
 0041CE1E    call        @WStrLen
 0041CE23    mov         edx,dword ptr [ebp-4]
 0041CE26    cmp         word ptr [edx+eax*2],2E
>0041CE2B    jne         0041CE69
 0041CE2D    lea         eax,[ebp-28]
 0041CE30    mov         ecx,41D00C;'.'
 0041CE35    mov         edx,dword ptr [ebp-18]
 0041CE38    call        @WStrCat3
 0041CE3D    mov         eax,dword ptr [ebp-28]
 0041CE40    mov         edi,dword ptr ds:[55B6D0];^gvar_0053D158
 0041CE46    mov         edi,dword ptr [edi]
 0041CE48    mov         edx,dword ptr [ebp-4]
 0041CE4B    call        edi
 0041CE4D    test        al,al
>0041CE4F    je          0041CE69
 0041CE51    mov         eax,dword ptr [ebp-18]
 0041CE54    call        @WStrLen
 0041CE59    mov         ecx,eax
 0041CE5B    inc         ecx
 0041CE5C    lea         eax,[ebp-4]
 0041CE5F    mov         edx,1
 0041CE64    call        @WStrDelete
 0041CE69    mov         eax,dword ptr [esi+1C]
 0041CE6C    cmp         eax,dword ptr [esi+18]
>0041CE6F    jne         0041CEA3
 0041CE71    cmp         eax,8
>0041CE74    jge         0041CE7F
 0041CE76    mov         dword ptr [esi+1C],10
>0041CE7D    jmp         0041CE89
 0041CE7F    sar         eax,1
>0041CE81    jns         0041CE86
 0041CE83    adc         eax,0
 0041CE86    add         dword ptr [esi+1C],eax
 0041CE89    mov         eax,dword ptr [esi+1C]
 0041CE8C    push        eax
 0041CE8D    lea         eax,[esi+14]
 0041CE90    mov         ecx,1
 0041CE95    mov         edx,dword ptr ds:[41C680];_DynArr_14_3
 0041CE9B    call        @DynArraySetLength
 0041CEA0    add         esp,4
 0041CEA3    mov         eax,dword ptr [esi+18]
 0041CEA6    lea         eax,[eax+eax*2]
 0041CEA9    mov         edx,dword ptr [esi+14]
 0041CEAC    lea         edi,[edx+eax*4]
 0041CEAF    mov         byte ptr [edi],1
 0041CEB2    mov         byte ptr [edi+1],bl
 0041CEB5    lea         eax,[edi+4]
 0041CEB8    mov         edx,dword ptr [ebp-4]
 0041CEBB    call        @WStrAsg
 0041CEC0    mov         eax,dword ptr [ebp+0C]
 0041CEC3    mov         dword ptr [edi+8],eax
 0041CEC6    inc         dword ptr [esi+18]
 0041CEC9    cmp         byte ptr [ebp+8],0
>0041CECD    je          0041CFA3
 0041CED3    xor         eax,eax
 0041CED5    mov         al,bl
 0041CED7    mov         eax,dword ptr [esi+eax*4+54]
 0041CEDB    test        eax,eax
>0041CEDD    jl          0041CF5C
 0041CEDF    lea         eax,[eax+eax*4]
 0041CEE2    mov         edx,dword ptr [esi+8]
 0041CEE5    lea         eax,[edx+eax*4]
 0041CEE8    mov         edx,dword ptr [eax+4]
 0041CEEB    cmp         edx,dword ptr [ebp+0C]
>0041CEEE    jne         0041CEF6
 0041CEF0    mov         byte ptr [ebp-0D],0
>0041CEF4    jmp         0041CF5C
 0041CEF6    mov         ecx,edx
 0041CEF8    add         ecx,dword ptr [eax+8]
 0041CEFB    cmp         ecx,dword ptr [ebp+0C]
>0041CEFE    jae         0041CF5C
 0041CF00    mov         ecx,dword ptr [ebp+0C]
 0041CF03    sub         ecx,edx
 0041CF05    mov         dword ptr [eax+8],ecx
 0041CF08    xor         edx,edx
 0041CF0A    mov         dl,bl
 0041CF0C    mov         edx,dword ptr [esi+edx*4+54]
 0041CF10    inc         edx
 0041CF11    cmp         edx,dword ptr [esi+0C]
>0041CF14    jge         0041CF5C
 0041CF16    xor         edx,edx
 0041CF18    mov         dl,bl
 0041CF1A    mov         edx,dword ptr [esi+edx*4+54]
 0041CF1E    lea         edx,[edx+edx*4]
 0041CF21    mov         ecx,dword ptr [esi+8]
 0041CF24    cmp         bl,byte ptr [ecx+edx*4+15]
>0041CF28    jne         0041CF5C
 0041CF2A    mov         edx,dword ptr [eax+4]
 0041CF2D    add         edx,dword ptr [eax+8]
 0041CF30    xor         ecx,ecx
 0041CF32    mov         cl,bl
 0041CF34    mov         ecx,dword ptr [esi+ecx*4+54]
 0041CF38    lea         ecx,[ecx+ecx*4]
 0041CF3B    mov         edi,dword ptr [esi+8]
 0041CF3E    cmp         edx,dword ptr [edi+ecx*4+18]
>0041CF42    jbe         0041CF5C
 0041CF44    xor         edx,edx
 0041CF46    mov         dl,bl
 0041CF48    mov         edx,dword ptr [esi+edx*4+54]
 0041CF4C    lea         edx,[edx+edx*4]
 0041CF4F    mov         ecx,dword ptr [esi+8]
 0041CF52    mov         edx,dword ptr [ecx+edx*4+18]
 0041CF56    sub         edx,dword ptr [eax+4]
 0041CF59    mov         dword ptr [eax+8],edx
 0041CF5C    cmp         byte ptr [ebp-0D],0
>0041CF60    je          0041CFA3
 0041CF62    xor         eax,eax
 0041CF64    mov         al,bl
 0041CF66    mov         edi,dword ptr [esi+eax*4+54]
 0041CF6A    cmp         edi,0FFFFFFFF
>0041CF6D    je          0041CF8A
 0041CF6F    lea         eax,[edi+edi*4]
 0041CF72    mov         edx,dword ptr [esi+8]
 0041CF75    mov         edx,dword ptr [edx+eax*4+0C]
 0041CF79    mov         ecx,dword ptr ds:[55B210];^gvar_0053D140
 0041CF7F    mov         ecx,dword ptr [ecx]
 0041CF81    mov         eax,dword ptr [ebp-8]
 0041CF84    call        ecx
 0041CF86    test        al,al
>0041CF88    jne         0041CFA3
 0041CF8A    mov         eax,dword ptr [ebp+0C]
 0041CF8D    push        eax
 0041CF8E    push        1
 0041CF90    mov         eax,dword ptr [ebp-8]
 0041CF93    push        eax
 0041CF94    push        1
 0041CF96    push        1
 0041CF98    xor         ecx,ecx
 0041CF9A    mov         edx,ebx
 0041CF9C    mov         eax,esi
 0041CF9E    call        0041C98C
 0041CFA3    xor         eax,eax
 0041CFA5    pop         edx
 0041CFA6    pop         ecx
 0041CFA7    pop         ecx
 0041CFA8    mov         dword ptr fs:[eax],edx
 0041CFAB    push        41CFDB
 0041CFB0    lea         eax,[ebp-28]
 0041CFB3    call        @WStrClr
 0041CFB8    lea         eax,[ebp-24]
 0041CFBB    mov         edx,dword ptr ds:[41C61C];TMfSegment
 0041CFC1    call        @FinalizeRecord
 0041CFC6    lea         eax,[ebp-0C]
 0041CFC9    mov         edx,3
 0041CFCE    call        @WStrArrayClr
 0041CFD3    ret
>0041CFD4    jmp         @HandleFinally
>0041CFD9    jmp         0041CFB0
 0041CFDB    pop         edi
 0041CFDC    pop         esi
 0041CFDD    pop         ebx
 0041CFDE    mov         esp,ebp
 0041CFE0    pop         ebp
 0041CFE1    ret         8
end;*}

//0041D010
{*procedure sub_0041D010(?:?; ?:?; ?:?; ?:?);
begin
 0041D010    push        ebp
 0041D011    mov         ebp,esp
 0041D013    push        ebx
 0041D014    push        esi
 0041D015    push        edi
 0041D016    mov         esi,ecx
 0041D018    mov         edi,edx
 0041D01A    mov         ebx,eax
 0041D01C    cmp         byte ptr [ebp+8],0
>0041D020    je          0041D036
 0041D022    cmp         dword ptr [ebx+24],0
>0041D026    jle         0041D036
 0041D028    mov         eax,dword ptr [ebx+20]
 0041D02B    mov         edx,dword ptr [ebx+24]
 0041D02E    mov         eax,dword ptr [eax+edx*8-4]
 0041D032    cmp         eax,esi
>0041D034    jae         0041D081
 0041D036    mov         eax,dword ptr [ebx+28]
 0041D039    cmp         eax,dword ptr [ebx+24]
>0041D03C    jne         0041D070
 0041D03E    cmp         eax,8
>0041D041    jge         0041D04C
 0041D043    mov         dword ptr [ebx+28],10
>0041D04A    jmp         0041D056
 0041D04C    sar         eax,1
>0041D04E    jns         0041D053
 0041D050    adc         eax,0
 0041D053    add         dword ptr [ebx+28],eax
 0041D056    mov         eax,dword ptr [ebx+28]
 0041D059    push        eax
 0041D05A    lea         eax,[ebx+20]
 0041D05D    mov         ecx,1
 0041D062    mov         edx,dword ptr ds:[41C6A4];_DynArr_14_4
 0041D068    call        @DynArraySetLength
 0041D06D    add         esp,4
 0041D070    mov         eax,dword ptr [ebx+20]
 0041D073    mov         edx,dword ptr [ebx+24]
 0041D076    lea         eax,[eax+edx*8]
 0041D079    mov         dword ptr [eax],edi
 0041D07B    mov         dword ptr [eax+4],esi
 0041D07E    inc         dword ptr [ebx+24]
 0041D081    pop         edi
 0041D082    pop         esi
 0041D083    pop         ebx
 0041D084    pop         ebp
 0041D085    ret         4
end;*}

//0041D250
{*function sub_0041D250(?:WideString; ?:?):?;
begin
 0041D250    push        ebp
 0041D251    mov         ebp,esp
 0041D253    add         esp,0FFFFFFEC
 0041D256    push        ebx
 0041D257    push        esi
 0041D258    xor         ecx,ecx
 0041D25A    mov         dword ptr [ebp-14],ecx
 0041D25D    mov         dword ptr [ebp-10],ecx
 0041D260    mov         esi,edx
 0041D262    mov         ebx,eax
 0041D264    xor         eax,eax
 0041D266    push        ebp
 0041D267    push        41D3BB
 0041D26C    push        dword ptr fs:[eax]
 0041D26F    mov         dword ptr fs:[eax],esp
 0041D272    mov         byte ptr [ebp-1],0
 0041D276    call        kernel32.GetVersion
 0041D27B    test        eax,80000000
>0041D280    jne         0041D294
 0041D282    mov         eax,ebx
 0041D284    call        @WStrToPWChar
 0041D289    push        eax
 0041D28A    call        kernel32.GetFileAttributesW
 0041D28F    cmp         eax,0FFFFFFFF
>0041D292    jne         0041D2C5
 0041D294    call        kernel32.GetVersion
 0041D299    test        eax,80000000
>0041D29E    je          0041D3A0
 0041D2A4    lea         eax,[ebp-10]
 0041D2A7    mov         edx,ebx
 0041D2A9    call        @LStrFromWStr
 0041D2AE    mov         eax,dword ptr [ebp-10]
 0041D2B1    call        @LStrToPChar
 0041D2B6    push        eax
 0041D2B7    call        kernel32.GetFileAttributesA
 0041D2BC    cmp         eax,0FFFFFFFF
>0041D2BF    je          0041D3A0
 0041D2C5    call        kernel32.GetVersion
 0041D2CA    test        eax,80000000
>0041D2CF    jne         0041D2F5
 0041D2D1    push        0
 0041D2D3    push        80
 0041D2D8    push        3
 0041D2DA    push        0
 0041D2DC    push        3
 0041D2DE    push        80000000
 0041D2E3    mov         eax,ebx
 0041D2E5    call        @WStrToPWChar
 0041D2EA    push        eax
 0041D2EB    call        kernel32.CreateFileW
 0041D2F0    mov         dword ptr [ebp-8],eax
>0041D2F3    jmp         0041D322
 0041D2F5    push        0
 0041D2F7    push        80
 0041D2FC    push        3
 0041D2FE    push        0
 0041D300    push        3
 0041D302    push        80000000
 0041D307    lea         eax,[ebp-14]
 0041D30A    mov         edx,ebx
 0041D30C    call        @LStrFromWStr
 0041D311    mov         eax,dword ptr [ebp-14]
 0041D314    call        @LStrToPChar
 0041D319    push        eax
 0041D31A    call        kernel32.CreateFileA
 0041D31F    mov         dword ptr [ebp-8],eax
 0041D322    cmp         dword ptr [ebp-8],0FFFFFFFF
>0041D326    je          0041D3A0
 0041D328    xor         eax,eax
 0041D32A    push        ebp
 0041D32B    push        41D399
 0041D330    push        dword ptr fs:[eax]
 0041D333    mov         dword ptr fs:[eax],esp
 0041D336    push        0
 0041D338    mov         eax,dword ptr [ebp-8]
 0041D33B    push        eax
 0041D33C    call        kernel32.GetFileSize
 0041D341    mov         edx,eax
 0041D343    mov         eax,esi
 0041D345    call        @LStrSetLength
 0041D34A    cmp         dword ptr [esi],0
>0041D34D    je          0041D379
 0041D34F    push        0
 0041D351    lea         eax,[ebp-0C]
 0041D354    push        eax
 0041D355    mov         eax,dword ptr [esi]
 0041D357    call        @DynArrayLength
 0041D35C    push        eax
 0041D35D    mov         eax,dword ptr [esi]
 0041D35F    push        eax
 0041D360    mov         eax,dword ptr [ebp-8]
 0041D363    push        eax
 0041D364    call        kernel32.ReadFile
 0041D369    test        eax,eax
>0041D36B    je          0041D379
 0041D36D    mov         eax,dword ptr [esi]
 0041D36F    call        @DynArrayLength
 0041D374    cmp         eax,dword ptr [ebp-0C]
>0041D377    je          0041D37D
 0041D379    xor         eax,eax
>0041D37B    jmp         0041D37F
 0041D37D    mov         al,1
 0041D37F    mov         byte ptr [ebp-1],al
 0041D382    xor         eax,eax
 0041D384    pop         edx
 0041D385    pop         ecx
 0041D386    pop         ecx
 0041D387    mov         dword ptr fs:[eax],edx
 0041D38A    push        41D3A0
 0041D38F    mov         eax,dword ptr [ebp-8]
 0041D392    push        eax
 0041D393    call        kernel32.CloseHandle
 0041D398    ret
>0041D399    jmp         @HandleFinally
>0041D39E    jmp         0041D38F
 0041D3A0    xor         eax,eax
 0041D3A2    pop         edx
 0041D3A3    pop         ecx
 0041D3A4    pop         ecx
 0041D3A5    mov         dword ptr fs:[eax],edx
 0041D3A8    push        41D3C2
 0041D3AD    lea         eax,[ebp-14]
 0041D3B0    mov         edx,2
 0041D3B5    call        @LStrArrayClr
 0041D3BA    ret
>0041D3BB    jmp         @HandleFinally
>0041D3C0    jmp         0041D3AD
 0041D3C2    mov         al,byte ptr [ebp-1]
 0041D3C5    pop         esi
 0041D3C6    pop         ebx
 0041D3C7    mov         esp,ebp
 0041D3C9    pop         ebp
 0041D3CA    ret
end;*}

//0041D3CC
{*function sub_0041D3CC(?:?):?;
begin
 0041D3CC    push        ebp
 0041D3CD    mov         ebp,esp
 0041D3CF    add         esp,0FFFFFFF8
 0041D3D2    push        ebx
 0041D3D3    mov         ebx,eax
 0041D3D5    lea         edx,[ebp-1]
 0041D3D8    mov         ecx,1
 0041D3DD    mov         eax,ebx
 0041D3DF    call        0041C850
 0041D3E4    cmp         byte ptr [ebp-1],80
>0041D3E8    jne         0041D3FB
 0041D3EA    lea         edx,[ebp-8]
 0041D3ED    mov         ecx,4
 0041D3F2    mov         eax,ebx
 0041D3F4    call        0041C850
>0041D3F9    jmp         0041D402
 0041D3FB    movsx       eax,byte ptr [ebp-1]
 0041D3FF    mov         dword ptr [ebp-8],eax
 0041D402    mov         eax,dword ptr [ebp-8]
 0041D405    pop         ebx
 0041D406    pop         ecx
 0041D407    pop         ecx
 0041D408    pop         ebp
 0041D409    ret
end;*}

//0041D40C
{*procedure sub_0041D40C(?:?; ?:?);
begin
 0041D40C    push        ebp
 0041D40D    mov         ebp,esp
 0041D40F    add         esp,0FFFFFFF8
 0041D412    push        ebx
 0041D413    push        esi
 0041D414    xor         ecx,ecx
 0041D416    mov         dword ptr [ebp-8],ecx
 0041D419    mov         esi,edx
 0041D41B    mov         ebx,eax
 0041D41D    xor         eax,eax
 0041D41F    push        ebp
 0041D420    push        41D488
 0041D425    push        dword ptr fs:[eax]
 0041D428    mov         dword ptr fs:[eax],esp
 0041D42B    lea         edx,[ebp-1]
 0041D42E    mov         ecx,1
 0041D433    mov         eax,ebx
 0041D435    call        0041C850
 0041D43A    xor         eax,eax
 0041D43C    mov         al,byte ptr [ebp-1]
 0041D43F    mov         edx,dword ptr [ebx+8]
 0041D442    sub         edx,dword ptr [ebx+0C]
 0041D445    cmp         eax,edx
>0041D447    jg          0041D472
 0041D449    mov         edx,eax
 0041D44B    lea         eax,[ebp-8]
 0041D44E    call        @LStrSetLength
 0041D453    cmp         byte ptr [ebp-1],0
>0041D457    jbe         0041D468
 0041D459    xor         ecx,ecx
 0041D45B    mov         cl,byte ptr [ebp-1]
 0041D45E    mov         edx,dword ptr [ebp-8]
 0041D461    mov         eax,ebx
 0041D463    call        0041C850
 0041D468    mov         edx,esi
 0041D46A    mov         eax,dword ptr [ebp-8]
 0041D46D    call        0040BC40
 0041D472    xor         eax,eax
 0041D474    pop         edx
 0041D475    pop         ecx
 0041D476    pop         ecx
 0041D477    mov         dword ptr fs:[eax],edx
 0041D47A    push        41D48F
 0041D47F    lea         eax,[ebp-8]
 0041D482    call        @LStrClr
 0041D487    ret
>0041D488    jmp         @HandleFinally
>0041D48D    jmp         0041D47F
 0041D48F    pop         esi
 0041D490    pop         ebx
 0041D491    pop         ecx
 0041D492    pop         ecx
 0041D493    pop         ebp
 0041D494    ret
end;*}

//0041D498
{*function sub_0041D498(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0041D498    push        ebp
 0041D499    mov         ebp,esp
 0041D49B    add         esp,0FFFFFFE4
 0041D49E    push        ebx
 0041D49F    push        esi
 0041D4A0    push        edi
 0041D4A1    xor         ebx,ebx
 0041D4A3    mov         dword ptr [ebp-18],ebx
 0041D4A6    mov         dword ptr [ebp-1C],ebx
 0041D4A9    mov         dword ptr [ebp-0C],ecx
 0041D4AC    mov         dword ptr [ebp-8],edx
 0041D4AF    mov         dword ptr [ebp-4],eax
 0041D4B2    xor         eax,eax
 0041D4B4    push        ebp
 0041D4B5    push        41D6AB
 0041D4BA    push        dword ptr fs:[eax]
 0041D4BD    mov         dword ptr fs:[eax],esp
 0041D4C0    mov         byte ptr [ebp-0D],0
 0041D4C4    xor         edx,edx
 0041D4C6    push        ebp
 0041D4C7    push        41D67F
 0041D4CC    push        dword ptr fs:[edx]
 0041D4CF    mov         dword ptr fs:[edx],esp
 0041D4D2    cmp         dword ptr [ebp-0C],48
>0041D4D6    jle         0041D675
 0041D4DC    mov         eax,dword ptr [ebp-4]
 0041D4DF    mov         edx,dword ptr [ebp-8]
 0041D4E2    cmp         byte ptr [eax+edx+3],3A
>0041D4E7    jne         0041D675
 0041D4ED    mov         eax,dword ptr [ebp-4]
 0041D4F0    mov         edx,dword ptr [ebp-8]
 0041D4F3    cmp         byte ptr [eax+edx+0C],20
>0041D4F8    jne         0041D675
 0041D4FE    mov         eax,dword ptr [ebp-4]
 0041D501    mov         edx,dword ptr [ebp-8]
 0041D504    cmp         byte ptr [eax+edx+15],20
>0041D509    jne         0041D675
 0041D50F    mov         eax,dword ptr [ebp-4]
 0041D512    mov         edx,dword ptr [ebp-8]
 0041D515    cmp         byte ptr [eax+edx+16],43
>0041D51A    jne         0041D675
 0041D520    mov         eax,dword ptr [ebp-4]
 0041D523    mov         edx,dword ptr [ebp-8]
 0041D526    cmp         byte ptr [eax+edx+17],3D
>0041D52B    jne         0041D675
 0041D531    mov         ebx,dword ptr [ebp-8]
 0041D534    add         ebx,dword ptr [ebp-0C]
 0041D537    dec         ebx
 0041D538    mov         eax,dword ptr [ebp-8]
 0041D53B    sub         eax,ebx
>0041D53D    jg          0041D558
 0041D53F    dec         eax
 0041D540    mov         edx,dword ptr [ebp-4]
 0041D543    cmp         byte ptr [edx+ebx-1],20
>0041D548    jne         0041D554
 0041D54A    mov         eax,ebx
 0041D54C    sub         eax,dword ptr [ebp-8]
 0041D54F    mov         dword ptr [ebp-0C],eax
>0041D552    jmp         0041D558
 0041D554    dec         ebx
 0041D555    inc         eax
>0041D556    jne         0041D540
 0041D558    mov         ebx,dword ptr [ebp-8]
 0041D55B    add         ebx,dword ptr [ebp-0C]
 0041D55E    dec         ebx
 0041D55F    mov         eax,dword ptr [ebp-8]
 0041D562    sub         eax,ebx
>0041D564    jg          0041D580
 0041D566    dec         eax
 0041D567    mov         edx,dword ptr [ebp-4]
 0041D56A    cmp         byte ptr [edx+ebx-1],20
>0041D56F    je          0041D57C
 0041D571    mov         eax,ebx
 0041D573    sub         eax,dword ptr [ebp-8]
 0041D576    inc         eax
 0041D577    mov         dword ptr [ebp-0C],eax
>0041D57A    jmp         0041D580
 0041D57C    dec         ebx
 0041D57D    inc         eax
>0041D57E    jne         0041D567
 0041D580    mov         ebx,dword ptr [ebp-8]
 0041D583    add         ebx,dword ptr [ebp-0C]
 0041D586    mov         eax,dword ptr [ebp-8]
 0041D589    inc         eax
 0041D58A    sub         eax,ebx
>0041D58C    jg          0041D675
 0041D592    dec         eax
 0041D593    mov         edx,dword ptr [ebp-4]
 0041D596    mov         dl,byte ptr [edx+ebx-2]
 0041D59A    sub         dl,3D
>0041D59D    je          0041D5AD
 0041D59F    sub         dl,1F
>0041D5A2    je          0041D5AD
 0041D5A4    sub         dl,20
>0041D5A7    jne         0041D66D
 0041D5AD    mov         esi,dword ptr ds:[55B13C];^gvar_0053D100
 0041D5B3    mov         esi,dword ptr [esi]
 0041D5B5    mov         edx,dword ptr [ebp-4]
 0041D5B8    dec         edx
 0041D5B9    add         edx,dword ptr [ebp-8]
 0041D5BC    mov         ecx,4
 0041D5C1    mov         al,1
 0041D5C3    call        esi
 0041D5C5    mov         esi,eax
 0041D5C7    dec         esi
 0041D5C8    test        esi,esi
>0041D5CA    jl          0041D675
 0041D5D0    mov         eax,dword ptr [ebp+8]
 0041D5D3    inc         eax
 0041D5D4    cmp         esi,eax
>0041D5D6    jge         0041D675
 0041D5DC    mov         edi,dword ptr ds:[55B13C];^gvar_0053D100
 0041D5E2    mov         edi,dword ptr [edi]
 0041D5E4    mov         edx,dword ptr [ebp-4]
 0041D5E7    dec         edx
 0041D5E8    add         edx,dword ptr [ebp-8]
 0041D5EB    add         edx,5
 0041D5EE    mov         ecx,8
 0041D5F3    mov         al,1
 0041D5F5    call        edi
 0041D5F7    mov         dword ptr [ebp-14],eax
 0041D5FA    lea         eax,[esi+esi*4]
 0041D5FD    mov         edx,dword ptr [ebp+0C]
 0041D600    mov         eax,dword ptr [edx+eax*4+4]
 0041D604    add         dword ptr [ebp-14],eax
 0041D607    mov         eax,dword ptr [ebp-14]
 0041D60A    push        eax
 0041D60B    mov         edi,dword ptr ds:[55B13C];^gvar_0053D100
 0041D611    mov         edi,dword ptr [edi]
 0041D613    mov         edx,dword ptr [ebp-4]
 0041D616    dec         edx
 0041D617    add         edx,dword ptr [ebp-8]
 0041D61A    add         edx,0E
 0041D61D    mov         ecx,8
 0041D622    mov         al,1
 0041D624    call        edi
 0041D626    push        eax
 0041D627    lea         eax,[ebp-1C]
 0041D62A    push        eax
 0041D62B    mov         ecx,dword ptr [ebp-8]
 0041D62E    add         ecx,dword ptr [ebp-0C]
 0041D631    sub         ecx,ebx
 0041D633    mov         edx,ebx
 0041D635    mov         eax,dword ptr [ebp-4]
 0041D638    call        @LStrCopy
 0041D63D    mov         eax,dword ptr [ebp-1C]
 0041D640    lea         edx,[ebp-18]
 0041D643    call        0040BC40
 0041D648    mov         eax,dword ptr [ebp-18]
 0041D64B    push        eax
 0041D64C    push        0
 0041D64E    push        0
 0041D650    lea         eax,[esi+esi*4]
 0041D653    mov         edx,dword ptr [ebp+0C]
 0041D656    mov         dl,byte ptr [edx+eax*4+10]
 0041D65A    mov         eax,dword ptr [ebp+10]
 0041D65D    mov         eax,dword ptr [eax-4]
 0041D660    mov         cl,1
 0041D662    call        0041C98C
 0041D667    mov         byte ptr [ebp-0D],1
>0041D66B    jmp         0041D675
 0041D66D    dec         ebx
 0041D66E    inc         eax
>0041D66F    jne         0041D593
 0041D675    xor         eax,eax
 0041D677    pop         edx
 0041D678    pop         ecx
 0041D679    pop         ecx
 0041D67A    mov         dword ptr fs:[eax],edx
>0041D67D    jmp         0041D68D
>0041D67F    jmp         @HandleAnyException
 0041D684    mov         byte ptr [ebp-0D],0
 0041D688    call        @DoneExcept
 0041D68D    xor         eax,eax
 0041D68F    pop         edx
 0041D690    pop         ecx
 0041D691    pop         ecx
 0041D692    mov         dword ptr fs:[eax],edx
 0041D695    push        41D6B2
 0041D69A    lea         eax,[ebp-1C]
 0041D69D    call        @LStrClr
 0041D6A2    lea         eax,[ebp-18]
 0041D6A5    call        @WStrClr
 0041D6AA    ret
>0041D6AB    jmp         @HandleFinally
>0041D6B0    jmp         0041D69A
 0041D6B2    mov         al,byte ptr [ebp-0D]
 0041D6B5    pop         edi
 0041D6B6    pop         esi
 0041D6B7    pop         ebx
 0041D6B8    mov         esp,ebp
 0041D6BA    pop         ebp
 0041D6BB    ret         8
end;*}

//0041D6C0
{*function sub_0041D6C0(?:TMiniStream; ?:?):?;
begin
 0041D6C0    push        ebp
 0041D6C1    mov         ebp,esp
 0041D6C3    add         esp,0FFFFFFF0
 0041D6C6    push        ebx
 0041D6C7    push        esi
 0041D6C8    push        edi
 0041D6C9    xor         edx,edx
 0041D6CB    mov         dword ptr [ebp-10],edx
 0041D6CE    mov         dword ptr [ebp-0C],edx
 0041D6D1    mov         esi,eax
 0041D6D3    xor         eax,eax
 0041D6D5    push        ebp
 0041D6D6    push        41D804
 0041D6DB    push        dword ptr fs:[eax]
 0041D6DE    mov         dword ptr fs:[eax],esp
 0041D6E1    mov         eax,dword ptr [ebp+8]
 0041D6E4    mov         eax,dword ptr [eax-4]
 0041D6E7    lea         edx,[eax+0C]
 0041D6EA    mov         ecx,4
 0041D6EF    mov         eax,esi
 0041D6F1    call        0041C850
 0041D6F6    mov         eax,dword ptr [ebp+8]
 0041D6F9    mov         eax,dword ptr [eax-4]
 0041D6FC    mov         ebx,dword ptr [eax+0C]
 0041D6FF    mov         eax,dword ptr [ebp+8]
 0041D702    mov         eax,dword ptr [eax-4]
 0041D705    mov         dword ptr [eax+10],ebx
 0041D708    mov         eax,dword ptr [ebp+8]
 0041D70B    push        ebx
 0041D70C    mov         eax,dword ptr [ebp+8]
 0041D70F    mov         eax,dword ptr [eax-4]
 0041D712    add         eax,8
 0041D715    mov         ecx,1
 0041D71A    mov         edx,dword ptr ds:[41C65C];_DynArr_14_2
 0041D720    call        @DynArraySetLength
 0041D725    add         esp,4
 0041D728    mov         eax,dword ptr [ebp+8]
 0041D72B    mov         eax,dword ptr [eax-4]
 0041D72E    mov         eax,dword ptr [eax+0C]
 0041D731    dec         eax
 0041D732    test        eax,eax
>0041D734    jl          0041D7E7
 0041D73A    inc         eax
 0041D73B    mov         dword ptr [ebp-8],eax
 0041D73E    xor         edi,edi
 0041D740    lea         eax,[edi+edi*4]
 0041D743    mov         edx,dword ptr [ebp+8]
 0041D746    mov         edx,dword ptr [edx-4]
 0041D749    mov         edx,dword ptr [edx+8]
 0041D74C    lea         ebx,[edx+eax*4]
 0041D74F    mov         byte ptr [ebx],1
 0041D752    mov         byte ptr [ebx+1],1
 0041D756    lea         edx,[ebp-4]
 0041D759    mov         ecx,4
 0041D75E    mov         eax,esi
 0041D760    call        0041C850
 0041D765    mov         eax,dword ptr [ebp+8]
 0041D768    mov         eax,dword ptr [eax-4]
 0041D76B    mov         eax,dword ptr [eax+40]
 0041D76E    add         eax,dword ptr [ebp-4]
 0041D771    mov         dword ptr [ebx+4],eax
 0041D774    lea         edx,[ebx+8]
 0041D777    mov         ecx,4
 0041D77C    mov         eax,esi
 0041D77E    call        0041C850
 0041D783    mov         eax,dword ptr [ebp+8]
 0041D786    mov         eax,dword ptr [eax-4]
 0041D789    cmp         dword ptr [eax+50],0
>0041D78D    je          0041D7C4
 0041D78F    lea         eax,[ebp-0C]
 0041D792    push        eax
 0041D793    mov         cx,30
 0041D797    mov         edx,1
 0041D79C    mov         eax,edi
 0041D79E    call        0040AB1C
 0041D7A3    mov         ecx,dword ptr [ebp-0C]
 0041D7A6    lea         eax,[ebx+0C]
 0041D7A9    mov         edx,41D818;'segment%'
 0041D7AE    call        @WStrCat3
 0041D7B3    lea         edx,[ebx+10]
 0041D7B6    mov         ecx,1
 0041D7BB    mov         eax,esi
 0041D7BD    call        0041C850
>0041D7C2    jmp         0041D7DD
 0041D7C4    lea         edx,[ebp-10]
 0041D7C7    mov         eax,esi
 0041D7C9    call        0041D40C
 0041D7CE    mov         edx,dword ptr [ebp-10]
 0041D7D1    lea         eax,[ebx+0C]
 0041D7D4    call        @WStrAsg
 0041D7D9    mov         byte ptr [ebx+10],0
 0041D7DD    inc         edi
 0041D7DE    dec         dword ptr [ebp-8]
>0041D7E1    jne         0041D740
 0041D7E7    mov         bl,1
 0041D7E9    xor         eax,eax
 0041D7EB    pop         edx
 0041D7EC    pop         ecx
 0041D7ED    pop         ecx
 0041D7EE    mov         dword ptr fs:[eax],edx
 0041D7F1    push        41D80B
 0041D7F6    lea         eax,[ebp-10]
 0041D7F9    mov         edx,2
 0041D7FE    call        @WStrArrayClr
 0041D803    ret
>0041D804    jmp         @HandleFinally
>0041D809    jmp         0041D7F6
 0041D80B    mov         eax,ebx
 0041D80D    pop         edi
 0041D80E    pop         esi
 0041D80F    pop         ebx
 0041D810    mov         esp,ebp
 0041D812    pop         ebp
 0041D813    ret
end;*}

//0041D82C
{*function sub_0041D82C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0041D82C    push        ebp
 0041D82D    mov         ebp,esp
 0041D82F    add         esp,0FFFFFFD4
 0041D832    push        ebx
 0041D833    push        esi
 0041D834    push        edi
 0041D835    xor         ebx,ebx
 0041D837    mov         dword ptr [ebp-2C],ebx
 0041D83A    mov         dword ptr [ebp-14],ebx
 0041D83D    mov         dword ptr [ebp-0C],ecx
 0041D840    mov         dword ptr [ebp-8],edx
 0041D843    mov         dword ptr [ebp-4],eax
 0041D846    lea         eax,[ebp-28]
 0041D849    mov         edx,dword ptr ds:[41C61C];TMfSegment
 0041D84F    call        @AddRefRecord
 0041D854    xor         eax,eax
 0041D856    push        ebp
 0041D857    push        41DA4A
 0041D85C    push        dword ptr fs:[eax]
 0041D85F    mov         dword ptr fs:[eax],esp
 0041D862    mov         byte ptr [ebp-0D],0
 0041D866    xor         ecx,ecx
 0041D868    push        ebp
 0041D869    push        41DA10
 0041D86E    push        dword ptr fs:[ecx]
 0041D871    mov         dword ptr fs:[ecx],esp
 0041D874    cmp         dword ptr [ebp-0C],0D
>0041D878    jle         0041DA06
 0041D87E    mov         eax,dword ptr [ebp-4]
 0041D881    mov         edx,dword ptr [ebp-8]
 0041D884    cmp         byte ptr [eax+edx+3],3A
>0041D889    jne         0041DA06
 0041D88F    xor         edx,edx
 0041D891    mov         eax,dword ptr [ebp-8]
 0041D894    add         eax,dword ptr [ebp-0C]
 0041D897    mov         ecx,dword ptr [ebp-4]
 0041D89A    cmp         byte ptr [ecx+eax-2],29
>0041D89F    jne         0041D8C9
 0041D8A1    mov         ebx,eax
 0041D8A3    sub         ebx,2
 0041D8A6    mov         eax,dword ptr [ebp-8]
 0041D8A9    add         eax,0D
 0041D8AC    sub         eax,ebx
>0041D8AE    jg          0041D8C9
 0041D8B0    dec         eax
 0041D8B1    mov         ecx,dword ptr [ebp-4]
 0041D8B4    cmp         byte ptr [ecx+ebx-1],28
>0041D8B9    jne         0041D8C5
 0041D8BB    mov         eax,ebx
 0041D8BD    sub         eax,dword ptr [ebp-8]
 0041D8C0    mov         dword ptr [ebp-0C],eax
>0041D8C3    jmp         0041D8C9
 0041D8C5    dec         ebx
 0041D8C6    inc         eax
>0041D8C7    jne         0041D8B1
 0041D8C9    mov         ebx,dword ptr [ebp-8]
 0041D8CC    add         ebx,dword ptr [ebp-0C]
 0041D8CF    mov         eax,dword ptr [ebp-8]
 0041D8D2    add         eax,0D
 0041D8D5    sub         eax,ebx
>0041D8D7    jg          0041D8EC
 0041D8D9    dec         eax
 0041D8DA    mov         ecx,dword ptr [ebp-4]
 0041D8DD    cmp         byte ptr [ecx+ebx-2],20
>0041D8E2    jne         0041D8E8
 0041D8E4    mov         dl,1
>0041D8E6    jmp         0041D8EC
 0041D8E8    dec         ebx
 0041D8E9    inc         eax
>0041D8EA    jne         0041D8DA
 0041D8EC    test        dl,dl
>0041D8EE    je          0041DA06
 0041D8F4    mov         esi,dword ptr ds:[55B13C];^gvar_0053D100
 0041D8FA    mov         esi,dword ptr [esi]
 0041D8FC    mov         edx,dword ptr [ebp-4]
 0041D8FF    dec         edx
 0041D900    add         edx,dword ptr [ebp-8]
 0041D903    mov         ecx,4
 0041D908    mov         al,1
 0041D90A    call        esi
 0041D90C    mov         esi,eax
 0041D90E    dec         esi
 0041D90F    test        esi,esi
>0041D911    jl          0041DA06
 0041D917    mov         eax,dword ptr [ebp+8]
 0041D91A    inc         eax
 0041D91B    cmp         esi,eax
>0041D91D    jge         0041DA06
 0041D923    mov         eax,dword ptr [ebp-8]
 0041D926    add         eax,dword ptr [ebp-0C]
 0041D929    cmp         ebx,eax
>0041D92B    jge         0041DA06
 0041D931    lea         eax,[ebp-2C]
 0041D934    push        eax
 0041D935    mov         ecx,dword ptr [ebp-8]
 0041D938    add         ecx,dword ptr [ebp-0C]
 0041D93B    sub         ecx,ebx
 0041D93D    mov         edx,ebx
 0041D93F    mov         eax,dword ptr [ebp-4]
 0041D942    call        @LStrCopy
 0041D947    mov         eax,dword ptr [ebp-2C]
 0041D94A    lea         edx,[ebp-14]
 0041D94D    call        0040BC40
 0041D952    mov         ebx,dword ptr ds:[55B13C];^gvar_0053D100
 0041D958    mov         ebx,dword ptr [ebx]
 0041D95A    mov         edx,dword ptr [ebp-4]
 0041D95D    dec         edx
 0041D95E    add         edx,dword ptr [ebp-8]
 0041D961    add         edx,5
 0041D964    mov         ecx,8
 0041D969    mov         al,1
 0041D96B    call        ebx
 0041D96D    mov         ebx,eax
 0041D96F    lea         eax,[esi+esi*4]
 0041D972    mov         edx,dword ptr [ebp+0C]
 0041D975    add         ebx,dword ptr [edx+eax*4+4]
 0041D979    mov         edx,dword ptr [ebp+0C]
 0041D97C    cmp         byte ptr [edx+eax*4+10],0
>0041D981    je          0041D9E7
 0041D983    lea         eax,[ebp-28]
 0041D986    push        eax
 0041D987    mov         eax,dword ptr [ebp+10]
 0041D98A    mov         eax,dword ptr [eax-4]
 0041D98D    mov         ecx,dword ptr [eax+40]
 0041D990    add         ecx,ebx
 0041D992    mov         eax,dword ptr [ebp+10]
 0041D995    mov         eax,dword ptr [eax-4]
 0041D998    mov         dl,1
 0041D99A    call        00421010
 0041D99F    cmp         byte ptr [ebp-28],0
>0041D9A3    je          0041D9E7
 0041D9A5    mov         edi,dword ptr ds:[55B6D0];^gvar_0053D158
 0041D9AB    mov         edi,dword ptr [edi]
 0041D9AD    mov         edx,dword ptr [ebp-14]
 0041D9B0    mov         eax,dword ptr [ebp-1C]
 0041D9B3    call        edi
 0041D9B5    test        al,al
>0041D9B7    je          0041D9E7
 0041D9B9    mov         eax,dword ptr [ebp-14]
 0041D9BC    call        @WStrLen
 0041D9C1    mov         edi,eax
 0041D9C3    mov         eax,dword ptr [ebp-1C]
 0041D9C6    call        @WStrLen
 0041D9CB    cmp         edi,eax
>0041D9CD    jle         0041D9E7
 0041D9CF    mov         eax,dword ptr [ebp-1C]
 0041D9D2    call        @WStrLen
 0041D9D7    mov         ecx,eax
 0041D9D9    inc         ecx
 0041D9DA    lea         eax,[ebp-14]
 0041D9DD    mov         edx,1
 0041D9E2    call        @WStrDelete
 0041D9E7    push        ebx
 0041D9E8    push        0
 0041D9EA    lea         eax,[esi+esi*4]
 0041D9ED    mov         edx,dword ptr [ebp+0C]
 0041D9F0    mov         dl,byte ptr [edx+eax*4+10]
 0041D9F4    mov         eax,dword ptr [ebp+10]
 0041D9F7    mov         eax,dword ptr [eax-4]
 0041D9FA    mov         ecx,dword ptr [ebp-14]
 0041D9FD    call        0041CC28
 0041DA02    mov         byte ptr [ebp-0D],1
 0041DA06    xor         eax,eax
 0041DA08    pop         edx
 0041DA09    pop         ecx
 0041DA0A    pop         ecx
 0041DA0B    mov         dword ptr fs:[eax],edx
>0041DA0E    jmp         0041DA1E
>0041DA10    jmp         @HandleAnyException
 0041DA15    mov         byte ptr [ebp-0D],0
 0041DA19    call        @DoneExcept
 0041DA1E    xor         eax,eax
 0041DA20    pop         edx
 0041DA21    pop         ecx
 0041DA22    pop         ecx
 0041DA23    mov         dword ptr fs:[eax],edx
 0041DA26    push        41DA51
 0041DA2B    lea         eax,[ebp-2C]
 0041DA2E    call        @LStrClr
 0041DA33    lea         eax,[ebp-28]
 0041DA36    mov         edx,dword ptr ds:[41C61C];TMfSegment
 0041DA3C    call        @FinalizeRecord
 0041DA41    lea         eax,[ebp-14]
 0041DA44    call        @WStrClr
 0041DA49    ret
>0041DA4A    jmp         @HandleFinally
>0041DA4F    jmp         0041DA2B
 0041DA51    mov         al,byte ptr [ebp-0D]
 0041DA54    pop         edi
 0041DA55    pop         esi
 0041DA56    pop         ebx
 0041DA57    mov         esp,ebp
 0041DA59    pop         ebp
 0041DA5A    ret         8
end;*}

//0041DA60
{*function sub_0041DA60(?:TMiniStream; ?:?):?;
begin
 0041DA60    push        ebp
 0041DA61    mov         ebp,esp
 0041DA63    add         esp,0FFFFFFEC
 0041DA66    push        ebx
 0041DA67    push        esi
 0041DA68    push        edi
 0041DA69    xor         edx,edx
 0041DA6B    mov         dword ptr [ebp-14],edx
 0041DA6E    mov         dword ptr [ebp-10],edx
 0041DA71    mov         dword ptr [ebp-4],eax
 0041DA74    xor         eax,eax
 0041DA76    push        ebp
 0041DA77    push        41DBAC
 0041DA7C    push        dword ptr fs:[eax]
 0041DA7F    mov         dword ptr fs:[eax],esp
 0041DA82    mov         eax,dword ptr [ebp+8]
 0041DA85    mov         eax,dword ptr [eax-4]
 0041DA88    lea         edx,[eax+18]
 0041DA8B    mov         ecx,4
 0041DA90    mov         eax,dword ptr [ebp-4]
 0041DA93    call        0041C850
 0041DA98    mov         eax,dword ptr [ebp+8]
 0041DA9B    mov         eax,dword ptr [eax-4]
 0041DA9E    mov         ebx,dword ptr [eax+18]
 0041DAA1    mov         eax,dword ptr [ebp+8]
 0041DAA4    mov         eax,dword ptr [eax-4]
 0041DAA7    mov         dword ptr [eax+1C],ebx
 0041DAAA    mov         eax,dword ptr [ebp+8]
 0041DAAD    push        ebx
 0041DAAE    mov         eax,dword ptr [ebp+8]
 0041DAB1    mov         eax,dword ptr [eax-4]
 0041DAB4    add         eax,14
 0041DAB7    mov         ecx,1
 0041DABC    mov         edx,dword ptr ds:[41C680];_DynArr_14_3
 0041DAC2    call        @DynArraySetLength
 0041DAC7    add         esp,4
 0041DACA    mov         byte ptr [ebp-5],1
 0041DACE    mov         eax,dword ptr [ebp+8]
 0041DAD1    mov         eax,dword ptr [eax-4]
 0041DAD4    mov         edi,dword ptr [eax+18]
 0041DAD7    dec         edi
 0041DAD8    test        edi,edi
>0041DADA    jl          0041DB8F
 0041DAE0    inc         edi
 0041DAE1    xor         esi,esi
 0041DAE3    lea         eax,[esi+esi*2]
 0041DAE6    mov         edx,dword ptr [ebp+8]
 0041DAE9    mov         edx,dword ptr [edx-4]
 0041DAEC    mov         edx,dword ptr [edx+14]
 0041DAEF    lea         ebx,[edx+eax*4]
 0041DAF2    mov         byte ptr [ebx],1
 0041DAF5    mov         byte ptr [ebx+1],1
 0041DAF9    mov         eax,dword ptr [ebp+8]
 0041DAFC    mov         eax,dword ptr [eax-4]
 0041DAFF    cmp         dword ptr [eax+50],0
>0041DB03    je          0041DB2B
 0041DB05    lea         eax,[ebp-10]
 0041DB08    push        eax
 0041DB09    mov         cx,30
 0041DB0D    mov         edx,1
 0041DB12    mov         eax,esi
 0041DB14    call        0040AB1C
 0041DB19    mov         ecx,dword ptr [ebp-10]
 0041DB1C    lea         eax,[ebx+4]
 0041DB1F    mov         edx,41DBC0;'public%'
 0041DB24    call        @WStrCat3
>0041DB29    jmp         0041DB41
 0041DB2B    lea         edx,[ebp-14]
 0041DB2E    mov         eax,dword ptr [ebp-4]
 0041DB31    call        0041D40C
 0041DB36    mov         edx,dword ptr [ebp-14]
 0041DB39    lea         eax,[ebx+4]
 0041DB3C    call        @WStrAsg
 0041DB41    cmp         byte ptr [ebp-5],0
>0041DB45    je          0041DB6C
 0041DB47    mov         byte ptr [ebp-5],0
 0041DB4B    lea         edx,[ebp-0C]
 0041DB4E    mov         ecx,4
 0041DB53    mov         eax,dword ptr [ebp-4]
 0041DB56    call        0041C850
 0041DB5B    mov         eax,dword ptr [ebp+8]
 0041DB5E    mov         eax,dword ptr [eax-4]
 0041DB61    mov         eax,dword ptr [eax+40]
 0041DB64    add         eax,dword ptr [ebp-0C]
 0041DB67    mov         dword ptr [ebx+8],eax
>0041DB6A    jmp         0041DB87
 0041DB6C    mov         eax,dword ptr [ebp-4]
 0041DB6F    call        0041D3CC
 0041DB74    lea         edx,[esi+esi*2]
 0041DB77    mov         ecx,dword ptr [ebp+8]
 0041DB7A    mov         ecx,dword ptr [ecx-4]
 0041DB7D    mov         ecx,dword ptr [ecx+14]
 0041DB80    add         eax,dword ptr [ecx+edx*4-4]
 0041DB84    mov         dword ptr [ebx+8],eax
 0041DB87    inc         esi
 0041DB88    dec         edi
>0041DB89    jne         0041DAE3
 0041DB8F    mov         bl,1
 0041DB91    xor         eax,eax
 0041DB93    pop         edx
 0041DB94    pop         ecx
 0041DB95    pop         ecx
 0041DB96    mov         dword ptr fs:[eax],edx
 0041DB99    push        41DBB3
 0041DB9E    lea         eax,[ebp-14]
 0041DBA1    mov         edx,2
 0041DBA6    call        @WStrArrayClr
 0041DBAB    ret
>0041DBAC    jmp         @HandleFinally
>0041DBB1    jmp         0041DB9E
 0041DBB3    mov         eax,ebx
 0041DBB5    pop         edi
 0041DBB6    pop         esi
 0041DBB7    pop         ebx
 0041DBB8    mov         esp,ebp
 0041DBBA    pop         ebp
 0041DBBB    ret
end;*}

//0041DBD0
{*function sub_0041DBD0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0041DBD0    push        ebp
 0041DBD1    mov         ebp,esp
 0041DBD3    add         esp,0FFFFFFEC
 0041DBD6    push        ebx
 0041DBD7    push        esi
 0041DBD8    push        edi
 0041DBD9    mov         dword ptr [ebp-8],ecx
 0041DBDC    mov         ebx,edx
 0041DBDE    mov         dword ptr [ebp-4],eax
 0041DBE1    mov         byte ptr [ebp-9],0
 0041DBE5    xor         ecx,ecx
 0041DBE7    push        ebp
 0041DBE8    push        41DD2E
 0041DBED    push        dword ptr fs:[ecx]
 0041DBF0    mov         dword ptr fs:[ecx],esp
 0041DBF3    mov         eax,dword ptr [ebp-8]
 0041DBF6    add         eax,ebx
 0041DBF8    dec         eax
 0041DBF9    mov         dword ptr [ebp-8],eax
 0041DBFC    cmp         ebx,dword ptr [ebp-8]
>0041DBFF    jge         0041DD24
 0041DC05    mov         dl,1
 0041DC07    mov         eax,dword ptr [ebp-8]
 0041DC0A    sub         eax,ebx
>0041DC0C    jl          0041DC21
 0041DC0E    inc         eax
 0041DC0F    mov         ecx,dword ptr [ebp-4]
 0041DC12    cmp         byte ptr [ecx+ebx-1],20
>0041DC17    je          0041DC1D
 0041DC19    xor         edx,edx
>0041DC1B    jmp         0041DC21
 0041DC1D    inc         ebx
 0041DC1E    dec         eax
>0041DC1F    jne         0041DC0F
 0041DC21    test        dl,dl
>0041DC23    je          0041DC32
 0041DC25    xor         eax,eax
 0041DC27    pop         edx
 0041DC28    pop         ecx
 0041DC29    pop         ecx
 0041DC2A    mov         dword ptr fs:[eax],edx
>0041DC2D    jmp         0041DD3C
 0041DC32    mov         eax,dword ptr [ebp-8]
 0041DC35    add         eax,ebx
 0041DC37    dec         eax
 0041DC38    push        eax
 0041DC39    mov         esi,dword ptr ds:[55B658];^gvar_0053D0E8
 0041DC3F    mov         esi,dword ptr [esi]
 0041DC41    mov         ecx,ebx
 0041DC43    mov         edx,dword ptr [ebp-4]
 0041DC46    mov         eax,41DD50;':'
 0041DC4B    call        esi
 0041DC4D    mov         esi,eax
 0041DC4F    test        esi,esi
>0041DC51    je          0041DC65
 0041DC53    lea         eax,[esi+8]
 0041DC56    cmp         eax,dword ptr [ebp-8]
>0041DC59    jg          0041DC65
 0041DC5B    mov         eax,dword ptr [ebp-4]
 0041DC5E    cmp         byte ptr [eax+esi-6],20
>0041DC63    je          0041DC76
 0041DC65    mov         byte ptr [ebp-9],0
 0041DC69    xor         eax,eax
 0041DC6B    pop         edx
 0041DC6C    pop         ecx
 0041DC6D    pop         ecx
 0041DC6E    mov         dword ptr fs:[eax],edx
>0041DC71    jmp         0041DD3C
 0041DC76    mov         edi,dword ptr ds:[55B13C];^gvar_0053D100
 0041DC7C    mov         edi,dword ptr [edi]
 0041DC7E    mov         edx,dword ptr [ebp-4]
 0041DC81    dec         edx
 0041DC82    add         edx,esi
 0041DC84    sub         edx,4
 0041DC87    mov         ecx,4
 0041DC8C    mov         al,1
 0041DC8E    call        edi
 0041DC90    dec         eax
 0041DC91    mov         dword ptr [ebp-10],eax
 0041DC94    cmp         dword ptr [ebp-10],0
>0041DC98    jl          0041DD18
 0041DC9A    mov         eax,dword ptr [ebp+0C]
 0041DC9D    inc         eax
 0041DC9E    cmp         eax,dword ptr [ebp-10]
>0041DCA1    jle         0041DD18
 0041DCA3    mov         eax,dword ptr [ebp-10]
 0041DCA6    lea         eax,[eax+eax*4]
 0041DCA9    mov         edx,dword ptr [ebp+10]
 0041DCAC    cmp         byte ptr [edx+eax*4+10],0
>0041DCB1    je          0041DD18
 0041DCB3    mov         edi,dword ptr ds:[55B13C];^gvar_0053D100
 0041DCB9    mov         edi,dword ptr [edi]
 0041DCBB    mov         edx,dword ptr [ebp-4]
 0041DCBE    dec         edx
 0041DCBF    add         edx,esi
 0041DCC1    inc         edx
 0041DCC2    mov         ecx,8
 0041DCC7    mov         al,1
 0041DCC9    call        edi
 0041DCCB    mov         edx,dword ptr [ebp+14]
 0041DCCE    mov         edx,dword ptr [edx-4]
 0041DCD1    add         eax,dword ptr [edx+40]
 0041DCD4    mov         dword ptr [ebp-14],eax
 0041DCD7    mov         eax,dword ptr [ebp-10]
 0041DCDA    lea         eax,[eax+eax*4]
 0041DCDD    mov         edx,dword ptr [ebp+10]
 0041DCE0    mov         eax,dword ptr [edx+eax*4+4]
 0041DCE4    add         dword ptr [ebp-14],eax
 0041DCE7    mov         al,byte ptr [ebp+8]
 0041DCEA    push        eax
 0041DCEB    mov         edi,dword ptr ds:[55B13C];^gvar_0053D100
 0041DCF1    mov         edi,dword ptr [edi]
 0041DCF3    mov         ecx,esi
 0041DCF5    sub         ecx,5
 0041DCF8    sub         ecx,ebx
 0041DCFA    mov         edx,dword ptr [ebp-4]
 0041DCFD    dec         edx
 0041DCFE    add         edx,ebx
 0041DD00    xor         eax,eax
 0041DD02    call        edi
 0041DD04    mov         edx,eax
 0041DD06    mov         eax,dword ptr [ebp+14]
 0041DD09    mov         eax,dword ptr [eax-4]
 0041DD0C    mov         ecx,dword ptr [ebp-14]
 0041DD0F    call        0041D010
 0041DD14    mov         byte ptr [ebp-9],1
 0041DD18    lea         ebx,[esi+9]
 0041DD1B    cmp         ebx,dword ptr [ebp-8]
>0041DD1E    jl          0041DC05
 0041DD24    xor         eax,eax
 0041DD26    pop         edx
 0041DD27    pop         ecx
 0041DD28    pop         ecx
 0041DD29    mov         dword ptr fs:[eax],edx
>0041DD2C    jmp         0041DD3C
>0041DD2E    jmp         @HandleAnyException
 0041DD33    mov         byte ptr [ebp-9],0
 0041DD37    call        @DoneExcept
 0041DD3C    mov         al,byte ptr [ebp-9]
 0041DD3F    pop         edi
 0041DD40    pop         esi
 0041DD41    pop         ebx
 0041DD42    mov         esp,ebp
 0041DD44    pop         ebp
 0041DD45    ret         0C
end;*}

//0041DD54
{*function sub_0041DD54(?:TMiniStream; ?:?):?;
begin
 0041DD54    push        ebp
 0041DD55    mov         ebp,esp
 0041DD57    add         esp,0FFFFFFF8
 0041DD5A    push        ebx
 0041DD5B    push        esi
 0041DD5C    push        edi
 0041DD5D    mov         esi,eax
 0041DD5F    mov         edi,dword ptr [ebp+8]
 0041DD62    add         edi,0FFFFFFFC
 0041DD65    mov         eax,dword ptr [edi]
 0041DD67    lea         edx,[eax+24]
 0041DD6A    mov         ecx,4
 0041DD6F    mov         eax,esi
 0041DD71    call        0041C850
 0041DD76    mov         eax,dword ptr [edi]
 0041DD78    mov         ebx,dword ptr [eax+24]
 0041DD7B    mov         eax,dword ptr [edi]
 0041DD7D    mov         dword ptr [eax+28],ebx
 0041DD80    push        ebx
 0041DD81    mov         eax,dword ptr [edi]
 0041DD83    add         eax,20
 0041DD86    mov         ecx,1
 0041DD8B    mov         edx,dword ptr ds:[41C6A4];_DynArr_14_4
 0041DD91    call        @DynArraySetLength
 0041DD96    add         esp,4
 0041DD99    mov         eax,dword ptr [edi]
 0041DD9B    cmp         dword ptr [eax+24],0
>0041DD9F    jle         0041DE1A
 0041DDA1    mov         eax,dword ptr [edi]
 0041DDA3    mov         edx,dword ptr [eax+20]
 0041DDA6    mov         ecx,4
 0041DDAB    mov         eax,esi
 0041DDAD    call        0041C850
 0041DDB2    lea         edx,[ebp-4]
 0041DDB5    mov         ecx,4
 0041DDBA    mov         eax,esi
 0041DDBC    call        0041C850
 0041DDC1    mov         eax,dword ptr [edi]
 0041DDC3    mov         eax,dword ptr [eax+40]
 0041DDC6    add         eax,dword ptr [ebp-4]
 0041DDC9    mov         edx,dword ptr [edi]
 0041DDCB    mov         edx,dword ptr [edx+20]
 0041DDCE    mov         dword ptr [edx+4],eax
 0041DDD1    mov         eax,dword ptr [edi]
 0041DDD3    mov         eax,dword ptr [eax+24]
 0041DDD6    dec         eax
 0041DDD7    test        eax,eax
>0041DDD9    jle         0041DE1A
 0041DDDB    mov         dword ptr [ebp-8],eax
 0041DDDE    mov         ebx,1
 0041DDE3    mov         eax,esi
 0041DDE5    call        0041D3CC
 0041DDEA    mov         edx,dword ptr [edi]
 0041DDEC    mov         edx,dword ptr [edx+20]
 0041DDEF    add         eax,dword ptr [edx+ebx*8-8]
 0041DDF3    mov         edx,dword ptr [edi]
 0041DDF5    mov         edx,dword ptr [edx+20]
 0041DDF8    mov         dword ptr [edx+ebx*8],eax
 0041DDFB    mov         eax,esi
 0041DDFD    call        0041D3CC
 0041DE02    mov         edx,dword ptr [edi]
 0041DE04    mov         edx,dword ptr [edx+20]
 0041DE07    add         eax,dword ptr [edx+ebx*8-4]
 0041DE0B    mov         edx,dword ptr [edi]
 0041DE0D    mov         edx,dword ptr [edx+20]
 0041DE10    mov         dword ptr [edx+ebx*8+4],eax
 0041DE14    inc         ebx
 0041DE15    dec         dword ptr [ebp-8]
>0041DE18    jne         0041DDE3
 0041DE1A    mov         al,1
 0041DE1C    pop         edi
 0041DE1D    pop         esi
 0041DE1E    pop         ebx
 0041DE1F    pop         ecx
 0041DE20    pop         ecx
 0041DE21    pop         ebp
 0041DE22    ret
end;*}

//0041DE24
{*function sub_0041DE24(?:?; ?:?):?;
begin
 0041DE24    push        ebp
 0041DE25    mov         ebp,esp
 0041DE27    mov         ecx,0C
 0041DE2C    push        0
 0041DE2E    push        0
 0041DE30    dec         ecx
>0041DE31    jne         0041DE2C
 0041DE33    push        ebx
 0041DE34    push        esi
 0041DE35    mov         dword ptr [ebp-4],eax
 0041DE38    mov         eax,dword ptr [ebp-4]
 0041DE3B    call        @LStrAddRef
 0041DE40    mov         ebx,53FDEC
 0041DE45    xor         eax,eax
 0041DE47    push        ebp
 0041DE48    push        41E23A
 0041DE4D    push        dword ptr fs:[eax]
 0041DE50    mov         dword ptr fs:[eax],esp
 0041DE53    mov         eax,dword ptr [ebp-4]
 0041DE56    call        @DynArrayLength
 0041DE5B    mov         esi,eax
 0041DE5D    lea         eax,[ebp-18]
 0041DE60    mov         edx,dword ptr [ebx]
 0041DE62    call        @LStrFromPChar
 0041DE67    mov         eax,dword ptr [ebp-18]
 0041DE6A    call        @DynArrayLength
 0041DE6F    add         eax,8
 0041DE72    cmp         esi,eax
>0041DE74    jle         0041DF91
 0041DE7A    lea         eax,[ebp-1C]
 0041DE7D    mov         edx,dword ptr [ebx]
 0041DE7F    call        @LStrFromPChar
 0041DE84    mov         eax,dword ptr [ebp-1C]
 0041DE87    call        @DynArrayLength
 0041DE8C    add         eax,dword ptr [ebp-4]
 0041DE8F    add         eax,4
 0041DE92    mov         eax,dword ptr [eax]
 0041DE94    add         eax,0FFFFFFFE
 0041DE97    sub         eax,2
>0041DE9A    jae         0041DF91
 0041DEA0    lea         eax,[ebp-20]
 0041DEA3    push        eax
 0041DEA4    lea         eax,[ebp-24]
 0041DEA7    mov         edx,dword ptr [ebx]
 0041DEA9    call        @LStrFromPChar
 0041DEAE    mov         eax,dword ptr [ebp-24]
 0041DEB1    call        @DynArrayLength
 0041DEB6    mov         ecx,eax
 0041DEB8    mov         edx,1
 0041DEBD    mov         eax,dword ptr [ebp-4]
 0041DEC0    call        @LStrCopy
 0041DEC5    mov         eax,dword ptr [ebp-20]
 0041DEC8    push        eax
 0041DEC9    lea         eax,[ebp-28]
 0041DECC    mov         edx,dword ptr [ebx]
 0041DECE    call        @LStrFromPChar
 0041DED3    mov         edx,dword ptr [ebp-28]
 0041DED6    pop         eax
 0041DED7    call        @LStrCmp
>0041DEDC    jne         0041DF91
 0041DEE2    mov         eax,dword ptr [ebp+8]
 0041DEE5    mov         eax,dword ptr [eax-4]
 0041DEE8    cmp         dword ptr [eax+50],0
>0041DEEC    je          0041DF95
 0041DEF2    lea         eax,[ebp-30]
 0041DEF5    push        eax
 0041DEF6    mov         eax,dword ptr [ebp-4]
 0041DEF9    call        @DynArrayLength
 0041DEFE    mov         cl,30
 0041DF00    mov         edx,8
 0041DF05    call        0040AA68
 0041DF0A    push        dword ptr [ebp-30]
 0041DF0D    push        41E254;', '
 0041DF12    lea         eax,[ebp-34]
 0041DF15    push        eax
 0041DF16    lea         eax,[ebp-38]
 0041DF19    mov         edx,dword ptr [ebx]
 0041DF1B    call        @LStrFromPChar
 0041DF20    mov         eax,dword ptr [ebp-38]
 0041DF23    call        @DynArrayLength
 0041DF28    add         eax,dword ptr [ebp-4]
 0041DF2B    add         eax,8
 0041DF2E    mov         eax,dword ptr [eax]
 0041DF30    mov         cl,30
 0041DF32    mov         edx,8
 0041DF37    call        0040AA68
 0041DF3C    push        dword ptr [ebp-34]
 0041DF3F    push        41E254;', '
 0041DF44    lea         eax,[ebp-3C]
 0041DF47    push        eax
 0041DF48    lea         eax,[ebp-40]
 0041DF4B    mov         edx,dword ptr [ebx]
 0041DF4D    call        @LStrFromPChar
 0041DF52    mov         eax,dword ptr [ebp-40]
 0041DF55    call        @DynArrayLength
 0041DF5A    add         eax,dword ptr [ebp-4]
 0041DF5D    add         eax,0C
 0041DF60    mov         eax,dword ptr [eax]
 0041DF62    mov         cl,30
 0041DF64    mov         edx,8
 0041DF69    call        0040AA68
 0041DF6E    push        dword ptr [ebp-3C]
 0041DF71    lea         eax,[ebp-2C]
 0041DF74    mov         edx,5
 0041DF79    call        @LStrCatN
 0041DF7E    mov         edx,dword ptr [ebp-2C]
 0041DF81    mov         eax,dword ptr [ebp+8]
 0041DF84    mov         eax,dword ptr [eax-4]
 0041DF87    mov         eax,dword ptr [eax+50]
 0041DF8A    call        @LStrCmp
>0041DF8F    je          0041DF95
 0041DF91    xor         eax,eax
>0041DF93    jmp         0041DF97
 0041DF95    mov         al,1
 0041DF97    mov         byte ptr [ebp-5],al
 0041DF9A    cmp         byte ptr [ebp-5],0
>0041DF9E    je          0041E20F
 0041DFA4    lea         eax,[ebp-44]
 0041DFA7    mov         edx,dword ptr [ebx]
 0041DFA9    call        @LStrFromPChar
 0041DFAE    mov         eax,dword ptr [ebp-44]
 0041DFB1    call        @DynArrayLength
 0041DFB6    add         eax,dword ptr [ebp-4]
 0041DFB9    add         eax,10
 0041DFBC    mov         eax,dword ptr [eax]
 0041DFBE    and         eax,1
 0041DFC1    dec         eax
>0041DFC2    jne         0041E032
 0041DFC4    lea         eax,[ebp-10]
 0041DFC7    push        eax
 0041DFC8    mov         eax,dword ptr [ebp+8]
 0041DFCB    mov         eax,dword ptr [eax-4]
 0041DFCE    mov         eax,dword ptr [eax+38]
 0041DFD1    mov         ecx,41E25C
 0041DFD6    mov         edx,0A
 0041DFDB    call        0041012C
 0041DFE0    push        7FFFFFFF
 0041DFE5    mov         esi,dword ptr ds:[55B658];^gvar_0053D0E8
 0041DFEB    mov         esi,dword ptr [esi]
 0041DFED    mov         ecx,1
 0041DFF2    mov         edx,dword ptr [ebp-10]
 0041DFF5    mov         eax,41E27C;#12+MinDebugInfo'+#12+'+#0+#0+#0
 0041DFFA    call        esi
 0041DFFC    mov         esi,eax
 0041DFFE    test        esi,esi
>0041E000    jle         0041E040
 0041E002    mov         eax,dword ptr [ebp+8]
 0041E005    mov         eax,dword ptr [eax-4]
 0041E008    add         eax,50
 0041E00B    push        eax
 0041E00C    lea         edx,[esi+12]
 0041E00F    mov         ecx,1F
 0041E014    mov         eax,dword ptr [ebp-10]
 0041E017    call        @LStrCopy
 0041E01C    mov         eax,dword ptr [ebp+8]
 0041E01F    push        eax
 0041E020    mov         al,1
 0041E022    call        00420940
 0041E027    pop         ecx
 0041E028    test        al,al
>0041E02A    jne         0041E20F
>0041E030    jmp         0041E040
 0041E032    mov         eax,dword ptr [ebp+8]
 0041E035    mov         eax,dword ptr [eax-4]
 0041E038    add         eax,50
 0041E03B    call        @LStrClr
 0041E040    lea         eax,[ebp-48]
 0041E043    mov         edx,dword ptr [ebx]
 0041E045    call        @LStrFromPChar
 0041E04A    mov         eax,dword ptr [ebp-48]
 0041E04D    call        @DynArrayLength
 0041E052    add         eax,dword ptr [ebp-4]
 0041E055    add         eax,4
 0041E058    cmp         dword ptr [eax],3
>0041E05B    jne         0041E09C
 0041E05D    lea         eax,[ebp-4]
 0041E060    push        eax
 0041E061    lea         eax,[ebp-4C]
 0041E064    mov         edx,dword ptr [ebx]
 0041E066    call        @LStrFromPChar
 0041E06B    mov         eax,dword ptr [ebp-4C]
 0041E06E    call        @DynArrayLength
 0041E073    add         eax,dword ptr [ebp-4]
 0041E076    mov         eax,dword ptr [eax]
 0041E078    push        eax
 0041E079    lea         eax,[ebp-50]
 0041E07C    mov         edx,dword ptr [ebx]
 0041E07E    call        @LStrFromPChar
 0041E083    mov         eax,dword ptr [ebp-50]
 0041E086    call        @DynArrayLength
 0041E08B    mov         edx,eax
 0041E08D    inc         edx
 0041E08E    add         edx,14
 0041E091    mov         eax,dword ptr [ebp-4]
 0041E094    pop         ecx
 0041E095    call        @LStrCopy
>0041E09A    jmp         0041E0D9
 0041E09C    lea         eax,[ebp-4]
 0041E09F    push        eax
 0041E0A0    lea         eax,[ebp-54]
 0041E0A3    mov         edx,dword ptr [ebx]
 0041E0A5    call        @LStrFromPChar
 0041E0AA    mov         eax,dword ptr [ebp-54]
 0041E0AD    call        @DynArrayLength
 0041E0B2    add         eax,dword ptr [ebp-4]
 0041E0B5    mov         eax,dword ptr [eax]
 0041E0B7    push        eax
 0041E0B8    lea         eax,[ebp-58]
 0041E0BB    mov         edx,dword ptr [ebx]
 0041E0BD    call        @LStrFromPChar
 0041E0C2    mov         eax,dword ptr [ebp-58]
 0041E0C5    call        @DynArrayLength
 0041E0CA    mov         edx,eax
 0041E0CC    inc         edx
 0041E0CD    add         edx,8
 0041E0D0    mov         eax,dword ptr [ebp-4]
 0041E0D3    pop         ecx
 0041E0D4    call        @LStrCopy
 0041E0D9    mov         eax,dword ptr [ebp-4]
 0041E0DC    call        @DynArrayLength
 0041E0E1    lea         edx,[ebp-5C]
 0041E0E4    call        0041C888
 0041E0E9    mov         edx,dword ptr [ebp-5C]
 0041E0EC    lea         eax,[ebp-4]
 0041E0EF    call        0041C310
 0041E0F4    lea         edx,[ebp-60]
 0041E0F7    mov         eax,dword ptr [ebp-4]
 0041E0FA    call        0041B460
 0041E0FF    mov         edx,dword ptr [ebp-60]
 0041E102    lea         eax,[ebp-4]
 0041E105    call        @LStrLAsg
 0041E10A    cmp         dword ptr [ebp-4],0
 0041E10E    setne       bl
 0041E111    mov         eax,dword ptr [ebp+8]
 0041E114    mov         eax,dword ptr [eax-4]
 0041E117    mov         byte ptr [eax+3C],bl
 0041E11A    mov         eax,dword ptr [ebp+8]
 0041E11D    test        bl,bl
>0041E11F    je          0041E20F
 0041E125    mov         dl,1
 0041E127    mov         eax,[0041C768];TMiniStream
 0041E12C    call        TObject.Create;TMiniStream.Create
 0041E131    mov         dword ptr [ebp-0C],eax
 0041E134    xor         eax,eax
 0041E136    push        ebp
 0041E137    push        41E208
 0041E13C    push        dword ptr fs:[eax]
 0041E13F    mov         dword ptr fs:[eax],esp
 0041E142    mov         eax,dword ptr [ebp-4]
 0041E145    call        @DynArrayLength
 0041E14A    mov         edx,eax
 0041E14C    inc         edx
 0041E14D    mov         eax,dword ptr [ebp-0C]
 0041E150    call        0041C7F4
 0041E155    mov         eax,dword ptr [ebp-4]
 0041E158    call        @DynArrayLength
 0041E15D    mov         ecx,eax
 0041E15F    inc         ecx
 0041E160    mov         eax,dword ptr [ebp-0C]
 0041E163    mov         edx,dword ptr [eax+4];TMiniStream.?f4:dword
 0041E166    mov         eax,dword ptr [ebp-4]
 0041E169    call        Move
 0041E16E    mov         eax,dword ptr [ebp+8]
 0041E171    push        eax
 0041E172    mov         eax,dword ptr [ebp-0C]
 0041E175    call        0041D6C0
 0041E17A    pop         ecx
 0041E17B    test        al,al
>0041E17D    je          0041E1A1
 0041E17F    mov         eax,dword ptr [ebp+8]
 0041E182    push        eax
 0041E183    mov         eax,dword ptr [ebp-0C]
 0041E186    call        0041DA60
 0041E18B    pop         ecx
 0041E18C    test        al,al
>0041E18E    je          0041E1A1
 0041E190    mov         eax,dword ptr [ebp+8]
 0041E193    push        eax
 0041E194    mov         eax,dword ptr [ebp-0C]
 0041E197    call        0041DD54
 0041E19C    pop         ecx
 0041E19D    test        al,al
>0041E19F    jne         0041E1A5
 0041E1A1    xor         eax,eax
>0041E1A3    jmp         0041E1A7
 0041E1A5    mov         al,1
 0041E1A7    mov         edx,dword ptr [ebp+8]
 0041E1AA    mov         edx,dword ptr [edx-4]
 0041E1AD    mov         byte ptr [edx+3C],al
 0041E1B0    mov         eax,dword ptr [ebp+8]
 0041E1B3    mov         eax,dword ptr [eax-4]
 0041E1B6    cmp         byte ptr [eax+3C],0
>0041E1BA    je          0041E1F2
 0041E1BC    mov         eax,dword ptr [ebp-0C]
 0041E1BF    mov         eax,dword ptr [eax+8];TMiniStream.?f8:dword
 0041E1C2    mov         edx,dword ptr [ebp-0C]
 0041E1C5    sub         eax,dword ptr [edx+0C]
 0041E1C8    cmp         eax,4
>0041E1CB    jne         0041E1F2
 0041E1CD    lea         edx,[ebp-14]
 0041E1D0    mov         ecx,4
 0041E1D5    mov         eax,dword ptr [ebp-0C]
 0041E1D8    call        0041C850
 0041E1DD    mov         eax,dword ptr [ebp+8]
 0041E1E0    mov         eax,dword ptr [eax-4]
 0041E1E3    mov         eax,dword ptr [eax+40]
 0041E1E6    add         eax,dword ptr [ebp-14]
 0041E1E9    mov         edx,dword ptr [ebp+8]
 0041E1EC    mov         edx,dword ptr [edx-4]
 0041E1EF    mov         dword ptr [edx+2C],eax
 0041E1F2    xor         eax,eax
 0041E1F4    pop         edx
 0041E1F5    pop         ecx
 0041E1F6    pop         ecx
 0041E1F7    mov         dword ptr fs:[eax],edx
 0041E1FA    push        41E20F
 0041E1FF    mov         eax,dword ptr [ebp-0C]
 0041E202    call        TObject.Free
 0041E207    ret
>0041E208    jmp         @HandleFinally
>0041E20D    jmp         0041E1FF
 0041E20F    xor         eax,eax
 0041E211    pop         edx
 0041E212    pop         ecx
 0041E213    pop         ecx
 0041E214    mov         dword ptr fs:[eax],edx
 0041E217    push        41E241
 0041E21C    lea         eax,[ebp-60]
 0041E21F    mov         edx,13
 0041E224    call        @LStrArrayClr
 0041E229    lea         eax,[ebp-10]
 0041E22C    call        @LStrClr
 0041E231    lea         eax,[ebp-4]
 0041E234    call        @LStrClr
 0041E239    ret
>0041E23A    jmp         @HandleFinally
>0041E23F    jmp         0041E21C
 0041E241    mov         al,byte ptr [ebp-5]
 0041E244    pop         esi
 0041E245    pop         ebx
 0041E246    mov         esp,ebp
 0041E248    pop         ebp
 0041E249    ret
end;*}

//0041E290
{*function sub_0041E290(?:?):?;
begin
 0041E290    push        ebp
 0041E291    mov         ebp,esp
 0041E293    push        0
 0041E295    push        ebx
 0041E296    xor         eax,eax
 0041E298    push        ebp
 0041E299    push        41E2F3
 0041E29E    push        dword ptr fs:[eax]
 0041E2A1    mov         dword ptr fs:[eax],esp
 0041E2A4    lea         eax,[ebp-4]
 0041E2A7    push        eax
 0041E2A8    mov         edx,41E300
 0041E2AD    mov         eax,dword ptr [ebp+8]
 0041E2B0    mov         eax,dword ptr [eax-4]
 0041E2B3    mov         eax,dword ptr [eax+38]
 0041E2B6    mov         ecx,41E30C
 0041E2BB    call        0041012C
 0041E2C0    cmp         dword ptr [ebp-4],0
>0041E2C4    je          0041E2D7
 0041E2C6    mov         eax,dword ptr [ebp+8]
 0041E2C9    push        eax
 0041E2CA    mov         eax,dword ptr [ebp-4]
 0041E2CD    call        0041DE24
 0041E2D2    pop         ecx
 0041E2D3    test        al,al
>0041E2D5    jne         0041E2DB
 0041E2D7    xor         ebx,ebx
>0041E2D9    jmp         0041E2DD
 0041E2DB    mov         bl,1
 0041E2DD    xor         eax,eax
 0041E2DF    pop         edx
 0041E2E0    pop         ecx
 0041E2E1    pop         ecx
 0041E2E2    mov         dword ptr fs:[eax],edx
 0041E2E5    push        41E2FA
 0041E2EA    lea         eax,[ebp-4]
 0041E2ED    call        @LStrClr
 0041E2F2    ret
>0041E2F3    jmp         @HandleFinally
>0041E2F8    jmp         0041E2EA
 0041E2FA    mov         eax,ebx
 0041E2FC    pop         ebx
 0041E2FD    pop         ecx
 0041E2FE    pop         ebp
 0041E2FF    ret
end;*}

//0041E31C
{*procedure sub_0041E31C(?:?; ?:?; ?:?);
begin
 0041E31C    push        ebp
 0041E31D    mov         ebp,esp
 0041E31F    add         esp,0FFFFFFF0
 0041E322    push        ebx
 0041E323    push        esi
 0041E324    push        edi
 0041E325    mov         dword ptr [ebp-8],edx
 0041E328    mov         dword ptr [ebp-4],eax
 0041E32B    mov         ebx,dword ptr [ebp-4]
 0041E32E    mov         edx,dword ptr [ebp-8]
 0041E331    mov         eax,dword ptr [ebp-4]
 0041E334    add         eax,dword ptr [ebp-8]
 0041E337    shr         eax,1
>0041E339    jmp         0041E33C
 0041E33B    inc         ebx
 0041E33C    mov         ecx,dword ptr [ebp+8]
 0041E33F    mov         ecx,dword ptr [ecx-4]
 0041E342    mov         ecx,dword ptr [ecx+20]
 0041E345    mov         ecx,dword ptr [ecx+eax*8+4]
 0041E349    mov         esi,dword ptr [ebp+8]
 0041E34C    mov         esi,dword ptr [esi-4]
 0041E34F    mov         esi,dword ptr [esi+20]
 0041E352    cmp         ecx,dword ptr [esi+ebx*8+4]
>0041E356    ja          0041E33B
>0041E358    jmp         0041E35B
 0041E35A    dec         edx
 0041E35B    mov         ecx,dword ptr [ebp+8]
 0041E35E    mov         ecx,dword ptr [ecx-4]
 0041E361    mov         ecx,dword ptr [ecx+20]
 0041E364    mov         ecx,dword ptr [ecx+eax*8+4]
 0041E368    mov         esi,dword ptr [ebp+8]
 0041E36B    mov         esi,dword ptr [esi-4]
 0041E36E    mov         esi,dword ptr [esi+20]
 0041E371    cmp         ecx,dword ptr [esi+edx*8+4]
>0041E375    jb          0041E35A
 0041E377    cmp         edx,ebx
>0041E379    jl          0041E3D7
 0041E37B    mov         ecx,dword ptr [ebp+8]
 0041E37E    mov         ecx,dword ptr [ecx-4]
 0041E381    mov         ecx,dword ptr [ecx+20]
 0041E384    mov         esi,dword ptr [ecx+ebx*8]
 0041E387    mov         dword ptr [ebp-10],esi
 0041E38A    mov         esi,dword ptr [ecx+ebx*8+4]
 0041E38E    mov         dword ptr [ebp-0C],esi
 0041E391    mov         ecx,dword ptr [ebp+8]
 0041E394    mov         ecx,dword ptr [ecx-4]
 0041E397    mov         ecx,dword ptr [ecx+20]
 0041E39A    mov         esi,dword ptr [ebp+8]
 0041E39D    mov         esi,dword ptr [esi-4]
 0041E3A0    mov         esi,dword ptr [esi+20]
 0041E3A3    mov         edi,dword ptr [esi+edx*8]
 0041E3A6    mov         dword ptr [ecx+ebx*8],edi
 0041E3A9    mov         edi,dword ptr [esi+edx*8+4]
 0041E3AD    mov         dword ptr [ecx+ebx*8+4],edi
 0041E3B1    mov         ecx,dword ptr [ebp+8]
 0041E3B4    mov         ecx,dword ptr [ecx-4]
 0041E3B7    mov         ecx,dword ptr [ecx+20]
 0041E3BA    mov         esi,dword ptr [ebp-10]
 0041E3BD    mov         dword ptr [ecx+edx*8],esi
 0041E3C0    mov         esi,dword ptr [ebp-0C]
 0041E3C3    mov         dword ptr [ecx+edx*8+4],esi
 0041E3C7    cmp         ebx,eax
>0041E3C9    jne         0041E3CF
 0041E3CB    mov         eax,edx
>0041E3CD    jmp         0041E3D5
 0041E3CF    cmp         edx,eax
>0041E3D1    jne         0041E3D5
 0041E3D3    mov         eax,ebx
 0041E3D5    inc         ebx
 0041E3D6    dec         edx
 0041E3D7    cmp         edx,ebx
>0041E3D9    jge         0041E33C
 0041E3DF    cmp         edx,dword ptr [ebp-4]
>0041E3E2    jle         0041E3F1
 0041E3E4    mov         eax,dword ptr [ebp+8]
 0041E3E7    push        eax
 0041E3E8    mov         eax,dword ptr [ebp-4]
 0041E3EB    call        0041E31C
 0041E3F0    pop         ecx
 0041E3F1    mov         dword ptr [ebp-4],ebx
 0041E3F4    cmp         ebx,dword ptr [ebp-8]
>0041E3F7    jl          0041E32B
 0041E3FD    pop         edi
 0041E3FE    pop         esi
 0041E3FF    pop         ebx
 0041E400    mov         esp,ebp
 0041E402    pop         ebp
 0041E403    ret
end;*}

//0041E404
{*procedure sub_0041E404(?:?; ?:?; ?:?);
begin
 0041E404    push        ebp
 0041E405    mov         ebp,esp
 0041E407    add         esp,0FFFFFFEC
 0041E40A    push        ebx
 0041E40B    push        esi
 0041E40C    push        edi
 0041E40D    mov         dword ptr [ebp-8],edx
 0041E410    mov         dword ptr [ebp-4],eax
 0041E413    lea         eax,[ebp-14]
 0041E416    mov         edx,dword ptr ds:[41C63C];TMfPublic
 0041E41C    call        @AddRefRecord
 0041E421    xor         eax,eax
 0041E423    push        ebp
 0041E424    push        41E542
 0041E429    push        dword ptr fs:[eax]
 0041E42C    mov         dword ptr fs:[eax],esp
 0041E42F    mov         ebx,dword ptr [ebp-4]
 0041E432    mov         esi,dword ptr [ebp-8]
 0041E435    mov         edi,dword ptr [ebp-4]
 0041E438    add         edi,dword ptr [ebp-8]
 0041E43B    shr         edi,1
>0041E43D    jmp         0041E440
 0041E43F    inc         ebx
 0041E440    lea         eax,[ebx+ebx*2]
 0041E443    mov         edx,dword ptr [ebp+8]
 0041E446    mov         edx,dword ptr [edx-4]
 0041E449    mov         edx,dword ptr [edx+14]
 0041E44C    mov         eax,dword ptr [edx+eax*4+8]
 0041E450    lea         edx,[edi+edi*2]
 0041E453    mov         ecx,dword ptr [ebp+8]
 0041E456    mov         ecx,dword ptr [ecx-4]
 0041E459    mov         ecx,dword ptr [ecx+14]
 0041E45C    cmp         eax,dword ptr [ecx+edx*4+8]
>0041E460    jb          0041E43F
>0041E462    jmp         0041E465
 0041E464    dec         esi
 0041E465    lea         eax,[esi+esi*2]
 0041E468    mov         edx,dword ptr [ebp+8]
 0041E46B    mov         edx,dword ptr [edx-4]
 0041E46E    mov         edx,dword ptr [edx+14]
 0041E471    mov         eax,dword ptr [edx+eax*4+8]
 0041E475    lea         edx,[edi+edi*2]
 0041E478    mov         ecx,dword ptr [ebp+8]
 0041E47B    mov         ecx,dword ptr [ecx-4]
 0041E47E    mov         ecx,dword ptr [ecx+14]
 0041E481    cmp         eax,dword ptr [ecx+edx*4+8]
>0041E485    ja          0041E464
 0041E487    cmp         esi,ebx
>0041E489    jl          0041E4FE
 0041E48B    lea         eax,[ebp-14]
 0041E48E    lea         edx,[ebx+ebx*2]
 0041E491    mov         ecx,dword ptr [ebp+8]
 0041E494    mov         ecx,dword ptr [ecx-4]
 0041E497    mov         ecx,dword ptr [ecx+14]
 0041E49A    lea         edx,[ecx+edx*4]
 0041E49D    mov         ecx,dword ptr ds:[41C63C];TMfPublic
 0041E4A3    call        @CopyRecord
 0041E4A8    lea         eax,[ebx+ebx*2]
 0041E4AB    mov         edx,dword ptr [ebp+8]
 0041E4AE    mov         edx,dword ptr [edx-4]
 0041E4B1    mov         edx,dword ptr [edx+14]
 0041E4B4    lea         eax,[edx+eax*4]
 0041E4B7    lea         edx,[esi+esi*2]
 0041E4BA    mov         ecx,dword ptr [ebp+8]
 0041E4BD    mov         ecx,dword ptr [ecx-4]
 0041E4C0    mov         ecx,dword ptr [ecx+14]
 0041E4C3    lea         edx,[ecx+edx*4]
 0041E4C6    mov         ecx,dword ptr ds:[41C63C];TMfPublic
 0041E4CC    call        @CopyRecord
 0041E4D1    lea         eax,[esi+esi*2]
 0041E4D4    mov         edx,dword ptr [ebp+8]
 0041E4D7    mov         edx,dword ptr [edx-4]
 0041E4DA    mov         edx,dword ptr [edx+14]
 0041E4DD    lea         eax,[edx+eax*4]
 0041E4E0    lea         edx,[ebp-14]
 0041E4E3    mov         ecx,dword ptr ds:[41C63C];TMfPublic
 0041E4E9    call        @CopyRecord
 0041E4EE    cmp         ebx,edi
>0041E4F0    jne         0041E4F6
 0041E4F2    mov         edi,esi
>0041E4F4    jmp         0041E4FC
 0041E4F6    cmp         esi,edi
>0041E4F8    jne         0041E4FC
 0041E4FA    mov         edi,ebx
 0041E4FC    inc         ebx
 0041E4FD    dec         esi
 0041E4FE    cmp         esi,ebx
>0041E500    jge         0041E440
 0041E506    cmp         esi,dword ptr [ebp-4]
>0041E509    jle         0041E51A
 0041E50B    mov         eax,dword ptr [ebp+8]
 0041E50E    push        eax
 0041E50F    mov         edx,esi
 0041E511    mov         eax,dword ptr [ebp-4]
 0041E514    call        0041E404
 0041E519    pop         ecx
 0041E51A    mov         dword ptr [ebp-4],ebx
 0041E51D    cmp         ebx,dword ptr [ebp-8]
>0041E520    jl          0041E42F
 0041E526    xor         eax,eax
 0041E528    pop         edx
 0041E529    pop         ecx
 0041E52A    pop         ecx
 0041E52B    mov         dword ptr fs:[eax],edx
 0041E52E    push        41E549
 0041E533    lea         eax,[ebp-14]
 0041E536    mov         edx,dword ptr ds:[41C63C];TMfPublic
 0041E53C    call        @FinalizeRecord
 0041E541    ret
>0041E542    jmp         @HandleFinally
>0041E547    jmp         0041E533
 0041E549    pop         edi
 0041E54A    pop         esi
 0041E54B    pop         ebx
 0041E54C    mov         esp,ebp
 0041E54E    pop         ebp
 0041E54F    ret
end;*}

//0041E550
{*procedure sub_0041E550(?:?; ?:?; ?:?);
begin
 0041E550    push        ebp
 0041E551    mov         ebp,esp
 0041E553    add         esp,0FFFFFFE0
 0041E556    push        ebx
 0041E557    push        esi
 0041E558    push        edi
 0041E559    mov         dword ptr [ebp-8],edx
 0041E55C    mov         dword ptr [ebp-4],eax
 0041E55F    lea         eax,[ebp-20]
 0041E562    mov         edx,dword ptr ds:[41C61C];TMfSegment
 0041E568    call        @AddRefRecord
 0041E56D    mov         esi,dword ptr [ebp+8]
 0041E570    add         esi,0FFFFFFFC
 0041E573    xor         eax,eax
 0041E575    push        ebp
 0041E576    push        41E7AF
 0041E57B    push        dword ptr fs:[eax]
 0041E57E    mov         dword ptr fs:[eax],esp
 0041E581    mov         edi,dword ptr [ebp-4]
 0041E584    mov         eax,dword ptr [ebp-8]
 0041E587    mov         dword ptr [ebp-0C],eax
 0041E58A    mov         ebx,dword ptr [ebp-4]
 0041E58D    add         ebx,dword ptr [ebp-8]
 0041E590    shr         ebx,1
>0041E592    jmp         0041E595
 0041E594    inc         edi
 0041E595    lea         eax,[edi+edi*4]
 0041E598    mov         edx,dword ptr [esi]
 0041E59A    mov         edx,dword ptr [edx+8]
 0041E59D    cmp         byte ptr [edx+eax*4+1],0
>0041E5A2    je          0041E5B3
 0041E5A4    lea         eax,[ebx+ebx*4]
 0041E5A7    mov         edx,dword ptr [esi]
 0041E5A9    mov         edx,dword ptr [edx+8]
 0041E5AC    cmp         byte ptr [edx+eax*4+1],0
>0041E5B1    je          0041E594
 0041E5B3    lea         eax,[edi+edi*4]
 0041E5B6    mov         edx,dword ptr [esi]
 0041E5B8    mov         edx,dword ptr [edx+8]
 0041E5BB    mov         al,byte ptr [edx+eax*4+1]
 0041E5BF    lea         edx,[ebx+ebx*4]
 0041E5C2    mov         ecx,dword ptr [esi]
 0041E5C4    mov         ecx,dword ptr [ecx+8]
 0041E5C7    cmp         al,byte ptr [ecx+edx*4+1]
>0041E5CB    jne         0041E5E7
 0041E5CD    lea         eax,[edi+edi*4]
 0041E5D0    mov         edx,dword ptr [esi]
 0041E5D2    mov         edx,dword ptr [edx+8]
 0041E5D5    mov         eax,dword ptr [edx+eax*4+4]
 0041E5D9    lea         edx,[ebx+ebx*4]
 0041E5DC    mov         ecx,dword ptr [esi]
 0041E5DE    mov         ecx,dword ptr [ecx+8]
 0041E5E1    cmp         eax,dword ptr [ecx+edx*4+4]
>0041E5E5    jb          0041E594
 0041E5E7    lea         eax,[edi+edi*4]
 0041E5EA    mov         edx,dword ptr [esi]
 0041E5EC    mov         edx,dword ptr [edx+8]
 0041E5EF    mov         al,byte ptr [edx+eax*4+1]
 0041E5F3    lea         edx,[ebx+ebx*4]
 0041E5F6    mov         ecx,dword ptr [esi]
 0041E5F8    mov         ecx,dword ptr [ecx+8]
 0041E5FB    cmp         al,byte ptr [ecx+edx*4+1]
>0041E5FF    jne         0041E63E
 0041E601    lea         eax,[edi+edi*4]
 0041E604    mov         edx,dword ptr [esi]
 0041E606    mov         edx,dword ptr [edx+8]
 0041E609    mov         eax,dword ptr [edx+eax*4+4]
 0041E60D    lea         edx,[ebx+ebx*4]
 0041E610    mov         ecx,dword ptr [esi]
 0041E612    mov         ecx,dword ptr [ecx+8]
 0041E615    cmp         eax,dword ptr [ecx+edx*4+4]
>0041E619    jne         0041E63E
 0041E61B    lea         eax,[edi+edi*4]
 0041E61E    mov         edx,dword ptr [esi]
 0041E620    mov         edx,dword ptr [edx+8]
 0041E623    mov         eax,dword ptr [edx+eax*4+8]
 0041E627    lea         edx,[ebx+ebx*4]
 0041E62A    mov         ecx,dword ptr [esi]
 0041E62C    mov         ecx,dword ptr [ecx+8]
 0041E62F    cmp         eax,dword ptr [ecx+edx*4+8]
>0041E633    ja          0041E594
>0041E639    jmp         0041E63E
 0041E63B    dec         dword ptr [ebp-0C]
 0041E63E    lea         eax,[ebx+ebx*4]
 0041E641    mov         edx,dword ptr [esi]
 0041E643    mov         edx,dword ptr [edx+8]
 0041E646    cmp         byte ptr [edx+eax*4+1],0
>0041E64B    je          0041E65F
 0041E64D    mov         eax,dword ptr [ebp-0C]
 0041E650    lea         eax,[eax+eax*4]
 0041E653    mov         edx,dword ptr [esi]
 0041E655    mov         edx,dword ptr [edx+8]
 0041E658    cmp         byte ptr [edx+eax*4+1],0
>0041E65D    je          0041E63B
 0041E65F    lea         eax,[ebx+ebx*4]
 0041E662    mov         edx,dword ptr [esi]
 0041E664    mov         edx,dword ptr [edx+8]
 0041E667    mov         al,byte ptr [edx+eax*4+1]
 0041E66B    mov         edx,dword ptr [ebp-0C]
 0041E66E    lea         edx,[edx+edx*4]
 0041E671    mov         ecx,dword ptr [esi]
 0041E673    mov         ecx,dword ptr [ecx+8]
 0041E676    cmp         al,byte ptr [ecx+edx*4+1]
>0041E67A    jne         0041E699
 0041E67C    lea         eax,[ebx+ebx*4]
 0041E67F    mov         edx,dword ptr [esi]
 0041E681    mov         edx,dword ptr [edx+8]
 0041E684    mov         eax,dword ptr [edx+eax*4+4]
 0041E688    mov         edx,dword ptr [ebp-0C]
 0041E68B    lea         edx,[edx+edx*4]
 0041E68E    mov         ecx,dword ptr [esi]
 0041E690    mov         ecx,dword ptr [ecx+8]
 0041E693    cmp         eax,dword ptr [ecx+edx*4+4]
>0041E697    jb          0041E63B
 0041E699    lea         eax,[ebx+ebx*4]
 0041E69C    mov         edx,dword ptr [esi]
 0041E69E    mov         edx,dword ptr [edx+8]
 0041E6A1    mov         al,byte ptr [edx+eax*4+1]
 0041E6A5    mov         edx,dword ptr [ebp-0C]
 0041E6A8    lea         edx,[edx+edx*4]
 0041E6AB    mov         ecx,dword ptr [esi]
 0041E6AD    mov         ecx,dword ptr [ecx+8]
 0041E6B0    cmp         al,byte ptr [ecx+edx*4+1]
>0041E6B4    jne         0041E6F4
 0041E6B6    lea         eax,[ebx+ebx*4]
 0041E6B9    mov         edx,dword ptr [esi]
 0041E6BB    mov         edx,dword ptr [edx+8]
 0041E6BE    mov         eax,dword ptr [edx+eax*4+4]
 0041E6C2    mov         edx,dword ptr [ebp-0C]
 0041E6C5    lea         edx,[edx+edx*4]
 0041E6C8    mov         ecx,dword ptr [esi]
 0041E6CA    mov         ecx,dword ptr [ecx+8]
 0041E6CD    cmp         eax,dword ptr [ecx+edx*4+4]
>0041E6D1    jne         0041E6F4
 0041E6D3    lea         eax,[ebx+ebx*4]
 0041E6D6    mov         edx,dword ptr [esi]
 0041E6D8    mov         edx,dword ptr [edx+8]
 0041E6DB    mov         eax,dword ptr [edx+eax*4+8]
 0041E6DF    mov         edx,dword ptr [ebp-0C]
 0041E6E2    lea         edx,[edx+edx*4]
 0041E6E5    mov         ecx,dword ptr [esi]
 0041E6E7    mov         ecx,dword ptr [ecx+8]
 0041E6EA    cmp         eax,dword ptr [ecx+edx*4+8]
>0041E6EE    ja          0041E63B
 0041E6F4    cmp         edi,dword ptr [ebp-0C]
>0041E6F7    jg          0041E766
 0041E6F9    lea         eax,[ebp-20]
 0041E6FC    lea         edx,[edi+edi*4]
 0041E6FF    mov         ecx,dword ptr [esi]
 0041E701    mov         ecx,dword ptr [ecx+8]
 0041E704    lea         edx,[ecx+edx*4]
 0041E707    mov         ecx,dword ptr ds:[41C61C];TMfSegment
 0041E70D    call        @CopyRecord
 0041E712    lea         eax,[edi+edi*4]
 0041E715    mov         edx,dword ptr [esi]
 0041E717    mov         edx,dword ptr [edx+8]
 0041E71A    lea         eax,[edx+eax*4]
 0041E71D    mov         edx,dword ptr [ebp-0C]
 0041E720    lea         edx,[edx+edx*4]
 0041E723    mov         ecx,dword ptr [esi]
 0041E725    mov         ecx,dword ptr [ecx+8]
 0041E728    lea         edx,[ecx+edx*4]
 0041E72B    mov         ecx,dword ptr ds:[41C61C];TMfSegment
 0041E731    call        @CopyRecord
 0041E736    mov         eax,dword ptr [ebp-0C]
 0041E739    lea         eax,[eax+eax*4]
 0041E73C    mov         edx,dword ptr [esi]
 0041E73E    mov         edx,dword ptr [edx+8]
 0041E741    lea         eax,[edx+eax*4]
 0041E744    lea         edx,[ebp-20]
 0041E747    mov         ecx,dword ptr ds:[41C61C];TMfSegment
 0041E74D    call        @CopyRecord
 0041E752    cmp         edi,ebx
>0041E754    jne         0041E75B
 0041E756    mov         ebx,dword ptr [ebp-0C]
>0041E759    jmp         0041E762
 0041E75B    cmp         ebx,dword ptr [ebp-0C]
>0041E75E    jne         0041E762
 0041E760    mov         ebx,edi
 0041E762    inc         edi
 0041E763    dec         dword ptr [ebp-0C]
 0041E766    cmp         edi,dword ptr [ebp-0C]
>0041E769    jle         0041E595
 0041E76F    mov         eax,dword ptr [ebp-4]
 0041E772    cmp         eax,dword ptr [ebp-0C]
>0041E775    jge         0041E787
 0041E777    mov         eax,dword ptr [ebp+8]
 0041E77A    push        eax
 0041E77B    mov         edx,dword ptr [ebp-0C]
 0041E77E    mov         eax,dword ptr [ebp-4]
 0041E781    call        0041E550
 0041E786    pop         ecx
 0041E787    mov         dword ptr [ebp-4],edi
 0041E78A    cmp         edi,dword ptr [ebp-8]
>0041E78D    jl          0041E581
 0041E793    xor         eax,eax
 0041E795    pop         edx
 0041E796    pop         ecx
 0041E797    pop         ecx
 0041E798    mov         dword ptr fs:[eax],edx
 0041E79B    push        41E7B6
 0041E7A0    lea         eax,[ebp-20]
 0041E7A3    mov         edx,dword ptr ds:[41C61C];TMfSegment
 0041E7A9    call        @FinalizeRecord
 0041E7AE    ret
>0041E7AF    jmp         @HandleFinally
>0041E7B4    jmp         0041E7A0
 0041E7B6    pop         edi
 0041E7B7    pop         esi
 0041E7B8    pop         ebx
 0041E7B9    mov         esp,ebp
 0041E7BB    pop         ebp
 0041E7BC    ret
end;*}

//0041E7C0
{*procedure sub_0041E7C0(?:?; ?:?);
begin
 0041E7C0    push        ebp
 0041E7C1    mov         ebp,esp
 0041E7C3    push        ecx
 0041E7C4    push        ebx
 0041E7C5    push        esi
 0041E7C6    push        edi
 0041E7C7    mov         byte ptr [ebp-1],al
 0041E7CA    mov         edi,dword ptr [ebp+8]
 0041E7CD    add         edi,0FFFFFFFC
 0041E7D0    mov         eax,dword ptr [edi]
 0041E7D2    cmp         dword ptr [eax+0C],0
>0041E7D6    je          0041E936
 0041E7DC    xor         ebx,ebx
 0041E7DE    mov         esi,1
>0041E7E3    jmp         0041E925
 0041E7E8    mov         byte ptr [ebp-2],0
 0041E7EC    lea         eax,[ebx+ebx*4]
 0041E7EF    mov         edx,dword ptr [edi]
 0041E7F1    mov         edx,dword ptr [edx+8]
 0041E7F4    cmp         dword ptr [edx+eax*4+8],0
>0041E7F9    je          0041E815
 0041E7FB    lea         eax,[ebx+ebx*4]
 0041E7FE    mov         edx,dword ptr [edi]
 0041E800    mov         edx,dword ptr [edx+8]
 0041E803    mov         eax,dword ptr [edx+eax*4+4]
 0041E807    lea         edx,[esi+esi*4]
 0041E80A    mov         ecx,dword ptr [edi]
 0041E80C    mov         ecx,dword ptr [ecx+8]
 0041E80F    cmp         eax,dword ptr [ecx+edx*4+4]
>0041E813    jne         0041E83B
 0041E815    lea         eax,[ebx+ebx*4]
 0041E818    mov         edx,dword ptr [edi]
 0041E81A    mov         edx,dword ptr [edx+8]
 0041E81D    lea         eax,[edx+eax*4]
 0041E820    lea         edx,[esi+esi*4]
 0041E823    mov         ecx,dword ptr [edi]
 0041E825    mov         ecx,dword ptr [ecx+8]
 0041E828    lea         edx,[ecx+edx*4]
 0041E82B    mov         ecx,dword ptr ds:[41C61C];TMfSegment
 0041E831    call        @CopyRecord
>0041E836    jmp         0041E8F8
 0041E83B    lea         eax,[ebx+ebx*4]
 0041E83E    mov         edx,dword ptr [edi]
 0041E840    mov         edx,dword ptr [edx+8]
 0041E843    mov         al,byte ptr [edx+eax*4+1]
 0041E847    lea         edx,[esi+esi*4]
 0041E84A    mov         ecx,dword ptr [edi]
 0041E84C    mov         ecx,dword ptr [ecx+8]
 0041E84F    cmp         al,byte ptr [ecx+edx*4+1]
>0041E853    je          0041E85E
 0041E855    mov         byte ptr [ebp-2],1
>0041E859    jmp         0041E8F8
 0041E85E    cmp         byte ptr [ebp-1],0
>0041E862    je          0041E890
 0041E864    lea         eax,[ebx+ebx*4]
 0041E867    mov         edx,dword ptr [edi]
 0041E869    mov         edx,dword ptr [edx+8]
 0041E86C    mov         eax,dword ptr [edx+eax*4+4]
 0041E870    lea         edx,[ebx+ebx*4]
 0041E873    mov         ecx,dword ptr [edi]
 0041E875    mov         ecx,dword ptr [ecx+8]
 0041E878    add         eax,dword ptr [ecx+edx*4+8]
 0041E87C    lea         edx,[esi+esi*4]
 0041E87F    mov         ecx,dword ptr [edi]
 0041E881    mov         ecx,dword ptr [ecx+8]
 0041E884    cmp         eax,dword ptr [ecx+edx*4+4]
>0041E888    jae         0041E890
 0041E88A    mov         byte ptr [ebp-2],1
>0041E88E    jmp         0041E8F8
 0041E890    lea         eax,[esi+esi*4]
 0041E893    mov         edx,dword ptr [edi]
 0041E895    mov         edx,dword ptr [edx+8]
 0041E898    mov         eax,dword ptr [edx+eax*4+4]
 0041E89C    lea         edx,[ebx+ebx*4]
 0041E89F    mov         ecx,dword ptr [edi]
 0041E8A1    mov         ecx,dword ptr [ecx+8]
 0041E8A4    sub         eax,dword ptr [ecx+edx*4+4]
 0041E8A8    lea         edx,[ebx+ebx*4]
 0041E8AB    mov         ecx,dword ptr [edi]
 0041E8AD    mov         ecx,dword ptr [ecx+8]
 0041E8B0    mov         dword ptr [ecx+edx*4+8],eax
 0041E8B4    lea         eax,[esi+esi*4]
 0041E8B7    mov         edx,dword ptr [edi]
 0041E8B9    mov         edx,dword ptr [edx+8]
 0041E8BC    mov         edx,dword ptr [edx+eax*4+0C]
 0041E8C0    lea         eax,[ebx+ebx*4]
 0041E8C3    mov         ecx,dword ptr [edi]
 0041E8C5    mov         ecx,dword ptr [ecx+8]
 0041E8C8    mov         eax,dword ptr [ecx+eax*4+0C]
 0041E8CC    mov         ecx,dword ptr ds:[55B210];^gvar_0053D140
 0041E8D2    mov         ecx,dword ptr [ecx]
 0041E8D4    call        ecx
 0041E8D6    test        al,al
>0041E8D8    je          0041E8F4
 0041E8DA    lea         eax,[esi+esi*4]
 0041E8DD    mov         edx,dword ptr [edi]
 0041E8DF    mov         edx,dword ptr [edx+8]
 0041E8E2    mov         eax,dword ptr [edx+eax*4+8]
 0041E8E6    lea         edx,[ebx+ebx*4]
 0041E8E9    mov         ecx,dword ptr [edi]
 0041E8EB    mov         ecx,dword ptr [ecx+8]
 0041E8EE    add         dword ptr [ecx+edx*4+8],eax
>0041E8F2    jmp         0041E8F8
 0041E8F4    mov         byte ptr [ebp-2],1
 0041E8F8    cmp         byte ptr [ebp-2],0
>0041E8FC    je          0041E924
 0041E8FE    inc         ebx
 0041E8FF    cmp         esi,ebx
>0041E901    je          0041E924
 0041E903    lea         eax,[ebx+ebx*4]
 0041E906    mov         edx,dword ptr [edi]
 0041E908    mov         edx,dword ptr [edx+8]
 0041E90B    lea         eax,[edx+eax*4]
 0041E90E    lea         edx,[esi+esi*4]
 0041E911    mov         ecx,dword ptr [edi]
 0041E913    mov         ecx,dword ptr [ecx+8]
 0041E916    lea         edx,[ecx+edx*4]
 0041E919    mov         ecx,dword ptr ds:[41C61C];TMfSegment
 0041E91F    call        @CopyRecord
 0041E924    inc         esi
 0041E925    mov         eax,dword ptr [edi]
 0041E927    cmp         esi,dword ptr [eax+0C]
>0041E92A    jl          0041E7E8
 0041E930    inc         ebx
 0041E931    mov         eax,dword ptr [edi]
 0041E933    mov         dword ptr [eax+0C],ebx
 0041E936    pop         edi
 0041E937    pop         esi
 0041E938    pop         ebx
 0041E939    pop         ecx
 0041E93A    pop         ebp
 0041E93B    ret
end;*}

//0041E93C
{*function sub_0041E93C(?:?):?;
begin
 0041E93C    push        ebp
 0041E93D    mov         ebp,esp
 0041E93F    push        ebx
 0041E940    push        esi
 0041E941    push        edi
 0041E942    mov         esi,dword ptr [ebp+8]
 0041E945    add         esi,0FFFFFFFC
 0041E948    mov         eax,dword ptr [esi]
 0041E94A    mov         edx,dword ptr [ebp+8]
 0041E94D    cmp         eax,dword ptr [edx-8]
 0041E950    setl        bl
 0041E953    test        bl,bl
>0041E955    je          0041E9C2
>0041E957    jmp         0041E95B
 0041E959    inc         dword ptr [esi]
 0041E95B    mov         eax,dword ptr [esi]
 0041E95D    mov         edx,dword ptr [ebp+8]
 0041E960    cmp         eax,dword ptr [edx-8]
>0041E963    jge         0041E974
 0041E965    mov         eax,dword ptr [esi]
 0041E967    mov         edx,dword ptr [ebp+8]
 0041E96A    mov         edx,dword ptr [edx-0C]
 0041E96D    cmp         byte ptr [edx+eax-1],20
>0041E972    je          0041E959
 0041E974    mov         eax,dword ptr [esi]
 0041E976    mov         edx,dword ptr [ebp+8]
 0041E979    mov         dword ptr [edx-10],eax
 0041E97C    push        7FFFFFFF
 0041E981    mov         edi,dword ptr ds:[55B658];^gvar_0053D0E8
 0041E987    mov         edi,dword ptr [edi]
 0041E989    mov         ecx,dword ptr [esi]
 0041E98B    mov         eax,dword ptr [ebp+8]
 0041E98E    mov         edx,dword ptr [eax-0C]
 0041E991    mov         eax,41E9D4;#13+#10
 0041E996    call        edi
 0041E998    test        eax,eax
>0041E99A    je          0041E9AD
 0041E99C    mov         edx,eax
 0041E99E    sub         edx,dword ptr [esi]
 0041E9A0    mov         ecx,dword ptr [ebp+8]
 0041E9A3    mov         dword ptr [ecx-14],edx
 0041E9A6    add         eax,2
 0041E9A9    mov         dword ptr [esi],eax
>0041E9AB    jmp         0041E9C2
 0041E9AD    mov         eax,dword ptr [ebp+8]
 0041E9B0    mov         eax,dword ptr [eax-8]
 0041E9B3    inc         eax
 0041E9B4    sub         eax,dword ptr [esi]
 0041E9B6    mov         edx,dword ptr [ebp+8]
 0041E9B9    mov         dword ptr [edx-14],eax
 0041E9BC    mov         dword ptr [esi],7FFFFFFF
 0041E9C2    mov         eax,ebx
 0041E9C4    pop         edi
 0041E9C5    pop         esi
 0041E9C6    pop         ebx
 0041E9C7    pop         ebp
 0041E9C8    ret
end;*}

//0041E9FC
{*procedure sub_0041E9FC(?:?; ?:?);
begin
 0041E9FC    push        ebp
 0041E9FD    mov         ebp,esp
 0041E9FF    add         esp,0FFFFFFD8
 0041EA02    push        ebx
 0041EA03    push        esi
 0041EA04    push        edi
 0041EA05    xor         edx,edx
 0041EA07    mov         dword ptr [ebp-24],edx
 0041EA0A    mov         dword ptr [ebp-28],edx
 0041EA0D    mov         dword ptr [ebp-1C],edx
 0041EA10    mov         dword ptr [ebp-0C],eax
 0041EA13    xor         eax,eax
 0041EA15    push        ebp
 0041EA16    push        41EEC5
 0041EA1B    push        dword ptr fs:[eax]
 0041EA1E    mov         dword ptr fs:[eax],esp
 0041EA21    mov         eax,dword ptr [ebp-0C]
 0041EA24    call        @DynArrayLength
 0041EA29    mov         dword ptr [ebp-8],eax
 0041EA2C    mov         dword ptr [ebp-4],1
 0041EA33    lea         eax,[ebp-1C]
 0041EA36    mov         edx,dword ptr ds:[41E9D8];_DynArr_14_7
 0041EA3C    call        @DynArrayClear
>0041EA41    jmp         0041EE8D
 0041EA46    cmp         dword ptr [ebp-14],0
>0041EA4A    je          0041EE8D
 0041EA50    mov         eax,dword ptr [ebp-10]
 0041EA53    add         eax,dword ptr [ebp-14]
 0041EA56    push        eax
 0041EA57    mov         ebx,dword ptr ds:[55B658];^gvar_0053D0E8
 0041EA5D    mov         ebx,dword ptr [ebx]
 0041EA5F    mov         ecx,dword ptr [ebp-10]
 0041EA62    mov         edx,dword ptr [ebp-0C]
 0041EA65    mov         eax,41EEDC;'Start         Length     Name                   Class'
 0041EA6A    call        ebx
 0041EA6C    test        eax,eax
>0041EA6E    je          0041EC65
 0041EA74    cmp         dword ptr [ebp-14],0
>0041EA78    je          0041EBB6
 0041EA7E    cmp         dword ptr [ebp-14],2F
>0041EA82    jl          0041EBA1
 0041EA88    mov         eax,dword ptr [ebp-0C]
 0041EA8B    mov         edx,dword ptr [ebp-10]
 0041EA8E    cmp         byte ptr [eax+edx+3],3A
>0041EA93    jne         0041EBA1
 0041EA99    mov         eax,dword ptr [ebp-0C]
 0041EA9C    mov         edx,dword ptr [ebp-10]
 0041EA9F    cmp         byte ptr [eax+edx+0C],20
>0041EAA4    jne         0041EBA1
 0041EAAA    mov         eax,dword ptr [ebp-0C]
 0041EAAD    mov         edx,dword ptr [ebp-10]
 0041EAB0    cmp         byte ptr [eax+edx+15],48
>0041EAB5    jne         0041EBA1
 0041EABB    mov         eax,dword ptr [ebp-1C]
 0041EABE    call        @LStrLen
 0041EAC3    mov         esi,eax
 0041EAC5    lea         eax,[esi+1]
 0041EAC8    push        eax
 0041EAC9    lea         eax,[ebp-1C]
 0041EACC    mov         ecx,1
 0041EAD1    mov         edx,dword ptr ds:[41E9D8];_DynArr_14_7
 0041EAD7    call        @DynArraySetLength
 0041EADC    add         esp,4
 0041EADF    mov         eax,dword ptr [ebp-0C]
 0041EAE2    mov         edx,dword ptr [ebp-10]
 0041EAE5    lea         edx,[eax+edx-1]
 0041EAE9    mov         edi,dword ptr ds:[55B13C];^gvar_0053D100
 0041EAEF    mov         edi,dword ptr [edi]
 0041EAF1    mov         ecx,4
 0041EAF6    xor         eax,eax
 0041EAF8    call        edi
 0041EAFA    lea         ebx,[esi+esi*4]
 0041EAFD    mov         edx,dword ptr [ebp-1C]
 0041EB00    mov         dword ptr [edx+ebx*4],eax
 0041EB03    mov         eax,dword ptr [ebp-0C]
 0041EB06    mov         edx,dword ptr [ebp-10]
 0041EB09    lea         edx,[eax+edx+4]
 0041EB0D    mov         edi,dword ptr ds:[55B13C];^gvar_0053D100
 0041EB13    mov         edi,dword ptr [edi]
 0041EB15    mov         ecx,8
 0041EB1A    mov         al,1
 0041EB1C    call        edi
 0041EB1E    mov         edx,dword ptr [ebp-1C]
 0041EB21    mov         dword ptr [edx+ebx*4+4],eax
 0041EB25    mov         eax,dword ptr [ebp-0C]
 0041EB28    mov         edx,dword ptr [ebp-10]
 0041EB2B    lea         edx,[eax+edx+0D]
 0041EB2F    mov         edi,dword ptr ds:[55B13C];^gvar_0053D100
 0041EB35    mov         edi,dword ptr [edi]
 0041EB37    mov         ecx,8
 0041EB3C    mov         al,1
 0041EB3E    call        edi
 0041EB40    mov         edx,dword ptr [ebp-1C]
 0041EB43    mov         dword ptr [edx+ebx*4+8],eax
 0041EB47    lea         eax,[ebp-28]
 0041EB4A    push        eax
 0041EB4B    mov         edx,dword ptr [ebp-10]
 0041EB4E    add         edx,18
 0041EB51    mov         ecx,17
 0041EB56    mov         eax,dword ptr [ebp-0C]
 0041EB59    call        @LStrCopy
 0041EB5E    mov         eax,dword ptr [ebp-28]
 0041EB61    mov         edi,dword ptr ds:[55B5E0];^gvar_0053D0C8
 0041EB67    mov         edi,dword ptr [edi]
 0041EB69    lea         edx,[ebp-24]
 0041EB6C    call        edi
 0041EB6E    mov         edx,dword ptr [ebp-24]
 0041EB71    mov         eax,dword ptr [ebp-1C]
 0041EB74    lea         eax,[eax+ebx*4+0C]
 0041EB78    call        @LStrAsg
 0041EB7D    mov         eax,dword ptr [ebp-1C]
 0041EB80    mov         eax,dword ptr [eax+ebx*4]
 0041EB83    lea         edx,[esi+1]
 0041EB86    cmp         eax,edx
>0041EB88    je          0041EBA1
 0041EB8A    push        esi
 0041EB8B    lea         eax,[ebp-1C]
 0041EB8E    mov         ecx,1
 0041EB93    mov         edx,dword ptr ds:[41E9D8];_DynArr_14_7
 0041EB99    call        @DynArraySetLength
 0041EB9E    add         esp,4
 0041EBA1    push        ebp
 0041EBA2    call        0041E93C
 0041EBA7    pop         ecx
 0041EBA8    test        al,al
>0041EBAA    je          0041EBB6
 0041EBAC    cmp         dword ptr [ebp-14],0
>0041EBB0    jne         0041EA7E
 0041EBB6    cmp         dword ptr [ebp-1C],0
>0041EBBA    je          0041EE8D
 0041EBC0    mov         bl,1
 0041EBC2    mov         eax,dword ptr [ebp-1C]
 0041EBC5    mov         eax,dword ptr [eax+4]
 0041EBC8    mov         dword ptr [ebp-18],eax
 0041EBCB    mov         eax,dword ptr [ebp-1C]
 0041EBCE    call        00405CE8
 0041EBD3    test        eax,eax
>0041EBD5    jl          0041EE8D
 0041EBDB    inc         eax
 0041EBDC    mov         dword ptr [ebp-20],eax
 0041EBDF    xor         esi,esi
 0041EBE1    lea         eax,[esi+esi*4]
 0041EBE4    mov         edx,dword ptr [ebp-1C]
 0041EBE7    mov         eax,dword ptr [edx+eax*4+4]
 0041EBEB    cmp         eax,dword ptr [ebp-18]
>0041EBEE    jae         0041EC0C
 0041EBF0    push        esi
 0041EBF1    lea         eax,[ebp-1C]
 0041EBF4    mov         ecx,1
 0041EBF9    mov         edx,dword ptr ds:[41E9D8];_DynArr_14_7
 0041EBFF    call        @DynArraySetLength
 0041EC04    add         esp,4
>0041EC07    jmp         0041EE8D
 0041EC0C    test        bl,bl
>0041EC0E    je          0041EC46
 0041EC10    push        7FFFFFFF
 0041EC15    lea         eax,[esi+esi*4]
 0041EC18    mov         edx,dword ptr [ebp-1C]
 0041EC1B    mov         edx,dword ptr [edx+eax*4+0C]
 0041EC1F    mov         edi,dword ptr ds:[55B528];^gvar_0053D0EC
 0041EC25    mov         edi,dword ptr [edi]
 0041EC27    mov         ecx,1
 0041EC2C    mov         eax,41EF1C;'data'
 0041EC31    call        edi
 0041EC33    test        eax,eax
>0041EC35    jle         0041EC46
 0041EC37    lea         eax,[esi+esi*4]
 0041EC3A    mov         edx,dword ptr [ebp-1C]
 0041EC3D    mov         eax,dword ptr [edx+eax*4+4]
 0041EC41    mov         dword ptr [ebp-18],eax
 0041EC44    xor         ebx,ebx
 0041EC46    lea         eax,[esi+esi*4]
 0041EC49    mov         edx,dword ptr [ebp-1C]
 0041EC4C    mov         byte ptr [edx+eax*4+10],bl
 0041EC50    mov         edx,dword ptr [ebp-1C]
 0041EC53    mov         ecx,dword ptr [ebp-18]
 0041EC56    sub         dword ptr [edx+eax*4+4],ecx
 0041EC5A    inc         esi
 0041EC5B    dec         dword ptr [ebp-20]
>0041EC5E    jne         0041EBE1
>0041EC60    jmp         0041EE8D
 0041EC65    mov         eax,dword ptr [ebp-10]
 0041EC68    add         eax,dword ptr [ebp-14]
 0041EC6B    push        eax
 0041EC6C    mov         ebx,dword ptr ds:[55B658];^gvar_0053D0E8
 0041EC72    mov         ebx,dword ptr [ebx]
 0041EC74    mov         ecx,dword ptr [ebp-10]
 0041EC77    mov         edx,dword ptr [ebp-0C]
 0041EC7A    mov         eax,41EF2C;'Detailed map of segments'
 0041EC7F    call        ebx
 0041EC81    test        eax,eax
>0041EC83    je          0041ECF5
 0041EC85    push        ebp
 0041EC86    call        0041E93C
 0041EC8B    pop         ecx
 0041EC8C    test        al,al
>0041EC8E    je          0041EC96
 0041EC90    cmp         dword ptr [ebp-14],0
>0041EC94    je          0041EC85
 0041EC96    cmp         dword ptr [ebp-14],0
>0041EC9A    je          0041ECCD
 0041EC9C    mov         eax,dword ptr [ebp+8]
 0041EC9F    push        eax
 0041ECA0    mov         eax,dword ptr [ebp-1C]
 0041ECA3    push        eax
 0041ECA4    mov         eax,dword ptr [ebp-1C]
 0041ECA7    call        00405CE8
 0041ECAC    push        eax
 0041ECAD    mov         ecx,dword ptr [ebp-14]
 0041ECB0    mov         edx,dword ptr [ebp-10]
 0041ECB3    mov         eax,dword ptr [ebp-0C]
 0041ECB6    call        0041D498
 0041ECBB    pop         ecx
 0041ECBC    push        ebp
 0041ECBD    call        0041E93C
 0041ECC2    pop         ecx
 0041ECC3    test        al,al
>0041ECC5    je          0041ECCD
 0041ECC7    cmp         dword ptr [ebp-14],0
>0041ECCB    jne         0041EC9C
 0041ECCD    mov         eax,dword ptr [ebp+8]
 0041ECD0    mov         eax,dword ptr [eax-4]
 0041ECD3    mov         eax,dword ptr [eax+0C]
 0041ECD6    test        eax,eax
>0041ECD8    jle         0041EE8D
 0041ECDE    mov         edx,dword ptr [ebp+8]
 0041ECE1    push        edx
 0041ECE2    mov         edx,dword ptr [ebp+8]
 0041ECE5    mov         edx,eax
 0041ECE7    dec         edx
 0041ECE8    xor         eax,eax
 0041ECEA    call        0041E550
 0041ECEF    pop         ecx
>0041ECF0    jmp         0041EE8D
 0041ECF5    mov         eax,dword ptr [ebp-10]
 0041ECF8    add         eax,dword ptr [ebp-14]
 0041ECFB    push        eax
 0041ECFC    mov         ebx,dword ptr ds:[55B658];^gvar_0053D0E8
 0041ED02    mov         ebx,dword ptr [ebx]
 0041ED04    mov         ecx,dword ptr [ebp-10]
 0041ED07    mov         edx,dword ptr [ebp-0C]
 0041ED0A    mov         eax,41EF50;'Publics by Value'
 0041ED0F    call        ebx
 0041ED11    test        eax,eax
>0041ED13    je          0041ED6A
 0041ED15    push        ebp
 0041ED16    call        0041E93C
 0041ED1B    pop         ecx
 0041ED1C    test        al,al
>0041ED1E    je          0041ED26
 0041ED20    cmp         dword ptr [ebp-14],0
>0041ED24    je          0041ED15
 0041ED26    cmp         dword ptr [ebp-14],0
>0041ED2A    je          0041EE8D
 0041ED30    mov         eax,dword ptr [ebp+8]
 0041ED33    push        eax
 0041ED34    mov         eax,dword ptr [ebp-1C]
 0041ED37    push        eax
 0041ED38    mov         eax,dword ptr [ebp-1C]
 0041ED3B    call        00405CE8
 0041ED40    push        eax
 0041ED41    mov         ecx,dword ptr [ebp-14]
 0041ED44    mov         edx,dword ptr [ebp-10]
 0041ED47    mov         eax,dword ptr [ebp-0C]
 0041ED4A    call        0041D82C
 0041ED4F    pop         ecx
 0041ED50    push        ebp
 0041ED51    call        0041E93C
 0041ED56    pop         ecx
 0041ED57    test        al,al
>0041ED59    je          0041EE8D
 0041ED5F    cmp         dword ptr [ebp-14],0
>0041ED63    jne         0041ED30
>0041ED65    jmp         0041EE8D
 0041ED6A    mov         eax,dword ptr [ebp-10]
 0041ED6D    add         eax,dword ptr [ebp-14]
 0041ED70    push        eax
 0041ED71    mov         ebx,dword ptr ds:[55B658];^gvar_0053D0E8
 0041ED77    mov         ebx,dword ptr [ebx]
 0041ED79    mov         ecx,dword ptr [ebp-10]
 0041ED7C    mov         edx,dword ptr [ebp-0C]
 0041ED7F    mov         eax,41EF6C;'Line numbers for '
 0041ED84    call        ebx
 0041ED86    test        eax,eax
>0041ED88    je          0041EE2D
 0041ED8E    xor         ebx,ebx
 0041ED90    mov         esi,dword ptr [ebp-10]
 0041ED93    add         esi,11
 0041ED96    mov         eax,dword ptr [ebp-10]
 0041ED99    add         eax,dword ptr [ebp-14]
 0041ED9C    push        eax
 0041ED9D    mov         edi,dword ptr ds:[55B658];^gvar_0053D0E8
 0041EDA3    mov         edi,dword ptr [edi]
 0041EDA5    mov         ecx,esi
 0041EDA7    mov         edx,dword ptr [ebp-0C]
 0041EDAA    mov         eax,41EF88;'('
 0041EDAF    call        edi
 0041EDB1    test        eax,eax
>0041EDB3    je          0041EE8D
 0041EDB9    mov         edx,dword ptr [ebp-10]
 0041EDBC    add         edx,dword ptr [ebp-14]
 0041EDBF    push        edx
 0041EDC0    mov         esi,dword ptr ds:[55B658];^gvar_0053D0E8
 0041EDC6    mov         esi,dword ptr [esi]
 0041EDC8    mov         ecx,eax
 0041EDCA    mov         edx,dword ptr [ebp-0C]
 0041EDCD    mov         eax,41EF94;')'
 0041EDD2    call        esi
 0041EDD4    test        eax,eax
>0041EDD6    je          0041EE8D
 0041EDDC    push        ebp
 0041EDDD    call        0041E93C
 0041EDE2    pop         ecx
 0041EDE3    test        al,al
>0041EDE5    je          0041EDED
 0041EDE7    cmp         dword ptr [ebp-14],0
>0041EDEB    je          0041EDDC
 0041EDED    cmp         dword ptr [ebp-14],0
>0041EDF1    je          0041EE8D
 0041EDF7    mov         eax,dword ptr [ebp+8]
 0041EDFA    push        eax
 0041EDFB    mov         eax,dword ptr [ebp-1C]
 0041EDFE    push        eax
 0041EDFF    mov         eax,dword ptr [ebp-1C]
 0041EE02    call        00405CE8
 0041EE07    push        eax
 0041EE08    push        ebx
 0041EE09    mov         ecx,dword ptr [ebp-14]
 0041EE0C    mov         edx,dword ptr [ebp-10]
 0041EE0F    mov         eax,dword ptr [ebp-0C]
 0041EE12    call        0041DBD0
 0041EE17    pop         ecx
 0041EE18    mov         bl,1
 0041EE1A    push        ebp
 0041EE1B    call        0041E93C
 0041EE20    pop         ecx
 0041EE21    test        al,al
>0041EE23    je          0041EE8D
 0041EE25    cmp         dword ptr [ebp-14],0
>0041EE29    jne         0041EDF7
>0041EE2B    jmp         0041EE8D
 0041EE2D    mov         eax,dword ptr [ebp-10]
 0041EE30    add         eax,dword ptr [ebp-14]
 0041EE33    push        eax
 0041EE34    mov         ebx,dword ptr ds:[55B658];^gvar_0053D0E8
 0041EE3A    mov         ebx,dword ptr [ebx]
 0041EE3C    mov         ecx,dword ptr [ebp-10]
 0041EE3F    mov         edx,dword ptr [ebp-0C]
 0041EE42    mov         eax,41EFA0;'Program entry point at '
 0041EE47    call        ebx
 0041EE49    test        eax,eax
>0041EE4B    je          0041EE8D
 0041EE4D    mov         esi,dword ptr [ebp-10]
 0041EE50    add         esi,17
 0041EE53    cmp         dword ptr [ebp-14],23
>0041EE57    jl          0041EE8D
 0041EE59    mov         eax,dword ptr [ebp-0C]
 0041EE5C    cmp         byte ptr [eax+esi+3],3A
>0041EE61    jne         0041EE8D
 0041EE63    mov         ebx,dword ptr ds:[55B13C];^gvar_0053D100
 0041EE69    mov         ebx,dword ptr [ebx]
 0041EE6B    mov         eax,dword ptr [ebp-0C]
 0041EE6E    lea         edx,[eax+esi+4]
 0041EE72    mov         ecx,8
 0041EE77    mov         al,1
 0041EE79    call        ebx
 0041EE7B    mov         edx,dword ptr [ebp+8]
 0041EE7E    mov         edx,dword ptr [edx-4]
 0041EE81    add         eax,dword ptr [edx+40]
 0041EE84    mov         edx,dword ptr [ebp+8]
 0041EE87    mov         edx,dword ptr [edx-4]
 0041EE8A    mov         dword ptr [edx+2C],eax
 0041EE8D    push        ebp
 0041EE8E    call        0041E93C
 0041EE93    pop         ecx
 0041EE94    test        al,al
>0041EE96    jne         0041EA46
 0041EE9C    xor         eax,eax
 0041EE9E    pop         edx
 0041EE9F    pop         ecx
 0041EEA0    pop         ecx
 0041EEA1    mov         dword ptr fs:[eax],edx
 0041EEA4    push        41EECC
 0041EEA9    lea         eax,[ebp-28]
 0041EEAC    mov         edx,2
 0041EEB1    call        @LStrArrayClr
 0041EEB6    lea         eax,[ebp-1C]
 0041EEB9    mov         edx,dword ptr ds:[41E9D8];_DynArr_14_7
 0041EEBF    call        @DynArrayClear
 0041EEC4    ret
>0041EEC5    jmp         @HandleFinally
>0041EECA    jmp         0041EEA9
 0041EECC    pop         edi
 0041EECD    pop         esi
 0041EECE    pop         ebx
 0041EECF    mov         esp,ebp
 0041EED1    pop         ebp
 0041EED2    ret
end;*}

//0041EFB8
{*procedure sub_0041EFB8(?:AnsiString; ?:?);
begin
 0041EFB8    push        ebp
 0041EFB9    mov         ebp,esp
 0041EFBB    add         esp,0FFFFFFF8
 0041EFBE    push        ebx
 0041EFBF    push        esi
 0041EFC0    push        edi
 0041EFC1    mov         dword ptr [ebp-8],edx
 0041EFC4    mov         dword ptr [ebp-4],eax
 0041EFC7    mov         eax,dword ptr [ebp-4]
 0041EFCA    call        @DynArrayLength
 0041EFCF    mov         edx,eax
 0041EFD1    mov         eax,dword ptr [ebp-8]
 0041EFD4    call        @LStrSetLength
 0041EFD9    mov         eax,dword ptr [ebp-4]
 0041EFDC    call        @DynArrayLength
 0041EFE1    mov         edi,eax
 0041EFE3    test        edi,edi
>0041EFE5    jle         0041F00B
 0041EFE7    mov         esi,1
 0041EFEC    mov         eax,dword ptr [ebp-4]
 0041EFEF    mov         bl,byte ptr [eax+esi-1]
 0041EFF3    cmp         bl,0AA
>0041EFF6    je          0041EFFB
 0041EFF8    xor         bl,0AA
 0041EFFB    mov         eax,dword ptr [ebp-8]
 0041EFFE    call        00404C34
 0041F003    mov         byte ptr [eax+esi-1],bl
 0041F007    inc         esi
 0041F008    dec         edi
>0041F009    jne         0041EFEC
 0041F00B    pop         edi
 0041F00C    pop         esi
 0041F00D    pop         ebx
 0041F00E    pop         ecx
 0041F00F    pop         ecx
 0041F010    pop         ebp
 0041F011    ret
end;*}

//0041F014
{*procedure sub_0041F014(?:?; ?:?);
begin
 0041F014    push        ebp
 0041F015    mov         ebp,esp
 0041F017    add         esp,0FFFFFEF8
 0041F01D    push        ebx
 0041F01E    push        esi
 0041F01F    xor         ecx,ecx
 0041F021    mov         dword ptr [ebp-108],ecx
 0041F027    mov         dword ptr [ebp-4],edx
 0041F02A    mov         ebx,eax
 0041F02C    xor         eax,eax
 0041F02E    push        ebp
 0041F02F    push        41F14C
 0041F034    push        dword ptr fs:[eax]
 0041F037    mov         dword ptr fs:[eax],esp
 0041F03A    mov         eax,dword ptr [ebp-4]
 0041F03D    call        @LStrClr
 0041F042    xor         edx,edx
 0041F044    mov         al,byte ptr [ebx]
 0041F046    dec         al
>0041F048    je          0041F050
 0041F04A    dec         al
>0041F04C    je          0041F071
>0041F04E    jmp         0041F07B
 0041F050    inc         ebx
 0041F051    lea         eax,[ebp-108]
 0041F057    mov         edx,ebx
 0041F059    call        @LStrFromPChar
 0041F05E    mov         eax,dword ptr [ebp-108]
 0041F064    mov         edx,dword ptr [ebp-4]
 0041F067    call        0041EFB8
>0041F06C    jmp         0041F133
 0041F071    inc         ebx
 0041F072    mov         byte ptr [ebp+edx-104],40
 0041F07A    inc         edx
 0041F07B    xor         esi,esi
 0041F07D    xor         eax,eax
 0041F07F    mov         ecx,esi
 0041F081    and         ecx,3
 0041F084    sub         ecx,1
>0041F087    jb          0041F093
>0041F089    je          0041F099
 0041F08B    dec         ecx
>0041F08C    je          0041F0AF
 0041F08E    dec         ecx
>0041F08F    je          0041F0C5
>0041F091    jmp         0041F0CF
 0041F093    mov         al,byte ptr [ebx]
 0041F095    and         al,3F
>0041F097    jmp         0041F0CF
 0041F099    xor         eax,eax
 0041F09B    mov         al,byte ptr [ebx]
 0041F09D    shr         eax,6
 0041F0A0    and         al,3
 0041F0A2    inc         ebx
 0041F0A3    mov         cl,byte ptr [ebx]
 0041F0A5    and         cl,0F
 0041F0A8    shl         ecx,2
 0041F0AB    add         al,cl
>0041F0AD    jmp         0041F0CF
 0041F0AF    xor         eax,eax
 0041F0B1    mov         al,byte ptr [ebx]
 0041F0B3    shr         eax,4
 0041F0B6    and         al,0F
 0041F0B8    inc         ebx
 0041F0B9    mov         cl,byte ptr [ebx]
 0041F0BB    and         cl,3
 0041F0BE    shl         ecx,4
 0041F0C1    add         al,cl
>0041F0C3    jmp         0041F0CF
 0041F0C5    xor         eax,eax
 0041F0C7    mov         al,byte ptr [ebx]
 0041F0C9    shr         eax,2
 0041F0CC    and         al,3F
 0041F0CE    inc         ebx
 0041F0CF    xor         ecx,ecx
 0041F0D1    mov         cl,al
 0041F0D3    cmp         ecx,0B
>0041F0D6    jge         0041F0E4
 0041F0D8    sub         ecx,1
>0041F0DB    jb          0041F118
 0041F0DD    sub         ecx,0A
>0041F0E0    jb          0041F0F5
>0041F0E2    jmp         0041F103
 0041F0E4    add         ecx,0FFFFFFF5
 0041F0E7    sub         ecx,1A
>0041F0EA    jb          0041F0F9
 0041F0EC    sub         ecx,1A
>0041F0EF    jb          0041F0FD
>0041F0F1    je          0041F101
>0041F0F3    jmp         0041F103
 0041F0F5    add         al,2F
>0041F0F7    jmp         0041F103
 0041F0F9    add         al,36
>0041F0FB    jmp         0041F103
 0041F0FD    add         al,3C
>0041F0FF    jmp         0041F103
 0041F101    mov         al,5F
 0041F103    mov         byte ptr [ebp+edx-104],al
 0041F10A    inc         edx
 0041F10B    inc         esi
 0041F10C    cmp         edx,0FF
>0041F112    jl          0041F07F
 0041F118    mov         byte ptr [ebp+edx-104],0
 0041F120    mov         eax,dword ptr [ebp-4]
 0041F123    lea         edx,[ebp-104]
 0041F129    mov         ecx,100
 0041F12E    call        @LStrFromArray
 0041F133    xor         eax,eax
 0041F135    pop         edx
 0041F136    pop         ecx
 0041F137    pop         ecx
 0041F138    mov         dword ptr fs:[eax],edx
 0041F13B    push        41F153
 0041F140    lea         eax,[ebp-108]
 0041F146    call        @LStrClr
 0041F14B    ret
>0041F14C    jmp         @HandleFinally
>0041F151    jmp         0041F140
 0041F153    pop         esi
 0041F154    pop         ebx
 0041F155    mov         esp,ebp
 0041F157    pop         ebp
 0041F158    ret
end;*}

//0041F15C
{*procedure sub_0041F15C(?:Pointer; ?:?; ?:WideString);
begin
 0041F15C    push        ebp
 0041F15D    mov         ebp,esp
 0041F15F    push        0
 0041F161    push        ebx
 0041F162    push        esi
 0041F163    push        edi
 0041F164    mov         edi,ecx
 0041F166    mov         ebx,edx
 0041F168    mov         esi,eax
 0041F16A    xor         eax,eax
 0041F16C    push        ebp
 0041F16D    push        41F1B5
 0041F172    push        dword ptr fs:[eax]
 0041F175    mov         dword ptr fs:[eax],esp
 0041F178    test        ebx,ebx
>0041F17A    jle         0041F198
 0041F17C    mov         eax,esi
 0041F17E    add         eax,ebx
 0041F180    add         eax,dword ptr [esi+15]
 0041F183    dec         eax
 0041F184    lea         edx,[ebp-4]
 0041F187    call        0041F014
 0041F18C    mov         eax,dword ptr [ebp-4]
 0041F18F    mov         edx,edi
 0041F191    call        0040BC40
>0041F196    jmp         0041F19F
 0041F198    mov         eax,edi
 0041F19A    call        @WStrClr
 0041F19F    xor         eax,eax
 0041F1A1    pop         edx
 0041F1A2    pop         ecx
 0041F1A3    pop         ecx
 0041F1A4    mov         dword ptr fs:[eax],edx
 0041F1A7    push        41F1BC
 0041F1AC    lea         eax,[ebp-4]
 0041F1AF    call        @LStrClr
 0041F1B4    ret
>0041F1B5    jmp         @HandleFinally
>0041F1BA    jmp         0041F1AC
 0041F1BC    pop         edi
 0041F1BD    pop         esi
 0041F1BE    pop         ebx
 0041F1BF    pop         ecx
 0041F1C0    pop         ebp
 0041F1C1    ret
end;*}

//0041F1C4
{*function sub_0041F1C4(?:?; ?:?):Boolean;
begin
 0041F1C4    push        ebx
 0041F1C5    push        esi
 0041F1C6    push        edi
 0041F1C7    xor         esi,esi
 0041F1C9    xor         ecx,ecx
 0041F1CB    mov         dword ptr [edx],ecx
 0041F1CD    mov         ecx,dword ptr [eax]
 0041F1CF    mov         bl,byte ptr [ecx]
 0041F1D1    inc         dword ptr [eax]
 0041F1D3    mov         ecx,ebx
 0041F1D5    and         cl,7F
 0041F1D8    mov         edi,ecx
 0041F1DA    and         edi,0FF
 0041F1E0    mov         ecx,esi
 0041F1E2    shl         edi,cl
 0041F1E4    add         dword ptr [edx],edi
 0041F1E6    add         esi,7
 0041F1E9    test        bl,80
>0041F1EC    jne         0041F1CD
 0041F1EE    cmp         dword ptr [edx],7FFFFFFF
 0041F1F4    setne       al
 0041F1F7    pop         edi
 0041F1F8    pop         esi
 0041F1F9    pop         ebx
 0041F1FA    ret
end;*}

//0041F1FC
{*function sub_0041F1FC(?:WideString; ?:?):?;
begin
 0041F1FC    push        ebp
 0041F1FD    mov         ebp,esp
 0041F1FF    add         esp,0FFFFFFC4
 0041F202    push        ebx
 0041F203    push        esi
 0041F204    push        edi
 0041F205    xor         edx,edx
 0041F207    mov         dword ptr [ebp-3C],edx
 0041F20A    mov         dword ptr [ebp-38],edx
 0041F20D    mov         dword ptr [ebp-20],edx
 0041F210    mov         ebx,eax
 0041F212    lea         eax,[ebp-34]
 0041F215    mov         edx,dword ptr ds:[41C61C];TMfSegment
 0041F21B    call        @AddRefRecord
 0041F220    xor         eax,eax
 0041F222    push        ebp
 0041F223    push        41F5CE
 0041F228    push        dword ptr fs:[eax]
 0041F22B    mov         dword ptr fs:[eax],esp
 0041F22E    mov         byte ptr [ebp-1],0
 0041F232    call        kernel32.GetVersion
 0041F237    test        eax,80000000
>0041F23C    jne         0041F25E
 0041F23E    push        0
 0041F240    push        0
 0041F242    push        3
 0041F244    push        0
 0041F246    push        1
 0041F248    push        80000000
 0041F24D    mov         eax,ebx
 0041F24F    call        @WStrToPWChar
 0041F254    push        eax
 0041F255    call        kernel32.CreateFileW
 0041F25A    mov         ebx,eax
>0041F25C    jmp         0041F287
 0041F25E    push        0
 0041F260    push        0
 0041F262    push        3
 0041F264    push        0
 0041F266    push        1
 0041F268    push        80000000
 0041F26D    lea         eax,[ebp-38]
 0041F270    mov         edx,ebx
 0041F272    call        @LStrFromWStr
 0041F277    mov         eax,dword ptr [ebp-38]
 0041F27A    call        @LStrToPChar
 0041F27F    push        eax
 0041F280    call        kernel32.CreateFileA
 0041F285    mov         ebx,eax
 0041F287    cmp         ebx,0FFFFFFFF
>0041F28A    je          0041F59A
 0041F290    push        0
 0041F292    push        0
 0041F294    push        0
 0041F296    push        2
 0041F298    push        0
 0041F29A    push        ebx
 0041F29B    call        kernel32.CreateFileMappingA
 0041F2A0    mov         dword ptr [ebp-8],eax
 0041F2A3    cmp         dword ptr [ebp-8],0
>0041F2A7    je          0041F594
 0041F2AD    push        0
 0041F2AF    push        0
 0041F2B1    push        0
 0041F2B3    push        4
 0041F2B5    mov         eax,dword ptr [ebp-8]
 0041F2B8    push        eax
 0041F2B9    call        kernel32.MapViewOfFile
 0041F2BE    mov         esi,eax
 0041F2C0    test        esi,esi
>0041F2C2    je          0041F58B
 0041F2C8    push        0
 0041F2CA    push        ebx
 0041F2CB    call        kernel32.GetFileSize
 0041F2D0    cmp         eax,22
>0041F2D3    jbe         0041F2F2
 0041F2D5    push        0
 0041F2D7    push        ebx
 0041F2D8    call        kernel32.GetFileSize
 0041F2DD    and         eax,3
 0041F2E0    test        eax,eax
>0041F2E2    jne         0041F2F2
 0041F2E4    cmp         dword ptr [esi],4742444A
>0041F2EA    jne         0041F2F2
 0041F2EC    cmp         byte ptr [esi+4],1
>0041F2F0    je          0041F2F6
 0041F2F2    xor         eax,eax
>0041F2F4    jmp         0041F2F8
 0041F2F6    mov         al,1
 0041F2F8    mov         byte ptr [ebp-1],al
 0041F2FB    cmp         byte ptr [ebp-1],0
>0041F2FF    je          0041F34A
 0041F301    cmp         byte ptr [esi+21],0
>0041F305    je          0041F34A
 0041F307    mov         eax,dword ptr [esi+1D]
 0041F30A    neg         eax
 0041F30C    mov         dword ptr [ebp-0C],eax
 0041F30F    mov         edi,esi
 0041F311    push        0
 0041F313    push        ebx
 0041F314    call        kernel32.GetFileSize
 0041F319    shr         eax,2
 0041F31C    test        eax,eax
>0041F31E    jle         0041F335
 0041F320    mov         dword ptr [ebp-10],1
 0041F327    mov         edx,dword ptr [edi]
 0041F329    add         dword ptr [ebp-0C],edx
 0041F32C    add         edi,4
 0041F32F    inc         dword ptr [ebp-10]
 0041F332    dec         eax
>0041F333    jne         0041F327
 0041F335    mov         eax,dword ptr [ebp-0C]
 0041F338    shr         eax,8
 0041F33B    mov         edx,dword ptr [ebp-0C]
 0041F33E    shl         edx,18
 0041F341    or          eax,edx
 0041F343    cmp         eax,dword ptr [esi+1D]
 0041F346    sete        byte ptr [ebp-1]
 0041F34A    cmp         byte ptr [ebp-1],0
>0041F34E    je          0041F585
 0041F354    mov         eax,esi
 0041F356    add         eax,dword ptr [esi+9]
 0041F359    mov         dword ptr [ebp-14],eax
 0041F35C    xor         eax,eax
 0041F35E    mov         dword ptr [ebp-18],eax
 0041F361    xor         eax,eax
 0041F363    mov         dword ptr [ebp-1C],eax
>0041F366    jmp         0041F3D1
 0041F368    mov         eax,dword ptr [ebp-10]
 0041F36B    add         dword ptr [ebp-18],eax
 0041F36E    lea         edx,[ebp-10]
 0041F371    lea         eax,[ebp-14]
 0041F374    call        0041F1C4
 0041F379    mov         eax,dword ptr [ebp-10]
 0041F37C    add         dword ptr [ebp-1C],eax
 0041F37F    lea         ecx,[ebp-20]
 0041F382    mov         eax,esi
 0041F384    mov         edx,dword ptr [ebp-1C]
 0041F387    call        0041F15C
 0041F38C    push        1
 0041F38E    mov         edi,dword ptr ds:[55B400];^gvar_0053D148
 0041F394    mov         edi,dword ptr [edi]
 0041F396    mov         ecx,7FFFFFFF
 0041F39B    mov         edx,dword ptr [ebp-20]
 0041F39E    mov         eax,41F5E4
 0041F3A3    call        edi
 0041F3A5    mov         ecx,eax
 0041F3A7    lea         eax,[ebp-20]
 0041F3AA    mov         edx,1
 0041F3AF    call        @WStrDelete
 0041F3B4    mov         eax,dword ptr [ebp-18]
 0041F3B7    push        eax
 0041F3B8    push        1
 0041F3BA    mov         eax,dword ptr [ebp-20]
 0041F3BD    push        eax
 0041F3BE    push        0
 0041F3C0    push        0
 0041F3C2    mov         eax,dword ptr [ebp+8]
 0041F3C5    mov         eax,dword ptr [eax-4]
 0041F3C8    mov         cl,1
 0041F3CA    mov         dl,1
 0041F3CC    call        0041C98C
 0041F3D1    lea         edx,[ebp-10]
 0041F3D4    lea         eax,[ebp-14]
 0041F3D7    call        0041F1C4
 0041F3DC    test        al,al
>0041F3DE    jne         0041F368
 0041F3E0    mov         eax,dword ptr [ebp+8]
 0041F3E3    mov         eax,dword ptr [eax-4]
 0041F3E6    mov         eax,dword ptr [eax+0C]
 0041F3E9    test        eax,eax
>0041F3EB    jle         0041F444
 0041F3ED    mov         edx,dword ptr [ebp+8]
 0041F3F0    push        edx
 0041F3F1    mov         edx,dword ptr [ebp+8]
 0041F3F4    mov         edx,eax
 0041F3F6    dec         edx
 0041F3F7    xor         eax,eax
 0041F3F9    call        0041E550
 0041F3FE    pop         ecx
 0041F3FF    mov         eax,dword ptr [ebp+8]
 0041F402    push        eax
 0041F403    xor         eax,eax
 0041F405    call        0041E7C0
 0041F40A    pop         ecx
 0041F40B    mov         eax,dword ptr [ebp+8]
 0041F40E    mov         eax,dword ptr [eax-4]
 0041F411    mov         eax,dword ptr [eax+44]
 0041F414    test        eax,eax
>0041F416    jbe         0041F444
 0041F418    mov         edx,dword ptr [ebp+8]
 0041F41B    mov         edx,dword ptr [edx-4]
 0041F41E    mov         edx,dword ptr [edx+0C]
 0041F421    lea         edx,[edx+edx*4]
 0041F424    mov         ecx,dword ptr [ebp+8]
 0041F427    mov         ecx,dword ptr [ecx-4]
 0041F42A    mov         ecx,dword ptr [ecx+8]
 0041F42D    mov         edi,dword ptr [ebp+8]
 0041F430    sub         eax,dword ptr [ecx+edx*4-10]
 0041F434    mov         ecx,dword ptr [ebp+8]
 0041F437    mov         ecx,dword ptr [ebp+8]
 0041F43A    mov         ecx,dword ptr [ecx-4]
 0041F43D    mov         ecx,dword ptr [ecx+8]
 0041F440    mov         dword ptr [ecx+edx*4-0C],eax
 0041F444    xor         eax,eax
 0041F446    mov         dword ptr [ebp-18],eax
 0041F449    xor         eax,eax
 0041F44B    mov         dword ptr [ebp-1C],eax
 0041F44E    xor         edi,edi
 0041F450    mov         eax,esi
 0041F452    add         eax,dword ptr [esi+0D]
 0041F455    mov         dword ptr [ebp-14],eax
>0041F458    jmp         0041F51C
 0041F45D    mov         eax,dword ptr [ebp-10]
 0041F460    add         dword ptr [ebp-18],eax
 0041F463    lea         edx,[ebp-10]
 0041F466    lea         eax,[ebp-14]
 0041F469    call        0041F1C4
 0041F46E    mov         eax,dword ptr [ebp-10]
 0041F471    add         dword ptr [ebp-1C],eax
 0041F474    lea         edx,[ebp-10]
 0041F477    lea         eax,[ebp-14]
 0041F47A    call        0041F1C4
 0041F47F    add         edi,dword ptr [ebp-10]
 0041F482    lea         ecx,[ebp-20]
 0041F485    mov         eax,esi
 0041F487    mov         edx,dword ptr [ebp-1C]
 0041F48A    call        0041F15C
 0041F48F    test        edi,edi
>0041F491    jle         0041F506
 0041F493    push        dword ptr [ebp-20]
 0041F496    push        41F5EC
 0041F49B    lea         ecx,[ebp-3C]
 0041F49E    mov         eax,esi
 0041F4A0    mov         edx,edi
 0041F4A2    call        0041F15C
 0041F4A7    push        dword ptr [ebp-3C]
 0041F4AA    lea         eax,[ebp-20]
 0041F4AD    mov         edx,3
 0041F4B2    call        @WStrCatN
 0041F4B7    lea         eax,[ebp-34]
 0041F4BA    push        eax
 0041F4BB    mov         eax,dword ptr [ebp+8]
 0041F4BE    mov         eax,dword ptr [eax-4]
 0041F4C1    mov         ecx,dword ptr [eax+40]
 0041F4C4    add         ecx,dword ptr [ebp-18]
 0041F4C7    mov         eax,dword ptr [ebp+8]
 0041F4CA    mov         eax,dword ptr [eax-4]
 0041F4CD    mov         dl,1
 0041F4CF    call        00421010
 0041F4D4    cmp         byte ptr [ebp-34],0
>0041F4D8    je          0041F506
 0041F4DA    mov         ecx,dword ptr ds:[55B6D0];^gvar_0053D158
 0041F4E0    mov         ecx,dword ptr [ecx]
 0041F4E2    mov         edx,dword ptr [ebp-20]
 0041F4E5    mov         eax,dword ptr [ebp-28]
 0041F4E8    call        ecx
 0041F4EA    test        al,al
>0041F4EC    je          0041F506
 0041F4EE    mov         eax,dword ptr [ebp-28]
 0041F4F1    call        @WStrLen
 0041F4F6    mov         ecx,eax
 0041F4F8    inc         ecx
 0041F4F9    lea         eax,[ebp-20]
 0041F4FC    mov         edx,1
 0041F501    call        @WStrDelete
 0041F506    mov         eax,dword ptr [ebp-18]
 0041F509    push        eax
 0041F50A    push        0
 0041F50C    mov         eax,dword ptr [ebp+8]
 0041F50F    mov         eax,dword ptr [eax-4]
 0041F512    mov         ecx,dword ptr [ebp-20]
 0041F515    mov         dl,1
 0041F517    call        0041CC28
 0041F51C    lea         edx,[ebp-10]
 0041F51F    lea         eax,[ebp-14]
 0041F522    call        0041F1C4
 0041F527    test        al,al
>0041F529    jne         0041F45D
 0041F52F    xor         eax,eax
 0041F531    mov         dword ptr [ebp-18],eax
 0041F534    xor         eax,eax
 0041F536    mov         dword ptr [ebp-1C],eax
 0041F539    mov         eax,esi
 0041F53B    add         eax,dword ptr [esi+11]
 0041F53E    mov         dword ptr [ebp-14],eax
>0041F541    jmp         0041F576
 0041F543    mov         eax,dword ptr [ebp-10]
 0041F546    add         dword ptr [ebp-18],eax
 0041F549    lea         edx,[ebp-10]
 0041F54C    lea         eax,[ebp-14]
 0041F54F    call        0041F1C4
 0041F554    mov         eax,dword ptr [ebp-10]
 0041F557    add         dword ptr [ebp-1C],eax
 0041F55A    push        0
 0041F55C    mov         eax,dword ptr [ebp+8]
 0041F55F    mov         eax,dword ptr [eax-4]
 0041F562    mov         ecx,dword ptr [eax+40]
 0041F565    add         ecx,dword ptr [ebp-18]
 0041F568    mov         eax,dword ptr [ebp+8]
 0041F56B    mov         eax,dword ptr [eax-4]
 0041F56E    mov         edx,dword ptr [ebp-1C]
 0041F571    call        0041D010
 0041F576    lea         edx,[ebp-10]
 0041F579    lea         eax,[ebp-14]
 0041F57C    call        0041F1C4
 0041F581    test        al,al
>0041F583    jne         0041F543
 0041F585    push        esi
 0041F586    call        kernel32.UnmapViewOfFile
 0041F58B    mov         eax,dword ptr [ebp-8]
 0041F58E    push        eax
 0041F58F    call        kernel32.CloseHandle
 0041F594    push        ebx
 0041F595    call        kernel32.CloseHandle
 0041F59A    xor         eax,eax
 0041F59C    pop         edx
 0041F59D    pop         ecx
 0041F59E    pop         ecx
 0041F59F    mov         dword ptr fs:[eax],edx
 0041F5A2    push        41F5D5
 0041F5A7    lea         eax,[ebp-3C]
 0041F5AA    call        @WStrClr
 0041F5AF    lea         eax,[ebp-38]
 0041F5B2    call        @LStrClr
 0041F5B7    lea         eax,[ebp-34]
 0041F5BA    mov         edx,dword ptr ds:[41C61C];TMfSegment
 0041F5C0    call        @FinalizeRecord
 0041F5C5    lea         eax,[ebp-20]
 0041F5C8    call        @WStrClr
 0041F5CD    ret
>0041F5CE    jmp         @HandleFinally
>0041F5D3    jmp         0041F5A7
 0041F5D5    mov         al,byte ptr [ebp-1]
 0041F5D8    pop         edi
 0041F5D9    pop         esi
 0041F5DA    pop         ebx
 0041F5DB    mov         esp,ebp
 0041F5DD    pop         ebp
 0041F5DE    ret
end;*}

//0041F5F0
{*function sub_0041F5F0:?;
begin
 0041F5F0    push        ebp
 0041F5F1    mov         ebp,esp
 0041F5F3    add         esp,0FFFFFDE4
 0041F5F9    push        ebx
 0041F5FA    xor         eax,eax
 0041F5FC    mov         dword ptr [ebp-21C],eax
 0041F602    mov         dword ptr [ebp-218],eax
 0041F608    mov         dword ptr [ebp-4],eax
 0041F60B    mov         dword ptr [ebp-8],eax
 0041F60E    xor         eax,eax
 0041F610    push        ebp
 0041F611    push        41F811
 0041F616    push        dword ptr fs:[eax]
 0041F619    mov         dword ptr fs:[eax],esp
 0041F61C    cmp         dword ptr ds:[53FDD4],0;gvar_0053FDD4:Pointer
>0041F623    jne         0041F798
 0041F629    call        kernel32.GetVersion
 0041F62E    test        eax,80000000
>0041F633    jne         0041F6B0
 0041F635    push        104
 0041F63A    lea         eax,[ebp-212]
 0041F640    push        eax
 0041F641    mov         eax,[0055C664];gvar_0055C664
 0041F646    push        eax
 0041F647    call        kernel32.GetModuleFileNameW
 0041F64C    lea         eax,[ebp-4]
 0041F64F    lea         edx,[ebp-212]
 0041F655    mov         ecx,105
 0041F65A    call        @WStrFromWArray
 0041F65F    push        1
 0041F661    mov         ebx,dword ptr ds:[55B400];^gvar_0053D148
 0041F667    mov         ebx,dword ptr [ebx]
 0041F669    mov         ecx,7FFFFFFF
 0041F66E    mov         edx,dword ptr [ebp-4]
 0041F671    mov         eax,41F824
 0041F676    call        ebx
 0041F678    mov         edx,eax
 0041F67A    inc         edx
 0041F67B    lea         eax,[ebp-4]
 0041F67E    mov         ecx,7FFFFFFF
 0041F683    call        @WStrDelete
 0041F688    lea         eax,[ebp-218]
 0041F68E    mov         ecx,41F82C;'dbghelp.dll'
 0041F693    mov         edx,dword ptr [ebp-4]
 0041F696    call        @WStrCat3
 0041F69B    mov         eax,dword ptr [ebp-218]
 0041F6A1    call        @WStrToPWChar
 0041F6A6    push        eax
 0041F6A7    call        kernel32.LoadLibraryW
 0041F6AC    mov         ebx,eax
>0041F6AE    jmp         0041F724
 0041F6B0    push        104
 0041F6B5    lea         eax,[ebp-212]
 0041F6BB    push        eax
 0041F6BC    mov         eax,[0055C664];gvar_0055C664
 0041F6C1    push        eax
 0041F6C2    call        kernel32.GetModuleFileNameA
 0041F6C7    lea         eax,[ebp-8]
 0041F6CA    lea         edx,[ebp-212]
 0041F6D0    call        @LStrFromPChar
 0041F6D5    push        1
 0041F6D7    mov         ebx,dword ptr ds:[55B658];^gvar_0053D0E8
 0041F6DD    mov         ebx,dword ptr [ebx]
 0041F6DF    mov         ecx,7FFFFFFF
 0041F6E4    mov         edx,dword ptr [ebp-8]
 0041F6E7    mov         eax,41F84C;'\'
 0041F6EC    call        ebx
 0041F6EE    mov         edx,eax
 0041F6F0    inc         edx
 0041F6F1    lea         eax,[ebp-8]
 0041F6F4    mov         ecx,7FFFFFFF
 0041F6F9    call        @LStrDelete
 0041F6FE    lea         eax,[ebp-21C]
 0041F704    mov         ecx,41F858;'dbghelp.dll'
 0041F709    mov         edx,dword ptr [ebp-8]
 0041F70C    call        @LStrCat3
 0041F711    mov         eax,dword ptr [ebp-21C]
 0041F717    call        @LStrToPChar
 0041F71C    push        eax
 0041F71D    call        kernel32.LoadLibraryA
 0041F722    mov         ebx,eax
 0041F724    test        ebx,ebx
>0041F726    je          0041F798
 0041F728    push        41F864;'SymInitializeW'
 0041F72D    push        ebx
 0041F72E    call        kernel32.GetProcAddress
 0041F733    mov         [0053FDD0],eax;gvar_0053FDD0:Pointer
 0041F738    push        41F874;'SymCleanup'
 0041F73D    push        ebx
 0041F73E    call        kernel32.GetProcAddress
 0041F743    mov         [0053FDD4],eax;gvar_0053FDD4:Pointer
 0041F748    push        41F880;'SymLoadModuleExW'
 0041F74D    push        ebx
 0041F74E    call        kernel32.GetProcAddress
 0041F753    mov         [0053FDD8],eax;gvar_0053FDD8:Pointer
 0041F758    push        41F894;'SymUnloadModule64'
 0041F75D    push        ebx
 0041F75E    call        kernel32.GetProcAddress
 0041F763    mov         [0053FDDC],eax;gvar_0053FDDC:Pointer
 0041F768    push        41F8A8;'SymGetModuleInfoW64'
 0041F76D    push        ebx
 0041F76E    call        kernel32.GetProcAddress
 0041F773    mov         [0053FDE0],eax;gvar_0053FDE0:Pointer
 0041F778    push        41F8BC;'SymEnumSymbolsW'
 0041F77D    push        ebx
 0041F77E    call        kernel32.GetProcAddress
 0041F783    mov         [0053FDE4],eax;gvar_0053FDE4:Pointer
 0041F788    push        41F8CC;'SymEnumLinesW'
 0041F78D    push        ebx
 0041F78E    call        kernel32.GetProcAddress
 0041F793    mov         [0053FDE8],eax;gvar_0053FDE8:Pointer
 0041F798    cmp         dword ptr ds:[53FDD0],0;gvar_0053FDD0:Pointer
>0041F79F    je          0041F7D7
 0041F7A1    cmp         dword ptr ds:[53FDD4],0;gvar_0053FDD4:Pointer
>0041F7A8    je          0041F7D7
 0041F7AA    cmp         dword ptr ds:[53FDD8],0;gvar_0053FDD8:Pointer
>0041F7B1    je          0041F7D7
 0041F7B3    cmp         dword ptr ds:[53FDDC],0;gvar_0053FDDC:Pointer
>0041F7BA    je          0041F7D7
 0041F7BC    cmp         dword ptr ds:[53FDE0],0;gvar_0053FDE0:Pointer
>0041F7C3    je          0041F7D7
 0041F7C5    cmp         dword ptr ds:[53FDE4],0;gvar_0053FDE4:Pointer
>0041F7CC    je          0041F7D7
 0041F7CE    cmp         dword ptr ds:[53FDE8],0;gvar_0053FDE8:Pointer
>0041F7D5    jne         0041F7DB
 0041F7D7    xor         ebx,ebx
>0041F7D9    jmp         0041F7DD
 0041F7DB    mov         bl,1
 0041F7DD    xor         eax,eax
 0041F7DF    pop         edx
 0041F7E0    pop         ecx
 0041F7E1    pop         ecx
 0041F7E2    mov         dword ptr fs:[eax],edx
 0041F7E5    push        41F818
 0041F7EA    lea         eax,[ebp-21C]
 0041F7F0    call        @LStrClr
 0041F7F5    lea         eax,[ebp-218]
 0041F7FB    call        @WStrClr
 0041F800    lea         eax,[ebp-8]
 0041F803    call        @LStrClr
 0041F808    lea         eax,[ebp-4]
 0041F80B    call        @WStrClr
 0041F810    ret
>0041F811    jmp         @HandleFinally
>0041F816    jmp         0041F7EA
 0041F818    mov         eax,ebx
 0041F81A    pop         ebx
 0041F81B    mov         esp,ebp
 0041F81D    pop         ebp
 0041F81E    ret
end;*}

//0041F8DC
{*function sub_0041F8DC(?:WideString; ?:?):?;
begin
 0041F8DC    push        ebp
 0041F8DD    mov         ebp,esp
 0041F8DF    add         esp,0FFFFF348
 0041F8E5    push        ebx
 0041F8E6    mov         ebx,eax
 0041F8E8    mov         byte ptr [ebp-1],0
 0041F8EC    call        0041F5F0
 0041F8F1    test        al,al
>0041F8F3    je          0041FAE0
 0041F8F9    push        41FAE8
 0041F8FE    push        0
 0041F900    push        0
 0041F902    call        004071F4
 0041F907    mov         dword ptr [ebp-8],eax
 0041F90A    push        0FF
 0041F90C    mov         eax,dword ptr [ebp-8]
 0041F90F    push        eax
 0041F910    call        kernel32.WaitForSingleObject
 0041F915    xor         ecx,ecx
 0041F917    push        ebp
 0041F918    push        41FAD9
 0041F91D    push        dword ptr fs:[ecx]
 0041F920    mov         dword ptr fs:[ecx],esp
 0041F923    push        0
 0041F925    push        0
 0041F927    call        kernel32.GetCurrentProcess
 0041F92C    push        eax
 0041F92D    call        dword ptr ds:[53FDD0]
 0041F933    test        eax,eax
>0041F935    je          0041FAB9
 0041F93B    push        0
 0041F93D    push        0
 0041F93F    push        0
 0041F941    push        0
 0041F943    push        80000000
 0041F948    push        0
 0041F94A    mov         eax,ebx
 0041F94C    call        @WStrToPWChar
 0041F951    push        eax
 0041F952    push        0
 0041F954    call        kernel32.GetCurrentProcess
 0041F959    push        eax
 0041F95A    call        dword ptr ds:[53FDD8]
 0041F960    cmp         edx,0
>0041F963    jne         0041FAAD
 0041F969    cmp         eax,80000000
>0041F96E    jne         0041FAAD
 0041F974    lea         eax,[ebp-0CB8]
 0041F97A    mov         edx,0CB0
 0041F97F    call        00408130
 0041F984    mov         dword ptr [ebp-0CB8],0CB0
 0041F98E    lea         eax,[ebp-0CB8]
 0041F994    push        eax
 0041F995    push        0
 0041F997    push        80000000
 0041F99C    call        kernel32.GetCurrentProcess
 0041F9A1    push        eax
 0041F9A2    call        dword ptr ds:[53FDE0]
 0041F9A8    test        eax,eax
>0041F9AA    je          0041FA9A
 0041F9B0    mov         eax,dword ptr [ebp+8]
 0041F9B3    mov         eax,dword ptr [eax-4]
 0041F9B6    push        eax
 0041F9B7    mov         eax,41D104
 0041F9BC    push        eax
 0041F9BD    push        0
 0041F9BF    push        0
 0041F9C1    push        0
 0041F9C3    push        80000000
 0041F9C8    call        kernel32.GetCurrentProcess
 0041F9CD    push        eax
 0041F9CE    call        dword ptr ds:[53FDE8]
 0041F9D4    test        eax,eax
>0041F9D6    je          0041FA9A
 0041F9DC    mov         eax,dword ptr [ebp+8]
 0041F9DF    mov         eax,dword ptr [eax-4]
 0041F9E2    cmp         dword ptr [eax+0C],0
>0041F9E6    jle         0041FA9A
 0041F9EC    mov         eax,dword ptr [ebp+8]
 0041F9EF    push        eax
 0041F9F0    mov         eax,dword ptr [ebp+8]
 0041F9F3    mov         eax,dword ptr [eax-4]
 0041F9F6    mov         edx,dword ptr [eax+0C]
 0041F9F9    dec         edx
 0041F9FA    xor         eax,eax
 0041F9FC    call        0041E550
 0041FA01    pop         ecx
 0041FA02    mov         eax,dword ptr [ebp+8]
 0041FA05    push        eax
 0041FA06    xor         eax,eax
 0041FA08    call        0041E7C0
 0041FA0D    pop         ecx
 0041FA0E    mov         eax,dword ptr [ebp+8]
 0041FA11    mov         eax,dword ptr [eax-4]
 0041FA14    mov         eax,dword ptr [eax+44]
 0041FA17    test        eax,eax
>0041FA19    jbe         0041FA47
 0041FA1B    mov         edx,dword ptr [ebp+8]
 0041FA1E    mov         edx,dword ptr [edx-4]
 0041FA21    mov         edx,dword ptr [edx+0C]
 0041FA24    lea         edx,[edx+edx*4]
 0041FA27    mov         ecx,dword ptr [ebp+8]
 0041FA2A    mov         ecx,dword ptr [ecx-4]
 0041FA2D    mov         ecx,dword ptr [ecx+8]
 0041FA30    mov         ebx,dword ptr [ebp+8]
 0041FA33    sub         eax,dword ptr [ecx+edx*4-10]
 0041FA37    mov         ecx,dword ptr [ebp+8]
 0041FA3A    mov         ecx,dword ptr [ebp+8]
 0041FA3D    mov         ecx,dword ptr [ecx-4]
 0041FA40    mov         ecx,dword ptr [ecx+8]
 0041FA43    mov         dword ptr [ecx+edx*4-0C],eax
 0041FA47    mov         eax,dword ptr [ebp+8]
 0041FA4A    mov         eax,dword ptr [eax-4]
 0041FA4D    push        eax
 0041FA4E    mov         eax,41D088
 0041FA53    push        eax
 0041FA54    push        0
 0041FA56    push        0
 0041FA58    push        80000000
 0041FA5D    call        kernel32.GetCurrentProcess
 0041FA62    push        eax
 0041FA63    call        dword ptr ds:[53FDE4]
 0041FA69    cmp         eax,1
 0041FA6C    sbb         eax,eax
 0041FA6E    inc         eax
 0041FA6F    mov         byte ptr [ebp-1],al
 0041FA72    cmp         byte ptr [ebp-1],0
>0041FA76    je          0041FA9A
 0041FA78    mov         eax,dword ptr [ebp+8]
 0041FA7B    mov         eax,dword ptr [eax-4]
 0041FA7E    cmp         dword ptr [eax+18],0
>0041FA82    jle         0041FA9A
 0041FA84    mov         eax,dword ptr [ebp+8]
 0041FA87    push        eax
 0041FA88    mov         eax,dword ptr [ebp+8]
 0041FA8B    mov         eax,dword ptr [eax-4]
 0041FA8E    mov         edx,dword ptr [eax+18]
 0041FA91    dec         edx
 0041FA92    xor         eax,eax
 0041FA94    call        0041E404
 0041FA99    pop         ecx
 0041FA9A    push        0
 0041FA9C    push        80000000
 0041FAA1    call        kernel32.GetCurrentProcess
 0041FAA6    push        eax
 0041FAA7    call        dword ptr ds:[53FDDC]
 0041FAAD    call        kernel32.GetCurrentProcess
 0041FAB2    push        eax
 0041FAB3    call        dword ptr ds:[53FDD4]
 0041FAB9    xor         eax,eax
 0041FABB    pop         edx
 0041FABC    pop         ecx
 0041FABD    pop         ecx
 0041FABE    mov         dword ptr fs:[eax],edx
 0041FAC1    push        41FAE0
 0041FAC6    mov         eax,dword ptr [ebp-8]
 0041FAC9    push        eax
 0041FACA    call        kernel32.ReleaseMutex
 0041FACF    mov         eax,dword ptr [ebp-8]
 0041FAD2    push        eax
 0041FAD3    call        kernel32.CloseHandle
 0041FAD8    ret
>0041FAD9    jmp         @HandleFinally
>0041FADE    jmp         0041FAC6
 0041FAE0    mov         al,byte ptr [ebp-1]
 0041FAE3    pop         ebx
 0041FAE4    mov         esp,ebp
 0041FAE6    pop         ebp
 0041FAE7    ret
end;*}

//0041FB20
{*procedure sub_0041FB20(?:?; ?:?);
begin
 0041FB20    push        ebp
 0041FB21    mov         ebp,esp
 0041FB23    push        ebx
 0041FB24    push        esi
 0041FB25    push        edi
 0041FB26    mov         ebx,eax
 0041FB28    mov         esi,dword ptr [ebp+8]
 0041FB2B    add         esi,0FFFFFFFC
 0041FB2E    mov         eax,dword ptr [ebx]
 0041FB30    inc         eax
 0041FB31    push        eax
 0041FB32    mov         eax,esi
 0041FB34    mov         ecx,1
 0041FB39    mov         edx,dword ptr ds:[41FAFC];_DynArr_14_8
 0041FB3F    call        @DynArraySetLength
 0041FB44    add         esp,4
 0041FB47    add         ebx,4
 0041FB4A    mov         eax,dword ptr [esi]
 0041FB4C    call        00405CE8
 0041FB51    test        eax,eax
>0041FB53    jle         0041FB6F
 0041FB55    mov         edx,1
 0041FB5A    mov         ecx,dword ptr [esi]
 0041FB5C    lea         edi,[ebx+1]
 0041FB5F    mov         dword ptr [ecx+edx*4],edi
 0041FB62    xor         ecx,ecx
 0041FB64    mov         cl,byte ptr [ebx]
 0041FB66    add         ecx,2
 0041FB69    add         ebx,ecx
 0041FB6B    inc         edx
 0041FB6C    dec         eax
>0041FB6D    jne         0041FB5A
 0041FB6F    pop         edi
 0041FB70    pop         esi
 0041FB71    pop         ebx
 0041FB72    pop         ebp
 0041FB73    ret
end;*}

//0041FB74
{*procedure sub_0041FB74(?:?; ?:?);
begin
 0041FB74    push        ebp
 0041FB75    mov         ebp,esp
 0041FB77    push        0
 0041FB79    push        0
 0041FB7B    push        ebx
 0041FB7C    push        esi
 0041FB7D    push        edi
 0041FB7E    mov         esi,eax
 0041FB80    xor         eax,eax
 0041FB82    push        ebp
 0041FB83    push        41FC49
 0041FB88    push        dword ptr fs:[eax]
 0041FB8B    mov         dword ptr fs:[eax],esp
 0041FB8E    lea         eax,[ebp-8]
 0041FB91    lea         edx,[esi+8]
 0041FB94    mov         edx,dword ptr [edx]
 0041FB96    mov         ecx,dword ptr [ebp+8]
 0041FB99    mov         ecx,dword ptr [ecx-4]
 0041FB9C    mov         edx,dword ptr [ecx+edx*4]
 0041FB9F    call        @LStrFromPChar
 0041FBA4    mov         eax,dword ptr [ebp-8]
 0041FBA7    lea         edx,[ebp-4]
 0041FBAA    call        0040BC40
 0041FBAF    mov         eax,dword ptr [ebp-4]
 0041FBB2    call        @WStrLen
 0041FBB7    mov         ebx,eax
 0041FBB9    cmp         ebx,1
>0041FBBC    jl          0041FBDF
 0041FBBE    mov         eax,dword ptr [ebp-4]
 0041FBC1    cmp         word ptr [eax+ebx*2-2],5C
>0041FBC7    jne         0041FBDA
 0041FBC9    lea         eax,[ebp-4]
 0041FBCC    mov         ecx,ebx
 0041FBCE    mov         edx,1
 0041FBD3    call        @WStrDelete
>0041FBD8    jmp         0041FBDF
 0041FBDA    dec         ebx
 0041FBDB    test        ebx,ebx
>0041FBDD    jne         0041FBBE
 0041FBDF    lea         eax,[esi+4]
 0041FBE2    movzx       ebx,word ptr [eax]
 0041FBE5    add         esi,1C
 0041FBE8    dec         ebx
 0041FBE9    test        ebx,ebx
>0041FBEB    jl          0041FC2B
 0041FBED    inc         ebx
 0041FBEE    lea         eax,[esi+8]
 0041FBF1    mov         edi,dword ptr [eax]
 0041FBF3    test        edi,edi
>0041FBF5    jbe         0041FC25
 0041FBF7    lea         eax,[esi+2]
 0041FBFA    cmp         word ptr [eax],0
 0041FBFE    setne       al
 0041FC01    lea         edx,[esi+4]
 0041FC04    mov         edx,dword ptr [edx]
 0041FC06    test        al,al
>0041FC08    je          0041FC25
 0041FC0A    push        edx
 0041FC0B    push        edi
 0041FC0C    mov         edx,dword ptr [ebp-4]
 0041FC0F    push        edx
 0041FC10    push        1
 0041FC12    push        0
 0041FC14    mov         edx,dword ptr [ebp+8]
 0041FC17    mov         edx,dword ptr [edx+0C]
 0041FC1A    mov         edx,dword ptr [edx-4]
 0041FC1D    mov         cl,1
 0041FC1F    xchg        eax,edx
 0041FC20    call        0041C98C
 0041FC25    add         esi,0C
 0041FC28    dec         ebx
>0041FC29    jne         0041FBEE
 0041FC2B    xor         eax,eax
 0041FC2D    pop         edx
 0041FC2E    pop         ecx
 0041FC2F    pop         ecx
 0041FC30    mov         dword ptr fs:[eax],edx
 0041FC33    push        41FC50
 0041FC38    lea         eax,[ebp-8]
 0041FC3B    call        @LStrClr
 0041FC40    lea         eax,[ebp-4]
 0041FC43    call        @WStrClr
 0041FC48    ret
>0041FC49    jmp         @HandleFinally
>0041FC4E    jmp         0041FC38
 0041FC50    pop         edi
 0041FC51    pop         esi
 0041FC52    pop         ebx
 0041FC53    pop         ecx
 0041FC54    pop         ecx
 0041FC55    pop         ebp
 0041FC56    ret
end;*}

//0041FC58
{*procedure sub_0041FC58(?:?; ?:?; ?:?);
begin
 0041FC58    push        ebp
 0041FC59    mov         ebp,esp
 0041FC5B    mov         ecx,4
 0041FC60    push        0
 0041FC62    push        0
 0041FC64    dec         ecx
>0041FC65    jne         0041FC60
 0041FC67    push        ecx
 0041FC68    push        ebx
 0041FC69    push        esi
 0041FC6A    push        edi
 0041FC6B    mov         edi,edx
 0041FC6D    mov         esi,eax
 0041FC6F    xor         eax,eax
 0041FC71    push        ebp
 0041FC72    push        41FEA9
 0041FC77    push        dword ptr fs:[eax]
 0041FC7A    mov         dword ptr fs:[eax],esp
 0041FC7D    mov         ebx,esi
>0041FC7F    jmp         0041FE3E
 0041FC84    lea         eax,[ebx+2]
 0041FC87    cmp         word ptr [eax],204
>0041FC8C    je          0041FC98
 0041FC8E    lea         eax,[ebx+2]
 0041FC91    cmp         word ptr [eax],205
>0041FC96    jne         0041FCFF
 0041FC98    cmp         word ptr [ebx],2C
>0041FC9C    jb          0041FCFF
 0041FC9E    lea         eax,[ebx+28]
 0041FCA1    cmp         dword ptr [eax],0
>0041FCA4    je          0041FCFF
 0041FCA6    mov         eax,dword ptr [ebp+8]
 0041FCA9    mov         eax,dword ptr [eax-4]
 0041FCAC    call        @LStrLen
 0041FCB1    lea         edx,[ebx+28]
 0041FCB4    cmp         eax,dword ptr [edx]
>0041FCB6    jbe         0041FCFF
 0041FCB8    lea         eax,[ebx+1C]
 0041FCBB    mov         eax,dword ptr [eax]
 0041FCBD    mov         dword ptr [ebp-4],eax
 0041FCC0    mov         eax,dword ptr [ebp-4]
 0041FCC3    push        eax
 0041FCC4    push        1
 0041FCC6    lea         eax,[ebp-0C]
 0041FCC9    lea         edx,[ebx+28]
 0041FCCC    mov         edx,dword ptr [edx]
 0041FCCE    mov         ecx,dword ptr [ebp+8]
 0041FCD1    mov         ecx,dword ptr [ecx-4]
 0041FCD4    mov         edx,dword ptr [ecx+edx*4]
 0041FCD7    call        @LStrFromPChar
 0041FCDC    mov         eax,dword ptr [ebp-0C]
 0041FCDF    lea         edx,[ebp-8]
 0041FCE2    call        0040BC40
 0041FCE7    mov         ecx,dword ptr [ebp-8]
 0041FCEA    mov         eax,dword ptr [ebp+8]
 0041FCED    mov         eax,dword ptr [eax+0C]
 0041FCF0    mov         eax,dword ptr [eax-4]
 0041FCF3    mov         dl,1
 0041FCF5    call        0041CC28
>0041FCFA    jmp         0041FE36
 0041FCFF    lea         eax,[ebx+2]
 0041FD02    cmp         word ptr [eax],201
>0041FD07    je          0041FD13
 0041FD09    lea         eax,[ebx+2]
 0041FD0C    cmp         word ptr [eax],202
>0041FD11    jne         0041FD74
 0041FD13    cmp         word ptr [ebx],14
>0041FD17    jb          0041FD74
 0041FD19    lea         eax,[ebx+10]
 0041FD1C    cmp         dword ptr [eax],0
>0041FD1F    je          0041FD74
 0041FD21    mov         eax,dword ptr [ebp+8]
 0041FD24    mov         eax,dword ptr [eax-4]
 0041FD27    call        @LStrLen
 0041FD2C    lea         edx,[ebx+10]
 0041FD2F    cmp         eax,dword ptr [edx]
>0041FD31    jbe         0041FD74
 0041FD33    lea         eax,[ebx+4]
 0041FD36    mov         eax,dword ptr [eax]
 0041FD38    push        eax
 0041FD39    push        1
 0041FD3B    lea         eax,[ebp-14]
 0041FD3E    lea         edx,[ebx+10]
 0041FD41    mov         edx,dword ptr [edx]
 0041FD43    mov         ecx,dword ptr [ebp+8]
 0041FD46    mov         ecx,dword ptr [ecx-4]
 0041FD49    mov         edx,dword ptr [ecx+edx*4]
 0041FD4C    call        @LStrFromPChar
 0041FD51    mov         eax,dword ptr [ebp-14]
 0041FD54    lea         edx,[ebp-10]
 0041FD57    call        0040BC40
 0041FD5C    mov         ecx,dword ptr [ebp-10]
 0041FD5F    mov         eax,dword ptr [ebp+8]
 0041FD62    mov         eax,dword ptr [eax+0C]
 0041FD65    mov         eax,dword ptr [eax-4]
 0041FD68    xor         edx,edx
 0041FD6A    call        0041CC28
>0041FD6F    jmp         0041FE36
 0041FD74    lea         eax,[ebx+2]
 0041FD77    cmp         word ptr [eax],20
>0041FD7B    jne         0041FDD9
 0041FD7D    cmp         word ptr [ebx],1A
>0041FD81    jb          0041FDD9
 0041FD83    mov         eax,dword ptr [ebp+8]
 0041FD86    mov         eax,dword ptr [eax-4]
 0041FD89    call        @LStrLen
 0041FD8E    lea         edx,[ebx+0C]
 0041FD91    cmp         eax,dword ptr [edx]
>0041FD93    jbe         0041FDD9
 0041FD95    lea         eax,[ebx+14]
 0041FD98    mov         eax,dword ptr [eax]
 0041FD9A    mov         dword ptr [ebp-4],eax
 0041FD9D    mov         eax,dword ptr [ebp-4]
 0041FDA0    push        eax
 0041FDA1    push        1
 0041FDA3    lea         eax,[ebp-1C]
 0041FDA6    lea         edx,[ebx+0C]
 0041FDA9    mov         edx,dword ptr [edx]
 0041FDAB    mov         ecx,dword ptr [ebp+8]
 0041FDAE    mov         ecx,dword ptr [ecx-4]
 0041FDB1    mov         edx,dword ptr [ecx+edx*4]
 0041FDB4    call        @LStrFromPChar
 0041FDB9    mov         eax,dword ptr [ebp-1C]
 0041FDBC    lea         edx,[ebp-18]
 0041FDBF    call        0040BC40
 0041FDC4    mov         ecx,dword ptr [ebp-18]
 0041FDC7    mov         eax,dword ptr [ebp+8]
 0041FDCA    mov         eax,dword ptr [eax+0C]
 0041FDCD    mov         eax,dword ptr [eax-4]
 0041FDD0    mov         dl,1
 0041FDD2    call        0041CC28
>0041FDD7    jmp         0041FE36
 0041FDD9    lea         eax,[ebx+2]
 0041FDDC    cmp         word ptr [eax],21
>0041FDE0    jne         0041FE36
 0041FDE2    cmp         word ptr [ebx],18
>0041FDE6    jb          0041FE36
 0041FDE8    mov         eax,dword ptr [ebp+8]
 0041FDEB    mov         eax,dword ptr [eax-4]
 0041FDEE    call        @LStrLen
 0041FDF3    lea         edx,[ebx+0C]
 0041FDF6    cmp         eax,dword ptr [edx]
>0041FDF8    jbe         0041FE36
 0041FDFA    lea         eax,[ebx+14]
 0041FDFD    mov         eax,dword ptr [eax]
 0041FDFF    push        eax
 0041FE00    push        1
 0041FE02    lea         eax,[ebp-24]
 0041FE05    lea         edx,[ebx+0C]
 0041FE08    mov         edx,dword ptr [edx]
 0041FE0A    mov         ecx,dword ptr [ebp+8]
 0041FE0D    mov         ecx,dword ptr [ecx-4]
 0041FE10    mov         edx,dword ptr [ecx+edx*4]
 0041FE13    call        @LStrFromPChar
 0041FE18    mov         eax,dword ptr [ebp-24]
 0041FE1B    lea         edx,[ebp-20]
 0041FE1E    call        0040BC40
 0041FE23    mov         ecx,dword ptr [ebp-20]
 0041FE26    mov         eax,dword ptr [ebp+8]
 0041FE29    mov         eax,dword ptr [eax+0C]
 0041FE2C    mov         eax,dword ptr [eax-4]
 0041FE2F    xor         edx,edx
 0041FE31    call        0041CC28
 0041FE36    movzx       eax,word ptr [ebx]
 0041FE39    add         eax,2
 0041FE3C    add         ebx,eax
 0041FE3E    lea         eax,[edi+esi]
 0041FE41    lea         edx,[ebx+2]
 0041FE44    cmp         eax,edx
>0041FE46    jb          0041FE5B
 0041FE48    cmp         word ptr [ebx],0
>0041FE4C    jbe         0041FE5B
 0041FE4E    movzx       edx,word ptr [ebx]
 0041FE51    add         edx,ebx
 0041FE53    cmp         eax,edx
>0041FE55    jae         0041FC84
 0041FE5B    xor         eax,eax
 0041FE5D    pop         edx
 0041FE5E    pop         ecx
 0041FE5F    pop         ecx
 0041FE60    mov         dword ptr fs:[eax],edx
 0041FE63    push        41FEB0
 0041FE68    lea         eax,[ebp-24]
 0041FE6B    call        @LStrClr
 0041FE70    lea         eax,[ebp-20]
 0041FE73    call        @WStrClr
 0041FE78    lea         eax,[ebp-1C]
 0041FE7B    call        @LStrClr
 0041FE80    lea         eax,[ebp-18]
 0041FE83    call        @WStrClr
 0041FE88    lea         eax,[ebp-14]
 0041FE8B    call        @LStrClr
 0041FE90    lea         eax,[ebp-10]
 0041FE93    call        @WStrClr
 0041FE98    lea         eax,[ebp-0C]
 0041FE9B    call        @LStrClr
 0041FEA0    lea         eax,[ebp-8]
 0041FEA3    call        @WStrClr
 0041FEA8    ret
>0041FEA9    jmp         @HandleFinally
>0041FEAE    jmp         0041FE68
 0041FEB0    pop         edi
 0041FEB1    pop         esi
 0041FEB2    pop         ebx
 0041FEB3    mov         esp,ebp
 0041FEB5    pop         ebp
 0041FEB6    ret
end;*}

//0041FEB8
{*procedure sub_0041FEB8(?:?; ?:?; ?:?; ?:?);
begin
 0041FEB8    push        ebp
 0041FEB9    mov         ebp,esp
 0041FEBB    add         esp,0FFFFFFF0
 0041FEBE    push        ebx
 0041FEBF    push        esi
 0041FEC0    push        edi
 0041FEC1    mov         esi,ecx
 0041FEC3    mov         dword ptr [ebp-8],edx
 0041FEC6    mov         dword ptr [ebp-4],eax
 0041FEC9    mov         eax,dword ptr [ebp-4]
 0041FECC    movzx       ebx,word ptr [eax]
 0041FECF    cmp         ebx,1
>0041FED2    jl          0041FF80
 0041FED8    mov         eax,dword ptr [ebp+8]
 0041FEDB    mov         eax,dword ptr [eax+8]
 0041FEDE    cmp         ebx,dword ptr [eax-8]
>0041FEE1    jg          0041FF80
 0041FEE7    mov         edx,dword ptr [ebp-4]
 0041FEEA    add         edx,4
 0041FEED    mov         edi,edx
 0041FEEF    mov         eax,dword ptr [ebp-4]
 0041FEF2    add         eax,2
 0041FEF5    mov         ax,word ptr [eax]
 0041FEF8    movzx       ecx,ax
 0041FEFB    shl         ecx,2
 0041FEFE    add         ecx,edx
 0041FF00    push        ecx
 0041FF01    pop         edx
 0041FF02    mov         dword ptr [ebp-0C],edx
 0041FF05    mov         edx,dword ptr [ebp-8]
 0041FF08    xor         ecx,ecx
 0041FF0A    mov         dword ptr [edx],ecx
 0041FF0C    xor         edx,edx
 0041FF0E    mov         dword ptr [esi],edx
 0041FF10    movzx       eax,ax
 0041FF13    dec         eax
 0041FF14    test        eax,eax
>0041FF16    jl          0041FF80
 0041FF18    inc         eax
 0041FF19    mov         dword ptr [ebp-10],eax
 0041FF1C    mov         eax,dword ptr [edi]
 0041FF1E    mov         edx,dword ptr [ebp+8]
 0041FF21    mov         edx,dword ptr [edx+8]
 0041FF24    mov         edx,dword ptr [edx+0C]
 0041FF27    mov         edx,dword ptr [edx-4]
 0041FF2A    add         eax,dword ptr [edx+40]
 0041FF2D    mov         dword ptr [esi],eax
 0041FF2F    cmp         ebx,1
>0041FF32    jle         0041FF4A
 0041FF34    mov         eax,dword ptr [ebp+8]
 0041FF37    mov         eax,dword ptr [eax+8]
 0041FF3A    cmp         ebx,dword ptr [eax-8]
>0041FF3D    jge         0041FF4A
 0041FF3F    mov         eax,dword ptr [ebp+8]
 0041FF42    mov         eax,dword ptr [eax+8]
 0041FF45    mov         eax,dword ptr [eax-0C]
 0041FF48    add         dword ptr [esi],eax
 0041FF4A    mov         eax,dword ptr [ebp-8]
 0041FF4D    cmp         dword ptr [eax],0
>0041FF50    jne         0041FF59
 0041FF52    mov         eax,dword ptr [esi]
 0041FF54    mov         edx,dword ptr [ebp-8]
 0041FF57    mov         dword ptr [edx],eax
 0041FF59    push        0
 0041FF5B    mov         ecx,dword ptr [esi]
 0041FF5D    mov         eax,dword ptr [ebp-0C]
 0041FF60    movzx       edx,word ptr [eax]
 0041FF63    mov         eax,dword ptr [ebp+8]
 0041FF66    mov         eax,dword ptr [eax+8]
 0041FF69    mov         eax,dword ptr [eax+0C]
 0041FF6C    mov         eax,dword ptr [eax-4]
 0041FF6F    call        0041D010
 0041FF74    add         edi,4
 0041FF77    add         dword ptr [ebp-0C],2
 0041FF7B    dec         dword ptr [ebp-10]
>0041FF7E    jne         0041FF1C
 0041FF80    pop         edi
 0041FF81    pop         esi
 0041FF82    pop         ebx
 0041FF83    mov         esp,ebp
 0041FF85    pop         ebp
 0041FF86    ret
end;*}

//0041FF88
{*procedure sub_0041FF88(?:?; ?:?; ?:?);
begin
 0041FF88    push        ebp
 0041FF89    mov         ebp,esp
 0041FF8B    add         esp,0FFFFFFEC
 0041FF8E    push        ebx
 0041FF8F    push        esi
 0041FF90    push        edi
 0041FF91    xor         ecx,ecx
 0041FF93    mov         dword ptr [ebp-14],ecx
 0041FF96    mov         dword ptr [ebp-10],ecx
 0041FF99    mov         edi,edx
 0041FF9B    mov         dword ptr [ebp-4],eax
 0041FF9E    xor         eax,eax
 0041FFA0    push        ebp
 0041FFA1    push        420097
 0041FFA6    push        dword ptr fs:[eax]
 0041FFA9    mov         dword ptr fs:[eax],esp
 0041FFAC    lea         eax,[edi+6]
 0041FFAF    mov         esi,eax
 0041FFB1    lea         eax,[edi+2]
 0041FFB4    mov         ebx,dword ptr [eax]
 0041FFB6    test        ebx,ebx
>0041FFB8    je          00420009
 0041FFBA    lea         eax,[ebp-14]
 0041FFBD    mov         edx,dword ptr [ebp+8]
 0041FFC0    mov         edx,dword ptr [edx+8]
 0041FFC3    mov         edx,dword ptr [edx-4]
 0041FFC6    mov         edx,dword ptr [edx+ebx*4]
 0041FFC9    call        @LStrFromPChar
 0041FFCE    mov         eax,dword ptr [ebp-14]
 0041FFD1    lea         edx,[ebp-10]
 0041FFD4    call        0040BC40
 0041FFD9    mov         eax,dword ptr [ebp-10]
 0041FFDC    call        @WStrLen
 0041FFE1    mov         ebx,eax
 0041FFE3    cmp         ebx,1
>0041FFE6    jl          00420009
 0041FFE8    mov         eax,dword ptr [ebp-10]
 0041FFEB    cmp         word ptr [eax+ebx*2-2],5C
>0041FFF1    jne         00420004
 0041FFF3    lea         eax,[ebp-10]
 0041FFF6    mov         ecx,ebx
 0041FFF8    mov         edx,1
 0041FFFD    call        @WStrDelete
>00420002    jmp         00420009
 00420004    dec         ebx
 00420005    test        ebx,ebx
>00420007    jne         0041FFE8
 00420009    xor         eax,eax
 0042000B    mov         dword ptr [ebp-8],eax
 0042000E    xor         eax,eax
 00420010    mov         dword ptr [ebp-0C],eax
 00420013    movzx       ebx,word ptr [edi]
 00420016    dec         ebx
 00420017    test        ebx,ebx
>00420019    jl          00420079
 0042001B    inc         ebx
 0042001C    mov         eax,dword ptr [esi]
 0042001E    test        eax,eax
>00420020    je          00420073
 00420022    mov         edx,dword ptr [ebp+8]
 00420025    push        edx
 00420026    lea         ecx,[ebp-0C]
 00420029    lea         edx,[ebp-8]
 0042002C    mov         edi,dword ptr [ebp-4]
 0042002F    add         edi,eax
 00420031    mov         eax,edi
 00420033    call        0041FEB8
 00420038    pop         ecx
 00420039    mov         eax,dword ptr [ebp-10]
 0042003C    xor         edx,edx
 0042003E    call        @WStrCmp
>00420043    je          00420073
 00420045    cmp         dword ptr [ebp-8],0
>00420049    je          00420073
 0042004B    mov         eax,dword ptr [ebp-8]
 0042004E    push        eax
 0042004F    mov         edx,dword ptr [ebp-0C]
 00420052    sub         edx,eax
 00420054    inc         edx
 00420055    push        edx
 00420056    mov         eax,dword ptr [ebp-10]
 00420059    push        eax
 0042005A    push        1
 0042005C    push        0
 0042005E    mov         eax,dword ptr [ebp+8]
 00420061    mov         eax,dword ptr [eax+8]
 00420064    mov         eax,dword ptr [eax+0C]
 00420067    mov         eax,dword ptr [eax-4]
 0042006A    xor         ecx,ecx
 0042006C    mov         dl,1
 0042006E    call        0041C98C
 00420073    add         esi,4
 00420076    dec         ebx
>00420077    jne         0042001C
 00420079    xor         eax,eax
 0042007B    pop         edx
 0042007C    pop         ecx
 0042007D    pop         ecx
 0042007E    mov         dword ptr fs:[eax],edx
 00420081    push        42009E
 00420086    lea         eax,[ebp-14]
 00420089    call        @LStrClr
 0042008E    lea         eax,[ebp-10]
 00420091    call        @WStrClr
 00420096    ret
>00420097    jmp         @HandleFinally
>0042009C    jmp         00420086
 0042009E    pop         edi
 0042009F    pop         esi
 004200A0    pop         ebx
 004200A1    mov         esp,ebp
 004200A3    pop         ebp
 004200A4    ret
end;*}

//004200A8
{*procedure sub_004200A8(?:?);
begin
 004200A8    push        ebp
 004200A9    mov         ebp,esp
 004200AB    push        ebx
 004200AC    push        esi
 004200AD    push        edi
 004200AE    mov         edi,eax
 004200B0    lea         eax,[edi+4]
 004200B3    mov         ebx,eax
 004200B5    movzx       esi,word ptr [edi]
 004200B8    dec         esi
 004200B9    test        esi,esi
>004200BB    jl          004200D7
 004200BD    inc         esi
 004200BE    mov         eax,dword ptr [ebx]
 004200C0    test        eax,eax
>004200C2    je          004200D1
 004200C4    push        ebp
 004200C5    mov         edx,eax
 004200C7    add         edx,edi
 004200C9    mov         eax,edi
 004200CB    call        0041FF88
 004200D0    pop         ecx
 004200D1    add         ebx,4
 004200D4    dec         esi
>004200D5    jne         004200BE
 004200D7    pop         edi
 004200D8    pop         esi
 004200D9    pop         ebx
 004200DA    pop         ebp
 004200DB    ret
end;*}

//004200DC
{*procedure sub_004200DC(?:?; ?:?; ?:?);
begin
 004200DC    push        ebp
 004200DD    mov         ebp,esp
 004200DF    add         esp,0FFFFFFF8
 004200E2    push        ebx
 004200E3    push        esi
 004200E4    push        edi
 004200E5    mov         word ptr [ebp-6],dx
 004200E9    mov         dword ptr [ebp-4],eax
 004200EC    xor         eax,eax
 004200EE    mov         edx,dword ptr [ebp-4]
 004200F1    add         edx,4
 004200F4    mov         esi,dword ptr [edx]
 004200F6    add         esi,dword ptr [ebp-4]
 004200F9    movzx       edx,word ptr [esi]
 004200FC    add         edx,esi
 004200FE    mov         ebx,edx
 00420100    lea         edx,[esi+4]
 00420103    mov         edi,dword ptr [edx]
 00420105    dec         edi
 00420106    test        edi,edi
>00420108    jl          004201ED
 0042010E    inc         edi
 0042010F    mov         dx,word ptr [ebx]
 00420112    cmp         dx,word ptr [ebp-6]
>00420116    jne         004201DE
 0042011C    movzx       eax,word ptr [ebp-6]
 00420120    add         eax,0FFFFFEE0
 00420125    cmp         eax,10
>00420128    ja          004201DC
 0042012E    mov         al,byte ptr [eax+42013B]
 00420134    jmp         dword ptr [eax*4+42014C]
 00420134    db          2
 00420134    db          0
 00420134    db          0
 00420134    db          0
 00420134    db          0
 00420134    db          5
 00420134    db          0
 00420134    db          3
 00420134    db          0
 00420134    db          4
 00420134    db          0
 00420134    db          0
 00420134    db          0
 00420134    db          0
 00420134    db          0
 00420134    db          0
 00420134    db          1
 00420134    dd          004201DC
 00420134    dd          00420164
 00420134    dd          00420178
 00420134    dd          0042018C
 00420134    dd          004201A0
 00420134    dd          004201BF
 00420164    mov         eax,dword ptr [ebp+8]
 00420167    push        eax
 00420168    lea         eax,[ebx+4]
 0042016B    mov         eax,dword ptr [eax]
 0042016D    add         eax,dword ptr [ebp-4]
 00420170    call        0041FB20
 00420175    pop         ecx
>00420176    jmp         004201DC
 00420178    mov         eax,dword ptr [ebp+8]
 0042017B    push        eax
 0042017C    lea         eax,[ebx+4]
 0042017F    mov         eax,dword ptr [eax]
 00420181    add         eax,dword ptr [ebp-4]
 00420184    call        0041FB74
 00420189    pop         ecx
>0042018A    jmp         004201DC
 0042018C    mov         eax,dword ptr [ebp+8]
 0042018F    push        eax
 00420190    lea         eax,[ebx+4]
 00420193    mov         eax,dword ptr [eax]
 00420195    add         eax,dword ptr [ebp-4]
 00420198    call        004200A8
 0042019D    pop         ecx
>0042019E    jmp         004201DC
 004201A0    mov         eax,dword ptr [ebp+8]
 004201A3    push        eax
 004201A4    lea         eax,[ebx+8]
 004201A7    mov         edx,dword ptr [eax]
 004201A9    sub         edx,4
 004201AC    lea         eax,[ebx+4]
 004201AF    mov         eax,dword ptr [eax]
 004201B1    add         eax,dword ptr [ebp-4]
 004201B4    add         eax,20
 004201B7    call        0041FC58
 004201BC    pop         ecx
>004201BD    jmp         004201DC
 004201BF    mov         eax,dword ptr [ebp+8]
 004201C2    push        eax
 004201C3    lea         eax,[ebx+8]
 004201C6    mov         edx,dword ptr [eax]
 004201C8    sub         edx,4
 004201CB    lea         eax,[ebx+4]
 004201CE    mov         eax,dword ptr [eax]
 004201D0    add         eax,dword ptr [ebp-4]
 004201D3    add         eax,4
 004201D6    call        0041FC58
 004201DB    pop         ecx
 004201DC    mov         al,1
 004201DE    lea         edx,[esi+2]
 004201E1    movzx       edx,word ptr [edx]
 004201E4    add         ebx,edx
 004201E6    dec         edi
>004201E7    jne         0042010F
 004201ED    add         esi,8
 004201F0    mov         edx,dword ptr [esi]
 004201F2    add         edx,dword ptr [ebp-4]
 004201F5    mov         esi,edx
 004201F7    cmp         esi,dword ptr [ebp-4]
>004201FA    jne         004200F9
 00420200    pop         edi
 00420201    pop         esi
 00420202    pop         ebx
 00420203    pop         ecx
 00420204    pop         ecx
 00420205    pop         ebp
 00420206    ret
end;*}

//00420208
{*function sub_00420208(?:Pointer; ?:?):?;
begin
 00420208    push        ebp
 00420209    mov         ebp,esp
 0042020B    push        ebx
 0042020C    mov         ebx,eax
 0042020E    xor         edx,edx
 00420210    mov         eax,dword ptr [ebx]
 00420212    cmp         eax,39304246
>00420217    je          00420224
 00420219    cmp         eax,41304246
>0042021E    jne         00420331
 00420224    cmp         eax,39304246
 00420229    mov         eax,dword ptr [ebp+8]
 0042022C    sete        byte ptr [eax-0D]
 00420230    mov         eax,dword ptr [ebp+8]
 00420233    cmp         byte ptr [eax-0D],0
>00420237    je          00420246
 00420239    mov         eax,dword ptr [ebp+8]
 0042023C    cmp         byte ptr [eax-0E],0
>00420240    jne         00420331
 00420246    mov         eax,dword ptr [ebp+8]
 00420249    mov         eax,dword ptr [eax+0C]
 0042024C    mov         eax,dword ptr [eax-4]
 0042024F    mov         dword ptr [eax+54],0FFFFFFFF
 00420256    mov         eax,dword ptr [ebp+8]
 00420259    mov         eax,dword ptr [eax+0C]
 0042025C    mov         eax,dword ptr [eax-4]
 0042025F    mov         dword ptr [eax+58],0FFFFFFFF
 00420266    mov         eax,dword ptr [ebp+8]
 00420269    push        eax
 0042026A    mov         dx,130
 0042026E    mov         eax,ebx
 00420270    call        004200DC
 00420275    pop         ecx
 00420276    mov         eax,dword ptr [ebp+8]
 00420279    push        eax
 0042027A    mov         dx,120
 0042027E    mov         eax,ebx
 00420280    call        004200DC
 00420285    pop         ecx
 00420286    mov         eax,dword ptr [ebp+8]
 00420289    push        eax
 0042028A    mov         dx,127
 0042028E    mov         eax,ebx
 00420290    call        004200DC
 00420295    pop         ecx
 00420296    mov         eax,dword ptr [ebp+8]
 00420299    mov         eax,dword ptr [eax+0C]
 0042029C    mov         eax,dword ptr [eax-4]
 0042029F    mov         eax,dword ptr [eax+0C]
 004202A2    test        eax,eax
>004202A4    jle         004202BE
 004202A6    mov         edx,dword ptr [ebp+8]
 004202A9    mov         edx,dword ptr [edx+0C]
 004202AC    push        edx
 004202AD    mov         edx,dword ptr [ebp+8]
 004202B0    mov         edx,dword ptr [edx+0C]
 004202B3    mov         edx,eax
 004202B5    dec         edx
 004202B6    xor         eax,eax
 004202B8    call        0041E550
 004202BD    pop         ecx
 004202BE    mov         eax,dword ptr [ebp+8]
 004202C1    mov         eax,dword ptr [eax+0C]
 004202C4    push        eax
 004202C5    mov         al,1
 004202C7    call        0041E7C0
 004202CC    pop         ecx
 004202CD    mov         eax,dword ptr [ebp+8]
 004202D0    cmp         byte ptr [eax-0D],0
>004202D4    je          004202E8
 004202D6    mov         eax,dword ptr [ebp+8]
 004202D9    push        eax
 004202DA    mov         dx,125
 004202DE    mov         eax,ebx
 004202E0    call        004200DC
 004202E5    pop         ecx
>004202E6    jmp         004202F8
 004202E8    mov         eax,dword ptr [ebp+8]
 004202EB    push        eax
 004202EC    mov         dx,129
 004202F0    mov         eax,ebx
 004202F2    call        004200DC
 004202F7    pop         ecx
 004202F8    mov         eax,dword ptr [ebp+8]
 004202FB    mov         eax,dword ptr [eax+0C]
 004202FE    mov         eax,dword ptr [eax-4]
 00420301    mov         eax,dword ptr [eax+18]
 00420304    test        eax,eax
>00420306    jle         00420320
 00420308    mov         edx,dword ptr [ebp+8]
 0042030B    mov         edx,dword ptr [edx+0C]
 0042030E    push        edx
 0042030F    mov         edx,dword ptr [ebp+8]
 00420312    mov         edx,dword ptr [edx+0C]
 00420315    mov         edx,eax
 00420317    dec         edx
 00420318    xor         eax,eax
 0042031A    call        0041E404
 0042031F    pop         ecx
 00420320    mov         eax,dword ptr [ebp+8]
 00420323    mov         eax,dword ptr [eax+0C]
 00420326    push        eax
 00420327    xor         eax,eax
 00420329    call        0041E7C0
 0042032E    pop         ecx
 0042032F    mov         dl,1
 00420331    mov         eax,edx
 00420333    pop         ebx
 00420334    pop         ebp
 00420335    ret
end;*}

//00420338
{*function sub_00420338(?:WideString):?;
begin
 00420338    push        ebp
 00420339    mov         ebp,esp
 0042033B    add         esp,0FFFFFDA4
 00420341    push        ebx
 00420342    xor         edx,edx
 00420344    mov         dword ptr [ebp-25C],edx
 0042034A    mov         ebx,eax
 0042034C    xor         eax,eax
 0042034E    push        ebp
 0042034F    push        4203E7
 00420354    push        dword ptr fs:[eax]
 00420357    mov         dword ptr fs:[eax],esp
 0042035A    call        kernel32.GetVersion
 0042035F    test        eax,80000000
>00420364    je          0042038D
 00420366    lea         eax,[ebp-258]
 0042036C    push        eax
 0042036D    lea         eax,[ebp-25C]
 00420373    mov         edx,ebx
 00420375    call        @LStrFromWStr
 0042037A    mov         eax,dword ptr [ebp-25C]
 00420380    call        @LStrToPChar
 00420385    push        eax
 00420386    call        kernel32.FindFirstFileA
>0042038B    jmp         004203A1
 0042038D    lea         eax,[ebp-258]
 00420393    push        eax
 00420394    mov         eax,ebx
 00420396    call        @WStrToPWChar
 0042039B    push        eax
 0042039C    call        kernel32.FindFirstFileW
 004203A1    cmp         eax,0FFFFFFFF
>004203A4    je          004203C0
 004203A6    mov         edx,dword ptr [ebp-244]
 004203AC    mov         dword ptr [ebp-8],edx
 004203AF    mov         edx,dword ptr [ebp-240]
 004203B5    mov         dword ptr [ebp-4],edx
 004203B8    push        eax
 004203B9    call        kernel32.FindClose
>004203BE    jmp         004203CE
 004203C0    mov         dword ptr [ebp-8],0
 004203C7    mov         dword ptr [ebp-4],0
 004203CE    xor         eax,eax
 004203D0    pop         edx
 004203D1    pop         ecx
 004203D2    pop         ecx
 004203D3    mov         dword ptr fs:[eax],edx
 004203D6    push        4203EE
 004203DB    lea         eax,[ebp-25C]
 004203E1    call        @LStrClr
 004203E6    ret
>004203E7    jmp         @HandleFinally
>004203EC    jmp         004203DB
 004203EE    mov         eax,dword ptr [ebp-8]
 004203F1    mov         edx,dword ptr [ebp-4]
 004203F4    pop         ebx
 004203F5    mov         esp,ebp
 004203F7    pop         ebp
 004203F8    ret
end;*}

//004203FC
{*function sub_004203FC(?:WideString):?;
begin
 004203FC    push        ebp
 004203FD    mov         ebp,esp
 004203FF    add         esp,0FFFFFFE8
 00420402    push        ebx
 00420403    push        esi
 00420404    push        edi
 00420405    xor         edx,edx
 00420407    mov         dword ptr [ebp-18],edx
 0042040A    mov         dword ptr [ebp-14],edx
 0042040D    mov         esi,eax
 0042040F    xor         eax,eax
 00420411    push        ebp
 00420412    push        42055A
 00420417    push        dword ptr fs:[eax]
 0042041A    mov         dword ptr fs:[eax],esp
 0042041D    xor         ebx,ebx
 0042041F    lea         eax,[ebp-14]
 00420422    push        eax
 00420423    push        1
 00420425    mov         edi,dword ptr ds:[55B400];^gvar_0053D148
 0042042B    mov         edi,dword ptr [edi]
 0042042D    mov         ecx,7FFFFFFF
 00420432    mov         edx,esi
 00420434    mov         eax,420570
 00420439    call        edi
 0042043B    mov         edx,eax
 0042043D    mov         ecx,7FFFFFFF
 00420442    mov         eax,esi
 00420444    call        @WStrCopy
 00420449    mov         eax,dword ptr [ebp-14]
 0042044C    mov         edi,dword ptr ds:[55B210];^gvar_0053D140
 00420452    mov         edi,dword ptr [edi]
 00420454    mov         edx,420578
 00420459    call        edi
 0042045B    test        al,al
>0042045D    je          0042053F
 00420463    mov         eax,esi
 00420465    call        00420338
 0042046A    mov         dword ptr [ebp-8],eax
 0042046D    mov         dword ptr [ebp-4],edx
 00420470    lea         eax,[ebp-18]
 00420473    push        eax
 00420474    mov         eax,esi
 00420476    call        @WStrLen
 0042047B    mov         ecx,eax
 0042047D    sub         ecx,4
 00420480    mov         edx,1
 00420485    mov         eax,esi
 00420487    call        @WStrCopy
 0042048C    lea         eax,[ebp-18]
 0042048F    mov         edx,420588;'.map'
 00420494    call        @WStrCat
 00420499    mov         eax,dword ptr [ebp-18]
 0042049C    call        00420338
 004204A1    mov         dword ptr [ebp-10],eax
 004204A4    mov         dword ptr [ebp-0C],edx
 004204A7    cmp         dword ptr [ebp-4],0
>004204AB    jne         004204B1
 004204AD    cmp         dword ptr [ebp-8],0
>004204B1    je          0042053F
 004204B7    cmp         dword ptr [ebp-0C],0
>004204BB    jne         004204C1
 004204BD    cmp         dword ptr [ebp-10],0
>004204C1    je          0042053F
 004204C3    push        0
 004204C5    push        18
 004204C7    push        0
 004204C9    push        3C
 004204CB    push        0
 004204CD    push        3C
 004204CF    push        0
 004204D1    push        989680
 004204D6    mov         eax,dword ptr [ebp-8]
 004204D9    mov         edx,dword ptr [ebp-4]
 004204DC    call        @_lldiv
 004204E1    call        @_lldiv
 004204E6    call        @_lldiv
 004204EB    call        @_lldiv
 004204F0    mov         dword ptr [ebp-8],eax
 004204F3    mov         dword ptr [ebp-4],edx
 004204F6    push        0
 004204F8    push        18
 004204FA    push        0
 004204FC    push        3C
 004204FE    push        0
 00420500    push        3C
 00420502    push        0
 00420504    push        989680
 00420509    mov         eax,dword ptr [ebp-10]
 0042050C    mov         edx,dword ptr [ebp-0C]
 0042050F    call        @_lldiv
 00420514    call        @_lldiv
 00420519    call        @_lldiv
 0042051E    call        @_lldiv
 00420523    mov         dword ptr [ebp-10],eax
 00420526    mov         dword ptr [ebp-0C],edx
 00420529    mov         eax,dword ptr [ebp-8]
 0042052C    mov         edx,dword ptr [ebp-4]
 0042052F    cmp         edx,dword ptr [ebp-0C]
>00420532    jne         0042053B
 00420534    cmp         eax,dword ptr [ebp-10]
>00420537    jae         0042053F
>00420539    jmp         0042053D
>0042053B    jge         0042053F
 0042053D    mov         bl,1
 0042053F    xor         eax,eax
 00420541    pop         edx
 00420542    pop         ecx
 00420543    pop         ecx
 00420544    mov         dword ptr fs:[eax],edx
 00420547    push        420561
 0042054C    lea         eax,[ebp-18]
 0042054F    mov         edx,2
 00420554    call        @WStrArrayClr
 00420559    ret
>0042055A    jmp         @HandleFinally
>0042055F    jmp         0042054C
 00420561    mov         eax,ebx
 00420563    pop         edi
 00420564    pop         esi
 00420565    pop         ebx
 00420566    mov         esp,ebp
 00420568    pop         ebp
 00420569    ret
end;*}

//00420594
{*function sub_00420594(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00420594    push        ebp
 00420595    mov         ebp,esp
 00420597    push        ecx
 00420598    mov         ecx,5
 0042059D    push        0
 0042059F    push        0
 004205A1    dec         ecx
>004205A2    jne         0042059D
 004205A4    push        ecx
 004205A5    xchg        ecx,dword ptr [ebp-4]
 004205A8    push        ebx
 004205A9    push        esi
 004205AA    push        edi
 004205AB    mov         dword ptr [ebp-0C],ecx
 004205AE    mov         dword ptr [ebp-8],edx
 004205B1    mov         byte ptr [ebp-0E],al
 004205B4    mov         eax,dword ptr [ebp+8]
 004205B7    xor         edx,edx
 004205B9    push        ebp
 004205BA    push        420916
 004205BF    push        dword ptr fs:[edx]
 004205C2    mov         dword ptr fs:[edx],esp
 004205C5    xor         ebx,ebx
 004205C7    test        eax,eax
>004205C9    jne         004205CF
 004205CB    xor         eax,eax
>004205CD    jmp         004205E8
 004205CF    cmp         word ptr [eax+18],20B
>004205D5    jne         004205E2
 004205D7    add         eax,18
 004205DA    mov         eax,dword ptr [eax+0A0]
>004205E0    jmp         004205E8
 004205E2    mov         eax,dword ptr [eax+0A8]
 004205E8    test        eax,eax
>004205EA    jne         004208C0
 004205F0    lea         eax,[ebp-20]
 004205F3    push        eax
 004205F4    push        1
 004205F6    mov         esi,dword ptr ds:[55B400];^gvar_0053D148
 004205FC    mov         esi,dword ptr [esi]
 004205FE    mov         eax,dword ptr [ebp+0C]
 00420601    mov         eax,dword ptr [eax-4]
 00420604    mov         edx,dword ptr [eax+4C]
 00420607    mov         ecx,7FFFFFFF
 0042060C    mov         eax,42092C
 00420611    call        esi
 00420613    mov         edx,eax
 00420615    mov         eax,dword ptr [ebp+0C]
 00420618    mov         eax,dword ptr [eax-4]
 0042061B    mov         eax,dword ptr [eax+4C]
 0042061E    mov         ecx,7FFFFFFF
 00420623    call        @WStrCopy
 00420628    mov         esi,dword ptr ds:[55B210];^gvar_0053D140
 0042062E    mov         esi,dword ptr [esi]
 00420630    mov         edx,420934;'.tds'
 00420635    mov         eax,dword ptr [ebp-20]
 00420638    call        esi
 0042063A    test        al,al
>0042063C    jne         004206DF
 00420642    lea         eax,[ebp-24]
 00420645    push        eax
 00420646    mov         eax,dword ptr [ebp+0C]
 00420649    mov         eax,dword ptr [eax-4]
 0042064C    mov         eax,dword ptr [eax+4C]
 0042064F    call        @WStrLen
 00420654    push        eax
 00420655    mov         eax,dword ptr [ebp-20]
 00420658    call        @WStrLen
 0042065D    pop         ecx
 0042065E    sub         ecx,eax
 00420660    mov         eax,dword ptr [ebp+0C]
 00420663    mov         eax,dword ptr [eax-4]
 00420666    mov         eax,dword ptr [eax+4C]
 00420669    mov         edx,1
 0042066E    call        @WStrCopy
 00420673    mov         edx,dword ptr [ebp-24]
 00420676    lea         eax,[ebp-1C]
 00420679    mov         ecx,420934;'.tds'
 0042067E    call        @WStrCat3
 00420683    call        kernel32.GetVersion
 00420688    test        eax,80000000
>0042068D    jne         004206A2
 0042068F    mov         eax,dword ptr [ebp-1C]
 00420692    call        @WStrToPWChar
 00420697    push        eax
 00420698    call        kernel32.GetFileAttributesW
 0042069D    cmp         eax,0FFFFFFFF
>004206A0    je          004206CC
 004206A2    call        kernel32.GetVersion
 004206A7    test        eax,80000000
>004206AC    je          004206F0
 004206AE    lea         eax,[ebp-28]
 004206B1    mov         edx,dword ptr [ebp-1C]
 004206B4    call        @LStrFromWStr
 004206B9    mov         eax,dword ptr [ebp-28]
 004206BC    call        @LStrToPChar
 004206C1    push        eax
 004206C2    call        kernel32.GetFileAttributesA
 004206C7    cmp         eax,0FFFFFFFF
>004206CA    jne         004206F0
 004206CC    lea         eax,[ebp-1C]
 004206CF    mov         edx,dword ptr [ebp+0C]
 004206D2    mov         edx,dword ptr [edx-4]
 004206D5    mov         edx,dword ptr [edx+4C]
 004206D8    call        00404F28
>004206DD    jmp         004206F0
 004206DF    lea         eax,[ebp-1C]
 004206E2    mov         edx,dword ptr [ebp+0C]
 004206E5    mov         edx,dword ptr [edx-4]
 004206E8    mov         edx,dword ptr [edx+4C]
 004206EB    call        00404F28
 004206F0    call        kernel32.GetVersion
 004206F5    test        eax,80000000
>004206FA    jne         0042070F
 004206FC    mov         eax,dword ptr [ebp-1C]
 004206FF    call        @WStrToPWChar
 00420704    push        eax
 00420705    call        kernel32.GetFileAttributesW
 0042070A    cmp         eax,0FFFFFFFF
>0042070D    jne         00420741
 0042070F    call        kernel32.GetVersion
 00420714    test        eax,80000000
>00420719    je          004208E0
 0042071F    lea         eax,[ebp-2C]
 00420722    mov         edx,dword ptr [ebp-1C]
 00420725    call        @LStrFromWStr
 0042072A    mov         eax,dword ptr [ebp-2C]
 0042072D    call        @LStrToPChar
 00420732    push        eax
 00420733    call        kernel32.GetFileAttributesA
 00420738    cmp         eax,0FFFFFFFF
>0042073B    je          004208E0
 00420741    mov         eax,dword ptr [ebp-1C]
 00420744    call        004203FC
 00420749    test        al,al
>0042074B    jne         004208E0
 00420751    call        kernel32.GetVersion
 00420756    test        eax,80000000
>0042075B    jne         0042077E
 0042075D    push        0
 0042075F    push        0
 00420761    push        3
 00420763    push        0
 00420765    push        3
 00420767    push        80000000
 0042076C    mov         eax,dword ptr [ebp-1C]
 0042076F    call        @WStrToPWChar
 00420774    push        eax
 00420775    call        kernel32.CreateFileW
 0042077A    mov         esi,eax
>0042077C    jmp         004207A8
 0042077E    push        0
 00420780    push        0
 00420782    push        3
 00420784    push        0
 00420786    push        3
 00420788    push        80000000
 0042078D    lea         eax,[ebp-30]
 00420790    mov         edx,dword ptr [ebp-1C]
 00420793    call        @LStrFromWStr
 00420798    mov         eax,dword ptr [ebp-30]
 0042079B    call        @LStrToPChar
 004207A0    push        eax
 004207A1    call        kernel32.CreateFileA
 004207A6    mov         esi,eax
 004207A8    cmp         esi,0FFFFFFFF
>004207AB    je          004208E0
 004207B1    push        0
 004207B3    push        0
 004207B5    push        0
 004207B7    push        2
 004207B9    push        0
 004207BB    push        esi
 004207BC    call        kernel32.CreateFileMappingA
 004207C1    mov         edi,eax
 004207C3    test        edi,edi
>004207C5    je          004208B8
 004207CB    push        0
 004207CD    push        0
 004207CF    push        0
 004207D1    push        4
 004207D3    push        edi
 004207D4    call        kernel32.MapViewOfFile
 004207D9    mov         dword ptr [ebp-18],eax
 004207DC    cmp         dword ptr [ebp-18],0
>004207E0    je          004208B2
 004207E6    mov         eax,dword ptr [ebp-18]
 004207E9    call        0040F964
 004207EE    test        eax,eax
>004207F0    je          0042089D
 004207F6    cmp         word ptr [eax+18],20B
>004207FC    jne         0042080B
 004207FE    mov         edx,eax
 00420800    add         edx,108
 00420806    mov         dword ptr [ebp-14],edx
>00420809    jmp         00420816
 0042080B    mov         edx,eax
 0042080D    add         edx,0F8
 00420813    mov         dword ptr [ebp-14],edx
 00420816    add         dword ptr [ebp-14],28
 0042081A    mov         edx,dword ptr [ebp-14]
 0042081D    test        byte ptr [edx+24],20
>00420821    je          00420842
 00420823    mov         dword ptr [ebp-8],3
 0042082A    mov         edx,dword ptr [ebp-14]
 0042082D    mov         edx,dword ptr [edx+0C]
 00420830    mov         dword ptr [ebp-0C],edx
 00420833    sub         dword ptr [ebp-14],28
 00420837    mov         edx,dword ptr [ebp-14]
 0042083A    mov         edx,dword ptr [edx+0C]
 0042083D    sub         dword ptr [ebp-0C],edx
>00420840    jmp         00420846
 00420842    sub         dword ptr [ebp-14],28
 00420846    movzx       edx,word ptr [eax+6]
 0042084A    dec         edx
 0042084B    shl         edx,3
 0042084E    lea         edx,[edx+edx*4]
 00420851    add         dword ptr [ebp-14],edx
 00420854    cmp         word ptr [eax+18],20B
>0042085A    jne         00420867
 0042085C    add         eax,18
 0042085F    mov         eax,dword ptr [eax+0A0]
>00420865    jmp         0042086D
 00420867    mov         eax,dword ptr [eax+0A8]
 0042086D    mov         edx,dword ptr [ebp-14]
 00420870    cmp         dword ptr [edx+14],0
>00420874    je          004208A9
 00420876    mov         edx,dword ptr [ebp-14]
 00420879    cmp         eax,dword ptr [edx+0C]
>0042087C    jne         004208A9
 0042087E    mov         ecx,dword ptr [ebp-14]
 00420881    mov         ecx,dword ptr [ecx+14]
 00420884    mov         eax,dword ptr [ebp-18]
 00420887    add         ecx,eax
 00420889    mov         edx,ecx
 0042088B    push        ebp
 0042088C    mov         edx,dword ptr [edx+18]
 0042088F    add         edx,eax
 00420891    mov         eax,edx
 00420893    call        00420208
 00420898    pop         ecx
 00420899    mov         ebx,eax
>0042089B    jmp         004208A9
 0042089D    push        ebp
 0042089E    mov         eax,dword ptr [ebp-18]
 004208A1    call        00420208
 004208A6    pop         ecx
 004208A7    mov         ebx,eax
 004208A9    mov         eax,dword ptr [ebp-18]
 004208AC    push        eax
 004208AD    call        kernel32.UnmapViewOfFile
 004208B2    push        edi
 004208B3    call        kernel32.CloseHandle
 004208B8    push        esi
 004208B9    call        kernel32.CloseHandle
>004208BE    jmp         004208E0
 004208C0    mov         ecx,dword ptr [ebp+0C]
 004208C3    mov         ecx,dword ptr [ecx-4]
 004208C6    mov         ecx,dword ptr [ecx+38]
 004208C9    mov         esi,ecx
 004208CB    add         esi,eax
 004208CD    mov         edx,esi
 004208CF    push        ebp
 004208D0    mov         eax,dword ptr [ebp+0C]
 004208D3    mov         eax,ecx
 004208D5    add         eax,dword ptr [edx+14]
 004208D8    call        00420208
 004208DD    pop         ecx
 004208DE    mov         ebx,eax
 004208E0    xor         eax,eax
 004208E2    pop         edx
 004208E3    pop         ecx
 004208E4    pop         ecx
 004208E5    mov         dword ptr fs:[eax],edx
 004208E8    push        42091D
 004208ED    lea         eax,[ebp-30]
 004208F0    mov         edx,3
 004208F5    call        @LStrArrayClr
 004208FA    lea         eax,[ebp-24]
 004208FD    mov         edx,3
 00420902    call        @WStrArrayClr
 00420907    lea         eax,[ebp-4]
 0042090A    mov         edx,dword ptr ds:[41FAFC];_DynArr_14_8
 00420910    call        @DynArrayClear
 00420915    ret
>00420916    jmp         @HandleFinally
>0042091B    jmp         004208ED
 0042091D    mov         eax,ebx
 0042091F    pop         edi
 00420920    pop         esi
 00420921    pop         ebx
 00420922    mov         esp,ebp
 00420924    pop         ebp
 00420925    ret         4
end;*}

//00420940
{*function sub_00420940(?:?; ?:?):?;
begin
 00420940    push        ebp
 00420941    mov         ebp,esp
 00420943    mov         ecx,5
 00420948    push        0
 0042094A    push        0
 0042094C    dec         ecx
>0042094D    jne         00420948
 0042094F    push        ebx
 00420950    push        esi
 00420951    push        edi
 00420952    mov         byte ptr [ebp-1],al
 00420955    xor         eax,eax
 00420957    push        ebp
 00420958    push        420C9A
 0042095D    push        dword ptr fs:[eax]
 00420960    mov         dword ptr fs:[eax],esp
 00420963    xor         ebx,ebx
 00420965    lea         eax,[ebp-8]
 00420968    mov         edx,dword ptr [ebp+8]
 0042096B    mov         edx,dword ptr [edx-4]
 0042096E    mov         edx,dword ptr [edx+4C]
 00420971    call        00404F28
 00420976    push        1
 00420978    mov         esi,dword ptr ds:[55B400];^gvar_0053D148
 0042097E    mov         esi,dword ptr [esi]
 00420980    mov         ecx,7FFFFFFF
 00420985    mov         edx,dword ptr [ebp-8]
 00420988    mov         eax,420CB0
 0042098D    call        esi
 0042098F    mov         edx,eax
 00420991    lea         eax,[ebp-8]
 00420994    mov         ecx,7FFFFFFF
 00420999    call        @WStrDelete
 0042099E    lea         eax,[ebp-14]
 004209A1    mov         ecx,420CB8;'.pdb'
 004209A6    mov         edx,dword ptr [ebp-8]
 004209A9    call        @WStrCat3
 004209AE    mov         eax,dword ptr [ebp-14]
 004209B1    call        @WStrToPWChar
 004209B6    push        eax
 004209B7    call        kernel32.GetFileAttributesW
 004209BC    cmp         eax,0FFFFFFFF
>004209BF    je          00420BB8
 004209C5    cmp         byte ptr [ebp-1],0
>004209C9    jne         00420BB8
 004209CF    mov         eax,dword ptr [ebp+8]
 004209D2    mov         eax,dword ptr [eax-4]
 004209D5    mov         eax,dword ptr [eax+40]
 004209D8    mov         edx,dword ptr [ebp+8]
 004209DB    mov         edx,dword ptr [edx-4]
 004209DE    sub         eax,dword ptr [edx+38]
 004209E1    mov         edx,dword ptr [ebp+8]
 004209E4    mov         edx,dword ptr [edx-4]
 004209E7    mov         dword ptr [edx+48C],eax
 004209ED    mov         edx,dword ptr [ebp+8]
 004209F0    test        eax,eax
>004209F2    jne         00420B99
 004209F8    mov         eax,dword ptr [ebp+8]
 004209FB    mov         eax,dword ptr [eax-4]
 004209FE    mov         dword ptr [eax+48C],1000
 00420A08    call        kernel32.GetVersion
 00420A0D    test        eax,80000000
>00420A12    jne         00420A3B
 00420A14    push        0
 00420A16    push        0
 00420A18    push        3
 00420A1A    push        0
 00420A1C    push        1
 00420A1E    push        80000000
 00420A23    mov         eax,dword ptr [ebp+8]
 00420A26    mov         eax,dword ptr [eax-4]
 00420A29    mov         eax,dword ptr [eax+4C]
 00420A2C    call        @WStrToPWChar
 00420A31    push        eax
 00420A32    call        kernel32.CreateFileW
 00420A37    mov         ebx,eax
>00420A39    jmp         00420A6B
 00420A3B    push        0
 00420A3D    push        0
 00420A3F    push        3
 00420A41    push        0
 00420A43    push        1
 00420A45    push        80000000
 00420A4A    lea         eax,[ebp-18]
 00420A4D    mov         edx,dword ptr [ebp+8]
 00420A50    mov         edx,dword ptr [edx-4]
 00420A53    mov         edx,dword ptr [edx+4C]
 00420A56    call        @LStrFromWStr
 00420A5B    mov         eax,dword ptr [ebp-18]
 00420A5E    call        @LStrToPChar
 00420A63    push        eax
 00420A64    call        kernel32.CreateFileA
 00420A69    mov         ebx,eax
 00420A6B    cmp         ebx,0FFFFFFFF
>00420A6E    je          00420B99
 00420A74    push        0
 00420A76    push        0
 00420A78    push        0
 00420A7A    push        2
 00420A7C    push        0
 00420A7E    push        ebx
 00420A7F    call        kernel32.CreateFileMappingA
 00420A84    mov         esi,eax
 00420A86    test        esi,esi
>00420A88    je          00420B93
 00420A8E    push        0
 00420A90    push        0
 00420A92    push        0
 00420A94    push        4
 00420A96    push        esi
 00420A97    call        kernel32.MapViewOfFile
 00420A9C    mov         edi,eax
 00420A9E    test        edi,edi
>00420AA0    je          00420B8D
 00420AA6    mov         eax,edi
 00420AA8    call        0040F964
 00420AAD    test        eax,eax
>00420AAF    je          00420B87
 00420AB5    mov         dx,word ptr [eax+18]
 00420AB9    cmp         dx,20B
>00420ABE    jne         00420ACF
 00420AC0    mov         ecx,eax
 00420AC2    add         ecx,108
 00420AC8    push        ecx
 00420AC9    pop         ecx
 00420ACA    mov         dword ptr [ebp-10],ecx
>00420ACD    jmp         00420ADC
 00420ACF    mov         ecx,eax
 00420AD1    add         ecx,0F8
 00420AD7    push        ecx
 00420AD8    pop         ecx
 00420AD9    mov         dword ptr [ebp-10],ecx
 00420ADC    mov         ecx,dword ptr [ebp-10]
 00420ADF    test        byte ptr [ecx+24],20
>00420AE3    je          00420B2A
 00420AE5    mov         eax,dword ptr [ebp-10]
 00420AE8    mov         eax,dword ptr [eax+0C]
 00420AEB    mov         edx,dword ptr [ebp+8]
 00420AEE    mov         edx,dword ptr [edx-4]
 00420AF1    mov         dword ptr [edx+48C],eax
 00420AF7    mov         eax,dword ptr [ebp-10]
 00420AFA    mov         eax,dword ptr [eax+8]
 00420AFD    mov         edx,dword ptr [ebp+8]
 00420B00    mov         edx,dword ptr [edx-4]
 00420B03    mov         dword ptr [edx+44],eax
 00420B06    add         dword ptr [ebp-10],28
 00420B0A    mov         eax,dword ptr [ebp-10]
 00420B0D    test        byte ptr [eax+24],20
>00420B11    je          00420B87
 00420B13    mov         eax,dword ptr [ebp-10]
 00420B16    mov         eax,dword ptr [eax+0C]
 00420B19    mov         edx,dword ptr [ebp-10]
 00420B1C    add         eax,dword ptr [edx+8]
 00420B1F    mov         edx,dword ptr [ebp+8]
 00420B22    mov         edx,dword ptr [edx-4]
 00420B25    mov         dword ptr [edx+44],eax
>00420B28    jmp         00420B87
 00420B2A    cmp         dx,20B
>00420B2F    jne         00420B60
 00420B31    lea         edx,[eax+18]
 00420B34    mov         edx,dword ptr [edx+14]
 00420B37    mov         ecx,dword ptr [ebp+8]
 00420B3A    mov         ecx,dword ptr [ecx-4]
 00420B3D    mov         dword ptr [ecx+48C],edx
 00420B43    mov         edx,dword ptr [ebp+8]
 00420B46    mov         edx,dword ptr [edx-4]
 00420B49    mov         edx,dword ptr [edx+48C]
 00420B4F    add         eax,18
 00420B52    add         edx,dword ptr [eax+4]
 00420B55    mov         eax,dword ptr [ebp+8]
 00420B58    mov         eax,dword ptr [eax-4]
 00420B5B    mov         dword ptr [eax+44],edx
>00420B5E    jmp         00420B87
 00420B60    mov         edx,dword ptr [eax+2C]
 00420B63    mov         ecx,dword ptr [ebp+8]
 00420B66    mov         ecx,dword ptr [ecx-4]
 00420B69    mov         dword ptr [ecx+48C],edx
 00420B6F    mov         edx,dword ptr [ebp+8]
 00420B72    mov         edx,dword ptr [edx-4]
 00420B75    mov         edx,dword ptr [edx+48C]
 00420B7B    add         edx,dword ptr [eax+1C]
 00420B7E    mov         eax,dword ptr [ebp+8]
 00420B81    mov         eax,dword ptr [eax-4]
 00420B84    mov         dword ptr [eax+44],edx
 00420B87    push        edi
 00420B88    call        kernel32.UnmapViewOfFile
 00420B8D    push        esi
 00420B8E    call        kernel32.CloseHandle
 00420B93    push        ebx
 00420B94    call        kernel32.CloseHandle
 00420B99    mov         eax,dword ptr [ebp+8]
 00420B9C    push        eax
 00420B9D    lea         eax,[ebp-1C]
 00420BA0    mov         ecx,420CB8;'.pdb'
 00420BA5    mov         edx,dword ptr [ebp-8]
 00420BA8    call        @WStrCat3
 00420BAD    mov         eax,dword ptr [ebp-1C]
 00420BB0    call        0041F8DC
 00420BB5    pop         ecx
 00420BB6    mov         ebx,eax
 00420BB8    test        bl,bl
>00420BBA    jne         00420C5F
 00420BC0    cmp         byte ptr [ebp-1],0
>00420BC4    jne         00420BF6
 00420BC6    lea         eax,[ebp-20]
 00420BC9    mov         ecx,420CC8;'.map'
 00420BCE    mov         edx,dword ptr [ebp-8]
 00420BD1    call        @WStrCat3
 00420BD6    mov         eax,dword ptr [ebp-20]
 00420BD9    lea         edx,[ebp-0C]
 00420BDC    call        0041D250
 00420BE1    test        al,al
>00420BE3    je          00420BF6
 00420BE5    mov         eax,dword ptr [ebp+8]
 00420BE8    push        eax
 00420BE9    mov         eax,dword ptr [ebp-0C]
 00420BEC    call        0041E9FC
 00420BF1    pop         ecx
 00420BF2    mov         bl,1
>00420BF4    jmp         00420C5F
 00420BF6    lea         eax,[ebp-24]
 00420BF9    mov         ecx,420CD8;'.mad'
 00420BFE    mov         edx,dword ptr [ebp-8]
 00420C01    call        @WStrCat3
 00420C06    mov         eax,dword ptr [ebp-24]
 00420C09    lea         edx,[ebp-0C]
 00420C0C    call        0041D250
 00420C11    test        al,al
>00420C13    je          00420C26
 00420C15    mov         eax,dword ptr [ebp+8]
 00420C18    push        eax
 00420C19    mov         eax,dword ptr [ebp-0C]
 00420C1C    call        0041DE24
 00420C21    pop         ecx
 00420C22    test        al,al
>00420C24    jne         00420C2A
 00420C26    xor         ebx,ebx
>00420C28    jmp         00420C2C
 00420C2A    mov         bl,1
 00420C2C    test        bl,bl
>00420C2E    jne         00420C5B
 00420C30    cmp         byte ptr [ebp-1],0
>00420C34    jne         00420C57
 00420C36    mov         eax,dword ptr [ebp+8]
 00420C39    push        eax
 00420C3A    lea         eax,[ebp-28]
 00420C3D    mov         ecx,420CE8;'.jdbg'
 00420C42    mov         edx,dword ptr [ebp-8]
 00420C45    call        @WStrCat3
 00420C4A    mov         eax,dword ptr [ebp-28]
 00420C4D    call        0041F1FC
 00420C52    pop         ecx
 00420C53    test        al,al
>00420C55    jne         00420C5B
 00420C57    xor         eax,eax
>00420C59    jmp         00420C5D
 00420C5B    mov         al,1
 00420C5D    mov         ebx,eax
 00420C5F    xor         eax,eax
 00420C61    pop         edx
 00420C62    pop         ecx
 00420C63    pop         ecx
 00420C64    mov         dword ptr fs:[eax],edx
 00420C67    push        420CA1
 00420C6C    lea         eax,[ebp-28]
 00420C6F    mov         edx,4
 00420C74    call        @WStrArrayClr
 00420C79    lea         eax,[ebp-18]
 00420C7C    call        @LStrClr
 00420C81    lea         eax,[ebp-14]
 00420C84    call        @WStrClr
 00420C89    lea         eax,[ebp-0C]
 00420C8C    call        @LStrClr
 00420C91    lea         eax,[ebp-8]
 00420C94    call        @WStrClr
 00420C99    ret
>00420C9A    jmp         @HandleFinally
>00420C9F    jmp         00420C6C
 00420CA1    mov         eax,ebx
 00420CA3    pop         edi
 00420CA4    pop         esi
 00420CA5    pop         ebx
 00420CA6    mov         esp,ebp
 00420CA8    pop         ebp
 00420CA9    ret
end;*}

//00420CF4
{*constructor TMapFile.Create(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00420CF4    push        ebp
 00420CF5    mov         ebp,esp
 00420CF7    add         esp,0FFFFFFF0
 00420CFA    push        ebx
 00420CFB    push        esi
 00420CFC    push        edi
 00420CFD    test        dl,dl
>00420CFF    je          00420D09
 00420D01    add         esp,0FFFFFFF0
 00420D04    call        @ClassCreate
 00420D09    mov         ebx,ecx
 00420D0B    mov         byte ptr [ebp-5],dl
 00420D0E    mov         dword ptr [ebp-4],eax
 00420D11    xor         edx,edx
 00420D13    mov         eax,dword ptr [ebp-4]
 00420D16    call        TObject.Create
 00420D1B    mov         edx,dword ptr [ebp-4]
 00420D1E    mov         eax,ebx
 00420D20    mov         byte ptr [edx+3C],al
 00420D23    test        al,al
>00420D25    je          00420FEA
 00420D2B    cmp         dword ptr [ebp+18],0
>00420D2F    je          00420D46
 00420D31    push        ebp
 00420D32    mov         eax,dword ptr [ebp+18]
 00420D35    call        0041DE24
 00420D3A    pop         ecx
 00420D3B    mov         edx,dword ptr [ebp-4]
 00420D3E    mov         byte ptr [edx+3C],al
>00420D41    jmp         00420FD4
 00420D46    mov         eax,dword ptr [ebp-4]
 00420D49    mov         dl,byte ptr [ebp+0C]
 00420D4C    mov         byte ptr [eax+4],dl
 00420D4F    mov         eax,dword ptr [ebp-4]
 00420D52    add         eax,4C
 00420D55    mov         edx,dword ptr [ebp+14]
 00420D58    call        @WStrAsg
 00420D5D    mov         edx,dword ptr [ebp-4]
 00420D60    mov         eax,dword ptr [ebp+10]
 00420D63    mov         dword ptr [edx+38],eax
 00420D66    test        eax,eax
>00420D68    je          00420F82
 00420D6E    call        0040F964
 00420D73    mov         ebx,eax
 00420D75    test        ebx,ebx
>00420D77    je          00420F2E
 00420D7D    mov         dword ptr [ebp-0C],2
 00420D84    xor         esi,esi
 00420D86    mov         dx,word ptr [ebx+18]
 00420D8A    cmp         dx,20B
>00420D8F    jne         00420D9D
 00420D91    mov         edi,ebx
 00420D93    add         edi,108
 00420D99    mov         eax,edi
>00420D9B    jmp         00420DA7
 00420D9D    mov         edi,ebx
 00420D9F    add         edi,0F8
 00420DA5    mov         eax,edi
 00420DA7    test        byte ptr [eax+24],20
>00420DAB    je          00420DF8
 00420DAD    mov         edx,dword ptr [ebp-4]
 00420DB0    mov         edx,dword ptr [edx+38]
 00420DB3    add         edx,dword ptr [eax+0C]
 00420DB6    mov         ecx,dword ptr [ebp-4]
 00420DB9    mov         dword ptr [ecx+40],edx
 00420DBC    mov         edx,dword ptr [ebp-4]
 00420DBF    mov         edx,dword ptr [edx+40]
 00420DC2    add         edx,dword ptr [eax+8]
 00420DC5    mov         ecx,dword ptr [ebp-4]
 00420DC8    mov         dword ptr [ecx+44],edx
 00420DCB    add         eax,28
 00420DCE    test        byte ptr [eax+24],20
>00420DD2    je          00420E3D
 00420DD4    mov         edx,dword ptr [ebp-4]
 00420DD7    mov         edx,dword ptr [edx+38]
 00420DDA    add         edx,dword ptr [eax+0C]
 00420DDD    add         edx,dword ptr [eax+8]
 00420DE0    mov         ecx,dword ptr [ebp-4]
 00420DE3    mov         dword ptr [ecx+44],edx
 00420DE6    mov         dword ptr [ebp-0C],3
 00420DED    mov         esi,dword ptr [eax+0C]
 00420DF0    sub         eax,28
 00420DF3    sub         esi,dword ptr [eax+0C]
>00420DF6    jmp         00420E3D
 00420DF8    cmp         dx,20B
>00420DFD    jne         00420E25
 00420DFF    mov         eax,dword ptr [ebp-4]
 00420E02    mov         eax,dword ptr [eax+38]
 00420E05    lea         edx,[ebx+18]
 00420E08    add         eax,dword ptr [edx+14]
 00420E0B    mov         edx,dword ptr [ebp-4]
 00420E0E    mov         dword ptr [edx+40],eax
 00420E11    mov         eax,dword ptr [ebp-4]
 00420E14    mov         eax,dword ptr [eax+40]
 00420E17    lea         edx,[ebx+18]
 00420E1A    add         eax,dword ptr [edx+4]
 00420E1D    mov         edx,dword ptr [ebp-4]
 00420E20    mov         dword ptr [edx+44],eax
>00420E23    jmp         00420E3D
 00420E25    mov         eax,dword ptr [ebp-4]
 00420E28    mov         eax,dword ptr [eax+38]
 00420E2B    add         eax,dword ptr [ebx+2C]
 00420E2E    mov         edx,dword ptr [ebp-4]
 00420E31    mov         dword ptr [edx+40],eax
 00420E34    add         eax,dword ptr [ebx+1C]
 00420E37    mov         edx,dword ptr [ebp-4]
 00420E3A    mov         dword ptr [edx+44],eax
 00420E3D    cmp         word ptr [ebx+18],20B
>00420E43    jne         00420EA9
 00420E45    mov         eax,dword ptr [ebp-4]
 00420E48    mov         eax,dword ptr [eax+44]
 00420E4B    mov         edx,dword ptr [ebp-4]
 00420E4E    mov         dword ptr [edx+30],eax
 00420E51    mov         edx,ebx
 00420E53    add         edx,108
 00420E59    mov         eax,edx
 00420E5B    movzx       edx,word ptr [ebx+6]
 00420E5F    dec         edx
 00420E60    test        edx,edx
>00420E62    jl          00420E8F
 00420E64    inc         edx
 00420E65    mov         edi,dword ptr [eax+24]
 00420E68    test        edi,40
>00420E6E    jne         00420E78
 00420E70    test        edi,80
>00420E76    je          00420E89
 00420E78    mov         edx,dword ptr [ebp-4]
 00420E7B    mov         edx,dword ptr [edx+38]
 00420E7E    add         edx,dword ptr [eax+0C]
 00420E81    mov         eax,dword ptr [ebp-4]
 00420E84    mov         dword ptr [eax+30],edx
>00420E87    jmp         00420E8F
 00420E89    add         eax,28
 00420E8C    dec         edx
>00420E8D    jne         00420E65
 00420E8F    mov         eax,dword ptr [ebp-4]
 00420E92    mov         eax,dword ptr [eax+30]
 00420E95    lea         edx,[ebx+18]
 00420E98    add         eax,dword ptr [edx+8]
 00420E9B    lea         edx,[ebx+18]
 00420E9E    add         eax,dword ptr [edx+0C]
 00420EA1    mov         edx,dword ptr [ebp-4]
 00420EA4    mov         dword ptr [edx+34],eax
>00420EA7    jmp         00420EC4
 00420EA9    mov         eax,dword ptr [ebp-4]
 00420EAC    mov         eax,dword ptr [eax+38]
 00420EAF    add         eax,dword ptr [ebx+30]
 00420EB2    mov         edx,dword ptr [ebp-4]
 00420EB5    mov         dword ptr [edx+30],eax
 00420EB8    add         eax,dword ptr [ebx+20]
 00420EBB    add         eax,dword ptr [ebx+24]
 00420EBE    mov         edx,dword ptr [ebp-4]
 00420EC1    mov         dword ptr [edx+34],eax
 00420EC4    mov         eax,dword ptr [ebp-4]
 00420EC7    add         eax,48
 00420ECA    mov         edx,dword ptr [ebp+14]
 00420ECD    call        @WStrAsg
 00420ED2    push        ebp
 00420ED3    call        0041E290
 00420ED8    pop         ecx
 00420ED9    test        al,al
>00420EDB    jne         00420F21
 00420EDD    cmp         byte ptr [ebp+8],0
>00420EE1    jne         00420EF6
 00420EE3    push        ebp
 00420EE4    push        ebx
 00420EE5    mov         ecx,esi
 00420EE7    mov         edx,dword ptr [ebp-0C]
 00420EEA    mov         al,1
 00420EEC    call        00420594
 00420EF1    pop         ecx
 00420EF2    test        al,al
>00420EF4    jne         00420F21
 00420EF6    push        ebp
 00420EF7    mov         al,byte ptr [ebp+8]
 00420EFA    call        00420940
 00420EFF    pop         ecx
 00420F00    test        al,al
>00420F02    jne         00420F21
 00420F04    cmp         byte ptr [ebp+8],0
>00420F08    jne         00420F1D
 00420F0A    push        ebp
 00420F0B    push        ebx
 00420F0C    mov         ecx,esi
 00420F0E    mov         edx,dword ptr [ebp-0C]
 00420F11    xor         eax,eax
 00420F13    call        00420594
 00420F18    pop         ecx
 00420F19    test        al,al
>00420F1B    jne         00420F21
 00420F1D    xor         eax,eax
>00420F1F    jmp         00420F23
 00420F21    mov         al,1
 00420F23    mov         edx,dword ptr [ebp-4]
 00420F26    mov         byte ptr [edx+3C],al
>00420F29    jmp         00420FD4
 00420F2E    cmp         byte ptr [ebp+8],0
>00420F32    jne         00420F4A
 00420F34    push        ebp
 00420F35    push        0
 00420F37    xor         ecx,ecx
 00420F39    mov         edx,2
 00420F3E    mov         al,1
 00420F40    call        00420594
 00420F45    pop         ecx
 00420F46    test        al,al
>00420F48    jne         00420F78
 00420F4A    push        ebp
 00420F4B    mov         al,byte ptr [ebp+8]
 00420F4E    call        00420940
 00420F53    pop         ecx
 00420F54    test        al,al
>00420F56    jne         00420F78
 00420F58    cmp         byte ptr [ebp+8],0
>00420F5C    jne         00420F74
 00420F5E    push        ebp
 00420F5F    push        0
 00420F61    xor         ecx,ecx
 00420F63    mov         edx,2
 00420F68    xor         eax,eax
 00420F6A    call        00420594
 00420F6F    pop         ecx
 00420F70    test        al,al
>00420F72    jne         00420F78
 00420F74    xor         eax,eax
>00420F76    jmp         00420F7A
 00420F78    mov         al,1
 00420F7A    mov         edx,dword ptr [ebp-4]
 00420F7D    mov         byte ptr [edx+3C],al
>00420F80    jmp         00420FD4
 00420F82    cmp         byte ptr [ebp+8],0
>00420F86    jne         00420F9E
 00420F88    push        ebp
 00420F89    push        0
 00420F8B    xor         ecx,ecx
 00420F8D    mov         edx,2
 00420F92    mov         al,1
 00420F94    call        00420594
 00420F99    pop         ecx
 00420F9A    test        al,al
>00420F9C    jne         00420FCC
 00420F9E    push        ebp
 00420F9F    mov         al,byte ptr [ebp+8]
 00420FA2    call        00420940
 00420FA7    pop         ecx
 00420FA8    test        al,al
>00420FAA    jne         00420FCC
 00420FAC    cmp         byte ptr [ebp+8],0
>00420FB0    jne         00420FC8
 00420FB2    push        ebp
 00420FB3    push        0
 00420FB5    xor         ecx,ecx
 00420FB7    mov         edx,2
 00420FBC    xor         eax,eax
 00420FBE    call        00420594
 00420FC3    pop         ecx
 00420FC4    test        al,al
>00420FC6    jne         00420FCC
 00420FC8    xor         eax,eax
>00420FCA    jmp         00420FCE
 00420FCC    mov         al,1
 00420FCE    mov         edx,dword ptr [ebp-4]
 00420FD1    mov         byte ptr [edx+3C],al
 00420FD4    mov         eax,dword ptr [ebp-4]
 00420FD7    mov         eax,dword ptr [eax+24]
 00420FDA    test        eax,eax
>00420FDC    jle         00420FEA
 00420FDE    push        ebp
 00420FDF    mov         edx,eax
 00420FE1    dec         edx
 00420FE2    xor         eax,eax
 00420FE4    call        0041E31C
 00420FE9    pop         ecx
 00420FEA    mov         eax,dword ptr [ebp-4]
 00420FED    cmp         byte ptr [ebp-5],0
>00420FF1    je          00421002
 00420FF3    call        @AfterConstruction
 00420FF8    pop         dword ptr fs:[0]
 00420FFF    add         esp,0C
 00421002    mov         eax,dword ptr [ebp-4]
 00421005    pop         edi
 00421006    pop         esi
 00421007    pop         ebx
 00421008    mov         esp,ebp
 0042100A    pop         ebp
 0042100B    ret         14
end;*}

//00421010
{*procedure sub_00421010(?:?; ?:?; ?:?; ?:?);
begin
 00421010    push        ebp
 00421011    mov         ebp,esp
 00421013    add         esp,0FFFFFFF0
 00421016    push        ebx
 00421017    push        esi
 00421018    push        edi
 00421019    mov         dword ptr [ebp-4],ecx
 0042101C    mov         esi,eax
 0042101E    cmp         byte ptr [esi+3C],0
>00421022    je          004210F7
 00421028    cmp         dword ptr [esi+0C],0
>0042102C    jle         004210F7
 00421032    mov         eax,dword ptr [esi+0C]
 00421035    mov         dword ptr [ebp-8],eax
 00421038    mov         ebx,dword ptr [ebp-8]
 0042103B    sar         ebx,1
>0042103D    jns         00421042
 0042103F    adc         ebx,0
 00421042    lea         eax,[ebx+2]
 00421045    sar         eax,1
>00421047    jns         0042104C
 00421049    adc         eax,0
 0042104C    mov         byte ptr [ebp-9],0
 00421050    test        eax,eax
>00421052    jle         004210F7
 00421058    lea         ecx,[ebx+ebx*4]
 0042105B    mov         edi,dword ptr [esi+8]
 0042105E    mov         ecx,dword ptr [edi+ecx*4+4]
 00421062    mov         dword ptr [ebp-10],ecx
 00421065    test        dl,dl
>00421067    je          00421076
 00421069    lea         ecx,[ebx+ebx*4]
 0042106C    mov         edi,dword ptr [esi+8]
 0042106F    cmp         byte ptr [edi+ecx*4+1],0
>00421074    je          0042108A
 00421076    lea         ecx,[ebx+ebx*4]
 00421079    mov         edi,dword ptr [esi+8]
 0042107C    cmp         dl,byte ptr [edi+ecx*4+1]
>00421080    jne         00421094
 00421082    mov         ecx,dword ptr [ebp-4]
 00421085    cmp         ecx,dword ptr [ebp-10]
>00421088    jae         00421094
 0042108A    sub         ebx,eax
 0042108C    test        ebx,ebx
>0042108E    jge         004210D6
 00421090    xor         ebx,ebx
>00421092    jmp         004210D6
 00421094    lea         ecx,[ebx+ebx*4]
 00421097    mov         edi,dword ptr [esi+8]
 0042109A    cmp         dl,byte ptr [edi+ecx*4+1]
>0042109E    jne         004210CB
 004210A0    lea         ecx,[ebx+ebx*4]
 004210A3    mov         edi,dword ptr [esi+8]
 004210A6    mov         ecx,dword ptr [edi+ecx*4+8]
 004210AA    add         ecx,dword ptr [ebp-10]
 004210AD    cmp         ecx,dword ptr [ebp-4]
>004210B0    jbe         004210CB
 004210B2    mov         eax,dword ptr [ebp+8]
 004210B5    lea         edx,[ebx+ebx*4]
 004210B8    mov         ecx,dword ptr [esi+8]
 004210BB    lea         edx,[ecx+edx*4]
 004210BE    mov         ecx,dword ptr ds:[41C61C];TMfSegment
 004210C4    call        @CopyRecord
>004210C9    jmp         0042110B
 004210CB    add         ebx,eax
 004210CD    cmp         ebx,dword ptr [ebp-8]
>004210D0    jl          004210D6
 004210D2    mov         ebx,dword ptr [ebp-8]
 004210D5    dec         ebx
 004210D6    cmp         byte ptr [ebp-9],0
>004210DA    jne         004210F7
 004210DC    cmp         eax,1
>004210DF    jne         004210E7
 004210E1    mov         byte ptr [ebp-9],1
>004210E5    jmp         004210EF
 004210E7    inc         eax
 004210E8    sar         eax,1
>004210EA    jns         004210EF
 004210EC    adc         eax,0
 004210EF    test        eax,eax
>004210F1    jg          00421058
 004210F7    mov         eax,dword ptr [ebp+8]
 004210FA    mov         byte ptr [eax],0
 004210FD    mov         eax,dword ptr [ebp+8]
 00421100    mov         edx,dword ptr ds:[41C61C];TMfSegment
 00421106    call        @Finalize
 0042110B    pop         edi
 0042110C    pop         esi
 0042110D    pop         ebx
 0042110E    mov         esp,ebp
 00421110    pop         ebp
 00421111    ret         4
end;*}

//00421114
{*procedure sub_00421114(?:?; ?:?; ?:?);
begin
 00421114    push        ebx
 00421115    push        esi
 00421116    push        edi
 00421117    push        ebp
 00421118    add         esp,0FFFFFFF8
 0042111B    mov         dword ptr [esp],ecx
 0042111E    mov         esi,eax
 00421120    cmp         byte ptr [esi+3C],0
>00421124    je          004211DD
 0042112A    cmp         dword ptr [esi+18],0
>0042112E    jle         004211DD
 00421134    mov         edi,dword ptr [esi+18]
 00421137    mov         ebx,edi
 00421139    sar         ebx,1
>0042113B    jns         00421140
 0042113D    adc         ebx,0
 00421140    lea         eax,[ebx+2]
 00421143    sar         eax,1
>00421145    jns         0042114A
 00421147    adc         eax,0
 0042114A    mov         byte ptr [esp+4],0
 0042114F    test        eax,eax
>00421151    jle         004211DD
 00421157    lea         ecx,[ebx+ebx*2]
 0042115A    mov         ebp,dword ptr [esi+14]
 0042115D    mov         ecx,dword ptr [ebp+ecx*4+8]
 00421161    cmp         ecx,edx
>00421163    jbe         0042116F
 00421165    sub         ebx,eax
 00421167    test        ebx,ebx
>00421169    jge         004211BA
 0042116B    xor         ebx,ebx
>0042116D    jmp         004211BA
 0042116F    lea         ecx,[ebx+1]
 00421172    cmp         edi,ecx
>00421174    jle         00421184
 00421176    lea         ecx,[ebx+ebx*2]
 00421179    mov         ebp,dword ptr [esi+14]
 0042117C    mov         ecx,dword ptr [ebp+ecx*4+14]
 00421180    cmp         ecx,edx
>00421182    ja          00421198
 00421184    lea         ecx,[ebx+1]
 00421187    cmp         edi,ecx
>00421189    jne         004211B1
 0042118B    cmp         dword ptr [esi+44],0
>0042118F    je          00421198
 00421191    mov         ecx,dword ptr [esi+44]
 00421194    cmp         ecx,edx
>00421196    jbe         004211B1
 00421198    mov         eax,dword ptr [esp]
 0042119B    lea         edx,[ebx+ebx*2]
 0042119E    mov         ecx,dword ptr [esi+14]
 004211A1    lea         edx,[ecx+edx*4]
 004211A4    mov         ecx,dword ptr ds:[41C63C];TMfPublic
 004211AA    call        @CopyRecord
>004211AF    jmp         004211F1
 004211B1    add         ebx,eax
 004211B3    cmp         edi,ebx
>004211B5    jg          004211BA
 004211B7    mov         ebx,edi
 004211B9    dec         ebx
 004211BA    cmp         byte ptr [esp+4],0
>004211BF    jne         004211DD
 004211C1    cmp         eax,1
>004211C4    jne         004211CD
 004211C6    mov         byte ptr [esp+4],1
>004211CB    jmp         004211D5
 004211CD    inc         eax
 004211CE    sar         eax,1
>004211D0    jns         004211D5
 004211D2    adc         eax,0
 004211D5    test        eax,eax
>004211D7    jg          00421157
 004211DD    mov         eax,dword ptr [esp]
 004211E0    mov         byte ptr [eax],0
 004211E3    mov         eax,dword ptr [esp]
 004211E6    mov         edx,dword ptr ds:[41C63C];TMfPublic
 004211EC    call        @Finalize
 004211F1    pop         ecx
 004211F2    pop         edx
 004211F3    pop         ebp
 004211F4    pop         edi
 004211F5    pop         esi
 004211F6    pop         ebx
 004211F7    ret
end;*}

//004211F8
{*function sub_004211F8(?:?; ?:?; ?:WideString; ?:?; ?:?):?;
begin
 004211F8    push        ebp
 004211F9    mov         ebp,esp
 004211FB    add         esp,0FFFFFFE0
 004211FE    push        ebx
 004211FF    push        esi
 00421200    push        edi
 00421201    xor         ebx,ebx
 00421203    mov         dword ptr [ebp-20],ebx
 00421206    mov         dword ptr [ebp-1C],ebx
 00421209    mov         dword ptr [ebp-18],ebx
 0042120C    mov         dword ptr [ebp-8],ecx
 0042120F    mov         byte ptr [ebp-1],dl
 00421212    mov         ebx,eax
 00421214    xor         eax,eax
 00421216    push        ebp
 00421217    push        4213EE
 0042121C    push        dword ptr fs:[eax]
 0042121F    mov         dword ptr fs:[eax],esp
 00421222    xor         eax,eax
 00421224    mov         dword ptr [ebp-0C],eax
 00421227    mov         eax,dword ptr [ebx+0C]
 0042122A    dec         eax
 0042122B    test        eax,eax
>0042122D    jl          00421321
 00421233    inc         eax
 00421234    mov         dword ptr [ebp-10],eax
 00421237    xor         edi,edi
 00421239    lea         esi,[edi+edi*4]
 0042123C    mov         eax,dword ptr [ebx+8]
 0042123F    mov         al,byte ptr [eax+esi*4+1]
 00421243    cmp         al,byte ptr [ebp-1]
>00421246    jne         00421317
 0042124C    mov         eax,dword ptr [ebx+8]
 0042124F    mov         eax,dword ptr [eax+esi*4+0C]
 00421253    mov         ecx,dword ptr ds:[55B210];^gvar_0053D140
 00421259    mov         ecx,dword ptr [ecx]
 0042125B    mov         edx,dword ptr [ebp-8]
 0042125E    call        ecx
 00421260    test        al,al
>00421262    je          00421317
 00421268    mov         eax,dword ptr [ebx+18]
 0042126B    dec         eax
 0042126C    test        eax,eax
>0042126E    jl          00421317
 00421274    inc         eax
 00421275    mov         dword ptr [ebp-14],eax
 00421278    xor         esi,esi
 0042127A    lea         eax,[esi+esi*2]
 0042127D    mov         edx,dword ptr [ebx+14]
 00421280    mov         al,byte ptr [edx+eax*4+1]
 00421284    cmp         al,byte ptr [ebp-1]
>00421287    jne         0042130D
 0042128D    lea         eax,[esi+esi*2]
 00421290    mov         edx,dword ptr [ebx+14]
 00421293    mov         eax,dword ptr [edx+eax*4+8]
 00421297    lea         edx,[edi+edi*4]
 0042129A    mov         ecx,dword ptr [ebx+8]
 0042129D    cmp         eax,dword ptr [ecx+edx*4+4]
>004212A1    jb          0042130D
 004212A3    lea         eax,[edi+edi*4]
 004212A6    mov         edx,dword ptr [ebx+8]
 004212A9    mov         eax,dword ptr [edx+eax*4+4]
 004212AD    lea         edx,[edi+edi*4]
 004212B0    mov         ecx,dword ptr [ebx+8]
 004212B3    add         eax,dword ptr [ecx+edx*4+8]
 004212B7    lea         edx,[esi+esi*2]
 004212BA    mov         ecx,dword ptr [ebx+14]
 004212BD    cmp         eax,dword ptr [ecx+edx*4+8]
>004212C1    jb          0042130D
 004212C3    cmp         byte ptr [ebp+8],0
>004212C7    jne         004212E4
 004212C9    lea         eax,[esi+esi*2]
 004212CC    mov         edx,dword ptr [ebx+14]
 004212CF    mov         eax,dword ptr [edx+eax*4+4]
 004212D3    mov         ecx,dword ptr ds:[55B210];^gvar_0053D140
 004212D9    mov         ecx,dword ptr [ecx]
 004212DB    mov         edx,dword ptr [ebp+0C]
 004212DE    call        ecx
 004212E0    test        al,al
>004212E2    jne         004212FE
 004212E4    cmp         byte ptr [ebp+8],0
>004212E8    je          0042130D
 004212EA    lea         eax,[esi+esi*2]
 004212ED    mov         edx,dword ptr [ebx+14]
 004212F0    mov         eax,dword ptr [edx+eax*4+4]
 004212F4    mov         edx,dword ptr [ebp+0C]
 004212F7    call        @WStrCmp
>004212FC    jne         0042130D
 004212FE    lea         eax,[esi+esi*2]
 00421301    mov         edx,dword ptr [ebx+14]
 00421304    mov         eax,dword ptr [edx+eax*4+8]
 00421308    mov         dword ptr [ebp-0C],eax
>0042130B    jmp         00421317
 0042130D    inc         esi
 0042130E    dec         dword ptr [ebp-14]
>00421311    jne         0042127A
 00421317    inc         edi
 00421318    dec         dword ptr [ebp-10]
>0042131B    jne         00421239
 00421321    cmp         dword ptr [ebp-0C],0
>00421325    jne         004213D3
 0042132B    push        7FFFFFFF
 00421330    mov         esi,dword ptr ds:[55B400];^gvar_0053D148
 00421336    mov         esi,dword ptr [esi]
 00421338    mov         ecx,1
 0042133D    mov         edx,dword ptr [ebp-8]
 00421340    mov         eax,421408
 00421345    call        esi
 00421347    test        eax,eax
>00421349    jne         004213D3
 0042134F    mov         eax,dword ptr [ebp+0C]
 00421352    push        eax
 00421353    mov         al,byte ptr [ebp+8]
 00421356    push        eax
 00421357    lea         eax,[ebp-18]
 0042135A    mov         ecx,421410;'.cpp'
 0042135F    mov         edx,dword ptr [ebp-8]
 00421362    call        @WStrCat3
 00421367    mov         ecx,dword ptr [ebp-18]
 0042136A    mov         dl,byte ptr [ebp-1]
 0042136D    mov         eax,ebx
 0042136F    call        004211F8
 00421374    mov         dword ptr [ebp-0C],eax
 00421377    cmp         dword ptr [ebp-0C],0
>0042137B    jne         004213D3
 0042137D    mov         eax,dword ptr [ebp+0C]
 00421380    push        eax
 00421381    mov         al,byte ptr [ebp+8]
 00421384    push        eax
 00421385    lea         eax,[ebp-1C]
 00421388    mov         ecx,421420;'.h'
 0042138D    mov         edx,dword ptr [ebp-8]
 00421390    call        @WStrCat3
 00421395    mov         ecx,dword ptr [ebp-1C]
 00421398    mov         dl,byte ptr [ebp-1]
 0042139B    mov         eax,ebx
 0042139D    call        004211F8
 004213A2    mov         dword ptr [ebp-0C],eax
 004213A5    cmp         dword ptr [ebp-0C],0
>004213A9    jne         004213D3
 004213AB    mov         eax,dword ptr [ebp+0C]
 004213AE    push        eax
 004213AF    mov         al,byte ptr [ebp+8]
 004213B2    push        eax
 004213B3    lea         eax,[ebp-20]
 004213B6    mov         ecx,42142C;'.c'
 004213BB    mov         edx,dword ptr [ebp-8]
 004213BE    call        @WStrCat3
 004213C3    mov         ecx,dword ptr [ebp-20]
 004213C6    mov         dl,byte ptr [ebp-1]
 004213C9    mov         eax,ebx
 004213CB    call        004211F8
 004213D0    mov         dword ptr [ebp-0C],eax
 004213D3    xor         eax,eax
 004213D5    pop         edx
 004213D6    pop         ecx
 004213D7    pop         ecx
 004213D8    mov         dword ptr fs:[eax],edx
 004213DB    push        4213F5
 004213E0    lea         eax,[ebp-20]
 004213E3    mov         edx,3
 004213E8    call        @WStrArrayClr
 004213ED    ret
>004213EE    jmp         @HandleFinally
>004213F3    jmp         004213E0
 004213F5    mov         eax,dword ptr [ebp-0C]
 004213F8    pop         edi
 004213F9    pop         esi
 004213FA    pop         ebx
 004213FB    mov         esp,ebp
 004213FD    pop         ebp
 004213FE    ret         8
end;*}

//00421434
{*function sub_00421434:?;
begin
 00421434    push        ecx
 00421435    mov         ecx,esp
 00421437    call        00421440
 0042143C    pop         edx
 0042143D    ret
end;*}

//00421440
{*function sub_00421440(?:?; ?:?; ?:?):?;
begin
 00421440    push        ebp
 00421441    mov         ebp,esp
 00421443    add         esp,0FFFFFFCC
 00421446    push        ebx
 00421447    push        esi
 00421448    push        edi
 00421449    mov         dword ptr [ebp-8],ecx
 0042144C    mov         dword ptr [ebp-4],edx
 0042144F    mov         ebx,eax
 00421451    lea         eax,[ebp-20]
 00421454    mov         edx,dword ptr ds:[41C61C];TMfSegment
 0042145A    call        @AddRefRecord
 0042145F    lea         eax,[ebp-34]
 00421462    mov         edx,dword ptr ds:[41C61C];TMfSegment
 00421468    call        @AddRefRecord
 0042146D    xor         eax,eax
 0042146F    push        ebp
 00421470    push        4215DC
 00421475    push        dword ptr fs:[eax]
 00421478    mov         dword ptr fs:[eax],esp
 0042147B    cmp         dword ptr [ebx+24],0
>0042147F    jle         00421591
 00421485    xor         eax,eax
 00421487    mov         dword ptr [ebp-0C],eax
 0042148A    mov         eax,dword ptr [ebp-4]
 0042148D    inc         eax
 0042148E    mov         edx,dword ptr [ebp-8]
 00421491    mov         dword ptr [edx],eax
 00421493    cmp         byte ptr [ebx+3C],0
>00421497    je          004215BB
 0042149D    cmp         dword ptr [ebx+24],0
>004214A1    jle         004215BB
 004214A7    mov         esi,dword ptr [ebx+24]
 004214AA    sar         esi,1
>004214AC    jns         004214B1
 004214AE    adc         esi,0
 004214B1    lea         eax,[esi+2]
 004214B4    sar         eax,1
>004214B6    jns         004214BB
 004214B8    adc         eax,0
 004214BB    xor         edx,edx
>004214BD    jmp         00421582
 004214C2    mov         ecx,dword ptr [ebx+20]
 004214C5    mov         ecx,dword ptr [ecx+esi*8+4]
 004214C9    cmp         ecx,dword ptr [ebp-4]
>004214CC    jbe         004214DF
 004214CE    sub         esi,eax
 004214D0    test        esi,esi
>004214D2    jge         0042156D
 004214D8    xor         esi,esi
>004214DA    jmp         0042156D
 004214DF    lea         ecx,[esi+1]
 004214E2    cmp         ecx,dword ptr [ebx+24]
>004214E5    jge         004214F3
 004214E7    mov         ecx,dword ptr [ebx+20]
 004214EA    mov         ecx,dword ptr [ecx+esi*8+0C]
 004214EE    cmp         ecx,dword ptr [ebp-4]
>004214F1    ja          00421507
 004214F3    lea         ecx,[esi+1]
 004214F6    cmp         ecx,dword ptr [ebx+24]
>004214F9    jne         00421561
 004214FB    mov         edi,dword ptr [ebx+44]
 004214FE    test        edi,edi
>00421500    je          00421507
 00421502    cmp         edi,dword ptr [ebp-4]
>00421505    jbe         00421561
 00421507    lea         eax,[ebp-20]
 0042150A    push        eax
 0042150B    mov         ecx,dword ptr [ebp-4]
 0042150E    mov         dl,1
 00421510    mov         eax,ebx
 00421512    call        00421010
 00421517    cmp         byte ptr [ebp-20],0
>0042151B    je          004215BB
 00421521    mov         eax,dword ptr [ebx+20]
 00421524    mov         eax,dword ptr [eax+esi*8+4]
 00421528    cmp         eax,dword ptr [ebp-1C]
>0042152B    jb          004215BB
 00421531    mov         eax,dword ptr [ebx+20]
 00421534    mov         eax,dword ptr [eax+esi*8+4]
 00421538    mov         edx,dword ptr [ebp-1C]
 0042153B    add         edx,dword ptr [ebp-18]
 0042153E    cmp         eax,edx
>00421540    ja          004215BB
 00421542    mov         eax,dword ptr [ebx+20]
 00421545    mov         eax,dword ptr [eax+esi*8]
 00421548    mov         dword ptr [ebp-0C],eax
 0042154B    lea         eax,[esi+1]
 0042154E    cmp         eax,dword ptr [ebx+24]
>00421551    jge         004215BB
 00421553    mov         eax,dword ptr [ebx+20]
 00421556    mov         eax,dword ptr [eax+esi*8+0C]
 0042155A    mov         edx,dword ptr [ebp-8]
 0042155D    mov         dword ptr [edx],eax
>0042155F    jmp         004215BB
 00421561    add         esi,eax
 00421563    mov         ecx,dword ptr [ebx+24]
 00421566    cmp         esi,ecx
>00421568    jl          0042156D
 0042156A    mov         esi,ecx
 0042156C    dec         esi
 0042156D    test        dl,dl
>0042156F    jne         004215BB
 00421571    cmp         eax,1
>00421574    jne         0042157A
 00421576    mov         dl,1
>00421578    jmp         00421582
 0042157A    inc         eax
 0042157B    sar         eax,1
>0042157D    jns         00421582
 0042157F    adc         eax,0
 00421582    test        eax,eax
>00421584    jle         004215BB
 00421586    cmp         eax,dword ptr [ebx+24]
>00421589    jl          004214C2
>0042158F    jmp         004215BB
 00421591    lea         eax,[ebp-34]
 00421594    push        eax
 00421595    mov         ecx,dword ptr [ebp-4]
 00421598    mov         dl,1
 0042159A    mov         eax,ebx
 0042159C    call        00421010
 004215A1    cmp         byte ptr [ebp-34],0
>004215A5    je          004215B6
 004215A7    cmp         byte ptr [ebp-24],0
>004215AB    je          004215B6
 004215AD    mov         dword ptr [ebp-0C],0FFFFFFFF
>004215B4    jmp         004215BB
 004215B6    xor         eax,eax
 004215B8    mov         dword ptr [ebp-0C],eax
 004215BB    xor         eax,eax
 004215BD    pop         edx
 004215BE    pop         ecx
 004215BF    pop         ecx
 004215C0    mov         dword ptr fs:[eax],edx
 004215C3    push        4215E3
 004215C8    lea         eax,[ebp-34]
 004215CB    mov         edx,dword ptr ds:[41C61C];TMfSegment
 004215D1    mov         ecx,2
 004215D6    call        @FinalizeArray
 004215DB    ret
>004215DC    jmp         @HandleFinally
>004215E1    jmp         004215C8
 004215E3    mov         eax,dword ptr [ebp-0C]
 004215E6    pop         edi
 004215E7    pop         esi
 004215E8    pop         ebx
 004215E9    mov         esp,ebp
 004215EB    pop         ebp
 004215EC    ret
end;*}

//00421614
{*procedure sub_00421614(?:TMapFile; ?:?);
begin
 00421614    push        ebp
 00421615    mov         ebp,esp
 00421617    add         esp,0FFFFFDA8
 0042161D    push        ebx
 0042161E    push        esi
 0042161F    push        edi
 00421620    xor         ecx,ecx
 00421622    mov         dword ptr [ebp-258],ecx
 00421628    mov         edi,edx
 0042162A    mov         esi,eax
 0042162C    xor         eax,eax
 0042162E    push        ebp
 0042162F    push        421701
 00421634    push        dword ptr fs:[eax]
 00421637    mov         dword ptr fs:[eax],esp
 0042163A    call        kernel32.GetVersion
 0042163F    test        eax,80000000
>00421644    je          0042166E
 00421646    lea         eax,[ebp-254]
 0042164C    push        eax
 0042164D    lea         eax,[ebp-258]
 00421653    mov         edx,dword ptr [esi+4C]
 00421656    call        @LStrFromWStr
 0042165B    mov         eax,dword ptr [ebp-258]
 00421661    call        @LStrToPChar
 00421666    push        eax
 00421667    call        kernel32.FindFirstFileA
>0042166C    jmp         00421683
 0042166E    lea         eax,[ebp-254]
 00421674    push        eax
 00421675    mov         eax,dword ptr [esi+4C]
 00421678    call        @WStrToPWChar
 0042167D    push        eax
 0042167E    call        kernel32.FindFirstFileW
 00421683    push        eax
 00421684    call        kernel32.FindClose
 00421689    lea         eax,[ebp-2]
 0042168C    push        eax
 0042168D    lea         eax,[ebp-4]
 00421690    push        eax
 00421691    lea         eax,[ebp-240]
 00421697    push        eax
 00421698    call        kernel32.FileTimeToDosDateTime
 0042169D    mov         eax,[0055D7D8];gvar_0055D7D8:?
 004216A2    call        @LStrLen
 004216A7    mov         ebx,eax
 004216A9    lea         eax,[ebx+1]
 004216AC    push        eax
 004216AD    mov         eax,55D7D8;gvar_0055D7D8:?
 004216B2    mov         ecx,1
 004216B7    mov         edx,dword ptr ds:[4215F0];_DynArr_14_11
 004216BD    call        @DynArraySetLength
 004216C2    add         esp,4
 004216C5    lea         eax,[ebx+ebx*2]
 004216C8    mov         edx,dword ptr ds:[55D7D8];gvar_0055D7D8:?
 004216CE    mov         ecx,dword ptr [ebp-4]
 004216D1    mov         dword ptr [edx+eax*4],ecx
 004216D4    mov         edx,dword ptr ds:[55D7D8];gvar_0055D7D8:?
 004216DA    mov         dword ptr [edx+eax*4+4],edi
 004216DE    mov         edx,dword ptr ds:[55D7D8];gvar_0055D7D8:?
 004216E4    mov         dword ptr [edx+eax*4+8],esi
 004216E8    xor         eax,eax
 004216EA    pop         edx
 004216EB    pop         ecx
 004216EC    pop         ecx
 004216ED    mov         dword ptr fs:[eax],edx
 004216F0    push        421708
 004216F5    lea         eax,[ebp-258]
 004216FB    call        @LStrClr
 00421700    ret
>00421701    jmp         @HandleFinally
>00421706    jmp         004216F5
 00421708    pop         edi
 00421709    pop         esi
 0042170A    pop         ebx
 0042170B    mov         esp,ebp
 0042170D    pop         ebp
 0042170E    ret
end;*}

//00421710
{*function sub_00421710(?:WideString; ?:?):?;
begin
 00421710    push        ebp
 00421711    mov         ebp,esp
 00421713    add         esp,0FFFFFDA0
 00421719    push        ebx
 0042171A    push        esi
 0042171B    push        edi
 0042171C    xor         ecx,ecx
 0042171E    mov         dword ptr [ebp-260],ecx
 00421724    mov         dword ptr [ebp-4],edx
 00421727    mov         edi,eax
 00421729    xor         eax,eax
 0042172B    push        ebp
 0042172C    push        42187E
 00421731    push        dword ptr fs:[eax]
 00421734    mov         dword ptr fs:[eax],esp
 00421737    xor         eax,eax
 00421739    mov         dword ptr [ebp-8],eax
 0042173C    mov         eax,[0055D7D8];gvar_0055D7D8:?
 00421741    call        00405CE8
 00421746    mov         esi,eax
 00421748    test        esi,esi
>0042174A    jl          00421865
 00421750    inc         esi
 00421751    xor         ebx,ebx
 00421753    lea         eax,[ebx+ebx*2]
 00421756    mov         edx,dword ptr ds:[55D7D8];gvar_0055D7D8:?
 0042175C    mov         eax,dword ptr [edx+eax*4+8]
 00421760    mov         eax,dword ptr [eax+4C]
 00421763    mov         ecx,dword ptr ds:[55B210];^gvar_0053D140
 00421769    mov         ecx,dword ptr [ecx]
 0042176B    mov         edx,edi
 0042176D    call        ecx
 0042176F    test        al,al
>00421771    je          0042185D
 00421777    call        kernel32.GetVersion
 0042177C    test        eax,80000000
>00421781    je          004217AA
 00421783    lea         eax,[ebp-25C]
 00421789    push        eax
 0042178A    lea         eax,[ebp-260]
 00421790    mov         edx,edi
 00421792    call        @LStrFromWStr
 00421797    mov         eax,dword ptr [ebp-260]
 0042179D    call        @LStrToPChar
 004217A2    push        eax
 004217A3    call        kernel32.FindFirstFileA
>004217A8    jmp         004217BE
 004217AA    lea         eax,[ebp-25C]
 004217B0    push        eax
 004217B1    mov         eax,edi
 004217B3    call        @WStrToPWChar
 004217B8    push        eax
 004217B9    call        kernel32.FindFirstFileW
 004217BE    push        eax
 004217BF    call        kernel32.FindClose
 004217C4    lea         eax,[ebp-0A]
 004217C7    push        eax
 004217C8    lea         eax,[ebp-0C]
 004217CB    push        eax
 004217CC    lea         eax,[ebp-248]
 004217D2    push        eax
 004217D3    call        kernel32.FileTimeToDosDateTime
 004217D8    lea         esi,[ebx+ebx*2]
 004217DB    mov         eax,[0055D7D8];gvar_0055D7D8:?
 004217E0    mov         eax,dword ptr [eax+esi*4]
 004217E3    cmp         eax,dword ptr [ebp-0C]
>004217E6    jne         004217F6
 004217E8    mov         eax,[0055D7D8];gvar_0055D7D8:?
 004217ED    mov         eax,dword ptr [eax+esi*4+4]
 004217F1    cmp         eax,dword ptr [ebp-4]
>004217F4    je          0042184F
 004217F6    mov         eax,[0055D7D8];gvar_0055D7D8:?
 004217FB    mov         eax,dword ptr [eax+esi*4+8]
 004217FF    call        TObject.Free
 00421804    mov         eax,[0055D7D8];gvar_0055D7D8:?
 00421809    call        00405CE8
 0042180E    mov         edi,eax
 00421810    mov         eax,[0055D7D8];gvar_0055D7D8:?
 00421815    lea         edx,[edi+edi*2]
 00421818    mov         ecx,dword ptr ds:[55D7D8];gvar_0055D7D8:?
 0042181E    lea         esi,[eax+esi*4]
 00421821    mov         eax,dword ptr [ecx+edx*4]
 00421824    mov         dword ptr [esi],eax
 00421826    mov         eax,dword ptr [ecx+edx*4+4]
 0042182A    mov         dword ptr [esi+4],eax
 0042182D    mov         eax,dword ptr [ecx+edx*4+8]
 00421831    mov         dword ptr [esi+8],eax
 00421834    push        edi
 00421835    mov         eax,55D7D8;gvar_0055D7D8:?
 0042183A    mov         ecx,1
 0042183F    mov         edx,dword ptr ds:[4215F0];_DynArr_14_11
 00421845    call        @DynArraySetLength
 0042184A    add         esp,4
>0042184D    jmp         00421865
 0042184F    mov         eax,[0055D7D8];gvar_0055D7D8:?
 00421854    mov         eax,dword ptr [eax+esi*4+8]
 00421858    mov         dword ptr [ebp-8],eax
>0042185B    jmp         00421865
 0042185D    inc         ebx
 0042185E    dec         esi
>0042185F    jne         00421753
 00421865    xor         eax,eax
 00421867    pop         edx
 00421868    pop         ecx
 00421869    pop         ecx
 0042186A    mov         dword ptr fs:[eax],edx
 0042186D    push        421885
 00421872    lea         eax,[ebp-260]
 00421878    call        @LStrClr
 0042187D    ret
>0042187E    jmp         @HandleFinally
>00421883    jmp         00421872
 00421885    mov         eax,dword ptr [ebp-8]
 00421888    pop         edi
 00421889    pop         esi
 0042188A    pop         ebx
 0042188B    mov         esp,ebp
 0042188D    pop         ebp
 0042188E    ret
end;*}

//00421890
procedure sub_00421890;
begin
{*
 00421890    push        ebx
 00421891    push        esi
 00421892    push        edi
 00421893    mov         edi,55D7D8;gvar_0055D7D8:?
 00421898    mov         eax,dword ptr [edi]
 0042189A    call        00405CE8
 0042189F    mov         ebx,eax
 004218A1    test        ebx,ebx
>004218A3    jl          004218BA
 004218A5    inc         ebx
 004218A6    xor         esi,esi
 004218A8    lea         eax,[esi+esi*2]
 004218AB    mov         edx,dword ptr [edi]
 004218AD    mov         eax,dword ptr [edx+eax*4+8]
 004218B1    call        TObject.Free
 004218B6    inc         esi
 004218B7    dec         ebx
>004218B8    jne         004218A8
 004218BA    mov         eax,edi
 004218BC    mov         edx,dword ptr ds:[4215F0];_DynArr_14_11
 004218C2    call        @DynArrayClear
 004218C7    pop         edi
 004218C8    pop         esi
 004218C9    pop         ebx
 004218CA    ret
*}
end;

//004218CC
{*function sub_004218CC(?:?):?;
begin
 004218CC    push        ebp
 004218CD    mov         ebp,esp
 004218CF    add         esp,0FFFFFDD0
 004218D5    push        ebx
 004218D6    push        esi
 004218D7    push        edi
 004218D8    xor         edx,edx
 004218DA    mov         dword ptr [ebp-230],edx
 004218E0    mov         dword ptr [ebp-4],edx
 004218E3    mov         ebx,eax
 004218E5    xor         eax,eax
 004218E7    push        ebp
 004218E8    push        421A95
 004218ED    push        dword ptr fs:[eax]
 004218F0    mov         dword ptr fs:[eax],esp
 004218F3    test        ebx,ebx
>004218F5    jne         004218FD
 004218F7    mov         ebx,dword ptr ds:[55C664];gvar_0055C664
 004218FD    xor         eax,eax
 004218FF    push        ebp
 00421900    push        421A50
 00421905    push        dword ptr fs:[eax]
 00421908    mov         dword ptr fs:[eax],esp
 0042190B    push        1C
 0042190D    lea         eax,[ebp-22C]
 00421913    push        eax
 00421914    push        ebx
 00421915    call        kernel32.VirtualQuery
 0042191A    cmp         eax,1C
>0042191D    jne         00421A2C
 00421923    cmp         dword ptr [ebp-21C],1000
>0042192D    jne         00421A2C
 00421933    cmp         dword ptr [ebp-228],0
>0042193A    je          00421A2C
 00421940    call        kernel32.GetVersion
 00421945    test        eax,80000000
>0042194A    jne         00421982
 0042194C    push        104
 00421951    lea         eax,[ebp-20E]
 00421957    push        eax
 00421958    mov         eax,dword ptr [ebp-228]
 0042195E    push        eax
 0042195F    call        kernel32.GetModuleFileNameW
 00421964    test        eax,eax
 00421966    setne       bl
 00421969    test        bl,bl
>0042196B    je          004219C2
 0042196D    lea         eax,[ebp-4]
 00421970    lea         edx,[ebp-20E]
 00421976    mov         ecx,105
 0042197B    call        @WStrFromWArray
>00421980    jmp         004219C2
 00421982    push        104
 00421987    lea         eax,[ebp-20E]
 0042198D    push        eax
 0042198E    mov         eax,dword ptr [ebp-228]
 00421994    push        eax
 00421995    call        kernel32.GetModuleFileNameA
 0042199A    test        eax,eax
 0042199C    setne       bl
 0042199F    test        bl,bl
>004219A1    je          004219C2
 004219A3    lea         eax,[ebp-230]
 004219A9    lea         edx,[ebp-20E]
 004219AF    call        @LStrFromPChar
 004219B4    mov         edx,dword ptr [ebp-230]
 004219BA    lea         eax,[ebp-4]
 004219BD    call        @WStrFromLStr
 004219C2    test        bl,bl
>004219C4    je          00421A10
 004219C6    mov         edx,dword ptr [ebp-228]
 004219CC    mov         eax,dword ptr [ebp-4]
 004219CF    call        00421710
 004219D4    mov         ebx,eax
 004219D6    test        ebx,ebx
>004219D8    jne         00421A46
 004219DA    push        0
 004219DC    mov         eax,dword ptr [ebp-4]
 004219DF    push        eax
 004219E0    mov         eax,dword ptr [ebp-228]
 004219E6    push        eax
 004219E7    push        1
 004219E9    push        0
 004219EB    mov         cl,1
 004219ED    mov         dl,1
 004219EF    mov         eax,[0041C6C8];TMapFile
 004219F4    call        TMapFile.Create;TMapFile.Create
 004219F9    mov         ebx,eax
 004219FB    cmp         byte ptr [ebx+3C],0;TMapFile.?f3C:byte
>004219FF    je          00421A46
 00421A01    mov         edx,dword ptr [ebp-228]
 00421A07    mov         eax,ebx
 00421A09    call        00421614
>00421A0E    jmp         00421A46
 00421A10    push        0
 00421A12    push        0
 00421A14    push        0
 00421A16    push        0
 00421A18    push        0
 00421A1A    xor         ecx,ecx
 00421A1C    mov         dl,1
 00421A1E    mov         eax,[0041C6C8];TMapFile
 00421A23    call        TMapFile.Create;TMapFile.Create
 00421A28    mov         ebx,eax
>00421A2A    jmp         00421A46
 00421A2C    push        0
 00421A2E    push        0
 00421A30    push        0
 00421A32    push        0
 00421A34    push        0
 00421A36    xor         ecx,ecx
 00421A38    mov         dl,1
 00421A3A    mov         eax,[0041C6C8];TMapFile
 00421A3F    call        TMapFile.Create;TMapFile.Create
 00421A44    mov         ebx,eax
 00421A46    xor         eax,eax
 00421A48    pop         edx
 00421A49    pop         ecx
 00421A4A    pop         ecx
 00421A4B    mov         dword ptr fs:[eax],edx
>00421A4E    jmp         00421A74
>00421A50    jmp         @HandleAnyException
 00421A55    push        0
 00421A57    push        0
 00421A59    push        0
 00421A5B    push        0
 00421A5D    push        0
 00421A5F    xor         ecx,ecx
 00421A61    mov         dl,1
 00421A63    mov         eax,[0041C6C8];TMapFile
 00421A68    call        TMapFile.Create;TMapFile.Create
 00421A6D    mov         ebx,eax
 00421A6F    call        @DoneExcept
 00421A74    xor         eax,eax
 00421A76    pop         edx
 00421A77    pop         ecx
 00421A78    pop         ecx
 00421A79    mov         dword ptr fs:[eax],edx
 00421A7C    push        421A9C
 00421A81    lea         eax,[ebp-230]
 00421A87    call        @LStrClr
 00421A8C    lea         eax,[ebp-4]
 00421A8F    call        @WStrClr
 00421A94    ret
>00421A95    jmp         @HandleFinally
>00421A9A    jmp         00421A81
 00421A9C    mov         eax,ebx
 00421A9E    pop         edi
 00421A9F    pop         esi
 00421AA0    pop         ebx
 00421AA1    mov         esp,ebp
 00421AA3    pop         ebp
 00421AA4    ret
end;*}

//00421AA8
{*function sub_00421AA8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00421AA8    push        ebp
 00421AA9    mov         ebp,esp
 00421AAB    add         esp,0FFFFFFD8
 00421AAE    push        ebx
 00421AAF    push        esi
 00421AB0    push        edi
 00421AB1    xor         ebx,ebx
 00421AB3    mov         dword ptr [ebp-28],ebx
 00421AB6    mov         dword ptr [ebp-24],ebx
 00421AB9    mov         dword ptr [ebp-20],ebx
 00421ABC    mov         dword ptr [ebp-1C],ebx
 00421ABF    mov         dword ptr [ebp-18],ebx
 00421AC2    mov         dword ptr [ebp-8],ecx
 00421AC5    mov         dword ptr [ebp-4],edx
 00421AC8    mov         edi,eax
 00421ACA    lea         eax,[ebp-14]
 00421ACD    mov         edx,dword ptr ds:[41C63C];TMfPublic
 00421AD3    call        @AddRefRecord
 00421AD8    xor         eax,eax
 00421ADA    push        ebp
 00421ADB    push        421B99
 00421AE0    push        dword ptr fs:[eax]
 00421AE3    mov         dword ptr fs:[eax],esp
 00421AE6    test        edi,edi
>00421AE8    jne         00421AED
 00421AEA    mov         edi,dword ptr [ebp+8]
 00421AED    test        edi,edi
>00421AEF    je          00421B6D
 00421AF1    mov         eax,edi
 00421AF3    call        004218CC
 00421AF8    mov         esi,eax
 00421AFA    mov         bl,byte ptr [esi+3C]
 00421AFD    test        bl,bl
>00421AFF    je          00421B64
 00421B01    mov         eax,dword ptr [ebp-4]
 00421B04    mov         edx,dword ptr [esi+48]
 00421B07    call        @WStrAsg
 00421B0C    lea         eax,[ebp-28]
 00421B0F    push        eax
 00421B10    mov         ecx,edi
 00421B12    mov         dl,1
 00421B14    mov         eax,esi
 00421B16    call        00421010
 00421B1B    mov         edx,dword ptr [ebp-1C]
 00421B1E    mov         eax,dword ptr [ebp-8]
 00421B21    call        @WStrAsg
 00421B26    lea         ecx,[ebp-14]
 00421B29    mov         edx,edi
 00421B2B    mov         eax,esi
 00421B2D    call        00421114
 00421B32    mov         eax,dword ptr [ebp+14]
 00421B35    mov         edx,dword ptr [ebp-10]
 00421B38    call        @WStrAsg
 00421B3D    mov         eax,dword ptr [ebp+10]
 00421B40    mov         edx,dword ptr [ebp-0C]
 00421B43    mov         dword ptr [eax],edx
 00421B45    mov         edx,edi
 00421B47    mov         eax,esi
 00421B49    call        00421434
 00421B4E    mov         edx,dword ptr [ebp+0C]
 00421B51    mov         dword ptr [edx],eax
 00421B53    mov         eax,dword ptr [ebp+0C]
 00421B56    cmp         dword ptr [eax],0
>00421B59    jge         00421B6F
 00421B5B    mov         eax,dword ptr [ebp+0C]
 00421B5E    xor         edx,edx
 00421B60    mov         dword ptr [eax],edx
>00421B62    jmp         00421B6F
 00421B64    mov         eax,esi
 00421B66    call        TObject.Free
>00421B6B    jmp         00421B6F
 00421B6D    xor         ebx,ebx
 00421B6F    xor         eax,eax
 00421B71    pop         edx
 00421B72    pop         ecx
 00421B73    pop         ecx
 00421B74    mov         dword ptr fs:[eax],edx
 00421B77    push        421BA0
 00421B7C    lea         eax,[ebp-28]
 00421B7F    mov         edx,dword ptr ds:[41C61C];TMfSegment
 00421B85    call        @FinalizeRecord
 00421B8A    lea         eax,[ebp-14]
 00421B8D    mov         edx,dword ptr ds:[41C63C];TMfPublic
 00421B93    call        @FinalizeRecord
 00421B98    ret
>00421B99    jmp         @HandleFinally
>00421B9E    jmp         00421B7C
 00421BA0    mov         eax,ebx
 00421BA2    pop         edi
 00421BA3    pop         esi
 00421BA4    pop         ebx
 00421BA5    mov         esp,ebp
 00421BA7    pop         ebp
 00421BA8    ret         10
end;*}

//00421BAC
{*function sub_00421BAC(?:?; ?:?; ?:?):?;
begin
 00421BAC    push        ebp
 00421BAD    mov         ebp,esp
 00421BAF    push        ecx
 00421BB0    push        ebx
 00421BB1    mov         dword ptr [ebp-4],ebp
 00421BB4    mov         ebx,dword ptr [ebp+10]
 00421BB7    push        ebx
 00421BB8    mov         ebx,dword ptr [ebp+0C]
 00421BBB    push        ebx
 00421BBC    mov         ebx,dword ptr [ebp+8]
 00421BBF    push        ebx
 00421BC0    mov         ebx,dword ptr [ebp-4]
 00421BC3    add         ebx,4
 00421BC6    mov         ebx,dword ptr [ebx]
 00421BC8    dec         ebx
 00421BC9    push        ebx
 00421BCA    call        00421AA8
 00421BCF    pop         ebx
 00421BD0    pop         ecx
 00421BD1    pop         ebp
 00421BD2    ret         0C
end;*}

//00421E38
{*procedure sub_00421E38(?:?; ?:?; ?:?; ?:?);
begin
 00421E38    push        ebp
 00421E39    mov         ebp,esp
 00421E3B    push        ecx
 00421E3C    push        ebx
 00421E3D    push        esi
 00421E3E    push        edi
 00421E3F    mov         dword ptr [ebp-4],ecx
 00421E42    mov         esi,edx
 00421E44    mov         ebx,eax
 00421E46    test        ebx,ebx
>00421E48    je          00421E95
 00421E4A    cmp         dword ptr [esi],0
>00421E4D    je          00421E61
 00421E4F    mov         eax,dword ptr [ebp-4]
 00421E52    mov         eax,dword ptr [eax]
 00421E54    cmp         eax,ebx
>00421E56    ja          00421E61
 00421E58    mov         eax,dword ptr [ebp+8]
 00421E5B    mov         eax,dword ptr [eax]
 00421E5D    cmp         eax,ebx
>00421E5F    ja          00421E95
 00421E61    mov         eax,ebx
 00421E63    call        004218CC
 00421E68    mov         edi,eax
 00421E6A    cmp         byte ptr [edi+3C],0
>00421E6E    je          00421E8E
 00421E70    mov         ecx,dword ptr [ebp+8]
 00421E73    mov         edx,ebx
 00421E75    mov         eax,edi
 00421E77    call        00421440
 00421E7C    mov         dword ptr [esi],eax
 00421E7E    cmp         dword ptr [esi],0
>00421E81    jge         00421E87
 00421E83    xor         eax,eax
 00421E85    mov         dword ptr [esi],eax
 00421E87    mov         eax,dword ptr [ebp-4]
 00421E8A    mov         dword ptr [eax],ebx
>00421E8C    jmp         00421E95
 00421E8E    mov         eax,edi
 00421E90    call        TObject.Free
 00421E95    pop         edi
 00421E96    pop         esi
 00421E97    pop         ebx
 00421E98    pop         ecx
 00421E99    pop         ebp
 00421E9A    ret         4
end;*}

Initialization
//00421EE8
{*
 00421EE8    push        ebp
 00421EE9    mov         ebp,esp
 00421EEB    xor         eax,eax
 00421EED    push        ebp
 00421EEE    push        421F26
 00421EF3    push        dword ptr fs:[eax]
 00421EF6    mov         dword ptr fs:[eax],esp
 00421EF9    sub         dword ptr ds:[55D7D4],1
>00421F00    jae         00421F18
 00421F02    mov         eax,[0055B5A4];^gvar_0053D434
 00421F07    mov         dword ptr [eax],421BD8
 00421F0D    mov         eax,[0055B6E4];^gvar_0053D438
 00421F12    mov         dword ptr [eax],421E38;sub_00421E38
 00421F18    xor         eax,eax
 00421F1A    pop         edx
 00421F1B    pop         ecx
 00421F1C    pop         ecx
 00421F1D    mov         dword ptr fs:[eax],edx
 00421F20    push        421F2D
 00421F25    ret
>00421F26    jmp         @HandleFinally
>00421F2B    jmp         00421F25
 00421F2D    pop         ebp
 00421F2E    ret
*}
Finalization
//00421EA0
{*
 00421EA0    push        ebp
 00421EA1    mov         ebp,esp
 00421EA3    xor         eax,eax
 00421EA5    push        ebp
 00421EA6    push        421EDC
 00421EAB    push        dword ptr fs:[eax]
 00421EAE    mov         dword ptr fs:[eax],esp
 00421EB1    inc         dword ptr ds:[55D7D4]
>00421EB7    jne         00421ECE
 00421EB9    call        00421890
 00421EBE    mov         eax,55D7D8;gvar_0055D7D8:?
 00421EC3    mov         edx,dword ptr ds:[4215F0];_DynArr_14_11
 00421EC9    call        @DynArrayClear
 00421ECE    xor         eax,eax
 00421ED0    pop         edx
 00421ED1    pop         ecx
 00421ED2    pop         ecx
 00421ED3    mov         dword ptr fs:[eax],edx
 00421ED6    push        421EE3
 00421EDB    ret
>00421EDC    jmp         @HandleFinally
>00421EE1    jmp         00421EDB
 00421EE3    pop         ebp
 00421EE4    ret
*}
end.