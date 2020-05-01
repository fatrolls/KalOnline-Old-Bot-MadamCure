//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit79;

interface

uses
  SysUtils, Classes;

type
  TSingleInitMap = TSingleInitMap = record//size=40
f38:String;//f38
f3C:String;//f3C
end;;
  TSingleMiniMap = TSingleMiniMap = record//size=24
f20:String;//f20
end;;
  TLispMacros = class(TObject)
    constructor Create;//005254E4
  end;
    //function sub_00525418(?:?; ?:?):?;//00525418
    //function sub_00525590(?:?; ?:?; ?:?):?;//00525590
    //function sub_00525604(?:?; ?:?; ?:?; ?:?):?;//00525604
    //procedure sub_00525680(?:?; ?:TLISPListElement);//00525680

implementation

//00525418
{*function sub_00525418(?:?; ?:?):?;
begin
 00525418    push        ebp
 00525419    mov         ebp,esp
 0052541B    add         esp,0FFFFFFF4
 0052541E    mov         dword ptr [ebp-8],edx
 00525421    mov         dword ptr [ebp-4],eax
 00525424    mov         byte ptr [ebp-9],0
 00525428    mov         eax,dword ptr [ebp-8]
 0052542B    cmp         dword ptr [eax],0
>0052542E    je          00525444
 00525430    mov         edx,dword ptr [ebp-8]
 00525433    mov         edx,dword ptr [edx]
 00525435    mov         eax,dword ptr [ebp-4]
 00525438    mov         eax,dword ptr [eax+4]
 0052543B    call        TList.Add
 00525440    mov         byte ptr [ebp-9],1
 00525444    mov         al,byte ptr [ebp-9]
 00525447    mov         esp,ebp
 00525449    pop         ebp
 0052544A    ret
end;*}

//005254E4
constructor TLispMacros.Create;
begin
{*
 005254E4    push        ebp
 005254E5    mov         ebp,esp
 005254E7    add         esp,0FFFFFFF8
 005254EA    test        dl,dl
>005254EC    je          005254F6
 005254EE    add         esp,0FFFFFFF0
 005254F1    call        @ClassCreate
 005254F6    mov         byte ptr [ebp-5],dl
 005254F9    mov         dword ptr [ebp-4],eax
 005254FC    mov         dl,1
 005254FE    mov         eax,[004759C0];TList
 00525503    call        TObject.Create;TList.Create
 00525508    mov         edx,dword ptr [ebp-4]
 0052550B    mov         dword ptr [edx+4],eax
 0052550E    mov         dl,1
 00525510    mov         eax,[004759C0];TList
 00525515    call        TObject.Create;TList.Create
 0052551A    mov         edx,dword ptr [ebp-4]
 0052551D    mov         dword ptr [edx+8],eax
 00525520    mov         eax,dword ptr [ebp-4]
 00525523    cmp         byte ptr [ebp-5],0
>00525527    je          00525538
 00525529    call        @AfterConstruction
 0052552E    pop         dword ptr fs:[0]
 00525535    add         esp,0C
 00525538    mov         eax,dword ptr [ebp-4]
 0052553B    pop         ecx
 0052553C    pop         ecx
 0052553D    pop         ebp
 0052553E    ret
*}
end;

//00525590
{*function sub_00525590(?:?; ?:?; ?:?):?;
begin
 00525590    push        ebp
 00525591    mov         ebp,esp
 00525593    add         esp,0FFFFFFE8
 00525596    mov         byte ptr [ebp-6],cl
 00525599    mov         byte ptr [ebp-5],dl
 0052559C    mov         dword ptr [ebp-4],eax
 0052559F    mov         dword ptr [ebp-0C],0FFFFFFFF
 005255A6    mov         eax,dword ptr [ebp-4]
 005255A9    mov         eax,dword ptr [eax+4]
 005255AC    mov         eax,dword ptr [eax+8]
 005255AF    dec         eax
 005255B0    test        eax,eax
>005255B2    jl          005255FD
 005255B4    inc         eax
 005255B5    mov         dword ptr [ebp-18],eax
 005255B8    mov         dword ptr [ebp-10],0
 005255BF    mov         eax,dword ptr [ebp-4]
 005255C2    mov         eax,dword ptr [eax+4]
 005255C5    mov         edx,dword ptr [ebp-10]
 005255C8    call        TList.Get
 005255CD    mov         dword ptr [ebp-14],eax
 005255D0    xor         eax,eax
 005255D2    mov         al,byte ptr [ebp-5]
 005255D5    mov         edx,dword ptr [ebp-14]
 005255D8    cmp         eax,dword ptr [edx+28]
>005255DB    jne         005255F5
 005255DD    xor         eax,eax
 005255DF    mov         al,byte ptr [ebp-6]
 005255E2    mov         edx,dword ptr [ebp-14]
 005255E5    cmp         eax,dword ptr [edx+2C]
>005255E8    jne         005255F5
 005255EA    mov         eax,dword ptr [ebp-14]
 005255ED    movzx       eax,byte ptr [eax]
 005255F0    mov         dword ptr [ebp-0C],eax
>005255F3    jmp         005255FD
 005255F5    inc         dword ptr [ebp-10]
 005255F8    dec         dword ptr [ebp-18]
>005255FB    jne         005255BF
 005255FD    mov         eax,dword ptr [ebp-0C]
 00525600    mov         esp,ebp
 00525602    pop         ebp
 00525603    ret
end;*}

//00525604
{*function sub_00525604(?:?; ?:?; ?:?; ?:?):?;
begin
 00525604    push        ebp
 00525605    mov         ebp,esp
 00525607    add         esp,0FFFFFFE8
 0052560A    mov         byte ptr [ebp-6],cl
 0052560D    mov         byte ptr [ebp-5],dl
 00525610    mov         dword ptr [ebp-4],eax
 00525613    xor         eax,eax
 00525615    mov         dword ptr [ebp-0C],eax
 00525618    mov         eax,dword ptr [ebp-4]
 0052561B    mov         eax,dword ptr [eax+4]
 0052561E    mov         eax,dword ptr [eax+8]
 00525621    dec         eax
 00525622    test        eax,eax
>00525624    jl          00525676
 00525626    inc         eax
 00525627    mov         dword ptr [ebp-18],eax
 0052562A    mov         dword ptr [ebp-10],0
 00525631    mov         eax,dword ptr [ebp-4]
 00525634    mov         eax,dword ptr [eax+4]
 00525637    mov         edx,dword ptr [ebp-10]
 0052563A    call        TList.Get
 0052563F    mov         dword ptr [ebp-14],eax
 00525642    mov         eax,dword ptr [ebp-14]
 00525645    mov         al,byte ptr [eax]
 00525647    cmp         al,byte ptr [ebp-5]
>0052564A    jne         0052566E
 0052564C    xor         eax,eax
 0052564E    mov         al,byte ptr [ebp-6]
 00525651    mov         edx,dword ptr [ebp-14]
 00525654    cmp         eax,dword ptr [edx+28]
>00525657    jne         0052566E
 00525659    xor         eax,eax
 0052565B    mov         al,byte ptr [ebp+8]
 0052565E    mov         edx,dword ptr [ebp-14]
 00525661    cmp         eax,dword ptr [edx+2C]
>00525664    jne         0052566E
 00525666    mov         eax,dword ptr [ebp-14]
 00525669    mov         dword ptr [ebp-0C],eax
>0052566C    jmp         00525676
 0052566E    inc         dword ptr [ebp-10]
 00525671    dec         dword ptr [ebp-18]
>00525674    jne         00525631
 00525676    mov         eax,dword ptr [ebp-0C]
 00525679    mov         esp,ebp
 0052567B    pop         ebp
 0052567C    ret         4
end;*}

//00525680
{*procedure sub_00525680(?:?; ?:TLISPListElement);
begin
 00525680    push        ebp
 00525681    mov         ebp,esp
 00525683    xor         ecx,ecx
 00525685    push        ecx
 00525686    push        ecx
 00525687    push        ecx
 00525688    push        ecx
 00525689    push        ecx
 0052568A    push        ecx
 0052568B    push        ecx
 0052568C    push        ebx
 0052568D    push        esi
 0052568E    push        edi
 0052568F    mov         dword ptr [ebp-8],edx
 00525692    mov         dword ptr [ebp-4],eax
 00525695    xor         eax,eax
 00525697    push        ebp
 00525698    push        5259A9
 0052569D    push        dword ptr fs:[eax]
 005256A0    mov         dword ptr fs:[eax],esp
 005256A3    lea         eax,[ebp-0C]
 005256A6    call        @LStrClr
 005256AB    cmp         dword ptr [ebp-8],0
>005256AF    je          00525986
 005256B5    xor         edx,edx
 005256B7    mov         eax,dword ptr [ebp-8]
 005256BA    call        005238A4
 005256BF    lea         edx,[ebp-14]
 005256C2    mov         ecx,dword ptr [eax]
 005256C4    call        dword ptr [ecx+4]
 005256C7    mov         eax,dword ptr [ebp-14]
 005256CA    mov         edx,5259C0;'initmap'
 005256CF    call        @LStrCmp
>005256D4    jne         00525986
 005256DA    mov         edx,dword ptr ds:[525258];TSingleInitMap
 005256E0    mov         eax,40
 005256E5    call        00405948
 005256EA    mov         dword ptr [ebp-10],eax
 005256ED    xor         eax,eax
 005256EF    push        ebp
 005256F0    push        525721
 005256F5    push        dword ptr fs:[eax]
 005256F8    mov         dword ptr fs:[eax],esp
 005256FB    mov         edx,1
 00525700    mov         eax,dword ptr [ebp-8]
 00525703    call        005238F4
 00525708    mov         edx,1
 0052570D    call        005238C8
 00525712    mov         edx,dword ptr [ebp-10]
 00525715    mov         byte ptr [edx],al
 00525717    xor         eax,eax
 00525719    pop         edx
 0052571A    pop         ecx
 0052571B    pop         ecx
 0052571C    mov         dword ptr fs:[eax],edx
>0052571F    jmp         00525741
>00525721    jmp         @HandleAnyException
 00525726    mov         ecx,5259D0;'SingleInitMap.Index := LispListElement.GetList(1).GetInt(1);'
 0052572B    mov         dl,1
 0052572D    mov         eax,[004653B4];Exception
 00525732    call        Exception.Create;Exception.Create
 00525737    call        @RaiseExcept
 0052573C    call        @DoneExcept
 00525741    xor         eax,eax
 00525743    push        ebp
 00525744    push        525776
 00525749    push        dword ptr fs:[eax]
 0052574C    mov         dword ptr fs:[eax],esp
 0052574F    mov         edx,2
 00525754    mov         eax,dword ptr [ebp-8]
 00525757    call        005238F4
 0052575C    mov         edx,1
 00525761    call        005238C8
 00525766    mov         edx,dword ptr [ebp-10]
 00525769    mov         byte ptr [edx+1],al
 0052576C    xor         eax,eax
 0052576E    pop         edx
 0052576F    pop         ecx
 00525770    pop         ecx
 00525771    mov         dword ptr fs:[eax],edx
>00525774    jmp         00525796
>00525776    jmp         @HandleAnyException
 0052577B    mov         ecx,525A18;'SingleInitMap.Kind := LispListElement.GetList(2).GetInt(1);'
 00525780    mov         dl,1
 00525782    mov         eax,[004653B4];Exception
 00525787    call        Exception.Create;Exception.Create
 0052578C    call        @RaiseExcept
 00525791    call        @DoneExcept
 00525796    xor         eax,eax
 00525798    push        ebp
 00525799    push        5257CB
 0052579E    push        dword ptr fs:[eax]
 005257A1    mov         dword ptr fs:[eax],esp
 005257A4    mov         edx,3
 005257A9    mov         eax,dword ptr [ebp-8]
 005257AC    call        005238F4
 005257B1    mov         edx,1
 005257B6    call        005238C8
 005257BB    mov         edx,dword ptr [ebp-10]
 005257BE    mov         dword ptr [edx+8],eax
 005257C1    xor         eax,eax
 005257C3    pop         edx
 005257C4    pop         ecx
 005257C5    pop         ecx
 005257C6    mov         dword ptr fs:[eax],edx
>005257C9    jmp         005257EB
>005257CB    jmp         @HandleAnyException
 005257D0    mov         ecx,525A5C;'SingleInitMap.Fog.Distance := LispListElement.GetList(3).GetInt(1);'
 005257D5    mov         dl,1
 005257D7    mov         eax,[004653B4];Exception
 005257DC    call        Exception.Create;Exception.Create
 005257E1    call        @RaiseExcept
 005257E6    call        @DoneExcept
 005257EB    xor         eax,eax
 005257ED    push        ebp
 005257EE    push        52583D
 005257F3    push        dword ptr fs:[eax]
 005257F6    mov         dword ptr fs:[eax],esp
 005257F9    mov         edx,4
 005257FE    mov         eax,dword ptr [ebp-8]
 00525801    call        005238F4
 00525806    mov         edx,1
 0052580B    call        005238C8
 00525810    mov         edx,dword ptr [ebp-10]
 00525813    mov         dword ptr [edx+28],eax
 00525816    mov         edx,4
 0052581B    mov         eax,dword ptr [ebp-8]
 0052581E    call        005238F4
 00525823    mov         edx,2
 00525828    call        005238C8
 0052582D    mov         edx,dword ptr [ebp-10]
 00525830    mov         dword ptr [edx+2C],eax
 00525833    xor         eax,eax
 00525835    pop         edx
 00525836    pop         ecx
 00525837    pop         ecx
 00525838    mov         dword ptr fs:[eax],edx
>0052583B    jmp         0052585D
>0052583D    jmp         @HandleAnyException
 00525842    mov         ecx,525AA8;'SingleInitMap.XY.Y := LispListElement.GetList(4).GetInt(2);'
 00525847    mov         dl,1
 00525849    mov         eax,[004653B4];Exception
 0052584E    call        Exception.Create;Exception.Create
 00525853    call        @RaiseExcept
 00525858    call        @DoneExcept
 0052585D    xor         eax,eax
 0052585F    push        ebp
 00525860    push        5258AF
 00525865    push        dword ptr fs:[eax]
 00525868    mov         dword ptr fs:[eax],esp
 0052586B    mov         edx,5
 00525870    mov         eax,dword ptr [ebp-8]
 00525873    call        005238F4
 00525878    mov         edx,1
 0052587D    call        005238C8
 00525882    mov         edx,dword ptr [ebp-10]
 00525885    mov         dword ptr [edx+30],eax
 00525888    mov         edx,5
 0052588D    mov         eax,dword ptr [ebp-8]
 00525890    call        005238F4
 00525895    mov         edx,2
 0052589A    call        005238C8
 0052589F    mov         edx,dword ptr [ebp-10]
 005258A2    mov         dword ptr [edx+34],eax
 005258A5    xor         eax,eax
 005258A7    pop         edx
 005258A8    pop         ecx
 005258A9    pop         ecx
 005258AA    mov         dword ptr fs:[eax],edx
>005258AD    jmp         005258CF
>005258AF    jmp         @HandleAnyException
 005258B4    mov         ecx,525AEC;'SingleInitMap.OrgPatch.Y := LispListElement.GetList(5).GetInt(2);'
 005258B9    mov         dl,1
 005258BB    mov         eax,[004653B4];Exception
 005258C0    call        Exception.Create;Exception.Create
 005258C5    call        @RaiseExcept
 005258CA    call        @DoneExcept
 005258CF    xor         eax,eax
 005258D1    push        ebp
 005258D2    push        52595B
 005258D7    push        dword ptr fs:[eax]
 005258DA    mov         dword ptr fs:[eax],esp
 005258DD    mov         edx,525B38;'mapname'
 005258E2    mov         eax,dword ptr [ebp-8]
 005258E5    call        005236CC
 005258EA    test        eax,eax
>005258EC    je          00525918
 005258EE    mov         edx,525B38;'mapname'
 005258F3    mov         eax,dword ptr [ebp-8]
 005258F6    call        005236CC
 005258FB    lea         ecx,[ebp-18]
 005258FE    mov         edx,1
 00525903    call        00523918
 00525908    mov         edx,dword ptr [ebp-18]
 0052590B    mov         eax,dword ptr [ebp-10]
 0052590E    add         eax,38
 00525911    call        @LStrAsg
>00525916    jmp         00525951
 00525918    mov         edx,525B48;'filename'
 0052591D    mov         eax,dword ptr [ebp-8]
 00525920    call        005236CC
 00525925    test        eax,eax
>00525927    je          00525951
 00525929    mov         edx,525B48;'filename'
 0052592E    mov         eax,dword ptr [ebp-8]
 00525931    call        005236CC
 00525936    lea         ecx,[ebp-1C]
 00525939    mov         edx,1
 0052593E    call        00523918
 00525943    mov         edx,dword ptr [ebp-1C]
 00525946    mov         eax,dword ptr [ebp-10]
 00525949    add         eax,3C
 0052594C    call        @LStrAsg
 00525951    xor         eax,eax
 00525953    pop         edx
 00525954    pop         ecx
 00525955    pop         ecx
 00525956    mov         dword ptr fs:[eax],edx
>00525959    jmp         0052597B
>0052595B    jmp         @HandleAnyException
 00525960    mov         ecx,525B38;'mapname'
 00525965    mov         dl,1
 00525967    mov         eax,[004653B4];Exception
 0052596C    call        Exception.Create;Exception.Create
 00525971    call        @RaiseExcept
 00525976    call        @DoneExcept
 0052597B    lea         edx,[ebp-10]
 0052597E    mov         eax,dword ptr [ebp-4]
 00525981    call        00525418
 00525986    xor         eax,eax
 00525988    pop         edx
 00525989    pop         ecx
 0052598A    pop         ecx
 0052598B    mov         dword ptr fs:[eax],edx
 0052598E    push        5259B0
 00525993    lea         eax,[ebp-1C]
 00525996    mov         edx,3
 0052599B    call        @LStrArrayClr
 005259A0    lea         eax,[ebp-0C]
 005259A3    call        @LStrClr
 005259A8    ret
>005259A9    jmp         @HandleFinally
>005259AE    jmp         00525993
 005259B0    pop         edi
 005259B1    pop         esi
 005259B2    pop         ebx
 005259B3    mov         esp,ebp
 005259B5    pop         ebp
 005259B6    ret
end;*}

Initialization
Finalization
//00525B54
{*
 00525B54    push        ebp
 00525B55    mov         ebp,esp
 00525B57    xor         eax,eax
 00525B59    push        ebp
 00525B5A    push        525B90
 00525B5F    push        dword ptr fs:[eax]
 00525B62    mov         dword ptr fs:[eax],esp
 00525B65    inc         dword ptr ds:[55E094]
>00525B6B    jne         00525B82
 00525B6D    mov         eax,54E6B0;^'macro'
 00525B72    mov         ecx,0F
 00525B77    mov         edx,dword ptr ds:[4010AC];String
 00525B7D    call        @FinalizeArray
 00525B82    xor         eax,eax
 00525B84    pop         edx
 00525B85    pop         ecx
 00525B86    pop         ecx
 00525B87    mov         dword ptr fs:[eax],edx
 00525B8A    push        525B97
 00525B8F    ret
>00525B90    jmp         @HandleFinally
>00525B95    jmp         00525B8F
 00525B97    pop         ebp
 00525B98    ret
*}
end.