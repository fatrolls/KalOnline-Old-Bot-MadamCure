//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FormSelectPlayerUnit;

interface

uses
  SysUtils, Classes, Controls, ActnMan, ActnCtrls, ActnList, ComCtrls;

type
  TFormSelectPlayer = class(TForm)
  published
    ImageList1:TImageList;//f2F8
    ActionManager1:TActionManager;//f2FC
    ActionToolBar1:TActionToolBar;//f300
    ActionRefreshPlayers:TAction;//f304
    ListViewPlayers:TListView;//f308
    StatusBar1:TStatusBar;//f30C
    ActionAddPlayer:TAction;//f310
    procedure ListViewPlayersDblClick(Sender:TObject);//0052F778
    //procedure ListViewPlayersColumnClick(?:?; ?:?);//0052F79C
    procedure FormCreate(Sender:TObject);//0052F7E8
    //procedure ActionAddPlayerExecute(?:?);//0052F71C
    //procedure ActionRefreshPlayersExecute(?:?);//0052F5A4
    procedure FormShow(Sender:TObject);//0052F6C4
    //procedure ActionAddPlayerUpdate(?:?);//0052F6E8
  public
    f314:String;//f314
    f318:Integer;//f318
    f31C:byte;//f31C
  end;

implementation

{$R *.DFM}

//0052F5A4
{*procedure TFormSelectPlayer.ActionRefreshPlayersExecute(?:?);
begin
 0052F5A4    push        ebp
 0052F5A5    mov         ebp,esp
 0052F5A7    add         esp,0FFFFFFE4
 0052F5AA    xor         ecx,ecx
 0052F5AC    mov         dword ptr [ebp-1C],ecx
 0052F5AF    mov         dword ptr [ebp-18],edx
 0052F5B2    mov         dword ptr [ebp-4],eax
 0052F5B5    xor         eax,eax
 0052F5B7    push        ebp
 0052F5B8    push        52F6B8
 0052F5BD    push        dword ptr fs:[eax]
 0052F5C0    mov         dword ptr fs:[eax],esp
 0052F5C3    mov         eax,dword ptr [ebp-4]
 0052F5C6    mov         eax,dword ptr [eax+308];TFormSelectPlayer.ListViewPlayers:TListView
 0052F5CC    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0052F5D2    call        TListItems.Clear
 0052F5D7    mov         eax,dword ptr [ebp-4]
 0052F5DA    mov         eax,dword ptr [eax+308];TFormSelectPlayer.ListViewPlayers:TListView
 0052F5E0    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0052F5E6    call        TListItems.BeginUpdate
 0052F5EB    mov         eax,[0055B21C];^gvar_0055E118
 0052F5F0    mov         eax,dword ptr [eax]
 0052F5F2    mov         eax,dword ptr [eax+5C4]
 0052F5F8    call        00534900
 0052F5FD    dec         eax
 0052F5FE    test        eax,eax
>0052F600    jl          0052F68E
 0052F606    inc         eax
 0052F607    mov         dword ptr [ebp-10],eax
 0052F60A    mov         dword ptr [ebp-0C],0
 0052F611    mov         eax,[0055B21C];^gvar_0055E118
 0052F616    mov         eax,dword ptr [eax]
 0052F618    mov         eax,dword ptr [eax+5C4]
 0052F61E    mov         edx,dword ptr [ebp-0C]
 0052F621    call        00535210
 0052F626    mov         dword ptr [ebp-8],eax
 0052F629    mov         eax,dword ptr [ebp-4]
 0052F62C    mov         eax,dword ptr [eax+308];TFormSelectPlayer.ListViewPlayers:TListView
 0052F632    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0052F638    call        004AE674
 0052F63D    mov         dword ptr [ebp-14],eax
 0052F640    mov         eax,dword ptr [ebp-8]
 0052F643    mov         edx,dword ptr [eax+4]
 0052F646    mov         eax,dword ptr [ebp-14]
 0052F649    call        004ADF4C
 0052F64E    lea         edx,[ebp-1C]
 0052F651    mov         eax,dword ptr [ebp-8]
 0052F654    movzx       eax,byte ptr [eax+78]
 0052F658    call        IntToStr
 0052F65D    mov         edx,dword ptr [ebp-1C]
 0052F660    mov         eax,dword ptr [ebp-14]
 0052F663    mov         eax,dword ptr [eax+8]
 0052F666    mov         ecx,dword ptr [eax]
 0052F668    call        dword ptr [ecx+38]
 0052F66B    mov         eax,dword ptr [ebp-8]
 0052F66E    movzx       eax,byte ptr [eax+8]
 0052F672    mov         edx,dword ptr ds:[55B348];^gvar_0054E2BC:array[4] of ?
 0052F678    mov         edx,dword ptr [edx+eax*4]
 0052F67B    mov         eax,dword ptr [ebp-14]
 0052F67E    mov         eax,dword ptr [eax+8]
 0052F681    mov         ecx,dword ptr [eax]
 0052F683    call        dword ptr [ecx+38]
 0052F686    inc         dword ptr [ebp-0C]
 0052F689    dec         dword ptr [ebp-10]
>0052F68C    jne         0052F611
 0052F68E    mov         eax,dword ptr [ebp-4]
 0052F691    mov         eax,dword ptr [eax+308];TFormSelectPlayer.ListViewPlayers:TListView
 0052F697    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0052F69D    call        TListItems.EndUpdate
 0052F6A2    xor         eax,eax
 0052F6A4    pop         edx
 0052F6A5    pop         ecx
 0052F6A6    pop         ecx
 0052F6A7    mov         dword ptr fs:[eax],edx
 0052F6AA    push        52F6BF
 0052F6AF    lea         eax,[ebp-1C]
 0052F6B2    call        @LStrClr
 0052F6B7    ret
>0052F6B8    jmp         @HandleFinally
>0052F6BD    jmp         0052F6AF
 0052F6BF    mov         esp,ebp
 0052F6C1    pop         ebp
 0052F6C2    ret
end;*}

//0052F6C4
procedure TFormSelectPlayer.FormShow(Sender:TObject);
begin
{*
 0052F6C4    push        ebp
 0052F6C5    mov         ebp,esp
 0052F6C7    add         esp,0FFFFFFF8
 0052F6CA    push        esi
 0052F6CB    mov         dword ptr [ebp-8],edx
 0052F6CE    mov         dword ptr [ebp-4],eax
 0052F6D1    mov         eax,dword ptr [ebp-4]
 0052F6D4    mov         eax,dword ptr [eax+304];TFormSelectPlayer.ActionRefreshPlayers:TAction
 0052F6DA    mov         si,0FFEF
 0052F6DE    call        @CallDynaInst;TCustomAction.sub_00483E7C
 0052F6E3    pop         esi
 0052F6E4    pop         ecx
 0052F6E5    pop         ecx
 0052F6E6    pop         ebp
 0052F6E7    ret
*}
end;

//0052F6E8
{*procedure TFormSelectPlayer.ActionAddPlayerUpdate(?:?);
begin
 0052F6E8    push        ebp
 0052F6E9    mov         ebp,esp
 0052F6EB    add         esp,0FFFFFFF8
 0052F6EE    mov         dword ptr [ebp-8],edx
 0052F6F1    mov         dword ptr [ebp-4],eax
 0052F6F4    mov         eax,dword ptr [ebp-4]
 0052F6F7    mov         eax,dword ptr [eax+308];TFormSelectPlayer.ListViewPlayers:TListView
 0052F6FD    mov         edx,dword ptr [eax]
 0052F6FF    call        dword ptr [edx+0CC];TListView.sub_004B0D54
 0052F705    test        eax,eax
 0052F707    setge       dl
 0052F70A    mov         eax,dword ptr [ebp-4]
 0052F70D    mov         eax,dword ptr [eax+310];TFormSelectPlayer.ActionAddPlayer:TAction
 0052F713    call        TVirtualListAction.SetEnabled
 0052F718    pop         ecx
 0052F719    pop         ecx
 0052F71A    pop         ebp
 0052F71B    ret
end;*}

//0052F71C
{*procedure TFormSelectPlayer.ActionAddPlayerExecute(?:?);
begin
 0052F71C    push        ebp
 0052F71D    mov         ebp,esp
 0052F71F    add         esp,0FFFFFFF8
 0052F722    mov         dword ptr [ebp-8],edx
 0052F725    mov         dword ptr [ebp-4],eax
 0052F728    mov         eax,dword ptr [ebp-4]
 0052F72B    mov         eax,dword ptr [eax+308];TFormSelectPlayer.ListViewPlayers:TListView
 0052F731    mov         edx,dword ptr [eax]
 0052F733    call        dword ptr [edx+0CC];TListView.sub_004B0D54
 0052F739    mov         edx,eax
 0052F73B    mov         eax,dword ptr [ebp-4]
 0052F73E    mov         eax,dword ptr [eax+308];TFormSelectPlayer.ListViewPlayers:TListView
 0052F744    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0052F74A    call        004AE758
 0052F74F    mov         edx,dword ptr [eax+24]
 0052F752    mov         eax,dword ptr [ebp-4]
 0052F755    add         eax,314;TFormSelectPlayer.?f314:String
 0052F75A    call        @LStrAsg
 0052F75F    mov         eax,dword ptr [ebp-4]
 0052F762    call        004EE9EC
 0052F767    mov         eax,dword ptr [ebp-4]
 0052F76A    mov         dword ptr [eax+24C],1;TFormSelectPlayer.FModalResult:TModalResult
 0052F774    pop         ecx
 0052F775    pop         ecx
 0052F776    pop         ebp
 0052F777    ret
end;*}

//0052F778
procedure TFormSelectPlayer.ListViewPlayersDblClick(Sender:TObject);
begin
{*
 0052F778    push        ebp
 0052F779    mov         ebp,esp
 0052F77B    add         esp,0FFFFFFF8
 0052F77E    push        esi
 0052F77F    mov         dword ptr [ebp-8],edx
 0052F782    mov         dword ptr [ebp-4],eax
 0052F785    mov         eax,dword ptr [ebp-4]
 0052F788    mov         eax,dword ptr [eax+310];TFormSelectPlayer.ActionAddPlayer:TAction
 0052F78E    mov         si,0FFEF
 0052F792    call        @CallDynaInst;TCustomAction.sub_00483E7C
 0052F797    pop         esi
 0052F798    pop         ecx
 0052F799    pop         ecx
 0052F79A    pop         ebp
 0052F79B    ret
*}
end;

//0052F79C
{*procedure TFormSelectPlayer.ListViewPlayersColumnClick(?:?; ?:?);
begin
 0052F79C    push        ebp
 0052F79D    mov         ebp,esp
 0052F79F    add         esp,0FFFFFFF4
 0052F7A2    mov         dword ptr [ebp-0C],ecx
 0052F7A5    mov         dword ptr [ebp-8],edx
 0052F7A8    mov         dword ptr [ebp-4],eax
 0052F7AB    mov         eax,dword ptr [ebp-4]
 0052F7AE    mov         al,byte ptr [eax+31C];TFormSelectPlayer.?f31C:byte
 0052F7B4    xor         al,1
 0052F7B6    mov         edx,dword ptr [ebp-4]
 0052F7B9    mov         byte ptr [edx+31C],al;TFormSelectPlayer.?f31C:byte
 0052F7BF    mov         eax,dword ptr [ebp-0C]
 0052F7C2    call        TCollectionItem.GetIndex
 0052F7C7    mov         edx,dword ptr [ebp-4]
 0052F7CA    mov         dword ptr [edx+318],eax;TFormSelectPlayer.?f318:Integer
 0052F7D0    mov         eax,dword ptr [ebp-8]
 0052F7D3    mov         edx,dword ptr ds:[4A6240];TCustomListView
 0052F7D9    call        @AsClass
 0052F7DE    call        004B283C
 0052F7E3    mov         esp,ebp
 0052F7E5    pop         ebp
 0052F7E6    ret
end;*}

//0052F7E8
procedure TFormSelectPlayer.FormCreate(Sender:TObject);
begin
{*
 0052F7E8    push        ebp
 0052F7E9    mov         ebp,esp
 0052F7EB    add         esp,0FFFFFFF8
 0052F7EE    mov         dword ptr [ebp-8],edx
 0052F7F1    mov         dword ptr [ebp-4],eax
 0052F7F4    mov         eax,dword ptr [ebp-4]
 0052F7F7    mov         byte ptr [eax+31C],1;TFormSelectPlayer.?f31C:byte
 0052F7FE    pop         ecx
 0052F7FF    pop         ecx
 0052F800    pop         ebp
 0052F801    ret
*}
end;

end.