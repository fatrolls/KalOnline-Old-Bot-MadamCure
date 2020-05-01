//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit103;

interface

uses
  SysUtils, Classes;

type
  TKcm = class(TObject)
  end;
  TMapManager = class(TObject)
  end;
    //function sub_00529464(?:?):?;//00529464
    //procedure sub_005294A0(?:?);//005294A0
    //procedure sub_005294F4(?:?);//005294F4
    //procedure sub_005295B4(?:?);//005295B4
    //procedure sub_00529614(?:?);//00529614
    //procedure sub_00529690(?:TKcm; ?:?);//00529690
    //function sub_00529750(?:?; ?:Integer; ?:Integer; ?:?; ?:?; ?:?; ?:?):?;//00529750
    //function sub_00529970:?;//00529970
    //function sub_00529ABC(?:TMapManager; ?:?; ?:?):?;//00529ABC
    //function sub_00529B48(?:TMapManager; ?:?; ?:?):?;//00529B48

implementation

//00529464
{*function sub_00529464(?:?):?;
begin
 00529464    push        ebp
 00529465    mov         ebp,esp
 00529467    add         esp,0FFFFFFF8
 0052946A    mov         dword ptr [ebp-4],eax
 0052946D    mov         byte ptr [ebp-7],0
 00529471    mov         byte ptr [ebp-6],0
 00529475    xor         eax,eax
 00529477    mov         al,byte ptr [ebp-6]
 0052947A    mov         edx,dword ptr [ebp-4]
 0052947D    cmp         byte ptr [edx+eax+2C],0FF
>00529482    je          00529487
 00529484    inc         byte ptr [ebp-7]
 00529487    inc         byte ptr [ebp-6]
 0052948A    cmp         byte ptr [ebp-6],8
>0052948E    jne         00529475
 00529490    mov         al,byte ptr [ebp-7]
 00529493    mov         byte ptr [ebp-5],al
 00529496    mov         al,byte ptr [ebp-5]
 00529499    pop         ecx
 0052949A    pop         ecx
 0052949B    pop         ebp
 0052949C    ret
end;*}

//005294A0
{*procedure sub_005294A0(?:?);
begin
 005294A0    push        ebp
 005294A1    mov         ebp,esp
 005294A3    add         esp,0FFFFFFF8
 005294A6    mov         dword ptr [ebp-4],eax
 005294A9    mov         byte ptr [ebp-6],0FF
 005294AD    mov         byte ptr [ebp-5],0
 005294B1    xor         eax,eax
 005294B3    mov         al,byte ptr [ebp-6]
 005294B6    xor         edx,edx
 005294B8    mov         dl,byte ptr [ebp-5]
 005294BB    shl         edx,5
 005294BE    mov         ecx,dword ptr [ebp-4]
 005294C1    lea         edx,[ecx+edx*8]
 005294C4    lea         edx,[edx+eax+0D043E]
 005294CB    mov         ecx,1
 005294D0    mov         eax,dword ptr [ebp-4]
 005294D3    mov         eax,dword ptr [eax+4]
 005294D6    call        0047BF28
 005294DB    inc         byte ptr [ebp-5]
 005294DE    cmp         byte ptr [ebp-5],0
>005294E2    jne         005294B1
 005294E4    dec         byte ptr [ebp-6]
 005294E7    cmp         byte ptr [ebp-6],0FF
>005294EB    jne         005294AD
 005294ED    pop         ecx
 005294EE    pop         ecx
 005294EF    pop         ebp
 005294F0    ret
end;*}

//005294F4
{*procedure sub_005294F4(?:?);
begin
 005294F4    push        ebp
 005294F5    mov         ebp,esp
 005294F7    add         esp,0FFFFFFF8
 005294FA    mov         dword ptr [ebp-4],eax
 005294FD    mov         byte ptr [ebp-6],0FF
 00529501    mov         byte ptr [ebp-5],0
 00529505    xor         eax,eax
 00529507    mov         al,byte ptr [ebp-6]
 0052950A    lea         eax,[eax+eax*2]
 0052950D    xor         edx,edx
 0052950F    mov         dl,byte ptr [ebp-5]
 00529512    shl         edx,5
 00529515    lea         edx,[edx+edx*2]
 00529518    mov         ecx,dword ptr [ebp-4]
 0052951B    lea         edx,[ecx+edx*8]
 0052951E    lea         edx,[edx+eax+0A043E]
 00529525    mov         ecx,1
 0052952A    mov         eax,dword ptr [ebp-4]
 0052952D    mov         eax,dword ptr [eax+4]
 00529530    call        0047BF28
 00529535    xor         eax,eax
 00529537    mov         al,byte ptr [ebp-6]
 0052953A    lea         eax,[eax+eax*2]
 0052953D    xor         edx,edx
 0052953F    mov         dl,byte ptr [ebp-5]
 00529542    shl         edx,5
 00529545    lea         edx,[edx+edx*2]
 00529548    mov         ecx,dword ptr [ebp-4]
 0052954B    lea         edx,[ecx+edx*8]
 0052954E    lea         edx,[edx+eax+0A043F]
 00529555    mov         ecx,1
 0052955A    mov         eax,dword ptr [ebp-4]
 0052955D    mov         eax,dword ptr [eax+4]
 00529560    call        0047BF28
 00529565    xor         eax,eax
 00529567    mov         al,byte ptr [ebp-6]
 0052956A    lea         eax,[eax+eax*2]
 0052956D    xor         edx,edx
 0052956F    mov         dl,byte ptr [ebp-5]
 00529572    shl         edx,5
 00529575    lea         edx,[edx+edx*2]
 00529578    mov         ecx,dword ptr [ebp-4]
 0052957B    lea         edx,[ecx+edx*8]
 0052957E    lea         edx,[edx+eax+0A0440]
 00529585    mov         ecx,1
 0052958A    mov         eax,dword ptr [ebp-4]
 0052958D    mov         eax,dword ptr [eax+4]
 00529590    call        0047BF28
 00529595    inc         byte ptr [ebp-5]
 00529598    cmp         byte ptr [ebp-5],0
>0052959C    jne         00529505
 005295A2    dec         byte ptr [ebp-6]
 005295A5    cmp         byte ptr [ebp-6],0FF
>005295A9    jne         00529501
 005295AF    pop         ecx
 005295B0    pop         ecx
 005295B1    pop         ebp
 005295B2    ret
end;*}

//005295B4
{*procedure sub_005295B4(?:?);
begin
 005295B4    push        ebp
 005295B5    mov         ebp,esp
 005295B7    add         esp,0FFFFFFF8
 005295BA    mov         dword ptr [ebp-4],eax
 005295BD    mov         word ptr [ebp-8],0
 005295C3    mov         word ptr [ebp-6],0
 005295C9    movzx       eax,word ptr [ebp-8]
 005295CD    movzx       edx,word ptr [ebp-6]
 005295D1    mov         ecx,edx
 005295D3    shl         edx,8
 005295D6    add         edx,ecx
 005295D8    mov         ecx,dword ptr [ebp-4]
 005295DB    lea         edx,[ecx+edx*2]
 005295DE    lea         edx,[edx+eax*2+8003C]
 005295E5    mov         ecx,2
 005295EA    mov         eax,dword ptr [ebp-4]
 005295ED    mov         eax,dword ptr [eax+4]
 005295F0    call        0047BF28
 005295F5    inc         word ptr [ebp-6]
 005295F9    cmp         word ptr [ebp-6],101
>005295FF    jne         005295C9
 00529601    inc         word ptr [ebp-8]
 00529605    cmp         word ptr [ebp-8],101
>0052960B    jne         005295C3
 0052960D    pop         ecx
 0052960E    pop         ecx
 0052960F    pop         ebp
 00529610    ret
end;*}

//00529614
{*procedure sub_00529614(?:?);
begin
 00529614    push        ebp
 00529615    mov         ebp,esp
 00529617    add         esp,0FFFFFFF4
 0052961A    mov         dword ptr [ebp-4],eax
 0052961D    mov         eax,dword ptr [ebp-4]
 00529620    call        00529464
 00529625    mov         byte ptr [ebp-5],al
 00529628    mov         al,byte ptr [ebp-5]
 0052962B    dec         eax
 0052962C    test        al,al
>0052962E    jbe         0052968B
 00529630    mov         byte ptr [ebp-9],al
 00529633    mov         byte ptr [ebp-8],1
 00529637    mov         byte ptr [ebp-7],0FF
 0052963B    mov         byte ptr [ebp-6],0
 0052963F    xor         eax,eax
 00529641    mov         al,byte ptr [ebp-6]
 00529644    shl         eax,5
 00529647    xor         edx,edx
 00529649    mov         dl,byte ptr [ebp-8]
 0052964C    shl         edx,0D
 0052964F    mov         ecx,dword ptr [ebp-4]
 00529652    lea         edx,[ecx+edx*8]
 00529655    lea         eax,[edx+eax*8]
 00529658    xor         edx,edx
 0052965A    mov         dl,byte ptr [ebp-7]
 0052965D    lea         edx,[eax+edx+3C]
 00529661    mov         ecx,1
 00529666    mov         eax,dword ptr [ebp-4]
 00529669    mov         eax,dword ptr [eax+4]
 0052966C    call        0047BF28
 00529671    inc         byte ptr [ebp-6]
 00529674    cmp         byte ptr [ebp-6],0
>00529678    jne         0052963F
 0052967A    dec         byte ptr [ebp-7]
 0052967D    cmp         byte ptr [ebp-7],0FF
>00529681    jne         0052963B
 00529683    inc         byte ptr [ebp-8]
 00529686    dec         byte ptr [ebp-9]
>00529689    jne         00529637
 0052968B    mov         esp,ebp
 0052968D    pop         ebp
 0052968E    ret
end;*}

//00529690
{*procedure sub_00529690(?:TKcm; ?:?);
begin
 00529690    push        ebp
 00529691    mov         ebp,esp
 00529693    add         esp,0FFFFFFF8
 00529696    mov         dword ptr [ebp-8],edx
 00529699    mov         dword ptr [ebp-4],eax
 0052969C    mov         eax,dword ptr [ebp-8]
 0052969F    call        @LStrAddRef
 005296A4    xor         eax,eax
 005296A6    push        ebp
 005296A7    push        529742
 005296AC    push        dword ptr fs:[eax]
 005296AF    mov         dword ptr fs:[eax],esp
 005296B2    mov         dl,1
 005296B4    mov         eax,[00476368];TMemoryStream
 005296B9    call        TObject.Create;TMemoryStream.Create
 005296BE    mov         edx,dword ptr [ebp-4]
 005296C1    mov         dword ptr [edx+4],eax
 005296C4    mov         eax,dword ptr [ebp-8]
 005296C7    call        00466F78
 005296CC    test        al,al
>005296CE    jne         005296DD
 005296D0    mov         eax,dword ptr [ebp-4]
 005296D3    mov         eax,dword ptr [eax+4]
 005296D6    call        TObject.Free
>005296DB    jmp         0052972C
 005296DD    mov         edx,dword ptr [ebp-8]
 005296E0    mov         eax,dword ptr [ebp-4]
 005296E3    mov         eax,dword ptr [eax+4]
 005296E6    call        0047C66C
 005296EB    mov         eax,dword ptr [ebp-4]
 005296EE    lea         edx,[eax+8]
 005296F1    mov         ecx,34
 005296F6    mov         eax,dword ptr [ebp-4]
 005296F9    mov         eax,dword ptr [eax+4]
 005296FC    call        0047BF28
 00529701    mov         eax,dword ptr [ebp-4]
 00529704    call        00529614
 00529709    mov         eax,dword ptr [ebp-4]
 0052970C    call        005295B4
 00529711    mov         eax,dword ptr [ebp-4]
 00529714    call        005294F4
 00529719    mov         eax,dword ptr [ebp-4]
 0052971C    call        005294A0
 00529721    mov         eax,dword ptr [ebp-4]
 00529724    mov         eax,dword ptr [eax+4]
 00529727    call        TObject.Free
 0052972C    xor         eax,eax
 0052972E    pop         edx
 0052972F    pop         ecx
 00529730    pop         ecx
 00529731    mov         dword ptr fs:[eax],edx
 00529734    push        529749
 00529739    lea         eax,[ebp-8]
 0052973C    call        @LStrClr
 00529741    ret
>00529742    jmp         @HandleFinally
>00529747    jmp         00529739
 00529749    pop         ecx
 0052974A    pop         ecx
 0052974B    pop         ebp
 0052974C    ret
end;*}

//00529750
{*function sub_00529750(?:?; ?:Integer; ?:Integer; ?:?; ?:?; ?:?; ?:?):?;
begin
 00529750    push        ebp
 00529751    mov         ebp,esp
 00529753    add         esp,0FFFFFFBC
 00529756    mov         dword ptr [ebp-0C],ecx
 00529759    mov         dword ptr [ebp-8],edx
 0052975C    mov         dword ptr [ebp-4],eax
 0052975F    mov         eax,dword ptr [ebp+0C]
 00529762    mov         dword ptr [ebp-40],eax
 00529765    xor         eax,eax
 00529767    mov         dword ptr [ebp-3C],eax
 0052976A    fild        qword ptr [ebp-40]
 0052976D    fdiv        dword ptr ds:[5298EC];32:Single
 00529773    call        @FRAC
 00529778    fabs
 0052977A    fstp        qword ptr [ebp-18]
 0052977D    wait
 0052977E    mov         eax,dword ptr [ebp+8]
 00529781    mov         dword ptr [ebp-40],eax
 00529784    xor         eax,eax
 00529786    mov         dword ptr [ebp-3C],eax
 00529789    fild        qword ptr [ebp-40]
 0052978C    fdiv        dword ptr ds:[5298EC];32:Single
 00529792    call        @FRAC
 00529797    fabs
 00529799    fstp        qword ptr [ebp-20]
 0052979C    wait
 0052979D    mov         eax,dword ptr [ebp-8]
 005297A0    cmp         eax,dword ptr [ebp-0C]
>005297A3    jle         005297B5
 005297A5    mov         eax,dword ptr [ebp-8]
 005297A8    cmp         eax,dword ptr [ebp+14]
>005297AB    jle         005297B5
 005297AD    mov         eax,dword ptr [ebp-8]
 005297B0    cmp         eax,dword ptr [ebp+10]
>005297B3    jg          005297D5
 005297B5    mov         eax,dword ptr [ebp+10]
 005297B8    cmp         eax,dword ptr [ebp-8]
>005297BB    jle         00529851
 005297C1    mov         eax,dword ptr [ebp+10]
 005297C4    cmp         eax,dword ptr [ebp-0C]
>005297C7    jle         00529851
 005297CD    mov         eax,dword ptr [ebp+10]
 005297D0    cmp         eax,dword ptr [ebp+14]
>005297D3    jle         00529851
 005297D5    mov         eax,dword ptr [ebp+8]
 005297D8    cmp         eax,dword ptr [ebp+0C]
>005297DB    ja          00529817
 005297DD    mov         eax,dword ptr [ebp-0C]
 005297E0    sub         eax,dword ptr [ebp-8]
 005297E3    mov         dword ptr [ebp-44],eax
 005297E6    fild        dword ptr [ebp-44]
 005297E9    fmul        qword ptr [ebp-18]
 005297EC    fstp        qword ptr [ebp-28]
 005297EF    wait
 005297F0    mov         eax,dword ptr [ebp+10]
 005297F3    sub         eax,dword ptr [ebp-0C]
 005297F6    mov         dword ptr [ebp-44],eax
 005297F9    fild        dword ptr [ebp-44]
 005297FC    fmul        qword ptr [ebp-20]
 005297FF    fstp        qword ptr [ebp-30]
 00529802    wait
 00529803    fld         qword ptr [ebp-28]
 00529806    fadd        qword ptr [ebp-30]
 00529809    fild        dword ptr [ebp-8]
 0052980C    faddp       st(1),st
 0052980E    fstp        qword ptr [ebp-38]
 00529811    wait
>00529812    jmp         005298D6
 00529817    mov         eax,dword ptr [ebp+10]
 0052981A    sub         eax,dword ptr [ebp+14]
 0052981D    mov         dword ptr [ebp-44],eax
 00529820    fild        dword ptr [ebp-44]
 00529823    fmul        qword ptr [ebp-18]
 00529826    fstp        qword ptr [ebp-28]
 00529829    wait
 0052982A    mov         eax,dword ptr [ebp+14]
 0052982D    sub         eax,dword ptr [ebp-8]
 00529830    mov         dword ptr [ebp-44],eax
 00529833    fild        dword ptr [ebp-44]
 00529836    fmul        qword ptr [ebp-20]
 00529839    fstp        qword ptr [ebp-30]
 0052983C    wait
 0052983D    fld         qword ptr [ebp-28]
 00529840    fadd        qword ptr [ebp-30]
 00529843    fild        dword ptr [ebp-8]
 00529846    faddp       st(1),st
 00529848    fstp        qword ptr [ebp-38]
 0052984B    wait
>0052984C    jmp         005298D6
 00529851    mov         eax,dword ptr [ebp+0C]
 00529854    add         eax,dword ptr [ebp+8]
 00529857    cmp         eax,20
>0052985A    ja          00529893
 0052985C    mov         eax,dword ptr [ebp-0C]
 0052985F    sub         eax,dword ptr [ebp-8]
 00529862    mov         dword ptr [ebp-44],eax
 00529865    fild        dword ptr [ebp-44]
 00529868    fmul        qword ptr [ebp-18]
 0052986B    fstp        qword ptr [ebp-28]
 0052986E    wait
 0052986F    mov         eax,dword ptr [ebp+14]
 00529872    sub         eax,dword ptr [ebp-8]
 00529875    mov         dword ptr [ebp-44],eax
 00529878    fild        dword ptr [ebp-44]
 0052987B    fmul        qword ptr [ebp-20]
 0052987E    fstp        qword ptr [ebp-30]
 00529881    wait
 00529882    fld         qword ptr [ebp-28]
 00529885    fadd        qword ptr [ebp-30]
 00529888    fild        dword ptr [ebp-8]
 0052988B    faddp       st(1),st
 0052988D    fstp        qword ptr [ebp-38]
 00529890    wait
>00529891    jmp         005298D6
 00529893    mov         eax,dword ptr [ebp+10]
 00529896    sub         eax,dword ptr [ebp+14]
 00529899    mov         dword ptr [ebp-44],eax
 0052989C    fild        dword ptr [ebp-44]
 0052989F    fmul        qword ptr [ebp-18]
 005298A2    fstp        qword ptr [ebp-28]
 005298A5    wait
 005298A6    fld         dword ptr ds:[5298F0];1:Single
 005298AC    fsub        qword ptr [ebp-20]
 005298AF    mov         eax,dword ptr [ebp+10]
 005298B2    sub         eax,dword ptr [ebp-0C]
 005298B5    mov         dword ptr [ebp-44],eax
 005298B8    fild        dword ptr [ebp-44]
 005298BB    fmulp       st(1),st
 005298BD    fmul        dword ptr ds:[5298F4];-1:Single
 005298C3    fstp        qword ptr [ebp-30]
 005298C6    wait
 005298C7    fld         qword ptr [ebp-28]
 005298CA    fadd        qword ptr [ebp-30]
 005298CD    fild        dword ptr [ebp+14]
 005298D0    faddp       st(1),st
 005298D2    fstp        qword ptr [ebp-38]
 005298D5    wait
 005298D6    fld         qword ptr [ebp-38]
 005298D9    call        @ROUND
 005298DE    mov         dword ptr [ebp-10],eax
 005298E1    mov         eax,dword ptr [ebp-10]
 005298E4    mov         esp,ebp
 005298E6    pop         ebp
 005298E7    ret         10
end;*}

//00529970
{*function sub_00529970:?;
begin
 00529970    push        ebp
 00529971    mov         ebp,esp
 00529973    push        eax
 00529974    mov         eax,20
 00529979    add         esp,0FFFFF004
 0052997F    push        eax
 00529980    dec         eax
>00529981    jne         00529979
 00529983    mov         eax,dword ptr [ebp-4]
 00529986    add         esp,0FFFFFBD8
 0052998C    push        esi
 0052998D    push        edi
 0052998E    mov         dword ptr [ebp-0C],ecx
 00529991    mov         dword ptr [ebp-8],edx
 00529994    mov         dword ptr [ebp-4],eax
 00529997    mov         eax,dword ptr [ebp-8]
 0052999A    shr         eax,0D
 0052999D    mov         byte ptr [ebp-11],al
 005299A0    mov         eax,dword ptr [ebp-0C]
 005299A3    shr         eax,0D
 005299A6    mov         byte ptr [ebp-12],al
 005299A9    mov         eax,dword ptr [ebp-8]
 005299AC    and         eax,1FFF
 005299B1    shr         eax,5
 005299B4    mov         word ptr [ebp-14],ax
 005299B8    mov         eax,dword ptr [ebp-0C]
 005299BB    and         eax,1FFF
 005299C0    shr         eax,5
 005299C3    mov         word ptr [ebp-16],ax
 005299C7    mov         al,byte ptr [ebp-8]
 005299CA    and         al,1F
 005299CC    mov         byte ptr [ebp-17],al
 005299CF    mov         al,byte ptr [ebp-0C]
 005299D2    and         al,1F
 005299D4    mov         byte ptr [ebp-18],al
 005299D7    mov         cl,byte ptr [ebp-12]
 005299DA    mov         dl,byte ptr [ebp-11]
 005299DD    mov         eax,dword ptr [ebp-4]
 005299E0    call        00529ABC
 005299E5    lea         esi,[eax+8003C]
 005299EB    lea         edi,[ebp-2042A]
 005299F1    mov         ecx,8100
 005299F6    rep movs    dword ptr [edi],dword ptr [esi]
 005299F8    movs        word ptr [edi],word ptr [esi]
 005299FA    movzx       eax,word ptr [ebp-16]
 005299FE    movzx       edx,word ptr [ebp-14]
 00529A02    mov         ecx,edx
 00529A04    shl         edx,8
 00529A07    add         edx,ecx
 00529A09    lea         edx,[ebp+edx*2-2042A]
 00529A10    movzx       eax,word ptr [edx+eax*2]
 00529A14    add         eax,eax
 00529A16    lea         eax,[eax+eax*4]
 00529A19    mov         dword ptr [ebp-1C],eax
 00529A1C    movzx       eax,word ptr [ebp-16]
 00529A20    movzx       edx,word ptr [ebp-14]
 00529A24    mov         ecx,edx
 00529A26    shl         edx,8
 00529A29    add         edx,ecx
 00529A2B    lea         edx,[ebp+edx*2-2042A]
 00529A32    movzx       eax,word ptr [edx+eax*2+202]
 00529A3A    add         eax,eax
 00529A3C    lea         eax,[eax+eax*4]
 00529A3F    mov         dword ptr [ebp-20],eax
 00529A42    movzx       eax,word ptr [ebp-16]
 00529A46    movzx       edx,word ptr [ebp-14]
 00529A4A    mov         ecx,edx
 00529A4C    shl         edx,8
 00529A4F    add         edx,ecx
 00529A51    lea         edx,[ebp+edx*2-2042A]
 00529A58    movzx       eax,word ptr [edx+eax*2+2]
 00529A5D    add         eax,eax
 00529A5F    lea         eax,[eax+eax*4]
 00529A62    mov         dword ptr [ebp-24],eax
 00529A65    movzx       eax,word ptr [ebp-16]
 00529A69    movzx       edx,word ptr [ebp-14]
 00529A6D    mov         ecx,edx
 00529A6F    shl         edx,8
 00529A72    add         edx,ecx
 00529A74    lea         edx,[ebp+edx*2-2042A]
 00529A7B    movzx       eax,word ptr [edx+eax*2+204]
 00529A83    add         eax,eax
 00529A85    lea         eax,[eax+eax*4]
 00529A88    mov         dword ptr [ebp-28],eax
 00529A8B    mov         eax,dword ptr [ebp-24]
 00529A8E    push        eax
 00529A8F    mov         eax,dword ptr [ebp-28]
 00529A92    push        eax
 00529A93    xor         eax,eax
 00529A95    mov         al,byte ptr [ebp-17]
 00529A98    push        eax
 00529A99    xor         eax,eax
 00529A9B    mov         al,byte ptr [ebp-18]
 00529A9E    push        eax
 00529A9F    mov         ecx,dword ptr [ebp-20]
 00529AA2    mov         edx,dword ptr [ebp-1C]
 00529AA5    mov         eax,dword ptr [ebp-4]
 00529AA8    call        00529750
 00529AAD    mov         dword ptr [ebp-10],eax
 00529AB0    mov         eax,dword ptr [ebp-10]
 00529AB3    pop         edi
 00529AB4    pop         esi
 00529AB5    mov         esp,ebp
 00529AB7    pop         ebp
 00529AB8    ret
end;*}

//00529ABC
{*function sub_00529ABC(?:TMapManager; ?:?; ?:?):?;
begin
 00529ABC    push        ebp
 00529ABD    mov         ebp,esp
 00529ABF    add         esp,0FFFFFFF4
 00529AC2    push        ebx
 00529AC3    mov         byte ptr [ebp-6],cl
 00529AC6    mov         byte ptr [ebp-5],dl
 00529AC9    mov         dword ptr [ebp-4],eax
 00529ACC    xor         eax,eax
 00529ACE    mov         al,byte ptr [ebp-5]
 00529AD1    mov         edx,dword ptr [ebp-4]
 00529AD4    cmp         eax,dword ptr [edx+4]
>00529AD7    jne         00529AE6
 00529AD9    xor         eax,eax
 00529ADB    mov         al,byte ptr [ebp-6]
 00529ADE    mov         edx,dword ptr [ebp-4]
 00529AE1    cmp         eax,dword ptr [edx+8]
>00529AE4    je          00529B23
 00529AE6    mov         cl,byte ptr [ebp-6]
 00529AE9    mov         dl,byte ptr [ebp-5]
 00529AEC    mov         eax,dword ptr [ebp-4]
 00529AEF    call        00529B48
 00529AF4    xor         eax,eax
 00529AF6    mov         al,byte ptr [ebp-5]
 00529AF9    mov         edx,dword ptr [ebp-4]
 00529AFC    mov         dword ptr [edx+4],eax
 00529AFF    xor         eax,eax
 00529B01    mov         al,byte ptr [ebp-6]
 00529B04    mov         edx,dword ptr [ebp-4]
 00529B07    mov         dword ptr [edx+8],eax
 00529B0A    mov         eax,dword ptr [ebp-4]
 00529B0D    cmp         word ptr [eax+12],0
>00529B12    je          00529B23
 00529B14    mov         ebx,dword ptr [ebp-4]
 00529B17    mov         cl,byte ptr [ebp-6]
 00529B1A    mov         dl,byte ptr [ebp-5]
 00529B1D    mov         eax,dword ptr [ebx+14]
 00529B20    call        dword ptr [ebx+10]
 00529B23    xor         eax,eax
 00529B25    mov         al,byte ptr [ebp-6]
 00529B28    xor         edx,edx
 00529B2A    mov         dl,byte ptr [ebp-5]
 00529B2D    imul        edx,edx,65
 00529B30    mov         ecx,dword ptr [ebp-4]
 00529B33    lea         edx,[ecx+edx*4]
 00529B36    mov         eax,dword ptr [edx+eax*4+18]
 00529B3A    mov         dword ptr [ebp-0C],eax
 00529B3D    mov         eax,dword ptr [ebp-0C]
 00529B40    pop         ebx
 00529B41    mov         esp,ebp
 00529B43    pop         ebp
 00529B44    ret
end;*}

//00529B48
{*function sub_00529B48(?:TMapManager; ?:?; ?:?):?;
begin
 00529B48    push        ebp
 00529B49    mov         ebp,esp
 00529B4B    add         esp,0FFFFFFE0
 00529B4E    push        ebx
 00529B4F    xor         ebx,ebx
 00529B51    mov         dword ptr [ebp-10],ebx
 00529B54    mov         byte ptr [ebp-6],cl
 00529B57    mov         byte ptr [ebp-5],dl
 00529B5A    mov         dword ptr [ebp-4],eax
 00529B5D    xor         eax,eax
 00529B5F    push        ebp
 00529B60    push        529C05
 00529B65    push        dword ptr fs:[eax]
 00529B68    mov         dword ptr fs:[eax],esp
 00529B6B    mov         byte ptr [ebp-7],0
 00529B6F    xor         eax,eax
 00529B71    mov         al,byte ptr [ebp-6]
 00529B74    xor         edx,edx
 00529B76    mov         dl,byte ptr [ebp-5]
 00529B79    imul        edx,edx,65
 00529B7C    mov         ecx,dword ptr [ebp-4]
 00529B7F    lea         edx,[ecx+edx*4]
 00529B82    cmp         dword ptr [edx+eax*4+18],0
>00529B87    jne         00529BEF
 00529B89    mov         dl,1
 00529B8B    mov         eax,[005293B8];TKcm
 00529B90    call        TObject.Create;TKcm.Create
 00529B95    mov         dword ptr [ebp-0C],eax
 00529B98    lea         eax,[ebp-10]
 00529B9B    push        eax
 00529B9C    xor         eax,eax
 00529B9E    mov         al,byte ptr [ebp-5]
 00529BA1    mov         dword ptr [ebp-20],eax
 00529BA4    mov         byte ptr [ebp-1C],0
 00529BA8    xor         eax,eax
 00529BAA    mov         al,byte ptr [ebp-6]
 00529BAD    mov         dword ptr [ebp-18],eax
 00529BB0    mov         byte ptr [ebp-14],0
 00529BB4    lea         edx,[ebp-20]
 00529BB7    mov         ecx,1
 00529BBC    mov         eax,529C1C;'maps\n_%.3u_%.3u.kcm'
 00529BC1    call        Format
 00529BC6    mov         edx,dword ptr [ebp-10]
 00529BC9    mov         eax,dword ptr [ebp-0C]
 00529BCC    call        00529690
 00529BD1    xor         eax,eax
 00529BD3    mov         al,byte ptr [ebp-6]
 00529BD6    xor         edx,edx
 00529BD8    mov         dl,byte ptr [ebp-5]
 00529BDB    imul        edx,edx,65
 00529BDE    mov         ecx,dword ptr [ebp-4]
 00529BE1    lea         edx,[ecx+edx*4]
 00529BE4    mov         ecx,dword ptr [ebp-0C]
 00529BE7    mov         dword ptr [edx+eax*4+18],ecx
 00529BEB    mov         byte ptr [ebp-7],1
 00529BEF    xor         eax,eax
 00529BF1    pop         edx
 00529BF2    pop         ecx
 00529BF3    pop         ecx
 00529BF4    mov         dword ptr fs:[eax],edx
 00529BF7    push        529C0C
 00529BFC    lea         eax,[ebp-10]
 00529BFF    call        @LStrClr
 00529C04    ret
>00529C05    jmp         @HandleFinally
>00529C0A    jmp         00529BFC
 00529C0C    mov         al,byte ptr [ebp-7]
 00529C0F    pop         ebx
 00529C10    mov         esp,ebp
 00529C12    pop         ebp
 00529C13    ret
end;*}

end.