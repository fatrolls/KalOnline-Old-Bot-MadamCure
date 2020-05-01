//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Spin;

interface

uses
  SysUtils, Classes, Spin, Controls, ExtCtrls;

type
  TSpinButton = class(TWinControl)
  public
    FUpButton:TTimerSpeedButton;//f208
    FDownButton:TTimerSpeedButton;//f20C
    FFocusedButton:TTimerSpeedButton;//f210
    FocusControl:TWinControl;//f214
    OnUpClick:TNotifyEvent;//f218
    OnDownClick:TNotifyEvent;//f220
    procedure Loaded; virtual;//vC//0051ABB8
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//0051A850
    constructor Create(AOwner:TComponent); virtual;//v2C//0051A72C
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer); virtual;//v84//0051A8EC
    procedure WMSize(var Message:TWMSize); message WM_SIZE;//0051A930
    procedure WMSetFocus(var Message:TWMSetFocus); message WM_SETFOCUS;//0051A990
    procedure WMKillFocus(var Message:TWMKillFocus); message WM_KILLFOCUS;//0051A9BC
    procedure WMGetDlgCode(var Message:TWMGetDlgCode); message WM_GETDLGCODE;//0051ABB0
    procedure KeyDown(var Key:Word; Shift:TShiftState); dynamic;//0051A9E8
    function CreateButton:TTimerSpeedButton;//0051A7EC
    procedure AdjustSize(var W:Integer; var H:Integer);//0051A880
    procedure BtnMouseDown(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0051AA50
    procedure BtnClick(Sender:TObject);//0051AAEC
    procedure SetFocusBtn(Btn:TTimerSpeedButton);//0051AB30
    function GetUpGlyph:TBitmap;//0051AC0C
    procedure SetUpGlyph(Value:TBitmap);//0051AC18
    function GetUpNumGlyphs:TNumGlyphs;//0051AC70
    procedure SetUpNumGlyphs(Value:TNumGlyphs);//0051AC7C
    function GetDownGlyph:TBitmap;//0051AC88
    procedure SetDownGlyph(Value:TBitmap);//0051AC94
    function GetDownNumGlyphs:TNumGlyphs;//0051ACF0
    procedure SetDownNumGlyphs(Value:TNumGlyphs);//0051ACFC
  end;
  TSpinEdit = class(TCustomEdit)
  public
    MinValue:Integer;//f220
    MaxValue:Integer;//f224
    Increment:Integer;//f228
    FButton:TSpinButton;//f22C
    EditorEnabled:Boolean;//f230
    destructor Destroy; virtual;//0051AE0C
    constructor Create(AOwner:TComponent); virtual;//v2C//0051AD08
    procedure CreateParams(var Params:TCreateParams); virtual;//v98//0051AF48
    procedure CreateWnd; virtual;//vA0//0051AF64
    function IsValidChar(Key:Char):Boolean; virtual;//vE8//0051AEB8
    procedure UpClick(Sender:TObject); virtual;//vEC//0051B108
    procedure DownClick(Sender:TObject); virtual;//vF0//0051B138
    procedure WMSize(var Message:TWMSize); message WM_SIZE;//0051AFF8
    procedure WMPaste(var Message:TWMPaste); message WM_CUT;//0051B188
    procedure WMCut(var Message:TWMCut); message WM_PASTE;//0051B168
    procedure CMEnter(var Message:TCMGotFocus); message CM_ENTER;//0051B2EC
    procedure CMExit(var Message:TCMExit); message CM_EXIT;//0051B1A8
    procedure KeyPress(var Key:Char); dynamic;//0051AE84
    procedure KeyDown(var Key:Word; Shift:TShiftState); dynamic;//0051AE44
    //procedure sub_004834DC(?:?; ?:?); dynamic;//0051AE3C
    procedure SetEditRect;//0051AF78
    function GetMinHeight:Integer;//0051B098
    function GetValue:Longint;//0051B1E4
    procedure SetValue(NewValue:Longint);//0051B26C
    function CheckValue(NewValue:Longint):Longint;//0051B2C4
  end;
  TTimerSpeedButton = class(TSpeedButton)
  public
    FRepeatTimer:TTimer;//f188
    FTimeBtnState:TTimeBtnState;//f18C
    destructor Destroy; virtual;//0051B314
    procedure Paint; virtual;//v8C//0051B474
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0051B3C0
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0051B348
    procedure TimerExpired(Sender:TObject);//0051B3F4
  end;
    constructor Create(AOwner:TComponent);//0051A72C
    procedure Notification(AComponent:TComponent; Operation:TOperation);//0051A850
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);//0051A8EC
    procedure WMSize(var Message:TWMSize);//0051A930
    procedure WMSetFocus(var Message:TWMSetFocus);//0051A990
    procedure WMKillFocus(var Message:TWMKillFocus);//0051A9BC
    procedure KeyDown(var Key:Word; Shift:TShiftState);//0051A9E8
    procedure WMGetDlgCode(var Message:TWMGetDlgCode);//0051ABB0
    procedure Loaded;//0051ABB8
    constructor Create(AOwner:TComponent);//0051AD08
    destructor Destroy;//0051AE0C
    //procedure sub_004834DC(?:?; ?:?);//0051AE3C
    procedure KeyDown(var Key:Word; Shift:TShiftState);//0051AE44
    procedure KeyPress(var Key:Char);//0051AE84
    function IsValidChar(Key:Char):Boolean;//0051AEB8
    procedure CreateParams(var Params:TCreateParams);//0051AF48
    procedure CreateWnd;//0051AF64
    procedure WMSize(var Message:TWMSize);//0051AFF8
    procedure UpClick(Sender:TObject);//0051B108
    procedure DownClick(Sender:TObject);//0051B138
    procedure WMCut(var Message:TWMCut);//0051B168
    procedure WMPaste(var Message:TWMPaste);//0051B188
    procedure CMExit(var Message:TCMExit);//0051B1A8
    procedure CMEnter(var Message:TCMGotFocus);//0051B2EC
    destructor Destroy;//0051B314
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0051B348
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0051B3C0
    procedure Paint;//0051B474

implementation

//0051A72C
constructor TSpinButton.Create(AOwner:TComponent);
begin
{*
 0051A72C    push        ebx
 0051A72D    push        esi
 0051A72E    test        dl,dl
>0051A730    je          0051A73A
 0051A732    add         esp,0FFFFFFF0
 0051A735    call        @ClassCreate
 0051A73A    mov         ebx,edx
 0051A73C    mov         esi,eax
 0051A73E    xor         edx,edx
 0051A740    mov         eax,esi
 0051A742    call        TWinControl.Create
 0051A747    mov         eax,[0051A7E0]
 0051A74C    not         eax
 0051A74E    and         eax,dword ptr [esi+50]
 0051A751    or          eax,dword ptr ds:[51A7E4]
 0051A757    mov         dword ptr [esi+50],eax
 0051A75A    call        ThemeServices
 0051A75F    call        TThemeServices.GetThemesEnabled
 0051A764    test        al,al
>0051A766    je          0051A775
 0051A768    mov         eax,[0051A7E8]
 0051A76D    not         eax
 0051A76F    and         eax,dword ptr [esi+50]
 0051A772    mov         dword ptr [esi+50],eax
 0051A775    mov         eax,esi
 0051A777    call        TSpinButton.CreateButton
 0051A77C    mov         dword ptr [esi+208],eax
 0051A782    mov         eax,esi
 0051A784    call        TSpinButton.CreateButton
 0051A789    mov         dword ptr [esi+20C],eax
 0051A78F    xor         edx,edx
 0051A791    mov         eax,esi
 0051A793    call        TSpinButton.SetUpGlyph
 0051A798    xor         edx,edx
 0051A79A    mov         eax,esi
 0051A79C    call        TSpinButton.SetDownGlyph
 0051A7A1    mov         edx,14
 0051A7A6    mov         eax,esi
 0051A7A8    call        TControl.SetWidth
 0051A7AD    mov         edx,19
 0051A7B2    mov         eax,esi
 0051A7B4    call        TControl.SetHeight
 0051A7B9    mov         eax,dword ptr [esi+208]
 0051A7BF    mov         dword ptr [esi+210],eax
 0051A7C5    mov         eax,esi
 0051A7C7    test        bl,bl
>0051A7C9    je          0051A7DA
 0051A7CB    call        @AfterConstruction
 0051A7D0    pop         dword ptr fs:[0]
 0051A7D7    add         esp,0C
 0051A7DA    mov         eax,esi
 0051A7DC    pop         esi
 0051A7DD    pop         ebx
 0051A7DE    ret
*}
end;

//0051A7EC
function TSpinButton.CreateButton:TTimerSpeedButton;
begin
{*
 0051A7EC    push        ebx
 0051A7ED    push        esi
 0051A7EE    mov         esi,eax
 0051A7F0    mov         ecx,esi
 0051A7F2    mov         dl,1
 0051A7F4    mov         eax,[0051A608];TTimerSpeedButton
 0051A7F9    call        TSpeedButton.Create
 0051A7FE    mov         ebx,eax
 0051A800    mov         dword ptr [ebx+124],esi
 0051A806    mov         dword ptr [ebx+120],51AAEC;TSpinButton.BtnClick
 0051A810    mov         dword ptr [ebx+0D4],esi
 0051A816    mov         dword ptr [ebx+0D0],51AA50;TSpinButton.BtnMouseDown
 0051A820    mov         dl,1
 0051A822    mov         eax,ebx
 0051A824    call        TControl.SetVisible
 0051A829    mov         dl,1
 0051A82B    mov         eax,ebx
 0051A82D    mov         ecx,dword ptr [eax]
 0051A82F    call        dword ptr [ecx+64]
 0051A832    mov         al,[0051A84C]
 0051A837    mov         byte ptr [ebx+18C],al
 0051A83D    mov         edx,esi
 0051A83F    mov         eax,ebx
 0051A841    mov         ecx,dword ptr [eax]
 0051A843    call        dword ptr [ecx+68]
 0051A846    mov         eax,ebx
 0051A848    pop         esi
 0051A849    pop         ebx
 0051A84A    ret
*}
end;

//0051A850
procedure TSpinButton.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0051A850    push        ebx
 0051A851    push        esi
 0051A852    push        edi
 0051A853    mov         ebx,ecx
 0051A855    mov         esi,edx
 0051A857    mov         edi,eax
 0051A859    mov         ecx,ebx
 0051A85B    mov         edx,esi
 0051A85D    mov         eax,edi
 0051A85F    call        TControl.Notification
 0051A864    cmp         bl,1
>0051A867    jne         0051A879
 0051A869    cmp         esi,dword ptr [edi+214]
>0051A86F    jne         0051A879
 0051A871    xor         eax,eax
 0051A873    mov         dword ptr [edi+214],eax
 0051A879    pop         edi
 0051A87A    pop         esi
 0051A87B    pop         ebx
 0051A87C    ret
*}
end;

//0051A880
procedure TSpinButton.AdjustSize(var W:Integer; var H:Integer);
begin
{*
 0051A880    push        ebx
 0051A881    push        esi
 0051A882    push        edi
 0051A883    push        ebp
 0051A884    mov         edi,ecx
 0051A886    mov         esi,edx
 0051A888    mov         ebx,eax
 0051A88A    mov         ebp,dword ptr [ebx+208]
 0051A890    test        ebp,ebp
>0051A892    je          0051A8E5
 0051A894    test        byte ptr [ebx+1C],1
>0051A898    jne         0051A8E5
 0051A89A    cmp         dword ptr [esi],0F
>0051A89D    jge         0051A8A5
 0051A89F    mov         dword ptr [esi],0F
 0051A8A5    mov         eax,dword ptr [esi]
 0051A8A7    push        eax
 0051A8A8    mov         eax,dword ptr [edi]
 0051A8AA    sar         eax,1
>0051A8AC    jns         0051A8B1
 0051A8AE    adc         eax,0
 0051A8B1    push        eax
 0051A8B2    xor         ecx,ecx
 0051A8B4    xor         edx,edx
 0051A8B6    mov         eax,ebp
 0051A8B8    mov         ebp,dword ptr [eax]
 0051A8BA    call        dword ptr [ebp+84]
 0051A8C0    mov         eax,dword ptr [esi]
 0051A8C2    push        eax
 0051A8C3    mov         eax,dword ptr [edi]
 0051A8C5    mov         edx,dword ptr [ebx+208]
 0051A8CB    mov         ebp,dword ptr [edx+4C]
 0051A8CE    sub         eax,ebp
 0051A8D0    inc         eax
 0051A8D1    push        eax
 0051A8D2    mov         ecx,ebp
 0051A8D4    dec         ecx
 0051A8D5    xor         edx,edx
 0051A8D7    mov         eax,dword ptr [ebx+20C]
 0051A8DD    mov         ebx,dword ptr [eax]
 0051A8DF    call        dword ptr [ebx+84]
 0051A8E5    pop         ebp
 0051A8E6    pop         edi
 0051A8E7    pop         esi
 0051A8E8    pop         ebx
 0051A8E9    ret
*}
end;

//0051A8EC
procedure TSpinButton.SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);
begin
{*
 0051A8EC    push        ebp
 0051A8ED    mov         ebp,esp
 0051A8EF    add         esp,0FFFFFFF8
 0051A8F2    push        ebx
 0051A8F3    push        esi
 0051A8F4    push        edi
 0051A8F5    mov         edi,ecx
 0051A8F7    mov         esi,edx
 0051A8F9    mov         ebx,eax
 0051A8FB    mov         eax,dword ptr [ebp+0C]
 0051A8FE    mov         dword ptr [ebp-4],eax
 0051A901    mov         eax,dword ptr [ebp+8]
 0051A904    mov         dword ptr [ebp-8],eax
 0051A907    lea         ecx,[ebp-8]
 0051A90A    lea         edx,[ebp-4]
 0051A90D    mov         eax,ebx
 0051A90F    call        TSpinButton.AdjustSize
 0051A914    mov         eax,dword ptr [ebp-4]
 0051A917    push        eax
 0051A918    mov         eax,dword ptr [ebp-8]
 0051A91B    push        eax
 0051A91C    mov         ecx,edi
 0051A91E    mov         edx,esi
 0051A920    mov         eax,ebx
 0051A922    call        TWinControl.SetBounds
 0051A927    pop         edi
 0051A928    pop         esi
 0051A929    pop         ebx
 0051A92A    pop         ecx
 0051A92B    pop         ecx
 0051A92C    pop         ebp
 0051A92D    ret         8
*}
end;

//0051A930
procedure TSpinButton.WMSize(var Message:TWMSize);
begin
{*
 0051A930    push        ebx
 0051A931    push        esi
 0051A932    add         esp,0FFFFFFF8
 0051A935    mov         esi,edx
 0051A937    mov         ebx,eax
 0051A939    mov         edx,esi
 0051A93B    mov         eax,ebx
 0051A93D    call        TWinControl.WMSize
 0051A942    mov         eax,dword ptr [ebx+48]
 0051A945    mov         dword ptr [esp],eax
 0051A948    mov         eax,dword ptr [ebx+4C]
 0051A94B    mov         dword ptr [esp+4],eax
 0051A94F    lea         ecx,[esp+4]
 0051A953    mov         edx,esp
 0051A955    mov         eax,ebx
 0051A957    call        TSpinButton.AdjustSize
 0051A95C    mov         eax,dword ptr [esp]
 0051A95F    cmp         eax,dword ptr [ebx+48]
>0051A962    jne         0051A96D
 0051A964    mov         eax,dword ptr [esp+4]
 0051A968    cmp         eax,dword ptr [ebx+4C]
>0051A96B    je          0051A983
 0051A96D    mov         eax,dword ptr [esp]
 0051A970    push        eax
 0051A971    mov         eax,dword ptr [esp+8]
 0051A975    push        eax
 0051A976    mov         ecx,dword ptr [ebx+44]
 0051A979    mov         edx,dword ptr [ebx+40]
 0051A97C    mov         eax,ebx
 0051A97E    call        TWinControl.SetBounds
 0051A983    xor         eax,eax
 0051A985    mov         dword ptr [esi+0C],eax
 0051A988    pop         ecx
 0051A989    pop         edx
 0051A98A    pop         esi
 0051A98B    pop         ebx
 0051A98C    ret
*}
end;

//0051A990
procedure TSpinButton.WMSetFocus(var Message:TWMSetFocus);
begin
{*
 0051A990    push        ebx
 0051A991    push        esi
 0051A992    mov         ebx,eax
 0051A994    mov         esi,dword ptr [ebx+210]
 0051A99A    mov         al,byte ptr [esi+18C]
 0051A9A0    or          al,byte ptr ds:[51A9B8]
 0051A9A6    mov         byte ptr [esi+18C],al
 0051A9AC    mov         eax,esi
 0051A9AE    mov         edx,dword ptr [eax]
 0051A9B0    call        dword ptr [edx+7C]
 0051A9B3    pop         esi
 0051A9B4    pop         ebx
 0051A9B5    ret
*}
end;

//0051A9BC
procedure TSpinButton.WMKillFocus(var Message:TWMKillFocus);
begin
{*
 0051A9BC    push        ebx
 0051A9BD    push        esi
 0051A9BE    mov         ebx,eax
 0051A9C0    mov         esi,dword ptr [ebx+210]
 0051A9C6    mov         al,[0051A9E4]
 0051A9CB    not         eax
 0051A9CD    and         al,byte ptr [esi+18C]
 0051A9D3    mov         byte ptr [esi+18C],al
 0051A9D9    mov         eax,esi
 0051A9DB    mov         edx,dword ptr [eax]
 0051A9DD    call        dword ptr [edx+7C]
 0051A9E0    pop         esi
 0051A9E1    pop         ebx
 0051A9E2    ret
*}
end;

//0051A9E8
procedure TSpinButton.KeyDown(var Key:Word; Shift:TShiftState);
begin
{*
 0051A9E8    push        esi
 0051A9E9    mov         esi,eax
 0051A9EB    mov         ax,word ptr [edx]
 0051A9EE    sub         ax,20
>0051A9F2    je          0051AA3E
 0051A9F4    sub         ax,6
>0051A9F8    je          0051AA02
 0051A9FA    sub         ax,2
>0051A9FE    je          0051AA20
>0051AA00    jmp         0051AA4D
 0051AA02    mov         edx,dword ptr [esi+208]
 0051AA08    mov         eax,esi
 0051AA0A    call        TSpinButton.SetFocusBtn
 0051AA0F    mov         eax,dword ptr [esi+208]
 0051AA15    mov         si,0FFEB
 0051AA19    call        @CallDynaInst
 0051AA1E    pop         esi
 0051AA1F    ret
 0051AA20    mov         edx,dword ptr [esi+20C]
 0051AA26    mov         eax,esi
 0051AA28    call        TSpinButton.SetFocusBtn
 0051AA2D    mov         eax,dword ptr [esi+20C]
 0051AA33    mov         si,0FFEB
 0051AA37    call        @CallDynaInst
 0051AA3C    pop         esi
 0051AA3D    ret
 0051AA3E    mov         eax,dword ptr [esi+210]
 0051AA44    mov         si,0FFEB
 0051AA48    call        @CallDynaInst
 0051AA4D    pop         esi
 0051AA4E    ret
*}
end;

//0051AA50
procedure TSpinButton.BtnMouseDown(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0051AA50    push        ebp
 0051AA51    mov         ebp,esp
 0051AA53    push        ebx
 0051AA54    push        esi
 0051AA55    push        edi
 0051AA56    mov         edi,eax
 0051AA58    test        cl,cl
>0051AA5A    jne         0051AAE3
 0051AA60    mov         eax,edi
 0051AA62    call        TSpinButton.SetFocusBtn
 0051AA67    mov         ebx,dword ptr [edi+214]
 0051AA6D    test        ebx,ebx
>0051AA6F    je          0051AAAF
 0051AA71    cmp         byte ptr [ebx+1A4],0
>0051AA78    je          0051AAAF
 0051AA7A    mov         eax,ebx
 0051AA7C    mov         si,0FFB8
 0051AA80    call        @CallDynaInst
 0051AA85    test        al,al
>0051AA87    je          0051AAAF
 0051AA89    mov         eax,dword ptr [edi+214]
 0051AA8F    call        TWinControl.GetHandle
 0051AA94    mov         ebx,eax
 0051AA96    call        user32.GetFocus
 0051AA9B    cmp         ebx,eax
>0051AA9D    je          0051AAAF
 0051AA9F    mov         eax,dword ptr [edi+214]
 0051AAA5    mov         edx,dword ptr [eax]
 0051AAA7    call        dword ptr [edx+0C4]
>0051AAAD    jmp         0051AAE3
 0051AAAF    cmp         byte ptr [edi+1A4],0
>0051AAB6    je          0051AAE3
 0051AAB8    mov         eax,edi
 0051AABA    call        TWinControl.GetHandle
 0051AABF    mov         ebx,eax
 0051AAC1    call        user32.GetFocus
 0051AAC6    cmp         ebx,eax
>0051AAC8    je          0051AAE3
 0051AACA    mov         eax,edi
 0051AACC    mov         si,0FFB8
 0051AAD0    call        @CallDynaInst
 0051AAD5    test        al,al
>0051AAD7    je          0051AAE3
 0051AAD9    mov         eax,edi
 0051AADB    mov         edx,dword ptr [eax]
 0051AADD    call        dword ptr [edx+0C4]
 0051AAE3    pop         edi
 0051AAE4    pop         esi
 0051AAE5    pop         ebx
 0051AAE6    pop         ebp
 0051AAE7    ret         0C
*}
end;

//0051AAEC
procedure TSpinButton.BtnClick(Sender:TObject);
begin
{*
 0051AAEC    push        ebx
 0051AAED    cmp         edx,dword ptr [eax+208]
>0051AAF3    jne         0051AB11
 0051AAF5    cmp         word ptr [eax+21A],0
>0051AAFD    je          0051AB2B
 0051AAFF    mov         ebx,eax
 0051AB01    mov         edx,eax
 0051AB03    mov         eax,dword ptr [ebx+21C]
 0051AB09    call        dword ptr [ebx+218]
 0051AB0F    pop         ebx
 0051AB10    ret
 0051AB11    cmp         word ptr [eax+222],0
>0051AB19    je          0051AB2B
 0051AB1B    mov         ebx,eax
 0051AB1D    mov         edx,eax
 0051AB1F    mov         eax,dword ptr [ebx+224]
 0051AB25    call        dword ptr [ebx+220]
 0051AB2B    pop         ebx
 0051AB2C    ret
*}
end;

//0051AB30
procedure TSpinButton.SetFocusBtn(Btn:TTimerSpeedButton);
begin
{*
 0051AB30    push        ebx
 0051AB31    push        esi
 0051AB32    push        edi
 0051AB33    mov         edi,edx
 0051AB35    mov         ebx,eax
 0051AB37    cmp         byte ptr [ebx+1A4],0
>0051AB3E    je          0051ABA7
 0051AB40    mov         eax,ebx
 0051AB42    mov         si,0FFB8
 0051AB46    call        @CallDynaInst
 0051AB4B    test        al,al
>0051AB4D    je          0051ABA7
 0051AB4F    cmp         edi,dword ptr [ebx+210]
>0051AB55    je          0051ABA7
 0051AB57    mov         esi,dword ptr [ebx+210]
 0051AB5D    mov         al,[0051ABAC]
 0051AB62    not         eax
 0051AB64    and         al,byte ptr [esi+18C]
 0051AB6A    mov         byte ptr [esi+18C],al
 0051AB70    mov         dword ptr [ebx+210],edi
 0051AB76    mov         eax,ebx
 0051AB78    call        TWinControl.GetHandle
 0051AB7D    mov         esi,eax
 0051AB7F    call        user32.GetFocus
 0051AB84    cmp         esi,eax
>0051AB86    jne         0051ABA7
 0051AB88    mov         esi,dword ptr [ebx+210]
 0051AB8E    mov         al,byte ptr [esi+18C]
 0051AB94    or          al,byte ptr ds:[51ABAC]
 0051AB9A    mov         byte ptr [esi+18C],al
 0051ABA0    mov         eax,ebx
 0051ABA2    mov         edx,dword ptr [eax]
 0051ABA4    call        dword ptr [edx+7C]
 0051ABA7    pop         edi
 0051ABA8    pop         esi
 0051ABA9    pop         ebx
 0051ABAA    ret
*}
end;

//0051ABB0
procedure TSpinButton.WMGetDlgCode(var Message:TWMGetDlgCode);
begin
{*
 0051ABB0    mov         dword ptr [edx+0C],1
 0051ABB7    ret
*}
end;

//0051ABB8
procedure TSpinButton.Loaded;
begin
{*
 0051ABB8    push        ebx
 0051ABB9    add         esp,0FFFFFFF8
 0051ABBC    mov         ebx,eax
 0051ABBE    mov         eax,ebx
 0051ABC0    call        TControl.Loaded
 0051ABC5    mov         eax,dword ptr [ebx+48]
 0051ABC8    mov         dword ptr [esp],eax
 0051ABCB    mov         eax,dword ptr [ebx+4C]
 0051ABCE    mov         dword ptr [esp+4],eax
 0051ABD2    lea         ecx,[esp+4]
 0051ABD6    mov         edx,esp
 0051ABD8    mov         eax,ebx
 0051ABDA    call        TSpinButton.AdjustSize
 0051ABDF    mov         eax,dword ptr [esp]
 0051ABE2    cmp         eax,dword ptr [ebx+48]
>0051ABE5    jne         0051ABF0
 0051ABE7    mov         eax,dword ptr [esp+4]
 0051ABEB    cmp         eax,dword ptr [ebx+4C]
>0051ABEE    je          0051AC06
 0051ABF0    mov         eax,dword ptr [esp]
 0051ABF3    push        eax
 0051ABF4    mov         eax,dword ptr [esp+8]
 0051ABF8    push        eax
 0051ABF9    mov         ecx,dword ptr [ebx+44]
 0051ABFC    mov         edx,dword ptr [ebx+40]
 0051ABFF    mov         eax,ebx
 0051AC01    call        TWinControl.SetBounds
 0051AC06    pop         ecx
 0051AC07    pop         edx
 0051AC08    pop         ebx
 0051AC09    ret
*}
end;

//0051AC0C
function TSpinButton.GetUpGlyph:TBitmap;
begin
{*
 0051AC0C    mov         eax,dword ptr [eax+208]
 0051AC12    call        TSpeedButton.GetGlyph
 0051AC17    ret
*}
end;

//0051AC18
procedure TSpinButton.SetUpGlyph(Value:TBitmap);
begin
{*
 0051AC18    push        esi
 0051AC19    mov         esi,eax
 0051AC1B    test        edx,edx
>0051AC1D    je          0051AC2C
 0051AC1F    mov         eax,dword ptr [esi+208]
 0051AC25    call        TSpeedButton.SetGlyph
 0051AC2A    pop         esi
 0051AC2B    ret
 0051AC2C    push        51AC68
 0051AC31    mov         eax,[0055C664];gvar_0055C664
 0051AC36    push        eax
 0051AC37    call        user32.LoadBitmapA
 0051AC3C    push        eax
 0051AC3D    mov         eax,dword ptr [esi+208]
 0051AC43    call        TSpeedButton.GetGlyph
 0051AC48    pop         edx
 0051AC49    call        TBitmap.SetHandle
 0051AC4E    mov         dl,1
 0051AC50    mov         eax,dword ptr [esi+208]
 0051AC56    call        TSpeedButton.SetNumGlyphs
 0051AC5B    mov         eax,dword ptr [esi+208]
 0051AC61    mov         edx,dword ptr [eax]
 0051AC63    call        dword ptr [edx+7C]
 0051AC66    pop         esi
 0051AC67    ret
*}
end;

//0051AC70
function TSpinButton.GetUpNumGlyphs:TNumGlyphs;
begin
{*
 0051AC70    mov         eax,dword ptr [eax+208]
 0051AC76    call        TSpeedButton.GetNumGlyphs
 0051AC7B    ret
*}
end;

//0051AC7C
procedure TSpinButton.SetUpNumGlyphs(Value:TNumGlyphs);
begin
{*
 0051AC7C    mov         eax,dword ptr [eax+208]
 0051AC82    call        TSpeedButton.SetNumGlyphs
 0051AC87    ret
*}
end;

//0051AC88
function TSpinButton.GetDownGlyph:TBitmap;
begin
{*
 0051AC88    mov         eax,dword ptr [eax+20C]
 0051AC8E    call        TSpeedButton.GetGlyph
 0051AC93    ret
*}
end;

//0051AC94
procedure TSpinButton.SetDownGlyph(Value:TBitmap);
begin
{*
 0051AC94    push        esi
 0051AC95    mov         esi,eax
 0051AC97    test        edx,edx
>0051AC99    je          0051ACA8
 0051AC9B    mov         eax,dword ptr [esi+20C]
 0051ACA1    call        TSpeedButton.SetGlyph
 0051ACA6    pop         esi
 0051ACA7    ret
 0051ACA8    push        51ACE4
 0051ACAD    mov         eax,[0055C664];gvar_0055C664
 0051ACB2    push        eax
 0051ACB3    call        user32.LoadBitmapA
 0051ACB8    push        eax
 0051ACB9    mov         eax,dword ptr [esi+20C]
 0051ACBF    call        TSpeedButton.GetGlyph
 0051ACC4    pop         edx
 0051ACC5    call        TBitmap.SetHandle
 0051ACCA    mov         dl,1
 0051ACCC    mov         eax,dword ptr [esi+208]
 0051ACD2    call        TSpeedButton.SetNumGlyphs
 0051ACD7    mov         eax,dword ptr [esi+20C]
 0051ACDD    mov         edx,dword ptr [eax]
 0051ACDF    call        dword ptr [edx+7C]
 0051ACE2    pop         esi
 0051ACE3    ret
*}
end;

//0051ACF0
function TSpinButton.GetDownNumGlyphs:TNumGlyphs;
begin
{*
 0051ACF0    mov         eax,dword ptr [eax+20C]
 0051ACF6    call        TSpeedButton.GetNumGlyphs
 0051ACFB    ret
*}
end;

//0051ACFC
procedure TSpinButton.SetDownNumGlyphs(Value:TNumGlyphs);
begin
{*
 0051ACFC    mov         eax,dword ptr [eax+20C]
 0051AD02    call        TSpeedButton.SetNumGlyphs
 0051AD07    ret
*}
end;

//0051AD08
constructor TSpinEdit.Create(AOwner:TComponent);
begin
{*
 0051AD08    push        ebp
 0051AD09    mov         ebp,esp
 0051AD0B    push        ecx
 0051AD0C    push        ebx
 0051AD0D    push        esi
 0051AD0E    test        dl,dl
>0051AD10    je          0051AD1A
 0051AD12    add         esp,0FFFFFFF0
 0051AD15    call        @ClassCreate
 0051AD1A    mov         byte ptr [ebp-1],dl
 0051AD1D    mov         ebx,eax
 0051AD1F    xor         edx,edx
 0051AD21    mov         eax,ebx
 0051AD23    call        TCustomEdit.Create
 0051AD28    mov         ecx,ebx
 0051AD2A    mov         dl,1
 0051AD2C    mov         eax,[00519918];TSpinButton
 0051AD31    call        TSpinButton.Create
 0051AD36    mov         esi,eax
 0051AD38    mov         dword ptr [ebx+22C],esi
 0051AD3E    mov         eax,esi
 0051AD40    mov         edx,0F
 0051AD45    call        TControl.SetWidth
 0051AD4A    mov         eax,dword ptr [ebx+22C]
 0051AD50    mov         edx,11
 0051AD55    call        TControl.SetHeight
 0051AD5A    mov         eax,dword ptr [ebx+22C]
 0051AD60    mov         dl,1
 0051AD62    call        TControl.SetVisible
 0051AD67    mov         eax,dword ptr [ebx+22C]
 0051AD6D    mov         edx,ebx
 0051AD6F    mov         ecx,dword ptr [eax]
 0051AD71    call        dword ptr [ecx+68]
 0051AD74    mov         eax,dword ptr [ebx+22C]
 0051AD7A    mov         dword ptr [eax+214],ebx
 0051AD80    mov         dword ptr [eax+21C],ebx
 0051AD86    mov         edx,dword ptr [ebx]
 0051AD88    mov         edx,dword ptr [edx+0EC]
 0051AD8E    mov         dword ptr [eax+218],edx
 0051AD94    mov         dword ptr [eax+224],ebx
 0051AD9A    mov         edx,dword ptr [ebx]
 0051AD9C    mov         edx,dword ptr [edx+0F0]
 0051ADA2    mov         dword ptr [eax+220],edx
 0051ADA8    mov         edx,51AE04;'0'
 0051ADAD    mov         eax,ebx
 0051ADAF    call        TControl.SetText
 0051ADB4    mov         eax,[0051AE08]
 0051ADB9    not         eax
 0051ADBB    and         eax,dword ptr [ebx+50]
 0051ADBE    mov         dword ptr [ebx+50],eax
 0051ADC1    mov         dword ptr [ebx+228],1
 0051ADCB    mov         byte ptr [ebx+230],1
 0051ADD2    xor         edx,edx
 0051ADD4    mov         eax,ebx
 0051ADD6    mov         ecx,dword ptr [eax]
 0051ADD8    call        dword ptr [ecx+0BC]
 0051ADDE    mov         eax,ebx
 0051ADE0    cmp         byte ptr [ebp-1],0
>0051ADE4    je          0051ADF5
 0051ADE6    call        @AfterConstruction
 0051ADEB    pop         dword ptr fs:[0]
 0051ADF2    add         esp,0C
 0051ADF5    mov         eax,ebx
 0051ADF7    pop         esi
 0051ADF8    pop         ebx
 0051ADF9    pop         ecx
 0051ADFA    pop         ebp
 0051ADFB    ret
*}
end;

//0051AE0C
destructor TSpinEdit.Destroy;
begin
{*
 0051AE0C    push        ebx
 0051AE0D    push        esi
 0051AE0E    call        @BeforeDestruction
 0051AE13    mov         ebx,edx
 0051AE15    mov         esi,eax
 0051AE17    xor         eax,eax
 0051AE19    mov         dword ptr [esi+22C],eax
 0051AE1F    mov         edx,ebx
 0051AE21    and         dl,0FC
 0051AE24    mov         eax,esi
 0051AE26    call        TWinControl.Destroy
 0051AE2B    test        bl,bl
>0051AE2D    jle         0051AE36
 0051AE2F    mov         eax,esi
 0051AE31    call        @ClassDestroy
 0051AE36    pop         esi
 0051AE37    pop         ebx
 0051AE38    ret
*}
end;

//0051AE3C
{*procedure TSpinEdit.sub_004834DC(?:?; ?:?);
begin
 0051AE3C    push        ebp
 0051AE3D    mov         ebp,esp
 0051AE3F    pop         ebp
 0051AE40    ret         8
end;*}

//0051AE44
procedure TSpinEdit.KeyDown(var Key:Word; Shift:TShiftState);
begin
{*
 0051AE44    push        ebx
 0051AE45    push        esi
 0051AE46    push        ecx
 0051AE47    mov         byte ptr [esp],cl
 0051AE4A    mov         esi,edx
 0051AE4C    mov         ebx,eax
 0051AE4E    cmp         word ptr [esi],26
>0051AE52    jne         0051AE62
 0051AE54    mov         edx,ebx
 0051AE56    mov         eax,ebx
 0051AE58    mov         ecx,dword ptr [eax]
 0051AE5A    call        dword ptr [ecx+0EC]
>0051AE60    jmp         0051AE74
 0051AE62    cmp         word ptr [esi],28
>0051AE66    jne         0051AE74
 0051AE68    mov         edx,ebx
 0051AE6A    mov         eax,ebx
 0051AE6C    mov         ecx,dword ptr [eax]
 0051AE6E    call        dword ptr [ecx+0F0]
 0051AE74    mov         edx,esi
 0051AE76    mov         cl,byte ptr [esp]
 0051AE79    mov         eax,ebx
 0051AE7B    call        TWinControl.KeyDown
 0051AE80    pop         edx
 0051AE81    pop         esi
 0051AE82    pop         ebx
 0051AE83    ret
*}
end;

//0051AE84
procedure TSpinEdit.KeyPress(var Key:Char);
begin
{*
 0051AE84    push        ebx
 0051AE85    push        esi
 0051AE86    mov         ebx,edx
 0051AE88    mov         esi,eax
 0051AE8A    mov         dl,byte ptr [ebx]
 0051AE8C    mov         eax,esi
 0051AE8E    mov         ecx,dword ptr [eax]
 0051AE90    call        dword ptr [ecx+0E8]
 0051AE96    test        al,al
>0051AE98    jne         0051AEA4
 0051AE9A    mov         byte ptr [ebx],0
 0051AE9D    push        0
 0051AE9F    call        user32.MessageBeep
 0051AEA4    cmp         byte ptr [ebx],0
>0051AEA7    je          0051AEB2
 0051AEA9    mov         edx,ebx
 0051AEAB    mov         eax,esi
 0051AEAD    call        TWinControl.KeyPress
 0051AEB2    pop         esi
 0051AEB3    pop         ebx
 0051AEB4    ret
*}
end;

//0051AEB8
function TSpinEdit.IsValidChar(Key:Char):Boolean;
begin
{*
 0051AEB8    push        ebx
 0051AEB9    push        esi
 0051AEBA    push        edi
 0051AEBB    add         esp,0FFFFFFE0
 0051AEBE    mov         ebx,edx
 0051AEC0    mov         esi,eax
 0051AEC2    push        esi
 0051AEC3    mov         esi,51AF28
 0051AEC8    lea         edi,[esp+4]
 0051AECC    mov         ecx,8
 0051AED1    rep movs    dword ptr [edi],dword ptr [esi]
 0051AED3    pop         esi
 0051AED4    mov         eax,[0055B6AC];^gvar_0055D90B
 0051AED9    mov         al,byte ptr [eax]
 0051AEDB    and         eax,0FF
 0051AEE0    bts         dword ptr [esp],eax
 0051AEE4    mov         eax,ebx
 0051AEE6    and         eax,0FF
 0051AEEB    bt          dword ptr [esp],eax
>0051AEEF    jb          0051AEFF
 0051AEF1    cmp         bl,20
>0051AEF4    jae         0051AEFB
 0051AEF6    cmp         bl,0D
>0051AEF9    jne         0051AEFF
 0051AEFB    xor         eax,eax
>0051AEFD    jmp         0051AF01
 0051AEFF    mov         al,1
 0051AF01    mov         dl,byte ptr [esi+230]
 0051AF07    xor         dl,1
 0051AF0A    test        dl,al
>0051AF0C    je          0051AF1F
 0051AF0E    cmp         bl,20
>0051AF11    jae         0051AF1D
 0051AF13    cmp         bl,8
>0051AF16    je          0051AF1D
 0051AF18    cmp         bl,2E
>0051AF1B    jne         0051AF1F
 0051AF1D    xor         eax,eax
 0051AF1F    add         esp,20
 0051AF22    pop         edi
 0051AF23    pop         esi
 0051AF24    pop         ebx
 0051AF25    ret
*}
end;

//0051AF48
procedure TSpinEdit.CreateParams(var Params:TCreateParams);
begin
{*
 0051AF48    push        ebx
 0051AF49    mov         ebx,edx
 0051AF4B    mov         edx,ebx
 0051AF4D    call        TCustomEdit.CreateParams
 0051AF52    mov         eax,dword ptr [ebx+4]
 0051AF55    or          eax,4
 0051AF58    or          eax,2000000
 0051AF5D    mov         dword ptr [ebx+4],eax
 0051AF60    pop         ebx
 0051AF61    ret
*}
end;

//0051AF64
procedure TSpinEdit.CreateWnd;
begin
{*
 0051AF64    push        ebx
 0051AF65    mov         ebx,eax
 0051AF67    mov         eax,ebx
 0051AF69    call        TCustomEdit.CreateWnd
 0051AF6E    mov         eax,ebx
 0051AF70    call        TSpinEdit.SetEditRect
 0051AF75    pop         ebx
 0051AF76    ret
*}
end;

//0051AF78
procedure TSpinEdit.SetEditRect;
begin
{*
 0051AF78    push        ebx
 0051AF79    add         esp,0FFFFFFF0
 0051AF7C    mov         ebx,eax
 0051AF7E    mov         eax,esp
 0051AF80    push        eax
 0051AF81    push        0
 0051AF83    push        0B2
 0051AF88    mov         eax,ebx
 0051AF8A    call        TWinControl.GetHandle
 0051AF8F    push        eax
 0051AF90    call        user32.SendMessageA
 0051AF95    mov         eax,ebx
 0051AF97    call        TControl.GetClientHeight
 0051AF9C    inc         eax
 0051AF9D    mov         dword ptr [esp+0C],eax
 0051AFA1    mov         eax,ebx
 0051AFA3    call        TControl.GetClientWidth
 0051AFA8    mov         edx,dword ptr [ebx+22C]
 0051AFAE    sub         eax,dword ptr [edx+48]
 0051AFB1    sub         eax,2
 0051AFB4    mov         dword ptr [esp+8],eax
 0051AFB8    xor         eax,eax
 0051AFBA    mov         dword ptr [esp+4],eax
 0051AFBE    xor         eax,eax
 0051AFC0    mov         dword ptr [esp],eax
 0051AFC3    mov         eax,esp
 0051AFC5    push        eax
 0051AFC6    push        0
 0051AFC8    push        0B4
 0051AFCD    mov         eax,ebx
 0051AFCF    call        TWinControl.GetHandle
 0051AFD4    push        eax
 0051AFD5    call        user32.SendMessageA
 0051AFDA    mov         eax,esp
 0051AFDC    push        eax
 0051AFDD    push        0
 0051AFDF    push        0B2
 0051AFE4    mov         eax,ebx
 0051AFE6    call        TWinControl.GetHandle
 0051AFEB    push        eax
 0051AFEC    call        user32.SendMessageA
 0051AFF1    add         esp,10
 0051AFF4    pop         ebx
 0051AFF5    ret
*}
end;

//0051AFF8
procedure TSpinEdit.WMSize(var Message:TWMSize);
begin
{*
 0051AFF8    push        ebx
 0051AFF9    push        esi
 0051AFFA    push        edi
 0051AFFB    mov         esi,eax
 0051AFFD    mov         eax,esi
 0051AFFF    call        TWinControl.WMSize
 0051B004    mov         eax,esi
 0051B006    call        TSpinEdit.GetMinHeight
 0051B00B    cmp         eax,dword ptr [esi+4C]
>0051B00E    jle         0051B01B
 0051B010    mov         edx,eax
 0051B012    mov         eax,esi
 0051B014    call        TControl.SetHeight
>0051B019    jmp         0051B092
 0051B01B    cmp         dword ptr [esi+22C],0
>0051B022    je          0051B092
 0051B024    mov         eax,[0055B36C];^NewStyleControls:Boolean
 0051B029    cmp         byte ptr [eax],0
>0051B02C    je          0051B062
 0051B02E    cmp         byte ptr [esi+1A5],0
>0051B035    je          0051B062
 0051B037    mov         edx,dword ptr [esi+22C]
 0051B03D    mov         edi,dword ptr [edx+48]
 0051B040    push        edi
 0051B041    mov         edx,dword ptr [esi+4C]
 0051B044    sub         edx,5
 0051B047    push        edx
 0051B048    mov         eax,dword ptr [esi+22C]
 0051B04E    mov         edx,dword ptr [esi+48]
 0051B051    sub         edx,edi
 0051B053    sub         edx,5
 0051B056    xor         ecx,ecx
 0051B058    mov         ebx,dword ptr [eax]
 0051B05A    call        dword ptr [ebx+84]
>0051B060    jmp         0051B08B
 0051B062    mov         edx,dword ptr [esi+22C]
 0051B068    mov         edi,dword ptr [edx+48]
 0051B06B    push        edi
 0051B06C    mov         edx,dword ptr [esi+4C]
 0051B06F    sub         edx,3
 0051B072    push        edx
 0051B073    mov         eax,dword ptr [esi+22C]
 0051B079    mov         edx,dword ptr [esi+48]
 0051B07C    sub         edx,edi
 0051B07E    mov         ecx,1
 0051B083    mov         ebx,dword ptr [eax]
 0051B085    call        dword ptr [ebx+84]
 0051B08B    mov         eax,esi
 0051B08D    call        TSpinEdit.SetEditRect
 0051B092    pop         edi
 0051B093    pop         esi
 0051B094    pop         ebx
 0051B095    ret
*}
end;

//0051B098
function TSpinEdit.GetMinHeight:Integer;
begin
{*
 0051B098    push        ebx
 0051B099    push        esi
 0051B09A    add         esp,0FFFFFF90
 0051B09D    mov         esi,eax
 0051B09F    push        0
 0051B0A1    call        user32.GetDC
 0051B0A6    mov         ebx,eax
 0051B0A8    push        esp
 0051B0A9    push        ebx
 0051B0AA    call        gdi32.GetTextMetricsA
 0051B0AF    mov         eax,dword ptr [esi+68]
 0051B0B2    call        TFont.GetHandle
 0051B0B7    push        eax
 0051B0B8    push        ebx
 0051B0B9    call        gdi32.SelectObject
 0051B0BE    mov         esi,eax
 0051B0C0    lea         eax,[esp+38]
 0051B0C4    push        eax
 0051B0C5    push        ebx
 0051B0C6    call        gdi32.GetTextMetricsA
 0051B0CB    push        esi
 0051B0CC    push        ebx
 0051B0CD    call        gdi32.SelectObject
 0051B0D2    push        ebx
 0051B0D3    push        0
 0051B0D5    call        user32.ReleaseDC
 0051B0DA    mov         ebx,dword ptr [esp]
 0051B0DD    mov         esi,dword ptr [esp+38]
 0051B0E1    cmp         ebx,esi
>0051B0E3    jle         0051B0E7
 0051B0E5    mov         ebx,esi
 0051B0E7    push        6
 0051B0E9    call        user32.GetSystemMetrics
 0051B0EE    shl         eax,2
 0051B0F1    test        ebx,ebx
>0051B0F3    jns         0051B0F8
 0051B0F5    add         ebx,3
 0051B0F8    sar         ebx,2
 0051B0FB    add         ebx,esi
 0051B0FD    add         eax,ebx
 0051B0FF    add         eax,2
 0051B102    add         esp,70
 0051B105    pop         esi
 0051B106    pop         ebx
 0051B107    ret
*}
end;

//0051B108
procedure TSpinEdit.UpClick(Sender:TObject);
begin
{*
 0051B108    push        ebx
 0051B109    mov         ebx,eax
 0051B10B    cmp         byte ptr [ebx+20E],0
>0051B112    je          0051B11D
 0051B114    push        0
 0051B116    call        user32.MessageBeep
 0051B11B    pop         ebx
 0051B11C    ret
 0051B11D    mov         eax,ebx
 0051B11F    call        TSpinEdit.GetValue
 0051B124    mov         edx,eax
 0051B126    add         edx,dword ptr [ebx+228]
 0051B12C    mov         eax,ebx
 0051B12E    call        TSpinEdit.SetValue
 0051B133    pop         ebx
 0051B134    ret
*}
end;

//0051B138
procedure TSpinEdit.DownClick(Sender:TObject);
begin
{*
 0051B138    push        ebx
 0051B139    mov         ebx,eax
 0051B13B    cmp         byte ptr [ebx+20E],0
>0051B142    je          0051B14D
 0051B144    push        0
 0051B146    call        user32.MessageBeep
 0051B14B    pop         ebx
 0051B14C    ret
 0051B14D    mov         eax,ebx
 0051B14F    call        TSpinEdit.GetValue
 0051B154    mov         edx,eax
 0051B156    sub         edx,dword ptr [ebx+228]
 0051B15C    mov         eax,ebx
 0051B15E    call        TSpinEdit.SetValue
 0051B163    pop         ebx
 0051B164    ret
*}
end;

//0051B168
procedure TSpinEdit.WMCut(var Message:TWMCut);
begin
{*
 0051B168    push        esi
 0051B169    mov         esi,eax
 0051B16B    cmp         byte ptr [esi+230],0
>0051B172    je          0051B184
 0051B174    cmp         byte ptr [esi+20E],0
>0051B17B    jne         0051B184
 0051B17D    mov         eax,esi
 0051B17F    mov         ecx,dword ptr [eax]
 0051B181    call        dword ptr [ecx-10]
 0051B184    pop         esi
 0051B185    ret
*}
end;

//0051B188
procedure TSpinEdit.WMPaste(var Message:TWMPaste);
begin
{*
 0051B188    push        esi
 0051B189    mov         esi,eax
 0051B18B    cmp         byte ptr [esi+230],0
>0051B192    je          0051B1A4
 0051B194    cmp         byte ptr [esi+20E],0
>0051B19B    jne         0051B1A4
 0051B19D    mov         eax,esi
 0051B19F    mov         ecx,dword ptr [eax]
 0051B1A1    call        dword ptr [ecx-10]
 0051B1A4    pop         esi
 0051B1A5    ret
*}
end;

//0051B1A8
procedure TSpinEdit.CMExit(var Message:TCMExit);
begin
{*
 0051B1A8    push        ebx
 0051B1A9    push        esi
 0051B1AA    mov         ebx,eax
 0051B1AC    mov         eax,ebx
 0051B1AE    call        TWinControl.CMExit
 0051B1B3    mov         eax,ebx
 0051B1B5    call        TSpinEdit.GetValue
 0051B1BA    mov         edx,eax
 0051B1BC    mov         eax,ebx
 0051B1BE    call        TSpinEdit.CheckValue
 0051B1C3    mov         esi,eax
 0051B1C5    mov         eax,ebx
 0051B1C7    call        TSpinEdit.GetValue
 0051B1CC    cmp         esi,eax
>0051B1CE    je          0051B1E0
 0051B1D0    mov         eax,ebx
 0051B1D2    call        TSpinEdit.GetValue
 0051B1D7    mov         edx,eax
 0051B1D9    mov         eax,ebx
 0051B1DB    call        TSpinEdit.SetValue
 0051B1E0    pop         esi
 0051B1E1    pop         ebx
 0051B1E2    ret
*}
end;

//0051B1E4
function TSpinEdit.GetValue:Longint;
begin
{*
 0051B1E4    push        ebp
 0051B1E5    mov         ebp,esp
 0051B1E7    add         esp,0FFFFFFF8
 0051B1EA    push        ebx
 0051B1EB    push        esi
 0051B1EC    push        edi
 0051B1ED    xor         edx,edx
 0051B1EF    mov         dword ptr [ebp-8],edx
 0051B1F2    mov         dword ptr [ebp-4],eax
 0051B1F5    xor         eax,eax
 0051B1F7    push        ebp
 0051B1F8    push        51B259
 0051B1FD    push        dword ptr fs:[eax]
 0051B200    mov         dword ptr fs:[eax],esp
 0051B203    xor         eax,eax
 0051B205    push        ebp
 0051B206    push        51B230
 0051B20B    push        dword ptr fs:[eax]
 0051B20E    mov         dword ptr fs:[eax],esp
 0051B211    lea         edx,[ebp-8]
 0051B214    mov         eax,dword ptr [ebp-4]
 0051B217    call        TControl.GetText
 0051B21C    mov         eax,dword ptr [ebp-8]
 0051B21F    call        StrToInt
 0051B224    mov         ebx,eax
 0051B226    xor         eax,eax
 0051B228    pop         edx
 0051B229    pop         ecx
 0051B22A    pop         ecx
 0051B22B    mov         dword ptr fs:[eax],edx
>0051B22E    jmp         0051B243
>0051B230    jmp         @HandleAnyException
 0051B235    mov         eax,dword ptr [ebp-4]
 0051B238    mov         ebx,dword ptr [eax+220]
 0051B23E    call        @DoneExcept
 0051B243    xor         eax,eax
 0051B245    pop         edx
 0051B246    pop         ecx
 0051B247    pop         ecx
 0051B248    mov         dword ptr fs:[eax],edx
 0051B24B    push        51B260
 0051B250    lea         eax,[ebp-8]
 0051B253    call        @LStrClr
 0051B258    ret
>0051B259    jmp         @HandleFinally
>0051B25E    jmp         0051B250
 0051B260    mov         eax,ebx
 0051B262    pop         edi
 0051B263    pop         esi
 0051B264    pop         ebx
 0051B265    pop         ecx
 0051B266    pop         ecx
 0051B267    pop         ebp
 0051B268    ret
*}
end;

//0051B26C
procedure TSpinEdit.SetValue(NewValue:Longint);
begin
{*
 0051B26C    push        ebp
 0051B26D    mov         ebp,esp
 0051B26F    push        0
 0051B271    push        ebx
 0051B272    push        esi
 0051B273    mov         esi,edx
 0051B275    mov         ebx,eax
 0051B277    xor         eax,eax
 0051B279    push        ebp
 0051B27A    push        51B2B6
 0051B27F    push        dword ptr fs:[eax]
 0051B282    mov         dword ptr fs:[eax],esp
 0051B285    mov         edx,esi
 0051B287    mov         eax,ebx
 0051B289    call        TSpinEdit.CheckValue
 0051B28E    lea         edx,[ebp-4]
 0051B291    call        IntToStr
 0051B296    mov         edx,dword ptr [ebp-4]
 0051B299    mov         eax,ebx
 0051B29B    call        TControl.SetText
 0051B2A0    xor         eax,eax
 0051B2A2    pop         edx
 0051B2A3    pop         ecx
 0051B2A4    pop         ecx
 0051B2A5    mov         dword ptr fs:[eax],edx
 0051B2A8    push        51B2BD
 0051B2AD    lea         eax,[ebp-4]
 0051B2B0    call        @LStrClr
 0051B2B5    ret
>0051B2B6    jmp         @HandleFinally
>0051B2BB    jmp         0051B2AD
 0051B2BD    pop         esi
 0051B2BE    pop         ebx
 0051B2BF    pop         ecx
 0051B2C0    pop         ebp
 0051B2C1    ret
*}
end;

//0051B2C4
function TSpinEdit.CheckValue(NewValue:Longint):Longint;
begin
{*
 0051B2C4    push        esi
 0051B2C5    push        edi
 0051B2C6    mov         ecx,edx
 0051B2C8    mov         esi,dword ptr [eax+220]
 0051B2CE    mov         edi,dword ptr [eax+224]
 0051B2D4    cmp         esi,edi
>0051B2D6    je          0051B2E6
 0051B2D8    cmp         esi,edx
>0051B2DA    jle         0051B2E0
 0051B2DC    mov         ecx,esi
>0051B2DE    jmp         0051B2E6
 0051B2E0    cmp         edi,edx
>0051B2E2    jge         0051B2E6
 0051B2E4    mov         ecx,edi
 0051B2E6    mov         eax,ecx
 0051B2E8    pop         edi
 0051B2E9    pop         esi
 0051B2EA    ret
*}
end;

//0051B2EC
procedure TSpinEdit.CMEnter(var Message:TCMGotFocus);
begin
{*
 0051B2EC    push        ebx
 0051B2ED    push        esi
 0051B2EE    mov         esi,edx
 0051B2F0    mov         ebx,eax
 0051B2F2    cmp         byte ptr [ebx+210],0
>0051B2F9    je          0051B308
 0051B2FB    test        byte ptr [ebx+54],1
>0051B2FF    jne         0051B308
 0051B301    mov         eax,ebx
 0051B303    call        TCustomEdit.SelectAll
 0051B308    mov         edx,esi
 0051B30A    mov         eax,ebx
 0051B30C    call        TCustomEdit.CMEnter
 0051B311    pop         esi
 0051B312    pop         ebx
 0051B313    ret
*}
end;

//0051B314
destructor TTimerSpeedButton.Destroy;
begin
{*
 0051B314    push        ebx
 0051B315    push        esi
 0051B316    call        @BeforeDestruction
 0051B31B    mov         ebx,edx
 0051B31D    mov         esi,eax
 0051B31F    mov         eax,dword ptr [esi+188]
 0051B325    test        eax,eax
>0051B327    je          0051B32E
 0051B329    call        TObject.Free
 0051B32E    mov         edx,ebx
 0051B330    and         dl,0FC
 0051B333    mov         eax,esi
 0051B335    call        TSpeedButton.Destroy
 0051B33A    test        bl,bl
>0051B33C    jle         0051B345
 0051B33E    mov         eax,esi
 0051B340    call        @ClassDestroy
 0051B345    pop         esi
 0051B346    pop         ebx
 0051B347    ret
*}
end;

//0051B348
procedure TTimerSpeedButton.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0051B348    push        ebp
 0051B349    mov         ebp,esp
 0051B34B    push        ecx
 0051B34C    push        ebx
 0051B34D    mov         byte ptr [ebp-1],cl
 0051B350    mov         ebx,eax
 0051B352    mov         eax,dword ptr [ebp+0C]
 0051B355    push        eax
 0051B356    mov         eax,dword ptr [ebp+8]
 0051B359    push        eax
 0051B35A    mov         cl,byte ptr [ebp-1]
 0051B35D    mov         eax,ebx
 0051B35F    call        TSpeedButton.MouseDown
 0051B364    test        byte ptr [ebx+18C],2
>0051B36B    je          0051B3B8
 0051B36D    cmp         dword ptr [ebx+188],0
>0051B374    jne         0051B38A
 0051B376    mov         ecx,ebx
 0051B378    mov         dl,1
 0051B37A    mov         eax,[00495F38];TTimer
 0051B37F    call        TTimer.Create
 0051B384    mov         dword ptr [ebx+188],eax
 0051B38A    push        ebx
 0051B38B    push        51B3F4;TTimerSpeedButton.TimerExpired
 0051B390    mov         eax,dword ptr [ebx+188]
 0051B396    call        TTimer.SetOnTimer
 0051B39B    mov         edx,190
 0051B3A0    mov         eax,dword ptr [ebx+188]
 0051B3A6    call        TTimer.SetInterval
 0051B3AB    mov         dl,1
 0051B3AD    mov         eax,dword ptr [ebx+188]
 0051B3B3    call        TTimer.SetEnabled
 0051B3B8    pop         ebx
 0051B3B9    pop         ecx
 0051B3BA    pop         ebp
 0051B3BB    ret         8
*}
end;

//0051B3C0
procedure TTimerSpeedButton.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0051B3C0    push        ebp
 0051B3C1    mov         ebp,esp
 0051B3C3    push        ecx
 0051B3C4    push        ebx
 0051B3C5    mov         byte ptr [ebp-1],cl
 0051B3C8    mov         ebx,eax
 0051B3CA    mov         eax,dword ptr [ebp+0C]
 0051B3CD    push        eax
 0051B3CE    mov         eax,dword ptr [ebp+8]
 0051B3D1    push        eax
 0051B3D2    mov         cl,byte ptr [ebp-1]
 0051B3D5    mov         eax,ebx
 0051B3D7    call        TSpeedButton.MouseUp
 0051B3DC    mov         eax,dword ptr [ebx+188]
 0051B3E2    test        eax,eax
>0051B3E4    je          0051B3ED
 0051B3E6    xor         edx,edx
 0051B3E8    call        TTimer.SetEnabled
 0051B3ED    pop         ebx
 0051B3EE    pop         ecx
 0051B3EF    pop         ebp
 0051B3F0    ret         8
*}
end;

//0051B3F4
procedure TTimerSpeedButton.TimerExpired(Sender:TObject);
begin
{*
 0051B3F4    push        ebp
 0051B3F5    mov         ebp,esp
 0051B3F7    push        ecx
 0051B3F8    push        ebx
 0051B3F9    push        esi
 0051B3FA    push        edi
 0051B3FB    mov         dword ptr [ebp-4],eax
 0051B3FE    mov         eax,dword ptr [ebp-4]
 0051B401    mov         eax,dword ptr [eax+188]
 0051B407    mov         edx,64
 0051B40C    call        TTimer.SetInterval
 0051B411    mov         eax,dword ptr [ebp-4]
 0051B414    cmp         byte ptr [eax+182],2
>0051B41B    jne         0051B46C
 0051B41D    mov         eax,dword ptr [ebp-4]
 0051B420    call        TControl.GetMouseCapture
 0051B425    test        al,al
>0051B427    je          0051B46C
 0051B429    xor         eax,eax
 0051B42B    push        ebp
 0051B42C    push        51B44D
 0051B431    push        dword ptr fs:[eax]
 0051B434    mov         dword ptr fs:[eax],esp
 0051B437    mov         eax,dword ptr [ebp-4]
 0051B43A    mov         si,0FFEB
 0051B43E    call        @CallDynaInst
 0051B443    xor         eax,eax
 0051B445    pop         edx
 0051B446    pop         ecx
 0051B447    pop         ecx
 0051B448    mov         dword ptr fs:[eax],edx
>0051B44B    jmp         0051B46C
>0051B44D    jmp         @HandleAnyException
 0051B452    mov         eax,dword ptr [ebp-4]
 0051B455    mov         eax,dword ptr [eax+188]
 0051B45B    xor         edx,edx
 0051B45D    call        TTimer.SetEnabled
 0051B462    call        @RaiseAgain
 0051B467    call        @DoneExcept
 0051B46C    pop         edi
 0051B46D    pop         esi
 0051B46E    pop         ebx
 0051B46F    pop         ecx
 0051B470    pop         ebp
 0051B471    ret
*}
end;

//0051B474
procedure TTimerSpeedButton.Paint;
begin
{*
 0051B474    push        ebx
 0051B475    add         esp,0FFFFFFF0
 0051B478    mov         ebx,eax
 0051B47A    mov         eax,ebx
 0051B47C    call        TSpeedButton.Paint
 0051B481    test        byte ptr [ebx+18C],1
>0051B488    je          0051B4D6
 0051B48A    mov         eax,dword ptr [ebx+4C]
 0051B48D    push        eax
 0051B48E    lea         eax,[esp+4]
 0051B492    push        eax
 0051B493    mov         ecx,dword ptr [ebx+48]
 0051B496    xor         edx,edx
 0051B498    xor         eax,eax
 0051B49A    call        Bounds
 0051B49F    push        0FD
 0051B4A1    push        0FD
 0051B4A3    lea         eax,[esp+8]
 0051B4A7    push        eax
 0051B4A8    call        user32.InflateRect
 0051B4AD    cmp         byte ptr [ebx+182],2
>0051B4B4    jne         0051B4C4
 0051B4B6    push        1
 0051B4B8    push        1
 0051B4BA    lea         eax,[esp+8]
 0051B4BE    push        eax
 0051B4BF    call        user32.OffsetRect
 0051B4C4    push        esp
 0051B4C5    mov         eax,dword ptr [ebx+160]
 0051B4CB    call        TCanvas.GetHandle
 0051B4D0    push        eax
 0051B4D1    call        user32.DrawFocusRect
 0051B4D6    add         esp,10
 0051B4D9    pop         ebx
 0051B4DA    ret
*}
end;

end.