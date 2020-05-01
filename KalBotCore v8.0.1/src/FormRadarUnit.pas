//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FormRadarUnit;

interface

uses
  SysUtils, Classes, ExtCtrls, StdCtrls, ActnMan, ActnList, ;

type
  TFormRadar = class(TForm)
  published
    ImgRadar:TImage;//f2F8
    TimerRadarRefresh:TTimer;//f2FC
    LblPeopleNumber:TLabel;//f300
    CheckOnTop:TCheckBox;//f304
    BtnZoomIn:TButton;//f308
    BtnZoomOut:TButton;//f30C
    ActionManager1:TActionManager;//f310
    ActionZoomIn:TAction;//f314
    ActionZoomOut:TAction;//f318
    //procedure ActionZoomInExecute(?:?);//0052F1A8
    //procedure ActionZoomOutExecute(?:?);//0052F1E0
    //procedure ActionManager1Change(?:?);//0052F218
    procedure FormDestroy(Sender:TObject);//0052F188
    procedure FormCreate(Sender:TObject);//0052EB9C
    //procedure TimerRadarRefreshTimer(?:?);//0052EC90
    procedure CheckOnTopClick(Sender:TObject);//0052F11C
  public
    f31C:Single;//f31C
    f320:dword;//f320
    f324:TMiniMapManager;//f324
    //procedure v98(?:?); virtual;//v98//0052F158
  end;
    //procedure sub_0052F158(?:?);//0052F158

implementation

{$R *.DFM}

//0052EB9C
procedure TFormRadar.FormCreate(Sender:TObject);
begin
{*
 0052EB9C    push        ebp
 0052EB9D    mov         ebp,esp
 0052EB9F    add         esp,0FFFFFFE8
 0052EBA2    push        ebx
 0052EBA3    mov         dword ptr [ebp-8],edx
 0052EBA6    mov         dword ptr [ebp-4],eax
 0052EBA9    mov         eax,dword ptr [ebp-4]
 0052EBAC    xor         edx,edx
 0052EBAE    mov         dword ptr [eax+320],edx;TFormRadar.?f320:dword
 0052EBB4    mov         eax,dword ptr [ebp-4]
 0052EBB7    mov         dword ptr [eax+31C],1;TFormRadar.?f31C:Single
 0052EBC1    push        0
 0052EBC3    lea         eax,[ebp-18]
 0052EBC6    push        eax
 0052EBC7    push        0
 0052EBC9    push        30
 0052EBCB    call        user32.SystemParametersInfoA
 0052EBD0    mov         edx,dword ptr [ebp-10]
 0052EBD3    mov         eax,dword ptr [ebp-4]
 0052EBD6    sub         edx,dword ptr [eax+48]
 0052EBD9    sub         edx,5
 0052EBDC    mov         eax,dword ptr [ebp-4]
 0052EBDF    call        TTabSheet.SetLeft
 0052EBE4    mov         edx,dword ptr [ebp-0C]
 0052EBE7    mov         eax,dword ptr [ebp-4]
 0052EBEA    sub         edx,dword ptr [eax+4C]
 0052EBED    sub         edx,5
 0052EBF0    mov         eax,dword ptr [ebp-4]
 0052EBF3    call        TTabSheet.SetTop
 0052EBF8    mov         eax,dword ptr [ebp-4]
 0052EBFB    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052EC01    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0052EC07    call        0048A950
 0052EC0C    mov         edx,0FF
 0052EC11    mov         ecx,dword ptr [eax]
 0052EC13    call        dword ptr [ecx+40]
 0052EC16    mov         eax,dword ptr [ebp-4]
 0052EC19    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052EC1F    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0052EC25    call        0048A950
 0052EC2A    mov         edx,0FF
 0052EC2F    mov         ecx,dword ptr [eax]
 0052EC31    call        dword ptr [ecx+34]
 0052EC34    mov         eax,[0055B21C];^gvar_0055E118
 0052EC39    mov         eax,dword ptr [eax]
 0052EC3B    mov         eax,dword ptr [eax+608]
 0052EC41    push        eax
 0052EC42    mov         eax,dword ptr [ebp-4]
 0052EC45    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052EC4B    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0052EC51    call        0048A950
 0052EC56    mov         ecx,eax
 0052EC58    mov         dl,1
 0052EC5A    mov         eax,[0052D7DC];TMiniMapManager
 0052EC5F    call        TMiniMapManager.Create;TMiniMapManager.Create
 0052EC64    mov         edx,dword ptr [ebp-4]
 0052EC67    mov         dword ptr [edx+324],eax;TFormRadar.?f324:TMiniMapManager
 0052EC6D    mov         eax,dword ptr [ebp-4]
 0052EC70    mov         byte ptr [eax+1F8],1;TFormRadar.FDoubleBuffered:Boolean
 0052EC77    mov         eax,dword ptr [ebp-4]
 0052EC7A    mov         ebx,dword ptr [eax+310];TFormRadar.ActionManager1:TActionManager
 0052EC80    xor         edx,edx
 0052EC82    mov         eax,dword ptr [ebx+44];TActionManager.?f44:dword
 0052EC85    call        dword ptr [ebx+40];TActionManager.FOnChange
 0052EC88    pop         ebx
 0052EC89    mov         esp,ebp
 0052EC8B    pop         ebp
 0052EC8C    ret
*}
end;

//0052EC90
{*procedure TFormRadar.TimerRadarRefreshTimer(?:?);
begin
 0052EC90    push        ebp
 0052EC91    mov         ebp,esp
 0052EC93    add         esp,0FFFFFFD4
 0052EC96    xor         ecx,ecx
 0052EC98    mov         dword ptr [ebp-20],ecx
 0052EC9B    mov         dword ptr [ebp-1C],edx
 0052EC9E    mov         dword ptr [ebp-4],eax
 0052ECA1    xor         eax,eax
 0052ECA3    push        ebp
 0052ECA4    push        52F0C4
 0052ECA9    push        dword ptr fs:[eax]
 0052ECAC    mov         dword ptr fs:[eax],esp
 0052ECAF    mov         eax,[0055B21C];^gvar_0055E118
 0052ECB4    mov         eax,dword ptr [eax]
 0052ECB6    cmp         dword ptr [eax+5C4],0
>0052ECBD    je          0052F0AE
 0052ECC3    mov         eax,[0055B21C];^gvar_0055E118
 0052ECC8    mov         eax,dword ptr [eax]
 0052ECCA    mov         eax,dword ptr [eax+5C4]
 0052ECD0    cmp         dword ptr [eax+40],0
>0052ECD4    je          0052F0AE
 0052ECDA    lea         eax,[ebp-20]
 0052ECDD    push        eax
 0052ECDE    mov         eax,[0055B21C];^gvar_0055E118
 0052ECE3    mov         eax,dword ptr [eax]
 0052ECE5    mov         eax,dword ptr [eax+5C4]
 0052ECEB    call        00534900
 0052ECF0    mov         dword ptr [ebp-28],eax
 0052ECF3    mov         byte ptr [ebp-24],0
 0052ECF7    lea         edx,[ebp-28]
 0052ECFA    xor         ecx,ecx
 0052ECFC    mov         eax,52F0D8;'Players: %d'
 0052ED01    call        Format
 0052ED06    mov         edx,dword ptr [ebp-20]
 0052ED09    mov         eax,dword ptr [ebp-4]
 0052ED0C    mov         eax,dword ptr [eax+300];TFormRadar.LblPeopleNumber:TLabel
 0052ED12    call        TControl.SetText
 0052ED17    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0052ED1C    mov         eax,dword ptr [eax]
 0052ED1E    cmp         byte ptr [eax+3C],0
>0052ED22    je          0052ED82
 0052ED24    mov         eax,[0055B21C];^gvar_0055E118
 0052ED29    mov         eax,dword ptr [eax]
 0052ED2B    mov         eax,dword ptr [eax+5C4]
 0052ED31    call        00534900
 0052ED36    mov         edx,dword ptr [ebp-4]
 0052ED39    cmp         eax,dword ptr [edx+320];TFormRadar.?f320:dword
>0052ED3F    jle         0052ED54
 0052ED41    push        20001
 0052ED46    push        0
 0052ED48    push        52F0E4;'sounds\Robot_blip.ogg'
 0052ED4D    call        winmm.PlaySoundA
>0052ED52    jmp         0052ED82
 0052ED54    mov         eax,[0055B21C];^gvar_0055E118
 0052ED59    mov         eax,dword ptr [eax]
 0052ED5B    mov         eax,dword ptr [eax+5C4]
 0052ED61    call        00534900
 0052ED66    mov         edx,dword ptr [ebp-4]
 0052ED69    cmp         eax,dword ptr [edx+320];TFormRadar.?f320:dword
>0052ED6F    jge         0052ED82
 0052ED71    push        20001
 0052ED76    push        0
 0052ED78    push        52F0FC;'sounds\Robot_blip_2.ogg'
 0052ED7D    call        winmm.PlaySoundA
 0052ED82    mov         eax,[0055B21C];^gvar_0055E118
 0052ED87    mov         eax,dword ptr [eax]
 0052ED89    mov         eax,dword ptr [eax+5C4]
 0052ED8F    call        00534900
 0052ED94    mov         edx,dword ptr [ebp-4]
 0052ED97    mov         dword ptr [edx+320],eax;TFormRadar.?f320:dword
 0052ED9D    mov         eax,[0055E0E8];gvar_0055E0E8
 0052EDA2    cmp         byte ptr [eax+57],0
>0052EDA6    je          0052F0AE
 0052EDAC    mov         eax,dword ptr [ebp-4]
 0052EDAF    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052EDB5    call        00498D9C
 0052EDBA    mov         eax,dword ptr [eax+14]
 0052EDBD    mov         edx,808000
 0052EDC2    call        TBrush.SetColor
 0052EDC7    push        0FF
 0052EDCC    push        0FF
 0052EDD1    mov         eax,dword ptr [ebp-4]
 0052EDD4    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052EDDA    call        00498D9C
 0052EDDF    xor         ecx,ecx
 0052EDE1    xor         edx,edx
 0052EDE3    call        00487F84
 0052EDE8    mov         eax,dword ptr [ebp-4]
 0052EDEB    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052EDF1    call        00498D9C
 0052EDF6    mov         eax,dword ptr [eax+14]
 0052EDF9    mov         edx,80
 0052EDFE    call        TBrush.SetColor
 0052EE03    mov         eax,[0055B21C];^gvar_0055E118
 0052EE08    mov         eax,dword ptr [eax]
 0052EE0A    mov         eax,dword ptr [eax+5DC]
 0052EE10    cmp         dword ptr [eax+14],0
>0052EE14    jne         0052EE68
 0052EE16    mov         eax,[0055B21C];^gvar_0055E118
 0052EE1B    mov         eax,dword ptr [eax]
 0052EE1D    mov         eax,dword ptr [eax+5C4]
 0052EE23    mov         eax,dword ptr [eax+40]
 0052EE26    mov         eax,dword ptr [eax+14]
 0052EE29    push        eax
 0052EE2A    mov         eax,dword ptr [ebp-4]
 0052EE2D    mov         ax,word ptr [eax+31C];TFormRadar.?f31C:Single
 0052EE34    push        eax
 0052EE35    mov         eax,[0055B21C];^gvar_0055E118
 0052EE3A    mov         eax,dword ptr [eax]
 0052EE3C    mov         eax,dword ptr [eax+5C4]
 0052EE42    mov         eax,dword ptr [eax+40]
 0052EE45    mov         ecx,dword ptr [eax+10]
 0052EE48    mov         eax,[0055B21C];^gvar_0055E118
 0052EE4D    mov         eax,dword ptr [eax]
 0052EE4F    mov         eax,dword ptr [eax+5DC]
 0052EE55    mov         dl,byte ptr [eax+14]
 0052EE58    mov         eax,dword ptr [ebp-4]
 0052EE5B    mov         eax,dword ptr [eax+324];TFormRadar.?f324:TMiniMapManager
 0052EE61    call        0052E2E4
>0052EE66    jmp         0052EEB8
 0052EE68    mov         eax,[0055B21C];^gvar_0055E118
 0052EE6D    mov         eax,dword ptr [eax]
 0052EE6F    mov         eax,dword ptr [eax+5C4]
 0052EE75    mov         eax,dword ptr [eax+40]
 0052EE78    mov         eax,dword ptr [eax+14]
 0052EE7B    push        eax
 0052EE7C    mov         eax,dword ptr [ebp-4]
 0052EE7F    mov         ax,word ptr [eax+31C];TFormRadar.?f31C:Single
 0052EE86    push        eax
 0052EE87    mov         eax,[0055B21C];^gvar_0055E118
 0052EE8C    mov         eax,dword ptr [eax]
 0052EE8E    mov         eax,dword ptr [eax+5C4]
 0052EE94    mov         eax,dword ptr [eax+40]
 0052EE97    mov         ecx,dword ptr [eax+10]
 0052EE9A    mov         eax,[0055B21C];^gvar_0055E118
 0052EE9F    mov         eax,dword ptr [eax]
 0052EEA1    mov         eax,dword ptr [eax+5DC]
 0052EEA7    mov         dl,byte ptr [eax+14]
 0052EEAA    mov         eax,dword ptr [ebp-4]
 0052EEAD    mov         eax,dword ptr [eax+324];TFormRadar.?f324:TMiniMapManager
 0052EEB3    call        0052DF50
 0052EEB8    mov         eax,dword ptr [ebp-4]
 0052EEBB    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052EEC1    call        00498D9C
 0052EEC6    mov         eax,dword ptr [eax+14]
 0052EEC9    mov         edx,0FF
 0052EECE    call        TBrush.SetColor
 0052EED3    mov         eax,[0055B21C];^gvar_0055E118
 0052EED8    mov         eax,dword ptr [eax]
 0052EEDA    mov         eax,dword ptr [eax+5C4]
 0052EEE0    call        00534900
 0052EEE5    dec         eax
 0052EEE6    test        eax,eax
>0052EEE8    jl          0052F050
 0052EEEE    inc         eax
 0052EEEF    mov         dword ptr [ebp-18],eax
 0052EEF2    mov         dword ptr [ebp-8],0
 0052EEF9    mov         eax,[0055B21C];^gvar_0055E118
 0052EEFE    mov         eax,dword ptr [eax]
 0052EF00    mov         eax,dword ptr [eax+5C4]
 0052EF06    mov         edx,dword ptr [ebp-8]
 0052EF09    call        00535210
 0052EF0E    mov         dword ptr [ebp-0C],eax
 0052EF11    mov         eax,[0055B21C];^gvar_0055E118
 0052EF16    mov         eax,dword ptr [eax]
 0052EF18    mov         eax,dword ptr [eax+5DC]
 0052EF1E    cmp         dword ptr [eax+14],0
>0052EF22    jne         0052EF96
 0052EF24    mov         eax,dword ptr [ebp-4]
 0052EF27    fild        dword ptr [eax+31C];TFormRadar.?f31C:Single
 0052EF2D    fdivr       dword ptr ds:[52F114];64:Single
 0052EF33    mov         eax,[0055B21C];^gvar_0055E118
 0052EF38    mov         eax,dword ptr [eax]
 0052EF3A    mov         eax,dword ptr [eax+5C4]
 0052EF40    mov         eax,dword ptr [eax+40]
 0052EF43    mov         eax,dword ptr [eax+10]
 0052EF46    mov         edx,dword ptr [ebp-0C]
 0052EF49    sub         eax,dword ptr [edx+10]
 0052EF4C    mov         dword ptr [ebp-2C],eax
 0052EF4F    fild        dword ptr [ebp-2C]
 0052EF52    fdivrp      st(1),st
 0052EF54    call        @ROUND
 0052EF59    mov         dword ptr [ebp-10],eax
 0052EF5C    mov         eax,dword ptr [ebp-4]
 0052EF5F    fild        dword ptr [eax+31C];TFormRadar.?f31C:Single
 0052EF65    fdivr       dword ptr ds:[52F114];64:Single
 0052EF6B    mov         eax,[0055B21C];^gvar_0055E118
 0052EF70    mov         eax,dword ptr [eax]
 0052EF72    mov         eax,dword ptr [eax+5C4]
 0052EF78    mov         eax,dword ptr [eax+40]
 0052EF7B    mov         eax,dword ptr [eax+14]
 0052EF7E    mov         edx,dword ptr [ebp-0C]
 0052EF81    sub         eax,dword ptr [edx+14]
 0052EF84    mov         dword ptr [ebp-2C],eax
 0052EF87    fild        dword ptr [ebp-2C]
 0052EF8A    fdivrp      st(1),st
 0052EF8C    call        @ROUND
 0052EF91    mov         dword ptr [ebp-14],eax
>0052EF94    jmp         0052F006
 0052EF96    mov         eax,dword ptr [ebp-4]
 0052EF99    fild        dword ptr [eax+31C];TFormRadar.?f31C:Single
 0052EF9F    fdivr       dword ptr ds:[52F118];32:Single
 0052EFA5    mov         eax,[0055B21C];^gvar_0055E118
 0052EFAA    mov         eax,dword ptr [eax]
 0052EFAC    mov         eax,dword ptr [eax+5C4]
 0052EFB2    mov         eax,dword ptr [eax+40]
 0052EFB5    mov         eax,dword ptr [eax+10]
 0052EFB8    mov         edx,dword ptr [ebp-0C]
 0052EFBB    sub         eax,dword ptr [edx+10]
 0052EFBE    mov         dword ptr [ebp-2C],eax
 0052EFC1    fild        dword ptr [ebp-2C]
 0052EFC4    fdivrp      st(1),st
 0052EFC6    call        @ROUND
 0052EFCB    mov         dword ptr [ebp-10],eax
 0052EFCE    mov         eax,dword ptr [ebp-4]
 0052EFD1    fild        dword ptr [eax+31C];TFormRadar.?f31C:Single
 0052EFD7    fdivr       dword ptr ds:[52F118];32:Single
 0052EFDD    mov         eax,[0055B21C];^gvar_0055E118
 0052EFE2    mov         eax,dword ptr [eax]
 0052EFE4    mov         eax,dword ptr [eax+5C4]
 0052EFEA    mov         eax,dword ptr [eax+40]
 0052EFED    mov         eax,dword ptr [eax+14]
 0052EFF0    mov         edx,dword ptr [ebp-0C]
 0052EFF3    sub         eax,dword ptr [edx+14]
 0052EFF6    mov         dword ptr [ebp-2C],eax
 0052EFF9    fild        dword ptr [ebp-2C]
 0052EFFC    fdivrp      st(1),st
 0052EFFE    call        @ROUND
 0052F003    mov         dword ptr [ebp-14],eax
 0052F006    mov         eax,82
 0052F00B    sub         eax,dword ptr [ebp-10]
 0052F00E    push        eax
 0052F00F    mov         eax,dword ptr [ebp-14]
 0052F012    add         eax,82
 0052F017    push        eax
 0052F018    mov         eax,dword ptr [ebp-4]
 0052F01B    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052F021    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0052F027    call        0048A950
 0052F02C    call        TBitmap.GetCanvas
 0052F031    mov         ecx,dword ptr [ebp-14]
 0052F034    add         ecx,7E
 0052F037    mov         edx,7E
 0052F03C    sub         edx,dword ptr [ebp-10]
 0052F03F    call        TCanvas.Ellipse
 0052F044    inc         dword ptr [ebp-8]
 0052F047    dec         dword ptr [ebp-18]
>0052F04A    jne         0052EEF9
 0052F050    mov         eax,dword ptr [ebp-4]
 0052F053    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052F059    call        00498D9C
 0052F05E    mov         eax,dword ptr [eax+14]
 0052F061    mov         edx,0FFFF
 0052F066    call        TBrush.SetColor
 0052F06B    push        82
 0052F070    push        82
 0052F075    mov         eax,dword ptr [ebp-4]
 0052F078    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052F07E    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0052F084    call        0048A950
 0052F089    call        TBitmap.GetCanvas
 0052F08E    mov         ecx,7E
 0052F093    mov         edx,7E
 0052F098    call        TCanvas.Ellipse
 0052F09D    mov         eax,dword ptr [ebp-4]
 0052F0A0    mov         eax,dword ptr [eax+2F8];TFormRadar.ImgRadar:TImage
 0052F0A6    mov         edx,dword ptr [eax]
 0052F0A8    call        dword ptr [edx+80];TImage.sub_004CB7F8
 0052F0AE    xor         eax,eax
 0052F0B0    pop         edx
 0052F0B1    pop         ecx
 0052F0B2    pop         ecx
 0052F0B3    mov         dword ptr fs:[eax],edx
 0052F0B6    push        52F0CB
 0052F0BB    lea         eax,[ebp-20]
 0052F0BE    call        @LStrClr
 0052F0C3    ret
>0052F0C4    jmp         @HandleFinally
>0052F0C9    jmp         0052F0BB
 0052F0CB    mov         esp,ebp
 0052F0CD    pop         ebp
 0052F0CE    ret
end;*}

//0052F11C
procedure TFormRadar.CheckOnTopClick(Sender:TObject);
begin
{*
 0052F11C    push        ebp
 0052F11D    mov         ebp,esp
 0052F11F    add         esp,0FFFFFFF8
 0052F122    mov         dword ptr [ebp-8],edx
 0052F125    mov         dword ptr [ebp-4],eax
 0052F128    mov         eax,dword ptr [ebp-4]
 0052F12B    mov         eax,dword ptr [eax+304];TFormRadar.CheckOnTop:TCheckBox
 0052F131    mov         edx,dword ptr [eax]
 0052F133    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0052F139    test        al,al
>0052F13B    je          0052F149
 0052F13D    mov         dl,3
 0052F13F    mov         eax,dword ptr [ebp-4]
 0052F142    call        TForm.SetFormStyle
>0052F147    jmp         0052F153
 0052F149    xor         edx,edx
 0052F14B    mov         eax,dword ptr [ebp-4]
 0052F14E    call        TForm.SetFormStyle
 0052F153    pop         ecx
 0052F154    pop         ecx
 0052F155    pop         ebp
 0052F156    ret
*}
end;

//0052F158
{*procedure sub_0052F158(?:?);
begin
 0052F158    push        ebp
 0052F159    mov         ebp,esp
 0052F15B    add         esp,0FFFFFFF8
 0052F15E    mov         dword ptr [ebp-8],edx
 0052F161    mov         dword ptr [ebp-4],eax
 0052F164    mov         edx,dword ptr [ebp-8]
 0052F167    mov         eax,dword ptr [ebp-4]
 0052F16A    call        004EC398
 0052F16F    mov         eax,dword ptr [ebp-8]
 0052F172    or          dword ptr [eax+8],8
 0052F176    call        user32.GetDesktopWindow
 0052F17B    mov         edx,dword ptr [ebp-8]
 0052F17E    mov         dword ptr [edx+1C],eax
 0052F181    pop         ecx
 0052F182    pop         ecx
 0052F183    pop         ebp
 0052F184    ret
end;*}

//0052F188
procedure TFormRadar.FormDestroy(Sender:TObject);
begin
{*
 0052F188    push        ebp
 0052F189    mov         ebp,esp
 0052F18B    add         esp,0FFFFFFF8
 0052F18E    mov         dword ptr [ebp-8],edx
 0052F191    mov         dword ptr [ebp-4],eax
 0052F194    mov         eax,dword ptr [ebp-4]
 0052F197    mov         eax,dword ptr [eax+324];TFormRadar.?f324:TMiniMapManager
 0052F19D    call        TObject.Free
 0052F1A2    pop         ecx
 0052F1A3    pop         ecx
 0052F1A4    pop         ebp
 0052F1A5    ret
*}
end;

//0052F1A8
{*procedure TFormRadar.ActionZoomInExecute(?:?);
begin
 0052F1A8    push        ebp
 0052F1A9    mov         ebp,esp
 0052F1AB    add         esp,0FFFFFFF8
 0052F1AE    push        ebx
 0052F1AF    mov         dword ptr [ebp-8],edx
 0052F1B2    mov         dword ptr [ebp-4],eax
 0052F1B5    mov         eax,dword ptr [ebp-4]
 0052F1B8    cmp         dword ptr [eax+31C],8;TFormRadar.?f31C:Single
>0052F1BF    jge         0052F1CA
 0052F1C1    mov         eax,dword ptr [ebp-4]
 0052F1C4    inc         dword ptr [eax+31C];TFormRadar.?f31C:Single
 0052F1CA    mov         eax,dword ptr [ebp-4]
 0052F1CD    mov         ebx,dword ptr [eax+310];TFormRadar.ActionManager1:TActionManager
 0052F1D3    xor         edx,edx
 0052F1D5    mov         eax,dword ptr [ebx+44];TActionManager.?f44:dword
 0052F1D8    call        dword ptr [ebx+40];TActionManager.FOnChange
 0052F1DB    pop         ebx
 0052F1DC    pop         ecx
 0052F1DD    pop         ecx
 0052F1DE    pop         ebp
 0052F1DF    ret
end;*}

//0052F1E0
{*procedure TFormRadar.ActionZoomOutExecute(?:?);
begin
 0052F1E0    push        ebp
 0052F1E1    mov         ebp,esp
 0052F1E3    add         esp,0FFFFFFF8
 0052F1E6    push        ebx
 0052F1E7    mov         dword ptr [ebp-8],edx
 0052F1EA    mov         dword ptr [ebp-4],eax
 0052F1ED    mov         eax,dword ptr [ebp-4]
 0052F1F0    cmp         dword ptr [eax+31C],1;TFormRadar.?f31C:Single
>0052F1F7    jle         0052F202
 0052F1F9    mov         eax,dword ptr [ebp-4]
 0052F1FC    dec         dword ptr [eax+31C];TFormRadar.?f31C:Single
 0052F202    mov         eax,dword ptr [ebp-4]
 0052F205    mov         ebx,dword ptr [eax+310];TFormRadar.ActionManager1:TActionManager
 0052F20B    xor         edx,edx
 0052F20D    mov         eax,dword ptr [ebx+44];TActionManager.?f44:dword
 0052F210    call        dword ptr [ebx+40];TActionManager.FOnChange
 0052F213    pop         ebx
 0052F214    pop         ecx
 0052F215    pop         ecx
 0052F216    pop         ebp
 0052F217    ret
end;*}

//0052F218
{*procedure TFormRadar.ActionManager1Change(?:?);
begin
 0052F218    push        ebp
 0052F219    mov         ebp,esp
 0052F21B    add         esp,0FFFFFFF8
 0052F21E    mov         dword ptr [ebp-8],edx
 0052F221    mov         dword ptr [ebp-4],eax
 0052F224    mov         eax,dword ptr [ebp-4]
 0052F227    cmp         dword ptr [eax+31C],8;TFormRadar.?f31C:Single
 0052F22E    setl        dl
 0052F231    mov         eax,dword ptr [ebp-4]
 0052F234    mov         eax,dword ptr [eax+314];TFormRadar.ActionZoomIn:TAction
 0052F23A    call        TVirtualListAction.SetEnabled
 0052F23F    mov         eax,dword ptr [ebp-4]
 0052F242    cmp         dword ptr [eax+31C],1;TFormRadar.?f31C:Single
 0052F249    setg        dl
 0052F24C    mov         eax,dword ptr [ebp-4]
 0052F24F    mov         eax,dword ptr [eax+318];TFormRadar.ActionZoomOut:TAction
 0052F255    call        TVirtualListAction.SetEnabled
 0052F25A    pop         ecx
 0052F25B    pop         ecx
 0052F25C    pop         ebp
 0052F25D    ret
end;*}

end.