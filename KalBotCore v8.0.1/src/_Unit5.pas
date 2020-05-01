//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit5;

interface

uses
  SysUtils, Classes;

type
  TDASmallInt = array of ?;
//elSize = 2
//varType equivalent: varSmallint;
  TDACardinal = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  TDAInteger = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  TDANativeUInt = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  TDAAnsiString = array of String;
//elSize = 4
//varType equivalent: varStrArg;
  TDAUnicodeString = array of WideString;
//elSize = 4
//varType equivalent: varOleStr;
  MadException = class(TObject)
  public
    .:String;//f4
  end;
    //function sub_00408814(?:MadException; ?:AnsiString):?;//00408814

implementation

//00408814
{*function sub_00408814(?:MadException; ?:AnsiString):?;
begin
 00408814    push        ebx
 00408815    push        esi
 00408816    mov         esi,edx
 00408818    mov         eax,[0055B1E0];^gvar_0055C01C:MadException
 0040881D    cmp         dword ptr [eax],0
>00408820    je          00408834
 00408822    mov         eax,[0055B1E0];^gvar_0055C01C:MadException
 00408827    mov         eax,dword ptr [eax]
 00408829    mov         dl,1
 0040882B    call        TObject.Create
 00408830    mov         ebx,eax
>00408832    jmp         00408842
 00408834    mov         dl,1
 00408836    mov         eax,[004087A8];MadException
 0040883B    call        TObject.Create;MadException.Create
 00408840    mov         ebx,eax
 00408842    lea         eax,[ebx+4];MadException...:String
 00408845    mov         edx,esi
 00408847    call        @LStrAsg
 0040884C    mov         eax,ebx
 0040884E    pop         esi
 0040884F    pop         ebx
 00408850    ret
end;*}

end.