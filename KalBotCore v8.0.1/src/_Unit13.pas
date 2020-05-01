//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit13;

interface

uses
  SysUtils, Classes;

type
  _DynArr_13_1 = array of ?;
//elSize = 30;
  _DynArr_13_2 = array of ?;
//elSize = 1C;
  _DynArr_13_3 = array of ?;
//elSize = C;
  _Unit1313_4 = .4 = record//size=14
f10:String;//f10
end;;
  TFunctionInfo = TFunctionInfo = record//size=40
f18:String;//f18
f1C:_DynArr_13_1;//f1C
f20:_DynArr_13_2;//f20
f24:_DynArr_13_3;//f24
f2C:_Unit1313_4;//f2C
end;;
  _DynArr_13_8 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  TDATryRead = array of ?;
//elSize = C;
    //function sub_00410B68:?;//00410B68
    //function sub_00410B70:?;//00410B70
    //function sub_00410B78:?;//00410B78
    //function sub_00410B80:?;//00410B80
    //function sub_00410B88:?;//00410B88
    //function sub_004117C0(?:?):?;//004117C0
    //procedure sub_004118DC(?:?);//004118DC
    //procedure sub_00411BD0(?:?);//00411BD0
    //function sub_00411CB4(?:?):?;//00411CB4
    //procedure sub_004121A4(?:?);//004121A4
    //procedure sub_00412458(?:?);//00412458
    //procedure sub_00412948(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00412948
    //procedure sub_004149EC(?:?; ?:Integer; ?:?; ?:?; ?:?);//004149EC
    //procedure sub_00414A70(?:Pointer; ?:?);//00414A70
    //procedure sub_00414A88(?:?; ?:?; ?:?);//00414A88
    //procedure sub_00414AA4(?:?; ?:?; ?:?);//00414AA4
    //procedure sub_00414C40(?:?; ?:?; ?:?; ?:?; ?:?);//00414C40
    //procedure sub_00414D04(?:?; ?:?);//00414D04
    //procedure sub_00415270(?:?; ?:?);//00415270
    //procedure sub_00415688(?:?; ?:?);//00415688
    //procedure sub_00415720(?:?);//00415720
    //procedure sub_0041576C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0041576C
    //procedure sub_00415D08(?:Pointer; ?:?);//00415D08
    //function sub_00416F44(?:?):?;//00416F44
    //function sub_00416F48:?;//00416F48
    //function sub_00417010:?;//00417010
    //function sub_00417050:?;//00417050
    procedure sub_0041714C;//0041714C
    //function sub_00417184(?:?; ?:?; ?:?):?;//00417184
    //function sub_00417250(?:?; ?:?; ?:?; ?:?):?;//00417250

implementation

//00410B68
{*function sub_00410B68:?;
begin
 00410B68    mov         eax,403D14;@HandleAnyException
 00410B6D    ret
end;*}

//00410B70
{*function sub_00410B70:?;
begin
 00410B70    mov         eax,403E40;@HandleOnException
 00410B75    ret
end;*}

//00410B78
{*function sub_00410B78:?;
begin
 00410B78    mov         eax,404000;@HandleAutoException
 00410B7D    ret
end;*}

//00410B80
{*function sub_00410B80:?;
begin
 00410B80    mov         eax,403FC8;@HandleFinally
 00410B85    ret
end;*}

//00410B88
{*function sub_00410B88:?;
begin
 00410B88    mov         eax,404598;@Halt0
 00410B8D    ret
end;*}

//004117C0
{*function sub_004117C0(?:?):?;
begin
 004117C0    push        ebp
 004117C1    mov         ebp,esp
 004117C3    mov         al,1
 004117C5    mov         edx,dword ptr [ebp+8]
 004117C8    mov         edx,dword ptr [edx+58]
 004117CB    movzx       edx,word ptr [edx]
 004117CE    cmp         edx,0F0
>004117D4    jg          004117E5
>004117D6    je          00411817
 004117D8    sub         edx,66
>004117DB    je          004117F5
 004117DD    dec         edx
>004117DE    je          0041180C
>004117E0    jmp         0041187E
 004117E5    sub         edx,0F2
>004117EB    je          00411822
 004117ED    dec         edx
>004117EE    je          00411854
>004117F0    jmp         0041187E
 004117F5    mov         edx,dword ptr [ebp+8]
 004117F8    mov         edx,dword ptr [edx-4]
 004117FB    mov         byte ptr [edx],1
 004117FE    mov         edx,dword ptr [ebp+8]
 00411801    mov         edx,dword ptr [edx+18]
 00411804    mov         dword ptr [edx],2
 0041180A    pop         ebp
 0041180B    ret
 0041180C    mov         edx,dword ptr [ebp+8]
 0041180F    mov         edx,dword ptr [edx+68]
 00411812    mov         byte ptr [edx],1
 00411815    pop         ebp
 00411816    ret
 00411817    mov         edx,dword ptr [ebp+8]
 0041181A    mov         edx,dword ptr [edx+64]
 0041181D    mov         byte ptr [edx],1
 00411820    pop         ebp
 00411821    ret
 00411822    mov         edx,dword ptr [ebp+8]
 00411825    mov         edx,dword ptr [edx+60]
 00411828    mov         byte ptr [edx],1
 0041182B    mov         edx,dword ptr [ebp+8]
 0041182E    mov         edx,dword ptr [edx-8]
 00411831    cmp         byte ptr [edx],0F
>00411834    je          004118D7
 0041183A    mov         edx,dword ptr [ebp+8]
 0041183D    cmp         dword ptr [edx+14],0
>00411841    je          004118D7
 00411847    mov         edx,dword ptr [ebp+8]
 0041184A    mov         edx,dword ptr [edx+14]
 0041184D    xor         ecx,ecx
 0041184F    mov         dword ptr [edx+4],ecx
 00411852    pop         ebp
 00411853    ret
 00411854    mov         edx,dword ptr [ebp+8]
 00411857    mov         edx,dword ptr [edx+5C]
 0041185A    mov         byte ptr [edx],1
 0041185D    mov         edx,dword ptr [ebp+8]
 00411860    mov         edx,dword ptr [edx-8]
 00411863    cmp         byte ptr [edx],0F
>00411866    je          004118D7
 00411868    mov         edx,dword ptr [ebp+8]
 0041186B    cmp         dword ptr [edx+14],0
>0041186F    je          004118D7
 00411871    mov         edx,dword ptr [ebp+8]
 00411874    mov         edx,dword ptr [edx+14]
 00411877    xor         ecx,ecx
 00411879    mov         dword ptr [edx+4],ecx
 0041187C    pop         ebp
 0041187D    ret
 0041187E    mov         edx,dword ptr [ebp+8]
 00411881    mov         edx,dword ptr [edx+58]
 00411884    mov         dx,word ptr [edx]
 00411887    and         dx,0E7
 0041188C    cmp         dx,26
>00411890    jne         004118AC
 00411892    mov         edx,dword ptr [ebp+8]
 00411895    mov         edx,dword ptr [edx+58]
 00411898    movzx       edx,word ptr [edx]
 0041189B    shr         edx,3
 0041189E    and         dl,3
 004118A1    inc         edx
 004118A2    mov         ecx,dword ptr [ebp+8]
 004118A5    mov         ecx,dword ptr [ecx-0C]
 004118A8    mov         byte ptr [ecx],dl
>004118AA    jmp         004118D7
 004118AC    mov         edx,dword ptr [ebp+8]
 004118AF    mov         edx,dword ptr [edx+58]
 004118B2    mov         dx,word ptr [edx]
 004118B5    add         edx,0FFFFFF9C
 004118B8    sub         dx,2
>004118BC    jae         004118D5
 004118BE    mov         edx,dword ptr [ebp+8]
 004118C1    mov         edx,dword ptr [edx+58]
 004118C4    mov         dx,word ptr [edx]
 004118C7    sub         dl,60
 004118CA    inc         edx
 004118CB    mov         ecx,dword ptr [ebp+8]
 004118CE    mov         ecx,dword ptr [ecx-0C]
 004118D1    mov         byte ptr [ecx],dl
>004118D3    jmp         004118D7
 004118D5    xor         eax,eax
 004118D7    pop         ebp
 004118D8    ret
end;*}

//004118DC
{*procedure sub_004118DC(?:?);
begin
 004118DC    push        ebp
 004118DD    mov         ebp,esp
 004118DF    push        ebx
 004118E0    mov         eax,dword ptr [ebp+8]
 004118E3    mov         eax,dword ptr [eax+4C]
 004118E6    mov         edx,dword ptr [ebp+8]
 004118E9    add         edx,0FFFFFFF8
 004118EC    mov         ecx,dword ptr [edx]
 004118EE    mov         cl,byte ptr [ecx]
 004118F0    mov         byte ptr [eax],cl
 004118F2    mov         ecx,dword ptr [ebp+8]
 004118F5    mov         ecx,dword ptr [ecx+48]
 004118F8    mov         byte ptr [ecx],0
 004118FB    mov         cl,byte ptr [eax]
 004118FD    and         cl,0C0
 00411900    cmp         cl,0C0
 00411903    mov         ecx,dword ptr [ebp+8]
 00411906    mov         ecx,dword ptr [ecx+44]
 00411909    setne       byte ptr [ecx]
 0041190C    mov         cl,byte ptr [eax]
 0041190E    and         cl,7
 00411911    and         ecx,0FF
 00411917    mov         ebx,dword ptr [ebp+8]
 0041191A    mov         ebx,dword ptr [ebx+40]
 0041191D    mov         dword ptr [ebx],ecx
 0041191F    xor         ecx,ecx
 00411921    mov         cl,byte ptr [eax]
 00411923    shr         ecx,3
 00411926    and         ecx,7
 00411929    mov         ebx,dword ptr [ebp+8]
 0041192C    mov         ebx,dword ptr [ebx+3C]
 0041192F    mov         dword ptr [ebx],ecx
 00411931    mov         ecx,dword ptr [ebp+8]
 00411934    mov         ecx,dword ptr [ecx+34]
 00411937    xor         ebx,ebx
 00411939    mov         dword ptr [ecx],ebx
 0041193B    inc         dword ptr [edx]
 0041193D    mov         cl,byte ptr [eax]
 0041193F    and         cl,0C0
 00411942    sub         cl,40
>00411945    je          0041194E
 00411947    sub         cl,40
>0041194A    je          0041195C
>0041194C    jmp         00411983
 0041194E    mov         ecx,dword ptr [ebp+8]
 00411951    mov         ecx,dword ptr [ecx+30]
 00411954    mov         dword ptr [ecx],1
>0041195A    jmp         0041198D
 0041195C    mov         ecx,dword ptr [ebp+8]
 0041195F    mov         ecx,dword ptr [ecx+68]
 00411962    cmp         byte ptr [ecx],0
>00411965    je          00411975
 00411967    mov         ecx,dword ptr [ebp+8]
 0041196A    mov         ecx,dword ptr [ecx+30]
 0041196D    mov         dword ptr [ecx],2
>00411973    jmp         0041198D
 00411975    mov         ecx,dword ptr [ebp+8]
 00411978    mov         ecx,dword ptr [ecx+30]
 0041197B    mov         dword ptr [ecx],4
>00411981    jmp         0041198D
 00411983    mov         ecx,dword ptr [ebp+8]
 00411986    mov         ecx,dword ptr [ecx+30]
 00411989    xor         ebx,ebx
 0041198B    mov         dword ptr [ecx],ebx
 0041198D    mov         ecx,dword ptr [ebp+8]
 00411990    mov         ecx,dword ptr [ecx+44]
 00411993    cmp         byte ptr [ecx],0
>00411996    je          00411A8C
 0041199C    mov         ecx,dword ptr [ebp+8]
 0041199F    mov         ecx,dword ptr [ecx+68]
 004119A2    cmp         byte ptr [ecx],0
>004119A5    je          00411A8C
 004119AB    mov         ecx,dword ptr [ebp+8]
 004119AE    mov         ecx,dword ptr [ecx+40]
 004119B1    cmp         dword ptr [ecx],0
>004119B4    jl          004119E3
 004119B6    mov         ecx,dword ptr [ebp+8]
 004119B9    mov         ecx,dword ptr [ecx+40]
 004119BC    cmp         dword ptr [ecx],3
>004119BF    jg          004119E3
 004119C1    mov         ecx,dword ptr [ebp+8]
 004119C4    mov         ecx,dword ptr [ecx+40]
 004119C7    mov         ecx,dword ptr [ecx]
 004119C9    and         ecx,1
 004119CC    add         ecx,6
 004119CF    mov         ebx,dword ptr [ebp+8]
 004119D2    mov         ebx,dword ptr [ebx+38]
 004119D5    mov         dword ptr [ebx],ecx
 004119D7    mov         ecx,dword ptr [ebp+8]
 004119DA    mov         ecx,dword ptr [ecx+34]
 004119DD    mov         dword ptr [ecx],1
 004119E3    test        byte ptr [eax],0C0
>004119E6    jne         00411A10
 004119E8    mov         ecx,dword ptr [ebp+8]
 004119EB    mov         ecx,dword ptr [ecx+40]
 004119EE    cmp         dword ptr [ecx],6
>004119F1    jne         00411A10
 004119F3    mov         ecx,dword ptr [ebp+8]
 004119F6    mov         ecx,dword ptr [ecx+30]
 004119F9    mov         dword ptr [ecx],2
 004119FF    mov         ecx,dword ptr [ebp+8]
 00411A02    mov         ecx,dword ptr [ecx+40]
 00411A05    mov         dword ptr [ecx],0FFFFFFFF
>00411A0B    jmp         00411B33
 00411A10    mov         ecx,dword ptr [ebp+8]
 00411A13    mov         ecx,dword ptr [ecx+40]
 00411A16    mov         ecx,dword ptr [ecx]
 00411A18    cmp         ecx,7
>00411A1B    ja          00411B33
 00411A21    jmp         dword ptr [ecx*4+411A28]
 00411A21    dd          00411A48
 00411A21    dd          00411A48
 00411A21    dd          00411A59
 00411A21    dd          00411A59
 00411A21    dd          00411A6A
 00411A21    dd          00411A7B
 00411A21    dd          00411A59
 00411A21    dd          00411A48
 00411A48    mov         ecx,dword ptr [ebp+8]
 00411A4B    mov         ecx,dword ptr [ecx+40]
 00411A4E    mov         dword ptr [ecx],3
>00411A54    jmp         00411B33
 00411A59    mov         ecx,dword ptr [ebp+8]
 00411A5C    mov         ecx,dword ptr [ecx+40]
 00411A5F    mov         dword ptr [ecx],5
>00411A65    jmp         00411B33
 00411A6A    mov         ecx,dword ptr [ebp+8]
 00411A6D    mov         ecx,dword ptr [ecx+40]
 00411A70    mov         dword ptr [ecx],6
>00411A76    jmp         00411B33
 00411A7B    mov         ecx,dword ptr [ebp+8]
 00411A7E    mov         ecx,dword ptr [ecx+40]
 00411A81    mov         dword ptr [ecx],7
>00411A87    jmp         00411B33
 00411A8C    mov         ecx,dword ptr [ebp+8]
 00411A8F    mov         ecx,dword ptr [ecx+40]
 00411A92    cmp         dword ptr [ecx],4
>00411A95    jne         00411B0B
 00411A97    mov         ecx,dword ptr [ebp+8]
 00411A9A    mov         ecx,dword ptr [ecx+44]
 00411A9D    cmp         byte ptr [ecx],0
>00411AA0    je          00411B0B
 00411AA2    mov         ecx,dword ptr [edx]
 00411AA4    mov         cl,byte ptr [ecx]
 00411AA6    mov         ebx,dword ptr [ebp+8]
 00411AA9    mov         ebx,dword ptr [ebx+48]
 00411AAC    mov         byte ptr [ebx],cl
 00411AAE    inc         dword ptr [edx]
 00411AB0    mov         ecx,dword ptr [ebp+8]
 00411AB3    mov         ecx,dword ptr [ecx+48]
 00411AB6    mov         cl,byte ptr [ecx]
 00411AB8    and         cl,7
 00411ABB    and         ecx,0FF
 00411AC1    mov         ebx,dword ptr [ebp+8]
 00411AC4    mov         ebx,dword ptr [ebx+40]
 00411AC7    mov         dword ptr [ebx],ecx
 00411AC9    mov         ecx,dword ptr [ebp+8]
 00411ACC    mov         ecx,dword ptr [ecx+48]
 00411ACF    mov         cl,byte ptr [ecx]
 00411AD1    and         cl,38
 00411AD4    cmp         cl,20
>00411AD7    je          00411B0B
 00411AD9    mov         ecx,dword ptr [ebp+8]
 00411ADC    mov         ecx,dword ptr [ecx+48]
 00411ADF    movzx       ecx,byte ptr [ecx]
 00411AE2    shr         ecx,6
 00411AE5    mov         ebx,1
 00411AEA    shl         ebx,cl
 00411AEC    mov         ecx,dword ptr [ebp+8]
 00411AEF    mov         ecx,dword ptr [ecx+34]
 00411AF2    mov         dword ptr [ecx],ebx
 00411AF4    mov         ecx,dword ptr [ebp+8]
 00411AF7    mov         ecx,dword ptr [ecx+48]
 00411AFA    movzx       ecx,byte ptr [ecx]
 00411AFD    shr         ecx,3
 00411B00    and         ecx,7
 00411B03    mov         ebx,dword ptr [ebp+8]
 00411B06    mov         ebx,dword ptr [ebx+38]
 00411B09    mov         dword ptr [ebx],ecx
 00411B0B    test        byte ptr [eax],0C0
>00411B0E    jne         00411B33
 00411B10    mov         ecx,dword ptr [ebp+8]
 00411B13    mov         ecx,dword ptr [ecx+40]
 00411B16    cmp         dword ptr [ecx],5
>00411B19    jne         00411B33
 00411B1B    mov         ecx,dword ptr [ebp+8]
 00411B1E    mov         ecx,dword ptr [ecx+30]
 00411B21    mov         dword ptr [ecx],4
 00411B27    mov         ecx,dword ptr [ebp+8]
 00411B2A    mov         ecx,dword ptr [ecx+40]
 00411B2D    mov         dword ptr [ecx],0FFFFFFFF
 00411B33    mov         ecx,dword ptr [edx]
 00411B35    mov         ebx,dword ptr [ebp+8]
 00411B38    mov         ebx,dword ptr [ebx+2C]
 00411B3B    mov         dword ptr [ebx],ecx
 00411B3D    mov         ecx,dword ptr [ebp+8]
 00411B40    mov         ecx,dword ptr [ecx+30]
 00411B43    mov         ecx,dword ptr [ecx]
 00411B45    dec         ecx
>00411B46    je          00411B52
 00411B48    dec         ecx
>00411B49    je          00411B6E
 00411B4B    sub         ecx,2
>00411B4E    je          00411B8A
>00411B50    jmp         00411BA4
 00411B52    mov         ecx,dword ptr [edx]
 00411B54    movsx       ecx,byte ptr [ecx]
 00411B57    mov         ebx,dword ptr [ebp+8]
 00411B5A    mov         ebx,dword ptr [ebx+28]
 00411B5D    mov         dword ptr [ebx],ecx
 00411B5F    mov         ecx,dword ptr [edx]
 00411B61    movzx       ecx,byte ptr [ecx]
 00411B64    mov         ebx,dword ptr [ebp+8]
 00411B67    mov         ebx,dword ptr [ebx+24]
 00411B6A    mov         dword ptr [ebx],ecx
>00411B6C    jmp         00411BB8
 00411B6E    mov         ecx,dword ptr [edx]
 00411B70    movsx       ecx,word ptr [ecx]
 00411B73    mov         ebx,dword ptr [ebp+8]
 00411B76    mov         ebx,dword ptr [ebx+28]
 00411B79    mov         dword ptr [ebx],ecx
 00411B7B    mov         ecx,dword ptr [edx]
 00411B7D    movzx       ecx,word ptr [ecx]
 00411B80    mov         ebx,dword ptr [ebp+8]
 00411B83    mov         ebx,dword ptr [ebx+24]
 00411B86    mov         dword ptr [ebx],ecx
>00411B88    jmp         00411BB8
 00411B8A    mov         ecx,dword ptr [edx]
 00411B8C    mov         ecx,dword ptr [ecx]
 00411B8E    mov         ebx,dword ptr [ebp+8]
 00411B91    mov         ebx,dword ptr [ebx+28]
 00411B94    mov         dword ptr [ebx],ecx
 00411B96    mov         ecx,dword ptr [edx]
 00411B98    mov         ecx,dword ptr [ecx]
 00411B9A    mov         ebx,dword ptr [ebp+8]
 00411B9D    mov         ebx,dword ptr [ebx+24]
 00411BA0    mov         dword ptr [ebx],ecx
>00411BA2    jmp         00411BB8
 00411BA4    mov         ecx,dword ptr [ebp+8]
 00411BA7    mov         ecx,dword ptr [ecx+28]
 00411BAA    xor         ebx,ebx
 00411BAC    mov         dword ptr [ecx],ebx
 00411BAE    mov         ecx,dword ptr [ebp+8]
 00411BB1    mov         ecx,dword ptr [ecx+24]
 00411BB4    xor         ebx,ebx
 00411BB6    mov         dword ptr [ecx],ebx
 00411BB8    mov         ecx,dword ptr [ebp+8]
 00411BBB    mov         ecx,dword ptr [ecx+30]
 00411BBE    mov         ecx,dword ptr [ecx]
 00411BC0    add         dword ptr [edx],ecx
 00411BC2    mov         al,byte ptr [eax]
 00411BC4    mov         edx,dword ptr [ebp+8]
 00411BC7    mov         edx,dword ptr [edx+8]
 00411BCA    mov         byte ptr [edx+4],al
 00411BCD    pop         ebx
 00411BCE    pop         ebp
 00411BCF    ret
end;*}

//00411BD0
{*procedure sub_00411BD0(?:?);
begin
 00411BD0    push        ebp
 00411BD1    mov         ebp,esp
 00411BD3    mov         eax,dword ptr [ebp+8]
 00411BD6    mov         eax,dword ptr [eax+54]
 00411BD9    mov         eax,dword ptr [eax]
 00411BDB    and         eax,0C00
 00411BE0    sub         eax,400
>00411BE5    je          00411BF7
 00411BE7    sub         eax,400
>00411BEC    je          00411BFE
 00411BEE    sub         eax,400
>00411BF3    je          00411C05
>00411BF5    jmp         00411C0F
 00411BF7    mov         eax,1
>00411BFC    jmp         00411C61
 00411BFE    mov         eax,2
>00411C03    jmp         00411C61
 00411C05    mov         eax,dword ptr [ebp+8]
 00411C08    mov         eax,dword ptr [eax+18]
 00411C0B    mov         eax,dword ptr [eax]
>00411C0D    jmp         00411C61
 00411C0F    xor         eax,eax
 00411C11    mov         edx,dword ptr [ebp+8]
 00411C14    mov         edx,dword ptr [edx+58]
 00411C17    mov         dx,word ptr [edx]
 00411C1A    sub         dx,9A
>00411C1F    je          00411C36
 00411C21    add         edx,0FFFFFFFA
 00411C24    sub         dx,4
>00411C28    jb          00411C4A
 00411C2A    sub         dx,24
>00411C2E    je          00411C43
 00411C30    sub         dx,22
>00411C34    jne         00411C61
 00411C36    mov         eax,dword ptr [ebp+8]
 00411C39    mov         eax,dword ptr [eax+18]
 00411C3C    mov         eax,dword ptr [eax]
 00411C3E    add         eax,2
>00411C41    jmp         00411C61
 00411C43    mov         eax,3
>00411C48    jmp         00411C61
 00411C4A    mov         eax,dword ptr [ebp+8]
 00411C4D    mov         eax,dword ptr [eax+68]
 00411C50    cmp         byte ptr [eax],0
>00411C53    je          00411C5C
 00411C55    mov         eax,2
>00411C5A    jmp         00411C61
 00411C5C    mov         eax,4
 00411C61    mov         edx,eax
 00411C63    dec         edx
>00411C64    je          00411C70
 00411C66    dec         edx
>00411C67    je          00411C83
 00411C69    sub         edx,2
>00411C6C    je          00411C96
>00411C6E    jmp         00411CA8
 00411C70    mov         edx,dword ptr [ebp+8]
 00411C73    mov         edx,dword ptr [edx-8]
 00411C76    movsx       edx,byte ptr [edx]
 00411C79    mov         ecx,dword ptr [ebp+8]
 00411C7C    mov         ecx,dword ptr [ecx+1C]
 00411C7F    mov         dword ptr [ecx],edx
 00411C81    pop         ebp
 00411C82    ret
 00411C83    mov         edx,dword ptr [ebp+8]
 00411C86    mov         edx,dword ptr [edx-8]
 00411C89    movsx       edx,word ptr [edx]
 00411C8C    mov         ecx,dword ptr [ebp+8]
 00411C8F    mov         ecx,dword ptr [ecx+1C]
 00411C92    mov         dword ptr [ecx],edx
 00411C94    pop         ebp
 00411C95    ret
 00411C96    mov         edx,dword ptr [ebp+8]
 00411C99    mov         edx,dword ptr [edx-8]
 00411C9C    mov         edx,dword ptr [edx]
 00411C9E    mov         ecx,dword ptr [ebp+8]
 00411CA1    mov         ecx,dword ptr [ecx+1C]
 00411CA4    mov         dword ptr [ecx],edx
 00411CA6    pop         ebp
 00411CA7    ret
 00411CA8    mov         edx,dword ptr [ebp+8]
 00411CAB    mov         edx,dword ptr [edx+1C]
 00411CAE    xor         ecx,ecx
 00411CB0    mov         dword ptr [edx],ecx
 00411CB2    pop         ebp
 00411CB3    ret
end;*}

//00411CB4
{*function sub_00411CB4(?:?):?;
begin
 00411CB4    push        ebp
 00411CB5    mov         ebp,esp
 00411CB7    mov         eax,dword ptr [ebp+8]
 00411CBA    mov         eax,dword ptr [eax+54]
 00411CBD    cmp         dword ptr [eax],0FFFF
 00411CC3    setne       al
 00411CC6    test        al,al
>00411CC8    je          00412189
 00411CCE    mov         edx,dword ptr [ebp+8]
 00411CD1    mov         edx,dword ptr [edx+58]
 00411CD4    cmp         word ptr [edx],0FF
>00411CD9    jbe         00412009
 00411CDF    mov         edx,dword ptr [ebp+8]
 00411CE2    mov         edx,dword ptr [edx+58]
 00411CE5    mov         dx,word ptr [edx]
 00411CE8    and         edx,0FF
 00411CEE    cmp         edx,73
>00411CF1    jg          00411D7B
>00411CF7    je          00411F15
 00411CFD    cmp         edx,20
>00411D00    jg          00411D3E
>00411D02    je          00411EBA
 00411D08    cmp         edx,0D
>00411D0B    jg          00411D27
>00411D0D    je          00411E50
 00411D13    sub         edx,1
>00411D16    jb          00411E10
>00411D1C    je          00411E21
>00411D22    jmp         00412189
 00411D27    sub         edx,0F
>00411D2A    je          00411E74
 00411D30    sub         edx,9
>00411D33    je          00411E96
>00411D39    jmp         00412189
 00411D3E    cmp         edx,23
>00411D41    jg          00411D5E
>00411D43    je          00411EC9
 00411D49    sub         edx,21
>00411D4C    je          00411EC9
 00411D52    dec         edx
>00411D53    je          00411EBA
>00411D59    jmp         00412189
 00411D5E    add         edx,0FFFFFF94
 00411D61    sub         edx,2
>00411D64    jb          00411ED8
 00411D6A    add         edx,0FFFFFFFD
 00411D6D    sub         edx,2
>00411D70    jb          00411EE5
>00411D76    jmp         00412189
 00411D7B    cmp         edx,0C3
>00411D81    jg          00411DCE
>00411D83    je          00411FAF
 00411D89    cmp         edx,0B2
>00411D8F    jg          00411DB1
>00411D91    je          00411FAF
 00411D97    add         edx,0FFFFFF84
 00411D9A    sub         edx,2
>00411D9D    jb          00411F46
 00411DA3    sub         edx,30
>00411DA6    je          00411F6A
>00411DAC    jmp         00412189
 00411DB1    add         edx,0FFFFFF4C
 00411DB7    sub         edx,2
>00411DBA    jb          00411FAF
 00411DC0    sub         edx,4
>00411DC3    je          00411FBC
>00411DC9    jmp         00412189
 00411DCE    cmp         edx,0D6
>00411DD4    jg          00411DF6
>00411DD6    je          00411FCD
 00411DDC    sub         edx,0C7
>00411DE2    je          00411FAF
 00411DE8    sub         edx,9
>00411DEB    je          00411F46
>00411DF1    jmp         00412189
 00411DF6    sub         edx,0E6
>00411DFC    je          00411FCD
 00411E02    sub         edx,0A
>00411E05    je          00411FFC
>00411E0B    jmp         00412189
 00411E10    mov         eax,dword ptr [ebp+8]
 00411E13    mov         eax,dword ptr [eax+3C]
 00411E16    cmp         dword ptr [eax],5
 00411E19    setle       al
>00411E1C    jmp         00412189
 00411E21    mov         eax,dword ptr [ebp+8]
 00411E24    mov         eax,dword ptr [eax+3C]
 00411E27    cmp         dword ptr [eax],5
>00411E2A    je          00411E42
 00411E2C    mov         eax,dword ptr [ebp+8]
 00411E2F    mov         eax,dword ptr [eax+44]
 00411E32    cmp         byte ptr [eax],0
>00411E35    jne         00411E49
 00411E37    mov         eax,dword ptr [ebp+8]
 00411E3A    mov         eax,dword ptr [eax+3C]
 00411E3D    cmp         dword ptr [eax],3
>00411E40    jg          00411E49
 00411E42    xor         eax,eax
>00411E44    jmp         00412189
 00411E49    mov         al,1
>00411E4B    jmp         00412189
 00411E50    mov         eax,dword ptr [ebp+8]
 00411E53    mov         eax,dword ptr [eax+44]
 00411E56    cmp         byte ptr [eax],0
>00411E59    je          00411E66
 00411E5B    mov         eax,dword ptr [ebp+8]
 00411E5E    mov         eax,dword ptr [eax+3C]
 00411E61    cmp         dword ptr [eax],1
>00411E64    jle         00411E6D
 00411E66    xor         eax,eax
>00411E68    jmp         00412189
 00411E6D    mov         al,1
>00411E6F    jmp         00412189
 00411E74    mov         eax,dword ptr [ebp+8]
 00411E77    mov         eax,dword ptr [eax-8]
 00411E7A    mov         al,byte ptr [eax]
 00411E7C    add         al,0F8
 00411E7E    cmp         al,0B7
>00411E80    ja          00411E8E
 00411E82    and         eax,0FF
 00411E87    bt          dword ptr ds:[41218C],eax;gvar_0041218C
 00411E8E    setb        al
>00411E91    jmp         00412189
 00411E96    mov         eax,dword ptr [ebp+8]
 00411E99    mov         eax,dword ptr [eax+44]
 00411E9C    cmp         byte ptr [eax],0
>00411E9F    je          00411EAC
 00411EA1    mov         eax,dword ptr [ebp+8]
 00411EA4    mov         eax,dword ptr [eax+3C]
 00411EA7    cmp         dword ptr [eax],3
>00411EAA    jle         00411EB3
 00411EAC    xor         eax,eax
>00411EAE    jmp         00412189
 00411EB3    mov         al,1
>00411EB5    jmp         00412189
 00411EBA    mov         eax,dword ptr [ebp+8]
 00411EBD    mov         eax,dword ptr [eax+44]
 00411EC0    mov         al,byte ptr [eax]
 00411EC2    xor         al,1
>00411EC4    jmp         00412189
 00411EC9    mov         eax,dword ptr [ebp+8]
 00411ECC    mov         eax,dword ptr [eax+44]
 00411ECF    mov         al,byte ptr [eax]
 00411ED1    xor         al,1
>00411ED3    jmp         00412189
 00411ED8    mov         eax,dword ptr [ebp+8]
 00411EDB    mov         eax,dword ptr [eax-4]
 00411EDE    mov         al,byte ptr [eax]
>00411EE0    jmp         00412189
 00411EE5    mov         eax,dword ptr [ebp+8]
 00411EE8    mov         eax,dword ptr [eax+44]
 00411EEB    cmp         byte ptr [eax],0
>00411EEE    jne         00411F07
 00411EF0    mov         eax,dword ptr [ebp+8]
 00411EF3    mov         eax,dword ptr [eax+3C]
 00411EF6    mov         eax,dword ptr [eax]
 00411EF8    sub         eax,2
>00411EFB    je          00411F0E
 00411EFD    sub         eax,2
>00411F00    je          00411F0E
 00411F02    sub         eax,2
>00411F05    je          00411F0E
 00411F07    xor         eax,eax
>00411F09    jmp         00412189
 00411F0E    mov         al,1
>00411F10    jmp         00412189
 00411F15    mov         eax,dword ptr [ebp+8]
 00411F18    mov         eax,dword ptr [eax+44]
 00411F1B    cmp         byte ptr [eax],0
>00411F1E    jne         00411F38
 00411F20    mov         eax,dword ptr [ebp+8]
 00411F23    mov         eax,dword ptr [eax+3C]
 00411F26    mov         eax,dword ptr [eax]
 00411F28    add         eax,0FFFFFFFE
 00411F2B    sub         eax,2
>00411F2E    jb          00411F3F
 00411F30    add         eax,0FFFFFFFE
 00411F33    sub         eax,2
>00411F36    jb          00411F3F
 00411F38    xor         eax,eax
>00411F3A    jmp         00412189
 00411F3F    mov         al,1
>00411F41    jmp         00412189
 00411F46    mov         eax,dword ptr [ebp+8]
 00411F49    mov         eax,dword ptr [eax-4]
 00411F4C    cmp         byte ptr [eax],0
>00411F4F    jne         00411F63
 00411F51    mov         eax,dword ptr [ebp+8]
 00411F54    mov         eax,dword ptr [eax+60]
 00411F57    cmp         byte ptr [eax],0
>00411F5A    jne         00411F63
 00411F5C    xor         eax,eax
>00411F5E    jmp         00412189
 00411F63    mov         al,1
>00411F65    jmp         00412189
 00411F6A    mov         eax,dword ptr [ebp+8]
 00411F6D    mov         eax,dword ptr [eax+3C]
 00411F70    cmp         dword ptr [eax],7
>00411F73    je          00411FA8
 00411F75    mov         eax,dword ptr [ebp+8]
 00411F78    mov         eax,dword ptr [eax+3C]
 00411F7B    cmp         dword ptr [eax],4
>00411F7E    jge         00411F8B
 00411F80    mov         eax,dword ptr [ebp+8]
 00411F83    mov         eax,dword ptr [eax+44]
 00411F86    cmp         byte ptr [eax],0
>00411F89    jne         00411FA8
 00411F8B    mov         eax,dword ptr [ebp+8]
 00411F8E    mov         eax,dword ptr [eax+3C]
 00411F91    cmp         dword ptr [eax],4
>00411F94    jle         00411FA1
 00411F96    mov         eax,dword ptr [ebp+8]
 00411F99    mov         eax,dword ptr [eax+44]
 00411F9C    cmp         byte ptr [eax],0
>00411F9F    je          00411FA8
 00411FA1    xor         eax,eax
>00411FA3    jmp         00412189
 00411FA8    mov         al,1
>00411FAA    jmp         00412189
 00411FAF    mov         eax,dword ptr [ebp+8]
 00411FB2    mov         eax,dword ptr [eax+44]
 00411FB5    mov         al,byte ptr [eax]
>00411FB7    jmp         00412189
 00411FBC    mov         eax,dword ptr [ebp+8]
 00411FBF    mov         eax,dword ptr [eax+3C]
 00411FC2    cmp         dword ptr [eax],4
 00411FC5    setge       al
>00411FC8    jmp         00412189
 00411FCD    mov         eax,dword ptr [ebp+8]
 00411FD0    mov         eax,dword ptr [eax-4]
 00411FD3    cmp         byte ptr [eax],0
>00411FD6    jne         00411FF5
 00411FD8    mov         eax,dword ptr [ebp+8]
 00411FDB    mov         eax,dword ptr [eax+60]
 00411FDE    cmp         byte ptr [eax],0
>00411FE1    jne         00411FF5
 00411FE3    mov         eax,dword ptr [ebp+8]
 00411FE6    mov         eax,dword ptr [eax+5C]
 00411FE9    cmp         byte ptr [eax],0
>00411FEC    jne         00411FF5
 00411FEE    xor         eax,eax
>00411FF0    jmp         00412189
 00411FF5    mov         al,1
>00411FF7    jmp         00412189
 00411FFC    mov         eax,dword ptr [ebp+8]
 00411FFF    mov         eax,dword ptr [eax+60]
 00412002    mov         al,byte ptr [eax]
>00412004    jmp         00412189
 00412009    mov         edx,dword ptr [ebp+8]
 0041200C    mov         edx,dword ptr [edx+58]
 0041200F    mov         dx,word ptr [edx]
 00412012    and         edx,0FF
 00412018    cmp         edx,0D9
>0041201E    jg          00412054
>00412020    je          004120AC
 00412026    cmp         edx,8D
>0041202C    jg          0041203F
>0041202E    je          0041208E
 00412030    sub         edx,62
>00412033    je          0041208E
 00412035    sub         edx,2A
>00412038    je          0041209B
>0041203A    jmp         00412189
 0041203F    sub         edx,8E
>00412045    je          0041209B
 00412047    add         edx,0FFFFFFCA
 0041204A    sub         edx,2
>0041204D    jb          0041208E
>0041204F    jmp         00412189
 00412054    cmp         edx,0DF
>0041205A    jg          00412076
>0041205C    je          0041212C
 00412062    sub         edx,0DA
>00412068    je          004120E3
 0041206A    dec         edx
>0041206B    je          0041210B
>00412071    jmp         00412189
 00412076    sub         edx,0FE
>0041207C    je          0041214D
 00412082    dec         edx
>00412083    je          0041215B
>00412089    jmp         00412189
 0041208E    mov         eax,dword ptr [ebp+8]
 00412091    mov         eax,dword ptr [eax+44]
 00412094    mov         al,byte ptr [eax]
>00412096    jmp         00412189
 0041209B    mov         eax,dword ptr [ebp+8]
 0041209E    mov         eax,dword ptr [eax+3C]
 004120A1    cmp         dword ptr [eax],5
 004120A4    setle       al
>004120A7    jmp         00412189
 004120AC    mov         eax,dword ptr [ebp+8]
 004120AF    mov         eax,dword ptr [eax+44]
 004120B2    cmp         byte ptr [eax],0
>004120B5    jne         004120DC
 004120B7    mov         eax,dword ptr [ebp+8]
 004120BA    mov         eax,dword ptr [eax+4C]
 004120BD    mov         al,byte ptr [eax]
 004120BF    add         al,2F
 004120C1    sub         al,7
>004120C3    jb          004120D5
 004120C5    add         al,0F6
 004120C7    sub         al,2
>004120C9    jb          004120D5
 004120CB    add         al,0FE
 004120CD    sub         al,2
>004120CF    jb          004120D5
 004120D1    sub         al,7
>004120D3    jne         004120DC
 004120D5    xor         eax,eax
>004120D7    jmp         00412189
 004120DC    mov         al,1
>004120DE    jmp         00412189
 004120E3    mov         eax,dword ptr [ebp+8]
 004120E6    mov         eax,dword ptr [eax+44]
 004120E9    cmp         byte ptr [eax],0
>004120EC    jne         00412107
 004120EE    mov         eax,dword ptr [ebp+8]
 004120F1    mov         eax,dword ptr [eax+4C]
 004120F4    mov         al,byte ptr [eax]
 004120F6    sub         al,0E8
>004120F8    je          00412100
 004120FA    add         al,0FE
 004120FC    sub         al,6
>004120FE    jae         00412107
 00412100    xor         eax,eax
>00412102    jmp         00412189
 00412107    mov         al,1
>00412109    jmp         00412189
 0041210B    mov         eax,dword ptr [ebp+8]
 0041210E    mov         eax,dword ptr [eax+44]
 00412111    cmp         byte ptr [eax],0
>00412114    jne         00412128
 00412116    mov         eax,dword ptr [ebp+8]
 00412119    mov         eax,dword ptr [eax+4C]
 0041211C    mov         al,byte ptr [eax]
 0041211E    add         al,1B
 00412120    sub         al,3
>00412122    jae         00412128
 00412124    xor         eax,eax
>00412126    jmp         00412189
 00412128    mov         al,1
>0041212A    jmp         00412189
 0041212C    mov         eax,dword ptr [ebp+8]
 0041212F    mov         eax,dword ptr [eax+44]
 00412132    cmp         byte ptr [eax],0
>00412135    jne         00412149
 00412137    mov         eax,dword ptr [ebp+8]
 0041213A    mov         eax,dword ptr [eax+4C]
 0041213D    mov         al,byte ptr [eax]
 0041213F    add         al,1F
 00412141    sub         al,7
>00412143    jae         00412149
 00412145    xor         eax,eax
>00412147    jmp         00412189
 00412149    mov         al,1
>0041214B    jmp         00412189
 0041214D    mov         eax,dword ptr [ebp+8]
 00412150    mov         eax,dword ptr [eax+3C]
 00412153    cmp         dword ptr [eax],1
 00412156    setle       al
>00412159    jmp         00412189
 0041215B    mov         eax,dword ptr [ebp+8]
 0041215E    mov         eax,dword ptr [eax+3C]
 00412161    cmp         dword ptr [eax],7
>00412164    jge         00412183
 00412166    mov         eax,dword ptr [ebp+8]
 00412169    mov         eax,dword ptr [eax+44]
 0041216C    cmp         byte ptr [eax],0
>0041216F    jne         00412187
 00412171    mov         eax,dword ptr [ebp+8]
 00412174    mov         eax,dword ptr [eax+3C]
 00412177    mov         eax,dword ptr [eax]
 00412179    sub         eax,3
>0041217C    je          00412183
 0041217E    sub         eax,2
>00412181    jne         00412187
 00412183    xor         eax,eax
>00412185    jmp         00412189
 00412187    mov         al,1
 00412189    pop         ebp
 0041218A    ret
end;*}

//004121A4
{*procedure sub_004121A4(?:?);
begin
 004121A4    push        ebp
 004121A5    mov         ebp,esp
 004121A7    mov         eax,dword ptr [ebp+8]
 004121AA    mov         eax,dword ptr [eax+54]
 004121AD    test        byte ptr [eax+1],10
>004121B1    je          00412248
 004121B7    mov         eax,dword ptr [ebp+8]
 004121BA    mov         eax,dword ptr [eax+8]
 004121BD    mov         byte ptr [eax+7],1
 004121C1    mov         eax,dword ptr [ebp+8]
 004121C4    mov         eax,dword ptr [eax-8]
 004121C7    mov         edx,dword ptr [ebp+8]
 004121CA    mov         edx,dword ptr [edx+8]
 004121CD    mov         dword ptr [edx+0C],eax
 004121D0    mov         eax,dword ptr [ebp+8]
 004121D3    mov         eax,dword ptr [eax-8]
 004121D6    mov         edx,dword ptr [ebp+8]
 004121D9    mov         edx,dword ptr [edx+20]
 004121DC    add         eax,dword ptr [edx]
 004121DE    mov         edx,dword ptr [ebp+8]
 004121E1    mov         edx,dword ptr [edx+1C]
 004121E4    add         eax,dword ptr [edx]
 004121E6    mov         edx,dword ptr [ebp+8]
 004121E9    mov         edx,dword ptr [edx+8]
 004121EC    mov         dword ptr [edx+8],eax
 004121EF    mov         eax,dword ptr [ebp+8]
 004121F2    mov         eax,dword ptr [eax+20]
 004121F5    mov         eax,dword ptr [eax]
 004121F7    mov         edx,dword ptr [ebp+8]
 004121FA    mov         edx,dword ptr [edx+8]
 004121FD    mov         dword ptr [edx+14],eax
 00412200    mov         eax,dword ptr [ebp+8]
 00412203    mov         eax,dword ptr [eax+58]
 00412206    mov         ax,word ptr [eax]
 00412209    add         eax,0FFFFFF20
 0041220E    sub         ax,4
 00412212    setb        al
 00412215    xor         al,1
 00412217    mov         edx,dword ptr [ebp+8]
 0041221A    mov         edx,dword ptr [edx+8]
 0041221D    mov         byte ptr [edx+18],al
 00412220    mov         eax,dword ptr [ebp+8]
 00412223    mov         eax,dword ptr [eax+58]
 00412226    cmp         word ptr [eax],0E8
>0041222B    jne         0041223C
 0041222D    mov         eax,dword ptr [ebp+8]
 00412230    mov         eax,dword ptr [eax+8]
 00412233    mov         byte ptr [eax+5],1
>00412237    jmp         00412456
 0041223C    mov         eax,dword ptr [ebp+8]
 0041223F    mov         eax,dword ptr [eax+8]
 00412242    mov         byte ptr [eax+6],1
 00412246    pop         ebp
 00412247    ret
 00412248    mov         eax,dword ptr [ebp+8]
 0041224B    mov         eax,dword ptr [eax+58]
 0041224E    cmp         word ptr [eax],0FF
>00412253    jne         00412426
 00412259    mov         eax,dword ptr [ebp+8]
 0041225C    mov         eax,dword ptr [eax+3C]
 0041225F    mov         eax,dword ptr [eax]
 00412261    add         eax,0FFFFFFFE
 00412264    sub         eax,4
>00412267    jae         00412426
 0041226D    mov         eax,dword ptr [ebp+8]
 00412270    mov         eax,dword ptr [eax+3C]
 00412273    mov         eax,dword ptr [eax]
 00412275    add         eax,0FFFFFFFE
 00412278    sub         eax,2
>0041227B    jae         00412289
 0041227D    mov         eax,dword ptr [ebp+8]
 00412280    mov         eax,dword ptr [eax+8]
 00412283    mov         byte ptr [eax+5],1
>00412287    jmp         00412293
 00412289    mov         eax,dword ptr [ebp+8]
 0041228C    mov         eax,dword ptr [eax+8]
 0041228F    mov         byte ptr [eax+6],1
 00412293    mov         eax,dword ptr [ebp+8]
 00412296    mov         eax,dword ptr [eax+40]
 00412299    cmp         dword ptr [eax],0FFFFFFFF
>0041229C    jne         00412324
 004122A2    mov         eax,dword ptr [ebp+8]
 004122A5    mov         eax,dword ptr [eax+34]
 004122A8    cmp         dword ptr [eax],0
>004122AB    jne         00412324
 004122AD    mov         eax,dword ptr [ebp+8]
 004122B0    mov         eax,dword ptr [eax+30]
 004122B3    cmp         dword ptr [eax],4
>004122B6    jne         00412324
 004122B8    mov         eax,dword ptr [ebp+8]
 004122BB    mov         eax,dword ptr [eax+2C]
 004122BE    mov         eax,dword ptr [eax]
 004122C0    mov         edx,dword ptr [ebp+8]
 004122C3    mov         edx,dword ptr [edx+8]
 004122C6    mov         dword ptr [edx+10],eax
 004122C9    mov         eax,dword ptr [ebp+8]
 004122CC    mov         eax,dword ptr [eax-0C]
 004122CF    cmp         byte ptr [eax],0
>004122D2    jne         004122FE
 004122D4    mov         eax,dword ptr [ebp+8]
 004122D7    mov         eax,dword ptr [eax+0C]
 004122DA    push        eax
 004122DB    mov         eax,dword ptr [ebp+8]
 004122DE    mov         edx,dword ptr [eax+8]
 004122E1    add         edx,8
 004122E4    mov         eax,dword ptr [ebp+8]
 004122E7    mov         eax,dword ptr [eax+24]
 004122EA    mov         eax,dword ptr [eax]
 004122EC    mov         ecx,4
 004122F1    call        00417250
 004122F6    test        al,al
>004122F8    jne         004122FE
 004122FA    xor         eax,eax
>004122FC    jmp         00412300
 004122FE    mov         al,1
 00412300    mov         edx,dword ptr [ebp+8]
 00412303    mov         edx,dword ptr [edx+8]
 00412306    mov         byte ptr [edx],al
 00412308    mov         eax,dword ptr [ebp+8]
 0041230B    mov         eax,dword ptr [eax+8]
 0041230E    mov         dword ptr [eax+14],4
 00412315    mov         eax,dword ptr [ebp+8]
 00412318    mov         eax,dword ptr [eax+8]
 0041231B    mov         byte ptr [eax+18],1
>0041231F    jmp         00412456
 00412324    mov         eax,dword ptr [ebp+8]
 00412327    cmp         byte ptr [eax+10],0
>0041232B    je          00412456
 00412331    mov         eax,dword ptr [ebp+8]
 00412334    cmp         dword ptr [eax+14],0
>00412338    je          00412456
 0041233E    mov         eax,dword ptr [ebp+8]
 00412341    mov         eax,dword ptr [eax+40]
 00412344    cmp         dword ptr [eax],0FFFFFFFF
>00412347    je          00412456
 0041234D    mov         eax,dword ptr [ebp+8]
 00412350    mov         eax,dword ptr [eax+40]
 00412353    mov         eax,dword ptr [eax]
 00412355    mov         edx,dword ptr [ebp+8]
 00412358    mov         edx,dword ptr [edx+14]
 0041235B    cmp         dword ptr [edx+eax*4],0
>0041235F    je          00412456
 00412365    mov         eax,dword ptr [ebp+8]
 00412368    mov         eax,dword ptr [eax+34]
 0041236B    cmp         dword ptr [eax],0
>0041236E    jne         00412456
 00412374    mov         eax,dword ptr [ebp+8]
 00412377    mov         eax,dword ptr [eax+30]
 0041237A    cmp         dword ptr [eax],0
>0041237D    jne         00412456
 00412383    mov         eax,dword ptr [ebp+8]
 00412386    mov         eax,dword ptr [eax+44]
 00412389    cmp         byte ptr [eax],0
>0041238C    je          004123EC
 0041238E    mov         eax,dword ptr [ebp+8]
 00412391    mov         eax,dword ptr [eax+40]
 00412394    mov         eax,dword ptr [eax]
 00412396    mov         edx,dword ptr [ebp+8]
 00412399    mov         edx,dword ptr [edx+14]
 0041239C    mov         eax,dword ptr [edx+eax*4]
 0041239F    mov         edx,dword ptr [ebp+8]
 004123A2    mov         edx,dword ptr [edx+8]
 004123A5    mov         dword ptr [edx+10],eax
 004123A8    mov         eax,dword ptr [ebp+8]
 004123AB    mov         eax,dword ptr [eax-0C]
 004123AE    cmp         byte ptr [eax],0
>004123B1    jne         004123E0
 004123B3    mov         eax,dword ptr [ebp+8]
 004123B6    mov         eax,dword ptr [eax+0C]
 004123B9    push        eax
 004123BA    mov         eax,dword ptr [ebp+8]
 004123BD    mov         edx,dword ptr [eax+8]
 004123C0    add         edx,8
 004123C3    mov         eax,dword ptr [ebp+8]
 004123C6    mov         eax,dword ptr [eax+8]
 004123C9    mov         eax,dword ptr [eax+10]
 004123CC    mov         eax,dword ptr [eax]
 004123CE    mov         ecx,4
 004123D3    call        00417250
 004123D8    test        al,al
>004123DA    jne         004123E0
 004123DC    xor         eax,eax
>004123DE    jmp         004123E2
 004123E0    mov         al,1
 004123E2    mov         edx,dword ptr [ebp+8]
 004123E5    mov         edx,dword ptr [edx+8]
 004123E8    mov         byte ptr [edx],al
>004123EA    jmp         00412417
 004123EC    mov         eax,dword ptr [ebp+8]
 004123EF    mov         eax,dword ptr [eax+40]
 004123F2    mov         eax,dword ptr [eax]
 004123F4    mov         edx,dword ptr [ebp+8]
 004123F7    mov         edx,dword ptr [edx+14]
 004123FA    mov         eax,dword ptr [edx+eax*4]
 004123FD    mov         edx,dword ptr [ebp+8]
 00412400    mov         edx,dword ptr [edx+8]
 00412403    mov         dword ptr [edx+0C],eax
 00412406    mov         edx,dword ptr [ebp+8]
 00412409    mov         edx,dword ptr [edx+8]
 0041240C    mov         eax,dword ptr [eax]
 0041240E    mov         edx,dword ptr [ebp+8]
 00412411    mov         edx,dword ptr [edx+8]
 00412414    mov         dword ptr [edx+8],eax
 00412417    mov         eax,dword ptr [ebp+8]
 0041241A    mov         eax,dword ptr [eax+8]
 0041241D    mov         dword ptr [eax+14],4
>00412424    jmp         00412456
 00412426    mov         eax,dword ptr [ebp+8]
 00412429    mov         eax,dword ptr [eax+58]
 0041242C    cmp         word ptr [eax],9A
>00412431    jne         0041243F
 00412433    mov         eax,dword ptr [ebp+8]
 00412436    mov         eax,dword ptr [eax+8]
 00412439    mov         byte ptr [eax+5],1
>0041243D    jmp         00412456
 0041243F    mov         eax,dword ptr [ebp+8]
 00412442    mov         eax,dword ptr [eax+58]
 00412445    cmp         word ptr [eax],0EA
>0041244A    jne         00412456
 0041244C    mov         eax,dword ptr [ebp+8]
 0041244F    mov         eax,dword ptr [eax+8]
 00412452    mov         byte ptr [eax+6],1
 00412456    pop         ebp
 00412457    ret
end;*}

//00412458
{*procedure sub_00412458(?:?);
begin
 00412458    push        ebp
 00412459    mov         ebp,esp
 0041245B    push        ebx
 0041245C    mov         eax,dword ptr [ebp+8]
 0041245F    mov         eax,dword ptr [eax+54]
 00412462    mov         eax,dword ptr [eax]
 00412464    and         eax,0E000
 00412469    cmp         eax,8000
>0041246E    je          0041247E
 00412470    cmp         eax,0C000
>00412475    je          0041247E
 00412477    cmp         eax,0E000
>0041247C    jne         00412488
 0041247E    mov         edx,dword ptr [ebp+8]
 00412481    mov         edx,dword ptr [edx+14]
 00412484    xor         ecx,ecx
 00412486    mov         dword ptr [edx],ecx
 00412488    mov         edx,dword ptr [ebp+8]
 0041248B    mov         edx,dword ptr [edx+44]
 0041248E    cmp         byte ptr [edx],0
>00412491    jne         004124BB
 00412493    cmp         eax,4000
>00412498    je          004124A8
 0041249A    cmp         eax,0A000
>0041249F    je          004124A8
 004124A1    cmp         eax,0C000
>004124A6    jne         004124BB
 004124A8    mov         edx,dword ptr [ebp+8]
 004124AB    mov         edx,dword ptr [edx+40]
 004124AE    mov         edx,dword ptr [edx]
 004124B0    mov         ecx,dword ptr [ebp+8]
 004124B3    mov         ecx,dword ptr [ecx+14]
 004124B6    xor         ebx,ebx
 004124B8    mov         dword ptr [ecx+edx*4],ebx
 004124BB    cmp         eax,2000
>004124C0    je          004124C9
 004124C2    cmp         eax,0A000
>004124C7    jne         004124DC
 004124C9    mov         edx,dword ptr [ebp+8]
 004124CC    mov         edx,dword ptr [edx+3C]
 004124CF    mov         edx,dword ptr [edx]
 004124D1    mov         ecx,dword ptr [ebp+8]
 004124D4    mov         ecx,dword ptr [ecx+14]
 004124D7    xor         ebx,ebx
 004124D9    mov         dword ptr [ecx+edx*4],ebx
 004124DC    cmp         eax,6000
>004124E1    je          004124EA
 004124E3    cmp         eax,0E000
>004124E8    jne         00412505
 004124EA    mov         eax,dword ptr [ebp+8]
 004124ED    mov         eax,dword ptr [eax+58]
 004124F0    mov         ax,word ptr [eax]
 004124F3    and         ax,7
 004124F7    movzx       eax,ax
 004124FA    mov         edx,dword ptr [ebp+8]
 004124FD    mov         edx,dword ptr [edx+14]
 00412500    xor         ecx,ecx
 00412502    mov         dword ptr [edx+eax*4],ecx
 00412505    mov         eax,dword ptr [ebp+8]
 00412508    mov         eax,dword ptr [eax+58]
 0041250B    cmp         word ptr [eax],0FF
>00412510    jbe         004126A9
 00412516    mov         eax,dword ptr [ebp+8]
 00412519    mov         eax,dword ptr [eax+58]
 0041251C    mov         ax,word ptr [eax]
 0041251F    and         eax,0FF
 00412524    cmp         eax,7E
>00412527    jge         0041254D
 00412529    sub         eax,1
>0041252C    jb          00412579
>0041252E    je          004125AF
 00412530    add         eax,0FFFFFFD5
 00412533    sub         eax,2
>00412536    jb          004125E5
 0041253C    add         eax,0FFFFFFFD
 0041253F    sub         eax,3
>00412542    jb          00412617
>00412548    jmp         00412943
 0041254D    add         eax,0FFFFFF82
 00412550    sub         eax,2
>00412553    jb          00412627
 00412559    sub         eax,22
>0041255C    je          0041265D
 00412562    sub         eax,18
>00412565    je          00412675
 0041256B    sub         eax,0D
>0041256E    je          00412617
>00412574    jmp         00412943
 00412579    mov         eax,dword ptr [ebp+8]
 0041257C    mov         eax,dword ptr [eax+3C]
 0041257F    cmp         dword ptr [eax],1
>00412582    jg          00412943
 00412588    mov         eax,dword ptr [ebp+8]
 0041258B    mov         eax,dword ptr [eax+44]
 0041258E    cmp         byte ptr [eax],0
>00412591    jne         00412943
 00412597    mov         eax,dword ptr [ebp+8]
 0041259A    mov         eax,dword ptr [eax+40]
 0041259D    mov         eax,dword ptr [eax]
 0041259F    mov         edx,dword ptr [ebp+8]
 004125A2    mov         edx,dword ptr [edx+14]
 004125A5    xor         ecx,ecx
 004125A7    mov         dword ptr [edx+eax*4],ecx
>004125AA    jmp         00412943
 004125AF    mov         eax,dword ptr [ebp+8]
 004125B2    mov         eax,dword ptr [eax+3C]
 004125B5    cmp         dword ptr [eax],4
>004125B8    jne         00412943
 004125BE    mov         eax,dword ptr [ebp+8]
 004125C1    mov         eax,dword ptr [eax+44]
 004125C4    cmp         byte ptr [eax],0
>004125C7    jne         00412943
 004125CD    mov         eax,dword ptr [ebp+8]
 004125D0    mov         eax,dword ptr [eax+40]
 004125D3    mov         eax,dword ptr [eax]
 004125D5    mov         edx,dword ptr [ebp+8]
 004125D8    mov         edx,dword ptr [edx+14]
 004125DB    xor         ecx,ecx
 004125DD    mov         dword ptr [edx+eax*4],ecx
>004125E0    jmp         00412943
 004125E5    mov         eax,dword ptr [ebp+8]
 004125E8    mov         eax,dword ptr [eax+60]
 004125EB    cmp         byte ptr [eax],0
>004125EE    jne         004125FF
 004125F0    mov         eax,dword ptr [ebp+8]
 004125F3    mov         eax,dword ptr [eax+5C]
 004125F6    cmp         byte ptr [eax],0
>004125F9    je          00412943
 004125FF    mov         eax,dword ptr [ebp+8]
 00412602    mov         eax,dword ptr [eax+3C]
 00412605    mov         eax,dword ptr [eax]
 00412607    mov         edx,dword ptr [ebp+8]
 0041260A    mov         edx,dword ptr [edx+14]
 0041260D    xor         ecx,ecx
 0041260F    mov         dword ptr [edx+eax*4],ecx
>00412612    jmp         00412943
 00412617    mov         eax,dword ptr [ebp+8]
 0041261A    mov         eax,dword ptr [eax+14]
 0041261D    xor         edx,edx
 0041261F    mov         dword ptr [eax+8],edx
>00412622    jmp         00412943
 00412627    mov         eax,dword ptr [ebp+8]
 0041262A    mov         eax,dword ptr [eax+5C]
 0041262D    cmp         byte ptr [eax],0
>00412630    jne         00412943
 00412636    mov         eax,dword ptr [ebp+8]
 00412639    mov         eax,dword ptr [eax+44]
 0041263C    cmp         byte ptr [eax],0
>0041263F    jne         00412943
 00412645    mov         eax,dword ptr [ebp+8]
 00412648    mov         eax,dword ptr [eax+40]
 0041264B    mov         eax,dword ptr [eax]
 0041264D    mov         edx,dword ptr [ebp+8]
 00412650    mov         edx,dword ptr [edx+14]
 00412653    xor         ecx,ecx
 00412655    mov         dword ptr [edx+eax*4],ecx
>00412658    jmp         00412943
 0041265D    xor         eax,eax
 0041265F    mov         edx,dword ptr [ebp+8]
 00412662    mov         edx,dword ptr [edx+14]
 00412665    xor         ecx,ecx
 00412667    mov         dword ptr [edx+eax*4],ecx
 0041266A    inc         eax
 0041266B    cmp         eax,4
>0041266E    jne         0041265F
>00412670    jmp         00412943
 00412675    mov         eax,dword ptr [ebp+8]
 00412678    mov         eax,dword ptr [eax+3C]
 0041267B    cmp         dword ptr [eax],5
>0041267E    jl          00412943
 00412684    mov         eax,dword ptr [ebp+8]
 00412687    mov         eax,dword ptr [eax+44]
 0041268A    cmp         byte ptr [eax],0
>0041268D    jne         00412943
 00412693    mov         eax,dword ptr [ebp+8]
 00412696    mov         eax,dword ptr [eax+40]
 00412699    mov         eax,dword ptr [eax]
 0041269B    mov         edx,dword ptr [ebp+8]
 0041269E    mov         edx,dword ptr [edx+14]
 004126A1    xor         ecx,ecx
 004126A3    mov         dword ptr [edx+eax*4],ecx
 004126A6    pop         ebx
 004126A7    pop         ebp
 004126A8    ret
 004126A9    mov         eax,dword ptr [ebp+8]
 004126AC    mov         eax,dword ptr [eax+58]
 004126AF    movzx       eax,word ptr [eax]
 004126B2    cmp         eax,0AC
>004126B7    jge         0041271D
 004126B9    cmp         eax,8B
>004126BE    jg          004126F5
>004126C0    je          00412807
 004126C6    sub         eax,61
>004126C9    je          00412799
 004126CF    add         eax,0FFFFFFF5
 004126D2    sub         eax,2
>004126D5    jb          004127B1
 004126DB    sub         eax,2
>004126DE    jb          004127C1
 004126E4    add         eax,0FFFFFFF0
 004126E7    sub         eax,4
>004126EA    jb          004127D1
>004126F0    jmp         00412943
 004126F5    sub         eax,99
>004126FA    je          0041283D
 00412700    add         eax,0FFFFFFF5
 00412703    sub         eax,4
>00412706    jb          0041284D
 0041270C    add         eax,0FFFFFFFE
 0041270F    sub         eax,2
>00412712    jb          004127B1
>00412718    jmp         00412943
 0041271D    cmp         eax,0C8
>00412722    jge         00412751
 00412724    add         eax,0FFFFFF54
 00412729    sub         eax,2
>0041272C    jb          004127C1
 00412732    sub         eax,2
>00412735    jb          004127B1
 00412737    add         eax,0FFFFFFF8
 0041273A    sub         eax,8
>0041273D    jb          00412868
 00412743    sub         eax,7
>00412746    je          004128AB
>0041274C    jmp         00412943
 00412751    cmp         eax,0E0
>00412756    jge         00412774
 00412758    add         eax,0FFFFFF38
 0041275D    sub         eax,2
>00412760    jb          0041289B
 00412766    sub         eax,15
>00412769    je          004128DE
>0041276F    jmp         00412943
 00412774    add         eax,0FFFFFF20
 00412779    sub         eax,3
>0041277C    jb          004128F5
 00412782    sub         eax,14
>00412785    je          00412902
 0041278B    sub         eax,8
>0041278E    je          0041291A
>00412794    jmp         00412943
 00412799    xor         eax,eax
 0041279B    mov         edx,dword ptr [ebp+8]
 0041279E    mov         edx,dword ptr [edx+14]
 004127A1    xor         ecx,ecx
 004127A3    mov         dword ptr [edx+eax*4],ecx
 004127A6    inc         eax
 004127A7    cmp         eax,8
>004127AA    jne         0041279B
>004127AC    jmp         00412943
 004127B1    mov         eax,dword ptr [ebp+8]
 004127B4    mov         eax,dword ptr [eax+14]
 004127B7    xor         edx,edx
 004127B9    mov         dword ptr [eax+1C],edx
>004127BC    jmp         00412943
 004127C1    mov         eax,dword ptr [ebp+8]
 004127C4    mov         eax,dword ptr [eax+14]
 004127C7    xor         edx,edx
 004127C9    mov         dword ptr [eax+18],edx
>004127CC    jmp         00412943
 004127D1    mov         eax,dword ptr [ebp+8]
 004127D4    mov         eax,dword ptr [eax+44]
 004127D7    cmp         byte ptr [eax],0
>004127DA    jne         00412943
 004127E0    mov         eax,dword ptr [ebp+8]
 004127E3    mov         eax,dword ptr [eax+3C]
 004127E6    cmp         dword ptr [eax],7
>004127E9    je          00412943
 004127EF    mov         eax,dword ptr [ebp+8]
 004127F2    mov         eax,dword ptr [eax+40]
 004127F5    mov         eax,dword ptr [eax]
 004127F7    mov         edx,dword ptr [ebp+8]
 004127FA    mov         edx,dword ptr [edx+14]
 004127FD    xor         ecx,ecx
 004127FF    mov         dword ptr [edx+eax*4],ecx
>00412802    jmp         00412943
 00412807    mov         eax,dword ptr [ebp+8]
 0041280A    mov         eax,dword ptr [eax+44]
 0041280D    cmp         byte ptr [eax],0
>00412810    jne         00412943
 00412816    mov         eax,dword ptr [ebp+8]
 00412819    mov         eax,dword ptr [eax+40]
 0041281C    mov         eax,dword ptr [eax]
 0041281E    mov         edx,dword ptr [ebp+8]
 00412821    mov         edx,dword ptr [edx+14]
 00412824    mov         eax,dword ptr [edx+eax*4]
 00412827    mov         edx,dword ptr [ebp+8]
 0041282A    mov         edx,dword ptr [edx+3C]
 0041282D    mov         edx,dword ptr [edx]
 0041282F    mov         ecx,dword ptr [ebp+8]
 00412832    mov         ecx,dword ptr [ecx+14]
 00412835    mov         dword ptr [ecx+edx*4],eax
>00412838    jmp         00412943
 0041283D    mov         eax,dword ptr [ebp+8]
 00412840    mov         eax,dword ptr [eax+14]
 00412843    xor         edx,edx
 00412845    mov         dword ptr [eax+8],edx
>00412848    jmp         00412943
 0041284D    mov         eax,dword ptr [ebp+8]
 00412850    mov         eax,dword ptr [eax+14]
 00412853    xor         edx,edx
 00412855    mov         dword ptr [eax+18],edx
 00412858    mov         eax,dword ptr [ebp+8]
 0041285B    mov         eax,dword ptr [eax+14]
 0041285E    xor         edx,edx
 00412860    mov         dword ptr [eax+1C],edx
>00412863    jmp         00412943
 00412868    mov         eax,dword ptr [ebp+8]
 0041286B    mov         eax,dword ptr [eax-4]
 0041286E    cmp         byte ptr [eax],0
>00412871    jne         00412943
 00412877    mov         eax,dword ptr [ebp+8]
 0041287A    mov         eax,dword ptr [eax+58]
 0041287D    mov         ax,word ptr [eax]
 00412880    and         ax,7
 00412884    movzx       eax,ax
 00412887    mov         edx,dword ptr [ebp+8]
 0041288A    mov         edx,dword ptr [edx+14]
 0041288D    mov         ecx,dword ptr [ebp+8]
 00412890    mov         ecx,dword ptr [ecx-8]
 00412893    mov         dword ptr [edx+eax*4],ecx
>00412896    jmp         00412943
 0041289B    mov         eax,dword ptr [ebp+8]
 0041289E    mov         eax,dword ptr [eax+14]
 004128A1    xor         edx,edx
 004128A3    mov         dword ptr [eax+14],edx
>004128A6    jmp         00412943
 004128AB    mov         eax,dword ptr [ebp+8]
 004128AE    mov         eax,dword ptr [eax+44]
 004128B1    cmp         byte ptr [eax],0
>004128B4    jne         00412943
 004128BA    mov         eax,dword ptr [ebp+8]
 004128BD    mov         eax,dword ptr [eax-4]
 004128C0    cmp         byte ptr [eax],0
>004128C3    jne         00412943
 004128C5    mov         eax,dword ptr [ebp+8]
 004128C8    mov         eax,dword ptr [eax+40]
 004128CB    mov         eax,dword ptr [eax]
 004128CD    mov         edx,dword ptr [ebp+8]
 004128D0    mov         edx,dword ptr [edx+14]
 004128D3    mov         ecx,dword ptr [ebp+8]
 004128D6    mov         ecx,dword ptr [ecx-8]
 004128D9    mov         dword ptr [edx+eax*4],ecx
>004128DC    jmp         00412943
 004128DE    mov         eax,dword ptr [ebp+8]
 004128E1    mov         eax,dword ptr [eax+4C]
 004128E4    cmp         byte ptr [eax],0E0
>004128E7    jne         00412943
 004128E9    mov         eax,dword ptr [ebp+8]
 004128EC    mov         eax,dword ptr [eax+14]
 004128EF    xor         edx,edx
 004128F1    mov         dword ptr [eax],edx
>004128F3    jmp         00412943
 004128F5    mov         eax,dword ptr [ebp+8]
 004128F8    mov         eax,dword ptr [eax+14]
 004128FB    xor         edx,edx
 004128FD    mov         dword ptr [eax+4],edx
>00412900    jmp         00412943
 00412902    mov         eax,dword ptr [ebp+8]
 00412905    mov         eax,dword ptr [eax+3C]
 00412908    cmp         dword ptr [eax],4
>0041290B    jl          00412943
 0041290D    mov         eax,dword ptr [ebp+8]
 00412910    mov         eax,dword ptr [eax+14]
 00412913    xor         edx,edx
 00412915    mov         dword ptr [eax+8],edx
>00412918    jmp         00412943
 0041291A    mov         eax,dword ptr [ebp+8]
 0041291D    mov         eax,dword ptr [eax+3C]
 00412920    cmp         dword ptr [eax],1
>00412923    jg          00412943
 00412925    mov         eax,dword ptr [ebp+8]
 00412928    mov         eax,dword ptr [eax+44]
 0041292B    cmp         byte ptr [eax],0
>0041292E    jne         00412943
 00412930    mov         eax,dword ptr [ebp+8]
 00412933    mov         eax,dword ptr [eax+40]
 00412936    mov         eax,dword ptr [eax]
 00412938    mov         edx,dword ptr [ebp+8]
 0041293B    mov         edx,dword ptr [edx+14]
 0041293E    xor         ecx,ecx
 00412940    mov         dword ptr [edx+eax*4],ecx
 00412943    pop         ebx
 00412944    pop         ebp
 00412945    ret
end;*}

//00412948
{*procedure sub_00412948(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00412948    push        ebp
 00412949    mov         ebp,esp
 0041294B    add         esp,0FFFFFFF4
 0041294E    push        ebx
 0041294F    push        esi
 00412950    push        edi
 00412951    mov         dword ptr [ebp-4],ecx
 00412954    mov         dword ptr [ebp-0C],edx
 00412957    mov         dword ptr [ebp-8],eax
 0041295A    mov         eax,dword ptr [ebp+8]
 0041295D    mov         edx,24
 00412962    call        00408130
 00412967    mov         eax,dword ptr [ebp+8]
 0041296A    mov         edx,dword ptr [ebp-8]
 0041296D    mov         dword ptr [eax+1C],edx
 00412970    cmp         dword ptr [ebp-8],0
>00412974    je          00412B05
 0041297A    mov         eax,dword ptr [ebp+58]
 0041297D    mov         word ptr [eax],0
 00412982    xor         ecx,ecx
 00412984    push        ebp
 00412985    push        412AE8
 0041298A    push        dword ptr fs:[ecx]
 0041298D    mov         dword ptr fs:[ecx],esp
 00412990    mov         eax,dword ptr [ebp-0C]
 00412993    mov         byte ptr [eax],0
 00412996    mov         eax,dword ptr [ebp-4]
 00412999    mov         byte ptr [eax],0
 0041299C    mov         eax,dword ptr [ebp+68]
 0041299F    mov         byte ptr [eax],0
 004129A2    mov         eax,dword ptr [ebp+64]
 004129A5    mov         byte ptr [eax],0
 004129A8    mov         eax,dword ptr [ebp+60]
 004129AB    mov         byte ptr [eax],0
 004129AE    mov         eax,dword ptr [ebp+5C]
 004129B1    mov         byte ptr [eax],0
 004129B4    mov         eax,dword ptr [ebp+18]
 004129B7    mov         dword ptr [eax],4
 004129BD    mov         eax,dword ptr [ebp-8]
 004129C0    movzx       eax,byte ptr [eax]
 004129C3    mov         edx,dword ptr [ebp+58]
 004129C6    mov         word ptr [edx],ax
 004129C9    inc         dword ptr [ebp-8]
 004129CC    push        ebp
 004129CD    call        004117C0
 004129D2    pop         ecx
 004129D3    test        al,al
>004129D5    jne         004129BD
 004129D7    mov         eax,dword ptr [ebp+58]
 004129DA    cmp         word ptr [eax],0F
>004129DE    jne         00412A1E
 004129E0    mov         eax,dword ptr [ebp-8]
 004129E3    movzx       eax,byte ptr [eax]
 004129E6    mov         edx,dword ptr [ebp+58]
 004129E9    mov         word ptr [edx],ax
 004129EC    mov         eax,dword ptr [ebp+58]
 004129EF    movzx       eax,word ptr [eax]
 004129F2    movzx       eax,word ptr [eax*2+53D650]
 004129FA    mov         edx,dword ptr [ebp+54]
 004129FD    mov         dword ptr [edx],eax
 004129FF    mov         eax,dword ptr [ebp+58]
 00412A02    movzx       eax,word ptr [eax]
 00412A05    movzx       eax,byte ptr [eax+53DB30]
 00412A0C    mov         edx,dword ptr [ebp+50]
 00412A0F    mov         dword ptr [edx],eax
 00412A11    mov         eax,dword ptr [ebp+58]
 00412A14    add         word ptr [eax],0F00
 00412A19    inc         dword ptr [ebp-8]
>00412A1C    jmp         00412A43
 00412A1E    mov         eax,dword ptr [ebp+58]
 00412A21    movzx       eax,word ptr [eax]
 00412A24    movzx       eax,word ptr [eax*2+53D450]
 00412A2C    mov         edx,dword ptr [ebp+54]
 00412A2F    mov         dword ptr [edx],eax
 00412A31    mov         eax,dword ptr [ebp+58]
 00412A34    movzx       eax,word ptr [eax]
 00412A37    movzx       eax,byte ptr [eax+53DA30]
 00412A3E    mov         edx,dword ptr [ebp+50]
 00412A41    mov         dword ptr [edx],eax
 00412A43    mov         eax,dword ptr [ebp+54]
 00412A46    test        byte ptr [eax],38
>00412A49    je          00412AA5
 00412A4B    push        ebp
 00412A4C    call        004118DC
 00412A51    pop         ecx
 00412A52    mov         eax,dword ptr [ebp+54]
 00412A55    mov         eax,dword ptr [eax]
 00412A57    and         eax,38
 00412A5A    cmp         eax,8
>00412A5D    jne         00412AA5
 00412A5F    mov         edx,0A
 00412A64    mov         eax,53D850
 00412A69    xor         ecx,ecx
 00412A6B    mov         cl,byte ptr [eax]
 00412A6D    mov         ebx,dword ptr [ebp+58]
 00412A70    cmp         cx,word ptr [ebx]
>00412A73    jne         00412A9F
 00412A75    mov         ecx,dword ptr [ebp+44]
 00412A78    cmp         byte ptr [ecx],0
>00412A7B    je          00412A8E
 00412A7D    mov         ecx,dword ptr [ebp+3C]
 00412A80    mov         ecx,dword ptr [ecx]
 00412A82    movzx       eax,word ptr [eax+ecx*2+2]
 00412A87    mov         ecx,dword ptr [ebp+54]
 00412A8A    mov         dword ptr [ecx],eax
>00412A8C    jmp         00412AA5
 00412A8E    mov         ecx,dword ptr [ebp+3C]
 00412A91    mov         ecx,dword ptr [ecx]
 00412A93    movzx       eax,word ptr [eax+ecx*2+12]
 00412A98    mov         ecx,dword ptr [ebp+54]
 00412A9B    mov         dword ptr [ecx],eax
>00412A9D    jmp         00412AA5
 00412A9F    add         eax,22
 00412AA2    dec         edx
>00412AA3    jne         00412A69
 00412AA5    push        ebp
 00412AA6    call        00411BD0
 00412AAB    pop         ecx
 00412AAC    mov         edx,dword ptr [ebp+20]
 00412AAF    mov         dword ptr [edx],eax
 00412AB1    push        ebp
 00412AB2    call        00411CB4
 00412AB7    pop         ecx
 00412AB8    test        al,al
>00412ABA    je          00412AD6
 00412ABC    mov         eax,dword ptr [ebp+8]
 00412ABF    mov         byte ptr [eax],1
 00412AC2    push        ebp
 00412AC3    call        004121A4
 00412AC8    pop         ecx
 00412AC9    cmp         dword ptr [ebp+14],0
>00412ACD    je          00412AD6
 00412ACF    push        ebp
 00412AD0    call        00412458
 00412AD5    pop         ecx
 00412AD6    mov         eax,dword ptr [ebp+20]
 00412AD9    mov         eax,dword ptr [eax]
 00412ADB    add         dword ptr [ebp-8],eax
 00412ADE    xor         eax,eax
 00412AE0    pop         edx
 00412AE1    pop         ecx
 00412AE2    pop         ecx
 00412AE3    mov         dword ptr fs:[eax],edx
>00412AE6    jmp         00412AF8
>00412AE8    jmp         @HandleAnyException
 00412AED    mov         eax,dword ptr [ebp+8]
 00412AF0    mov         byte ptr [eax],0
 00412AF3    call        @DoneExcept
 00412AF8    mov         eax,dword ptr [ebp+58]
 00412AFB    mov         ax,word ptr [eax]
 00412AFE    mov         edx,dword ptr [ebp+8]
 00412B01    mov         word ptr [edx+2],ax
 00412B05    mov         eax,dword ptr [ebp+8]
 00412B08    mov         edx,dword ptr [ebp-8]
 00412B0B    mov         dword ptr [eax+20],edx
 00412B0E    mov         eax,dword ptr [ebp+8]
 00412B11    cmp         byte ptr [eax+6],0
>00412B15    jne         00412B20
 00412B17    mov         eax,dword ptr [ebp+8]
 00412B1A    cmp         byte ptr [eax+5],0
>00412B1E    je          00412B63
 00412B20    mov         eax,dword ptr [ebp+8]
 00412B23    mov         eax,dword ptr [eax+8]
 00412B26    mov         edx,dword ptr [ebp+8]
 00412B29    cmp         eax,dword ptr [edx+20]
>00412B2C    jne         00412B63
 00412B2E    mov         eax,dword ptr [ebp+8]
 00412B31    mov         byte ptr [eax+6],0
 00412B35    mov         eax,dword ptr [ebp+8]
 00412B38    mov         byte ptr [eax+5],0
 00412B3C    mov         eax,dword ptr [ebp+8]
 00412B3F    xor         edx,edx
 00412B41    mov         dword ptr [eax+8],edx
 00412B44    mov         eax,dword ptr [ebp+8]
 00412B47    xor         edx,edx
 00412B49    mov         dword ptr [eax+0C],edx
 00412B4C    mov         eax,dword ptr [ebp+8]
 00412B4F    xor         edx,edx
 00412B51    mov         dword ptr [eax+10],edx
 00412B54    mov         eax,dword ptr [ebp+8]
 00412B57    xor         edx,edx
 00412B59    mov         dword ptr [eax+14],edx
 00412B5C    mov         eax,dword ptr [ebp+8]
 00412B5F    mov         byte ptr [eax+18],0
 00412B63    pop         edi
 00412B64    pop         esi
 00412B65    pop         ebx
 00412B66    mov         esp,ebp
 00412B68    pop         ebp
 00412B69    ret         64
end;*}

//004149EC
{*procedure sub_004149EC(?:?; ?:Integer; ?:?; ?:?; ?:?);
begin
 004149EC    push        ebp
 004149ED    mov         ebp,esp
 004149EF    add         esp,0FFFFFFC0
 004149F2    push        ebx
 004149F3    push        esi
 004149F4    push        edi
 004149F5    mov         ebx,ecx
 004149F7    mov         esi,edx
 004149F9    mov         edi,eax
 004149FB    lea         eax,[ebp-3]
 004149FE    push        eax
 004149FF    lea         eax,[ebp-4]
 00414A02    push        eax
 00414A03    lea         eax,[ebp-5]
 00414A06    push        eax
 00414A07    lea         eax,[ebp-6]
 00414A0A    push        eax
 00414A0B    lea         eax,[ebp-8]
 00414A0E    push        eax
 00414A0F    lea         eax,[ebp-0C]
 00414A12    push        eax
 00414A13    lea         eax,[ebp-10]
 00414A16    push        eax
 00414A17    lea         eax,[ebp-11]
 00414A1A    push        eax
 00414A1B    lea         eax,[ebp-12]
 00414A1E    push        eax
 00414A1F    lea         eax,[ebp-13]
 00414A22    push        eax
 00414A23    lea         eax,[ebp-18]
 00414A26    push        eax
 00414A27    lea         eax,[ebp-1C]
 00414A2A    push        eax
 00414A2B    lea         eax,[ebp-20]
 00414A2E    push        eax
 00414A2F    lea         eax,[ebp-24]
 00414A32    push        eax
 00414A33    lea         eax,[ebp-28]
 00414A36    push        eax
 00414A37    lea         eax,[ebp-2C]
 00414A3A    push        eax
 00414A3B    lea         eax,[ebp-30]
 00414A3E    push        eax
 00414A3F    lea         eax,[ebp-34]
 00414A42    push        eax
 00414A43    lea         eax,[ebp-38]
 00414A46    push        eax
 00414A47    lea         eax,[ebp-3C]
 00414A4A    push        eax
 00414A4B    lea         eax,[ebp-40]
 00414A4E    push        eax
 00414A4F    push        esi
 00414A50    push        ebx
 00414A51    mov         eax,dword ptr [ebp+0C]
 00414A54    push        eax
 00414A55    mov         eax,dword ptr [ebp+8]
 00414A58    push        eax
 00414A59    lea         ecx,[ebp-2]
 00414A5C    lea         edx,[ebp-1]
 00414A5F    mov         eax,edi
 00414A61    call        00412948
 00414A66    pop         edi
 00414A67    pop         esi
 00414A68    pop         ebx
 00414A69    mov         esp,ebp
 00414A6B    pop         ebp
 00414A6C    ret         8
end;*}

//00414A70
{*procedure sub_00414A70(?:Pointer; ?:?);
begin
 00414A70    push        ebx
 00414A71    push        esi
 00414A72    mov         esi,edx
 00414A74    mov         ebx,eax
 00414A76    push        0
 00414A78    push        esi
 00414A79    xor         ecx,ecx
 00414A7B    xor         edx,edx
 00414A7D    mov         eax,ebx
 00414A7F    call        004149EC
 00414A84    pop         esi
 00414A85    pop         ebx
 00414A86    ret
end;*}

//00414A88
{*procedure sub_00414A88(?:?; ?:?; ?:?);
begin
 00414A88    push        ebx
 00414A89    push        esi
 00414A8A    push        edi
 00414A8B    mov         edi,ecx
 00414A8D    mov         esi,edx
 00414A8F    mov         ebx,eax
 00414A91    push        esi
 00414A92    push        edi
 00414A93    xor         ecx,ecx
 00414A95    xor         edx,edx
 00414A97    mov         eax,ebx
 00414A99    call        004149EC
 00414A9E    pop         edi
 00414A9F    pop         esi
 00414AA0    pop         ebx
 00414AA1    ret
end;*}

//00414AA4
{*procedure sub_00414AA4(?:?; ?:?; ?:?);
begin
 00414AA4    push        ebp
 00414AA5    mov         ebp,esp
 00414AA7    add         esp,0FFFFFFF4
 00414AAA    push        ebx
 00414AAB    push        esi
 00414AAC    push        edi
 00414AAD    mov         dword ptr [ebp-4],edx
 00414AB0    mov         esi,eax
 00414AB2    xor         eax,eax
 00414AB4    mov         dword ptr [ebp-0C],eax
 00414AB7    mov         cl,1
 00414AB9    mov         eax,dword ptr [ebp+8]
 00414ABC    mov         eax,dword ptr [eax-24]
 00414ABF    dec         eax
 00414AC0    test        eax,eax
>00414AC2    jl          00414B78
 00414AC8    inc         eax
 00414AC9    mov         dword ptr [ebp-8],0
 00414AD0    mov         edx,dword ptr [ebp-8]
 00414AD3    add         edx,edx
 00414AD5    lea         edx,[edx+edx*2]
 00414AD8    mov         ebx,dword ptr [ebp+8]
 00414ADB    mov         ebx,dword ptr [ebx+8]
 00414ADE    mov         ebx,dword ptr [ebx+1C]
 00414AE1    lea         edx,[ebx+edx*8]
 00414AE4    cmp         esi,dword ptr [edx]
>00414AE6    jne         00414B23
 00414AE8    cmp         dword ptr [edx+0C],0
>00414AEC    je          00414AFA
 00414AEE    mov         eax,dword ptr [ebp-4]
 00414AF1    cmp         eax,dword ptr [edx+0C]
>00414AF4    jbe         00414B00
 00414AF6    cmp         eax,dword ptr [edx]
>00414AF8    jae         00414B00
 00414AFA    mov         eax,dword ptr [ebp-4]
 00414AFD    mov         dword ptr [edx+0C],eax
 00414B00    xor         eax,eax
 00414B02    mov         ecx,dword ptr [ebp+8]
 00414B05    add         ecx,0FFFFFFE0
 00414B08    mov         ebx,dword ptr [ecx]
 00414B0A    cmp         ebx,dword ptr [edx+eax*4+10]
>00414B0E    je          00414B16
 00414B10    xor         ebx,ebx
 00414B12    mov         dword ptr [edx+eax*4+10],ebx
 00414B16    inc         eax
 00414B17    add         ecx,4
 00414B1A    cmp         eax,8
>00414B1D    jne         00414B08
 00414B1F    xor         ecx,ecx
>00414B21    jmp         00414B78
 00414B23    mov         edi,esi
 00414B25    cmp         edi,dword ptr [edx]
>00414B27    jbe         00414B6E
 00414B29    cmp         edi,dword ptr [edx+4]
>00414B2C    ja          00414B6E
 00414B2E    mov         eax,dword ptr [edx+4]
 00414B31    mov         dword ptr [ebp-0C],eax
 00414B34    dec         edi
 00414B35    mov         dword ptr [edx+4],edi
 00414B38    xor         eax,eax
 00414B3A    mov         ebx,dword ptr [ebp+8]
 00414B3D    lea         edi,[ebx-20]
 00414B40    mov         ebx,dword ptr [edi]
 00414B42    cmp         ebx,dword ptr [edx+eax*4+10]
>00414B46    je          00414B4C
 00414B48    xor         ebx,ebx
 00414B4A    mov         dword ptr [edi],ebx
 00414B4C    inc         eax
 00414B4D    add         edi,4
 00414B50    cmp         eax,8
>00414B53    jne         00414B40
 00414B55    mov         eax,dword ptr [ebp+8]
 00414B58    mov         eax,dword ptr [eax-28]
 00414B5B    cmp         eax,dword ptr [ebp-8]
>00414B5E    jne         00414B78
 00414B60    mov         eax,dword ptr [ebp+8]
 00414B63    mov         eax,dword ptr [eax-24]
 00414B66    mov         edx,dword ptr [ebp+8]
 00414B69    mov         dword ptr [edx-28],eax
>00414B6C    jmp         00414B78
 00414B6E    inc         dword ptr [ebp-8]
 00414B71    dec         eax
>00414B72    jne         00414AD0
 00414B78    test        cl,cl
>00414B7A    je          00414C36
 00414B80    mov         eax,dword ptr [ebp+8]
 00414B83    mov         eax,dword ptr [eax+8]
 00414B86    mov         eax,dword ptr [eax+1C]
 00414B89    call        @LStrLen
 00414B8E    mov         edx,dword ptr [ebp+8]
 00414B91    cmp         eax,dword ptr [edx-24]
>00414B94    jne         00414BEF
 00414B96    mov         eax,dword ptr [ebp+8]
 00414B99    mov         eax,dword ptr [eax+8]
 00414B9C    cmp         dword ptr [eax+1C],0
>00414BA0    jne         00414BC2
 00414BA2    push        8
 00414BA4    mov         eax,dword ptr [ebp+8]
 00414BA7    mov         eax,dword ptr [eax+8]
 00414BAA    add         eax,1C
 00414BAD    mov         ecx,1
 00414BB2    mov         edx,dword ptr ds:[410A28];_DynArr_13_1
 00414BB8    call        @DynArraySetLength
 00414BBD    add         esp,4
>00414BC0    jmp         00414BEF
 00414BC2    mov         eax,dword ptr [ebp+8]
 00414BC5    mov         eax,dword ptr [eax+8]
 00414BC8    mov         eax,dword ptr [eax+1C]
 00414BCB    call        @LStrLen
 00414BD0    add         eax,eax
 00414BD2    push        eax
 00414BD3    mov         eax,dword ptr [ebp+8]
 00414BD6    mov         eax,dword ptr [eax+8]
 00414BD9    add         eax,1C
 00414BDC    mov         ecx,1
 00414BE1    mov         edx,dword ptr ds:[410A28];_DynArr_13_1
 00414BE7    call        @DynArraySetLength
 00414BEC    add         esp,4
 00414BEF    mov         eax,dword ptr [ebp+8]
 00414BF2    inc         dword ptr [eax-24]
 00414BF5    mov         eax,dword ptr [ebp+8]
 00414BF8    mov         eax,dword ptr [eax-24]
 00414BFB    add         eax,eax
 00414BFD    lea         eax,[eax+eax*2]
 00414C00    mov         edx,dword ptr [ebp+8]
 00414C03    mov         edx,dword ptr [edx+8]
 00414C06    mov         edx,dword ptr [edx+1C]
 00414C09    lea         eax,[edx+eax*8-30]
 00414C0D    mov         dword ptr [eax],esi
 00414C0F    mov         edx,dword ptr [ebp-0C]
 00414C12    mov         dword ptr [eax+4],edx
 00414C15    mov         byte ptr [eax+8],0
 00414C19    mov         byte ptr [eax+9],0
 00414C1D    mov         edx,dword ptr [ebp-4]
 00414C20    mov         dword ptr [eax+0C],edx
 00414C23    lea         edx,[eax+10]
 00414C26    mov         eax,dword ptr [ebp+8]
 00414C29    add         eax,0FFFFFFE0
 00414C2C    mov         ecx,20
 00414C31    call        Move
 00414C36    pop         edi
 00414C37    pop         esi
 00414C38    pop         ebx
 00414C39    mov         esp,ebp
 00414C3B    pop         ebp
 00414C3C    ret
end;*}

//00414C40
{*procedure sub_00414C40(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00414C40    push        ebp
 00414C41    mov         ebp,esp
 00414C43    push        ebx
 00414C44    push        esi
 00414C45    push        edi
 00414C46    mov         ebx,ecx
 00414C48    mov         esi,edx
 00414C4A    mov         edi,eax
 00414C4C    mov         eax,dword ptr [ebp+0C]
 00414C4F    mov         eax,dword ptr [eax+8]
 00414C52    mov         eax,dword ptr [eax+1C]
 00414C55    call        @LStrLen
 00414C5A    mov         edx,dword ptr [ebp+0C]
 00414C5D    cmp         eax,dword ptr [edx-24]
>00414C60    jne         00414CBB
 00414C62    mov         eax,dword ptr [ebp+0C]
 00414C65    mov         eax,dword ptr [eax+8]
 00414C68    cmp         dword ptr [eax+1C],0
>00414C6C    jne         00414C8E
 00414C6E    push        8
 00414C70    mov         eax,dword ptr [ebp+0C]
 00414C73    mov         eax,dword ptr [eax+8]
 00414C76    add         eax,1C
 00414C79    mov         ecx,1
 00414C7E    mov         edx,dword ptr ds:[410A28];_DynArr_13_1
 00414C84    call        @DynArraySetLength
 00414C89    add         esp,4
>00414C8C    jmp         00414CBB
 00414C8E    mov         eax,dword ptr [ebp+0C]
 00414C91    mov         eax,dword ptr [eax+8]
 00414C94    mov         eax,dword ptr [eax+1C]
 00414C97    call        @LStrLen
 00414C9C    add         eax,eax
 00414C9E    push        eax
 00414C9F    mov         eax,dword ptr [ebp+0C]
 00414CA2    mov         eax,dword ptr [eax+8]
 00414CA5    add         eax,1C
 00414CA8    mov         ecx,1
 00414CAD    mov         edx,dword ptr ds:[410A28];_DynArr_13_1
 00414CB3    call        @DynArraySetLength
 00414CB8    add         esp,4
 00414CBB    mov         eax,dword ptr [ebp+0C]
 00414CBE    inc         dword ptr [eax-24]
 00414CC1    mov         eax,dword ptr [ebp+0C]
 00414CC4    mov         eax,dword ptr [eax-24]
 00414CC7    add         eax,eax
 00414CC9    lea         eax,[eax+eax*2]
 00414CCC    mov         edx,dword ptr [ebp+0C]
 00414CCF    mov         edx,dword ptr [edx+8]
 00414CD2    mov         edx,dword ptr [edx+1C]
 00414CD5    lea         eax,[edx+eax*8-30]
 00414CD9    mov         dword ptr [eax],edi
 00414CDB    add         esi,edi
 00414CDD    dec         esi
 00414CDE    mov         dword ptr [eax+4],esi
 00414CE1    mov         byte ptr [eax+8],bl
 00414CE4    mov         dl,byte ptr [ebp+8]
 00414CE7    mov         byte ptr [eax+9],dl
 00414CEA    xor         edx,edx
 00414CEC    mov         dword ptr [eax+0C],edx
 00414CEF    add         eax,10
 00414CF2    mov         edx,20
 00414CF7    call        00408130
 00414CFC    pop         edi
 00414CFD    pop         esi
 00414CFE    pop         ebx
 00414CFF    pop         ebp
 00414D00    ret         4
end;*}

//00414D04
{*procedure sub_00414D04(?:?; ?:?);
begin
 00414D04    push        ebp
 00414D05    mov         ebp,esp
 00414D07    add         esp,0FFFFFFA4
 00414D0A    push        ebx
 00414D0B    push        esi
 00414D0C    push        edi
 00414D0D    xor         edx,edx
 00414D0F    mov         dword ptr [ebp-58],edx
 00414D12    mov         dword ptr [ebp-5C],edx
 00414D15    mov         dword ptr [ebp-0C],edx
 00414D18    mov         ebx,eax
 00414D1A    xor         eax,eax
 00414D1C    push        ebp
 00414D1D    push        415260
 00414D22    push        dword ptr fs:[eax]
 00414D25    mov         dword ptr fs:[eax],esp
 00414D28    cmp         byte ptr [ebx+5],0
>00414D2C    jne         00414D38
 00414D2E    cmp         byte ptr [ebx+6],0
>00414D32    je          0041523D
 00414D38    cmp         dword ptr [ebx+0C],0
>00414D3C    jne         00414D48
 00414D3E    cmp         dword ptr [ebx+10],0
>00414D42    je          004151DB
 00414D48    mov         byte ptr [ebp-1],0
 00414D4C    mov         eax,dword ptr [ebx+8]
 00414D4F    test        eax,eax
>00414D51    je          00414F73
 00414D57    mov         edx,dword ptr [ebp+8]
 00414D5A    cmp         eax,dword ptr [edx-2C]
>00414D5D    jne         00414D77
 00414D5F    mov         byte ptr [ebp-1],1
 00414D63    mov         eax,dword ptr [ebp+8]
 00414D66    push        eax
 00414D67    mov         eax,dword ptr [ebx+20]
 00414D6A    xor         edx,edx
 00414D6C    call        00414AA4
 00414D71    pop         ecx
>00414D72    jmp         00414F73
 00414D77    mov         edx,dword ptr [ebp+8]
 00414D7A    cmp         eax,dword ptr [edx+10]
>00414D7D    jne         00414DFE
 00414D7F    mov         byte ptr [ebp-1],1
 00414D83    mov         eax,dword ptr [ebp+8]
 00414D86    push        eax
 00414D87    mov         eax,dword ptr [ebx+20]
 00414D8A    xor         edx,edx
 00414D8C    call        00414AA4
 00414D91    pop         ecx
 00414D92    lea         edx,[ebp-30]
 00414D95    mov         eax,dword ptr [ebx+20]
 00414D98    call        00414A70
 00414D9D    cmp         byte ptr [ebp-2A],0
>00414DA1    je          00414F73
 00414DA7    mov         eax,dword ptr [ebp+8]
 00414DAA    mov         eax,dword ptr [eax-30]
 00414DAD    cmp         eax,dword ptr [ebp-28]
>00414DB0    jae         00414F73
 00414DB6    mov         eax,dword ptr [ebx+1C]
 00414DB9    cmp         eax,dword ptr [ebp-28]
>00414DBC    jbe         00414F73
 00414DC2    mov         eax,dword ptr [ebp-28]
 00414DC5    sub         eax,5
 00414DC8    cmp         byte ptr [eax],68
>00414DCB    jne         00414F73
 00414DD1    mov         eax,dword ptr [ebp-28]
 00414DD4    sub         eax,4
 00414DD7    mov         eax,dword ptr [eax]
 00414DD9    mov         edx,dword ptr [ebp+8]
 00414DDC    cmp         eax,dword ptr [edx-30]
>00414DDF    jbe         00414F73
 00414DE5    mov         eax,dword ptr [ebp+8]
 00414DE8    push        eax
 00414DE9    mov         eax,dword ptr [ebp-28]
 00414DEC    sub         eax,4
 00414DEF    mov         eax,dword ptr [eax]
 00414DF1    xor         edx,edx
 00414DF3    call        00414AA4
 00414DF8    pop         ecx
>00414DF9    jmp         00414F73
 00414DFE    mov         edx,dword ptr [ebp+8]
 00414E01    cmp         eax,dword ptr [edx+18]
>00414E04    jne         00414E62
 00414E06    mov         eax,dword ptr [ebx+20]
 00414E09    mov         edx,dword ptr [eax]
 00414E0B    cmp         edx,100
>00414E11    jae         00414F73
 00414E17    mov         byte ptr [ebp-1],1
 00414E1B    mov         ecx,dword ptr [ebp+8]
 00414E1E    push        ecx
 00414E1F    push        1
 00414E21    shl         edx,3
 00414E24    add         edx,4
 00414E27    xor         ecx,ecx
 00414E29    call        00414C40
 00414E2E    pop         ecx
 00414E2F    mov         eax,dword ptr [ebx+20]
 00414E32    mov         edi,dword ptr [eax]
 00414E34    test        edi,edi
>00414E36    jbe         00414F73
 00414E3C    mov         esi,1
 00414E41    mov         eax,dword ptr [ebp+8]
 00414E44    push        eax
 00414E45    mov         eax,dword ptr [ebx+20]
 00414E48    mov         edx,esi
 00414E4A    shl         edx,3
 00414E4D    add         eax,edx
 00414E4F    mov         eax,dword ptr [eax]
 00414E51    xor         edx,edx
 00414E53    call        00414AA4
 00414E58    pop         ecx
 00414E59    inc         esi
 00414E5A    dec         edi
>00414E5B    jne         00414E41
>00414E5D    jmp         00414F73
 00414E62    mov         edx,dword ptr [ebp+8]
 00414E65    cmp         eax,dword ptr [edx+14]
>00414E68    jne         00414E73
 00414E6A    mov         byte ptr [ebp-1],1
>00414E6E    jmp         00414F73
 00414E73    mov         eax,dword ptr [ebx+8]
 00414E76    cmp         eax,dword ptr ds:[53D43C];0x0 gvar_0053D43C
>00414E7C    jne         00414F73
 00414E82    mov         eax,dword ptr [ebp+8]
 00414E85    mov         eax,dword ptr [eax-28]
 00414E88    add         eax,eax
 00414E8A    lea         eax,[eax+eax*2]
 00414E8D    mov         edx,dword ptr [ebp+8]
 00414E90    mov         edx,dword ptr [edx+8]
 00414E93    mov         edx,dword ptr [edx+1C]
 00414E96    mov         eax,dword ptr [edx+eax*8]
 00414E99    cmp         eax,dword ptr [ebx+1C]
>00414E9C    jae         00414F73
 00414EA2    xor         esi,esi
 00414EA4    mov         eax,dword ptr [ebp+8]
 00414EA7    mov         eax,dword ptr [eax-28]
 00414EAA    add         eax,eax
 00414EAC    lea         eax,[eax+eax*2]
 00414EAF    mov         edx,dword ptr [ebp+8]
 00414EB2    mov         edx,dword ptr [edx+8]
 00414EB5    mov         edx,dword ptr [edx+1C]
 00414EB8    mov         eax,dword ptr [edx+eax*8]
 00414EBB    lea         edx,[ebp-30]
 00414EBE    call        00414A70
>00414EC3    jmp         00414EED
 00414EC5    cmp         word ptr [ebp-2E],0B8
>00414ECB    jne         00414ED3
 00414ECD    mov         eax,dword ptr [ebp-14]
 00414ED0    inc         eax
 00414ED1    mov         esi,dword ptr [eax]
 00414ED3    lea         edx,[ebp-54]
 00414ED6    mov         eax,dword ptr [ebp-10]
 00414ED9    call        00414A70
 00414EDE    push        esi
 00414EDF    lea         esi,[ebp-54]
 00414EE2    lea         edi,[ebp-30]
 00414EE5    mov         ecx,9
 00414EEA    rep movs    dword ptr [edi],dword ptr [esi]
 00414EEC    pop         esi
 00414EED    cmp         byte ptr [ebp-30],0
>00414EF1    je          00414EFB
 00414EF3    mov         eax,dword ptr [ebx+1C]
 00414EF6    cmp         eax,dword ptr [ebp-14]
>00414EF9    jne         00414EC5
 00414EFB    test        esi,esi
>00414EFD    je          00414F73
 00414EFF    add         esi,0A
 00414F02    mov         ax,word ptr [esi]
 00414F05    sub         ax,1
>00414F09    jb          00414F19
>00414F0B    je          00414F2C
 00414F0D    dec         ax
>00414F10    je          00414F3F
 00414F12    dec         ax
>00414F15    je          00414F52
>00414F17    jmp         00414F73
 00414F19    mov         eax,dword ptr [ebp+8]
 00414F1C    push        eax
 00414F1D    add         esi,2
 00414F20    mov         eax,dword ptr [esi]
 00414F22    xor         edx,edx
 00414F24    call        00414AA4
 00414F29    pop         ecx
>00414F2A    jmp         00414F73
 00414F2C    mov         eax,dword ptr [ebp+8]
 00414F2F    push        eax
 00414F30    add         esi,6
 00414F33    mov         eax,dword ptr [esi]
 00414F35    xor         edx,edx
 00414F37    call        00414AA4
 00414F3C    pop         ecx
>00414F3D    jmp         00414F73
 00414F3F    mov         eax,dword ptr [ebp+8]
 00414F42    push        eax
 00414F43    add         esi,6
 00414F46    mov         eax,dword ptr [esi]
 00414F48    xor         edx,edx
 00414F4A    call        00414AA4
 00414F4F    pop         ecx
>00414F50    jmp         00414F73
 00414F52    add         esi,2
 00414F55    mov         eax,dword ptr [esi]
 00414F57    add         eax,8
 00414F5A    mov         esi,eax
>00414F5C    jmp         00414F6D
 00414F5E    mov         edx,dword ptr [ebp+8]
 00414F61    push        edx
 00414F62    xor         edx,edx
 00414F64    call        00414AA4
 00414F69    pop         ecx
 00414F6A    add         esi,14
 00414F6D    mov         eax,dword ptr [esi]
 00414F6F    test        eax,eax
>00414F71    jne         00414F5E
 00414F73    cmp         dword ptr [ebx+14],4
>00414F77    jl          00415128
 00414F7D    cmp         byte ptr [ebx+5],0
>00414F81    jne         00414FA3
 00414F83    mov         eax,dword ptr [ebx+8]
 00414F86    mov         edx,dword ptr [ebp+8]
 00414F89    cmp         eax,dword ptr [edx-34]
>00414F8C    jb          00414FA3
 00414F8E    mov         eax,dword ptr [ebx+8]
 00414F91    mov         edx,dword ptr [ebp+8]
 00414F94    cmp         eax,dword ptr [edx-38]
>00414F97    ja          00414FA3
 00414F99    cmp         byte ptr [ebp-1],0
>00414F9D    je          00415128
 00414FA3    mov         esi,dword ptr [ebx+8]
 00414FA6    test        esi,esi
>00414FA8    je          0041505A
 00414FAE    mov         eax,dword ptr [ebp+8]
 00414FB1    mov         eax,dword ptr [eax-3C]
 00414FB4    push        eax
 00414FB5    lea         edx,[ebp-2]
 00414FB8    mov         eax,esi
 00414FBA    mov         ecx,1
 00414FBF    call        00417250
 00414FC4    test        al,al
>00414FC6    je          0041505A
 00414FCC    mov         al,byte ptr [ebp-2]
 00414FCF    sub         al,0E9
>00414FD1    je          00414FE1
 00414FD3    sub         al,2
>00414FD5    je          00414FE1
 00414FD7    sub         al,14
>00414FD9    je          00414FE1
 00414FDB    add         al,0FD
 00414FDD    sub         al,2
>00414FDF    jae         0041505A
 00414FE1    lea         edx,[ebp-30]
 00414FE4    mov         eax,dword ptr [ebx+8]
 00414FE7    call        00414A70
 00414FEC    cmp         byte ptr [ebp-30],0
>00414FF0    je          0041505A
 00414FF2    cmp         dword ptr [ebp-28],0
>00414FF6    je          0041505A
 00414FF8    mov         esi,dword ptr ds:[55B28C];^gvar_0053D404
 00414FFE    mov         esi,dword ptr [esi]
 00415000    lea         ecx,[ebp-0C]
 00415003    lea         edx,[ebp-8]
 00415006    mov         eax,dword ptr [ebx+8]
 00415009    call        esi
 0041500B    test        al,al
>0041500D    je          00415026
 0041500F    lea         eax,[ebp-58]
 00415012    push        eax
 00415013    mov         edx,dword ptr [ebx+8]
 00415016    xor         ecx,ecx
 00415018    mov         eax,dword ptr [ebp-8]
 0041501B    call        0040FE60
 00415020    cmp         dword ptr [ebp-58],0
>00415024    jne         0041505A
 00415026    mov         esi,dword ptr ds:[55B28C];^gvar_0053D404
 0041502C    mov         esi,dword ptr [esi]
 0041502E    lea         ecx,[ebp-0C]
 00415031    lea         edx,[ebp-8]
 00415034    mov         eax,dword ptr [ebp-28]
 00415037    call        esi
 00415039    test        al,al
>0041503B    je          0041505A
 0041503D    lea         eax,[ebp-5C]
 00415040    push        eax
 00415041    xor         ecx,ecx
 00415043    mov         edx,dword ptr [ebp-28]
 00415046    mov         eax,dword ptr [ebp-8]
 00415049    call        0040FE60
 0041504E    cmp         dword ptr [ebp-5C],0
>00415052    je          0041505A
 00415054    mov         eax,dword ptr [ebp-28]
 00415057    mov         dword ptr [ebx+8],eax
 0041505A    mov         byte ptr [ebp-1],1
 0041505E    mov         eax,dword ptr [ebp+8]
 00415061    mov         eax,dword ptr [eax+8]
 00415064    mov         eax,dword ptr [eax+20]
 00415067    call        00405CE8
 0041506C    mov         edi,eax
 0041506E    test        edi,edi
>00415070    jl          00415098
 00415072    inc         edi
 00415073    xor         esi,esi
 00415075    mov         eax,esi
 00415077    shl         eax,3
 0041507A    sub         eax,esi
 0041507C    mov         edx,dword ptr [ebp+8]
 0041507F    mov         edx,dword ptr [edx+8]
 00415082    mov         edx,dword ptr [edx+20]
 00415085    mov         eax,dword ptr [edx+eax*4+8]
 00415089    cmp         eax,dword ptr [ebx+20]
>0041508C    jne         00415094
 0041508E    mov         byte ptr [ebp-1],0
>00415092    jmp         00415098
 00415094    inc         esi
 00415095    dec         edi
>00415096    jne         00415075
 00415098    cmp         byte ptr [ebp-1],0
>0041509C    je          00415138
 004150A2    mov         eax,dword ptr [ebp+8]
 004150A5    mov         eax,dword ptr [eax+8]
 004150A8    mov         eax,dword ptr [eax+20]
 004150AB    call        @LStrLen
 004150B0    inc         eax
 004150B1    push        eax
 004150B2    mov         eax,dword ptr [ebp+8]
 004150B5    mov         eax,dword ptr [eax+8]
 004150B8    add         eax,20
 004150BB    mov         ecx,1
 004150C0    mov         edx,dword ptr ds:[410A4C];_DynArr_13_2
 004150C6    call        @DynArraySetLength
 004150CB    add         esp,4
 004150CE    mov         eax,dword ptr [ebp+8]
 004150D1    mov         eax,dword ptr [eax+8]
 004150D4    mov         eax,dword ptr [eax+20]
 004150D7    call        00405CE8
 004150DC    mov         edx,eax
 004150DE    shl         eax,3
 004150E1    sub         eax,edx
 004150E3    mov         edx,dword ptr [ebp+8]
 004150E6    mov         edx,dword ptr [edx+8]
 004150E9    mov         edx,dword ptr [edx+20]
 004150EC    lea         eax,[edx+eax*4]
 004150EF    mov         dl,byte ptr [ebx+5]
 004150F2    mov         byte ptr [eax],dl
 004150F4    mov         edx,dword ptr [ebx+1C]
 004150F7    mov         dword ptr [eax+4],edx
 004150FA    mov         edx,dword ptr [ebx+20]
 004150FD    mov         dword ptr [eax+8],edx
 00415100    mov         edx,dword ptr [ebx+8]
 00415103    mov         dword ptr [eax+0C],edx
 00415106    mov         dl,byte ptr [ebx+7]
 00415109    mov         byte ptr [eax+10],dl
 0041510C    mov         edx,dword ptr [ebx+0C]
 0041510F    mov         dword ptr [eax+14],edx
 00415112    mov         edx,dword ptr [ebx+10]
 00415115    mov         dword ptr [eax+18],edx
 00415118    test        edx,edx
>0041511A    je          00415138
 0041511C    mov         eax,dword ptr [ebp+8]
 0041511F    mov         eax,dword ptr [eax+8]
 00415122    add         dword ptr [eax+30],4
>00415126    jmp         00415138
 00415128    mov         eax,dword ptr [ebp+8]
 0041512B    push        eax
 0041512C    mov         edx,dword ptr [ebx+1C]
 0041512F    mov         eax,dword ptr [ebx+8]
 00415132    call        00414AA4
 00415137    pop         ecx
 00415138    mov         eax,dword ptr [ebp+8]
 0041513B    mov         eax,dword ptr [eax+8]
 0041513E    mov         eax,dword ptr [eax+24]
 00415141    call        00405CE8
 00415146    mov         edi,eax
 00415148    test        edi,edi
>0041514A    jl          0041523D
 00415150    inc         edi
 00415151    xor         esi,esi
 00415153    lea         eax,[esi+esi*2]
 00415156    mov         edx,dword ptr [ebp+8]
 00415159    mov         edx,dword ptr [edx+8]
 0041515C    mov         edx,dword ptr [edx+24]
 0041515F    mov         eax,dword ptr [edx+eax*4+4]
 00415163    cmp         eax,dword ptr [ebx+1C]
>00415166    jne         004151D1
 00415168    mov         eax,dword ptr [ebp+8]
 0041516B    mov         eax,dword ptr [eax+8]
 0041516E    mov         eax,dword ptr [eax+24]
 00415171    call        00405CE8
 00415176    lea         eax,[eax+eax*2]
 00415179    mov         edx,dword ptr [ebp+8]
 0041517C    mov         edx,dword ptr [edx+8]
 0041517F    mov         edx,dword ptr [edx+24]
 00415182    lea         ecx,[esi+esi*2]
 00415185    mov         ebx,dword ptr [ebp+8]
 00415188    mov         ebx,dword ptr [ebx+8]
 0041518B    mov         ebx,dword ptr [ebx+24]
 0041518E    mov         edi,dword ptr [edx+eax*4]
 00415191    mov         dword ptr [ebx+ecx*4],edi
 00415194    mov         edi,dword ptr [edx+eax*4+4]
 00415198    mov         dword ptr [ebx+ecx*4+4],edi
 0041519C    mov         edi,dword ptr [edx+eax*4+8]
 004151A0    mov         dword ptr [ebx+ecx*4+8],edi
 004151A4    mov         eax,dword ptr [ebp+8]
 004151A7    mov         eax,dword ptr [eax+8]
 004151AA    mov         eax,dword ptr [eax+24]
 004151AD    call        00405CE8
 004151B2    push        eax
 004151B3    mov         eax,dword ptr [ebp+8]
 004151B6    mov         eax,dword ptr [eax+8]
 004151B9    add         eax,24
 004151BC    mov         ecx,1
 004151C1    mov         edx,dword ptr ds:[410A70];_DynArr_13_3
 004151C7    call        @DynArraySetLength
 004151CC    add         esp,4
>004151CF    jmp         0041523D
 004151D1    inc         esi
 004151D2    dec         edi
>004151D3    jne         00415153
>004151D9    jmp         0041523D
 004151DB    mov         eax,dword ptr [ebp+8]
 004151DE    mov         eax,dword ptr [eax+8]
 004151E1    mov         eax,dword ptr [eax+24]
 004151E4    call        @LStrLen
 004151E9    mov         esi,eax
 004151EB    lea         eax,[esi+1]
 004151EE    push        eax
 004151EF    mov         eax,dword ptr [ebp+8]
 004151F2    mov         eax,dword ptr [eax+8]
 004151F5    add         eax,24
 004151F8    mov         ecx,1
 004151FD    mov         edx,dword ptr ds:[410A70];_DynArr_13_3
 00415203    call        @DynArraySetLength
 00415208    add         esp,4
 0041520B    lea         eax,[esi+esi*2]
 0041520E    mov         edx,dword ptr [ebp+8]
 00415211    mov         edx,dword ptr [edx+8]
 00415214    mov         edx,dword ptr [edx+24]
 00415217    mov         cl,byte ptr [ebx+5]
 0041521A    mov         byte ptr [edx+eax*4],cl
 0041521D    mov         edx,dword ptr [ebp+8]
 00415220    mov         edx,dword ptr [edx+8]
 00415223    mov         edx,dword ptr [edx+24]
 00415226    mov         ecx,dword ptr [ebx+1C]
 00415229    mov         dword ptr [edx+eax*4+4],ecx
 0041522D    mov         edx,dword ptr [ebp+8]
 00415230    mov         edx,dword ptr [edx+8]
 00415233    mov         edx,dword ptr [edx+24]
 00415236    mov         ecx,dword ptr [ebx+20]
 00415239    mov         dword ptr [edx+eax*4+8],ecx
 0041523D    xor         eax,eax
 0041523F    pop         edx
 00415240    pop         ecx
 00415241    pop         ecx
 00415242    mov         dword ptr fs:[eax],edx
 00415245    push        415267
 0041524A    lea         eax,[ebp-5C]
 0041524D    mov         edx,2
 00415252    call        @LStrArrayClr
 00415257    lea         eax,[ebp-0C]
 0041525A    call        @LStrClr
 0041525F    ret
>00415260    jmp         @HandleFinally
>00415265    jmp         0041524A
 00415267    pop         edi
 00415268    pop         esi
 00415269    pop         ebx
 0041526A    mov         esp,ebp
 0041526C    pop         ebp
 0041526D    ret
end;*}

//00415270
{*procedure sub_00415270(?:?; ?:?);
begin
 00415270    push        ebp
 00415271    mov         ebp,esp
 00415273    add         esp,0FFFFFFA8
 00415276    push        ebx
 00415277    push        esi
 00415278    push        edi
 00415279    mov         esi,eax
 0041527B    xor         eax,eax
 0041527D    mov         dword ptr [ebp-14],eax
 00415280    mov         byte ptr [ebp-0B],0
 00415284    mov         eax,dword ptr [ebp+8]
 00415287    mov         eax,dword ptr [eax-28]
 0041528A    add         eax,eax
 0041528C    lea         eax,[eax+eax*2]
 0041528F    mov         edx,dword ptr [ebp+8]
 00415292    mov         edx,dword ptr [edx+8]
 00415295    mov         edx,dword ptr [edx+1C]
 00415298    mov         edx,dword ptr [edx+eax*8]
 0041529B    mov         dword ptr [ebp-8],edx
 0041529E    mov         edx,dword ptr [ebp+8]
 004152A1    mov         edx,dword ptr [ebp+8]
 004152A4    mov         edx,dword ptr [edx+8]
 004152A7    mov         edx,dword ptr [edx+1C]
 004152AA    lea         eax,[edx+eax*8+10]
 004152AE    mov         edx,dword ptr [ebp+8]
 004152B1    add         edx,0FFFFFFE0
 004152B4    mov         ecx,20
 004152B9    call        Move
 004152BE    mov         eax,dword ptr [ebp+8]
 004152C1    mov         eax,dword ptr [eax-38]
 004152C4    mov         dword ptr [ebp-10],eax
 004152C7    mov         eax,dword ptr [ebp+8]
 004152CA    mov         eax,dword ptr [eax+8]
 004152CD    mov         eax,dword ptr [eax+1C]
 004152D0    call        00405CE8
 004152D5    mov         ebx,eax
 004152D7    test        ebx,ebx
>004152D9    jl          0041532A
 004152DB    inc         ebx
 004152DC    mov         dword ptr [ebp-4],0
 004152E3    mov         eax,dword ptr [ebp-4]
 004152E6    add         eax,eax
 004152E8    lea         eax,[eax+eax*2]
 004152EB    mov         edx,dword ptr [ebp+8]
 004152EE    mov         edx,dword ptr [edx+8]
 004152F1    mov         edx,dword ptr [edx+1C]
 004152F4    mov         eax,dword ptr [edx+eax*8]
 004152F7    mov         edx,dword ptr [ebp+8]
 004152FA    mov         edx,dword ptr [edx-28]
 004152FD    add         edx,edx
 004152FF    lea         edx,[edx+edx*2]
 00415302    mov         ecx,dword ptr [ebp+8]
 00415305    mov         ecx,dword ptr [ecx+8]
 00415308    mov         ecx,dword ptr [ecx+1C]
 0041530B    cmp         eax,dword ptr [ecx+edx*8]
>0041530E    jbe         00415324
 00415310    mov         edx,dword ptr [ebp+8]
 00415313    mov         edx,dword ptr [edx+8]
 00415316    cmp         eax,dword ptr [ebp-10]
>00415319    jae         00415324
 0041531B    mov         edx,dword ptr [ebp+8]
 0041531E    mov         edx,dword ptr [edx+8]
 00415321    mov         dword ptr [ebp-10],eax
 00415324    inc         dword ptr [ebp-4]
 00415327    dec         ebx
>00415328    jne         004152E3
 0041532A    mov         eax,dword ptr [ebp+8]
 0041532D    push        esi
 0041532E    lea         esi,[eax-20]
 00415331    lea         edi,[ebp-34]
 00415334    mov         ecx,8
 00415339    rep movs    dword ptr [edi],dword ptr [esi]
 0041533B    pop         esi
 0041533C    mov         eax,dword ptr [ebp+8]
 0041533F    mov         eax,dword ptr [eax-3C]
 00415342    push        eax
 00415343    lea         eax,[ebp-58]
 00415346    push        eax
 00415347    mov         eax,dword ptr [ebp+8]
 0041534A    lea         edx,[eax-20]
 0041534D    xor         ecx,ecx
 0041534F    mov         eax,dword ptr [ebp-8]
 00415352    call        004149EC
 00415357    push        esi
 00415358    mov         edi,esi
 0041535A    lea         esi,[ebp-58]
 0041535D    mov         ecx,9
 00415362    rep movs    dword ptr [edi],dword ptr [esi]
 00415364    pop         esi
 00415365    cmp         byte ptr [esi],0
>00415368    je          00415673
 0041536E    mov         eax,dword ptr [ebp+8]
 00415371    mov         eax,dword ptr [eax-28]
 00415374    add         eax,eax
 00415376    lea         eax,[eax+eax*2]
 00415379    mov         edx,dword ptr [ebp+8]
 0041537C    mov         edx,dword ptr [edx+8]
 0041537F    mov         edx,dword ptr [edx+1C]
 00415382    mov         ecx,dword ptr [esi+20]
 00415385    dec         ecx
 00415386    mov         dword ptr [edx+eax*8+4],ecx
 0041538A    mov         ax,word ptr [esi+2]
 0041538E    add         eax,0FFFFFF3E
 00415393    sub         ax,2
>00415397    jb          00415673
 0041539D    add         eax,0FFFFFFFA
 004153A0    sub         ax,2
>004153A4    jb          00415673
 004153AA    sub         ax,3
>004153AE    je          00415673
 004153B4    cmp         word ptr [esi+2],68
>004153B9    jne         004153D9
 004153BB    mov         eax,dword ptr [esi+20]
 004153BE    sub         eax,dword ptr [esi+1C]
 004153C1    cmp         eax,5
>004153C4    jne         004153D9
 004153C6    mov         eax,dword ptr [esi+20]
 004153C9    cmp         byte ptr [eax],64
>004153CC    jne         004153D9
 004153CE    mov         eax,dword ptr [esi+1C]
 004153D1    inc         eax
 004153D2    mov         eax,dword ptr [eax]
 004153D4    mov         dword ptr [ebp-14],eax
>004153D7    jmp         0041543D
 004153D9    cmp         dword ptr [ebp-14],0
>004153DD    je          0041543D
 004153DF    cmp         word ptr [esi+2],0FF
>004153E5    jne         00415438
 004153E7    mov         al,byte ptr [esi+4]
 004153EA    mov         edx,eax
 004153EC    and         dl,0F8
 004153EF    cmp         dl,30
>004153F2    jne         0041540D
 004153F4    mov         edx,dword ptr [esi+20]
 004153F7    sub         edx,dword ptr [esi+1C]
 004153FA    cmp         edx,3
>004153FD    jne         0041540D
 004153FF    and         al,7
 00415401    and         eax,0FF
 00415406    cmp         dword ptr [ebp+eax*4-34],0
>0041540B    je          00415429
 0041540D    cmp         byte ptr [esi+4],35
>00415411    jne         00415438
 00415413    mov         eax,dword ptr [esi+20]
 00415416    sub         eax,dword ptr [esi+1C]
 00415419    cmp         eax,7
>0041541C    jne         00415438
 0041541E    mov         eax,dword ptr [esi+1C]
 00415421    add         eax,3
 00415424    cmp         dword ptr [eax],0
>00415427    jne         00415438
 00415429    mov         eax,dword ptr [ebp+8]
 0041542C    push        eax
 0041542D    xor         edx,edx
 0041542F    mov         eax,dword ptr [ebp-14]
 00415432    call        00414AA4
 00415437    pop         ecx
 00415438    xor         eax,eax
 0041543A    mov         dword ptr [ebp-14],eax
 0041543D    cmp         byte ptr [ebp-0B],0
>00415441    jne         00415478
 00415443    cmp         word ptr [esi+2],83
>00415449    jne         00415573
 0041544F    mov         al,byte ptr [esi+4]
 00415452    add         al,8
 00415454    sub         al,8
>00415456    jae         00415573
 0041545C    mov         eax,dword ptr [ebp-8]
 0041545F    add         eax,2
 00415462    mov         al,byte ptr [eax]
 00415464    mov         byte ptr [ebp-0B],al
 00415467    mov         al,byte ptr [esi+4]
 0041546A    and         al,7
 0041546C    mov         byte ptr [ebp-0A],al
 0041546F    mov         byte ptr [ebp-9],0
>00415473    jmp         00415573
 00415478    cmp         byte ptr [ebp-9],0
>0041547C    jne         004154D8
 0041547E    mov         ax,word ptr [esi+2]
 00415482    mov         edx,eax
 00415484    sub         dx,77
>00415488    je          0041549C
 0041548A    sub         dx,8
>0041548E    je          0041549C
 00415490    cmp         ax,0F87
>00415494    je          0041549C
 00415496    cmp         ax,0F8F
>0041549A    jne         004154A8
 0041549C    mov         byte ptr [ebp-9],1
 004154A0    inc         byte ptr [ebp-0B]
>004154A3    jmp         00415573
 004154A8    mov         ax,word ptr [esi+2]
 004154AC    mov         edx,eax
 004154AE    sub         dx,73
>004154B2    je          004154C6
 004154B4    sub         dx,0A
>004154B8    je          004154C6
 004154BA    cmp         ax,0F83
>004154BE    je          004154C6
 004154C0    cmp         ax,0F8D
>004154C4    jne         004154CF
 004154C6    mov         byte ptr [ebp-9],1
>004154CA    jmp         00415573
 004154CF    mov         byte ptr [ebp-0B],0
>004154D3    jmp         00415573
 004154D8    cmp         word ptr [esi+2],0FF
>004154DE    jne         0041556F
 004154E4    cmp         byte ptr [esi+4],24
>004154E8    jne         0041556F
 004154EE    mov         eax,dword ptr [ebp-8]
 004154F1    add         eax,2
 004154F4    mov         al,byte ptr [eax]
 004154F6    and         al,0C7
 004154F8    cmp         al,85
>004154FA    jne         0041556F
 004154FC    mov         eax,dword ptr [ebp-8]
 004154FF    add         eax,2
 00415502    movzx       eax,byte ptr [eax]
 00415505    shr         eax,3
 00415508    and         eax,7
 0041550B    xor         edx,edx
 0041550D    mov         dl,byte ptr [ebp-0A]
 00415510    cmp         eax,edx
>00415512    jne         0041556F
 00415514    mov         eax,dword ptr [ebp-8]
 00415517    add         eax,3
 0041551A    mov         eax,dword ptr [eax]
 0041551C    cmp         eax,dword ptr [esi+20]
>0041551F    jne         0041556F
 00415521    xor         ebx,ebx
 00415523    mov         bl,byte ptr [ebp-0B]
 00415526    dec         ebx
 00415527    test        ebx,ebx
>00415529    jl          0041554F
 0041552B    inc         ebx
 0041552C    mov         dword ptr [ebp-4],0
 00415533    mov         eax,dword ptr [ebp+8]
 00415536    push        eax
 00415537    mov         eax,dword ptr [esi+20]
 0041553A    mov         edx,dword ptr [ebp-4]
 0041553D    mov         eax,dword ptr [eax+edx*4]
 00415540    mov         edx,dword ptr [ebp-8]
 00415543    call        00414AA4
 00415548    pop         ecx
 00415549    inc         dword ptr [ebp-4]
 0041554C    dec         ebx
>0041554D    jne         00415533
 0041554F    mov         eax,dword ptr [ebp+8]
 00415552    push        eax
 00415553    push        0
 00415555    xor         eax,eax
 00415557    mov         al,byte ptr [ebp-0B]
 0041555A    mov         edx,eax
 0041555C    shl         edx,2
 0041555F    mov         eax,dword ptr [esi+20]
 00415562    mov         cl,1
 00415564    call        00414C40
 00415569    pop         ecx
>0041556A    jmp         00415673
 0041556F    mov         byte ptr [ebp-0B],0
 00415573    mov         eax,dword ptr [esi+8]
 00415576    test        eax,eax
>00415578    je          00415582
 0041557A    mov         edx,dword ptr [ebp+8]
 0041557D    cmp         eax,dword ptr [edx+0C]
>00415580    je          00415586
 00415582    xor         eax,eax
>00415584    jmp         00415588
 00415586    mov         al,1
 00415588    mov         byte ptr [ebp-0C],al
 0041558B    mov         eax,dword ptr [ebp+8]
 0041558E    push        eax
 0041558F    mov         eax,esi
 00415591    call        00414D04
 00415596    pop         ecx
 00415597    mov         eax,dword ptr [ebp+8]
 0041559A    mov         eax,dword ptr [eax-24]
 0041559D    add         eax,eax
 0041559F    lea         eax,[eax+eax*2]
 004155A2    mov         edx,dword ptr [ebp+8]
 004155A5    mov         edx,dword ptr [edx+8]
 004155A8    mov         edx,dword ptr [edx+1C]
 004155AB    mov         eax,dword ptr [edx+eax*8-30]
 004155AF    mov         edx,dword ptr [ebp+8]
 004155B2    mov         edx,dword ptr [edx-28]
 004155B5    add         edx,edx
 004155B7    lea         edx,[edx+edx*2]
 004155BA    mov         ecx,dword ptr [ebp+8]
 004155BD    mov         ecx,dword ptr [ecx+8]
 004155C0    mov         ecx,dword ptr [ecx+1C]
 004155C3    cmp         eax,dword ptr [ecx+edx*8]
>004155C6    jbe         004155E2
 004155C8    mov         edx,dword ptr [ebp+8]
 004155CB    mov         edx,dword ptr [edx+8]
 004155CE    mov         edx,dword ptr [ebp+8]
 004155D1    cmp         eax,dword ptr [ebp-10]
>004155D4    jae         004155E2
 004155D6    mov         edx,dword ptr [ebp+8]
 004155D9    mov         edx,dword ptr [edx+8]
 004155DC    mov         edx,dword ptr [ebp+8]
 004155DF    mov         dword ptr [ebp-10],eax
 004155E2    cmp         byte ptr [ebp-0C],0
>004155E6    jne         00415673
 004155EC    mov         eax,dword ptr [esi+8]
 004155EF    test        eax,eax
>004155F1    je          004155FB
 004155F3    mov         edx,dword ptr [ebp+8]
 004155F6    cmp         eax,dword ptr [edx-40]
>004155F9    je          00415673
 004155FB    cmp         byte ptr [esi+6],0
>004155FF    je          00415621
 00415601    mov         ax,word ptr [esi+2]
 00415605    add         eax,0FFFFFF17
 0041560A    sub         ax,3
>0041560E    jb          00415673
 00415610    cmp         word ptr [esi+2],0FF
>00415616    jne         00415621
 00415618    mov         al,byte ptr [esi+4]
 0041561B    and         al,30
 0041561D    cmp         al,20
>0041561F    je          00415673
 00415621    mov         eax,dword ptr [esi+20]
 00415624    mov         dword ptr [ebp-8],eax
 00415627    mov         byte ptr [ebp-0C],0
 0041562B    mov         dword ptr [ebp-4],8
 00415632    mov         eax,dword ptr [ebp+8]
 00415635    add         eax,0FFFFFFE0
 00415638    lea         edx,[ebp-34]
 0041563B    mov         ecx,dword ptr [edx]
 0041563D    cmp         ecx,dword ptr [eax]
>0041563F    je          00415647
 00415641    mov         byte ptr [ebp-0C],1
>00415645    jmp         00415652
 00415647    add         edx,4
 0041564A    add         eax,4
 0041564D    dec         dword ptr [ebp-4]
>00415650    jne         0041563B
 00415652    cmp         byte ptr [ebp-0C],0
>00415656    jne         00415664
 00415658    mov         eax,dword ptr [ebp-8]
 0041565B    cmp         eax,dword ptr [ebp-10]
>0041565E    jb          0041532A
 00415664    mov         eax,dword ptr [ebp+8]
 00415667    push        eax
 00415668    xor         edx,edx
 0041566A    mov         eax,dword ptr [ebp-8]
 0041566D    call        00414AA4
 00415672    pop         ecx
 00415673    mov         eax,dword ptr [ebp-8]
 00415676    cmp         eax,dword ptr [ebp-10]
>00415679    jbe         0041567E
 0041567B    mov         byte ptr [esi],0
 0041567E    pop         edi
 0041567F    pop         esi
 00415680    pop         ebx
 00415681    mov         esp,ebp
 00415683    pop         ebp
 00415684    ret
end;*}

//00415688
{*procedure sub_00415688(?:?; ?:?);
begin
 00415688    push        ebp
 00415689    mov         ebp,esp
 0041568B    push        ebx
 0041568C    push        esi
 0041568D    push        edi
 0041568E    mov         edx,dword ptr [ebp+8]
 00415691    mov         edx,dword ptr [edx+8]
 00415694    mov         dword ptr [edx+8],0FFFFFFFF
 0041569B    xor         edx,edx
 0041569D    mov         dword ptr [eax],edx
 0041569F    mov         edx,dword ptr [ebp+8]
 004156A2    mov         esi,dword ptr [edx-24]
 004156A5    dec         esi
 004156A6    test        esi,esi
>004156A8    jl          00415704
 004156AA    inc         esi
 004156AB    xor         edx,edx
 004156AD    mov         ecx,edx
 004156AF    add         ecx,ecx
 004156B1    lea         ecx,[ecx+ecx*2]
 004156B4    mov         ebx,dword ptr [ebp+8]
 004156B7    mov         ebx,dword ptr [ebx+8]
 004156BA    mov         ebx,dword ptr [ebx+1C]
 004156BD    mov         ebx,dword ptr [ebx+ecx*8]
 004156C0    mov         edi,dword ptr [ebp+8]
 004156C3    mov         edi,dword ptr [edi+8]
 004156C6    cmp         ebx,dword ptr [edi+8]
>004156C9    jae         004156E0
 004156CB    mov         ebx,dword ptr [ebp+8]
 004156CE    mov         ebx,dword ptr [ebx+8]
 004156D1    mov         ebx,dword ptr [ebx+1C]
 004156D4    mov         ebx,dword ptr [ebx+ecx*8]
 004156D7    mov         edi,dword ptr [ebp+8]
 004156DA    mov         edi,dword ptr [edi+8]
 004156DD    mov         dword ptr [edi+8],ebx
 004156E0    mov         ebx,dword ptr [ebp+8]
 004156E3    mov         ebx,dword ptr [ebx+8]
 004156E6    mov         ebx,dword ptr [ebx+1C]
 004156E9    mov         ebx,dword ptr [ebx+ecx*8+4]
 004156ED    cmp         ebx,dword ptr [eax]
>004156EF    jbe         00415700
 004156F1    mov         ebx,dword ptr [ebp+8]
 004156F4    mov         ebx,dword ptr [ebx+8]
 004156F7    mov         ebx,dword ptr [ebx+1C]
 004156FA    mov         ecx,dword ptr [ebx+ecx*8+4]
 004156FE    mov         dword ptr [eax],ecx
 00415700    inc         edx
 00415701    dec         esi
>00415702    jne         004156AD
 00415704    mov         eax,dword ptr [eax]
 00415706    mov         edx,dword ptr [ebp+8]
 00415709    mov         edx,dword ptr [edx+8]
 0041570C    sub         eax,dword ptr [edx+8]
 0041570F    inc         eax
 00415710    mov         edx,dword ptr [ebp+8]
 00415713    mov         edx,dword ptr [edx+8]
 00415716    mov         dword ptr [edx+0C],eax
 00415719    pop         edi
 0041571A    pop         esi
 0041571B    pop         ebx
 0041571C    pop         ebp
 0041571D    ret
end;*}

//00415720
{*procedure sub_00415720(?:?);
begin
 00415720    push        ebp
 00415721    mov         ebp,esp
 00415723    push        ebx
 00415724    push        esi
 00415725    mov         esi,dword ptr [ebp+8]
 00415728    mov         esi,dword ptr [esi+8]
 0041572B    mov         eax,dword ptr [ebp+8]
 0041572E    mov         eax,dword ptr [eax-24]
 00415731    dec         eax
 00415732    test        eax,eax
>00415734    jl          00415766
 00415736    inc         eax
 00415737    xor         ebx,ebx
 00415739    mov         edx,ebx
 0041573B    add         edx,edx
 0041573D    lea         edx,[edx+edx*2]
 00415740    mov         ecx,dword ptr [esi+1C]
 00415743    mov         ecx,dword ptr [ecx+edx*8]
 00415746    cmp         ecx,dword ptr [esi+8]
>00415749    jne         00415762
 0041574B    mov         eax,dword ptr [esi+1C]
 0041574E    mov         eax,dword ptr [eax+edx*8+4]
 00415752    inc         eax
 00415753    mov         dword ptr [esi+8],eax
 00415756    mov         eax,dword ptr [ebp+8]
 00415759    push        eax
 0041575A    call        00415720
 0041575F    pop         ecx
>00415760    jmp         00415766
 00415762    inc         ebx
 00415763    dec         eax
>00415764    jne         00415739
 00415766    pop         esi
 00415767    pop         ebx
 00415768    pop         ebp
 00415769    ret
end;*}

//0041576C
{*procedure sub_0041576C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0041576C    push        ebp
 0041576D    mov         ebp,esp
 0041576F    add         esp,0FFFFFF4C
 00415775    push        ebx
 00415776    push        esi
 00415777    push        edi
 00415778    xor         ebx,ebx
 0041577A    mov         dword ptr [ebp-0B4],ebx
 00415780    mov         dword ptr [ebp-2C],ecx
 00415783    mov         dword ptr [ebp-3C],edx
 00415786    mov         dword ptr [ebp-30],eax
 00415789    xor         eax,eax
 0041578B    push        ebp
 0041578C    push        415CD5
 00415791    push        dword ptr fs:[eax]
 00415794    mov         dword ptr fs:[eax],esp
 00415797    cmp         dword ptr [ebp-2C],0
>0041579B    jne         004157A5
 0041579D    call        00410B68
 004157A2    mov         dword ptr [ebp-2C],eax
 004157A5    cmp         dword ptr [ebp+18],0
>004157A9    jne         004157B3
 004157AB    call        00410B70
 004157B0    mov         dword ptr [ebp+18],eax
 004157B3    cmp         dword ptr [ebp+14],0
>004157B7    jne         004157C1
 004157B9    call        00410B78
 004157BE    mov         dword ptr [ebp+14],eax
 004157C1    cmp         dword ptr [ebp+10],0
>004157C5    jne         004157CF
 004157C7    call        00410B80
 004157CC    mov         dword ptr [ebp+10],eax
 004157CF    cmp         dword ptr [ebp+0C],0
>004157D3    jne         004157DD
 004157D5    call        00410B88
 004157DA    mov         dword ptr [ebp+0C],eax
 004157DD    push        415CE8
 004157E2    push        415CFC;'msvcrt.dll'
 004157E7    call        kernel32.GetModuleHandleA
 004157EC    push        eax
 004157ED    call        kernel32.GetProcAddress
 004157F2    mov         dword ptr [ebp-40],eax
 004157F5    mov         eax,dword ptr [ebp+8]
 004157F8    mov         edx,dword ptr ds:[410AAC];TFunctionInfo
 004157FE    call        @Finalize
 00415803    mov         eax,dword ptr [ebp+8]
 00415806    mov         edx,53DC30;gvar_0053DC30:?
 0041580B    mov         ecx,dword ptr ds:[410AAC];TFunctionInfo
 00415811    call        @CopyRecord
 00415816    push        1C
 00415818    lea         eax,[ebp-8C]
 0041581E    push        eax
 0041581F    mov         eax,dword ptr [ebp-30]
 00415822    push        eax
 00415823    call        kernel32.VirtualQuery
 00415828    cmp         eax,1C
>0041582B    jne         00415C7C
 00415831    cmp         dword ptr [ebp-7C],1000
>00415838    jne         00415C7C
 0041583E    mov         eax,dword ptr [ebp-88]
 00415844    call        0040F964
 00415849    test        eax,eax
>0041584B    je          004158C7
 0041584D    mov         ecx,eax
 0041584F    add         ecx,0F8
 00415855    mov         edx,ecx
 00415857    test        byte ptr [edx+24],20
>0041585B    je          0041588C
 0041585D    mov         ebx,dword ptr [edx+0C]
 00415860    mov         ecx,dword ptr [ebp-88]
 00415866    add         ebx,ecx
 00415868    mov         dword ptr [ebp-34],ebx
 0041586B    mov         ebx,dword ptr [edx+8]
 0041586E    add         ebx,dword ptr [ebp-34]
 00415871    dec         ebx
 00415872    mov         dword ptr [ebp-38],ebx
 00415875    add         edx,28
 00415878    test        byte ptr [edx+24],20
>0041587C    je          004158A1
 0041587E    mov         ebx,dword ptr [edx+0C]
 00415881    add         ebx,ecx
 00415883    add         ebx,dword ptr [edx+8]
 00415886    dec         ebx
 00415887    mov         dword ptr [ebp-38],ebx
>0041588A    jmp         004158A1
 0041588C    mov         edx,dword ptr [eax+2C]
 0041588F    add         edx,dword ptr [ebp-88]
 00415895    mov         dword ptr [ebp-34],edx
 00415898    mov         edx,dword ptr [eax+1C]
 0041589B    add         edx,dword ptr [ebp-34]
 0041589E    mov         dword ptr [ebp-38],edx
 004158A1    mov         edx,dword ptr [eax+30]
 004158A4    add         edx,dword ptr [ebp-88]
 004158AA    mov         ecx,dword ptr [eax+24]
 004158AD    add         ecx,edx
 004158AF    add         ecx,dword ptr [eax+20]
 004158B2    dec         ecx
 004158B3    mov         eax,ecx
 004158B5    cmp         edx,dword ptr [ebp-34]
>004158B8    jae         004158BD
 004158BA    mov         dword ptr [ebp-34],edx
 004158BD    cmp         eax,dword ptr [ebp-38]
>004158C0    jbe         004158D9
 004158C2    mov         dword ptr [ebp-38],eax
>004158C5    jmp         004158D9
 004158C7    mov         eax,dword ptr [ebp-8C]
 004158CD    mov         dword ptr [ebp-34],eax
 004158D0    mov         eax,dword ptr [ebp-34]
 004158D3    add         eax,dword ptr [ebp-80]
 004158D6    mov         dword ptr [ebp-38],eax
 004158D9    mov         eax,dword ptr [ebp+8]
 004158DC    mov         edx,dword ptr [ebp-30]
 004158DF    mov         dword ptr [eax+4],edx
 004158E2    mov         eax,dword ptr [ebp+8]
 004158E5    mov         byte ptr [eax+28],0
 004158E9    mov         eax,dword ptr [ebp+8]
 004158EC    mov         byte ptr [eax+2C],1
 004158F0    xor         eax,eax
 004158F2    mov         dword ptr [ebp-24],eax
 004158F5    lea         eax,[ebp-20]
 004158F8    mov         edx,20
 004158FD    call        00408130
 00415902    push        ebp
 00415903    mov         eax,dword ptr [ebp+8]
 00415906    mov         eax,dword ptr [eax+4]
 00415909    xor         edx,edx
 0041590B    call        00414AA4
 00415910    pop         ecx
 00415911    mov         dword ptr [ebp-28],0FFFFFFFF
 00415918    mov         eax,dword ptr [ebp-24]
 0041591B    dec         eax
 0041591C    test        eax,eax
>0041591E    jl          00415940
 00415920    inc         eax
 00415921    xor         ebx,ebx
 00415923    mov         edx,ebx
 00415925    add         edx,edx
 00415927    lea         edx,[edx+edx*2]
 0041592A    mov         ecx,dword ptr [ebp+8]
 0041592D    mov         ecx,dword ptr [ecx+1C]
 00415930    cmp         dword ptr [ecx+edx*8+4],0
>00415935    jne         0041593C
 00415937    mov         dword ptr [ebp-28],ebx
>0041593A    jmp         00415940
 0041593C    inc         ebx
 0041593D    dec         eax
>0041593E    jne         00415923
 00415940    cmp         dword ptr [ebp-28],0FFFFFFFF
>00415944    jne         00415A29
 0041594A    mov         eax,dword ptr [ebp+8]
 0041594D    mov         eax,dword ptr [eax+24]
 00415950    call        00405CE8
 00415955    mov         ebx,eax
 00415957    cmp         ebx,0
>0041595A    jl          00415A29
 00415960    mov         byte ptr [ebp-49],0
 00415964    mov         eax,dword ptr [ebp-24]
 00415967    dec         eax
 00415968    test        eax,eax
>0041596A    jl          00415A19
 00415970    inc         eax
 00415971    xor         esi,esi
 00415973    lea         edx,[ebx+ebx*2]
 00415976    mov         ecx,dword ptr [ebp+8]
 00415979    mov         ecx,dword ptr [ecx+24]
 0041597C    mov         edx,dword ptr [ecx+edx*4+4]
 00415980    mov         ecx,esi
 00415982    add         ecx,ecx
 00415984    lea         ecx,[ecx+ecx*2]
 00415987    mov         edi,dword ptr [ebp+8]
 0041598A    mov         edi,dword ptr [edi+1C]
 0041598D    cmp         edx,dword ptr [edi+ecx*8]
>00415990    jb          00415A11
 00415992    lea         edx,[ebx+ebx*2]
 00415995    mov         ecx,dword ptr [ebp+8]
 00415998    mov         ecx,dword ptr [ecx+24]
 0041599B    mov         edx,dword ptr [ecx+edx*4+8]
 0041599F    mov         ecx,esi
 004159A1    add         ecx,ecx
 004159A3    lea         ecx,[ecx+ecx*2]
 004159A6    mov         edi,dword ptr [ebp+8]
 004159A9    mov         edi,dword ptr [edi+1C]
 004159AC    cmp         edx,dword ptr [edi+ecx*8+4]
>004159B0    ja          00415A11
 004159B2    mov         eax,dword ptr [ebp-3C]
 004159B5    push        eax
 004159B6    lea         eax,[ebp-70]
 004159B9    push        eax
 004159BA    mov         eax,esi
 004159BC    add         eax,eax
 004159BE    lea         eax,[eax+eax*2]
 004159C1    mov         edx,dword ptr [ebp+8]
 004159C4    mov         edx,dword ptr [edx+1C]
 004159C7    lea         edx,[edx+eax*8+10]
 004159CB    lea         eax,[ebx+ebx*2]
 004159CE    mov         ecx,dword ptr [ebp+8]
 004159D1    mov         ecx,dword ptr [ecx+24]
 004159D4    mov         eax,dword ptr [ecx+eax*4+4]
 004159D8    mov         cl,1
 004159DA    call        004149EC
 004159DF    cmp         dword ptr [ebp-68],0
>004159E3    je          00415A19
 004159E5    push        ebp
 004159E6    lea         eax,[ebp-70]
 004159E9    call        00414D04
 004159EE    pop         ecx
 004159EF    mov         eax,dword ptr [ebp-24]
 004159F2    add         eax,eax
 004159F4    lea         eax,[eax+eax*2]
 004159F7    mov         edx,dword ptr [ebp+8]
 004159FA    mov         edx,dword ptr [edx+1C]
 004159FD    cmp         dword ptr [edx+eax*8-2C],0
>00415A02    jne         00415A19
 00415A04    mov         eax,dword ptr [ebp-24]
 00415A07    dec         eax
 00415A08    mov         dword ptr [ebp-28],eax
 00415A0B    mov         byte ptr [ebp-49],1
>00415A0F    jmp         00415A19
 00415A11    inc         esi
 00415A12    dec         eax
>00415A13    jne         00415973
 00415A19    cmp         byte ptr [ebp-49],0
>00415A1D    jne         00415A29
 00415A1F    dec         ebx
 00415A20    cmp         ebx,0FFFFFFFF
>00415A23    jne         00415960
 00415A29    cmp         dword ptr [ebp-28],0FFFFFFFF
>00415A2D    jne         00415ADD
 00415A33    mov         byte ptr [ebp-49],0
 00415A37    mov         eax,dword ptr [ebp+8]
 00415A3A    mov         eax,dword ptr [eax+24]
 00415A3D    call        00405CE8
 00415A42    test        eax,eax
>00415A44    jl          00415A62
 00415A46    inc         eax
 00415A47    xor         ebx,ebx
 00415A49    lea         edx,[ebx+ebx*2]
 00415A4C    mov         ecx,dword ptr [ebp+8]
 00415A4F    mov         ecx,dword ptr [ecx+24]
 00415A52    cmp         byte ptr [ecx+edx*4],0
>00415A56    jne         00415A5E
 00415A58    mov         byte ptr [ebp-49],1
>00415A5C    jmp         00415A62
 00415A5E    inc         ebx
 00415A5F    dec         eax
>00415A60    jne         00415A49
 00415A62    cmp         byte ptr [ebp-49],0
>00415A66    je          00415AF1
 00415A6C    push        ebp
 00415A6D    lea         eax,[ebp-44]
 00415A70    call        00415688
 00415A75    pop         ecx
 00415A76    push        ebp
 00415A77    call        00415720
 00415A7C    pop         ecx
 00415A7D    mov         eax,dword ptr [ebp+8]
 00415A80    mov         eax,dword ptr [eax+8]
 00415A83    mov         edx,eax
 00415A85    dec         edx
 00415A86    cmp         edx,dword ptr [ebp-44]
>00415A89    je          00415AF1
 00415A8B    mov         edx,dword ptr [ebp+8]
 00415A8E    mov         edx,dword ptr [ebp-44]
 00415A91    sub         edx,eax
 00415A93    cmp         edx,400
>00415A99    jae         00415AF1
 00415A9B    mov         eax,dword ptr [ebp-24]
 00415A9E    mov         dword ptr [ebp-28],eax
 00415AA1    lea         eax,[ebp-20]
 00415AA4    mov         edx,20
 00415AA9    call        00408130
 00415AAE    push        ebp
 00415AAF    mov         eax,dword ptr [ebp+8]
 00415AB2    mov         eax,dword ptr [eax+8]
 00415AB5    xor         edx,edx
 00415AB7    call        00414AA4
 00415ABC    pop         ecx
 00415ABD    push        ebp
 00415ABE    lea         eax,[ebp-70]
 00415AC1    call        00415270
 00415AC6    pop         ecx
 00415AC7    cmp         byte ptr [ebp-70],0
>00415ACB    jne         00415911
 00415AD1    mov         eax,dword ptr [ebp-28]
 00415AD4    mov         dword ptr [ebp-24],eax
 00415AD7    mov         byte ptr [ebp-70],1
>00415ADB    jmp         00415AF1
 00415ADD    push        ebp
 00415ADE    lea         eax,[ebp-70]
 00415AE1    call        00415270
 00415AE6    pop         ecx
 00415AE7    cmp         byte ptr [ebp-70],0
>00415AEB    jne         00415911
 00415AF1    mov         eax,dword ptr [ebp-24]
 00415AF4    push        eax
 00415AF5    mov         eax,dword ptr [ebp+8]
 00415AF8    add         eax,1C
 00415AFB    mov         ecx,1
 00415B00    mov         edx,dword ptr ds:[410A28];_DynArr_13_1
 00415B06    call        @DynArraySetLength
 00415B0B    add         esp,4
 00415B0E    cmp         byte ptr [ebp-70],0
>00415B12    jne         00415B43
 00415B14    mov         eax,dword ptr [ebp+8]
 00415B17    mov         byte ptr [eax],0
 00415B1A    mov         eax,dword ptr [ebp+8]
 00415B1D    mov         edx,dword ptr [ebp-50]
 00415B20    mov         dword ptr [eax+10],edx
 00415B23    mov         eax,dword ptr [ebp+8]
 00415B26    mov         dword ptr [eax+14],770001
 00415B2D    mov         eax,dword ptr [ebp+8]
 00415B30    add         eax,18
 00415B33    mov         edx,dword ptr ds:[53D430];^gvar_00410AF0
 00415B39    call        @LStrFromPChar
>00415B3E    jmp         00415CBC
 00415B43    mov         eax,dword ptr [ebp+8]
 00415B46    mov         byte ptr [eax],1
 00415B49    push        ebp
 00415B4A    lea         eax,[ebp-44]
 00415B4D    call        00415688
 00415B52    pop         ecx
 00415B53    mov         eax,dword ptr [ebp+8]
 00415B56    mov         eax,dword ptr [eax+0C]
 00415B59    add         eax,4
 00415B5C    mov         edx,dword ptr [ebp+8]
 00415B5F    add         dword ptr [edx+30],eax
 00415B62    xor         ebx,ebx
 00415B64    xor         esi,esi
 00415B66    mov         byte ptr [ebp-49],1
 00415B6A    mov         eax,ebx
 00415B6C    add         eax,eax
 00415B6E    lea         eax,[eax+eax*2]
 00415B71    mov         edx,dword ptr [ebp+8]
 00415B74    mov         edx,dword ptr [edx+1C]
 00415B77    cmp         byte ptr [edx+eax*8+8],0
>00415B7C    jne         00415C08
 00415B82    mov         edx,dword ptr [ebp+8]
 00415B85    mov         edx,dword ptr [edx+1C]
 00415B88    cmp         byte ptr [edx+eax*8+9],0
>00415B8D    jne         00415C08
 00415B8F    mov         edx,dword ptr [ebp+8]
 00415B92    mov         edx,dword ptr [edx+1C]
 00415B95    cmp         dword ptr [edx+eax*8+0C],0
>00415B9A    jne         00415C08
 00415B9C    mov         edx,dword ptr [ebp+8]
 00415B9F    mov         edx,dword ptr [edx+1C]
 00415BA2    mov         edx,dword ptr [edx+eax*8+4]
 00415BA6    mov         ecx,dword ptr [ebp+8]
 00415BA9    mov         ecx,dword ptr [ecx+1C]
 00415BAC    sub         edx,dword ptr [ecx+eax*8]
 00415BAF    inc         edx
 00415BB0    add         esi,edx
 00415BB2    mov         eax,dword ptr [ebp+8]
 00415BB5    mov         eax,dword ptr [eax+1C]
 00415BB8    call        00405CE8
 00415BBD    test        eax,eax
>00415BBF    jle         00415BFE
 00415BC1    mov         dword ptr [ebp-48],1
 00415BC8    mov         edx,dword ptr [ebp-48]
 00415BCB    add         edx,edx
 00415BCD    lea         edx,[edx+edx*2]
 00415BD0    mov         ecx,dword ptr [ebp+8]
 00415BD3    mov         ecx,dword ptr [ecx+1C]
 00415BD6    mov         edx,dword ptr [ecx+edx*8]
 00415BD9    mov         ecx,ebx
 00415BDB    add         ecx,ecx
 00415BDD    lea         ecx,[ecx+ecx*2]
 00415BE0    mov         edi,dword ptr [ebp+8]
 00415BE3    mov         edi,dword ptr [edi+1C]
 00415BE6    mov         ecx,dword ptr [edi+ecx*8+4]
 00415BEA    inc         ecx
 00415BEB    cmp         edx,ecx
>00415BED    jne         00415BF8
 00415BEF    mov         ebx,dword ptr [ebp-48]
 00415BF2    mov         byte ptr [ebp-49],0
>00415BF6    jmp         00415BFE
 00415BF8    inc         dword ptr [ebp-48]
 00415BFB    dec         eax
>00415BFC    jne         00415BC8
 00415BFE    cmp         byte ptr [ebp-49],0
>00415C02    je          00415B66
 00415C08    cmp         esi,6
>00415C0B    jl          00415CBC
 00415C11    mov         eax,dword ptr [ebp+8]
 00415C14    mov         byte ptr [eax+28],1
 00415C18    mov         eax,dword ptr [ebp+8]
 00415C1B    mov         eax,dword ptr [eax+4]
 00415C1E    mov         dword ptr [ebp-50],eax
 00415C21    lea         edx,[ebp-0B0]
 00415C27    mov         eax,dword ptr [ebp-50]
 00415C2A    call        00414A70
 00415C2F    lea         esi,[ebp-0B0]
 00415C35    lea         edi,[ebp-70]
 00415C38    mov         ecx,9
 00415C3D    rep movs    dword ptr [edi],dword ptr [esi]
 00415C3F    cmp         byte ptr [ebp-6B],0
>00415C43    jne         00415C4B
 00415C45    cmp         byte ptr [ebp-6A],0
>00415C49    je          00415C6C
 00415C4B    cmp         dword ptr [ebp-64],0
>00415C4F    jne         00415C57
 00415C51    cmp         dword ptr [ebp-60],0
>00415C55    je          00415C6C
 00415C57    cmp         byte ptr [ebp-58],0
>00415C5B    jne         00415C6C
 00415C5D    cmp         dword ptr [ebp-5C],4
>00415C61    jge         00415C6C
 00415C63    mov         eax,dword ptr [ebp+8]
 00415C66    mov         byte ptr [eax+28],0
>00415C6A    jmp         00415CBC
 00415C6C    mov         eax,dword ptr [ebp+8]
 00415C6F    mov         edx,dword ptr [ebp-50]
 00415C72    sub         edx,dword ptr [eax+4]
 00415C75    cmp         edx,6
>00415C78    jb          00415C21
>00415C7A    jmp         00415CBC
 00415C7C    mov         eax,dword ptr [ebp+8]
 00415C7F    mov         byte ptr [eax],0
 00415C82    mov         eax,dword ptr [ebp+8]
 00415C85    mov         edx,dword ptr [ebp-30]
 00415C88    mov         dword ptr [eax+10],edx
 00415C8B    mov         eax,dword ptr [ebp+8]
 00415C8E    mov         ebx,57
 00415C93    mov         dword ptr [eax+14],ebx
 00415C96    mov         esi,dword ptr ds:[55B120];^gvar_0053D10C
 00415C9C    mov         esi,dword ptr [esi]
 00415C9E    lea         edx,[ebp-0B4]
 00415CA4    mov         eax,dword ptr [ebp+8]
 00415CA7    mov         eax,ebx
 00415CA9    call        esi
 00415CAB    mov         edx,dword ptr [ebp-0B4]
 00415CB1    mov         eax,dword ptr [ebp+8]
 00415CB4    add         eax,18
 00415CB7    call        @LStrAsg
 00415CBC    xor         eax,eax
 00415CBE    pop         edx
 00415CBF    pop         ecx
 00415CC0    pop         ecx
 00415CC1    mov         dword ptr fs:[eax],edx
 00415CC4    push        415CDC
 00415CC9    lea         eax,[ebp-0B4]
 00415CCF    call        @LStrClr
 00415CD4    ret
>00415CD5    jmp         @HandleFinally
>00415CDA    jmp         00415CC9
 00415CDC    pop         edi
 00415CDD    pop         esi
 00415CDE    pop         ebx
 00415CDF    mov         esp,ebp
 00415CE1    pop         ebp
 00415CE2    ret         14
end;*}

//00415D08
{*procedure sub_00415D08(?:Pointer; ?:?);
begin
 00415D08    push        ebx
 00415D09    push        esi
 00415D0A    mov         esi,edx
 00415D0C    mov         ebx,eax
 00415D0E    push        0
 00415D10    push        0
 00415D12    push        0
 00415D14    push        0
 00415D16    push        esi
 00415D17    xor         ecx,ecx
 00415D19    xor         edx,edx
 00415D1B    mov         eax,ebx
 00415D1D    call        0041576C
 00415D22    pop         esi
 00415D23    pop         ebx
 00415D24    ret
end;*}

//00416F44
{*function sub_00416F44(?:?):?;
begin
 00416F44    mov         eax,dword ptr fs:[eax]
 00416F47    ret
end;*}

//00416F48
{*function sub_00416F48:?;
begin
 00416F48    push        ebx
 00416F49    push        ecx
 00416F4A    cmp         byte ptr ds:[53DC78],0;gvar_0053DC78
>00416F51    jne         00417007
 00416F57    mov         byte ptr ds:[53DC78],1;gvar_0053DC78
 00416F5E    mov         eax,18
 00416F63    call        00416F44
 00416F68    mov         ebx,eax
 00416F6A    sub         ebx,10
 00416F6D    call        kernel32.GetCurrentThreadId
 00416F72    xor         ebx,eax
 00416F74    mov         dword ptr ds:[53DC70],ebx;gvar_0053DC70
 00416F7A    push        0
 00416F7C    call        kernel32.GetCurrentThreadId
 00416F81    xor         eax,dword ptr ds:[53DC70];0x0 gvar_0053DC70
 00416F87    add         eax,8
 00416F8A    lea         edx,[esp+4]
 00416F8E    mov         ecx,4
 00416F93    call        00417250
 00416F98    test        al,al
>00416F9A    je          00416FAC
 00416F9C    call        kernel32.GetCurrentProcessId
 00416FA1    xor         eax,dword ptr ds:[53DC70];0x0 gvar_0053DC70
 00416FA7    cmp         eax,dword ptr [esp]
>00416FAA    je          00417000
 00416FAC    mov         eax,30
 00416FB1    call        00416F44
 00416FB6    mov         ebx,eax
 00416FB8    call        kernel32.GetCurrentProcessId
 00416FBD    xor         ebx,eax
 00416FBF    mov         dword ptr ds:[53DC70],ebx;gvar_0053DC70
 00416FC5    push        0
 00416FC7    call        kernel32.GetCurrentThreadId
 00416FCC    xor         eax,dword ptr ds:[53DC70];0x0 gvar_0053DC70
 00416FD2    add         eax,38
 00416FD5    lea         edx,[esp+4]
 00416FD9    mov         ecx,4
 00416FDE    call        00417250
 00416FE3    test        al,al
>00416FE5    je          00416FF7
 00416FE7    call        kernel32.GetCurrentProcessId
 00416FEC    xor         eax,dword ptr ds:[53DC70];0x0 gvar_0053DC70
 00416FF2    cmp         eax,dword ptr [esp]
>00416FF5    je          00417007
 00416FF7    xor         eax,eax
 00416FF9    mov         [0053DC70],eax;gvar_0053DC70
>00416FFE    jmp         00417007
 00417000    mov         byte ptr ds:[53DC74],1;gvar_0053DC74
 00417007    mov         eax,[0053DC70];0x0 gvar_0053DC70
 0041700C    pop         edx
 0041700D    pop         ebx
 0041700E    ret
end;*}

//00417010
{*function sub_00417010:?;
begin
 00417010    cmp         byte ptr ds:[53DC78],0;gvar_0053DC78
>00417017    jne         0041701E
 00417019    call        00416F48
 0041701E    mov         al,[0053DC74];0x0 gvar_0053DC74
 00417023    ret
end;*}

//00417050
{*function sub_00417050:?;
begin
 00417050    push        ebx
 00417051    push        esi
 00417052    push        edi
 00417053    push        ebp
 00417054    add         esp,0FFFFFFE4
 00417057    mov         edx,dword ptr ds:[417024];TDATryRead
 0041705D    mov         eax,4
 00417062    call        00405948
 00417067    mov         esi,eax
 00417069    push        40
 0041706B    mov         eax,esi
 0041706D    mov         ecx,1
 00417072    mov         edx,dword ptr ds:[417024];TDATryRead
 00417078    call        @DynArraySetLength
 0041707D    add         esp,4
 00417080    xor         ebp,ebp
 00417082    xor         edi,edi
>00417084    jmp         0041710C
 00417089    cmp         dword ptr [esp+10],1000
>00417091    jne         004170B0
 00417093    test        byte ptr [esp+14],7E
>00417098    je          004170B0
 0041709A    test        byte ptr [esp+15],1
>0041709F    jne         004170B0
 004170A1    test        byte ptr [esp+14],6E
>004170A6    jne         004170AC
 004170A8    mov         bl,1
>004170AA    jmp         004170B2
 004170AC    mov         bl,2
>004170AE    jmp         004170B2
 004170B0    xor         ebx,ebx
 004170B2    test        ebp,ebp
>004170B4    je          004170C2
 004170B6    lea         eax,[ebp+ebp*2]
 004170BA    mov         edx,dword ptr [esi]
 004170BC    cmp         bl,byte ptr [edx+eax*4-4]
>004170C0    je          004170FE
 004170C2    mov         eax,dword ptr [esi]
 004170C4    call        @LStrLen
 004170C9    cmp         ebp,eax
>004170CB    jne         004170EE
 004170CD    lea         eax,[ebp+ebp*2]
 004170D1    sar         eax,1
>004170D3    jns         004170D8
 004170D5    adc         eax,0
 004170D8    push        eax
 004170D9    mov         eax,esi
 004170DB    mov         ecx,1
 004170E0    mov         edx,dword ptr ds:[417024];TDATryRead
 004170E6    call        @DynArraySetLength
 004170EB    add         esp,4
 004170EE    lea         eax,[ebp+ebp*2]
 004170F2    mov         edx,dword ptr [esi]
 004170F4    mov         dword ptr [edx+eax*4],edi
 004170F7    mov         edx,dword ptr [esi]
 004170F9    mov         byte ptr [edx+eax*4+8],bl
 004170FD    inc         ebp
 004170FE    add         edi,dword ptr [esp+0C]
 00417102    lea         eax,[ebp+ebp*2]
 00417106    mov         edx,dword ptr [esi]
 00417108    mov         dword ptr [edx+eax*4-8],edi
 0041710C    cmp         edi,80000000
>00417112    jae         0041712A
 00417114    push        1C
 00417116    lea         eax,[esp+4]
 0041711A    push        eax
 0041711B    push        edi
 0041711C    call        kernel32.VirtualQuery
 00417121    cmp         eax,1C
>00417124    je          00417089
 0041712A    push        ebp
 0041712B    mov         eax,esi
 0041712D    mov         ecx,1
 00417132    mov         edx,dword ptr ds:[417024];TDATryRead
 00417138    call        @DynArraySetLength
 0041713D    add         esp,4
 00417140    mov         eax,esi
 00417142    add         esp,1C
 00417145    pop         ebp
 00417146    pop         edi
 00417147    pop         esi
 00417148    pop         ebx
 00417149    ret
end;*}

//0041714C
procedure sub_0041714C;
begin
{*
 0041714C    push        ebp
 0041714D    mov         ebp,esp
 0041714F    push        ebx
 00417150    push        esi
 00417151    push        edi
 00417152    xor         edx,edx
 00417154    push        ebp
 00417155    push        417175
 0041715A    push        dword ptr fs:[edx]
 0041715D    mov         dword ptr fs:[edx],esp
 00417160    mov         edx,dword ptr ds:[417024];TDATryRead
 00417166    call        @Dispose
 0041716B    xor         eax,eax
 0041716D    pop         edx
 0041716E    pop         ecx
 0041716F    pop         ecx
 00417170    mov         dword ptr fs:[eax],edx
>00417173    jmp         0041717F
>00417175    jmp         @HandleAnyException
 0041717A    call        @DoneExcept
 0041717F    pop         edi
 00417180    pop         esi
 00417181    pop         ebx
 00417182    pop         ebp
 00417183    ret
*}
end;

//00417184
{*function sub_00417184(?:?; ?:?; ?:?):?;
begin
 00417184    push        ebp
 00417185    mov         ebp,esp
 00417187    add         esp,0FFFFFFF0
 0041718A    push        ebx
 0041718B    push        esi
 0041718C    push        edi
 0041718D    mov         dword ptr [ebp-8],ecx
 00417190    mov         dword ptr [ebp-4],edx
 00417193    mov         esi,eax
 00417195    mov         byte ptr [ebp-9],0
 00417199    xor         ebx,ebx
 0041719B    push        ebp
 0041719C    push        417239
 004171A1    push        dword ptr fs:[ebx]
 004171A4    mov         dword ptr fs:[ebx],esp
 004171A7    mov         eax,dword ptr [esi]
 004171A9    call        @LStrLen
 004171AE    mov         dword ptr [ebp-10],eax
 004171B1    mov         eax,dword ptr [ebp-10]
 004171B4    sar         eax,1
>004171B6    jns         004171BB
 004171B8    adc         eax,0
 004171BB    lea         edx,[eax+2]
 004171BE    sar         edx,1
>004171C0    jns         004171C5
 004171C2    adc         edx,0
 004171C5    xor         ecx,ecx
 004171C7    test        edx,edx
>004171C9    jle         0041722F
 004171CB    lea         ebx,[eax+eax*2]
 004171CE    mov         edi,dword ptr [esi]
 004171D0    mov         ebx,dword ptr [edi+ebx*4]
 004171D3    cmp         ebx,dword ptr [ebp-4]
>004171D6    jbe         004171E2
 004171D8    sub         eax,edx
 004171DA    test        eax,eax
>004171DC    jge         00417216
 004171DE    xor         eax,eax
>004171E0    jmp         00417216
 004171E2    lea         ebx,[eax+eax*2]
 004171E5    mov         edi,dword ptr [esi]
 004171E7    mov         ebx,dword ptr [edi+ebx*4+4]
 004171EB    mov         edi,dword ptr [ebp-4]
 004171EE    add         edi,dword ptr [ebp-8]
 004171F1    cmp         ebx,edi
>004171F3    jb          0041720B
 004171F5    lea         eax,[eax+eax*2]
 004171F8    mov         edx,dword ptr [esi]
 004171FA    mov         al,byte ptr [edx+eax*4+8]
 004171FE    mov         byte ptr [ebp-9],al
 00417201    xor         eax,eax
 00417203    pop         edx
 00417204    pop         ecx
 00417205    pop         ecx
 00417206    mov         dword ptr fs:[eax],edx
>00417209    jmp         00417243
 0041720B    add         eax,edx
 0041720D    cmp         eax,dword ptr [ebp-10]
>00417210    jl          00417216
 00417212    mov         eax,dword ptr [ebp-10]
 00417215    dec         eax
 00417216    test        cl,cl
>00417218    jne         0041722F
 0041721A    cmp         edx,1
>0041721D    jne         00417223
 0041721F    mov         cl,1
>00417221    jmp         0041722B
 00417223    inc         edx
 00417224    sar         edx,1
>00417226    jns         0041722B
 00417228    adc         edx,0
 0041722B    test        edx,edx
>0041722D    jg          004171CB
 0041722F    xor         eax,eax
 00417231    pop         edx
 00417232    pop         ecx
 00417233    pop         ecx
 00417234    mov         dword ptr fs:[eax],edx
>00417237    jmp         00417243
>00417239    jmp         @HandleAnyException
 0041723E    call        @DoneExcept
 00417243    mov         al,byte ptr [ebp-9]
 00417246    pop         edi
 00417247    pop         esi
 00417248    pop         ebx
 00417249    mov         esp,ebp
 0041724B    pop         ebp
 0041724C    ret
end;*}

//00417250
{*function sub_00417250(?:?; ?:?; ?:?; ?:?):?;
begin
 00417250    push        ebp
 00417251    mov         ebp,esp
 00417253    add         esp,0FFFFFFD0
 00417256    push        ebx
 00417257    push        esi
 00417258    push        edi
 00417259    mov         dword ptr [ebp-0C],ecx
 0041725C    mov         dword ptr [ebp-8],edx
 0041725F    mov         dword ptr [ebp-4],eax
 00417262    mov         eax,dword ptr [ebp+8]
 00417265    test        eax,eax
>00417267    je          00417276
 00417269    mov         ecx,dword ptr [ebp-0C]
 0041726C    mov         edx,dword ptr [ebp-4]
 0041726F    call        00417184
>00417274    jmp         004172AF
 00417276    push        1C
 00417278    lea         eax,[ebp-30]
 0041727B    push        eax
 0041727C    mov         eax,dword ptr [ebp-4]
 0041727F    push        eax
 00417280    call        kernel32.VirtualQuery
 00417285    cmp         eax,1C
>00417288    jne         004172AD
 0041728A    cmp         dword ptr [ebp-20],1000
>00417291    jne         004172AD
 00417293    test        byte ptr [ebp-1C],7E
>00417297    je          004172AD
 00417299    test        byte ptr [ebp-1B],1
>0041729D    jne         004172AD
 0041729F    test        byte ptr [ebp-1C],6E
>004172A3    jne         004172A9
 004172A5    mov         al,1
>004172A7    jmp         004172AF
 004172A9    mov         al,2
>004172AB    jmp         004172AF
 004172AD    xor         eax,eax
 004172AF    test        al,al
 004172B1    seta        byte ptr [ebp-0D]
 004172B5    cmp         byte ptr [ebp-0D],0
>004172B9    je          00417365
 004172BF    cmp         al,1
>004172C1    jne         00417357
 004172C7    cmp         byte ptr ds:[53DC7C],0;gvar_0053DC7C
>004172CE    je          00417307
 004172D0    xor         eax,eax
 004172D2    push        ebp
 004172D3    push        4172F6
 004172D8    push        dword ptr fs:[eax]
 004172DB    mov         dword ptr fs:[eax],esp
 004172DE    mov         edx,dword ptr [ebp-8]
 004172E1    mov         eax,dword ptr [ebp-4]
 004172E4    mov         ecx,dword ptr [ebp-0C]
 004172E7    call        Move
 004172EC    xor         eax,eax
 004172EE    pop         edx
 004172EF    pop         ecx
 004172F0    pop         ecx
 004172F1    mov         dword ptr fs:[eax],edx
>004172F4    jmp         00417307
>004172F6    jmp         @HandleAnyException
 004172FB    mov         byte ptr ds:[53DC7C],0;gvar_0053DC7C
 00417302    call        @DoneExcept
 00417307    cmp         byte ptr ds:[53DC7C],0;gvar_0053DC7C
>0041730E    jne         00417365
 00417310    lea         eax,[ebp-14]
 00417313    push        eax
 00417314    push        20
 00417316    mov         eax,dword ptr [ebp-0C]
 00417319    push        eax
 0041731A    mov         eax,dword ptr [ebp-4]
 0041731D    push        eax
 0041731E    call        kernel32.VirtualProtect
 00417323    cmp         eax,1
 00417326    sbb         eax,eax
 00417328    inc         eax
 00417329    mov         byte ptr [ebp-0D],al
 0041732C    cmp         byte ptr [ebp-0D],0
>00417330    je          00417365
 00417332    mov         edx,dword ptr [ebp-8]
 00417335    mov         eax,dword ptr [ebp-4]
 00417338    mov         ecx,dword ptr [ebp-0C]
 0041733B    call        Move
 00417340    lea         eax,[ebp-14]
 00417343    push        eax
 00417344    mov         eax,dword ptr [ebp-14]
 00417347    push        eax
 00417348    mov         eax,dword ptr [ebp-0C]
 0041734B    push        eax
 0041734C    mov         eax,dword ptr [ebp-4]
 0041734F    push        eax
 00417350    call        kernel32.VirtualProtect
>00417355    jmp         00417365
 00417357    mov         edx,dword ptr [ebp-8]
 0041735A    mov         eax,dword ptr [ebp-4]
 0041735D    mov         ecx,dword ptr [ebp-0C]
 00417360    call        Move
 00417365    mov         al,byte ptr [ebp-0D]
 00417368    pop         edi
 00417369    pop         esi
 0041736A    pop         ebx
 0041736B    mov         esp,ebp
 0041736D    pop         ebp
 0041736E    ret         4
end;*}

Initialization
Finalization
//00417374
{*
 00417374    push        ebp
 00417375    mov         ebp,esp
 00417377    xor         eax,eax
 00417379    push        ebp
 0041737A    push        4173D3
 0041737F    push        dword ptr fs:[eax]
 00417382    mov         dword ptr fs:[eax],esp
 00417385    inc         dword ptr ds:[55C6B8]
>0041738B    jne         004173C5
 0041738D    mov         eax,53DC30;gvar_0053DC30:?
 00417392    mov         edx,dword ptr ds:[410AAC];TFunctionInfo
 00417398    call        @FinalizeRecord
 0041739D    mov         eax,53D44C;^#2+'<!0'+#5+':60&&08:','
 004173A2    call        @LStrClr
 004173A7    mov         eax,53D448;^#7+041'+#5+':60&&08:','
 004173AC    call        @LStrClr
 004173B1    mov         eax,53D444;^'>0';0974&0{199'
 004173B6    call        @LStrClr
 004173BB    mov         eax,53D440;^'>0';09fg{199'
 004173C0    call        @LStrClr
 004173C5    xor         eax,eax
 004173C7    pop         edx
 004173C8    pop         ecx
 004173C9    pop         ecx
 004173CA    mov         dword ptr fs:[eax],edx
 004173CD    push        4173DA
 004173D2    ret
>004173D3    jmp         @HandleFinally
>004173D8    jmp         004173D2
 004173DA    pop         ebp
 004173DB    ret
*}
end.