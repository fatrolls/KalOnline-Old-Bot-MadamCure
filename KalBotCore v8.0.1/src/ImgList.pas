//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ImgList;

interface

uses
  SysUtils, Classes, ImgList, ComCtrls, Graphics;

type
  TChangeLink = class(TObject)
  public
    FSender:TCustomImageList;//f4
    FOnChange:TNotifyEvent;//f8
    fA:word;//fA
    fC:TCustomTabControl;//fC
    procedure sub_004DE084; dynamic;//004DE084
  end;
  TDrawingStyle = (dsFocus, dsSelected, dsNormal, dsTransparent);
  TImageType = (itImage, itMask);
  TCustomImageList = class(TComponent)
  public
    FHeight:Integer;//f30
    FWidth:Integer;//f34
    FAllocBy:Integer;//f38
    FHandle:HIMAGELIST;//f3C
    FDrawingStyle:TDrawingStyle;//f40
    FMasked:Boolean;//f41
    FShareImages:Boolean;//f42
    FImageType:TImageType;//f43
    FBkColor:TColor;//f44
    FBlendColor:TColor;//f48
    FClients:TList;//f4C
    FBitmap:TBitmap;//f50
    FMonoBitmap:TBitmap;//f54
    FChanged:Boolean;//f58
    FUpdateCount:Integer;//f5C
    FOnChange:TNotifyEvent;//f60
    f62:word;//f62
    f64:dword;//f64
    destructor Destroy; virtual;//004DC350
    //procedure v0(?:?); virtual;//v0//004DD4BC
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004DD944
    //procedure v8(?:?); virtual;//v8//004DD3BC
    constructor v2C; virtual;//v2C//004DC288
    //procedure v30(?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v30//004DCF08
    procedure v34; virtual;//v34//004DC3E0
    //procedure v38(?:?); virtual;//v38//004DDE14
    //procedure v3C(?:?); virtual;//v3C//004DDEA8
    //procedure v40(?:?); virtual;//v40//004DD664
    procedure sub_004DD680; dynamic;//004DD680
  end;
    //function sub_004DC210(?:TColor):?;//004DC210
    //function sub_004DC24C(?:TColorRef):?;//004DC24C
    constructor sub_004DC288;//004DC288
    //constructor Create(?:?);//004DC2EC
    destructor Destroy;//004DC350
    procedure sub_004DC3E0;//004DC3E0
    //function sub_004DC4C0(?:TCustomImageList):?;//004DC4C0
    procedure sub_004DC4DC(?:TCustomImageList);//004DC4DC
    procedure sub_004DC4F8(?:TCustomImageList);//004DC4F8
    //procedure sub_004DC5C8(?:TCustomImageList; ?:?);//004DC5C8
    procedure SetWidth(Value:Integer);//004DC618
    procedure SetHeight(Value:Integer);//004DC680
    procedure sub_004DC6E8(?:TDragImageList; ?:THandle);//004DC6E8
    //function sub_004DC728(?:?; ?:?):?;//004DC728
    //function sub_004DC758(?:TCustomImageList):?;//004DC758
    //function sub_004DC77C(?:?; ?:?; ?:TBitmap):?;//004DC77C
    procedure sub_004DC7EC(?:TCustomImageList);//004DC7EC
    //procedure sub_004DC830(?:?);//004DC830
    //function sub_004DC8F0(?:?; ?:TBitmap; ?:TBitmap):?;//004DC8F0
    //function sub_004DC9C0(?:?; ?:?; ?:?):?;//004DC9C0
    //function sub_004DCAE0(?:?; ?:TImageIndex; ?:TBitmap):?;//004DCAE0
    //function sub_004DCB64(?:?):?;//004DCB64
    //procedure sub_004DCB98(?:?; ?:?; ?:?; ?:?);//004DCB98
    //procedure sub_004DCDC8(?:TImageList; ?:?);//004DCDC8
    procedure sub_004DCE64(?:TCustomImageList; ?:TCustomImageList);//004DCE64
    procedure SetBkColor(Value:TColor);//004DCE7C
    //function GetBkColor:?;//004DCEC8
    //procedure sub_004DCF08(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004DCF08
    //procedure sub_004DD138(?:?; ?:TCanvas; ?:?; ?:?; ?:?; ?:?);//004DD138
    //procedure sub_004DD178(?:?; ?:TCanvas; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004DD178
    //procedure sub_004DD1D0(?:?; ?:?; ?:?);//004DD1D0
    procedure sub_004DD390(?:TCustomImageList; ?:TCustomImageList);//004DD390
    //procedure sub_004DD3BC(?:?);//004DD3BC
    //procedure sub_004DD4BC(?:?);//004DD4BC
    //procedure sub_004DD5A8(?:?; ?:?);//004DD5A8
    procedure SetDrawingStyle(Value:TDrawingStyle);//004DD630
    //procedure sub_004DD664(?:?);//004DD664
    procedure sub_004DD680;//004DD680
    procedure sub_004DD6F8(?:TCustomImageList; ?:TChangeLink);//004DD6F8
    procedure sub_004DD760(?:TCustomImageList; ?:TChangeLink);//004DD760
    //function sub_004DD790(?:TMemoryStream; ?:TMemoryStream):?;//004DD790
    //function sub_004DD7E8(?:?; ?:?):?;//004DD7E8
    //function sub_004DD8E0(?:?):?;//004DD8E0
    procedure DefineProperties(Filer:TFiler);//004DD944
    //procedure sub_004DD99C(?:TCustomImageList; ?:?);//004DD99C
    //procedure sub_004DDC48(?:TCustomImageList; ?:?);//004DDC48
    //procedure sub_004DDE14(?:?);//004DDE14
    //procedure sub_004DDEA8(?:?);//004DDEA8
    //procedure sub_004DDFF4(?:?);//004DDFF4
    //procedure sub_004DE004(?:?);//004DE004
    procedure sub_004DE084;//004DE084

implementation

//004DC210
{*function sub_004DC210(?:TColor):?;
begin
 004DC210    push        ebp
 004DC211    mov         ebp,esp
 004DC213    add         esp,0FFFFFFF8
 004DC216    mov         dword ptr [ebp-4],eax
 004DC219    mov         eax,dword ptr [ebp-4]
 004DC21C    call        00486830
 004DC221    mov         dword ptr [ebp-8],eax
 004DC224    mov         eax,dword ptr [ebp-8]
 004DC227    sub         eax,1FFFFFFF
>004DC22C    je          004DC233
 004DC22E    dec         eax
>004DC22F    je          004DC23C
>004DC231    jmp         004DC243
 004DC233    mov         dword ptr [ebp-8],0FFFFFFFF
>004DC23A    jmp         004DC243
 004DC23C    mov         dword ptr [ebp-8],0FF000000
 004DC243    mov         eax,dword ptr [ebp-8]
 004DC246    pop         ecx
 004DC247    pop         ecx
 004DC248    pop         ebp
 004DC249    ret
end;*}

//004DC24C
{*function sub_004DC24C(?:TColorRef):?;
begin
 004DC24C    push        ebp
 004DC24D    mov         ebp,esp
 004DC24F    add         esp,0FFFFFFF8
 004DC252    mov         dword ptr [ebp-4],eax
 004DC255    mov         eax,dword ptr [ebp-4]
 004DC258    sub         eax,0FF000000
>004DC25D    je          004DC26F
 004DC25F    sub         eax,0FFFFFF
>004DC264    jne         004DC278
 004DC266    mov         dword ptr [ebp-8],1FFFFFFF
>004DC26D    jmp         004DC27E
 004DC26F    mov         dword ptr [ebp-8],20000000
>004DC276    jmp         004DC27E
 004DC278    mov         eax,dword ptr [ebp-4]
 004DC27B    mov         dword ptr [ebp-8],eax
 004DC27E    mov         eax,dword ptr [ebp-8]
 004DC281    pop         ecx
 004DC282    pop         ecx
 004DC283    pop         ebp
 004DC284    ret
end;*}

//004DC288
constructor sub_004DC288;
begin
{*
 004DC288    push        ebp
 004DC289    mov         ebp,esp
 004DC28B    add         esp,0FFFFFFF4
 004DC28E    test        dl,dl
>004DC290    je          004DC29A
 004DC292    add         esp,0FFFFFFF0
 004DC295    call        @ClassCreate
 004DC29A    mov         dword ptr [ebp-0C],ecx
 004DC29D    mov         byte ptr [ebp-5],dl
 004DC2A0    mov         dword ptr [ebp-4],eax
 004DC2A3    mov         ecx,dword ptr [ebp-0C]
 004DC2A6    xor         edx,edx
 004DC2A8    mov         eax,dword ptr [ebp-4]
 004DC2AB    call        00482F04
 004DC2B0    mov         eax,dword ptr [ebp-4]
 004DC2B3    mov         dword ptr [eax+34],10;TCustomImageList.FWidth:Integer
 004DC2BA    mov         eax,dword ptr [ebp-4]
 004DC2BD    mov         dword ptr [eax+30],10;TCustomImageList.FHeight:Integer
 004DC2C4    mov         eax,dword ptr [ebp-4]
 004DC2C7    mov         edx,dword ptr [eax]
 004DC2C9    call        dword ptr [edx+34];TCustomImageList.sub_004DC3E0
 004DC2CC    mov         eax,dword ptr [ebp-4]
 004DC2CF    cmp         byte ptr [ebp-5],0
>004DC2D3    je          004DC2E4
 004DC2D5    call        @AfterConstruction
 004DC2DA    pop         dword ptr fs:[0]
 004DC2E1    add         esp,0C
 004DC2E4    mov         eax,dword ptr [ebp-4]
 004DC2E7    mov         esp,ebp
 004DC2E9    pop         ebp
 004DC2EA    ret
*}
end;

//004DC2EC
{*constructor TDragImageList.Create(?:?);
begin
 004DC2EC    push        ebp
 004DC2ED    mov         ebp,esp
 004DC2EF    add         esp,0FFFFFFF4
 004DC2F2    test        dl,dl
>004DC2F4    je          004DC2FE
 004DC2F6    add         esp,0FFFFFFF0
 004DC2F9    call        @ClassCreate
 004DC2FE    mov         dword ptr [ebp-0C],ecx
 004DC301    mov         byte ptr [ebp-5],dl
 004DC304    mov         dword ptr [ebp-4],eax
 004DC307    xor         ecx,ecx
 004DC309    xor         edx,edx
 004DC30B    mov         eax,dword ptr [ebp-4]
 004DC30E    call        00482F04
 004DC313    mov         eax,dword ptr [ebp-4]
 004DC316    mov         edx,dword ptr [ebp-0C]
 004DC319    mov         dword ptr [eax+34],edx;TDragImageList.FWidth:Integer
 004DC31C    mov         eax,dword ptr [ebp-4]
 004DC31F    mov         edx,dword ptr [ebp+8]
 004DC322    mov         dword ptr [eax+30],edx;TDragImageList.FHeight:Integer
 004DC325    mov         eax,dword ptr [ebp-4]
 004DC328    mov         edx,dword ptr [eax]
 004DC32A    call        dword ptr [edx+34];TDragImageList.sub_004D58E4
 004DC32D    mov         eax,dword ptr [ebp-4]
 004DC330    cmp         byte ptr [ebp-5],0
>004DC334    je          004DC345
 004DC336    call        @AfterConstruction
 004DC33B    pop         dword ptr fs:[0]
 004DC342    add         esp,0C
 004DC345    mov         eax,dword ptr [ebp-4]
 004DC348    mov         esp,ebp
 004DC34A    pop         ebp
 004DC34B    ret         4
end;*}

//004DC350
destructor TCustomImageList.Destroy;
begin
{*
 004DC350    push        ebp
 004DC351    mov         ebp,esp
 004DC353    add         esp,0FFFFFFF8
 004DC356    call        @BeforeDestruction
 004DC35B    mov         byte ptr [ebp-5],dl
 004DC35E    mov         dword ptr [ebp-4],eax
>004DC361    jmp         004DC378
 004DC363    mov         eax,dword ptr [ebp-4]
 004DC366    mov         eax,dword ptr [eax+4C]
 004DC369    call        0047898C
 004DC36E    mov         edx,eax
 004DC370    mov         eax,dword ptr [ebp-4]
 004DC373    call        004DD6F8
 004DC378    mov         eax,dword ptr [ebp-4]
 004DC37B    mov         eax,dword ptr [eax+4C]
 004DC37E    cmp         dword ptr [eax+8],0
>004DC382    jg          004DC363
 004DC384    mov         eax,dword ptr [ebp-4]
 004DC387    mov         eax,dword ptr [eax+50]
 004DC38A    call        TObject.Free
 004DC38F    mov         eax,dword ptr [ebp-4]
 004DC392    call        004DC7EC
 004DC397    mov         eax,dword ptr [ebp-4]
 004DC39A    mov         eax,dword ptr [eax+4C]
 004DC39D    call        TObject.Free
 004DC3A2    mov         eax,dword ptr [ebp-4]
 004DC3A5    xor         edx,edx
 004DC3A7    mov         dword ptr [eax+4C],edx
 004DC3AA    mov         eax,dword ptr [ebp-4]
 004DC3AD    cmp         dword ptr [eax+54],0
>004DC3B1    je          004DC3BE
 004DC3B3    mov         eax,dword ptr [ebp-4]
 004DC3B6    mov         eax,dword ptr [eax+54]
 004DC3B9    call        TObject.Free
 004DC3BE    mov         dl,byte ptr [ebp-5]
 004DC3C1    and         dl,0FC
 004DC3C4    mov         eax,dword ptr [ebp-4]
 004DC3C7    call        TComponent.Destroy
 004DC3CC    cmp         byte ptr [ebp-5],0
>004DC3D0    jle         004DC3DA
 004DC3D2    mov         eax,dword ptr [ebp-4]
 004DC3D5    call        @ClassDestroy
 004DC3DA    pop         ecx
 004DC3DB    pop         ecx
 004DC3DC    pop         ebp
 004DC3DD    ret
*}
end;

//004DC3E0
procedure sub_004DC3E0;
begin
{*
 004DC3E0    push        ebp
 004DC3E1    mov         ebp,esp
 004DC3E3    add         esp,0FFFFFFF8
 004DC3E6    xor         edx,edx
 004DC3E8    mov         dword ptr [ebp-8],edx
 004DC3EB    mov         dword ptr [ebp-4],eax
 004DC3EE    xor         eax,eax
 004DC3F0    push        ebp
 004DC3F1    push        4DC4B3
 004DC3F6    push        dword ptr fs:[eax]
 004DC3F9    mov         dword ptr fs:[eax],esp
 004DC3FC    mov         dl,1
 004DC3FE    mov         eax,[004759C0];TList
 004DC403    call        TObject.Create;TList.Create
 004DC408    mov         edx,dword ptr [ebp-4]
 004DC40B    mov         dword ptr [edx+4C],eax;TCustomImageList.FClients:TList
 004DC40E    mov         eax,dword ptr [ebp-4]
 004DC411    cmp         dword ptr [eax+30],1;TCustomImageList.FHeight:Integer
>004DC415    jl          004DC42C
 004DC417    mov         eax,dword ptr [ebp-4]
 004DC41A    cmp         dword ptr [eax+30],8000;TCustomImageList.FHeight:Integer
>004DC421    jg          004DC42C
 004DC423    mov         eax,dword ptr [ebp-4]
 004DC426    cmp         dword ptr [eax+34],1;TCustomImageList.FWidth:Integer
>004DC42A    jge         004DC44D
 004DC42C    lea         edx,[ebp-8]
 004DC42F    mov         eax,[0055B250];^SInvalidImageSize:TResStringRec
 004DC434    call        LoadResString
 004DC439    mov         ecx,dword ptr [ebp-8]
 004DC43C    mov         dl,1
 004DC43E    mov         eax,[00475960];EInvalidOperation
 004DC443    call        Exception.Create;EInvalidOperation.Create
 004DC448    call        @RaiseExcept
 004DC44D    mov         eax,dword ptr [ebp-4]
 004DC450    mov         dword ptr [eax+38],4;TCustomImageList.FAllocBy:Integer
 004DC457    mov         eax,dword ptr [ebp-4]
 004DC45A    mov         byte ptr [eax+41],1;TCustomImageList.FMasked:Boolean
 004DC45E    mov         dl,2
 004DC460    mov         eax,dword ptr [ebp-4]
 004DC463    call        TImageList.SetDrawingStyle
 004DC468    mov         eax,dword ptr [ebp-4]
 004DC46B    mov         byte ptr [eax+43],0;TCustomImageList.FImageType:TImageType
 004DC46F    mov         eax,dword ptr [ebp-4]
 004DC472    mov         dword ptr [eax+44],1FFFFFFF;TCustomImageList.FBkColor:TColor
 004DC479    mov         eax,dword ptr [ebp-4]
 004DC47C    mov         dword ptr [eax+48],1FFFFFFF;TCustomImageList.FBlendColor:TColor
 004DC483    mov         dl,1
 004DC485    mov         eax,[00485C6C];TBitmap
 004DC48A    call        TBitmap.Create;TBitmap.Create
 004DC48F    mov         edx,dword ptr [ebp-4]
 004DC492    mov         dword ptr [edx+50],eax;TCustomImageList.FBitmap:TBitmap
 004DC495    mov         eax,dword ptr [ebp-4]
 004DC498    call        004DC4F8
 004DC49D    xor         eax,eax
 004DC49F    pop         edx
 004DC4A0    pop         ecx
 004DC4A1    pop         ecx
 004DC4A2    mov         dword ptr fs:[eax],edx
 004DC4A5    push        4DC4BA
 004DC4AA    lea         eax,[ebp-8]
 004DC4AD    call        @LStrClr
 004DC4B2    ret
>004DC4B3    jmp         @HandleFinally
>004DC4B8    jmp         004DC4AA
 004DC4BA    pop         ecx
 004DC4BB    pop         ecx
 004DC4BC    pop         ebp
 004DC4BD    ret
*}
end;

//004DC4C0
{*function sub_004DC4C0(?:TCustomImageList):?;
begin
 004DC4C0    push        ebp
 004DC4C1    mov         ebp,esp
 004DC4C3    add         esp,0FFFFFFF8
 004DC4C6    mov         dword ptr [ebp-4],eax
 004DC4C9    mov         eax,dword ptr [ebp-4]
 004DC4CC    cmp         dword ptr [eax+3C],0;TCustomImageList.FHandle:HIMAGELIST
 004DC4D0    setne       byte ptr [ebp-5]
 004DC4D4    mov         al,byte ptr [ebp-5]
 004DC4D7    pop         ecx
 004DC4D8    pop         ecx
 004DC4D9    pop         ebp
 004DC4DA    ret
end;*}

//004DC4DC
procedure sub_004DC4DC(?:TCustomImageList);
begin
{*
 004DC4DC    push        ebp
 004DC4DD    mov         ebp,esp
 004DC4DF    push        ecx
 004DC4E0    mov         dword ptr [ebp-4],eax
 004DC4E3    mov         eax,dword ptr [ebp-4]
 004DC4E6    cmp         dword ptr [eax+3C],0
>004DC4EA    jne         004DC4F4
 004DC4EC    mov         eax,dword ptr [ebp-4]
 004DC4EF    call        004DC830
 004DC4F4    pop         ecx
 004DC4F5    pop         ebp
 004DC4F6    ret
*}
end;

//004DC4F8
procedure sub_004DC4F8(?:TCustomImageList);
begin
{*
 004DC4F8    push        ebp
 004DC4F9    mov         ebp,esp
 004DC4FB    add         esp,0FFFFFFE4
 004DC4FE    mov         dword ptr [ebp-4],eax
 004DC501    push        0
 004DC503    call        user32.GetDC
 004DC508    mov         dword ptr [ebp-8],eax
 004DC50B    xor         eax,eax
 004DC50D    push        ebp
 004DC50E    push        4DC5A0
 004DC513    push        dword ptr fs:[eax]
 004DC516    mov         dword ptr fs:[eax],esp
 004DC519    mov         eax,dword ptr [ebp-4]
 004DC51C    mov         eax,dword ptr [eax+50];TCustomImageList.FBitmap:TBitmap
 004DC51F    mov         dword ptr [ebp-0C],eax
 004DC522    mov         eax,dword ptr [ebp-4]
 004DC525    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 004DC528    push        eax
 004DC529    mov         eax,dword ptr [ebp-4]
 004DC52C    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 004DC52F    push        eax
 004DC530    mov         eax,dword ptr [ebp-8]
 004DC533    push        eax
 004DC534    call        gdi32.CreateCompatibleBitmap
 004DC539    mov         edx,eax
 004DC53B    mov         eax,dword ptr [ebp-0C]
 004DC53E    call        TBitmap.SetHandle
 004DC543    mov         eax,dword ptr [ebp-0C]
 004DC546    call        TBitmap.GetCanvas
 004DC54B    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004DC54E    xor         edx,edx
 004DC550    call        TBrush.SetColor
 004DC555    mov         eax,dword ptr [ebp-0C]
 004DC558    mov         edx,dword ptr [eax]
 004DC55A    call        dword ptr [edx+20];TBitmap.sub_0048D614
 004DC55D    push        eax
 004DC55E    lea         eax,[ebp-1C]
 004DC561    push        eax
 004DC562    mov         eax,dword ptr [ebp-0C]
 004DC565    mov         edx,dword ptr [eax]
 004DC567    call        dword ptr [edx+2C];TBitmap.sub_0048D878
 004DC56A    mov         ecx,eax
 004DC56C    xor         edx,edx
 004DC56E    xor         eax,eax
 004DC570    call        Rect
 004DC575    lea         eax,[ebp-1C]
 004DC578    push        eax
 004DC579    mov         eax,dword ptr [ebp-0C]
 004DC57C    call        TBitmap.GetCanvas
 004DC581    pop         edx
 004DC582    call        TCanvas.FillRect
 004DC587    xor         eax,eax
 004DC589    pop         edx
 004DC58A    pop         ecx
 004DC58B    pop         ecx
 004DC58C    mov         dword ptr fs:[eax],edx
 004DC58F    push        4DC5A7
 004DC594    mov         eax,dword ptr [ebp-8]
 004DC597    push        eax
 004DC598    push        0
 004DC59A    call        user32.ReleaseDC
 004DC59F    ret
>004DC5A0    jmp         @HandleFinally
>004DC5A5    jmp         004DC594
 004DC5A7    mov         eax,dword ptr [ebp-4]
 004DC5AA    cmp         dword ptr [eax+54],0;TCustomImageList.FMonoBitmap:TBitmap
>004DC5AE    je          004DC5C3
 004DC5B0    mov         eax,dword ptr [ebp-4]
 004DC5B3    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 004DC5B6    call        TObject.Free
 004DC5BB    mov         eax,dword ptr [ebp-4]
 004DC5BE    xor         edx,edx
 004DC5C0    mov         dword ptr [eax+54],edx;TCustomImageList.FMonoBitmap:TBitmap
 004DC5C3    mov         esp,ebp
 004DC5C5    pop         ebp
 004DC5C6    ret
*}
end;

//004DC5C8
{*procedure sub_004DC5C8(?:TCustomImageList; ?:?);
begin
 004DC5C8    push        ebp
 004DC5C9    mov         ebp,esp
 004DC5CB    add         esp,0FFFFFFF0
 004DC5CE    mov         dword ptr [ebp-8],edx
 004DC5D1    mov         dword ptr [ebp-4],eax
 004DC5D4    mov         eax,dword ptr [ebp-4]
 004DC5D7    mov         eax,dword ptr [eax+34]
 004DC5DA    mov         dword ptr [ebp-10],eax
 004DC5DD    mov         eax,dword ptr [ebp-4]
 004DC5E0    mov         eax,dword ptr [eax+30]
 004DC5E3    mov         dword ptr [ebp-0C],eax
 004DC5E6    lea         eax,[ebp-0C]
 004DC5E9    push        eax
 004DC5EA    lea         eax,[ebp-10]
 004DC5ED    push        eax
 004DC5EE    mov         eax,dword ptr [ebp-8]
 004DC5F1    push        eax
 004DC5F2    call        comctl32.ImageList_GetIconSize
 004DC5F7    mov         eax,dword ptr [ebp-10]
 004DC5FA    mov         edx,dword ptr [ebp-4]
 004DC5FD    mov         dword ptr [edx+34],eax
 004DC600    mov         eax,dword ptr [ebp-0C]
 004DC603    mov         edx,dword ptr [ebp-4]
 004DC606    mov         dword ptr [edx+30],eax
 004DC609    mov         eax,dword ptr [ebp-4]
 004DC60C    call        004DC4F8
 004DC611    mov         esp,ebp
 004DC613    pop         ebp
 004DC614    ret
end;*}

//004DC618
procedure TImageList.SetWidth(Value:Integer);
begin
{*
 004DC618    push        ebp
 004DC619    mov         ebp,esp
 004DC61B    add         esp,0FFFFFFF8
 004DC61E    push        esi
 004DC61F    mov         dword ptr [ebp-8],edx
 004DC622    mov         dword ptr [ebp-4],eax
 004DC625    mov         eax,dword ptr [ebp-8]
 004DC628    mov         edx,dword ptr [ebp-4]
 004DC62B    cmp         eax,dword ptr [edx+34];TImageList.FWidth:Integer
>004DC62E    je          004DC67B
 004DC630    mov         eax,dword ptr [ebp-8]
 004DC633    mov         edx,dword ptr [ebp-4]
 004DC636    mov         dword ptr [edx+34],eax;TImageList.FWidth:Integer
 004DC639    mov         eax,dword ptr [ebp-4]
 004DC63C    call        004DC4C0
 004DC641    test        al,al
>004DC643    je          004DC65F
 004DC645    mov         eax,dword ptr [ebp-4]
 004DC648    mov         eax,dword ptr [eax+30];TImageList.FHeight:Integer
 004DC64B    push        eax
 004DC64C    mov         eax,dword ptr [ebp-4]
 004DC64F    mov         eax,dword ptr [eax+34];TImageList.FWidth:Integer
 004DC652    push        eax
 004DC653    mov         eax,dword ptr [ebp-4]
 004DC656    mov         eax,dword ptr [eax+3C];TImageList.FHandle:HIMAGELIST
 004DC659    push        eax
 004DC65A    call        comctl32.ImageList_SetIconSize
 004DC65F    mov         eax,dword ptr [ebp-4]
 004DC662    call        004DCE64
 004DC667    mov         eax,dword ptr [ebp-4]
 004DC66A    call        004DC4F8
 004DC66F    mov         eax,dword ptr [ebp-4]
 004DC672    mov         si,0FFEF
 004DC676    call        @CallDynaInst;TCustomImageList.sub_004DD680
 004DC67B    pop         esi
 004DC67C    pop         ecx
 004DC67D    pop         ecx
 004DC67E    pop         ebp
 004DC67F    ret
*}
end;

//004DC680
procedure TImageList.SetHeight(Value:Integer);
begin
{*
 004DC680    push        ebp
 004DC681    mov         ebp,esp
 004DC683    add         esp,0FFFFFFF8
 004DC686    push        esi
 004DC687    mov         dword ptr [ebp-8],edx
 004DC68A    mov         dword ptr [ebp-4],eax
 004DC68D    mov         eax,dword ptr [ebp-8]
 004DC690    mov         edx,dword ptr [ebp-4]
 004DC693    cmp         eax,dword ptr [edx+30];TImageList.FHeight:Integer
>004DC696    je          004DC6E3
 004DC698    mov         eax,dword ptr [ebp-8]
 004DC69B    mov         edx,dword ptr [ebp-4]
 004DC69E    mov         dword ptr [edx+30],eax;TImageList.FHeight:Integer
 004DC6A1    mov         eax,dword ptr [ebp-4]
 004DC6A4    call        004DC4C0
 004DC6A9    test        al,al
>004DC6AB    je          004DC6C7
 004DC6AD    mov         eax,dword ptr [ebp-4]
 004DC6B0    mov         eax,dword ptr [eax+30];TImageList.FHeight:Integer
 004DC6B3    push        eax
 004DC6B4    mov         eax,dword ptr [ebp-4]
 004DC6B7    mov         eax,dword ptr [eax+34];TImageList.FWidth:Integer
 004DC6BA    push        eax
 004DC6BB    mov         eax,dword ptr [ebp-4]
 004DC6BE    mov         eax,dword ptr [eax+3C];TImageList.FHandle:HIMAGELIST
 004DC6C1    push        eax
 004DC6C2    call        comctl32.ImageList_SetIconSize
 004DC6C7    mov         eax,dword ptr [ebp-4]
 004DC6CA    call        004DCE64
 004DC6CF    mov         eax,dword ptr [ebp-4]
 004DC6D2    call        004DC4F8
 004DC6D7    mov         eax,dword ptr [ebp-4]
 004DC6DA    mov         si,0FFEF
 004DC6DE    call        @CallDynaInst;TCustomImageList.sub_004DD680
 004DC6E3    pop         esi
 004DC6E4    pop         ecx
 004DC6E5    pop         ecx
 004DC6E6    pop         ebp
 004DC6E7    ret
*}
end;

//004DC6E8
procedure sub_004DC6E8(?:TDragImageList; ?:THandle);
begin
{*
 004DC6E8    push        ebp
 004DC6E9    mov         ebp,esp
 004DC6EB    add         esp,0FFFFFFF8
 004DC6EE    push        esi
 004DC6EF    mov         dword ptr [ebp-8],edx
 004DC6F2    mov         dword ptr [ebp-4],eax
 004DC6F5    mov         eax,dword ptr [ebp-4]
 004DC6F8    call        004DC7EC
 004DC6FD    cmp         dword ptr [ebp-8],0
>004DC701    je          004DC723
 004DC703    mov         edx,dword ptr [ebp-8]
 004DC706    mov         eax,dword ptr [ebp-4]
 004DC709    call        004DC5C8
 004DC70E    mov         eax,dword ptr [ebp-8]
 004DC711    mov         edx,dword ptr [ebp-4]
 004DC714    mov         dword ptr [edx+3C],eax;TDragImageList.FHandle:HIMAGELIST
 004DC717    mov         eax,dword ptr [ebp-4]
 004DC71A    mov         si,0FFEF
 004DC71E    call        @CallDynaInst;TCustomImageList.sub_004DD680
 004DC723    pop         esi
 004DC724    pop         ecx
 004DC725    pop         ecx
 004DC726    pop         ebp
 004DC727    ret
*}
end;

//004DC728
{*function sub_004DC728(?:?; ?:?):?;
begin
 004DC728    push        ebp
 004DC729    mov         ebp,esp
 004DC72B    add         esp,0FFFFFFF4
 004DC72E    mov         dword ptr [ebp-8],edx
 004DC731    mov         dword ptr [ebp-4],eax
 004DC734    cmp         dword ptr [ebp-8],0
>004DC738    je          004DC742
 004DC73A    mov         eax,dword ptr [ebp-8]
 004DC73D    mov         dword ptr [ebp-0C],eax
>004DC740    jmp         004DC750
 004DC742    mov         eax,dword ptr [ebp-4]
 004DC745    mov         eax,dword ptr [eax+50]
 004DC748    mov         edx,dword ptr [eax]
 004DC74A    call        dword ptr [edx+64]
 004DC74D    mov         dword ptr [ebp-0C],eax
 004DC750    mov         eax,dword ptr [ebp-0C]
 004DC753    mov         esp,ebp
 004DC755    pop         ebp
 004DC756    ret
end;*}

//004DC758
{*function sub_004DC758(?:TCustomImageList):?;
begin
 004DC758    push        ebp
 004DC759    mov         ebp,esp
 004DC75B    add         esp,0FFFFFFF8
 004DC75E    mov         dword ptr [ebp-4],eax
 004DC761    mov         eax,dword ptr [ebp-4]
 004DC764    call        004DC4DC
 004DC769    mov         eax,dword ptr [ebp-4]
 004DC76C    mov         eax,dword ptr [eax+3C];TCustomImageList.FHandle:HIMAGELIST
 004DC76F    mov         dword ptr [ebp-8],eax
 004DC772    mov         eax,dword ptr [ebp-8]
 004DC775    pop         ecx
 004DC776    pop         ecx
 004DC777    pop         ebp
 004DC778    ret
end;*}

//004DC77C
{*function sub_004DC77C(?:?; ?:?; ?:TBitmap):?;
begin
 004DC77C    push        ebp
 004DC77D    mov         ebp,esp
 004DC77F    add         esp,0FFFFFFF0
 004DC782    mov         dword ptr [ebp-0C],ecx
 004DC785    mov         dword ptr [ebp-8],edx
 004DC788    mov         dword ptr [ebp-4],eax
 004DC78B    mov         edx,dword ptr [ebp-8]
 004DC78E    mov         eax,dword ptr [ebp-4]
 004DC791    call        004DD5A8
 004DC796    cmp         dword ptr [ebp-8],0
>004DC79A    je          004DC7D7
 004DC79C    mov         eax,dword ptr [ebp-8]
 004DC79F    call        0048D5BC
 004DC7A4    cmp         al,1
>004DC7A6    jne         004DC7B5
 004DC7A8    mov         eax,dword ptr [ebp-8]
 004DC7AB    mov         edx,dword ptr [eax]
 004DC7AD    call        dword ptr [edx+64]
 004DC7B0    mov         dword ptr [ebp-10],eax
>004DC7B3    jmp         004DC7E5
 004DC7B5    mov         edx,dword ptr [ebp-8]
 004DC7B8    mov         eax,dword ptr [ebp-0C]
 004DC7BB    mov         ecx,dword ptr [eax]
 004DC7BD    call        dword ptr [ecx+8]
 004DC7C0    mov         dl,1
 004DC7C2    mov         eax,dword ptr [ebp-0C]
 004DC7C5    mov         ecx,dword ptr [eax]
 004DC7C7    call        dword ptr [ecx+6C]
 004DC7CA    mov         eax,dword ptr [ebp-0C]
 004DC7CD    mov         edx,dword ptr [eax]
 004DC7CF    call        dword ptr [edx+64]
 004DC7D2    mov         dword ptr [ebp-10],eax
>004DC7D5    jmp         004DC7E5
 004DC7D7    mov         eax,dword ptr [ebp-4]
 004DC7DA    mov         eax,dword ptr [eax+50]
 004DC7DD    mov         edx,dword ptr [eax]
 004DC7DF    call        dword ptr [edx+64]
 004DC7E2    mov         dword ptr [ebp-10],eax
 004DC7E5    mov         eax,dword ptr [ebp-10]
 004DC7E8    mov         esp,ebp
 004DC7EA    pop         ebp
 004DC7EB    ret
end;*}

//004DC7EC
procedure sub_004DC7EC(?:TCustomImageList);
begin
{*
 004DC7EC    push        ebp
 004DC7ED    mov         ebp,esp
 004DC7EF    push        ecx
 004DC7F0    push        esi
 004DC7F1    mov         dword ptr [ebp-4],eax
 004DC7F4    mov         eax,dword ptr [ebp-4]
 004DC7F7    call        004DC4C0
 004DC7FC    test        al,al
>004DC7FE    je          004DC817
 004DC800    mov         eax,dword ptr [ebp-4]
 004DC803    cmp         byte ptr [eax+42],0;TDragImageList.FShareImages:Boolean
>004DC807    jne         004DC817
 004DC809    mov         eax,dword ptr [ebp-4]
 004DC80C    call        004DC758
 004DC811    push        eax
 004DC812    call        comctl32.ImageList_Destroy
 004DC817    mov         eax,dword ptr [ebp-4]
 004DC81A    xor         edx,edx
 004DC81C    mov         dword ptr [eax+3C],edx;TDragImageList.FHandle:HIMAGELIST
 004DC81F    mov         eax,dword ptr [ebp-4]
 004DC822    mov         si,0FFEF
 004DC826    call        @CallDynaInst;TCustomImageList.sub_004DD680
 004DC82B    pop         esi
 004DC82C    pop         ecx
 004DC82D    pop         ebp
 004DC82E    ret
*}
end;

//004DC830
{*procedure sub_004DC830(?:?);
begin
 004DC830    push        ebp
 004DC831    mov         ebp,esp
 004DC833    add         esp,0FFFFFFF8
 004DC836    xor         edx,edx
 004DC838    mov         dword ptr [ebp-8],edx
 004DC83B    mov         dword ptr [ebp-4],eax
 004DC83E    xor         eax,eax
 004DC840    push        ebp
 004DC841    push        4DC8E4
 004DC846    push        dword ptr fs:[eax]
 004DC849    mov         dword ptr fs:[eax],esp
 004DC84C    mov         eax,dword ptr [ebp-4]
 004DC84F    mov         eax,dword ptr [eax+38]
 004DC852    push        eax
 004DC853    mov         eax,dword ptr [ebp-4]
 004DC856    mov         eax,dword ptr [eax+38]
 004DC859    push        eax
 004DC85A    mov         eax,dword ptr [ebp-4]
 004DC85D    movzx       eax,byte ptr [eax+41]
 004DC861    mov         eax,dword ptr [eax*4+5417CC]
 004DC868    or          eax,0FE
 004DC86D    push        eax
 004DC86E    mov         eax,dword ptr [ebp-4]
 004DC871    mov         eax,dword ptr [eax+30]
 004DC874    push        eax
 004DC875    mov         eax,dword ptr [ebp-4]
 004DC878    mov         eax,dword ptr [eax+34]
 004DC87B    push        eax
 004DC87C    call        comctl32.ImageList_Create
 004DC881    mov         edx,dword ptr [ebp-4]
 004DC884    mov         dword ptr [edx+3C],eax
 004DC887    mov         eax,dword ptr [ebp-4]
 004DC88A    call        004DC4C0
 004DC88F    test        al,al
>004DC891    jne         004DC8B4
 004DC893    lea         edx,[ebp-8]
 004DC896    mov         eax,[0055B4E4];^SInvalidImageList:TResStringRec
 004DC89B    call        LoadResString
 004DC8A0    mov         ecx,dword ptr [ebp-8]
 004DC8A3    mov         dl,1
 004DC8A5    mov         eax,[00475960];EInvalidOperation
 004DC8AA    call        Exception.Create;EInvalidOperation.Create
 004DC8AF    call        @RaiseExcept
 004DC8B4    mov         eax,dword ptr [ebp-4]
 004DC8B7    cmp         dword ptr [eax+44],1FFFFFFF
>004DC8BE    je          004DC8CE
 004DC8C0    mov         eax,dword ptr [ebp-4]
 004DC8C3    mov         edx,dword ptr [eax+44]
 004DC8C6    mov         eax,dword ptr [ebp-4]
 004DC8C9    call        TImageList.SetBkColor
 004DC8CE    xor         eax,eax
 004DC8D0    pop         edx
 004DC8D1    pop         ecx
 004DC8D2    pop         ecx
 004DC8D3    mov         dword ptr fs:[eax],edx
 004DC8D6    push        4DC8EB
 004DC8DB    lea         eax,[ebp-8]
 004DC8DE    call        @LStrClr
 004DC8E3    ret
>004DC8E4    jmp         @HandleFinally
>004DC8E9    jmp         004DC8DB
 004DC8EB    pop         ecx
 004DC8EC    pop         ecx
 004DC8ED    pop         ebp
 004DC8EE    ret
end;*}

//004DC8F0
{*function sub_004DC8F0(?:?; ?:TBitmap; ?:TBitmap):?;
begin
 004DC8F0    push        ebp
 004DC8F1    mov         ebp,esp
 004DC8F3    add         esp,0FFFFFFE8
 004DC8F6    push        esi
 004DC8F7    mov         dword ptr [ebp-0C],ecx
 004DC8FA    mov         dword ptr [ebp-8],edx
 004DC8FD    mov         dword ptr [ebp-4],eax
 004DC900    mov         dl,1
 004DC902    mov         eax,[00485C6C];TBitmap
 004DC907    call        TBitmap.Create;TBitmap.Create
 004DC90C    mov         dword ptr [ebp-14],eax
 004DC90F    xor         eax,eax
 004DC911    push        ebp
 004DC912    push        4DC9A2
 004DC917    push        dword ptr fs:[eax]
 004DC91A    mov         dword ptr fs:[eax],esp
 004DC91D    mov         dl,1
 004DC91F    mov         eax,[00485C6C];TBitmap
 004DC924    call        TBitmap.Create;TBitmap.Create
 004DC929    mov         dword ptr [ebp-18],eax
 004DC92C    xor         eax,eax
 004DC92E    push        ebp
 004DC92F    push        4DC985
 004DC934    push        dword ptr fs:[eax]
 004DC937    mov         dword ptr fs:[eax],esp
 004DC93A    mov         eax,dword ptr [ebp-4]
 004DC93D    call        004DC4DC
 004DC942    mov         ecx,dword ptr [ebp-18]
 004DC945    mov         edx,dword ptr [ebp-0C]
 004DC948    mov         eax,dword ptr [ebp-4]
 004DC94B    call        004DC77C
 004DC950    push        eax
 004DC951    mov         ecx,dword ptr [ebp-14]
 004DC954    mov         edx,dword ptr [ebp-8]
 004DC957    mov         eax,dword ptr [ebp-4]
 004DC95A    call        004DC77C
 004DC95F    push        eax
 004DC960    mov         eax,dword ptr [ebp-4]
 004DC963    mov         eax,dword ptr [eax+3C]
 004DC966    push        eax
 004DC967    call        comctl32.ImageList_Add
 004DC96C    mov         dword ptr [ebp-10],eax
 004DC96F    xor         eax,eax
 004DC971    pop         edx
 004DC972    pop         ecx
 004DC973    pop         ecx
 004DC974    mov         dword ptr fs:[eax],edx
 004DC977    push        4DC98C
 004DC97C    mov         eax,dword ptr [ebp-18]
 004DC97F    call        TObject.Free
 004DC984    ret
>004DC985    jmp         @HandleFinally
>004DC98A    jmp         004DC97C
 004DC98C    xor         eax,eax
 004DC98E    pop         edx
 004DC98F    pop         ecx
 004DC990    pop         ecx
 004DC991    mov         dword ptr fs:[eax],edx
 004DC994    push        4DC9A9
 004DC999    mov         eax,dword ptr [ebp-14]
 004DC99C    call        TObject.Free
 004DC9A1    ret
>004DC9A2    jmp         @HandleFinally
>004DC9A7    jmp         004DC999
 004DC9A9    mov         eax,dword ptr [ebp-4]
 004DC9AC    mov         si,0FFEF
 004DC9B0    call        @CallDynaInst
 004DC9B5    mov         eax,dword ptr [ebp-10]
 004DC9B8    pop         esi
 004DC9B9    mov         esp,ebp
 004DC9BB    pop         ebp
 004DC9BC    ret
end;*}

//004DC9C0
{*function sub_004DC9C0(?:?; ?:?; ?:?):?;
begin
 004DC9C0    push        ebp
 004DC9C1    mov         ebp,esp
 004DC9C3    add         esp,0FFFFFFE8
 004DC9C6    push        esi
 004DC9C7    mov         dword ptr [ebp-0C],ecx
 004DC9CA    mov         dword ptr [ebp-8],edx
 004DC9CD    mov         dword ptr [ebp-4],eax
 004DC9D0    mov         dl,1
 004DC9D2    mov         eax,[00485C6C];TBitmap
 004DC9D7    call        TBitmap.Create;TBitmap.Create
 004DC9DC    mov         dword ptr [ebp-14],eax
 004DC9DF    xor         eax,eax
 004DC9E1    push        ebp
 004DC9E2    push        4DCAC5
 004DC9E7    push        dword ptr fs:[eax]
 004DC9EA    mov         dword ptr fs:[eax],esp
 004DC9ED    mov         eax,dword ptr [ebp-4]
 004DC9F0    cmp         byte ptr [eax+41],0
>004DC9F4    je          004DCA8D
 004DC9FA    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004DC9FE    je          004DCA8D
 004DCA04    mov         dl,1
 004DCA06    mov         eax,[00485C6C];TBitmap
 004DCA0B    call        TBitmap.Create;TBitmap.Create
 004DCA10    mov         dword ptr [ebp-18],eax
 004DCA13    xor         eax,eax
 004DCA15    push        ebp
 004DCA16    push        4DCA86
 004DCA1B    push        dword ptr fs:[eax]
 004DCA1E    mov         dword ptr fs:[eax],esp
 004DCA21    mov         edx,dword ptr [ebp-8]
 004DCA24    mov         eax,dword ptr [ebp-18]
 004DCA27    mov         ecx,dword ptr [eax]
 004DCA29    call        dword ptr [ecx+8];TBitmap.sub_0048CED4
 004DCA2C    mov         edx,dword ptr [ebp-0C]
 004DCA2F    mov         eax,dword ptr [ebp-18]
 004DCA32    call        0048EA94
 004DCA37    mov         eax,dword ptr [ebp-4]
 004DCA3A    call        004DC4DC
 004DCA3F    mov         eax,dword ptr [ebp-18]
 004DCA42    mov         edx,dword ptr [eax]
 004DCA44    call        dword ptr [edx+68];TBitmap.sub_0048D638
 004DCA47    mov         edx,eax
 004DCA49    mov         eax,dword ptr [ebp-4]
 004DCA4C    call        004DC728
 004DCA51    push        eax
 004DCA52    mov         ecx,dword ptr [ebp-14]
 004DCA55    mov         edx,dword ptr [ebp-8]
 004DCA58    mov         eax,dword ptr [ebp-4]
 004DCA5B    call        004DC77C
 004DCA60    push        eax
 004DCA61    mov         eax,dword ptr [ebp-4]
 004DCA64    mov         eax,dword ptr [eax+3C]
 004DCA67    push        eax
 004DCA68    call        comctl32.ImageList_Add
 004DCA6D    mov         dword ptr [ebp-10],eax
 004DCA70    xor         eax,eax
 004DCA72    pop         edx
 004DCA73    pop         ecx
 004DCA74    pop         ecx
 004DCA75    mov         dword ptr fs:[eax],edx
 004DCA78    push        4DCAAF
 004DCA7D    mov         eax,dword ptr [ebp-18]
 004DCA80    call        TObject.Free
 004DCA85    ret
>004DCA86    jmp         @HandleFinally
>004DCA8B    jmp         004DCA7D
 004DCA8D    push        0
 004DCA8F    mov         ecx,dword ptr [ebp-14]
 004DCA92    mov         edx,dword ptr [ebp-8]
 004DCA95    mov         eax,dword ptr [ebp-4]
 004DCA98    call        004DC77C
 004DCA9D    push        eax
 004DCA9E    mov         eax,dword ptr [ebp-4]
 004DCAA1    call        004DC758
 004DCAA6    push        eax
 004DCAA7    call        comctl32.ImageList_Add
 004DCAAC    mov         dword ptr [ebp-10],eax
 004DCAAF    xor         eax,eax
 004DCAB1    pop         edx
 004DCAB2    pop         ecx
 004DCAB3    pop         ecx
 004DCAB4    mov         dword ptr fs:[eax],edx
 004DCAB7    push        4DCACC
 004DCABC    mov         eax,dword ptr [ebp-14]
 004DCABF    call        TObject.Free
 004DCAC4    ret
>004DCAC5    jmp         @HandleFinally
>004DCACA    jmp         004DCABC
 004DCACC    mov         eax,dword ptr [ebp-4]
 004DCACF    mov         si,0FFEF
 004DCAD3    call        @CallDynaInst
 004DCAD8    mov         eax,dword ptr [ebp-10]
 004DCADB    pop         esi
 004DCADC    mov         esp,ebp
 004DCADE    pop         ebp
 004DCADF    ret
end;*}

//004DCAE0
{*function sub_004DCAE0(?:?; ?:TImageIndex; ?:TBitmap):?;
begin
 004DCAE0    push        ebp
 004DCAE1    mov         ebp,esp
 004DCAE3    add         esp,0FFFFFFF0
 004DCAE6    mov         dword ptr [ebp-0C],ecx
 004DCAE9    mov         dword ptr [ebp-8],edx
 004DCAEC    mov         dword ptr [ebp-4],eax
 004DCAEF    cmp         dword ptr [ebp-0C],0
>004DCAF3    je          004DCB14
 004DCAF5    mov         eax,dword ptr [ebp-4]
 004DCAF8    call        004DC4C0
 004DCAFD    test        al,al
>004DCAFF    je          004DCB14
 004DCB01    cmp         dword ptr [ebp-8],0FFFFFFFF
>004DCB05    jle         004DCB14
 004DCB07    mov         eax,dword ptr [ebp-4]
 004DCB0A    call        004DCB64
 004DCB0F    cmp         eax,dword ptr [ebp-8]
>004DCB12    jg          004DCB18
 004DCB14    xor         eax,eax
>004DCB16    jmp         004DCB1A
 004DCB18    mov         al,1
 004DCB1A    mov         byte ptr [ebp-0D],al
 004DCB1D    cmp         byte ptr [ebp-0D],0
>004DCB21    je          004DCB5B
 004DCB23    mov         eax,dword ptr [ebp-4]
 004DCB26    mov         edx,dword ptr [eax+30]
 004DCB29    mov         eax,dword ptr [ebp-0C]
 004DCB2C    mov         ecx,dword ptr [eax]
 004DCB2E    call        dword ptr [ecx+34]
 004DCB31    mov         eax,dword ptr [ebp-4]
 004DCB34    mov         edx,dword ptr [eax+34]
 004DCB37    mov         eax,dword ptr [ebp-0C]
 004DCB3A    mov         ecx,dword ptr [eax]
 004DCB3C    call        dword ptr [ecx+40]
 004DCB3F    push        0
 004DCB41    mov         eax,dword ptr [ebp-8]
 004DCB44    push        eax
 004DCB45    push        1
 004DCB47    mov         eax,dword ptr [ebp-0C]
 004DCB4A    call        TBitmap.GetCanvas
 004DCB4F    mov         edx,eax
 004DCB51    xor         ecx,ecx
 004DCB53    mov         eax,dword ptr [ebp-4]
 004DCB56    call        004DD138
 004DCB5B    mov         al,byte ptr [ebp-0D]
 004DCB5E    mov         esp,ebp
 004DCB60    pop         ebp
 004DCB61    ret
end;*}

//004DCB64
{*function sub_004DCB64(?:?):?;
begin
 004DCB64    push        ebp
 004DCB65    mov         ebp,esp
 004DCB67    add         esp,0FFFFFFF8
 004DCB6A    mov         dword ptr [ebp-4],eax
 004DCB6D    mov         eax,dword ptr [ebp-4]
 004DCB70    call        004DC4C0
 004DCB75    test        al,al
>004DCB77    je          004DCB8C
 004DCB79    mov         eax,dword ptr [ebp-4]
 004DCB7C    call        004DC758
 004DCB81    push        eax
 004DCB82    call        comctl32.ImageList_GetImageCount
 004DCB87    mov         dword ptr [ebp-8],eax
>004DCB8A    jmp         004DCB91
 004DCB8C    xor         eax,eax
 004DCB8E    mov         dword ptr [ebp-8],eax
 004DCB91    mov         eax,dword ptr [ebp-8]
 004DCB94    pop         ecx
 004DCB95    pop         ecx
 004DCB96    pop         ebp
 004DCB97    ret
end;*}

//004DCB98
{*procedure sub_004DCB98(?:?; ?:?; ?:?; ?:?);
begin
 004DCB98    push        ebp
 004DCB99    mov         ebp,esp
 004DCB9B    add         esp,0FFFFFFE0
 004DCB9E    push        ebx
 004DCB9F    push        esi
 004DCBA0    xor         ebx,ebx
 004DCBA2    mov         dword ptr [ebp-20],ebx
 004DCBA5    mov         dword ptr [ebp-1C],ebx
 004DCBA8    mov         dword ptr [ebp-0C],ecx
 004DCBAB    mov         dword ptr [ebp-8],edx
 004DCBAE    mov         dword ptr [ebp-4],eax
 004DCBB1    xor         eax,eax
 004DCBB3    push        ebp
 004DCBB4    push        4DCDB6
 004DCBB9    push        dword ptr fs:[eax]
 004DCBBC    mov         dword ptr fs:[eax],esp
 004DCBBF    mov         eax,dword ptr [ebp-4]
 004DCBC2    call        004DC4C0
 004DCBC7    test        al,al
>004DCBC9    je          004DCD8F
 004DCBCF    mov         edx,dword ptr [ebp-0C]
 004DCBD2    mov         eax,dword ptr [ebp-4]
 004DCBD5    call        004DD5A8
 004DCBDA    mov         ecx,dword ptr [ebp+8]
 004DCBDD    mov         edx,dword ptr [ebp-0C]
 004DCBE0    mov         eax,dword ptr [ebp-4]
 004DCBE3    call        004DC9C0
 004DCBE8    mov         dword ptr [ebp-10],eax
 004DCBEB    cmp         dword ptr [ebp-10],0FFFFFFFF
>004DCBEF    je          004DCD6E
 004DCBF5    xor         eax,eax
 004DCBF7    push        ebp
 004DCBF8    push        4DCD67
 004DCBFD    push        dword ptr fs:[eax]
 004DCC00    mov         dword ptr fs:[eax],esp
 004DCC03    mov         dl,1
 004DCC05    mov         eax,[00485C6C];TBitmap
 004DCC0A    call        TBitmap.Create;TBitmap.Create
 004DCC0F    mov         dword ptr [ebp-14],eax
 004DCC12    xor         eax,eax
 004DCC14    push        ebp
 004DCC15    push        4DCD47
 004DCC1A    push        dword ptr fs:[eax]
 004DCC1D    mov         dword ptr fs:[eax],esp
 004DCC20    mov         eax,dword ptr [ebp-4]
 004DCC23    mov         edx,dword ptr [eax+30]
 004DCC26    mov         eax,dword ptr [ebp-14]
 004DCC29    mov         ecx,dword ptr [eax]
 004DCC2B    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 004DCC2E    mov         eax,dword ptr [ebp-4]
 004DCC31    mov         edx,dword ptr [eax+34]
 004DCC34    mov         eax,dword ptr [ebp-14]
 004DCC37    mov         ecx,dword ptr [eax]
 004DCC39    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 004DCC3C    mov         dl,1
 004DCC3E    mov         eax,[00485C6C];TBitmap
 004DCC43    call        TBitmap.Create;TBitmap.Create
 004DCC48    mov         dword ptr [ebp-18],eax
 004DCC4B    xor         eax,eax
 004DCC4D    push        ebp
 004DCC4E    push        4DCD2A
 004DCC53    push        dword ptr fs:[eax]
 004DCC56    mov         dword ptr fs:[eax],esp
 004DCC59    mov         dl,1
 004DCC5B    mov         eax,dword ptr [ebp-18]
 004DCC5E    call        0048E764
 004DCC63    mov         eax,dword ptr [ebp-4]
 004DCC66    mov         edx,dword ptr [eax+30]
 004DCC69    mov         eax,dword ptr [ebp-18]
 004DCC6C    mov         ecx,dword ptr [eax]
 004DCC6E    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 004DCC71    mov         eax,dword ptr [ebp-4]
 004DCC74    mov         edx,dword ptr [eax+34]
 004DCC77    mov         eax,dword ptr [ebp-18]
 004DCC7A    mov         ecx,dword ptr [eax]
 004DCC7C    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 004DCC7F    push        0
 004DCC81    push        0
 004DCC83    push        0
 004DCC85    mov         eax,dword ptr [ebp-14]
 004DCC88    call        TBitmap.GetCanvas
 004DCC8D    call        TCanvas.GetHandle
 004DCC92    push        eax
 004DCC93    mov         eax,dword ptr [ebp-10]
 004DCC96    push        eax
 004DCC97    mov         eax,dword ptr [ebp-4]
 004DCC9A    call        004DC758
 004DCC9F    push        eax
 004DCCA0    call        comctl32.ImageList_Draw
 004DCCA5    push        10
 004DCCA7    push        0
 004DCCA9    push        0
 004DCCAB    mov         eax,dword ptr [ebp-18]
 004DCCAE    call        TBitmap.GetCanvas
 004DCCB3    call        TCanvas.GetHandle
 004DCCB8    push        eax
 004DCCB9    mov         eax,dword ptr [ebp-10]
 004DCCBC    push        eax
 004DCCBD    mov         eax,dword ptr [ebp-4]
 004DCCC0    call        004DC758
 004DCCC5    push        eax
 004DCCC6    call        comctl32.ImageList_Draw
 004DCCCB    mov         eax,dword ptr [ebp-18]
 004DCCCE    mov         edx,dword ptr [eax]
 004DCCD0    call        dword ptr [edx+64];TBitmap.sub_0048D584
 004DCCD3    push        eax
 004DCCD4    mov         eax,dword ptr [ebp-14]
 004DCCD7    mov         edx,dword ptr [eax]
 004DCCD9    call        dword ptr [edx+64];TBitmap.sub_0048D584
 004DCCDC    push        eax
 004DCCDD    mov         eax,dword ptr [ebp-8]
 004DCCE0    push        eax
 004DCCE1    mov         eax,dword ptr [ebp-4]
 004DCCE4    call        004DC758
 004DCCE9    push        eax
 004DCCEA    call        comctl32.ImageList_Replace
 004DCCEF    test        eax,eax
>004DCCF1    jne         004DCD14
 004DCCF3    lea         edx,[ebp-1C]
 004DCCF6    mov         eax,[0055B1D4];^SReplaceImage:TResStringRec
 004DCCFB    call        LoadResString
 004DCD00    mov         ecx,dword ptr [ebp-1C]
 004DCD03    mov         dl,1
 004DCD05    mov         eax,[00475960];EInvalidOperation
 004DCD0A    call        Exception.Create;EInvalidOperation.Create
 004DCD0F    call        @RaiseExcept
 004DCD14    xor         eax,eax
 004DCD16    pop         edx
 004DCD17    pop         ecx
 004DCD18    pop         ecx
 004DCD19    mov         dword ptr fs:[eax],edx
 004DCD1C    push        4DCD31
 004DCD21    mov         eax,dword ptr [ebp-18]
 004DCD24    call        TObject.Free
 004DCD29    ret
>004DCD2A    jmp         @HandleFinally
>004DCD2F    jmp         004DCD21
 004DCD31    xor         eax,eax
 004DCD33    pop         edx
 004DCD34    pop         ecx
 004DCD35    pop         ecx
 004DCD36    mov         dword ptr fs:[eax],edx
 004DCD39    push        4DCD4E
 004DCD3E    mov         eax,dword ptr [ebp-14]
 004DCD41    call        TObject.Free
 004DCD46    ret
>004DCD47    jmp         @HandleFinally
>004DCD4C    jmp         004DCD3E
 004DCD4E    xor         eax,eax
 004DCD50    pop         edx
 004DCD51    pop         ecx
 004DCD52    pop         ecx
 004DCD53    mov         dword ptr fs:[eax],edx
 004DCD56    push        4DCD8F
 004DCD5B    mov         edx,dword ptr [ebp-10]
 004DCD5E    mov         eax,dword ptr [ebp-4]
 004DCD61    call        004DCDC8
 004DCD66    ret
>004DCD67    jmp         @HandleFinally
>004DCD6C    jmp         004DCD5B
 004DCD6E    lea         edx,[ebp-20]
 004DCD71    mov         eax,[0055B1D4];^SReplaceImage:TResStringRec
 004DCD76    call        LoadResString
 004DCD7B    mov         ecx,dword ptr [ebp-20]
 004DCD7E    mov         dl,1
 004DCD80    mov         eax,[00475960];EInvalidOperation
 004DCD85    call        Exception.Create;EInvalidOperation.Create
 004DCD8A    call        @RaiseExcept
 004DCD8F    mov         eax,dword ptr [ebp-4]
 004DCD92    mov         si,0FFEF
 004DCD96    call        @CallDynaInst
 004DCD9B    xor         eax,eax
 004DCD9D    pop         edx
 004DCD9E    pop         ecx
 004DCD9F    pop         ecx
 004DCDA0    mov         dword ptr fs:[eax],edx
 004DCDA3    push        4DCDBD
 004DCDA8    lea         eax,[ebp-20]
 004DCDAB    mov         edx,2
 004DCDB0    call        @LStrArrayClr
 004DCDB5    ret
>004DCDB6    jmp         @HandleFinally
>004DCDBB    jmp         004DCDA8
 004DCDBD    pop         esi
 004DCDBE    pop         ebx
 004DCDBF    mov         esp,ebp
 004DCDC1    pop         ebp
 004DCDC2    ret         4
end;*}

//004DCDC8
{*procedure sub_004DCDC8(?:TImageList; ?:?);
begin
 004DCDC8    push        ebp
 004DCDC9    mov         ebp,esp
 004DCDCB    add         esp,0FFFFFFF4
 004DCDCE    push        esi
 004DCDCF    xor         ecx,ecx
 004DCDD1    mov         dword ptr [ebp-0C],ecx
 004DCDD4    mov         dword ptr [ebp-8],edx
 004DCDD7    mov         dword ptr [ebp-4],eax
 004DCDDA    xor         eax,eax
 004DCDDC    push        ebp
 004DCDDD    push        4DCE56
 004DCDE2    push        dword ptr fs:[eax]
 004DCDE5    mov         dword ptr fs:[eax],esp
 004DCDE8    mov         eax,dword ptr [ebp-4]
 004DCDEB    call        004DCB64
 004DCDF0    cmp         eax,dword ptr [ebp-8]
>004DCDF3    jg          004DCE16
 004DCDF5    lea         edx,[ebp-0C]
 004DCDF8    mov         eax,[0055B268];^SImageIndexError:TResStringRec
 004DCDFD    call        LoadResString
 004DCE02    mov         ecx,dword ptr [ebp-0C]
 004DCE05    mov         dl,1
 004DCE07    mov         eax,[00475960];EInvalidOperation
 004DCE0C    call        Exception.Create;EInvalidOperation.Create
 004DCE11    call        @RaiseExcept
 004DCE16    mov         eax,dword ptr [ebp-4]
 004DCE19    call        004DC4C0
 004DCE1E    test        al,al
>004DCE20    je          004DCE34
 004DCE22    mov         eax,dword ptr [ebp-8]
 004DCE25    push        eax
 004DCE26    mov         eax,dword ptr [ebp-4]
 004DCE29    call        004DC758
 004DCE2E    push        eax
 004DCE2F    call        comctl32.ImageList_Remove
 004DCE34    mov         eax,dword ptr [ebp-4]
 004DCE37    mov         si,0FFEF
 004DCE3B    call        @CallDynaInst
 004DCE40    xor         eax,eax
 004DCE42    pop         edx
 004DCE43    pop         ecx
 004DCE44    pop         ecx
 004DCE45    mov         dword ptr fs:[eax],edx
 004DCE48    push        4DCE5D
 004DCE4D    lea         eax,[ebp-0C]
 004DCE50    call        @LStrClr
 004DCE55    ret
>004DCE56    jmp         @HandleFinally
>004DCE5B    jmp         004DCE4D
 004DCE5D    pop         esi
 004DCE5E    mov         esp,ebp
 004DCE60    pop         ebp
 004DCE61    ret
end;*}

//004DCE64
procedure sub_004DCE64(?:TCustomImageList; ?:TCustomImageList);
begin
{*
 004DCE64    push        ebp
 004DCE65    mov         ebp,esp
 004DCE67    push        ecx
 004DCE68    mov         dword ptr [ebp-4],eax
 004DCE6B    or          edx,0FFFFFFFF
 004DCE6E    mov         eax,dword ptr [ebp-4]
 004DCE71    call        004DCDC8
 004DCE76    pop         ecx
 004DCE77    pop         ebp
 004DCE78    ret
*}
end;

//004DCE7C
procedure TImageList.SetBkColor(Value:TColor);
begin
{*
 004DCE7C    push        ebp
 004DCE7D    mov         ebp,esp
 004DCE7F    add         esp,0FFFFFFF8
 004DCE82    push        esi
 004DCE83    mov         dword ptr [ebp-8],edx
 004DCE86    mov         dword ptr [ebp-4],eax
 004DCE89    mov         eax,dword ptr [ebp-4]
 004DCE8C    call        004DC4C0
 004DCE91    test        al,al
>004DCE93    je          004DCEAC
 004DCE95    mov         eax,dword ptr [ebp-8]
 004DCE98    call        004DC210
 004DCE9D    push        eax
 004DCE9E    mov         eax,dword ptr [ebp-4]
 004DCEA1    mov         eax,dword ptr [eax+3C];TImageList.FHandle:HIMAGELIST
 004DCEA4    push        eax
 004DCEA5    call        comctl32.ImageList_SetBkColor
>004DCEAA    jmp         004DCEB5
 004DCEAC    mov         eax,dword ptr [ebp-8]
 004DCEAF    mov         edx,dword ptr [ebp-4]
 004DCEB2    mov         dword ptr [edx+44],eax;TImageList.FBkColor:TColor
 004DCEB5    mov         eax,dword ptr [ebp-4]
 004DCEB8    mov         si,0FFEF
 004DCEBC    call        @CallDynaInst;TCustomImageList.sub_004DD680
 004DCEC1    pop         esi
 004DCEC2    pop         ecx
 004DCEC3    pop         ecx
 004DCEC4    pop         ebp
 004DCEC5    ret
*}
end;

//004DCEC8
{*function TImageList.GetBkColor:?;
begin
 004DCEC8    push        ebp
 004DCEC9    mov         ebp,esp
 004DCECB    add         esp,0FFFFFFF8
 004DCECE    mov         dword ptr [ebp-4],eax
 004DCED1    mov         eax,dword ptr [ebp-4]
 004DCED4    call        004DC4C0
 004DCED9    test        al,al
>004DCEDB    je          004DCEF5
 004DCEDD    mov         eax,dword ptr [ebp-4]
 004DCEE0    call        004DC758
 004DCEE5    push        eax
 004DCEE6    call        comctl32.ImageList_GetBkColor
 004DCEEB    call        004DC24C
 004DCEF0    mov         dword ptr [ebp-8],eax
>004DCEF3    jmp         004DCEFE
 004DCEF5    mov         eax,dword ptr [ebp-4]
 004DCEF8    mov         eax,dword ptr [eax+44];TImageList.FBkColor:TColor
 004DCEFB    mov         dword ptr [ebp-8],eax
 004DCEFE    mov         eax,dword ptr [ebp-8]
 004DCF01    pop         ecx
 004DCF02    pop         ecx
 004DCF03    pop         ebp
 004DCF04    ret
end;*}

//004DCF08
{*procedure sub_004DCF08(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004DCF08    push        ebp
 004DCF09    mov         ebp,esp
 004DCF0B    add         esp,0FFFFFFC8
 004DCF0E    mov         dword ptr [ebp-0C],ecx
 004DCF11    mov         dword ptr [ebp-8],edx
 004DCF14    mov         dword ptr [ebp-4],eax
 004DCF17    mov         eax,dword ptr [ebp-4]
 004DCF1A    call        004DC4C0
 004DCF1F    test        al,al
>004DCF21    je          004DD130
 004DCF27    cmp         byte ptr [ebp+8],0
>004DCF2B    je          004DCF77
 004DCF2D    mov         eax,dword ptr [ebp+0C]
 004DCF30    push        eax
 004DCF31    mov         eax,dword ptr [ebp-4]
 004DCF34    mov         eax,dword ptr [eax+48];TCustomImageList.FBlendColor:TColor
 004DCF37    call        004DC210
 004DCF3C    push        eax
 004DCF3D    mov         eax,dword ptr [ebp-4]
 004DCF40    call        TImageList.GetBkColor
 004DCF45    call        004DC210
 004DCF4A    push        eax
 004DCF4B    push        0
 004DCF4D    push        0
 004DCF4F    mov         eax,dword ptr [ebp+10]
 004DCF52    push        eax
 004DCF53    mov         eax,dword ptr [ebp+14]
 004DCF56    push        eax
 004DCF57    mov         eax,dword ptr [ebp-0C]
 004DCF5A    call        TCanvas.GetHandle
 004DCF5F    push        eax
 004DCF60    mov         eax,dword ptr [ebp-8]
 004DCF63    push        eax
 004DCF64    mov         eax,dword ptr [ebp-4]
 004DCF67    call        004DC758
 004DCF6C    push        eax
 004DCF6D    call        comctl32.ImageList_DrawEx
>004DCF72    jmp         004DD130
 004DCF77    mov         eax,dword ptr [ebp-4]
 004DCF7A    cmp         dword ptr [eax+54],0;TCustomImageList.FMonoBitmap:TBitmap
>004DCF7E    jne         004DCFC1
 004DCF80    mov         dl,1
 004DCF82    mov         eax,[00485C6C];TBitmap
 004DCF87    call        TBitmap.Create;TBitmap.Create
 004DCF8C    mov         edx,dword ptr [ebp-4]
 004DCF8F    mov         dword ptr [edx+54],eax;TCustomImageList.FMonoBitmap:TBitmap
 004DCF92    mov         eax,dword ptr [ebp-4]
 004DCF95    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 004DCF98    mov         dword ptr [ebp-18],eax
 004DCF9B    mov         dl,1
 004DCF9D    mov         eax,dword ptr [ebp-18]
 004DCFA0    call        0048E764
 004DCFA5    mov         eax,dword ptr [ebp-4]
 004DCFA8    mov         edx,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 004DCFAB    mov         eax,dword ptr [ebp-18]
 004DCFAE    mov         ecx,dword ptr [eax]
 004DCFB0    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 004DCFB3    mov         eax,dword ptr [ebp-4]
 004DCFB6    mov         edx,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 004DCFB9    mov         eax,dword ptr [ebp-18]
 004DCFBC    mov         ecx,dword ptr [eax]
 004DCFBE    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 004DCFC1    mov         eax,dword ptr [ebp-4]
 004DCFC4    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 004DCFC7    call        TBitmap.GetCanvas
 004DCFCC    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004DCFCF    mov         edx,0FFFFFF
 004DCFD4    call        TBrush.SetColor
 004DCFD9    mov         eax,dword ptr [ebp-4]
 004DCFDC    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 004DCFDF    push        eax
 004DCFE0    lea         eax,[ebp-38]
 004DCFE3    push        eax
 004DCFE4    mov         eax,dword ptr [ebp-4]
 004DCFE7    mov         ecx,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 004DCFEA    xor         edx,edx
 004DCFEC    xor         eax,eax
 004DCFEE    call        Rect
 004DCFF3    lea         eax,[ebp-38]
 004DCFF6    push        eax
 004DCFF7    mov         eax,dword ptr [ebp-4]
 004DCFFA    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 004DCFFD    call        TBitmap.GetCanvas
 004DD002    pop         edx
 004DD003    call        TCanvas.FillRect
 004DD008    push        0
 004DD00A    push        0
 004DD00C    push        0FF
 004DD00E    push        0
 004DD010    push        0
 004DD012    push        0
 004DD014    push        0
 004DD016    mov         eax,dword ptr [ebp-4]
 004DD019    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 004DD01C    call        TBitmap.GetCanvas
 004DD021    call        TCanvas.GetHandle
 004DD026    push        eax
 004DD027    mov         eax,dword ptr [ebp-8]
 004DD02A    push        eax
 004DD02B    mov         eax,dword ptr [ebp-4]
 004DD02E    call        004DC758
 004DD033    push        eax
 004DD034    call        comctl32.ImageList_DrawEx
 004DD039    mov         eax,dword ptr [ebp+10]
 004DD03C    mov         edx,dword ptr [ebp-4]
 004DD03F    add         eax,dword ptr [edx+30];TCustomImageList.FHeight:Integer
 004DD042    push        eax
 004DD043    lea         eax,[ebp-28]
 004DD046    push        eax
 004DD047    mov         ecx,dword ptr [ebp+14]
 004DD04A    mov         eax,dword ptr [ebp-4]
 004DD04D    add         ecx,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 004DD050    mov         edx,dword ptr [ebp+10]
 004DD053    mov         eax,dword ptr [ebp+14]
 004DD056    call        Rect
 004DD05B    mov         eax,dword ptr [ebp-4]
 004DD05E    mov         eax,dword ptr [eax+54];TCustomImageList.FMonoBitmap:TBitmap
 004DD061    call        TBitmap.GetCanvas
 004DD066    call        TCanvas.GetHandle
 004DD06B    mov         dword ptr [ebp-14],eax
 004DD06E    mov         eax,dword ptr [ebp-0C]
 004DD071    mov         eax,dword ptr [eax+14]
 004DD074    mov         edx,0FF000014
 004DD079    call        TBrush.SetColor
 004DD07E    mov         eax,dword ptr [ebp-0C]
 004DD081    call        TCanvas.GetHandle
 004DD086    mov         dword ptr [ebp-10],eax
 004DD089    push        0FFFFFF
 004DD08E    mov         eax,dword ptr [ebp-10]
 004DD091    push        eax
 004DD092    call        gdi32.SetTextColor
 004DD097    push        0
 004DD099    mov         eax,dword ptr [ebp-10]
 004DD09C    push        eax
 004DD09D    call        gdi32.SetBkColor
 004DD0A2    push        0E20746
 004DD0A7    push        0
 004DD0A9    push        0
 004DD0AB    mov         eax,dword ptr [ebp-14]
 004DD0AE    push        eax
 004DD0AF    mov         eax,dword ptr [ebp-4]
 004DD0B2    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 004DD0B5    push        eax
 004DD0B6    mov         eax,dword ptr [ebp-4]
 004DD0B9    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 004DD0BC    push        eax
 004DD0BD    mov         eax,dword ptr [ebp+10]
 004DD0C0    inc         eax
 004DD0C1    push        eax
 004DD0C2    mov         eax,dword ptr [ebp+14]
 004DD0C5    inc         eax
 004DD0C6    push        eax
 004DD0C7    mov         eax,dword ptr [ebp-10]
 004DD0CA    push        eax
 004DD0CB    call        gdi32.BitBlt
 004DD0D0    mov         eax,dword ptr [ebp-0C]
 004DD0D3    mov         eax,dword ptr [eax+14]
 004DD0D6    mov         edx,0FF000010
 004DD0DB    call        TBrush.SetColor
 004DD0E0    mov         eax,dword ptr [ebp-0C]
 004DD0E3    call        TCanvas.GetHandle
 004DD0E8    mov         dword ptr [ebp-10],eax
 004DD0EB    push        0FFFFFF
 004DD0F0    mov         eax,dword ptr [ebp-10]
 004DD0F3    push        eax
 004DD0F4    call        gdi32.SetTextColor
 004DD0F9    push        0
 004DD0FB    mov         eax,dword ptr [ebp-10]
 004DD0FE    push        eax
 004DD0FF    call        gdi32.SetBkColor
 004DD104    push        0E20746
 004DD109    push        0
 004DD10B    push        0
 004DD10D    mov         eax,dword ptr [ebp-14]
 004DD110    push        eax
 004DD111    mov         eax,dword ptr [ebp-4]
 004DD114    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 004DD117    push        eax
 004DD118    mov         eax,dword ptr [ebp-4]
 004DD11B    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 004DD11E    push        eax
 004DD11F    mov         eax,dword ptr [ebp+10]
 004DD122    push        eax
 004DD123    mov         eax,dword ptr [ebp+14]
 004DD126    push        eax
 004DD127    mov         eax,dword ptr [ebp-10]
 004DD12A    push        eax
 004DD12B    call        gdi32.BitBlt
 004DD130    mov         esp,ebp
 004DD132    pop         ebp
 004DD133    ret         10
end;*}

//004DD138
{*procedure sub_004DD138(?:?; ?:TCanvas; ?:?; ?:?; ?:?; ?:?);
begin
 004DD138    push        ebp
 004DD139    mov         ebp,esp
 004DD13B    add         esp,0FFFFFFF4
 004DD13E    mov         dword ptr [ebp-0C],ecx
 004DD141    mov         dword ptr [ebp-8],edx
 004DD144    mov         dword ptr [ebp-4],eax
 004DD147    mov         eax,dword ptr [ebp+10]
 004DD14A    push        eax
 004DD14B    mov         eax,dword ptr [ebp+0C]
 004DD14E    push        eax
 004DD14F    mov         eax,dword ptr [ebp-4]
 004DD152    mov         al,byte ptr [eax+40]
 004DD155    push        eax
 004DD156    mov         eax,dword ptr [ebp-4]
 004DD159    mov         al,byte ptr [eax+43]
 004DD15C    push        eax
 004DD15D    mov         al,byte ptr [ebp+8]
 004DD160    push        eax
 004DD161    mov         ecx,dword ptr [ebp-0C]
 004DD164    mov         edx,dword ptr [ebp-8]
 004DD167    mov         eax,dword ptr [ebp-4]
 004DD16A    call        004DD178
 004DD16F    mov         esp,ebp
 004DD171    pop         ebp
 004DD172    ret         0C
end;*}

//004DD178
{*procedure sub_004DD178(?:?; ?:TCanvas; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004DD178    push        ebp
 004DD179    mov         ebp,esp
 004DD17B    add         esp,0FFFFFFF4
 004DD17E    push        ebx
 004DD17F    mov         dword ptr [ebp-0C],ecx
 004DD182    mov         dword ptr [ebp-8],edx
 004DD185    mov         dword ptr [ebp-4],eax
 004DD188    mov         eax,dword ptr [ebp-4]
 004DD18B    call        004DC4C0
 004DD190    test        al,al
>004DD192    je          004DD1C7
 004DD194    mov         eax,dword ptr [ebp-0C]
 004DD197    push        eax
 004DD198    mov         eax,dword ptr [ebp+18]
 004DD19B    push        eax
 004DD19C    xor         eax,eax
 004DD19E    mov         al,byte ptr [ebp+10]
 004DD1A1    mov         eax,dword ptr [eax*4+5417B4]
 004DD1A8    xor         edx,edx
 004DD1AA    mov         dl,byte ptr [ebp+0C]
 004DD1AD    or          eax,dword ptr [edx*4+5417C4]
 004DD1B4    push        eax
 004DD1B5    mov         al,byte ptr [ebp+8]
 004DD1B8    push        eax
 004DD1B9    mov         ecx,dword ptr [ebp-8]
 004DD1BC    mov         edx,dword ptr [ebp+14]
 004DD1BF    mov         eax,dword ptr [ebp-4]
 004DD1C2    mov         ebx,dword ptr [eax]
 004DD1C4    call        dword ptr [ebx+30]
 004DD1C7    pop         ebx
 004DD1C8    mov         esp,ebp
 004DD1CA    pop         ebp
 004DD1CB    ret         14
end;*}

//004DD1D0
{*procedure sub_004DD1D0(?:?; ?:?; ?:?);
begin
 004DD1D0    push        ebp
 004DD1D1    mov         ebp,esp
 004DD1D3    add         esp,0FFFFFFCC
 004DD1D6    mov         dword ptr [ebp-0C],ecx
 004DD1D9    mov         dword ptr [ebp-8],edx
 004DD1DC    mov         dword ptr [ebp-4],eax
 004DD1DF    mov         eax,dword ptr [ebp-4]
 004DD1E2    mov         eax,dword ptr [eax+30]
 004DD1E5    push        eax
 004DD1E6    lea         eax,[ebp-34]
 004DD1E9    push        eax
 004DD1EA    mov         eax,dword ptr [ebp-4]
 004DD1ED    mov         ecx,dword ptr [eax+34]
 004DD1F0    xor         edx,edx
 004DD1F2    xor         eax,eax
 004DD1F4    call        Rect
 004DD1F9    mov         eax,dword ptr [ebp-4]
 004DD1FC    call        004DDFF4
 004DD201    xor         eax,eax
 004DD203    push        ebp
 004DD204    push        4DD384
 004DD209    push        dword ptr fs:[eax]
 004DD20C    mov         dword ptr fs:[eax],esp
 004DD20F    mov         dl,1
 004DD211    mov         eax,[00485C6C];TBitmap
 004DD216    call        TBitmap.Create;TBitmap.Create
 004DD21B    mov         dword ptr [ebp-14],eax
 004DD21E    xor         eax,eax
 004DD220    push        ebp
 004DD221    push        4DD367
 004DD226    push        dword ptr fs:[eax]
 004DD229    mov         dword ptr fs:[eax],esp
 004DD22C    mov         eax,dword ptr [ebp-4]
 004DD22F    mov         edx,dword ptr [eax+30]
 004DD232    mov         eax,dword ptr [ebp-14]
 004DD235    mov         ecx,dword ptr [eax]
 004DD237    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 004DD23A    mov         eax,dword ptr [ebp-4]
 004DD23D    mov         edx,dword ptr [eax+34]
 004DD240    mov         eax,dword ptr [ebp-14]
 004DD243    mov         ecx,dword ptr [eax]
 004DD245    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 004DD248    mov         dl,1
 004DD24A    mov         eax,[00485C6C];TBitmap
 004DD24F    call        TBitmap.Create;TBitmap.Create
 004DD254    mov         dword ptr [ebp-18],eax
 004DD257    xor         eax,eax
 004DD259    push        ebp
 004DD25A    push        4DD34A
 004DD25F    push        dword ptr fs:[eax]
 004DD262    mov         dword ptr fs:[eax],esp
 004DD265    mov         dl,1
 004DD267    mov         eax,dword ptr [ebp-18]
 004DD26A    call        0048E764
 004DD26F    mov         eax,dword ptr [ebp-4]
 004DD272    mov         edx,dword ptr [eax+30]
 004DD275    mov         eax,dword ptr [ebp-18]
 004DD278    mov         ecx,dword ptr [eax]
 004DD27A    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 004DD27D    mov         eax,dword ptr [ebp-4]
 004DD280    mov         edx,dword ptr [eax+34]
 004DD283    mov         eax,dword ptr [ebp-18]
 004DD286    mov         ecx,dword ptr [eax]
 004DD288    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 004DD28B    mov         eax,dword ptr [ebp-8]
 004DD28E    push        eax
 004DD28F    call        comctl32.ImageList_GetImageCount
 004DD294    dec         eax
 004DD295    test        eax,eax
>004DD297    jl          004DD334
 004DD29D    inc         eax
 004DD29E    mov         dword ptr [ebp-1C],eax
 004DD2A1    mov         dword ptr [ebp-10],0
 004DD2A8    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004DD2AC    je          004DD2B6
 004DD2AE    mov         eax,dword ptr [ebp-0C]
 004DD2B1    cmp         eax,dword ptr [ebp-10]
>004DD2B4    jne         004DD328
 004DD2B6    mov         eax,dword ptr [ebp-14]
 004DD2B9    call        TBitmap.GetCanvas
 004DD2BE    mov         dword ptr [ebp-20],eax
 004DD2C1    lea         edx,[ebp-34]
 004DD2C4    mov         eax,dword ptr [ebp-20]
 004DD2C7    call        TCanvas.FillRect
 004DD2CC    push        0
 004DD2CE    push        0
 004DD2D0    push        0
 004DD2D2    mov         eax,dword ptr [ebp-20]
 004DD2D5    call        TCanvas.GetHandle
 004DD2DA    push        eax
 004DD2DB    mov         eax,dword ptr [ebp-10]
 004DD2DE    push        eax
 004DD2DF    mov         eax,dword ptr [ebp-8]
 004DD2E2    push        eax
 004DD2E3    call        comctl32.ImageList_Draw
 004DD2E8    mov         eax,dword ptr [ebp-18]
 004DD2EB    call        TBitmap.GetCanvas
 004DD2F0    mov         dword ptr [ebp-24],eax
 004DD2F3    lea         edx,[ebp-34]
 004DD2F6    mov         eax,dword ptr [ebp-24]
 004DD2F9    call        TCanvas.FillRect
 004DD2FE    push        10
 004DD300    push        0
 004DD302    push        0
 004DD304    mov         eax,dword ptr [ebp-24]
 004DD307    call        TCanvas.GetHandle
 004DD30C    push        eax
 004DD30D    mov         eax,dword ptr [ebp-10]
 004DD310    push        eax
 004DD311    mov         eax,dword ptr [ebp-8]
 004DD314    push        eax
 004DD315    call        comctl32.ImageList_Draw
 004DD31A    mov         ecx,dword ptr [ebp-18]
 004DD31D    mov         edx,dword ptr [ebp-14]
 004DD320    mov         eax,dword ptr [ebp-4]
 004DD323    call        004DC8F0
 004DD328    inc         dword ptr [ebp-10]
 004DD32B    dec         dword ptr [ebp-1C]
>004DD32E    jne         004DD2A8
 004DD334    xor         eax,eax
 004DD336    pop         edx
 004DD337    pop         ecx
 004DD338    pop         ecx
 004DD339    mov         dword ptr fs:[eax],edx
 004DD33C    push        4DD351
 004DD341    mov         eax,dword ptr [ebp-18]
 004DD344    call        TObject.Free
 004DD349    ret
>004DD34A    jmp         @HandleFinally
>004DD34F    jmp         004DD341
 004DD351    xor         eax,eax
 004DD353    pop         edx
 004DD354    pop         ecx
 004DD355    pop         ecx
 004DD356    mov         dword ptr fs:[eax],edx
 004DD359    push        4DD36E
 004DD35E    mov         eax,dword ptr [ebp-14]
 004DD361    call        TObject.Free
 004DD366    ret
>004DD367    jmp         @HandleFinally
>004DD36C    jmp         004DD35E
 004DD36E    xor         eax,eax
 004DD370    pop         edx
 004DD371    pop         ecx
 004DD372    pop         ecx
 004DD373    mov         dword ptr fs:[eax],edx
 004DD376    push        4DD38B
 004DD37B    mov         eax,dword ptr [ebp-4]
 004DD37E    call        004DE004
 004DD383    ret
>004DD384    jmp         @HandleFinally
>004DD389    jmp         004DD37B
 004DD38B    mov         esp,ebp
 004DD38D    pop         ebp
 004DD38E    ret
end;*}

//004DD390
procedure sub_004DD390(?:TCustomImageList; ?:TCustomImageList);
begin
{*
 004DD390    push        ebp
 004DD391    mov         ebp,esp
 004DD393    add         esp,0FFFFFFF8
 004DD396    mov         dword ptr [ebp-8],edx
 004DD399    mov         dword ptr [ebp-4],eax
 004DD39C    cmp         dword ptr [ebp-8],0
>004DD3A0    je          004DD3B7
 004DD3A2    mov         eax,dword ptr [ebp-8]
 004DD3A5    call        004DC758
 004DD3AA    mov         edx,eax
 004DD3AC    or          ecx,0FFFFFFFF
 004DD3AF    mov         eax,dword ptr [ebp-4]
 004DD3B2    call        004DD1D0
 004DD3B7    pop         ecx
 004DD3B8    pop         ecx
 004DD3B9    pop         ebp
 004DD3BA    ret
*}
end;

//004DD3BC
{*procedure sub_004DD3BC(?:?);
begin
 004DD3BC    push        ebp
 004DD3BD    mov         ebp,esp
 004DD3BF    add         esp,0FFFFFFF4
 004DD3C2    mov         dword ptr [ebp-8],edx
 004DD3C5    mov         dword ptr [ebp-4],eax
 004DD3C8    cmp         dword ptr [ebp-8],0
>004DD3CC    jne         004DD3DB
 004DD3CE    mov         eax,dword ptr [ebp-4]
 004DD3D1    call        004DC7EC
>004DD3D6    jmp         004DD4B6
 004DD3DB    mov         eax,dword ptr [ebp-8]
 004DD3DE    mov         edx,dword ptr ds:[4DC138];TCustomImageList
 004DD3E4    call        @IsClass
 004DD3E9    test        al,al
>004DD3EB    je          004DD4AB
 004DD3F1    mov         eax,dword ptr [ebp-4]
 004DD3F4    call        004DCE64
 004DD3F9    mov         eax,dword ptr [ebp-8]
 004DD3FC    mov         dword ptr [ebp-0C],eax
 004DD3FF    mov         eax,dword ptr [ebp-0C]
 004DD402    mov         al,byte ptr [eax+41]
 004DD405    mov         edx,dword ptr [ebp-4]
 004DD408    mov         byte ptr [edx+41],al;TCustomImageList.FMasked:Boolean
 004DD40B    mov         eax,dword ptr [ebp-0C]
 004DD40E    mov         al,byte ptr [eax+43]
 004DD411    mov         edx,dword ptr [ebp-4]
 004DD414    mov         byte ptr [edx+43],al;TCustomImageList.FImageType:TImageType
 004DD417    mov         eax,dword ptr [ebp-0C]
 004DD41A    mov         dl,byte ptr [eax+40]
 004DD41D    mov         eax,dword ptr [ebp-4]
 004DD420    call        TImageList.SetDrawingStyle
 004DD425    mov         eax,dword ptr [ebp-0C]
 004DD428    mov         al,byte ptr [eax+42]
 004DD42B    mov         edx,dword ptr [ebp-4]
 004DD42E    mov         byte ptr [edx+42],al;TCustomImageList.FShareImages:Boolean
 004DD431    mov         eax,dword ptr [ebp-0C]
 004DD434    call        004DC758
 004DD439    mov         edx,eax
 004DD43B    mov         eax,dword ptr [ebp-4]
 004DD43E    call        004DC5C8
 004DD443    mov         eax,dword ptr [ebp-4]
 004DD446    call        004DC4C0
 004DD44B    test        al,al
>004DD44D    jne         004DD459
 004DD44F    mov         eax,dword ptr [ebp-4]
 004DD452    call        004DC4DC
>004DD457    jmp         004DD475
 004DD459    mov         eax,dword ptr [ebp-4]
 004DD45C    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 004DD45F    push        eax
 004DD460    mov         eax,dword ptr [ebp-4]
 004DD463    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 004DD466    push        eax
 004DD467    mov         eax,dword ptr [ebp-4]
 004DD46A    call        004DC758
 004DD46F    push        eax
 004DD470    call        comctl32.ImageList_SetIconSize
 004DD475    mov         eax,dword ptr [ebp-0C]
 004DD478    call        004DC758
 004DD47D    push        eax
 004DD47E    call        comctl32.ImageList_GetBkColor
 004DD483    call        004DC24C
 004DD488    mov         edx,eax
 004DD48A    mov         eax,dword ptr [ebp-4]
 004DD48D    call        TImageList.SetBkColor
 004DD492    mov         eax,dword ptr [ebp-0C]
 004DD495    mov         eax,dword ptr [eax+48]
 004DD498    mov         edx,dword ptr [ebp-4]
 004DD49B    mov         dword ptr [edx+48],eax;TCustomImageList.FBlendColor:TColor
 004DD49E    mov         edx,dword ptr [ebp-0C]
 004DD4A1    mov         eax,dword ptr [ebp-4]
 004DD4A4    call        004DD390
>004DD4A9    jmp         004DD4B6
 004DD4AB    mov         edx,dword ptr [ebp-8]
 004DD4AE    mov         eax,dword ptr [ebp-4]
 004DD4B1    call        004790A8
 004DD4B6    mov         esp,ebp
 004DD4B8    pop         ebp
 004DD4B9    ret
end;*}

//004DD4BC
{*procedure sub_004DD4BC(?:?);
begin
 004DD4BC    push        ebp
 004DD4BD    mov         ebp,esp
 004DD4BF    add         esp,0FFFFFFF4
 004DD4C2    mov         dword ptr [ebp-8],edx
 004DD4C5    mov         dword ptr [ebp-4],eax
 004DD4C8    mov         eax,dword ptr [ebp-8]
 004DD4CB    mov         edx,dword ptr ds:[4DC138];TCustomImageList
 004DD4D1    call        @IsClass
 004DD4D6    test        al,al
>004DD4D8    je          004DD598
 004DD4DE    mov         eax,dword ptr [ebp-8]
 004DD4E1    mov         dword ptr [ebp-0C],eax
 004DD4E4    mov         eax,dword ptr [ebp-4]
 004DD4E7    mov         al,byte ptr [eax+41];TCustomImageList.FMasked:Boolean
 004DD4EA    mov         edx,dword ptr [ebp-0C]
 004DD4ED    mov         byte ptr [edx+41],al
 004DD4F0    mov         eax,dword ptr [ebp-4]
 004DD4F3    mov         al,byte ptr [eax+43];TCustomImageList.FImageType:TImageType
 004DD4F6    mov         edx,dword ptr [ebp-0C]
 004DD4F9    mov         byte ptr [edx+43],al
 004DD4FC    mov         eax,dword ptr [ebp-4]
 004DD4FF    mov         dl,byte ptr [eax+40];TCustomImageList.FDrawingStyle:TDrawingStyle
 004DD502    mov         eax,dword ptr [ebp-0C]
 004DD505    call        TImageList.SetDrawingStyle
 004DD50A    mov         eax,dword ptr [ebp-4]
 004DD50D    mov         al,byte ptr [eax+42];TCustomImageList.FShareImages:Boolean
 004DD510    mov         edx,dword ptr [ebp-0C]
 004DD513    mov         byte ptr [edx+42],al
 004DD516    mov         eax,dword ptr [ebp-4]
 004DD519    mov         eax,dword ptr [eax+48];TCustomImageList.FBlendColor:TColor
 004DD51C    mov         edx,dword ptr [ebp-0C]
 004DD51F    mov         dword ptr [edx+48],eax
 004DD522    mov         eax,dword ptr [ebp-0C]
 004DD525    call        004DCE64
 004DD52A    mov         eax,dword ptr [ebp-4]
 004DD52D    call        004DC758
 004DD532    mov         edx,eax
 004DD534    mov         eax,dword ptr [ebp-0C]
 004DD537    call        004DC5C8
 004DD53C    mov         eax,dword ptr [ebp-0C]
 004DD53F    call        004DC4C0
 004DD544    test        al,al
>004DD546    jne         004DD552
 004DD548    mov         eax,dword ptr [ebp-0C]
 004DD54B    call        004DC4DC
>004DD550    jmp         004DD56E
 004DD552    mov         eax,dword ptr [ebp-0C]
 004DD555    mov         eax,dword ptr [eax+30]
 004DD558    push        eax
 004DD559    mov         eax,dword ptr [ebp-0C]
 004DD55C    mov         eax,dword ptr [eax+34]
 004DD55F    push        eax
 004DD560    mov         eax,dword ptr [ebp-0C]
 004DD563    call        004DC758
 004DD568    push        eax
 004DD569    call        comctl32.ImageList_SetIconSize
 004DD56E    mov         eax,dword ptr [ebp-4]
 004DD571    call        004DC758
 004DD576    push        eax
 004DD577    call        comctl32.ImageList_GetBkColor
 004DD57C    call        004DC24C
 004DD581    mov         edx,eax
 004DD583    mov         eax,dword ptr [ebp-0C]
 004DD586    call        TImageList.SetBkColor
 004DD58B    mov         edx,dword ptr [ebp-4]
 004DD58E    mov         eax,dword ptr [ebp-0C]
 004DD591    call        004DD390
>004DD596    jmp         004DD5A3
 004DD598    mov         edx,dword ptr [ebp-8]
 004DD59B    mov         eax,dword ptr [ebp-4]
 004DD59E    call        004791AC
 004DD5A3    mov         esp,ebp
 004DD5A5    pop         ebp
 004DD5A6    ret
end;*}

//004DD5A8
{*procedure sub_004DD5A8(?:?; ?:?);
begin
 004DD5A8    push        ebp
 004DD5A9    mov         ebp,esp
 004DD5AB    add         esp,0FFFFFFF4
 004DD5AE    xor         ecx,ecx
 004DD5B0    mov         dword ptr [ebp-0C],ecx
 004DD5B3    mov         dword ptr [ebp-8],edx
 004DD5B6    mov         dword ptr [ebp-4],eax
 004DD5B9    xor         eax,eax
 004DD5BB    push        ebp
 004DD5BC    push        4DD624
 004DD5C1    push        dword ptr fs:[eax]
 004DD5C4    mov         dword ptr fs:[eax],esp
 004DD5C7    cmp         dword ptr [ebp-8],0
>004DD5CB    je          004DD60E
 004DD5CD    mov         eax,dword ptr [ebp-8]
 004DD5D0    mov         edx,dword ptr [eax]
 004DD5D2    call        dword ptr [edx+20]
 004DD5D5    mov         edx,dword ptr [ebp-4]
 004DD5D8    cmp         eax,dword ptr [edx+30]
>004DD5DB    jl          004DD5ED
 004DD5DD    mov         eax,dword ptr [ebp-8]
 004DD5E0    mov         edx,dword ptr [eax]
 004DD5E2    call        dword ptr [edx+2C]
 004DD5E5    mov         edx,dword ptr [ebp-4]
 004DD5E8    cmp         eax,dword ptr [edx+34]
>004DD5EB    jge         004DD60E
 004DD5ED    lea         edx,[ebp-0C]
 004DD5F0    mov         eax,[0055B250];^SInvalidImageSize:TResStringRec
 004DD5F5    call        LoadResString
 004DD5FA    mov         ecx,dword ptr [ebp-0C]
 004DD5FD    mov         dl,1
 004DD5FF    mov         eax,[00475960];EInvalidOperation
 004DD604    call        Exception.Create;EInvalidOperation.Create
 004DD609    call        @RaiseExcept
 004DD60E    xor         eax,eax
 004DD610    pop         edx
 004DD611    pop         ecx
 004DD612    pop         ecx
 004DD613    mov         dword ptr fs:[eax],edx
 004DD616    push        4DD62B
 004DD61B    lea         eax,[ebp-0C]
 004DD61E    call        @LStrClr
 004DD623    ret
>004DD624    jmp         @HandleFinally
>004DD629    jmp         004DD61B
 004DD62B    mov         esp,ebp
 004DD62D    pop         ebp
 004DD62E    ret
end;*}

//004DD630
procedure TImageList.SetDrawingStyle(Value:TDrawingStyle);
begin
{*
 004DD630    push        ebp
 004DD631    mov         ebp,esp
 004DD633    add         esp,0FFFFFFF8
 004DD636    push        esi
 004DD637    mov         byte ptr [ebp-5],dl
 004DD63A    mov         dword ptr [ebp-4],eax
 004DD63D    mov         al,byte ptr [ebp-5]
 004DD640    mov         edx,dword ptr [ebp-4]
 004DD643    cmp         al,byte ptr [edx+40];TImageList.FDrawingStyle:TDrawingStyle
>004DD646    je          004DD65D
 004DD648    mov         al,byte ptr [ebp-5]
 004DD64B    mov         edx,dword ptr [ebp-4]
 004DD64E    mov         byte ptr [edx+40],al;TImageList.FDrawingStyle:TDrawingStyle
 004DD651    mov         eax,dword ptr [ebp-4]
 004DD654    mov         si,0FFEF
 004DD658    call        @CallDynaInst;TCustomImageList.sub_004DD680
 004DD65D    pop         esi
 004DD65E    pop         ecx
 004DD65F    pop         ecx
 004DD660    pop         ebp
 004DD661    ret
*}
end;

//004DD664
{*procedure sub_004DD664(?:?);
begin
 004DD664    push        ebp
 004DD665    mov         ebp,esp
 004DD667    add         esp,0FFFFFFF8
 004DD66A    mov         dword ptr [ebp-8],edx
 004DD66D    mov         dword ptr [ebp-4],eax
 004DD670    mov         ecx,dword ptr [ebp-8]
 004DD673    xor         edx,edx
 004DD675    xor         eax,eax
 004DD677    call        Point
 004DD67C    pop         ecx
 004DD67D    pop         ecx
 004DD67E    pop         ebp
 004DD67F    ret
end;*}

//004DD680
procedure TCustomImageList.sub_004DD680;
begin
{*
 004DD680    push        ebp
 004DD681    mov         ebp,esp
 004DD683    add         esp,0FFFFFFF4
 004DD686    push        ebx
 004DD687    push        esi
 004DD688    mov         dword ptr [ebp-4],eax
 004DD68B    mov         eax,dword ptr [ebp-4]
 004DD68E    mov         byte ptr [eax+58],1;TCustomImageList.FChanged:Boolean
 004DD692    mov         eax,dword ptr [ebp-4]
 004DD695    cmp         dword ptr [eax+5C],0;TCustomImageList.FUpdateCount:Integer
>004DD699    jg          004DD6F2
 004DD69B    mov         eax,dword ptr [ebp-4]
 004DD69E    cmp         dword ptr [eax+4C],0;TCustomImageList.FClients:TList
>004DD6A2    je          004DD6DC
 004DD6A4    mov         eax,dword ptr [ebp-4]
 004DD6A7    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 004DD6AA    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DD6AD    dec         eax
 004DD6AE    test        eax,eax
>004DD6B0    jl          004DD6DC
 004DD6B2    inc         eax
 004DD6B3    mov         dword ptr [ebp-0C],eax
 004DD6B6    mov         dword ptr [ebp-8],0
 004DD6BD    mov         edx,dword ptr [ebp-8]
 004DD6C0    mov         eax,dword ptr [ebp-4]
 004DD6C3    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 004DD6C6    call        TList.Get
 004DD6CB    mov         si,0FFFF
 004DD6CF    call        @CallDynaInst
 004DD6D4    inc         dword ptr [ebp-8]
 004DD6D7    dec         dword ptr [ebp-0C]
>004DD6DA    jne         004DD6BD
 004DD6DC    mov         eax,dword ptr [ebp-4]
 004DD6DF    cmp         word ptr [eax+62],0;TCustomImageList.?f62:word
>004DD6E4    je          004DD6F2
 004DD6E6    mov         ebx,dword ptr [ebp-4]
 004DD6E9    mov         edx,dword ptr [ebp-4]
 004DD6EC    mov         eax,dword ptr [ebx+64];TCustomImageList.?f64:dword
 004DD6EF    call        dword ptr [ebx+60];TCustomImageList.FOnChange
 004DD6F2    pop         esi
 004DD6F3    pop         ebx
 004DD6F4    mov         esp,ebp
 004DD6F6    pop         ebp
 004DD6F7    ret
*}
end;

//004DD6F8
procedure sub_004DD6F8(?:TCustomImageList; ?:TChangeLink);
begin
{*
 004DD6F8    push        ebp
 004DD6F9    mov         ebp,esp
 004DD6FB    add         esp,0FFFFFFF0
 004DD6FE    mov         dword ptr [ebp-8],edx
 004DD701    mov         dword ptr [ebp-4],eax
 004DD704    mov         eax,dword ptr [ebp-4]
 004DD707    cmp         dword ptr [eax+4C],0;TCustomImageList.FClients:TList
>004DD70B    je          004DD759
 004DD70D    mov         eax,dword ptr [ebp-4]
 004DD710    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 004DD713    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004DD716    dec         eax
 004DD717    test        eax,eax
>004DD719    jl          004DD759
 004DD71B    inc         eax
 004DD71C    mov         dword ptr [ebp-10],eax
 004DD71F    mov         dword ptr [ebp-0C],0
 004DD726    mov         edx,dword ptr [ebp-0C]
 004DD729    mov         eax,dword ptr [ebp-4]
 004DD72C    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 004DD72F    call        TList.Get
 004DD734    cmp         eax,dword ptr [ebp-8]
>004DD737    jne         004DD751
 004DD739    mov         eax,dword ptr [ebp-8]
 004DD73C    xor         edx,edx
 004DD73E    mov         dword ptr [eax+4],edx;TChangeLink.FSender:TCustomImageList
 004DD741    mov         edx,dword ptr [ebp-0C]
 004DD744    mov         eax,dword ptr [ebp-4]
 004DD747    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 004DD74A    call        00478668
>004DD74F    jmp         004DD759
 004DD751    inc         dword ptr [ebp-0C]
 004DD754    dec         dword ptr [ebp-10]
>004DD757    jne         004DD726
 004DD759    mov         esp,ebp
 004DD75B    pop         ebp
 004DD75C    ret
*}
end;

//004DD760
procedure sub_004DD760(?:TCustomImageList; ?:TChangeLink);
begin
{*
 004DD760    push        ebp
 004DD761    mov         ebp,esp
 004DD763    add         esp,0FFFFFFF8
 004DD766    mov         dword ptr [ebp-8],edx
 004DD769    mov         dword ptr [ebp-4],eax
 004DD76C    mov         eax,dword ptr [ebp-4]
 004DD76F    mov         edx,dword ptr [ebp-8]
 004DD772    mov         dword ptr [edx+4],eax;TChangeLink.FSender:TCustomImageList
 004DD775    mov         eax,dword ptr [ebp-4]
 004DD778    cmp         dword ptr [eax+4C],0;TCustomImageList.FClients:TList
>004DD77C    je          004DD78C
 004DD77E    mov         edx,dword ptr [ebp-8]
 004DD781    mov         eax,dword ptr [ebp-4]
 004DD784    mov         eax,dword ptr [eax+4C];TCustomImageList.FClients:TList
 004DD787    call        TList.Add
 004DD78C    pop         ecx
 004DD78D    pop         ecx
 004DD78E    pop         ebp
 004DD78F    ret
*}
end;

//004DD790
{*function sub_004DD790(?:TMemoryStream; ?:TMemoryStream):?;
begin
 004DD790    push        ebp
 004DD791    mov         ebp,esp
 004DD793    add         esp,0FFFFFFF4
 004DD796    mov         dword ptr [ebp-8],edx
 004DD799    mov         dword ptr [ebp-4],eax
 004DD79C    mov         eax,dword ptr [ebp-4]
 004DD79F    mov         edx,dword ptr [eax]
 004DD7A1    call        dword ptr [edx]
 004DD7A3    push        edx
 004DD7A4    push        eax
 004DD7A5    mov         eax,dword ptr [ebp-8]
 004DD7A8    mov         edx,dword ptr [eax]
 004DD7AA    call        dword ptr [edx]
 004DD7AC    cmp         edx,dword ptr [esp+4]
>004DD7B0    jne         004DD7B5
 004DD7B2    cmp         eax,dword ptr [esp]
 004DD7B5    pop         edx
 004DD7B6    pop         eax
>004DD7B7    jne         004DD7D7
 004DD7B9    mov         eax,dword ptr [ebp-4]
 004DD7BC    mov         edx,dword ptr [eax]
 004DD7BE    call        dword ptr [edx]
 004DD7C0    mov         ecx,eax
 004DD7C2    mov         eax,dword ptr [ebp-8]
 004DD7C5    mov         edx,dword ptr [eax+4]
 004DD7C8    mov         eax,dword ptr [ebp-4]
 004DD7CB    mov         eax,dword ptr [eax+4]
 004DD7CE    call        CompareMem
 004DD7D3    test        al,al
>004DD7D5    jne         004DD7DB
 004DD7D7    xor         eax,eax
>004DD7D9    jmp         004DD7DD
 004DD7DB    mov         al,1
 004DD7DD    mov         byte ptr [ebp-9],al
 004DD7E0    mov         al,byte ptr [ebp-9]
 004DD7E3    mov         esp,ebp
 004DD7E5    pop         ebp
 004DD7E6    ret
end;*}

//004DD7E8
{*function sub_004DD7E8(?:?; ?:?):?;
begin
 004DD7E8    push        ebp
 004DD7E9    mov         ebp,esp
 004DD7EB    add         esp,0FFFFFFEC
 004DD7EE    push        ebx
 004DD7EF    mov         dword ptr [ebp-8],edx
 004DD7F2    mov         dword ptr [ebp-4],eax
 004DD7F5    cmp         dword ptr [ebp-8],0
>004DD7F9    je          004DD811
 004DD7FB    mov         eax,dword ptr [ebp-4]
 004DD7FE    call        004DCB64
 004DD803    mov         ebx,eax
 004DD805    mov         eax,dword ptr [ebp-8]
 004DD808    call        004DCB64
 004DD80D    cmp         ebx,eax
>004DD80F    je          004DD81A
 004DD811    mov         byte ptr [ebp-9],0
>004DD815    jmp         004DD8D5
 004DD81A    mov         eax,dword ptr [ebp-4]
 004DD81D    call        004DCB64
 004DD822    test        eax,eax
>004DD824    jne         004DD83B
 004DD826    mov         eax,dword ptr [ebp-8]
 004DD829    call        004DCB64
 004DD82E    test        eax,eax
>004DD830    jne         004DD83B
 004DD832    mov         byte ptr [ebp-9],1
>004DD836    jmp         004DD8D5
 004DD83B    mov         dl,1
 004DD83D    mov         eax,[00476368];TMemoryStream
 004DD842    call        TObject.Create;TMemoryStream.Create
 004DD847    mov         dword ptr [ebp-10],eax
 004DD84A    xor         eax,eax
 004DD84C    push        ebp
 004DD84D    push        4DD8CE
 004DD852    push        dword ptr fs:[eax]
 004DD855    mov         dword ptr fs:[eax],esp
 004DD858    mov         edx,dword ptr [ebp-10]
 004DD85B    mov         eax,dword ptr [ebp-4]
 004DD85E    mov         ecx,dword ptr [eax]
 004DD860    call        dword ptr [ecx+3C]
 004DD863    mov         dl,1
 004DD865    mov         eax,[00476368];TMemoryStream
 004DD86A    call        TObject.Create;TMemoryStream.Create
 004DD86F    mov         dword ptr [ebp-14],eax
 004DD872    xor         eax,eax
 004DD874    push        ebp
 004DD875    push        4DD8B1
 004DD87A    push        dword ptr fs:[eax]
 004DD87D    mov         dword ptr fs:[eax],esp
 004DD880    mov         edx,dword ptr [ebp-14]
 004DD883    mov         eax,dword ptr [ebp-8]
 004DD886    mov         ecx,dword ptr [eax]
 004DD888    call        dword ptr [ecx+3C]
 004DD88B    push        ebp
 004DD88C    mov         edx,dword ptr [ebp-14]
 004DD88F    mov         eax,dword ptr [ebp-10]
 004DD892    call        004DD790
 004DD897    pop         ecx
 004DD898    mov         byte ptr [ebp-9],al
 004DD89B    xor         eax,eax
 004DD89D    pop         edx
 004DD89E    pop         ecx
 004DD89F    pop         ecx
 004DD8A0    mov         dword ptr fs:[eax],edx
 004DD8A3    push        4DD8B8
 004DD8A8    mov         eax,dword ptr [ebp-14]
 004DD8AB    call        TObject.Free
 004DD8B0    ret
>004DD8B1    jmp         @HandleFinally
>004DD8B6    jmp         004DD8A8
 004DD8B8    xor         eax,eax
 004DD8BA    pop         edx
 004DD8BB    pop         ecx
 004DD8BC    pop         ecx
 004DD8BD    mov         dword ptr fs:[eax],edx
 004DD8C0    push        4DD8D5
 004DD8C5    mov         eax,dword ptr [ebp-10]
 004DD8C8    call        TObject.Free
 004DD8CD    ret
>004DD8CE    jmp         @HandleFinally
>004DD8D3    jmp         004DD8C5
 004DD8D5    mov         al,byte ptr [ebp-9]
 004DD8D8    pop         ebx
 004DD8D9    mov         esp,ebp
 004DD8DB    pop         ebp
 004DD8DC    ret
end;*}

//004DD8E0
{*function sub_004DD8E0(?:?):?;
begin
 004DD8E0    push        ebp
 004DD8E1    mov         ebp,esp
 004DD8E3    push        ecx
 004DD8E4    mov         eax,dword ptr [ebp+8]
 004DD8E7    mov         eax,dword ptr [eax-4]
 004DD8EA    cmp         dword ptr [eax+20],0
>004DD8EE    je          004DD92B
 004DD8F0    mov         eax,dword ptr [ebp+8]
 004DD8F3    mov         eax,dword ptr [eax-4]
 004DD8F6    mov         eax,dword ptr [eax+20]
 004DD8F9    mov         edx,dword ptr ds:[4DC138];TCustomImageList
 004DD8FF    call        @IsClass
 004DD904    test        al,al
>004DD906    je          004DD924
 004DD908    mov         eax,dword ptr [ebp+8]
 004DD90B    mov         eax,dword ptr [eax-4]
 004DD90E    mov         edx,dword ptr [eax+20]
 004DD911    mov         eax,dword ptr [ebp+8]
 004DD914    mov         eax,dword ptr [eax-8]
 004DD917    call        004DD7E8
 004DD91C    test        al,al
>004DD91E    je          004DD924
 004DD920    xor         eax,eax
>004DD922    jmp         004DD926
 004DD924    mov         al,1
 004DD926    mov         byte ptr [ebp-1],al
>004DD929    jmp         004DD93C
 004DD92B    mov         eax,dword ptr [ebp+8]
 004DD92E    mov         eax,dword ptr [eax-8]
 004DD931    call        004DCB64
 004DD936    test        eax,eax
 004DD938    setg        byte ptr [ebp-1]
 004DD93C    mov         al,byte ptr [ebp-1]
 004DD93F    pop         ecx
 004DD940    pop         ebp
 004DD941    ret
end;*}

//004DD944
procedure TCustomImageList.DefineProperties(Filer:TFiler);
begin
{*
 004DD944    push        ebp
 004DD945    mov         ebp,esp
 004DD947    add         esp,0FFFFFFF8
 004DD94A    push        ebx
 004DD94B    mov         dword ptr [ebp-4],edx
 004DD94E    mov         dword ptr [ebp-8],eax
 004DD951    mov         edx,dword ptr [ebp-4]
 004DD954    mov         eax,dword ptr [ebp-8]
 004DD957    call        TComponent.DefineProperties
 004DD95C    mov         eax,dword ptr [ebp-8]
 004DD95F    push        eax
 004DD960    mov         eax,dword ptr [eax]
 004DD962    mov         eax,dword ptr [eax+38]
 004DD965    push        eax
 004DD966    mov         eax,dword ptr [ebp-8]
 004DD969    push        eax
 004DD96A    mov         eax,dword ptr [eax]
 004DD96C    mov         eax,dword ptr [eax+3C]
 004DD96F    push        eax
 004DD970    push        ebp
 004DD971    call        004DD8E0
 004DD976    pop         ecx
 004DD977    mov         ecx,eax
 004DD979    mov         edx,4DD994;'Bitmap'
 004DD97E    mov         eax,dword ptr [ebp-4]
 004DD981    mov         ebx,dword ptr [eax]
 004DD983    call        dword ptr [ebx+8]
 004DD986    pop         ebx
 004DD987    pop         ecx
 004DD988    pop         ecx
 004DD989    pop         ebp
 004DD98A    ret
*}
end;

//004DD99C
{*procedure sub_004DD99C(?:TCustomImageList; ?:?);
begin
 004DD99C    push        ebp
 004DD99D    mov         ebp,esp
 004DD99F    add         esp,0FFFFFFAC
 004DD9A2    mov         dword ptr [ebp-8],edx
 004DD9A5    mov         dword ptr [ebp-4],eax
 004DD9A8    lea         edx,[ebp-24]
 004DD9AB    mov         ecx,4
 004DD9B0    mov         eax,dword ptr [ebp-8]
 004DD9B3    call        0047BF28
 004DD9B8    lea         edx,[ebp-2C]
 004DD9BB    mov         ecx,4
 004DD9C0    mov         eax,dword ptr [ebp-8]
 004DD9C3    call        0047BF28
 004DD9C8    mov         dl,1
 004DD9CA    mov         eax,[00485C6C];TBitmap
 004DD9CF    call        TBitmap.Create;TBitmap.Create
 004DD9D4    mov         dword ptr [ebp-0C],eax
 004DD9D7    xor         eax,eax
 004DD9D9    push        ebp
 004DD9DA    push        4DDC3B
 004DD9DF    push        dword ptr fs:[eax]
 004DD9E2    mov         dword ptr fs:[eax],esp
 004DD9E5    mov         eax,dword ptr [ebp-8]
 004DD9E8    call        0047BCCC
 004DD9ED    mov         dword ptr [ebp-28],eax
 004DD9F0    mov         edx,dword ptr [ebp-8]
 004DD9F3    mov         eax,dword ptr [ebp-0C]
 004DD9F6    mov         ecx,dword ptr [eax]
 004DD9F8    call        dword ptr [ecx+54];TBitmap.sub_0048DC8C
 004DD9FB    mov         eax,dword ptr [ebp-28]
 004DD9FE    add         eax,dword ptr [ebp-24]
 004DDA01    cdq
 004DDA02    push        edx
 004DDA03    push        eax
 004DDA04    mov         eax,dword ptr [ebp-8]
 004DDA07    call        0047BCF4
 004DDA0C    mov         dl,1
 004DDA0E    mov         eax,[00485C6C];TBitmap
 004DDA13    call        TBitmap.Create;TBitmap.Create
 004DDA18    mov         dword ptr [ebp-14],eax
 004DDA1B    xor         eax,eax
 004DDA1D    push        ebp
 004DDA1E    push        4DDC1E
 004DDA23    push        dword ptr fs:[eax]
 004DDA26    mov         dword ptr fs:[eax],esp
 004DDA29    mov         edx,dword ptr [ebp-8]
 004DDA2C    mov         eax,dword ptr [ebp-14]
 004DDA2F    mov         ecx,dword ptr [eax]
 004DDA31    call        dword ptr [ecx+54];TBitmap.sub_0048DC8C
 004DDA34    mov         dl,1
 004DDA36    mov         eax,[00485C6C];TBitmap
 004DDA3B    call        TBitmap.Create;TBitmap.Create
 004DDA40    mov         dword ptr [ebp-10],eax
 004DDA43    mov         eax,dword ptr [ebp-4]
 004DDA46    mov         edx,dword ptr [eax+34]
 004DDA49    mov         eax,dword ptr [ebp-10]
 004DDA4C    mov         ecx,dword ptr [eax]
 004DDA4E    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 004DDA51    mov         eax,dword ptr [ebp-4]
 004DDA54    mov         edx,dword ptr [eax+30]
 004DDA57    mov         eax,dword ptr [ebp-10]
 004DDA5A    mov         ecx,dword ptr [eax]
 004DDA5C    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 004DDA5F    mov         dl,1
 004DDA61    mov         eax,[00485C6C];TBitmap
 004DDA66    call        TBitmap.Create;TBitmap.Create
 004DDA6B    mov         dword ptr [ebp-18],eax
 004DDA6E    mov         dl,1
 004DDA70    mov         eax,dword ptr [ebp-18]
 004DDA73    call        0048E764
 004DDA78    mov         eax,dword ptr [ebp-4]
 004DDA7B    mov         edx,dword ptr [eax+34]
 004DDA7E    mov         eax,dword ptr [ebp-18]
 004DDA81    mov         ecx,dword ptr [eax]
 004DDA83    call        dword ptr [ecx+40];TBitmap.sub_0048EB14
 004DDA86    mov         eax,dword ptr [ebp-4]
 004DDA89    mov         edx,dword ptr [eax+30]
 004DDA8C    mov         eax,dword ptr [ebp-18]
 004DDA8F    mov         ecx,dword ptr [eax]
 004DDA91    call        dword ptr [ecx+34];TBitmap.sub_0048E6F4
 004DDA94    mov         eax,dword ptr [ebp-4]
 004DDA97    mov         eax,dword ptr [eax+30]
 004DDA9A    push        eax
 004DDA9B    lea         eax,[ebp-44]
 004DDA9E    push        eax
 004DDA9F    mov         eax,dword ptr [ebp-4]
 004DDAA2    mov         ecx,dword ptr [eax+34]
 004DDAA5    xor         edx,edx
 004DDAA7    xor         eax,eax
 004DDAA9    call        Rect
 004DDAAE    mov         eax,dword ptr [ebp-4]
 004DDAB1    call        004DDFF4
 004DDAB6    xor         eax,eax
 004DDAB8    push        ebp
 004DDAB9    push        4DDC01
 004DDABE    push        dword ptr fs:[eax]
 004DDAC1    mov         dword ptr fs:[eax],esp
 004DDAC4    mov         eax,dword ptr [ebp-0C]
 004DDAC7    mov         edx,dword ptr [eax]
 004DDAC9    call        dword ptr [edx+20];TBitmap.sub_0048D614
 004DDACC    mov         edx,dword ptr [ebp-4]
 004DDACF    mov         ecx,dword ptr [edx+30]
 004DDAD2    cdq
 004DDAD3    idiv        eax,ecx
 004DDAD5    dec         eax
 004DDAD6    test        eax,eax
>004DDAD8    jl          004DDBDB
 004DDADE    inc         eax
 004DDADF    mov         dword ptr [ebp-30],eax
 004DDAE2    mov         dword ptr [ebp-20],0
 004DDAE9    cmp         dword ptr [ebp-2C],0
>004DDAED    je          004DDBDB
 004DDAF3    mov         eax,dword ptr [ebp-0C]
 004DDAF6    mov         edx,dword ptr [eax]
 004DDAF8    call        dword ptr [edx+2C];TBitmap.sub_0048D878
 004DDAFB    mov         edx,dword ptr [ebp-4]
 004DDAFE    mov         ecx,dword ptr [edx+34]
 004DDB01    cdq
 004DDB02    idiv        eax,ecx
 004DDB04    dec         eax
 004DDB05    test        eax,eax
>004DDB07    jl          004DDBCF
 004DDB0D    inc         eax
 004DDB0E    mov         dword ptr [ebp-34],eax
 004DDB11    mov         dword ptr [ebp-1C],0
 004DDB18    cmp         dword ptr [ebp-2C],0
>004DDB1C    je          004DDBCF
 004DDB22    mov         eax,dword ptr [ebp-4]
 004DDB25    mov         eax,dword ptr [eax+30]
 004DDB28    push        eax
 004DDB29    lea         eax,[ebp-54]
 004DDB2C    push        eax
 004DDB2D    mov         eax,dword ptr [ebp-4]
 004DDB30    mov         ecx,dword ptr [eax+34]
 004DDB33    mov         eax,dword ptr [ebp-4]
 004DDB36    mov         edx,dword ptr [eax+30]
 004DDB39    imul        edx,dword ptr [ebp-20]
 004DDB3D    mov         eax,dword ptr [ebp-4]
 004DDB40    mov         eax,dword ptr [eax+34]
 004DDB43    imul        eax,dword ptr [ebp-1C]
 004DDB47    call        Bounds
 004DDB4C    lea         eax,[ebp-54]
 004DDB4F    push        eax
 004DDB50    mov         eax,dword ptr [ebp-0C]
 004DDB53    call        TBitmap.GetCanvas
 004DDB58    push        eax
 004DDB59    mov         eax,dword ptr [ebp-10]
 004DDB5C    call        TBitmap.GetCanvas
 004DDB61    lea         edx,[ebp-44]
 004DDB64    pop         ecx
 004DDB65    call        TCanvas.CopyRect
 004DDB6A    mov         eax,dword ptr [ebp-4]
 004DDB6D    mov         eax,dword ptr [eax+30]
 004DDB70    push        eax
 004DDB71    lea         eax,[ebp-54]
 004DDB74    push        eax
 004DDB75    mov         eax,dword ptr [ebp-4]
 004DDB78    mov         ecx,dword ptr [eax+34]
 004DDB7B    mov         eax,dword ptr [ebp-4]
 004DDB7E    mov         edx,dword ptr [eax+30]
 004DDB81    imul        edx,dword ptr [ebp-20]
 004DDB85    mov         eax,dword ptr [ebp-4]
 004DDB88    mov         eax,dword ptr [eax+34]
 004DDB8B    imul        eax,dword ptr [ebp-1C]
 004DDB8F    call        Bounds
 004DDB94    lea         eax,[ebp-54]
 004DDB97    push        eax
 004DDB98    mov         eax,dword ptr [ebp-14]
 004DDB9B    call        TBitmap.GetCanvas
 004DDBA0    push        eax
 004DDBA1    mov         eax,dword ptr [ebp-18]
 004DDBA4    call        TBitmap.GetCanvas
 004DDBA9    lea         edx,[ebp-44]
 004DDBAC    pop         ecx
 004DDBAD    call        TCanvas.CopyRect
 004DDBB2    mov         ecx,dword ptr [ebp-18]
 004DDBB5    mov         edx,dword ptr [ebp-10]
 004DDBB8    mov         eax,dword ptr [ebp-4]
 004DDBBB    call        004DC8F0
 004DDBC0    dec         dword ptr [ebp-2C]
 004DDBC3    inc         dword ptr [ebp-1C]
 004DDBC6    dec         dword ptr [ebp-34]
>004DDBC9    jne         004DDB18
 004DDBCF    inc         dword ptr [ebp-20]
 004DDBD2    dec         dword ptr [ebp-30]
>004DDBD5    jne         004DDAE9
 004DDBDB    xor         eax,eax
 004DDBDD    pop         edx
 004DDBDE    pop         ecx
 004DDBDF    pop         ecx
 004DDBE0    mov         dword ptr fs:[eax],edx
 004DDBE3    push        4DDC08
 004DDBE8    mov         eax,dword ptr [ebp-10]
 004DDBEB    call        TObject.Free
 004DDBF0    mov         eax,dword ptr [ebp-18]
 004DDBF3    call        TObject.Free
 004DDBF8    mov         eax,dword ptr [ebp-4]
 004DDBFB    call        004DE004
 004DDC00    ret
>004DDC01    jmp         @HandleFinally
>004DDC06    jmp         004DDBE8
 004DDC08    xor         eax,eax
 004DDC0A    pop         edx
 004DDC0B    pop         ecx
 004DDC0C    pop         ecx
 004DDC0D    mov         dword ptr fs:[eax],edx
 004DDC10    push        4DDC25
 004DDC15    mov         eax,dword ptr [ebp-14]
 004DDC18    call        TObject.Free
 004DDC1D    ret
>004DDC1E    jmp         @HandleFinally
>004DDC23    jmp         004DDC15
 004DDC25    xor         eax,eax
 004DDC27    pop         edx
 004DDC28    pop         ecx
 004DDC29    pop         ecx
 004DDC2A    mov         dword ptr fs:[eax],edx
 004DDC2D    push        4DDC42
 004DDC32    mov         eax,dword ptr [ebp-0C]
 004DDC35    call        TObject.Free
 004DDC3A    ret
>004DDC3B    jmp         @HandleFinally
>004DDC40    jmp         004DDC32
 004DDC42    mov         esp,ebp
 004DDC44    pop         ebp
 004DDC45    ret
end;*}

//004DDC48
{*procedure sub_004DDC48(?:TCustomImageList; ?:?);
begin
 004DDC48    push        ebp
 004DDC49    mov         ebp,esp
 004DDC4B    add         esp,0FFFFFFEC
 004DDC4E    push        ebx
 004DDC4F    mov         dword ptr [ebp-8],edx
 004DDC52    mov         dword ptr [ebp-4],eax
 004DDC55    push        0
 004DDC57    mov         ecx,dword ptr [ebp-8]
 004DDC5A    mov         dl,1
 004DDC5C    mov         eax,[00476570];TStreamAdapter
 004DDC61    call        TStreamAdapter.Create;TStreamAdapter.Create
 004DDC66    mov         dword ptr [ebp-0C],eax
 004DDC69    xor         eax,eax
 004DDC6B    push        ebp
 004DDC6C    push        4DDCA7
 004DDC71    push        dword ptr fs:[eax]
 004DDC74    mov         dword ptr fs:[eax],esp
 004DDC77    mov         eax,dword ptr [ebp-0C]
 004DDC7A    test        eax,eax
>004DDC7C    je          004DDC81
 004DDC7E    sub         eax,0FFFFFFEC
 004DDC81    push        eax
 004DDC82    call        comctl32.ImageList_Read
 004DDC87    mov         edx,eax
 004DDC89    mov         eax,dword ptr [ebp-4]
 004DDC8C    call        004DC6E8
 004DDC91    xor         eax,eax
 004DDC93    pop         edx
 004DDC94    pop         ecx
 004DDC95    pop         ecx
 004DDC96    mov         dword ptr fs:[eax],edx
 004DDC99    push        4DDCAE
 004DDC9E    mov         eax,dword ptr [ebp-0C]
 004DDCA1    call        TObject.Free
 004DDCA6    ret
>004DDCA7    jmp         @HandleFinally
>004DDCAC    jmp         004DDC9E
 004DDCAE    mov         eax,dword ptr [ebp-4]
 004DDCB1    call        004DC4C0
 004DDCB6    test        al,al
>004DDCB8    jne         004DDE0C
 004DDCBE    mov         byte ptr [ebp-11],0
 004DDCC2    mov         dl,1
 004DDCC4    mov         eax,[00476368];TMemoryStream
 004DDCC9    call        TObject.Create;TMemoryStream.Create
 004DDCCE    mov         dword ptr [ebp-10],eax
 004DDCD1    xor         eax,eax
 004DDCD3    push        ebp
 004DDCD4    push        4DDDE2
 004DDCD9    push        dword ptr fs:[eax]
 004DDCDC    mov         dword ptr fs:[eax],esp
 004DDCDF    push        0
 004DDCE1    push        0
 004DDCE3    mov         eax,dword ptr [ebp-8]
 004DDCE6    call        0047BCF4
 004DDCEB    mov         edx,dword ptr [ebp-8]
 004DDCEE    mov         eax,dword ptr [ebp-10]
 004DDCF1    call        0047C624
 004DDCF6    push        0
 004DDCF8    push        12
 004DDCFA    mov         eax,dword ptr [ebp-10]
 004DDCFD    call        0047BCF4
 004DDD02    lea         edx,[ebp-12]
 004DDD05    mov         ecx,1
 004DDD0A    mov         eax,dword ptr [ebp-10]
 004DDD0D    mov         ebx,dword ptr [eax]
 004DDD0F    call        dword ptr [ebx+0C];TMemoryStream.sub_0047C4FC
 004DDD12    dec         eax
>004DDD13    jne         004DDD61
 004DDD15    cmp         byte ptr [ebp-12],1
>004DDD19    jne         004DDD61
 004DDD1B    push        0
 004DDD1D    push        38
 004DDD1F    mov         eax,dword ptr [ebp-10]
 004DDD22    call        0047BCF4
 004DDD27    lea         edx,[ebp-13]
 004DDD2A    mov         ecx,1
 004DDD2F    mov         eax,dword ptr [ebp-10]
 004DDD32    mov         ebx,dword ptr [eax]
 004DDD34    call        dword ptr [ebx+0C];TMemoryStream.sub_0047C4FC
 004DDD37    dec         eax
>004DDD38    jne         004DDD61
 004DDD3A    mov         al,byte ptr [ebp-13]
 004DDD3D    or          byte ptr [ebp-12],al
 004DDD40    push        0
 004DDD42    push        12
 004DDD44    mov         eax,dword ptr [ebp-10]
 004DDD47    call        0047BCF4
 004DDD4C    lea         edx,[ebp-12]
 004DDD4F    mov         ecx,1
 004DDD54    mov         eax,dword ptr [ebp-10]
 004DDD57    mov         ebx,dword ptr [eax]
 004DDD59    call        dword ptr [ebx+10];TMemoryStream.sub_0047C80C
 004DDD5C    dec         eax
 004DDD5D    sete        byte ptr [ebp-11]
 004DDD61    cmp         byte ptr [ebp-11],0
>004DDD65    je          004DDDCC
 004DDD67    push        0
 004DDD69    push        0
 004DDD6B    mov         eax,dword ptr [ebp-10]
 004DDD6E    call        0047BCF4
 004DDD73    push        0
 004DDD75    mov         ecx,dword ptr [ebp-10]
 004DDD78    mov         dl,1
 004DDD7A    mov         eax,[00476570];TStreamAdapter
 004DDD7F    call        TStreamAdapter.Create;TStreamAdapter.Create
 004DDD84    mov         dword ptr [ebp-0C],eax
 004DDD87    xor         eax,eax
 004DDD89    push        ebp
 004DDD8A    push        4DDDC5
 004DDD8F    push        dword ptr fs:[eax]
 004DDD92    mov         dword ptr fs:[eax],esp
 004DDD95    mov         eax,dword ptr [ebp-0C]
 004DDD98    test        eax,eax
>004DDD9A    je          004DDD9F
 004DDD9C    sub         eax,0FFFFFFEC
 004DDD9F    push        eax
 004DDDA0    call        comctl32.ImageList_Read
 004DDDA5    mov         edx,eax
 004DDDA7    mov         eax,dword ptr [ebp-4]
 004DDDAA    call        004DC6E8
 004DDDAF    xor         eax,eax
 004DDDB1    pop         edx
 004DDDB2    pop         ecx
 004DDDB3    pop         ecx
 004DDDB4    mov         dword ptr fs:[eax],edx
 004DDDB7    push        4DDDCC
 004DDDBC    mov         eax,dword ptr [ebp-0C]
 004DDDBF    call        TObject.Free
 004DDDC4    ret
>004DDDC5    jmp         @HandleFinally
>004DDDCA    jmp         004DDDBC
 004DDDCC    xor         eax,eax
 004DDDCE    pop         edx
 004DDDCF    pop         ecx
 004DDDD0    pop         ecx
 004DDDD1    mov         dword ptr fs:[eax],edx
 004DDDD4    push        4DDDE9
 004DDDD9    mov         eax,dword ptr [ebp-10]
 004DDDDC    call        TObject.Free
 004DDDE1    ret
>004DDDE2    jmp         @HandleFinally
>004DDDE7    jmp         004DDDD9
 004DDDE9    mov         eax,dword ptr [ebp-4]
 004DDDEC    call        004DC4C0
 004DDDF1    test        al,al
>004DDDF3    jne         004DDE0C
 004DDDF5    mov         ecx,dword ptr ds:[55B540];^SImageReadFail:TResStringRec
 004DDDFB    mov         dl,1
 004DDDFD    mov         eax,[00475630];EReadError
 004DDE02    call        Exception.Create;EReadError.Create
 004DDE07    call        @RaiseExcept
 004DDE0C    pop         ebx
 004DDE0D    mov         esp,ebp
 004DDE0F    pop         ebp
 004DDE10    ret
end;*}

//004DDE14
{*procedure sub_004DDE14(?:?);
begin
 004DDE14    push        ebp
 004DDE15    mov         ebp,esp
 004DDE17    add         esp,0FFFFFFE8
 004DDE1A    push        ebx
 004DDE1B    mov         dword ptr [ebp-8],edx
 004DDE1E    mov         dword ptr [ebp-4],eax
 004DDE21    mov         eax,dword ptr [ebp-4]
 004DDE24    call        004DC7EC
 004DDE29    mov         eax,dword ptr [ebp-8]
 004DDE2C    call        0047BCCC
 004DDE31    mov         dword ptr [ebp-18],eax
 004DDE34    lea         edx,[ebp-0C]
 004DDE37    mov         ecx,4
 004DDE3C    mov         eax,dword ptr [ebp-8]
 004DDE3F    mov         ebx,dword ptr [eax]
 004DDE41    call        dword ptr [ebx+0C]
 004DDE44    lea         edx,[ebp-10]
 004DDE47    mov         ecx,4
 004DDE4C    mov         eax,dword ptr [ebp-8]
 004DDE4F    mov         ebx,dword ptr [eax]
 004DDE51    call        dword ptr [ebx+0C]
 004DDE54    mov         al,byte ptr [ebp-0C]
 004DDE57    and         al,0FF
 004DDE59    mov         byte ptr [ebp-11],al
 004DDE5C    mov         ax,word ptr [ebp-0C]
 004DDE60    shr         ax,8
 004DDE64    mov         byte ptr [ebp-12],al
 004DDE67    mov         eax,dword ptr [ebp-18]
 004DDE6A    cdq
 004DDE6B    push        edx
 004DDE6C    push        eax
 004DDE6D    mov         eax,dword ptr [ebp-8]
 004DDE70    call        0047BCF4
 004DDE75    mov         eax,dword ptr [ebp-0C]
 004DDE78    cmp         eax,dword ptr [ebp-10]
>004DDE7B    je          004DDE96
 004DDE7D    cmp         byte ptr [ebp-11],49
>004DDE81    jne         004DDE96
 004DDE83    cmp         byte ptr [ebp-12],4C
>004DDE87    jne         004DDE96
 004DDE89    mov         edx,dword ptr [ebp-8]
 004DDE8C    mov         eax,dword ptr [ebp-4]
 004DDE8F    call        004DDC48
>004DDE94    jmp         004DDEA1
 004DDE96    mov         edx,dword ptr [ebp-8]
 004DDE99    mov         eax,dword ptr [ebp-4]
 004DDE9C    call        004DD99C
 004DDEA1    pop         ebx
 004DDEA2    mov         esp,ebp
 004DDEA4    pop         ebp
 004DDEA5    ret
end;*}

//004DDEA8
{*procedure sub_004DDEA8(?:?);
begin
 004DDEA8    push        ebp
 004DDEA9    mov         ebp,esp
 004DDEAB    add         esp,0FFFFFFF0
 004DDEAE    mov         dword ptr [ebp-8],edx
 004DDEB1    mov         dword ptr [ebp-4],eax
 004DDEB4    cmp         dword ptr ds:[55DE34],0;gvar_0055DE34
>004DDEBB    jne         004DDEFE
 004DDEBD    mov         eax,4DDFC0;'comctl32.dll'
 004DDEC2    call        0046B47C
 004DDEC7    mov         [0055DE34],eax;gvar_0055DE34
 004DDECC    cmp         dword ptr ds:[55DE34],60000;gvar_0055DE34
>004DDED6    jb          004DDEFE
 004DDED8    push        4DDFD0;'comctl32.dll'
 004DDEDD    call        kernel32.GetModuleHandleA
 004DDEE2    mov         dword ptr [ebp-10],eax
 004DDEE5    cmp         dword ptr [ebp-10],0
>004DDEE9    je          004DDEFE
 004DDEEB    push        4DDFE0;'ImageList_WriteEx'
 004DDEF0    mov         eax,dword ptr [ebp-10]
 004DDEF3    push        eax
 004DDEF4    call        kernel32.GetProcAddress
 004DDEF9    mov         [0055DE38],eax;gvar_0055DE38:Pointer
 004DDEFE    push        0
 004DDF00    mov         ecx,dword ptr [ebp-8]
 004DDF03    mov         dl,1
 004DDF05    mov         eax,[00476570];TStreamAdapter
 004DDF0A    call        TStreamAdapter.Create;TStreamAdapter.Create
 004DDF0F    mov         dword ptr [ebp-0C],eax
 004DDF12    xor         eax,eax
 004DDF14    push        ebp
 004DDF15    push        4DDFAC
 004DDF1A    push        dword ptr fs:[eax]
 004DDF1D    mov         dword ptr fs:[eax],esp
 004DDF20    cmp         dword ptr ds:[55DE38],0;gvar_0055DE38:Pointer
>004DDF27    je          004DDF62
 004DDF29    mov         eax,dword ptr [ebp-0C]
 004DDF2C    test        eax,eax
>004DDF2E    je          004DDF33
 004DDF30    sub         eax,0FFFFFFEC
 004DDF33    push        eax
 004DDF34    push        1
 004DDF36    mov         eax,dword ptr [ebp-4]
 004DDF39    call        004DC758
 004DDF3E    push        eax
 004DDF3F    call        dword ptr ds:[55DE38]
 004DDF45    test        eax,eax
>004DDF47    je          004DDF96
 004DDF49    mov         ecx,dword ptr ds:[55B300];^SImageWriteFail:TResStringRec
 004DDF4F    mov         dl,1
 004DDF51    mov         eax,[00475688];EWriteError
 004DDF56    call        Exception.Create;EWriteError.Create
 004DDF5B    call        @RaiseExcept
>004DDF60    jmp         004DDF96
 004DDF62    mov         eax,dword ptr [ebp-0C]
 004DDF65    test        eax,eax
>004DDF67    je          004DDF6C
 004DDF69    sub         eax,0FFFFFFEC
 004DDF6C    push        eax
 004DDF6D    mov         eax,dword ptr [ebp-4]
 004DDF70    call        004DC758
 004DDF75    push        eax
 004DDF76    call        comctl32.ImageList_Write
 004DDF7B    test        eax,eax
>004DDF7D    jne         004DDF96
 004DDF7F    mov         ecx,dword ptr ds:[55B300];^SImageWriteFail:TResStringRec
 004DDF85    mov         dl,1
 004DDF87    mov         eax,[00475688];EWriteError
 004DDF8C    call        Exception.Create;EWriteError.Create
 004DDF91    call        @RaiseExcept
 004DDF96    xor         eax,eax
 004DDF98    pop         edx
 004DDF99    pop         ecx
 004DDF9A    pop         ecx
 004DDF9B    mov         dword ptr fs:[eax],edx
 004DDF9E    push        4DDFB3
 004DDFA3    mov         eax,dword ptr [ebp-0C]
 004DDFA6    call        TObject.Free
 004DDFAB    ret
>004DDFAC    jmp         @HandleFinally
>004DDFB1    jmp         004DDFA3
 004DDFB3    mov         esp,ebp
 004DDFB5    pop         ebp
 004DDFB6    ret
end;*}

//004DDFF4
{*procedure sub_004DDFF4(?:?);
begin
 004DDFF4    push        ebp
 004DDFF5    mov         ebp,esp
 004DDFF7    push        ecx
 004DDFF8    mov         dword ptr [ebp-4],eax
 004DDFFB    mov         eax,dword ptr [ebp-4]
 004DDFFE    inc         dword ptr [eax+5C]
 004DE001    pop         ecx
 004DE002    pop         ebp
 004DE003    ret
end;*}

//004DE004
{*procedure sub_004DE004(?:?);
begin
 004DE004    push        ebp
 004DE005    mov         ebp,esp
 004DE007    push        ecx
 004DE008    push        esi
 004DE009    mov         dword ptr [ebp-4],eax
 004DE00C    mov         eax,dword ptr [ebp-4]
 004DE00F    cmp         dword ptr [eax+5C],0
>004DE013    jle         004DE01B
 004DE015    mov         eax,dword ptr [ebp-4]
 004DE018    dec         dword ptr [eax+5C]
 004DE01B    mov         eax,dword ptr [ebp-4]
 004DE01E    cmp         byte ptr [eax+58],0
>004DE022    je          004DE037
 004DE024    mov         eax,dword ptr [ebp-4]
 004DE027    mov         byte ptr [eax+58],0
 004DE02B    mov         eax,dword ptr [ebp-4]
 004DE02E    mov         si,0FFEF
 004DE032    call        @CallDynaInst
 004DE037    pop         esi
 004DE038    pop         ecx
 004DE039    pop         ebp
 004DE03A    ret
end;*}

//004DE084
procedure TChangeLink.sub_004DE084;
begin
{*
 004DE084    push        ebp
 004DE085    mov         ebp,esp
 004DE087    push        ecx
 004DE088    push        ebx
 004DE089    mov         dword ptr [ebp-4],eax
 004DE08C    mov         eax,dword ptr [ebp-4]
 004DE08F    cmp         word ptr [eax+0A],0;TChangeLink.?fA:word
>004DE094    je          004DE0A5
 004DE096    mov         ebx,dword ptr [ebp-4]
 004DE099    mov         eax,dword ptr [ebp-4]
 004DE09C    mov         edx,dword ptr [eax+4];TChangeLink.FSender:TCustomImageList
 004DE09F    mov         eax,dword ptr [ebx+0C];TChangeLink.?fC:TCustomTabControl
 004DE0A2    call        dword ptr [ebx+8];TChangeLink.FOnChange
 004DE0A5    pop         ebx
 004DE0A6    pop         ecx
 004DE0A7    pop         ebp
 004DE0A8    ret
*}
end;

end.