//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit StdActns;

interface

uses
  SysUtils, Classes, Forms;

type
  THintAction = class(TCustomAction)
  public
    constructor Create; virtual;//v2C//004C3590
  end;
  TWindowAction = class(TAction)
  public
    ............FForm:TCustomForm;//fA0
    //procedure v10(?:?; ?:?); virtual;//v10//004C3664
    constructor Create; virtual;//v2C//004C3710
    //function v38(?:?):?; virtual;//v38//004C3604
    //procedure v3C(?:?); virtual;//v3C//004C36A4
    //function v54(?:?):?; virtual;//v54//004C35E0
  end;
  TFileExit = class(TCustomAction)
  public
    //function v38(?:?):?; virtual;//v38//004C37B0
    //procedure v40(?:?); virtual;//v40//004C3770
  end;
    constructor Create;//004C3590
    //function sub_004C35E0(?:?):?;//004C35E0
    //function sub_004C3604(?:?):?;//004C3604
    //procedure sub_004C3664(?:?; ?:?);//004C3664
    //procedure sub_004C36A4(?:?);//004C36A4
    //procedure sub_004C36D4(?:TWindowAction; ?:?);//004C36D4
    constructor Create;//004C3710
    //procedure sub_004C3770(?:?);//004C3770
    //function sub_004C37B0(?:?):?;//004C37B0

implementation

//004C3590
constructor THintAction.Create;
begin
{*
 004C3590    push        ebp
 004C3591    mov         ebp,esp
 004C3593    add         esp,0FFFFFFF4
 004C3596    test        dl,dl
>004C3598    je          004C35A2
 004C359A    add         esp,0FFFFFFF0
 004C359D    call        @ClassCreate
 004C35A2    mov         dword ptr [ebp-0C],ecx
 004C35A5    mov         byte ptr [ebp-5],dl
 004C35A8    mov         dword ptr [ebp-4],eax
 004C35AB    mov         ecx,dword ptr [ebp-0C]
 004C35AE    xor         edx,edx
 004C35B0    mov         eax,dword ptr [ebp-4]
 004C35B3    call        TCustomAction.Create
 004C35B8    mov         eax,dword ptr [ebp-4]
 004C35BB    mov         byte ptr [eax+60],0;THintAction.FDisableIfNoHandler:Boolean
 004C35BF    mov         eax,dword ptr [ebp-4]
 004C35C2    cmp         byte ptr [ebp-5],0
>004C35C6    je          004C35D7
 004C35C8    call        @AfterConstruction
 004C35CD    pop         dword ptr fs:[0]
 004C35D4    add         esp,0C
 004C35D7    mov         eax,dword ptr [ebp-4]
 004C35DA    mov         esp,ebp
 004C35DC    pop         ebp
 004C35DD    ret
*}
end;

//004C35E0
{*function sub_004C35E0(?:?):?;
begin
 004C35E0    push        ebp
 004C35E1    mov         ebp,esp
 004C35E3    add         esp,0FFFFFFF4
 004C35E6    mov         dword ptr [ebp-8],edx
 004C35E9    mov         dword ptr [ebp-4],eax
 004C35EC    mov         eax,dword ptr [ebp-8]
 004C35EF    mov         edx,dword ptr ds:[4E6708];TForm
 004C35F5    call        @AsClass
 004C35FA    mov         dword ptr [ebp-0C],eax
 004C35FD    mov         eax,dword ptr [ebp-0C]
 004C3600    mov         esp,ebp
 004C3602    pop         ebp
 004C3603    ret
end;*}

//004C3604
{*function sub_004C3604(?:?):?;
begin
 004C3604    push        ebp
 004C3605    mov         ebp,esp
 004C3607    add         esp,0FFFFFFF4
 004C360A    mov         dword ptr [ebp-8],edx
 004C360D    mov         dword ptr [ebp-4],eax
 004C3610    mov         eax,dword ptr [ebp-4]
 004C3613    cmp         dword ptr [eax+0A0],0;TWindowAction..............FForm:TCustomForm
>004C361A    je          004C362A
 004C361C    mov         eax,dword ptr [ebp-8]
 004C361F    mov         edx,dword ptr [ebp-4]
 004C3622    cmp         eax,dword ptr [edx+0A0];TWindowAction...............FForm:TCustomForm
>004C3628    je          004C3648
 004C362A    mov         eax,dword ptr [ebp-4]
 004C362D    cmp         dword ptr [eax+0A0],0;TWindowAction................FForm:TCustomForm
>004C3634    jne         004C3654
 004C3636    mov         eax,dword ptr [ebp-8]
 004C3639    mov         edx,dword ptr ds:[4E6708];TForm
 004C363F    call        @IsClass
 004C3644    test        al,al
>004C3646    je          004C3654
 004C3648    mov         eax,dword ptr [ebp-8]
 004C364B    cmp         byte ptr [eax+22F],2
>004C3652    je          004C3658
 004C3654    xor         eax,eax
>004C3656    jmp         004C365A
 004C3658    mov         al,1
 004C365A    mov         byte ptr [ebp-9],al
 004C365D    mov         al,byte ptr [ebp-9]
 004C3660    mov         esp,ebp
 004C3662    pop         ebp
 004C3663    ret
end;*}

//004C3664
{*procedure sub_004C3664(?:?; ?:?);
begin
 004C3664    push        ebp
 004C3665    mov         ebp,esp
 004C3667    add         esp,0FFFFFFF4
 004C366A    mov         byte ptr [ebp-9],cl
 004C366D    mov         dword ptr [ebp-8],edx
 004C3670    mov         dword ptr [ebp-4],eax
 004C3673    mov         cl,byte ptr [ebp-9]
 004C3676    mov         edx,dword ptr [ebp-8]
 004C3679    mov         eax,dword ptr [ebp-4]
 004C367C    call        00483E30
 004C3681    cmp         byte ptr [ebp-9],1
>004C3685    jne         004C369F
 004C3687    mov         eax,dword ptr [ebp-8]
 004C368A    mov         edx,dword ptr [ebp-4]
 004C368D    cmp         eax,dword ptr [edx+0A0];TWindowAction.................FForm:TCustomForm
>004C3693    jne         004C369F
 004C3695    xor         edx,edx
 004C3697    mov         eax,dword ptr [ebp-4]
 004C369A    call        004C36D4
 004C369F    mov         esp,ebp
 004C36A1    pop         ebp
 004C36A2    ret
end;*}

//004C36A4
{*procedure sub_004C36A4(?:?);
begin
 004C36A4    push        ebp
 004C36A5    mov         ebp,esp
 004C36A7    add         esp,0FFFFFFF8
 004C36AA    mov         dword ptr [ebp-8],edx
 004C36AD    mov         dword ptr [ebp-4],eax
 004C36B0    mov         edx,dword ptr [ebp-8]
 004C36B3    mov         eax,dword ptr [ebp-4]
 004C36B6    mov         ecx,dword ptr [eax]
 004C36B8    call        dword ptr [ecx+54];TWindowAction.sub_004C35E0
 004C36BB    call        TCustomForm.GetMDIChildCount
 004C36C0    test        eax,eax
 004C36C2    setg        dl
 004C36C5    mov         eax,dword ptr [ebp-4]
 004C36C8    call        TVirtualListAction.SetEnabled
 004C36CD    pop         ecx
 004C36CE    pop         ecx
 004C36CF    pop         ebp
 004C36D0    ret
end;*}

//004C36D4
{*procedure sub_004C36D4(?:TWindowAction; ?:?);
begin
 004C36D4    push        ebp
 004C36D5    mov         ebp,esp
 004C36D7    add         esp,0FFFFFFF8
 004C36DA    mov         dword ptr [ebp-8],edx
 004C36DD    mov         dword ptr [ebp-4],eax
 004C36E0    mov         eax,dword ptr [ebp-8]
 004C36E3    mov         edx,dword ptr [ebp-4]
 004C36E6    cmp         eax,dword ptr [edx+0A0];TWindowAction..................FForm:TCustomForm
>004C36EC    je          004C370B
 004C36EE    mov         eax,dword ptr [ebp-8]
 004C36F1    mov         edx,dword ptr [ebp-4]
 004C36F4    mov         dword ptr [edx+0A0],eax;TWindowAction...................FForm:TCustomForm
 004C36FA    cmp         dword ptr [ebp-8],0
>004C36FE    je          004C370B
 004C3700    mov         edx,dword ptr [ebp-4]
 004C3703    mov         eax,dword ptr [ebp-8]
 004C3706    call        00483020
 004C370B    pop         ecx
 004C370C    pop         ecx
 004C370D    pop         ebp
 004C370E    ret
end;*}

//004C3710
constructor TInternalMDIAction.Create;
begin
{*
 004C3710    push        ebp
 004C3711    mov         ebp,esp
 004C3713    add         esp,0FFFFFFF4
 004C3716    test        dl,dl
>004C3718    je          004C3722
 004C371A    add         esp,0FFFFFFF0
 004C371D    call        @ClassCreate
 004C3722    mov         dword ptr [ebp-0C],ecx
 004C3725    mov         byte ptr [ebp-5],dl
 004C3728    mov         dword ptr [ebp-4],eax
 004C372B    mov         ecx,dword ptr [ebp-0C]
 004C372E    xor         edx,edx
 004C3730    mov         eax,dword ptr [ebp-4]
 004C3733    call        004DBF30
 004C3738    mov         eax,dword ptr [ebp-4]
 004C373B    mov         byte ptr [eax+60],0;TWindowAction.FDisableIfNoHandler:Boolean
 004C373F    mov         eax,dword ptr [ebp-4]
 004C3742    test        byte ptr [eax+1C],10;TWindowAction.FComponentState:TComponentState
 004C3746    setne       dl
 004C3749    mov         eax,dword ptr [ebp-4]
 004C374C    call        TVirtualListAction.SetEnabled
 004C3751    mov         eax,dword ptr [ebp-4]
 004C3754    cmp         byte ptr [ebp-5],0
>004C3758    je          004C3769
 004C375A    call        @AfterConstruction
 004C375F    pop         dword ptr fs:[0]
 004C3766    add         esp,0C
 004C3769    mov         eax,dword ptr [ebp-4]
 004C376C    mov         esp,ebp
 004C376E    pop         ebp
 004C376F    ret
*}
end;

//004C3770
{*procedure sub_004C3770(?:?);
begin
 004C3770    push        ebp
 004C3771    mov         ebp,esp
 004C3773    add         esp,0FFFFFFF8
 004C3776    mov         dword ptr [ebp-8],edx
 004C3779    mov         dword ptr [ebp-4],eax
 004C377C    mov         eax,[0055B4C8];^Application:TApplication
 004C3781    mov         eax,dword ptr [eax]
 004C3783    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004C3787    je          004C37AB
 004C3789    mov         eax,[0055B4C8];^Application:TApplication
 004C378E    mov         eax,dword ptr [eax]
 004C3790    xor         ecx,ecx
 004C3792    mov         edx,2
 004C3797    call        004F34A4
 004C379C    mov         eax,[0055B4C8];^Application:TApplication
 004C37A1    mov         eax,dword ptr [eax]
 004C37A3    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004C37A6    call        004EE9EC
 004C37AB    pop         ecx
 004C37AC    pop         ecx
 004C37AD    pop         ebp
 004C37AE    ret
end;*}

//004C37B0
{*function sub_004C37B0(?:?):?;
begin
 004C37B0    push        ebp
 004C37B1    mov         ebp,esp
 004C37B3    add         esp,0FFFFFFF4
 004C37B6    mov         dword ptr [ebp-0C],edx
 004C37B9    mov         dword ptr [ebp-4],eax
 004C37BC    mov         byte ptr [ebp-5],1
 004C37C0    mov         al,byte ptr [ebp-5]
 004C37C3    mov         esp,ebp
 004C37C5    pop         ebp
 004C37C6    ret
end;*}

end.