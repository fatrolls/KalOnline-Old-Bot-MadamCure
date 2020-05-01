//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit6;

interface

uses
  SysUtils, Classes;

    //procedure sub_00409270(?:?; ?:?; ?:?; ?:?);//00409270
    //procedure sub_004092D8(?:?; ?:?; ?:?);//004092D8
    //procedure sub_00409440(?:?; ?:?);//00409440
    //function sub_004096F0(?:?; ?:?; ?:?; ?:?):?;//004096F0
    //function sub_00409F4C(?:?; ?:?; ?:?; ?:?):?;//00409F4C
    //procedure sub_00409FEC(?:?; ?:?; ?:?; ?:?);//00409FEC
    //procedure sub_0040A0C0(?:?; ?:?; ?:?; ?:?);//0040A0C0
    //procedure sub_0040A250(?:?; ?:?);//0040A250
    //procedure sub_0040A30C(?:?; ?:?);//0040A30C
    //procedure sub_0040A3B8(?:?; ?:?; ?:?);//0040A3B8
    //procedure sub_0040A4A8(?:?; ?:?; ?:?);//0040A4A8
    //procedure sub_0040A58C(?:?; ?:?);//0040A58C
    //procedure sub_0040A63C(?:?; ?:?);//0040A63C
    //procedure sub_0040A6D0(?:?; ?:?; ?:?);//0040A6D0
    //procedure sub_0040A778(?:?; ?:?; ?:?; ?:?);//0040A778
    //procedure sub_0040A7C0(?:?; ?:?; ?:?; ?:?);//0040A7C0
    //procedure sub_0040A868(?:?; ?:?; ?:?; ?:?);//0040A868
    //procedure sub_0040A8F8(?:?; ?:?; ?:?; ?:?);//0040A8F8
    //procedure sub_0040A9A0(?:?; ?:?; ?:?; ?:?; ?:?);//0040A9A0
    //procedure sub_0040AA44(?:?; ?:?; ?:?; ?:?);//0040AA44
    //procedure sub_0040AA68(?:Longint; ?:?; ?:?; ?:?);//0040AA68
    //procedure sub_0040AA8C(?:?; ?:?; ?:?; ?:?);//0040AA8C
    //procedure sub_0040AAD4(?:Cardinal; ?:?; ?:?; ?:?);//0040AAD4
    //procedure sub_0040AAF8(?:?; ?:?; ?:?; ?:?; ?:?);//0040AAF8
    //procedure sub_0040AB1C(?:Integer; ?:?; ?:?; ?:?);//0040AB1C
    //procedure sub_0040AB64(?:?; ?:?; ?:?; ?:?);//0040AB64
    //procedure sub_0040AC10(?:Cardinal; ?:?; ?:?; ?:?);//0040AC10
    //procedure sub_0040AC5C(?:?; ?:?; ?:?; ?:?; ?:?);//0040AC5C
    //procedure sub_0040ACA0(?:DWORD; ?:?; ?:?; ?:?);//0040ACA0
    //function sub_0040B330:?;//0040B330
    //procedure sub_0040B5F8(?:?; ?:?; ?:?);//0040B5F8
    //procedure sub_0040B8F0(?:Integer; ?:?);//0040B8F0
    //procedure sub_0040BB1C(?:?; ?:?);//0040BB1C
    //function sub_0040BB94(?:PWideChar; ?:?; ?:?; ?:?):?;//0040BB94
    procedure sub_0040BC40(?:AnsiString; ?:WideString);//0040BC40
    //function sub_0040BDA8(?:PChar; ?:?; ?:?; ?:?):?;//0040BDA8
    procedure sub_0040BE3C(?:WideString; ?:AnsiString);//0040BE3C
    //function sub_0040BFC0(?:?; ?:?):?;//0040BFC0
    //procedure sub_0040C050(?:WideString; ?:?);//0040C050
    //procedure sub_0040C090(?:WideString; ?:?);//0040C090
    //procedure sub_0040C0D8(?:?; ?:?);//0040C0D8
    //procedure sub_0040C1C8(?:?; ?:?);//0040C1C8

implementation

//00409270
{*procedure sub_00409270(?:?; ?:?; ?:?; ?:?);
begin
 00409270    push        ebp
 00409271    mov         ebp,esp
 00409273    push        ecx
 00409274    push        ebx
 00409275    push        esi
 00409276    push        edi
 00409277    mov         dword ptr [ebp-4],ecx
 0040927A    mov         edi,edx
 0040927C    mov         esi,eax
 0040927E    mov         ebx,dword ptr [ebp+8]
 00409281    mov         eax,ebx
 00409283    mov         edx,esi
 00409285    call        @WStrAsg
 0040928A    mov         eax,ebx
 0040928C    mov         ecx,dword ptr [ebp-4]
 0040928F    mov         edx,edi
 00409291    call        @WStrDelete
 00409296    pop         edi
 00409297    pop         esi
 00409298    pop         ebx
 00409299    pop         ecx
 0040929A    pop         ebp
 0040929B    ret         4
end;*}

//004092D8
{*procedure sub_004092D8(?:?; ?:?; ?:?);
begin
 004092D8    push        ebx
 004092D9    push        esi
 004092DA    push        edi
 004092DB    mov         edi,ecx
 004092DD    mov         esi,edx
 004092DF    mov         ebx,eax
 004092E1    push        edi
 004092E2    mov         eax,ebx
 004092E4    call        @WStrLen
 004092E9    mov         edx,eax
 004092EB    sub         edx,esi
 004092ED    inc         edx
 004092EE    mov         ecx,7FFFFFFF
 004092F3    mov         eax,ebx
 004092F5    call        @WStrCopy
 004092FA    pop         edi
 004092FB    pop         esi
 004092FC    pop         ebx
 004092FD    ret
end;*}

//00409440
{*procedure sub_00409440(?:?; ?:?);
begin
 00409440    push        ebx
 00409441    mov         ebx,edx
 00409443    test        al,al
>00409445    je          00409455
 00409447    mov         eax,ebx
 00409449    mov         edx,409468;'+'
 0040944E    call        @WStrAsg
 00409453    pop         ebx
 00409454    ret
 00409455    mov         eax,ebx
 00409457    mov         edx,409470;'-'
 0040945C    call        @WStrAsg
 00409461    pop         ebx
 00409462    ret
end;*}

//004096F0
{*function sub_004096F0(?:?; ?:?; ?:?; ?:?):?;
begin
 004096F0    push        ebp
 004096F1    mov         ebp,esp
 004096F3    push        ecx
 004096F4    push        ebx
 004096F5    push        esi
 004096F6    push        edi
 004096F7    mov         ebx,ecx
 004096F9    mov         dword ptr [ebp-4],edx
 004096FC    mov         edi,eax
 004096FE    mov         esi,dword ptr [ebp+8]
 00409701    test        ebx,ebx
>00409703    jbe         0040973B
 00409705    test        esi,esi
>00409707    jbe         0040973B
 00409709    mov         eax,dword ptr [ebp-4]
 0040970C    call        @WStrLen
 00409711    push        eax
 00409712    push        1
 00409714    dec         ebx
 00409715    push        ebx
 00409716    dec         esi
 00409717    push        esi
 00409718    mov         eax,edi
 0040971A    call        @WStrLen
 0040971F    push        eax
 00409720    mov         eax,dword ptr [ebp-4]
 00409723    call        @WStrToPWChar
 00409728    push        eax
 00409729    mov         eax,edi
 0040972B    call        @WStrToPWChar
 00409730    pop         edx
 00409731    pop         ecx
 00409732    call        dword ptr ds:[53D150]
 00409738    inc         eax
>00409739    jmp         0040973D
 0040973B    xor         eax,eax
 0040973D    pop         edi
 0040973E    pop         esi
 0040973F    pop         ebx
 00409740    pop         ecx
 00409741    pop         ebp
 00409742    ret         4
end;*}

//00409F4C
{*function sub_00409F4C(?:?; ?:?; ?:?; ?:?):?;
begin
 00409F4C    push        ebp
 00409F4D    mov         ebp,esp
 00409F4F    add         esp,0FFFFFFF8
 00409F52    push        ebx
 00409F53    push        esi
 00409F54    push        edi
 00409F55    mov         ebx,ecx
 00409F57    mov         edi,edx
 00409F59    mov         dword ptr [ebp-4],eax
 00409F5C    mov         esi,dword ptr [ebp+8]
 00409F5F    xor         eax,eax
 00409F61    mov         dword ptr [ebp-8],eax
 00409F64    mov         eax,edi
 00409F66    xor         edx,edx
 00409F68    call        @WStrCmp
>00409F6D    je          00409FE0
 00409F6F    mov         eax,edi
 00409F71    call        @WStrLen
 00409F76    cmp         esi,ebx
>00409F78    jae         00409FAE
 00409F7A    cmp         eax,esi
>00409F7C    jb          00409FE0
 00409F7E    cmp         eax,ebx
>00409F80    jae         00409F84
 00409F82    mov         ebx,eax
 00409F84    mov         eax,ebx
 00409F86    sub         esi,eax
>00409F88    ja          00409FE0
 00409F8A    dec         esi
 00409F8B    mov         dx,word ptr [edi+eax*2-2]
 00409F90    test        dh,0FF
>00409F93    jne         00409FA3
 00409F95    mov         ecx,dword ptr [ebp-4]
 00409F98    and         edx,0FF
 00409F9E    bt          dword ptr [ecx],edx
>00409FA1    jb          00409FA8
 00409FA3    mov         dword ptr [ebp-8],eax
>00409FA6    jmp         00409FE0
 00409FA8    dec         eax
 00409FA9    inc         esi
>00409FAA    jne         00409F8B
>00409FAC    jmp         00409FE0
 00409FAE    cmp         eax,ebx
>00409FB0    jb          00409FE0
 00409FB2    cmp         eax,esi
>00409FB4    jae         00409FB8
 00409FB6    mov         esi,eax
 00409FB8    mov         eax,ebx
 00409FBA    sub         esi,eax
>00409FBC    jb          00409FE0
 00409FBE    inc         esi
 00409FBF    mov         dx,word ptr [edi+eax*2-2]
 00409FC4    test        dh,0FF
>00409FC7    jne         00409FD7
 00409FC9    mov         ecx,dword ptr [ebp-4]
 00409FCC    and         edx,0FF
 00409FD2    bt          dword ptr [ecx],edx
>00409FD5    jb          00409FDC
 00409FD7    mov         dword ptr [ebp-8],eax
>00409FDA    jmp         00409FE0
 00409FDC    inc         eax
 00409FDD    dec         esi
>00409FDE    jne         00409FBF
 00409FE0    mov         eax,dword ptr [ebp-8]
 00409FE3    pop         edi
 00409FE4    pop         esi
 00409FE5    pop         ebx
 00409FE6    pop         ecx
 00409FE7    pop         ecx
 00409FE8    pop         ebp
 00409FE9    ret         4
end;*}

//00409FEC
{*procedure sub_00409FEC(?:?; ?:?; ?:?; ?:?);
begin
 00409FEC    push        ebp
 00409FED    mov         ebp,esp
 00409FEF    push        0
 00409FF1    push        0
 00409FF3    push        ebx
 00409FF4    push        esi
 00409FF5    push        edi
 00409FF6    mov         ebx,ecx
 00409FF8    mov         edi,edx
 00409FFA    mov         esi,eax
 00409FFC    xor         eax,eax
 00409FFE    push        ebp
 00409FFF    push        40A0A2
 0040A004    push        dword ptr fs:[eax]
 0040A007    mov         dword ptr fs:[eax],esp
 0040A00A    test        edi,edi
>0040A00C    jle         0040A087
 0040A00E    lea         eax,[ebp-4]
 0040A011    mov         edx,edi
 0040A013    call        @LStrSetLength
 0040A018    xor         ecx,ecx
 0040A01A    mov         cl,byte ptr [ebp+8]
 0040A01D    mov         eax,dword ptr [ebp-4]
 0040A020    mov         edx,edi
 0040A022    call        @FillChar
 0040A027    test        bl,bl
>0040A029    je          0040A07D
 0040A02B    mov         al,byte ptr [ebp+8]
 0040A02E    add         al,0D0
 0040A030    sub         al,0A
>0040A032    jae         0040A06F
 0040A034    cmp         dword ptr [esi],0
>0040A037    je          0040A06F
 0040A039    mov         eax,dword ptr [esi]
 0040A03B    cmp         byte ptr [eax],2D
>0040A03E    jne         0040A06F
 0040A040    push        40A0BC;'-'
 0040A045    push        dword ptr [ebp-4]
 0040A048    lea         eax,[ebp-8]
 0040A04B    push        eax
 0040A04C    mov         eax,dword ptr [esi]
 0040A04E    mov         ecx,1
 0040A053    mov         edx,1
 0040A058    call        dword ptr ds:[53D0D4]
 0040A05E    push        dword ptr [ebp-8]
 0040A061    mov         eax,esi
 0040A063    mov         edx,3
 0040A068    call        @LStrCatN
>0040A06D    jmp         0040A087
 0040A06F    mov         ecx,dword ptr [esi]
 0040A071    mov         eax,esi
 0040A073    mov         edx,dword ptr [ebp-4]
 0040A076    call        @LStrCat3
>0040A07B    jmp         0040A087
 0040A07D    mov         eax,esi
 0040A07F    mov         edx,dword ptr [ebp-4]
 0040A082    call        @LStrCat
 0040A087    xor         eax,eax
 0040A089    pop         edx
 0040A08A    pop         ecx
 0040A08B    pop         ecx
 0040A08C    mov         dword ptr fs:[eax],edx
 0040A08F    push        40A0A9
 0040A094    lea         eax,[ebp-8]
 0040A097    mov         edx,2
 0040A09C    call        @LStrArrayClr
 0040A0A1    ret
>0040A0A2    jmp         @HandleFinally
>0040A0A7    jmp         0040A094
 0040A0A9    pop         edi
 0040A0AA    pop         esi
 0040A0AB    pop         ebx
 0040A0AC    pop         ecx
 0040A0AD    pop         ecx
 0040A0AE    pop         ebp
 0040A0AF    ret         4
end;*}

//0040A0C0
{*procedure sub_0040A0C0(?:?; ?:?; ?:?; ?:?);
begin
 0040A0C0    push        ebp
 0040A0C1    mov         ebp,esp
 0040A0C3    push        0
 0040A0C5    push        0
 0040A0C7    push        0
 0040A0C9    push        ebx
 0040A0CA    push        esi
 0040A0CB    push        edi
 0040A0CC    mov         ebx,ecx
 0040A0CE    mov         edi,edx
 0040A0D0    mov         dword ptr [ebp-4],eax
 0040A0D3    mov         esi,dword ptr [ebp+8]
 0040A0D6    xor         eax,eax
 0040A0D8    push        ebp
 0040A0D9    push        40A1A7
 0040A0DE    push        dword ptr fs:[eax]
 0040A0E1    mov         dword ptr fs:[eax],esp
 0040A0E4    test        edi,edi
>0040A0E6    jle         0040A18C
 0040A0EC    lea         eax,[ebp-8]
 0040A0EF    mov         edx,edi
 0040A0F1    call        @WStrSetLength
 0040A0F6    mov         eax,edi
 0040A0F8    test        eax,eax
>0040A0FA    jle         0040A10D
 0040A0FC    mov         edx,1
 0040A101    mov         ecx,dword ptr [ebp-8]
 0040A104    mov         word ptr [ecx+edx*2-2],si
 0040A109    inc         edx
 0040A10A    dec         eax
>0040A10B    jne         0040A101
 0040A10D    test        bl,bl
>0040A10F    je          0040A17E
 0040A111    test        si,0FF00
>0040A116    jne         0040A16C
 0040A118    mov         eax,esi
 0040A11A    add         al,0D0
 0040A11C    sub         al,0A
>0040A11E    jae         0040A16C
 0040A120    mov         eax,dword ptr [ebp-4]
 0040A123    mov         eax,dword ptr [eax]
 0040A125    xor         edx,edx
 0040A127    call        @WStrCmp
>0040A12C    je          0040A16C
 0040A12E    mov         eax,dword ptr [ebp-4]
 0040A131    mov         eax,dword ptr [eax]
 0040A133    cmp         word ptr [eax],2D
>0040A137    jne         0040A16C
 0040A139    push        40A1BC
 0040A13E    push        dword ptr [ebp-8]
 0040A141    lea         eax,[ebp-0C]
 0040A144    push        eax
 0040A145    mov         eax,dword ptr [ebp-4]
 0040A148    mov         eax,dword ptr [eax]
 0040A14A    mov         ecx,1
 0040A14F    mov         edx,1
 0040A154    call        dword ptr ds:[53D12C]
 0040A15A    push        dword ptr [ebp-0C]
 0040A15D    mov         eax,dword ptr [ebp-4]
 0040A160    mov         edx,3
 0040A165    call        @WStrCatN
>0040A16A    jmp         0040A18C
 0040A16C    mov         ecx,dword ptr [ebp-4]
 0040A16F    mov         ecx,dword ptr [ecx]
 0040A171    mov         eax,dword ptr [ebp-4]
 0040A174    mov         edx,dword ptr [ebp-8]
 0040A177    call        @WStrCat3
>0040A17C    jmp         0040A18C
 0040A17E    mov         eax,dword ptr [ebp-4]
 0040A181    mov         edx,dword ptr [ebp-8]
 0040A184    call        @WStrCat
 0040A189    mov         eax,dword ptr [ebp-4]
 0040A18C    xor         eax,eax
 0040A18E    pop         edx
 0040A18F    pop         ecx
 0040A190    pop         ecx
 0040A191    mov         dword ptr fs:[eax],edx
 0040A194    push        40A1AE
 0040A199    lea         eax,[ebp-0C]
 0040A19C    mov         edx,2
 0040A1A1    call        @WStrArrayClr
 0040A1A6    ret
>0040A1A7    jmp         @HandleFinally
>0040A1AC    jmp         0040A199
 0040A1AE    pop         edi
 0040A1AF    pop         esi
 0040A1B0    pop         ebx
 0040A1B1    mov         esp,ebp
 0040A1B3    pop         ebp
 0040A1B4    ret         4
end;*}

//0040A250
{*procedure sub_0040A250(?:?; ?:?);
begin
 0040A250    push        ebx
 0040A251    push        esi
 0040A252    push        edi
 0040A253    push        ebp
 0040A254    push        ecx
 0040A255    mov         edi,edx
 0040A257    mov         ebx,eax
 0040A259    test        ebx,ebx
>0040A25B    je          0040A2EE
 0040A261    test        ebx,ebx
 0040A263    setl        byte ptr [esp]
 0040A267    mov         eax,edi
 0040A269    mov         edx,0B
 0040A26E    call        @LStrSetLength
 0040A273    mov         esi,0B
 0040A278    mov         eax,ebx
 0040A27A    mov         ecx,0A
 0040A27F    cdq
 0040A280    idiv        eax,ecx
 0040A282    mov         eax,edx
 0040A284    cdq
 0040A285    xor         eax,edx
 0040A287    sub         eax,edx
 0040A289    mov         ebp,eax
 0040A28B    mov         eax,ebx
 0040A28D    mov         ecx,0A
 0040A292    cdq
 0040A293    idiv        eax,ecx
 0040A295    mov         ebx,eax
 0040A297    mov         eax,edi
 0040A299    call        00404C34
 0040A29E    mov         edx,ebp
 0040A2A0    add         dl,30
 0040A2A3    mov         byte ptr [eax+esi-1],dl
 0040A2A7    dec         esi
 0040A2A8    test        ebx,ebx
>0040A2AA    jne         0040A278
 0040A2AC    cmp         byte ptr [esp],0
>0040A2B0    je          0040A2BF
 0040A2B2    mov         eax,edi
 0040A2B4    call        00404C34
 0040A2B9    mov         byte ptr [eax+esi-1],2D
 0040A2BE    dec         esi
 0040A2BF    test        esi,esi
>0040A2C1    jle         0040A2FA
 0040A2C3    mov         eax,edi
 0040A2C5    call        00404C34
 0040A2CA    push        eax
 0040A2CB    mov         eax,edi
 0040A2CD    call        00404C34
 0040A2D2    add         eax,esi
 0040A2D4    mov         ebx,0B
 0040A2D9    sub         ebx,esi
 0040A2DB    mov         ecx,ebx
 0040A2DD    pop         edx
 0040A2DE    call        Move
 0040A2E3    mov         edx,ebx
 0040A2E5    mov         eax,edi
 0040A2E7    call        @LStrSetLength
>0040A2EC    jmp         0040A2FA
 0040A2EE    mov         eax,edi
 0040A2F0    mov         edx,40A308;'0'
 0040A2F5    call        @LStrAsg
 0040A2FA    pop         edx
 0040A2FB    pop         ebp
 0040A2FC    pop         edi
 0040A2FD    pop         esi
 0040A2FE    pop         ebx
 0040A2FF    ret
end;*}

//0040A30C
{*procedure sub_0040A30C(?:?; ?:?);
begin
 0040A30C    push        ebx
 0040A30D    push        esi
 0040A30E    push        edi
 0040A30F    push        ebp
 0040A310    mov         edi,edx
 0040A312    mov         ebp,eax
 0040A314    test        ebp,ebp
>0040A316    je          0040A39C
 0040A31C    test        ebp,ebp
 0040A31E    setl        bl
 0040A321    mov         eax,edi
 0040A323    mov         edx,0B
 0040A328    call        @WStrSetLength
 0040A32D    mov         esi,0B
 0040A332    mov         eax,ebp
 0040A334    mov         ecx,0A
 0040A339    cdq
 0040A33A    idiv        eax,ecx
 0040A33C    mov         eax,edx
 0040A33E    cdq
 0040A33F    xor         eax,edx
 0040A341    sub         eax,edx
 0040A343    mov         ecx,eax
 0040A345    mov         eax,ebp
 0040A347    mov         ebp,0A
 0040A34C    cdq
 0040A34D    idiv        eax,ebp
 0040A34F    mov         ebp,eax
 0040A351    add         cx,30
 0040A355    mov         eax,dword ptr [edi]
 0040A357    mov         word ptr [eax+esi*2-2],cx
 0040A35C    dec         esi
 0040A35D    test        ebp,ebp
>0040A35F    jne         0040A332
 0040A361    test        bl,bl
>0040A363    je          0040A36F
 0040A365    mov         eax,dword ptr [edi]
 0040A367    mov         word ptr [eax+esi*2-2],2D
 0040A36E    dec         esi
 0040A36F    test        esi,esi
>0040A371    jle         0040A3A8
 0040A373    mov         eax,dword ptr [edi]
 0040A375    call        @WStrToPWChar
 0040A37A    mov         edx,eax
 0040A37C    mov         ebx,0B
 0040A381    sub         ebx,esi
 0040A383    mov         ecx,ebx
 0040A385    add         ecx,ecx
 0040A387    mov         eax,dword ptr [edi]
 0040A389    lea         eax,[eax+esi*2]
 0040A38C    call        Move
 0040A391    mov         edx,ebx
 0040A393    mov         eax,edi
 0040A395    call        @WStrSetLength
>0040A39A    jmp         0040A3A8
 0040A39C    mov         eax,edi
 0040A39E    mov         edx,40A3B4;'0'
 0040A3A3    call        @WStrAsg
 0040A3A8    pop         ebp
 0040A3A9    pop         edi
 0040A3AA    pop         esi
 0040A3AB    pop         ebx
 0040A3AC    ret
end;*}

//0040A3B8
{*procedure sub_0040A3B8(?:?; ?:?; ?:?);
begin
 0040A3B8    push        ebp
 0040A3B9    mov         ebp,esp
 0040A3BB    push        ecx
 0040A3BC    push        ebx
 0040A3BD    push        esi
 0040A3BE    push        edi
 0040A3BF    mov         esi,eax
 0040A3C1    cmp         dword ptr [ebp+0C],0
>0040A3C5    jne         0040A3CB
 0040A3C7    cmp         dword ptr [ebp+8],0
>0040A3CB    je          0040A487
 0040A3D1    cmp         dword ptr [ebp+0C],0
>0040A3D5    jne         0040A3E0
 0040A3D7    cmp         dword ptr [ebp+8],0
 0040A3DB    setb        al
>0040A3DE    jmp         0040A3E3
 0040A3E0    setl        al
 0040A3E3    mov         byte ptr [ebp-1],al
 0040A3E6    mov         eax,esi
 0040A3E8    mov         edx,14
 0040A3ED    call        @LStrSetLength
 0040A3F2    mov         ebx,14
 0040A3F7    push        0
 0040A3F9    push        0A
 0040A3FB    mov         eax,dword ptr [ebp+8]
 0040A3FE    mov         edx,dword ptr [ebp+0C]
 0040A401    call        @_llmod
 0040A406    test        edx,edx
>0040A408    jge         0040A411
 0040A40A    neg         eax
 0040A40C    adc         edx,0
 0040A40F    neg         edx
 0040A411    mov         edi,eax
 0040A413    push        0
 0040A415    push        0A
 0040A417    mov         eax,dword ptr [ebp+8]
 0040A41A    mov         edx,dword ptr [ebp+0C]
 0040A41D    call        @_lldiv
 0040A422    mov         dword ptr [ebp+8],eax
 0040A425    mov         dword ptr [ebp+0C],edx
 0040A428    mov         eax,esi
 0040A42A    call        00404C34
 0040A42F    mov         edx,edi
 0040A431    add         dl,30
 0040A434    mov         byte ptr [eax+ebx-1],dl
 0040A438    dec         ebx
 0040A439    cmp         dword ptr [ebp+0C],0
>0040A43D    jne         0040A3F7
 0040A43F    cmp         dword ptr [ebp+8],0
>0040A443    jne         0040A3F7
 0040A445    cmp         byte ptr [ebp-1],0
>0040A449    je          0040A458
 0040A44B    mov         eax,esi
 0040A44D    call        00404C34
 0040A452    mov         byte ptr [eax+ebx-1],2D
 0040A457    dec         ebx
 0040A458    test        ebx,ebx
>0040A45A    jle         0040A493
 0040A45C    mov         eax,esi
 0040A45E    call        00404C34
 0040A463    push        eax
 0040A464    mov         eax,esi
 0040A466    call        00404C34
 0040A46B    add         eax,ebx
 0040A46D    mov         edi,14
 0040A472    sub         edi,ebx
 0040A474    mov         ecx,edi
 0040A476    pop         edx
 0040A477    call        Move
 0040A47C    mov         edx,edi
 0040A47E    mov         eax,esi
 0040A480    call        @LStrSetLength
>0040A485    jmp         0040A493
 0040A487    mov         eax,esi
 0040A489    mov         edx,40A4A4;'0'
 0040A48E    call        @LStrAsg
 0040A493    pop         edi
 0040A494    pop         esi
 0040A495    pop         ebx
 0040A496    pop         ecx
 0040A497    pop         ebp
 0040A498    ret         8
end;*}

//0040A4A8
{*procedure sub_0040A4A8(?:?; ?:?; ?:?);
begin
 0040A4A8    push        ebp
 0040A4A9    mov         ebp,esp
 0040A4AB    push        ecx
 0040A4AC    push        ebx
 0040A4AD    push        esi
 0040A4AE    push        edi
 0040A4AF    mov         esi,eax
 0040A4B1    cmp         dword ptr [ebp+0C],0
>0040A4B5    jne         0040A4BB
 0040A4B7    cmp         dword ptr [ebp+8],0
>0040A4BB    je          0040A56D
 0040A4C1    cmp         dword ptr [ebp+0C],0
>0040A4C5    jne         0040A4D0
 0040A4C7    cmp         dword ptr [ebp+8],0
 0040A4CB    setb        al
>0040A4CE    jmp         0040A4D3
 0040A4D0    setl        al
 0040A4D3    mov         byte ptr [ebp-1],al
 0040A4D6    mov         eax,esi
 0040A4D8    mov         edx,14
 0040A4DD    call        @WStrSetLength
 0040A4E2    mov         ebx,14
 0040A4E7    push        0
 0040A4E9    push        0A
 0040A4EB    mov         eax,dword ptr [ebp+8]
 0040A4EE    mov         edx,dword ptr [ebp+0C]
 0040A4F1    call        @_llmod
 0040A4F6    test        edx,edx
>0040A4F8    jge         0040A501
 0040A4FA    neg         eax
 0040A4FC    adc         edx,0
 0040A4FF    neg         edx
 0040A501    mov         edi,eax
 0040A503    push        0
 0040A505    push        0A
 0040A507    mov         eax,dword ptr [ebp+8]
 0040A50A    mov         edx,dword ptr [ebp+0C]
 0040A50D    call        @_lldiv
 0040A512    mov         dword ptr [ebp+8],eax
 0040A515    mov         dword ptr [ebp+0C],edx
 0040A518    add         di,30
 0040A51C    mov         eax,dword ptr [esi]
 0040A51E    mov         word ptr [eax+ebx*2-2],di
 0040A523    dec         ebx
 0040A524    cmp         dword ptr [ebp+0C],0
>0040A528    jne         0040A4E7
 0040A52A    cmp         dword ptr [ebp+8],0
>0040A52E    jne         0040A4E7
 0040A530    cmp         byte ptr [ebp-1],0
>0040A534    je          0040A540
 0040A536    mov         eax,dword ptr [esi]
 0040A538    mov         word ptr [eax+ebx*2-2],2D
 0040A53F    dec         ebx
 0040A540    test        ebx,ebx
>0040A542    jle         0040A579
 0040A544    mov         eax,dword ptr [esi]
 0040A546    call        @WStrToPWChar
 0040A54B    mov         edx,eax
 0040A54D    mov         edi,14
 0040A552    sub         edi,ebx
 0040A554    mov         ecx,edi
 0040A556    add         ecx,ecx
 0040A558    mov         eax,dword ptr [esi]
 0040A55A    lea         eax,[eax+ebx*2]
 0040A55D    call        Move
 0040A562    mov         edx,edi
 0040A564    mov         eax,esi
 0040A566    call        @WStrSetLength
>0040A56B    jmp         0040A579
 0040A56D    mov         eax,esi
 0040A56F    mov         edx,40A588;'0'
 0040A574    call        @WStrAsg
 0040A579    pop         edi
 0040A57A    pop         esi
 0040A57B    pop         ebx
 0040A57C    pop         ecx
 0040A57D    pop         ebp
 0040A57E    ret         8
end;*}

//0040A58C
{*procedure sub_0040A58C(?:?; ?:?);
begin
 0040A58C    push        ebx
 0040A58D    push        esi
 0040A58E    push        edi
 0040A58F    push        ebp
 0040A590    push        ecx
 0040A591    mov         ebp,edx
 0040A593    mov         dword ptr [esp],eax
 0040A596    cmp         dword ptr [esp],0
>0040A59A    je          0040A61B
 0040A59C    mov         ebx,dword ptr [esp]
 0040A59F    mov         eax,ebp
 0040A5A1    mov         edx,8
 0040A5A6    call        @LStrSetLength
 0040A5AB    mov         edi,8
 0040A5B0    mov         esi,ebx
 0040A5B2    and         esi,0F
 0040A5B5    shr         ebx,4
 0040A5B8    cmp         esi,9
>0040A5BB    jbe         0040A5D2
 0040A5BD    mov         eax,ebp
 0040A5BF    call        00404C34
 0040A5C4    mov         edx,esi
 0040A5C6    add         dl,61
 0040A5C9    sub         dl,0A
 0040A5CC    mov         byte ptr [eax+edi-1],dl
>0040A5D0    jmp         0040A5E5
 0040A5D2    mov         eax,ebp
 0040A5D4    call        00404C34
 0040A5D9    mov         edx,esi
 0040A5DB    add         dl,30
 0040A5DE    sub         dl,0
 0040A5E1    mov         byte ptr [eax+edi-1],dl
 0040A5E5    dec         edi
 0040A5E6    test        ebx,ebx
>0040A5E8    jne         0040A5B0
 0040A5EA    test        edi,edi
>0040A5EC    jbe         0040A627
 0040A5EE    mov         eax,ebp
 0040A5F0    call        00404C34
 0040A5F5    add         eax,edi
 0040A5F7    push        eax
 0040A5F8    mov         eax,ebp
 0040A5FA    call        00404C34
 0040A5FF    mov         edx,eax
 0040A601    mov         ebx,8
 0040A606    sub         ebx,edi
 0040A608    mov         ecx,ebx
 0040A60A    pop         eax
 0040A60B    call        Move
 0040A610    mov         edx,ebx
 0040A612    mov         eax,ebp
 0040A614    call        @LStrSetLength
>0040A619    jmp         0040A627
 0040A61B    mov         eax,ebp
 0040A61D    mov         edx,40A638;'0'
 0040A622    call        @LStrAsg
 0040A627    pop         edx
 0040A628    pop         ebp
 0040A629    pop         edi
 0040A62A    pop         esi
 0040A62B    pop         ebx
 0040A62C    ret
end;*}

//0040A63C
{*procedure sub_0040A63C(?:?; ?:?);
begin
 0040A63C    push        ebx
 0040A63D    push        esi
 0040A63E    push        edi
 0040A63F    mov         edi,edx
 0040A641    test        eax,eax
>0040A643    je          0040A6B7
 0040A645    mov         ebx,eax
 0040A647    mov         eax,edi
 0040A649    mov         edx,8
 0040A64E    call        @WStrSetLength
 0040A653    mov         esi,8
 0040A658    mov         eax,ebx
 0040A65A    and         eax,0F
 0040A65D    shr         ebx,4
 0040A660    cmp         eax,9
>0040A663    jbe         0040A676
 0040A665    mov         edx,dword ptr [edi]
 0040A667    add         ax,61
 0040A66B    sub         ax,0A
 0040A66F    mov         word ptr [edx+esi*2-2],ax
>0040A674    jmp         0040A685
 0040A676    mov         edx,dword ptr [edi]
 0040A678    add         ax,30
 0040A67C    sub         ax,0
 0040A680    mov         word ptr [edx+esi*2-2],ax
 0040A685    dec         esi
 0040A686    test        ebx,ebx
>0040A688    jne         0040A658
 0040A68A    test        esi,esi
>0040A68C    jbe         0040A6C3
 0040A68E    mov         eax,dword ptr [edi]
 0040A690    call        @WStrToPWChar
 0040A695    mov         edx,eax
 0040A697    mov         eax,dword ptr [edi]
 0040A699    lea         eax,[eax+esi*2]
 0040A69C    mov         ebx,8
 0040A6A1    sub         ebx,esi
 0040A6A3    mov         ecx,ebx
 0040A6A5    add         ecx,ecx
 0040A6A7    call        Move
 0040A6AC    mov         edx,ebx
 0040A6AE    mov         eax,edi
 0040A6B0    call        @WStrSetLength
>0040A6B5    jmp         0040A6C3
 0040A6B7    mov         eax,edi
 0040A6B9    mov         edx,40A6CC;'0'
 0040A6BE    call        @WStrAsg
 0040A6C3    pop         edi
 0040A6C4    pop         esi
 0040A6C5    pop         ebx
 0040A6C6    ret
end;*}

//0040A6D0
{*procedure sub_0040A6D0(?:?; ?:?; ?:?);
begin
 0040A6D0    push        ebp
 0040A6D1    mov         ebp,esp
 0040A6D3    push        0
 0040A6D5    push        0
 0040A6D7    push        ebx
 0040A6D8    push        esi
 0040A6D9    mov         ebx,eax
 0040A6DB    xor         eax,eax
 0040A6DD    push        ebp
 0040A6DE    push        40A75B
 0040A6E3    push        dword ptr fs:[eax]
 0040A6E6    mov         dword ptr fs:[eax],esp
 0040A6E9    cmp         dword ptr [ebp+0C],0
>0040A6ED    jne         0040A6F3
 0040A6EF    cmp         dword ptr [ebp+8],0
>0040A6F3    je          0040A734
 0040A6F5    mov         edx,ebx
 0040A6F7    mov         eax,dword ptr [ebp+8]
 0040A6FA    call        0040A58C
 0040A6FF    mov         esi,dword ptr [ebp+0C]
 0040A702    test        esi,esi
>0040A704    je          0040A740
 0040A706    lea         eax,[ebp-4]
 0040A709    push        eax
 0040A70A    mov         eax,dword ptr [ebx]
 0040A70C    mov         cl,30
 0040A70E    mov         edx,8
 0040A713    call        dword ptr ds:[53D0FC]
 0040A719    mov         eax,dword ptr [ebp-4]
 0040A71C    push        eax
 0040A71D    lea         edx,[ebp-8]
 0040A720    mov         eax,esi
 0040A722    call        0040A58C
 0040A727    mov         edx,dword ptr [ebp-8]
 0040A72A    mov         eax,ebx
 0040A72C    pop         ecx
 0040A72D    call        @LStrCat3
>0040A732    jmp         0040A740
 0040A734    mov         eax,ebx
 0040A736    mov         edx,40A774;'0'
 0040A73B    call        @LStrAsg
 0040A740    xor         eax,eax
 0040A742    pop         edx
 0040A743    pop         ecx
 0040A744    pop         ecx
 0040A745    mov         dword ptr fs:[eax],edx
 0040A748    push        40A762
 0040A74D    lea         eax,[ebp-8]
 0040A750    mov         edx,2
 0040A755    call        @LStrArrayClr
 0040A75A    ret
>0040A75B    jmp         @HandleFinally
>0040A760    jmp         0040A74D
 0040A762    pop         esi
 0040A763    pop         ebx
 0040A764    pop         ecx
 0040A765    pop         ecx
 0040A766    pop         ebp
 0040A767    ret         8
end;*}

//0040A778
{*procedure sub_0040A778(?:?; ?:?; ?:?; ?:?);
begin
 0040A778    push        ebp
 0040A779    mov         ebp,esp
 0040A77B    push        ecx
 0040A77C    push        ebx
 0040A77D    push        esi
 0040A77E    push        edi
 0040A77F    mov         byte ptr [ebp-1],cl
 0040A782    mov         esi,edx
 0040A784    mov         edi,eax
 0040A786    mov         ebx,dword ptr [ebp+8]
 0040A789    mov         edx,ebx
 0040A78B    mov         eax,edi
 0040A78D    call        0040A250
 0040A792    mov         al,byte ptr [ebp-1]
 0040A795    push        eax
 0040A796    mov         eax,dword ptr [ebx]
 0040A798    call        @DynArrayLength
 0040A79D    push        eax
 0040A79E    mov         eax,esi
 0040A7A0    cdq
 0040A7A1    xor         eax,edx
 0040A7A3    sub         eax,edx
 0040A7A5    mov         edx,eax
 0040A7A7    pop         eax
 0040A7A8    sub         edx,eax
 0040A7AA    test        esi,esi
 0040A7AC    setg        cl
 0040A7AF    mov         eax,ebx
 0040A7B1    call        00409FEC
 0040A7B6    pop         edi
 0040A7B7    pop         esi
 0040A7B8    pop         ebx
 0040A7B9    pop         ecx
 0040A7BA    pop         ebp
 0040A7BB    ret         4
end;*}

//0040A7C0
{*procedure sub_0040A7C0(?:?; ?:?; ?:?; ?:?);
begin
 0040A7C0    push        ebp
 0040A7C1    mov         ebp,esp
 0040A7C3    push        ecx
 0040A7C4    push        ebx
 0040A7C5    push        esi
 0040A7C6    push        edi
 0040A7C7    mov         ebx,ecx
 0040A7C9    mov         esi,edx
 0040A7CB    mov         dword ptr [ebp-4],eax
 0040A7CE    mov         edi,dword ptr [ebp+8]
 0040A7D1    mov         edx,edi
 0040A7D3    mov         eax,dword ptr [ebp-4]
 0040A7D6    call        0040A58C
 0040A7DB    test        esi,esi
>0040A7DD    jl          0040A7F3
 0040A7DF    mov         eax,ebx
 0040A7E1    add         al,0D0
 0040A7E3    sub         al,0A
>0040A7E5    jb          0040A7F3
 0040A7E7    add         al,0F9
 0040A7E9    sub         al,6
>0040A7EB    jb          0040A7F3
 0040A7ED    add         al,0E6
 0040A7EF    sub         al,6
>0040A7F1    jae         0040A824
 0040A7F3    push        ebx
 0040A7F4    mov         eax,dword ptr [edi]
 0040A7F6    call        @DynArrayLength
 0040A7FB    push        eax
 0040A7FC    mov         eax,esi
 0040A7FE    cdq
 0040A7FF    xor         eax,edx
 0040A801    sub         eax,edx
 0040A803    mov         edx,eax
 0040A805    pop         eax
 0040A806    sub         edx,eax
 0040A808    test        esi,esi
 0040A80A    setg        cl
 0040A80D    mov         eax,edi
 0040A80F    call        00409FEC
 0040A814    mov         ecx,dword ptr [edi]
 0040A816    mov         eax,edi
 0040A818    mov         edx,40A864;'$'
 0040A81D    call        @LStrCat3
>0040A822    jmp         0040A851
 0040A824    mov         ecx,dword ptr [edi]
 0040A826    mov         eax,edi
 0040A828    mov         edx,40A864;'$'
 0040A82D    call        @LStrCat3
 0040A832    push        ebx
 0040A833    mov         eax,dword ptr [edi]
 0040A835    call        @DynArrayLength
 0040A83A    push        eax
 0040A83B    mov         eax,esi
 0040A83D    cdq
 0040A83E    xor         eax,edx
 0040A840    sub         eax,edx
 0040A842    mov         edx,eax
 0040A844    pop         eax
 0040A845    sub         edx,eax
 0040A847    inc         edx
 0040A848    mov         eax,edi
 0040A84A    mov         cl,1
 0040A84C    call        00409FEC
 0040A851    pop         edi
 0040A852    pop         esi
 0040A853    pop         ebx
 0040A854    pop         ecx
 0040A855    pop         ebp
 0040A856    ret         4
end;*}

//0040A868
{*procedure sub_0040A868(?:?; ?:?; ?:?; ?:?);
begin
 0040A868    push        ebp
 0040A869    mov         ebp,esp
 0040A86B    push        ecx
 0040A86C    push        ebx
 0040A86D    push        esi
 0040A86E    push        edi
 0040A86F    mov         byte ptr [ebp-1],cl
 0040A872    mov         esi,edx
 0040A874    mov         edi,eax
 0040A876    mov         ebx,dword ptr [ebp+8]
 0040A879    mov         eax,edi
 0040A87B    xor         edx,edx
 0040A87D    push        edx
 0040A87E    push        eax
 0040A87F    mov         eax,ebx
 0040A881    call        0040A3B8
 0040A886    mov         al,byte ptr [ebp-1]
 0040A889    push        eax
 0040A88A    mov         eax,dword ptr [ebx]
 0040A88C    call        @DynArrayLength
 0040A891    push        eax
 0040A892    mov         eax,esi
 0040A894    cdq
 0040A895    xor         eax,edx
 0040A897    sub         eax,edx
 0040A899    mov         edx,eax
 0040A89B    pop         eax
 0040A89C    sub         edx,eax
 0040A89E    test        esi,esi
 0040A8A0    setg        cl
 0040A8A3    mov         eax,ebx
 0040A8A5    call        00409FEC
 0040A8AA    pop         edi
 0040A8AB    pop         esi
 0040A8AC    pop         ebx
 0040A8AD    pop         ecx
 0040A8AE    pop         ebp
 0040A8AF    ret         4
end;*}

//0040A8F8
{*procedure sub_0040A8F8(?:?; ?:?; ?:?; ?:?);
begin
 0040A8F8    push        ebp
 0040A8F9    mov         ebp,esp
 0040A8FB    push        ecx
 0040A8FC    push        ebx
 0040A8FD    push        esi
 0040A8FE    push        edi
 0040A8FF    mov         ebx,ecx
 0040A901    mov         esi,edx
 0040A903    mov         dword ptr [ebp-4],eax
 0040A906    mov         edi,dword ptr [ebp+8]
 0040A909    mov         edx,edi
 0040A90B    mov         eax,dword ptr [ebp-4]
 0040A90E    call        0040A58C
 0040A913    test        esi,esi
>0040A915    jl          0040A92B
 0040A917    mov         eax,ebx
 0040A919    add         al,0D0
 0040A91B    sub         al,0A
>0040A91D    jb          0040A92B
 0040A91F    add         al,0F9
 0040A921    sub         al,6
>0040A923    jb          0040A92B
 0040A925    add         al,0E6
 0040A927    sub         al,6
>0040A929    jae         0040A95C
 0040A92B    push        ebx
 0040A92C    mov         eax,dword ptr [edi]
 0040A92E    call        @DynArrayLength
 0040A933    push        eax
 0040A934    mov         eax,esi
 0040A936    cdq
 0040A937    xor         eax,edx
 0040A939    sub         eax,edx
 0040A93B    mov         edx,eax
 0040A93D    pop         eax
 0040A93E    sub         edx,eax
 0040A940    test        esi,esi
 0040A942    setg        cl
 0040A945    mov         eax,edi
 0040A947    call        00409FEC
 0040A94C    mov         ecx,dword ptr [edi]
 0040A94E    mov         eax,edi
 0040A950    mov         edx,40A99C;'$'
 0040A955    call        @LStrCat3
>0040A95A    jmp         0040A989
 0040A95C    mov         ecx,dword ptr [edi]
 0040A95E    mov         eax,edi
 0040A960    mov         edx,40A99C;'$'
 0040A965    call        @LStrCat3
 0040A96A    push        ebx
 0040A96B    mov         eax,dword ptr [edi]
 0040A96D    call        @DynArrayLength
 0040A972    push        eax
 0040A973    mov         eax,esi
 0040A975    cdq
 0040A976    xor         eax,edx
 0040A978    sub         eax,edx
 0040A97A    mov         edx,eax
 0040A97C    pop         eax
 0040A97D    sub         edx,eax
 0040A97F    inc         edx
 0040A980    mov         eax,edi
 0040A982    mov         cl,1
 0040A984    call        00409FEC
 0040A989    pop         edi
 0040A98A    pop         esi
 0040A98B    pop         ebx
 0040A98C    pop         ecx
 0040A98D    pop         ebp
 0040A98E    ret         4
end;*}

//0040A9A0
{*procedure sub_0040A9A0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0040A9A0    push        ebp
 0040A9A1    mov         ebp,esp
 0040A9A3    push        ebx
 0040A9A4    push        esi
 0040A9A5    push        edi
 0040A9A6    mov         edi,ecx
 0040A9A8    mov         ebx,edx
 0040A9AA    mov         esi,eax
 0040A9AC    push        dword ptr [ebp+0C]
 0040A9AF    push        dword ptr [ebp+8]
 0040A9B2    mov         eax,edi
 0040A9B4    call        0040A6D0
 0040A9B9    test        esi,esi
>0040A9BB    jl          0040A9D1
 0040A9BD    mov         eax,ebx
 0040A9BF    add         al,0D0
 0040A9C1    sub         al,0A
>0040A9C3    jb          0040A9D1
 0040A9C5    add         al,0F9
 0040A9C7    sub         al,6
>0040A9C9    jb          0040A9D1
 0040A9CB    add         al,0E6
 0040A9CD    sub         al,6
>0040A9CF    jae         0040AA02
 0040A9D1    push        ebx
 0040A9D2    mov         eax,dword ptr [edi]
 0040A9D4    call        @DynArrayLength
 0040A9D9    push        eax
 0040A9DA    mov         eax,esi
 0040A9DC    cdq
 0040A9DD    xor         eax,edx
 0040A9DF    sub         eax,edx
 0040A9E1    mov         edx,eax
 0040A9E3    pop         eax
 0040A9E4    sub         edx,eax
 0040A9E6    test        esi,esi
 0040A9E8    setg        cl
 0040A9EB    mov         eax,edi
 0040A9ED    call        00409FEC
 0040A9F2    mov         ecx,dword ptr [edi]
 0040A9F4    mov         eax,edi
 0040A9F6    mov         edx,40AA40;'$'
 0040A9FB    call        @LStrCat3
>0040AA00    jmp         0040AA2F
 0040AA02    mov         ecx,dword ptr [edi]
 0040AA04    mov         eax,edi
 0040AA06    mov         edx,40AA40;'$'
 0040AA0B    call        @LStrCat3
 0040AA10    push        ebx
 0040AA11    mov         eax,dword ptr [edi]
 0040AA13    call        @DynArrayLength
 0040AA18    push        eax
 0040AA19    mov         eax,esi
 0040AA1B    cdq
 0040AA1C    xor         eax,edx
 0040AA1E    sub         eax,edx
 0040AA20    mov         edx,eax
 0040AA22    pop         eax
 0040AA23    sub         edx,eax
 0040AA25    inc         edx
 0040AA26    mov         eax,edi
 0040AA28    mov         cl,1
 0040AA2A    call        00409FEC
 0040AA2F    pop         edi
 0040AA30    pop         esi
 0040AA31    pop         ebx
 0040AA32    pop         ebp
 0040AA33    ret         8
end;*}

//0040AA44
{*procedure sub_0040AA44(?:?; ?:?; ?:?; ?:?);
begin
 0040AA44    push        ebp
 0040AA45    mov         ebp,esp
 0040AA47    push        ebx
 0040AA48    push        esi
 0040AA49    push        edi
 0040AA4A    mov         ebx,ecx
 0040AA4C    mov         esi,edx
 0040AA4E    mov         edi,eax
 0040AA50    mov         eax,dword ptr [ebp+8]
 0040AA53    push        eax
 0040AA54    mov         ecx,ebx
 0040AA56    mov         edx,esi
 0040AA58    mov         eax,edi
 0040AA5A    call        0040A778
 0040AA5F    pop         edi
 0040AA60    pop         esi
 0040AA61    pop         ebx
 0040AA62    pop         ebp
 0040AA63    ret         4
end;*}

//0040AA68
{*procedure sub_0040AA68(?:Longint; ?:?; ?:?; ?:?);
begin
 0040AA68    push        ebp
 0040AA69    mov         ebp,esp
 0040AA6B    push        ebx
 0040AA6C    push        esi
 0040AA6D    push        edi
 0040AA6E    mov         ebx,ecx
 0040AA70    mov         esi,edx
 0040AA72    mov         edi,eax
 0040AA74    mov         eax,dword ptr [ebp+8]
 0040AA77    push        eax
 0040AA78    mov         ecx,ebx
 0040AA7A    mov         edx,esi
 0040AA7C    mov         eax,edi
 0040AA7E    call        0040A7C0
 0040AA83    pop         edi
 0040AA84    pop         esi
 0040AA85    pop         ebx
 0040AA86    pop         ebp
 0040AA87    ret         4
end;*}

//0040AA8C
{*procedure sub_0040AA8C(?:?; ?:?; ?:?; ?:?);
begin
 0040AA8C    push        ebp
 0040AA8D    mov         ebp,esp
 0040AA8F    push        ebx
 0040AA90    push        esi
 0040AA91    push        edi
 0040AA92    mov         ebx,ecx
 0040AA94    mov         esi,edx
 0040AA96    mov         edi,eax
 0040AA98    mov         eax,dword ptr [ebp+8]
 0040AA9B    push        eax
 0040AA9C    mov         ecx,ebx
 0040AA9E    mov         edx,esi
 0040AAA0    mov         eax,edi
 0040AAA2    call        0040A868
 0040AAA7    pop         edi
 0040AAA8    pop         esi
 0040AAA9    pop         ebx
 0040AAAA    pop         ebp
 0040AAAB    ret         4
end;*}

//0040AAD4
{*procedure sub_0040AAD4(?:Cardinal; ?:?; ?:?; ?:?);
begin
 0040AAD4    push        ebp
 0040AAD5    mov         ebp,esp
 0040AAD7    push        ebx
 0040AAD8    push        esi
 0040AAD9    push        edi
 0040AADA    mov         ebx,ecx
 0040AADC    mov         esi,edx
 0040AADE    mov         edi,eax
 0040AAE0    mov         eax,dword ptr [ebp+8]
 0040AAE3    push        eax
 0040AAE4    mov         ecx,ebx
 0040AAE6    mov         edx,esi
 0040AAE8    mov         eax,edi
 0040AAEA    call        0040A8F8
 0040AAEF    pop         edi
 0040AAF0    pop         esi
 0040AAF1    pop         ebx
 0040AAF2    pop         ebp
 0040AAF3    ret         4
end;*}

//0040AAF8
{*procedure sub_0040AAF8(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0040AAF8    push        ebp
 0040AAF9    mov         ebp,esp
 0040AAFB    push        ebx
 0040AAFC    push        esi
 0040AAFD    push        edi
 0040AAFE    mov         edi,ecx
 0040AB00    mov         ebx,edx
 0040AB02    mov         esi,eax
 0040AB04    push        dword ptr [ebp+0C]
 0040AB07    push        dword ptr [ebp+8]
 0040AB0A    mov         ecx,edi
 0040AB0C    mov         edx,ebx
 0040AB0E    mov         eax,esi
 0040AB10    call        0040A9A0
 0040AB15    pop         edi
 0040AB16    pop         esi
 0040AB17    pop         ebx
 0040AB18    pop         ebp
 0040AB19    ret         8
end;*}

//0040AB1C
{*procedure sub_0040AB1C(?:Integer; ?:?; ?:?; ?:?);
begin
 0040AB1C    push        ebp
 0040AB1D    mov         ebp,esp
 0040AB1F    push        ecx
 0040AB20    push        ebx
 0040AB21    push        esi
 0040AB22    push        edi
 0040AB23    mov         word ptr [ebp-2],cx
 0040AB27    mov         esi,edx
 0040AB29    mov         edi,eax
 0040AB2B    mov         ebx,dword ptr [ebp+8]
 0040AB2E    mov         edx,ebx
 0040AB30    mov         eax,edi
 0040AB32    call        0040A30C
 0040AB37    mov         ax,word ptr [ebp-2]
 0040AB3B    push        eax
 0040AB3C    mov         eax,dword ptr [ebx]
 0040AB3E    call        @WStrLen
 0040AB43    push        eax
 0040AB44    mov         eax,esi
 0040AB46    cdq
 0040AB47    xor         eax,edx
 0040AB49    sub         eax,edx
 0040AB4B    mov         edx,eax
 0040AB4D    pop         eax
 0040AB4E    sub         edx,eax
 0040AB50    test        esi,esi
 0040AB52    setg        cl
 0040AB55    mov         eax,ebx
 0040AB57    call        0040A0C0
 0040AB5C    pop         edi
 0040AB5D    pop         esi
 0040AB5E    pop         ebx
 0040AB5F    pop         ecx
 0040AB60    pop         ebp
 0040AB61    ret         4
end;*}

//0040AB64
{*procedure sub_0040AB64(?:?; ?:?; ?:?; ?:?);
begin
 0040AB64    push        ebp
 0040AB65    mov         ebp,esp
 0040AB67    push        ecx
 0040AB68    push        ebx
 0040AB69    push        esi
 0040AB6A    push        edi
 0040AB6B    mov         esi,ecx
 0040AB6D    mov         edi,edx
 0040AB6F    mov         dword ptr [ebp-4],eax
 0040AB72    mov         ebx,dword ptr [ebp+8]
 0040AB75    mov         edx,ebx
 0040AB77    mov         eax,dword ptr [ebp-4]
 0040AB7A    call        0040A63C
 0040AB7F    test        edi,edi
>0040AB81    jl          0040ABA0
 0040AB83    mov         eax,esi
 0040AB85    xor         edx,edx
 0040AB87    mov         dl,al
 0040AB89    cmp         si,dx
>0040AB8C    jne         0040ABD1
 0040AB8E    add         al,0D0
 0040AB90    sub         al,0A
>0040AB92    jb          0040ABA0
 0040AB94    add         al,0F9
 0040AB96    sub         al,6
>0040AB98    jb          0040ABA0
 0040AB9A    add         al,0E6
 0040AB9C    sub         al,6
>0040AB9E    jae         0040ABD1
 0040ABA0    push        esi
 0040ABA1    mov         eax,dword ptr [ebx]
 0040ABA3    call        @WStrLen
 0040ABA8    push        eax
 0040ABA9    mov         eax,edi
 0040ABAB    cdq
 0040ABAC    xor         eax,edx
 0040ABAE    sub         eax,edx
 0040ABB0    mov         edx,eax
 0040ABB2    pop         eax
 0040ABB3    sub         edx,eax
 0040ABB5    test        edi,edi
 0040ABB7    setg        cl
 0040ABBA    mov         eax,ebx
 0040ABBC    call        0040A0C0
 0040ABC1    mov         ecx,dword ptr [ebx]
 0040ABC3    mov         eax,ebx
 0040ABC5    mov         edx,40AC0C;'$'
 0040ABCA    call        @WStrCat3
>0040ABCF    jmp         0040ABFE
 0040ABD1    mov         ecx,dword ptr [ebx]
 0040ABD3    mov         eax,ebx
 0040ABD5    mov         edx,40AC0C;'$'
 0040ABDA    call        @WStrCat3
 0040ABDF    push        esi
 0040ABE0    mov         eax,dword ptr [ebx]
 0040ABE2    call        @WStrLen
 0040ABE7    push        eax
 0040ABE8    mov         eax,edi
 0040ABEA    cdq
 0040ABEB    xor         eax,edx
 0040ABED    sub         eax,edx
 0040ABEF    mov         edx,eax
 0040ABF1    pop         eax
 0040ABF2    sub         edx,eax
 0040ABF4    inc         edx
 0040ABF5    mov         eax,ebx
 0040ABF7    mov         cl,1
 0040ABF9    call        0040A0C0
 0040ABFE    pop         edi
 0040ABFF    pop         esi
 0040AC00    pop         ebx
 0040AC01    pop         ecx
 0040AC02    pop         ebp
 0040AC03    ret         4
end;*}

//0040AC10
{*procedure sub_0040AC10(?:Cardinal; ?:?; ?:?; ?:?);
begin
 0040AC10    push        ebp
 0040AC11    mov         ebp,esp
 0040AC13    push        ecx
 0040AC14    push        ebx
 0040AC15    push        esi
 0040AC16    push        edi
 0040AC17    mov         word ptr [ebp-2],cx
 0040AC1B    mov         esi,edx
 0040AC1D    mov         edi,eax
 0040AC1F    mov         ebx,dword ptr [ebp+8]
 0040AC22    mov         eax,edi
 0040AC24    xor         edx,edx
 0040AC26    push        edx
 0040AC27    push        eax
 0040AC28    mov         eax,ebx
 0040AC2A    call        0040A4A8
 0040AC2F    mov         ax,word ptr [ebp-2]
 0040AC33    push        eax
 0040AC34    mov         eax,dword ptr [ebx]
 0040AC36    call        @WStrLen
 0040AC3B    push        eax
 0040AC3C    mov         eax,esi
 0040AC3E    cdq
 0040AC3F    xor         eax,edx
 0040AC41    sub         eax,edx
 0040AC43    mov         edx,eax
 0040AC45    pop         eax
 0040AC46    sub         edx,eax
 0040AC48    test        esi,esi
 0040AC4A    setg        cl
 0040AC4D    mov         eax,ebx
 0040AC4F    call        0040A0C0
 0040AC54    pop         edi
 0040AC55    pop         esi
 0040AC56    pop         ebx
 0040AC57    pop         ecx
 0040AC58    pop         ebp
 0040AC59    ret         4
end;*}

//0040AC5C
{*procedure sub_0040AC5C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0040AC5C    push        ebp
 0040AC5D    mov         ebp,esp
 0040AC5F    push        ebx
 0040AC60    push        esi
 0040AC61    push        edi
 0040AC62    mov         ebx,ecx
 0040AC64    mov         edi,edx
 0040AC66    mov         esi,eax
 0040AC68    push        dword ptr [ebp+0C]
 0040AC6B    push        dword ptr [ebp+8]
 0040AC6E    mov         eax,ebx
 0040AC70    call        0040A4A8
 0040AC75    push        edi
 0040AC76    mov         eax,dword ptr [ebx]
 0040AC78    call        @WStrLen
 0040AC7D    push        eax
 0040AC7E    mov         eax,esi
 0040AC80    cdq
 0040AC81    xor         eax,edx
 0040AC83    sub         eax,edx
 0040AC85    mov         edx,eax
 0040AC87    pop         eax
 0040AC88    sub         edx,eax
 0040AC8A    test        esi,esi
 0040AC8C    setg        cl
 0040AC8F    mov         eax,ebx
 0040AC91    call        0040A0C0
 0040AC96    pop         edi
 0040AC97    pop         esi
 0040AC98    pop         ebx
 0040AC99    pop         ebp
 0040AC9A    ret         8
end;*}

//0040ACA0
{*procedure sub_0040ACA0(?:DWORD; ?:?; ?:?; ?:?);
begin
 0040ACA0    push        ebp
 0040ACA1    mov         ebp,esp
 0040ACA3    push        ecx
 0040ACA4    push        ebx
 0040ACA5    push        esi
 0040ACA6    push        edi
 0040ACA7    mov         esi,ecx
 0040ACA9    mov         edi,edx
 0040ACAB    mov         dword ptr [ebp-4],eax
 0040ACAE    mov         ebx,dword ptr [ebp+8]
 0040ACB1    mov         edx,ebx
 0040ACB3    mov         eax,dword ptr [ebp-4]
 0040ACB6    call        0040A63C
 0040ACBB    test        edi,edi
>0040ACBD    jl          0040ACDC
 0040ACBF    mov         eax,esi
 0040ACC1    xor         edx,edx
 0040ACC3    mov         dl,al
 0040ACC5    cmp         si,dx
>0040ACC8    jne         0040AD0D
 0040ACCA    add         al,0D0
 0040ACCC    sub         al,0A
>0040ACCE    jb          0040ACDC
 0040ACD0    add         al,0F9
 0040ACD2    sub         al,6
>0040ACD4    jb          0040ACDC
 0040ACD6    add         al,0E6
 0040ACD8    sub         al,6
>0040ACDA    jae         0040AD0D
 0040ACDC    push        esi
 0040ACDD    mov         eax,dword ptr [ebx]
 0040ACDF    call        @WStrLen
 0040ACE4    push        eax
 0040ACE5    mov         eax,edi
 0040ACE7    cdq
 0040ACE8    xor         eax,edx
 0040ACEA    sub         eax,edx
 0040ACEC    mov         edx,eax
 0040ACEE    pop         eax
 0040ACEF    sub         edx,eax
 0040ACF1    test        edi,edi
 0040ACF3    setg        cl
 0040ACF6    mov         eax,ebx
 0040ACF8    call        0040A0C0
 0040ACFD    mov         ecx,dword ptr [ebx]
 0040ACFF    mov         eax,ebx
 0040AD01    mov         edx,40AD48;'$'
 0040AD06    call        @WStrCat3
>0040AD0B    jmp         0040AD3A
 0040AD0D    mov         ecx,dword ptr [ebx]
 0040AD0F    mov         eax,ebx
 0040AD11    mov         edx,40AD48;'$'
 0040AD16    call        @WStrCat3
 0040AD1B    push        esi
 0040AD1C    mov         eax,dword ptr [ebx]
 0040AD1E    call        @WStrLen
 0040AD23    push        eax
 0040AD24    mov         eax,edi
 0040AD26    cdq
 0040AD27    xor         eax,edx
 0040AD29    sub         eax,edx
 0040AD2B    mov         edx,eax
 0040AD2D    pop         eax
 0040AD2E    sub         edx,eax
 0040AD30    inc         edx
 0040AD31    mov         eax,ebx
 0040AD33    mov         cl,1
 0040AD35    call        0040A0C0
 0040AD3A    pop         edi
 0040AD3B    pop         esi
 0040AD3C    pop         ebx
 0040AD3D    pop         ecx
 0040AD3E    pop         ebp
 0040AD3F    ret         4
end;*}

//0040B330
{*function sub_0040B330:?;
begin
 0040B330    push        ecx
 0040B331    cmp         word ptr ds:[53D380],0;gvar_0053D380
>0040B339    jne         0040B368
 0040B33B    push        2
 0040B33D    lea         eax,[esp+4]
 0040B341    push        eax
 0040B342    push        0E
 0040B344    call        kernel32.GetThreadLocale
 0040B349    push        eax
 0040B34A    call        kernel32.GetLocaleInfoW
 0040B34F    test        eax,eax
>0040B351    jle         0040B35F
 0040B353    mov         ax,word ptr [esp]
 0040B357    mov         [0053D380],ax;gvar_0053D380
>0040B35D    jmp         0040B368
 0040B35F    mov         word ptr ds:[53D380],2C;gvar_0053D380
 0040B368    mov         ax,[0053D380];0x0 gvar_0053D380
 0040B36E    pop         edx
 0040B36F    ret
end;*}

//0040B5F8
{*procedure sub_0040B5F8(?:?; ?:?; ?:?);
begin
 0040B5F8    push        ebp
 0040B5F9    mov         ebp,esp
 0040B5FB    xor         ecx,ecx
 0040B5FD    push        ecx
 0040B5FE    push        ecx
 0040B5FF    push        ecx
 0040B600    push        ecx
 0040B601    push        ecx
 0040B602    push        ecx
 0040B603    push        ecx
 0040B604    push        ebx
 0040B605    mov         ebx,eax
 0040B607    xor         eax,eax
 0040B609    push        ebp
 0040B60A    push        40B855
 0040B60F    push        dword ptr fs:[eax]
 0040B612    mov         dword ptr fs:[eax],esp
 0040B615    mov         eax,dword ptr [ebp+8]
 0040B618    mov         edx,dword ptr [ebp+0C]
 0040B61B    test        edx,edx
>0040B61D    jge         0040B626
 0040B61F    neg         eax
 0040B621    adc         edx,0
 0040B624    neg         edx
 0040B626    cmp         edx,0
>0040B629    jne         0040B638
 0040B62B    cmp         eax,400
>0040B630    jb          0040B807
>0040B636    jmp         0040B63E
>0040B638    jl          0040B807
 0040B63E    mov         eax,dword ptr [ebp+8]
 0040B641    mov         edx,dword ptr [ebp+0C]
 0040B644    test        edx,edx
>0040B646    jge         0040B64F
 0040B648    neg         eax
 0040B64A    adc         edx,0
 0040B64D    neg         edx
 0040B64F    cmp         edx,0
>0040B652    jne         0040B661
 0040B654    cmp         eax,100000
>0040B659    jb          0040B798
>0040B65F    jmp         0040B667
>0040B661    jl          0040B798
 0040B667    mov         eax,dword ptr [ebp+8]
 0040B66A    mov         edx,dword ptr [ebp+0C]
 0040B66D    test        edx,edx
>0040B66F    jge         0040B678
 0040B671    neg         eax
 0040B673    adc         edx,0
 0040B676    neg         edx
 0040B678    cmp         edx,0
>0040B67B    jne         0040B68A
 0040B67D    cmp         eax,40000000
>0040B682    jb          0040B71A
>0040B688    jmp         0040B690
>0040B68A    jl          0040B71A
 0040B690    push        0
 0040B692    push        400
 0040B697    push        0
 0040B699    push        64
 0040B69B    push        0
 0040B69D    push        400
 0040B6A2    push        0
 0040B6A4    push        400
 0040B6A9    mov         eax,dword ptr [ebp+8]
 0040B6AC    mov         edx,dword ptr [ebp+0C]
 0040B6AF    call        @_lldiv
 0040B6B4    call        @_lldiv
 0040B6B9    call        @_llmul
 0040B6BE    call        @_lldiv
 0040B6C3    test        edx,edx
>0040B6C5    jge         0040B6CE
 0040B6C7    neg         eax
 0040B6C9    adc         edx,0
 0040B6CC    neg         edx
 0040B6CE    push        edx
 0040B6CF    push        eax
 0040B6D0    lea         ecx,[ebp-4]
 0040B6D3    mov         dx,30
 0040B6D7    mov         eax,1
 0040B6DC    call        0040AC5C
 0040B6E1    mov         edx,dword ptr [ebp-4]
 0040B6E4    mov         eax,ebx
 0040B6E6    mov         ecx,40B868;' GB'
 0040B6EB    call        @WStrCat3
 0040B6F0    mov         eax,dword ptr [ebx]
 0040B6F2    call        @WStrLen
 0040B6F7    sub         eax,4
 0040B6FA    push        eax
 0040B6FB    call        0040B330
 0040B700    mov         edx,eax
 0040B702    lea         eax,[ebp-8]
 0040B705    call        @WStrFromWChar
 0040B70A    mov         eax,dword ptr [ebp-8]
 0040B70D    mov         edx,ebx
 0040B70F    pop         ecx
 0040B710    call        @WStrInsert
>0040B715    jmp         0040B83A
 0040B71A    push        0
 0040B71C    push        400
 0040B721    push        0
 0040B723    push        64
 0040B725    push        0
 0040B727    push        400
 0040B72C    mov         eax,dword ptr [ebp+8]
 0040B72F    mov         edx,dword ptr [ebp+0C]
 0040B732    call        @_lldiv
 0040B737    call        @_llmul
 0040B73C    call        @_lldiv
 0040B741    test        edx,edx
>0040B743    jge         0040B74C
 0040B745    neg         eax
 0040B747    adc         edx,0
 0040B74A    neg         edx
 0040B74C    push        edx
 0040B74D    push        eax
 0040B74E    lea         ecx,[ebp-0C]
 0040B751    mov         dx,30
 0040B755    mov         eax,1
 0040B75A    call        0040AC5C
 0040B75F    mov         edx,dword ptr [ebp-0C]
 0040B762    mov         eax,ebx
 0040B764    mov         ecx,40B874;' MB'
 0040B769    call        @WStrCat3
 0040B76E    mov         eax,dword ptr [ebx]
 0040B770    call        @WStrLen
 0040B775    sub         eax,4
 0040B778    push        eax
 0040B779    call        0040B330
 0040B77E    mov         edx,eax
 0040B780    lea         eax,[ebp-10]
 0040B783    call        @WStrFromWChar
 0040B788    mov         eax,dword ptr [ebp-10]
 0040B78B    mov         edx,ebx
 0040B78D    pop         ecx
 0040B78E    call        @WStrInsert
>0040B793    jmp         0040B83A
 0040B798    push        0
 0040B79A    push        400
 0040B79F    push        0
 0040B7A1    push        64
 0040B7A3    mov         eax,dword ptr [ebp+8]
 0040B7A6    mov         edx,dword ptr [ebp+0C]
 0040B7A9    call        @_llmul
 0040B7AE    call        @_lldiv
 0040B7B3    test        edx,edx
>0040B7B5    jge         0040B7BE
 0040B7B7    neg         eax
 0040B7B9    adc         edx,0
 0040B7BC    neg         edx
 0040B7BE    push        edx
 0040B7BF    push        eax
 0040B7C0    lea         ecx,[ebp-14]
 0040B7C3    mov         dx,30
 0040B7C7    mov         eax,1
 0040B7CC    call        0040AC5C
 0040B7D1    mov         edx,dword ptr [ebp-14]
 0040B7D4    mov         eax,ebx
 0040B7D6    mov         ecx,40B880;' KB'
 0040B7DB    call        @WStrCat3
 0040B7E0    mov         eax,dword ptr [ebx]
 0040B7E2    call        @WStrLen
 0040B7E7    sub         eax,4
 0040B7EA    push        eax
 0040B7EB    call        0040B330
 0040B7F0    mov         edx,eax
 0040B7F2    lea         eax,[ebp-18]
 0040B7F5    call        @WStrFromWChar
 0040B7FA    mov         eax,dword ptr [ebp-18]
 0040B7FD    mov         edx,ebx
 0040B7FF    pop         ecx
 0040B800    call        @WStrInsert
>0040B805    jmp         0040B83A
 0040B807    mov         eax,dword ptr [ebp+8]
 0040B80A    mov         edx,dword ptr [ebp+0C]
 0040B80D    test        edx,edx
>0040B80F    jge         0040B818
 0040B811    neg         eax
 0040B813    adc         edx,0
 0040B816    neg         edx
 0040B818    push        edx
 0040B819    push        eax
 0040B81A    lea         ecx,[ebp-1C]
 0040B81D    mov         dx,30
 0040B821    mov         eax,1
 0040B826    call        0040AC5C
 0040B82B    mov         edx,dword ptr [ebp-1C]
 0040B82E    mov         eax,ebx
 0040B830    mov         ecx,40B88C;' Bytes'
 0040B835    call        @WStrCat3
 0040B83A    xor         eax,eax
 0040B83C    pop         edx
 0040B83D    pop         ecx
 0040B83E    pop         ecx
 0040B83F    mov         dword ptr fs:[eax],edx
 0040B842    push        40B85C
 0040B847    lea         eax,[ebp-1C]
 0040B84A    mov         edx,7
 0040B84F    call        @WStrArrayClr
 0040B854    ret
>0040B855    jmp         @HandleFinally
>0040B85A    jmp         0040B847
 0040B85C    pop         ebx
 0040B85D    mov         esp,ebp
 0040B85F    pop         ebp
 0040B860    ret         8
end;*}

//0040B8F0
{*procedure sub_0040B8F0(?:Integer; ?:?);
begin
 0040B8F0    push        ebp
 0040B8F1    mov         ebp,esp
 0040B8F3    mov         ecx,4
 0040B8F8    push        0
 0040B8FA    push        0
 0040B8FC    dec         ecx
>0040B8FD    jne         0040B8F8
 0040B8FF    push        ecx
 0040B900    push        ebx
 0040B901    push        esi
 0040B902    push        edi
 0040B903    mov         esi,edx
 0040B905    mov         ebx,eax
 0040B907    xor         eax,eax
 0040B909    push        ebp
 0040B90A    push        40BB05
 0040B90F    push        dword ptr fs:[eax]
 0040B912    mov         dword ptr fs:[eax],esp
 0040B915    call        kernel32.GetVersion
 0040B91A    test        eax,80000000
>0040B91F    je          0040B93B
 0040B921    lea         edx,[ebp-0C]
 0040B924    mov         eax,ebx
 0040B926    call        dword ptr ds:[53D10C]
 0040B92C    mov         edx,dword ptr [ebp-0C]
 0040B92F    mov         eax,esi
 0040B931    call        @WStrFromLStr
>0040B936    jmp         0040BAD2
 0040B93B    test        ebx,0C0000000
>0040B941    je          0040B983
 0040B943    lea         edx,[ebp-10]
 0040B946    mov         eax,[0053D398];^#7+!9!'+#6+!4! &'+#1+::&'':''
 0040B94B    call        0040BB1C
 0040B950    mov         eax,dword ptr [ebp-10]
 0040B953    call        @LStrToPChar
 0040B958    push        eax
 0040B959    lea         edx,[ebp-14]
 0040B95C    mov         eax,[0053D17C];^';!199{199'
 0040B961    call        0040BB1C
 0040B966    mov         eax,dword ptr [ebp-14]
 0040B969    call        @LStrToPChar
 0040B96E    push        eax
 0040B96F    call        kernel32.GetModuleHandleA
 0040B974    push        eax
 0040B975    call        kernel32.GetProcAddress
 0040B97A    test        eax,eax
>0040B97C    je          0040B983
 0040B97E    push        ebx
 0040B97F    call        eax
 0040B981    mov         ebx,eax
 0040B983    mov         edi,1300
 0040B988    cmp         ebx,834
>0040B98E    jb          0040B9C8
 0040B990    cmp         ebx,0BB7
>0040B996    ja          0040B9C8
 0040B998    push        2
 0040B99A    push        0
 0040B99C    lea         edx,[ebp-18]
 0040B99F    mov         eax,[0053D394];^';0!8&2{199'
 0040B9A4    call        0040BB1C
 0040B9A9    mov         eax,dword ptr [ebp-18]
 0040B9AC    call        @LStrToPChar
 0040B9B1    push        eax
 0040B9B2    call        kernel32.LoadLibraryExA
 0040B9B7    mov         dword ptr [ebp-8],eax
 0040B9BA    cmp         dword ptr [ebp-8],0
>0040B9BE    je          0040B9CD
 0040B9C0    or          edi,800
>0040B9C6    jmp         0040B9CD
 0040B9C8    xor         eax,eax
 0040B9CA    mov         dword ptr [ebp-8],eax
 0040B9CD    xor         edx,edx
 0040B9CF    push        ebp
 0040B9D0    push        40BACB
 0040B9D5    push        dword ptr fs:[edx]
 0040B9D8    mov         dword ptr fs:[edx],esp
 0040B9DB    push        0
 0040B9DD    push        0
 0040B9DF    lea         eax,[ebp-4]
 0040B9E2    push        eax
 0040B9E3    push        400
 0040B9E8    push        ebx
 0040B9E9    mov         eax,dword ptr [ebp-8]
 0040B9EC    push        eax
 0040B9ED    push        edi
 0040B9EE    call        kernel32.FormatMessageW
 0040B9F3    test        eax,eax
>0040B9F5    je          0040BA6B
 0040B9F7    xor         edx,edx
 0040B9F9    push        ebp
 0040B9FA    push        40BA64
 0040B9FF    push        dword ptr fs:[edx]
 0040BA02    mov         dword ptr fs:[edx],esp
 0040BA05    mov         eax,esi
 0040BA07    mov         edx,dword ptr [ebp-4]
 0040BA0A    call        @WStrFromPWChar
 0040BA0F    mov         eax,dword ptr [esi]
 0040BA11    call        @WStrLen
 0040BA16    mov         ebx,eax
 0040BA18    test        ebx,ebx
>0040BA1A    jbe         0040BA4D
 0040BA1C    mov         eax,dword ptr [esi]
 0040BA1E    mov         ax,word ptr [eax+ebx*2-2]
 0040BA23    cmp         ax,0D
>0040BA27    jne         0040BA34
 0040BA29    mov         eax,dword ptr [esi]
 0040BA2B    mov         word ptr [eax+ebx*2-2],20
>0040BA32    jmp         0040BA48
 0040BA34    cmp         ax,0A
>0040BA38    jne         0040BA48
 0040BA3A    mov         eax,esi
 0040BA3C    mov         ecx,1
 0040BA41    mov         edx,ebx
 0040BA43    call        @WStrDelete
 0040BA48    dec         ebx
 0040BA49    test        ebx,ebx
>0040BA4B    ja          0040BA1C
 0040BA4D    xor         eax,eax
 0040BA4F    pop         edx
 0040BA50    pop         ecx
 0040BA51    pop         ecx
 0040BA52    mov         dword ptr fs:[eax],edx
 0040BA55    push        40BAAE
 0040BA5A    mov         eax,dword ptr [ebp-4]
 0040BA5D    push        eax
 0040BA5E    call        kernel32.LocalFree
 0040BA63    ret
>0040BA64    jmp         @HandleFinally
>0040BA69    jmp         0040BA5A
 0040BA6B    lea         edx,[ebp-20]
 0040BA6E    mov         eax,[0053D39C];^#2+<;1:"&u0'':'u; 870''
 0040BA73    call        0040BB1C
 0040BA78    mov         edx,dword ptr [ebp-20]
 0040BA7B    lea         eax,[ebp-1C]
 0040BA7E    call        @WStrFromLStr
 0040BA83    push        dword ptr [ebp-1C]
 0040BA86    push        40BB18
 0040BA8B    lea         eax,[ebp-24]
 0040BA8E    push        eax
 0040BA8F    mov         cx,30
 0040BA93    mov         edx,1
 0040BA98    mov         eax,ebx
 0040BA9A    call        0040ACA0
 0040BA9F    push        dword ptr [ebp-24]
 0040BAA2    mov         eax,esi
 0040BAA4    mov         edx,3
 0040BAA9    call        @WStrCatN
 0040BAAE    xor         eax,eax
 0040BAB0    pop         edx
 0040BAB1    pop         ecx
 0040BAB2    pop         ecx
 0040BAB3    mov         dword ptr fs:[eax],edx
 0040BAB6    push        40BAD2
 0040BABB    cmp         dword ptr [ebp-8],0
>0040BABF    je          0040BACA
 0040BAC1    mov         eax,dword ptr [ebp-8]
 0040BAC4    push        eax
 0040BAC5    call        kernel32.FreeLibrary
 0040BACA    ret
>0040BACB    jmp         @HandleFinally
>0040BAD0    jmp         0040BABB
 0040BAD2    xor         eax,eax
 0040BAD4    pop         edx
 0040BAD5    pop         ecx
 0040BAD6    pop         ecx
 0040BAD7    mov         dword ptr fs:[eax],edx
 0040BADA    push        40BB0C
 0040BADF    lea         eax,[ebp-24]
 0040BAE2    call        @WStrClr
 0040BAE7    lea         eax,[ebp-20]
 0040BAEA    call        @LStrClr
 0040BAEF    lea         eax,[ebp-1C]
 0040BAF2    call        @WStrClr
 0040BAF7    lea         eax,[ebp-18]
 0040BAFA    mov         edx,4
 0040BAFF    call        @LStrArrayClr
 0040BB04    ret
>0040BB05    jmp         @HandleFinally
>0040BB0A    jmp         0040BADF
 0040BB0C    pop         edi
 0040BB0D    pop         esi
 0040BB0E    pop         ebx
 0040BB0F    mov         esp,ebp
 0040BB11    pop         ebp
 0040BB12    ret
end;*}

//0040BB1C
{*procedure sub_0040BB1C(?:?; ?:?);
begin
 0040BB1C    push        ebx
 0040BB1D    push        esi
 0040BB1E    mov         ebx,edx
 0040BB20    mov         esi,eax
 0040BB22    mov         eax,ebx
 0040BB24    mov         edx,esi
 0040BB26    call        @LStrAsg
 0040BB2B    mov         eax,ebx
 0040BB2D    call        UniqueString
 0040BB32    mov         eax,dword ptr [ebx]
 0040BB34    call        @DynArrayLength
 0040BB39    test        eax,eax
>0040BB3B    jle         0040BB4D
 0040BB3D    mov         edx,1
 0040BB42    mov         ecx,dword ptr [ebx]
 0040BB44    xor         byte ptr [ecx+edx-1],55
 0040BB49    inc         edx
 0040BB4A    dec         eax
>0040BB4B    jne         0040BB42
 0040BB4D    pop         esi
 0040BB4E    pop         ebx
 0040BB4F    ret
end;*}

//0040BB94
{*function sub_0040BB94(?:PWideChar; ?:?; ?:?; ?:?):?;
begin
 0040BB94    push        ebp
 0040BB95    mov         ebp,esp
 0040BB97    add         esp,0FFFFFFF8
 0040BB9A    push        ebx
 0040BB9B    push        esi
 0040BB9C    mov         dword ptr [ebp-8],edx
 0040BB9F    mov         dword ptr [ebp-4],eax
 0040BBA2    xor         edx,edx
 0040BBA4    xor         esi,esi
>0040BBA6    jmp         0040BC19
 0040BBA8    xor         eax,eax
 0040BBAA    mov         al,byte ptr [ecx+esi]
 0040BBAD    inc         esi
 0040BBAE    test        al,80
>0040BBB0    je          0040BC11
 0040BBB2    cmp         esi,dword ptr [ebp+8]
>0040BBB5    jae         0040BC11
 0040BBB7    mov         bl,byte ptr [ecx+esi]
 0040BBBA    and         bl,0C0
 0040BBBD    cmp         bl,80
>0040BBC0    jne         0040BC11
 0040BBC2    test        al,20
>0040BBC4    je          0040BBDA
 0040BBC6    lea         ebx,[esi+1]
 0040BBC9    cmp         ebx,dword ptr [ebp+8]
>0040BBCC    jae         0040BC11
 0040BBCE    mov         bl,byte ptr [ecx+esi+1]
 0040BBD2    and         bl,0C0
 0040BBD5    cmp         bl,80
>0040BBD8    jne         0040BC11
 0040BBDA    and         eax,3F
 0040BBDD    test        al,20
>0040BBDF    je          0040BBF5
 0040BBE1    mov         bl,byte ptr [ecx+esi]
 0040BBE4    and         bl,3F
 0040BBE7    and         ebx,0FF
 0040BBED    shl         eax,6
 0040BBF0    or          ebx,eax
 0040BBF2    mov         eax,ebx
 0040BBF4    inc         esi
 0040BBF5    mov         bl,byte ptr [ecx+esi]
 0040BBF8    and         bl,3F
 0040BBFB    and         ebx,0FF
 0040BC01    shl         eax,6
 0040BC04    or          bx,ax
 0040BC07    mov         eax,dword ptr [ebp-4]
 0040BC0A    mov         word ptr [eax+edx*2],bx
 0040BC0E    inc         esi
>0040BC0F    jmp         0040BC18
 0040BC11    mov         ebx,dword ptr [ebp-4]
 0040BC14    mov         word ptr [ebx+edx*2],ax
 0040BC18    inc         edx
 0040BC19    cmp         esi,dword ptr [ebp+8]
>0040BC1C    jae         0040BC23
 0040BC1E    cmp         edx,dword ptr [ebp-8]
>0040BC21    jb          0040BBA8
 0040BC23    cmp         edx,dword ptr [ebp-8]
>0040BC26    jb          0040BC2C
 0040BC28    mov         edx,dword ptr [ebp-8]
 0040BC2B    dec         edx
 0040BC2C    mov         eax,dword ptr [ebp-4]
 0040BC2F    mov         word ptr [eax+edx*2],0
 0040BC35    inc         edx
 0040BC36    mov         eax,edx
 0040BC38    pop         esi
 0040BC39    pop         ebx
 0040BC3A    pop         ecx
 0040BC3B    pop         ecx
 0040BC3C    pop         ebp
 0040BC3D    ret         4
end;*}

//0040BC40
procedure sub_0040BC40(?:AnsiString; ?:WideString);
begin
{*
 0040BC40    push        ebx
 0040BC41    push        esi
 0040BC42    push        edi
 0040BC43    mov         esi,edx
 0040BC45    mov         ebx,eax
 0040BC47    test        ebx,ebx
>0040BC49    je          0040BD77
 0040BC4F    mov         eax,ebx
 0040BC51    call        @DynArrayLength
 0040BC56    mov         edx,eax
 0040BC58    mov         eax,esi
 0040BC5A    call        @WStrSetLength
 0040BC5F    mov         eax,55C684;gvar_0055C684:Pointer
 0040BC64    test        eax,eax
>0040BC66    jne         0040BC8E
 0040BC68    call        kernel32.GetVersion
 0040BC6D    test        eax,80000000
>0040BC72    jne         0040BC8E
 0040BC74    push        40BD84
 0040BC79    push        40BD98;'kernel32.dll'
 0040BC7E    call        kernel32.GetModuleHandleA
 0040BC83    push        eax
 0040BC84    call        kernel32.GetProcAddress
 0040BC89    mov         [0055C684],eax;gvar_0055C684:Pointer
 0040BC8E    cmp         dword ptr ds:[55C684],0;gvar_0055C684:Pointer
>0040BC95    je          0040BD34
 0040BC9B    mov         eax,ebx
 0040BC9D    call        @DynArrayLength
 0040BCA2    inc         eax
 0040BCA3    push        eax
 0040BCA4    mov         eax,dword ptr [esi]
 0040BCA6    call        @WStrToPWChar
 0040BCAB    push        eax
 0040BCAC    mov         eax,ebx
 0040BCAE    call        @DynArrayLength
 0040BCB3    inc         eax
 0040BCB4    push        eax
 0040BCB5    mov         eax,ebx
 0040BCB7    call        @LStrToPChar
 0040BCBC    push        eax
 0040BCBD    push        0
 0040BCBF    push        0FDE9
 0040BCC4    call        dword ptr ds:[55C684]
 0040BCCA    mov         edi,eax
 0040BCCC    test        edi,edi
>0040BCCE    jle         0040BD5D
 0040BCD4    mov         eax,ebx
 0040BCD6    call        @DynArrayLength
 0040BCDB    inc         eax
 0040BCDC    cmp         edi,eax
>0040BCDE    jg          0040BD5D
 0040BCE0    mov         eax,dword ptr [esi]
 0040BCE2    call        @WStrToPWChar
 0040BCE7    cmp         word ptr [eax+edi*2-2],0
>0040BCED    je          0040BD5D
 0040BCEF    mov         eax,ebx
 0040BCF1    call        @DynArrayLength
 0040BCF6    inc         eax
 0040BCF7    cmp         edi,eax
>0040BCF9    jne         0040BD23
 0040BCFB    cmp         edi,1
>0040BCFE    jle         0040BD24
 0040BD00    mov         eax,dword ptr [esi]
 0040BD02    call        @WStrToPWChar
 0040BD07    cmp         word ptr [eax+edi*2-2],0DC00
>0040BD0E    jb          0040BD24
 0040BD10    mov         eax,dword ptr [esi]
 0040BD12    call        @WStrToPWChar
 0040BD17    cmp         word ptr [eax+edi*2-2],0DFFF
>0040BD1E    ja          0040BD24
 0040BD20    dec         edi
>0040BD21    jmp         0040BD24
 0040BD23    inc         edi
 0040BD24    mov         eax,dword ptr [esi]
 0040BD26    call        @WStrToPWChar
 0040BD2B    mov         word ptr [eax+edi*2-2],0
>0040BD32    jmp         0040BD5D
 0040BD34    mov         eax,ebx
 0040BD36    call        @DynArrayLength
 0040BD3B    push        eax
 0040BD3C    mov         eax,dword ptr [esi]
 0040BD3E    call        @WStrLen
 0040BD43    inc         eax
 0040BD44    push        eax
 0040BD45    mov         eax,ebx
 0040BD47    call        @LStrToPChar
 0040BD4C    push        eax
 0040BD4D    mov         eax,dword ptr [esi]
 0040BD4F    call        @WStrToPWChar
 0040BD54    pop         ecx
 0040BD55    pop         edx
 0040BD56    call        0040BB94
 0040BD5B    mov         edi,eax
 0040BD5D    cmp         edi,1
>0040BD60    jle         0040BD6E
 0040BD62    mov         edx,edi
 0040BD64    dec         edx
 0040BD65    mov         eax,esi
 0040BD67    call        @WStrSetLength
>0040BD6C    jmp         0040BD7E
 0040BD6E    mov         eax,esi
 0040BD70    call        @WStrClr
>0040BD75    jmp         0040BD7E
 0040BD77    mov         eax,esi
 0040BD79    call        @WStrClr
 0040BD7E    pop         edi
 0040BD7F    pop         esi
 0040BD80    pop         ebx
 0040BD81    ret
*}
end;

//0040BDA8
{*function sub_0040BDA8(?:PChar; ?:?; ?:?; ?:?):?;
begin
 0040BDA8    push        ebp
 0040BDA9    mov         ebp,esp
 0040BDAB    add         esp,0FFFFFFF8
 0040BDAE    push        ebx
 0040BDAF    push        esi
 0040BDB0    mov         dword ptr [ebp-8],ecx
 0040BDB3    mov         dword ptr [ebp-4],edx
 0040BDB6    xor         esi,esi
 0040BDB8    xor         edx,edx
>0040BDBA    jmp         0040BE18
 0040BDBC    mov         ecx,dword ptr [ebp-8]
 0040BDBF    movzx       ecx,word ptr [ecx+edx*2]
 0040BDC3    inc         edx
 0040BDC4    cmp         ecx,7F
>0040BDC7    ja          0040BDCF
 0040BDC9    mov         byte ptr [eax+esi],cl
 0040BDCC    inc         esi
>0040BDCD    jmp         0040BE18
 0040BDCF    cmp         ecx,7FF
>0040BDD5    ja          0040BDF1
 0040BDD7    mov         ebx,ecx
 0040BDD9    shr         ebx,6
 0040BDDC    or          bl,0C0
 0040BDDF    mov         byte ptr [eax+esi],bl
 0040BDE2    and         cl,3F
 0040BDE5    or          cl,80
 0040BDE8    mov         byte ptr [eax+esi+1],cl
 0040BDEC    add         esi,2
>0040BDEF    jmp         0040BE18
 0040BDF1    mov         ebx,ecx
 0040BDF3    shr         ebx,0C
 0040BDF6    or          bl,0E0
 0040BDF9    mov         byte ptr [eax+esi],bl
 0040BDFC    mov         ebx,ecx
 0040BDFE    shr         ebx,6
 0040BE01    and         bl,3F
 0040BE04    or          bl,80
 0040BE07    mov         byte ptr [eax+esi+1],bl
 0040BE0B    and         cl,3F
 0040BE0E    or          cl,80
 0040BE11    mov         byte ptr [eax+esi+2],cl
 0040BE15    add         esi,3
 0040BE18    cmp         edx,dword ptr [ebp+8]
>0040BE1B    jae         0040BE22
 0040BE1D    cmp         esi,dword ptr [ebp-4]
>0040BE20    jb          0040BDBC
 0040BE22    cmp         esi,dword ptr [ebp-4]
>0040BE25    jb          0040BE2B
 0040BE27    mov         esi,dword ptr [ebp-4]
 0040BE2A    dec         esi
 0040BE2B    mov         byte ptr [eax+esi],0
 0040BE2F    inc         esi
 0040BE30    mov         eax,esi
 0040BE32    pop         esi
 0040BE33    pop         ebx
 0040BE34    pop         ecx
 0040BE35    pop         ecx
 0040BE36    pop         ebp
 0040BE37    ret         4
end;*}

//0040BE3C
procedure sub_0040BE3C(?:WideString; ?:AnsiString);
begin
{*
 0040BE3C    push        ebx
 0040BE3D    push        esi
 0040BE3E    mov         ebx,edx
 0040BE40    mov         esi,eax
 0040BE42    mov         eax,esi
 0040BE44    xor         edx,edx
 0040BE46    call        @WStrCmp
>0040BE4B    je          0040BF8F
 0040BE51    mov         eax,esi
 0040BE53    call        @WStrLen
 0040BE58    lea         edx,[eax+eax*2]
 0040BE5B    mov         eax,ebx
 0040BE5D    call        @LStrSetLength
 0040BE62    cmp         dword ptr ds:[55C680],0;gvar_0055C680:Pointer
>0040BE69    jne         0040BE91
 0040BE6B    call        kernel32.GetVersion
 0040BE70    test        eax,80000000
>0040BE75    jne         0040BE91
 0040BE77    push        40BF9C
 0040BE7C    push        40BFB0;'kernel32.dll'
 0040BE81    call        kernel32.GetModuleHandleA
 0040BE86    push        eax
 0040BE87    call        kernel32.GetProcAddress
 0040BE8C    mov         [0055C680],eax;gvar_0055C680:Pointer
 0040BE91    cmp         dword ptr ds:[55C680],0;gvar_0055C680:Pointer
>0040BE98    je          0040BF4B
 0040BE9E    push        0
 0040BEA0    push        0
 0040BEA2    mov         eax,dword ptr [ebx]
 0040BEA4    call        @DynArrayLength
 0040BEA9    inc         eax
 0040BEAA    push        eax
 0040BEAB    mov         eax,dword ptr [ebx]
 0040BEAD    call        @LStrToPChar
 0040BEB2    push        eax
 0040BEB3    mov         eax,esi
 0040BEB5    call        @WStrLen
 0040BEBA    inc         eax
 0040BEBB    push        eax
 0040BEBC    mov         eax,esi
 0040BEBE    call        @WStrToPWChar
 0040BEC3    push        eax
 0040BEC4    push        0
 0040BEC6    push        0FDE9
 0040BECB    call        dword ptr ds:[55C680]
 0040BED1    mov         esi,eax
 0040BED3    test        esi,esi
>0040BED5    jle         0040BF74
 0040BEDB    mov         eax,dword ptr [ebx]
 0040BEDD    call        @DynArrayLength
 0040BEE2    inc         eax
 0040BEE3    cmp         esi,eax
>0040BEE5    jg          0040BF74
 0040BEEB    mov         eax,dword ptr [ebx]
 0040BEED    call        @LStrToPChar
 0040BEF2    cmp         byte ptr [eax+esi-1],0
>0040BEF7    je          0040BF74
 0040BEF9    mov         eax,dword ptr [ebx]
 0040BEFB    call        @DynArrayLength
 0040BF00    inc         eax
 0040BF01    cmp         esi,eax
>0040BF03    jne         0040BF3C
>0040BF05    jmp         0040BF08
 0040BF07    dec         esi
 0040BF08    cmp         esi,1
>0040BF0B    jle         0040BF3D
 0040BF0D    mov         eax,dword ptr [ebx]
 0040BF0F    call        @LStrToPChar
 0040BF14    cmp         byte ptr [eax+esi-1],7F
>0040BF19    jbe         0040BF3D
 0040BF1B    mov         eax,dword ptr [ebx]
 0040BF1D    call        @LStrToPChar
 0040BF22    test        byte ptr [eax+esi-1],80
>0040BF27    je          0040BF3D
 0040BF29    mov         eax,dword ptr [ebx]
 0040BF2B    call        @LStrToPChar
 0040BF30    mov         al,byte ptr [eax+esi-1]
 0040BF34    and         al,0C0
 0040BF36    cmp         al,0C0
>0040BF38    jne         0040BF07
>0040BF3A    jmp         0040BF3D
 0040BF3C    inc         esi
 0040BF3D    mov         eax,dword ptr [ebx]
 0040BF3F    call        @LStrToPChar
 0040BF44    mov         byte ptr [eax+esi-1],0
>0040BF49    jmp         0040BF74
 0040BF4B    mov         eax,esi
 0040BF4D    call        @WStrLen
 0040BF52    push        eax
 0040BF53    mov         eax,dword ptr [ebx]
 0040BF55    call        @DynArrayLength
 0040BF5A    inc         eax
 0040BF5B    push        eax
 0040BF5C    mov         eax,esi
 0040BF5E    call        @WStrToPWChar
 0040BF63    push        eax
 0040BF64    mov         eax,dword ptr [ebx]
 0040BF66    call        @LStrToPChar
 0040BF6B    pop         ecx
 0040BF6C    pop         edx
 0040BF6D    call        0040BDA8
 0040BF72    mov         esi,eax
 0040BF74    cmp         esi,1
>0040BF77    jle         0040BF85
 0040BF79    mov         edx,esi
 0040BF7B    dec         edx
 0040BF7C    mov         eax,ebx
 0040BF7E    call        @LStrSetLength
>0040BF83    jmp         0040BF96
 0040BF85    mov         eax,ebx
 0040BF87    call        @LStrClr
 0040BF8C    pop         esi
 0040BF8D    pop         ebx
 0040BF8E    ret
 0040BF8F    mov         eax,ebx
 0040BF91    call        @LStrClr
 0040BF96    pop         esi
 0040BF97    pop         ebx
 0040BF98    ret
*}
end;

//0040BFC0
{*function sub_0040BFC0(?:?; ?:?):?;
begin
 0040BFC0    push        ebx
 0040BFC1    push        esi
 0040BFC2    push        edi
 0040BFC3    push        ecx
 0040BFC4    mov         byte ptr [esp],dl
 0040BFC7    mov         edi,eax
 0040BFC9    mov         eax,edi
 0040BFCB    xor         edx,edx
 0040BFCD    call        @WStrCmp
>0040BFD2    je          0040BFEC
 0040BFD4    test        byte ptr [edi+1],0FF
>0040BFD8    jne         0040BFF0
 0040BFDA    mov         al,byte ptr [edi]
 0040BFDC    add         al,0BF
 0040BFDE    sub         al,1A
>0040BFE0    jb          0040BFF0
 0040BFE2    sub         al,4
>0040BFE4    je          0040BFF0
 0040BFE6    add         al,0FE
 0040BFE8    sub         al,1A
>0040BFEA    jb          0040BFF0
 0040BFEC    xor         ebx,ebx
>0040BFEE    jmp         0040BFF2
 0040BFF0    mov         bl,1
 0040BFF2    test        bl,bl
>0040BFF4    je          0040C048
 0040BFF6    mov         eax,edi
 0040BFF8    call        @WStrLen
 0040BFFD    mov         esi,eax
 0040BFFF    sub         esi,2
>0040C002    jl          0040C048
 0040C004    inc         esi
 0040C005    mov         eax,2
 0040C00A    test        byte ptr [edi+eax*2-1],0FF
>0040C00F    jne         0040C044
 0040C011    mov         dl,byte ptr [edi+eax*2-2]
 0040C015    add         dl,0D0
 0040C018    sub         dl,0A
>0040C01B    jb          0040C044
 0040C01D    add         dl,0F9
 0040C020    sub         dl,1A
>0040C023    jb          0040C044
 0040C025    sub         dl,4
>0040C028    je          0040C044
 0040C02A    add         dl,0FE
 0040C02D    sub         dl,1A
>0040C030    jb          0040C044
 0040C032    cmp         word ptr [edi+eax*2-2],2E
>0040C038    jne         0040C040
 0040C03A    cmp         byte ptr [esp],0
>0040C03E    jne         0040C044
 0040C040    xor         ebx,ebx
>0040C042    jmp         0040C048
 0040C044    inc         eax
 0040C045    dec         esi
>0040C046    jne         0040C00A
 0040C048    mov         eax,ebx
 0040C04A    pop         edx
 0040C04B    pop         edi
 0040C04C    pop         esi
 0040C04D    pop         ebx
 0040C04E    ret
end;*}

//0040C050
{*procedure sub_0040C050(?:WideString; ?:?);
begin
 0040C050    push        ebx
 0040C051    push        esi
 0040C052    mov         esi,edx
 0040C054    mov         ebx,eax
 0040C056    mov         eax,esi
 0040C058    mov         edx,ebx
 0040C05A    call        @WStrAsg
 0040C05F    mov         eax,dword ptr [esi]
 0040C061    call        @WStrLen
 0040C066    mov         ebx,eax
 0040C068    cmp         ebx,1
>0040C06B    jl          0040C08D
 0040C06D    mov         eax,dword ptr [esi]
 0040C06F    cmp         word ptr [eax+ebx*2-2],5C
>0040C075    jne         0040C088
 0040C077    mov         eax,esi
 0040C079    mov         ecx,ebx
 0040C07B    mov         edx,1
 0040C080    call        @WStrDelete
 0040C085    pop         esi
 0040C086    pop         ebx
 0040C087    ret
 0040C088    dec         ebx
 0040C089    test        ebx,ebx
>0040C08B    jne         0040C06D
 0040C08D    pop         esi
 0040C08E    pop         ebx
 0040C08F    ret
end;*}

//0040C090
{*procedure sub_0040C090(?:WideString; ?:?);
begin
 0040C090    push        ebx
 0040C091    push        esi
 0040C092    mov         ebx,edx
 0040C094    mov         esi,eax
 0040C096    mov         eax,ebx
 0040C098    mov         edx,esi
 0040C09A    call        @WStrAsg
 0040C09F    mov         eax,dword ptr [ebx]
 0040C0A1    call        @WStrLen
 0040C0A6    cmp         eax,1
>0040C0A9    jl          0040C0CC
 0040C0AB    mov         edx,dword ptr [ebx]
 0040C0AD    cmp         word ptr [edx+eax*2-2],5C
>0040C0B3    jne         0040C0C7
 0040C0B5    lea         edx,[eax+1]
 0040C0B8    mov         eax,ebx
 0040C0BA    mov         ecx,7FFFFFFF
 0040C0BF    call        @WStrDelete
 0040C0C4    pop         esi
 0040C0C5    pop         ebx
 0040C0C6    ret
 0040C0C7    dec         eax
 0040C0C8    test        eax,eax
>0040C0CA    jne         0040C0AB
 0040C0CC    mov         eax,ebx
 0040C0CE    call        @WStrClr
 0040C0D3    pop         esi
 0040C0D4    pop         ebx
 0040C0D5    ret
end;*}

//0040C0D8
{*procedure sub_0040C0D8(?:?; ?:?);
begin
 0040C0D8    push        ebp
 0040C0D9    mov         ebp,esp
 0040C0DB    push        0
 0040C0DD    push        ebx
 0040C0DE    push        esi
 0040C0DF    push        edi
 0040C0E0    mov         ebx,edx
 0040C0E2    mov         esi,eax
 0040C0E4    xor         eax,eax
 0040C0E6    push        ebp
 0040C0E7    push        40C1A5
 0040C0EC    push        dword ptr fs:[eax]
 0040C0EF    mov         dword ptr fs:[eax],esp
 0040C0F2    mov         eax,ebx
 0040C0F4    mov         edx,esi
 0040C0F6    call        @WStrAsg
 0040C0FB    mov         eax,dword ptr [ebx]
 0040C0FD    call        @WStrLen
 0040C102    cmp         eax,2
>0040C105    jl          0040C18F
 0040C10B    mov         eax,dword ptr [ebx]
 0040C10D    mov         si,word ptr [eax]
 0040C110    cmp         si,5C
>0040C114    jne         0040C165
 0040C116    mov         eax,dword ptr [ebx]
 0040C118    cmp         word ptr [eax+2],5C
>0040C11D    jne         0040C165
 0040C11F    xor         edi,edi
 0040C121    mov         eax,dword ptr [ebx]
 0040C123    call        @WStrLen
 0040C128    sub         eax,4
>0040C12B    jl          0040C157
 0040C12D    inc         eax
 0040C12E    mov         esi,4
 0040C133    mov         edx,dword ptr [ebx]
 0040C135    cmp         word ptr [edx+esi*2-2],5C
>0040C13B    jne         0040C153
 0040C13D    inc         edi
 0040C13E    cmp         edi,2
>0040C141    jne         0040C153
 0040C143    mov         eax,ebx
 0040C145    mov         ecx,7FFFFFFF
 0040C14A    mov         edx,esi
 0040C14C    call        @WStrDelete
>0040C151    jmp         0040C157
 0040C153    inc         esi
 0040C154    dec         eax
>0040C155    jne         0040C133
 0040C157    mov         eax,ebx
 0040C159    mov         edx,40C1B8;'\'
 0040C15E    call        @WStrCat
>0040C163    jmp         0040C18F
 0040C165    mov         eax,dword ptr [ebx]
 0040C167    cmp         word ptr [eax+2],3A
>0040C16C    jne         0040C18F
 0040C16E    lea         eax,[ebp-4]
 0040C171    mov         edx,esi
 0040C173    call        @LStrFromWChar
 0040C178    lea         eax,[ebp-4]
 0040C17B    mov         edx,40C1C4;':\'
 0040C180    call        @LStrCat
 0040C185    mov         edx,dword ptr [ebp-4]
 0040C188    mov         eax,ebx
 0040C18A    call        @WStrFromLStr
 0040C18F    xor         eax,eax
 0040C191    pop         edx
 0040C192    pop         ecx
 0040C193    pop         ecx
 0040C194    mov         dword ptr fs:[eax],edx
 0040C197    push        40C1AC
 0040C19C    lea         eax,[ebp-4]
 0040C19F    call        @LStrClr
 0040C1A4    ret
>0040C1A5    jmp         @HandleFinally
>0040C1AA    jmp         0040C19C
 0040C1AC    pop         edi
 0040C1AD    pop         esi
 0040C1AE    pop         ebx
 0040C1AF    pop         ecx
 0040C1B0    pop         ebp
 0040C1B1    ret
end;*}

//0040C1C8
{*procedure sub_0040C1C8(?:?; ?:?);
begin
 0040C1C8    push        ebx
 0040C1C9    push        esi
 0040C1CA    push        edi
 0040C1CB    mov         edi,edx
 0040C1CD    mov         esi,eax
 0040C1CF    mov         eax,edi
 0040C1D1    call        @WStrClr
 0040C1D6    mov         eax,esi
 0040C1D8    call        @WStrLen
 0040C1DD    mov         ebx,eax
 0040C1DF    cmp         ebx,1
>0040C1E2    jl          0040C202
 0040C1E4    cmp         word ptr [esi+ebx*2-2],2E
>0040C1EA    jne         0040C1FD
 0040C1EC    push        edi
 0040C1ED    mov         ecx,7FFFFFFF
 0040C1F2    mov         edx,ebx
 0040C1F4    mov         eax,esi
 0040C1F6    call        @WStrCopy
>0040C1FB    jmp         0040C202
 0040C1FD    dec         ebx
 0040C1FE    test        ebx,ebx
>0040C200    jne         0040C1E4
 0040C202    pop         edi
 0040C203    pop         esi
 0040C204    pop         ebx
 0040C205    ret
end;*}

Initialization
Finalization
//0040C208
{*
 0040C208    push        ebp
 0040C209    mov         ebp,esp
 0040C20B    xor         eax,eax
 0040C20D    push        ebp
 0040C20E    push        40C27F
 0040C213    push        dword ptr fs:[eax]
 0040C216    mov         dword ptr fs:[eax],esp
 0040C219    inc         dword ptr ds:[55C67C]
>0040C21F    jne         0040C271
 0040C221    mov         eax,53D39C;^#2+<;1:"&u0'':'u; 870''
 0040C226    call        @LStrClr
 0040C22B    mov         eax,53D398;^#7+!9!'+#6+!4! &'+#1+::&'':''
 0040C230    call        @LStrClr
 0040C235    mov         eax,53D394;^';0!8&2{199'
 0040C23A    call        @LStrClr
 0040C23F    mov         eax,53D390;^#2+<;1:"&u0'':'u; 870''
 0040C244    call        @LStrClr
 0040C249    mov         eax,53D38C;^#7+!9!'+#6+!4! &'+#1+::&'':''
 0040C24E    call        @LStrClr
 0040C253    mov         eax,53D388;^'"<;=!!%{199'
 0040C258    call        @LStrClr
 0040C25D    mov         eax,53D384;^';0!8&2{199'
 0040C262    call        @LStrClr
 0040C267    mov         eax,53D17C;^';!199{199'
 0040C26C    call        @LStrClr
 0040C271    xor         eax,eax
 0040C273    pop         edx
 0040C274    pop         ecx
 0040C275    pop         ecx
 0040C276    mov         dword ptr fs:[eax],edx
 0040C279    push        40C286
 0040C27E    ret
>0040C27F    jmp         @HandleFinally
>0040C284    jmp         0040C27E
 0040C286    pop         ebp
 0040C287    ret
*}
end.