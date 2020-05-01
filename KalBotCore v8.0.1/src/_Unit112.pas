//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit112;

interface

uses
  SysUtils, Classes;

type
  TAutoCure = class(TThread)
  public
    f40:dword;//f40
    f44:dword;//f44
    f54:dword;//f54
    f58:Double;//f58
    f5C:dword;//f5C
    f60:byte;//f60
    f64:String;//f64
    f68:byte;//f68
    f69:Boolean;//f69
    f6C:dword;//f6C
    f70:byte;//f70
    f71:Boolean;//f71
    f72:Boolean;//f72
    f78:Double;//f78
    f7C:dword;//f7C
    f80:dword;//f80
    f84:dword;//f84
    f90:dword;//f90
    f94:dword;//f94
    f98:byte;//f98
    f99:byte;//f99
    destructor Destroy; virtual;//0052759C
    procedure Execute; virtual;//v4//005275D8
    //constructor Create(?:?; ?:?; ?:?; ?:?);//00527424
  end;
    destructor Destroy;//0052759C
    procedure Execute;//005275D8
    //procedure sub_00527708(?:TAutoCure; ?:?);//00527708
    //function sub_00527724(?:TAutoCure):?;//00527724
    //function sub_005277B8(?:TAutoCure):?;//005277B8
    //function sub_00527904(?:TAutoCure):?;//00527904
    procedure sub_005279BC(?:TAutoCure);//005279BC
    //procedure sub_00527B40(?:TAutoCure; ?:?);//00527B40
    //function sub_00527B60(?:TAutoCure):?;//00527B60
    //procedure sub_00527B7C(?:TAutoCure; ?:?);//00527B7C

implementation

//00527424
{*constructor TAutoCure.Create(?:?; ?:?; ?:?; ?:?);
begin
 00527424    push        ebp
 00527425    mov         ebp,esp
 00527427    add         esp,0FFFFFFF4
 0052742A    test        dl,dl
>0052742C    je          00527436
 0052742E    add         esp,0FFFFFFF0
 00527431    call        @ClassCreate
 00527436    mov         dword ptr [ebp-0C],ecx
 00527439    mov         byte ptr [ebp-5],dl
 0052743C    mov         dword ptr [ebp-4],eax
 0052743F    xor         ecx,ecx
 00527441    xor         edx,edx
 00527443    mov         eax,dword ptr [ebp-4]
 00527446    call        00482974
 0052744B    mov         eax,dword ptr [ebp-4]
 0052744E    mov         byte ptr [eax+0F],0
 00527452    mov         eax,dword ptr [ebp-0C]
 00527455    mov         eax,dword ptr [eax]
 00527457    mov         edx,dword ptr [ebp-4]
 0052745A    mov         dword ptr [edx+50],eax
 0052745D    mov         eax,dword ptr [ebp-4]
 00527460    mov         edx,dword ptr [ebp+0C]
 00527463    mov         dword ptr [eax+40],edx
 00527466    mov         eax,dword ptr [ebp-4]
 00527469    mov         edx,dword ptr [ebp+14]
 0052746C    mov         dword ptr [eax+44],edx
 0052746F    mov         eax,dword ptr [ebp-4]
 00527472    mov         edx,dword ptr [ebp+10]
 00527475    mov         dword ptr [eax+48],edx
 00527478    mov         eax,dword ptr [ebp-4]
 0052747B    mov         edx,dword ptr [ebp+8]
 0052747E    mov         dword ptr [eax+4C],edx
 00527481    mov         eax,dword ptr [ebp-4]
 00527484    mov         eax,dword ptr [eax+50]
 00527487    push        eax
 00527488    mov         eax,dword ptr [ebp-4]
 0052748B    mov         eax,dword ptr [eax+44]
 0052748E    push        eax
 0052748F    mov         eax,dword ptr [ebp-4]
 00527492    mov         eax,dword ptr [eax+4C]
 00527495    push        eax
 00527496    mov         ecx,dword ptr [ebp-4]
 00527499    mov         dl,1
 0052749B    mov         eax,[00527010];TMedicineHelper
 005274A0    call        TMedicineHelper.Create;TMedicineHelper.Create
 005274A5    mov         edx,dword ptr [ebp-4]
 005274A8    mov         dword ptr [edx+54],eax
 005274AB    mov         eax,dword ptr [ebp-4]
 005274AE    mov         eax,dword ptr [eax+54]
 005274B1    mov         dl,byte ptr ds:[527598];0xA gvar_00527598
 005274B7    mov         byte ptr [eax+30],dl
 005274BA    mov         eax,dword ptr [ebp-4]
 005274BD    mov         eax,dword ptr [eax+54]
 005274C0    mov         byte ptr [eax+4],0
 005274C4    mov         eax,dword ptr [ebp-4]
 005274C7    mov         eax,dword ptr [eax+54]
 005274CA    mov         word ptr [eax+1C],0FFFF
 005274D0    mov         eax,dword ptr [ebp-4]
 005274D3    mov         eax,dword ptr [eax+54]
 005274D6    mov         word ptr [eax+1A],0FFFF
 005274DC    mov         eax,dword ptr [ebp-4]
 005274DF    mov         eax,dword ptr [eax+54]
 005274E2    mov         word ptr [eax+18],0FFFF
 005274E8    mov         eax,dword ptr [ebp-4]
 005274EB    mov         byte ptr [eax+71],0
 005274EF    mov         eax,dword ptr [ebp-4]
 005274F2    mov         byte ptr [eax+98],1
 005274F9    mov         eax,dword ptr [ebp-4]
 005274FC    xor         edx,edx
 005274FE    mov         dword ptr [eax+58],edx
 00527501    mov         dword ptr [eax+5C],edx
 00527504    mov         eax,dword ptr [ebp-4]
 00527507    xor         edx,edx
 00527509    mov         dword ptr [eax+88],edx
 0052750F    mov         dword ptr [eax+8C],40400000
 00527519    mov         eax,dword ptr [ebp-4]
 0052751C    xor         edx,edx
 0052751E    mov         dword ptr [eax+78],edx
 00527521    mov         dword ptr [eax+7C],406D2000
 00527528    mov         eax,dword ptr [ebp-4]
 0052752B    xor         edx,edx
 0052752D    mov         dword ptr [eax+80],edx
 00527533    mov         dword ptr [eax+84],40654000
 0052753D    mov         eax,dword ptr [ebp-4]
 00527540    mov         dword ptr [eax+90],6A4
 0052754A    mov         eax,dword ptr [ebp-4]
 0052754D    mov         dword ptr [eax+94],258
 00527557    mov         eax,dword ptr [ebp-4]
 0052755A    add         eax,64
 0052755D    call        @LStrClr
 00527562    mov         eax,[0055B160];^gvar_0054E558
 00527567    mov         al,byte ptr [eax]
 00527569    mov         edx,dword ptr [ebp-4]
 0052756C    mov         byte ptr [edx+68],al
 0052756F    mov         eax,dword ptr [ebp-4]
 00527572    mov         byte ptr [eax+69],1
 00527576    mov         eax,dword ptr [ebp-4]
 00527579    cmp         byte ptr [ebp-5],0
>0052757D    je          0052758E
 0052757F    call        @AfterConstruction
 00527584    pop         dword ptr fs:[0]
 0052758B    add         esp,0C
 0052758E    mov         eax,dword ptr [ebp-4]
 00527591    mov         esp,ebp
 00527593    pop         ebp
 00527594    ret         10
end;*}

//0052759C
destructor TAutoCure.Destroy;
begin
{*
 0052759C    push        ebp
 0052759D    mov         ebp,esp
 0052759F    add         esp,0FFFFFFF8
 005275A2    call        @BeforeDestruction
 005275A7    mov         byte ptr [ebp-5],dl
 005275AA    mov         dword ptr [ebp-4],eax
 005275AD    mov         eax,dword ptr [ebp-4]
 005275B0    mov         eax,dword ptr [eax+54]
 005275B3    call        TObject.Free
 005275B8    mov         dl,byte ptr [ebp-5]
 005275BB    and         dl,0FC
 005275BE    mov         eax,dword ptr [ebp-4]
 005275C1    call        TThread.Destroy
 005275C6    cmp         byte ptr [ebp-5],0
>005275CA    jle         005275D4
 005275CC    mov         eax,dword ptr [ebp-4]
 005275CF    call        @ClassDestroy
 005275D4    pop         ecx
 005275D5    pop         ecx
 005275D6    pop         ebp
 005275D7    ret
*}
end;

//005275D8
procedure TAutoCure.Execute;
begin
{*
 005275D8    push        ebp
 005275D9    mov         ebp,esp
 005275DB    push        ecx
 005275DC    mov         dword ptr [ebp-4],eax
>005275DF    jmp         005276F5
 005275E4    push        0A
 005275E6    call        kernel32.Sleep
>005275EB    jmp         00527601
 005275ED    mov         eax,dword ptr [ebp-4]
 005275F0    cmp         byte ptr [eax+0D],0;TAutoCure.FTerminated:Boolean
>005275F4    jne         00527702
 005275FA    push        0A
 005275FC    call        kernel32.Sleep
 00527601    mov         eax,dword ptr [ebp-4]
 00527604    cmp         byte ptr [eax+72],0;TAutoCure.?f72:Boolean
>00527608    je          005275ED
 0052760A    mov         eax,dword ptr [ebp-4]
 0052760D    mov         eax,dword ptr [eax+44];TAutoCure.?f44:dword
 00527610    cmp         dword ptr [eax+40],0
>00527614    je          005276F5
 0052761A    mov         eax,dword ptr [ebp-4]
 0052761D    mov         eax,dword ptr [eax+44];TAutoCure.?f44:dword
 00527620    call        00535730
 00527625    cmp         al,1
>00527627    jne         005276F5
 0052762D    mov         eax,dword ptr [ebp-4]
 00527630    mov         eax,dword ptr [eax+44];TAutoCure.?f44:dword
 00527633    cmp         word ptr [eax+4C],0
>00527638    je          005276F5
 0052763E    mov         eax,dword ptr [ebp-4]
 00527641    cmp         byte ptr [eax+98],0;TAutoCure.?f98:byte
>00527648    je          00527697
 0052764A    mov         edx,dword ptr ds:[55B41C];^gvar_0054E6FC
 00527650    mov         dl,byte ptr [edx]
 00527652    mov         eax,dword ptr [ebp-4]
 00527655    mov         eax,dword ptr [eax+44];TAutoCure.?f44:dword
 00527658    mov         eax,dword ptr [eax+88]
 0052765E    call        00535A50
 00527663    test        al,al
>00527665    je          00527697
 00527667    mov         eax,dword ptr [ebp-4]
 0052766A    push        dword ptr [eax+5C];TAutoCure.?f5C:dword
 0052766D    push        dword ptr [eax+58];TAutoCure.?f58:Double
 00527670    call        004688F0
 00527675    add         esp,0FFFFFFF8
 00527678    fstp        qword ptr [esp]
 0052767B    wait
 0052767C    call        00521C54
 00527681    cmp         edx,0
>00527684    jne         0052768D
 00527686    cmp         eax,0D
>00527689    jb          00527697
>0052768B    jmp         0052768F
>0052768D    jl          00527697
 0052768F    mov         eax,dword ptr [ebp-4]
 00527692    call        005279BC
 00527697    mov         eax,dword ptr [ebp-4]
 0052769A    call        00527B60
 0052769F    test        al,al
>005276A1    je          005276BB
 005276A3    mov         eax,dword ptr [ebp-4]
 005276A6    mov         eax,dword ptr [eax+54];TAutoCure.?f54:dword
 005276A9    cmp         word ptr [eax+1A],0
>005276AE    jle         005276BB
 005276B0    mov         eax,dword ptr [ebp-4]
 005276B3    mov         eax,dword ptr [eax+54];TAutoCure.?f54:dword
 005276B6    call        0052724C
 005276BB    mov         eax,dword ptr [ebp-4]
 005276BE    mov         al,byte ptr [eax+60];TAutoCure.?f60:byte
 005276C1    sub         al,2
>005276C3    jb          005276CD
>005276C5    je          005276DB
 005276C7    dec         al
>005276C9    je          005276E9
>005276CB    jmp         005276F5
 005276CD    mov         eax,dword ptr [ebp-4]
 005276D0    call        005277B8
 005276D5    test        al,al
>005276D7    je          005276F5
>005276D9    jmp         005276F5
 005276DB    mov         eax,dword ptr [ebp-4]
 005276DE    call        00527724
 005276E3    test        al,al
>005276E5    je          005276F5
>005276E7    jmp         005276F5
 005276E9    mov         eax,dword ptr [ebp-4]
 005276EC    call        00527904
 005276F1    test        al,al
>005276F3    je          005276F5
 005276F5    mov         eax,dword ptr [ebp-4]
 005276F8    cmp         byte ptr [eax+0D],0;TAutoCure.FTerminated:Boolean
>005276FC    je          005275E4
 00527702    pop         ecx
 00527703    pop         ebp
 00527704    ret
*}
end;

//00527708
{*procedure sub_00527708(?:TAutoCure; ?:?);
begin
 00527708    push        ebp
 00527709    mov         ebp,esp
 0052770B    add         esp,0FFFFFFF8
 0052770E    mov         byte ptr [ebp-5],dl
 00527711    mov         dword ptr [ebp-4],eax
 00527714    mov         al,byte ptr [ebp-5]
 00527717    mov         edx,dword ptr [ebp-4]
 0052771A    mov         byte ptr [edx+60],al
 0052771D    pop         ecx
 0052771E    pop         ecx
 0052771F    pop         ebp
 00527720    ret
end;*}

//00527724
{*function sub_00527724(?:TAutoCure):?;
begin
 00527724    push        ebp
 00527725    mov         ebp,esp
 00527727    add         esp,0FFFFFFF4
 0052772A    mov         dword ptr [ebp-4],eax
 0052772D    mov         byte ptr [ebp-5],0
 00527731    mov         eax,dword ptr [ebp-4]
 00527734    push        dword ptr [eax+84];TAutoCure.?f84:dword
 0052773A    push        dword ptr [eax+80];TAutoCure.?f80:dword
 00527740    mov         eax,dword ptr [ebp-4]
 00527743    mov         eax,dword ptr [eax+40];TAutoCure.?f40:dword
 00527746    call        00532B48
 0052774B    mov         dword ptr [ebp-0C],eax
 0052774E    cmp         dword ptr [ebp-0C],0
>00527752    je          005277B0
 00527754    mov         eax,dword ptr [ebp-0C]
 00527757    mov         eax,dword ptr [eax+14]
 0052775A    mov         edx,dword ptr [ebp-0C]
 0052775D    sub         eax,dword ptr [edx+10]
 00527760    cmp         eax,64
>00527763    jb          005277B0
 00527765    mov         eax,[0055B524];^gvar_0054E568
 0052776A    mov         al,byte ptr [eax]
 0052776C    mov         edx,dword ptr [ebp-4]
 0052776F    mov         byte ptr [edx+70],al;TAutoCure.?f70:byte
 00527772    mov         eax,dword ptr [ebp-4]
 00527775    push        eax
 00527776    push        5279F0
 0052777B    mov         eax,dword ptr [ebp-4]
 0052777E    call        00482D80
 00527783    mov         eax,dword ptr [ebp-4]
 00527786    mov         eax,dword ptr [eax+90];TAutoCure.?f90:dword
 0052778C    push        eax
 0052778D    call        kernel32.Sleep
 00527792    mov         eax,[0055B524];^gvar_0054E568
 00527797    mov         al,byte ptr [eax]
 00527799    mov         edx,dword ptr [ebp-4]
 0052779C    mov         byte ptr [edx+70],al;TAutoCure.?f70:byte
 0052779F    mov         eax,dword ptr [ebp-4]
 005277A2    push        eax
 005277A3    push        527AD4
 005277A8    mov         eax,dword ptr [ebp-4]
 005277AB    call        00482D80
 005277B0    mov         al,byte ptr [ebp-5]
 005277B3    mov         esp,ebp
 005277B5    pop         ebp
 005277B6    ret
end;*}

//005277B8
{*function sub_005277B8(?:TAutoCure):?;
begin
 005277B8    push        ebp
 005277B9    mov         ebp,esp
 005277BB    add         esp,0FFFFFFF4
 005277BE    mov         dword ptr [ebp-4],eax
 005277C1    mov         byte ptr [ebp-5],0
 005277C5    mov         eax,dword ptr [ebp-4]
 005277C8    push        dword ptr [eax+7C];TAutoCure.?f7C:dword
 005277CB    push        dword ptr [eax+78];TAutoCure.?f78:Double
 005277CE    mov         eax,dword ptr [ebp-4]
 005277D1    mov         eax,dword ptr [eax+40];TAutoCure.?f40:dword
 005277D4    call        00532B48
 005277D9    mov         dword ptr [ebp-0C],eax
 005277DC    cmp         dword ptr [ebp-0C],0
>005277E0    je          005278F7
 005277E6    mov         eax,dword ptr [ebp-0C]
 005277E9    mov         eax,dword ptr [eax+14]
 005277EC    mov         edx,dword ptr [ebp-0C]
 005277EF    sub         eax,dword ptr [edx+10]
 005277F2    cmp         eax,64
>005277F5    jb          005278F7
 005277FB    mov         eax,dword ptr [ebp-0C]
 005277FE    mov         eax,dword ptr [eax+10]
 00527801    mov         edx,dword ptr [ebp-0C]
 00527804    cmp         eax,dword ptr [edx+14]
>00527807    jae         005278EC
 0052780D    mov         eax,[0055B5F8];^gvar_0054E564
 00527812    mov         al,byte ptr [eax]
 00527814    mov         edx,dword ptr [ebp-4]
 00527817    mov         byte ptr [edx+70],al;TAutoCure.?f70:byte
 0052781A    mov         eax,dword ptr [ebp-4]
 0052781D    push        eax
 0052781E    push        5279F0
 00527823    mov         eax,dword ptr [ebp-4]
 00527826    call        00482D80
 0052782B    mov         eax,dword ptr [ebp-4]
 0052782E    mov         eax,dword ptr [eax+90];TAutoCure.?f90:dword
 00527834    push        eax
 00527835    call        kernel32.Sleep
 0052783A    mov         eax,dword ptr [ebp-4]
 0052783D    fld         qword ptr [eax+78];TAutoCure.?f78:Double
 00527840    fadd        dword ptr ds:[527900];100:Single
 00527846    add         esp,0FFFFFFF8
 00527849    fstp        qword ptr [esp]
 0052784C    wait
 0052784D    mov         eax,dword ptr [ebp-4]
 00527850    mov         eax,dword ptr [eax+40];TAutoCure.?f40:dword
 00527853    call        00532B48
 00527858    mov         dword ptr [ebp-0C],eax
 0052785B    cmp         dword ptr [ebp-0C],0
>0052785F    jne         0052787A
 00527861    mov         eax,dword ptr [ebp-4]
 00527864    mov         eax,dword ptr [eax+44];TAutoCure.?f44:dword
 00527867    mov         eax,dword ptr [eax+40]
 0052786A    mov         edx,dword ptr [eax]
 0052786C    mov         eax,dword ptr [ebp-4]
 0052786F    mov         eax,dword ptr [eax+40];TAutoCure.?f40:dword
 00527872    call        00532544
 00527877    mov         dword ptr [ebp-0C],eax
 0052787A    mov         eax,dword ptr [ebp-0C]
 0052787D    mov         eax,dword ptr [eax]
 0052787F    mov         edx,dword ptr [ebp-4]
 00527882    mov         dword ptr [edx+6C],eax;TAutoCure.?f6C:dword
 00527885    mov         eax,dword ptr [ebp-0C]
 00527888    mov         eax,dword ptr [eax+14]
 0052788B    mov         edx,dword ptr [ebp-0C]
 0052788E    sub         eax,dword ptr [edx+10]
 00527891    cmp         eax,1F4
>00527896    ja          005278A7
 00527898    mov         eax,[0055B160];^gvar_0054E558
 0052789D    mov         al,byte ptr [eax]
 0052789F    mov         edx,dword ptr [ebp-4]
 005278A2    mov         byte ptr [edx+70],al;TAutoCure.?f70:byte
>005278A5    jmp         005278B4
 005278A7    mov         eax,[0055B5F8];^gvar_0054E564
 005278AC    mov         al,byte ptr [eax]
 005278AE    mov         edx,dword ptr [ebp-4]
 005278B1    mov         byte ptr [edx+70],al;TAutoCure.?f70:byte
 005278B4    mov         eax,dword ptr [ebp-4]
 005278B7    cmp         byte ptr [eax+71],0;TAutoCure.?f71:Boolean
>005278BB    je          005278CA
 005278BD    mov         eax,[0055B160];^gvar_0054E558
 005278C2    mov         al,byte ptr [eax]
 005278C4    mov         edx,dword ptr [ebp-4]
 005278C7    mov         byte ptr [edx+70],al;TAutoCure.?f70:byte
 005278CA    mov         eax,dword ptr [ebp-4]
 005278CD    push        eax
 005278CE    push        527A60
 005278D3    mov         eax,dword ptr [ebp-4]
 005278D6    call        00482D80
 005278DB    mov         eax,dword ptr [ebp-4]
 005278DE    mov         eax,dword ptr [eax+94];TAutoCure.?f94:dword
 005278E4    push        eax
 005278E5    call        kernel32.Sleep
>005278EA    jmp         005278F3
 005278EC    push        64
 005278EE    call        kernel32.Sleep
 005278F3    mov         byte ptr [ebp-5],1
 005278F7    mov         al,byte ptr [ebp-5]
 005278FA    mov         esp,ebp
 005278FC    pop         ebp
 005278FD    ret
end;*}

//00527904
{*function sub_00527904(?:TAutoCure):?;
begin
 00527904    push        ebp
 00527905    mov         ebp,esp
 00527907    add         esp,0FFFFFFF4
 0052790A    mov         dword ptr [ebp-4],eax
 0052790D    mov         byte ptr [ebp-5],0
 00527911    mov         eax,dword ptr [ebp-4]
 00527914    mov         edx,dword ptr [eax+64];TAutoCure.?f64:String
 00527917    mov         eax,dword ptr [ebp-4]
 0052791A    mov         eax,dword ptr [eax+44];TAutoCure.?f44:dword
 0052791D    call        00534730
 00527922    mov         dword ptr [ebp-0C],eax
 00527925    cmp         dword ptr [ebp-0C],0
>00527929    je          005279B5
 0052792F    mov         eax,dword ptr [ebp-4]
 00527932    cmp         byte ptr [eax+69],0;TAutoCure.?f69:Boolean
>00527936    je          0052795A
 00527938    mov         eax,dword ptr [ebp-4]
 0052793B    mov         eax,dword ptr [eax+44];TAutoCure.?f44:dword
 0052793E    mov         eax,dword ptr [eax+40]
 00527941    lea         edx,[eax+0C]
 00527944    mov         eax,dword ptr [ebp-0C]
 00527947    add         eax,0C
 0052794A    call        0051F5FC
 0052794F    mov         eax,dword ptr [ebp-4]
 00527952    fcomp       qword ptr [eax+78];TAutoCure.?f78:Double
 00527955    fnstsw      al
 00527957    sahf
>00527958    ja          005279B5
 0052795A    mov         eax,dword ptr [ebp-0C]
 0052795D    mov         eax,dword ptr [eax]
 0052795F    mov         edx,dword ptr [ebp-4]
 00527962    mov         dword ptr [edx+6C],eax;TAutoCure.?f6C:dword
 00527965    mov         eax,dword ptr [ebp-4]
 00527968    mov         al,byte ptr [eax+68];TAutoCure.?f68:byte
 0052796B    mov         edx,dword ptr [ebp-4]
 0052796E    mov         byte ptr [edx+70],al;TAutoCure.?f70:byte
 00527971    mov         eax,dword ptr [ebp-4]
 00527974    push        eax
 00527975    push        5279F0
 0052797A    mov         eax,dword ptr [ebp-4]
 0052797D    call        00482D80
 00527982    mov         eax,dword ptr [ebp-4]
 00527985    mov         eax,dword ptr [eax+90];TAutoCure.?f90:dword
 0052798B    push        eax
 0052798C    call        kernel32.Sleep
 00527991    mov         eax,dword ptr [ebp-4]
 00527994    push        eax
 00527995    push        527A60
 0052799A    mov         eax,dword ptr [ebp-4]
 0052799D    call        00482D80
 005279A2    mov         eax,dword ptr [ebp-4]
 005279A5    mov         eax,dword ptr [eax+94];TAutoCure.?f94:dword
 005279AB    push        eax
 005279AC    call        kernel32.Sleep
 005279B1    mov         byte ptr [ebp-5],1
 005279B5    mov         al,byte ptr [ebp-5]
 005279B8    mov         esp,ebp
 005279BA    pop         ebp
 005279BB    ret
end;*}

//005279BC
procedure sub_005279BC(?:TAutoCure);
begin
{*
 005279BC    push        ebp
 005279BD    mov         ebp,esp
 005279BF    push        ecx
 005279C0    mov         dword ptr [ebp-4],eax
 005279C3    mov         eax,[0055B6A0];^gvar_0054E56C
 005279C8    mov         al,byte ptr [eax]
 005279CA    mov         edx,dword ptr [ebp-4]
 005279CD    mov         byte ptr [edx+70],al;TAutoCure.?f70:byte
 005279D0    mov         eax,dword ptr [ebp-4]
 005279D3    push        eax
 005279D4    push        527AD4
 005279D9    mov         eax,dword ptr [ebp-4]
 005279DC    call        00482D80
 005279E1    call        004688F0
 005279E6    mov         eax,dword ptr [ebp-4]
 005279E9    fstp        qword ptr [eax+58];TAutoCure.?f58:Double
 005279EC    wait
 005279ED    pop         ecx
 005279EE    pop         ebp
 005279EF    ret
*}
end;

//00527B40
{*procedure sub_00527B40(?:TAutoCure; ?:?);
begin
 00527B40    push        ebp
 00527B41    mov         ebp,esp
 00527B43    add         esp,0FFFFFFF8
 00527B46    mov         word ptr [ebp-6],dx
 00527B4A    mov         dword ptr [ebp-4],eax
 00527B4D    mov         eax,dword ptr [ebp-4]
 00527B50    mov         eax,dword ptr [eax+54]
 00527B53    mov         dx,word ptr [ebp-6]
 00527B57    mov         word ptr [eax+1A],dx
 00527B5B    pop         ecx
 00527B5C    pop         ecx
 00527B5D    pop         ebp
 00527B5E    ret
end;*}

//00527B60
{*function sub_00527B60(?:TAutoCure):?;
begin
 00527B60    push        ebp
 00527B61    mov         ebp,esp
 00527B63    add         esp,0FFFFFFF8
 00527B66    mov         dword ptr [ebp-4],eax
 00527B69    mov         eax,dword ptr [ebp-4]
 00527B6C    mov         eax,dword ptr [eax+54];TAutoCure.?f54:dword
 00527B6F    mov         al,byte ptr [eax+4]
 00527B72    mov         byte ptr [ebp-5],al
 00527B75    mov         al,byte ptr [ebp-5]
 00527B78    pop         ecx
 00527B79    pop         ecx
 00527B7A    pop         ebp
 00527B7B    ret
end;*}

//00527B7C
{*procedure sub_00527B7C(?:TAutoCure; ?:?);
begin
 00527B7C    push        ebp
 00527B7D    mov         ebp,esp
 00527B7F    add         esp,0FFFFFFF8
 00527B82    mov         byte ptr [ebp-5],dl
 00527B85    mov         dword ptr [ebp-4],eax
 00527B88    mov         eax,dword ptr [ebp-4]
 00527B8B    mov         eax,dword ptr [eax+54]
 00527B8E    mov         dl,byte ptr [ebp-5]
 00527B91    mov         byte ptr [eax+4],dl
 00527B94    pop         ecx
 00527B95    pop         ecx
 00527B96    pop         ebp
 00527B97    ret
end;*}

end.