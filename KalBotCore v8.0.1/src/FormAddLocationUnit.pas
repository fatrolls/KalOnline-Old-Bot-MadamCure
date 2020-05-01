//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FormAddLocationUnit;

interface

uses
  SysUtils, Classes, Spin, StdCtrls;

type
  TFormAddLocation = class(TForm)
  published
    SpinEditMapIndex:TSpinEdit;//f2F8
    SpinEditCoordX:TSpinEdit;//f2FC
    SpinEditCoordY:TSpinEdit;//f300
    SpinEditCoordZ:TSpinEdit;//f304
    LblMapIndex:TLabel;//f308
    EditDescription:TEdit;//f30C
    LblCoordX:TLabel;//f310
    LblCoordY:TLabel;//f314
    LblCoordZ:TLabel;//f318
    LblMapDescription:TLabel;//f31C
    BtnGetCurCoord:TButton;//f320
    BtnConfirm:TButton;//f324
    BtnCancel:TButton;//f328
    procedure BtnGetCurCoordClick(Sender:TObject);//0052FC40
  public
    f32C:dword;//f32C
    f330:dword;//f330
    //constructor Create(?:?; ?:?);//0052FAF8
  end;
    //function sub_0052FB5C(?:TFormAddLocation; ?:?):?;//0052FB5C

implementation

{$R *.DFM}

//0052FAF8
{*constructor TFormAddLocation.Create(?:?; ?:?);
begin
 0052FAF8    push        ebp
 0052FAF9    mov         ebp,esp
 0052FAFB    add         esp,0FFFFFFF4
 0052FAFE    test        dl,dl
>0052FB00    je          0052FB0A
 0052FB02    add         esp,0FFFFFFF0
 0052FB05    call        @ClassCreate
 0052FB0A    mov         dword ptr [ebp-0C],ecx
 0052FB0D    mov         byte ptr [ebp-5],dl
 0052FB10    mov         dword ptr [ebp-4],eax
 0052FB13    mov         ecx,dword ptr [ebp-0C]
 0052FB16    xor         edx,edx
 0052FB18    mov         eax,dword ptr [ebp-4]
 0052FB1B    call        TCustomForm.Create
 0052FB20    mov         eax,dword ptr [ebp-4]
 0052FB23    mov         edx,dword ptr [ebp+0C]
 0052FB26    mov         dword ptr [eax+32C],edx
 0052FB2C    mov         eax,dword ptr [ebp-4]
 0052FB2F    mov         edx,dword ptr [ebp+8]
 0052FB32    mov         dword ptr [eax+330],edx
 0052FB38    mov         eax,dword ptr [ebp-4]
 0052FB3B    cmp         byte ptr [ebp-5],0
>0052FB3F    je          0052FB50
 0052FB41    call        @AfterConstruction
 0052FB46    pop         dword ptr fs:[0]
 0052FB4D    add         esp,0C
 0052FB50    mov         eax,dword ptr [ebp-4]
 0052FB53    mov         esp,ebp
 0052FB55    pop         ebp
 0052FB56    ret         8
end;*}

//0052FB5C
{*function sub_0052FB5C(?:TFormAddLocation; ?:?):?;
begin
 0052FB5C    push        ebp
 0052FB5D    mov         ebp,esp
 0052FB5F    add         esp,0FFFFFFF0
 0052FB62    push        ebx
 0052FB63    push        esi
 0052FB64    push        edi
 0052FB65    xor         ecx,ecx
 0052FB67    mov         dword ptr [ebp-10],ecx
 0052FB6A    mov         dword ptr [ebp-8],edx
 0052FB6D    mov         dword ptr [ebp-4],eax
 0052FB70    xor         eax,eax
 0052FB72    push        ebp
 0052FB73    push        52FC2C
 0052FB78    push        dword ptr fs:[eax]
 0052FB7B    mov         dword ptr fs:[eax],esp
 0052FB7E    mov         byte ptr [ebp-9],1
 0052FB82    xor         eax,eax
 0052FB84    push        ebp
 0052FB85    push        52FC08
 0052FB8A    push        dword ptr fs:[eax]
 0052FB8D    mov         dword ptr fs:[eax],esp
 0052FB90    mov         eax,dword ptr [ebp-4]
 0052FB93    mov         eax,dword ptr [eax+2F8]
 0052FB99    call        TSpinEdit.GetValue
 0052FB9E    mov         edx,dword ptr [ebp-8]
 0052FBA1    mov         byte ptr [edx],al
 0052FBA3    mov         eax,dword ptr [ebp-4]
 0052FBA6    mov         eax,dword ptr [eax+2FC]
 0052FBAC    call        TSpinEdit.GetValue
 0052FBB1    mov         edx,dword ptr [ebp-8]
 0052FBB4    mov         dword ptr [edx+4],eax
 0052FBB7    mov         eax,dword ptr [ebp-4]
 0052FBBA    mov         eax,dword ptr [eax+300]
 0052FBC0    call        TSpinEdit.GetValue
 0052FBC5    mov         edx,dword ptr [ebp-8]
 0052FBC8    mov         dword ptr [edx+8],eax
 0052FBCB    mov         eax,dword ptr [ebp-4]
 0052FBCE    mov         eax,dword ptr [eax+304]
 0052FBD4    call        TSpinEdit.GetValue
 0052FBD9    mov         edx,dword ptr [ebp-8]
 0052FBDC    mov         dword ptr [edx+0C],eax
 0052FBDF    lea         edx,[ebp-10]
 0052FBE2    mov         eax,dword ptr [ebp-4]
 0052FBE5    mov         eax,dword ptr [eax+30C]
 0052FBEB    call        TControl.GetText
 0052FBF0    mov         edx,dword ptr [ebp-10]
 0052FBF3    mov         eax,dword ptr [ebp-8]
 0052FBF6    add         eax,10
 0052FBF9    call        @LStrAsg
 0052FBFE    xor         eax,eax
 0052FC00    pop         edx
 0052FC01    pop         ecx
 0052FC02    pop         ecx
 0052FC03    mov         dword ptr fs:[eax],edx
>0052FC06    jmp         0052FC16
>0052FC08    jmp         @HandleAnyException
 0052FC0D    mov         byte ptr [ebp-9],0
 0052FC11    call        @DoneExcept
 0052FC16    xor         eax,eax
 0052FC18    pop         edx
 0052FC19    pop         ecx
 0052FC1A    pop         ecx
 0052FC1B    mov         dword ptr fs:[eax],edx
 0052FC1E    push        52FC33
 0052FC23    lea         eax,[ebp-10]
 0052FC26    call        @LStrClr
 0052FC2B    ret
>0052FC2C    jmp         @HandleFinally
>0052FC31    jmp         0052FC23
 0052FC33    mov         al,byte ptr [ebp-9]
 0052FC36    pop         edi
 0052FC37    pop         esi
 0052FC38    pop         ebx
 0052FC39    mov         esp,ebp
 0052FC3B    pop         ebp
 0052FC3C    ret
end;*}

//0052FC40
procedure TFormAddLocation.BtnGetCurCoordClick(Sender:TObject);
begin
{*
 0052FC40    push        ebp
 0052FC41    mov         ebp,esp
 0052FC43    add         esp,0FFFFFFF8
 0052FC46    mov         dword ptr [ebp-8],edx
 0052FC49    mov         dword ptr [ebp-4],eax
 0052FC4C    mov         eax,dword ptr [ebp-4]
 0052FC4F    mov         eax,dword ptr [eax+32C];TFormAddLocation.?f32C:dword
 0052FC55    cmp         dword ptr [eax+40],0
>0052FC59    je          0052FCCC
 0052FC5B    mov         eax,dword ptr [ebp-4]
 0052FC5E    mov         eax,dword ptr [eax+330];TFormAddLocation.?f330:dword
 0052FC64    mov         edx,dword ptr [eax+14]
 0052FC67    mov         eax,dword ptr [ebp-4]
 0052FC6A    mov         eax,dword ptr [eax+2F8];TFormAddLocation.SpinEditMapIndex:TSpinEdit
 0052FC70    call        TSpinEdit.SetValue
 0052FC75    mov         eax,dword ptr [ebp-4]
 0052FC78    mov         eax,dword ptr [eax+32C];TFormAddLocation.?f32C:dword
 0052FC7E    mov         eax,dword ptr [eax+40]
 0052FC81    mov         edx,dword ptr [eax+10]
 0052FC84    mov         eax,dword ptr [ebp-4]
 0052FC87    mov         eax,dword ptr [eax+2FC];TFormAddLocation.SpinEditCoordX:TSpinEdit
 0052FC8D    call        TSpinEdit.SetValue
 0052FC92    mov         eax,dword ptr [ebp-4]
 0052FC95    mov         eax,dword ptr [eax+32C];TFormAddLocation.?f32C:dword
 0052FC9B    mov         eax,dword ptr [eax+40]
 0052FC9E    mov         edx,dword ptr [eax+14]
 0052FCA1    mov         eax,dword ptr [ebp-4]
 0052FCA4    mov         eax,dword ptr [eax+300];TFormAddLocation.SpinEditCoordY:TSpinEdit
 0052FCAA    call        TSpinEdit.SetValue
 0052FCAF    mov         eax,dword ptr [ebp-4]
 0052FCB2    mov         eax,dword ptr [eax+32C];TFormAddLocation.?f32C:dword
 0052FCB8    mov         eax,dword ptr [eax+40]
 0052FCBB    mov         edx,dword ptr [eax+18]
 0052FCBE    mov         eax,dword ptr [ebp-4]
 0052FCC1    mov         eax,dword ptr [eax+304];TFormAddLocation.SpinEditCoordZ:TSpinEdit
 0052FCC7    call        TSpinEdit.SetValue
 0052FCCC    pop         ecx
 0052FCCD    pop         ecx
 0052FCCE    pop         ebp
 0052FCCF    ret
*}
end;

end.