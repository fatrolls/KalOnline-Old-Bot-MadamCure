//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit131;

interface

uses
  SysUtils, Classes;

type
  TSwordCrypt = class(TObject)
    //constructor Create(?:?);//0052CD88
  end;
    //function sub_0052CD20(?:?; ?:?; ?:?; ?:?):?;//0052CD20
    //function sub_0052CDF0(?:?; ?:?; ?:?):?;//0052CDF0
    //procedure sub_0052CE28(?:?; ?:?);//0052CE28

implementation

//0052CD20
{*function sub_0052CD20(?:?; ?:?; ?:?; ?:?):?;
begin
 0052CD20    push        ebp
 0052CD21    mov         ebp,esp
 0052CD23    add         esp,0FFFFFFEC
 0052CD26    mov         dword ptr [ebp-0C],ecx
 0052CD29    mov         dword ptr [ebp-8],edx
 0052CD2C    mov         dword ptr [ebp-4],eax
 0052CD2F    mov         eax,dword ptr [ebp+8]
 0052CD32    dec         eax
 0052CD33    mov         dword ptr [ebp-14],eax
 0052CD36    cmp         dword ptr [ebp-0C],0
>0052CD3A    jne         0052CD45
 0052CD3C    mov         dword ptr [ebp-10],0FFFFFFFF
>0052CD43    jmp         0052CD7F
 0052CD45    and         dword ptr [ebp-8],3F
 0052CD49    shl         dword ptr [ebp-8],8
 0052CD4D    cmp         dword ptr [ebp-14],0
>0052CD51    jl          0052CD78
 0052CD53    mov         eax,dword ptr [ebp-14]
 0052CD56    mov         edx,dword ptr [ebp-0C]
 0052CD59    movzx       eax,byte ptr [edx+eax]
 0052CD5D    add         eax,dword ptr [ebp-8]
 0052CD60    mov         edx,dword ptr [ebp-4]
 0052CD63    mov         al,byte ptr [edx+eax]
 0052CD66    mov         edx,dword ptr [ebp-14]
 0052CD69    mov         ecx,dword ptr [ebp-0C]
 0052CD6C    mov         byte ptr [ecx+edx],al
 0052CD6F    dec         dword ptr [ebp-14]
 0052CD72    cmp         dword ptr [ebp-14],0
>0052CD76    jge         0052CD53
 0052CD78    mov         eax,dword ptr [ebp-14]
 0052CD7B    inc         eax
 0052CD7C    mov         dword ptr [ebp-10],eax
 0052CD7F    mov         eax,dword ptr [ebp-10]
 0052CD82    mov         esp,ebp
 0052CD84    pop         ebp
 0052CD85    ret         4
end;*}

//0052CD88
{*constructor TSwordCrypt.Create(?:?);
begin
 0052CD88    push        ebp
 0052CD89    mov         ebp,esp
 0052CD8B    add         esp,0FFFFFFF4
 0052CD8E    push        esi
 0052CD8F    push        edi
 0052CD90    test        dl,dl
>0052CD92    je          0052CD9C
 0052CD94    add         esp,0FFFFFFF0
 0052CD97    call        @ClassCreate
 0052CD9C    mov         dword ptr [ebp-0C],ecx
 0052CD9F    mov         byte ptr [ebp-5],dl
 0052CDA2    mov         dword ptr [ebp-4],eax
 0052CDA5    mov         eax,dword ptr [ebp-0C]
 0052CDA8    mov         edx,dword ptr [ebp-4]
 0052CDAB    mov         esi,eax
 0052CDAD    lea         edi,[edx+4]
 0052CDB0    mov         ecx,1900
 0052CDB5    rep movs    dword ptr [edi],dword ptr [esi]
 0052CDB7    mov         eax,dword ptr [ebp+8]
 0052CDBA    mov         edx,dword ptr [ebp-4]
 0052CDBD    mov         esi,eax
 0052CDBF    lea         edi,[edx+6404]
 0052CDC5    mov         ecx,1900
 0052CDCA    rep movs    dword ptr [edi],dword ptr [esi]
 0052CDCC    mov         eax,dword ptr [ebp-4]
 0052CDCF    cmp         byte ptr [ebp-5],0
>0052CDD3    je          0052CDE4
 0052CDD5    call        @AfterConstruction
 0052CDDA    pop         dword ptr fs:[0]
 0052CDE1    add         esp,0C
 0052CDE4    mov         eax,dword ptr [ebp-4]
 0052CDE7    pop         edi
 0052CDE8    pop         esi
 0052CDE9    mov         esp,ebp
 0052CDEB    pop         ebp
 0052CDEC    ret         4
end;*}

//0052CDF0
{*function sub_0052CDF0(?:?; ?:?; ?:?):?;
begin
 0052CDF0    push        ebp
 0052CDF1    mov         ebp,esp
 0052CDF3    add         esp,0FFFFFFF0
 0052CDF6    mov         dword ptr [ebp-0C],ecx
 0052CDF9    mov         dword ptr [ebp-8],edx
 0052CDFC    mov         dword ptr [ebp-4],eax
 0052CDFF    mov         eax,dword ptr [ebp-0C]
 0052CE02    push        eax
 0052CE03    mov         eax,dword ptr [ebp-4]
 0052CE06    add         eax,6404
 0052CE0B    mov         ecx,dword ptr [ebp-8]
 0052CE0E    mov         edx,dword ptr [ebp-4]
 0052CE11    mov         edx,dword ptr [edx+0C804]
 0052CE17    call        0052CD20
 0052CE1C    mov         dword ptr [ebp-10],eax
 0052CE1F    mov         eax,dword ptr [ebp-10]
 0052CE22    mov         esp,ebp
 0052CE24    pop         ebp
 0052CE25    ret
end;*}

//0052CE28
{*procedure sub_0052CE28(?:?; ?:?);
begin
 0052CE28    push        ebp
 0052CE29    mov         ebp,esp
 0052CE2B    add         esp,0FFFFFFF8
 0052CE2E    mov         dword ptr [ebp-8],edx
 0052CE31    mov         dword ptr [ebp-4],eax
 0052CE34    mov         eax,dword ptr [ebp-8]
 0052CE37    mov         edx,dword ptr [ebp-4]
 0052CE3A    mov         dword ptr [edx+0C804],eax
 0052CE40    pop         ecx
 0052CE41    pop         ecx
 0052CE42    pop         ebp
 0052CE43    ret
end;*}

end.