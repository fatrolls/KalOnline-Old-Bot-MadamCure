//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit MainUnit;

interface

uses
  SysUtils, Classes, ScktComp, ComCtrls, StdCtrls, ExtCtrls, Buttons, Controls, ActnMenus, ActnMan, StdActns, ActnList, Spin, Gauges, ;

type
  TMainForm = class(TForm)
  published
    MainSvrClientSock:TClientSocket;//f2F8
    ROAMServSock:TServerSocket;//f2FC
    PageControlMain:TPageControl;//f300
    TabSniffer:TTabSheet;//f304
    TabCure:TTabSheet;//f308
    TabChat:TTabSheet;//f30C
    BtnAutoCureThread:TButton;//f310
    RadGroCureKind:TRadioGroup;//f314
    MemoSniffer:TMemo;//f318
    Splitter1:TSplitter;//f31C
    TabPlayers:TTabSheet;//f320
    TabAutoSplash:TTabSheet;//f324
    PnlAutoSplash:TPanel;//f328
    SBSplashEnabled:TSpeedButton;//f32C
    SBSplashDisabled:TSpeedButton;//f330
    BtnStartThreadAutoSplesh:TButton;//f334
    ChkBoxMeditation:TCheckBox;//f338
    ChkBoxBehead:TCheckBox;//f33C
    MemoChat:TMemo;//f340
    MemoPlayers:TMemo;//f344
    TabTest:TTabSheet;//f348
    Memo2:TMemo;//f34C
    Memo4:TMemo;//f350
    Button5:TButton;//f354
    Button10:TButton;//f358
    Memo1:TMemo;//f35C
    TabMap:TTabSheet;//f360
    Image1:TImage;//f364
    Button12:TButton;//f368
    Button13:TButton;//f36C
    Edit1:TEdit;//f370
    Edit2:TEdit;//f374
    Memo3:TMemo;//f378
    Button15:TButton;//f37C
    Button4:TButton;//f380
    Button18:TButton;//f384
    Button2:TButton;//f388
    Timer2:TTimer;//f38C
    Button19:TButton;//f390
    TabThiefAttack:TTabSheet;//f394
    BtnQuests:TButton;//f398
    GroupBoxOutPT:TGroupBox;//f39C
    EditTargetPlayerName:TLabeledEdit;//f3A0
    IconImageList:TImageList;//f3A4
    RadGroCureGrade:TRadioGroup;//f3A8
    SBPickTargetPlayerName:TSpeedButton;//f3AC
    SBCureOn:TSpeedButton;//f3B0
    SBCureOff:TSpeedButton;//f3B4
    CheckBoxRange:TCheckBox;//f3B8
    BtnShowLogs:TButton;//f3BC
    ActionMainMenuBar1:TActionMainMenuBar;//f3C0
    ActionManager:TActionManager;//f3C4
    ActFileExit:TFileExit;//f3C8
    ActClearSniferLogs:TAction;//f3CC
    ActSnifferWordWrap:TAction;//f3D0
    Button7:TButton;//f3D4
    mstatex:TButton;//f3D8
    SpinEditCureRange:TSpinEdit;//f3DC
    TabMainInfo:TTabSheet;//f3E0
    PanelCharInformation:TPanel;//f3E4
    PanelSessionLogs:TPanel;//f3E8
    PanelAutoLogin:TPanel;//f3EC
    LblPlayerName:TLabel;//f3F0
    LblPlayerClass:TLabel;//f3F4
    LblPlayerGovernmentPosition:TLabel;//f3F8
    LblPlayerLevel:TLabel;//f3FC
    PanelConnectionInformations:TPanel;//f400
    GroupBoxCureOptions:TGroupBox;//f404
    CheckBoxUseMeds:TCheckBox;//f408
    TrackBarMedicines:TTrackBar;//f40C
    CheckBoxAutoBehead:TCheckBox;//f410
    TrackBar2:TTrackBar;//f414
    CheckBoxUseMeditation:TCheckBox;//f418
    PanelPick:TPanel;//f41C
    RGPickStrategy:TRadioGroup;//f420
    SBPickNow:TSpeedButton;//f424
    LblDelayTime:TLabel;//f428
    SpinEditPickDelay:TSpinEdit;//f42C
    LblSec:TLabel;//f430
    ActAutoMeditation:TAction;//f434
    ActUseMedicines:TAction;//f438
    MemoSessionLogs:TMemo;//f43C
    LblSessionLogs:TLabel;//f440
    StatusBarMain:TStatusBar;//f444
    TrackBarBeheadAggro:TTrackBar;//f448
    TabStall:TTabSheet;//f44C
    ChkBoxCureG1Only:TCheckBox;//f450
    Bevel1:TBevel;//f454
    LblMainSvrIP:TLabel;//f458
    LblMainSvrPort:TLabel;//f45C
    Bevel2:TBevel;//f460
    LblProxySvrPort:TLabel;//f464
    LblConnectionInfo:TLabel;//f468
    ActStartMacroRecording:TAction;//f46C
    ActStopMacroRecording:TAction;//f470
    ActRunMacro:TAction;//f474
    ActDeleteMacro:TAction;//f478
    PanelStallLog:TPanel;//f47C
    MemoMacro:TMemo;//f480
    Splitter2:TSplitter;//f484
    LblStallLogs:TLabel;//f488
    PanelStallMacro:TPanel;//f48C
    BtnStartMacroRecording:TButton;//f490
    BtnStopMacroRecording:TButton;//f494
    BtnRunMacro:TButton;//f498
    BtnDeleteMacro:TButton;//f49C
    ListBoxStallMacros:TListBox;//f4A0
    LblStallRecordingStatus:TLabel;//f4A4
    Bevel3:TBevel;//f4A8
    Bevel4:TBevel;//f4AC
    LblStallState:TLabel;//f4B0
    ActSaveMacros:TAction;//f4B4
    BtnSaveMacros:TButton;//f4B8
    ActCreateThiefBotThread:TAction;//f4BC
    ActUseAutoDoK:TAction;//f4C0
    ActUseAutoCO:TAction;//f4C4
    ActUseAutoCA:TAction;//f4C8
    ActUseAutoSpin:TAction;//f4CC
    PanelThiefBot:TPanel;//f4D0
    BtnCreateThiefBotThread:TButton;//f4D4
    CBAutoDoK:TCheckBox;//f4D8
    CBAutoCounterOffensive:TCheckBox;//f4DC
    CBAutoCounterAttack:TCheckBox;//f4E0
    CBAutoSpin:TCheckBox;//f4E4
    BtnSuspendResumeThiefBot:TButton;//f4E8
    CBUseMedicines:TCheckBox;//f4EC
    TBThiefMedicines:TTrackBar;//f4F0
    LblActivationLvl:TLabel;//f4F4
    ActUseThiefAutoMedicines:TAction;//f4F8
    Button3:TButton;//f4FC
    ActTerminateThiefThtrad:TAction;//f500
    PanelChatSend:TPanel;//f504
    EditChatMessage:TEdit;//f508
    BtnSendChatMessage:TButton;//f50C
    TimerWalker:TTimer;//f510
    Button1:TButton;//f514
    ActStartWalkThread:TAction;//f518
    ActReloadLocationList:TAction;//f51C
    ActSendChatToServer:TAction;//f520
    ActBreakFastWalkingThread:TAction;//f524
    ActRadar:TAction;//f528
    ActEmergencyEscape:TAction;//f52C
    EditQ:TEdit;//f530
    ActAddLocation:TAction;//f534
    ActDeleteLocation:TAction;//f538
    TabFastWalking:TTabSheet;//f53C
    EditLogin:TEdit;//f540
    EditPassword:TEdit;//f544
    EditPIN:TEdit;//f548
    LblLogin:TLabel;//f54C
    LblPassword:TLabel;//f550
    LblPIN:TLabel;//f554
    ChkBoxAutoLogin:TCheckBox;//f558
    PanelMiscellaneous:TPanel;//f55C
    BtnDoggebiCenser:TButton;//f560
    ActDoggebiCenser:TAction;//f564
    BtnRadar:TButton;//f568
    LblChatMessageLen:TLabel;//f56C
    PanelRevivalPoints:TPanel;//f570
    BtnSaveRevivalPoint:TButton;//f574
    RGRevivalPoints:TRadioGroup;//f578
    ActSaveRevivalPoint:TAction;//f57C
    BtnGoToRevivalPoint:TButton;//f580
    ActGoToRevivalPoint:TAction;//f584
    Panel1:TPanel;//f588
    BtnEmergencyEscape:TButton;//f58C
    BtnStopFastWalking:TButton;//f590
    BtnStartFastWalking:TButton;//f594
    GaugeTrip:TGauge;//f598
    LblTripProgress:TLabel;//f59C
    ListBoxSavedLocations:TListBox;//f5A0
    LblSavedLocations:TLabel;//f5A4
    BtnAddLocation:TButton;//f5A8
    BtnDeleteSelectedLocation:TButton;//f5AC
    BtnReloadLocations:TButton;//f5B0
    //procedure ActUseAutoCOExecute(?:?);//0053AB48
    //procedure ActUseAutoCAExecute(?:?);//0053AB7C
    //procedure ActSaveMacrosExecute(?:?);//0053AA90
    //procedure ActDeleteMacroExecute(?:?);//0053A964
    //procedure ActionManagerUpdate(?:?; ?:?);//0053A1A4
    //procedure ActUseThiefAutoMedicinesExecute(?:?);//0053AD40
    //procedure TBThiefMedicinesChange(?:?);//0053ADA8
    //procedure ActCreateThiefBotThreadExecute(?:?);//0053AC18
    //procedure ActUseAutoDoKExecute(?:?);//0053ABB0
    //procedure ActUseAutoSpinExecute(?:?);//0053ABE4
    //procedure ActRunMacroExecute(?:?);//0053A860
    //procedure ActUseMedicinesExecute(?:?);//0053B360
    //procedure TrackBarMedicinesChange(?:?);//0053B3BC
    //procedure ActAutoMeditationExecute(?:?);//0053B324
    procedure SBPickNowClick(Sender:TObject);//0053A554
    procedure RGPickStrategyClick(Sender:TObject);//0053A580
    //procedure ActStartMacroRecordingExecute(?:?);//0053A61C
    //procedure ActStopMacroRecordingExecute(?:?);//0053A78C
    procedure ChkBoxCureG1OnlyClick(Sender:TObject);//0053B3F8
    //procedure TrackBarBeheadAggroChange(?:?);//0053B5B0
    procedure TabStallShow(Sender:TObject);//005399F4
    //procedure ActDoggebiCenserExecute(?:?);//0053C4EC
    //procedure EditChatMessageChange(?:?);//0053BBD4
    //procedure ActDeleteLocationExecute(?:?);//0053C108
    //procedure ActAddLocationExecute(?:?);//0053BFC0
    //procedure ActDeleteLocationUpdate(?:?);//0053C0D4
    //procedure ActGoToRevivalPointUpdate(?:?);//0053C3D4
    //procedure ActEmergencyEscapeUpdate(?:?);//0053C4BC
    //procedure ActSaveRevivalPointUpdate(?:?);//0053C38C
    //procedure ActSaveRevivalPointExecute(?:?);//0053C18C
    //procedure ActGoToRevivalPointExecute(?:?);//0053C308
    //procedure ActEmergencyEscapeExecute(?:?);//0053C420
    //procedure ActStartWalkThreadUpdate(?:?);//0053BDC4
    //procedure ActStartWalkThreadExecute(?:?);//0053BCD4
    //procedure ActCreateThiefBotThreadUpdate(?:?);//0053AD0C
    //procedure ActTerminateThiefThtradExecute(?:?);//0053ADE4
    //procedure ActTerminateThiefThtradUpdate(?:?);//0053AE10
    //procedure ActBreakFastWalkingThreadUpdate(?:?);//0053BF90
    //procedure ActRadarExecute(?:?);//0053C404
    //procedure ActBreakFastWalkingThreadExecute(?:?);//0053BF58
    procedure ActReloadLocationListExecute(?:TMainForm);//0053BC88
    //procedure ActSendChatToServerExecute(?:?);//0053B5E0
    //procedure SpinEditPickDelayChange(?:?);//0053A518
    procedure Button5Click(Sender:TObject);//00538E34
    procedure Button10Click(Sender:TObject);//00538E9C
    procedure ChkBoxBeheadClick(Sender:TObject);//0053B580
    procedure SBSplashDisabledClick(Sender:TObject);//0053B530
    procedure ChkBoxMeditationClick(Sender:TObject);//0053B550
    procedure Button15Click(Sender:TObject);//0053933C
    procedure Button4Click(Sender:TObject);//0053935C
    //procedure TimerWalkerTimer(?:?);//005390C4
    procedure Button12Click(Sender:TObject);//00538F04
    procedure Button13Click(Sender:TObject);//00538F14
    procedure SBSplashEnabledClick(Sender:TObject);//0053B510
    //procedure ROAMServSockClientRead(?:?; ?:?);//00538AA4
    //procedure MainSvrClientSockRead(?:?; ?:?);//00538B14
    //procedure ROAMServSockClientConnect(?:?; ?:?);//00538A70
    procedure FormCreate(Sender:TObject);//00537DCC
    //procedure MainSvrClientSockConnect(?:?; ?:?);//005389F0
    procedure RadGroCureKindClick(Sender:TObject);//0053B13C
    procedure BtnStartThreadAutoSpleshClick(Sender:TObject);//0053B45C
    procedure BtnAutoCureThreadClick(Sender:TObject);//0053AFC4
    procedure FormDestroy(Sender:TObject);//005385B4
    //procedure ROAMServSockClientDisconnect(?:?; ?:?);//00538B5C
    //procedure ActSnifferWordWrapExecute(?:?);//0053A4E8
    procedure Button7Click(Sender:TObject);//0053959C
    //procedure ActSnifferWordWrapUpdate(?:?);//0053A4B8
    //procedure ActClearSniferLogsExecute(?:?);//0053A428
    //procedure ActClearSniferLogsUpdate(?:?);//0053A44C
    procedure TabThiefAttackShow(Sender:TObject);//005399A4
    procedure TabAutoSplashShow(Sender:TObject);//005399CC
    procedure TabCureShow(Sender:TObject);//0053997C
    procedure mstatexClick(Sender:TObject);//0053948C
    //procedure SpinEditCureRangeChange(?:?);//0053B428
    procedure BtnShowLogsClick(Sender:TObject);//0053A404
    //procedure ROAMServSockClientError(?:?; ?:?; ?:?);//00538BD4
    procedure BtnSuspendResumeThiefBotClick(Sender:TObject);//0053AABC
    procedure Button2Click(Sender:TObject);//00539450
    //procedure MainSvrClientSockError(?:?; ?:?);//00538BB8
    procedure Button18Click(Sender:TObject);//005393CC
    procedure SBCureOnClick(Sender:TObject);//0053B2C8
    procedure CheckBoxRangeClick(Sender:TObject);//0053B2F4
    procedure RadGroCureGradeClick(Sender:TObject);//0053B254
    procedure BtnQuestsClick(Sender:TObject);//0053952C
    procedure SBPickTargetPlayerNameClick(Sender:TObject);//0053B1EC
  public
    f5B5:byte;//f5B5
    f5B8:TPacketAnalyser;//f5B8
    f5BC:TAutoLogin;//f5BC
    f5C0:TChatManager;//f5C0
    f5C4:TPlayers;//f5C4
    f5C8:TMonsters;//f5C8
    f5CC:TDrops;//f5CC
    f5D0:TNPC;//f5D0
    f5D4:TParty;//f5D4
    f5D8:TInventory;//f5D8
    f5DC:TGameSession;//f5DC
    f5E0:TFastWalkLocationsList;//f5E0
    f5E4:TAutoFastWalking;//f5E4
    f5E8:TAutoCure;//f5E8
    f5EC:TAutoThiefAttack;//f5EC
    f5F0:TAutoSplash;//f5F0
    f5F4:TAutoPick;//f5F4
    f5F8:TAutoBuff;//f5F8
    f5FC:TAutoStall;//f5FC
    f600:TShopManager;//f600
    f604:TMapManager;//f604
    f608:TKalLispConfig;//f608
    f60C:TStringLoggs;//f60C
    f610:TStringLoggs;//f610
    //f614:?;//f614
    //f10614:?;//f10614
  end;
    //procedure sub_00538D0C(?:?; ?:?);//00538D0C
    //function sub_00539090(?:?; ?:?; ?:?; ?:?):?;//00539090
    //procedure sub_00539A1C(?:TMainForm; ?:?; ?:?; ?:?; ?:?);//00539A1C
    //procedure sub_00539BF4(?:TMainForm; ?:AnsiString; ?:Integer; ?:?);//00539BF4
    procedure sub_00539E14(?:TMainForm);//00539E14
    procedure sub_00539F68(?:TMainForm);//00539F68
    procedure sub_0053A130(?:TMainForm);//0053A130
    //procedure sub_0053BE74(?:?; ?:?; ?:?; ?:?);//0053BE74

implementation

{$R *.DFM}

//00537DCC
procedure TMainForm.FormCreate(Sender:TObject);
begin
{*
 00537DCC    push        ebp
 00537DCD    mov         ebp,esp
 00537DCF    add         esp,0FFFFFFD8
 00537DD2    push        ebx
 00537DD3    push        esi
 00537DD4    push        edi
 00537DD5    xor         ecx,ecx
 00537DD7    mov         dword ptr [ebp-20],ecx
 00537DDA    mov         dword ptr [ebp-1C],ecx
 00537DDD    mov         dword ptr [ebp-10],ecx
 00537DE0    mov         dword ptr [ebp-8],ecx
 00537DE3    mov         dword ptr [ebp-0C],edx
 00537DE6    mov         dword ptr [ebp-4],eax
 00537DE9    xor         eax,eax
 00537DEB    push        ebp
 00537DEC    push        53846B
 00537DF1    push        dword ptr fs:[eax]
 00537DF4    mov         dword ptr fs:[eax],esp
 00537DF7    mov         eax,[0055B4C8];^Application:TApplication
 00537DFC    mov         eax,dword ptr [eax]
 00537DFE    mov         edx,dword ptr [ebp-4]
 00537E01    mov         dword ptr [eax+0D4],edx;TApplication.?fD4:TMainForm
 00537E07    mov         dword ptr [eax+0D0],539AD8;TApplication.FOnException:TExceptionEvent
 00537E11    call        Randomize
 00537E16    mov         eax,[0055B708];^gvar_0055E044:TConfig
 00537E1B    mov         eax,dword ptr [eax]
 00537E1D    mov         edx,dword ptr [eax+20]
 00537E20    mov         eax,dword ptr [ebp-4]
 00537E23    mov         eax,dword ptr [eax+2FC];TMainForm.ROAMServSock:TServerSocket
 00537E29    call        TClientSocket.SetPort
 00537E2E    xor         eax,eax
 00537E30    push        ebp
 00537E31    push        537E56
 00537E36    push        dword ptr fs:[eax]
 00537E39    mov         dword ptr fs:[eax],esp
 00537E3C    mov         eax,dword ptr [ebp-4]
 00537E3F    mov         eax,dword ptr [eax+2FC];TMainForm.ROAMServSock:TServerSocket
 00537E45    mov         dl,1
 00537E47    call        TClientSocket.SetActive
 00537E4C    xor         eax,eax
 00537E4E    pop         edx
 00537E4F    pop         ecx
 00537E50    pop         ecx
 00537E51    mov         dword ptr fs:[eax],edx
>00537E54    jmp         00537EB9
>00537E56    jmp         @HandleOnException
 00537E5B    dd          1
 00537E5F    dd          004F4680;ESocketError
 00537E63    dd          00537E67
 00537E67    push        10
 00537E69    push        0
 00537E6B    lea         eax,[ebp-10]
 00537E6E    push        eax
 00537E6F    mov         eax,dword ptr [ebp-4]
 00537E72    mov         eax,dword ptr [eax+2FC];TMainForm.ROAMServSock:TServerSocket
 00537E78    mov         eax,dword ptr [eax+34];TServerSocket.FPort:Integer
 00537E7B    mov         dword ptr [ebp-18],eax
 00537E7E    mov         byte ptr [ebp-14],0
 00537E82    lea         edx,[ebp-18]
 00537E85    xor         ecx,ecx
 00537E87    mov         eax,538484;'ESocketError 10048. B³¹d utworzenia gniazda TCP/IP prawdopodobnie inna aplik...
 00537E8C    call        Format
 00537E91    mov         eax,dword ptr [ebp-10]
 00537E94    call        @LStrToPChar
 00537E99    push        eax
 00537E9A    mov         eax,dword ptr [ebp-4]
 00537E9D    call        TWinControl.GetHandle
 00537EA2    push        eax
 00537EA3    call        user32.MessageBoxA
 00537EA8    mov         eax,[0055B4C8];^Application:TApplication
 00537EAD    mov         eax,dword ptr [eax]
 00537EAF    call        004F2F00
 00537EB4    call        @DoneExcept
 00537EB9    mov         eax,[0055B708];^gvar_0055E044:TConfig
 00537EBE    mov         eax,dword ptr [eax]
 00537EC0    mov         edx,dword ptr [eax+24]
 00537EC3    mov         eax,dword ptr [ebp-4]
 00537EC6    mov         eax,dword ptr [eax+2F8];TMainForm.MainSvrClientSock:TClientSocket
 00537ECC    call        TClientSocket.SetAddress
 00537ED1    mov         eax,[0055B708];^gvar_0055E044:TConfig
 00537ED6    mov         eax,dword ptr [eax]
 00537ED8    mov         edx,dword ptr [eax+28]
 00537EDB    mov         eax,dword ptr [ebp-4]
 00537EDE    mov         eax,dword ptr [eax+2F8];TMainForm.MainSvrClientSock:TClientSocket
 00537EE4    call        TClientSocket.SetPort
 00537EE9    mov         eax,dword ptr [ebp-4]
 00537EEC    add         eax,2F8;TMainForm.MainSvrClientSock:TClientSocket
 00537EF1    push        eax
 00537EF2    push        0
 00537EF4    mov         eax,dword ptr [ebp-4]
 00537EF7    lea         ecx,[eax+2FC];TMainForm.ROAMServSock:TServerSocket
 00537EFD    mov         dl,1
 00537EFF    mov         eax,[0051FBEC];TPacketAnalyser
 00537F04    call        TPacketAnalyser.Create;TPacketAnalyser.Create
 00537F09    mov         edx,dword ptr [ebp-4]
 00537F0C    mov         dword ptr [edx+5B8],eax;TMainForm.?f5B8:TPacketAnalyser
 00537F12    mov         eax,dword ptr [ebp-4]
 00537F15    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00537F1B    mov         edx,dword ptr [ebp-4]
 00537F1E    mov         dword ptr [eax+34],edx;TPacketAnalyser.?f34:TMainForm
 00537F21    mov         dword ptr [eax+30],538858;TPacketAnalyser.?f30:dword
 00537F28    mov         eax,dword ptr [ebp-4]
 00537F2B    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00537F31    mov         edx,dword ptr [ebp-4]
 00537F34    mov         dword ptr [eax+3C],edx;TPacketAnalyser.?f3C:TMainForm
 00537F37    mov         dword ptr [eax+38],538698;TPacketAnalyser.?f38:dword
 00537F3E    mov         eax,[0055B708];^gvar_0055E044:TConfig
 00537F43    mov         eax,dword ptr [eax]
 00537F45    mov         ecx,dword ptr [eax+8]
 00537F48    mov         dl,1
 00537F4A    mov         eax,[00525BA4];TKalLispConfig
 00537F4F    call        TKalLispConfig.Create;TKalLispConfig.Create
 00537F54    mov         edx,dword ptr [ebp-4]
 00537F57    mov         dword ptr [edx+608],eax;TMainForm.?f608:TKalLispConfig
 00537F5D    mov         eax,dword ptr [ebp-4]
 00537F60    mov         eax,dword ptr [eax+608];TMainForm.?f608:TKalLispConfig
 00537F66    call        00526460
 00537F6B    mov         eax,[0055B708];^gvar_0055E044:TConfig
 00537F70    mov         eax,dword ptr [eax]
 00537F72    cmp         byte ptr [eax+10],0
>00537F76    je          00537FD8
 00537F78    call        004688F0
 00537F7D    add         esp,0FFFFFFF8
 00537F80    fstp        qword ptr [esp]
 00537F83    wait
 00537F84    lea         eax,[ebp-8]
 00537F87    mov         edx,538580;'yyy_mm_dd hh_nn_ss'
 00537F8C    call        00469580
 00537F91    mov         eax,[0055B708];^gvar_0055E044:TConfig
 00537F96    mov         eax,dword ptr [eax]
 00537F98    push        dword ptr [eax+14]
 00537F9B    push        dword ptr [ebp-8]
 00537F9E    push        53859C;'.txt'
 00537FA3    lea         eax,[ebp-1C]
 00537FA6    mov         edx,3
 00537FAB    call        @LStrCatN
 00537FB0    mov         ecx,dword ptr [ebp-1C]
 00537FB3    mov         dl,1
 00537FB5    mov         eax,[0052B94C];TStringLoggs
 00537FBA    call        TStringLoggs.Create;TStringLoggs.Create
 00537FBF    mov         edx,dword ptr [ebp-4]
 00537FC2    mov         dword ptr [edx+60C],eax;TMainForm.?f60C:TStringLoggs
 00537FC8    mov         eax,dword ptr [ebp-4]
 00537FCB    mov         eax,dword ptr [eax+60C];TMainForm.?f60C:TStringLoggs
 00537FD1    mov         dword ptr [eax+18],1F4;TStringLoggs.?f18:dword
 00537FD8    mov         eax,dword ptr [ebp-4]
 00537FDB    mov         byte ptr [eax+5B5],0;TMainForm.?f5B5:byte
 00537FE2    mov         eax,[0055B708];^gvar_0055E044:TConfig
 00537FE7    mov         eax,dword ptr [eax]
 00537FE9    cmp         byte ptr [eax+18],0
>00537FED    je          0053804F
 00537FEF    call        004688F0
 00537FF4    add         esp,0FFFFFFF8
 00537FF7    fstp        qword ptr [esp]
 00537FFA    wait
 00537FFB    lea         eax,[ebp-8]
 00537FFE    mov         edx,538580;'yyy_mm_dd hh_nn_ss'
 00538003    call        00469580
 00538008    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0053800D    mov         eax,dword ptr [eax]
 0053800F    push        dword ptr [eax+1C]
 00538012    push        dword ptr [ebp-8]
 00538015    push        53859C;'.txt'
 0053801A    lea         eax,[ebp-20]
 0053801D    mov         edx,3
 00538022    call        @LStrCatN
 00538027    mov         ecx,dword ptr [ebp-20]
 0053802A    mov         dl,1
 0053802C    mov         eax,[0052B94C];TStringLoggs
 00538031    call        TStringLoggs.Create;TStringLoggs.Create
 00538036    mov         edx,dword ptr [ebp-4]
 00538039    mov         dword ptr [edx+610],eax;TMainForm.?f610:TStringLoggs
 0053803F    mov         eax,dword ptr [ebp-4]
 00538042    mov         eax,dword ptr [eax+610];TMainForm.?f610:TStringLoggs
 00538048    mov         dword ptr [eax+18],1;TStringLoggs.?f18:dword
 0053804F    mov         eax,dword ptr [ebp-4]
 00538052    mov         eax,dword ptr [eax+340];TMainForm.MemoChat:TMemo
 00538058    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 0053805E    push        eax
 0053805F    mov         eax,dword ptr [ebp-4]
 00538062    mov         ecx,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00538068    mov         dl,1
 0053806A    mov         eax,[005216F0];TChatManager
 0053806F    call        TChatManager.Create;TChatManager.Create
 00538074    mov         edx,dword ptr [ebp-4]
 00538077    mov         dword ptr [edx+5C0],eax;TMainForm.?f5C0:TChatManager
 0053807D    mov         eax,dword ptr [ebp-4]
 00538080    mov         eax,dword ptr [eax+5C0];TMainForm.?f5C0:TChatManager
 00538086    mov         edx,dword ptr [ebp-4]
 00538089    mov         dword ptr [eax+1C],edx;TChatManager.?f1C:TMainForm
 0053808C    mov         dword ptr [eax+18],53BA20;TChatManager.?f18:dword
 00538093    mov         eax,dword ptr [ebp-4]
 00538096    mov         eax,dword ptr [eax+5C0];TMainForm.?f5C0:TChatManager
 0053809C    mov         edx,dword ptr [ebp-4]
 0053809F    mov         dword ptr [eax+24],edx;TChatManager.?f24:TMainForm
 005380A2    mov         dword ptr [eax+20],53B694;TChatManager.?f20:dword
 005380A9    mov         eax,dword ptr [ebp-4]
 005380AC    lea         ecx,[eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 005380B2    mov         dl,1
 005380B4    mov         eax,[0053412C];TPlayers
 005380B9    call        TPlayers.Create;TPlayers.Create
 005380BE    mov         edx,dword ptr [ebp-4]
 005380C1    mov         dword ptr [edx+5C4],eax;TMainForm.?f5C4:TPlayers
 005380C7    mov         eax,dword ptr [ebp-4]
 005380CA    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 005380D0    mov         edx,dword ptr [ebp-4]
 005380D3    mov         dword ptr [eax+34],edx;TPlayers.?f34:TMainForm
 005380D6    mov         dword ptr [eax+30],538C30;TPlayers.?f30:dword
 005380DD    mov         eax,dword ptr [ebp-4]
 005380E0    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 005380E6    mov         edx,dword ptr [ebp-4]
 005380E9    mov         dword ptr [eax+3C],edx;TPlayers.?f3C:TMainForm
 005380EC    mov         dword ptr [eax+38],538D0C;TPlayers.?f38:dword sub_00538D0C
 005380F3    mov         eax,dword ptr [ebp-4]
 005380F6    mov         ecx,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 005380FC    mov         dl,1
 005380FE    mov         eax,[00533408];TMonsters
 00538103    call        TMonsters.Create;TMonsters.Create
 00538108    mov         edx,dword ptr [ebp-4]
 0053810B    mov         dword ptr [edx+5C8],eax;TMainForm.?f5C8:TMonsters
 00538111    mov         eax,dword ptr [ebp-4]
 00538114    mov         eax,dword ptr [eax+5C8];TMainForm.?f5C8:TMonsters
 0053811A    mov         edx,dword ptr [ebp-4]
 0053811D    mov         dword ptr [eax+34],edx;TMonsters.?f34:TMainForm
 00538120    mov         dword ptr [eax+30],538D74;TMonsters.?f30:dword
 00538127    mov         eax,dword ptr [ebp-4]
 0053812A    mov         ecx,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00538130    mov         dl,1
 00538132    mov         eax,[00532CD4];TDrops
 00538137    call        TDrops.Create;TDrops.Create
 0053813C    mov         edx,dword ptr [ebp-4]
 0053813F    mov         dword ptr [edx+5CC],eax;TMainForm.?f5CC:TDrops
 00538145    mov         eax,dword ptr [ebp-4]
 00538148    mov         ecx,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 0053814E    mov         dl,1
 00538150    mov         eax,[00521E6C];TNPC
 00538155    call        TNPC.Create;TNPC.Create
 0053815A    mov         edx,dword ptr [ebp-4]
 0053815D    mov         dword ptr [edx+5D0],eax;TMainForm.?f5D0:TNPC
 00538163    mov         eax,dword ptr [ebp-4]
 00538166    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053816C    push        eax
 0053816D    mov         eax,dword ptr [ebp-4]
 00538170    lea         ecx,[eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00538176    mov         dl,1
 00538178    mov         eax,[00532388];TParty
 0053817D    call        TParty.Create;TParty.Create
 00538182    mov         edx,dword ptr [ebp-4]
 00538185    mov         dword ptr [edx+5D4],eax;TMainForm.?f5D4:TParty
 0053818B    mov         eax,dword ptr [ebp-4]
 0053818E    mov         eax,dword ptr [eax+608];TMainForm.?f608:TKalLispConfig
 00538194    push        eax
 00538195    mov         eax,dword ptr [ebp-4]
 00538198    mov         ecx,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 0053819E    mov         dl,1
 005381A0    mov         eax,[005266B8];TInventory
 005381A5    call        TInventory.Create;TInventory.Create
 005381AA    mov         edx,dword ptr [ebp-4]
 005381AD    mov         dword ptr [edx+5D8],eax;TMainForm.?f5D8:TInventory
 005381B3    mov         eax,dword ptr [ebp-4]
 005381B6    mov         eax,dword ptr [eax+608];TMainForm.?f608:TKalLispConfig
 005381BC    push        eax
 005381BD    mov         eax,dword ptr [ebp-4]
 005381C0    lea         ecx,[eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 005381C6    mov         dl,1
 005381C8    mov         eax,[00528D88];TShopManager
 005381CD    call        TShopManager.Create;TShopManager.Create
 005381D2    mov         edx,dword ptr [ebp-4]
 005381D5    mov         dword ptr [edx+600],eax;TMainForm.?f600:TShopManager
 005381DB    mov         eax,dword ptr [ebp-4]
 005381DE    mov         eax,dword ptr [eax+608];TMainForm.?f608:TKalLispConfig
 005381E4    push        eax
 005381E5    mov         eax,dword ptr [ebp-4]
 005381E8    mov         eax,dword ptr [eax+5D8];TMainForm.?f5D8:TInventory
 005381EE    push        eax
 005381EF    mov         eax,dword ptr [ebp-4]
 005381F2    lea         ecx,[eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 005381F8    mov         dl,1
 005381FA    mov         eax,[00530C14];TAutoStall
 005381FF    call        TAutoStall.Create;TAutoStall.Create
 00538204    mov         edx,dword ptr [ebp-4]
 00538207    mov         dword ptr [edx+5FC],eax;TMainForm.?f5FC:TAutoStall
 0053820D    mov         eax,dword ptr [ebp-4]
 00538210    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 00538216    call        00530E50
 0053821B    mov         eax,dword ptr [ebp-4]
 0053821E    mov         eax,dword ptr [eax+5D8];TMainForm.?f5D8:TInventory
 00538224    call        00526FB0
 00538229    xor         eax,eax
 0053822B    push        ebp
 0053822C    push        53826D
 00538231    push        dword ptr fs:[eax]
 00538234    mov         dword ptr fs:[eax],esp
 00538237    mov         eax,dword ptr [ebp-4]
 0053823A    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 00538240    call        00531DF8
 00538245    mov         eax,dword ptr [ebp-4]
 00538248    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053824E    call        00531888
 00538253    mov         edx,eax
 00538255    mov         eax,dword ptr [ebp-4]
 00538258    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053825E    call        TListBox.SetItems
 00538263    xor         eax,eax
 00538265    pop         edx
 00538266    pop         ecx
 00538267    pop         ecx
 00538268    mov         dword ptr fs:[eax],edx
>0053826B    jmp         00538277
>0053826D    jmp         @HandleAnyException
 00538272    call        @DoneExcept
 00538277    mov         eax,dword ptr [ebp-4]
 0053827A    mov         eax,dword ptr [eax+5CC];TMainForm.?f5CC:TDrops
 00538280    push        eax
 00538281    mov         eax,dword ptr [ebp-4]
 00538284    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053828A    push        eax
 0053828B    mov         eax,dword ptr [ebp-4]
 0053828E    lea         ecx,[eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00538294    mov         dl,1
 00538296    mov         eax,[00529C9C];TAutoPick
 0053829B    call        TAutoPick.Create;TAutoPick.Create
 005382A0    mov         edx,dword ptr [ebp-4]
 005382A3    mov         dword ptr [edx+5F4],eax;TMainForm.?f5F4:TAutoPick
 005382A9    mov         eax,dword ptr [ebp-4]
 005382AC    mov         eax,dword ptr [eax+42C];TMainForm.SpinEditPickDelay:TSpinEdit
 005382B2    mov         edx,46
 005382B7    call        TSpinEdit.SetValue
 005382BC    mov         eax,dword ptr [ebp-4]
 005382BF    mov         ebx,dword ptr [eax+42C];TMainForm.SpinEditPickDelay:TSpinEdit
 005382C5    mov         edx,dword ptr [ebp-4]
 005382C8    mov         eax,dword ptr [ebx+21C];TSpinEdit.?f21C:dword
 005382CE    call        dword ptr [ebx+218];TSpinEdit.FOnChange
 005382D4    mov         eax,dword ptr [ebp-4]
 005382D7    mov         ebx,dword ptr [eax+420];TMainForm.RGPickStrategy:TRadioGroup
 005382DD    mov         edx,dword ptr [ebp-4]
 005382E0    mov         eax,dword ptr [ebx+124];TRadioGroup.?f124:TMessageForm
 005382E6    call        dword ptr [ebx+120];TRadioGroup.FOnClick
 005382EC    mov         eax,dword ptr [ebp-4]
 005382EF    mov         eax,dword ptr [eax+5F4];TMainForm.?f5F4:TAutoPick
 005382F5    mov         byte ptr [eax+40],1;TAutoPick.?f40:byte
 005382F9    mov         eax,dword ptr [ebp-4]
 005382FC    mov         eax,dword ptr [eax+5F4];TMainForm.?f5F4:TAutoPick
 00538302    call        00482E08
 00538307    mov         eax,dword ptr [ebp-4]
 0053830A    mov         eax,dword ptr [eax+41C];TMainForm.PanelPick:TPanel
 00538310    mov         dl,1
 00538312    call        TControl.SetVisible
 00538317    mov         dl,1
 00538319    mov         eax,[0052940C];TMapManager
 0053831E    call        TObject.Create;TMapManager.Create
 00538323    mov         edx,dword ptr [ebp-4]
 00538326    mov         dword ptr [edx+604],eax;TMainForm.?f604:TMapManager
 0053832C    mov         eax,dword ptr [ebp-4]
 0053832F    mov         eax,dword ptr [eax+364];TMainForm.Image1:TImage
 00538335    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0053833B    call        0048A950
 00538340    mov         edx,100
 00538345    mov         ecx,dword ptr [eax]
 00538347    call        dword ptr [ecx+34]
 0053834A    mov         eax,dword ptr [ebp-4]
 0053834D    mov         eax,dword ptr [eax+364];TMainForm.Image1:TImage
 00538353    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00538359    call        0048A950
 0053835E    mov         edx,100
 00538363    mov         ecx,dword ptr [eax]
 00538365    call        dword ptr [ecx+40]
 00538368    push        0
 0053836A    mov         eax,dword ptr [ebp-4]
 0053836D    mov         eax,dword ptr [eax+2FC];TMainForm.ROAMServSock:TServerSocket
 00538373    mov         ecx,dword ptr [eax+34];TServerSocket.FPort:Integer
 00538376    mov         edx,5385AC;'0.92'
 0053837B    mov         eax,dword ptr [ebp-4]
 0053837E    call        00539BF4
 00538383    mov         eax,dword ptr [ebp-4]
 00538386    mov         eax,dword ptr [eax+608];TMainForm.?f608:TKalLispConfig
 0053838C    push        eax
 0053838D    mov         eax,dword ptr [ebp-4]
 00538390    mov         ecx,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00538396    mov         dl,1
 00538398    mov         eax,[0052B6A0];TGameSession
 0053839D    call        TGameSession.Create;TGameSession.Create
 005383A2    mov         edx,dword ptr [ebp-4]
 005383A5    mov         dword ptr [edx+5DC],eax;TMainForm.?f5DC:TGameSession
 005383AB    mov         eax,dword ptr [ebp-4]
 005383AE    mov         eax,dword ptr [eax+5DC];TMainForm.?f5DC:TGameSession
 005383B4    mov         edx,dword ptr [ebp-4]
 005383B7    mov         dword ptr [eax+24],edx;TGameSession.?f24:TMainForm
 005383BA    mov         dword ptr [eax+20],5395F4;TGameSession.?f20:dword
 005383C1    mov         eax,dword ptr [ebp-4]
 005383C4    lea         ecx,[eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 005383CA    mov         dl,1
 005383CC    mov         eax,[00535F70];TAutoLogin
 005383D1    call        TAutoLogin.Create;TAutoLogin.Create
 005383D6    mov         edx,dword ptr [ebp-4]
 005383D9    mov         dword ptr [edx+5BC],eax;TMainForm.?f5BC:TAutoLogin
 005383DF    mov         byte ptr [ebp-28],2
 005383E3    mov         byte ptr [ebp-27],3
 005383E7    mov         byte ptr [ebp-26],4
 005383EB    mov         byte ptr [ebp-25],9
 005383EF    mov         byte ptr [ebp-24],0A
 005383F3    lea         eax,[ebp-28]
 005383F6    push        eax
 005383F7    push        4
 005383F9    lea         edx,[ebp-28]
 005383FC    or          ecx,0FFFFFFFF
 005383FF    mov         eax,dword ptr [ebp-4]
 00538402    call        00539A1C
 00538407    mov         eax,dword ptr [ebp-4]
 0053840A    call        00539E14
 0053840F    mov         eax,dword ptr [ebp-4]
 00538412    call        0053A130
 00538417    mov         eax,dword ptr [ebp-4]
 0053841A    mov         ecx,dword ptr [eax+5DC];TMainForm.?f5DC:TGameSession
 00538420    mov         dl,1
 00538422    mov         eax,[0052FD64];TFastWalkLocationsList
 00538427    call        TFastWalkLocationsList.Create;TFastWalkLocationsList.Create
 0053842C    mov         edx,dword ptr [ebp-4]
 0053842F    mov         dword ptr [edx+5E0],eax;TMainForm.?f5E0:TFastWalkLocationsList
 00538435    mov         edx,dword ptr [ebp-4]
 00538438    mov         eax,dword ptr [ebp-4]
 0053843B    call        TMainForm.ActReloadLocationListExecute
 00538440    xor         eax,eax
 00538442    pop         edx
 00538443    pop         ecx
 00538444    pop         ecx
 00538445    mov         dword ptr fs:[eax],edx
 00538448    push        538472
 0053844D    lea         eax,[ebp-20]
 00538450    mov         edx,2
 00538455    call        @LStrArrayClr
 0053845A    lea         eax,[ebp-10]
 0053845D    call        @LStrClr
 00538462    lea         eax,[ebp-8]
 00538465    call        @LStrClr
 0053846A    ret
>0053846B    jmp         @HandleFinally
>00538470    jmp         0053844D
 00538472    pop         edi
 00538473    pop         esi
 00538474    pop         ebx
 00538475    mov         esp,ebp
 00538477    pop         ebp
 00538478    ret
*}
end;

//005385B4
procedure TMainForm.FormDestroy(Sender:TObject);
begin
{*
 005385B4    push        ebp
 005385B5    mov         ebp,esp
 005385B7    add         esp,0FFFFFFF8
 005385BA    mov         dword ptr [ebp-8],edx
 005385BD    mov         dword ptr [ebp-4],eax
 005385C0    mov         eax,dword ptr [ebp-4]
 005385C3    mov         eax,dword ptr [eax+608];TMainForm.?f608:TKalLispConfig
 005385C9    call        TObject.Free
 005385CE    mov         eax,dword ptr [ebp-4]
 005385D1    cmp         dword ptr [eax+5F4],0;TMainForm.?f5F4:TAutoPick
>005385D8    je          005385E8
 005385DA    mov         eax,dword ptr [ebp-4]
 005385DD    mov         eax,dword ptr [eax+5F4];TMainForm.?f5F4:TAutoPick
 005385E3    call        TObject.Free
 005385E8    mov         eax,dword ptr [ebp-4]
 005385EB    cmp         dword ptr [eax+5E8],0;TMainForm.?f5E8:TAutoCure
>005385F2    je          00538602
 005385F4    mov         eax,dword ptr [ebp-4]
 005385F7    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 005385FD    call        TObject.Free
 00538602    mov         eax,dword ptr [ebp-4]
 00538605    cmp         dword ptr [eax+5EC],0;TMainForm.?f5EC:TAutoThiefAttack
>0053860C    je          0053861C
 0053860E    mov         eax,dword ptr [ebp-4]
 00538611    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 00538617    call        TObject.Free
 0053861C    mov         eax,dword ptr [ebp-4]
 0053861F    cmp         dword ptr [eax+5F8],0;TMainForm.?f5F8:TAutoBuff
>00538626    je          00538636
 00538628    mov         eax,dword ptr [ebp-4]
 0053862B    mov         eax,dword ptr [eax+5F8];TMainForm.?f5F8:TAutoBuff
 00538631    call        TObject.Free
 00538636    mov         eax,dword ptr [ebp-4]
 00538639    cmp         dword ptr [eax+5F0],0;TMainForm.?f5F0:TAutoSplash
>00538640    je          00538650
 00538642    mov         eax,dword ptr [ebp-4]
 00538645    mov         eax,dword ptr [eax+5F0];TMainForm.?f5F0:TAutoSplash
 0053864B    call        TObject.Free
 00538650    mov         eax,dword ptr [ebp-4]
 00538653    mov         eax,dword ptr [eax+604];TMainForm.?f604:TMapManager
 00538659    call        TObject.Free
 0053865E    mov         eax,dword ptr [ebp-4]
 00538661    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00538667    call        TObject.Free
 0053866C    mov         eax,dword ptr [ebp-4]
 0053866F    add         eax,60C;TMainForm.?f60C:TStringLoggs
 00538674    call        FreeAndNil
 00538679    mov         eax,dword ptr [ebp-4]
 0053867C    add         eax,610;TMainForm.?f610:TStringLoggs
 00538681    call        FreeAndNil
 00538686    mov         eax,dword ptr [ebp-4]
 00538689    add         eax,5E0;TMainForm.?f5E0:TFastWalkLocationsList
 0053868E    call        FreeAndNil
 00538693    pop         ecx
 00538694    pop         ecx
 00538695    pop         ebp
 00538696    ret
*}
end;

//005389F0
{*procedure TMainForm.MainSvrClientSockConnect(?:?; ?:?);
begin
 005389F0    push        ebp
 005389F1    mov         ebp,esp
 005389F3    add         esp,0FFFFFFEC
 005389F6    push        ebx
 005389F7    mov         dword ptr [ebp-0C],ecx
 005389FA    mov         dword ptr [ebp-8],edx
 005389FD    mov         dword ptr [ebp-4],eax
 00538A00    mov         eax,dword ptr [ebp-4]
 00538A03    mov         eax,dword ptr [eax+43C];TMainForm.MemoSessionLogs:TMemo
 00538A09    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 00538A0F    mov         edx,538A5C;'Main Server Connect'
 00538A14    mov         ecx,dword ptr [eax]
 00538A16    call        dword ptr [ecx+38];TStrings.sub_0047A060
 00538A19    lea         ecx,[ebp-14]
 00538A1C    xor         edx,edx
 00538A1E    mov         eax,dword ptr [ebp-4]
 00538A21    mov         eax,dword ptr [eax+2FC];TMainForm.ROAMServSock:TServerSocket
 00538A27    call        TServerSocket.GetOnClientConnect
 00538A2C    lea         ebx,[ebp-14]
 00538A2F    mov         eax,dword ptr [ebp-4]
 00538A32    mov         eax,dword ptr [eax+2FC];TMainForm.ROAMServSock:TServerSocket
 00538A38    mov         eax,dword ptr [eax+90];TServerSocket.......................................................
 00538A3E    xor         edx,edx
 00538A40    call        004F7130
 00538A45    mov         ecx,eax
 00538A47    xor         edx,edx
 00538A49    mov         eax,dword ptr [ebx+4]
 00538A4C    call        dword ptr [ebx]
 00538A4E    pop         ebx
 00538A4F    mov         esp,ebp
 00538A51    pop         ebp
 00538A52    ret
end;*}

//00538A70
{*procedure TMainForm.ROAMServSockClientConnect(?:?; ?:?);
begin
 00538A70    push        ebp
 00538A71    mov         ebp,esp
 00538A73    add         esp,0FFFFFFF4
 00538A76    mov         dword ptr [ebp-0C],ecx
 00538A79    mov         dword ptr [ebp-8],edx
 00538A7C    mov         dword ptr [ebp-4],eax
 00538A7F    mov         eax,dword ptr [ebp-4]
 00538A82    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00538A88    call        0051FDA0
 00538A8D    mov         dl,1
 00538A8F    mov         eax,dword ptr [ebp-4]
 00538A92    mov         eax,dword ptr [eax+2F8];TMainForm.MainSvrClientSock:TClientSocket
 00538A98    call        TClientSocket.SetActive
 00538A9D    mov         esp,ebp
 00538A9F    pop         ebp
 00538AA0    ret
end;*}

//00538AA4
{*procedure TMainForm.ROAMServSockClientRead(?:?; ?:?);
begin
 00538AA4    push        ebp
 00538AA5    mov         ebp,esp
 00538AA7    add         esp,0FFFFFFF0
 00538AAA    mov         dword ptr [ebp-10],ecx
 00538AAD    mov         dword ptr [ebp-0C],edx
 00538AB0    mov         dword ptr [ebp-4],eax
 00538AB3    mov         eax,dword ptr [ebp-4]
 00538AB6    mov         eax,dword ptr [eax+2F8];TMainForm.MainSvrClientSock:TClientSocket
 00538ABC    mov         eax,dword ptr [eax+90];TClientSocket.FClientSocket:TClientWinSocket
 00538AC2    cmp         byte ptr [eax+8],0;TClientWinSocket.FConnected:Boolean
>00538AC6    je          00538B10
 00538AC8    mov         eax,dword ptr [ebp-4]
 00538ACB    mov         eax,dword ptr [eax+2FC];TMainForm.ROAMServSock:TServerSocket
 00538AD1    mov         eax,dword ptr [eax+90];TServerSocket.......................................................
 00538AD7    xor         edx,edx
 00538AD9    call        004F7130
 00538ADE    mov         edx,dword ptr [ebp-4]
 00538AE1    add         edx,614;TMainForm.?f614:?
 00538AE7    mov         ecx,10000
 00538AEC    call        004F6888
 00538AF1    mov         word ptr [ebp-6],ax
 00538AF5    movzx       ecx,word ptr [ebp-6]
 00538AF9    mov         eax,dword ptr [ebp-4]
 00538AFC    lea         edx,[eax+614];TMainForm.?f614:?
 00538B02    mov         eax,dword ptr [ebp-4]
 00538B05    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00538B0B    call        0052038C
 00538B10    mov         esp,ebp
 00538B12    pop         ebp
 00538B13    ret
end;*}

//00538B14
{*procedure TMainForm.MainSvrClientSockRead(?:?; ?:?);
begin
 00538B14    push        ebp
 00538B15    mov         ebp,esp
 00538B17    add         esp,0FFFFFFF0
 00538B1A    mov         dword ptr [ebp-8],ecx
 00538B1D    mov         dword ptr [ebp-10],edx
 00538B20    mov         dword ptr [ebp-4],eax
 00538B23    mov         eax,dword ptr [ebp-4]
 00538B26    lea         edx,[eax+10614];TMainForm.?f10614:?
 00538B2C    mov         ecx,10000
 00538B31    mov         eax,dword ptr [ebp-8]
 00538B34    call        004F6888
 00538B39    mov         word ptr [ebp-0A],ax
 00538B3D    movzx       ecx,word ptr [ebp-0A]
 00538B41    mov         eax,dword ptr [ebp-4]
 00538B44    lea         edx,[eax+10614];TMainForm.?f10614:?
 00538B4A    mov         eax,dword ptr [ebp-4]
 00538B4D    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00538B53    call        00520364
 00538B58    mov         esp,ebp
 00538B5A    pop         ebp
 00538B5B    ret
end;*}

//00538B5C
{*procedure TMainForm.ROAMServSockClientDisconnect(?:?; ?:?);
begin
 00538B5C    push        ebp
 00538B5D    mov         ebp,esp
 00538B5F    add         esp,0FFFFFFF4
 00538B62    mov         dword ptr [ebp-0C],ecx
 00538B65    mov         dword ptr [ebp-8],edx
 00538B68    mov         dword ptr [ebp-4],eax
 00538B6B    mov         eax,dword ptr [ebp-4]
 00538B6E    mov         eax,dword ptr [eax+318];TMainForm.MemoSniffer:TMemo
 00538B74    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 00538B7A    mov         edx,538BA4;'Client Disconnected'
 00538B7F    mov         ecx,dword ptr [eax]
 00538B81    call        dword ptr [ecx+38];TStrings.sub_0047A060
 00538B84    mov         eax,dword ptr [ebp-4]
 00538B87    mov         eax,dword ptr [eax+2F8];TMainForm.MainSvrClientSock:TClientSocket
 00538B8D    mov         eax,dword ptr [eax+90];TClientSocket.FClientSocket:TClientWinSocket
 00538B93    call        004F5BD0
 00538B98    mov         esp,ebp
 00538B9A    pop         ebp
 00538B9B    ret
end;*}

//00538BB8
{*procedure TMainForm.MainSvrClientSockError(?:?; ?:?);
begin
 00538BB8    push        ebp
 00538BB9    mov         ebp,esp
 00538BBB    add         esp,0FFFFFFF4
 00538BBE    mov         dword ptr [ebp-0C],ecx
 00538BC1    mov         dword ptr [ebp-8],edx
 00538BC4    mov         dword ptr [ebp-4],eax
 00538BC7    call        0046B56C
 00538BCC    mov         esp,ebp
 00538BCE    pop         ebp
 00538BCF    ret         8
end;*}

//00538BD4
{*procedure TMainForm.ROAMServSockClientError(?:?; ?:?; ?:?);
begin
 00538BD4    push        ebp
 00538BD5    mov         ebp,esp
 00538BD7    add         esp,0FFFFFFF0
 00538BDA    push        ebx
 00538BDB    xor         ebx,ebx
 00538BDD    mov         dword ptr [ebp-10],ebx
 00538BE0    mov         dword ptr [ebp-0C],ecx
 00538BE3    mov         dword ptr [ebp-8],edx
 00538BE6    mov         dword ptr [ebp-4],eax
 00538BE9    xor         eax,eax
 00538BEB    push        ebp
 00538BEC    push        538C22
 00538BF1    push        dword ptr fs:[eax]
 00538BF4    mov         dword ptr fs:[eax],esp
 00538BF7    lea         edx,[ebp-10]
 00538BFA    mov         eax,dword ptr [ebp+8]
 00538BFD    mov         eax,dword ptr [eax]
 00538BFF    call        IntToStr
 00538C04    mov         eax,dword ptr [ebp-10]
 00538C07    call        00495128
 00538C0C    xor         eax,eax
 00538C0E    pop         edx
 00538C0F    pop         ecx
 00538C10    pop         ecx
 00538C11    mov         dword ptr fs:[eax],edx
 00538C14    push        538C29
 00538C19    lea         eax,[ebp-10]
 00538C1C    call        @LStrClr
 00538C21    ret
>00538C22    jmp         @HandleFinally
>00538C27    jmp         00538C19
 00538C29    pop         ebx
 00538C2A    mov         esp,ebp
 00538C2C    pop         ebp
 00538C2D    ret         8
end;*}

//00538D0C
{*procedure sub_00538D0C(?:?; ?:?);
begin
 00538D0C    push        ebp
 00538D0D    mov         ebp,esp
 00538D0F    add         esp,0FFFFFFF8
 00538D12    mov         dword ptr [ebp-8],edx
 00538D15    mov         dword ptr [ebp-4],eax
 00538D18    mov         eax,dword ptr [ebp-4]
 00538D1B    mov         eax,dword ptr [eax+5C4]
 00538D21    call        00535800
 00538D26    test        al,al
>00538D28    je          00538D6D
 00538D2A    mov         eax,dword ptr [ebp-4]
 00538D2D    mov         eax,dword ptr [eax+5C4]
 00538D33    mov         eax,dword ptr [eax+40]
 00538D36    mov         eax,dword ptr [eax]
 00538D38    cmp         eax,dword ptr [ebp-8]
>00538D3B    jne         00538D6D
 00538D3D    mov         eax,[0055E118];gvar_0055E118
 00538D42    mov         eax,dword ptr [eax+5C4]
 00538D48    mov         word ptr [eax+4C],0
 00538D4E    push        53C5F4
 00538D53    push        15F90
 00538D58    push        113
 00538D5D    mov         eax,[0055B4C8];^Application:TApplication
 00538D62    mov         eax,dword ptr [eax]
 00538D64    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 00538D67    push        eax
 00538D68    call        user32.SetTimer
 00538D6D    pop         ecx
 00538D6E    pop         ecx
 00538D6F    pop         ebp
 00538D70    ret
end;*}

//00538E34
procedure TMainForm.Button5Click(Sender:TObject);
begin
{*
 00538E34    push        ebp
 00538E35    mov         ebp,esp
 00538E37    add         esp,0FFFFFFF4
 00538E3A    xor         ecx,ecx
 00538E3C    mov         dword ptr [ebp-0C],ecx
 00538E3F    mov         dword ptr [ebp-8],edx
 00538E42    mov         dword ptr [ebp-4],eax
 00538E45    xor         eax,eax
 00538E47    push        ebp
 00538E48    push        538E91
 00538E4D    push        dword ptr fs:[eax]
 00538E50    mov         dword ptr fs:[eax],esp
 00538E53    lea         edx,[ebp-0C]
 00538E56    mov         eax,dword ptr [ebp-4]
 00538E59    mov         eax,dword ptr [eax+5D8];TMainForm.?f5D8:TInventory
 00538E5F    call        00526944
 00538E64    mov         edx,dword ptr [ebp-0C]
 00538E67    mov         eax,dword ptr [ebp-4]
 00538E6A    mov         eax,dword ptr [eax+350];TMainForm.Memo4:TMemo
 00538E70    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 00538E76    mov         ecx,dword ptr [eax]
 00538E78    call        dword ptr [ecx+2C];TStrings.sub_0047AEF0
 00538E7B    xor         eax,eax
 00538E7D    pop         edx
 00538E7E    pop         ecx
 00538E7F    pop         ecx
 00538E80    mov         dword ptr fs:[eax],edx
 00538E83    push        538E98
 00538E88    lea         eax,[ebp-0C]
 00538E8B    call        @LStrClr
 00538E90    ret
>00538E91    jmp         @HandleFinally
>00538E96    jmp         00538E88
 00538E98    mov         esp,ebp
 00538E9A    pop         ebp
 00538E9B    ret
*}
end;

//00538E9C
procedure TMainForm.Button10Click(Sender:TObject);
begin
{*
 00538E9C    push        ebp
 00538E9D    mov         ebp,esp
 00538E9F    add         esp,0FFFFFFF4
 00538EA2    xor         ecx,ecx
 00538EA4    mov         dword ptr [ebp-0C],ecx
 00538EA7    mov         dword ptr [ebp-8],edx
 00538EAA    mov         dword ptr [ebp-4],eax
 00538EAD    xor         eax,eax
 00538EAF    push        ebp
 00538EB0    push        538EF9
 00538EB5    push        dword ptr fs:[eax]
 00538EB8    mov         dword ptr fs:[eax],esp
 00538EBB    lea         edx,[ebp-0C]
 00538EBE    mov         eax,dword ptr [ebp-4]
 00538EC1    mov         eax,dword ptr [eax+600];TMainForm.?f600:TShopManager
 00538EC7    call        00529354
 00538ECC    mov         edx,dword ptr [ebp-0C]
 00538ECF    mov         eax,dword ptr [ebp-4]
 00538ED2    mov         eax,dword ptr [eax+350];TMainForm.Memo4:TMemo
 00538ED8    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 00538EDE    mov         ecx,dword ptr [eax]
 00538EE0    call        dword ptr [ecx+2C];TStrings.sub_0047AEF0
 00538EE3    xor         eax,eax
 00538EE5    pop         edx
 00538EE6    pop         ecx
 00538EE7    pop         ecx
 00538EE8    mov         dword ptr fs:[eax],edx
 00538EEB    push        538F00
 00538EF0    lea         eax,[ebp-0C]
 00538EF3    call        @LStrClr
 00538EF8    ret
>00538EF9    jmp         @HandleFinally
>00538EFE    jmp         00538EF0
 00538F00    mov         esp,ebp
 00538F02    pop         ebp
 00538F03    ret
*}
end;

//00538F04
procedure TMainForm.Button12Click(Sender:TObject);
begin
{*
 00538F04    push        ebp
 00538F05    mov         ebp,esp
 00538F07    add         esp,0FFFFFFF8
 00538F0A    mov         dword ptr [ebp-8],edx
 00538F0D    mov         dword ptr [ebp-4],eax
 00538F10    pop         ecx
 00538F11    pop         ecx
 00538F12    pop         ebp
 00538F13    ret
*}
end;

//00538F14
procedure TMainForm.Button13Click(Sender:TObject);
begin
{*
 00538F14    push        ebp
 00538F15    mov         ebp,esp
 00538F17    add         esp,0FFFFFFD8
 00538F1A    xor         ecx,ecx
 00538F1C    mov         dword ptr [ebp-28],ecx
 00538F1F    mov         dword ptr [ebp-24],ecx
 00538F22    mov         dword ptr [ebp-20],edx
 00538F25    mov         dword ptr [ebp-4],eax
 00538F28    xor         eax,eax
 00538F2A    push        ebp
 00538F2B    push        539083
 00538F30    push        dword ptr fs:[eax]
 00538F33    mov         dword ptr fs:[eax],esp
 00538F36    lea         edx,[ebp-24]
 00538F39    mov         eax,dword ptr [ebp-4]
 00538F3C    mov         eax,dword ptr [eax+370];TMainForm.Edit1:TEdit
 00538F42    call        TControl.GetText
 00538F47    mov         eax,dword ptr [ebp-24]
 00538F4A    call        StrToInt
 00538F4F    shr         eax,0D
 00538F52    mov         dword ptr [ebp-8],eax
 00538F55    lea         edx,[ebp-28]
 00538F58    mov         eax,dword ptr [ebp-4]
 00538F5B    mov         eax,dword ptr [eax+374];TMainForm.Edit2:TEdit
 00538F61    call        TControl.GetText
 00538F66    mov         eax,dword ptr [ebp-28]
 00538F69    call        StrToInt
 00538F6E    shr         eax,0D
 00538F71    mov         dword ptr [ebp-0C],eax
 00538F74    mov         cl,byte ptr [ebp-0C]
 00538F77    mov         dl,byte ptr [ebp-8]
 00538F7A    mov         eax,dword ptr [ebp-4]
 00538F7D    mov         eax,dword ptr [eax+604];TMainForm.?f604:TMapManager
 00538F83    call        00529B48
 00538F88    mov         cl,byte ptr [ebp-0C]
 00538F8B    mov         dl,byte ptr [ebp-8]
 00538F8E    mov         eax,dword ptr [ebp-4]
 00538F91    mov         eax,dword ptr [eax+604];TMainForm.?f604:TMapManager
 00538F97    call        00529ABC
 00538F9C    mov         dword ptr [ebp-10],eax
 00538F9F    mov         eax,dword ptr [ebp-4]
 00538FA2    mov         eax,dword ptr [eax+364];TMainForm.Image1:TImage
 00538FA8    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00538FAE    call        0048A950
 00538FB3    or          edx,0FFFFFFFF
 00538FB6    mov         ecx,dword ptr [eax]
 00538FB8    call        dword ptr [ecx+48]
 00538FBB    mov         eax,dword ptr [ebp-4]
 00538FBE    mov         eax,dword ptr [eax+364];TMainForm.Image1:TImage
 00538FC4    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00538FCA    call        0048A950
 00538FCF    mov         edx,100
 00538FD4    mov         ecx,dword ptr [eax]
 00538FD6    call        dword ptr [ecx+34]
 00538FD9    mov         eax,dword ptr [ebp-4]
 00538FDC    mov         eax,dword ptr [eax+364];TMainForm.Image1:TImage
 00538FE2    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00538FE8    call        0048A950
 00538FED    mov         edx,100
 00538FF2    mov         ecx,dword ptr [eax]
 00538FF4    call        dword ptr [ecx+40]
 00538FF7    xor         eax,eax
 00538FF9    mov         dword ptr [ebp-14],eax
 00538FFC    xor         eax,eax
 00538FFE    mov         dword ptr [ebp-18],eax
 00539001    mov         eax,dword ptr [ebp-4]
 00539004    mov         eax,dword ptr [eax+364];TMainForm.Image1:TImage
 0053900A    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 00539010    call        0048A950
 00539015    call        TBitmap.GetCanvas
 0053901A    mov         dword ptr [ebp-1C],eax
 0053901D    mov         eax,dword ptr [ebp-14]
 00539020    mov         edx,eax
 00539022    shl         eax,8
 00539025    add         eax,edx
 00539027    mov         edx,dword ptr [ebp-10]
 0053902A    lea         eax,[edx+eax*2]
 0053902D    mov         edx,dword ptr [ebp-18]
 00539030    movzx       eax,word ptr [eax+edx*2+8003C]
 00539038    mov         ecx,7
 0053903D    xor         edx,edx
 0053903F    div         eax,ecx
 00539041    push        eax
 00539042    mov         ecx,dword ptr [ebp-18]
 00539045    mov         edx,dword ptr [ebp-14]
 00539048    mov         eax,dword ptr [ebp-1C]
 0053904B    call        0048841C
 00539050    inc         dword ptr [ebp-18]
 00539053    cmp         dword ptr [ebp-18],100
>0053905A    jne         00539001
 0053905C    inc         dword ptr [ebp-14]
 0053905F    cmp         dword ptr [ebp-14],100
>00539066    jne         00538FFC
 00539068    xor         eax,eax
 0053906A    pop         edx
 0053906B    pop         ecx
 0053906C    pop         ecx
 0053906D    mov         dword ptr fs:[eax],edx
 00539070    push        53908A
 00539075    lea         eax,[ebp-28]
 00539078    mov         edx,2
 0053907D    call        @LStrArrayClr
 00539082    ret
>00539083    jmp         @HandleFinally
>00539088    jmp         00539075
 0053908A    mov         esp,ebp
 0053908C    pop         ebp
 0053908D    ret
*}
end;

//00539090
{*function sub_00539090(?:?; ?:?; ?:?; ?:?):?;
begin
 00539090    push        ebp
 00539091    mov         ebp,esp
 00539093    add         esp,0FFFFFFF0
 00539096    mov         dword ptr [ebp-0C],ecx
 00539099    mov         dword ptr [ebp-8],edx
 0053909C    mov         dword ptr [ebp-4],eax
 0053909F    mov         eax,dword ptr [ebp+8]
 005390A2    mov         eax,dword ptr [eax-4]
 005390A5    mov         eax,dword ptr [eax+604]
 005390AB    mov         ecx,dword ptr [ebp-0C]
 005390AE    mov         edx,dword ptr [ebp-8]
 005390B1    call        00529970
 005390B6    sub         eax,dword ptr [ebp-4]
 005390B9    mov         dword ptr [ebp-10],eax
 005390BC    mov         eax,dword ptr [ebp-10]
 005390BF    mov         esp,ebp
 005390C1    pop         ebp
 005390C2    ret
end;*}

//005390C4
{*procedure TMainForm.TimerWalkerTimer(?:?);
begin
 005390C4    push        ebp
 005390C5    mov         ebp,esp
 005390C7    add         esp,0FFFFFF94
 005390CA    push        esi
 005390CB    push        edi
 005390CC    xor         ecx,ecx
 005390CE    mov         dword ptr [ebp-5C],ecx
 005390D1    mov         dword ptr [ebp-8],ecx
 005390D4    mov         dword ptr [ebp-34],edx
 005390D7    mov         dword ptr [ebp-4],eax
 005390DA    xor         eax,eax
 005390DC    push        ebp
 005390DD    push        5392F4
 005390E2    push        dword ptr fs:[eax]
 005390E5    mov         dword ptr fs:[eax],esp
 005390E8    mov         eax,dword ptr [ebp-4]
 005390EB    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 005390F1    mov         eax,dword ptr [eax+40];TPlayers.?f40:dword
 005390F4    lea         esi,[eax+0C]
 005390F7    lea         edi,[ebp-44]
 005390FA    movs        dword ptr [edi],dword ptr [esi]
 005390FB    movs        dword ptr [edi],dword ptr [esi]
 005390FC    movs        dword ptr [edi],dword ptr [esi]
 005390FD    movs        dword ptr [edi],dword ptr [esi]
 005390FE    mov         dword ptr [ebp-50],4FB2
 00539105    mov         dword ptr [ebp-4C],0C7A7
 0053910C    mov         dword ptr [ebp-48],7527
 00539113    lea         edx,[ebp-54]
 00539116    lea         eax,[ebp-44]
 00539119    call        0051F5FC
 0053911E    fstp        tbyte ptr [ebp-18]
 00539121    wait
 00539122    fld         tbyte ptr [ebp-18]
 00539125    fcomp       dword ptr ds:[539304];11:Single
 0053912B    fnstsw      al
 0053912D    sahf
>0053912E    jbe         00539202
 00539134    fld         tbyte ptr [ebp-18]
 00539137    fdivr       dword ptr ds:[539304];11:Single
 0053913D    fstp        tbyte ptr [ebp-28]
 00539140    wait
 00539141    mov         eax,dword ptr [ebp-50]
 00539144    sub         eax,dword ptr [ebp-40]
 00539147    mov         dword ptr [ebp-58],eax
 0053914A    fild        dword ptr [ebp-58]
 0053914D    fld         tbyte ptr [ebp-28]
 00539150    fmulp       st(1),st
 00539152    call        @ROUND
 00539157    mov         byte ptr [ebp-29],al
 0053915A    mov         eax,dword ptr [ebp-4C]
 0053915D    sub         eax,dword ptr [ebp-3C]
 00539160    mov         dword ptr [ebp-58],eax
 00539163    fild        dword ptr [ebp-58]
 00539166    fld         tbyte ptr [ebp-28]
 00539169    fmulp       st(1),st
 0053916B    call        @ROUND
 00539170    mov         byte ptr [ebp-2A],al
 00539173    push        ebp
 00539174    movsx       ecx,byte ptr [ebp-2A]
 00539178    add         ecx,dword ptr [ebp-3C]
 0053917B    movsx       edx,byte ptr [ebp-29]
 0053917F    add         edx,dword ptr [ebp-40]
 00539182    mov         eax,dword ptr [ebp-38]
 00539185    call        00539090
 0053918A    pop         ecx
 0053918B    mov         dword ptr [ebp-30],eax
 0053918E    cmp         dword ptr [ebp-30],0FFFFFFBF
>00539192    jl          0053919A
 00539194    cmp         dword ptr [ebp-30],41
>00539198    jle         0053919F
 0053919A    xor         eax,eax
 0053919C    mov         dword ptr [ebp-30],eax
 0053919F    lea         eax,[ebp-5C]
 005391A2    push        eax
 005391A3    mov         eax,dword ptr [ebp-4]
 005391A6    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 005391AC    mov         eax,dword ptr [eax+40];TPlayers.?f40:dword
 005391AF    mov         eax,dword ptr [eax+18]
 005391B2    mov         dword ptr [ebp-6C],eax
 005391B5    mov         byte ptr [ebp-68],0
 005391B9    mov         eax,dword ptr [ebp-30]
 005391BC    mov         dword ptr [ebp-64],eax
 005391BF    mov         byte ptr [ebp-60],0
 005391C3    lea         edx,[ebp-6C]
 005391C6    mov         ecx,1
 005391CB    mov         eax,539310;'Atm hero Z: %d, DeltaZ: %d'
 005391D0    call        Format
 005391D5    mov         edx,dword ptr [ebp-5C]
 005391D8    mov         eax,dword ptr [ebp-4]
 005391DB    mov         eax,dword ptr [eax+378];TMainForm.Memo3:TMemo
 005391E1    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 005391E7    mov         ecx,dword ptr [eax]
 005391E9    call        dword ptr [ecx+38];TStrings.sub_0047A060
 005391EC    push        0
 005391EE    lea         eax,[ebp-8]
 005391F1    push        eax
 005391F2    mov         cl,byte ptr [ebp-30]
 005391F5    mov         dl,byte ptr [ebp-2A]
 005391F8    mov         al,byte ptr [ebp-29]
 005391FB    call        00521568
>00539200    jmp         0053927D
 00539202    mov         al,byte ptr [ebp-50]
 00539205    sub         al,byte ptr [ebp-40]
 00539208    mov         byte ptr [ebp-29],al
 0053920B    mov         al,byte ptr [ebp-4C]
 0053920E    sub         al,byte ptr [ebp-3C]
 00539211    mov         byte ptr [ebp-2A],al
 00539214    push        ebp
 00539215    movsx       ecx,byte ptr [ebp-2A]
 00539219    add         ecx,dword ptr [ebp-3C]
 0053921C    movsx       edx,byte ptr [ebp-29]
 00539220    add         edx,dword ptr [ebp-40]
 00539223    mov         eax,dword ptr [ebp-38]
 00539226    call        00539090
 0053922B    pop         ecx
 0053922C    mov         dword ptr [ebp-30],eax
 0053922F    cmp         dword ptr [ebp-30],0FFFFFFBF
>00539233    jl          0053923B
 00539235    cmp         dword ptr [ebp-30],41
>00539239    jle         00539240
 0053923B    xor         eax,eax
 0053923D    mov         dword ptr [ebp-30],eax
 00539240    push        1
 00539242    lea         eax,[ebp-8]
 00539245    push        eax
 00539246    mov         cl,byte ptr [ebp-30]
 00539249    mov         dl,byte ptr [ebp-2A]
 0053924C    mov         al,byte ptr [ebp-29]
 0053924F    call        00521568
 00539254    mov         eax,dword ptr [ebp-4]
 00539257    mov         eax,dword ptr [eax+378];TMainForm.Memo3:TMemo
 0053925D    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 00539263    mov         edx,539334;'done'
 00539268    mov         ecx,dword ptr [eax]
 0053926A    call        dword ptr [ecx+38];TStrings.sub_0047A060
 0053926D    mov         eax,dword ptr [ebp-4]
 00539270    mov         eax,dword ptr [eax+510];TMainForm.TimerWalker:TTimer
 00539276    xor         edx,edx
 00539278    call        TTimer.SetEnabled
 0053927D    movsx       eax,byte ptr [ebp-29]
 00539281    mov         edx,dword ptr [ebp-4]
 00539284    mov         edx,dword ptr [edx+5C4];TMainForm.?f5C4:TPlayers
 0053928A    mov         edx,dword ptr [edx+40];TPlayers.?f40:dword
 0053928D    add         dword ptr [edx+10],eax
 00539290    movsx       eax,byte ptr [ebp-2A]
 00539294    mov         edx,dword ptr [ebp-4]
 00539297    mov         edx,dword ptr [edx+5C4];TMainForm.?f5C4:TPlayers
 0053929D    mov         edx,dword ptr [edx+40];TPlayers.?f40:dword
 005392A0    add         dword ptr [edx+14],eax
 005392A3    mov         eax,dword ptr [ebp-4]
 005392A6    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 005392AC    mov         eax,dword ptr [eax+40];TPlayers.?f40:dword
 005392AF    mov         edx,dword ptr [ebp-30]
 005392B2    add         dword ptr [eax+18],edx
 005392B5    mov         eax,dword ptr [ebp-8]
 005392B8    call        @LStrLen
 005392BD    mov         ecx,eax
 005392BF    mov         edx,dword ptr [ebp-8]
 005392C2    mov         eax,dword ptr [ebp-4]
 005392C5    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 005392CB    call        0051FDFC
 005392D0    xor         eax,eax
 005392D2    pop         edx
 005392D3    pop         ecx
 005392D4    pop         ecx
 005392D5    mov         dword ptr fs:[eax],edx
 005392D8    push        5392FB
 005392DD    lea         eax,[ebp-5C]
 005392E0    call        @LStrClr
 005392E5    lea         eax,[ebp-8]
 005392E8    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 005392EE    call        @DynArrayClear
 005392F3    ret
>005392F4    jmp         @HandleFinally
>005392F9    jmp         005392DD
 005392FB    pop         edi
 005392FC    pop         esi
 005392FD    mov         esp,ebp
 005392FF    pop         ebp
 00539300    ret
end;*}

//0053933C
procedure TMainForm.Button15Click(Sender:TObject);
begin
{*
 0053933C    push        ebp
 0053933D    mov         ebp,esp
 0053933F    add         esp,0FFFFFFF8
 00539342    mov         dword ptr [ebp-8],edx
 00539345    mov         dword ptr [ebp-4],eax
 00539348    mov         dl,1
 0053934A    mov         eax,dword ptr [ebp-4]
 0053934D    mov         eax,dword ptr [eax+510];TMainForm.TimerWalker:TTimer
 00539353    call        TTimer.SetEnabled
 00539358    pop         ecx
 00539359    pop         ecx
 0053935A    pop         ebp
 0053935B    ret
*}
end;

//0053935C
procedure TMainForm.Button4Click(Sender:TObject);
begin
{*
 0053935C    push        ebp
 0053935D    mov         ebp,esp
 0053935F    add         esp,0FFFFFFF4
 00539362    xor         ecx,ecx
 00539364    mov         dword ptr [ebp-0C],ecx
 00539367    mov         dword ptr [ebp-8],edx
 0053936A    mov         dword ptr [ebp-4],eax
 0053936D    xor         eax,eax
 0053936F    push        ebp
 00539370    push        5393BF
 00539375    push        dword ptr fs:[eax]
 00539378    mov         dword ptr fs:[eax],esp
 0053937B    lea         edx,[ebp-0C]
 0053937E    mov         eax,dword ptr [ebp-4]
 00539381    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 00539387    mov         eax,dword ptr [eax+88];TPlayers.?f88:dword
 0053938D    call        00535B40
 00539392    mov         edx,dword ptr [ebp-0C]
 00539395    mov         eax,dword ptr [ebp-4]
 00539398    mov         eax,dword ptr [eax+35C];TMainForm.Memo1:TMemo
 0053939E    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 005393A4    mov         ecx,dword ptr [eax]
 005393A6    call        dword ptr [ecx+2C];TStrings.sub_0047AEF0
 005393A9    xor         eax,eax
 005393AB    pop         edx
 005393AC    pop         ecx
 005393AD    pop         ecx
 005393AE    mov         dword ptr fs:[eax],edx
 005393B1    push        5393C6
 005393B6    lea         eax,[ebp-0C]
 005393B9    call        @LStrClr
 005393BE    ret
>005393BF    jmp         @HandleFinally
>005393C4    jmp         005393B6
 005393C6    mov         esp,ebp
 005393C8    pop         ebp
 005393C9    ret
*}
end;

//005393CC
procedure TMainForm.Button18Click(Sender:TObject);
begin
{*
 005393CC    push        ebp
 005393CD    mov         ebp,esp
 005393CF    add         esp,0FFFFFFE4
 005393D2    push        esi
 005393D3    push        edi
 005393D4    xor         ecx,ecx
 005393D6    mov         dword ptr [ebp-1C],ecx
 005393D9    mov         dword ptr [ebp-8],edx
 005393DC    mov         dword ptr [ebp-4],eax
 005393DF    xor         eax,eax
 005393E1    push        ebp
 005393E2    push        539441
 005393E7    push        dword ptr fs:[eax]
 005393EA    mov         dword ptr fs:[eax],esp
 005393ED    mov         eax,dword ptr [ebp-4]
 005393F0    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 005393F6    mov         eax,dword ptr [eax+40];TPlayers.?f40:dword
 005393F9    lea         esi,[eax+0C]
 005393FC    lea         edi,[ebp-18]
 005393FF    movs        dword ptr [edi],dword ptr [esi]
 00539400    movs        dword ptr [edi],dword ptr [esi]
 00539401    movs        dword ptr [edi],dword ptr [esi]
 00539402    movs        dword ptr [edi],dword ptr [esi]
 00539403    mov         ecx,dword ptr [ebp-10]
 00539406    mov         edx,dword ptr [ebp-14]
 00539409    mov         eax,dword ptr [ebp-4]
 0053940C    mov         eax,dword ptr [eax+604];TMainForm.?f604:TMapManager
 00539412    call        00529970
 00539417    xor         edx,edx
 00539419    push        edx
 0053941A    push        eax
 0053941B    lea         eax,[ebp-1C]
 0053941E    call        IntToStr
 00539423    mov         eax,dword ptr [ebp-1C]
 00539426    call        00495128
 0053942B    xor         eax,eax
 0053942D    pop         edx
 0053942E    pop         ecx
 0053942F    pop         ecx
 00539430    mov         dword ptr fs:[eax],edx
 00539433    push        539448
 00539438    lea         eax,[ebp-1C]
 0053943B    call        @LStrClr
 00539440    ret
>00539441    jmp         @HandleFinally
>00539446    jmp         00539438
 00539448    pop         edi
 00539449    pop         esi
 0053944A    mov         esp,ebp
 0053944C    pop         ebp
 0053944D    ret
*}
end;

//00539450
procedure TMainForm.Button2Click(Sender:TObject);
begin
{*
 00539450    push        ebp
 00539451    mov         ebp,esp
 00539453    add         esp,0FFFFFFF8
 00539456    mov         dword ptr [ebp-8],edx
 00539459    mov         dword ptr [ebp-4],eax
 0053945C    mov         eax,dword ptr [ebp-4]
 0053945F    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 00539465    push        eax
 00539466    mov         eax,dword ptr [ebp-4]
 00539469    mov         eax,dword ptr [eax+604];TMainForm.?f604:TMapManager
 0053946F    push        eax
 00539470    mov         eax,dword ptr [ebp-4]
 00539473    lea         ecx,[eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 00539479    mov         dl,1
 0053947B    mov         eax,[0052A100];TAutoWalk
 00539480    call        TAutoWalk.Create;TAutoWalk.Create
 00539485    pop         ecx
 00539486    pop         ecx
 00539487    pop         ebp
 00539488    ret
*}
end;

//0053948C
procedure TMainForm.mstatexClick(Sender:TObject);
begin
{*
 0053948C    push        ebp
 0053948D    mov         ebp,esp
 0053948F    add         esp,0FFFFFFF0
 00539492    xor         ecx,ecx
 00539494    mov         dword ptr [ebp-10],ecx
 00539497    mov         dword ptr [ebp-8],ecx
 0053949A    mov         dword ptr [ebp-0C],edx
 0053949D    mov         dword ptr [ebp-4],eax
 005394A0    xor         eax,eax
 005394A2    push        ebp
 005394A3    push        539521
 005394A8    push        dword ptr fs:[eax]
 005394AB    mov         dword ptr fs:[eax],esp
 005394AE    lea         eax,[ebp-8]
 005394B1    push        eax
 005394B2    lea         edx,[ebp-10]
 005394B5    mov         eax,dword ptr [ebp-4]
 005394B8    mov         eax,dword ptr [eax+530];TMainForm.EditQ:TEdit
 005394BE    call        TControl.GetText
 005394C3    mov         eax,dword ptr [ebp-10]
 005394C6    call        StrToInt
 005394CB    mov         ecx,eax
 005394CD    mov         eax,dword ptr [ebp-4]
 005394D0    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 005394D6    mov         eax,dword ptr [eax+40];TPlayers.?f40:dword
 005394D9    mov         eax,dword ptr [eax]
 005394DB    xor         edx,edx
 005394DD    call        00520EC4
 005394E2    mov         eax,dword ptr [ebp-8]
 005394E5    call        @LStrLen
 005394EA    mov         ecx,eax
 005394EC    mov         edx,dword ptr [ebp-8]
 005394EF    mov         eax,dword ptr [ebp-4]
 005394F2    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 005394F8    call        0051FF58
 005394FD    xor         eax,eax
 005394FF    pop         edx
 00539500    pop         ecx
 00539501    pop         ecx
 00539502    mov         dword ptr fs:[eax],edx
 00539505    push        539528
 0053950A    lea         eax,[ebp-10]
 0053950D    call        @LStrClr
 00539512    lea         eax,[ebp-8]
 00539515    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0053951B    call        @DynArrayClear
 00539520    ret
>00539521    jmp         @HandleFinally
>00539526    jmp         0053950A
 00539528    mov         esp,ebp
 0053952A    pop         ebp
 0053952B    ret
*}
end;

//0053952C
procedure TMainForm.BtnQuestsClick(Sender:TObject);
begin
{*
 0053952C    push        ebp
 0053952D    mov         ebp,esp
 0053952F    add         esp,0FFFFFFF4
 00539532    xor         ecx,ecx
 00539534    mov         dword ptr [ebp-0C],ecx
 00539537    mov         dword ptr [ebp-8],edx
 0053953A    mov         dword ptr [ebp-4],eax
 0053953D    xor         eax,eax
 0053953F    push        ebp
 00539540    push        53958F
 00539545    push        dword ptr fs:[eax]
 00539548    mov         dword ptr fs:[eax],esp
 0053954B    lea         edx,[ebp-0C]
 0053954E    mov         eax,dword ptr [ebp-4]
 00539551    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 00539557    mov         eax,dword ptr [eax+8C];TPlayers.?f8C:dword
 0053955D    call        00535D70
 00539562    mov         edx,dword ptr [ebp-0C]
 00539565    mov         eax,dword ptr [ebp-4]
 00539568    mov         eax,dword ptr [eax+350];TMainForm.Memo4:TMemo
 0053956E    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 00539574    mov         ecx,dword ptr [eax]
 00539576    call        dword ptr [ecx+38];TStrings.sub_0047A060
 00539579    xor         eax,eax
 0053957B    pop         edx
 0053957C    pop         ecx
 0053957D    pop         ecx
 0053957E    mov         dword ptr fs:[eax],edx
 00539581    push        539596
 00539586    lea         eax,[ebp-0C]
 00539589    call        @LStrClr
 0053958E    ret
>0053958F    jmp         @HandleFinally
>00539594    jmp         00539586
 00539596    mov         esp,ebp
 00539598    pop         ebp
 00539599    ret
*}
end;

//0053959C
procedure TMainForm.Button7Click(Sender:TObject);
begin
{*
 0053959C    push        ebp
 0053959D    mov         ebp,esp
 0053959F    add         esp,0FFFFFFF8
 005395A2    mov         dword ptr [ebp-8],edx
 005395A5    mov         dword ptr [ebp-4],eax
 005395A8    mov         eax,dword ptr [ebp-4]
 005395AB    add         eax,5B8;TMainForm.?f5B8:TPacketAnalyser
 005395B0    push        eax
 005395B1    mov         eax,dword ptr [ebp-4]
 005395B4    lea         ecx,[eax+5C4];TMainForm.?f5C4:TPlayers
 005395BA    mov         dl,1
 005395BC    mov         eax,[0052A548];TAutoBuff
 005395C1    call        TAutoBuff.Create;TAutoBuff.Create
 005395C6    mov         edx,dword ptr [ebp-4]
 005395C9    mov         dword ptr [edx+5F8],eax;TMainForm.?f5F8:TAutoBuff
 005395CF    mov         eax,dword ptr [ebp-4]
 005395D2    mov         eax,dword ptr [eax+5F8];TMainForm.?f5F8:TAutoBuff
 005395D8    mov         byte ptr [eax+8C],1;TAutoBuff.?f8C:byte
 005395DF    mov         eax,dword ptr [ebp-4]
 005395E2    mov         eax,dword ptr [eax+5F8];TMainForm.?f5F8:TAutoBuff
 005395E8    call        00482E08
 005395ED    pop         ecx
 005395EE    pop         ecx
 005395EF    pop         ebp
 005395F0    ret
*}
end;

//0053997C
procedure TMainForm.TabCureShow(Sender:TObject);
begin
{*
 0053997C    push        ebp
 0053997D    mov         ebp,esp
 0053997F    add         esp,0FFFFFFF8
 00539982    mov         dword ptr [ebp-8],edx
 00539985    mov         dword ptr [ebp-4],eax
 00539988    mov         eax,dword ptr [ebp-4]
 0053998B    mov         edx,dword ptr [eax+308];TMainForm.TabCure:TTabSheet
 00539991    mov         eax,dword ptr [ebp-4]
 00539994    mov         eax,dword ptr [eax+41C];TMainForm.PanelPick:TPanel
 0053999A    mov         ecx,dword ptr [eax]
 0053999C    call        dword ptr [ecx+68];TPanel.sub_004CAD7C
 0053999F    pop         ecx
 005399A0    pop         ecx
 005399A1    pop         ebp
 005399A2    ret
*}
end;

//005399A4
procedure TMainForm.TabThiefAttackShow(Sender:TObject);
begin
{*
 005399A4    push        ebp
 005399A5    mov         ebp,esp
 005399A7    add         esp,0FFFFFFF8
 005399AA    mov         dword ptr [ebp-8],edx
 005399AD    mov         dword ptr [ebp-4],eax
 005399B0    mov         eax,dword ptr [ebp-4]
 005399B3    mov         edx,dword ptr [eax+394];TMainForm.TabThiefAttack:TTabSheet
 005399B9    mov         eax,dword ptr [ebp-4]
 005399BC    mov         eax,dword ptr [eax+41C];TMainForm.PanelPick:TPanel
 005399C2    mov         ecx,dword ptr [eax]
 005399C4    call        dword ptr [ecx+68];TPanel.sub_004CAD7C
 005399C7    pop         ecx
 005399C8    pop         ecx
 005399C9    pop         ebp
 005399CA    ret
*}
end;

//005399CC
procedure TMainForm.TabAutoSplashShow(Sender:TObject);
begin
{*
 005399CC    push        ebp
 005399CD    mov         ebp,esp
 005399CF    add         esp,0FFFFFFF8
 005399D2    mov         dword ptr [ebp-8],edx
 005399D5    mov         dword ptr [ebp-4],eax
 005399D8    mov         eax,dword ptr [ebp-4]
 005399DB    mov         edx,dword ptr [eax+324];TMainForm.TabAutoSplash:TTabSheet
 005399E1    mov         eax,dword ptr [ebp-4]
 005399E4    mov         eax,dword ptr [eax+41C];TMainForm.PanelPick:TPanel
 005399EA    mov         ecx,dword ptr [eax]
 005399EC    call        dword ptr [ecx+68];TPanel.sub_004CAD7C
 005399EF    pop         ecx
 005399F0    pop         ecx
 005399F1    pop         ebp
 005399F2    ret
*}
end;

//005399F4
procedure TMainForm.TabStallShow(Sender:TObject);
begin
{*
 005399F4    push        ebp
 005399F5    mov         ebp,esp
 005399F7    add         esp,0FFFFFFF8
 005399FA    mov         dword ptr [ebp-8],edx
 005399FD    mov         dword ptr [ebp-4],eax
 00539A00    mov         eax,dword ptr [ebp-4]
 00539A03    mov         edx,dword ptr [eax+44C];TMainForm.TabStall:TTabSheet
 00539A09    mov         eax,dword ptr [ebp-4]
 00539A0C    mov         eax,dword ptr [eax+41C];TMainForm.PanelPick:TPanel
 00539A12    mov         ecx,dword ptr [eax]
 00539A14    call        dword ptr [ecx+68];TPanel.sub_004CAD7C
 00539A17    pop         ecx
 00539A18    pop         ecx
 00539A19    pop         ebp
 00539A1A    ret
*}
end;

//00539A1C
{*procedure sub_00539A1C(?:TMainForm; ?:?; ?:?; ?:?; ?:?);
begin
 00539A1C    push        ebp
 00539A1D    mov         ebp,esp
 00539A1F    add         esp,0FFFFFFEC
 00539A22    push        ebx
 00539A23    push        esi
 00539A24    push        edi
 00539A25    mov         ebx,dword ptr [ebp+0C]
 00539A28    mov         esi,dword ptr [ebp+8]
 00539A2B    test        esi,esi
>00539A2D    js          00539A39
 00539A2F    shr         esi,2
 00539A32    mov         edi,dword ptr [ebx+esi*4]
 00539A35    dec         esi
 00539A36    push        edi
>00539A37    jns         00539A32
 00539A39    mov         dword ptr [ebp+0C],esp
 00539A3C    mov         ebx,ecx
 00539A3E    test        ebx,ebx
>00539A40    js          00539A4C
 00539A42    shr         ebx,2
 00539A45    mov         esi,dword ptr [edx+ebx*4]
 00539A48    dec         ebx
 00539A49    push        esi
>00539A4A    jns         00539A45
 00539A4C    mov         edx,esp
 00539A4E    mov         dword ptr [ebp-0C],ecx
 00539A51    mov         dword ptr [ebp-8],edx
 00539A54    mov         dword ptr [ebp-4],eax
 00539A57    mov         eax,dword ptr [ebp-0C]
 00539A5A    test        eax,eax
>00539A5C    jl          00539A90
 00539A5E    inc         eax
 00539A5F    mov         dword ptr [ebp-14],eax
 00539A62    mov         dword ptr [ebp-10],0
 00539A69    mov         eax,dword ptr [ebp-8]
 00539A6C    mov         edx,dword ptr [ebp-10]
 00539A6F    movzx       edx,byte ptr [eax+edx]
 00539A73    mov         eax,dword ptr [ebp-4]
 00539A76    mov         eax,dword ptr [eax+300];TMainForm.PageControlMain:TPageControl
 00539A7C    call        004AA2C4
 00539A81    mov         dl,1
 00539A83    call        TTabSheet.SetTabVisible
 00539A88    inc         dword ptr [ebp-10]
 00539A8B    dec         dword ptr [ebp-14]
>00539A8E    jne         00539A69
 00539A90    mov         eax,dword ptr [ebp+8]
 00539A93    test        eax,eax
>00539A95    jl          00539AC9
 00539A97    inc         eax
 00539A98    mov         dword ptr [ebp-14],eax
 00539A9B    mov         dword ptr [ebp-10],0
 00539AA2    mov         eax,dword ptr [ebp+0C]
 00539AA5    mov         edx,dword ptr [ebp-10]
 00539AA8    movzx       edx,byte ptr [eax+edx]
 00539AAC    mov         eax,dword ptr [ebp-4]
 00539AAF    mov         eax,dword ptr [eax+300];TMainForm.PageControlMain:TPageControl
 00539AB5    call        004AA2C4
 00539ABA    xor         edx,edx
 00539ABC    call        TTabSheet.SetTabVisible
 00539AC1    inc         dword ptr [ebp-10]
 00539AC4    dec         dword ptr [ebp-14]
>00539AC7    jne         00539AA2
 00539AC9    mov         edi,dword ptr [ebp-20]
 00539ACC    mov         esi,dword ptr [ebp-1C]
 00539ACF    mov         ebx,dword ptr [ebp-18]
 00539AD2    mov         esp,ebp
 00539AD4    pop         ebp
 00539AD5    ret         8
end;*}

//00539BF4
{*procedure sub_00539BF4(?:TMainForm; ?:AnsiString; ?:Integer; ?:?);
begin
 00539BF4    push        ebp
 00539BF5    mov         ebp,esp
 00539BF7    push        ecx
 00539BF8    mov         ecx,4
 00539BFD    push        0
 00539BFF    push        0
 00539C01    dec         ecx
>00539C02    jne         00539BFD
 00539C04    xchg        ecx,dword ptr [ebp-4]
 00539C07    push        ebx
 00539C08    mov         dword ptr [ebp-0C],ecx
 00539C0B    mov         dword ptr [ebp-8],edx
 00539C0E    mov         dword ptr [ebp-4],eax
 00539C11    mov         eax,dword ptr [ebp-8]
 00539C14    call        @LStrAddRef
 00539C19    mov         eax,dword ptr [ebp+8]
 00539C1C    call        @LStrAddRef
 00539C21    xor         eax,eax
 00539C23    push        ebp
 00539C24    push        539D0F
 00539C29    push        dword ptr fs:[eax]
 00539C2C    mov         dword ptr fs:[eax],esp
 00539C2F    push        539D28;'KalBot v '
 00539C34    push        dword ptr [ebp-8]
 00539C37    push        539D3C;' by szopenfx'
 00539C3C    lea         eax,[ebp-10]
 00539C3F    mov         edx,3
 00539C44    call        @LStrCatN
 00539C49    mov         edx,dword ptr [ebp-10]
 00539C4C    mov         eax,dword ptr [ebp-4]
 00539C4F    call        TControl.SetText
 00539C54    cmp         dword ptr [ebp-0C],0
>00539C58    jle         00539C93
 00539C5A    lea         edx,[ebp-18]
 00539C5D    mov         eax,dword ptr [ebp-4]
 00539C60    call        TControl.GetText
 00539C65    push        dword ptr [ebp-18]
 00539C68    push        539D54;' | Port: '
 00539C6D    lea         edx,[ebp-1C]
 00539C70    mov         eax,dword ptr [ebp-0C]
 00539C73    call        IntToStr
 00539C78    push        dword ptr [ebp-1C]
 00539C7B    lea         eax,[ebp-14]
 00539C7E    mov         edx,3
 00539C83    call        @LStrCatN
 00539C88    mov         edx,dword ptr [ebp-14]
 00539C8B    mov         eax,dword ptr [ebp-4]
 00539C8E    call        TControl.SetText
 00539C93    cmp         dword ptr [ebp+8],0
>00539C97    je          00539CC7
 00539C99    lea         edx,[ebp-24]
 00539C9C    mov         eax,dword ptr [ebp-4]
 00539C9F    call        TControl.GetText
 00539CA4    push        dword ptr [ebp-24]
 00539CA7    push        539D68;' | Player: '
 00539CAC    push        dword ptr [ebp+8]
 00539CAF    lea         eax,[ebp-20]
 00539CB2    mov         edx,3
 00539CB7    call        @LStrCatN
 00539CBC    mov         edx,dword ptr [ebp-20]
 00539CBF    mov         eax,dword ptr [ebp-4]
 00539CC2    call        TControl.SetText
 00539CC7    xor         eax,eax
 00539CC9    pop         edx
 00539CCA    pop         ecx
 00539CCB    pop         ecx
 00539CCC    mov         dword ptr fs:[eax],edx
 00539CCF    push        539D16
 00539CD4    lea         eax,[ebp-24]
 00539CD7    mov         edx,2
 00539CDC    call        @LStrArrayClr
 00539CE1    lea         eax,[ebp-1C]
 00539CE4    call        @LStrClr
 00539CE9    lea         eax,[ebp-18]
 00539CEC    mov         edx,2
 00539CF1    call        @LStrArrayClr
 00539CF6    lea         eax,[ebp-10]
 00539CF9    call        @LStrClr
 00539CFE    lea         eax,[ebp-8]
 00539D01    call        @LStrClr
 00539D06    lea         eax,[ebp+8]
 00539D09    call        @LStrClr
 00539D0E    ret
>00539D0F    jmp         @HandleFinally
>00539D14    jmp         00539CD4
 00539D16    pop         ebx
 00539D17    mov         esp,ebp
 00539D19    pop         ebp
 00539D1A    ret         4
end;*}

//00539E14
procedure sub_00539E14(?:TMainForm);
begin
{*
 00539E14    push        ebp
 00539E15    mov         ebp,esp
 00539E17    add         esp,0FFFFFFE8
 00539E1A    xor         edx,edx
 00539E1C    mov         dword ptr [ebp-18],edx
 00539E1F    mov         dword ptr [ebp-14],edx
 00539E22    mov         dword ptr [ebp-8],edx
 00539E25    mov         dword ptr [ebp-4],eax
 00539E28    xor         eax,eax
 00539E2A    push        ebp
 00539E2B    push        539EFE
 00539E30    push        dword ptr fs:[eax]
 00539E33    mov         dword ptr fs:[eax],esp
 00539E36    lea         eax,[ebp-8]
 00539E39    push        eax
 00539E3A    mov         eax,dword ptr [ebp-4]
 00539E3D    mov         eax,dword ptr [eax+2F8];TMainForm.MainSvrClientSock:TClientSocket
 00539E43    mov         eax,dword ptr [eax+38];TClientSocket.FAddress:String
 00539E46    mov         dword ptr [ebp-10],eax
 00539E49    mov         byte ptr [ebp-0C],0B
 00539E4D    lea         edx,[ebp-10]
 00539E50    xor         ecx,ecx
 00539E52    mov         eax,539F14;'Main Server IP: %s'
 00539E57    call        Format
 00539E5C    mov         edx,dword ptr [ebp-8]
 00539E5F    mov         eax,dword ptr [ebp-4]
 00539E62    mov         eax,dword ptr [eax+458];TMainForm.LblMainSvrIP:TLabel
 00539E68    call        TControl.SetText
 00539E6D    lea         eax,[ebp-14]
 00539E70    push        eax
 00539E71    mov         eax,dword ptr [ebp-4]
 00539E74    mov         eax,dword ptr [eax+2F8];TMainForm.MainSvrClientSock:TClientSocket
 00539E7A    mov         eax,dword ptr [eax+34];TClientSocket.FPort:Integer
 00539E7D    mov         dword ptr [ebp-10],eax
 00539E80    mov         byte ptr [ebp-0C],0
 00539E84    lea         edx,[ebp-10]
 00539E87    xor         ecx,ecx
 00539E89    mov         eax,539F30;'Main Server Port: %d'
 00539E8E    call        Format
 00539E93    mov         edx,dword ptr [ebp-14]
 00539E96    mov         eax,dword ptr [ebp-4]
 00539E99    mov         eax,dword ptr [eax+45C];TMainForm.LblMainSvrPort:TLabel
 00539E9F    call        TControl.SetText
 00539EA4    lea         eax,[ebp-18]
 00539EA7    push        eax
 00539EA8    mov         eax,dword ptr [ebp-4]
 00539EAB    mov         eax,dword ptr [eax+2FC];TMainForm.ROAMServSock:TServerSocket
 00539EB1    mov         eax,dword ptr [eax+34];TServerSocket.FPort:Integer
 00539EB4    mov         dword ptr [ebp-10],eax
 00539EB7    mov         byte ptr [ebp-0C],0
 00539EBB    lea         edx,[ebp-10]
 00539EBE    xor         ecx,ecx
 00539EC0    mov         eax,539F50;'Proxy Server Port: %d'
 00539EC5    call        Format
 00539ECA    mov         edx,dword ptr [ebp-18]
 00539ECD    mov         eax,dword ptr [ebp-4]
 00539ED0    mov         eax,dword ptr [eax+464];TMainForm.LblProxySvrPort:TLabel
 00539ED6    call        TControl.SetText
 00539EDB    xor         eax,eax
 00539EDD    pop         edx
 00539EDE    pop         ecx
 00539EDF    pop         ecx
 00539EE0    mov         dword ptr fs:[eax],edx
 00539EE3    push        539F05
 00539EE8    lea         eax,[ebp-18]
 00539EEB    mov         edx,2
 00539EF0    call        @LStrArrayClr
 00539EF5    lea         eax,[ebp-8]
 00539EF8    call        @LStrClr
 00539EFD    ret
>00539EFE    jmp         @HandleFinally
>00539F03    jmp         00539EE8
 00539F05    mov         esp,ebp
 00539F07    pop         ebp
 00539F08    ret
*}
end;

//00539F68
procedure sub_00539F68(?:TMainForm);
begin
{*
 00539F68    push        ebp
 00539F69    mov         ebp,esp
 00539F6B    xor         ecx,ecx
 00539F6D    push        ecx
 00539F6E    push        ecx
 00539F6F    push        ecx
 00539F70    push        ecx
 00539F71    push        ecx
 00539F72    push        ecx
 00539F73    push        ecx
 00539F74    push        ecx
 00539F75    mov         dword ptr [ebp-4],eax
 00539F78    xor         eax,eax
 00539F7A    push        ebp
 00539F7B    push        53A0B5
 00539F80    push        dword ptr fs:[eax]
 00539F83    mov         dword ptr fs:[eax],esp
 00539F86    mov         eax,dword ptr [ebp-4]
 00539F89    mov         eax,dword ptr [eax+5C4]
 00539F8F    cmp         dword ptr [eax+40],0
>00539F93    je          0053A092
 00539F99    lea         eax,[ebp-8]
 00539F9C    push        eax
 00539F9D    mov         eax,dword ptr [ebp-4]
 00539FA0    mov         eax,dword ptr [eax+5C4]
 00539FA6    mov         eax,dword ptr [eax+40]
 00539FA9    mov         eax,dword ptr [eax+4]
 00539FAC    mov         dword ptr [ebp-10],eax
 00539FAF    mov         byte ptr [ebp-0C],0B
 00539FB3    lea         edx,[ebp-10]
 00539FB6    xor         ecx,ecx
 00539FB8    mov         eax,53A0C8;'Player name: %s'
 00539FBD    call        Format
 00539FC2    mov         edx,dword ptr [ebp-8]
 00539FC5    mov         eax,dword ptr [ebp-4]
 00539FC8    mov         eax,dword ptr [eax+3F0]
 00539FCE    call        TControl.SetText
 00539FD3    lea         eax,[ebp-14]
 00539FD6    push        eax
 00539FD7    mov         eax,dword ptr [ebp-4]
 00539FDA    mov         eax,dword ptr [eax+5C4]
 00539FE0    call        00535730
 00539FE5    and         eax,7F
 00539FE8    mov         edx,dword ptr ds:[55B348];^gvar_0054E2BC:array[4] of ?
 00539FEE    mov         eax,dword ptr [edx+eax*4]
 00539FF1    mov         dword ptr [ebp-10],eax
 00539FF4    mov         byte ptr [ebp-0C],0B
 00539FF8    lea         edx,[ebp-10]
 00539FFB    xor         ecx,ecx
 00539FFD    mov         eax,53A0E0;'Player class: %s'
 0053A002    call        Format
 0053A007    mov         edx,dword ptr [ebp-14]
 0053A00A    mov         eax,dword ptr [ebp-4]
 0053A00D    mov         eax,dword ptr [eax+3F4]
 0053A013    call        TControl.SetText
 0053A018    lea         eax,[ebp-18]
 0053A01B    push        eax
 0053A01C    lea         edx,[ebp-1C]
 0053A01F    mov         eax,dword ptr [ebp-4]
 0053A022    mov         eax,dword ptr [eax+5C4]
 0053A028    call        00535690
 0053A02D    mov         eax,dword ptr [ebp-1C]
 0053A030    mov         dword ptr [ebp-10],eax
 0053A033    mov         byte ptr [ebp-0C],0B
 0053A037    lea         edx,[ebp-10]
 0053A03A    xor         ecx,ecx
 0053A03C    mov         eax,53A0FC;'Government position: %s'
 0053A041    call        Format
 0053A046    mov         edx,dword ptr [ebp-18]
 0053A049    mov         eax,dword ptr [ebp-4]
 0053A04C    mov         eax,dword ptr [eax+3F8]
 0053A052    call        TControl.SetText
 0053A057    lea         eax,[ebp-20]
 0053A05A    push        eax
 0053A05B    mov         eax,dword ptr [ebp-4]
 0053A05E    mov         eax,dword ptr [eax+5C4]
 0053A064    mov         eax,dword ptr [eax+40]
 0053A067    movzx       eax,byte ptr [eax+78]
 0053A06B    mov         dword ptr [ebp-10],eax
 0053A06E    mov         byte ptr [ebp-0C],0
 0053A072    lea         edx,[ebp-10]
 0053A075    xor         ecx,ecx
 0053A077    mov         eax,53A11C;'Player level: %d'
 0053A07C    call        Format
 0053A081    mov         edx,dword ptr [ebp-20]
 0053A084    mov         eax,dword ptr [ebp-4]
 0053A087    mov         eax,dword ptr [eax+3FC]
 0053A08D    call        TControl.SetText
 0053A092    xor         eax,eax
 0053A094    pop         edx
 0053A095    pop         ecx
 0053A096    pop         ecx
 0053A097    mov         dword ptr fs:[eax],edx
 0053A09A    push        53A0BC
 0053A09F    lea         eax,[ebp-20]
 0053A0A2    mov         edx,4
 0053A0A7    call        @LStrArrayClr
 0053A0AC    lea         eax,[ebp-8]
 0053A0AF    call        @LStrClr
 0053A0B4    ret
>0053A0B5    jmp         @HandleFinally
>0053A0BA    jmp         0053A09F
 0053A0BC    mov         esp,ebp
 0053A0BE    pop         ebp
 0053A0BF    ret
*}
end;

//0053A130
procedure sub_0053A130(?:TMainForm);
begin
{*
 0053A130    push        ebp
 0053A131    mov         ebp,esp
 0053A133    push        ecx
 0053A134    mov         dword ptr [ebp-4],eax
 0053A137    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0053A13C    mov         eax,dword ptr [eax]
 0053A13E    cmp         byte ptr [eax+2C],0
>0053A142    je          0053A19F
 0053A144    mov         dl,1
 0053A146    mov         eax,dword ptr [ebp-4]
 0053A149    mov         eax,dword ptr [eax+558];TMainForm.ChkBoxAutoLogin:TCheckBox
 0053A14F    mov         ecx,dword ptr [eax]
 0053A151    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 0053A157    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0053A15C    mov         eax,dword ptr [eax]
 0053A15E    mov         edx,dword ptr [eax+30]
 0053A161    mov         eax,dword ptr [ebp-4]
 0053A164    mov         eax,dword ptr [eax+540];TMainForm.EditLogin:TEdit
 0053A16A    call        TControl.SetText
 0053A16F    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0053A174    mov         eax,dword ptr [eax]
 0053A176    mov         edx,dword ptr [eax+34]
 0053A179    mov         eax,dword ptr [ebp-4]
 0053A17C    mov         eax,dword ptr [eax+544];TMainForm.EditPassword:TEdit
 0053A182    call        TControl.SetText
 0053A187    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0053A18C    mov         eax,dword ptr [eax]
 0053A18E    mov         edx,dword ptr [eax+38]
 0053A191    mov         eax,dword ptr [ebp-4]
 0053A194    mov         eax,dword ptr [eax+548];TMainForm.EditPIN:TEdit
 0053A19A    call        TControl.SetText
 0053A19F    pop         ecx
 0053A1A0    pop         ebp
 0053A1A1    ret
*}
end;

//0053A1A4
{*procedure TMainForm.ActionManagerUpdate(?:?; ?:?);
begin
 0053A1A4    push        ebp
 0053A1A5    mov         ebp,esp
 0053A1A7    add         esp,0FFFFFFF0
 0053A1AA    mov         dword ptr [ebp-10],ecx
 0053A1AD    mov         dword ptr [ebp-0C],edx
 0053A1B0    mov         dword ptr [ebp-4],eax
 0053A1B3    mov         eax,dword ptr [ebp-4]
 0053A1B6    cmp         dword ptr [eax+5C4],0;TMainForm.?f5C4:TPlayers
>0053A1BD    je          0053A1CE
 0053A1BF    mov         eax,dword ptr [ebp-4]
 0053A1C2    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053A1C8    cmp         dword ptr [eax+40],0;TPlayers.?f40:dword
>0053A1CC    jne         0053A1D2
 0053A1CE    xor         eax,eax
>0053A1D0    jmp         0053A1D4
 0053A1D2    mov         al,1
 0053A1D4    mov         byte ptr [ebp-6],al
 0053A1D7    mov         eax,dword ptr [ebp-4]
 0053A1DA    cmp         dword ptr [eax+5FC],0;TMainForm.?f5FC:TAutoStall
>0053A1E1    je          0053A342
 0053A1E7    mov         eax,dword ptr [ebp-4]
 0053A1EA    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053A1F0    mov         edx,dword ptr [eax]
 0053A1F2    call        dword ptr [edx+0CC];TListBox.sub_004C1A60
 0053A1F8    test        eax,eax
 0053A1FA    setge       byte ptr [ebp-5]
 0053A1FE    mov         eax,dword ptr [ebp-4]
 0053A201    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A207    cmp         byte ptr [eax+20],0;TAutoStall.?f20:byte
>0053A20B    je          0053A265
 0053A20D    mov         edx,53A35C;'Stall recording status: Recording process'
 0053A212    mov         eax,dword ptr [ebp-4]
 0053A215    mov         eax,dword ptr [eax+4A4];TMainForm.LblStallRecordingStatus:TLabel
 0053A21B    call        TControl.SetText
 0053A220    xor         edx,edx
 0053A222    mov         eax,dword ptr [ebp-4]
 0053A225    mov         eax,dword ptr [eax+46C];TMainForm.ActStartMacroRecording:TAction
 0053A22B    call        TVirtualListAction.SetEnabled
 0053A230    xor         edx,edx
 0053A232    mov         eax,dword ptr [ebp-4]
 0053A235    mov         eax,dword ptr [eax+474];TMainForm.ActRunMacro:TAction
 0053A23B    call        TVirtualListAction.SetEnabled
 0053A240    xor         edx,edx
 0053A242    mov         eax,dword ptr [ebp-4]
 0053A245    mov         eax,dword ptr [eax+478];TMainForm.ActDeleteMacro:TAction
 0053A24B    call        TVirtualListAction.SetEnabled
 0053A250    mov         dl,1
 0053A252    mov         eax,dword ptr [ebp-4]
 0053A255    mov         eax,dword ptr [eax+470];TMainForm.ActStopMacroRecording:TAction
 0053A25B    call        TVirtualListAction.SetEnabled
>0053A260    jmp         0053A2F1
 0053A265    mov         edx,53A390;'Stall recording status: No recording atm'
 0053A26A    mov         eax,dword ptr [ebp-4]
 0053A26D    mov         eax,dword ptr [eax+4A4];TMainForm.LblStallRecordingStatus:TLabel
 0053A273    call        TControl.SetText
 0053A278    cmp         byte ptr [ebp-6],0
>0053A27C    je          0053A28D
 0053A27E    mov         eax,dword ptr [ebp-4]
 0053A281    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A287    cmp         byte ptr [eax+28],0;TAutoStall.?f28:byte
>0053A28B    je          0053A291
 0053A28D    xor         edx,edx
>0053A28F    jmp         0053A293
 0053A291    mov         dl,1
 0053A293    mov         eax,dword ptr [ebp-4]
 0053A296    mov         eax,dword ptr [eax+46C];TMainForm.ActStartMacroRecording:TAction
 0053A29C    call        TVirtualListAction.SetEnabled
 0053A2A1    cmp         byte ptr [ebp-5],0
>0053A2A5    je          0053A2BC
 0053A2A7    mov         eax,dword ptr [ebp-4]
 0053A2AA    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A2B0    cmp         byte ptr [eax+28],0;TAutoStall.?f28:byte
>0053A2B4    jne         0053A2BC
 0053A2B6    cmp         byte ptr [ebp-6],0
>0053A2BA    jne         0053A2C0
 0053A2BC    xor         edx,edx
>0053A2BE    jmp         0053A2C2
 0053A2C0    mov         dl,1
 0053A2C2    mov         eax,dword ptr [ebp-4]
 0053A2C5    mov         eax,dword ptr [eax+474];TMainForm.ActRunMacro:TAction
 0053A2CB    call        TVirtualListAction.SetEnabled
 0053A2D0    mov         dl,byte ptr [ebp-5]
 0053A2D3    mov         eax,dword ptr [ebp-4]
 0053A2D6    mov         eax,dword ptr [eax+478];TMainForm.ActDeleteMacro:TAction
 0053A2DC    call        TVirtualListAction.SetEnabled
 0053A2E1    xor         edx,edx
 0053A2E3    mov         eax,dword ptr [ebp-4]
 0053A2E6    mov         eax,dword ptr [eax+470];TMainForm.ActStopMacroRecording:TAction
 0053A2EC    call        TVirtualListAction.SetEnabled
 0053A2F1    mov         eax,dword ptr [ebp-4]
 0053A2F4    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A2FA    cmp         byte ptr [eax+28],0;TAutoStall.?f28:byte
>0053A2FE    je          0053A315
 0053A300    mov         edx,53A3C4;'Stall state: Selling items'
 0053A305    mov         eax,dword ptr [ebp-4]
 0053A308    mov         eax,dword ptr [eax+4B0];TMainForm.LblStallState:TLabel
 0053A30E    call        TControl.SetText
>0053A313    jmp         0053A328
 0053A315    mov         edx,53A3E8;'Stall state: Not selling'
 0053A31A    mov         eax,dword ptr [ebp-4]
 0053A31D    mov         eax,dword ptr [eax+4B0];TMainForm.LblStallState:TLabel
 0053A323    call        TControl.SetText
 0053A328    mov         eax,dword ptr [ebp-4]
 0053A32B    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A331    mov         dl,byte ptr [eax+21];TAutoStall.?f21:byte
 0053A334    mov         eax,dword ptr [ebp-4]
 0053A337    mov         eax,dword ptr [eax+4B4];TMainForm.ActSaveMacros:TAction
 0053A33D    call        TVirtualListAction.SetEnabled
 0053A342    cmp         byte ptr [ebp-6],0
>0053A346    je          0053A350
 0053A348    mov         eax,dword ptr [ebp-4]
 0053A34B    call        00539F68
 0053A350    mov         esp,ebp
 0053A352    pop         ebp
 0053A353    ret
end;*}

//0053A404
procedure TMainForm.BtnShowLogsClick(Sender:TObject);
begin
{*
 0053A404    push        ebp
 0053A405    mov         ebp,esp
 0053A407    add         esp,0FFFFFFF8
 0053A40A    mov         dword ptr [ebp-8],edx
 0053A40D    mov         dword ptr [ebp-4],eax
 0053A410    mov         eax,dword ptr [ebp-4]
 0053A413    mov         al,byte ptr [eax+5B5];TMainForm.?f5B5:byte
 0053A419    xor         al,1
 0053A41B    mov         edx,dword ptr [ebp-4]
 0053A41E    mov         byte ptr [edx+5B5],al;TMainForm.?f5B5:byte
 0053A424    pop         ecx
 0053A425    pop         ecx
 0053A426    pop         ebp
 0053A427    ret
*}
end;

//0053A428
{*procedure TMainForm.ActClearSniferLogsExecute(?:?);
begin
 0053A428    push        ebp
 0053A429    mov         ebp,esp
 0053A42B    add         esp,0FFFFFFF8
 0053A42E    mov         dword ptr [ebp-8],edx
 0053A431    mov         dword ptr [ebp-4],eax
 0053A434    mov         eax,dword ptr [ebp-4]
 0053A437    mov         eax,dword ptr [eax+318];TMainForm.MemoSniffer:TMemo
 0053A43D    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 0053A443    mov         edx,dword ptr [eax]
 0053A445    call        dword ptr [edx+44];TStrings.Clear
 0053A448    pop         ecx
 0053A449    pop         ecx
 0053A44A    pop         ebp
 0053A44B    ret
end;*}

//0053A44C
{*procedure TMainForm.ActClearSniferLogsUpdate(?:?);
begin
 0053A44C    push        ebp
 0053A44D    mov         ebp,esp
 0053A44F    add         esp,0FFFFFFF4
 0053A452    xor         ecx,ecx
 0053A454    mov         dword ptr [ebp-0C],ecx
 0053A457    mov         dword ptr [ebp-8],edx
 0053A45A    mov         dword ptr [ebp-4],eax
 0053A45D    xor         eax,eax
 0053A45F    push        ebp
 0053A460    push        53A4AD
 0053A465    push        dword ptr fs:[eax]
 0053A468    mov         dword ptr fs:[eax],esp
 0053A46B    lea         edx,[ebp-0C]
 0053A46E    mov         eax,dword ptr [ebp-4]
 0053A471    mov         eax,dword ptr [eax+318];TMainForm.MemoSniffer:TMemo
 0053A477    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 0053A47D    mov         ecx,dword ptr [eax]
 0053A47F    call        dword ptr [ecx+1C];TStrings.sub_0047A6E8
 0053A482    cmp         dword ptr [ebp-0C],0
 0053A486    setne       dl
 0053A489    mov         eax,dword ptr [ebp-4]
 0053A48C    mov         eax,dword ptr [eax+3CC];TMainForm.ActClearSniferLogs:TAction
 0053A492    call        TVirtualListAction.SetEnabled
 0053A497    xor         eax,eax
 0053A499    pop         edx
 0053A49A    pop         ecx
 0053A49B    pop         ecx
 0053A49C    mov         dword ptr fs:[eax],edx
 0053A49F    push        53A4B4
 0053A4A4    lea         eax,[ebp-0C]
 0053A4A7    call        @LStrClr
 0053A4AC    ret
>0053A4AD    jmp         @HandleFinally
>0053A4B2    jmp         0053A4A4
 0053A4B4    mov         esp,ebp
 0053A4B6    pop         ebp
 0053A4B7    ret
end;*}

//0053A4B8
{*procedure TMainForm.ActSnifferWordWrapUpdate(?:?);
begin
 0053A4B8    push        ebp
 0053A4B9    mov         ebp,esp
 0053A4BB    add         esp,0FFFFFFF8
 0053A4BE    mov         dword ptr [ebp-8],edx
 0053A4C1    mov         dword ptr [ebp-4],eax
 0053A4C4    mov         eax,dword ptr [ebp-4]
 0053A4C7    mov         eax,dword ptr [eax+318];TMainForm.MemoSniffer:TMemo
 0053A4CD    mov         dl,byte ptr [eax+226];TMemo.FWordWrap:Boolean
 0053A4D3    mov         eax,dword ptr [ebp-4]
 0053A4D6    mov         eax,dword ptr [eax+3D0];TMainForm.ActSnifferWordWrap:TAction
 0053A4DC    call        TAction.SetChecked
 0053A4E1    pop         ecx
 0053A4E2    pop         ecx
 0053A4E3    pop         ebp
 0053A4E4    ret
end;*}

//0053A4E8
{*procedure TMainForm.ActSnifferWordWrapExecute(?:?);
begin
 0053A4E8    push        ebp
 0053A4E9    mov         ebp,esp
 0053A4EB    add         esp,0FFFFFFF8
 0053A4EE    mov         dword ptr [ebp-8],edx
 0053A4F1    mov         dword ptr [ebp-4],eax
 0053A4F4    mov         eax,dword ptr [ebp-4]
 0053A4F7    mov         eax,dword ptr [eax+318];TMainForm.MemoSniffer:TMemo
 0053A4FD    mov         dl,byte ptr [eax+226];TMemo.FWordWrap:Boolean
 0053A503    xor         dl,1
 0053A506    mov         eax,dword ptr [ebp-4]
 0053A509    mov         eax,dword ptr [eax+318];TMainForm.MemoSniffer:TMemo
 0053A50F    call        TMemo.SetWordWrap
 0053A514    pop         ecx
 0053A515    pop         ecx
 0053A516    pop         ebp
 0053A517    ret
end;*}

//0053A518
{*procedure TMainForm.SpinEditPickDelayChange(?:?);
begin
 0053A518    push        ebp
 0053A519    mov         ebp,esp
 0053A51B    add         esp,0FFFFFFF8
 0053A51E    mov         dword ptr [ebp-8],edx
 0053A521    mov         dword ptr [ebp-4],eax
 0053A524    mov         eax,dword ptr [ebp-4]
 0053A527    cmp         dword ptr [eax+5F4],0;TMainForm.?f5F4:TAutoPick
>0053A52E    je          0053A550
 0053A530    mov         eax,dword ptr [ebp-4]
 0053A533    mov         eax,dword ptr [eax+42C];TMainForm.SpinEditPickDelay:TSpinEdit
 0053A539    call        TSpinEdit.GetValue
 0053A53E    imul        eax,eax,3E8
 0053A544    mov         edx,dword ptr [ebp-4]
 0053A547    mov         edx,dword ptr [edx+5F4];TMainForm.?f5F4:TAutoPick
 0053A54D    mov         dword ptr [edx+54],eax;TAutoPick.?f54:Integer
 0053A550    pop         ecx
 0053A551    pop         ecx
 0053A552    pop         ebp
 0053A553    ret
end;*}

//0053A554
procedure TMainForm.SBPickNowClick(Sender:TObject);
begin
{*
 0053A554    push        ebp
 0053A555    mov         ebp,esp
 0053A557    add         esp,0FFFFFFF8
 0053A55A    mov         dword ptr [ebp-8],edx
 0053A55D    mov         dword ptr [ebp-4],eax
 0053A560    mov         eax,dword ptr [ebp-4]
 0053A563    cmp         dword ptr [eax+5F4],0;TMainForm.?f5F4:TAutoPick
>0053A56A    je          0053A57A
 0053A56C    mov         eax,dword ptr [ebp-4]
 0053A56F    mov         eax,dword ptr [eax+5F4];TMainForm.?f5F4:TAutoPick
 0053A575    call        00529F20
 0053A57A    pop         ecx
 0053A57B    pop         ecx
 0053A57C    pop         ebp
 0053A57D    ret
*}
end;

//0053A580
procedure TMainForm.RGPickStrategyClick(Sender:TObject);
begin
{*
 0053A580    push        ebp
 0053A581    mov         ebp,esp
 0053A583    add         esp,0FFFFFFF8
 0053A586    mov         dword ptr [ebp-8],edx
 0053A589    mov         dword ptr [ebp-4],eax
 0053A58C    mov         eax,dword ptr [ebp-4]
 0053A58F    cmp         dword ptr [eax+5F4],0;TMainForm.?f5F4:TAutoPick
>0053A596    je          0053A617
 0053A598    mov         eax,dword ptr [ebp-4]
 0053A59B    mov         eax,dword ptr [eax+420];TMainForm.RGPickStrategy:TRadioGroup
 0053A5A1    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 0053A5A7    sub         eax,1
>0053A5AA    jb          0053A5B3
>0053A5AC    je          0053A5D5
 0053A5AE    dec         eax
>0053A5AF    je          0053A5F7
>0053A5B1    jmp         0053A617
 0053A5B3    xor         edx,edx
 0053A5B5    mov         eax,dword ptr [ebp-4]
 0053A5B8    mov         eax,dword ptr [eax+5F4];TMainForm.?f5F4:TAutoPick
 0053A5BE    call        00529FE8
 0053A5C3    xor         edx,edx
 0053A5C5    mov         eax,dword ptr [ebp-4]
 0053A5C8    mov         eax,dword ptr [eax+42C];TMainForm.SpinEditPickDelay:TSpinEdit
 0053A5CE    mov         ecx,dword ptr [eax]
 0053A5D0    call        dword ptr [ecx+64];TImage.SetEnabled
>0053A5D3    jmp         0053A617
 0053A5D5    mov         dl,1
 0053A5D7    mov         eax,dword ptr [ebp-4]
 0053A5DA    mov         eax,dword ptr [eax+5F4];TMainForm.?f5F4:TAutoPick
 0053A5E0    call        00529FE8
 0053A5E5    xor         edx,edx
 0053A5E7    mov         eax,dword ptr [ebp-4]
 0053A5EA    mov         eax,dword ptr [eax+42C];TMainForm.SpinEditPickDelay:TSpinEdit
 0053A5F0    mov         ecx,dword ptr [eax]
 0053A5F2    call        dword ptr [ecx+64];TImage.SetEnabled
>0053A5F5    jmp         0053A617
 0053A5F7    mov         dl,2
 0053A5F9    mov         eax,dword ptr [ebp-4]
 0053A5FC    mov         eax,dword ptr [eax+5F4];TMainForm.?f5F4:TAutoPick
 0053A602    call        00529FE8
 0053A607    mov         dl,1
 0053A609    mov         eax,dword ptr [ebp-4]
 0053A60C    mov         eax,dword ptr [eax+42C];TMainForm.SpinEditPickDelay:TSpinEdit
 0053A612    mov         ecx,dword ptr [eax]
 0053A614    call        dword ptr [ecx+64];TImage.SetEnabled
 0053A617    pop         ecx
 0053A618    pop         ecx
 0053A619    pop         ebp
 0053A61A    ret
*}
end;

//0053A61C
{*procedure TMainForm.ActStartMacroRecordingExecute(?:?);
begin
 0053A61C    push        ebp
 0053A61D    mov         ebp,esp
 0053A61F    add         esp,0FFFFFFF4
 0053A622    xor         ecx,ecx
 0053A624    mov         dword ptr [ebp-8],ecx
 0053A627    mov         dword ptr [ebp-0C],edx
 0053A62A    mov         dword ptr [ebp-4],eax
 0053A62D    xor         eax,eax
 0053A62F    push        ebp
 0053A630    push        53A6E2
 0053A635    push        dword ptr fs:[eax]
 0053A638    mov         dword ptr fs:[eax],esp
 0053A63B    lea         eax,[ebp-8]
 0053A63E    push        eax
 0053A63F    mov         ecx,53A6F8;'Fresh drops'
 0053A644    mov         edx,53A70C;'Please type unique macro name'
 0053A649    mov         eax,53A734;'Macro name'
 0053A64E    call        004954D0
 0053A653    cmp         dword ptr [ebp-8],0
>0053A657    jne         0053A665
 0053A659    mov         eax,53A748;'Set name for macro.'
 0053A65E    call        00495128
>0053A663    jmp         0053A6CC
 0053A665    mov         eax,dword ptr [ebp-4]
 0053A668    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A66E    call        00531888
 0053A673    mov         edx,dword ptr [ebp-8]
 0053A676    mov         ecx,dword ptr [eax]
 0053A678    call        dword ptr [ecx+54]
 0053A67B    test        eax,eax
>0053A67D    jl          0053A68B
 0053A67F    mov         eax,53A764;'Name alredy exist! Choose other one.'
 0053A684    call        00495128
>0053A689    jmp         0053A6CC
 0053A68B    xor         edx,edx
 0053A68D    mov         eax,dword ptr [ebp-4]
 0053A690    mov         eax,dword ptr [eax+46C];TMainForm.ActStartMacroRecording:TAction
 0053A696    call        TVirtualListAction.SetEnabled
 0053A69B    mov         dl,1
 0053A69D    mov         eax,dword ptr [ebp-4]
 0053A6A0    mov         eax,dword ptr [eax+470];TMainForm.ActStopMacroRecording:TAction
 0053A6A6    call        TVirtualListAction.SetEnabled
 0053A6AB    xor         edx,edx
 0053A6AD    mov         eax,dword ptr [ebp-4]
 0053A6B0    mov         eax,dword ptr [eax+474];TMainForm.ActRunMacro:TAction
 0053A6B6    call        TVirtualListAction.SetEnabled
 0053A6BB    mov         edx,dword ptr [ebp-8]
 0053A6BE    mov         eax,dword ptr [ebp-4]
 0053A6C1    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A6C7    call        00531560
 0053A6CC    xor         eax,eax
 0053A6CE    pop         edx
 0053A6CF    pop         ecx
 0053A6D0    pop         ecx
 0053A6D1    mov         dword ptr fs:[eax],edx
 0053A6D4    push        53A6E9
 0053A6D9    lea         eax,[ebp-8]
 0053A6DC    call        @LStrClr
 0053A6E1    ret
>0053A6E2    jmp         @HandleFinally
>0053A6E7    jmp         0053A6D9
 0053A6E9    mov         esp,ebp
 0053A6EB    pop         ebp
 0053A6EC    ret
end;*}

//0053A78C
{*procedure TMainForm.ActStopMacroRecordingExecute(?:?);
begin
 0053A78C    push        ebp
 0053A78D    mov         ebp,esp
 0053A78F    add         esp,0FFFFFFF8
 0053A792    mov         dword ptr [ebp-8],edx
 0053A795    mov         dword ptr [ebp-4],eax
 0053A798    mov         eax,dword ptr [ebp-4]
 0053A79B    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A7A1    call        005316E8
 0053A7A6    test        al,al
>0053A7A8    je          0053A7E6
 0053A7AA    mov         eax,53A830;'Recorded successful'
 0053A7AF    call        00495128
 0053A7B4    mov         dl,1
 0053A7B6    mov         eax,dword ptr [ebp-4]
 0053A7B9    mov         eax,dword ptr [eax+46C];TMainForm.ActStartMacroRecording:TAction
 0053A7BF    call        TVirtualListAction.SetEnabled
 0053A7C4    xor         edx,edx
 0053A7C6    mov         eax,dword ptr [ebp-4]
 0053A7C9    mov         eax,dword ptr [eax+470];TMainForm.ActStopMacroRecording:TAction
 0053A7CF    call        TVirtualListAction.SetEnabled
 0053A7D4    mov         dl,1
 0053A7D6    mov         eax,dword ptr [ebp-4]
 0053A7D9    mov         eax,dword ptr [eax+474];TMainForm.ActRunMacro:TAction
 0053A7DF    call        TVirtualListAction.SetEnabled
>0053A7E4    jmp         0053A7F0
 0053A7E6    mov         eax,53A84C;'Recording fail :|'
 0053A7EB    call        00495128
 0053A7F0    mov         eax,dword ptr [ebp-4]
 0053A7F3    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A7F9    call        00531888
 0053A7FE    mov         edx,eax
 0053A800    mov         eax,dword ptr [ebp-4]
 0053A803    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053A809    call        TListBox.SetItems
 0053A80E    or          edx,0FFFFFFFF
 0053A811    mov         eax,dword ptr [ebp-4]
 0053A814    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053A81A    mov         ecx,dword ptr [eax]
 0053A81C    call        dword ptr [ecx+0D0];TListBox.sub_004C1B20
 0053A822    pop         ecx
 0053A823    pop         ecx
 0053A824    pop         ebp
 0053A825    ret
end;*}

//0053A860
{*procedure TMainForm.ActRunMacroExecute(?:?);
begin
 0053A860    push        ebp
 0053A861    mov         ebp,esp
 0053A863    add         esp,0FFFFFFF4
 0053A866    push        ebx
 0053A867    xor         ecx,ecx
 0053A869    mov         dword ptr [ebp-0C],ecx
 0053A86C    mov         dword ptr [ebp-8],edx
 0053A86F    mov         dword ptr [ebp-4],eax
 0053A872    xor         eax,eax
 0053A874    push        ebp
 0053A875    push        53A91E
 0053A87A    push        dword ptr fs:[eax]
 0053A87D    mov         dword ptr fs:[eax],esp
 0053A880    mov         eax,dword ptr [ebp-4]
 0053A883    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053A889    mov         edx,dword ptr [eax]
 0053A88B    call        dword ptr [edx+0CC];TListBox.sub_004C1A60
 0053A891    test        eax,eax
>0053A893    jl          0053A908
 0053A895    mov         eax,dword ptr [ebp-4]
 0053A898    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053A89E    mov         edx,dword ptr [eax]
 0053A8A0    call        dword ptr [edx+0CC];TListBox.sub_004C1A60
 0053A8A6    mov         edx,eax
 0053A8A8    lea         ecx,[ebp-0C]
 0053A8AB    mov         eax,dword ptr [ebp-4]
 0053A8AE    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053A8B4    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 0053A8BA    mov         ebx,dword ptr [eax]
 0053A8BC    call        dword ptr [ebx+0C];@AbstractError
 0053A8BF    mov         edx,dword ptr [ebp-0C]
 0053A8C2    mov         eax,dword ptr [ebp-4]
 0053A8C5    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A8CB    call        005318A4
 0053A8D0    test        al,al
>0053A8D2    je          0053A8EF
 0053A8D4    mov         eax,dword ptr [ebp-4]
 0053A8D7    mov         eax,dword ptr [eax+480];TMainForm.MemoMacro:TMemo
 0053A8DD    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 0053A8E3    mov         edx,53A934;'Stall set successful'
 0053A8E8    mov         ecx,dword ptr [eax]
 0053A8EA    call        dword ptr [ecx+38];TStrings.sub_0047A060
>0053A8ED    jmp         0053A908
 0053A8EF    mov         eax,dword ptr [ebp-4]
 0053A8F2    mov         eax,dword ptr [eax+480];TMainForm.MemoMacro:TMemo
 0053A8F8    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 0053A8FE    mov         edx,53A954;'Stall set fail'
 0053A903    mov         ecx,dword ptr [eax]
 0053A905    call        dword ptr [ecx+38];TStrings.sub_0047A060
 0053A908    xor         eax,eax
 0053A90A    pop         edx
 0053A90B    pop         ecx
 0053A90C    pop         ecx
 0053A90D    mov         dword ptr fs:[eax],edx
 0053A910    push        53A925
 0053A915    lea         eax,[ebp-0C]
 0053A918    call        @LStrClr
 0053A91D    ret
>0053A91E    jmp         @HandleFinally
>0053A923    jmp         0053A915
 0053A925    pop         ebx
 0053A926    mov         esp,ebp
 0053A928    pop         ebp
 0053A929    ret
end;*}

//0053A964
{*procedure TMainForm.ActDeleteMacroExecute(?:?);
begin
 0053A964    push        ebp
 0053A965    mov         ebp,esp
 0053A967    add         esp,0FFFFFFF4
 0053A96A    push        ebx
 0053A96B    xor         ecx,ecx
 0053A96D    mov         dword ptr [ebp-0C],ecx
 0053A970    mov         dword ptr [ebp-8],edx
 0053A973    mov         dword ptr [ebp-4],eax
 0053A976    xor         eax,eax
 0053A978    push        ebp
 0053A979    push        53AA44
 0053A97E    push        dword ptr fs:[eax]
 0053A981    mov         dword ptr fs:[eax],esp
 0053A984    mov         eax,dword ptr [ebp-4]
 0053A987    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053A98D    mov         edx,dword ptr [eax]
 0053A98F    call        dword ptr [edx+0CC];TListBox.sub_004C1A60
 0053A995    test        eax,eax
>0053A997    jl          0053AA2E
 0053A99D    mov         eax,dword ptr [ebp-4]
 0053A9A0    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053A9A6    mov         edx,dword ptr [eax]
 0053A9A8    call        dword ptr [edx+0CC];TListBox.sub_004C1A60
 0053A9AE    mov         edx,eax
 0053A9B0    lea         ecx,[ebp-0C]
 0053A9B3    mov         eax,dword ptr [ebp-4]
 0053A9B6    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053A9BC    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 0053A9C2    mov         ebx,dword ptr [eax]
 0053A9C4    call        dword ptr [ebx+0C];@AbstractError
 0053A9C7    mov         edx,dword ptr [ebp-0C]
 0053A9CA    mov         eax,dword ptr [ebp-4]
 0053A9CD    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053A9D3    call        005317F8
 0053A9D8    test        al,al
>0053A9DA    je          0053A9F7
 0053A9DC    mov         eax,dword ptr [ebp-4]
 0053A9DF    mov         eax,dword ptr [eax+480];TMainForm.MemoMacro:TMemo
 0053A9E5    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 0053A9EB    mov         edx,53AA58;'Macro deleted successful'
 0053A9F0    mov         ecx,dword ptr [eax]
 0053A9F2    call        dword ptr [ecx+38];TStrings.sub_0047A060
>0053A9F5    jmp         0053AA10
 0053A9F7    mov         eax,dword ptr [ebp-4]
 0053A9FA    mov         eax,dword ptr [eax+480];TMainForm.MemoMacro:TMemo
 0053AA00    mov         eax,dword ptr [eax+220];TMemo.FLines:TStrings
 0053AA06    mov         edx,53AA7C;'Macro delete fail'
 0053AA0B    mov         ecx,dword ptr [eax]
 0053AA0D    call        dword ptr [ecx+38];TStrings.sub_0047A060
 0053AA10    mov         eax,dword ptr [ebp-4]
 0053AA13    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053AA19    call        00531888
 0053AA1E    mov         edx,eax
 0053AA20    mov         eax,dword ptr [ebp-4]
 0053AA23    mov         eax,dword ptr [eax+4A0];TMainForm.ListBoxStallMacros:TListBox
 0053AA29    call        TListBox.SetItems
 0053AA2E    xor         eax,eax
 0053AA30    pop         edx
 0053AA31    pop         ecx
 0053AA32    pop         ecx
 0053AA33    mov         dword ptr fs:[eax],edx
 0053AA36    push        53AA4B
 0053AA3B    lea         eax,[ebp-0C]
 0053AA3E    call        @LStrClr
 0053AA43    ret
>0053AA44    jmp         @HandleFinally
>0053AA49    jmp         0053AA3B
 0053AA4B    pop         ebx
 0053AA4C    mov         esp,ebp
 0053AA4E    pop         ebp
 0053AA4F    ret
end;*}

//0053AA90
{*procedure TMainForm.ActSaveMacrosExecute(?:?);
begin
 0053AA90    push        ebp
 0053AA91    mov         ebp,esp
 0053AA93    add         esp,0FFFFFFF8
 0053AA96    mov         dword ptr [ebp-8],edx
 0053AA99    mov         dword ptr [ebp-4],eax
 0053AA9C    mov         eax,dword ptr [ebp-4]
 0053AA9F    cmp         dword ptr [eax+5FC],0;TMainForm.?f5FC:TAutoStall
>0053AAA6    je          0053AAB6
 0053AAA8    mov         eax,dword ptr [ebp-4]
 0053AAAB    mov         eax,dword ptr [eax+5FC];TMainForm.?f5FC:TAutoStall
 0053AAB1    call        00531B58
 0053AAB6    pop         ecx
 0053AAB7    pop         ecx
 0053AAB8    pop         ebp
 0053AAB9    ret
end;*}

//0053AABC
procedure TMainForm.BtnSuspendResumeThiefBotClick(Sender:TObject);
begin
{*
 0053AABC    push        ebp
 0053AABD    mov         ebp,esp
 0053AABF    add         esp,0FFFFFFF8
 0053AAC2    mov         dword ptr [ebp-8],edx
 0053AAC5    mov         dword ptr [ebp-4],eax
 0053AAC8    mov         eax,dword ptr [ebp-4]
 0053AACB    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053AAD1    cmp         byte ptr [eax+50],0
>0053AAD5    je          0053AAF9
 0053AAD7    mov         eax,dword ptr [ebp-4]
 0053AADA    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053AAE0    mov         byte ptr [eax+50],0
 0053AAE4    mov         edx,53AB28;'Activate'
 0053AAE9    mov         eax,dword ptr [ebp-4]
 0053AAEC    mov         eax,dword ptr [eax+4E8];TMainForm.BtnSuspendResumeThiefBot:TButton
 0053AAF2    call        TControl.SetText
>0053AAF7    jmp         0053AB19
 0053AAF9    mov         eax,dword ptr [ebp-4]
 0053AAFC    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053AB02    mov         byte ptr [eax+50],1
 0053AB06    mov         edx,53AB3C;'Pause bot'
 0053AB0B    mov         eax,dword ptr [ebp-4]
 0053AB0E    mov         eax,dword ptr [eax+4E8];TMainForm.BtnSuspendResumeThiefBot:TButton
 0053AB14    call        TControl.SetText
 0053AB19    pop         ecx
 0053AB1A    pop         ecx
 0053AB1B    pop         ebp
 0053AB1C    ret
*}
end;

//0053AB48
{*procedure TMainForm.ActUseAutoCOExecute(?:?);
begin
 0053AB48    push        ebp
 0053AB49    mov         ebp,esp
 0053AB4B    add         esp,0FFFFFFF8
 0053AB4E    mov         dword ptr [ebp-8],edx
 0053AB51    mov         dword ptr [ebp-4],eax
 0053AB54    mov         eax,dword ptr [ebp-4]
 0053AB57    cmp         dword ptr [eax+5EC],0;TMainForm.?f5EC:TAutoThiefAttack
>0053AB5E    je          0053AB78
 0053AB60    mov         eax,dword ptr [ebp-4]
 0053AB63    mov         eax,dword ptr [eax+4C4];TMainForm.ActUseAutoCO:TAction
 0053AB69    mov         al,byte ptr [eax+69];TAction.FChecked:Boolean
 0053AB6C    mov         edx,dword ptr [ebp-4]
 0053AB6F    mov         edx,dword ptr [edx+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053AB75    mov         byte ptr [edx+52],al
 0053AB78    pop         ecx
 0053AB79    pop         ecx
 0053AB7A    pop         ebp
 0053AB7B    ret
end;*}

//0053AB7C
{*procedure TMainForm.ActUseAutoCAExecute(?:?);
begin
 0053AB7C    push        ebp
 0053AB7D    mov         ebp,esp
 0053AB7F    add         esp,0FFFFFFF8
 0053AB82    mov         dword ptr [ebp-8],edx
 0053AB85    mov         dword ptr [ebp-4],eax
 0053AB88    mov         eax,dword ptr [ebp-4]
 0053AB8B    cmp         dword ptr [eax+5EC],0;TMainForm.?f5EC:TAutoThiefAttack
>0053AB92    je          0053ABAC
 0053AB94    mov         eax,dword ptr [ebp-4]
 0053AB97    mov         eax,dword ptr [eax+4C8];TMainForm.ActUseAutoCA:TAction
 0053AB9D    mov         al,byte ptr [eax+69];TAction.FChecked:Boolean
 0053ABA0    mov         edx,dword ptr [ebp-4]
 0053ABA3    mov         edx,dword ptr [edx+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053ABA9    mov         byte ptr [edx+53],al
 0053ABAC    pop         ecx
 0053ABAD    pop         ecx
 0053ABAE    pop         ebp
 0053ABAF    ret
end;*}

//0053ABB0
{*procedure TMainForm.ActUseAutoDoKExecute(?:?);
begin
 0053ABB0    push        ebp
 0053ABB1    mov         ebp,esp
 0053ABB3    add         esp,0FFFFFFF8
 0053ABB6    mov         dword ptr [ebp-8],edx
 0053ABB9    mov         dword ptr [ebp-4],eax
 0053ABBC    mov         eax,dword ptr [ebp-4]
 0053ABBF    cmp         dword ptr [eax+5EC],0;TMainForm.?f5EC:TAutoThiefAttack
>0053ABC6    je          0053ABE0
 0053ABC8    mov         eax,dword ptr [ebp-4]
 0053ABCB    mov         eax,dword ptr [eax+4C0];TMainForm.ActUseAutoDoK:TAction
 0053ABD1    mov         al,byte ptr [eax+69];TAction.FChecked:Boolean
 0053ABD4    mov         edx,dword ptr [ebp-4]
 0053ABD7    mov         edx,dword ptr [edx+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053ABDD    mov         byte ptr [edx+51],al
 0053ABE0    pop         ecx
 0053ABE1    pop         ecx
 0053ABE2    pop         ebp
 0053ABE3    ret
end;*}

//0053ABE4
{*procedure TMainForm.ActUseAutoSpinExecute(?:?);
begin
 0053ABE4    push        ebp
 0053ABE5    mov         ebp,esp
 0053ABE7    add         esp,0FFFFFFF8
 0053ABEA    mov         dword ptr [ebp-8],edx
 0053ABED    mov         dword ptr [ebp-4],eax
 0053ABF0    mov         eax,dword ptr [ebp-4]
 0053ABF3    cmp         dword ptr [eax+5EC],0;TMainForm.?f5EC:TAutoThiefAttack
>0053ABFA    je          0053AC14
 0053ABFC    mov         eax,dword ptr [ebp-4]
 0053ABFF    mov         eax,dword ptr [eax+4CC];TMainForm.ActUseAutoSpin:TAction
 0053AC05    mov         al,byte ptr [eax+69];TAction.FChecked:Boolean
 0053AC08    mov         edx,dword ptr [ebp-4]
 0053AC0B    mov         edx,dword ptr [edx+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053AC11    mov         byte ptr [edx+54],al
 0053AC14    pop         ecx
 0053AC15    pop         ecx
 0053AC16    pop         ebp
 0053AC17    ret
end;*}

//0053AC18
{*procedure TMainForm.ActCreateThiefBotThreadExecute(?:?);
begin
 0053AC18    push        ebp
 0053AC19    mov         ebp,esp
 0053AC1B    add         esp,0FFFFFFF8
 0053AC1E    mov         dword ptr [ebp-8],edx
 0053AC21    mov         dword ptr [ebp-4],eax
 0053AC24    mov         eax,dword ptr [ebp-4]
 0053AC27    add         eax,5C4;TMainForm.?f5C4:TPlayers
 0053AC2C    push        eax
 0053AC2D    mov         eax,dword ptr [ebp-4]
 0053AC30    mov         eax,dword ptr [eax+5D8];TMainForm.?f5D8:TInventory
 0053AC36    push        eax
 0053AC37    mov         eax,dword ptr [ebp-4]
 0053AC3A    add         eax,5B8;TMainForm.?f5B8:TPacketAnalyser
 0053AC3F    push        eax
 0053AC40    mov         eax,dword ptr [ebp-4]
 0053AC43    lea         ecx,[eax+5C8];TMainForm.?f5C8:TMonsters
 0053AC49    mov         dl,1
 0053AC4B    mov         eax,[00528344];TAutoThiefAttack
 0053AC50    call        TAutoThiefAttack.Create;TAutoThiefAttack.Create
 0053AC55    mov         edx,dword ptr [ebp-4]
 0053AC58    mov         dword ptr [edx+5EC],eax;TMainForm.?f5EC:TAutoThiefAttack
 0053AC5E    mov         dl,1
 0053AC60    mov         eax,dword ptr [ebp-4]
 0053AC63    mov         eax,dword ptr [eax+4E8];TMainForm.BtnSuspendResumeThiefBot:TButton
 0053AC69    mov         ecx,dword ptr [eax]
 0053AC6B    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AC6E    mov         eax,dword ptr [ebp-4]
 0053AC71    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053AC77    mov         edx,dword ptr [ebp-4]
 0053AC7A    mov         dword ptr [eax+1C],edx;TAutoThiefAttack.?f1C:TMainForm
 0053AC7D    mov         dword ptr [eax+18],539D74;TAutoThiefAttack.FOnTerminate:TNotifyEvent
 0053AC84    mov         eax,dword ptr [ebp-4]
 0053AC87    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053AC8D    mov         byte ptr [eax+50],1;TAutoThiefAttack.?f50:byte
 0053AC91    mov         eax,dword ptr [ebp-4]
 0053AC94    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053AC9A    mov         byte ptr [eax+51],1;TAutoThiefAttack.?f51:byte
 0053AC9E    mov         eax,dword ptr [ebp-4]
 0053ACA1    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053ACA7    mov         dl,byte ptr [eax+51];TAutoThiefAttack.?f51:byte
 0053ACAA    mov         eax,dword ptr [ebp-4]
 0053ACAD    mov         eax,dword ptr [eax+4C0];TMainForm.ActUseAutoDoK:TAction
 0053ACB3    call        TAction.SetChecked
 0053ACB8    mov         eax,dword ptr [ebp-4]
 0053ACBB    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053ACC1    mov         dl,byte ptr [eax+52];TAutoThiefAttack.?f52:byte
 0053ACC4    mov         eax,dword ptr [ebp-4]
 0053ACC7    mov         eax,dword ptr [eax+4C4];TMainForm.ActUseAutoCO:TAction
 0053ACCD    call        TAction.SetChecked
 0053ACD2    mov         eax,dword ptr [ebp-4]
 0053ACD5    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053ACDB    mov         dl,byte ptr [eax+53];TAutoThiefAttack.?f53:byte
 0053ACDE    mov         eax,dword ptr [ebp-4]
 0053ACE1    mov         eax,dword ptr [eax+4C8];TMainForm.ActUseAutoCA:TAction
 0053ACE7    call        TAction.SetChecked
 0053ACEC    mov         eax,dword ptr [ebp-4]
 0053ACEF    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053ACF5    mov         dl,byte ptr [eax+54];TAutoThiefAttack.?f54:byte
 0053ACF8    mov         eax,dword ptr [ebp-4]
 0053ACFB    mov         eax,dword ptr [eax+4CC];TMainForm.ActUseAutoSpin:TAction
 0053AD01    call        TAction.SetChecked
 0053AD06    pop         ecx
 0053AD07    pop         ecx
 0053AD08    pop         ebp
 0053AD09    ret
end;*}

//0053AD0C
{*procedure TMainForm.ActCreateThiefBotThreadUpdate(?:?);
begin
 0053AD0C    push        ebp
 0053AD0D    mov         ebp,esp
 0053AD0F    add         esp,0FFFFFFF8
 0053AD12    mov         dword ptr [ebp-8],edx
 0053AD15    mov         dword ptr [ebp-4],eax
 0053AD18    mov         eax,dword ptr [ebp-8]
 0053AD1B    mov         edx,dword ptr ds:[4DA510];TAction
 0053AD21    call        @AsClass
 0053AD26    mov         edx,dword ptr [ebp-4]
 0053AD29    cmp         dword ptr [edx+5EC],0;TMainForm.?f5EC:TAutoThiefAttack
 0053AD30    setne       dl
 0053AD33    xor         dl,1
 0053AD36    call        TVirtualListAction.SetEnabled
 0053AD3B    pop         ecx
 0053AD3C    pop         ecx
 0053AD3D    pop         ebp
 0053AD3E    ret
end;*}

//0053AD40
{*procedure TMainForm.ActUseThiefAutoMedicinesExecute(?:?);
begin
 0053AD40    push        ebp
 0053AD41    mov         ebp,esp
 0053AD43    add         esp,0FFFFFFF8
 0053AD46    push        ebx
 0053AD47    mov         dword ptr [ebp-8],edx
 0053AD4A    mov         dword ptr [ebp-4],eax
 0053AD4D    mov         eax,dword ptr [ebp-8]
 0053AD50    mov         edx,dword ptr ds:[4DA510];TAction
 0053AD56    call        @AsClass
 0053AD5B    mov         dl,byte ptr [eax+69];TAction.FChecked:Boolean
 0053AD5E    mov         eax,dword ptr [ebp-4]
 0053AD61    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053AD67    call        00528CB0
 0053AD6C    mov         eax,dword ptr [ebp-8]
 0053AD6F    mov         edx,dword ptr ds:[4DA510];TAction
 0053AD75    call        @AsClass
 0053AD7A    mov         dl,byte ptr [eax+69];TAction.FChecked:Boolean
 0053AD7D    mov         eax,dword ptr [ebp-4]
 0053AD80    mov         eax,dword ptr [eax+4F0];TMainForm.TBThiefMedicines:TTrackBar
 0053AD86    mov         ecx,dword ptr [eax]
 0053AD88    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AD8B    mov         eax,dword ptr [ebp-4]
 0053AD8E    mov         ebx,dword ptr [eax+4F0];TMainForm.TBThiefMedicines:TTrackBar
 0053AD94    mov         edx,dword ptr [ebp-4]
 0053AD97    mov         eax,dword ptr [ebx+23C];TTrackBar.?f23C:dword
 0053AD9D    call        dword ptr [ebx+238];TTrackBar.OnChange
 0053ADA3    pop         ebx
 0053ADA4    pop         ecx
 0053ADA5    pop         ecx
 0053ADA6    pop         ebp
 0053ADA7    ret
end;*}

//0053ADA8
{*procedure TMainForm.TBThiefMedicinesChange(?:?);
begin
 0053ADA8    push        ebp
 0053ADA9    mov         ebp,esp
 0053ADAB    add         esp,0FFFFFFF8
 0053ADAE    mov         dword ptr [ebp-8],edx
 0053ADB1    mov         dword ptr [ebp-4],eax
 0053ADB4    mov         eax,dword ptr [ebp-4]
 0053ADB7    cmp         dword ptr [eax+5EC],0;TMainForm.?f5EC:TAutoThiefAttack
>0053ADBE    je          0053ADDE
 0053ADC0    mov         eax,dword ptr [ebp-4]
 0053ADC3    mov         eax,dword ptr [eax+4F0];TMainForm.TBThiefMedicines:TTrackBar
 0053ADC9    mov         dx,word ptr [eax+228];TTrackBar.Position:Integer
 0053ADD0    mov         eax,dword ptr [ebp-4]
 0053ADD3    mov         eax,dword ptr [eax+5EC];TMainForm.?f5EC:TAutoThiefAttack
 0053ADD9    call        00528CCC
 0053ADDE    pop         ecx
 0053ADDF    pop         ecx
 0053ADE0    pop         ebp
 0053ADE1    ret
end;*}

//0053ADE4
{*procedure TMainForm.ActTerminateThiefThtradExecute(?:?);
begin
 0053ADE4    push        ebp
 0053ADE5    mov         ebp,esp
 0053ADE7    add         esp,0FFFFFFF8
 0053ADEA    mov         dword ptr [ebp-8],edx
 0053ADED    mov         dword ptr [ebp-4],eax
 0053ADF0    mov         eax,dword ptr [ebp-4]
 0053ADF3    cmp         dword ptr [eax+5EC],0;TMainForm.?f5EC:TAutoThiefAttack
>0053ADFA    je          0053AE09
 0053ADFC    mov         eax,dword ptr [ebp-4]
 0053ADFF    add         eax,5EC;TMainForm.?f5EC:TAutoThiefAttack
 0053AE04    call        FreeAndNil
 0053AE09    pop         ecx
 0053AE0A    pop         ecx
 0053AE0B    pop         ebp
 0053AE0C    ret
end;*}

//0053AE10
{*procedure TMainForm.ActTerminateThiefThtradUpdate(?:?);
begin
 0053AE10    push        ebp
 0053AE11    mov         ebp,esp
 0053AE13    add         esp,0FFFFFFF4
 0053AE16    mov         dword ptr [ebp-8],edx
 0053AE19    mov         dword ptr [ebp-4],eax
 0053AE1C    mov         eax,dword ptr [ebp-4]
 0053AE1F    cmp         dword ptr [eax+5C4],0;TMainForm.?f5C4:TPlayers
>0053AE26    je          0053AE37
 0053AE28    mov         eax,dword ptr [ebp-4]
 0053AE2B    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053AE31    cmp         dword ptr [eax+40],0;TPlayers.?f40:dword
>0053AE35    jne         0053AE3B
 0053AE37    xor         eax,eax
>0053AE39    jmp         0053AE3D
 0053AE3B    mov         al,1
 0053AE3D    mov         byte ptr [ebp-9],al
 0053AE40    mov         eax,dword ptr [ebp-8]
 0053AE43    mov         edx,dword ptr ds:[4DA510];TAction
 0053AE49    call        @AsClass
 0053AE4E    mov         edx,dword ptr [ebp-4]
 0053AE51    cmp         dword ptr [edx+5EC],0;TMainForm.?f5EC:TAutoThiefAttack
 0053AE58    setne       dl
 0053AE5B    call        TVirtualListAction.SetEnabled
 0053AE60    mov         eax,dword ptr [ebp-8]
 0053AE63    mov         edx,dword ptr ds:[4DA510];TAction
 0053AE69    call        @AsClass
 0053AE6E    mov         al,byte ptr [eax+6A];TAction.FEnabled:Boolean
 0053AE71    and         al,byte ptr [ebp-9]
>0053AE74    je          0053AF56
 0053AE7A    mov         edx,dword ptr ds:[55B324];^gvar_0054E700
 0053AE80    mov         dl,byte ptr [edx]
 0053AE82    mov         eax,dword ptr [ebp-4]
 0053AE85    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053AE8B    mov         eax,dword ptr [eax+88];TPlayers.?f88:dword
 0053AE91    call        00535A50
 0053AE96    mov         edx,eax
 0053AE98    mov         eax,dword ptr [ebp-4]
 0053AE9B    mov         eax,dword ptr [eax+4C0];TMainForm.ActUseAutoDoK:TAction
 0053AEA1    call        TVirtualListAction.SetEnabled
 0053AEA6    mov         edx,dword ptr ds:[55B490];^gvar_0054E70C
 0053AEAC    mov         dl,byte ptr [edx]
 0053AEAE    mov         eax,dword ptr [ebp-4]
 0053AEB1    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053AEB7    mov         eax,dword ptr [eax+88];TPlayers.?f88:dword
 0053AEBD    call        00535A50
 0053AEC2    mov         edx,eax
 0053AEC4    mov         eax,dword ptr [ebp-4]
 0053AEC7    mov         eax,dword ptr [eax+4C4];TMainForm.ActUseAutoCO:TAction
 0053AECD    call        TVirtualListAction.SetEnabled
 0053AED2    mov         edx,dword ptr ds:[55B0B0];^gvar_0054E708
 0053AED8    mov         dl,byte ptr [edx]
 0053AEDA    mov         eax,dword ptr [ebp-4]
 0053AEDD    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053AEE3    mov         eax,dword ptr [eax+88];TPlayers.?f88:dword
 0053AEE9    call        00535A50
 0053AEEE    mov         edx,eax
 0053AEF0    mov         eax,dword ptr [ebp-4]
 0053AEF3    mov         eax,dword ptr [eax+4C8];TMainForm.ActUseAutoCA:TAction
 0053AEF9    call        TVirtualListAction.SetEnabled
 0053AEFE    mov         edx,dword ptr ds:[55B240];^gvar_0054E704
 0053AF04    mov         dl,byte ptr [edx]
 0053AF06    mov         eax,dword ptr [ebp-4]
 0053AF09    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053AF0F    mov         eax,dword ptr [eax+88];TPlayers.?f88:dword
 0053AF15    call        00535A50
 0053AF1A    mov         edx,eax
 0053AF1C    mov         eax,dword ptr [ebp-4]
 0053AF1F    mov         eax,dword ptr [eax+4CC];TMainForm.ActUseAutoSpin:TAction
 0053AF25    call        TVirtualListAction.SetEnabled
 0053AF2A    mov         dl,1
 0053AF2C    mov         eax,dword ptr [ebp-4]
 0053AF2F    mov         eax,dword ptr [eax+4F8];TMainForm.ActUseThiefAutoMedicines:TAction
 0053AF35    call        TVirtualListAction.SetEnabled
 0053AF3A    mov         eax,dword ptr [ebp-4]
 0053AF3D    mov         eax,dword ptr [eax+4F8];TMainForm.ActUseThiefAutoMedicines:TAction
 0053AF43    mov         dl,byte ptr [eax+6A];TAction.FEnabled:Boolean
 0053AF46    mov         eax,dword ptr [ebp-4]
 0053AF49    mov         eax,dword ptr [eax+4F0];TMainForm.TBThiefMedicines:TTrackBar
 0053AF4F    mov         ecx,dword ptr [eax]
 0053AF51    call        dword ptr [ecx+64];TImage.SetEnabled
>0053AF54    jmp         0053AFC0
 0053AF56    xor         edx,edx
 0053AF58    mov         eax,dword ptr [ebp-4]
 0053AF5B    mov         eax,dword ptr [eax+4C0];TMainForm.ActUseAutoDoK:TAction
 0053AF61    call        TVirtualListAction.SetEnabled
 0053AF66    xor         edx,edx
 0053AF68    mov         eax,dword ptr [ebp-4]
 0053AF6B    mov         eax,dword ptr [eax+4C4];TMainForm.ActUseAutoCO:TAction
 0053AF71    call        TVirtualListAction.SetEnabled
 0053AF76    xor         edx,edx
 0053AF78    mov         eax,dword ptr [ebp-4]
 0053AF7B    mov         eax,dword ptr [eax+4C8];TMainForm.ActUseAutoCA:TAction
 0053AF81    call        TVirtualListAction.SetEnabled
 0053AF86    xor         edx,edx
 0053AF88    mov         eax,dword ptr [ebp-4]
 0053AF8B    mov         eax,dword ptr [eax+4CC];TMainForm.ActUseAutoSpin:TAction
 0053AF91    call        TVirtualListAction.SetEnabled
 0053AF96    xor         edx,edx
 0053AF98    mov         eax,dword ptr [ebp-4]
 0053AF9B    mov         eax,dword ptr [eax+4F8];TMainForm.ActUseThiefAutoMedicines:TAction
 0053AFA1    call        TVirtualListAction.SetEnabled
 0053AFA6    mov         eax,dword ptr [ebp-4]
 0053AFA9    mov         eax,dword ptr [eax+4F8];TMainForm.ActUseThiefAutoMedicines:TAction
 0053AFAF    mov         dl,byte ptr [eax+6A];TAction.FEnabled:Boolean
 0053AFB2    mov         eax,dword ptr [ebp-4]
 0053AFB5    mov         eax,dword ptr [eax+4F0];TMainForm.TBThiefMedicines:TTrackBar
 0053AFBB    mov         ecx,dword ptr [eax]
 0053AFBD    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AFC0    mov         esp,ebp
 0053AFC2    pop         ebp
 0053AFC3    ret
end;*}

//0053AFC4
procedure TMainForm.BtnAutoCureThreadClick(Sender:TObject);
begin
{*
 0053AFC4    push        ebp
 0053AFC5    mov         ebp,esp
 0053AFC7    add         esp,0FFFFFFF8
 0053AFCA    push        ebx
 0053AFCB    mov         dword ptr [ebp-8],edx
 0053AFCE    mov         dword ptr [ebp-4],eax
 0053AFD1    mov         eax,dword ptr [ebp-4]
 0053AFD4    cmp         dword ptr [eax+5B8],0;TMainForm.?f5B8:TPacketAnalyser
>0053AFDB    je          0053B135
 0053AFE1    mov         eax,dword ptr [ebp-4]
 0053AFE4    cmp         dword ptr [eax+5C4],0;TMainForm.?f5C4:TPlayers
>0053AFEB    je          0053B135
 0053AFF1    mov         eax,dword ptr [ebp-4]
 0053AFF4    cmp         dword ptr [eax+5C8],0;TMainForm.?f5C8:TMonsters
>0053AFFB    je          0053B135
 0053B001    mov         eax,dword ptr [ebp-4]
 0053B004    cmp         dword ptr [eax+5D4],0;TMainForm.?f5D4:TParty
>0053B00B    je          0053B135
 0053B011    mov         eax,dword ptr [ebp-4]
 0053B014    cmp         dword ptr [eax+5D8],0;TMainForm.?f5D8:TInventory
>0053B01B    je          0053B135
 0053B021    mov         eax,dword ptr [ebp-4]
 0053B024    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053B02A    cmp         dword ptr [eax+40],0;TPlayers.?f40:dword
>0053B02E    je          0053B135
 0053B034    mov         eax,dword ptr [ebp-4]
 0053B037    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053B03D    call        00535730
 0053B042    cmp         al,1
>0053B044    jne         0053B135
 0053B04A    xor         edx,edx
 0053B04C    mov         eax,dword ptr [ebp-4]
 0053B04F    mov         eax,dword ptr [eax+310];TMainForm.BtnAutoCureThread:TButton
 0053B055    mov         ecx,dword ptr [eax]
 0053B057    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B05A    mov         eax,dword ptr [ebp-4]
 0053B05D    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053B063    push        eax
 0053B064    mov         eax,dword ptr [ebp-4]
 0053B067    mov         eax,dword ptr [eax+5C8];TMainForm.?f5C8:TMonsters
 0053B06D    push        eax
 0053B06E    mov         eax,dword ptr [ebp-4]
 0053B071    mov         eax,dword ptr [eax+5D4];TMainForm.?f5D4:TParty
 0053B077    push        eax
 0053B078    mov         eax,dword ptr [ebp-4]
 0053B07B    mov         eax,dword ptr [eax+5D8];TMainForm.?f5D8:TInventory
 0053B081    push        eax
 0053B082    mov         eax,dword ptr [ebp-4]
 0053B085    lea         ecx,[eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 0053B08B    mov         dl,1
 0053B08D    mov         eax,[005273B4];TAutoCure
 0053B092    call        TAutoCure.Create;TAutoCure.Create
 0053B097    mov         edx,dword ptr [ebp-4]
 0053B09A    mov         dword ptr [edx+5E8],eax;TMainForm.?f5E8:TAutoCure
 0053B0A0    xor         edx,edx
 0053B0A2    mov         eax,dword ptr [ebp-4]
 0053B0A5    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B0AB    call        00527708
 0053B0B0    mov         eax,dword ptr [ebp-4]
 0053B0B3    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B0B9    mov         byte ptr [eax+99],1;TAutoCure.?f99:byte
 0053B0C0    mov         eax,dword ptr [ebp-4]
 0053B0C3    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B0C9    mov         byte ptr [eax+72],1;TAutoCure.?f72:Boolean
 0053B0CD    mov         dl,1
 0053B0CF    mov         eax,dword ptr [ebp-4]
 0053B0D2    mov         eax,dword ptr [eax+314];TMainForm.RadGroCureKind:TRadioGroup
 0053B0D8    call        TControl.SetVisible
 0053B0DD    mov         dl,1
 0053B0DF    mov         eax,dword ptr [ebp-4]
 0053B0E2    mov         eax,dword ptr [eax+3B0];TMainForm.SBCureOn:TSpeedButton
 0053B0E8    call        TControl.SetVisible
 0053B0ED    mov         dl,1
 0053B0EF    mov         eax,dword ptr [ebp-4]
 0053B0F2    mov         eax,dword ptr [eax+3B4];TMainForm.SBCureOff:TSpeedButton
 0053B0F8    call        TControl.SetVisible
 0053B0FD    mov         dl,1
 0053B0FF    mov         eax,dword ptr [ebp-4]
 0053B102    mov         eax,dword ptr [eax+404];TMainForm.GroupBoxCureOptions:TGroupBox
 0053B108    call        TControl.SetVisible
 0053B10D    mov         dl,1
 0053B10F    mov         eax,dword ptr [ebp-4]
 0053B112    mov         eax,dword ptr [eax+450];TMainForm.ChkBoxCureG1Only:TCheckBox
 0053B118    call        TControl.SetVisible
 0053B11D    mov         eax,dword ptr [ebp-4]
 0053B120    mov         ebx,dword ptr [eax+3A8];TMainForm.RadGroCureGrade:TRadioGroup
 0053B126    mov         edx,dword ptr [ebp-4]
 0053B129    mov         eax,dword ptr [ebx+124];TRadioGroup.?f124:TMessageForm
 0053B12F    call        dword ptr [ebx+120];TRadioGroup.FOnClick
 0053B135    pop         ebx
 0053B136    pop         ecx
 0053B137    pop         ecx
 0053B138    pop         ebp
 0053B139    ret
*}
end;

//0053B13C
procedure TMainForm.RadGroCureKindClick(Sender:TObject);
begin
{*
 0053B13C    push        ebp
 0053B13D    mov         ebp,esp
 0053B13F    add         esp,0FFFFFFF8
 0053B142    mov         dword ptr [ebp-8],edx
 0053B145    mov         dword ptr [ebp-4],eax
 0053B148    mov         eax,dword ptr [ebp-4]
 0053B14B    cmp         dword ptr [eax+5E8],0;TMainForm.?f5E8:TAutoCure
>0053B152    je          0053B1A3
 0053B154    mov         eax,dword ptr [ebp-4]
 0053B157    mov         eax,dword ptr [eax+314];TMainForm.RadGroCureKind:TRadioGroup
 0053B15D    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 0053B163    sub         eax,1
>0053B166    jb          0053B16F
>0053B168    je          0053B181
 0053B16A    dec         eax
>0053B16B    je          0053B193
>0053B16D    jmp         0053B1A3
 0053B16F    xor         edx,edx
 0053B171    mov         eax,dword ptr [ebp-4]
 0053B174    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B17A    call        00527708
>0053B17F    jmp         0053B1A3
 0053B181    mov         dl,2
 0053B183    mov         eax,dword ptr [ebp-4]
 0053B186    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B18C    call        00527708
>0053B191    jmp         0053B1A3
 0053B193    mov         dl,3
 0053B195    mov         eax,dword ptr [ebp-4]
 0053B198    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B19E    call        00527708
 0053B1A3    mov         eax,dword ptr [ebp-4]
 0053B1A6    mov         eax,dword ptr [eax+314];TMainForm.RadGroCureKind:TRadioGroup
 0053B1AC    cmp         dword ptr [eax+218],2;TRadioGroup.FItemIndex:Integer
 0053B1B3    sete        dl
 0053B1B6    mov         eax,dword ptr [ebp-4]
 0053B1B9    mov         eax,dword ptr [eax+39C];TMainForm.GroupBoxOutPT:TGroupBox
 0053B1BF    call        TControl.SetVisible
 0053B1C4    mov         eax,dword ptr [ebp-4]
 0053B1C7    mov         eax,dword ptr [eax+314];TMainForm.RadGroCureKind:TRadioGroup
 0053B1CD    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
 0053B1D4    sete        dl
 0053B1D7    mov         eax,dword ptr [ebp-4]
 0053B1DA    mov         eax,dword ptr [eax+450];TMainForm.ChkBoxCureG1Only:TCheckBox
 0053B1E0    call        TControl.SetVisible
 0053B1E5    pop         ecx
 0053B1E6    pop         ecx
 0053B1E7    pop         ebp
 0053B1E8    ret
*}
end;

//0053B1EC
procedure TMainForm.SBPickTargetPlayerNameClick(Sender:TObject);
begin
{*
 0053B1EC    push        ebp
 0053B1ED    mov         ebp,esp
 0053B1EF    add         esp,0FFFFFFF8
 0053B1F2    mov         dword ptr [ebp-8],edx
 0053B1F5    mov         dword ptr [ebp-4],eax
 0053B1F8    mov         eax,[0055B100];^gvar_0055E0F0
 0053B1FD    mov         eax,dword ptr [eax]
 0053B1FF    mov         edx,dword ptr [eax]
 0053B201    call        dword ptr [edx+0EC]
 0053B207    dec         eax
>0053B208    jne         0053B250
 0053B20A    mov         eax,[0055B100];^gvar_0055E0F0
 0053B20F    mov         eax,dword ptr [eax]
 0053B211    mov         edx,dword ptr [eax+314]
 0053B217    mov         eax,dword ptr [ebp-4]
 0053B21A    mov         eax,dword ptr [eax+3A0];TMainForm.EditTargetPlayerName:TLabeledEdit
 0053B220    call        TControl.SetText
 0053B225    mov         eax,dword ptr [ebp-4]
 0053B228    cmp         dword ptr [eax+5E8],0;TMainForm.?f5E8:TAutoCure
>0053B22F    je          0053B250
 0053B231    mov         eax,dword ptr [ebp-4]
 0053B234    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B23A    add         eax,64;TAutoCure.?f64:String
 0053B23D    mov         edx,dword ptr ds:[55B100];^gvar_0055E0F0
 0053B243    mov         edx,dword ptr [edx]
 0053B245    mov         edx,dword ptr [edx+314]
 0053B24B    call        @LStrAsg
 0053B250    pop         ecx
 0053B251    pop         ecx
 0053B252    pop         ebp
 0053B253    ret
*}
end;

//0053B254
procedure TMainForm.RadGroCureGradeClick(Sender:TObject);
begin
{*
 0053B254    push        ebp
 0053B255    mov         ebp,esp
 0053B257    add         esp,0FFFFFFF8
 0053B25A    mov         dword ptr [ebp-8],edx
 0053B25D    mov         dword ptr [ebp-4],eax
 0053B260    mov         eax,dword ptr [ebp-4]
 0053B263    cmp         dword ptr [eax+5E8],0;TMainForm.?f5E8:TAutoCure
>0053B26A    je          0053B2C4
 0053B26C    mov         eax,dword ptr [ebp-4]
 0053B26F    mov         eax,dword ptr [eax+3A8];TMainForm.RadGroCureGrade:TRadioGroup
 0053B275    mov         eax,dword ptr [eax+218];TRadioGroup.FItemIndex:Integer
 0053B27B    sub         eax,1
>0053B27E    jb          0053B287
>0053B280    je          0053B29C
 0053B282    dec         eax
>0053B283    je          0053B2B1
>0053B285    jmp         0053B2C4
 0053B287    mov         eax,[0055B160];^gvar_0054E558
 0053B28C    mov         al,byte ptr [eax]
 0053B28E    mov         edx,dword ptr [ebp-4]
 0053B291    mov         edx,dword ptr [edx+5E8];TMainForm.?f5E8:TAutoCure
 0053B297    mov         byte ptr [edx+68],al;TAutoCure.?f68:byte
>0053B29A    jmp         0053B2C4
 0053B29C    mov         eax,[0055B19C];^gvar_0054E55C
 0053B2A1    mov         al,byte ptr [eax]
 0053B2A3    mov         edx,dword ptr [ebp-4]
 0053B2A6    mov         edx,dword ptr [edx+5E8];TMainForm.?f5E8:TAutoCure
 0053B2AC    mov         byte ptr [edx+68],al;TAutoCure.?f68:byte
>0053B2AF    jmp         0053B2C4
 0053B2B1    mov         eax,[0055B5F8];^gvar_0054E564
 0053B2B6    mov         al,byte ptr [eax]
 0053B2B8    mov         edx,dword ptr [ebp-4]
 0053B2BB    mov         edx,dword ptr [edx+5E8];TMainForm.?f5E8:TAutoCure
 0053B2C1    mov         byte ptr [edx+68],al;TAutoCure.?f68:byte
 0053B2C4    pop         ecx
 0053B2C5    pop         ecx
 0053B2C6    pop         ebp
 0053B2C7    ret
*}
end;

//0053B2C8
procedure TMainForm.SBCureOnClick(Sender:TObject);
begin
{*
 0053B2C8    push        ebp
 0053B2C9    mov         ebp,esp
 0053B2CB    add         esp,0FFFFFFF8
 0053B2CE    mov         dword ptr [ebp-8],edx
 0053B2D1    mov         dword ptr [ebp-4],eax
 0053B2D4    mov         eax,dword ptr [ebp-4]
 0053B2D7    mov         eax,dword ptr [eax+3B0];TMainForm.SBCureOn:TSpeedButton
 0053B2DD    mov         al,byte ptr [eax+170];TSpeedButton.Down:Boolean
 0053B2E3    mov         edx,dword ptr [ebp-4]
 0053B2E6    mov         edx,dword ptr [edx+5E8];TMainForm.?f5E8:TAutoCure
 0053B2EC    mov         byte ptr [edx+72],al;TAutoCure.?f72:Boolean
 0053B2EF    pop         ecx
 0053B2F0    pop         ecx
 0053B2F1    pop         ebp
 0053B2F2    ret
*}
end;

//0053B2F4
procedure TMainForm.CheckBoxRangeClick(Sender:TObject);
begin
{*
 0053B2F4    push        ebp
 0053B2F5    mov         ebp,esp
 0053B2F7    add         esp,0FFFFFFF8
 0053B2FA    mov         dword ptr [ebp-8],edx
 0053B2FD    mov         dword ptr [ebp-4],eax
 0053B300    mov         eax,dword ptr [ebp-4]
 0053B303    mov         eax,dword ptr [eax+3B8];TMainForm.CheckBoxRange:TCheckBox
 0053B309    mov         edx,dword ptr [eax]
 0053B30B    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053B311    mov         edx,dword ptr [ebp-4]
 0053B314    mov         edx,dword ptr [edx+5E8];TMainForm.?f5E8:TAutoCure
 0053B31A    mov         byte ptr [edx+69],al;TAutoCure.?f69:Boolean
 0053B31D    pop         ecx
 0053B31E    pop         ecx
 0053B31F    pop         ebp
 0053B320    ret
*}
end;

//0053B324
{*procedure TMainForm.ActAutoMeditationExecute(?:?);
begin
 0053B324    push        ebp
 0053B325    mov         ebp,esp
 0053B327    add         esp,0FFFFFFF8
 0053B32A    mov         dword ptr [ebp-8],edx
 0053B32D    mov         dword ptr [ebp-4],eax
 0053B330    mov         eax,dword ptr [ebp-4]
 0053B333    cmp         dword ptr [eax+5E8],0;TMainForm.?f5E8:TAutoCure
>0053B33A    je          0053B35B
 0053B33C    mov         eax,dword ptr [ebp-8]
 0053B33F    mov         edx,dword ptr ds:[4DA510];TAction
 0053B345    call        @AsClass
 0053B34A    mov         dl,byte ptr [eax+69];TAction.FChecked:Boolean
 0053B34D    mov         eax,dword ptr [ebp-4]
 0053B350    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B356    call        00527B7C
 0053B35B    pop         ecx
 0053B35C    pop         ecx
 0053B35D    pop         ebp
 0053B35E    ret
end;*}

//0053B360
{*procedure TMainForm.ActUseMedicinesExecute(?:?);
begin
 0053B360    push        ebp
 0053B361    mov         ebp,esp
 0053B363    add         esp,0FFFFFFF8
 0053B366    mov         dword ptr [ebp-8],edx
 0053B369    mov         dword ptr [ebp-4],eax
 0053B36C    mov         eax,dword ptr [ebp-4]
 0053B36F    cmp         dword ptr [eax+5E8],0;TMainForm.?f5E8:TAutoCure
>0053B376    je          0053B3B5
 0053B378    mov         eax,dword ptr [ebp-8]
 0053B37B    mov         edx,dword ptr ds:[4DA510];TAction
 0053B381    call        @AsClass
 0053B386    mov         dl,byte ptr [eax+69];TAction.FChecked:Boolean
 0053B389    mov         eax,dword ptr [ebp-4]
 0053B38C    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B392    call        00527B7C
 0053B397    mov         eax,dword ptr [ebp-4]
 0053B39A    mov         eax,dword ptr [eax+40C];TMainForm.TrackBarMedicines:TTrackBar
 0053B3A0    mov         dx,word ptr [eax+228];TTrackBar.Position:Integer
 0053B3A7    mov         eax,dword ptr [ebp-4]
 0053B3AA    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B3B0    call        00527B40
 0053B3B5    pop         ecx
 0053B3B6    pop         ecx
 0053B3B7    pop         ebp
 0053B3B8    ret
end;*}

//0053B3BC
{*procedure TMainForm.TrackBarMedicinesChange(?:?);
begin
 0053B3BC    push        ebp
 0053B3BD    mov         ebp,esp
 0053B3BF    add         esp,0FFFFFFF8
 0053B3C2    mov         dword ptr [ebp-8],edx
 0053B3C5    mov         dword ptr [ebp-4],eax
 0053B3C8    mov         eax,dword ptr [ebp-4]
 0053B3CB    cmp         dword ptr [eax+5E8],0;TMainForm.?f5E8:TAutoCure
>0053B3D2    je          0053B3F2
 0053B3D4    mov         eax,dword ptr [ebp-4]
 0053B3D7    mov         eax,dword ptr [eax+40C];TMainForm.TrackBarMedicines:TTrackBar
 0053B3DD    mov         dx,word ptr [eax+228];TTrackBar.Position:Integer
 0053B3E4    mov         eax,dword ptr [ebp-4]
 0053B3E7    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B3ED    call        00527B40
 0053B3F2    pop         ecx
 0053B3F3    pop         ecx
 0053B3F4    pop         ebp
 0053B3F5    ret
end;*}

//0053B3F8
procedure TMainForm.ChkBoxCureG1OnlyClick(Sender:TObject);
begin
{*
 0053B3F8    push        ebp
 0053B3F9    mov         ebp,esp
 0053B3FB    add         esp,0FFFFFFF8
 0053B3FE    mov         dword ptr [ebp-8],edx
 0053B401    mov         dword ptr [ebp-4],eax
 0053B404    mov         eax,dword ptr [ebp-4]
 0053B407    mov         eax,dword ptr [eax+450];TMainForm.ChkBoxCureG1Only:TCheckBox
 0053B40D    mov         edx,dword ptr [eax]
 0053B40F    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053B415    mov         edx,dword ptr [ebp-4]
 0053B418    mov         edx,dword ptr [edx+5E8];TMainForm.?f5E8:TAutoCure
 0053B41E    mov         byte ptr [edx+71],al;TAutoCure.?f71:Boolean
 0053B421    pop         ecx
 0053B422    pop         ecx
 0053B423    pop         ebp
 0053B424    ret
*}
end;

//0053B428
{*procedure TMainForm.SpinEditCureRangeChange(?:?);
begin
 0053B428    push        ebp
 0053B429    mov         ebp,esp
 0053B42B    add         esp,0FFFFFFF4
 0053B42E    mov         dword ptr [ebp-8],edx
 0053B431    mov         dword ptr [ebp-4],eax
 0053B434    mov         eax,dword ptr [ebp-4]
 0053B437    mov         eax,dword ptr [eax+3DC];TMainForm.SpinEditCureRange:TSpinEdit
 0053B43D    call        TSpinEdit.GetValue
 0053B442    mov         dword ptr [ebp-0C],eax
 0053B445    fild        dword ptr [ebp-0C]
 0053B448    mov         eax,dword ptr [ebp-4]
 0053B44B    mov         eax,dword ptr [eax+5E8];TMainForm.?f5E8:TAutoCure
 0053B451    fstp        qword ptr [eax+78];TAutoCure.?f78:Double
 0053B454    wait
 0053B455    mov         esp,ebp
 0053B457    pop         ebp
 0053B458    ret
end;*}

//0053B45C
procedure TMainForm.BtnStartThreadAutoSpleshClick(Sender:TObject);
begin
{*
 0053B45C    push        ebp
 0053B45D    mov         ebp,esp
 0053B45F    add         esp,0FFFFFFF8
 0053B462    mov         dword ptr [ebp-8],edx
 0053B465    mov         dword ptr [ebp-4],eax
 0053B468    mov         dl,1
 0053B46A    mov         eax,dword ptr [ebp-4]
 0053B46D    mov         eax,dword ptr [eax+32C];TMainForm.SBSplashEnabled:TSpeedButton
 0053B473    mov         ecx,dword ptr [eax]
 0053B475    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B478    mov         dl,1
 0053B47A    mov         eax,dword ptr [ebp-4]
 0053B47D    mov         eax,dword ptr [eax+330];TMainForm.SBSplashDisabled:TSpeedButton
 0053B483    mov         ecx,dword ptr [eax]
 0053B485    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B488    mov         eax,dword ptr [ebp-4]
 0053B48B    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053B491    push        eax
 0053B492    mov         eax,dword ptr [ebp-4]
 0053B495    mov         eax,dword ptr [eax+5C8];TMainForm.?f5C8:TMonsters
 0053B49B    push        eax
 0053B49C    mov         eax,dword ptr [ebp-4]
 0053B49F    mov         eax,dword ptr [eax+5D4];TMainForm.?f5D4:TParty
 0053B4A5    push        eax
 0053B4A6    mov         eax,dword ptr [ebp-4]
 0053B4A9    mov         ecx,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 0053B4AF    mov         dl,1
 0053B4B1    mov         eax,[00527BD0];TAutoSplash
 0053B4B6    call        TAutoSplash.Create;TAutoSplash.Create
 0053B4BB    mov         edx,dword ptr [ebp-4]
 0053B4BE    mov         dword ptr [edx+5F0],eax;TMainForm.?f5F0:TAutoSplash
 0053B4C4    mov         eax,dword ptr [ebp-4]
 0053B4C7    mov         eax,dword ptr [eax+5F0];TMainForm.?f5F0:TAutoSplash
 0053B4CD    mov         byte ptr [eax+70],1;TAutoSplash.?f70:Boolean
 0053B4D1    mov         eax,dword ptr [ebp-4]
 0053B4D4    mov         eax,dword ptr [eax+5F0];TMainForm.?f5F0:TAutoSplash
 0053B4DA    mov         byte ptr [eax+71],1;TAutoSplash.?f71:Boolean
 0053B4DE    mov         eax,dword ptr [ebp-4]
 0053B4E1    mov         eax,dword ptr [eax+5F0];TMainForm.?f5F0:TAutoSplash
 0053B4E7    mov         byte ptr [eax+5E],1;TAutoSplash.?f5E:byte
 0053B4EB    mov         eax,dword ptr [ebp-4]
 0053B4EE    mov         eax,dword ptr [eax+5F0];TMainForm.?f5F0:TAutoSplash
 0053B4F4    call        00482E08
 0053B4F9    xor         edx,edx
 0053B4FB    mov         eax,dword ptr [ebp-4]
 0053B4FE    mov         eax,dword ptr [eax+334];TMainForm.BtnStartThreadAutoSplesh:TButton
 0053B504    mov         ecx,dword ptr [eax]
 0053B506    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B509    pop         ecx
 0053B50A    pop         ecx
 0053B50B    pop         ebp
 0053B50C    ret
*}
end;

//0053B510
procedure TMainForm.SBSplashEnabledClick(Sender:TObject);
begin
{*
 0053B510    push        ebp
 0053B511    mov         ebp,esp
 0053B513    add         esp,0FFFFFFF8
 0053B516    mov         dword ptr [ebp-8],edx
 0053B519    mov         dword ptr [ebp-4],eax
 0053B51C    mov         eax,dword ptr [ebp-4]
 0053B51F    mov         eax,dword ptr [eax+5F0];TMainForm.?f5F0:TAutoSplash
 0053B525    mov         byte ptr [eax+5E],1;TAutoSplash.?f5E:byte
 0053B529    pop         ecx
 0053B52A    pop         ecx
 0053B52B    pop         ebp
 0053B52C    ret
*}
end;

//0053B530
procedure TMainForm.SBSplashDisabledClick(Sender:TObject);
begin
{*
 0053B530    push        ebp
 0053B531    mov         ebp,esp
 0053B533    add         esp,0FFFFFFF8
 0053B536    mov         dword ptr [ebp-8],edx
 0053B539    mov         dword ptr [ebp-4],eax
 0053B53C    mov         eax,dword ptr [ebp-4]
 0053B53F    mov         eax,dword ptr [eax+5F0];TMainForm.?f5F0:TAutoSplash
 0053B545    mov         byte ptr [eax+5E],0;TAutoSplash.?f5E:byte
 0053B549    pop         ecx
 0053B54A    pop         ecx
 0053B54B    pop         ebp
 0053B54C    ret
*}
end;

//0053B550
procedure TMainForm.ChkBoxMeditationClick(Sender:TObject);
begin
{*
 0053B550    push        ebp
 0053B551    mov         ebp,esp
 0053B553    add         esp,0FFFFFFF8
 0053B556    mov         dword ptr [ebp-8],edx
 0053B559    mov         dword ptr [ebp-4],eax
 0053B55C    mov         eax,dword ptr [ebp-4]
 0053B55F    mov         eax,dword ptr [eax+338];TMainForm.ChkBoxMeditation:TCheckBox
 0053B565    mov         edx,dword ptr [eax]
 0053B567    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053B56D    mov         edx,dword ptr [ebp-4]
 0053B570    mov         edx,dword ptr [edx+5F0];TMainForm.?f5F0:TAutoSplash
 0053B576    mov         byte ptr [edx+70],al;TAutoSplash.?f70:Boolean
 0053B579    pop         ecx
 0053B57A    pop         ecx
 0053B57B    pop         ebp
 0053B57C    ret
*}
end;

//0053B580
procedure TMainForm.ChkBoxBeheadClick(Sender:TObject);
begin
{*
 0053B580    push        ebp
 0053B581    mov         ebp,esp
 0053B583    add         esp,0FFFFFFF8
 0053B586    mov         dword ptr [ebp-8],edx
 0053B589    mov         dword ptr [ebp-4],eax
 0053B58C    mov         eax,dword ptr [ebp-4]
 0053B58F    mov         eax,dword ptr [eax+33C];TMainForm.ChkBoxBehead:TCheckBox
 0053B595    mov         edx,dword ptr [eax]
 0053B597    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 0053B59D    mov         edx,dword ptr [ebp-4]
 0053B5A0    mov         edx,dword ptr [edx+5F0];TMainForm.?f5F0:TAutoSplash
 0053B5A6    mov         byte ptr [edx+71],al;TAutoSplash.?f71:Boolean
 0053B5A9    pop         ecx
 0053B5AA    pop         ecx
 0053B5AB    pop         ebp
 0053B5AC    ret
*}
end;

//0053B5B0
{*procedure TMainForm.TrackBarBeheadAggroChange(?:?);
begin
 0053B5B0    push        ebp
 0053B5B1    mov         ebp,esp
 0053B5B3    add         esp,0FFFFFFF8
 0053B5B6    mov         dword ptr [ebp-8],edx
 0053B5B9    mov         dword ptr [ebp-4],eax
 0053B5BC    mov         eax,dword ptr [ebp-4]
 0053B5BF    mov         eax,dword ptr [eax+448];TMainForm.TrackBarBeheadAggro:TTrackBar
 0053B5C5    mov         dl,byte ptr [eax+228];TTrackBar.Position:Integer
 0053B5CB    mov         eax,dword ptr [ebp-4]
 0053B5CE    mov         eax,dword ptr [eax+5F0];TMainForm.?f5F0:TAutoSplash
 0053B5D4    call        0052820C
 0053B5D9    pop         ecx
 0053B5DA    pop         ecx
 0053B5DB    pop         ebp
 0053B5DC    ret
end;*}

//0053B5E0
{*procedure TMainForm.ActSendChatToServerExecute(?:?);
begin
 0053B5E0    push        ebp
 0053B5E1    mov         ebp,esp
 0053B5E3    add         esp,0FFFFFFF4
 0053B5E6    xor         ecx,ecx
 0053B5E8    mov         dword ptr [ebp-0C],ecx
 0053B5EB    mov         dword ptr [ebp-8],edx
 0053B5EE    mov         dword ptr [ebp-4],eax
 0053B5F1    xor         eax,eax
 0053B5F3    push        ebp
 0053B5F4    push        53B646
 0053B5F9    push        dword ptr fs:[eax]
 0053B5FC    mov         dword ptr fs:[eax],esp
 0053B5FF    mov         eax,dword ptr [ebp-4]
 0053B602    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053B608    cmp         dword ptr [eax+40],0;TPlayers.?f40:dword
>0053B60C    je          0053B630
 0053B60E    lea         edx,[ebp-0C]
 0053B611    mov         eax,dword ptr [ebp-4]
 0053B614    mov         eax,dword ptr [eax+508];TMainForm.EditChatMessage:TEdit
 0053B61A    call        TControl.GetText
 0053B61F    mov         edx,dword ptr [ebp-0C]
 0053B622    mov         eax,dword ptr [ebp-4]
 0053B625    mov         eax,dword ptr [eax+5C0];TMainForm.?f5C0:TChatManager
 0053B62B    call        00521BA0
 0053B630    xor         eax,eax
 0053B632    pop         edx
 0053B633    pop         ecx
 0053B634    pop         ecx
 0053B635    mov         dword ptr fs:[eax],edx
 0053B638    push        53B64D
 0053B63D    lea         eax,[ebp-0C]
 0053B640    call        @LStrClr
 0053B645    ret
>0053B646    jmp         @HandleFinally
>0053B64B    jmp         0053B63D
 0053B64D    mov         esp,ebp
 0053B64F    pop         ebp
 0053B650    ret
end;*}

//0053BBD4
{*procedure TMainForm.EditChatMessageChange(?:?);
begin
 0053BBD4    push        ebp
 0053BBD5    mov         ebp,esp
 0053BBD7    add         esp,0FFFFFFE8
 0053BBDA    xor         ecx,ecx
 0053BBDC    mov         dword ptr [ebp-0C],ecx
 0053BBDF    mov         dword ptr [ebp-18],ecx
 0053BBE2    mov         dword ptr [ebp-8],edx
 0053BBE5    mov         dword ptr [ebp-4],eax
 0053BBE8    xor         eax,eax
 0053BBEA    push        ebp
 0053BBEB    push        53BC58
 0053BBF0    push        dword ptr fs:[eax]
 0053BBF3    mov         dword ptr fs:[eax],esp
 0053BBF6    lea         eax,[ebp-0C]
 0053BBF9    push        eax
 0053BBFA    lea         edx,[ebp-18]
 0053BBFD    mov         eax,dword ptr [ebp-4]
 0053BC00    mov         eax,dword ptr [eax+508];TMainForm.EditChatMessage:TEdit
 0053BC06    call        TControl.GetText
 0053BC0B    mov         eax,dword ptr [ebp-18]
 0053BC0E    call        @DynArrayLength
 0053BC13    mov         dword ptr [ebp-14],eax
 0053BC16    mov         byte ptr [ebp-10],0
 0053BC1A    lea         edx,[ebp-14]
 0053BC1D    xor         ecx,ecx
 0053BC1F    mov         eax,53BC6C;'Character count: %d / 127'
 0053BC24    call        Format
 0053BC29    mov         edx,dword ptr [ebp-0C]
 0053BC2C    mov         eax,dword ptr [ebp-4]
 0053BC2F    mov         eax,dword ptr [eax+56C];TMainForm.LblChatMessageLen:TLabel
 0053BC35    call        TControl.SetText
 0053BC3A    xor         eax,eax
 0053BC3C    pop         edx
 0053BC3D    pop         ecx
 0053BC3E    pop         ecx
 0053BC3F    mov         dword ptr fs:[eax],edx
 0053BC42    push        53BC5F
 0053BC47    lea         eax,[ebp-18]
 0053BC4A    call        @LStrClr
 0053BC4F    lea         eax,[ebp-0C]
 0053BC52    call        @LStrClr
 0053BC57    ret
>0053BC58    jmp         @HandleFinally
>0053BC5D    jmp         0053BC47
 0053BC5F    mov         esp,ebp
 0053BC61    pop         ebp
 0053BC62    ret
end;*}

//0053BC88
procedure TMainForm.ActReloadLocationListExecute(?:TMainForm);
begin
{*
 0053BC88    push        ebp
 0053BC89    mov         ebp,esp
 0053BC8B    add         esp,0FFFFFFF8
 0053BC8E    mov         dword ptr [ebp-8],edx
 0053BC91    mov         dword ptr [ebp-4],eax
 0053BC94    mov         eax,dword ptr [ebp-4]
 0053BC97    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053BC9D    mov         edx,dword ptr [eax]
 0053BC9F    call        dword ptr [edx+0D8];TCustomListBox.Clear
 0053BCA5    mov         eax,dword ptr [ebp-4]
 0053BCA8    mov         eax,dword ptr [eax+5E0];TMainForm.?f5E0:TFastWalkLocationsList
 0053BCAE    call        00530640
 0053BCB3    mov         eax,dword ptr [ebp-4]
 0053BCB6    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053BCBC    mov         edx,dword ptr [eax+218];TListBox.FItems:TStrings
 0053BCC2    mov         eax,dword ptr [ebp-4]
 0053BCC5    mov         eax,dword ptr [eax+5E0];TMainForm.?f5E0:TFastWalkLocationsList
 0053BCCB    call        0053051C
 0053BCD0    pop         ecx
 0053BCD1    pop         ecx
 0053BCD2    pop         ebp
 0053BCD3    ret
*}
end;

//0053BCD4
{*procedure TMainForm.ActStartWalkThreadExecute(?:?);
begin
 0053BCD4    push        ebp
 0053BCD5    mov         ebp,esp
 0053BCD7    add         esp,0FFFFFFE4
 0053BCDA    mov         dword ptr [ebp-8],edx
 0053BCDD    mov         dword ptr [ebp-4],eax
 0053BCE0    lea         eax,[ebp-1C]
 0053BCE3    mov         edx,dword ptr ds:[52FD08];TSinglePlace
 0053BCE9    call        @AddRefRecord
 0053BCEE    xor         eax,eax
 0053BCF0    push        ebp
 0053BCF1    push        53BDB8
 0053BCF6    push        dword ptr fs:[eax]
 0053BCF9    mov         dword ptr fs:[eax],esp
 0053BCFC    mov         eax,dword ptr [ebp-4]
 0053BCFF    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053BD05    mov         edx,dword ptr [eax]
 0053BD07    call        dword ptr [edx+0CC];TListBox.sub_004C1A60
 0053BD0D    mov         edx,eax
 0053BD0F    lea         ecx,[ebp-1C]
 0053BD12    mov         eax,dword ptr [ebp-4]
 0053BD15    mov         eax,dword ptr [eax+5E0];TMainForm.?f5E0:TFastWalkLocationsList
 0053BD1B    call        005304EC
 0053BD20    xor         eax,eax
 0053BD22    mov         al,byte ptr [ebp-1C]
 0053BD25    mov         edx,dword ptr [ebp-4]
 0053BD28    mov         edx,dword ptr [edx+5DC];TMainForm.?f5DC:TGameSession
 0053BD2E    cmp         eax,dword ptr [edx+14];TGameSession.?f14:dword
>0053BD31    jne         0053BD9C
 0053BD33    mov         eax,dword ptr [ebp-4]
 0053BD36    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053BD3C    push        eax
 0053BD3D    mov         eax,dword ptr [ebp-4]
 0053BD40    mov         eax,dword ptr [eax+5DC];TMainForm.?f5DC:TGameSession
 0053BD46    push        eax
 0053BD47    push        16
 0053BD49    mov         eax,dword ptr [ebp-4]
 0053BD4C    mov         ecx,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 0053BD52    mov         dl,1
 0053BD54    mov         eax,[0052FDDC];TAutoFastWalking
 0053BD59    call        TAutoFastWalking.Create;TAutoFastWalking.Create
 0053BD5E    mov         edx,dword ptr [ebp-4]
 0053BD61    mov         dword ptr [edx+5E4],eax;TMainForm.?f5E4:TAutoFastWalking
 0053BD67    mov         eax,dword ptr [ebp-4]
 0053BD6A    mov         eax,dword ptr [eax+5E4];TMainForm.?f5E4:TAutoFastWalking
 0053BD70    mov         edx,dword ptr [ebp-4]
 0053BD73    mov         dword ptr [eax+74],edx;TAutoFastWalking.?f74:TMainForm
 0053BD76    mov         dword ptr [eax+70],53BE74;TAutoFastWalking.?f70:dword sub_0053BE74
 0053BD7D    lea         edx,[ebp-1C]
 0053BD80    mov         eax,dword ptr [ebp-4]
 0053BD83    mov         eax,dword ptr [eax+5E4];TMainForm.?f5E4:TAutoFastWalking
 0053BD89    call        00530318
 0053BD8E    mov         eax,dword ptr [ebp-4]
 0053BD91    mov         eax,dword ptr [eax+5E4];TMainForm.?f5E4:TAutoFastWalking
 0053BD97    call        00482E08
 0053BD9C    xor         eax,eax
 0053BD9E    pop         edx
 0053BD9F    pop         ecx
 0053BDA0    pop         ecx
 0053BDA1    mov         dword ptr fs:[eax],edx
 0053BDA4    push        53BDBF
 0053BDA9    lea         eax,[ebp-1C]
 0053BDAC    mov         edx,dword ptr ds:[52FD08];TSinglePlace
 0053BDB2    call        @FinalizeRecord
 0053BDB7    ret
>0053BDB8    jmp         @HandleFinally
>0053BDBD    jmp         0053BDA9
 0053BDBF    mov         esp,ebp
 0053BDC1    pop         ebp
 0053BDC2    ret
end;*}

//0053BDC4
{*procedure TMainForm.ActStartWalkThreadUpdate(?:?);
begin
 0053BDC4    push        ebp
 0053BDC5    mov         ebp,esp
 0053BDC7    xor         ecx,ecx
 0053BDC9    push        ecx
 0053BDCA    push        ecx
 0053BDCB    push        ecx
 0053BDCC    push        ecx
 0053BDCD    push        ecx
 0053BDCE    push        ecx
 0053BDCF    push        ecx
 0053BDD0    push        ecx
 0053BDD1    mov         dword ptr [ebp-8],edx
 0053BDD4    mov         dword ptr [ebp-4],eax
 0053BDD7    xor         eax,eax
 0053BDD9    push        ebp
 0053BDDA    push        53BE69
 0053BDDF    push        dword ptr fs:[eax]
 0053BDE2    mov         dword ptr fs:[eax],esp
 0053BDE5    mov         eax,dword ptr [ebp-4]
 0053BDE8    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053BDEE    mov         edx,dword ptr [eax]
 0053BDF0    call        dword ptr [edx+0CC];TListBox.sub_004C1A60
 0053BDF6    mov         dword ptr [ebp-0C],eax
 0053BDF9    cmp         dword ptr [ebp-0C],0
>0053BDFD    jl          0053BE32
 0053BDFF    lea         ecx,[ebp-20]
 0053BE02    mov         edx,dword ptr [ebp-0C]
 0053BE05    mov         eax,dword ptr [ebp-4]
 0053BE08    mov         eax,dword ptr [eax+5E0];TMainForm.?f5E0:TFastWalkLocationsList
 0053BE0E    call        005304EC
 0053BE13    xor         eax,eax
 0053BE15    mov         al,byte ptr [ebp-20]
 0053BE18    mov         edx,dword ptr [ebp-4]
 0053BE1B    mov         edx,dword ptr [edx+5DC];TMainForm.?f5DC:TGameSession
 0053BE21    cmp         eax,dword ptr [edx+14];TGameSession.?f14:dword
>0053BE24    jne         0053BE32
 0053BE26    mov         eax,dword ptr [ebp-4]
 0053BE29    cmp         dword ptr [eax+5E4],0;TMainForm.?f5E4:TAutoFastWalking
>0053BE30    je          0053BE36
 0053BE32    xor         eax,eax
>0053BE34    jmp         0053BE38
 0053BE36    mov         al,1
 0053BE38    push        eax
 0053BE39    mov         eax,dword ptr [ebp-8]
 0053BE3C    mov         edx,dword ptr ds:[4DA510];TAction
 0053BE42    call        @AsClass
 0053BE47    pop         edx
 0053BE48    call        TVirtualListAction.SetEnabled
 0053BE4D    xor         eax,eax
 0053BE4F    pop         edx
 0053BE50    pop         ecx
 0053BE51    pop         ecx
 0053BE52    mov         dword ptr fs:[eax],edx
 0053BE55    push        53BE70
 0053BE5A    lea         eax,[ebp-20]
 0053BE5D    mov         edx,dword ptr ds:[52FD08];TSinglePlace
 0053BE63    call        @FinalizeRecord
 0053BE68    ret
>0053BE69    jmp         @HandleFinally
>0053BE6E    jmp         0053BE5A
 0053BE70    mov         esp,ebp
 0053BE72    pop         ebp
 0053BE73    ret
end;*}

//0053BE74
{*procedure sub_0053BE74(?:?; ?:?; ?:?; ?:?);
begin
 0053BE74    push        ebp
 0053BE75    mov         ebp,esp
 0053BE77    add         esp,0FFFFFFF4
 0053BE7A    mov         dword ptr [ebp-0C],ecx
 0053BE7D    mov         dword ptr [ebp-8],edx
 0053BE80    mov         dword ptr [ebp-4],eax
 0053BE83    mov         al,byte ptr [ebp+8]
 0053BE86    dec         al
>0053BE88    je          0053BE94
 0053BE8A    dec         al
>0053BE8C    je          0053BEB8
 0053BE8E    dec         al
>0053BE90    je          0053BEDF
>0053BE92    jmp         0053BF04
 0053BE94    mov         edx,dword ptr [ebp-0C]
 0053BE97    mov         eax,dword ptr [ebp-4]
 0053BE9A    mov         eax,dword ptr [eax+598]
 0053BEA0    call        TGauge.SetMaxValue
 0053BEA5    mov         edx,dword ptr [ebp-8]
 0053BEA8    mov         eax,dword ptr [ebp-4]
 0053BEAB    mov         eax,dword ptr [eax+598]
 0053BEB1    call        TGauge.SetProgress
>0053BEB6    jmp         0053BF04
 0053BEB8    mov         eax,dword ptr [ebp-4]
 0053BEBB    xor         edx,edx
 0053BEBD    mov         dword ptr [eax+5E4],edx
 0053BEC3    xor         edx,edx
 0053BEC5    mov         eax,dword ptr [ebp-4]
 0053BEC8    mov         eax,dword ptr [eax+598]
 0053BECE    call        TGauge.SetProgress
 0053BED3    mov         eax,53BF14;'Done - Now relog'
 0053BED8    call        00495128
>0053BEDD    jmp         0053BF04
 0053BEDF    mov         eax,dword ptr [ebp-4]
 0053BEE2    xor         edx,edx
 0053BEE4    mov         dword ptr [eax+5E4],edx
 0053BEEA    xor         edx,edx
 0053BEEC    mov         eax,dword ptr [ebp-4]
 0053BEEF    mov         eax,dword ptr [eax+598]
 0053BEF5    call        TGauge.SetProgress
 0053BEFA    mov         eax,53BF30;'Stopped - you are in deep space now...'
 0053BEFF    call        00495128
 0053BF04    mov         esp,ebp
 0053BF06    pop         ebp
 0053BF07    ret         4
end;*}

//0053BF58
{*procedure TMainForm.ActBreakFastWalkingThreadExecute(?:?);
begin
 0053BF58    push        ebp
 0053BF59    mov         ebp,esp
 0053BF5B    add         esp,0FFFFFFF8
 0053BF5E    mov         dword ptr [ebp-8],edx
 0053BF61    mov         dword ptr [ebp-4],eax
 0053BF64    mov         eax,dword ptr [ebp-4]
 0053BF67    cmp         dword ptr [eax+5E4],0;TMainForm.?f5E4:TAutoFastWalking
>0053BF6E    je          0053BF89
 0053BF70    mov         eax,dword ptr [ebp-4]
 0053BF73    mov         eax,dword ptr [eax+5E4];TMainForm.?f5E4:TAutoFastWalking
 0053BF79    call        00482E40
 0053BF7E    mov         eax,dword ptr [ebp-4]
 0053BF81    xor         edx,edx
 0053BF83    mov         dword ptr [eax+5E4],edx;TMainForm.?f5E4:TAutoFastWalking
 0053BF89    pop         ecx
 0053BF8A    pop         ecx
 0053BF8B    pop         ebp
 0053BF8C    ret
end;*}

//0053BF90
{*procedure TMainForm.ActBreakFastWalkingThreadUpdate(?:?);
begin
 0053BF90    push        ebp
 0053BF91    mov         ebp,esp
 0053BF93    add         esp,0FFFFFFF8
 0053BF96    mov         dword ptr [ebp-8],edx
 0053BF99    mov         dword ptr [ebp-4],eax
 0053BF9C    mov         eax,dword ptr [ebp-8]
 0053BF9F    mov         edx,dword ptr ds:[4DA510];TAction
 0053BFA5    call        @AsClass
 0053BFAA    mov         edx,dword ptr [ebp-4]
 0053BFAD    cmp         dword ptr [edx+5E4],0;TMainForm.?f5E4:TAutoFastWalking
 0053BFB4    setne       dl
 0053BFB7    call        TVirtualListAction.SetEnabled
 0053BFBC    pop         ecx
 0053BFBD    pop         ecx
 0053BFBE    pop         ebp
 0053BFBF    ret
end;*}

//0053BFC0
{*procedure TMainForm.ActAddLocationExecute(?:?);
begin
 0053BFC0    push        ebp
 0053BFC1    mov         ebp,esp
 0053BFC3    add         esp,0FFFFFFE0
 0053BFC6    mov         dword ptr [ebp-0C],edx
 0053BFC9    mov         dword ptr [ebp-4],eax
 0053BFCC    lea         eax,[ebp-20]
 0053BFCF    mov         edx,dword ptr ds:[52FD08];TSinglePlace
 0053BFD5    call        @AddRefRecord
 0053BFDA    xor         eax,eax
 0053BFDC    push        ebp
 0053BFDD    push        53C0C8
 0053BFE2    push        dword ptr fs:[eax]
 0053BFE5    mov         dword ptr fs:[eax],esp
 0053BFE8    mov         eax,dword ptr [ebp-4]
 0053BFEB    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053BFF1    push        eax
 0053BFF2    mov         eax,dword ptr [ebp-4]
 0053BFF5    mov         eax,dword ptr [eax+5DC];TMainForm.?f5DC:TGameSession
 0053BFFB    push        eax
 0053BFFC    mov         ecx,dword ptr [ebp-4]
 0053BFFF    mov         dl,1
 0053C001    mov         eax,[0052F83C];TFormAddLocation
 0053C006    call        TFormAddLocation.Create;TFormAddLocation.Create
 0053C00B    mov         dword ptr [ebp-8],eax
 0053C00E    xor         eax,eax
 0053C010    push        ebp
 0053C011    push        53C0A5
 0053C016    push        dword ptr fs:[eax]
 0053C019    mov         dword ptr fs:[eax],esp
 0053C01C    mov         eax,dword ptr [ebp-8]
 0053C01F    mov         edx,dword ptr [eax]
 0053C021    call        dword ptr [edx+0EC];TFormAddLocation.sub_004EECA0
 0053C027    mov         eax,dword ptr [ebp-8]
 0053C02A    cmp         dword ptr [eax+24C],1;TFormAddLocation.FModalResult:TModalResult
>0053C031    jne         0053C08F
 0053C033    lea         edx,[ebp-20]
 0053C036    mov         eax,dword ptr [ebp-8]
 0053C039    call        0052FB5C
 0053C03E    test        al,al
>0053C040    je          0053C08F
 0053C042    mov         eax,dword ptr [ebp-4]
 0053C045    mov         eax,dword ptr [eax+5E0];TMainForm.?f5E0:TFastWalkLocationsList
 0053C04B    lea         edx,[ebp-20]
 0053C04E    call        00530388
 0053C053    mov         eax,dword ptr [ebp-4]
 0053C056    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053C05C    mov         edx,dword ptr [eax]
 0053C05E    call        dword ptr [edx+0D8];TCustomListBox.Clear
 0053C064    mov         eax,dword ptr [ebp-4]
 0053C067    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053C06D    mov         edx,dword ptr [eax+218];TListBox.FItems:TStrings
 0053C073    mov         eax,dword ptr [ebp-4]
 0053C076    mov         eax,dword ptr [eax+5E0];TMainForm.?f5E0:TFastWalkLocationsList
 0053C07C    call        0053051C
 0053C081    mov         eax,dword ptr [ebp-4]
 0053C084    mov         eax,dword ptr [eax+5E0];TMainForm.?f5E0:TFastWalkLocationsList
 0053C08A    call        0053076C
 0053C08F    xor         eax,eax
 0053C091    pop         edx
 0053C092    pop         ecx
 0053C093    pop         ecx
 0053C094    mov         dword ptr fs:[eax],edx
 0053C097    push        53C0AC
 0053C09C    mov         eax,dword ptr [ebp-8]
 0053C09F    call        TObject.Free
 0053C0A4    ret
>0053C0A5    jmp         @HandleFinally
>0053C0AA    jmp         0053C09C
 0053C0AC    xor         eax,eax
 0053C0AE    pop         edx
 0053C0AF    pop         ecx
 0053C0B0    pop         ecx
 0053C0B1    mov         dword ptr fs:[eax],edx
 0053C0B4    push        53C0CF
 0053C0B9    lea         eax,[ebp-20]
 0053C0BC    mov         edx,dword ptr ds:[52FD08];TSinglePlace
 0053C0C2    call        @FinalizeRecord
 0053C0C7    ret
>0053C0C8    jmp         @HandleFinally
>0053C0CD    jmp         0053C0B9
 0053C0CF    mov         esp,ebp
 0053C0D1    pop         ebp
 0053C0D2    ret
end;*}

//0053C0D4
{*procedure TMainForm.ActDeleteLocationUpdate(?:?);
begin
 0053C0D4    push        ebp
 0053C0D5    mov         ebp,esp
 0053C0D7    add         esp,0FFFFFFF8
 0053C0DA    mov         dword ptr [ebp-8],edx
 0053C0DD    mov         dword ptr [ebp-4],eax
 0053C0E0    mov         eax,dword ptr [ebp-4]
 0053C0E3    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053C0E9    mov         edx,dword ptr [eax]
 0053C0EB    call        dword ptr [edx+0CC];TListBox.sub_004C1A60
 0053C0F1    test        eax,eax
 0053C0F3    setge       dl
 0053C0F6    mov         eax,dword ptr [ebp-4]
 0053C0F9    mov         eax,dword ptr [eax+538];TMainForm.ActDeleteLocation:TAction
 0053C0FF    call        TVirtualListAction.SetEnabled
 0053C104    pop         ecx
 0053C105    pop         ecx
 0053C106    pop         ebp
 0053C107    ret
end;*}

//0053C108
{*procedure TMainForm.ActDeleteLocationExecute(?:?);
begin
 0053C108    push        ebp
 0053C109    mov         ebp,esp
 0053C10B    add         esp,0FFFFFFF8
 0053C10E    mov         dword ptr [ebp-8],edx
 0053C111    mov         dword ptr [ebp-4],eax
 0053C114    mov         eax,dword ptr [ebp-4]
 0053C117    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053C11D    mov         edx,dword ptr [eax]
 0053C11F    call        dword ptr [edx+0CC];TListBox.sub_004C1A60
 0053C125    test        eax,eax
>0053C127    jl          0053C186
 0053C129    mov         eax,dword ptr [ebp-4]
 0053C12C    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053C132    mov         edx,dword ptr [eax]
 0053C134    call        dword ptr [edx+0CC];TListBox.sub_004C1A60
 0053C13A    mov         edx,eax
 0053C13C    mov         eax,dword ptr [ebp-4]
 0053C13F    mov         eax,dword ptr [eax+5E0];TMainForm.?f5E0:TFastWalkLocationsList
 0053C145    call        00530908
 0053C14A    mov         eax,dword ptr [ebp-4]
 0053C14D    mov         eax,dword ptr [eax+5E0];TMainForm.?f5E0:TFastWalkLocationsList
 0053C153    call        0053076C
 0053C158    mov         eax,dword ptr [ebp-4]
 0053C15B    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053C161    mov         edx,dword ptr [eax]
 0053C163    call        dword ptr [edx+0D8];TCustomListBox.Clear
 0053C169    mov         eax,dword ptr [ebp-4]
 0053C16C    mov         eax,dword ptr [eax+5A0];TMainForm.ListBoxSavedLocations:TListBox
 0053C172    mov         edx,dword ptr [eax+218];TListBox.FItems:TStrings
 0053C178    mov         eax,dword ptr [ebp-4]
 0053C17B    mov         eax,dword ptr [eax+5E0];TMainForm.?f5E0:TFastWalkLocationsList
 0053C181    call        0053051C
 0053C186    pop         ecx
 0053C187    pop         ecx
 0053C188    pop         ebp
 0053C189    ret
end;*}

//0053C18C
{*procedure TMainForm.ActSaveRevivalPointExecute(?:?);
begin
 0053C18C    push        ebp
 0053C18D    mov         ebp,esp
 0053C18F    add         esp,0FFFFFFF0
 0053C192    xor         ecx,ecx
 0053C194    mov         dword ptr [ebp-8],ecx
 0053C197    mov         dword ptr [ebp-10],edx
 0053C19A    mov         dword ptr [ebp-4],eax
 0053C19D    xor         eax,eax
 0053C19F    push        ebp
 0053C1A0    push        53C284
 0053C1A5    push        dword ptr fs:[eax]
 0053C1A8    mov         dword ptr fs:[eax],esp
 0053C1AB    push        0
 0053C1AD    lea         eax,[ebp-8]
 0053C1B0    mov         ecx,1
 0053C1B5    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0053C1BB    call        @DynArraySetLength
 0053C1C0    add         esp,4
 0053C1C3    mov         eax,dword ptr [ebp-4]
 0053C1C6    mov         eax,dword ptr [eax+5D0];TMainForm.?f5D0:TNPC
 0053C1CC    call        005222E8
 0053C1D1    mov         dword ptr [ebp-0C],eax
 0053C1D4    cmp         dword ptr [ebp-0C],0
>0053C1D8    je          0053C213
 0053C1DA    mov         eax,dword ptr [ebp-4]
 0053C1DD    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053C1E3    mov         eax,dword ptr [eax+40];TPlayers.?f40:dword
 0053C1E6    lea         edx,[eax+0C]
 0053C1E9    mov         eax,dword ptr [ebp-0C]
 0053C1EC    add         eax,8
 0053C1EF    call        0051F5FC
 0053C1F4    call        @ROUND
 0053C1F9    cmp         edx,0
>0053C1FC    jne         0053C205
 0053C1FE    cmp         eax,3C
>0053C201    jbe         0053C21F
>0053C203    jmp         0053C207
>0053C205    jle         0053C21F
 0053C207    mov         eax,53C298;'You are too far from Statue of Black Crow'
 0053C20C    call        00495128
>0053C211    jmp         0053C268
 0053C213    mov         eax,53C2CC;'Stand near Statue of Black Crow to change revival point!'
 0053C218    call        00495128
>0053C21D    jmp         0053C268
 0053C21F    mov         eax,dword ptr [ebp-4]
 0053C222    mov         eax,dword ptr [eax+578];TMainForm.RGRevivalPoints:TRadioGroup
 0053C228    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>0053C22F    jl          0053C268
 0053C231    lea         ecx,[ebp-8]
 0053C234    mov         eax,dword ptr [ebp-4]
 0053C237    mov         eax,dword ptr [eax+578];TMainForm.RGRevivalPoints:TRadioGroup
 0053C23D    mov         al,byte ptr [eax+218];TRadioGroup.FItemIndex:Integer
 0053C243    mov         edx,dword ptr [ebp-0C]
 0053C246    mov         edx,dword ptr [edx]
 0053C248    call        00521488
 0053C24D    mov         eax,dword ptr [ebp-8]
 0053C250    call        @LStrLen
 0053C255    mov         ecx,eax
 0053C257    mov         edx,dword ptr [ebp-8]
 0053C25A    mov         eax,dword ptr [ebp-4]
 0053C25D    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 0053C263    call        0051FDFC
 0053C268    xor         eax,eax
 0053C26A    pop         edx
 0053C26B    pop         ecx
 0053C26C    pop         ecx
 0053C26D    mov         dword ptr fs:[eax],edx
 0053C270    push        53C28B
 0053C275    lea         eax,[ebp-8]
 0053C278    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0053C27E    call        @DynArrayClear
 0053C283    ret
>0053C284    jmp         @HandleFinally
>0053C289    jmp         0053C275
 0053C28B    mov         esp,ebp
 0053C28D    pop         ebp
 0053C28E    ret
end;*}

//0053C308
{*procedure TMainForm.ActGoToRevivalPointExecute(?:?);
begin
 0053C308    push        ebp
 0053C309    mov         ebp,esp
 0053C30B    add         esp,0FFFFFFF4
 0053C30E    xor         ecx,ecx
 0053C310    mov         dword ptr [ebp-8],ecx
 0053C313    mov         dword ptr [ebp-0C],edx
 0053C316    mov         dword ptr [ebp-4],eax
 0053C319    xor         eax,eax
 0053C31B    push        ebp
 0053C31C    push        53C37E
 0053C321    push        dword ptr fs:[eax]
 0053C324    mov         dword ptr fs:[eax],esp
 0053C327    push        0
 0053C329    lea         eax,[ebp-8]
 0053C32C    mov         ecx,1
 0053C331    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0053C337    call        @DynArraySetLength
 0053C33C    add         esp,4
 0053C33F    lea         eax,[ebp-8]
 0053C342    call        00521500
 0053C347    mov         eax,dword ptr [ebp-8]
 0053C34A    call        @LStrLen
 0053C34F    mov         ecx,eax
 0053C351    mov         edx,dword ptr [ebp-8]
 0053C354    mov         eax,dword ptr [ebp-4]
 0053C357    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 0053C35D    call        0051FDFC
 0053C362    xor         eax,eax
 0053C364    pop         edx
 0053C365    pop         ecx
 0053C366    pop         ecx
 0053C367    mov         dword ptr fs:[eax],edx
 0053C36A    push        53C385
 0053C36F    lea         eax,[ebp-8]
 0053C372    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0053C378    call        @DynArrayClear
 0053C37D    ret
>0053C37E    jmp         @HandleFinally
>0053C383    jmp         0053C36F
 0053C385    mov         esp,ebp
 0053C387    pop         ebp
 0053C388    ret
end;*}

//0053C38C
{*procedure TMainForm.ActSaveRevivalPointUpdate(?:?);
begin
 0053C38C    push        ebp
 0053C38D    mov         ebp,esp
 0053C38F    add         esp,0FFFFFFF8
 0053C392    mov         dword ptr [ebp-8],edx
 0053C395    mov         dword ptr [ebp-4],eax
 0053C398    mov         eax,dword ptr [ebp-4]
 0053C39B    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053C3A1    call        005357D4
 0053C3A6    test        al,al
>0053C3A8    je          0053C3BC
 0053C3AA    mov         eax,dword ptr [ebp-4]
 0053C3AD    mov         eax,dword ptr [eax+578];TMainForm.RGRevivalPoints:TRadioGroup
 0053C3B3    cmp         dword ptr [eax+218],0;TRadioGroup.FItemIndex:Integer
>0053C3BA    jge         0053C3C0
 0053C3BC    xor         edx,edx
>0053C3BE    jmp         0053C3C2
 0053C3C0    mov         dl,1
 0053C3C2    mov         eax,dword ptr [ebp-4]
 0053C3C5    mov         eax,dword ptr [eax+57C];TMainForm.ActSaveRevivalPoint:TAction
 0053C3CB    call        TVirtualListAction.SetEnabled
 0053C3D0    pop         ecx
 0053C3D1    pop         ecx
 0053C3D2    pop         ebp
 0053C3D3    ret
end;*}

//0053C3D4
{*procedure TMainForm.ActGoToRevivalPointUpdate(?:?);
begin
 0053C3D4    push        ebp
 0053C3D5    mov         ebp,esp
 0053C3D7    add         esp,0FFFFFFF8
 0053C3DA    mov         dword ptr [ebp-8],edx
 0053C3DD    mov         dword ptr [ebp-4],eax
 0053C3E0    mov         eax,dword ptr [ebp-4]
 0053C3E3    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053C3E9    call        00535800
 0053C3EE    mov         edx,eax
 0053C3F0    mov         eax,dword ptr [ebp-4]
 0053C3F3    mov         eax,dword ptr [eax+584];TMainForm.ActGoToRevivalPoint:TAction
 0053C3F9    call        TVirtualListAction.SetEnabled
 0053C3FE    pop         ecx
 0053C3FF    pop         ecx
 0053C400    pop         ebp
 0053C401    ret
end;*}

//0053C404
{*procedure TMainForm.ActRadarExecute(?:?);
begin
 0053C404    push        ebp
 0053C405    mov         ebp,esp
 0053C407    add         esp,0FFFFFFF8
 0053C40A    mov         dword ptr [ebp-8],edx
 0053C40D    mov         dword ptr [ebp-4],eax
 0053C410    mov         eax,[0055B104];^gvar_0055E0E8
 0053C415    mov         eax,dword ptr [eax]
 0053C417    call        004EEBD8
 0053C41C    pop         ecx
 0053C41D    pop         ecx
 0053C41E    pop         ebp
 0053C41F    ret
end;*}

//0053C420
{*procedure TMainForm.ActEmergencyEscapeExecute(?:?);
begin
 0053C420    push        ebp
 0053C421    mov         ebp,esp
 0053C423    add         esp,0FFFFFFF4
 0053C426    xor         ecx,ecx
 0053C428    mov         dword ptr [ebp-8],ecx
 0053C42B    mov         dword ptr [ebp-0C],edx
 0053C42E    mov         dword ptr [ebp-4],eax
 0053C431    xor         eax,eax
 0053C433    push        ebp
 0053C434    push        53C4AF
 0053C439    push        dword ptr fs:[eax]
 0053C43C    mov         dword ptr fs:[eax],esp
 0053C43F    lea         ecx,[ebp-8]
 0053C442    mov         eax,dword ptr [ebp-4]
 0053C445    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053C44B    mov         eax,dword ptr [eax+40];TPlayers.?f40:dword
 0053C44E    mov         eax,dword ptr [eax]
 0053C450    mov         dx,0C8
 0053C454    call        00520F3C
 0053C459    mov         eax,dword ptr [ebp-8]
 0053C45C    call        @LStrLen
 0053C461    mov         ecx,eax
 0053C463    mov         edx,dword ptr [ebp-8]
 0053C466    mov         eax,dword ptr [ebp-4]
 0053C469    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 0053C46F    call        0051FF58
 0053C474    push        53C570
 0053C479    push        249F0
 0053C47E    push        113
 0053C483    mov         eax,[0055B4C8];^Application:TApplication
 0053C488    mov         eax,dword ptr [eax]
 0053C48A    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 0053C48D    push        eax
 0053C48E    call        user32.SetTimer
 0053C493    xor         eax,eax
 0053C495    pop         edx
 0053C496    pop         ecx
 0053C497    pop         ecx
 0053C498    mov         dword ptr fs:[eax],edx
 0053C49B    push        53C4B6
 0053C4A0    lea         eax,[ebp-8]
 0053C4A3    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0053C4A9    call        @DynArrayClear
 0053C4AE    ret
>0053C4AF    jmp         @HandleFinally
>0053C4B4    jmp         0053C4A0
 0053C4B6    mov         esp,ebp
 0053C4B8    pop         ebp
 0053C4B9    ret
end;*}

//0053C4BC
{*procedure TMainForm.ActEmergencyEscapeUpdate(?:?);
begin
 0053C4BC    push        ebp
 0053C4BD    mov         ebp,esp
 0053C4BF    add         esp,0FFFFFFF8
 0053C4C2    mov         dword ptr [ebp-8],edx
 0053C4C5    mov         dword ptr [ebp-4],eax
 0053C4C8    mov         eax,dword ptr [ebp-4]
 0053C4CB    mov         eax,dword ptr [eax+5C4];TMainForm.?f5C4:TPlayers
 0053C4D1    call        00535800
 0053C4D6    mov         edx,eax
 0053C4D8    mov         eax,dword ptr [ebp-4]
 0053C4DB    mov         eax,dword ptr [eax+52C];TMainForm.ActEmergencyEscape:TAction
 0053C4E1    call        TVirtualListAction.SetEnabled
 0053C4E6    pop         ecx
 0053C4E7    pop         ecx
 0053C4E8    pop         ebp
 0053C4E9    ret
end;*}

//0053C4EC
{*procedure TMainForm.ActDoggebiCenserExecute(?:?);
begin
 0053C4EC    push        ebp
 0053C4ED    mov         ebp,esp
 0053C4EF    add         esp,0FFFFFFF4
 0053C4F2    xor         ecx,ecx
 0053C4F4    mov         dword ptr [ebp-8],ecx
 0053C4F7    mov         dword ptr [ebp-0C],edx
 0053C4FA    mov         dword ptr [ebp-4],eax
 0053C4FD    xor         eax,eax
 0053C4FF    push        ebp
 0053C500    push        53C562
 0053C505    push        dword ptr fs:[eax]
 0053C508    mov         dword ptr fs:[eax],esp
 0053C50B    push        0
 0053C50D    lea         eax,[ebp-8]
 0053C510    mov         ecx,1
 0053C515    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0053C51B    call        @DynArraySetLength
 0053C520    add         esp,4
 0053C523    lea         eax,[ebp-8]
 0053C526    call        00520FB0
 0053C52B    mov         eax,dword ptr [ebp-8]
 0053C52E    call        @LStrLen
 0053C533    mov         ecx,eax
 0053C535    mov         edx,dword ptr [ebp-8]
 0053C538    mov         eax,dword ptr [ebp-4]
 0053C53B    mov         eax,dword ptr [eax+5B8];TMainForm.?f5B8:TPacketAnalyser
 0053C541    call        0051FF58
 0053C546    xor         eax,eax
 0053C548    pop         edx
 0053C549    pop         ecx
 0053C54A    pop         ecx
 0053C54B    mov         dword ptr fs:[eax],edx
 0053C54E    push        53C569
 0053C553    lea         eax,[ebp-8]
 0053C556    mov         edx,dword ptr ds:[520AF8];TPreparedPacket
 0053C55C    call        @DynArrayClear
 0053C561    ret
>0053C562    jmp         @HandleFinally
>0053C567    jmp         0053C553
 0053C569    mov         esp,ebp
 0053C56B    pop         ebp
 0053C56C    ret
end;*}

Initialization
Finalization
//0053C628
{*
 0053C628    push        ebp
 0053C629    mov         ebp,esp
 0053C62B    xor         eax,eax
 0053C62D    push        ebp
 0053C62E    push        53C664
 0053C633    push        dword ptr fs:[eax]
 0053C636    mov         dword ptr fs:[eax],esp
 0053C639    inc         dword ptr ds:[55E11C]
>0053C63F    jne         0053C656
 0053C641    mov         eax,55B098;^'Knight'
 0053C646    mov         ecx,4
 0053C64B    mov         edx,dword ptr ds:[4010AC];String
 0053C651    call        @FinalizeArray
 0053C656    xor         eax,eax
 0053C658    pop         edx
 0053C659    pop         ecx
 0053C65A    pop         ecx
 0053C65B    mov         dword ptr fs:[eax],edx
 0053C65E    push        53C66B
 0053C663    ret
>0053C664    jmp         @HandleFinally
>0053C669    jmp         0053C663
 0053C66B    pop         ebp
 0053C66C    ret
*}
end.