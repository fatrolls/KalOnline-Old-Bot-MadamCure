//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit17;

interface

uses
  SysUtils, Classes;

    //procedure sub_0043011C(?:TSocket; ?:?);//0043011C
    //procedure sub_00430148(?:?);//00430148
    function accept(addr:PSOCKADDR; addrlen:PInteger):Integer; stdcall;//0043015C
    function bind(var addr:sockaddr_in; namelen:Integer):Integer; stdcall;//00430164
    function closesocket:Integer; stdcall;//0043016C
    function connect(var name:sockaddr_in; namelen:Integer):Integer; stdcall;//00430174
    function getsockopt(level:Integer; optname:Integer; optval:PChar; var optlen:Integer):Integer; stdcall;//0043017C
    function htons:Word; stdcall;//00430184
    function inet_addr:Longint; stdcall;//0043018C
    function ioctlsocket(cmd:DWORD; var arg:Longint):Integer; stdcall;//00430194
    function listen(backlog:Integer):Integer; stdcall;//0043019C
    function ntohs:Word; stdcall;//004301A4
    function recv(var Buf:void ; len:Integer; flags:Integer):Integer; stdcall;//004301AC
    function recvfrom(var Buf:void ; len:Integer; flags:Integer; var from:sockaddr_in; var fromlen:Integer):Integer; stdcall;//004301B4
    function select(readfds:PFDSet; writefds:PFDSet; exceptfds:PFDSet; timeout:PTimeVal):Longint; stdcall;//004301BC
    function send(var Buf:void ; len:Integer; flags:Integer):Integer; stdcall;//004301C4
    function sendto(var Buf:void ; len:Integer; flags:Integer; var addrto:sockaddr_in; tolen:Integer):Integer; stdcall;//004301CC
    function setsockopt(level:Integer; optname:Integer; optval:PChar; optlen:Integer):Integer; stdcall;//004301D4
    function socket(Struct:Integer; protocol:Integer):Integer; stdcall;//004301DC
    function gethostbyname:PHostEnt; stdcall;//004301E4
    function getservbyname(proto:PChar):PServEnt; stdcall;//004301EC
    function WSAAsyncSelect(HWindow:HWND; wMsg:Integer; lEvent:Longint):Integer; stdcall;//004301F4
    function WSAAsyncGetHostByName(wMsg:Integer; name:PChar; buf:PChar; buflen:Integer):THandle; stdcall;//004301FC
    function WSAAsyncGetServByName(wMsg:Integer; name:PChar; proto:PChar; buf:PChar; buflen:Integer):THandle; stdcall;//00430204
    function WSACancelAsyncRequest:Integer; stdcall;//0043020C
    function WSAGetLastError:Integer;//00430214
    function WSAStartup(var WSData:TWSAData):Integer; stdcall;//0043021C
    function WSACleanup:Integer;//00430224

implementation

//0043011C
{*procedure sub_0043011C(?:TSocket; ?:?);
begin
 0043011C    push        ebp
 0043011D    mov         ebp,esp
 0043011F    add         esp,0FFFFFFF8
 00430122    mov         dword ptr [ebp-8],edx
 00430125    mov         dword ptr [ebp-4],eax
 00430128    mov         eax,dword ptr [ebp-8]
 0043012B    cmp         dword ptr [eax],40
>0043012E    jge         00430144
 00430130    mov         eax,dword ptr [ebp-8]
 00430133    mov         eax,dword ptr [eax]
 00430135    mov         edx,dword ptr [ebp-8]
 00430138    mov         ecx,dword ptr [ebp-4]
 0043013B    mov         dword ptr [edx+eax*4+4],ecx
 0043013F    mov         eax,dword ptr [ebp-8]
 00430142    inc         dword ptr [eax]
 00430144    pop         ecx
 00430145    pop         ecx
 00430146    pop         ebp
 00430147    ret
end;*}

//00430148
{*procedure sub_00430148(?:?);
begin
 00430148    push        ebp
 00430149    mov         ebp,esp
 0043014B    push        ecx
 0043014C    mov         dword ptr [ebp-4],eax
 0043014F    mov         eax,dword ptr [ebp-4]
 00430152    xor         edx,edx
 00430154    mov         dword ptr [eax],edx
 00430156    pop         ecx
 00430157    pop         ebp
 00430158    ret
end;*}

//0043015C
function wsock32.accept(addr:PSOCKADDR; addrlen:PInteger):Integer; stdcall;
begin
{*
 0043015C    jmp         dword ptr ds:[55FB18]
*}
end;

//00430164
function wsock32.bind(var addr:sockaddr_in; namelen:Integer):Integer; stdcall;
begin
{*
 00430164    jmp         dword ptr ds:[55FB14]
*}
end;

//0043016C
function wsock32.closesocket:Integer; stdcall;
begin
{*
 0043016C    jmp         dword ptr ds:[55FB10]
*}
end;

//00430174
function wsock32.connect(var name:sockaddr_in; namelen:Integer):Integer; stdcall;
begin
{*
 00430174    jmp         dword ptr ds:[55FB0C]
*}
end;

//0043017C
function wsock32.getsockopt(level:Integer; optname:Integer; optval:PChar; var optlen:Integer):Integer; stdcall;
begin
{*
 0043017C    jmp         dword ptr ds:[55FB08]
*}
end;

//00430184
function wsock32.htons:Word; stdcall;
begin
{*
 00430184    jmp         dword ptr ds:[55FB04]
*}
end;

//0043018C
function wsock32.inet_addr:Longint; stdcall;
begin
{*
 0043018C    jmp         dword ptr ds:[55FB00]
*}
end;

//00430194
function wsock32.ioctlsocket(cmd:DWORD; var arg:Longint):Integer; stdcall;
begin
{*
 00430194    jmp         dword ptr ds:[55FAFC]
*}
end;

//0043019C
function wsock32.listen(backlog:Integer):Integer; stdcall;
begin
{*
 0043019C    jmp         dword ptr ds:[55FAF8]
*}
end;

//004301A4
function wsock32.ntohs:Word; stdcall;
begin
{*
 004301A4    jmp         dword ptr ds:[55FAF4]
*}
end;

//004301AC
function wsock32.recv(var Buf:void ; len:Integer; flags:Integer):Integer; stdcall;
begin
{*
 004301AC    jmp         dword ptr ds:[55FAF0]
*}
end;

//004301B4
function wsock32.recvfrom(var Buf:void ; len:Integer; flags:Integer; var from:sockaddr_in; var fromlen:Integer):Integer; stdcall;
begin
{*
 004301B4    jmp         dword ptr ds:[55FAEC]
*}
end;

//004301BC
function wsock32.select(readfds:PFDSet; writefds:PFDSet; exceptfds:PFDSet; timeout:PTimeVal):Longint; stdcall;
begin
{*
 004301BC    jmp         dword ptr ds:[55FAE8]
*}
end;

//004301C4
function wsock32.send(var Buf:void ; len:Integer; flags:Integer):Integer; stdcall;
begin
{*
 004301C4    jmp         dword ptr ds:[55FAE4]
*}
end;

//004301CC
function wsock32.sendto(var Buf:void ; len:Integer; flags:Integer; var addrto:sockaddr_in; tolen:Integer):Integer; stdcall;
begin
{*
 004301CC    jmp         dword ptr ds:[55FAE0]
*}
end;

//004301D4
function wsock32.setsockopt(level:Integer; optname:Integer; optval:PChar; optlen:Integer):Integer; stdcall;
begin
{*
 004301D4    jmp         dword ptr ds:[55FADC]
*}
end;

//004301DC
function wsock32.socket(Struct:Integer; protocol:Integer):Integer; stdcall;
begin
{*
 004301DC    jmp         dword ptr ds:[55FAD8]
*}
end;

//004301E4
function wsock32.gethostbyname:PHostEnt; stdcall;
begin
{*
 004301E4    jmp         dword ptr ds:[55FAD4]
*}
end;

//004301EC
function wsock32.getservbyname(proto:PChar):PServEnt; stdcall;
begin
{*
 004301EC    jmp         dword ptr ds:[55FAD0]
*}
end;

//004301F4
function wsock32.WSAAsyncSelect(HWindow:HWND; wMsg:Integer; lEvent:Longint):Integer; stdcall;
begin
{*
 004301F4    jmp         dword ptr ds:[55FACC]
*}
end;

//004301FC
function wsock32.WSAAsyncGetHostByName(wMsg:Integer; name:PChar; buf:PChar; buflen:Integer):THandle; stdcall;
begin
{*
 004301FC    jmp         dword ptr ds:[55FAC8]
*}
end;

//00430204
function wsock32.WSAAsyncGetServByName(wMsg:Integer; name:PChar; proto:PChar; buf:PChar; buflen:Integer):THandle; stdcall;
begin
{*
 00430204    jmp         dword ptr ds:[55FAC4]
*}
end;

//0043020C
function wsock32.WSACancelAsyncRequest:Integer; stdcall;
begin
{*
 0043020C    jmp         dword ptr ds:[55FAC0]
*}
end;

//00430214
function wsock32.WSAGetLastError:Integer;
begin
{*
 00430214    jmp         dword ptr ds:[55FABC]
*}
end;

//0043021C
function wsock32.WSAStartup(var WSData:TWSAData):Integer; stdcall;
begin
{*
 0043021C    jmp         dword ptr ds:[55FAB8]
*}
end;

//00430224
function wsock32.WSACleanup:Integer;
begin
{*
 00430224    jmp         dword ptr ds:[55FAB4]
*}
end;

end.