//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit83;

interface

uses
  SysUtils, Classes;

type
  TKalLispConfig = class(TObject)
  public
    f4:String;//f4
    constructor Create;//005261D4
  end;
  TLISPFileParser = class(TObject)
  public
    f4:String;//f4
    constructor Create;//00525C84
  end;
    //function sub_00525D58(?:?; ?:AnsiString):?;//00525D58
    //procedure sub_00525DE8(?:TLISPFileParser; ?:?);//00525DE8
    //procedure sub_00525EEC(?:TLISPFileParser; ?:?);//00525EEC
    //procedure sub_00525FB4(?:TLISPFileParser; ?:?);//00525FB4
    //procedure sub_005260D4(?:TLISPFileParser; ?:?);//005260D4
    procedure sub_00526460(?:TKalLispConfig);//00526460

implementation

//00525C84
constructor TLISPFileParser.Create;
begin
{*
 00525C84    push        ebp
 00525C85    mov         ebp,esp
 00525C87    add         esp,0FFFFFFF4
 00525C8A    test        dl,dl
>00525C8C    je          00525C96
 00525C8E    add         esp,0FFFFFFF0
 00525C91    call        @ClassCreate
 00525C96    mov         dword ptr [ebp-0C],ecx
 00525C99    mov         byte ptr [ebp-5],dl
 00525C9C    mov         dword ptr [ebp-4],eax
 00525C9F    mov         eax,dword ptr [ebp-0C]
 00525CA2    call        @LStrAddRef
 00525CA7    xor         eax,eax
 00525CA9    push        ebp
 00525CAA    push        525CF5
 00525CAF    push        dword ptr fs:[eax]
 00525CB2    mov         dword ptr fs:[eax],esp
 00525CB5    xor         edx,edx
 00525CB7    mov         eax,dword ptr [ebp-4]
 00525CBA    call        TObject.Create
 00525CBF    mov         eax,dword ptr [ebp-4]
 00525CC2    add         eax,4
 00525CC5    mov         edx,dword ptr [ebp-0C]
 00525CC8    call        @LStrAsg
 00525CCD    mov         dl,1
 00525CCF    mov         eax,[00522638];TTokenizer
 00525CD4    call        TTokenizer.Create;TTokenizer.Create
 00525CD9    mov         edx,dword ptr [ebp-4]
 00525CDC    mov         dword ptr [edx+8],eax
 00525CDF    xor         eax,eax
 00525CE1    pop         edx
 00525CE2    pop         ecx
 00525CE3    pop         ecx
 00525CE4    mov         dword ptr fs:[eax],edx
 00525CE7    push        525CFC
 00525CEC    lea         eax,[ebp-0C]
 00525CEF    call        @LStrClr
 00525CF4    ret
>00525CF5    jmp         @HandleFinally
>00525CFA    jmp         00525CEC
 00525CFC    mov         eax,dword ptr [ebp-4]
 00525CFF    cmp         byte ptr [ebp-5],0
>00525D03    je          00525D14
 00525D05    call        @AfterConstruction
 00525D0A    pop         dword ptr fs:[0]
 00525D11    add         esp,0C
 00525D14    mov         eax,dword ptr [ebp-4]
 00525D17    mov         esp,ebp
 00525D19    pop         ebp
 00525D1A    ret
*}
end;

//00525D58
{*function sub_00525D58(?:?; ?:AnsiString):?;
begin
 00525D58    push        ebp
 00525D59    mov         ebp,esp
 00525D5B    add         esp,0FFFFFFF4
 00525D5E    push        ebx
 00525D5F    push        esi
 00525D60    push        edi
 00525D61    mov         dword ptr [ebp-8],edx
 00525D64    mov         dword ptr [ebp-4],eax
 00525D67    mov         eax,dword ptr [ebp-8]
 00525D6A    call        @LStrAddRef
 00525D6F    xor         eax,eax
 00525D71    push        ebp
 00525D72    push        525DD6
 00525D77    push        dword ptr fs:[eax]
 00525D7A    mov         dword ptr fs:[eax],esp
 00525D7D    mov         byte ptr [ebp-9],1
 00525D81    xor         eax,eax
 00525D83    push        ebp
 00525D84    push        525DA7
 00525D89    push        dword ptr fs:[eax]
 00525D8C    mov         dword ptr fs:[eax],esp
 00525D8F    mov         eax,dword ptr [ebp-4]
 00525D92    mov         eax,dword ptr [eax+8]
 00525D95    mov         edx,dword ptr [ebp-8]
 00525D98    call        00522900
 00525D9D    xor         eax,eax
 00525D9F    pop         edx
 00525DA0    pop         ecx
 00525DA1    pop         ecx
 00525DA2    mov         dword ptr fs:[eax],edx
>00525DA5    jmp         00525DC0
>00525DA7    jmp         @HandleAnyException
 00525DAC    mov         byte ptr [ebp-9],0
 00525DB0    mov         eax,dword ptr [ebp-4]
 00525DB3    mov         eax,dword ptr [eax+8]
 00525DB6    call        TObject.Free
 00525DBB    call        @DoneExcept
 00525DC0    xor         eax,eax
 00525DC2    pop         edx
 00525DC3    pop         ecx
 00525DC4    pop         ecx
 00525DC5    mov         dword ptr fs:[eax],edx
 00525DC8    push        525DDD
 00525DCD    lea         eax,[ebp-8]
 00525DD0    call        @LStrClr
 00525DD5    ret
>00525DD6    jmp         @HandleFinally
>00525DDB    jmp         00525DCD
 00525DDD    mov         al,byte ptr [ebp-9]
 00525DE0    pop         edi
 00525DE1    pop         esi
 00525DE2    pop         ebx
 00525DE3    mov         esp,ebp
 00525DE5    pop         ebp
 00525DE6    ret
end;*}

//00525DE8
{*procedure sub_00525DE8(?:TLISPFileParser; ?:?);
begin
 00525DE8    push        ebp
 00525DE9    mov         ebp,esp
 00525DEB    add         esp,0FFFFFFEC
 00525DEE    xor         ecx,ecx
 00525DF0    mov         dword ptr [ebp-14],ecx
 00525DF3    mov         dword ptr [ebp-8],edx
 00525DF6    mov         dword ptr [ebp-4],eax
 00525DF9    xor         eax,eax
 00525DFB    push        ebp
 00525DFC    push        525EA0
 00525E01    push        dword ptr fs:[eax]
 00525E04    mov         dword ptr fs:[eax],esp
 00525E07    lea         eax,[ebp-14]
 00525E0A    mov         ecx,525EB4;'inititem.dat.txt'
 00525E0F    mov         edx,dword ptr [ebp-4]
 00525E12    mov         edx,dword ptr [edx+4]
 00525E15    call        @LStrCat3
 00525E1A    mov         edx,dword ptr [ebp-14]
 00525E1D    mov         eax,dword ptr [ebp-4]
 00525E20    call        00525D58
 00525E25    mov         eax,dword ptr [ebp-4]
 00525E28    mov         eax,dword ptr [eax+8]
 00525E2B    call        0052277C
 00525E30    mov         byte ptr [ebp-9],al
 00525E33    mov         al,byte ptr [ebp-9]
 00525E36    sub         al,1
>00525E38    jb          00525E8A
 00525E3A    sub         al,3
>00525E3C    je          00525E5C
 00525E3E    dec         al
>00525E40    je          00525E44
>00525E42    jmp         00525E25
 00525E44    mov         ecx,525ED0;'Nieoczekiwany koniec pliku'
 00525E49    mov         dl,1
 00525E4B    mov         eax,[004653B4];Exception
 00525E50    call        Exception.Create;Exception.Create
 00525E55    call        @RaiseExcept
>00525E5A    jmp         00525E25
 00525E5C    mov         eax,dword ptr [ebp-4]
 00525E5F    mov         eax,dword ptr [eax+8]
 00525E62    push        eax
 00525E63    mov         cl,byte ptr [ebp-9]
 00525E66    mov         dl,1
 00525E68    mov         eax,[005232C8];TLISPListElement
 00525E6D    call        TLISPListElement.Create;TLISPListElement.Create
 00525E72    mov         dword ptr [ebp-10],eax
 00525E75    mov         edx,dword ptr [ebp-10]
 00525E78    mov         eax,dword ptr [ebp-8]
 00525E7B    call        00524E00
 00525E80    mov         eax,dword ptr [ebp-10]
 00525E83    call        TObject.Free
>00525E88    jmp         00525E25
 00525E8A    xor         eax,eax
 00525E8C    pop         edx
 00525E8D    pop         ecx
 00525E8E    pop         ecx
 00525E8F    mov         dword ptr fs:[eax],edx
 00525E92    push        525EA7
 00525E97    lea         eax,[ebp-14]
 00525E9A    call        @LStrClr
 00525E9F    ret
>00525EA0    jmp         @HandleFinally
>00525EA5    jmp         00525E97
 00525EA7    mov         esp,ebp
 00525EA9    pop         ebp
 00525EAA    ret
end;*}

//00525EEC
{*procedure sub_00525EEC(?:TLISPFileParser; ?:?);
begin
 00525EEC    push        ebp
 00525EED    mov         ebp,esp
 00525EEF    add         esp,0FFFFFFEC
 00525EF2    xor         ecx,ecx
 00525EF4    mov         dword ptr [ebp-14],ecx
 00525EF7    mov         dword ptr [ebp-8],edx
 00525EFA    mov         dword ptr [ebp-4],eax
 00525EFD    xor         eax,eax
 00525EFF    push        ebp
 00525F00    push        525F91
 00525F05    push        dword ptr fs:[eax]
 00525F08    mov         dword ptr fs:[eax],esp
 00525F0B    lea         eax,[ebp-14]
 00525F0E    mov         ecx,525FA4;'macro.dat.txt'
 00525F13    mov         edx,dword ptr [ebp-4]
 00525F16    mov         edx,dword ptr [edx+4]
 00525F19    call        @LStrCat3
 00525F1E    mov         edx,dword ptr [ebp-14]
 00525F21    mov         eax,dword ptr [ebp-4]
 00525F24    call        00525D58
 00525F29    mov         eax,dword ptr [ebp-4]
 00525F2C    mov         eax,dword ptr [eax+8]
 00525F2F    call        0052277C
 00525F34    mov         byte ptr [ebp-9],al
 00525F37    xor         eax,eax
 00525F39    mov         dword ptr [ebp-10],eax
 00525F3C    mov         al,byte ptr [ebp-9]
 00525F3F    sub         al,1
>00525F41    jb          00525F7B
 00525F43    sub         al,3
>00525F45    je          00525F4D
 00525F47    dec         al
>00525F49    je          00525F7B
>00525F4B    jmp         00525F29
 00525F4D    mov         eax,dword ptr [ebp-4]
 00525F50    mov         eax,dword ptr [eax+8]
 00525F53    push        eax
 00525F54    mov         cl,byte ptr [ebp-9]
 00525F57    mov         dl,1
 00525F59    mov         eax,[005232C8];TLISPListElement
 00525F5E    call        TLISPListElement.Create;TLISPListElement.Create
 00525F63    mov         dword ptr [ebp-10],eax
 00525F66    mov         edx,dword ptr [ebp-10]
 00525F69    mov         eax,dword ptr [ebp-8]
 00525F6C    call        00525680
 00525F71    mov         eax,dword ptr [ebp-10]
 00525F74    call        TObject.Free
>00525F79    jmp         00525F29
 00525F7B    xor         eax,eax
 00525F7D    pop         edx
 00525F7E    pop         ecx
 00525F7F    pop         ecx
 00525F80    mov         dword ptr fs:[eax],edx
 00525F83    push        525F98
 00525F88    lea         eax,[ebp-14]
 00525F8B    call        @LStrClr
 00525F90    ret
>00525F91    jmp         @HandleFinally
>00525F96    jmp         00525F88
 00525F98    mov         esp,ebp
 00525F9A    pop         ebp
 00525F9B    ret
end;*}

//00525FB4
{*procedure sub_00525FB4(?:TLISPFileParser; ?:?);
begin
 00525FB4    push        ebp
 00525FB5    mov         ebp,esp
 00525FB7    add         esp,0FFFFFFD4
 00525FBA    xor         ecx,ecx
 00525FBC    mov         dword ptr [ebp-2C],ecx
 00525FBF    mov         dword ptr [ebp-8],edx
 00525FC2    mov         dword ptr [ebp-4],eax
 00525FC5    xor         eax,eax
 00525FC7    push        ebp
 00525FC8    push        52608B
 00525FCD    push        dword ptr fs:[eax]
 00525FD0    mov         dword ptr fs:[eax],esp
 00525FD3    lea         eax,[ebp-2C]
 00525FD6    mov         ecx,5260A0;'message.dat.txt'
 00525FDB    mov         edx,dword ptr [ebp-4]
 00525FDE    mov         edx,dword ptr [edx+4]
 00525FE1    call        @LStrCat3
 00525FE6    mov         edx,dword ptr [ebp-2C]
 00525FE9    mov         eax,dword ptr [ebp-4]
 00525FEC    call        00525D58
 00525FF1    lea         eax,[ebp-18]
 00525FF4    push        eax
 00525FF5    call        kernel32.QueryPerformanceFrequency
 00525FFA    test        eax,eax
>00525FFC    je          00526075
 00525FFE    lea         eax,[ebp-20]
 00526001    push        eax
 00526002    call        kernel32.QueryPerformanceCounter
 00526007    mov         eax,dword ptr [ebp-4]
 0052600A    mov         eax,dword ptr [eax+8]
 0052600D    call        0052277C
 00526012    mov         byte ptr [ebp-9],al
 00526015    mov         al,byte ptr [ebp-9]
 00526018    sub         al,1
>0052601A    jb          0052606C
 0052601C    sub         al,3
>0052601E    je          0052603E
 00526020    dec         al
>00526022    je          00526026
>00526024    jmp         00526007
 00526026    mov         ecx,5260B8;'Nieoczekiwany koniec pliku'
 0052602B    mov         dl,1
 0052602D    mov         eax,[004653B4];Exception
 00526032    call        Exception.Create;Exception.Create
 00526037    call        @RaiseExcept
>0052603C    jmp         00526007
 0052603E    mov         eax,dword ptr [ebp-4]
 00526041    mov         eax,dword ptr [eax+8]
 00526044    push        eax
 00526045    mov         cl,byte ptr [ebp-9]
 00526048    mov         dl,1
 0052604A    mov         eax,[005232C8];TLISPListElement
 0052604F    call        TLISPListElement.Create;TLISPListElement.Create
 00526054    mov         dword ptr [ebp-10],eax
 00526057    mov         edx,dword ptr [ebp-10]
 0052605A    mov         eax,dword ptr [ebp-8]
 0052605D    call        00523EBC
 00526062    mov         eax,dword ptr [ebp-10]
 00526065    call        TObject.Free
>0052606A    jmp         00526007
 0052606C    lea         eax,[ebp-28]
 0052606F    push        eax
 00526070    call        kernel32.QueryPerformanceCounter
 00526075    xor         eax,eax
 00526077    pop         edx
 00526078    pop         ecx
 00526079    pop         ecx
 0052607A    mov         dword ptr fs:[eax],edx
 0052607D    push        526092
 00526082    lea         eax,[ebp-2C]
 00526085    call        @LStrClr
 0052608A    ret
>0052608B    jmp         @HandleFinally
>00526090    jmp         00526082
 00526092    mov         esp,ebp
 00526094    pop         ebp
 00526095    ret
end;*}

//005260D4
{*procedure sub_005260D4(?:TLISPFileParser; ?:?);
begin
 005260D4    push        ebp
 005260D5    mov         ebp,esp
 005260D7    add         esp,0FFFFFFEC
 005260DA    xor         ecx,ecx
 005260DC    mov         dword ptr [ebp-14],ecx
 005260DF    mov         dword ptr [ebp-8],edx
 005260E2    mov         dword ptr [ebp-4],eax
 005260E5    xor         eax,eax
 005260E7    push        ebp
 005260E8    push        52618C
 005260ED    push        dword ptr fs:[eax]
 005260F0    mov         dword ptr fs:[eax],esp
 005260F3    lea         eax,[ebp-14]
 005260F6    mov         ecx,5261A0;'prefix.dat.txt'
 005260FB    mov         edx,dword ptr [ebp-4]
 005260FE    mov         edx,dword ptr [edx+4]
 00526101    call        @LStrCat3
 00526106    mov         edx,dword ptr [ebp-14]
 00526109    mov         eax,dword ptr [ebp-4]
 0052610C    call        00525D58
 00526111    mov         eax,dword ptr [ebp-4]
 00526114    mov         eax,dword ptr [eax+8]
 00526117    call        0052277C
 0052611C    mov         byte ptr [ebp-9],al
 0052611F    mov         al,byte ptr [ebp-9]
 00526122    sub         al,1
>00526124    jb          00526176
 00526126    sub         al,3
>00526128    je          00526148
 0052612A    dec         al
>0052612C    je          00526130
>0052612E    jmp         00526111
 00526130    mov         ecx,5261B8;'Nieoczekiwany koniec pliku'
 00526135    mov         dl,1
 00526137    mov         eax,[004653B4];Exception
 0052613C    call        Exception.Create;Exception.Create
 00526141    call        @RaiseExcept
>00526146    jmp         00526111
 00526148    mov         eax,dword ptr [ebp-4]
 0052614B    mov         eax,dword ptr [eax+8]
 0052614E    push        eax
 0052614F    mov         cl,byte ptr [ebp-9]
 00526152    mov         dl,1
 00526154    mov         eax,[005232C8];TLISPListElement
 00526159    call        TLISPListElement.Create;TLISPListElement.Create
 0052615E    mov         dword ptr [ebp-10],eax
 00526161    mov         edx,dword ptr [ebp-10]
 00526164    mov         eax,dword ptr [ebp-8]
 00526167    call        00524210
 0052616C    mov         eax,dword ptr [ebp-10]
 0052616F    call        TObject.Free
>00526174    jmp         00526111
 00526176    xor         eax,eax
 00526178    pop         edx
 00526179    pop         ecx
 0052617A    pop         ecx
 0052617B    mov         dword ptr fs:[eax],edx
 0052617E    push        526193
 00526183    lea         eax,[ebp-14]
 00526186    call        @LStrClr
 0052618B    ret
>0052618C    jmp         @HandleFinally
>00526191    jmp         00526183
 00526193    mov         esp,ebp
 00526195    pop         ebp
 00526196    ret
end;*}

//005261D4
constructor TKalLispConfig.Create;
begin
{*
 005261D4    push        ebp
 005261D5    mov         ebp,esp
 005261D7    add         esp,0FFFFFFF4
 005261DA    push        ebx
 005261DB    push        esi
 005261DC    push        edi
 005261DD    test        dl,dl
>005261DF    je          005261E9
 005261E1    add         esp,0FFFFFFF0
 005261E4    call        @ClassCreate
 005261E9    mov         dword ptr [ebp-0C],ecx
 005261EC    mov         byte ptr [ebp-5],dl
 005261EF    mov         dword ptr [ebp-4],eax
 005261F2    mov         eax,dword ptr [ebp-0C]
 005261F5    call        @LStrAddRef
 005261FA    xor         eax,eax
 005261FC    push        ebp
 005261FD    push        526360
 00526202    push        dword ptr fs:[eax]
 00526205    mov         dword ptr fs:[eax],esp
 00526208    mov         eax,dword ptr [ebp-4]
 0052620B    add         eax,4
 0052620E    mov         edx,dword ptr [ebp-0C]
 00526211    call        @LStrAsg
 00526216    xor         eax,eax
 00526218    push        ebp
 00526219    push        526240
 0052621E    push        dword ptr fs:[eax]
 00526221    mov         dword ptr fs:[eax],esp
 00526224    mov         dl,1
 00526226    mov         eax,[00523AD0];TLispMessages
 0052622B    call        TLispMessages.Create;TLispMessages.Create
 00526230    mov         edx,dword ptr [ebp-4]
 00526233    mov         dword ptr [edx+8],eax
 00526236    xor         eax,eax
 00526238    pop         edx
 00526239    pop         ecx
 0052623A    pop         ecx
 0052623B    mov         dword ptr fs:[eax],edx
>0052623E    jmp         00526260
>00526240    jmp         @HandleAnyException
 00526245    mov         ecx,526394;'TLispMessages error'
 0052624A    mov         dl,1
 0052624C    mov         eax,[004653B4];Exception
 00526251    call        Exception.Create;Exception.Create
 00526256    call        @RaiseExcept
 0052625B    call        @DoneExcept
 00526260    xor         eax,eax
 00526262    push        ebp
 00526263    push        526290
 00526268    push        dword ptr fs:[eax]
 0052626B    mov         dword ptr fs:[eax],esp
 0052626E    mov         eax,dword ptr [ebp-4]
 00526271    mov         ecx,dword ptr [eax+8]
 00526274    mov         dl,1
 00526276    mov         eax,[00523F9C];TLispPrefixes
 0052627B    call        TLispPrefixes.Create;TLispPrefixes.Create
 00526280    mov         edx,dword ptr [ebp-4]
 00526283    mov         dword ptr [edx+0C],eax
 00526286    xor         eax,eax
 00526288    pop         edx
 00526289    pop         ecx
 0052628A    pop         ecx
 0052628B    mov         dword ptr fs:[eax],edx
>0052628E    jmp         005262B0
>00526290    jmp         @HandleAnyException
 00526295    mov         ecx,5263B0;'TLispPrefixes error'
 0052629A    mov         dl,1
 0052629C    mov         eax,[004653B4];Exception
 005262A1    call        Exception.Create;Exception.Create
 005262A6    call        @RaiseExcept
 005262AB    call        @DoneExcept
 005262B0    xor         eax,eax
 005262B2    push        ebp
 005262B3    push        5262E0
 005262B8    push        dword ptr fs:[eax]
 005262BB    mov         dword ptr fs:[eax],esp
 005262BE    mov         eax,dword ptr [ebp-4]
 005262C1    mov         ecx,dword ptr [eax+8]
 005262C4    mov         dl,1
 005262C6    mov         eax,[005247E8];TLispInitItems
 005262CB    call        TLispInitItems.Create;TLispInitItems.Create
 005262D0    mov         edx,dword ptr [ebp-4]
 005262D3    mov         dword ptr [edx+10],eax
 005262D6    xor         eax,eax
 005262D8    pop         edx
 005262D9    pop         ecx
 005262DA    pop         ecx
 005262DB    mov         dword ptr fs:[eax],edx
>005262DE    jmp         00526300
>005262E0    jmp         @HandleAnyException
 005262E5    mov         ecx,5263CC;'FLispInitItems error'
 005262EA    mov         dl,1
 005262EC    mov         eax,[004653B4];Exception
 005262F1    call        Exception.Create;Exception.Create
 005262F6    call        @RaiseExcept
 005262FB    call        @DoneExcept
 00526300    xor         eax,eax
 00526302    push        ebp
 00526303    push        52632A
 00526308    push        dword ptr fs:[eax]
 0052630B    mov         dword ptr fs:[eax],esp
 0052630E    mov         dl,1
 00526310    mov         eax,[005252A8];TLispMacros
 00526315    call        TLispMacros.Create;TLispMacros.Create
 0052631A    mov         edx,dword ptr [ebp-4]
 0052631D    mov         dword ptr [edx+14],eax
 00526320    xor         eax,eax
 00526322    pop         edx
 00526323    pop         ecx
 00526324    pop         ecx
 00526325    mov         dword ptr fs:[eax],edx
>00526328    jmp         0052634A
>0052632A    jmp         @HandleAnyException
 0052632F    mov         ecx,5263EC;'TLispMacros error'
 00526334    mov         dl,1
 00526336    mov         eax,[004653B4];Exception
 0052633B    call        Exception.Create;Exception.Create
 00526340    call        @RaiseExcept
 00526345    call        @DoneExcept
 0052634A    xor         eax,eax
 0052634C    pop         edx
 0052634D    pop         ecx
 0052634E    pop         ecx
 0052634F    mov         dword ptr fs:[eax],edx
 00526352    push        526367
 00526357    lea         eax,[ebp-0C]
 0052635A    call        @LStrClr
 0052635F    ret
>00526360    jmp         @HandleFinally
>00526365    jmp         00526357
 00526367    mov         eax,dword ptr [ebp-4]
 0052636A    cmp         byte ptr [ebp-5],0
>0052636E    je          0052637F
 00526370    call        @AfterConstruction
 00526375    pop         dword ptr fs:[0]
 0052637C    add         esp,0C
 0052637F    mov         eax,dword ptr [ebp-4]
 00526382    pop         edi
 00526383    pop         esi
 00526384    pop         ebx
 00526385    mov         esp,ebp
 00526387    pop         ebp
 00526388    ret
*}
end;

//00526460
procedure sub_00526460(?:TKalLispConfig);
begin
{*
 00526460    push        ebp
 00526461    mov         ebp,esp
 00526463    add         esp,0FFFFFFF8
 00526466    push        ebx
 00526467    push        esi
 00526468    push        edi
 00526469    mov         dword ptr [ebp-4],eax
 0052646C    mov         eax,dword ptr [ebp-4]
 0052646F    mov         ecx,dword ptr [eax+4]
 00526472    mov         dl,1
 00526474    mov         eax,[00525C14];TLISPFileParser
 00526479    call        TLISPFileParser.Create;TLISPFileParser.Create
 0052647E    mov         dword ptr [ebp-8],eax
 00526481    xor         eax,eax
 00526483    push        ebp
 00526484    push        5264A7
 00526489    push        dword ptr fs:[eax]
 0052648C    mov         dword ptr fs:[eax],esp
 0052648F    mov         eax,dword ptr [ebp-4]
 00526492    mov         edx,dword ptr [eax+8]
 00526495    mov         eax,dword ptr [ebp-8]
 00526498    call        00525FB4
 0052649D    xor         eax,eax
 0052649F    pop         edx
 005264A0    pop         ecx
 005264A1    pop         ecx
 005264A2    mov         dword ptr fs:[eax],edx
>005264A5    jmp         005264C7
>005264A7    jmp         @HandleAnyException
 005264AC    mov         ecx,5265B0;'ParseMessages error'
 005264B1    mov         dl,1
 005264B3    mov         eax,[004653B4];Exception
 005264B8    call        Exception.Create;Exception.Create
 005264BD    call        @RaiseExcept
 005264C2    call        @DoneExcept
 005264C7    xor         eax,eax
 005264C9    push        ebp
 005264CA    push        5264ED
 005264CF    push        dword ptr fs:[eax]
 005264D2    mov         dword ptr fs:[eax],esp
 005264D5    mov         eax,dword ptr [ebp-4]
 005264D8    mov         edx,dword ptr [eax+0C]
 005264DB    mov         eax,dword ptr [ebp-8]
 005264DE    call        005260D4
 005264E3    xor         eax,eax
 005264E5    pop         edx
 005264E6    pop         ecx
 005264E7    pop         ecx
 005264E8    mov         dword ptr fs:[eax],edx
>005264EB    jmp         0052650D
>005264ED    jmp         @HandleAnyException
 005264F2    mov         ecx,5265CC;'ParsePrefixes error'
 005264F7    mov         dl,1
 005264F9    mov         eax,[004653B4];Exception
 005264FE    call        Exception.Create;Exception.Create
 00526503    call        @RaiseExcept
 00526508    call        @DoneExcept
 0052650D    xor         eax,eax
 0052650F    push        ebp
 00526510    push        526533
 00526515    push        dword ptr fs:[eax]
 00526518    mov         dword ptr fs:[eax],esp
 0052651B    mov         eax,dword ptr [ebp-4]
 0052651E    mov         edx,dword ptr [eax+10]
 00526521    mov         eax,dword ptr [ebp-8]
 00526524    call        00525DE8
 00526529    xor         eax,eax
 0052652B    pop         edx
 0052652C    pop         ecx
 0052652D    pop         ecx
 0052652E    mov         dword ptr fs:[eax],edx
>00526531    jmp         00526553
>00526533    jmp         @HandleAnyException
 00526538    mov         ecx,5265E8;'ParseInitItems error'
 0052653D    mov         dl,1
 0052653F    mov         eax,[004653B4];Exception
 00526544    call        Exception.Create;Exception.Create
 00526549    call        @RaiseExcept
 0052654E    call        @DoneExcept
 00526553    xor         eax,eax
 00526555    push        ebp
 00526556    push        526579
 0052655B    push        dword ptr fs:[eax]
 0052655E    mov         dword ptr fs:[eax],esp
 00526561    mov         eax,dword ptr [ebp-4]
 00526564    mov         edx,dword ptr [eax+14]
 00526567    mov         eax,dword ptr [ebp-8]
 0052656A    call        00525EEC
 0052656F    xor         eax,eax
 00526571    pop         edx
 00526572    pop         ecx
 00526573    pop         ecx
 00526574    mov         dword ptr fs:[eax],edx
>00526577    jmp         00526599
>00526579    jmp         @HandleAnyException
 0052657E    mov         ecx,526608;'ParseMacros error'
 00526583    mov         dl,1
 00526585    mov         eax,[004653B4];Exception
 0052658A    call        Exception.Create;Exception.Create
 0052658F    call        @RaiseExcept
 00526594    call        @DoneExcept
 00526599    mov         eax,dword ptr [ebp-8]
 0052659C    call        TObject.Free
 005265A1    pop         edi
 005265A2    pop         esi
 005265A3    pop         ebx
 005265A4    pop         ecx
 005265A5    pop         ecx
 005265A6    pop         ebp
 005265A7    ret
*}
end;

end.