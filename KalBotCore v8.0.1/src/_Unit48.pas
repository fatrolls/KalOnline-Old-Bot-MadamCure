//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit48;

interface

uses
  SysUtils, Classes;

    procedure sub_00492440;//00492440
    //function sub_00492600:?;//00492600
    //function sub_00492DF8:?;//00492DF8

implementation

//00492440
procedure sub_00492440;
begin
{*
 00492440    push        ebp
 00492441    mov         ebp,esp
 00492443    mov         eax,[0055DCC0];gvar_0055DCC0:TCriticalSection
 00492448    call        004923E0
 0049244D    xor         eax,eax
 0049244F    push        ebp
 00492450    push        4925F7
 00492455    push        dword ptr fs:[eax]
 00492458    mov         dword ptr fs:[eax],esp
 0049245B    cmp         dword ptr ds:[55DCBC],0;gvar_0055DCBC
>00492462    jle         0049246A
 00492464    dec         dword ptr ds:[55DCBC];gvar_0055DCBC
 0049246A    cmp         dword ptr ds:[55DCB8],0;gvar_0055DCB8:HMODULE
>00492471    je          004925DF
 00492477    cmp         dword ptr ds:[55DCBC],0;gvar_0055DCBC
>0049247E    jne         004925DF
 00492484    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492489    push        eax
 0049248A    call        kernel32.FreeLibrary
 0049248F    xor         eax,eax
 00492491    mov         [0055DCB8],eax;gvar_0055DCB8:HMODULE
 00492496    xor         eax,eax
 00492498    mov         [0055DBF8],eax;gvar_0055DBF8:Pointer
 0049249D    xor         eax,eax
 0049249F    mov         [0055DBFC],eax;gvar_0055DBFC:Pointer
 004924A4    xor         eax,eax
 004924A6    mov         [0055DC00],eax;gvar_0055DC00:Pointer
 004924AB    xor         eax,eax
 004924AD    mov         [0055DC04],eax;gvar_0055DC04:Pointer
 004924B2    xor         eax,eax
 004924B4    mov         [0055DC08],eax;gvar_0055DC08:Pointer
 004924B9    xor         eax,eax
 004924BB    mov         [0055DC0C],eax;gvar_0055DC0C:Pointer
 004924C0    xor         eax,eax
 004924C2    mov         [0055DC10],eax;gvar_0055DC10:Pointer
 004924C7    xor         eax,eax
 004924C9    mov         [0055DC14],eax;gvar_0055DC14:Pointer
 004924CE    xor         eax,eax
 004924D0    mov         [0055DC18],eax;gvar_0055DC18:Pointer
 004924D5    xor         eax,eax
 004924D7    mov         [0055DC1C],eax;gvar_0055DC1C:Pointer
 004924DC    xor         eax,eax
 004924DE    mov         [0055DC20],eax;gvar_0055DC20:Pointer
 004924E3    xor         eax,eax
 004924E5    mov         [0055DC24],eax;gvar_0055DC24:Pointer
 004924EA    xor         eax,eax
 004924EC    mov         [0055DC28],eax;gvar_0055DC28:Pointer
 004924F1    xor         eax,eax
 004924F3    mov         [0055DC2C],eax;gvar_0055DC2C:Pointer
 004924F8    xor         eax,eax
 004924FA    mov         [0055DC30],eax;gvar_0055DC30:Pointer
 004924FF    xor         eax,eax
 00492501    mov         [0055DC34],eax;gvar_0055DC34:Pointer
 00492506    xor         eax,eax
 00492508    mov         [0055DC38],eax;gvar_0055DC38:Pointer
 0049250D    xor         eax,eax
 0049250F    mov         [0055DC3C],eax;gvar_0055DC3C:Pointer
 00492514    xor         eax,eax
 00492516    mov         [0055DC40],eax;gvar_0055DC40:Pointer
 0049251B    xor         eax,eax
 0049251D    mov         [0055DC44],eax;gvar_0055DC44:Pointer
 00492522    xor         eax,eax
 00492524    mov         [0055DC48],eax;gvar_0055DC48:Pointer
 00492529    xor         eax,eax
 0049252B    mov         [0055DC4C],eax;gvar_0055DC4C:Pointer
 00492530    xor         eax,eax
 00492532    mov         [0055DC50],eax;gvar_0055DC50:Pointer
 00492537    xor         eax,eax
 00492539    mov         [0055DC54],eax;gvar_0055DC54:Pointer
 0049253E    xor         eax,eax
 00492540    mov         [0055DC58],eax;gvar_0055DC58:Pointer
 00492545    xor         eax,eax
 00492547    mov         [0055DC5C],eax;gvar_0055DC5C:Pointer
 0049254C    xor         eax,eax
 0049254E    mov         [0055DC60],eax;gvar_0055DC60:Pointer
 00492553    xor         eax,eax
 00492555    mov         [0055DC64],eax;gvar_0055DC64:Pointer
 0049255A    xor         eax,eax
 0049255C    mov         [0055DC68],eax;gvar_0055DC68:Pointer
 00492561    xor         eax,eax
 00492563    mov         [0055DC6C],eax;gvar_0055DC6C:Pointer
 00492568    xor         eax,eax
 0049256A    mov         [0055DC70],eax;gvar_0055DC70:Pointer
 0049256F    xor         eax,eax
 00492571    mov         [0055DC74],eax;gvar_0055DC74:Pointer
 00492576    xor         eax,eax
 00492578    mov         [0055DC78],eax;gvar_0055DC78:Pointer
 0049257D    xor         eax,eax
 0049257F    mov         [0055DC7C],eax;gvar_0055DC7C:Pointer
 00492584    xor         eax,eax
 00492586    mov         [0055DC80],eax;gvar_0055DC80:Pointer
 0049258B    xor         eax,eax
 0049258D    mov         [0055DC84],eax;gvar_0055DC84:Pointer
 00492592    xor         eax,eax
 00492594    mov         [0055DC88],eax;gvar_0055DC88:Pointer
 00492599    xor         eax,eax
 0049259B    mov         [0055DC8C],eax;gvar_0055DC8C:Pointer
 004925A0    xor         eax,eax
 004925A2    mov         [0055DC90],eax;gvar_0055DC90:Pointer
 004925A7    xor         eax,eax
 004925A9    mov         [0055DC94],eax;gvar_0055DC94:Pointer
 004925AE    xor         eax,eax
 004925B0    mov         [0055DC98],eax;gvar_0055DC98:Pointer
 004925B5    xor         eax,eax
 004925B7    mov         [0055DC9C],eax;gvar_0055DC9C:Pointer
 004925BC    xor         eax,eax
 004925BE    mov         [0055DCA0],eax;gvar_0055DCA0:Pointer
 004925C3    xor         eax,eax
 004925C5    mov         [0055DCA4],eax;gvar_0055DCA4:Pointer
 004925CA    xor         eax,eax
 004925CC    mov         [0055DCA8],eax;gvar_0055DCA8:Pointer
 004925D1    xor         eax,eax
 004925D3    mov         [0055DCAC],eax;gvar_0055DCAC:Pointer
 004925D8    xor         eax,eax
 004925DA    mov         [0055DCB0],eax;gvar_0055DCB0:Pointer
 004925DF    xor         eax,eax
 004925E1    pop         edx
 004925E2    pop         ecx
 004925E3    pop         ecx
 004925E4    mov         dword ptr fs:[eax],edx
 004925E7    push        4925FE
 004925EC    mov         eax,[0055DCC0];gvar_0055DCC0:TCriticalSection
 004925F1    call        004923F4
 004925F6    ret
>004925F7    jmp         @HandleFinally
>004925FC    jmp         004925EC
 004925FE    pop         ebp
 004925FF    ret
*}
end;

//00492600
{*function sub_00492600:?;
begin
 00492600    push        ebp
 00492601    mov         ebp,esp
 00492603    push        ecx
 00492604    mov         eax,[0055DCC0];gvar_0055DCC0:TCriticalSection
 00492609    call        004923E0
 0049260E    xor         eax,eax
 00492610    push        ebp
 00492611    push        492A49
 00492616    push        dword ptr fs:[eax]
 00492619    mov         dword ptr fs:[eax],esp
 0049261C    inc         dword ptr ds:[55DCBC];gvar_0055DCBC
 00492622    cmp         dword ptr ds:[55DCB8],0;gvar_0055DCB8:HMODULE
>00492629    jne         00492A26
 0049262F    push        492A58;'uxtheme.dll'
 00492634    call        kernel32.LoadLibraryA
 00492639    mov         [0055DCB8],eax;gvar_0055DCB8:HMODULE
 0049263E    cmp         dword ptr ds:[55DCB8],0;gvar_0055DCB8:HMODULE
>00492645    jbe         00492A26
 0049264B    push        492A64;'OpenThemeData'
 00492650    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492655    push        eax
 00492656    call        kernel32.GetProcAddress
 0049265B    mov         [0055DBF8],eax;gvar_0055DBF8:Pointer
 00492660    push        492A74;'CloseThemeData'
 00492665    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049266A    push        eax
 0049266B    call        kernel32.GetProcAddress
 00492670    mov         [0055DBFC],eax;gvar_0055DBFC:Pointer
 00492675    push        492A84;'DrawThemeBackground'
 0049267A    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049267F    push        eax
 00492680    call        kernel32.GetProcAddress
 00492685    mov         [0055DC00],eax;gvar_0055DC00:Pointer
 0049268A    push        492A98;'DrawThemeText'
 0049268F    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492694    push        eax
 00492695    call        kernel32.GetProcAddress
 0049269A    mov         [0055DC04],eax;gvar_0055DC04:Pointer
 0049269F    push        492AA8;'GetThemeBackgroundContentRect'
 004926A4    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004926A9    push        eax
 004926AA    call        kernel32.GetProcAddress
 004926AF    mov         [0055DC08],eax;gvar_0055DC08:Pointer
 004926B4    push        492AA8;'GetThemeBackgroundContentRect'
 004926B9    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004926BE    push        eax
 004926BF    call        kernel32.GetProcAddress
 004926C4    mov         [0055DC0C],eax;gvar_0055DC0C:Pointer
 004926C9    push        492AC8;'GetThemePartSize'
 004926CE    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004926D3    push        eax
 004926D4    call        kernel32.GetProcAddress
 004926D9    mov         [0055DC10],eax;gvar_0055DC10:Pointer
 004926DE    push        492ADC;'GetThemeTextExtent'
 004926E3    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004926E8    push        eax
 004926E9    call        kernel32.GetProcAddress
 004926EE    mov         [0055DC14],eax;gvar_0055DC14:Pointer
 004926F3    push        492AF0;'GetThemeTextMetrics'
 004926F8    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004926FD    push        eax
 004926FE    call        kernel32.GetProcAddress
 00492703    mov         [0055DC18],eax;gvar_0055DC18:Pointer
 00492708    push        492B04;'GetThemeBackgroundRegion'
 0049270D    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492712    push        eax
 00492713    call        kernel32.GetProcAddress
 00492718    mov         [0055DC1C],eax;gvar_0055DC1C:Pointer
 0049271D    push        492B20;'HitTestThemeBackground'
 00492722    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492727    push        eax
 00492728    call        kernel32.GetProcAddress
 0049272D    mov         [0055DC20],eax;gvar_0055DC20:Pointer
 00492732    push        492B38;'DrawThemeEdge'
 00492737    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049273C    push        eax
 0049273D    call        kernel32.GetProcAddress
 00492742    mov         [0055DC24],eax;gvar_0055DC24:Pointer
 00492747    push        492B48;'DrawThemeIcon'
 0049274C    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492751    push        eax
 00492752    call        kernel32.GetProcAddress
 00492757    mov         [0055DC28],eax;gvar_0055DC28:Pointer
 0049275C    push        492B58;'IsThemePartDefined'
 00492761    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492766    push        eax
 00492767    call        kernel32.GetProcAddress
 0049276C    mov         [0055DC2C],eax;gvar_0055DC2C:Pointer
 00492771    push        492B6C;'IsThemeBackgroundPartiallyTransparent'
 00492776    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049277B    push        eax
 0049277C    call        kernel32.GetProcAddress
 00492781    mov         [0055DC30],eax;gvar_0055DC30:Pointer
 00492786    push        492B94;'GetThemeColor'
 0049278B    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492790    push        eax
 00492791    call        kernel32.GetProcAddress
 00492796    mov         [0055DC34],eax;gvar_0055DC34:Pointer
 0049279B    push        492BA4;'GetThemeMetric'
 004927A0    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004927A5    push        eax
 004927A6    call        kernel32.GetProcAddress
 004927AB    mov         [0055DC38],eax;gvar_0055DC38:Pointer
 004927B0    push        492BB4;'GetThemeString'
 004927B5    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004927BA    push        eax
 004927BB    call        kernel32.GetProcAddress
 004927C0    mov         [0055DC3C],eax;gvar_0055DC3C:Pointer
 004927C5    push        492BC4;'GetThemeBool'
 004927CA    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004927CF    push        eax
 004927D0    call        kernel32.GetProcAddress
 004927D5    mov         [0055DC40],eax;gvar_0055DC40:Pointer
 004927DA    push        492BD4;'GetThemeInt'
 004927DF    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004927E4    push        eax
 004927E5    call        kernel32.GetProcAddress
 004927EA    mov         [0055DC44],eax;gvar_0055DC44:Pointer
 004927EF    push        492BE0;'GetThemeEnumValue'
 004927F4    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004927F9    push        eax
 004927FA    call        kernel32.GetProcAddress
 004927FF    mov         [0055DC48],eax;gvar_0055DC48:Pointer
 00492804    push        492BF4;'GetThemePosition'
 00492809    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049280E    push        eax
 0049280F    call        kernel32.GetProcAddress
 00492814    mov         [0055DC4C],eax;gvar_0055DC4C:Pointer
 00492819    push        492C08;'GetThemeFont'
 0049281E    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492823    push        eax
 00492824    call        kernel32.GetProcAddress
 00492829    mov         [0055DC50],eax;gvar_0055DC50:Pointer
 0049282E    push        492C18;'GetThemeRect'
 00492833    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492838    push        eax
 00492839    call        kernel32.GetProcAddress
 0049283E    mov         [0055DC54],eax;gvar_0055DC54:Pointer
 00492843    push        492C28;'GetThemeMargins'
 00492848    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049284D    push        eax
 0049284E    call        kernel32.GetProcAddress
 00492853    mov         [0055DC58],eax;gvar_0055DC58:Pointer
 00492858    push        492C38;'GetThemeIntList'
 0049285D    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492862    push        eax
 00492863    call        kernel32.GetProcAddress
 00492868    mov         [0055DC5C],eax;gvar_0055DC5C:Pointer
 0049286D    push        492C48;'GetThemePropertyOrigin'
 00492872    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492877    push        eax
 00492878    call        kernel32.GetProcAddress
 0049287D    mov         [0055DC60],eax;gvar_0055DC60:Pointer
 00492882    push        492C60;'SetWindowTheme'
 00492887    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049288C    push        eax
 0049288D    call        kernel32.GetProcAddress
 00492892    mov         [0055DC64],eax;gvar_0055DC64:Pointer
 00492897    push        492C70;'GetThemeFilename'
 0049289C    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004928A1    push        eax
 004928A2    call        kernel32.GetProcAddress
 004928A7    mov         [0055DC68],eax;gvar_0055DC68:Pointer
 004928AC    push        492C84;'GetThemeSysColor'
 004928B1    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004928B6    push        eax
 004928B7    call        kernel32.GetProcAddress
 004928BC    mov         [0055DC6C],eax;gvar_0055DC6C:Pointer
 004928C1    push        492C98;'GetThemeSysColorBrush'
 004928C6    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004928CB    push        eax
 004928CC    call        kernel32.GetProcAddress
 004928D1    mov         [0055DC70],eax;gvar_0055DC70:Pointer
 004928D6    push        492CB0;'GetThemeSysBool'
 004928DB    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004928E0    push        eax
 004928E1    call        kernel32.GetProcAddress
 004928E6    mov         [0055DC74],eax;gvar_0055DC74:Pointer
 004928EB    push        492CC0;'GetThemeSysSize'
 004928F0    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004928F5    push        eax
 004928F6    call        kernel32.GetProcAddress
 004928FB    mov         [0055DC78],eax;gvar_0055DC78:Pointer
 00492900    push        492CD0;'GetThemeSysFont'
 00492905    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049290A    push        eax
 0049290B    call        kernel32.GetProcAddress
 00492910    mov         [0055DC7C],eax;gvar_0055DC7C:Pointer
 00492915    push        492CE0;'GetThemeSysString'
 0049291A    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049291F    push        eax
 00492920    call        kernel32.GetProcAddress
 00492925    mov         [0055DC80],eax;gvar_0055DC80:Pointer
 0049292A    push        492CF4;'GetThemeSysInt'
 0049292F    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492934    push        eax
 00492935    call        kernel32.GetProcAddress
 0049293A    mov         [0055DC84],eax;gvar_0055DC84:Pointer
 0049293F    push        492D04;'IsThemeActive'
 00492944    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492949    push        eax
 0049294A    call        kernel32.GetProcAddress
 0049294F    mov         [0055DC88],eax;gvar_0055DC88:Pointer
 00492954    push        492D14;'IsAppThemed'
 00492959    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049295E    push        eax
 0049295F    call        kernel32.GetProcAddress
 00492964    mov         [0055DC8C],eax;gvar_0055DC8C:Pointer
 00492969    push        492D20;'GetWindowTheme'
 0049296E    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492973    push        eax
 00492974    call        kernel32.GetProcAddress
 00492979    mov         [0055DC90],eax;gvar_0055DC90:Pointer
 0049297E    push        492D30;'EnableThemeDialogTexture'
 00492983    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492988    push        eax
 00492989    call        kernel32.GetProcAddress
 0049298E    mov         [0055DC94],eax;gvar_0055DC94:Pointer
 00492993    push        492D4C;'IsThemeDialogTextureEnabled'
 00492998    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 0049299D    push        eax
 0049299E    call        kernel32.GetProcAddress
 004929A3    mov         [0055DC98],eax;gvar_0055DC98:Pointer
 004929A8    push        492D68;'GetThemeAppProperties'
 004929AD    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004929B2    push        eax
 004929B3    call        kernel32.GetProcAddress
 004929B8    mov         [0055DC9C],eax;gvar_0055DC9C:Pointer
 004929BD    push        492D80;'SetThemeAppProperties'
 004929C2    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004929C7    push        eax
 004929C8    call        kernel32.GetProcAddress
 004929CD    mov         [0055DCA0],eax;gvar_0055DCA0:Pointer
 004929D2    push        492D98;'GetCurrentThemeName'
 004929D7    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004929DC    push        eax
 004929DD    call        kernel32.GetProcAddress
 004929E2    mov         [0055DCA4],eax;gvar_0055DCA4:Pointer
 004929E7    push        492DAC;'GetThemeDocumentationProperty'
 004929EC    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 004929F1    push        eax
 004929F2    call        kernel32.GetProcAddress
 004929F7    mov         [0055DCA8],eax;gvar_0055DCA8:Pointer
 004929FC    push        492DCC;'DrawThemeParentBackground'
 00492A01    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492A06    push        eax
 00492A07    call        kernel32.GetProcAddress
 00492A0C    mov         [0055DCAC],eax;gvar_0055DCAC:Pointer
 00492A11    push        492DE8;'EnableTheming'
 00492A16    mov         eax,[0055DCB8];gvar_0055DCB8:HMODULE
 00492A1B    push        eax
 00492A1C    call        kernel32.GetProcAddress
 00492A21    mov         [0055DCB0],eax;gvar_0055DCB0:Pointer
 00492A26    cmp         dword ptr ds:[55DCB8],0;gvar_0055DCB8:HMODULE
 00492A2D    seta        byte ptr [ebp-1]
 00492A31    xor         eax,eax
 00492A33    pop         edx
 00492A34    pop         ecx
 00492A35    pop         ecx
 00492A36    mov         dword ptr fs:[eax],edx
 00492A39    push        492A50
 00492A3E    mov         eax,[0055DCC0];gvar_0055DCC0:TCriticalSection
 00492A43    call        004923F4
 00492A48    ret
>00492A49    jmp         @HandleFinally
>00492A4E    jmp         00492A3E
 00492A50    mov         al,byte ptr [ebp-1]
 00492A53    pop         ecx
 00492A54    pop         ebp
 00492A55    ret
end;*}

//00492DF8
{*function sub_00492DF8:?;
begin
 00492DF8    push        ebp
 00492DF9    mov         ebp,esp
 00492DFB    push        ecx
 00492DFC    cmp         dword ptr ds:[55DCB8],0;gvar_0055DCB8:HMODULE
>00492E03    jbe         00492E24
 00492E05    call        dword ptr ds:[55DC8C]
 00492E0B    test        eax,eax
>00492E0D    je          00492E19
 00492E0F    call        dword ptr ds:[55DC88]
 00492E15    test        eax,eax
>00492E17    jne         00492E1D
 00492E19    xor         eax,eax
>00492E1B    jmp         00492E1F
 00492E1D    mov         al,1
 00492E1F    mov         byte ptr [ebp-1],al
>00492E22    jmp         00492E28
 00492E24    mov         byte ptr [ebp-1],0
 00492E28    mov         al,byte ptr [ebp-1]
 00492E2B    pop         ecx
 00492E2C    pop         ebp
 00492E2D    ret
end;*}

Initialization
//00492E84
{*
 00492E84    push        ebp
 00492E85    mov         ebp,esp
 00492E87    sub         dword ptr ds:[55DCB4],1
>00492E8E    jae         00492EA1
 00492E90    mov         dl,1
 00492E92    mov         eax,[0049211C];TCriticalSection
 00492E97    call        TCriticalSection.Create;TCriticalSection.Create
 00492E9C    mov         [0055DCC0],eax;gvar_0055DCC0:TCriticalSection
 00492EA1    pop         ebp
 00492EA2    ret
*}
Finalization
//00492E30
{*
 00492E30    push        ebp
 00492E31    mov         ebp,esp
 00492E33    xor         eax,eax
 00492E35    push        ebp
 00492E36    push        492E78
 00492E3B    push        dword ptr fs:[eax]
 00492E3E    mov         dword ptr fs:[eax],esp
 00492E41    inc         dword ptr ds:[55DCB4]
>00492E47    jne         00492E6A
 00492E49    cmp         dword ptr ds:[55DCBC],0;gvar_0055DCBC
>00492E50    jle         00492E60
 00492E52    call        00492440
 00492E57    cmp         dword ptr ds:[55DCBC],0;gvar_0055DCBC
>00492E5E    jg          00492E52
 00492E60    mov         eax,[0055DCC0];gvar_0055DCC0:TCriticalSection
 00492E65    call        TObject.Free
 00492E6A    xor         eax,eax
 00492E6C    pop         edx
 00492E6D    pop         ecx
 00492E6E    pop         ecx
 00492E6F    mov         dword ptr fs:[eax],edx
 00492E72    push        492E7F
 00492E77    ret
>00492E78    jmp         @HandleFinally
>00492E7D    jmp         00492E77
 00492E7F    pop         ebp
 00492E80    ret
*}
end.