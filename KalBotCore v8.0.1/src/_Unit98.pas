//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit98;

interface

uses
  SysUtils, Classes;

    //procedure sub_00522380(?:Pointer; ?:?);//00522380

implementation

//00522380
{*procedure sub_00522380(?:Pointer; ?:?);
begin
 00522380    push        ebp
 00522381    mov         ebp,esp
 00522383    add         esp,0FFFFFFF4
 00522386    mov         dword ptr [ebp-8],edx
 00522389    mov         dword ptr [ebp-4],eax
 0052238C    mov         eax,dword ptr [ebp-4]
 0052238F    mov         dword ptr [ebp-0C],eax
 00522392    mov         eax,dword ptr [ebp-8]
 00522395    call        0051F398
 0052239A    mov         edx,dword ptr [ebp-0C]
 0052239D    mov         word ptr [edx],ax
 005223A0    mov         eax,dword ptr [ebp-8]
 005223A3    call        0051F3CC
 005223A8    mov         edx,dword ptr [ebp-0C]
 005223AB    mov         dword ptr [edx+4],eax
 005223AE    mov         eax,dword ptr [ebp-8]
 005223B1    call        0051F338
 005223B6    mov         edx,dword ptr [ebp-0C]
 005223B9    mov         byte ptr [edx+8],al
 005223BC    mov         eax,dword ptr [ebp-8]
 005223BF    call        0051F3CC
 005223C4    mov         edx,dword ptr [ebp-0C]
 005223C7    mov         dword ptr [edx+0C],eax
 005223CA    mov         eax,dword ptr [ebp-8]
 005223CD    call        0051F3CC
 005223D2    mov         edx,dword ptr [ebp-0C]
 005223D5    mov         dword ptr [edx+10],eax
 005223D8    mov         eax,dword ptr [ebp-8]
 005223DB    call        0051F338
 005223E0    mov         edx,dword ptr [ebp-0C]
 005223E3    mov         byte ptr [edx+14],al
 005223E6    mov         eax,dword ptr [ebp-8]
 005223E9    call        0051F338
 005223EE    mov         edx,dword ptr [ebp-0C]
 005223F1    mov         byte ptr [edx+15],al
 005223F4    mov         eax,dword ptr [ebp-8]
 005223F7    call        0051F338
 005223FC    mov         edx,dword ptr [ebp-0C]
 005223FF    mov         byte ptr [edx+16],al
 00522402    mov         eax,dword ptr [ebp-8]
 00522405    call        0051F338
 0052240A    mov         edx,dword ptr [ebp-0C]
 0052240D    mov         byte ptr [edx+17],al
 00522410    mov         eax,dword ptr [ebp-8]
 00522413    call        0051F338
 00522418    mov         edx,dword ptr [ebp-0C]
 0052241B    mov         byte ptr [edx+18],al
 0052241E    mov         eax,dword ptr [ebp-8]
 00522421    call        0051F338
 00522426    mov         edx,dword ptr [ebp-0C]
 00522429    mov         byte ptr [edx+19],al
 0052242C    mov         eax,dword ptr [ebp-8]
 0052242F    call        0051F338
 00522434    mov         edx,dword ptr [ebp-0C]
 00522437    mov         byte ptr [edx+1A],al
 0052243A    mov         eax,dword ptr [ebp-8]
 0052243D    call        0051F338
 00522442    mov         edx,dword ptr [ebp-0C]
 00522445    mov         byte ptr [edx+1B],al
 00522448    mov         eax,dword ptr [ebp-8]
 0052244B    call        0051F398
 00522450    mov         edx,dword ptr [ebp-0C]
 00522453    mov         word ptr [edx+1C],ax
 00522457    mov         eax,dword ptr [ebp-8]
 0052245A    call        0051F338
 0052245F    mov         edx,dword ptr [ebp-0C]
 00522462    mov         byte ptr [edx+1E],al
 00522465    mov         eax,dword ptr [ebp-8]
 00522468    call        0051F3CC
 0052246D    mov         edx,dword ptr [ebp-0C]
 00522470    mov         byte ptr [edx+1F],al
 00522473    mov         eax,dword ptr [ebp-8]
 00522476    call        0051F3CC
 0052247B    mov         edx,dword ptr [ebp-0C]
 0052247E    mov         dword ptr [edx+20],eax
 00522481    mov         eax,dword ptr [ebp-8]
 00522484    call        0051F338
 00522489    mov         edx,dword ptr [ebp-0C]
 0052248C    mov         byte ptr [edx+24],al
 0052248F    mov         eax,dword ptr [ebp-8]
 00522492    call        0051F398
 00522497    mov         edx,dword ptr [ebp-0C]
 0052249A    mov         word ptr [edx+26],ax
 0052249E    mov         eax,dword ptr [ebp-8]
 005224A1    call        0051F398
 005224A6    mov         edx,dword ptr [ebp-0C]
 005224A9    mov         word ptr [edx+28],ax
 005224AD    mov         eax,dword ptr [ebp-8]
 005224B0    call        0051F338
 005224B5    mov         edx,dword ptr [ebp-0C]
 005224B8    mov         byte ptr [edx+2A],al
 005224BB    mov         eax,dword ptr [ebp-8]
 005224BE    call        0051F338
 005224C3    mov         edx,dword ptr [ebp-0C]
 005224C6    mov         byte ptr [edx+2B],al
 005224C9    mov         eax,dword ptr [ebp-8]
 005224CC    call        0051F338
 005224D1    mov         edx,dword ptr [ebp-0C]
 005224D4    mov         byte ptr [edx+2C],al
 005224D7    mov         eax,dword ptr [ebp-8]
 005224DA    call        0051F338
 005224DF    mov         edx,dword ptr [ebp-0C]
 005224E2    mov         byte ptr [edx+2D],al
 005224E5    mov         eax,dword ptr [ebp-8]
 005224E8    call        0051F338
 005224ED    mov         edx,dword ptr [ebp-0C]
 005224F0    mov         byte ptr [edx+2E],al
 005224F3    mov         eax,dword ptr [ebp-8]
 005224F6    call        0051F338
 005224FB    mov         edx,dword ptr [ebp-0C]
 005224FE    mov         byte ptr [edx+2F],al
 00522501    mov         eax,dword ptr [ebp-8]
 00522504    call        0051F338
 00522509    mov         edx,dword ptr [ebp-0C]
 0052250C    mov         byte ptr [edx+30],al
 0052250F    mov         eax,dword ptr [ebp-8]
 00522512    call        0051F338
 00522517    mov         edx,dword ptr [ebp-0C]
 0052251A    mov         byte ptr [edx+31],al
 0052251D    mov         eax,dword ptr [ebp-8]
 00522520    call        0051F338
 00522525    mov         edx,dword ptr [ebp-0C]
 00522528    mov         byte ptr [edx+32],al
 0052252B    mov         eax,dword ptr [ebp-8]
 0052252E    call        0051F338
 00522533    mov         edx,dword ptr [ebp-0C]
 00522536    mov         byte ptr [edx+33],al
 00522539    mov         eax,dword ptr [ebp-8]
 0052253C    call        0051F338
 00522541    mov         edx,dword ptr [ebp-0C]
 00522544    mov         byte ptr [edx+34],al
 00522547    mov         eax,dword ptr [ebp-8]
 0052254A    call        0051F338
 0052254F    mov         edx,dword ptr [ebp-0C]
 00522552    mov         byte ptr [edx+35],al
 00522555    mov         eax,dword ptr [ebp-8]
 00522558    call        0051F338
 0052255D    mov         edx,dword ptr [ebp-0C]
 00522560    mov         byte ptr [edx+36],al
 00522563    mov         eax,dword ptr [ebp-8]
 00522566    mov         edx,4
 0052256B    call        0051F5E4
 00522570    mov         esp,ebp
 00522572    pop         ebp
 00522573    ret
end;*}

end.