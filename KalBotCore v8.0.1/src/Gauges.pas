//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Gauges;

interface

uses
  SysUtils, Classes;

type
  TGaugeKind = (gkText, gkHorizontalBar, gkVerticalBar, gkPie, gkNeedle);
  TGauge = class(TGraphicControl)
  public
    MinValue:Integer;//f168
    MaxValue:Integer;//f16C
    Progress:Integer;//f170
    Kind:TGaugeKind;//f174
    ShowText:Boolean;//f175
    BorderStyle:TBorderStyle;//f176
    ForeColor:TColor;//f178
    BackColor:TColor;//f17C
    constructor Create(AOwner:TComponent); virtual;//v2C//0052C238
    procedure Paint; virtual;//v8C//0052C2FC
    function GetPercentDone:Longint;//0052C2D8
    procedure PaintBackground(AnImage:TBitmap);//0052C4A4
    procedure PaintAsText(AnImage:TBitmap; PaintRect:TRect);//0052C4F8
    procedure PaintAsNothing(AnImage:TBitmap; PaintRect:TRect);//0052C658
    procedure PaintAsBar(AnImage:TBitmap; PaintRect:TRect);//0052C698
    procedure PaintAsPie(AnImage:TBitmap; PaintRect:TRect);//0052C798
    procedure PaintAsNeedle(AnImage:TBitmap; PaintRect:TRect);//0052C8F0
    procedure SetGaugeKind(Value:TGaugeKind);//0052CA7C
    procedure SetShowText(Value:Boolean);//0052CA90
    procedure SetBorderStyle(Value:TBorderStyle);//0052CAA4
    procedure SetForeColor(Value:TColor);//0052CAB8
    procedure SetBackColor(Value:TColor);//0052CACC
    procedure SetMinValue(Value:Longint);//0052CAE0
    procedure SetMaxValue(Value:Longint);//0052CB90
    procedure SetProgress(Value:Longint);//0052CC40
  end;
  TBltBitmap = class(TBitmap)
  published
    procedure MakeLike(ATemplate:TBitmap);//0052C144
  end;
    function SolveForX(Y:Longint; Z:Longint):Longint;//0052C1C8
    function SolveForY(X:Longint; Z:Longint):Longint;//0052C200
    constructor Create(AOwner:TComponent);//0052C238
    procedure Paint;//0052C2FC

implementation

//0052C144
procedure TBltBitmap.MakeLike(ATemplate:TBitmap);
begin
{*
 0052C144    push        ebx
 0052C145    push        esi
 0052C146    add         esp,0FFFFFFF0
 0052C149    mov         esi,edx
 0052C14B    mov         ebx,eax
 0052C14D    mov         eax,esi
 0052C14F    mov         edx,dword ptr [eax]
 0052C151    call        dword ptr [edx+2C]
 0052C154    mov         edx,eax
 0052C156    mov         eax,ebx
 0052C158    mov         ecx,dword ptr [eax]
 0052C15A    call        dword ptr [ecx+40]
 0052C15D    mov         eax,esi
 0052C15F    mov         edx,dword ptr [eax]
 0052C161    call        dword ptr [edx+20]
 0052C164    mov         edx,eax
 0052C166    mov         eax,ebx
 0052C168    mov         ecx,dword ptr [eax]
 0052C16A    call        dword ptr [ecx+34]
 0052C16D    mov         eax,ebx
 0052C16F    call        TBitmap.GetCanvas
 0052C174    mov         eax,dword ptr [eax+14]
 0052C177    mov         edx,0FF000006
 0052C17C    call        TBrush.SetColor
 0052C181    mov         eax,ebx
 0052C183    call        TBitmap.GetCanvas
 0052C188    mov         eax,dword ptr [eax+14]
 0052C18B    xor         edx,edx
 0052C18D    call        TBrush.SetStyle
 0052C192    mov         eax,ebx
 0052C194    mov         edx,dword ptr [eax]
 0052C196    call        dword ptr [edx+20]
 0052C199    push        eax
 0052C19A    lea         eax,[esp+4]
 0052C19E    push        eax
 0052C19F    mov         eax,ebx
 0052C1A1    mov         edx,dword ptr [eax]
 0052C1A3    call        dword ptr [edx+2C]
 0052C1A6    mov         ecx,eax
 0052C1A8    xor         edx,edx
 0052C1AA    xor         eax,eax
 0052C1AC    call        Rect
 0052C1B1    push        esp
 0052C1B2    mov         eax,ebx
 0052C1B4    call        TBitmap.GetCanvas
 0052C1B9    pop         edx
 0052C1BA    call        TCanvas.FillRect
 0052C1BF    add         esp,10
 0052C1C2    pop         esi
 0052C1C3    pop         ebx
 0052C1C4    ret
*}
end;

//0052C1C8
function SolveForX(Y:Longint; Z:Longint):Longint;
begin
{*
 0052C1C8    push        ebx
 0052C1C9    push        esi
 0052C1CA    add         esp,0FFFFFFF8
 0052C1CD    mov         esi,edx
 0052C1CF    mov         ebx,eax
 0052C1D1    mov         dword ptr [esp],esi
 0052C1D4    fild        dword ptr [esp]
 0052C1D7    mov         dword ptr [esp+4],ebx
 0052C1DB    fild        dword ptr [esp+4]
 0052C1DF    fld         tbyte ptr ds:[52C1F4]
 0052C1E5    fmulp       st(1),st
 0052C1E7    fmulp       st(1),st
 0052C1E9    call        @TRUNC
 0052C1EE    pop         ecx
 0052C1EF    pop         edx
 0052C1F0    pop         esi
 0052C1F1    pop         ebx
 0052C1F2    ret
*}
end;

//0052C200
function SolveForY(X:Longint; Z:Longint):Longint;
begin
{*
 0052C200    push        ebx
 0052C201    push        esi
 0052C202    add         esp,0FFFFFFF8
 0052C205    mov         ebx,edx
 0052C207    mov         esi,eax
 0052C209    test        ebx,ebx
>0052C20B    jne         0052C211
 0052C20D    xor         eax,eax
>0052C20F    jmp         0052C22C
 0052C211    mov         dword ptr [esp],esi
 0052C214    fild        dword ptr [esp]
 0052C217    fmul        dword ptr ds:[52C234]
 0052C21D    mov         dword ptr [esp+4],ebx
 0052C221    fild        dword ptr [esp+4]
 0052C225    fdivp       st(1),st
 0052C227    call        @TRUNC
 0052C22C    pop         ecx
 0052C22D    pop         edx
 0052C22E    pop         esi
 0052C22F    pop         ebx
 0052C230    ret
*}
end;

//0052C238
constructor TGauge.Create(AOwner:TComponent);
begin
{*
 0052C238    push        ebx
 0052C239    push        esi
 0052C23A    test        dl,dl
>0052C23C    je          0052C246
 0052C23E    add         esp,0FFFFFFF0
 0052C241    call        @ClassCreate
 0052C246    mov         ebx,edx
 0052C248    mov         esi,eax
 0052C24A    xor         edx,edx
 0052C24C    mov         eax,esi
 0052C24E    call        TGraphicControl.Create
 0052C253    mov         eax,dword ptr [esi+50]
 0052C256    or          eax,dword ptr ds:[52C2D4]
 0052C25C    mov         dword ptr [esi+50],eax
 0052C25F    xor         eax,eax
 0052C261    mov         dword ptr [esi+168],eax
 0052C267    mov         dword ptr [esi+16C],64
 0052C271    xor         eax,eax
 0052C273    mov         dword ptr [esi+170],eax
 0052C279    mov         byte ptr [esi+174],1
 0052C280    mov         byte ptr [esi+175],1
 0052C287    mov         byte ptr [esi+176],1
 0052C28E    xor         eax,eax
 0052C290    mov         dword ptr [esi+178],eax
 0052C296    mov         dword ptr [esi+17C],0FFFFFF
 0052C2A0    mov         edx,64
 0052C2A5    mov         eax,esi
 0052C2A7    call        TControl.SetWidth
 0052C2AC    mov         edx,64
 0052C2B1    mov         eax,esi
 0052C2B3    call        TControl.SetHeight
 0052C2B8    mov         eax,esi
 0052C2BA    test        bl,bl
>0052C2BC    je          0052C2CD
 0052C2BE    call        @AfterConstruction
 0052C2C3    pop         dword ptr fs:[0]
 0052C2CA    add         esp,0C
 0052C2CD    mov         eax,esi
 0052C2CF    pop         esi
 0052C2D0    pop         ebx
 0052C2D1    ret
*}
end;

//0052C2D8
function TGauge.GetPercentDone:Longint;
begin
{*
 0052C2D8    push        ebx
 0052C2D9    mov         ecx,dword ptr [eax+170]
 0052C2DF    mov         edx,dword ptr [eax+168]
 0052C2E5    sub         ecx,edx
 0052C2E7    mov         ebx,dword ptr [eax+16C]
 0052C2ED    sub         ebx,edx
 0052C2EF    mov         edx,ebx
 0052C2F1    mov         eax,ecx
 0052C2F3    call        SolveForY
 0052C2F8    pop         ebx
 0052C2F9    ret
*}
end;

//0052C2FC
procedure TGauge.Paint;
begin
{*
 0052C2FC    push        ebp
 0052C2FD    mov         ebp,esp
 0052C2FF    add         esp,0FFFFFFE4
 0052C302    mov         dword ptr [ebp-4],eax
 0052C305    mov         dl,1
 0052C307    mov         eax,[00485C6C];TBitmap
 0052C30C    call        TBitmap.Create
 0052C311    mov         dword ptr [ebp-8],eax
 0052C314    xor         edx,edx
 0052C316    push        ebp
 0052C317    push        52C496
 0052C31C    push        dword ptr fs:[edx]
 0052C31F    mov         dword ptr fs:[edx],esp
 0052C322    mov         eax,dword ptr [ebp-4]
 0052C325    mov         edx,dword ptr [eax+4C]
 0052C328    mov         eax,dword ptr [ebp-8]
 0052C32B    mov         ecx,dword ptr [eax]
 0052C32D    call        dword ptr [ecx+34]
 0052C330    mov         eax,dword ptr [ebp-4]
 0052C333    mov         edx,dword ptr [eax+48]
 0052C336    mov         eax,dword ptr [ebp-8]
 0052C339    mov         ecx,dword ptr [eax]
 0052C33B    call        dword ptr [ecx+40]
 0052C33E    mov         edx,dword ptr [ebp-8]
 0052C341    mov         eax,dword ptr [ebp-4]
 0052C344    call        TGauge.PaintBackground
 0052C349    lea         edx,[ebp-1C]
 0052C34C    mov         eax,dword ptr [ebp-4]
 0052C34F    mov         ecx,dword ptr [eax]
 0052C351    call        dword ptr [ecx+44]
 0052C354    mov         eax,dword ptr [ebp-4]
 0052C357    cmp         byte ptr [eax+176],1
>0052C35E    jne         0052C36D
 0052C360    push        0FF
 0052C362    push        0FF
 0052C364    lea         eax,[ebp-1C]
 0052C367    push        eax
 0052C368    call        user32.InflateRect
 0052C36D    mov         dl,1
 0052C36F    mov         eax,[0052C048];TBltBitmap
 0052C374    call        TBitmap.Create
 0052C379    mov         dword ptr [ebp-0C],eax
 0052C37C    xor         eax,eax
 0052C37E    push        ebp
 0052C37F    push        52C45A
 0052C384    push        dword ptr fs:[eax]
 0052C387    mov         dword ptr fs:[eax],esp
 0052C38A    mov         edx,dword ptr [ebp-8]
 0052C38D    mov         eax,dword ptr [ebp-0C]
 0052C390    call        TBltBitmap.MakeLike
 0052C395    mov         edx,dword ptr [ebp-0C]
 0052C398    mov         eax,dword ptr [ebp-4]
 0052C39B    call        TGauge.PaintBackground
 0052C3A0    mov         eax,dword ptr [ebp-4]
 0052C3A3    mov         al,byte ptr [eax+174]
 0052C3A9    sub         al,1
>0052C3AB    jb          0052C3B9
 0052C3AD    sub         al,2
>0052C3AF    jb          0052C3C9
>0052C3B1    je          0052C3D9
 0052C3B3    dec         al
>0052C3B5    je          0052C3E9
>0052C3B7    jmp         0052C3F7
 0052C3B9    lea         ecx,[ebp-1C]
 0052C3BC    mov         edx,dword ptr [ebp-0C]
 0052C3BF    mov         eax,dword ptr [ebp-4]
 0052C3C2    call        TGauge.PaintAsNothing
>0052C3C7    jmp         0052C3F7
 0052C3C9    lea         ecx,[ebp-1C]
 0052C3CC    mov         edx,dword ptr [ebp-0C]
 0052C3CF    mov         eax,dword ptr [ebp-4]
 0052C3D2    call        TGauge.PaintAsBar
>0052C3D7    jmp         0052C3F7
 0052C3D9    lea         ecx,[ebp-1C]
 0052C3DC    mov         edx,dword ptr [ebp-0C]
 0052C3DF    mov         eax,dword ptr [ebp-4]
 0052C3E2    call        TGauge.PaintAsPie
>0052C3E7    jmp         0052C3F7
 0052C3E9    lea         ecx,[ebp-1C]
 0052C3EC    mov         edx,dword ptr [ebp-0C]
 0052C3EF    mov         eax,dword ptr [ebp-4]
 0052C3F2    call        TGauge.PaintAsNeedle
 0052C3F7    mov         eax,dword ptr [ebp-8]
 0052C3FA    call        TBitmap.GetCanvas
 0052C3FF    mov         dword ptr [eax+20],660046
 0052C406    mov         eax,dword ptr [ebp-0C]
 0052C409    push        eax
 0052C40A    mov         eax,dword ptr [ebp-8]
 0052C40D    call        TBitmap.GetCanvas
 0052C412    xor         ecx,ecx
 0052C414    xor         edx,edx
 0052C416    call        TCanvas.Draw
 0052C41B    mov         eax,dword ptr [ebp-8]
 0052C41E    call        TBitmap.GetCanvas
 0052C423    mov         dword ptr [eax+20],0CC0020
 0052C42A    mov         eax,dword ptr [ebp-4]
 0052C42D    cmp         byte ptr [eax+175],0
>0052C434    je          0052C444
 0052C436    lea         ecx,[ebp-1C]
 0052C439    mov         edx,dword ptr [ebp-8]
 0052C43C    mov         eax,dword ptr [ebp-4]
 0052C43F    call        TGauge.PaintAsText
 0052C444    xor         eax,eax
 0052C446    pop         edx
 0052C447    pop         ecx
 0052C448    pop         ecx
 0052C449    mov         dword ptr fs:[eax],edx
 0052C44C    push        52C461
 0052C451    mov         eax,dword ptr [ebp-0C]
 0052C454    call        TObject.Free
 0052C459    ret
>0052C45A    jmp         @HandleFinally
>0052C45F    jmp         0052C451
 0052C461    mov         eax,dword ptr [ebp-4]
 0052C464    mov         eax,dword ptr [eax+160]
 0052C46A    mov         dword ptr [eax+20],0CC0020
 0052C471    mov         edx,dword ptr [ebp-8]
 0052C474    push        edx
 0052C475    xor         ecx,ecx
 0052C477    xor         edx,edx
 0052C479    call        TCanvas.Draw
 0052C47E    xor         eax,eax
 0052C480    pop         edx
 0052C481    pop         ecx
 0052C482    pop         ecx
 0052C483    mov         dword ptr fs:[eax],edx
 0052C486    push        52C49D
 0052C48B    mov         dl,1
 0052C48D    mov         eax,dword ptr [ebp-8]
 0052C490    mov         ecx,dword ptr [eax]
 0052C492    call        dword ptr [ecx-4]
 0052C495    ret
>0052C496    jmp         @HandleFinally
>0052C49B    jmp         0052C48B
 0052C49D    mov         esp,ebp
 0052C49F    pop         ebp
 0052C4A0    ret
*}
end;

//0052C4A4
procedure TGauge.PaintBackground(AnImage:TBitmap);
begin
{*
 0052C4A4    push        ebx
 0052C4A5    push        esi
 0052C4A6    push        edi
 0052C4A7    add         esp,0FFFFFFF0
 0052C4AA    mov         edi,edx
 0052C4AC    mov         esi,eax
 0052C4AE    mov         eax,edi
 0052C4B0    call        TBitmap.GetCanvas
 0052C4B5    mov         ebx,eax
 0052C4B7    mov         dword ptr [ebx+20],42
 0052C4BE    mov         eax,dword ptr [esi+4C]
 0052C4C1    push        eax
 0052C4C2    lea         eax,[esp+4]
 0052C4C6    push        eax
 0052C4C7    mov         ecx,dword ptr [esi+48]
 0052C4CA    xor         edx,edx
 0052C4CC    xor         eax,eax
 0052C4CE    call        Rect
 0052C4D3    push        esp
 0052C4D4    mov         eax,edi
 0052C4D6    call        TBitmap.GetCanvas
 0052C4DB    mov         ecx,eax
 0052C4DD    lea         edx,[esp+4]
 0052C4E1    mov         eax,ebx
 0052C4E3    call        TCanvas.CopyRect
 0052C4E8    mov         dword ptr [ebx+20],0CC0020
 0052C4EF    add         esp,10
 0052C4F2    pop         edi
 0052C4F3    pop         esi
 0052C4F4    pop         ebx
 0052C4F5    ret
*}
end;

//0052C4F8
procedure TGauge.PaintAsText(AnImage:TBitmap; PaintRect:TRect);
begin
{*
 0052C4F8    push        ebp
 0052C4F9    mov         ebp,esp
 0052C4FB    add         esp,0FFFFFFE0
 0052C4FE    push        ebx
 0052C4FF    push        esi
 0052C500    push        edi
 0052C501    xor         ebx,ebx
 0052C503    mov         dword ptr [ebp-4],ebx
 0052C506    mov         esi,ecx
 0052C508    lea         edi,[ebp-18]
 0052C50B    movs        dword ptr [edi],dword ptr [esi]
 0052C50C    movs        dword ptr [edi],dword ptr [esi]
 0052C50D    movs        dword ptr [edi],dword ptr [esi]
 0052C50E    movs        dword ptr [edi],dword ptr [esi]
 0052C50F    mov         edi,edx
 0052C511    mov         esi,eax
 0052C513    xor         eax,eax
 0052C515    push        ebp
 0052C516    push        52C63A
 0052C51B    push        dword ptr fs:[eax]
 0052C51E    mov         dword ptr fs:[eax],esp
 0052C521    mov         dl,1
 0052C523    mov         eax,[0052C048];TBltBitmap
 0052C528    call        TBitmap.Create
 0052C52D    mov         dword ptr [ebp-8],eax
 0052C530    xor         edx,edx
 0052C532    push        ebp
 0052C533    push        52C61D
 0052C538    push        dword ptr fs:[edx]
 0052C53B    mov         dword ptr fs:[edx],esp
 0052C53E    mov         edx,edi
 0052C540    mov         eax,dword ptr [ebp-8]
 0052C543    call        TBltBitmap.MakeLike
 0052C548    mov         edx,dword ptr [ebp-8]
 0052C54B    mov         eax,esi
 0052C54D    call        TGauge.PaintBackground
 0052C552    lea         eax,[ebp-4]
 0052C555    push        eax
 0052C556    mov         eax,esi
 0052C558    call        TGauge.GetPercentDone
 0052C55D    mov         dword ptr [ebp-20],eax
 0052C560    mov         byte ptr [ebp-1C],0
 0052C564    lea         edx,[ebp-20]
 0052C567    xor         ecx,ecx
 0052C569    mov         eax,52C650;'%d%%'
 0052C56E    call        Format
 0052C573    mov         eax,dword ptr [ebp-8]
 0052C576    call        TBitmap.GetCanvas
 0052C57B    mov         ebx,eax
 0052C57D    mov         eax,dword ptr [ebx+14]
 0052C580    mov         dl,1
 0052C582    call        TBrush.SetStyle
 0052C587    mov         edx,dword ptr [esi+68]
 0052C58A    mov         eax,ebx
 0052C58C    call        TCanvas.SetFont
 0052C591    mov         eax,dword ptr [ebx+0C]
 0052C594    mov         edx,0FFFFFF
 0052C599    call        TFont.SetColor
 0052C59E    mov         edx,dword ptr [ebp-4]
 0052C5A1    mov         eax,ebx
 0052C5A3    call        TCanvas.TextWidth
 0052C5A8    mov         esi,dword ptr [ebp-10]
 0052C5AB    sub         esi,dword ptr [ebp-18]
 0052C5AE    inc         esi
 0052C5AF    sub         esi,eax
 0052C5B1    sar         esi,1
>0052C5B3    jns         0052C5B8
 0052C5B5    adc         esi,0
 0052C5B8    mov         edx,dword ptr [ebp-4]
 0052C5BB    mov         eax,ebx
 0052C5BD    call        TCanvas.TextHeight
 0052C5C2    push        eax
 0052C5C3    mov         eax,dword ptr [ebp-0C]
 0052C5C6    sub         eax,dword ptr [ebp-14]
 0052C5C9    inc         eax
 0052C5CA    pop         edx
 0052C5CB    sub         eax,edx
 0052C5CD    sar         eax,1
>0052C5CF    jns         0052C5D4
 0052C5D1    adc         eax,0
 0052C5D4    push        eax
 0052C5D5    mov         eax,dword ptr [ebp-4]
 0052C5D8    push        eax
 0052C5D9    mov         ecx,esi
 0052C5DB    lea         edx,[ebp-18]
 0052C5DE    mov         eax,ebx
 0052C5E0    call        TCanvas.TextRect
 0052C5E5    mov         eax,edi
 0052C5E7    call        TBitmap.GetCanvas
 0052C5EC    mov         dword ptr [eax+20],660046
 0052C5F3    mov         eax,dword ptr [ebp-8]
 0052C5F6    push        eax
 0052C5F7    mov         eax,edi
 0052C5F9    call        TBitmap.GetCanvas
 0052C5FE    xor         ecx,ecx
 0052C600    xor         edx,edx
 0052C602    call        TCanvas.Draw
 0052C607    xor         eax,eax
 0052C609    pop         edx
 0052C60A    pop         ecx
 0052C60B    pop         ecx
 0052C60C    mov         dword ptr fs:[eax],edx
 0052C60F    push        52C624
 0052C614    mov         eax,dword ptr [ebp-8]
 0052C617    call        TObject.Free
 0052C61C    ret
>0052C61D    jmp         @HandleFinally
>0052C622    jmp         0052C614
 0052C624    xor         eax,eax
 0052C626    pop         edx
 0052C627    pop         ecx
 0052C628    pop         ecx
 0052C629    mov         dword ptr fs:[eax],edx
 0052C62C    push        52C641
 0052C631    lea         eax,[ebp-4]
 0052C634    call        @LStrClr
 0052C639    ret
>0052C63A    jmp         @HandleFinally
>0052C63F    jmp         0052C631
 0052C641    pop         edi
 0052C642    pop         esi
 0052C643    pop         ebx
 0052C644    mov         esp,ebp
 0052C646    pop         ebp
 0052C647    ret
*}
end;

//0052C658
procedure TGauge.PaintAsNothing(AnImage:TBitmap; PaintRect:TRect);
begin
{*
 0052C658    push        ebx
 0052C659    push        esi
 0052C65A    push        edi
 0052C65B    add         esp,0FFFFFFF0
 0052C65E    mov         esi,ecx
 0052C660    lea         edi,[esp]
 0052C663    movs        dword ptr [edi],dword ptr [esi]
 0052C664    movs        dword ptr [edi],dword ptr [esi]
 0052C665    movs        dword ptr [edi],dword ptr [esi]
 0052C666    movs        dword ptr [edi],dword ptr [esi]
 0052C667    mov         esi,edx
 0052C669    mov         ebx,eax
 0052C66B    mov         eax,esi
 0052C66D    call        TBitmap.GetCanvas
 0052C672    mov         eax,dword ptr [eax+14]
 0052C675    mov         edx,dword ptr [ebx+17C]
 0052C67B    call        TBrush.SetColor
 0052C680    mov         eax,esi
 0052C682    call        TBitmap.GetCanvas
 0052C687    mov         edx,esp
 0052C689    call        TCanvas.FillRect
 0052C68E    add         esp,10
 0052C691    pop         edi
 0052C692    pop         esi
 0052C693    pop         ebx
 0052C694    ret
*}
end;

//0052C698
procedure TGauge.PaintAsBar(AnImage:TBitmap; PaintRect:TRect);
begin
{*
 0052C698    push        ebx
 0052C699    push        esi
 0052C69A    push        edi
 0052C69B    push        ebp
 0052C69C    add         esp,0FFFFFFDC
 0052C69F    mov         esi,ecx
 0052C6A1    lea         edi,[esp+4]
 0052C6A5    movs        dword ptr [edi],dword ptr [esi]
 0052C6A6    movs        dword ptr [edi],dword ptr [esi]
 0052C6A7    movs        dword ptr [edi],dword ptr [esi]
 0052C6A8    movs        dword ptr [edi],dword ptr [esi]
 0052C6A9    mov         dword ptr [esp],edx
 0052C6AC    mov         esi,eax
 0052C6AE    mov         ebp,dword ptr [esp+0C]
 0052C6B2    sub         ebp,dword ptr [esp+4]
 0052C6B6    inc         ebp
 0052C6B7    mov         edi,dword ptr [esp+10]
 0052C6BB    sub         edi,dword ptr [esp+8]
 0052C6BF    inc         edi
 0052C6C0    mov         eax,dword ptr [esp]
 0052C6C3    call        TBitmap.GetCanvas
 0052C6C8    mov         ebx,eax
 0052C6CA    mov         edx,dword ptr [esi+17C]
 0052C6D0    mov         eax,dword ptr [ebx+14]
 0052C6D3    call        TBrush.SetColor
 0052C6D8    lea         edx,[esp+4]
 0052C6DC    mov         eax,ebx
 0052C6DE    call        TCanvas.FillRect
 0052C6E3    mov         edx,dword ptr [esi+178]
 0052C6E9    mov         eax,dword ptr [ebx+10]
 0052C6EC    call        TPen.SetColor
 0052C6F1    mov         edx,1
 0052C6F6    mov         eax,dword ptr [ebx+10]
 0052C6F9    call        TPen.SetWidth
 0052C6FE    mov         edx,dword ptr [esi+178]
 0052C704    mov         eax,dword ptr [ebx+14]
 0052C707    call        TBrush.SetColor
 0052C70C    mov         al,byte ptr [esi+174]
 0052C712    dec         al
>0052C714    je          0052C71C
 0052C716    dec         al
>0052C718    je          0052C758
>0052C71A    jmp         0052C78F
 0052C71C    mov         eax,esi
 0052C71E    call        TGauge.GetPercentDone
 0052C723    mov         edx,ebp
 0052C725    call        SolveForX
 0052C72A    mov         esi,eax
 0052C72C    cmp         ebp,esi
>0052C72E    jge         0052C732
 0052C730    mov         esi,ebp
 0052C732    test        esi,esi
>0052C734    jle         0052C78F
 0052C736    push        edi
 0052C737    lea         eax,[esp+18]
 0052C73B    push        eax
 0052C73C    mov         ecx,esi
 0052C73E    mov         edx,dword ptr [esp+10]
 0052C742    mov         eax,dword ptr [esp+0C]
 0052C746    call        Rect
 0052C74B    lea         edx,[esp+14]
 0052C74F    mov         eax,ebx
 0052C751    call        TCanvas.FillRect
>0052C756    jmp         0052C78F
 0052C758    mov         eax,esi
 0052C75A    call        TGauge.GetPercentDone
 0052C75F    mov         edx,edi
 0052C761    call        SolveForX
 0052C766    mov         esi,eax
 0052C768    cmp         edi,esi
>0052C76A    jg          0052C76F
 0052C76C    mov         esi,edi
 0052C76E    dec         esi
 0052C76F    push        edi
 0052C770    lea         eax,[esp+18]
 0052C774    push        eax
 0052C775    mov         edx,edi
 0052C777    sub         edx,esi
 0052C779    mov         ecx,ebp
 0052C77B    mov         eax,dword ptr [esp+0C]
 0052C77F    call        Rect
 0052C784    lea         edx,[esp+14]
 0052C788    mov         eax,ebx
 0052C78A    call        TCanvas.FillRect
 0052C78F    add         esp,24
 0052C792    pop         ebp
 0052C793    pop         edi
 0052C794    pop         esi
 0052C795    pop         ebx
 0052C796    ret
*}
end;

//0052C798
procedure TGauge.PaintAsPie(AnImage:TBitmap; PaintRect:TRect);
begin
{*
 0052C798    push        ebx
 0052C799    push        esi
 0052C79A    push        edi
 0052C79B    push        ebp
 0052C79C    add         esp,0FFFFFFD4
 0052C79F    mov         esi,ecx
 0052C7A1    lea         edi,[esp+18]
 0052C7A5    movs        dword ptr [edi],dword ptr [esi]
 0052C7A6    movs        dword ptr [edi],dword ptr [esi]
 0052C7A7    movs        dword ptr [edi],dword ptr [esi]
 0052C7A8    movs        dword ptr [edi],dword ptr [esi]
 0052C7A9    mov         dword ptr [esp],edx
 0052C7AC    mov         esi,eax
 0052C7AE    mov         edi,dword ptr [esp+20]
 0052C7B2    sub         edi,dword ptr [esp+18]
 0052C7B6    mov         ebp,dword ptr [esp+24]
 0052C7BA    sub         ebp,dword ptr [esp+1C]
 0052C7BE    cmp         byte ptr [esi+176],1
>0052C7C5    jne         0052C7C9
 0052C7C7    inc         edi
 0052C7C8    inc         ebp
 0052C7C9    mov         eax,dword ptr [esp]
 0052C7CC    call        TBitmap.GetCanvas
 0052C7D1    mov         ebx,eax
 0052C7D3    mov         edx,dword ptr [esi+70]
 0052C7D6    mov         eax,dword ptr [ebx+14]
 0052C7D9    call        TBrush.SetColor
 0052C7DE    lea         edx,[esp+18]
 0052C7E2    mov         eax,ebx
 0052C7E4    call        TCanvas.FillRect
 0052C7E9    mov         edx,dword ptr [esi+17C]
 0052C7EF    mov         eax,dword ptr [ebx+14]
 0052C7F2    call        TBrush.SetColor
 0052C7F7    mov         edx,dword ptr [esi+178]
 0052C7FD    mov         eax,dword ptr [ebx+10]
 0052C800    call        TPen.SetColor
 0052C805    mov         edx,1
 0052C80A    mov         eax,dword ptr [ebx+10]
 0052C80D    call        TPen.SetWidth
 0052C812    push        edi
 0052C813    push        ebp
 0052C814    mov         ecx,dword ptr [esp+24]
 0052C818    mov         edx,dword ptr [esp+20]
 0052C81C    mov         eax,ebx
 0052C81E    call        TCanvas.Ellipse
 0052C823    mov         eax,esi
 0052C825    call        TGauge.GetPercentDone
 0052C82A    test        eax,eax
>0052C82C    jle         0052C8D0
 0052C832    mov         edx,dword ptr [esi+178]
 0052C838    mov         eax,dword ptr [ebx+14]
 0052C83B    call        TBrush.SetColor
 0052C840    mov         eax,edi
 0052C842    sar         eax,1
>0052C844    jns         0052C849
 0052C846    adc         eax,0
 0052C849    mov         dword ptr [esp+4],eax
 0052C84D    mov         eax,ebp
 0052C84F    sar         eax,1
>0052C851    jns         0052C856
 0052C853    adc         eax,0
 0052C856    mov         dword ptr [esp+8],eax
 0052C85A    mov         eax,esi
 0052C85C    call        TGauge.GetPercentDone
 0052C861    mov         dword ptr [esp+28],eax
 0052C865    fild        dword ptr [esp+28]
 0052C869    fdiv        dword ptr ds:[52C8D8]
 0052C86F    fadd        dword ptr ds:[52C8DC]
 0052C875    fld         tbyte ptr ds:[52C8E0]
 0052C87B    fmulp       st(1),st
 0052C87D    fstp        qword ptr [esp+10]
 0052C881    wait
 0052C882    push        edi
 0052C883    push        ebp
 0052C884    fld         qword ptr [esp+18]
 0052C888    call        @COS
 0052C88D    fsubr       dword ptr ds:[52C8EC]
 0052C893    fild        dword ptr [esp+0C]
 0052C897    fmulp       st(1),st
 0052C899    call        @ROUND
 0052C89E    push        eax
 0052C89F    fld         qword ptr [esp+1C]
 0052C8A3    call        @SIN
 0052C8A8    fsubr       dword ptr ds:[52C8EC]
 0052C8AE    fild        dword ptr [esp+14]
 0052C8B2    fmulp       st(1),st
 0052C8B4    call        @ROUND
 0052C8B9    push        eax
 0052C8BA    mov         eax,dword ptr [esp+14]
 0052C8BE    push        eax
 0052C8BF    push        0
 0052C8C1    mov         ecx,dword ptr [esp+34]
 0052C8C5    mov         edx,dword ptr [esp+30]
 0052C8C9    mov         eax,ebx
 0052C8CB    call        TCanvas.Pie
 0052C8D0    add         esp,2C
 0052C8D3    pop         ebp
 0052C8D4    pop         edi
 0052C8D5    pop         esi
 0052C8D6    pop         ebx
 0052C8D7    ret
*}
end;

//0052C8F0
procedure TGauge.PaintAsNeedle(AnImage:TBitmap; PaintRect:TRect);
begin
{*
 0052C8F0    push        ebx
 0052C8F1    push        esi
 0052C8F2    push        edi
 0052C8F3    push        ebp
 0052C8F4    add         esp,0FFFFFFD0
 0052C8F7    mov         esi,ecx
 0052C8F9    lea         edi,[esp+18]
 0052C8FD    movs        dword ptr [edi],dword ptr [esi]
 0052C8FE    movs        dword ptr [edi],dword ptr [esi]
 0052C8FF    movs        dword ptr [edi],dword ptr [esi]
 0052C900    movs        dword ptr [edi],dword ptr [esi]
 0052C901    mov         dword ptr [esp],edx
 0052C904    mov         esi,eax
 0052C906    mov         eax,dword ptr [esp+18]
 0052C90A    mov         edi,eax
 0052C90C    mov         edx,dword ptr [esp+1C]
 0052C910    mov         dword ptr [esp+10],edx
 0052C914    mov         ebp,dword ptr [esp+20]
 0052C918    sub         ebp,eax
 0052C91A    mov         eax,dword ptr [esp+24]
 0052C91E    sub         eax,edx
 0052C920    mov         dword ptr [esp+14],eax
 0052C924    cmp         byte ptr [esi+176],1
>0052C92B    jne         0052C932
 0052C92D    inc         ebp
 0052C92E    inc         dword ptr [esp+14]
 0052C932    mov         eax,dword ptr [esp]
 0052C935    call        TBitmap.GetCanvas
 0052C93A    mov         ebx,eax
 0052C93C    mov         edx,dword ptr [esi+70]
 0052C93F    mov         eax,dword ptr [ebx+14]
 0052C942    call        TBrush.SetColor
 0052C947    lea         edx,[esp+18]
 0052C94B    mov         eax,ebx
 0052C94D    call        TCanvas.FillRect
 0052C952    mov         edx,dword ptr [esi+17C]
 0052C958    mov         eax,dword ptr [ebx+14]
 0052C95B    call        TBrush.SetColor
 0052C960    mov         edx,dword ptr [esi+178]
 0052C966    mov         eax,dword ptr [ebx+10]
 0052C969    call        TPen.SetColor
 0052C96E    mov         edx,1
 0052C973    mov         eax,dword ptr [ebx+10]
 0052C976    call        TPen.SetWidth
 0052C97B    push        ebp
 0052C97C    mov         edx,dword ptr [esp+18]
 0052C980    add         edx,edx
 0052C982    dec         edx
 0052C983    push        edx
 0052C984    lea         edx,[ebp+edi]
 0052C988    push        edx
 0052C989    mov         eax,dword ptr [esp+30]
 0052C98D    dec         eax
 0052C98E    push        eax
 0052C98F    push        edi
 0052C990    push        eax
 0052C991    mov         ecx,dword ptr [esp+28]
 0052C995    mov         edx,edi
 0052C997    mov         eax,ebx
 0052C999    call        TCanvas.Pie
 0052C99E    mov         ecx,dword ptr [esp+24]
 0052C9A2    mov         edx,edi
 0052C9A4    mov         eax,ebx
 0052C9A6    call        TCanvas.MoveTo
 0052C9AB    lea         edx,[ebp+edi]
 0052C9AF    mov         ecx,dword ptr [esp+24]
 0052C9B3    mov         eax,ebx
 0052C9B5    call        TCanvas.LineTo
 0052C9BA    mov         eax,esi
 0052C9BC    call        TGauge.GetPercentDone
 0052C9C1    test        eax,eax
>0052C9C3    jle         0052CA5D
 0052C9C9    mov         edx,dword ptr [esi+178]
 0052C9CF    mov         eax,dword ptr [ebx+10]
 0052C9D2    call        TPen.SetColor
 0052C9D7    mov         edi,dword ptr [esi+48]
 0052C9DA    sar         edi,1
>0052C9DC    jns         0052C9E1
 0052C9DE    adc         edi,0
 0052C9E1    mov         ecx,dword ptr [esp+24]
 0052C9E5    dec         ecx
 0052C9E6    mov         edx,edi
 0052C9E8    mov         eax,ebx
 0052C9EA    call        TCanvas.MoveTo
 0052C9EF    mov         eax,esi
 0052C9F1    call        TGauge.GetPercentDone
 0052C9F6    mov         dword ptr [esp+28],eax
 0052C9FA    fild        dword ptr [esp+28]
 0052C9FE    fdiv        dword ptr ds:[52CA68]
 0052CA04    fld         tbyte ptr ds:[52CA6C]
 0052CA0A    fmulp       st(1),st
 0052CA0C    fstp        qword ptr [esp+8]
 0052CA10    wait
 0052CA11    fld         qword ptr [esp+8]
 0052CA15    call        @SIN
 0052CA1A    fsubr       dword ptr ds:[52CA78]
 0052CA20    mov         eax,dword ptr [esp+24]
 0052CA24    dec         eax
 0052CA25    mov         dword ptr [esp+28],eax
 0052CA29    fild        dword ptr [esp+28]
 0052CA2D    fmulp       st(1),st
 0052CA2F    call        @ROUND
 0052CA34    push        eax
 0052CA35    fld         qword ptr [esp+0C]
 0052CA39    call        @COS
 0052CA3E    fsubr       dword ptr ds:[52CA78]
 0052CA44    mov         dword ptr [esp+30],edi
 0052CA48    fild        dword ptr [esp+30]
 0052CA4C    fmulp       st(1),st
 0052CA4E    call        @ROUND
 0052CA53    mov         edx,eax
 0052CA55    mov         eax,ebx
 0052CA57    pop         ecx
 0052CA58    call        TCanvas.LineTo
 0052CA5D    add         esp,30
 0052CA60    pop         ebp
 0052CA61    pop         edi
 0052CA62    pop         esi
 0052CA63    pop         ebx
 0052CA64    ret
*}
end;

//0052CA7C
procedure TGauge.SetGaugeKind(Value:TGaugeKind);
begin
{*
 0052CA7C    cmp         dl,byte ptr [eax+174]
>0052CA82    je          0052CA8F
 0052CA84    mov         byte ptr [eax+174],dl
 0052CA8A    call        TControl.Refresh
 0052CA8F    ret
*}
end;

//0052CA90
procedure TGauge.SetShowText(Value:Boolean);
begin
{*
 0052CA90    cmp         dl,byte ptr [eax+175]
>0052CA96    je          0052CAA3
 0052CA98    mov         byte ptr [eax+175],dl
 0052CA9E    call        TControl.Refresh
 0052CAA3    ret
*}
end;

//0052CAA4
procedure TGauge.SetBorderStyle(Value:TBorderStyle);
begin
{*
 0052CAA4    cmp         dl,byte ptr [eax+176]
>0052CAAA    je          0052CAB7
 0052CAAC    mov         byte ptr [eax+176],dl
 0052CAB2    call        TControl.Refresh
 0052CAB7    ret
*}
end;

//0052CAB8
procedure TGauge.SetForeColor(Value:TColor);
begin
{*
 0052CAB8    cmp         edx,dword ptr [eax+178]
>0052CABE    je          0052CACB
 0052CAC0    mov         dword ptr [eax+178],edx
 0052CAC6    call        TControl.Refresh
 0052CACB    ret
*}
end;

//0052CACC
procedure TGauge.SetBackColor(Value:TColor);
begin
{*
 0052CACC    cmp         edx,dword ptr [eax+17C]
>0052CAD2    je          0052CADF
 0052CAD4    mov         dword ptr [eax+17C],edx
 0052CADA    call        TControl.Refresh
 0052CADF    ret
*}
end;

//0052CAE0
procedure TGauge.SetMinValue(Value:Longint);
begin
{*
 0052CAE0    push        ebp
 0052CAE1    mov         ebp,esp
 0052CAE3    add         esp,0FFFFFFEC
 0052CAE6    push        ebx
 0052CAE7    xor         ecx,ecx
 0052CAE9    mov         dword ptr [ebp-14],ecx
 0052CAEC    mov         ebx,eax
 0052CAEE    xor         eax,eax
 0052CAF0    push        ebp
 0052CAF1    push        52CB83
 0052CAF6    push        dword ptr fs:[eax]
 0052CAF9    mov         dword ptr fs:[eax],esp
 0052CAFC    cmp         edx,dword ptr [ebx+168]
>0052CB02    je          0052CB6D
 0052CB04    cmp         edx,dword ptr [ebx+16C]
>0052CB0A    jle         0052CB52
 0052CB0C    test        byte ptr [ebx+1C],1
>0052CB10    jne         0052CB52
 0052CB12    mov         dword ptr [ebp-10],80000001
 0052CB19    mov         byte ptr [ebp-0C],0
 0052CB1D    mov         eax,dword ptr [ebx+16C]
 0052CB23    dec         eax
 0052CB24    mov         dword ptr [ebp-8],eax
 0052CB27    mov         byte ptr [ebp-4],0
 0052CB2B    lea         eax,[ebp-10]
 0052CB2E    push        eax
 0052CB2F    push        1
 0052CB31    lea         edx,[ebp-14]
 0052CB34    mov         eax,[0055B34C];^SOutOfRange:TResStringRec
 0052CB39    call        LoadResString
 0052CB3E    mov         ecx,dword ptr [ebp-14]
 0052CB41    mov         dl,1
 0052CB43    mov         eax,[00475960];EInvalidOperation
 0052CB48    call        Exception.CreateFmt
 0052CB4D    call        @RaiseExcept
 0052CB52    mov         dword ptr [ebx+168],edx
 0052CB58    cmp         edx,dword ptr [ebx+170]
>0052CB5E    jle         0052CB66
 0052CB60    mov         dword ptr [ebx+170],edx
 0052CB66    mov         eax,ebx
 0052CB68    call        TControl.Refresh
 0052CB6D    xor         eax,eax
 0052CB6F    pop         edx
 0052CB70    pop         ecx
 0052CB71    pop         ecx
 0052CB72    mov         dword ptr fs:[eax],edx
 0052CB75    push        52CB8A
 0052CB7A    lea         eax,[ebp-14]
 0052CB7D    call        @LStrClr
 0052CB82    ret
>0052CB83    jmp         @HandleFinally
>0052CB88    jmp         0052CB7A
 0052CB8A    pop         ebx
 0052CB8B    mov         esp,ebp
 0052CB8D    pop         ebp
 0052CB8E    ret
*}
end;

//0052CB90
procedure TGauge.SetMaxValue(Value:Longint);
begin
{*
 0052CB90    push        ebp
 0052CB91    mov         ebp,esp
 0052CB93    add         esp,0FFFFFFEC
 0052CB96    push        ebx
 0052CB97    xor         ecx,ecx
 0052CB99    mov         dword ptr [ebp-14],ecx
 0052CB9C    mov         ebx,eax
 0052CB9E    xor         eax,eax
 0052CBA0    push        ebp
 0052CBA1    push        52CC33
 0052CBA6    push        dword ptr fs:[eax]
 0052CBA9    mov         dword ptr fs:[eax],esp
 0052CBAC    cmp         edx,dword ptr [ebx+16C]
>0052CBB2    je          0052CC1D
 0052CBB4    cmp         edx,dword ptr [ebx+168]
>0052CBBA    jge         0052CC02
 0052CBBC    test        byte ptr [ebx+1C],1
>0052CBC0    jne         0052CC02
 0052CBC2    mov         eax,dword ptr [ebx+168]
 0052CBC8    inc         eax
 0052CBC9    mov         dword ptr [ebp-10],eax
 0052CBCC    mov         byte ptr [ebp-0C],0
 0052CBD0    mov         dword ptr [ebp-8],7FFFFFFF
 0052CBD7    mov         byte ptr [ebp-4],0
 0052CBDB    lea         eax,[ebp-10]
 0052CBDE    push        eax
 0052CBDF    push        1
 0052CBE1    lea         edx,[ebp-14]
 0052CBE4    mov         eax,[0055B34C];^SOutOfRange:TResStringRec
 0052CBE9    call        LoadResString
 0052CBEE    mov         ecx,dword ptr [ebp-14]
 0052CBF1    mov         dl,1
 0052CBF3    mov         eax,[00475960];EInvalidOperation
 0052CBF8    call        Exception.CreateFmt
 0052CBFD    call        @RaiseExcept
 0052CC02    mov         dword ptr [ebx+16C],edx
 0052CC08    cmp         edx,dword ptr [ebx+170]
>0052CC0E    jge         0052CC16
 0052CC10    mov         dword ptr [ebx+170],edx
 0052CC16    mov         eax,ebx
 0052CC18    call        TControl.Refresh
 0052CC1D    xor         eax,eax
 0052CC1F    pop         edx
 0052CC20    pop         ecx
 0052CC21    pop         ecx
 0052CC22    mov         dword ptr fs:[eax],edx
 0052CC25    push        52CC3A
 0052CC2A    lea         eax,[ebp-14]
 0052CC2D    call        @LStrClr
 0052CC32    ret
>0052CC33    jmp         @HandleFinally
>0052CC38    jmp         0052CC2A
 0052CC3A    pop         ebx
 0052CC3B    mov         esp,ebp
 0052CC3D    pop         ebp
 0052CC3E    ret
*}
end;

//0052CC40
procedure TGauge.SetProgress(Value:Longint);
begin
{*
 0052CC40    push        ebx
 0052CC41    push        esi
 0052CC42    push        edi
 0052CC43    mov         esi,edx
 0052CC45    mov         ebx,eax
 0052CC47    mov         eax,ebx
 0052CC49    call        TGauge.GetPercentDone
 0052CC4E    mov         edi,eax
 0052CC50    mov         eax,dword ptr [ebx+168]
 0052CC56    cmp         esi,eax
>0052CC58    jge         0052CC5E
 0052CC5A    mov         esi,eax
>0052CC5C    jmp         0052CC6A
 0052CC5E    mov         eax,dword ptr [ebx+16C]
 0052CC64    cmp         esi,eax
>0052CC66    jle         0052CC6A
 0052CC68    mov         esi,eax
 0052CC6A    cmp         esi,dword ptr [ebx+170]
>0052CC70    je          0052CC8A
 0052CC72    mov         dword ptr [ebx+170],esi
 0052CC78    mov         eax,ebx
 0052CC7A    call        TGauge.GetPercentDone
 0052CC7F    cmp         edi,eax
>0052CC81    je          0052CC8A
 0052CC83    mov         eax,ebx
 0052CC85    call        TControl.Refresh
 0052CC8A    pop         edi
 0052CC8B    pop         esi
 0052CC8C    pop         ebx
 0052CC8D    ret
*}
end;

end.