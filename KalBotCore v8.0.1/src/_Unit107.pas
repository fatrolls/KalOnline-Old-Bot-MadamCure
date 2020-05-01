//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit107;

interface

uses
  SysUtils, Classes;

type
  TShopManager = class(TInterfacedObject)
  public
    f14:String;//f14
    //constructor Create(?:?);//00528E04
  end;
    //procedure sub_00528ED0(?:?; ?:?; ?:?; ?:?);//00528ED0
    //procedure sub_00528F08(?:?; ?:?; ?:?);//00528F08
    //procedure sub_00528F50(?:?; ?:?);//00528F50
    //procedure sub_00529354(?:TShopManager; ?:?);//00529354
    //procedure sub_00529374(?:?);//00529374

implementation

//00528E04
{*constructor TShopManager.Create(?:?);
begin
 00528E04    push        ebp
 00528E05    mov         ebp,esp
 00528E07    add         esp,0FFFFFFF4
 00528E0A    test        dl,dl
>00528E0C    je          00528E16
 00528E0E    add         esp,0FFFFFFF0
 00528E11    call        @ClassCreate
 00528E16    mov         dword ptr [ebp-0C],ecx
 00528E19    mov         byte ptr [ebp-5],dl
 00528E1C    mov         dword ptr [ebp-4],eax
 00528E1F    xor         edx,edx
 00528E21    mov         eax,dword ptr [ebp-4]
 00528E24    call        TObject.Create
 00528E29    mov         eax,dword ptr [ebp-0C]
 00528E2C    mov         eax,dword ptr [eax]
 00528E2E    mov         edx,dword ptr [ebp-4]
 00528E31    mov         dword ptr [edx+0C],eax
 00528E34    mov         eax,dword ptr [ebp-4]
 00528E37    mov         edx,dword ptr [ebp+8]
 00528E3A    mov         dword ptr [eax+10],edx
 00528E3D    push        0
 00528E3F    mov         ecx,54E71C
 00528E44    mov         edx,dword ptr [ebp-4]
 00528E47    test        edx,edx
>00528E49    je          00528E4E
 00528E4B    sub         edx,0FFFFFFE8
 00528E4E    mov         eax,dword ptr [ebp-0C]
 00528E51    mov         eax,dword ptr [eax]
 00528E53    call        005204E4
 00528E58    push        1
 00528E5A    mov         ecx,54E720
 00528E5F    mov         edx,dword ptr [ebp-4]
 00528E62    test        edx,edx
>00528E64    je          00528E69
 00528E66    sub         edx,0FFFFFFE8
 00528E69    mov         eax,dword ptr [ebp-0C]
 00528E6C    mov         eax,dword ptr [eax]
 00528E6E    call        005203DC
 00528E73    mov         eax,dword ptr [ebp-4]
 00528E76    cmp         byte ptr [ebp-5],0
>00528E7A    je          00528E8B
 00528E7C    call        @AfterConstruction
 00528E81    pop         dword ptr fs:[0]
 00528E88    add         esp,0C
 00528E8B    mov         eax,dword ptr [ebp-4]
 00528E8E    mov         esp,ebp
 00528E90    pop         ebp
 00528E91    ret         4
end;*}

//00528ED0
{*procedure sub_00528ED0(?:?; ?:?; ?:?; ?:?);
begin
 00528ED0    push        ebp
 00528ED1    mov         ebp,esp
 00528ED3    add         esp,0FFFFFFF4
 00528ED6    mov         dword ptr [ebp-0C],ecx
 00528ED9    mov         byte ptr [ebp-5],dl
 00528EDC    mov         dword ptr [ebp-4],eax
 00528EDF    mov         al,byte ptr [ebp+0C]
 00528EE2    sub         al,1
>00528EE4    jae         00528EFF
 00528EE6    xor         eax,eax
 00528EE8    mov         al,byte ptr [ebp-5]
 00528EEB    sub         ax,85
>00528EEF    jne         00528EFF
 00528EF1    mov         eax,dword ptr [ebp-0C]
 00528EF4    mov         edx,dword ptr [eax+4]
 00528EF7    mov         eax,dword ptr [ebp-4]
 00528EFA    call        00528F50
 00528EFF    mov         esp,ebp
 00528F01    pop         ebp
 00528F02    ret         8
end;*}

//00528F08
{*procedure sub_00528F08(?:?; ?:?; ?:?);
begin
 00528F08    push        ebp
 00528F09    mov         ebp,esp
 00528F0B    add         esp,0FFFFFFF4
 00528F0E    mov         dword ptr [ebp-0C],ecx
 00528F11    mov         dword ptr [ebp-8],edx
 00528F14    mov         dword ptr [ebp-4],eax
 00528F17    mov         eax,dword ptr [ebp-0C]
 00528F1A    call        @LStrAddRef
 00528F1F    xor         eax,eax
 00528F21    push        ebp
 00528F22    push        528F43
 00528F27    push        dword ptr fs:[eax]
 00528F2A    mov         dword ptr fs:[eax],esp
 00528F2D    xor         eax,eax
 00528F2F    pop         edx
 00528F30    pop         ecx
 00528F31    pop         ecx
 00528F32    mov         dword ptr fs:[eax],edx
 00528F35    push        528F4A
 00528F3A    lea         eax,[ebp-0C]
 00528F3D    call        @LStrClr
 00528F42    ret
>00528F43    jmp         @HandleFinally
>00528F48    jmp         00528F3A
 00528F4A    mov         esp,ebp
 00528F4C    pop         ebp
 00528F4D    ret
end;*}

//00528F50
{*procedure sub_00528F50(?:?; ?:?);
begin
 00528F50    push        ebp
 00528F51    mov         ebp,esp
 00528F53    mov         ecx,0E
 00528F58    push        0
 00528F5A    push        0
 00528F5C    dec         ecx
>00528F5D    jne         00528F58
 00528F5F    mov         dword ptr [ebp-8],edx
 00528F62    mov         dword ptr [ebp-4],eax
 00528F65    xor         eax,eax
 00528F67    push        ebp
 00528F68    push        52923A
 00528F6D    push        dword ptr fs:[eax]
 00528F70    mov         dword ptr fs:[eax],esp
 00528F73    lea         eax,[ebp-8]
 00528F76    mov         edx,3
 00528F7B    call        0051F5E4
 00528F80    lea         eax,[ebp-8]
 00528F83    call        0051F338
 00528F88    mov         byte ptr [ebp-9],al
 00528F8B    lea         eax,[ebp-8]
 00528F8E    call        0051F3CC
 00528F93    mov         dword ptr [ebp-10],eax
 00528F96    cmp         byte ptr [ebp-9],0
>00528F9A    jne         00529200
 00528FA0    lea         eax,[ebp-8]
 00528FA3    call        0051F3CC
 00528FA8    lea         eax,[ebp-8]
 00528FAB    call        0051F338
 00528FB0    mov         byte ptr [ebp-0A],al
 00528FB3    xor         eax,eax
 00528FB5    mov         al,byte ptr [ebp-0A]
 00528FB8    dec         eax
 00528FB9    test        eax,eax
>00528FBB    jl          0052921F
 00528FC1    inc         eax
 00528FC2    mov         dword ptr [ebp-20],eax
 00528FC5    mov         dword ptr [ebp-14],0
 00528FCC    mov         eax,3C
 00528FD1    call        @GetMem
 00528FD6    mov         dword ptr [ebp-18],eax
 00528FD9    lea         edx,[ebp-8]
 00528FDC    mov         eax,dword ptr [ebp-18]
 00528FDF    call        00522380
 00528FE4    lea         eax,[ebp-8]
 00528FE7    call        0051F3CC
 00528FEC    mov         edx,dword ptr [ebp-18]
 00528FEF    mov         dword ptr [edx+38],eax
 00528FF2    mov         eax,dword ptr [ebp-18]
 00528FF5    mov         dword ptr [ebp-1C],eax
 00528FF8    mov         eax,dword ptr [ebp-4]
 00528FFB    push        dword ptr [eax+14]
 00528FFE    lea         ecx,[ebp-24]
 00529001    mov         eax,dword ptr [ebp-1C]
 00529004    movzx       edx,word ptr [eax]
 00529007    mov         eax,dword ptr [ebp-4]
 0052900A    mov         eax,dword ptr [eax+10]
 0052900D    mov         eax,dword ptr [eax+10]
 00529010    call        00524A60
 00529015    push        dword ptr [ebp-24]
 00529018    push        529250;#13
 0052901D    push        52925C;' Prefix: '
 00529022    lea         ecx,[ebp-28]
 00529025    mov         eax,dword ptr [ebp-1C]
 00529028    xor         edx,edx
 0052902A    mov         dl,byte ptr [eax+8]
 0052902D    mov         eax,dword ptr [ebp-4]
 00529030    mov         eax,dword ptr [eax+10]
 00529033    mov         eax,dword ptr [eax+0C]
 00529036    call        005241B0
 0052903B    push        dword ptr [ebp-28]
 0052903E    push        529270;' Ilosc: '
 00529043    mov         eax,dword ptr [ebp-1C]
 00529046    mov         eax,dword ptr [eax+10]
 00529049    xor         edx,edx
 0052904B    push        edx
 0052904C    push        eax
 0052904D    lea         eax,[ebp-2C]
 00529050    call        IntToStr
 00529055    push        dword ptr [ebp-2C]
 00529058    push        529284;' Endurance: '
 0052905D    lea         edx,[ebp-30]
 00529060    mov         eax,dword ptr [ebp-1C]
 00529063    movzx       eax,byte ptr [eax+15]
 00529067    call        IntToStr
 0052906C    push        dword ptr [ebp-30]
 0052906F    push        52929C;'/'
 00529074    lea         edx,[ebp-34]
 00529077    mov         eax,dword ptr [ebp-1C]
 0052907A    movzx       eax,byte ptr [eax+14]
 0052907E    call        IntToStr
 00529083    push        dword ptr [ebp-34]
 00529086    push        5292A8;' PhiAtta: '
 0052908B    lea         edx,[ebp-38]
 0052908E    mov         eax,dword ptr [ebp-1C]
 00529091    movzx       eax,byte ptr [eax+17]
 00529095    call        IntToStr
 0052909A    push        dword ptr [ebp-38]
 0052909D    push        5292BC;' MagAtta: '
 005290A2    lea         edx,[ebp-3C]
 005290A5    mov         eax,dword ptr [ebp-1C]
 005290A8    movzx       eax,byte ptr [eax+18]
 005290AC    call        IntToStr
 005290B1    push        dword ptr [ebp-3C]
 005290B4    push        5292D0;' ToD/ToA: '
 005290B9    lea         edx,[ebp-40]
 005290BC    mov         eax,dword ptr [ebp-1C]
 005290BF    movzx       eax,byte ptr [eax+19]
 005290C3    call        IntToStr
 005290C8    push        dword ptr [ebp-40]
 005290CB    push        52929C;'/'
 005290D0    lea         edx,[ebp-44]
 005290D3    mov         eax,dword ptr [ebp-1C]
 005290D6    movzx       eax,byte ptr [eax+1A]
 005290DA    call        IntToStr
 005290DF    push        dword ptr [ebp-44]
 005290E2    push        5292E4;' Fusion: '
 005290E7    lea         edx,[ebp-48]
 005290EA    mov         eax,dword ptr [ebp-1C]
 005290ED    movzx       eax,byte ptr [eax+24]
 005290F1    call        IntToStr
 005290F6    push        dword ptr [ebp-48]
 005290F9    push        5292F8;' mele/mag attack: '
 005290FE    lea         edx,[ebp-4C]
 00529101    mov         eax,dword ptr [ebp-1C]
 00529104    movzx       eax,word ptr [eax+26]
 00529108    call        IntToStr
 0052910D    push        dword ptr [ebp-4C]
 00529110    push        52929C;'/'
 00529115    lea         edx,[ebp-50]
 00529118    mov         eax,dword ptr [ebp-1C]
 0052911B    movzx       eax,word ptr [eax+28]
 0052911F    call        IntToStr
 00529124    push        dword ptr [ebp-50]
 00529127    push        529314;' Stats: def/str/hlt/wis/int/agi '
 0052912C    lea         edx,[ebp-54]
 0052912F    mov         eax,dword ptr [ebp-1C]
 00529132    movzx       eax,byte ptr [eax+2A]
 00529136    call        IntToStr
 0052913B    push        dword ptr [ebp-54]
 0052913E    push        529340;'|'
 00529143    lea         edx,[ebp-58]
 00529146    mov         eax,dword ptr [ebp-1C]
 00529149    movzx       eax,byte ptr [eax+32]
 0052914D    call        IntToStr
 00529152    push        dword ptr [ebp-58]
 00529155    push        52929C;'/'
 0052915A    lea         edx,[ebp-5C]
 0052915D    mov         eax,dword ptr [ebp-1C]
 00529160    movzx       eax,byte ptr [eax+33]
 00529164    call        IntToStr
 00529169    push        dword ptr [ebp-5C]
 0052916C    push        52929C;'/'
 00529171    lea         edx,[ebp-60]
 00529174    mov         eax,dword ptr [ebp-1C]
 00529177    movzx       eax,byte ptr [eax+35]
 0052917B    call        IntToStr
 00529180    push        dword ptr [ebp-60]
 00529183    push        52929C;'/'
 00529188    lea         edx,[ebp-64]
 0052918B    mov         eax,dword ptr [ebp-1C]
 0052918E    movzx       eax,byte ptr [eax+34]
 00529192    call        IntToStr
 00529197    push        dword ptr [ebp-64]
 0052919A    push        52929C;'/'
 0052919F    lea         edx,[ebp-68]
 005291A2    mov         eax,dword ptr [ebp-1C]
 005291A5    movzx       eax,byte ptr [eax+36]
 005291A9    call        IntToStr
 005291AE    push        dword ptr [ebp-68]
 005291B1    push        529250;#13
 005291B6    push        52934C;' >> $'
 005291BB    mov         eax,dword ptr [ebp-18]
 005291BE    mov         eax,dword ptr [eax+38]
 005291C1    xor         edx,edx
 005291C3    push        edx
 005291C4    push        eax
 005291C5    lea         eax,[ebp-6C]
 005291C8    call        IntToStr
 005291CD    push        dword ptr [ebp-6C]
 005291D0    push        529250;#13
 005291D5    mov         eax,dword ptr [ebp-4]
 005291D8    add         eax,14
 005291DB    mov         edx,29
 005291E0    call        @LStrCatN
 005291E5    mov         edx,3C
 005291EA    mov         eax,dword ptr [ebp-18]
 005291ED    call        @FreeMem
 005291F2    inc         dword ptr [ebp-14]
 005291F5    dec         dword ptr [ebp-20]
>005291F8    jne         00528FCC
>005291FE    jmp         0052921F
 00529200    cmp         byte ptr [ebp-9],1
>00529204    jne         0052921F
 00529206    lea         edx,[ebp-70]
 00529209    lea         eax,[ebp-8]
 0052920C    call        0051F434
 00529211    mov         ecx,dword ptr [ebp-70]
 00529214    mov         edx,dword ptr [ebp-10]
 00529217    mov         eax,dword ptr [ebp-4]
 0052921A    call        00528F08
 0052921F    xor         eax,eax
 00529221    pop         edx
 00529222    pop         ecx
 00529223    pop         ecx
 00529224    mov         dword ptr fs:[eax],edx
 00529227    push        529241
 0052922C    lea         eax,[ebp-70]
 0052922F    mov         edx,14
 00529234    call        @LStrArrayClr
 00529239    ret
>0052923A    jmp         @HandleFinally
>0052923F    jmp         0052922C
 00529241    mov         esp,ebp
 00529243    pop         ebp
 00529244    ret
end;*}

//00529354
{*procedure sub_00529354(?:TShopManager; ?:?);
begin
 00529354    push        ebp
 00529355    mov         ebp,esp
 00529357    add         esp,0FFFFFFF8
 0052935A    mov         dword ptr [ebp-8],edx
 0052935D    mov         dword ptr [ebp-4],eax
 00529360    mov         eax,dword ptr [ebp-8]
 00529363    mov         edx,dword ptr [ebp-4]
 00529366    mov         edx,dword ptr [edx+14]
 00529369    call        @LStrAsg
 0052936E    pop         ecx
 0052936F    pop         ecx
 00529370    pop         ebp
 00529371    ret
end;*}

//00529374
{*procedure sub_00529374(?:?);
begin
 00529374    push        ebp
 00529375    mov         ebp,esp
 00529377    push        ecx
 00529378    mov         dword ptr [ebp-4],eax
 0052937B    pop         ecx
 0052937C    pop         ebp
 0052937D    ret
end;*}

end.