//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit11;

interface

uses
  SysUtils, Classes;

type
  TOS = TOS = record//size=20
fC:WideString;//fC
f1C:WideString;//f1C
end;;
  TMsgHandlers = array of ?;
//elSize = 10;
  _Unit1111_5 = .5 = record//size=C
f8:TMsgHandlers;//f8
end;;
  _DynArr_11_6 = array of _Unit1111_5;
//elSize = C;
    //procedure sub_0040D610(?:?);//0040D610
    //function sub_0040DB78(?:?):?;//0040DB78
    //procedure sub_0040E984(?:?; ?:?; ?:?);//0040E984
    //procedure sub_0040EC8C(?:WideString; ?:?);//0040EC8C
    //function sub_0040EF08(?:?; ?:?):?;//0040EF08
    //function sub_0040F188(?:?):?;//0040F188
    //procedure sub_0040F400(?:?; ?:?);//0040F400
    //function sub_0040F490(?:?; ?:?; ?:?; ?:?; ?:?):?;//0040F490
    //function sub_0040F630:?;//0040F630
    //function sub_0040F63C(?:?; ?:?; ?:?; ?:?; ?:?):?;//0040F63C
    procedure sub_0040F838;//0040F838
    procedure sub_0040F844;//0040F844
    //function sub_0040F964(?:Pointer):?;//0040F964
    //function sub_0040F9C4(?:?; ?:?):?;//0040F9C4
    //function sub_0040F9FC:?;//0040F9FC
    //function sub_0040FA04(?:HMODULE; ?:?):?;//0040FA04
    //function sub_0040FAD0(?:?; ?:?):?;//0040FAD0
    //function sub_0040FB38(?:?):?;//0040FB38
    //function sub_0040FB4C(?:?):?;//0040FB4C
    //function sub_0040FC34(?:HMODULE; ?:AnsiString; ?:?):?;//0040FC34
    //function sub_0040FE10(?:HMODULE; ?:?):?;//0040FE10
    //procedure sub_0040FE60(?:?; ?:?; ?:?; ?:?);//0040FE60
    //procedure sub_0040FFD4(?:Integer; ?:?; ?:?; ?:?);//0040FFD4
    //procedure sub_0041012C(?:Cardinal; ?:?; ?:WideString; ?:?);//0041012C
    //function sub_00410248(?:?; ?:?):?;//00410248
    //function sub_00410558(?:WideString; ?:?):?;//00410558
    //function sub_004108A4(?:Integer; ?:Longint):?;//004108A4
    procedure sub_0041097C;//0041097C

implementation

//0040D610
{*procedure sub_0040D610(?:?);
begin
 0040D610    push        ebp
 0040D611    mov         ebp,esp
 0040D613    add         esp,0FFFFFE24
 0040D619    push        ebx
 0040D61A    xor         edx,edx
 0040D61C    mov         dword ptr [ebp-1DC],edx
 0040D622    mov         dword ptr [ebp-4],eax
 0040D625    xor         eax,eax
 0040D627    push        ebp
 0040D628    push        40DACF
 0040D62D    push        dword ptr fs:[eax]
 0040D630    mov         dword ptr fs:[eax],esp
 0040D633    cmp         byte ptr ds:[53D418],0;gvar_0053D418
>0040D63A    je          0040D64E
 0040D63C    mov         eax,[0055C6B0];gvar_0055C6B0:WideString
 0040D641    xor         edx,edx
 0040D643    call        @WStrCmp
>0040D648    jne         0040DAA3
 0040D64E    mov         byte ptr ds:[53D418],1;gvar_0053D418
 0040D655    call        kernel32.GetVersion
 0040D65A    test        eax,80000000
>0040D65F    jne         0040D6A3
 0040D661    lea         eax,[ebp-1B4]
 0040D667    mov         edx,11C
 0040D66C    call        00408130
 0040D671    mov         dword ptr [ebp-1B4],11C
 0040D67B    lea         eax,[ebp-1B4]
 0040D681    push        eax
 0040D682    call        kernel32.GetVersionExW
 0040D687    test        eax,eax
>0040D689    jne         0040D6FE
 0040D68B    mov         dword ptr [ebp-1B4],114
 0040D695    lea         eax,[ebp-1B4]
 0040D69B    push        eax
 0040D69C    call        kernel32.GetVersionExW
>0040D6A1    jmp         0040D6FE
 0040D6A3    lea         eax,[ebp-98]
 0040D6A9    mov         edx,94
 0040D6AE    call        00408130
 0040D6B3    mov         dword ptr [ebp-98],94
 0040D6BD    lea         eax,[ebp-98]
 0040D6C3    push        eax
 0040D6C4    call        kernel32.GetVersionExA
 0040D6C9    lea         edx,[ebp-1B4]
 0040D6CF    lea         eax,[ebp-98]
 0040D6D5    mov         ecx,94
 0040D6DA    call        Move
 0040D6DF    mov         ecx,80
 0040D6E4    lea         eax,[ebp-84]
 0040D6EA    lea         edx,[ebp-1A0]
 0040D6F0    xor         ebx,ebx
 0040D6F2    mov         bl,byte ptr [eax]
 0040D6F4    mov         word ptr [edx],bx
 0040D6F7    add         edx,2
 0040D6FA    inc         eax
 0040D6FB    dec         ecx
>0040D6FC    jne         0040D6F0
 0040D6FE    mov         eax,dword ptr [ebp-1B0]
 0040D704    mov         [0055C694],eax;gvar_0055C694:Pointer
 0040D709    mov         eax,dword ptr [ebp-1AC]
 0040D70F    mov         [0055C698],eax;gvar_0055C698
 0040D714    mov         eax,55C6A0;gvar_0055C6A0:WideString
 0040D719    lea         edx,[ebp-1A0]
 0040D71F    mov         ecx,80
 0040D724    call        @WStrFromWArray
 0040D729    mov         eax,dword ptr [ebp-1A4]
 0040D72F    cmp         eax,1
 0040D732    sete        dl
 0040D735    mov         byte ptr ds:[55C6A4],dl;gvar_0055C6A4
 0040D73B    cmp         eax,2
 0040D73E    sete        al
 0040D741    mov         [0055C6A6],al;gvar_0055C6A6
 0040D746    cmp         byte ptr ds:[55C6A4],0;gvar_0055C6A4
>0040D74D    je          0040D75D
 0040D74F    movzx       eax,word ptr [ebp-1A8]
 0040D756    mov         [0055C69C],eax;gvar_0055C69C
>0040D75B    jmp         0040D768
 0040D75D    mov         eax,dword ptr [ebp-1A8]
 0040D763    mov         [0055C69C],eax;gvar_0055C69C
 0040D768    mov         byte ptr ds:[55C6A8],0;gvar_0055C6A8
 0040D76F    xor         eax,eax
 0040D771    mov         [0055C6AC],eax;gvar_0055C6AC
 0040D776    cmp         byte ptr ds:[55C6A4],0;gvar_0055C6A4
>0040D77D    je          0040D820
 0040D783    mov         eax,[0055C694];gvar_0055C694:Pointer
 0040D788    sub         eax,4
>0040D78B    jb          0040D80A
>0040D78D    je          0040D791
>0040D78F    jmp         0040D803
 0040D791    mov         eax,[0055C698];gvar_0055C698
 0040D796    sub         eax,0A
>0040D799    jb          0040D7A5
>0040D79B    je          0040D7C3
 0040D79D    dec         eax
 0040D79E    sub         eax,50
>0040D7A1    jb          0040D7F1
>0040D7A3    jmp         0040D7FA
 0040D7A5    cmp         dword ptr ds:[55C69C],3E8;gvar_0055C69C
>0040D7AF    jbe         0040D7BA
 0040D7B1    mov         byte ptr ds:[55C6A8],2;gvar_0055C6A8
>0040D7B8    jmp         0040D80A
 0040D7BA    mov         byte ptr ds:[55C6A8],1;gvar_0055C6A8
>0040D7C1    jmp         0040D80A
 0040D7C3    mov         eax,[0055C69C];gvar_0055C69C
 0040D7C8    cmp         eax,0A8C
>0040D7CD    jbe         0040D7D8
 0040D7CF    mov         byte ptr ds:[55C6A8],5;gvar_0055C6A8
>0040D7D6    jmp         0040D80A
 0040D7D8    cmp         eax,7D0
>0040D7DD    jbe         0040D7E8
 0040D7DF    mov         byte ptr ds:[55C6A8],4;gvar_0055C6A8
>0040D7E6    jmp         0040D80A
 0040D7E8    mov         byte ptr ds:[55C6A8],3;gvar_0055C6A8
>0040D7EF    jmp         0040D80A
 0040D7F1    mov         byte ptr ds:[55C6A8],5;gvar_0055C6A8
>0040D7F8    jmp         0040D80A
 0040D7FA    mov         byte ptr ds:[55C6A8],6;gvar_0055C6A8
>0040D801    jmp         0040D80A
 0040D803    mov         byte ptr ds:[55C6A8],6;gvar_0055C6A8
 0040D80A    mov         al,[0055C6A8];gvar_0055C6A8
 0040D80F    mov         [0055C6A5],al;gvar_0055C6A5
 0040D814    mov         byte ptr ds:[55C6A7],0;gvar_0055C6A7
>0040D81B    jmp         0040D9B5
 0040D820    cmp         byte ptr ds:[55C6A6],0;gvar_0055C6A6
>0040D827    je          0040D9B5
 0040D82D    mov         eax,[0055C694];gvar_0055C694:Pointer
 0040D832    sub         eax,4
>0040D835    jb          0040D844
>0040D837    je          0040D850
 0040D839    dec         eax
>0040D83A    je          0040D85C
 0040D83C    dec         eax
>0040D83D    je          0040D89D
>0040D83F    jmp         0040D908
 0040D844    mov         byte ptr ds:[55C6A8],7;gvar_0055C6A8
>0040D84B    jmp         0040D90F
 0040D850    mov         byte ptr ds:[55C6A8],8;gvar_0055C6A8
>0040D857    jmp         0040D90F
 0040D85C    mov         eax,[0055C698];gvar_0055C698
 0040D861    sub         eax,1
>0040D864    jb          0040D86A
>0040D866    je          0040D876
>0040D868    jmp         0040D882
 0040D86A    mov         byte ptr ds:[55C6A8],9;gvar_0055C6A8
>0040D871    jmp         0040D90F
 0040D876    mov         byte ptr ds:[55C6A8],0A;gvar_0055C6A8
>0040D87D    jmp         0040D90F
 0040D882    cmp         byte ptr [ebp-9A],1
>0040D889    jne         0040D894
 0040D88B    mov         byte ptr ds:[55C6A8],0A;gvar_0055C6A8
>0040D892    jmp         0040D90F
 0040D894    mov         byte ptr ds:[55C6A8],0B;gvar_0055C6A8
>0040D89B    jmp         0040D90F
 0040D89D    mov         eax,[0055C698];gvar_0055C698
 0040D8A2    sub         eax,1
>0040D8A5    jb          0040D8AE
>0040D8A7    je          0040D8C9
 0040D8A9    dec         eax
>0040D8AA    je          0040D8E4
>0040D8AC    jmp         0040D8FF
 0040D8AE    cmp         byte ptr [ebp-9A],1
>0040D8B5    jne         0040D8C0
 0040D8B7    mov         byte ptr ds:[55C6A8],0C;gvar_0055C6A8
>0040D8BE    jmp         0040D90F
 0040D8C0    mov         byte ptr ds:[55C6A8],0D;gvar_0055C6A8
>0040D8C7    jmp         0040D90F
 0040D8C9    cmp         byte ptr [ebp-9A],1
>0040D8D0    jne         0040D8DB
 0040D8D2    mov         byte ptr ds:[55C6A8],0E;gvar_0055C6A8
>0040D8D9    jmp         0040D90F
 0040D8DB    mov         byte ptr ds:[55C6A8],0F;gvar_0055C6A8
>0040D8E2    jmp         0040D90F
 0040D8E4    cmp         byte ptr [ebp-9A],1
>0040D8EB    jne         0040D8F6
 0040D8ED    mov         byte ptr ds:[55C6A8],10;gvar_0055C6A8
>0040D8F4    jmp         0040D90F
 0040D8F6    mov         byte ptr ds:[55C6A8],11;gvar_0055C6A8
>0040D8FD    jmp         0040D90F
 0040D8FF    mov         byte ptr ds:[55C6A8],12;gvar_0055C6A8
>0040D906    jmp         0040D90F
 0040D908    mov         byte ptr ds:[55C6A8],12;gvar_0055C6A8
 0040D90F    mov         byte ptr ds:[55C6A5],0;gvar_0055C6A5
 0040D916    mov         al,[0055C6A8];gvar_0055C6A8
 0040D91B    mov         [0055C6A7],al;gvar_0055C6A7
 0040D920    cmp         dword ptr [ebp-1B4],11C
>0040D92A    jb          0040D93A
 0040D92C    movzx       eax,word ptr [ebp-0A0]
 0040D933    mov         [0055C6AC],eax;gvar_0055C6AC
>0040D938    jmp         0040D971
 0040D93A    mov         eax,[0055C6A0];gvar_0055C6A0:WideString
 0040D93F    call        @WStrLen
 0040D944    cmp         eax,0E
>0040D947    jl          0040D971
 0040D949    mov         eax,[0055C6A0];gvar_0055C6A0:WideString
 0040D94E    call        @WStrLen
 0040D953    mov         ecx,eax
 0040D955    sub         ecx,0D
 0040D958    mov         ebx,dword ptr ds:[55B54C];^gvar_0053D164
 0040D95E    mov         ebx,dword ptr [ebx]
 0040D960    mov         eax,[0055C6A0];gvar_0055C6A0:WideString
 0040D965    lea         edx,[eax+1A]
 0040D968    xor         eax,eax
 0040D96A    call        ebx
 0040D96C    mov         [0055C6AC],eax;gvar_0055C6AC
 0040D971    push        40DADC
 0040D976    push        40DAF0;'kernel32.dll'
 0040D97B    call        kernel32.GetModuleHandleA
 0040D980    push        eax
 0040D981    call        kernel32.GetProcAddress
 0040D986    mov         ebx,eax
 0040D988    test        ebx,ebx
>0040D98A    je          0040D9B5
 0040D98C    lea         eax,[ebp-1D8]
 0040D992    mov         edx,24
 0040D997    call        00408130
 0040D99C    lea         eax,[ebp-1D8]
 0040D9A2    push        eax
 0040D9A3    call        ebx
 0040D9A5    cmp         word ptr [ebp-1D8],9
 0040D9AD    sete        al
 0040D9B0    mov         [0055C6A9],al;gvar_0055C6A9
 0040D9B5    lea         eax,[ebp-1DC]
 0040D9BB    xor         edx,edx
 0040D9BD    mov         dl,byte ptr ds:[55C6A8];gvar_0055C6A8
 0040D9C3    mov         edx,dword ptr [edx*4+53D3A0]
 0040D9CA    call        @LStrFromPChar
 0040D9CF    mov         edx,dword ptr [ebp-1DC]
 0040D9D5    mov         eax,55C6B0;gvar_0055C6B0:WideString
 0040D9DA    call        @WStrFromLStr
 0040D9DF    cmp         byte ptr ds:[55C6A6],0;gvar_0055C6A6
>0040D9E6    je          0040DAA3
 0040D9EC    push        59
 0040D9EE    call        user32.GetSystemMetrics
 0040D9F3    test        eax,eax
>0040D9F5    je          0040DA06
 0040D9F7    mov         eax,55C6B0;gvar_0055C6B0:WideString
 0040D9FC    mov         edx,40DB04;' R2'
 0040DA01    call        @WStrCat
 0040DA06    push        56
 0040DA08    call        user32.GetSystemMetrics
 0040DA0D    test        eax,eax
>0040DA0F    je          0040DA20
 0040DA11    mov         eax,55C6B0;gvar_0055C6B0:WideString
 0040DA16    mov         edx,40DB10;' Tablet PC'
 0040DA1B    call        @WStrCat
 0040DA20    push        58
 0040DA22    call        user32.GetSystemMetrics
 0040DA27    test        eax,eax
>0040DA29    je          0040DA3A
 0040DA2B    mov         eax,55C6B0;gvar_0055C6B0:WideString
 0040DA30    mov         edx,40DB2C;' Starter'
 0040DA35    call        @WStrCat
 0040DA3A    cmp         byte ptr ds:[55C6A8],0C;gvar_0055C6A8
>0040DA41    jae         0040DA5D
 0040DA43    push        57
 0040DA45    call        user32.GetSystemMetrics
 0040DA4A    test        eax,eax
>0040DA4C    je          0040DA5D
 0040DA4E    mov         eax,55C6B0;gvar_0055C6B0:WideString
 0040DA53    mov         edx,40DB44;' Media Center'
 0040DA58    call        @WStrCat
 0040DA5D    cmp         byte ptr ds:[55C6A9],0;gvar_0055C6A9
>0040DA64    je          0040DA75
 0040DA66    mov         eax,55C6B0;gvar_0055C6B0:WideString
 0040DA6B    mov         edx,40DB64;' x64'
 0040DA70    call        @WStrCat
 0040DA75    mov         eax,[0055C6A0];gvar_0055C6A0:WideString
 0040DA7A    xor         edx,edx
 0040DA7C    call        @WStrCmp
>0040DA81    je          0040DAA3
 0040DA83    push        dword ptr ds:[55C6B0];gvar_0055C6B0:WideString
 0040DA89    push        40DB74
 0040DA8E    push        dword ptr ds:[55C6A0];gvar_0055C6A0:WideString
 0040DA94    mov         eax,55C6B0;gvar_0055C6B0:WideString
 0040DA99    mov         edx,3
 0040DA9E    call        @WStrCatN
 0040DAA3    mov         eax,dword ptr [ebp-4]
 0040DAA6    mov         edx,55C694;gvar_0055C694:Pointer
 0040DAAB    mov         ecx,dword ptr ds:[40D4D4];TOS
 0040DAB1    call        @CopyRecord
 0040DAB6    xor         eax,eax
 0040DAB8    pop         edx
 0040DAB9    pop         ecx
 0040DABA    pop         ecx
 0040DABB    mov         dword ptr fs:[eax],edx
 0040DABE    push        40DAD6
 0040DAC3    lea         eax,[ebp-1DC]
 0040DAC9    call        @LStrClr
 0040DACE    ret
>0040DACF    jmp         @HandleFinally
>0040DAD4    jmp         0040DAC3
 0040DAD6    pop         ebx
 0040DAD7    mov         esp,ebp
 0040DAD9    pop         ebp
 0040DADA    ret
end;*}

//0040DB78
{*function sub_0040DB78(?:?):?;
begin
 0040DB78    push        ebp
 0040DB79    mov         ebp,esp
 0040DB7B    add         esp,0FFFFFFB0
 0040DB7E    push        ebx
 0040DB7F    mov         word ptr [ebp-2],ax
 0040DB83    mov         word ptr [ebp-0E],0
 0040DB89    call        kernel32.GetVersion
 0040DB8E    test        eax,80000000
>0040DB93    je          0040DC47
 0040DB99    cmp         dword ptr ds:[53D41C],0;gvar_0053D41C
>0040DBA0    jne         0040DBE1
 0040DBA2    push        40DC50;'kernel32.dll'
 0040DBA7    call        kernel32.GetModuleHandleA
 0040DBAC    mov         ebx,eax
 0040DBAE    mov         edx,23
 0040DBB3    mov         eax,ebx
 0040DBB5    call        0040FE10
 0040DBBA    mov         [0053D41C],eax;gvar_0053D41C
 0040DBBF    mov         edx,24
 0040DBC4    mov         eax,ebx
 0040DBC6    call        0040FE10
 0040DBCB    mov         [0053D420],eax;gvar_0053D420
 0040DBD0    mov         edx,25
 0040DBD5    mov         eax,ebx
 0040DBD7    call        0040FE10
 0040DBDC    mov         [0053D424],eax;gvar_0053D424
 0040DBE1    cmp         dword ptr ds:[53D41C],0;gvar_0053D41C
>0040DBE8    je          0040DC47
 0040DBEA    push        40DC60
 0040DBEF    call        dword ptr ds:[53D41C]
 0040DBF5    mov         ebx,eax
 0040DBF7    test        ebx,ebx
>0040DBF9    je          0040DC47
 0040DBFB    mov         byte ptr [ebp-4E],0
 0040DBFF    push        40DC6C
 0040DC04    push        ebx
 0040DC05    call        dword ptr ds:[53D424]
 0040DC0B    mov         dword ptr [ebp-8],eax
 0040DC0E    push        40DC84
 0040DC13    push        40DC50;'kernel32.dll'
 0040DC18    call        kernel32.GetModuleHandleA
 0040DC1D    push        eax
 0040DC1E    call        kernel32.GetProcAddress
 0040DC23    mov         dword ptr [ebp-0C],eax
 0040DC26    cmp         dword ptr [ebp-8],0
>0040DC2A    je          0040DC40
 0040DC2C    cmp         dword ptr [ebp-0C],0
>0040DC30    je          0040DC40
 0040DC32    push        word ptr [ebp-2]
 0040DC36    mov         edx,dword ptr [ebp-8]
 0040DC39    call        dword ptr [ebp-0C]
 0040DC3C    mov         word ptr [ebp-0E],ax
 0040DC40    push        ebx
 0040DC41    call        dword ptr ds:[53D420]
 0040DC47    mov         ax,word ptr [ebp-0E]
 0040DC4B    pop         ebx
 0040DC4C    mov         esp,ebp
 0040DC4E    pop         ebp
 0040DC4F    ret
end;*}

//0040E984
{*procedure sub_0040E984(?:?; ?:?; ?:?);
begin
 0040E984    push        ebp
 0040E985    mov         ebp,esp
 0040E987    xor         ecx,ecx
 0040E989    push        ecx
 0040E98A    push        ecx
 0040E98B    push        ecx
 0040E98C    push        ecx
 0040E98D    push        ebx
 0040E98E    mov         ebx,eax
 0040E990    xor         eax,eax
 0040E992    push        ebp
 0040E993    push        40EA64
 0040E998    push        dword ptr fs:[eax]
 0040E99B    mov         dword ptr fs:[eax],esp
 0040E99E    mov         eax,dword ptr [ebp+0C]
 0040E9A1    shr         eax,10
 0040E9A4    xor         edx,edx
 0040E9A6    push        edx
 0040E9A7    push        eax
 0040E9A8    lea         ecx,[ebp-4]
 0040E9AB    mov         dx,30
 0040E9AF    mov         eax,1
 0040E9B4    call        0040AC5C
 0040E9B9    push        dword ptr [ebp-4]
 0040E9BC    push        40EA78
 0040E9C1    mov         eax,dword ptr [ebp+0C]
 0040E9C4    xor         edx,edx
 0040E9C6    and         eax,0FFFF
 0040E9CC    xor         edx,edx
 0040E9CE    push        edx
 0040E9CF    push        eax
 0040E9D0    lea         ecx,[ebp-8]
 0040E9D3    mov         dx,30
 0040E9D7    mov         eax,1
 0040E9DC    call        0040AC5C
 0040E9E1    push        dword ptr [ebp-8]
 0040E9E4    push        40EA78
 0040E9E9    mov         eax,dword ptr [ebp+8]
 0040E9EC    mov         edx,dword ptr [ebp+0C]
 0040E9EF    shrd        eax,edx,10
 0040E9F3    shr         edx,10
 0040E9F6    and         eax,0FFFF
 0040E9FC    xor         edx,edx
 0040E9FE    push        edx
 0040E9FF    push        eax
 0040EA00    lea         ecx,[ebp-0C]
 0040EA03    mov         dx,30
 0040EA07    mov         eax,1
 0040EA0C    call        0040AC5C
 0040EA11    push        dword ptr [ebp-0C]
 0040EA14    push        40EA78
 0040EA19    mov         eax,dword ptr [ebp+8]
 0040EA1C    mov         edx,dword ptr [ebp+0C]
 0040EA1F    and         eax,0FFFF
 0040EA25    xor         edx,edx
 0040EA27    push        edx
 0040EA28    push        eax
 0040EA29    lea         ecx,[ebp-10]
 0040EA2C    mov         dx,30
 0040EA30    mov         eax,1
 0040EA35    call        0040AC5C
 0040EA3A    push        dword ptr [ebp-10]
 0040EA3D    mov         eax,ebx
 0040EA3F    mov         edx,7
 0040EA44    call        @WStrCatN
 0040EA49    xor         eax,eax
 0040EA4B    pop         edx
 0040EA4C    pop         ecx
 0040EA4D    pop         ecx
 0040EA4E    mov         dword ptr fs:[eax],edx
 0040EA51    push        40EA6B
 0040EA56    lea         eax,[ebp-10]
 0040EA59    mov         edx,4
 0040EA5E    call        @WStrArrayClr
 0040EA63    ret
>0040EA64    jmp         @HandleFinally
>0040EA69    jmp         0040EA56
 0040EA6B    pop         ebx
 0040EA6C    mov         esp,ebp
 0040EA6E    pop         ebp
 0040EA6F    ret         8
end;*}

//0040EC8C
{*procedure sub_0040EC8C(?:WideString; ?:?);
begin
 0040EC8C    push        ebp
 0040EC8D    mov         ebp,esp
 0040EC8F    mov         ecx,6
 0040EC94    push        0
 0040EC96    push        0
 0040EC98    dec         ecx
>0040EC99    jne         0040EC94
 0040EC9B    push        ecx
 0040EC9C    push        ebx
 0040EC9D    push        esi
 0040EC9E    push        edi
 0040EC9F    mov         esi,edx
 0040ECA1    mov         ebx,eax
 0040ECA3    xor         eax,eax
 0040ECA5    push        ebp
 0040ECA6    push        40EE7A
 0040ECAB    push        dword ptr fs:[eax]
 0040ECAE    mov         dword ptr fs:[eax],esp
 0040ECB1    mov         eax,esi
 0040ECB3    call        @WStrClr
 0040ECB8    call        kernel32.GetVersion
 0040ECBD    test        eax,80000000
>0040ECC2    je          0040ECE9
 0040ECC4    lea         eax,[ebp-20]
 0040ECC7    mov         edx,ebx
 0040ECC9    call        @LStrFromWStr
 0040ECCE    mov         eax,dword ptr [ebp-20]
 0040ECD1    lea         edx,[ebp-1C]
 0040ECD4    call        dword ptr ds:[53D3F8]
 0040ECDA    mov         edx,dword ptr [ebp-1C]
 0040ECDD    mov         eax,esi
 0040ECDF    call        @WStrFromLStr
>0040ECE4    jmp         0040EE4A
 0040ECE9    lea         eax,[ebp-8]
 0040ECEC    push        eax
 0040ECED    mov         eax,ebx
 0040ECEF    call        @WStrToPWChar
 0040ECF4    mov         edi,eax
 0040ECF6    push        edi
 0040ECF7    call        version.GetFileVersionInfoSizeW
 0040ECFC    mov         dword ptr [ebp-4],eax
 0040ECFF    cmp         dword ptr [ebp-4],0
>0040ED03    je          0040EE4A
 0040ED09    lea         eax,[ebp-0C]
 0040ED0C    mov         edx,dword ptr [ebp-4]
 0040ED0F    call        @WStrSetLength
 0040ED14    mov         eax,dword ptr [ebp-0C]
 0040ED17    push        eax
 0040ED18    mov         eax,dword ptr [ebp-4]
 0040ED1B    push        eax
 0040ED1C    mov         eax,dword ptr [ebp-8]
 0040ED1F    push        eax
 0040ED20    push        edi
 0040ED21    call        version.GetFileVersionInfoW
 0040ED26    test        eax,eax
>0040ED28    je          0040EE4A
 0040ED2E    lea         eax,[ebp-4]
 0040ED31    push        eax
 0040ED32    lea         eax,[ebp-10]
 0040ED35    push        eax
 0040ED36    push        40EE88;'\'
 0040ED3B    mov         eax,dword ptr [ebp-0C]
 0040ED3E    push        eax
 0040ED3F    call        version.VerQueryValueW
 0040ED44    test        eax,eax
>0040ED46    je          0040ED93
 0040ED48    mov         eax,dword ptr [ebp-10]
 0040ED4B    cmp         dword ptr [eax+8],0
>0040ED4F    jne         0040ED5A
 0040ED51    mov         eax,dword ptr [ebp-10]
 0040ED54    cmp         dword ptr [eax+0C],0
>0040ED58    je          0040ED93
 0040ED5A    mov         eax,dword ptr [ebp-10]
 0040ED5D    mov         eax,dword ptr [eax+8]
 0040ED60    xor         edx,edx
 0040ED62    mov         edx,eax
 0040ED64    xor         eax,eax
 0040ED66    push        edx
 0040ED67    push        eax
 0040ED68    mov         eax,dword ptr [ebp-10]
 0040ED6B    mov         eax,dword ptr [eax+0C]
 0040ED6E    xor         edx,edx
 0040ED70    add         eax,dword ptr [esp]
 0040ED73    adc         edx,dword ptr [esp+4]
 0040ED77    add         esp,8
 0040ED7A    push        edx
 0040ED7B    push        eax
 0040ED7C    lea         eax,[ebp-24]
 0040ED7F    call        0040E984
 0040ED84    mov         edx,dword ptr [ebp-24]
 0040ED87    mov         eax,esi
 0040ED89    call        @WStrAsg
>0040ED8E    jmp         0040EE4A
 0040ED93    lea         eax,[ebp-4]
 0040ED96    push        eax
 0040ED97    lea         eax,[ebp-14]
 0040ED9A    push        eax
 0040ED9B    push        40EE8C;'\VarFileInfo\Translation'
 0040EDA0    mov         eax,dword ptr [ebp-0C]
 0040EDA3    push        eax
 0040EDA4    call        version.VerQueryValueW
 0040EDA9    test        eax,eax
>0040EDAB    je          0040EE4A
 0040EDB1    cmp         dword ptr [ebp-14],0
>0040EDB5    je          0040EE4A
 0040EDBB    lea         eax,[ebp-4]
 0040EDBE    push        eax
 0040EDBF    lea         eax,[ebp-18]
 0040EDC2    push        eax
 0040EDC3    push        40EEC4
 0040EDC8    lea         eax,[ebp-2C]
 0040EDCB    push        eax
 0040EDCC    lea         eax,[ebp-30]
 0040EDCF    push        eax
 0040EDD0    mov         eax,dword ptr [ebp-14]
 0040EDD3    mov         eax,dword ptr [eax]
 0040EDD5    call        004080DC
 0040EDDA    mov         edx,dword ptr [ebp-14]
 0040EDDD    mov         dx,word ptr [edx]
 0040EDE0    call        004080B4
 0040EDE5    mov         cx,30
 0040EDE9    mov         edx,8
 0040EDEE    call        0040AB64
 0040EDF3    mov         eax,dword ptr [ebp-30]
 0040EDF6    mov         ecx,7FFFFFFF
 0040EDFB    mov         edx,2
 0040EE00    call        @WStrCopy
 0040EE05    push        dword ptr [ebp-2C]
 0040EE08    push        40EEEC
 0040EE0D    lea         eax,[ebp-28]
 0040EE10    mov         edx,3
 0040EE15    call        @WStrCatN
 0040EE1A    mov         eax,dword ptr [ebp-28]
 0040EE1D    call        @WStrToPWChar
 0040EE22    push        eax
 0040EE23    mov         eax,dword ptr [ebp-0C]
 0040EE26    push        eax
 0040EE27    call        version.VerQueryValueW
 0040EE2C    test        eax,eax
>0040EE2E    je          0040EE4A
 0040EE30    lea         eax,[ebp-34]
 0040EE33    mov         edx,dword ptr [ebp-18]
 0040EE36    call        @WStrFromPWChar
 0040EE3B    mov         eax,dword ptr [ebp-34]
 0040EE3E    mov         ebx,dword ptr ds:[55B384];^gvar_0053D114
 0040EE44    mov         ebx,dword ptr [ebx]
 0040EE46    mov         edx,esi
 0040EE48    call        ebx
 0040EE4A    xor         eax,eax
 0040EE4C    pop         edx
 0040EE4D    pop         ecx
 0040EE4E    pop         ecx
 0040EE4F    mov         dword ptr fs:[eax],edx
 0040EE52    push        40EE81
 0040EE57    lea         eax,[ebp-34]
 0040EE5A    mov         edx,5
 0040EE5F    call        @WStrArrayClr
 0040EE64    lea         eax,[ebp-20]
 0040EE67    mov         edx,2
 0040EE6C    call        @LStrArrayClr
 0040EE71    lea         eax,[ebp-0C]
 0040EE74    call        @WStrClr
 0040EE79    ret
>0040EE7A    jmp         @HandleFinally
>0040EE7F    jmp         0040EE57
 0040EE81    pop         edi
 0040EE82    pop         esi
 0040EE83    pop         ebx
 0040EE84    mov         esp,ebp
 0040EE86    pop         ebp
 0040EE87    ret
end;*}

//0040EF08
{*function sub_0040EF08(?:?; ?:?):?;
begin
 0040EF08    push        ebp
 0040EF09    mov         ebp,esp
 0040EF0B    push        ecx
 0040EF0C    push        ebx
 0040EF0D    push        esi
 0040EF0E    push        edi
 0040EF0F    mov         edi,edx
 0040EF11    mov         esi,eax
 0040EF13    push        40
 0040EF15    push        1000
 0040EF1A    push        11
 0040EF1C    push        0
 0040EF1E    call        kernel32.VirtualAlloc
 0040EF23    mov         ebx,eax
 0040EF25    mov         dword ptr [ebp-4],ebx
 0040EF28    mov         eax,ebx
 0040EF2A    mov         byte ptr [eax],58
 0040EF2D    mov         byte ptr [eax+1],68
 0040EF31    mov         dword ptr [eax+2],esi
 0040EF34    mov         byte ptr [eax+6],50
 0040EF38    mov         byte ptr [eax+7],0FF
 0040EF3C    mov         byte ptr [eax+8],25
 0040EF40    lea         edx,[eax+0D]
 0040EF43    mov         dword ptr [eax+9],edx
 0040EF46    mov         dword ptr [eax+0D],edi
 0040EF49    mov         eax,dword ptr [ebp-4]
 0040EF4C    pop         edi
 0040EF4D    pop         esi
 0040EF4E    pop         ebx
 0040EF4F    pop         ecx
 0040EF50    pop         ebp
 0040EF51    ret
end;*}

//0040F188
{*function sub_0040F188(?:?):?;
begin
 0040F188    push        ebp
 0040F189    mov         ebp,esp
 0040F18B    add         esp,0FFFFFFC0
 0040F18E    push        ebx
 0040F18F    xor         edx,edx
 0040F191    mov         dword ptr [ebp-40],edx
 0040F194    mov         dword ptr [ebp-38],edx
 0040F197    mov         dword ptr [ebp-3C],edx
 0040F19A    mov         dword ptr [ebp-0C],edx
 0040F19D    mov         dword ptr [ebp-4],eax
 0040F1A0    xor         eax,eax
 0040F1A2    push        ebp
 0040F1A3    push        40F3ED
 0040F1A8    push        dword ptr fs:[eax]
 0040F1AB    mov         dword ptr fs:[eax],esp
 0040F1AE    xor         eax,eax
 0040F1B0    mov         dword ptr [ebp-8],eax
 0040F1B3    cmp         dword ptr [ebp-4],0
>0040F1B7    jne         0040F1C1
 0040F1B9    call        kernel32.GetCurrentThreadId
 0040F1BE    mov         dword ptr [ebp-4],eax
 0040F1C1    lea         eax,[ebp-38]
 0040F1C4    push        eax
 0040F1C5    mov         eax,40F188;sub_0040F188
 0040F1CA    mov         cl,30
 0040F1CC    mov         edx,1
 0040F1D1    call        0040AAD4
 0040F1D6    mov         eax,dword ptr [ebp-38]
 0040F1D9    push        eax
 0040F1DA    lea         eax,[ebp-3C]
 0040F1DD    push        eax
 0040F1DE    call        kernel32.GetCurrentThreadId
 0040F1E3    mov         cl,30
 0040F1E5    mov         edx,1
 0040F1EA    call        0040AAD4
 0040F1EF    mov         edx,dword ptr [ebp-3C]
 0040F1F2    lea         eax,[ebp-0C]
 0040F1F5    pop         ecx
 0040F1F6    call        @LStrCat3
 0040F1FB    cmp         dword ptr ds:[53D428],0;gvar_0053D428
>0040F202    jne         0040F247
 0040F204    push        0
 0040F206    push        0
 0040F208    push        0
 0040F20A    call        00407224
 0040F20F    mov         ebx,eax
 0040F211    test        ebx,ebx
>0040F213    je          0040F254
 0040F215    cmp         dword ptr ds:[53D410],0;gvar_0053D410
>0040F21C    je          0040F226
 0040F21E    mov         eax,ebx
 0040F220    call        dword ptr ds:[53D410]
 0040F226    push        0FF
 0040F228    push        ebx
 0040F229    call        kernel32.WaitForSingleObject
 0040F22E    cmp         dword ptr ds:[53D428],0;gvar_0053D428
>0040F235    jne         0040F23F
 0040F237    mov         dword ptr ds:[53D428],ebx;gvar_0053D428
>0040F23D    jmp         0040F254
 0040F23F    push        ebx
 0040F240    call        kernel32.CloseHandle
>0040F245    jmp         0040F254
 0040F247    push        0FF
 0040F249    mov         eax,[0053D428];0x0 gvar_0053D428
 0040F24E    push        eax
 0040F24F    call        kernel32.WaitForSingleObject
 0040F254    xor         ecx,ecx
 0040F256    push        ebp
 0040F257    push        40F2AF
 0040F25C    push        dword ptr fs:[ecx]
 0040F25F    mov         dword ptr fs:[ecx],esp
 0040F262    mov         eax,[0055C6B4];gvar_0055C6B4:?
 0040F267    call        00405CE8
 0040F26C    test        eax,eax
>0040F26E    jl          0040F296
 0040F270    inc         eax
 0040F271    xor         ebx,ebx
 0040F273    lea         edx,[ebx+ebx*2]
 0040F276    mov         ecx,dword ptr ds:[55C6B4];gvar_0055C6B4:?
 0040F27C    mov         ecx,dword ptr [ecx+edx*4]
 0040F27F    cmp         ecx,dword ptr [ebp-4]
>0040F282    jne         0040F292
 0040F284    mov         eax,[0055C6B4];gvar_0055C6B4:?
 0040F289    mov         eax,dword ptr [eax+edx*4+4]
 0040F28D    mov         dword ptr [ebp-8],eax
>0040F290    jmp         0040F296
 0040F292    inc         ebx
 0040F293    dec         eax
>0040F294    jne         0040F273
 0040F296    xor         eax,eax
 0040F298    pop         edx
 0040F299    pop         ecx
 0040F29A    pop         ecx
 0040F29B    mov         dword ptr fs:[eax],edx
 0040F29E    push        40F2B6
 0040F2A3    mov         eax,[0053D428];0x0 gvar_0053D428
 0040F2A8    push        eax
 0040F2A9    call        kernel32.ReleaseMutex
 0040F2AE    ret
>0040F2AF    jmp         @HandleFinally
>0040F2B4    jmp         0040F2A3
 0040F2B6    cmp         dword ptr [ebp-8],0
>0040F2BA    jne         0040F3CA
 0040F2C0    call        kernel32.GetCurrentThreadId
 0040F2C5    cmp         eax,dword ptr [ebp-4]
>0040F2C8    jne         0040F3CA
 0040F2CE    lea         eax,[ebp-34]
 0040F2D1    mov         edx,28
 0040F2D6    call        00408130
 0040F2DB    mov         dword ptr [ebp-30],40EFBC
 0040F2E2    push        0
 0040F2E4    call        kernel32.GetModuleHandleA
 0040F2E9    mov         dword ptr [ebp-24],eax
 0040F2EC    lea         eax,[ebp-40]
 0040F2EF    mov         edx,dword ptr ds:[53D42C];^gvar_0040F16C
 0040F2F5    call        @LStrFromPChar
 0040F2FA    lea         eax,[ebp-40]
 0040F2FD    mov         edx,dword ptr [ebp-0C]
 0040F300    call        @LStrCat
 0040F305    mov         eax,dword ptr [ebp-40]
 0040F308    call        @LStrToPChar
 0040F30D    mov         dword ptr [ebp-10],eax
 0040F310    lea         eax,[ebp-34]
 0040F313    push        eax
 0040F314    call        user32.RegisterClassA
 0040F319    push        80000000
 0040F31E    push        0
 0040F320    push        0
 0040F322    push        0
 0040F324    push        0
 0040F326    push        0
 0040F328    push        0
 0040F32A    mov         eax,dword ptr [ebp-24]
 0040F32D    push        eax
 0040F32E    push        0
 0040F330    mov         ecx,40F3FC;'
 0040F335    mov         edx,dword ptr [ebp-10]
 0040F338    mov         eax,80
 0040F33D    call        00408368
 0040F342    mov         dword ptr [ebp-8],eax
 0040F345    cmp         dword ptr [ebp-8],0
>0040F349    je          0040F3CA
 0040F34B    push        0FF
 0040F34D    mov         eax,[0053D428];0x0 gvar_0053D428
 0040F352    push        eax
 0040F353    call        kernel32.WaitForSingleObject
 0040F358    xor         edx,edx
 0040F35A    push        ebp
 0040F35B    push        40F3C3
 0040F360    push        dword ptr fs:[edx]
 0040F363    mov         dword ptr fs:[edx],esp
 0040F366    mov         eax,[0055C6B4];gvar_0055C6B4:?
 0040F36B    call        @LStrLen
 0040F370    mov         ebx,eax
 0040F372    lea         eax,[ebx+1]
 0040F375    push        eax
 0040F376    mov         eax,55C6B4;gvar_0055C6B4:?
 0040F37B    mov         ecx,1
 0040F380    mov         edx,dword ptr ds:[40EF98];_DynArr_11_6
 0040F386    call        @DynArraySetLength
 0040F38B    add         esp,4
 0040F38E    lea         eax,[ebx+ebx*2]
 0040F391    mov         edx,dword ptr ds:[55C6B4];gvar_0055C6B4:?
 0040F397    mov         ecx,dword ptr [ebp-4]
 0040F39A    mov         dword ptr [edx+eax*4],ecx
 0040F39D    mov         edx,dword ptr ds:[55C6B4];gvar_0055C6B4:?
 0040F3A3    mov         ecx,dword ptr [ebp-8]
 0040F3A6    mov         dword ptr [edx+eax*4+4],ecx
 0040F3AA    xor         eax,eax
 0040F3AC    pop         edx
 0040F3AD    pop         ecx
 0040F3AE    pop         ecx
 0040F3AF    mov         dword ptr fs:[eax],edx
 0040F3B2    push        40F3CA
 0040F3B7    mov         eax,[0053D428];0x0 gvar_0053D428
 0040F3BC    push        eax
 0040F3BD    call        kernel32.ReleaseMutex
 0040F3C2    ret
>0040F3C3    jmp         @HandleFinally
>0040F3C8    jmp         0040F3B7
 0040F3CA    xor         eax,eax
 0040F3CC    pop         edx
 0040F3CD    pop         ecx
 0040F3CE    pop         ecx
 0040F3CF    mov         dword ptr fs:[eax],edx
 0040F3D2    push        40F3F4
 0040F3D7    lea         eax,[ebp-40]
 0040F3DA    mov         edx,3
 0040F3DF    call        @LStrArrayClr
 0040F3E4    lea         eax,[ebp-0C]
 0040F3E7    call        @LStrClr
 0040F3EC    ret
>0040F3ED    jmp         @HandleFinally
>0040F3F2    jmp         0040F3D7
 0040F3F4    mov         eax,dword ptr [ebp-8]
 0040F3F7    pop         ebx
 0040F3F8    mov         esp,ebp
 0040F3FA    pop         ebp
 0040F3FB    ret
end;*}

//0040F400
{*procedure sub_0040F400(?:?; ?:?);
begin
 0040F400    push        ebx
 0040F401    push        esi
 0040F402    mov         ebx,edx
 0040F404    mov         esi,eax
 0040F406    push        40F44C
 0040F40B    push        40F468;'user32.dll'
 0040F410    call        kernel32.GetModuleHandleA
 0040F415    push        eax
 0040F416    call        kernel32.GetProcAddress
 0040F41B    test        eax,eax
>0040F41D    je          0040F42A
 0040F41F    push        0
 0040F421    push        1
 0040F423    push        ebx
 0040F424    push        esi
 0040F425    call        eax
 0040F427    pop         esi
 0040F428    pop         ebx
 0040F429    ret
 0040F42A    push        40F474
 0040F42F    push        40F468;'user32.dll'
 0040F434    call        kernel32.GetModuleHandleA
 0040F439    push        eax
 0040F43A    call        kernel32.GetProcAddress
 0040F43F    test        eax,eax
>0040F441    je          0040F448
 0040F443    push        1
 0040F445    push        ebx
 0040F446    call        eax
 0040F448    pop         esi
 0040F449    pop         ebx
 0040F44A    ret
end;*}

//0040F490
{*function sub_0040F490(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0040F490    push        ebp
 0040F491    mov         ebp,esp
 0040F493    add         esp,0FFFFFFEC
 0040F496    push        ebx
 0040F497    push        esi
 0040F498    mov         dword ptr [ebp-8],edx
 0040F49B    mov         dword ptr [ebp-4],eax
 0040F49E    xor         eax,eax
 0040F4A0    mov         dword ptr [ebp-0C],eax
 0040F4A3    mov         eax,ecx
 0040F4A5    call        0040F188
 0040F4AA    mov         ebx,eax
 0040F4AC    test        ebx,ebx
>0040F4AE    je          0040F624
 0040F4B4    push        0FF
 0040F4B6    mov         eax,[0053D428];0x0 gvar_0053D428
 0040F4BB    push        eax
 0040F4BC    call        kernel32.WaitForSingleObject
 0040F4C1    xor         ecx,ecx
 0040F4C3    push        ebp
 0040F4C4    push        40F61D
 0040F4C9    push        dword ptr fs:[ecx]
 0040F4CC    mov         dword ptr fs:[ecx],esp
 0040F4CF    mov         eax,[0055C6B4];gvar_0055C6B4:?
 0040F4D4    call        00405CE8
 0040F4D9    test        eax,eax
>0040F4DB    jl          0040F604
 0040F4E1    inc         eax
 0040F4E2    mov         dword ptr [ebp-10],0
 0040F4E9    mov         edx,dword ptr [ebp-10]
 0040F4EC    lea         edx,[edx+edx*2]
 0040F4EF    mov         ecx,dword ptr ds:[55C6B4];gvar_0055C6B4:?
 0040F4F5    cmp         ebx,dword ptr [ecx+edx*4+4]
>0040F4F9    jne         0040F5FA
 0040F4FF    mov         eax,[0055C6B4];gvar_0055C6B4:?
 0040F504    lea         esi,[eax+edx*4]
 0040F507    cmp         dword ptr [ebp-8],0
>0040F50B    jne         0040F54B
 0040F50D    mov         dword ptr [ebp-8],400
 0040F514    mov         byte ptr [ebp-11],1
 0040F518    mov         eax,dword ptr [esi+8]
 0040F51B    call        00405CE8
 0040F520    test        eax,eax
>0040F522    jl          0040F543
 0040F524    inc         eax
 0040F525    xor         ebx,ebx
 0040F527    mov         edx,ebx
 0040F529    add         edx,edx
 0040F52B    mov         ecx,dword ptr [esi+8]
 0040F52E    mov         edx,dword ptr [ecx+edx*8]
 0040F531    cmp         edx,dword ptr [ebp-8]
>0040F534    jne         0040F53F
 0040F536    mov         byte ptr [ebp-11],0
 0040F53A    inc         dword ptr [ebp-8]
>0040F53D    jmp         0040F543
 0040F53F    inc         ebx
 0040F540    dec         eax
>0040F541    jne         0040F527
 0040F543    cmp         byte ptr [ebp-11],0
>0040F547    je          0040F514
>0040F549    jmp         0040F59B
 0040F54B    mov         eax,dword ptr [esi+8]
 0040F54E    call        00405CE8
 0040F553    test        eax,eax
>0040F555    jl          0040F59B
 0040F557    inc         eax
 0040F558    xor         ebx,ebx
 0040F55A    mov         edx,ebx
 0040F55C    add         edx,edx
 0040F55E    mov         ecx,dword ptr [esi+8]
 0040F561    mov         ecx,dword ptr [ecx+edx*8]
 0040F564    cmp         ecx,dword ptr [ebp-8]
>0040F567    jne         0040F597
 0040F569    mov         ecx,dword ptr [esi+8]
 0040F56C    mov         ecx,dword ptr [ecx+edx*8+4]
 0040F570    cmp         ecx,dword ptr [ebp-4]
>0040F573    jne         0040F597
 0040F575    mov         ecx,dword ptr [esi+8]
 0040F578    mov         ecx,dword ptr [ecx+edx*8+8]
 0040F57C    cmp         ecx,dword ptr [ebp+8]
>0040F57F    jne         0040F597
 0040F581    mov         ecx,dword ptr [esi+8]
 0040F584    mov         edx,dword ptr [ecx+edx*8+0C]
 0040F588    cmp         edx,dword ptr [ebp+0C]
>0040F58B    jne         0040F597
 0040F58D    call        @TryFinallyExit
>0040F592    jmp         0040F624
 0040F597    inc         ebx
 0040F598    dec         eax
>0040F599    jne         0040F55A
 0040F59B    mov         eax,dword ptr [esi+8]
 0040F59E    call        @LStrLen
 0040F5A3    mov         ebx,eax
 0040F5A5    lea         eax,[ebx+1]
 0040F5A8    push        eax
 0040F5A9    lea         eax,[esi+8]
 0040F5AC    mov         ecx,1
 0040F5B1    mov         edx,dword ptr ds:[40EF54];TMsgHandlers
 0040F5B7    call        @DynArraySetLength
 0040F5BC    add         esp,4
 0040F5BF    mov         eax,ebx
 0040F5C1    add         eax,eax
 0040F5C3    mov         edx,dword ptr [esi+8]
 0040F5C6    mov         ecx,dword ptr [ebp-8]
 0040F5C9    mov         dword ptr [edx+eax*8],ecx
 0040F5CC    mov         edx,dword ptr [esi+8]
 0040F5CF    mov         ecx,dword ptr [ebp-4]
 0040F5D2    mov         dword ptr [edx+eax*8+4],ecx
 0040F5D6    mov         edx,dword ptr [esi+8]
 0040F5D9    mov         ecx,dword ptr [ebp+8]
 0040F5DC    mov         dword ptr [edx+eax*8+8],ecx
 0040F5E0    mov         ecx,dword ptr [ebp+0C]
 0040F5E3    mov         dword ptr [edx+eax*8+0C],ecx
 0040F5E7    mov         eax,dword ptr [ebp-8]
 0040F5EA    mov         dword ptr [ebp-0C],eax
 0040F5ED    mov         eax,dword ptr [esi+4]
 0040F5F0    mov         edx,dword ptr [ebp-8]
 0040F5F3    call        0040F400
>0040F5F8    jmp         0040F604
 0040F5FA    inc         dword ptr [ebp-10]
 0040F5FD    dec         eax
>0040F5FE    jne         0040F4E9
 0040F604    xor         eax,eax
 0040F606    pop         edx
 0040F607    pop         ecx
 0040F608    pop         ecx
 0040F609    mov         dword ptr fs:[eax],edx
 0040F60C    push        40F624
 0040F611    mov         eax,[0053D428];0x0 gvar_0053D428
 0040F616    push        eax
 0040F617    call        kernel32.ReleaseMutex
 0040F61C    ret
>0040F61D    jmp         @HandleFinally
>0040F622    jmp         0040F611
 0040F624    mov         eax,dword ptr [ebp-0C]
 0040F627    pop         esi
 0040F628    pop         ebx
 0040F629    mov         esp,ebp
 0040F62B    pop         ebp
 0040F62C    ret         8
end;*}

//0040F630
{*function sub_0040F630:?;
begin
 0040F630    push        0
 0040F632    push        0
 0040F634    call        0040F490
 0040F639    ret
end;*}

//0040F63C
{*function sub_0040F63C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0040F63C    push        ebp
 0040F63D    mov         ebp,esp
 0040F63F    add         esp,0FFFFFFEC
 0040F642    push        ebx
 0040F643    push        esi
 0040F644    push        edi
 0040F645    mov         dword ptr [ebp-8],ecx
 0040F648    mov         edi,edx
 0040F64A    mov         dword ptr [ebp-4],eax
 0040F64D    mov         byte ptr [ebp-9],0
 0040F651    cmp         dword ptr ds:[53D428],0;gvar_0053D428
>0040F658    je          0040F82A
 0040F65E    cmp         dword ptr [ebp-8],0
>0040F662    jne         0040F66C
 0040F664    call        kernel32.GetCurrentThreadId
 0040F669    mov         dword ptr [ebp-8],eax
 0040F66C    push        0FF
 0040F66E    mov         eax,[0053D428];0x0 gvar_0053D428
 0040F673    push        eax
 0040F674    call        kernel32.WaitForSingleObject
 0040F679    xor         ecx,ecx
 0040F67B    push        ebp
 0040F67C    push        40F7F9
 0040F681    push        dword ptr fs:[ecx]
 0040F684    mov         dword ptr fs:[ecx],esp
 0040F687    xor         eax,eax
 0040F689    mov         dword ptr [ebp-14],eax
 0040F68C    mov         eax,[0055C6B4];gvar_0055C6B4:?
 0040F691    call        00405CE8
 0040F696    test        eax,eax
>0040F698    jl          0040F7E0
 0040F69E    inc         eax
 0040F69F    mov         dword ptr [ebp-10],0
 0040F6A6    mov         edx,dword ptr [ebp-10]
 0040F6A9    lea         edx,[edx+edx*2]
 0040F6AC    mov         ecx,dword ptr ds:[55C6B4];gvar_0055C6B4:?
 0040F6B2    mov         ecx,dword ptr [ecx+edx*4]
 0040F6B5    cmp         ecx,dword ptr [ebp-8]
>0040F6B8    jne         0040F7D6
 0040F6BE    mov         eax,[0055C6B4];gvar_0055C6B4:?
 0040F6C3    lea         ebx,[eax+edx*4]
 0040F6C6    mov         eax,dword ptr [ebx+8]
 0040F6C9    call        00405CE8
 0040F6CE    mov         esi,eax
 0040F6D0    cmp         esi,0
>0040F6D3    jl          0040F768
 0040F6D9    test        edi,edi
>0040F6DB    je          0040F6E9
 0040F6DD    mov         eax,esi
 0040F6DF    add         eax,eax
 0040F6E1    mov         edx,dword ptr [ebx+8]
 0040F6E4    cmp         edi,dword ptr [edx+eax*8]
>0040F6E7    jne         0040F75E
 0040F6E9    mov         eax,esi
 0040F6EB    add         eax,eax
 0040F6ED    mov         edx,dword ptr [ebx+8]
 0040F6F0    mov         eax,dword ptr [edx+eax*8+4]
 0040F6F4    cmp         eax,dword ptr [ebp-4]
>0040F6F7    jne         0040F75E
 0040F6F9    mov         eax,esi
 0040F6FB    add         eax,eax
 0040F6FD    mov         edx,dword ptr [ebx+8]
 0040F700    mov         eax,dword ptr [edx+eax*8+8]
 0040F704    cmp         eax,dword ptr [ebp+8]
>0040F707    jne         0040F75E
 0040F709    mov         eax,esi
 0040F70B    add         eax,eax
 0040F70D    mov         edx,dword ptr [ebx+8]
 0040F710    mov         eax,dword ptr [edx+eax*8+0C]
 0040F714    cmp         eax,dword ptr [ebp+0C]
>0040F717    jne         0040F75E
 0040F719    mov         eax,dword ptr [ebx+8]
 0040F71C    call        00405CE8
 0040F721    add         eax,eax
 0040F723    mov         edx,dword ptr [ebx+8]
 0040F726    lea         eax,[edx+eax*8]
 0040F729    push        eax
 0040F72A    mov         eax,esi
 0040F72C    add         eax,eax
 0040F72E    mov         edx,dword ptr [ebx+8]
 0040F731    pop         ecx
 0040F732    push        esi
 0040F733    push        edi
 0040F734    mov         esi,ecx
 0040F736    lea         edi,[edx+eax*8]
 0040F739    movs        dword ptr [edi],dword ptr [esi]
 0040F73A    movs        dword ptr [edi],dword ptr [esi]
 0040F73B    movs        dword ptr [edi],dword ptr [esi]
 0040F73C    movs        dword ptr [edi],dword ptr [esi]
 0040F73D    pop         edi
 0040F73E    pop         esi
 0040F73F    mov         eax,dword ptr [ebx+8]
 0040F742    call        00405CE8
 0040F747    push        eax
 0040F748    lea         eax,[ebx+8]
 0040F74B    mov         ecx,1
 0040F750    mov         edx,dword ptr ds:[40EF54];TMsgHandlers
 0040F756    call        @DynArraySetLength
 0040F75B    add         esp,4
 0040F75E    dec         esi
 0040F75F    cmp         esi,0FFFFFFFF
>0040F762    jne         0040F6D9
 0040F768    cmp         dword ptr [ebx+8],0
>0040F76C    jne         0040F7E0
 0040F76E    mov         eax,dword ptr [ebx+4]
 0040F771    push        eax
 0040F772    call        user32.IsWindow
 0040F777    test        eax,eax
>0040F779    je          0040F7E0
 0040F77B    mov         eax,dword ptr [ebx+4]
 0040F77E    mov         dword ptr [ebp-14],eax
 0040F781    mov         eax,[0055C6B4];gvar_0055C6B4:?
 0040F786    call        00405CE8
 0040F78B    lea         eax,[eax+eax*2]
 0040F78E    mov         edx,dword ptr ds:[55C6B4];gvar_0055C6B4:?
 0040F794    lea         edx,[edx+eax*4]
 0040F797    mov         eax,dword ptr [ebp-10]
 0040F79A    lea         eax,[eax+eax*2]
 0040F79D    mov         ecx,dword ptr ds:[55C6B4];gvar_0055C6B4:?
 0040F7A3    lea         eax,[ecx+eax*4]
 0040F7A6    mov         ecx,dword ptr ds:[40EF80];_Unit1111_5
 0040F7AC    call        @CopyRecord
 0040F7B1    mov         eax,[0055C6B4];gvar_0055C6B4:?
 0040F7B6    call        00405CE8
 0040F7BB    push        eax
 0040F7BC    mov         eax,55C6B4;gvar_0055C6B4:?
 0040F7C1    mov         ecx,1
 0040F7C6    mov         edx,dword ptr ds:[40EF98];_DynArr_11_6
 0040F7CC    call        @DynArraySetLength
 0040F7D1    add         esp,4
>0040F7D4    jmp         0040F7E0
 0040F7D6    inc         dword ptr [ebp-10]
 0040F7D9    dec         eax
>0040F7DA    jne         0040F6A6
 0040F7E0    xor         eax,eax
 0040F7E2    pop         edx
 0040F7E3    pop         ecx
 0040F7E4    pop         ecx
 0040F7E5    mov         dword ptr fs:[eax],edx
 0040F7E8    push        40F800
 0040F7ED    mov         eax,[0053D428];0x0 gvar_0053D428
 0040F7F2    push        eax
 0040F7F3    call        kernel32.ReleaseMutex
 0040F7F8    ret
>0040F7F9    jmp         @HandleFinally
>0040F7FE    jmp         0040F7ED
 0040F800    cmp         dword ptr [ebp-14],0
>0040F804    je          0040F82A
 0040F806    call        kernel32.GetCurrentThreadId
 0040F80B    cmp         eax,dword ptr [ebp-8]
>0040F80E    jne         0040F81B
 0040F810    mov         eax,dword ptr [ebp-14]
 0040F813    push        eax
 0040F814    call        user32.DestroyWindow
>0040F819    jmp         0040F82A
 0040F81B    push        0
 0040F81D    push        0
 0040F81F    push        10
 0040F821    mov         eax,dword ptr [ebp-14]
 0040F824    push        eax
 0040F825    call        user32.PostMessageA
 0040F82A    mov         al,byte ptr [ebp-9]
 0040F82D    pop         edi
 0040F82E    pop         esi
 0040F82F    pop         ebx
 0040F830    mov         esp,ebp
 0040F832    pop         ebp
 0040F833    ret         8
end;*}

//0040F838
procedure sub_0040F838;
begin
{*
 0040F838    push        0
 0040F83A    push        0
 0040F83C    call        0040F63C
 0040F841    ret
*}
end;

//0040F844
procedure sub_0040F844;
begin
{*
 0040F844    mov         eax,[0053D428];0x0 gvar_0053D428
 0040F849    xor         edx,edx
 0040F84B    mov         dword ptr ds:[53D428],edx;gvar_0053D428
 0040F851    test        eax,eax
>0040F853    je          0040F85B
 0040F855    push        eax
 0040F856    call        kernel32.CloseHandle
 0040F85B    ret
*}
end;

//0040F964
{*function sub_0040F964(?:Pointer):?;
begin
 0040F964    push        ebp
 0040F965    mov         ebp,esp
 0040F967    push        ebx
 0040F968    push        esi
 0040F969    push        edi
 0040F96A    mov         esi,eax
 0040F96C    xor         ebx,ebx
 0040F96E    xor         eax,eax
 0040F970    push        ebp
 0040F971    push        40F9B0
 0040F976    push        dword ptr fs:[eax]
 0040F979    mov         dword ptr fs:[eax],esp
 0040F97C    mov         edx,2
 0040F981    mov         edi,esi
 0040F983    mov         eax,edi
 0040F985    call        004108A4
 0040F98A    test        al,al
>0040F98C    jne         0040F9A6
 0040F98E    cmp         word ptr [edi],5A4D
>0040F993    jne         0040F9A6
 0040F995    lea         eax,[esi+3C]
 0040F998    mov         ebx,dword ptr [eax]
 0040F99A    add         ebx,esi
 0040F99C    cmp         dword ptr [ebx],4550
>0040F9A2    je          0040F9A6
 0040F9A4    xor         ebx,ebx
 0040F9A6    xor         eax,eax
 0040F9A8    pop         edx
 0040F9A9    pop         ecx
 0040F9AA    pop         ecx
 0040F9AB    mov         dword ptr fs:[eax],edx
>0040F9AE    jmp         0040F9BC
>0040F9B0    jmp         @HandleAnyException
 0040F9B5    xor         ebx,ebx
 0040F9B7    call        @DoneExcept
 0040F9BC    mov         eax,ebx
 0040F9BE    pop         edi
 0040F9BF    pop         esi
 0040F9C0    pop         ebx
 0040F9C1    pop         ebp
 0040F9C2    ret
end;*}

//0040F9C4
{*function sub_0040F9C4(?:?; ?:?):?;
begin
 0040F9C4    push        ebx
 0040F9C5    push        esi
 0040F9C6    mov         esi,edx
 0040F9C8    mov         ebx,eax
 0040F9CA    mov         eax,ebx
 0040F9CC    call        0040F964
 0040F9D1    test        eax,eax
>0040F9D3    je          0040F9F4
 0040F9D5    cmp         word ptr [eax+18],20B
>0040F9DB    jne         0040F9EA
 0040F9DD    add         eax,18
 0040F9E0    mov         esi,dword ptr [eax+esi*8+70]
 0040F9E4    add         esi,ebx
 0040F9E6    mov         edx,esi
>0040F9E8    jmp         0040F9F6
 0040F9EA    mov         esi,dword ptr [eax+esi*8+78]
 0040F9EE    add         esi,ebx
 0040F9F0    mov         edx,esi
>0040F9F2    jmp         0040F9F6
 0040F9F4    xor         edx,edx
 0040F9F6    mov         eax,edx
 0040F9F8    pop         esi
 0040F9F9    pop         ebx
 0040F9FA    ret
end;*}

//0040F9FC
{*function sub_0040F9FC:?;
begin
 0040F9FC    xor         edx,edx
 0040F9FE    call        0040F9C4
 0040FA03    ret
end;*}

//0040FA04
{*function sub_0040FA04(?:HMODULE; ?:?):?;
begin
 0040FA04    push        ebp
 0040FA05    mov         ebp,esp
 0040FA07    add         esp,0FFFFFFF0
 0040FA0A    push        ebx
 0040FA0B    push        esi
 0040FA0C    xor         ecx,ecx
 0040FA0E    mov         dword ptr [ebp-10],ecx
 0040FA11    mov         dword ptr [ebp-0C],ecx
 0040FA14    mov         ebx,edx
 0040FA16    mov         esi,eax
 0040FA18    xor         eax,eax
 0040FA1A    push        ebp
 0040FA1B    push        40FABE
 0040FA20    push        dword ptr fs:[eax]
 0040FA23    mov         dword ptr fs:[eax],esp
 0040FA26    mov         eax,esi
 0040FA28    call        0040F964
 0040FA2D    cmp         word ptr [eax+18],20B
>0040FA33    jne         0040FA46
 0040FA35    add         eax,18
 0040FA38    mov         edx,dword ptr [eax+70]
 0040FA3B    mov         dword ptr [ebp-8],edx
 0040FA3E    mov         edx,dword ptr [eax+74]
 0040FA41    mov         dword ptr [ebp-4],edx
>0040FA44    jmp         0040FA52
 0040FA46    mov         edx,dword ptr [eax+78]
 0040FA49    mov         dword ptr [ebp-8],edx
 0040FA4C    mov         edx,dword ptr [eax+7C]
 0040FA4F    mov         dword ptr [ebp-4],edx
 0040FA52    mov         eax,dword ptr [ebp-8]
 0040FA55    cmp         ebx,eax
>0040FA57    jb          0040FAA1
 0040FA59    add         eax,dword ptr [ebp-4]
 0040FA5C    cmp         ebx,eax
>0040FA5E    jae         0040FAA1
 0040FA60    lea         eax,[ebp-0C]
 0040FA63    lea         edx,[ebx+esi]
 0040FA66    call        @LStrFromPChar
 0040FA6B    mov         eax,dword ptr [ebp-0C]
 0040FA6E    call        @LStrToPChar
 0040FA73    mov         esi,eax
 0040FA75    mov         ebx,esi
 0040FA77    inc         ebx
 0040FA78    cmp         byte ptr [ebx],2E
>0040FA7B    jne         0040FA77
 0040FA7D    mov         byte ptr [ebx],0
 0040FA80    inc         ebx
 0040FA81    push        esi
 0040FA82    call        kernel32.GetModuleHandleA
 0040FA87    push        eax
 0040FA88    lea         eax,[ebp-10]
 0040FA8B    mov         edx,ebx
 0040FA8D    call        @LStrFromPChar
 0040FA92    mov         edx,dword ptr [ebp-10]
 0040FA95    xor         ecx,ecx
 0040FA97    pop         eax
 0040FA98    call        0040FC34
 0040FA9D    mov         ebx,eax
>0040FA9F    jmp         0040FAA3
 0040FAA1    add         ebx,esi
 0040FAA3    xor         eax,eax
 0040FAA5    pop         edx
 0040FAA6    pop         ecx
 0040FAA7    pop         ecx
 0040FAA8    mov         dword ptr fs:[eax],edx
 0040FAAB    push        40FAC5
 0040FAB0    lea         eax,[ebp-10]
 0040FAB3    mov         edx,2
 0040FAB8    call        @LStrArrayClr
 0040FABD    ret
>0040FABE    jmp         @HandleFinally
>0040FAC3    jmp         0040FAB0
 0040FAC5    mov         eax,ebx
 0040FAC7    pop         esi
 0040FAC8    pop         ebx
 0040FAC9    mov         esp,ebp
 0040FACB    pop         ebp
 0040FACC    ret
end;*}

//0040FAD0
{*function sub_0040FAD0(?:?; ?:?):?;
begin
 0040FAD0    push        ebx
 0040FAD1    push        esi
 0040FAD2    push        edi
 0040FAD3    push        ebp
 0040FAD4    mov         edi,edx
 0040FAD6    cmp         word ptr [eax+18],20B
>0040FADC    jne         0040FAEB
 0040FADE    lea         ecx,[eax+18]
 0040FAE1    add         ecx,0F0
 0040FAE7    mov         esi,ecx
>0040FAE9    jmp         0040FAF6
 0040FAEB    lea         ecx,[eax+18]
 0040FAEE    add         ecx,0E0
 0040FAF4    mov         esi,ecx
 0040FAF6    movzx       ebp,word ptr [eax+6]
 0040FAFA    dec         ebp
 0040FAFB    test        ebp,ebp
>0040FAFD    jl          0040FB30
 0040FAFF    inc         ebp
 0040FB00    xor         ecx,ecx
 0040FB02    lea         ebx,[ecx+ecx*4]
 0040FB05    cmp         edx,dword ptr [esi+ebx*8+0C]
>0040FB09    jb          0040FB2C
 0040FB0B    movzx       ebx,word ptr [eax+6]
 0040FB0F    dec         ebx
 0040FB10    cmp         ecx,ebx
>0040FB12    je          0040FB1D
 0040FB14    lea         ebx,[ecx+ecx*4]
 0040FB17    cmp         edx,dword ptr [esi+ebx*8+34]
>0040FB1B    jae         0040FB2C
 0040FB1D    lea         eax,[ecx+ecx*4]
 0040FB20    mov         edi,edx
 0040FB22    sub         edi,dword ptr [esi+eax*8+0C]
 0040FB26    add         edi,dword ptr [esi+eax*8+14]
>0040FB2A    jmp         0040FB30
 0040FB2C    inc         ecx
 0040FB2D    dec         ebp
>0040FB2E    jne         0040FB02
 0040FB30    mov         eax,edi
 0040FB32    pop         ebp
 0040FB33    pop         edi
 0040FB34    pop         esi
 0040FB35    pop         ebx
 0040FB36    ret
end;*}

//0040FB38
{*function sub_0040FB38(?:?):?;
begin
 0040FB38    cmp         word ptr [eax+18],20B
>0040FB3E    jne         0040FB47
 0040FB40    add         eax,18
 0040FB43    mov         eax,dword ptr [eax+38]
 0040FB46    ret
 0040FB47    mov         eax,dword ptr [eax+50]
 0040FB4A    ret
end;*}

//0040FB4C
{*function sub_0040FB4C(?:?):?;
begin
 0040FB4C    push        ebx
 0040FB4D    push        esi
 0040FB4E    push        edi
 0040FB4F    mov         esi,eax
 0040FB51    xor         edi,edi
 0040FB53    cmp         byte ptr ds:[53D414],0;gvar_0053D414
>0040FB5A    jne         0040FC2D
 0040FB60    call        kernel32.GetVersion
 0040FB65    test        eax,80000000
>0040FB6A    jne         0040FB9F
 0040FB6C    push        10000
 0040FB71    push        40
 0040FB73    call        kernel32.LocalAlloc
 0040FB78    mov         ebx,eax
 0040FB7A    push        8000
 0040FB7F    push        ebx
 0040FB80    push        esi
 0040FB81    call        kernel32.GetModuleFileNameW
 0040FB86    push        0
 0040FB88    push        0
 0040FB8A    push        3
 0040FB8C    push        0
 0040FB8E    push        1
 0040FB90    push        80000000
 0040FB95    push        ebx
 0040FB96    call        kernel32.CreateFileW
 0040FB9B    mov         esi,eax
>0040FB9D    jmp         0040FBD0
 0040FB9F    push        105
 0040FBA4    push        40
 0040FBA6    call        kernel32.LocalAlloc
 0040FBAB    mov         ebx,eax
 0040FBAD    push        104
 0040FBB2    push        ebx
 0040FBB3    push        esi
 0040FBB4    call        kernel32.GetModuleFileNameA
 0040FBB9    push        0
 0040FBBB    push        0
 0040FBBD    push        3
 0040FBBF    push        0
 0040FBC1    push        1
 0040FBC3    push        80000000
 0040FBC8    push        ebx
 0040FBC9    call        kernel32.CreateFileA
 0040FBCE    mov         esi,eax
 0040FBD0    push        ebx
 0040FBD1    call        kernel32.LocalFree
 0040FBD6    cmp         esi,0FFFFFFFF
>0040FBD9    je          0040FC2D
 0040FBDB    call        kernel32.GetVersion
 0040FBE0    test        eax,80000000
>0040FBE5    jne         0040FBFB
 0040FBE7    push        0
 0040FBE9    push        0
 0040FBEB    push        0
 0040FBED    push        2
 0040FBEF    push        0
 0040FBF1    push        esi
 0040FBF2    call        kernel32.CreateFileMappingW
 0040FBF7    mov         ebx,eax
>0040FBF9    jmp         0040FC0D
 0040FBFB    push        0
 0040FBFD    push        0
 0040FBFF    push        0
 0040FC01    push        2
 0040FC03    push        0
 0040FC05    push        esi
 0040FC06    call        kernel32.CreateFileMappingA
 0040FC0B    mov         ebx,eax
 0040FC0D    test        ebx,ebx
>0040FC0F    je          0040FC27
 0040FC11    push        0
 0040FC13    push        0
 0040FC15    push        0
 0040FC17    push        4
 0040FC19    push        ebx
 0040FC1A    call        kernel32.MapViewOfFile
 0040FC1F    mov         edi,eax
 0040FC21    push        ebx
 0040FC22    call        kernel32.CloseHandle
 0040FC27    push        esi
 0040FC28    call        kernel32.CloseHandle
 0040FC2D    mov         eax,edi
 0040FC2F    pop         edi
 0040FC30    pop         esi
 0040FC31    pop         ebx
 0040FC32    ret
end;*}

//0040FC34
{*function sub_0040FC34(?:HMODULE; ?:AnsiString; ?:?):?;
begin
 0040FC34    push        ebp
 0040FC35    mov         ebp,esp
 0040FC37    add         esp,0FFFFFFCC
 0040FC3A    push        ebx
 0040FC3B    push        esi
 0040FC3C    push        edi
 0040FC3D    mov         byte ptr [ebp-9],cl
 0040FC40    mov         dword ptr [ebp-8],edx
 0040FC43    mov         dword ptr [ebp-4],eax
 0040FC46    xor         ebx,ebx
 0040FC48    cmp         dword ptr [ebp-4],0
>0040FC4C    je          0040FE04
 0040FC52    mov         eax,dword ptr [ebp-4]
 0040FC55    call        0040F964
 0040FC5A    mov         edi,eax
 0040FC5C    test        edi,edi
>0040FC5E    je          0040FDEC
 0040FC64    mov         eax,edi
 0040FC66    call        0040FB38
 0040FC6B    mov         dword ptr [ebp-30],eax
 0040FC6E    cmp         word ptr [edi+18],20B
>0040FC74    jne         0040FC81
 0040FC76    lea         eax,[edi+18]
 0040FC79    mov         eax,dword ptr [eax+70]
 0040FC7C    mov         dword ptr [ebp-20],eax
>0040FC7F    jmp         0040FC87
 0040FC81    mov         eax,dword ptr [edi+78]
 0040FC84    mov         dword ptr [ebp-20],eax
 0040FC87    mov         eax,dword ptr [ebp-4]
 0040FC8A    add         eax,dword ptr [ebp-20]
 0040FC8D    mov         esi,eax
 0040FC8F    test        esi,esi
>0040FC91    je          0040FDEC
 0040FC97    mov         eax,dword ptr [esi+18]
 0040FC9A    dec         eax
 0040FC9B    test        eax,eax
>0040FC9D    jl          0040FDEC
 0040FCA3    inc         eax
 0040FCA4    mov         dword ptr [ebp-34],eax
 0040FCA7    mov         dword ptr [ebp-10],0
 0040FCAE    mov         eax,dword ptr [ebp-8]
 0040FCB1    push        eax
 0040FCB2    mov         eax,dword ptr [esi+20]
 0040FCB5    add         eax,dword ptr [ebp-4]
 0040FCB8    mov         edx,dword ptr [ebp-10]
 0040FCBB    mov         eax,dword ptr [eax+edx*4]
 0040FCBE    add         eax,dword ptr [ebp-4]
 0040FCC1    push        eax
 0040FCC2    call        kernel32.lstrcmpA
 0040FCC7    test        eax,eax
>0040FCC9    jne         0040FDE0
 0040FCCF    mov         eax,dword ptr [esi+24]
 0040FCD2    add         eax,dword ptr [ebp-4]
 0040FCD5    mov         edx,dword ptr [ebp-10]
 0040FCD8    mov         bx,word ptr [eax+edx*2]
 0040FCDC    movzx       eax,bx
 0040FCDF    mov         edx,dword ptr [esi+1C]
 0040FCE2    add         edx,dword ptr [ebp-4]
 0040FCE5    mov         eax,dword ptr [edx+eax*4]
 0040FCE8    mov         dword ptr [ebp-14],eax
 0040FCEB    cmp         byte ptr [ebp-9],0
>0040FCEF    jne         0040FCFD
 0040FCF1    mov         eax,dword ptr [ebp-14]
 0040FCF4    cmp         eax,dword ptr [ebp-30]
>0040FCF7    jbe         0040FDD1
 0040FCFD    mov         eax,dword ptr [ebp-4]
 0040FD00    add         eax,dword ptr [ebp-14]
 0040FD03    mov         dword ptr [ebp-28],eax
 0040FD06    cmp         dword ptr ds:[53D408],0;gvar_0053D408
>0040FD0D    je          0040FD24
 0040FD0F    lea         eax,[ebp-28]
 0040FD12    call        dword ptr ds:[53D408]
 0040FD18    test        al,al
>0040FD1A    je          0040FD24
 0040FD1C    mov         ebx,dword ptr [ebp-28]
>0040FD1F    jmp         0040FDEC
 0040FD24    cmp         dword ptr ds:[53D40C],0;gvar_0053D40C
>0040FD2B    je          0040FD3B
 0040FD2D    mov         eax,dword ptr [ebp-4]
 0040FD30    call        dword ptr ds:[53D40C]
 0040FD36    mov         dword ptr [ebp-24],eax
>0040FD39    jmp         0040FD40
 0040FD3B    xor         eax,eax
 0040FD3D    mov         dword ptr [ebp-24],eax
 0040FD40    cmp         dword ptr [ebp-24],0
 0040FD44    sete        byte ptr [ebp-29]
 0040FD48    cmp         dword ptr [ebp-24],0
>0040FD4C    jne         0040FD59
 0040FD4E    mov         eax,dword ptr [ebp-4]
 0040FD51    call        0040FB4C
 0040FD56    mov         dword ptr [ebp-24],eax
 0040FD59    cmp         dword ptr [ebp-24],0
>0040FD5D    je          0040FDD1
 0040FD5F    xor         eax,eax
 0040FD61    push        ebp
 0040FD62    push        40FDB8
 0040FD67    push        dword ptr fs:[eax]
 0040FD6A    mov         dword ptr fs:[eax],esp
 0040FD6D    mov         eax,dword ptr [esi+20]
 0040FD70    mov         dword ptr [ebp-18],eax
 0040FD73    mov         eax,dword ptr [esi+1C]
 0040FD76    mov         dword ptr [ebp-1C],eax
 0040FD79    mov         edx,dword ptr [ebp-20]
 0040FD7C    mov         eax,edi
 0040FD7E    call        0040FAD0
 0040FD83    add         eax,dword ptr [ebp-24]
 0040FD86    mov         esi,eax
 0040FD88    mov         eax,dword ptr [esi+20]
 0040FD8B    cmp         eax,dword ptr [ebp-18]
>0040FD8E    jne         0040FDAE
 0040FD90    mov         eax,dword ptr [esi+1C]
 0040FD93    cmp         eax,dword ptr [ebp-1C]
>0040FD96    jne         0040FDAE
 0040FD98    mov         edx,dword ptr [esi+1C]
 0040FD9B    mov         eax,edi
 0040FD9D    call        0040FAD0
 0040FDA2    add         eax,dword ptr [ebp-24]
 0040FDA5    movzx       edx,bx
 0040FDA8    mov         eax,dword ptr [eax+edx*4]
 0040FDAB    mov         dword ptr [ebp-14],eax
 0040FDAE    xor         eax,eax
 0040FDB0    pop         edx
 0040FDB1    pop         ecx
 0040FDB2    pop         ecx
 0040FDB3    mov         dword ptr fs:[eax],edx
>0040FDB6    jmp         0040FDC2
>0040FDB8    jmp         @HandleAnyException
 0040FDBD    call        @DoneExcept
 0040FDC2    cmp         byte ptr [ebp-29],0
>0040FDC6    je          0040FDD1
 0040FDC8    mov         eax,dword ptr [ebp-24]
 0040FDCB    push        eax
 0040FDCC    call        kernel32.UnmapViewOfFile
 0040FDD1    mov         edx,dword ptr [ebp-14]
 0040FDD4    mov         eax,dword ptr [ebp-4]
 0040FDD7    call        0040FA04
 0040FDDC    mov         ebx,eax
>0040FDDE    jmp         0040FDEC
 0040FDE0    inc         dword ptr [ebp-10]
 0040FDE3    dec         dword ptr [ebp-34]
>0040FDE6    jne         0040FCAE
 0040FDEC    test        ebx,ebx
>0040FDEE    jne         0040FE04
 0040FDF0    mov         eax,dword ptr [ebp-8]
 0040FDF3    call        @LStrToPChar
 0040FDF8    push        eax
 0040FDF9    mov         eax,dword ptr [ebp-4]
 0040FDFC    push        eax
 0040FDFD    call        kernel32.GetProcAddress
 0040FE02    mov         ebx,eax
 0040FE04    mov         eax,ebx
 0040FE06    pop         edi
 0040FE07    pop         esi
 0040FE08    pop         ebx
 0040FE09    mov         esp,ebp
 0040FE0B    pop         ebp
 0040FE0C    ret
end;*}

//0040FE10
{*function sub_0040FE10(?:HMODULE; ?:?):?;
begin
 0040FE10    push        ebx
 0040FE11    push        esi
 0040FE12    push        edi
 0040FE13    push        ebp
 0040FE14    mov         ebx,edx
 0040FE16    mov         edi,eax
 0040FE18    xor         esi,esi
 0040FE1A    mov         ebp,ebx
 0040FE1C    mov         eax,edi
 0040FE1E    call        0040F9FC
 0040FE23    test        eax,eax
>0040FE25    je          0040FE4A
 0040FE27    sub         ebx,dword ptr [eax+10]
 0040FE2A    test        ebx,ebx
>0040FE2C    jl          0040FE4A
 0040FE2E    cmp         ebx,dword ptr [eax+14]
>0040FE31    jge         0040FE4A
 0040FE33    mov         eax,dword ptr [eax+1C]
 0040FE36    add         eax,edi
 0040FE38    mov         eax,dword ptr [eax+ebx*4]
 0040FE3B    test        eax,eax
>0040FE3D    jbe         0040FE4A
 0040FE3F    mov         edx,eax
 0040FE41    mov         eax,edi
 0040FE43    call        0040FA04
 0040FE48    mov         esi,eax
 0040FE4A    test        esi,esi
>0040FE4C    jne         0040FE57
 0040FE4E    push        ebp
 0040FE4F    push        edi
 0040FE50    call        kernel32.GetProcAddress
 0040FE55    mov         esi,eax
 0040FE57    mov         eax,esi
 0040FE59    pop         ebp
 0040FE5A    pop         edi
 0040FE5B    pop         esi
 0040FE5C    pop         ebx
 0040FE5D    ret
end;*}

//0040FE60
{*procedure sub_0040FE60(?:?; ?:?; ?:?; ?:?);
begin
 0040FE60    push        ebp
 0040FE61    mov         ebp,esp
 0040FE63    push        0
 0040FE65    push        0
 0040FE67    push        0
 0040FE69    push        0
 0040FE6B    push        0
 0040FE6D    push        ebx
 0040FE6E    push        esi
 0040FE6F    push        edi
 0040FE70    mov         byte ptr [ebp-1],cl
 0040FE73    mov         edi,edx
 0040FE75    mov         ebx,eax
 0040FE77    xor         eax,eax
 0040FE79    push        ebp
 0040FE7A    push        40FFAB
 0040FE7F    push        dword ptr fs:[eax]
 0040FE82    mov         dword ptr fs:[eax],esp
 0040FE85    call        kernel32.GetVersion
 0040FE8A    test        eax,80000000
>0040FE8F    je          0040FEB1
 0040FE91    lea         eax,[ebp-10]
 0040FE94    push        eax
 0040FE95    mov         cl,byte ptr [ebp-1]
 0040FE98    mov         edx,edi
 0040FE9A    mov         eax,ebx
 0040FE9C    call        0040FFD4
 0040FEA1    mov         edx,dword ptr [ebp-10]
 0040FEA4    mov         eax,dword ptr [ebp+8]
 0040FEA7    call        @LStrFromWStr
>0040FEAC    jmp         0040FF85
 0040FEB1    mov         eax,dword ptr [ebp+8]
 0040FEB4    call        @LStrClr
 0040FEB9    mov         eax,ebx
 0040FEBB    call        0040F9FC
 0040FEC0    test        eax,eax
>0040FEC2    je          0040FF56
 0040FEC8    mov         esi,eax
 0040FECA    mov         eax,dword ptr [esi+14]
 0040FECD    dec         eax
 0040FECE    test        eax,eax
>0040FED0    jl          0040FF56
 0040FED6    inc         eax
 0040FED7    mov         dword ptr [ebp-8],0
 0040FEDE    mov         edx,dword ptr [esi+1C]
 0040FEE1    add         edx,ebx
 0040FEE3    mov         ecx,dword ptr [ebp-8]
 0040FEE6    mov         edx,dword ptr [edx+ecx*4]
 0040FEE9    add         edx,ebx
 0040FEEB    cmp         edx,edi
>0040FEED    jne         0040FF50
 0040FEEF    mov         eax,dword ptr [esi+18]
 0040FEF2    dec         eax
 0040FEF3    test        eax,eax
>0040FEF5    jl          0040FF20
 0040FEF7    inc         eax
 0040FEF8    xor         edi,edi
 0040FEFA    mov         edx,dword ptr [esi+24]
 0040FEFD    add         edx,ebx
 0040FEFF    movzx       edx,word ptr [edx+edi*2]
 0040FF03    cmp         edx,dword ptr [ebp-8]
>0040FF06    jne         0040FF1C
 0040FF08    mov         eax,dword ptr [ebp+8]
 0040FF0B    mov         edx,dword ptr [esi+20]
 0040FF0E    add         edx,ebx
 0040FF10    mov         edx,dword ptr [edx+edi*4]
 0040FF13    add         edx,ebx
 0040FF15    call        @LStrFromPChar
>0040FF1A    jmp         0040FF20
 0040FF1C    inc         edi
 0040FF1D    dec         eax
>0040FF1E    jne         0040FEFA
 0040FF20    mov         eax,dword ptr [ebp+8]
 0040FF23    cmp         dword ptr [eax],0
>0040FF26    jne         0040FF56
 0040FF28    lea         eax,[ebp-14]
 0040FF2B    push        eax
 0040FF2C    mov         eax,dword ptr [esi+10]
 0040FF2F    add         eax,dword ptr [ebp-8]
 0040FF32    mov         cl,30
 0040FF34    mov         edx,1
 0040FF39    call        0040AA8C
 0040FF3E    mov         ecx,dword ptr [ebp-14]
 0040FF41    mov         eax,dword ptr [ebp+8]
 0040FF44    mov         edx,40FFC4;'#'
 0040FF49    call        @LStrCat3
>0040FF4E    jmp         0040FF56
 0040FF50    inc         dword ptr [ebp-8]
 0040FF53    dec         eax
>0040FF54    jne         0040FEDE
 0040FF56    cmp         byte ptr [ebp-1],0
>0040FF5A    je          0040FF85
 0040FF5C    lea         edx,[ebp-0C]
 0040FF5F    mov         eax,dword ptr [ebp+8]
 0040FF62    call        00410248
 0040FF67    test        al,al
>0040FF69    je          0040FF85
 0040FF6B    push        dword ptr [ebp-0C]
 0040FF6E    push        40FFD0;'.'
 0040FF73    mov         eax,dword ptr [ebp+8]
 0040FF76    push        dword ptr [eax]
 0040FF78    mov         eax,dword ptr [ebp+8]
 0040FF7B    mov         edx,3
 0040FF80    call        @LStrCatN
 0040FF85    xor         eax,eax
 0040FF87    pop         edx
 0040FF88    pop         ecx
 0040FF89    pop         ecx
 0040FF8A    mov         dword ptr fs:[eax],edx
 0040FF8D    push        40FFB2
 0040FF92    lea         eax,[ebp-14]
 0040FF95    call        @LStrClr
 0040FF9A    lea         eax,[ebp-10]
 0040FF9D    call        @WStrClr
 0040FFA2    lea         eax,[ebp-0C]
 0040FFA5    call        @LStrClr
 0040FFAA    ret
>0040FFAB    jmp         @HandleFinally
>0040FFB0    jmp         0040FF92
 0040FFB2    pop         edi
 0040FFB3    pop         esi
 0040FFB4    pop         ebx
 0040FFB5    mov         esp,ebp
 0040FFB7    pop         ebp
 0040FFB8    ret         4
end;*}

//0040FFD4
{*procedure sub_0040FFD4(?:Integer; ?:?; ?:?; ?:?);
begin
 0040FFD4    push        ebp
 0040FFD5    mov         ebp,esp
 0040FFD7    push        0
 0040FFD9    push        0
 0040FFDB    push        0
 0040FFDD    push        0
 0040FFDF    push        0
 0040FFE1    push        ebx
 0040FFE2    push        esi
 0040FFE3    push        edi
 0040FFE4    mov         byte ptr [ebp-1],cl
 0040FFE7    mov         edi,edx
 0040FFE9    mov         ebx,eax
 0040FFEB    xor         eax,eax
 0040FFED    push        ebp
 0040FFEE    push        41010A
 0040FFF3    push        dword ptr fs:[eax]
 0040FFF6    mov         dword ptr fs:[eax],esp
 0040FFF9    mov         eax,dword ptr [ebp+8]
 0040FFFC    call        @WStrClr
 00410001    mov         eax,ebx
 00410003    call        0040F9FC
 00410008    test        eax,eax
>0041000A    je          004100B5
 00410010    mov         esi,eax
 00410012    mov         eax,dword ptr [esi+14]
 00410015    dec         eax
 00410016    test        eax,eax
>00410018    jl          004100B5
 0041001E    inc         eax
 0041001F    mov         dword ptr [ebp-8],0
 00410026    mov         edx,dword ptr [esi+1C]
 00410029    add         edx,ebx
 0041002B    mov         ecx,dword ptr [ebp-8]
 0041002E    mov         edx,dword ptr [edx+ecx*4]
 00410031    add         edx,ebx
 00410033    cmp         edx,edi
>00410035    jne         004100AB
 00410037    mov         eax,dword ptr [esi+18]
 0041003A    dec         eax
 0041003B    test        eax,eax
>0041003D    jl          00410073
 0041003F    inc         eax
 00410040    xor         edi,edi
 00410042    mov         edx,dword ptr [esi+24]
 00410045    add         edx,ebx
 00410047    movzx       edx,word ptr [edx+edi*2]
 0041004B    cmp         edx,dword ptr [ebp-8]
>0041004E    jne         0041006F
 00410050    lea         eax,[ebp-10]
 00410053    mov         edx,dword ptr [esi+20]
 00410056    add         edx,ebx
 00410058    mov         edx,dword ptr [edx+edi*4]
 0041005B    add         edx,ebx
 0041005D    call        @LStrFromPChar
 00410062    mov         edx,dword ptr [ebp-10]
 00410065    mov         eax,dword ptr [ebp+8]
 00410068    call        @WStrFromLStr
>0041006D    jmp         00410073
 0041006F    inc         edi
 00410070    dec         eax
>00410071    jne         00410042
 00410073    mov         eax,dword ptr [ebp+8]
 00410076    mov         eax,dword ptr [eax]
 00410078    xor         edx,edx
 0041007A    call        @WStrCmp
>0041007F    jne         004100B5
 00410081    lea         eax,[ebp-14]
 00410084    push        eax
 00410085    mov         eax,dword ptr [esi+10]
 00410088    add         eax,dword ptr [ebp-8]
 0041008B    mov         cx,30
 0041008F    mov         edx,1
 00410094    call        0040AC10
 00410099    mov         ecx,dword ptr [ebp-14]
 0041009C    mov         eax,dword ptr [ebp+8]
 0041009F    mov         edx,410120;'#'
 004100A4    call        @WStrCat3
>004100A9    jmp         004100B5
 004100AB    inc         dword ptr [ebp-8]
 004100AE    dec         eax
>004100AF    jne         00410026
 004100B5    cmp         byte ptr [ebp-1],0
>004100B9    je          004100E4
 004100BB    lea         edx,[ebp-0C]
 004100BE    mov         eax,dword ptr [ebp+8]
 004100C1    call        00410558
 004100C6    test        al,al
>004100C8    je          004100E4
 004100CA    push        dword ptr [ebp-0C]
 004100CD    push        410128
 004100D2    mov         eax,dword ptr [ebp+8]
 004100D5    push        dword ptr [eax]
 004100D7    mov         eax,dword ptr [ebp+8]
 004100DA    mov         edx,3
 004100DF    call        @WStrCatN
 004100E4    xor         eax,eax
 004100E6    pop         edx
 004100E7    pop         ecx
 004100E8    pop         ecx
 004100E9    mov         dword ptr fs:[eax],edx
 004100EC    push        410111
 004100F1    lea         eax,[ebp-14]
 004100F4    call        @WStrClr
 004100F9    lea         eax,[ebp-10]
 004100FC    call        @LStrClr
 00410101    lea         eax,[ebp-0C]
 00410104    call        @WStrClr
 00410109    ret
>0041010A    jmp         @HandleFinally
>0041010F    jmp         004100F1
 00410111    pop         edi
 00410112    pop         esi
 00410113    pop         ebx
 00410114    mov         esp,ebp
 00410116    pop         ebp
 00410117    ret         4
end;*}

//0041012C
{*procedure sub_0041012C(?:Cardinal; ?:?; ?:WideString; ?:?);
begin
 0041012C    push        ebp
 0041012D    mov         ebp,esp
 0041012F    push        0
 00410131    push        0
 00410133    push        0
 00410135    push        0
 00410137    push        ebx
 00410138    push        esi
 00410139    push        edi
 0041013A    mov         edi,ecx
 0041013C    mov         ebx,edx
 0041013E    mov         esi,eax
 00410140    xor         eax,eax
 00410142    push        ebp
 00410143    push        410236
 00410148    push        dword ptr fs:[eax]
 0041014B    mov         dword ptr fs:[eax],esp
 0041014E    mov         eax,dword ptr [ebp+8]
 00410151    call        @LStrClr
 00410156    call        kernel32.GetVersion
 0041015B    test        eax,80000000
>00410160    jne         00410175
 00410162    push        ebx
 00410163    mov         eax,edi
 00410165    call        @WStrToPWChar
 0041016A    push        eax
 0041016B    push        esi
 0041016C    call        kernel32.FindResourceW
 00410171    mov         ebx,eax
>00410173    jmp         004101D4
 00410175    xor         eax,eax
 00410177    mov         al,bl
 00410179    cmp         ebx,eax
>0041017B    jne         0041019B
 0041017D    push        ebx
 0041017E    lea         eax,[ebp-4]
 00410181    mov         edx,edi
 00410183    call        @LStrFromWStr
 00410188    mov         eax,dword ptr [ebp-4]
 0041018B    call        @LStrToPChar
 00410190    push        eax
 00410191    push        esi
 00410192    call        kernel32.FindResourceA
 00410197    mov         ebx,eax
>00410199    jmp         004101D4
 0041019B    lea         eax,[ebp-0C]
 0041019E    mov         edx,ebx
 004101A0    call        @WStrFromPWChar
 004101A5    mov         edx,dword ptr [ebp-0C]
 004101A8    lea         eax,[ebp-8]
 004101AB    call        @LStrFromWStr
 004101B0    mov         eax,dword ptr [ebp-8]
 004101B3    call        @LStrToPChar
 004101B8    push        eax
 004101B9    lea         eax,[ebp-10]
 004101BC    mov         edx,edi
 004101BE    call        @LStrFromWStr
 004101C3    mov         eax,dword ptr [ebp-10]
 004101C6    call        @LStrToPChar
 004101CB    push        eax
 004101CC    push        esi
 004101CD    call        kernel32.FindResourceA
 004101D2    mov         ebx,eax
 004101D4    test        ebx,ebx
>004101D6    je          0041020B
 004101D8    push        ebx
 004101D9    push        esi
 004101DA    call        kernel32.LoadResource
 004101DF    mov         edi,eax
 004101E1    test        edi,edi
>004101E3    je          0041020B
 004101E5    push        ebx
 004101E6    push        esi
 004101E7    call        kernel32.SizeofResource
 004101EC    push        eax
 004101ED    push        edi
 004101EE    call        kernel32.LockResource
 004101F3    mov         edx,eax
 004101F5    mov         eax,dword ptr [ebp+8]
 004101F8    pop         ecx
 004101F9    call        @LStrFromPCharLen
 004101FE    mov         eax,edi
 00410200    call        00408150
 00410205    push        edi
 00410206    call        kernel32.FreeResource
 0041020B    xor         eax,eax
 0041020D    pop         edx
 0041020E    pop         ecx
 0041020F    pop         ecx
 00410210    mov         dword ptr fs:[eax],edx
 00410213    push        41023D
 00410218    lea         eax,[ebp-10]
 0041021B    call        @LStrClr
 00410220    lea         eax,[ebp-0C]
 00410223    call        @WStrClr
 00410228    lea         eax,[ebp-8]
 0041022B    mov         edx,2
 00410230    call        @LStrArrayClr
 00410235    ret
>00410236    jmp         @HandleFinally
>0041023B    jmp         00410218
 0041023D    pop         edi
 0041023E    pop         esi
 0041023F    pop         ebx
 00410240    mov         esp,ebp
 00410242    pop         ebp
 00410243    ret         4
end;*}

//00410248
{*function sub_00410248(?:?; ?:?):?;
begin
 00410248    push        ebp
 00410249    mov         ebp,esp
 0041024B    add         esp,0FFFFFFE8
 0041024E    push        ebx
 0041024F    push        esi
 00410250    push        edi
 00410251    xor         ecx,ecx
 00410253    mov         dword ptr [ebp-18],ecx
 00410256    mov         dword ptr [ebp-14],ecx
 00410259    mov         dword ptr [ebp-4],edx
 0041025C    mov         ebx,eax
 0041025E    xor         eax,eax
 00410260    push        ebp
 00410261    push        410503
 00410266    push        dword ptr fs:[eax]
 00410269    mov         dword ptr fs:[eax],esp
 0041026C    mov         byte ptr [ebp-5],0
 00410270    mov         eax,dword ptr [ebp-4]
 00410273    call        @LStrClr
 00410278    push        0
 0041027A    mov         esi,dword ptr ds:[55B694];^gvar_0053D0CC
 00410280    mov         esi,dword ptr [esi]
 00410282    mov         eax,ebx
 00410284    mov         ecx,41051C;'.'
 00410289    mov         edx,410528;'::'
 0041028E    call        esi
 00410290    cmp         dword ptr [ebx],0
>00410293    je          004104E8
 00410299    mov         eax,dword ptr [ebx]
 0041029B    cmp         byte ptr [eax],40
>0041029E    jne         004104E8
 004102A4    lea         eax,[ebp-14]
 004102A7    call        @LStrClr
 004102AC    mov         eax,dword ptr [ebx]
 004102AE    call        @DynArrayLength
 004102B3    dec         eax
>004102B4    jle         00410309
 004102B6    mov         eax,dword ptr [ebx]
 004102B8    cmp         byte ptr [eax+1],25
>004102BC    jne         00410309
 004102BE    mov         eax,dword ptr [ebx]
 004102C0    call        @DynArrayLength
 004102C5    mov         esi,eax
 004102C7    dec         esi
 004102C8    cmp         esi,3
>004102CB    jl          00410309
 004102CD    mov         eax,dword ptr [ebx]
 004102CF    cmp         byte ptr [eax+esi-1],25
>004102D4    jne         00410303
 004102D6    mov         eax,dword ptr [ebx]
 004102D8    cmp         byte ptr [eax+esi],40
>004102DC    jne         00410303
 004102DE    lea         eax,[ebp-18]
 004102E1    push        eax
 004102E2    lea         edx,[esi+2]
 004102E5    mov         eax,dword ptr [ebx]
 004102E7    mov         ecx,7FFFFFFF
 004102EC    call        @LStrCopy
 004102F1    mov         ecx,dword ptr [ebp-18]
 004102F4    lea         eax,[ebp-14]
 004102F7    mov         edx,41051C;'.'
 004102FC    call        @LStrCat3
>00410301    jmp         00410309
 00410303    dec         esi
 00410304    cmp         esi,2
>00410307    jne         004102CD
 00410309    mov         dword ptr [ebp-0C],3
 00410310    mov         eax,dword ptr [ebx]
 00410312    call        @DynArrayLength
 00410317    cmp         eax,6
>0041031A    jle         0041035E
 0041031C    mov         eax,dword ptr [ebx]
 0041031E    cmp         byte ptr [eax+1],5F
>00410322    jne         0041035E
 00410324    mov         eax,dword ptr [ebx]
 00410326    cmp         byte ptr [eax+2],24
>0041032A    jne         0041035E
 0041032C    mov         eax,dword ptr [ebx]
 0041032E    call        @DynArrayLength
 00410333    mov         edi,eax
 00410335    dec         edi
 00410336    sub         edi,5
>00410339    jl          0041035E
 0041033B    inc         edi
 0041033C    mov         esi,5
 00410341    mov         eax,dword ptr [ebx]
 00410343    cmp         byte ptr [eax+esi-1],24
>00410348    jne         0041035A
 0041034A    mov         eax,dword ptr [ebx]
 0041034C    cmp         byte ptr [eax+esi],40
>00410350    jne         0041035E
 00410352    lea         eax,[esi+1]
 00410355    mov         dword ptr [ebp-0C],eax
>00410358    jmp         0041035E
 0041035A    inc         esi
 0041035B    dec         edi
>0041035C    jne         00410341
 0041035E    mov         byte ptr [ebp-0D],0
 00410362    mov         byte ptr [ebp-0E],0
 00410366    mov         esi,dword ptr [ebp-0C]
 00410369    mov         eax,dword ptr [ebx]
 0041036B    call        @DynArrayLength
 00410370    mov         edi,eax
 00410372    sub         edi,esi
>00410374    jl          004103F2
 00410376    inc         edi
 00410377    mov         eax,dword ptr [ebx]
 00410379    mov         al,byte ptr [eax+esi-1]
 0041037D    sub         al,24
>0041037F    je          00410387
 00410381    sub         al,1C
>00410383    je          004103C5
>00410385    jmp         004103EE
 00410387    mov         eax,dword ptr [ebx]
 00410389    call        @DynArrayLength
 0041038E    lea         edx,[esi+1]
 00410391    cmp         eax,edx
>00410393    jle         0041039E
 00410395    mov         eax,dword ptr [ebx]
 00410397    cmp         byte ptr [eax+esi+1],64
>0041039C    je          004103A2
 0041039E    xor         eax,eax
>004103A0    jmp         004103A4
 004103A2    mov         al,1
 004103A4    mov         byte ptr [ebp-0D],al
 004103A7    mov         eax,ebx
 004103A9    mov         ecx,7FFFFFFF
 004103AE    mov         edx,esi
 004103B0    call        @LStrDelete
 004103B5    mov         eax,ebx
 004103B7    mov         edx,dword ptr [ebp-14]
 004103BA    call        @LStrCat
 004103BF    mov         byte ptr [ebp-0E],1
>004103C3    jmp         004103F2
 004103C5    mov         eax,ebx
 004103C7    call        00404C34
 004103CC    mov         byte ptr [eax+esi-1],2E
 004103D1    mov         eax,dword ptr [ebp-4]
 004103D4    cmp         dword ptr [eax],0
>004103D7    jne         004103EE
 004103D9    mov         eax,dword ptr [ebp-4]
 004103DC    push        eax
 004103DD    mov         ecx,esi
 004103DF    sub         ecx,2
 004103E2    mov         eax,dword ptr [ebx]
 004103E4    mov         edx,2
 004103E9    call        @LStrCopy
 004103EE    inc         esi
 004103EF    dec         edi
>004103F0    jne         00410377
 004103F2    mov         eax,dword ptr [ebp-4]
 004103F5    cmp         dword ptr [eax],0
>004103F8    je          0041043D
 004103FA    mov         eax,dword ptr [ebp-4]
 004103FD    mov         eax,dword ptr [eax]
 004103FF    call        @DynArrayLength
 00410404    mov         esi,eax
 00410406    add         esi,2
 00410409    mov         eax,dword ptr [ebx]
 0041040B    call        @DynArrayLength
 00410410    cmp         esi,eax
>00410412    jge         00410435
 00410414    mov         eax,dword ptr [ebp-4]
 00410417    mov         eax,dword ptr [eax]
 00410419    call        @DynArrayLength
 0041041E    mov         ecx,eax
 00410420    add         ecx,2
 00410423    mov         eax,ebx
 00410425    mov         edx,1
 0041042A    call        @LStrDelete
 0041042F    mov         byte ptr [ebp-0E],0
>00410433    jmp         0041043D
 00410435    mov         eax,dword ptr [ebp-4]
 00410438    call        @LStrClr
 0041043D    cmp         byte ptr [ebp-0E],0
>00410441    je          00410454
 00410443    mov         eax,ebx
 00410445    mov         ecx,1
 0041044A    mov         edx,1
 0041044F    call        @LStrDelete
 00410454    cmp         dword ptr [ebx],0
>00410457    je          00410482
 00410459    mov         eax,dword ptr [ebx]
 0041045B    mov         al,byte ptr [eax]
 0041045D    cmp         al,25
>0041045F    jne         00410474
 00410461    mov         eax,ebx
 00410463    mov         ecx,1
 00410468    mov         edx,1
 0041046D    call        @LStrDelete
>00410472    jmp         00410482
 00410474    cmp         al,2E
>00410476    jne         00410482
 00410478    mov         eax,ebx
 0041047A    call        00404C34
 0041047F    mov         byte ptr [eax],40
 00410482    cmp         dword ptr [ebx],0
>00410485    je          004104B7
 00410487    mov         eax,dword ptr [ebx]
 00410489    call        @DynArrayLength
 0041048E    mov         edx,dword ptr [ebx]
 00410490    cmp         byte ptr [edx+eax-1],2E
>00410495    jne         004104B7
 00410497    cmp         byte ptr [ebp-0D],0
>0041049B    je          004104AB
 0041049D    mov         eax,ebx
 0041049F    mov         edx,410534;'Destroy'
 004104A4    call        @LStrCat
>004104A9    jmp         004104B7
 004104AB    mov         eax,ebx
 004104AD    mov         edx,410544;'Create'
 004104B2    call        @LStrCat
 004104B7    mov         esi,dword ptr ds:[55B578];^gvar_0053D0C4
 004104BD    mov         esi,dword ptr [esi]
 004104BF    mov         eax,ebx
 004104C1    call        esi
 004104C3    cmp         dword ptr [ebx],0
>004104C6    je          004104E4
 004104C8    mov         eax,dword ptr [ebx]
 004104CA    call        @DynArrayLength
 004104CF    mov         edx,dword ptr [ebx]
 004104D1    cmp         byte ptr [edx+eax-1],2E
>004104D6    jne         004104E4
 004104D8    mov         eax,ebx
 004104DA    mov         edx,410554;'?'
 004104DF    call        @LStrCat
 004104E4    mov         byte ptr [ebp-5],1
 004104E8    xor         eax,eax
 004104EA    pop         edx
 004104EB    pop         ecx
 004104EC    pop         ecx
 004104ED    mov         dword ptr fs:[eax],edx
 004104F0    push        41050A
 004104F5    lea         eax,[ebp-18]
 004104F8    mov         edx,2
 004104FD    call        @LStrArrayClr
 00410502    ret
>00410503    jmp         @HandleFinally
>00410508    jmp         004104F5
 0041050A    mov         al,byte ptr [ebp-5]
 0041050D    pop         edi
 0041050E    pop         esi
 0041050F    pop         ebx
 00410510    mov         esp,ebp
 00410512    pop         ebp
 00410513    ret
end;*}

//00410558
{*function sub_00410558(?:WideString; ?:?):?;
begin
 00410558    push        ebp
 00410559    mov         ebp,esp
 0041055B    add         esp,0FFFFFFE8
 0041055E    push        ebx
 0041055F    push        esi
 00410560    push        edi
 00410561    xor         ecx,ecx
 00410563    mov         dword ptr [ebp-18],ecx
 00410566    mov         dword ptr [ebp-14],ecx
 00410569    mov         dword ptr [ebp-4],edx
 0041056C    mov         ebx,eax
 0041056E    xor         eax,eax
 00410570    push        ebp
 00410571    push        41084E
 00410576    push        dword ptr fs:[eax]
 00410579    mov         dword ptr fs:[eax],esp
 0041057C    mov         byte ptr [ebp-5],0
 00410580    mov         eax,dword ptr [ebp-4]
 00410583    call        @WStrClr
 00410588    push        0
 0041058A    mov         esi,dword ptr ds:[55B434];^gvar_0053D124
 00410590    mov         esi,dword ptr [esi]
 00410592    mov         eax,ebx
 00410594    mov         ecx,410864;'.'
 00410599    mov         edx,41086C
 0041059E    call        esi
 004105A0    mov         eax,dword ptr [ebx]
 004105A2    xor         edx,edx
 004105A4    call        @WStrCmp
>004105A9    je          00410833
 004105AF    mov         eax,dword ptr [ebx]
 004105B1    cmp         word ptr [eax],40
>004105B5    jne         00410833
 004105BB    lea         eax,[ebp-14]
 004105BE    call        @WStrClr
 004105C3    mov         eax,dword ptr [ebx]
 004105C5    call        @WStrLen
 004105CA    dec         eax
>004105CB    jle         00410623
 004105CD    mov         eax,dword ptr [ebx]
 004105CF    cmp         word ptr [eax+2],25
>004105D4    jne         00410623
 004105D6    mov         eax,dword ptr [ebx]
 004105D8    call        @WStrLen
 004105DD    mov         esi,eax
 004105DF    dec         esi
 004105E0    cmp         esi,3
>004105E3    jl          00410623
 004105E5    mov         eax,dword ptr [ebx]
 004105E7    cmp         word ptr [eax+esi*2-2],25
>004105ED    jne         0041061D
 004105EF    mov         eax,dword ptr [ebx]
 004105F1    cmp         word ptr [eax+esi*2],40
>004105F6    jne         0041061D
 004105F8    lea         eax,[ebp-18]
 004105FB    push        eax
 004105FC    lea         edx,[esi+2]
 004105FF    mov         eax,dword ptr [ebx]
 00410601    mov         ecx,7FFFFFFF
 00410606    call        @WStrCopy
 0041060B    mov         ecx,dword ptr [ebp-18]
 0041060E    lea         eax,[ebp-14]
 00410611    mov         edx,410864;'.'
 00410616    call        @WStrCat3
>0041061B    jmp         00410623
 0041061D    dec         esi
 0041061E    cmp         esi,2
>00410621    jne         004105E5
 00410623    mov         dword ptr [ebp-0C],3
 0041062A    mov         eax,dword ptr [ebx]
 0041062C    call        @WStrLen
 00410631    cmp         eax,6
>00410634    jle         0041067C
 00410636    mov         eax,dword ptr [ebx]
 00410638    cmp         word ptr [eax+2],5F
>0041063D    jne         0041067C
 0041063F    mov         eax,dword ptr [ebx]
 00410641    cmp         word ptr [eax+4],24
>00410646    jne         0041067C
 00410648    mov         eax,dword ptr [ebx]
 0041064A    call        @WStrLen
 0041064F    mov         edi,eax
 00410651    dec         edi
 00410652    sub         edi,5
>00410655    jl          0041067C
 00410657    inc         edi
 00410658    mov         esi,5
 0041065D    mov         eax,dword ptr [ebx]
 0041065F    cmp         word ptr [eax+esi*2-2],24
>00410665    jne         00410678
 00410667    mov         eax,dword ptr [ebx]
 00410669    cmp         word ptr [eax+esi*2],40
>0041066E    jne         0041067C
 00410670    lea         eax,[esi+1]
 00410673    mov         dword ptr [ebp-0C],eax
>00410676    jmp         0041067C
 00410678    inc         esi
 00410679    dec         edi
>0041067A    jne         0041065D
 0041067C    mov         byte ptr [ebp-0D],0
 00410680    mov         byte ptr [ebp-0E],0
 00410684    mov         esi,dword ptr [ebp-0C]
 00410687    mov         eax,dword ptr [ebx]
 00410689    call        @WStrLen
 0041068E    mov         edi,eax
 00410690    sub         edi,esi
>00410692    jl          00410721
 00410698    inc         edi
 00410699    mov         eax,dword ptr [ebx]
 0041069B    mov         ax,word ptr [eax+esi*2-2]
 004106A0    sub         ax,24
>004106A4    je          004106AE
 004106A6    sub         ax,1C
>004106AA    je          004106ED
>004106AC    jmp         00410719
 004106AE    mov         eax,dword ptr [ebx]
 004106B0    call        @WStrLen
 004106B5    lea         edx,[esi+1]
 004106B8    cmp         eax,edx
>004106BA    jle         004106C6
 004106BC    mov         eax,dword ptr [ebx]
 004106BE    cmp         word ptr [eax+esi*2+2],64
>004106C4    je          004106CA
 004106C6    xor         eax,eax
>004106C8    jmp         004106CC
 004106CA    mov         al,1
 004106CC    mov         byte ptr [ebp-0D],al
 004106CF    mov         eax,ebx
 004106D1    mov         ecx,7FFFFFFF
 004106D6    mov         edx,esi
 004106D8    call        @WStrDelete
 004106DD    mov         eax,ebx
 004106DF    mov         edx,dword ptr [ebp-14]
 004106E2    call        @WStrCat
 004106E7    mov         byte ptr [ebp-0E],1
>004106EB    jmp         00410721
 004106ED    mov         eax,dword ptr [ebx]
 004106EF    mov         word ptr [eax+esi*2-2],2E
 004106F6    mov         eax,dword ptr [ebp-4]
 004106F9    mov         eax,dword ptr [eax]
 004106FB    xor         edx,edx
 004106FD    call        @WStrCmp
>00410702    jne         00410719
 00410704    mov         eax,dword ptr [ebp-4]
 00410707    push        eax
 00410708    mov         ecx,esi
 0041070A    sub         ecx,2
 0041070D    mov         eax,dword ptr [ebx]
 0041070F    mov         edx,2
 00410714    call        @WStrCopy
 00410719    inc         esi
 0041071A    dec         edi
>0041071B    jne         00410699
 00410721    mov         eax,dword ptr [ebp-4]
 00410724    mov         eax,dword ptr [eax]
 00410726    xor         edx,edx
 00410728    call        @WStrCmp
>0041072D    je          00410772
 0041072F    mov         eax,dword ptr [ebp-4]
 00410732    mov         eax,dword ptr [eax]
 00410734    call        @WStrLen
 00410739    mov         esi,eax
 0041073B    add         esi,2
 0041073E    mov         eax,dword ptr [ebx]
 00410740    call        @WStrLen
 00410745    cmp         esi,eax
>00410747    jge         0041076A
 00410749    mov         eax,dword ptr [ebp-4]
 0041074C    mov         eax,dword ptr [eax]
 0041074E    call        @WStrLen
 00410753    mov         ecx,eax
 00410755    add         ecx,2
 00410758    mov         eax,ebx
 0041075A    mov         edx,1
 0041075F    call        @WStrDelete
 00410764    mov         byte ptr [ebp-0E],0
>00410768    jmp         00410772
 0041076A    mov         eax,dword ptr [ebp-4]
 0041076D    call        @WStrClr
 00410772    cmp         byte ptr [ebp-0E],0
>00410776    je          00410789
 00410778    mov         eax,ebx
 0041077A    mov         ecx,1
 0041077F    mov         edx,1
 00410784    call        @WStrDelete
 00410789    mov         eax,dword ptr [ebx]
 0041078B    xor         edx,edx
 0041078D    call        @WStrCmp
>00410792    je          004107BF
 00410794    mov         eax,dword ptr [ebx]
 00410796    mov         ax,word ptr [eax]
 00410799    cmp         ax,25
>0041079D    jne         004107B2
 0041079F    mov         eax,ebx
 004107A1    mov         ecx,1
 004107A6    mov         edx,1
 004107AB    call        @WStrDelete
>004107B0    jmp         004107BF
 004107B2    cmp         ax,2E
>004107B6    jne         004107BF
 004107B8    mov         eax,dword ptr [ebx]
 004107BA    mov         word ptr [eax],40
 004107BF    mov         eax,dword ptr [ebx]
 004107C1    xor         edx,edx
 004107C3    call        @WStrCmp
>004107C8    je          004107FB
 004107CA    mov         eax,dword ptr [ebx]
 004107CC    call        @WStrLen
 004107D1    mov         edx,dword ptr [ebx]
 004107D3    cmp         word ptr [edx+eax*2-2],2E
>004107D9    jne         004107FB
 004107DB    cmp         byte ptr [ebp-0D],0
>004107DF    je          004107EF
 004107E1    mov         eax,ebx
 004107E3    mov         edx,410878;'Destroy'
 004107E8    call        @WStrCat
>004107ED    jmp         004107FB
 004107EF    mov         eax,ebx
 004107F1    mov         edx,41088C;'Create'
 004107F6    call        @WStrCat
 004107FB    mov         esi,dword ptr ds:[55B318];^gvar_0053D110
 00410801    mov         esi,dword ptr [esi]
 00410803    mov         eax,ebx
 00410805    call        esi
 00410807    mov         eax,dword ptr [ebx]
 00410809    xor         edx,edx
 0041080B    call        @WStrCmp
>00410810    je          0041082F
 00410812    mov         eax,dword ptr [ebx]
 00410814    call        @WStrLen
 00410819    mov         edx,dword ptr [ebx]
 0041081B    cmp         word ptr [edx+eax*2-2],2E
>00410821    jne         0041082F
 00410823    mov         eax,ebx
 00410825    mov         edx,4108A0;'?'
 0041082A    call        @WStrCat
 0041082F    mov         byte ptr [ebp-5],1
 00410833    xor         eax,eax
 00410835    pop         edx
 00410836    pop         ecx
 00410837    pop         ecx
 00410838    mov         dword ptr fs:[eax],edx
 0041083B    push        410855
 00410840    lea         eax,[ebp-18]
 00410843    mov         edx,2
 00410848    call        @WStrArrayClr
 0041084D    ret
>0041084E    jmp         @HandleFinally
>00410853    jmp         00410840
 00410855    mov         al,byte ptr [ebp-5]
 00410858    pop         edi
 00410859    pop         esi
 0041085A    pop         ebx
 0041085B    mov         esp,ebp
 0041085D    pop         ebp
 0041085E    ret
end;*}

//004108A4
{*function sub_004108A4(?:Integer; ?:Longint):?;
begin
 004108A4    push        ebx
 004108A5    push        esi
 004108A6    add         esp,0FFFFFFE4
 004108A9    mov         esi,edx
 004108AB    mov         ebx,eax
 004108AD    push        1C
 004108AF    lea         eax,[esp+4]
 004108B3    push        eax
 004108B4    push        ebx
 004108B5    call        kernel32.VirtualQuery
 004108BA    cmp         eax,1C
>004108BD    jne         004108E8
 004108BF    cmp         dword ptr [esp+10],1000
>004108C7    jne         004108E8
 004108C9    test        byte ptr [esp+14],6E
>004108CE    je          004108E8
 004108D0    test        byte ptr [esp+15],1
>004108D5    jne         004108E8
 004108D7    add         esi,ebx
 004108D9    mov         eax,dword ptr [esp]
 004108DC    add         eax,dword ptr [esp+0C]
 004108E0    cmp         esi,eax
>004108E2    ja          004108E8
 004108E4    xor         eax,eax
>004108E6    jmp         004108EA
 004108E8    mov         al,1
 004108EA    add         esp,1C
 004108ED    pop         esi
 004108EE    pop         ebx
 004108EF    ret
end;*}

//0041097C
procedure sub_0041097C;
begin
{*
 0041097C    mov         eax,[0055B1E0];^gvar_0055C01C:MadException
 00410981    cmp         dword ptr [eax],0
>00410984    jne         0041099E
 00410986    mov         eax,[0055B1E0];^gvar_0055C01C:MadException
 0041098B    mov         edx,dword ptr ds:[4087A8];MadException
 00410991    mov         dword ptr [eax],edx
 00410993    mov         eax,[0055B2C8];^gvar_0055C010
 00410998    mov         dword ptr [eax],41090C
 0041099E    ret
*}
end;

Initialization
//004109F8
{*
 004109F8    push        ebp
 004109F9    mov         ebp,esp
 004109FB    xor         eax,eax
 004109FD    push        ebp
 004109FE    push        410A1E
 00410A03    push        dword ptr fs:[eax]
 00410A06    mov         dword ptr fs:[eax],esp
 00410A09    sub         dword ptr ds:[55C690],1
 00410A10    xor         eax,eax
 00410A12    pop         edx
 00410A13    pop         ecx
 00410A14    pop         ecx
 00410A15    mov         dword ptr fs:[eax],edx
 00410A18    push        410A25
 00410A1D    ret
>00410A1E    jmp         @HandleFinally
>00410A23    jmp         00410A1D
 00410A25    pop         ebp
 00410A26    ret
*}
Finalization
//004109A0
{*
 004109A0    push        ebp
 004109A1    mov         ebp,esp
 004109A3    xor         eax,eax
 004109A5    push        ebp
 004109A6    push        4109EC
 004109AB    push        dword ptr fs:[eax]
 004109AE    mov         dword ptr fs:[eax],esp
 004109B1    inc         dword ptr ds:[55C690]
>004109B7    jne         004109DE
 004109B9    call        0040F844
 004109BE    mov         eax,55C6B4;gvar_0055C6B4:?
 004109C3    mov         edx,dword ptr ds:[40EF98];_DynArr_11_6
 004109C9    call        @DynArrayClear
 004109CE    mov         eax,55C694;gvar_0055C694:Pointer
 004109D3    mov         edx,dword ptr ds:[40D4D4];TOS
 004109D9    call        @FinalizeRecord
 004109DE    xor         eax,eax
 004109E0    pop         edx
 004109E1    pop         ecx
 004109E2    pop         ecx
 004109E3    mov         dword ptr fs:[eax],edx
 004109E6    push        4109F3
 004109EB    ret
>004109EC    jmp         @HandleFinally
>004109F1    jmp         004109EB
 004109F3    pop         ebp
 004109F4    ret
*}
end.