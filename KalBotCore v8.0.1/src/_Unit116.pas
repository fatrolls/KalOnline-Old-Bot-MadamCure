//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit116;

interface

uses
  SysUtils, Classes;

type
  TConfig = class(TObject)
  public
    f8:String;//f8
    fC:String;//fC
    f14:String;//f14
    f1C:String;//f1C
    f24:String;//f24
    f30:String;//f30
    f34:String;//f34
    f38:String;//f38
    constructor Create;//0051B5B4
  end;
    //procedure sub_0051B708(?:?);//0051B708

implementation

//0051B5B4
constructor TConfig.Create;
begin
{*
 0051B5B4    push        ebp
 0051B5B5    mov         ebp,esp
 0051B5B7    add         esp,0FFFFFFEC
 0051B5BA    push        ebx
 0051B5BB    xor         ebx,ebx
 0051B5BD    mov         dword ptr [ebp-10],ebx
 0051B5C0    mov         dword ptr [ebp-14],ebx
 0051B5C3    test        dl,dl
>0051B5C5    je          0051B5CF
 0051B5C7    add         esp,0FFFFFFF0
 0051B5CA    call        @ClassCreate
 0051B5CF    mov         dword ptr [ebp-0C],ecx
 0051B5D2    mov         byte ptr [ebp-5],dl
 0051B5D5    mov         dword ptr [ebp-4],eax
 0051B5D8    mov         eax,dword ptr [ebp-0C]
 0051B5DB    call        @LStrAddRef
 0051B5E0    xor         eax,eax
 0051B5E2    push        ebp
 0051B5E3    push        51B683
 0051B5E8    push        dword ptr fs:[eax]
 0051B5EB    mov         dword ptr fs:[eax],esp
 0051B5EE    xor         edx,edx
 0051B5F0    mov         eax,dword ptr [ebp-4]
 0051B5F3    call        TObject.Create
 0051B5F8    lea         edx,[ebp-14]
 0051B5FB    mov         eax,[0055B4C8];^Application:TApplication
 0051B600    mov         eax,dword ptr [eax]
 0051B602    call        004F34CC
 0051B607    mov         eax,dword ptr [ebp-14]
 0051B60A    lea         edx,[ebp-10]
 0051B60D    call        0046707C
 0051B612    lea         eax,[ebp-10]
 0051B615    mov         edx,dword ptr [ebp-0C]
 0051B618    call        @LStrCat
 0051B61D    mov         ecx,dword ptr [ebp-10]
 0051B620    mov         dl,1
 0051B622    mov         eax,[0049F52C];TIniFile
 0051B627    call        TIniFile.Create;TIniFile.Create
 0051B62C    mov         edx,dword ptr [ebp-4]
 0051B62F    mov         dword ptr [edx+4],eax
 0051B632    xor         eax,eax
 0051B634    push        ebp
 0051B635    push        51B661
 0051B63A    push        dword ptr fs:[eax]
 0051B63D    mov         dword ptr fs:[eax],esp
 0051B640    mov         eax,dword ptr [ebp-4]
 0051B643    call        0051B708
 0051B648    xor         eax,eax
 0051B64A    pop         edx
 0051B64B    pop         ecx
 0051B64C    pop         ecx
 0051B64D    mov         dword ptr fs:[eax],edx
 0051B650    push        51B668
 0051B655    mov         eax,dword ptr [ebp-4]
 0051B658    mov         eax,dword ptr [eax+4]
 0051B65B    call        TObject.Free
 0051B660    ret
>0051B661    jmp         @HandleFinally
>0051B666    jmp         0051B655
 0051B668    xor         eax,eax
 0051B66A    pop         edx
 0051B66B    pop         ecx
 0051B66C    pop         ecx
 0051B66D    mov         dword ptr fs:[eax],edx
 0051B670    push        51B68A
 0051B675    lea         eax,[ebp-14]
 0051B678    mov         edx,3
 0051B67D    call        @LStrArrayClr
 0051B682    ret
>0051B683    jmp         @HandleFinally
>0051B688    jmp         0051B675
 0051B68A    mov         eax,dword ptr [ebp-4]
 0051B68D    cmp         byte ptr [ebp-5],0
>0051B691    je          0051B6A2
 0051B693    call        @AfterConstruction
 0051B698    pop         dword ptr fs:[0]
 0051B69F    add         esp,0C
 0051B6A2    mov         eax,dword ptr [ebp-4]
 0051B6A5    pop         ebx
 0051B6A6    mov         esp,ebp
 0051B6A8    pop         ebp
 0051B6A9    ret
*}
end;

//0051B708
{*procedure sub_0051B708(?:?);
begin
 0051B708    push        ebp
 0051B709    mov         ebp,esp
 0051B70B    mov         ecx,0B
 0051B710    push        0
 0051B712    push        0
 0051B714    dec         ecx
>0051B715    jne         0051B710
 0051B717    push        ecx
 0051B718    push        ebx
 0051B719    mov         dword ptr [ebp-4],eax
 0051B71C    xor         eax,eax
 0051B71E    push        ebp
 0051B71F    push        51BA22
 0051B724    push        dword ptr fs:[eax]
 0051B727    mov         dword ptr fs:[eax],esp
 0051B72A    mov         eax,dword ptr [ebp-4]
 0051B72D    cmp         dword ptr [eax+4],0
>0051B731    jne         0051B749
 0051B733    mov         ecx,51BA38;'TConfig.Update before create FConfigFile'
 0051B738    mov         dl,1
 0051B73A    mov         eax,[004653B4];Exception
 0051B73F    call        Exception.Create;Exception.Create
 0051B744    call        @RaiseExcept
 0051B749    push        0
 0051B74B    lea         eax,[ebp-8]
 0051B74E    push        eax
 0051B74F    lea         edx,[ebp-0C]
 0051B752    mov         eax,51B6E0;^gvar_0055C664
 0051B757    call        LoadResString
 0051B75C    mov         edx,dword ptr [ebp-0C]
 0051B75F    mov         ecx,51BA6C;'ConfigPKPath'
 0051B764    mov         eax,dword ptr [ebp-4]
 0051B767    mov         eax,dword ptr [eax+4]
 0051B76A    mov         ebx,dword ptr [eax]
 0051B76C    call        dword ptr [ebx]
 0051B76E    mov         edx,dword ptr [ebp-8]
 0051B771    mov         eax,dword ptr [ebp-4]
 0051B774    add         eax,8
 0051B777    call        @LStrAsg
 0051B77C    push        0
 0051B77E    lea         eax,[ebp-10]
 0051B781    push        eax
 0051B782    lea         edx,[ebp-14]
 0051B785    mov         eax,51B6E0;^gvar_0055C664
 0051B78A    call        LoadResString
 0051B78F    mov         edx,dword ptr [ebp-14]
 0051B792    mov         ecx,51BA84;'MiniMapPath'
 0051B797    mov         eax,dword ptr [ebp-4]
 0051B79A    mov         eax,dword ptr [eax+4]
 0051B79D    mov         ebx,dword ptr [eax]
 0051B79F    call        dword ptr [ebx]
 0051B7A1    mov         edx,dword ptr [ebp-10]
 0051B7A4    mov         eax,dword ptr [ebp-4]
 0051B7A7    add         eax,0C
 0051B7AA    call        @LStrAsg
 0051B7AF    push        1
 0051B7B1    lea         edx,[ebp-18]
 0051B7B4    mov         eax,51B6E0;^gvar_0055C664
 0051B7B9    call        LoadResString
 0051B7BE    mov         edx,dword ptr [ebp-18]
 0051B7C1    mov         ecx,51BA98;'SnifferLogs'
 0051B7C6    mov         eax,dword ptr [ebp-4]
 0051B7C9    mov         eax,dword ptr [eax+4]
 0051B7CC    mov         ebx,dword ptr [eax]
 0051B7CE    call        dword ptr [ebx+10]
 0051B7D1    mov         edx,dword ptr [ebp-4]
 0051B7D4    mov         byte ptr [edx+10],al
 0051B7D7    push        0
 0051B7D9    lea         eax,[ebp-1C]
 0051B7DC    push        eax
 0051B7DD    lea         edx,[ebp-20]
 0051B7E0    mov         eax,51B6E0;^gvar_0055C664
 0051B7E5    call        LoadResString
 0051B7EA    mov         edx,dword ptr [ebp-20]
 0051B7ED    mov         ecx,51BAAC;'SnifferLogsPath'
 0051B7F2    mov         eax,dword ptr [ebp-4]
 0051B7F5    mov         eax,dword ptr [eax+4]
 0051B7F8    mov         ebx,dword ptr [eax]
 0051B7FA    call        dword ptr [ebx]
 0051B7FC    mov         edx,dword ptr [ebp-1C]
 0051B7FF    mov         eax,dword ptr [ebp-4]
 0051B802    add         eax,14
 0051B805    call        @LStrAsg
 0051B80A    push        1
 0051B80C    lea         edx,[ebp-24]
 0051B80F    mov         eax,51B6E0;^gvar_0055C664
 0051B814    call        LoadResString
 0051B819    mov         edx,dword ptr [ebp-24]
 0051B81C    mov         ecx,51BAC4;'ExceptionLogs'
 0051B821    mov         eax,dword ptr [ebp-4]
 0051B824    mov         eax,dword ptr [eax+4]
 0051B827    mov         ebx,dword ptr [eax]
 0051B829    call        dword ptr [ebx+10]
 0051B82C    mov         edx,dword ptr [ebp-4]
 0051B82F    mov         byte ptr [edx+18],al
 0051B832    push        0
 0051B834    lea         eax,[ebp-28]
 0051B837    push        eax
 0051B838    lea         edx,[ebp-2C]
 0051B83B    mov         eax,51B6E0;^gvar_0055C664
 0051B840    call        LoadResString
 0051B845    mov         edx,dword ptr [ebp-2C]
 0051B848    mov         ecx,51BADC;'ExceptionLogsPath'
 0051B84D    mov         eax,dword ptr [ebp-4]
 0051B850    mov         eax,dword ptr [eax+4]
 0051B853    mov         ebx,dword ptr [eax]
 0051B855    call        dword ptr [ebx]
 0051B857    mov         edx,dword ptr [ebp-28]
 0051B85A    mov         eax,dword ptr [ebp-4]
 0051B85D    add         eax,1C
 0051B860    call        @LStrAsg
 0051B865    push        51BAF8;'bad_ip'
 0051B86A    lea         eax,[ebp-30]
 0051B86D    push        eax
 0051B86E    lea         edx,[ebp-34]
 0051B871    mov         eax,51B6E8;^gvar_0055C664
 0051B876    call        LoadResString
 0051B87B    mov         edx,dword ptr [ebp-34]
 0051B87E    mov         ecx,51BB08;'IP'
 0051B883    mov         eax,dword ptr [ebp-4]
 0051B886    mov         eax,dword ptr [eax+4]
 0051B889    mov         ebx,dword ptr [eax]
 0051B88B    call        dword ptr [ebx]
 0051B88D    mov         edx,dword ptr [ebp-30]
 0051B890    mov         eax,dword ptr [ebp-4]
 0051B893    add         eax,24
 0051B896    call        @LStrAsg
 0051B89B    push        0
 0051B89D    lea         edx,[ebp-38]
 0051B8A0    mov         eax,51B6E8;^gvar_0055C664
 0051B8A5    call        LoadResString
 0051B8AA    mov         edx,dword ptr [ebp-38]
 0051B8AD    mov         ecx,51BB14;'Port'
 0051B8B2    mov         eax,dword ptr [ebp-4]
 0051B8B5    mov         eax,dword ptr [eax+4]
 0051B8B8    mov         ebx,dword ptr [eax]
 0051B8BA    call        dword ptr [ebx+8]
 0051B8BD    mov         edx,dword ptr [ebp-4]
 0051B8C0    mov         dword ptr [edx+28],eax
 0051B8C3    push        0
 0051B8C5    lea         edx,[ebp-3C]
 0051B8C8    mov         eax,51B6F0;^gvar_0055C664
 0051B8CD    call        LoadResString
 0051B8D2    mov         edx,dword ptr [ebp-3C]
 0051B8D5    mov         ecx,51BB14;'Port'
 0051B8DA    mov         eax,dword ptr [ebp-4]
 0051B8DD    mov         eax,dword ptr [eax+4]
 0051B8E0    mov         ebx,dword ptr [eax]
 0051B8E2    call        dword ptr [ebx+8]
 0051B8E5    mov         edx,dword ptr [ebp-4]
 0051B8E8    mov         dword ptr [edx+20],eax
 0051B8EB    push        0
 0051B8ED    lea         edx,[ebp-40]
 0051B8F0    mov         eax,51B6F8;^gvar_0055C664
 0051B8F5    call        LoadResString
 0051B8FA    mov         edx,dword ptr [ebp-40]
 0051B8FD    mov         ecx,51BB24;'Enabled'
 0051B902    mov         eax,dword ptr [ebp-4]
 0051B905    mov         eax,dword ptr [eax+4]
 0051B908    mov         ebx,dword ptr [eax]
 0051B90A    call        dword ptr [ebx+10]
 0051B90D    mov         edx,dword ptr [ebp-4]
 0051B910    mov         byte ptr [edx+2C],al
 0051B913    mov         eax,dword ptr [ebp-4]
 0051B916    cmp         byte ptr [eax+2C],0
>0051B91A    je          0051B9DF
 0051B920    push        0
 0051B922    lea         eax,[ebp-44]
 0051B925    push        eax
 0051B926    lea         edx,[ebp-48]
 0051B929    mov         eax,51B6F8;^gvar_0055C664
 0051B92E    call        LoadResString
 0051B933    mov         edx,dword ptr [ebp-48]
 0051B936    mov         ecx,51BB34;'Username'
 0051B93B    mov         eax,dword ptr [ebp-4]
 0051B93E    mov         eax,dword ptr [eax+4]
 0051B941    mov         ebx,dword ptr [eax]
 0051B943    call        dword ptr [ebx]
 0051B945    mov         edx,dword ptr [ebp-44]
 0051B948    mov         eax,dword ptr [ebp-4]
 0051B94B    add         eax,30
 0051B94E    call        @LStrAsg
 0051B953    push        0
 0051B955    lea         eax,[ebp-4C]
 0051B958    push        eax
 0051B959    lea         edx,[ebp-50]
 0051B95C    mov         eax,51B6F8;^gvar_0055C664
 0051B961    call        LoadResString
 0051B966    mov         edx,dword ptr [ebp-50]
 0051B969    mov         ecx,51BB48;'Password'
 0051B96E    mov         eax,dword ptr [ebp-4]
 0051B971    mov         eax,dword ptr [eax+4]
 0051B974    mov         ebx,dword ptr [eax]
 0051B976    call        dword ptr [ebx]
 0051B978    mov         edx,dword ptr [ebp-4C]
 0051B97B    mov         eax,dword ptr [ebp-4]
 0051B97E    add         eax,34
 0051B981    call        @LStrAsg
 0051B986    push        0
 0051B988    lea         eax,[ebp-54]
 0051B98B    push        eax
 0051B98C    lea         edx,[ebp-58]
 0051B98F    mov         eax,51B6F8;^gvar_0055C664
 0051B994    call        LoadResString
 0051B999    mov         edx,dword ptr [ebp-58]
 0051B99C    mov         ecx,51BB5C;'PIN'
 0051B9A1    mov         eax,dword ptr [ebp-4]
 0051B9A4    mov         eax,dword ptr [eax+4]
 0051B9A7    mov         ebx,dword ptr [eax]
 0051B9A9    call        dword ptr [ebx]
 0051B9AB    mov         edx,dword ptr [ebp-54]
 0051B9AE    mov         eax,dword ptr [ebp-4]
 0051B9B1    add         eax,38
 0051B9B4    call        @LStrAsg
 0051B9B9    mov         eax,dword ptr [ebp-4]
 0051B9BC    mov         eax,dword ptr [eax+38]
 0051B9BF    call        @DynArrayLength
 0051B9C4    cmp         eax,8
>0051B9C7    je          0051B9DF
 0051B9C9    mov         ecx,51BB68;'If autologin enabled PIN must have 8 digits'
 0051B9CE    mov         dl,1
 0051B9D0    mov         eax,[004653B4];Exception
 0051B9D5    call        Exception.Create;Exception.Create
 0051B9DA    call        @RaiseExcept
 0051B9DF    push        0
 0051B9E1    lea         edx,[ebp-5C]
 0051B9E4    mov         eax,51B700;^gvar_0055C664
 0051B9E9    call        LoadResString
 0051B9EE    mov         edx,dword ptr [ebp-5C]
 0051B9F1    mov         ecx,51BB9C;'Sound'
 0051B9F6    mov         eax,dword ptr [ebp-4]
 0051B9F9    mov         eax,dword ptr [eax+4]
 0051B9FC    mov         ebx,dword ptr [eax]
 0051B9FE    call        dword ptr [ebx+10]
 0051BA01    mov         edx,dword ptr [ebp-4]
 0051BA04    mov         byte ptr [edx+3C],al
 0051BA07    xor         eax,eax
 0051BA09    pop         edx
 0051BA0A    pop         ecx
 0051BA0B    pop         ecx
 0051BA0C    mov         dword ptr fs:[eax],edx
 0051BA0F    push        51BA29
 0051BA14    lea         eax,[ebp-5C]
 0051BA17    mov         edx,16
 0051BA1C    call        @LStrArrayClr
 0051BA21    ret
>0051BA22    jmp         @HandleFinally
>0051BA27    jmp         0051BA14
 0051BA29    pop         ebx
 0051BA2A    mov         esp,ebp
 0051BA2C    pop         ebp
 0051BA2D    ret
end;*}

Initialization
//0051BBE0
{*
 0051BBE0    push        ebp
 0051BBE1    mov         ebp,esp
 0051BBE3    sub         dword ptr ds:[55E048],1
>0051BBEA    jae         0051BC02
 0051BBEC    mov         ecx,51BC0C;'config.ini'
 0051BBF1    mov         dl,1
 0051BBF3    mov         eax,[0051B514];TConfig
 0051BBF8    call        TConfig.Create;TConfig.Create
 0051BBFD    mov         [0055E044],eax;gvar_0055E044:TConfig
 0051BC02    pop         ebp
 0051BC03    ret
*}
Finalization
//0051BBA4
{*
 0051BBA4    push        ebp
 0051BBA5    mov         ebp,esp
 0051BBA7    xor         eax,eax
 0051BBA9    push        ebp
 0051BBAA    push        51BBD5
 0051BBAF    push        dword ptr fs:[eax]
 0051BBB2    mov         dword ptr fs:[eax],esp
 0051BBB5    inc         dword ptr ds:[55E048]
>0051BBBB    jne         0051BBC7
 0051BBBD    mov         eax,[0055E044];gvar_0055E044:TConfig
 0051BBC2    call        TObject.Free
 0051BBC7    xor         eax,eax
 0051BBC9    pop         edx
 0051BBCA    pop         ecx
 0051BBCB    pop         ecx
 0051BBCC    mov         dword ptr fs:[eax],edx
 0051BBCF    push        51BBDC
 0051BBD4    ret
>0051BBD5    jmp         @HandleFinally
>0051BBDA    jmp         0051BBD4
 0051BBDC    pop         ebp
 0051BBDD    ret
*}
end.