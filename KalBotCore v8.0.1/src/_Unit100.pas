//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit100;

interface

uses
  SysUtils, Classes;

type
  TMedicineHelper = class(TObject)
    //constructor Create(?:?; ?:?; ?:?);//0052706C
  end;
    //procedure sub_00527160(?:?);//00527160
    procedure sub_0052724C(?:dword);//0052724C

implementation

//0052706C
{*constructor TMedicineHelper.Create(?:?; ?:?; ?:?);
begin
 0052706C    push        ebp
 0052706D    mov         ebp,esp
 0052706F    add         esp,0FFFFFFF4
 00527072    test        dl,dl
>00527074    je          0052707E
 00527076    add         esp,0FFFFFFF0
 00527079    call        @ClassCreate
 0052707E    mov         dword ptr [ebp-0C],ecx
 00527081    mov         byte ptr [ebp-5],dl
 00527084    mov         dword ptr [ebp-4],eax
 00527087    xor         edx,edx
 00527089    mov         eax,dword ptr [ebp-4]
 0052708C    call        TObject.Create
 00527091    cmp         dword ptr [ebp-0C],0
>00527095    je          005270A3
 00527097    cmp         dword ptr [ebp+0C],0
>0052709B    je          005270A3
 0052709D    cmp         dword ptr [ebp+8],0
>005270A1    jne         005270B4
 005270A3    mov         ecx,52713C;'TMedicineHelper constructor Error'
 005270A8    mov         dl,1
 005270AA    mov         eax,[004653B4];Exception
 005270AF    call        Exception.Create;Exception.Create
 005270B4    mov         eax,dword ptr [ebp-4]
 005270B7    mov         edx,dword ptr [ebp-0C]
 005270BA    mov         dword ptr [eax+8],edx
 005270BD    mov         eax,dword ptr [ebp-4]
 005270C0    mov         edx,dword ptr [ebp+10]
 005270C3    mov         dword ptr [eax+0C],edx
 005270C6    mov         eax,dword ptr [ebp-4]
 005270C9    mov         edx,dword ptr [ebp+0C]
 005270CC    mov         dword ptr [eax+10],edx
 005270CF    mov         eax,dword ptr [ebp-4]
 005270D2    mov         edx,dword ptr [ebp+8]
 005270D5    mov         dword ptr [eax+14],edx
 005270D8    mov         eax,dword ptr [ebp-4]
 005270DB    mov         word ptr [eax+18],0FFFF
 005270E1    mov         eax,dword ptr [ebp-4]
 005270E4    mov         word ptr [eax+1A],0FFFF
 005270EA    mov         eax,dword ptr [ebp-4]
 005270ED    mov         word ptr [eax+1C],0FFFF
 005270F3    call        004688F0
 005270F8    mov         eax,dword ptr [ebp-4]
 005270FB    fstp        qword ptr [eax+28]
 005270FE    wait
 005270FF    mov         eax,dword ptr [ebp-4]
 00527102    mov         dword ptr [eax+20],514
 00527109    mov         eax,dword ptr [ebp-4]
 0052710C    call        00527160
 00527111    mov         eax,dword ptr [ebp-4]
 00527114    cmp         byte ptr [ebp-5],0
>00527118    je          00527129
 0052711A    call        @AfterConstruction
 0052711F    pop         dword ptr fs:[0]
 00527126    add         esp,0C
 00527129    mov         eax,dword ptr [ebp-4]
 0052712C    mov         esp,ebp
 0052712E    pop         ebp
 0052712F    ret         0C
end;*}

//00527160
{*procedure sub_00527160(?:?);
begin
 00527160    push        ebp
 00527161    mov         ebp,esp
 00527163    push        ecx
 00527164    mov         dword ptr [ebp-4],eax
 00527167    mov         eax,dword ptr [ebp-4]
 0052716A    mov         dword ptr [eax+38],2F
 00527171    mov         eax,dword ptr [ebp-4]
 00527174    mov         dword ptr [eax+40],30
 0052717B    mov         eax,dword ptr [ebp-4]
 0052717E    mov         dword ptr [eax+48],807
 00527185    pop         ecx
 00527186    pop         ebp
 00527187    ret
end;*}

//0052724C
procedure sub_0052724C(?:dword);
begin
{*
 0052724C    push        ebp
 0052724D    mov         ebp,esp
 0052724F    add         esp,0FFFFFFEC
 00527252    mov         dword ptr [ebp-4],eax
 00527255    mov         eax,dword ptr [ebp-4]
 00527258    cmp         byte ptr [eax+4],0
>0052725C    je          00527372
 00527262    mov         eax,dword ptr [ebp-4]
 00527265    mov         eax,dword ptr [eax+10]
 00527268    cmp         dword ptr [eax+40],0
>0052726C    je          00527372
 00527272    mov         eax,dword ptr [ebp-4]
 00527275    mov         eax,dword ptr [eax+10]
 00527278    mov         ax,word ptr [eax+4C]
 0052727C    mov         edx,dword ptr [ebp-4]
 0052727F    mov         edx,dword ptr [edx+10]
 00527282    cmp         ax,word ptr [edx+4E]
>00527286    jae         00527372
 0052728C    mov         eax,dword ptr [ebp-4]
 0052728F    mov         eax,dword ptr [eax+10]
 00527292    cmp         word ptr [eax+4C],0
>00527297    jbe         00527372
 0052729D    mov         eax,dword ptr [ebp-4]
 005272A0    mov         eax,dword ptr [eax+10]
 005272A3    movzx       eax,word ptr [eax+4C]
 005272A7    mov         dword ptr [ebp-10],eax
 005272AA    fild        dword ptr [ebp-10]
 005272AD    mov         eax,dword ptr [ebp-4]
 005272B0    mov         eax,dword ptr [eax+10]
 005272B3    movzx       eax,word ptr [eax+4E]
 005272B7    mov         dword ptr [ebp-14],eax
 005272BA    fild        dword ptr [ebp-14]
 005272BD    fdivp       st(1),st
 005272BF    fmul        dword ptr ds:[527378];100:Single
 005272C5    call        @ROUND
 005272CA    mov         byte ptr [ebp-9],al
 005272CD    mov         eax,dword ptr [ebp-4]
 005272D0    cmp         word ptr [eax+1A],0FFFFFFFF
>005272D5    je          00527372
 005272DB    movsx       eax,byte ptr [ebp-9]
 005272DF    mov         edx,dword ptr [ebp-4]
 005272E2    cmp         ax,word ptr [edx+1A]
>005272E6    jg          00527372
 005272EC    call        004688F0
 005272F1    add         esp,0FFFFFFF8
 005272F4    fstp        qword ptr [esp]
 005272F7    wait
 005272F8    mov         eax,dword ptr [ebp-4]
 005272FB    push        dword ptr [eax+2C]
 005272FE    push        dword ptr [eax+28]
 00527301    call        00521CB4
 00527306    push        edx
 00527307    push        eax
 00527308    mov         eax,dword ptr [ebp-4]
 0052730B    mov         eax,dword ptr [eax+20]
 0052730E    xor         edx,edx
 00527310    cmp         edx,dword ptr [esp+4]
>00527314    jne         0052731F
 00527316    cmp         eax,dword ptr [esp]
 00527319    pop         edx
 0052731A    pop         eax
>0052731B    jbe         00527323
>0052731D    jmp         00527372
 0052731F    pop         edx
 00527320    pop         eax
>00527321    jg          00527372
 00527323    mov         eax,dword ptr [ebp-4]
 00527326    mov         dx,word ptr [eax+40]
 0052732A    mov         eax,dword ptr [ebp-4]
 0052732D    mov         eax,dword ptr [eax+14]
 00527330    call        005267B8
 00527335    mov         dword ptr [ebp-8],eax
 00527338    cmp         dword ptr [ebp-8],0
>0052733C    je          00527372
 0052733E    call        004688F0
 00527343    mov         eax,dword ptr [ebp-4]
 00527346    fstp        qword ptr [eax+28]
 00527349    wait
 0052734A    mov         eax,dword ptr [ebp-8]
 0052734D    mov         eax,dword ptr [eax+4]
 00527350    mov         edx,dword ptr [ebp-4]
 00527353    mov         dword ptr [edx+4C],eax
 00527356    mov         eax,dword ptr [ebp-4]
 00527359    push        eax
 0052735A    push        527188
 0052735F    mov         eax,dword ptr [ebp-4]
 00527362    mov         eax,dword ptr [eax+8]
 00527365    mov         eax,dword ptr [eax]
 00527367    mov         edx,dword ptr [ebp-4]
 0052736A    mov         edx,dword ptr [edx+8]
 0052736D    call        00482DBC
 00527372    mov         esp,ebp
 00527374    pop         ebp
 00527375    ret
*}
end;

end.