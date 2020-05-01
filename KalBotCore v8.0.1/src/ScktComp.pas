//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ScktComp;

interface

uses
  SysUtils, Classes, , ScktComp;

type
  ESocketError = class(Exception)
  end;
  TServerType = (stNonBlocking, stThreadBlocking);
  TClientType = (ctNonBlocking, ctBlocking);
  TErrorEvent = (eeGeneral, eeSend, eeReceive, eeConnect, eeDisconnect, eeAccept, eeLookup);
  TSocketErrorEvent = procedure(Sender:TObject; Socket:TCustomWinSocket; ErrorEvent:TErrorEvent; var ErrorCode:Integer) of object;;
  TGetSocketEvent = procedure(Sender:TObject; Socket:Integer; var ClientSocket:TServerClientWinSocket) of object;;
  TGetThreadEvent = procedure(Sender:TObject; ClientSocket:TServerClientWinSocket; var SocketThread:TServerClientThread) of object;;
  TSocketNotifyEvent = procedure(Sender:TObject; Socket:TCustomWinSocket) of object;;
  TCustomWinSocket = class(TObject)
  public
    FSocket:TSocket;//f4
    FConnected:Boolean;//f8
    FSendStream:TStream;//fC
    FDropAfterSend:Boolean;//f10
    FHandle:HWND;//f14
    FAddr:TSockAddrIn;//f18
    FAsyncStyles:TAsyncStyles;//f28
    FLookupState:TLookupState;//f29
    FLookupHandle:THandle;//f2C
    FOnSocketEvent:TSocketEventEvent;//f30
    f32:word;//f32
    f34:dword;//f34
    FOnErrorEvent:TSocketErrorEvent;//f38
    f3A:word;//f3A
    f3C:dword;//f3C
    FSocketLock:TCriticalSection;//f40
    FGetHostData:Pointer;//f44
    FData:Pointer;//f48
    FService:String;//f4C
    FPort:word;//f50
    FClient:Boolean;//f52
    FQueueSize:Integer;//f54
    procedure DefaultHandler(var Message:void ); virtual;//004F6440
    destructor Destroy; virtual;//004F585C
    //procedure v0(?:?); virtual;//v0//004F58F0
    //procedure v4(?:?); virtual;//v4//004F5BE8
    //procedure v8(?:?); virtual;//v8//004F6328
    //procedure vC(?:?); virtual;//vC//004F6850
    //procedure v10(?:?); virtual;//v10//004F6A5C
    procedure CMSocketMessage(var Message:TCMSocketMessage); dynamic;//004F5CF0
    //procedure sub_004F5D7C(?:?); dynamic;//004F5D7C
    //procedure sub_004F6AA0(?:?); dynamic;//004F6AA0
    //procedure sub_004F64B8(?:?; ?:?; ?:?); dynamic;//004F64B8
    //procedure sub_004F6484(?:?; ?:?); dynamic;//004F6484
  end;
  TClientWinSocket = class(TCustomWinSocket)
  public
    .FClientType:TClientType;//f58
    //procedure v4(?:?); virtual;//v4//004F6C44
    constructor Create;//004F57BC
  end;
  TServerClientWinSocket = class(TCustomWinSocket)
  public
    FServerWinSocket:TServerWinSocket;//f58
    destructor Destroy; virtual;//004F6DC4
    //constructor Create(?:?);//004F6CE8
  end;
  TThreadNotifyEvent = procedure(Sender:TObject; Thread:TServerClientThread) of object;;
  TServerWinSocket = class(TCustomWinSocket)
  public
    FServerType:TServerType;//f58
    FThreadCacheSize:Integer;//f5C
    FConnections:TList;//f60
    FActiveThreads:TList;//f64
    FListLock:TCriticalSection;//f68
    FServerAcceptThread:TServerAcceptThread;//f6C
    FOnGetSocket:TGetSocketEvent;//f70
    f72:word;//f72
    f74:dword;//f74
    FOnGetThread:TGetThreadEvent;//f78
    f7A:word;//f7A
    f7C:dword;//f7C
    FOnThreadStart:TThreadNotifyEvent;//f80
    f82:word;//f82
    f84:dword;//f84
    FOnThreadEnd:TThreadNotifyEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    FOnClientConnect:TSocketNotifyEvent;//f90
    f92:word;//f92
    f94:dword;//f94
    FOnClientDisconnect:TSocketNotifyEvent;//f98
    f9A:word;//f9A
    f9C:dword;//f9C
    FOnClientRead:TSocketNotifyEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    FOnClientWrite:TSocketNotifyEvent;//fA8
    fAA:word;//fAA
    fAC:dword;//fAC
    FOnClientError:TSocketErrorEvent;//fB0
    fB2:word;//fB2
    fB4:dword;//fB4
    destructor Destroy; virtual;//004F6E9C
    //procedure v0(?:?); virtual;//v0//004F7154
    //procedure v8(?:?); virtual;//v8//004F7274
    //function v14(?:?):?; virtual;//v14//004F73B0
    //procedure sub_004F77FC(?:?; ?:?; ?:?); dynamic;//004F77FC
    //procedure sub_004F774C(?:?); dynamic;//004F774C
    //procedure sub_004F7718(?:?); dynamic;//004F7718
    //procedure sub_004F77C8(?:?); dynamic;//004F77C8
    //procedure sub_004F7794(?:?); dynamic;//004F7794
    //procedure sub_004F7638(?:?); dynamic;//004F7638
    //procedure sub_004F757C(?:?); dynamic;//004F757C
    //procedure sub_004F7604(?:?); dynamic;//004F7604
    //procedure sub_004F75D0(?:?); dynamic;//004F75D0
    constructor Create;//004F6E0C
  end;
  TServerAcceptThread = class(TThread)
  public
    ...FServerSocket:TServerWinSocket;//f40
    procedure Execute; virtual;//v4//004F7894
    //constructor Create(?:?);//004F7840
  end;
  TServerClientThread = class(TThread)
  public
    FClientSocket:TServerClientWinSocket;//f40
    FServerSocket:TServerWinSocket;//f44
    FException:Exception;//f48
    FEvent:TSimpleEvent;//f4C
    FKeepInCache:Boolean;//f50
    FData:Pointer;//f54
    destructor Destroy; virtual;//004F7940
    procedure v0; virtual;//v0//004F7A7C
    procedure Execute; virtual;//v4//004F7BD4
    procedure v8; virtual;//v8//004F7C7C
    //procedure vC(?:?); virtual;//vC//004F7B14
    //procedure v10(?:?; ?:?); virtual;//v10//004F7B3C
    procedure v14; virtual;//v14//004F7B6C
    //constructor Create(?:?);//004F78BC
    function StartConnect:Boolean;//004F7D58
    function EndConnect:Boolean;//004F7D90
  end;
  TAbstractSocket = class(TComponent)
  public
    FActive:Boolean;//f30
    FPort:Integer;//f34
    FAddress:String;//f38
    FHost:String;//f3C
    FService:String;//f40
    procedure vC; virtual;//vC//004F7EA0
    procedure v30; virtual; abstract;//v30//00402C24
    procedure v34; virtual; abstract;//v34//00402C24
    procedure v38; virtual; abstract;//v38//00402C24
  end;
  TCustomSocket = class(TAbstractSocket)
  public
    FOnLookup:TSocketNotifyEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FOnConnect:TSocketNotifyEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    FOnConnecting:TSocketNotifyEvent;//f58
    f5A:word;//f5A
    f5C:dword;//f5C
    FOnDisconnect:TSocketNotifyEvent;//f60
    f62:word;//f62
    f64:dword;//f64
    FOnListen:TSocketNotifyEvent;//f68
    f6A:word;//f6A
    f6C:dword;//f6C
    FOnAccept:TSocketNotifyEvent;//f70
    f72:word;//f72
    f74:dword;//f74
    FOnRead:TSocketNotifyEvent;//f78
    f7A:word;//f7A
    f7C:dword;//f7C
    FOnWrite:TSocketNotifyEvent;//f80
    f82:word;//f82
    f84:dword;//f84
    FOnError:TSocketErrorEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    //procedure v30(?:?; ?:?); virtual;//v30//004F80B4
    //procedure v34(?:?; ?:?; ?:?); virtual;//v34//004F820C
  end;
  TClientSocket = class(TCustomSocket)
  public
    FClientSocket:TClientWinSocket;//f90
    destructor Destroy; virtual;//004F82C0
    constructor v2C; virtual;//v2C//004F8250
    //procedure v38(?:?); virtual;//v38//004F8300
    procedure SetActive(Value:Boolean);//004F7E24
    procedure SetAddress(Value:String);//004F7EC0
    procedure SetHost(Value:String);//004F7F4C
    procedure SetPort(Value:Integer);//004F7FD8
    procedure SetService(Value:String);//004F8028
    //function GetClientType:?;//004F838C
    procedure SetClientType(Value:TClientType);//004F83AC
  end;
  TCustomServerSocket = class(TCustomSocket)
  public
    ................................FServerSocket:TServerWinSocket;//f90
    destructor Destroy; virtual;//004F83D0
    //procedure v38(?:?); virtual;//v38//004F8410
  end;
  TServerSocket = class(TCustomServerSocket)
  public
    constructor v2C; virtual;//v2C//004F87F0
    //function GetServerType:?;//004F8490
    procedure SetServerType(Value:TServerType);//004F84B0
    //procedure GetOnGetThread(?:?);//004F84D4
    //procedure SetOnGetThread(Value:TGetThreadEvent; ?:?; ?:?);//004F84FC
    //procedure GetOnGetSocket(?:?);//004F8520
    //procedure SetOnGetSocket(Value:TGetSocketEvent; ?:?; ?:?);//004F8548
    //function GetThreadCacheSize:?;//004F856C
    procedure SetThreadCacheSize(Value:Integer);//004F858C
    //procedure GetOnThreadStart(?:?);//004F85B0
    //procedure GetOnThreadEnd(?:?);//004F85E0
    //procedure SetOnThreadStart(Value:TThreadNotifyEvent; ?:?; ?:?);//004F8610
    //procedure SetOnThreadEnd(Value:TThreadNotifyEvent; ?:?; ?:?);//004F8638
    //procedure GetOnClientConnect(?:?; ?:?);//004F8660
    //procedure SetOnClientConnect(Value:TSocketNotifyEvent; ?:?; ?:?);//004F8700
    //procedure GetOnClientError(?:?);//004F8798
    //procedure SetOnClientError(Value:TSocketErrorEvent; ?:?; ?:?);//004F87C8
  end;
    //function sub_004F559C(?:Integer; ?:AnsiString):?;//004F559C
    procedure sub_004F5668;//004F5668
    procedure sub_004F5718;//004F5718
    destructor Destroy;//004F585C
    //procedure sub_004F58F0(?:?);//004F58F0
    //procedure sub_004F5900(?:TCustomWinSocket; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004F5900
    procedure sub_004F5BD0(?:TClientWinSocket);//004F5BD0
    //procedure sub_004F5BE8(?:?);//004F5BE8
    procedure sub_004F5BF8(?:TCustomWinSocket);//004F5BF8
    procedure sub_004F5C10(?:TCustomWinSocket);//004F5C10
    function CheckError:Boolean;//004F5C28
    procedure CMSocketMessage(var Message:TCMSocketMessage);//004F5CF0
    //procedure sub_004F5D7C(?:?);//004F5D7C
    //procedure sub_004F5D94(?:?);//004F5D94
    //procedure sub_004F5DBC(?:?);//004F5DBC
    //procedure sub_004F5E3C(?:?; ?:?);//004F5E3C
    //procedure sub_004F5EDC(?:?);//004F5EDC
    //function sub_004F5F64(?:?):?;//004F5F64
    //function sub_004F5F9C(?:?; ?:?):?;//004F5F9C
    //function sub_004F6018(?:?; ?:?):?;//004F6018
    //procedure sub_004F6068(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004F6068
    //procedure sub_004F6114(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004F6114
    //procedure sub_004F6220(?:TClientWinSocket; ?:String; ?:String; ?:?; ?:?; ?:?);//004F6220
    //procedure sub_004F6328(?:?);//004F6328
    procedure DefaultHandler(var Message:void );//004F6440
    //procedure sub_004F6484(?:?; ?:?);//004F6484
    //procedure sub_004F64B8(?:?; ?:?; ?:?);//004F64B8
    procedure DropStream;//004F64F0
    //function sub_004F6538(?:TCustomWinSocket):?;//004F6538
    //function sub_004F66CC(?:?; ?:?; ?:?):?;//004F66CC
    //procedure sub_004F6818(?:?; ?:?);//004F6818
    //procedure sub_004F6850(?:?);//004F6850
    //function sub_004F6888(?:TServerClientWinSocket; ?:?; ?:?):?;//004F6888
    //procedure sub_004F6A5C(?:?);//004F6A5C
    //procedure sub_004F6AA0(?:?);//004F6AA0
    //procedure sub_004F6C44(?:?);//004F6C44
    //procedure sub_004F6C70(?:TClientWinSocket; ?:?);//004F6C70
    destructor Destroy;//004F6DC4
    destructor Destroy;//004F6E9C
    //procedure sub_004F6EF0(?:?; ?:?);//004F6EF0
    //procedure sub_004F6F5C(?:?; ?:?);//004F6F5C
    //procedure sub_004F6FB4(?:?; ?:Pointer);//004F6FB4
    procedure sub_004F7038(?:TServerWinSocket; ?:TServerClientThread);//004F7038
    //procedure sub_004F7090(?:TServerWinSocket; ?:TServerClientThread; ?:TServerClientWinSocket; ?:?);//004F7090
    //procedure sub_004F7100(?:TServerWinSocket; ?:TServerClientThread; ?:TServerClientWinSocket; ?:?; ?:?);//004F7100
    //function sub_004F7130(?:TServerWinSocket; ?:?):?;//004F7130
    //procedure sub_004F7154(?:?);//004F7154
    //procedure sub_004F7274(?:?);//004F7274
    //function sub_004F73B0(?:?):?;//004F73B0
    //procedure sub_004F73D8(?:TServerWinSocket; ?:?; ?:?; ?:?; ?:?; ?:?);//004F73D8
    //procedure sub_004F7444(?:TServerWinSocket; ?:?);//004F7444
    procedure sub_004F74BC(?:TServerWinSocket; ?:Integer);//004F74BC
    //procedure sub_004F757C(?:?);//004F757C
    //procedure sub_004F75D0(?:?);//004F75D0
    //procedure sub_004F7604(?:?);//004F7604
    //procedure sub_004F7638(?:?);//004F7638
    //procedure sub_004F7718(?:?);//004F7718
    //procedure sub_004F774C(?:?);//004F774C
    //procedure sub_004F7794(?:?);//004F7794
    //procedure sub_004F77C8(?:?);//004F77C8
    //procedure sub_004F77FC(?:?; ?:?; ?:?);//004F77FC
    procedure Execute;//004F7894
    destructor Destroy;//004F7940
    //procedure sub_004F7988(?:Pointer; ?:?);//004F7988
    procedure sub_004F7A7C;//004F7A7C
    //procedure sub_004F7ACC(?:?; ?:?; ?:?; ?:?);//004F7ACC
    //procedure sub_004F7AEC(?:?; ?:?; ?:?; ?:?; ?:?);//004F7AEC
    //procedure sub_004F7B14(?:?);//004F7B14
    //procedure sub_004F7B3C(?:?; ?:?);//004F7B3C
    procedure sub_004F7B6C;//004F7B6C
    procedure Execute;//004F7BD4
    procedure sub_004F7C7C;//004F7C7C
    //procedure sub_004F7DD0(?:?; ?:?; ?:?; ?:?);//004F7DD0
    //procedure sub_004F7DF8(?:?; ?:?; ?:?; ?:?; ?:?);//004F7DF8
    procedure sub_004F7E70(?:TCustomSocket; ?:TCustomWinSocket);//004F7E70
    procedure sub_004F7EA0;//004F7EA0
    //procedure sub_004F80B4(?:?; ?:?);//004F80B4
    //procedure sub_004F820C(?:?; ?:?; ?:?);//004F820C
    constructor sub_004F8250;//004F8250
    destructor Destroy;//004F82C0
    //procedure sub_004F8300(?:?);//004F8300
    destructor Destroy;//004F83D0
    //procedure sub_004F8410(?:?);//004F8410
    constructor sub_004F87F0;//004F87F0

implementation

//004F559C
{*function sub_004F559C(?:Integer; ?:AnsiString):?;
begin
 004F559C    push        ebp
 004F559D    mov         ebp,esp
 004F559F    add         esp,0FFFFFFD8
 004F55A2    push        ebx
 004F55A3    xor         ecx,ecx
 004F55A5    mov         dword ptr [ebp-28],ecx
 004F55A8    mov         dword ptr [ebp-8],edx
 004F55AB    mov         dword ptr [ebp-4],eax
 004F55AE    xor         eax,eax
 004F55B0    push        ebp
 004F55B1    push        4F5656
 004F55B6    push        dword ptr fs:[eax]
 004F55B9    mov         dword ptr fs:[eax],esp
 004F55BC    cmp         dword ptr [ebp-4],0
>004F55C0    je          004F563B
 004F55C2    call        wsock32.WSAGetLastError
 004F55C7    mov         dword ptr [ebp-0C],eax
 004F55CA    cmp         dword ptr [ebp-0C],2733
>004F55D1    je          004F5640
 004F55D3    call        @GetTls
 004F55D8    cmp         dword ptr [eax+218],0;{threadvar_536}
>004F55DF    je          004F55F3
 004F55E1    call        @GetTls
 004F55E6    mov         ebx,dword ptr [eax+218];{threadvar_536}
 004F55EC    mov         eax,dword ptr [ebp-0C]
 004F55EF    call        ebx
>004F55F1    jmp         004F5640
 004F55F3    lea         edx,[ebp-28]
 004F55F6    mov         eax,dword ptr [ebp-0C]
 004F55F9    call        SysErrorMessage
 004F55FE    mov         eax,dword ptr [ebp-28]
 004F5601    mov         dword ptr [ebp-24],eax
 004F5604    mov         byte ptr [ebp-20],0B
 004F5608    mov         eax,dword ptr [ebp-0C]
 004F560B    mov         dword ptr [ebp-1C],eax
 004F560E    mov         byte ptr [ebp-18],0
 004F5612    mov         eax,dword ptr [ebp-8]
 004F5615    mov         dword ptr [ebp-14],eax
 004F5618    mov         byte ptr [ebp-10],0B
 004F561C    lea         eax,[ebp-24]
 004F561F    push        eax
 004F5620    push        2
 004F5622    mov         ecx,dword ptr ds:[55B5A0];^sWindowsSocketError:TResStringRec
 004F5628    mov         dl,1
 004F562A    mov         eax,[004F4680];ESocketError
 004F562F    call        Exception.CreateResFmt;ESocketError.Create
 004F5634    call        @RaiseExcept
>004F5639    jmp         004F5640
 004F563B    xor         eax,eax
 004F563D    mov         dword ptr [ebp-0C],eax
 004F5640    xor         eax,eax
 004F5642    pop         edx
 004F5643    pop         ecx
 004F5644    pop         ecx
 004F5645    mov         dword ptr fs:[eax],edx
 004F5648    push        4F565D
 004F564D    lea         eax,[ebp-28]
 004F5650    call        @LStrClr
 004F5655    ret
>004F5656    jmp         @HandleFinally
>004F565B    jmp         004F564D
 004F565D    mov         eax,dword ptr [ebp-0C]
 004F5660    pop         ebx
 004F5661    mov         esp,ebp
 004F5663    pop         ebp
 004F5664    ret
end;*}

//004F5668
procedure sub_004F5668;
begin
{*
 004F5668    push        ebp
 004F5669    mov         ebp,esp
 004F566B    add         esp,0FFFFFFE0
 004F566E    xor         eax,eax
 004F5670    mov         dword ptr [ebp-20],eax
 004F5673    xor         eax,eax
 004F5675    push        ebp
 004F5676    push        4F56F7
 004F567B    push        dword ptr fs:[eax]
 004F567E    mov         dword ptr fs:[eax],esp
 004F5681    push        55DE70;gvar_0055DE70
 004F5686    push        101
 004F568B    call        wsock32.WSAStartup
 004F5690    mov         dword ptr [ebp-4],eax
 004F5693    cmp         dword ptr [ebp-4],0
>004F5697    je          004F56E1
 004F5699    lea         edx,[ebp-20]
 004F569C    mov         eax,dword ptr [ebp-4]
 004F569F    call        SysErrorMessage
 004F56A4    mov         eax,dword ptr [ebp-20]
 004F56A7    mov         dword ptr [ebp-1C],eax
 004F56AA    mov         byte ptr [ebp-18],0B
 004F56AE    mov         eax,dword ptr [ebp-4]
 004F56B1    mov         dword ptr [ebp-14],eax
 004F56B4    mov         byte ptr [ebp-10],0
 004F56B8    mov         eax,4F570C;'WSAStartup'
 004F56BD    mov         dword ptr [ebp-0C],eax
 004F56C0    mov         byte ptr [ebp-8],0B
 004F56C4    lea         eax,[ebp-1C]
 004F56C7    push        eax
 004F56C8    push        2
 004F56CA    mov         ecx,dword ptr ds:[55B5A0];^sWindowsSocketError:TResStringRec
 004F56D0    mov         dl,1
 004F56D2    mov         eax,[004F4680];ESocketError
 004F56D7    call        Exception.CreateResFmt;ESocketError.Create
 004F56DC    call        @RaiseExcept
 004F56E1    xor         eax,eax
 004F56E3    pop         edx
 004F56E4    pop         ecx
 004F56E5    pop         ecx
 004F56E6    mov         dword ptr fs:[eax],edx
 004F56E9    push        4F56FE
 004F56EE    lea         eax,[ebp-20]
 004F56F1    call        @LStrClr
 004F56F6    ret
>004F56F7    jmp         @HandleFinally
>004F56FC    jmp         004F56EE
 004F56FE    mov         esp,ebp
 004F5700    pop         ebp
 004F5701    ret
*}
end;

//004F5718
procedure sub_004F5718;
begin
{*
 004F5718    push        ebp
 004F5719    mov         ebp,esp
 004F571B    add         esp,0FFFFFFE0
 004F571E    xor         eax,eax
 004F5720    mov         dword ptr [ebp-20],eax
 004F5723    xor         eax,eax
 004F5725    push        ebp
 004F5726    push        4F579D
 004F572B    push        dword ptr fs:[eax]
 004F572E    mov         dword ptr fs:[eax],esp
 004F5731    call        wsock32.WSACleanup
 004F5736    mov         dword ptr [ebp-4],eax
 004F5739    cmp         dword ptr [ebp-4],0
>004F573D    je          004F5787
 004F573F    lea         edx,[ebp-20]
 004F5742    mov         eax,dword ptr [ebp-4]
 004F5745    call        SysErrorMessage
 004F574A    mov         eax,dword ptr [ebp-20]
 004F574D    mov         dword ptr [ebp-1C],eax
 004F5750    mov         byte ptr [ebp-18],0B
 004F5754    mov         eax,dword ptr [ebp-4]
 004F5757    mov         dword ptr [ebp-14],eax
 004F575A    mov         byte ptr [ebp-10],0
 004F575E    mov         eax,4F57B0;'WSACleanup'
 004F5763    mov         dword ptr [ebp-0C],eax
 004F5766    mov         byte ptr [ebp-8],0B
 004F576A    lea         eax,[ebp-1C]
 004F576D    push        eax
 004F576E    push        2
 004F5770    mov         ecx,dword ptr ds:[55B5A0];^sWindowsSocketError:TResStringRec
 004F5776    mov         dl,1
 004F5778    mov         eax,[004F4680];ESocketError
 004F577D    call        Exception.CreateResFmt;ESocketError.Create
 004F5782    call        @RaiseExcept
 004F5787    xor         eax,eax
 004F5789    pop         edx
 004F578A    pop         ecx
 004F578B    pop         ecx
 004F578C    mov         dword ptr fs:[eax],edx
 004F578F    push        4F57A4
 004F5794    lea         eax,[ebp-20]
 004F5797    call        @LStrClr
 004F579C    ret
>004F579D    jmp         @HandleFinally
>004F57A2    jmp         004F5794
 004F57A4    mov         esp,ebp
 004F57A6    pop         ebp
 004F57A7    ret
*}
end;

//004F57BC
constructor TClientWinSocket.Create;
begin
{*
 004F57BC    push        ebp
 004F57BD    mov         ebp,esp
 004F57BF    add         esp,0FFFFFFF4
 004F57C2    test        dl,dl
>004F57C4    je          004F57CE
 004F57C6    add         esp,0FFFFFFF0
 004F57C9    call        @ClassCreate
 004F57CE    mov         dword ptr [ebp-0C],ecx
 004F57D1    mov         byte ptr [ebp-5],dl
 004F57D4    mov         dword ptr [ebp-4],eax
 004F57D7    xor         edx,edx
 004F57D9    mov         eax,dword ptr [ebp-4]
 004F57DC    call        TObject.Create
 004F57E1    call        004F5668
 004F57E6    mov         dl,1
 004F57E8    mov         eax,[0049211C];TCriticalSection
 004F57ED    call        TCriticalSection.Create;TCriticalSection.Create
 004F57F2    mov         edx,dword ptr [ebp-4]
 004F57F5    mov         dword ptr [edx+40],eax
 004F57F8    mov         eax,dword ptr [ebp-4]
 004F57FB    mov         dl,byte ptr ds:[4F5858];0x33 gvar_004F5858
 004F5801    mov         byte ptr [eax+28],dl
 004F5804    mov         eax,dword ptr [ebp-4]
 004F5807    mov         edx,dword ptr [ebp-0C]
 004F580A    mov         dword ptr [eax+4],edx
 004F580D    mov         eax,dword ptr [ebp-4]
 004F5810    mov         word ptr [eax+18],2
 004F5816    mov         eax,dword ptr [ebp-4]
 004F5819    xor         edx,edx
 004F581B    mov         dword ptr [eax+1C],edx
 004F581E    mov         eax,dword ptr [ebp-4]
 004F5821    mov         word ptr [eax+1A],0
 004F5827    mov         eax,dword ptr [ebp-4]
 004F582A    cmp         dword ptr [eax+4],0FFFFFFFF
 004F582E    setne       al
 004F5831    mov         edx,dword ptr [ebp-4]
 004F5834    mov         byte ptr [edx+8],al
 004F5837    mov         eax,dword ptr [ebp-4]
 004F583A    cmp         byte ptr [ebp-5],0
>004F583E    je          004F584F
 004F5840    call        @AfterConstruction
 004F5845    pop         dword ptr fs:[0]
 004F584C    add         esp,0C
 004F584F    mov         eax,dword ptr [ebp-4]
 004F5852    mov         esp,ebp
 004F5854    pop         ebp
 004F5855    ret
*}
end;

//004F585C
destructor TCustomWinSocket.Destroy;
begin
{*
 004F585C    push        ebp
 004F585D    mov         ebp,esp
 004F585F    add         esp,0FFFFFFF8
 004F5862    call        @BeforeDestruction
 004F5867    mov         byte ptr [ebp-5],dl
 004F586A    mov         dword ptr [ebp-4],eax
 004F586D    mov         eax,dword ptr [ebp-4]
 004F5870    xor         edx,edx
 004F5872    mov         dword ptr [eax+30],edx
 004F5875    mov         dword ptr [eax+34],edx
 004F5878    mov         eax,dword ptr [ebp-4]
 004F587B    cmp         byte ptr [eax+8],0
>004F587F    je          004F5898
 004F5881    mov         eax,dword ptr [ebp-4]
 004F5884    cmp         dword ptr [eax+4],0FFFFFFFF
>004F5888    je          004F5898
 004F588A    mov         eax,dword ptr [ebp-4]
 004F588D    mov         edx,dword ptr [eax+4]
 004F5890    mov         eax,dword ptr [ebp-4]
 004F5893    mov         ecx,dword ptr [eax]
 004F5895    call        dword ptr [ecx+8]
 004F5898    mov         eax,dword ptr [ebp-4]
 004F589B    cmp         dword ptr [eax+14],0
>004F589F    je          004F58AC
 004F58A1    mov         eax,dword ptr [ebp-4]
 004F58A4    mov         eax,dword ptr [eax+14]
 004F58A7    call        004848D0
 004F58AC    mov         eax,dword ptr [ebp-4]
 004F58AF    mov         eax,dword ptr [eax+40]
 004F58B2    call        TObject.Free
 004F58B7    call        004F5718
 004F58BC    mov         eax,dword ptr [ebp-4]
 004F58BF    mov         eax,dword ptr [eax+44]
 004F58C2    call        @FreeMem
 004F58C7    mov         eax,dword ptr [ebp-4]
 004F58CA    xor         edx,edx
 004F58CC    mov         dword ptr [eax+44],edx
 004F58CF    mov         dl,byte ptr [ebp-5]
 004F58D2    and         dl,0FC
 004F58D5    mov         eax,dword ptr [ebp-4]
 004F58D8    call        TObject.Destroy
 004F58DD    cmp         byte ptr [ebp-5],0
>004F58E1    jle         004F58EB
 004F58E3    mov         eax,dword ptr [ebp-4]
 004F58E6    call        @ClassDestroy
 004F58EB    pop         ecx
 004F58EC    pop         ecx
 004F58ED    pop         ebp
 004F58EE    ret
*}
end;

//004F58F0
{*procedure sub_004F58F0(?:?);
begin
 004F58F0    push        ebp
 004F58F1    mov         ebp,esp
 004F58F3    add         esp,0FFFFFFF8
 004F58F6    mov         dword ptr [ebp-8],edx
 004F58F9    mov         dword ptr [ebp-4],eax
 004F58FC    pop         ecx
 004F58FD    pop         ecx
 004F58FE    pop         ebp
 004F58FF    ret
end;*}

//004F5900
{*procedure sub_004F5900(?:TCustomWinSocket; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004F5900    push        ebp
 004F5901    mov         ebp,esp
 004F5903    add         esp,0FFFFFFF0
 004F5906    push        ebx
 004F5907    push        esi
 004F5908    push        edi
 004F5909    mov         dword ptr [ebp-0C],ecx
 004F590C    mov         dword ptr [ebp-8],edx
 004F590F    mov         dword ptr [ebp-4],eax
 004F5912    xor         eax,eax
 004F5914    push        ebp
 004F5915    push        4F5B63
 004F591A    push        dword ptr fs:[eax]
 004F591D    mov         dword ptr fs:[eax],esp
 004F5920    mov         eax,dword ptr [ebp-4]
 004F5923    mov         al,byte ptr [eax+29]
 004F5926    sub         al,1
>004F5928    jb          004F593D
>004F592A    je          004F5A78
 004F5930    dec         al
>004F5932    je          004F5B0F
>004F5938    jmp         004F5B31
 004F593D    cmp         byte ptr [ebp+8],0
>004F5941    jne         004F5957
 004F5943    mov         eax,dword ptr [ebp-4]
 004F5946    mov         byte ptr [eax+29],1
 004F594A    mov         eax,dword ptr [ebp-4]
 004F594D    xor         edx,edx
 004F594F    mov         dword ptr [eax+1C],edx
>004F5952    jmp         004F5B31
 004F5957    cmp         dword ptr [ebp-8],0
>004F595B    je          004F59FE
 004F5961    mov         eax,dword ptr [ebp-4]
 004F5964    cmp         dword ptr [eax+44],0
>004F5968    jne         004F597A
 004F596A    mov         eax,400
 004F596F    call        004660E8
 004F5974    mov         edx,dword ptr [ebp-4]
 004F5977    mov         dword ptr [edx+44],eax
 004F597A    push        400
 004F597F    mov         eax,dword ptr [ebp-4]
 004F5982    mov         eax,dword ptr [eax+44]
 004F5985    push        eax
 004F5986    mov         eax,dword ptr [ebp-8]
 004F5989    call        @LStrToPChar
 004F598E    push        eax
 004F598F    push        403
 004F5994    mov         eax,dword ptr [ebp-4]
 004F5997    call        004F5F64
 004F599C    push        eax
 004F599D    call        wsock32.WSAAsyncGetHostByName
 004F59A2    mov         edx,dword ptr [ebp-4]
 004F59A5    mov         dword ptr [edx+2C],eax
 004F59A8    mov         eax,dword ptr [ebp-4]
 004F59AB    cmp         dword ptr [eax+2C],0
 004F59AF    sete        al
 004F59B2    and         eax,7F
 004F59B5    mov         edx,4F5B94;'WSAASyncGetHostByName'
 004F59BA    call        004F559C
 004F59BF    mov         eax,dword ptr [ebp-4]
 004F59C2    add         eax,4C
 004F59C5    mov         edx,dword ptr [ebp+14]
 004F59C8    call        @LStrAsg
 004F59CD    mov         eax,dword ptr [ebp-4]
 004F59D0    mov         dx,word ptr [ebp+10]
 004F59D4    mov         word ptr [eax+50],dx
 004F59D8    mov         eax,dword ptr [ebp-4]
 004F59DB    mov         edx,dword ptr [ebp+0C]
 004F59DE    mov         dword ptr [eax+54],edx
 004F59E1    mov         eax,dword ptr [ebp-4]
 004F59E4    mov         dl,byte ptr [ebp+8]
 004F59E7    mov         byte ptr [eax+52],dl
 004F59EA    mov         eax,dword ptr [ebp-4]
 004F59ED    mov         byte ptr [eax+29],1
 004F59F1    xor         eax,eax
 004F59F3    pop         edx
 004F59F4    pop         ecx
 004F59F5    pop         ecx
 004F59F6    mov         dword ptr fs:[eax],edx
>004F59F9    jmp         004F5B80
 004F59FE    cmp         dword ptr [ebp-0C],0
>004F5A02    je          004F5A24
 004F5A04    mov         eax,dword ptr [ebp-4]
 004F5A07    mov         byte ptr [eax+29],1
 004F5A0B    mov         eax,dword ptr [ebp-0C]
 004F5A0E    call        @LStrToPChar
 004F5A13    push        eax
 004F5A14    call        wsock32.inet_addr
 004F5A19    mov         edx,dword ptr [ebp-4]
 004F5A1C    mov         dword ptr [edx+1C],eax
>004F5A1F    jmp         004F5B31
 004F5A24    mov         dword ptr [ebp-10],456
 004F5A2B    lea         eax,[ebp-10]
 004F5A2E    push        eax
 004F5A2F    mov         cl,6
 004F5A31    mov         edx,dword ptr [ebp-4]
 004F5A34    mov         eax,dword ptr [ebp-4]
 004F5A37    mov         si,0FFFE
 004F5A3B    call        @CallDynaInst
 004F5A40    mov         eax,dword ptr [ebp-4]
 004F5A43    mov         edx,dword ptr [eax+4]
 004F5A46    mov         eax,dword ptr [ebp-4]
 004F5A49    mov         ecx,dword ptr [eax]
 004F5A4B    call        dword ptr [ecx+8]
 004F5A4E    cmp         dword ptr [ebp-10],0
>004F5A52    je          004F5A6B
 004F5A54    mov         ecx,dword ptr ds:[55B0B4];^sNoAddress:TResStringRec
 004F5A5A    mov         dl,1
 004F5A5C    mov         eax,[004F4680];ESocketError
 004F5A61    call        Exception.Create;ESocketError.Create
 004F5A66    call        @RaiseExcept
 004F5A6B    xor         eax,eax
 004F5A6D    pop         edx
 004F5A6E    pop         ecx
 004F5A6F    pop         ecx
 004F5A70    mov         dword ptr fs:[eax],edx
>004F5A73    jmp         004F5B80
 004F5A78    cmp         dword ptr [ebp+14],0
>004F5A7C    je          004F5AF5
 004F5A7E    mov         eax,dword ptr [ebp-4]
 004F5A81    cmp         dword ptr [eax+44],0
>004F5A85    jne         004F5A97
 004F5A87    mov         eax,400
 004F5A8C    call        004660E8
 004F5A91    mov         edx,dword ptr [ebp-4]
 004F5A94    mov         dword ptr [edx+44],eax
 004F5A97    push        400
 004F5A9C    mov         eax,dword ptr [ebp-4]
 004F5A9F    mov         eax,dword ptr [eax+44]
 004F5AA2    push        eax
 004F5AA3    push        4F5BAC
 004F5AA8    mov         eax,dword ptr [ebp+14]
 004F5AAB    call        @LStrToPChar
 004F5AB0    push        eax
 004F5AB1    push        403
 004F5AB6    mov         eax,dword ptr [ebp-4]
 004F5AB9    call        004F5F64
 004F5ABE    push        eax
 004F5ABF    call        wsock32.WSAAsyncGetServByName
 004F5AC4    mov         edx,dword ptr [ebp-4]
 004F5AC7    mov         dword ptr [edx+2C],eax
 004F5ACA    mov         eax,dword ptr [ebp-4]
 004F5ACD    cmp         dword ptr [eax+2C],0
 004F5AD1    sete        al
 004F5AD4    and         eax,7F
 004F5AD7    mov         edx,4F5BB8;'WSAASyncGetServByName'
 004F5ADC    call        004F559C
 004F5AE1    mov         eax,dword ptr [ebp-4]
 004F5AE4    mov         byte ptr [eax+29],2
 004F5AE8    xor         eax,eax
 004F5AEA    pop         edx
 004F5AEB    pop         ecx
 004F5AEC    pop         ecx
 004F5AED    mov         dword ptr fs:[eax],edx
>004F5AF0    jmp         004F5B80
 004F5AF5    mov         eax,dword ptr [ebp-4]
 004F5AF8    mov         byte ptr [eax+29],2
 004F5AFC    mov         ax,word ptr [ebp+10]
 004F5B00    push        eax
 004F5B01    call        wsock32.htons
 004F5B06    mov         edx,dword ptr [ebp-4]
 004F5B09    mov         word ptr [edx+1A],ax
>004F5B0D    jmp         004F5B31
 004F5B0F    mov         eax,dword ptr [ebp-4]
 004F5B12    mov         byte ptr [eax+29],0
 004F5B16    cmp         byte ptr [ebp+8],0
>004F5B1A    je          004F5B26
 004F5B1C    mov         eax,dword ptr [ebp-4]
 004F5B1F    call        004F5EDC
>004F5B24    jmp         004F5B31
 004F5B26    mov         edx,dword ptr [ebp+0C]
 004F5B29    mov         eax,dword ptr [ebp-4]
 004F5B2C    call        004F5E3C
 004F5B31    mov         eax,dword ptr [ebp-4]
 004F5B34    cmp         byte ptr [eax+29],0
>004F5B38    je          004F5B59
 004F5B3A    mov         eax,dword ptr [ebp+14]
 004F5B3D    push        eax
 004F5B3E    mov         ax,word ptr [ebp+10]
 004F5B42    push        eax
 004F5B43    mov         eax,dword ptr [ebp+0C]
 004F5B46    push        eax
 004F5B47    mov         al,byte ptr [ebp+8]
 004F5B4A    push        eax
 004F5B4B    mov         ecx,dword ptr [ebp-0C]
 004F5B4E    mov         edx,dword ptr [ebp-8]
 004F5B51    mov         eax,dword ptr [ebp-4]
 004F5B54    call        004F5900
 004F5B59    xor         eax,eax
 004F5B5B    pop         edx
 004F5B5C    pop         ecx
 004F5B5D    pop         ecx
 004F5B5E    mov         dword ptr fs:[eax],edx
>004F5B61    jmp         004F5B80
>004F5B63    jmp         @HandleAnyException
 004F5B68    mov         eax,dword ptr [ebp-4]
 004F5B6B    mov         edx,dword ptr [eax+4]
 004F5B6E    mov         eax,dword ptr [ebp-4]
 004F5B71    mov         ecx,dword ptr [eax]
 004F5B73    call        dword ptr [ecx+8]
 004F5B76    call        @RaiseAgain
 004F5B7B    call        @DoneExcept
 004F5B80    pop         edi
 004F5B81    pop         esi
 004F5B82    pop         ebx
 004F5B83    mov         esp,ebp
 004F5B85    pop         ebp
 004F5B86    ret         10
end;*}

//004F5BD0
procedure sub_004F5BD0(?:TClientWinSocket);
begin
{*
 004F5BD0    push        ebp
 004F5BD1    mov         ebp,esp
 004F5BD3    push        ecx
 004F5BD4    mov         dword ptr [ebp-4],eax
 004F5BD7    mov         eax,dword ptr [ebp-4]
 004F5BDA    mov         edx,dword ptr [eax+4]
 004F5BDD    mov         eax,dword ptr [ebp-4]
 004F5BE0    mov         ecx,dword ptr [eax]
 004F5BE2    call        dword ptr [ecx+8]
 004F5BE5    pop         ecx
 004F5BE6    pop         ebp
 004F5BE7    ret
*}
end;

//004F5BE8
{*procedure sub_004F5BE8(?:?);
begin
 004F5BE8    push        ebp
 004F5BE9    mov         ebp,esp
 004F5BEB    add         esp,0FFFFFFF8
 004F5BEE    mov         dword ptr [ebp-8],edx
 004F5BF1    mov         dword ptr [ebp-4],eax
 004F5BF4    pop         ecx
 004F5BF5    pop         ecx
 004F5BF6    pop         ebp
 004F5BF7    ret
end;*}

//004F5BF8
procedure sub_004F5BF8(?:TCustomWinSocket);
begin
{*
 004F5BF8    push        ebp
 004F5BF9    mov         ebp,esp
 004F5BFB    push        ecx
 004F5BFC    mov         dword ptr [ebp-4],eax
 004F5BFF    mov         eax,dword ptr [ebp-4]
 004F5C02    mov         eax,dword ptr [eax+40]
 004F5C05    call        004923E0
 004F5C0A    pop         ecx
 004F5C0B    pop         ebp
 004F5C0C    ret
*}
end;

//004F5C10
procedure sub_004F5C10(?:TCustomWinSocket);
begin
{*
 004F5C10    push        ebp
 004F5C11    mov         ebp,esp
 004F5C13    push        ecx
 004F5C14    mov         dword ptr [ebp-4],eax
 004F5C17    mov         eax,dword ptr [ebp-4]
 004F5C1A    mov         eax,dword ptr [eax+40]
 004F5C1D    call        004923F4
 004F5C22    pop         ecx
 004F5C23    pop         ebp
 004F5C24    ret
*}
end;

//004F5C28
function CheckError:Boolean;
begin
{*
 004F5C28    push        ebp
 004F5C29    mov         ebp,esp
 004F5C2B    add         esp,0FFFFFFF0
 004F5C2E    push        esi
 004F5C2F    mov         eax,dword ptr [ebp+8]
 004F5C32    mov         eax,dword ptr [eax-4]
 004F5C35    cmp         word ptr [eax+0A],0
>004F5C3A    je          004F5CE3
 004F5C40    mov         byte ptr [ebp-1],0
 004F5C44    mov         eax,dword ptr [ebp+8]
 004F5C47    mov         eax,dword ptr [eax-4]
 004F5C4A    movzx       eax,word ptr [eax+0A]
 004F5C4E    mov         dword ptr [ebp-8],eax
 004F5C51    mov         eax,dword ptr [ebp+8]
 004F5C54    mov         eax,dword ptr [eax-4]
 004F5C57    movzx       eax,word ptr [eax+8]
 004F5C5B    cmp         eax,8
>004F5C5E    jg          004F5C6A
>004F5C60    je          004F5C8E
 004F5C62    dec         eax
>004F5C63    je          004F5C82
 004F5C65    dec         eax
>004F5C66    je          004F5C88
>004F5C68    jmp         004F5C94
 004F5C6A    sub         eax,10
>004F5C6D    je          004F5C76
 004F5C6F    sub         eax,10
>004F5C72    je          004F5C7C
>004F5C74    jmp         004F5C94
 004F5C76    mov         byte ptr [ebp-2],3
>004F5C7A    jmp         004F5C98
 004F5C7C    mov         byte ptr [ebp-2],4
>004F5C80    jmp         004F5C98
 004F5C82    mov         byte ptr [ebp-2],2
>004F5C86    jmp         004F5C98
 004F5C88    mov         byte ptr [ebp-2],1
>004F5C8C    jmp         004F5C98
 004F5C8E    mov         byte ptr [ebp-2],5
>004F5C92    jmp         004F5C98
 004F5C94    mov         byte ptr [ebp-2],0
 004F5C98    lea         eax,[ebp-8]
 004F5C9B    push        eax
 004F5C9C    mov         eax,dword ptr [ebp+8]
 004F5C9F    mov         edx,dword ptr [eax-8]
 004F5CA2    mov         eax,dword ptr [ebp+8]
 004F5CA5    mov         eax,dword ptr [eax-8]
 004F5CA8    mov         cl,byte ptr [ebp-2]
 004F5CAB    mov         si,0FFFE
 004F5CAF    call        @CallDynaInst
 004F5CB4    cmp         dword ptr [ebp-8],0
>004F5CB8    je          004F5CE7
 004F5CBA    mov         eax,dword ptr [ebp-8]
 004F5CBD    mov         dword ptr [ebp-10],eax
 004F5CC0    mov         byte ptr [ebp-0C],0
 004F5CC4    lea         eax,[ebp-10]
 004F5CC7    push        eax
 004F5CC8    push        0
 004F5CCA    mov         ecx,dword ptr ds:[55B1A8];^sAsyncSocketError:TResStringRec
 004F5CD0    mov         dl,1
 004F5CD2    mov         eax,[004F4680];ESocketError
 004F5CD7    call        Exception.CreateResFmt
 004F5CDC    call        @RaiseExcept
>004F5CE1    jmp         004F5CE7
 004F5CE3    mov         byte ptr [ebp-1],1
 004F5CE7    mov         al,byte ptr [ebp-1]
 004F5CEA    pop         esi
 004F5CEB    mov         esp,ebp
 004F5CED    pop         ebp
 004F5CEE    ret
*}
end;

//004F5CF0
procedure TCustomWinSocket.CMSocketMessage(var Message:TCMSocketMessage);
begin
{*
 004F5CF0    push        ebp
 004F5CF1    mov         ebp,esp
 004F5CF3    add         esp,0FFFFFFF8
 004F5CF6    mov         dword ptr [ebp-4],edx
 004F5CF9    mov         dword ptr [ebp-8],eax
 004F5CFC    push        ebp
 004F5CFD    call        CheckError
 004F5D02    pop         ecx
 004F5D03    test        al,al
>004F5D05    je          004F5D76
 004F5D07    mov         eax,dword ptr [ebp-4]
 004F5D0A    movzx       eax,word ptr [eax+8]
 004F5D0E    cmp         eax,8
>004F5D11    jg          004F5D1D
>004F5D13    je          004F5D69
 004F5D15    dec         eax
>004F5D16    je          004F5D49
 004F5D18    dec         eax
>004F5D19    je          004F5D59
>004F5D1B    jmp         004F5D76
 004F5D1D    sub         eax,10
>004F5D20    je          004F5D29
 004F5D22    sub         eax,10
>004F5D25    je          004F5D39
>004F5D27    jmp         004F5D76
 004F5D29    mov         edx,dword ptr [ebp-4]
 004F5D2C    mov         edx,dword ptr [edx+4]
 004F5D2F    mov         eax,dword ptr [ebp-8]
 004F5D32    mov         ecx,dword ptr [eax]
 004F5D34    call        dword ptr [ecx+4]
>004F5D37    jmp         004F5D76
 004F5D39    mov         edx,dword ptr [ebp-4]
 004F5D3C    mov         edx,dword ptr [edx+4]
 004F5D3F    mov         eax,dword ptr [ebp-8]
 004F5D42    mov         ecx,dword ptr [eax]
 004F5D44    call        dword ptr [ecx+8]
>004F5D47    jmp         004F5D76
 004F5D49    mov         edx,dword ptr [ebp-4]
 004F5D4C    mov         edx,dword ptr [edx+4]
 004F5D4F    mov         eax,dword ptr [ebp-8]
 004F5D52    mov         ecx,dword ptr [eax]
 004F5D54    call        dword ptr [ecx+0C]
>004F5D57    jmp         004F5D76
 004F5D59    mov         edx,dword ptr [ebp-4]
 004F5D5C    mov         edx,dword ptr [edx+4]
 004F5D5F    mov         eax,dword ptr [ebp-8]
 004F5D62    mov         ecx,dword ptr [eax]
 004F5D64    call        dword ptr [ecx+10]
>004F5D67    jmp         004F5D76
 004F5D69    mov         edx,dword ptr [ebp-4]
 004F5D6C    mov         edx,dword ptr [edx+4]
 004F5D6F    mov         eax,dword ptr [ebp-8]
 004F5D72    mov         ecx,dword ptr [eax]
 004F5D74    call        dword ptr [ecx]
 004F5D76    pop         ecx
 004F5D77    pop         ecx
 004F5D78    pop         ebp
 004F5D79    ret
*}
end;

//004F5D7C
{*procedure TCustomWinSocket.sub_004F5D7C(?:?);
begin
 004F5D7C    push        ebp
 004F5D7D    mov         ebp,esp
 004F5D7F    add         esp,0FFFFFFF8
 004F5D82    mov         dword ptr [ebp-8],edx
 004F5D85    mov         dword ptr [ebp-4],eax
 004F5D88    mov         eax,dword ptr [ebp-4]
 004F5D8B    call        TObject.Free
 004F5D90    pop         ecx
 004F5D91    pop         ecx
 004F5D92    pop         ebp
 004F5D93    ret
end;*}

//004F5D94
{*procedure sub_004F5D94(?:?);
begin
 004F5D94    push        ebp
 004F5D95    mov         ebp,esp
 004F5D97    push        ecx
 004F5D98    mov         dword ptr [ebp-4],eax
 004F5D9B    mov         eax,dword ptr [ebp-4]
 004F5D9E    cmp         dword ptr [eax+14],0
>004F5DA2    je          004F5DB9
 004F5DA4    push        0
 004F5DA6    push        0
 004F5DA8    push        402
 004F5DAD    mov         eax,dword ptr [ebp-4]
 004F5DB0    mov         eax,dword ptr [eax+14]
 004F5DB3    push        eax
 004F5DB4    call        user32.PostMessageA
 004F5DB9    pop         ecx
 004F5DBA    pop         ebp
 004F5DBB    ret
end;*}

//004F5DBC
{*procedure sub_004F5DBC(?:?);
begin
 004F5DBC    push        ebp
 004F5DBD    mov         ebp,esp
 004F5DBF    add         esp,0FFFFFFF0
 004F5DC2    mov         dword ptr [ebp-4],eax
 004F5DC5    xor         eax,eax
 004F5DC7    mov         dword ptr [ebp-8],eax
 004F5DCA    xor         eax,eax
 004F5DCC    mov         dword ptr [ebp-0C],eax
 004F5DCF    mov         al,[004F5E38];0x0 gvar_004F5E38
 004F5DD4    mov         edx,dword ptr [ebp-4]
 004F5DD7    cmp         al,byte ptr [edx+28]
>004F5DDA    je          004F5DEE
 004F5DDC    mov         dword ptr [ebp-8],401
 004F5DE3    mov         eax,dword ptr [ebp-4]
 004F5DE6    call        004F5F64
 004F5DEB    mov         dword ptr [ebp-0C],eax
 004F5DEE    mov         eax,dword ptr [ebp-4]
 004F5DF1    movzx       eax,byte ptr [eax+28]
 004F5DF5    push        eax
 004F5DF6    mov         eax,dword ptr [ebp-8]
 004F5DF9    push        eax
 004F5DFA    mov         eax,dword ptr [ebp-0C]
 004F5DFD    push        eax
 004F5DFE    mov         eax,dword ptr [ebp-4]
 004F5E01    mov         eax,dword ptr [eax+4]
 004F5E04    push        eax
 004F5E05    call        wsock32.WSAAsyncSelect
 004F5E0A    mov         al,[004F5E38];0x0 gvar_004F5E38
 004F5E0F    mov         edx,dword ptr [ebp-4]
 004F5E12    cmp         al,byte ptr [edx+28]
>004F5E15    jne         004F5E31
 004F5E17    xor         eax,eax
 004F5E19    mov         dword ptr [ebp-10],eax
 004F5E1C    lea         eax,[ebp-10]
 004F5E1F    push        eax
 004F5E20    push        8004667E
 004F5E25    mov         eax,dword ptr [ebp-4]
 004F5E28    mov         eax,dword ptr [eax+4]
 004F5E2B    push        eax
 004F5E2C    call        wsock32.ioctlsocket
 004F5E31    mov         esp,ebp
 004F5E33    pop         ebp
 004F5E34    ret
end;*}

//004F5E3C
{*procedure sub_004F5E3C(?:?; ?:?);
begin
 004F5E3C    push        ebp
 004F5E3D    mov         ebp,esp
 004F5E3F    add         esp,0FFFFFFF8
 004F5E42    push        esi
 004F5E43    mov         dword ptr [ebp-8],edx
 004F5E46    mov         dword ptr [ebp-4],eax
 004F5E49    push        10
 004F5E4B    mov         eax,dword ptr [ebp-4]
 004F5E4E    add         eax,18
 004F5E51    push        eax
 004F5E52    mov         eax,dword ptr [ebp-4]
 004F5E55    mov         eax,dword ptr [eax+4]
 004F5E58    push        eax
 004F5E59    call        wsock32.bind
 004F5E5E    mov         edx,4F5EC4;'bind'
 004F5E63    call        004F559C
 004F5E68    mov         eax,dword ptr [ebp-4]
 004F5E6B    call        004F5DBC
 004F5E70    cmp         dword ptr [ebp-8],5
>004F5E74    jle         004F5E7D
 004F5E76    mov         dword ptr [ebp-8],5
 004F5E7D    mov         cl,4
 004F5E7F    mov         edx,dword ptr [ebp-4]
 004F5E82    mov         eax,dword ptr [ebp-4]
 004F5E85    mov         si,0FFFF
 004F5E89    call        @CallDynaInst
 004F5E8E    mov         eax,dword ptr [ebp-8]
 004F5E91    push        eax
 004F5E92    mov         eax,dword ptr [ebp-4]
 004F5E95    mov         eax,dword ptr [eax+4]
 004F5E98    push        eax
 004F5E99    call        wsock32.listen
 004F5E9E    mov         edx,4F5ED4;'listen'
 004F5EA3    call        004F559C
 004F5EA8    mov         eax,dword ptr [ebp-4]
 004F5EAB    mov         byte ptr [eax+29],0
 004F5EAF    mov         eax,dword ptr [ebp-4]
 004F5EB2    mov         byte ptr [eax+8],1
 004F5EB6    pop         esi
 004F5EB7    pop         ecx
 004F5EB8    pop         ecx
 004F5EB9    pop         ebp
 004F5EBA    ret
end;*}

//004F5EDC
{*procedure sub_004F5EDC(?:?);
begin
 004F5EDC    push        ebp
 004F5EDD    mov         ebp,esp
 004F5EDF    push        ecx
 004F5EE0    push        esi
 004F5EE1    mov         dword ptr [ebp-4],eax
 004F5EE4    mov         eax,dword ptr [ebp-4]
 004F5EE7    call        004F5DBC
 004F5EEC    mov         cl,1
 004F5EEE    mov         edx,dword ptr [ebp-4]
 004F5EF1    mov         eax,dword ptr [ebp-4]
 004F5EF4    mov         si,0FFFF
 004F5EF8    call        @CallDynaInst
 004F5EFD    push        10
 004F5EFF    mov         eax,dword ptr [ebp-4]
 004F5F02    add         eax,18
 004F5F05    push        eax
 004F5F06    mov         eax,dword ptr [ebp-4]
 004F5F09    mov         eax,dword ptr [eax+4]
 004F5F0C    push        eax
 004F5F0D    call        wsock32.connect
 004F5F12    mov         edx,4F5F5C;'connect'
 004F5F17    call        004F559C
 004F5F1C    mov         eax,dword ptr [ebp-4]
 004F5F1F    mov         byte ptr [eax+29],0
 004F5F23    mov         eax,dword ptr [ebp-4]
 004F5F26    test        byte ptr [eax+28],10
>004F5F2A    jne         004F5F4D
 004F5F2C    mov         eax,dword ptr [ebp-4]
 004F5F2F    cmp         dword ptr [eax+4],0FFFFFFFF
 004F5F33    setne       al
 004F5F36    mov         edx,dword ptr [ebp-4]
 004F5F39    mov         byte ptr [edx+8],al
 004F5F3C    mov         cl,2
 004F5F3E    mov         edx,dword ptr [ebp-4]
 004F5F41    mov         eax,dword ptr [ebp-4]
 004F5F44    mov         si,0FFFF
 004F5F48    call        @CallDynaInst
 004F5F4D    pop         esi
 004F5F4E    pop         ecx
 004F5F4F    pop         ebp
 004F5F50    ret
end;*}

//004F5F64
{*function sub_004F5F64(?:?):?;
begin
 004F5F64    push        ebp
 004F5F65    mov         ebp,esp
 004F5F67    add         esp,0FFFFFFF8
 004F5F6A    mov         dword ptr [ebp-4],eax
 004F5F6D    mov         eax,dword ptr [ebp-4]
 004F5F70    cmp         dword ptr [eax+14],0
>004F5F74    jne         004F5F8A
 004F5F76    mov         eax,dword ptr [ebp-4]
 004F5F79    push        eax
 004F5F7A    push        4F69FC
 004F5F7F    call        00484814
 004F5F84    mov         edx,dword ptr [ebp-4]
 004F5F87    mov         dword ptr [edx+14],eax
 004F5F8A    mov         eax,dword ptr [ebp-4]
 004F5F8D    mov         eax,dword ptr [eax+14]
 004F5F90    mov         dword ptr [ebp-8],eax
 004F5F93    mov         eax,dword ptr [ebp-8]
 004F5F96    pop         ecx
 004F5F97    pop         ecx
 004F5F98    pop         ebp
 004F5F99    ret
end;*}

//004F5F9C
{*function sub_004F5F9C(?:?; ?:?):?;
begin
 004F5F9C    push        ebp
 004F5F9D    mov         ebp,esp
 004F5F9F    add         esp,0FFFFFFE8
 004F5FA2    mov         dword ptr [ebp-8],edx
 004F5FA5    mov         dword ptr [ebp-4],eax
 004F5FA8    mov         eax,dword ptr [ebp-8]
 004F5FAB    call        @LStrToPChar
 004F5FB0    push        eax
 004F5FB1    call        wsock32.gethostbyname
 004F5FB6    mov         dword ptr [ebp-10],eax
 004F5FB9    lea         eax,[ebp-14]
 004F5FBC    xor         ecx,ecx
 004F5FBE    mov         edx,4
 004F5FC3    call        @FillChar
 004F5FC8    cmp         dword ptr [ebp-10],0
>004F5FCC    je          004F600B
 004F5FCE    mov         eax,dword ptr [ebp-10]
 004F5FD1    mov         dword ptr [ebp-18],eax
 004F5FD4    mov         eax,dword ptr [ebp-18]
 004F5FD7    mov         eax,dword ptr [eax+0C]
 004F5FDA    mov         eax,dword ptr [eax]
 004F5FDC    mov         al,byte ptr [eax]
 004F5FDE    mov         byte ptr [ebp-14],al
 004F5FE1    mov         eax,dword ptr [ebp-18]
 004F5FE4    mov         eax,dword ptr [eax+0C]
 004F5FE7    mov         eax,dword ptr [eax]
 004F5FE9    mov         al,byte ptr [eax+1]
 004F5FEC    mov         byte ptr [ebp-13],al
 004F5FEF    mov         eax,dword ptr [ebp-18]
 004F5FF2    mov         eax,dword ptr [eax+0C]
 004F5FF5    mov         eax,dword ptr [eax]
 004F5FF7    mov         al,byte ptr [eax+2]
 004F5FFA    mov         byte ptr [ebp-12],al
 004F5FFD    mov         eax,dword ptr [ebp-18]
 004F6000    mov         eax,dword ptr [eax+0C]
 004F6003    mov         eax,dword ptr [eax]
 004F6005    mov         al,byte ptr [eax+3]
 004F6008    mov         byte ptr [ebp-11],al
 004F600B    mov         eax,dword ptr [ebp-14]
 004F600E    mov         dword ptr [ebp-0C],eax
 004F6011    mov         eax,dword ptr [ebp-0C]
 004F6014    mov         esp,ebp
 004F6016    pop         ebp
 004F6017    ret
end;*}

//004F6018
{*function sub_004F6018(?:?; ?:?):?;
begin
 004F6018    push        ebp
 004F6019    mov         ebp,esp
 004F601B    add         esp,0FFFFFFF0
 004F601E    mov         dword ptr [ebp-8],edx
 004F6021    mov         dword ptr [ebp-4],eax
 004F6024    push        4F6064
 004F6029    mov         eax,dword ptr [ebp-8]
 004F602C    call        @LStrToPChar
 004F6031    push        eax
 004F6032    call        wsock32.getservbyname
 004F6037    mov         dword ptr [ebp-10],eax
 004F603A    cmp         dword ptr [ebp-10],0
>004F603E    je          004F6055
 004F6040    mov         eax,dword ptr [ebp-10]
 004F6043    mov         ax,word ptr [eax+8]
 004F6047    push        eax
 004F6048    call        wsock32.ntohs
 004F604D    movzx       eax,ax
 004F6050    mov         dword ptr [ebp-0C],eax
>004F6053    jmp         004F605A
 004F6055    xor         eax,eax
 004F6057    mov         dword ptr [ebp-0C],eax
 004F605A    mov         eax,dword ptr [ebp-0C]
 004F605D    mov         esp,ebp
 004F605F    pop         ebp
 004F6060    ret
end;*}

//004F6068
{*procedure sub_004F6068(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004F6068    push        ebp
 004F6069    mov         ebp,esp
 004F606B    add         esp,0FFFFFFF4
 004F606E    mov         dword ptr [ebp-0C],ecx
 004F6071    mov         dword ptr [ebp-8],edx
 004F6074    mov         dword ptr [ebp-4],eax
 004F6077    mov         eax,dword ptr [ebp+8]
 004F607A    mov         word ptr [eax],2
 004F607F    cmp         dword ptr [ebp-8],0
>004F6083    je          004F6098
 004F6085    mov         edx,dword ptr [ebp-8]
 004F6088    mov         eax,dword ptr [ebp-4]
 004F608B    call        004F5F9C
 004F6090    mov         edx,dword ptr [ebp+8]
 004F6093    mov         dword ptr [edx+4],eax
>004F6096    jmp         004F60DB
 004F6098    cmp         dword ptr [ebp-0C],0
>004F609C    je          004F60B4
 004F609E    mov         eax,dword ptr [ebp-0C]
 004F60A1    call        @LStrToPChar
 004F60A6    push        eax
 004F60A7    call        wsock32.inet_addr
 004F60AC    mov         edx,dword ptr [ebp+8]
 004F60AF    mov         dword ptr [edx+4],eax
>004F60B2    jmp         004F60DB
 004F60B4    cmp         byte ptr [ebp+0C],0
>004F60B8    jne         004F60C4
 004F60BA    mov         eax,dword ptr [ebp+8]
 004F60BD    xor         edx,edx
 004F60BF    mov         dword ptr [eax+4],edx
>004F60C2    jmp         004F60DB
 004F60C4    mov         ecx,dword ptr ds:[55B0B4];^sNoAddress:TResStringRec
 004F60CA    mov         dl,1
 004F60CC    mov         eax,[004F4680];ESocketError
 004F60D1    call        Exception.Create;ESocketError.Create
 004F60D6    call        @RaiseExcept
 004F60DB    cmp         dword ptr [ebp+14],0
>004F60DF    je          004F60FB
 004F60E1    mov         edx,dword ptr [ebp+14]
 004F60E4    mov         eax,dword ptr [ebp-4]
 004F60E7    call        004F6018
 004F60EC    push        eax
 004F60ED    call        wsock32.htons
 004F60F2    mov         edx,dword ptr [ebp+8]
 004F60F5    mov         word ptr [edx+2],ax
>004F60F9    jmp         004F610C
 004F60FB    mov         ax,word ptr [ebp+10]
 004F60FF    push        eax
 004F6100    call        wsock32.htons
 004F6105    mov         edx,dword ptr [ebp+8]
 004F6108    mov         word ptr [edx+2],ax
 004F610C    mov         esp,ebp
 004F610E    pop         ebp
 004F610F    ret         10
end;*}

//004F6114
{*procedure sub_004F6114(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004F6114    push        ebp
 004F6115    mov         ebp,esp
 004F6117    add         esp,0FFFFFFE4
 004F611A    push        ebx
 004F611B    push        esi
 004F611C    push        edi
 004F611D    mov         dword ptr [ebp-0C],ecx
 004F6120    mov         dword ptr [ebp-8],edx
 004F6123    mov         dword ptr [ebp-4],eax
 004F6126    mov         eax,dword ptr [ebp-4]
 004F6129    cmp         byte ptr [eax+8],0
>004F612D    je          004F6146
 004F612F    mov         ecx,dword ptr ds:[55B6F0];^sCannotListenOnOpen:TResStringRec
 004F6135    mov         dl,1
 004F6137    mov         eax,[004F4680];ESocketError
 004F613C    call        Exception.Create;ESocketError.Create
 004F6141    call        @RaiseExcept
 004F6146    push        0
 004F6148    push        1
 004F614A    push        2
 004F614C    call        wsock32.socket
 004F6151    mov         edx,dword ptr [ebp-4]
 004F6154    mov         dword ptr [edx+4],eax
 004F6157    mov         eax,dword ptr [ebp-4]
 004F615A    cmp         dword ptr [eax+4],0FFFFFFFF
>004F615E    jne         004F6177
 004F6160    mov         ecx,dword ptr ds:[55B3D0];^sCannotCreateSocket:TResStringRec
 004F6166    mov         dl,1
 004F6168    mov         eax,[004F4680];ESocketError
 004F616D    call        Exception.Create;ESocketError.Create
 004F6172    call        @RaiseExcept
 004F6177    xor         eax,eax
 004F6179    push        ebp
 004F617A    push        4F61FA
 004F617F    push        dword ptr fs:[eax]
 004F6182    mov         dword ptr fs:[eax],esp
 004F6185    xor         ecx,ecx
 004F6187    mov         edx,dword ptr [ebp-4]
 004F618A    mov         eax,dword ptr [ebp-4]
 004F618D    mov         si,0FFFF
 004F6191    call        @CallDynaInst
 004F6196    cmp         byte ptr [ebp+8],0
>004F619A    je          004F61D3
 004F619C    mov         eax,dword ptr [ebp+14]
 004F619F    push        eax
 004F61A0    mov         ax,word ptr [ebp+10]
 004F61A4    push        eax
 004F61A5    push        0
 004F61A7    lea         eax,[ebp-1C]
 004F61AA    push        eax
 004F61AB    mov         ecx,dword ptr [ebp-0C]
 004F61AE    mov         edx,dword ptr [ebp-8]
 004F61B1    mov         eax,dword ptr [ebp-4]
 004F61B4    call        004F6068
 004F61B9    mov         eax,dword ptr [ebp-4]
 004F61BC    lea         esi,[ebp-1C]
 004F61BF    lea         edi,[eax+18]
 004F61C2    movs        dword ptr [edi],dword ptr [esi]
 004F61C3    movs        dword ptr [edi],dword ptr [esi]
 004F61C4    movs        dword ptr [edi],dword ptr [esi]
 004F61C5    movs        dword ptr [edi],dword ptr [esi]
 004F61C6    mov         edx,dword ptr [ebp+0C]
 004F61C9    mov         eax,dword ptr [ebp-4]
 004F61CC    call        004F5E3C
>004F61D1    jmp         004F61F0
 004F61D3    mov         eax,dword ptr [ebp+14]
 004F61D6    push        eax
 004F61D7    mov         ax,word ptr [ebp+10]
 004F61DB    push        eax
 004F61DC    mov         eax,dword ptr [ebp+0C]
 004F61DF    push        eax
 004F61E0    push        0
 004F61E2    mov         ecx,dword ptr [ebp-0C]
 004F61E5    mov         edx,dword ptr [ebp-8]
 004F61E8    mov         eax,dword ptr [ebp-4]
 004F61EB    call        004F5900
 004F61F0    xor         eax,eax
 004F61F2    pop         edx
 004F61F3    pop         ecx
 004F61F4    pop         ecx
 004F61F5    mov         dword ptr fs:[eax],edx
>004F61F8    jmp         004F6217
>004F61FA    jmp         @HandleAnyException
 004F61FF    mov         eax,dword ptr [ebp-4]
 004F6202    mov         edx,dword ptr [eax+4]
 004F6205    mov         eax,dword ptr [ebp-4]
 004F6208    mov         ecx,dword ptr [eax]
 004F620A    call        dword ptr [ecx+8]
 004F620D    call        @RaiseAgain
 004F6212    call        @DoneExcept
 004F6217    pop         edi
 004F6218    pop         esi
 004F6219    pop         ebx
 004F621A    mov         esp,ebp
 004F621C    pop         ebp
 004F621D    ret         10
end;*}

//004F6220
{*procedure sub_004F6220(?:TClientWinSocket; ?:String; ?:String; ?:?; ?:?; ?:?);
begin
 004F6220    push        ebp
 004F6221    mov         ebp,esp
 004F6223    add         esp,0FFFFFFE4
 004F6226    push        ebx
 004F6227    push        esi
 004F6228    push        edi
 004F6229    mov         dword ptr [ebp-0C],ecx
 004F622C    mov         dword ptr [ebp-8],edx
 004F622F    mov         dword ptr [ebp-4],eax
 004F6232    mov         eax,dword ptr [ebp-4]
 004F6235    cmp         byte ptr [eax+8],0
>004F6239    je          004F6252
 004F623B    mov         ecx,dword ptr ds:[55B460];^sSocketAlreadyOpen:TResStringRec
 004F6241    mov         dl,1
 004F6243    mov         eax,[004F4680];ESocketError
 004F6248    call        Exception.Create;ESocketError.Create
 004F624D    call        @RaiseExcept
 004F6252    push        0
 004F6254    push        1
 004F6256    push        2
 004F6258    call        wsock32.socket
 004F625D    mov         edx,dword ptr [ebp-4]
 004F6260    mov         dword ptr [edx+4],eax
 004F6263    mov         eax,dword ptr [ebp-4]
 004F6266    cmp         dword ptr [eax+4],0FFFFFFFF
>004F626A    jne         004F6283
 004F626C    mov         ecx,dword ptr ds:[55B3D0];^sCannotCreateSocket:TResStringRec
 004F6272    mov         dl,1
 004F6274    mov         eax,[004F4680];ESocketError
 004F6279    call        Exception.Create;ESocketError.Create
 004F627E    call        @RaiseExcept
 004F6283    xor         eax,eax
 004F6285    push        ebp
 004F6286    push        4F6301
 004F628B    push        dword ptr fs:[eax]
 004F628E    mov         dword ptr fs:[eax],esp
 004F6291    xor         ecx,ecx
 004F6293    mov         edx,dword ptr [ebp-4]
 004F6296    mov         eax,dword ptr [ebp-4]
 004F6299    mov         si,0FFFF
 004F629D    call        @CallDynaInst
 004F62A2    cmp         byte ptr [ebp+8],0
>004F62A6    je          004F62DC
 004F62A8    mov         eax,dword ptr [ebp+10]
 004F62AB    push        eax
 004F62AC    mov         ax,word ptr [ebp+0C]
 004F62B0    push        eax
 004F62B1    push        1
 004F62B3    lea         eax,[ebp-1C]
 004F62B6    push        eax
 004F62B7    mov         ecx,dword ptr [ebp-0C]
 004F62BA    mov         edx,dword ptr [ebp-8]
 004F62BD    mov         eax,dword ptr [ebp-4]
 004F62C0    call        004F6068
 004F62C5    mov         eax,dword ptr [ebp-4]
 004F62C8    lea         esi,[ebp-1C]
 004F62CB    lea         edi,[eax+18]
 004F62CE    movs        dword ptr [edi],dword ptr [esi]
 004F62CF    movs        dword ptr [edi],dword ptr [esi]
 004F62D0    movs        dword ptr [edi],dword ptr [esi]
 004F62D1    movs        dword ptr [edi],dword ptr [esi]
 004F62D2    mov         eax,dword ptr [ebp-4]
 004F62D5    call        004F5EDC
>004F62DA    jmp         004F62F7
 004F62DC    mov         eax,dword ptr [ebp+10]
 004F62DF    push        eax
 004F62E0    mov         ax,word ptr [ebp+0C]
 004F62E4    push        eax
 004F62E5    push        0
 004F62E7    push        1
 004F62E9    mov         ecx,dword ptr [ebp-0C]
 004F62EC    mov         edx,dword ptr [ebp-8]
 004F62EF    mov         eax,dword ptr [ebp-4]
 004F62F2    call        004F5900
 004F62F7    xor         eax,eax
 004F62F9    pop         edx
 004F62FA    pop         ecx
 004F62FB    pop         ecx
 004F62FC    mov         dword ptr fs:[eax],edx
>004F62FF    jmp         004F631E
>004F6301    jmp         @HandleAnyException
 004F6306    mov         eax,dword ptr [ebp-4]
 004F6309    mov         edx,dword ptr [eax+4]
 004F630C    mov         eax,dword ptr [ebp-4]
 004F630F    mov         ecx,dword ptr [eax]
 004F6311    call        dword ptr [ecx+8]
 004F6314    call        @RaiseAgain
 004F6319    call        @DoneExcept
 004F631E    pop         edi
 004F631F    pop         esi
 004F6320    pop         ebx
 004F6321    mov         esp,ebp
 004F6323    pop         ebp
 004F6324    ret         0C
end;*}

//004F6328
{*procedure sub_004F6328(?:?);
begin
 004F6328    push        ebp
 004F6329    mov         ebp,esp
 004F632B    add         esp,0FFFFFFF8
 004F632E    push        esi
 004F632F    mov         dword ptr [ebp-8],edx
 004F6332    mov         dword ptr [ebp-4],eax
 004F6335    mov         eax,dword ptr [ebp-4]
 004F6338    call        004F5BF8
 004F633D    xor         eax,eax
 004F633F    push        ebp
 004F6340    push        4F63FD
 004F6345    push        dword ptr fs:[eax]
 004F6348    mov         dword ptr fs:[eax],esp
 004F634B    mov         eax,dword ptr [ebp-4]
 004F634E    cmp         dword ptr [eax+2C],0;TCustomWinSocket.FLookupHandle:THandle
>004F6352    je          004F636A
 004F6354    mov         eax,dword ptr [ebp-4]
 004F6357    mov         eax,dword ptr [eax+2C];TCustomWinSocket.FLookupHandle:THandle
 004F635A    push        eax
 004F635B    call        wsock32.WSACancelAsyncRequest
 004F6360    mov         edx,4F6414;'WSACancelASyncRequest'
 004F6365    call        004F559C
 004F636A    mov         eax,dword ptr [ebp-4]
 004F636D    xor         edx,edx
 004F636F    mov         dword ptr [eax+2C],edx;TCustomWinSocket.FLookupHandle:THandle
 004F6372    cmp         dword ptr [ebp-8],0FFFFFFFF
>004F6376    je          004F6383
 004F6378    mov         eax,dword ptr [ebp-4]
 004F637B    mov         eax,dword ptr [eax+4];TCustomWinSocket.FSocket:TSocket
 004F637E    cmp         eax,dword ptr [ebp-8]
>004F6381    je          004F638A
 004F6383    call        @TryFinallyExit
>004F6388    jmp         004F6404
 004F638A    mov         cl,3
 004F638C    mov         edx,dword ptr [ebp-4]
 004F638F    mov         eax,dword ptr [ebp-4]
 004F6392    mov         si,0FFFF
 004F6396    call        @CallDynaInst;TCustomWinSocket.sub_004F6484
 004F639B    mov         eax,dword ptr [ebp-4]
 004F639E    mov         eax,dword ptr [eax+4];TCustomWinSocket.FSocket:TSocket
 004F63A1    push        eax
 004F63A2    call        wsock32.closesocket
 004F63A7    mov         edx,4F6434;'closesocket'
 004F63AC    call        004F559C
 004F63B1    mov         eax,dword ptr [ebp-4]
 004F63B4    mov         dword ptr [eax+4],0FFFFFFFF;TCustomWinSocket.FSocket:TSocket
 004F63BB    mov         eax,dword ptr [ebp-4]
 004F63BE    mov         word ptr [eax+18],2;TCustomWinSocket.FAddr:TSockAddrIn
 004F63C4    mov         eax,dword ptr [ebp-4]
 004F63C7    xor         edx,edx
 004F63C9    mov         dword ptr [eax+1C],edx;TCustomWinSocket.FAddr.sin_addr:TInAddr
 004F63CC    mov         eax,dword ptr [ebp-4]
 004F63CF    mov         word ptr [eax+1A],0;TCustomWinSocket.FAddr.sin_port:Word
 004F63D5    mov         eax,dword ptr [ebp-4]
 004F63D8    mov         byte ptr [eax+8],0;TCustomWinSocket.FConnected:Boolean
 004F63DC    mov         eax,dword ptr [ebp-4]
 004F63DF    add         eax,0C;TCustomWinSocket.FSendStream:TStream
 004F63E2    call        FreeAndNil
 004F63E7    xor         eax,eax
 004F63E9    pop         edx
 004F63EA    pop         ecx
 004F63EB    pop         ecx
 004F63EC    mov         dword ptr fs:[eax],edx
 004F63EF    push        4F6404
 004F63F4    mov         eax,dword ptr [ebp-4]
 004F63F7    call        004F5C10
 004F63FC    ret
>004F63FD    jmp         @HandleFinally
>004F6402    jmp         004F63F4
 004F6404    pop         esi
 004F6405    pop         ecx
 004F6406    pop         ecx
 004F6407    pop         ebp
 004F6408    ret
end;*}

//004F6440
procedure TCustomWinSocket.DefaultHandler(var Message:void );
begin
{*
 004F6440    push        ebp
 004F6441    mov         ebp,esp
 004F6443    add         esp,0FFFFFFF8
 004F6446    mov         dword ptr [ebp-8],edx
 004F6449    mov         dword ptr [ebp-4],eax
 004F644C    mov         eax,dword ptr [ebp-4]
 004F644F    cmp         dword ptr [eax+14],0
>004F6453    je          004F6480
 004F6455    mov         eax,dword ptr [ebp-8]
 004F6458    mov         eax,dword ptr [eax+8]
 004F645B    push        eax
 004F645C    mov         eax,dword ptr [ebp-8]
 004F645F    mov         eax,dword ptr [eax+4];{CallWindowProc}
 004F6462    push        eax
 004F6463    mov         eax,dword ptr [ebp-8]
 004F6466    mov         eax,dword ptr [eax]
 004F6468    push        eax
 004F6469    mov         eax,dword ptr [ebp-4]
 004F646C    mov         eax,dword ptr [eax+14]
 004F646F    push        eax
 004F6470    push        407AE4;user32.DefWindowProcA:Longint
 004F6475    call        user32.CallWindowProcA
 004F647A    mov         edx,dword ptr [ebp-8]
 004F647D    mov         dword ptr [edx+0C],eax
 004F6480    pop         ecx
 004F6481    pop         ecx
 004F6482    pop         ebp
 004F6483    ret
*}
end;

//004F6484
{*procedure TCustomWinSocket.sub_004F6484(?:?; ?:?);
begin
 004F6484    push        ebp
 004F6485    mov         ebp,esp
 004F6487    add         esp,0FFFFFFF4
 004F648A    push        ebx
 004F648B    mov         byte ptr [ebp-9],cl
 004F648E    mov         dword ptr [ebp-8],edx
 004F6491    mov         dword ptr [ebp-4],eax
 004F6494    mov         eax,dword ptr [ebp-4]
 004F6497    cmp         word ptr [eax+32],0;TCustomWinSocket.?f32:word
>004F649C    je          004F64B1
 004F649E    mov         al,byte ptr [ebp-9]
 004F64A1    push        eax
 004F64A2    mov         ebx,dword ptr [ebp-4]
 004F64A5    mov         ecx,dword ptr [ebp-8]
 004F64A8    mov         edx,dword ptr [ebp-4]
 004F64AB    mov         eax,dword ptr [ebx+34];TCustomWinSocket.?f34:dword
 004F64AE    call        dword ptr [ebx+30];TCustomWinSocket.FOnSocketEvent
 004F64B1    pop         ebx
 004F64B2    mov         esp,ebp
 004F64B4    pop         ebp
 004F64B5    ret
end;*}

//004F64B8
{*procedure TCustomWinSocket.sub_004F64B8(?:?; ?:?; ?:?);
begin
 004F64B8    push        ebp
 004F64B9    mov         ebp,esp
 004F64BB    add         esp,0FFFFFFF4
 004F64BE    push        ebx
 004F64BF    mov         byte ptr [ebp-9],cl
 004F64C2    mov         dword ptr [ebp-8],edx
 004F64C5    mov         dword ptr [ebp-4],eax
 004F64C8    mov         eax,dword ptr [ebp-4]
 004F64CB    cmp         word ptr [eax+3A],0;TCustomWinSocket.?f3A:word
>004F64D0    je          004F64E9
 004F64D2    mov         al,byte ptr [ebp-9]
 004F64D5    push        eax
 004F64D6    mov         eax,dword ptr [ebp+8]
 004F64D9    push        eax
 004F64DA    mov         ebx,dword ptr [ebp-4]
 004F64DD    mov         ecx,dword ptr [ebp-8]
 004F64E0    mov         edx,dword ptr [ebp-4]
 004F64E3    mov         eax,dword ptr [ebx+3C];TCustomWinSocket.?f3C:dword
 004F64E6    call        dword ptr [ebx+38];TCustomWinSocket.FOnErrorEvent
 004F64E9    pop         ebx
 004F64EA    mov         esp,ebp
 004F64EC    pop         ebp
 004F64ED    ret         4
end;*}

//004F64F0
procedure DropStream;
begin
{*
 004F64F0    push        ebp
 004F64F1    mov         ebp,esp
 004F64F3    mov         eax,dword ptr [ebp+8]
 004F64F6    mov         eax,dword ptr [eax-4]
 004F64F9    cmp         byte ptr [eax+10],0
>004F64FD    je          004F6513
 004F64FF    mov         eax,dword ptr [ebp+8]
 004F6502    mov         eax,dword ptr [eax-4]
 004F6505    mov         edx,dword ptr [eax+4]
 004F6508    mov         eax,dword ptr [ebp+8]
 004F650B    mov         eax,dword ptr [eax-4]
 004F650E    mov         ecx,dword ptr [eax]
 004F6510    call        dword ptr [ecx+8]
 004F6513    mov         eax,dword ptr [ebp+8]
 004F6516    mov         eax,dword ptr [eax-4]
 004F6519    mov         byte ptr [eax+10],0
 004F651D    mov         eax,dword ptr [ebp+8]
 004F6520    mov         eax,dword ptr [eax-4]
 004F6523    mov         eax,dword ptr [eax+0C]
 004F6526    call        TObject.Free
 004F652B    mov         eax,dword ptr [ebp+8]
 004F652E    mov         eax,dword ptr [eax-4]
 004F6531    xor         edx,edx
 004F6533    mov         dword ptr [eax+0C],edx
 004F6536    pop         ebp
 004F6537    ret
*}
end;

//004F6538
{*function sub_004F6538(?:TCustomWinSocket):?;
begin
 004F6538    push        ebp
 004F6539    mov         ebp,esp
 004F653B    add         esp,0FFFFF004
 004F6541    push        eax
 004F6542    add         esp,0FFFFFFE8
 004F6545    push        ebx
 004F6546    push        esi
 004F6547    mov         dword ptr [ebp-4],eax
 004F654A    mov         eax,dword ptr [ebp-4]
 004F654D    call        004F5BF8
 004F6552    xor         eax,eax
 004F6554    push        ebp
 004F6555    push        4F66B6
 004F655A    push        dword ptr fs:[eax]
 004F655D    mov         dword ptr fs:[eax],esp
 004F6560    mov         byte ptr [ebp-5],0
 004F6564    mov         eax,dword ptr [ebp-4]
 004F6567    cmp         dword ptr [eax+0C],0
>004F656B    je          004F66A0
 004F6571    mov         eax,dword ptr [ebp-4]
 004F6574    cmp         dword ptr [eax+4],0FFFFFFFF
>004F6578    je          004F6583
 004F657A    mov         eax,dword ptr [ebp-4]
 004F657D    cmp         byte ptr [eax+8],0
>004F6581    jne         004F658D
 004F6583    call        @TryFinallyExit
>004F6588    jmp         004F66BD
 004F658D    mov         eax,dword ptr [ebp-4]
 004F6590    mov         eax,dword ptr [eax+0C]
 004F6593    call        0047BCCC
 004F6598    mov         dword ptr [ebp-0C],eax
 004F659B    lea         edx,[ebp-1018]
 004F65A1    mov         eax,dword ptr [ebp-4]
 004F65A4    mov         eax,dword ptr [eax+0C]
 004F65A7    mov         ecx,1000
 004F65AC    mov         ebx,dword ptr [eax]
 004F65AE    call        dword ptr [ebx+0C]
 004F65B1    mov         dword ptr [ebp-10],eax
 004F65B4    cmp         dword ptr [ebp-10],0
>004F65B8    jle         004F6695
 004F65BE    push        0
 004F65C0    mov         eax,dword ptr [ebp-10]
 004F65C3    push        eax
 004F65C4    lea         eax,[ebp-1018]
 004F65CA    push        eax
 004F65CB    mov         eax,dword ptr [ebp-4]
 004F65CE    mov         eax,dword ptr [eax+4]
 004F65D1    push        eax
 004F65D2    call        wsock32.send
 004F65D7    mov         dword ptr [ebp-14],eax
 004F65DA    cmp         dword ptr [ebp-14],0FFFFFFFF
>004F65DE    jne         004F6643
 004F65E0    call        wsock32.WSAGetLastError
 004F65E5    mov         dword ptr [ebp-18],eax
 004F65E8    cmp         dword ptr [ebp-18],2733
>004F65EF    je          004F6630
 004F65F1    lea         eax,[ebp-18]
 004F65F4    push        eax
 004F65F5    mov         cl,1
 004F65F7    mov         edx,dword ptr [ebp-4]
 004F65FA    mov         eax,dword ptr [ebp-4]
 004F65FD    mov         si,0FFFE
 004F6601    call        @CallDynaInst
 004F6606    mov         eax,dword ptr [ebp-4]
 004F6609    mov         edx,dword ptr [eax+4]
 004F660C    mov         eax,dword ptr [ebp-4]
 004F660F    mov         ecx,dword ptr [eax]
 004F6611    call        dword ptr [ecx+8]
 004F6614    push        ebp
 004F6615    call        DropStream
 004F661A    pop         ecx
 004F661B    mov         eax,dword ptr [ebp-4]
 004F661E    mov         dl,byte ptr ds:[4F66C8];0x0 gvar_004F66C8
 004F6624    cmp         dl,byte ptr [eax+28]
>004F6627    je          004F669C
 004F6629    call        0046AA94
>004F662E    jmp         004F669C
 004F6630    mov         eax,dword ptr [ebp-0C]
 004F6633    cdq
 004F6634    push        edx
 004F6635    push        eax
 004F6636    mov         eax,dword ptr [ebp-4]
 004F6639    mov         eax,dword ptr [eax+0C]
 004F663C    call        0047BCF4
>004F6641    jmp         004F669C
 004F6643    mov         eax,dword ptr [ebp-10]
 004F6646    cmp         eax,dword ptr [ebp-14]
>004F6649    jle         004F6664
 004F664B    mov         eax,dword ptr [ebp-0C]
 004F664E    add         eax,dword ptr [ebp-14]
 004F6651    cdq
 004F6652    push        edx
 004F6653    push        eax
 004F6654    mov         eax,dword ptr [ebp-4]
 004F6657    mov         eax,dword ptr [eax+0C]
 004F665A    call        0047BCF4
>004F665F    jmp         004F658D
 004F6664    mov         eax,dword ptr [ebp-4]
 004F6667    mov         eax,dword ptr [eax+0C]
 004F666A    mov         edx,dword ptr [eax]
 004F666C    call        dword ptr [edx]
 004F666E    push        edx
 004F666F    push        eax
 004F6670    mov         eax,dword ptr [ebp-4]
 004F6673    mov         eax,dword ptr [eax+0C]
 004F6676    call        0047BCCC
 004F667B    cmp         edx,dword ptr [esp+4]
>004F667F    jne         004F6684
 004F6681    cmp         eax,dword ptr [esp]
 004F6684    pop         edx
 004F6685    pop         eax
>004F6686    jne         004F658D
 004F668C    push        ebp
 004F668D    call        DropStream
 004F6692    pop         ecx
>004F6693    jmp         004F669C
 004F6695    push        ebp
 004F6696    call        DropStream
 004F669B    pop         ecx
 004F669C    mov         byte ptr [ebp-5],1
 004F66A0    xor         eax,eax
 004F66A2    pop         edx
 004F66A3    pop         ecx
 004F66A4    pop         ecx
 004F66A5    mov         dword ptr fs:[eax],edx
 004F66A8    push        4F66BD
 004F66AD    mov         eax,dword ptr [ebp-4]
 004F66B0    call        004F5C10
 004F66B5    ret
>004F66B6    jmp         @HandleFinally
>004F66BB    jmp         004F66AD
 004F66BD    mov         al,byte ptr [ebp-5]
 004F66C0    pop         esi
 004F66C1    pop         ebx
 004F66C2    mov         esp,ebp
 004F66C4    pop         ebp
 004F66C5    ret
end;*}

//004F66CC
{*function sub_004F66CC(?:?; ?:?; ?:?):?;
begin
 004F66CC    push        ebp
 004F66CD    mov         ebp,esp
 004F66CF    add         esp,0FFFFFFD0
 004F66D2    push        ebx
 004F66D3    push        esi
 004F66D4    xor         ebx,ebx
 004F66D6    mov         dword ptr [ebp-30],ebx
 004F66D9    mov         dword ptr [ebp-0C],ecx
 004F66DC    mov         dword ptr [ebp-8],edx
 004F66DF    mov         dword ptr [ebp-4],eax
 004F66E2    xor         eax,eax
 004F66E4    push        ebp
 004F66E5    push        4F67F6
 004F66EA    push        dword ptr fs:[eax]
 004F66ED    mov         dword ptr fs:[eax],esp
 004F66F0    mov         eax,dword ptr [ebp-4]
 004F66F3    call        004F5BF8
 004F66F8    xor         eax,eax
 004F66FA    push        ebp
 004F66FB    push        4F67D9
 004F6700    push        dword ptr fs:[eax]
 004F6703    mov         dword ptr fs:[eax],esp
 004F6706    xor         eax,eax
 004F6708    mov         dword ptr [ebp-10],eax
 004F670B    mov         eax,dword ptr [ebp-4]
 004F670E    cmp         byte ptr [eax+8],0
>004F6712    jne         004F671E
 004F6714    call        @TryFinallyExit
>004F6719    jmp         004F67E0
 004F671E    push        0
 004F6720    mov         eax,dword ptr [ebp-0C]
 004F6723    push        eax
 004F6724    mov         eax,dword ptr [ebp-8]
 004F6727    push        eax
 004F6728    mov         eax,dword ptr [ebp-4]
 004F672B    mov         eax,dword ptr [eax+4]
 004F672E    push        eax
 004F672F    call        wsock32.send
 004F6734    mov         dword ptr [ebp-10],eax
 004F6737    cmp         dword ptr [ebp-10],0FFFFFFFF
>004F673B    jne         004F67C3
 004F6741    call        wsock32.WSAGetLastError
 004F6746    mov         dword ptr [ebp-14],eax
 004F6749    cmp         dword ptr [ebp-14],2733
>004F6750    je          004F67C3
 004F6752    lea         eax,[ebp-14]
 004F6755    push        eax
 004F6756    mov         cl,1
 004F6758    mov         edx,dword ptr [ebp-4]
 004F675B    mov         eax,dword ptr [ebp-4]
 004F675E    mov         si,0FFFE
 004F6762    call        @CallDynaInst
 004F6767    mov         eax,dword ptr [ebp-4]
 004F676A    mov         edx,dword ptr [eax+4]
 004F676D    mov         eax,dword ptr [ebp-4]
 004F6770    mov         ecx,dword ptr [eax]
 004F6772    call        dword ptr [ecx+8]
 004F6775    cmp         dword ptr [ebp-14],0
>004F6779    je          004F67C3
 004F677B    lea         edx,[ebp-30]
 004F677E    mov         eax,dword ptr [ebp-14]
 004F6781    call        SysErrorMessage
 004F6786    mov         eax,dword ptr [ebp-30]
 004F6789    mov         dword ptr [ebp-2C],eax
 004F678C    mov         byte ptr [ebp-28],0B
 004F6790    mov         eax,dword ptr [ebp-14]
 004F6793    mov         dword ptr [ebp-24],eax
 004F6796    mov         byte ptr [ebp-20],0
 004F679A    mov         eax,4F6810;'send'
 004F679F    mov         dword ptr [ebp-1C],eax
 004F67A2    mov         byte ptr [ebp-18],0B
 004F67A6    lea         eax,[ebp-2C]
 004F67A9    push        eax
 004F67AA    push        2
 004F67AC    mov         ecx,dword ptr ds:[55B5A0];^sWindowsSocketError:TResStringRec
 004F67B2    mov         dl,1
 004F67B4    mov         eax,[004F4680];ESocketError
 004F67B9    call        Exception.CreateResFmt;ESocketError.Create
 004F67BE    call        @RaiseExcept
 004F67C3    xor         eax,eax
 004F67C5    pop         edx
 004F67C6    pop         ecx
 004F67C7    pop         ecx
 004F67C8    mov         dword ptr fs:[eax],edx
 004F67CB    push        4F67E0
 004F67D0    mov         eax,dword ptr [ebp-4]
 004F67D3    call        004F5C10
 004F67D8    ret
>004F67D9    jmp         @HandleFinally
>004F67DE    jmp         004F67D0
 004F67E0    xor         eax,eax
 004F67E2    pop         edx
 004F67E3    pop         ecx
 004F67E4    pop         ecx
 004F67E5    mov         dword ptr fs:[eax],edx
 004F67E8    push        4F67FD
 004F67ED    lea         eax,[ebp-30]
 004F67F0    call        @LStrClr
 004F67F5    ret
>004F67F6    jmp         @HandleFinally
>004F67FB    jmp         004F67ED
 004F67FD    mov         eax,dword ptr [ebp-10]
 004F6800    pop         esi
 004F6801    pop         ebx
 004F6802    mov         esp,ebp
 004F6804    pop         ebp
 004F6805    ret
end;*}

//004F6818
{*procedure sub_004F6818(?:?; ?:?);
begin
 004F6818    push        ebp
 004F6819    mov         ebp,esp
 004F681B    add         esp,0FFFFFFF8
 004F681E    mov         byte ptr [ebp-5],dl
 004F6821    mov         dword ptr [ebp-4],eax
 004F6824    mov         eax,dword ptr [ebp-4]
 004F6827    mov         al,byte ptr [eax+28]
 004F682A    cmp         al,byte ptr [ebp-5]
>004F682D    je          004F6849
 004F682F    mov         al,byte ptr [ebp-5]
 004F6832    mov         edx,dword ptr [ebp-4]
 004F6835    mov         byte ptr [edx+28],al
 004F6838    mov         eax,dword ptr [ebp-4]
 004F683B    cmp         dword ptr [eax+4],0FFFFFFFF
>004F683F    je          004F6849
 004F6841    mov         eax,dword ptr [ebp-4]
 004F6844    call        004F5DBC
 004F6849    pop         ecx
 004F684A    pop         ecx
 004F684B    pop         ebp
 004F684C    ret
end;*}

//004F6850
{*procedure sub_004F6850(?:?);
begin
 004F6850    push        ebp
 004F6851    mov         ebp,esp
 004F6853    add         esp,0FFFFFFF8
 004F6856    push        esi
 004F6857    mov         dword ptr [ebp-8],edx
 004F685A    mov         dword ptr [ebp-4],eax
 004F685D    mov         eax,dword ptr [ebp-4]
 004F6860    cmp         dword ptr [eax+4],0FFFFFFFF;TCustomWinSocket.FSocket:TSocket
>004F6864    je          004F6882
 004F6866    mov         eax,dword ptr [ebp-8]
 004F6869    mov         edx,dword ptr [ebp-4]
 004F686C    cmp         eax,dword ptr [edx+4];TCustomWinSocket.FSocket:TSocket
>004F686F    jne         004F6882
 004F6871    mov         cl,7
 004F6873    mov         edx,dword ptr [ebp-4]
 004F6876    mov         eax,dword ptr [ebp-4]
 004F6879    mov         si,0FFFF
 004F687D    call        @CallDynaInst;TCustomWinSocket.sub_004F6484
 004F6882    pop         esi
 004F6883    pop         ecx
 004F6884    pop         ecx
 004F6885    pop         ebp
 004F6886    ret
end;*}

//004F6888
{*function sub_004F6888(?:TServerClientWinSocket; ?:?; ?:?):?;
begin
 004F6888    push        ebp
 004F6889    mov         ebp,esp
 004F688B    add         esp,0FFFFFFD0
 004F688E    push        ebx
 004F688F    push        esi
 004F6890    xor         ebx,ebx
 004F6892    mov         dword ptr [ebp-30],ebx
 004F6895    mov         dword ptr [ebp-0C],ecx
 004F6898    mov         dword ptr [ebp-8],edx
 004F689B    mov         dword ptr [ebp-4],eax
 004F689E    xor         eax,eax
 004F68A0    push        ebp
 004F68A1    push        4F69DB
 004F68A6    push        dword ptr fs:[eax]
 004F68A9    mov         dword ptr fs:[eax],esp
 004F68AC    mov         eax,dword ptr [ebp-4]
 004F68AF    call        004F5BF8
 004F68B4    xor         eax,eax
 004F68B6    push        ebp
 004F68B7    push        4F69BE
 004F68BC    push        dword ptr fs:[eax]
 004F68BF    mov         dword ptr fs:[eax],esp
 004F68C2    xor         eax,eax
 004F68C4    mov         dword ptr [ebp-10],eax
 004F68C7    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004F68CB    jne         004F68F0
 004F68CD    mov         eax,dword ptr [ebp-4]
 004F68D0    cmp         byte ptr [eax+8],0
>004F68D4    je          004F68F0
 004F68D6    lea         eax,[ebp-10]
 004F68D9    push        eax
 004F68DA    push        4004667F
 004F68DF    mov         eax,dword ptr [ebp-4]
 004F68E2    mov         eax,dword ptr [eax+4]
 004F68E5    push        eax
 004F68E6    call        wsock32.ioctlsocket
>004F68EB    jmp         004F69A8
 004F68F0    mov         eax,dword ptr [ebp-4]
 004F68F3    cmp         byte ptr [eax+8],0
>004F68F7    jne         004F6903
 004F68F9    call        @TryFinallyExit
>004F68FE    jmp         004F69C5
 004F6903    push        0
 004F6905    mov         eax,dword ptr [ebp-0C]
 004F6908    push        eax
 004F6909    mov         eax,dword ptr [ebp-8]
 004F690C    push        eax
 004F690D    mov         eax,dword ptr [ebp-4]
 004F6910    mov         eax,dword ptr [eax+4]
 004F6913    push        eax
 004F6914    call        wsock32.recv
 004F6919    mov         dword ptr [ebp-10],eax
 004F691C    cmp         dword ptr [ebp-10],0FFFFFFFF
>004F6920    jne         004F69A8
 004F6926    call        wsock32.WSAGetLastError
 004F692B    mov         dword ptr [ebp-14],eax
 004F692E    cmp         dword ptr [ebp-14],2733
>004F6935    je          004F69A8
 004F6937    lea         eax,[ebp-14]
 004F693A    push        eax
 004F693B    mov         cl,2
 004F693D    mov         edx,dword ptr [ebp-4]
 004F6940    mov         eax,dword ptr [ebp-4]
 004F6943    mov         si,0FFFE
 004F6947    call        @CallDynaInst
 004F694C    mov         eax,dword ptr [ebp-4]
 004F694F    mov         edx,dword ptr [eax+4]
 004F6952    mov         eax,dword ptr [ebp-4]
 004F6955    mov         ecx,dword ptr [eax]
 004F6957    call        dword ptr [ecx+8]
 004F695A    cmp         dword ptr [ebp-14],0
>004F695E    je          004F69A8
 004F6960    lea         edx,[ebp-30]
 004F6963    mov         eax,dword ptr [ebp-14]
 004F6966    call        SysErrorMessage
 004F696B    mov         eax,dword ptr [ebp-30]
 004F696E    mov         dword ptr [ebp-2C],eax
 004F6971    mov         byte ptr [ebp-28],0B
 004F6975    mov         eax,dword ptr [ebp-14]
 004F6978    mov         dword ptr [ebp-24],eax
 004F697B    mov         byte ptr [ebp-20],0
 004F697F    mov         eax,4F69F4;'recv'
 004F6984    mov         dword ptr [ebp-1C],eax
 004F6987    mov         byte ptr [ebp-18],0B
 004F698B    lea         eax,[ebp-2C]
 004F698E    push        eax
 004F698F    push        2
 004F6991    mov         ecx,dword ptr ds:[55B5A0];^sWindowsSocketError:TResStringRec
 004F6997    mov         dl,1
 004F6999    mov         eax,[004F4680];ESocketError
 004F699E    call        Exception.CreateResFmt;ESocketError.Create
 004F69A3    call        @RaiseExcept
 004F69A8    xor         eax,eax
 004F69AA    pop         edx
 004F69AB    pop         ecx
 004F69AC    pop         ecx
 004F69AD    mov         dword ptr fs:[eax],edx
 004F69B0    push        4F69C5
 004F69B5    mov         eax,dword ptr [ebp-4]
 004F69B8    call        004F5C10
 004F69BD    ret
>004F69BE    jmp         @HandleFinally
>004F69C3    jmp         004F69B5
 004F69C5    xor         eax,eax
 004F69C7    pop         edx
 004F69C8    pop         ecx
 004F69C9    pop         ecx
 004F69CA    mov         dword ptr fs:[eax],edx
 004F69CD    push        4F69E2
 004F69D2    lea         eax,[ebp-30]
 004F69D5    call        @LStrClr
 004F69DA    ret
>004F69DB    jmp         @HandleFinally
>004F69E0    jmp         004F69D2
 004F69E2    mov         eax,dword ptr [ebp-10]
 004F69E5    pop         esi
 004F69E6    pop         ebx
 004F69E7    mov         esp,ebp
 004F69E9    pop         ebp
 004F69EA    ret
end;*}

//004F6A5C
{*procedure sub_004F6A5C(?:?);
begin
 004F6A5C    push        ebp
 004F6A5D    mov         ebp,esp
 004F6A5F    add         esp,0FFFFFFF8
 004F6A62    push        esi
 004F6A63    mov         dword ptr [ebp-8],edx
 004F6A66    mov         dword ptr [ebp-4],eax
 004F6A69    mov         eax,dword ptr [ebp-4]
 004F6A6C    cmp         dword ptr [eax+4],0FFFFFFFF;TCustomWinSocket.FSocket:TSocket
>004F6A70    je          004F6A9A
 004F6A72    mov         eax,dword ptr [ebp-8]
 004F6A75    mov         edx,dword ptr [ebp-4]
 004F6A78    cmp         eax,dword ptr [edx+4];TCustomWinSocket.FSocket:TSocket
>004F6A7B    jne         004F6A9A
 004F6A7D    mov         eax,dword ptr [ebp-4]
 004F6A80    call        004F6538
 004F6A85    test        al,al
>004F6A87    jne         004F6A9A
 004F6A89    mov         cl,6
 004F6A8B    mov         edx,dword ptr [ebp-4]
 004F6A8E    mov         eax,dword ptr [ebp-4]
 004F6A91    mov         si,0FFFF
 004F6A95    call        @CallDynaInst;TCustomWinSocket.sub_004F6484
 004F6A9A    pop         esi
 004F6A9B    pop         ecx
 004F6A9C    pop         ecx
 004F6A9D    pop         ebp
 004F6A9E    ret
end;*}

//004F6AA0
{*procedure TCustomWinSocket.sub_004F6AA0(?:?);
begin
 004F6AA0    push        ebp
 004F6AA1    mov         ebp,esp
 004F6AA3    add         esp,0FFFFFFD8
 004F6AA6    push        esi
 004F6AA7    xor         ecx,ecx
 004F6AA9    mov         dword ptr [ebp-28],ecx
 004F6AAC    mov         dword ptr [ebp-8],edx
 004F6AAF    mov         dword ptr [ebp-4],eax
 004F6AB2    xor         eax,eax
 004F6AB4    push        ebp
 004F6AB5    push        4F6C1D
 004F6ABA    push        dword ptr fs:[eax]
 004F6ABD    mov         dword ptr fs:[eax],esp
 004F6AC0    mov         eax,dword ptr [ebp-8]
 004F6AC3    mov         eax,dword ptr [eax+4]
 004F6AC6    mov         edx,dword ptr [ebp-4]
 004F6AC9    cmp         eax,dword ptr [edx+2C];TCustomWinSocket.FLookupHandle:THandle
>004F6ACC    jne         004F6C07
 004F6AD2    mov         eax,dword ptr [ebp-4]
 004F6AD5    xor         edx,edx
 004F6AD7    mov         dword ptr [eax+2C],edx;TCustomWinSocket.FLookupHandle:THandle
 004F6ADA    mov         eax,dword ptr [ebp-8]
 004F6ADD    cmp         word ptr [eax+0A],0
>004F6AE2    je          004F6B74
 004F6AE8    mov         eax,dword ptr [ebp-8]
 004F6AEB    movzx       eax,word ptr [eax+0A]
 004F6AEF    mov         dword ptr [ebp-0C],eax
 004F6AF2    lea         eax,[ebp-0C]
 004F6AF5    push        eax
 004F6AF6    mov         cl,6
 004F6AF8    mov         edx,dword ptr [ebp-4]
 004F6AFB    mov         eax,dword ptr [ebp-4]
 004F6AFE    mov         si,0FFFE
 004F6B02    call        @CallDynaInst;TCustomWinSocket.sub_004F64B8
 004F6B07    mov         eax,dword ptr [ebp-4]
 004F6B0A    mov         edx,dword ptr [eax+4];TCustomWinSocket.FSocket:TSocket
 004F6B0D    mov         eax,dword ptr [ebp-4]
 004F6B10    mov         ecx,dword ptr [eax]
 004F6B12    call        dword ptr [ecx+8];TCustomWinSocket.sub_004F6328
 004F6B15    cmp         dword ptr [ebp-0C],0
>004F6B19    je          004F6C07
 004F6B1F    lea         edx,[ebp-28]
 004F6B22    mov         eax,dword ptr [ebp-8]
 004F6B25    movzx       eax,word ptr [eax+0A]
 004F6B29    call        SysErrorMessage
 004F6B2E    mov         eax,dword ptr [ebp-28]
 004F6B31    mov         dword ptr [ebp-24],eax
 004F6B34    mov         byte ptr [ebp-20],0B
 004F6B38    mov         eax,dword ptr [ebp-8]
 004F6B3B    movzx       eax,word ptr [eax+0A]
 004F6B3F    mov         dword ptr [ebp-1C],eax
 004F6B42    mov         byte ptr [ebp-18],0
 004F6B46    mov         eax,4F6C34;'ASync Lookup'
 004F6B4B    mov         dword ptr [ebp-14],eax
 004F6B4E    mov         byte ptr [ebp-10],0B
 004F6B52    lea         eax,[ebp-24]
 004F6B55    push        eax
 004F6B56    push        2
 004F6B58    mov         ecx,dword ptr ds:[55B5A0];^sWindowsSocketError:TResStringRec
 004F6B5E    mov         dl,1
 004F6B60    mov         eax,[004F4680];ESocketError
 004F6B65    call        Exception.CreateResFmt;ESocketError.Create
 004F6B6A    call        @RaiseExcept
>004F6B6F    jmp         004F6C07
 004F6B74    mov         eax,dword ptr [ebp-4]
 004F6B77    cmp         byte ptr [eax+29],1;TCustomWinSocket.FLookupState:TLookupState
>004F6B7B    jne         004F6BBB
 004F6B7D    mov         eax,dword ptr [ebp-4]
 004F6B80    mov         eax,dword ptr [eax+44];TCustomWinSocket.FGetHostData:Pointer
 004F6B83    mov         eax,dword ptr [eax+0C]
 004F6B86    mov         eax,dword ptr [eax]
 004F6B88    mov         eax,dword ptr [eax]
 004F6B8A    mov         edx,dword ptr [ebp-4]
 004F6B8D    mov         dword ptr [edx+1C],eax;TCustomWinSocket.FAddr.sin_addr:TInAddr
 004F6B90    mov         eax,dword ptr [ebp-4]
 004F6B93    mov         eax,dword ptr [eax+4C];TCustomWinSocket.FService:String
 004F6B96    push        eax
 004F6B97    mov         eax,dword ptr [ebp-4]
 004F6B9A    mov         ax,word ptr [eax+50];TCustomWinSocket.FPort:word
 004F6B9E    push        eax
 004F6B9F    mov         eax,dword ptr [ebp-4]
 004F6BA2    mov         eax,dword ptr [eax+54];TCustomWinSocket.FQueueSize:Integer
 004F6BA5    push        eax
 004F6BA6    mov         eax,dword ptr [ebp-4]
 004F6BA9    mov         al,byte ptr [eax+52];TCustomWinSocket.FClient:Boolean
 004F6BAC    push        eax
 004F6BAD    xor         ecx,ecx
 004F6BAF    xor         edx,edx
 004F6BB1    mov         eax,dword ptr [ebp-4]
 004F6BB4    call        004F5900
>004F6BB9    jmp         004F6C07
 004F6BBB    mov         eax,dword ptr [ebp-4]
 004F6BBE    cmp         byte ptr [eax+29],2;TCustomWinSocket.FLookupState:TLookupState
>004F6BC2    jne         004F6C07
 004F6BC4    mov         eax,dword ptr [ebp-4]
 004F6BC7    mov         eax,dword ptr [eax+44];TCustomWinSocket.FGetHostData:Pointer
 004F6BCA    mov         ax,word ptr [eax+8]
 004F6BCE    mov         edx,dword ptr [ebp-4]
 004F6BD1    mov         word ptr [edx+1A],ax;TCustomWinSocket.FAddr.sin_port:Word
 004F6BD5    mov         eax,dword ptr [ebp-4]
 004F6BD8    mov         word ptr [eax+50],0;TCustomWinSocket.FPort:word
 004F6BDE    mov         eax,dword ptr [ebp-4]
 004F6BE1    add         eax,4C;TCustomWinSocket.FService:String
 004F6BE4    call        @LStrClr
 004F6BE9    push        0
 004F6BEB    push        0
 004F6BED    mov         eax,dword ptr [ebp-4]
 004F6BF0    mov         eax,dword ptr [eax+54];TCustomWinSocket.FQueueSize:Integer
 004F6BF3    push        eax
 004F6BF4    mov         eax,dword ptr [ebp-4]
 004F6BF7    mov         al,byte ptr [eax+52];TCustomWinSocket.FClient:Boolean
 004F6BFA    push        eax
 004F6BFB    xor         ecx,ecx
 004F6BFD    xor         edx,edx
 004F6BFF    mov         eax,dword ptr [ebp-4]
 004F6C02    call        004F5900
 004F6C07    xor         eax,eax
 004F6C09    pop         edx
 004F6C0A    pop         ecx
 004F6C0B    pop         ecx
 004F6C0C    mov         dword ptr fs:[eax],edx
 004F6C0F    push        4F6C24
 004F6C14    lea         eax,[ebp-28]
 004F6C17    call        @LStrClr
 004F6C1C    ret
>004F6C1D    jmp         @HandleFinally
>004F6C22    jmp         004F6C14
 004F6C24    pop         esi
 004F6C25    mov         esp,ebp
 004F6C27    pop         ebp
 004F6C28    ret
end;*}

//004F6C44
{*procedure sub_004F6C44(?:?);
begin
 004F6C44    push        ebp
 004F6C45    mov         ebp,esp
 004F6C47    add         esp,0FFFFFFF8
 004F6C4A    push        esi
 004F6C4B    mov         dword ptr [ebp-8],edx
 004F6C4E    mov         dword ptr [ebp-4],eax
 004F6C51    mov         eax,dword ptr [ebp-4]
 004F6C54    mov         byte ptr [eax+8],1;TClientWinSocket.FConnected:Boolean
 004F6C58    mov         cl,2
 004F6C5A    mov         edx,dword ptr [ebp-4]
 004F6C5D    mov         eax,dword ptr [ebp-4]
 004F6C60    mov         si,0FFFF
 004F6C64    call        @CallDynaInst;TCustomWinSocket.sub_004F6484
 004F6C69    pop         esi
 004F6C6A    pop         ecx
 004F6C6B    pop         ecx
 004F6C6C    pop         ebp
 004F6C6D    ret
end;*}

//004F6C70
{*procedure sub_004F6C70(?:TClientWinSocket; ?:?);
begin
 004F6C70    push        ebp
 004F6C71    mov         ebp,esp
 004F6C73    add         esp,0FFFFFFF8
 004F6C76    mov         byte ptr [ebp-5],dl
 004F6C79    mov         dword ptr [ebp-4],eax
 004F6C7C    mov         al,byte ptr [ebp-5]
 004F6C7F    mov         edx,dword ptr [ebp-4]
 004F6C82    cmp         al,byte ptr [edx+58]
>004F6C85    je          004F6CD9
 004F6C87    mov         eax,dword ptr [ebp-4]
 004F6C8A    cmp         byte ptr [eax+8],0
>004F6C8E    jne         004F6CC2
 004F6C90    mov         al,byte ptr [ebp-5]
 004F6C93    mov         edx,dword ptr [ebp-4]
 004F6C96    mov         byte ptr [edx+58],al
 004F6C99    mov         eax,dword ptr [ebp-4]
 004F6C9C    cmp         byte ptr [eax+58],1
>004F6CA0    jne         004F6CB2
 004F6CA2    mov         dl,byte ptr ds:[4F6CE0];0x0 gvar_004F6CE0
 004F6CA8    mov         eax,dword ptr [ebp-4]
 004F6CAB    call        004F6818
>004F6CB0    jmp         004F6CD9
 004F6CB2    mov         dl,byte ptr ds:[4F6CE4];0x33 gvar_004F6CE4
 004F6CB8    mov         eax,dword ptr [ebp-4]
 004F6CBB    call        004F6818
>004F6CC0    jmp         004F6CD9
 004F6CC2    mov         ecx,dword ptr ds:[55B464];^sCantChangeWhileActive:TResStringRec
 004F6CC8    mov         dl,1
 004F6CCA    mov         eax,[004F4680];ESocketError
 004F6CCF    call        Exception.Create;ESocketError.Create
 004F6CD4    call        @RaiseExcept
 004F6CD9    pop         ecx
 004F6CDA    pop         ecx
 004F6CDB    pop         ebp
 004F6CDC    ret
end;*}

//004F6CE8
{*constructor TServerClientWinSocket.Create(?:?);
begin
 004F6CE8    push        ebp
 004F6CE9    mov         ebp,esp
 004F6CEB    add         esp,0FFFFFFF4
 004F6CEE    push        esi
 004F6CEF    test        dl,dl
>004F6CF1    je          004F6CFB
 004F6CF3    add         esp,0FFFFFFF0
 004F6CF6    call        @ClassCreate
 004F6CFB    mov         dword ptr [ebp-0C],ecx
 004F6CFE    mov         byte ptr [ebp-5],dl
 004F6D01    mov         dword ptr [ebp-4],eax
 004F6D04    mov         eax,dword ptr [ebp-4]
 004F6D07    mov         edx,dword ptr [ebp+8]
 004F6D0A    mov         dword ptr [eax+58],edx
 004F6D0D    mov         eax,dword ptr [ebp-4]
 004F6D10    cmp         dword ptr [eax+58],0
>004F6D14    je          004F6D5B
 004F6D16    mov         eax,dword ptr [ebp-4]
 004F6D19    mov         eax,dword ptr [eax+58]
 004F6D1C    mov         edx,dword ptr [ebp-4]
 004F6D1F    call        004F6EF0
 004F6D24    mov         eax,dword ptr [ebp-4]
 004F6D27    mov         eax,dword ptr [eax+58]
 004F6D2A    mov         dl,byte ptr ds:[4F6DC0];0x0 gvar_004F6DC0
 004F6D30    cmp         dl,byte ptr [eax+28]
>004F6D33    je          004F6D5B
 004F6D35    mov         eax,dword ptr [ebp-4]
 004F6D38    mov         eax,dword ptr [eax+58]
 004F6D3B    mov         edx,dword ptr [ebp-4]
 004F6D3E    mov         dword ptr [edx+34],eax
 004F6D41    mov         dword ptr [edx+30],4F7090;sub_004F7090
 004F6D48    mov         eax,dword ptr [ebp-4]
 004F6D4B    mov         eax,dword ptr [eax+58]
 004F6D4E    mov         edx,dword ptr [ebp-4]
 004F6D51    mov         dword ptr [edx+3C],eax
 004F6D54    mov         dword ptr [edx+38],4F7100;sub_004F7100
 004F6D5B    mov         ecx,dword ptr [ebp-0C]
 004F6D5E    xor         edx,edx
 004F6D60    mov         eax,dword ptr [ebp-4]
 004F6D63    call        TClientWinSocket.Create
 004F6D68    mov         eax,dword ptr [ebp-4]
 004F6D6B    mov         eax,dword ptr [eax+58]
 004F6D6E    mov         dl,byte ptr ds:[4F6DC0];0x0 gvar_004F6DC0
 004F6D74    cmp         dl,byte ptr [eax+28]
>004F6D77    je          004F6D81
 004F6D79    mov         eax,dword ptr [ebp-4]
 004F6D7C    call        004F5DBC
 004F6D81    mov         eax,dword ptr [ebp-4]
 004F6D84    cmp         byte ptr [eax+8],0
>004F6D88    je          004F6D9B
 004F6D8A    mov         cl,2
 004F6D8C    mov         edx,dword ptr [ebp-4]
 004F6D8F    mov         eax,dword ptr [ebp-4]
 004F6D92    mov         si,0FFFF
 004F6D96    call        @CallDynaInst
 004F6D9B    mov         eax,dword ptr [ebp-4]
 004F6D9E    cmp         byte ptr [ebp-5],0
>004F6DA2    je          004F6DB3
 004F6DA4    call        @AfterConstruction
 004F6DA9    pop         dword ptr fs:[0]
 004F6DB0    add         esp,0C
 004F6DB3    mov         eax,dword ptr [ebp-4]
 004F6DB6    pop         esi
 004F6DB7    mov         esp,ebp
 004F6DB9    pop         ebp
 004F6DBA    ret         4
end;*}

//004F6DC4
destructor TServerClientWinSocket.Destroy;
begin
{*
 004F6DC4    push        ebp
 004F6DC5    mov         ebp,esp
 004F6DC7    add         esp,0FFFFFFF8
 004F6DCA    call        @BeforeDestruction
 004F6DCF    mov         byte ptr [ebp-5],dl
 004F6DD2    mov         dword ptr [ebp-4],eax
 004F6DD5    mov         eax,dword ptr [ebp-4]
 004F6DD8    cmp         dword ptr [eax+58],0
>004F6DDC    je          004F6DEC
 004F6DDE    mov         eax,dword ptr [ebp-4]
 004F6DE1    mov         eax,dword ptr [eax+58]
 004F6DE4    mov         edx,dword ptr [ebp-4]
 004F6DE7    call        004F6F5C
 004F6DEC    mov         dl,byte ptr [ebp-5]
 004F6DEF    and         dl,0FC
 004F6DF2    mov         eax,dword ptr [ebp-4]
 004F6DF5    call        TCustomWinSocket.Destroy
 004F6DFA    cmp         byte ptr [ebp-5],0
>004F6DFE    jle         004F6E08
 004F6E00    mov         eax,dword ptr [ebp-4]
 004F6E03    call        @ClassDestroy
 004F6E08    pop         ecx
 004F6E09    pop         ecx
 004F6E0A    pop         ebp
 004F6E0B    ret
*}
end;

//004F6E0C
constructor TServerWinSocket.Create;
begin
{*
 004F6E0C    push        ebp
 004F6E0D    mov         ebp,esp
 004F6E0F    add         esp,0FFFFFFF4
 004F6E12    test        dl,dl
>004F6E14    je          004F6E1E
 004F6E16    add         esp,0FFFFFFF0
 004F6E19    call        @ClassCreate
 004F6E1E    mov         dword ptr [ebp-0C],ecx
 004F6E21    mov         byte ptr [ebp-5],dl
 004F6E24    mov         dword ptr [ebp-4],eax
 004F6E27    mov         dl,1
 004F6E29    mov         eax,[004759C0];TList
 004F6E2E    call        TObject.Create;TList.Create
 004F6E33    mov         edx,dword ptr [ebp-4]
 004F6E36    mov         dword ptr [edx+60],eax
 004F6E39    mov         dl,1
 004F6E3B    mov         eax,[004759C0];TList
 004F6E40    call        TObject.Create;TList.Create
 004F6E45    mov         edx,dword ptr [ebp-4]
 004F6E48    mov         dword ptr [edx+64],eax
 004F6E4B    mov         dl,1
 004F6E4D    mov         eax,[0049211C];TCriticalSection
 004F6E52    call        TCriticalSection.Create;TCriticalSection.Create
 004F6E57    mov         edx,dword ptr [ebp-4]
 004F6E5A    mov         dword ptr [edx+68],eax
 004F6E5D    mov         ecx,dword ptr [ebp-0C]
 004F6E60    xor         edx,edx
 004F6E62    mov         eax,dword ptr [ebp-4]
 004F6E65    call        TClientWinSocket.Create
 004F6E6A    mov         eax,dword ptr [ebp-4]
 004F6E6D    mov         dl,byte ptr ds:[4F6E98];0x8 gvar_004F6E98
 004F6E73    mov         byte ptr [eax+28],dl
 004F6E76    mov         eax,dword ptr [ebp-4]
 004F6E79    cmp         byte ptr [ebp-5],0
>004F6E7D    je          004F6E8E
 004F6E7F    call        @AfterConstruction
 004F6E84    pop         dword ptr fs:[0]
 004F6E8B    add         esp,0C
 004F6E8E    mov         eax,dword ptr [ebp-4]
 004F6E91    mov         esp,ebp
 004F6E93    pop         ebp
 004F6E94    ret
*}
end;

//004F6E9C
destructor TServerWinSocket.Destroy;
begin
{*
 004F6E9C    push        ebp
 004F6E9D    mov         ebp,esp
 004F6E9F    add         esp,0FFFFFFF8
 004F6EA2    call        @BeforeDestruction
 004F6EA7    mov         byte ptr [ebp-5],dl
 004F6EAA    mov         dword ptr [ebp-4],eax
 004F6EAD    mov         dl,byte ptr [ebp-5]
 004F6EB0    and         dl,0FC
 004F6EB3    mov         eax,dword ptr [ebp-4]
 004F6EB6    call        TCustomWinSocket.Destroy
 004F6EBB    mov         eax,dword ptr [ebp-4]
 004F6EBE    mov         eax,dword ptr [eax+60]
 004F6EC1    call        TObject.Free
 004F6EC6    mov         eax,dword ptr [ebp-4]
 004F6EC9    mov         eax,dword ptr [eax+64]
 004F6ECC    call        TObject.Free
 004F6ED1    mov         eax,dword ptr [ebp-4]
 004F6ED4    mov         eax,dword ptr [eax+68]
 004F6ED7    call        TObject.Free
 004F6EDC    cmp         byte ptr [ebp-5],0
>004F6EE0    jle         004F6EEA
 004F6EE2    mov         eax,dword ptr [ebp-4]
 004F6EE5    call        @ClassDestroy
 004F6EEA    pop         ecx
 004F6EEB    pop         ecx
 004F6EEC    pop         ebp
 004F6EED    ret
*}
end;

//004F6EF0
{*procedure sub_004F6EF0(?:?; ?:?);
begin
 004F6EF0    push        ebp
 004F6EF1    mov         ebp,esp
 004F6EF3    add         esp,0FFFFFFF8
 004F6EF6    mov         dword ptr [ebp-8],edx
 004F6EF9    mov         dword ptr [ebp-4],eax
 004F6EFC    mov         eax,dword ptr [ebp-4]
 004F6EFF    mov         eax,dword ptr [eax+68]
 004F6F02    call        004923E0
 004F6F07    xor         eax,eax
 004F6F09    push        ebp
 004F6F0A    push        4F6F4E
 004F6F0F    push        dword ptr fs:[eax]
 004F6F12    mov         dword ptr fs:[eax],esp
 004F6F15    mov         eax,dword ptr [ebp-4]
 004F6F18    mov         eax,dword ptr [eax+60]
 004F6F1B    mov         edx,dword ptr [ebp-8]
 004F6F1E    call        00478890
 004F6F23    test        eax,eax
>004F6F25    jge         004F6F35
 004F6F27    mov         eax,dword ptr [ebp-4]
 004F6F2A    mov         eax,dword ptr [eax+60]
 004F6F2D    mov         edx,dword ptr [ebp-8]
 004F6F30    call        TList.Add
 004F6F35    xor         eax,eax
 004F6F37    pop         edx
 004F6F38    pop         ecx
 004F6F39    pop         ecx
 004F6F3A    mov         dword ptr fs:[eax],edx
 004F6F3D    push        4F6F55
 004F6F42    mov         eax,dword ptr [ebp-4]
 004F6F45    mov         eax,dword ptr [eax+68]
 004F6F48    call        004923F4
 004F6F4D    ret
>004F6F4E    jmp         @HandleFinally
>004F6F53    jmp         004F6F42
 004F6F55    pop         ecx
 004F6F56    pop         ecx
 004F6F57    pop         ebp
 004F6F58    ret
end;*}

//004F6F5C
{*procedure sub_004F6F5C(?:?; ?:?);
begin
 004F6F5C    push        ebp
 004F6F5D    mov         ebp,esp
 004F6F5F    add         esp,0FFFFFFF8
 004F6F62    mov         dword ptr [ebp-8],edx
 004F6F65    mov         dword ptr [ebp-4],eax
 004F6F68    mov         eax,dword ptr [ebp-4]
 004F6F6B    mov         eax,dword ptr [eax+68]
 004F6F6E    call        004923E0
 004F6F73    xor         eax,eax
 004F6F75    push        ebp
 004F6F76    push        4F6FA8
 004F6F7B    push        dword ptr fs:[eax]
 004F6F7E    mov         dword ptr fs:[eax],esp
 004F6F81    mov         eax,dword ptr [ebp-4]
 004F6F84    mov         eax,dword ptr [eax+60]
 004F6F87    mov         edx,dword ptr [ebp-8]
 004F6F8A    call        00478AC4
 004F6F8F    xor         eax,eax
 004F6F91    pop         edx
 004F6F92    pop         ecx
 004F6F93    pop         ecx
 004F6F94    mov         dword ptr fs:[eax],edx
 004F6F97    push        4F6FAF
 004F6F9C    mov         eax,dword ptr [ebp-4]
 004F6F9F    mov         eax,dword ptr [eax+68]
 004F6FA2    call        004923F4
 004F6FA7    ret
>004F6FA8    jmp         @HandleFinally
>004F6FAD    jmp         004F6F9C
 004F6FAF    pop         ecx
 004F6FB0    pop         ecx
 004F6FB1    pop         ebp
 004F6FB2    ret
end;*}

//004F6FB4
{*procedure sub_004F6FB4(?:?; ?:Pointer);
begin
 004F6FB4    push        ebp
 004F6FB5    mov         ebp,esp
 004F6FB7    add         esp,0FFFFFFF8
 004F6FBA    mov         dword ptr [ebp-8],edx
 004F6FBD    mov         dword ptr [ebp-4],eax
 004F6FC0    mov         eax,dword ptr [ebp-4]
 004F6FC3    mov         eax,dword ptr [eax+68]
 004F6FC6    call        004923E0
 004F6FCB    xor         eax,eax
 004F6FCD    push        ebp
 004F6FCE    push        4F702A
 004F6FD3    push        dword ptr fs:[eax]
 004F6FD6    mov         dword ptr fs:[eax],esp
 004F6FD9    mov         eax,dword ptr [ebp-4]
 004F6FDC    mov         eax,dword ptr [eax+64]
 004F6FDF    mov         edx,dword ptr [ebp-8]
 004F6FE2    call        00478890
 004F6FE7    test        eax,eax
>004F6FE9    jge         004F7011
 004F6FEB    mov         eax,dword ptr [ebp-4]
 004F6FEE    mov         eax,dword ptr [eax+64]
 004F6FF1    mov         edx,dword ptr [ebp-8]
 004F6FF4    call        TList.Add
 004F6FF9    mov         eax,dword ptr [ebp-4]
 004F6FFC    mov         eax,dword ptr [eax+64]
 004F6FFF    mov         eax,dword ptr [eax+8]
 004F7002    mov         edx,dword ptr [ebp-4]
 004F7005    cmp         eax,dword ptr [edx+5C]
>004F7008    jg          004F7011
 004F700A    mov         eax,dword ptr [ebp-8]
 004F700D    mov         byte ptr [eax+50],1
 004F7011    xor         eax,eax
 004F7013    pop         edx
 004F7014    pop         ecx
 004F7015    pop         ecx
 004F7016    mov         dword ptr fs:[eax],edx
 004F7019    push        4F7031
 004F701E    mov         eax,dword ptr [ebp-4]
 004F7021    mov         eax,dword ptr [eax+68]
 004F7024    call        004923F4
 004F7029    ret
>004F702A    jmp         @HandleFinally
>004F702F    jmp         004F701E
 004F7031    pop         ecx
 004F7032    pop         ecx
 004F7033    pop         ebp
 004F7034    ret
end;*}

//004F7038
procedure sub_004F7038(?:TServerWinSocket; ?:TServerClientThread);
begin
{*
 004F7038    push        ebp
 004F7039    mov         ebp,esp
 004F703B    add         esp,0FFFFFFF8
 004F703E    mov         dword ptr [ebp-8],edx
 004F7041    mov         dword ptr [ebp-4],eax
 004F7044    mov         eax,dword ptr [ebp-4]
 004F7047    mov         eax,dword ptr [eax+68]
 004F704A    call        004923E0
 004F704F    xor         eax,eax
 004F7051    push        ebp
 004F7052    push        4F7084
 004F7057    push        dword ptr fs:[eax]
 004F705A    mov         dword ptr fs:[eax],esp
 004F705D    mov         eax,dword ptr [ebp-4]
 004F7060    mov         eax,dword ptr [eax+64]
 004F7063    mov         edx,dword ptr [ebp-8]
 004F7066    call        00478AC4
 004F706B    xor         eax,eax
 004F706D    pop         edx
 004F706E    pop         ecx
 004F706F    pop         ecx
 004F7070    mov         dword ptr fs:[eax],edx
 004F7073    push        4F708B
 004F7078    mov         eax,dword ptr [ebp-4]
 004F707B    mov         eax,dword ptr [eax+68]
 004F707E    call        004923F4
 004F7083    ret
>004F7084    jmp         @HandleFinally
>004F7089    jmp         004F7078
 004F708B    pop         ecx
 004F708C    pop         ecx
 004F708D    pop         ebp
 004F708E    ret
*}
end;

//004F7090
{*procedure sub_004F7090(?:TServerWinSocket; ?:TServerClientThread; ?:TServerClientWinSocket; ?:?);
begin
 004F7090    push        ebp
 004F7091    mov         ebp,esp
 004F7093    add         esp,0FFFFFFF4
 004F7096    push        esi
 004F7097    mov         dword ptr [ebp-8],ecx
 004F709A    mov         dword ptr [ebp-0C],edx
 004F709D    mov         dword ptr [ebp-4],eax
 004F70A0    mov         al,byte ptr [ebp+8]
 004F70A3    sub         al,2
>004F70A5    je          004F70B5
 004F70A7    dec         al
>004F70A9    je          004F70C6
 004F70AB    sub         al,3
>004F70AD    je          004F70E8
 004F70AF    dec         al
>004F70B1    je          004F70D7
>004F70B3    jmp         004F70F7
 004F70B5    mov         edx,dword ptr [ebp-8]
 004F70B8    mov         eax,dword ptr [ebp-4]
 004F70BB    mov         si,0FFF7
 004F70BF    call        @CallDynaInst
>004F70C4    jmp         004F70F7
 004F70C6    mov         edx,dword ptr [ebp-8]
 004F70C9    mov         eax,dword ptr [ebp-4]
 004F70CC    mov         si,0FFF6
 004F70D0    call        @CallDynaInst
>004F70D5    jmp         004F70F7
 004F70D7    mov         edx,dword ptr [ebp-8]
 004F70DA    mov         eax,dword ptr [ebp-4]
 004F70DD    mov         si,0FFF9
 004F70E1    call        @CallDynaInst
>004F70E6    jmp         004F70F7
 004F70E8    mov         edx,dword ptr [ebp-8]
 004F70EB    mov         eax,dword ptr [ebp-4]
 004F70EE    mov         si,0FFF8
 004F70F2    call        @CallDynaInst
 004F70F7    pop         esi
 004F70F8    mov         esp,ebp
 004F70FA    pop         ebp
 004F70FB    ret         4
end;*}

//004F7100
{*procedure sub_004F7100(?:TServerWinSocket; ?:TServerClientThread; ?:TServerClientWinSocket; ?:?; ?:?);
begin
 004F7100    push        ebp
 004F7101    mov         ebp,esp
 004F7103    add         esp,0FFFFFFF4
 004F7106    push        esi
 004F7107    mov         dword ptr [ebp-8],ecx
 004F710A    mov         dword ptr [ebp-0C],edx
 004F710D    mov         dword ptr [ebp-4],eax
 004F7110    mov         eax,dword ptr [ebp+8]
 004F7113    push        eax
 004F7114    mov         cl,byte ptr [ebp+0C]
 004F7117    mov         edx,dword ptr [ebp-8]
 004F711A    mov         eax,dword ptr [ebp-4]
 004F711D    mov         si,0FFF5
 004F7121    call        @CallDynaInst
 004F7126    pop         esi
 004F7127    mov         esp,ebp
 004F7129    pop         ebp
 004F712A    ret         8
end;*}

//004F7130
{*function sub_004F7130(?:TServerWinSocket; ?:?):?;
begin
 004F7130    push        ebp
 004F7131    mov         ebp,esp
 004F7133    add         esp,0FFFFFFF4
 004F7136    mov         dword ptr [ebp-8],edx
 004F7139    mov         dword ptr [ebp-4],eax
 004F713C    mov         edx,dword ptr [ebp-8]
 004F713F    mov         eax,dword ptr [ebp-4]
 004F7142    mov         eax,dword ptr [eax+60]
 004F7145    call        TList.Get
 004F714A    mov         dword ptr [ebp-0C],eax
 004F714D    mov         eax,dword ptr [ebp-0C]
 004F7150    mov         esp,ebp
 004F7152    pop         ebp
 004F7153    ret
end;*}

//004F7154
{*procedure sub_004F7154(?:?);
begin
 004F7154    push        ebp
 004F7155    mov         ebp,esp
 004F7157    add         esp,0FFFFFFD4
 004F715A    push        ebx
 004F715B    push        esi
 004F715C    mov         dword ptr [ebp-8],edx
 004F715F    mov         dword ptr [ebp-4],eax
 004F7162    mov         dword ptr [ebp-14],4
 004F7169    lea         eax,[ebp-14]
 004F716C    push        eax
 004F716D    lea         eax,[ebp-18]
 004F7170    push        eax
 004F7171    push        7008
 004F7176    push        0FFFF
 004F717B    push        0FF
 004F717D    call        wsock32.getsockopt
 004F7182    test        eax,eax
>004F7184    jne         004F726A
 004F718A    xor         eax,eax
 004F718C    push        ebp
 004F718D    push        4F7263
 004F7192    push        dword ptr fs:[eax]
 004F7195    mov         dword ptr fs:[eax],esp
 004F7198    mov         eax,dword ptr [ebp-4]
 004F719B    cmp         byte ptr [eax+58],1;TServerWinSocket.FServerType:TServerType
>004F719F    jne         004F71C1
 004F71A1    mov         dword ptr [ebp-1C],20
 004F71A8    mov         eax,dword ptr [ebp-14]
 004F71AB    push        eax
 004F71AC    lea         eax,[ebp-1C]
 004F71AF    push        eax
 004F71B0    push        7008
 004F71B5    push        0FFFF
 004F71BA    push        0FF
 004F71BC    call        wsock32.setsockopt
 004F71C1    mov         dword ptr [ebp-14],10
 004F71C8    lea         eax,[ebp-14]
 004F71CB    push        eax
 004F71CC    lea         eax,[ebp-2C]
 004F71CF    push        eax
 004F71D0    mov         eax,dword ptr [ebp-8]
 004F71D3    push        eax
 004F71D4    call        wsock32.accept
 004F71D9    mov         dword ptr [ebp-10],eax
 004F71DC    cmp         dword ptr [ebp-10],0FFFFFFFF
>004F71E0    je          004F7235
 004F71E2    mov         edx,dword ptr [ebp-10]
 004F71E5    mov         eax,dword ptr [ebp-4]
 004F71E8    mov         si,0FFFB
 004F71EC    call        @CallDynaInst;TServerWinSocket.sub_004F757C
 004F71F1    mov         dword ptr [ebp-0C],eax
 004F71F4    mov         eax,dword ptr [ebp-4]
 004F71F7    cmp         word ptr [eax+32],0;TServerWinSocket.?f32:word
>004F71FC    je          004F720F
 004F71FE    push        5
 004F7200    mov         ebx,dword ptr [ebp-4]
 004F7203    mov         ecx,dword ptr [ebp-0C]
 004F7206    mov         edx,dword ptr [ebp-4]
 004F7209    mov         eax,dword ptr [ebx+34];TServerWinSocket.?f34:dword
 004F720C    call        dword ptr [ebx+30];TServerWinSocket.FOnSocketEvent
 004F720F    mov         eax,dword ptr [ebp-4]
 004F7212    cmp         byte ptr [eax+58],1;TServerWinSocket.FServerType:TServerType
>004F7216    jne         004F7235
 004F7218    mov         dl,byte ptr ds:[4F7270];0x0 gvar_004F7270
 004F721E    mov         eax,dword ptr [ebp-0C]
 004F7221    call        004F6818
 004F7226    mov         edx,dword ptr [ebp-0C]
 004F7229    mov         eax,dword ptr [ebp-4]
 004F722C    mov         si,0FFFA
 004F7230    call        @CallDynaInst;TServerWinSocket.sub_004F7638
 004F7235    xor         eax,eax
 004F7237    pop         edx
 004F7238    pop         ecx
 004F7239    pop         ecx
 004F723A    mov         dword ptr fs:[eax],edx
 004F723D    push        4F726A
 004F7242    mov         dword ptr [ebp-14],4
 004F7249    mov         eax,dword ptr [ebp-14]
 004F724C    push        eax
 004F724D    lea         eax,[ebp-18]
 004F7250    push        eax
 004F7251    push        7008
 004F7256    push        0FFFF
 004F725B    push        0FF
 004F725D    call        wsock32.setsockopt
 004F7262    ret
>004F7263    jmp         @HandleFinally
>004F7268    jmp         004F7242
 004F726A    pop         esi
 004F726B    pop         ebx
 004F726C    mov         esp,ebp
 004F726E    pop         ebp
 004F726F    ret
end;*}

//004F7274
{*procedure sub_004F7274(?:?);
begin
 004F7274    push        ebp
 004F7275    mov         ebp,esp
 004F7277    add         esp,0FFFFFFF0
 004F727A    mov         dword ptr [ebp-8],edx
 004F727D    mov         dword ptr [ebp-4],eax
 004F7280    mov         eax,dword ptr [ebp-4]
 004F7283    call        004F5BF8
 004F7288    xor         eax,eax
 004F728A    push        ebp
 004F728B    push        4F73A3
 004F7290    push        dword ptr fs:[eax]
 004F7293    mov         dword ptr fs:[eax],esp
 004F7296    mov         eax,dword ptr [ebp-4]
 004F7299    mov         eax,dword ptr [eax+5C];TServerWinSocket.FThreadCacheSize:Integer
 004F729C    mov         dword ptr [ebp-0C],eax
 004F729F    xor         eax,eax
 004F72A1    push        ebp
 004F72A2    push        4F7386
 004F72A7    push        dword ptr fs:[eax]
 004F72AA    mov         dword ptr fs:[eax],esp
 004F72AD    xor         edx,edx
 004F72AF    mov         eax,dword ptr [ebp-4]
 004F72B2    call        004F74BC
>004F72B7    jmp         004F7311
 004F72B9    mov         eax,dword ptr [ebp-4]
 004F72BC    mov         eax,dword ptr [eax+64];TServerWinSocket.FActiveThreads:TList
 004F72BF    call        0047898C
 004F72C4    mov         dword ptr [ebp-10],eax
 004F72C7    mov         eax,dword ptr [ebp-10]
 004F72CA    mov         byte ptr [eax+0F],0
 004F72CE    mov         eax,dword ptr [ebp-10]
 004F72D1    call        00482E40
 004F72D6    mov         eax,dword ptr [ebp-10]
 004F72D9    mov         eax,dword ptr [eax+4C]
 004F72DC    call        004922A4
 004F72E1    mov         eax,dword ptr [ebp-10]
 004F72E4    cmp         dword ptr [eax+40],0
>004F72E8    je          004F7301
 004F72EA    mov         eax,dword ptr [ebp-10]
 004F72ED    mov         eax,dword ptr [eax+40]
 004F72F0    cmp         byte ptr [eax+8],0
>004F72F4    je          004F7301
 004F72F6    mov         eax,dword ptr [ebp-10]
 004F72F9    mov         eax,dword ptr [eax+40]
 004F72FC    call        004F5BD0
 004F7301    mov         eax,dword ptr [ebp-10]
 004F7304    call        00482E54
 004F7309    mov         eax,dword ptr [ebp-10]
 004F730C    call        TObject.Free
 004F7311    mov         eax,dword ptr [ebp-4]
 004F7314    mov         eax,dword ptr [eax+64];TServerWinSocket.FActiveThreads:TList
 004F7317    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>004F731B    jg          004F72B9
>004F731D    jmp         004F732F
 004F731F    mov         eax,dword ptr [ebp-4]
 004F7322    mov         eax,dword ptr [eax+60];TServerWinSocket.FConnections:TList
 004F7325    call        0047898C
 004F732A    call        TObject.Free
 004F732F    mov         eax,dword ptr [ebp-4]
 004F7332    mov         eax,dword ptr [eax+60];TServerWinSocket.FConnections:TList
 004F7335    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>004F7339    jg          004F731F
 004F733B    mov         eax,dword ptr [ebp-4]
 004F733E    cmp         dword ptr [eax+6C],0;TServerWinSocket.FServerAcceptThread:TServerAcceptThread
>004F7342    je          004F734F
 004F7344    mov         eax,dword ptr [ebp-4]
 004F7347    mov         eax,dword ptr [eax+6C];TServerWinSocket.FServerAcceptThread:TServerAcceptThread
 004F734A    call        00482E40
 004F734F    mov         edx,dword ptr [ebp-8]
 004F7352    mov         eax,dword ptr [ebp-4]
 004F7355    call        004F6328
 004F735A    mov         eax,dword ptr [ebp-4]
 004F735D    mov         eax,dword ptr [eax+6C];TServerWinSocket.FServerAcceptThread:TServerAcceptThread
 004F7360    call        TObject.Free
 004F7365    mov         eax,dword ptr [ebp-4]
 004F7368    xor         edx,edx
 004F736A    mov         dword ptr [eax+6C],edx;TServerWinSocket.FServerAcceptThread:TServerAcceptThread
 004F736D    xor         eax,eax
 004F736F    pop         edx
 004F7370    pop         ecx
 004F7371    pop         ecx
 004F7372    mov         dword ptr fs:[eax],edx
 004F7375    push        4F738D
 004F737A    mov         edx,dword ptr [ebp-0C]
 004F737D    mov         eax,dword ptr [ebp-4]
 004F7380    call        004F74BC
 004F7385    ret
>004F7386    jmp         @HandleFinally
>004F738B    jmp         004F737A
 004F738D    xor         eax,eax
 004F738F    pop         edx
 004F7390    pop         ecx
 004F7391    pop         ecx
 004F7392    mov         dword ptr fs:[eax],edx
 004F7395    push        4F73AA
 004F739A    mov         eax,dword ptr [ebp-4]
 004F739D    call        004F5C10
 004F73A2    ret
>004F73A3    jmp         @HandleFinally
>004F73A8    jmp         004F739A
 004F73AA    mov         esp,ebp
 004F73AC    pop         ebp
 004F73AD    ret
end;*}

//004F73B0
{*function sub_004F73B0(?:?):?;
begin
 004F73B0    push        ebp
 004F73B1    mov         ebp,esp
 004F73B3    add         esp,0FFFFFFF4
 004F73B6    mov         dword ptr [ebp-8],edx
 004F73B9    mov         dword ptr [ebp-4],eax
 004F73BC    mov         eax,dword ptr [ebp-8]
 004F73BF    push        eax
 004F73C0    xor         ecx,ecx
 004F73C2    mov         dl,1
 004F73C4    mov         eax,[004F4CDC];TServerClientThread
 004F73C9    call        TServerClientThread.Create;TServerClientThread.Create
 004F73CE    mov         dword ptr [ebp-0C],eax
 004F73D1    mov         eax,dword ptr [ebp-0C]
 004F73D4    mov         esp,ebp
 004F73D6    pop         ebp
 004F73D7    ret
end;*}

//004F73D8
{*procedure sub_004F73D8(?:TServerWinSocket; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004F73D8    push        ebp
 004F73D9    mov         ebp,esp
 004F73DB    add         esp,0FFFFFFF4
 004F73DE    mov         dword ptr [ebp-0C],ecx
 004F73E1    mov         dword ptr [ebp-8],edx
 004F73E4    mov         dword ptr [ebp-4],eax
 004F73E7    mov         eax,dword ptr [ebp+10]
 004F73EA    mov         eax,dword ptr [eax]
 004F73EC    push        eax
 004F73ED    mov         ax,word ptr [ebp+0C]
 004F73F1    push        eax
 004F73F2    mov         eax,dword ptr [ebp+8]
 004F73F5    push        eax
 004F73F6    mov         eax,dword ptr [ebp-4]
 004F73F9    cmp         byte ptr [eax+58],1
 004F73FD    sete        al
 004F7400    push        eax
 004F7401    mov         ecx,dword ptr [ebp-0C]
 004F7404    mov         ecx,dword ptr [ecx]
 004F7406    mov         edx,dword ptr [ebp-8]
 004F7409    mov         edx,dword ptr [edx]
 004F740B    mov         eax,dword ptr [ebp-4]
 004F740E    call        004F6114
 004F7413    mov         eax,dword ptr [ebp-4]
 004F7416    cmp         byte ptr [eax+8],0
>004F741A    je          004F743D
 004F741C    mov         eax,dword ptr [ebp-4]
 004F741F    cmp         byte ptr [eax+58],1
>004F7423    jne         004F743D
 004F7425    mov         eax,dword ptr [ebp-4]
 004F7428    push        eax
 004F7429    xor         ecx,ecx
 004F742B    mov         dl,1
 004F742D    mov         eax,[004F4C74];TServerAcceptThread
 004F7432    call        TServerAcceptThread.Create;TServerAcceptThread.Create
 004F7437    mov         edx,dword ptr [ebp-4]
 004F743A    mov         dword ptr [edx+6C],eax
 004F743D    mov         esp,ebp
 004F743F    pop         ebp
 004F7440    ret         0C
end;*}

//004F7444
{*procedure sub_004F7444(?:TServerWinSocket; ?:?);
begin
 004F7444    push        ebp
 004F7445    mov         ebp,esp
 004F7447    add         esp,0FFFFFFF8
 004F744A    mov         byte ptr [ebp-5],dl
 004F744D    mov         dword ptr [ebp-4],eax
 004F7450    mov         al,byte ptr [ebp-5]
 004F7453    mov         edx,dword ptr [ebp-4]
 004F7456    cmp         al,byte ptr [edx+58]
>004F7459    je          004F74AD
 004F745B    mov         eax,dword ptr [ebp-4]
 004F745E    cmp         byte ptr [eax+8],0
>004F7462    jne         004F7496
 004F7464    mov         al,byte ptr [ebp-5]
 004F7467    mov         edx,dword ptr [ebp-4]
 004F746A    mov         byte ptr [edx+58],al
 004F746D    mov         eax,dword ptr [ebp-4]
 004F7470    cmp         byte ptr [eax+58],1
>004F7474    jne         004F7486
 004F7476    mov         dl,byte ptr ds:[4F74B4];0x0 gvar_004F74B4
 004F747C    mov         eax,dword ptr [ebp-4]
 004F747F    call        004F6818
>004F7484    jmp         004F74AD
 004F7486    mov         dl,byte ptr ds:[4F74B8];0x8 gvar_004F74B8
 004F748C    mov         eax,dword ptr [ebp-4]
 004F748F    call        004F6818
>004F7494    jmp         004F74AD
 004F7496    mov         ecx,dword ptr ds:[55B464];^sCantChangeWhileActive:TResStringRec
 004F749C    mov         dl,1
 004F749E    mov         eax,[004F4680];ESocketError
 004F74A3    call        Exception.Create;ESocketError.Create
 004F74A8    call        @RaiseExcept
 004F74AD    pop         ecx
 004F74AE    pop         ecx
 004F74AF    pop         ebp
 004F74B0    ret
end;*}

//004F74BC
procedure sub_004F74BC(?:TServerWinSocket; ?:Integer);
begin
{*
 004F74BC    push        ebp
 004F74BD    mov         ebp,esp
 004F74BF    add         esp,0FFFFFFE8
 004F74C2    mov         dword ptr [ebp-8],edx
 004F74C5    mov         dword ptr [ebp-4],eax
 004F74C8    mov         eax,dword ptr [ebp-4]
 004F74CB    mov         eax,dword ptr [eax+5C];TServerWinSocket.FThreadCacheSize:Integer
 004F74CE    cmp         eax,dword ptr [ebp-8]
>004F74D1    je          004F7576
 004F74D7    mov         eax,dword ptr [ebp-4]
 004F74DA    mov         eax,dword ptr [eax+5C];TServerWinSocket.FThreadCacheSize:Integer
 004F74DD    cmp         eax,dword ptr [ebp-8]
>004F74E0    jle         004F74EA
 004F74E2    mov         eax,dword ptr [ebp-8]
 004F74E5    mov         dword ptr [ebp-0C],eax
>004F74E8    jmp         004F74F3
 004F74EA    mov         eax,dword ptr [ebp-4]
 004F74ED    mov         eax,dword ptr [eax+5C];TServerWinSocket.FThreadCacheSize:Integer
 004F74F0    mov         dword ptr [ebp-0C],eax
 004F74F3    mov         eax,dword ptr [ebp-4]
 004F74F6    mov         edx,dword ptr [ebp-8]
 004F74F9    mov         dword ptr [eax+5C],edx;TServerWinSocket.FThreadCacheSize:Integer
 004F74FC    mov         eax,dword ptr [ebp-4]
 004F74FF    mov         eax,dword ptr [eax+68];TServerWinSocket.FListLock:TCriticalSection
 004F7502    call        004923E0
 004F7507    xor         eax,eax
 004F7509    push        ebp
 004F750A    push        4F756F
 004F750F    push        dword ptr fs:[eax]
 004F7512    mov         dword ptr fs:[eax],esp
 004F7515    mov         eax,dword ptr [ebp-4]
 004F7518    mov         eax,dword ptr [eax+64];TServerWinSocket.FActiveThreads:TList
 004F751B    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004F751E    dec         eax
 004F751F    test        eax,eax
>004F7521    jl          004F7556
 004F7523    inc         eax
 004F7524    mov         dword ptr [ebp-14],eax
 004F7527    mov         dword ptr [ebp-10],0
 004F752E    mov         eax,dword ptr [ebp-4]
 004F7531    mov         eax,dword ptr [eax+64];TServerWinSocket.FActiveThreads:TList
 004F7534    mov         edx,dword ptr [ebp-10]
 004F7537    call        TList.Get
 004F753C    mov         dword ptr [ebp-18],eax
 004F753F    mov         eax,dword ptr [ebp-10]
 004F7542    cmp         eax,dword ptr [ebp-0C]
 004F7545    setl        al
 004F7548    mov         edx,dword ptr [ebp-18]
 004F754B    mov         byte ptr [edx+50],al
 004F754E    inc         dword ptr [ebp-10]
 004F7551    dec         dword ptr [ebp-14]
>004F7554    jne         004F752E
 004F7556    xor         eax,eax
 004F7558    pop         edx
 004F7559    pop         ecx
 004F755A    pop         ecx
 004F755B    mov         dword ptr fs:[eax],edx
 004F755E    push        4F7576
 004F7563    mov         eax,dword ptr [ebp-4]
 004F7566    mov         eax,dword ptr [eax+68];TServerWinSocket.FListLock:TCriticalSection
 004F7569    call        004923F4
 004F756E    ret
>004F756F    jmp         @HandleFinally
>004F7574    jmp         004F7563
 004F7576    mov         esp,ebp
 004F7578    pop         ebp
 004F7579    ret
*}
end;

//004F757C
{*procedure TServerWinSocket.sub_004F757C(?:?);
begin
 004F757C    push        ebp
 004F757D    mov         ebp,esp
 004F757F    add         esp,0FFFFFFF4
 004F7582    push        ebx
 004F7583    mov         dword ptr [ebp-8],edx
 004F7586    mov         dword ptr [ebp-4],eax
 004F7589    xor         eax,eax
 004F758B    mov         dword ptr [ebp-0C],eax
 004F758E    mov         eax,dword ptr [ebp-4]
 004F7591    cmp         word ptr [eax+72],0;TServerWinSocket.?f72:word
>004F7596    je          004F75AB
 004F7598    lea         eax,[ebp-0C]
 004F759B    push        eax
 004F759C    mov         ebx,dword ptr [ebp-4]
 004F759F    mov         ecx,dword ptr [ebp-8]
 004F75A2    mov         edx,dword ptr [ebp-4]
 004F75A5    mov         eax,dword ptr [ebx+74];TServerWinSocket.?f74:dword
 004F75A8    call        dword ptr [ebx+70];TServerWinSocket.FOnGetSocket
 004F75AB    cmp         dword ptr [ebp-0C],0
>004F75AF    jne         004F75C7
 004F75B1    mov         eax,dword ptr [ebp-4]
 004F75B4    push        eax
 004F75B5    mov         ecx,dword ptr [ebp-8]
 004F75B8    mov         dl,1
 004F75BA    mov         eax,[004F4AC8];TServerClientWinSocket
 004F75BF    call        TServerClientWinSocket.Create;TServerClientWinSocket.Create
 004F75C4    mov         dword ptr [ebp-0C],eax
 004F75C7    mov         eax,dword ptr [ebp-0C]
 004F75CA    pop         ebx
 004F75CB    mov         esp,ebp
 004F75CD    pop         ebp
 004F75CE    ret
end;*}

//004F75D0
{*procedure TServerWinSocket.sub_004F75D0(?:?);
begin
 004F75D0    push        ebp
 004F75D1    mov         ebp,esp
 004F75D3    add         esp,0FFFFFFF8
 004F75D6    push        ebx
 004F75D7    mov         dword ptr [ebp-8],edx
 004F75DA    mov         dword ptr [ebp-4],eax
 004F75DD    mov         eax,dword ptr [ebp-4]
 004F75E0    cmp         word ptr [eax+8A],0;TServerWinSocket.?f8A:word
>004F75E8    je          004F75FF
 004F75EA    mov         ebx,dword ptr [ebp-4]
 004F75ED    mov         ecx,dword ptr [ebp-8]
 004F75F0    mov         edx,dword ptr [ebp-4]
 004F75F3    mov         eax,dword ptr [ebx+8C];TServerWinSocket.?f8C:dword
 004F75F9    call        dword ptr [ebx+88];TServerWinSocket.FOnThreadEnd
 004F75FF    pop         ebx
 004F7600    pop         ecx
 004F7601    pop         ecx
 004F7602    pop         ebp
 004F7603    ret
end;*}

//004F7604
{*procedure TServerWinSocket.sub_004F7604(?:?);
begin
 004F7604    push        ebp
 004F7605    mov         ebp,esp
 004F7607    add         esp,0FFFFFFF8
 004F760A    push        ebx
 004F760B    mov         dword ptr [ebp-8],edx
 004F760E    mov         dword ptr [ebp-4],eax
 004F7611    mov         eax,dword ptr [ebp-4]
 004F7614    cmp         word ptr [eax+82],0;TServerWinSocket.?f82:word
>004F761C    je          004F7633
 004F761E    mov         ebx,dword ptr [ebp-4]
 004F7621    mov         ecx,dword ptr [ebp-8]
 004F7624    mov         edx,dword ptr [ebp-4]
 004F7627    mov         eax,dword ptr [ebx+84];TServerWinSocket.?f84:dword
 004F762D    call        dword ptr [ebx+80];TServerWinSocket.FOnThreadStart
 004F7633    pop         ebx
 004F7634    pop         ecx
 004F7635    pop         ecx
 004F7636    pop         ebp
 004F7637    ret
end;*}

//004F7638
{*procedure TServerWinSocket.sub_004F7638(?:?);
begin
 004F7638    push        ebp
 004F7639    mov         ebp,esp
 004F763B    add         esp,0FFFFFFEC
 004F763E    push        ebx
 004F763F    mov         dword ptr [ebp-8],edx
 004F7642    mov         dword ptr [ebp-4],eax
 004F7645    xor         eax,eax
 004F7647    mov         dword ptr [ebp-0C],eax
 004F764A    mov         eax,dword ptr [ebp-4]
 004F764D    mov         eax,dword ptr [eax+68];TServerWinSocket.FListLock:TCriticalSection
 004F7650    call        004923E0
 004F7655    xor         eax,eax
 004F7657    push        ebp
 004F7658    push        4F76CF
 004F765D    push        dword ptr fs:[eax]
 004F7660    mov         dword ptr fs:[eax],esp
 004F7663    mov         eax,dword ptr [ebp-4]
 004F7666    mov         eax,dword ptr [eax+64];TServerWinSocket.FActiveThreads:TList
 004F7669    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004F766C    dec         eax
 004F766D    test        eax,eax
>004F766F    jl          004F76B6
 004F7671    inc         eax
 004F7672    mov         dword ptr [ebp-14],eax
 004F7675    mov         dword ptr [ebp-10],0
 004F767C    mov         eax,dword ptr [ebp-4]
 004F767F    mov         eax,dword ptr [eax+64];TServerWinSocket.FActiveThreads:TList
 004F7682    mov         edx,dword ptr [ebp-10]
 004F7685    call        TList.Get
 004F768A    cmp         dword ptr [eax+40],0
>004F768E    jne         004F76AE
 004F7690    mov         eax,dword ptr [ebp-4]
 004F7693    mov         eax,dword ptr [eax+64];TServerWinSocket.FActiveThreads:TList
 004F7696    mov         edx,dword ptr [ebp-10]
 004F7699    call        TList.Get
 004F769E    mov         dword ptr [ebp-0C],eax
 004F76A1    mov         edx,dword ptr [ebp-8]
 004F76A4    mov         eax,dword ptr [ebp-0C]
 004F76A7    call        004F7988
>004F76AC    jmp         004F76B6
 004F76AE    inc         dword ptr [ebp-10]
 004F76B1    dec         dword ptr [ebp-14]
>004F76B4    jne         004F767C
 004F76B6    xor         eax,eax
 004F76B8    pop         edx
 004F76B9    pop         ecx
 004F76BA    pop         ecx
 004F76BB    mov         dword ptr fs:[eax],edx
 004F76BE    push        4F76D6
 004F76C3    mov         eax,dword ptr [ebp-4]
 004F76C6    mov         eax,dword ptr [eax+68];TServerWinSocket.FListLock:TCriticalSection
 004F76C9    call        004923F4
 004F76CE    ret
>004F76CF    jmp         @HandleFinally
>004F76D4    jmp         004F76C3
 004F76D6    cmp         dword ptr [ebp-0C],0
>004F76DA    jne         004F770D
 004F76DC    mov         eax,dword ptr [ebp-4]
 004F76DF    cmp         word ptr [eax+7A],0;TServerWinSocket.?f7A:word
>004F76E4    je          004F76F9
 004F76E6    lea         eax,[ebp-0C]
 004F76E9    push        eax
 004F76EA    mov         ebx,dword ptr [ebp-4]
 004F76ED    mov         ecx,dword ptr [ebp-8]
 004F76F0    mov         edx,dword ptr [ebp-4]
 004F76F3    mov         eax,dword ptr [ebx+7C];TServerWinSocket.?f7C:dword
 004F76F6    call        dword ptr [ebx+78];TServerWinSocket.FOnGetThread
 004F76F9    cmp         dword ptr [ebp-0C],0
>004F76FD    jne         004F770D
 004F76FF    mov         edx,dword ptr [ebp-8]
 004F7702    mov         eax,dword ptr [ebp-4]
 004F7705    mov         ecx,dword ptr [eax]
 004F7707    call        dword ptr [ecx+14];TServerWinSocket.sub_004F73B0
 004F770A    mov         dword ptr [ebp-0C],eax
 004F770D    mov         eax,dword ptr [ebp-0C]
 004F7710    pop         ebx
 004F7711    mov         esp,ebp
 004F7713    pop         ebp
 004F7714    ret
end;*}

//004F7718
{*procedure TServerWinSocket.sub_004F7718(?:?);
begin
 004F7718    push        ebp
 004F7719    mov         ebp,esp
 004F771B    add         esp,0FFFFFFF8
 004F771E    push        ebx
 004F771F    mov         dword ptr [ebp-8],edx
 004F7722    mov         dword ptr [ebp-4],eax
 004F7725    mov         eax,dword ptr [ebp-4]
 004F7728    cmp         word ptr [eax+92],0;TServerWinSocket.?f92:word
>004F7730    je          004F7747
 004F7732    mov         ebx,dword ptr [ebp-4]
 004F7735    mov         ecx,dword ptr [ebp-8]
 004F7738    mov         edx,dword ptr [ebp-4]
 004F773B    mov         eax,dword ptr [ebx+94];TServerWinSocket.?f94:dword
 004F7741    call        dword ptr [ebx+90];TServerWinSocket.FOnClientConnect
 004F7747    pop         ebx
 004F7748    pop         ecx
 004F7749    pop         ecx
 004F774A    pop         ebp
 004F774B    ret
end;*}

//004F774C
{*procedure TServerWinSocket.sub_004F774C(?:?);
begin
 004F774C    push        ebp
 004F774D    mov         ebp,esp
 004F774F    add         esp,0FFFFFFF8
 004F7752    push        ebx
 004F7753    mov         dword ptr [ebp-8],edx
 004F7756    mov         dword ptr [ebp-4],eax
 004F7759    mov         eax,dword ptr [ebp-4]
 004F775C    cmp         word ptr [eax+9A],0;TServerWinSocket.?f9A:word
>004F7764    je          004F777B
 004F7766    mov         ebx,dword ptr [ebp-4]
 004F7769    mov         ecx,dword ptr [ebp-8]
 004F776C    mov         edx,dword ptr [ebp-4]
 004F776F    mov         eax,dword ptr [ebx+9C];TServerWinSocket.?f9C:dword
 004F7775    call        dword ptr [ebx+98];TServerWinSocket.FOnClientDisconnect
 004F777B    mov         eax,dword ptr [ebp-4]
 004F777E    cmp         byte ptr [eax+58],0;TServerWinSocket.FServerType:TServerType
>004F7782    jne         004F778C
 004F7784    mov         eax,dword ptr [ebp-8]
 004F7787    call        004F5D94
 004F778C    pop         ebx
 004F778D    pop         ecx
 004F778E    pop         ecx
 004F778F    pop         ebp
 004F7790    ret
end;*}

//004F7794
{*procedure TServerWinSocket.sub_004F7794(?:?);
begin
 004F7794    push        ebp
 004F7795    mov         ebp,esp
 004F7797    add         esp,0FFFFFFF8
 004F779A    push        ebx
 004F779B    mov         dword ptr [ebp-8],edx
 004F779E    mov         dword ptr [ebp-4],eax
 004F77A1    mov         eax,dword ptr [ebp-4]
 004F77A4    cmp         word ptr [eax+0A2],0;TServerWinSocket.?fA2:word
>004F77AC    je          004F77C3
 004F77AE    mov         ebx,dword ptr [ebp-4]
 004F77B1    mov         ecx,dword ptr [ebp-8]
 004F77B4    mov         edx,dword ptr [ebp-4]
 004F77B7    mov         eax,dword ptr [ebx+0A4];TServerWinSocket.?fA4:dword
 004F77BD    call        dword ptr [ebx+0A0];TServerWinSocket.FOnClientRead
 004F77C3    pop         ebx
 004F77C4    pop         ecx
 004F77C5    pop         ecx
 004F77C6    pop         ebp
 004F77C7    ret
end;*}

//004F77C8
{*procedure TServerWinSocket.sub_004F77C8(?:?);
begin
 004F77C8    push        ebp
 004F77C9    mov         ebp,esp
 004F77CB    add         esp,0FFFFFFF8
 004F77CE    push        ebx
 004F77CF    mov         dword ptr [ebp-8],edx
 004F77D2    mov         dword ptr [ebp-4],eax
 004F77D5    mov         eax,dword ptr [ebp-4]
 004F77D8    cmp         word ptr [eax+0AA],0;TServerWinSocket.?fAA:word
>004F77E0    je          004F77F7
 004F77E2    mov         ebx,dword ptr [ebp-4]
 004F77E5    mov         ecx,dword ptr [ebp-8]
 004F77E8    mov         edx,dword ptr [ebp-4]
 004F77EB    mov         eax,dword ptr [ebx+0AC];TServerWinSocket.?fAC:dword
 004F77F1    call        dword ptr [ebx+0A8];TServerWinSocket.FOnClientWrite
 004F77F7    pop         ebx
 004F77F8    pop         ecx
 004F77F9    pop         ecx
 004F77FA    pop         ebp
 004F77FB    ret
end;*}

//004F77FC
{*procedure TServerWinSocket.sub_004F77FC(?:?; ?:?; ?:?);
begin
 004F77FC    push        ebp
 004F77FD    mov         ebp,esp
 004F77FF    add         esp,0FFFFFFF4
 004F7802    push        ebx
 004F7803    mov         byte ptr [ebp-9],cl
 004F7806    mov         dword ptr [ebp-8],edx
 004F7809    mov         dword ptr [ebp-4],eax
 004F780C    mov         eax,dword ptr [ebp-4]
 004F780F    cmp         word ptr [eax+0B2],0;TServerWinSocket.?fB2:word
>004F7817    je          004F7836
 004F7819    mov         al,byte ptr [ebp-9]
 004F781C    push        eax
 004F781D    mov         eax,dword ptr [ebp+8]
 004F7820    push        eax
 004F7821    mov         ebx,dword ptr [ebp-4]
 004F7824    mov         ecx,dword ptr [ebp-8]
 004F7827    mov         edx,dword ptr [ebp-4]
 004F782A    mov         eax,dword ptr [ebx+0B4];TServerWinSocket.?fB4:dword
 004F7830    call        dword ptr [ebx+0B0];TServerWinSocket.FOnClientError
 004F7836    pop         ebx
 004F7837    mov         esp,ebp
 004F7839    pop         ebp
 004F783A    ret         4
end;*}

//004F7840
{*constructor TServerAcceptThread.Create(?:?);
begin
 004F7840    push        ebp
 004F7841    mov         ebp,esp
 004F7843    add         esp,0FFFFFFF8
 004F7846    test        dl,dl
>004F7848    je          004F7852
 004F784A    add         esp,0FFFFFFF0
 004F784D    call        @ClassCreate
 004F7852    mov         byte ptr [ebp-6],cl
 004F7855    mov         byte ptr [ebp-5],dl
 004F7858    mov         dword ptr [ebp-4],eax
 004F785B    mov         eax,dword ptr [ebp-4]
 004F785E    mov         edx,dword ptr [ebp+8]
 004F7861    mov         dword ptr [eax+40],edx;TServerAcceptThread.....FServerSocket:TServerWinSocket
 004F7864    mov         cl,byte ptr [ebp-6]
 004F7867    xor         edx,edx
 004F7869    mov         eax,dword ptr [ebp-4]
 004F786C    call        00482974
 004F7871    mov         eax,dword ptr [ebp-4]
 004F7874    cmp         byte ptr [ebp-5],0
>004F7878    je          004F7889
 004F787A    call        @AfterConstruction
 004F787F    pop         dword ptr fs:[0]
 004F7886    add         esp,0C
 004F7889    mov         eax,dword ptr [ebp-4]
 004F788C    pop         ecx
 004F788D    pop         ecx
 004F788E    pop         ebp
 004F788F    ret         4
end;*}

//004F7894
procedure TServerAcceptThread.Execute;
begin
{*
 004F7894    push        ebp
 004F7895    mov         ebp,esp
 004F7897    push        ecx
 004F7898    mov         dword ptr [ebp-4],eax
>004F789B    jmp         004F78B0
 004F789D    mov         eax,dword ptr [ebp-4]
 004F78A0    mov         eax,dword ptr [eax+40];TServerAcceptThread......FServerSocket:TServerWinSocket
 004F78A3    mov         edx,dword ptr [eax+4];TServerWinSocket.FSocket:TSocket
 004F78A6    mov         eax,dword ptr [ebp-4]
 004F78A9    mov         eax,dword ptr [eax+40];TServerAcceptThread.......FServerSocket:TServerWinSocket
 004F78AC    mov         ecx,dword ptr [eax]
 004F78AE    call        dword ptr [ecx];TServerWinSocket.sub_004F7154
 004F78B0    mov         eax,dword ptr [ebp-4]
 004F78B3    cmp         byte ptr [eax+0D],0;TServerAcceptThread.FTerminated:Boolean
>004F78B7    je          004F789D
 004F78B9    pop         ecx
 004F78BA    pop         ebp
 004F78BB    ret
*}
end;

//004F78BC
{*constructor TServerClientThread.Create(?:?);
begin
 004F78BC    push        ebp
 004F78BD    mov         ebp,esp
 004F78BF    add         esp,0FFFFFFF8
 004F78C2    test        dl,dl
>004F78C4    je          004F78CE
 004F78C6    add         esp,0FFFFFFF0
 004F78C9    call        @ClassCreate
 004F78CE    mov         byte ptr [ebp-6],cl
 004F78D1    mov         byte ptr [ebp-5],dl
 004F78D4    mov         dword ptr [ebp-4],eax
 004F78D7    mov         eax,dword ptr [ebp-4]
 004F78DA    mov         byte ptr [eax+0F],1;TServerClientThread.FFreeOnTerminate:Boolean
 004F78DE    mov         dl,1
 004F78E0    mov         eax,[004920B8];TSimpleEvent
 004F78E5    call        TSimpleEvent.Create;TSimpleEvent.Create
 004F78EA    mov         edx,dword ptr [ebp-4]
 004F78ED    mov         dword ptr [edx+4C],eax;TServerClientThread.FEvent:TSimpleEvent
 004F78F0    mov         cl,1
 004F78F2    xor         edx,edx
 004F78F4    mov         eax,dword ptr [ebp-4]
 004F78F7    call        00482974
 004F78FC    mov         dl,4
 004F78FE    mov         eax,dword ptr [ebp-4]
 004F7901    call        00482C00
 004F7906    mov         edx,dword ptr [ebp+8]
 004F7909    mov         eax,dword ptr [ebp-4]
 004F790C    call        004F7988
 004F7911    cmp         byte ptr [ebp-6],0
>004F7915    jne         004F791F
 004F7917    mov         eax,dword ptr [ebp-4]
 004F791A    call        00482E08
 004F791F    mov         eax,dword ptr [ebp-4]
 004F7922    cmp         byte ptr [ebp-5],0
>004F7926    je          004F7937
 004F7928    call        @AfterConstruction
 004F792D    pop         dword ptr fs:[0]
 004F7934    add         esp,0C
 004F7937    mov         eax,dword ptr [ebp-4]
 004F793A    pop         ecx
 004F793B    pop         ecx
 004F793C    pop         ebp
 004F793D    ret         4
end;*}

//004F7940
destructor TServerClientThread.Destroy;
begin
{*
 004F7940    push        ebp
 004F7941    mov         ebp,esp
 004F7943    add         esp,0FFFFFFF8
 004F7946    call        @BeforeDestruction
 004F794B    mov         byte ptr [ebp-5],dl
 004F794E    mov         dword ptr [ebp-4],eax
 004F7951    mov         eax,dword ptr [ebp-4]
 004F7954    mov         eax,dword ptr [eax+40]
 004F7957    call        TObject.Free
 004F795C    mov         eax,dword ptr [ebp-4]
 004F795F    mov         eax,dword ptr [eax+4C]
 004F7962    call        TObject.Free
 004F7967    mov         dl,byte ptr [ebp-5]
 004F796A    and         dl,0FC
 004F796D    mov         eax,dword ptr [ebp-4]
 004F7970    call        TThread.Destroy
 004F7975    cmp         byte ptr [ebp-5],0
>004F7979    jle         004F7983
 004F797B    mov         eax,dword ptr [ebp-4]
 004F797E    call        @ClassDestroy
 004F7983    pop         ecx
 004F7984    pop         ecx
 004F7985    pop         ebp
 004F7986    ret
*}
end;

//004F7988
{*procedure sub_004F7988(?:Pointer; ?:?);
begin
 004F7988    push        ebp
 004F7989    mov         ebp,esp
 004F798B    add         esp,0FFFFFFF8
 004F798E    mov         dword ptr [ebp-8],edx
 004F7991    mov         dword ptr [ebp-4],eax
 004F7994    mov         eax,dword ptr [ebp-8]
 004F7997    mov         edx,dword ptr [ebp-4]
 004F799A    mov         dword ptr [edx+40],eax
 004F799D    mov         eax,dword ptr [ebp-4]
 004F79A0    cmp         dword ptr [eax+40],0
>004F79A4    je          004F79F4
 004F79A6    mov         eax,dword ptr [ebp-4]
 004F79A9    mov         eax,dword ptr [eax+40]
 004F79AC    mov         eax,dword ptr [eax+58]
 004F79AF    mov         edx,dword ptr [ebp-4]
 004F79B2    mov         dword ptr [edx+44],eax
 004F79B5    mov         edx,dword ptr [ebp-4]
 004F79B8    mov         eax,dword ptr [ebp-4]
 004F79BB    mov         eax,dword ptr [eax+44]
 004F79BE    call        004F6FB4
 004F79C3    mov         eax,dword ptr [ebp-4]
 004F79C6    mov         eax,dword ptr [eax+40]
 004F79C9    mov         edx,dword ptr [ebp-4]
 004F79CC    mov         dword ptr [eax+34],edx
 004F79CF    mov         dword ptr [eax+30],4F7ACC;sub_004F7ACC
 004F79D6    mov         eax,dword ptr [ebp-4]
 004F79D9    mov         eax,dword ptr [eax+40]
 004F79DC    mov         edx,dword ptr [ebp-4]
 004F79DF    mov         dword ptr [eax+3C],edx
 004F79E2    mov         dword ptr [eax+38],4F7AEC;sub_004F7AEC
 004F79E9    mov         eax,dword ptr [ebp-4]
 004F79EC    mov         eax,dword ptr [eax+4C]
 004F79EF    call        004922A4
 004F79F4    pop         ecx
 004F79F5    pop         ecx
 004F79F6    pop         ebp
 004F79F7    ret
end;*}

//004F7A7C
procedure sub_004F7A7C;
begin
{*
 004F7A7C    push        ebp
 004F7A7D    mov         ebp,esp
 004F7A7F    push        ecx
 004F7A80    mov         dword ptr [ebp-4],eax
 004F7A83    mov         eax,dword ptr [ebp-4]
 004F7A86    call        00482BD8
 004F7A8B    mov         eax,dword ptr [ebp-4]
 004F7A8E    cmp         dword ptr [eax+44],0;TServerClientThread.FServerSocket:TServerWinSocket
>004F7A92    je          004F7AA2
 004F7A94    mov         edx,dword ptr [ebp-4]
 004F7A97    mov         eax,dword ptr [ebp-4]
 004F7A9A    mov         eax,dword ptr [eax+44];TServerClientThread.FServerSocket:TServerWinSocket
 004F7A9D    call        004F7038
 004F7AA2    pop         ecx
 004F7AA3    pop         ebp
 004F7AA4    ret
*}
end;

//004F7ACC
{*procedure sub_004F7ACC(?:?; ?:?; ?:?; ?:?);
begin
 004F7ACC    push        ebp
 004F7ACD    mov         ebp,esp
 004F7ACF    add         esp,0FFFFFFF4
 004F7AD2    mov         dword ptr [ebp-0C],ecx
 004F7AD5    mov         dword ptr [ebp-8],edx
 004F7AD8    mov         dword ptr [ebp-4],eax
 004F7ADB    mov         dl,byte ptr [ebp+8]
 004F7ADE    mov         eax,dword ptr [ebp-4]
 004F7AE1    mov         ecx,dword ptr [eax]
 004F7AE3    call        dword ptr [ecx+0C]
 004F7AE6    mov         esp,ebp
 004F7AE8    pop         ebp
 004F7AE9    ret         4
end;*}

//004F7AEC
{*procedure sub_004F7AEC(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004F7AEC    push        ebp
 004F7AED    mov         ebp,esp
 004F7AEF    add         esp,0FFFFFFF4
 004F7AF2    push        ebx
 004F7AF3    mov         dword ptr [ebp-0C],ecx
 004F7AF6    mov         dword ptr [ebp-8],edx
 004F7AF9    mov         dword ptr [ebp-4],eax
 004F7AFC    mov         ecx,dword ptr [ebp+8]
 004F7AFF    mov         dl,byte ptr [ebp+0C]
 004F7B02    mov         eax,dword ptr [ebp-4]
 004F7B05    mov         ebx,dword ptr [eax]
 004F7B07    call        dword ptr [ebx+10]
 004F7B0A    pop         ebx
 004F7B0B    mov         esp,ebp
 004F7B0D    pop         ebp
 004F7B0E    ret         8
end;*}

//004F7B14
{*procedure sub_004F7B14(?:?);
begin
 004F7B14    push        ebp
 004F7B15    mov         ebp,esp
 004F7B17    add         esp,0FFFFFFF8
 004F7B1A    mov         byte ptr [ebp-5],dl
 004F7B1D    mov         dword ptr [ebp-4],eax
 004F7B20    mov         al,byte ptr [ebp-5]
 004F7B23    push        eax
 004F7B24    mov         eax,dword ptr [ebp-4]
 004F7B27    mov         ecx,dword ptr [eax+40];TServerClientThread.FClientSocket:TServerClientWinSocket
 004F7B2A    mov         edx,dword ptr [ebp-4]
 004F7B2D    mov         eax,dword ptr [ebp-4]
 004F7B30    mov         eax,dword ptr [eax+44];TServerClientThread.FServerSocket:TServerWinSocket
 004F7B33    call        004F7090
 004F7B38    pop         ecx
 004F7B39    pop         ecx
 004F7B3A    pop         ebp
 004F7B3B    ret
end;*}

//004F7B3C
{*procedure sub_004F7B3C(?:?; ?:?);
begin
 004F7B3C    push        ebp
 004F7B3D    mov         ebp,esp
 004F7B3F    add         esp,0FFFFFFF4
 004F7B42    mov         dword ptr [ebp-0C],ecx
 004F7B45    mov         byte ptr [ebp-5],dl
 004F7B48    mov         dword ptr [ebp-4],eax
 004F7B4B    mov         al,byte ptr [ebp-5]
 004F7B4E    push        eax
 004F7B4F    mov         eax,dword ptr [ebp-0C]
 004F7B52    push        eax
 004F7B53    mov         eax,dword ptr [ebp-4]
 004F7B56    mov         ecx,dword ptr [eax+40];TServerClientThread.FClientSocket:TServerClientWinSocket
 004F7B59    mov         edx,dword ptr [ebp-4]
 004F7B5C    mov         eax,dword ptr [ebp-4]
 004F7B5F    mov         eax,dword ptr [eax+44];TServerClientThread.FServerSocket:TServerWinSocket
 004F7B62    call        004F7100
 004F7B67    mov         esp,ebp
 004F7B69    pop         ebp
 004F7B6A    ret
end;*}

//004F7B6C
procedure sub_004F7B6C;
begin
{*
 004F7B6C    push        ebp
 004F7B6D    mov         ebp,esp
 004F7B6F    push        ecx
 004F7B70    mov         dword ptr [ebp-4],eax
 004F7B73    call        ExceptObject
 004F7B78    mov         edx,dword ptr [ebp-4]
 004F7B7B    mov         dword ptr [edx+48],eax;TServerClientThread.FException:Exception
 004F7B7E    xor         eax,eax
 004F7B80    push        ebp
 004F7B81    push        4F7BC8
 004F7B86    push        dword ptr fs:[eax]
 004F7B89    mov         dword ptr fs:[eax],esp
 004F7B8C    mov         eax,dword ptr [ebp-4]
 004F7B8F    mov         eax,dword ptr [eax+48];TServerClientThread.FException:Exception
 004F7B92    mov         edx,dword ptr ds:[46541C];EAbort
 004F7B98    call        @IsClass
 004F7B9D    test        al,al
>004F7B9F    jne         004F7BB2
 004F7BA1    mov         eax,dword ptr [ebp-4]
 004F7BA4    push        eax
 004F7BA5    push        4F79F8
 004F7BAA    mov         eax,dword ptr [ebp-4]
 004F7BAD    call        00482D80
 004F7BB2    xor         eax,eax
 004F7BB4    pop         edx
 004F7BB5    pop         ecx
 004F7BB6    pop         ecx
 004F7BB7    mov         dword ptr fs:[eax],edx
 004F7BBA    push        4F7BCF
 004F7BBF    mov         eax,dword ptr [ebp-4]
 004F7BC2    xor         edx,edx
 004F7BC4    mov         dword ptr [eax+48],edx;TServerClientThread.FException:Exception
 004F7BC7    ret
>004F7BC8    jmp         @HandleFinally
>004F7BCD    jmp         004F7BBF
 004F7BCF    pop         ecx
 004F7BD0    pop         ebp
 004F7BD1    ret
*}
end;

//004F7BD4
procedure TServerClientThread.Execute;
begin
{*
 004F7BD4    push        ebp
 004F7BD5    mov         ebp,esp
 004F7BD7    push        ecx
 004F7BD8    push        ebx
 004F7BD9    push        esi
 004F7BDA    push        edi
 004F7BDB    mov         dword ptr [ebp-4],eax
 004F7BDE    mov         eax,dword ptr [ebp-4]
 004F7BE1    mov         eax,dword ptr [eax+44]
 004F7BE4    mov         edx,dword ptr [ebp-4]
 004F7BE7    mov         si,0FFFC
 004F7BEB    call        @CallDynaInst
 004F7BF0    xor         eax,eax
 004F7BF2    push        ebp
 004F7BF3    push        4F7C6F
 004F7BF8    push        dword ptr fs:[eax]
 004F7BFB    mov         dword ptr fs:[eax],esp
 004F7BFE    xor         eax,eax
 004F7C00    push        ebp
 004F7C01    push        4F7C36
 004F7C06    push        dword ptr fs:[eax]
 004F7C09    mov         dword ptr fs:[eax],esp
 004F7C0C    mov         eax,dword ptr [ebp-4]
 004F7C0F    call        TServerClientThread.StartConnect
 004F7C14    test        al,al
>004F7C16    je          004F7C20
 004F7C18    mov         eax,dword ptr [ebp-4]
 004F7C1B    mov         edx,dword ptr [eax]
 004F7C1D    call        dword ptr [edx+8]
 004F7C20    mov         eax,dword ptr [ebp-4]
 004F7C23    call        TServerClientThread.EndConnect
 004F7C28    test        al,al
>004F7C2A    je          004F7C0C
 004F7C2C    xor         eax,eax
 004F7C2E    pop         edx
 004F7C2F    pop         ecx
 004F7C30    pop         ecx
 004F7C31    mov         dword ptr fs:[eax],edx
>004F7C34    jmp         004F7C4F
>004F7C36    jmp         @HandleAnyException
 004F7C3B    mov         eax,dword ptr [ebp-4]
 004F7C3E    mov         edx,dword ptr [eax]
 004F7C40    call        dword ptr [edx+14]
 004F7C43    mov         eax,dword ptr [ebp-4]
 004F7C46    mov         byte ptr [eax+50],0
 004F7C4A    call        @DoneExcept
 004F7C4F    xor         eax,eax
 004F7C51    pop         edx
 004F7C52    pop         ecx
 004F7C53    pop         ecx
 004F7C54    mov         dword ptr fs:[eax],edx
 004F7C57    push        4F7C76
 004F7C5C    mov         eax,dword ptr [ebp-4]
 004F7C5F    mov         eax,dword ptr [eax+44]
 004F7C62    mov         edx,dword ptr [ebp-4]
 004F7C65    mov         si,0FFFD
 004F7C69    call        @CallDynaInst
 004F7C6E    ret
>004F7C6F    jmp         @HandleFinally
>004F7C74    jmp         004F7C5C
 004F7C76    pop         edi
 004F7C77    pop         esi
 004F7C78    pop         ebx
 004F7C79    pop         ecx
 004F7C7A    pop         ebp
 004F7C7B    ret
*}
end;

//004F7C7C
procedure sub_004F7C7C;
begin
{*
 004F7C7C    push        ebp
 004F7C7D    mov         ebp,esp
 004F7C7F    add         esp,0FFFFFEF0
 004F7C85    mov         dword ptr [ebp-4],eax
>004F7C88    jmp         004F7D38
 004F7C8D    lea         eax,[ebp-110]
 004F7C93    call        00430148
 004F7C98    lea         edx,[ebp-110]
 004F7C9E    mov         eax,dword ptr [ebp-4]
 004F7CA1    mov         eax,dword ptr [eax+40];TServerClientThread.FClientSocket:TServerClientWinSocket
 004F7CA4    mov         eax,dword ptr [eax+4];TServerClientWinSocket.FSocket:TSocket
 004F7CA7    call        0043011C
 004F7CAC    xor         eax,eax
 004F7CAE    mov         dword ptr [ebp-0C],eax
 004F7CB1    mov         dword ptr [ebp-8],1F4
 004F7CB8    lea         eax,[ebp-0C]
 004F7CBB    push        eax
 004F7CBC    push        0
 004F7CBE    push        0
 004F7CC0    lea         eax,[ebp-110]
 004F7CC6    push        eax
 004F7CC7    push        0
 004F7CC9    call        wsock32.select
 004F7CCE    test        eax,eax
>004F7CD0    jle         004F7D04
 004F7CD2    mov         eax,dword ptr [ebp-4]
 004F7CD5    cmp         byte ptr [eax+0D],0;TServerClientThread.FTerminated:Boolean
>004F7CD9    jne         004F7D04
 004F7CDB    lea         edx,[ebp-110]
 004F7CE1    or          ecx,0FFFFFFFF
 004F7CE4    mov         eax,dword ptr [ebp-4]
 004F7CE7    mov         eax,dword ptr [eax+40];TServerClientThread.FClientSocket:TServerClientWinSocket
 004F7CEA    call        004F6888
 004F7CEF    test        eax,eax
>004F7CF1    je          004F7D51
 004F7CF3    mov         eax,dword ptr [ebp-4]
 004F7CF6    push        eax
 004F7CF7    push        4F7A54
 004F7CFC    mov         eax,dword ptr [ebp-4]
 004F7CFF    call        00482D80
 004F7D04    lea         eax,[ebp-0C]
 004F7D07    push        eax
 004F7D08    push        0
 004F7D0A    lea         eax,[ebp-110]
 004F7D10    push        eax
 004F7D11    push        0
 004F7D13    push        0
 004F7D15    call        wsock32.select
 004F7D1A    test        eax,eax
>004F7D1C    jle         004F7D38
 004F7D1E    mov         eax,dword ptr [ebp-4]
 004F7D21    cmp         byte ptr [eax+0D],0;TServerClientThread.FTerminated:Boolean
>004F7D25    jne         004F7D38
 004F7D27    mov         eax,dword ptr [ebp-4]
 004F7D2A    push        eax
 004F7D2B    push        4F7AA8
 004F7D30    mov         eax,dword ptr [ebp-4]
 004F7D33    call        00482D80
 004F7D38    mov         eax,dword ptr [ebp-4]
 004F7D3B    cmp         byte ptr [eax+0D],0;TServerClientThread.FTerminated:Boolean
>004F7D3F    jne         004F7D51
 004F7D41    mov         eax,dword ptr [ebp-4]
 004F7D44    mov         eax,dword ptr [eax+40];TServerClientThread.FClientSocket:TServerClientWinSocket
 004F7D47    cmp         byte ptr [eax+8],0;TServerClientWinSocket.FConnected:Boolean
>004F7D4B    jne         004F7C8D
 004F7D51    mov         esp,ebp
 004F7D53    pop         ebp
 004F7D54    ret
*}
end;

//004F7D58
function TServerClientThread.StartConnect:Boolean;
begin
{*
 004F7D58    push        ebp
 004F7D59    mov         ebp,esp
 004F7D5B    add         esp,0FFFFFFF8
 004F7D5E    mov         dword ptr [ebp-4],eax
 004F7D61    or          edx,0FFFFFFFF
 004F7D64    mov         eax,dword ptr [ebp-4]
 004F7D67    mov         eax,dword ptr [eax+4C]
 004F7D6A    call        00492240
 004F7D6F    test        al,al
>004F7D71    jne         004F7D7E
 004F7D73    mov         eax,dword ptr [ebp-4]
 004F7D76    mov         eax,dword ptr [eax+4C]
 004F7D79    call        004922BC
 004F7D7E    mov         eax,dword ptr [ebp-4]
 004F7D81    mov         al,byte ptr [eax+0D]
 004F7D84    xor         al,1
 004F7D86    mov         byte ptr [ebp-5],al
 004F7D89    mov         al,byte ptr [ebp-5]
 004F7D8C    pop         ecx
 004F7D8D    pop         ecx
 004F7D8E    pop         ebp
 004F7D8F    ret
*}
end;

//004F7D90
function TServerClientThread.EndConnect:Boolean;
begin
{*
 004F7D90    push        ebp
 004F7D91    mov         ebp,esp
 004F7D93    add         esp,0FFFFFFF8
 004F7D96    mov         dword ptr [ebp-4],eax
 004F7D99    mov         eax,dword ptr [ebp-4]
 004F7D9C    mov         eax,dword ptr [eax+40]
 004F7D9F    call        TObject.Free
 004F7DA4    mov         eax,dword ptr [ebp-4]
 004F7DA7    xor         edx,edx
 004F7DA9    mov         dword ptr [eax+40],edx
 004F7DAC    mov         eax,dword ptr [ebp-4]
 004F7DAF    cmp         byte ptr [eax+0D],0
>004F7DB3    jne         004F7DC2
 004F7DB5    mov         eax,dword ptr [ebp-4]
 004F7DB8    cmp         byte ptr [eax+50],0
>004F7DBC    je          004F7DC2
 004F7DBE    xor         eax,eax
>004F7DC0    jmp         004F7DC4
 004F7DC2    mov         al,1
 004F7DC4    mov         byte ptr [ebp-5],al
 004F7DC7    mov         al,byte ptr [ebp-5]
 004F7DCA    pop         ecx
 004F7DCB    pop         ecx
 004F7DCC    pop         ebp
 004F7DCD    ret
*}
end;

//004F7DD0
{*procedure sub_004F7DD0(?:?; ?:?; ?:?; ?:?);
begin
 004F7DD0    push        ebp
 004F7DD1    mov         ebp,esp
 004F7DD3    add         esp,0FFFFFFF4
 004F7DD6    push        ebx
 004F7DD7    mov         dword ptr [ebp-8],ecx
 004F7DDA    mov         dword ptr [ebp-0C],edx
 004F7DDD    mov         dword ptr [ebp-4],eax
 004F7DE0    mov         cl,byte ptr [ebp+8]
 004F7DE3    mov         edx,dword ptr [ebp-8]
 004F7DE6    mov         eax,dword ptr [ebp-4]
 004F7DE9    mov         ebx,dword ptr [eax]
 004F7DEB    call        dword ptr [ebx+30]
 004F7DEE    pop         ebx
 004F7DEF    mov         esp,ebp
 004F7DF1    pop         ebp
 004F7DF2    ret         4
end;*}

//004F7DF8
{*procedure sub_004F7DF8(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004F7DF8    push        ebp
 004F7DF9    mov         ebp,esp
 004F7DFB    add         esp,0FFFFFFF4
 004F7DFE    push        ebx
 004F7DFF    mov         dword ptr [ebp-8],ecx
 004F7E02    mov         dword ptr [ebp-0C],edx
 004F7E05    mov         dword ptr [ebp-4],eax
 004F7E08    mov         eax,dword ptr [ebp+8]
 004F7E0B    push        eax
 004F7E0C    mov         cl,byte ptr [ebp+0C]
 004F7E0F    mov         edx,dword ptr [ebp-8]
 004F7E12    mov         eax,dword ptr [ebp-4]
 004F7E15    mov         ebx,dword ptr [eax]
 004F7E17    call        dword ptr [ebx+34]
 004F7E1A    pop         ebx
 004F7E1B    mov         esp,ebp
 004F7E1D    pop         ebp
 004F7E1E    ret         8
end;*}

//004F7E24
procedure TClientSocket.SetActive(Value:Boolean);
begin
{*
 004F7E24    push        ebp
 004F7E25    mov         ebp,esp
 004F7E27    add         esp,0FFFFFFF8
 004F7E2A    mov         byte ptr [ebp-5],dl
 004F7E2D    mov         dword ptr [ebp-4],eax
 004F7E30    mov         al,byte ptr [ebp-5]
 004F7E33    mov         edx,dword ptr [ebp-4]
 004F7E36    cmp         al,byte ptr [edx+30];TClientSocket.FActive:Boolean
>004F7E39    je          004F7E6A
 004F7E3B    mov         eax,dword ptr [ebp-4]
 004F7E3E    test        byte ptr [eax+1C],10;TClientSocket.FComponentState:TComponentState
>004F7E42    jne         004F7E4D
 004F7E44    mov         eax,dword ptr [ebp-4]
 004F7E47    test        byte ptr [eax+1C],1;TClientSocket.FComponentState:TComponentState
>004F7E4B    je          004F7E56
 004F7E4D    mov         al,byte ptr [ebp-5]
 004F7E50    mov         edx,dword ptr [ebp-4]
 004F7E53    mov         byte ptr [edx+30],al;TClientSocket.FActive:Boolean
 004F7E56    mov         eax,dword ptr [ebp-4]
 004F7E59    test        byte ptr [eax+1C],1;TClientSocket.FComponentState:TComponentState
>004F7E5D    jne         004F7E6A
 004F7E5F    mov         dl,byte ptr [ebp-5]
 004F7E62    mov         eax,dword ptr [ebp-4]
 004F7E65    mov         ecx,dword ptr [eax]
 004F7E67    call        dword ptr [ecx+38];TClientSocket.sub_004F8300
 004F7E6A    pop         ecx
 004F7E6B    pop         ecx
 004F7E6C    pop         ebp
 004F7E6D    ret
*}
end;

//004F7E70
procedure sub_004F7E70(?:TCustomSocket; ?:TCustomWinSocket);
begin
{*
 004F7E70    push        ebp
 004F7E71    mov         ebp,esp
 004F7E73    add         esp,0FFFFFFF8
 004F7E76    mov         dword ptr [ebp-8],edx
 004F7E79    mov         dword ptr [ebp-4],eax
 004F7E7C    mov         eax,dword ptr [ebp-4]
 004F7E7F    mov         edx,dword ptr [ebp-8]
 004F7E82    mov         dword ptr [edx+34],eax
 004F7E85    mov         dword ptr [edx+30],4F7DD0;sub_004F7DD0
 004F7E8C    mov         eax,dword ptr [ebp-4]
 004F7E8F    mov         edx,dword ptr [ebp-8]
 004F7E92    mov         dword ptr [edx+3C],eax
 004F7E95    mov         dword ptr [edx+38],4F7DF8;sub_004F7DF8
 004F7E9C    pop         ecx
 004F7E9D    pop         ecx
 004F7E9E    pop         ebp
 004F7E9F    ret
*}
end;

//004F7EA0
procedure sub_004F7EA0;
begin
{*
 004F7EA0    push        ebp
 004F7EA1    mov         ebp,esp
 004F7EA3    push        ecx
 004F7EA4    mov         dword ptr [ebp-4],eax
 004F7EA7    mov         eax,dword ptr [ebp-4]
 004F7EAA    call        004835C0
 004F7EAF    mov         eax,dword ptr [ebp-4]
 004F7EB2    mov         dl,byte ptr [eax+30];TAbstractSocket.FActive:Boolean
 004F7EB5    mov         eax,dword ptr [ebp-4]
 004F7EB8    mov         ecx,dword ptr [eax]
 004F7EBA    call        dword ptr [ecx+38];@AbstractError
 004F7EBD    pop         ecx
 004F7EBE    pop         ebp
 004F7EBF    ret
*}
end;

//004F7EC0
procedure TClientSocket.SetAddress(Value:String);
begin
{*
 004F7EC0    push        ebp
 004F7EC1    mov         ebp,esp
 004F7EC3    add         esp,0FFFFFFF8
 004F7EC6    mov         dword ptr [ebp-8],edx
 004F7EC9    mov         dword ptr [ebp-4],eax
 004F7ECC    mov         eax,dword ptr [ebp-8]
 004F7ECF    call        @LStrAddRef
 004F7ED4    xor         eax,eax
 004F7ED6    push        ebp
 004F7ED7    push        4F7F41
 004F7EDC    push        dword ptr fs:[eax]
 004F7EDF    mov         dword ptr fs:[eax],esp
 004F7EE2    mov         eax,dword ptr [ebp-4]
 004F7EE5    mov         edx,dword ptr [eax+38];TClientSocket.FAddress:String
 004F7EE8    mov         eax,dword ptr [ebp-8]
 004F7EEB    call        CompareText
 004F7EF0    test        eax,eax
>004F7EF2    je          004F7F2B
 004F7EF4    mov         eax,dword ptr [ebp-4]
 004F7EF7    test        byte ptr [eax+1C],1;TClientSocket.FComponentState:TComponentState
>004F7EFB    jne         004F7F1D
 004F7EFD    mov         eax,dword ptr [ebp-4]
 004F7F00    cmp         byte ptr [eax+30],0;TClientSocket.FActive:Boolean
>004F7F04    je          004F7F1D
 004F7F06    mov         ecx,dword ptr ds:[55B464];^sCantChangeWhileActive:TResStringRec
 004F7F0C    mov         dl,1
 004F7F0E    mov         eax,[004F4680];ESocketError
 004F7F13    call        Exception.Create;ESocketError.Create
 004F7F18    call        @RaiseExcept
 004F7F1D    mov         eax,dword ptr [ebp-4]
 004F7F20    add         eax,38;TClientSocket.FAddress:String
 004F7F23    mov         edx,dword ptr [ebp-8]
 004F7F26    call        @LStrAsg
 004F7F2B    xor         eax,eax
 004F7F2D    pop         edx
 004F7F2E    pop         ecx
 004F7F2F    pop         ecx
 004F7F30    mov         dword ptr fs:[eax],edx
 004F7F33    push        4F7F48
 004F7F38    lea         eax,[ebp-8]
 004F7F3B    call        @LStrClr
 004F7F40    ret
>004F7F41    jmp         @HandleFinally
>004F7F46    jmp         004F7F38
 004F7F48    pop         ecx
 004F7F49    pop         ecx
 004F7F4A    pop         ebp
 004F7F4B    ret
*}
end;

//004F7F4C
procedure TClientSocket.SetHost(Value:String);
begin
{*
 004F7F4C    push        ebp
 004F7F4D    mov         ebp,esp
 004F7F4F    add         esp,0FFFFFFF8
 004F7F52    mov         dword ptr [ebp-8],edx
 004F7F55    mov         dword ptr [ebp-4],eax
 004F7F58    mov         eax,dword ptr [ebp-8]
 004F7F5B    call        @LStrAddRef
 004F7F60    xor         eax,eax
 004F7F62    push        ebp
 004F7F63    push        4F7FCD
 004F7F68    push        dword ptr fs:[eax]
 004F7F6B    mov         dword ptr fs:[eax],esp
 004F7F6E    mov         eax,dword ptr [ebp-4]
 004F7F71    mov         edx,dword ptr [eax+3C];TClientSocket.FHost:String
 004F7F74    mov         eax,dword ptr [ebp-8]
 004F7F77    call        CompareText
 004F7F7C    test        eax,eax
>004F7F7E    je          004F7FB7
 004F7F80    mov         eax,dword ptr [ebp-4]
 004F7F83    test        byte ptr [eax+1C],1;TClientSocket.FComponentState:TComponentState
>004F7F87    jne         004F7FA9
 004F7F89    mov         eax,dword ptr [ebp-4]
 004F7F8C    cmp         byte ptr [eax+30],0;TClientSocket.FActive:Boolean
>004F7F90    je          004F7FA9
 004F7F92    mov         ecx,dword ptr ds:[55B464];^sCantChangeWhileActive:TResStringRec
 004F7F98    mov         dl,1
 004F7F9A    mov         eax,[004F4680];ESocketError
 004F7F9F    call        Exception.Create;ESocketError.Create
 004F7FA4    call        @RaiseExcept
 004F7FA9    mov         eax,dword ptr [ebp-4]
 004F7FAC    add         eax,3C;TClientSocket.FHost:String
 004F7FAF    mov         edx,dword ptr [ebp-8]
 004F7FB2    call        @LStrAsg
 004F7FB7    xor         eax,eax
 004F7FB9    pop         edx
 004F7FBA    pop         ecx
 004F7FBB    pop         ecx
 004F7FBC    mov         dword ptr fs:[eax],edx
 004F7FBF    push        4F7FD4
 004F7FC4    lea         eax,[ebp-8]
 004F7FC7    call        @LStrClr
 004F7FCC    ret
>004F7FCD    jmp         @HandleFinally
>004F7FD2    jmp         004F7FC4
 004F7FD4    pop         ecx
 004F7FD5    pop         ecx
 004F7FD6    pop         ebp
 004F7FD7    ret
*}
end;

//004F7FD8
procedure TClientSocket.SetPort(Value:Integer);
begin
{*
 004F7FD8    push        ebp
 004F7FD9    mov         ebp,esp
 004F7FDB    add         esp,0FFFFFFF8
 004F7FDE    mov         dword ptr [ebp-8],edx
 004F7FE1    mov         dword ptr [ebp-4],eax
 004F7FE4    mov         eax,dword ptr [ebp-4]
 004F7FE7    mov         eax,dword ptr [eax+34];TClientSocket.FPort:Integer
 004F7FEA    cmp         eax,dword ptr [ebp-8]
>004F7FED    je          004F8021
 004F7FEF    mov         eax,dword ptr [ebp-4]
 004F7FF2    test        byte ptr [eax+1C],1;TClientSocket.FComponentState:TComponentState
>004F7FF6    jne         004F8018
 004F7FF8    mov         eax,dword ptr [ebp-4]
 004F7FFB    cmp         byte ptr [eax+30],0;TClientSocket.FActive:Boolean
>004F7FFF    je          004F8018
 004F8001    mov         ecx,dword ptr ds:[55B464];^sCantChangeWhileActive:TResStringRec
 004F8007    mov         dl,1
 004F8009    mov         eax,[004F4680];ESocketError
 004F800E    call        Exception.Create;ESocketError.Create
 004F8013    call        @RaiseExcept
 004F8018    mov         eax,dword ptr [ebp-8]
 004F801B    mov         edx,dword ptr [ebp-4]
 004F801E    mov         dword ptr [edx+34],eax;TClientSocket.FPort:Integer
 004F8021    pop         ecx
 004F8022    pop         ecx
 004F8023    pop         ebp
 004F8024    ret
*}
end;

//004F8028
procedure TClientSocket.SetService(Value:String);
begin
{*
 004F8028    push        ebp
 004F8029    mov         ebp,esp
 004F802B    add         esp,0FFFFFFF8
 004F802E    mov         dword ptr [ebp-8],edx
 004F8031    mov         dword ptr [ebp-4],eax
 004F8034    mov         eax,dword ptr [ebp-8]
 004F8037    call        @LStrAddRef
 004F803C    xor         eax,eax
 004F803E    push        ebp
 004F803F    push        4F80A9
 004F8044    push        dword ptr fs:[eax]
 004F8047    mov         dword ptr fs:[eax],esp
 004F804A    mov         eax,dword ptr [ebp-4]
 004F804D    mov         edx,dword ptr [eax+40];TClientSocket.FService:String
 004F8050    mov         eax,dword ptr [ebp-8]
 004F8053    call        CompareText
 004F8058    test        eax,eax
>004F805A    je          004F8093
 004F805C    mov         eax,dword ptr [ebp-4]
 004F805F    test        byte ptr [eax+1C],1;TClientSocket.FComponentState:TComponentState
>004F8063    jne         004F8085
 004F8065    mov         eax,dword ptr [ebp-4]
 004F8068    cmp         byte ptr [eax+30],0;TClientSocket.FActive:Boolean
>004F806C    je          004F8085
 004F806E    mov         ecx,dword ptr ds:[55B464];^sCantChangeWhileActive:TResStringRec
 004F8074    mov         dl,1
 004F8076    mov         eax,[004F4680];ESocketError
 004F807B    call        Exception.Create;ESocketError.Create
 004F8080    call        @RaiseExcept
 004F8085    mov         eax,dword ptr [ebp-4]
 004F8088    add         eax,40;TClientSocket.FService:String
 004F808B    mov         edx,dword ptr [ebp-8]
 004F808E    call        @LStrAsg
 004F8093    xor         eax,eax
 004F8095    pop         edx
 004F8096    pop         ecx
 004F8097    pop         ecx
 004F8098    mov         dword ptr fs:[eax],edx
 004F809B    push        4F80B0
 004F80A0    lea         eax,[ebp-8]
 004F80A3    call        @LStrClr
 004F80A8    ret
>004F80A9    jmp         @HandleFinally
>004F80AE    jmp         004F80A0
 004F80B0    pop         ecx
 004F80B1    pop         ecx
 004F80B2    pop         ebp
 004F80B3    ret
*}
end;

//004F80B4
{*procedure sub_004F80B4(?:?; ?:?);
begin
 004F80B4    push        ebp
 004F80B5    mov         ebp,esp
 004F80B7    add         esp,0FFFFFFF4
 004F80BA    push        ebx
 004F80BB    mov         byte ptr [ebp-9],cl
 004F80BE    mov         dword ptr [ebp-8],edx
 004F80C1    mov         dword ptr [ebp-4],eax
 004F80C4    xor         eax,eax
 004F80C6    mov         al,byte ptr [ebp-9]
 004F80C9    cmp         eax,7
>004F80CC    ja          004F8206
 004F80D2    jmp         dword ptr [eax*4+4F80D9]
 004F80D2    dd          004F80F9
 004F80D2    dd          004F811B
 004F80D2    dd          004F813D
 004F80D2    dd          004F818C
 004F80D2    dd          004F8166
 004F80D2    dd          004F81AE
 004F80D2    dd          004F81E4
 004F80D2    dd          004F81C9
 004F80F9    mov         eax,dword ptr [ebp-4]
 004F80FC    cmp         word ptr [eax+4A],0;TCustomSocket.?f4A:word
>004F8101    je          004F8206
 004F8107    mov         ebx,dword ptr [ebp-4]
 004F810A    mov         ecx,dword ptr [ebp-8]
 004F810D    mov         edx,dword ptr [ebp-4]
 004F8110    mov         eax,dword ptr [ebx+4C];TCustomSocket.?f4C:dword
 004F8113    call        dword ptr [ebx+48];TCustomSocket.FOnLookup
>004F8116    jmp         004F8206
 004F811B    mov         eax,dword ptr [ebp-4]
 004F811E    cmp         word ptr [eax+5A],0;TCustomSocket.?f5A:word
>004F8123    je          004F8206
 004F8129    mov         ebx,dword ptr [ebp-4]
 004F812C    mov         ecx,dword ptr [ebp-8]
 004F812F    mov         edx,dword ptr [ebp-4]
 004F8132    mov         eax,dword ptr [ebx+5C];TCustomSocket.?f5C:dword
 004F8135    call        dword ptr [ebx+58];TCustomSocket.FOnConnecting
>004F8138    jmp         004F8206
 004F813D    mov         eax,dword ptr [ebp-4]
 004F8140    mov         byte ptr [eax+30],1;TCustomSocket.FActive:Boolean
 004F8144    mov         eax,dword ptr [ebp-4]
 004F8147    cmp         word ptr [eax+52],0;TCustomSocket.?f52:word
>004F814C    je          004F8206
 004F8152    mov         ebx,dword ptr [ebp-4]
 004F8155    mov         ecx,dword ptr [ebp-8]
 004F8158    mov         edx,dword ptr [ebp-4]
 004F815B    mov         eax,dword ptr [ebx+54];TCustomSocket.?f54:dword
 004F815E    call        dword ptr [ebx+50];TCustomSocket.FOnConnect
>004F8161    jmp         004F8206
 004F8166    mov         eax,dword ptr [ebp-4]
 004F8169    mov         byte ptr [eax+30],1;TCustomSocket.FActive:Boolean
 004F816D    mov         eax,dword ptr [ebp-4]
 004F8170    cmp         word ptr [eax+6A],0;TCustomSocket.?f6A:word
>004F8175    je          004F8206
 004F817B    mov         ebx,dword ptr [ebp-4]
 004F817E    mov         ecx,dword ptr [ebp-8]
 004F8181    mov         edx,dword ptr [ebp-4]
 004F8184    mov         eax,dword ptr [ebx+6C];TCustomSocket.?f6C:dword
 004F8187    call        dword ptr [ebx+68];TCustomSocket.FOnListen
>004F818A    jmp         004F8206
 004F818C    mov         eax,dword ptr [ebp-4]
 004F818F    mov         byte ptr [eax+30],0;TCustomSocket.FActive:Boolean
 004F8193    mov         eax,dword ptr [ebp-4]
 004F8196    cmp         word ptr [eax+62],0;TCustomSocket.?f62:word
>004F819B    je          004F8206
 004F819D    mov         ebx,dword ptr [ebp-4]
 004F81A0    mov         ecx,dword ptr [ebp-8]
 004F81A3    mov         edx,dword ptr [ebp-4]
 004F81A6    mov         eax,dword ptr [ebx+64];TCustomSocket.?f64:dword
 004F81A9    call        dword ptr [ebx+60];TCustomSocket.FOnDisconnect
>004F81AC    jmp         004F8206
 004F81AE    mov         eax,dword ptr [ebp-4]
 004F81B1    cmp         word ptr [eax+72],0;TCustomSocket.?f72:word
>004F81B6    je          004F8206
 004F81B8    mov         ebx,dword ptr [ebp-4]
 004F81BB    mov         ecx,dword ptr [ebp-8]
 004F81BE    mov         edx,dword ptr [ebp-4]
 004F81C1    mov         eax,dword ptr [ebx+74];TCustomSocket.?f74:dword
 004F81C4    call        dword ptr [ebx+70];TCustomSocket.FOnAccept
>004F81C7    jmp         004F8206
 004F81C9    mov         eax,dword ptr [ebp-4]
 004F81CC    cmp         word ptr [eax+7A],0;TCustomSocket.?f7A:word
>004F81D1    je          004F8206
 004F81D3    mov         ebx,dword ptr [ebp-4]
 004F81D6    mov         ecx,dword ptr [ebp-8]
 004F81D9    mov         edx,dword ptr [ebp-4]
 004F81DC    mov         eax,dword ptr [ebx+7C];TCustomSocket.?f7C:dword
 004F81DF    call        dword ptr [ebx+78];TCustomSocket.FOnRead
>004F81E2    jmp         004F8206
 004F81E4    mov         eax,dword ptr [ebp-4]
 004F81E7    cmp         word ptr [eax+82],0;TCustomSocket.?f82:word
>004F81EF    je          004F8206
 004F81F1    mov         ebx,dword ptr [ebp-4]
 004F81F4    mov         ecx,dword ptr [ebp-8]
 004F81F7    mov         edx,dword ptr [ebp-4]
 004F81FA    mov         eax,dword ptr [ebx+84];TCustomSocket.?f84:dword
 004F8200    call        dword ptr [ebx+80];TCustomSocket.FOnWrite
 004F8206    pop         ebx
 004F8207    mov         esp,ebp
 004F8209    pop         ebp
 004F820A    ret
end;*}

//004F820C
{*procedure sub_004F820C(?:?; ?:?; ?:?);
begin
 004F820C    push        ebp
 004F820D    mov         ebp,esp
 004F820F    add         esp,0FFFFFFF4
 004F8212    push        ebx
 004F8213    mov         byte ptr [ebp-9],cl
 004F8216    mov         dword ptr [ebp-8],edx
 004F8219    mov         dword ptr [ebp-4],eax
 004F821C    mov         eax,dword ptr [ebp-4]
 004F821F    cmp         word ptr [eax+8A],0;TCustomSocket.?f8A:word
>004F8227    je          004F8246
 004F8229    mov         al,byte ptr [ebp-9]
 004F822C    push        eax
 004F822D    mov         eax,dword ptr [ebp+8]
 004F8230    push        eax
 004F8231    mov         ebx,dword ptr [ebp-4]
 004F8234    mov         ecx,dword ptr [ebp-8]
 004F8237    mov         edx,dword ptr [ebp-4]
 004F823A    mov         eax,dword ptr [ebx+8C];TCustomSocket.?f8C:dword
 004F8240    call        dword ptr [ebx+88];TCustomSocket.FOnError
 004F8246    pop         ebx
 004F8247    mov         esp,ebp
 004F8249    pop         ebp
 004F824A    ret         4
end;*}

//004F8250
constructor sub_004F8250;
begin
{*
 004F8250    push        ebp
 004F8251    mov         ebp,esp
 004F8253    add         esp,0FFFFFFF4
 004F8256    test        dl,dl
>004F8258    je          004F8262
 004F825A    add         esp,0FFFFFFF0
 004F825D    call        @ClassCreate
 004F8262    mov         dword ptr [ebp-0C],ecx
 004F8265    mov         byte ptr [ebp-5],dl
 004F8268    mov         dword ptr [ebp-4],eax
 004F826B    mov         ecx,dword ptr [ebp-0C]
 004F826E    xor         edx,edx
 004F8270    mov         eax,dword ptr [ebp-4]
 004F8273    call        00482F04
 004F8278    or          ecx,0FFFFFFFF
 004F827B    mov         dl,1
 004F827D    mov         eax,[004F4A54];TClientWinSocket
 004F8282    call        TClientWinSocket.Create;TClientWinSocket.Create
 004F8287    mov         edx,dword ptr [ebp-4]
 004F828A    mov         dword ptr [edx+90],eax;TClientSocket.FClientSocket:TClientWinSocket
 004F8290    mov         eax,dword ptr [ebp-4]
 004F8293    mov         edx,dword ptr [eax+90];TClientSocket.FClientSocket:TClientWinSocket
 004F8299    mov         eax,dword ptr [ebp-4]
 004F829C    call        004F7E70
 004F82A1    mov         eax,dword ptr [ebp-4]
 004F82A4    cmp         byte ptr [ebp-5],0
>004F82A8    je          004F82B9
 004F82AA    call        @AfterConstruction
 004F82AF    pop         dword ptr fs:[0]
 004F82B6    add         esp,0C
 004F82B9    mov         eax,dword ptr [ebp-4]
 004F82BC    mov         esp,ebp
 004F82BE    pop         ebp
 004F82BF    ret
*}
end;

//004F82C0
destructor TClientSocket.Destroy;
begin
{*
 004F82C0    push        ebp
 004F82C1    mov         ebp,esp
 004F82C3    add         esp,0FFFFFFF8
 004F82C6    call        @BeforeDestruction
 004F82CB    mov         byte ptr [ebp-5],dl
 004F82CE    mov         dword ptr [ebp-4],eax
 004F82D1    mov         eax,dword ptr [ebp-4]
 004F82D4    mov         eax,dword ptr [eax+90]
 004F82DA    call        TObject.Free
 004F82DF    mov         dl,byte ptr [ebp-5]
 004F82E2    and         dl,0FC
 004F82E5    mov         eax,dword ptr [ebp-4]
 004F82E8    call        TComponent.Destroy
 004F82ED    cmp         byte ptr [ebp-5],0
>004F82F1    jle         004F82FB
 004F82F3    mov         eax,dword ptr [ebp-4]
 004F82F6    call        @ClassDestroy
 004F82FB    pop         ecx
 004F82FC    pop         ecx
 004F82FD    pop         ebp
 004F82FE    ret
*}
end;

//004F8300
{*procedure sub_004F8300(?:?);
begin
 004F8300    push        ebp
 004F8301    mov         ebp,esp
 004F8303    add         esp,0FFFFFFF8
 004F8306    mov         byte ptr [ebp-5],dl
 004F8309    mov         dword ptr [ebp-4],eax
 004F830C    mov         eax,dword ptr [ebp-4]
 004F830F    mov         eax,dword ptr [eax+90];TClientSocket.FClientSocket:TClientWinSocket
 004F8315    mov         al,byte ptr [eax+8];TClientWinSocket.FConnected:Boolean
 004F8318    cmp         al,byte ptr [ebp-5]
>004F831B    je          004F8388
 004F831D    mov         eax,dword ptr [ebp-4]
 004F8320    test        byte ptr [eax+1C],10;TClientSocket.FComponentState:TComponentState
>004F8324    jne         004F8388
 004F8326    mov         eax,dword ptr [ebp-4]
 004F8329    mov         eax,dword ptr [eax+90];TClientSocket.FClientSocket:TClientWinSocket
 004F832F    cmp         byte ptr [eax+8],0;TClientWinSocket.FConnected:Boolean
>004F8333    je          004F8351
 004F8335    mov         eax,dword ptr [ebp-4]
 004F8338    mov         eax,dword ptr [eax+90];TClientSocket.FClientSocket:TClientWinSocket
 004F833E    mov         edx,dword ptr [eax+4];TClientWinSocket.FSocket:TSocket
 004F8341    mov         eax,dword ptr [ebp-4]
 004F8344    mov         eax,dword ptr [eax+90];TClientSocket.FClientSocket:TClientWinSocket
 004F834A    mov         ecx,dword ptr [eax]
 004F834C    call        dword ptr [ecx+8];TClientWinSocket.sub_004F6328
>004F834F    jmp         004F8388
 004F8351    mov         eax,dword ptr [ebp-4]
 004F8354    mov         eax,dword ptr [eax+40];TClientSocket.FService:String
 004F8357    push        eax
 004F8358    mov         eax,dword ptr [ebp-4]
 004F835B    mov         ax,word ptr [eax+34];TClientSocket.FPort:Integer
 004F835F    push        eax
 004F8360    mov         eax,dword ptr [ebp-4]
 004F8363    call        TClientSocket.GetClientType
 004F8368    cmp         al,1
 004F836A    sete        al
 004F836D    push        eax
 004F836E    mov         eax,dword ptr [ebp-4]
 004F8371    mov         ecx,dword ptr [eax+38];TClientSocket.FAddress:String
 004F8374    mov         eax,dword ptr [ebp-4]
 004F8377    mov         edx,dword ptr [eax+3C];TClientSocket.FHost:String
 004F837A    mov         eax,dword ptr [ebp-4]
 004F837D    mov         eax,dword ptr [eax+90];TClientSocket.FClientSocket:TClientWinSocket
 004F8383    call        004F6220
 004F8388    pop         ecx
 004F8389    pop         ecx
 004F838A    pop         ebp
 004F838B    ret
end;*}

//004F838C
{*function TClientSocket.GetClientType:?;
begin
 004F838C    push        ebp
 004F838D    mov         ebp,esp
 004F838F    add         esp,0FFFFFFF8
 004F8392    mov         dword ptr [ebp-4],eax
 004F8395    mov         eax,dword ptr [ebp-4]
 004F8398    mov         eax,dword ptr [eax+90];TClientSocket.FClientSocket:TClientWinSocket
 004F839E    mov         al,byte ptr [eax+58];TClientWinSocket...FClientType:TClientType
 004F83A1    mov         byte ptr [ebp-5],al
 004F83A4    mov         al,byte ptr [ebp-5]
 004F83A7    pop         ecx
 004F83A8    pop         ecx
 004F83A9    pop         ebp
 004F83AA    ret
end;*}

//004F83AC
procedure TClientSocket.SetClientType(Value:TClientType);
begin
{*
 004F83AC    push        ebp
 004F83AD    mov         ebp,esp
 004F83AF    add         esp,0FFFFFFF8
 004F83B2    mov         byte ptr [ebp-5],dl
 004F83B5    mov         dword ptr [ebp-4],eax
 004F83B8    mov         dl,byte ptr [ebp-5]
 004F83BB    mov         eax,dword ptr [ebp-4]
 004F83BE    mov         eax,dword ptr [eax+90];TClientSocket.FClientSocket:TClientWinSocket
 004F83C4    call        004F6C70
 004F83C9    pop         ecx
 004F83CA    pop         ecx
 004F83CB    pop         ebp
 004F83CC    ret
*}
end;

//004F83D0
destructor TCustomServerSocket.Destroy;
begin
{*
 004F83D0    push        ebp
 004F83D1    mov         ebp,esp
 004F83D3    add         esp,0FFFFFFF8
 004F83D6    call        @BeforeDestruction
 004F83DB    mov         byte ptr [ebp-5],dl
 004F83DE    mov         dword ptr [ebp-4],eax
 004F83E1    mov         eax,dword ptr [ebp-4]
 004F83E4    mov         eax,dword ptr [eax+90]
 004F83EA    call        TObject.Free
 004F83EF    mov         dl,byte ptr [ebp-5]
 004F83F2    and         dl,0FC
 004F83F5    mov         eax,dword ptr [ebp-4]
 004F83F8    call        TComponent.Destroy
 004F83FD    cmp         byte ptr [ebp-5],0
>004F8401    jle         004F840B
 004F8403    mov         eax,dword ptr [ebp-4]
 004F8406    call        @ClassDestroy
 004F840B    pop         ecx
 004F840C    pop         ecx
 004F840D    pop         ebp
 004F840E    ret
*}
end;

//004F8410
{*procedure sub_004F8410(?:?);
begin
 004F8410    push        ebp
 004F8411    mov         ebp,esp
 004F8413    add         esp,0FFFFFFF8
 004F8416    mov         byte ptr [ebp-5],dl
 004F8419    mov         dword ptr [ebp-4],eax
 004F841C    mov         eax,dword ptr [ebp-4]
 004F841F    mov         eax,dword ptr [eax+90];TCustomServerSocket..................................FServerSocke...
 004F8425    mov         al,byte ptr [eax+8];TServerWinSocket.FConnected:Boolean
 004F8428    cmp         al,byte ptr [ebp-5]
>004F842B    je          004F848C
 004F842D    mov         eax,dword ptr [ebp-4]
 004F8430    test        byte ptr [eax+1C],10;TCustomServerSocket.FComponentState:TComponentState
>004F8434    jne         004F848C
 004F8436    mov         eax,dword ptr [ebp-4]
 004F8439    mov         eax,dword ptr [eax+90];TCustomServerSocket...................................FServerSock...
 004F843F    cmp         byte ptr [eax+8],0;TServerWinSocket.FConnected:Boolean
>004F8443    je          004F8461
 004F8445    mov         eax,dword ptr [ebp-4]
 004F8448    mov         eax,dword ptr [eax+90];TCustomServerSocket....................................FServerSoc...
 004F844E    mov         edx,dword ptr [eax+4];TServerWinSocket.FSocket:TSocket
 004F8451    mov         eax,dword ptr [ebp-4]
 004F8454    mov         eax,dword ptr [eax+90];TCustomServerSocket.....................................FServerSo...
 004F845A    mov         ecx,dword ptr [eax]
 004F845C    call        dword ptr [ecx+8];TServerWinSocket.sub_004F7274
>004F845F    jmp         004F848C
 004F8461    mov         eax,dword ptr [ebp-4]
 004F8464    add         eax,40;TCustomServerSocket.FService:String
 004F8467    push        eax
 004F8468    mov         eax,dword ptr [ebp-4]
 004F846B    mov         ax,word ptr [eax+34];TCustomServerSocket.FPort:Integer
 004F846F    push        eax
 004F8470    push        5
 004F8472    mov         eax,dword ptr [ebp-4]
 004F8475    lea         ecx,[eax+38];TCustomServerSocket.FAddress:String
 004F8478    mov         eax,dword ptr [ebp-4]
 004F847B    lea         edx,[eax+3C];TCustomServerSocket.FHost:String
 004F847E    mov         eax,dword ptr [ebp-4]
 004F8481    mov         eax,dword ptr [eax+90];TCustomServerSocket......................................FServerS...
 004F8487    call        004F73D8
 004F848C    pop         ecx
 004F848D    pop         ecx
 004F848E    pop         ebp
 004F848F    ret
end;*}

//004F8490
{*function TServerSocket.GetServerType:?;
begin
 004F8490    push        ebp
 004F8491    mov         ebp,esp
 004F8493    add         esp,0FFFFFFF8
 004F8496    mov         dword ptr [ebp-4],eax
 004F8499    mov         eax,dword ptr [ebp-4]
 004F849C    mov         eax,dword ptr [eax+90];TServerSocket.......................................FServerSocket...
 004F84A2    mov         al,byte ptr [eax+58];TServerWinSocket.FServerType:TServerType
 004F84A5    mov         byte ptr [ebp-5],al
 004F84A8    mov         al,byte ptr [ebp-5]
 004F84AB    pop         ecx
 004F84AC    pop         ecx
 004F84AD    pop         ebp
 004F84AE    ret
end;*}

//004F84B0
procedure TServerSocket.SetServerType(Value:TServerType);
begin
{*
 004F84B0    push        ebp
 004F84B1    mov         ebp,esp
 004F84B3    add         esp,0FFFFFFF8
 004F84B6    mov         byte ptr [ebp-5],dl
 004F84B9    mov         dword ptr [ebp-4],eax
 004F84BC    mov         dl,byte ptr [ebp-5]
 004F84BF    mov         eax,dword ptr [ebp-4]
 004F84C2    mov         eax,dword ptr [eax+90];TServerSocket........................................FServerSocke...
 004F84C8    call        004F7444
 004F84CD    pop         ecx
 004F84CE    pop         ecx
 004F84CF    pop         ebp
 004F84D0    ret
*}
end;

//004F84D4
{*procedure TServerSocket.GetOnGetThread(?:?);
begin
 004F84D4    push        ebp
 004F84D5    mov         ebp,esp
 004F84D7    add         esp,0FFFFFFF8
 004F84DA    mov         dword ptr [ebp-8],edx
 004F84DD    mov         dword ptr [ebp-4],eax
 004F84E0    mov         eax,dword ptr [ebp-8]
 004F84E3    mov         edx,dword ptr [ebp-4]
 004F84E6    mov         edx,dword ptr [edx+90];TServerSocket.........................................FServerSock...
 004F84EC    mov         ecx,dword ptr [edx+78];TServerWinSocket.FOnGetThread:TGetThreadEvent
 004F84EF    mov         dword ptr [eax],ecx
 004F84F1    mov         ecx,dword ptr [edx+7C];TServerWinSocket.?f7C:dword
 004F84F4    mov         dword ptr [eax+4],ecx
 004F84F7    pop         ecx
 004F84F8    pop         ecx
 004F84F9    pop         ebp
 004F84FA    ret
end;*}

//004F84FC
{*procedure TServerSocket.SetOnGetThread(Value:TGetThreadEvent; ?:?; ?:?);
begin
 004F84FC    push        ebp
 004F84FD    mov         ebp,esp
 004F84FF    push        ecx
 004F8500    mov         dword ptr [ebp-4],eax
 004F8503    mov         eax,dword ptr [ebp-4]
 004F8506    mov         eax,dword ptr [eax+90];TServerSocket..........................................FServerSoc...
 004F850C    mov         edx,dword ptr [ebp+8]
 004F850F    mov         dword ptr [eax+78],edx;TServerWinSocket.FOnGetThread:TGetThreadEvent
 004F8512    mov         edx,dword ptr [ebp+0C]
 004F8515    mov         dword ptr [eax+7C],edx;TServerWinSocket.?f7C:dword
 004F8518    pop         ecx
 004F8519    pop         ebp
 004F851A    ret         8
end;*}

//004F8520
{*procedure TServerSocket.GetOnGetSocket(?:?);
begin
 004F8520    push        ebp
 004F8521    mov         ebp,esp
 004F8523    add         esp,0FFFFFFF8
 004F8526    mov         dword ptr [ebp-8],edx
 004F8529    mov         dword ptr [ebp-4],eax
 004F852C    mov         eax,dword ptr [ebp-8]
 004F852F    mov         edx,dword ptr [ebp-4]
 004F8532    mov         edx,dword ptr [edx+90];TServerSocket...........................................FServerSo...
 004F8538    mov         ecx,dword ptr [edx+70];TServerWinSocket.FOnGetSocket:TGetSocketEvent
 004F853B    mov         dword ptr [eax],ecx
 004F853D    mov         ecx,dword ptr [edx+74];TServerWinSocket.?f74:dword
 004F8540    mov         dword ptr [eax+4],ecx
 004F8543    pop         ecx
 004F8544    pop         ecx
 004F8545    pop         ebp
 004F8546    ret
end;*}

//004F8548
{*procedure TServerSocket.SetOnGetSocket(Value:TGetSocketEvent; ?:?; ?:?);
begin
 004F8548    push        ebp
 004F8549    mov         ebp,esp
 004F854B    push        ecx
 004F854C    mov         dword ptr [ebp-4],eax
 004F854F    mov         eax,dword ptr [ebp-4]
 004F8552    mov         eax,dword ptr [eax+90];TServerSocket............................................FServerS...
 004F8558    mov         edx,dword ptr [ebp+8]
 004F855B    mov         dword ptr [eax+70],edx;TServerWinSocket.FOnGetSocket:TGetSocketEvent
 004F855E    mov         edx,dword ptr [ebp+0C]
 004F8561    mov         dword ptr [eax+74],edx;TServerWinSocket.?f74:dword
 004F8564    pop         ecx
 004F8565    pop         ebp
 004F8566    ret         8
end;*}

//004F856C
{*function TServerSocket.GetThreadCacheSize:?;
begin
 004F856C    push        ebp
 004F856D    mov         ebp,esp
 004F856F    add         esp,0FFFFFFF8
 004F8572    mov         dword ptr [ebp-4],eax
 004F8575    mov         eax,dword ptr [ebp-4]
 004F8578    mov         eax,dword ptr [eax+90];TServerSocket.............................................FServer...
 004F857E    mov         eax,dword ptr [eax+5C];TServerWinSocket.FThreadCacheSize:Integer
 004F8581    mov         dword ptr [ebp-8],eax
 004F8584    mov         eax,dword ptr [ebp-8]
 004F8587    pop         ecx
 004F8588    pop         ecx
 004F8589    pop         ebp
 004F858A    ret
end;*}

//004F858C
procedure TServerSocket.SetThreadCacheSize(Value:Integer);
begin
{*
 004F858C    push        ebp
 004F858D    mov         ebp,esp
 004F858F    add         esp,0FFFFFFF8
 004F8592    mov         dword ptr [ebp-8],edx
 004F8595    mov         dword ptr [ebp-4],eax
 004F8598    mov         edx,dword ptr [ebp-8]
 004F859B    mov         eax,dword ptr [ebp-4]
 004F859E    mov         eax,dword ptr [eax+90];TServerSocket..............................................FServe...
 004F85A4    call        004F74BC
 004F85A9    pop         ecx
 004F85AA    pop         ecx
 004F85AB    pop         ebp
 004F85AC    ret
*}
end;

//004F85B0
{*procedure TServerSocket.GetOnThreadStart(?:?);
begin
 004F85B0    push        ebp
 004F85B1    mov         ebp,esp
 004F85B3    add         esp,0FFFFFFF8
 004F85B6    mov         dword ptr [ebp-8],edx
 004F85B9    mov         dword ptr [ebp-4],eax
 004F85BC    mov         eax,dword ptr [ebp-8]
 004F85BF    mov         edx,dword ptr [ebp-4]
 004F85C2    mov         edx,dword ptr [edx+90];TServerSocket...............................................FServ...
 004F85C8    mov         ecx,dword ptr [edx+80];TServerWinSocket.FOnThreadStart:TThreadNotifyEvent
 004F85CE    mov         dword ptr [eax],ecx
 004F85D0    mov         ecx,dword ptr [edx+84];TServerWinSocket.?f84:dword
 004F85D6    mov         dword ptr [eax+4],ecx
 004F85D9    pop         ecx
 004F85DA    pop         ecx
 004F85DB    pop         ebp
 004F85DC    ret
end;*}

//004F85E0
{*procedure TServerSocket.GetOnThreadEnd(?:?);
begin
 004F85E0    push        ebp
 004F85E1    mov         ebp,esp
 004F85E3    add         esp,0FFFFFFF8
 004F85E6    mov         dword ptr [ebp-8],edx
 004F85E9    mov         dword ptr [ebp-4],eax
 004F85EC    mov         eax,dword ptr [ebp-8]
 004F85EF    mov         edx,dword ptr [ebp-4]
 004F85F2    mov         edx,dword ptr [edx+90];TServerSocket................................................FSer...
 004F85F8    mov         ecx,dword ptr [edx+88];TServerWinSocket.FOnThreadEnd:TThreadNotifyEvent
 004F85FE    mov         dword ptr [eax],ecx
 004F8600    mov         ecx,dword ptr [edx+8C];TServerWinSocket.?f8C:dword
 004F8606    mov         dword ptr [eax+4],ecx
 004F8609    pop         ecx
 004F860A    pop         ecx
 004F860B    pop         ebp
 004F860C    ret
end;*}

//004F8610
{*procedure TServerSocket.SetOnThreadStart(Value:TThreadNotifyEvent; ?:?; ?:?);
begin
 004F8610    push        ebp
 004F8611    mov         ebp,esp
 004F8613    push        ecx
 004F8614    mov         dword ptr [ebp-4],eax
 004F8617    mov         eax,dword ptr [ebp-4]
 004F861A    mov         eax,dword ptr [eax+90];TServerSocket.................................................FSe...
 004F8620    mov         edx,dword ptr [ebp+8]
 004F8623    mov         dword ptr [eax+80],edx;TServerWinSocket.FOnThreadStart:TThreadNotifyEvent
 004F8629    mov         edx,dword ptr [ebp+0C]
 004F862C    mov         dword ptr [eax+84],edx;TServerWinSocket.?f84:dword
 004F8632    pop         ecx
 004F8633    pop         ebp
 004F8634    ret         8
end;*}

//004F8638
{*procedure TServerSocket.SetOnThreadEnd(Value:TThreadNotifyEvent; ?:?; ?:?);
begin
 004F8638    push        ebp
 004F8639    mov         ebp,esp
 004F863B    push        ecx
 004F863C    mov         dword ptr [ebp-4],eax
 004F863F    mov         eax,dword ptr [ebp-4]
 004F8642    mov         eax,dword ptr [eax+90];TServerSocket..................................................FS...
 004F8648    mov         edx,dword ptr [ebp+8]
 004F864B    mov         dword ptr [eax+88],edx;TServerWinSocket.FOnThreadEnd:TThreadNotifyEvent
 004F8651    mov         edx,dword ptr [ebp+0C]
 004F8654    mov         dword ptr [eax+8C],edx;TServerWinSocket.?f8C:dword
 004F865A    pop         ecx
 004F865B    pop         ebp
 004F865C    ret         8
end;*}

//004F8660
{*procedure TServerSocket.GetOnClientConnect(?:?; ?:?);
begin
 004F8660    push        ebp
 004F8661    mov         ebp,esp
 004F8663    add         esp,0FFFFFFF4
 004F8666    mov         dword ptr [ebp-0C],ecx
 004F8669    mov         dword ptr [ebp-8],edx
 004F866C    mov         dword ptr [ebp-4],eax
 004F866F    mov         eax,dword ptr [ebp-8]
 004F8672    sub         eax,1
>004F8675    jb          004F8681
>004F8677    je          004F86A0
 004F8679    dec         eax
>004F867A    je          004F86BF
 004F867C    dec         eax
>004F867D    je          004F86DE
>004F867F    jmp         004F86FB
 004F8681    mov         eax,dword ptr [ebp-0C]
 004F8684    mov         edx,dword ptr [ebp-4]
 004F8687    mov         edx,dword ptr [edx+90];TServerSocket...................................................F...
 004F868D    mov         ecx,dword ptr [edx+0A0];TServerWinSocket.FOnClientRead:TSocketNotifyEvent
 004F8693    mov         dword ptr [eax],ecx
 004F8695    mov         ecx,dword ptr [edx+0A4];TServerWinSocket.?fA4:dword
 004F869B    mov         dword ptr [eax+4],ecx
>004F869E    jmp         004F86FB
 004F86A0    mov         eax,dword ptr [ebp-0C]
 004F86A3    mov         edx,dword ptr [ebp-4]
 004F86A6    mov         edx,dword ptr [edx+90];TServerSocket.......................................................
 004F86AC    mov         ecx,dword ptr [edx+0A8];TServerWinSocket.FOnClientWrite:TSocketNotifyEvent
 004F86B2    mov         dword ptr [eax],ecx
 004F86B4    mov         ecx,dword ptr [edx+0AC];TServerWinSocket.?fAC:dword
 004F86BA    mov         dword ptr [eax+4],ecx
>004F86BD    jmp         004F86FB
 004F86BF    mov         eax,dword ptr [ebp-0C]
 004F86C2    mov         edx,dword ptr [ebp-4]
 004F86C5    mov         edx,dword ptr [edx+90];TServerSocket.......................................................
 004F86CB    mov         ecx,dword ptr [edx+90];TServerWinSocket.FOnClientConnect:TSocketNotifyEvent
 004F86D1    mov         dword ptr [eax],ecx
 004F86D3    mov         ecx,dword ptr [edx+94];TServerWinSocket.?f94:dword
 004F86D9    mov         dword ptr [eax+4],ecx
>004F86DC    jmp         004F86FB
 004F86DE    mov         eax,dword ptr [ebp-0C]
 004F86E1    mov         edx,dword ptr [ebp-4]
 004F86E4    mov         edx,dword ptr [edx+90];TServerSocket.......................................................
 004F86EA    mov         ecx,dword ptr [edx+98];TServerWinSocket.FOnClientDisconnect:TSocketNotifyEvent
 004F86F0    mov         dword ptr [eax],ecx
 004F86F2    mov         ecx,dword ptr [edx+9C];TServerWinSocket.?f9C:dword
 004F86F8    mov         dword ptr [eax+4],ecx
 004F86FB    mov         esp,ebp
 004F86FD    pop         ebp
 004F86FE    ret
end;*}

//004F8700
{*procedure TServerSocket.SetOnClientConnect(Value:TSocketNotifyEvent; ?:?; ?:?);
begin
 004F8700    push        ebp
 004F8701    mov         ebp,esp
 004F8703    add         esp,0FFFFFFF8
 004F8706    mov         dword ptr [ebp-8],edx
 004F8709    mov         dword ptr [ebp-4],eax
 004F870C    mov         eax,dword ptr [ebp-8]
 004F870F    sub         eax,1
>004F8712    jb          004F871E
>004F8714    je          004F873B
 004F8716    dec         eax
>004F8717    je          004F8758
 004F8719    dec         eax
>004F871A    je          004F8775
>004F871C    jmp         004F8790
 004F871E    mov         eax,dword ptr [ebp-4]
 004F8721    mov         eax,dword ptr [eax+90];TServerSocket.......................................................
 004F8727    mov         edx,dword ptr [ebp+8]
 004F872A    mov         dword ptr [eax+0A0],edx;TServerWinSocket.FOnClientRead:TSocketNotifyEvent
 004F8730    mov         edx,dword ptr [ebp+0C]
 004F8733    mov         dword ptr [eax+0A4],edx;TServerWinSocket.?fA4:dword
>004F8739    jmp         004F8790
 004F873B    mov         eax,dword ptr [ebp-4]
 004F873E    mov         eax,dword ptr [eax+90];TServerSocket.......................................................
 004F8744    mov         edx,dword ptr [ebp+8]
 004F8747    mov         dword ptr [eax+0A8],edx;TServerWinSocket.FOnClientWrite:TSocketNotifyEvent
 004F874D    mov         edx,dword ptr [ebp+0C]
 004F8750    mov         dword ptr [eax+0AC],edx;TServerWinSocket.?fAC:dword
>004F8756    jmp         004F8790
 004F8758    mov         eax,dword ptr [ebp-4]
 004F875B    mov         eax,dword ptr [eax+90];TServerSocket.......................................................
 004F8761    mov         edx,dword ptr [ebp+8]
 004F8764    mov         dword ptr [eax+90],edx;TServerWinSocket.FOnClientConnect:TSocketNotifyEvent
 004F876A    mov         edx,dword ptr [ebp+0C]
 004F876D    mov         dword ptr [eax+94],edx;TServerWinSocket.?f94:dword
>004F8773    jmp         004F8790
 004F8775    mov         eax,dword ptr [ebp-4]
 004F8778    mov         eax,dword ptr [eax+90];TServerSocket.......................................................
 004F877E    mov         edx,dword ptr [ebp+8]
 004F8781    mov         dword ptr [eax+98],edx;TServerWinSocket.FOnClientDisconnect:TSocketNotifyEvent
 004F8787    mov         edx,dword ptr [ebp+0C]
 004F878A    mov         dword ptr [eax+9C],edx;TServerWinSocket.?f9C:dword
 004F8790    pop         ecx
 004F8791    pop         ecx
 004F8792    pop         ebp
 004F8793    ret         8
end;*}

//004F8798
{*procedure TServerSocket.GetOnClientError(?:?);
begin
 004F8798    push        ebp
 004F8799    mov         ebp,esp
 004F879B    add         esp,0FFFFFFF8
 004F879E    mov         dword ptr [ebp-8],edx
 004F87A1    mov         dword ptr [ebp-4],eax
 004F87A4    mov         eax,dword ptr [ebp-8]
 004F87A7    mov         edx,dword ptr [ebp-4]
 004F87AA    mov         edx,dword ptr [edx+90];TServerSocket.......................................................
 004F87B0    mov         ecx,dword ptr [edx+0B0];TServerWinSocket.FOnClientError:TSocketErrorEvent
 004F87B6    mov         dword ptr [eax],ecx
 004F87B8    mov         ecx,dword ptr [edx+0B4];TServerWinSocket.?fB4:dword
 004F87BE    mov         dword ptr [eax+4],ecx
 004F87C1    pop         ecx
 004F87C2    pop         ecx
 004F87C3    pop         ebp
 004F87C4    ret
end;*}

//004F87C8
{*procedure TServerSocket.SetOnClientError(Value:TSocketErrorEvent; ?:?; ?:?);
begin
 004F87C8    push        ebp
 004F87C9    mov         ebp,esp
 004F87CB    push        ecx
 004F87CC    mov         dword ptr [ebp-4],eax
 004F87CF    mov         eax,dword ptr [ebp-4]
 004F87D2    mov         eax,dword ptr [eax+90];TServerSocket.......................................................
 004F87D8    mov         edx,dword ptr [ebp+8]
 004F87DB    mov         dword ptr [eax+0B0],edx;TServerWinSocket.FOnClientError:TSocketErrorEvent
 004F87E1    mov         edx,dword ptr [ebp+0C]
 004F87E4    mov         dword ptr [eax+0B4],edx;TServerWinSocket.?fB4:dword
 004F87EA    pop         ecx
 004F87EB    pop         ebp
 004F87EC    ret         8
end;*}

//004F87F0
constructor sub_004F87F0;
begin
{*
 004F87F0    push        ebp
 004F87F1    mov         ebp,esp
 004F87F3    add         esp,0FFFFFFF4
 004F87F6    test        dl,dl
>004F87F8    je          004F8802
 004F87FA    add         esp,0FFFFFFF0
 004F87FD    call        @ClassCreate
 004F8802    mov         dword ptr [ebp-0C],ecx
 004F8805    mov         byte ptr [ebp-5],dl
 004F8808    mov         dword ptr [ebp-4],eax
 004F880B    mov         ecx,dword ptr [ebp-0C]
 004F880E    xor         edx,edx
 004F8810    mov         eax,dword ptr [ebp-4]
 004F8813    call        00482F04
 004F8818    or          ecx,0FFFFFFFF
 004F881B    mov         dl,1
 004F881D    mov         eax,[004F4BC4];TServerWinSocket
 004F8822    call        TServerWinSocket.Create;TServerWinSocket.Create
 004F8827    mov         edx,dword ptr [ebp-4]
 004F882A    mov         dword ptr [edx+90],eax;TServerSocket.......................................................
 004F8830    mov         eax,dword ptr [ebp-4]
 004F8833    mov         edx,dword ptr [eax+90];TServerSocket.......................................................
 004F8839    mov         eax,dword ptr [ebp-4]
 004F883C    call        004F7E70
 004F8841    mov         eax,dword ptr [ebp-4]
 004F8844    mov         eax,dword ptr [eax+90];TServerSocket.......................................................
 004F884A    mov         edx,0A
 004F884F    call        004F74BC
 004F8854    mov         eax,dword ptr [ebp-4]
 004F8857    cmp         byte ptr [ebp-5],0
>004F885B    je          004F886C
 004F885D    call        @AfterConstruction
 004F8862    pop         dword ptr fs:[0]
 004F8869    add         esp,0C
 004F886C    mov         eax,dword ptr [ebp-4]
 004F886F    mov         esp,ebp
 004F8871    pop         ebp
 004F8872    ret
*}
end;

end.