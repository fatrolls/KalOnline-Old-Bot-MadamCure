//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Buttons;

interface

uses
  SysUtils, Classes, Buttons, Graphics;

type
  TButtonLayout = (blGlyphLeft, blGlyphRight, blGlyphTop, blGlyphBottom);
  TSpeedButtonActionLink = class(TControlActionLink)
  public
    ........FClient:TSpeedButton;//f20
    //procedure v0(?:?); virtual;//v0//0049E010
    //function v24:?; virtual;//v24//0049E040
    //function v2C:?; virtual;//v2C//0049E0A8
    //procedure v50(?:?); virtual;//v50//0049E0EC
    //procedure v58(?:?); virtual;//v58//0049E118
  end;
  TSpeedButton = class(TGraphicControl)
  public
    GroupIndex:Integer;//f168
    FGlyph:Pointer;//f16C
    Down:Boolean;//f170
    FDragging:Boolean;//f171
    AllowAllUp:Boolean;//f172
    Layout:TButtonLayout;//f173
    Spacing:Integer;//f174
    Transparent:Boolean;//f178
    Margin:Integer;//f17C
    Flat:Boolean;//f180
    FMouseInControl:Boolean;//f181
    FState:TButtonState;//f182
    destructor Destroy; virtual;//0049E228
    procedure Loaded; virtual;//vC//0049E7E0
    constructor Create(AOwner:TComponent); virtual;//v2C//0049E144
    procedure Paint; virtual;//v8C//0049E270
    //procedure WMLButtonDblClk(?:?); message WM_LBUTTONDBLCLK;//0049EE14
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0049EF30
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//0049EE4C
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//0049EFE0
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//0049EFF8
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//0049F048
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//0049F0E0
    //procedure CMButtonPressed(?:?); message CM_BUTTONPRESSED;//0049EE90
    //procedure CMSysColorChange(?:?); message CM_SYSCOLORCHANGE;//0049F010
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0049E944
    //procedure sub_0049E884(?:?; ?:?; ?:?); dynamic;//0049E884
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer); dynamic;//0049E81C
    procedure sub_0049EA7C; dynamic;//0049EA7C
    procedure sub_0049EA9C; dynamic;//0049EA9C
    procedure sub_0049EA68; dynamic;//0049EA68
    //procedure sub_0049F20C(?:?; ?:?); dynamic;//0049F20C
    function GetGlyph:TBitmap;//0049EAB4
    procedure SetGlyph(Value:TBitmap);//0049EAD4
    function GetNumGlyphs:TNumGlyphs;//0049EB00
    procedure SetNumGlyphs(Value:TNumGlyphs);//0049EB20
    procedure SetDown(Value:Boolean);//0049EBD8
    procedure SetFlat(Value:Boolean);//0049EC74
    procedure SetGroupIndex(Value:Integer);//0049ECA8
    procedure SetLayout(Value:TButtonLayout);//0049ECDC
    procedure SetMargin(Value:Integer);//0049ED10
    procedure SetSpacing(Value:Integer);//0049ED48
    procedure SetTransparent(Value:Boolean);//0049ED7C
    procedure SetAllowAllUp(Value:Boolean);//0049EDE0
  end;
  TGlyphList = class(TImageList)
  public
    Used:TBits;//f80
    FCount:Integer;//f84
    destructor Destroy; virtual;//0049CE10
    //constructor Create(?:?);//0049CDAC
  end;
  TGlyphCache = class(TObject)
  public
    GlyphLists:TList;//f4
    constructor Create;//0049CF38
  end;
  TButtonGlyph = class(TObject)
  public
    FOriginal:TBitmap;//f4
    FGlyphList:TGlyphList;//f8
    FIndexs:array[TButtonState] of System.Integer;//fC
    FTransparentColor:TColor;//f1C
    FNumGlyphs:TNumGlyphs;//f20
    FOnChange:TNotifyEvent;//f28
  end;
    destructor Destroy;//0049CE10
    //function sub_0049CE50(?:?):?;//0049CE50
    //function sub_0049CEB8(?:?; ?:TBitmap; ?:?):?;//0049CEB8
    //procedure sub_0049CEF4(?:?; ?:?);//0049CEF4
    //function sub_0049CFC8(?:TGlyphCache; ?:Integer; ?:?):?;//0049CFC8
    //procedure sub_0049D044(?:TGlyphCache; ?:?);//0049D044
    constructor sub_0049D09C;//0049D09C
    procedure sub_0049D1B8(?:Pointer);//0049D1B8
    //procedure sub_0049D220(?:?; ?:?);//0049D220
    //procedure sub_0049D26C(?:?; ?:?);//0049D26C
    //procedure sub_0049D304(?:?; ?:Integer);//0049D304
    //function sub_0049D344(?:Pointer; ?:?):?;//0049D344
    //procedure sub_0049D988(?:?; ?:?; ?:?; ?:?; ?:?);//0049D988
    //procedure sub_0049DB14(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0049DB14
    //procedure sub_0049DC0C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0049DC0C
    //procedure sub_0049DF9C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0049DF9C
    //procedure sub_0049E010(?:?);//0049E010
    //function sub_0049E040:?;//0049E040
    //function sub_0049E0A8:?;//0049E0A8
    //procedure sub_0049E0EC(?:?);//0049E0EC
    //procedure sub_0049E118(?:?);//0049E118
    constructor Create(AOwner:TComponent);//0049E144
    destructor Destroy;//0049E228
    procedure Paint;//0049E270
    procedure sub_0049E764(?:TSpeedButton);//0049E764
    procedure Loaded;//0049E7E0
    procedure MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0049E81C
    //procedure sub_0049E884(?:?; ?:?; ?:?);//0049E884
    procedure MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);//0049E944
    procedure sub_0049EA68;//0049EA68
    procedure sub_0049EA7C;//0049EA7C
    procedure sub_0049EA9C;//0049EA9C
    //procedure sub_0049EB70(?:?; ?:?);//0049EB70
    procedure sub_0049EB88(?:TSpeedButton);//0049EB88
    //procedure WMLButtonDblClk(?:?);//0049EE14
    //procedure CMEnabledChanged(?:?);//0049EE4C
    //procedure CMButtonPressed(?:?);//0049EE90
    //procedure CMDialogChar(?:?);//0049EF30
    //procedure CMFontChanged(?:?);//0049EFE0
    //procedure CMTextChanged(?:?);//0049EFF8
    //procedure CMSysColorChange(?:?);//0049F010
    //procedure CMMouseEnter(?:?);//0049F048
    //procedure CMMouseLeave(?:?);//0049F0E0
    //procedure sub_0049F16C(?:?; ?:?; ?:?);//0049F16C
    //procedure sub_0049F20C(?:?; ?:?);//0049F20C
    procedure sub_0049F2C8;//0049F2C8
    procedure _NF__383;//0049F2F0

implementation

//0049CDAC
{*constructor TGlyphList.Create(?:?);
begin
 0049CDAC    push        ebp
 0049CDAD    mov         ebp,esp
 0049CDAF    add         esp,0FFFFFFF4
 0049CDB2    test        dl,dl
>0049CDB4    je          0049CDBE
 0049CDB6    add         esp,0FFFFFFF0
 0049CDB9    call        @ClassCreate
 0049CDBE    mov         dword ptr [ebp-0C],ecx
 0049CDC1    mov         byte ptr [ebp-5],dl
 0049CDC4    mov         dword ptr [ebp-4],eax
 0049CDC7    mov         eax,dword ptr [ebp+8]
 0049CDCA    push        eax
 0049CDCB    mov         ecx,dword ptr [ebp-0C]
 0049CDCE    xor         edx,edx
 0049CDD0    mov         eax,dword ptr [ebp-4]
 0049CDD3    call        TDragImageList.Create
 0049CDD8    mov         dl,1
 0049CDDA    mov         eax,[00475A7C];TBits
 0049CDDF    call        TObject.Create;TBits.Create
 0049CDE4    mov         edx,dword ptr [ebp-4]
 0049CDE7    mov         dword ptr [edx+80],eax
 0049CDED    mov         eax,dword ptr [ebp-4]
 0049CDF0    cmp         byte ptr [ebp-5],0
>0049CDF4    je          0049CE05
 0049CDF6    call        @AfterConstruction
 0049CDFB    pop         dword ptr fs:[0]
 0049CE02    add         esp,0C
 0049CE05    mov         eax,dword ptr [ebp-4]
 0049CE08    mov         esp,ebp
 0049CE0A    pop         ebp
 0049CE0B    ret         4
end;*}

//0049CE10
destructor TGlyphList.Destroy;
begin
{*
 0049CE10    push        ebp
 0049CE11    mov         ebp,esp
 0049CE13    add         esp,0FFFFFFF8
 0049CE16    call        @BeforeDestruction
 0049CE1B    mov         byte ptr [ebp-5],dl
 0049CE1E    mov         dword ptr [ebp-4],eax
 0049CE21    mov         eax,dword ptr [ebp-4]
 0049CE24    mov         eax,dword ptr [eax+80]
 0049CE2A    call        TObject.Free
 0049CE2F    mov         dl,byte ptr [ebp-5]
 0049CE32    and         dl,0FC
 0049CE35    mov         eax,dword ptr [ebp-4]
 0049CE38    call        TCustomImageList.Destroy
 0049CE3D    cmp         byte ptr [ebp-5],0
>0049CE41    jle         0049CE4B
 0049CE43    mov         eax,dword ptr [ebp-4]
 0049CE46    call        @ClassDestroy
 0049CE4B    pop         ecx
 0049CE4C    pop         ecx
 0049CE4D    pop         ebp
 0049CE4E    ret
*}
end;

//0049CE50
{*function sub_0049CE50(?:?):?;
begin
 0049CE50    push        ebp
 0049CE51    mov         ebp,esp
 0049CE53    add         esp,0FFFFFFF8
 0049CE56    mov         dword ptr [ebp-4],eax
 0049CE59    mov         eax,dword ptr [ebp-4]
 0049CE5C    mov         eax,dword ptr [eax+80]
 0049CE62    call        00478FB4
 0049CE67    mov         dword ptr [ebp-8],eax
 0049CE6A    mov         eax,dword ptr [ebp-4]
 0049CE6D    mov         eax,dword ptr [eax+80]
 0049CE73    mov         eax,dword ptr [eax+4]
 0049CE76    cmp         eax,dword ptr [ebp-8]
>0049CE79    jg          0049CE9C
 0049CE7B    xor         ecx,ecx
 0049CE7D    xor         edx,edx
 0049CE7F    mov         eax,dword ptr [ebp-4]
 0049CE82    call        004DC8F0
 0049CE87    mov         dword ptr [ebp-8],eax
 0049CE8A    mov         edx,dword ptr [ebp-8]
 0049CE8D    inc         edx
 0049CE8E    mov         eax,dword ptr [ebp-4]
 0049CE91    mov         eax,dword ptr [eax+80]
 0049CE97    call        TBits.SetSize
 0049CE9C    mov         cl,1
 0049CE9E    mov         edx,dword ptr [ebp-8]
 0049CEA1    mov         eax,dword ptr [ebp-4]
 0049CEA4    mov         eax,dword ptr [eax+80]
 0049CEAA    call        TBits.SetBit
 0049CEAF    mov         eax,dword ptr [ebp-8]
 0049CEB2    pop         ecx
 0049CEB3    pop         ecx
 0049CEB4    pop         ebp
 0049CEB5    ret
end;*}

//0049CEB8
{*function sub_0049CEB8(?:?; ?:TBitmap; ?:?):?;
begin
 0049CEB8    push        ebp
 0049CEB9    mov         ebp,esp
 0049CEBB    add         esp,0FFFFFFF0
 0049CEBE    mov         dword ptr [ebp-0C],ecx
 0049CEC1    mov         dword ptr [ebp-8],edx
 0049CEC4    mov         dword ptr [ebp-4],eax
 0049CEC7    mov         eax,dword ptr [ebp-4]
 0049CECA    call        0049CE50
 0049CECF    mov         dword ptr [ebp-10],eax
 0049CED2    mov         eax,dword ptr [ebp-0C]
 0049CED5    push        eax
 0049CED6    mov         ecx,dword ptr [ebp-8]
 0049CED9    mov         edx,dword ptr [ebp-10]
 0049CEDC    mov         eax,dword ptr [ebp-4]
 0049CEDF    call        004DCB98
 0049CEE4    mov         eax,dword ptr [ebp-4]
 0049CEE7    inc         dword ptr [eax+84]
 0049CEED    mov         eax,dword ptr [ebp-10]
 0049CEF0    mov         esp,ebp
 0049CEF2    pop         ebp
 0049CEF3    ret
end;*}

//0049CEF4
{*procedure sub_0049CEF4(?:?; ?:?);
begin
 0049CEF4    push        ebp
 0049CEF5    mov         ebp,esp
 0049CEF7    add         esp,0FFFFFFF8
 0049CEFA    mov         dword ptr [ebp-8],edx
 0049CEFD    mov         dword ptr [ebp-4],eax
 0049CF00    mov         edx,dword ptr [ebp-8]
 0049CF03    mov         eax,dword ptr [ebp-4]
 0049CF06    mov         eax,dword ptr [eax+80]
 0049CF0C    call        TBits.GetBit
 0049CF11    test        al,al
>0049CF13    je          0049CF31
 0049CF15    mov         eax,dword ptr [ebp-4]
 0049CF18    dec         dword ptr [eax+84]
 0049CF1E    xor         ecx,ecx
 0049CF20    mov         edx,dword ptr [ebp-8]
 0049CF23    mov         eax,dword ptr [ebp-4]
 0049CF26    mov         eax,dword ptr [eax+80]
 0049CF2C    call        TBits.SetBit
 0049CF31    pop         ecx
 0049CF32    pop         ecx
 0049CF33    pop         ebp
 0049CF34    ret
end;*}

//0049CF38
constructor TGlyphCache.Create;
begin
{*
 0049CF38    push        ebp
 0049CF39    mov         ebp,esp
 0049CF3B    add         esp,0FFFFFFF8
 0049CF3E    test        dl,dl
>0049CF40    je          0049CF4A
 0049CF42    add         esp,0FFFFFFF0
 0049CF45    call        @ClassCreate
 0049CF4A    mov         byte ptr [ebp-5],dl
 0049CF4D    mov         dword ptr [ebp-4],eax
 0049CF50    xor         edx,edx
 0049CF52    mov         eax,dword ptr [ebp-4]
 0049CF55    call        TObject.Create
 0049CF5A    mov         dl,1
 0049CF5C    mov         eax,[004759C0];TList
 0049CF61    call        TObject.Create;TList.Create
 0049CF66    mov         edx,dword ptr [ebp-4]
 0049CF69    mov         dword ptr [edx+4],eax
 0049CF6C    mov         eax,dword ptr [ebp-4]
 0049CF6F    cmp         byte ptr [ebp-5],0
>0049CF73    je          0049CF84
 0049CF75    call        @AfterConstruction
 0049CF7A    pop         dword ptr fs:[0]
 0049CF81    add         esp,0C
 0049CF84    mov         eax,dword ptr [ebp-4]
 0049CF87    pop         ecx
 0049CF88    pop         ecx
 0049CF89    pop         ebp
 0049CF8A    ret
*}
end;

//0049CFC8
{*function sub_0049CFC8(?:TGlyphCache; ?:Integer; ?:?):?;
begin
 0049CFC8    push        ebp
 0049CFC9    mov         ebp,esp
 0049CFCB    add         esp,0FFFFFFEC
 0049CFCE    mov         dword ptr [ebp-0C],ecx
 0049CFD1    mov         dword ptr [ebp-8],edx
 0049CFD4    mov         dword ptr [ebp-4],eax
 0049CFD7    mov         eax,dword ptr [ebp-4]
 0049CFDA    mov         eax,dword ptr [eax+4]
 0049CFDD    mov         eax,dword ptr [eax+8]
 0049CFE0    dec         eax
 0049CFE1    cmp         eax,0
>0049CFE4    jl          0049D019
 0049CFE6    mov         dword ptr [ebp-14],eax
 0049CFE9    mov         eax,dword ptr [ebp-4]
 0049CFEC    mov         eax,dword ptr [eax+4]
 0049CFEF    mov         edx,dword ptr [ebp-14]
 0049CFF2    call        TList.Get
 0049CFF7    mov         dword ptr [ebp-10],eax
 0049CFFA    mov         eax,dword ptr [ebp-10]
 0049CFFD    mov         eax,dword ptr [eax+34]
 0049D000    cmp         eax,dword ptr [ebp-8]
>0049D003    jne         0049D010
 0049D005    mov         eax,dword ptr [ebp-10]
 0049D008    mov         eax,dword ptr [eax+30]
 0049D00B    cmp         eax,dword ptr [ebp-0C]
>0049D00E    je          0049D03D
 0049D010    dec         dword ptr [ebp-14]
 0049D013    cmp         dword ptr [ebp-14],0FFFFFFFF
>0049D017    jne         0049CFE9
 0049D019    mov         eax,dword ptr [ebp-0C]
 0049D01C    push        eax
 0049D01D    mov         ecx,dword ptr [ebp-8]
 0049D020    mov         dl,1
 0049D022    mov         eax,[0049CC38];TGlyphList
 0049D027    call        TGlyphList.Create;TGlyphList.Create
 0049D02C    mov         dword ptr [ebp-10],eax
 0049D02F    mov         eax,dword ptr [ebp-4]
 0049D032    mov         eax,dword ptr [eax+4]
 0049D035    mov         edx,dword ptr [ebp-10]
 0049D038    call        TList.Add
 0049D03D    mov         eax,dword ptr [ebp-10]
 0049D040    mov         esp,ebp
 0049D042    pop         ebp
 0049D043    ret
end;*}

//0049D044
{*procedure sub_0049D044(?:TGlyphCache; ?:?);
begin
 0049D044    push        ebp
 0049D045    mov         ebp,esp
 0049D047    add         esp,0FFFFFFF8
 0049D04A    mov         dword ptr [ebp-8],edx
 0049D04D    mov         dword ptr [ebp-4],eax
 0049D050    cmp         dword ptr [ebp-8],0
>0049D054    je          0049D078
 0049D056    mov         eax,dword ptr [ebp-8]
 0049D059    cmp         dword ptr [eax+84],0
>0049D060    jne         0049D078
 0049D062    mov         edx,dword ptr [ebp-8]
 0049D065    mov         eax,dword ptr [ebp-4]
 0049D068    mov         eax,dword ptr [eax+4]
 0049D06B    call        00478AC4
 0049D070    mov         eax,dword ptr [ebp-8]
 0049D073    call        TObject.Free
 0049D078    pop         ecx
 0049D079    pop         ecx
 0049D07A    pop         ebp
 0049D07B    ret
end;*}

//0049D09C
constructor sub_0049D09C;
begin
{*
 0049D09C    push        ebp
 0049D09D    mov         ebp,esp
 0049D09F    add         esp,0FFFFFFF8
 0049D0A2    test        dl,dl
>0049D0A4    je          0049D0AE
 0049D0A6    add         esp,0FFFFFFF0
 0049D0A9    call        @ClassCreate
 0049D0AE    mov         byte ptr [ebp-5],dl
 0049D0B1    mov         dword ptr [ebp-4],eax
 0049D0B4    xor         edx,edx
 0049D0B6    mov         eax,dword ptr [ebp-4]
 0049D0B9    call        TObject.Create
 0049D0BE    mov         dl,1
 0049D0C0    mov         eax,[00485C6C];TBitmap
 0049D0C5    call        TBitmap.Create;TBitmap.Create
 0049D0CA    mov         edx,dword ptr [ebp-4]
 0049D0CD    mov         dword ptr [edx+4],eax
 0049D0D0    mov         eax,dword ptr [ebp-4]
 0049D0D3    mov         eax,dword ptr [eax+4]
 0049D0D6    mov         edx,dword ptr [ebp-4]
 0049D0D9    mov         dword ptr [eax+14],edx
 0049D0DC    mov         dword ptr [eax+10],49D220;sub_0049D220
 0049D0E3    mov         eax,dword ptr [ebp-4]
 0049D0E6    mov         dword ptr [eax+1C],8080
 0049D0ED    mov         eax,dword ptr [ebp-4]
 0049D0F0    mov         byte ptr [eax+20],1
 0049D0F4    mov         byte ptr [ebp-6],0
 0049D0F8    xor         eax,eax
 0049D0FA    mov         al,byte ptr [ebp-6]
 0049D0FD    mov         edx,dword ptr [ebp-4]
 0049D100    mov         dword ptr [edx+eax*4+0C],0FFFFFFFF
 0049D108    inc         byte ptr [ebp-6]
 0049D10B    cmp         byte ptr [ebp-6],4
>0049D10F    jne         0049D0F8
 0049D111    cmp         dword ptr ds:[54136C],0;gvar_0054136C:TGlyphCache
>0049D118    jne         0049D12B
 0049D11A    mov         dl,1
 0049D11C    mov         eax,[0049CCF8];TGlyphCache
 0049D121    call        TGlyphCache.Create;TGlyphCache.Create
 0049D126    mov         [0054136C],eax;gvar_0054136C:TGlyphCache
 0049D12B    mov         eax,dword ptr [ebp-4]
 0049D12E    cmp         byte ptr [ebp-5],0
>0049D132    je          0049D143
 0049D134    call        @AfterConstruction
 0049D139    pop         dword ptr fs:[0]
 0049D140    add         esp,0C
 0049D143    mov         eax,dword ptr [ebp-4]
 0049D146    pop         ecx
 0049D147    pop         ecx
 0049D148    pop         ebp
 0049D149    ret
*}
end;

//0049D1B8
procedure sub_0049D1B8(?:Pointer);
begin
{*
 0049D1B8    push        ebp
 0049D1B9    mov         ebp,esp
 0049D1BB    add         esp,0FFFFFFF8
 0049D1BE    mov         dword ptr [ebp-4],eax
 0049D1C1    mov         byte ptr [ebp-5],0
 0049D1C5    xor         eax,eax
 0049D1C7    mov         al,byte ptr [ebp-5]
 0049D1CA    mov         edx,dword ptr [ebp-4]
 0049D1CD    cmp         dword ptr [edx+eax*4+0C],0FFFFFFFF
>0049D1D2    je          0049D1EB
 0049D1D4    xor         eax,eax
 0049D1D6    mov         al,byte ptr [ebp-5]
 0049D1D9    mov         edx,dword ptr [ebp-4]
 0049D1DC    mov         edx,dword ptr [edx+eax*4+0C]
 0049D1E0    mov         eax,dword ptr [ebp-4]
 0049D1E3    mov         eax,dword ptr [eax+8]
 0049D1E6    call        0049CEF4
 0049D1EB    xor         eax,eax
 0049D1ED    mov         al,byte ptr [ebp-5]
 0049D1F0    mov         edx,dword ptr [ebp-4]
 0049D1F3    mov         dword ptr [edx+eax*4+0C],0FFFFFFFF
 0049D1FB    inc         byte ptr [ebp-5]
 0049D1FE    cmp         byte ptr [ebp-5],4
>0049D202    jne         0049D1C5
 0049D204    mov         eax,dword ptr [ebp-4]
 0049D207    mov         edx,dword ptr [eax+8]
 0049D20A    mov         eax,[0054136C];0x0 gvar_0054136C:TGlyphCache
 0049D20F    call        0049D044
 0049D214    mov         eax,dword ptr [ebp-4]
 0049D217    xor         edx,edx
 0049D219    mov         dword ptr [eax+8],edx
 0049D21C    pop         ecx
 0049D21D    pop         ecx
 0049D21E    pop         ebp
 0049D21F    ret
*}
end;

//0049D220
{*procedure sub_0049D220(?:?; ?:?);
begin
 0049D220    push        ebp
 0049D221    mov         ebp,esp
 0049D223    add         esp,0FFFFFFF8
 0049D226    push        ebx
 0049D227    mov         dword ptr [ebp-8],edx
 0049D22A    mov         dword ptr [ebp-4],eax
 0049D22D    mov         eax,dword ptr [ebp-8]
 0049D230    mov         edx,dword ptr [ebp-4]
 0049D233    cmp         eax,dword ptr [edx+4]
>0049D236    jne         0049D267
 0049D238    mov         eax,dword ptr [ebp-4]
 0049D23B    mov         eax,dword ptr [eax+4]
 0049D23E    call        0048D810
 0049D243    mov         edx,dword ptr [ebp-4]
 0049D246    mov         dword ptr [edx+1C],eax
 0049D249    mov         eax,dword ptr [ebp-4]
 0049D24C    call        0049D1B8
 0049D251    mov         eax,dword ptr [ebp-4]
 0049D254    cmp         word ptr [eax+2A],0
>0049D259    je          0049D267
 0049D25B    mov         ebx,dword ptr [ebp-4]
 0049D25E    mov         edx,dword ptr [ebp-4]
 0049D261    mov         eax,dword ptr [ebx+2C]
 0049D264    call        dword ptr [ebx+28]
 0049D267    pop         ebx
 0049D268    pop         ecx
 0049D269    pop         ecx
 0049D26A    pop         ebp
 0049D26B    ret
end;*}

//0049D26C
{*procedure sub_0049D26C(?:?; ?:?);
begin
 0049D26C    push        ebp
 0049D26D    mov         ebp,esp
 0049D26F    add         esp,0FFFFFFF4
 0049D272    mov         dword ptr [ebp-8],edx
 0049D275    mov         dword ptr [ebp-4],eax
 0049D278    mov         eax,dword ptr [ebp-4]
 0049D27B    call        0049D1B8
 0049D280    mov         edx,dword ptr [ebp-8]
 0049D283    mov         eax,dword ptr [ebp-4]
 0049D286    mov         eax,dword ptr [eax+4]
 0049D289    mov         ecx,dword ptr [eax]
 0049D28B    call        dword ptr [ecx+8]
 0049D28E    cmp         dword ptr [ebp-8],0
>0049D292    je          0049D2FD
 0049D294    mov         eax,dword ptr [ebp-8]
 0049D297    mov         edx,dword ptr [eax]
 0049D299    call        dword ptr [edx+20]
 0049D29C    test        eax,eax
>0049D29E    jle         0049D2FD
 0049D2A0    mov         eax,dword ptr [ebp-8]
 0049D2A3    call        0048D810
 0049D2A8    mov         edx,dword ptr [ebp-4]
 0049D2AB    mov         dword ptr [edx+1C],eax
 0049D2AE    mov         eax,dword ptr [ebp-8]
 0049D2B1    mov         edx,dword ptr [eax]
 0049D2B3    call        dword ptr [edx+2C]
 0049D2B6    push        eax
 0049D2B7    mov         eax,dword ptr [ebp-8]
 0049D2BA    mov         edx,dword ptr [eax]
 0049D2BC    call        dword ptr [edx+20]
 0049D2BF    pop         edx
 0049D2C0    xchg        eax,edx
 0049D2C1    mov         ecx,edx
 0049D2C3    cdq
 0049D2C4    idiv        eax,ecx
 0049D2C6    test        edx,edx
>0049D2C8    jne         0049D2FD
 0049D2CA    mov         eax,dword ptr [ebp-8]
 0049D2CD    mov         edx,dword ptr [eax]
 0049D2CF    call        dword ptr [edx+2C]
 0049D2D2    push        eax
 0049D2D3    mov         eax,dword ptr [ebp-8]
 0049D2D6    mov         edx,dword ptr [eax]
 0049D2D8    call        dword ptr [edx+20]
 0049D2DB    pop         edx
 0049D2DC    xchg        eax,edx
 0049D2DD    mov         ecx,edx
 0049D2DF    cdq
 0049D2E0    idiv        eax,ecx
 0049D2E2    mov         dword ptr [ebp-0C],eax
 0049D2E5    cmp         dword ptr [ebp-0C],4
>0049D2E9    jle         0049D2F2
 0049D2EB    mov         dword ptr [ebp-0C],1
 0049D2F2    mov         dl,byte ptr [ebp-0C]
 0049D2F5    mov         eax,dword ptr [ebp-4]
 0049D2F8    call        0049D304
 0049D2FD    mov         esp,ebp
 0049D2FF    pop         ebp
 0049D300    ret
end;*}

//0049D304
{*procedure sub_0049D304(?:?; ?:Integer);
begin
 0049D304    push        ebp
 0049D305    mov         ebp,esp
 0049D307    add         esp,0FFFFFFF8
 0049D30A    mov         byte ptr [ebp-5],dl
 0049D30D    mov         dword ptr [ebp-4],eax
 0049D310    mov         al,byte ptr [ebp-5]
 0049D313    mov         edx,dword ptr [ebp-4]
 0049D316    cmp         al,byte ptr [edx+20]
>0049D319    je          0049D340
 0049D31B    cmp         byte ptr [ebp-5],0
>0049D31F    jbe         0049D340
 0049D321    mov         eax,dword ptr [ebp-4]
 0049D324    call        0049D1B8
 0049D329    mov         al,byte ptr [ebp-5]
 0049D32C    mov         edx,dword ptr [ebp-4]
 0049D32F    mov         byte ptr [edx+20],al
 0049D332    mov         eax,dword ptr [ebp-4]
 0049D335    mov         edx,dword ptr [eax+4]
 0049D338    mov         eax,dword ptr [ebp-4]
 0049D33B    call        0049D220
 0049D340    pop         ecx
 0049D341    pop         ecx
 0049D342    pop         ebp
 0049D343    ret
end;*}

//0049D344
{*function sub_0049D344(?:Pointer; ?:?):?;
begin
 0049D344    push        ebp
 0049D345    mov         ebp,esp
 0049D347    add         esp,0FFFFFFB0
 0049D34A    push        ebx
 0049D34B    mov         byte ptr [ebp-5],dl
 0049D34E    mov         dword ptr [ebp-4],eax
 0049D351    cmp         byte ptr [ebp-5],2
>0049D355    jne         0049D364
 0049D357    mov         eax,dword ptr [ebp-4]
 0049D35A    cmp         byte ptr [eax+20],3
>0049D35E    jae         0049D364
 0049D360    mov         byte ptr [ebp-5],0
 0049D364    xor         eax,eax
 0049D366    mov         al,byte ptr [ebp-5]
 0049D369    mov         edx,dword ptr [ebp-4]
 0049D36C    mov         eax,dword ptr [edx+eax*4+0C]
 0049D370    mov         dword ptr [ebp-0C],eax
 0049D373    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0049D377    jne         0049D97F
 0049D37D    mov         eax,dword ptr [ebp-4]
 0049D380    mov         eax,dword ptr [eax+4]
 0049D383    mov         edx,dword ptr [eax]
 0049D385    call        dword ptr [edx+2C]
 0049D388    mov         ebx,eax
 0049D38A    mov         eax,dword ptr [ebp-4]
 0049D38D    mov         eax,dword ptr [eax+4]
 0049D390    mov         edx,dword ptr [eax]
 0049D392    call        dword ptr [edx+20]
 0049D395    or          ebx,eax
>0049D397    je          0049D97F
 0049D39D    mov         eax,dword ptr [ebp-4]
 0049D3A0    mov         eax,dword ptr [eax+4]
 0049D3A3    mov         edx,dword ptr [eax]
 0049D3A5    call        dword ptr [edx+2C]
 0049D3A8    mov         edx,dword ptr [ebp-4]
 0049D3AB    movzx       edx,byte ptr [edx+20]
 0049D3AF    mov         ecx,edx
 0049D3B1    cdq
 0049D3B2    idiv        eax,ecx
 0049D3B4    mov         dword ptr [ebp-1C],eax
 0049D3B7    mov         eax,dword ptr [ebp-4]
 0049D3BA    mov         eax,dword ptr [eax+4]
 0049D3BD    mov         edx,dword ptr [eax]
 0049D3BF    call        dword ptr [edx+20]
 0049D3C2    mov         dword ptr [ebp-20],eax
 0049D3C5    mov         eax,dword ptr [ebp-4]
 0049D3C8    cmp         dword ptr [eax+8],0
>0049D3CC    jne         0049D3FE
 0049D3CE    cmp         dword ptr ds:[54136C],0;gvar_0054136C:TGlyphCache
>0049D3D5    jne         0049D3E8
 0049D3D7    mov         dl,1
 0049D3D9    mov         eax,[0049CCF8];TGlyphCache
 0049D3DE    call        TGlyphCache.Create;TGlyphCache.Create
 0049D3E3    mov         [0054136C],eax;gvar_0054136C:TGlyphCache
 0049D3E8    mov         ecx,dword ptr [ebp-20]
 0049D3EB    mov         edx,dword ptr [ebp-1C]
 0049D3EE    mov         eax,[0054136C];0x0 gvar_0054136C:TGlyphCache
 0049D3F3    call        0049CFC8
 0049D3F8    mov         edx,dword ptr [ebp-4]
 0049D3FB    mov         dword ptr [edx+8],eax
 0049D3FE    mov         dl,1
 0049D400    mov         eax,[00485C6C];TBitmap
 0049D405    call        TBitmap.Create;TBitmap.Create
 0049D40A    mov         dword ptr [ebp-10],eax
 0049D40D    xor         eax,eax
 0049D40F    push        ebp
 0049D410    push        49D95E
 0049D415    push        dword ptr fs:[eax]
 0049D418    mov         dword ptr fs:[eax],esp
 0049D41B    mov         edx,dword ptr [ebp-1C]
 0049D41E    mov         eax,dword ptr [ebp-10]
 0049D421    mov         ecx,dword ptr [eax]
 0049D423    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 0049D426    mov         edx,dword ptr [ebp-20]
 0049D429    mov         eax,dword ptr [ebp-10]
 0049D42C    mov         ecx,dword ptr [eax]
 0049D42E    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 0049D431    mov         eax,dword ptr [ebp-20]
 0049D434    push        eax
 0049D435    lea         eax,[ebp-40]
 0049D438    push        eax
 0049D439    mov         ecx,dword ptr [ebp-1C]
 0049D43C    xor         edx,edx
 0049D43E    xor         eax,eax
 0049D440    call        Rect
 0049D445    mov         eax,dword ptr [ebp-10]
 0049D448    call        TBitmap.GetCanvas
 0049D44D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D450    mov         edx,0FF00000F
 0049D455    call        TBrush.SetColor
 0049D45A    mov         eax,dword ptr [ebp-4]
 0049D45D    mov         eax,dword ptr [eax+4]
 0049D460    mov         edx,dword ptr [eax]
 0049D462    call        dword ptr [edx+24]
 0049D465    call        0048CB64
 0049D46A    mov         edx,eax
 0049D46C    mov         eax,dword ptr [ebp-10]
 0049D46F    mov         ecx,dword ptr [eax]
 0049D471    call        dword ptr [ecx+38];TBitmap.sub_0048E810
 0049D474    mov         al,byte ptr [ebp-5]
 0049D477    mov         byte ptr [ebp-21],al
 0049D47A    mov         al,byte ptr [ebp-21]
 0049D47D    mov         edx,dword ptr [ebp-4]
 0049D480    cmp         al,byte ptr [edx+20]
>0049D483    jl          0049D489
 0049D485    mov         byte ptr [ebp-21],0
 0049D489    mov         eax,dword ptr [ebp-20]
 0049D48C    push        eax
 0049D48D    lea         eax,[ebp-50]
 0049D490    push        eax
 0049D491    xor         ecx,ecx
 0049D493    mov         cl,byte ptr [ebp-21]
 0049D496    inc         ecx
 0049D497    imul        ecx,dword ptr [ebp-1C]
 0049D49B    xor         eax,eax
 0049D49D    mov         al,byte ptr [ebp-21]
 0049D4A0    imul        dword ptr [ebp-1C]
 0049D4A3    xor         edx,edx
 0049D4A5    call        Rect
 0049D4AA    mov         al,byte ptr [ebp-5]
 0049D4AD    sub         al,1
>0049D4AF    jb          0049D4BC
>0049D4B1    je          0049D532
 0049D4B3    dec         eax
 0049D4B4    sub         al,2
>0049D4B6    jae         0049D948
 0049D4BC    lea         eax,[ebp-50]
 0049D4BF    push        eax
 0049D4C0    mov         eax,dword ptr [ebp-4]
 0049D4C3    mov         eax,dword ptr [eax+4]
 0049D4C6    call        TBitmap.GetCanvas
 0049D4CB    push        eax
 0049D4CC    mov         eax,dword ptr [ebp-10]
 0049D4CF    call        TBitmap.GetCanvas
 0049D4D4    lea         edx,[ebp-40]
 0049D4D7    pop         ecx
 0049D4D8    call        TCanvas.CopyRect
 0049D4DD    mov         eax,dword ptr [ebp-4]
 0049D4E0    mov         eax,dword ptr [eax+4]
 0049D4E3    cmp         byte ptr [eax+38],1
>0049D4E7    jne         0049D50E
 0049D4E9    mov         eax,dword ptr [ebp-4]
 0049D4EC    mov         ecx,dword ptr [eax+1C]
 0049D4EF    mov         eax,dword ptr [ebp-4]
 0049D4F2    mov         eax,dword ptr [eax+8]
 0049D4F5    mov         edx,dword ptr [ebp-10]
 0049D4F8    call        0049CEB8
 0049D4FD    xor         edx,edx
 0049D4FF    mov         dl,byte ptr [ebp-5]
 0049D502    mov         ecx,dword ptr [ebp-4]
 0049D505    mov         dword ptr [ecx+edx*4+0C],eax
>0049D509    jmp         0049D948
 0049D50E    mov         eax,dword ptr [ebp-4]
 0049D511    mov         eax,dword ptr [eax+8]
 0049D514    mov         ecx,20000000
 0049D519    mov         edx,dword ptr [ebp-10]
 0049D51C    call        0049CEB8
 0049D521    xor         edx,edx
 0049D523    mov         dl,byte ptr [ebp-5]
 0049D526    mov         ecx,dword ptr [ebp-4]
 0049D529    mov         dword ptr [ecx+edx*4+0C],eax
>0049D52D    jmp         0049D948
 0049D532    xor         eax,eax
 0049D534    mov         dword ptr [ebp-18],eax
 0049D537    xor         eax,eax
 0049D539    mov         dword ptr [ebp-14],eax
 0049D53C    xor         eax,eax
 0049D53E    push        ebp
 0049D53F    push        49D922
 0049D544    push        dword ptr fs:[eax]
 0049D547    mov         dword ptr fs:[eax],esp
 0049D54A    mov         dl,1
 0049D54C    mov         eax,[00485C6C];TBitmap
 0049D551    call        TBitmap.Create;TBitmap.Create
 0049D556    mov         dword ptr [ebp-18],eax
 0049D559    mov         dl,1
 0049D55B    mov         eax,[00485C6C];TBitmap
 0049D560    call        TBitmap.Create;TBitmap.Create
 0049D565    mov         dword ptr [ebp-14],eax
 0049D568    mov         eax,dword ptr [ebp-4]
 0049D56B    mov         edx,dword ptr [eax+4]
 0049D56E    mov         eax,dword ptr [ebp-14]
 0049D571    mov         ecx,dword ptr [eax]
 0049D573    call        dword ptr [ecx+8];TBitmap.sub_0048CED4
 0049D576    mov         dl,1
 0049D578    mov         eax,dword ptr [ebp-14]
 0049D57B    mov         ecx,dword ptr [eax]
 0049D57D    call        dword ptr [ecx+6C];TBitmap.sub_0048E528
 0049D580    mov         eax,dword ptr [ebp-4]
 0049D583    cmp         byte ptr [eax+20],1
>0049D587    jbe         0049D797
 0049D58D    mov         eax,dword ptr [ebp-10]
 0049D590    call        TBitmap.GetCanvas
 0049D595    mov         dword ptr [ebp-2C],eax
 0049D598    lea         eax,[ebp-50]
 0049D59B    push        eax
 0049D59C    mov         eax,dword ptr [ebp-14]
 0049D59F    call        TBitmap.GetCanvas
 0049D5A4    mov         ecx,eax
 0049D5A6    lea         edx,[ebp-40]
 0049D5A9    mov         eax,dword ptr [ebp-2C]
 0049D5AC    call        TCanvas.CopyRect
 0049D5B1    mov         dl,1
 0049D5B3    mov         eax,dword ptr [ebp-18]
 0049D5B6    call        0048E764
 0049D5BB    mov         edx,dword ptr [ebp-1C]
 0049D5BE    mov         eax,dword ptr [ebp-18]
 0049D5C1    mov         ecx,dword ptr [eax]
 0049D5C3    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 0049D5C6    mov         edx,dword ptr [ebp-20]
 0049D5C9    mov         eax,dword ptr [ebp-18]
 0049D5CC    mov         ecx,dword ptr [eax]
 0049D5CE    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 0049D5D1    mov         eax,dword ptr [ebp-14]
 0049D5D4    call        TBitmap.GetCanvas
 0049D5D9    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D5DC    mov         edx,0FFFFFF
 0049D5E1    call        TBrush.SetColor
 0049D5E6    lea         eax,[ebp-50]
 0049D5E9    push        eax
 0049D5EA    mov         eax,dword ptr [ebp-14]
 0049D5ED    call        TBitmap.GetCanvas
 0049D5F2    push        eax
 0049D5F3    mov         eax,dword ptr [ebp-18]
 0049D5F6    call        TBitmap.GetCanvas
 0049D5FB    lea         edx,[ebp-40]
 0049D5FE    pop         ecx
 0049D5FF    call        TCanvas.CopyRect
 0049D604    mov         eax,dword ptr [ebp-2C]
 0049D607    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D60A    mov         edx,0FF000014
 0049D60F    call        TBrush.SetColor
 0049D614    mov         eax,dword ptr [ebp-2C]
 0049D617    call        TCanvas.GetHandle
 0049D61C    mov         dword ptr [ebp-28],eax
 0049D61F    push        0
 0049D621    mov         eax,dword ptr [ebp-28]
 0049D624    push        eax
 0049D625    call        gdi32.SetTextColor
 0049D62A    push        0FFFFFF
 0049D62F    mov         eax,dword ptr [ebp-28]
 0049D632    push        eax
 0049D633    call        gdi32.SetBkColor
 0049D638    push        0E20746
 0049D63D    push        0
 0049D63F    push        0
 0049D641    mov         eax,dword ptr [ebp-18]
 0049D644    call        TBitmap.GetCanvas
 0049D649    call        TCanvas.GetHandle
 0049D64E    push        eax
 0049D64F    mov         eax,dword ptr [ebp-20]
 0049D652    push        eax
 0049D653    mov         eax,dword ptr [ebp-1C]
 0049D656    push        eax
 0049D657    push        0
 0049D659    push        0
 0049D65B    mov         eax,dword ptr [ebp-28]
 0049D65E    push        eax
 0049D65F    call        gdi32.BitBlt
 0049D664    mov         eax,dword ptr [ebp-14]
 0049D667    call        TBitmap.GetCanvas
 0049D66C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D66F    mov         edx,808080
 0049D674    call        TBrush.SetColor
 0049D679    lea         eax,[ebp-50]
 0049D67C    push        eax
 0049D67D    mov         eax,dword ptr [ebp-14]
 0049D680    call        TBitmap.GetCanvas
 0049D685    push        eax
 0049D686    mov         eax,dword ptr [ebp-18]
 0049D689    call        TBitmap.GetCanvas
 0049D68E    lea         edx,[ebp-40]
 0049D691    pop         ecx
 0049D692    call        TCanvas.CopyRect
 0049D697    mov         eax,dword ptr [ebp-2C]
 0049D69A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D69D    mov         edx,0FF000010
 0049D6A2    call        TBrush.SetColor
 0049D6A7    mov         eax,dword ptr [ebp-2C]
 0049D6AA    call        TCanvas.GetHandle
 0049D6AF    mov         dword ptr [ebp-28],eax
 0049D6B2    push        0
 0049D6B4    mov         eax,dword ptr [ebp-28]
 0049D6B7    push        eax
 0049D6B8    call        gdi32.SetTextColor
 0049D6BD    push        0FFFFFF
 0049D6C2    mov         eax,dword ptr [ebp-28]
 0049D6C5    push        eax
 0049D6C6    call        gdi32.SetBkColor
 0049D6CB    push        0E20746
 0049D6D0    push        0
 0049D6D2    push        0
 0049D6D4    mov         eax,dword ptr [ebp-18]
 0049D6D7    call        TBitmap.GetCanvas
 0049D6DC    call        TCanvas.GetHandle
 0049D6E1    push        eax
 0049D6E2    mov         eax,dword ptr [ebp-20]
 0049D6E5    push        eax
 0049D6E6    mov         eax,dword ptr [ebp-1C]
 0049D6E9    push        eax
 0049D6EA    push        0
 0049D6EC    push        0
 0049D6EE    mov         eax,dword ptr [ebp-28]
 0049D6F1    push        eax
 0049D6F2    call        gdi32.BitBlt
 0049D6F7    mov         eax,dword ptr [ebp-4]
 0049D6FA    mov         eax,dword ptr [eax+1C]
 0049D6FD    call        00486830
 0049D702    push        eax
 0049D703    mov         eax,dword ptr [ebp-14]
 0049D706    call        TBitmap.GetCanvas
 0049D70B    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D70E    pop         edx
 0049D70F    call        TBrush.SetColor
 0049D714    lea         eax,[ebp-50]
 0049D717    push        eax
 0049D718    mov         eax,dword ptr [ebp-14]
 0049D71B    call        TBitmap.GetCanvas
 0049D720    push        eax
 0049D721    mov         eax,dword ptr [ebp-18]
 0049D724    call        TBitmap.GetCanvas
 0049D729    lea         edx,[ebp-40]
 0049D72C    pop         ecx
 0049D72D    call        TCanvas.CopyRect
 0049D732    mov         eax,dword ptr [ebp-2C]
 0049D735    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D738    mov         edx,0FF00000F
 0049D73D    call        TBrush.SetColor
 0049D742    mov         eax,dword ptr [ebp-2C]
 0049D745    call        TCanvas.GetHandle
 0049D74A    mov         dword ptr [ebp-28],eax
 0049D74D    push        0
 0049D74F    mov         eax,dword ptr [ebp-28]
 0049D752    push        eax
 0049D753    call        gdi32.SetTextColor
 0049D758    push        0FFFFFF
 0049D75D    mov         eax,dword ptr [ebp-28]
 0049D760    push        eax
 0049D761    call        gdi32.SetBkColor
 0049D766    push        0E20746
 0049D76B    push        0
 0049D76D    push        0
 0049D76F    mov         eax,dword ptr [ebp-18]
 0049D772    call        TBitmap.GetCanvas
 0049D777    call        TCanvas.GetHandle
 0049D77C    push        eax
 0049D77D    mov         eax,dword ptr [ebp-20]
 0049D780    push        eax
 0049D781    mov         eax,dword ptr [ebp-1C]
 0049D784    push        eax
 0049D785    push        0
 0049D787    push        0
 0049D789    mov         eax,dword ptr [ebp-28]
 0049D78C    push        eax
 0049D78D    call        gdi32.BitBlt
>0049D792    jmp         0049D904
 0049D797    mov         eax,dword ptr [ebp-4]
 0049D79A    mov         edx,dword ptr [eax+4]
 0049D79D    mov         eax,dword ptr [ebp-18]
 0049D7A0    mov         ecx,dword ptr [eax]
 0049D7A2    call        dword ptr [ecx+8];TBitmap.sub_0048CED4
 0049D7A5    mov         dl,1
 0049D7A7    mov         eax,dword ptr [ebp-18]
 0049D7AA    mov         ecx,dword ptr [eax]
 0049D7AC    call        dword ptr [ecx+6C];TBitmap.sub_0048E528
 0049D7AF    mov         eax,dword ptr [ebp-18]
 0049D7B2    call        TBitmap.GetCanvas
 0049D7B7    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D7BA    xor         edx,edx
 0049D7BC    call        TBrush.SetColor
 0049D7C1    mov         edx,dword ptr [ebp-1C]
 0049D7C4    mov         eax,dword ptr [ebp-18]
 0049D7C7    mov         ecx,dword ptr [eax]
 0049D7C9    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 0049D7CC    mov         eax,dword ptr [ebp-18]
 0049D7CF    call        0048D65C
 0049D7D4    test        al,al
>0049D7D6    je          0049D80C
 0049D7D8    mov         eax,dword ptr [ebp-18]
 0049D7DB    call        TBitmap.GetCanvas
 0049D7E0    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0049D7E3    mov         edx,0FFFFFF
 0049D7E8    call        TFont.SetColor
 0049D7ED    xor         edx,edx
 0049D7EF    mov         eax,dword ptr [ebp-18]
 0049D7F2    call        0048E764
 0049D7F7    mov         eax,dword ptr [ebp-18]
 0049D7FA    call        TBitmap.GetCanvas
 0049D7FF    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D802    mov         edx,0FFFFFF
 0049D807    call        TBrush.SetColor
 0049D80C    mov         dl,1
 0049D80E    mov         eax,dword ptr [ebp-18]
 0049D811    call        0048E764
 0049D816    mov         eax,dword ptr [ebp-10]
 0049D819    call        TBitmap.GetCanvas
 0049D81E    mov         dword ptr [ebp-30],eax
 0049D821    mov         eax,dword ptr [ebp-30]
 0049D824    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D827    mov         edx,0FF00000F
 0049D82C    call        TBrush.SetColor
 0049D831    lea         edx,[ebp-40]
 0049D834    mov         eax,dword ptr [ebp-30]
 0049D837    call        TCanvas.FillRect
 0049D83C    mov         eax,dword ptr [ebp-30]
 0049D83F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D842    mov         edx,0FF000014
 0049D847    call        TBrush.SetColor
 0049D84C    push        0
 0049D84E    mov         eax,dword ptr [ebp-30]
 0049D851    call        TCanvas.GetHandle
 0049D856    push        eax
 0049D857    call        gdi32.SetTextColor
 0049D85C    push        0FFFFFF
 0049D861    mov         eax,dword ptr [ebp-30]
 0049D864    call        TCanvas.GetHandle
 0049D869    push        eax
 0049D86A    call        gdi32.SetBkColor
 0049D86F    push        0E20746
 0049D874    push        0
 0049D876    push        0
 0049D878    mov         eax,dword ptr [ebp-18]
 0049D87B    call        TBitmap.GetCanvas
 0049D880    call        TCanvas.GetHandle
 0049D885    push        eax
 0049D886    mov         eax,dword ptr [ebp-20]
 0049D889    push        eax
 0049D88A    mov         eax,dword ptr [ebp-1C]
 0049D88D    push        eax
 0049D88E    push        1
 0049D890    push        1
 0049D892    mov         eax,dword ptr [ebp-30]
 0049D895    call        TCanvas.GetHandle
 0049D89A    push        eax
 0049D89B    call        gdi32.BitBlt
 0049D8A0    mov         eax,dword ptr [ebp-30]
 0049D8A3    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049D8A6    mov         edx,0FF000010
 0049D8AB    call        TBrush.SetColor
 0049D8B0    push        0
 0049D8B2    mov         eax,dword ptr [ebp-30]
 0049D8B5    call        TCanvas.GetHandle
 0049D8BA    push        eax
 0049D8BB    call        gdi32.SetTextColor
 0049D8C0    push        0FFFFFF
 0049D8C5    mov         eax,dword ptr [ebp-30]
 0049D8C8    call        TCanvas.GetHandle
 0049D8CD    push        eax
 0049D8CE    call        gdi32.SetBkColor
 0049D8D3    push        0E20746
 0049D8D8    push        0
 0049D8DA    push        0
 0049D8DC    mov         eax,dword ptr [ebp-18]
 0049D8DF    call        TBitmap.GetCanvas
 0049D8E4    call        TCanvas.GetHandle
 0049D8E9    push        eax
 0049D8EA    mov         eax,dword ptr [ebp-20]
 0049D8ED    push        eax
 0049D8EE    mov         eax,dword ptr [ebp-1C]
 0049D8F1    push        eax
 0049D8F2    push        0
 0049D8F4    push        0
 0049D8F6    mov         eax,dword ptr [ebp-30]
 0049D8F9    call        TCanvas.GetHandle
 0049D8FE    push        eax
 0049D8FF    call        gdi32.BitBlt
 0049D904    xor         eax,eax
 0049D906    pop         edx
 0049D907    pop         ecx
 0049D908    pop         ecx
 0049D909    mov         dword ptr fs:[eax],edx
 0049D90C    push        49D929
 0049D911    mov         eax,dword ptr [ebp-14]
 0049D914    call        TObject.Free
 0049D919    mov         eax,dword ptr [ebp-18]
 0049D91C    call        TObject.Free
 0049D921    ret
>0049D922    jmp         @HandleFinally
>0049D927    jmp         0049D911
 0049D929    mov         eax,dword ptr [ebp-4]
 0049D92C    mov         eax,dword ptr [eax+8]
 0049D92F    mov         ecx,20000000
 0049D934    mov         edx,dword ptr [ebp-10]
 0049D937    call        0049CEB8
 0049D93C    xor         edx,edx
 0049D93E    mov         dl,byte ptr [ebp-5]
 0049D941    mov         ecx,dword ptr [ebp-4]
 0049D944    mov         dword ptr [ecx+edx*4+0C],eax
 0049D948    xor         eax,eax
 0049D94A    pop         edx
 0049D94B    pop         ecx
 0049D94C    pop         ecx
 0049D94D    mov         dword ptr fs:[eax],edx
 0049D950    push        49D965
 0049D955    mov         eax,dword ptr [ebp-10]
 0049D958    call        TObject.Free
 0049D95D    ret
>0049D95E    jmp         @HandleFinally
>0049D963    jmp         0049D955
 0049D965    xor         eax,eax
 0049D967    mov         al,byte ptr [ebp-5]
 0049D96A    mov         edx,dword ptr [ebp-4]
 0049D96D    mov         eax,dword ptr [edx+eax*4+0C]
 0049D971    mov         dword ptr [ebp-0C],eax
 0049D974    mov         eax,dword ptr [ebp-4]
 0049D977    mov         eax,dword ptr [eax+4]
 0049D97A    call        0048D108
 0049D97F    mov         eax,dword ptr [ebp-0C]
 0049D982    pop         ebx
 0049D983    mov         esp,ebp
 0049D985    pop         ebp
 0049D986    ret
end;*}

//0049D988
{*procedure sub_0049D988(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0049D988    push        ebp
 0049D989    mov         ebp,esp
 0049D98B    add         esp,0FFFFFFD0
 0049D98E    mov         dword ptr [ebp-0C],ecx
 0049D991    mov         dword ptr [ebp-8],edx
 0049D994    mov         dword ptr [ebp-4],eax
 0049D997    mov         eax,dword ptr [ebp-4]
 0049D99A    cmp         dword ptr [eax+4],0
>0049D99E    je          0049DB0E
 0049D9A4    mov         eax,dword ptr [ebp-4]
 0049D9A7    mov         eax,dword ptr [eax+4]
 0049D9AA    mov         edx,dword ptr [eax]
 0049D9AC    call        dword ptr [edx+2C]
 0049D9AF    test        eax,eax
>0049D9B1    je          0049DB0E
 0049D9B7    mov         eax,dword ptr [ebp-4]
 0049D9BA    mov         eax,dword ptr [eax+4]
 0049D9BD    mov         edx,dword ptr [eax]
 0049D9BF    call        dword ptr [edx+20]
 0049D9C2    test        eax,eax
>0049D9C4    je          0049DB0E
 0049D9CA    mov         dl,byte ptr [ebp+0C]
 0049D9CD    mov         eax,dword ptr [ebp-4]
 0049D9D0    call        0049D344
 0049D9D5    mov         dword ptr [ebp-10],eax
 0049D9D8    call        ThemeServices
 0049D9DD    call        TThemeServices.GetThemesEnabled
 0049D9E2    test        al,al
>0049D9E4    je          0049DA84
 0049D9EA    mov         eax,dword ptr [ebp-0C]
 0049D9ED    mov         edx,dword ptr [eax]
 0049D9EF    mov         dword ptr [ebp-30],edx
 0049D9F2    mov         edx,dword ptr [eax+4]
 0049D9F5    mov         dword ptr [ebp-2C],edx
 0049D9F8    mov         eax,dword ptr [ebp-4]
 0049D9FB    mov         eax,dword ptr [eax+4]
 0049D9FE    mov         edx,dword ptr [eax]
 0049DA00    call        dword ptr [edx+2C]
 0049DA03    mov         edx,dword ptr [ebp-4]
 0049DA06    movzx       edx,byte ptr [edx+20]
 0049DA0A    mov         ecx,edx
 0049DA0C    cdq
 0049DA0D    idiv        eax,ecx
 0049DA0F    add         eax,dword ptr [ebp-30]
 0049DA12    mov         dword ptr [ebp-28],eax
 0049DA15    mov         eax,dword ptr [ebp-4]
 0049DA18    mov         eax,dword ptr [eax+4]
 0049DA1B    mov         edx,dword ptr [eax]
 0049DA1D    call        dword ptr [edx+20]
 0049DA20    add         eax,dword ptr [ebp-2C]
 0049DA23    mov         dword ptr [ebp-24],eax
 0049DA26    mov         al,byte ptr [ebp+0C]
 0049DA29    dec         al
>0049DA2B    je          0049DA34
 0049DA2D    dec         eax
 0049DA2E    sub         al,2
>0049DA30    jb          0049DA3A
>0049DA32    jmp         0049DA40
 0049DA34    mov         byte ptr [ebp-11],5
>0049DA38    jmp         0049DA44
 0049DA3A    mov         byte ptr [ebp-11],4
>0049DA3E    jmp         0049DA44
 0049DA40    mov         byte ptr [ebp-11],2
 0049DA44    call        ThemeServices
 0049DA49    lea         ecx,[ebp-20]
 0049DA4C    mov         dl,byte ptr [ebp-11]
 0049DA4F    call        004B6600
 0049DA54    lea         eax,[ebp-30]
 0049DA57    push        eax
 0049DA58    mov         eax,dword ptr [ebp-4]
 0049DA5B    mov         eax,dword ptr [eax+8]
 0049DA5E    call        004DC758
 0049DA63    push        eax
 0049DA64    mov         eax,dword ptr [ebp-10]
 0049DA67    push        eax
 0049DA68    mov         eax,dword ptr [ebp-8]
 0049DA6B    call        TCanvas.GetHandle
 0049DA70    push        eax
 0049DA71    call        ThemeServices
 0049DA76    lea         ecx,[ebp-20]
 0049DA79    pop         edx
 0049DA7A    call        004B64D4
>0049DA7F    jmp         0049DB0E
 0049DA84    cmp         byte ptr [ebp+8],0
>0049DA88    jne         0049DA90
 0049DA8A    cmp         byte ptr [ebp+0C],3
>0049DA8E    jne         0049DACD
 0049DA90    push        1
 0049DA92    push        1FFFFFFF
 0049DA97    push        1FFFFFFF
 0049DA9C    push        0
 0049DA9E    push        0
 0049DAA0    mov         eax,dword ptr [ebp-0C]
 0049DAA3    mov         eax,dword ptr [eax+4]
 0049DAA6    push        eax
 0049DAA7    mov         eax,dword ptr [ebp-0C]
 0049DAAA    mov         eax,dword ptr [eax]
 0049DAAC    push        eax
 0049DAAD    mov         eax,dword ptr [ebp-8]
 0049DAB0    call        TCanvas.GetHandle
 0049DAB5    push        eax
 0049DAB6    mov         eax,dword ptr [ebp-10]
 0049DAB9    push        eax
 0049DABA    mov         eax,dword ptr [ebp-4]
 0049DABD    mov         eax,dword ptr [eax+8]
 0049DAC0    call        004DC758
 0049DAC5    push        eax
 0049DAC6    call        comctl32.ImageList_DrawEx
>0049DACB    jmp         0049DB0E
 0049DACD    push        0
 0049DACF    push        1FFFFFFF
 0049DAD4    mov         eax,0FF00000F
 0049DAD9    call        00486830
 0049DADE    push        eax
 0049DADF    push        0
 0049DAE1    push        0
 0049DAE3    mov         eax,dword ptr [ebp-0C]
 0049DAE6    mov         eax,dword ptr [eax+4]
 0049DAE9    push        eax
 0049DAEA    mov         eax,dword ptr [ebp-0C]
 0049DAED    mov         eax,dword ptr [eax]
 0049DAEF    push        eax
 0049DAF0    mov         eax,dword ptr [ebp-8]
 0049DAF3    call        TCanvas.GetHandle
 0049DAF8    push        eax
 0049DAF9    mov         eax,dword ptr [ebp-10]
 0049DAFC    push        eax
 0049DAFD    mov         eax,dword ptr [ebp-4]
 0049DB00    mov         eax,dword ptr [eax+8]
 0049DB03    call        004DC758
 0049DB08    push        eax
 0049DB09    call        comctl32.ImageList_DrawEx
 0049DB0E    mov         esp,ebp
 0049DB10    pop         ebp
 0049DB11    ret         8
end;*}

//0049DB14
{*procedure sub_0049DB14(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0049DB14    push        ebp
 0049DB15    mov         ebp,esp
 0049DB17    add         esp,0FFFFFFE4
 0049DB1A    push        esi
 0049DB1B    push        edi
 0049DB1C    mov         esi,dword ptr [ebp+10]
 0049DB1F    lea         edi,[ebp-1C]
 0049DB22    movs        dword ptr [edi],dword ptr [esi]
 0049DB23    movs        dword ptr [edi],dword ptr [esi]
 0049DB24    movs        dword ptr [edi],dword ptr [esi]
 0049DB25    movs        dword ptr [edi],dword ptr [esi]
 0049DB26    mov         dword ptr [ebp-0C],ecx
 0049DB29    mov         dword ptr [ebp-8],edx
 0049DB2C    mov         dword ptr [ebp-4],eax
 0049DB2F    mov         dl,1
 0049DB31    mov         eax,dword ptr [ebp-8]
 0049DB34    mov         eax,dword ptr [eax+14]
 0049DB37    call        TBrush.SetStyle
 0049DB3C    cmp         byte ptr [ebp+0C],1
>0049DB40    jne         0049DBD8
 0049DB46    push        1
 0049DB48    push        1
 0049DB4A    lea         eax,[ebp-1C]
 0049DB4D    push        eax
 0049DB4E    call        user32.OffsetRect
 0049DB53    mov         edx,0FF000014
 0049DB58    mov         eax,dword ptr [ebp-8]
 0049DB5B    mov         eax,dword ptr [eax+0C]
 0049DB5E    call        TFont.SetColor
 0049DB63    mov         eax,dword ptr [ebp+8]
 0049DB66    or          eax,5
 0049DB69    push        eax
 0049DB6A    lea         eax,[ebp-1C]
 0049DB6D    push        eax
 0049DB6E    mov         eax,dword ptr [ebp-0C]
 0049DB71    call        @DynArrayLength
 0049DB76    push        eax
 0049DB77    mov         eax,dword ptr [ebp-0C]
 0049DB7A    call        @LStrToPChar
 0049DB7F    push        eax
 0049DB80    mov         eax,dword ptr [ebp-8]
 0049DB83    call        TCanvas.GetHandle
 0049DB88    push        eax
 0049DB89    call        user32.DrawTextA
 0049DB8E    push        0FF
 0049DB90    push        0FF
 0049DB92    lea         eax,[ebp-1C]
 0049DB95    push        eax
 0049DB96    call        user32.OffsetRect
 0049DB9B    mov         edx,0FF000010
 0049DBA0    mov         eax,dword ptr [ebp-8]
 0049DBA3    mov         eax,dword ptr [eax+0C]
 0049DBA6    call        TFont.SetColor
 0049DBAB    mov         eax,dword ptr [ebp+8]
 0049DBAE    or          eax,5
 0049DBB1    push        eax
 0049DBB2    lea         eax,[ebp-1C]
 0049DBB5    push        eax
 0049DBB6    mov         eax,dword ptr [ebp-0C]
 0049DBB9    call        @DynArrayLength
 0049DBBE    push        eax
 0049DBBF    mov         eax,dword ptr [ebp-0C]
 0049DBC2    call        @LStrToPChar
 0049DBC7    push        eax
 0049DBC8    mov         eax,dword ptr [ebp-8]
 0049DBCB    call        TCanvas.GetHandle
 0049DBD0    push        eax
 0049DBD1    call        user32.DrawTextA
>0049DBD6    jmp         0049DC03
 0049DBD8    mov         eax,dword ptr [ebp+8]
 0049DBDB    or          eax,5
 0049DBDE    push        eax
 0049DBDF    lea         eax,[ebp-1C]
 0049DBE2    push        eax
 0049DBE3    mov         eax,dword ptr [ebp-0C]
 0049DBE6    call        @DynArrayLength
 0049DBEB    push        eax
 0049DBEC    mov         eax,dword ptr [ebp-0C]
 0049DBEF    call        @LStrToPChar
 0049DBF4    push        eax
 0049DBF5    mov         eax,dword ptr [ebp-8]
 0049DBF8    call        TCanvas.GetHandle
 0049DBFD    push        eax
 0049DBFE    call        user32.DrawTextA
 0049DC03    pop         edi
 0049DC04    pop         esi
 0049DC05    mov         esp,ebp
 0049DC07    pop         ebp
 0049DC08    ret         0C
end;*}

//0049DC0C
{*procedure sub_0049DC0C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0049DC0C    push        ebp
 0049DC0D    mov         ebp,esp
 0049DC0F    add         esp,0FFFFFFBC
 0049DC12    push        esi
 0049DC13    push        edi
 0049DC14    mov         dword ptr [ebp-0C],ecx
 0049DC17    mov         dword ptr [ebp-8],edx
 0049DC1A    mov         dword ptr [ebp-4],eax
 0049DC1D    mov         eax,dword ptr [ebp+8]
 0049DC20    and         eax,2
 0049DC23    cmp         eax,2
>0049DC26    jne         0049DC3E
 0049DC28    cmp         byte ptr [ebp+1C],0
>0049DC2C    jne         0049DC34
 0049DC2E    mov         byte ptr [ebp+1C],1
>0049DC32    jmp         0049DC3E
 0049DC34    cmp         byte ptr [ebp+1C],1
>0049DC38    jne         0049DC3E
 0049DC3A    mov         byte ptr [ebp+1C],0
 0049DC3E    mov         edx,dword ptr [ebp-0C]
 0049DC41    mov         edx,dword ptr [edx+0C]
 0049DC44    mov         eax,dword ptr [ebp-0C]
 0049DC47    sub         edx,dword ptr [eax+4]
 0049DC4A    mov         eax,dword ptr [ebp-0C]
 0049DC4D    mov         eax,dword ptr [eax+8]
 0049DC50    mov         ecx,dword ptr [ebp-0C]
 0049DC53    sub         eax,dword ptr [ecx]
 0049DC55    lea         ecx,[ebp-1C]
 0049DC58    call        Point
 0049DC5D    mov         eax,dword ptr [ebp-4]
 0049DC60    cmp         dword ptr [eax+4],0
>0049DC64    je          0049DC94
 0049DC66    mov         eax,dword ptr [ebp-4]
 0049DC69    mov         eax,dword ptr [eax+4]
 0049DC6C    mov         edx,dword ptr [eax]
 0049DC6E    call        dword ptr [edx+20]
 0049DC71    push        eax
 0049DC72    mov         eax,dword ptr [ebp-4]
 0049DC75    mov         eax,dword ptr [eax+4]
 0049DC78    mov         edx,dword ptr [eax]
 0049DC7A    call        dword ptr [edx+2C]
 0049DC7D    mov         edx,dword ptr [ebp-4]
 0049DC80    movzx       edx,byte ptr [edx+20]
 0049DC84    mov         ecx,edx
 0049DC86    cdq
 0049DC87    idiv        eax,ecx
 0049DC89    lea         ecx,[ebp-24]
 0049DC8C    pop         edx
 0049DC8D    call        Point
>0049DC92    jmp         0049DCA0
 0049DC94    lea         ecx,[ebp-24]
 0049DC97    xor         edx,edx
 0049DC99    xor         eax,eax
 0049DC9B    call        Point
 0049DCA0    mov         eax,dword ptr [ebp+20]
 0049DCA3    call        @DynArrayLength
 0049DCA8    test        eax,eax
>0049DCAA    jle         0049DD20
 0049DCAC    push        0
 0049DCAE    lea         eax,[ebp-44]
 0049DCB1    push        eax
 0049DCB2    mov         ecx,dword ptr [ebp-0C]
 0049DCB5    mov         ecx,dword ptr [ecx+8]
 0049DCB8    mov         eax,dword ptr [ebp-0C]
 0049DCBB    sub         ecx,dword ptr [eax]
 0049DCBD    xor         edx,edx
 0049DCBF    xor         eax,eax
 0049DCC1    call        Rect
 0049DCC6    mov         eax,dword ptr [ebp+0C]
 0049DCC9    lea         esi,[ebp-44]
 0049DCCC    mov         edi,eax
 0049DCCE    movs        dword ptr [edi],dword ptr [esi]
 0049DCCF    movs        dword ptr [edi],dword ptr [esi]
 0049DCD0    movs        dword ptr [edi],dword ptr [esi]
 0049DCD1    movs        dword ptr [edi],dword ptr [esi]
 0049DCD2    mov         eax,dword ptr [ebp+8]
 0049DCD5    or          eax,400
 0049DCDA    push        eax
 0049DCDB    mov         eax,dword ptr [ebp+0C]
 0049DCDE    push        eax
 0049DCDF    mov         eax,dword ptr [ebp+20]
 0049DCE2    call        @DynArrayLength
 0049DCE7    push        eax
 0049DCE8    mov         eax,dword ptr [ebp+20]
 0049DCEB    call        @LStrToPChar
 0049DCF0    push        eax
 0049DCF1    mov         eax,dword ptr [ebp-8]
 0049DCF4    call        TCanvas.GetHandle
 0049DCF9    push        eax
 0049DCFA    call        user32.DrawTextA
 0049DCFF    mov         edx,dword ptr [ebp+0C]
 0049DD02    mov         edx,dword ptr [edx+0C]
 0049DD05    mov         eax,dword ptr [ebp+0C]
 0049DD08    sub         edx,dword ptr [eax+4]
 0049DD0B    mov         eax,dword ptr [ebp+0C]
 0049DD0E    mov         eax,dword ptr [eax+8]
 0049DD11    mov         ecx,dword ptr [ebp+0C]
 0049DD14    sub         eax,dword ptr [ecx]
 0049DD16    lea         ecx,[ebp-2C]
 0049DD19    call        Point
>0049DD1E    jmp         0049DD49
 0049DD20    push        0
 0049DD22    lea         eax,[ebp-44]
 0049DD25    push        eax
 0049DD26    xor         ecx,ecx
 0049DD28    xor         edx,edx
 0049DD2A    xor         eax,eax
 0049DD2C    call        Rect
 0049DD31    mov         eax,dword ptr [ebp+0C]
 0049DD34    lea         esi,[ebp-44]
 0049DD37    mov         edi,eax
 0049DD39    movs        dword ptr [edi],dword ptr [esi]
 0049DD3A    movs        dword ptr [edi],dword ptr [esi]
 0049DD3B    movs        dword ptr [edi],dword ptr [esi]
 0049DD3C    movs        dword ptr [edi],dword ptr [esi]
 0049DD3D    lea         ecx,[ebp-2C]
 0049DD40    xor         edx,edx
 0049DD42    xor         eax,eax
 0049DD44    call        Point
 0049DD49    mov         al,byte ptr [ebp+1C]
 0049DD4C    sub         al,2
>0049DD4E    jae         0049DD77
 0049DD50    mov         eax,dword ptr [ebp-18]
 0049DD53    sub         eax,dword ptr [ebp-20]
 0049DD56    inc         eax
 0049DD57    sar         eax,1
>0049DD59    jns         0049DD5E
 0049DD5B    adc         eax,0
 0049DD5E    mov         edx,dword ptr [ebp+10]
 0049DD61    mov         dword ptr [edx+4],eax
 0049DD64    mov         eax,dword ptr [ebp-18]
 0049DD67    sub         eax,dword ptr [ebp-28]
 0049DD6A    inc         eax
 0049DD6B    sar         eax,1
>0049DD6D    jns         0049DD72
 0049DD6F    adc         eax,0
 0049DD72    mov         dword ptr [ebp-10],eax
>0049DD75    jmp         0049DD9B
 0049DD77    mov         eax,dword ptr [ebp-1C]
 0049DD7A    sub         eax,dword ptr [ebp-24]
 0049DD7D    inc         eax
 0049DD7E    sar         eax,1
>0049DD80    jns         0049DD85
 0049DD82    adc         eax,0
 0049DD85    mov         edx,dword ptr [ebp+10]
 0049DD88    mov         dword ptr [edx],eax
 0049DD8A    mov         eax,dword ptr [ebp-1C]
 0049DD8D    sub         eax,dword ptr [ebp-2C]
 0049DD90    inc         eax
 0049DD91    sar         eax,1
>0049DD93    jns         0049DD98
 0049DD95    adc         eax,0
 0049DD98    mov         dword ptr [ebp-14],eax
 0049DD9B    cmp         dword ptr [ebp-2C],0
>0049DD9F    je          0049DDA7
 0049DDA1    cmp         dword ptr [ebp-24],0
>0049DDA5    jne         0049DDAC
 0049DDA7    xor         eax,eax
 0049DDA9    mov         dword ptr [ebp+14],eax
 0049DDAC    cmp         dword ptr [ebp+18],0FFFFFFFF
>0049DDB0    jne         0049DE4D
 0049DDB6    cmp         dword ptr [ebp+14],0FFFFFFFF
>0049DDBA    jne         0049DE06
 0049DDBC    lea         ecx,[ebp-34]
 0049DDBF    mov         edx,dword ptr [ebp-20]
 0049DDC2    add         edx,dword ptr [ebp-28]
 0049DDC5    mov         eax,dword ptr [ebp-24]
 0049DDC8    add         eax,dword ptr [ebp-2C]
 0049DDCB    call        Point
 0049DDD0    mov         al,byte ptr [ebp+1C]
 0049DDD3    sub         al,2
>0049DDD5    jae         0049DDEA
 0049DDD7    mov         eax,dword ptr [ebp-1C]
 0049DDDA    sub         eax,dword ptr [ebp-34]
 0049DDDD    mov         ecx,3
 0049DDE2    cdq
 0049DDE3    idiv        eax,ecx
 0049DDE5    mov         dword ptr [ebp+18],eax
>0049DDE8    jmp         0049DDFB
 0049DDEA    mov         eax,dword ptr [ebp-18]
 0049DDED    sub         eax,dword ptr [ebp-30]
 0049DDF0    mov         ecx,3
 0049DDF5    cdq
 0049DDF6    idiv        eax,ecx
 0049DDF8    mov         dword ptr [ebp+18],eax
 0049DDFB    mov         eax,dword ptr [ebp+18]
 0049DDFE    mov         dword ptr [ebp+14],eax
>0049DE01    jmp         0049DE9C
 0049DE06    lea         ecx,[ebp-34]
 0049DE09    mov         edx,dword ptr [ebp-20]
 0049DE0C    add         edx,dword ptr [ebp+14]
 0049DE0F    add         edx,dword ptr [ebp-28]
 0049DE12    mov         eax,dword ptr [ebp-24]
 0049DE15    add         eax,dword ptr [ebp+14]
 0049DE18    add         eax,dword ptr [ebp-2C]
 0049DE1B    call        Point
 0049DE20    mov         al,byte ptr [ebp+1C]
 0049DE23    sub         al,2
>0049DE25    jae         0049DE3A
 0049DE27    mov         eax,dword ptr [ebp-1C]
 0049DE2A    sub         eax,dword ptr [ebp-34]
 0049DE2D    inc         eax
 0049DE2E    sar         eax,1
>0049DE30    jns         0049DE35
 0049DE32    adc         eax,0
 0049DE35    mov         dword ptr [ebp+18],eax
>0049DE38    jmp         0049DE9C
 0049DE3A    mov         eax,dword ptr [ebp-18]
 0049DE3D    sub         eax,dword ptr [ebp-30]
 0049DE40    inc         eax
 0049DE41    sar         eax,1
>0049DE43    jns         0049DE48
 0049DE45    adc         eax,0
 0049DE48    mov         dword ptr [ebp+18],eax
>0049DE4B    jmp         0049DE9C
 0049DE4D    cmp         dword ptr [ebp+14],0FFFFFFFF
>0049DE51    jne         0049DE9C
 0049DE53    mov         eax,dword ptr [ebp+18]
 0049DE56    add         eax,dword ptr [ebp-20]
 0049DE59    mov         edx,dword ptr [ebp-18]
 0049DE5C    sub         edx,eax
 0049DE5E    mov         eax,dword ptr [ebp+18]
 0049DE61    add         eax,dword ptr [ebp-24]
 0049DE64    push        eax
 0049DE65    mov         eax,dword ptr [ebp-1C]
 0049DE68    pop         ecx
 0049DE69    sub         eax,ecx
 0049DE6B    lea         ecx,[ebp-34]
 0049DE6E    call        Point
 0049DE73    mov         al,byte ptr [ebp+1C]
 0049DE76    sub         al,2
>0049DE78    jae         0049DE8C
 0049DE7A    mov         eax,dword ptr [ebp-34]
 0049DE7D    sub         eax,dword ptr [ebp-2C]
 0049DE80    sar         eax,1
>0049DE82    jns         0049DE87
 0049DE84    adc         eax,0
 0049DE87    mov         dword ptr [ebp+14],eax
>0049DE8A    jmp         0049DE9C
 0049DE8C    mov         eax,dword ptr [ebp-30]
 0049DE8F    sub         eax,dword ptr [ebp-28]
 0049DE92    sar         eax,1
>0049DE94    jns         0049DE99
 0049DE96    adc         eax,0
 0049DE99    mov         dword ptr [ebp+14],eax
 0049DE9C    mov         al,byte ptr [ebp+1C]
 0049DE9F    sub         al,1
>0049DEA1    jb          0049DEAF
>0049DEA3    je          0049DEC7
 0049DEA5    dec         al
>0049DEA7    je          0049DEE5
 0049DEA9    dec         al
>0049DEAB    je          0049DEFF
>0049DEAD    jmp         0049DF1D
 0049DEAF    mov         eax,dword ptr [ebp+10]
 0049DEB2    mov         edx,dword ptr [ebp+18]
 0049DEB5    mov         dword ptr [eax],edx
 0049DEB7    mov         eax,dword ptr [ebp+10]
 0049DEBA    mov         eax,dword ptr [eax]
 0049DEBC    add         eax,dword ptr [ebp-24]
 0049DEBF    add         eax,dword ptr [ebp+14]
 0049DEC2    mov         dword ptr [ebp-14],eax
>0049DEC5    jmp         0049DF1D
 0049DEC7    mov         eax,dword ptr [ebp-1C]
 0049DECA    sub         eax,dword ptr [ebp+18]
 0049DECD    sub         eax,dword ptr [ebp-24]
 0049DED0    mov         edx,dword ptr [ebp+10]
 0049DED3    mov         dword ptr [edx],eax
 0049DED5    mov         eax,dword ptr [ebp+10]
 0049DED8    mov         eax,dword ptr [eax]
 0049DEDA    sub         eax,dword ptr [ebp+14]
 0049DEDD    sub         eax,dword ptr [ebp-2C]
 0049DEE0    mov         dword ptr [ebp-14],eax
>0049DEE3    jmp         0049DF1D
 0049DEE5    mov         eax,dword ptr [ebp+10]
 0049DEE8    mov         edx,dword ptr [ebp+18]
 0049DEEB    mov         dword ptr [eax+4],edx
 0049DEEE    mov         eax,dword ptr [ebp+10]
 0049DEF1    mov         eax,dword ptr [eax+4]
 0049DEF4    add         eax,dword ptr [ebp-20]
 0049DEF7    add         eax,dword ptr [ebp+14]
 0049DEFA    mov         dword ptr [ebp-10],eax
>0049DEFD    jmp         0049DF1D
 0049DEFF    mov         eax,dword ptr [ebp-18]
 0049DF02    sub         eax,dword ptr [ebp+18]
 0049DF05    sub         eax,dword ptr [ebp-20]
 0049DF08    mov         edx,dword ptr [ebp+10]
 0049DF0B    mov         dword ptr [edx+4],eax
 0049DF0E    mov         eax,dword ptr [ebp+10]
 0049DF11    mov         eax,dword ptr [eax+4]
 0049DF14    sub         eax,dword ptr [ebp+14]
 0049DF17    sub         eax,dword ptr [ebp-28]
 0049DF1A    mov         dword ptr [ebp-10],eax
 0049DF1D    mov         eax,dword ptr [ebp-0C]
 0049DF20    mov         eax,dword ptr [eax]
 0049DF22    mov         edx,dword ptr [ebp+24]
 0049DF25    add         eax,dword ptr [edx]
 0049DF27    mov         edx,dword ptr [ebp+10]
 0049DF2A    add         dword ptr [edx],eax
 0049DF2C    mov         eax,dword ptr [ebp-0C]
 0049DF2F    mov         eax,dword ptr [eax+4]
 0049DF32    mov         edx,dword ptr [ebp+24]
 0049DF35    add         eax,dword ptr [edx+4]
 0049DF38    mov         edx,dword ptr [ebp+10]
 0049DF3B    add         dword ptr [edx+4],eax
 0049DF3E    call        ThemeServices
 0049DF43    call        TThemeServices.GetThemesEnabled
 0049DF48    test        al,al
>0049DF4A    je          0049DF6A
 0049DF4C    mov         eax,dword ptr [ebp-0C]
 0049DF4F    mov         eax,dword ptr [eax+4]
 0049DF52    add         eax,dword ptr [ebp-10]
 0049DF55    push        eax
 0049DF56    mov         eax,dword ptr [ebp-0C]
 0049DF59    mov         eax,dword ptr [eax]
 0049DF5B    add         eax,dword ptr [ebp-14]
 0049DF5E    push        eax
 0049DF5F    mov         eax,dword ptr [ebp+0C]
 0049DF62    push        eax
 0049DF63    call        user32.OffsetRect
>0049DF68    jmp         0049DF91
 0049DF6A    mov         eax,dword ptr [ebp-0C]
 0049DF6D    mov         eax,dword ptr [eax+4]
 0049DF70    add         eax,dword ptr [ebp-10]
 0049DF73    mov         edx,dword ptr [ebp+24]
 0049DF76    add         eax,dword ptr [edx+4]
 0049DF79    push        eax
 0049DF7A    mov         eax,dword ptr [ebp-0C]
 0049DF7D    mov         eax,dword ptr [eax]
 0049DF7F    add         eax,dword ptr [ebp-14]
 0049DF82    mov         edx,dword ptr [ebp+24]
 0049DF85    add         eax,dword ptr [edx]
 0049DF87    push        eax
 0049DF88    mov         eax,dword ptr [ebp+0C]
 0049DF8B    push        eax
 0049DF8C    call        user32.OffsetRect
 0049DF91    pop         edi
 0049DF92    pop         esi
 0049DF93    mov         esp,ebp
 0049DF95    pop         ebp
 0049DF96    ret         20
end;*}

//0049DF9C
{*procedure sub_0049DF9C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0049DF9C    push        ebp
 0049DF9D    mov         ebp,esp
 0049DF9F    add         esp,0FFFFFFEC
 0049DFA2    mov         dword ptr [ebp-0C],ecx
 0049DFA5    mov         dword ptr [ebp-8],edx
 0049DFA8    mov         dword ptr [ebp-4],eax
 0049DFAB    mov         eax,dword ptr [ebp+28]
 0049DFAE    push        eax
 0049DFAF    mov         eax,dword ptr [ebp+24]
 0049DFB2    push        eax
 0049DFB3    mov         al,byte ptr [ebp+20]
 0049DFB6    push        eax
 0049DFB7    mov         eax,dword ptr [ebp+1C]
 0049DFBA    push        eax
 0049DFBB    mov         eax,dword ptr [ebp+18]
 0049DFBE    push        eax
 0049DFBF    lea         eax,[ebp-14]
 0049DFC2    push        eax
 0049DFC3    mov         eax,dword ptr [ebp+8]
 0049DFC6    push        eax
 0049DFC7    mov         eax,dword ptr [ebp+0C]
 0049DFCA    push        eax
 0049DFCB    mov         ecx,dword ptr [ebp-0C]
 0049DFCE    mov         edx,dword ptr [ebp-8]
 0049DFD1    mov         eax,dword ptr [ebp-4]
 0049DFD4    call        0049DC0C
 0049DFD9    mov         al,byte ptr [ebp+14]
 0049DFDC    push        eax
 0049DFDD    mov         al,byte ptr [ebp+10]
 0049DFE0    push        eax
 0049DFE1    lea         ecx,[ebp-14]
 0049DFE4    mov         edx,dword ptr [ebp-8]
 0049DFE7    mov         eax,dword ptr [ebp-4]
 0049DFEA    call        0049D988
 0049DFEF    mov         eax,dword ptr [ebp+8]
 0049DFF2    push        eax
 0049DFF3    mov         al,byte ptr [ebp+14]
 0049DFF6    push        eax
 0049DFF7    mov         eax,dword ptr [ebp+0C]
 0049DFFA    push        eax
 0049DFFB    mov         ecx,dword ptr [ebp+24]
 0049DFFE    mov         edx,dword ptr [ebp-8]
 0049E001    mov         eax,dword ptr [ebp-4]
 0049E004    call        0049DB14
 0049E009    mov         esp,ebp
 0049E00B    pop         ebp
 0049E00C    ret         24
end;*}

//0049E010
{*procedure sub_0049E010(?:?);
begin
 0049E010    push        ebp
 0049E011    mov         ebp,esp
 0049E013    add         esp,0FFFFFFF8
 0049E016    mov         dword ptr [ebp-8],edx
 0049E019    mov         dword ptr [ebp-4],eax
 0049E01C    mov         edx,dword ptr [ebp-8]
 0049E01F    mov         eax,dword ptr [ebp-4]
 0049E022    call        004C957C
 0049E027    mov         eax,dword ptr [ebp-8]
 0049E02A    mov         edx,dword ptr ds:[49C6E8];TSpeedButton
 0049E030    call        @AsClass
 0049E035    mov         edx,dword ptr [ebp-4]
 0049E038    mov         dword ptr [edx+20],eax;TSpeedButtonActionLink..........FClient:TSpeedButton
 0049E03B    pop         ecx
 0049E03C    pop         ecx
 0049E03D    pop         ebp
 0049E03E    ret
end;*}

//0049E040
{*function sub_0049E040:?;
begin
 0049E040    push        ebp
 0049E041    mov         ebp,esp
 0049E043    add         esp,0FFFFFFF8
 0049E046    mov         dword ptr [ebp-4],eax
 0049E049    mov         eax,dword ptr [ebp-4]
 0049E04C    call        004DB1FC
 0049E051    test        al,al
>0049E053    je          0049E095
 0049E055    mov         eax,dword ptr [ebp-4]
 0049E058    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink...........FClient:TSpeedButton
 0049E05B    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>0049E062    je          0049E095
 0049E064    mov         eax,dword ptr [ebp-4]
 0049E067    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink............FClient:TSpeedButton
 0049E06A    cmp         byte ptr [eax+172],0;TSpeedButton.AllowAllUp:Boolean
>0049E071    je          0049E095
 0049E073    mov         eax,dword ptr [ebp-4]
 0049E076    mov         eax,dword ptr [eax+10];TSpeedButtonActionLink.FAction:TBasicAction
 0049E079    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0049E07F    call        @AsClass
 0049E084    mov         al,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 0049E087    mov         edx,dword ptr [ebp-4]
 0049E08A    mov         edx,dword ptr [edx+20];TSpeedButtonActionLink.............FClient:TSpeedButton
 0049E08D    cmp         al,byte ptr [edx+170];TSpeedButton.Down:Boolean
>0049E093    je          0049E099
 0049E095    xor         eax,eax
>0049E097    jmp         0049E09B
 0049E099    mov         al,1
 0049E09B    mov         byte ptr [ebp-5],al
 0049E09E    mov         al,byte ptr [ebp-5]
 0049E0A1    pop         ecx
 0049E0A2    pop         ecx
 0049E0A3    pop         ebp
 0049E0A4    ret
end;*}

//0049E0A8
{*function sub_0049E0A8:?;
begin
 0049E0A8    push        ebp
 0049E0A9    mov         ebp,esp
 0049E0AB    add         esp,0FFFFFFF8
 0049E0AE    mov         dword ptr [ebp-4],eax
 0049E0B1    mov         eax,dword ptr [ebp-4]
 0049E0B4    cmp         dword ptr [eax+20],0;TSpeedButtonActionLink..............FClient:TSpeedButton
>0049E0B8    je          0049E0DC
 0049E0BA    mov         eax,dword ptr [ebp-4]
 0049E0BD    mov         eax,dword ptr [eax+10];TSpeedButtonActionLink.FAction:TBasicAction
 0049E0C0    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0049E0C6    call        @AsClass
 0049E0CB    mov         eax,dword ptr [eax+6C];TCustomAction.FGroupIndex:Integer
 0049E0CE    mov         edx,dword ptr [ebp-4]
 0049E0D1    mov         edx,dword ptr [edx+20];TSpeedButtonActionLink...............FClient:TSpeedButton
 0049E0D4    cmp         eax,dword ptr [edx+168];TSpeedButton.GroupIndex:Integer
>0049E0DA    je          0049E0E0
 0049E0DC    xor         eax,eax
>0049E0DE    jmp         0049E0E2
 0049E0E0    mov         al,1
 0049E0E2    mov         byte ptr [ebp-5],al
 0049E0E5    mov         al,byte ptr [ebp-5]
 0049E0E8    pop         ecx
 0049E0E9    pop         ecx
 0049E0EA    pop         ebp
 0049E0EB    ret
end;*}

//0049E0EC
{*procedure sub_0049E0EC(?:?);
begin
 0049E0EC    push        ebp
 0049E0ED    mov         ebp,esp
 0049E0EF    add         esp,0FFFFFFF8
 0049E0F2    mov         byte ptr [ebp-5],dl
 0049E0F5    mov         dword ptr [ebp-4],eax
 0049E0F8    mov         eax,dword ptr [ebp-4]
 0049E0FB    mov         edx,dword ptr [eax]
 0049E0FD    call        dword ptr [edx+24];TSpeedButtonActionLink.sub_0049E040
 0049E100    test        al,al
>0049E102    je          0049E112
 0049E104    mov         dl,byte ptr [ebp-5]
 0049E107    mov         eax,dword ptr [ebp-4]
 0049E10A    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink................FClient:TSpeedButton
 0049E10D    call        TSpeedButton.SetDown
 0049E112    pop         ecx
 0049E113    pop         ecx
 0049E114    pop         ebp
 0049E115    ret
end;*}

//0049E118
{*procedure sub_0049E118(?:?);
begin
 0049E118    push        ebp
 0049E119    mov         ebp,esp
 0049E11B    add         esp,0FFFFFFF8
 0049E11E    mov         dword ptr [ebp-8],edx
 0049E121    mov         dword ptr [ebp-4],eax
 0049E124    mov         eax,dword ptr [ebp-4]
 0049E127    mov         edx,dword ptr [eax]
 0049E129    call        dword ptr [edx+2C];TSpeedButtonActionLink.sub_0049E0A8
 0049E12C    test        al,al
>0049E12E    je          0049E13E
 0049E130    mov         edx,dword ptr [ebp-8]
 0049E133    mov         eax,dword ptr [ebp-4]
 0049E136    mov         eax,dword ptr [eax+20];TSpeedButtonActionLink.................FClient:TSpeedButton
 0049E139    call        TSpeedButton.SetGroupIndex
 0049E13E    pop         ecx
 0049E13F    pop         ecx
 0049E140    pop         ebp
 0049E141    ret
end;*}

//0049E144
constructor TSpeedButton.Create(AOwner:TComponent);
begin
{*
 0049E144    push        ebp
 0049E145    mov         ebp,esp
 0049E147    add         esp,0FFFFFFF4
 0049E14A    push        ebx
 0049E14B    test        dl,dl
>0049E14D    je          0049E157
 0049E14F    add         esp,0FFFFFFF0
 0049E152    call        @ClassCreate
 0049E157    mov         dword ptr [ebp-0C],ecx
 0049E15A    mov         byte ptr [ebp-5],dl
 0049E15D    mov         dword ptr [ebp-4],eax
 0049E160    mov         dl,1
 0049E162    mov         eax,[0049CD50];TButtonGlyph
 0049E167    call        0049D09C
 0049E16C    mov         edx,dword ptr [ebp-4]
 0049E16F    mov         dword ptr [edx+16C],eax
 0049E175    mov         eax,dword ptr [ebp-4]
 0049E178    mov         eax,dword ptr [eax+16C]
 0049E17E    mov         edx,dword ptr [ebp-4]
 0049E181    mov         dword ptr [eax+2C],edx
 0049E184    mov         dword ptr [eax+28],49EB70;sub_0049EB70
 0049E18B    mov         ecx,dword ptr [ebp-0C]
 0049E18E    xor         edx,edx
 0049E190    mov         eax,dword ptr [ebp-4]
 0049E193    call        TGraphicControl.Create
 0049E198    push        17
 0049E19A    push        16
 0049E19C    xor         ecx,ecx
 0049E19E    xor         edx,edx
 0049E1A0    mov         eax,dword ptr [ebp-4]
 0049E1A3    mov         ebx,dword ptr [eax]
 0049E1A5    call        dword ptr [ebx+84]
 0049E1AB    mov         eax,dword ptr [ebp-4]
 0049E1AE    mov         edx,dword ptr ds:[49E224]
 0049E1B4    mov         dword ptr [eax+50],edx
 0049E1B7    mov         dl,1
 0049E1B9    mov         eax,dword ptr [ebp-4]
 0049E1BC    call        TPanel.SetParentFont
 0049E1C1    mov         edx,0FF00000F
 0049E1C6    mov         eax,dword ptr [ebp-4]
 0049E1C9    call        TPanel.SetColor
 0049E1CE    mov         eax,dword ptr [ebp-4]
 0049E1D1    mov         dword ptr [eax+174],4
 0049E1DB    mov         eax,dword ptr [ebp-4]
 0049E1DE    mov         dword ptr [eax+17C],0FFFFFFFF
 0049E1E8    mov         eax,dword ptr [ebp-4]
 0049E1EB    mov         byte ptr [eax+173],0
 0049E1F2    mov         eax,dword ptr [ebp-4]
 0049E1F5    mov         byte ptr [eax+178],1
 0049E1FC    inc         dword ptr ds:[541370]
 0049E202    mov         eax,dword ptr [ebp-4]
 0049E205    cmp         byte ptr [ebp-5],0
>0049E209    je          0049E21A
 0049E20B    call        @AfterConstruction
 0049E210    pop         dword ptr fs:[0]
 0049E217    add         esp,0C
 0049E21A    mov         eax,dword ptr [ebp-4]
 0049E21D    pop         ebx
 0049E21E    mov         esp,ebp
 0049E220    pop         ebp
 0049E221    ret
*}
end;

//0049E228
destructor TSpeedButton.Destroy;
begin
{*
 0049E228    push        ebp
 0049E229    mov         ebp,esp
 0049E22B    add         esp,0FFFFFFF8
 0049E22E    call        @BeforeDestruction
 0049E233    mov         byte ptr [ebp-5],dl
 0049E236    mov         dword ptr [ebp-4],eax
 0049E239    dec         dword ptr ds:[541370]
 0049E23F    mov         dl,byte ptr [ebp-5]
 0049E242    and         dl,0FC
 0049E245    mov         eax,dword ptr [ebp-4]
 0049E248    call        TGraphicControl.Destroy
 0049E24D    mov         eax,dword ptr [ebp-4]
 0049E250    mov         eax,dword ptr [eax+16C]
 0049E256    call        TObject.Free
 0049E25B    cmp         byte ptr [ebp-5],0
>0049E25F    jle         0049E269
 0049E261    mov         eax,dword ptr [ebp-4]
 0049E264    call        @ClassDestroy
 0049E269    pop         ecx
 0049E26A    pop         ecx
 0049E26B    pop         ebp
 0049E26C    ret
*}
end;

//0049E270
procedure TSpeedButton.Paint;
begin
{*
 0049E270    push        ebp
 0049E271    mov         ebp,esp
 0049E273    add         esp,0FFFFFFB8
 0049E276    push        esi
 0049E277    push        edi
 0049E278    xor         edx,edx
 0049E27A    mov         dword ptr [ebp-48],edx
 0049E27D    mov         dword ptr [ebp-44],edx
 0049E280    mov         dword ptr [ebp-4],eax
 0049E283    xor         eax,eax
 0049E285    push        ebp
 0049E286    push        49E754
 0049E28B    push        dword ptr fs:[eax]
 0049E28E    mov         dword ptr fs:[eax],esp
 0049E291    mov         eax,dword ptr [ebp-4]
 0049E294    mov         edx,dword ptr [eax]
 0049E296    call        dword ptr [edx+50]
 0049E299    test        al,al
>0049E29B    jne         0049E2B3
 0049E29D    mov         eax,dword ptr [ebp-4]
 0049E2A0    mov         byte ptr [eax+182],1
 0049E2A7    mov         eax,dword ptr [ebp-4]
 0049E2AA    mov         byte ptr [eax+171],0
>0049E2B1    jmp         0049E2ED
 0049E2B3    mov         eax,dword ptr [ebp-4]
 0049E2B6    cmp         byte ptr [eax+182],1
>0049E2BD    jne         0049E2ED
 0049E2BF    mov         eax,dword ptr [ebp-4]
 0049E2C2    cmp         byte ptr [eax+170],0
>0049E2C9    je          0049E2E3
 0049E2CB    mov         eax,dword ptr [ebp-4]
 0049E2CE    cmp         dword ptr [eax+168],0
>0049E2D5    je          0049E2E3
 0049E2D7    mov         eax,dword ptr [ebp-4]
 0049E2DA    mov         byte ptr [eax+182],3
>0049E2E1    jmp         0049E2ED
 0049E2E3    mov         eax,dword ptr [ebp-4]
 0049E2E6    mov         byte ptr [eax+182],0
 0049E2ED    mov         eax,dword ptr [ebp-4]
 0049E2F0    mov         edx,dword ptr [eax+68]
 0049E2F3    mov         eax,dword ptr [ebp-4]
 0049E2F6    mov         eax,dword ptr [eax+160]
 0049E2FC    call        TCanvas.SetFont
 0049E301    call        ThemeServices
 0049E306    call        TThemeServices.GetThemesEnabled
 0049E30B    test        al,al
>0049E30D    je          0049E52A
 0049E313    mov         eax,dword ptr [ebp-4]
 0049E316    mov         eax,dword ptr [eax+160]
 0049E31C    call        TCanvas.GetHandle
 0049E321    mov         edx,eax
 0049E323    mov         eax,dword ptr [ebp-4]
 0049E326    call        004C72CC
 0049E32B    mov         eax,dword ptr [ebp-4]
 0049E32E    mov         edx,dword ptr [eax]
 0049E330    call        dword ptr [edx+50]
 0049E333    test        al,al
>0049E335    jne         0049E33D
 0049E337    mov         byte ptr [ebp-11],5
>0049E33B    jmp         0049E368
 0049E33D    mov         eax,dword ptr [ebp-4]
 0049E340    mov         al,byte ptr [eax+182]
 0049E346    add         al,0FE
 0049E348    sub         al,2
>0049E34A    jae         0049E352
 0049E34C    mov         byte ptr [ebp-11],4
>0049E350    jmp         0049E368
 0049E352    mov         eax,dword ptr [ebp-4]
 0049E355    cmp         byte ptr [eax+181],0
>0049E35C    je          0049E364
 0049E35E    mov         byte ptr [ebp-11],3
>0049E362    jmp         0049E368
 0049E364    mov         byte ptr [ebp-11],2
 0049E368    mov         byte ptr [ebp-12],0
 0049E36C    mov         eax,dword ptr [ebp-4]
 0049E36F    cmp         byte ptr [eax+180],0
>0049E376    je          0049E3A1
 0049E378    mov         al,byte ptr [ebp-11]
 0049E37B    sub         al,2
>0049E37D    je          0049E39D
 0049E37F    dec         al
>0049E381    je          0049E397
 0049E383    dec         al
>0049E385    je          0049E391
 0049E387    dec         al
>0049E389    jne         0049E3A1
 0049E38B    mov         byte ptr [ebp-12],5
>0049E38F    jmp         0049E3A1
 0049E391    mov         byte ptr [ebp-12],4
>0049E395    jmp         0049E3A1
 0049E397    mov         byte ptr [ebp-12],3
>0049E39B    jmp         0049E3A1
 0049E39D    mov         byte ptr [ebp-12],2
 0049E3A1    lea         edx,[ebp-22]
 0049E3A4    mov         eax,dword ptr [ebp-4]
 0049E3A7    mov         ecx,dword ptr [eax]
 0049E3A9    call        dword ptr [ecx+44]
 0049E3AC    cmp         byte ptr [ebp-12],0
>0049E3B0    jne         0049E416
 0049E3B2    call        ThemeServices
 0049E3B7    lea         ecx,[ebp-30]
 0049E3BA    mov         dl,byte ptr [ebp-11]
 0049E3BD    call        004B6600
 0049E3C2    lea         eax,[ebp-22]
 0049E3C5    push        eax
 0049E3C6    push        0
 0049E3C8    mov         eax,dword ptr [ebp-4]
 0049E3CB    mov         eax,dword ptr [eax+160]
 0049E3D1    call        TCanvas.GetHandle
 0049E3D6    push        eax
 0049E3D7    call        ThemeServices
 0049E3DC    lea         ecx,[ebp-30]
 0049E3DF    pop         edx
 0049E3E0    call        004B648C
 0049E3E5    lea         eax,[ebp-22]
 0049E3E8    push        eax
 0049E3E9    lea         eax,[ebp-40]
 0049E3EC    push        eax
 0049E3ED    mov         eax,dword ptr [ebp-4]
 0049E3F0    mov         eax,dword ptr [eax+160]
 0049E3F6    call        TCanvas.GetHandle
 0049E3FB    push        eax
 0049E3FC    call        ThemeServices
 0049E401    lea         ecx,[ebp-30]
 0049E404    pop         edx
 0049E405    call        004B63E8
 0049E40A    lea         esi,[ebp-40]
 0049E40D    lea         edi,[ebp-22]
 0049E410    movs        dword ptr [edi],dword ptr [esi]
 0049E411    movs        dword ptr [edi],dword ptr [esi]
 0049E412    movs        dword ptr [edi],dword ptr [esi]
 0049E413    movs        dword ptr [edi],dword ptr [esi]
>0049E414    jmp         0049E478
 0049E416    call        ThemeServices
 0049E41B    lea         ecx,[ebp-30]
 0049E41E    mov         dl,byte ptr [ebp-12]
 0049E421    call        004B6918
 0049E426    lea         eax,[ebp-22]
 0049E429    push        eax
 0049E42A    push        0
 0049E42C    mov         eax,dword ptr [ebp-4]
 0049E42F    mov         eax,dword ptr [eax+160]
 0049E435    call        TCanvas.GetHandle
 0049E43A    push        eax
 0049E43B    call        ThemeServices
 0049E440    lea         ecx,[ebp-30]
 0049E443    pop         edx
 0049E444    call        004B648C
 0049E449    lea         eax,[ebp-22]
 0049E44C    push        eax
 0049E44D    lea         eax,[ebp-40]
 0049E450    push        eax
 0049E451    mov         eax,dword ptr [ebp-4]
 0049E454    mov         eax,dword ptr [eax+160]
 0049E45A    call        TCanvas.GetHandle
 0049E45F    push        eax
 0049E460    call        ThemeServices
 0049E465    lea         ecx,[ebp-30]
 0049E468    pop         edx
 0049E469    call        004B63E8
 0049E46E    lea         esi,[ebp-40]
 0049E471    lea         edi,[ebp-22]
 0049E474    movs        dword ptr [edi],dword ptr [esi]
 0049E475    movs        dword ptr [edi],dword ptr [esi]
 0049E476    movs        dword ptr [edi],dword ptr [esi]
 0049E477    movs        dword ptr [edi],dword ptr [esi]
 0049E478    cmp         byte ptr [ebp-11],4
>0049E47C    jne         0049E4AB
 0049E47E    cmp         byte ptr [ebp-12],0
>0049E482    je          0049E49A
 0049E484    mov         eax,dword ptr [ebp-4]
 0049E487    mov         eax,dword ptr [eax+160]
 0049E48D    mov         eax,dword ptr [eax+0C]
 0049E490    mov         edx,0FF00000E
 0049E495    call        TFont.SetColor
 0049E49A    lea         ecx,[ebp-10]
 0049E49D    xor         edx,edx
 0049E49F    mov         eax,1
 0049E4A4    call        Point
>0049E4A9    jmp         0049E4B7
 0049E4AB    lea         ecx,[ebp-10]
 0049E4AE    xor         edx,edx
 0049E4B0    xor         eax,eax
 0049E4B2    call        Point
 0049E4B7    lea         eax,[ebp-10]
 0049E4BA    push        eax
 0049E4BB    lea         edx,[ebp-44]
 0049E4BE    mov         eax,dword ptr [ebp-4]
 0049E4C1    call        TControl.GetText
 0049E4C6    mov         eax,dword ptr [ebp-44]
 0049E4C9    push        eax
 0049E4CA    mov         eax,dword ptr [ebp-4]
 0049E4CD    mov         al,byte ptr [eax+173]
 0049E4D3    push        eax
 0049E4D4    mov         eax,dword ptr [ebp-4]
 0049E4D7    mov         eax,dword ptr [eax+17C]
 0049E4DD    push        eax
 0049E4DE    mov         eax,dword ptr [ebp-4]
 0049E4E1    mov         eax,dword ptr [eax+174]
 0049E4E7    push        eax
 0049E4E8    mov         eax,dword ptr [ebp-4]
 0049E4EB    mov         al,byte ptr [eax+182]
 0049E4F1    push        eax
 0049E4F2    mov         eax,dword ptr [ebp-4]
 0049E4F5    mov         al,byte ptr [eax+178]
 0049E4FB    push        eax
 0049E4FC    xor         edx,edx
 0049E4FE    mov         eax,dword ptr [ebp-4]
 0049E501    call        004CDF58
 0049E506    push        eax
 0049E507    lea         eax,[ebp-40]
 0049E50A    push        eax
 0049E50B    lea         ecx,[ebp-22]
 0049E50E    mov         eax,dword ptr [ebp-4]
 0049E511    mov         edx,dword ptr [eax+160]
 0049E517    mov         eax,dword ptr [ebp-4]
 0049E51A    mov         eax,dword ptr [eax+16C]
 0049E520    call        0049DF9C
>0049E525    jmp         0049E739
 0049E52A    mov         eax,dword ptr [ebp-4]
 0049E52D    mov         eax,dword ptr [eax+4C]
 0049E530    push        eax
 0049E531    lea         eax,[ebp-22]
 0049E534    push        eax
 0049E535    mov         eax,dword ptr [ebp-4]
 0049E538    mov         ecx,dword ptr [eax+48]
 0049E53B    xor         edx,edx
 0049E53D    xor         eax,eax
 0049E53F    call        Rect
 0049E544    mov         eax,dword ptr [ebp-4]
 0049E547    cmp         byte ptr [eax+180],0
>0049E54E    jne         0049E590
 0049E550    mov         dword ptr [ebp-8],2010
 0049E557    mov         eax,dword ptr [ebp-4]
 0049E55A    mov         al,byte ptr [eax+182]
 0049E560    add         al,0FE
 0049E562    sub         al,2
>0049E564    jae         0049E56D
 0049E566    or          dword ptr [ebp-8],200
 0049E56D    mov         eax,dword ptr [ebp-8]
 0049E570    push        eax
 0049E571    push        4
 0049E573    lea         eax,[ebp-22]
 0049E576    push        eax
 0049E577    mov         eax,dword ptr [ebp-4]
 0049E57A    mov         eax,dword ptr [eax+160]
 0049E580    call        TCanvas.GetHandle
 0049E585    push        eax
 0049E586    call        user32.DrawFrameControl
>0049E58B    jmp         0049E64B
 0049E590    mov         eax,dword ptr [ebp-4]
 0049E593    mov         al,byte ptr [eax+182]
 0049E599    add         al,0FE
 0049E59B    sub         al,2
>0049E59D    jb          0049E5C0
 0049E59F    mov         eax,dword ptr [ebp-4]
 0049E5A2    cmp         byte ptr [eax+181],0
>0049E5A9    je          0049E5B7
 0049E5AB    mov         eax,dword ptr [ebp-4]
 0049E5AE    cmp         byte ptr [eax+182],1
>0049E5B5    jne         0049E5C0
 0049E5B7    mov         eax,dword ptr [ebp-4]
 0049E5BA    test        byte ptr [eax+1C],10
>0049E5BE    je          0049E60A
 0049E5C0    mov         eax,dword ptr [ebp-4]
 0049E5C3    movzx       eax,byte ptr [eax+178]
 0049E5CA    mov         eax,dword ptr [eax*4+54137C]
 0049E5D1    or          eax,0F
 0049E5D4    push        eax
 0049E5D5    mov         eax,dword ptr [ebp-4]
 0049E5D8    mov         al,byte ptr [eax+182]
 0049E5DE    add         al,0FE
 0049E5E0    sub         al,2
 0049E5E2    setb        al
 0049E5E5    and         eax,7F
 0049E5E8    mov         eax,dword ptr [eax*4+541374]
 0049E5EF    push        eax
 0049E5F0    lea         eax,[ebp-22]
 0049E5F3    push        eax
 0049E5F4    mov         eax,dword ptr [ebp-4]
 0049E5F7    mov         eax,dword ptr [eax+160]
 0049E5FD    call        TCanvas.GetHandle
 0049E602    push        eax
 0049E603    call        user32.DrawEdge
>0049E608    jmp         0049E63E
 0049E60A    mov         eax,dword ptr [ebp-4]
 0049E60D    cmp         byte ptr [eax+178],0
>0049E614    jne         0049E63E
 0049E616    mov         eax,dword ptr [ebp-4]
 0049E619    mov         eax,dword ptr [eax+160]
 0049E61F    mov         eax,dword ptr [eax+14]
 0049E622    mov         edx,dword ptr [ebp-4]
 0049E625    mov         edx,dword ptr [edx+70]
 0049E628    call        TBrush.SetColor
 0049E62D    lea         edx,[ebp-22]
 0049E630    mov         eax,dword ptr [ebp-4]
 0049E633    mov         eax,dword ptr [eax+160]
 0049E639    call        TCanvas.FillRect
 0049E63E    push        0FF
 0049E640    push        0FF
 0049E642    lea         eax,[ebp-22]
 0049E645    push        eax
 0049E646    call        user32.InflateRect
 0049E64B    mov         eax,dword ptr [ebp-4]
 0049E64E    mov         al,byte ptr [eax+182]
 0049E654    add         al,0FE
 0049E656    sub         al,2
>0049E658    jae         0049E6C1
 0049E65A    mov         eax,dword ptr [ebp-4]
 0049E65D    cmp         byte ptr [eax+182],3
>0049E664    jne         0049E6B1
 0049E666    mov         eax,dword ptr [ebp-4]
 0049E669    cmp         byte ptr [eax+180],0
>0049E670    je          0049E67E
 0049E672    mov         eax,dword ptr [ebp-4]
 0049E675    cmp         byte ptr [eax+181],0
>0049E67C    jne         0049E6B1
 0049E67E    mov         edx,0FF000014
 0049E683    mov         eax,0FF00000F
 0049E688    call        0048FA88
 0049E68D    mov         edx,eax
 0049E68F    mov         eax,dword ptr [ebp-4]
 0049E692    mov         eax,dword ptr [eax+160]
 0049E698    mov         eax,dword ptr [eax+14]
 0049E69B    call        0048775C
 0049E6A0    lea         edx,[ebp-22]
 0049E6A3    mov         eax,dword ptr [ebp-4]
 0049E6A6    mov         eax,dword ptr [eax+160]
 0049E6AC    call        TCanvas.FillRect
 0049E6B1    mov         dword ptr [ebp-10],1
 0049E6B8    mov         dword ptr [ebp-0C],1
>0049E6BF    jmp         0049E6CB
 0049E6C1    xor         eax,eax
 0049E6C3    mov         dword ptr [ebp-10],eax
 0049E6C6    xor         eax,eax
 0049E6C8    mov         dword ptr [ebp-0C],eax
 0049E6CB    lea         eax,[ebp-10]
 0049E6CE    push        eax
 0049E6CF    lea         edx,[ebp-48]
 0049E6D2    mov         eax,dword ptr [ebp-4]
 0049E6D5    call        TControl.GetText
 0049E6DA    mov         eax,dword ptr [ebp-48]
 0049E6DD    push        eax
 0049E6DE    mov         eax,dword ptr [ebp-4]
 0049E6E1    mov         al,byte ptr [eax+173]
 0049E6E7    push        eax
 0049E6E8    mov         eax,dword ptr [ebp-4]
 0049E6EB    mov         eax,dword ptr [eax+17C]
 0049E6F1    push        eax
 0049E6F2    mov         eax,dword ptr [ebp-4]
 0049E6F5    mov         eax,dword ptr [eax+174]
 0049E6FB    push        eax
 0049E6FC    mov         eax,dword ptr [ebp-4]
 0049E6FF    mov         al,byte ptr [eax+182]
 0049E705    push        eax
 0049E706    mov         eax,dword ptr [ebp-4]
 0049E709    mov         al,byte ptr [eax+178]
 0049E70F    push        eax
 0049E710    xor         edx,edx
 0049E712    mov         eax,dword ptr [ebp-4]
 0049E715    call        004CDF58
 0049E71A    push        eax
 0049E71B    lea         eax,[ebp-40]
 0049E71E    push        eax
 0049E71F    lea         ecx,[ebp-22]
 0049E722    mov         eax,dword ptr [ebp-4]
 0049E725    mov         edx,dword ptr [eax+160]
 0049E72B    mov         eax,dword ptr [ebp-4]
 0049E72E    mov         eax,dword ptr [eax+16C]
 0049E734    call        0049DF9C
 0049E739    xor         eax,eax
 0049E73B    pop         edx
 0049E73C    pop         ecx
 0049E73D    pop         ecx
 0049E73E    mov         dword ptr fs:[eax],edx
 0049E741    push        49E75B
 0049E746    lea         eax,[ebp-48]
 0049E749    mov         edx,2
 0049E74E    call        @LStrArrayClr
 0049E753    ret
>0049E754    jmp         @HandleFinally
>0049E759    jmp         0049E746
 0049E75B    pop         edi
 0049E75C    pop         esi
 0049E75D    mov         esp,ebp
 0049E75F    pop         ebp
 0049E760    ret
*}
end;

//0049E764
procedure sub_0049E764(?:TSpeedButton);
begin
{*
 0049E764    push        ebp
 0049E765    mov         ebp,esp
 0049E767    add         esp,0FFFFFFF4
 0049E76A    mov         dword ptr [ebp-4],eax
 0049E76D    mov         eax,dword ptr [ebp-4]
 0049E770    cmp         byte ptr [eax+180],0
>0049E777    je          0049E7D9
 0049E779    mov         eax,dword ptr [ebp-4]
 0049E77C    mov         edx,dword ptr [eax]
 0049E77E    call        dword ptr [edx+50]
 0049E781    test        al,al
>0049E783    je          0049E7D9
 0049E785    lea         eax,[ebp-0C]
 0049E788    push        eax
 0049E789    call        user32.GetCursorPos
 0049E78E    lea         eax,[ebp-0C]
 0049E791    mov         dl,1
 0049E793    call        004C8F78
 0049E798    cmp         eax,dword ptr [ebp-4]
 0049E79B    sete        al
 0049E79E    xor         al,1
 0049E7A0    mov         edx,dword ptr [ebp-4]
 0049E7A3    mov         byte ptr [edx+181],al
 0049E7A9    mov         eax,dword ptr [ebp-4]
 0049E7AC    cmp         byte ptr [eax+181],0
>0049E7B3    je          0049E7C8
 0049E7B5    push        0
 0049E7B7    xor         ecx,ecx
 0049E7B9    mov         edx,0B014
 0049E7BE    mov         eax,dword ptr [ebp-4]
 0049E7C1    call        004CC7DC
>0049E7C6    jmp         0049E7D9
 0049E7C8    push        0
 0049E7CA    xor         ecx,ecx
 0049E7CC    mov         edx,0B013
 0049E7D1    mov         eax,dword ptr [ebp-4]
 0049E7D4    call        004CC7DC
 0049E7D9    mov         esp,ebp
 0049E7DB    pop         ebp
 0049E7DC    ret
*}
end;

//0049E7E0
procedure TSpeedButton.Loaded;
begin
{*
 0049E7E0    push        ebp
 0049E7E1    mov         ebp,esp
 0049E7E3    add         esp,0FFFFFFF8
 0049E7E6    mov         dword ptr [ebp-4],eax
 0049E7E9    mov         eax,dword ptr [ebp-4]
 0049E7EC    call        TControl.Loaded
 0049E7F1    mov         eax,dword ptr [ebp-4]
 0049E7F4    mov         edx,dword ptr [eax]
 0049E7F6    call        dword ptr [edx+50];TImage.GetEnabled
 0049E7F9    test        al,al
>0049E7FB    je          0049E803
 0049E7FD    mov         byte ptr [ebp-5],0
>0049E801    jmp         0049E807
 0049E803    mov         byte ptr [ebp-5],1
 0049E807    mov         dl,byte ptr [ebp-5]
 0049E80A    mov         eax,dword ptr [ebp-4]
 0049E80D    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0049E813    call        0049D344
 0049E818    pop         ecx
 0049E819    pop         ecx
 0049E81A    pop         ebp
 0049E81B    ret
*}
end;

//0049E81C
procedure TSpeedButton.MouseDown(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0049E81C    push        ebp
 0049E81D    mov         ebp,esp
 0049E81F    add         esp,0FFFFFFF8
 0049E822    mov         byte ptr [ebp-6],cl
 0049E825    mov         byte ptr [ebp-5],dl
 0049E828    mov         dword ptr [ebp-4],eax
 0049E82B    mov         eax,dword ptr [ebp+0C]
 0049E82E    push        eax
 0049E82F    mov         eax,dword ptr [ebp+8]
 0049E832    push        eax
 0049E833    mov         cl,byte ptr [ebp-6]
 0049E836    mov         dl,byte ptr [ebp-5]
 0049E839    mov         eax,dword ptr [ebp-4]
 0049E83C    call        TControl.sub_004CCD68
 0049E841    cmp         byte ptr [ebp-5],0
>0049E845    jne         0049E87B
 0049E847    mov         eax,dword ptr [ebp-4]
 0049E84A    mov         edx,dword ptr [eax]
 0049E84C    call        dword ptr [edx+50]
 0049E84F    test        al,al
>0049E851    je          0049E87B
 0049E853    mov         eax,dword ptr [ebp-4]
 0049E856    cmp         byte ptr [eax+170],0
>0049E85D    jne         0049E871
 0049E85F    mov         eax,dword ptr [ebp-4]
 0049E862    mov         byte ptr [eax+182],2
 0049E869    mov         eax,dword ptr [ebp-4]
 0049E86C    mov         edx,dword ptr [eax]
 0049E86E    call        dword ptr [edx+7C]
 0049E871    mov         eax,dword ptr [ebp-4]
 0049E874    mov         byte ptr [eax+171],1
 0049E87B    pop         ecx
 0049E87C    pop         ecx
 0049E87D    pop         ebp
 0049E87E    ret         8
*}
end;

//0049E884
{*procedure TSpeedButton.sub_0049E884(?:?; ?:?; ?:?);
begin
 0049E884    push        ebp
 0049E885    mov         ebp,esp
 0049E887    add         esp,0FFFFFFF0
 0049E88A    mov         dword ptr [ebp-0C],ecx
 0049E88D    mov         byte ptr [ebp-5],dl
 0049E890    mov         dword ptr [ebp-4],eax
 0049E893    mov         eax,dword ptr [ebp+8]
 0049E896    push        eax
 0049E897    mov         ecx,dword ptr [ebp-0C]
 0049E89A    mov         dl,byte ptr [ebp-5]
 0049E89D    mov         eax,dword ptr [ebp-4]
 0049E8A0    call        TControl.sub_004CD0D4
 0049E8A5    mov         eax,dword ptr [ebp-4]
 0049E8A8    cmp         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
>0049E8AF    je          0049E927
 0049E8B1    mov         eax,dword ptr [ebp-4]
 0049E8B4    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0049E8BB    jne         0049E8C3
 0049E8BD    mov         byte ptr [ebp-0D],0
>0049E8C1    jmp         0049E8C7
 0049E8C3    mov         byte ptr [ebp-0D],3
 0049E8C7    cmp         dword ptr [ebp-0C],0
>0049E8CB    jl          0049E903
 0049E8CD    mov         eax,dword ptr [ebp-4]
 0049E8D0    call        TControl.GetClientWidth
 0049E8D5    cmp         eax,dword ptr [ebp-0C]
>0049E8D8    jle         0049E903
 0049E8DA    cmp         dword ptr [ebp+8],0
>0049E8DE    jl          0049E903
 0049E8E0    mov         eax,dword ptr [ebp-4]
 0049E8E3    call        TControl.GetClientHeight
 0049E8E8    cmp         eax,dword ptr [ebp+8]
>0049E8EB    jl          0049E903
 0049E8ED    mov         eax,dword ptr [ebp-4]
 0049E8F0    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0049E8F7    je          0049E8FF
 0049E8F9    mov         byte ptr [ebp-0D],3
>0049E8FD    jmp         0049E903
 0049E8FF    mov         byte ptr [ebp-0D],2
 0049E903    mov         al,byte ptr [ebp-0D]
 0049E906    mov         edx,dword ptr [ebp-4]
 0049E909    cmp         al,byte ptr [edx+182];TSpeedButton.FState:TButtonState
>0049E90F    je          0049E93B
 0049E911    mov         al,byte ptr [ebp-0D]
 0049E914    mov         edx,dword ptr [ebp-4]
 0049E917    mov         byte ptr [edx+182],al;TSpeedButton.FState:TButtonState
 0049E91D    mov         eax,dword ptr [ebp-4]
 0049E920    mov         edx,dword ptr [eax]
 0049E922    call        dword ptr [edx+7C];TSpeedButton.sub_004CB6E8
>0049E925    jmp         0049E93B
 0049E927    mov         eax,dword ptr [ebp-4]
 0049E92A    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>0049E931    jne         0049E93B
 0049E933    mov         eax,dword ptr [ebp-4]
 0049E936    call        0049E764
 0049E93B    mov         esp,ebp
 0049E93D    pop         ebp
 0049E93E    ret         4
end;*}

//0049E944
procedure TSpeedButton.MouseUp(Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer);
begin
{*
 0049E944    push        ebp
 0049E945    mov         ebp,esp
 0049E947    add         esp,0FFFFFFF8
 0049E94A    push        esi
 0049E94B    mov         byte ptr [ebp-6],cl
 0049E94E    mov         byte ptr [ebp-5],dl
 0049E951    mov         dword ptr [ebp-4],eax
 0049E954    mov         eax,dword ptr [ebp+0C]
 0049E957    push        eax
 0049E958    mov         eax,dword ptr [ebp+8]
 0049E95B    push        eax
 0049E95C    mov         cl,byte ptr [ebp-6]
 0049E95F    mov         dl,byte ptr [ebp-5]
 0049E962    mov         eax,dword ptr [ebp-4]
 0049E965    call        TControl.sub_004CD1B0
 0049E96A    mov         eax,dword ptr [ebp-4]
 0049E96D    cmp         byte ptr [eax+171],0
>0049E974    je          0049EA60
 0049E97A    mov         eax,dword ptr [ebp-4]
 0049E97D    mov         byte ptr [eax+171],0
 0049E984    cmp         dword ptr [ebp+0C],0
>0049E988    jl          0049E9AA
 0049E98A    mov         eax,dword ptr [ebp-4]
 0049E98D    call        TControl.GetClientWidth
 0049E992    cmp         eax,dword ptr [ebp+0C]
>0049E995    jle         0049E9AA
 0049E997    cmp         dword ptr [ebp+8],0
>0049E99B    jl          0049E9AA
 0049E99D    mov         eax,dword ptr [ebp-4]
 0049E9A0    call        TControl.GetClientHeight
 0049E9A5    cmp         eax,dword ptr [ebp+8]
>0049E9A8    jge         0049E9AE
 0049E9AA    xor         eax,eax
>0049E9AC    jmp         0049E9B0
 0049E9AE    mov         al,1
 0049E9B0    mov         byte ptr [ebp-7],al
 0049E9B3    mov         eax,dword ptr [ebp-4]
 0049E9B6    cmp         dword ptr [eax+168],0
>0049E9BD    jne         0049E9F2
 0049E9BF    mov         eax,dword ptr [ebp-4]
 0049E9C2    mov         byte ptr [eax+182],0
 0049E9C9    mov         eax,dword ptr [ebp-4]
 0049E9CC    mov         byte ptr [eax+181],0
 0049E9D3    cmp         byte ptr [ebp-7],0
>0049E9D7    je          0049EA46
 0049E9D9    mov         eax,dword ptr [ebp-4]
 0049E9DC    mov         al,byte ptr [eax+182]
 0049E9E2    add         al,0FE
 0049E9E4    sub         al,2
>0049E9E6    jb          0049EA46
 0049E9E8    mov         eax,dword ptr [ebp-4]
 0049E9EB    mov         edx,dword ptr [eax]
 0049E9ED    call        dword ptr [edx+7C]
>0049E9F0    jmp         0049EA46
 0049E9F2    cmp         byte ptr [ebp-7],0
>0049E9F6    je          0049EA25
 0049E9F8    mov         eax,dword ptr [ebp-4]
 0049E9FB    mov         dl,byte ptr [eax+170]
 0049EA01    xor         dl,1
 0049EA04    mov         eax,dword ptr [ebp-4]
 0049EA07    call        TSpeedButton.SetDown
 0049EA0C    mov         eax,dword ptr [ebp-4]
 0049EA0F    cmp         byte ptr [eax+170],0
>0049EA16    je          0049EA46
 0049EA18    mov         eax,dword ptr [ebp-4]
 0049EA1B    mov         edx,dword ptr [eax]
 0049EA1D    call        dword ptr [edx+80]
>0049EA23    jmp         0049EA46
 0049EA25    mov         eax,dword ptr [ebp-4]
 0049EA28    cmp         byte ptr [eax+170],0
>0049EA2F    je          0049EA3B
 0049EA31    mov         eax,dword ptr [ebp-4]
 0049EA34    mov         byte ptr [eax+182],3
 0049EA3B    mov         eax,dword ptr [ebp-4]
 0049EA3E    mov         edx,dword ptr [eax]
 0049EA40    call        dword ptr [edx+80]
 0049EA46    cmp         byte ptr [ebp-7],0
>0049EA4A    je          0049EA58
 0049EA4C    mov         eax,dword ptr [ebp-4]
 0049EA4F    mov         si,0FFEB
 0049EA53    call        @CallDynaInst
 0049EA58    mov         eax,dword ptr [ebp-4]
 0049EA5B    call        0049E764
 0049EA60    pop         esi
 0049EA61    pop         ecx
 0049EA62    pop         ecx
 0049EA63    pop         ebp
 0049EA64    ret         8
*}
end;

//0049EA68
procedure TSpeedButton.sub_0049EA68;
begin
{*
 0049EA68    push        ebp
 0049EA69    mov         ebp,esp
 0049EA6B    push        ecx
 0049EA6C    mov         dword ptr [ebp-4],eax
 0049EA6F    mov         eax,dword ptr [ebp-4]
 0049EA72    call        TControl.sub_004CCCAC
 0049EA77    pop         ecx
 0049EA78    pop         ebp
 0049EA79    ret
*}
end;

//0049EA7C
procedure TSpeedButton.sub_0049EA7C;
begin
{*
 0049EA7C    push        ebp
 0049EA7D    mov         ebp,esp
 0049EA7F    add         esp,0FFFFFFF8
 0049EA82    mov         dword ptr [ebp-4],eax
 0049EA85    mov         eax,dword ptr [ebp-4]
 0049EA88    call        TSpeedButton.GetGlyph
 0049EA8D    mov         edx,dword ptr [eax]
 0049EA8F    call        dword ptr [edx+24];TBitmap.sub_0048D698
 0049EA92    mov         dword ptr [ebp-8],eax
 0049EA95    mov         eax,dword ptr [ebp-8]
 0049EA98    pop         ecx
 0049EA99    pop         ecx
 0049EA9A    pop         ebp
 0049EA9B    ret
*}
end;

//0049EA9C
procedure TSpeedButton.sub_0049EA9C;
begin
{*
 0049EA9C    push        ebp
 0049EA9D    mov         ebp,esp
 0049EA9F    add         esp,0FFFFFFF8
 0049EAA2    mov         dword ptr [ebp-4],eax
 0049EAA5    mov         eax,[0049C608];TSpeedButtonActionLink
 0049EAAA    mov         dword ptr [ebp-8],eax
 0049EAAD    mov         eax,dword ptr [ebp-8]
 0049EAB0    pop         ecx
 0049EAB1    pop         ecx
 0049EAB2    pop         ebp
 0049EAB3    ret
*}
end;

//0049EAB4
function TSpeedButton.GetGlyph:TBitmap;
begin
{*
 0049EAB4    push        ebp
 0049EAB5    mov         ebp,esp
 0049EAB7    add         esp,0FFFFFFF8
 0049EABA    mov         dword ptr [ebp-4],eax
 0049EABD    mov         eax,dword ptr [ebp-4]
 0049EAC0    mov         eax,dword ptr [eax+16C]
 0049EAC6    mov         eax,dword ptr [eax+4]
 0049EAC9    mov         dword ptr [ebp-8],eax
 0049EACC    mov         eax,dword ptr [ebp-8]
 0049EACF    pop         ecx
 0049EAD0    pop         ecx
 0049EAD1    pop         ebp
 0049EAD2    ret
*}
end;

//0049EAD4
procedure TSpeedButton.SetGlyph(Value:TBitmap);
begin
{*
 0049EAD4    push        ebp
 0049EAD5    mov         ebp,esp
 0049EAD7    add         esp,0FFFFFFF8
 0049EADA    mov         dword ptr [ebp-8],edx
 0049EADD    mov         dword ptr [ebp-4],eax
 0049EAE0    mov         edx,dword ptr [ebp-8]
 0049EAE3    mov         eax,dword ptr [ebp-4]
 0049EAE6    mov         eax,dword ptr [eax+16C]
 0049EAEC    call        0049D26C
 0049EAF1    mov         eax,dword ptr [ebp-4]
 0049EAF4    mov         edx,dword ptr [eax]
 0049EAF6    call        dword ptr [edx+7C]
 0049EAF9    pop         ecx
 0049EAFA    pop         ecx
 0049EAFB    pop         ebp
 0049EAFC    ret
*}
end;

//0049EB00
function TSpeedButton.GetNumGlyphs:TNumGlyphs;
begin
{*
 0049EB00    push        ebp
 0049EB01    mov         ebp,esp
 0049EB03    add         esp,0FFFFFFF8
 0049EB06    mov         dword ptr [ebp-4],eax
 0049EB09    mov         eax,dword ptr [ebp-4]
 0049EB0C    mov         eax,dword ptr [eax+16C]
 0049EB12    mov         al,byte ptr [eax+20]
 0049EB15    mov         byte ptr [ebp-5],al
 0049EB18    mov         al,byte ptr [ebp-5]
 0049EB1B    pop         ecx
 0049EB1C    pop         ecx
 0049EB1D    pop         ebp
 0049EB1E    ret
*}
end;

//0049EB20
procedure TSpeedButton.SetNumGlyphs(Value:TNumGlyphs);
begin
{*
 0049EB20    push        ebp
 0049EB21    mov         ebp,esp
 0049EB23    add         esp,0FFFFFFF8
 0049EB26    mov         byte ptr [ebp-5],dl
 0049EB29    mov         dword ptr [ebp-4],eax
 0049EB2C    cmp         byte ptr [ebp-5],0
>0049EB30    jae         0049EB38
 0049EB32    mov         byte ptr [ebp-5],1
>0049EB36    jmp         0049EB42
 0049EB38    cmp         byte ptr [ebp-5],4
>0049EB3C    jbe         0049EB42
 0049EB3E    mov         byte ptr [ebp-5],4
 0049EB42    mov         eax,dword ptr [ebp-4]
 0049EB45    mov         eax,dword ptr [eax+16C]
 0049EB4B    mov         al,byte ptr [eax+20]
 0049EB4E    cmp         al,byte ptr [ebp-5]
>0049EB51    je          0049EB6C
 0049EB53    mov         dl,byte ptr [ebp-5]
 0049EB56    mov         eax,dword ptr [ebp-4]
 0049EB59    mov         eax,dword ptr [eax+16C]
 0049EB5F    call        0049D304
 0049EB64    mov         eax,dword ptr [ebp-4]
 0049EB67    mov         edx,dword ptr [eax]
 0049EB69    call        dword ptr [edx+7C]
 0049EB6C    pop         ecx
 0049EB6D    pop         ecx
 0049EB6E    pop         ebp
 0049EB6F    ret
*}
end;

//0049EB70
{*procedure sub_0049EB70(?:?; ?:?);
begin
 0049EB70    push        ebp
 0049EB71    mov         ebp,esp
 0049EB73    add         esp,0FFFFFFF8
 0049EB76    mov         dword ptr [ebp-8],edx
 0049EB79    mov         dword ptr [ebp-4],eax
 0049EB7C    mov         eax,dword ptr [ebp-4]
 0049EB7F    mov         edx,dword ptr [eax]
 0049EB81    call        dword ptr [edx+7C]
 0049EB84    pop         ecx
 0049EB85    pop         ecx
 0049EB86    pop         ebp
 0049EB87    ret
end;*}

//0049EB88
procedure sub_0049EB88(?:TSpeedButton);
begin
{*
 0049EB88    push        ebp
 0049EB89    mov         ebp,esp
 0049EB8B    add         esp,0FFFFFFEC
 0049EB8E    mov         dword ptr [ebp-4],eax
 0049EB91    mov         eax,dword ptr [ebp-4]
 0049EB94    cmp         dword ptr [eax+168],0
>0049EB9B    je          0049EBD2
 0049EB9D    mov         eax,dword ptr [ebp-4]
 0049EBA0    cmp         dword ptr [eax+30],0
>0049EBA4    je          0049EBD2
 0049EBA6    mov         dword ptr [ebp-14],0B018
 0049EBAD    mov         eax,dword ptr [ebp-4]
 0049EBB0    mov         eax,dword ptr [eax+168]
 0049EBB6    mov         dword ptr [ebp-10],eax
 0049EBB9    mov         eax,dword ptr [ebp-4]
 0049EBBC    mov         dword ptr [ebp-0C],eax
 0049EBBF    xor         eax,eax
 0049EBC1    mov         dword ptr [ebp-8],eax
 0049EBC4    lea         edx,[ebp-14]
 0049EBC7    mov         eax,dword ptr [ebp-4]
 0049EBCA    mov         eax,dword ptr [eax+30]
 0049EBCD    call        004CF664
 0049EBD2    mov         esp,ebp
 0049EBD4    pop         ebp
 0049EBD5    ret
*}
end;

//0049EBD8
procedure TSpeedButton.SetDown(Value:Boolean);
begin
{*
 0049EBD8    push        ebp
 0049EBD9    mov         ebp,esp
 0049EBDB    add         esp,0FFFFFFF8
 0049EBDE    mov         byte ptr [ebp-5],dl
 0049EBE1    mov         dword ptr [ebp-4],eax
 0049EBE4    mov         eax,dword ptr [ebp-4]
 0049EBE7    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>0049EBEE    jne         0049EBF4
 0049EBF0    mov         byte ptr [ebp-5],0
 0049EBF4    mov         al,byte ptr [ebp-5]
 0049EBF7    mov         edx,dword ptr [ebp-4]
 0049EBFA    cmp         al,byte ptr [edx+170];TSpeedButton.Down:Boolean
>0049EC00    je          0049EC6F
 0049EC02    mov         eax,dword ptr [ebp-4]
 0049EC05    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0049EC0C    je          0049EC1A
 0049EC0E    mov         eax,dword ptr [ebp-4]
 0049EC11    cmp         byte ptr [eax+172],0;TSpeedButton.AllowAllUp:Boolean
>0049EC18    je          0049EC6F
 0049EC1A    mov         al,byte ptr [ebp-5]
 0049EC1D    mov         edx,dword ptr [ebp-4]
 0049EC20    mov         byte ptr [edx+170],al;TSpeedButton.Down:Boolean
 0049EC26    cmp         byte ptr [ebp-5],0
>0049EC2A    je          0049EC4C
 0049EC2C    mov         eax,dword ptr [ebp-4]
 0049EC2F    cmp         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
>0049EC36    jne         0049EC40
 0049EC38    mov         eax,dword ptr [ebp-4]
 0049EC3B    mov         edx,dword ptr [eax]
 0049EC3D    call        dword ptr [edx+7C];TSpeedButton.sub_004CB6E8
 0049EC40    mov         eax,dword ptr [ebp-4]
 0049EC43    mov         byte ptr [eax+182],3;TSpeedButton.FState:TButtonState
>0049EC4A    jmp         0049EC61
 0049EC4C    mov         eax,dword ptr [ebp-4]
 0049EC4F    mov         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
 0049EC56    mov         eax,dword ptr [ebp-4]
 0049EC59    mov         edx,dword ptr [eax]
 0049EC5B    call        dword ptr [edx+80];TSpeedButton.sub_004CB7F8
 0049EC61    cmp         byte ptr [ebp-5],0
>0049EC65    je          0049EC6F
 0049EC67    mov         eax,dword ptr [ebp-4]
 0049EC6A    call        0049EB88
 0049EC6F    pop         ecx
 0049EC70    pop         ecx
 0049EC71    pop         ebp
 0049EC72    ret
*}
end;

//0049EC74
procedure TSpeedButton.SetFlat(Value:Boolean);
begin
{*
 0049EC74    push        ebp
 0049EC75    mov         ebp,esp
 0049EC77    add         esp,0FFFFFFF8
 0049EC7A    mov         byte ptr [ebp-5],dl
 0049EC7D    mov         dword ptr [ebp-4],eax
 0049EC80    mov         al,byte ptr [ebp-5]
 0049EC83    mov         edx,dword ptr [ebp-4]
 0049EC86    cmp         al,byte ptr [edx+180];TSpeedButton.Flat:Boolean
>0049EC8C    je          0049ECA2
 0049EC8E    mov         al,byte ptr [ebp-5]
 0049EC91    mov         edx,dword ptr [ebp-4]
 0049EC94    mov         byte ptr [edx+180],al;TSpeedButton.Flat:Boolean
 0049EC9A    mov         eax,dword ptr [ebp-4]
 0049EC9D    mov         edx,dword ptr [eax]
 0049EC9F    call        dword ptr [edx+7C];TSpeedButton.sub_004CB6E8
 0049ECA2    pop         ecx
 0049ECA3    pop         ecx
 0049ECA4    pop         ebp
 0049ECA5    ret
*}
end;

//0049ECA8
procedure TSpeedButton.SetGroupIndex(Value:Integer);
begin
{*
 0049ECA8    push        ebp
 0049ECA9    mov         ebp,esp
 0049ECAB    add         esp,0FFFFFFF8
 0049ECAE    mov         dword ptr [ebp-8],edx
 0049ECB1    mov         dword ptr [ebp-4],eax
 0049ECB4    mov         eax,dword ptr [ebp-4]
 0049ECB7    mov         eax,dword ptr [eax+168];TSpeedButton.GroupIndex:Integer
 0049ECBD    cmp         eax,dword ptr [ebp-8]
>0049ECC0    je          0049ECD6
 0049ECC2    mov         eax,dword ptr [ebp-8]
 0049ECC5    mov         edx,dword ptr [ebp-4]
 0049ECC8    mov         dword ptr [edx+168],eax;TSpeedButton.GroupIndex:Integer
 0049ECCE    mov         eax,dword ptr [ebp-4]
 0049ECD1    call        0049EB88
 0049ECD6    pop         ecx
 0049ECD7    pop         ecx
 0049ECD8    pop         ebp
 0049ECD9    ret
*}
end;

//0049ECDC
procedure TSpeedButton.SetLayout(Value:TButtonLayout);
begin
{*
 0049ECDC    push        ebp
 0049ECDD    mov         ebp,esp
 0049ECDF    add         esp,0FFFFFFF8
 0049ECE2    mov         byte ptr [ebp-5],dl
 0049ECE5    mov         dword ptr [ebp-4],eax
 0049ECE8    mov         eax,dword ptr [ebp-4]
 0049ECEB    mov         al,byte ptr [eax+173];TSpeedButton.Layout:TButtonLayout
 0049ECF1    cmp         al,byte ptr [ebp-5]
>0049ECF4    je          0049ED0A
 0049ECF6    mov         al,byte ptr [ebp-5]
 0049ECF9    mov         edx,dword ptr [ebp-4]
 0049ECFC    mov         byte ptr [edx+173],al;TSpeedButton.Layout:TButtonLayout
 0049ED02    mov         eax,dword ptr [ebp-4]
 0049ED05    mov         edx,dword ptr [eax]
 0049ED07    call        dword ptr [edx+7C];TSpeedButton.sub_004CB6E8
 0049ED0A    pop         ecx
 0049ED0B    pop         ecx
 0049ED0C    pop         ebp
 0049ED0D    ret
*}
end;

//0049ED10
procedure TSpeedButton.SetMargin(Value:Integer);
begin
{*
 0049ED10    push        ebp
 0049ED11    mov         ebp,esp
 0049ED13    add         esp,0FFFFFFF8
 0049ED16    mov         dword ptr [ebp-8],edx
 0049ED19    mov         dword ptr [ebp-4],eax
 0049ED1C    mov         eax,dword ptr [ebp-8]
 0049ED1F    mov         edx,dword ptr [ebp-4]
 0049ED22    cmp         eax,dword ptr [edx+17C];TSpeedButton.Margin:Integer
>0049ED28    je          0049ED44
 0049ED2A    cmp         dword ptr [ebp-8],0FFFFFFFF
>0049ED2E    jl          0049ED44
 0049ED30    mov         eax,dword ptr [ebp-8]
 0049ED33    mov         edx,dword ptr [ebp-4]
 0049ED36    mov         dword ptr [edx+17C],eax;TSpeedButton.Margin:Integer
 0049ED3C    mov         eax,dword ptr [ebp-4]
 0049ED3F    mov         edx,dword ptr [eax]
 0049ED41    call        dword ptr [edx+7C];TSpeedButton.sub_004CB6E8
 0049ED44    pop         ecx
 0049ED45    pop         ecx
 0049ED46    pop         ebp
 0049ED47    ret
*}
end;

//0049ED48
procedure TSpeedButton.SetSpacing(Value:Integer);
begin
{*
 0049ED48    push        ebp
 0049ED49    mov         ebp,esp
 0049ED4B    add         esp,0FFFFFFF8
 0049ED4E    mov         dword ptr [ebp-8],edx
 0049ED51    mov         dword ptr [ebp-4],eax
 0049ED54    mov         eax,dword ptr [ebp-8]
 0049ED57    mov         edx,dword ptr [ebp-4]
 0049ED5A    cmp         eax,dword ptr [edx+174];TSpeedButton.Spacing:Integer
>0049ED60    je          0049ED76
 0049ED62    mov         eax,dword ptr [ebp-8]
 0049ED65    mov         edx,dword ptr [ebp-4]
 0049ED68    mov         dword ptr [edx+174],eax;TSpeedButton.Spacing:Integer
 0049ED6E    mov         eax,dword ptr [ebp-4]
 0049ED71    mov         edx,dword ptr [eax]
 0049ED73    call        dword ptr [edx+7C];TSpeedButton.sub_004CB6E8
 0049ED76    pop         ecx
 0049ED77    pop         ecx
 0049ED78    pop         ebp
 0049ED79    ret
*}
end;

//0049ED7C
procedure TSpeedButton.SetTransparent(Value:Boolean);
begin
{*
 0049ED7C    push        ebp
 0049ED7D    mov         ebp,esp
 0049ED7F    add         esp,0FFFFFFF8
 0049ED82    mov         byte ptr [ebp-5],dl
 0049ED85    mov         dword ptr [ebp-4],eax
 0049ED88    mov         al,byte ptr [ebp-5]
 0049ED8B    mov         edx,dword ptr [ebp-4]
 0049ED8E    cmp         al,byte ptr [edx+178];TSpeedButton.Transparent:Boolean
>0049ED94    je          0049EDD6
 0049ED96    mov         al,byte ptr [ebp-5]
 0049ED99    mov         edx,dword ptr [ebp-4]
 0049ED9C    mov         byte ptr [edx+178],al;TSpeedButton.Transparent:Boolean
 0049EDA2    cmp         byte ptr [ebp-5],0
>0049EDA6    je          0049EDBD
 0049EDA8    mov         eax,[0049EDDC];0x40 gvar_0049EDDC
 0049EDAD    mov         edx,dword ptr [ebp-4]
 0049EDB0    not         eax
 0049EDB2    and         eax,dword ptr [edx+50];TSpeedButton.FControlStyle:TControlStyle
 0049EDB5    mov         edx,dword ptr [ebp-4]
 0049EDB8    mov         dword ptr [edx+50],eax;TSpeedButton.FControlStyle:TControlStyle
>0049EDBB    jmp         0049EDCE
 0049EDBD    mov         eax,[0049EDDC];0x40 gvar_0049EDDC
 0049EDC2    mov         edx,dword ptr [ebp-4]
 0049EDC5    or          eax,dword ptr [edx+50];TSpeedButton.FControlStyle:TControlStyle
 0049EDC8    mov         edx,dword ptr [ebp-4]
 0049EDCB    mov         dword ptr [edx+50],eax;TSpeedButton.FControlStyle:TControlStyle
 0049EDCE    mov         eax,dword ptr [ebp-4]
 0049EDD1    mov         edx,dword ptr [eax]
 0049EDD3    call        dword ptr [edx+7C];TSpeedButton.sub_004CB6E8
 0049EDD6    pop         ecx
 0049EDD7    pop         ecx
 0049EDD8    pop         ebp
 0049EDD9    ret
*}
end;

//0049EDE0
procedure TSpeedButton.SetAllowAllUp(Value:Boolean);
begin
{*
 0049EDE0    push        ebp
 0049EDE1    mov         ebp,esp
 0049EDE3    add         esp,0FFFFFFF8
 0049EDE6    mov         byte ptr [ebp-5],dl
 0049EDE9    mov         dword ptr [ebp-4],eax
 0049EDEC    mov         eax,dword ptr [ebp-4]
 0049EDEF    mov         al,byte ptr [eax+172];TSpeedButton.AllowAllUp:Boolean
 0049EDF5    cmp         al,byte ptr [ebp-5]
>0049EDF8    je          0049EE0E
 0049EDFA    mov         al,byte ptr [ebp-5]
 0049EDFD    mov         edx,dword ptr [ebp-4]
 0049EE00    mov         byte ptr [edx+172],al;TSpeedButton.AllowAllUp:Boolean
 0049EE06    mov         eax,dword ptr [ebp-4]
 0049EE09    call        0049EB88
 0049EE0E    pop         ecx
 0049EE0F    pop         ecx
 0049EE10    pop         ebp
 0049EE11    ret
*}
end;

//0049EE14
{*procedure TSpeedButton.WMLButtonDblClk(?:?);
begin
 0049EE14    push        ebp
 0049EE15    mov         ebp,esp
 0049EE17    add         esp,0FFFFFFF8
 0049EE1A    push        esi
 0049EE1B    mov         dword ptr [ebp-8],edx
 0049EE1E    mov         dword ptr [ebp-4],eax
 0049EE21    mov         edx,dword ptr [ebp-8]
 0049EE24    mov         eax,dword ptr [ebp-4]
 0049EE27    call        TControl.WMLButtonDblClk
 0049EE2C    mov         eax,dword ptr [ebp-4]
 0049EE2F    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0049EE36    je          0049EE44
 0049EE38    mov         eax,dword ptr [ebp-4]
 0049EE3B    mov         si,0FFE9
 0049EE3F    call        @CallDynaInst;TControl.sub_004CCD3C
 0049EE44    pop         esi
 0049EE45    pop         ecx
 0049EE46    pop         ecx
 0049EE47    pop         ebp
 0049EE48    ret
end;*}

//0049EE4C
{*procedure TSpeedButton.CMEnabledChanged(?:?);
begin
 0049EE4C    push        ebp
 0049EE4D    mov         ebp,esp
 0049EE4F    add         esp,0FFFFFFF8
 0049EE52    mov         dword ptr [ebp-8],edx
 0049EE55    mov         dword ptr [ebp-4],eax
 0049EE58    mov         eax,dword ptr [ebp-4]
 0049EE5B    mov         edx,dword ptr [eax]
 0049EE5D    call        dword ptr [edx+50];TImage.GetEnabled
 0049EE60    and         eax,7F
 0049EE63    mov         dl,byte ptr [eax+541384]
 0049EE69    mov         eax,dword ptr [ebp-4]
 0049EE6C    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0049EE72    call        0049D344
 0049EE77    mov         eax,dword ptr [ebp-4]
 0049EE7A    call        0049E764
 0049EE7F    mov         eax,dword ptr [ebp-4]
 0049EE82    mov         edx,dword ptr [eax]
 0049EE84    call        dword ptr [edx+80];TSpeedButton.sub_004CB7F8
 0049EE8A    pop         ecx
 0049EE8B    pop         ecx
 0049EE8C    pop         ebp
 0049EE8D    ret
end;*}

//0049EE90
{*procedure TSpeedButton.CMButtonPressed(?:?);
begin
 0049EE90    push        ebp
 0049EE91    mov         ebp,esp
 0049EE93    add         esp,0FFFFFFF4
 0049EE96    mov         dword ptr [ebp-8],edx
 0049EE99    mov         dword ptr [ebp-4],eax
 0049EE9C    mov         eax,dword ptr [ebp-8]
 0049EE9F    mov         eax,dword ptr [eax+4]
 0049EEA2    mov         edx,dword ptr [ebp-4]
 0049EEA5    cmp         eax,dword ptr [edx+168];TSpeedButton.GroupIndex:Integer
>0049EEAB    jne         0049EF2A
 0049EEAD    mov         eax,dword ptr [ebp-8]
 0049EEB0    mov         eax,dword ptr [eax+8]
 0049EEB3    mov         dword ptr [ebp-0C],eax
 0049EEB6    mov         eax,dword ptr [ebp-0C]
 0049EEB9    cmp         eax,dword ptr [ebp-4]
>0049EEBC    je          0049EF2A
 0049EEBE    mov         eax,dword ptr [ebp-0C]
 0049EEC1    cmp         byte ptr [eax+170],0
>0049EEC8    je          0049EF18
 0049EECA    mov         eax,dword ptr [ebp-4]
 0049EECD    cmp         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
>0049EED4    je          0049EF18
 0049EED6    mov         eax,dword ptr [ebp-4]
 0049EED9    mov         byte ptr [eax+170],0;TSpeedButton.Down:Boolean
 0049EEE0    mov         eax,dword ptr [ebp-4]
 0049EEE3    mov         byte ptr [eax+182],0;TSpeedButton.FState:TButtonState
 0049EEEA    mov         eax,dword ptr [ebp-4]
 0049EEED    mov         edx,dword ptr [eax]
 0049EEEF    call        dword ptr [edx+3C];TSpeedButton.GetAction
 0049EEF2    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0049EEF8    call        @IsClass
 0049EEFD    test        al,al
>0049EEFF    je          0049EF10
 0049EF01    mov         eax,dword ptr [ebp-4]
 0049EF04    mov         edx,dword ptr [eax]
 0049EF06    call        dword ptr [edx+3C];TSpeedButton.GetAction
 0049EF09    xor         edx,edx
 0049EF0B    call        TAction.SetChecked
 0049EF10    mov         eax,dword ptr [ebp-4]
 0049EF13    mov         edx,dword ptr [eax]
 0049EF15    call        dword ptr [edx+7C];TSpeedButton.sub_004CB6E8
 0049EF18    mov         eax,dword ptr [ebp-0C]
 0049EF1B    mov         al,byte ptr [eax+172]
 0049EF21    mov         edx,dword ptr [ebp-4]
 0049EF24    mov         byte ptr [edx+172],al;TSpeedButton.AllowAllUp:Boolean
 0049EF2A    mov         esp,ebp
 0049EF2C    pop         ebp
 0049EF2D    ret
end;*}

//0049EF30
{*procedure TSpeedButton.CMDialogChar(?:?);
begin
 0049EF30    push        ebp
 0049EF31    mov         ebp,esp
 0049EF33    add         esp,0FFFFFFF4
 0049EF36    push        esi
 0049EF37    xor         ecx,ecx
 0049EF39    mov         dword ptr [ebp-0C],ecx
 0049EF3C    mov         dword ptr [ebp-8],edx
 0049EF3F    mov         dword ptr [ebp-4],eax
 0049EF42    xor         eax,eax
 0049EF44    push        ebp
 0049EF45    push        49EFD4
 0049EF4A    push        dword ptr fs:[eax]
 0049EF4D    mov         dword ptr fs:[eax],esp
 0049EF50    lea         edx,[ebp-0C]
 0049EF53    mov         eax,dword ptr [ebp-4]
 0049EF56    call        TControl.GetText
 0049EF5B    mov         edx,dword ptr [ebp-0C]
 0049EF5E    mov         eax,dword ptr [ebp-8]
 0049EF61    mov         ax,word ptr [eax+4]
 0049EF65    call        004E7E60
 0049EF6A    test        al,al
>0049EF6C    je          0049EFB3
 0049EF6E    mov         eax,dword ptr [ebp-4]
 0049EF71    mov         edx,dword ptr [eax]
 0049EF73    call        dword ptr [edx+50];TImage.GetEnabled
 0049EF76    test        al,al
>0049EF78    je          0049EFB3
 0049EF7A    mov         eax,dword ptr [ebp-4]
 0049EF7D    cmp         byte ptr [eax+57],0;TSpeedButton.FVisible:Boolean
>0049EF81    je          0049EFB3
 0049EF83    mov         eax,dword ptr [ebp-4]
 0049EF86    cmp         dword ptr [eax+30],0;TSpeedButton.FParent:TWinControl
>0049EF8A    je          0049EFB3
 0049EF8C    mov         eax,dword ptr [ebp-4]
 0049EF8F    mov         eax,dword ptr [eax+30];TSpeedButton.FParent:TWinControl
 0049EF92    cmp         byte ptr [eax+1A6],0;TWinControl.FShowing:Boolean
>0049EF99    je          0049EFB3
 0049EF9B    mov         eax,dword ptr [ebp-4]
 0049EF9E    mov         si,0FFEB
 0049EFA2    call        @CallDynaInst;TSpeedButton.sub_0049EA68
 0049EFA7    mov         eax,dword ptr [ebp-8]
 0049EFAA    mov         dword ptr [eax+0C],1
>0049EFB1    jmp         0049EFBE
 0049EFB3    mov         edx,dword ptr [ebp-8]
 0049EFB6    mov         eax,dword ptr [ebp-4]
 0049EFB9    mov         ecx,dword ptr [eax]
 0049EFBB    call        dword ptr [ecx-10];TSpeedButton.DefaultHandler
 0049EFBE    xor         eax,eax
 0049EFC0    pop         edx
 0049EFC1    pop         ecx
 0049EFC2    pop         ecx
 0049EFC3    mov         dword ptr fs:[eax],edx
 0049EFC6    push        49EFDB
 0049EFCB    lea         eax,[ebp-0C]
 0049EFCE    call        @LStrClr
 0049EFD3    ret
>0049EFD4    jmp         @HandleFinally
>0049EFD9    jmp         0049EFCB
 0049EFDB    pop         esi
 0049EFDC    mov         esp,ebp
 0049EFDE    pop         ebp
 0049EFDF    ret
end;*}

//0049EFE0
{*procedure TSpeedButton.CMFontChanged(?:?);
begin
 0049EFE0    push        ebp
 0049EFE1    mov         ebp,esp
 0049EFE3    add         esp,0FFFFFFF8
 0049EFE6    mov         dword ptr [ebp-8],edx
 0049EFE9    mov         dword ptr [ebp-4],eax
 0049EFEC    mov         eax,dword ptr [ebp-4]
 0049EFEF    mov         edx,dword ptr [eax]
 0049EFF1    call        dword ptr [edx+7C];TSpeedButton.sub_004CB6E8
 0049EFF4    pop         ecx
 0049EFF5    pop         ecx
 0049EFF6    pop         ebp
 0049EFF7    ret
end;*}

//0049EFF8
{*procedure TSpeedButton.CMTextChanged(?:?);
begin
 0049EFF8    push        ebp
 0049EFF9    mov         ebp,esp
 0049EFFB    add         esp,0FFFFFFF8
 0049EFFE    mov         dword ptr [ebp-8],edx
 0049F001    mov         dword ptr [ebp-4],eax
 0049F004    mov         eax,dword ptr [ebp-4]
 0049F007    mov         edx,dword ptr [eax]
 0049F009    call        dword ptr [edx+7C];TSpeedButton.sub_004CB6E8
 0049F00C    pop         ecx
 0049F00D    pop         ecx
 0049F00E    pop         ebp
 0049F00F    ret
end;*}

//0049F010
{*procedure TSpeedButton.CMSysColorChange(?:?);
begin
 0049F010    push        ebp
 0049F011    mov         ebp,esp
 0049F013    add         esp,0FFFFFFF4
 0049F016    mov         dword ptr [ebp-0C],edx
 0049F019    mov         dword ptr [ebp-4],eax
 0049F01C    mov         eax,dword ptr [ebp-4]
 0049F01F    mov         eax,dword ptr [eax+16C];TSpeedButton.FGlyph:Pointer
 0049F025    mov         dword ptr [ebp-8],eax
 0049F028    mov         eax,dword ptr [ebp-8]
 0049F02B    call        0049D1B8
 0049F030    mov         eax,dword ptr [ebp-4]
 0049F033    mov         dl,byte ptr [eax+182];TSpeedButton.FState:TButtonState
 0049F039    mov         eax,dword ptr [ebp-8]
 0049F03C    call        0049D344
 0049F041    mov         esp,ebp
 0049F043    pop         ebp
 0049F044    ret
end;*}

//0049F048
{*procedure TSpeedButton.CMMouseEnter(?:?);
begin
 0049F048    push        ebp
 0049F049    mov         ebp,esp
 0049F04B    add         esp,0FFFFFFF4
 0049F04E    mov         dword ptr [ebp-8],edx
 0049F051    mov         dword ptr [ebp-4],eax
 0049F054    mov         edx,dword ptr [ebp-8]
 0049F057    mov         eax,dword ptr [ebp-4]
 0049F05A    call        TControl.CMMouseEnter
 0049F05F    mov         eax,dword ptr [ebp-4]
 0049F062    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>0049F069    je          0049F095
 0049F06B    mov         eax,dword ptr [ebp-4]
 0049F06E    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>0049F075    jne         0049F095
 0049F077    mov         eax,dword ptr [ebp-4]
 0049F07A    mov         edx,dword ptr [eax]
 0049F07C    call        dword ptr [edx+50];TImage.GetEnabled
 0049F07F    test        al,al
>0049F081    je          0049F095
 0049F083    mov         eax,dword ptr [ebp-4]
 0049F086    cmp         byte ptr [eax+5D],1;TSpeedButton.FDragMode:TDragMode
>0049F08A    je          0049F095
 0049F08C    call        user32.GetCapture
 0049F091    test        eax,eax
>0049F093    je          0049F099
 0049F095    xor         eax,eax
>0049F097    jmp         0049F09B
 0049F099    mov         al,1
 0049F09B    mov         byte ptr [ebp-9],al
 0049F09E    cmp         byte ptr [ebp-9],0
>0049F0A2    jne         0049F0B2
 0049F0A4    call        ThemeServices
 0049F0A9    call        TThemeServices.GetThemesEnabled
 0049F0AE    test        al,al
>0049F0B0    je          0049F0DC
 0049F0B2    mov         eax,dword ptr [ebp-4]
 0049F0B5    test        byte ptr [eax+1C],10;TSpeedButton.FComponentState:TComponentState
>0049F0B9    jne         0049F0DC
 0049F0BB    mov         eax,dword ptr [ebp-4]
 0049F0BE    mov         byte ptr [eax+181],1;TSpeedButton.FMouseInControl:Boolean
 0049F0C5    mov         eax,dword ptr [ebp-4]
 0049F0C8    mov         edx,dword ptr [eax]
 0049F0CA    call        dword ptr [edx+50];TImage.GetEnabled
 0049F0CD    test        al,al
>0049F0CF    je          0049F0DC
 0049F0D1    mov         eax,dword ptr [ebp-4]
 0049F0D4    mov         edx,dword ptr [eax]
 0049F0D6    call        dword ptr [edx+80];TSpeedButton.sub_004CB7F8
 0049F0DC    mov         esp,ebp
 0049F0DE    pop         ebp
 0049F0DF    ret
end;*}

//0049F0E0
{*procedure TSpeedButton.CMMouseLeave(?:?);
begin
 0049F0E0    push        ebp
 0049F0E1    mov         ebp,esp
 0049F0E3    add         esp,0FFFFFFF4
 0049F0E6    mov         dword ptr [ebp-8],edx
 0049F0E9    mov         dword ptr [ebp-4],eax
 0049F0EC    mov         edx,dword ptr [ebp-8]
 0049F0EF    mov         eax,dword ptr [ebp-4]
 0049F0F2    call        TControl.CMMouseLeave
 0049F0F7    mov         eax,dword ptr [ebp-4]
 0049F0FA    cmp         byte ptr [eax+180],0;TSpeedButton.Flat:Boolean
>0049F101    je          0049F127
 0049F103    mov         eax,dword ptr [ebp-4]
 0049F106    cmp         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
>0049F10D    je          0049F127
 0049F10F    mov         eax,dword ptr [ebp-4]
 0049F112    mov         edx,dword ptr [eax]
 0049F114    call        dword ptr [edx+50];TImage.GetEnabled
 0049F117    test        al,al
>0049F119    je          0049F127
 0049F11B    mov         eax,dword ptr [ebp-4]
 0049F11E    cmp         byte ptr [eax+171],0;TSpeedButton.FDragging:Boolean
>0049F125    je          0049F12B
 0049F127    xor         eax,eax
>0049F129    jmp         0049F12D
 0049F12B    mov         al,1
 0049F12D    mov         byte ptr [ebp-9],al
 0049F130    cmp         byte ptr [ebp-9],0
>0049F134    jne         0049F144
 0049F136    call        ThemeServices
 0049F13B    call        TThemeServices.GetThemesEnabled
 0049F140    test        al,al
>0049F142    je          0049F165
 0049F144    mov         eax,dword ptr [ebp-4]
 0049F147    mov         byte ptr [eax+181],0;TSpeedButton.FMouseInControl:Boolean
 0049F14E    mov         eax,dword ptr [ebp-4]
 0049F151    mov         edx,dword ptr [eax]
 0049F153    call        dword ptr [edx+50];TImage.GetEnabled
 0049F156    test        al,al
>0049F158    je          0049F165
 0049F15A    mov         eax,dword ptr [ebp-4]
 0049F15D    mov         edx,dword ptr [eax]
 0049F15F    call        dword ptr [edx+80];TSpeedButton.sub_004CB7F8
 0049F165    mov         esp,ebp
 0049F167    pop         ebp
 0049F168    ret
end;*}

//0049F16C
{*procedure sub_0049F16C(?:?; ?:?; ?:?);
begin
 0049F16C    push        ebp
 0049F16D    mov         ebp,esp
 0049F16F    add         esp,0FFFFFFE4
 0049F172    mov         dword ptr [ebp-8],edx
 0049F175    mov         dword ptr [ebp-4],eax
 0049F178    mov         eax,dword ptr [ebp+8]
 0049F17B    mov         eax,dword ptr [eax-4]
 0049F17E    call        TSpeedButton.GetGlyph
 0049F183    mov         dword ptr [ebp-0C],eax
 0049F186    mov         eax,dword ptr [ebp-4]
 0049F189    mov         edx,dword ptr [eax+34]
 0049F18C    mov         eax,dword ptr [ebp-0C]
 0049F18F    mov         ecx,dword ptr [eax]
 0049F191    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 0049F194    mov         eax,dword ptr [ebp-4]
 0049F197    mov         edx,dword ptr [eax+30]
 0049F19A    mov         eax,dword ptr [ebp-0C]
 0049F19D    mov         ecx,dword ptr [eax]
 0049F19F    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 0049F1A2    mov         eax,dword ptr [ebp-0C]
 0049F1A5    call        TBitmap.GetCanvas
 0049F1AA    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0049F1AD    mov         edx,0FF00FF
 0049F1B2    call        TBrush.SetColor
 0049F1B7    mov         eax,dword ptr [ebp-0C]
 0049F1BA    mov         edx,dword ptr [eax]
 0049F1BC    call        dword ptr [edx+20];TBitmap.sub_0048D614
 0049F1BF    push        eax
 0049F1C0    lea         eax,[ebp-1C]
 0049F1C3    push        eax
 0049F1C4    mov         eax,dword ptr [ebp-0C]
 0049F1C7    mov         edx,dword ptr [eax]
 0049F1C9    call        dword ptr [edx+2C];TBitmap.sub_0048D878
 0049F1CC    mov         ecx,eax
 0049F1CE    xor         edx,edx
 0049F1D0    xor         eax,eax
 0049F1D2    call        Rect
 0049F1D7    lea         eax,[ebp-1C]
 0049F1DA    push        eax
 0049F1DB    mov         eax,dword ptr [ebp-0C]
 0049F1DE    call        TBitmap.GetCanvas
 0049F1E3    pop         edx
 0049F1E4    call        TCanvas.FillRect
 0049F1E9    push        0
 0049F1EB    mov         eax,dword ptr [ebp-8]
 0049F1EE    push        eax
 0049F1EF    push        1
 0049F1F1    mov         eax,dword ptr [ebp-0C]
 0049F1F4    call        TBitmap.GetCanvas
 0049F1F9    mov         edx,eax
 0049F1FB    xor         ecx,ecx
 0049F1FD    mov         eax,dword ptr [ebp-4]
 0049F200    call        004DD138
 0049F205    mov         esp,ebp
 0049F207    pop         ebp
 0049F208    ret
end;*}

//0049F20C
{*procedure TSpeedButton.sub_0049F20C(?:?; ?:?);
begin
 0049F20C    push        ebp
 0049F20D    mov         ebp,esp
 0049F20F    add         esp,0FFFFFFF4
 0049F212    mov         byte ptr [ebp-9],cl
 0049F215    mov         dword ptr [ebp-8],edx
 0049F218    mov         dword ptr [ebp-4],eax
 0049F21B    mov         cl,byte ptr [ebp-9]
 0049F21E    mov         edx,dword ptr [ebp-8]
 0049F221    mov         eax,dword ptr [ebp-4]
 0049F224    call        TControl.sub_004CD9E4
 0049F229    mov         eax,dword ptr [ebp-8]
 0049F22C    mov         edx,dword ptr ds:[4DA408];TCustomAction
 0049F232    call        @IsClass
 0049F237    test        al,al
>0049F239    je          0049F2C3
 0049F23F    cmp         byte ptr [ebp-9],0
>0049F243    jne         0049F251
 0049F245    mov         eax,dword ptr [ebp-4]
 0049F248    cmp         dword ptr [eax+168],0;TSpeedButton.GroupIndex:Integer
>0049F24F    jne         0049F25F
 0049F251    mov         eax,dword ptr [ebp-8]
 0049F254    mov         edx,dword ptr [eax+6C]
 0049F257    mov         eax,dword ptr [ebp-4]
 0049F25A    call        TSpeedButton.SetGroupIndex
 0049F25F    mov         eax,dword ptr [ebp-4]
 0049F262    call        TSpeedButton.GetGlyph
 0049F267    mov         edx,dword ptr [eax]
 0049F269    call        dword ptr [edx+1C];TBitmap.sub_0048D4D4
 0049F26C    test        al,al
>0049F26E    je          0049F2C3
 0049F270    mov         eax,dword ptr [ebp-8]
 0049F273    cmp         dword ptr [eax+5C],0
>0049F277    je          0049F2C3
 0049F279    mov         eax,dword ptr [ebp-8]
 0049F27C    mov         eax,dword ptr [eax+5C]
 0049F27F    cmp         dword ptr [eax+38],0
>0049F283    je          0049F2C3
 0049F285    mov         eax,dword ptr [ebp-8]
 0049F288    cmp         dword ptr [eax+80],0
>0049F28F    jl          0049F2C3
 0049F291    mov         eax,dword ptr [ebp-8]
 0049F294    mov         eax,dword ptr [eax+5C]
 0049F297    mov         eax,dword ptr [eax+38]
 0049F29A    call        004DCB64
 0049F29F    mov         edx,dword ptr [ebp-8]
 0049F2A2    cmp         eax,dword ptr [edx+80]
>0049F2A8    jle         0049F2C3
 0049F2AA    push        ebp
 0049F2AB    mov         eax,dword ptr [ebp-8]
 0049F2AE    mov         edx,dword ptr [eax+80]
 0049F2B4    mov         eax,dword ptr [ebp-8]
 0049F2B7    mov         eax,dword ptr [eax+5C]
 0049F2BA    mov         eax,dword ptr [eax+38]
 0049F2BD    call        0049F16C
 0049F2C2    pop         ecx
 0049F2C3    mov         esp,ebp
 0049F2C5    pop         ebp
 0049F2C6    ret
end;*}

//0049F2C8
procedure sub_0049F2C8;
begin
{*
 0049F2C8    push        ebp
 0049F2C9    mov         ebp,esp
 0049F2CB    push        ecx
 0049F2CC    mov         byte ptr [ebp-1],0
 0049F2D0    xor         eax,eax
 0049F2D2    mov         al,byte ptr [ebp-1]
 0049F2D5    mov         eax,dword ptr [eax*4+55DD24];gvar_0055DD24
 0049F2DC    call        TObject.Free
 0049F2E1    inc         byte ptr [ebp-1]
 0049F2E4    cmp         byte ptr [ebp-1],0B
>0049F2E8    jne         0049F2D0
 0049F2EA    pop         ecx
 0049F2EB    pop         ebp
 0049F2EC    ret
*}
end;

//0049F2F0
procedure _NF__383;
begin
{*
 0049F2F0    or          al,byte ptr [eax]
 0049F2F2    add         byte ptr [eax],al
 0049F2F4    push        40005413
 0049F2F9    mov         bl,55
 0049F2FB    add         byte ptr [eax],al
 0049F2FD    add         byte ptr [eax],al
 0049F2FF    add         byte ptr [ebx+edx+54],ah
 0049F303    add         byte ptr [ecx+esi*4+55],al
 0049F30A    add         byte ptr [eax],al
 0049F30C    pushad
 0049F30D    adc         edx,dword ptr [eax+eax-8]
 0049F311    mov         al,55
 0049F313    add         byte ptr [eax],al
 0049F315    add         byte ptr [eax],al
 0049F317    add         byte ptr [ebx+edx+54],bl
 0049F31B    add         byte ptr [eax-4E],bl
 0049F31E    push        ebp
 0049F31F    add         byte ptr [eax],al
 0049F321    add         byte ptr [eax],al
 0049F323    add         byte ptr [eax+13],bl
 0049F326    push        esp
 0049F327    add         byte ptr [eax+55B3],cl
 0049F32D    add         byte ptr [eax],al
 0049F32F    add         byte ptr [ebx+edx+54],dl
 0049F333    add         byte ptr [eax+55B6],dh
 0049F339    add         byte ptr [eax],al
 0049F33B    add         byte ptr [eax+13],dl
 0049F33E    push        esp
 0049F33F    add         ah,dl
 0049F341    mov         bl,55
 0049F343    add         byte ptr [eax],al
 0049F345    add         byte ptr [eax],al
 0049F347    add         byte ptr [ebx+edx+54],cl
 0049F34B    add         byte ptr [esp+esi*4+55],ah
 0049F352    add         byte ptr [eax],al
 0049F354    dec         eax
 0049F355    adc         edx,dword ptr [eax+eax-80]
 0049F359    mov         dh,55
 0049F35B    add         byte ptr [eax],al
 0049F35D    add         byte ptr [eax],al
 0049F35F    add         byte ptr [ebx+edx+54],al
 0049F363    add         byte ptr [ecx+esi*4],ch
 0049F366    push        ebp
 0049F367    add         byte ptr [eax],al
 0049F369    add         byte ptr [eax],al
 0049F36B    add         byte ptr [ebp-75],dl
*}
end;

Initialization
//0049F3A4
{*
 0049F3A4    sub         dword ptr ds:[55DD20],1
>0049F3AB    jae         0049F3C8
 0049F3AD    mov         eax,49F2F0;_NF__383
 0049F3B2    call        @InitImports
 0049F3B7    mov         eax,55DD24;gvar_0055DD24
 0049F3BC    xor         ecx,ecx
 0049F3BE    mov         edx,2C
 0049F3C3    call        @FillChar
 0049F3C8    ret
*}
Finalization
end.