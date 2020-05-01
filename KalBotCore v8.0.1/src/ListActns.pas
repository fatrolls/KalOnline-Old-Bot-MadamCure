//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ListActns;

interface

uses
  SysUtils, Classes, ListActns, ImgList;

type
  TListControlItem = class(TCollectionItem)
  public
    FListControlItems:TListControlItems;//fC
    Caption:String;//f10
    FData:Pointer;//f14
    ImageIndex:TImageIndex;//f18
    //procedure v8(?:?); virtual;//v8//004A1320
    //procedure vC(?:?); virtual;//vC//004A1430
    constructor v1C; virtual;//v1C//004A13DC
    procedure SetCaption(Value:String); virtual;//v20//004A146C
    //procedure v24(?:?); virtual;//v24//004A1494
    procedure SetImageIndex(Value:TImageIndex); virtual;//v28//004A14B8
  end;
  TListItemsSortType = (stNone, stData, stText, stBoth);
  TListCompareEvent = function(List:TListControlItems; Item1:TListControlItem; Item2:TListControlItem):Integer of object;;
  TListControlItems = class(TOwnedCollection)
  public
    CaseSensitive:Boolean;//f1C
    SortType:TListItemsSortType;//f1D
    OnCompare:TListCompareEvent;//f20
    f22:word;//f22
    f24:dword;//f24
    //function v28(?:?; ?:?):?; virtual;//v28//004A1580
    procedure SetSortType(Value:TListItemsSortType);//004A1744
  end;
  TGetItemCountEvent = procedure(Sender:TCustomListAction; var Count:Integer) of object;;
  TItemSelectedEvent = procedure(Sender:TCustomListAction; Control:TControl) of object;;
  TCustomListAction = class(TCustomAction)
  public
    FActive:Boolean;//fA0
    FActivated:Boolean;//fA1
    FImages:TCustomImageList;//fA4
    FInUpdate:Boolean;//fA8
    FLoadedImages:TCustomImageList;//fAC
    FLoading:Boolean;//fB0
    FOnGetItemCount:TGetItemCountEvent;//fB8
    fBA:word;//fBA
    fBC:dword;//fBC
    FOnItemSelected:TItemSelectedEvent;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FItemIndex:Integer;//fC8
    procedure vC; virtual;//vC//004A1A0C
    constructor v2C; virtual;//v2C//004A17F0
    //function v38(?:?):?; virtual;//v38//004A19F4
    //procedure v40(?:?); virtual;//v40//004A1860
    //function v54:?; virtual;//v54//004A199C
    //procedure v58(?:?; ?:?); virtual;//v58//004A19D8
    //procedure v5C(?:?; ?:?); virtual;//v5C//004A1C80
  end;
  TGetVirtualItemEvent = procedure(Sender:TCustomListAction; const Index:Integer; var Value:String; var ImageIndex:Integer; var Data:Pointer) of object;;
  TVirtualListAction = class(TCustomListAction)
  public
    OnGetItem:TGetVirtualItemEvent;//fD0
    fD2:word;//fD2
    fD4:dword;//fD4
    //procedure v58(?:?; ?:?); virtual;//v58//004A1CF4
    procedure SetActive(Value:Boolean);//004A1A58
    procedure SetImages(Value:TCustomImageList);//004A1B60
    procedure SetItemIndex(Value:Integer);//004A1C00
  end;
  TGetItemEvent = procedure(Sender:TCustomListAction; const Index:Integer; var Item:TListControlItem) of object;;
  TStaticListItems = class(TListControlItems)
  public
    ..............FStaticListAction:TStaticListAction;//f28
    //procedure v14(?:?; ?:?); virtual;//v14//004A1DE4
    //procedure v1C(?:?); virtual;//v1C//004A1FEC
    //constructor Create(?:?);//004A1794
  end;
  TStaticListAction = class(TCustomListAction)
  public
    Items:TStaticListItems;//fD0
    OnGetItem:TGetItemEvent;//fD8
    destructor Destroy; virtual;//004A21CC
    constructor v2C; virtual;//v2C//004A2154
    //function v54:?; virtual;//v54//004A220C
    //procedure v58(?:?; ?:?); virtual;//v58//004A22CC
    //procedure v5C(?:?; ?:?); virtual;//v5C//004A2320
    //function v60:?; virtual;//v60//004A22B4
    procedure SetItems(Value:TStaticListItems);//004A22FC
  end;
  TListActionLink = class(TWinControlActionLink)
  public
    //procedure vC(?:?); virtual;//vC//004A23B0
    //function v7C:?; virtual;//v7C//004A234C
    //procedure v80(?:?); virtual;//v80//004A240C
    //function v84:?; virtual;//v84//004A2370
    //procedure v88(?:?); virtual;//v88//004A2490
    //procedure v8C(?:?); virtual;//v8C//004A2680
    //procedure v90(?:?); virtual;//v90//004A2628
    //procedure v94(?:?; ?:?); virtual;//v94//004A2638
  end;
    //procedure sub_004A1320(?:?);//004A1320
    procedure sub_004A13B8(?:TListControlItem);//004A13B8
    constructor sub_004A13DC;//004A13DC
    //procedure sub_004A1430(?:?);//004A1430
    procedure SetCaption(Value:String);//004A146C
    //procedure sub_004A1494(?:?);//004A1494
    procedure SetImageIndex(Value:TImageIndex);//004A14B8
    //function sub_004A14DC(?:?; ?:?; ?:?):?;//004A14DC
    //function sub_004A151C(?:TComboExItems):?;//004A151C
    //procedure sub_004A1540(?:TListControlItems; ?:?);//004A1540
    //function sub_004A1580(?:?; ?:?):?;//004A1580
    //procedure sub_004A15F0(?:?; ?:?; ?:?);//004A15F0
    //procedure sub_004A165C(?:?; ?:?; ?:?; ?:?);//004A165C
    //function sub_004A1720(?:TListControlItems; ?:Integer):?;//004A1720
    procedure sub_004A177C(?:TCollection);//004A177C
    constructor sub_004A17F0;//004A17F0
    //procedure sub_004A1860(?:?);//004A1860
    //function sub_004A199C:?;//004A199C
    //procedure sub_004A19D8(?:?; ?:?);//004A19D8
    //function sub_004A19F4(?:?):?;//004A19F4
    procedure sub_004A1A0C;//004A1A0C
    //procedure sub_004A1C80(?:?; ?:?);//004A1C80
    //function sub_004A1C94(?:TVirtualListAction; ?:?; ?:?; ?:?; ?:?):?;//004A1C94
    //procedure sub_004A1CF4(?:?; ?:?);//004A1CF4
    //procedure sub_004A1DE4(?:?; ?:?);//004A1DE4
    //procedure sub_004A1FEC(?:?);//004A1FEC
    constructor sub_004A2154;//004A2154
    destructor Destroy;//004A21CC
    //function sub_004A220C:?;//004A220C
    //function sub_004A2230(?:TStaticListAction; ?:?; ?:?):?;//004A2230
    //function sub_004A22B4:?;//004A22B4
    //procedure sub_004A22CC(?:?; ?:?);//004A22CC
    //procedure sub_004A2320(?:?; ?:?);//004A2320
    //function sub_004A234C:?;//004A234C
    //function sub_004A2370:?;//004A2370
    //procedure sub_004A23B0(?:?);//004A23B0
    //procedure sub_004A240C(?:?);//004A240C
    //procedure sub_004A2490(?:?);//004A2490
    procedure sub_004A24A0(?:TListActionLink);//004A24A0
    //procedure sub_004A2628(?:?);//004A2628
    //procedure sub_004A2638(?:?; ?:?);//004A2638
    //procedure sub_004A2680(?:?);//004A2680

implementation

//004A1320
{*procedure sub_004A1320(?:?);
begin
 004A1320    push        ebp
 004A1321    mov         ebp,esp
 004A1323    add         esp,0FFFFFFF8
 004A1326    mov         dword ptr [ebp-8],edx
 004A1329    mov         dword ptr [ebp-4],eax
 004A132C    mov         eax,dword ptr [ebp-8]
 004A132F    mov         edx,dword ptr ds:[4A060C];TListControlItem
 004A1335    call        @IsClass
 004A133A    test        al,al
>004A133C    je          004A13B3
 004A133E    mov         eax,dword ptr [ebp-4]
 004A1341    cmp         dword ptr [eax+4],0;TListControlItem.FCollection:TCollection
>004A1345    je          004A1352
 004A1347    mov         eax,dword ptr [ebp-4]
 004A134A    mov         eax,dword ptr [eax+4];TListControlItem.FCollection:TCollection
 004A134D    mov         edx,dword ptr [eax]
 004A134F    call        dword ptr [edx+20];TCollection.sub_004799FC
 004A1352    xor         eax,eax
 004A1354    push        ebp
 004A1355    push        4A13AC
 004A135A    push        dword ptr fs:[eax]
 004A135D    mov         dword ptr fs:[eax],esp
 004A1360    mov         eax,dword ptr [ebp-8]
 004A1363    mov         edx,dword ptr [eax+10]
 004A1366    mov         eax,dword ptr [ebp-4]
 004A1369    mov         ecx,dword ptr [eax]
 004A136B    call        dword ptr [ecx+20];TListControlItem.SetCaption
 004A136E    mov         eax,dword ptr [ebp-8]
 004A1371    mov         edx,dword ptr [eax+18]
 004A1374    mov         eax,dword ptr [ebp-4]
 004A1377    mov         ecx,dword ptr [eax]
 004A1379    call        dword ptr [ecx+28];TListControlItem.SetImageIndex
 004A137C    mov         eax,dword ptr [ebp-8]
 004A137F    mov         edx,dword ptr [eax+14]
 004A1382    mov         eax,dword ptr [ebp-4]
 004A1385    mov         ecx,dword ptr [eax]
 004A1387    call        dword ptr [ecx+24];TListControlItem.sub_004A1494
 004A138A    xor         eax,eax
 004A138C    pop         edx
 004A138D    pop         ecx
 004A138E    pop         ecx
 004A138F    mov         dword ptr fs:[eax],edx
 004A1392    push        4A13B3
 004A1397    mov         eax,dword ptr [ebp-4]
 004A139A    cmp         dword ptr [eax+4],0;TListControlItem.FCollection:TCollection
>004A139E    je          004A13AB
 004A13A0    mov         eax,dword ptr [ebp-4]
 004A13A3    mov         eax,dword ptr [eax+4];TListControlItem.FCollection:TCollection
 004A13A6    mov         edx,dword ptr [eax]
 004A13A8    call        dword ptr [edx+24];TCollection.sub_00479A94
 004A13AB    ret
>004A13AC    jmp         @HandleFinally
>004A13B1    jmp         004A1397
 004A13B3    pop         ecx
 004A13B4    pop         ecx
 004A13B5    pop         ebp
 004A13B6    ret
end;*}

//004A13B8
procedure sub_004A13B8(?:TListControlItem);
begin
{*
 004A13B8    push        ebp
 004A13B9    mov         ebp,esp
 004A13BB    push        ecx
 004A13BC    mov         dword ptr [ebp-4],eax
 004A13BF    mov         eax,dword ptr [ebp-4]
 004A13C2    cmp         dword ptr [eax+0C],0
>004A13C6    je          004A13D6
 004A13C8    mov         edx,dword ptr [ebp-4]
 004A13CB    mov         eax,dword ptr [ebp-4]
 004A13CE    mov         eax,dword ptr [eax+0C]
 004A13D1    mov         ecx,dword ptr [eax]
 004A13D3    call        dword ptr [ecx+1C]
 004A13D6    pop         ecx
 004A13D7    pop         ebp
 004A13D8    ret
*}
end;

//004A13DC
constructor sub_004A13DC;
begin
{*
 004A13DC    push        ebp
 004A13DD    mov         ebp,esp
 004A13DF    add         esp,0FFFFFFF4
 004A13E2    test        dl,dl
>004A13E4    je          004A13EE
 004A13E6    add         esp,0FFFFFFF0
 004A13E9    call        @ClassCreate
 004A13EE    mov         dword ptr [ebp-0C],ecx
 004A13F1    mov         byte ptr [ebp-5],dl
 004A13F4    mov         dword ptr [ebp-4],eax
 004A13F7    mov         ecx,dword ptr [ebp-0C]
 004A13FA    xor         edx,edx
 004A13FC    mov         eax,dword ptr [ebp-4]
 004A13FF    call        004795A8
 004A1404    mov         eax,dword ptr [ebp-4]
 004A1407    mov         dword ptr [eax+18],0FFFFFFFF;TListControlItem.ImageIndex:TImageIndex
 004A140E    mov         eax,dword ptr [ebp-4]
 004A1411    cmp         byte ptr [ebp-5],0
>004A1415    je          004A1426
 004A1417    call        @AfterConstruction
 004A141C    pop         dword ptr fs:[0]
 004A1423    add         esp,0C
 004A1426    mov         eax,dword ptr [ebp-4]
 004A1429    mov         esp,ebp
 004A142B    pop         ebp
 004A142C    ret
*}
end;

//004A1430
{*procedure sub_004A1430(?:?);
begin
 004A1430    push        ebp
 004A1431    mov         ebp,esp
 004A1433    add         esp,0FFFFFFF8
 004A1436    mov         dword ptr [ebp-8],edx
 004A1439    mov         dword ptr [ebp-4],eax
 004A143C    mov         eax,dword ptr [ebp-4]
 004A143F    mov         eax,dword ptr [eax+10];TListControlItem.Caption:String
 004A1442    call        @DynArrayLength
 004A1447    test        eax,eax
>004A1449    jle         004A145B
 004A144B    mov         eax,dword ptr [ebp-8]
 004A144E    mov         edx,dword ptr [ebp-4]
 004A1451    mov         edx,dword ptr [edx+10];TListControlItem.Caption:String
 004A1454    call        @LStrAsg
>004A1459    jmp         004A1466
 004A145B    mov         edx,dword ptr [ebp-8]
 004A145E    mov         eax,dword ptr [ebp-4]
 004A1461    call        004796AC
 004A1466    pop         ecx
 004A1467    pop         ecx
 004A1468    pop         ebp
 004A1469    ret
end;*}

//004A146C
procedure TListControlItem.SetCaption(Value:String);
begin
{*
 004A146C    push        ebp
 004A146D    mov         ebp,esp
 004A146F    add         esp,0FFFFFFF8
 004A1472    mov         dword ptr [ebp-8],edx
 004A1475    mov         dword ptr [ebp-4],eax
 004A1478    mov         eax,dword ptr [ebp-4]
 004A147B    add         eax,10;TListControlItem.Caption:String
 004A147E    mov         edx,dword ptr [ebp-8]
 004A1481    call        @LStrAsg
 004A1486    mov         eax,dword ptr [ebp-4]
 004A1489    call        004A13B8
 004A148E    pop         ecx
 004A148F    pop         ecx
 004A1490    pop         ebp
 004A1491    ret
*}
end;

//004A1494
{*procedure sub_004A1494(?:?);
begin
 004A1494    push        ebp
 004A1495    mov         ebp,esp
 004A1497    add         esp,0FFFFFFF8
 004A149A    mov         dword ptr [ebp-8],edx
 004A149D    mov         dword ptr [ebp-4],eax
 004A14A0    mov         eax,dword ptr [ebp-8]
 004A14A3    mov         edx,dword ptr [ebp-4]
 004A14A6    mov         dword ptr [edx+14],eax;TListControlItem.FData:Pointer
 004A14A9    mov         eax,dword ptr [ebp-4]
 004A14AC    call        004A13B8
 004A14B1    pop         ecx
 004A14B2    pop         ecx
 004A14B3    pop         ebp
 004A14B4    ret
end;*}

//004A14B8
procedure TListControlItem.SetImageIndex(Value:TImageIndex);
begin
{*
 004A14B8    push        ebp
 004A14B9    mov         ebp,esp
 004A14BB    add         esp,0FFFFFFF8
 004A14BE    mov         dword ptr [ebp-8],edx
 004A14C1    mov         dword ptr [ebp-4],eax
 004A14C4    mov         eax,dword ptr [ebp-8]
 004A14C7    mov         edx,dword ptr [ebp-4]
 004A14CA    mov         dword ptr [edx+18],eax;TListControlItem.ImageIndex:TImageIndex
 004A14CD    mov         eax,dword ptr [ebp-4]
 004A14D0    call        004A13B8
 004A14D5    pop         ecx
 004A14D6    pop         ecx
 004A14D7    pop         ebp
 004A14D8    ret
*}
end;

//004A14DC
{*function sub_004A14DC(?:?; ?:?; ?:?):?;
begin
 004A14DC    push        ebp
 004A14DD    mov         ebp,esp
 004A14DF    add         esp,0FFFFFFF0
 004A14E2    push        ebx
 004A14E3    mov         dword ptr [ebp-0C],ecx
 004A14E6    mov         dword ptr [ebp-8],edx
 004A14E9    mov         dword ptr [ebp-4],eax
 004A14EC    mov         edx,dword ptr [ebp-0C]
 004A14EF    mov         eax,dword ptr [ebp-4]
 004A14F2    call        004A1720
 004A14F7    push        eax
 004A14F8    mov         edx,dword ptr [ebp-8]
 004A14FB    mov         eax,dword ptr [ebp-4]
 004A14FE    call        004A1720
 004A1503    mov         edx,eax
 004A1505    mov         eax,dword ptr [ebp-4]
 004A1508    pop         ecx
 004A1509    mov         ebx,dword ptr [eax]
 004A150B    call        dword ptr [ebx+28]
 004A150E    mov         dword ptr [ebp-10],eax
 004A1511    mov         eax,dword ptr [ebp-10]
 004A1514    pop         ebx
 004A1515    mov         esp,ebp
 004A1517    pop         ebp
 004A1518    ret
end;*}

//004A151C
{*function sub_004A151C(?:TComboExItems):?;
begin
 004A151C    push        ebp
 004A151D    mov         ebp,esp
 004A151F    add         esp,0FFFFFFF8
 004A1522    mov         dword ptr [ebp-4],eax
 004A1525    mov         eax,dword ptr [ebp-4]
 004A1528    call        0047992C
 004A152D    mov         dword ptr [ebp-8],eax
 004A1530    mov         eax,dword ptr [ebp-8]
 004A1533    mov         edx,dword ptr [ebp-4]
 004A1536    mov         dword ptr [eax+0C],edx
 004A1539    mov         eax,dword ptr [ebp-8]
 004A153C    pop         ecx
 004A153D    pop         ecx
 004A153E    pop         ebp
 004A153F    ret
end;*}

//004A1540
{*procedure sub_004A1540(?:TListControlItems; ?:?);
begin
 004A1540    push        ebp
 004A1541    mov         ebp,esp
 004A1543    add         esp,0FFFFFFF8
 004A1546    mov         dword ptr [ebp-8],edx
 004A1549    mov         dword ptr [ebp-4],eax
 004A154C    mov         eax,dword ptr [ebp-4]
 004A154F    cmp         byte ptr [eax+1D],0
>004A1553    je          004A1579
 004A1555    mov         eax,dword ptr [ebp-4]
 004A1558    call        00479B60
 004A155D    dec         eax
>004A155E    jle         004A1579
 004A1560    mov         eax,dword ptr [ebp-8]
 004A1563    push        eax
 004A1564    mov         eax,dword ptr [ebp-4]
 004A1567    call        00479B60
 004A156C    mov         ecx,eax
 004A156E    dec         ecx
 004A156F    xor         edx,edx
 004A1571    mov         eax,dword ptr [ebp-4]
 004A1574    call        004A165C
 004A1579    pop         ecx
 004A157A    pop         ecx
 004A157B    pop         ebp
 004A157C    ret
end;*}

//004A1580
{*function sub_004A1580(?:?; ?:?):?;
begin
 004A1580    push        ebp
 004A1581    mov         ebp,esp
 004A1583    add         esp,0FFFFFFF0
 004A1586    push        ebx
 004A1587    mov         dword ptr [ebp-0C],ecx
 004A158A    mov         dword ptr [ebp-8],edx
 004A158D    mov         dword ptr [ebp-4],eax
 004A1590    mov         eax,dword ptr [ebp-4]
 004A1593    cmp         word ptr [eax+22],0;TListControlItems.?f22:word
>004A1598    je          004A15B2
 004A159A    mov         eax,dword ptr [ebp-0C]
 004A159D    push        eax
 004A159E    mov         ebx,dword ptr [ebp-4]
 004A15A1    mov         ecx,dword ptr [ebp-8]
 004A15A4    mov         edx,dword ptr [ebp-4]
 004A15A7    mov         eax,dword ptr [ebx+24];TListControlItems.?f24:dword
 004A15AA    call        dword ptr [ebx+20];TListControlItems.OnCompare
 004A15AD    mov         dword ptr [ebp-10],eax
>004A15B0    jmp         004A15E5
 004A15B2    mov         eax,dword ptr [ebp-4]
 004A15B5    cmp         byte ptr [eax+1C],0;TListControlItems.CaseSensitive:Boolean
>004A15B9    je          004A15D1
 004A15BB    mov         eax,dword ptr [ebp-0C]
 004A15BE    mov         edx,dword ptr [eax+10]
 004A15C1    mov         eax,dword ptr [ebp-8]
 004A15C4    mov         eax,dword ptr [eax+10]
 004A15C7    call        004663D4
 004A15CC    mov         dword ptr [ebp-10],eax
>004A15CF    jmp         004A15E5
 004A15D1    mov         eax,dword ptr [ebp-0C]
 004A15D4    mov         edx,dword ptr [eax+10]
 004A15D7    mov         eax,dword ptr [ebp-8]
 004A15DA    mov         eax,dword ptr [eax+10]
 004A15DD    call        00466420
 004A15E2    mov         dword ptr [ebp-10],eax
 004A15E5    mov         eax,dword ptr [ebp-10]
 004A15E8    pop         ebx
 004A15E9    mov         esp,ebp
 004A15EB    pop         ebp
 004A15EC    ret
end;*}

//004A15F0
{*procedure sub_004A15F0(?:?; ?:?; ?:?);
begin
 004A15F0    push        ebp
 004A15F1    mov         ebp,esp
 004A15F3    add         esp,0FFFFFFE4
 004A15F6    mov         dword ptr [ebp-0C],ecx
 004A15F9    mov         dword ptr [ebp-8],edx
 004A15FC    mov         dword ptr [ebp-4],eax
 004A15FF    mov         edx,dword ptr [ebp-8]
 004A1602    mov         eax,dword ptr [ebp-4]
 004A1605    call        004A1720
 004A160A    mov         dword ptr [ebp-10],eax
 004A160D    mov         edx,dword ptr [ebp-0C]
 004A1610    mov         eax,dword ptr [ebp-4]
 004A1613    call        004A1720
 004A1618    mov         dword ptr [ebp-14],eax
 004A161B    mov         edx,dword ptr [ebp-8]
 004A161E    mov         eax,dword ptr [ebp-4]
 004A1621    call        004A1720
 004A1626    call        TCollectionItem.GetIndex
 004A162B    mov         dword ptr [ebp-18],eax
 004A162E    mov         edx,dword ptr [ebp-0C]
 004A1631    mov         eax,dword ptr [ebp-4]
 004A1634    call        004A1720
 004A1639    call        TCollectionItem.GetIndex
 004A163E    mov         dword ptr [ebp-1C],eax
 004A1641    mov         edx,dword ptr [ebp-1C]
 004A1644    mov         eax,dword ptr [ebp-10]
 004A1647    mov         ecx,dword ptr [eax]
 004A1649    call        dword ptr [ecx+14]
 004A164C    mov         edx,dword ptr [ebp-18]
 004A164F    mov         eax,dword ptr [ebp-14]
 004A1652    mov         ecx,dword ptr [eax]
 004A1654    call        dword ptr [ecx+14]
 004A1657    mov         esp,ebp
 004A1659    pop         ebp
 004A165A    ret
end;*}

//004A165C
{*procedure sub_004A165C(?:?; ?:?; ?:?; ?:?);
begin
 004A165C    push        ebp
 004A165D    mov         ebp,esp
 004A165F    add         esp,0FFFFFFE8
 004A1662    mov         dword ptr [ebp-0C],ecx
 004A1665    mov         dword ptr [ebp-8],edx
 004A1668    mov         dword ptr [ebp-4],eax
 004A166B    mov         eax,dword ptr [ebp-8]
 004A166E    mov         dword ptr [ebp-10],eax
 004A1671    mov         eax,dword ptr [ebp-0C]
 004A1674    mov         dword ptr [ebp-14],eax
 004A1677    mov         eax,dword ptr [ebp-8]
 004A167A    add         eax,dword ptr [ebp-0C]
 004A167D    shr         eax,1
 004A167F    mov         dword ptr [ebp-18],eax
>004A1682    jmp         004A1687
 004A1684    inc         dword ptr [ebp-10]
 004A1687    mov         ecx,dword ptr [ebp-18]
 004A168A    mov         edx,dword ptr [ebp-10]
 004A168D    mov         eax,dword ptr [ebp-4]
 004A1690    call        dword ptr [ebp+8]
 004A1693    test        eax,eax
>004A1695    jl          004A1684
>004A1697    jmp         004A169C
 004A1699    dec         dword ptr [ebp-14]
 004A169C    mov         ecx,dword ptr [ebp-18]
 004A169F    mov         edx,dword ptr [ebp-14]
 004A16A2    mov         eax,dword ptr [ebp-4]
 004A16A5    call        dword ptr [ebp+8]
 004A16A8    test        eax,eax
>004A16AA    jg          004A1699
 004A16AC    mov         eax,dword ptr [ebp-10]
 004A16AF    cmp         eax,dword ptr [ebp-14]
>004A16B2    jg          004A16E6
 004A16B4    mov         ecx,dword ptr [ebp-14]
 004A16B7    mov         edx,dword ptr [ebp-10]
 004A16BA    mov         eax,dword ptr [ebp-4]
 004A16BD    call        004A15F0
 004A16C2    mov         eax,dword ptr [ebp-18]
 004A16C5    cmp         eax,dword ptr [ebp-10]
>004A16C8    jne         004A16D2
 004A16CA    mov         eax,dword ptr [ebp-14]
 004A16CD    mov         dword ptr [ebp-18],eax
>004A16D0    jmp         004A16E0
 004A16D2    mov         eax,dword ptr [ebp-18]
 004A16D5    cmp         eax,dword ptr [ebp-14]
>004A16D8    jne         004A16E0
 004A16DA    mov         eax,dword ptr [ebp-10]
 004A16DD    mov         dword ptr [ebp-18],eax
 004A16E0    inc         dword ptr [ebp-10]
 004A16E3    dec         dword ptr [ebp-14]
 004A16E6    mov         eax,dword ptr [ebp-10]
 004A16E9    cmp         eax,dword ptr [ebp-14]
>004A16EC    jle         004A1687
 004A16EE    mov         eax,dword ptr [ebp-8]
 004A16F1    cmp         eax,dword ptr [ebp-14]
>004A16F4    jge         004A1708
 004A16F6    mov         eax,dword ptr [ebp+8]
 004A16F9    push        eax
 004A16FA    mov         ecx,dword ptr [ebp-14]
 004A16FD    mov         edx,dword ptr [ebp-8]
 004A1700    mov         eax,dword ptr [ebp-4]
 004A1703    call        004A165C
 004A1708    mov         eax,dword ptr [ebp-10]
 004A170B    mov         dword ptr [ebp-8],eax
 004A170E    mov         eax,dword ptr [ebp-10]
 004A1711    cmp         eax,dword ptr [ebp-0C]
>004A1714    jl          004A166B
 004A171A    mov         esp,ebp
 004A171C    pop         ebp
 004A171D    ret         4
end;*}

//004A1720
{*function sub_004A1720(?:TListControlItems; ?:Integer):?;
begin
 004A1720    push        ebp
 004A1721    mov         ebp,esp
 004A1723    add         esp,0FFFFFFF4
 004A1726    mov         dword ptr [ebp-8],edx
 004A1729    mov         dword ptr [ebp-4],eax
 004A172C    mov         edx,dword ptr [ebp-8]
 004A172F    mov         eax,dword ptr [ebp-4]
 004A1732    call        00479B7C
 004A1737    mov         dword ptr [ebp-0C],eax
 004A173A    mov         eax,dword ptr [ebp-0C]
 004A173D    mov         esp,ebp
 004A173F    pop         ebp
 004A1740    ret
end;*}

//004A1744
procedure TListControlItems.SetSortType(Value:TListItemsSortType);
begin
{*
 004A1744    push        ebp
 004A1745    mov         ebp,esp
 004A1747    add         esp,0FFFFFFF8
 004A174A    mov         byte ptr [ebp-5],dl
 004A174D    mov         dword ptr [ebp-4],eax
 004A1750    mov         eax,dword ptr [ebp-4]
 004A1753    mov         al,byte ptr [eax+1D];TListControlItems.SortType:TListItemsSortType
 004A1756    cmp         al,byte ptr [ebp-5]
>004A1759    je          004A1777
 004A175B    mov         al,byte ptr [ebp-5]
 004A175E    mov         edx,dword ptr [ebp-4]
 004A1761    mov         byte ptr [edx+1D],al;TListControlItems.SortType:TListItemsSortType
 004A1764    cmp         byte ptr [ebp-5],0
>004A1768    je          004A1777
 004A176A    mov         edx,4A14DC;sub_004A14DC
 004A176F    mov         eax,dword ptr [ebp-4]
 004A1772    call        004A1540
 004A1777    pop         ecx
 004A1778    pop         ecx
 004A1779    pop         ebp
 004A177A    ret
*}
end;

//004A177C
procedure sub_004A177C(?:TCollection);
begin
{*
 004A177C    push        ebp
 004A177D    mov         ebp,esp
 004A177F    push        ecx
 004A1780    mov         dword ptr [ebp-4],eax
 004A1783    mov         edx,4A14DC;sub_004A14DC
 004A1788    mov         eax,dword ptr [ebp-4]
 004A178B    call        004A1540
 004A1790    pop         ecx
 004A1791    pop         ebp
 004A1792    ret
*}
end;

//004A1794
{*constructor TStaticListItems.Create(?:?);
begin
 004A1794    push        ebp
 004A1795    mov         ebp,esp
 004A1797    add         esp,0FFFFFFF4
 004A179A    test        dl,dl
>004A179C    je          004A17A6
 004A179E    add         esp,0FFFFFFF0
 004A17A1    call        @ClassCreate
 004A17A6    mov         dword ptr [ebp-0C],ecx
 004A17A9    mov         byte ptr [ebp-5],dl
 004A17AC    mov         dword ptr [ebp-4],eax
 004A17AF    mov         eax,dword ptr [ebp+8]
 004A17B2    push        eax
 004A17B3    mov         ecx,dword ptr [ebp-0C]
 004A17B6    xor         edx,edx
 004A17B8    mov         eax,dword ptr [ebp-4]
 004A17BB    call        TWorkAreas.Create
 004A17C0    mov         eax,dword ptr [ebp-4]
 004A17C3    mov         byte ptr [eax+1C],0
 004A17C7    mov         eax,dword ptr [ebp-4]
 004A17CA    mov         byte ptr [eax+1D],0
 004A17CE    mov         eax,dword ptr [ebp-4]
 004A17D1    cmp         byte ptr [ebp-5],0
>004A17D5    je          004A17E6
 004A17D7    call        @AfterConstruction
 004A17DC    pop         dword ptr fs:[0]
 004A17E3    add         esp,0C
 004A17E6    mov         eax,dword ptr [ebp-4]
 004A17E9    mov         esp,ebp
 004A17EB    pop         ebp
 004A17EC    ret         4
end;*}

//004A17F0
constructor sub_004A17F0;
begin
{*
 004A17F0    push        ebp
 004A17F1    mov         ebp,esp
 004A17F3    add         esp,0FFFFFFF4
 004A17F6    test        dl,dl
>004A17F8    je          004A1802
 004A17FA    add         esp,0FFFFFFF0
 004A17FD    call        @ClassCreate
 004A1802    mov         dword ptr [ebp-0C],ecx
 004A1805    mov         byte ptr [ebp-5],dl
 004A1808    mov         dword ptr [ebp-4],eax
 004A180B    mov         ecx,dword ptr [ebp-0C]
 004A180E    xor         edx,edx
 004A1810    mov         eax,dword ptr [ebp-4]
 004A1813    call        TCustomAction.Create
 004A1818    mov         eax,dword ptr [ebp-4]
 004A181B    mov         dword ptr [eax+0C8],0FFFFFFFF;TCustomListAction.FItemIndex:Integer
 004A1825    mov         eax,dword ptr [ebp-4]
 004A1828    mov         byte ptr [eax+60],0;TCustomListAction.FDisableIfNoHandler:Boolean
 004A182C    mov         dl,1
 004A182E    mov         eax,dword ptr [ebp-4]
 004A1831    call        TVirtualListAction.SetEnabled
 004A1836    mov         dl,1
 004A1838    mov         eax,dword ptr [ebp-4]
 004A183B    call        TVirtualListAction.SetActive
 004A1840    mov         eax,dword ptr [ebp-4]
 004A1843    cmp         byte ptr [ebp-5],0
>004A1847    je          004A1858
 004A1849    call        @AfterConstruction
 004A184E    pop         dword ptr fs:[0]
 004A1855    add         esp,0C
 004A1858    mov         eax,dword ptr [ebp-4]
 004A185B    mov         esp,ebp
 004A185D    pop         ebp
 004A185E    ret
*}
end;

//004A1860
{*procedure sub_004A1860(?:?);
begin
 004A1860    push        ebp
 004A1861    mov         ebp,esp
 004A1863    add         esp,0FFFFFFEC
 004A1866    push        ebx
 004A1867    mov         dword ptr [ebp-8],edx
 004A186A    mov         dword ptr [ebp-4],eax
 004A186D    mov         eax,dword ptr [ebp-4]
 004A1870    cmp         byte ptr [eax+0A8],0;TCustomListAction.FInUpdate:Boolean
>004A1877    jne         004A1995
 004A187D    mov         eax,dword ptr [ebp-4]
 004A1880    mov         byte ptr [eax+0A8],1;TCustomListAction.FInUpdate:Boolean
 004A1887    xor         eax,eax
 004A1889    push        ebp
 004A188A    push        4A198E
 004A188F    push        dword ptr fs:[eax]
 004A1892    mov         dword ptr fs:[eax],esp
 004A1895    mov         eax,dword ptr [ebp-8]
 004A1898    mov         edx,dword ptr ds:[4C6B3C];TCustomListControl
 004A189E    call        @IsClass
 004A18A3    test        al,al
>004A18A5    je          004A1947
 004A18AB    mov         eax,dword ptr [ebp-8]
 004A18AE    mov         edx,dword ptr [eax]
 004A18B0    call        dword ptr [edx+0CC]
 004A18B6    mov         edx,dword ptr [ebp-4]
 004A18B9    mov         dword ptr [edx+0C8],eax;TCustomListAction.FItemIndex:Integer
 004A18BF    mov         eax,dword ptr [ebp-4]
 004A18C2    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 004A18C5    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A18C8    dec         eax
 004A18C9    test        eax,eax
>004A18CB    jl          004A1947
 004A18CD    inc         eax
 004A18CE    mov         dword ptr [ebp-10],eax
 004A18D1    mov         dword ptr [ebp-0C],0
 004A18D8    mov         eax,dword ptr [ebp-4]
 004A18DB    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 004A18DE    mov         edx,dword ptr [ebp-0C]
 004A18E1    call        TList.Get
 004A18E6    mov         edx,dword ptr ds:[4A122C];TListActionLink
 004A18EC    call        @IsClass
 004A18F1    test        al,al
>004A18F3    je          004A193F
 004A18F5    mov         eax,dword ptr [ebp-4]
 004A18F8    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 004A18FB    mov         edx,dword ptr [ebp-0C]
 004A18FE    call        TList.Get
 004A1903    mov         eax,dword ptr [eax+20]
 004A1906    cmp         eax,dword ptr [ebp-8]
>004A1909    je          004A193F
 004A190B    mov         eax,dword ptr [ebp-8]
 004A190E    mov         edx,dword ptr ds:[4C6B3C];TCustomListControl
 004A1914    call        @AsClass
 004A1919    mov         dword ptr [ebp-14],eax
 004A191C    mov         eax,dword ptr [ebp-14]
 004A191F    mov         edx,dword ptr [eax]
 004A1921    call        dword ptr [edx+0CC];@AbstractError
 004A1927    push        eax
 004A1928    mov         eax,dword ptr [ebp-4]
 004A192B    mov         eax,dword ptr [eax+50];TCustomListAction.FClients:TList
 004A192E    mov         edx,dword ptr [ebp-0C]
 004A1931    call        TList.Get
 004A1936    pop         edx
 004A1937    mov         ecx,dword ptr [eax]
 004A1939    call        dword ptr [ecx+8C]
 004A193F    inc         dword ptr [ebp-0C]
 004A1942    dec         dword ptr [ebp-10]
>004A1945    jne         004A18D8
 004A1947    mov         eax,dword ptr [ebp-4]
 004A194A    cmp         word ptr [eax+0C2],0;TCustomListAction.?fC2:word
>004A1952    je          004A1976
 004A1954    mov         eax,dword ptr [ebp-8]
 004A1957    mov         edx,dword ptr ds:[4C5774];TControl
 004A195D    call        @AsClass
 004A1962    mov         ecx,eax
 004A1964    mov         ebx,dword ptr [ebp-4]
 004A1967    mov         edx,dword ptr [ebp-4]
 004A196A    mov         eax,dword ptr [ebx+0C4];TCustomListAction.?fC4:dword
 004A1970    call        dword ptr [ebx+0C0];TCustomListAction.FOnItemSelected
 004A1976    xor         eax,eax
 004A1978    pop         edx
 004A1979    pop         ecx
 004A197A    pop         ecx
 004A197B    mov         dword ptr fs:[eax],edx
 004A197E    push        4A1995
 004A1983    mov         eax,dword ptr [ebp-4]
 004A1986    mov         byte ptr [eax+0A8],0;TCustomListAction.FInUpdate:Boolean
 004A198D    ret
>004A198E    jmp         @HandleFinally
>004A1993    jmp         004A1983
 004A1995    pop         ebx
 004A1996    mov         esp,ebp
 004A1998    pop         ebp
 004A1999    ret
end;*}

//004A199C
{*function sub_004A199C:?;
begin
 004A199C    push        ebp
 004A199D    mov         ebp,esp
 004A199F    add         esp,0FFFFFFF8
 004A19A2    push        ebx
 004A19A3    mov         dword ptr [ebp-4],eax
 004A19A6    mov         dword ptr [ebp-8],0FFFFFFFF
 004A19AD    mov         eax,dword ptr [ebp-4]
 004A19B0    cmp         word ptr [eax+0BA],0;TCustomListAction.?fBA:word
>004A19B8    je          004A19CF
 004A19BA    lea         ecx,[ebp-8]
 004A19BD    mov         ebx,dword ptr [ebp-4]
 004A19C0    mov         edx,dword ptr [ebp-4]
 004A19C3    mov         eax,dword ptr [ebx+0BC];TCustomListAction.?fBC:dword
 004A19C9    call        dword ptr [ebx+0B8];TCustomListAction.FOnGetItemCount
 004A19CF    mov         eax,dword ptr [ebp-8]
 004A19D2    pop         ebx
 004A19D3    pop         ecx
 004A19D4    pop         ecx
 004A19D5    pop         ebp
 004A19D6    ret
end;*}

//004A19D8
{*procedure sub_004A19D8(?:?; ?:?);
begin
 004A19D8    push        ebp
 004A19D9    mov         ebp,esp
 004A19DB    add         esp,0FFFFFFF4
 004A19DE    mov         dword ptr [ebp-8],ecx
 004A19E1    mov         dword ptr [ebp-0C],edx
 004A19E4    mov         dword ptr [ebp-4],eax
 004A19E7    mov         eax,dword ptr [ebp-8]
 004A19EA    call        @LStrClr
 004A19EF    mov         esp,ebp
 004A19F1    pop         ebp
 004A19F2    ret
end;*}

//004A19F4
{*function sub_004A19F4(?:?):?;
begin
 004A19F4    push        ebp
 004A19F5    mov         ebp,esp
 004A19F7    add         esp,0FFFFFFF4
 004A19FA    mov         dword ptr [ebp-0C],edx
 004A19FD    mov         dword ptr [ebp-4],eax
 004A1A00    mov         byte ptr [ebp-5],1
 004A1A04    mov         al,byte ptr [ebp-5]
 004A1A07    mov         esp,ebp
 004A1A09    pop         ebp
 004A1A0A    ret
end;*}

//004A1A0C
procedure sub_004A1A0C;
begin
{*
 004A1A0C    push        ebp
 004A1A0D    mov         ebp,esp
 004A1A0F    push        ecx
 004A1A10    mov         dword ptr [ebp-4],eax
 004A1A13    mov         eax,dword ptr [ebp-4]
 004A1A16    call        004835C0
 004A1A1B    mov         eax,dword ptr [ebp-4]
 004A1A1E    cmp         byte ptr [eax+0A1],0;TCustomListAction.FActivated:Boolean
>004A1A25    je          004A1A38
 004A1A27    mov         eax,dword ptr [ebp-4]
 004A1A2A    mov         dl,byte ptr [eax+0A1];TCustomListAction.FActivated:Boolean
 004A1A30    mov         eax,dword ptr [ebp-4]
 004A1A33    call        TVirtualListAction.SetActive
 004A1A38    mov         eax,dword ptr [ebp-4]
 004A1A3B    cmp         dword ptr [eax+0AC],0;TCustomListAction.FLoadedImages:TCustomImageList
>004A1A42    je          004A1A55
 004A1A44    mov         eax,dword ptr [ebp-4]
 004A1A47    mov         edx,dword ptr [eax+0AC];TCustomListAction.FLoadedImages:TCustomImageList
 004A1A4D    mov         eax,dword ptr [ebp-4]
 004A1A50    call        TVirtualListAction.SetImages
 004A1A55    pop         ecx
 004A1A56    pop         ebp
 004A1A57    ret
*}
end;

//004A1A58
procedure TVirtualListAction.SetActive(Value:Boolean);
begin
{*
 004A1A58    push        ebp
 004A1A59    mov         ebp,esp
 004A1A5B    add         esp,0FFFFFFF0
 004A1A5E    mov         byte ptr [ebp-5],dl
 004A1A61    mov         dword ptr [ebp-4],eax
 004A1A64    cmp         byte ptr [ebp-5],0
>004A1A68    je          004A1A84
 004A1A6A    mov         eax,dword ptr [ebp-4]
 004A1A6D    test        byte ptr [eax+1C],1;TVirtualListAction.FComponentState:TComponentState
>004A1A71    je          004A1A84
 004A1A73    mov         eax,dword ptr [ebp-4]
 004A1A76    mov         dl,byte ptr [ebp-5]
 004A1A79    mov         byte ptr [eax+0A1],dl;TVirtualListAction.FActivated:Boolean
>004A1A7F    jmp         004A1B59
 004A1A84    mov         eax,dword ptr [ebp-4]
 004A1A87    mov         al,byte ptr [eax+0A0];TVirtualListAction.FActive:Boolean
 004A1A8D    cmp         al,byte ptr [ebp-5]
>004A1A90    je          004A1B59
 004A1A96    mov         eax,dword ptr [ebp-4]
 004A1A99    mov         dl,byte ptr [ebp-5]
 004A1A9C    mov         byte ptr [eax+0A0],dl;TVirtualListAction.FActive:Boolean
 004A1AA2    mov         eax,dword ptr [ebp-4]
 004A1AA5    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004A1AA8    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A1AAB    dec         eax
 004A1AAC    test        eax,eax
>004A1AAE    jl          004A1B34
 004A1AB4    inc         eax
 004A1AB5    mov         dword ptr [ebp-10],eax
 004A1AB8    mov         dword ptr [ebp-0C],0
 004A1ABF    mov         eax,dword ptr [ebp-4]
 004A1AC2    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004A1AC5    mov         edx,dword ptr [ebp-0C]
 004A1AC8    call        TList.Get
 004A1ACD    mov         edx,dword ptr ds:[4A122C];TListActionLink
 004A1AD3    call        @IsClass
 004A1AD8    test        al,al
>004A1ADA    je          004A1B2C
 004A1ADC    mov         eax,dword ptr [ebp-4]
 004A1ADF    mov         byte ptr [eax+0B0],1;TVirtualListAction.FLoading:Boolean
 004A1AE6    xor         eax,eax
 004A1AE8    push        ebp
 004A1AE9    push        4A1B25
 004A1AEE    push        dword ptr fs:[eax]
 004A1AF1    mov         dword ptr fs:[eax],esp
 004A1AF4    mov         eax,dword ptr [ebp-4]
 004A1AF7    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004A1AFA    mov         edx,dword ptr [ebp-0C]
 004A1AFD    call        TList.Get
 004A1B02    mov         dl,byte ptr [ebp-5]
 004A1B05    mov         ecx,dword ptr [eax]
 004A1B07    call        dword ptr [ecx+80]
 004A1B0D    xor         eax,eax
 004A1B0F    pop         edx
 004A1B10    pop         ecx
 004A1B11    pop         ecx
 004A1B12    mov         dword ptr fs:[eax],edx
 004A1B15    push        4A1B2C
 004A1B1A    mov         eax,dword ptr [ebp-4]
 004A1B1D    mov         byte ptr [eax+0B0],0;TVirtualListAction.FLoading:Boolean
 004A1B24    ret
>004A1B25    jmp         @HandleFinally
>004A1B2A    jmp         004A1B1A
 004A1B2C    inc         dword ptr [ebp-0C]
 004A1B2F    dec         dword ptr [ebp-10]
>004A1B32    jne         004A1ABF
 004A1B34    mov         eax,dword ptr [ebp-4]
 004A1B37    mov         edx,dword ptr [eax]
 004A1B39    call        dword ptr [edx+30];TVirtualListAction.sub_00483F5C
 004A1B3C    mov         eax,dword ptr [ebp-4]
 004A1B3F    cmp         dword ptr [eax+0C8],0FFFFFFFF;TVirtualListAction.FItemIndex:Integer
>004A1B46    je          004A1B59
 004A1B48    mov         eax,dword ptr [ebp-4]
 004A1B4B    mov         edx,dword ptr [eax+0C8];TVirtualListAction.FItemIndex:Integer
 004A1B51    mov         eax,dword ptr [ebp-4]
 004A1B54    call        TVirtualListAction.SetItemIndex
 004A1B59    mov         esp,ebp
 004A1B5B    pop         ebp
 004A1B5C    ret
*}
end;

//004A1B60
procedure TVirtualListAction.SetImages(Value:TCustomImageList);
begin
{*
 004A1B60    push        ebp
 004A1B61    mov         ebp,esp
 004A1B63    add         esp,0FFFFFFF0
 004A1B66    mov         dword ptr [ebp-8],edx
 004A1B69    mov         dword ptr [ebp-4],eax
 004A1B6C    cmp         dword ptr [ebp-8],0
>004A1B70    je          004A1B89
 004A1B72    mov         eax,dword ptr [ebp-4]
 004A1B75    test        byte ptr [eax+1C],1;TVirtualListAction.FComponentState:TComponentState
>004A1B79    je          004A1B89
 004A1B7B    mov         eax,dword ptr [ebp-8]
 004A1B7E    mov         edx,dword ptr [ebp-4]
 004A1B81    mov         dword ptr [edx+0AC],eax;TVirtualListAction.FLoadedImages:TCustomImageList
>004A1B87    jmp         004A1BFA
 004A1B89    mov         eax,dword ptr [ebp-4]
 004A1B8C    mov         eax,dword ptr [eax+0A4];TVirtualListAction.FImages:TCustomImageList
 004A1B92    cmp         eax,dword ptr [ebp-8]
>004A1B95    je          004A1BFA
 004A1B97    mov         eax,dword ptr [ebp-8]
 004A1B9A    mov         edx,dword ptr [ebp-4]
 004A1B9D    mov         dword ptr [edx+0A4],eax;TVirtualListAction.FImages:TCustomImageList
 004A1BA3    mov         eax,dword ptr [ebp-4]
 004A1BA6    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004A1BA9    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A1BAC    dec         eax
 004A1BAD    test        eax,eax
>004A1BAF    jl          004A1BFA
 004A1BB1    inc         eax
 004A1BB2    mov         dword ptr [ebp-10],eax
 004A1BB5    mov         dword ptr [ebp-0C],0
 004A1BBC    mov         edx,dword ptr [ebp-0C]
 004A1BBF    mov         eax,dword ptr [ebp-4]
 004A1BC2    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004A1BC5    call        TList.Get
 004A1BCA    mov         edx,dword ptr ds:[4A122C];TListActionLink
 004A1BD0    call        @IsClass
 004A1BD5    test        al,al
>004A1BD7    je          004A1BF2
 004A1BD9    mov         edx,dword ptr [ebp-0C]
 004A1BDC    mov         eax,dword ptr [ebp-4]
 004A1BDF    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004A1BE2    call        TList.Get
 004A1BE7    mov         edx,dword ptr [ebp-8]
 004A1BEA    mov         ecx,dword ptr [eax]
 004A1BEC    call        dword ptr [ecx+88]
 004A1BF2    inc         dword ptr [ebp-0C]
 004A1BF5    dec         dword ptr [ebp-10]
>004A1BF8    jne         004A1BBC
 004A1BFA    mov         esp,ebp
 004A1BFC    pop         ebp
 004A1BFD    ret
*}
end;

//004A1C00
procedure TVirtualListAction.SetItemIndex(Value:Integer);
begin
{*
 004A1C00    push        ebp
 004A1C01    mov         ebp,esp
 004A1C03    add         esp,0FFFFFFF0
 004A1C06    mov         dword ptr [ebp-8],edx
 004A1C09    mov         dword ptr [ebp-4],eax
 004A1C0C    mov         eax,dword ptr [ebp-4]
 004A1C0F    cmp         byte ptr [eax+0A0],0;TVirtualListAction.FActive:Boolean
>004A1C16    je          004A1C7B
 004A1C18    mov         eax,dword ptr [ebp-4]
 004A1C1B    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004A1C1E    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A1C21    dec         eax
 004A1C22    test        eax,eax
>004A1C24    jl          004A1C6F
 004A1C26    inc         eax
 004A1C27    mov         dword ptr [ebp-10],eax
 004A1C2A    mov         dword ptr [ebp-0C],0
 004A1C31    mov         edx,dword ptr [ebp-0C]
 004A1C34    mov         eax,dword ptr [ebp-4]
 004A1C37    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004A1C3A    call        TList.Get
 004A1C3F    mov         edx,dword ptr ds:[4A122C];TListActionLink
 004A1C45    call        @IsClass
 004A1C4A    test        al,al
>004A1C4C    je          004A1C67
 004A1C4E    mov         edx,dword ptr [ebp-0C]
 004A1C51    mov         eax,dword ptr [ebp-4]
 004A1C54    mov         eax,dword ptr [eax+50];TVirtualListAction.FClients:TList
 004A1C57    call        TList.Get
 004A1C5C    mov         edx,dword ptr [ebp-8]
 004A1C5F    mov         ecx,dword ptr [eax]
 004A1C61    call        dword ptr [ecx+8C]
 004A1C67    inc         dword ptr [ebp-0C]
 004A1C6A    dec         dword ptr [ebp-10]
>004A1C6D    jne         004A1C31
 004A1C6F    mov         eax,dword ptr [ebp-8]
 004A1C72    mov         edx,dword ptr [ebp-4]
 004A1C75    mov         dword ptr [edx+0C8],eax;TVirtualListAction.FItemIndex:Integer
 004A1C7B    mov         esp,ebp
 004A1C7D    pop         ebp
 004A1C7E    ret
*}
end;

//004A1C80
{*procedure sub_004A1C80(?:?; ?:?);
begin
 004A1C80    push        ebp
 004A1C81    mov         ebp,esp
 004A1C83    add         esp,0FFFFFFF4
 004A1C86    mov         dword ptr [ebp-0C],ecx
 004A1C89    mov         dword ptr [ebp-8],edx
 004A1C8C    mov         dword ptr [ebp-4],eax
 004A1C8F    mov         esp,ebp
 004A1C91    pop         ebp
 004A1C92    ret
end;*}

//004A1C94
{*function sub_004A1C94(?:TVirtualListAction; ?:?; ?:?; ?:?; ?:?):?;
begin
 004A1C94    push        ebp
 004A1C95    mov         ebp,esp
 004A1C97    add         esp,0FFFFFFF0
 004A1C9A    push        ebx
 004A1C9B    mov         dword ptr [ebp-0C],ecx
 004A1C9E    mov         dword ptr [ebp-8],edx
 004A1CA1    mov         dword ptr [ebp-4],eax
 004A1CA4    mov         byte ptr [ebp-0D],0
 004A1CA8    mov         eax,dword ptr [ebp-4]
 004A1CAB    mov         edx,dword ptr [eax]
 004A1CAD    call        dword ptr [edx+54]
 004A1CB0    test        eax,eax
>004A1CB2    jle         004A1CEA
 004A1CB4    mov         eax,dword ptr [ebp-4]
 004A1CB7    cmp         word ptr [eax+0D2],0
 004A1CBF    setne       byte ptr [ebp-0D]
 004A1CC3    cmp         byte ptr [ebp-0D],0
>004A1CC7    je          004A1CEA
 004A1CC9    mov         eax,dword ptr [ebp-0C]
 004A1CCC    push        eax
 004A1CCD    mov         eax,dword ptr [ebp+0C]
 004A1CD0    push        eax
 004A1CD1    mov         eax,dword ptr [ebp+8]
 004A1CD4    push        eax
 004A1CD5    mov         ebx,dword ptr [ebp-4]
 004A1CD8    mov         ecx,dword ptr [ebp-8]
 004A1CDB    mov         edx,dword ptr [ebp-4]
 004A1CDE    mov         eax,dword ptr [ebx+0D4]
 004A1CE4    call        dword ptr [ebx+0D0]
 004A1CEA    mov         al,byte ptr [ebp-0D]
 004A1CED    pop         ebx
 004A1CEE    mov         esp,ebp
 004A1CF0    pop         ebp
 004A1CF1    ret         8
end;*}

//004A1CF4
{*procedure sub_004A1CF4(?:?; ?:?);
begin
 004A1CF4    push        ebp
 004A1CF5    mov         ebp,esp
 004A1CF7    add         esp,0FFFFFFDC
 004A1CFA    push        ebx
 004A1CFB    xor         ebx,ebx
 004A1CFD    mov         dword ptr [ebp-24],ebx
 004A1D00    mov         dword ptr [ebp-18],ebx
 004A1D03    mov         dword ptr [ebp-0C],ecx
 004A1D06    mov         dword ptr [ebp-8],edx
 004A1D09    mov         dword ptr [ebp-4],eax
 004A1D0C    xor         eax,eax
 004A1D0E    push        ebp
 004A1D0F    push        4A1DD5
 004A1D14    push        dword ptr fs:[eax]
 004A1D17    mov         dword ptr fs:[eax],esp
 004A1D1A    mov         eax,dword ptr [ebp-4]
 004A1D1D    mov         edx,dword ptr [eax]
 004A1D1F    call        dword ptr [edx+54];TVirtualListAction.sub_004A199C
 004A1D22    cmp         eax,dword ptr [ebp-8]
>004A1D25    jle         004A1D86
 004A1D27    mov         eax,dword ptr [ebp-4]
 004A1D2A    mov         edx,dword ptr [eax]
 004A1D2C    call        dword ptr [edx+54];TVirtualListAction.sub_004A199C
 004A1D2F    test        eax,eax
>004A1D31    jle         004A1D86
 004A1D33    mov         eax,dword ptr [ebp-4]
 004A1D36    cmp         word ptr [eax+0D2],0;TVirtualListAction.?fD2:word
>004A1D3E    je          004A1D63
 004A1D40    mov         eax,dword ptr [ebp-0C]
 004A1D43    push        eax
 004A1D44    lea         eax,[ebp-10]
 004A1D47    push        eax
 004A1D48    lea         eax,[ebp-14]
 004A1D4B    push        eax
 004A1D4C    mov         ebx,dword ptr [ebp-4]
 004A1D4F    mov         ecx,dword ptr [ebp-8]
 004A1D52    mov         edx,dword ptr [ebp-4]
 004A1D55    mov         eax,dword ptr [ebx+0D4];TVirtualListAction.?fD4:dword
 004A1D5B    call        dword ptr [ebx+0D0];TVirtualListAction.OnGetItem
>004A1D61    jmp         004A1DB7
 004A1D63    lea         edx,[ebp-18]
 004A1D66    mov         eax,[0055B53C];^SNoGetItemEventHandler:TResStringRec
 004A1D6B    call        LoadResString
 004A1D70    mov         ecx,dword ptr [ebp-18]
 004A1D73    mov         dl,1
 004A1D75    mov         eax,[004653B4];Exception
 004A1D7A    call        Exception.Create;Exception.Create
 004A1D7F    call        @RaiseExcept
>004A1D84    jmp         004A1DB7
 004A1D86    mov         eax,dword ptr [ebp-8]
 004A1D89    mov         dword ptr [ebp-20],eax
 004A1D8C    mov         byte ptr [ebp-1C],0
 004A1D90    lea         eax,[ebp-20]
 004A1D93    push        eax
 004A1D94    push        0
 004A1D96    lea         edx,[ebp-24]
 004A1D99    mov         eax,[0055B590];^SListIndexError:TResStringRec
 004A1D9E    call        LoadResString
 004A1DA3    mov         ecx,dword ptr [ebp-24]
 004A1DA6    mov         dl,1
 004A1DA8    mov         eax,[004653B4];Exception
 004A1DAD    call        Exception.CreateFmt;Exception.Create
 004A1DB2    call        @RaiseExcept
 004A1DB7    xor         eax,eax
 004A1DB9    pop         edx
 004A1DBA    pop         ecx
 004A1DBB    pop         ecx
 004A1DBC    mov         dword ptr fs:[eax],edx
 004A1DBF    push        4A1DDC
 004A1DC4    lea         eax,[ebp-24]
 004A1DC7    call        @LStrClr
 004A1DCC    lea         eax,[ebp-18]
 004A1DCF    call        @LStrClr
 004A1DD4    ret
>004A1DD5    jmp         @HandleFinally
>004A1DDA    jmp         004A1DC4
 004A1DDC    pop         ebx
 004A1DDD    mov         esp,ebp
 004A1DDF    pop         ebp
 004A1DE0    ret
end;*}

//004A1DE4
{*procedure sub_004A1DE4(?:?; ?:?);
begin
 004A1DE4    push        ebp
 004A1DE5    mov         ebp,esp
 004A1DE7    add         esp,0FFFFFFD8
 004A1DEA    mov         byte ptr [ebp-9],cl
 004A1DED    mov         dword ptr [ebp-8],edx
 004A1DF0    mov         dword ptr [ebp-4],eax
 004A1DF3    mov         al,byte ptr [ebp-9]
 004A1DF6    sub         al,1
>004A1DF8    jb          004A1E07
 004A1DFA    dec         al
>004A1DFC    je          004A1F27
>004A1E02    jmp         004A1FE5
 004A1E07    mov         eax,dword ptr [ebp-4]
 004A1E0A    cmp         dword ptr [eax+28],0;TStaticListItems................FStaticListAction:TStaticListAction
>004A1E0E    je          004A1FE5
 004A1E14    mov         eax,dword ptr [ebp-4]
 004A1E17    mov         eax,dword ptr [eax+28];TStaticListItems.................FStaticListAction:TStaticListAct...
 004A1E1A    cmp         byte ptr [eax+0A0],0;TStaticListAction.FActive:Boolean
>004A1E21    je          004A1FE5
 004A1E27    mov         eax,dword ptr [ebp-4]
 004A1E2A    mov         eax,dword ptr [eax+28];TStaticListItems..................FStaticListAction:TStaticListAc...
 004A1E2D    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 004A1E30    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A1E33    dec         eax
 004A1E34    test        eax,eax
>004A1E36    jl          004A1FE5
 004A1E3C    inc         eax
 004A1E3D    mov         dword ptr [ebp-14],eax
 004A1E40    mov         dword ptr [ebp-10],0
 004A1E47    mov         eax,dword ptr [ebp-4]
 004A1E4A    mov         eax,dword ptr [eax+28];TStaticListItems...................FStaticListAction:TStaticListA...
 004A1E4D    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 004A1E50    mov         edx,dword ptr [ebp-10]
 004A1E53    call        TList.Get
 004A1E58    mov         dword ptr [ebp-18],eax
 004A1E5B    mov         eax,dword ptr [ebp-18]
 004A1E5E    mov         eax,dword ptr [eax+20]
 004A1E61    mov         edx,dword ptr ds:[4A7844];TCustomComboBoxEx
 004A1E67    call        @IsClass
 004A1E6C    test        al,al
>004A1E6E    je          004A1EC1
 004A1E70    mov         eax,dword ptr [ebp-18]
 004A1E73    mov         eax,dword ptr [eax+20]
 004A1E76    mov         edx,dword ptr ds:[4A7844];TCustomComboBoxEx
 004A1E7C    call        @AsClass
 004A1E81    mov         dword ptr [ebp-1C],eax
 004A1E84    mov         eax,dword ptr [ebp-1C]
 004A1E87    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004A1E8D    call        004B445C
 004A1E92    mov         dword ptr [ebp-20],eax
 004A1E95    mov         eax,dword ptr [ebp-8]
 004A1E98    mov         edx,dword ptr [eax+10]
 004A1E9B    mov         eax,dword ptr [ebp-20]
 004A1E9E    mov         ecx,dword ptr [eax]
 004A1EA0    call        dword ptr [ecx+20]
 004A1EA3    mov         eax,dword ptr [ebp-8]
 004A1EA6    mov         edx,dword ptr [eax+18]
 004A1EA9    mov         eax,dword ptr [ebp-20]
 004A1EAC    mov         ecx,dword ptr [eax]
 004A1EAE    call        dword ptr [ecx+28]
 004A1EB1    mov         eax,dword ptr [ebp-8]
 004A1EB4    mov         edx,dword ptr [eax+14]
 004A1EB7    mov         eax,dword ptr [ebp-20]
 004A1EBA    mov         ecx,dword ptr [eax]
 004A1EBC    call        dword ptr [ecx+24]
>004A1EBF    jmp         004A1F16
 004A1EC1    mov         eax,dword ptr [ebp-18]
 004A1EC4    mov         eax,dword ptr [eax+20]
 004A1EC7    mov         edx,dword ptr ds:[4A6240];TCustomListView
 004A1ECD    call        @IsClass
 004A1ED2    test        al,al
>004A1ED4    je          004A1F16
 004A1ED6    mov         eax,dword ptr [ebp-18]
 004A1ED9    mov         eax,dword ptr [eax+20]
 004A1EDC    mov         eax,dword ptr [eax+22C]
 004A1EE2    call        004AE674
 004A1EE7    mov         dword ptr [ebp-24],eax
 004A1EEA    mov         eax,dword ptr [ebp-8]
 004A1EED    mov         edx,dword ptr [eax+10]
 004A1EF0    mov         eax,dword ptr [ebp-24]
 004A1EF3    call        004ADF4C
 004A1EF8    mov         eax,dword ptr [ebp-8]
 004A1EFB    mov         ecx,dword ptr [eax+18]
 004A1EFE    xor         edx,edx
 004A1F00    mov         eax,dword ptr [ebp-24]
 004A1F03    call        004AE188
 004A1F08    mov         eax,dword ptr [ebp-8]
 004A1F0B    mov         edx,dword ptr [eax+14]
 004A1F0E    mov         eax,dword ptr [ebp-24]
 004A1F11    call        004AE018
 004A1F16    inc         dword ptr [ebp-10]
 004A1F19    dec         dword ptr [ebp-14]
>004A1F1C    jne         004A1E47
>004A1F22    jmp         004A1FE5
 004A1F27    mov         eax,dword ptr [ebp-4]
 004A1F2A    cmp         dword ptr [eax+28],0;TStaticListItems....................FStaticListAction:TStaticListAc...
>004A1F2E    je          004A1FE5
 004A1F34    mov         eax,dword ptr [ebp-4]
 004A1F37    mov         eax,dword ptr [eax+28];TStaticListItems.....................FStaticListAction:TStaticLis...
 004A1F3A    cmp         byte ptr [eax+0A0],0;TStaticListAction.FActive:Boolean
>004A1F41    je          004A1FE5
 004A1F47    mov         eax,dword ptr [ebp-4]
 004A1F4A    mov         eax,dword ptr [eax+28];TStaticListItems......................FStaticListAction:TStaticLi...
 004A1F4D    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 004A1F50    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A1F53    dec         eax
 004A1F54    test        eax,eax
>004A1F56    jl          004A1FE5
 004A1F5C    inc         eax
 004A1F5D    mov         dword ptr [ebp-14],eax
 004A1F60    mov         dword ptr [ebp-10],0
 004A1F67    mov         eax,dword ptr [ebp-4]
 004A1F6A    mov         eax,dword ptr [eax+28];TStaticListItems.......................FStaticListAction:TStaticL...
 004A1F6D    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 004A1F70    mov         edx,dword ptr [ebp-10]
 004A1F73    call        TList.Get
 004A1F78    mov         dword ptr [ebp-28],eax
 004A1F7B    mov         eax,dword ptr [ebp-28]
 004A1F7E    mov         eax,dword ptr [eax+20]
 004A1F81    mov         edx,dword ptr ds:[4A7844];TCustomComboBoxEx
 004A1F87    call        @IsClass
 004A1F8C    test        al,al
>004A1F8E    je          004A1FAD
 004A1F90    mov         eax,dword ptr [ebp-8]
 004A1F93    call        TCollectionItem.GetIndex
 004A1F98    mov         edx,eax
 004A1F9A    mov         eax,dword ptr [ebp-28]
 004A1F9D    mov         eax,dword ptr [eax+20]
 004A1FA0    mov         eax,dword ptr [eax+23C]
 004A1FA6    mov         ecx,dword ptr [eax]
 004A1FA8    call        dword ptr [ecx+48]
>004A1FAB    jmp         004A1FDD
 004A1FAD    mov         eax,dword ptr [ebp-28]
 004A1FB0    mov         eax,dword ptr [eax+20]
 004A1FB3    mov         edx,dword ptr ds:[4A6240];TCustomListView
 004A1FB9    call        @IsClass
 004A1FBE    test        al,al
>004A1FC0    je          004A1FDD
 004A1FC2    mov         eax,dword ptr [ebp-8]
 004A1FC5    call        TCollectionItem.GetIndex
 004A1FCA    mov         edx,eax
 004A1FCC    mov         eax,dword ptr [ebp-28]
 004A1FCF    mov         eax,dword ptr [eax+20]
 004A1FD2    mov         eax,dword ptr [eax+22C]
 004A1FD8    call        004AF178
 004A1FDD    inc         dword ptr [ebp-10]
 004A1FE0    dec         dword ptr [ebp-14]
>004A1FE3    jne         004A1F67
 004A1FE5    mov         esp,ebp
 004A1FE7    pop         ebp
 004A1FE8    ret
end;*}

//004A1FEC
{*procedure sub_004A1FEC(?:?);
begin
 004A1FEC    push        ebp
 004A1FED    mov         ebp,esp
 004A1FEF    add         esp,0FFFFFFE0
 004A1FF2    mov         dword ptr [ebp-8],edx
 004A1FF5    mov         dword ptr [ebp-4],eax
 004A1FF8    mov         edx,dword ptr [ebp-8]
 004A1FFB    mov         eax,dword ptr [ebp-4]
 004A1FFE    call        00479EE8
 004A2003    mov         eax,dword ptr [ebp-4]
 004A2006    cmp         dword ptr [eax+28],0;TStaticListItems........................FStaticListAction:TStaticLi...
>004A200A    je          004A214F
 004A2010    cmp         dword ptr [ebp-8],0
>004A2014    je          004A214F
 004A201A    mov         eax,dword ptr [ebp-4]
 004A201D    mov         eax,dword ptr [eax+28];TStaticListItems.........................FStaticListAction:TStati...
 004A2020    cmp         byte ptr [eax+0A0],0;TStaticListAction.FActive:Boolean
>004A2027    je          004A214F
 004A202D    mov         eax,dword ptr [ebp-4]
 004A2030    mov         eax,dword ptr [eax+28];TStaticListItems..........................FStaticListAction:TStat...
 004A2033    cmp         byte ptr [eax+0B0],0;TStaticListAction.FLoading:Boolean
>004A203A    jne         004A214F
 004A2040    mov         eax,dword ptr [ebp-4]
 004A2043    mov         eax,dword ptr [eax+28];TStaticListItems...........................FStaticListAction:TSta...
 004A2046    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 004A2049    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A204C    dec         eax
 004A204D    test        eax,eax
>004A204F    jl          004A214F
 004A2055    inc         eax
 004A2056    mov         dword ptr [ebp-10],eax
 004A2059    mov         dword ptr [ebp-0C],0
 004A2060    mov         eax,dword ptr [ebp-4]
 004A2063    mov         eax,dword ptr [eax+28];TStaticListItems............................FStaticListAction:TSt...
 004A2066    mov         eax,dword ptr [eax+50];TStaticListAction.FClients:TList
 004A2069    mov         edx,dword ptr [ebp-0C]
 004A206C    call        TList.Get
 004A2071    mov         dword ptr [ebp-14],eax
 004A2074    mov         eax,dword ptr [ebp-14]
 004A2077    mov         eax,dword ptr [eax+20]
 004A207A    mov         edx,dword ptr ds:[4A7844];TCustomComboBoxEx
 004A2080    call        @IsClass
 004A2085    test        al,al
>004A2087    je          004A20E4
 004A2089    mov         eax,dword ptr [ebp-14]
 004A208C    mov         eax,dword ptr [eax+20]
 004A208F    mov         edx,dword ptr ds:[4A7844];TCustomComboBoxEx
 004A2095    call        @AsClass
 004A209A    mov         dword ptr [ebp-18],eax
 004A209D    mov         eax,dword ptr [ebp-8]
 004A20A0    call        TCollectionItem.GetIndex
 004A20A5    mov         edx,eax
 004A20A7    mov         eax,dword ptr [ebp-18]
 004A20AA    mov         eax,dword ptr [eax+28C];TCustomComboBoxEx.FItemsEx:TComboExItems
 004A20B0    call        004A1720
 004A20B5    mov         dword ptr [ebp-1C],eax
 004A20B8    mov         eax,dword ptr [ebp-8]
 004A20BB    mov         edx,dword ptr [eax+10]
 004A20BE    mov         eax,dword ptr [ebp-1C]
 004A20C1    mov         ecx,dword ptr [eax]
 004A20C3    call        dword ptr [ecx+20]
 004A20C6    mov         eax,dword ptr [ebp-8]
 004A20C9    mov         edx,dword ptr [eax+18]
 004A20CC    mov         eax,dword ptr [ebp-1C]
 004A20CF    mov         ecx,dword ptr [eax]
 004A20D1    call        dword ptr [ecx+28]
 004A20D4    mov         eax,dword ptr [ebp-8]
 004A20D7    mov         edx,dword ptr [eax+14]
 004A20DA    mov         eax,dword ptr [ebp-1C]
 004A20DD    mov         ecx,dword ptr [eax]
 004A20DF    call        dword ptr [ecx+24]
>004A20E2    jmp         004A2143
 004A20E4    mov         eax,dword ptr [ebp-14]
 004A20E7    mov         eax,dword ptr [eax+20]
 004A20EA    mov         edx,dword ptr ds:[4A6240];TCustomListView
 004A20F0    call        @IsClass
 004A20F5    test        al,al
>004A20F7    je          004A2143
 004A20F9    mov         eax,dword ptr [ebp-8]
 004A20FC    call        TCollectionItem.GetIndex
 004A2101    mov         edx,eax
 004A2103    mov         eax,dword ptr [ebp-14]
 004A2106    mov         eax,dword ptr [eax+20]
 004A2109    mov         eax,dword ptr [eax+22C]
 004A210F    call        004AE758
 004A2114    mov         dword ptr [ebp-20],eax
 004A2117    mov         eax,dword ptr [ebp-8]
 004A211A    mov         edx,dword ptr [eax+10]
 004A211D    mov         eax,dword ptr [ebp-20]
 004A2120    call        004ADF4C
 004A2125    mov         eax,dword ptr [ebp-8]
 004A2128    mov         ecx,dword ptr [eax+18]
 004A212B    xor         edx,edx
 004A212D    mov         eax,dword ptr [ebp-20]
 004A2130    call        004AE188
 004A2135    mov         eax,dword ptr [ebp-8]
 004A2138    mov         edx,dword ptr [eax+14]
 004A213B    mov         eax,dword ptr [ebp-20]
 004A213E    call        004AE018
 004A2143    inc         dword ptr [ebp-0C]
 004A2146    dec         dword ptr [ebp-10]
>004A2149    jne         004A2060
 004A214F    mov         esp,ebp
 004A2151    pop         ebp
 004A2152    ret
end;*}

//004A2154
constructor sub_004A2154;
begin
{*
 004A2154    push        ebp
 004A2155    mov         ebp,esp
 004A2157    add         esp,0FFFFFFF4
 004A215A    test        dl,dl
>004A215C    je          004A2166
 004A215E    add         esp,0FFFFFFF0
 004A2161    call        @ClassCreate
 004A2166    mov         dword ptr [ebp-0C],ecx
 004A2169    mov         byte ptr [ebp-5],dl
 004A216C    mov         dword ptr [ebp-4],eax
 004A216F    mov         ecx,dword ptr [ebp-0C]
 004A2172    xor         edx,edx
 004A2174    mov         eax,dword ptr [ebp-4]
 004A2177    call        004A17F0
 004A217C    mov         eax,dword ptr [ebp-4]
 004A217F    mov         edx,dword ptr [eax]
 004A2181    call        dword ptr [edx+60];TStaticListAction.sub_004A22B4
 004A2184    push        eax
 004A2185    mov         ecx,dword ptr [ebp-4]
 004A2188    mov         dl,1
 004A218A    mov         eax,[004A0E70];TStaticListItems
 004A218F    call        TStaticListItems.Create;TStaticListItems.Create
 004A2194    mov         edx,dword ptr [ebp-4]
 004A2197    mov         dword ptr [edx+0D0],eax;TStaticListAction.Items:TStaticListItems
 004A219D    mov         eax,dword ptr [ebp-4]
 004A21A0    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 004A21A6    mov         edx,dword ptr [ebp-4]
 004A21A9    mov         dword ptr [eax+28],edx;TStaticListItems.............................FStaticListAction:TS...
 004A21AC    mov         eax,dword ptr [ebp-4]
 004A21AF    cmp         byte ptr [ebp-5],0
>004A21B3    je          004A21C4
 004A21B5    call        @AfterConstruction
 004A21BA    pop         dword ptr fs:[0]
 004A21C1    add         esp,0C
 004A21C4    mov         eax,dword ptr [ebp-4]
 004A21C7    mov         esp,ebp
 004A21C9    pop         ebp
 004A21CA    ret
*}
end;

//004A21CC
destructor TStaticListAction.Destroy;
begin
{*
 004A21CC    push        ebp
 004A21CD    mov         ebp,esp
 004A21CF    add         esp,0FFFFFFF8
 004A21D2    call        @BeforeDestruction
 004A21D7    mov         byte ptr [ebp-5],dl
 004A21DA    mov         dword ptr [ebp-4],eax
 004A21DD    mov         eax,dword ptr [ebp-4]
 004A21E0    add         eax,0D0
 004A21E5    call        FreeAndNil
 004A21EA    mov         dl,byte ptr [ebp-5]
 004A21ED    and         dl,0FC
 004A21F0    mov         eax,dword ptr [ebp-4]
 004A21F3    call        TCustomAction.Destroy
 004A21F8    cmp         byte ptr [ebp-5],0
>004A21FC    jle         004A2206
 004A21FE    mov         eax,dword ptr [ebp-4]
 004A2201    call        @ClassDestroy
 004A2206    pop         ecx
 004A2207    pop         ecx
 004A2208    pop         ebp
 004A2209    ret
*}
end;

//004A220C
{*function sub_004A220C:?;
begin
 004A220C    push        ebp
 004A220D    mov         ebp,esp
 004A220F    add         esp,0FFFFFFF8
 004A2212    mov         dword ptr [ebp-4],eax
 004A2215    mov         eax,dword ptr [ebp-4]
 004A2218    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 004A221E    call        00479B60
 004A2223    mov         dword ptr [ebp-8],eax
 004A2226    mov         eax,dword ptr [ebp-8]
 004A2229    pop         ecx
 004A222A    pop         ecx
 004A222B    pop         ebp
 004A222C    ret
end;*}

//004A2230
{*function sub_004A2230(?:TStaticListAction; ?:?; ?:?):?;
begin
 004A2230    push        ebp
 004A2231    mov         ebp,esp
 004A2233    add         esp,0FFFFFFF0
 004A2236    push        ebx
 004A2237    mov         dword ptr [ebp-0C],ecx
 004A223A    mov         dword ptr [ebp-8],edx
 004A223D    mov         dword ptr [ebp-4],eax
 004A2240    cmp         dword ptr [ebp-8],0
>004A2244    jl          004A2259
 004A2246    mov         eax,dword ptr [ebp-4]
 004A2249    mov         eax,dword ptr [eax+0D0]
 004A224F    call        00479B60
 004A2254    cmp         eax,dword ptr [ebp-8]
>004A2257    jg          004A225D
 004A2259    xor         eax,eax
>004A225B    jmp         004A225F
 004A225D    mov         al,1
 004A225F    mov         byte ptr [ebp-0D],al
 004A2262    cmp         byte ptr [ebp-0D],0
>004A2266    je          004A22A9
 004A2268    mov         edx,dword ptr [ebp-8]
 004A226B    mov         eax,dword ptr [ebp-4]
 004A226E    mov         eax,dword ptr [eax+0D0]
 004A2274    call        004A1720
 004A2279    mov         edx,eax
 004A227B    mov         eax,dword ptr [ebp-0C]
 004A227E    mov         ecx,dword ptr [eax]
 004A2280    call        dword ptr [ecx+8]
 004A2283    mov         eax,dword ptr [ebp-4]
 004A2286    cmp         word ptr [eax+0DA],0
>004A228E    je          004A22A9
 004A2290    lea         eax,[ebp-0C]
 004A2293    push        eax
 004A2294    mov         ebx,dword ptr [ebp-4]
 004A2297    mov         ecx,dword ptr [ebp-8]
 004A229A    mov         edx,dword ptr [ebp-4]
 004A229D    mov         eax,dword ptr [ebx+0DC]
 004A22A3    call        dword ptr [ebx+0D8]
 004A22A9    mov         al,byte ptr [ebp-0D]
 004A22AC    pop         ebx
 004A22AD    mov         esp,ebp
 004A22AF    pop         ebp
 004A22B0    ret
end;*}

//004A22B4
{*function sub_004A22B4:?;
begin
 004A22B4    push        ebp
 004A22B5    mov         ebp,esp
 004A22B7    add         esp,0FFFFFFF8
 004A22BA    mov         dword ptr [ebp-4],eax
 004A22BD    mov         eax,[004A060C];TListControlItem
 004A22C2    mov         dword ptr [ebp-8],eax
 004A22C5    mov         eax,dword ptr [ebp-8]
 004A22C8    pop         ecx
 004A22C9    pop         ecx
 004A22CA    pop         ebp
 004A22CB    ret
end;*}

//004A22CC
{*procedure sub_004A22CC(?:?; ?:?);
begin
 004A22CC    push        ebp
 004A22CD    mov         ebp,esp
 004A22CF    add         esp,0FFFFFFF4
 004A22D2    mov         dword ptr [ebp-0C],ecx
 004A22D5    mov         dword ptr [ebp-8],edx
 004A22D8    mov         dword ptr [ebp-4],eax
 004A22DB    mov         edx,dword ptr [ebp-8]
 004A22DE    mov         eax,dword ptr [ebp-4]
 004A22E1    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 004A22E7    call        004A1720
 004A22EC    mov         edx,dword ptr [eax+10]
 004A22EF    mov         eax,dword ptr [ebp-0C]
 004A22F2    call        @LStrAsg
 004A22F7    mov         esp,ebp
 004A22F9    pop         ebp
 004A22FA    ret
end;*}

//004A22FC
procedure TStaticListAction.SetItems(Value:TStaticListItems);
begin
{*
 004A22FC    push        ebp
 004A22FD    mov         ebp,esp
 004A22FF    add         esp,0FFFFFFF8
 004A2302    mov         dword ptr [ebp-8],edx
 004A2305    mov         dword ptr [ebp-4],eax
 004A2308    mov         edx,dword ptr [ebp-8]
 004A230B    mov         eax,dword ptr [ebp-4]
 004A230E    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 004A2314    mov         ecx,dword ptr [eax]
 004A2316    call        dword ptr [ecx+8];TStaticListItems.sub_00479958
 004A2319    pop         ecx
 004A231A    pop         ecx
 004A231B    pop         ebp
 004A231C    ret
*}
end;

//004A2320
{*procedure sub_004A2320(?:?; ?:?);
begin
 004A2320    push        ebp
 004A2321    mov         ebp,esp
 004A2323    add         esp,0FFFFFFF4
 004A2326    mov         dword ptr [ebp-0C],ecx
 004A2329    mov         dword ptr [ebp-8],edx
 004A232C    mov         dword ptr [ebp-4],eax
 004A232F    mov         edx,dword ptr [ebp-8]
 004A2332    mov         eax,dword ptr [ebp-4]
 004A2335    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 004A233B    call        004A1720
 004A2340    mov         edx,dword ptr [ebp-0C]
 004A2343    mov         ecx,dword ptr [eax]
 004A2345    call        dword ptr [ecx+20]
 004A2348    mov         esp,ebp
 004A234A    pop         ebp
 004A234B    ret
end;*}

//004A234C
{*function sub_004A234C:?;
begin
 004A234C    push        ebp
 004A234D    mov         ebp,esp
 004A234F    add         esp,0FFFFFFF8
 004A2352    mov         dword ptr [ebp-4],eax
 004A2355    mov         eax,dword ptr [ebp-4]
 004A2358    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A235B    mov         edx,dword ptr ds:[4A09A8];TCustomListAction
 004A2361    call        @IsClass
 004A2366    mov         byte ptr [ebp-5],al
 004A2369    mov         al,byte ptr [ebp-5]
 004A236C    pop         ecx
 004A236D    pop         ecx
 004A236E    pop         ebp
 004A236F    ret
end;*}

//004A2370
{*function sub_004A2370:?;
begin
 004A2370    push        ebp
 004A2371    mov         ebp,esp
 004A2373    add         esp,0FFFFFFF8
 004A2376    mov         dword ptr [ebp-4],eax
 004A2379    mov         eax,dword ptr [ebp-4]
 004A237C    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A237F    mov         edx,dword ptr ds:[4A09A8];TCustomListAction
 004A2385    call        @IsClass
 004A238A    test        al,al
>004A238C    je          004A239D
 004A238E    mov         eax,dword ptr [ebp-4]
 004A2391    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A2394    cmp         dword ptr [eax+0A4],0
>004A239B    jne         004A23A1
 004A239D    xor         eax,eax
>004A239F    jmp         004A23A3
 004A23A1    mov         al,1
 004A23A3    mov         byte ptr [ebp-5],al
 004A23A6    mov         al,byte ptr [ebp-5]
 004A23A9    pop         ecx
 004A23AA    pop         ecx
 004A23AB    pop         ebp
 004A23AC    ret
end;*}

//004A23B0
{*procedure sub_004A23B0(?:?);
begin
 004A23B0    push        ebp
 004A23B1    mov         ebp,esp
 004A23B3    add         esp,0FFFFFFF8
 004A23B6    mov         dword ptr [ebp-8],edx
 004A23B9    mov         dword ptr [ebp-4],eax
 004A23BC    mov         edx,dword ptr [ebp-8]
 004A23BF    mov         eax,dword ptr [ebp-4]
 004A23C2    call        00483CA8
 004A23C7    mov         eax,dword ptr [ebp-4]
 004A23CA    mov         eax,dword ptr [eax+20];TListActionLink................FClient:TWinControl
 004A23CD    mov         edx,dword ptr ds:[4C6B3C];TCustomListControl
 004A23D3    call        @IsClass
 004A23D8    test        al,al
>004A23DA    je          004A2408
 004A23DC    mov         eax,dword ptr [ebp-4]
 004A23DF    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A23E2    mov         edx,dword ptr ds:[4A09A8];TCustomListAction
 004A23E8    call        @IsClass
 004A23ED    test        al,al
>004A23EF    je          004A2408
 004A23F1    mov         eax,dword ptr [ebp-4]
 004A23F4    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A23F7    cmp         byte ptr [eax+0A0],0
>004A23FE    je          004A2408
 004A2400    mov         eax,dword ptr [ebp-4]
 004A2403    call        004A24A0
 004A2408    pop         ecx
 004A2409    pop         ecx
 004A240A    pop         ebp
 004A240B    ret
end;*}

//004A240C
{*procedure sub_004A240C(?:?);
begin
 004A240C    push        ebp
 004A240D    mov         ebp,esp
 004A240F    add         esp,0FFFFFFF8
 004A2412    mov         byte ptr [ebp-5],dl
 004A2415    mov         dword ptr [ebp-4],eax
 004A2418    cmp         byte ptr [ebp-5],0
>004A241C    jne         004A2443
 004A241E    mov         eax,dword ptr [ebp-4]
 004A2421    mov         eax,dword ptr [eax+20];TListActionLink.................FClient:TWinControl
 004A2424    mov         edx,dword ptr ds:[4C6B3C];TCustomListControl
 004A242A    call        @IsClass
 004A242F    test        al,al
>004A2431    je          004A248A
 004A2433    mov         eax,dword ptr [ebp-4]
 004A2436    mov         eax,dword ptr [eax+20];TListActionLink..................FClient:TWinControl
 004A2439    mov         edx,dword ptr [eax]
 004A243B    call        dword ptr [edx+0D8]
>004A2441    jmp         004A248A
 004A2443    cmp         byte ptr [ebp-5],0
>004A2447    je          004A246D
 004A2449    mov         eax,dword ptr [ebp-4]
 004A244C    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A244F    mov         edx,dword ptr ds:[4A09A8];TCustomListAction
 004A2455    call        @IsClass
 004A245A    test        al,al
>004A245C    je          004A246D
 004A245E    mov         eax,dword ptr [ebp-4]
 004A2461    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A2464    cmp         byte ptr [eax+0A0],0
>004A246B    je          004A248A
 004A246D    mov         eax,dword ptr [ebp-4]
 004A2470    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A2473    mov         edx,dword ptr ds:[4A09A8];TCustomListAction
 004A2479    call        @IsClass
 004A247E    test        al,al
>004A2480    je          004A248A
 004A2482    mov         eax,dword ptr [ebp-4]
 004A2485    call        004A24A0
 004A248A    pop         ecx
 004A248B    pop         ecx
 004A248C    pop         ebp
 004A248D    ret
end;*}

//004A2490
{*procedure sub_004A2490(?:?);
begin
 004A2490    push        ebp
 004A2491    mov         ebp,esp
 004A2493    add         esp,0FFFFFFF8
 004A2496    mov         dword ptr [ebp-8],edx
 004A2499    mov         dword ptr [ebp-4],eax
 004A249C    pop         ecx
 004A249D    pop         ecx
 004A249E    pop         ebp
 004A249F    ret
end;*}

//004A24A0
procedure sub_004A24A0(?:TListActionLink);
begin
{*
 004A24A0    push        ebp
 004A24A1    mov         ebp,esp
 004A24A3    add         esp,0FFFFFFE0
 004A24A6    push        ebx
 004A24A7    xor         edx,edx
 004A24A9    mov         dword ptr [ebp-0C],edx
 004A24AC    mov         dword ptr [ebp-4],eax
 004A24AF    xor         eax,eax
 004A24B1    push        ebp
 004A24B2    push        4A2619
 004A24B7    push        dword ptr fs:[eax]
 004A24BA    mov         dword ptr fs:[eax],esp
 004A24BD    mov         eax,dword ptr [ebp-4]
 004A24C0    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A24C3    mov         edx,dword ptr ds:[4A09A8];TCustomListAction
 004A24C9    call        @IsClass
 004A24CE    test        al,al
>004A24D0    je          004A2603
 004A24D6    mov         eax,dword ptr [ebp-4]
 004A24D9    mov         eax,dword ptr [eax+20];TListActionLink...................FClient:TWinControl
 004A24DC    mov         edx,dword ptr ds:[4C6B3C];TCustomListControl
 004A24E2    call        @IsClass
 004A24E7    test        al,al
>004A24E9    je          004A24F9
 004A24EB    mov         eax,dword ptr [ebp-4]
 004A24EE    mov         eax,dword ptr [eax+20];TListActionLink....................FClient:TWinControl
 004A24F1    mov         edx,dword ptr [eax]
 004A24F3    call        dword ptr [edx+0D8]
 004A24F9    mov         eax,dword ptr [ebp-4]
 004A24FC    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A24FF    mov         edx,dword ptr ds:[4A0F28];TStaticListAction
 004A2505    call        @IsClass
 004A250A    test        al,al
>004A250C    je          004A2588
 004A250E    mov         eax,dword ptr [ebp-4]
 004A2511    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A2514    mov         edx,dword ptr ds:[4A0F28];TStaticListAction
 004A251A    call        @AsClass
 004A251F    mov         dword ptr [ebp-18],eax
 004A2522    mov         eax,dword ptr [ebp-18]
 004A2525    mov         edx,dword ptr [eax]
 004A2527    call        dword ptr [edx+54];TStaticListAction.sub_004A220C
 004A252A    dec         eax
 004A252B    test        eax,eax
>004A252D    jl          004A2603
 004A2533    inc         eax
 004A2534    mov         dword ptr [ebp-1C],eax
 004A2537    mov         dword ptr [ebp-8],0
 004A253E    mov         eax,dword ptr [ebp-18]
 004A2541    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 004A2547    mov         edx,dword ptr [ebp-8]
 004A254A    call        004A1720
 004A254F    mov         ecx,eax
 004A2551    mov         edx,dword ptr [ebp-8]
 004A2554    mov         eax,dword ptr [ebp-18]
 004A2557    call        004A2230
 004A255C    test        al,al
>004A255E    je          004A257E
 004A2560    mov         eax,dword ptr [ebp-18]
 004A2563    mov         eax,dword ptr [eax+0D0];TStaticListAction.Items:TStaticListItems
 004A2569    mov         edx,dword ptr [ebp-8]
 004A256C    call        004A1720
 004A2571    mov         edx,eax
 004A2573    mov         eax,dword ptr [ebp-4]
 004A2576    mov         ecx,dword ptr [eax]
 004A2578    call        dword ptr [ecx+90];TListActionLink.sub_004A2628
 004A257E    inc         dword ptr [ebp-8]
 004A2581    dec         dword ptr [ebp-1C]
>004A2584    jne         004A253E
>004A2586    jmp         004A2603
 004A2588    mov         eax,dword ptr [ebp-4]
 004A258B    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A258E    mov         edx,dword ptr ds:[4A0B24];TVirtualListAction
 004A2594    call        @IsClass
 004A2599    test        al,al
>004A259B    je          004A2603
 004A259D    mov         eax,dword ptr [ebp-4]
 004A25A0    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A25A3    mov         edx,dword ptr [eax]
 004A25A5    call        dword ptr [edx+54]
 004A25A8    dec         eax
 004A25A9    test        eax,eax
>004A25AB    jl          004A2603
 004A25AD    inc         eax
 004A25AE    mov         dword ptr [ebp-1C],eax
 004A25B1    mov         dword ptr [ebp-8],0
 004A25B8    mov         eax,dword ptr [ebp-4]
 004A25BB    mov         eax,dword ptr [eax+10];TListActionLink.FAction:TBasicAction
 004A25BE    mov         edx,dword ptr ds:[4A0B24];TVirtualListAction
 004A25C4    call        @AsClass
 004A25C9    mov         dword ptr [ebp-20],eax
 004A25CC    lea         eax,[ebp-10]
 004A25CF    push        eax
 004A25D0    lea         eax,[ebp-14]
 004A25D3    push        eax
 004A25D4    lea         ecx,[ebp-0C]
 004A25D7    mov         edx,dword ptr [ebp-8]
 004A25DA    mov         eax,dword ptr [ebp-20]
 004A25DD    call        004A1C94
 004A25E2    test        al,al
>004A25E4    je          004A25FB
 004A25E6    mov         eax,dword ptr [ebp-14]
 004A25E9    push        eax
 004A25EA    mov         ecx,dword ptr [ebp-10]
 004A25ED    mov         edx,dword ptr [ebp-0C]
 004A25F0    mov         eax,dword ptr [ebp-4]
 004A25F3    mov         ebx,dword ptr [eax]
 004A25F5    call        dword ptr [ebx+94];TListActionLink.sub_004A2638
 004A25FB    inc         dword ptr [ebp-8]
 004A25FE    dec         dword ptr [ebp-1C]
>004A2601    jne         004A25B8
 004A2603    xor         eax,eax
 004A2605    pop         edx
 004A2606    pop         ecx
 004A2607    pop         ecx
 004A2608    mov         dword ptr fs:[eax],edx
 004A260B    push        4A2620
 004A2610    lea         eax,[ebp-0C]
 004A2613    call        @LStrClr
 004A2618    ret
>004A2619    jmp         @HandleFinally
>004A261E    jmp         004A2610
 004A2620    pop         ebx
 004A2621    mov         esp,ebp
 004A2623    pop         ebp
 004A2624    ret
*}
end;

//004A2628
{*procedure sub_004A2628(?:?);
begin
 004A2628    push        ebp
 004A2629    mov         ebp,esp
 004A262B    add         esp,0FFFFFFF8
 004A262E    mov         dword ptr [ebp-8],edx
 004A2631    mov         dword ptr [ebp-4],eax
 004A2634    pop         ecx
 004A2635    pop         ecx
 004A2636    pop         ebp
 004A2637    ret
end;*}

//004A2638
{*procedure sub_004A2638(?:?; ?:?);
begin
 004A2638    push        ebp
 004A2639    mov         ebp,esp
 004A263B    add         esp,0FFFFFFF4
 004A263E    mov         dword ptr [ebp-0C],ecx
 004A2641    mov         dword ptr [ebp-8],edx
 004A2644    mov         dword ptr [ebp-4],eax
 004A2647    mov         eax,dword ptr [ebp-8]
 004A264A    call        @LStrAddRef
 004A264F    xor         eax,eax
 004A2651    push        ebp
 004A2652    push        4A2673
 004A2657    push        dword ptr fs:[eax]
 004A265A    mov         dword ptr fs:[eax],esp
 004A265D    xor         eax,eax
 004A265F    pop         edx
 004A2660    pop         ecx
 004A2661    pop         ecx
 004A2662    mov         dword ptr fs:[eax],edx
 004A2665    push        4A267A
 004A266A    lea         eax,[ebp-8]
 004A266D    call        @LStrClr
 004A2672    ret
>004A2673    jmp         @HandleFinally
>004A2678    jmp         004A266A
 004A267A    mov         esp,ebp
 004A267C    pop         ebp
 004A267D    ret         4
end;*}

//004A2680
{*procedure sub_004A2680(?:?);
begin
 004A2680    push        ebp
 004A2681    mov         ebp,esp
 004A2683    add         esp,0FFFFFFF4
 004A2686    mov         dword ptr [ebp-8],edx
 004A2689    mov         dword ptr [ebp-4],eax
 004A268C    mov         eax,dword ptr [ebp-4]
 004A268F    mov         eax,dword ptr [eax+20];TListActionLink.....................FClient:TWinControl
 004A2692    mov         edx,dword ptr ds:[4C6B3C];TCustomListControl
 004A2698    call        @IsClass
 004A269D    test        al,al
>004A269F    je          004A26C3
 004A26A1    mov         eax,dword ptr [ebp-4]
 004A26A4    mov         eax,dword ptr [eax+20];TListActionLink......................FClient:TWinControl
 004A26A7    mov         edx,dword ptr ds:[4C6B3C];TCustomListControl
 004A26AD    call        @AsClass
 004A26B2    mov         dword ptr [ebp-0C],eax
 004A26B5    mov         edx,dword ptr [ebp-8]
 004A26B8    mov         eax,dword ptr [ebp-0C]
 004A26BB    mov         ecx,dword ptr [eax]
 004A26BD    call        dword ptr [ecx+0D0];@AbstractError
 004A26C3    mov         esp,ebp
 004A26C5    pop         ebp
 004A26C6    ret
end;*}

end.