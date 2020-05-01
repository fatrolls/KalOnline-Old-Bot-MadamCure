//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ToolWin;

interface

uses
  SysUtils, Classes;

type
  TEdgeBorder = (ebLeft, ebTop, ebRight, ebBottom);
  TEdgeBorders = set of TEdgeBorder;
  TEdgeStyle = (esNone, esRaised, esLowered);
  TToolWindow = class(TWinControl)
  public
    FEdgeBorders:TEdgeBorders;//f208
    FEdgeInner:TEdgeStyle;//f209
    FEdgeOuter:TEdgeStyle;//f20A
    constructor Create(AOwner:TComponent); virtual;//v2C//00493314
    //procedure vC8(?:?); virtual;//vC8//00493420
    //procedure WMNCCalcSize(?:?); message WM_NCCALCSIZE;//00493534
    //procedure WMNCPaint(?:?); message WM_NCPAINT;//004935F8
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//00493680
    //procedure CMBorderChanged(?:?); message CM_BORDERCHANGED;//0049365C
  end;
  TToolDockObject = class(TDragDockObject)
  public
    constructor Create; virtual;//v28//004936B8
    //procedure v2C(?:?); virtual;//v2C//00493748
    procedure v30; virtual;//v30//00493764
    procedure v34; virtual;//v34//0049384C
  end;
  TToolDockForm = class(TCustomDockForm)
  public
    FPrevWidth:Integer;//f2F8
    FPrevHeight:Integer;//f2FC
    FSizingAdjustH:Integer;//f300
    FSizingAdjustW:Integer;//f304
    FSizingOrientation:TSizingOrientation;//f308
    FUpdatingSize:Boolean;//f309
    constructor Create(AOwner:TComponent); virtual;//v2C//00493870
    //function v30(?:?; ?:?):?; virtual;//v30//004938EC
    //procedure v98(?:?); virtual;//v98//004938C4
    procedure WMSize(Message:TWMSize); message WM_SIZE;//00493D00
    //procedure WMNCCreate(?:?); message WM_NCCREATE;//00493B4C
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//00493B78
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//00493CAC
    //procedure WMSysCommand(?:?); message WM_SYSCOMMAND;//00493D60
    //procedure sub_00493A88(?:?; ?:?); dynamic;//00493A88
  end;
    constructor Create(AOwner:TComponent);//00493314
    procedure SetEdgeBorders(Value:TEdgeBorders);//00493384
    procedure SetEdgeInner(Value:TEdgeStyle);//004933B8
    procedure SetEdgeOuter(Value:TEdgeStyle);//004933EC
    //procedure sub_00493420(?:?);//00493420
    //procedure WMNCCalcSize(?:?);//00493534
    //procedure WMNCPaint(?:?);//004935F8
    //procedure CMBorderChanged(?:?);//0049365C
    //procedure CMCtl3DChanged(?:?);//00493680
    constructor Create;//004936B8
    //procedure sub_00493748(?:?);//00493748
    procedure sub_00493764;//00493764
    procedure sub_0049384C;//0049384C
    constructor Create(AOwner:TComponent);//00493870
    //procedure sub_004938C4(?:?);//004938C4
    //function sub_004938EC(?:?; ?:?):?;//004938EC
    //procedure sub_00493A88(?:?; ?:?);//00493A88
    //procedure sub_00493AC0(?:?);//00493AC0
    //procedure WMNCCreate(?:?);//00493B4C
    //procedure WMNCHitTest(?:?);//00493B78
    //procedure WMNCLButtonDown(?:?);//00493CAC
    procedure WMSize(Message:TWMSize);//00493D00
    //procedure WMSysCommand(?:?);//00493D60

implementation

//00493314
constructor TToolWindow.Create(AOwner:TComponent);
begin
{*
 00493314    push        ebp
 00493315    mov         ebp,esp
 00493317    add         esp,0FFFFFFF4
 0049331A    test        dl,dl
>0049331C    je          00493326
 0049331E    add         esp,0FFFFFFF0
 00493321    call        @ClassCreate
 00493326    mov         dword ptr [ebp-0C],ecx
 00493329    mov         byte ptr [ebp-5],dl
 0049332C    mov         dword ptr [ebp-4],eax
 0049332F    mov         ecx,dword ptr [ebp-0C]
 00493332    xor         edx,edx
 00493334    mov         eax,dword ptr [ebp-4]
 00493337    call        TWinControl.Create
 0049333C    mov         eax,dword ptr [ebp-4]
 0049333F    mov         dl,byte ptr ds:[493380];0xF gvar_00493380
 00493345    mov         byte ptr [eax+208],dl;TToolWindow.FEdgeBorders:TEdgeBorders
 0049334B    mov         eax,dword ptr [ebp-4]
 0049334E    mov         byte ptr [eax+209],1;TToolWindow.FEdgeInner:TEdgeStyle
 00493355    mov         eax,dword ptr [ebp-4]
 00493358    mov         byte ptr [eax+20A],2;TToolWindow.FEdgeOuter:TEdgeStyle
 0049335F    mov         eax,dword ptr [ebp-4]
 00493362    cmp         byte ptr [ebp-5],0
>00493366    je          00493377
 00493368    call        @AfterConstruction
 0049336D    pop         dword ptr fs:[0]
 00493374    add         esp,0C
 00493377    mov         eax,dword ptr [ebp-4]
 0049337A    mov         esp,ebp
 0049337C    pop         ebp
 0049337D    ret
*}
end;

//00493384
procedure TActionToolBar.SetEdgeBorders(Value:TEdgeBorders);
begin
{*
 00493384    push        ebp
 00493385    mov         ebp,esp
 00493387    add         esp,0FFFFFFF8
 0049338A    mov         byte ptr [ebp-5],dl
 0049338D    mov         dword ptr [ebp-4],eax
 00493390    mov         al,byte ptr [ebp-5]
 00493393    mov         edx,dword ptr [ebp-4]
 00493396    cmp         al,byte ptr [edx+208];TActionToolBar.FEdgeBorders:TEdgeBorders
>0049339C    je          004933B2
 0049339E    mov         al,byte ptr [ebp-5]
 004933A1    mov         edx,dword ptr [ebp-4]
 004933A4    mov         byte ptr [edx+208],al;TActionToolBar.FEdgeBorders:TEdgeBorders
 004933AA    mov         eax,dword ptr [ebp-4]
 004933AD    call        TWinControl.RecreateWnd
 004933B2    pop         ecx
 004933B3    pop         ecx
 004933B4    pop         ebp
 004933B5    ret
*}
end;

//004933B8
procedure TActionToolBar.SetEdgeInner(Value:TEdgeStyle);
begin
{*
 004933B8    push        ebp
 004933B9    mov         ebp,esp
 004933BB    add         esp,0FFFFFFF8
 004933BE    mov         byte ptr [ebp-5],dl
 004933C1    mov         dword ptr [ebp-4],eax
 004933C4    mov         eax,dword ptr [ebp-4]
 004933C7    mov         al,byte ptr [eax+209];TActionToolBar.FEdgeInner:TEdgeStyle
 004933CD    cmp         al,byte ptr [ebp-5]
>004933D0    je          004933E6
 004933D2    mov         al,byte ptr [ebp-5]
 004933D5    mov         edx,dword ptr [ebp-4]
 004933D8    mov         byte ptr [edx+209],al;TActionToolBar.FEdgeInner:TEdgeStyle
 004933DE    mov         eax,dword ptr [ebp-4]
 004933E1    call        TWinControl.RecreateWnd
 004933E6    pop         ecx
 004933E7    pop         ecx
 004933E8    pop         ebp
 004933E9    ret
*}
end;

//004933EC
procedure TActionToolBar.SetEdgeOuter(Value:TEdgeStyle);
begin
{*
 004933EC    push        ebp
 004933ED    mov         ebp,esp
 004933EF    add         esp,0FFFFFFF8
 004933F2    mov         byte ptr [ebp-5],dl
 004933F5    mov         dword ptr [ebp-4],eax
 004933F8    mov         eax,dword ptr [ebp-4]
 004933FB    mov         al,byte ptr [eax+20A];TActionToolBar.FEdgeOuter:TEdgeStyle
 00493401    cmp         al,byte ptr [ebp-5]
>00493404    je          0049341A
 00493406    mov         al,byte ptr [ebp-5]
 00493409    mov         edx,dword ptr [ebp-4]
 0049340C    mov         byte ptr [edx+20A],al;TActionToolBar.FEdgeOuter:TEdgeStyle
 00493412    mov         eax,dword ptr [ebp-4]
 00493415    call        TWinControl.RecreateWnd
 0049341A    pop         ecx
 0049341B    pop         ecx
 0049341C    pop         ebp
 0049341D    ret
*}
end;

//00493420
{*procedure sub_00493420(?:?);
begin
 00493420    push        ebp
 00493421    mov         ebp,esp
 00493423    add         esp,0FFFFFFD8
 00493426    mov         dword ptr [ebp-8],edx
 00493429    mov         dword ptr [ebp-4],eax
 0049342C    lea         eax,[ebp-18]
 0049342F    push        eax
 00493430    mov         eax,dword ptr [ebp-4]
 00493433    call        TWinControl.GetHandle
 00493438    push        eax
 00493439    call        user32.GetClientRect
 0049343E    lea         eax,[ebp-28]
 00493441    push        eax
 00493442    mov         eax,dword ptr [ebp-4]
 00493445    call        TWinControl.GetHandle
 0049344A    push        eax
 0049344B    call        user32.GetWindowRect
 00493450    push        2
 00493452    lea         eax,[ebp-28]
 00493455    push        eax
 00493456    mov         eax,dword ptr [ebp-4]
 00493459    call        TWinControl.GetHandle
 0049345E    push        eax
 0049345F    push        0
 00493461    call        user32.MapWindowPoints
 00493466    mov         eax,dword ptr [ebp-24]
 00493469    neg         eax
 0049346B    push        eax
 0049346C    mov         eax,dword ptr [ebp-28]
 0049346F    neg         eax
 00493471    push        eax
 00493472    lea         eax,[ebp-18]
 00493475    push        eax
 00493476    call        user32.OffsetRect
 0049347B    mov         eax,dword ptr [ebp-0C]
 0049347E    push        eax
 0049347F    mov         eax,dword ptr [ebp-10]
 00493482    push        eax
 00493483    mov         eax,dword ptr [ebp-14]
 00493486    push        eax
 00493487    mov         eax,dword ptr [ebp-18]
 0049348A    push        eax
 0049348B    mov         eax,dword ptr [ebp-8]
 0049348E    push        eax
 0049348F    call        gdi32.ExcludeClipRect
 00493494    mov         eax,dword ptr [ebp-24]
 00493497    neg         eax
 00493499    push        eax
 0049349A    mov         eax,dword ptr [ebp-28]
 0049349D    neg         eax
 0049349F    push        eax
 004934A0    lea         eax,[ebp-28]
 004934A3    push        eax
 004934A4    call        user32.OffsetRect
 004934A9    mov         eax,dword ptr [ebp-4]
 004934AC    movzx       eax,byte ptr [eax+208];TToolWindow.FEdgeBorders:TEdgeBorders
 004934B3    mov         edx,dword ptr [ebp-4]
 004934B6    movzx       edx,byte ptr [edx+1A5];TToolWindow.FCtl3D:Boolean
 004934BD    or          eax,dword ptr [edx*4+5410F8]
 004934C4    or          eax,2000
 004934C9    push        eax
 004934CA    mov         eax,dword ptr [ebp-4]
 004934CD    movzx       eax,byte ptr [eax+209];TToolWindow.FEdgeInner:TEdgeStyle
 004934D4    mov         eax,dword ptr [eax*4+5410E0]
 004934DB    mov         edx,dword ptr [ebp-4]
 004934DE    movzx       edx,byte ptr [edx+20A];TToolWindow.FEdgeOuter:TEdgeStyle
 004934E5    or          eax,dword ptr [edx*4+5410EC]
 004934EC    push        eax
 004934ED    lea         eax,[ebp-28]
 004934F0    push        eax
 004934F1    mov         eax,dword ptr [ebp-8]
 004934F4    push        eax
 004934F5    call        user32.DrawEdge
 004934FA    mov         eax,dword ptr [ebp-1C]
 004934FD    push        eax
 004934FE    mov         eax,dword ptr [ebp-20]
 00493501    push        eax
 00493502    mov         eax,dword ptr [ebp-24]
 00493505    push        eax
 00493506    mov         eax,dword ptr [ebp-28]
 00493509    push        eax
 0049350A    mov         eax,dword ptr [ebp-8]
 0049350D    push        eax
 0049350E    call        gdi32.IntersectClipRect
 00493513    mov         eax,dword ptr [ebp-4]
 00493516    mov         eax,dword ptr [eax+170];TToolWindow.FBrush:TBrush
 0049351C    call        TBrush.GetHandle
 00493521    push        eax
 00493522    lea         eax,[ebp-28]
 00493525    push        eax
 00493526    mov         eax,dword ptr [ebp-8]
 00493529    push        eax
 0049352A    call        user32.FillRect
 0049352F    mov         esp,ebp
 00493531    pop         ebp
 00493532    ret
end;*}

//00493534
{*procedure TToolWindow.WMNCCalcSize(?:?);
begin
 00493534    push        ebp
 00493535    mov         ebp,esp
 00493537    add         esp,0FFFFFFEC
 0049353A    mov         dword ptr [ebp-8],edx
 0049353D    mov         dword ptr [ebp-4],eax
 00493540    mov         eax,dword ptr [ebp-8]
 00493543    mov         eax,dword ptr [eax+8]
 00493546    mov         dword ptr [ebp-10],eax
 00493549    mov         eax,dword ptr [ebp-4]
 0049354C    mov         eax,dword ptr [eax+16C];TToolWindow.FBorderWidth:TBorderWidth
 00493552    neg         eax
 00493554    push        eax
 00493555    mov         eax,dword ptr [ebp-4]
 00493558    mov         eax,dword ptr [eax+16C];TToolWindow.FBorderWidth:TBorderWidth
 0049355E    neg         eax
 00493560    push        eax
 00493561    mov         eax,dword ptr [ebp-10]
 00493564    push        eax
 00493565    call        user32.InflateRect
 0049356A    xor         eax,eax
 0049356C    mov         dword ptr [ebp-0C],eax
 0049356F    mov         eax,dword ptr [ebp-4]
 00493572    cmp         byte ptr [eax+209],0;TToolWindow.FEdgeInner:TEdgeStyle
>00493579    je          0049357E
 0049357B    inc         dword ptr [ebp-0C]
 0049357E    mov         eax,dword ptr [ebp-4]
 00493581    cmp         byte ptr [eax+20A],0;TToolWindow.FEdgeOuter:TEdgeStyle
>00493588    je          0049358D
 0049358A    inc         dword ptr [ebp-0C]
 0049358D    mov         eax,dword ptr [ebp-10]
 00493590    mov         dword ptr [ebp-14],eax
 00493593    mov         eax,dword ptr [ebp-4]
 00493596    test        byte ptr [eax+208],1;TToolWindow.FEdgeBorders:TEdgeBorders
>0049359D    je          004935A7
 0049359F    mov         eax,dword ptr [ebp-14]
 004935A2    mov         edx,dword ptr [ebp-0C]
 004935A5    add         dword ptr [eax],edx
 004935A7    mov         eax,dword ptr [ebp-4]
 004935AA    test        byte ptr [eax+208],2;TToolWindow.FEdgeBorders:TEdgeBorders
>004935B1    je          004935BC
 004935B3    mov         eax,dword ptr [ebp-14]
 004935B6    mov         edx,dword ptr [ebp-0C]
 004935B9    add         dword ptr [eax+4],edx
 004935BC    mov         eax,dword ptr [ebp-4]
 004935BF    test        byte ptr [eax+208],4;TToolWindow.FEdgeBorders:TEdgeBorders
>004935C6    je          004935D1
 004935C8    mov         eax,dword ptr [ebp-14]
 004935CB    mov         edx,dword ptr [ebp-0C]
 004935CE    sub         dword ptr [eax+8],edx
 004935D1    mov         eax,dword ptr [ebp-4]
 004935D4    test        byte ptr [eax+208],8;TToolWindow.FEdgeBorders:TEdgeBorders
>004935DB    je          004935E6
 004935DD    mov         eax,dword ptr [ebp-14]
 004935E0    mov         edx,dword ptr [ebp-0C]
 004935E3    sub         dword ptr [eax+0C],edx
 004935E6    mov         edx,dword ptr [ebp-8]
 004935E9    mov         eax,dword ptr [ebp-4]
 004935EC    call        TWinControl.WMNCCalcSize
 004935F1    mov         esp,ebp
 004935F3    pop         ebp
 004935F4    ret
end;*}

//004935F8
{*procedure TToolWindow.WMNCPaint(?:?);
begin
 004935F8    push        ebp
 004935F9    mov         ebp,esp
 004935FB    add         esp,0FFFFFFF4
 004935FE    mov         dword ptr [ebp-0C],edx
 00493601    mov         dword ptr [ebp-4],eax
 00493604    mov         eax,dword ptr [ebp-4]
 00493607    call        TWinControl.GetHandle
 0049360C    push        eax
 0049360D    call        user32.GetWindowDC
 00493612    mov         dword ptr [ebp-8],eax
 00493615    xor         eax,eax
 00493617    push        ebp
 00493618    push        493651
 0049361D    push        dword ptr fs:[eax]
 00493620    mov         dword ptr fs:[eax],esp
 00493623    mov         edx,dword ptr [ebp-8]
 00493626    mov         eax,dword ptr [ebp-4]
 00493629    mov         ecx,dword ptr [eax]
 0049362B    call        dword ptr [ecx+0C8];TToolWindow.sub_00493420
 00493631    xor         eax,eax
 00493633    pop         edx
 00493634    pop         ecx
 00493635    pop         ecx
 00493636    mov         dword ptr fs:[eax],edx
 00493639    push        493658
 0049363E    mov         eax,dword ptr [ebp-8]
 00493641    push        eax
 00493642    mov         eax,dword ptr [ebp-4]
 00493645    call        TWinControl.GetHandle
 0049364A    push        eax
 0049364B    call        user32.ReleaseDC
 00493650    ret
>00493651    jmp         @HandleFinally
>00493656    jmp         0049363E
 00493658    mov         esp,ebp
 0049365A    pop         ebp
 0049365B    ret
end;*}

//0049365C
{*procedure TToolWindow.CMBorderChanged(?:?);
begin
 0049365C    push        ebp
 0049365D    mov         ebp,esp
 0049365F    add         esp,0FFFFFFF8
 00493662    mov         dword ptr [ebp-8],edx
 00493665    mov         dword ptr [ebp-4],eax
 00493668    mov         eax,dword ptr [ebp-4]
 0049366B    call        TWinControl.RecreateWnd
 00493670    mov         edx,dword ptr [ebp-8]
 00493673    mov         eax,dword ptr [ebp-4]
 00493676    call        TWinControl.CMBorderChanged
 0049367B    pop         ecx
 0049367C    pop         ecx
 0049367D    pop         ebp
 0049367E    ret
end;*}

//00493680
{*procedure TToolWindow.CMCtl3DChanged(?:?);
begin
 00493680    push        ebp
 00493681    mov         ebp,esp
 00493683    add         esp,0FFFFFFF8
 00493686    mov         dword ptr [ebp-8],edx
 00493689    mov         dword ptr [ebp-4],eax
 0049368C    mov         edx,dword ptr [ebp-8]
 0049368F    mov         eax,dword ptr [ebp-4]
 00493692    call        TWinControl.CMCtl3DChanged
 00493697    mov         al,[004936B4];0x0 gvar_004936B4
 0049369C    mov         edx,dword ptr [ebp-4]
 0049369F    cmp         al,byte ptr [edx+208];TToolWindow.FEdgeBorders:TEdgeBorders
>004936A5    je          004936AF
 004936A7    mov         eax,dword ptr [ebp-4]
 004936AA    call        TWinControl.RecreateWnd
 004936AF    pop         ecx
 004936B0    pop         ecx
 004936B1    pop         ebp
 004936B2    ret
end;*}

//004936B8
constructor TToolDockObject.Create;
begin
{*
 004936B8    push        ebp
 004936B9    mov         ebp,esp
 004936BB    add         esp,0FFFFFFDC
 004936BE    test        dl,dl
>004936C0    je          004936CA
 004936C2    add         esp,0FFFFFFF0
 004936C5    call        @ClassCreate
 004936CA    mov         dword ptr [ebp-0C],ecx
 004936CD    mov         byte ptr [ebp-5],dl
 004936D0    mov         dword ptr [ebp-4],eax
 004936D3    mov         ecx,dword ptr [ebp-0C]
 004936D6    xor         edx,edx
 004936D8    mov         eax,dword ptr [ebp-4]
 004936DB    call        TDragDockObject.Create
 004936E0    mov         eax,dword ptr [ebp-0C]
 004936E3    mov         edx,dword ptr [eax]
 004936E5    call        dword ptr [edx+54]
 004936E8    test        al,al
>004936EA    jne         00493728
 004936EC    lea         eax,[ebp-14]
 004936EF    push        eax
 004936F0    call        user32.GetCursorPos
 004936F5    mov         eax,dword ptr [ebp-0C]
 004936F8    call        004CAEC8
 004936FD    push        eax
 004936FE    lea         eax,[ebp-24]
 00493701    push        eax
 00493702    mov         eax,dword ptr [ebp-0C]
 00493705    call        004CAEFC
 0049370A    mov         ecx,eax
 0049370C    mov         edx,dword ptr [ebp-10]
 0049370F    sub         edx,0A
 00493712    mov         eax,dword ptr [ebp-14]
 00493715    sub         eax,0A
 00493718    call        Bounds
 0049371D    lea         edx,[ebp-24]
 00493720    mov         eax,dword ptr [ebp-0C]
 00493723    call        004CC414
 00493728    mov         eax,dword ptr [ebp-4]
 0049372B    cmp         byte ptr [ebp-5],0
>0049372F    je          00493740
 00493731    call        @AfterConstruction
 00493736    pop         dword ptr fs:[0]
 0049373D    add         esp,0C
 00493740    mov         eax,dword ptr [ebp-4]
 00493743    mov         esp,ebp
 00493745    pop         ebp
 00493746    ret
*}
end;

//00493748
{*procedure sub_00493748(?:?);
begin
 00493748    push        ebp
 00493749    mov         ebp,esp
 0049374B    add         esp,0FFFFFFEC
 0049374E    push        esi
 0049374F    push        edi
 00493750    mov         esi,edx
 00493752    lea         edi,[ebp-14]
 00493755    movs        dword ptr [edi],dword ptr [esi]
 00493756    movs        dword ptr [edi],dword ptr [esi]
 00493757    movs        dword ptr [edi],dword ptr [esi]
 00493758    movs        dword ptr [edi],dword ptr [esi]
 00493759    mov         dword ptr [ebp-4],eax
 0049375C    pop         edi
 0049375D    pop         esi
 0049375E    mov         esp,ebp
 00493760    pop         ebp
 00493761    ret
end;*}

//00493764
procedure sub_00493764;
begin
{*
 00493764    push        ebp
 00493765    mov         ebp,esp
 00493767    add         esp,0FFFFFFE0
 0049376A    push        ebx
 0049376B    mov         dword ptr [ebp-4],eax
 0049376E    mov         eax,dword ptr [ebp-4]
 00493771    mov         eax,dword ptr [eax+38];TToolDockObject...............................FControl:TControl
 00493774    mov         edx,dword ptr [eax]
 00493776    call        dword ptr [edx+54];TControl.sub_004CDEBC
 00493779    test        al,al
>0049377B    jne         0049378A
 0049377D    mov         eax,dword ptr [ebp-4]
 00493780    call        004C7D2C
>00493785    jmp         00493846
 0049378A    mov         eax,dword ptr [ebp-4]
 0049378D    mov         eax,dword ptr [eax+38];TToolDockObject................................FControl:TControl
 00493790    call        004E7ED8
 00493795    mov         dword ptr [ebp-10],eax
 00493798    cmp         dword ptr [ebp-10],0
>0049379C    je          00493846
 004937A2    lea         ecx,[ebp-0C]
 004937A5    mov         eax,dword ptr [ebp-4]
 004937A8    mov         eax,dword ptr [eax+38];TToolDockObject.................................FControl:TControl
 004937AB    mov         edx,dword ptr [eax+44];TControl.Top:Integer
 004937AE    mov         eax,dword ptr [ebp-4]
 004937B1    mov         eax,dword ptr [eax+38];TToolDockObject..................................FControl:TContro...
 004937B4    mov         eax,dword ptr [eax+40];TControl.Left:Integer
 004937B7    call        Point
 004937BC    mov         eax,dword ptr [ebp-4]
 004937BF    mov         eax,dword ptr [eax+38];TToolDockObject...................................FControl:TContr...
 004937C2    cmp         eax,dword ptr [ebp-10]
>004937C5    je          004937DD
 004937C7    push        1
 004937C9    lea         eax,[ebp-0C]
 004937CC    push        eax
 004937CD    push        0
 004937CF    mov         eax,dword ptr [ebp-10]
 004937D2    call        TWinControl.GetHandle
 004937D7    push        eax
 004937D8    call        user32.MapWindowPoints
 004937DD    mov         eax,dword ptr [ebp-4]
 004937E0    mov         eax,dword ptr [eax+50]
 004937E3    mov         edx,dword ptr [ebp-4]
 004937E6    sub         eax,dword ptr [edx+48]
 004937E9    mov         edx,dword ptr [ebp-10]
 004937EC    add         eax,dword ptr [edx+4C]
 004937EF    mov         edx,dword ptr [ebp-4]
 004937F2    mov         edx,dword ptr [edx+38];TToolDockObject....................................FControl:TCont...
 004937F5    sub         eax,dword ptr [edx+4C]
 004937F8    push        eax
 004937F9    lea         eax,[ebp-20]
 004937FC    push        eax
 004937FD    mov         eax,dword ptr [ebp-4]
 00493800    mov         ecx,dword ptr [eax+4C];TToolDockObject.FDockRect.Right:Longint
 00493803    mov         eax,dword ptr [ebp-4]
 00493806    sub         ecx,dword ptr [eax+44]
 00493809    mov         eax,dword ptr [ebp-10]
 0049380C    add         ecx,dword ptr [eax+48]
 0049380F    mov         eax,dword ptr [ebp-4]
 00493812    mov         eax,dword ptr [eax+38];TToolDockObject.....................................FControl:TCon...
 00493815    sub         ecx,dword ptr [eax+48]
 00493818    mov         eax,dword ptr [ebp-4]
 0049381B    mov         edx,dword ptr [eax+48];TToolDockObject.FDockRect.Top:Longint
 0049381E    mov         eax,dword ptr [ebp-10]
 00493821    add         edx,dword ptr [eax+44]
 00493824    sub         edx,dword ptr [ebp-8]
 00493827    mov         eax,dword ptr [ebp-4]
 0049382A    mov         eax,dword ptr [eax+44];TToolDockObject.FDockRect:TRect
 0049382D    mov         ebx,dword ptr [ebp-10]
 00493830    add         eax,dword ptr [ebx+40]
 00493833    sub         eax,dword ptr [ebp-0C]
 00493836    call        Bounds
 0049383B    lea         edx,[ebp-20]
 0049383E    mov         eax,dword ptr [ebp-10]
 00493841    call        004CA6F8
 00493846    pop         ebx
 00493847    mov         esp,ebp
 00493849    pop         ebp
 0049384A    ret
*}
end;

//0049384C
procedure sub_0049384C;
begin
{*
 0049384C    push        ebp
 0049384D    mov         ebp,esp
 0049384F    push        ecx
 00493850    mov         dword ptr [ebp-4],eax
 00493853    mov         eax,dword ptr [ebp-4]
 00493856    mov         eax,dword ptr [eax+38];TToolDockObject......................................FControl:TCo...
 00493859    mov         edx,dword ptr [eax]
 0049385B    call        dword ptr [edx+54];TControl.sub_004CDEBC
 0049385E    test        al,al
>00493860    jne         0049386A
 00493862    mov         eax,dword ptr [ebp-4]
 00493865    call        004C7D4C
 0049386A    pop         ecx
 0049386B    pop         ebp
 0049386C    ret
*}
end;

//00493870
constructor TToolDockForm.Create(AOwner:TComponent);
begin
{*
 00493870    push        ebp
 00493871    mov         ebp,esp
 00493873    add         esp,0FFFFFFF4
 00493876    test        dl,dl
>00493878    je          00493882
 0049387A    add         esp,0FFFFFFF0
 0049387D    call        @ClassCreate
 00493882    mov         dword ptr [ebp-0C],ecx
 00493885    mov         byte ptr [ebp-5],dl
 00493888    mov         dword ptr [ebp-4],eax
 0049388B    mov         ecx,dword ptr [ebp-0C]
 0049388E    xor         edx,edx
 00493890    mov         eax,dword ptr [ebp-4]
 00493893    call        TCustomDockForm.Create
 00493898    mov         edx,1
 0049389D    mov         eax,dword ptr [ebp-4]
 004938A0    call        TTabSheet.SetBorderWidth
 004938A5    mov         eax,dword ptr [ebp-4]
 004938A8    cmp         byte ptr [ebp-5],0
>004938AC    je          004938BD
 004938AE    call        @AfterConstruction
 004938B3    pop         dword ptr fs:[0]
 004938BA    add         esp,0C
 004938BD    mov         eax,dword ptr [ebp-4]
 004938C0    mov         esp,ebp
 004938C2    pop         ebp
 004938C3    ret
*}
end;

//004938C4
{*procedure sub_004938C4(?:?);
begin
 004938C4    push        ebp
 004938C5    mov         ebp,esp
 004938C7    add         esp,0FFFFFFF8
 004938CA    mov         dword ptr [ebp-8],edx
 004938CD    mov         dword ptr [ebp-4],eax
 004938D0    mov         edx,dword ptr [ebp-8]
 004938D3    mov         eax,dword ptr [ebp-4]
 004938D6    call        004EC398
 004938DB    mov         eax,dword ptr [ebp-8]
 004938DE    or          dword ptr [eax+4],80000000
 004938E5    pop         ecx
 004938E6    pop         ecx
 004938E7    pop         ebp
 004938E8    ret
end;*}

//004938EC
{*function sub_004938EC(?:?; ?:?):?;
begin
 004938EC    push        ebp
 004938ED    mov         ebp,esp
 004938EF    add         esp,0FFFFFFDC
 004938F2    push        ebx
 004938F3    mov         dword ptr [ebp-0C],ecx
 004938F6    mov         dword ptr [ebp-8],edx
 004938F9    mov         dword ptr [ebp-4],eax
 004938FC    mov         byte ptr [ebp-0D],1
 00493900    mov         eax,dword ptr [ebp-4]
 00493903    cmp         byte ptr [eax+309],0;TToolDockForm.FUpdatingSize:Boolean
>0049390A    jne         00493A80
 00493910    mov         eax,dword ptr [ebp-4]
 00493913    cmp         byte ptr [eax+308],0;TToolDockForm.FSizingOrientation:TSizingOrientation
>0049391A    je          00493A80
 00493920    mov         eax,dword ptr [ebp-4]
 00493923    call        004D1BE8
 00493928    test        eax,eax
>0049392A    je          00493A80
 00493930    mov         eax,dword ptr [ebp-8]
 00493933    mov         eax,dword ptr [eax]
 00493935    mov         edx,dword ptr [ebp-4]
 00493938    cmp         eax,dword ptr [edx+48];TToolDockForm.Width:Integer
>0049393B    jne         0049394E
 0049393D    mov         eax,dword ptr [ebp-0C]
 00493940    mov         eax,dword ptr [eax]
 00493942    mov         edx,dword ptr [ebp-4]
 00493945    cmp         eax,dword ptr [edx+4C];TToolDockForm.Height:Integer
>00493948    je          00493A80
 0049394E    mov         eax,dword ptr [ebp-8]
 00493951    mov         eax,dword ptr [eax]
 00493953    mov         dword ptr [ebp-14],eax
 00493956    mov         eax,dword ptr [ebp-0C]
 00493959    mov         eax,dword ptr [eax]
 0049395B    mov         dword ptr [ebp-18],eax
 0049395E    mov         eax,dword ptr [ebp-4]
 00493961    mov         al,byte ptr [eax+308];TToolDockForm.FSizingOrientation:TSizingOrientation
 00493967    sub         al,1
>00493969    jb          00493A80
>0049396F    je          00493977
 00493971    dec         al
>00493973    je          00493985
>00493975    jmp         00493993
 00493977    mov         eax,dword ptr [ebp-4]
 0049397A    mov         eax,dword ptr [eax+300];TToolDockForm.FSizingAdjustH:Integer
 00493980    add         dword ptr [ebp-18],eax
>00493983    jmp         0049399C
 00493985    mov         eax,dword ptr [ebp-4]
 00493988    mov         eax,dword ptr [eax+304];TToolDockForm.FSizingAdjustW:Integer
 0049398E    add         dword ptr [ebp-14],eax
>00493991    jmp         0049399C
 00493993    mov         byte ptr [ebp-0D],0
>00493997    jmp         00493A80
 0049399C    mov         eax,dword ptr [ebp-4]
 0049399F    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 004939A2    mov         edx,dword ptr [ebp-4]
 004939A5    mov         dword ptr [edx+2F8],eax;TToolDockForm.FPrevWidth:Integer
 004939AB    mov         eax,dword ptr [ebp-4]
 004939AE    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 004939B1    mov         edx,dword ptr [ebp-4]
 004939B4    mov         dword ptr [edx+2FC],eax;TToolDockForm.FPrevHeight:Integer
 004939BA    xor         edx,edx
 004939BC    mov         eax,dword ptr [ebp-4]
 004939BF    call        004D1C1C
 004939C4    mov         dword ptr [ebp-24],eax
 004939C7    mov         eax,dword ptr [ebp-4]
 004939CA    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 004939CD    mov         edx,dword ptr [ebp-24]
 004939D0    sub         eax,dword ptr [edx+48]
 004939D3    mov         dword ptr [ebp-1C],eax
 004939D6    mov         eax,dword ptr [ebp-4]
 004939D9    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 004939DC    mov         edx,dword ptr [ebp-24]
 004939DF    sub         eax,dword ptr [edx+4C]
 004939E2    mov         dword ptr [ebp-20],eax
 004939E5    mov         eax,dword ptr [ebp-4]
 004939E8    mov         byte ptr [eax+309],1;TToolDockForm.FUpdatingSize:Boolean
 004939EF    xor         eax,eax
 004939F1    push        ebp
 004939F2    push        493A3A
 004939F7    push        dword ptr fs:[eax]
 004939FA    mov         dword ptr fs:[eax],esp
 004939FD    mov         eax,dword ptr [ebp-14]
 00493A00    sub         eax,dword ptr [ebp-1C]
 00493A03    push        eax
 00493A04    mov         eax,dword ptr [ebp-18]
 00493A07    sub         eax,dword ptr [ebp-20]
 00493A0A    push        eax
 00493A0B    mov         eax,dword ptr [ebp-24]
 00493A0E    mov         ecx,dword ptr [eax+44]
 00493A11    mov         eax,dword ptr [ebp-24]
 00493A14    mov         edx,dword ptr [eax+40]
 00493A17    mov         eax,dword ptr [ebp-24]
 00493A1A    mov         ebx,dword ptr [eax]
 00493A1C    call        dword ptr [ebx+84]
 00493A22    xor         eax,eax
 00493A24    pop         edx
 00493A25    pop         ecx
 00493A26    pop         ecx
 00493A27    mov         dword ptr fs:[eax],edx
 00493A2A    push        493A41
 00493A2F    mov         eax,dword ptr [ebp-4]
 00493A32    mov         byte ptr [eax+309],0;TToolDockForm.FUpdatingSize:Boolean
 00493A39    ret
>00493A3A    jmp         @HandleFinally
>00493A3F    jmp         00493A2F
 00493A41    mov         eax,dword ptr [ebp-24]
 00493A44    mov         eax,dword ptr [eax+48]
 00493A47    add         eax,dword ptr [ebp-1C]
 00493A4A    mov         edx,dword ptr [ebp-8]
 00493A4D    mov         dword ptr [edx],eax
 00493A4F    mov         eax,dword ptr [ebp-24]
 00493A52    mov         eax,dword ptr [eax+4C]
 00493A55    add         eax,dword ptr [ebp-20]
 00493A58    mov         edx,dword ptr [ebp-0C]
 00493A5B    mov         dword ptr [edx],eax
 00493A5D    mov         eax,dword ptr [ebp-4]
 00493A60    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 00493A63    mov         edx,dword ptr [ebp-8]
 00493A66    cmp         eax,dword ptr [edx]
>00493A68    jne         00493A7B
 00493A6A    mov         eax,dword ptr [ebp-4]
 00493A6D    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 00493A70    mov         edx,dword ptr [ebp-0C]
 00493A73    cmp         eax,dword ptr [edx]
>00493A75    jne         00493A7B
 00493A77    xor         eax,eax
>00493A79    jmp         00493A7D
 00493A7B    mov         al,1
 00493A7D    mov         byte ptr [ebp-0D],al
 00493A80    mov         al,byte ptr [ebp-0D]
 00493A83    pop         ebx
 00493A84    mov         esp,ebp
 00493A86    pop         ebp
 00493A87    ret
end;*}

//00493A88
{*procedure TToolDockForm.sub_00493A88(?:?; ?:?);
begin
 00493A88    push        ebp
 00493A89    mov         ebp,esp
 00493A8B    add         esp,0FFFFFFF4
 00493A8E    mov         dword ptr [ebp-0C],ecx
 00493A91    mov         dword ptr [ebp-8],edx
 00493A94    mov         dword ptr [ebp-4],eax
 00493A97    mov         ecx,dword ptr [ebp-0C]
 00493A9A    mov         edx,dword ptr [ebp-8]
 00493A9D    mov         eax,dword ptr [ebp-4]
 00493AA0    call        TCustomDockForm.sub_004D19C8
 00493AA5    xor         edx,edx
 00493AA7    mov         eax,dword ptr [ebp-8]
 00493AAA    call        TImage.SetAlign
 00493AAF    mov         dl,1
 00493AB1    mov         eax,dword ptr [ebp-4]
 00493AB4    mov         ecx,dword ptr [eax]
 00493AB6    call        dword ptr [ecx+5C];TImage.SetAutoSize
 00493AB9    mov         esp,ebp
 00493ABB    pop         ebp
 00493ABC    ret
end;*}

//00493AC0
{*procedure sub_00493AC0(?:?);
begin
 00493AC0    push        ebp
 00493AC1    mov         ebp,esp
 00493AC3    push        ecx
 00493AC4    mov         eax,dword ptr [ebp+8]
 00493AC7    mov         eax,dword ptr [eax-4]
 00493ACA    cmp         byte ptr [eax+229],0
>00493AD1    je          00493B47
 00493AD3    mov         eax,dword ptr [ebp+8]
 00493AD6    mov         eax,dword ptr [eax-4]
 00493AD9    test        byte ptr [eax+228],1
>00493AE0    je          00493B47
 00493AE2    mov         eax,dword ptr [ebp+8]
 00493AE5    mov         eax,dword ptr [eax-4]
 00493AE8    cmp         byte ptr [eax+22F],1
>00493AEF    je          00493B47
 00493AF1    push        0
 00493AF3    mov         eax,dword ptr [ebp+8]
 00493AF6    mov         eax,dword ptr [eax-4]
 00493AF9    call        TWinControl.GetHandle
 00493AFE    push        eax
 00493AFF    call        user32.GetSystemMenu
 00493B04    mov         dword ptr [ebp-4],eax
 00493B07    push        0
 00493B09    push        0F130
 00493B0E    mov         eax,dword ptr [ebp-4]
 00493B11    push        eax
 00493B12    call        user32.DeleteMenu
 00493B17    push        0
 00493B19    push        0F030
 00493B1E    mov         eax,dword ptr [ebp-4]
 00493B21    push        eax
 00493B22    call        user32.DeleteMenu
 00493B27    push        0
 00493B29    push        0F020
 00493B2E    mov         eax,dword ptr [ebp-4]
 00493B31    push        eax
 00493B32    call        user32.DeleteMenu
 00493B37    push        0
 00493B39    push        0F120
 00493B3E    mov         eax,dword ptr [ebp-4]
 00493B41    push        eax
 00493B42    call        user32.DeleteMenu
 00493B47    pop         ecx
 00493B48    pop         ebp
 00493B49    ret
end;*}

//00493B4C
{*procedure TToolDockForm.WMNCCreate(?:?);
begin
 00493B4C    push        ebp
 00493B4D    mov         ebp,esp
 00493B4F    add         esp,0FFFFFFF8
 00493B52    mov         dword ptr [ebp-8],edx
 00493B55    mov         dword ptr [ebp-4],eax
 00493B58    mov         edx,dword ptr [ebp-8]
 00493B5B    mov         eax,dword ptr [ebp-4]
 00493B5E    call        TCustomForm.WMNCCreate
 00493B63    mov         eax,dword ptr [ebp-4]
 00493B66    test        byte ptr [eax+1C],10;TToolDockForm.FComponentState:TComponentState
>00493B6A    jne         00493B73
 00493B6C    push        ebp
 00493B6D    call        00493AC0
 00493B72    pop         ecx
 00493B73    pop         ecx
 00493B74    pop         ecx
 00493B75    pop         ebp
 00493B76    ret
end;*}

//00493B78
{*procedure TToolDockForm.WMNCHitTest(?:?);
begin
 00493B78    push        ebp
 00493B79    mov         ebp,esp
 00493B7B    add         esp,0FFFFFFE0
 00493B7E    mov         dword ptr [ebp-8],edx
 00493B81    mov         dword ptr [ebp-4],eax
 00493B84    mov         edx,dword ptr [ebp-8]
 00493B87    mov         eax,dword ptr [ebp-4]
 00493B8A    call        TCustomDockForm.WMNCHitTest
 00493B8F    lea         edx,[ebp-20]
 00493B92    mov         eax,dword ptr [ebp-4]
 00493B95    call        004CA6AC
 00493B9A    push        20
 00493B9C    call        user32.GetSystemMetrics
 00493BA1    mov         dword ptr [ebp-0C],eax
 00493BA4    push        21
 00493BA6    call        user32.GetSystemMetrics
 00493BAB    mov         dword ptr [ebp-10],eax
 00493BAE    mov         eax,dword ptr [ebp-10]
 00493BB1    neg         eax
 00493BB3    push        eax
 00493BB4    mov         eax,dword ptr [ebp-0C]
 00493BB7    neg         eax
 00493BB9    push        eax
 00493BBA    lea         eax,[ebp-20]
 00493BBD    push        eax
 00493BBE    call        user32.InflateRect
 00493BC3    mov         eax,dword ptr [ebp-8]
 00493BC6    mov         eax,dword ptr [eax+0C]
 00493BC9    cmp         eax,11
>00493BCC    ja          00493CA6
 00493BD2    mov         al,byte ptr [eax+493BDF]
 00493BD8    jmp         dword ptr [eax*4+493BF1]
 00493BD8    db          0
 00493BD8    db          3
 00493BD8    db          0
 00493BD8    db          0
 00493BD8    db          5
 00493BD8    db          0
 00493BD8    db          0
 00493BD8    db          0
 00493BD8    db          0
 00493BD8    db          0
 00493BD8    db          0
 00493BD8    db          0
 00493BD8    db          0
 00493BD8    db          1
 00493BD8    db          2
 00493BD8    db          0
 00493BD8    db          4
 00493BD8    db          5
 00493BD8    dd          00493CA6
 00493BD8    dd          00493C09
 00493BD8    dd          00493C30
 00493BD8    dd          00493C54
 00493BD8    dd          00493C60
 00493BD8    dd          00493C84
 00493C09    mov         eax,dword ptr [ebp-8]
 00493C0C    movsx       eax,word ptr [eax+0A]
 00493C10    cmp         eax,dword ptr [ebp-1C]
>00493C13    jge         00493C24
 00493C15    mov         eax,dword ptr [ebp-8]
 00493C18    mov         dword ptr [eax+0C],0C
>00493C1F    jmp         00493CA6
 00493C24    mov         eax,dword ptr [ebp-8]
 00493C27    mov         dword ptr [eax+0C],0A
>00493C2E    jmp         00493CA6
 00493C30    mov         eax,dword ptr [ebp-8]
 00493C33    movsx       eax,word ptr [eax+0A]
 00493C37    cmp         eax,dword ptr [ebp-1C]
>00493C3A    jge         00493C48
 00493C3C    mov         eax,dword ptr [ebp-8]
 00493C3F    mov         dword ptr [eax+0C],0C
>00493C46    jmp         00493CA6
 00493C48    mov         eax,dword ptr [ebp-8]
 00493C4B    mov         dword ptr [eax+0C],0B
>00493C52    jmp         00493CA6
 00493C54    mov         eax,dword ptr [ebp-8]
 00493C57    mov         dword ptr [eax+0C],2
>00493C5E    jmp         00493CA6
 00493C60    mov         eax,dword ptr [ebp-8]
 00493C63    movsx       eax,word ptr [eax+0A]
 00493C67    cmp         eax,dword ptr [ebp-14]
>00493C6A    jle         00493C78
 00493C6C    mov         eax,dword ptr [ebp-8]
 00493C6F    mov         dword ptr [eax+0C],0F
>00493C76    jmp         00493CA6
 00493C78    mov         eax,dword ptr [ebp-8]
 00493C7B    mov         dword ptr [eax+0C],0A
>00493C82    jmp         00493CA6
 00493C84    mov         eax,dword ptr [ebp-8]
 00493C87    movsx       eax,word ptr [eax+0A]
 00493C8B    cmp         eax,dword ptr [ebp-14]
>00493C8E    jle         00493C9C
 00493C90    mov         eax,dword ptr [ebp-8]
 00493C93    mov         dword ptr [eax+0C],0F
>00493C9A    jmp         00493CA6
 00493C9C    mov         eax,dword ptr [ebp-8]
 00493C9F    mov         dword ptr [eax+0C],0B
 00493CA6    mov         esp,ebp
 00493CA8    pop         ebp
 00493CA9    ret
end;*}

//00493CAC
{*procedure TToolDockForm.WMNCLButtonDown(?:?);
begin
 00493CAC    push        ebp
 00493CAD    mov         ebp,esp
 00493CAF    add         esp,0FFFFFFF8
 00493CB2    mov         dword ptr [ebp-8],edx
 00493CB5    mov         dword ptr [ebp-4],eax
 00493CB8    mov         eax,dword ptr [ebp-4]
 00493CBB    mov         byte ptr [eax+308],0;TToolDockForm.FSizingOrientation:TSizingOrientation
 00493CC2    mov         eax,dword ptr [ebp-8]
 00493CC5    mov         eax,dword ptr [eax+4]
 00493CC8    add         eax,0FFFFFFF6
 00493CCB    sub         eax,2
>00493CCE    jb          00493CD9
>00493CD0    je          00493CE5
 00493CD2    sub         eax,3
>00493CD5    je          00493CE5
>00493CD7    jmp         00493CEF
 00493CD9    mov         eax,dword ptr [ebp-4]
 00493CDC    mov         byte ptr [eax+308],1;TToolDockForm.FSizingOrientation:TSizingOrientation
>00493CE3    jmp         00493CEF
 00493CE5    mov         eax,dword ptr [ebp-4]
 00493CE8    mov         byte ptr [eax+308],2;TToolDockForm.FSizingOrientation:TSizingOrientation
 00493CEF    mov         edx,dword ptr [ebp-8]
 00493CF2    mov         eax,dword ptr [ebp-4]
 00493CF5    call        TCustomDockForm.WMNCLButtonDown
 00493CFA    pop         ecx
 00493CFB    pop         ecx
 00493CFC    pop         ebp
 00493CFD    ret
end;*}

//00493D00
procedure TToolDockForm.WMSize(Message:TWMSize);
begin
{*
 00493D00    push        ebp
 00493D01    mov         ebp,esp
 00493D03    add         esp,0FFFFFFF8
 00493D06    mov         dword ptr [ebp-8],edx
 00493D09    mov         dword ptr [ebp-4],eax
 00493D0C    mov         edx,dword ptr [ebp-8]
 00493D0F    mov         eax,dword ptr [ebp-4]
 00493D12    call        TScrollingWinControl.WMSize
 00493D17    mov         eax,dword ptr [ebp-4]
 00493D1A    mov         al,byte ptr [eax+308];TToolDockForm.FSizingOrientation:TSizingOrientation
 00493D20    dec         al
>00493D22    je          00493D2A
 00493D24    dec         al
>00493D26    je          00493D44
>00493D28    jmp         00493D5C
 00493D2A    mov         eax,dword ptr [ebp-4]
 00493D2D    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 00493D30    mov         edx,dword ptr [ebp-4]
 00493D33    sub         eax,dword ptr [edx+2FC]
 00493D39    mov         edx,dword ptr [ebp-4]
 00493D3C    add         dword ptr [edx+300],eax;TToolDockForm.FSizingAdjustH:Integer
>00493D42    jmp         00493D5C
 00493D44    mov         eax,dword ptr [ebp-4]
 00493D47    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 00493D4A    mov         edx,dword ptr [ebp-4]
 00493D4D    sub         eax,dword ptr [edx+2F8]
 00493D53    mov         edx,dword ptr [ebp-4]
 00493D56    add         dword ptr [edx+304],eax;TToolDockForm.FSizingAdjustW:Integer
 00493D5C    pop         ecx
 00493D5D    pop         ecx
 00493D5E    pop         ebp
 00493D5F    ret
*}
end;

//00493D60
{*procedure TToolDockForm.WMSysCommand(?:?);
begin
 00493D60    push        ebp
 00493D61    mov         ebp,esp
 00493D63    add         esp,0FFFFFFF8
 00493D66    mov         dword ptr [ebp-8],edx
 00493D69    mov         dword ptr [ebp-4],eax
 00493D6C    mov         eax,dword ptr [ebp-8]
 00493D6F    mov         eax,dword ptr [eax+4]
 00493D72    and         eax,0FFF0
 00493D77    cmp         eax,0F000
>00493D7C    jne         00493D94
 00493D7E    mov         eax,dword ptr [ebp-4]
 00493D81    xor         edx,edx
 00493D83    mov         dword ptr [eax+304],edx;TToolDockForm.FSizingAdjustW:Integer
 00493D89    mov         eax,dword ptr [ebp-4]
 00493D8C    xor         edx,edx
 00493D8E    mov         dword ptr [eax+300],edx;TToolDockForm.FSizingAdjustH:Integer
 00493D94    mov         edx,dword ptr [ebp-8]
 00493D97    mov         eax,dword ptr [ebp-4]
 00493D9A    call        TCustomForm.WMSysCommand
 00493D9F    mov         eax,dword ptr [ebp-4]
 00493DA2    mov         byte ptr [eax+308],0;TToolDockForm.FSizingOrientation:TSizingOrientation
 00493DA9    pop         ecx
 00493DAA    pop         ecx
 00493DAB    pop         ebp
 00493DAC    ret
end;*}

end.