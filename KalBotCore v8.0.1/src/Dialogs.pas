//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Dialogs;

interface

uses
  SysUtils, Classes, StdCtrls;

type
  TCommonDialog = class(TComponent)
  public
    Ctl3D:Boolean;//f30
    FDefWndProc:Pointer;//f34
    HelpContext:THelpContext;//f38
    FHandle:HWND;//f3C
    FObjectInstance:Pointer;//f40
    FTemplate:PChar;//f44
    OnClose:TNotifyEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    OnShow:TNotifyEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    procedure DefaultHandler(var Message:void ); virtual;//0049407C
    destructor Destroy; virtual;//00493FF0
    constructor v2C; virtual;//v2C//00493F8C
    //procedure v30(?:?); virtual;//v30//00494124
    //function v34(?:?):?; virtual;//v34//00494038
    //function v38(?:?; ?:?):?; virtual;//v38//004941B8
    procedure v3C; virtual; abstract;//v3C//00402C24
    //procedure WMDestroy(?:?); message WM_DESTROY;//00494140
    //procedure WMNCDestroy(?:?); message WM_NCDESTROY;//00494194
    //procedure WMInitDialog(?:?); message WM_INITDIALOG;//0049416C
    procedure sub_004942B4; dynamic;//004942B4
    procedure sub_00494290; dynamic;//00494290
  end;
  TMessageForm = class(TForm)
  public
    ..Message:TLabel;//f2F8
    constructor Create;//004944C0
  end;
    constructor sub_00493F8C;//00493F8C
    destructor Destroy;//00493FF0
    //function sub_00494038(?:?):?;//00494038
    procedure DefaultHandler(var Message:void );//0049407C
    //procedure sub_00494124(?:?);//00494124
    //procedure WMDestroy(?:?);//00494140
    //procedure WMInitDialog(?:?);//0049416C
    //procedure WMNCDestroy(?:?);//00494194
    //function sub_004941B8(?:?; ?:?):?;//004941B8
    procedure sub_00494290;//00494290
    procedure sub_004942B4;//004942B4
    //procedure sub_004942D8(?:?; ?:?);//004942D8
    //procedure sub_00494544(?:?; ?:?);//00494544
    //function sub_004949E4(?:?; ?:?; ?:?):?;//004949E4
    //function sub_00494FFC(?:?; ?:?; ?:?; ?:?):?;//00494FFC
    //function sub_00495034(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00495034
    //function sub_00495070(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00495070
    procedure sub_00495128(?:AnsiString; ?:AnsiString; ?:AnsiString);//00495128
    //procedure sub_00495140(?:?; ?:?; ?:?);//00495140
    //function sub_00495174(?:?; ?:?; ?:?):?;//00495174
    //procedure sub_004954D0(?:AnsiString; ?:AnsiString; ?:AnsiString; ?:?);//004954D0
    procedure sub_00495500;//00495500
    procedure _NF__533;//00495598

implementation

//00493F8C
constructor sub_00493F8C;
begin
{*
 00493F8C    push        ebp
 00493F8D    mov         ebp,esp
 00493F8F    add         esp,0FFFFFFF4
 00493F92    test        dl,dl
>00493F94    je          00493F9E
 00493F96    add         esp,0FFFFFFF0
 00493F99    call        @ClassCreate
 00493F9E    mov         dword ptr [ebp-0C],ecx
 00493FA1    mov         byte ptr [ebp-5],dl
 00493FA4    mov         dword ptr [ebp-4],eax
 00493FA7    mov         ecx,dword ptr [ebp-0C]
 00493FAA    xor         edx,edx
 00493FAC    mov         eax,dword ptr [ebp-4]
 00493FAF    call        00482F04
 00493FB4    mov         eax,dword ptr [ebp-4]
 00493FB7    mov         byte ptr [eax+30],1;TCommonDialog.Ctl3D:Boolean
 00493FBB    mov         eax,dword ptr [ebp-4]
 00493FBE    push        eax
 00493FBF    push        4940D0
 00493FC4    call        00484700
 00493FC9    mov         edx,dword ptr [ebp-4]
 00493FCC    mov         dword ptr [edx+40],eax;TCommonDialog.FObjectInstance:Pointer
 00493FCF    mov         eax,dword ptr [ebp-4]
 00493FD2    cmp         byte ptr [ebp-5],0
>00493FD6    je          00493FE7
 00493FD8    call        @AfterConstruction
 00493FDD    pop         dword ptr fs:[0]
 00493FE4    add         esp,0C
 00493FE7    mov         eax,dword ptr [ebp-4]
 00493FEA    mov         esp,ebp
 00493FEC    pop         ebp
 00493FED    ret
*}
end;

//00493FF0
destructor TCommonDialog.Destroy;
begin
{*
 00493FF0    push        ebp
 00493FF1    mov         ebp,esp
 00493FF3    add         esp,0FFFFFFF8
 00493FF6    call        @BeforeDestruction
 00493FFB    mov         byte ptr [ebp-5],dl
 00493FFE    mov         dword ptr [ebp-4],eax
 00494001    mov         eax,dword ptr [ebp-4]
 00494004    cmp         dword ptr [eax+40],0
>00494008    je          00494015
 0049400A    mov         eax,dword ptr [ebp-4]
 0049400D    mov         eax,dword ptr [eax+40]
 00494010    call        004847E0
 00494015    mov         dl,byte ptr [ebp-5]
 00494018    and         dl,0FC
 0049401B    mov         eax,dword ptr [ebp-4]
 0049401E    call        TComponent.Destroy
 00494023    cmp         byte ptr [ebp-5],0
>00494027    jle         00494031
 00494029    mov         eax,dword ptr [ebp-4]
 0049402C    call        @ClassDestroy
 00494031    pop         ecx
 00494032    pop         ecx
 00494033    pop         ebp
 00494034    ret
*}
end;

//00494038
{*function sub_00494038(?:?):?;
begin
 00494038    push        ebp
 00494039    mov         ebp,esp
 0049403B    add         esp,0FFFFFFF4
 0049403E    mov         dword ptr [ebp-8],edx
 00494041    mov         dword ptr [ebp-4],eax
 00494044    mov         byte ptr [ebp-9],0
 00494048    mov         eax,dword ptr [ebp-8]
 0049404B    mov         eax,dword ptr [eax]
 0049404D    cmp         eax,dword ptr ds:[55DCD4];gvar_0055DCD4:LongWord
>00494053    jne         00494074
 00494055    mov         eax,dword ptr [ebp-4]
 00494058    cmp         dword ptr [eax+38],0;TCommonDialog.HelpContext:THelpContext
>0049405C    je          00494074
 0049405E    mov         eax,[0055B4C8];^Application:TApplication
 00494063    mov         eax,dword ptr [eax]
 00494065    mov         edx,dword ptr [ebp-4]
 00494068    mov         edx,dword ptr [edx+38];TCommonDialog.HelpContext:THelpContext
 0049406B    call        004F342C
 00494070    mov         byte ptr [ebp-9],1
 00494074    mov         al,byte ptr [ebp-9]
 00494077    mov         esp,ebp
 00494079    pop         ebp
 0049407A    ret
end;*}

//0049407C
procedure TCommonDialog.DefaultHandler(var Message:void );
begin
{*
 0049407C    push        ebp
 0049407D    mov         ebp,esp
 0049407F    add         esp,0FFFFFFF8
 00494082    mov         dword ptr [ebp-8],edx
 00494085    mov         dword ptr [ebp-4],eax
 00494088    mov         eax,dword ptr [ebp-4]
 0049408B    cmp         dword ptr [eax+3C],0
>0049408F    je          004940C0
 00494091    mov         eax,dword ptr [ebp-8]
 00494094    mov         eax,dword ptr [eax+8]
 00494097    push        eax
 00494098    mov         eax,dword ptr [ebp-8]
 0049409B    mov         eax,dword ptr [eax+4]
 0049409E    push        eax
 0049409F    mov         eax,dword ptr [ebp-8]
 004940A2    mov         eax,dword ptr [eax]
 004940A4    push        eax
 004940A5    mov         eax,dword ptr [ebp-4]
 004940A8    mov         eax,dword ptr [eax+3C];{TObject.DefaultHandler}
 004940AB    push        eax
 004940AC    mov         eax,dword ptr [ebp-4]
 004940AF    mov         eax,dword ptr [eax+34]
 004940B2    push        eax
 004940B3    call        user32.CallWindowProcA
 004940B8    mov         edx,dword ptr [ebp-8]
 004940BB    mov         dword ptr [edx+0C],eax
>004940BE    jmp         004940CB
 004940C0    mov         edx,dword ptr [ebp-8]
 004940C3    mov         eax,dword ptr [ebp-4]
 004940C6    call        TCustomVariantType.DefaultHandler
 004940CB    pop         ecx
 004940CC    pop         ecx
 004940CD    pop         ebp
 004940CE    ret
*}
end;

//00494124
{*procedure sub_00494124(?:?);
begin
 00494124    push        ebp
 00494125    mov         ebp,esp
 00494127    add         esp,0FFFFFFF8
 0049412A    mov         dword ptr [ebp-8],edx
 0049412D    mov         dword ptr [ebp-4],eax
 00494130    mov         edx,dword ptr [ebp-8]
 00494133    mov         eax,dword ptr [ebp-4]
 00494136    mov         ecx,dword ptr [eax]
 00494138    call        dword ptr [ecx-14];TObject.Dispatch
 0049413B    pop         ecx
 0049413C    pop         ecx
 0049413D    pop         ebp
 0049413E    ret
end;*}

//00494140
{*procedure TCommonDialog.WMDestroy(?:?);
begin
 00494140    push        ebp
 00494141    mov         ebp,esp
 00494143    add         esp,0FFFFFFF8
 00494146    push        esi
 00494147    mov         dword ptr [ebp-8],edx
 0049414A    mov         dword ptr [ebp-4],eax
 0049414D    mov         edx,dword ptr [ebp-8]
 00494150    mov         eax,dword ptr [ebp-4]
 00494153    mov         ecx,dword ptr [eax]
 00494155    call        dword ptr [ecx-10];TCommonDialog.DefaultHandler
 00494158    mov         eax,dword ptr [ebp-4]
 0049415B    mov         si,0FFEF
 0049415F    call        @CallDynaInst;TCommonDialog.sub_00494290
 00494164    pop         esi
 00494165    pop         ecx
 00494166    pop         ecx
 00494167    pop         ebp
 00494168    ret
end;*}

//0049416C
{*procedure TCommonDialog.WMInitDialog(?:?);
begin
 0049416C    push        ebp
 0049416D    mov         ebp,esp
 0049416F    add         esp,0FFFFFFF8
 00494172    push        esi
 00494173    mov         dword ptr [ebp-8],edx
 00494176    mov         dword ptr [ebp-4],eax
 00494179    mov         eax,dword ptr [ebp-4]
 0049417C    mov         si,0FFEE
 00494180    call        @CallDynaInst;TCommonDialog.sub_004942B4
 00494185    mov         eax,dword ptr [ebp-8]
 00494188    xor         edx,edx
 0049418A    mov         dword ptr [eax+0C],edx
 0049418D    pop         esi
 0049418E    pop         ecx
 0049418F    pop         ecx
 00494190    pop         ebp
 00494191    ret
end;*}

//00494194
{*procedure TCommonDialog.WMNCDestroy(?:?);
begin
 00494194    push        ebp
 00494195    mov         ebp,esp
 00494197    add         esp,0FFFFFFF8
 0049419A    mov         dword ptr [ebp-8],edx
 0049419D    mov         dword ptr [ebp-4],eax
 004941A0    mov         edx,dword ptr [ebp-8]
 004941A3    mov         eax,dword ptr [ebp-4]
 004941A6    mov         ecx,dword ptr [eax]
 004941A8    call        dword ptr [ecx-10];TCommonDialog.DefaultHandler
 004941AB    mov         eax,dword ptr [ebp-4]
 004941AE    xor         edx,edx
 004941B0    mov         dword ptr [eax+3C],edx;TCommonDialog.FHandle:HWND
 004941B3    pop         ecx
 004941B4    pop         ecx
 004941B5    pop         ebp
 004941B6    ret
end;*}

//004941B8
{*function sub_004941B8(?:?; ?:?):?;
begin
 004941B8    push        ebp
 004941B9    mov         ebp,esp
 004941BB    add         esp,0FFFFFFE0
 004941BE    mov         dword ptr [ebp-10],ecx
 004941C1    mov         dword ptr [ebp-0C],edx
 004941C4    mov         dword ptr [ebp-8],eax
 004941C7    call        user32.GetActiveWindow
 004941CC    mov         dword ptr [ebp-18],eax
 004941CF    xor         eax,eax
 004941D1    call        004E79D8
 004941D6    mov         dword ptr [ebp-1C],eax
 004941D9    call        004E7898
 004941DE    mov         dword ptr [ebp-20],eax
 004941E1    xor         eax,eax
 004941E3    push        ebp
 004941E4    push        49427F
 004941E9    push        dword ptr fs:[eax]
 004941EC    mov         dword ptr fs:[eax],esp
 004941EF    mov         eax,dword ptr [ebp-8]
 004941F2    push        eax
 004941F3    mov         eax,dword ptr [eax]
 004941F5    mov         eax,dword ptr [eax+34];TCommonDialog.FDefWndProc:Pointer
 004941F8    push        eax
 004941F9    mov         eax,[0055B4C8];^Application:TApplication
 004941FE    mov         eax,dword ptr [eax]
 00494200    call        004F2C28
 00494205    fnstcw      word ptr [ebp-2]
 00494208    xor         eax,eax
 0049420A    push        ebp
 0049420B    push        494251
 00494210    push        dword ptr fs:[eax]
 00494213    mov         dword ptr fs:[eax],esp
 00494216    mov         eax,dword ptr [ebp-8]
 00494219    mov         [00541100],eax;gvar_00541100:TCommonDialog
 0049421E    mov         eax,dword ptr [ebp-10]
 00494221    push        eax
 00494222    call        dword ptr [ebp-0C]
 00494225    mov         dword ptr [ebp-14],eax
 00494228    xor         eax,eax
 0049422A    pop         edx
 0049422B    pop         ecx
 0049422C    pop         ecx
 0049422D    mov         dword ptr fs:[eax],edx
 00494230    push        494258
 00494235    fnclex
 00494237    fldcw       word ptr [ebp-2]
 0049423A    mov         eax,dword ptr [ebp-8]
 0049423D    push        eax
 0049423E    mov         eax,dword ptr [eax]
 00494240    mov         eax,dword ptr [eax+34];TCommonDialog.FDefWndProc:Pointer
 00494243    push        eax
 00494244    mov         eax,[0055B4C8];^Application:TApplication
 00494249    mov         eax,dword ptr [eax]
 0049424B    call        004F2CA0
 00494250    ret
>00494251    jmp         @HandleFinally
>00494256    jmp         00494235
 00494258    xor         eax,eax
 0049425A    pop         edx
 0049425B    pop         ecx
 0049425C    pop         ecx
 0049425D    mov         dword ptr fs:[eax],edx
 00494260    push        494286
 00494265    mov         eax,dword ptr [ebp-1C]
 00494268    call        004E7A90
 0049426D    mov         eax,dword ptr [ebp-18]
 00494270    push        eax
 00494271    call        user32.SetActiveWindow
 00494276    mov         eax,dword ptr [ebp-20]
 00494279    call        004E78AC
 0049427E    ret
>0049427F    jmp         @HandleFinally
>00494284    jmp         00494265
 00494286    mov         eax,dword ptr [ebp-14]
 00494289    mov         esp,ebp
 0049428B    pop         ebp
 0049428C    ret
end;*}

//00494290
procedure TCommonDialog.sub_00494290;
begin
{*
 00494290    push        ebp
 00494291    mov         ebp,esp
 00494293    push        ecx
 00494294    push        ebx
 00494295    mov         dword ptr [ebp-4],eax
 00494298    mov         eax,dword ptr [ebp-4]
 0049429B    cmp         word ptr [eax+4A],0;TCommonDialog.?f4A:word
>004942A0    je          004942AE
 004942A2    mov         ebx,dword ptr [ebp-4]
 004942A5    mov         edx,dword ptr [ebp-4]
 004942A8    mov         eax,dword ptr [ebx+4C];TCommonDialog.?f4C:dword
 004942AB    call        dword ptr [ebx+48];TCommonDialog.OnClose
 004942AE    pop         ebx
 004942AF    pop         ecx
 004942B0    pop         ebp
 004942B1    ret
*}
end;

//004942B4
procedure TCommonDialog.sub_004942B4;
begin
{*
 004942B4    push        ebp
 004942B5    mov         ebp,esp
 004942B7    push        ecx
 004942B8    push        ebx
 004942B9    mov         dword ptr [ebp-4],eax
 004942BC    mov         eax,dword ptr [ebp-4]
 004942BF    cmp         word ptr [eax+52],0;TCommonDialog.?f52:word
>004942C4    je          004942D2
 004942C6    mov         ebx,dword ptr [ebp-4]
 004942C9    mov         edx,dword ptr [ebp-4]
 004942CC    mov         eax,dword ptr [ebx+54];TCommonDialog.?f54:dword
 004942CF    call        dword ptr [ebx+50];TCommonDialog.OnShow
 004942D2    pop         ebx
 004942D3    pop         ecx
 004942D4    pop         ebp
 004942D5    ret
*}
end;

//004942D8
{*procedure sub_004942D8(?:?; ?:?);
begin
 004942D8    push        ebp
 004942D9    mov         ebp,esp
 004942DB    add         esp,0FFFFFFC0
 004942DE    mov         dword ptr [ebp-8],edx
 004942E1    mov         dword ptr [ebp-4],eax
 004942E4    xor         eax,eax
 004942E6    mov         dword ptr [ebp-0C],eax
 004942E9    mov         eax,dword ptr [ebp-0C]
 004942EC    add         eax,41
 004942EF    mov         edx,dword ptr [ebp-0C]
 004942F2    mov         byte ptr [ebp+edx-40],al
 004942F6    inc         dword ptr [ebp-0C]
 004942F9    cmp         dword ptr [ebp-0C],1A
>004942FD    jne         004942E9
 004942FF    xor         eax,eax
 00494301    mov         dword ptr [ebp-0C],eax
 00494304    mov         eax,dword ptr [ebp-0C]
 00494307    add         eax,61
 0049430A    mov         edx,dword ptr [ebp-0C]
 0049430D    mov         byte ptr [ebp+edx-26],al
 00494311    inc         dword ptr [ebp-0C]
 00494314    cmp         dword ptr [ebp-0C],1A
>00494318    jne         00494304
 0049431A    mov         eax,dword ptr [ebp-8]
 0049431D    push        eax
 0049431E    push        34
 00494320    lea         eax,[ebp-40]
 00494323    push        eax
 00494324    mov         eax,dword ptr [ebp-4]
 00494327    call        TCanvas.GetHandle
 0049432C    push        eax
 0049432D    call        gdi32.GetTextExtentPointA
 00494332    mov         eax,dword ptr [ebp-8]
 00494335    mov         eax,dword ptr [eax]
 00494337    mov         ecx,34
 0049433C    cdq
 0049433D    idiv        eax,ecx
 0049433F    mov         edx,dword ptr [ebp-8]
 00494342    mov         dword ptr [edx],eax
 00494344    mov         esp,ebp
 00494346    pop         ebp
 00494347    ret
end;*}

//004944C0
constructor TMessageForm.Create;
begin
{*
 004944C0    push        ebp
 004944C1    mov         ebp,esp
 004944C3    add         esp,0FFFFFEA0
 004944C9    test        dl,dl
>004944CB    je          004944D5
 004944CD    add         esp,0FFFFFFF0
 004944D0    call        @ClassCreate
 004944D5    mov         dword ptr [ebp-0C],ecx
 004944D8    mov         byte ptr [ebp-5],dl
 004944DB    mov         dword ptr [ebp-4],eax
 004944DE    push        0
 004944E0    mov         ecx,dword ptr [ebp-0C]
 004944E3    xor         edx,edx
 004944E5    mov         eax,dword ptr [ebp-4]
 004944E8    call        004E9AB4
 004944ED    mov         dword ptr [ebp-160],154
 004944F7    push        0
 004944F9    lea         eax,[ebp-160]
 004944FF    push        eax
 00494500    push        0
 00494502    push        29
 00494504    call        user32.SystemParametersInfoA
 00494509    test        eax,eax
>0049450B    je          00494523
 0049450D    lea         eax,[ebp-48]
 00494510    push        eax
 00494511    call        gdi32.CreateFontIndirectA
 00494516    mov         edx,eax
 00494518    mov         eax,dword ptr [ebp-4]
 0049451B    mov         eax,dword ptr [eax+68]
 0049451E    call        00487000
 00494523    mov         eax,dword ptr [ebp-4]
 00494526    cmp         byte ptr [ebp-5],0
>0049452A    je          0049453B
 0049452C    call        @AfterConstruction
 00494531    pop         dword ptr fs:[0]
 00494538    add         esp,0C
 0049453B    mov         eax,dword ptr [ebp-4]
 0049453E    mov         esp,ebp
 00494540    pop         ebp
 00494541    ret
*}
end;

//00494544
{*procedure sub_00494544(?:?; ?:?);
begin
 00494544    push        ebp
 00494545    mov         ebp,esp
 00494547    add         esp,0FFFFFFF8
 0049454A    mov         dword ptr [ebp-8],edx
 0049454D    mov         dword ptr [ebp-4],eax
 00494550    mov         eax,[0055B4C8];^Application:TApplication
 00494555    mov         eax,dword ptr [eax]
 00494557    mov         edx,dword ptr [ebp-4]
 0049455A    mov         edx,dword ptr [edx+158]
 00494560    call        004F342C
 00494565    pop         ecx
 00494566    pop         ecx
 00494567    pop         ebp
 00494568    ret
end;*}

//004949E4
{*function sub_004949E4(?:?; ?:?; ?:?):?;
begin
 004949E4    push        ebp
 004949E5    mov         ebp,esp
 004949E7    add         esp,0FFFFFF84
 004949EA    push        ebx
 004949EB    push        esi
 004949EC    xor         ebx,ebx
 004949EE    mov         dword ptr [ebp-7C],ebx
 004949F1    mov         dword ptr [ebp-78],ebx
 004949F4    mov         dword ptr [ebp-74],ebx
 004949F7    mov         dword ptr [ebp-70],ebx
 004949FA    mov         word ptr [ebp-7],cx
 004949FE    mov         byte ptr [ebp-5],dl
 00494A01    mov         dword ptr [ebp-4],eax
 00494A04    xor         eax,eax
 00494A06    push        ebp
 00494A07    push        494FCA
 00494A0C    push        dword ptr fs:[eax]
 00494A0F    mov         dword ptr fs:[eax],esp
 00494A12    mov         ecx,dword ptr ds:[55B4C8];^Application:TApplication
 00494A18    mov         ecx,dword ptr [ecx]
 00494A1A    mov         dl,1
 00494A1C    mov         eax,[00494348];TMessageForm
 00494A21    call        TMessageForm.Create;TMessageForm.Create
 00494A26    mov         dword ptr [ebp-0C],eax
 00494A29    mov         eax,[0055B4C8];^Application:TApplication
 00494A2E    mov         eax,dword ptr [eax]
 00494A30    mov         dl,byte ptr [eax+34];TApplication.FBiDiMode:TBiDiMode
 00494A33    mov         eax,dword ptr [ebp-0C]
 00494A36    mov         ecx,dword ptr [eax]
 00494A38    call        dword ptr [ecx+70];TPanel.SetBiDiMode
 00494A3B    mov         dl,3
 00494A3D    mov         eax,dword ptr [ebp-0C]
 00494A40    call        TForm.SetBorderStyle
 00494A45    mov         eax,dword ptr [ebp-0C]
 00494A48    call        004EB87C
 00494A4D    mov         edx,dword ptr [ebp-0C]
 00494A50    mov         edx,dword ptr [edx+68];TMessageForm.FFont:TFont
 00494A53    call        TCanvas.SetFont
 00494A58    mov         eax,dword ptr [ebp-0C]
 00494A5B    mov         byte ptr [eax+22D],1;TMessageForm.FKeyPreview:Boolean
 00494A62    mov         eax,dword ptr [ebp-0C]
 00494A65    mov         edx,dword ptr [ebp-0C]
 00494A68    mov         dword ptr [eax+1DC],edx;TMessageForm.?f1DC:TMessageForm
 00494A6E    mov         dword ptr [eax+1D8],49456C;TMessageForm.FOnKeyDown:TKeyEvent
 00494A78    mov         eax,dword ptr [ebp-0C]
 00494A7B    call        004EB87C
 00494A80    lea         edx,[ebp-14]
 00494A83    call        004942D8
 00494A88    push        4
 00494A8A    mov         eax,dword ptr [ebp-14]
 00494A8D    push        eax
 00494A8E    push        8
 00494A90    call        kernel32.MulDiv
 00494A95    mov         dword ptr [ebp-18],eax
 00494A98    push        8
 00494A9A    mov         eax,dword ptr [ebp-10]
 00494A9D    push        eax
 00494A9E    push        8
 00494AA0    call        kernel32.MulDiv
 00494AA5    mov         dword ptr [ebp-1C],eax
 00494AA8    push        4
 00494AAA    mov         eax,dword ptr [ebp-14]
 00494AAD    push        eax
 00494AAE    push        0A
 00494AB0    call        kernel32.MulDiv
 00494AB5    mov         dword ptr [ebp-20],eax
 00494AB8    push        8
 00494ABA    mov         eax,dword ptr [ebp-10]
 00494ABD    push        eax
 00494ABE    push        0A
 00494AC0    call        kernel32.MulDiv
 00494AC5    mov         dword ptr [ebp-24],eax
 00494AC8    push        4
 00494ACA    mov         eax,dword ptr [ebp-14]
 00494ACD    push        eax
 00494ACE    push        32
 00494AD0    call        kernel32.MulDiv
 00494AD5    mov         dword ptr [ebp-28],eax
 00494AD8    mov         byte ptr [ebp-49],0
 00494ADC    mov         al,byte ptr [ebp-49]
 00494ADF    cmp         al,0F
>00494AE1    ja          00494AEA
 00494AE3    and         eax,7F
 00494AE6    bt          dword ptr [ebp-7],eax
>00494AEA    jae         00494B89
 00494AF0    xor         eax,eax
 00494AF2    mov         al,byte ptr [ebp-49]
 00494AF5    cmp         dword ptr [eax*4+55DCDC],0;gvar_0055DCDC
>00494AFD    jne         00494B69
 00494AFF    push        0
 00494B01    lea         eax,[ebp-6C]
 00494B04    push        eax
 00494B05    xor         ecx,ecx
 00494B07    xor         edx,edx
 00494B09    xor         eax,eax
 00494B0B    call        Rect
 00494B10    mov         eax,dword ptr [ebp-0C]
 00494B13    call        004CDFAC
 00494B18    or          eax,420
 00494B1D    push        eax
 00494B1E    lea         eax,[ebp-6C]
 00494B21    push        eax
 00494B22    push        0FF
 00494B24    lea         edx,[ebp-70]
 00494B27    xor         eax,eax
 00494B29    mov         al,byte ptr [ebp-49]
 00494B2C    mov         eax,dword ptr [eax*4+54115C];^SMsgDlgYes:TResStringRec
 00494B33    call        LoadResString
 00494B38    mov         eax,dword ptr [ebp-70]
 00494B3B    call        @LStrToPChar
 00494B40    push        eax
 00494B41    mov         eax,dword ptr [ebp-0C]
 00494B44    call        004EB87C
 00494B49    call        TCanvas.GetHandle
 00494B4E    push        eax
 00494B4F    call        user32.DrawTextA
 00494B54    mov         eax,dword ptr [ebp-64]
 00494B57    sub         eax,dword ptr [ebp-6C]
 00494B5A    add         eax,8
 00494B5D    xor         edx,edx
 00494B5F    mov         dl,byte ptr [ebp-49]
 00494B62    mov         dword ptr [edx*4+55DCDC],eax;gvar_0055DCDC
 00494B69    xor         eax,eax
 00494B6B    mov         al,byte ptr [ebp-49]
 00494B6E    mov         eax,dword ptr [eax*4+55DCDC];gvar_0055DCDC
 00494B75    cmp         eax,dword ptr [ebp-28]
>00494B78    jle         00494B89
 00494B7A    xor         eax,eax
 00494B7C    mov         al,byte ptr [ebp-49]
 00494B7F    mov         eax,dword ptr [eax*4+55DCDC];gvar_0055DCDC
 00494B86    mov         dword ptr [ebp-28],eax
 00494B89    inc         byte ptr [ebp-49]
 00494B8C    cmp         byte ptr [ebp-49],0B
>00494B90    jne         00494ADC
 00494B96    push        8
 00494B98    mov         eax,dword ptr [ebp-10]
 00494B9B    push        eax
 00494B9C    push        0E
 00494B9E    call        kernel32.MulDiv
 00494BA3    mov         dword ptr [ebp-2C],eax
 00494BA6    push        4
 00494BA8    mov         eax,dword ptr [ebp-14]
 00494BAB    push        eax
 00494BAC    push        4
 00494BAE    call        kernel32.MulDiv
 00494BB3    mov         dword ptr [ebp-30],eax
 00494BB6    push        0
 00494BB8    mov         eax,[0055B6D8];^Screen:TScreen
 00494BBD    mov         eax,dword ptr [eax]
 00494BBF    call        004F001C
 00494BC4    sar         eax,1
>00494BC6    jns         00494BCB
 00494BC8    adc         eax,0
 00494BCB    push        eax
 00494BCC    push        0
 00494BCE    push        0
 00494BD0    lea         eax,[ebp-6C]
 00494BD3    push        eax
 00494BD4    call        user32.SetRect
 00494BD9    mov         eax,dword ptr [ebp-0C]
 00494BDC    call        004CDFAC
 00494BE1    or          eax,450
 00494BE6    push        eax
 00494BE7    lea         eax,[ebp-6C]
 00494BEA    push        eax
 00494BEB    mov         eax,dword ptr [ebp-4]
 00494BEE    call        @DynArrayLength
 00494BF3    inc         eax
 00494BF4    push        eax
 00494BF5    mov         eax,dword ptr [ebp-4]
 00494BF8    call        @LStrToPChar
 00494BFD    push        eax
 00494BFE    mov         eax,dword ptr [ebp-0C]
 00494C01    call        004EB87C
 00494C06    call        TCanvas.GetHandle
 00494C0B    push        eax
 00494C0C    call        user32.DrawTextA
 00494C11    xor         eax,eax
 00494C13    mov         al,byte ptr [ebp-5]
 00494C16    mov         eax,dword ptr [eax*4+54111C]
 00494C1D    mov         dword ptr [ebp-50],eax
 00494C20    mov         eax,dword ptr [ebp-64]
 00494C23    mov         dword ptr [ebp-3C],eax
 00494C26    mov         eax,dword ptr [ebp-60]
 00494C29    mov         dword ptr [ebp-40],eax
 00494C2C    cmp         dword ptr [ebp-50],0
>00494C30    je          00494C48
 00494C32    mov         eax,dword ptr [ebp-20]
 00494C35    add         eax,20
 00494C38    add         dword ptr [ebp-3C],eax
 00494C3B    cmp         dword ptr [ebp-40],20
>00494C3F    jge         00494C48
 00494C41    mov         dword ptr [ebp-40],20
 00494C48    xor         eax,eax
 00494C4A    mov         dword ptr [ebp-34],eax
 00494C4D    mov         byte ptr [ebp-49],0
 00494C51    mov         al,byte ptr [ebp-49]
 00494C54    cmp         al,0F
>00494C56    ja          00494C5F
 00494C58    and         eax,7F
 00494C5B    bt          dword ptr [ebp-7],eax
>00494C5F    jae         00494C64
 00494C61    inc         dword ptr [ebp-34]
 00494C64    inc         byte ptr [ebp-49]
 00494C67    cmp         byte ptr [ebp-49],0B
>00494C6B    jne         00494C51
 00494C6D    xor         eax,eax
 00494C6F    mov         dword ptr [ebp-38],eax
 00494C72    cmp         dword ptr [ebp-34],0
>00494C76    je          00494C8B
 00494C78    mov         eax,dword ptr [ebp-28]
 00494C7B    imul        dword ptr [ebp-34]
 00494C7E    mov         edx,dword ptr [ebp-34]
 00494C81    dec         edx
 00494C82    imul        edx,dword ptr [ebp-30]
 00494C86    add         eax,edx
 00494C88    mov         dword ptr [ebp-38],eax
 00494C8B    mov         edx,dword ptr [ebp-38]
 00494C8E    mov         eax,dword ptr [ebp-3C]
 00494C91    call        0048FCCC
 00494C96    mov         edx,eax
 00494C98    mov         eax,dword ptr [ebp-18]
 00494C9B    add         eax,eax
 00494C9D    add         edx,eax
 00494C9F    mov         eax,dword ptr [ebp-0C]
 00494CA2    call        TForm.SetClientWidth
 00494CA7    mov         edx,dword ptr [ebp-40]
 00494CAA    add         edx,dword ptr [ebp-2C]
 00494CAD    add         edx,dword ptr [ebp-24]
 00494CB0    mov         eax,dword ptr [ebp-1C]
 00494CB3    add         eax,eax
 00494CB5    add         edx,eax
 00494CB7    mov         eax,dword ptr [ebp-0C]
 00494CBA    call        TForm.SetClientHeight
 00494CBF    mov         eax,[0055B6D8];^Screen:TScreen
 00494CC4    mov         eax,dword ptr [eax]
 00494CC6    call        004F001C
 00494CCB    mov         edx,eax
 00494CCD    sar         edx,1
>00494CCF    jns         00494CD4
 00494CD1    adc         edx,0
 00494CD4    mov         eax,dword ptr [ebp-0C]
 00494CD7    mov         eax,dword ptr [eax+48];TMessageForm.Width:Integer
 00494CDA    sar         eax,1
>00494CDC    jns         00494CE1
 00494CDE    adc         eax,0
 00494CE1    sub         edx,eax
 00494CE3    mov         eax,dword ptr [ebp-0C]
 00494CE6    call        TTabSheet.SetLeft
 00494CEB    mov         eax,[0055B6D8];^Screen:TScreen
 00494CF0    mov         eax,dword ptr [eax]
 00494CF2    call        004EFFFC
 00494CF7    mov         edx,eax
 00494CF9    sar         edx,1
>00494CFB    jns         00494D00
 00494CFD    adc         edx,0
 00494D00    mov         eax,dword ptr [ebp-0C]
 00494D03    mov         eax,dword ptr [eax+4C];TMessageForm.Height:Integer
 00494D06    sar         eax,1
>00494D08    jns         00494D0D
 00494D0A    adc         eax,0
 00494D0D    sub         edx,eax
 00494D0F    mov         eax,dword ptr [ebp-0C]
 00494D12    call        TTabSheet.SetTop
 00494D17    cmp         byte ptr [ebp-5],4
>00494D1B    je          00494D3E
 00494D1D    lea         edx,[ebp-74]
 00494D20    xor         eax,eax
 00494D22    mov         al,byte ptr [ebp-5]
 00494D25    mov         eax,dword ptr [eax*4+541108];^SMsgDlgWarning:TResStringRec
 00494D2C    call        LoadResString
 00494D31    mov         edx,dword ptr [ebp-74]
 00494D34    mov         eax,dword ptr [ebp-0C]
 00494D37    call        TControl.SetText
>00494D3C    jmp         00494D58
 00494D3E    lea         edx,[ebp-78]
 00494D41    mov         eax,[0055B4C8];^Application:TApplication
 00494D46    mov         eax,dword ptr [eax]
 00494D48    call        004F2858
 00494D4D    mov         edx,dword ptr [ebp-78]
 00494D50    mov         eax,dword ptr [ebp-0C]
 00494D53    call        TControl.SetText
 00494D58    cmp         dword ptr [ebp-50],0
>00494D5C    je          00494DBD
 00494D5E    mov         ecx,dword ptr [ebp-0C]
 00494D61    mov         dl,1
 00494D63    mov         eax,[004956F0];TImage
 00494D68    call        TImage.Create;TImage.Create
 00494D6D    mov         dword ptr [ebp-54],eax
 00494D70    mov         edx,494FE4;'Image'
 00494D75    mov         eax,dword ptr [ebp-54]
 00494D78    mov         ecx,dword ptr [eax]
 00494D7A    call        dword ptr [ecx+18];TImage.sub_004CAC68
 00494D7D    mov         edx,dword ptr [ebp-0C]
 00494D80    mov         eax,dword ptr [ebp-54]
 00494D83    mov         ecx,dword ptr [eax]
 00494D85    call        dword ptr [ecx+68];TImage.sub_004CAD7C
 00494D88    mov         eax,dword ptr [ebp-50]
 00494D8B    push        eax
 00494D8C    push        0
 00494D8E    call        user32.LoadIconA
 00494D93    push        eax
 00494D94    mov         eax,dword ptr [ebp-54]
 00494D97    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00494D9D    call        0048A978
 00494DA2    pop         edx
 00494DA3    call        0048F4E4
 00494DA8    push        20
 00494DAA    push        20
 00494DAC    mov         ecx,dword ptr [ebp-1C]
 00494DAF    mov         edx,dword ptr [ebp-18]
 00494DB2    mov         eax,dword ptr [ebp-54]
 00494DB5    mov         ebx,dword ptr [eax]
 00494DB7    call        dword ptr [ebx+84];TImage.sub_004CA110
 00494DBD    mov         ecx,dword ptr [ebp-0C]
 00494DC0    mov         dl,1
 00494DC2    mov         eax,[004B7BE0];TLabel
 00494DC7    call        TCustomLabel.Create;TLabel.Create
 00494DCC    mov         edx,dword ptr [ebp-0C]
 00494DCF    mov         dword ptr [edx+2F8],eax;TMessageForm....Message:TLabel
 00494DD5    mov         eax,dword ptr [ebp-0C]
 00494DD8    mov         eax,dword ptr [eax+2F8];TMessageForm.....Message:TLabel
 00494DDE    mov         dword ptr [ebp-58],eax
 00494DE1    mov         edx,494FF4;'Message'
 00494DE6    mov         eax,dword ptr [ebp-58]
 00494DE9    mov         ecx,dword ptr [eax]
 00494DEB    call        dword ptr [ecx+18];TLabel.sub_004CAC68
 00494DEE    mov         edx,dword ptr [ebp-0C]
 00494DF1    mov         eax,dword ptr [ebp-58]
 00494DF4    mov         ecx,dword ptr [eax]
 00494DF6    call        dword ptr [ecx+68];TLabel.sub_004CAD7C
 00494DF9    mov         dl,1
 00494DFB    mov         eax,dword ptr [ebp-58]
 00494DFE    call        TBoundLabel.SetWordWrap
 00494E03    mov         edx,dword ptr [ebp-4]
 00494E06    mov         eax,dword ptr [ebp-58]
 00494E09    call        TControl.SetText
 00494E0E    lea         edx,[ebp-6C]
 00494E11    mov         eax,dword ptr [ebp-58]
 00494E14    call        004CA6F8
 00494E19    mov         eax,dword ptr [ebp-0C]
 00494E1C    mov         dl,byte ptr [eax+5F];TMessageForm.FBiDiMode:TBiDiMode
 00494E1F    mov         eax,dword ptr [ebp-58]
 00494E22    mov         ecx,dword ptr [eax]
 00494E24    call        dword ptr [ecx+70];TPanel.SetBiDiMode
 00494E27    mov         eax,dword ptr [ebp-3C]
 00494E2A    sub         eax,dword ptr [ebp-64]
 00494E2D    add         eax,dword ptr [ebp-18]
 00494E30    mov         dword ptr [ebp-48],eax
 00494E33    mov         eax,dword ptr [ebp-58]
 00494E36    mov         si,0FFC8
 00494E3A    call        @CallDynaInst;TControl.sub_004CB93C
 00494E3F    test        al,al
>00494E41    je          00494E57
 00494E43    mov         eax,dword ptr [ebp-0C]
 00494E46    call        TControl.GetClientWidth
 00494E4B    sub         eax,dword ptr [ebp-48]
 00494E4E    mov         edx,dword ptr [ebp-58]
 00494E51    sub         eax,dword ptr [edx+48]
 00494E54    mov         dword ptr [ebp-48],eax
 00494E57    mov         eax,dword ptr [ebp-64]
 00494E5A    push        eax
 00494E5B    mov         eax,dword ptr [ebp-60]
 00494E5E    push        eax
 00494E5F    mov         ecx,dword ptr [ebp-1C]
 00494E62    mov         edx,dword ptr [ebp-48]
 00494E65    mov         eax,dword ptr [ebp-58]
 00494E68    mov         ebx,dword ptr [eax]
 00494E6A    call        dword ptr [ebx+84];TLabel.sub_004CA110
 00494E70    test        byte ptr [ebp-7],4
>00494E74    je          00494E7C
 00494E76    mov         byte ptr [ebp-4A],2
>00494E7A    jmp         00494E8C
 00494E7C    test        byte ptr [ebp-7],1
>00494E80    je          00494E88
 00494E82    mov         byte ptr [ebp-4A],0
>00494E86    jmp         00494E8C
 00494E88    mov         byte ptr [ebp-4A],5
 00494E8C    test        byte ptr [ebp-7],8
>00494E90    je          00494E98
 00494E92    mov         byte ptr [ebp-4B],3
>00494E96    jmp         00494EA8
 00494E98    test        byte ptr [ebp-7],2
>00494E9C    je          00494EA4
 00494E9E    mov         byte ptr [ebp-4B],1
>00494EA2    jmp         00494EA8
 00494EA4    mov         byte ptr [ebp-4B],2
 00494EA8    mov         eax,dword ptr [ebp-0C]
 00494EAB    call        TControl.GetClientWidth
 00494EB0    sub         eax,dword ptr [ebp-38]
 00494EB3    sar         eax,1
>00494EB5    jns         00494EBA
 00494EB7    adc         eax,0
 00494EBA    mov         dword ptr [ebp-44],eax
 00494EBD    mov         byte ptr [ebp-49],0
 00494EC1    mov         al,byte ptr [ebp-49]
 00494EC4    cmp         al,0F
>00494EC6    ja          00494ECF
 00494EC8    and         eax,7F
 00494ECB    bt          dword ptr [ebp-7],eax
>00494ECF    jae         00494FA2
 00494ED5    mov         ecx,dword ptr [ebp-0C]
 00494ED8    mov         dl,1
 00494EDA    mov         eax,[004B9EAC];TButton
 00494EDF    call        TButton.Create;TButton.Create
 00494EE4    mov         dword ptr [ebp-5C],eax
 00494EE7    xor         eax,eax
 00494EE9    mov         al,byte ptr [ebp-49]
 00494EEC    mov         edx,dword ptr [eax*4+541130]
 00494EF3    mov         eax,dword ptr [ebp-5C]
 00494EF6    mov         ecx,dword ptr [eax]
 00494EF8    call        dword ptr [ecx+18];TButton.sub_004CAC68
 00494EFB    mov         edx,dword ptr [ebp-0C]
 00494EFE    mov         eax,dword ptr [ebp-5C]
 00494F01    mov         ecx,dword ptr [eax]
 00494F03    call        dword ptr [ecx+68];TButton.sub_004CAD7C
 00494F06    lea         edx,[ebp-7C]
 00494F09    xor         eax,eax
 00494F0B    mov         al,byte ptr [ebp-49]
 00494F0E    mov         eax,dword ptr [eax*4+54115C];^SMsgDlgYes:TResStringRec
 00494F15    call        LoadResString
 00494F1A    mov         edx,dword ptr [ebp-7C]
 00494F1D    mov         eax,dword ptr [ebp-5C]
 00494F20    call        TControl.SetText
 00494F25    xor         eax,eax
 00494F27    mov         al,byte ptr [ebp-49]
 00494F2A    mov         eax,dword ptr [eax*4+541188]
 00494F31    mov         edx,dword ptr [ebp-5C]
 00494F34    mov         dword ptr [edx+214],eax;TButton.ModalResult:TModalResult
 00494F3A    mov         al,byte ptr [ebp-49]
 00494F3D    cmp         al,byte ptr [ebp-4A]
>00494F40    jne         00494F4C
 00494F42    mov         dl,1
 00494F44    mov         eax,dword ptr [ebp-5C]
 00494F47    call        TButton.SetDefault
 00494F4C    mov         al,byte ptr [ebp-49]
 00494F4F    cmp         al,byte ptr [ebp-4B]
>00494F52    jne         00494F5E
 00494F54    mov         eax,dword ptr [ebp-5C]
 00494F57    mov         byte ptr [eax+211],1;TButton.Cancel:Boolean
 00494F5E    mov         eax,dword ptr [ebp-28]
 00494F61    push        eax
 00494F62    mov         eax,dword ptr [ebp-2C]
 00494F65    push        eax
 00494F66    mov         ecx,dword ptr [ebp-40]
 00494F69    add         ecx,dword ptr [ebp-1C]
 00494F6C    add         ecx,dword ptr [ebp-24]
 00494F6F    mov         edx,dword ptr [ebp-44]
 00494F72    mov         eax,dword ptr [ebp-5C]
 00494F75    mov         ebx,dword ptr [eax]
 00494F77    call        dword ptr [ebx+84];TWinControl.SetBounds
 00494F7D    mov         eax,dword ptr [ebp-28]
 00494F80    add         eax,dword ptr [ebp-30]
 00494F83    add         dword ptr [ebp-44],eax
 00494F86    cmp         byte ptr [ebp-49],0A
>00494F8A    jne         00494FA2
 00494F8C    mov         eax,dword ptr [ebp-5C]
 00494F8F    mov         edx,dword ptr [ebp-0C]
 00494F92    mov         dword ptr [eax+124],edx;TButton.?f124:TMessageForm
 00494F98    mov         dword ptr [eax+120],494544;TButton.FOnClick:TNotifyEvent sub_00494544
 00494FA2    inc         byte ptr [ebp-49]
 00494FA5    cmp         byte ptr [ebp-49],0B
>00494FA9    jne         00494EC1
 00494FAF    xor         eax,eax
 00494FB1    pop         edx
 00494FB2    pop         ecx
 00494FB3    pop         ecx
 00494FB4    mov         dword ptr fs:[eax],edx
 00494FB7    push        494FD1
 00494FBC    lea         eax,[ebp-7C]
 00494FBF    mov         edx,4
 00494FC4    call        @LStrArrayClr
 00494FC9    ret
>00494FCA    jmp         @HandleFinally
>00494FCF    jmp         00494FBC
 00494FD1    mov         eax,dword ptr [ebp-0C]
 00494FD4    pop         esi
 00494FD5    pop         ebx
 00494FD6    mov         esp,ebp
 00494FD8    pop         ebp
 00494FD9    ret
end;*}

//00494FFC
{*function sub_00494FFC(?:?; ?:?; ?:?; ?:?):?;
begin
 00494FFC    push        ebp
 00494FFD    mov         ebp,esp
 00494FFF    add         esp,0FFFFFFF4
 00495002    mov         word ptr [ebp-7],cx
 00495006    mov         byte ptr [ebp-5],dl
 00495009    mov         dword ptr [ebp-4],eax
 0049500C    mov         eax,dword ptr [ebp+8]
 0049500F    push        eax
 00495010    push        0FF
 00495012    push        0FF
 00495014    push        0
 00495016    mov         cx,word ptr [ebp-7]
 0049501A    mov         dl,byte ptr [ebp-5]
 0049501D    mov         eax,dword ptr [ebp-4]
 00495020    call        00495070
 00495025    mov         dword ptr [ebp-0C],eax
 00495028    mov         eax,dword ptr [ebp-0C]
 0049502B    mov         esp,ebp
 0049502D    pop         ebp
 0049502E    ret         4
end;*}

//00495034
{*function sub_00495034(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00495034    push        ebp
 00495035    mov         ebp,esp
 00495037    add         esp,0FFFFFFF4
 0049503A    mov         word ptr [ebp-7],cx
 0049503E    mov         byte ptr [ebp-5],dl
 00495041    mov         dword ptr [ebp-4],eax
 00495044    mov         eax,dword ptr [ebp+10]
 00495047    push        eax
 00495048    mov         eax,dword ptr [ebp+0C]
 0049504B    push        eax
 0049504C    mov         eax,dword ptr [ebp+8]
 0049504F    push        eax
 00495050    push        0
 00495052    mov         cx,word ptr [ebp-7]
 00495056    mov         dl,byte ptr [ebp-5]
 00495059    mov         eax,dword ptr [ebp-4]
 0049505C    call        00495070
 00495061    mov         dword ptr [ebp-0C],eax
 00495064    mov         eax,dword ptr [ebp-0C]
 00495067    mov         esp,ebp
 00495069    pop         ebp
 0049506A    ret         0C
end;*}

//00495070
{*function sub_00495070(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00495070    push        ebp
 00495071    mov         ebp,esp
 00495073    add         esp,0FFFFFFF0
 00495076    mov         word ptr [ebp-7],cx
 0049507A    mov         byte ptr [ebp-5],dl
 0049507D    mov         dword ptr [ebp-4],eax
 00495080    mov         cx,word ptr [ebp-7]
 00495084    mov         dl,byte ptr [ebp-5]
 00495087    mov         eax,dword ptr [ebp-4]
 0049508A    call        004949E4
 0049508F    mov         dword ptr [ebp-10],eax
 00495092    xor         eax,eax
 00495094    push        ebp
 00495095    push        495117
 0049509A    push        dword ptr fs:[eax]
 0049509D    mov         dword ptr fs:[eax],esp
 004950A0    mov         edx,dword ptr [ebp+14]
 004950A3    mov         eax,dword ptr [ebp-10]
 004950A6    call        TControl.SetHelpContext
 004950AB    mov         eax,dword ptr [ebp-10]
 004950AE    add         eax,23C
 004950B3    mov         edx,dword ptr [ebp+8]
 004950B6    call        @LStrAsg
 004950BB    cmp         dword ptr [ebp+10],0
>004950BF    jl          004950CC
 004950C1    mov         edx,dword ptr [ebp+10]
 004950C4    mov         eax,dword ptr [ebp-10]
 004950C7    call        TTabSheet.SetLeft
 004950CC    cmp         dword ptr [ebp+0C],0
>004950D0    jl          004950DD
 004950D2    mov         edx,dword ptr [ebp+0C]
 004950D5    mov         eax,dword ptr [ebp-10]
 004950D8    call        TTabSheet.SetTop
 004950DD    cmp         dword ptr [ebp+0C],0
>004950E1    jge         004950F3
 004950E3    cmp         dword ptr [ebp+10],0
>004950E7    jge         004950F3
 004950E9    mov         dl,4
 004950EB    mov         eax,dword ptr [ebp-10]
 004950EE    call        TForm.SetPosition
 004950F3    mov         eax,dword ptr [ebp-10]
 004950F6    mov         edx,dword ptr [eax]
 004950F8    call        dword ptr [edx+0EC]
 004950FE    mov         dword ptr [ebp-0C],eax
 00495101    xor         eax,eax
 00495103    pop         edx
 00495104    pop         ecx
 00495105    pop         ecx
 00495106    mov         dword ptr fs:[eax],edx
 00495109    push        49511E
 0049510E    mov         eax,dword ptr [ebp-10]
 00495111    call        TObject.Free
 00495116    ret
>00495117    jmp         @HandleFinally
>0049511C    jmp         0049510E
 0049511E    mov         eax,dword ptr [ebp-0C]
 00495121    mov         esp,ebp
 00495123    pop         ebp
 00495124    ret         10
end;*}

//00495128
procedure sub_00495128(?:AnsiString; ?:AnsiString; ?:AnsiString);
begin
{*
 00495128    push        ebp
 00495129    mov         ebp,esp
 0049512B    push        ecx
 0049512C    mov         dword ptr [ebp-4],eax
 0049512F    or          ecx,0FFFFFFFF
 00495132    or          edx,0FFFFFFFF
 00495135    mov         eax,dword ptr [ebp-4]
 00495138    call        00495140
 0049513D    pop         ecx
 0049513E    pop         ebp
 0049513F    ret
*}
end;

//00495140
{*procedure sub_00495140(?:?; ?:?; ?:?);
begin
 00495140    push        ebp
 00495141    mov         ebp,esp
 00495143    add         esp,0FFFFFFF4
 00495146    mov         dword ptr [ebp-0C],ecx
 00495149    mov         dword ptr [ebp-8],edx
 0049514C    mov         dword ptr [ebp-4],eax
 0049514F    push        0
 00495151    mov         eax,dword ptr [ebp-8]
 00495154    push        eax
 00495155    mov         eax,dword ptr [ebp-0C]
 00495158    push        eax
 00495159    mov         cx,word ptr ds:[495170];0x4 gvar_00495170
 00495160    mov         dl,4
 00495162    mov         eax,dword ptr [ebp-4]
 00495165    call        00495034
 0049516A    mov         esp,ebp
 0049516C    pop         ebp
 0049516D    ret
end;*}

//00495174
{*function sub_00495174(?:?; ?:?; ?:?):?;
begin
 00495174    push        ebp
 00495175    mov         ebp,esp
 00495177    add         esp,0FFFFFFBC
 0049517A    push        ebx
 0049517B    xor         ebx,ebx
 0049517D    mov         dword ptr [ebp-44],ebx
 00495180    mov         dword ptr [ebp-40],ebx
 00495183    mov         dword ptr [ebp-3C],ebx
 00495186    mov         dword ptr [ebp-0C],ecx
 00495189    mov         dword ptr [ebp-8],edx
 0049518C    mov         dword ptr [ebp-4],eax
 0049518F    xor         eax,eax
 00495191    push        ebp
 00495192    push        4954C1
 00495197    push        dword ptr fs:[eax]
 0049519A    mov         dword ptr fs:[eax],esp
 0049519D    mov         byte ptr [ebp-0D],0
 004951A1    mov         ecx,dword ptr ds:[55B4C8];^Application:TApplication
 004951A7    mov         ecx,dword ptr [ecx]
 004951A9    mov         dl,1
 004951AB    mov         eax,[004E6708];TForm
 004951B0    call        TCustomForm.Create;TForm.Create
 004951B5    mov         dword ptr [ebp-14],eax
 004951B8    xor         eax,eax
 004951BA    push        ebp
 004951BB    push        495497
 004951C0    push        dword ptr fs:[eax]
 004951C3    mov         dword ptr fs:[eax],esp
 004951C6    mov         eax,dword ptr [ebp-14]
 004951C9    call        004EB87C
 004951CE    mov         edx,dword ptr [ebp-14]
 004951D1    mov         edx,dword ptr [edx+68];TForm.FFont:TFont
 004951D4    call        TCanvas.SetFont
 004951D9    mov         eax,dword ptr [ebp-14]
 004951DC    call        004EB87C
 004951E1    lea         edx,[ebp-24]
 004951E4    call        004942D8
 004951E9    mov         dl,3
 004951EB    mov         eax,dword ptr [ebp-14]
 004951EE    call        TForm.SetBorderStyle
 004951F3    mov         edx,dword ptr [ebp-4]
 004951F6    mov         eax,dword ptr [ebp-14]
 004951F9    call        TControl.SetText
 004951FE    push        4
 00495200    mov         eax,dword ptr [ebp-24]
 00495203    push        eax
 00495204    push        0B4
 00495209    call        kernel32.MulDiv
 0049520E    mov         edx,eax
 00495210    mov         eax,dword ptr [ebp-14]
 00495213    call        TForm.SetClientWidth
 00495218    mov         dl,4
 0049521A    mov         eax,dword ptr [ebp-14]
 0049521D    call        TForm.SetPosition
 00495222    mov         ecx,dword ptr [ebp-14]
 00495225    mov         dl,1
 00495227    mov         eax,[004B7BE0];TLabel
 0049522C    call        TCustomLabel.Create;TLabel.Create
 00495231    mov         dword ptr [ebp-18],eax
 00495234    mov         edx,dword ptr [ebp-14]
 00495237    mov         eax,dword ptr [ebp-18]
 0049523A    mov         ecx,dword ptr [eax]
 0049523C    call        dword ptr [ecx+68];TLabel.sub_004CAD7C
 0049523F    mov         edx,dword ptr [ebp-8]
 00495242    mov         eax,dword ptr [ebp-18]
 00495245    call        TControl.SetText
 0049524A    push        4
 0049524C    mov         eax,dword ptr [ebp-24]
 0049524F    push        eax
 00495250    push        8
 00495252    call        kernel32.MulDiv
 00495257    mov         edx,eax
 00495259    mov         eax,dword ptr [ebp-18]
 0049525C    call        TTabSheet.SetLeft
 00495261    push        8
 00495263    mov         eax,dword ptr [ebp-20]
 00495266    push        eax
 00495267    push        8
 00495269    call        kernel32.MulDiv
 0049526E    mov         edx,eax
 00495270    mov         eax,dword ptr [ebp-18]
 00495273    call        TTabSheet.SetTop
 00495278    push        4
 0049527A    mov         eax,dword ptr [ebp-24]
 0049527D    push        eax
 0049527E    push        0A4
 00495283    call        kernel32.MulDiv
 00495288    mov         ecx,eax
 0049528A    mov         eax,dword ptr [ebp-18]
 0049528D    mov         eax,dword ptr [eax+74];TLabel.FConstraints:TSizeConstraints
 00495290    mov         edx,1
 00495295    call        TSizeConstraints.SetMaxHeight
 0049529A    mov         dl,1
 0049529C    mov         eax,dword ptr [ebp-18]
 0049529F    call        TBoundLabel.SetWordWrap
 004952A4    mov         ecx,dword ptr [ebp-14]
 004952A7    mov         dl,1
 004952A9    mov         eax,[004B847C];TEdit
 004952AE    call        TCustomEdit.Create;TEdit.Create
 004952B3    mov         dword ptr [ebp-1C],eax
 004952B6    mov         edx,dword ptr [ebp-14]
 004952B9    mov         eax,dword ptr [ebp-1C]
 004952BC    mov         ecx,dword ptr [eax]
 004952BE    call        dword ptr [ecx+68];TEdit.sub_004CAD7C
 004952C1    mov         eax,dword ptr [ebp-18]
 004952C4    mov         edx,dword ptr [eax+40];TLabel.Left:Integer
 004952C7    mov         eax,dword ptr [ebp-1C]
 004952CA    call        TTabSheet.SetLeft
 004952CF    mov         eax,dword ptr [ebp-18]
 004952D2    mov         edx,dword ptr [eax+44];TLabel.Top:Integer
 004952D5    mov         eax,dword ptr [ebp-18]
 004952D8    add         edx,dword ptr [eax+4C];TLabel.Height:Integer
 004952DB    add         edx,5
 004952DE    mov         eax,dword ptr [ebp-1C]
 004952E1    call        TTabSheet.SetTop
 004952E6    push        4
 004952E8    mov         eax,dword ptr [ebp-24]
 004952EB    push        eax
 004952EC    push        0A4
 004952F1    call        kernel32.MulDiv
 004952F6    mov         edx,eax
 004952F8    mov         eax,dword ptr [ebp-1C]
 004952FB    call        TControl.SetWidth
 00495300    mov         edx,0FF
 00495305    mov         eax,dword ptr [ebp-1C]
 00495308    call        TLabeledEdit.SetMaxLength
 0049530D    mov         edx,dword ptr [ebp-0C]
 00495310    mov         edx,dword ptr [edx]
 00495312    mov         eax,dword ptr [ebp-1C]
 00495315    call        TControl.SetText
 0049531A    mov         eax,dword ptr [ebp-1C]
 0049531D    call        TCustomEdit.SelectAll
 00495322    mov         eax,dword ptr [ebp-1C]
 00495325    mov         eax,dword ptr [eax+44];TEdit.Top:Integer
 00495328    mov         edx,dword ptr [ebp-1C]
 0049532B    add         eax,dword ptr [edx+4C];TEdit.Height:Integer
 0049532E    add         eax,0F
 00495331    mov         dword ptr [ebp-28],eax
 00495334    push        4
 00495336    mov         eax,dword ptr [ebp-24]
 00495339    push        eax
 0049533A    push        32
 0049533C    call        kernel32.MulDiv
 00495341    mov         dword ptr [ebp-2C],eax
 00495344    push        8
 00495346    mov         eax,dword ptr [ebp-20]
 00495349    push        eax
 0049534A    push        0E
 0049534C    call        kernel32.MulDiv
 00495351    mov         dword ptr [ebp-30],eax
 00495354    mov         ecx,dword ptr [ebp-14]
 00495357    mov         dl,1
 00495359    mov         eax,[004B9EAC];TButton
 0049535E    call        TButton.Create;TButton.Create
 00495363    mov         dword ptr [ebp-34],eax
 00495366    mov         edx,dword ptr [ebp-14]
 00495369    mov         eax,dword ptr [ebp-34]
 0049536C    mov         ecx,dword ptr [eax]
 0049536E    call        dword ptr [ecx+68];TButton.sub_004CAD7C
 00495371    lea         edx,[ebp-3C]
 00495374    mov         eax,[0055B410];^SMsgDlgOK:TResStringRec
 00495379    call        LoadResString
 0049537E    mov         edx,dword ptr [ebp-3C]
 00495381    mov         eax,dword ptr [ebp-34]
 00495384    call        TControl.SetText
 00495389    mov         eax,dword ptr [ebp-34]
 0049538C    mov         dword ptr [eax+214],1;TButton.ModalResult:TModalResult
 00495396    mov         dl,1
 00495398    mov         eax,dword ptr [ebp-34]
 0049539B    call        TButton.SetDefault
 004953A0    mov         eax,dword ptr [ebp-2C]
 004953A3    push        eax
 004953A4    mov         eax,dword ptr [ebp-30]
 004953A7    push        eax
 004953A8    push        4
 004953AA    mov         eax,dword ptr [ebp-24]
 004953AD    push        eax
 004953AE    push        26
 004953B0    call        kernel32.MulDiv
 004953B5    mov         edx,eax
 004953B7    mov         ecx,dword ptr [ebp-28]
 004953BA    mov         eax,dword ptr [ebp-34]
 004953BD    mov         ebx,dword ptr [eax]
 004953BF    call        dword ptr [ebx+84];TWinControl.SetBounds
 004953C5    mov         ecx,dword ptr [ebp-14]
 004953C8    mov         dl,1
 004953CA    mov         eax,[004B9EAC];TButton
 004953CF    call        TButton.Create;TButton.Create
 004953D4    mov         dword ptr [ebp-38],eax
 004953D7    mov         edx,dword ptr [ebp-14]
 004953DA    mov         eax,dword ptr [ebp-38]
 004953DD    mov         ecx,dword ptr [eax]
 004953DF    call        dword ptr [ecx+68];TButton.sub_004CAD7C
 004953E2    lea         edx,[ebp-40]
 004953E5    mov         eax,[0055B2EC];^SCancelButton:TResStringRec
 004953EA    call        LoadResString
 004953EF    mov         edx,dword ptr [ebp-40]
 004953F2    mov         eax,dword ptr [ebp-38]
 004953F5    call        TControl.SetText
 004953FA    mov         eax,dword ptr [ebp-38]
 004953FD    mov         dword ptr [eax+214],2;TButton.ModalResult:TModalResult
 00495407    mov         eax,dword ptr [ebp-38]
 0049540A    mov         byte ptr [eax+211],1;TButton.Cancel:Boolean
 00495411    mov         eax,dword ptr [ebp-2C]
 00495414    push        eax
 00495415    mov         eax,dword ptr [ebp-30]
 00495418    push        eax
 00495419    push        4
 0049541B    mov         eax,dword ptr [ebp-24]
 0049541E    push        eax
 0049541F    push        5C
 00495421    call        kernel32.MulDiv
 00495426    mov         edx,eax
 00495428    mov         eax,dword ptr [ebp-1C]
 0049542B    mov         ecx,dword ptr [eax+44];TEdit.Top:Integer
 0049542E    mov         eax,dword ptr [ebp-1C]
 00495431    add         ecx,dword ptr [eax+4C];TEdit.Height:Integer
 00495434    add         ecx,0F
 00495437    mov         eax,dword ptr [ebp-38]
 0049543A    mov         ebx,dword ptr [eax]
 0049543C    call        dword ptr [ebx+84];TWinControl.SetBounds
 00495442    mov         eax,dword ptr [ebp-38]
 00495445    mov         edx,dword ptr [eax+44];TButton.Top:Integer
 00495448    mov         eax,dword ptr [ebp-38]
 0049544B    add         edx,dword ptr [eax+4C];TButton.Height:Integer
 0049544E    add         edx,0D
 00495451    mov         eax,dword ptr [ebp-14]
 00495454    call        TForm.SetClientHeight
 00495459    mov         eax,dword ptr [ebp-14]
 0049545C    mov         edx,dword ptr [eax]
 0049545E    call        dword ptr [edx+0EC];TForm.sub_004EECA0
 00495464    dec         eax
>00495465    jne         00495481
 00495467    lea         edx,[ebp-44]
 0049546A    mov         eax,dword ptr [ebp-1C]
 0049546D    call        TControl.GetText
 00495472    mov         edx,dword ptr [ebp-44]
 00495475    mov         eax,dword ptr [ebp-0C]
 00495478    call        @LStrAsg
 0049547D    mov         byte ptr [ebp-0D],1
 00495481    xor         eax,eax
 00495483    pop         edx
 00495484    pop         ecx
 00495485    pop         ecx
 00495486    mov         dword ptr fs:[eax],edx
 00495489    push        49549E
 0049548E    mov         eax,dword ptr [ebp-14]
 00495491    call        TObject.Free
 00495496    ret
>00495497    jmp         @HandleFinally
>0049549C    jmp         0049548E
 0049549E    xor         eax,eax
 004954A0    pop         edx
 004954A1    pop         ecx
 004954A2    pop         ecx
 004954A3    mov         dword ptr fs:[eax],edx
 004954A6    push        4954C8
 004954AB    lea         eax,[ebp-44]
 004954AE    call        @LStrClr
 004954B3    lea         eax,[ebp-40]
 004954B6    mov         edx,2
 004954BB    call        @LStrArrayClr
 004954C0    ret
>004954C1    jmp         @HandleFinally
>004954C6    jmp         004954AB
 004954C8    mov         al,byte ptr [ebp-0D]
 004954CB    pop         ebx
 004954CC    mov         esp,ebp
 004954CE    pop         ebp
 004954CF    ret
end;*}

//004954D0
{*procedure sub_004954D0(?:AnsiString; ?:AnsiString; ?:AnsiString; ?:?);
begin
 004954D0    push        ebp
 004954D1    mov         ebp,esp
 004954D3    add         esp,0FFFFFFF4
 004954D6    mov         dword ptr [ebp-0C],ecx
 004954D9    mov         dword ptr [ebp-8],edx
 004954DC    mov         dword ptr [ebp-4],eax
 004954DF    mov         eax,dword ptr [ebp+8]
 004954E2    mov         edx,dword ptr [ebp-0C]
 004954E5    call        @LStrAsg
 004954EA    mov         ecx,dword ptr [ebp+8]
 004954ED    mov         edx,dword ptr [ebp-8]
 004954F0    mov         eax,dword ptr [ebp-4]
 004954F3    call        00495174
 004954F8    mov         esp,ebp
 004954FA    pop         ebp
 004954FB    ret         4
end;*}

//00495500
procedure sub_00495500;
begin
{*
 00495500    push        ebp
 00495501    mov         ebp,esp
 00495503    add         esp,0FFFFFFD0
 00495506    push        495560;'commdlg_help'
 0049550B    call        user32.RegisterWindowMessageA
 00495510    mov         [0055DCD4],eax;gvar_0055DCD4:LongWord
 00495515    push        495570;'commdlg_FindReplace'
 0049551A    call        user32.RegisterWindowMessageA
 0049551F    mov         [0055DCD8],eax;gvar_0055DCD8:LongWord
 00495524    push        1
 00495526    mov         eax,[0055C664];gvar_0055C664
 0049552B    mov         dword ptr [ebp-30],eax
 0049552E    mov         byte ptr [ebp-2C],0
 00495532    call        kernel32.GetCurrentThreadId
 00495537    mov         dword ptr [ebp-28],eax
 0049553A    mov         byte ptr [ebp-24],0
 0049553E    lea         ecx,[ebp-30]
 00495541    mov         edx,495584
 00495546    lea         eax,[ebp-20]
 00495549    call        00467970
 0049554E    push        eax
 0049554F    call        kernel32.GlobalAddAtomA
 00495554    mov         [00541104],ax;gvar_00541104:Word
 0049555A    mov         esp,ebp
 0049555C    pop         ebp
 0049555D    ret
*}
end;

//00495598
procedure _NF__533;
begin
{*
 00495598    sldt        word ptr [eax]
 0049559B    add         byte ptr [ecx+edx-4EF3FFAC],al
 004955A2    push        ebp
 004955A3    add         byte ptr [eax],al
 004955A5    add         byte ptr [eax],al
 004955A7    add         byte ptr [eax+58005411],al
 004955AD    mov         ah,55
 004955AF    add         byte ptr [eax],al
 004955B1    add         byte ptr [eax],al
 004955B3    add         byte ptr [ecx+edx+54],bh
 004955B7    add         al,dl
 004955B9    mov         al,55
 004955BB    add         byte ptr [eax],al
 004955BD    add         byte ptr [eax],al
 004955BF    add         byte ptr [eax+11],bh
 004955C2    push        esp
 004955C3    add         byte ptr [esi+esi*4],dl
 004955C6    push        ebp
 004955C7    add         byte ptr [eax],al
 004955C9    add         byte ptr [eax],al
 004955CB    add         byte ptr [ecx+edx+54],dh
 004955CF    add         byte ptr [eax+55B4],al
 004955D5    add         byte ptr [eax],al
 004955D7    add         byte ptr [eax+11],dh
 004955DA    push        esp
 004955DB    add         al,ch
 004955DD    mov         bl,55
 004955DF    add         byte ptr [eax],al
 004955E1    add         byte ptr [eax],al
 004955E3    add         byte ptr [ecx+edx+54],ch
 004955E7    add         byte ptr [ebp+esi*4+55],dl
 004955EB    add         byte ptr [eax],al
 004955ED    add         byte ptr [eax],al
 004955EF    add         byte ptr [eax+11],ch
 004955F2    push        esp
 004955F3    add         ah,ch
 004955F5    mov         dl,55
 004955F7    add         byte ptr [eax],al
 004955F9    add         byte ptr [eax],al
 004955FB    add         byte ptr [ecx+edx+54],ah
 004955FF    add         byte ptr [eax],dl
 00495601    mov         ah,55
 00495603    add         byte ptr [eax],al
 00495605    add         byte ptr [eax],al
 00495607    add         byte ptr [eax+11],ah
 0049560A    push        esp
 0049560B    add         byte ptr [ebx+esi*4],bl
 0049560E    push        ebp
 0049560F    add         byte ptr [eax],al
 00495611    add         byte ptr [eax],al
 00495613    add         byte ptr [ecx+edx+54],bl
 00495617    add         byte ptr [eax+55B6],bh
 0049561D    add         byte ptr [eax],al
 0049561F    add         byte ptr [ecx+edx],dl
 00495622    push        esp
 00495623    add         byte ptr [eax-4F],bh
 00495626    push        ebp
 00495627    add         byte ptr [eax],al
 00495629    add         byte ptr [eax],al
 0049562B    add         byte ptr [eax],dl
 0049562D    adc         dword ptr [eax+eax-4],edx
 00495631    mov         ch,55
 00495633    add         byte ptr [eax],al
 00495635    add         byte ptr [eax],al
 00495637    add         byte ptr [ecx+edx],cl
 0049563A    push        esp
 0049563B    add         byte ptr [eax-4A],al
 0049563E    push        ebp
 0049563F    add         byte ptr [eax],al
 00495641    add         byte ptr [eax],al
 00495643    add         byte ptr [eax],cl
 00495645    adc         dword ptr [eax+eax+78],edx
 00495649    mov         bl,55
 0049564B    add         byte ptr [eax],al
 0049564D    add         byte ptr [eax],al
 0049564F    add         byte ptr [ebp-75],dl;{Finalization}
*}
end;

Initialization
//004956AC
{*
 004956AC    push        ebp
 004956AD    mov         ebp,esp
 004956AF    sub         dword ptr ds:[55DCD0],1
>004956B6    jae         004956EB
 004956B8    mov         eax,495598;_NF__533
 004956BD    call        @InitImports
 004956C2    call        00495500
 004956C7    mov         eax,[004C5774];TControl
 004956CC    call        StartClassGroup
 004956D1    mov         eax,[004C5774];TControl
 004956D6    call        ActivateClassGroup
 004956DB    mov         edx,dword ptr ds:[4C5774];TControl
 004956E1    mov         eax,[00493E20];TCommonDialog
 004956E6    call        GroupDescendentsWith
 004956EB    pop         ebp
 004956EC    ret
*}
Finalization
//00495650
{*
 00495650    push        ebp
 00495651    mov         ebp,esp
 00495653    xor         eax,eax
 00495655    push        ebp
 00495656    push        4956A2
 0049565B    push        dword ptr fs:[eax]
 0049565E    mov         dword ptr fs:[eax],esp
 00495661    inc         dword ptr ds:[55DCD0]
>00495667    jne         00495694
 00495669    cmp         word ptr ds:[541104],0;gvar_00541104:Word
>00495671    je          0049567F
 00495673    mov         ax,[00541104];gvar_00541104:Word
 00495679    push        eax
 0049567A    call        kernel32.GlobalDeleteAtom
 0049567F    mov         eax,541130
 00495684    mov         ecx,0B
 00495689    mov         edx,dword ptr ds:[4010AC];String
 0049568F    call        @FinalizeArray
 00495694    xor         eax,eax
 00495696    pop         edx
 00495697    pop         ecx
 00495698    pop         ecx
 00495699    mov         dword ptr fs:[eax],edx
 0049569C    push        4956A9
 004956A1    ret
>004956A2    jmp         @HandleFinally
>004956A7    jmp         004956A1
 004956A9    pop         ebp
 004956AA    ret
*}
end.