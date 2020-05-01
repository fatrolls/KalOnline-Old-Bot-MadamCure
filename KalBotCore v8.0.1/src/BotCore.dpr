//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
program BotCore;

uses
  SysUtils, Classes;

{$R *.res}

//0053CAF0
begin
{*
 0053CAF0    push        ebp
 0053CAF1    mov         ebp,esp
 0053CAF3    add         esp,0FFFFFFF0
 0053CAF6    mov         eax,53C6A0
 0053CAFB    call        @InitExe
 0053CB00    mov         eax,[0055B4C8];^Application:TApplication
 0053CB05    mov         eax,dword ptr [eax]
 0053CB07    call        004F2D50
 0053CB0C    mov         ecx,dword ptr ds:[55B21C];^gvar_0055E118
 0053CB12    mov         eax,[0055B4C8];^Application:TApplication
 0053CB17    mov         eax,dword ptr [eax]
 0053CB19    mov         edx,dword ptr ds:[536478];TMainForm
 0053CB1F    call        004F2D70
 0053CB24    mov         ecx,dword ptr ds:[55B104];^gvar_0055E0E8
 0053CB2A    mov         eax,[0055B4C8];^Application:TApplication
 0053CB2F    mov         eax,dword ptr [eax]
 0053CB31    mov         edx,dword ptr ds:[52E8AC];TFormRadar
 0053CB37    call        004F2D70
 0053CB3C    mov         ecx,dword ptr ds:[55B100];^gvar_0055E0F0
 0053CB42    mov         eax,[0055B4C8];^Application:TApplication
 0053CB47    mov         eax,dword ptr [eax]
 0053CB49    mov         edx,dword ptr ds:[52F298];TFormSelectPlayer
 0053CB4F    call        004F2D70
 0053CB54    mov         eax,[0055B4C8];^Application:TApplication
 0053CB59    mov         eax,dword ptr [eax]
 0053CB5B    call        004F2E04
 0053CB60    call        @Halt0
*}
end.
