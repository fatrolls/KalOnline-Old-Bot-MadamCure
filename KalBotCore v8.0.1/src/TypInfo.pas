//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit TypInfo;

interface

uses
  SysUtils, Classes;

    function GetTypeData(TypeInfo:PTypeInfo):PTypeData;//004742F4
    //procedure sub_00474300(?:?; ?:?; ?:?);//00474300
    function GetEnumNameValue(TypeInfo:PTypeInfo; const Name:AnsiString):Integer;//00474408
    //function sub_00474454(?:PPropInfo; ?:?):?;//00474454
    function GetPropInfo(TypeInfo:PTypeInfo; const PropName:AnsiString):PPropInfo;//004744DC
    procedure GetPropInfos(TypeInfo:PTypeInfo; PropList:PPropList);//0047454C
    function IsStoredProp(Instance:TObject; PropInfo:PPropInfo):Boolean;//004745A0
    function GetOrdProp(Instance:TObject; PropInfo:PPropInfo):Longint;//004745D0
    procedure SetOrdProp(Instance:TObject; PropInfo:PPropInfo; Value:Longint);//00474644
    procedure GetShortStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:ShortString; const _Dv_:$0..-$1);//004746A0
    procedure SetShortStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:ShortString);//004746E4
    //procedure sub_00474738(?:?; ?:?; ?:?);//00474738
    //procedure sub_00474774(?:?; ?:?; ?:?);//00474774
    //procedure sub_004747B0(?:?; ?:?);//004747B0
    procedure GetLongStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);//004747CC
    procedure SetLongStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);//0047480C
    //procedure sub_0047484C(?:?; ?:?; ?:?);//0047484C
    //procedure sub_004748AC(?:?; ?:?; ?:?);//004748AC
    //procedure sub_0047490C(?:?; ?:?; ?:?);//0047490C
    procedure sub_00474970(?:Longint; ?:PPropInfo; ?:AnsiString);//00474970
    function GetWideStrProp(Instance:TObject; PropInfo:PPropInfo):WideString;//004749C8
    procedure sub_00474AD8(?:Longint; ?:PPropInfo; ?:WideString);//00474AD8
    function GetFloatProp(Instance:TObject; const PropName:AnsiString):Extended;//00474BDC
    //procedure sub_00474D28(?:Longint; ?:PPropInfo; ?:Extended; ?:?; ?:?);//00474D28
    procedure AssignVariant(var Dest:Variant; const Source:Variant);//00474F78
    function GetVariantProp(Instance:TObject; PropInfo:PPropInfo):Variant;//00474F94
    procedure SetVariantProp(Instance:TObject; PropInfo:PPropInfo; const Value:Variant);//00474FD4
    function GetMethodProp(Instance:TObject; PropInfo:PPropInfo):TMethod;//00475014
    procedure SetMethodProp(Instance:TObject; PropInfo:PPropInfo; const Value:TMethod);//00475054
    function GetInt64Prop(Instance:TObject; PropInfo:PPropInfo):Int64;//0047508C
    procedure SetInt64Prop(Instance:TObject; PropInfo:PPropInfo; const Value:Int64);//004750B4
    //procedure sub_004750F0(?:?; ?:?; ?:?);//004750F0
    procedure SetInterfaceProp(Instance:TObject; PropInfo:PPropInfo; const Value:IInterface);//0047518C

implementation

//004742F4
function GetTypeData(TypeInfo:PTypeInfo):PTypeData;
begin
{*
 004742F4    xor         edx,edx
 004742F6    mov         dl,byte ptr [eax+1]
 004742F9    lea         eax,[eax+edx+2]
 004742FD    ret
*}
end;

//00474300
{*procedure sub_00474300(?:?; ?:?; ?:?);
begin
 00474300    push        ebp
 00474301    mov         ebp,esp
 00474303    add         esp,0FFFFFFE8
 00474306    push        ebx
 00474307    xor         ebx,ebx
 00474309    mov         dword ptr [ebp-18],ebx
 0047430C    mov         dword ptr [ebp-0C],ecx
 0047430F    mov         dword ptr [ebp-8],edx
 00474312    mov         dword ptr [ebp-4],eax
 00474315    xor         eax,eax
 00474317    push        ebp
 00474318    push        4743EF
 0047431D    push        dword ptr fs:[eax]
 00474320    mov         dword ptr fs:[eax],esp
 00474323    mov         eax,dword ptr [ebp-4]
 00474326    cmp         byte ptr [eax],1
>00474329    jne         0047433B
 0047432B    mov         edx,dword ptr [ebp-0C]
 0047432E    mov         eax,dword ptr [ebp-8]
 00474331    call        IntToStr
>00474336    jmp         004743D9
 0047433B    mov         eax,dword ptr [ebp-4]
 0047433E    call        GetTypeData
 00474343    mov         eax,dword ptr [eax+9]
 00474346    mov         eax,dword ptr [eax]
 00474348    call        GetTypeData
 0047434D    mov         dword ptr [ebp-14],eax
 00474350    mov         eax,dword ptr [ebp-4]
 00474353    cmp         eax,dword ptr ds:[401000];Boolean
>00474359    je          00474364
 0047435B    mov         eax,dword ptr [ebp-14]
 0047435E    cmp         dword ptr [eax+1],0
>00474362    jge         004743AC
 00474364    mov         eax,dword ptr [ebp-0C]
 00474367    cmp         dword ptr [ebp-8],0
 0047436B    setne       dl
 0047436E    and         edx,7F
 00474371    mov         edx,dword ptr [edx*4+540CC4];^'False'
 00474378    call        @LStrAsg
 0047437D    mov         eax,[0055B65C];^gvar_0054099C
 00474382    mov         eax,dword ptr [eax]
 00474384    mov         edx,474404;'0x'
 00474389    call        SameText
 0047438E    test        al,al
>00474390    je          004743D9
 00474392    lea         edx,[ebp-18]
 00474395    mov         eax,dword ptr [ebp-0C]
 00474398    mov         eax,dword ptr [eax]
 0047439A    call        00466210
 0047439F    mov         edx,dword ptr [ebp-18]
 004743A2    mov         eax,dword ptr [ebp-0C]
 004743A5    call        @LStrAsg
>004743AA    jmp         004743D9
 004743AC    mov         eax,dword ptr [ebp-14]
 004743AF    add         eax,0D
 004743B2    mov         dword ptr [ebp-10],eax
 004743B5    cmp         dword ptr [ebp-8],0
>004743B9    je          004743CE
 004743BB    mov         eax,dword ptr [ebp-10]
 004743BE    movzx       eax,byte ptr [eax]
 004743C1    inc         eax
 004743C2    add         dword ptr [ebp-10],eax
 004743C5    dec         dword ptr [ebp-8]
 004743C8    cmp         dword ptr [ebp-8],0
>004743CC    jne         004743BB
 004743CE    mov         eax,dword ptr [ebp-0C]
 004743D1    mov         edx,dword ptr [ebp-10]
 004743D4    call        @LStrFromString
 004743D9    xor         eax,eax
 004743DB    pop         edx
 004743DC    pop         ecx
 004743DD    pop         ecx
 004743DE    mov         dword ptr fs:[eax],edx
 004743E1    push        4743F6
 004743E6    lea         eax,[ebp-18]
 004743E9    call        @LStrClr
 004743EE    ret
>004743EF    jmp         @HandleFinally
>004743F4    jmp         004743E6
 004743F6    pop         ebx
 004743F7    mov         esp,ebp
 004743F9    pop         ebp
 004743FA    ret
end;*}

//00474408
function GetEnumNameValue(TypeInfo:PTypeInfo; const Name:AnsiString):Integer;
begin
{*
 00474408    push        ebx
 00474409    push        esi
 0047440A    push        edi
 0047440B    test        edx,edx
>0047440D    je          0047444A
 0047440F    xor         ecx,ecx
 00474411    mov         cl,byte ptr [eax+1]
 00474414    mov         eax,dword ptr [eax+ecx+0B]
 00474418    mov         eax,dword ptr [eax]
 0047441A    mov         cl,byte ptr [eax+1]
 0047441D    lea         esi,[eax+ecx+0F]
 00474421    mov         edi,dword ptr [eax+ecx+7]
 00474425    xor         eax,eax
 00474427    mov         cl,byte ptr [esi]
 00474429    cmp         ecx,dword ptr [edx-4]
>0047442C    jne         00474441
 0047442E    mov         bl,byte ptr [ecx+edx-1]
 00474432    xor         bl,byte ptr [ecx+esi]
 00474435    test        bl,0DF
>00474438    jne         0047443F
 0047443A    dec         ecx
>0047443B    jne         0047442E
>0047443D    jmp         0047444D
 0047443F    mov         cl,byte ptr [esi]
 00474441    inc         eax
 00474442    lea         esi,[ecx+esi+1]
 00474446    cmp         eax,edi
>00474448    jle         00474427
 0047444A    or          eax,0FFFFFFFF
 0047444D    pop         edi
 0047444E    pop         esi
 0047444F    pop         ebx
 00474450    ret
*}
end;

//00474454
{*function sub_00474454(?:PPropInfo; ?:?):?;
begin
 00474454    push        ebp
 00474455    mov         ebp,esp
 00474457    add         esp,0FFFFFFF4
 0047445A    mov         dword ptr [ebp-8],edx
 0047445D    mov         dword ptr [ebp-4],eax
 00474460    mov         eax,dword ptr [ebp-4]
 00474463    cmp         byte ptr [eax],1
>00474466    jne         00474475
 00474468    mov         eax,dword ptr [ebp-8]
 0047446B    call        StrToInt
 00474470    mov         dword ptr [ebp-0C],eax
>00474473    jmp         004744D2
 00474475    mov         eax,dword ptr [ebp-4]
 00474478    call        GetTypeData
 0047447D    cmp         dword ptr [eax+1],0
>00474481    jge         004744C4
 00474483    mov         edx,dword ptr ds:[540CC4];^'False'
 00474489    mov         eax,dword ptr [ebp-8]
 0047448C    call        SameText
 00474491    test        al,al
>00474493    je          0047449C
 00474495    xor         eax,eax
 00474497    mov         dword ptr [ebp-0C],eax
>0047449A    jmp         004744D2
 0047449C    mov         edx,dword ptr ds:[540CC8];^'True'
 004744A2    mov         eax,dword ptr [ebp-8]
 004744A5    call        SameText
 004744AA    test        al,al
>004744AC    je          004744B7
 004744AE    mov         dword ptr [ebp-0C],0FFFFFFFF
>004744B5    jmp         004744D2
 004744B7    mov         eax,dword ptr [ebp-8]
 004744BA    call        StrToInt
 004744BF    mov         dword ptr [ebp-0C],eax
>004744C2    jmp         004744D2
 004744C4    mov         edx,dword ptr [ebp-8]
 004744C7    mov         eax,dword ptr [ebp-4]
 004744CA    call        GetEnumNameValue
 004744CF    mov         dword ptr [ebp-0C],eax
 004744D2    mov         eax,dword ptr [ebp-0C]
 004744D5    mov         esp,ebp
 004744D7    pop         ebp
 004744D8    ret
end;*}

//004744DC
function GetPropInfo(TypeInfo:PTypeInfo; const PropName:AnsiString):PPropInfo;
begin
{*
 004744DC    push        ebx
 004744DD    push        esi
 004744DE    push        edi
 004744DF    test        eax,eax
>004744E1    je          00474548
 004744E3    mov         ecx,edx
 004744E5    or          edx,edx
>004744E7    je          004744F4
 004744E9    mov         cl,byte ptr [edx-4]
 004744EC    mov         ch,byte ptr [edx]
 004744EE    and         ecx,0DFFF
 004744F4    xor         ebx,ebx
 004744F6    mov         bl,byte ptr [eax+1]
 004744F9    lea         esi,[eax+ebx+2]
 004744FD    mov         bl,byte ptr [esi+0A]
 00474500    movzx       edi,word ptr [esi+ebx+0B]
 00474505    test        edi,edi
>00474507    je          00474521
 00474509    lea         eax,[esi+ebx+0D]
 0047450D    mov         bx,word ptr [eax+1A]
 00474511    and         bh,0DF
 00474514    cmp         ebx,ecx
>00474516    je          00474536
 00474518    mov         bh,0
 0047451A    dec         edi
 0047451B    lea         eax,[eax+ebx+1B]
>0047451F    jne         0047450D
 00474521    mov         eax,dword ptr [esi+4]
 00474524    test        eax,eax
>00474526    je          00474548
 00474528    mov         eax,dword ptr [eax]
>0047452A    jmp         004744F4
 0047452C    mov         ch,byte ptr [edx]
 0047452E    and         ch,0DF
 00474531    mov         bl,byte ptr [eax+1A]
>00474534    jmp         00474518
 00474536    mov         bh,0
 00474538    mov         ch,byte ptr [ebx+edx-1]
 0047453C    xor         ch,byte ptr [eax+ebx+1A]
 00474540    test        ch,0DF
>00474543    jne         0047452C
 00474545    dec         ebx
>00474546    jne         00474538
 00474548    pop         edi
 00474549    pop         esi
 0047454A    pop         ebx
 0047454B    ret
*}
end;

//0047454C
procedure GetPropInfos(TypeInfo:PTypeInfo; PropList:PPropList);
begin
{*
 0047454C    push        ebx
 0047454D    push        esi
 0047454E    push        edi
 0047454F    xor         ecx,ecx
 00474551    mov         esi,eax
 00474553    mov         cl,byte ptr [eax+1]
 00474556    mov         edi,edx
 00474558    xor         eax,eax
 0047455A    movzx       ecx,word ptr [esi+ecx+0A]
 0047455F    rep stos    dword ptr [edi]
 00474561    mov         cl,byte ptr [esi+1]
 00474564    lea         esi,[esi+ecx+2]
 00474568    mov         cl,byte ptr [esi+0A]
 0047456B    movzx       eax,word ptr [esi+ecx+0B]
 00474570    test        eax,eax
>00474572    je          0047458F
 00474574    lea         edi,[esi+ecx+0D]
 00474578    movzx       ebx,word ptr [edi+18]
 0047457C    mov         cl,byte ptr [edi+1A]
 0047457F    cmp         dword ptr [edx+ebx*4],0
>00474583    jne         00474588
 00474585    mov         dword ptr [edx+ebx*4],edi
 00474588    lea         edi,[edi+ecx+1B]
 0047458C    dec         eax
>0047458D    jne         00474578
 0047458F    mov         esi,dword ptr [esi+4]
 00474592    xor         ecx,ecx
 00474594    test        esi,esi
>00474596    je          0047459C
 00474598    mov         esi,dword ptr [esi]
>0047459A    jmp         00474561
 0047459C    pop         edi
 0047459D    pop         esi
 0047459E    pop         ebx
 0047459F    ret
*}
end;

//004745A0
function IsStoredProp(Instance:TObject; PropInfo:PPropInfo):Boolean;
begin
{*
 004745A0    mov         ecx,dword ptr [edx+0C]
 004745A3    test        ecx,0FFFFFF00
>004745A9    je          004745CA
 004745AB    cmp         byte ptr [edx+0F],0FE
 004745AF    mov         edx,dword ptr [edx+10]
>004745B2    jb          004745BE
>004745B4    ja          004745C1
 004745B6    movsx       ecx,cx
 004745B9    add         ecx,dword ptr [eax]
 004745BB    call        dword ptr [ecx]
 004745BD    ret
 004745BE    call        ecx
 004745C0    ret
 004745C1    and         ecx,0FFFFFF
 004745C7    mov         cl,byte ptr [ecx+eax]
 004745CA    mov         al,cl
 004745CC    ret
*}
end;

//004745D0
function GetOrdProp(Instance:TObject; PropInfo:PPropInfo):Longint;
begin
{*
 004745D0    push        ebx
 004745D1    push        edi
 004745D2    mov         edi,dword ptr [edx]
 004745D4    mov         edi,dword ptr [edi]
 004745D6    mov         bl,4
 004745D8    cmp         byte ptr [edi],7
>004745DB    je          004745E6
 004745DD    xor         ecx,ecx
 004745DF    mov         cl,byte ptr [edi+1]
 004745E2    mov         bl,byte ptr [edi+ecx+2]
 004745E6    mov         ecx,dword ptr [edx+4]
 004745E9    cmp         byte ptr [edx+7],0FE
 004745ED    mov         edx,dword ptr [edx+10]
>004745F0    jb          004745FD
>004745F2    ja          00474601
 004745F4    movsx       ecx,cx
 004745F7    add         ecx,dword ptr [eax]
 004745F9    call        dword ptr [ecx]
>004745FB    jmp         0047461A
 004745FD    call        ecx
>004745FF    jmp         0047461A
 00474601    and         ecx,0FFFFFF
 00474607    add         ecx,eax
 00474609    mov         al,byte ptr [ecx]
 0047460B    cmp         bl,2
>0047460E    jb          0047461A
 00474610    mov         ax,word ptr [ecx]
 00474613    cmp         bl,4
>00474616    jb          0047461A
 00474618    mov         eax,dword ptr [ecx]
 0047461A    cmp         bl,4
>0047461D    jae         0047463E
 0047461F    cmp         bl,2
>00474622    jae         00474634
 00474624    cmp         bl,0
 00474627    movsx       eax,al
>0047462A    je          0047463E
 0047462C    and         eax,0FF
 00474631    pop         edi
 00474632    pop         ebx
 00474633    ret
 00474634    movsx       eax,ax
>00474637    je          0047463E
 00474639    and         eax,0FFFF
 0047463E    pop         edi
 0047463F    pop         ebx
 00474640    ret
*}
end;

//00474644
procedure SetOrdProp(Instance:TObject; PropInfo:PPropInfo; Value:Longint);
begin
{*
 00474644    push        ebx
 00474645    push        esi
 00474646    push        edi
 00474647    mov         edi,edx
 00474649    mov         esi,dword ptr [edi]
 0047464B    mov         esi,dword ptr [esi]
 0047464D    mov         bl,4
 0047464F    cmp         byte ptr [esi],7
>00474652    je          0047465D
 00474654    xor         ebx,ebx
 00474656    mov         bl,byte ptr [esi+1]
 00474659    mov         bl,byte ptr [esi+ebx+2]
 0047465D    mov         edx,dword ptr [edi+10]
 00474660    cmp         edx,80000000
>00474666    jne         0047466A
 00474668    mov         edx,ecx
 0047466A    mov         esi,dword ptr [edi+8]
 0047466D    cmp         byte ptr [edi+0B],0FE
>00474671    ja          00474682
>00474673    jb          0047467E
 00474675    movsx       esi,si
 00474678    add         esi,dword ptr [eax]
 0047467A    call        dword ptr [esi]
>0047467C    jmp         0047469B
 0047467E    call        esi
>00474680    jmp         0047469B
 00474682    and         esi,0FFFFFF
 00474688    add         eax,esi
 0047468A    mov         byte ptr [eax],cl
 0047468C    cmp         bl,2
>0047468F    jb          0047469B
 00474691    mov         word ptr [eax],cx
 00474694    cmp         bl,4
>00474697    jb          0047469B
 00474699    mov         dword ptr [eax],ecx
 0047469B    pop         edi
 0047469C    pop         esi
 0047469D    pop         ebx
 0047469E    ret
*}
end;

//004746A0
procedure GetShortStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:ShortString; const _Dv_:$0..-$1);
begin
{*
 004746A0    push        ebp
 004746A1    mov         ebp,esp
 004746A3    push        esi
 004746A4    push        edi
 004746A5    mov         edi,edx
 004746A7    mov         edx,dword ptr [edi+10]
 004746AA    cmp         edx,80000000
>004746B0    jne         004746B4
 004746B2    mov         edx,ecx
 004746B4    mov         esi,dword ptr [edi+4]
 004746B7    cmp         byte ptr [edi+7],0FE
>004746BB    ja          004746CC
>004746BD    jb          004746C8
 004746BF    movsx       esi,si
 004746C2    add         esi,dword ptr [eax]
 004746C4    call        dword ptr [esi]
>004746C6    jmp         004746DD
 004746C8    call        esi
>004746CA    jmp         004746DD
 004746CC    and         esi,0FFFFFF
 004746D2    add         esi,eax
 004746D4    mov         edi,ecx
 004746D6    xor         ecx,ecx
 004746D8    mov         cl,byte ptr [esi]
 004746DA    inc         ecx
 004746DB    rep movs    byte ptr [edi],byte ptr [esi]
 004746DD    pop         edi
 004746DE    pop         esi
 004746DF    pop         ebp
 004746E0    ret         4
*}
end;

//004746E4
procedure SetShortStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:ShortString);
begin
{*
 004746E4    push        esi
 004746E5    push        edi
 004746E6    mov         esi,edx
 004746E8    mov         edx,dword ptr [esi+10]
 004746EB    cmp         edx,80000000
>004746F1    jne         004746F5
 004746F3    mov         edx,ecx
 004746F5    mov         edi,dword ptr [esi+8]
 004746F8    cmp         byte ptr [esi+0B],0FE
>004746FC    ja          0047470F
>004746FE    jb          0047470A
 00474700    movsx       edi,di
 00474703    add         edi,dword ptr [eax]
 00474705    call        dword ptr [edi]
 00474707    pop         edi
 00474708    pop         esi
 00474709    ret
 0047470A    call        edi
 0047470C    pop         edi
 0047470D    pop         esi
 0047470E    ret
 0047470F    and         edi,0FFFFFF
 00474715    add         edi,eax
 00474717    mov         eax,dword ptr [esi]
 00474719    mov         eax,dword ptr [eax]
 0047471B    mov         esi,ecx
 0047471D    xor         ecx,ecx
 0047471F    mov         cl,byte ptr [eax+1]
 00474722    mov         cl,byte ptr [eax+ecx+2]
 00474726    lods        byte ptr [esi]
 00474727    cmp         al,cl
>00474729    jb          0047472D
 0047472B    mov         al,cl
 0047472D    stos        byte ptr [edi]
 0047472E    mov         cl,al
 00474730    rep movs    byte ptr [edi],byte ptr [esi]
 00474732    pop         edi
 00474733    pop         esi
 00474734    ret
*}
end;

//00474738
{*procedure sub_00474738(?:?; ?:?; ?:?);
begin
 00474738    push        ebp
 00474739    mov         ebp,esp
 0047473B    add         esp,0FFFFFEF4
 00474741    mov         dword ptr [ebp-0C],ecx
 00474744    mov         dword ptr [ebp-8],edx
 00474747    mov         dword ptr [ebp-4],eax
 0047474A    push        0FF
 0047474F    lea         ecx,[ebp-10C]
 00474755    mov         edx,dword ptr [ebp-8]
 00474758    mov         eax,dword ptr [ebp-4]
 0047475B    call        GetShortStrProp
 00474760    mov         eax,dword ptr [ebp-0C]
 00474763    lea         edx,[ebp-10C]
 00474769    call        @LStrFromString
 0047476E    mov         esp,ebp
 00474770    pop         ebp
 00474771    ret
end;*}

//00474774
{*procedure sub_00474774(?:?; ?:?; ?:?);
begin
 00474774    push        ebp
 00474775    mov         ebp,esp
 00474777    add         esp,0FFFFFEF4
 0047477D    mov         dword ptr [ebp-0C],ecx
 00474780    mov         dword ptr [ebp-8],edx
 00474783    mov         dword ptr [ebp-4],eax
 00474786    lea         eax,[ebp-10C]
 0047478C    mov         edx,dword ptr [ebp-0C]
 0047478F    mov         ecx,0FF
 00474794    call        @LStrToString
 00474799    lea         ecx,[ebp-10C]
 0047479F    mov         edx,dword ptr [ebp-8]
 004747A2    mov         eax,dword ptr [ebp-4]
 004747A5    call        SetShortStrProp
 004747AA    mov         esp,ebp
 004747AC    pop         ebp
 004747AD    ret
end;*}

//004747B0
{*procedure sub_004747B0(?:?; ?:?);
begin
 004747B0    push        ebp
 004747B1    mov         ebp,esp
 004747B3    add         esp,0FFFFFFF8
 004747B6    mov         dword ptr [ebp-8],edx
 004747B9    mov         dword ptr [ebp-4],eax
 004747BC    mov         eax,dword ptr [ebp-4]
 004747BF    mov         edx,dword ptr [ebp-8]
 004747C2    call        @LStrAsg
 004747C7    pop         ecx
 004747C8    pop         ecx
 004747C9    pop         ebp
 004747CA    ret
end;*}

//004747CC
procedure GetLongStrProp(Instance:TObject; PropInfo:PPropInfo; var Value:AnsiString);
begin
{*
 004747CC    push        esi
 004747CD    push        edi
 004747CE    mov         edi,edx
 004747D0    mov         edx,dword ptr [edi+10]
 004747D3    cmp         edx,80000000
>004747D9    jne         004747DD
 004747DB    mov         edx,ecx
 004747DD    mov         esi,dword ptr [edi+4]
 004747E0    cmp         byte ptr [edi+7],0FE
>004747E4    ja          004747F7
>004747E6    jb          004747F2
 004747E8    movsx       esi,si
 004747EB    add         esi,dword ptr [eax]
 004747ED    call        dword ptr [esi]
 004747EF    pop         edi
 004747F0    pop         esi
 004747F1    ret
 004747F2    call        esi
 004747F4    pop         edi
 004747F5    pop         esi
 004747F6    ret
 004747F7    and         esi,0FFFFFF
 004747FD    mov         edx,dword ptr [esi+eax]
 00474800    mov         eax,ecx
 00474802    call        004747B0
 00474807    pop         edi
 00474808    pop         esi
 00474809    ret
*}
end;

//0047480C
procedure SetLongStrProp(Instance:TObject; PropInfo:PPropInfo; const Value:AnsiString);
begin
{*
 0047480C    push        esi
 0047480D    push        edi
 0047480E    mov         esi,edx
 00474810    mov         edx,dword ptr [esi+10]
 00474813    cmp         edx,80000000
>00474819    jne         0047481D
 0047481B    mov         edx,ecx
 0047481D    mov         edi,dword ptr [esi+8]
 00474820    cmp         byte ptr [esi+0B],0FE
>00474824    ja          00474837
>00474826    jb          00474832
 00474828    movsx       edi,di
 0047482B    add         edi,dword ptr [eax]
 0047482D    call        dword ptr [edi]
 0047482F    pop         edi
 00474830    pop         esi
 00474831    ret
 00474832    call        edi
 00474834    pop         edi
 00474835    pop         esi
 00474836    ret
 00474837    and         edi,0FFFFFF
 0047483D    add         eax,edi
 0047483F    mov         edx,ecx
 00474841    call        004747B0
 00474846    pop         edi
 00474847    pop         esi
 00474848    ret
*}
end;

//0047484C
{*procedure sub_0047484C(?:?; ?:?; ?:?);
begin
 0047484C    push        ebp
 0047484D    mov         ebp,esp
 0047484F    add         esp,0FFFFFFF0
 00474852    push        ebx
 00474853    xor         ebx,ebx
 00474855    mov         dword ptr [ebp-10],ebx
 00474858    mov         dword ptr [ebp-0C],ecx
 0047485B    mov         dword ptr [ebp-8],edx
 0047485E    mov         dword ptr [ebp-4],eax
 00474861    xor         eax,eax
 00474863    push        ebp
 00474864    push        47489E
 00474869    push        dword ptr fs:[eax]
 0047486C    mov         dword ptr fs:[eax],esp
 0047486F    lea         ecx,[ebp-10]
 00474872    mov         edx,dword ptr [ebp-8]
 00474875    mov         eax,dword ptr [ebp-4]
 00474878    call        GetWideStrProp
 0047487D    mov         edx,dword ptr [ebp-10]
 00474880    mov         eax,dword ptr [ebp-0C]
 00474883    call        @LStrFromWStr
 00474888    xor         eax,eax
 0047488A    pop         edx
 0047488B    pop         ecx
 0047488C    pop         ecx
 0047488D    mov         dword ptr fs:[eax],edx
 00474890    push        4748A5
 00474895    lea         eax,[ebp-10]
 00474898    call        @WStrClr
 0047489D    ret
>0047489E    jmp         @HandleFinally
>004748A3    jmp         00474895
 004748A5    pop         ebx
 004748A6    mov         esp,ebp
 004748A8    pop         ebp
 004748A9    ret
end;*}

//004748AC
{*procedure sub_004748AC(?:?; ?:?; ?:?);
begin
 004748AC    push        ebp
 004748AD    mov         ebp,esp
 004748AF    add         esp,0FFFFFFF0
 004748B2    push        ebx
 004748B3    xor         ebx,ebx
 004748B5    mov         dword ptr [ebp-10],ebx
 004748B8    mov         dword ptr [ebp-0C],ecx
 004748BB    mov         dword ptr [ebp-8],edx
 004748BE    mov         dword ptr [ebp-4],eax
 004748C1    xor         eax,eax
 004748C3    push        ebp
 004748C4    push        4748FE
 004748C9    push        dword ptr fs:[eax]
 004748CC    mov         dword ptr fs:[eax],esp
 004748CF    lea         eax,[ebp-10]
 004748D2    mov         edx,dword ptr [ebp-0C]
 004748D5    call        @WStrFromLStr
 004748DA    mov         ecx,dword ptr [ebp-10]
 004748DD    mov         edx,dword ptr [ebp-8]
 004748E0    mov         eax,dword ptr [ebp-4]
 004748E3    call        00474AD8
 004748E8    xor         eax,eax
 004748EA    pop         edx
 004748EB    pop         ecx
 004748EC    pop         ecx
 004748ED    mov         dword ptr fs:[eax],edx
 004748F0    push        474905
 004748F5    lea         eax,[ebp-10]
 004748F8    call        @WStrClr
 004748FD    ret
>004748FE    jmp         @HandleFinally
>00474903    jmp         004748F5
 00474905    pop         ebx
 00474906    mov         esp,ebp
 00474908    pop         ebp
 00474909    ret
end;*}

//0047490C
{*procedure sub_0047490C(?:?; ?:?; ?:?);
begin
 0047490C    push        ebp
 0047490D    mov         ebp,esp
 0047490F    add         esp,0FFFFFFF4
 00474912    mov         dword ptr [ebp-0C],ecx
 00474915    mov         dword ptr [ebp-8],edx
 00474918    mov         dword ptr [ebp-4],eax
 0047491B    mov         eax,dword ptr [ebp-8]
 0047491E    mov         eax,dword ptr [eax]
 00474920    mov         eax,dword ptr [eax]
 00474922    mov         al,byte ptr [eax]
 00474924    sub         al,5
>00474926    je          00474932
 00474928    sub         al,5
>0047492A    je          00474942
 0047492C    dec         al
>0047492E    je          00474952
>00474930    jmp         00474962
 00474932    mov         ecx,dword ptr [ebp-0C]
 00474935    mov         edx,dword ptr [ebp-8]
 00474938    mov         eax,dword ptr [ebp-4]
 0047493B    call        00474738
>00474940    jmp         0047496A
 00474942    mov         ecx,dword ptr [ebp-0C]
 00474945    mov         edx,dword ptr [ebp-8]
 00474948    mov         eax,dword ptr [ebp-4]
 0047494B    call        GetLongStrProp
>00474950    jmp         0047496A
 00474952    mov         ecx,dword ptr [ebp-0C]
 00474955    mov         edx,dword ptr [ebp-8]
 00474958    mov         eax,dword ptr [ebp-4]
 0047495B    call        0047484C
>00474960    jmp         0047496A
 00474962    mov         eax,dword ptr [ebp-0C]
 00474965    call        @LStrClr
 0047496A    mov         esp,ebp
 0047496C    pop         ebp
 0047496D    ret
end;*}

//00474970
procedure sub_00474970(?:Longint; ?:PPropInfo; ?:AnsiString);
begin
{*
 00474970    push        ebp
 00474971    mov         ebp,esp
 00474973    add         esp,0FFFFFFF4
 00474976    mov         dword ptr [ebp-0C],ecx
 00474979    mov         dword ptr [ebp-8],edx
 0047497C    mov         dword ptr [ebp-4],eax
 0047497F    mov         eax,dword ptr [ebp-8]
 00474982    mov         eax,dword ptr [eax]
 00474984    mov         eax,dword ptr [eax]
 00474986    mov         al,byte ptr [eax]
 00474988    sub         al,5
>0047498A    je          00474996
 0047498C    sub         al,5
>0047498E    je          004749A6
 00474990    dec         al
>00474992    je          004749B6
>00474994    jmp         004749C4
 00474996    mov         ecx,dword ptr [ebp-0C]
 00474999    mov         edx,dword ptr [ebp-8]
 0047499C    mov         eax,dword ptr [ebp-4]
 0047499F    call        00474774
>004749A4    jmp         004749C4
 004749A6    mov         ecx,dword ptr [ebp-0C]
 004749A9    mov         edx,dword ptr [ebp-8]
 004749AC    mov         eax,dword ptr [ebp-4]
 004749AF    call        SetLongStrProp
>004749B4    jmp         004749C4
 004749B6    mov         ecx,dword ptr [ebp-0C]
 004749B9    mov         edx,dword ptr [ebp-8]
 004749BC    mov         eax,dword ptr [ebp-4]
 004749BF    call        004748AC
 004749C4    mov         esp,ebp
 004749C6    pop         ebp
 004749C7    ret
*}
end;

//004749C8
function GetWideStrProp(Instance:TObject; PropInfo:PPropInfo):WideString;
begin
{*
 004749C8    push        ebp
 004749C9    mov         ebp,esp
 004749CB    add         esp,0FFFFFFE0
 004749CE    push        ebx
 004749CF    xor         ebx,ebx
 004749D1    mov         dword ptr [ebp-20],ebx
 004749D4    mov         dword ptr [ebp-0C],ecx
 004749D7    mov         dword ptr [ebp-8],edx
 004749DA    mov         dword ptr [ebp-4],eax
 004749DD    xor         eax,eax
 004749DF    push        ebp
 004749E0    push        474ACB
 004749E5    push        dword ptr fs:[eax]
 004749E8    mov         dword ptr fs:[eax],esp
 004749EB    mov         eax,dword ptr [ebp-8]
 004749EE    mov         eax,dword ptr [eax]
 004749F0    mov         eax,dword ptr [eax]
 004749F2    mov         al,byte ptr [eax]
 004749F4    sub         al,5
>004749F6    je          00474A05
 004749F8    sub         al,5
>004749FA    je          00474A05
 004749FC    dec         al
>004749FE    je          00474A23
>00474A00    jmp         00474AAD
 00474A05    lea         ecx,[ebp-20]
 00474A08    mov         edx,dword ptr [ebp-8]
 00474A0B    mov         eax,dword ptr [ebp-4]
 00474A0E    call        0047490C
 00474A13    mov         edx,dword ptr [ebp-20]
 00474A16    mov         eax,dword ptr [ebp-0C]
 00474A19    call        @WStrFromLStr
>00474A1E    jmp         00474AB5
 00474A23    mov         eax,dword ptr [ebp-8]
 00474A26    mov         eax,dword ptr [eax+4]
 00474A29    mov         dword ptr [ebp-1C],eax
 00474A2C    mov         eax,dword ptr [ebp-1C]
 00474A2F    and         eax,0FF000000
 00474A34    cmp         eax,0FF000000
>00474A39    jne         00474A58
 00474A3B    mov         eax,dword ptr [ebp-1C]
 00474A3E    and         eax,0FFFFFF
 00474A43    add         eax,dword ptr [ebp-4]
 00474A46    mov         dword ptr [ebp-10],eax
 00474A49    mov         eax,dword ptr [ebp-0C]
 00474A4C    mov         edx,dword ptr [ebp-10]
 00474A4F    mov         edx,dword ptr [edx]
 00474A51    call        @WStrAsg
>00474A56    jmp         00474AB5
 00474A58    mov         eax,dword ptr [ebp-1C]
 00474A5B    and         eax,0FF000000
 00474A60    cmp         eax,0FE000000
>00474A65    jne         00474A79
 00474A67    mov         eax,dword ptr [ebp-4]
 00474A6A    mov         eax,dword ptr [eax]
 00474A6C    movsx       edx,word ptr [ebp-1C]
 00474A70    add         eax,edx
 00474A72    mov         eax,dword ptr [eax]
 00474A74    mov         dword ptr [ebp-18],eax
>00474A77    jmp         00474A7F
 00474A79    mov         eax,dword ptr [ebp-1C]
 00474A7C    mov         dword ptr [ebp-18],eax
 00474A7F    mov         eax,dword ptr [ebp-4]
 00474A82    mov         dword ptr [ebp-14],eax
 00474A85    mov         eax,dword ptr [ebp-8]
 00474A88    cmp         dword ptr [eax+10],80000000
>00474A8F    jne         00474A9C
 00474A91    mov         edx,dword ptr [ebp-0C]
 00474A94    mov         eax,dword ptr [ebp-14]
 00474A97    call        dword ptr [ebp-18]
>00474A9A    jmp         00474AB5
 00474A9C    mov         ecx,dword ptr [ebp-0C]
 00474A9F    mov         eax,dword ptr [ebp-8]
 00474AA2    mov         edx,dword ptr [eax+10]
 00474AA5    mov         eax,dword ptr [ebp-14]
 00474AA8    call        dword ptr [ebp-18]
>00474AAB    jmp         00474AB5
 00474AAD    mov         eax,dword ptr [ebp-0C]
 00474AB0    call        @WStrClr
 00474AB5    xor         eax,eax
 00474AB7    pop         edx
 00474AB8    pop         ecx
 00474AB9    pop         ecx
 00474ABA    mov         dword ptr fs:[eax],edx
 00474ABD    push        474AD2
 00474AC2    lea         eax,[ebp-20]
 00474AC5    call        @LStrClr
 00474ACA    ret
>00474ACB    jmp         @HandleFinally
>00474AD0    jmp         00474AC2
 00474AD2    pop         ebx
 00474AD3    mov         esp,ebp
 00474AD5    pop         ebp
 00474AD6    ret
*}
end;

//00474AD8
procedure sub_00474AD8(?:Longint; ?:PPropInfo; ?:WideString);
begin
{*
 00474AD8    push        ebp
 00474AD9    mov         ebp,esp
 00474ADB    add         esp,0FFFFFFE0
 00474ADE    push        ebx
 00474ADF    xor         ebx,ebx
 00474AE1    mov         dword ptr [ebp-20],ebx
 00474AE4    mov         dword ptr [ebp-0C],ecx
 00474AE7    mov         dword ptr [ebp-8],edx
 00474AEA    mov         dword ptr [ebp-4],eax
 00474AED    xor         eax,eax
 00474AEF    push        ebp
 00474AF0    push        474BCF
 00474AF5    push        dword ptr fs:[eax]
 00474AF8    mov         dword ptr fs:[eax],esp
 00474AFB    mov         eax,dword ptr [ebp-8]
 00474AFE    mov         eax,dword ptr [eax]
 00474B00    mov         eax,dword ptr [eax]
 00474B02    mov         al,byte ptr [eax]
 00474B04    sub         al,5
>00474B06    je          00474B15
 00474B08    sub         al,5
>00474B0A    je          00474B15
 00474B0C    dec         al
>00474B0E    je          00474B33
>00474B10    jmp         00474BB9
 00474B15    lea         eax,[ebp-20]
 00474B18    mov         edx,dword ptr [ebp-0C]
 00474B1B    call        @LStrFromWStr
 00474B20    mov         ecx,dword ptr [ebp-20]
 00474B23    mov         edx,dword ptr [ebp-8]
 00474B26    mov         eax,dword ptr [ebp-4]
 00474B29    call        00474970
>00474B2E    jmp         00474BB9
 00474B33    mov         eax,dword ptr [ebp-8]
 00474B36    mov         eax,dword ptr [eax+8]
 00474B39    mov         dword ptr [ebp-1C],eax
 00474B3C    mov         eax,dword ptr [ebp-1C]
 00474B3F    and         eax,0FF000000
 00474B44    cmp         eax,0FF000000
>00474B49    jne         00474B66
 00474B4B    mov         eax,dword ptr [ebp-1C]
 00474B4E    and         eax,0FFFFFF
 00474B53    add         eax,dword ptr [ebp-4]
 00474B56    mov         dword ptr [ebp-10],eax
 00474B59    mov         eax,dword ptr [ebp-10]
 00474B5C    mov         edx,dword ptr [ebp-0C]
 00474B5F    call        @WStrAsg
>00474B64    jmp         00474BB9
 00474B66    mov         eax,dword ptr [ebp-1C]
 00474B69    and         eax,0FF000000
 00474B6E    cmp         eax,0FE000000
>00474B73    jne         00474B87
 00474B75    mov         eax,dword ptr [ebp-4]
 00474B78    mov         eax,dword ptr [eax]
 00474B7A    movsx       edx,word ptr [ebp-1C]
 00474B7E    add         eax,edx
 00474B80    mov         eax,dword ptr [eax]
 00474B82    mov         dword ptr [ebp-18],eax
>00474B85    jmp         00474B8D
 00474B87    mov         eax,dword ptr [ebp-1C]
 00474B8A    mov         dword ptr [ebp-18],eax
 00474B8D    mov         eax,dword ptr [ebp-4]
 00474B90    mov         dword ptr [ebp-14],eax
 00474B93    mov         eax,dword ptr [ebp-8]
 00474B96    cmp         dword ptr [eax+10],80000000
>00474B9D    jne         00474BAA
 00474B9F    mov         edx,dword ptr [ebp-0C]
 00474BA2    mov         eax,dword ptr [ebp-14]
 00474BA5    call        dword ptr [ebp-18]
>00474BA8    jmp         00474BB9
 00474BAA    mov         ecx,dword ptr [ebp-0C]
 00474BAD    mov         eax,dword ptr [ebp-8]
 00474BB0    mov         edx,dword ptr [eax+10]
 00474BB3    mov         eax,dword ptr [ebp-14]
 00474BB6    call        dword ptr [ebp-18]
 00474BB9    xor         eax,eax
 00474BBB    pop         edx
 00474BBC    pop         ecx
 00474BBD    pop         ecx
 00474BBE    mov         dword ptr fs:[eax],edx
 00474BC1    push        474BD6
 00474BC6    lea         eax,[ebp-20]
 00474BC9    call        @LStrClr
 00474BCE    ret
>00474BCF    jmp         @HandleFinally
>00474BD4    jmp         00474BC6
 00474BD6    pop         ebx
 00474BD7    mov         esp,ebp
 00474BD9    pop         ebp
 00474BDA    ret
*}
end;

//00474BDC
function GetFloatProp(Instance:TObject; const PropName:AnsiString):Extended;
begin
{*
 00474BDC    push        ebp
 00474BDD    mov         ebp,esp
 00474BDF    add         esp,0FFFFFFD8
 00474BE2    mov         dword ptr [ebp-8],edx
 00474BE5    mov         dword ptr [ebp-4],eax
 00474BE8    mov         eax,dword ptr [ebp-8]
 00474BEB    mov         eax,dword ptr [eax+4]
 00474BEE    mov         dword ptr [ebp-28],eax
 00474BF1    mov         eax,dword ptr [ebp-28]
 00474BF4    and         eax,0FF000000
 00474BF9    cmp         eax,0FF000000
>00474BFE    jne         00474CA8
 00474C04    mov         eax,dword ptr [ebp-28]
 00474C07    and         eax,0FFFFFF
 00474C0C    add         eax,dword ptr [ebp-4]
 00474C0F    mov         dword ptr [ebp-1C],eax
 00474C12    mov         eax,dword ptr [ebp-8]
 00474C15    mov         eax,dword ptr [eax]
 00474C17    mov         eax,dword ptr [eax]
 00474C19    call        GetTypeData
 00474C1E    movzx       eax,byte ptr [eax]
 00474C21    cmp         eax,4
>00474C24    ja          00474C9A
 00474C26    jmp         dword ptr [eax*4+474C2D]
 00474C26    dd          00474C41
 00474C26    dd          00474C4F
 00474C26    dd          00474C5D
 00474C26    dd          00474C78
 00474C26    dd          00474C86
 00474C41    mov         eax,dword ptr [ebp-1C]
 00474C44    fld         dword ptr [eax]
 00474C46    fstp        tbyte ptr [ebp-18]
 00474C49    wait
>00474C4A    jmp         00474D1B
 00474C4F    mov         eax,dword ptr [ebp-1C]
 00474C52    fld         qword ptr [eax]
 00474C54    fstp        tbyte ptr [ebp-18]
 00474C57    wait
>00474C58    jmp         00474D1B
 00474C5D    mov         eax,dword ptr [ebp-1C]
 00474C60    mov         edx,dword ptr [eax]
 00474C62    mov         dword ptr [ebp-18],edx
 00474C65    mov         edx,dword ptr [eax+4]
 00474C68    mov         dword ptr [ebp-14],edx
 00474C6B    mov         dx,word ptr [eax+8]
 00474C6F    mov         word ptr [ebp-10],dx
>00474C73    jmp         00474D1B
 00474C78    mov         eax,dword ptr [ebp-1C]
 00474C7B    fild        qword ptr [eax]
 00474C7D    fstp        tbyte ptr [ebp-18]
 00474C80    wait
>00474C81    jmp         00474D1B
 00474C86    mov         eax,dword ptr [ebp-1C]
 00474C89    fild        qword ptr [eax]
 00474C8B    fdiv        dword ptr ds:[474D24]
 00474C91    fstp        tbyte ptr [ebp-18]
 00474C94    wait
>00474C95    jmp         00474D1B
 00474C9A    xor         eax,eax
 00474C9C    mov         dword ptr [ebp-18],eax
 00474C9F    mov         dword ptr [ebp-14],eax
 00474CA2    mov         word ptr [ebp-10],ax
>00474CA6    jmp         00474D1B
 00474CA8    mov         eax,dword ptr [ebp-28]
 00474CAB    and         eax,0FF000000
 00474CB0    cmp         eax,0FE000000
>00474CB5    jne         00474CC9
 00474CB7    mov         eax,dword ptr [ebp-4]
 00474CBA    mov         eax,dword ptr [eax]
 00474CBC    movsx       edx,word ptr [ebp-28]
 00474CC0    add         eax,edx
 00474CC2    mov         eax,dword ptr [eax]
 00474CC4    mov         dword ptr [ebp-24],eax
>00474CC7    jmp         00474CCF
 00474CC9    mov         eax,dword ptr [ebp-28]
 00474CCC    mov         dword ptr [ebp-24],eax
 00474CCF    mov         eax,dword ptr [ebp-4]
 00474CD2    mov         dword ptr [ebp-20],eax
 00474CD5    mov         eax,dword ptr [ebp-8]
 00474CD8    cmp         dword ptr [eax+10],80000000
>00474CDF    jne         00474CED
 00474CE1    mov         eax,dword ptr [ebp-20]
 00474CE4    call        dword ptr [ebp-24]
 00474CE7    fstp        tbyte ptr [ebp-18]
 00474CEA    wait
>00474CEB    jmp         00474CFD
 00474CED    mov         eax,dword ptr [ebp-8]
 00474CF0    mov         edx,dword ptr [eax+10]
 00474CF3    mov         eax,dword ptr [ebp-20]
 00474CF6    call        dword ptr [ebp-24]
 00474CF9    fstp        tbyte ptr [ebp-18]
 00474CFC    wait
 00474CFD    mov         eax,dword ptr [ebp-8]
 00474D00    mov         eax,dword ptr [eax]
 00474D02    mov         eax,dword ptr [eax]
 00474D04    call        GetTypeData
 00474D09    cmp         byte ptr [eax],4
>00474D0C    jne         00474D1B
 00474D0E    fld         tbyte ptr [ebp-18]
 00474D11    fdiv        dword ptr ds:[474D24]
 00474D17    fstp        tbyte ptr [ebp-18]
 00474D1A    wait
 00474D1B    fld         tbyte ptr [ebp-18]
 00474D1E    mov         esp,ebp
 00474D20    pop         ebp
 00474D21    ret
*}
end;

//00474D28
{*procedure sub_00474D28(?:Longint; ?:PPropInfo; ?:Extended; ?:?; ?:?);
begin
 00474D28    push        ebp
 00474D29    mov         ebp,esp
 00474D2B    add         esp,0FFFFFFE4
 00474D2E    mov         dword ptr [ebp-8],edx
 00474D31    mov         dword ptr [ebp-4],eax
 00474D34    mov         eax,dword ptr [ebp-8]
 00474D37    mov         eax,dword ptr [eax+8]
 00474D3A    mov         dword ptr [ebp-18],eax
 00474D3D    mov         eax,dword ptr [ebp-8]
 00474D40    mov         eax,dword ptr [eax]
 00474D42    mov         eax,dword ptr [eax]
 00474D44    call        GetTypeData
 00474D49    mov         al,byte ptr [eax]
 00474D4B    mov         byte ptr [ebp-19],al
 00474D4E    mov         eax,dword ptr [ebp-18]
 00474D51    and         eax,0FF000000
 00474D56    cmp         eax,0FF000000
>00474D5B    jne         00474DF1
 00474D61    mov         eax,dword ptr [ebp-18]
 00474D64    and         eax,0FFFFFF
 00474D69    add         eax,dword ptr [ebp-4]
 00474D6C    mov         dword ptr [ebp-0C],eax
 00474D6F    xor         eax,eax
 00474D71    mov         al,byte ptr [ebp-19]
 00474D74    cmp         eax,4
>00474D77    ja          00474F6D
 00474D7D    jmp         dword ptr [eax*4+474D84]
 00474D7D    dd          00474D98
 00474D7D    dd          00474DA6
 00474D7D    dd          00474DB4
 00474D7D    dd          00474DCF
 00474D7D    dd          00474DDD
 00474D98    fld         tbyte ptr [ebp+8]
 00474D9B    mov         eax,dword ptr [ebp-0C]
 00474D9E    fstp        dword ptr [eax]
 00474DA0    wait
>00474DA1    jmp         00474F6D
 00474DA6    fld         tbyte ptr [ebp+8]
 00474DA9    mov         eax,dword ptr [ebp-0C]
 00474DAC    fstp        qword ptr [eax]
 00474DAE    wait
>00474DAF    jmp         00474F6D
 00474DB4    mov         eax,dword ptr [ebp-0C]
 00474DB7    mov         edx,dword ptr [ebp+8]
 00474DBA    mov         dword ptr [eax],edx
 00474DBC    mov         edx,dword ptr [ebp+0C]
 00474DBF    mov         dword ptr [eax+4],edx
 00474DC2    mov         dx,word ptr [ebp+10]
 00474DC6    mov         word ptr [eax+8],dx
>00474DCA    jmp         00474F6D
 00474DCF    fld         tbyte ptr [ebp+8]
 00474DD2    mov         eax,dword ptr [ebp-0C]
 00474DD5    fistp       qword ptr [eax]
 00474DD7    wait
>00474DD8    jmp         00474F6D
 00474DDD    fld         tbyte ptr [ebp+8]
 00474DE0    fmul        dword ptr ds:[474F74];10000:Single
 00474DE6    mov         eax,dword ptr [ebp-0C]
 00474DE9    fistp       qword ptr [eax]
 00474DEB    wait
>00474DEC    jmp         00474F6D
 00474DF1    mov         eax,dword ptr [ebp-18]
 00474DF4    and         eax,0FF000000
 00474DF9    cmp         eax,0FE000000
>00474DFE    jne         00474E12
 00474E00    mov         eax,dword ptr [ebp-4]
 00474E03    mov         eax,dword ptr [eax]
 00474E05    movsx       edx,word ptr [ebp-18]
 00474E09    add         eax,edx
 00474E0B    mov         eax,dword ptr [eax]
 00474E0D    mov         dword ptr [ebp-14],eax
>00474E10    jmp         00474E18
 00474E12    mov         eax,dword ptr [ebp-18]
 00474E15    mov         dword ptr [ebp-14],eax
 00474E18    mov         eax,dword ptr [ebp-4]
 00474E1B    mov         dword ptr [ebp-10],eax
 00474E1E    mov         eax,dword ptr [ebp-8]
 00474E21    cmp         dword ptr [eax+10],80000000
>00474E28    jne         00474EC7
 00474E2E    xor         eax,eax
 00474E30    mov         al,byte ptr [ebp-19]
 00474E33    cmp         eax,4
>00474E36    ja          00474F6D
 00474E3C    jmp         dword ptr [eax*4+474E43]
 00474E3C    dd          00474E57
 00474E3C    dd          00474E6C
 00474E3C    dd          00474E81
 00474E3C    dd          00474E97
 00474E3C    dd          00474EAC
 00474E57    fld         tbyte ptr [ebp+8]
 00474E5A    add         esp,0FFFFFFFC
 00474E5D    fstp        dword ptr [esp]
 00474E60    wait
 00474E61    mov         eax,dword ptr [ebp-10]
 00474E64    call        dword ptr [ebp-14]
>00474E67    jmp         00474F6D
 00474E6C    fld         tbyte ptr [ebp+8]
 00474E6F    add         esp,0FFFFFFF8
 00474E72    fstp        qword ptr [esp]
 00474E75    wait
 00474E76    mov         eax,dword ptr [ebp-10]
 00474E79    call        dword ptr [ebp-14]
>00474E7C    jmp         00474F6D
 00474E81    mov         ax,word ptr [ebp+10]
 00474E85    push        eax
 00474E86    push        dword ptr [ebp+0C]
 00474E89    push        dword ptr [ebp+8]
 00474E8C    mov         eax,dword ptr [ebp-10]
 00474E8F    call        dword ptr [ebp-14]
>00474E92    jmp         00474F6D
 00474E97    fld         tbyte ptr [ebp+8]
 00474E9A    add         esp,0FFFFFFF8
 00474E9D    fistp       qword ptr [esp]
 00474EA0    wait
 00474EA1    mov         eax,dword ptr [ebp-10]
 00474EA4    call        dword ptr [ebp-14]
>00474EA7    jmp         00474F6D
 00474EAC    fld         tbyte ptr [ebp+8]
 00474EAF    fmul        dword ptr ds:[474F74];10000:Single
 00474EB5    add         esp,0FFFFFFF8
 00474EB8    fistp       qword ptr [esp]
 00474EBB    wait
 00474EBC    mov         eax,dword ptr [ebp-10]
 00474EBF    call        dword ptr [ebp-14]
>00474EC2    jmp         00474F6D
 00474EC7    xor         eax,eax
 00474EC9    mov         al,byte ptr [ebp-19]
 00474ECC    cmp         eax,4
>00474ECF    ja          00474F6D
 00474ED5    jmp         dword ptr [eax*4+474EDC]
 00474ED5    dd          00474EF0
 00474ED5    dd          00474F08
 00474ED5    dd          00474F20
 00474ED5    dd          00474F39
 00474ED5    dd          00474F51
 00474EF0    fld         tbyte ptr [ebp+8]
 00474EF3    add         esp,0FFFFFFFC
 00474EF6    fstp        dword ptr [esp]
 00474EF9    wait
 00474EFA    mov         eax,dword ptr [ebp-8]
 00474EFD    mov         edx,dword ptr [eax+10]
 00474F00    mov         eax,dword ptr [ebp-10]
 00474F03    call        dword ptr [ebp-14]
>00474F06    jmp         00474F6D
 00474F08    fld         tbyte ptr [ebp+8]
 00474F0B    add         esp,0FFFFFFF8
 00474F0E    fstp        qword ptr [esp]
 00474F11    wait
 00474F12    mov         eax,dword ptr [ebp-8]
 00474F15    mov         edx,dword ptr [eax+10]
 00474F18    mov         eax,dword ptr [ebp-10]
 00474F1B    call        dword ptr [ebp-14]
>00474F1E    jmp         00474F6D
 00474F20    mov         ax,word ptr [ebp+10]
 00474F24    push        eax
 00474F25    push        dword ptr [ebp+0C]
 00474F28    push        dword ptr [ebp+8]
 00474F2B    mov         eax,dword ptr [ebp-8]
 00474F2E    mov         edx,dword ptr [eax+10]
 00474F31    mov         eax,dword ptr [ebp-10]
 00474F34    call        dword ptr [ebp-14]
>00474F37    jmp         00474F6D
 00474F39    fld         tbyte ptr [ebp+8]
 00474F3C    add         esp,0FFFFFFF8
 00474F3F    fistp       qword ptr [esp]
 00474F42    wait
 00474F43    mov         eax,dword ptr [ebp-8]
 00474F46    mov         edx,dword ptr [eax+10]
 00474F49    mov         eax,dword ptr [ebp-10]
 00474F4C    call        dword ptr [ebp-14]
>00474F4F    jmp         00474F6D
 00474F51    fld         tbyte ptr [ebp+8]
 00474F54    fmul        dword ptr ds:[474F74];10000:Single
 00474F5A    add         esp,0FFFFFFF8
 00474F5D    fistp       qword ptr [esp]
 00474F60    wait
 00474F61    mov         eax,dword ptr [ebp-8]
 00474F64    mov         edx,dword ptr [eax+10]
 00474F67    mov         eax,dword ptr [ebp-10]
 00474F6A    call        dword ptr [ebp-14]
 00474F6D    mov         esp,ebp
 00474F6F    pop         ebp
 00474F70    ret         0C
end;*}

//00474F78
procedure AssignVariant(var Dest:Variant; const Source:Variant);
begin
{*
 00474F78    push        ebp
 00474F79    mov         ebp,esp
 00474F7B    add         esp,0FFFFFFF8
 00474F7E    mov         dword ptr [ebp-8],edx
 00474F81    mov         dword ptr [ebp-4],eax
 00474F84    mov         eax,dword ptr [ebp-4]
 00474F87    mov         edx,dword ptr [ebp-8]
 00474F8A    call        @VarCopy
 00474F8F    pop         ecx
 00474F90    pop         ecx
 00474F91    pop         ebp
 00474F92    ret
*}
end;

//00474F94
function GetVariantProp(Instance:TObject; PropInfo:PPropInfo):Variant;
begin
{*
 00474F94    push        esi
 00474F95    push        edi
 00474F96    mov         edi,edx
 00474F98    mov         edx,dword ptr [edi+10]
 00474F9B    cmp         edx,80000000
>00474FA1    jne         00474FA5
 00474FA3    mov         edx,ecx
 00474FA5    mov         esi,dword ptr [edi+4]
 00474FA8    cmp         byte ptr [edi+7],0FE
>00474FAC    ja          00474FBF
>00474FAE    jb          00474FBA
 00474FB0    movsx       esi,si
 00474FB3    add         esi,dword ptr [eax]
 00474FB5    call        dword ptr [esi]
 00474FB7    pop         edi
 00474FB8    pop         esi
 00474FB9    ret
 00474FBA    call        esi
 00474FBC    pop         edi
 00474FBD    pop         esi
 00474FBE    ret
 00474FBF    and         esi,0FFFFFF
 00474FC5    lea         edx,[esi+eax]
 00474FC8    mov         eax,ecx
 00474FCA    call        AssignVariant
 00474FCF    pop         edi
 00474FD0    pop         esi
 00474FD1    ret
*}
end;

//00474FD4
procedure SetVariantProp(Instance:TObject; PropInfo:PPropInfo; const Value:Variant);
begin
{*
 00474FD4    push        esi
 00474FD5    push        edi
 00474FD6    mov         esi,edx
 00474FD8    mov         edx,dword ptr [esi+10]
 00474FDB    cmp         edx,80000000
>00474FE1    jne         00474FE5
 00474FE3    mov         edx,ecx
 00474FE5    mov         edi,dword ptr [esi+8]
 00474FE8    cmp         byte ptr [esi+0B],0FE
>00474FEC    ja          00474FFF
>00474FEE    jb          00474FFA
 00474FF0    movsx       edi,di
 00474FF3    add         edi,dword ptr [eax]
 00474FF5    call        dword ptr [edi]
 00474FF7    pop         edi
 00474FF8    pop         esi
 00474FF9    ret
 00474FFA    call        edi
 00474FFC    pop         edi
 00474FFD    pop         esi
 00474FFE    ret
 00474FFF    and         edi,0FFFFFF
 00475005    add         eax,edi
 00475007    mov         edx,ecx
 00475009    call        AssignVariant
 0047500E    pop         edi
 0047500F    pop         esi
 00475010    ret
*}
end;

//00475014
function GetMethodProp(Instance:TObject; PropInfo:PPropInfo):TMethod;
begin
{*
 00475014    push        ebx
 00475015    push        esi
 00475016    mov         esi,edx
 00475018    mov         edx,dword ptr [esi+10]
 0047501B    cmp         edx,80000000
>00475021    jne         00475025
 00475023    mov         edx,ecx
 00475025    mov         ebx,dword ptr [esi+4]
 00475028    cmp         byte ptr [esi+7],0FE
>0047502C    ja          0047503F
>0047502E    jb          0047503A
 00475030    movsx       ebx,bx
 00475033    add         ebx,dword ptr [eax]
 00475035    call        dword ptr [ebx]
 00475037    pop         esi
 00475038    pop         ebx
 00475039    ret
 0047503A    call        ebx
 0047503C    pop         esi
 0047503D    pop         ebx
 0047503E    ret
 0047503F    and         ebx,0FFFFFF
 00475045    add         eax,ebx
 00475047    mov         edx,dword ptr [eax]
 00475049    mov         ebx,dword ptr [eax+4]
 0047504C    mov         dword ptr [ecx],edx
 0047504E    mov         dword ptr [ecx+4],ebx
 00475051    pop         esi
 00475052    pop         ebx
 00475053    ret
*}
end;

//00475054
procedure SetMethodProp(Instance:TObject; PropInfo:PPropInfo; const Value:TMethod);
begin
{*
 00475054    push        ebx
 00475055    mov         ebx,dword ptr [edx+8]
 00475058    cmp         byte ptr [edx+0B],0FE
>0047505C    ja          00475075
 0047505E    mov         edx,dword ptr [edx+10]
 00475061    push        dword ptr [ecx+4]
 00475064    push        dword ptr [ecx]
>00475066    jb          00475071
 00475068    movsx       ebx,bx
 0047506B    add         ebx,dword ptr [eax]
 0047506D    call        dword ptr [ebx]
 0047506F    pop         ebx
 00475070    ret
 00475071    call        ebx
 00475073    pop         ebx
 00475074    ret
 00475075    and         ebx,0FFFFFF
 0047507B    add         eax,ebx
 0047507D    mov         edx,dword ptr [ecx]
 0047507F    mov         ebx,dword ptr [ecx+4]
 00475082    mov         dword ptr [eax],edx
 00475084    mov         dword ptr [eax+4],ebx
 00475087    pop         ebx
 00475088    ret
*}
end;

//0047508C
function GetInt64Prop(Instance:TObject; PropInfo:PPropInfo):Int64;
begin
{*
 0047508C    cmp         byte ptr [edx+7],0FE
 00475090    mov         ecx,dword ptr [edx+4]
 00475093    mov         edx,dword ptr [edx+10]
>00475096    ja          004750A5
>00475098    jb          004750A2
 0047509A    movsx       ecx,cx
 0047509D    add         ecx,dword ptr [eax]
 0047509F    call        dword ptr [ecx]
 004750A1    ret
 004750A2    call        ecx
 004750A4    ret
 004750A5    and         ecx,0FFFFFF
 004750AB    add         eax,ecx
 004750AD    mov         edx,dword ptr [eax+4]
 004750B0    mov         eax,dword ptr [eax]
 004750B2    ret
*}
end;

//004750B4
procedure SetInt64Prop(Instance:TObject; PropInfo:PPropInfo; const Value:Int64);
begin
{*
 004750B4    push        ebp
 004750B5    mov         ebp,esp
 004750B7    cmp         byte ptr [edx+0B],0FE
 004750BB    mov         ecx,dword ptr [edx+8]
>004750BE    ja          004750D8
 004750C0    mov         edx,dword ptr [edx+10]
 004750C3    push        dword ptr [ebp+0C]
 004750C6    push        dword ptr [ebp+8]
>004750C9    jb          004750D4
 004750CB    movsx       ecx,cx
 004750CE    add         ecx,dword ptr [eax]
 004750D0    call        dword ptr [ecx]
>004750D2    jmp         004750EB
 004750D4    call        ecx
>004750D6    jmp         004750EB
 004750D8    and         ecx,0FFFFFF
 004750DE    add         eax,ecx
 004750E0    mov         edx,dword ptr [ebp+8]
 004750E3    mov         ecx,dword ptr [ebp+0C]
 004750E6    mov         dword ptr [eax],edx
 004750E8    mov         dword ptr [eax+4],ecx
 004750EB    pop         ebp
 004750EC    ret         8
*}
end;

//004750F0
{*procedure sub_004750F0(?:?; ?:?; ?:?);
begin
 004750F0    push        ebp
 004750F1    mov         ebp,esp
 004750F3    add         esp,0FFFFFFE4
 004750F6    mov         dword ptr [ebp-0C],ecx
 004750F9    mov         dword ptr [ebp-8],edx
 004750FC    mov         dword ptr [ebp-4],eax
 004750FF    mov         eax,dword ptr [ebp-8]
 00475102    mov         eax,dword ptr [eax+4]
 00475105    mov         dword ptr [ebp-1C],eax
 00475108    mov         eax,dword ptr [ebp-1C]
 0047510B    and         eax,0FF000000
 00475110    cmp         eax,0FF000000
>00475115    jne         00475134
 00475117    mov         eax,dword ptr [ebp-1C]
 0047511A    and         eax,0FFFFFF
 0047511F    add         eax,dword ptr [ebp-4]
 00475122    mov         dword ptr [ebp-10],eax
 00475125    mov         eax,dword ptr [ebp-0C]
 00475128    mov         edx,dword ptr [ebp-10]
 0047512B    mov         edx,dword ptr [edx]
 0047512D    call        @IntfCopy
>00475132    jmp         00475187
 00475134    mov         eax,dword ptr [ebp-1C]
 00475137    and         eax,0FF000000
 0047513C    cmp         eax,0FE000000
>00475141    jne         00475155
 00475143    mov         eax,dword ptr [ebp-4]
 00475146    mov         eax,dword ptr [eax]
 00475148    movsx       edx,word ptr [ebp-1C]
 0047514C    add         eax,edx
 0047514E    mov         eax,dword ptr [eax]
 00475150    mov         dword ptr [ebp-18],eax
>00475153    jmp         0047515B
 00475155    mov         eax,dword ptr [ebp-1C]
 00475158    mov         dword ptr [ebp-18],eax
 0047515B    mov         eax,dword ptr [ebp-4]
 0047515E    mov         dword ptr [ebp-14],eax
 00475161    mov         eax,dword ptr [ebp-8]
 00475164    cmp         dword ptr [eax+10],80000000
>0047516B    jne         00475178
 0047516D    mov         edx,dword ptr [ebp-0C]
 00475170    mov         eax,dword ptr [ebp-14]
 00475173    call        dword ptr [ebp-18]
>00475176    jmp         00475187
 00475178    mov         ecx,dword ptr [ebp-0C]
 0047517B    mov         eax,dword ptr [ebp-8]
 0047517E    mov         edx,dword ptr [eax+10]
 00475181    mov         eax,dword ptr [ebp-14]
 00475184    call        dword ptr [ebp-18]
 00475187    mov         esp,ebp
 00475189    pop         ebp
 0047518A    ret
end;*}

//0047518C
procedure SetInterfaceProp(Instance:TObject; PropInfo:PPropInfo; const Value:IInterface);
begin
{*
 0047518C    push        ebp
 0047518D    mov         ebp,esp
 0047518F    add         esp,0FFFFFFE4
 00475192    mov         dword ptr [ebp-0C],ecx
 00475195    mov         dword ptr [ebp-8],edx
 00475198    mov         dword ptr [ebp-4],eax
 0047519B    mov         eax,dword ptr [ebp-8]
 0047519E    mov         eax,dword ptr [eax+8]
 004751A1    mov         dword ptr [ebp-1C],eax
 004751A4    mov         eax,dword ptr [ebp-1C]
 004751A7    and         eax,0FF000000
 004751AC    cmp         eax,0FF000000
>004751B1    jne         004751CE
 004751B3    mov         eax,dword ptr [ebp-1C]
 004751B6    and         eax,0FFFFFF
 004751BB    add         eax,dword ptr [ebp-4]
 004751BE    mov         dword ptr [ebp-10],eax
 004751C1    mov         eax,dword ptr [ebp-10]
 004751C4    mov         edx,dword ptr [ebp-0C]
 004751C7    call        @IntfCopy
>004751CC    jmp         00475221
 004751CE    mov         eax,dword ptr [ebp-1C]
 004751D1    and         eax,0FF000000
 004751D6    cmp         eax,0FE000000
>004751DB    jne         004751EF
 004751DD    mov         eax,dword ptr [ebp-4]
 004751E0    mov         eax,dword ptr [eax]
 004751E2    movsx       edx,word ptr [ebp-1C]
 004751E6    add         eax,edx
 004751E8    mov         eax,dword ptr [eax]
 004751EA    mov         dword ptr [ebp-18],eax
>004751ED    jmp         004751F5
 004751EF    mov         eax,dword ptr [ebp-1C]
 004751F2    mov         dword ptr [ebp-18],eax
 004751F5    mov         eax,dword ptr [ebp-4]
 004751F8    mov         dword ptr [ebp-14],eax
 004751FB    mov         eax,dword ptr [ebp-8]
 004751FE    cmp         dword ptr [eax+10],80000000
>00475205    jne         00475212
 00475207    mov         edx,dword ptr [ebp-0C]
 0047520A    mov         eax,dword ptr [ebp-14]
 0047520D    call        dword ptr [ebp-18]
>00475210    jmp         00475221
 00475212    mov         ecx,dword ptr [ebp-0C]
 00475215    mov         eax,dword ptr [ebp-8]
 00475218    mov         edx,dword ptr [eax+10]
 0047521B    mov         eax,dword ptr [ebp-14]
 0047521E    call        dword ptr [ebp-18]
 00475221    mov         esp,ebp
 00475223    pop         ebp
 00475224    ret
*}
end;

Initialization
Finalization
//00475228
{*
 00475228    push        ebp
 00475229    mov         ebp,esp
 0047522B    xor         eax,eax
 0047522D    push        ebp
 0047522E    push        47526E
 00475233    push        dword ptr fs:[eax]
 00475236    mov         dword ptr fs:[eax],esp
 00475239    inc         dword ptr ds:[55DAC4]
>0047523F    jne         00475260
 00475241    mov         eax,540CCC;^'.'
 00475246    call        @LStrClr
 0047524B    mov         eax,540CC4;^'False'
 00475250    mov         ecx,2
 00475255    mov         edx,dword ptr ds:[4010AC];String
 0047525B    call        @FinalizeArray
 00475260    xor         eax,eax
 00475262    pop         edx
 00475263    pop         ecx
 00475264    pop         ecx
 00475265    mov         dword ptr fs:[eax],edx
 00475268    push        475275
 0047526D    ret
>0047526E    jmp         @HandleFinally
>00475273    jmp         0047526D
 00475275    pop         ebp
 00475276    ret
*}
end.