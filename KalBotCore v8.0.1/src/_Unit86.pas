//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit86;

interface

uses
  SysUtils, Classes;

type
  TPacketsReader = class(TObject)
    constructor Create;//0051F76C
  end;
    //procedure sub_0051F7F8(?:?; ?:?; ?:?);//0051F7F8
    //procedure sub_0051FA48(?:?; ?:?);//0051FA48
    //procedure sub_0051FA84(?:?);//0051FA84
    //procedure sub_0051FAB8(?:?);//0051FAB8

implementation

//0051F76C
constructor TPacketsReader.Create;
begin
{*
 0051F76C    push        ebp
 0051F76D    mov         ebp,esp
 0051F76F    add         esp,0FFFFFFF8
 0051F772    test        dl,dl
>0051F774    je          0051F77E
 0051F776    add         esp,0FFFFFFF0
 0051F779    call        @ClassCreate
 0051F77E    mov         byte ptr [ebp-5],dl
 0051F781    mov         dword ptr [ebp-4],eax
 0051F784    xor         edx,edx
 0051F786    mov         eax,dword ptr [ebp-4]
 0051F789    call        TObject.Create
 0051F78E    mov         eax,dword ptr [ebp-4]
 0051F791    mov         byte ptr [eax+6],0
 0051F795    mov         eax,dword ptr [ebp-4]
 0051F798    xor         edx,edx
 0051F79A    mov         dword ptr [eax+0C],edx
 0051F79D    mov         eax,dword ptr [ebp-4]
 0051F7A0    cmp         byte ptr [ebp-5],0
>0051F7A4    je          0051F7B5
 0051F7A6    call        @AfterConstruction
 0051F7AB    pop         dword ptr fs:[0]
 0051F7B2    add         esp,0C
 0051F7B5    mov         eax,dword ptr [ebp-4]
 0051F7B8    pop         ecx
 0051F7B9    pop         ecx
 0051F7BA    pop         ebp
 0051F7BB    ret
*}
end;

//0051F7F8
{*procedure sub_0051F7F8(?:?; ?:?; ?:?);
begin
 0051F7F8    push        ebp
 0051F7F9    mov         ebp,esp
 0051F7FB    add         esp,0FFFFFFF4
 0051F7FE    mov         word ptr [ebp-0A],cx
 0051F802    mov         dword ptr [ebp-8],edx
 0051F805    mov         dword ptr [ebp-4],eax
 0051F808    cmp         word ptr [ebp-0A],0
>0051F80D    jbe         0051FA42
 0051F813    mov         eax,dword ptr [ebp-4]
 0051F816    movzx       eax,byte ptr [eax+6]
 0051F81A    cmp         eax,4
>0051F81D    ja          0051FA37
 0051F823    jmp         dword ptr [eax*4+51F82A]
 0051F823    dd          0051F83E
 0051F823    dd          0051F8ED
 0051F823    dd          0051F93E
 0051F823    dd          0051F987
 0051F823    dd          0051F9E0
 0051F83E    cmp         word ptr [ebp-0A],2
>0051F843    jb          0051F8AA
 0051F845    mov         dl,1
 0051F847    mov         eax,[00476368];TMemoryStream
 0051F84C    call        TObject.Create;TMemoryStream.Create
 0051F851    mov         edx,dword ptr [ebp-4]
 0051F854    mov         dword ptr [edx+8],eax
 0051F857    mov         edx,dword ptr [ebp-8]
 0051F85A    mov         ecx,2
 0051F85F    mov         eax,dword ptr [ebp-4]
 0051F862    mov         eax,dword ptr [eax+8]
 0051F865    call        0047BF70
 0051F86A    mov         eax,dword ptr [ebp-4]
 0051F86D    lea         edx,[eax+4]
 0051F870    mov         eax,dword ptr [ebp-4]
 0051F873    mov         eax,dword ptr [eax+8]
 0051F876    mov         eax,dword ptr [eax+4]
 0051F879    mov         ecx,2
 0051F87E    call        Move
 0051F883    mov         eax,dword ptr [ebp-4]
 0051F886    mov         byte ptr [eax+6],2
 0051F88A    sub         word ptr [ebp-0A],2
 0051F88F    add         dword ptr [ebp-8],2
 0051F893    mov         eax,dword ptr [ebp-4]
 0051F896    movzx       edx,word ptr [eax+4]
 0051F89A    mov         eax,dword ptr [ebp-4]
 0051F89D    mov         eax,dword ptr [eax+8]
 0051F8A0    mov         ecx,dword ptr [eax]
 0051F8A2    call        dword ptr [ecx+4]
>0051F8A5    jmp         0051FA37
 0051F8AA    cmp         word ptr [ebp-0A],1
>0051F8AF    jne         0051FA37
 0051F8B5    mov         dl,1
 0051F8B7    mov         eax,[00476368];TMemoryStream
 0051F8BC    call        TObject.Create;TMemoryStream.Create
 0051F8C1    mov         edx,dword ptr [ebp-4]
 0051F8C4    mov         dword ptr [edx+8],eax
 0051F8C7    mov         edx,dword ptr [ebp-8]
 0051F8CA    mov         ecx,1
 0051F8CF    mov         eax,dword ptr [ebp-4]
 0051F8D2    mov         eax,dword ptr [eax+8]
 0051F8D5    call        0047BF70
 0051F8DA    mov         eax,dword ptr [ebp-4]
 0051F8DD    mov         byte ptr [eax+6],1
 0051F8E1    dec         word ptr [ebp-0A]
 0051F8E5    inc         dword ptr [ebp-8]
>0051F8E8    jmp         0051FA37
 0051F8ED    mov         edx,dword ptr [ebp-8]
 0051F8F0    mov         ecx,1
 0051F8F5    mov         eax,dword ptr [ebp-4]
 0051F8F8    mov         eax,dword ptr [eax+8]
 0051F8FB    call        0047BF70
 0051F900    mov         eax,dword ptr [ebp-4]
 0051F903    lea         edx,[eax+4]
 0051F906    mov         eax,dword ptr [ebp-4]
 0051F909    mov         eax,dword ptr [eax+8]
 0051F90C    mov         eax,dword ptr [eax+4]
 0051F90F    mov         ecx,2
 0051F914    call        Move
 0051F919    mov         eax,dword ptr [ebp-4]
 0051F91C    mov         byte ptr [eax+6],2
 0051F920    dec         word ptr [ebp-0A]
 0051F924    inc         dword ptr [ebp-8]
 0051F927    mov         eax,dword ptr [ebp-4]
 0051F92A    movzx       edx,word ptr [eax+4]
 0051F92E    mov         eax,dword ptr [ebp-4]
 0051F931    mov         eax,dword ptr [eax+8]
 0051F934    mov         ecx,dword ptr [eax]
 0051F936    call        dword ptr [ecx+4]
>0051F939    jmp         0051FA37
 0051F93E    mov         eax,dword ptr [ebp-4]
 0051F941    mov         eax,dword ptr [eax+8]
 0051F944    call        0047BCCC
 0051F949    mov         edx,dword ptr [ebp-4]
 0051F94C    mov         dx,word ptr [edx+4]
 0051F950    sub         dx,ax
 0051F953    mov         word ptr [ebp-0C],dx
 0051F957    mov         ax,word ptr [ebp-0A]
 0051F95B    cmp         ax,word ptr [ebp-0C]
>0051F95F    jb          0051F96D
 0051F961    mov         eax,dword ptr [ebp-4]
 0051F964    mov         byte ptr [eax+6],4
>0051F968    jmp         0051FA37
 0051F96D    mov         ax,word ptr [ebp-0A]
 0051F971    cmp         ax,word ptr [ebp-0C]
>0051F975    jae         0051FA37
 0051F97B    mov         eax,dword ptr [ebp-4]
 0051F97E    mov         byte ptr [eax+6],3
>0051F982    jmp         0051FA37
 0051F987    mov         eax,dword ptr [ebp-4]
 0051F98A    mov         eax,dword ptr [eax+8]
 0051F98D    call        0047BCCC
 0051F992    mov         edx,dword ptr [ebp-4]
 0051F995    mov         dx,word ptr [edx+4]
 0051F999    sub         dx,ax
 0051F99C    mov         word ptr [ebp-0C],dx
 0051F9A0    mov         ax,word ptr [ebp-0A]
 0051F9A4    cmp         ax,word ptr [ebp-0C]
>0051F9A8    jb          0051F9B6
 0051F9AA    mov         eax,dword ptr [ebp-4]
 0051F9AD    mov         byte ptr [eax+6],4
>0051F9B1    jmp         0051FA37
 0051F9B6    movzx       ecx,word ptr [ebp-0A]
 0051F9BA    mov         edx,dword ptr [ebp-8]
 0051F9BD    mov         eax,dword ptr [ebp-4]
 0051F9C0    mov         eax,dword ptr [eax+8]
 0051F9C3    call        0047BF70
 0051F9C8    mov         ax,word ptr [ebp-0A]
 0051F9CC    sub         word ptr [ebp-0A],ax
 0051F9D0    movzx       eax,word ptr [ebp-0A]
 0051F9D4    add         dword ptr [ebp-8],eax
 0051F9D7    mov         eax,dword ptr [ebp-4]
 0051F9DA    mov         byte ptr [eax+6],3
>0051F9DE    jmp         0051FA37
 0051F9E0    mov         eax,dword ptr [ebp-4]
 0051F9E3    mov         eax,dword ptr [eax+8]
 0051F9E6    call        0047BCCC
 0051F9EB    mov         edx,dword ptr [ebp-4]
 0051F9EE    mov         dx,word ptr [edx+4]
 0051F9F2    sub         dx,ax
 0051F9F5    mov         word ptr [ebp-0C],dx
 0051F9F9    movzx       ecx,word ptr [ebp-0C]
 0051F9FD    mov         edx,dword ptr [ebp-8]
 0051FA00    mov         eax,dword ptr [ebp-4]
 0051FA03    mov         eax,dword ptr [eax+8]
 0051FA06    call        0047BF70
 0051FA0B    mov         ax,word ptr [ebp-0C]
 0051FA0F    sub         word ptr [ebp-0A],ax
 0051FA13    movzx       eax,word ptr [ebp-0C]
 0051FA17    add         dword ptr [ebp-8],eax
 0051FA1A    mov         eax,dword ptr [ebp-4]
 0051FA1D    mov         edx,dword ptr [eax+8]
 0051FA20    mov         eax,dword ptr [ebp-4]
 0051FA23    call        0051FA48
 0051FA28    mov         eax,dword ptr [ebp-4]
 0051FA2B    xor         edx,edx
 0051FA2D    mov         dword ptr [eax+8],edx
 0051FA30    mov         eax,dword ptr [ebp-4]
 0051FA33    mov         byte ptr [eax+6],0
 0051FA37    cmp         word ptr [ebp-0A],0
>0051FA3C    ja          0051F813
 0051FA42    mov         esp,ebp
 0051FA44    pop         ebp
 0051FA45    ret
end;*}

//0051FA48
{*procedure sub_0051FA48(?:?; ?:?);
begin
 0051FA48    push        ebp
 0051FA49    mov         ebp,esp
 0051FA4B    add         esp,0FFFFFFF8
 0051FA4E    push        ebx
 0051FA4F    mov         dword ptr [ebp-8],edx
 0051FA52    mov         dword ptr [ebp-4],eax
 0051FA55    mov         eax,dword ptr [ebp-4]
 0051FA58    cmp         word ptr [eax+1A],0
>0051FA5D    je          0051FA71
 0051FA5F    mov         ebx,dword ptr [ebp-4]
 0051FA62    mov         eax,dword ptr [ebp-4]
 0051FA65    mov         ecx,dword ptr [eax+0C]
 0051FA68    mov         edx,dword ptr [ebp-8]
 0051FA6B    mov         eax,dword ptr [ebx+1C]
 0051FA6E    call        dword ptr [ebx+18]
 0051FA71    lea         eax,[ebp-8]
 0051FA74    call        FreeAndNil
 0051FA79    mov         eax,dword ptr [ebp-4]
 0051FA7C    inc         dword ptr [eax+0C]
 0051FA7F    pop         ebx
 0051FA80    pop         ecx
 0051FA81    pop         ecx
 0051FA82    pop         ebp
 0051FA83    ret
end;*}

//0051FA84
{*procedure sub_0051FA84(?:?);
begin
 0051FA84    push        ebp
 0051FA85    mov         ebp,esp
 0051FA87    push        ecx
 0051FA88    mov         dword ptr [ebp-4],eax
 0051FA8B    mov         eax,dword ptr [ebp-4]
 0051FA8E    xor         edx,edx
 0051FA90    mov         dword ptr [eax+0C],edx
 0051FA93    mov         eax,dword ptr [ebp-4]
 0051FA96    mov         word ptr [eax+4],0
 0051FA9C    mov         eax,dword ptr [ebp-4]
 0051FA9F    mov         byte ptr [eax+6],0
 0051FAA3    mov         eax,dword ptr [ebp-4]
 0051FAA6    mov         byte ptr [eax+10],0
 0051FAAA    mov         eax,dword ptr [ebp-4]
 0051FAAD    add         eax,8
 0051FAB0    call        FreeAndNil
 0051FAB5    pop         ecx
 0051FAB6    pop         ebp
 0051FAB7    ret
end;*}

//0051FAB8
{*procedure sub_0051FAB8(?:?);
begin
 0051FAB8    push        ebp
 0051FAB9    mov         ebp,esp
 0051FABB    push        ecx
 0051FABC    mov         dword ptr [ebp-4],eax
 0051FABF    mov         eax,dword ptr [ebp-4]
 0051FAC2    mov         byte ptr [eax+10],1
 0051FAC6    pop         ecx
 0051FAC7    pop         ebp
 0051FAC8    ret
end;*}

end.