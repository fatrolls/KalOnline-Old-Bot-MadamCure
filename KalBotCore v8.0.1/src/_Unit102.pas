//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit102;

interface

uses
  SysUtils, Classes;

type
  TAutoBuff = class(TThread)
  public
    f40:dword;//f40
    f44:dword;//f44
    f48:dword;//f48
    f4C:dword;//f4C
    f50:dword;//f50
    f58:Double;//f58
    f5C:dword;//f5C
    f60:String;//f60
    f68:dword;//f68
    f70:Double;//f70
    f78:Double;//f78
    f80:dword;//f80
    f84:dword;//f84
    f88:byte;//f88
    f8C:byte;//f8C
    destructor Destroy; virtual;//0052A7DC
    procedure Execute; virtual;//v4//0052A83C
    //constructor Create(?:?);//0052A668
  end;
  TIncomingMessage = TIncomingMessage = record//size=10
f8:String;//f8
fC:String;//fC
end;;
    procedure sub_0052A5B8(?:TAutoBuff; ?:dword);//0052A5B8
    //procedure sub_0052A630(?:?; ?:?);//0052A630
    destructor Destroy;//0052A7DC
    procedure Execute;//0052A83C
    procedure sub_0052B184(?:TAutoBuff);//0052B184
    procedure sub_0052B190(?:TAutoBuff);//0052B190
    procedure sub_0052B1FC(?:TAutoBuff);//0052B1FC
    procedure sub_0052B240(?:TAutoBuff);//0052B240
    procedure sub_0052B2B4(?:TAutoBuff);//0052B2B4
    //procedure sub_0052B32C(?:?; ?:?; ?:?; ?:?);//0052B32C
    //function sub_0052B37C:?;//0052B37C
    //function sub_0052B388(?:TAutoBuff; ?:dword):?;//0052B388
    //function sub_0052B3EC:?;//0052B3EC
    //function sub_0052B400:?;//0052B400
    //procedure sub_0052B414(?:?);//0052B414
    //procedure sub_0052B450(?:?; ?:?);//0052B450
    //procedure sub_0052B5B0(?:?; ?:?);//0052B5B0

implementation

//0052A5B8
procedure sub_0052A5B8(?:TAutoBuff; ?:dword);
begin
{*
 0052A5B8    push        ebp
 0052A5B9    mov         ebp,esp
 0052A5BB    add         esp,0FFFFFFF4
 0052A5BE    mov         dword ptr [ebp-8],edx
 0052A5C1    mov         dword ptr [ebp-4],eax
 0052A5C4    mov         edx,dword ptr [ebp-8]
 0052A5C7    mov         eax,dword ptr [ebp-4]
 0052A5CA    call        0052B388
 0052A5CF    mov         dword ptr [ebp-0C],eax
 0052A5D2    cmp         dword ptr [ebp-0C],0
>0052A5D6    jne         0052A614
 0052A5D8    mov         eax,18
 0052A5DD    call        @GetMem
 0052A5E2    mov         dword ptr [ebp-0C],eax
 0052A5E5    mov         edx,dword ptr [ebp-0C]
 0052A5E8    mov         eax,dword ptr [ebp-4]
 0052A5EB    mov         eax,dword ptr [eax+50]
 0052A5EE    call        TList.Add
 0052A5F3    mov         eax,dword ptr [ebp-8]
 0052A5F6    mov         edx,dword ptr [ebp-0C]
 0052A5F9    mov         dword ptr [edx],eax
 0052A5FB    mov         eax,dword ptr [ebp-0C]
 0052A5FE    xor         edx,edx
 0052A600    mov         dword ptr [eax+10],edx
 0052A603    mov         dword ptr [eax+14],edx
 0052A606    call        004688F0
 0052A60B    mov         eax,dword ptr [ebp-0C]
 0052A60E    fstp        qword ptr [eax+8]
 0052A611    wait
>0052A612    jmp         0052A62B
 0052A614    mov         eax,dword ptr [ebp-0C]
 0052A617    xor         edx,edx
 0052A619    mov         dword ptr [eax+10],edx
 0052A61C    mov         dword ptr [eax+14],edx
 0052A61F    call        004688F0
 0052A624    mov         eax,dword ptr [ebp-0C]
 0052A627    fstp        qword ptr [eax+8]
 0052A62A    wait
 0052A62B    mov         esp,ebp
 0052A62D    pop         ebp
 0052A62E    ret
*}
end;

//0052A630
{*procedure sub_0052A630(?:?; ?:?);
begin
 0052A630    push        ebp
 0052A631    mov         ebp,esp
 0052A633    add         esp,0FFFFFFF8
 0052A636    mov         dword ptr [ebp-8],edx
 0052A639    mov         dword ptr [ebp-4],eax
 0052A63C    cmp         dword ptr [ebp-8],0
>0052A640    je          0052A663
 0052A642    mov         edx,dword ptr [ebp-8]
 0052A645    mov         eax,dword ptr [ebp-4]
 0052A648    mov         eax,dword ptr [eax+48]
 0052A64B    call        00478890
 0052A650    inc         eax
>0052A651    jne         0052A663
 0052A653    mov         ecx,dword ptr [ebp-8]
 0052A656    xor         edx,edx
 0052A658    mov         eax,dword ptr [ebp-4]
 0052A65B    mov         eax,dword ptr [eax+48]
 0052A65E    call        004788DC
 0052A663    pop         ecx
 0052A664    pop         ecx
 0052A665    pop         ebp
 0052A666    ret
end;*}

//0052A668
{*constructor TAutoBuff.Create(?:?);
begin
 0052A668    push        ebp
 0052A669    mov         ebp,esp
 0052A66B    add         esp,0FFFFFFF0
 0052A66E    test        dl,dl
>0052A670    je          0052A67A
 0052A672    add         esp,0FFFFFFF0
 0052A675    call        @ClassCreate
 0052A67A    mov         dword ptr [ebp-0C],ecx
 0052A67D    mov         byte ptr [ebp-5],dl
 0052A680    mov         dword ptr [ebp-4],eax
 0052A683    call        Randomize
 0052A688    mov         cl,1
 0052A68A    xor         edx,edx
 0052A68C    mov         eax,dword ptr [ebp-4]
 0052A68F    call        00482974
 0052A694    mov         eax,dword ptr [ebp-4]
 0052A697    mov         byte ptr [eax+0F],1
 0052A69B    mov         eax,dword ptr [ebp+8]
 0052A69E    mov         eax,dword ptr [eax]
 0052A6A0    mov         edx,dword ptr [ebp-4]
 0052A6A3    mov         dword ptr [edx+44],eax
 0052A6A6    mov         eax,dword ptr [ebp-0C]
 0052A6A9    mov         eax,dword ptr [eax]
 0052A6AB    mov         edx,dword ptr [ebp-4]
 0052A6AE    mov         dword ptr [edx+40],eax
 0052A6B1    mov         dl,1
 0052A6B3    mov         eax,[004759C0];TList
 0052A6B8    call        TObject.Create;TList.Create
 0052A6BD    mov         edx,dword ptr [ebp-4]
 0052A6C0    mov         dword ptr [edx+50],eax
 0052A6C3    mov         dl,1
 0052A6C5    mov         eax,[004759C0];TList
 0052A6CA    call        TObject.Create;TList.Create
 0052A6CF    mov         edx,dword ptr [ebp-4]
 0052A6D2    mov         dword ptr [edx+48],eax
 0052A6D5    mov         eax,dword ptr [ebp-4]
 0052A6D8    xor         edx,edx
 0052A6DA    mov         dword ptr [eax+58],edx
 0052A6DD    mov         dword ptr [eax+5C],edx
 0052A6E0    mov         eax,dword ptr [ebp-4]
 0052A6E3    xor         edx,edx
 0052A6E5    mov         dword ptr [eax+78],edx
 0052A6E8    mov         dword ptr [eax+7C],40640000
 0052A6EF    mov         eax,dword ptr [ebp-4]
 0052A6F2    mov         dword ptr [eax+80],8FC
 0052A6FC    mov         eax,dword ptr [ebp-4]
 0052A6FF    mov         dword ptr [eax+84],258
 0052A709    mov         eax,dword ptr [ebp-4]
 0052A70C    mov         dword ptr [eax+88],1A
 0052A716    mov         dl,1
 0052A718    mov         eax,[00476078];TStringList
 0052A71D    call        TObject.Create;TStringList.Create
 0052A722    mov         edx,dword ptr [ebp-4]
 0052A725    mov         dword ptr [edx+64],eax
 0052A728    mov         dl,1
 0052A72A    mov         eax,[00476078];TStringList
 0052A72F    call        TObject.Create;TStringList.Create
 0052A734    mov         edx,dword ptr [ebp-4]
 0052A737    mov         dword ptr [edx+68],eax
 0052A73A    mov         eax,dword ptr [ebp-4]
 0052A73D    mov         eax,dword ptr [eax+64]
 0052A740    mov         edx,52A7A4;'ServiceBroadcast.txt'
 0052A745    mov         ecx,dword ptr [eax]
 0052A747    call        dword ptr [ecx+68]
 0052A74A    mov         eax,dword ptr [ebp-4]
 0052A74D    mov         eax,dword ptr [eax+68]
 0052A750    mov         edx,52A7C4;'NoProblemBroadcast.txt'
 0052A755    mov         ecx,dword ptr [eax]
 0052A757    call        dword ptr [ecx+68]
 0052A75A    push        1
 0052A75C    mov         ecx,54E744
 0052A761    mov         edx,dword ptr [ebp-4]
 0052A764    test        edx,edx
>0052A766    je          0052A76E
 0052A768    sub         edx,0FFFFFF70
 0052A76E    mov         eax,dword ptr [ebp+8]
 0052A771    mov         eax,dword ptr [eax]
 0052A773    call        005204E4
 0052A778    mov         eax,dword ptr [ebp-4]
 0052A77B    cmp         byte ptr [ebp-5],0
>0052A77F    je          0052A790
 0052A781    call        @AfterConstruction
 0052A786    pop         dword ptr fs:[0]
 0052A78D    add         esp,0C
 0052A790    mov         eax,dword ptr [ebp-4]
 0052A793    mov         esp,ebp
 0052A795    pop         ebp
 0052A796    ret         4
end;*}

//0052A7DC
destructor TAutoBuff.Destroy;
begin
{*
 0052A7DC    push        ebp
 0052A7DD    mov         ebp,esp
 0052A7DF    add         esp,0FFFFFFF8
 0052A7E2    call        @BeforeDestruction
 0052A7E7    mov         byte ptr [ebp-5],dl
 0052A7EA    mov         dword ptr [ebp-4],eax
 0052A7ED    mov         eax,dword ptr [ebp-4]
 0052A7F0    mov         eax,dword ptr [eax+50]
 0052A7F3    call        TObject.Free
 0052A7F8    mov         eax,dword ptr [ebp-4]
 0052A7FB    mov         eax,dword ptr [eax+48]
 0052A7FE    call        TObject.Free
 0052A803    mov         eax,dword ptr [ebp-4]
 0052A806    mov         eax,dword ptr [eax+68]
 0052A809    call        TObject.Free
 0052A80E    mov         eax,dword ptr [ebp-4]
 0052A811    mov         eax,dword ptr [eax+64]
 0052A814    call        TObject.Free
 0052A819    mov         dl,byte ptr [ebp-5]
 0052A81C    and         dl,0FC
 0052A81F    mov         eax,dword ptr [ebp-4]
 0052A822    call        TThread.Destroy
 0052A827    cmp         byte ptr [ebp-5],0
>0052A82B    jle         0052A835
 0052A82D    mov         eax,dword ptr [ebp-4]
 0052A830    call        @ClassDestroy
 0052A835    pop         ecx
 0052A836    pop         ecx
 0052A837    pop         ebp
 0052A838    ret
*}
end;

//0052A83C
procedure TAutoBuff.Execute;
begin
{*
 0052A83C    push        ebp
 0052A83D    mov         ebp,esp
 0052A83F    add         esp,0FFFFFFF0
 0052A842    push        ebx
 0052A843    xor         edx,edx
 0052A845    mov         dword ptr [ebp-10],edx
 0052A848    mov         dword ptr [ebp-4],eax
 0052A84B    xor         eax,eax
 0052A84D    push        ebp
 0052A84E    push        52B0B5
 0052A853    push        dword ptr fs:[eax]
 0052A856    mov         dword ptr fs:[eax],esp
 0052A859    mov         dword ptr [ebp-0C],1E
>0052A860    jmp         0052B092
 0052A865    push        32
 0052A867    call        kernel32.Sleep
 0052A86C    mov         eax,dword ptr [ebp-4]
 0052A86F    cmp         byte ptr [eax+8C],0;TAutoBuff.?f8C:byte
>0052A876    je          0052A926
 0052A87C    mov         eax,dword ptr [ebp-4]
 0052A87F    push        dword ptr [eax+5C];TAutoBuff.?f5C:dword
 0052A882    push        dword ptr [eax+58];TAutoBuff.?f58:Double
 0052A885    call        004688F0
 0052A88A    add         esp,0FFFFFFF8
 0052A88D    fstp        qword ptr [esp]
 0052A890    wait
 0052A891    call        00521C54
 0052A896    cmp         edx,0
>0052A899    jne         0052A8A6
 0052A89B    cmp         eax,0D
>0052A89E    jb          0052A926
>0052A8A4    jmp         0052A8A8
>0052A8A6    jl          0052A926
 0052A8A8    mov         eax,dword ptr [ebp-4]
 0052A8AB    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052A8AE    cmp         word ptr [eax+50],0E
>0052A8B3    jae         0052A8E1
 0052A8B5    push        3E8
 0052A8BA    call        kernel32.Sleep
 0052A8BF    mov         eax,dword ptr [ebp-4]
 0052A8C2    add         eax,60;TAutoBuff.?f60:String
 0052A8C5    mov         edx,52B0CC;'No mana for meditation pls wait 10 sec.'
 0052A8CA    call        @LStrAsg
 0052A8CF    mov         eax,dword ptr [ebp-4]
 0052A8D2    call        0052B190
 0052A8D7    push        2710
 0052A8DC    call        kernel32.Sleep
 0052A8E1    xor         eax,eax
 0052A8E3    mov         al,[0054E740];0xF gvar_0054E740
 0052A8E8    mov         edx,dword ptr [ebp-4]
 0052A8EB    mov         dword ptr [edx+88],eax;TAutoBuff.?f88:byte
 0052A8F1    mov         eax,dword ptr [ebp-4]
 0052A8F4    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052A8F7    mov         eax,dword ptr [eax+40]
 0052A8FA    mov         edx,dword ptr [ebp-4]
 0052A8FD    mov         dword ptr [edx+4C],eax;TAutoBuff.?f4C:dword
 0052A900    mov         eax,dword ptr [ebp-4]
 0052A903    call        0052B2B4
 0052A908    mov         eax,dword ptr [ebp-4]
 0052A90B    xor         edx,edx
 0052A90D    mov         dword ptr [eax+4C],edx;TAutoBuff.?f4C:dword
 0052A910    push        190
 0052A915    call        kernel32.Sleep
 0052A91A    call        004688F0
 0052A91F    mov         eax,dword ptr [ebp-4]
 0052A922    fstp        qword ptr [eax+58];TAutoBuff.?f58:Double
 0052A925    wait
 0052A926    mov         eax,dword ptr [ebp-4]
 0052A929    mov         eax,dword ptr [eax+48];TAutoBuff.?f48:dword
 0052A92C    cmp         dword ptr [eax+8],0
>0052A930    jle         0052B092
 0052A936    mov         eax,dword ptr [ebp-4]
 0052A939    mov         eax,dword ptr [eax+48];TAutoBuff.?f48:dword
 0052A93C    call        0047898C
 0052A941    mov         edx,dword ptr [ebp-4]
 0052A944    mov         dword ptr [edx+4C],eax;TAutoBuff.?f4C:dword
 0052A947    mov         eax,dword ptr [ebp-4]
 0052A94A    mov         eax,dword ptr [eax+48];TAutoBuff.?f48:dword
 0052A94D    call        0047898C
 0052A952    mov         edx,eax
 0052A954    mov         eax,dword ptr [ebp-4]
 0052A957    mov         eax,dword ptr [eax+48];TAutoBuff.?f48:dword
 0052A95A    call        00478AC4
 0052A95F    mov         eax,dword ptr [ebp-4]
 0052A962    mov         edx,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052A965    mov         eax,dword ptr [ebp-4]
 0052A968    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052A96B    call        0053481C
 0052A970    test        al,al
>0052A972    je          0052B092
 0052A978    mov         eax,dword ptr [ebp-4]
 0052A97B    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052A97E    mov         eax,dword ptr [eax+40]
 0052A981    lea         edx,[eax+0C]
 0052A984    mov         eax,dword ptr [ebp-4]
 0052A987    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052A98A    add         eax,0C
 0052A98D    call        0051F5FC
 0052A992    mov         eax,dword ptr [ebp-4]
 0052A995    fcomp       qword ptr [eax+78];TAutoBuff.?f78:Double
 0052A998    fnstsw      al
 0052A99A    sahf
>0052A99B    ja          0052B092
 0052A9A1    mov         eax,dword ptr [ebp-4]
 0052A9A4    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052A9A7    mov         edx,dword ptr [eax]
 0052A9A9    mov         eax,dword ptr [ebp-4]
 0052A9AC    call        0052B388
 0052A9B1    mov         dword ptr [ebp-8],eax
 0052A9B4    cmp         dword ptr [ebp-8],0
>0052A9B8    je          0052AA53
 0052A9BE    mov         eax,dword ptr [ebp-8]
 0052A9C1    push        dword ptr [eax+14]
 0052A9C4    push        dword ptr [eax+10]
 0052A9C7    call        004688F0
 0052A9CC    add         esp,0FFFFFFF8
 0052A9CF    fstp        qword ptr [esp]
 0052A9D2    wait
 0052A9D3    call        00521C84
 0052A9D8    cmp         edx,0
>0052A9DB    jne         0052A9E7
 0052A9DD    cmp         eax,32
>0052A9E0    jae         0052A9ED
>0052A9E2    jmp         0052B092
>0052A9E7    jl          0052B092
 0052A9ED    mov         eax,dword ptr [ebp-8]
 0052A9F0    push        dword ptr [eax+0C]
 0052A9F3    push        dword ptr [eax+8]
 0052A9F6    call        004688F0
 0052A9FB    add         esp,0FFFFFFF8
 0052A9FE    fstp        qword ptr [esp]
 0052AA01    wait
 0052AA02    call        00521C84
 0052AA07    cmp         edx,0
>0052AA0A    jne         0052AA15
 0052AA0C    cmp         eax,0B4
>0052AA11    ja          0052AA53
>0052AA13    jmp         0052AA17
>0052AA15    jg          0052AA53
 0052AA17    push        3E8
 0052AA1C    call        kernel32.Sleep
 0052AA21    mov         eax,dword ptr [ebp-4]
 0052AA24    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AA27    mov         edx,dword ptr [eax+4]
 0052AA2A    mov         eax,dword ptr [ebp-4]
 0052AA2D    add         eax,60;TAutoBuff.?f60:String
 0052AA30    mov         ecx,52B0FC;' you get speed from me few sec. ago - wait 3 min. for next speed/buff'
 0052AA35    call        @LStrCat3
 0052AA3A    call        004688F0
 0052AA3F    mov         eax,dword ptr [ebp-8]
 0052AA42    fstp        qword ptr [eax+10]
 0052AA45    wait
 0052AA46    mov         eax,dword ptr [ebp-4]
 0052AA49    call        0052B190
>0052AA4E    jmp         0052B092
 0052AA53    mov         eax,dword ptr [ebp-4]
 0052AA56    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AA59    cmp         word ptr [eax+50],6A
>0052AA5E    ja          0052AAA1
 0052AA60    push        7D0
 0052AA65    call        kernel32.Sleep
 0052AA6A    mov         eax,dword ptr [ebp-4]
 0052AA6D    add         eax,60;TAutoBuff.?f60:String
 0052AA70    mov         edx,52B14C;'LoMana 30 sec. break pls wait - drinking in progress'
 0052AA75    call        @LStrAsg
 0052AA7A    mov         eax,dword ptr [ebp-4]
 0052AA7D    call        0052B190
 0052AA82    mov         eax,dword ptr [ebp-4]
 0052AA85    call        0052B1FC
 0052AA8A    push        7530
 0052AA8F    call        kernel32.Sleep
 0052AA94    mov         eax,dword ptr [ebp-4]
 0052AA97    call        0052B184
>0052AA9C    jmp         0052B092
 0052AAA1    xor         eax,eax
 0052AAA3    mov         al,[0054E73C];0x1A gvar_0054E73C
 0052AAA8    mov         edx,dword ptr [ebp-4]
 0052AAAB    mov         dword ptr [edx+88],eax;TAutoBuff.?f88:byte
 0052AAB1    mov         eax,dword ptr [ebp-4]
 0052AAB4    call        0052B240
 0052AAB9    mov         eax,dword ptr [ebp-4]
 0052AABC    mov         eax,dword ptr [eax+80];TAutoBuff.?f80:dword
 0052AAC2    push        eax
 0052AAC3    call        kernel32.Sleep
 0052AAC8    mov         eax,dword ptr [ebp-4]
 0052AACB    call        0052B2B4
 0052AAD0    mov         eax,dword ptr [ebp-4]
 0052AAD3    mov         eax,dword ptr [eax+84];TAutoBuff.?f84:dword
 0052AAD9    push        eax
 0052AADA    call        kernel32.Sleep
 0052AADF    call        004688F0
 0052AAE4    mov         eax,dword ptr [ebp-4]
 0052AAE7    fstp        qword ptr [eax+70];TAutoBuff.?f70:Double
 0052AAEA    wait
 0052AAEB    mov         eax,dword ptr [ebp-4]
 0052AAEE    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AAF1    cmp         word ptr [eax+50],6A
>0052AAF6    ja          0052AB39
 0052AAF8    push        7D0
 0052AAFD    call        kernel32.Sleep
 0052AB02    mov         eax,dword ptr [ebp-4]
 0052AB05    add         eax,60;TAutoBuff.?f60:String
 0052AB08    mov         edx,52B14C;'LoMana 30 sec. break pls wait - drinking in progress'
 0052AB0D    call        @LStrAsg
 0052AB12    mov         eax,dword ptr [ebp-4]
 0052AB15    call        0052B190
 0052AB1A    mov         eax,dword ptr [ebp-4]
 0052AB1D    call        0052B1FC
 0052AB22    push        7530
 0052AB27    call        kernel32.Sleep
 0052AB2C    mov         eax,dword ptr [ebp-4]
 0052AB2F    call        0052B184
>0052AB34    jmp         0052B092
 0052AB39    push        12C
 0052AB3E    call        kernel32.Sleep
 0052AB43    mov         eax,dword ptr [ebp-4]
 0052AB46    mov         edx,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AB49    mov         eax,dword ptr [ebp-4]
 0052AB4C    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AB4F    call        0053481C
 0052AB54    test        al,al
>0052AB56    je          0052B092
 0052AB5C    mov         eax,dword ptr [ebp-4]
 0052AB5F    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AB62    mov         eax,dword ptr [eax+40]
 0052AB65    lea         edx,[eax+0C]
 0052AB68    mov         eax,dword ptr [ebp-4]
 0052AB6B    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AB6E    add         eax,0C
 0052AB71    call        0051F5FC
 0052AB76    mov         eax,dword ptr [ebp-4]
 0052AB79    fcomp       qword ptr [eax+78];TAutoBuff.?f78:Double
 0052AB7C    fnstsw      al
 0052AB7E    sahf
>0052AB7F    ja          0052B092
 0052AB85    xor         eax,eax
 0052AB87    mov         al,[0054E724];0x27 gvar_0054E724
 0052AB8C    mov         edx,dword ptr [ebp-4]
 0052AB8F    mov         dword ptr [edx+88],eax;TAutoBuff.?f88:byte
 0052AB95    mov         eax,dword ptr [ebp-4]
 0052AB98    call        0052B240
 0052AB9D    mov         eax,dword ptr [ebp-4]
 0052ABA0    mov         eax,dword ptr [eax+80];TAutoBuff.?f80:dword
 0052ABA6    push        eax
 0052ABA7    call        kernel32.Sleep
 0052ABAC    mov         eax,dword ptr [ebp-4]
 0052ABAF    call        0052B2B4
 0052ABB4    mov         eax,dword ptr [ebp-4]
 0052ABB7    mov         eax,dword ptr [eax+84];TAutoBuff.?f84:dword
 0052ABBD    push        eax
 0052ABBE    call        kernel32.Sleep
 0052ABC3    call        004688F0
 0052ABC8    mov         eax,dword ptr [ebp-4]
 0052ABCB    fstp        qword ptr [eax+70];TAutoBuff.?f70:Double
 0052ABCE    wait
 0052ABCF    mov         eax,dword ptr [ebp-4]
 0052ABD2    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052ABD5    cmp         word ptr [eax+50],6A
>0052ABDA    ja          0052AC1D
 0052ABDC    push        7D0
 0052ABE1    call        kernel32.Sleep
 0052ABE6    mov         eax,dword ptr [ebp-4]
 0052ABE9    add         eax,60;TAutoBuff.?f60:String
 0052ABEC    mov         edx,52B14C;'LoMana 30 sec. break pls wait - drinking in progress'
 0052ABF1    call        @LStrAsg
 0052ABF6    mov         eax,dword ptr [ebp-4]
 0052ABF9    call        0052B190
 0052ABFE    mov         eax,dword ptr [ebp-4]
 0052AC01    call        0052B1FC
 0052AC06    push        7530
 0052AC0B    call        kernel32.Sleep
 0052AC10    mov         eax,dword ptr [ebp-4]
 0052AC13    call        0052B184
>0052AC18    jmp         0052B092
 0052AC1D    push        12C
 0052AC22    call        kernel32.Sleep
 0052AC27    mov         eax,dword ptr [ebp-4]
 0052AC2A    mov         edx,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AC2D    mov         eax,dword ptr [ebp-4]
 0052AC30    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AC33    call        0053481C
 0052AC38    test        al,al
>0052AC3A    je          0052B092
 0052AC40    mov         eax,dword ptr [ebp-4]
 0052AC43    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AC46    mov         eax,dword ptr [eax+40]
 0052AC49    lea         edx,[eax+0C]
 0052AC4C    mov         eax,dword ptr [ebp-4]
 0052AC4F    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AC52    add         eax,0C
 0052AC55    call        0051F5FC
 0052AC5A    mov         eax,dword ptr [ebp-4]
 0052AC5D    fcomp       qword ptr [eax+78];TAutoBuff.?f78:Double
 0052AC60    fnstsw      al
 0052AC62    sahf
>0052AC63    ja          0052B092
 0052AC69    xor         eax,eax
 0052AC6B    mov         al,[0054E728];0x31 gvar_0054E728
 0052AC70    mov         edx,dword ptr [ebp-4]
 0052AC73    mov         dword ptr [edx+88],eax;TAutoBuff.?f88:byte
 0052AC79    mov         eax,dword ptr [ebp-4]
 0052AC7C    call        0052B240
 0052AC81    mov         eax,dword ptr [ebp-4]
 0052AC84    mov         eax,dword ptr [eax+80];TAutoBuff.?f80:dword
 0052AC8A    push        eax
 0052AC8B    call        kernel32.Sleep
 0052AC90    mov         eax,dword ptr [ebp-4]
 0052AC93    call        0052B2B4
 0052AC98    mov         eax,dword ptr [ebp-4]
 0052AC9B    mov         eax,dword ptr [eax+84];TAutoBuff.?f84:dword
 0052ACA1    push        eax
 0052ACA2    call        kernel32.Sleep
 0052ACA7    call        004688F0
 0052ACAC    mov         eax,dword ptr [ebp-4]
 0052ACAF    fstp        qword ptr [eax+70];TAutoBuff.?f70:Double
 0052ACB2    wait
 0052ACB3    mov         eax,dword ptr [ebp-4]
 0052ACB6    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052ACB9    cmp         word ptr [eax+50],6A
>0052ACBE    ja          0052AD01
 0052ACC0    push        7D0
 0052ACC5    call        kernel32.Sleep
 0052ACCA    mov         eax,dword ptr [ebp-4]
 0052ACCD    add         eax,60;TAutoBuff.?f60:String
 0052ACD0    mov         edx,52B14C;'LoMana 30 sec. break pls wait - drinking in progress'
 0052ACD5    call        @LStrAsg
 0052ACDA    mov         eax,dword ptr [ebp-4]
 0052ACDD    call        0052B190
 0052ACE2    mov         eax,dword ptr [ebp-4]
 0052ACE5    call        0052B1FC
 0052ACEA    push        7530
 0052ACEF    call        kernel32.Sleep
 0052ACF4    mov         eax,dword ptr [ebp-4]
 0052ACF7    call        0052B184
>0052ACFC    jmp         0052B092
 0052AD01    push        12C
 0052AD06    call        kernel32.Sleep
 0052AD0B    mov         eax,dword ptr [ebp-4]
 0052AD0E    mov         edx,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AD11    mov         eax,dword ptr [ebp-4]
 0052AD14    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AD17    call        0053481C
 0052AD1C    test        al,al
>0052AD1E    je          0052B092
 0052AD24    mov         eax,dword ptr [ebp-4]
 0052AD27    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AD2A    mov         eax,dword ptr [eax+40]
 0052AD2D    lea         edx,[eax+0C]
 0052AD30    mov         eax,dword ptr [ebp-4]
 0052AD33    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AD36    add         eax,0C
 0052AD39    call        0051F5FC
 0052AD3E    mov         eax,dword ptr [ebp-4]
 0052AD41    fcomp       qword ptr [eax+78];TAutoBuff.?f78:Double
 0052AD44    fnstsw      al
 0052AD46    sahf
>0052AD47    ja          0052B092
 0052AD4D    xor         eax,eax
 0052AD4F    mov         al,[0054E72C];0x32 gvar_0054E72C
 0052AD54    mov         edx,dword ptr [ebp-4]
 0052AD57    mov         dword ptr [edx+88],eax;TAutoBuff.?f88:byte
 0052AD5D    mov         eax,dword ptr [ebp-4]
 0052AD60    call        0052B240
 0052AD65    mov         eax,dword ptr [ebp-4]
 0052AD68    mov         eax,dword ptr [eax+80];TAutoBuff.?f80:dword
 0052AD6E    push        eax
 0052AD6F    call        kernel32.Sleep
 0052AD74    mov         eax,dword ptr [ebp-4]
 0052AD77    call        0052B2B4
 0052AD7C    mov         eax,dword ptr [ebp-4]
 0052AD7F    mov         eax,dword ptr [eax+84];TAutoBuff.?f84:dword
 0052AD85    push        eax
 0052AD86    call        kernel32.Sleep
 0052AD8B    call        004688F0
 0052AD90    mov         eax,dword ptr [ebp-4]
 0052AD93    fstp        qword ptr [eax+70];TAutoBuff.?f70:Double
 0052AD96    wait
 0052AD97    mov         eax,dword ptr [ebp-4]
 0052AD9A    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AD9D    cmp         word ptr [eax+50],6A
>0052ADA2    ja          0052ADE5
 0052ADA4    push        7D0
 0052ADA9    call        kernel32.Sleep
 0052ADAE    mov         eax,dword ptr [ebp-4]
 0052ADB1    add         eax,60;TAutoBuff.?f60:String
 0052ADB4    mov         edx,52B14C;'LoMana 30 sec. break pls wait - drinking in progress'
 0052ADB9    call        @LStrAsg
 0052ADBE    mov         eax,dword ptr [ebp-4]
 0052ADC1    call        0052B190
 0052ADC6    mov         eax,dword ptr [ebp-4]
 0052ADC9    call        0052B1FC
 0052ADCE    push        7530
 0052ADD3    call        kernel32.Sleep
 0052ADD8    mov         eax,dword ptr [ebp-4]
 0052ADDB    call        0052B184
>0052ADE0    jmp         0052B092
 0052ADE5    push        12C
 0052ADEA    call        kernel32.Sleep
 0052ADEF    mov         eax,dword ptr [ebp-4]
 0052ADF2    mov         edx,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052ADF5    mov         eax,dword ptr [ebp-4]
 0052ADF8    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052ADFB    call        0053481C
 0052AE00    test        al,al
>0052AE02    je          0052B092
 0052AE08    mov         eax,dword ptr [ebp-4]
 0052AE0B    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AE0E    mov         eax,dword ptr [eax+40]
 0052AE11    lea         edx,[eax+0C]
 0052AE14    mov         eax,dword ptr [ebp-4]
 0052AE17    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AE1A    add         eax,0C
 0052AE1D    call        0051F5FC
 0052AE22    mov         eax,dword ptr [ebp-4]
 0052AE25    fcomp       qword ptr [eax+78];TAutoBuff.?f78:Double
 0052AE28    fnstsw      al
 0052AE2A    sahf
>0052AE2B    ja          0052B092
 0052AE31    xor         eax,eax
 0052AE33    mov         al,[0054E730];0x33 gvar_0054E730
 0052AE38    mov         edx,dword ptr [ebp-4]
 0052AE3B    mov         dword ptr [edx+88],eax;TAutoBuff.?f88:byte
 0052AE41    mov         eax,dword ptr [ebp-4]
 0052AE44    call        0052B240
 0052AE49    mov         eax,dword ptr [ebp-4]
 0052AE4C    mov         eax,dword ptr [eax+80];TAutoBuff.?f80:dword
 0052AE52    push        eax
 0052AE53    call        kernel32.Sleep
 0052AE58    mov         eax,dword ptr [ebp-4]
 0052AE5B    call        0052B2B4
 0052AE60    mov         eax,dword ptr [ebp-4]
 0052AE63    mov         eax,dword ptr [eax+84];TAutoBuff.?f84:dword
 0052AE69    push        eax
 0052AE6A    call        kernel32.Sleep
 0052AE6F    call        004688F0
 0052AE74    mov         eax,dword ptr [ebp-4]
 0052AE77    fstp        qword ptr [eax+70];TAutoBuff.?f70:Double
 0052AE7A    wait
 0052AE7B    mov         eax,dword ptr [ebp-4]
 0052AE7E    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AE81    cmp         word ptr [eax+50],6A
>0052AE86    ja          0052AEC9
 0052AE88    push        7D0
 0052AE8D    call        kernel32.Sleep
 0052AE92    mov         eax,dword ptr [ebp-4]
 0052AE95    add         eax,60;TAutoBuff.?f60:String
 0052AE98    mov         edx,52B14C;'LoMana 30 sec. break pls wait - drinking in progress'
 0052AE9D    call        @LStrAsg
 0052AEA2    mov         eax,dword ptr [ebp-4]
 0052AEA5    call        0052B190
 0052AEAA    mov         eax,dword ptr [ebp-4]
 0052AEAD    call        0052B1FC
 0052AEB2    push        7530
 0052AEB7    call        kernel32.Sleep
 0052AEBC    mov         eax,dword ptr [ebp-4]
 0052AEBF    call        0052B184
>0052AEC4    jmp         0052B092
 0052AEC9    push        12C
 0052AECE    call        kernel32.Sleep
 0052AED3    mov         eax,dword ptr [ebp-4]
 0052AED6    mov         edx,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AED9    mov         eax,dword ptr [ebp-4]
 0052AEDC    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AEDF    call        0053481C
 0052AEE4    test        al,al
>0052AEE6    je          0052B092
 0052AEEC    mov         eax,dword ptr [ebp-4]
 0052AEEF    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AEF2    mov         eax,dword ptr [eax+40]
 0052AEF5    lea         edx,[eax+0C]
 0052AEF8    mov         eax,dword ptr [ebp-4]
 0052AEFB    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AEFE    add         eax,0C
 0052AF01    call        0051F5FC
 0052AF06    mov         eax,dword ptr [ebp-4]
 0052AF09    fcomp       qword ptr [eax+78];TAutoBuff.?f78:Double
 0052AF0C    fnstsw      al
 0052AF0E    sahf
>0052AF0F    ja          0052B092
 0052AF15    xor         eax,eax
 0052AF17    mov         al,[0054E734];0x34 gvar_0054E734
 0052AF1C    mov         edx,dword ptr [ebp-4]
 0052AF1F    mov         dword ptr [edx+88],eax;TAutoBuff.?f88:byte
 0052AF25    mov         eax,dword ptr [ebp-4]
 0052AF28    call        0052B240
 0052AF2D    mov         eax,dword ptr [ebp-4]
 0052AF30    mov         eax,dword ptr [eax+80];TAutoBuff.?f80:dword
 0052AF36    push        eax
 0052AF37    call        kernel32.Sleep
 0052AF3C    mov         eax,dword ptr [ebp-4]
 0052AF3F    call        0052B2B4
 0052AF44    mov         eax,dword ptr [ebp-4]
 0052AF47    mov         eax,dword ptr [eax+84];TAutoBuff.?f84:dword
 0052AF4D    push        eax
 0052AF4E    call        kernel32.Sleep
 0052AF53    call        004688F0
 0052AF58    mov         eax,dword ptr [ebp-4]
 0052AF5B    fstp        qword ptr [eax+70];TAutoBuff.?f70:Double
 0052AF5E    wait
 0052AF5F    mov         eax,dword ptr [ebp-4]
 0052AF62    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AF65    cmp         word ptr [eax+50],6A
>0052AF6A    ja          0052AFAD
 0052AF6C    push        7D0
 0052AF71    call        kernel32.Sleep
 0052AF76    mov         eax,dword ptr [ebp-4]
 0052AF79    add         eax,60;TAutoBuff.?f60:String
 0052AF7C    mov         edx,52B14C;'LoMana 30 sec. break pls wait - drinking in progress'
 0052AF81    call        @LStrAsg
 0052AF86    mov         eax,dword ptr [ebp-4]
 0052AF89    call        0052B190
 0052AF8E    mov         eax,dword ptr [ebp-4]
 0052AF91    call        0052B1FC
 0052AF96    push        7530
 0052AF9B    call        kernel32.Sleep
 0052AFA0    mov         eax,dword ptr [ebp-4]
 0052AFA3    call        0052B184
>0052AFA8    jmp         0052B092
 0052AFAD    push        12C
 0052AFB2    call        kernel32.Sleep
 0052AFB7    mov         eax,dword ptr [ebp-4]
 0052AFBA    mov         edx,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AFBD    mov         eax,dword ptr [ebp-4]
 0052AFC0    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AFC3    call        0053481C
 0052AFC8    test        al,al
>0052AFCA    je          0052B092
 0052AFD0    mov         eax,dword ptr [ebp-4]
 0052AFD3    mov         eax,dword ptr [eax+40];TAutoBuff.?f40:dword
 0052AFD6    mov         eax,dword ptr [eax+40]
 0052AFD9    lea         edx,[eax+0C]
 0052AFDC    mov         eax,dword ptr [ebp-4]
 0052AFDF    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052AFE2    add         eax,0C
 0052AFE5    call        0051F5FC
 0052AFEA    mov         eax,dword ptr [ebp-4]
 0052AFED    fcomp       qword ptr [eax+78];TAutoBuff.?f78:Double
 0052AFF0    fnstsw      al
 0052AFF2    sahf
>0052AFF3    ja          0052B092
 0052AFF9    xor         eax,eax
 0052AFFB    mov         al,[0054E738];0x35 gvar_0054E738
 0052B000    mov         edx,dword ptr [ebp-4]
 0052B003    mov         dword ptr [edx+88],eax;TAutoBuff.?f88:byte
 0052B009    mov         eax,dword ptr [ebp-4]
 0052B00C    call        0052B240
 0052B011    mov         eax,dword ptr [ebp-4]
 0052B014    mov         eax,dword ptr [eax+80];TAutoBuff.?f80:dword
 0052B01A    push        eax
 0052B01B    call        kernel32.Sleep
 0052B020    mov         eax,dword ptr [ebp-4]
 0052B023    call        0052B2B4
 0052B028    mov         eax,dword ptr [ebp-4]
 0052B02B    mov         eax,dword ptr [eax+84];TAutoBuff.?f84:dword
 0052B031    push        eax
 0052B032    call        kernel32.Sleep
 0052B037    call        004688F0
 0052B03C    mov         eax,dword ptr [ebp-4]
 0052B03F    fstp        qword ptr [eax+70];TAutoBuff.?f70:Double
 0052B042    wait
 0052B043    mov         eax,dword ptr [ebp-4]
 0052B046    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052B049    mov         edx,dword ptr [eax]
 0052B04B    mov         eax,dword ptr [ebp-4]
 0052B04E    call        0052A5B8
 0052B053    mov         eax,dword ptr [ebp-4]
 0052B056    mov         eax,dword ptr [eax+68];TAutoBuff.?f68:dword
 0052B059    mov         edx,dword ptr [eax]
 0052B05B    call        dword ptr [edx+14]
 0052B05E    dec         eax
 0052B05F    call        @RandInt
 0052B064    mov         edx,eax
 0052B066    lea         ecx,[ebp-10]
 0052B069    mov         eax,dword ptr [ebp-4]
 0052B06C    mov         eax,dword ptr [eax+68];TAutoBuff.?f68:dword
 0052B06F    mov         ebx,dword ptr [eax]
 0052B071    call        dword ptr [ebx+0C]
 0052B074    mov         edx,dword ptr [ebp-10]
 0052B077    mov         eax,dword ptr [ebp-4]
 0052B07A    add         eax,60;TAutoBuff.?f60:String
 0052B07D    call        @LStrAsg
 0052B082    mov         eax,dword ptr [ebp-4]
 0052B085    call        0052B190
 0052B08A    mov         eax,dword ptr [ebp-4]
 0052B08D    xor         edx,edx
 0052B08F    mov         dword ptr [eax+4C],edx;TAutoBuff.?f4C:dword
 0052B092    mov         eax,dword ptr [ebp-4]
 0052B095    cmp         byte ptr [eax+0D],0;TAutoBuff.FTerminated:Boolean
>0052B099    je          0052A865
 0052B09F    xor         eax,eax
 0052B0A1    pop         edx
 0052B0A2    pop         ecx
 0052B0A3    pop         ecx
 0052B0A4    mov         dword ptr fs:[eax],edx
 0052B0A7    push        52B0BC
 0052B0AC    lea         eax,[ebp-10]
 0052B0AF    call        @LStrClr
 0052B0B4    ret
>0052B0B5    jmp         @HandleFinally
>0052B0BA    jmp         0052B0AC
 0052B0BC    pop         ebx
 0052B0BD    mov         esp,ebp
 0052B0BF    pop         ebp
 0052B0C0    ret
*}
end;

//0052B184
procedure sub_0052B184(?:TAutoBuff);
begin
{*
 0052B184    push        ebp
 0052B185    mov         ebp,esp
 0052B187    push        ecx
 0052B188    mov         dword ptr [ebp-4],eax
 0052B18B    pop         ecx
 0052B18C    pop         ebp
 0052B18D    ret
*}
end;

//0052B190
procedure sub_0052B190(?:TAutoBuff);
begin
{*
 0052B190    push        ebp
 0052B191    mov         ebp,esp
 0052B193    add         esp,0FFFFFFF8
 0052B196    xor         edx,edx
 0052B198    mov         dword ptr [ebp-8],edx
 0052B19B    mov         dword ptr [ebp-4],eax
 0052B19E    xor         eax,eax
 0052B1A0    push        ebp
 0052B1A1    push        52B1EE
 0052B1A6    push        dword ptr fs:[eax]
 0052B1A9    mov         dword ptr fs:[eax],esp
 0052B1AC    lea         edx,[ebp-8]
 0052B1AF    mov         eax,dword ptr [ebp-4]
 0052B1B2    mov         eax,dword ptr [eax+60];TAutoBuff.?f60:String
 0052B1B5    call        00521120
 0052B1BA    mov         eax,dword ptr [ebp-8]
 0052B1BD    call        @LStrLen
 0052B1C2    mov         ecx,eax
 0052B1C4    mov         edx,dword ptr [ebp-8]
 0052B1C7    mov         eax,dword ptr [ebp-4]
 0052B1CA    mov         eax,dword ptr [eax+44];TAutoBuff.?f44:dword
 0052B1CD    call        0051FDFC
 0052B1D2    xor         eax,eax
 0052B1D4    pop         edx
 0052B1D5    pop         ecx
 0052B1D6    pop         ecx
 0052B1D7    mov         dword ptr fs:[eax],edx
 0052B1DA    push        52B1F5
 0052B1DF    lea         eax,[ebp-8]
 0052B1E2    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0052B1E8    call        @DynArrayClear
 0052B1ED    ret
>0052B1EE    jmp         @HandleFinally
>0052B1F3    jmp         0052B1DF
 0052B1F5    pop         ecx
 0052B1F6    pop         ecx
 0052B1F7    pop         ebp
 0052B1F8    ret
*}
end;

//0052B1FC
procedure sub_0052B1FC(?:TAutoBuff);
begin
{*
 0052B1FC    push        ebp
 0052B1FD    mov         ebp,esp
 0052B1FF    add         esp,0FFFFFFF8
 0052B202    xor         edx,edx
 0052B204    mov         dword ptr [ebp-8],edx
 0052B207    mov         dword ptr [ebp-4],eax
 0052B20A    xor         eax,eax
 0052B20C    push        ebp
 0052B20D    push        52B234
 0052B212    push        dword ptr fs:[eax]
 0052B215    mov         dword ptr fs:[eax],esp
 0052B218    xor         eax,eax
 0052B21A    pop         edx
 0052B21B    pop         ecx
 0052B21C    pop         ecx
 0052B21D    mov         dword ptr fs:[eax],edx
 0052B220    push        52B23B
 0052B225    lea         eax,[ebp-8]
 0052B228    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0052B22E    call        @DynArrayClear
 0052B233    ret
>0052B234    jmp         @HandleFinally
>0052B239    jmp         0052B225
 0052B23B    pop         ecx
 0052B23C    pop         ecx
 0052B23D    pop         ebp
 0052B23E    ret
*}
end;

//0052B240
procedure sub_0052B240(?:TAutoBuff);
begin
{*
 0052B240    push        ebp
 0052B241    mov         ebp,esp
 0052B243    add         esp,0FFFFFFF8
 0052B246    xor         edx,edx
 0052B248    mov         dword ptr [ebp-8],edx
 0052B24B    mov         dword ptr [ebp-4],eax
 0052B24E    xor         eax,eax
 0052B250    push        ebp
 0052B251    push        52B2A9
 0052B256    push        dword ptr fs:[eax]
 0052B259    mov         dword ptr fs:[eax],esp
 0052B25C    lea         ecx,[ebp-8]
 0052B25F    mov         eax,dword ptr [ebp-4]
 0052B262    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052B265    mov         edx,dword ptr [eax]
 0052B267    mov         eax,dword ptr [ebp-4]
 0052B26A    mov         al,byte ptr [eax+88];TAutoBuff.?f88:byte
 0052B270    call        00520D60
 0052B275    mov         eax,dword ptr [ebp-8]
 0052B278    call        @LStrLen
 0052B27D    mov         ecx,eax
 0052B27F    mov         edx,dword ptr [ebp-8]
 0052B282    mov         eax,dword ptr [ebp-4]
 0052B285    mov         eax,dword ptr [eax+44];TAutoBuff.?f44:dword
 0052B288    call        0051FDFC
 0052B28D    xor         eax,eax
 0052B28F    pop         edx
 0052B290    pop         ecx
 0052B291    pop         ecx
 0052B292    mov         dword ptr fs:[eax],edx
 0052B295    push        52B2B0
 0052B29A    lea         eax,[ebp-8]
 0052B29D    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0052B2A3    call        @DynArrayClear
 0052B2A8    ret
>0052B2A9    jmp         @HandleFinally
>0052B2AE    jmp         0052B29A
 0052B2B0    pop         ecx
 0052B2B1    pop         ecx
 0052B2B2    pop         ebp
 0052B2B3    ret
*}
end;

//0052B2B4
procedure sub_0052B2B4(?:TAutoBuff);
begin
{*
 0052B2B4    push        ebp
 0052B2B5    mov         ebp,esp
 0052B2B7    add         esp,0FFFFFFF8
 0052B2BA    xor         edx,edx
 0052B2BC    mov         dword ptr [ebp-8],edx
 0052B2BF    mov         dword ptr [ebp-4],eax
 0052B2C2    xor         eax,eax
 0052B2C4    push        ebp
 0052B2C5    push        52B320
 0052B2CA    push        dword ptr fs:[eax]
 0052B2CD    mov         dword ptr fs:[eax],esp
 0052B2D0    lea         eax,[ebp-8]
 0052B2D3    push        eax
 0052B2D4    mov         eax,dword ptr [ebp-4]
 0052B2D7    mov         eax,dword ptr [eax+4C];TAutoBuff.?f4C:dword
 0052B2DA    mov         edx,dword ptr [eax]
 0052B2DC    xor         ecx,ecx
 0052B2DE    mov         eax,dword ptr [ebp-4]
 0052B2E1    mov         al,byte ptr [eax+88];TAutoBuff.?f88:byte
 0052B2E7    call        00520E40
 0052B2EC    mov         eax,dword ptr [ebp-8]
 0052B2EF    call        @LStrLen
 0052B2F4    mov         ecx,eax
 0052B2F6    mov         edx,dword ptr [ebp-8]
 0052B2F9    mov         eax,dword ptr [ebp-4]
 0052B2FC    mov         eax,dword ptr [eax+44];TAutoBuff.?f44:dword
 0052B2FF    call        0051FDFC
 0052B304    xor         eax,eax
 0052B306    pop         edx
 0052B307    pop         ecx
 0052B308    pop         ecx
 0052B309    mov         dword ptr fs:[eax],edx
 0052B30C    push        52B327
 0052B311    lea         eax,[ebp-8]
 0052B314    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0052B31A    call        @DynArrayClear
 0052B31F    ret
>0052B320    jmp         @HandleFinally
>0052B325    jmp         0052B311
 0052B327    pop         ecx
 0052B328    pop         ecx
 0052B329    pop         ebp
 0052B32A    ret
*}
end;

//0052B32C
{*procedure sub_0052B32C(?:?; ?:?; ?:?; ?:?);
begin
 0052B32C    push        ebp
 0052B32D    mov         ebp,esp
 0052B32F    add         esp,0FFFFFFF4
 0052B332    mov         dword ptr [ebp-0C],ecx
 0052B335    mov         byte ptr [ebp-5],dl
 0052B338    mov         dword ptr [ebp-4],eax
 0052B33B    mov         al,byte ptr [ebp+0C]
 0052B33E    sub         al,1
>0052B340    jae         0052B373
 0052B342    xor         eax,eax
 0052B344    mov         al,byte ptr [ebp-5]
 0052B347    sub         ax,81
>0052B34B    je          0052B355
 0052B34D    sub         ax,3E
>0052B351    je          0052B365
>0052B353    jmp         0052B373
 0052B355    mov         eax,dword ptr [ebp-0C]
 0052B358    mov         edx,dword ptr [eax+4]
 0052B35B    mov         eax,dword ptr [ebp-4]
 0052B35E    call        0052B450
>0052B363    jmp         0052B373
 0052B365    mov         eax,dword ptr [ebp-0C]
 0052B368    mov         edx,dword ptr [eax+4]
 0052B36B    mov         eax,dword ptr [ebp-4]
 0052B36E    call        0052B5B0
 0052B373    mov         esp,ebp
 0052B375    pop         ebp
 0052B376    ret         8
end;*}

//0052B37C
{*function sub_0052B37C:?;
begin
 0052B37C    push        ebp
 0052B37D    mov         ebp,esp
 0052B37F    push        ecx
 0052B380    mov         eax,dword ptr [ebp-4]
 0052B383    pop         ecx
 0052B384    pop         ebp
 0052B385    ret         0C
end;*}

//0052B388
{*function sub_0052B388(?:TAutoBuff; ?:dword):?;
begin
 0052B388    push        ebp
 0052B389    mov         ebp,esp
 0052B38B    add         esp,0FFFFFFEC
 0052B38E    mov         dword ptr [ebp-8],edx
 0052B391    mov         dword ptr [ebp-4],eax
 0052B394    xor         eax,eax
 0052B396    mov         dword ptr [ebp-0C],eax
 0052B399    mov         eax,dword ptr [ebp-4]
 0052B39C    mov         eax,dword ptr [eax+50];TAutoBuff.?f50:dword
 0052B39F    mov         eax,dword ptr [eax+8]
 0052B3A2    dec         eax
 0052B3A3    test        eax,eax
>0052B3A5    jl          0052B3E2
 0052B3A7    inc         eax
 0052B3A8    mov         dword ptr [ebp-14],eax
 0052B3AB    mov         dword ptr [ebp-10],0
 0052B3B2    mov         eax,dword ptr [ebp-4]
 0052B3B5    mov         eax,dword ptr [eax+50];TAutoBuff.?f50:dword
 0052B3B8    mov         edx,dword ptr [ebp-10]
 0052B3BB    call        TList.Get
 0052B3C0    mov         eax,dword ptr [eax]
 0052B3C2    cmp         eax,dword ptr [ebp-8]
>0052B3C5    jne         0052B3DA
 0052B3C7    mov         eax,dword ptr [ebp-4]
 0052B3CA    mov         eax,dword ptr [eax+50];TAutoBuff.?f50:dword
 0052B3CD    mov         edx,dword ptr [ebp-10]
 0052B3D0    call        TList.Get
 0052B3D5    mov         dword ptr [ebp-0C],eax
>0052B3D8    jmp         0052B3E2
 0052B3DA    inc         dword ptr [ebp-10]
 0052B3DD    dec         dword ptr [ebp-14]
>0052B3E0    jne         0052B3B2
 0052B3E2    mov         eax,dword ptr [ebp-0C]
 0052B3E5    mov         esp,ebp
 0052B3E7    pop         ebp
 0052B3E8    ret
end;*}

//0052B3EC
{*function sub_0052B3EC:?;
begin
 0052B3EC    push        ebp
 0052B3ED    mov         ebp,esp
 0052B3EF    push        ecx
 0052B3F0    xor         eax,eax
 0052B3F2    mov         dword ptr [ebp-4],eax
 0052B3F5    mov         eax,dword ptr [ebp-4]
 0052B3F8    pop         ecx
 0052B3F9    pop         ebp
 0052B3FA    ret         4
end;*}

//0052B400
{*function sub_0052B400:?;
begin
 0052B400    push        ebp
 0052B401    mov         ebp,esp
 0052B403    push        ecx
 0052B404    xor         eax,eax
 0052B406    mov         dword ptr [ebp-4],eax
 0052B409    mov         eax,dword ptr [ebp-4]
 0052B40C    pop         ecx
 0052B40D    pop         ebp
 0052B40E    ret         4
end;*}

//0052B414
{*procedure sub_0052B414(?:?);
begin
 0052B414    push        ebp
 0052B415    mov         ebp,esp
 0052B417    push        ecx
 0052B418    mov         dword ptr [ebp-4],eax
 0052B41B    pop         ecx
 0052B41C    pop         ebp
 0052B41D    ret
end;*}

//0052B450
{*procedure sub_0052B450(?:?; ?:?);
begin
 0052B450    push        ebp
 0052B451    mov         ebp,esp
 0052B453    add         esp,0FFFFFFD8
 0052B456    xor         ecx,ecx
 0052B458    mov         dword ptr [ebp-28],ecx
 0052B45B    mov         dword ptr [ebp-24],ecx
 0052B45E    mov         dword ptr [ebp-20],ecx
 0052B461    mov         dword ptr [ebp-1C],ecx
 0052B464    mov         dword ptr [ebp-18],ecx
 0052B467    mov         dword ptr [ebp-8],edx
 0052B46A    mov         dword ptr [ebp-4],eax
 0052B46D    xor         eax,eax
 0052B46F    push        ebp
 0052B470    push        52B57B
 0052B475    push        dword ptr fs:[eax]
 0052B478    mov         dword ptr fs:[eax],esp
 0052B47B    lea         eax,[ebp-8]
 0052B47E    mov         edx,3
 0052B483    call        0051F5E4
 0052B488    mov         edx,dword ptr ds:[52B420];TIncomingMessage
 0052B48E    mov         eax,10
 0052B493    call        00405948
 0052B498    mov         dword ptr [ebp-0C],eax
 0052B49B    mov         eax,dword ptr [ebp-0C]
 0052B49E    mov         dword ptr [ebp-14],eax
 0052B4A1    call        004688F0
 0052B4A6    mov         eax,dword ptr [ebp-14]
 0052B4A9    fstp        qword ptr [eax]
 0052B4AB    wait
 0052B4AC    lea         edx,[ebp-18]
 0052B4AF    lea         eax,[ebp-8]
 0052B4B2    call        0051F434
 0052B4B7    mov         edx,dword ptr [ebp-18]
 0052B4BA    mov         eax,dword ptr [ebp-14]
 0052B4BD    add         eax,8
 0052B4C0    call        @LStrAsg
 0052B4C5    lea         edx,[ebp-1C]
 0052B4C8    lea         eax,[ebp-8]
 0052B4CB    call        0051F434
 0052B4D0    mov         edx,dword ptr [ebp-1C]
 0052B4D3    mov         eax,dword ptr [ebp-14]
 0052B4D6    add         eax,0C
 0052B4D9    call        @LStrAsg
 0052B4DE    lea         edx,[ebp-20]
 0052B4E1    mov         eax,dword ptr [ebp-0C]
 0052B4E4    mov         eax,dword ptr [eax+0C]
 0052B4E7    call        00466210
 0052B4EC    mov         edx,dword ptr [ebp-20]
 0052B4EF    mov         eax,52B590;'buf'
 0052B4F4    call        @LStrPos
 0052B4F9    test        eax,eax
>0052B4FB    jg          0052B53B
 0052B4FD    lea         edx,[ebp-24]
 0052B500    mov         eax,dword ptr [ebp-0C]
 0052B503    mov         eax,dword ptr [eax+0C]
 0052B506    call        00466210
 0052B50B    mov         edx,dword ptr [ebp-24]
 0052B50E    mov         eax,52B59C;'puf'
 0052B513    call        @LStrPos
 0052B518    test        eax,eax
>0052B51A    jg          0052B53B
 0052B51C    lea         edx,[ebp-28]
 0052B51F    mov         eax,dword ptr [ebp-0C]
 0052B522    mov         eax,dword ptr [eax+0C]
 0052B525    call        00466210
 0052B52A    mov         edx,dword ptr [ebp-28]
 0052B52D    mov         eax,52B5A8;'speed'
 0052B532    call        @LStrPos
 0052B537    test        eax,eax
>0052B539    jle         0052B560
 0052B53B    mov         eax,dword ptr [ebp-4]
 0052B53E    mov         eax,dword ptr [eax+40]
 0052B541    mov         edx,dword ptr [ebp-0C]
 0052B544    mov         edx,dword ptr [edx+8]
 0052B547    call        00534730
 0052B54C    mov         dword ptr [ebp-10],eax
 0052B54F    cmp         dword ptr [ebp-10],0
>0052B553    je          0052B560
 0052B555    mov         edx,dword ptr [ebp-10]
 0052B558    mov         eax,dword ptr [ebp-4]
 0052B55B    call        0052A630
 0052B560    xor         eax,eax
 0052B562    pop         edx
 0052B563    pop         ecx
 0052B564    pop         ecx
 0052B565    mov         dword ptr fs:[eax],edx
 0052B568    push        52B582
 0052B56D    lea         eax,[ebp-28]
 0052B570    mov         edx,5
 0052B575    call        @LStrArrayClr
 0052B57A    ret
>0052B57B    jmp         @HandleFinally
>0052B580    jmp         0052B56D
 0052B582    mov         esp,ebp
 0052B584    pop         ebp
 0052B585    ret
end;*}

//0052B5B0
{*procedure sub_0052B5B0(?:?; ?:?);
begin
 0052B5B0    push        ebp
 0052B5B1    mov         ebp,esp
 0052B5B3    add         esp,0FFFFFFEC
 0052B5B6    mov         dword ptr [ebp-8],edx
 0052B5B9    mov         dword ptr [ebp-4],eax
 0052B5BC    add         dword ptr [ebp-8],3
 0052B5C0    lea         eax,[ebp-8]
 0052B5C3    call        0051F3CC
 0052B5C8    mov         dword ptr [ebp-0C],eax
 0052B5CB    lea         eax,[ebp-8]
 0052B5CE    call        0051F338
 0052B5D3    mov         byte ptr [ebp-0D],al
 0052B5D6    cmp         byte ptr [ebp-0D],0E
>0052B5DA    jne         0052B5FE
 0052B5DC    mov         edx,dword ptr [ebp-0C]
 0052B5DF    mov         eax,dword ptr [ebp-4]
 0052B5E2    mov         eax,dword ptr [eax+40]
 0052B5E5    call        005346D4
 0052B5EA    mov         dword ptr [ebp-14],eax
 0052B5ED    cmp         dword ptr [ebp-14],0
>0052B5F1    je          0052B5FE
 0052B5F3    mov         edx,dword ptr [ebp-14]
 0052B5F6    mov         eax,dword ptr [ebp-4]
 0052B5F9    call        0052A630
 0052B5FE    mov         esp,ebp
 0052B600    pop         ebp
 0052B601    ret
end;*}

end.