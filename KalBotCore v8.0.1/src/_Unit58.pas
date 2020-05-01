//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit58;

interface

uses
  SysUtils, Classes;

type
  EIniFileException = class(Exception)
  end;
  TCustomIniFile = class(TObject)
  public
    .........:String;//f4
    procedure v0; virtual; abstract;//v0//00402C24
    procedure v4; virtual; abstract;//v4//00402C24
    //function v8(?:?; ?:?; ?:?):?; virtual;//v8//0049F624
    //procedure vC(?:?; ?:?; ?:?); virtual;//vC//0049F6F0
    //function v10(?:?; ?:?; ?:?):?; virtual;//v10//0049F754
    //procedure v14(?:?; ?:?; ?:?); virtual;//v14//0049FC34
    //function v18(?:?; ?:?; ?:?):?; virtual;//v18//0049FC68
    //procedure v1C(?:?; ?:?; ?:?; ?:?); virtual;//v1C//0049F788
    //procedure v20(?:?; ?:?; ?:?; ?:?); virtual;//v20//0049F844
    //procedure v24(?:?; ?:?; ?:?; ?:?); virtual;//v24//0049F900
    //procedure v28(?:?; ?:?; ?:?; ?:?); virtual;//v28//0049F9BC
    //procedure v2C(?:?; ?:?; ?:?); virtual;//v2C//0049FDDC
    //procedure v30(?:?; ?:?; ?:?; ?:?); virtual;//v30//0049FA78
    //procedure v34(?:?; ?:?; ?:?; ?:?); virtual;//v34//0049FAE0
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//0049FB48
    //procedure v3C(?:?; ?:?; ?:?; ?:?); virtual;//v3C//0049FBB4
    procedure v40; virtual; abstract;//v40//00402C24
    procedure v44; virtual; abstract;//v44//00402C24
    procedure v48; virtual; abstract;//v48//00402C24
    procedure v4C; virtual; abstract;//v4C//00402C24
    procedure v50; virtual; abstract;//v50//00402C24
    procedure v54; virtual; abstract;//v54//00402C24
  end;
  TIniFile = class(TCustomIniFile)
  public
    destructor Destroy; virtual;//0049FF4C
    //procedure v0(?:?; ?:?; ?:?; ?:?); virtual;//v0//0049FF88
    //procedure v4(?:?; ?:?; ?:?); virtual;//v4//0049FFE8
    //procedure v40(?:?; ?:?); virtual;//v40//004A0164
    //procedure v44(?:?); virtual;//v44//004A0058
    //procedure v48(?:?; ?:?); virtual;//v48//004A027C
    //procedure v4C(?:?); virtual;//v4C//004A03D0
    //procedure v50(?:?; ?:?); virtual;//v50//004A042C
    procedure v54; virtual;//v54//004A0464
    constructor Create;//0049F5DC
  end;
    //function sub_0049F624(?:?; ?:?; ?:?):?;//0049F624
    //procedure sub_0049F6F0(?:?; ?:?; ?:?);//0049F6F0
    //function sub_0049F754(?:?; ?:?; ?:?):?;//0049F754
    //procedure sub_0049F788(?:?; ?:?; ?:?; ?:?);//0049F788
    //procedure sub_0049F844(?:?; ?:?; ?:?; ?:?);//0049F844
    //procedure sub_0049F900(?:?; ?:?; ?:?; ?:?);//0049F900
    //procedure sub_0049F9BC(?:?; ?:?; ?:?; ?:?);//0049F9BC
    //procedure sub_0049FA78(?:?; ?:?; ?:?; ?:?);//0049FA78
    //procedure sub_0049FAE0(?:?; ?:?; ?:?; ?:?);//0049FAE0
    //procedure sub_0049FB48(?:?; ?:?; ?:?);//0049FB48
    //procedure sub_0049FBB4(?:?; ?:?; ?:?; ?:?);//0049FBB4
    //procedure sub_0049FC34(?:?; ?:?; ?:?);//0049FC34
    //function sub_0049FC68(?:?; ?:?; ?:?):?;//0049FC68
    //procedure sub_0049FDDC(?:?; ?:?; ?:?);//0049FDDC
    destructor Destroy;//0049FF4C
    //procedure sub_0049FF88(?:?; ?:?; ?:?; ?:?);//0049FF88
    //procedure sub_0049FFE8(?:?; ?:?; ?:?);//0049FFE8
    //procedure sub_004A0058(?:?);//004A0058
    //procedure sub_004A0164(?:?; ?:?);//004A0164
    //procedure sub_004A027C(?:?; ?:?);//004A027C
    //procedure sub_004A03D0(?:?);//004A03D0
    //procedure sub_004A042C(?:?; ?:?);//004A042C
    procedure sub_004A0464;//004A0464

implementation

//0049F5DC
constructor TIniFile.Create;
begin
{*
 0049F5DC    push        ebp
 0049F5DD    mov         ebp,esp
 0049F5DF    add         esp,0FFFFFFF4
 0049F5E2    test        dl,dl
>0049F5E4    je          0049F5EE
 0049F5E6    add         esp,0FFFFFFF0
 0049F5E9    call        @ClassCreate
 0049F5EE    mov         dword ptr [ebp-0C],ecx
 0049F5F1    mov         byte ptr [ebp-5],dl
 0049F5F4    mov         dword ptr [ebp-4],eax
 0049F5F7    mov         eax,dword ptr [ebp-4]
 0049F5FA    add         eax,4
 0049F5FD    mov         edx,dword ptr [ebp-0C]
 0049F600    call        @LStrAsg
 0049F605    mov         eax,dword ptr [ebp-4]
 0049F608    cmp         byte ptr [ebp-5],0
>0049F60C    je          0049F61D
 0049F60E    call        @AfterConstruction
 0049F613    pop         dword ptr fs:[0]
 0049F61A    add         esp,0C
 0049F61D    mov         eax,dword ptr [ebp-4]
 0049F620    mov         esp,ebp
 0049F622    pop         ebp
 0049F623    ret
*}
end;

//0049F624
{*function sub_0049F624(?:?; ?:?; ?:?):?;
begin
 0049F624    push        ebp
 0049F625    mov         ebp,esp
 0049F627    add         esp,0FFFFFFE8
 0049F62A    push        ebx
 0049F62B    xor         ebx,ebx
 0049F62D    mov         dword ptr [ebp-18],ebx
 0049F630    mov         dword ptr [ebp-14],ebx
 0049F633    mov         dword ptr [ebp-0C],ecx
 0049F636    mov         dword ptr [ebp-8],edx
 0049F639    mov         dword ptr [ebp-4],eax
 0049F63C    xor         eax,eax
 0049F63E    push        ebp
 0049F63F    push        49F6D3
 0049F644    push        dword ptr fs:[eax]
 0049F647    mov         dword ptr fs:[eax],esp
 0049F64A    push        0
 0049F64C    lea         eax,[ebp-14]
 0049F64F    push        eax
 0049F650    mov         ecx,dword ptr [ebp-0C]
 0049F653    mov         edx,dword ptr [ebp-8]
 0049F656    mov         eax,dword ptr [ebp-4]
 0049F659    mov         ebx,dword ptr [eax]
 0049F65B    call        dword ptr [ebx];@AbstractError
 0049F65D    mov         eax,dword ptr [ebp-14]
 0049F660    call        @DynArrayLength
 0049F665    cmp         eax,2
>0049F668    jle         0049F6AA
 0049F66A    mov         eax,dword ptr [ebp-14]
 0049F66D    cmp         byte ptr [eax],30
>0049F670    jne         0049F6AA
 0049F672    mov         eax,dword ptr [ebp-14]
 0049F675    cmp         byte ptr [eax+1],58
>0049F679    je          0049F684
 0049F67B    mov         eax,dword ptr [ebp-14]
 0049F67E    cmp         byte ptr [eax+1],78
>0049F682    jne         0049F6AA
 0049F684    lea         eax,[ebp-18]
 0049F687    push        eax
 0049F688    mov         ecx,7FFFFFFF
 0049F68D    mov         edx,3
 0049F692    mov         eax,dword ptr [ebp-14]
 0049F695    call        @LStrCopy
 0049F69A    mov         ecx,dword ptr [ebp-18]
 0049F69D    lea         eax,[ebp-14]
 0049F6A0    mov         edx,49F6EC;'$'
 0049F6A5    call        @LStrCat3
 0049F6AA    mov         edx,dword ptr [ebp+8]
 0049F6AD    mov         eax,dword ptr [ebp-14]
 0049F6B0    call        00466B0C
 0049F6B5    mov         dword ptr [ebp-10],eax
 0049F6B8    xor         eax,eax
 0049F6BA    pop         edx
 0049F6BB    pop         ecx
 0049F6BC    pop         ecx
 0049F6BD    mov         dword ptr fs:[eax],edx
 0049F6C0    push        49F6DA
 0049F6C5    lea         eax,[ebp-18]
 0049F6C8    mov         edx,2
 0049F6CD    call        @LStrArrayClr
 0049F6D2    ret
>0049F6D3    jmp         @HandleFinally
>0049F6D8    jmp         0049F6C5
 0049F6DA    mov         eax,dword ptr [ebp-10]
 0049F6DD    pop         ebx
 0049F6DE    mov         esp,ebp
 0049F6E0    pop         ebp
 0049F6E1    ret         4
end;*}

//0049F6F0
{*procedure sub_0049F6F0(?:?; ?:?; ?:?);
begin
 0049F6F0    push        ebp
 0049F6F1    mov         ebp,esp
 0049F6F3    add         esp,0FFFFFFF0
 0049F6F6    push        ebx
 0049F6F7    xor         ebx,ebx
 0049F6F9    mov         dword ptr [ebp-10],ebx
 0049F6FC    mov         dword ptr [ebp-0C],ecx
 0049F6FF    mov         dword ptr [ebp-8],edx
 0049F702    mov         dword ptr [ebp-4],eax
 0049F705    xor         eax,eax
 0049F707    push        ebp
 0049F708    push        49F746
 0049F70D    push        dword ptr fs:[eax]
 0049F710    mov         dword ptr fs:[eax],esp
 0049F713    lea         edx,[ebp-10]
 0049F716    mov         eax,dword ptr [ebp+8]
 0049F719    call        IntToStr
 0049F71E    mov         eax,dword ptr [ebp-10]
 0049F721    push        eax
 0049F722    mov         ecx,dword ptr [ebp-0C]
 0049F725    mov         edx,dword ptr [ebp-8]
 0049F728    mov         eax,dword ptr [ebp-4]
 0049F72B    mov         ebx,dword ptr [eax]
 0049F72D    call        dword ptr [ebx+4];@AbstractError
 0049F730    xor         eax,eax
 0049F732    pop         edx
 0049F733    pop         ecx
 0049F734    pop         ecx
 0049F735    mov         dword ptr fs:[eax],edx
 0049F738    push        49F74D
 0049F73D    lea         eax,[ebp-10]
 0049F740    call        @LStrClr
 0049F745    ret
>0049F746    jmp         @HandleFinally
>0049F74B    jmp         0049F73D
 0049F74D    pop         ebx
 0049F74E    mov         esp,ebp
 0049F750    pop         ebp
 0049F751    ret         4
end;*}

//0049F754
{*function sub_0049F754(?:?; ?:?; ?:?):?;
begin
 0049F754    push        ebp
 0049F755    mov         ebp,esp
 0049F757    add         esp,0FFFFFFF0
 0049F75A    push        ebx
 0049F75B    mov         dword ptr [ebp-0C],ecx
 0049F75E    mov         dword ptr [ebp-8],edx
 0049F761    mov         dword ptr [ebp-4],eax
 0049F764    xor         eax,eax
 0049F766    mov         al,byte ptr [ebp+8]
 0049F769    push        eax
 0049F76A    mov         ecx,dword ptr [ebp-0C]
 0049F76D    mov         edx,dword ptr [ebp-8]
 0049F770    mov         eax,dword ptr [ebp-4]
 0049F773    mov         ebx,dword ptr [eax]
 0049F775    call        dword ptr [ebx+8];TCustomIniFile.sub_0049F624
 0049F778    test        eax,eax
 0049F77A    setne       byte ptr [ebp-0D]
 0049F77E    mov         al,byte ptr [ebp-0D]
 0049F781    pop         ebx
 0049F782    mov         esp,ebp
 0049F784    pop         ebp
 0049F785    ret         4
end;*}

//0049F788
{*procedure sub_0049F788(?:?; ?:?; ?:?; ?:?);
begin
 0049F788    push        ebp
 0049F789    mov         ebp,esp
 0049F78B    add         esp,0FFFFFFE4
 0049F78E    push        ebx
 0049F78F    push        esi
 0049F790    push        edi
 0049F791    xor         ebx,ebx
 0049F793    mov         dword ptr [ebp-1C],ebx
 0049F796    mov         dword ptr [ebp-0C],ecx
 0049F799    mov         dword ptr [ebp-8],edx
 0049F79C    mov         dword ptr [ebp-4],eax
 0049F79F    xor         eax,eax
 0049F7A1    push        ebp
 0049F7A2    push        49F831
 0049F7A7    push        dword ptr fs:[eax]
 0049F7AA    mov         dword ptr fs:[eax],esp
 0049F7AD    push        0
 0049F7AF    lea         eax,[ebp-1C]
 0049F7B2    push        eax
 0049F7B3    mov         ecx,dword ptr [ebp-0C]
 0049F7B6    mov         edx,dword ptr [ebp-8]
 0049F7B9    mov         eax,dword ptr [ebp-4]
 0049F7BC    mov         ebx,dword ptr [eax]
 0049F7BE    call        dword ptr [ebx];@AbstractError
 0049F7C0    mov         eax,dword ptr [ebp+8]
 0049F7C3    mov         dword ptr [ebp-18],eax
 0049F7C6    mov         eax,dword ptr [ebp+0C]
 0049F7C9    mov         dword ptr [ebp-14],eax
 0049F7CC    cmp         dword ptr [ebp-1C],0
>0049F7D0    je          0049F81B
 0049F7D2    xor         eax,eax
 0049F7D4    push        ebp
 0049F7D5    push        49F7F6
 0049F7DA    push        dword ptr fs:[eax]
 0049F7DD    mov         dword ptr fs:[eax],esp
 0049F7E0    mov         eax,dword ptr [ebp-1C]
 0049F7E3    call        00469F70
 0049F7E8    fstp        qword ptr [ebp-18]
 0049F7EB    wait
 0049F7EC    xor         eax,eax
 0049F7EE    pop         edx
 0049F7EF    pop         ecx
 0049F7F0    pop         ecx
 0049F7F1    mov         dword ptr fs:[eax],edx
>0049F7F4    jmp         0049F81B
>0049F7F6    jmp         @HandleOnException
 0049F7FB    dd          2
 0049F7FF    dd          00465A0C;EConvertError
 0049F803    dd          0049F816
 0049F807    dd          00000000
 0049F80B    dd          0049F811
>0049F80F    jmp         0049F816
 0049F811    call        @RaiseAgain
 0049F816    call        @DoneExcept
 0049F81B    xor         eax,eax
 0049F81D    pop         edx
 0049F81E    pop         ecx
 0049F81F    pop         ecx
 0049F820    mov         dword ptr fs:[eax],edx
 0049F823    push        49F838
 0049F828    lea         eax,[ebp-1C]
 0049F82B    call        @LStrClr
 0049F830    ret
>0049F831    jmp         @HandleFinally
>0049F836    jmp         0049F828
 0049F838    fld         qword ptr [ebp-18]
 0049F83B    pop         edi
 0049F83C    pop         esi
 0049F83D    pop         ebx
 0049F83E    mov         esp,ebp
 0049F840    pop         ebp
 0049F841    ret         8
end;*}

//0049F844
{*procedure sub_0049F844(?:?; ?:?; ?:?; ?:?);
begin
 0049F844    push        ebp
 0049F845    mov         ebp,esp
 0049F847    add         esp,0FFFFFFE4
 0049F84A    push        ebx
 0049F84B    push        esi
 0049F84C    push        edi
 0049F84D    xor         ebx,ebx
 0049F84F    mov         dword ptr [ebp-1C],ebx
 0049F852    mov         dword ptr [ebp-0C],ecx
 0049F855    mov         dword ptr [ebp-8],edx
 0049F858    mov         dword ptr [ebp-4],eax
 0049F85B    xor         eax,eax
 0049F85D    push        ebp
 0049F85E    push        49F8ED
 0049F863    push        dword ptr fs:[eax]
 0049F866    mov         dword ptr fs:[eax],esp
 0049F869    push        0
 0049F86B    lea         eax,[ebp-1C]
 0049F86E    push        eax
 0049F86F    mov         ecx,dword ptr [ebp-0C]
 0049F872    mov         edx,dword ptr [ebp-8]
 0049F875    mov         eax,dword ptr [ebp-4]
 0049F878    mov         ebx,dword ptr [eax]
 0049F87A    call        dword ptr [ebx];@AbstractError
 0049F87C    mov         eax,dword ptr [ebp+8]
 0049F87F    mov         dword ptr [ebp-18],eax
 0049F882    mov         eax,dword ptr [ebp+0C]
 0049F885    mov         dword ptr [ebp-14],eax
 0049F888    cmp         dword ptr [ebp-1C],0
>0049F88C    je          0049F8D7
 0049F88E    xor         eax,eax
 0049F890    push        ebp
 0049F891    push        49F8B2
 0049F896    push        dword ptr fs:[eax]
 0049F899    mov         dword ptr fs:[eax],esp
 0049F89C    mov         eax,dword ptr [ebp-1C]
 0049F89F    call        0046A068
 0049F8A4    fstp        qword ptr [ebp-18]
 0049F8A7    wait
 0049F8A8    xor         eax,eax
 0049F8AA    pop         edx
 0049F8AB    pop         ecx
 0049F8AC    pop         ecx
 0049F8AD    mov         dword ptr fs:[eax],edx
>0049F8B0    jmp         0049F8D7
>0049F8B2    jmp         @HandleOnException
 0049F8B7    dd          2
 0049F8BB    dd          00465A0C;EConvertError
 0049F8BF    dd          0049F8D2
 0049F8C3    dd          00000000
 0049F8C7    dd          0049F8CD
>0049F8CB    jmp         0049F8D2
 0049F8CD    call        @RaiseAgain
 0049F8D2    call        @DoneExcept
 0049F8D7    xor         eax,eax
 0049F8D9    pop         edx
 0049F8DA    pop         ecx
 0049F8DB    pop         ecx
 0049F8DC    mov         dword ptr fs:[eax],edx
 0049F8DF    push        49F8F4
 0049F8E4    lea         eax,[ebp-1C]
 0049F8E7    call        @LStrClr
 0049F8EC    ret
>0049F8ED    jmp         @HandleFinally
>0049F8F2    jmp         0049F8E4
 0049F8F4    fld         qword ptr [ebp-18]
 0049F8F7    pop         edi
 0049F8F8    pop         esi
 0049F8F9    pop         ebx
 0049F8FA    mov         esp,ebp
 0049F8FC    pop         ebp
 0049F8FD    ret         8
end;*}

//0049F900
{*procedure sub_0049F900(?:?; ?:?; ?:?; ?:?);
begin
 0049F900    push        ebp
 0049F901    mov         ebp,esp
 0049F903    add         esp,0FFFFFFE4
 0049F906    push        ebx
 0049F907    push        esi
 0049F908    push        edi
 0049F909    xor         ebx,ebx
 0049F90B    mov         dword ptr [ebp-1C],ebx
 0049F90E    mov         dword ptr [ebp-0C],ecx
 0049F911    mov         dword ptr [ebp-8],edx
 0049F914    mov         dword ptr [ebp-4],eax
 0049F917    xor         eax,eax
 0049F919    push        ebp
 0049F91A    push        49F9A9
 0049F91F    push        dword ptr fs:[eax]
 0049F922    mov         dword ptr fs:[eax],esp
 0049F925    push        0
 0049F927    lea         eax,[ebp-1C]
 0049F92A    push        eax
 0049F92B    mov         ecx,dword ptr [ebp-0C]
 0049F92E    mov         edx,dword ptr [ebp-8]
 0049F931    mov         eax,dword ptr [ebp-4]
 0049F934    mov         ebx,dword ptr [eax]
 0049F936    call        dword ptr [ebx];@AbstractError
 0049F938    mov         eax,dword ptr [ebp+8]
 0049F93B    mov         dword ptr [ebp-18],eax
 0049F93E    mov         eax,dword ptr [ebp+0C]
 0049F941    mov         dword ptr [ebp-14],eax
 0049F944    cmp         dword ptr [ebp-1C],0
>0049F948    je          0049F993
 0049F94A    xor         eax,eax
 0049F94C    push        ebp
 0049F94D    push        49F96E
 0049F952    push        dword ptr fs:[eax]
 0049F955    mov         dword ptr fs:[eax],esp
 0049F958    mov         eax,dword ptr [ebp-1C]
 0049F95B    call        004682F8
 0049F960    fstp        qword ptr [ebp-18]
 0049F963    wait
 0049F964    xor         eax,eax
 0049F966    pop         edx
 0049F967    pop         ecx
 0049F968    pop         ecx
 0049F969    mov         dword ptr fs:[eax],edx
>0049F96C    jmp         0049F993
>0049F96E    jmp         @HandleOnException
 0049F973    dd          2
 0049F977    dd          00465A0C;EConvertError
 0049F97B    dd          0049F98E
 0049F97F    dd          00000000
 0049F983    dd          0049F989
>0049F987    jmp         0049F98E
 0049F989    call        @RaiseAgain
 0049F98E    call        @DoneExcept
 0049F993    xor         eax,eax
 0049F995    pop         edx
 0049F996    pop         ecx
 0049F997    pop         ecx
 0049F998    mov         dword ptr fs:[eax],edx
 0049F99B    push        49F9B0
 0049F9A0    lea         eax,[ebp-1C]
 0049F9A3    call        @LStrClr
 0049F9A8    ret
>0049F9A9    jmp         @HandleFinally
>0049F9AE    jmp         0049F9A0
 0049F9B0    fld         qword ptr [ebp-18]
 0049F9B3    pop         edi
 0049F9B4    pop         esi
 0049F9B5    pop         ebx
 0049F9B6    mov         esp,ebp
 0049F9B8    pop         ebp
 0049F9B9    ret         8
end;*}

//0049F9BC
{*procedure sub_0049F9BC(?:?; ?:?; ?:?; ?:?);
begin
 0049F9BC    push        ebp
 0049F9BD    mov         ebp,esp
 0049F9BF    add         esp,0FFFFFFE4
 0049F9C2    push        ebx
 0049F9C3    push        esi
 0049F9C4    push        edi
 0049F9C5    xor         ebx,ebx
 0049F9C7    mov         dword ptr [ebp-1C],ebx
 0049F9CA    mov         dword ptr [ebp-0C],ecx
 0049F9CD    mov         dword ptr [ebp-8],edx
 0049F9D0    mov         dword ptr [ebp-4],eax
 0049F9D3    xor         eax,eax
 0049F9D5    push        ebp
 0049F9D6    push        49FA65
 0049F9DB    push        dword ptr fs:[eax]
 0049F9DE    mov         dword ptr fs:[eax],esp
 0049F9E1    push        0
 0049F9E3    lea         eax,[ebp-1C]
 0049F9E6    push        eax
 0049F9E7    mov         ecx,dword ptr [ebp-0C]
 0049F9EA    mov         edx,dword ptr [ebp-8]
 0049F9ED    mov         eax,dword ptr [ebp-4]
 0049F9F0    mov         ebx,dword ptr [eax]
 0049F9F2    call        dword ptr [ebx];@AbstractError
 0049F9F4    mov         eax,dword ptr [ebp+8]
 0049F9F7    mov         dword ptr [ebp-18],eax
 0049F9FA    mov         eax,dword ptr [ebp+0C]
 0049F9FD    mov         dword ptr [ebp-14],eax
 0049FA00    cmp         dword ptr [ebp-1C],0
>0049FA04    je          0049FA4F
 0049FA06    xor         eax,eax
 0049FA08    push        ebp
 0049FA09    push        49FA2A
 0049FA0E    push        dword ptr fs:[eax]
 0049FA11    mov         dword ptr fs:[eax],esp
 0049FA14    mov         eax,dword ptr [ebp-1C]
 0049FA17    call        00469FEC
 0049FA1C    fstp        qword ptr [ebp-18]
 0049FA1F    wait
 0049FA20    xor         eax,eax
 0049FA22    pop         edx
 0049FA23    pop         ecx
 0049FA24    pop         ecx
 0049FA25    mov         dword ptr fs:[eax],edx
>0049FA28    jmp         0049FA4F
>0049FA2A    jmp         @HandleOnException
 0049FA2F    dd          2
 0049FA33    dd          00465A0C;EConvertError
 0049FA37    dd          0049FA4A
 0049FA3B    dd          00000000
 0049FA3F    dd          0049FA45
>0049FA43    jmp         0049FA4A
 0049FA45    call        @RaiseAgain
 0049FA4A    call        @DoneExcept
 0049FA4F    xor         eax,eax
 0049FA51    pop         edx
 0049FA52    pop         ecx
 0049FA53    pop         ecx
 0049FA54    mov         dword ptr fs:[eax],edx
 0049FA57    push        49FA6C
 0049FA5C    lea         eax,[ebp-1C]
 0049FA5F    call        @LStrClr
 0049FA64    ret
>0049FA65    jmp         @HandleFinally
>0049FA6A    jmp         0049FA5C
 0049FA6C    fld         qword ptr [ebp-18]
 0049FA6F    pop         edi
 0049FA70    pop         esi
 0049FA71    pop         ebx
 0049FA72    mov         esp,ebp
 0049FA74    pop         ebp
 0049FA75    ret         8
end;*}

//0049FA78
{*procedure sub_0049FA78(?:?; ?:?; ?:?; ?:?);
begin
 0049FA78    push        ebp
 0049FA79    mov         ebp,esp
 0049FA7B    add         esp,0FFFFFFF0
 0049FA7E    push        ebx
 0049FA7F    xor         ebx,ebx
 0049FA81    mov         dword ptr [ebp-10],ebx
 0049FA84    mov         dword ptr [ebp-0C],ecx
 0049FA87    mov         dword ptr [ebp-8],edx
 0049FA8A    mov         dword ptr [ebp-4],eax
 0049FA8D    xor         eax,eax
 0049FA8F    push        ebp
 0049FA90    push        49FAD1
 0049FA95    push        dword ptr fs:[eax]
 0049FA98    mov         dword ptr fs:[eax],esp
 0049FA9B    push        dword ptr [ebp+0C]
 0049FA9E    push        dword ptr [ebp+8]
 0049FAA1    lea         eax,[ebp-10]
 0049FAA4    call        004695EC
 0049FAA9    mov         eax,dword ptr [ebp-10]
 0049FAAC    push        eax
 0049FAAD    mov         ecx,dword ptr [ebp-0C]
 0049FAB0    mov         edx,dword ptr [ebp-8]
 0049FAB3    mov         eax,dword ptr [ebp-4]
 0049FAB6    mov         ebx,dword ptr [eax]
 0049FAB8    call        dword ptr [ebx+4];@AbstractError
 0049FABB    xor         eax,eax
 0049FABD    pop         edx
 0049FABE    pop         ecx
 0049FABF    pop         ecx
 0049FAC0    mov         dword ptr fs:[eax],edx
 0049FAC3    push        49FAD8
 0049FAC8    lea         eax,[ebp-10]
 0049FACB    call        @LStrClr
 0049FAD0    ret
>0049FAD1    jmp         @HandleFinally
>0049FAD6    jmp         0049FAC8
 0049FAD8    pop         ebx
 0049FAD9    mov         esp,ebp
 0049FADB    pop         ebp
 0049FADC    ret         8
end;*}

//0049FAE0
{*procedure sub_0049FAE0(?:?; ?:?; ?:?; ?:?);
begin
 0049FAE0    push        ebp
 0049FAE1    mov         ebp,esp
 0049FAE3    add         esp,0FFFFFFF0
 0049FAE6    push        ebx
 0049FAE7    xor         ebx,ebx
 0049FAE9    mov         dword ptr [ebp-10],ebx
 0049FAEC    mov         dword ptr [ebp-0C],ecx
 0049FAEF    mov         dword ptr [ebp-8],edx
 0049FAF2    mov         dword ptr [ebp-4],eax
 0049FAF5    xor         eax,eax
 0049FAF7    push        ebp
 0049FAF8    push        49FB39
 0049FAFD    push        dword ptr fs:[eax]
 0049FB00    mov         dword ptr fs:[eax],esp
 0049FB03    push        dword ptr [ebp+0C]
 0049FB06    push        dword ptr [ebp+8]
 0049FB09    lea         eax,[ebp-10]
 0049FB0C    call        0046962C
 0049FB11    mov         eax,dword ptr [ebp-10]
 0049FB14    push        eax
 0049FB15    mov         ecx,dword ptr [ebp-0C]
 0049FB18    mov         edx,dword ptr [ebp-8]
 0049FB1B    mov         eax,dword ptr [ebp-4]
 0049FB1E    mov         ebx,dword ptr [eax]
 0049FB20    call        dword ptr [ebx+4];@AbstractError
 0049FB23    xor         eax,eax
 0049FB25    pop         edx
 0049FB26    pop         ecx
 0049FB27    pop         ecx
 0049FB28    mov         dword ptr fs:[eax],edx
 0049FB2B    push        49FB40
 0049FB30    lea         eax,[ebp-10]
 0049FB33    call        @LStrClr
 0049FB38    ret
>0049FB39    jmp         @HandleFinally
>0049FB3E    jmp         0049FB30
 0049FB40    pop         ebx
 0049FB41    mov         esp,ebp
 0049FB43    pop         ebp
 0049FB44    ret         8
end;*}

//0049FB48
{*procedure sub_0049FB48(?:?; ?:?; ?:?);
begin
 0049FB48    push        ebp
 0049FB49    mov         ebp,esp
 0049FB4B    add         esp,0FFFFFFF0
 0049FB4E    push        ebx
 0049FB4F    xor         ebx,ebx
 0049FB51    mov         dword ptr [ebp-10],ebx
 0049FB54    mov         dword ptr [ebp-0C],ecx
 0049FB57    mov         dword ptr [ebp-8],edx
 0049FB5A    mov         dword ptr [ebp-4],eax
 0049FB5D    xor         eax,eax
 0049FB5F    push        ebp
 0049FB60    push        49FBA5
 0049FB65    push        dword ptr fs:[eax]
 0049FB68    mov         dword ptr fs:[eax],esp
 0049FB6B    fld         qword ptr [ebp+8]
 0049FB6E    add         esp,0FFFFFFF4
 0049FB71    fstp        tbyte ptr [esp]
 0049FB74    wait
 0049FB75    lea         eax,[ebp-10]
 0049FB78    call        00468298
 0049FB7D    mov         eax,dword ptr [ebp-10]
 0049FB80    push        eax
 0049FB81    mov         ecx,dword ptr [ebp-0C]
 0049FB84    mov         edx,dword ptr [ebp-8]
 0049FB87    mov         eax,dword ptr [ebp-4]
 0049FB8A    mov         ebx,dword ptr [eax]
 0049FB8C    call        dword ptr [ebx+4];@AbstractError
 0049FB8F    xor         eax,eax
 0049FB91    pop         edx
 0049FB92    pop         ecx
 0049FB93    pop         ecx
 0049FB94    mov         dword ptr fs:[eax],edx
 0049FB97    push        49FBAC
 0049FB9C    lea         eax,[ebp-10]
 0049FB9F    call        @LStrClr
 0049FBA4    ret
>0049FBA5    jmp         @HandleFinally
>0049FBAA    jmp         0049FB9C
 0049FBAC    pop         ebx
 0049FBAD    mov         esp,ebp
 0049FBAF    pop         ebp
 0049FBB0    ret         8
end;*}

//0049FBB4
{*procedure sub_0049FBB4(?:?; ?:?; ?:?; ?:?);
begin
 0049FBB4    push        ebp
 0049FBB5    mov         ebp,esp
 0049FBB7    add         esp,0FFFFFFF0
 0049FBBA    push        ebx
 0049FBBB    xor         ebx,ebx
 0049FBBD    mov         dword ptr [ebp-10],ebx
 0049FBC0    mov         dword ptr [ebp-0C],ecx
 0049FBC3    mov         dword ptr [ebp-8],edx
 0049FBC6    mov         dword ptr [ebp-4],eax
 0049FBC9    xor         eax,eax
 0049FBCB    push        ebp
 0049FBCC    push        49FC0D
 0049FBD1    push        dword ptr fs:[eax]
 0049FBD4    mov         dword ptr fs:[eax],esp
 0049FBD7    push        dword ptr [ebp+0C]
 0049FBDA    push        dword ptr [ebp+8]
 0049FBDD    lea         eax,[ebp-10]
 0049FBE0    call        0046960C
 0049FBE5    mov         eax,dword ptr [ebp-10]
 0049FBE8    push        eax
 0049FBE9    mov         ecx,dword ptr [ebp-0C]
 0049FBEC    mov         edx,dword ptr [ebp-8]
 0049FBEF    mov         eax,dword ptr [ebp-4]
 0049FBF2    mov         ebx,dword ptr [eax]
 0049FBF4    call        dword ptr [ebx+4];@AbstractError
 0049FBF7    xor         eax,eax
 0049FBF9    pop         edx
 0049FBFA    pop         ecx
 0049FBFB    pop         ecx
 0049FBFC    mov         dword ptr fs:[eax],edx
 0049FBFF    push        49FC14
 0049FC04    lea         eax,[ebp-10]
 0049FC07    call        @LStrClr
 0049FC0C    ret
>0049FC0D    jmp         @HandleFinally
>0049FC12    jmp         0049FC04
 0049FC14    pop         ebx
 0049FC15    mov         esp,ebp
 0049FC17    pop         ebp
 0049FC18    ret         8
end;*}

//0049FC34
{*procedure sub_0049FC34(?:?; ?:?; ?:?);
begin
 0049FC34    push        ebp
 0049FC35    mov         ebp,esp
 0049FC37    add         esp,0FFFFFFF4
 0049FC3A    push        ebx
 0049FC3B    mov         dword ptr [ebp-0C],ecx
 0049FC3E    mov         dword ptr [ebp-8],edx
 0049FC41    mov         dword ptr [ebp-4],eax
 0049FC44    xor         eax,eax
 0049FC46    mov         al,byte ptr [ebp+8]
 0049FC49    mov         eax,dword ptr [eax*4+541388];^'0'
 0049FC50    push        eax
 0049FC51    mov         ecx,dword ptr [ebp-0C]
 0049FC54    mov         edx,dword ptr [ebp-8]
 0049FC57    mov         eax,dword ptr [ebp-4]
 0049FC5A    mov         ebx,dword ptr [eax]
 0049FC5C    call        dword ptr [ebx+4];@AbstractError
 0049FC5F    pop         ebx
 0049FC60    mov         esp,ebp
 0049FC62    pop         ebp
 0049FC63    ret         4
end;*}

//0049FC68
{*function sub_0049FC68(?:?; ?:?; ?:?):?;
begin
 0049FC68    push        ebp
 0049FC69    mov         ebp,esp
 0049FC6B    add         esp,0FFFFFFE4
 0049FC6E    push        ebx
 0049FC6F    xor         ebx,ebx
 0049FC71    mov         dword ptr [ebp-14],ebx
 0049FC74    mov         dword ptr [ebp-0C],ecx
 0049FC77    mov         dword ptr [ebp-8],edx
 0049FC7A    mov         dword ptr [ebp-4],eax
 0049FC7D    xor         eax,eax
 0049FC7F    push        ebp
 0049FC80    push        49FDC9
 0049FC85    push        dword ptr fs:[eax]
 0049FC88    mov         dword ptr fs:[eax],esp
 0049FC8B    push        0
 0049FC8D    lea         eax,[ebp-14]
 0049FC90    push        eax
 0049FC91    mov         ecx,dword ptr [ebp-0C]
 0049FC94    mov         edx,dword ptr [ebp-8]
 0049FC97    mov         eax,dword ptr [ebp-4]
 0049FC9A    mov         ebx,dword ptr [eax]
 0049FC9C    call        dword ptr [ebx];@AbstractError
 0049FC9E    cmp         dword ptr [ebp-14],0
>0049FCA2    je          0049FDAE
 0049FCA8    mov         eax,dword ptr [ebp+8]
 0049FCAB    mov         edx,dword ptr ds:[476368];TMemoryStream
 0049FCB1    call        @IsClass
 0049FCB6    test        al,al
>0049FCB8    je          0049FCC2
 0049FCBA    mov         eax,dword ptr [ebp+8]
 0049FCBD    mov         dword ptr [ebp-18],eax
>0049FCC0    jmp         0049FCD1
 0049FCC2    mov         dl,1
 0049FCC4    mov         eax,[00476368];TMemoryStream
 0049FCC9    call        TObject.Create;TMemoryStream.Create
 0049FCCE    mov         dword ptr [ebp-18],eax
 0049FCD1    xor         eax,eax
 0049FCD3    push        ebp
 0049FCD4    push        49FDA7
 0049FCD9    push        dword ptr fs:[eax]
 0049FCDC    mov         dword ptr fs:[eax],esp
 0049FCDF    mov         eax,dword ptr [ebp-18]
 0049FCE2    call        0047BCCC
 0049FCE7    mov         dword ptr [ebp-1C],eax
 0049FCEA    mov         eax,dword ptr [ebp-18]
 0049FCED    mov         edx,dword ptr [eax]
 0049FCEF    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0049FCF1    mov         ebx,eax
 0049FCF3    mov         eax,dword ptr [ebp-14]
 0049FCF6    call        @DynArrayLength
 0049FCFB    sar         eax,1
>0049FCFD    jns         0049FD02
 0049FCFF    adc         eax,0
 0049FD02    add         ebx,eax
 0049FD04    mov         edx,ebx
 0049FD06    mov         eax,dword ptr [ebp-18]
 0049FD09    mov         ecx,dword ptr [eax]
 0049FD0B    call        dword ptr [ecx+4];TMemoryStream.sub_0047C6FC
 0049FD0E    mov         eax,dword ptr [ebp-14]
 0049FD11    call        @DynArrayLength
 0049FD16    sar         eax,1
>0049FD18    jns         0049FD1D
 0049FD1A    adc         eax,0
 0049FD1D    push        eax
 0049FD1E    mov         eax,dword ptr [ebp-18]
 0049FD21    call        0047BCCC
 0049FD26    push        edx
 0049FD27    push        eax
 0049FD28    mov         eax,dword ptr [ebp-18]
 0049FD2B    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0049FD2E    cdq
 0049FD2F    add         eax,dword ptr [esp]
 0049FD32    adc         edx,dword ptr [esp+4]
 0049FD36    add         esp,8
 0049FD39    push        eax
 0049FD3A    mov         eax,dword ptr [ebp-14]
 0049FD3D    call        @LStrToPChar
 0049FD42    pop         edx
 0049FD43    pop         ecx
 0049FD44    call        004825E8
 0049FD49    mov         eax,dword ptr [ebp-1C]
 0049FD4C    cdq
 0049FD4D    push        edx
 0049FD4E    push        eax
 0049FD4F    mov         eax,dword ptr [ebp-18]
 0049FD52    call        0047BCF4
 0049FD57    mov         eax,dword ptr [ebp+8]
 0049FD5A    cmp         eax,dword ptr [ebp-18]
>0049FD5D    je          0049FD7C
 0049FD5F    mov         eax,dword ptr [ebp-14]
 0049FD62    call        @DynArrayLength
 0049FD67    sar         eax,1
>0049FD69    jns         0049FD6E
 0049FD6B    adc         eax,0
 0049FD6E    cdq
 0049FD6F    push        edx
 0049FD70    push        eax
 0049FD71    mov         edx,dword ptr [ebp-18]
 0049FD74    mov         eax,dword ptr [ebp+8]
 0049FD77    call        0047BFB8
 0049FD7C    mov         eax,dword ptr [ebp-18]
 0049FD7F    mov         edx,dword ptr [eax]
 0049FD81    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0049FD83    sub         eax,dword ptr [ebp-1C]
 0049FD86    mov         dword ptr [ebp-10],eax
 0049FD89    xor         eax,eax
 0049FD8B    pop         edx
 0049FD8C    pop         ecx
 0049FD8D    pop         ecx
 0049FD8E    mov         dword ptr fs:[eax],edx
 0049FD91    push        49FDB3
 0049FD96    mov         eax,dword ptr [ebp+8]
 0049FD99    cmp         eax,dword ptr [ebp-18]
>0049FD9C    je          0049FDA6
 0049FD9E    mov         eax,dword ptr [ebp-18]
 0049FDA1    call        TObject.Free
 0049FDA6    ret
>0049FDA7    jmp         @HandleFinally
>0049FDAC    jmp         0049FD96
 0049FDAE    xor         eax,eax
 0049FDB0    mov         dword ptr [ebp-10],eax
 0049FDB3    xor         eax,eax
 0049FDB5    pop         edx
 0049FDB6    pop         ecx
 0049FDB7    pop         ecx
 0049FDB8    mov         dword ptr fs:[eax],edx
 0049FDBB    push        49FDD0
 0049FDC0    lea         eax,[ebp-14]
 0049FDC3    call        @LStrClr
 0049FDC8    ret
>0049FDC9    jmp         @HandleFinally
>0049FDCE    jmp         0049FDC0
 0049FDD0    mov         eax,dword ptr [ebp-10]
 0049FDD3    pop         ebx
 0049FDD4    mov         esp,ebp
 0049FDD6    pop         ebp
 0049FDD7    ret         4
end;*}

//0049FDDC
{*procedure sub_0049FDDC(?:?; ?:?; ?:?);
begin
 0049FDDC    push        ebp
 0049FDDD    mov         ebp,esp
 0049FDDF    add         esp,0FFFFFFEC
 0049FDE2    push        ebx
 0049FDE3    xor         ebx,ebx
 0049FDE5    mov         dword ptr [ebp-10],ebx
 0049FDE8    mov         dword ptr [ebp-0C],ecx
 0049FDEB    mov         dword ptr [ebp-8],edx
 0049FDEE    mov         dword ptr [ebp-4],eax
 0049FDF1    xor         eax,eax
 0049FDF3    push        ebp
 0049FDF4    push        49FF3C
 0049FDF9    push        dword ptr fs:[eax]
 0049FDFC    mov         dword ptr fs:[eax],esp
 0049FDFF    push        0
 0049FE01    push        2
 0049FE03    mov         eax,dword ptr [ebp+8]
 0049FE06    mov         edx,dword ptr [eax]
 0049FE08    call        dword ptr [edx]
 0049FE0A    push        edx
 0049FE0B    push        eax
 0049FE0C    mov         eax,dword ptr [ebp+8]
 0049FE0F    call        0047BCCC
 0049FE14    sub         dword ptr [esp],eax
 0049FE17    sbb         dword ptr [esp+4],edx
 0049FE1B    pop         eax
 0049FE1C    pop         edx
 0049FE1D    call        @_llmul
 0049FE22    mov         edx,eax
 0049FE24    lea         eax,[ebp-10]
 0049FE27    call        @LStrSetLength
 0049FE2C    mov         eax,dword ptr [ebp-10]
 0049FE2F    call        @DynArrayLength
 0049FE34    test        eax,eax
>0049FE36    jle         0049FF14
 0049FE3C    mov         eax,dword ptr [ebp+8]
 0049FE3F    mov         edx,dword ptr ds:[476368];TMemoryStream
 0049FE45    call        @IsClass
 0049FE4A    test        al,al
>0049FE4C    je          0049FE56
 0049FE4E    mov         eax,dword ptr [ebp+8]
 0049FE51    mov         dword ptr [ebp-14],eax
>0049FE54    jmp         0049FE65
 0049FE56    mov         dl,1
 0049FE58    mov         eax,[00476368];TMemoryStream
 0049FE5D    call        TObject.Create;TMemoryStream.Create
 0049FE62    mov         dword ptr [ebp-14],eax
 0049FE65    xor         eax,eax
 0049FE67    push        ebp
 0049FE68    push        49FF0D
 0049FE6D    push        dword ptr fs:[eax]
 0049FE70    mov         dword ptr fs:[eax],esp
 0049FE73    mov         eax,dword ptr [ebp-14]
 0049FE76    cmp         eax,dword ptr [ebp+8]
>0049FE79    je          0049FEAE
 0049FE7B    mov         eax,dword ptr [ebp+8]
 0049FE7E    mov         edx,dword ptr [eax]
 0049FE80    call        dword ptr [edx]
 0049FE82    push        edx
 0049FE83    push        eax
 0049FE84    mov         eax,dword ptr [ebp+8]
 0049FE87    call        0047BCCC
 0049FE8C    sub         dword ptr [esp],eax
 0049FE8F    sbb         dword ptr [esp+4],edx
 0049FE93    pop         eax
 0049FE94    pop         edx
 0049FE95    push        edx
 0049FE96    push        eax
 0049FE97    mov         edx,dword ptr [ebp+8]
 0049FE9A    mov         eax,dword ptr [ebp-14]
 0049FE9D    call        0047BFB8
 0049FEA2    push        0
 0049FEA4    push        0
 0049FEA6    mov         eax,dword ptr [ebp-14]
 0049FEA9    call        0047BCF4
 0049FEAE    mov         eax,dword ptr [ebp-14]
 0049FEB1    mov         edx,dword ptr [eax]
 0049FEB3    call        dword ptr [edx];TMemoryStream.sub_0047BD10
 0049FEB5    mov         ebx,eax
 0049FEB7    mov         eax,dword ptr [ebp-14]
 0049FEBA    call        0047BCCC
 0049FEBF    sub         ebx,eax
 0049FEC1    push        ebx
 0049FEC2    mov         eax,dword ptr [ebp-14]
 0049FEC5    call        0047BCCC
 0049FECA    push        edx
 0049FECB    push        eax
 0049FECC    mov         eax,dword ptr [ebp-14]
 0049FECF    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0049FED2    cdq
 0049FED3    add         eax,dword ptr [esp]
 0049FED6    adc         edx,dword ptr [esp+4]
 0049FEDA    add         esp,8
 0049FEDD    push        eax
 0049FEDE    mov         eax,dword ptr [ebp-10]
 0049FEE1    call        @LStrToPChar
 0049FEE6    mov         edx,eax
 0049FEE8    pop         eax
 0049FEE9    pop         ecx
 0049FEEA    call        00482580
 0049FEEF    xor         eax,eax
 0049FEF1    pop         edx
 0049FEF2    pop         ecx
 0049FEF3    pop         ecx
 0049FEF4    mov         dword ptr fs:[eax],edx
 0049FEF7    push        49FF14
 0049FEFC    mov         eax,dword ptr [ebp+8]
 0049FEFF    cmp         eax,dword ptr [ebp-14]
>0049FF02    je          0049FF0C
 0049FF04    mov         eax,dword ptr [ebp-14]
 0049FF07    call        TObject.Free
 0049FF0C    ret
>0049FF0D    jmp         @HandleFinally
>0049FF12    jmp         0049FEFC
 0049FF14    mov         eax,dword ptr [ebp-10]
 0049FF17    push        eax
 0049FF18    mov         ecx,dword ptr [ebp-0C]
 0049FF1B    mov         edx,dword ptr [ebp-8]
 0049FF1E    mov         eax,dword ptr [ebp-4]
 0049FF21    mov         ebx,dword ptr [eax]
 0049FF23    call        dword ptr [ebx+4];@AbstractError
 0049FF26    xor         eax,eax
 0049FF28    pop         edx
 0049FF29    pop         ecx
 0049FF2A    pop         ecx
 0049FF2B    mov         dword ptr fs:[eax],edx
 0049FF2E    push        49FF43
 0049FF33    lea         eax,[ebp-10]
 0049FF36    call        @LStrClr
 0049FF3B    ret
>0049FF3C    jmp         @HandleFinally
>0049FF41    jmp         0049FF33
 0049FF43    pop         ebx
 0049FF44    mov         esp,ebp
 0049FF46    pop         ebp
 0049FF47    ret         4
end;*}

//0049FF4C
destructor TIniFile.Destroy;
begin
{*
 0049FF4C    push        ebp
 0049FF4D    mov         ebp,esp
 0049FF4F    add         esp,0FFFFFFF8
 0049FF52    call        @BeforeDestruction
 0049FF57    mov         byte ptr [ebp-5],dl
 0049FF5A    mov         dword ptr [ebp-4],eax
 0049FF5D    mov         eax,dword ptr [ebp-4]
 0049FF60    mov         edx,dword ptr [eax]
 0049FF62    call        dword ptr [edx+54];TIniFile.sub_004A0464
 0049FF65    mov         dl,byte ptr [ebp-5]
 0049FF68    and         dl,0FC
 0049FF6B    mov         eax,dword ptr [ebp-4]
 0049FF6E    call        TObject.Destroy
 0049FF73    cmp         byte ptr [ebp-5],0
>0049FF77    jle         0049FF81
 0049FF79    mov         eax,dword ptr [ebp-4]
 0049FF7C    call        @ClassDestroy
 0049FF81    pop         ecx
 0049FF82    pop         ecx
 0049FF83    pop         ebp
 0049FF84    ret
*}
end;

//0049FF88
{*procedure sub_0049FF88(?:?; ?:?; ?:?; ?:?);
begin
 0049FF88    push        ebp
 0049FF89    mov         ebp,esp
 0049FF8B    add         esp,0FFFFF7F4
 0049FF91    mov         dword ptr [ebp-0C],ecx
 0049FF94    mov         dword ptr [ebp-8],edx
 0049FF97    mov         dword ptr [ebp-4],eax
 0049FF9A    mov         eax,dword ptr [ebp-4]
 0049FF9D    mov         eax,dword ptr [eax+4];TIniFile...........:String
 0049FFA0    call        @LStrToPChar
 0049FFA5    push        eax
 0049FFA6    push        800
 0049FFAB    lea         eax,[ebp-80C]
 0049FFB1    push        eax
 0049FFB2    mov         eax,dword ptr [ebp+0C]
 0049FFB5    call        @LStrToPChar
 0049FFBA    push        eax
 0049FFBB    mov         eax,dword ptr [ebp-0C]
 0049FFBE    call        @LStrToPChar
 0049FFC3    push        eax
 0049FFC4    mov         eax,dword ptr [ebp-8]
 0049FFC7    call        @LStrToPChar
 0049FFCC    push        eax
 0049FFCD    call        kernel32.GetPrivateProfileStringA
 0049FFD2    mov         ecx,eax
 0049FFD4    lea         edx,[ebp-80C]
 0049FFDA    mov         eax,dword ptr [ebp+8]
 0049FFDD    call        @LStrFromPCharLen
 0049FFE2    mov         esp,ebp
 0049FFE4    pop         ebp
 0049FFE5    ret         8
end;*}

//0049FFE8
{*procedure sub_0049FFE8(?:?; ?:?; ?:?);
begin
 0049FFE8    push        ebp
 0049FFE9    mov         ebp,esp
 0049FFEB    add         esp,0FFFFFFEC
 0049FFEE    mov         dword ptr [ebp-0C],ecx
 0049FFF1    mov         dword ptr [ebp-8],edx
 0049FFF4    mov         dword ptr [ebp-4],eax
 0049FFF7    mov         eax,dword ptr [ebp-4]
 0049FFFA    mov         eax,dword ptr [eax+4];TIniFile............:String
 0049FFFD    call        @LStrToPChar
 004A0002    push        eax
 004A0003    mov         eax,dword ptr [ebp+8]
 004A0006    call        @LStrToPChar
 004A000B    push        eax
 004A000C    mov         eax,dword ptr [ebp-0C]
 004A000F    call        @LStrToPChar
 004A0014    push        eax
 004A0015    mov         eax,dword ptr [ebp-8]
 004A0018    call        @LStrToPChar
 004A001D    push        eax
 004A001E    call        kernel32.WritePrivateProfileStringA
 004A0023    test        eax,eax
>004A0025    jne         004A0051
 004A0027    mov         eax,dword ptr [ebp-4]
 004A002A    mov         eax,dword ptr [eax+4];TIniFile.............:String
 004A002D    mov         dword ptr [ebp-14],eax
 004A0030    mov         byte ptr [ebp-10],0B
 004A0034    lea         eax,[ebp-14]
 004A0037    push        eax
 004A0038    push        0
 004A003A    mov         ecx,dword ptr ds:[55B598];^SIniFileWriteError:TResStringRec
 004A0040    mov         dl,1
 004A0042    mov         eax,[0049F404];EIniFileException
 004A0047    call        Exception.CreateResFmt;EIniFileException.Create
 004A004C    call        @RaiseExcept
 004A0051    mov         esp,ebp
 004A0053    pop         ebp
 004A0054    ret         4
end;*}

//004A0058
{*procedure sub_004A0058(?:?);
begin
 004A0058    push        ebp
 004A0059    mov         ebp,esp
 004A005B    add         esp,0FFFFFFEC
 004A005E    xor         ecx,ecx
 004A0060    mov         dword ptr [ebp-14],ecx
 004A0063    mov         dword ptr [ebp-8],edx
 004A0066    mov         dword ptr [ebp-4],eax
 004A0069    xor         eax,eax
 004A006B    push        ebp
 004A006C    push        4A0156
 004A0071    push        dword ptr fs:[eax]
 004A0074    mov         dword ptr fs:[eax],esp
 004A0077    mov         eax,4000
 004A007C    call        @GetMem
 004A0081    mov         dword ptr [ebp-0C],eax
 004A0084    xor         eax,eax
 004A0086    push        ebp
 004A0087    push        4A0139
 004A008C    push        dword ptr fs:[eax]
 004A008F    mov         dword ptr fs:[eax],esp
 004A0092    mov         eax,dword ptr [ebp-8]
 004A0095    call        TStrings.BeginUpdate
 004A009A    xor         eax,eax
 004A009C    push        ebp
 004A009D    push        4A011C
 004A00A2    push        dword ptr fs:[eax]
 004A00A5    mov         dword ptr fs:[eax],esp
 004A00A8    mov         eax,dword ptr [ebp-8]
 004A00AB    mov         edx,dword ptr [eax]
 004A00AD    call        dword ptr [edx+44]
 004A00B0    mov         eax,dword ptr [ebp-4]
 004A00B3    mov         eax,dword ptr [eax+4];TIniFile..............:String
 004A00B6    call        @LStrToPChar
 004A00BB    push        eax
 004A00BC    push        4000
 004A00C1    mov         eax,dword ptr [ebp-0C]
 004A00C4    push        eax
 004A00C5    push        0
 004A00C7    push        0
 004A00C9    push        0
 004A00CB    call        kernel32.GetPrivateProfileStringA
 004A00D0    test        eax,eax
>004A00D2    je          004A0106
 004A00D4    mov         eax,dword ptr [ebp-0C]
 004A00D7    mov         dword ptr [ebp-10],eax
>004A00DA    jmp         004A00FE
 004A00DC    lea         eax,[ebp-14]
 004A00DF    mov         edx,dword ptr [ebp-10]
 004A00E2    call        @LStrFromPChar
 004A00E7    mov         edx,dword ptr [ebp-14]
 004A00EA    mov         eax,dword ptr [ebp-8]
 004A00ED    mov         ecx,dword ptr [eax]
 004A00EF    call        dword ptr [ecx+38]
 004A00F2    mov         eax,dword ptr [ebp-10]
 004A00F5    call        StrLen
 004A00FA    inc         eax
 004A00FB    add         dword ptr [ebp-10],eax
 004A00FE    mov         eax,dword ptr [ebp-10]
 004A0101    cmp         byte ptr [eax],0
>004A0104    jne         004A00DC
 004A0106    xor         eax,eax
 004A0108    pop         edx
 004A0109    pop         ecx
 004A010A    pop         ecx
 004A010B    mov         dword ptr fs:[eax],edx
 004A010E    push        4A0123
 004A0113    mov         eax,dword ptr [ebp-8]
 004A0116    call        TStrings.EndUpdate
 004A011B    ret
>004A011C    jmp         @HandleFinally
>004A0121    jmp         004A0113
 004A0123    xor         eax,eax
 004A0125    pop         edx
 004A0126    pop         ecx
 004A0127    pop         ecx
 004A0128    mov         dword ptr fs:[eax],edx
 004A012B    push        4A0140
 004A0130    mov         eax,dword ptr [ebp-0C]
 004A0133    call        @FreeMem
 004A0138    ret
>004A0139    jmp         @HandleFinally
>004A013E    jmp         004A0130
 004A0140    xor         eax,eax
 004A0142    pop         edx
 004A0143    pop         ecx
 004A0144    pop         ecx
 004A0145    mov         dword ptr fs:[eax],edx
 004A0148    push        4A015D
 004A014D    lea         eax,[ebp-14]
 004A0150    call        @LStrClr
 004A0155    ret
>004A0156    jmp         @HandleFinally
>004A015B    jmp         004A014D
 004A015D    mov         esp,ebp
 004A015F    pop         ebp
 004A0160    ret
end;*}

//004A0164
{*procedure sub_004A0164(?:?; ?:?);
begin
 004A0164    push        ebp
 004A0165    mov         ebp,esp
 004A0167    add         esp,0FFFFFFE8
 004A016A    push        ebx
 004A016B    xor         ebx,ebx
 004A016D    mov         dword ptr [ebp-18],ebx
 004A0170    mov         dword ptr [ebp-0C],ecx
 004A0173    mov         dword ptr [ebp-8],edx
 004A0176    mov         dword ptr [ebp-4],eax
 004A0179    xor         eax,eax
 004A017B    push        ebp
 004A017C    push        4A026D
 004A0181    push        dword ptr fs:[eax]
 004A0184    mov         dword ptr fs:[eax],esp
 004A0187    mov         eax,4000
 004A018C    call        @GetMem
 004A0191    mov         dword ptr [ebp-10],eax
 004A0194    xor         eax,eax
 004A0196    push        ebp
 004A0197    push        4A0250
 004A019C    push        dword ptr fs:[eax]
 004A019F    mov         dword ptr fs:[eax],esp
 004A01A2    mov         eax,dword ptr [ebp-0C]
 004A01A5    call        TStrings.BeginUpdate
 004A01AA    xor         eax,eax
 004A01AC    push        ebp
 004A01AD    push        4A0233
 004A01B2    push        dword ptr fs:[eax]
 004A01B5    mov         dword ptr fs:[eax],esp
 004A01B8    mov         eax,dword ptr [ebp-0C]
 004A01BB    mov         edx,dword ptr [eax]
 004A01BD    call        dword ptr [edx+44]
 004A01C0    mov         eax,dword ptr [ebp-4]
 004A01C3    mov         eax,dword ptr [eax+4];TIniFile...............:String
 004A01C6    call        @LStrToPChar
 004A01CB    push        eax
 004A01CC    push        4000
 004A01D1    mov         eax,dword ptr [ebp-10]
 004A01D4    push        eax
 004A01D5    push        0
 004A01D7    push        0
 004A01D9    mov         eax,dword ptr [ebp-8]
 004A01DC    call        @LStrToPChar
 004A01E1    push        eax
 004A01E2    call        kernel32.GetPrivateProfileStringA
 004A01E7    test        eax,eax
>004A01E9    je          004A021D
 004A01EB    mov         eax,dword ptr [ebp-10]
 004A01EE    mov         dword ptr [ebp-14],eax
>004A01F1    jmp         004A0215
 004A01F3    lea         eax,[ebp-18]
 004A01F6    mov         edx,dword ptr [ebp-14]
 004A01F9    call        @LStrFromPChar
 004A01FE    mov         edx,dword ptr [ebp-18]
 004A0201    mov         eax,dword ptr [ebp-0C]
 004A0204    mov         ecx,dword ptr [eax]
 004A0206    call        dword ptr [ecx+38]
 004A0209    mov         eax,dword ptr [ebp-14]
 004A020C    call        StrLen
 004A0211    inc         eax
 004A0212    add         dword ptr [ebp-14],eax
 004A0215    mov         eax,dword ptr [ebp-14]
 004A0218    cmp         byte ptr [eax],0
>004A021B    jne         004A01F3
 004A021D    xor         eax,eax
 004A021F    pop         edx
 004A0220    pop         ecx
 004A0221    pop         ecx
 004A0222    mov         dword ptr fs:[eax],edx
 004A0225    push        4A023A
 004A022A    mov         eax,dword ptr [ebp-0C]
 004A022D    call        TStrings.EndUpdate
 004A0232    ret
>004A0233    jmp         @HandleFinally
>004A0238    jmp         004A022A
 004A023A    xor         eax,eax
 004A023C    pop         edx
 004A023D    pop         ecx
 004A023E    pop         ecx
 004A023F    mov         dword ptr fs:[eax],edx
 004A0242    push        4A0257
 004A0247    mov         eax,dword ptr [ebp-10]
 004A024A    call        @FreeMem
 004A024F    ret
>004A0250    jmp         @HandleFinally
>004A0255    jmp         004A0247
 004A0257    xor         eax,eax
 004A0259    pop         edx
 004A025A    pop         ecx
 004A025B    pop         ecx
 004A025C    mov         dword ptr fs:[eax],edx
 004A025F    push        4A0274
 004A0264    lea         eax,[ebp-18]
 004A0267    call        @LStrClr
 004A026C    ret
>004A026D    jmp         @HandleFinally
>004A0272    jmp         004A0264
 004A0274    pop         ebx
 004A0275    mov         esp,ebp
 004A0277    pop         ebp
 004A0278    ret
end;*}

//004A027C
{*procedure sub_004A027C(?:?; ?:?);
begin
 004A027C    push        ebp
 004A027D    mov         ebp,esp
 004A027F    add         esp,0FFFFFFD8
 004A0282    push        ebx
 004A0283    xor         ebx,ebx
 004A0285    mov         dword ptr [ebp-1C],ebx
 004A0288    mov         dword ptr [ebp-20],ebx
 004A028B    mov         dword ptr [ebp-24],ebx
 004A028E    mov         dword ptr [ebp-28],ebx
 004A0291    mov         dword ptr [ebp-0C],ecx
 004A0294    mov         dword ptr [ebp-8],edx
 004A0297    mov         dword ptr [ebp-4],eax
 004A029A    xor         eax,eax
 004A029C    push        ebp
 004A029D    push        4A03B8
 004A02A2    push        dword ptr fs:[eax]
 004A02A5    mov         dword ptr fs:[eax],esp
 004A02A8    mov         dl,1
 004A02AA    mov         eax,[00476078];TStringList
 004A02AF    call        TObject.Create;TStringList.Create
 004A02B4    mov         dword ptr [ebp-10],eax
 004A02B7    xor         eax,eax
 004A02B9    push        ebp
 004A02BA    push        4A0396
 004A02BF    push        dword ptr fs:[eax]
 004A02C2    mov         dword ptr fs:[eax],esp
 004A02C5    mov         ecx,dword ptr [ebp-10]
 004A02C8    mov         edx,dword ptr [ebp-8]
 004A02CB    mov         eax,dword ptr [ebp-4]
 004A02CE    mov         ebx,dword ptr [eax]
 004A02D0    call        dword ptr [ebx+40];TIniFile.sub_004A0164
 004A02D3    mov         eax,dword ptr [ebp-0C]
 004A02D6    call        TStrings.BeginUpdate
 004A02DB    xor         eax,eax
 004A02DD    push        ebp
 004A02DE    push        4A0379
 004A02E3    push        dword ptr fs:[eax]
 004A02E6    mov         dword ptr fs:[eax],esp
 004A02E9    mov         eax,dword ptr [ebp-0C]
 004A02EC    mov         edx,dword ptr [eax]
 004A02EE    call        dword ptr [edx+44]
 004A02F1    mov         eax,dword ptr [ebp-10]
 004A02F4    mov         edx,dword ptr [eax]
 004A02F6    call        dword ptr [edx+14];TStringList.sub_0047B778
 004A02F9    dec         eax
 004A02FA    test        eax,eax
>004A02FC    jl          004A0363
 004A02FE    inc         eax
 004A02FF    mov         dword ptr [ebp-18],eax
 004A0302    mov         dword ptr [ebp-14],0
 004A0309    lea         ecx,[ebp-20]
 004A030C    mov         edx,dword ptr [ebp-14]
 004A030F    mov         eax,dword ptr [ebp-10]
 004A0312    mov         ebx,dword ptr [eax]
 004A0314    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 004A0317    push        dword ptr [ebp-20]
 004A031A    push        4A03CC;'='
 004A031F    push        0
 004A0321    lea         eax,[ebp-24]
 004A0324    push        eax
 004A0325    lea         ecx,[ebp-28]
 004A0328    mov         edx,dword ptr [ebp-14]
 004A032B    mov         eax,dword ptr [ebp-10]
 004A032E    mov         ebx,dword ptr [eax]
 004A0330    call        dword ptr [ebx+0C];TStringList.sub_0047B710
 004A0333    mov         ecx,dword ptr [ebp-28]
 004A0336    mov         edx,dword ptr [ebp-8]
 004A0339    mov         eax,dword ptr [ebp-4]
 004A033C    mov         ebx,dword ptr [eax]
 004A033E    call        dword ptr [ebx];TIniFile.sub_0049FF88
 004A0340    push        dword ptr [ebp-24]
 004A0343    lea         eax,[ebp-1C]
 004A0346    mov         edx,3
 004A034B    call        @LStrCatN
 004A0350    mov         edx,dword ptr [ebp-1C]
 004A0353    mov         eax,dword ptr [ebp-0C]
 004A0356    mov         ecx,dword ptr [eax]
 004A0358    call        dword ptr [ecx+38]
 004A035B    inc         dword ptr [ebp-14]
 004A035E    dec         dword ptr [ebp-18]
>004A0361    jne         004A0309
 004A0363    xor         eax,eax
 004A0365    pop         edx
 004A0366    pop         ecx
 004A0367    pop         ecx
 004A0368    mov         dword ptr fs:[eax],edx
 004A036B    push        4A0380
 004A0370    mov         eax,dword ptr [ebp-0C]
 004A0373    call        TStrings.EndUpdate
 004A0378    ret
>004A0379    jmp         @HandleFinally
>004A037E    jmp         004A0370
 004A0380    xor         eax,eax
 004A0382    pop         edx
 004A0383    pop         ecx
 004A0384    pop         ecx
 004A0385    mov         dword ptr fs:[eax],edx
 004A0388    push        4A039D
 004A038D    mov         eax,dword ptr [ebp-10]
 004A0390    call        TObject.Free
 004A0395    ret
>004A0396    jmp         @HandleFinally
>004A039B    jmp         004A038D
 004A039D    xor         eax,eax
 004A039F    pop         edx
 004A03A0    pop         ecx
 004A03A1    pop         ecx
 004A03A2    mov         dword ptr fs:[eax],edx
 004A03A5    push        4A03BF
 004A03AA    lea         eax,[ebp-28]
 004A03AD    mov         edx,4
 004A03B2    call        @LStrArrayClr
 004A03B7    ret
>004A03B8    jmp         @HandleFinally
>004A03BD    jmp         004A03AA
 004A03BF    pop         ebx
 004A03C0    mov         esp,ebp
 004A03C2    pop         ebp
 004A03C3    ret
end;*}

//004A03D0
{*procedure sub_004A03D0(?:?);
begin
 004A03D0    push        ebp
 004A03D1    mov         ebp,esp
 004A03D3    add         esp,0FFFFFFF0
 004A03D6    mov         dword ptr [ebp-8],edx
 004A03D9    mov         dword ptr [ebp-4],eax
 004A03DC    mov         eax,dword ptr [ebp-4]
 004A03DF    mov         eax,dword ptr [eax+4];TIniFile................:String
 004A03E2    call        @LStrToPChar
 004A03E7    push        eax
 004A03E8    push        0
 004A03EA    push        0
 004A03EC    mov         eax,dword ptr [ebp-8]
 004A03EF    call        @LStrToPChar
 004A03F4    push        eax
 004A03F5    call        kernel32.WritePrivateProfileStringA
 004A03FA    test        eax,eax
>004A03FC    jne         004A0428
 004A03FE    mov         eax,dword ptr [ebp-4]
 004A0401    mov         eax,dword ptr [eax+4];TIniFile.................:String
 004A0404    mov         dword ptr [ebp-10],eax
 004A0407    mov         byte ptr [ebp-0C],0B
 004A040B    lea         eax,[ebp-10]
 004A040E    push        eax
 004A040F    push        0
 004A0411    mov         ecx,dword ptr ds:[55B598];^SIniFileWriteError:TResStringRec
 004A0417    mov         dl,1
 004A0419    mov         eax,[0049F404];EIniFileException
 004A041E    call        Exception.CreateResFmt;EIniFileException.Create
 004A0423    call        @RaiseExcept
 004A0428    mov         esp,ebp
 004A042A    pop         ebp
 004A042B    ret
end;*}

//004A042C
{*procedure sub_004A042C(?:?; ?:?);
begin
 004A042C    push        ebp
 004A042D    mov         ebp,esp
 004A042F    add         esp,0FFFFFFF4
 004A0432    mov         dword ptr [ebp-0C],ecx
 004A0435    mov         dword ptr [ebp-8],edx
 004A0438    mov         dword ptr [ebp-4],eax
 004A043B    mov         eax,dword ptr [ebp-4]
 004A043E    mov         eax,dword ptr [eax+4];TIniFile..................:String
 004A0441    call        @LStrToPChar
 004A0446    push        eax
 004A0447    push        0
 004A0449    mov         eax,dword ptr [ebp-0C]
 004A044C    call        @LStrToPChar
 004A0451    push        eax
 004A0452    mov         eax,dword ptr [ebp-8]
 004A0455    call        @LStrToPChar
 004A045A    push        eax
 004A045B    call        kernel32.WritePrivateProfileStringA
 004A0460    mov         esp,ebp
 004A0462    pop         ebp
 004A0463    ret
end;*}

//004A0464
procedure sub_004A0464;
begin
{*
 004A0464    push        ebp
 004A0465    mov         ebp,esp
 004A0467    push        ecx
 004A0468    mov         dword ptr [ebp-4],eax
 004A046B    mov         eax,dword ptr [ebp-4]
 004A046E    mov         eax,dword ptr [eax+4];TIniFile...................:String
 004A0471    call        @LStrToPChar
 004A0476    push        eax
 004A0477    push        0
 004A0479    push        0
 004A047B    push        0
 004A047D    call        kernel32.WritePrivateProfileStringA
 004A0482    pop         ecx
 004A0483    pop         ebp
 004A0484    ret
*}
end;

Initialization
Finalization
//004A0488
{*
 004A0488    push        ebp
 004A0489    mov         ebp,esp
 004A048B    xor         eax,eax
 004A048D    push        ebp
 004A048E    push        4A04C4
 004A0493    push        dword ptr fs:[eax]
 004A0496    mov         dword ptr fs:[eax],esp
 004A0499    inc         dword ptr ds:[55DD54]
>004A049F    jne         004A04B6
 004A04A1    mov         eax,541388;^'0'
 004A04A6    mov         ecx,2
 004A04AB    mov         edx,dword ptr ds:[4010AC];String
 004A04B1    call        @FinalizeArray
 004A04B6    xor         eax,eax
 004A04B8    pop         edx
 004A04B9    pop         ecx
 004A04BA    pop         ecx
 004A04BB    mov         dword ptr fs:[eax],edx
 004A04BE    push        4A04CB
 004A04C3    ret
>004A04C4    jmp         @HandleFinally
>004A04C9    jmp         004A04C3
 004A04CB    pop         ebp
 004A04CC    ret
*}
end.