//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit134;

interface

uses
  SysUtils, Classes;

type
  _DynArr_134_2 = array of ?;
//elSize = 8;
  TMiniMapManager = class(TObject)
  public
    f3A38:.2;//f3A38
    //constructor Create(?:?);//0052D8A4
  end;
  ENilBitmap = class(Exception)
  end;
    //procedure sub_0052D970(?:?; ?:?; ?:?; ?:?; ?:?);//0052D970
    //function sub_0052DCEC(?:?; ?:?; ?:?; ?:?):?;//0052DCEC
    //function sub_0052DE74(?:?; ?:?; ?:?):?;//0052DE74
    //procedure sub_0052DF50(?:TMiniMapManager; ?:?; ?:?; ?:?; ?:?);//0052DF50
    //procedure sub_0052E250(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0052E250
    //procedure sub_0052E2E4(?:TMiniMapManager; ?:?; ?:?; ?:?; ?:?);//0052E2E4
    //function sub_0052E5C0(?:?; ?:TBitmap; ?:?):?;//0052E5C0
    //function sub_0052E72C(?:?; ?:?):?;//0052E72C
    //function sub_0052E760(?:?; ?:?):?;//0052E760
    //function sub_0052E788(?:?; ?:?):?;//0052E788
    //function sub_0052E7B4(?:?; ?:?):?;//0052E7B4
    //function sub_0052E7DC(?:?; ?:?; ?:?; ?:?):?;//0052E7DC

implementation

//0052D8A4
{*constructor TMiniMapManager.Create(?:?);
begin
 0052D8A4    push        ebp
 0052D8A5    mov         ebp,esp
 0052D8A7    add         esp,0FFFFFFF4
 0052D8AA    test        dl,dl
>0052D8AC    je          0052D8B6
 0052D8AE    add         esp,0FFFFFFF0
 0052D8B1    call        @ClassCreate
 0052D8B6    mov         dword ptr [ebp-0C],ecx
 0052D8B9    mov         byte ptr [ebp-5],dl
 0052D8BC    mov         dword ptr [ebp-4],eax
 0052D8BF    mov         eax,dword ptr [ebp-4]
 0052D8C2    mov         edx,dword ptr [ebp-0C]
 0052D8C5    mov         dword ptr [eax+3A3C],edx
 0052D8CB    mov         eax,dword ptr [ebp-4]
 0052D8CE    mov         edx,dword ptr [ebp+8]
 0052D8D1    mov         dword ptr [eax+10],edx
 0052D8D4    mov         dl,1
 0052D8D6    mov         eax,[00476368];TMemoryStream
 0052D8DB    call        TObject.Create;TMemoryStream.Create
 0052D8E0    mov         edx,dword ptr [ebp-4]
 0052D8E3    mov         dword ptr [edx+4],eax
 0052D8E6    mov         eax,[0055B4B0];^gvar_00554B5C
 0052D8EB    push        eax
 0052D8EC    mov         ecx,dword ptr ds:[55B140];^gvar_0054E75C
 0052D8F2    mov         dl,1
 0052D8F4    mov         eax,[0052CCC8];TSwordCrypt
 0052D8F9    call        TSwordCrypt.Create;TSwordCrypt.Create
 0052D8FE    mov         edx,dword ptr [ebp-4]
 0052D901    mov         dword ptr [edx+8],eax
 0052D904    mov         eax,dword ptr [ebp-4]
 0052D907    mov         eax,dword ptr [eax+8]
 0052D90A    mov         edx,4
 0052D90F    call        0052CE28
 0052D914    push        0
 0052D916    push        0
 0052D918    push        0
 0052D91A    mov         ecx,1
 0052D91F    mov         dl,1
 0052D921    mov         eax,[0052D054];TFreeWinBitmap
 0052D926    call        TFreeWinBitmap.Create;TFreeWinBitmap.Create
 0052D92B    mov         edx,dword ptr [ebp-4]
 0052D92E    mov         dword ptr [edx+0C],eax
 0052D931    push        0
 0052D933    mov         eax,dword ptr [ebp-4]
 0052D936    add         eax,3A38
 0052D93B    mov         ecx,1
 0052D940    mov         edx,dword ptr ds:[52D7BC];_DynArr_134_2
 0052D946    call        @DynArraySetLength
 0052D94B    add         esp,4
 0052D94E    mov         eax,dword ptr [ebp-4]
 0052D951    cmp         byte ptr [ebp-5],0
>0052D955    je          0052D966
 0052D957    call        @AfterConstruction
 0052D95C    pop         dword ptr fs:[0]
 0052D963    add         esp,0C
 0052D966    mov         eax,dword ptr [ebp-4]
 0052D969    mov         esp,ebp
 0052D96B    pop         ebp
 0052D96C    ret         4
end;*}

//0052D970
{*procedure sub_0052D970(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0052D970    push        ebp
 0052D971    mov         ebp,esp
 0052D973    add         esp,0FFFFFFD0
 0052D976    push        ebx
 0052D977    xor         ebx,ebx
 0052D979    mov         dword ptr [ebp-30],ebx
 0052D97C    mov         dword ptr [ebp-2C],ebx
 0052D97F    mov         dword ptr [ebp-28],ebx
 0052D982    mov         dword ptr [ebp-24],ebx
 0052D985    mov         dword ptr [ebp-10],ebx
 0052D988    mov         byte ptr [ebp-6],cl
 0052D98B    mov         byte ptr [ebp-5],dl
 0052D98E    mov         dword ptr [ebp-4],eax
 0052D991    xor         eax,eax
 0052D993    push        ebp
 0052D994    push        52DBA2
 0052D999    push        dword ptr fs:[eax]
 0052D99C    mov         dword ptr fs:[eax],esp
 0052D99F    cmp         byte ptr [ebp-5],0
>0052D9A3    jne         0052D9EB
 0052D9A5    mov         eax,dword ptr [ebp+8]
 0052D9A8    push        eax
 0052D9A9    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0052D9AE    mov         eax,dword ptr [eax]
 0052D9B0    mov         edx,dword ptr [eax+0C]
 0052D9B3    lea         eax,[ebp-10]
 0052D9B6    mov         ecx,52DBB8;'e\minimap_n_e_%.3u_%.3u.gtx'
 0052D9BB    call        @LStrCat3
 0052D9C0    mov         eax,dword ptr [ebp-10]
 0052D9C3    movsx       edx,byte ptr [ebp-6]
 0052D9C7    mov         dword ptr [ebp-20],edx
 0052D9CA    mov         byte ptr [ebp-1C],0
 0052D9CE    movsx       edx,byte ptr [ebp+0C]
 0052D9D2    mov         dword ptr [ebp-18],edx
 0052D9D5    mov         byte ptr [ebp-14],0
 0052D9D9    lea         edx,[ebp-20]
 0052D9DC    mov         ecx,1
 0052D9E1    call        Format
>0052D9E6    jmp         0052DB7F
 0052D9EB    mov         al,byte ptr [ebp+0C]
 0052D9EE    push        eax
 0052D9EF    mov         eax,dword ptr [ebp-4]
 0052D9F2    mov         eax,dword ptr [eax+10]
 0052D9F5    mov         eax,dword ptr [eax+14]
 0052D9F8    mov         cl,byte ptr [ebp-6]
 0052D9FB    mov         dl,byte ptr [ebp-5]
 0052D9FE    call        00525604
 0052DA03    mov         dword ptr [ebp-0C],eax
 0052DA06    cmp         dword ptr [ebp-0C],0
>0052DA0A    je          0052DB72
 0052DA10    mov         eax,dword ptr [ebp-0C]
 0052DA13    mov         al,byte ptr [eax+30]
 0052DA16    sub         byte ptr [ebp-6],al
 0052DA19    mov         eax,dword ptr [ebp-0C]
 0052DA1C    mov         al,byte ptr [eax+34]
 0052DA1F    sub         byte ptr [ebp+0C],al
 0052DA22    cmp         byte ptr [ebp-6],0
>0052DA26    jne         0052DA78
 0052DA28    cmp         byte ptr [ebp+0C],0
>0052DA2C    jne         0052DA78
 0052DA2E    mov         eax,dword ptr [ebp+8]
 0052DA31    push        eax
 0052DA32    mov         eax,dword ptr [ebp-0C]
 0052DA35    mov         eax,dword ptr [eax+38]
 0052DA38    mov         dword ptr [ebp-20],eax
 0052DA3B    mov         byte ptr [ebp-1C],0B
 0052DA3F    mov         dword ptr [ebp-18],2
 0052DA46    mov         byte ptr [ebp-14],0
 0052DA4A    lea         eax,[ebp-20]
 0052DA4D    push        eax
 0052DA4E    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0052DA53    mov         eax,dword ptr [eax]
 0052DA55    mov         edx,dword ptr [eax+0C]
 0052DA58    lea         eax,[ebp-24]
 0052DA5B    mov         ecx,52DBDC;'minimap_Dungeon_%s_%.3u.gtx'
 0052DA60    call        @LStrCat3
 0052DA65    mov         eax,dword ptr [ebp-24]
 0052DA68    mov         ecx,1
 0052DA6D    pop         edx
 0052DA6E    call        Format
>0052DA73    jmp         0052DB7F
 0052DA78    cmp         byte ptr [ebp-6],0
>0052DA7C    jne         0052DACC
 0052DA7E    cmp         byte ptr [ebp+0C],1
>0052DA82    jne         0052DACC
 0052DA84    mov         eax,dword ptr [ebp+8]
 0052DA87    push        eax
 0052DA88    mov         eax,dword ptr [ebp-0C]
 0052DA8B    mov         eax,dword ptr [eax+38]
 0052DA8E    mov         dword ptr [ebp-20],eax
 0052DA91    mov         byte ptr [ebp-1C],0B
 0052DA95    xor         eax,eax
 0052DA97    mov         dword ptr [ebp-18],eax
 0052DA9A    mov         byte ptr [ebp-14],0
 0052DA9E    lea         eax,[ebp-20]
 0052DAA1    push        eax
 0052DAA2    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0052DAA7    mov         eax,dword ptr [eax]
 0052DAA9    mov         edx,dword ptr [eax+0C]
 0052DAAC    lea         eax,[ebp-28]
 0052DAAF    mov         ecx,52DBDC;'minimap_Dungeon_%s_%.3u.gtx'
 0052DAB4    call        @LStrCat3
 0052DAB9    mov         eax,dword ptr [ebp-28]
 0052DABC    mov         ecx,1
 0052DAC1    pop         edx
 0052DAC2    call        Format
>0052DAC7    jmp         0052DB7F
 0052DACC    cmp         byte ptr [ebp-6],1
>0052DAD0    jne         0052DB1F
 0052DAD2    cmp         byte ptr [ebp+0C],0
>0052DAD6    jne         0052DB1F
 0052DAD8    mov         eax,dword ptr [ebp+8]
 0052DADB    push        eax
 0052DADC    mov         eax,dword ptr [ebp-0C]
 0052DADF    mov         eax,dword ptr [eax+38]
 0052DAE2    mov         dword ptr [ebp-20],eax
 0052DAE5    mov         byte ptr [ebp-1C],0B
 0052DAE9    mov         dword ptr [ebp-18],3
 0052DAF0    mov         byte ptr [ebp-14],0
 0052DAF4    lea         eax,[ebp-20]
 0052DAF7    push        eax
 0052DAF8    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0052DAFD    mov         eax,dword ptr [eax]
 0052DAFF    mov         edx,dword ptr [eax+0C]
 0052DB02    lea         eax,[ebp-2C]
 0052DB05    mov         ecx,52DBDC;'minimap_Dungeon_%s_%.3u.gtx'
 0052DB0A    call        @LStrCat3
 0052DB0F    mov         eax,dword ptr [ebp-2C]
 0052DB12    mov         ecx,1
 0052DB17    pop         edx
 0052DB18    call        Format
>0052DB1D    jmp         0052DB7F
 0052DB1F    cmp         byte ptr [ebp-6],1
>0052DB23    jne         0052DB7F
 0052DB25    cmp         byte ptr [ebp+0C],1
>0052DB29    jne         0052DB7F
 0052DB2B    mov         eax,dword ptr [ebp+8]
 0052DB2E    push        eax
 0052DB2F    mov         eax,dword ptr [ebp-0C]
 0052DB32    mov         eax,dword ptr [eax+38]
 0052DB35    mov         dword ptr [ebp-20],eax
 0052DB38    mov         byte ptr [ebp-1C],0B
 0052DB3C    mov         dword ptr [ebp-18],1
 0052DB43    mov         byte ptr [ebp-14],0
 0052DB47    lea         eax,[ebp-20]
 0052DB4A    push        eax
 0052DB4B    mov         eax,[0055B708];^gvar_0055E044:TConfig
 0052DB50    mov         eax,dword ptr [eax]
 0052DB52    mov         edx,dword ptr [eax+0C]
 0052DB55    lea         eax,[ebp-30]
 0052DB58    mov         ecx,52DBDC;'minimap_Dungeon_%s_%.3u.gtx'
 0052DB5D    call        @LStrCat3
 0052DB62    mov         eax,dword ptr [ebp-30]
 0052DB65    mov         ecx,1
 0052DB6A    pop         edx
 0052DB6B    call        Format
>0052DB70    jmp         0052DB7F
 0052DB72    mov         eax,dword ptr [ebp+8]
 0052DB75    mov         edx,52DC00;'no_map'
 0052DB7A    call        @LStrAsg
 0052DB7F    xor         eax,eax
 0052DB81    pop         edx
 0052DB82    pop         ecx
 0052DB83    pop         ecx
 0052DB84    mov         dword ptr fs:[eax],edx
 0052DB87    push        52DBA9
 0052DB8C    lea         eax,[ebp-30]
 0052DB8F    mov         edx,4
 0052DB94    call        @LStrArrayClr
 0052DB99    lea         eax,[ebp-10]
 0052DB9C    call        @LStrClr
 0052DBA1    ret
>0052DBA2    jmp         @HandleFinally
>0052DBA7    jmp         0052DB8C
 0052DBA9    pop         ebx
 0052DBAA    mov         esp,ebp
 0052DBAC    pop         ebp
 0052DBAD    ret         8
end;*}

//0052DCEC
{*function sub_0052DCEC(?:?; ?:?; ?:?; ?:?):?;
begin
 0052DCEC    push        ebp
 0052DCED    mov         ebp,esp
 0052DCEF    add         esp,0FFFFFFE0
 0052DCF2    push        ebx
 0052DCF3    xor         ebx,ebx
 0052DCF5    mov         dword ptr [ebp-20],ebx
 0052DCF8    mov         dword ptr [ebp-0C],ecx
 0052DCFB    mov         byte ptr [ebp-5],dl
 0052DCFE    mov         dword ptr [ebp-4],eax
 0052DD01    xor         eax,eax
 0052DD03    push        ebp
 0052DD04    push        52DE61
 0052DD09    push        dword ptr fs:[eax]
 0052DD0C    mov         dword ptr fs:[eax],esp
 0052DD0F    xor         eax,eax
 0052DD11    mov         dword ptr [ebp-10],eax
 0052DD14    cmp         dword ptr [ebp-0C],0
>0052DD18    jl          0052DE4B
 0052DD1E    cmp         dword ptr [ebp+8],0
>0052DD22    jl          0052DE4B
 0052DD28    mov         eax,dword ptr [ebp+8]
 0052DD2B    push        eax
 0052DD2C    mov         ecx,dword ptr [ebp-0C]
 0052DD2F    mov         dl,byte ptr [ebp-5]
 0052DD32    mov         eax,dword ptr [ebp-4]
 0052DD35    call        0052E7DC
 0052DD3A    mov         dword ptr [ebp-14],eax
 0052DD3D    cmp         dword ptr [ebp-14],0
>0052DD41    jne         0052DE45
 0052DD47    mov         al,byte ptr [ebp+8]
 0052DD4A    push        eax
 0052DD4B    mov         cl,byte ptr [ebp-0C]
 0052DD4E    mov         eax,dword ptr [ebp-4]
 0052DD51    mov         eax,dword ptr [eax+10]
 0052DD54    mov         eax,dword ptr [eax+14]
 0052DD57    mov         dl,byte ptr [ebp-5]
 0052DD5A    call        00525604
 0052DD5F    mov         dword ptr [ebp-18],eax
 0052DD62    cmp         dword ptr [ebp-18],0
>0052DD66    je          0052DE4B
 0052DD6C    mov         dl,1
 0052DD6E    mov         eax,[00485C6C];TBitmap
 0052DD73    call        TBitmap.Create;TBitmap.Create
 0052DD78    mov         dword ptr [ebp-14],eax
 0052DD7B    mov         al,byte ptr [ebp+8]
 0052DD7E    push        eax
 0052DD7F    lea         eax,[ebp-20]
 0052DD82    push        eax
 0052DD83    mov         cl,byte ptr [ebp-0C]
 0052DD86    mov         dl,byte ptr [ebp-5]
 0052DD89    mov         eax,dword ptr [ebp-4]
 0052DD8C    call        0052D970
 0052DD91    mov         ecx,dword ptr [ebp-20]
 0052DD94    mov         edx,dword ptr [ebp-14]
 0052DD97    mov         eax,dword ptr [ebp-4]
 0052DD9A    call        0052E5C0
 0052DD9F    test        al,al
>0052DDA1    je          0052DE36
 0052DDA7    mov         eax,dword ptr [ebp-4]
 0052DDAA    mov         eax,dword ptr [eax+3A38]
 0052DDB0    call        @LStrLen
 0052DDB5    inc         eax
 0052DDB6    push        eax
 0052DDB7    mov         eax,dword ptr [ebp-4]
 0052DDBA    add         eax,3A38
 0052DDBF    mov         ecx,1
 0052DDC4    mov         edx,dword ptr ds:[52D7BC];_DynArr_134_2
 0052DDCA    call        @DynArraySetLength
 0052DDCF    add         esp,4
 0052DDD2    mov         eax,dword ptr [ebp-4]
 0052DDD5    mov         eax,dword ptr [eax+3A38]
 0052DDDB    call        00405CE8
 0052DDE0    mov         dword ptr [ebp-1C],eax
 0052DDE3    mov         eax,dword ptr [ebp-4]
 0052DDE6    mov         eax,dword ptr [eax+3A38]
 0052DDEC    mov         edx,dword ptr [ebp-1C]
 0052DDEF    mov         cl,byte ptr [ebp-5]
 0052DDF2    mov         byte ptr [eax+edx*8],cl
 0052DDF5    mov         eax,dword ptr [ebp-4]
 0052DDF8    mov         eax,dword ptr [eax+3A38]
 0052DDFE    mov         edx,dword ptr [ebp-1C]
 0052DE01    mov         cl,byte ptr [ebp-0C]
 0052DE04    mov         byte ptr [eax+edx*8+1],cl
 0052DE08    mov         eax,dword ptr [ebp-4]
 0052DE0B    mov         eax,dword ptr [eax+3A38]
 0052DE11    mov         edx,dword ptr [ebp-1C]
 0052DE14    mov         cl,byte ptr [ebp+8]
 0052DE17    mov         byte ptr [eax+edx*8+2],cl
 0052DE1B    mov         eax,dword ptr [ebp-4]
 0052DE1E    mov         eax,dword ptr [eax+3A38]
 0052DE24    mov         edx,dword ptr [ebp-1C]
 0052DE27    mov         ecx,dword ptr [ebp-14]
 0052DE2A    mov         dword ptr [eax+edx*8+4],ecx
 0052DE2E    mov         eax,dword ptr [ebp-14]
 0052DE31    mov         dword ptr [ebp-10],eax
>0052DE34    jmp         0052DE4B
 0052DE36    mov         eax,dword ptr [ebp-14]
 0052DE39    call        TObject.Free
 0052DE3E    xor         eax,eax
 0052DE40    mov         dword ptr [ebp-10],eax
>0052DE43    jmp         0052DE4B
 0052DE45    mov         eax,dword ptr [ebp-14]
 0052DE48    mov         dword ptr [ebp-10],eax
 0052DE4B    xor         eax,eax
 0052DE4D    pop         edx
 0052DE4E    pop         ecx
 0052DE4F    pop         ecx
 0052DE50    mov         dword ptr fs:[eax],edx
 0052DE53    push        52DE68
 0052DE58    lea         eax,[ebp-20]
 0052DE5B    call        @LStrClr
 0052DE60    ret
>0052DE61    jmp         @HandleFinally
>0052DE66    jmp         0052DE58
 0052DE68    mov         eax,dword ptr [ebp-10]
 0052DE6B    pop         ebx
 0052DE6C    mov         esp,ebp
 0052DE6E    pop         ebp
 0052DE6F    ret         4
end;*}

//0052DE74
{*function sub_0052DE74(?:?; ?:?; ?:?):?;
begin
 0052DE74    push        ebp
 0052DE75    mov         ebp,esp
 0052DE77    add         esp,0FFFFFFEC
 0052DE7A    push        ebx
 0052DE7B    xor         ebx,ebx
 0052DE7D    mov         dword ptr [ebp-14],ebx
 0052DE80    mov         byte ptr [ebp-6],cl
 0052DE83    mov         byte ptr [ebp-5],dl
 0052DE86    mov         dword ptr [ebp-4],eax
 0052DE89    xor         eax,eax
 0052DE8B    push        ebp
 0052DE8C    push        52DF3E
 0052DE91    push        dword ptr fs:[eax]
 0052DE94    mov         dword ptr fs:[eax],esp
 0052DE97    xor         eax,eax
 0052DE99    mov         al,byte ptr [ebp-6]
 0052DE9C    xor         edx,edx
 0052DE9E    mov         dl,byte ptr [ebp-5]
 0052DEA1    imul        edx,edx,3D
 0052DEA4    mov         ecx,dword ptr [ebp-4]
 0052DEA7    lea         edx,[ecx+edx*4]
 0052DEAA    mov         eax,dword ptr [edx+eax*4-99C]
 0052DEB1    mov         dword ptr [ebp-10],eax
 0052DEB4    mov         eax,dword ptr [ebp-10]
 0052DEB7    mov         dword ptr [ebp-0C],eax
 0052DEBA    cmp         dword ptr [ebp-10],0
>0052DEBE    jne         0052DF28
 0052DEC0    mov         dl,1
 0052DEC2    mov         eax,[00485C6C];TBitmap
 0052DEC7    call        TBitmap.Create;TBitmap.Create
 0052DECC    mov         dword ptr [ebp-10],eax
 0052DECF    mov         al,byte ptr [ebp-6]
 0052DED2    push        eax
 0052DED3    lea         eax,[ebp-14]
 0052DED6    push        eax
 0052DED7    mov         cl,byte ptr [ebp-5]
 0052DEDA    xor         edx,edx
 0052DEDC    mov         eax,dword ptr [ebp-4]
 0052DEDF    call        0052D970
 0052DEE4    mov         ecx,dword ptr [ebp-14]
 0052DEE7    mov         edx,dword ptr [ebp-10]
 0052DEEA    mov         eax,dword ptr [ebp-4]
 0052DEED    call        0052E5C0
 0052DEF2    test        al,al
>0052DEF4    je          0052DF1B
 0052DEF6    xor         eax,eax
 0052DEF8    mov         al,byte ptr [ebp-6]
 0052DEFB    xor         edx,edx
 0052DEFD    mov         dl,byte ptr [ebp-5]
 0052DF00    imul        edx,edx,3D
 0052DF03    mov         ecx,dword ptr [ebp-4]
 0052DF06    lea         edx,[ecx+edx*4]
 0052DF09    mov         ecx,dword ptr [ebp-10]
 0052DF0C    mov         dword ptr [edx+eax*4-99C],ecx
 0052DF13    mov         eax,dword ptr [ebp-10]
 0052DF16    mov         dword ptr [ebp-0C],eax
>0052DF19    jmp         0052DF28
 0052DF1B    mov         eax,dword ptr [ebp-10]
 0052DF1E    call        TObject.Free
 0052DF23    xor         eax,eax
 0052DF25    mov         dword ptr [ebp-0C],eax
 0052DF28    xor         eax,eax
 0052DF2A    pop         edx
 0052DF2B    pop         ecx
 0052DF2C    pop         ecx
 0052DF2D    mov         dword ptr fs:[eax],edx
 0052DF30    push        52DF45
 0052DF35    lea         eax,[ebp-14]
 0052DF38    call        @LStrClr
 0052DF3D    ret
>0052DF3E    jmp         @HandleFinally
>0052DF43    jmp         0052DF35
 0052DF45    mov         eax,dword ptr [ebp-0C]
 0052DF48    pop         ebx
 0052DF49    mov         esp,ebp
 0052DF4B    pop         ebp
 0052DF4C    ret
end;*}

//0052DF50
{*procedure sub_0052DF50(?:TMiniMapManager; ?:?; ?:?; ?:?; ?:?);
begin
 0052DF50    push        ebp
 0052DF51    mov         ebp,esp
 0052DF53    add         esp,0FFFFFFB0
 0052DF56    push        esi
 0052DF57    push        edi
 0052DF58    mov         dword ptr [ebp-0C],ecx
 0052DF5B    mov         byte ptr [ebp-5],dl
 0052DF5E    mov         dword ptr [ebp-4],eax
 0052DF61    push        0FF
 0052DF66    lea         eax,[ebp-40]
 0052DF69    push        eax
 0052DF6A    mov         ecx,0FF
 0052DF6F    xor         edx,edx
 0052DF71    xor         eax,eax
 0052DF73    call        Rect
 0052DF78    movzx       eax,word ptr [ebp+8]
 0052DF7C    push        eax
 0052DF7D    mov         eax,100
 0052DF82    pop         edx
 0052DF83    mov         ecx,edx
 0052DF85    xor         edx,edx
 0052DF87    div         eax,ecx
 0052DF89    mov         dword ptr [ebp-10],eax
 0052DF8C    mov         eax,dword ptr [ebp-10]
 0052DF8F    shl         eax,5
 0052DF92    sar         eax,1
>0052DF94    jns         0052DF99
 0052DF96    adc         eax,0
 0052DF99    sub         dword ptr [ebp-0C],eax
 0052DF9C    mov         eax,dword ptr [ebp-10]
 0052DF9F    shl         eax,5
 0052DFA2    sar         eax,1
>0052DFA4    jns         0052DFA9
 0052DFA6    adc         eax,0
 0052DFA9    add         dword ptr [ebp+0C],eax
 0052DFAC    mov         edx,dword ptr [ebp-0C]
 0052DFAF    mov         eax,dword ptr [ebp-4]
 0052DFB2    call        0052E72C
 0052DFB7    mov         dword ptr [ebp-20],eax
 0052DFBA    mov         edx,dword ptr [ebp-10]
 0052DFBD    shl         edx,5
 0052DFC0    add         edx,dword ptr [ebp-0C]
 0052DFC3    mov         eax,dword ptr [ebp-4]
 0052DFC6    call        0052E72C
 0052DFCB    mov         dword ptr [ebp-18],eax
 0052DFCE    mov         edx,dword ptr [ebp+0C]
 0052DFD1    mov         eax,dword ptr [ebp-4]
 0052DFD4    call        0052E72C
 0052DFD9    mov         dword ptr [ebp-1C],eax
 0052DFDC    mov         eax,dword ptr [ebp-10]
 0052DFDF    shl         eax,5
 0052DFE2    mov         edx,dword ptr [ebp+0C]
 0052DFE5    sub         edx,eax
 0052DFE7    mov         eax,dword ptr [ebp-4]
 0052DFEA    call        0052E72C
 0052DFEF    mov         dword ptr [ebp-14],eax
 0052DFF2    mov         edx,dword ptr [ebp-0C]
 0052DFF5    add         edx,14000
 0052DFFB    mov         eax,dword ptr [ebp-4]
 0052DFFE    call        0052E760
 0052E003    mov         dword ptr [ebp-50],eax
 0052E006    mov         eax,dword ptr [ebp-50]
 0052E009    add         eax,dword ptr [ebp-10]
 0052E00C    mov         dword ptr [ebp-48],eax
 0052E00F    mov         edx,dword ptr [ebp+0C]
 0052E012    add         edx,14000
 0052E018    mov         eax,dword ptr [ebp-4]
 0052E01B    call        0052E760
 0052E020    mov         edx,100
 0052E025    sub         edx,eax
 0052E027    mov         dword ptr [ebp-4C],edx
 0052E02A    mov         eax,dword ptr [ebp-4C]
 0052E02D    add         eax,dword ptr [ebp-10]
 0052E030    mov         dword ptr [ebp-44],eax
 0052E033    mov         eax,dword ptr [ebp-20]
 0052E036    cmp         eax,dword ptr [ebp-18]
>0052E039    jne         0052E0E0
 0052E03F    mov         eax,dword ptr [ebp-1C]
 0052E042    cmp         eax,dword ptr [ebp-14]
>0052E045    jne         0052E070
 0052E047    lea         esi,[ebp-50]
 0052E04A    lea         edi,[ebp-30]
 0052E04D    movs        dword ptr [edi],dword ptr [esi]
 0052E04E    movs        dword ptr [edi],dword ptr [esi]
 0052E04F    movs        dword ptr [edi],dword ptr [esi]
 0052E050    movs        dword ptr [edi],dword ptr [esi]
 0052E051    mov         eax,dword ptr [ebp-1C]
 0052E054    push        eax
 0052E055    lea         eax,[ebp-50]
 0052E058    push        eax
 0052E059    lea         eax,[ebp-40]
 0052E05C    push        eax
 0052E05D    mov         ecx,dword ptr [ebp-20]
 0052E060    mov         dl,byte ptr [ebp-5]
 0052E063    mov         eax,dword ptr [ebp-4]
 0052E066    call        0052E250
>0052E06B    jmp         0052E248
 0052E070    mov         eax,dword ptr [ebp-44]
 0052E073    push        eax
 0052E074    lea         eax,[ebp-30]
 0052E077    push        eax
 0052E078    mov         ecx,dword ptr [ebp-48]
 0052E07B    mov         edx,dword ptr [ebp-4C]
 0052E07E    mov         eax,dword ptr [ebp-50]
 0052E081    call        Rect
 0052E086    mov         eax,dword ptr [ebp-1C]
 0052E089    push        eax
 0052E08A    lea         eax,[ebp-30]
 0052E08D    push        eax
 0052E08E    lea         eax,[ebp-40]
 0052E091    push        eax
 0052E092    mov         ecx,dword ptr [ebp-20]
 0052E095    mov         dl,byte ptr [ebp-5]
 0052E098    mov         eax,dword ptr [ebp-4]
 0052E09B    call        0052E250
 0052E0A0    mov         eax,dword ptr [ebp-44]
 0052E0A3    sub         eax,0FF
 0052E0A8    push        eax
 0052E0A9    lea         eax,[ebp-30]
 0052E0AC    push        eax
 0052E0AD    mov         edx,dword ptr [ebp-4C]
 0052E0B0    sub         edx,0FF
 0052E0B6    mov         ecx,dword ptr [ebp-48]
 0052E0B9    mov         eax,dword ptr [ebp-50]
 0052E0BC    call        Rect
 0052E0C1    mov         eax,dword ptr [ebp-14]
 0052E0C4    push        eax
 0052E0C5    lea         eax,[ebp-30]
 0052E0C8    push        eax
 0052E0C9    lea         eax,[ebp-40]
 0052E0CC    push        eax
 0052E0CD    mov         ecx,dword ptr [ebp-20]
 0052E0D0    mov         dl,byte ptr [ebp-5]
 0052E0D3    mov         eax,dword ptr [ebp-4]
 0052E0D6    call        0052E250
>0052E0DB    jmp         0052E248
 0052E0E0    mov         eax,dword ptr [ebp-1C]
 0052E0E3    cmp         eax,dword ptr [ebp-14]
>0052E0E6    jne         0052E158
 0052E0E8    mov         eax,dword ptr [ebp-44]
 0052E0EB    push        eax
 0052E0EC    lea         eax,[ebp-30]
 0052E0EF    push        eax
 0052E0F0    mov         ecx,dword ptr [ebp-48]
 0052E0F3    mov         edx,dword ptr [ebp-4C]
 0052E0F6    mov         eax,dword ptr [ebp-50]
 0052E0F9    call        Rect
 0052E0FE    mov         eax,dword ptr [ebp-1C]
 0052E101    push        eax
 0052E102    lea         eax,[ebp-30]
 0052E105    push        eax
 0052E106    lea         eax,[ebp-40]
 0052E109    push        eax
 0052E10A    mov         ecx,dword ptr [ebp-20]
 0052E10D    mov         dl,byte ptr [ebp-5]
 0052E110    mov         eax,dword ptr [ebp-4]
 0052E113    call        0052E250
 0052E118    mov         eax,dword ptr [ebp-44]
 0052E11B    push        eax
 0052E11C    lea         eax,[ebp-30]
 0052E11F    push        eax
 0052E120    mov         ecx,dword ptr [ebp-48]
 0052E123    sub         ecx,0FF
 0052E129    mov         eax,dword ptr [ebp-50]
 0052E12C    sub         eax,0FF
 0052E131    mov         edx,dword ptr [ebp-4C]
 0052E134    call        Rect
 0052E139    mov         eax,dword ptr [ebp-1C]
 0052E13C    push        eax
 0052E13D    lea         eax,[ebp-30]
 0052E140    push        eax
 0052E141    lea         eax,[ebp-40]
 0052E144    push        eax
 0052E145    mov         ecx,dword ptr [ebp-18]
 0052E148    mov         dl,byte ptr [ebp-5]
 0052E14B    mov         eax,dword ptr [ebp-4]
 0052E14E    call        0052E250
>0052E153    jmp         0052E248
 0052E158    mov         eax,dword ptr [ebp-44]
 0052E15B    push        eax
 0052E15C    lea         eax,[ebp-30]
 0052E15F    push        eax
 0052E160    mov         ecx,dword ptr [ebp-48]
 0052E163    mov         edx,dword ptr [ebp-4C]
 0052E166    mov         eax,dword ptr [ebp-50]
 0052E169    call        Rect
 0052E16E    mov         eax,dword ptr [ebp-1C]
 0052E171    push        eax
 0052E172    lea         eax,[ebp-30]
 0052E175    push        eax
 0052E176    lea         eax,[ebp-40]
 0052E179    push        eax
 0052E17A    mov         ecx,dword ptr [ebp-20]
 0052E17D    mov         dl,byte ptr [ebp-5]
 0052E180    mov         eax,dword ptr [ebp-4]
 0052E183    call        0052E250
 0052E188    mov         eax,dword ptr [ebp-44]
 0052E18B    push        eax
 0052E18C    lea         eax,[ebp-30]
 0052E18F    push        eax
 0052E190    mov         ecx,dword ptr [ebp-48]
 0052E193    sub         ecx,0FF
 0052E199    mov         eax,dword ptr [ebp-50]
 0052E19C    sub         eax,0FF
 0052E1A1    mov         edx,dword ptr [ebp-4C]
 0052E1A4    call        Rect
 0052E1A9    mov         eax,dword ptr [ebp-1C]
 0052E1AC    push        eax
 0052E1AD    lea         eax,[ebp-30]
 0052E1B0    push        eax
 0052E1B1    lea         eax,[ebp-40]
 0052E1B4    push        eax
 0052E1B5    mov         ecx,dword ptr [ebp-20]
 0052E1B8    inc         ecx
 0052E1B9    mov         dl,byte ptr [ebp-5]
 0052E1BC    mov         eax,dword ptr [ebp-4]
 0052E1BF    call        0052E250
 0052E1C4    mov         eax,dword ptr [ebp-44]
 0052E1C7    sub         eax,0FF
 0052E1CC    push        eax
 0052E1CD    lea         eax,[ebp-30]
 0052E1D0    push        eax
 0052E1D1    mov         edx,dword ptr [ebp-4C]
 0052E1D4    sub         edx,0FF
 0052E1DA    mov         ecx,dword ptr [ebp-48]
 0052E1DD    mov         eax,dword ptr [ebp-50]
 0052E1E0    call        Rect
 0052E1E5    mov         eax,dword ptr [ebp-1C]
 0052E1E8    dec         eax
 0052E1E9    push        eax
 0052E1EA    lea         eax,[ebp-30]
 0052E1ED    push        eax
 0052E1EE    lea         eax,[ebp-40]
 0052E1F1    push        eax
 0052E1F2    mov         ecx,dword ptr [ebp-20]
 0052E1F5    mov         dl,byte ptr [ebp-5]
 0052E1F8    mov         eax,dword ptr [ebp-4]
 0052E1FB    call        0052E250
 0052E200    mov         eax,dword ptr [ebp-44]
 0052E203    sub         eax,0FF
 0052E208    push        eax
 0052E209    lea         eax,[ebp-30]
 0052E20C    push        eax
 0052E20D    mov         ecx,dword ptr [ebp-48]
 0052E210    sub         ecx,0FF
 0052E216    mov         edx,dword ptr [ebp-4C]
 0052E219    sub         edx,0FF
 0052E21F    mov         eax,dword ptr [ebp-50]
 0052E222    sub         eax,0FF
 0052E227    call        Rect
 0052E22C    mov         eax,dword ptr [ebp-1C]
 0052E22F    dec         eax
 0052E230    push        eax
 0052E231    lea         eax,[ebp-30]
 0052E234    push        eax
 0052E235    lea         eax,[ebp-40]
 0052E238    push        eax
 0052E239    mov         ecx,dword ptr [ebp-20]
 0052E23C    inc         ecx
 0052E23D    mov         dl,byte ptr [ebp-5]
 0052E240    mov         eax,dword ptr [ebp-4]
 0052E243    call        0052E250
 0052E248    pop         edi
 0052E249    pop         esi
 0052E24A    mov         esp,ebp
 0052E24C    pop         ebp
 0052E24D    ret         8
end;*}

//0052E250
{*procedure sub_0052E250(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0052E250    push        ebp
 0052E251    mov         ebp,esp
 0052E253    add         esp,0FFFFFFD0
 0052E256    push        esi
 0052E257    push        edi
 0052E258    mov         esi,dword ptr [ebp+8]
 0052E25B    lea         edi,[ebp-30]
 0052E25E    movs        dword ptr [edi],dword ptr [esi]
 0052E25F    movs        dword ptr [edi],dword ptr [esi]
 0052E260    movs        dword ptr [edi],dword ptr [esi]
 0052E261    movs        dword ptr [edi],dword ptr [esi]
 0052E262    mov         esi,dword ptr [ebp+0C]
 0052E265    lea         edi,[ebp-20]
 0052E268    movs        dword ptr [edi],dword ptr [esi]
 0052E269    movs        dword ptr [edi],dword ptr [esi]
 0052E26A    movs        dword ptr [edi],dword ptr [esi]
 0052E26B    movs        dword ptr [edi],dword ptr [esi]
 0052E26C    mov         dword ptr [ebp-0C],ecx
 0052E26F    mov         byte ptr [ebp-5],dl
 0052E272    mov         dword ptr [ebp-4],eax
 0052E275    cmp         dword ptr [ebp-0C],0
>0052E279    jl          0052E2D9
 0052E27B    cmp         dword ptr [ebp+10],0
>0052E27F    jl          0052E2D9
 0052E281    cmp         byte ptr [ebp-5],0
>0052E285    jbe         0052E29E
 0052E287    mov         eax,dword ptr [ebp+10]
 0052E28A    push        eax
 0052E28B    mov         ecx,dword ptr [ebp-0C]
 0052E28E    mov         dl,byte ptr [ebp-5]
 0052E291    mov         eax,dword ptr [ebp-4]
 0052E294    call        0052DCEC
 0052E299    mov         dword ptr [ebp-10],eax
>0052E29C    jmp         0052E2AF
 0052E29E    mov         cl,byte ptr [ebp+10]
 0052E2A1    mov         dl,byte ptr [ebp-0C]
 0052E2A4    mov         eax,dword ptr [ebp-4]
 0052E2A7    call        0052DE74
 0052E2AC    mov         dword ptr [ebp-10],eax
 0052E2AF    cmp         dword ptr [ebp-10],0
>0052E2B3    je          0052E2D9
 0052E2B5    lea         eax,[ebp-20]
 0052E2B8    push        eax
 0052E2B9    mov         eax,dword ptr [ebp-10]
 0052E2BC    call        TBitmap.GetCanvas
 0052E2C1    push        eax
 0052E2C2    mov         eax,dword ptr [ebp-4]
 0052E2C5    mov         eax,dword ptr [eax+3A3C]
 0052E2CB    call        TBitmap.GetCanvas
 0052E2D0    lea         edx,[ebp-30]
 0052E2D3    pop         ecx
 0052E2D4    call        TCanvas.CopyRect
 0052E2D9    pop         edi
 0052E2DA    pop         esi
 0052E2DB    mov         esp,ebp
 0052E2DD    pop         ebp
 0052E2DE    ret         0C
end;*}

//0052E2E4
{*procedure sub_0052E2E4(?:TMiniMapManager; ?:?; ?:?; ?:?; ?:?);
begin
 0052E2E4    push        ebp
 0052E2E5    mov         ebp,esp
 0052E2E7    add         esp,0FFFFFFB8
 0052E2EA    push        esi
 0052E2EB    push        edi
 0052E2EC    mov         dword ptr [ebp-0C],ecx
 0052E2EF    mov         byte ptr [ebp-5],dl
 0052E2F2    mov         dword ptr [ebp-4],eax
 0052E2F5    push        0FF
 0052E2FA    lea         eax,[ebp-48]
 0052E2FD    push        eax
 0052E2FE    mov         ecx,0FF
 0052E303    xor         edx,edx
 0052E305    xor         eax,eax
 0052E307    call        Rect
 0052E30C    movzx       eax,word ptr [ebp+8]
 0052E310    push        eax
 0052E311    mov         eax,100
 0052E316    pop         edx
 0052E317    mov         ecx,edx
 0052E319    xor         edx,edx
 0052E31B    div         eax,ecx
 0052E31D    mov         dword ptr [ebp-18],eax
 0052E320    mov         eax,dword ptr [ebp-18]
 0052E323    shl         eax,6
 0052E326    sar         eax,1
>0052E328    jns         0052E32D
 0052E32A    adc         eax,0
 0052E32D    sub         dword ptr [ebp-0C],eax
 0052E330    mov         eax,dword ptr [ebp-18]
 0052E333    shl         eax,6
 0052E336    sar         eax,1
>0052E338    jns         0052E33D
 0052E33A    adc         eax,0
 0052E33D    add         dword ptr [ebp+0C],eax
 0052E340    mov         edx,dword ptr [ebp-0C]
 0052E343    mov         eax,dword ptr [ebp-4]
 0052E346    call        0052E788
 0052E34B    mov         dword ptr [ebp-14],eax
 0052E34E    mov         edx,dword ptr [ebp+0C]
 0052E351    mov         eax,dword ptr [ebp-4]
 0052E354    call        0052E788
 0052E359    mov         dword ptr [ebp-10],eax
 0052E35C    mov         edx,dword ptr [ebp-0C]
 0052E35F    mov         eax,dword ptr [ebp-4]
 0052E362    call        0052E7B4
 0052E367    mov         dword ptr [ebp-28],eax
 0052E36A    mov         eax,dword ptr [ebp-28]
 0052E36D    add         eax,dword ptr [ebp-18]
 0052E370    mov         dword ptr [ebp-20],eax
 0052E373    mov         edx,dword ptr [ebp+0C]
 0052E376    mov         eax,dword ptr [ebp-4]
 0052E379    call        0052E7B4
 0052E37E    mov         edx,100
 0052E383    sub         edx,eax
 0052E385    mov         dword ptr [ebp-24],edx
 0052E388    mov         eax,dword ptr [ebp-24]
 0052E38B    add         eax,dword ptr [ebp-18]
 0052E38E    mov         dword ptr [ebp-1C],eax
 0052E391    cmp         dword ptr [ebp-20],0FF
>0052E398    jg          0052E443
 0052E39E    cmp         dword ptr [ebp-1C],0FF
>0052E3A5    jg          0052E3D0
 0052E3A7    lea         esi,[ebp-28]
 0052E3AA    lea         edi,[ebp-38]
 0052E3AD    movs        dword ptr [edi],dword ptr [esi]
 0052E3AE    movs        dword ptr [edi],dword ptr [esi]
 0052E3AF    movs        dword ptr [edi],dword ptr [esi]
 0052E3B0    movs        dword ptr [edi],dword ptr [esi]
 0052E3B1    mov         eax,dword ptr [ebp-10]
 0052E3B4    push        eax
 0052E3B5    lea         eax,[ebp-28]
 0052E3B8    push        eax
 0052E3B9    lea         eax,[ebp-48]
 0052E3BC    push        eax
 0052E3BD    mov         ecx,dword ptr [ebp-14]
 0052E3C0    mov         dl,byte ptr [ebp-5]
 0052E3C3    mov         eax,dword ptr [ebp-4]
 0052E3C6    call        0052E250
>0052E3CB    jmp         0052E5B7
 0052E3D0    mov         eax,dword ptr [ebp-1C]
 0052E3D3    push        eax
 0052E3D4    lea         eax,[ebp-38]
 0052E3D7    push        eax
 0052E3D8    mov         ecx,dword ptr [ebp-20]
 0052E3DB    mov         edx,dword ptr [ebp-24]
 0052E3DE    mov         eax,dword ptr [ebp-28]
 0052E3E1    call        Rect
 0052E3E6    mov         eax,dword ptr [ebp-10]
 0052E3E9    push        eax
 0052E3EA    lea         eax,[ebp-38]
 0052E3ED    push        eax
 0052E3EE    lea         eax,[ebp-48]
 0052E3F1    push        eax
 0052E3F2    mov         ecx,dword ptr [ebp-14]
 0052E3F5    mov         dl,byte ptr [ebp-5]
 0052E3F8    mov         eax,dword ptr [ebp-4]
 0052E3FB    call        0052E250
 0052E400    mov         eax,dword ptr [ebp-1C]
 0052E403    sub         eax,0FF
 0052E408    push        eax
 0052E409    lea         eax,[ebp-38]
 0052E40C    push        eax
 0052E40D    mov         edx,dword ptr [ebp-24]
 0052E410    sub         edx,0FF
 0052E416    mov         ecx,dword ptr [ebp-20]
 0052E419    mov         eax,dword ptr [ebp-28]
 0052E41C    call        Rect
 0052E421    mov         eax,dword ptr [ebp-10]
 0052E424    sub         eax,2
 0052E427    push        eax
 0052E428    lea         eax,[ebp-38]
 0052E42B    push        eax
 0052E42C    lea         eax,[ebp-48]
 0052E42F    push        eax
 0052E430    mov         ecx,dword ptr [ebp-14]
 0052E433    mov         dl,byte ptr [ebp-5]
 0052E436    mov         eax,dword ptr [ebp-4]
 0052E439    call        0052E250
>0052E43E    jmp         0052E5B7
 0052E443    cmp         dword ptr [ebp-1C],0FF
>0052E44A    jg          0052E4BF
 0052E44C    mov         eax,dword ptr [ebp-1C]
 0052E44F    push        eax
 0052E450    lea         eax,[ebp-38]
 0052E453    push        eax
 0052E454    mov         ecx,dword ptr [ebp-20]
 0052E457    mov         edx,dword ptr [ebp-24]
 0052E45A    mov         eax,dword ptr [ebp-28]
 0052E45D    call        Rect
 0052E462    mov         eax,dword ptr [ebp-10]
 0052E465    push        eax
 0052E466    lea         eax,[ebp-38]
 0052E469    push        eax
 0052E46A    lea         eax,[ebp-48]
 0052E46D    push        eax
 0052E46E    mov         ecx,dword ptr [ebp-14]
 0052E471    mov         dl,byte ptr [ebp-5]
 0052E474    mov         eax,dword ptr [ebp-4]
 0052E477    call        0052E250
 0052E47C    mov         eax,dword ptr [ebp-1C]
 0052E47F    push        eax
 0052E480    lea         eax,[ebp-38]
 0052E483    push        eax
 0052E484    mov         ecx,dword ptr [ebp-20]
 0052E487    sub         ecx,0FF
 0052E48D    mov         eax,dword ptr [ebp-28]
 0052E490    sub         eax,0FF
 0052E495    mov         edx,dword ptr [ebp-24]
 0052E498    call        Rect
 0052E49D    mov         eax,dword ptr [ebp-10]
 0052E4A0    push        eax
 0052E4A1    lea         eax,[ebp-38]
 0052E4A4    push        eax
 0052E4A5    lea         eax,[ebp-48]
 0052E4A8    push        eax
 0052E4A9    mov         ecx,dword ptr [ebp-14]
 0052E4AC    add         ecx,2
 0052E4AF    mov         dl,byte ptr [ebp-5]
 0052E4B2    mov         eax,dword ptr [ebp-4]
 0052E4B5    call        0052E250
>0052E4BA    jmp         0052E5B7
 0052E4BF    mov         eax,dword ptr [ebp-1C]
 0052E4C2    push        eax
 0052E4C3    lea         eax,[ebp-38]
 0052E4C6    push        eax
 0052E4C7    mov         ecx,dword ptr [ebp-20]
 0052E4CA    mov         edx,dword ptr [ebp-24]
 0052E4CD    mov         eax,dword ptr [ebp-28]
 0052E4D0    call        Rect
 0052E4D5    mov         eax,dword ptr [ebp-10]
 0052E4D8    push        eax
 0052E4D9    lea         eax,[ebp-38]
 0052E4DC    push        eax
 0052E4DD    lea         eax,[ebp-48]
 0052E4E0    push        eax
 0052E4E1    mov         ecx,dword ptr [ebp-14]
 0052E4E4    mov         dl,byte ptr [ebp-5]
 0052E4E7    mov         eax,dword ptr [ebp-4]
 0052E4EA    call        0052E250
 0052E4EF    mov         eax,dword ptr [ebp-1C]
 0052E4F2    push        eax
 0052E4F3    lea         eax,[ebp-38]
 0052E4F6    push        eax
 0052E4F7    mov         ecx,dword ptr [ebp-20]
 0052E4FA    sub         ecx,0FF
 0052E500    mov         eax,dword ptr [ebp-28]
 0052E503    sub         eax,0FF
 0052E508    mov         edx,dword ptr [ebp-24]
 0052E50B    call        Rect
 0052E510    mov         eax,dword ptr [ebp-10]
 0052E513    push        eax
 0052E514    lea         eax,[ebp-38]
 0052E517    push        eax
 0052E518    lea         eax,[ebp-48]
 0052E51B    push        eax
 0052E51C    mov         ecx,dword ptr [ebp-14]
 0052E51F    add         ecx,2
 0052E522    mov         dl,byte ptr [ebp-5]
 0052E525    mov         eax,dword ptr [ebp-4]
 0052E528    call        0052E250
 0052E52D    mov         eax,dword ptr [ebp-1C]
 0052E530    sub         eax,0FF
 0052E535    push        eax
 0052E536    lea         eax,[ebp-38]
 0052E539    push        eax
 0052E53A    mov         edx,dword ptr [ebp-24]
 0052E53D    sub         edx,0FF
 0052E543    mov         ecx,dword ptr [ebp-20]
 0052E546    mov         eax,dword ptr [ebp-28]
 0052E549    call        Rect
 0052E54E    mov         eax,dword ptr [ebp-10]
 0052E551    sub         eax,2
 0052E554    push        eax
 0052E555    lea         eax,[ebp-38]
 0052E558    push        eax
 0052E559    lea         eax,[ebp-48]
 0052E55C    push        eax
 0052E55D    mov         ecx,dword ptr [ebp-14]
 0052E560    mov         dl,byte ptr [ebp-5]
 0052E563    mov         eax,dword ptr [ebp-4]
 0052E566    call        0052E250
 0052E56B    mov         eax,dword ptr [ebp-1C]
 0052E56E    sub         eax,0FF
 0052E573    push        eax
 0052E574    lea         eax,[ebp-38]
 0052E577    push        eax
 0052E578    mov         ecx,dword ptr [ebp-20]
 0052E57B    sub         ecx,0FF
 0052E581    mov         edx,dword ptr [ebp-24]
 0052E584    sub         edx,0FF
 0052E58A    mov         eax,dword ptr [ebp-28]
 0052E58D    sub         eax,0FF
 0052E592    call        Rect
 0052E597    mov         eax,dword ptr [ebp-10]
 0052E59A    sub         eax,2
 0052E59D    push        eax
 0052E59E    lea         eax,[ebp-38]
 0052E5A1    push        eax
 0052E5A2    lea         eax,[ebp-48]
 0052E5A5    push        eax
 0052E5A6    mov         ecx,dword ptr [ebp-14]
 0052E5A9    add         ecx,2
 0052E5AC    mov         dl,byte ptr [ebp-5]
 0052E5AF    mov         eax,dword ptr [ebp-4]
 0052E5B2    call        0052E250
 0052E5B7    pop         edi
 0052E5B8    pop         esi
 0052E5B9    mov         esp,ebp
 0052E5BB    pop         ebp
 0052E5BC    ret         8
end;*}

//0052E5C0
{*function sub_0052E5C0(?:?; ?:TBitmap; ?:?):?;
begin
 0052E5C0    push        ebp
 0052E5C1    mov         ebp,esp
 0052E5C3    add         esp,0FFFFFFF0
 0052E5C6    push        ebx
 0052E5C7    push        esi
 0052E5C8    push        edi
 0052E5C9    mov         dword ptr [ebp-0C],ecx
 0052E5CC    mov         dword ptr [ebp-8],edx
 0052E5CF    mov         dword ptr [ebp-4],eax
 0052E5D2    mov         eax,dword ptr [ebp-0C]
 0052E5D5    call        @LStrAddRef
 0052E5DA    xor         eax,eax
 0052E5DC    push        ebp
 0052E5DD    push        52E6CC
 0052E5E2    push        dword ptr fs:[eax]
 0052E5E5    mov         dword ptr fs:[eax],esp
 0052E5E8    mov         byte ptr [ebp-0D],0
 0052E5EC    cmp         dword ptr [ebp-8],0
>0052E5F0    jne         0052E608
 0052E5F2    mov         ecx,52E6E8;'TMiniMapManager.ReadDDS nil not allowed. Create bitmap before use'
 0052E5F7    mov         dl,1
 0052E5F9    mov         eax,[0052D84C];ENilBitmap
 0052E5FE    call        Exception.Create;ENilBitmap.Create
 0052E603    call        @RaiseExcept
 0052E608    xor         eax,eax
 0052E60A    push        ebp
 0052E60B    push        52E64E
 0052E610    push        dword ptr fs:[eax]
 0052E613    mov         dword ptr fs:[eax],esp
 0052E616    mov         eax,dword ptr [ebp-4]
 0052E619    mov         eax,dword ptr [eax+4]
 0052E61C    call        0047C600
 0052E621    mov         eax,dword ptr [ebp-4]
 0052E624    mov         eax,dword ptr [eax+4]
 0052E627    mov         edx,dword ptr [ebp-0C]
 0052E62A    call        0047C66C
 0052E62F    mov         edx,55AF5C
 0052E634    mov         eax,dword ptr [ebp-4]
 0052E637    mov         eax,dword ptr [eax+4]
 0052E63A    mov         ecx,3
 0052E63F    call        0047BF70
 0052E644    xor         eax,eax
 0052E646    pop         edx
 0052E647    pop         ecx
 0052E648    pop         ecx
 0052E649    mov         dword ptr fs:[eax],edx
>0052E64C    jmp         0052E65F
>0052E64E    jmp         @HandleAnyException
 0052E653    call        @DoneExcept
>0052E658    jmp         0052E6B6
 0052E65A    call        @DoneExcept
 0052E65F    mov         eax,dword ptr [ebp-4]
 0052E662    mov         eax,dword ptr [eax+4]
 0052E665    mov         edx,dword ptr [eax+4]
 0052E668    add         edx,8
 0052E66B    mov         eax,dword ptr [ebp-4]
 0052E66E    mov         eax,dword ptr [eax+8]
 0052E671    mov         ecx,40
 0052E676    call        0052CDF0
 0052E67B    push        0
 0052E67D    push        0
 0052E67F    mov         eax,dword ptr [ebp-4]
 0052E682    mov         eax,dword ptr [eax+4]
 0052E685    call        0047BCF4
 0052E68A    mov         eax,dword ptr [ebp-4]
 0052E68D    mov         edx,dword ptr [eax+4]
 0052E690    mov         eax,dword ptr [ebp-4]
 0052E693    mov         eax,dword ptr [eax+0C]
 0052E696    xor         ecx,ecx
 0052E698    call        0052D330
 0052E69D    mov         eax,dword ptr [ebp-4]
 0052E6A0    mov         eax,dword ptr [eax+0C]
 0052E6A3    call        0052D560
 0052E6A8    mov         edx,eax
 0052E6AA    mov         eax,dword ptr [ebp-8]
 0052E6AD    call        TBitmap.SetHandle
 0052E6B2    mov         byte ptr [ebp-0D],1
 0052E6B6    xor         eax,eax
 0052E6B8    pop         edx
 0052E6B9    pop         ecx
 0052E6BA    pop         ecx
 0052E6BB    mov         dword ptr fs:[eax],edx
 0052E6BE    push        52E6D3
 0052E6C3    lea         eax,[ebp-0C]
 0052E6C6    call        @LStrClr
 0052E6CB    ret
>0052E6CC    jmp         @HandleFinally
>0052E6D1    jmp         0052E6C3
 0052E6D3    mov         al,byte ptr [ebp-0D]
 0052E6D6    pop         edi
 0052E6D7    pop         esi
 0052E6D8    pop         ebx
 0052E6D9    mov         esp,ebp
 0052E6DB    pop         ebp
 0052E6DC    ret
end;*}

//0052E72C
{*function sub_0052E72C(?:?; ?:?):?;
begin
 0052E72C    push        ebp
 0052E72D    mov         ebp,esp
 0052E72F    add         esp,0FFFFFFF4
 0052E732    mov         dword ptr [ebp-8],edx
 0052E735    mov         dword ptr [ebp-4],eax
 0052E738    cmp         dword ptr [ebp-8],0
>0052E73C    jge         0052E747
 0052E73E    mov         dword ptr [ebp-0C],0FFFFFFFF
>0052E745    jmp         0052E759
 0052E747    mov         eax,dword ptr [ebp-8]
 0052E74A    test        eax,eax
>0052E74C    jns         0052E753
 0052E74E    add         eax,1FFF
 0052E753    sar         eax,0D
 0052E756    mov         dword ptr [ebp-0C],eax
 0052E759    mov         eax,dword ptr [ebp-0C]
 0052E75C    mov         esp,ebp
 0052E75E    pop         ebp
 0052E75F    ret
end;*}

//0052E760
{*function sub_0052E760(?:?; ?:?):?;
begin
 0052E760    push        ebp
 0052E761    mov         ebp,esp
 0052E763    add         esp,0FFFFFFF4
 0052E766    mov         dword ptr [ebp-8],edx
 0052E769    mov         dword ptr [ebp-4],eax
 0052E76C    mov         eax,dword ptr [ebp-8]
 0052E76F    and         eax,1FFF
 0052E774    test        eax,eax
>0052E776    jns         0052E77B
 0052E778    add         eax,1F
 0052E77B    sar         eax,5
 0052E77E    mov         dword ptr [ebp-0C],eax
 0052E781    mov         eax,dword ptr [ebp-0C]
 0052E784    mov         esp,ebp
 0052E786    pop         ebp
 0052E787    ret
end;*}

//0052E788
{*function sub_0052E788(?:?; ?:?):?;
begin
 0052E788    push        ebp
 0052E789    mov         ebp,esp
 0052E78B    add         esp,0FFFFFFF4
 0052E78E    mov         dword ptr [ebp-8],edx
 0052E791    mov         dword ptr [ebp-4],eax
 0052E794    mov         eax,dword ptr [ebp-8]
 0052E797    test        eax,eax
>0052E799    jns         0052E7A0
 0052E79B    add         eax,1FFF
 0052E7A0    sar         eax,0D
 0052E7A3    shr         eax,1
 0052E7A5    add         eax,eax
 0052E7A7    mov         dword ptr [ebp-0C],eax
 0052E7AA    mov         eax,dword ptr [ebp-0C]
 0052E7AD    mov         esp,ebp
 0052E7AF    pop         ebp
 0052E7B0    ret
end;*}

//0052E7B4
{*function sub_0052E7B4(?:?; ?:?):?;
begin
 0052E7B4    push        ebp
 0052E7B5    mov         ebp,esp
 0052E7B7    add         esp,0FFFFFFF4
 0052E7BA    mov         dword ptr [ebp-8],edx
 0052E7BD    mov         dword ptr [ebp-4],eax
 0052E7C0    mov         eax,dword ptr [ebp-8]
 0052E7C3    and         eax,3FFF
 0052E7C8    test        eax,eax
>0052E7CA    jns         0052E7CF
 0052E7CC    add         eax,3F
 0052E7CF    sar         eax,6
 0052E7D2    mov         dword ptr [ebp-0C],eax
 0052E7D5    mov         eax,dword ptr [ebp-0C]
 0052E7D8    mov         esp,ebp
 0052E7DA    pop         ebp
 0052E7DB    ret
end;*}

//0052E7DC
{*function sub_0052E7DC(?:?; ?:?; ?:?; ?:?):?;
begin
 0052E7DC    push        ebp
 0052E7DD    mov         ebp,esp
 0052E7DF    add         esp,0FFFFFFE8
 0052E7E2    mov         dword ptr [ebp-0C],ecx
 0052E7E5    mov         byte ptr [ebp-5],dl
 0052E7E8    mov         dword ptr [ebp-4],eax
 0052E7EB    xor         eax,eax
 0052E7ED    mov         dword ptr [ebp-10],eax
 0052E7F0    mov         eax,dword ptr [ebp-4]
 0052E7F3    mov         eax,dword ptr [eax+3A38]
 0052E7F9    call        00405CE8
 0052E7FE    test        eax,eax
>0052E800    jl          0052E86A
 0052E802    inc         eax
 0052E803    mov         dword ptr [ebp-18],eax
 0052E806    mov         dword ptr [ebp-14],0
 0052E80D    mov         eax,dword ptr [ebp-4]
 0052E810    mov         eax,dword ptr [eax+3A38]
 0052E816    mov         edx,dword ptr [ebp-14]
 0052E819    mov         al,byte ptr [eax+edx*8]
 0052E81C    cmp         al,byte ptr [ebp-5]
>0052E81F    jne         0052E862
 0052E821    mov         eax,dword ptr [ebp-4]
 0052E824    mov         eax,dword ptr [eax+3A38]
 0052E82A    mov         edx,dword ptr [ebp-14]
 0052E82D    movzx       eax,byte ptr [eax+edx*8+1]
 0052E832    cmp         eax,dword ptr [ebp-0C]
>0052E835    jne         0052E862
 0052E837    mov         eax,dword ptr [ebp-4]
 0052E83A    mov         eax,dword ptr [eax+3A38]
 0052E840    mov         edx,dword ptr [ebp-14]
 0052E843    movzx       eax,byte ptr [eax+edx*8+2]
 0052E848    cmp         eax,dword ptr [ebp+8]
>0052E84B    jne         0052E862
 0052E84D    mov         eax,dword ptr [ebp-4]
 0052E850    mov         eax,dword ptr [eax+3A38]
 0052E856    mov         edx,dword ptr [ebp-14]
 0052E859    mov         eax,dword ptr [eax+edx*8+4]
 0052E85D    mov         dword ptr [ebp-10],eax
>0052E860    jmp         0052E86A
 0052E862    inc         dword ptr [ebp-14]
 0052E865    dec         dword ptr [ebp-18]
>0052E868    jne         0052E80D
 0052E86A    mov         eax,dword ptr [ebp-10]
 0052E86D    mov         esp,ebp
 0052E86F    pop         ebp
 0052E870    ret         4
end;*}

end.