//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit33;

interface

uses
  SysUtils, Classes;

    procedure VariantInit; stdcall;//0046D20C
    function VariantClear:HRESULT; stdcall;//0046D214
    function VariantCopy(const Source:TVarData):HRESULT; stdcall;//0046D21C
    function VariantChangeType(const Source:TVarData; wFlags:Word; VarType:Word):HRESULT; stdcall;//0046D224
    //function sub_0046D22C(?:?; ?:?; ?:?; ?:?; ?:?):?;//0046D22C
    //function sub_0046D264:?;//0046D264
    //function sub_0046D278:?;//0046D278
    //function sub_0046D28C:?;//0046D28C
    function SafeArrayCreate(DimCount:Integer; const Bounds:TVarArrayBoundArray):PVarArray; stdcall;//0046D6E0
    function SafeArrayGetLBound(nDim:Integer; var lLbound:Longint):HRESULT; stdcall;//0046D6E8
    function SafeArrayGetUBound(Dim:Integer; var UBound:Integer):HRESULT; stdcall;//0046D6F0
    function SafeArrayPtrOfIndex(var rgIndices:void ; var pvData:Pointer):HRESULT; stdcall;//0046D6F8
    //function sub_0046D700(?:?; ?:?; ?:?):?;//0046D700
    procedure sub_0046D744;//0046D744

implementation

//0046D20C
procedure oleaut32.VariantInit; stdcall;
begin
{*
 0046D20C    jmp         dword ptr ds:[55FB5C]
*}
end;

//0046D214
function oleaut32.VariantClear:HRESULT; stdcall;
begin
{*
 0046D214    jmp         dword ptr ds:[55FB58]
*}
end;

//0046D21C
function oleaut32.VariantCopy(const Source:TVarData):HRESULT; stdcall;
begin
{*
 0046D21C    jmp         dword ptr ds:[55FB54]
*}
end;

//0046D224
function oleaut32.VariantChangeType(const Source:TVarData; wFlags:Word; VarType:Word):HRESULT; stdcall;
begin
{*
 0046D224    jmp         dword ptr ds:[55FB50]
*}
end;

//0046D22C
{*function sub_0046D22C(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0046D22C    push        ebp
 0046D22D    mov         ebp,esp
 0046D22F    push        ecx
 0046D230    cmp         dword ptr [ebp+10],400
>0046D237    je          0046D242
 0046D239    mov         dword ptr [ebp-4],80004001
>0046D240    jmp         0046D25C
 0046D242    mov         ax,word ptr [ebp+18]
 0046D246    push        eax
 0046D247    mov         ax,word ptr [ebp+14]
 0046D24B    push        eax
 0046D24C    mov         eax,dword ptr [ebp+0C]
 0046D24F    push        eax
 0046D250    mov         eax,dword ptr [ebp+8]
 0046D253    push        eax
 0046D254    call        oleaut32.VariantChangeType
 0046D259    mov         dword ptr [ebp-4],eax
 0046D25C    mov         eax,dword ptr [ebp-4]
 0046D25F    pop         ecx
 0046D260    pop         ebp
 0046D261    ret         14
end;*}

//0046D264
{*function sub_0046D264:?;
begin
 0046D264    push        ebp
 0046D265    mov         ebp,esp
 0046D267    push        ecx
 0046D268    mov         dword ptr [ebp-4],80004001
 0046D26F    mov         eax,dword ptr [ebp-4]
 0046D272    pop         ecx
 0046D273    pop         ebp
 0046D274    ret         8
end;*}

//0046D278
{*function sub_0046D278:?;
begin
 0046D278    push        ebp
 0046D279    mov         ebp,esp
 0046D27B    push        ecx
 0046D27C    mov         dword ptr [ebp-4],80004001
 0046D283    mov         eax,dword ptr [ebp-4]
 0046D286    pop         ecx
 0046D287    pop         ebp
 0046D288    ret         0C
end;*}

//0046D28C
{*function sub_0046D28C:?;
begin
 0046D28C    push        ebp
 0046D28D    mov         ebp,esp
 0046D28F    push        ecx
 0046D290    mov         dword ptr [ebp-4],80004001
 0046D297    mov         eax,dword ptr [ebp-4]
 0046D29A    pop         ecx
 0046D29B    pop         ebp
 0046D29C    ret         10
end;*}

//0046D6E0
function oleaut32.SafeArrayCreate(DimCount:Integer; const Bounds:TVarArrayBoundArray):PVarArray; stdcall;
begin
{*
 0046D6E0    jmp         dword ptr ds:[55FB4C]
*}
end;

//0046D6E8
function oleaut32.SafeArrayGetLBound(nDim:Integer; var lLbound:Longint):HRESULT; stdcall;
begin
{*
 0046D6E8    jmp         dword ptr ds:[55FB48]
*}
end;

//0046D6F0
function oleaut32.SafeArrayGetUBound(Dim:Integer; var UBound:Integer):HRESULT; stdcall;
begin
{*
 0046D6F0    jmp         dword ptr ds:[55FB44]
*}
end;

//0046D6F8
function oleaut32.SafeArrayPtrOfIndex(var rgIndices:void ; var pvData:Pointer):HRESULT; stdcall;
begin
{*
 0046D6F8    jmp         dword ptr ds:[55FB40]
*}
end;

//0046D700
{*function sub_0046D700(?:?; ?:?; ?:?):?;
begin
 0046D700    push        ebp
 0046D701    mov         ebp,esp
 0046D703    add         esp,0FFFFFFF4
 0046D706    mov         dword ptr [ebp-8],edx
 0046D709    mov         dword ptr [ebp-4],eax
 0046D70C    mov         eax,dword ptr [ebp-8]
 0046D70F    mov         dword ptr [ebp-0C],eax
 0046D712    mov         eax,dword ptr [ebp+8]
 0046D715    cmp         dword ptr [eax-4],0
>0046D719    je          0046D73A
 0046D71B    mov         eax,dword ptr [ebp-4]
 0046D71E    push        eax
 0046D71F    mov         eax,dword ptr [ebp+8]
 0046D722    mov         eax,dword ptr [eax-4]
 0046D725    push        eax
 0046D726    call        kernel32.GetProcAddress
 0046D72B    mov         dword ptr [ebp-0C],eax
 0046D72E    cmp         dword ptr [ebp-0C],0
>0046D732    jne         0046D73A
 0046D734    mov         eax,dword ptr [ebp-8]
 0046D737    mov         dword ptr [ebp-0C],eax
 0046D73A    mov         eax,dword ptr [ebp-0C]
 0046D73D    mov         esp,ebp
 0046D73F    pop         ebp
 0046D740    ret
end;*}

//0046D744
procedure sub_0046D744;
begin
{*
 0046D744    push        ebp
 0046D745    mov         ebp,esp
 0046D747    push        ecx
 0046D748    push        46D93C;'oleaut32.dll'
 0046D74D    call        kernel32.GetModuleHandleA
 0046D752    mov         dword ptr [ebp-4],eax
 0046D755    push        ebp
 0046D756    mov         edx,46D22C;sub_0046D22C
 0046D75B    mov         eax,46D94C
 0046D760    call        0046D700
 0046D765    pop         ecx
 0046D766    mov         [0055DA24],eax;gvar_0055DA24
 0046D76B    push        ebp
 0046D76C    mov         edx,46D264;sub_0046D264
 0046D771    mov         eax,46D960
 0046D776    call        0046D700
 0046D77B    pop         ecx
 0046D77C    mov         [0055DA28],eax;gvar_0055DA28
 0046D781    push        ebp
 0046D782    mov         edx,46D264;sub_0046D264
 0046D787    mov         eax,46D968
 0046D78C    call        0046D700
 0046D791    pop         ecx
 0046D792    mov         [0055DA2C],eax;gvar_0055DA2C
 0046D797    push        ebp
 0046D798    mov         edx,46D278;sub_0046D278
 0046D79D    mov         eax,46D970
 0046D7A2    call        0046D700
 0046D7A7    pop         ecx
 0046D7A8    mov         [0055DA30],eax;gvar_0055DA30
 0046D7AD    push        ebp
 0046D7AE    mov         edx,46D278;sub_0046D278
 0046D7B3    mov         eax,46D978
 0046D7B8    call        0046D700
 0046D7BD    pop         ecx
 0046D7BE    mov         [0055DA34],eax;gvar_0055DA34
 0046D7C3    push        ebp
 0046D7C4    mov         edx,46D278;sub_0046D278
 0046D7C9    mov         eax,46D980
 0046D7CE    call        0046D700
 0046D7D3    pop         ecx
 0046D7D4    mov         [0055DA38],eax;gvar_0055DA38
 0046D7D9    push        ebp
 0046D7DA    mov         edx,46D278;sub_0046D278
 0046D7DF    mov         eax,46D988
 0046D7E4    call        0046D700
 0046D7E9    pop         ecx
 0046D7EA    mov         [0055DA3C],eax;gvar_0055DA3C
 0046D7EF    push        ebp
 0046D7F0    mov         edx,46D278;sub_0046D278
 0046D7F5    mov         eax,46D990
 0046D7FA    call        0046D700
 0046D7FF    pop         ecx
 0046D800    mov         [0055DA40],eax;gvar_0055DA40
 0046D805    push        ebp
 0046D806    mov         edx,46D278;sub_0046D278
 0046D80B    mov         eax,46D998
 0046D810    call        0046D700
 0046D815    pop         ecx
 0046D816    mov         [0055DA44],eax;gvar_0055DA44
 0046D81B    push        ebp
 0046D81C    mov         edx,46D278;sub_0046D278
 0046D821    mov         eax,46D9A0
 0046D826    call        0046D700
 0046D82B    pop         ecx
 0046D82C    mov         [0055DA48],eax;gvar_0055DA48
 0046D831    push        ebp
 0046D832    mov         edx,46D278;sub_0046D278
 0046D837    mov         eax,46D9A8
 0046D83C    call        0046D700
 0046D841    pop         ecx
 0046D842    mov         [0055DA4C],eax;gvar_0055DA4C
 0046D847    push        ebp
 0046D848    mov         edx,46D278;sub_0046D278
 0046D84D    mov         eax,46D9B0
 0046D852    call        0046D700
 0046D857    pop         ecx
 0046D858    mov         [0055DA50],eax;gvar_0055DA50
 0046D85D    push        ebp
 0046D85E    mov         edx,46D28C;sub_0046D28C
 0046D863    mov         eax,46D9B8
 0046D868    call        0046D700
 0046D86D    pop         ecx
 0046D86E    mov         [0055DA54],eax;gvar_0055DA54
 0046D873    push        ebp
 0046D874    mov         edx,46D2A0
 0046D879    mov         eax,46D9C0
 0046D87E    call        0046D700
 0046D883    pop         ecx
 0046D884    mov         [0055DA58],eax;gvar_0055DA58
 0046D889    push        ebp
 0046D88A    mov         edx,46D314
 0046D88F    mov         eax,46D9D0
 0046D894    call        0046D700
 0046D899    pop         ecx
 0046D89A    mov         [0055DA5C],eax;gvar_0055DA5C
 0046D89F    push        ebp
 0046D8A0    mov         edx,46D388
 0046D8A5    mov         eax,46D9E0
 0046D8AA    call        0046D700
 0046D8AF    pop         ecx
 0046D8B0    mov         [0055DA60],eax;gvar_0055DA60
 0046D8B5    push        ebp
 0046D8B6    mov         edx,46D3FC
 0046D8BB    mov         eax,46D9F0
 0046D8C0    call        0046D700
 0046D8C5    pop         ecx
 0046D8C6    mov         [0055DA64],eax;gvar_0055DA64
 0046D8CB    push        ebp
 0046D8CC    mov         edx,46D470
 0046D8D1    mov         eax,46DA00
 0046D8D6    call        0046D700
 0046D8DB    pop         ecx
 0046D8DC    mov         [0055DA68],eax;gvar_0055DA68
 0046D8E1    push        ebp
 0046D8E2    mov         edx,46D4E4
 0046D8E7    mov         eax,46DA10
 0046D8EC    call        0046D700
 0046D8F1    pop         ecx
 0046D8F2    mov         [0055DA6C],eax;gvar_0055DA6C
 0046D8F7    push        ebp
 0046D8F8    mov         edx,46D568
 0046D8FD    mov         eax,46DA20
 0046D902    call        0046D700
 0046D907    pop         ecx
 0046D908    mov         [0055DA70],eax;gvar_0055DA70
 0046D90D    push        ebp
 0046D90E    mov         edx,46D5E4
 0046D913    mov         eax,46DA30
 0046D918    call        0046D700
 0046D91D    pop         ecx
 0046D91E    mov         [0055DA74],eax;gvar_0055DA74
 0046D923    push        ebp
 0046D924    mov         edx,46D660
 0046D929    mov         eax,46DA40
 0046D92E    call        0046D700
 0046D933    pop         ecx
 0046D934    mov         [0055DA78],eax;gvar_0055DA78
 0046D939    pop         ecx
 0046D93A    pop         ebp
 0046D93B    ret
*}
end;

Initialization
//0046DA80
{*
 0046DA80    push        ebp
 0046DA81    mov         ebp,esp
 0046DA83    sub         dword ptr ds:[55DA7C],1
>0046DA8A    jae         0046DA91
 0046DA8C    call        0046D744
 0046DA91    pop         ebp
 0046DA92    ret
*}
Finalization
end.