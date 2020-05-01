//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit94;

interface

uses
  SysUtils, Classes;

type
  TPreparedPacket = array of ?;
//elSize = 1
//varType equivalent: varByte;
    //procedure sub_00520B30(?:?; ?:?; ?:?);//00520B30
    //procedure sub_00520C28(?:?; ?:?);//00520C28
    //procedure sub_00520D60(?:?; ?:dword; ?:?);//00520D60
    //procedure sub_00520E40(?:?; ?:dword; ?:?; ?:?);//00520E40
    //procedure sub_00520EC4(?:dword; ?:?; ?:Integer; ?:?);//00520EC4
    //procedure sub_00520F3C(?:dword; ?:?; ?:?);//00520F3C
    //procedure sub_00520FB0(?:?);//00520FB0
    //procedure sub_0052102C(?:?; ?:?);//0052102C
    //procedure sub_00521120(?:String; ?:?);//00521120
    //procedure sub_00521288(?:AnsiString; ?:?);//00521288
    //procedure sub_00521338(?:Int64; ?:?; ?:?; ?:?);//00521338
    //procedure sub_005213C4(?:?; ?:?);//005213C4
    //procedure sub_00521488(?:?; ?:?; ?:?);//00521488
    //procedure sub_00521500(?:?);//00521500
    //procedure sub_00521568(?:?; ?:?; ?:?; ?:?; ?:?);//00521568

implementation

//00520B30
{*procedure sub_00520B30(?:?; ?:?; ?:?);
begin
 00520B30    push        ebp
 00520B31    mov         ebp,esp
 00520B33    add         esp,0FFFFFFE8
 00520B36    push        ebx
 00520B37    xor         ebx,ebx
 00520B39    mov         dword ptr [ebp-18],ebx
 00520B3C    mov         dword ptr [ebp-0C],ecx
 00520B3F    mov         dword ptr [ebp-8],edx
 00520B42    mov         dword ptr [ebp-4],eax
 00520B45    mov         eax,dword ptr [ebp-4]
 00520B48    call        @LStrAddRef
 00520B4D    mov         eax,dword ptr [ebp-8]
 00520B50    call        @LStrAddRef
 00520B55    xor         eax,eax
 00520B57    push        ebp
 00520B58    push        520C1C
 00520B5D    push        dword ptr fs:[eax]
 00520B60    mov         dword ptr fs:[eax],esp
 00520B63    mov         eax,dword ptr [ebp-4]
 00520B66    call        @DynArrayLength
 00520B6B    mov         byte ptr [ebp-0D],al
 00520B6E    mov         eax,dword ptr [ebp-8]
 00520B71    call        @DynArrayLength
 00520B76    mov         byte ptr [ebp-0E],al
 00520B79    mov         al,byte ptr [ebp-0D]
 00520B7C    add         al,7
 00520B7E    inc         eax
 00520B7F    add         al,byte ptr [ebp-0E]
 00520B82    inc         eax
 00520B83    mov         byte ptr [ebp-0F],al
 00520B86    xor         eax,eax
 00520B88    mov         al,byte ptr [ebp-0F]
 00520B8B    push        eax
 00520B8C    lea         eax,[ebp-18]
 00520B8F    mov         ecx,1
 00520B94    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00520B9A    call        @DynArraySetLength
 00520B9F    add         esp,4
 00520BA2    mov         eax,dword ptr [ebp-18]
 00520BA5    mov         dword ptr [ebp-14],eax
 00520BA8    xor         edx,edx
 00520BAA    mov         dl,byte ptr [ebp-0F]
 00520BAD    lea         eax,[ebp-14]
 00520BB0    call        0051F4F8
 00520BB5    lea         eax,[ebp-14]
 00520BB8    mov         dl,9
 00520BBA    call        0051F4D0
 00520BBF    lea         eax,[ebp-14]
 00520BC2    mov         edx,4
 00520BC7    call        0051F5E4
 00520BCC    lea         eax,[ebp-14]
 00520BCF    mov         edx,dword ptr [ebp-4]
 00520BD2    call        0051F574
 00520BD7    lea         eax,[ebp-14]
 00520BDA    mov         edx,dword ptr [ebp-8]
 00520BDD    call        0051F574
 00520BE2    mov         eax,dword ptr [ebp-0C]
 00520BE5    mov         edx,dword ptr [ebp-18]
 00520BE8    mov         ecx,dword ptr ds:[520AF8];TPreparedPacket
 00520BEE    call        @DynArrayAsg
 00520BF3    xor         eax,eax
 00520BF5    pop         edx
 00520BF6    pop         ecx
 00520BF7    pop         ecx
 00520BF8    mov         dword ptr fs:[eax],edx
 00520BFB    push        520C23
 00520C00    lea         eax,[ebp-18]
 00520C03    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00520C09    call        @DynArrayClear
 00520C0E    lea         eax,[ebp-8]
 00520C11    mov         edx,2
 00520C16    call        @LStrArrayClr
 00520C1B    ret
>00520C1C    jmp         @HandleFinally
>00520C21    jmp         00520C00
 00520C23    pop         ebx
 00520C24    mov         esp,ebp
 00520C26    pop         ebp
 00520C27    ret
end;*}

//00520C28
{*procedure sub_00520C28(?:?; ?:?);
begin
 00520C28    push        ebp
 00520C29    mov         ebp,esp
 00520C2B    add         esp,0FFFFFFF0
 00520C2E    mov         dword ptr [ebp-8],edx
 00520C31    mov         dword ptr [ebp-4],eax
 00520C34    mov         eax,dword ptr [ebp-4]
 00520C37    call        @LStrAddRef
 00520C3C    xor         eax,eax
 00520C3E    push        ebp
 00520C3F    push        520CD1
 00520C44    push        dword ptr fs:[eax]
 00520C47    mov         dword ptr fs:[eax],esp
 00520C4A    mov         eax,dword ptr [ebp-4]
 00520C4D    call        @DynArrayLength
 00520C52    mov         byte ptr [ebp-9],al
 00520C55    mov         al,byte ptr [ebp-9]
 00520C58    add         al,8
 00520C5A    inc         eax
 00520C5B    mov         byte ptr [ebp-0A],al
 00520C5E    xor         eax,eax
 00520C60    mov         al,byte ptr [ebp-0A]
 00520C63    push        eax
 00520C64    mov         eax,dword ptr [ebp-8]
 00520C67    mov         ecx,1
 00520C6C    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00520C72    call        @DynArraySetLength
 00520C77    add         esp,4
 00520C7A    mov         eax,dword ptr [ebp-8]
 00520C7D    mov         eax,dword ptr [eax]
 00520C7F    mov         dword ptr [ebp-10],eax
 00520C82    xor         edx,edx
 00520C84    mov         dl,byte ptr [ebp-0A]
 00520C87    lea         eax,[ebp-10]
 00520C8A    call        0051F4F8
 00520C8F    lea         eax,[ebp-10]
 00520C92    mov         dl,75
 00520C94    call        0051F4D0
 00520C99    lea         eax,[ebp-10]
 00520C9C    mov         edx,4
 00520CA1    call        0051F5E4
 00520CA6    lea         eax,[ebp-10]
 00520CA9    xor         edx,edx
 00520CAB    call        0051F4D0
 00520CB0    lea         eax,[ebp-10]
 00520CB3    mov         edx,dword ptr [ebp-4]
 00520CB6    call        0051F574
 00520CBB    xor         eax,eax
 00520CBD    pop         edx
 00520CBE    pop         ecx
 00520CBF    pop         ecx
 00520CC0    mov         dword ptr fs:[eax],edx
 00520CC3    push        520CD8
 00520CC8    lea         eax,[ebp-4]
 00520CCB    call        @LStrClr
 00520CD0    ret
>00520CD1    jmp         @HandleFinally
>00520CD6    jmp         00520CC8
 00520CD8    mov         esp,ebp
 00520CDA    pop         ebp
 00520CDB    ret
end;*}

//00520D60
{*procedure sub_00520D60(?:?; ?:dword; ?:?);
begin
 00520D60    push        ebp
 00520D61    mov         ebp,esp
 00520D63    add         esp,0FFFFFFEC
 00520D66    mov         dword ptr [ebp-0C],ecx
 00520D69    mov         dword ptr [ebp-8],edx
 00520D6C    mov         byte ptr [ebp-1],al
 00520D6F    mov         byte ptr [ebp-0D],0C
 00520D73    xor         eax,eax
 00520D75    mov         al,byte ptr [ebp-0D]
 00520D78    push        eax
 00520D79    mov         eax,dword ptr [ebp-0C]
 00520D7C    mov         ecx,1
 00520D81    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00520D87    call        @DynArraySetLength
 00520D8C    add         esp,4
 00520D8F    mov         eax,dword ptr [ebp-0C]
 00520D92    mov         eax,dword ptr [eax]
 00520D94    mov         dword ptr [ebp-14],eax
 00520D97    xor         edx,edx
 00520D99    mov         dl,byte ptr [ebp-0D]
 00520D9C    lea         eax,[ebp-14]
 00520D9F    call        0051F4F8
 00520DA4    lea         eax,[ebp-14]
 00520DA7    mov         dl,5D
 00520DA9    call        0051F4D0
 00520DAE    lea         eax,[ebp-14]
 00520DB1    mov         edx,4
 00520DB6    call        0051F5E4
 00520DBB    lea         eax,[ebp-14]
 00520DBE    mov         dl,byte ptr [ebp-1]
 00520DC1    call        0051F4D0
 00520DC6    lea         eax,[ebp-14]
 00520DC9    mov         edx,dword ptr [ebp-8]
 00520DCC    call        0051F524
 00520DD1    mov         esp,ebp
 00520DD3    pop         ebp
 00520DD4    ret
end;*}

//00520E40
{*procedure sub_00520E40(?:?; ?:dword; ?:?; ?:?);
begin
 00520E40    push        ebp
 00520E41    mov         ebp,esp
 00520E43    add         esp,0FFFFFFF0
 00520E46    mov         byte ptr [ebp-9],cl
 00520E49    mov         dword ptr [ebp-8],edx
 00520E4C    mov         byte ptr [ebp-1],al
 00520E4F    mov         byte ptr [ebp-0A],0D
 00520E53    xor         eax,eax
 00520E55    mov         al,byte ptr [ebp-0A]
 00520E58    push        eax
 00520E59    mov         eax,dword ptr [ebp+8]
 00520E5C    mov         ecx,1
 00520E61    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00520E67    call        @DynArraySetLength
 00520E6C    add         esp,4
 00520E6F    mov         eax,dword ptr [ebp+8]
 00520E72    mov         eax,dword ptr [eax]
 00520E74    mov         dword ptr [ebp-10],eax
 00520E77    xor         edx,edx
 00520E79    mov         dl,byte ptr [ebp-0A]
 00520E7C    lea         eax,[ebp-10]
 00520E7F    call        0051F4F8
 00520E84    lea         eax,[ebp-10]
 00520E87    mov         dl,84
 00520E89    call        0051F4D0
 00520E8E    lea         eax,[ebp-10]
 00520E91    mov         edx,4
 00520E96    call        0051F5E4
 00520E9B    lea         eax,[ebp-10]
 00520E9E    mov         dl,byte ptr [ebp-1]
 00520EA1    call        0051F4D0
 00520EA6    lea         eax,[ebp-10]
 00520EA9    mov         dl,byte ptr [ebp-9]
 00520EAC    call        0051F4D0
 00520EB1    lea         eax,[ebp-10]
 00520EB4    mov         edx,dword ptr [ebp-8]
 00520EB7    call        0051F524
 00520EBC    mov         esp,ebp
 00520EBE    pop         ebp
 00520EBF    ret         4
end;*}

//00520EC4
{*procedure sub_00520EC4(?:dword; ?:?; ?:Integer; ?:?);
begin
 00520EC4    push        ebp
 00520EC5    mov         ebp,esp
 00520EC7    add         esp,0FFFFFFEC
 00520ECA    mov         dword ptr [ebp-0C],ecx
 00520ECD    mov         dword ptr [ebp-8],edx
 00520ED0    mov         dword ptr [ebp-4],eax
 00520ED3    mov         byte ptr [ebp-0D],0F
 00520ED7    xor         eax,eax
 00520ED9    mov         al,byte ptr [ebp-0D]
 00520EDC    push        eax
 00520EDD    mov         eax,dword ptr [ebp+8]
 00520EE0    mov         ecx,1
 00520EE5    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00520EEB    call        @DynArraySetLength
 00520EF0    add         esp,4
 00520EF3    mov         eax,dword ptr [ebp+8]
 00520EF6    mov         eax,dword ptr [eax]
 00520EF8    mov         dword ptr [ebp-14],eax
 00520EFB    xor         edx,edx
 00520EFD    mov         dl,byte ptr [ebp-0D]
 00520F00    lea         eax,[ebp-14]
 00520F03    call        0051F4F8
 00520F08    lea         eax,[ebp-14]
 00520F0B    mov         dl,62
 00520F0D    call        0051F4D0
 00520F12    lea         eax,[ebp-14]
 00520F15    mov         edx,dword ptr [ebp-4]
 00520F18    call        0051F524
 00520F1D    lea         eax,[ebp-14]
 00520F20    mov         edx,dword ptr [ebp-8]
 00520F23    call        0051F524
 00520F28    lea         eax,[ebp-14]
 00520F2B    mov         edx,dword ptr [ebp-0C]
 00520F2E    call        0051F524
 00520F33    mov         esp,ebp
 00520F35    pop         ebp
 00520F36    ret         4
end;*}

//00520F3C
{*procedure sub_00520F3C(?:dword; ?:?; ?:?);
begin
 00520F3C    push        ebp
 00520F3D    mov         ebp,esp
 00520F3F    add         esp,0FFFFFFEC
 00520F42    mov         dword ptr [ebp-0C],ecx
 00520F45    mov         word ptr [ebp-6],dx
 00520F49    mov         dword ptr [ebp-4],eax
 00520F4C    mov         byte ptr [ebp-0D],0A
 00520F50    xor         eax,eax
 00520F52    mov         al,byte ptr [ebp-0D]
 00520F55    push        eax
 00520F56    mov         eax,dword ptr [ebp-0C]
 00520F59    mov         ecx,1
 00520F5E    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00520F64    call        @DynArraySetLength
 00520F69    add         esp,4
 00520F6C    mov         eax,dword ptr [ebp-0C]
 00520F6F    mov         eax,dword ptr [eax]
 00520F71    mov         dword ptr [ebp-14],eax
 00520F74    xor         edx,edx
 00520F76    mov         dl,byte ptr [ebp-0D]
 00520F79    lea         eax,[ebp-14]
 00520F7C    call        0051F4F8
 00520F81    lea         eax,[ebp-14]
 00520F84    mov         dl,0AF
 00520F86    call        0051F4D0
 00520F8B    lea         eax,[ebp-14]
 00520F8E    mov         edx,dword ptr [ebp-4]
 00520F91    call        0051F524
 00520F96    lea         eax,[ebp-14]
 00520F99    mov         dl,20
 00520F9B    call        0051F4D0
 00520FA0    lea         eax,[ebp-14]
 00520FA3    mov         dx,word ptr [ebp-6]
 00520FA7    call        0051F4F8
 00520FAC    mov         esp,ebp
 00520FAE    pop         ebp
 00520FAF    ret
end;*}

//00520FB0
{*procedure sub_00520FB0(?:?);
begin
 00520FB0    push        ebp
 00520FB1    mov         ebp,esp
 00520FB3    add         esp,0FFFFFFF4
 00520FB6    mov         dword ptr [ebp-4],eax
 00520FB9    mov         byte ptr [ebp-5],10
 00520FBD    xor         eax,eax
 00520FBF    mov         al,byte ptr [ebp-5]
 00520FC2    push        eax
 00520FC3    mov         eax,dword ptr [ebp-4]
 00520FC6    mov         ecx,1
 00520FCB    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00520FD1    call        @DynArraySetLength
 00520FD6    add         esp,4
 00520FD9    mov         eax,dword ptr [ebp-4]
 00520FDC    mov         eax,dword ptr [eax]
 00520FDE    mov         dword ptr [ebp-0C],eax
 00520FE1    xor         edx,edx
 00520FE3    mov         dl,byte ptr [ebp-5]
 00520FE6    lea         eax,[ebp-0C]
 00520FE9    call        0051F4F8
 00520FEE    lea         eax,[ebp-0C]
 00520FF1    mov         dl,78
 00520FF3    call        0051F4D0
 00520FF8    lea         eax,[ebp-0C]
 00520FFB    mov         dl,43
 00520FFD    call        0051F4D0
 00521002    lea         eax,[ebp-0C]
 00521005    xor         edx,edx
 00521007    call        0051F524
 0052100C    lea         eax,[ebp-0C]
 0052100F    mov         edx,2
 00521014    call        0051F524
 00521019    lea         eax,[ebp-0C]
 0052101C    mov         edx,69780
 00521021    call        0051F524
 00521026    mov         esp,ebp
 00521028    pop         ebp
 00521029    ret
end;*}

//0052102C
{*procedure sub_0052102C(?:?; ?:?);
begin
 0052102C    push        ebp
 0052102D    mov         ebp,esp
 0052102F    add         esp,0FFFFFFF0
 00521032    mov         dword ptr [ebp-8],edx
 00521035    mov         dword ptr [ebp-4],eax
 00521038    mov         byte ptr [ebp-9],13
 0052103C    xor         eax,eax
 0052103E    mov         al,byte ptr [ebp-9]
 00521041    push        eax
 00521042    mov         eax,dword ptr [ebp-8]
 00521045    mov         ecx,1
 0052104A    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00521050    call        @DynArraySetLength
 00521055    add         esp,4
 00521058    mov         eax,dword ptr [ebp-8]
 0052105B    mov         eax,dword ptr [eax]
 0052105D    mov         dword ptr [ebp-10],eax
 00521060    xor         edx,edx
 00521062    mov         dl,byte ptr [ebp-9]
 00521065    lea         eax,[ebp-10]
 00521068    call        0051F4F8
 0052106D    lea         eax,[ebp-10]
 00521070    mov         dl,0C0
 00521072    call        0051F4D0
 00521077    lea         eax,[ebp-10]
 0052107A    mov         edx,4
 0052107F    call        0051F5E4
 00521084    lea         eax,[ebp-10]
 00521087    mov         edx,dword ptr [ebp-4]
 0052108A    mov         edx,dword ptr [edx+4]
 0052108D    call        0051F524
 00521092    mov         eax,dword ptr [ebp-4]
 00521095    mov         edx,dword ptr [eax+0C]
 00521098    shr         edx,5
 0052109B    lea         eax,[ebp-10]
 0052109E    call        0051F524
 005210A3    mov         eax,dword ptr [ebp-4]
 005210A6    mov         edx,dword ptr [eax+10]
 005210A9    shr         edx,5
 005210AC    lea         eax,[ebp-10]
 005210AF    call        0051F524
 005210B4    mov         esp,ebp
 005210B6    pop         ebp
 005210B7    ret
end;*}

//00521120
{*procedure sub_00521120(?:String; ?:?);
begin
 00521120    push        ebp
 00521121    mov         ebp,esp
 00521123    add         esp,0FFFFFFF0
 00521126    mov         dword ptr [ebp-8],edx
 00521129    mov         dword ptr [ebp-4],eax
 0052112C    mov         eax,dword ptr [ebp-4]
 0052112F    call        @LStrAddRef
 00521134    xor         eax,eax
 00521136    push        ebp
 00521137    push        5211B9
 0052113C    push        dword ptr fs:[eax]
 0052113F    mov         dword ptr fs:[eax],esp
 00521142    mov         eax,dword ptr [ebp-4]
 00521145    call        @DynArrayLength
 0052114A    add         al,7
 0052114C    inc         eax
 0052114D    mov         byte ptr [ebp-9],al
 00521150    xor         eax,eax
 00521152    mov         al,byte ptr [ebp-9]
 00521155    push        eax
 00521156    mov         eax,dword ptr [ebp-8]
 00521159    mov         ecx,1
 0052115E    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00521164    call        @DynArraySetLength
 00521169    add         esp,4
 0052116C    mov         eax,dword ptr [ebp-8]
 0052116F    mov         eax,dword ptr [eax]
 00521171    mov         dword ptr [ebp-10],eax
 00521174    xor         edx,edx
 00521176    mov         dl,byte ptr [ebp-9]
 00521179    lea         eax,[ebp-10]
 0052117C    call        0051F4F8
 00521181    lea         eax,[ebp-10]
 00521184    mov         dl,2C
 00521186    call        0051F4D0
 0052118B    lea         eax,[ebp-10]
 0052118E    mov         edx,4
 00521193    call        0051F5E4
 00521198    lea         eax,[ebp-10]
 0052119B    mov         edx,dword ptr [ebp-4]
 0052119E    call        0051F574
 005211A3    xor         eax,eax
 005211A5    pop         edx
 005211A6    pop         ecx
 005211A7    pop         ecx
 005211A8    mov         dword ptr fs:[eax],edx
 005211AB    push        5211C0
 005211B0    lea         eax,[ebp-4]
 005211B3    call        @LStrClr
 005211B8    ret
>005211B9    jmp         @HandleFinally
>005211BE    jmp         005211B0
 005211C0    mov         esp,ebp
 005211C2    pop         ebp
 005211C3    ret
end;*}

//00521288
{*procedure sub_00521288(?:AnsiString; ?:?);
begin
 00521288    push        ebp
 00521289    mov         ebp,esp
 0052128B    add         esp,0FFFFFFF0
 0052128E    mov         dword ptr [ebp-8],edx
 00521291    mov         dword ptr [ebp-4],eax
 00521294    mov         eax,dword ptr [ebp-4]
 00521297    call        @LStrAddRef
 0052129C    xor         eax,eax
 0052129E    push        ebp
 0052129F    push        52132B
 005212A4    push        dword ptr fs:[eax]
 005212A7    mov         dword ptr fs:[eax],esp
 005212AA    mov         eax,dword ptr [ebp-4]
 005212AD    call        @DynArrayLength
 005212B2    add         al,8
 005212B4    inc         eax
 005212B5    mov         byte ptr [ebp-9],al
 005212B8    xor         eax,eax
 005212BA    mov         al,byte ptr [ebp-9]
 005212BD    push        eax
 005212BE    mov         eax,dword ptr [ebp-8]
 005212C1    mov         ecx,1
 005212C6    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 005212CC    call        @DynArraySetLength
 005212D1    add         esp,4
 005212D4    mov         eax,dword ptr [ebp-8]
 005212D7    mov         eax,dword ptr [eax]
 005212D9    mov         dword ptr [ebp-10],eax
 005212DC    xor         edx,edx
 005212DE    mov         dl,byte ptr [ebp-9]
 005212E1    lea         eax,[ebp-10]
 005212E4    call        0051F4F8
 005212E9    lea         eax,[ebp-10]
 005212EC    mov         dl,3B
 005212EE    call        0051F4D0
 005212F3    lea         eax,[ebp-10]
 005212F6    mov         edx,4
 005212FB    call        0051F5E4
 00521300    lea         eax,[ebp-10]
 00521303    mov         dl,2
 00521305    call        0051F4D0
 0052130A    lea         eax,[ebp-10]
 0052130D    mov         edx,dword ptr [ebp-4]
 00521310    call        0051F574
 00521315    xor         eax,eax
 00521317    pop         edx
 00521318    pop         ecx
 00521319    pop         ecx
 0052131A    mov         dword ptr fs:[eax],edx
 0052131D    push        521332
 00521322    lea         eax,[ebp-4]
 00521325    call        @LStrClr
 0052132A    ret
>0052132B    jmp         @HandleFinally
>00521330    jmp         00521322
 00521332    mov         esp,ebp
 00521334    pop         ebp
 00521335    ret
end;*}

//00521338
{*procedure sub_00521338(?:Int64; ?:?; ?:?; ?:?);
begin
 00521338    push        ebp
 00521339    mov         ebp,esp
 0052133B    add         esp,0FFFFFFEC
 0052133E    mov         dword ptr [ebp-0C],ecx
 00521341    mov         dword ptr [ebp-8],edx
 00521344    mov         dword ptr [ebp-4],eax
 00521347    mov         byte ptr [ebp-0D],14
 0052134B    xor         eax,eax
 0052134D    mov         al,byte ptr [ebp-0D]
 00521350    push        eax
 00521351    mov         eax,dword ptr [ebp+8]
 00521354    mov         ecx,1
 00521359    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0052135F    call        @DynArraySetLength
 00521364    add         esp,4
 00521367    mov         eax,dword ptr [ebp+8]
 0052136A    mov         eax,dword ptr [eax]
 0052136C    mov         dword ptr [ebp-14],eax
 0052136F    xor         edx,edx
 00521371    mov         dl,byte ptr [ebp-0D]
 00521374    lea         eax,[ebp-14]
 00521377    call        0051F4F8
 0052137C    lea         eax,[ebp-14]
 0052137F    mov         dl,3B
 00521381    call        0051F4D0
 00521386    lea         eax,[ebp-14]
 00521389    mov         edx,4
 0052138E    call        0051F5E4
 00521393    lea         eax,[ebp-14]
 00521396    xor         edx,edx
 00521398    call        0051F4D0
 0052139D    lea         eax,[ebp-14]
 005213A0    mov         edx,dword ptr [ebp-4]
 005213A3    call        0051F524
 005213A8    lea         eax,[ebp-14]
 005213AB    mov         edx,dword ptr [ebp-8]
 005213AE    call        0051F524
 005213B3    lea         eax,[ebp-14]
 005213B6    mov         edx,dword ptr [ebp-0C]
 005213B9    call        0051F524
 005213BE    mov         esp,ebp
 005213C0    pop         ebp
 005213C1    ret         4
end;*}

//005213C4
{*procedure sub_005213C4(?:?; ?:?);
begin
 005213C4    push        ebp
 005213C5    mov         ebp,esp
 005213C7    add         esp,0FFFFFFF0
 005213CA    mov         dword ptr [ebp-8],edx
 005213CD    mov         byte ptr [ebp-1],al
 005213D0    mov         byte ptr [ebp-9],8
 005213D4    xor         eax,eax
 005213D6    mov         al,byte ptr [ebp-9]
 005213D9    push        eax
 005213DA    mov         eax,dword ptr [ebp-8]
 005213DD    mov         ecx,1
 005213E2    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 005213E8    call        @DynArraySetLength
 005213ED    add         esp,4
 005213F0    mov         eax,dword ptr [ebp-8]
 005213F3    mov         eax,dword ptr [eax]
 005213F5    mov         dword ptr [ebp-10],eax
 005213F8    xor         edx,edx
 005213FA    mov         dl,byte ptr [ebp-9]
 005213FD    lea         eax,[ebp-10]
 00521400    call        0051F4F8
 00521405    lea         eax,[ebp-10]
 00521408    mov         dl,23
 0052140A    call        0051F4D0
 0052140F    lea         eax,[ebp-10]
 00521412    mov         edx,4
 00521417    call        0051F5E4
 0052141C    lea         eax,[ebp-10]
 0052141F    mov         dl,byte ptr [ebp-1]
 00521422    call        0051F4D0
 00521427    mov         esp,ebp
 00521429    pop         ebp
 0052142A    ret
end;*}

//00521488
{*procedure sub_00521488(?:?; ?:?; ?:?);
begin
 00521488    push        ebp
 00521489    mov         ebp,esp
 0052148B    add         esp,0FFFFFFEC
 0052148E    mov         dword ptr [ebp-0C],ecx
 00521491    mov         dword ptr [ebp-8],edx
 00521494    mov         byte ptr [ebp-1],al
 00521497    mov         byte ptr [ebp-0D],0C
 0052149B    xor         eax,eax
 0052149D    mov         al,byte ptr [ebp-0D]
 005214A0    push        eax
 005214A1    mov         eax,dword ptr [ebp-0C]
 005214A4    mov         ecx,1
 005214A9    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 005214AF    call        @DynArraySetLength
 005214B4    add         esp,4
 005214B7    mov         eax,dword ptr [ebp-0C]
 005214BA    mov         eax,dword ptr [eax]
 005214BC    mov         dword ptr [ebp-14],eax
 005214BF    xor         edx,edx
 005214C1    mov         dl,byte ptr [ebp-0D]
 005214C4    lea         eax,[ebp-14]
 005214C7    call        0051F4F8
 005214CC    lea         eax,[ebp-14]
 005214CF    mov         dl,53
 005214D1    call        0051F4D0
 005214D6    lea         eax,[ebp-14]
 005214D9    mov         edx,4
 005214DE    call        0051F5E4
 005214E3    lea         eax,[ebp-14]
 005214E6    mov         dl,byte ptr [ebp-1]
 005214E9    call        0051F4D0
 005214EE    lea         eax,[ebp-14]
 005214F1    mov         edx,dword ptr [ebp-8]
 005214F4    call        0051F524
 005214F9    mov         esp,ebp
 005214FB    pop         ebp
 005214FC    ret
end;*}

//00521500
{*procedure sub_00521500(?:?);
begin
 00521500    push        ebp
 00521501    mov         ebp,esp
 00521503    add         esp,0FFFFFFF4
 00521506    mov         dword ptr [ebp-4],eax
 00521509    mov         byte ptr [ebp-5],0B
 0052150D    xor         eax,eax
 0052150F    mov         al,byte ptr [ebp-5]
 00521512    push        eax
 00521513    mov         eax,dword ptr [ebp-4]
 00521516    mov         ecx,1
 0052151B    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00521521    call        @DynArraySetLength
 00521526    add         esp,4
 00521529    mov         eax,dword ptr [ebp-4]
 0052152C    mov         eax,dword ptr [eax]
 0052152E    mov         dword ptr [ebp-0C],eax
 00521531    xor         edx,edx
 00521533    mov         dl,byte ptr [ebp-5]
 00521536    lea         eax,[ebp-0C]
 00521539    call        0051F4F8
 0052153E    lea         eax,[ebp-0C]
 00521541    mov         dl,5A
 00521543    call        0051F4D0
 00521548    lea         eax,[ebp-0C]
 0052154B    mov         edx,4
 00521550    call        0051F5E4
 00521555    lea         eax,[ebp-0C]
 00521558    mov         edx,1F51000A
 0052155D    call        0051F524
 00521562    mov         esp,ebp
 00521564    pop         ebp
 00521565    ret
end;*}

//00521568
{*procedure sub_00521568(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00521568    push        ebp
 00521569    mov         ebp,esp
 0052156B    add         esp,0FFFFFFF8
 0052156E    mov         byte ptr [ebp-3],cl
 00521571    mov         byte ptr [ebp-2],dl
 00521574    mov         byte ptr [ebp-1],al
 00521577    mov         byte ptr [ebp-4],0A
 0052157B    xor         eax,eax
 0052157D    mov         al,byte ptr [ebp-4]
 00521580    push        eax
 00521581    mov         eax,dword ptr [ebp+8]
 00521584    mov         ecx,1
 00521589    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0052158F    call        @DynArraySetLength
 00521594    add         esp,4
 00521597    mov         eax,dword ptr [ebp+8]
 0052159A    mov         eax,dword ptr [eax]
 0052159C    mov         dword ptr [ebp-8],eax
 0052159F    xor         edx,edx
 005215A1    mov         dl,byte ptr [ebp-4]
 005215A4    lea         eax,[ebp-8]
 005215A7    call        0051F4F8
 005215AC    cmp         byte ptr [ebp+0C],0
>005215B0    jne         005215BE
 005215B2    lea         eax,[ebp-8]
 005215B5    mov         dl,6B
 005215B7    call        0051F4D0
>005215BC    jmp         005215C8
 005215BE    lea         eax,[ebp-8]
 005215C1    mov         dl,0A2
 005215C3    call        0051F4D0
 005215C8    lea         eax,[ebp-8]
 005215CB    mov         edx,4
 005215D0    call        0051F5E4
 005215D5    lea         eax,[ebp-8]
 005215D8    mov         dl,byte ptr [ebp-1]
 005215DB    call        0051F54C
 005215E0    lea         eax,[ebp-8]
 005215E3    mov         dl,byte ptr [ebp-2]
 005215E6    call        0051F54C
 005215EB    lea         eax,[ebp-8]
 005215EE    mov         dl,byte ptr [ebp-3]
 005215F1    call        0051F54C
 005215F6    pop         ecx
 005215F7    pop         ecx
 005215F8    pop         ebp
 005215F9    ret         8
end;*}

end.