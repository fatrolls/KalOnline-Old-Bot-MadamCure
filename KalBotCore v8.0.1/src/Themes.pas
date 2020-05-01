//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Themes;

interface

uses
  SysUtils, Classes;

type
  TThemeServices = class(TObject)
  public
    FNewComCtrls:Boolean;//f4
    FThemesAvailable:Boolean;//f5
    FUseThemes:Boolean;//f6
    FThemeData:TThemeData;//f8
    FOnThemeChange:TNotifyEvent;//f68
    f6A:word;//f6A
    f6C:dword;//f6C
    destructor Destroy; virtual;//004B6284
    procedure v0; virtual;//v0//004B6358
    constructor v4; virtual;//v4//004B6224
    function GetThemesEnabled:Boolean;//004B6324
  end;
    function ThemeServices:TThemeServices;//004B61F8
    constructor sub_004B6224;//004B6224
    destructor Destroy;//004B6284
    //function sub_004B62C4(?:TThemeServices; ?:?):?;//004B62C4
    procedure sub_004B6358;//004B6358
    procedure sub_004B637C(?:TThemeServices);//004B637C
    procedure sub_004B63CC(?:TThemeServices);//004B63CC
    //procedure sub_004B63E8(?:?; ?:?; ?:?; ?:?; ?:?);//004B63E8
    //procedure sub_004B643C(?:TThemeServices; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004B643C
    //procedure sub_004B648C(?:TThemeServices; ?:HDC; ?:?; ?:?; ?:?);//004B648C
    //procedure sub_004B64D4(?:TThemeServices; ?:?; ?:?; ?:?; ?:?; ?:?);//004B64D4
    //procedure sub_004B6520(?:TThemeServices; ?:HWND; ?:HDC; ?:?; ?:?; ?:?);//004B6520
    //procedure sub_004B6598(?:TThemeServices; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004B6598
    //procedure sub_004B6600(?:TThemeServices; ?:?; ?:?);//004B6600
    //procedure sub_004B66C0(?:?; ?:?; ?:?);//004B66C0
    //procedure sub_004B6728(?:TThemeServices; ?:?; ?:?);//004B6728
    //procedure sub_004B67A8(?:TThemeServices; ?:?; ?:?);//004B67A8
    //procedure sub_004B6918(?:?; ?:?; ?:?);//004B6918
    //procedure sub_004B69F4(?:TThemeServices; ?:?; ?:?);//004B69F4
    //procedure sub_004B6B5C(?:TThemeServices; ?:?; ?:?);//004B6B5C
    //procedure sub_004B6FC8(?:TThemeServices; ?:TWinControl; ?:?);//004B6FC8
    procedure sub_004B713C(?:TThemeServices);//004B713C

implementation

//004B61F8
function ThemeServices:TThemeServices;
begin
{*
 004B61F8    push        ebp
 004B61F9    mov         ebp,esp
 004B61FB    push        ecx
 004B61FC    cmp         dword ptr ds:[55DD8C],0
>004B6203    jne         004B6214
 004B6205    mov         dl,1
 004B6207    mov         eax,[0054151C]
 004B620C    call        dword ptr [eax+4]
 004B620F    mov         [0055DD8C],eax
 004B6214    mov         eax,[0055DD8C]
 004B6219    mov         dword ptr [ebp-4],eax
 004B621C    mov         eax,dword ptr [ebp-4]
 004B621F    pop         ecx
 004B6220    pop         ebp
 004B6221    ret
*}
end;

//004B6224
constructor sub_004B6224;
begin
{*
 004B6224    push        ebp
 004B6225    mov         ebp,esp
 004B6227    add         esp,0FFFFFFF8
 004B622A    test        dl,dl
>004B622C    je          004B6236
 004B622E    add         esp,0FFFFFFF0
 004B6231    call        @ClassCreate
 004B6236    mov         byte ptr [ebp-5],dl
 004B6239    mov         dword ptr [ebp-4],eax
 004B623C    call        00492600
 004B6241    mov         edx,dword ptr [ebp-4]
 004B6244    mov         byte ptr [edx+5],al;TThemeServices.FThemesAvailable:Boolean
 004B6247    call        004A7B9C
 004B624C    cmp         eax,60000
 004B6251    setge       al
 004B6254    mov         edx,dword ptr [ebp-4]
 004B6257    mov         byte ptr [edx+4],al;TThemeServices.FNewComCtrls:Boolean
 004B625A    mov         eax,dword ptr [ebp-4]
 004B625D    call        004B713C
 004B6262    mov         eax,dword ptr [ebp-4]
 004B6265    cmp         byte ptr [ebp-5],0
>004B6269    je          004B627A
 004B626B    call        @AfterConstruction
 004B6270    pop         dword ptr fs:[0]
 004B6277    add         esp,0C
 004B627A    mov         eax,dword ptr [ebp-4]
 004B627D    pop         ecx
 004B627E    pop         ecx
 004B627F    pop         ebp
 004B6280    ret
*}
end;

//004B6284
destructor TThemeServices.Destroy;
begin
{*
 004B6284    push        ebp
 004B6285    mov         ebp,esp
 004B6287    add         esp,0FFFFFFF8
 004B628A    call        @BeforeDestruction
 004B628F    mov         byte ptr [ebp-5],dl
 004B6292    mov         dword ptr [ebp-4],eax
 004B6295    mov         eax,dword ptr [ebp-4]
 004B6298    call        004B637C
 004B629D    call        00492440
 004B62A2    mov         dl,byte ptr [ebp-5]
 004B62A5    and         dl,0FC
 004B62A8    mov         eax,dword ptr [ebp-4]
 004B62AB    call        TObject.Destroy
 004B62B0    cmp         byte ptr [ebp-5],0
>004B62B4    jle         004B62BE
 004B62B6    mov         eax,dword ptr [ebp-4]
 004B62B9    call        @ClassDestroy
 004B62BE    pop         ecx
 004B62BF    pop         ecx
 004B62C0    pop         ebp
 004B62C1    ret
*}
end;

//004B62C4
{*function sub_004B62C4(?:TThemeServices; ?:?):?;
begin
 004B62C4    push        ebp
 004B62C5    mov         ebp,esp
 004B62C7    add         esp,0FFFFFFF4
 004B62CA    mov         byte ptr [ebp-5],dl
 004B62CD    mov         dword ptr [ebp-4],eax
 004B62D0    mov         eax,dword ptr [ebp-4]
 004B62D3    cmp         byte ptr [eax+6],0
>004B62D7    je          004B630C
 004B62D9    xor         eax,eax
 004B62DB    mov         al,byte ptr [ebp-5]
 004B62DE    mov         edx,dword ptr [ebp-4]
 004B62E1    cmp         dword ptr [edx+eax*4+8],0
>004B62E6    jne         004B630C
 004B62E8    xor         eax,eax
 004B62EA    mov         al,byte ptr [ebp-5]
 004B62ED    mov         eax,dword ptr [eax*4+541524]
 004B62F4    push        eax
 004B62F5    push        0
 004B62F7    mov         eax,[0055B244];^gvar_0055DBF8:Pointer
 004B62FC    mov         eax,dword ptr [eax]
 004B62FE    call        eax
 004B6300    xor         edx,edx
 004B6302    mov         dl,byte ptr [ebp-5]
 004B6305    mov         ecx,dword ptr [ebp-4]
 004B6308    mov         dword ptr [ecx+edx*4+8],eax
 004B630C    xor         eax,eax
 004B630E    mov         al,byte ptr [ebp-5]
 004B6311    mov         edx,dword ptr [ebp-4]
 004B6314    mov         eax,dword ptr [edx+eax*4+8]
 004B6318    mov         dword ptr [ebp-0C],eax
 004B631B    mov         eax,dword ptr [ebp-0C]
 004B631E    mov         esp,ebp
 004B6320    pop         ebp
 004B6321    ret
end;*}

//004B6324
function TThemeServices.GetThemesEnabled:Boolean;
begin
{*
 004B6324    push        ebp
 004B6325    mov         ebp,esp
 004B6327    add         esp,0FFFFFFF8
 004B632A    mov         dword ptr [ebp-4],eax
 004B632D    mov         eax,dword ptr [ebp-4]
 004B6330    cmp         byte ptr [eax+5],0
>004B6334    je          004B6348
 004B6336    mov         eax,dword ptr [ebp-4]
 004B6339    cmp         byte ptr [eax+6],0
>004B633D    je          004B6348
 004B633F    mov         eax,dword ptr [ebp-4]
 004B6342    cmp         byte ptr [eax+4],0
>004B6346    jne         004B634C
 004B6348    xor         eax,eax
>004B634A    jmp         004B634E
 004B634C    mov         al,1
 004B634E    mov         byte ptr [ebp-5],al
 004B6351    mov         al,byte ptr [ebp-5]
 004B6354    pop         ecx
 004B6355    pop         ecx
 004B6356    pop         ebp
 004B6357    ret
*}
end;

//004B6358
procedure sub_004B6358;
begin
{*
 004B6358    push        ebp
 004B6359    mov         ebp,esp
 004B635B    push        ecx
 004B635C    push        ebx
 004B635D    mov         dword ptr [ebp-4],eax
 004B6360    mov         eax,dword ptr [ebp-4]
 004B6363    cmp         word ptr [eax+6A],0;TThemeServices.?f6A:word
>004B6368    je          004B6376
 004B636A    mov         ebx,dword ptr [ebp-4]
 004B636D    mov         edx,dword ptr [ebp-4]
 004B6370    mov         eax,dword ptr [ebx+6C];TThemeServices.?f6C:dword
 004B6373    call        dword ptr [ebx+68];TThemeServices.FOnThemeChange
 004B6376    pop         ebx
 004B6377    pop         ecx
 004B6378    pop         ebp
 004B6379    ret
*}
end;

//004B637C
procedure sub_004B637C(?:TThemeServices);
begin
{*
 004B637C    push        ebp
 004B637D    mov         ebp,esp
 004B637F    add         esp,0FFFFFFF8
 004B6382    mov         dword ptr [ebp-4],eax
 004B6385    mov         byte ptr [ebp-5],0
 004B6389    xor         eax,eax
 004B638B    mov         al,byte ptr [ebp-5]
 004B638E    mov         edx,dword ptr [ebp-4]
 004B6391    cmp         dword ptr [edx+eax*4+8],0
>004B6396    je          004B63BC
 004B6398    xor         eax,eax
 004B639A    mov         al,byte ptr [ebp-5]
 004B639D    mov         edx,dword ptr [ebp-4]
 004B63A0    mov         eax,dword ptr [edx+eax*4+8]
 004B63A4    push        eax
 004B63A5    mov         eax,[0055B3C8];^gvar_0055DBFC:Pointer
 004B63AA    mov         eax,dword ptr [eax]
 004B63AC    call        eax
 004B63AE    xor         eax,eax
 004B63B0    mov         al,byte ptr [ebp-5]
 004B63B3    mov         edx,dword ptr [ebp-4]
 004B63B6    xor         ecx,ecx
 004B63B8    mov         dword ptr [edx+eax*4+8],ecx
 004B63BC    inc         byte ptr [ebp-5]
 004B63BF    cmp         byte ptr [ebp-5],18
>004B63C3    jne         004B6389
 004B63C5    pop         ecx
 004B63C6    pop         ecx
 004B63C7    pop         ebp
 004B63C8    ret
*}
end;

//004B63CC
procedure sub_004B63CC(?:TThemeServices);
begin
{*
 004B63CC    push        ebp
 004B63CD    mov         ebp,esp
 004B63CF    push        ecx
 004B63D0    mov         dword ptr [ebp-4],eax
 004B63D3    mov         eax,dword ptr [ebp-4]
 004B63D6    call        004B713C
 004B63DB    mov         eax,dword ptr [ebp-4]
 004B63DE    mov         edx,dword ptr [eax]
 004B63E0    call        dword ptr [edx]
 004B63E2    pop         ecx
 004B63E3    pop         ebp
 004B63E4    ret
*}
end;

//004B63E8
{*procedure sub_004B63E8(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004B63E8    push        ebp
 004B63E9    mov         ebp,esp
 004B63EB    add         esp,0FFFFFFDC
 004B63EE    push        esi
 004B63EF    push        edi
 004B63F0    mov         esi,dword ptr [ebp+0C]
 004B63F3    lea         edi,[ebp-24]
 004B63F6    movs        dword ptr [edi],dword ptr [esi]
 004B63F7    movs        dword ptr [edi],dword ptr [esi]
 004B63F8    movs        dword ptr [edi],dword ptr [esi]
 004B63F9    movs        dword ptr [edi],dword ptr [esi]
 004B63FA    mov         esi,ecx
 004B63FC    lea         edi,[ebp-14]
 004B63FF    movs        dword ptr [edi],dword ptr [esi]
 004B6400    movs        dword ptr [edi],dword ptr [esi]
 004B6401    movs        dword ptr [edi],dword ptr [esi]
 004B6402    mov         dword ptr [ebp-8],edx
 004B6405    mov         dword ptr [ebp-4],eax
 004B6408    mov         eax,dword ptr [ebp+8]
 004B640B    push        eax
 004B640C    lea         eax,[ebp-24]
 004B640F    push        eax
 004B6410    mov         eax,dword ptr [ebp-0C]
 004B6413    push        eax
 004B6414    mov         eax,dword ptr [ebp-10]
 004B6417    push        eax
 004B6418    mov         eax,dword ptr [ebp-8]
 004B641B    push        eax
 004B641C    mov         dl,byte ptr [ebp-14]
 004B641F    mov         eax,dword ptr [ebp-4]
 004B6422    call        004B62C4
 004B6427    push        eax
 004B6428    mov         eax,[0055B2CC];^gvar_0055DC08:Pointer
 004B642D    mov         eax,dword ptr [eax]
 004B642F    call        eax
 004B6431    pop         edi
 004B6432    pop         esi
 004B6433    mov         esp,ebp
 004B6435    pop         ebp
 004B6436    ret         8
end;*}

//004B643C
{*procedure sub_004B643C(?:TThemeServices; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004B643C    push        ebp
 004B643D    mov         ebp,esp
 004B643F    add         esp,0FFFFFFEC
 004B6442    push        esi
 004B6443    push        edi
 004B6444    mov         esi,ecx
 004B6446    lea         edi,[ebp-14]
 004B6449    movs        dword ptr [edi],dword ptr [esi]
 004B644A    movs        dword ptr [edi],dword ptr [esi]
 004B644B    movs        dword ptr [edi],dword ptr [esi]
 004B644C    mov         dword ptr [ebp-8],edx
 004B644F    mov         dword ptr [ebp-4],eax
 004B6452    mov         eax,dword ptr [ebp+8]
 004B6455    push        eax
 004B6456    mov         eax,dword ptr [ebp+0C]
 004B6459    push        eax
 004B645A    mov         eax,dword ptr [ebp+10]
 004B645D    push        eax
 004B645E    mov         eax,dword ptr [ebp+14]
 004B6461    push        eax
 004B6462    mov         eax,dword ptr [ebp-0C]
 004B6465    push        eax
 004B6466    mov         eax,dword ptr [ebp-10]
 004B6469    push        eax
 004B646A    mov         eax,dword ptr [ebp-8]
 004B646D    push        eax
 004B646E    mov         dl,byte ptr [ebp-14]
 004B6471    mov         eax,dword ptr [ebp-4]
 004B6474    call        004B62C4
 004B6479    push        eax
 004B647A    mov         eax,[0055B40C];^gvar_0055DC24:Pointer
 004B647F    mov         eax,dword ptr [eax]
 004B6481    call        eax
 004B6483    pop         edi
 004B6484    pop         esi
 004B6485    mov         esp,ebp
 004B6487    pop         ebp
 004B6488    ret         10
end;*}

//004B648C
{*procedure sub_004B648C(?:TThemeServices; ?:HDC; ?:?; ?:?; ?:?);
begin
 004B648C    push        ebp
 004B648D    mov         ebp,esp
 004B648F    add         esp,0FFFFFFEC
 004B6492    push        esi
 004B6493    push        edi
 004B6494    mov         esi,ecx
 004B6496    lea         edi,[ebp-14]
 004B6499    movs        dword ptr [edi],dword ptr [esi]
 004B649A    movs        dword ptr [edi],dword ptr [esi]
 004B649B    movs        dword ptr [edi],dword ptr [esi]
 004B649C    mov         dword ptr [ebp-8],edx
 004B649F    mov         dword ptr [ebp-4],eax
 004B64A2    mov         eax,dword ptr [ebp+8]
 004B64A5    push        eax
 004B64A6    mov         eax,dword ptr [ebp+0C]
 004B64A9    push        eax
 004B64AA    mov         eax,dword ptr [ebp-0C]
 004B64AD    push        eax
 004B64AE    mov         eax,dword ptr [ebp-10]
 004B64B1    push        eax
 004B64B2    mov         eax,dword ptr [ebp-8]
 004B64B5    push        eax
 004B64B6    mov         dl,byte ptr [ebp-14]
 004B64B9    mov         eax,dword ptr [ebp-4]
 004B64BC    call        004B62C4
 004B64C1    push        eax
 004B64C2    mov         eax,[0055B3AC];^gvar_0055DC00:Pointer
 004B64C7    mov         eax,dword ptr [eax]
 004B64C9    call        eax
 004B64CB    pop         edi
 004B64CC    pop         esi
 004B64CD    mov         esp,ebp
 004B64CF    pop         ebp
 004B64D0    ret         8
end;*}

//004B64D4
{*procedure sub_004B64D4(?:TThemeServices; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004B64D4    push        ebp
 004B64D5    mov         ebp,esp
 004B64D7    add         esp,0FFFFFFEC
 004B64DA    push        esi
 004B64DB    push        edi
 004B64DC    mov         esi,ecx
 004B64DE    lea         edi,[ebp-14]
 004B64E1    movs        dword ptr [edi],dword ptr [esi]
 004B64E2    movs        dword ptr [edi],dword ptr [esi]
 004B64E3    movs        dword ptr [edi],dword ptr [esi]
 004B64E4    mov         dword ptr [ebp-8],edx
 004B64E7    mov         dword ptr [ebp-4],eax
 004B64EA    mov         eax,dword ptr [ebp+8]
 004B64ED    push        eax
 004B64EE    mov         eax,dword ptr [ebp+0C]
 004B64F1    push        eax
 004B64F2    mov         eax,dword ptr [ebp+10]
 004B64F5    push        eax
 004B64F6    mov         eax,dword ptr [ebp-0C]
 004B64F9    push        eax
 004B64FA    mov         eax,dword ptr [ebp-10]
 004B64FD    push        eax
 004B64FE    mov         eax,dword ptr [ebp-8]
 004B6501    push        eax
 004B6502    mov         dl,byte ptr [ebp-14]
 004B6505    mov         eax,dword ptr [ebp-4]
 004B6508    call        004B62C4
 004B650D    push        eax
 004B650E    mov         eax,[0055B624];^gvar_0055DC28:Pointer
 004B6513    mov         eax,dword ptr [eax]
 004B6515    call        eax
 004B6517    pop         edi
 004B6518    pop         esi
 004B6519    mov         esp,ebp
 004B651B    pop         ebp
 004B651C    ret         0C
end;*}

//004B6520
{*procedure sub_004B6520(?:TThemeServices; ?:HWND; ?:HDC; ?:?; ?:?; ?:?);
begin
 004B6520    push        ebp
 004B6521    mov         ebp,esp
 004B6523    add         esp,0FFFFFFEC
 004B6526    mov         dword ptr [ebp-0C],ecx
 004B6529    mov         dword ptr [ebp-8],edx
 004B652C    mov         dword ptr [ebp-4],eax
 004B652F    cmp         byte ptr [ebp+0C],0
>004B6533    je          004B6571
 004B6535    cmp         dword ptr [ebp+10],0
>004B6539    je          004B6571
 004B653B    mov         eax,dword ptr [ebp+10]
 004B653E    mov         dword ptr [ebp-14],eax
 004B6541    mov         eax,dword ptr [ebp-14]
 004B6544    mov         eax,dword ptr [eax+8]
 004B6547    push        eax
 004B6548    mov         eax,dword ptr [ebp-14]
 004B654B    mov         eax,dword ptr [eax+4]
 004B654E    push        eax
 004B654F    mov         eax,dword ptr [ebp-14]
 004B6552    mov         dl,byte ptr [eax]
 004B6554    mov         eax,dword ptr [ebp-4]
 004B6557    call        004B62C4
 004B655C    push        eax
 004B655D    mov         eax,[0055B224];^gvar_0055DC30:Pointer
 004B6562    mov         eax,dword ptr [eax]
 004B6564    call        eax
 004B6566    cmp         eax,1
 004B6569    sbb         eax,eax
 004B656B    inc         eax
 004B656C    mov         byte ptr [ebp-0D],al
>004B656F    jmp         004B6575
 004B6571    mov         byte ptr [ebp-0D],1
 004B6575    cmp         byte ptr [ebp-0D],0
>004B6579    je          004B6590
 004B657B    mov         eax,dword ptr [ebp+8]
 004B657E    push        eax
 004B657F    mov         eax,dword ptr [ebp-0C]
 004B6582    push        eax
 004B6583    mov         eax,dword ptr [ebp-8]
 004B6586    push        eax
 004B6587    mov         eax,[0055B484];^gvar_0055DCAC:Pointer
 004B658C    mov         eax,dword ptr [eax]
 004B658E    call        eax
 004B6590    mov         esp,ebp
 004B6592    pop         ebp
 004B6593    ret         0C
end;*}

//004B6598
{*procedure sub_004B6598(?:TThemeServices; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004B6598    push        ebp
 004B6599    mov         ebp,esp
 004B659B    add         esp,0FFFFFFDC
 004B659E    push        esi
 004B659F    push        edi
 004B65A0    mov         esi,dword ptr [ebp+10]
 004B65A3    lea         edi,[ebp-24]
 004B65A6    movs        dword ptr [edi],dword ptr [esi]
 004B65A7    movs        dword ptr [edi],dword ptr [esi]
 004B65A8    movs        dword ptr [edi],dword ptr [esi]
 004B65A9    movs        dword ptr [edi],dword ptr [esi]
 004B65AA    mov         esi,ecx
 004B65AC    lea         edi,[ebp-14]
 004B65AF    movs        dword ptr [edi],dword ptr [esi]
 004B65B0    movs        dword ptr [edi],dword ptr [esi]
 004B65B1    movs        dword ptr [edi],dword ptr [esi]
 004B65B2    mov         dword ptr [ebp-8],edx
 004B65B5    mov         dword ptr [ebp-4],eax
 004B65B8    lea         eax,[ebp-24]
 004B65BB    push        eax
 004B65BC    mov         eax,dword ptr [ebp+8]
 004B65BF    push        eax
 004B65C0    mov         eax,dword ptr [ebp+0C]
 004B65C3    push        eax
 004B65C4    mov         eax,dword ptr [ebp+14]
 004B65C7    call        @WStrLen
 004B65CC    push        eax
 004B65CD    mov         eax,dword ptr [ebp+14]
 004B65D0    call        @WStrToPWChar
 004B65D5    push        eax
 004B65D6    mov         eax,dword ptr [ebp-0C]
 004B65D9    push        eax
 004B65DA    mov         eax,dword ptr [ebp-10]
 004B65DD    push        eax
 004B65DE    mov         eax,dword ptr [ebp-8]
 004B65E1    push        eax
 004B65E2    mov         dl,byte ptr [ebp-14]
 004B65E5    mov         eax,dword ptr [ebp-4]
 004B65E8    call        004B62C4
 004B65ED    push        eax
 004B65EE    mov         eax,[0055B5D4];^gvar_0055DC04:Pointer
 004B65F3    mov         eax,dword ptr [eax]
 004B65F5    call        eax
 004B65F7    pop         edi
 004B65F8    pop         esi
 004B65F9    mov         esp,ebp
 004B65FB    pop         ebp
 004B65FC    ret         10
end;*}

//004B6600
{*procedure sub_004B6600(?:TThemeServices; ?:?; ?:?);
begin
 004B6600    push        ebp
 004B6601    mov         ebp,esp
 004B6603    add         esp,0FFFFFFF0
 004B6606    mov         dword ptr [ebp-0C],ecx
 004B6609    mov         byte ptr [ebp-5],dl
 004B660C    mov         dword ptr [ebp-4],eax
 004B660F    mov         eax,dword ptr [ebp-0C]
 004B6612    mov         byte ptr [eax],0
 004B6615    xor         eax,eax
 004B6617    mov         al,byte ptr [ebp-5]
 004B661A    cmp         eax,0F
>004B661D    jge         004B662E
 004B661F    add         eax,0FFFFFFFE
 004B6622    sub         eax,5
>004B6625    jb          004B663F
 004B6627    sub         eax,8
>004B662A    jb          004B6652
>004B662C    jmp         004B669E
 004B662E    add         eax,0FFFFFFF1
 004B6631    sub         eax,0C
>004B6634    jb          004B6665
 004B6636    sub         eax,2
>004B6639    jb          004B6678
>004B663B    je          004B668B
>004B663D    jmp         004B669E
 004B663F    mov         eax,dword ptr [ebp-0C]
 004B6642    mov         dword ptr [eax+4],1
 004B6649    mov         dword ptr [ebp-10],2
>004B6650    jmp         004B66AB
 004B6652    mov         eax,dword ptr [ebp-0C]
 004B6655    mov         dword ptr [eax+4],2
 004B665C    mov         dword ptr [ebp-10],7
>004B6663    jmp         004B66AB
 004B6665    mov         eax,dword ptr [ebp-0C]
 004B6668    mov         dword ptr [eax+4],3
 004B666F    mov         dword ptr [ebp-10],0F
>004B6676    jmp         004B66AB
 004B6678    mov         eax,dword ptr [ebp-0C]
 004B667B    mov         dword ptr [eax+4],4
 004B6682    mov         dword ptr [ebp-10],1B
>004B6689    jmp         004B66AB
 004B668B    mov         eax,dword ptr [ebp-0C]
 004B668E    mov         dword ptr [eax+4],5
 004B6695    mov         dword ptr [ebp-10],1D
>004B669C    jmp         004B66AB
 004B669E    mov         eax,dword ptr [ebp-0C]
 004B66A1    xor         edx,edx
 004B66A3    mov         dword ptr [eax+4],edx
 004B66A6    xor         eax,eax
 004B66A8    mov         dword ptr [ebp-10],eax
 004B66AB    xor         eax,eax
 004B66AD    mov         al,byte ptr [ebp-5]
 004B66B0    sub         eax,dword ptr [ebp-10]
 004B66B3    inc         eax
 004B66B4    mov         edx,dword ptr [ebp-0C]
 004B66B7    mov         dword ptr [edx+8],eax
 004B66BA    mov         esp,ebp
 004B66BC    pop         ebp
 004B66BD    ret
end;*}

//004B66C0
{*procedure sub_004B66C0(?:?; ?:?; ?:?);
begin
 004B66C0    push        ebp
 004B66C1    mov         ebp,esp
 004B66C3    add         esp,0FFFFFFF0
 004B66C6    mov         dword ptr [ebp-0C],ecx
 004B66C9    mov         byte ptr [ebp-5],dl
 004B66CC    mov         dword ptr [ebp-4],eax
 004B66CF    mov         eax,dword ptr [ebp-0C]
 004B66D2    mov         byte ptr [eax],3
 004B66D5    mov         al,byte ptr [ebp-5]
 004B66D8    add         al,0FE
 004B66DA    sub         al,7
>004B66DC    jb          004B66E2
>004B66DE    je          004B66F5
>004B66E0    jmp         004B6708
 004B66E2    mov         eax,dword ptr [ebp-0C]
 004B66E5    mov         dword ptr [eax+4],1
 004B66EC    mov         dword ptr [ebp-10],2
>004B66F3    jmp         004B6715
 004B66F5    mov         eax,dword ptr [ebp-0C]
 004B66F8    mov         dword ptr [eax+4],2
 004B66FF    mov         dword ptr [ebp-10],9
>004B6706    jmp         004B6715
 004B6708    mov         eax,dword ptr [ebp-0C]
 004B670B    xor         edx,edx
 004B670D    mov         dword ptr [eax+4],edx
 004B6710    xor         eax,eax
 004B6712    mov         dword ptr [ebp-10],eax
 004B6715    xor         eax,eax
 004B6717    mov         al,byte ptr [ebp-5]
 004B671A    sub         eax,dword ptr [ebp-10]
 004B671D    inc         eax
 004B671E    mov         edx,dword ptr [ebp-0C]
 004B6721    mov         dword ptr [edx+8],eax
 004B6724    mov         esp,ebp
 004B6726    pop         ebp
 004B6727    ret
end;*}

//004B6728
{*procedure sub_004B6728(?:TThemeServices; ?:?; ?:?);
begin
 004B6728    push        ebp
 004B6729    mov         ebp,esp
 004B672B    add         esp,0FFFFFFF0
 004B672E    mov         dword ptr [ebp-0C],ecx
 004B6731    mov         byte ptr [ebp-5],dl
 004B6734    mov         dword ptr [ebp-4],eax
 004B6737    mov         eax,dword ptr [ebp-0C]
 004B673A    mov         byte ptr [eax],0E
 004B673D    mov         al,byte ptr [ebp-5]
 004B6740    sub         al,2
>004B6742    je          004B674E
 004B6744    dec         al
>004B6746    je          004B6761
 004B6748    dec         al
>004B674A    je          004B6774
>004B674C    jmp         004B6787
 004B674E    mov         eax,dword ptr [ebp-0C]
 004B6751    mov         dword ptr [eax+4],1
 004B6758    mov         dword ptr [ebp-10],2
>004B675F    jmp         004B6794
 004B6761    mov         eax,dword ptr [ebp-0C]
 004B6764    mov         dword ptr [eax+4],2
 004B676B    mov         dword ptr [ebp-10],3
>004B6772    jmp         004B6794
 004B6774    mov         eax,dword ptr [ebp-0C]
 004B6777    mov         dword ptr [eax+4],3
 004B677E    mov         dword ptr [ebp-10],4
>004B6785    jmp         004B6794
 004B6787    mov         eax,dword ptr [ebp-0C]
 004B678A    xor         edx,edx
 004B678C    mov         dword ptr [eax+4],edx
 004B678F    xor         eax,eax
 004B6791    mov         dword ptr [ebp-10],eax
 004B6794    xor         eax,eax
 004B6796    mov         al,byte ptr [ebp-5]
 004B6799    sub         eax,dword ptr [ebp-10]
 004B679C    inc         eax
 004B679D    mov         edx,dword ptr [ebp-0C]
 004B67A0    mov         dword ptr [edx+8],eax
 004B67A3    mov         esp,ebp
 004B67A5    pop         ebp
 004B67A6    ret
end;*}

//004B67A8
{*procedure sub_004B67A8(?:TThemeServices; ?:?; ?:?);
begin
 004B67A8    push        ebp
 004B67A9    mov         ebp,esp
 004B67AB    add         esp,0FFFFFFF0
 004B67AE    mov         dword ptr [ebp-0C],ecx
 004B67B1    mov         byte ptr [ebp-5],dl
 004B67B4    mov         dword ptr [ebp-4],eax
 004B67B7    mov         eax,dword ptr [ebp-0C]
 004B67BA    mov         byte ptr [eax],0F
 004B67BD    xor         eax,eax
 004B67BF    mov         al,byte ptr [ebp-5]
 004B67C2    cmp         eax,2B
>004B67C5    ja          004B68F7
 004B67CB    mov         al,byte ptr [eax+4B67D8]
 004B67D1    jmp         dword ptr [eax*4+4B6804]
 004B67D1    db          0
 004B67D1    db          0
 004B67D1    db          1
 004B67D1    db          1
 004B67D1    db          1
 004B67D1    db          1
 004B67D1    db          1
 004B67D1    db          2
 004B67D1    db          2
 004B67D1    db          2
 004B67D1    db          2
 004B67D1    db          2
 004B67D1    db          3
 004B67D1    db          3
 004B67D1    db          3
 004B67D1    db          3
 004B67D1    db          3
 004B67D1    db          4
 004B67D1    db          4
 004B67D1    db          4
 004B67D1    db          4
 004B67D1    db          4
 004B67D1    db          5
 004B67D1    db          5
 004B67D1    db          5
 004B67D1    db          5
 004B67D1    db          5
 004B67D1    db          6
 004B67D1    db          6
 004B67D1    db          6
 004B67D1    db          6
 004B67D1    db          6
 004B67D1    db          7
 004B67D1    db          7
 004B67D1    db          7
 004B67D1    db          7
 004B67D1    db          7
 004B67D1    db          8
 004B67D1    db          8
 004B67D1    db          8
 004B67D1    db          8
 004B67D1    db          8
 004B67D1    db          9
 004B67D1    db          10
 004B67D1    dd          004B68F7
 004B67D1    dd          004B6830
 004B67D1    dd          004B6846
 004B67D1    dd          004B685C
 004B67D1    dd          004B6872
 004B67D1    dd          004B6885
 004B67D1    dd          004B6898
 004B67D1    dd          004B68AB
 004B67D1    dd          004B68BE
 004B67D1    dd          004B68D1
 004B67D1    dd          004B68E4
 004B6830    mov         eax,dword ptr [ebp-0C]
 004B6833    mov         dword ptr [eax+4],1
 004B683A    mov         dword ptr [ebp-10],2
>004B6841    jmp         004B6904
 004B6846    mov         eax,dword ptr [ebp-0C]
 004B6849    mov         dword ptr [eax+4],2
 004B6850    mov         dword ptr [ebp-10],7
>004B6857    jmp         004B6904
 004B685C    mov         eax,dword ptr [ebp-0C]
 004B685F    mov         dword ptr [eax+4],3
 004B6866    mov         dword ptr [ebp-10],0C
>004B686D    jmp         004B6904
 004B6872    mov         eax,dword ptr [ebp-0C]
 004B6875    mov         dword ptr [eax+4],4
 004B687C    mov         dword ptr [ebp-10],11
>004B6883    jmp         004B6904
 004B6885    mov         eax,dword ptr [ebp-0C]
 004B6888    mov         dword ptr [eax+4],5
 004B688F    mov         dword ptr [ebp-10],16
>004B6896    jmp         004B6904
 004B6898    mov         eax,dword ptr [ebp-0C]
 004B689B    mov         dword ptr [eax+4],6
 004B68A2    mov         dword ptr [ebp-10],1B
>004B68A9    jmp         004B6904
 004B68AB    mov         eax,dword ptr [ebp-0C]
 004B68AE    mov         dword ptr [eax+4],7
 004B68B5    mov         dword ptr [ebp-10],20
>004B68BC    jmp         004B6904
 004B68BE    mov         eax,dword ptr [ebp-0C]
 004B68C1    mov         dword ptr [eax+4],8
 004B68C8    mov         dword ptr [ebp-10],25
>004B68CF    jmp         004B6904
 004B68D1    mov         eax,dword ptr [ebp-0C]
 004B68D4    mov         dword ptr [eax+4],9
 004B68DB    mov         dword ptr [ebp-10],2A
>004B68E2    jmp         004B6904
 004B68E4    mov         eax,dword ptr [ebp-0C]
 004B68E7    mov         dword ptr [eax+4],0A
 004B68EE    mov         dword ptr [ebp-10],2B
>004B68F5    jmp         004B6904
 004B68F7    mov         eax,dword ptr [ebp-0C]
 004B68FA    xor         edx,edx
 004B68FC    mov         dword ptr [eax+4],edx
 004B68FF    xor         eax,eax
 004B6901    mov         dword ptr [ebp-10],eax
 004B6904    xor         eax,eax
 004B6906    mov         al,byte ptr [ebp-5]
 004B6909    sub         eax,dword ptr [ebp-10]
 004B690C    inc         eax
 004B690D    mov         edx,dword ptr [ebp-0C]
 004B6910    mov         dword ptr [edx+8],eax
 004B6913    mov         esp,ebp
 004B6915    pop         ebp
 004B6916    ret
end;*}

//004B6918
{*procedure sub_004B6918(?:?; ?:?; ?:?);
begin
 004B6918    push        ebp
 004B6919    mov         ebp,esp
 004B691B    add         esp,0FFFFFFF0
 004B691E    mov         dword ptr [ebp-0C],ecx
 004B6921    mov         byte ptr [ebp-5],dl
 004B6924    mov         dword ptr [ebp-4],eax
 004B6927    mov         eax,dword ptr [ebp-0C]
 004B692A    mov         byte ptr [eax],12
 004B692D    xor         eax,eax
 004B692F    mov         al,byte ptr [ebp-5]
 004B6932    cmp         eax,14
>004B6935    jge         004B694E
 004B6937    add         eax,0FFFFFFFE
 004B693A    sub         eax,6
>004B693D    jb          004B6962
 004B693F    sub         eax,6
>004B6942    jb          004B6975
 004B6944    sub         eax,6
>004B6947    jb          004B6988
>004B6949    jmp         004B69D4
 004B694E    add         eax,0FFFFFFEC
 004B6951    sub         eax,6
>004B6954    jb          004B699B
 004B6956    sub         eax,6
>004B6959    jb          004B69AE
 004B695B    sub         eax,6
>004B695E    jb          004B69C1
>004B6960    jmp         004B69D4
 004B6962    mov         eax,dword ptr [ebp-0C]
 004B6965    mov         dword ptr [eax+4],1
 004B696C    mov         dword ptr [ebp-10],2
>004B6973    jmp         004B69E1
 004B6975    mov         eax,dword ptr [ebp-0C]
 004B6978    mov         dword ptr [eax+4],2
 004B697F    mov         dword ptr [ebp-10],8
>004B6986    jmp         004B69E1
 004B6988    mov         eax,dword ptr [ebp-0C]
 004B698B    mov         dword ptr [eax+4],3
 004B6992    mov         dword ptr [ebp-10],0E
>004B6999    jmp         004B69E1
 004B699B    mov         eax,dword ptr [ebp-0C]
 004B699E    mov         dword ptr [eax+4],4
 004B69A5    mov         dword ptr [ebp-10],14
>004B69AC    jmp         004B69E1
 004B69AE    mov         eax,dword ptr [ebp-0C]
 004B69B1    mov         dword ptr [eax+4],5
 004B69B8    mov         dword ptr [ebp-10],1A
>004B69BF    jmp         004B69E1
 004B69C1    mov         eax,dword ptr [ebp-0C]
 004B69C4    mov         dword ptr [eax+4],6
 004B69CB    mov         dword ptr [ebp-10],20
>004B69D2    jmp         004B69E1
 004B69D4    mov         eax,dword ptr [ebp-0C]
 004B69D7    xor         edx,edx
 004B69D9    mov         dword ptr [eax+4],edx
 004B69DC    xor         eax,eax
 004B69DE    mov         dword ptr [ebp-10],eax
 004B69E1    xor         eax,eax
 004B69E3    mov         al,byte ptr [ebp-5]
 004B69E6    sub         eax,dword ptr [ebp-10]
 004B69E9    inc         eax
 004B69EA    mov         edx,dword ptr [ebp-0C]
 004B69ED    mov         dword ptr [edx+8],eax
 004B69F0    mov         esp,ebp
 004B69F2    pop         ebp
 004B69F3    ret
end;*}

//004B69F4
{*procedure sub_004B69F4(?:TThemeServices; ?:?; ?:?);
begin
 004B69F4    push        ebp
 004B69F5    mov         ebp,esp
 004B69F7    add         esp,0FFFFFFF0
 004B69FA    mov         dword ptr [ebp-0C],ecx
 004B69FD    mov         byte ptr [ebp-5],dl
 004B6A00    mov         dword ptr [ebp-4],eax
 004B6A03    mov         eax,dword ptr [ebp-0C]
 004B6A06    mov         byte ptr [eax],14
 004B6A09    xor         eax,eax
 004B6A0B    mov         al,byte ptr [ebp-5]
 004B6A0E    cmp         eax,23
>004B6A11    ja          004B6B3B
 004B6A17    mov         al,byte ptr [eax+4B6A24]
 004B6A1D    jmp         dword ptr [eax*4+4B6A48]
 004B6A1D    db          0
 004B6A1D    db          0
 004B6A1D    db          1
 004B6A1D    db          2
 004B6A1D    db          3
 004B6A1D    db          3
 004B6A1D    db          3
 004B6A1D    db          3
 004B6A1D    db          3
 004B6A1D    db          4
 004B6A1D    db          4
 004B6A1D    db          4
 004B6A1D    db          4
 004B6A1D    db          4
 004B6A1D    db          5
 004B6A1D    db          5
 004B6A1D    db          5
 004B6A1D    db          5
 004B6A1D    db          5
 004B6A1D    db          6
 004B6A1D    db          6
 004B6A1D    db          6
 004B6A1D    db          6
 004B6A1D    db          6
 004B6A1D    db          7
 004B6A1D    db          7
 004B6A1D    db          7
 004B6A1D    db          7
 004B6A1D    db          7
 004B6A1D    db          8
 004B6A1D    db          8
 004B6A1D    db          8
 004B6A1D    db          8
 004B6A1D    db          8
 004B6A1D    db          9
 004B6A1D    db          10
 004B6A1D    dd          004B6B3B
 004B6A1D    dd          004B6A74
 004B6A1D    dd          004B6A8A
 004B6A1D    dd          004B6AA0
 004B6A1D    dd          004B6AB6
 004B6A1D    dd          004B6AC9
 004B6A1D    dd          004B6ADC
 004B6A1D    dd          004B6AEF
 004B6A1D    dd          004B6B02
 004B6A1D    dd          004B6B15
 004B6A1D    dd          004B6B28
 004B6A74    mov         eax,dword ptr [ebp-0C]
 004B6A77    mov         dword ptr [eax+4],1
 004B6A7E    mov         dword ptr [ebp-10],2
>004B6A85    jmp         004B6B48
 004B6A8A    mov         eax,dword ptr [ebp-0C]
 004B6A8D    mov         dword ptr [eax+4],2
 004B6A94    mov         dword ptr [ebp-10],3
>004B6A9B    jmp         004B6B48
 004B6AA0    mov         eax,dword ptr [ebp-0C]
 004B6AA3    mov         dword ptr [eax+4],3
 004B6AAA    mov         dword ptr [ebp-10],4
>004B6AB1    jmp         004B6B48
 004B6AB6    mov         eax,dword ptr [ebp-0C]
 004B6AB9    mov         dword ptr [eax+4],4
 004B6AC0    mov         dword ptr [ebp-10],9
>004B6AC7    jmp         004B6B48
 004B6AC9    mov         eax,dword ptr [ebp-0C]
 004B6ACC    mov         dword ptr [eax+4],5
 004B6AD3    mov         dword ptr [ebp-10],0E
>004B6ADA    jmp         004B6B48
 004B6ADC    mov         eax,dword ptr [ebp-0C]
 004B6ADF    mov         dword ptr [eax+4],6
 004B6AE6    mov         dword ptr [ebp-10],13
>004B6AED    jmp         004B6B48
 004B6AEF    mov         eax,dword ptr [ebp-0C]
 004B6AF2    mov         dword ptr [eax+4],7
 004B6AF9    mov         dword ptr [ebp-10],18
>004B6B00    jmp         004B6B48
 004B6B02    mov         eax,dword ptr [ebp-0C]
 004B6B05    mov         dword ptr [eax+4],8
 004B6B0C    mov         dword ptr [ebp-10],1D
>004B6B13    jmp         004B6B48
 004B6B15    mov         eax,dword ptr [ebp-0C]
 004B6B18    mov         dword ptr [eax+4],9
 004B6B1F    mov         dword ptr [ebp-10],22
>004B6B26    jmp         004B6B48
 004B6B28    mov         eax,dword ptr [ebp-0C]
 004B6B2B    mov         dword ptr [eax+4],0A
 004B6B32    mov         dword ptr [ebp-10],23
>004B6B39    jmp         004B6B48
 004B6B3B    mov         eax,dword ptr [ebp-0C]
 004B6B3E    xor         edx,edx
 004B6B40    mov         dword ptr [eax+4],edx
 004B6B43    xor         eax,eax
 004B6B45    mov         dword ptr [ebp-10],eax
 004B6B48    xor         eax,eax
 004B6B4A    mov         al,byte ptr [ebp-5]
 004B6B4D    sub         eax,dword ptr [ebp-10]
 004B6B50    inc         eax
 004B6B51    mov         edx,dword ptr [ebp-0C]
 004B6B54    mov         dword ptr [edx+8],eax
 004B6B57    mov         esp,ebp
 004B6B59    pop         ebp
 004B6B5A    ret
end;*}

//004B6B5C
{*procedure sub_004B6B5C(?:TThemeServices; ?:?; ?:?);
begin
 004B6B5C    push        ebp
 004B6B5D    mov         ebp,esp
 004B6B5F    add         esp,0FFFFFFF0
 004B6B62    mov         dword ptr [ebp-0C],ecx
 004B6B65    mov         byte ptr [ebp-5],dl
 004B6B68    mov         dword ptr [ebp-4],eax
 004B6B6B    mov         eax,dword ptr [ebp-0C]
 004B6B6E    mov         byte ptr [eax],17
 004B6B71    xor         eax,eax
 004B6B73    mov         al,byte ptr [ebp-5]
 004B6B76    cmp         eax,68
>004B6B79    ja          004B6FA6
 004B6B7F    mov         al,byte ptr [eax+4B6B8C]
 004B6B85    jmp         dword ptr [eax*4+4B6BF5]
 004B6B85    db          0
 004B6B85    db          0
 004B6B85    db          1
 004B6B85    db          1
 004B6B85    db          1
 004B6B85    db          2
 004B6B85    db          2
 004B6B85    db          2
 004B6B85    db          3
 004B6B85    db          3
 004B6B85    db          3
 004B6B85    db          4
 004B6B85    db          4
 004B6B85    db          4
 004B6B85    db          5
 004B6B85    db          5
 004B6B85    db          5
 004B6B85    db          6
 004B6B85    db          6
 004B6B85    db          6
 004B6B85    db          7
 004B6B85    db          7
 004B6B85    db          8
 004B6B85    db          8
 004B6B85    db          9
 004B6B85    db          9
 004B6B85    db          10
 004B6B85    db          10
 004B6B85    db          11
 004B6B85    db          11
 004B6B85    db          12
 004B6B85    db          12
 004B6B85    db          13
 004B6B85    db          13
 004B6B85    db          13
 004B6B85    db          13
 004B6B85    db          14
 004B6B85    db          14
 004B6B85    db          14
 004B6B85    db          14
 004B6B85    db          15
 004B6B85    db          15
 004B6B85    db          15
 004B6B85    db          15
 004B6B85    db          16
 004B6B85    db          16
 004B6B85    db          16
 004B6B85    db          16
 004B6B85    db          17
 004B6B85    db          17
 004B6B85    db          17
 004B6B85    db          17
 004B6B85    db          18
 004B6B85    db          18
 004B6B85    db          18
 004B6B85    db          18
 004B6B85    db          19
 004B6B85    db          19
 004B6B85    db          19
 004B6B85    db          19
 004B6B85    db          20
 004B6B85    db          20
 004B6B85    db          20
 004B6B85    db          20
 004B6B85    db          21
 004B6B85    db          21
 004B6B85    db          21
 004B6B85    db          21
 004B6B85    db          22
 004B6B85    db          22
 004B6B85    db          22
 004B6B85    db          22
 004B6B85    db          23
 004B6B85    db          23
 004B6B85    db          23
 004B6B85    db          23
 004B6B85    db          24
 004B6B85    db          24
 004B6B85    db          24
 004B6B85    db          24
 004B6B85    db          25
 004B6B85    db          25
 004B6B85    db          25
 004B6B85    db          25
 004B6B85    db          26
 004B6B85    db          26
 004B6B85    db          26
 004B6B85    db          26
 004B6B85    db          27
 004B6B85    db          27
 004B6B85    db          27
 004B6B85    db          27
 004B6B85    db          28
 004B6B85    db          28
 004B6B85    db          28
 004B6B85    db          28
 004B6B85    db          29
 004B6B85    db          30
 004B6B85    db          31
 004B6B85    db          32
 004B6B85    db          33
 004B6B85    db          34
 004B6B85    db          35
 004B6B85    db          36
 004B6B85    db          37
 004B6B85    dd          004B6FA6
 004B6B85    dd          004B6C8D
 004B6B85    dd          004B6CA3
 004B6B85    dd          004B6CB9
 004B6B85    dd          004B6CCF
 004B6B85    dd          004B6CE5
 004B6B85    dd          004B6CFB
 004B6B85    dd          004B6D11
 004B6B85    dd          004B6D27
 004B6B85    dd          004B6D3D
 004B6B85    dd          004B6D53
 004B6B85    dd          004B6D69
 004B6B85    dd          004B6D7F
 004B6B85    dd          004B6D95
 004B6B85    dd          004B6DAB
 004B6B85    dd          004B6DC1
 004B6B85    dd          004B6DD7
 004B6B85    dd          004B6DED
 004B6B85    dd          004B6E03
 004B6B85    dd          004B6E19
 004B6B85    dd          004B6E2F
 004B6B85    dd          004B6E45
 004B6B85    dd          004B6E5B
 004B6B85    dd          004B6E71
 004B6B85    dd          004B6E87
 004B6B85    dd          004B6E9D
 004B6B85    dd          004B6EB3
 004B6B85    dd          004B6EC9
 004B6B85    dd          004B6EDF
 004B6B85    dd          004B6EF5
 004B6B85    dd          004B6F0B
 004B6B85    dd          004B6F21
 004B6B85    dd          004B6F34
 004B6B85    dd          004B6F47
 004B6B85    dd          004B6F5A
 004B6B85    dd          004B6F6D
 004B6B85    dd          004B6F80
 004B6B85    dd          004B6F93
 004B6C8D    mov         eax,dword ptr [ebp-0C]
 004B6C90    mov         dword ptr [eax+4],1
 004B6C97    mov         dword ptr [ebp-10],2
>004B6C9E    jmp         004B6FB3
 004B6CA3    mov         eax,dword ptr [ebp-0C]
 004B6CA6    mov         dword ptr [eax+4],2
 004B6CAD    mov         dword ptr [ebp-10],5
>004B6CB4    jmp         004B6FB3
 004B6CB9    mov         eax,dword ptr [ebp-0C]
 004B6CBC    mov         dword ptr [eax+4],3
 004B6CC3    mov         dword ptr [ebp-10],8
>004B6CCA    jmp         004B6FB3
 004B6CCF    mov         eax,dword ptr [ebp-0C]
 004B6CD2    mov         dword ptr [eax+4],4
 004B6CD9    mov         dword ptr [ebp-10],0B
>004B6CE0    jmp         004B6FB3
 004B6CE5    mov         eax,dword ptr [ebp-0C]
 004B6CE8    mov         dword ptr [eax+4],5
 004B6CEF    mov         dword ptr [ebp-10],0E
>004B6CF6    jmp         004B6FB3
 004B6CFB    mov         eax,dword ptr [ebp-0C]
 004B6CFE    mov         dword ptr [eax+4],6
 004B6D05    mov         dword ptr [ebp-10],11
>004B6D0C    jmp         004B6FB3
 004B6D11    mov         eax,dword ptr [ebp-0C]
 004B6D14    mov         dword ptr [eax+4],7
 004B6D1B    mov         dword ptr [ebp-10],14
>004B6D22    jmp         004B6FB3
 004B6D27    mov         eax,dword ptr [ebp-0C]
 004B6D2A    mov         dword ptr [eax+4],8
 004B6D31    mov         dword ptr [ebp-10],16
>004B6D38    jmp         004B6FB3
 004B6D3D    mov         eax,dword ptr [ebp-0C]
 004B6D40    mov         dword ptr [eax+4],9
 004B6D47    mov         dword ptr [ebp-10],18
>004B6D4E    jmp         004B6FB3
 004B6D53    mov         eax,dword ptr [ebp-0C]
 004B6D56    mov         dword ptr [eax+4],0A
 004B6D5D    mov         dword ptr [ebp-10],1A
>004B6D64    jmp         004B6FB3
 004B6D69    mov         eax,dword ptr [ebp-0C]
 004B6D6C    mov         dword ptr [eax+4],0B
 004B6D73    mov         dword ptr [ebp-10],1C
>004B6D7A    jmp         004B6FB3
 004B6D7F    mov         eax,dword ptr [ebp-0C]
 004B6D82    mov         dword ptr [eax+4],0C
 004B6D89    mov         dword ptr [ebp-10],1E
>004B6D90    jmp         004B6FB3
 004B6D95    mov         eax,dword ptr [ebp-0C]
 004B6D98    mov         dword ptr [eax+4],0D
 004B6D9F    mov         dword ptr [ebp-10],20
>004B6DA6    jmp         004B6FB3
 004B6DAB    mov         eax,dword ptr [ebp-0C]
 004B6DAE    mov         dword ptr [eax+4],0E
 004B6DB5    mov         dword ptr [ebp-10],24
>004B6DBC    jmp         004B6FB3
 004B6DC1    mov         eax,dword ptr [ebp-0C]
 004B6DC4    mov         dword ptr [eax+4],0F
 004B6DCB    mov         dword ptr [ebp-10],28
>004B6DD2    jmp         004B6FB3
 004B6DD7    mov         eax,dword ptr [ebp-0C]
 004B6DDA    mov         dword ptr [eax+4],10
 004B6DE1    mov         dword ptr [ebp-10],2C
>004B6DE8    jmp         004B6FB3
 004B6DED    mov         eax,dword ptr [ebp-0C]
 004B6DF0    mov         dword ptr [eax+4],11
 004B6DF7    mov         dword ptr [ebp-10],30
>004B6DFE    jmp         004B6FB3
 004B6E03    mov         eax,dword ptr [ebp-0C]
 004B6E06    mov         dword ptr [eax+4],12
 004B6E0D    mov         dword ptr [ebp-10],34
>004B6E14    jmp         004B6FB3
 004B6E19    mov         eax,dword ptr [ebp-0C]
 004B6E1C    mov         dword ptr [eax+4],13
 004B6E23    mov         dword ptr [ebp-10],38
>004B6E2A    jmp         004B6FB3
 004B6E2F    mov         eax,dword ptr [ebp-0C]
 004B6E32    mov         dword ptr [eax+4],14
 004B6E39    mov         dword ptr [ebp-10],3C
>004B6E40    jmp         004B6FB3
 004B6E45    mov         eax,dword ptr [ebp-0C]
 004B6E48    mov         dword ptr [eax+4],15
 004B6E4F    mov         dword ptr [ebp-10],40
>004B6E56    jmp         004B6FB3
 004B6E5B    mov         eax,dword ptr [ebp-0C]
 004B6E5E    mov         dword ptr [eax+4],16
 004B6E65    mov         dword ptr [ebp-10],44
>004B6E6C    jmp         004B6FB3
 004B6E71    mov         eax,dword ptr [ebp-0C]
 004B6E74    mov         dword ptr [eax+4],17
 004B6E7B    mov         dword ptr [ebp-10],48
>004B6E82    jmp         004B6FB3
 004B6E87    mov         eax,dword ptr [ebp-0C]
 004B6E8A    mov         dword ptr [eax+4],18
 004B6E91    mov         dword ptr [ebp-10],4C
>004B6E98    jmp         004B6FB3
 004B6E9D    mov         eax,dword ptr [ebp-0C]
 004B6EA0    mov         dword ptr [eax+4],19
 004B6EA7    mov         dword ptr [ebp-10],50
>004B6EAE    jmp         004B6FB3
 004B6EB3    mov         eax,dword ptr [ebp-0C]
 004B6EB6    mov         dword ptr [eax+4],1A
 004B6EBD    mov         dword ptr [ebp-10],54
>004B6EC4    jmp         004B6FB3
 004B6EC9    mov         eax,dword ptr [ebp-0C]
 004B6ECC    mov         dword ptr [eax+4],1B
 004B6ED3    mov         dword ptr [ebp-10],58
>004B6EDA    jmp         004B6FB3
 004B6EDF    mov         eax,dword ptr [ebp-0C]
 004B6EE2    mov         dword ptr [eax+4],1C
 004B6EE9    mov         dword ptr [ebp-10],5C
>004B6EF0    jmp         004B6FB3
 004B6EF5    mov         eax,dword ptr [ebp-0C]
 004B6EF8    mov         dword ptr [eax+4],1D
 004B6EFF    mov         dword ptr [ebp-10],60
>004B6F06    jmp         004B6FB3
 004B6F0B    mov         eax,dword ptr [ebp-0C]
 004B6F0E    mov         dword ptr [eax+4],1E
 004B6F15    mov         dword ptr [ebp-10],61
>004B6F1C    jmp         004B6FB3
 004B6F21    mov         eax,dword ptr [ebp-0C]
 004B6F24    mov         dword ptr [eax+4],1F
 004B6F2B    mov         dword ptr [ebp-10],62
>004B6F32    jmp         004B6FB3
 004B6F34    mov         eax,dword ptr [ebp-0C]
 004B6F37    mov         dword ptr [eax+4],20
 004B6F3E    mov         dword ptr [ebp-10],63
>004B6F45    jmp         004B6FB3
 004B6F47    mov         eax,dword ptr [ebp-0C]
 004B6F4A    mov         dword ptr [eax+4],21
 004B6F51    mov         dword ptr [ebp-10],64
>004B6F58    jmp         004B6FB3
 004B6F5A    mov         eax,dword ptr [ebp-0C]
 004B6F5D    mov         dword ptr [eax+4],22
 004B6F64    mov         dword ptr [ebp-10],65
>004B6F6B    jmp         004B6FB3
 004B6F6D    mov         eax,dword ptr [ebp-0C]
 004B6F70    mov         dword ptr [eax+4],23
 004B6F77    mov         dword ptr [ebp-10],66
>004B6F7E    jmp         004B6FB3
 004B6F80    mov         eax,dword ptr [ebp-0C]
 004B6F83    mov         dword ptr [eax+4],24
 004B6F8A    mov         dword ptr [ebp-10],67
>004B6F91    jmp         004B6FB3
 004B6F93    mov         eax,dword ptr [ebp-0C]
 004B6F96    mov         dword ptr [eax+4],25
 004B6F9D    mov         dword ptr [ebp-10],68
>004B6FA4    jmp         004B6FB3
 004B6FA6    mov         eax,dword ptr [ebp-0C]
 004B6FA9    xor         edx,edx
 004B6FAB    mov         dword ptr [eax+4],edx
 004B6FAE    xor         eax,eax
 004B6FB0    mov         dword ptr [ebp-10],eax
 004B6FB3    xor         eax,eax
 004B6FB5    mov         al,byte ptr [ebp-5]
 004B6FB8    sub         eax,dword ptr [ebp-10]
 004B6FBB    inc         eax
 004B6FBC    mov         edx,dword ptr [ebp-0C]
 004B6FBF    mov         dword ptr [edx+8],eax
 004B6FC2    mov         esp,ebp
 004B6FC4    pop         ebp
 004B6FC5    ret
end;*}

//004B6FC8
{*procedure sub_004B6FC8(?:TThemeServices; ?:TWinControl; ?:?);
begin
 004B6FC8    push        ebp
 004B6FC9    mov         ebp,esp
 004B6FCB    add         esp,0FFFFFFA4
 004B6FCE    push        esi
 004B6FCF    push        edi
 004B6FD0    mov         byte ptr [ebp-9],cl
 004B6FD3    mov         dword ptr [ebp-8],edx
 004B6FD6    mov         dword ptr [ebp-4],eax
 004B6FD9    push        0EC
 004B6FDB    mov         eax,dword ptr [ebp-8]
 004B6FDE    call        TWinControl.GetHandle
 004B6FE3    push        eax
 004B6FE4    call        user32.GetWindowLongA
 004B6FE9    mov         dword ptr [ebp-20],eax
 004B6FEC    test        byte ptr [ebp-1F],2
>004B6FF0    je          004B7134
 004B6FF6    lea         eax,[ebp-40]
 004B6FF9    push        eax
 004B6FFA    mov         eax,dword ptr [ebp-8]
 004B6FFD    call        TWinControl.GetHandle
 004B7002    push        eax
 004B7003    call        user32.GetWindowRect
 004B7008    mov         eax,dword ptr [ebp-3C]
 004B700B    neg         eax
 004B700D    push        eax
 004B700E    mov         eax,dword ptr [ebp-40]
 004B7011    neg         eax
 004B7013    push        eax
 004B7014    lea         eax,[ebp-40]
 004B7017    push        eax
 004B7018    call        user32.OffsetRect
 004B701D    mov         eax,dword ptr [ebp-8]
 004B7020    call        TWinControl.GetHandle
 004B7025    push        eax
 004B7026    call        user32.GetWindowDC
 004B702B    mov         dword ptr [ebp-10],eax
 004B702E    xor         eax,eax
 004B7030    push        ebp
 004B7031    push        4B712D
 004B7036    push        dword ptr fs:[eax]
 004B7039    mov         dword ptr fs:[eax],esp
 004B703C    lea         esi,[ebp-40]
 004B703F    lea         edi,[ebp-30]
 004B7042    movs        dword ptr [edi],dword ptr [esi]
 004B7043    movs        dword ptr [edi],dword ptr [esi]
 004B7044    movs        dword ptr [edi],dword ptr [esi]
 004B7045    movs        dword ptr [edi],dword ptr [esi]
 004B7046    cmp         byte ptr [ebp-9],0
>004B704A    je          004B70C7
 004B704C    push        0F0
 004B704E    mov         eax,dword ptr [ebp-8]
 004B7051    call        TWinControl.GetHandle
 004B7056    push        eax
 004B7057    call        user32.GetWindowLongA
 004B705C    mov         dword ptr [ebp-1C],eax
 004B705F    test        byte ptr [ebp-1A],10
>004B7063    je          004B70C7
 004B7065    test        byte ptr [ebp-1A],20
>004B7069    je          004B70C7
 004B706B    push        2
 004B706D    call        user32.GetSystemMetrics
 004B7072    mov         dword ptr [ebp-18],eax
 004B7075    push        3
 004B7077    call        user32.GetSystemMetrics
 004B707C    mov         dword ptr [ebp-14],eax
 004B707F    push        0FE
 004B7081    push        0FE
 004B7083    lea         eax,[ebp-30]
 004B7086    push        eax
 004B7087    call        user32.InflateRect
 004B708C    mov         eax,dword ptr [ebp-24]
 004B708F    push        eax
 004B7090    lea         eax,[ebp-5C]
 004B7093    push        eax
 004B7094    mov         edx,dword ptr [ebp-24]
 004B7097    sub         edx,dword ptr [ebp-14]
 004B709A    mov         eax,dword ptr [ebp-28]
 004B709D    sub         eax,dword ptr [ebp-18]
 004B70A0    mov         ecx,dword ptr [ebp-28]
 004B70A3    call        Rect
 004B70A8    lea         esi,[ebp-5C]
 004B70AB    lea         edi,[ebp-30]
 004B70AE    movs        dword ptr [edi],dword ptr [esi]
 004B70AF    movs        dword ptr [edi],dword ptr [esi]
 004B70B0    movs        dword ptr [edi],dword ptr [esi]
 004B70B1    movs        dword ptr [edi],dword ptr [esi]
 004B70B2    push        0F
 004B70B4    call        user32.GetSysColorBrush
 004B70B9    push        eax
 004B70BA    lea         eax,[ebp-30]
 004B70BD    push        eax
 004B70BE    mov         eax,dword ptr [ebp-10]
 004B70C1    push        eax
 004B70C2    call        user32.FillRect
 004B70C7    mov         eax,dword ptr [ebp-34]
 004B70CA    sub         eax,2
 004B70CD    push        eax
 004B70CE    mov         eax,dword ptr [ebp-38]
 004B70D1    sub         eax,2
 004B70D4    push        eax
 004B70D5    mov         eax,dword ptr [ebp-3C]
 004B70D8    add         eax,2
 004B70DB    push        eax
 004B70DC    mov         eax,dword ptr [ebp-40]
 004B70DF    add         eax,2;TRect.Left:Longint
 004B70E2    push        eax
 004B70E3    mov         eax,dword ptr [ebp-10]
 004B70E6    push        eax
 004B70E7    call        gdi32.ExcludeClipRect
 004B70EC    lea         ecx,[ebp-4C]
 004B70EF    mov         dl,2
 004B70F1    mov         eax,dword ptr [ebp-4]
 004B70F4    call        004B66C0
 004B70F9    lea         eax,[ebp-40]
 004B70FC    push        eax
 004B70FD    push        0
 004B70FF    lea         ecx,[ebp-4C]
 004B7102    mov         edx,dword ptr [ebp-10]
 004B7105    mov         eax,dword ptr [ebp-4]
 004B7108    call        004B648C
 004B710D    xor         eax,eax
 004B710F    pop         edx
 004B7110    pop         ecx
 004B7111    pop         ecx
 004B7112    mov         dword ptr fs:[eax],edx
 004B7115    push        4B7134
 004B711A    mov         eax,dword ptr [ebp-10]
 004B711D    push        eax
 004B711E    mov         eax,dword ptr [ebp-8]
 004B7121    call        TWinControl.GetHandle
 004B7126    push        eax
 004B7127    call        user32.ReleaseDC
 004B712C    ret
>004B712D    jmp         @HandleFinally
>004B7132    jmp         004B711A
 004B7134    pop         edi
 004B7135    pop         esi
 004B7136    mov         esp,ebp
 004B7138    pop         ebp
 004B7139    ret
end;*}

//004B713C
procedure sub_004B713C(?:TThemeServices);
begin
{*
 004B713C    push        ebp
 004B713D    mov         ebp,esp
 004B713F    push        ecx
 004B7140    mov         dword ptr [ebp-4],eax
 004B7143    mov         eax,dword ptr [ebp-4]
 004B7146    cmp         byte ptr [eax+6],0;TThemeServices.FUseThemes:Boolean
>004B714A    je          004B7154
 004B714C    mov         eax,dword ptr [ebp-4]
 004B714F    call        004B637C
 004B7154    call        00492DF8
 004B7159    mov         edx,dword ptr [ebp-4]
 004B715C    mov         byte ptr [edx+6],al;TThemeServices.FUseThemes:Boolean
 004B715F    pop         ecx
 004B7160    pop         ebp
 004B7161    ret
*}
end;

Initialization
//004B71A8
{*
 004B71A8    push        ebp
 004B71A9    mov         ebp,esp
 004B71AB    sub         dword ptr ds:[55DD88],1
 004B71B2    pop         ebp
 004B71B3    ret
*}
Finalization
//004B7164
{*
 004B7164    push        ebp
 004B7165    mov         ebp,esp
 004B7167    xor         eax,eax
 004B7169    push        ebp
 004B716A    push        4B719F
 004B716F    push        dword ptr fs:[eax]
 004B7172    mov         dword ptr fs:[eax],esp
 004B7175    inc         dword ptr ds:[55DD88]
>004B717B    jne         004B7191
 004B717D    mov         eax,[0055DD8C]
 004B7182    call        TObject.Free
 004B7187    mov         eax,541520;^'Theme manager © 2001, 2002 Mike Lischke'
 004B718C    call        @LStrClr
 004B7191    xor         eax,eax
 004B7193    pop         edx
 004B7194    pop         ecx
 004B7195    pop         ecx
 004B7196    mov         dword ptr fs:[eax],edx
 004B7199    push        4B71A6
 004B719E    ret
>004B719F    jmp         @HandleFinally
>004B71A4    jmp         004B719E
 004B71A6    pop         ebp
 004B71A7    ret
*}
end.