//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit XPStyleActnCtrls;

interface

uses
  SysUtils, Classes;

type
  TXPStyleActionBars = class(TActionBarStyleEx)
  public
    //function v0(?:?; ?:?):?; virtual;//v0//005196B4
    //function v4(?:?):?; virtual;//v4//00519698
    //procedure v8(?:?); virtual;//v8//0051982C
    //function vC(?:?):?; virtual;//vC//005197DC
    //function v10(?:?):?; virtual;//v10//0051967C
    //function v14:?; virtual;//v14//00519814
  end;
    //function sub_0051967C(?:?):?;//0051967C
    //function sub_00519698(?:?):?;//00519698
    //function sub_005196B4(?:?; ?:?):?;//005196B4
    //function sub_005197DC(?:?):?;//005197DC
    //function sub_00519814:?;//00519814
    //procedure sub_0051982C(?:?);//0051982C

implementation

//0051967C
{*function sub_0051967C(?:?):?;
begin
 0051967C    push        ebp
 0051967D    mov         ebp,esp
 0051967F    add         esp,0FFFFFFF4
 00519682    mov         dword ptr [ebp-0C],edx
 00519685    mov         dword ptr [ebp-4],eax
 00519688    mov         eax,[0051698C];TXPStyleAddRemoveItem
 0051968D    mov         dword ptr [ebp-8],eax
 00519690    mov         eax,dword ptr [ebp-8]
 00519693    mov         esp,ebp
 00519695    pop         ebp
 00519696    ret
end;*}

//00519698
{*function sub_00519698(?:?):?;
begin
 00519698    push        ebp
 00519699    mov         ebp,esp
 0051969B    add         esp,0FFFFFFF4
 0051969E    mov         dword ptr [ebp-0C],edx
 005196A1    mov         dword ptr [ebp-4],eax
 005196A4    mov         eax,[004FA1C4];TXPColorMap
 005196A9    mov         dword ptr [ebp-8],eax
 005196AC    mov         eax,dword ptr [ebp-8]
 005196AF    mov         esp,ebp
 005196B1    pop         ebp
 005196B2    ret
end;*}

//005196B4
{*function sub_005196B4(?:?; ?:?):?;
begin
 005196B4    push        ebp
 005196B5    mov         ebp,esp
 005196B7    add         esp,0FFFFFFEC
 005196BA    mov         dword ptr [ebp-0C],ecx
 005196BD    mov         dword ptr [ebp-8],edx
 005196C0    mov         dword ptr [ebp-4],eax
 005196C3    mov         eax,dword ptr [ebp-8]
 005196C6    mov         edx,dword ptr ds:[4FB284];TCustomActionToolBar
 005196CC    call        @IsClass
 005196D1    test        al,al
>005196D3    je          00519736
 005196D5    mov         eax,dword ptr [ebp-0C]
 005196D8    call        0050CB98
 005196DD    test        al,al
>005196DF    je          005196EE
 005196E1    mov         eax,[0051644C];TXPStyleDropDownBtn
 005196E6    mov         dword ptr [ebp-10],eax
>005196E9    jmp         005197D5
 005196EE    mov         eax,dword ptr [ebp-0C]
 005196F1    call        TActionClientItem.GetAction
 005196F6    mov         edx,dword ptr ds:[4A0F28];TStaticListAction
 005196FC    call        @IsClass
 00519701    test        al,al
>00519703    jne         0051971C
 00519705    mov         eax,dword ptr [ebp-0C]
 00519708    call        TActionClientItem.GetAction
 0051970D    mov         edx,dword ptr ds:[4A0B24];TVirtualListAction
 00519713    call        @IsClass
 00519718    test        al,al
>0051971A    je          00519729
 0051971C    mov         eax,[004FAF04];TCustomComboControl
 00519721    mov         dword ptr [ebp-10],eax
>00519724    jmp         005197D5
 00519729    mov         eax,[005162DC];TXPStyleButton
 0051972E    mov         dword ptr [ebp-10],eax
>00519731    jmp         005197D5
 00519736    mov         eax,dword ptr [ebp-8]
 00519739    mov         edx,dword ptr ds:[4FF880];TCustomActionMainMenuBar
 0051973F    call        @IsClass
 00519744    test        al,al
>00519746    je          00519755
 00519748    mov         eax,[00515DB8];TXPStyleMenuButton
 0051974D    mov         dword ptr [ebp-10],eax
>00519750    jmp         005197D5
 00519755    mov         eax,dword ptr [ebp-8]
 00519758    mov         edx,dword ptr ds:[4FF35C];TCustomizeActionToolBar
 0051975E    call        @IsClass
 00519763    test        al,al
>00519765    je          005197B1
 00519767    mov         eax,dword ptr [ebp-8]
 0051976A    mov         edx,dword ptr ds:[4FF35C];TCustomizeActionToolBar
 00519770    call        @AsClass
 00519775    mov         dword ptr [ebp-14],eax
 00519778    mov         eax,dword ptr [ebp-14]
 0051977B    cmp         dword ptr [eax+2C4],0;TCustomizeActionToolBar.FRootMenu:TCustomActionMenuBar
>00519782    je          0051979D
 00519784    mov         eax,dword ptr [ebp-0C]
 00519787    call        0050CBCC
 0051978C    mov         edx,dword ptr [ebp-14]
 0051978F    mov         edx,dword ptr [edx+2C4];TCustomizeActionToolBar.FRootMenu:TCustomActionMenuBar
 00519795    cmp         eax,dword ptr [edx+31C]
>0051979B    je          005197A7
 0051979D    mov         eax,[00515C38];TXPStyleMenuItem
 005197A2    mov         dword ptr [ebp-10],eax
>005197A5    jmp         005197D5
 005197A7    mov         eax,[0051698C];TXPStyleAddRemoveItem
 005197AC    mov         dword ptr [ebp-10],eax
>005197AF    jmp         005197D5
 005197B1    mov         eax,dword ptr [ebp-8]
 005197B4    mov         edx,dword ptr ds:[4FF100];TCustomActionPopupMenu
 005197BA    call        @IsClass
 005197BF    test        al,al
>005197C1    je          005197CD
 005197C3    mov         eax,[00515C38];TXPStyleMenuItem
 005197C8    mov         dword ptr [ebp-10],eax
>005197CB    jmp         005197D5
 005197CD    mov         eax,[005162DC];TXPStyleButton
 005197D2    mov         dword ptr [ebp-10],eax
 005197D5    mov         eax,dword ptr [ebp-10]
 005197D8    mov         esp,ebp
 005197DA    pop         ebp
 005197DB    ret
end;*}

//005197DC
{*function sub_005197DC(?:?):?;
begin
 005197DC    push        ebp
 005197DD    mov         ebp,esp
 005197DF    add         esp,0FFFFFFF4
 005197E2    mov         dword ptr [ebp-8],edx
 005197E5    mov         dword ptr [ebp-4],eax
 005197E8    mov         eax,dword ptr [ebp-8]
 005197EB    mov         edx,dword ptr ds:[4FB284];TCustomActionToolBar
 005197F1    call        @IsClass
 005197F6    test        al,al
>005197F8    je          00519804
 005197FA    mov         eax,[005165D0];TXPStyleCustomizePopup
 005197FF    mov         dword ptr [ebp-0C],eax
>00519802    jmp         0051980C
 00519804    mov         eax,[00515F30];TXPStylePopupMenu
 00519809    mov         dword ptr [ebp-0C],eax
 0051980C    mov         eax,dword ptr [ebp-0C]
 0051980F    mov         esp,ebp
 00519811    pop         ebp
 00519812    ret
end;*}

//00519814
{*function sub_00519814:?;
begin
 00519814    push        ebp
 00519815    mov         ebp,esp
 00519817    add         esp,0FFFFFFF8
 0051981A    mov         dword ptr [ebp-4],eax
 0051981D    mov         eax,[00516808];TXPStyleToolScrollBtn
 00519822    mov         dword ptr [ebp-8],eax
 00519825    mov         eax,dword ptr [ebp-8]
 00519828    pop         ecx
 00519829    pop         ecx
 0051982A    pop         ebp
 0051982B    ret
end;*}

//0051982C
{*procedure sub_0051982C(?:?);
begin
 0051982C    push        ebp
 0051982D    mov         ebp,esp
 0051982F    add         esp,0FFFFFFF8
 00519832    mov         dword ptr [ebp-8],edx
 00519835    mov         dword ptr [ebp-4],eax
 00519838    mov         eax,dword ptr [ebp-8]
 0051983B    mov         edx,519854;'XP Style'
 00519840    call        @LStrAsg
 00519845    pop         ecx
 00519846    pop         ecx
 00519847    pop         ebp
 00519848    ret
end;*}

Initialization
//005198A4
{*
 005198A4    push        ebp
 005198A5    mov         ebp,esp
 005198A7    push        0
 005198A9    xor         eax,eax
 005198AB    push        ebp
 005198AC    push        51990B
 005198B1    push        dword ptr fs:[eax]
 005198B4    mov         dword ptr fs:[eax],esp
 005198B7    sub         dword ptr ds:[55E03C],1
>005198BE    jae         005198F5
 005198C0    mov         dl,1
 005198C2    mov         eax,[005195CC];TXPStyleActionBars
 005198C7    call        TObject.Create
 005198CC    mov         [0055E038],eax
 005198D1    lea         edx,[ebp-4]
 005198D4    mov         eax,[0055E038]
 005198D9    mov         ecx,dword ptr [eax]
 005198DB    call        dword ptr [ecx+8]
 005198DE    mov         edx,dword ptr [ebp-4]
 005198E1    mov         eax,[0055B0E4];DefaultActnBarStyle:AnsiString
 005198E6    call        @LStrAsg
 005198EB    mov         eax,[0055E038]
 005198F0    call        RegisterActnBarStyle
 005198F5    xor         eax,eax
 005198F7    pop         edx
 005198F8    pop         ecx
 005198F9    pop         ecx
 005198FA    mov         dword ptr fs:[eax],edx
 005198FD    push        519912
 00519902    lea         eax,[ebp-4]
 00519905    call        @LStrClr
 0051990A    ret
>0051990B    jmp         @HandleFinally
>00519910    jmp         00519902
 00519912    pop         ecx
 00519913    pop         ebp
 00519914    ret
*}
Finalization
//00519860
{*
 00519860    push        ebp
 00519861    mov         ebp,esp
 00519863    xor         eax,eax
 00519865    push        ebp
 00519866    push        51989B
 0051986B    push        dword ptr fs:[eax]
 0051986E    mov         dword ptr fs:[eax],esp
 00519871    inc         dword ptr ds:[55E03C]
>00519877    jne         0051988D
 00519879    mov         eax,[0055E038]
 0051987E    call        UnRegisterActnBarStyle
 00519883    mov         eax,[0055E038]
 00519888    call        TObject.Free
 0051988D    xor         eax,eax
 0051988F    pop         edx
 00519890    pop         ecx
 00519891    pop         ecx
 00519892    mov         dword ptr fs:[eax],edx
 00519895    push        5198A2
 0051989A    ret
>0051989B    jmp         @HandleFinally
>005198A0    jmp         0051989A
 005198A2    pop         ebp
 005198A3    ret
*}
end.