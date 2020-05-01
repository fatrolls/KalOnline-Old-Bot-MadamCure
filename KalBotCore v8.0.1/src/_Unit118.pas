//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit118;

interface

uses
  SysUtils, Classes;

    //procedure sub_004F88AC(?:?; ?:?; ?:?; ?:?);//004F88AC
    //function sub_004F8BD8(?:?; ?:?; ?:?; ?:?; ?:?):?;//004F8BD8
    //function sub_004F8CC8(?:?):?;//004F8CC8
    //function sub_004F8CFC(?:?; ?:?; ?:?):?;//004F8CFC
    //function sub_004F8EF8(?:TColor; ?:?; ?:?):?;//004F8EF8
    //function sub_004F8F98(?:TColor; ?:?):?;//004F8F98
    //function sub_004F9070(?:TColor; ?:?):?;//004F9070
    //procedure sub_004F9148(?:TCanvas; ?:?; ?:?; ?:?);//004F9148
    //procedure sub_004F9240(?:?);//004F9240
    //procedure sub_004F9338(?:TCanvas; ?:?; ?:?; ?:?);//004F9338
    //procedure sub_004F93F4(?:TCanvas; ?:?; ?:?; ?:?);//004F93F4

implementation

//004F88AC
{*procedure sub_004F88AC(?:?; ?:?; ?:?; ?:?);
begin
 004F88AC    push        ebp
 004F88AD    mov         ebp,esp
 004F88AF    add         esp,0FFFFFF8C
 004F88B2    mov         dword ptr [ebp-0C],ecx
 004F88B5    mov         dword ptr [ebp-8],edx
 004F88B8    mov         dword ptr [ebp-4],eax
 004F88BB    call        @GetTls
 004F88C0    mov         eax,dword ptr [eax+21C];{threadvar_540}
 004F88C6    cmp         eax,dword ptr [ebp-4]
>004F88C9    jne         004F8906
 004F88CB    call        @GetTls
 004F88D0    mov         ax,word ptr [eax+220];{threadvar_544}
 004F88D7    mov         edx,dword ptr [ebp-8]
 004F88DA    mov         word ptr [edx],ax
 004F88DD    call        @GetTls
 004F88E2    mov         ax,word ptr [eax+222];{threadvar_546}
 004F88E9    mov         edx,dword ptr [ebp-0C]
 004F88EC    mov         word ptr [edx],ax
 004F88EF    call        @GetTls
 004F88F4    mov         ax,word ptr [eax+224];{threadvar_548}
 004F88FB    mov         edx,dword ptr [ebp+8]
 004F88FE    mov         word ptr [edx],ax
>004F8901    jmp         004F8BAE
 004F8906    mov         eax,dword ptr [ebp-4]
 004F8909    call        00408200
 004F890E    and         eax,0FF
 004F8913    mov         word ptr [ebp-2A],ax
 004F8917    mov         eax,dword ptr [ebp-4]
 004F891A    call        00408218
 004F891F    and         eax,0FF
 004F8924    mov         word ptr [ebp-2C],ax
 004F8928    mov         eax,dword ptr [ebp-4]
 004F892B    call        00408234
 004F8930    and         eax,0FF
 004F8935    mov         word ptr [ebp-2E],ax
 004F8939    movzx       edx,word ptr [ebp-2C]
 004F893D    movzx       eax,word ptr [ebp-2A]
 004F8941    call        0048FCCC
 004F8946    movzx       edx,word ptr [ebp-2E]
 004F894A    call        0048FCCC
 004F894F    mov         dword ptr [ebp-74],eax
 004F8952    fild        dword ptr [ebp-74]
 004F8955    fstp        qword ptr [ebp-38]
 004F8958    wait
 004F8959    movzx       edx,word ptr [ebp-2C]
 004F895D    movzx       eax,word ptr [ebp-2A]
 004F8961    call        0048FCA0
 004F8966    movzx       edx,word ptr [ebp-2E]
 004F896A    call        0048FCA0
 004F896F    mov         dword ptr [ebp-74],eax
 004F8972    fild        dword ptr [ebp-74]
 004F8975    fstp        qword ptr [ebp-40]
 004F8978    wait
 004F8979    fld         qword ptr [ebp-38]
 004F897C    fadd        qword ptr [ebp-40]
 004F897F    fmul        dword ptr ds:[4F8BB4];240:Single
 004F8985    fadd        dword ptr ds:[4F8BB8];255:Single
 004F898B    fdiv        dword ptr ds:[4F8BBC];510:Single
 004F8991    fstp        qword ptr [ebp-20]
 004F8994    wait
 004F8995    fld         qword ptr [ebp-38]
 004F8998    fcomp       qword ptr [ebp-40]
 004F899B    fnstsw      al
 004F899D    sahf
>004F899E    jne         004F89C3
 004F89A0    mov         eax,dword ptr [ebp-8]
 004F89A3    mov         word ptr [eax],0A0
 004F89A8    fld         qword ptr [ebp-20]
 004F89AB    call        @ROUND
 004F89B0    mov         edx,dword ptr [ebp-0C]
 004F89B3    mov         word ptr [edx],ax
 004F89B6    mov         eax,dword ptr [ebp+8]
 004F89B9    mov         word ptr [eax],0
>004F89BE    jmp         004F8B6A
 004F89C3    fld         qword ptr [ebp-20]
 004F89C6    fcomp       dword ptr ds:[4F8BC0];120:Single
 004F89CC    fnstsw      al
 004F89CE    sahf
>004F89CF    ja          004F89F9
 004F89D1    fld         qword ptr [ebp-38]
 004F89D4    fsub        qword ptr [ebp-40]
 004F89D7    fmul        dword ptr ds:[4F8BB4];240:Single
 004F89DD    fld         qword ptr [ebp-38]
 004F89E0    fadd        qword ptr [ebp-40]
 004F89E3    fdiv        dword ptr ds:[4F8BC4];2:Single
 004F89E9    faddp       st(1),st
 004F89EB    fld         qword ptr [ebp-38]
 004F89EE    fadd        qword ptr [ebp-40]
 004F89F1    fdivp       st(1),st
 004F89F3    fstp        qword ptr [ebp-28]
 004F89F6    wait
>004F89F7    jmp         004F8A2B
 004F89F9    fld         qword ptr [ebp-38]
 004F89FC    fsub        qword ptr [ebp-40]
 004F89FF    fmul        dword ptr ds:[4F8BB4];240:Single
 004F8A05    fld         dword ptr ds:[4F8BBC];510:Single
 004F8A0B    fsub        qword ptr [ebp-38]
 004F8A0E    fsub        qword ptr [ebp-40]
 004F8A11    fdiv        dword ptr ds:[4F8BC4];2:Single
 004F8A17    faddp       st(1),st
 004F8A19    fld         dword ptr ds:[4F8BBC];510:Single
 004F8A1F    fsub        qword ptr [ebp-38]
 004F8A22    fsub        qword ptr [ebp-40]
 004F8A25    fdivp       st(1),st
 004F8A27    fstp        qword ptr [ebp-28]
 004F8A2A    wait
 004F8A2B    movzx       eax,word ptr [ebp-2A]
 004F8A2F    mov         dword ptr [ebp-74],eax
 004F8A32    fild        dword ptr [ebp-74]
 004F8A35    fsubr       qword ptr [ebp-38]
 004F8A38    fmul        dword ptr ds:[4F8BC8];40:Single
 004F8A3E    fld         qword ptr [ebp-38]
 004F8A41    fsub        qword ptr [ebp-40]
 004F8A44    fdiv        dword ptr ds:[4F8BC4];2:Single
 004F8A4A    faddp       st(1),st
 004F8A4C    fld         qword ptr [ebp-38]
 004F8A4F    fsub        qword ptr [ebp-40]
 004F8A52    fdivp       st(1),st
 004F8A54    fstp        tbyte ptr [ebp-50]
 004F8A57    wait
 004F8A58    movzx       eax,word ptr [ebp-2C]
 004F8A5C    mov         dword ptr [ebp-74],eax
 004F8A5F    fild        dword ptr [ebp-74]
 004F8A62    fsubr       qword ptr [ebp-38]
 004F8A65    fmul        dword ptr ds:[4F8BC8];40:Single
 004F8A6B    fld         qword ptr [ebp-38]
 004F8A6E    fsub        qword ptr [ebp-40]
 004F8A71    fdiv        dword ptr ds:[4F8BC4];2:Single
 004F8A77    faddp       st(1),st
 004F8A79    fld         qword ptr [ebp-38]
 004F8A7C    fsub        qword ptr [ebp-40]
 004F8A7F    fdivp       st(1),st
 004F8A81    fstp        tbyte ptr [ebp-60]
 004F8A84    wait
 004F8A85    movzx       eax,word ptr [ebp-2E]
 004F8A89    mov         dword ptr [ebp-74],eax
 004F8A8C    fild        dword ptr [ebp-74]
 004F8A8F    fsubr       qword ptr [ebp-38]
 004F8A92    fmul        dword ptr ds:[4F8BC8];40:Single
 004F8A98    fld         qword ptr [ebp-38]
 004F8A9B    fsub        qword ptr [ebp-40]
 004F8A9E    fdiv        dword ptr ds:[4F8BC4];2:Single
 004F8AA4    faddp       st(1),st
 004F8AA6    fld         qword ptr [ebp-38]
 004F8AA9    fsub        qword ptr [ebp-40]
 004F8AAC    fdivp       st(1),st
 004F8AAE    fstp        tbyte ptr [ebp-70]
 004F8AB1    wait
 004F8AB2    movzx       eax,word ptr [ebp-2A]
 004F8AB6    mov         dword ptr [ebp-74],eax
 004F8AB9    fild        dword ptr [ebp-74]
 004F8ABC    fcomp       qword ptr [ebp-38]
 004F8ABF    fnstsw      al
 004F8AC1    sahf
>004F8AC2    jne         004F8AD2
 004F8AC4    fld         tbyte ptr [ebp-70]
 004F8AC7    fld         tbyte ptr [ebp-60]
 004F8ACA    fsubp       st(1),st
 004F8ACC    fstp        qword ptr [ebp-18]
 004F8ACF    wait
>004F8AD0    jmp         004F8B0A
 004F8AD2    movzx       eax,word ptr [ebp-2C]
 004F8AD6    mov         dword ptr [ebp-74],eax
 004F8AD9    fild        dword ptr [ebp-74]
 004F8ADC    fcomp       qword ptr [ebp-38]
 004F8ADF    fnstsw      al
 004F8AE1    sahf
>004F8AE2    jne         004F8AF8
 004F8AE4    fld         tbyte ptr [ebp-50]
 004F8AE7    fadd        dword ptr ds:[4F8BCC];80:Single
 004F8AED    fld         tbyte ptr [ebp-70]
 004F8AF0    fsubp       st(1),st
 004F8AF2    fstp        qword ptr [ebp-18]
 004F8AF5    wait
>004F8AF6    jmp         004F8B0A
 004F8AF8    fld         tbyte ptr [ebp-60]
 004F8AFB    fadd        dword ptr ds:[4F8BD0];160:Single
 004F8B01    fld         tbyte ptr [ebp-50]
 004F8B04    fsubp       st(1),st
 004F8B06    fstp        qword ptr [ebp-18]
 004F8B09    wait
 004F8B0A    fld         qword ptr [ebp-18]
 004F8B0D    fcomp       dword ptr ds:[4F8BD4];0:Single
 004F8B13    fnstsw      al
 004F8B15    sahf
>004F8B16    jae         004F8B25
 004F8B18    fld         qword ptr [ebp-18]
 004F8B1B    fadd        dword ptr ds:[4F8BB4];240:Single
 004F8B21    fstp        qword ptr [ebp-18]
 004F8B24    wait
 004F8B25    fld         qword ptr [ebp-18]
 004F8B28    fcomp       dword ptr ds:[4F8BB4];240:Single
 004F8B2E    fnstsw      al
 004F8B30    sahf
>004F8B31    jbe         004F8B40
 004F8B33    fld         qword ptr [ebp-18]
 004F8B36    fsub        dword ptr ds:[4F8BB4];240:Single
 004F8B3C    fstp        qword ptr [ebp-18]
 004F8B3F    wait
 004F8B40    fld         qword ptr [ebp-18]
 004F8B43    call        @ROUND
 004F8B48    mov         edx,dword ptr [ebp-8]
 004F8B4B    mov         word ptr [edx],ax
 004F8B4E    fld         qword ptr [ebp-20]
 004F8B51    call        @ROUND
 004F8B56    mov         edx,dword ptr [ebp-0C]
 004F8B59    mov         word ptr [edx],ax
 004F8B5C    fld         qword ptr [ebp-28]
 004F8B5F    call        @ROUND
 004F8B64    mov         edx,dword ptr [ebp+8]
 004F8B67    mov         word ptr [edx],ax
 004F8B6A    call        @GetTls
 004F8B6F    mov         edx,dword ptr [ebp-4]
 004F8B72    mov         dword ptr [eax+21C],edx
 004F8B78    call        @GetTls
 004F8B7D    mov         edx,dword ptr [ebp-8]
 004F8B80    mov         dx,word ptr [edx]
 004F8B83    mov         word ptr [eax+220],dx
 004F8B8A    call        @GetTls
 004F8B8F    mov         edx,dword ptr [ebp-0C]
 004F8B92    mov         dx,word ptr [edx]
 004F8B95    mov         word ptr [eax+222],dx
 004F8B9C    call        @GetTls
 004F8BA1    mov         edx,dword ptr [ebp+8]
 004F8BA4    mov         dx,word ptr [edx]
 004F8BA7    mov         word ptr [eax+224],dx
 004F8BAE    mov         esp,ebp
 004F8BB0    pop         ebp
 004F8BB1    ret         4
end;*}

//004F8BD8
{*function sub_004F8BD8(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004F8BD8    push        ebp
 004F8BD9    mov         ebp,esp
 004F8BDB    add         esp,0FFFFFFF0
 004F8BDE    fld         qword ptr [ebp+8]
 004F8BE1    fcomp       dword ptr ds:[4F8CB0];0:Single
 004F8BE7    fnstsw      al
 004F8BE9    sahf
>004F8BEA    jae         004F8BF9
 004F8BEC    fld         qword ptr [ebp+8]
 004F8BEF    fadd        dword ptr ds:[4F8CB4];240:Single
 004F8BF5    fstp        qword ptr [ebp+8]
 004F8BF8    wait
 004F8BF9    fld         qword ptr [ebp+8]
 004F8BFC    fcomp       dword ptr ds:[4F8CB4];240:Single
 004F8C02    fnstsw      al
 004F8C04    sahf
>004F8C05    jbe         004F8C14
 004F8C07    fld         qword ptr [ebp+8]
 004F8C0A    fsub        dword ptr ds:[4F8CB4];240:Single
 004F8C10    fstp        qword ptr [ebp+8]
 004F8C13    wait
 004F8C14    fld         qword ptr [ebp+8]
 004F8C17    fcomp       dword ptr ds:[4F8CB8];40:Single
 004F8C1D    fnstsw      al
 004F8C1F    sahf
>004F8C20    jae         004F8C40
 004F8C22    fld         qword ptr [ebp+10]
 004F8C25    fsub        qword ptr [ebp+18]
 004F8C28    fmul        qword ptr [ebp+8]
 004F8C2B    fadd        dword ptr ds:[4F8CBC];20:Single
 004F8C31    fdiv        dword ptr ds:[4F8CB8];40:Single
 004F8C37    fadd        qword ptr [ebp+18]
 004F8C3A    fstp        qword ptr [ebp-10]
 004F8C3D    wait
>004F8C3E    jmp         004F8C9C
 004F8C40    fld         qword ptr [ebp+8]
 004F8C43    fcomp       dword ptr ds:[4F8CC0];120:Single
 004F8C49    fnstsw      al
 004F8C4B    sahf
>004F8C4C    jae         004F8C5C
 004F8C4E    mov         eax,dword ptr [ebp+10]
 004F8C51    mov         dword ptr [ebp-10],eax
 004F8C54    mov         eax,dword ptr [ebp+14]
 004F8C57    mov         dword ptr [ebp-0C],eax
>004F8C5A    jmp         004F8C9C
 004F8C5C    fld         qword ptr [ebp+8]
 004F8C5F    fcomp       dword ptr ds:[4F8CC4];160:Single
 004F8C65    fnstsw      al
 004F8C67    sahf
>004F8C68    jae         004F8C90
 004F8C6A    fld         qword ptr [ebp+10]
 004F8C6D    fsub        qword ptr [ebp+18]
 004F8C70    fld         dword ptr ds:[4F8CC4];160:Single
 004F8C76    fsub        qword ptr [ebp+8]
 004F8C79    fmulp       st(1),st
 004F8C7B    fadd        dword ptr ds:[4F8CBC];20:Single
 004F8C81    fdiv        dword ptr ds:[4F8CB8];40:Single
 004F8C87    fadd        qword ptr [ebp+18]
 004F8C8A    fstp        qword ptr [ebp-10]
 004F8C8D    wait
>004F8C8E    jmp         004F8C9C
 004F8C90    mov         eax,dword ptr [ebp+18]
 004F8C93    mov         dword ptr [ebp-10],eax
 004F8C96    mov         eax,dword ptr [ebp+1C]
 004F8C99    mov         dword ptr [ebp-0C],eax
 004F8C9C    fld         qword ptr [ebp-10]
 004F8C9F    call        @ROUND
 004F8CA4    mov         dword ptr [ebp-4],eax
 004F8CA7    mov         eax,dword ptr [ebp-4]
 004F8CAA    mov         esp,ebp
 004F8CAC    pop         ebp
 004F8CAD    ret         18
end;*}

//004F8CC8
{*function sub_004F8CC8(?:?):?;
begin
 004F8CC8    push        ebp
 004F8CC9    mov         ebp,esp
 004F8CCB    push        ecx
 004F8CCC    fld         qword ptr [ebp+8]
 004F8CCF    fcomp       dword ptr ds:[4F8CF8];255:Single
 004F8CD5    fnstsw      al
 004F8CD7    sahf
>004F8CD8    jbe         004F8CE3
 004F8CDA    mov         dword ptr [ebp-4],0FF
>004F8CE1    jmp         004F8CEE
 004F8CE3    fld         qword ptr [ebp+8]
 004F8CE6    call        @ROUND
 004F8CEB    mov         dword ptr [ebp-4],eax
 004F8CEE    mov         eax,dword ptr [ebp-4]
 004F8CF1    pop         ecx
 004F8CF2    pop         ebp
 004F8CF3    ret         8
end;*}

//004F8CFC
{*function sub_004F8CFC(?:?; ?:?; ?:?):?;
begin
 004F8CFC    push        ebp
 004F8CFD    mov         ebp,esp
 004F8CFF    add         esp,0FFFFFFC0
 004F8D02    mov         word ptr [ebp-6],cx
 004F8D06    mov         word ptr [ebp-4],dx
 004F8D0A    mov         word ptr [ebp-2],ax
 004F8D0E    cmp         word ptr [ebp-6],0
>004F8D13    jne         004F8D60
 004F8D15    movzx       eax,word ptr [ebp-4]
 004F8D19    mov         edx,eax
 004F8D1B    shl         eax,8
 004F8D1E    sub         eax,edx
 004F8D20    mov         dword ptr [ebp-3C],eax
 004F8D23    fild        dword ptr [ebp-3C]
 004F8D26    fdiv        dword ptr ds:[4F8EE8];240:Single
 004F8D2C    fstp        qword ptr [ebp-18]
 004F8D2F    wait
 004F8D30    mov         eax,dword ptr [ebp-18]
 004F8D33    mov         dword ptr [ebp-20],eax
 004F8D36    mov         eax,dword ptr [ebp-14]
 004F8D39    mov         dword ptr [ebp-1C],eax
 004F8D3C    mov         eax,dword ptr [ebp-18]
 004F8D3F    mov         dword ptr [ebp-28],eax
 004F8D42    mov         eax,dword ptr [ebp-14]
 004F8D45    mov         dword ptr [ebp-24],eax
 004F8D48    movzx       eax,word ptr [ebp-2]
 004F8D4C    mov         dword ptr [ebp-3C],eax
 004F8D4F    fild        dword ptr [ebp-3C]
 004F8D52    fcomp       dword ptr ds:[4F8EEC];160:Single
 004F8D58    fnstsw      al
 004F8D5A    sahf
>004F8D5B    jmp         004F8EAB
 004F8D60    movzx       eax,word ptr [ebp-4]
 004F8D64    mov         dword ptr [ebp-3C],eax
 004F8D67    fild        dword ptr [ebp-3C]
 004F8D6A    fcomp       dword ptr ds:[4F8EF0];120:Single
 004F8D70    fnstsw      al
 004F8D72    sahf
>004F8D73    ja          004F8D9D
 004F8D75    movzx       eax,word ptr [ebp-4]
 004F8D79    movzx       edx,word ptr [ebp-6]
 004F8D7D    add         edx,0F0
 004F8D83    imul        edx
 004F8D85    mov         dword ptr [ebp-3C],eax
 004F8D88    fild        dword ptr [ebp-3C]
 004F8D8B    fadd        dword ptr ds:[4F8EF0];120:Single
 004F8D91    fdiv        dword ptr ds:[4F8EE8];240:Single
 004F8D97    fstp        qword ptr [ebp-38]
 004F8D9A    wait
>004F8D9B    jmp         004F8DCF
 004F8D9D    movzx       eax,word ptr [ebp-4]
 004F8DA1    movzx       edx,word ptr [ebp-6]
 004F8DA5    add         eax,edx
 004F8DA7    mov         dword ptr [ebp-3C],eax
 004F8DAA    fild        dword ptr [ebp-3C]
 004F8DAD    movzx       eax,word ptr [ebp-4]
 004F8DB1    movzx       edx,word ptr [ebp-6]
 004F8DB5    imul        edx
 004F8DB7    mov         dword ptr [ebp-40],eax
 004F8DBA    fild        dword ptr [ebp-40]
 004F8DBD    fadd        dword ptr ds:[4F8EF0];120:Single
 004F8DC3    fdiv        dword ptr ds:[4F8EE8];240:Single
 004F8DC9    fsubp       st(1),st
 004F8DCB    fstp        qword ptr [ebp-38]
 004F8DCE    wait
 004F8DCF    movzx       eax,word ptr [ebp-4]
 004F8DD3    add         eax,eax
 004F8DD5    mov         dword ptr [ebp-3C],eax
 004F8DD8    fild        dword ptr [ebp-3C]
 004F8DDB    fsub        qword ptr [ebp-38]
 004F8DDE    fstp        qword ptr [ebp-30]
 004F8DE1    wait
 004F8DE2    push        dword ptr [ebp-2C]
 004F8DE5    push        dword ptr [ebp-30]
 004F8DE8    push        dword ptr [ebp-34]
 004F8DEB    push        dword ptr [ebp-38]
 004F8DEE    movzx       eax,word ptr [ebp-2]
 004F8DF2    mov         dword ptr [ebp-3C],eax
 004F8DF5    fild        dword ptr [ebp-3C]
 004F8DF8    fadd        dword ptr ds:[4F8EF4];80:Single
 004F8DFE    add         esp,0FFFFFFF8
 004F8E01    fstp        qword ptr [esp]
 004F8E04    wait
 004F8E05    call        004F8BD8
 004F8E0A    mov         edx,eax
 004F8E0C    shl         eax,8
 004F8E0F    sub         eax,edx
 004F8E11    mov         dword ptr [ebp-3C],eax
 004F8E14    fild        dword ptr [ebp-3C]
 004F8E17    fadd        dword ptr ds:[4F8EF0];120:Single
 004F8E1D    fdiv        dword ptr ds:[4F8EE8];240:Single
 004F8E23    fstp        qword ptr [ebp-18]
 004F8E26    wait
 004F8E27    push        dword ptr [ebp-2C]
 004F8E2A    push        dword ptr [ebp-30]
 004F8E2D    push        dword ptr [ebp-34]
 004F8E30    push        dword ptr [ebp-38]
 004F8E33    movzx       eax,word ptr [ebp-2]
 004F8E37    mov         dword ptr [ebp-3C],eax
 004F8E3A    fild        dword ptr [ebp-3C]
 004F8E3D    add         esp,0FFFFFFF8
 004F8E40    fstp        qword ptr [esp]
 004F8E43    wait
 004F8E44    call        004F8BD8
 004F8E49    mov         edx,eax
 004F8E4B    shl         eax,8
 004F8E4E    sub         eax,edx
 004F8E50    mov         dword ptr [ebp-3C],eax
 004F8E53    fild        dword ptr [ebp-3C]
 004F8E56    fadd        dword ptr ds:[4F8EF0];120:Single
 004F8E5C    fdiv        dword ptr ds:[4F8EE8];240:Single
 004F8E62    fstp        qword ptr [ebp-20]
 004F8E65    wait
 004F8E66    push        dword ptr [ebp-2C]
 004F8E69    push        dword ptr [ebp-30]
 004F8E6C    push        dword ptr [ebp-34]
 004F8E6F    push        dword ptr [ebp-38]
 004F8E72    movzx       eax,word ptr [ebp-2]
 004F8E76    mov         dword ptr [ebp-3C],eax
 004F8E79    fild        dword ptr [ebp-3C]
 004F8E7C    fsub        dword ptr ds:[4F8EF4];80:Single
 004F8E82    add         esp,0FFFFFFF8
 004F8E85    fstp        qword ptr [esp]
 004F8E88    wait
 004F8E89    call        004F8BD8
 004F8E8E    mov         edx,eax
 004F8E90    shl         eax,8
 004F8E93    sub         eax,edx
 004F8E95    mov         dword ptr [ebp-3C],eax
 004F8E98    fild        dword ptr [ebp-3C]
 004F8E9B    fadd        dword ptr ds:[4F8EF0];120:Single
 004F8EA1    fdiv        dword ptr ds:[4F8EE8];240:Single
 004F8EA7    fstp        qword ptr [ebp-28]
 004F8EAA    wait
 004F8EAB    push        ebp
 004F8EAC    push        dword ptr [ebp-24]
 004F8EAF    push        dword ptr [ebp-28]
 004F8EB2    call        004F8CC8
 004F8EB7    pop         ecx
 004F8EB8    push        eax
 004F8EB9    push        ebp
 004F8EBA    push        dword ptr [ebp-1C]
 004F8EBD    push        dword ptr [ebp-20]
 004F8EC0    call        004F8CC8
 004F8EC5    pop         ecx
 004F8EC6    push        eax
 004F8EC7    push        ebp
 004F8EC8    push        dword ptr [ebp-14]
 004F8ECB    push        dword ptr [ebp-18]
 004F8ECE    call        004F8CC8
 004F8ED3    pop         ecx
 004F8ED4    pop         edx
 004F8ED5    pop         ecx
 004F8ED6    call        004081CC
 004F8EDB    mov         dword ptr [ebp-0C],eax
 004F8EDE    mov         eax,dword ptr [ebp-0C]
 004F8EE1    mov         esp,ebp
 004F8EE3    pop         ebp
 004F8EE4    ret
end;*}

//004F8EF8
{*function sub_004F8EF8(?:TColor; ?:?; ?:?):?;
begin
 004F8EF8    push        ebp
 004F8EF9    mov         ebp,esp
 004F8EFB    add         esp,0FFFFFFE8
 004F8EFE    mov         dword ptr [ebp-18],ecx
 004F8F01    mov         dword ptr [ebp-8],edx
 004F8F04    mov         dword ptr [ebp-4],eax
 004F8F07    call        @GetTls
 004F8F0C    mov         eax,dword ptr [eax+240];{threadvar_576}
 004F8F12    cmp         eax,dword ptr [ebp-4]
>004F8F15    jne         004F8F37
 004F8F17    call        @GetTls
 004F8F1C    mov         eax,dword ptr [eax+244];{threadvar_580}
 004F8F22    cmp         eax,dword ptr [ebp-8]
>004F8F25    jne         004F8F37
 004F8F27    call        @GetTls
 004F8F2C    mov         eax,dword ptr [eax+248];{threadvar_584}
 004F8F32    mov         dword ptr [ebp-0C],eax
>004F8F35    jmp         004F8F90
 004F8F37    lea         eax,[ebp-12]
 004F8F3A    push        eax
 004F8F3B    mov         eax,dword ptr [ebp-4]
 004F8F3E    call        00486830
 004F8F43    lea         ecx,[ebp-10]
 004F8F46    lea         edx,[ebp-0E]
 004F8F49    call        004F88AC
 004F8F4E    mov         dx,word ptr [ebp-10]
 004F8F52    add         dx,word ptr [ebp-8]
 004F8F56    mov         cx,word ptr [ebp-12]
 004F8F5A    mov         ax,word ptr [ebp-0E]
 004F8F5E    call        004F8CFC
 004F8F63    mov         dword ptr [ebp-0C],eax
 004F8F66    call        @GetTls
 004F8F6B    mov         edx,dword ptr [ebp-4]
 004F8F6E    mov         dword ptr [eax+240],edx
 004F8F74    call        @GetTls
 004F8F79    mov         edx,dword ptr [ebp-8]
 004F8F7C    mov         dword ptr [eax+244],edx
 004F8F82    call        @GetTls
 004F8F87    mov         edx,dword ptr [ebp-0C]
 004F8F8A    mov         dword ptr [eax+248],edx
 004F8F90    mov         eax,dword ptr [ebp-0C]
 004F8F93    mov         esp,ebp
 004F8F95    pop         ebp
 004F8F96    ret
end;*}

//004F8F98
{*function sub_004F8F98(?:TColor; ?:?):?;
begin
 004F8F98    push        ebp
 004F8F99    mov         ebp,esp
 004F8F9B    add         esp,0FFFFFFE8
 004F8F9E    mov         dword ptr [ebp-8],edx
 004F8FA1    mov         dword ptr [ebp-4],eax
 004F8FA4    call        @GetTls
 004F8FA9    mov         eax,dword ptr [eax+22C];{threadvar_556}
 004F8FAF    cmp         eax,dword ptr [ebp-4]
>004F8FB2    jne         004F8FD7
 004F8FB4    call        @GetTls
 004F8FB9    mov         eax,dword ptr [eax+228];{threadvar_552}
 004F8FBF    cmp         eax,dword ptr [ebp-8]
>004F8FC2    jne         004F8FD7
 004F8FC4    call        @GetTls
 004F8FC9    mov         eax,dword ptr [eax+230];{threadvar_560}
 004F8FCF    mov         dword ptr [ebp-0C],eax
>004F8FD2    jmp         004F9068
 004F8FD7    cmp         dword ptr [ebp-4],0FF00000F
>004F8FDE    jne         004F8FEF
 004F8FE0    cmp         dword ptr [ebp-8],13
>004F8FE4    jne         004F8FEF
 004F8FE6    mov         dword ptr [ebp-0C],0FF000014
>004F8FED    jmp         004F9068
 004F8FEF    mov         eax,dword ptr [ebp-4]
 004F8FF2    call        00486830
 004F8FF7    mov         dword ptr [ebp-18],eax
 004F8FFA    lea         eax,[ebp-12]
 004F8FFD    push        eax
 004F8FFE    lea         ecx,[ebp-10]
 004F9001    lea         edx,[ebp-0E]
 004F9004    mov         eax,dword ptr [ebp-18]
 004F9007    call        004F88AC
 004F900C    cmp         word ptr [ebp-12],0DC
>004F9012    jbe         004F902E
 004F9014    mov         dx,word ptr [ebp-10]
 004F9018    sub         dx,word ptr [ebp-8]
 004F901C    mov         cx,word ptr [ebp-12]
 004F9020    mov         ax,word ptr [ebp-0E]
 004F9024    call        004F8CFC
 004F9029    mov         dword ptr [ebp-0C],eax
>004F902C    jmp         004F903E
 004F902E    xor         ecx,ecx
 004F9030    mov         edx,dword ptr [ebp-8]
 004F9033    mov         eax,dword ptr [ebp-18]
 004F9036    call        004F8EF8
 004F903B    mov         dword ptr [ebp-0C],eax
 004F903E    call        @GetTls
 004F9043    mov         edx,dword ptr [ebp-8]
 004F9046    mov         dword ptr [eax+228],edx
 004F904C    call        @GetTls
 004F9051    mov         edx,dword ptr [ebp-4]
 004F9054    mov         dword ptr [eax+22C],edx
 004F905A    call        @GetTls
 004F905F    mov         edx,dword ptr [ebp-0C]
 004F9062    mov         dword ptr [eax+230],edx
 004F9068    mov         eax,dword ptr [ebp-0C]
 004F906B    mov         esp,ebp
 004F906D    pop         ebp
 004F906E    ret
end;*}

//004F9070
{*function sub_004F9070(?:TColor; ?:?):?;
begin
 004F9070    push        ebp
 004F9071    mov         ebp,esp
 004F9073    add         esp,0FFFFFFE8
 004F9076    mov         dword ptr [ebp-8],edx
 004F9079    mov         dword ptr [ebp-4],eax
 004F907C    call        @GetTls
 004F9081    mov         eax,dword ptr [eax+238];{threadvar_568}
 004F9087    cmp         eax,dword ptr [ebp-4]
>004F908A    jne         004F90AF
 004F908C    call        @GetTls
 004F9091    mov         eax,dword ptr [eax+234];{threadvar_564}
 004F9097    cmp         eax,dword ptr [ebp-8]
>004F909A    jne         004F90AF
 004F909C    call        @GetTls
 004F90A1    mov         eax,dword ptr [eax+23C];{threadvar_572}
 004F90A7    mov         dword ptr [ebp-0C],eax
>004F90AA    jmp         004F9140
 004F90AF    cmp         dword ptr [ebp-4],0FF00000F
>004F90B6    jne         004F90C7
 004F90B8    cmp         dword ptr [ebp-8],0FFFFFFCE
>004F90BC    jne         004F90C7
 004F90BE    mov         dword ptr [ebp-0C],0FF000010
>004F90C5    jmp         004F9116
 004F90C7    mov         eax,dword ptr [ebp-4]
 004F90CA    call        00486830
 004F90CF    mov         dword ptr [ebp-18],eax
 004F90D2    lea         eax,[ebp-12]
 004F90D5    push        eax
 004F90D6    lea         ecx,[ebp-10]
 004F90D9    lea         edx,[ebp-0E]
 004F90DC    mov         eax,dword ptr [ebp-18]
 004F90DF    call        004F88AC
 004F90E4    cmp         word ptr [ebp-12],0A0
>004F90EA    jb          004F9106
 004F90EC    mov         dx,word ptr [ebp-10]
 004F90F0    add         dx,word ptr [ebp-8]
 004F90F4    mov         cx,word ptr [ebp-12]
 004F90F8    mov         ax,word ptr [ebp-0E]
 004F90FC    call        004F8CFC
 004F9101    mov         dword ptr [ebp-0C],eax
>004F9104    jmp         004F9116
 004F9106    xor         ecx,ecx
 004F9108    mov         edx,dword ptr [ebp-8]
 004F910B    mov         eax,dword ptr [ebp-18]
 004F910E    call        004F8EF8
 004F9113    mov         dword ptr [ebp-0C],eax
 004F9116    call        @GetTls
 004F911B    mov         edx,dword ptr [ebp-8]
 004F911E    mov         dword ptr [eax+234],edx
 004F9124    call        @GetTls
 004F9129    mov         edx,dword ptr [ebp-4]
 004F912C    mov         dword ptr [eax+238],edx
 004F9132    call        @GetTls
 004F9137    mov         edx,dword ptr [ebp-0C]
 004F913A    mov         dword ptr [eax+23C],edx
 004F9140    mov         eax,dword ptr [ebp-0C]
 004F9143    mov         esp,ebp
 004F9145    pop         ebp
 004F9146    ret
end;*}

//004F9148
{*procedure sub_004F9148(?:TCanvas; ?:?; ?:?; ?:?);
begin
 004F9148    push        ebp
 004F9149    mov         ebp,esp
 004F914B    add         esp,0FFFFFFC4
 004F914E    push        esi
 004F914F    push        edi
 004F9150    mov         esi,ecx
 004F9152    lea         edi,[ebp-0D]
 004F9155    movs        dword ptr [edi],dword ptr [esi]
 004F9156    movs        dword ptr [edi],dword ptr [esi]
 004F9157    mov         byte ptr [ebp-5],dl
 004F915A    mov         dword ptr [ebp-4],eax
 004F915D    cmp         dword ptr [ebp-4],0
>004F9161    je          004F9236
 004F9167    mov         eax,dword ptr [ebp-4]
 004F916A    mov         eax,dword ptr [eax+14]
 004F916D    call        TBrush.GetColor
 004F9172    mov         dword ptr [ebp-1C],eax
 004F9175    mov         eax,dword ptr [ebp-4]
 004F9178    mov         eax,dword ptr [eax+10]
 004F917B    call        TPen.GetColor
 004F9180    mov         edx,eax
 004F9182    mov         eax,dword ptr [ebp-4]
 004F9185    mov         eax,dword ptr [eax+14]
 004F9188    call        TBrush.SetColor
 004F918D    lea         edx,[ebp-34]
 004F9190    xor         eax,eax
 004F9192    mov         al,byte ptr [ebp-5]
 004F9195    lea         eax,[eax+eax*2]
 004F9198    lea         eax,[eax*8+5419E8]
 004F919F    mov         ecx,18
 004F91A4    call        Move
 004F91A9    xor         eax,eax
 004F91AB    mov         dword ptr [ebp-14],eax
 004F91AE    lea         ecx,[ebp-3C]
 004F91B1    mov         eax,dword ptr [ebp-14]
 004F91B4    mov         edx,dword ptr [ebp+eax*8-30]
 004F91B8    imul        edx,dword ptr [ebp+8]
 004F91BC    add         edx,dword ptr [ebp-9]
 004F91BF    mov         eax,dword ptr [ebp-14]
 004F91C2    mov         eax,dword ptr [ebp+eax*8-34]
 004F91C6    imul        eax,dword ptr [ebp+8]
 004F91CA    add         eax,dword ptr [ebp-0D]
 004F91CD    call        Point
 004F91D2    mov         eax,dword ptr [ebp-14]
 004F91D5    mov         edx,dword ptr [ebp-3C]
 004F91D8    mov         dword ptr [ebp+eax*8-34],edx
 004F91DC    mov         edx,dword ptr [ebp-38]
 004F91DF    mov         dword ptr [ebp+eax*8-30],edx
 004F91E3    inc         dword ptr [ebp-14]
 004F91E6    cmp         dword ptr [ebp-14],3
>004F91EA    jne         004F91AE
 004F91EC    mov         eax,dword ptr [ebp-4]
 004F91EF    mov         eax,dword ptr [eax+10]
 004F91F2    call        TPen.GetWidth
 004F91F7    mov         dword ptr [ebp-18],eax
 004F91FA    mov         edx,1
 004F91FF    mov         eax,dword ptr [ebp-4]
 004F9202    mov         eax,dword ptr [eax+10]
 004F9205    call        TPen.SetWidth
 004F920A    lea         edx,[ebp-34]
 004F920D    mov         ecx,2
 004F9212    mov         eax,dword ptr [ebp-4]
 004F9215    call        00487EEC
 004F921A    mov         edx,dword ptr [ebp-18]
 004F921D    mov         eax,dword ptr [ebp-4]
 004F9220    mov         eax,dword ptr [eax+10]
 004F9223    call        TPen.SetWidth
 004F9228    mov         edx,dword ptr [ebp-1C]
 004F922B    mov         eax,dword ptr [ebp-4]
 004F922E    mov         eax,dword ptr [eax+14]
 004F9231    call        TBrush.SetColor
 004F9236    pop         edi
 004F9237    pop         esi
 004F9238    mov         esp,ebp
 004F923A    pop         ebp
 004F923B    ret         4
end;*}

//004F9240
{*procedure sub_004F9240(?:?);
begin
 004F9240    push        ebp
 004F9241    mov         ebp,esp
 004F9243    add         esp,0FFFFFFDC
 004F9246    lea         edx,[ebp-1C]
 004F9249    mov         eax,dword ptr [ebp+8]
 004F924C    movzx       eax,byte ptr [eax-1]
 004F9250    lea         eax,[eax+eax*2]
 004F9253    lea         eax,[eax*8+5419E8]
 004F925A    mov         ecx,18
 004F925F    call        Move
 004F9264    xor         eax,eax
 004F9266    mov         dword ptr [ebp-4],eax
 004F9269    mov         eax,dword ptr [ebp-4]
 004F926C    mov         edx,dword ptr [ebp+eax*8-18]
 004F9270    mov         eax,dword ptr [ebp+8]
 004F9273    imul        edx,dword ptr [eax+8]
 004F9277    mov         eax,dword ptr [ebp+8]
 004F927A    add         edx,dword ptr [eax-5]
 004F927D    mov         eax,dword ptr [ebp-4]
 004F9280    mov         eax,dword ptr [ebp+eax*8-1C]
 004F9284    mov         ecx,dword ptr [ebp+8]
 004F9287    imul        eax,dword ptr [ecx+8]
 004F928B    mov         ecx,dword ptr [ebp+8]
 004F928E    add         eax,dword ptr [ecx-9]
 004F9291    lea         ecx,[ebp-24]
 004F9294    call        Point
 004F9299    mov         eax,dword ptr [ebp-4]
 004F929C    mov         edx,dword ptr [ebp-24]
 004F929F    mov         dword ptr [ebp+eax*8-1C],edx
 004F92A3    mov         edx,dword ptr [ebp-20]
 004F92A6    mov         dword ptr [ebp+eax*8-18],edx
 004F92AA    inc         dword ptr [ebp-4]
 004F92AD    cmp         dword ptr [ebp-4],3
>004F92B1    jne         004F9269
 004F92B3    mov         eax,dword ptr [ebp+8]
 004F92B6    mov         al,byte ptr [eax-1]
 004F92B9    sub         al,1
>004F92BB    jb          004F9303
>004F92BD    je          004F92E5
 004F92BF    dec         al
>004F92C1    je          004F9303
 004F92C3    dec         al
>004F92C5    jne         004F931F
 004F92C7    lea         ecx,[ebp-24]
 004F92CA    mov         edx,dword ptr [ebp-8]
 004F92CD    dec         edx
 004F92CE    mov         eax,dword ptr [ebp-0C]
 004F92D1    inc         eax
 004F92D2    call        Point
 004F92D7    mov         eax,dword ptr [ebp-24]
 004F92DA    mov         dword ptr [ebp-0C],eax
 004F92DD    mov         eax,dword ptr [ebp-20]
 004F92E0    mov         dword ptr [ebp-8],eax
>004F92E3    jmp         004F931F
 004F92E5    lea         ecx,[ebp-24]
 004F92E8    mov         edx,dword ptr [ebp-8]
 004F92EB    inc         edx
 004F92EC    mov         eax,dword ptr [ebp-0C]
 004F92EF    dec         eax
 004F92F0    call        Point
 004F92F5    mov         eax,dword ptr [ebp-24]
 004F92F8    mov         dword ptr [ebp-0C],eax
 004F92FB    mov         eax,dword ptr [ebp-20]
 004F92FE    mov         dword ptr [ebp-8],eax
>004F9301    jmp         004F931F
 004F9303    lea         ecx,[ebp-24]
 004F9306    mov         edx,dword ptr [ebp-8]
 004F9309    inc         edx
 004F930A    mov         eax,dword ptr [ebp-0C]
 004F930D    inc         eax
 004F930E    call        Point
 004F9313    mov         eax,dword ptr [ebp-24]
 004F9316    mov         dword ptr [ebp-0C],eax
 004F9319    mov         eax,dword ptr [ebp-20]
 004F931C    mov         dword ptr [ebp-8],eax
 004F931F    lea         edx,[ebp-1C]
 004F9322    mov         eax,dword ptr [ebp+8]
 004F9325    mov         eax,dword ptr [eax-10]
 004F9328    mov         ecx,2
 004F932D    call        00487F38
 004F9332    mov         esp,ebp
 004F9334    pop         ebp
 004F9335    ret
end;*}

//004F9338
{*procedure sub_004F9338(?:TCanvas; ?:?; ?:?; ?:?);
begin
 004F9338    push        ebp
 004F9339    mov         ebp,esp
 004F933B    add         esp,0FFFFFFEC
 004F933E    push        esi
 004F933F    push        edi
 004F9340    mov         esi,ecx
 004F9342    lea         edi,[ebp-9]
 004F9345    movs        dword ptr [edi],dword ptr [esi]
 004F9346    movs        dword ptr [edi],dword ptr [esi]
 004F9347    mov         byte ptr [ebp-1],dl
 004F934A    mov         dword ptr [ebp-10],eax
 004F934D    cmp         dword ptr [ebp-10],0
>004F9351    je          004F93EA
 004F9357    mov         eax,dword ptr [ebp-10]
 004F935A    mov         eax,dword ptr [eax+10]
 004F935D    call        TPen.GetWidth
 004F9362    mov         dword ptr [ebp-14],eax
 004F9365    mov         eax,dword ptr [ebp-10]
 004F9368    mov         eax,dword ptr [eax+10]
 004F936B    mov         edx,1
 004F9370    call        TPen.SetWidth
 004F9375    mov         al,byte ptr [ebp-1]
 004F9378    sub         al,2
>004F937A    jb          004F9382
 004F937C    sub         al,2
>004F937E    jb          004F93B0
>004F9380    jmp         004F93DC
 004F9382    mov         eax,dword ptr [ebp+8]
 004F9385    sub         dword ptr [ebp-9],eax
 004F9388    push        ebp
 004F9389    call        004F9240
 004F938E    pop         ecx
 004F938F    inc         dword ptr [ebp-9]
 004F9392    push        ebp
 004F9393    call        004F9240
 004F9398    pop         ecx
 004F9399    add         dword ptr [ebp-9],3
 004F939D    push        ebp
 004F939E    call        004F9240
 004F93A3    pop         ecx
 004F93A4    inc         dword ptr [ebp-9]
 004F93A7    push        ebp
 004F93A8    call        004F9240
 004F93AD    pop         ecx
>004F93AE    jmp         004F93DC
 004F93B0    mov         eax,dword ptr [ebp+8]
 004F93B3    sub         dword ptr [ebp-5],eax
 004F93B6    push        ebp
 004F93B7    call        004F9240
 004F93BC    pop         ecx
 004F93BD    inc         dword ptr [ebp-5]
 004F93C0    push        ebp
 004F93C1    call        004F9240
 004F93C6    pop         ecx
 004F93C7    add         dword ptr [ebp-5],3
 004F93CB    push        ebp
 004F93CC    call        004F9240
 004F93D1    pop         ecx
 004F93D2    inc         dword ptr [ebp-5]
 004F93D5    push        ebp
 004F93D6    call        004F9240
 004F93DB    pop         ecx
 004F93DC    mov         eax,dword ptr [ebp-10]
 004F93DF    mov         eax,dword ptr [eax+10]
 004F93E2    mov         edx,dword ptr [ebp-14]
 004F93E5    call        TPen.SetWidth
 004F93EA    pop         edi
 004F93EB    pop         esi
 004F93EC    mov         esp,ebp
 004F93EE    pop         ebp
 004F93EF    ret         4
end;*}

//004F93F4
{*procedure sub_004F93F4(?:TCanvas; ?:?; ?:?; ?:?);
begin
 004F93F4    push        ebp
 004F93F5    mov         ebp,esp
 004F93F7    add         esp,0FFFFFF4C
 004F93FD    push        esi
 004F93FE    push        edi
 004F93FF    mov         esi,edx
 004F9401    lea         edi,[ebp-0C]
 004F9404    movs        dword ptr [edi],dword ptr [esi]
 004F9405    movs        dword ptr [edi],dword ptr [esi]
 004F9406    mov         dword ptr [ebp-10],ecx
 004F9409    mov         dword ptr [ebp-4],eax
 004F940C    cmp         dword ptr [ebp-4],0
>004F9410    je          004F967A
 004F9416    mov         eax,dword ptr [ebp-4]
 004F9419    mov         ecx,dword ptr [eax+10]
 004F941C    mov         dl,1
 004F941E    mov         eax,[0048555C];TPenRecall
 004F9423    call        TPenRecall.Create;TPenRecall.Create
 004F9428    mov         dword ptr [ebp-14],eax
 004F942B    xor         eax,eax
 004F942D    push        ebp
 004F942E    push        4F9673
 004F9433    push        dword ptr fs:[eax]
 004F9436    mov         dword ptr fs:[eax],esp
 004F9439    mov         eax,dword ptr [ebp-4]
 004F943C    mov         eax,dword ptr [eax+10]
 004F943F    mov         edx,1
 004F9444    call        TPen.SetWidth
 004F9449    lea         ecx,[ebp-4C]
 004F944C    mov         edx,dword ptr [ebp-8]
 004F944F    mov         eax,dword ptr [ebp-0C]
 004F9452    call        Point
 004F9457    mov         eax,dword ptr [ebp-4C]
 004F945A    mov         dword ptr [ebp-44],eax
 004F945D    mov         eax,dword ptr [ebp-48]
 004F9460    mov         dword ptr [ebp-40],eax
 004F9463    lea         ecx,[ebp-54]
 004F9466    mov         edx,dword ptr [ebp-8]
 004F9469    add         edx,dword ptr [ebp-10]
 004F946C    mov         eax,dword ptr [ebp-0C]
 004F946F    add         eax,dword ptr [ebp-10]
 004F9472    call        Point
 004F9477    mov         eax,dword ptr [ebp-54]
 004F947A    mov         dword ptr [ebp-3C],eax
 004F947D    mov         eax,dword ptr [ebp-50]
 004F9480    mov         dword ptr [ebp-38],eax
 004F9483    lea         ecx,[ebp-5C]
 004F9486    mov         edx,dword ptr [ebp-8]
 004F9489    sub         edx,dword ptr [ebp-10]
 004F948C    mov         eax,dword ptr [ebp-10]
 004F948F    add         eax,eax
 004F9491    add         eax,dword ptr [ebp-0C]
 004F9494    add         eax,dword ptr [ebp-10]
 004F9497    call        Point
 004F949C    mov         eax,dword ptr [ebp-5C]
 004F949F    mov         dword ptr [ebp-34],eax
 004F94A2    mov         eax,dword ptr [ebp-58]
 004F94A5    mov         dword ptr [ebp-30],eax
 004F94A8    lea         ecx,[ebp-64]
 004F94AB    mov         edx,dword ptr [ebp-8]
 004F94AE    sub         edx,dword ptr [ebp-10]
 004F94B1    dec         edx
 004F94B2    mov         eax,dword ptr [ebp-10]
 004F94B5    add         eax,eax
 004F94B7    add         eax,dword ptr [ebp-0C]
 004F94BA    add         eax,dword ptr [ebp-10]
 004F94BD    call        Point
 004F94C2    mov         eax,dword ptr [ebp-64]
 004F94C5    mov         dword ptr [ebp-2C],eax
 004F94C8    mov         eax,dword ptr [ebp-60]
 004F94CB    mov         dword ptr [ebp-28],eax
 004F94CE    lea         ecx,[ebp-6C]
 004F94D1    mov         edx,dword ptr [ebp-8]
 004F94D4    add         edx,dword ptr [ebp-10]
 004F94D7    dec         edx
 004F94D8    mov         eax,dword ptr [ebp-0C]
 004F94DB    add         eax,dword ptr [ebp-10]
 004F94DE    call        Point
 004F94E3    mov         eax,dword ptr [ebp-6C]
 004F94E6    mov         dword ptr [ebp-24],eax
 004F94E9    mov         eax,dword ptr [ebp-68]
 004F94EC    mov         dword ptr [ebp-20],eax
 004F94EF    lea         ecx,[ebp-74]
 004F94F2    mov         edx,dword ptr [ebp-8]
 004F94F5    sub         edx,2
 004F94F8    mov         eax,dword ptr [ebp-0C]
 004F94FB    dec         eax
 004F94FC    call        Point
 004F9501    mov         eax,dword ptr [ebp-74]
 004F9504    mov         dword ptr [ebp-1C],eax
 004F9507    mov         eax,dword ptr [ebp-70]
 004F950A    mov         dword ptr [ebp-18],eax
 004F950D    lea         edx,[ebp-44]
 004F9510    mov         ecx,5
 004F9515    mov         eax,dword ptr [ebp-4]
 004F9518    call        00487F38
 004F951D    cmp         byte ptr [ebp+8],0
>004F9521    je          004F965D
 004F9527    mov         eax,dword ptr [ebp-4]
 004F952A    mov         eax,dword ptr [eax+10]
 004F952D    mov         edx,0FFFFFF
 004F9532    call        TPen.SetColor
 004F9537    lea         ecx,[ebp-4C]
 004F953A    mov         edx,dword ptr [ebp-8]
 004F953D    dec         edx
 004F953E    mov         eax,dword ptr [ebp-0C]
 004F9541    dec         eax
 004F9542    call        Point
 004F9547    mov         eax,dword ptr [ebp-4C]
 004F954A    mov         dword ptr [ebp-0AC],eax
 004F9550    mov         eax,dword ptr [ebp-48]
 004F9553    mov         dword ptr [ebp-0A8],eax
 004F9559    lea         ecx,[ebp-54]
 004F955C    mov         eax,dword ptr [ebp-0C]
 004F955F    dec         eax
 004F9560    mov         edx,dword ptr [ebp-8]
 004F9563    call        Point
 004F9568    mov         eax,dword ptr [ebp-54]
 004F956B    mov         dword ptr [ebp-0A4],eax
 004F9571    mov         eax,dword ptr [ebp-50]
 004F9574    mov         dword ptr [ebp-0A0],eax
 004F957A    lea         ecx,[ebp-5C]
 004F957D    mov         edx,dword ptr [ebp-8]
 004F9580    inc         edx
 004F9581    mov         eax,dword ptr [ebp-0C]
 004F9584    call        Point
 004F9589    mov         eax,dword ptr [ebp-5C]
 004F958C    mov         dword ptr [ebp-9C],eax
 004F9592    mov         eax,dword ptr [ebp-58]
 004F9595    mov         dword ptr [ebp-98],eax
 004F959B    lea         ecx,[ebp-64]
 004F959E    mov         edx,dword ptr [ebp-8]
 004F95A1    add         edx,dword ptr [ebp-10]
 004F95A4    inc         edx
 004F95A5    mov         eax,dword ptr [ebp-0C]
 004F95A8    add         eax,dword ptr [ebp-10]
 004F95AB    call        Point
 004F95B0    mov         eax,dword ptr [ebp-64]
 004F95B3    mov         dword ptr [ebp-94],eax
 004F95B9    mov         eax,dword ptr [ebp-60]
 004F95BC    mov         dword ptr [ebp-90],eax
 004F95C2    lea         ecx,[ebp-6C]
 004F95C5    mov         edx,dword ptr [ebp-8]
 004F95C8    sub         edx,dword ptr [ebp-10]
 004F95CB    mov         eax,dword ptr [ebp-10]
 004F95CE    add         eax,eax
 004F95D0    add         eax,dword ptr [ebp-0C]
 004F95D3    add         eax,dword ptr [ebp-10]
 004F95D6    inc         eax
 004F95D7    call        Point
 004F95DC    mov         eax,dword ptr [ebp-6C]
 004F95DF    mov         dword ptr [ebp-8C],eax
 004F95E5    mov         eax,dword ptr [ebp-68]
 004F95E8    mov         dword ptr [ebp-88],eax
 004F95EE    lea         ecx,[ebp-74]
 004F95F1    mov         edx,dword ptr [ebp-8]
 004F95F4    sub         edx,dword ptr [ebp-10]
 004F95F7    dec         edx
 004F95F8    mov         eax,dword ptr [ebp-10]
 004F95FB    add         eax,eax
 004F95FD    add         eax,dword ptr [ebp-0C]
 004F9600    add         eax,dword ptr [ebp-10]
 004F9603    inc         eax
 004F9604    call        Point
 004F9609    mov         eax,dword ptr [ebp-74]
 004F960C    mov         dword ptr [ebp-84],eax
 004F9612    mov         eax,dword ptr [ebp-70]
 004F9615    mov         dword ptr [ebp-80],eax
 004F9618    lea         ecx,[ebp-0B4]
 004F961E    mov         edx,dword ptr [ebp-8]
 004F9621    sub         edx,dword ptr [ebp-10]
 004F9624    sub         edx,2
 004F9627    mov         eax,dword ptr [ebp-10]
 004F962A    add         eax,eax
 004F962C    add         eax,dword ptr [ebp-0C]
 004F962F    add         eax,dword ptr [ebp-10]
 004F9632    inc         eax
 004F9633    call        Point
 004F9638    mov         eax,dword ptr [ebp-0B4]
 004F963E    mov         dword ptr [ebp-7C],eax
 004F9641    mov         eax,dword ptr [ebp-0B0]
 004F9647    mov         dword ptr [ebp-78],eax
 004F964A    lea         edx,[ebp-0AC]
 004F9650    mov         ecx,6
 004F9655    mov         eax,dword ptr [ebp-4]
 004F9658    call        00487F38
 004F965D    xor         eax,eax
 004F965F    pop         edx
 004F9660    pop         ecx
 004F9661    pop         ecx
 004F9662    mov         dword ptr fs:[eax],edx
 004F9665    push        4F967A
 004F966A    mov         eax,dword ptr [ebp-14]
 004F966D    call        TObject.Free
 004F9672    ret
>004F9673    jmp         @HandleFinally
>004F9678    jmp         004F966A
 004F967A    pop         edi
 004F967B    pop         esi
 004F967C    mov         esp,ebp
 004F967E    pop         ebp
 004F967F    ret         4
end;*}

Initialization
//004F96B4
{*
 004F96B4    push        ebp
 004F96B5    mov         ebp,esp
 004F96B7    sub         dword ptr ds:[55E000],1
>004F96BE    jae         004F9735
 004F96C0    call        @GetTls
 004F96C5    xor         edx,edx
 004F96C7    mov         dword ptr [eax+228],edx
 004F96CD    call        @GetTls
 004F96D2    xor         edx,edx
 004F96D4    mov         dword ptr [eax+22C],edx
 004F96DA    call        @GetTls
 004F96DF    xor         edx,edx
 004F96E1    mov         dword ptr [eax+230],edx
 004F96E7    call        @GetTls
 004F96EC    xor         edx,edx
 004F96EE    mov         dword ptr [eax+234],edx
 004F96F4    call        @GetTls
 004F96F9    xor         edx,edx
 004F96FB    mov         dword ptr [eax+238],edx
 004F9701    call        @GetTls
 004F9706    xor         edx,edx
 004F9708    mov         dword ptr [eax+23C],edx
 004F970E    call        @GetTls
 004F9713    xor         edx,edx
 004F9715    mov         dword ptr [eax+240],edx
 004F971B    call        @GetTls
 004F9720    xor         edx,edx
 004F9722    mov         dword ptr [eax+244],edx
 004F9728    call        @GetTls
 004F972D    xor         edx,edx
 004F972F    mov         dword ptr [eax+248],edx
 004F9735    pop         ebp
 004F9736    ret
*}
Finalization
end.