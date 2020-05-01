//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ShadowWnd;

interface

uses
  SysUtils, Classes, Controls, Graphics;

type
  TShadowWindow = class(TCustomControl)
  public
    FRGB:COLORREF;//f210
    H:Word;//f214
    L:Word;//f216
    S:Word;//f218
    FCachedFade:Integer;//f21C
    FCachedclr:COLORREF;//f220
    FCachedHue:Word;//f224
    FCachedSat:Word;//f226
    FCachedLum:Word;//f228
    FControl:TControl;//f22C
    FDesktop:TBitmap;//f230
    FSide:TControlSide;//f234
    destructor Destroy; virtual;//004F99A8
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v10//004F9A3C
    constructor Create(AOwner:TComponent); virtual;//v2C//004F9898
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer); virtual;//v84//004F9D48
    //procedure v98(?:?); virtual;//v98//004F99E8
    procedure vC8; virtual;//vC8//004F9A88
    //constructor Create(?:?); virtual;//vCC//004F9950
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//004F9C08
  end;
    constructor Create(AOwner:TComponent);//004F9898
    //constructor Create(?:?);//004F9950
    destructor Destroy;//004F99A8
    //procedure sub_004F99E8(?:?);//004F99E8
    procedure Notification(AComponent:TComponent; Operation:TOperation);//004F9A3C
    procedure sub_004F9A88;//004F9A88
    procedure sub_004F9AD4(?:TShadowWindow; ?:TCustomActionPopupMenu);//004F9AD4
    //procedure WMEraseBkgnd(?:?);//004F9C08
    //procedure sub_004F9C20(?:Integer; ?:?; ?:?);//004F9C20
    //procedure sub_004F9C8C(?:COLORREF; ?:?; ?:?; ?:?; ?:?);//004F9C8C
    procedure SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);//004F9D48

implementation

//004F9898
constructor TShadowWindow.Create(AOwner:TComponent);
begin
{*
 004F9898    push        ebp
 004F9899    mov         ebp,esp
 004F989B    add         esp,0FFFFFFF4
 004F989E    test        dl,dl
>004F98A0    je          004F98AA
 004F98A2    add         esp,0FFFFFFF0
 004F98A5    call        @ClassCreate
 004F98AA    mov         dword ptr [ebp-0C],ecx
 004F98AD    mov         byte ptr [ebp-5],dl
 004F98B0    mov         dword ptr [ebp-4],eax
 004F98B3    mov         ecx,dword ptr [ebp-0C]
 004F98B6    xor         edx,edx
 004F98B8    mov         eax,dword ptr [ebp-4]
 004F98BB    call        TCustomControl.Create
 004F98C0    mov         eax,dword ptr [ebp-4]
 004F98C3    mov         byte ptr [eax+234],0;TShadowWindow.FSide:TControlSide
 004F98CA    mov         dl,1
 004F98CC    mov         eax,[00485C6C];TBitmap
 004F98D1    call        TBitmap.Create;TBitmap.Create
 004F98D6    mov         edx,dword ptr [ebp-4]
 004F98D9    mov         dword ptr [edx+230],eax;TShadowWindow.FDesktop:TBitmap
 004F98DF    mov         eax,dword ptr [ebp-4]
 004F98E2    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004F98E8    mov         dl,1
 004F98EA    mov         ecx,dword ptr [eax]
 004F98EC    call        dword ptr [ecx+6C];TBitmap.sub_0048E528
 004F98EF    mov         eax,dword ptr [ebp-4]
 004F98F2    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004F98F8    mov         dl,6
 004F98FA    call        0048E91C
 004F98FF    mov         eax,dword ptr [ebp-4]
 004F9902    call        004CB768
 004F9907    mov         eax,dword ptr [ebp-4]
 004F990A    xor         edx,edx
 004F990C    mov         dword ptr [eax+220],edx;TShadowWindow.FCachedclr:COLORREF
 004F9912    mov         eax,dword ptr [ebp-4]
 004F9915    xor         edx,edx
 004F9917    mov         dword ptr [eax+21C],edx;TShadowWindow.FCachedFade:Integer
 004F991D    mov         eax,[0055B4C8];^Application:TApplication
 004F9922    mov         eax,dword ptr [eax]
 004F9924    mov         edx,dword ptr [eax+30];TApplication.FHandle:HWND
 004F9927    mov         eax,dword ptr [ebp-4]
 004F992A    call        004D0318
 004F992F    mov         eax,dword ptr [ebp-4]
 004F9932    cmp         byte ptr [ebp-5],0
>004F9936    je          004F9947
 004F9938    call        @AfterConstruction
 004F993D    pop         dword ptr fs:[0]
 004F9944    add         esp,0C
 004F9947    mov         eax,dword ptr [ebp-4]
 004F994A    mov         esp,ebp
 004F994C    pop         ebp
 004F994D    ret
*}
end;

//004F9950
{*constructor TShadowWindow.Create(?:?);
begin
 004F9950    push        ebp
 004F9951    mov         ebp,esp
 004F9953    add         esp,0FFFFFFF4
 004F9956    push        ebx
 004F9957    test        dl,dl
>004F9959    je          004F9963
 004F995B    add         esp,0FFFFFFF0
 004F995E    call        @ClassCreate
 004F9963    mov         dword ptr [ebp-0C],ecx
 004F9966    mov         byte ptr [ebp-5],dl
 004F9969    mov         dword ptr [ebp-4],eax
 004F996C    mov         ecx,dword ptr [ebp-0C]
 004F996F    xor         edx,edx
 004F9971    mov         eax,dword ptr [ebp-4]
 004F9974    mov         ebx,dword ptr [eax]
 004F9976    call        dword ptr [ebx+2C];TShadowWindow.Create
 004F9979    mov         eax,dword ptr [ebp-4]
 004F997C    mov         dl,byte ptr [ebp+8]
 004F997F    mov         byte ptr [eax+234],dl;TShadowWindow.FSide:TControlSide
 004F9985    mov         eax,dword ptr [ebp-4]
 004F9988    cmp         byte ptr [ebp-5],0
>004F998C    je          004F999D
 004F998E    call        @AfterConstruction
 004F9993    pop         dword ptr fs:[0]
 004F999A    add         esp,0C
 004F999D    mov         eax,dword ptr [ebp-4]
 004F99A0    pop         ebx
 004F99A1    mov         esp,ebp
 004F99A3    pop         ebp
 004F99A4    ret         4
end;*}

//004F99A8
destructor TShadowWindow.Destroy;
begin
{*
 004F99A8    push        ebp
 004F99A9    mov         ebp,esp
 004F99AB    add         esp,0FFFFFFF8
 004F99AE    call        @BeforeDestruction
 004F99B3    mov         byte ptr [ebp-5],dl
 004F99B6    mov         dword ptr [ebp-4],eax
 004F99B9    mov         eax,dword ptr [ebp-4]
 004F99BC    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004F99C2    call        TObject.Free
 004F99C7    mov         dl,byte ptr [ebp-5]
 004F99CA    and         dl,0FC
 004F99CD    mov         eax,dword ptr [ebp-4]
 004F99D0    call        TCustomControl.Destroy
 004F99D5    cmp         byte ptr [ebp-5],0
>004F99D9    jle         004F99E3
 004F99DB    mov         eax,dword ptr [ebp-4]
 004F99DE    call        @ClassDestroy
 004F99E3    pop         ecx
 004F99E4    pop         ecx
 004F99E5    pop         ebp
 004F99E6    ret
*}
end;

//004F99E8
{*procedure sub_004F99E8(?:?);
begin
 004F99E8    push        ebp
 004F99E9    mov         ebp,esp
 004F99EB    add         esp,0FFFFFFF8
 004F99EE    mov         dword ptr [ebp-8],edx
 004F99F1    mov         dword ptr [ebp-4],eax
 004F99F4    mov         edx,dword ptr [ebp-8]
 004F99F7    mov         eax,dword ptr [ebp-4]
 004F99FA    call        004CF814
 004F99FF    mov         eax,dword ptr [ebp-4]
 004F9A02    cmp         dword ptr [eax+190],0;TShadowWindow.FParentWindow:HWND
>004F9A09    je          004F9A24
 004F9A0B    mov         eax,dword ptr [ebp-8]
 004F9A0E    mov         eax,dword ptr [eax+4]
 004F9A11    and         eax,0BFFFFFFF
 004F9A16    or          eax,80000000
 004F9A1B    or          eax,0
 004F9A1E    mov         edx,dword ptr [ebp-8]
 004F9A21    mov         dword ptr [edx+4],eax
 004F9A24    mov         eax,dword ptr [ebp-8]
 004F9A27    mov         dword ptr [eax+24],809
 004F9A2E    mov         eax,dword ptr [ebp-8]
 004F9A31    or          dword ptr [eax+8],8
 004F9A35    pop         ecx
 004F9A36    pop         ecx
 004F9A37    pop         ebp
 004F9A38    ret
end;*}

//004F9A3C
procedure TShadowWindow.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 004F9A3C    push        ebp
 004F9A3D    mov         ebp,esp
 004F9A3F    add         esp,0FFFFFFF4
 004F9A42    mov         byte ptr [ebp-9],cl
 004F9A45    mov         dword ptr [ebp-8],edx
 004F9A48    mov         dword ptr [ebp-4],eax
 004F9A4B    mov         cl,byte ptr [ebp-9]
 004F9A4E    mov         edx,dword ptr [ebp-8]
 004F9A51    mov         eax,dword ptr [ebp-4]
 004F9A54    call        TControl.Notification
 004F9A59    cmp         byte ptr [ebp-9],1
>004F9A5D    jne         004F9A82
 004F9A5F    mov         eax,dword ptr [ebp-8]
 004F9A62    mov         edx,dword ptr [ebp-4]
 004F9A65    cmp         eax,dword ptr [edx+22C];TShadowWindow.FControl:TControl
>004F9A6B    jne         004F9A82
 004F9A6D    mov         eax,dword ptr [ebp-4]
 004F9A70    xor         edx,edx
 004F9A72    mov         dword ptr [eax+22C],edx;TShadowWindow.FControl:TControl
 004F9A78    xor         edx,edx
 004F9A7A    mov         eax,dword ptr [ebp-4]
 004F9A7D    call        TControl.SetVisible
 004F9A82    mov         esp,ebp
 004F9A84    pop         ebp
 004F9A85    ret
*}
end;

//004F9A88
procedure sub_004F9A88;
begin
{*
 004F9A88    push        ebp
 004F9A89    mov         ebp,esp
 004F9A8B    add         esp,0FFFFFFEC
 004F9A8E    mov         dword ptr [ebp-4],eax
 004F9A91    mov         eax,dword ptr [ebp-4]
 004F9A94    call        004D5E5C
 004F9A99    mov         eax,dword ptr [ebp-4]
 004F9A9C    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004F9A9F    push        eax
 004F9AA0    lea         eax,[ebp-14]
 004F9AA3    push        eax
 004F9AA4    mov         eax,dword ptr [ebp-4]
 004F9AA7    mov         ecx,dword ptr [eax+48];TShadowWindow.Width:Integer
 004F9AAA    xor         edx,edx
 004F9AAC    xor         eax,eax
 004F9AAE    call        Rect
 004F9AB3    lea         edx,[ebp-14]
 004F9AB6    mov         eax,dword ptr [ebp-4]
 004F9AB9    mov         ecx,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004F9ABF    mov         eax,dword ptr [ebp-4]
 004F9AC2    mov         eax,dword ptr [eax+208];TShadowWindow.................................................FC...
 004F9AC8    call        0048800C
 004F9ACD    mov         esp,ebp
 004F9ACF    pop         ebp
 004F9AD0    ret
*}
end;

//004F9AD4
procedure sub_004F9AD4(?:TShadowWindow; ?:TCustomActionPopupMenu);
begin
{*
 004F9AD4    push        ebp
 004F9AD5    mov         ebp,esp
 004F9AD7    add         esp,0FFFFFFE0
 004F9ADA    push        ebx
 004F9ADB    mov         dword ptr [ebp-8],edx
 004F9ADE    mov         dword ptr [ebp-4],eax
 004F9AE1    mov         eax,dword ptr [ebp-4]
 004F9AE4    cmp         dword ptr [eax+22C],0
>004F9AEB    je          004F9AFE
 004F9AED    mov         edx,dword ptr [ebp-4]
 004F9AF0    mov         eax,dword ptr [ebp-4]
 004F9AF3    mov         eax,dword ptr [eax+22C]
 004F9AF9    call        00483370
 004F9AFE    mov         eax,dword ptr [ebp-8]
 004F9B01    mov         edx,dword ptr [ebp-4]
 004F9B04    mov         dword ptr [edx+22C],eax
 004F9B0A    mov         eax,dword ptr [ebp-4]
 004F9B0D    cmp         dword ptr [eax+22C],0
>004F9B14    je          004F9C00
 004F9B1A    mov         edx,dword ptr [ebp-4]
 004F9B1D    mov         eax,dword ptr [ebp-4]
 004F9B20    mov         eax,dword ptr [eax+22C]
 004F9B26    call        00483020
 004F9B2B    lea         edx,[ebp-20]
 004F9B2E    mov         eax,dword ptr [ebp-4]
 004F9B31    mov         eax,dword ptr [eax+22C]
 004F9B37    call        004CA6AC
 004F9B3C    mov         eax,dword ptr [ebp-20]
 004F9B3F    mov         dword ptr [ebp-10],eax
 004F9B42    mov         eax,dword ptr [ebp-1C]
 004F9B45    mov         dword ptr [ebp-0C],eax
 004F9B48    mov         eax,dword ptr [ebp-4]
 004F9B4B    mov         eax,dword ptr [eax+22C]
 004F9B51    cmp         dword ptr [eax+30],0
>004F9B55    je          004F9B7C
 004F9B57    lea         edx,[ebp-20]
 004F9B5A    mov         eax,dword ptr [ebp-4]
 004F9B5D    mov         eax,dword ptr [eax+22C]
 004F9B63    mov         ecx,dword ptr [eax]
 004F9B65    call        dword ptr [ecx+44]
 004F9B68    lea         edx,[ebp-20]
 004F9B6B    lea         ecx,[ebp-10]
 004F9B6E    mov         eax,dword ptr [ebp-4]
 004F9B71    mov         eax,dword ptr [eax+22C]
 004F9B77    call        TControl.ClientToScreen
 004F9B7C    mov         eax,dword ptr [ebp-4]
 004F9B7F    call        004CB768
 004F9B84    mov         eax,dword ptr [ebp-4]
 004F9B87    mov         al,byte ptr [eax+234]
 004F9B8D    sub         al,1
>004F9B8F    jb          004F9B95
>004F9B91    je          004F9BC9
>004F9B93    jmp         004F9BF8
 004F9B95    push        4
 004F9B97    mov         eax,dword ptr [ebp-4]
 004F9B9A    mov         eax,dword ptr [eax+22C]
 004F9BA0    mov         eax,dword ptr [eax+4C]
 004F9BA3    sub         eax,4
 004F9BA6    push        eax
 004F9BA7    mov         ecx,dword ptr [ebp-0C]
 004F9BAA    add         ecx,4
 004F9BAD    mov         eax,dword ptr [ebp-4]
 004F9BB0    mov         eax,dword ptr [eax+22C]
 004F9BB6    mov         edx,dword ptr [eax+48]
 004F9BB9    add         edx,dword ptr [ebp-10]
 004F9BBC    mov         eax,dword ptr [ebp-4]
 004F9BBF    mov         ebx,dword ptr [eax]
 004F9BC1    call        dword ptr [ebx+84]
>004F9BC7    jmp         004F9BF8
 004F9BC9    mov         eax,dword ptr [ebp-4]
 004F9BCC    mov         eax,dword ptr [eax+22C]
 004F9BD2    mov         eax,dword ptr [eax+48]
 004F9BD5    push        eax
 004F9BD6    push        4
 004F9BD8    mov         eax,dword ptr [ebp-4]
 004F9BDB    mov         eax,dword ptr [eax+22C]
 004F9BE1    mov         ecx,dword ptr [eax+4C]
 004F9BE4    add         ecx,dword ptr [ebp-0C]
 004F9BE7    mov         edx,dword ptr [ebp-10]
 004F9BEA    add         edx,4
 004F9BED    mov         eax,dword ptr [ebp-4]
 004F9BF0    mov         ebx,dword ptr [eax]
 004F9BF2    call        dword ptr [ebx+84]
 004F9BF8    mov         eax,dword ptr [ebp-4]
 004F9BFB    call        004CB77C
 004F9C00    pop         ebx
 004F9C01    mov         esp,ebp
 004F9C03    pop         ebp
 004F9C04    ret
*}
end;

//004F9C08
{*procedure TShadowWindow.WMEraseBkgnd(?:?);
begin
 004F9C08    push        ebp
 004F9C09    mov         ebp,esp
 004F9C0B    add         esp,0FFFFFFF8
 004F9C0E    mov         dword ptr [ebp-8],edx
 004F9C11    mov         dword ptr [ebp-4],eax
 004F9C14    mov         eax,dword ptr [ebp-8]
 004F9C17    xor         edx,edx
 004F9C19    mov         dword ptr [eax+0C],edx
 004F9C1C    pop         ecx
 004F9C1D    pop         ecx
 004F9C1E    pop         ebp
 004F9C1F    ret
end;*}

//004F9C20
{*procedure sub_004F9C20(?:Integer; ?:?; ?:?);
begin
 004F9C20    push        ebp
 004F9C21    mov         ebp,esp
 004F9C23    add         esp,0FFFFFFF4
 004F9C26    mov         dword ptr [ebp-8],edx
 004F9C29    mov         dword ptr [ebp-4],eax
 004F9C2C    mov         eax,dword ptr [ebp+8]
 004F9C2F    mov         eax,dword ptr [eax-4]
 004F9C32    mov         cx,word ptr [eax+218]
 004F9C39    mov         eax,dword ptr [ebp+8]
 004F9C3C    mov         eax,dword ptr [eax-4]
 004F9C3F    mov         dx,word ptr [eax+216]
 004F9C46    add         dx,word ptr [ebp-8]
 004F9C4A    mov         eax,dword ptr [ebp+8]
 004F9C4D    mov         eax,dword ptr [eax-4]
 004F9C50    mov         ax,word ptr [eax+214]
 004F9C57    call        004F8CFC
 004F9C5C    mov         dword ptr [ebp-0C],eax
 004F9C5F    mov         eax,dword ptr [ebp-0C]
 004F9C62    call        00408234
 004F9C67    mov         edx,dword ptr [ebp-4]
 004F9C6A    mov         byte ptr [edx],al
 004F9C6C    mov         eax,dword ptr [ebp-0C]
 004F9C6F    call        00408218
 004F9C74    mov         edx,dword ptr [ebp-4]
 004F9C77    mov         byte ptr [edx+1],al
 004F9C7A    mov         eax,dword ptr [ebp-0C]
 004F9C7D    call        00408200
 004F9C82    mov         edx,dword ptr [ebp-4]
 004F9C85    mov         byte ptr [edx+2],al
 004F9C88    mov         esp,ebp
 004F9C8A    pop         ebp
 004F9C8B    ret
end;*}

//004F9C8C
{*procedure sub_004F9C8C(?:COLORREF; ?:?; ?:?; ?:?; ?:?);
begin
 004F9C8C    push        ebp
 004F9C8D    mov         ebp,esp
 004F9C8F    add         esp,0FFFFFFF4
 004F9C92    mov         dword ptr [ebp-0C],ecx
 004F9C95    mov         dword ptr [ebp-8],edx
 004F9C98    mov         dword ptr [ebp-4],eax
 004F9C9B    mov         eax,dword ptr [ebp+0C]
 004F9C9E    mov         eax,dword ptr [eax-4]
 004F9CA1    mov         eax,dword ptr [eax+220]
 004F9CA7    cmp         eax,dword ptr [ebp-4]
>004F9CAA    jne         004F9CE7
 004F9CAC    mov         eax,dword ptr [ebp+0C]
 004F9CAF    mov         eax,dword ptr [eax-4]
 004F9CB2    mov         ax,word ptr [eax+224]
 004F9CB9    mov         edx,dword ptr [ebp-8]
 004F9CBC    mov         word ptr [edx],ax
 004F9CBF    mov         eax,dword ptr [ebp+0C]
 004F9CC2    mov         eax,dword ptr [eax-4]
 004F9CC5    mov         ax,word ptr [eax+228]
 004F9CCC    mov         edx,dword ptr [ebp-0C]
 004F9CCF    mov         word ptr [edx],ax
 004F9CD2    mov         eax,dword ptr [ebp+0C]
 004F9CD5    mov         eax,dword ptr [eax-4]
 004F9CD8    mov         ax,word ptr [eax+226]
 004F9CDF    mov         edx,dword ptr [ebp+8]
 004F9CE2    mov         word ptr [edx],ax
>004F9CE5    jmp         004F9D41
 004F9CE7    mov         eax,dword ptr [ebp+8]
 004F9CEA    push        eax
 004F9CEB    mov         ecx,dword ptr [ebp-0C]
 004F9CEE    mov         edx,dword ptr [ebp-8]
 004F9CF1    mov         eax,dword ptr [ebp-4]
 004F9CF4    call        004F88AC
 004F9CF9    mov         eax,dword ptr [ebp-8]
 004F9CFC    mov         ax,word ptr [eax]
 004F9CFF    mov         edx,dword ptr [ebp+0C]
 004F9D02    mov         edx,dword ptr [edx-4]
 004F9D05    mov         word ptr [edx+224],ax
 004F9D0C    mov         eax,dword ptr [ebp-0C]
 004F9D0F    mov         ax,word ptr [eax]
 004F9D12    mov         edx,dword ptr [ebp+0C]
 004F9D15    mov         edx,dword ptr [edx-4]
 004F9D18    mov         word ptr [edx+228],ax
 004F9D1F    mov         eax,dword ptr [ebp+8]
 004F9D22    mov         ax,word ptr [eax]
 004F9D25    mov         edx,dword ptr [ebp+0C]
 004F9D28    mov         edx,dword ptr [edx-4]
 004F9D2B    mov         word ptr [edx+226],ax
 004F9D32    mov         eax,dword ptr [ebp+0C]
 004F9D35    mov         eax,dword ptr [eax-4]
 004F9D38    mov         edx,dword ptr [ebp-4]
 004F9D3B    mov         dword ptr [eax+220],edx
 004F9D41    mov         esp,ebp
 004F9D43    pop         ebp
 004F9D44    ret         4
end;*}

//004F9D48
procedure TShadowWindow.SetBounds(ALeft:Integer; ATop:Integer; AWidth:Integer; AHeight:Integer);
begin
{*
 004F9D48    push        ebp
 004F9D49    mov         ebp,esp
 004F9D4B    add         esp,0FFFFFFD4
 004F9D4E    mov         dword ptr [ebp-0C],ecx
 004F9D51    mov         dword ptr [ebp-8],edx
 004F9D54    mov         dword ptr [ebp-4],eax
 004F9D57    mov         eax,dword ptr [ebp+0C]
 004F9D5A    push        eax
 004F9D5B    mov         eax,dword ptr [ebp+8]
 004F9D5E    push        eax
 004F9D5F    mov         ecx,dword ptr [ebp-0C]
 004F9D62    mov         edx,dword ptr [ebp-8]
 004F9D65    mov         eax,dword ptr [ebp-4]
 004F9D68    call        TWinControl.SetBounds
 004F9D6D    mov         eax,dword ptr [ebp-4]
 004F9D70    cmp         byte ptr [eax+57],0;TShadowWindow.FVisible:Boolean
>004F9D74    jne         004FA13B
 004F9D7A    mov         eax,dword ptr [ebp-4]
 004F9D7D    mov         edx,dword ptr [eax+48];TShadowWindow.Width:Integer
 004F9D80    mov         eax,dword ptr [ebp-4]
 004F9D83    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004F9D89    mov         ecx,dword ptr [eax]
 004F9D8B    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 004F9D8E    mov         eax,dword ptr [ebp-4]
 004F9D91    mov         edx,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004F9D94    mov         eax,dword ptr [ebp-4]
 004F9D97    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004F9D9D    mov         ecx,dword ptr [eax]
 004F9D9F    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 004F9DA2    call        user32.GetDesktopWindow
 004F9DA7    push        eax
 004F9DA8    call        user32.GetDC
 004F9DAD    mov         dword ptr [ebp-10],eax
 004F9DB0    xor         eax,eax
 004F9DB2    push        ebp
 004F9DB3    push        4F9E1D
 004F9DB8    push        dword ptr fs:[eax]
 004F9DBB    mov         dword ptr fs:[eax],esp
 004F9DBE    push        0CC0020
 004F9DC3    mov         eax,dword ptr [ebp-4]
 004F9DC6    mov         eax,dword ptr [eax+44];TShadowWindow.Top:Integer
 004F9DC9    push        eax
 004F9DCA    mov         eax,dword ptr [ebp-4]
 004F9DCD    mov         eax,dword ptr [eax+40];TShadowWindow.Left:Integer
 004F9DD0    push        eax
 004F9DD1    mov         eax,dword ptr [ebp-10]
 004F9DD4    push        eax
 004F9DD5    mov         eax,dword ptr [ebp-4]
 004F9DD8    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004F9DDB    push        eax
 004F9DDC    mov         eax,dword ptr [ebp-4]
 004F9DDF    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004F9DE2    push        eax
 004F9DE3    push        0
 004F9DE5    push        0
 004F9DE7    mov         eax,dword ptr [ebp-4]
 004F9DEA    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004F9DF0    call        TBitmap.GetCanvas
 004F9DF5    call        TCanvas.GetHandle
 004F9DFA    push        eax
 004F9DFB    call        gdi32.BitBlt
 004F9E00    xor         eax,eax
 004F9E02    pop         edx
 004F9E03    pop         ecx
 004F9E04    pop         ecx
 004F9E05    mov         dword ptr fs:[eax],edx
 004F9E08    push        4F9E24
 004F9E0D    mov         eax,dword ptr [ebp-10]
 004F9E10    push        eax
 004F9E11    call        user32.GetDesktopWindow
 004F9E16    push        eax
 004F9E17    call        user32.ReleaseDC
 004F9E1C    ret
>004F9E1D    jmp         @HandleFinally
>004F9E22    jmp         004F9E0D
 004F9E24    mov         eax,dword ptr [ebp-4]
 004F9E27    mov         al,byte ptr [eax+234];TShadowWindow.FSide:TControlSide
 004F9E2D    sub         al,1
>004F9E2F    jb          004F9E3C
>004F9E31    je          004F9FC0
>004F9E37    jmp         004FA13B
 004F9E3C    mov         eax,dword ptr [ebp-4]
 004F9E3F    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004F9E42    dec         eax
 004F9E43    test        eax,eax
>004F9E45    jl          004FA13B
 004F9E4B    inc         eax
 004F9E4C    mov         dword ptr [ebp-20],eax
 004F9E4F    mov         dword ptr [ebp-18],0
 004F9E56    mov         eax,dword ptr [ebp-4]
 004F9E59    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004F9E5F    mov         edx,dword ptr [ebp-18]
 004F9E62    call        0048D774
 004F9E67    mov         dword ptr [ebp-1C],eax
 004F9E6A    mov         eax,dword ptr [ebp-4]
 004F9E6D    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004F9E70    dec         eax
 004F9E71    test        eax,eax
>004F9E73    jl          004F9FAF
 004F9E79    inc         eax
 004F9E7A    mov         dword ptr [ebp-24],eax
 004F9E7D    mov         dword ptr [ebp-14],0
 004F9E84    mov         eax,dword ptr [ebp-18]
 004F9E87    sub         eax,dword ptr [ebp-14]
>004F9E8A    js          004F9FA3
 004F9E90    mov         eax,dword ptr [ebp-14]
 004F9E93    lea         eax,[eax+eax*2]
 004F9E96    mov         edx,dword ptr [ebp-1C]
 004F9E99    lea         eax,[edx+eax]
 004F9E9C    mov         dword ptr [ebp-28],eax
 004F9E9F    mov         eax,dword ptr [ebp-28]
 004F9EA2    mov         cl,byte ptr [eax]
 004F9EA4    mov         eax,dword ptr [ebp-28]
 004F9EA7    mov         dl,byte ptr [eax+1]
 004F9EAA    mov         eax,dword ptr [ebp-28]
 004F9EAD    mov         al,byte ptr [eax+2]
 004F9EB0    call        004081CC
 004F9EB5    mov         edx,dword ptr [ebp-4]
 004F9EB8    mov         dword ptr [edx+210],eax;TShadowWindow.FRGB:COLORREF
 004F9EBE    push        ebp
 004F9EBF    mov         eax,dword ptr [ebp-4]
 004F9EC2    add         eax,218;TShadowWindow.S:Word
 004F9EC7    push        eax
 004F9EC8    mov         eax,dword ptr [ebp-4]
 004F9ECB    lea         ecx,[eax+216];TShadowWindow.L:Word
 004F9ED1    mov         eax,dword ptr [ebp-4]
 004F9ED4    lea         edx,[eax+214];TShadowWindow.H:Word
 004F9EDA    mov         eax,dword ptr [ebp-4]
 004F9EDD    mov         eax,dword ptr [eax+210];TShadowWindow.FRGB:COLORREF
 004F9EE3    call        004F9C8C
 004F9EE8    pop         ecx
 004F9EE9    mov         eax,dword ptr [ebp-4]
 004F9EEC    cmp         word ptr [eax+216],3A;TShadowWindow.L:Word
>004F9EF4    jb          004F9FA3
 004F9EFA    mov         eax,dword ptr [ebp-4]
 004F9EFD    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004F9F00    cmp         eax,dword ptr [ebp-18]
>004F9F03    jl          004F9F37
 004F9F05    push        ebp
 004F9F06    mov         edx,dword ptr [ebp-14]
 004F9F09    mov         eax,edx
 004F9F0B    shl         edx,4
 004F9F0E    sub         edx,eax
 004F9F10    add         edx,0FFFFFFC6
 004F9F13    mov         eax,dword ptr [ebp-4]
 004F9F16    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004F9F19    sub         eax,dword ptr [ebp-18]
 004F9F1C    add         eax,eax
 004F9F1E    lea         eax,[eax+eax*4]
 004F9F21    add         edx,eax
 004F9F23    mov         eax,dword ptr [ebp-14]
 004F9F26    lea         eax,[eax+eax*2]
 004F9F29    mov         ecx,dword ptr [ebp-1C]
 004F9F2C    lea         eax,[ecx+eax]
 004F9F2F    call        004F9C20
 004F9F34    pop         ecx
>004F9F35    jmp         004F9FA3
 004F9F37    mov         eax,dword ptr [ebp-4]
 004F9F3A    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004F9F3D    cmp         eax,dword ptr [ebp-18]
>004F9F40    jg          004F9F83
 004F9F42    push        ebp
 004F9F43    mov         eax,dword ptr [ebp-4]
 004F9F46    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004F9F49    sub         eax,dword ptr [ebp-14]
 004F9F4C    mov         edx,eax
 004F9F4E    shl         eax,4
 004F9F51    sub         eax,edx
 004F9F53    mov         edx,0FFFFFFC6
 004F9F58    sub         edx,eax
 004F9F5A    mov         eax,dword ptr [ebp-4]
 004F9F5D    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004F9F60    sub         eax,8
 004F9F63    sub         eax,dword ptr [ebp-18]
 004F9F66    mov         ecx,eax
 004F9F68    shl         eax,4
 004F9F6B    sub         eax,ecx
 004F9F6D    sub         edx,eax
 004F9F6F    mov         eax,dword ptr [ebp-14]
 004F9F72    lea         eax,[eax+eax*2]
 004F9F75    mov         ecx,dword ptr [ebp-1C]
 004F9F78    lea         eax,[ecx+eax]
 004F9F7B    call        004F9C20
 004F9F80    pop         ecx
>004F9F81    jmp         004F9FA3
 004F9F83    push        ebp
 004F9F84    mov         eax,dword ptr [ebp-14]
 004F9F87    lea         eax,[eax+eax*2]
 004F9F8A    mov         edx,dword ptr [ebp-1C]
 004F9F8D    lea         eax,[edx+eax]
 004F9F90    mov         edx,dword ptr [ebp-14]
 004F9F93    mov         ecx,edx
 004F9F95    shl         edx,4
 004F9F98    sub         edx,ecx
 004F9F9A    add         edx,0FFFFFFC6
 004F9F9D    call        004F9C20
 004F9FA2    pop         ecx
 004F9FA3    inc         dword ptr [ebp-14]
 004F9FA6    dec         dword ptr [ebp-24]
>004F9FA9    jne         004F9E84
 004F9FAF    inc         dword ptr [ebp-18]
 004F9FB2    dec         dword ptr [ebp-20]
>004F9FB5    jne         004F9E56
>004F9FBB    jmp         004FA13B
 004F9FC0    mov         eax,dword ptr [ebp-4]
 004F9FC3    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004F9FC6    dec         eax
 004F9FC7    test        eax,eax
>004F9FC9    jl          004FA13B
 004F9FCF    inc         eax
 004F9FD0    mov         dword ptr [ebp-20],eax
 004F9FD3    mov         dword ptr [ebp-18],0
 004F9FDA    mov         eax,dword ptr [ebp-4]
 004F9FDD    mov         eax,dword ptr [eax+230];TShadowWindow.FDesktop:TBitmap
 004F9FE3    mov         edx,dword ptr [ebp-18]
 004F9FE6    call        0048D774
 004F9FEB    mov         dword ptr [ebp-1C],eax
 004F9FEE    mov         eax,dword ptr [ebp-18]
 004F9FF1    mov         edx,dword ptr [ebp-4]
 004F9FF4    mov         edx,dword ptr [edx+48];TShadowWindow.Width:Integer
 004F9FF7    dec         edx
 004F9FF8    sub         edx,dword ptr [ebp-18]
 004F9FFB    sub         edx,eax
>004F9FFD    jl          004FA12F
 004FA003    inc         edx
 004FA004    mov         dword ptr [ebp-24],edx
 004FA007    mov         dword ptr [ebp-14],eax
 004FA00A    mov         eax,dword ptr [ebp-14]
 004FA00D    lea         eax,[eax+eax*2]
 004FA010    mov         edx,dword ptr [ebp-1C]
 004FA013    lea         eax,[edx+eax]
 004FA016    mov         dword ptr [ebp-2C],eax
 004FA019    mov         eax,dword ptr [ebp-2C]
 004FA01C    mov         cl,byte ptr [eax]
 004FA01E    mov         eax,dword ptr [ebp-2C]
 004FA021    mov         dl,byte ptr [eax+1]
 004FA024    mov         eax,dword ptr [ebp-2C]
 004FA027    mov         al,byte ptr [eax+2]
 004FA02A    call        004081CC
 004FA02F    mov         edx,dword ptr [ebp-4]
 004FA032    mov         dword ptr [edx+210],eax;TShadowWindow.FRGB:COLORREF
 004FA038    push        ebp
 004FA039    mov         eax,dword ptr [ebp-4]
 004FA03C    add         eax,218;TShadowWindow.S:Word
 004FA041    push        eax
 004FA042    mov         eax,dword ptr [ebp-4]
 004FA045    lea         ecx,[eax+216];TShadowWindow.L:Word
 004FA04B    mov         eax,dword ptr [ebp-4]
 004FA04E    lea         edx,[eax+214];TShadowWindow.H:Word
 004FA054    mov         eax,dword ptr [ebp-4]
 004FA057    mov         eax,dword ptr [eax+210];TShadowWindow.FRGB:COLORREF
 004FA05D    call        004F9C8C
 004FA062    pop         ecx
 004FA063    mov         eax,dword ptr [ebp-4]
 004FA066    cmp         word ptr [eax+216],3A;TShadowWindow.L:Word
>004FA06E    jb          004FA123
 004FA074    mov         eax,dword ptr [ebp-4]
 004FA077    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004FA07A    cmp         eax,dword ptr [ebp-14]
>004FA07D    jl          004FA0B1
 004FA07F    push        ebp
 004FA080    mov         edx,dword ptr [ebp-18]
 004FA083    mov         eax,edx
 004FA085    shl         edx,4
 004FA088    sub         edx,eax
 004FA08A    add         edx,0FFFFFFC6
 004FA08D    mov         eax,dword ptr [ebp-4]
 004FA090    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004FA093    sub         eax,dword ptr [ebp-14]
 004FA096    add         eax,eax
 004FA098    lea         eax,[eax+eax*4]
 004FA09B    add         edx,eax
 004FA09D    mov         eax,dword ptr [ebp-14]
 004FA0A0    lea         eax,[eax+eax*2]
 004FA0A3    mov         ecx,dword ptr [ebp-1C]
 004FA0A6    lea         eax,[ecx+eax]
 004FA0A9    call        004F9C20
 004FA0AE    pop         ecx
>004FA0AF    jmp         004FA123
 004FA0B1    mov         eax,dword ptr [ebp-4]
 004FA0B4    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004FA0B7    mov         edx,dword ptr [ebp-4]
 004FA0BA    sub         eax,dword ptr [edx+4C]
 004FA0BD    cmp         eax,dword ptr [ebp-14]
>004FA0C0    jg          004FA103
 004FA0C2    push        ebp
 004FA0C3    mov         eax,dword ptr [ebp-4]
 004FA0C6    mov         eax,dword ptr [eax+4C];TShadowWindow.Height:Integer
 004FA0C9    sub         eax,dword ptr [ebp-18]
 004FA0CC    mov         edx,eax
 004FA0CE    shl         eax,4
 004FA0D1    sub         eax,edx
 004FA0D3    mov         edx,0FFFFFFC6
 004FA0D8    sub         edx,eax
 004FA0DA    mov         eax,dword ptr [ebp-4]
 004FA0DD    mov         eax,dword ptr [eax+48];TShadowWindow.Width:Integer
 004FA0E0    sub         eax,8
 004FA0E3    sub         eax,dword ptr [ebp-14]
 004FA0E6    mov         ecx,eax
 004FA0E8    shl         eax,4
 004FA0EB    sub         eax,ecx
 004FA0ED    sub         edx,eax
 004FA0EF    mov         eax,dword ptr [ebp-14]
 004FA0F2    lea         eax,[eax+eax*2]
 004FA0F5    mov         ecx,dword ptr [ebp-1C]
 004FA0F8    lea         eax,[ecx+eax]
 004FA0FB    call        004F9C20
 004FA100    pop         ecx
>004FA101    jmp         004FA123
 004FA103    push        ebp
 004FA104    mov         eax,dword ptr [ebp-14]
 004FA107    lea         eax,[eax+eax*2]
 004FA10A    mov         edx,dword ptr [ebp-1C]
 004FA10D    lea         eax,[edx+eax]
 004FA110    mov         edx,dword ptr [ebp-18]
 004FA113    mov         ecx,edx
 004FA115    shl         edx,4
 004FA118    sub         edx,ecx
 004FA11A    add         edx,0FFFFFFC6
 004FA11D    call        004F9C20
 004FA122    pop         ecx
 004FA123    inc         dword ptr [ebp-14]
 004FA126    dec         dword ptr [ebp-24]
>004FA129    jne         004FA00A
 004FA12F    inc         dword ptr [ebp-18]
 004FA132    dec         dword ptr [ebp-20]
>004FA135    jne         004F9FDA
 004FA13B    mov         esp,ebp
 004FA13D    pop         ebp
 004FA13E    ret         8
*}
end;

end.