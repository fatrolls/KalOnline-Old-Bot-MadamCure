//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Contnrs;

interface

uses
  SysUtils, Classes;

type
  TObjectList = class(TList)
  public
    .FOwnsObjects:Boolean;//f10
    //procedure v4(?:?; ?:?); virtual;//v4//0048FEF0
    constructor Create;//0048FE60
  end;
  TOrderedList = class(TObject)
  public
    ......FList:TList;//f4
    destructor Destroy; virtual;//0048FFF4
    procedure v0; virtual; abstract;//v0//00402C24
    //function v4:?; virtual;//v4//00490058
    //function v8:?; virtual;//v8//00490030
    function Pop:Pointer;//0048FF44
    function Count:Integer;//0048FF84
    constructor Create;//0048FFA0
  end;
  TStack = class(TOrderedList)
  public
    //procedure v0(?:?); virtual;//v0//00490088
  end;
    //function sub_0048FEA8(?:?; ?:?):?;//0048FEA8
    //procedure sub_0048FECC(?:?; ?:?; ?:THelpViewerNode);//0048FECC
    //procedure sub_0048FEF0(?:?; ?:?);//0048FEF0
    //function sub_0048FF28(?:?):?;//0048FF28
    //function sub_0048FF60(?:?; ?:TMenuItem):?;//0048FF60
    destructor Destroy;//0048FFF4
    //function sub_00490030:?;//00490030
    //function sub_00490058:?;//00490058
    //procedure sub_00490088(?:?);//00490088

implementation

//0048FE60
constructor TObjectList.Create;
begin
{*
 0048FE60    push        ebp
 0048FE61    mov         ebp,esp
 0048FE63    add         esp,0FFFFFFF8
 0048FE66    test        dl,dl
>0048FE68    je          0048FE72
 0048FE6A    add         esp,0FFFFFFF0
 0048FE6D    call        @ClassCreate
 0048FE72    mov         byte ptr [ebp-5],dl
 0048FE75    mov         dword ptr [ebp-4],eax
 0048FE78    xor         edx,edx
 0048FE7A    mov         eax,dword ptr [ebp-4]
 0048FE7D    call        TObject.Create
 0048FE82    mov         eax,dword ptr [ebp-4]
 0048FE85    mov         byte ptr [eax+10],1
 0048FE89    mov         eax,dword ptr [ebp-4]
 0048FE8C    cmp         byte ptr [ebp-5],0
>0048FE90    je          0048FEA1
 0048FE92    call        @AfterConstruction
 0048FE97    pop         dword ptr fs:[0]
 0048FE9E    add         esp,0C
 0048FEA1    mov         eax,dword ptr [ebp-4]
 0048FEA4    pop         ecx
 0048FEA5    pop         ecx
 0048FEA6    pop         ebp
 0048FEA7    ret
*}
end;

//0048FEA8
{*function sub_0048FEA8(?:?; ?:?):?;
begin
 0048FEA8    push        ebp
 0048FEA9    mov         ebp,esp
 0048FEAB    add         esp,0FFFFFFF4
 0048FEAE    mov         dword ptr [ebp-8],edx
 0048FEB1    mov         dword ptr [ebp-4],eax
 0048FEB4    mov         edx,dword ptr [ebp-8]
 0048FEB7    mov         eax,dword ptr [ebp-4]
 0048FEBA    call        TList.Get
 0048FEBF    mov         dword ptr [ebp-0C],eax
 0048FEC2    mov         eax,dword ptr [ebp-0C]
 0048FEC5    mov         esp,ebp
 0048FEC7    pop         ebp
 0048FEC8    ret
end;*}

//0048FECC
{*procedure sub_0048FECC(?:?; ?:?; ?:THelpViewerNode);
begin
 0048FECC    push        ebp
 0048FECD    mov         ebp,esp
 0048FECF    add         esp,0FFFFFFF4
 0048FED2    mov         dword ptr [ebp-0C],ecx
 0048FED5    mov         dword ptr [ebp-8],edx
 0048FED8    mov         dword ptr [ebp-4],eax
 0048FEDB    mov         ecx,dword ptr [ebp-0C]
 0048FEDE    mov         edx,dword ptr [ebp-8]
 0048FEE1    mov         eax,dword ptr [ebp-4]
 0048FEE4    call        004788DC
 0048FEE9    mov         esp,ebp
 0048FEEB    pop         ebp
 0048FEEC    ret
end;*}

//0048FEF0
{*procedure sub_0048FEF0(?:?; ?:?);
begin
 0048FEF0    push        ebp
 0048FEF1    mov         ebp,esp
 0048FEF3    add         esp,0FFFFFFF4
 0048FEF6    mov         byte ptr [ebp-9],cl
 0048FEF9    mov         dword ptr [ebp-8],edx
 0048FEFC    mov         dword ptr [ebp-4],eax
 0048FEFF    mov         eax,dword ptr [ebp-4]
 0048FF02    cmp         byte ptr [eax+10],0;TObjectList...FOwnsObjects:Boolean
>0048FF06    je          0048FF16
 0048FF08    cmp         byte ptr [ebp-9],2
>0048FF0C    jne         0048FF16
 0048FF0E    mov         eax,dword ptr [ebp-8]
 0048FF11    call        TObject.Free
 0048FF16    mov         cl,byte ptr [ebp-9]
 0048FF19    mov         edx,dword ptr [ebp-8]
 0048FF1C    mov         eax,dword ptr [ebp-4]
 0048FF1F    call        00478BFC
 0048FF24    mov         esp,ebp
 0048FF26    pop         ebp
 0048FF27    ret
end;*}

//0048FF28
{*function sub_0048FF28(?:?):?;
begin
 0048FF28    push        ebp
 0048FF29    mov         ebp,esp
 0048FF2B    add         esp,0FFFFFFF8
 0048FF2E    mov         dword ptr [ebp-4],eax
 0048FF31    mov         eax,dword ptr [ebp-4]
 0048FF34    mov         edx,dword ptr [eax]
 0048FF36    call        dword ptr [edx+8]
 0048FF39    mov         dword ptr [ebp-8],eax
 0048FF3C    mov         eax,dword ptr [ebp-8]
 0048FF3F    pop         ecx
 0048FF40    pop         ecx
 0048FF41    pop         ebp
 0048FF42    ret
end;*}

//0048FF44
function TOrderedList.Pop:Pointer;
begin
{*
 0048FF44    push        ebp
 0048FF45    mov         ebp,esp
 0048FF47    add         esp,0FFFFFFF8
 0048FF4A    mov         dword ptr [ebp-4],eax
 0048FF4D    mov         eax,dword ptr [ebp-4]
 0048FF50    mov         edx,dword ptr [eax]
 0048FF52    call        dword ptr [edx+4]
 0048FF55    mov         dword ptr [ebp-8],eax
 0048FF58    mov         eax,dword ptr [ebp-8]
 0048FF5B    pop         ecx
 0048FF5C    pop         ecx
 0048FF5D    pop         ebp
 0048FF5E    ret
*}
end;

//0048FF60
{*function sub_0048FF60(?:?; ?:TMenuItem):?;
begin
 0048FF60    push        ebp
 0048FF61    mov         ebp,esp
 0048FF63    add         esp,0FFFFFFF4
 0048FF66    mov         dword ptr [ebp-8],edx
 0048FF69    mov         dword ptr [ebp-4],eax
 0048FF6C    mov         edx,dword ptr [ebp-8]
 0048FF6F    mov         eax,dword ptr [ebp-4]
 0048FF72    mov         ecx,dword ptr [eax]
 0048FF74    call        dword ptr [ecx]
 0048FF76    mov         eax,dword ptr [ebp-8]
 0048FF79    mov         dword ptr [ebp-0C],eax
 0048FF7C    mov         eax,dword ptr [ebp-0C]
 0048FF7F    mov         esp,ebp
 0048FF81    pop         ebp
 0048FF82    ret
end;*}

//0048FF84
function TOrderedList.Count:Integer;
begin
{*
 0048FF84    push        ebp
 0048FF85    mov         ebp,esp
 0048FF87    add         esp,0FFFFFFF8
 0048FF8A    mov         dword ptr [ebp-4],eax
 0048FF8D    mov         eax,dword ptr [ebp-4]
 0048FF90    mov         eax,dword ptr [eax+4]
 0048FF93    mov         eax,dword ptr [eax+8]
 0048FF96    mov         dword ptr [ebp-8],eax
 0048FF99    mov         eax,dword ptr [ebp-8]
 0048FF9C    pop         ecx
 0048FF9D    pop         ecx
 0048FF9E    pop         ebp
 0048FF9F    ret
*}
end;

//0048FFA0
constructor TOrderedList.Create;
begin
{*
 0048FFA0    push        ebp
 0048FFA1    mov         ebp,esp
 0048FFA3    add         esp,0FFFFFFF8
 0048FFA6    test        dl,dl
>0048FFA8    je          0048FFB2
 0048FFAA    add         esp,0FFFFFFF0
 0048FFAD    call        @ClassCreate
 0048FFB2    mov         byte ptr [ebp-5],dl
 0048FFB5    mov         dword ptr [ebp-4],eax
 0048FFB8    xor         edx,edx
 0048FFBA    mov         eax,dword ptr [ebp-4]
 0048FFBD    call        TObject.Create
 0048FFC2    mov         dl,1
 0048FFC4    mov         eax,[004759C0];TList
 0048FFC9    call        TObject.Create
 0048FFCE    mov         edx,dword ptr [ebp-4]
 0048FFD1    mov         dword ptr [edx+4],eax
 0048FFD4    mov         eax,dword ptr [ebp-4]
 0048FFD7    cmp         byte ptr [ebp-5],0
>0048FFDB    je          0048FFEC
 0048FFDD    call        @AfterConstruction
 0048FFE2    pop         dword ptr fs:[0]
 0048FFE9    add         esp,0C
 0048FFEC    mov         eax,dword ptr [ebp-4]
 0048FFEF    pop         ecx
 0048FFF0    pop         ecx
 0048FFF1    pop         ebp
 0048FFF2    ret
*}
end;

//0048FFF4
destructor TOrderedList.Destroy;
begin
{*
 0048FFF4    push        ebp
 0048FFF5    mov         ebp,esp
 0048FFF7    add         esp,0FFFFFFF8
 0048FFFA    call        @BeforeDestruction
 0048FFFF    mov         byte ptr [ebp-5],dl
 00490002    mov         dword ptr [ebp-4],eax
 00490005    mov         eax,dword ptr [ebp-4]
 00490008    mov         eax,dword ptr [eax+4]
 0049000B    call        TObject.Free
 00490010    mov         dl,byte ptr [ebp-5]
 00490013    and         dl,0FC
 00490016    mov         eax,dword ptr [ebp-4]
 00490019    call        TObject.Destroy
 0049001E    cmp         byte ptr [ebp-5],0
>00490022    jle         0049002C
 00490024    mov         eax,dword ptr [ebp-4]
 00490027    call        @ClassDestroy
 0049002C    pop         ecx
 0049002D    pop         ecx
 0049002E    pop         ebp
 0049002F    ret
*}
end;

//00490030
{*function sub_00490030:?;
begin
 00490030    push        ebp
 00490031    mov         ebp,esp
 00490033    add         esp,0FFFFFFF8
 00490036    mov         dword ptr [ebp-4],eax
 00490039    mov         eax,dword ptr [ebp-4]
 0049003C    mov         eax,dword ptr [eax+4];TOrderedList........FList:TList
 0049003F    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 00490042    dec         edx
 00490043    mov         eax,dword ptr [ebp-4]
 00490046    mov         eax,dword ptr [eax+4];TOrderedList.........FList:TList
 00490049    call        TList.Get
 0049004E    mov         dword ptr [ebp-8],eax
 00490051    mov         eax,dword ptr [ebp-8]
 00490054    pop         ecx
 00490055    pop         ecx
 00490056    pop         ebp
 00490057    ret
end;*}

//00490058
{*function sub_00490058:?;
begin
 00490058    push        ebp
 00490059    mov         ebp,esp
 0049005B    add         esp,0FFFFFFF8
 0049005E    mov         dword ptr [ebp-4],eax
 00490061    mov         eax,dword ptr [ebp-4]
 00490064    mov         edx,dword ptr [eax]
 00490066    call        dword ptr [edx+8];TOrderedList.sub_00490030
 00490069    mov         dword ptr [ebp-8],eax
 0049006C    mov         eax,dword ptr [ebp-4]
 0049006F    mov         eax,dword ptr [eax+4];TOrderedList..........FList:TList
 00490072    mov         edx,dword ptr [eax+8];TList.FCount:Integer
 00490075    dec         edx
 00490076    mov         eax,dword ptr [ebp-4]
 00490079    mov         eax,dword ptr [eax+4];TOrderedList...........FList:TList
 0049007C    call        00478668
 00490081    mov         eax,dword ptr [ebp-8]
 00490084    pop         ecx
 00490085    pop         ecx
 00490086    pop         ebp
 00490087    ret
end;*}

//00490088
{*procedure sub_00490088(?:?);
begin
 00490088    push        ebp
 00490089    mov         ebp,esp
 0049008B    add         esp,0FFFFFFF8
 0049008E    mov         dword ptr [ebp-8],edx
 00490091    mov         dword ptr [ebp-4],eax
 00490094    mov         edx,dword ptr [ebp-8]
 00490097    mov         eax,dword ptr [ebp-4]
 0049009A    mov         eax,dword ptr [eax+4];TStack............FList:TList
 0049009D    call        TList.Add
 004900A2    pop         ecx
 004900A3    pop         ecx
 004900A4    pop         ebp
 004900A5    ret
end;*}

end.