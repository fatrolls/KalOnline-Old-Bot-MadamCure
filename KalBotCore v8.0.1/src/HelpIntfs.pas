//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit HelpIntfs;

interface

uses
  SysUtils, Classes, Contnrs;

type
  EHelpSystemException = class(Exception)
  end;
  THelpViewerNode = class(TObject)
  public
    FViewer:ICustomHelpViewer;//f4
    FViewerID:Integer;//f8
    constructor Create;//00490E48
  end;
  THelpManager = class(TInterfacedObject)
  public
    FHelpSelector:IHelpSelector;//fC
    FViewerList:TObjectList;//f10
    FExtendedViewerList:TObjectList;//f14
    FSpecialWinHelpViewerList:TObjectList;//f18
    FMinCookie:Integer;//f1C
    FHandle:Longint;//f20
    FHelpFile:String;//f24
    constructor Create;//00490E90
  end;
    function RegisterViewer(const newViewer:ICustomHelpViewer; var Manager:IHelpManager):Integer;//00490D5C
    //function sub_00490DE4(?:?):?;//00490DE4
    //procedure sub_00490F1C(?:?; ?:?; ?:?);//00490F1C
    //procedure sub_004910D4(?:?);//004910D4
    //procedure sub_00491118(?:?);//00491118
    //function sub_004912E0(?:?; ?:?; ?:?; ?:?; ?:?):?;//004912E0
    //procedure sub_00491410(?:?; ?:?; ?:?);//00491410
    //procedure sub_00491670(?:?; ?:?; ?:?);//00491670
    //procedure sub_00491794(?:?);//00491794
    //procedure sub_004917A8(?:?; ?:?; ?:?);//004917A8
    //procedure sub_004918C4(?:?; ?:?);//004918C4
    //function sub_0049192C(?:?; ?:?; ?:?; ?:?; ?:?):?;//0049192C
    //function sub_004919E0(?:?):?;//004919E0
    //procedure sub_004919FC(?:?; ?:?);//004919FC
    //procedure sub_00491A1C(?:?; ?:?);//00491A1C

implementation

//00490D5C
function RegisterViewer(const newViewer:ICustomHelpViewer; var Manager:IHelpManager):Integer;
begin
{*
 00490D5C    push        ebp
 00490D5D    mov         ebp,esp
 00490D5F    add         esp,0FFFFFFF0
 00490D62    xor         ecx,ecx
 00490D64    mov         dword ptr [ebp-10],ecx
 00490D67    mov         dword ptr [ebp-8],edx
 00490D6A    mov         dword ptr [ebp-4],eax
 00490D6D    mov         eax,dword ptr [ebp-8]
 00490D70    test        eax,eax
>00490D72    je          00490D78
 00490D74    xor         edx,edx
 00490D76    mov         dword ptr [eax],edx
 00490D78    xor         eax,eax
 00490D7A    push        ebp
 00490D7B    push        490DD6
 00490D80    push        dword ptr fs:[eax]
 00490D83    mov         dword ptr fs:[eax],esp
 00490D86    cmp         dword ptr ds:[55DBB4],0;gvar_0055DBB4:THelpManager
>00490D8D    jne         00490DA0
 00490D8F    mov         dl,1
 00490D91    mov         eax,[00490CC8];THelpManager
 00490D96    call        THelpManager.Create
 00490D9B    mov         [0055DBB4],eax;gvar_0055DBB4:THelpManager
 00490DA0    lea         ecx,[ebp-10]
 00490DA3    mov         edx,dword ptr [ebp-4]
 00490DA6    mov         eax,[0055DBB4];gvar_0055DBB4:THelpManager
 00490DAB    call        00490F1C
 00490DB0    mov         edx,dword ptr [ebp-10]
 00490DB3    mov         eax,dword ptr [ebp-8]
 00490DB6    call        @IntfCopy
 00490DBB    xor         eax,eax
 00490DBD    mov         dword ptr [ebp-0C],eax
 00490DC0    xor         eax,eax
 00490DC2    pop         edx
 00490DC3    pop         ecx
 00490DC4    pop         ecx
 00490DC5    mov         dword ptr fs:[eax],edx
 00490DC8    push        490DDD
 00490DCD    lea         eax,[ebp-10]
 00490DD0    call        @IntfClear
 00490DD5    ret
>00490DD6    jmp         @HandleFinally
>00490DDB    jmp         00490DCD
 00490DDD    mov         eax,dword ptr [ebp-0C]
 00490DE0    mov         esp,ebp
 00490DE2    pop         ebp
 00490DE3    ret
*}
end;

//00490DE4
{*function sub_00490DE4(?:?):?;
begin
 00490DE4    push        ebp
 00490DE5    mov         ebp,esp
 00490DE7    add         esp,0FFFFFFF8
 00490DEA    mov         dword ptr [ebp-4],eax
 00490DED    mov         eax,dword ptr [ebp-4]
 00490DF0    test        eax,eax
>00490DF2    je          00490DF8
 00490DF4    xor         edx,edx
 00490DF6    mov         dword ptr [eax],edx
 00490DF8    cmp         dword ptr ds:[55DBB4],0;gvar_0055DBB4:THelpManager
>00490DFF    jne         00490E12
 00490E01    mov         dl,1
 00490E03    mov         eax,[00490CC8];THelpManager
 00490E08    call        THelpManager.Create;THelpManager.Create
 00490E0D    mov         [0055DBB4],eax;gvar_0055DBB4:THelpManager
 00490E12    mov         eax,dword ptr [ebp-4]
 00490E15    mov         edx,dword ptr ds:[55DBB4];gvar_0055DBB4:THelpManager
 00490E1B    test        edx,edx
>00490E1D    je          00490E22
 00490E1F    sub         edx,0FFFFFFF8
 00490E22    mov         ecx,490E38;['{B0FC9353-5F0E-11D3-A3B9-00C04F79AD3A}']
 00490E27    call        @IntfCast
 00490E2C    xor         eax,eax
 00490E2E    mov         dword ptr [ebp-8],eax
 00490E31    mov         eax,dword ptr [ebp-8]
 00490E34    pop         ecx
 00490E35    pop         ecx
 00490E36    pop         ebp
 00490E37    ret
end;*}

//00490E48
constructor THelpViewerNode.Create;
begin
{*
 00490E48    push        ebp
 00490E49    mov         ebp,esp
 00490E4B    add         esp,0FFFFFFF4
 00490E4E    test        dl,dl
>00490E50    je          00490E5A
 00490E52    add         esp,0FFFFFFF0
 00490E55    call        @ClassCreate
 00490E5A    mov         dword ptr [ebp-0C],ecx
 00490E5D    mov         byte ptr [ebp-5],dl
 00490E60    mov         dword ptr [ebp-4],eax
 00490E63    mov         eax,dword ptr [ebp-4]
 00490E66    add         eax,4
 00490E69    mov         edx,dword ptr [ebp-0C]
 00490E6C    call        @IntfCopy
 00490E71    mov         eax,dword ptr [ebp-4]
 00490E74    cmp         byte ptr [ebp-5],0
>00490E78    je          00490E89
 00490E7A    call        @AfterConstruction
 00490E7F    pop         dword ptr fs:[0]
 00490E86    add         esp,0C
 00490E89    mov         eax,dword ptr [ebp-4]
 00490E8C    mov         esp,ebp
 00490E8E    pop         ebp
 00490E8F    ret
*}
end;

//00490E90
constructor THelpManager.Create;
begin
{*
 00490E90    push        ebp
 00490E91    mov         ebp,esp
 00490E93    add         esp,0FFFFFFF8
 00490E96    test        dl,dl
>00490E98    je          00490EA2
 00490E9A    add         esp,0FFFFFFF0
 00490E9D    call        @ClassCreate
 00490EA2    mov         byte ptr [ebp-5],dl
 00490EA5    mov         dword ptr [ebp-4],eax
 00490EA8    xor         edx,edx
 00490EAA    mov         eax,dword ptr [ebp-4]
 00490EAD    call        TObject.Create
 00490EB2    mov         dl,1
 00490EB4    mov         eax,[0048FD30];TObjectList
 00490EB9    call        TObjectList.Create;TObjectList.Create
 00490EBE    mov         edx,dword ptr [ebp-4]
 00490EC1    mov         dword ptr [edx+10],eax;THelpManager.FViewerList:TObjectList
 00490EC4    mov         dl,1
 00490EC6    mov         eax,[0048FD30];TObjectList
 00490ECB    call        TObjectList.Create;TObjectList.Create
 00490ED0    mov         edx,dword ptr [ebp-4]
 00490ED3    mov         dword ptr [edx+14],eax;THelpManager.FExtendedViewerList:TObjectList
 00490ED6    mov         dl,1
 00490ED8    mov         eax,[0048FD30];TObjectList
 00490EDD    call        TObjectList.Create;TObjectList.Create
 00490EE2    mov         edx,dword ptr [ebp-4]
 00490EE5    mov         dword ptr [edx+18],eax;THelpManager.FSpecialWinHelpViewerList:TObjectList
 00490EE8    mov         eax,dword ptr [ebp-4]
 00490EEB    add         eax,24;THelpManager.FHelpFile:String
 00490EEE    call        @LStrClr
 00490EF3    mov         eax,dword ptr [ebp-4]
 00490EF6    mov         dword ptr [eax+1C],1;THelpManager.FMinCookie:Integer
 00490EFD    mov         eax,dword ptr [ebp-4]
 00490F00    cmp         byte ptr [ebp-5],0
>00490F04    je          00490F15
 00490F06    call        @AfterConstruction
 00490F0B    pop         dword ptr fs:[0]
 00490F12    add         esp,0C
 00490F15    mov         eax,dword ptr [ebp-4]
 00490F18    pop         ecx
 00490F19    pop         ecx
 00490F1A    pop         ebp
 00490F1B    ret
*}
end;

//00490F1C
{*procedure sub_00490F1C(?:?; ?:?; ?:?);
begin
 00490F1C    push        ebp
 00490F1D    mov         ebp,esp
 00490F1F    add         esp,0FFFFFFE8
 00490F22    push        ebx
 00490F23    xor         ebx,ebx
 00490F25    mov         dword ptr [ebp-10],ebx
 00490F28    mov         dword ptr [ebp-14],ebx
 00490F2B    mov         dword ptr [ebp-0C],ecx
 00490F2E    mov         dword ptr [ebp-8],edx
 00490F31    mov         dword ptr [ebp-4],eax
 00490F34    xor         eax,eax
 00490F36    push        ebp
 00490F37    push        491060
 00490F3C    push        dword ptr fs:[eax]
 00490F3F    mov         dword ptr fs:[eax],esp
 00490F42    mov         ecx,dword ptr [ebp-8]
 00490F45    mov         dl,1
 00490F47    mov         eax,[00490B58];THelpViewerNode
 00490F4C    call        THelpViewerNode.Create;THelpViewerNode.Create
 00490F51    mov         dword ptr [ebp-18],eax
 00490F54    mov         eax,dword ptr [ebp-4]
 00490F57    mov         eax,dword ptr [eax+1C]
 00490F5A    mov         edx,dword ptr [ebp-18]
 00490F5D    mov         dword ptr [edx+8],eax;THelpViewerNode.FViewerID:Integer
 00490F60    mov         eax,dword ptr [ebp-4]
 00490F63    mov         eax,dword ptr [eax+10]
 00490F66    mov         edx,dword ptr [eax+8]
 00490F69    mov         ecx,dword ptr [ebp-18]
 00490F6C    mov         eax,dword ptr [ebp-4]
 00490F6F    mov         eax,dword ptr [eax+10]
 00490F72    call        0048FECC
 00490F77    mov         eax,dword ptr [ebp-18]
 00490F7A    mov         edx,dword ptr [eax+8];THelpViewerNode.FViewerID:Integer
 00490F7D    mov         eax,dword ptr [ebp-8]
 00490F80    mov         ecx,dword ptr [eax]
 00490F82    call        dword ptr [ecx+24]
 00490F85    lea         eax,[ebp-10]
 00490F88    call        @IntfClear
 00490F8D    mov         ecx,eax
 00490F8F    mov         edx,49106C;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00490F94    mov         eax,dword ptr [ebp-8]
 00490F97    call        0046CBD0
 00490F9C    test        al,al
>00490F9E    je          00490FD5
 00490FA0    mov         ecx,dword ptr [ebp-10]
 00490FA3    mov         dl,1
 00490FA5    mov         eax,[00490B58];THelpViewerNode
 00490FAA    call        THelpViewerNode.Create;THelpViewerNode.Create
 00490FAF    mov         dword ptr [ebp-18],eax
 00490FB2    mov         eax,dword ptr [ebp-4]
 00490FB5    mov         eax,dword ptr [eax+1C]
 00490FB8    mov         edx,dword ptr [ebp-18]
 00490FBB    mov         dword ptr [edx+8],eax;THelpViewerNode.FViewerID:Integer
 00490FBE    mov         eax,dword ptr [ebp-4]
 00490FC1    mov         eax,dword ptr [eax+14]
 00490FC4    mov         edx,dword ptr [eax+8]
 00490FC7    mov         ecx,dword ptr [ebp-18]
 00490FCA    mov         eax,dword ptr [ebp-4]
 00490FCD    mov         eax,dword ptr [eax+14]
 00490FD0    call        0048FECC
 00490FD5    lea         eax,[ebp-14]
 00490FD8    call        @IntfClear
 00490FDD    mov         ecx,eax
 00490FDF    mov         edx,49106C;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00490FE4    mov         eax,dword ptr [ebp-8]
 00490FE7    call        0046CBD0
 00490FEC    test        al,al
>00490FEE    je          00491025
 00490FF0    mov         ecx,dword ptr [ebp-14]
 00490FF3    mov         dl,1
 00490FF5    mov         eax,[00490B58];THelpViewerNode
 00490FFA    call        THelpViewerNode.Create;THelpViewerNode.Create
 00490FFF    mov         dword ptr [ebp-18],eax
 00491002    mov         eax,dword ptr [ebp-4]
 00491005    mov         eax,dword ptr [eax+1C]
 00491008    mov         edx,dword ptr [ebp-18]
 0049100B    mov         dword ptr [edx+8],eax;THelpViewerNode.FViewerID:Integer
 0049100E    mov         eax,dword ptr [ebp-4]
 00491011    mov         eax,dword ptr [eax+18]
 00491014    mov         edx,dword ptr [eax+8]
 00491017    mov         ecx,dword ptr [ebp-18]
 0049101A    mov         eax,dword ptr [ebp-4]
 0049101D    mov         eax,dword ptr [eax+18]
 00491020    call        0048FECC
 00491025    mov         eax,dword ptr [ebp-4]
 00491028    inc         dword ptr [eax+1C]
 0049102B    mov         eax,dword ptr [ebp-0C]
 0049102E    mov         edx,dword ptr [ebp-4]
 00491031    test        edx,edx
>00491033    je          00491038
 00491035    sub         edx,0FFFFFFF8
 00491038    mov         ecx,49106C;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 0049103D    call        @IntfCast
 00491042    xor         eax,eax
 00491044    pop         edx
 00491045    pop         ecx
 00491046    pop         ecx
 00491047    mov         dword ptr fs:[eax],edx
 0049104A    push        491067
 0049104F    lea         eax,[ebp-14]
 00491052    call        @IntfClear
 00491057    lea         eax,[ebp-10]
 0049105A    call        @IntfClear
 0049105F    ret
>00491060    jmp         @HandleFinally
>00491065    jmp         0049104F
 00491067    pop         ebx
 00491068    mov         esp,ebp
 0049106A    pop         ebp
 0049106B    ret
end;*}

//004910D4
{*procedure sub_004910D4(?:?);
begin
 004910D4    push        ebp
 004910D5    mov         ebp,esp
 004910D7    add         esp,0FFFFFFF4
 004910DA    mov         dword ptr [ebp-4],eax
 004910DD    mov         eax,dword ptr [ebp-4]
 004910E0    mov         eax,dword ptr [eax+10]
 004910E3    mov         eax,dword ptr [eax+8]
 004910E6    dec         eax
 004910E7    test        eax,eax
>004910E9    jl          00491114
 004910EB    inc         eax
 004910EC    mov         dword ptr [ebp-0C],eax
 004910EF    mov         dword ptr [ebp-8],0
 004910F6    mov         eax,dword ptr [ebp-4]
 004910F9    mov         eax,dword ptr [eax+10]
 004910FC    mov         edx,dword ptr [ebp-8]
 004910FF    call        0048FEA8
 00491104    mov         eax,dword ptr [eax+4]
 00491107    mov         edx,dword ptr [eax]
 00491109    call        dword ptr [edx+28]
 0049110C    inc         dword ptr [ebp-8]
 0049110F    dec         dword ptr [ebp-0C]
>00491112    jne         004910F6
 00491114    mov         esp,ebp
 00491116    pop         ebp
 00491117    ret
end;*}

//00491118
{*procedure sub_00491118(?:?);
begin
 00491118    push        ebp
 00491119    mov         ebp,esp
 0049111B    add         esp,0FFFFFFE8
 0049111E    push        ebx
 0049111F    xor         edx,edx
 00491121    mov         dword ptr [ebp-18],edx
 00491124    mov         dword ptr [ebp-4],eax
 00491127    xor         eax,eax
 00491129    push        ebp
 0049112A    push        4912D2
 0049112F    push        dword ptr fs:[eax]
 00491132    mov         dword ptr fs:[eax],esp
 00491135    mov         eax,dword ptr [ebp-4]
 00491138    mov         eax,dword ptr [eax+10]
 0049113B    cmp         dword ptr [eax+8],1
>0049113F    jne         00491178
 00491141    mov         eax,dword ptr [ebp-4]
 00491144    mov         eax,dword ptr [eax+10]
 00491147    xor         edx,edx
 00491149    call        0048FEA8
 0049114E    mov         eax,dword ptr [eax+4]
 00491151    mov         edx,dword ptr [eax]
 00491153    call        dword ptr [edx+18]
 00491156    test        al,al
>00491158    je          004912BC
 0049115E    mov         eax,dword ptr [ebp-4]
 00491161    mov         eax,dword ptr [eax+10]
 00491164    xor         edx,edx
 00491166    call        0048FEA8
 0049116B    mov         eax,dword ptr [eax+4]
 0049116E    mov         edx,dword ptr [eax]
 00491170    call        dword ptr [edx+1C]
>00491173    jmp         004912BC
 00491178    mov         eax,dword ptr [ebp-4]
 0049117B    cmp         dword ptr [eax+0C],0
>0049117F    je          0049126A
 00491185    mov         dl,1
 00491187    mov         eax,[00476078];TStringList
 0049118C    call        TObject.Create;TStringList.Create
 00491191    mov         dword ptr [ebp-8],eax
 00491194    xor         eax,eax
 00491196    push        ebp
 00491197    push        491263
 0049119C    push        dword ptr fs:[eax]
 0049119F    mov         dword ptr fs:[eax],esp
 004911A2    mov         eax,dword ptr [ebp-4]
 004911A5    mov         eax,dword ptr [eax+10]
 004911A8    mov         eax,dword ptr [eax+8]
 004911AB    dec         eax
 004911AC    test        eax,eax
>004911AE    jl          004911FF
 004911B0    inc         eax
 004911B1    mov         dword ptr [ebp-14],eax
 004911B4    mov         dword ptr [ebp-0C],0
 004911BB    mov         eax,dword ptr [ebp-4]
 004911BE    mov         eax,dword ptr [eax+10]
 004911C1    mov         edx,dword ptr [ebp-0C]
 004911C4    call        0048FEA8
 004911C9    mov         dword ptr [ebp-10],eax
 004911CC    mov         eax,dword ptr [ebp-10]
 004911CF    mov         eax,dword ptr [eax+4]
 004911D2    mov         edx,dword ptr [eax]
 004911D4    call        dword ptr [edx+18]
 004911D7    test        al,al
>004911D9    je          004911F7
 004911DB    lea         edx,[ebp-18]
 004911DE    mov         eax,dword ptr [ebp-10]
 004911E1    mov         eax,dword ptr [eax+4]
 004911E4    mov         ecx,dword ptr [eax]
 004911E6    call        dword ptr [ecx+0C]
 004911E9    mov         edx,dword ptr [ebp-18]
 004911EC    mov         ecx,dword ptr [ebp-10]
 004911EF    mov         eax,dword ptr [ebp-8]
 004911F2    mov         ebx,dword ptr [eax]
 004911F4    call        dword ptr [ebx+3C];TStringList.sub_0047B3CC
 004911F7    inc         dword ptr [ebp-0C]
 004911FA    dec         dword ptr [ebp-14]
>004911FD    jne         004911BB
 004911FF    mov         eax,dword ptr [ebp-8]
 00491202    mov         edx,dword ptr [eax]
 00491204    call        dword ptr [edx+14];TStringList.sub_0047B778
 00491207    dec         eax
>00491208    jle         0049123B
 0049120A    mov         eax,dword ptr [ebp-8]
 0049120D    mov         edx,dword ptr [eax]
 0049120F    call        dword ptr [edx+90];TStringList.sub_0047BC20
 00491215    mov         eax,dword ptr [ebp-4]
 00491218    mov         eax,dword ptr [eax+0C]
 0049121B    mov         edx,dword ptr [ebp-8]
 0049121E    mov         ecx,dword ptr [eax]
 00491220    call        dword ptr [ecx+10]
 00491223    mov         dword ptr [ebp-0C],eax
 00491226    mov         edx,dword ptr [ebp-0C]
 00491229    mov         eax,dword ptr [ebp-8]
 0049122C    mov         ecx,dword ptr [eax]
 0049122E    call        dword ptr [ecx+18];TStringList.sub_0047B794
 00491231    mov         eax,dword ptr [eax+4]
 00491234    mov         edx,dword ptr [eax]
 00491236    call        dword ptr [edx+1C]
>00491239    jmp         0049124D
 0049123B    xor         edx,edx
 0049123D    mov         eax,dword ptr [ebp-8]
 00491240    mov         ecx,dword ptr [eax]
 00491242    call        dword ptr [ecx+18];TStringList.sub_0047B794
 00491245    mov         eax,dword ptr [eax+4]
 00491248    mov         edx,dword ptr [eax]
 0049124A    call        dword ptr [edx+1C]
 0049124D    xor         eax,eax
 0049124F    pop         edx
 00491250    pop         ecx
 00491251    pop         ecx
 00491252    mov         dword ptr fs:[eax],edx
 00491255    push        4912BC
 0049125A    mov         eax,dword ptr [ebp-8]
 0049125D    call        TObject.Free
 00491262    ret
>00491263    jmp         @HandleFinally
>00491268    jmp         0049125A
 0049126A    mov         eax,dword ptr [ebp-4]
 0049126D    mov         eax,dword ptr [eax+10]
 00491270    cmp         dword ptr [eax+8],0
>00491274    jle         004912A6
 00491276    mov         eax,dword ptr [ebp-4]
 00491279    mov         eax,dword ptr [eax+10]
 0049127C    xor         edx,edx
 0049127E    call        0048FEA8
 00491283    mov         eax,dword ptr [eax+4]
 00491286    mov         edx,dword ptr [eax]
 00491288    call        dword ptr [edx+18]
 0049128B    test        al,al
>0049128D    je          004912A6
 0049128F    mov         eax,dword ptr [ebp-4]
 00491292    mov         eax,dword ptr [eax+10]
 00491295    xor         edx,edx
 00491297    call        0048FEA8
 0049129C    mov         eax,dword ptr [eax+4]
 0049129F    mov         edx,dword ptr [eax]
 004912A1    call        dword ptr [edx+1C]
>004912A4    jmp         004912BC
 004912A6    mov         ecx,490D3C;^gvar_0055C664
 004912AB    mov         dl,1
 004912AD    mov         eax,[00490AF4];EHelpSystemException
 004912B2    call        Exception.Create;EHelpSystemException.Create
 004912B7    call        @RaiseExcept
 004912BC    xor         eax,eax
 004912BE    pop         edx
 004912BF    pop         ecx
 004912C0    pop         ecx
 004912C1    mov         dword ptr fs:[eax],edx
 004912C4    push        4912D9
 004912C9    lea         eax,[ebp-18]
 004912CC    call        @LStrClr
 004912D1    ret
>004912D2    jmp         @HandleFinally
>004912D7    jmp         004912C9
 004912D9    pop         ebx
 004912DA    mov         esp,ebp
 004912DC    pop         ebp
 004912DD    ret
end;*}

//004912E0
{*function sub_004912E0(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004912E0    push        ebp
 004912E1    mov         ebp,esp
 004912E3    add         esp,0FFFFFFE4
 004912E6    push        ebx
 004912E7    xor         ebx,ebx
 004912E9    mov         dword ptr [ebp-1C],ebx
 004912EC    mov         dword ptr [ebp-18],ebx
 004912EF    mov         dword ptr [ebp-14],ebx
 004912F2    mov         dword ptr [ebp-0C],ecx
 004912F5    mov         dword ptr [ebp-8],edx
 004912F8    mov         dword ptr [ebp-4],eax
 004912FB    xor         eax,eax
 004912FD    push        ebp
 004912FE    push        4913EC
 00491303    push        dword ptr fs:[eax]
 00491306    mov         dword ptr fs:[eax],esp
 00491309    mov         byte ptr [ebp-0D],0
 0049130D    cmp         dword ptr [ebp-0C],0
>00491311    je          00491321
 00491313    mov         eax,dword ptr [ebp-4]
 00491316    add         eax,24
 00491319    mov         edx,dword ptr [ebp-0C]
 0049131C    call        @LStrAsg
 00491321    mov         eax,dword ptr [ebp-4]
 00491324    mov         eax,dword ptr [eax+18]
 00491327    cmp         dword ptr [eax+8],0
>0049132B    jle         004913C3
 00491331    mov         eax,dword ptr [ebp-4]
 00491334    mov         eax,dword ptr [eax+18]
 00491337    cmp         dword ptr [eax+8],1
>0049133B    jne         00491381
 0049133D    xor         edx,edx
 0049133F    mov         eax,dword ptr [ebp-4]
 00491342    mov         eax,dword ptr [eax+18]
 00491345    call        0048FEA8
 0049134A    mov         edx,dword ptr [eax+4]
 0049134D    lea         eax,[ebp-14]
 00491350    call        @IntfCopy
 00491355    mov         ax,word ptr [ebp+0C]
 00491359    push        eax
 0049135A    mov         eax,dword ptr [ebp+8]
 0049135D    push        eax
 0049135E    lea         eax,[ebp-18]
 00491361    mov         edx,dword ptr [ebp-14]
 00491364    mov         ecx,491400;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00491369    call        @IntfCast
 0049136E    mov         eax,dword ptr [ebp-18]
 00491371    mov         ecx,dword ptr [ebp-0C]
 00491374    mov         edx,dword ptr [ebp-8]
 00491377    mov         ebx,dword ptr [eax]
 00491379    call        dword ptr [ebx+40]
 0049137C    mov         byte ptr [ebp-0D],al
>0049137F    jmp         004913C3
 00491381    xor         edx,edx
 00491383    mov         eax,dword ptr [ebp-4]
 00491386    mov         eax,dword ptr [eax+18]
 00491389    call        0048FEA8
 0049138E    mov         edx,dword ptr [eax+4]
 00491391    lea         eax,[ebp-14]
 00491394    call        @IntfCopy
 00491399    mov         ax,word ptr [ebp+0C]
 0049139D    push        eax
 0049139E    mov         eax,dword ptr [ebp+8]
 004913A1    push        eax
 004913A2    lea         eax,[ebp-1C]
 004913A5    mov         edx,dword ptr [ebp-14]
 004913A8    mov         ecx,491400;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 004913AD    call        @IntfCast
 004913B2    mov         eax,dword ptr [ebp-1C]
 004913B5    mov         ecx,dword ptr [ebp-0C]
 004913B8    mov         edx,dword ptr [ebp-8]
 004913BB    mov         ebx,dword ptr [eax]
 004913BD    call        dword ptr [ebx+40]
 004913C0    mov         byte ptr [ebp-0D],al
 004913C3    xor         eax,eax
 004913C5    pop         edx
 004913C6    pop         ecx
 004913C7    pop         ecx
 004913C8    mov         dword ptr fs:[eax],edx
 004913CB    push        4913F3
 004913D0    lea         eax,[ebp-1C]
 004913D3    mov         edx,dword ptr ds:[490A7C];ISpecialWinHelpViewer
 004913D9    mov         ecx,2
 004913DE    call        @FinalizeArray
 004913E3    lea         eax,[ebp-14]
 004913E6    call        @IntfClear
 004913EB    ret
>004913EC    jmp         @HandleFinally
>004913F1    jmp         004913D0
 004913F3    mov         al,byte ptr [ebp-0D]
 004913F6    pop         ebx
 004913F7    mov         esp,ebp
 004913F9    pop         ebp
 004913FA    ret         8
end;*}

//00491410
{*procedure sub_00491410(?:?; ?:?; ?:?);
begin
 00491410    push        ebp
 00491411    mov         ebp,esp
 00491413    add         esp,0FFFFFFB4
 00491416    push        ebx
 00491417    xor         ebx,ebx
 00491419    mov         dword ptr [ebp-4C],ebx
 0049141C    mov         dword ptr [ebp-38],ebx
 0049141F    mov         dword ptr [ebp-0C],ecx
 00491422    mov         dword ptr [ebp-8],edx
 00491425    mov         dword ptr [ebp-4],eax
 00491428    xor         eax,eax
 0049142A    push        ebp
 0049142B    push        491664
 00491430    push        dword ptr fs:[eax]
 00491433    mov         dword ptr fs:[eax],esp
 00491436    xor         eax,eax
 00491438    mov         dword ptr [ebp-20],eax
 0049143B    xor         eax,eax
 0049143D    mov         dword ptr [ebp-1C],eax
 00491440    cmp         dword ptr [ebp-0C],0
>00491444    je          00491454
 00491446    mov         eax,dword ptr [ebp-4]
 00491449    add         eax,24
 0049144C    mov         edx,dword ptr [ebp-0C]
 0049144F    call        @LStrAsg
 00491454    mov         eax,dword ptr [ebp-4]
 00491457    mov         eax,dword ptr [eax+10]
 0049145A    cmp         dword ptr [eax+8],0
>0049145E    jle         00491646
 00491464    mov         eax,dword ptr [ebp-4]
 00491467    mov         eax,dword ptr [eax+10]
 0049146A    mov         eax,dword ptr [eax+8]
 0049146D    dec         eax
 0049146E    test        eax,eax
>00491470    jl          004914B0
 00491472    inc         eax
 00491473    mov         dword ptr [ebp-3C],eax
 00491476    mov         dword ptr [ebp-10],0
 0049147D    mov         eax,dword ptr [ebp-4]
 00491480    mov         eax,dword ptr [eax+10]
 00491483    mov         edx,dword ptr [ebp-10]
 00491486    call        0048FEA8
 0049148B    mov         eax,dword ptr [eax+4]
 0049148E    mov         edx,dword ptr [ebp-8]
 00491491    mov         ecx,dword ptr [eax]
 00491493    call        dword ptr [ecx+10]
 00491496    mov         dword ptr [ebp-18],eax
 00491499    cmp         dword ptr [ebp-18],0
>0049149D    jle         004914A8
 0049149F    mov         eax,dword ptr [ebp-10]
 004914A2    mov         dword ptr [ebp-20],eax
 004914A5    inc         dword ptr [ebp-1C]
 004914A8    inc         dword ptr [ebp-10]
 004914AB    dec         dword ptr [ebp-3C]
>004914AE    jne         0049147D
 004914B0    cmp         dword ptr [ebp-1C],0
>004914B4    jne         004914E1
 004914B6    mov         eax,dword ptr [ebp-8]
 004914B9    call        @LStrToPChar
 004914BE    mov         dword ptr [ebp-48],eax
 004914C1    mov         byte ptr [ebp-44],6
 004914C5    lea         eax,[ebp-48]
 004914C8    push        eax
 004914C9    push        0
 004914CB    mov         ecx,490D44;^gvar_0055C664
 004914D0    mov         dl,1
 004914D2    mov         eax,[00490AF4];EHelpSystemException
 004914D7    call        Exception.CreateResFmt;EHelpSystemException.Create
 004914DC    call        @RaiseExcept
 004914E1    cmp         dword ptr [ebp-1C],1
>004914E5    jne         00491500
 004914E7    mov         eax,dword ptr [ebp-4]
 004914EA    mov         eax,dword ptr [eax+10]
 004914ED    mov         edx,dword ptr [ebp-20]
 004914F0    call        0048FEA8
 004914F5    mov         eax,dword ptr [eax+4]
 004914F8    mov         edx,dword ptr [ebp-8]
 004914FB    mov         ecx,dword ptr [eax]
 004914FD    call        dword ptr [ecx+20]
 00491500    cmp         dword ptr [ebp-1C],1
>00491504    jle         00491646
 0049150A    mov         dl,1
 0049150C    mov         eax,[00476078];TStringList
 00491511    call        TObject.Create;TStringList.Create
 00491516    mov         dword ptr [ebp-24],eax
 00491519    mov         eax,dword ptr [ebp-4]
 0049151C    mov         eax,dword ptr [eax+10]
 0049151F    mov         eax,dword ptr [eax+8]
 00491522    dec         eax
 00491523    test        eax,eax
>00491525    jl          004915BF
 0049152B    inc         eax
 0049152C    mov         dword ptr [ebp-3C],eax
 0049152F    mov         dword ptr [ebp-10],0
 00491536    mov         eax,dword ptr [ebp-4]
 00491539    mov         eax,dword ptr [eax+10]
 0049153C    mov         edx,dword ptr [ebp-10]
 0049153F    call        0048FEA8
 00491544    mov         dword ptr [ebp-2C],eax
 00491547    mov         eax,dword ptr [ebp-2C]
 0049154A    mov         eax,dword ptr [eax+4]
 0049154D    mov         edx,dword ptr [ebp-8]
 00491550    mov         ecx,dword ptr [eax]
 00491552    call        dword ptr [ecx+10]
 00491555    mov         dword ptr [ebp-18],eax
 00491558    cmp         dword ptr [ebp-18],0
>0049155C    jle         004915B3
 0049155E    mov         eax,dword ptr [ebp-2C]
 00491561    mov         eax,dword ptr [eax+4]
 00491564    mov         edx,dword ptr [ebp-8]
 00491567    mov         ecx,dword ptr [eax]
 00491569    call        dword ptr [ecx+14]
 0049156C    mov         dword ptr [ebp-28],eax
 0049156F    mov         eax,dword ptr [ebp-28]
 00491572    mov         edx,dword ptr [eax]
 00491574    call        dword ptr [edx+14]
 00491577    dec         eax
 00491578    test        eax,eax
>0049157A    jl          004915AB
 0049157C    inc         eax
 0049157D    mov         dword ptr [ebp-40],eax
 00491580    mov         dword ptr [ebp-14],0
 00491587    lea         ecx,[ebp-4C]
 0049158A    mov         edx,dword ptr [ebp-14]
 0049158D    mov         eax,dword ptr [ebp-28]
 00491590    mov         ebx,dword ptr [eax]
 00491592    call        dword ptr [ebx+0C]
 00491595    mov         edx,dword ptr [ebp-4C]
 00491598    mov         ecx,dword ptr [ebp-2C]
 0049159B    mov         eax,dword ptr [ebp-24]
 0049159E    mov         ebx,dword ptr [eax]
 004915A0    call        dword ptr [ebx+3C];TStringList.sub_0047B3CC
 004915A3    inc         dword ptr [ebp-14]
 004915A6    dec         dword ptr [ebp-40]
>004915A9    jne         00491587
 004915AB    mov         eax,dword ptr [ebp-28]
 004915AE    call        TObject.Free
 004915B3    inc         dword ptr [ebp-10]
 004915B6    dec         dword ptr [ebp-3C]
>004915B9    jne         00491536
 004915BF    mov         eax,dword ptr [ebp-4]
 004915C2    cmp         dword ptr [eax+0C],0
>004915C6    je          00491616
 004915C8    mov         eax,dword ptr [ebp-24]
 004915CB    mov         edx,dword ptr [eax]
 004915CD    call        dword ptr [edx+90];TStringList.sub_0047BC20
 004915D3    mov         eax,dword ptr [ebp-4]
 004915D6    mov         eax,dword ptr [eax+0C]
 004915D9    mov         edx,dword ptr [ebp-24]
 004915DC    mov         ecx,dword ptr [eax]
 004915DE    call        dword ptr [ecx+0C]
 004915E1    mov         dword ptr [ebp-30],eax
 004915E4    cmp         dword ptr [ebp-30],0
>004915E8    jl          0049163E
 004915EA    mov         edx,dword ptr [ebp-30]
 004915ED    mov         eax,dword ptr [ebp-24]
 004915F0    mov         ecx,dword ptr [eax]
 004915F2    call        dword ptr [ecx+18];TStringList.sub_0047B794
 004915F5    mov         dword ptr [ebp-34],eax
 004915F8    lea         ecx,[ebp-38]
 004915FB    mov         edx,dword ptr [ebp-30]
 004915FE    mov         eax,dword ptr [ebp-24]
 00491601    mov         ebx,dword ptr [eax]
 00491603    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 00491606    mov         eax,dword ptr [ebp-34]
 00491609    mov         eax,dword ptr [eax+4]
 0049160C    mov         edx,dword ptr [ebp-38]
 0049160F    mov         ecx,dword ptr [eax]
 00491611    call        dword ptr [ecx+20]
>00491614    jmp         0049163E
 00491616    xor         edx,edx
 00491618    mov         eax,dword ptr [ebp-24]
 0049161B    mov         ecx,dword ptr [eax]
 0049161D    call        dword ptr [ecx+18];TStringList.sub_0047B794
 00491620    mov         dword ptr [ebp-34],eax
 00491623    lea         ecx,[ebp-38]
 00491626    xor         edx,edx
 00491628    mov         eax,dword ptr [ebp-24]
 0049162B    mov         ebx,dword ptr [eax]
 0049162D    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 00491630    mov         eax,dword ptr [ebp-34]
 00491633    mov         eax,dword ptr [eax+4]
 00491636    mov         edx,dword ptr [ebp-38]
 00491639    mov         ecx,dword ptr [eax]
 0049163B    call        dword ptr [ecx+20]
 0049163E    mov         eax,dword ptr [ebp-24]
 00491641    call        TObject.Free
 00491646    xor         eax,eax
 00491648    pop         edx
 00491649    pop         ecx
 0049164A    pop         ecx
 0049164B    mov         dword ptr fs:[eax],edx
 0049164E    push        49166B
 00491653    lea         eax,[ebp-4C]
 00491656    call        @LStrClr
 0049165B    lea         eax,[ebp-38]
 0049165E    call        @LStrClr
 00491663    ret
>00491664    jmp         @HandleFinally
>00491669    jmp         00491653
 0049166B    pop         ebx
 0049166C    mov         esp,ebp
 0049166E    pop         ebp
 0049166F    ret
end;*}

//00491670
{*procedure sub_00491670(?:?; ?:?; ?:?);
begin
 00491670    push        ebp
 00491671    mov         ebp,esp
 00491673    add         esp,0FFFFFFE0
 00491676    push        ebx
 00491677    xor         ebx,ebx
 00491679    mov         dword ptr [ebp-20],ebx
 0049167C    mov         dword ptr [ebp-1C],ebx
 0049167F    mov         dword ptr [ebp-14],ebx
 00491682    mov         dword ptr [ebp-0C],ecx
 00491685    mov         dword ptr [ebp-8],edx
 00491688    mov         dword ptr [ebp-4],eax
 0049168B    xor         eax,eax
 0049168D    push        ebp
 0049168E    push        491776
 00491693    push        dword ptr fs:[eax]
 00491696    mov         dword ptr fs:[eax],esp
 00491699    cmp         dword ptr [ebp-0C],0
>0049169D    je          004916AD
 0049169F    mov         eax,dword ptr [ebp-4]
 004916A2    add         eax,24
 004916A5    mov         edx,dword ptr [ebp-0C]
 004916A8    call        @LStrAsg
 004916AD    mov         eax,dword ptr [ebp-4]
 004916B0    mov         eax,dword ptr [eax+14]
 004916B3    cmp         dword ptr [eax+8],0
>004916B7    jne         004916D1
 004916B9    mov         ecx,490D4C;^gvar_0055C664
 004916BE    mov         dl,1
 004916C0    mov         eax,[00490AF4];EHelpSystemException
 004916C5    call        Exception.Create;EHelpSystemException.Create
 004916CA    call        @RaiseExcept
>004916CF    jmp         0049174D
 004916D1    mov         eax,dword ptr [ebp-4]
 004916D4    mov         eax,dword ptr [eax+14]
 004916D7    mov         eax,dword ptr [eax+8]
 004916DA    dec         eax
 004916DB    test        eax,eax
>004916DD    jl          0049174D
 004916DF    inc         eax
 004916E0    mov         dword ptr [ebp-18],eax
 004916E3    mov         dword ptr [ebp-10],0
 004916EA    mov         edx,dword ptr [ebp-10]
 004916ED    mov         eax,dword ptr [ebp-4]
 004916F0    mov         eax,dword ptr [eax+14]
 004916F3    call        0048FEA8
 004916F8    mov         edx,dword ptr [eax+4]
 004916FB    lea         eax,[ebp-14]
 004916FE    call        @IntfCopy
 00491703    lea         eax,[ebp-1C]
 00491706    mov         edx,dword ptr [ebp-14]
 00491709    mov         ecx,491784;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 0049170E    call        @IntfCast
 00491713    mov         eax,dword ptr [ebp-1C]
 00491716    mov         ecx,dword ptr [ebp-0C]
 00491719    mov         edx,dword ptr [ebp-8]
 0049171C    mov         ebx,dword ptr [eax]
 0049171E    call        dword ptr [ebx+38]
 00491721    test        al,al
>00491723    je          00491745
 00491725    lea         eax,[ebp-20]
 00491728    mov         edx,dword ptr [ebp-14]
 0049172B    mov         ecx,491784;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00491730    call        @IntfCast
 00491735    mov         eax,dword ptr [ebp-20]
 00491738    mov         ecx,dword ptr [ebp-0C]
 0049173B    mov         edx,dword ptr [ebp-8]
 0049173E    mov         ebx,dword ptr [eax]
 00491740    call        dword ptr [ebx+3C]
>00491743    jmp         0049174D
 00491745    inc         dword ptr [ebp-10]
 00491748    dec         dword ptr [ebp-18]
>0049174B    jne         004916EA
 0049174D    xor         eax,eax
 0049174F    pop         edx
 00491750    pop         ecx
 00491751    pop         ecx
 00491752    mov         dword ptr fs:[eax],edx
 00491755    push        49177D
 0049175A    lea         eax,[ebp-20]
 0049175D    mov         edx,dword ptr ds:[490A40];IExtendedHelpViewer
 00491763    mov         ecx,2
 00491768    call        @FinalizeArray
 0049176D    lea         eax,[ebp-14]
 00491770    call        @IntfClear
 00491775    ret
>00491776    jmp         @HandleFinally
>0049177B    jmp         0049175A
 0049177D    pop         ebx
 0049177E    mov         esp,ebp
 00491780    pop         ebp
 00491781    ret
end;*}

//00491794
{*procedure sub_00491794(?:?);
begin
 00491794    push        ebp
 00491795    mov         ebp,esp
 00491797    push        ecx
 00491798    mov         dword ptr [ebp-4],eax
 0049179B    mov         eax,dword ptr [ebp-4]
 0049179E    call        00491118
 004917A3    pop         ecx
 004917A4    pop         ebp
 004917A5    ret
end;*}

//004917A8
{*procedure sub_004917A8(?:?; ?:?; ?:?);
begin
 004917A8    push        ebp
 004917A9    mov         ebp,esp
 004917AB    add         esp,0FFFFFFE0
 004917AE    push        ebx
 004917AF    xor         ebx,ebx
 004917B1    mov         dword ptr [ebp-20],ebx
 004917B4    mov         dword ptr [ebp-1C],ebx
 004917B7    mov         dword ptr [ebp-14],ebx
 004917BA    mov         dword ptr [ebp-0C],ecx
 004917BD    mov         dword ptr [ebp-8],edx
 004917C0    mov         dword ptr [ebp-4],eax
 004917C3    xor         eax,eax
 004917C5    push        ebp
 004917C6    push        4918A8
 004917CB    push        dword ptr fs:[eax]
 004917CE    mov         dword ptr fs:[eax],esp
 004917D1    cmp         dword ptr [ebp-0C],0
>004917D5    je          004917E5
 004917D7    mov         eax,dword ptr [ebp-4]
 004917DA    add         eax,24
 004917DD    mov         edx,dword ptr [ebp-0C]
 004917E0    call        @LStrAsg
 004917E5    mov         eax,dword ptr [ebp-4]
 004917E8    mov         eax,dword ptr [eax+14]
 004917EB    cmp         dword ptr [eax+8],0
>004917EF    jne         00491809
 004917F1    mov         ecx,490D54;^gvar_0055C664
 004917F6    mov         dl,1
 004917F8    mov         eax,[00490AF4];EHelpSystemException
 004917FD    call        Exception.Create;EHelpSystemException.Create
 00491802    call        @RaiseExcept
>00491807    jmp         0049187F
 00491809    mov         eax,dword ptr [ebp-4]
 0049180C    mov         eax,dword ptr [eax+14]
 0049180F    mov         eax,dword ptr [eax+8]
 00491812    dec         eax
 00491813    test        eax,eax
>00491815    jl          0049187F
 00491817    inc         eax
 00491818    mov         dword ptr [ebp-18],eax
 0049181B    mov         dword ptr [ebp-10],0
 00491822    mov         edx,dword ptr [ebp-10]
 00491825    mov         eax,dword ptr [ebp-4]
 00491828    mov         eax,dword ptr [eax+14]
 0049182B    call        0048FEA8
 00491830    mov         edx,dword ptr [eax+4]
 00491833    lea         eax,[ebp-14]
 00491836    call        @IntfCopy
 0049183B    lea         eax,[ebp-1C]
 0049183E    mov         edx,dword ptr [ebp-14]
 00491841    mov         ecx,4918B4;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00491846    call        @IntfCast
 0049184B    mov         eax,dword ptr [ebp-1C]
 0049184E    mov         edx,dword ptr [ebp-8]
 00491851    mov         ecx,dword ptr [eax]
 00491853    call        dword ptr [ecx+30]
 00491856    test        al,al
>00491858    je          00491877
 0049185A    lea         eax,[ebp-20]
 0049185D    mov         edx,dword ptr [ebp-14]
 00491860    mov         ecx,4918B4;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00491865    call        @IntfCast
 0049186A    mov         eax,dword ptr [ebp-20]
 0049186D    mov         edx,dword ptr [ebp-8]
 00491870    mov         ecx,dword ptr [eax]
 00491872    call        dword ptr [ecx+34]
>00491875    jmp         0049187F
 00491877    inc         dword ptr [ebp-10]
 0049187A    dec         dword ptr [ebp-18]
>0049187D    jne         00491822
 0049187F    xor         eax,eax
 00491881    pop         edx
 00491882    pop         ecx
 00491883    pop         ecx
 00491884    mov         dword ptr fs:[eax],edx
 00491887    push        4918AF
 0049188C    lea         eax,[ebp-20]
 0049188F    mov         edx,dword ptr ds:[490A40];IExtendedHelpViewer
 00491895    mov         ecx,2
 0049189A    call        @FinalizeArray
 0049189F    lea         eax,[ebp-14]
 004918A2    call        @IntfClear
 004918A7    ret
>004918A8    jmp         @HandleFinally
>004918AD    jmp         0049188C
 004918AF    pop         ebx
 004918B0    mov         esp,ebp
 004918B2    pop         ebp
 004918B3    ret
end;*}

//004918C4
{*procedure sub_004918C4(?:?; ?:?);
begin
 004918C4    push        ebp
 004918C5    mov         ebp,esp
 004918C7    add         esp,0FFFFFFF8
 004918CA    mov         dword ptr [ebp-8],edx
 004918CD    mov         dword ptr [ebp-4],eax
 004918D0    mov         eax,dword ptr [ebp-8]
 004918D3    call        @IntfAddRef
 004918D8    xor         eax,eax
 004918DA    push        ebp
 004918DB    push        49191E
 004918E0    push        dword ptr fs:[eax]
 004918E3    mov         dword ptr fs:[eax],esp
 004918E6    mov         eax,dword ptr [ebp-4]
 004918E9    cmp         dword ptr [eax+0C],0
>004918ED    je          004918FA
 004918EF    mov         eax,dword ptr [ebp-4]
 004918F2    add         eax,0C
 004918F5    call        @IntfClear
 004918FA    mov         eax,dword ptr [ebp-4]
 004918FD    add         eax,0C
 00491900    mov         edx,dword ptr [ebp-8]
 00491903    call        @IntfCopy
 00491908    xor         eax,eax
 0049190A    pop         edx
 0049190B    pop         ecx
 0049190C    pop         ecx
 0049190D    mov         dword ptr fs:[eax],edx
 00491910    push        491925
 00491915    lea         eax,[ebp-8]
 00491918    call        @IntfClear
 0049191D    ret
>0049191E    jmp         @HandleFinally
>00491923    jmp         00491915
 00491925    pop         ecx
 00491926    pop         ecx
 00491927    pop         ebp
 00491928    ret
end;*}

//0049192C
{*function sub_0049192C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0049192C    push        ebp
 0049192D    mov         ebp,esp
 0049192F    add         esp,0FFFFFFF0
 00491932    mov         dword ptr [ebp-0C],ecx
 00491935    mov         dword ptr [ebp-8],edx
 00491938    mov         dword ptr [ebp-4],eax
 0049193B    mov         eax,dword ptr [ebp-0C]
 0049193E    call        @LStrAddRef
 00491943    xor         eax,eax
 00491945    push        ebp
 00491946    push        4919CF
 0049194B    push        dword ptr fs:[eax]
 0049194E    mov         dword ptr fs:[eax],esp
 00491951    cmp         dword ptr [ebp-0C],0
>00491955    je          00491965
 00491957    mov         eax,dword ptr [ebp-4]
 0049195A    add         eax,24
 0049195D    mov         edx,dword ptr [ebp-0C]
 00491960    call        @LStrAsg
 00491965    mov         ax,word ptr [ebp+0C]
 00491969    dec         ax
>0049196C    je          0049197A
 0049196E    dec         ax
>00491971    je          0049198A
 00491973    dec         ax
>00491976    je          00491994
>00491978    jmp         0049199E
 0049197A    mov         ecx,dword ptr [ebp-0C]
 0049197D    mov         edx,dword ptr [ebp+8]
 00491980    mov         eax,dword ptr [ebp-4]
 00491983    call        00491670
>00491988    jmp         004919B5
 0049198A    mov         eax,dword ptr [ebp-4]
 0049198D    call        004910D4
>00491992    jmp         004919B5
 00491994    mov         eax,dword ptr [ebp-4]
 00491997    call        00491118
>0049199C    jmp         004919B5
 0049199E    mov         ax,word ptr [ebp+0C]
 004919A2    push        eax
 004919A3    mov         eax,dword ptr [ebp+8]
 004919A6    push        eax
 004919A7    mov         ecx,dword ptr [ebp-0C]
 004919AA    mov         edx,dword ptr [ebp-8]
 004919AD    mov         eax,dword ptr [ebp-4]
 004919B0    call        004912E0
 004919B5    mov         byte ptr [ebp-0D],1
 004919B9    xor         eax,eax
 004919BB    pop         edx
 004919BC    pop         ecx
 004919BD    pop         ecx
 004919BE    mov         dword ptr fs:[eax],edx
 004919C1    push        4919D6
 004919C6    lea         eax,[ebp-0C]
 004919C9    call        @LStrClr
 004919CE    ret
>004919CF    jmp         @HandleFinally
>004919D4    jmp         004919C6
 004919D6    mov         al,byte ptr [ebp-0D]
 004919D9    mov         esp,ebp
 004919DB    pop         ebp
 004919DC    ret         8
end;*}

//004919E0
{*function sub_004919E0(?:?):?;
begin
 004919E0    push        ebp
 004919E1    mov         ebp,esp
 004919E3    add         esp,0FFFFFFF8
 004919E6    mov         dword ptr [ebp-4],eax
 004919E9    mov         eax,dword ptr [ebp-4]
 004919EC    mov         eax,dword ptr [eax+20]
 004919EF    mov         dword ptr [ebp-8],eax
 004919F2    mov         eax,dword ptr [ebp-8]
 004919F5    pop         ecx
 004919F6    pop         ecx
 004919F7    pop         ebp
 004919F8    ret
end;*}

//004919FC
{*procedure sub_004919FC(?:?; ?:?);
begin
 004919FC    push        ebp
 004919FD    mov         ebp,esp
 004919FF    add         esp,0FFFFFFF8
 00491A02    mov         dword ptr [ebp-8],edx
 00491A05    mov         dword ptr [ebp-4],eax
 00491A08    mov         eax,dword ptr [ebp-8]
 00491A0B    mov         edx,dword ptr [ebp-4]
 00491A0E    mov         edx,dword ptr [edx+24]
 00491A11    call        @LStrAsg
 00491A16    pop         ecx
 00491A17    pop         ecx
 00491A18    pop         ebp
 00491A19    ret
end;*}

//00491A1C
{*procedure sub_00491A1C(?:?; ?:?);
begin
 00491A1C    push        ebp
 00491A1D    mov         ebp,esp
 00491A1F    add         esp,0FFFFFFF4
 00491A22    mov         dword ptr [ebp-8],edx
 00491A25    mov         dword ptr [ebp-4],eax
 00491A28    mov         eax,dword ptr [ebp-4]
 00491A2B    mov         eax,dword ptr [eax+10]
 00491A2E    mov         eax,dword ptr [eax+8]
 00491A31    dec         eax
 00491A32    cmp         eax,0
>00491A35    jl          00491A67
 00491A37    mov         dword ptr [ebp-0C],eax
 00491A3A    mov         edx,dword ptr [ebp-0C]
 00491A3D    mov         eax,dword ptr [ebp-4]
 00491A40    mov         eax,dword ptr [eax+10]
 00491A43    call        0048FEA8
 00491A48    mov         eax,dword ptr [eax+8]
 00491A4B    cmp         eax,dword ptr [ebp-8]
>00491A4E    jne         00491A5E
 00491A50    mov         edx,dword ptr [ebp-0C]
 00491A53    mov         eax,dword ptr [ebp-4]
 00491A56    mov         eax,dword ptr [eax+10]
 00491A59    call        00478668
 00491A5E    dec         dword ptr [ebp-0C]
 00491A61    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00491A65    jne         00491A3A
 00491A67    mov         eax,dword ptr [ebp-4]
 00491A6A    mov         eax,dword ptr [eax+14]
 00491A6D    mov         eax,dword ptr [eax+8]
 00491A70    dec         eax
 00491A71    cmp         eax,0
>00491A74    jl          00491AA6
 00491A76    mov         dword ptr [ebp-0C],eax
 00491A79    mov         edx,dword ptr [ebp-0C]
 00491A7C    mov         eax,dword ptr [ebp-4]
 00491A7F    mov         eax,dword ptr [eax+14]
 00491A82    call        0048FEA8
 00491A87    mov         eax,dword ptr [eax+8]
 00491A8A    cmp         eax,dword ptr [ebp-8]
>00491A8D    jne         00491A9D
 00491A8F    mov         edx,dword ptr [ebp-0C]
 00491A92    mov         eax,dword ptr [ebp-4]
 00491A95    mov         eax,dword ptr [eax+14]
 00491A98    call        00478668
 00491A9D    dec         dword ptr [ebp-0C]
 00491AA0    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00491AA4    jne         00491A79
 00491AA6    mov         eax,dword ptr [ebp-4]
 00491AA9    mov         eax,dword ptr [eax+18]
 00491AAC    mov         eax,dword ptr [eax+8]
 00491AAF    dec         eax
 00491AB0    cmp         eax,0
>00491AB3    jl          00491AE5
 00491AB5    mov         dword ptr [ebp-0C],eax
 00491AB8    mov         edx,dword ptr [ebp-0C]
 00491ABB    mov         eax,dword ptr [ebp-4]
 00491ABE    mov         eax,dword ptr [eax+18]
 00491AC1    call        0048FEA8
 00491AC6    mov         eax,dword ptr [eax+8]
 00491AC9    cmp         eax,dword ptr [ebp-8]
>00491ACC    jne         00491ADC
 00491ACE    mov         edx,dword ptr [ebp-0C]
 00491AD1    mov         eax,dword ptr [ebp-4]
 00491AD4    mov         eax,dword ptr [eax+18]
 00491AD7    call        00478668
 00491ADC    dec         dword ptr [ebp-0C]
 00491ADF    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00491AE3    jne         00491AB8
 00491AE5    mov         esp,ebp
 00491AE7    pop         ebp
 00491AE8    ret
end;*}

Initialization
//00491B9C
{*
 00491B9C    push        ebp
 00491B9D    mov         ebp,esp
 00491B9F    sub         dword ptr ds:[55DBB0],1
 00491BA6    pop         ebp
 00491BA7    ret
*}
Finalization
//00491B5C
{*
 00491B5C    push        ebp
 00491B5D    mov         ebp,esp
 00491B5F    xor         eax,eax
 00491B61    push        ebp
 00491B62    push        491B93
 00491B67    push        dword ptr fs:[eax]
 00491B6A    mov         dword ptr fs:[eax],esp
 00491B6D    inc         dword ptr ds:[55DBB0]
>00491B73    jne         00491B85
 00491B75    cmp         dword ptr ds:[55DBB4],0;gvar_0055DBB4:THelpManager
>00491B7C    je          00491B85
 00491B7E    xor         eax,eax
 00491B80    mov         [0055DBB4],eax;gvar_0055DBB4:THelpManager
 00491B85    xor         eax,eax
 00491B87    pop         edx
 00491B88    pop         ecx
 00491B89    pop         ecx
 00491B8A    mov         dword ptr fs:[eax],edx
 00491B8D    push        491B9A
 00491B92    ret
>00491B93    jmp         @HandleFinally
>00491B98    jmp         00491B92
 00491B9A    pop         ebp
 00491B9B    ret
*}
end.