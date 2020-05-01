//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit115;

interface

uses
  SysUtils, Classes;

type
  TAutoLogin = class(TInterfacedObject)
  public
    fC:String;//fC
    f10:String;//f10
    f14:String;//f14
    constructor Create;//00535FEC
  end;
    //procedure sub_005360C0(?:?; ?:?; ?:?; ?:?);//005360C0
    //procedure sub_00536220(?:?; ?:?);//00536220
    //procedure sub_0053629C(?:?; ?:?; ?:?);//0053629C
    //procedure sub_005363E0(?:?);//005363E0
    //function sub_00536414(?:?; ?:?):?;//00536414

implementation

//00535FEC
constructor TAutoLogin.Create;
begin
{*
 00535FEC    push        ebp
 00535FED    mov         ebp,esp
 00535FEF    add         esp,0FFFFFFF4
 00535FF2    test        dl,dl
>00535FF4    je          00535FFE
 00535FF6    add         esp,0FFFFFFF0
 00535FF9    call        @ClassCreate
 00535FFE    mov         dword ptr [ebp-0C],ecx
 00536001    mov         byte ptr [ebp-5],dl
 00536004    mov         dword ptr [ebp-4],eax
 00536007    xor         edx,edx
 00536009    mov         eax,dword ptr [ebp-4]
 0053600C    call        TObject.Create
 00536011    mov         eax,dword ptr [ebp-4]
 00536014    mov         byte ptr [eax+18],1
 00536018    mov         eax,dword ptr [ebp-4]
 0053601B    mov         byte ptr [eax+19],1
 0053601F    mov         eax,dword ptr [ebp-0C]
 00536022    mov         eax,dword ptr [eax]
 00536024    mov         edx,dword ptr [ebp-4]
 00536027    mov         dword ptr [edx+1C],eax
 0053602A    push        2
 0053602C    mov         ecx,55B08C
 00536031    mov         edx,dword ptr [ebp-4]
 00536034    test        edx,edx
>00536036    je          0053603B
 00536038    sub         edx,0FFFFFFE0
 0053603B    mov         eax,dword ptr [ebp-0C]
 0053603E    mov         eax,dword ptr [eax]
 00536040    call        005204E4
 00536045    push        2
 00536047    mov         ecx,55B094
 0053604C    mov         edx,dword ptr [ebp-4]
 0053604F    test        edx,edx
>00536051    je          00536056
 00536053    sub         edx,0FFFFFFE0
 00536056    mov         eax,dword ptr [ebp-0C]
 00536059    mov         eax,dword ptr [eax]
 0053605B    call        005203DC
 00536060    mov         eax,dword ptr [ebp-4]
 00536063    cmp         byte ptr [ebp-5],0
>00536067    je          00536078
 00536069    call        @AfterConstruction
 0053606E    pop         dword ptr fs:[0]
 00536075    add         esp,0C
 00536078    mov         eax,dword ptr [ebp-4]
 0053607B    mov         esp,ebp
 0053607D    pop         ebp
 0053607E    ret
*}
end;

//005360C0
{*procedure sub_005360C0(?:?; ?:?; ?:?; ?:?);
begin
 005360C0    push        ebp
 005360C1    mov         ebp,esp
 005360C3    add         esp,0FFFFFFE8
 005360C6    push        ebx
 005360C7    xor         ebx,ebx
 005360C9    mov         dword ptr [ebp-14],ebx
 005360CC    mov         dword ptr [ebp-18],ebx
 005360CF    mov         dword ptr [ebp-0C],ecx
 005360D2    mov         byte ptr [ebp-5],dl
 005360D5    mov         dword ptr [ebp-4],eax
 005360D8    xor         eax,eax
 005360DA    push        ebp
 005360DB    push        5361C7
 005360E0    push        dword ptr fs:[eax]
 005360E3    mov         dword ptr fs:[eax],esp
 005360E6    mov         al,byte ptr [ebp+0C]
 005360E9    sub         al,1
>005360EB    jb          005360F8
>005360ED    je          00536189
>005360F3    jmp         005361AC
 005360F8    xor         eax,eax
 005360FA    mov         al,byte ptr [ebp-5]
 005360FD    sub         ax,32
>00536101    je          00536171
 00536103    sub         ax,78
>00536107    jne         005361AC
 0053610D    mov         eax,dword ptr [ebp-0C]
 00536110    mov         edx,dword ptr [eax+4]
 00536113    mov         eax,dword ptr [ebp-4]
 00536116    call        00536414
 0053611B    mov         byte ptr [ebp-0D],al
 0053611E    mov         al,byte ptr [ebp-0D]
 00536121    dec         al
>00536123    jne         0053613E
 00536125    mov         eax,dword ptr [ebp-4]
 00536128    cmp         byte ptr [eax+19],0
>0053612C    je          005361AC
 0053612E    mov         eax,dword ptr [ebp-4]
 00536131    mov         edx,dword ptr [eax+14]
 00536134    mov         eax,dword ptr [ebp-4]
 00536137    call        00536220
>0053613C    jmp         005361AC
 0053613E    lea         edx,[ebp-18]
 00536141    xor         eax,eax
 00536143    mov         al,byte ptr [ebp-0D]
 00536146    call        IntToStr
 0053614B    mov         ecx,dword ptr [ebp-18]
 0053614E    lea         eax,[ebp-14]
 00536151    mov         edx,5361E0;'BLAD LOGOWANIA ! kod: '
 00536156    call        @LStrCat3
 0053615B    mov         ecx,dword ptr [ebp-14]
 0053615E    mov         dl,1
 00536160    mov         eax,[004653B4];Exception
 00536165    call        Exception.Create;Exception.Create
 0053616A    call        @RaiseExcept
>0053616F    jmp         005361AC
 00536171    mov         ecx,536200;'Nieprawidlowe haslo numeryczne'
 00536176    mov         dl,1
 00536178    mov         eax,[004653B4];Exception
 0053617D    call        Exception.Create;Exception.Create
 00536182    call        @RaiseExcept
>00536187    jmp         005361AC
 00536189    cmp         byte ptr [ebp-5],3
>0053618D    jne         005361AC
 0053618F    mov         eax,dword ptr [ebp-4]
 00536192    cmp         byte ptr [eax+18],0
>00536196    je          005361AC
 00536198    mov         eax,dword ptr [ebp-4]
 0053619B    mov         ecx,dword ptr [eax+10]
 0053619E    mov         eax,dword ptr [ebp-4]
 005361A1    mov         edx,dword ptr [eax+0C]
 005361A4    mov         eax,dword ptr [ebp-4]
 005361A7    call        0053629C
 005361AC    xor         eax,eax
 005361AE    pop         edx
 005361AF    pop         ecx
 005361B0    pop         ecx
 005361B1    mov         dword ptr fs:[eax],edx
 005361B4    push        5361CE
 005361B9    lea         eax,[ebp-18]
 005361BC    mov         edx,2
 005361C1    call        @LStrArrayClr
 005361C6    ret
>005361C7    jmp         @HandleFinally
>005361CC    jmp         005361B9
 005361CE    pop         ebx
 005361CF    mov         esp,ebp
 005361D1    pop         ebp
 005361D2    ret         8
end;*}

//00536220
{*procedure sub_00536220(?:?; ?:?);
begin
 00536220    push        ebp
 00536221    mov         ebp,esp
 00536223    add         esp,0FFFFFFF4
 00536226    xor         ecx,ecx
 00536228    mov         dword ptr [ebp-0C],ecx
 0053622B    mov         dword ptr [ebp-8],edx
 0053622E    mov         dword ptr [ebp-4],eax
 00536231    mov         eax,dword ptr [ebp-8]
 00536234    call        @LStrAddRef
 00536239    xor         eax,eax
 0053623B    push        ebp
 0053623C    push        53628E
 00536241    push        dword ptr fs:[eax]
 00536244    mov         dword ptr fs:[eax],esp
 00536247    lea         edx,[ebp-0C]
 0053624A    mov         eax,dword ptr [ebp-8]
 0053624D    call        00520C28
 00536252    mov         eax,dword ptr [ebp-0C]
 00536255    call        @LStrLen
 0053625A    mov         ecx,eax
 0053625C    mov         edx,dword ptr [ebp-0C]
 0053625F    mov         eax,dword ptr [ebp-4]
 00536262    mov         eax,dword ptr [eax+1C]
 00536265    call        0051FDFC
 0053626A    xor         eax,eax
 0053626C    pop         edx
 0053626D    pop         ecx
 0053626E    pop         ecx
 0053626F    mov         dword ptr fs:[eax],edx
 00536272    push        536295
 00536277    lea         eax,[ebp-0C]
 0053627A    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 00536280    call        @DynArrayClear
 00536285    lea         eax,[ebp-8]
 00536288    call        @LStrClr
 0053628D    ret
>0053628E    jmp         @HandleFinally
>00536293    jmp         00536277
 00536295    mov         esp,ebp
 00536297    pop         ebp
 00536298    ret
end;*}

//0053629C
{*procedure sub_0053629C(?:?; ?:?; ?:?);
begin
 0053629C    push        ebp
 0053629D    mov         ebp,esp
 0053629F    add         esp,0FFFFFFF0
 005362A2    push        ebx
 005362A3    xor         ebx,ebx
 005362A5    mov         dword ptr [ebp-10],ebx
 005362A8    mov         dword ptr [ebp-0C],ecx
 005362AB    mov         dword ptr [ebp-8],edx
 005362AE    mov         dword ptr [ebp-4],eax
 005362B1    mov         eax,dword ptr [ebp-8]
 005362B4    call        @LStrAddRef
 005362B9    mov         eax,dword ptr [ebp-0C]
 005362BC    call        @LStrAddRef
 005362C1    xor         eax,eax
 005362C3    push        ebp
 005362C4    push        53631E
 005362C9    push        dword ptr fs:[eax]
 005362CC    mov         dword ptr fs:[eax],esp
 005362CF    lea         ecx,[ebp-10]
 005362D2    mov         edx,dword ptr [ebp-0C]
 005362D5    mov         eax,dword ptr [ebp-8]
 005362D8    call        00520B30
 005362DD    mov         eax,dword ptr [ebp-10]
 005362E0    call        @LStrLen
 005362E5    mov         ecx,eax
 005362E7    mov         edx,dword ptr [ebp-10]
 005362EA    mov         eax,dword ptr [ebp-4]
 005362ED    mov         eax,dword ptr [eax+1C]
 005362F0    call        0051FDFC
 005362F5    xor         eax,eax
 005362F7    pop         edx
 005362F8    pop         ecx
 005362F9    pop         ecx
 005362FA    mov         dword ptr fs:[eax],edx
 005362FD    push        536325
 00536302    lea         eax,[ebp-10]
 00536305    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0053630B    call        @DynArrayClear
 00536310    lea         eax,[ebp-0C]
 00536313    mov         edx,2
 00536318    call        @LStrArrayClr
 0053631D    ret
>0053631E    jmp         @HandleFinally
>00536323    jmp         00536302
 00536325    pop         ebx
 00536326    mov         esp,ebp
 00536328    pop         ebp
 00536329    ret
end;*}

//005363E0
{*procedure sub_005363E0(?:?);
begin
 005363E0    push        ebp
 005363E1    mov         ebp,esp
 005363E3    push        ecx
 005363E4    mov         dword ptr [ebp-4],eax
 005363E7    mov         edx,dword ptr [ebp-4]
 005363EA    test        edx,edx
>005363EC    je          005363F1
 005363EE    sub         edx,0FFFFFFE0
 005363F1    mov         eax,dword ptr [ebp-4]
 005363F4    mov         eax,dword ptr [eax+1C]
 005363F7    call        00520620
 005363FC    mov         edx,dword ptr [ebp-4]
 005363FF    test        edx,edx
>00536401    je          00536406
 00536403    sub         edx,0FFFFFFE0
 00536406    mov         eax,dword ptr [ebp-4]
 00536409    mov         eax,dword ptr [eax+1C]
 0053640C    call        005205C8
 00536411    pop         ecx
 00536412    pop         ebp
 00536413    ret
end;*}

//00536414
{*function sub_00536414(?:?; ?:?):?;
begin
 00536414    push        ebp
 00536415    mov         ebp,esp
 00536417    add         esp,0FFFFFFF4
 0053641A    mov         dword ptr [ebp-8],edx
 0053641D    mov         dword ptr [ebp-4],eax
 00536420    lea         eax,[ebp-8]
 00536423    mov         edx,3
 00536428    call        0051F5E4
 0053642D    lea         eax,[ebp-8]
 00536430    call        0051F338
 00536435    mov         byte ptr [ebp-9],al
 00536438    mov         al,byte ptr [ebp-9]
 0053643B    mov         esp,ebp
 0053643D    pop         ebp
 0053643E    ret
end;*}

end.