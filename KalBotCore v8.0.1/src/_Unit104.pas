//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit104;

interface

uses
  SysUtils, Classes;

type
  TAutoWalk = class(TThread)
  public
    f40:dword;//f40
    f4C:byte;//f4C
    f4D:byte;//f4D
    f4E:byte;//f4E
    f4F:byte;//f4F
    f50:byte;//f50
    destructor Destroy; virtual;//0052A1FC
    procedure Execute; virtual;//v4//0052A230
    //constructor Create(?:?; ?:?);//0052A190
  end;
    //function sub_0052A160(?:TAutoWalk; ?:?; ?:?; ?:?):?;//0052A160
    destructor Destroy;//0052A1FC
    procedure Execute;//0052A230
    procedure sub_0052A29C(?:TAutoWalk);//0052A29C
    //procedure sub_0052A324(?:TAutoWalk; ?:?; ?:?);//0052A324

implementation

//0052A160
{*function sub_0052A160(?:TAutoWalk; ?:?; ?:?; ?:?):?;
begin
 0052A160    push        ebp
 0052A161    mov         ebp,esp
 0052A163    add         esp,0FFFFFFF0
 0052A166    mov         dword ptr [ebp-0C],ecx
 0052A169    mov         dword ptr [ebp-8],edx
 0052A16C    mov         dword ptr [ebp-4],eax
 0052A16F    mov         ecx,dword ptr [ebp+8]
 0052A172    mov         edx,dword ptr [ebp-0C]
 0052A175    mov         eax,dword ptr [ebp-4]
 0052A178    mov         eax,dword ptr [eax+48]
 0052A17B    call        00529970
 0052A180    sub         eax,dword ptr [ebp-8]
 0052A183    mov         dword ptr [ebp-10],eax
 0052A186    mov         eax,dword ptr [ebp-10]
 0052A189    mov         esp,ebp
 0052A18B    pop         ebp
 0052A18C    ret         4
end;*}

//0052A190
{*constructor TAutoWalk.Create(?:?; ?:?);
begin
 0052A190    push        ebp
 0052A191    mov         ebp,esp
 0052A193    add         esp,0FFFFFFF4
 0052A196    test        dl,dl
>0052A198    je          0052A1A2
 0052A19A    add         esp,0FFFFFFF0
 0052A19D    call        @ClassCreate
 0052A1A2    mov         dword ptr [ebp-0C],ecx
 0052A1A5    mov         byte ptr [ebp-5],dl
 0052A1A8    mov         dword ptr [ebp-4],eax
 0052A1AB    xor         ecx,ecx
 0052A1AD    xor         edx,edx
 0052A1AF    mov         eax,dword ptr [ebp-4]
 0052A1B2    call        00482974
 0052A1B7    mov         eax,dword ptr [ebp-4]
 0052A1BA    mov         byte ptr [eax+0F],0
 0052A1BE    mov         eax,dword ptr [ebp-0C]
 0052A1C1    mov         eax,dword ptr [eax]
 0052A1C3    mov         edx,dword ptr [ebp-4]
 0052A1C6    mov         dword ptr [edx+44],eax
 0052A1C9    mov         eax,dword ptr [ebp-4]
 0052A1CC    mov         edx,dword ptr [ebp+8]
 0052A1CF    mov         dword ptr [eax+48],edx
 0052A1D2    mov         eax,dword ptr [ebp-4]
 0052A1D5    mov         edx,dword ptr [ebp+0C]
 0052A1D8    mov         dword ptr [eax+40],edx
 0052A1DB    mov         eax,dword ptr [ebp-4]
 0052A1DE    cmp         byte ptr [ebp-5],0
>0052A1E2    je          0052A1F3
 0052A1E4    call        @AfterConstruction
 0052A1E9    pop         dword ptr fs:[0]
 0052A1F0    add         esp,0C
 0052A1F3    mov         eax,dword ptr [ebp-4]
 0052A1F6    mov         esp,ebp
 0052A1F8    pop         ebp
 0052A1F9    ret         8
end;*}

//0052A1FC
destructor TAutoWalk.Destroy;
begin
{*
 0052A1FC    push        ebp
 0052A1FD    mov         ebp,esp
 0052A1FF    add         esp,0FFFFFFF8
 0052A202    call        @BeforeDestruction
 0052A207    mov         byte ptr [ebp-5],dl
 0052A20A    mov         dword ptr [ebp-4],eax
 0052A20D    mov         dl,byte ptr [ebp-5]
 0052A210    and         dl,0FC
 0052A213    mov         eax,dword ptr [ebp-4]
 0052A216    call        TThread.Destroy
 0052A21B    cmp         byte ptr [ebp-5],0
>0052A21F    jle         0052A229
 0052A221    mov         eax,dword ptr [ebp-4]
 0052A224    call        @ClassDestroy
 0052A229    pop         ecx
 0052A22A    pop         ecx
 0052A22B    pop         ebp
 0052A22C    ret
*}
end;

//0052A230
procedure TAutoWalk.Execute;
begin
{*
 0052A230    push        ebp
 0052A231    mov         ebp,esp
 0052A233    add         esp,0FFFFFFF8
 0052A236    mov         dword ptr [ebp-4],eax
 0052A239    mov         eax,dword ptr [ebp-4]
 0052A23C    mov         byte ptr [eax+4C],1;TAutoWalk.?f4C:byte
>0052A240    jmp         0052A28C
>0052A242    jmp         0052A27C
 0052A244    mov         eax,dword ptr [ebp-4]
 0052A247    mov         eax,dword ptr [eax+40];TAutoWalk.?f40:dword
 0052A24A    call        0053491C
 0052A24F    mov         dword ptr [ebp-8],eax
 0052A252    cmp         dword ptr [ebp-8],0
>0052A256    je          0052A295
 0052A258    mov         eax,dword ptr [ebp-4]
 0052A25B    mov         eax,dword ptr [eax+40];TAutoWalk.?f40:dword
 0052A25E    mov         eax,dword ptr [eax+40]
 0052A261    lea         edx,[eax+0C]
 0052A264    mov         eax,dword ptr [ebp-8]
 0052A267    lea         ecx,[eax+0C]
 0052A26A    mov         eax,dword ptr [ebp-4]
 0052A26D    call        0052A324
 0052A272    push        113
 0052A277    call        kernel32.Sleep
 0052A27C    mov         eax,dword ptr [ebp-4]
 0052A27F    cmp         byte ptr [eax+4C],0;TAutoWalk.?f4C:byte
>0052A283    jne         0052A244
 0052A285    call        0046B56C
>0052A28A    jmp         0052A295
 0052A28C    mov         eax,dword ptr [ebp-4]
 0052A28F    cmp         byte ptr [eax+0D],0;TAutoWalk.FTerminated:Boolean
>0052A293    je          0052A27C
 0052A295    pop         ecx
 0052A296    pop         ecx
 0052A297    pop         ebp
 0052A298    ret
*}
end;

//0052A29C
procedure sub_0052A29C(?:TAutoWalk);
begin
{*
 0052A29C    push        ebp
 0052A29D    mov         ebp,esp
 0052A29F    add         esp,0FFFFFFF4
 0052A2A2    xor         edx,edx
 0052A2A4    mov         dword ptr [ebp-8],edx
 0052A2A7    mov         dword ptr [ebp-4],eax
 0052A2AA    xor         eax,eax
 0052A2AC    push        ebp
 0052A2AD    push        52A316
 0052A2B2    push        dword ptr fs:[eax]
 0052A2B5    mov         dword ptr fs:[eax],esp
 0052A2B8    mov         eax,dword ptr [ebp-4]
 0052A2BB    add         eax,4D
 0052A2BE    mov         dword ptr [ebp-0C],eax
 0052A2C1    mov         eax,dword ptr [ebp-0C]
 0052A2C4    mov         al,byte ptr [eax+3]
 0052A2C7    push        eax
 0052A2C8    lea         eax,[ebp-8]
 0052A2CB    push        eax
 0052A2CC    mov         eax,dword ptr [ebp-0C]
 0052A2CF    mov         cl,byte ptr [eax+2]
 0052A2D2    mov         eax,dword ptr [ebp-0C]
 0052A2D5    mov         dl,byte ptr [eax+1]
 0052A2D8    mov         eax,dword ptr [ebp-0C]
 0052A2DB    mov         al,byte ptr [eax]
 0052A2DD    call        00521568
 0052A2E2    mov         eax,dword ptr [ebp-8]
 0052A2E5    call        @LStrLen
 0052A2EA    mov         ecx,eax
 0052A2EC    mov         edx,dword ptr [ebp-8]
 0052A2EF    mov         eax,dword ptr [ebp-4]
 0052A2F2    mov         eax,dword ptr [eax+44]
 0052A2F5    call        0051FDFC
 0052A2FA    xor         eax,eax
 0052A2FC    pop         edx
 0052A2FD    pop         ecx
 0052A2FE    pop         ecx
 0052A2FF    mov         dword ptr fs:[eax],edx
 0052A302    push        52A31D
 0052A307    lea         eax,[ebp-8]
 0052A30A    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0052A310    call        @DynArrayClear
 0052A315    ret
>0052A316    jmp         @HandleFinally
>0052A31B    jmp         0052A307
 0052A31D    mov         esp,ebp
 0052A31F    pop         ebp
 0052A320    ret
*}
end;

//0052A324
{*procedure sub_0052A324(?:TAutoWalk; ?:?; ?:?);
begin
 0052A324    push        ebp
 0052A325    mov         ebp,esp
 0052A327    add         esp,0FFFFFFB4
 0052A32A    push        esi
 0052A32B    push        edi
 0052A32C    mov         esi,ecx
 0052A32E    lea         edi,[ebp-48]
 0052A331    movs        dword ptr [edi],dword ptr [esi]
 0052A332    movs        dword ptr [edi],dword ptr [esi]
 0052A333    movs        dword ptr [edi],dword ptr [esi]
 0052A334    movs        dword ptr [edi],dword ptr [esi]
 0052A335    mov         esi,edx
 0052A337    lea         edi,[ebp-38]
 0052A33A    movs        dword ptr [edi],dword ptr [esi]
 0052A33B    movs        dword ptr [edi],dword ptr [esi]
 0052A33C    movs        dword ptr [edi],dword ptr [esi]
 0052A33D    movs        dword ptr [edi],dword ptr [esi]
 0052A33E    mov         dword ptr [ebp-4],eax
 0052A341    lea         edx,[ebp-48]
 0052A344    lea         eax,[ebp-38]
 0052A347    call        0051F5FC
 0052A34C    fstp        tbyte ptr [ebp-10]
 0052A34F    wait
 0052A350    fld         tbyte ptr [ebp-10]
 0052A353    fcomp       dword ptr ds:[52A49C];11:Single
 0052A359    fnstsw      al
 0052A35B    sahf
>0052A35C    jbe         0052A3F3
 0052A362    fld         tbyte ptr [ebp-10]
 0052A365    fdivr       dword ptr ds:[52A49C];11:Single
 0052A36B    fstp        tbyte ptr [ebp-20]
 0052A36E    wait
 0052A36F    mov         eax,dword ptr [ebp-44]
 0052A372    sub         eax,dword ptr [ebp-34]
 0052A375    mov         dword ptr [ebp-4C],eax
 0052A378    fild        dword ptr [ebp-4C]
 0052A37B    fld         tbyte ptr [ebp-20]
 0052A37E    fmulp       st(1),st
 0052A380    call        @ROUND
 0052A385    mov         byte ptr [ebp-21],al
 0052A388    mov         eax,dword ptr [ebp-40]
 0052A38B    sub         eax,dword ptr [ebp-30]
 0052A38E    mov         dword ptr [ebp-4C],eax
 0052A391    fild        dword ptr [ebp-4C]
 0052A394    fld         tbyte ptr [ebp-20]
 0052A397    fmulp       st(1),st
 0052A399    call        @ROUND
 0052A39E    mov         byte ptr [ebp-22],al
 0052A3A1    movsx       eax,byte ptr [ebp-22]
 0052A3A5    add         eax,dword ptr [ebp-30]
 0052A3A8    push        eax
 0052A3A9    movsx       ecx,byte ptr [ebp-21]
 0052A3AD    add         ecx,dword ptr [ebp-34]
 0052A3B0    mov         edx,dword ptr [ebp-2C]
 0052A3B3    mov         eax,dword ptr [ebp-4]
 0052A3B6    call        0052A160
 0052A3BB    mov         dword ptr [ebp-28],eax
 0052A3BE    cmp         dword ptr [ebp-28],0FFFFFFBF
>0052A3C2    jl          0052A3CA
 0052A3C4    cmp         dword ptr [ebp-28],41
>0052A3C8    jle         0052A3CF
 0052A3CA    xor         eax,eax
 0052A3CC    mov         dword ptr [ebp-28],eax
 0052A3CF    mov         al,byte ptr [ebp-21]
 0052A3D2    mov         edx,dword ptr [ebp-4]
 0052A3D5    mov         byte ptr [edx+4D],al;TAutoWalk.?f4D:byte
 0052A3D8    mov         al,byte ptr [ebp-22]
 0052A3DB    mov         edx,dword ptr [ebp-4]
 0052A3DE    mov         byte ptr [edx+4E],al;TAutoWalk.?f4E:byte
 0052A3E1    mov         al,byte ptr [ebp-28]
 0052A3E4    mov         edx,dword ptr [ebp-4]
 0052A3E7    mov         byte ptr [edx+4F],al;TAutoWalk.?f4F:byte
 0052A3EA    mov         eax,dword ptr [ebp-4]
 0052A3ED    mov         byte ptr [eax+50],0;TAutoWalk.?f50:byte
>0052A3F1    jmp         0052A45C
 0052A3F3    mov         al,byte ptr [ebp-44]
 0052A3F6    sub         al,byte ptr [ebp-34]
 0052A3F9    mov         byte ptr [ebp-21],al
 0052A3FC    mov         al,byte ptr [ebp-40]
 0052A3FF    sub         al,byte ptr [ebp-30]
 0052A402    mov         byte ptr [ebp-22],al
 0052A405    movsx       eax,byte ptr [ebp-22]
 0052A409    add         eax,dword ptr [ebp-30]
 0052A40C    push        eax
 0052A40D    movsx       ecx,byte ptr [ebp-21]
 0052A411    add         ecx,dword ptr [ebp-34]
 0052A414    mov         edx,dword ptr [ebp-2C]
 0052A417    mov         eax,dword ptr [ebp-4]
 0052A41A    call        0052A160
 0052A41F    mov         dword ptr [ebp-28],eax
 0052A422    cmp         dword ptr [ebp-28],0FFFFFFBF
>0052A426    jl          0052A42E
 0052A428    cmp         dword ptr [ebp-28],41
>0052A42C    jle         0052A433
 0052A42E    xor         eax,eax
 0052A430    mov         dword ptr [ebp-28],eax
 0052A433    mov         al,byte ptr [ebp-21]
 0052A436    mov         edx,dword ptr [ebp-4]
 0052A439    mov         byte ptr [edx+4D],al;TAutoWalk.?f4D:byte
 0052A43C    mov         al,byte ptr [ebp-22]
 0052A43F    mov         edx,dword ptr [ebp-4]
 0052A442    mov         byte ptr [edx+4E],al;TAutoWalk.?f4E:byte
 0052A445    mov         al,byte ptr [ebp-28]
 0052A448    mov         edx,dword ptr [ebp-4]
 0052A44B    mov         byte ptr [edx+4F],al;TAutoWalk.?f4F:byte
 0052A44E    mov         eax,dword ptr [ebp-4]
 0052A451    mov         byte ptr [eax+50],1;TAutoWalk.?f50:byte
 0052A455    mov         eax,dword ptr [ebp-4]
 0052A458    mov         byte ptr [eax+4C],0;TAutoWalk.?f4C:byte
 0052A45C    movsx       eax,byte ptr [ebp-21]
 0052A460    mov         edx,dword ptr [ebp-4]
 0052A463    mov         edx,dword ptr [edx+40];TAutoWalk.?f40:dword
 0052A466    mov         edx,dword ptr [edx+40]
 0052A469    add         dword ptr [edx+10],eax
 0052A46C    movsx       eax,byte ptr [ebp-22]
 0052A470    mov         edx,dword ptr [ebp-4]
 0052A473    mov         edx,dword ptr [edx+40];TAutoWalk.?f40:dword
 0052A476    mov         edx,dword ptr [edx+40]
 0052A479    add         dword ptr [edx+14],eax
 0052A47C    mov         eax,dword ptr [ebp-4]
 0052A47F    mov         eax,dword ptr [eax+40];TAutoWalk.?f40:dword
 0052A482    mov         eax,dword ptr [eax+40]
 0052A485    mov         edx,dword ptr [ebp-28]
 0052A488    add         dword ptr [eax+18],edx
 0052A48B    mov         eax,dword ptr [ebp-4]
 0052A48E    call        0052A29C
 0052A493    pop         edi
 0052A494    pop         esi
 0052A495    mov         esp,ebp
 0052A497    pop         ebp
 0052A498    ret
end;*}

end.