//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit4;

interface

uses
  SysUtils, Classes;

type
  _Enum_4_1 = (odSelected, odGrayed, odDisabled, odChecked, odFocused, odDefault, odHotLight, odInactive, odNoAccel, odNoFocusRect, odReserved1, odReserved2, odComboBoxEdit);
  TOwnerDrawState = set of _Enum_4_1;
    function AllocateAndInitializeSid(nSubAuthorityCount:Byte; nSubAuthority0:DWORD; nSubAuthority1:DWORD; nSubAuthority2:DWORD; nSubAuthority3:DWORD; nSubAuthority4:DWORD; nSubAuthority5:DWORD; nSubAuthority6:DWORD; nSubAuthority7:DWORD; var pSid:Pointer):LongBool; stdcall;//004070BC
    function FreeSid:Pointer; stdcall;//004070C4
    function GetTokenInformation(TokenInformationClass:TTokenInformationClass; TokenInformation:Pointer; TokenInformationLength:DWORD; var ReturnLength:DWORD):LongBool; stdcall;//004070CC
    function GetUserNameA(var nSize:DWORD):LongBool; stdcall;//004070D4
    function GetUserNameW(var nSize:DWORD):LongBool; stdcall;//004070DC
    function InitializeSecurityDescriptor(dwRevision:DWORD):LongBool; stdcall;//004070E4
    function OpenProcessToken(DesiredAccess:DWORD; var TokenHandle:THandle):LongBool; stdcall;//004070EC
    function RegCloseKey:Integer; stdcall;//004070F4
    function RegCreateKeyExA(lpSubKey:PAnsiChar; Reserved:DWORD; lpClass:PAnsiChar; dwOptions:DWORD; samDesired:DWORD; lpSecurityAttributes:PSecurityAttributes; var phkResult:HKEY; lpdwDisposition:PDWORD):Longint; stdcall;//004070FC
    function RegCreateKeyExW(lpSubKey:PWideChar; Reserved:DWORD; lpClass:PWideChar; dwOptions:DWORD; samDesired:DWORD; lpSecurityAttributes:PSecurityAttributes; var phkResult:HKEY; lpdwDisposition:PDWORD):Longint; stdcall;//00407104
    function RegDeleteValueA(lpValueName:PAnsiChar):Longint; stdcall;//0040710C
    function RegDeleteValueW(lpValueName:PWideChar):Longint; stdcall;//00407114
    function RegEnumKeyA(dwIndex:DWORD; lpName:PAnsiChar; cbName:DWORD):Longint; stdcall;//0040711C
    function RegOpenKeyExA(lpSubKey:PAnsiChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;//00407124
    function RegOpenKeyExA(lpSubKey:PAnsiChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;//0040712C
    function RegOpenKeyExW(lpSubKey:PWideChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;//00407134
    function RegQueryInfoKeyA(lpClass:PChar; lpcbClass:PDWORD; lpReserved:Pointer; lpcSubKeys:PDWORD; lpcbMaxSubKeyLen:PDWORD; lpcbMaxClassLen:PDWORD; lpcValues:PDWORD; lpcbMaxValueNameLen:PDWORD; lpcbMaxValueLen:PDWORD; lpcbSecurityDescriptor:PDWORD; lpftLastWriteTime:PFileTime):Longint; stdcall;//0040713C
    function RegQueryValueExA(lpValueName:PAnsiChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;//00407144
    function RegQueryValueExA(lpValueName:PAnsiChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;//0040714C
    function RegQueryValueExW(lpValueName:PWideChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;//00407154
    function RegSetValueExA(lpValueName:PAnsiChar; Reserved:DWORD; dwType:DWORD; lpData:Pointer; cbData:DWORD):Longint; stdcall;//0040715C
    function RegSetValueExW(lpValueName:PWideChar; Reserved:DWORD; dwType:DWORD; lpData:Pointer; cbData:DWORD):Longint; stdcall;//00407164
    function SetSecurityDescriptorDacl(bDaclPresent:LongBool; pDacl:PACL; bDaclDefaulted:LongBool):LongBool; stdcall;//0040716C
    function Beep(dwDuration:DWORD):LongBool; stdcall;//00407174
    function CloseHandle:Integer; stdcall;//0040717C
    function CompareStringA(dwCmpFlags:DWORD; lpString1:PAnsiChar; cchCount1:Integer; lpString2:PAnsiChar; cchCount2:Integer):Integer; stdcall;//00407184
    function CopyFileA(lpNewFileName:PAnsiChar; bFailIfExists:LongBool):LongBool; stdcall;//0040718C
    function CopyFileW(lpNewFileName:PWideChar; bFailIfExists:LongBool):LongBool; stdcall;//00407194
    function CreateDirectoryA(lpSecurityAttributes:PSecurityAttributes):LongBool; stdcall;//0040719C
    function CreateDirectoryW(lpSecurityAttributes:PSecurityAttributes):LongBool; stdcall;//004071A4
    function CreateEventA(bManualReset:LongBool; bInitialState:LongBool; lpName:PAnsiChar):THandle; stdcall;//004071AC
    function CreateEventA(bManualReset:LongBool; bInitialState:LongBool; lpName:PAnsiChar):THandle; stdcall;//004071B4
    function CreateFileA(dwDesiredAccess:Integer; dwShareMode:Integer; lpSecurityAttributes:Pointer; dwCreationDisposition:Integer; dwFlagsAndAttributes:Integer; hTemplateFile:Integer):Integer; stdcall;//004071BC
    function CreateFileA(dwDesiredAccess:Integer; dwShareMode:Integer; lpSecurityAttributes:Pointer; dwCreationDisposition:Integer; dwFlagsAndAttributes:Integer; hTemplateFile:Integer):Integer; stdcall;//004071C4
    function CreateFileW(dwDesiredAccess:DWORD; dwShareMode:DWORD; lpSecurityAttributes:PSecurityAttributes; dwCreationDisposition:DWORD; dwFlagsAndAttributes:DWORD; hTemplateFile:THandle):THandle; stdcall;//004071CC
    function CreateFileMappingA(lpFileMappingAttributes:PSecurityAttributes; flProtect:DWORD; dwMaximumSizeHigh:DWORD; dwMaximumSizeLow:DWORD; lpName:PAnsiChar):THandle; stdcall;//004071D4
    function CreateFileMappingA(lpFileMappingAttributes:PSecurityAttributes; flProtect:DWORD; dwMaximumSizeHigh:DWORD; dwMaximumSizeLow:DWORD; lpName:PAnsiChar):THandle; stdcall;//004071DC
    function CreateFileMappingW(lpFileMappingAttributes:PSecurityAttributes; flProtect:DWORD; dwMaximumSizeHigh:DWORD; dwMaximumSizeLow:DWORD; lpName:PWideChar):THandle; stdcall;//004071E4
    function CreateMutexA(bInitialOwner:LongBool; lpName:PAnsiChar):THandle; stdcall;//004071EC
    //function sub_004071F4(?:?; ?:?; ?:?):?;//004071F4
    function CreateMutexA(bInitialOwner:LongBool; lpName:PAnsiChar):THandle; stdcall;//0040721C
    //function sub_00407224(?:?; ?:?; ?:?):?;//00407224
    function CreatePipe(var hWritePipe:THandle; lpPipeAttributes:PSecurityAttributes; nSize:DWORD):LongBool; stdcall;//0040724C
    function CreateProcessA(lpCommandLine:PAnsiChar; lpProcessAttributes:PSecurityAttributes; lpThreadAttributes:PSecurityAttributes; bInheritHandles:LongBool; dwCreationFlags:DWORD; lpEnvironment:Pointer; lpCurrentDirectory:PAnsiChar; const lpStartupInfo:_STARTUPINFOA; var lpProcessInformation:_PROCESS_INFORMATION):LongBool; stdcall;//00407254
    function CreateProcessW(lpCommandLine:PWideChar; lpProcessAttributes:PSecurityAttributes; lpThreadAttributes:PSecurityAttributes; bInheritHandles:LongBool; dwCreationFlags:DWORD; lpEnvironment:Pointer; lpCurrentDirectory:PWideChar; const lpStartupInfo:_STARTUPINFOA; var lpProcessInformation:_PROCESS_INFORMATION):LongBool; stdcall;//0040725C
    function CreateThread(dwStackSize:DWORD; lpStartAddress:Pointer; lpParameter:Pointer; dwCreationFlags:DWORD; var lpThreadId:DWORD):THandle; stdcall;//00407264
    procedure DeleteCriticalSection; stdcall;//0040726C
    function DeleteFileA:LongBool; stdcall;//00407274
    function DeleteFileA:LongBool; stdcall;//0040727C
    function DeleteFileW:LongBool; stdcall;//00407284
    function DuplicateHandle(hSourceHandle:THandle; hTargetProcessHandle:THandle; lpTargetHandle:PHandle; dwDesiredAccess:DWORD; bInheritHandle:LongBool; dwOptions:DWORD):LongBool; stdcall;//0040728C
    procedure EnterCriticalSection; stdcall;//00407294
    function EnumCalendarInfoA(Locale:DWORD; Calendar:DWORD; CalType:DWORD):LongBool; stdcall;//0040729C
    procedure ExitProcess; stdcall;//004072A4
    procedure ExitThread; stdcall;//004072AC
    function ExpandEnvironmentStringsA(lpDst:PAnsiChar; nSize:DWORD):DWORD; stdcall;//004072B4
    function ExpandEnvironmentStringsW(lpDst:PWideChar; nSize:DWORD):DWORD; stdcall;//004072BC
    function FileTimeToDosDateTime(var lpFatDate:Word; var lpFatTime:Word):LongBool; stdcall;//004072C4
    function FileTimeToLocalFileTime(var lpLocalFileTime:_FILETIME):LongBool; stdcall;//004072CC
    function FileTimeToSystemTime(var lpSystemTime:_SYSTEMTIME):LongBool; stdcall;//004072D4
    procedure FindClose;//004072DC
    function FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;//004072E4
    function FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;//004072EC
    function FindFirstFileW(var lpFindFileData:_WIN32_FIND_DATAW):THandle; stdcall;//004072F4
    function FindNextFileA(var lpFindFileData:_WIN32_FIND_DATAA):LongBool; stdcall;//004072FC
    function FindNextFileW(var lpFindFileData:_WIN32_FIND_DATAW):LongBool; stdcall;//00407304
    function FindResourceA(lpName:PAnsiChar; lpType:PAnsiChar):HRSRC; stdcall;//0040730C
    function FindResourceA(lpName:PAnsiChar; lpType:PAnsiChar):HRSRC; stdcall;//00407314
    function FindResourceW(lpName:PWideChar; lpType:PWideChar):HRSRC; stdcall;//0040731C
    function FlushInstructionCache(const lpBaseAddress:Pointer; dwSize:DWORD):LongBool; stdcall;//00407324
    function FormatMessageA(lpSource:Pointer; dwMessageId:DWORD; dwLanguageId:DWORD; lpBuffer:PAnsiChar; nSize:DWORD; Arguments:Pointer):DWORD; stdcall;//0040732C
    function FormatMessageA(lpSource:Pointer; dwMessageId:DWORD; dwLanguageId:DWORD; lpBuffer:PAnsiChar; nSize:DWORD; Arguments:Pointer):DWORD; stdcall;//00407334
    function FormatMessageW(lpSource:Pointer; dwMessageId:DWORD; dwLanguageId:DWORD; lpBuffer:PWideChar; nSize:DWORD; Arguments:Pointer):DWORD; stdcall;//0040733C
    function FreeLibrary:LongBool; stdcall;//00407344
    function InterlockedDecrement:Integer;//0040734C
    function InterlockedExchange(B:Integer):Integer;//00407354
    function InterlockedIncrement:Integer; stdcall;//0040735C
    function FreeResource:LongBool; stdcall;//00407364
    function GetACP:LongWord;//0040736C
    function GetCPInfo(var lpCPInfo:_cpinfo):LongBool; stdcall;//00407374
    function GetCommandLineA:PAnsiChar;//0040737C
    function GetCommandLineW:PWideChar;//00407384
    function GetComputerNameA(var nSize:DWORD):LongBool; stdcall;//0040738C
    function GetComputerNameW(var nSize:DWORD):LongBool; stdcall;//00407394
    function GetCurrentDirectoryA(lpBuffer:PAnsiChar):DWORD; stdcall;//0040739C
    function GetCurrentDirectoryW(lpBuffer:PWideChar):DWORD; stdcall;//004073A4
    function GetCurrentProcess:THandle;//004073AC
    function GetCurrentProcessId:DWORD;//004073B4
    function GetCurrentThread:THandle;//004073BC
    function GetCurrentThreadId:Cardinal;//004073C4
    function GetDateFormatA(dwFlags:DWORD; lpDate:PSystemTime; lpFormat:PAnsiChar; lpDateStr:PAnsiChar; cchDate:Integer):Integer; stdcall;//004073CC
    function GetDiskFreeSpaceA(var lpSectorsPerCluster:DWORD; var lpBytesPerSector:DWORD; var lpNumberOfFreeClusters:DWORD; var lpTotalNumberOfClusters:DWORD):LongBool; stdcall;//004073D4
    function GetExitCodeThread(var lpExitCode:DWORD):LongBool; stdcall;//004073DC
    function GetFileAttributesA:DWORD; stdcall;//004073E4
    function GetFileAttributesW:DWORD; stdcall;//004073EC
    function GetFileSize(x:Integer):Integer; stdcall;//004073F4
    function GetFileTime(lpCreationTime:PFileTime; lpLastAccessTime:PFileTime; lpLastWriteTime:PFileTime):LongBool; stdcall;//004073FC
    function GetFullPathNameA(nBufferLength:DWORD; lpBuffer:PAnsiChar; var lpFilePart:PAnsiChar):DWORD; stdcall;//00407404
    function GetLastError:Integer;//0040740C
    function GetLocalTime:TDateTime;//00407414
    function GetLocaleInfoA(LCType:DWORD; lpLCData:PAnsiChar; cchData:Integer):Integer; stdcall;//0040741C
    function GetLocaleInfoA(LCType:DWORD; lpLCData:PAnsiChar; cchData:Integer):Integer; stdcall;//00407424
    function GetLocaleInfoW(LCType:DWORD; lpLCData:PWideChar; cchData:Integer):Integer; stdcall;//0040742C
    function GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;//00407434
    function GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;//0040743C
    function GetModuleFileNameW(lpFilename:PWideChar; nSize:DWORD):DWORD; stdcall;//00407444
    function GetModuleHandleA:HMODULE; stdcall;//0040744C
    function GetModuleHandleA:HMODULE; stdcall;//00407454
    function GetModuleHandleW:HMODULE; stdcall;//0040745C
    function GetPriorityClass:DWORD; stdcall;//00407464
    function GetPrivateProfileStringA(lpKeyName:PAnsiChar; lpDefault:PAnsiChar; lpReturnedString:PAnsiChar; nSize:DWORD; lpFileName:PAnsiChar):DWORD; stdcall;//0040746C
    function GetProcAddress(lpProcName:PAnsiChar):Pointer; stdcall;//00407474
    function GetStdHandle:Integer; stdcall;//0040747C
    function GetStringTypeExA(dwInfoType:DWORD; lpSrcStr:PAnsiChar; cchSrc:Integer; var lpCharType:void ):LongBool; stdcall;//00407484
    function GetSystemDirectoryW(uSize:LongWord):LongWord; stdcall;//0040748C
    procedure GetSystemInfo; stdcall;//00407494
    procedure GetSystemTime; stdcall;//0040749C
    function GetTempPathA(lpBuffer:PAnsiChar):DWORD; stdcall;//004074A4
    function GetTempPathW(lpBuffer:PWideChar):DWORD; stdcall;//004074AC
    function GetThreadContext(var lpContext:_CONTEXT):LongBool; stdcall;//004074B4
    function GetThreadLocale:Integer;//004074BC
    function GetThreadPriority:Integer; stdcall;//004074C4
    function GetTickCount:Cardinal;//004074CC
    function GetVersion:DWORD;//004074D4
    function GetVersionExA:LongBool; stdcall;//004074DC
    function GetVersionExA:LongBool; stdcall;//004074E4
    function GetVersionExW:LongBool; stdcall;//004074EC
    function GetWindowsDirectoryA(uSize:LongWord):LongWord; stdcall;//004074F4
    function GlobalAddAtomA:Word; stdcall;//004074FC
    function GlobalAlloc(dwBytes:DWORD):THandle; stdcall;//00407504
    function GlobalDeleteAtom:Word; stdcall;//0040750C
    function GlobalFindAtomA:Word; stdcall;//00407514
    function GlobalFree:THandle; stdcall;//0040751C
    function GlobalLock:Pointer; stdcall;//00407524
    function GlobalHandle:THandle; stdcall;//0040752C
    procedure GlobalMemoryStatus; stdcall;//00407534
    function GlobalReAlloc(dwBytes:DWORD; uFlags:LongWord):THandle; stdcall;//0040753C
    function GlobalUnlock:LongBool; stdcall;//00407544
    procedure InitializeCriticalSection; stdcall;//0040754C
    procedure LeaveCriticalSection; stdcall;//00407554
    function LoadLibraryA:HMODULE; stdcall;//0040755C
    function LoadLibraryA:HMODULE; stdcall;//00407564
    function LoadLibraryW:HMODULE; stdcall;//0040756C
    function LoadLibraryExA(hFile:THandle; dwFlags:DWORD):HMODULE; stdcall;//00407574
    function LoadResource(hResInfo:HRSRC):THandle; stdcall;//0040757C
    function LocalAlloc(size:Integer):Pointer; stdcall;//00407584
    function LocalFree:Pointer; stdcall;//0040758C
    function LocalSize:LongWord; stdcall;//00407594
    function LockResource:Pointer; stdcall;//0040759C
    function MapViewOfFile(dwDesiredAccess:DWORD; dwFileOffsetHigh:DWORD; dwFileOffsetLow:DWORD; dwNumberOfBytesToMap:DWORD):Pointer; stdcall;//004075A4
    function MulDiv(nNumerator:Integer; nDenominator:Integer):Integer; stdcall;//004075AC
    function OpenFileMappingA(bInheritHandle:LongBool; lpName:PAnsiChar):THandle; stdcall;//004075B4
    function OpenFileMappingA(bInheritHandle:LongBool; lpName:PAnsiChar):THandle; stdcall;//004075BC
    function OpenProcess(bInheritHandle:LongBool; dwProcessId:DWORD):THandle; stdcall;//004075C4
    function QueryPerformanceCounter:LongBool; stdcall;//004075CC
    function QueryPerformanceFrequency:LongBool; stdcall;//004075D4
    procedure RaiseException(dwExceptionFlags:DWORD; nNumberOfArguments:DWORD; lpArguments:PDWORD); stdcall;//004075DC
    function ReadFile(var Buffer:void ; nNumberOfBytesToRead:Cardinal; var lpNumberOfBytesRead:Cardinal; lpOverlapped:Pointer):Integer; stdcall;//004075E4
    function ReadProcessMemory(const lpBaseAddress:Pointer; lpBuffer:Pointer; nSize:DWORD; var lpNumberOfBytesRead:DWORD):LongBool; stdcall;//004075EC
    function ReleaseMutex:LongBool; stdcall;//004075F4
    function RemoveDirectoryA:LongBool; stdcall;//004075FC
    function RemoveDirectoryW:LongBool; stdcall;//00407604
    function ResetEvent:LongBool; stdcall;//0040760C
    function ResumeThread:DWORD; stdcall;//00407614
    function SetEndOfFile:LongBool; stdcall;//0040761C
    function SetErrorMode:LongWord; stdcall;//00407624
    function SetEvent:LongBool; stdcall;//0040762C
    function SetFileAttributesA(dwFileAttributes:DWORD):LongBool; stdcall;//00407634
    function SetFileAttributesW(dwFileAttributes:DWORD):LongBool; stdcall;//0040763C
    function SetFilePointer(Distance:Integer; DistanceHigh:Pointer; MoveMethod:Integer):Integer; stdcall;//00407644
    procedure SetLastError; stdcall;//0040764C
    function SetThreadLocale:LongBool; stdcall;//00407654
    procedure SetThreadPriority(const APriority:TThreadPriority; const APolicy:Integer);//0040765C
    function SetUnhandledExceptionFilter:Pointer; stdcall;//00407664
    function SizeofResource(hResInfo:HRSRC):DWORD; stdcall;//0040766C
    procedure Sleep; stdcall;//00407674
    function SuspendThread:DWORD; stdcall;//0040767C
    function SystemTimeToFileTime(var lpFileTime:_FILETIME):LongBool; stdcall;//00407684
    function TerminateProcess(uExitCode:LongWord):LongBool; stdcall;//0040768C
    function TerminateThread(dwExitCode:DWORD):LongBool; stdcall;//00407694
    function UnmapViewOfFile:LongBool; stdcall;//0040769C
    function VirtualAlloc(dwSize:DWORD; flAllocationType:DWORD; flProtect:DWORD):Pointer; stdcall;//004076A4
    function VirtualFree(dwSize:DWORD; dwFreeType:DWORD):LongBool; stdcall;//004076AC
    function VirtualProtect(dwSize:DWORD; flNewProtect:DWORD; lpflOldProtect:Pointer):LongBool; stdcall;//004076B4
    function VirtualQuery(var lpBuffer:TMemInfo; dwLength:Integer):Integer; stdcall;//004076BC
    function WaitForSingleObject(dwMilliseconds:DWORD):DWORD; stdcall;//004076C4
    function WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Cardinal; var lpNumberOfBytesWritten:Cardinal; lpOverlapped:Pointer):Integer; stdcall;//004076CC
    function WritePrivateProfileStringA(lpKeyName:PAnsiChar; lpString:PAnsiChar; lpFileName:PAnsiChar):LongBool; stdcall;//004076D4
    function lstrcmpA(lpString2:PAnsiChar):Integer; stdcall;//004076DC
    function lstrcmpA(lpString2:PAnsiChar):Integer; stdcall;//004076E4
    function lstrcmpiW(lpString2:PWideChar):Integer; stdcall;//004076EC
    function lstrcpyA(lpString2:PAnsiChar):PAnsiChar; stdcall;//004076F4
    function lstrlenW:Integer; stdcall;//004076FC
    function GetFileVersionInfoA(dwHandle:DWORD; dwLen:DWORD; lpData:Pointer):LongBool; stdcall;//00407704
    function GetFileVersionInfoA(dwHandle:DWORD; dwLen:DWORD; lpData:Pointer):LongBool; stdcall;//0040770C
    function GetFileVersionInfoW(dwHandle:DWORD; dwLen:DWORD; lpData:Pointer):LongBool; stdcall;//00407714
    function GetFileVersionInfoSizeA(var lpdwHandle:DWORD):DWORD; stdcall;//0040771C
    function GetFileVersionInfoSizeA(var lpdwHandle:DWORD):DWORD; stdcall;//00407724
    function GetFileVersionInfoSizeW(var lpdwHandle:DWORD):DWORD; stdcall;//0040772C
    function VerQueryValueA(lpSubBlock:PAnsiChar; var lplpBuffer:Pointer; var puLen:LongWord):LongBool; stdcall;//00407734
    function VerQueryValueA(lpSubBlock:PAnsiChar; var lplpBuffer:Pointer; var puLen:LongWord):LongBool; stdcall;//0040773C
    function VerQueryValueW(lpSubBlock:PWideChar; var lplpBuffer:Pointer; var puLen:LongWord):LongBool; stdcall;//00407744
    function BitBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; Rop:DWORD):LongBool; stdcall;//0040774C
    function CombineRgn(p2:HRGN; p3:HRGN; p4:Integer):Integer; stdcall;//00407754
    function CopyEnhMetaFileA(p2:PAnsiChar):HENHMETAFILE; stdcall;//0040775C
    function CreateBitmap(Height:Integer; Planes:Longint; BitCount:Longint; Bits:Pointer):HBITMAP; stdcall;//00407764
    function CreateBrushIndirect:HBRUSH; stdcall;//0040776C
    function CreateCompatibleBitmap(Width:Integer; Height:Integer):HBITMAP; stdcall;//00407774
    function CreateCompatibleDC:HDC; stdcall;//0040777C
    function CreateDCA(lpszDevice:PAnsiChar; lpszOutput:PAnsiChar; lpdvmInit:PDeviceModeA):HDC; stdcall;//00407784
    function CreateDIBSection(const p2:tagBITMAPINFO; p3:LongWord; var p4:Pointer; p5:THandle; p6:DWORD):HBITMAP; stdcall;//0040778C
    function CreateDIBitmap(var InfoHeader:tagBITMAPINFOHEADER; dwUsage:DWORD; InitBits:PChar; var InitInfo:tagBITMAPINFO; wUsage:LongWord):HBITMAP; stdcall;//00407794
    function CreateFontA(nWidth:Integer; nEscapement:Integer; nOrientaion:Integer; fnWeight:Integer; fdwItalic:DWORD; fdwUnderline:DWORD; fdwStrikeOut:DWORD; fdwCharSet:DWORD; fdwOutputPrecision:DWORD; fdwClipPrecision:DWORD; fdwQuality:DWORD; fdwPitchAndFamily:DWORD; lpszFace:PAnsiChar):HFONT; stdcall;//0040779C
    function CreateFontA(nWidth:Integer; nEscapement:Integer; nOrientaion:Integer; fnWeight:Integer; fdwItalic:DWORD; fdwUnderline:DWORD; fdwStrikeOut:DWORD; fdwCharSet:DWORD; fdwOutputPrecision:DWORD; fdwClipPrecision:DWORD; fdwQuality:DWORD; fdwPitchAndFamily:DWORD; lpszFace:PAnsiChar):HFONT; stdcall;//004077A4
    function CreateFontIndirectA:HFONT; stdcall;//004077AC
    function CreateHalftonePalette:HPALETTE; stdcall;//004077B4
    function CreatePalette:HPALETTE; stdcall;//004077BC
    function CreatePen(Width:Integer; Color:DWORD):HPEN; stdcall;//004077C4
    function CreatePenIndirect:HPEN; stdcall;//004077CC
    function CreateRectRgn(p2:Integer; p3:Integer; p4:Integer):HRGN; stdcall;//004077D4
    function CreateRectRgnIndirect:HRGN; stdcall;//004077DC
    function CreateSolidBrush:HBRUSH; stdcall;//004077E4
    function DeleteDC:LongBool; stdcall;//004077EC
    function DeleteEnhMetaFile:LongBool; stdcall;//004077F4
    function DeleteObject:LongBool; stdcall;//004077FC
    function Ellipse(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;//00407804
    function EndDoc:Integer; stdcall;//0040780C
    function EndPage:Integer; stdcall;//00407814
    function ExcludeClipRect(LeftRect:Integer; TopRect:Integer; RightRect:Integer; BottomRect:Integer):Integer; stdcall;//0040781C
    function ExtTextOutA(X:Integer; Y:Integer; Options:Longint; Rect:PRect; Str:PAnsiChar; Count:Longint; Dx:PInteger):LongBool; stdcall;//00407824
    function GdiFlush:LongBool;//0040782C
    function GetBitmapBits(Count:Longint; Bits:Pointer):Longint; stdcall;//00407834
    function GetBrushOrgEx(var lppt:TPoint):LongBool; stdcall;//0040783C
    function GetClipBox(var Rect:TRect):Integer; stdcall;//00407844
    function GetCurrentPositionEx(Point:PPoint):LongBool; stdcall;//0040784C
    function GetDCOrgEx(var Origin:TPoint):LongBool; stdcall;//00407854
    function GetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadStructs:void ):LongWord; stdcall;//0040785C
    function GetDIBits(Bitmap:HBITMAP; StartScan:LongWord; NumScans:LongWord; Bits:Pointer; var BitInfo:tagBITMAPINFO; Usage:LongWord):Integer; stdcall;//00407864
    function GetDeviceCaps(Index:Integer):Integer; stdcall;//0040786C
    function GetEnhMetaFileBits(p2:LongWord; p3:PByte):LongWord; stdcall;//00407874
    function GetEnhMetaFileHeader(p2:LongWord; p3:PEnhMetaHeader):LongWord; stdcall;//0040787C
    function GetEnhMetaFilePaletteEntries(p2:LongWord; p3:Pointer):LongWord; stdcall;//00407884
    function GetObjectA(p2:Integer; p3:Pointer):Integer; stdcall;//0040788C
    function GetPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;//00407894
    function GetPixel(X:Integer; Y:Integer):DWORD; stdcall;//0040789C
    function GetRgnBox(var p2:TRect):Integer; stdcall;//004078A4
    function GetStockObject:HGDIOBJ; stdcall;//004078AC
    function GetSystemPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;//004078B4
    function GetTextExtentPoint32A(Str:PAnsiChar; Count:Integer; var Size:TSize):LongBool; stdcall;//004078BC
    function GetTextExtentPoint32A(Str:PAnsiChar; Count:Integer; var Size:TSize):LongBool; stdcall;//004078C4
    function GetTextExtentPoint32W(Str:PWideChar; Count:Integer; var Size:TSize):LongBool; stdcall;//004078CC
    function GetTextExtentPointA(Str:PAnsiChar; Count:Integer; var Size:TSize):LongBool; stdcall;//004078D4
    function GetTextFaceA(Count:Integer; Buffer:PAnsiChar):Integer; stdcall;//004078DC
    function GetTextMetricsA(var TM:tagTEXTMETRICA):LongBool; stdcall;//004078E4
    function GetWinMetaFileBits(p2:LongWord; p3:PByte; p4:Integer; p5:HDC):LongWord; stdcall;//004078EC
    function GetWindowOrgEx(var Point:TPoint):LongBool; stdcall;//004078F4
    function IntersectClipRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):Integer; stdcall;//004078FC
    function LineTo(X:Integer; Y:Integer):LongBool; stdcall;//00407904
    function MaskBlt(XDest:Integer; YDest:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XScr:Integer; YScr:Integer; Mask:HBITMAP; xMask:Integer; yMask:Integer; Rop:DWORD):LongBool; stdcall;//0040790C
    function MoveToEx(p2:Integer; p3:Integer; p4:PPoint):LongBool; stdcall;//00407914
    function PatBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; Rop:DWORD):LongBool; stdcall;//0040791C
    function Pie(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer):LongBool; stdcall;//00407924
    function PlayEnhMetaFile(p2:HENHMETAFILE; const p3:TRect):LongBool; stdcall;//0040792C
    function Polygon(var Points:void ; Count:Integer):LongBool; stdcall;//00407934
    function Polyline(var Points:void ; Count:Integer):LongBool; stdcall;//0040793C
    function RealizePalette:LongWord; stdcall;//00407944
    function RectVisible(const Rect:TRect):LongBool; stdcall;//0040794C
    function Rectangle(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;//00407954
    function RestoreDC(SavedDC:Integer):LongBool; stdcall;//0040795C
    function SaveDC:Integer; stdcall;//00407964
    function SelectClipRgn(Region:HRGN):Integer; stdcall;//0040796C
    function SelectObject(p2:HGDIOBJ):HGDIOBJ; stdcall;//00407974
    function SelectPalette(Palette:HPALETTE; ForceBackground:LongBool):HPALETTE; stdcall;//0040797C
    function SetBkColor(Color:DWORD):DWORD; stdcall;//00407984
    function SetBkMode(BkMode:Integer):Integer; stdcall;//0040798C
    function SetBrushOrgEx(X:Integer; Y:Integer; PrevPt:PPoint):LongBool; stdcall;//00407994
    function SetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadSTructs:void ):LongWord; stdcall;//0040799C
    function SetEnhMetaFileBits(p2:PChar):HENHMETAFILE; stdcall;//004079A4
    function SetMapMode(p2:Integer):Integer; stdcall;//004079AC
    function SetPixel(X:Integer; Y:Integer; Color:DWORD):DWORD; stdcall;//004079B4
    function SetROP2(p2:Integer):Integer; stdcall;//004079BC
    function SetStretchBltMode(StretchMode:Integer):Integer; stdcall;//004079C4
    function SetTextColor(Color:DWORD):DWORD; stdcall;//004079CC
    function SetViewportOrgEx(X:Integer; Y:Integer; Point:PPoint):LongBool; stdcall;//004079D4
    function SetWinMetaFileBits(p2:PChar; p3:HDC; const p4:tagMETAFILEPICT):HENHMETAFILE; stdcall;//004079DC
    function SetWindowOrgEx(X:Integer; Y:Integer; Point:PPoint):LongBool; stdcall;//004079E4
    function StartDocA(const p2:_DOCINFOA):Integer; stdcall;//004079EC
    function StartDocW(const p2:_DOCINFOW):Integer; stdcall;//004079F4
    function StartPage:Integer; stdcall;//004079FC
    function StretchBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; SrcWidth:Integer; SrcHeight:Integer; Rop:DWORD):LongBool; stdcall;//00407A04
    function TextOutA(X:Integer; Y:Integer; Str:PAnsiChar; Count:Integer):LongBool; stdcall;//00407A0C
    function TextOutW(X:Integer; Y:Integer; Str:PWideChar; Count:Integer):LongBool; stdcall;//00407A14
    function UnrealizeObject:LongBool; stdcall;//00407A1C
    function ActivateKeyboardLayout(Flags:LongWord):HKL; stdcall;//00407A24
    function AdjustWindowRectEx(dwStyle:DWORD; bMenu:LongBool; dwExStyle:DWORD):LongBool; stdcall;//00407A2C
    function CharLowerA:PAnsiChar; stdcall;//00407A34
    function AttachThreadInput(idAttachTo:DWORD; fAttach:LongBool):LongBool; stdcall;//00407A3C
    function BeginDeferWindowPos:THandle; stdcall;//00407A44
    function BeginPaint(var lpPaint:tagPAINTSTRUCT):HDC; stdcall;//00407A4C
    function BringWindowToTop:LongBool; stdcall;//00407A54
    function CallNextHookEx(nCode:Integer; wParam:Longint; lParam:Longint):Longint; stdcall;//00407A5C
    function CallWindowProcA(hWnd:HWND; Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407A64
    function CallWindowProcA(hWnd:HWND; Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407A6C
    function CallWindowProcW(hWnd:HWND; Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407A74
    function CharLowerBuffA(cchLength:DWORD):DWORD; stdcall;//00407A7C
    function CharNextA:PAnsiChar; stdcall;//00407A84
    function CharToOemA(lpszDst:PAnsiChar):LongBool; stdcall;//00407A8C
    function CharUpperBuffA(cchLength:DWORD):DWORD; stdcall;//00407A94
    function CheckMenuItem(uIDCheckItem:LongWord; uCheck:LongWord):DWORD; stdcall;//00407A9C
    function ChildWindowFromPoint(Point:TPoint):HWND; stdcall;//00407AA4
    function ClientToScreen(var lpPoint:TPoint):LongBool; stdcall;//00407AAC
    function CloseClipboard:LongBool;//00407AB4
    function CreateIcon(nWidth:Integer; nHeight:Integer; cPlanes:Byte; cBitsPixel:Byte; lpbANDbits:Pointer; lpbXORbits:Pointer):HICON; stdcall;//00407ABC
    function CreateMenu(ParentMenu:AnsiString; FunctionName:AnsiString; AHeight:Integer; AWidth:Integer; AOnMouseOutEvent:AnsiString; AOnMouseOverEvent:AnsiString; AOnClickEvent:AnsiString; AHighLightTextColor:TColor; ATextColor:TColor; AHighlightColor:TColor; AColor:TColor; AImage2:AnsiString; AImage1:AnsiString; Target:AnsiString; LinkAddr:AnsiString):AnsiString;//00407AC4
    function CreatePopupMenu:HMENU;//00407ACC
    function DefFrameProcA(hWndMDIClient:HWND; uMsg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407AD4
    function DefMDIChildProcA(uMsg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407ADC
    function DefWindowProcA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407AE4
    function DefWindowProcA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407AEC
    function DefWindowProcW(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407AF4
    function DeferWindowPos(hWnd:HWND; hWndInsertAfter:HWND; x:Integer; y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):THandle; stdcall;//00407AFC
    function DeleteMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;//00407B04
    function DestroyCursor:LongBool; stdcall;//00407B0C
    function DestroyIcon:LongBool; stdcall;//00407B14
    function DestroyMenu:LongBool; stdcall;//00407B1C
    function DestroyWindow:LongBool; stdcall;//00407B24
    function DispatchMessageA:Longint; stdcall;//00407B2C
    function DrawEdge(var qrc:TRect; edge:LongWord; grfFlags:LongWord):LongBool; stdcall;//00407B34
    function DrawFocusRect(const lprc:TRect):LongBool; stdcall;//00407B3C
    function DrawFrameControl(const Rect:TRect; uType:LongWord; uState:LongWord):LongBool; stdcall;//00407B44
    function DrawIcon(X:Integer; Y:Integer; hIcon:HICON):LongBool; stdcall;//00407B4C
    function DrawIconEx(xLeft:Integer; yTop:Integer; hIcon:HICON; cxWidth:Integer; cyWidth:Integer; istepIfAniCur:LongWord; hbrFlickerFreeDraw:HBRUSH; diFlags:LongWord):LongBool; stdcall;//00407B54
    function DrawMenuBar:LongBool; stdcall;//00407B5C
    function DrawStateA(Brush:HBRUSH; CBFunc:Pointer; lData:Longint; wData:Longint; x:Integer; y:Integer; cx:Integer; cy:Integer; Flags:LongWord):LongBool; stdcall;//00407B64
    function DrawTextA(lpString:PAnsiChar; nCount:Integer; var lpRect:TRect; uFormat:LongWord):Integer; stdcall;//00407B6C
    function DrawTextA(lpString:PAnsiChar; nCount:Integer; var lpRect:TRect; uFormat:LongWord):Integer; stdcall;//00407B74
    function DrawTextW(lpString:PWideChar; nCount:Integer; var lpRect:TRect; uFormat:LongWord):Integer; stdcall;//00407B7C
    function EmptyClipboard:LongBool;//00407B84
    function EnableMenuItem(uIDEnableItem:LongWord; uEnable:LongWord):LongBool; stdcall;//00407B8C
    function EnableScrollBar(wSBflags:LongWord; wArrows:LongWord):LongBool; stdcall;//00407B94
    function EnableWindow(bEnable:LongBool):LongBool; stdcall;//00407B9C
    function EndDeferWindowPos:LongBool; stdcall;//00407BA4
    function EndPaint(const lpPaint:tagPAINTSTRUCT):LongBool; stdcall;//00407BAC
    function EnumThreadWindows(lpfn:Pointer; lParam:Longint):LongBool; stdcall;//00407BB4
    function EnumWindows(lParam:Longint):LongBool; stdcall;//00407BBC
    function EqualRect(const lprc2:TRect):LongBool; stdcall;//00407BC4
    function FillRect(const lprc:TRect; hbr:HBRUSH):Integer; stdcall;//00407BCC
    function FindWindowA(lpWindowName:PAnsiChar):HWND; stdcall;//00407BD4
    function FindWindowA(lpWindowName:PAnsiChar):HWND; stdcall;//00407BDC
    function FrameRect(const lprc:TRect; hbr:HBRUSH):Integer; stdcall;//00407BE4
    function GetActiveWindow:HWND;//00407BEC
    function GetAsyncKeyState:Smallint; stdcall;//00407BF4
    function GetCapture:HWND;//00407BFC
    function GetClassInfoA(lpClassName:PAnsiChar; var lpWndClass:tagWNDCLASSA):LongBool; stdcall;//00407C04
    function GetClassNameA(lpClassName:PAnsiChar; nMaxCount:Integer):Integer; stdcall;//00407C0C
    function GetClassNameA(lpClassName:PAnsiChar; nMaxCount:Integer):Integer; stdcall;//00407C14
    function GetClientRect(var lpRect:TRect):LongBool; stdcall;//00407C1C
    function GetClipboardData:THandle; stdcall;//00407C24
    function GetCursor:HICON;//00407C2C
    function GetCursorPos:LongBool; stdcall;//00407C34
    function GetDC:HDC; stdcall;//00407C3C
    function GetDCEx(hrgnClip:HRGN; flags:DWORD):HDC; stdcall;//00407C44
    function GetDesktopWindow:HWND;//00407C4C
    function GetFocus:HWND;//00407C54
    function GetForegroundWindow:HWND;//00407C5C
    function GetIconInfo(var piconinfo:_ICONINFO):LongBool; stdcall;//00407C64
    function GetKeyNameTextA(lpString:PAnsiChar; nSize:Integer):Integer; stdcall;//00407C6C
    function GetKeyState:Smallint; stdcall;//00407C74
    function GetKeyboardLayout:HKL; stdcall;//00407C7C
    function GetKeyboardLayoutList(var List:void ):LongWord; stdcall;//00407C84
    function GetKeyboardState:LongBool; stdcall;//00407C8C
    function GetLastActivePopup:HWND; stdcall;//00407C94
    function GetMenu:HMENU; stdcall;//00407C9C
    function GetMenuItemCount:Integer; stdcall;//00407CA4
    function GetMenuItemID(nPos:Integer):LongWord; stdcall;//00407CAC
    function GetMenuItemInfoA(p2:LongWord; p3:LongBool; var p4:tagMENUITEMINFOA):LongBool; stdcall;//00407CB4
    function GetMenuState(uId:LongWord; uFlags:LongWord):LongWord; stdcall;//00407CBC
    function GetMenuStringA(uIDItem:LongWord; lpString:PAnsiChar; nMaxCount:Integer; uFlag:LongWord):Integer; stdcall;//00407CC4
    function GetMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord):LongBool; stdcall;//00407CCC
    function GetMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord):LongBool; stdcall;//00407CD4
    function GetMessageW(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord):LongBool; stdcall;//00407CDC
    function GetMessagePos:DWORD;//00407CE4
    function GetWindow(uCmd:LongWord):HWND; stdcall;//00407CEC
    function GetParent:HWND; stdcall;//00407CF4
    function GetPropA(lpString:PAnsiChar):THandle; stdcall;//00407CFC
    function GetScrollInfo(BarFlag:Integer; var ScrollInfo:tagSCROLLINFO):LongBool; stdcall;//00407D04
    function GetScrollPos(nBar:Integer):Integer; stdcall;//00407D0C
    function GetScrollRange(nBar:Integer; var lpMinPos:Integer; var lpMaxPos:Integer):LongBool; stdcall;//00407D14
    function GetSubMenu(nPos:Integer):HMENU; stdcall;//00407D1C
    function GetSysColor:DWORD; stdcall;//00407D24
    function GetSysColorBrush:HBRUSH; stdcall;//00407D2C
    function GetSystemMenu(bRevert:LongBool):HMENU; stdcall;//00407D34
    function GetSystemMetrics:Integer; stdcall;//00407D3C
    function GetTopWindow:HWND; stdcall;//00407D44
    function GetWindow(uCmd:LongWord):HWND; stdcall;//00407D4C
    function GetWindowDC:HDC; stdcall;//00407D54
    function GetWindowLongA(nIndex:Integer):Longint; stdcall;//00407D5C
    function GetWindowLongA(nIndex:Integer):Longint; stdcall;//00407D64
    function GetWindowPlacement(WindowPlacement:PWindowPlacement):LongBool; stdcall;//00407D6C
    function GetWindowRect(var lpRect:TRect):LongBool; stdcall;//00407D74
    function GetWindowTextA(lpString:PAnsiChar; nMaxCount:Integer):Integer; stdcall;//00407D7C
    function GetWindowTextA(lpString:PAnsiChar; nMaxCount:Integer):Integer; stdcall;//00407D84
    function GetWindowTextW(lpString:PWideChar; nMaxCount:Integer):Integer; stdcall;//00407D8C
    function GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;//00407D94
    function GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;//00407D9C
    function HideCaret:LongBool; stdcall;//00407DA4
    function InflateRect(dx:Integer; dy:Integer):LongBool; stdcall;//00407DAC
    function InsertMenuA(uPosition:LongWord; uFlags:LongWord; uIDNewItem:LongWord; lpNewItem:PAnsiChar):LongBool; stdcall;//00407DB4
    function InsertMenuItemA(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOA):LongBool; stdcall;//00407DBC
    function IntersectRect(const lprcSrc1:TRect; const lprcSrc2:TRect):LongBool; stdcall;//00407DC4
    function InvalidateRect(lpRect:PRect; bErase:LongBool):LongBool; stdcall;//00407DCC
    function IsChild(hWnd:HWND):LongBool; stdcall;//00407DD4
    function IsDialogMessageA(var lpMsg:tagMSG):LongBool; stdcall;//00407DDC
    function IsIconic:LongBool; stdcall;//00407DE4
    function IsRectEmpty:LongBool; stdcall;//00407DEC
    function IsWindow:LongBool; stdcall;//00407DF4
    function IsWindowEnabled:LongBool; stdcall;//00407DFC
    function IsWindowUnicode:LongBool; stdcall;//00407E04
    function IsWindowVisible:LongBool; stdcall;//00407E0C
    function IsZoomed:LongBool; stdcall;//00407E14
    function KillTimer(uIDEvent:LongWord):LongBool; stdcall;//00407E1C
    function LoadBitmapA(lpBitmapName:PAnsiChar):HBITMAP; stdcall;//00407E24
    function LoadCursorA(lpCursorName:PAnsiChar):HICON; stdcall;//00407E2C
    function LoadIconA(lpIconName:PAnsiChar):HICON; stdcall;//00407E34
    function LoadImageA(ImageName:PAnsiChar; ImageType:LongWord; X:Integer; Y:Integer; Flags:LongWord):THandle; stdcall;//00407E3C
    function LoadImageW(ImageName:PWideChar; ImageType:LongWord; X:Integer; Y:Integer; Flags:LongWord):THandle; stdcall;//00407E44
    function LoadKeyboardLayoutA(Flags:LongWord):HKL; stdcall;//00407E4C
    function LoadStringA(uID:LongWord; lpBuffer:PAnsiChar; nBufferMax:Integer):Integer; stdcall;//00407E54
    function MapVirtualKeyA(uMapType:LongWord):LongWord; stdcall;//00407E5C
    function MapWindowPoints(hWndTo:HWND; var lpPoints:void ; cPoints:LongWord):Integer; stdcall;//00407E64
    function MessageBeep:LongBool; stdcall;//00407E6C
    function MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;//00407E74
    function MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;//00407E7C
    function MessageBoxW(lpText:PWideChar; lpCaption:PWideChar; uType:LongWord):Integer; stdcall;//00407E84
    function MsgWaitForMultipleObjects(var pHandles:void ; fWaitAll:LongBool; dwMilliseconds:DWORD; dwWakeMask:DWORD):DWORD; stdcall;//00407E8C
    function OemToCharA(lpszDst:PAnsiChar):LongBool; stdcall;//00407E94
    function OffsetRect(DX:Integer; DY:Integer):Boolean;//00407E9C
    function OpenClipboard:LongBool; stdcall;//00407EA4
    function PeekMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;//00407EAC
    function PeekMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;//00407EB4
    function PeekMessageW(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;//00407EBC
    function PostMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):LongBool; stdcall;//00407EC4
    function PostMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):LongBool; stdcall;//00407ECC
    procedure PostQuitMessage; stdcall;//00407ED4
    function PostThreadMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):LongBool; stdcall;//00407EDC
    function PostThreadMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):LongBool; stdcall;//00407EE4
    function PtInRect(const P:TPoint):Boolean;//00407EEC
    function RedrawWindow(lprcUpdate:PRect; hrgnUpdate:HRGN; flags:LongWord):LongBool; stdcall;//00407EF4
    function RegisterClassA:Word; stdcall;//00407EFC
    function RegisterClassA:Word; stdcall;//00407F04
    function RegisterClassW:Word; stdcall;//00407F0C
    function RegisterClipboardFormatA:LongWord; stdcall;//00407F14
    function RegisterWindowMessageA:LongWord; stdcall;//00407F1C
    function ReleaseCapture:LongBool;//00407F24
    function ReleaseDC(hDC:HDC):Integer; stdcall;//00407F2C
    function RemoveMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;//00407F34
    function RemovePropA(lpString:PAnsiChar):THandle; stdcall;//00407F3C
    function ScreenToClient(var lpPoint:TPoint):LongBool; stdcall;//00407F44
    function ScrollWindow(XAmount:Integer; YAmount:Integer; Rect:PRect; ClipRect:PRect):LongBool; stdcall;//00407F4C
    function SendMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407F54
    function SendMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407F5C
    function SendMessageW(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;//00407F64
    function SendMessageTimeoutA(Msg:LongWord; wParam:Longint; lParam:Longint; fuFlags:LongWord; uTimeout:LongWord; var lpdwResult:DWORD):Longint; stdcall;//00407F6C
    function SetActiveWindow:HWND; stdcall;//00407F74
    function SetCapture:HWND; stdcall;//00407F7C
    function SetClassLongA(nIndex:Integer; dwNewLong:Longint):DWORD; stdcall;//00407F84
    function SetClipboardData(hMem:THandle):THandle; stdcall;//00407F8C
    function SetCursor:HICON; stdcall;//00407F94
    function SetFocus:HWND; stdcall;//00407F9C
    function SetForegroundWindow:LongBool; stdcall;//00407FA4
    function SetMenu(hMenu:HMENU):LongBool; stdcall;//00407FAC
    function SetMenuItemInfoA(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOA):LongBool; stdcall;//00407FB4
    function SetParent(hWndNewParent:HWND):HWND; stdcall;//00407FBC
    function SetPropA(lpString:PAnsiChar; hData:THandle):LongBool; stdcall;//00407FC4
    function SetRect(xLeft:Integer; yTop:Integer; xRight:Integer; yBottom:Integer):LongBool; stdcall;//00407FCC
    function SetScrollInfo(BarFlag:Integer; const ScrollInfo:tagSCROLLINFO; Redraw:LongBool):Integer; stdcall;//00407FD4
    function SetScrollPos(nBar:Integer; nPos:Integer; bRedraw:LongBool):Integer; stdcall;//00407FDC
    function SetScrollRange(nBar:Integer; nMinPos:Integer; nMaxPos:Integer; bRedraw:LongBool):LongBool; stdcall;//00407FE4
    function SetTimer(nIDEvent:LongWord; uElapse:LongWord; lpTimerFunc:Pointer):LongWord; stdcall;//00407FEC
    function SetWindowLongA(nIndex:Integer; dwNewLong:Longint):Longint; stdcall;//00407FF4
    function SetWindowLongA(nIndex:Integer; dwNewLong:Longint):Longint; stdcall;//00407FFC
    function SetWindowLongW(nIndex:Integer; dwNewLong:Longint):Longint; stdcall;//00408004
    function SetWindowPlacement(WindowPlacement:PWindowPlacement):LongBool; stdcall;//0040800C
    function SetWindowPos(hWndInsertAfter:HWND; X:Integer; Y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):LongBool; stdcall;//00408014
    function SetWindowTextA(lpString:PAnsiChar):LongBool; stdcall;//0040801C
    function SetWindowTextA(lpString:PAnsiChar):LongBool; stdcall;//00408024
    function SetWindowTextW(lpString:PWideChar):LongBool; stdcall;//0040802C
    function SetWindowsHookExA(lpfn:TFNHookProc; hmod:HINST; dwThreadId:DWORD):HHOOK; stdcall;//00408034
    function ShowCaret:LongBool; stdcall;//0040803C
    function ShowCursor:Integer; stdcall;//00408044
    function ShowOwnedPopups(fShow:LongBool):LongBool; stdcall;//0040804C
    function ShowScrollBar(wBar:Integer; bShow:LongBool):LongBool; stdcall;//00408054
    function ShowWindow(nCmdShow:Integer):LongBool; stdcall;//0040805C
    function SystemParametersInfoA(uiParam:LongWord; pvParam:Pointer; fWinIni:LongWord):LongBool; stdcall;//00408064
    function TrackPopupMenu(uFlags:LongWord; x:Integer; y:Integer; nReserved:Integer; hWnd:HWND; prcRect:PRect):LongBool; stdcall;//0040806C
    function TranslateMDISysAccel(const lpMsg:tagMSG):LongBool; stdcall;//00408074
    function TranslateMessage:LongBool; stdcall;//0040807C
    function UnhookWindowsHookEx:LongBool; stdcall;//00408084
    function UnregisterClassA(hInstance:HINST):LongBool; stdcall;//0040808C
    function UpdateWindow:LongBool; stdcall;//00408094
    function WaitMessage:LongBool;//0040809C
    function WinHelpA(lpszHelp:PAnsiChar; uCommand:LongWord; dwData:DWORD):LongBool; stdcall;//004080A4
    function WindowFromPoint:HWND; stdcall;//004080AC
    //function sub_004080B4(?:Longint; ?:?):?;//004080B4
    //function sub_004080DC(?:DWORD):?;//004080DC
    //function sub_004080F8:?;//004080F8
    //procedure sub_0040810C(?:?; ?:WideString; ?:?);//0040810C
    //procedure sub_00408130(?:Pointer; ?:?);//00408130
    //function sub_00408150(?:THandle):?;//00408150
    //function sub_00408168:?;//00408168
    //function sub_00408178:?;//00408178
    procedure sub_00408194;//00408194
    //function sub_004081A8(?:?; ?:?):?;//004081A8
    //function sub_004081CC(?:?; ?:?; ?:Integer):?;//004081CC
    //function sub_00408200(?:?):?;//00408200
    //function sub_00408218(?:?):?;//00408218
    //function sub_00408234(?:?):?;//00408234
    //procedure sub_00408250(?:?; ?:TPoint);//00408250
    //function sub_00408274(?:TPoint):?;//00408274
    //function sub_0040829C(?:?; ?:?):?;//0040829C
    //function sub_004082C4(?:Longint; ?:Longint):?;//004082C4
    function CreateWindowExA(dwExStyle:DWORD; lpClassName:PAnsiChar; lpParam:Pointer; hInstance:HINST; hMenu:HMENU; hWndParent:HWND; nHeight:Integer; nWidth:Integer; Y:Integer; X:Integer; dwStyle:DWORD):HWND;//004082EC
    function CreateWindowExA(dwExStyle:DWORD; lpClassName:PAnsiChar; lpParam:Pointer; hInstance:HINST; hMenu:HMENU; hWndParent:HWND; nHeight:Integer; nWidth:Integer; Y:Integer; X:Integer; dwStyle:DWORD):HWND;//004082F4
    function CreateWindowExW(dwExStyle:DWORD; lpClassName:PWideChar; lpParam:Pointer; hInstance:HINST; hMenu:HMENU; hWndParent:HWND; nHeight:Integer; nWidth:Integer; Y:Integer; X:Integer; dwStyle:DWORD):HWND;//004082FC
    //function sub_00408304(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00408304
    //function sub_00408368(?:?; ?:PChar; ?:PChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00408368
    //function sub_004083CC(?:?; ?:?; ?:PWideChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004083CC
    //function sub_00408430(?:?; ?:PChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00408430
    //function sub_00408490(?:PChar; ?:PChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00408490
    //function sub_004084F0(?:PWideChar; ?:PWideChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004084F0
    //function sub_00408550(?:?; ?:?; ?:?; ?:?; ?:?):?;//00408550

implementation

//004070BC
function advapi32.AllocateAndInitializeSid(nSubAuthorityCount:Byte; nSubAuthority0:DWORD; nSubAuthority1:DWORD; nSubAuthority2:DWORD; nSubAuthority3:DWORD; nSubAuthority4:DWORD; nSubAuthority5:DWORD; nSubAuthority6:DWORD; nSubAuthority7:DWORD; var pSid:Pointer):LongBool; stdcall;
begin
{*
 004070BC    jmp         dword ptr ds:[55F320]
*}
end;

//004070C4
function advapi32.FreeSid:Pointer; stdcall;
begin
{*
 004070C4    jmp         dword ptr ds:[55F31C]
*}
end;

//004070CC
function advapi32.GetTokenInformation(TokenInformationClass:TTokenInformationClass; TokenInformation:Pointer; TokenInformationLength:DWORD; var ReturnLength:DWORD):LongBool; stdcall;
begin
{*
 004070CC    jmp         dword ptr ds:[55F318]
*}
end;

//004070D4
function advapi32.GetUserNameA(var nSize:DWORD):LongBool; stdcall;
begin
{*
 004070D4    jmp         dword ptr ds:[55F314]
*}
end;

//004070DC
function advapi32.GetUserNameW(var nSize:DWORD):LongBool; stdcall;
begin
{*
 004070DC    jmp         dword ptr ds:[55F310]
*}
end;

//004070E4
function advapi32.InitializeSecurityDescriptor(dwRevision:DWORD):LongBool; stdcall;
begin
{*
 004070E4    jmp         dword ptr ds:[55F30C]
*}
end;

//004070EC
function advapi32.OpenProcessToken(DesiredAccess:DWORD; var TokenHandle:THandle):LongBool; stdcall;
begin
{*
 004070EC    jmp         dword ptr ds:[55F308]
*}
end;

//004070F4
function advapi32.RegCloseKey:Integer; stdcall;
begin
{*
 004070F4    jmp         dword ptr ds:[55F304]
*}
end;

//004070FC
function advapi32.RegCreateKeyExA(lpSubKey:PAnsiChar; Reserved:DWORD; lpClass:PAnsiChar; dwOptions:DWORD; samDesired:DWORD; lpSecurityAttributes:PSecurityAttributes; var phkResult:HKEY; lpdwDisposition:PDWORD):Longint; stdcall;
begin
{*
 004070FC    jmp         dword ptr ds:[55F300]
*}
end;

//00407104
function advapi32.RegCreateKeyExW(lpSubKey:PWideChar; Reserved:DWORD; lpClass:PWideChar; dwOptions:DWORD; samDesired:DWORD; lpSecurityAttributes:PSecurityAttributes; var phkResult:HKEY; lpdwDisposition:PDWORD):Longint; stdcall;
begin
{*
 00407104    jmp         dword ptr ds:[55F2FC]
*}
end;

//0040710C
function advapi32.RegDeleteValueA(lpValueName:PAnsiChar):Longint; stdcall;
begin
{*
 0040710C    jmp         dword ptr ds:[55F2F8]
*}
end;

//00407114
function advapi32.RegDeleteValueW(lpValueName:PWideChar):Longint; stdcall;
begin
{*
 00407114    jmp         dword ptr ds:[55F2F4]
*}
end;

//0040711C
function advapi32.RegEnumKeyA(dwIndex:DWORD; lpName:PAnsiChar; cbName:DWORD):Longint; stdcall;
begin
{*
 0040711C    jmp         dword ptr ds:[55F2F0]
*}
end;

//00407124
function advapi32.RegOpenKeyExA(lpSubKey:PAnsiChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;
begin
{*
 00407124    jmp         dword ptr ds:[55F2EC]
*}
end;

//0040712C
function advapi32.RegOpenKeyExA(lpSubKey:PAnsiChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;
begin
{*
 0040712C    jmp         dword ptr ds:[55F2EC]
*}
end;

//00407134
function advapi32.RegOpenKeyExW(lpSubKey:PWideChar; ulOptions:DWORD; samDesired:DWORD; var phkResult:HKEY):Longint; stdcall;
begin
{*
 00407134    jmp         dword ptr ds:[55F2E8]
*}
end;

//0040713C
function advapi32.RegQueryInfoKeyA(lpClass:PChar; lpcbClass:PDWORD; lpReserved:Pointer; lpcSubKeys:PDWORD; lpcbMaxSubKeyLen:PDWORD; lpcbMaxClassLen:PDWORD; lpcValues:PDWORD; lpcbMaxValueNameLen:PDWORD; lpcbMaxValueLen:PDWORD; lpcbSecurityDescriptor:PDWORD; lpftLastWriteTime:PFileTime):Longint; stdcall;
begin
{*
 0040713C    jmp         dword ptr ds:[55F2E4]
*}
end;

//00407144
function advapi32.RegQueryValueExA(lpValueName:PAnsiChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;
begin
{*
 00407144    jmp         dword ptr ds:[55F2E0]
*}
end;

//0040714C
function advapi32.RegQueryValueExA(lpValueName:PAnsiChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;
begin
{*
 0040714C    jmp         dword ptr ds:[55F2E0]
*}
end;

//00407154
function advapi32.RegQueryValueExW(lpValueName:PWideChar; lpReserved:Pointer; lpType:PDWORD; lpData:PByte; lpcbData:PDWORD):Longint; stdcall;
begin
{*
 00407154    jmp         dword ptr ds:[55F2DC]
*}
end;

//0040715C
function advapi32.RegSetValueExA(lpValueName:PAnsiChar; Reserved:DWORD; dwType:DWORD; lpData:Pointer; cbData:DWORD):Longint; stdcall;
begin
{*
 0040715C    jmp         dword ptr ds:[55F2D8]
*}
end;

//00407164
function advapi32.RegSetValueExW(lpValueName:PWideChar; Reserved:DWORD; dwType:DWORD; lpData:Pointer; cbData:DWORD):Longint; stdcall;
begin
{*
 00407164    jmp         dword ptr ds:[55F2D4]
*}
end;

//0040716C
function advapi32.SetSecurityDescriptorDacl(bDaclPresent:LongBool; pDacl:PACL; bDaclDefaulted:LongBool):LongBool; stdcall;
begin
{*
 0040716C    jmp         dword ptr ds:[55F2D0]
*}
end;

//00407174
function kernel32.Beep(dwDuration:DWORD):LongBool; stdcall;
begin
{*
 00407174    jmp         dword ptr ds:[55F588]
*}
end;

//0040717C
function kernel32.CloseHandle:Integer; stdcall;
begin
{*
 0040717C    jmp         dword ptr ds:[55F584]
*}
end;

//00407184
function kernel32.CompareStringA(dwCmpFlags:DWORD; lpString1:PAnsiChar; cchCount1:Integer; lpString2:PAnsiChar; cchCount2:Integer):Integer; stdcall;
begin
{*
 00407184    jmp         dword ptr ds:[55F580]
*}
end;

//0040718C
function kernel32.CopyFileA(lpNewFileName:PAnsiChar; bFailIfExists:LongBool):LongBool; stdcall;
begin
{*
 0040718C    jmp         dword ptr ds:[55F57C]
*}
end;

//00407194
function kernel32.CopyFileW(lpNewFileName:PWideChar; bFailIfExists:LongBool):LongBool; stdcall;
begin
{*
 00407194    jmp         dword ptr ds:[55F578]
*}
end;

//0040719C
function kernel32.CreateDirectoryA(lpSecurityAttributes:PSecurityAttributes):LongBool; stdcall;
begin
{*
 0040719C    jmp         dword ptr ds:[55F574]
*}
end;

//004071A4
function kernel32.CreateDirectoryW(lpSecurityAttributes:PSecurityAttributes):LongBool; stdcall;
begin
{*
 004071A4    jmp         dword ptr ds:[55F570]
*}
end;

//004071AC
function kernel32.CreateEventA(bManualReset:LongBool; bInitialState:LongBool; lpName:PAnsiChar):THandle; stdcall;
begin
{*
 004071AC    jmp         dword ptr ds:[55F56C]
*}
end;

//004071B4
function kernel32.CreateEventA(bManualReset:LongBool; bInitialState:LongBool; lpName:PAnsiChar):THandle; stdcall;
begin
{*
 004071B4    jmp         dword ptr ds:[55F56C]
*}
end;

//004071BC
function kernel32.CreateFileA(dwDesiredAccess:Integer; dwShareMode:Integer; lpSecurityAttributes:Pointer; dwCreationDisposition:Integer; dwFlagsAndAttributes:Integer; hTemplateFile:Integer):Integer; stdcall;
begin
{*
 004071BC    jmp         dword ptr ds:[55F568]
*}
end;

//004071C4
function kernel32.CreateFileA(dwDesiredAccess:Integer; dwShareMode:Integer; lpSecurityAttributes:Pointer; dwCreationDisposition:Integer; dwFlagsAndAttributes:Integer; hTemplateFile:Integer):Integer; stdcall;
begin
{*
 004071C4    jmp         dword ptr ds:[55F568]
*}
end;

//004071CC
function kernel32.CreateFileW(dwDesiredAccess:DWORD; dwShareMode:DWORD; lpSecurityAttributes:PSecurityAttributes; dwCreationDisposition:DWORD; dwFlagsAndAttributes:DWORD; hTemplateFile:THandle):THandle; stdcall;
begin
{*
 004071CC    jmp         dword ptr ds:[55F564]
*}
end;

//004071D4
function kernel32.CreateFileMappingA(lpFileMappingAttributes:PSecurityAttributes; flProtect:DWORD; dwMaximumSizeHigh:DWORD; dwMaximumSizeLow:DWORD; lpName:PAnsiChar):THandle; stdcall;
begin
{*
 004071D4    jmp         dword ptr ds:[55F560]
*}
end;

//004071DC
function kernel32.CreateFileMappingA(lpFileMappingAttributes:PSecurityAttributes; flProtect:DWORD; dwMaximumSizeHigh:DWORD; dwMaximumSizeLow:DWORD; lpName:PAnsiChar):THandle; stdcall;
begin
{*
 004071DC    jmp         dword ptr ds:[55F560]
*}
end;

//004071E4
function kernel32.CreateFileMappingW(lpFileMappingAttributes:PSecurityAttributes; flProtect:DWORD; dwMaximumSizeHigh:DWORD; dwMaximumSizeLow:DWORD; lpName:PWideChar):THandle; stdcall;
begin
{*
 004071E4    jmp         dword ptr ds:[55F55C]
*}
end;

//004071EC
function kernel32.CreateMutexA(bInitialOwner:LongBool; lpName:PAnsiChar):THandle; stdcall;
begin
{*
 004071EC    jmp         dword ptr ds:[55F558]
*}
end;

//004071F4
{*function sub_004071F4(?:?; ?:?; ?:?):?;
begin
 004071F4    push        ebp
 004071F5    mov         ebp,esp
 004071F7    push        ecx
 004071F8    mov         eax,dword ptr [ebp+10]
 004071FB    push        eax
 004071FC    cmp         dword ptr [ebp+0C],1
 00407200    sbb         eax,eax
 00407202    inc         eax
 00407203    and         eax,7F
 00407206    push        eax
 00407207    mov         eax,dword ptr [ebp+8]
 0040720A    push        eax
 0040720B    call        kernel32.CreateMutexA
 00407210    mov         dword ptr [ebp-4],eax
 00407213    mov         eax,dword ptr [ebp-4]
 00407216    pop         ecx
 00407217    pop         ebp
 00407218    ret         0C
end;*}

//0040721C
function kernel32.CreateMutexA(bInitialOwner:LongBool; lpName:PAnsiChar):THandle; stdcall;
begin
{*
 0040721C    jmp         dword ptr ds:[55F558]
*}
end;

//00407224
{*function sub_00407224(?:?; ?:?; ?:?):?;
begin
 00407224    push        ebp
 00407225    mov         ebp,esp
 00407227    push        ecx
 00407228    mov         eax,dword ptr [ebp+10]
 0040722B    push        eax
 0040722C    cmp         dword ptr [ebp+0C],1
 00407230    sbb         eax,eax
 00407232    inc         eax
 00407233    and         eax,7F
 00407236    push        eax
 00407237    mov         eax,dword ptr [ebp+8]
 0040723A    push        eax
 0040723B    call        kernel32.CreateMutexA
 00407240    mov         dword ptr [ebp-4],eax
 00407243    mov         eax,dword ptr [ebp-4]
 00407246    pop         ecx
 00407247    pop         ebp
 00407248    ret         0C
end;*}

//0040724C
function kernel32.CreatePipe(var hWritePipe:THandle; lpPipeAttributes:PSecurityAttributes; nSize:DWORD):LongBool; stdcall;
begin
{*
 0040724C    jmp         dword ptr ds:[55F554]
*}
end;

//00407254
function kernel32.CreateProcessA(lpCommandLine:PAnsiChar; lpProcessAttributes:PSecurityAttributes; lpThreadAttributes:PSecurityAttributes; bInheritHandles:LongBool; dwCreationFlags:DWORD; lpEnvironment:Pointer; lpCurrentDirectory:PAnsiChar; const lpStartupInfo:_STARTUPINFOA; var lpProcessInformation:_PROCESS_INFORMATION):LongBool; stdcall;
begin
{*
 00407254    jmp         dword ptr ds:[55F550]
*}
end;

//0040725C
function kernel32.CreateProcessW(lpCommandLine:PWideChar; lpProcessAttributes:PSecurityAttributes; lpThreadAttributes:PSecurityAttributes; bInheritHandles:LongBool; dwCreationFlags:DWORD; lpEnvironment:Pointer; lpCurrentDirectory:PWideChar; const lpStartupInfo:_STARTUPINFOA; var lpProcessInformation:_PROCESS_INFORMATION):LongBool; stdcall;
begin
{*
 0040725C    jmp         dword ptr ds:[55F54C]
*}
end;

//00407264
function kernel32.CreateThread(dwStackSize:DWORD; lpStartAddress:Pointer; lpParameter:Pointer; dwCreationFlags:DWORD; var lpThreadId:DWORD):THandle; stdcall;
begin
{*
 00407264    jmp         dword ptr ds:[55F548]
*}
end;

//0040726C
procedure kernel32.DeleteCriticalSection; stdcall;
begin
{*
 0040726C    jmp         dword ptr ds:[55F544]
*}
end;

//00407274
function kernel32.DeleteFileA:LongBool; stdcall;
begin
{*
 00407274    jmp         dword ptr ds:[55F540]
*}
end;

//0040727C
function kernel32.DeleteFileA:LongBool; stdcall;
begin
{*
 0040727C    jmp         dword ptr ds:[55F540]
*}
end;

//00407284
function kernel32.DeleteFileW:LongBool; stdcall;
begin
{*
 00407284    jmp         dword ptr ds:[55F53C]
*}
end;

//0040728C
function kernel32.DuplicateHandle(hSourceHandle:THandle; hTargetProcessHandle:THandle; lpTargetHandle:PHandle; dwDesiredAccess:DWORD; bInheritHandle:LongBool; dwOptions:DWORD):LongBool; stdcall;
begin
{*
 0040728C    jmp         dword ptr ds:[55F538]
*}
end;

//00407294
procedure kernel32.EnterCriticalSection; stdcall;
begin
{*
 00407294    jmp         dword ptr ds:[55F534]
*}
end;

//0040729C
function kernel32.EnumCalendarInfoA(Locale:DWORD; Calendar:DWORD; CalType:DWORD):LongBool; stdcall;
begin
{*
 0040729C    jmp         dword ptr ds:[55F530]
*}
end;

//004072A4
procedure kernel32.ExitProcess; stdcall;
begin
{*
 004072A4    jmp         dword ptr ds:[55F52C]
*}
end;

//004072AC
procedure kernel32.ExitThread; stdcall;
begin
{*
 004072AC    jmp         dword ptr ds:[55F528]
*}
end;

//004072B4
function kernel32.ExpandEnvironmentStringsA(lpDst:PAnsiChar; nSize:DWORD):DWORD; stdcall;
begin
{*
 004072B4    jmp         dword ptr ds:[55F524]
*}
end;

//004072BC
function kernel32.ExpandEnvironmentStringsW(lpDst:PWideChar; nSize:DWORD):DWORD; stdcall;
begin
{*
 004072BC    jmp         dword ptr ds:[55F520]
*}
end;

//004072C4
function kernel32.FileTimeToDosDateTime(var lpFatDate:Word; var lpFatTime:Word):LongBool; stdcall;
begin
{*
 004072C4    jmp         dword ptr ds:[55F51C]
*}
end;

//004072CC
function kernel32.FileTimeToLocalFileTime(var lpLocalFileTime:_FILETIME):LongBool; stdcall;
begin
{*
 004072CC    jmp         dword ptr ds:[55F518]
*}
end;

//004072D4
function kernel32.FileTimeToSystemTime(var lpSystemTime:_SYSTEMTIME):LongBool; stdcall;
begin
{*
 004072D4    jmp         dword ptr ds:[55F514]
*}
end;

//004072DC
procedure kernel32.FindClose;
begin
{*
 004072DC    jmp         dword ptr ds:[55F510]
*}
end;

//004072E4
function kernel32.FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;
begin
{*
 004072E4    jmp         dword ptr ds:[55F50C]
*}
end;

//004072EC
function kernel32.FindFirstFileA(var lpFindFileData:_WIN32_FIND_DATAA):THandle; stdcall;
begin
{*
 004072EC    jmp         dword ptr ds:[55F50C]
*}
end;

//004072F4
function kernel32.FindFirstFileW(var lpFindFileData:_WIN32_FIND_DATAW):THandle; stdcall;
begin
{*
 004072F4    jmp         dword ptr ds:[55F508]
*}
end;

//004072FC
function kernel32.FindNextFileA(var lpFindFileData:_WIN32_FIND_DATAA):LongBool; stdcall;
begin
{*
 004072FC    jmp         dword ptr ds:[55F504]
*}
end;

//00407304
function kernel32.FindNextFileW(var lpFindFileData:_WIN32_FIND_DATAW):LongBool; stdcall;
begin
{*
 00407304    jmp         dword ptr ds:[55F500]
*}
end;

//0040730C
function kernel32.FindResourceA(lpName:PAnsiChar; lpType:PAnsiChar):HRSRC; stdcall;
begin
{*
 0040730C    jmp         dword ptr ds:[55F4FC]
*}
end;

//00407314
function kernel32.FindResourceA(lpName:PAnsiChar; lpType:PAnsiChar):HRSRC; stdcall;
begin
{*
 00407314    jmp         dword ptr ds:[55F4FC]
*}
end;

//0040731C
function kernel32.FindResourceW(lpName:PWideChar; lpType:PWideChar):HRSRC; stdcall;
begin
{*
 0040731C    jmp         dword ptr ds:[55F4F8]
*}
end;

//00407324
function kernel32.FlushInstructionCache(const lpBaseAddress:Pointer; dwSize:DWORD):LongBool; stdcall;
begin
{*
 00407324    jmp         dword ptr ds:[55F4F4]
*}
end;

//0040732C
function kernel32.FormatMessageA(lpSource:Pointer; dwMessageId:DWORD; dwLanguageId:DWORD; lpBuffer:PAnsiChar; nSize:DWORD; Arguments:Pointer):DWORD; stdcall;
begin
{*
 0040732C    jmp         dword ptr ds:[55F4F0]
*}
end;

//00407334
function kernel32.FormatMessageA(lpSource:Pointer; dwMessageId:DWORD; dwLanguageId:DWORD; lpBuffer:PAnsiChar; nSize:DWORD; Arguments:Pointer):DWORD; stdcall;
begin
{*
 00407334    jmp         dword ptr ds:[55F4F0]
*}
end;

//0040733C
function kernel32.FormatMessageW(lpSource:Pointer; dwMessageId:DWORD; dwLanguageId:DWORD; lpBuffer:PWideChar; nSize:DWORD; Arguments:Pointer):DWORD; stdcall;
begin
{*
 0040733C    jmp         dword ptr ds:[55F4EC]
*}
end;

//00407344
function kernel32.FreeLibrary:LongBool; stdcall;
begin
{*
 00407344    jmp         dword ptr ds:[55F4E8]
*}
end;

//0040734C
function kernel32.InterlockedDecrement:Integer;
begin
{*
 0040734C    jmp         dword ptr ds:[55F4E4]
*}
end;

//00407354
function kernel32.InterlockedExchange(B:Integer):Integer;
begin
{*
 00407354    jmp         dword ptr ds:[55F4E0]
*}
end;

//0040735C
function kernel32.InterlockedIncrement:Integer; stdcall;
begin
{*
 0040735C    jmp         dword ptr ds:[55F4DC]
*}
end;

//00407364
function kernel32.FreeResource:LongBool; stdcall;
begin
{*
 00407364    jmp         dword ptr ds:[55F4D8]
*}
end;

//0040736C
function kernel32.GetACP:LongWord;
begin
{*
 0040736C    jmp         dword ptr ds:[55F4D4]
*}
end;

//00407374
function kernel32.GetCPInfo(var lpCPInfo:_cpinfo):LongBool; stdcall;
begin
{*
 00407374    jmp         dword ptr ds:[55F4D0]
*}
end;

//0040737C
function kernel32.GetCommandLineA:PAnsiChar;
begin
{*
 0040737C    jmp         dword ptr ds:[55F4CC]
*}
end;

//00407384
function kernel32.GetCommandLineW:PWideChar;
begin
{*
 00407384    jmp         dword ptr ds:[55F4C8]
*}
end;

//0040738C
function kernel32.GetComputerNameA(var nSize:DWORD):LongBool; stdcall;
begin
{*
 0040738C    jmp         dword ptr ds:[55F4C4]
*}
end;

//00407394
function kernel32.GetComputerNameW(var nSize:DWORD):LongBool; stdcall;
begin
{*
 00407394    jmp         dword ptr ds:[55F4C0]
*}
end;

//0040739C
function kernel32.GetCurrentDirectoryA(lpBuffer:PAnsiChar):DWORD; stdcall;
begin
{*
 0040739C    jmp         dword ptr ds:[55F4BC]
*}
end;

//004073A4
function kernel32.GetCurrentDirectoryW(lpBuffer:PWideChar):DWORD; stdcall;
begin
{*
 004073A4    jmp         dword ptr ds:[55F4B8]
*}
end;

//004073AC
function kernel32.GetCurrentProcess:THandle;
begin
{*
 004073AC    jmp         dword ptr ds:[55F4B4]
*}
end;

//004073B4
function kernel32.GetCurrentProcessId:DWORD;
begin
{*
 004073B4    jmp         dword ptr ds:[55F4B0]
*}
end;

//004073BC
function kernel32.GetCurrentThread:THandle;
begin
{*
 004073BC    jmp         dword ptr ds:[55F4AC]
*}
end;

//004073C4
function kernel32.GetCurrentThreadId:Cardinal;
begin
{*
 004073C4    jmp         dword ptr ds:[55F4A8]
*}
end;

//004073CC
function kernel32.GetDateFormatA(dwFlags:DWORD; lpDate:PSystemTime; lpFormat:PAnsiChar; lpDateStr:PAnsiChar; cchDate:Integer):Integer; stdcall;
begin
{*
 004073CC    jmp         dword ptr ds:[55F4A4]
*}
end;

//004073D4
function kernel32.GetDiskFreeSpaceA(var lpSectorsPerCluster:DWORD; var lpBytesPerSector:DWORD; var lpNumberOfFreeClusters:DWORD; var lpTotalNumberOfClusters:DWORD):LongBool; stdcall;
begin
{*
 004073D4    jmp         dword ptr ds:[55F4A0]
*}
end;

//004073DC
function kernel32.GetExitCodeThread(var lpExitCode:DWORD):LongBool; stdcall;
begin
{*
 004073DC    jmp         dword ptr ds:[55F49C]
*}
end;

//004073E4
function kernel32.GetFileAttributesA:DWORD; stdcall;
begin
{*
 004073E4    jmp         dword ptr ds:[55F498]
*}
end;

//004073EC
function kernel32.GetFileAttributesW:DWORD; stdcall;
begin
{*
 004073EC    jmp         dword ptr ds:[55F494]
*}
end;

//004073F4
function kernel32.GetFileSize(x:Integer):Integer; stdcall;
begin
{*
 004073F4    jmp         dword ptr ds:[55F490]
*}
end;

//004073FC
function kernel32.GetFileTime(lpCreationTime:PFileTime; lpLastAccessTime:PFileTime; lpLastWriteTime:PFileTime):LongBool; stdcall;
begin
{*
 004073FC    jmp         dword ptr ds:[55F48C]
*}
end;

//00407404
function kernel32.GetFullPathNameA(nBufferLength:DWORD; lpBuffer:PAnsiChar; var lpFilePart:PAnsiChar):DWORD; stdcall;
begin
{*
 00407404    jmp         dword ptr ds:[55F488]
*}
end;

//0040740C
function kernel32.GetLastError:Integer;
begin
{*
 0040740C    jmp         dword ptr ds:[55F484]
*}
end;

//00407414
function kernel32.GetLocalTime:TDateTime;
begin
{*
 00407414    jmp         dword ptr ds:[55F480]
*}
end;

//0040741C
function kernel32.GetLocaleInfoA(LCType:DWORD; lpLCData:PAnsiChar; cchData:Integer):Integer; stdcall;
begin
{*
 0040741C    jmp         dword ptr ds:[55F47C]
*}
end;

//00407424
function kernel32.GetLocaleInfoA(LCType:DWORD; lpLCData:PAnsiChar; cchData:Integer):Integer; stdcall;
begin
{*
 00407424    jmp         dword ptr ds:[55F47C]
*}
end;

//0040742C
function kernel32.GetLocaleInfoW(LCType:DWORD; lpLCData:PWideChar; cchData:Integer):Integer; stdcall;
begin
{*
 0040742C    jmp         dword ptr ds:[55F478]
*}
end;

//00407434
function kernel32.GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;
begin
{*
 00407434    jmp         dword ptr ds:[55F474]
*}
end;

//0040743C
function kernel32.GetModuleFileNameA(lpFilename:PAnsiChar; nSize:DWORD):DWORD; stdcall;
begin
{*
 0040743C    jmp         dword ptr ds:[55F474]
*}
end;

//00407444
function kernel32.GetModuleFileNameW(lpFilename:PWideChar; nSize:DWORD):DWORD; stdcall;
begin
{*
 00407444    jmp         dword ptr ds:[55F470]
*}
end;

//0040744C
function kernel32.GetModuleHandleA:HMODULE; stdcall;
begin
{*
 0040744C    jmp         dword ptr ds:[55F46C]
*}
end;

//00407454
function kernel32.GetModuleHandleA:HMODULE; stdcall;
begin
{*
 00407454    jmp         dword ptr ds:[55F46C]
*}
end;

//0040745C
function kernel32.GetModuleHandleW:HMODULE; stdcall;
begin
{*
 0040745C    jmp         dword ptr ds:[55F468]
*}
end;

//00407464
function kernel32.GetPriorityClass:DWORD; stdcall;
begin
{*
 00407464    jmp         dword ptr ds:[55F464]
*}
end;

//0040746C
function kernel32.GetPrivateProfileStringA(lpKeyName:PAnsiChar; lpDefault:PAnsiChar; lpReturnedString:PAnsiChar; nSize:DWORD; lpFileName:PAnsiChar):DWORD; stdcall;
begin
{*
 0040746C    jmp         dword ptr ds:[55F460]
*}
end;

//00407474
function kernel32.GetProcAddress(lpProcName:PAnsiChar):Pointer; stdcall;
begin
{*
 00407474    jmp         dword ptr ds:[55F45C]
*}
end;

//0040747C
function kernel32.GetStdHandle:Integer; stdcall;
begin
{*
 0040747C    jmp         dword ptr ds:[55F458]
*}
end;

//00407484
function kernel32.GetStringTypeExA(dwInfoType:DWORD; lpSrcStr:PAnsiChar; cchSrc:Integer; var lpCharType:void ):LongBool; stdcall;
begin
{*
 00407484    jmp         dword ptr ds:[55F454]
*}
end;

//0040748C
function kernel32.GetSystemDirectoryW(uSize:LongWord):LongWord; stdcall;
begin
{*
 0040748C    jmp         dword ptr ds:[55F450]
*}
end;

//00407494
procedure kernel32.GetSystemInfo; stdcall;
begin
{*
 00407494    jmp         dword ptr ds:[55F44C]
*}
end;

//0040749C
procedure kernel32.GetSystemTime; stdcall;
begin
{*
 0040749C    jmp         dword ptr ds:[55F448]
*}
end;

//004074A4
function kernel32.GetTempPathA(lpBuffer:PAnsiChar):DWORD; stdcall;
begin
{*
 004074A4    jmp         dword ptr ds:[55F444]
*}
end;

//004074AC
function kernel32.GetTempPathW(lpBuffer:PWideChar):DWORD; stdcall;
begin
{*
 004074AC    jmp         dword ptr ds:[55F440]
*}
end;

//004074B4
function kernel32.GetThreadContext(var lpContext:_CONTEXT):LongBool; stdcall;
begin
{*
 004074B4    jmp         dword ptr ds:[55F43C]
*}
end;

//004074BC
function kernel32.GetThreadLocale:Integer;
begin
{*
 004074BC    jmp         dword ptr ds:[55F438]
*}
end;

//004074C4
function kernel32.GetThreadPriority:Integer; stdcall;
begin
{*
 004074C4    jmp         dword ptr ds:[55F434]
*}
end;

//004074CC
function kernel32.GetTickCount:Cardinal;
begin
{*
 004074CC    jmp         dword ptr ds:[55F430]
*}
end;

//004074D4
function kernel32.GetVersion:DWORD;
begin
{*
 004074D4    jmp         dword ptr ds:[55F42C]
*}
end;

//004074DC
function kernel32.GetVersionExA:LongBool; stdcall;
begin
{*
 004074DC    jmp         dword ptr ds:[55F428]
*}
end;

//004074E4
function kernel32.GetVersionExA:LongBool; stdcall;
begin
{*
 004074E4    jmp         dword ptr ds:[55F428]
*}
end;

//004074EC
function kernel32.GetVersionExW:LongBool; stdcall;
begin
{*
 004074EC    jmp         dword ptr ds:[55F424]
*}
end;

//004074F4
function kernel32.GetWindowsDirectoryA(uSize:LongWord):LongWord; stdcall;
begin
{*
 004074F4    jmp         dword ptr ds:[55F420]
*}
end;

//004074FC
function kernel32.GlobalAddAtomA:Word; stdcall;
begin
{*
 004074FC    jmp         dword ptr ds:[55F41C]
*}
end;

//00407504
function kernel32.GlobalAlloc(dwBytes:DWORD):THandle; stdcall;
begin
{*
 00407504    jmp         dword ptr ds:[55F418]
*}
end;

//0040750C
function kernel32.GlobalDeleteAtom:Word; stdcall;
begin
{*
 0040750C    jmp         dword ptr ds:[55F414]
*}
end;

//00407514
function kernel32.GlobalFindAtomA:Word; stdcall;
begin
{*
 00407514    jmp         dword ptr ds:[55F410]
*}
end;

//0040751C
function kernel32.GlobalFree:THandle; stdcall;
begin
{*
 0040751C    jmp         dword ptr ds:[55F40C]
*}
end;

//00407524
function kernel32.GlobalLock:Pointer; stdcall;
begin
{*
 00407524    jmp         dword ptr ds:[55F408]
*}
end;

//0040752C
function kernel32.GlobalHandle:THandle; stdcall;
begin
{*
 0040752C    jmp         dword ptr ds:[55F404]
*}
end;

//00407534
procedure kernel32.GlobalMemoryStatus; stdcall;
begin
{*
 00407534    jmp         dword ptr ds:[55F400]
*}
end;

//0040753C
function kernel32.GlobalReAlloc(dwBytes:DWORD; uFlags:LongWord):THandle; stdcall;
begin
{*
 0040753C    jmp         dword ptr ds:[55F3FC]
*}
end;

//00407544
function kernel32.GlobalUnlock:LongBool; stdcall;
begin
{*
 00407544    jmp         dword ptr ds:[55F3F8]
*}
end;

//0040754C
procedure kernel32.InitializeCriticalSection; stdcall;
begin
{*
 0040754C    jmp         dword ptr ds:[55F3F4]
*}
end;

//00407554
procedure kernel32.LeaveCriticalSection; stdcall;
begin
{*
 00407554    jmp         dword ptr ds:[55F3F0]
*}
end;

//0040755C
function kernel32.LoadLibraryA:HMODULE; stdcall;
begin
{*
 0040755C    jmp         dword ptr ds:[55F3EC]
*}
end;

//00407564
function kernel32.LoadLibraryA:HMODULE; stdcall;
begin
{*
 00407564    jmp         dword ptr ds:[55F3EC]
*}
end;

//0040756C
function kernel32.LoadLibraryW:HMODULE; stdcall;
begin
{*
 0040756C    jmp         dword ptr ds:[55F3E8]
*}
end;

//00407574
function kernel32.LoadLibraryExA(hFile:THandle; dwFlags:DWORD):HMODULE; stdcall;
begin
{*
 00407574    jmp         dword ptr ds:[55F3E4]
*}
end;

//0040757C
function kernel32.LoadResource(hResInfo:HRSRC):THandle; stdcall;
begin
{*
 0040757C    jmp         dword ptr ds:[55F3E0]
*}
end;

//00407584
function kernel32.LocalAlloc(size:Integer):Pointer; stdcall;
begin
{*
 00407584    jmp         dword ptr ds:[55F3DC]
*}
end;

//0040758C
function kernel32.LocalFree:Pointer; stdcall;
begin
{*
 0040758C    jmp         dword ptr ds:[55F3D8]
*}
end;

//00407594
function kernel32.LocalSize:LongWord; stdcall;
begin
{*
 00407594    jmp         dword ptr ds:[55F3D4]
*}
end;

//0040759C
function kernel32.LockResource:Pointer; stdcall;
begin
{*
 0040759C    jmp         dword ptr ds:[55F3D0]
*}
end;

//004075A4
function kernel32.MapViewOfFile(dwDesiredAccess:DWORD; dwFileOffsetHigh:DWORD; dwFileOffsetLow:DWORD; dwNumberOfBytesToMap:DWORD):Pointer; stdcall;
begin
{*
 004075A4    jmp         dword ptr ds:[55F3CC]
*}
end;

//004075AC
function kernel32.MulDiv(nNumerator:Integer; nDenominator:Integer):Integer; stdcall;
begin
{*
 004075AC    jmp         dword ptr ds:[55F3C8]
*}
end;

//004075B4
function kernel32.OpenFileMappingA(bInheritHandle:LongBool; lpName:PAnsiChar):THandle; stdcall;
begin
{*
 004075B4    jmp         dword ptr ds:[55F3C4]
*}
end;

//004075BC
function kernel32.OpenFileMappingA(bInheritHandle:LongBool; lpName:PAnsiChar):THandle; stdcall;
begin
{*
 004075BC    jmp         dword ptr ds:[55F3C4]
*}
end;

//004075C4
function kernel32.OpenProcess(bInheritHandle:LongBool; dwProcessId:DWORD):THandle; stdcall;
begin
{*
 004075C4    jmp         dword ptr ds:[55F3C0]
*}
end;

//004075CC
function kernel32.QueryPerformanceCounter:LongBool; stdcall;
begin
{*
 004075CC    jmp         dword ptr ds:[55F3BC]
*}
end;

//004075D4
function kernel32.QueryPerformanceFrequency:LongBool; stdcall;
begin
{*
 004075D4    jmp         dword ptr ds:[55F3B8]
*}
end;

//004075DC
procedure kernel32.RaiseException(dwExceptionFlags:DWORD; nNumberOfArguments:DWORD; lpArguments:PDWORD); stdcall;
begin
{*
 004075DC    jmp         dword ptr ds:[55F3B4]
*}
end;

//004075E4
function kernel32.ReadFile(var Buffer:void ; nNumberOfBytesToRead:Cardinal; var lpNumberOfBytesRead:Cardinal; lpOverlapped:Pointer):Integer; stdcall;
begin
{*
 004075E4    jmp         dword ptr ds:[55F3B0]
*}
end;

//004075EC
function kernel32.ReadProcessMemory(const lpBaseAddress:Pointer; lpBuffer:Pointer; nSize:DWORD; var lpNumberOfBytesRead:DWORD):LongBool; stdcall;
begin
{*
 004075EC    jmp         dword ptr ds:[55F3AC]
*}
end;

//004075F4
function kernel32.ReleaseMutex:LongBool; stdcall;
begin
{*
 004075F4    jmp         dword ptr ds:[55F3A8]
*}
end;

//004075FC
function kernel32.RemoveDirectoryA:LongBool; stdcall;
begin
{*
 004075FC    jmp         dword ptr ds:[55F3A4]
*}
end;

//00407604
function kernel32.RemoveDirectoryW:LongBool; stdcall;
begin
{*
 00407604    jmp         dword ptr ds:[55F3A0]
*}
end;

//0040760C
function kernel32.ResetEvent:LongBool; stdcall;
begin
{*
 0040760C    jmp         dword ptr ds:[55F39C]
*}
end;

//00407614
function kernel32.ResumeThread:DWORD; stdcall;
begin
{*
 00407614    jmp         dword ptr ds:[55F398]
*}
end;

//0040761C
function kernel32.SetEndOfFile:LongBool; stdcall;
begin
{*
 0040761C    jmp         dword ptr ds:[55F394]
*}
end;

//00407624
function kernel32.SetErrorMode:LongWord; stdcall;
begin
{*
 00407624    jmp         dword ptr ds:[55F390]
*}
end;

//0040762C
function kernel32.SetEvent:LongBool; stdcall;
begin
{*
 0040762C    jmp         dword ptr ds:[55F38C]
*}
end;

//00407634
function kernel32.SetFileAttributesA(dwFileAttributes:DWORD):LongBool; stdcall;
begin
{*
 00407634    jmp         dword ptr ds:[55F388]
*}
end;

//0040763C
function kernel32.SetFileAttributesW(dwFileAttributes:DWORD):LongBool; stdcall;
begin
{*
 0040763C    jmp         dword ptr ds:[55F384]
*}
end;

//00407644
function kernel32.SetFilePointer(Distance:Integer; DistanceHigh:Pointer; MoveMethod:Integer):Integer; stdcall;
begin
{*
 00407644    jmp         dword ptr ds:[55F380]
*}
end;

//0040764C
procedure kernel32.SetLastError; stdcall;
begin
{*
 0040764C    jmp         dword ptr ds:[55F37C]
*}
end;

//00407654
function kernel32.SetThreadLocale:LongBool; stdcall;
begin
{*
 00407654    jmp         dword ptr ds:[55F378]
*}
end;

//0040765C
procedure kernel32.SetThreadPriority(const APriority:TThreadPriority; const APolicy:Integer);
begin
{*
 0040765C    jmp         dword ptr ds:[55F374]
*}
end;

//00407664
function kernel32.SetUnhandledExceptionFilter:Pointer; stdcall;
begin
{*
 00407664    jmp         dword ptr ds:[55F370]
*}
end;

//0040766C
function kernel32.SizeofResource(hResInfo:HRSRC):DWORD; stdcall;
begin
{*
 0040766C    jmp         dword ptr ds:[55F36C]
*}
end;

//00407674
procedure kernel32.Sleep; stdcall;
begin
{*
 00407674    jmp         dword ptr ds:[55F368]
*}
end;

//0040767C
function kernel32.SuspendThread:DWORD; stdcall;
begin
{*
 0040767C    jmp         dword ptr ds:[55F364]
*}
end;

//00407684
function kernel32.SystemTimeToFileTime(var lpFileTime:_FILETIME):LongBool; stdcall;
begin
{*
 00407684    jmp         dword ptr ds:[55F360]
*}
end;

//0040768C
function kernel32.TerminateProcess(uExitCode:LongWord):LongBool; stdcall;
begin
{*
 0040768C    jmp         dword ptr ds:[55F35C]
*}
end;

//00407694
function kernel32.TerminateThread(dwExitCode:DWORD):LongBool; stdcall;
begin
{*
 00407694    jmp         dword ptr ds:[55F358]
*}
end;

//0040769C
function kernel32.UnmapViewOfFile:LongBool; stdcall;
begin
{*
 0040769C    jmp         dword ptr ds:[55F354]
*}
end;

//004076A4
function kernel32.VirtualAlloc(dwSize:DWORD; flAllocationType:DWORD; flProtect:DWORD):Pointer; stdcall;
begin
{*
 004076A4    jmp         dword ptr ds:[55F350]
*}
end;

//004076AC
function kernel32.VirtualFree(dwSize:DWORD; dwFreeType:DWORD):LongBool; stdcall;
begin
{*
 004076AC    jmp         dword ptr ds:[55F34C]
*}
end;

//004076B4
function kernel32.VirtualProtect(dwSize:DWORD; flNewProtect:DWORD; lpflOldProtect:Pointer):LongBool; stdcall;
begin
{*
 004076B4    jmp         dword ptr ds:[55F348]
*}
end;

//004076BC
function kernel32.VirtualQuery(var lpBuffer:TMemInfo; dwLength:Integer):Integer; stdcall;
begin
{*
 004076BC    jmp         dword ptr ds:[55F344]
*}
end;

//004076C4
function kernel32.WaitForSingleObject(dwMilliseconds:DWORD):DWORD; stdcall;
begin
{*
 004076C4    jmp         dword ptr ds:[55F340]
*}
end;

//004076CC
function kernel32.WriteFile(const Buffer:void ; nNumberOfBytesToWrite:Cardinal; var lpNumberOfBytesWritten:Cardinal; lpOverlapped:Pointer):Integer; stdcall;
begin
{*
 004076CC    jmp         dword ptr ds:[55F33C]
*}
end;

//004076D4
function kernel32.WritePrivateProfileStringA(lpKeyName:PAnsiChar; lpString:PAnsiChar; lpFileName:PAnsiChar):LongBool; stdcall;
begin
{*
 004076D4    jmp         dword ptr ds:[55F338]
*}
end;

//004076DC
function kernel32.lstrcmpA(lpString2:PAnsiChar):Integer; stdcall;
begin
{*
 004076DC    jmp         dword ptr ds:[55F334]
*}
end;

//004076E4
function kernel32.lstrcmpA(lpString2:PAnsiChar):Integer; stdcall;
begin
{*
 004076E4    jmp         dword ptr ds:[55F334]
*}
end;

//004076EC
function kernel32.lstrcmpiW(lpString2:PWideChar):Integer; stdcall;
begin
{*
 004076EC    jmp         dword ptr ds:[55F330]
*}
end;

//004076F4
function kernel32.lstrcpyA(lpString2:PAnsiChar):PAnsiChar; stdcall;
begin
{*
 004076F4    jmp         dword ptr ds:[55F32C]
*}
end;

//004076FC
function kernel32.lstrlenW:Integer; stdcall;
begin
{*
 004076FC    jmp         dword ptr ds:[55F328]
*}
end;

//00407704
function version.GetFileVersionInfoA(dwHandle:DWORD; dwLen:DWORD; lpData:Pointer):LongBool; stdcall;
begin
{*
 00407704    jmp         dword ptr ds:[55F5A4]
*}
end;

//0040770C
function version.GetFileVersionInfoA(dwHandle:DWORD; dwLen:DWORD; lpData:Pointer):LongBool; stdcall;
begin
{*
 0040770C    jmp         dword ptr ds:[55F5A4]
*}
end;

//00407714
function version.GetFileVersionInfoW(dwHandle:DWORD; dwLen:DWORD; lpData:Pointer):LongBool; stdcall;
begin
{*
 00407714    jmp         dword ptr ds:[55F5A0]
*}
end;

//0040771C
function version.GetFileVersionInfoSizeA(var lpdwHandle:DWORD):DWORD; stdcall;
begin
{*
 0040771C    jmp         dword ptr ds:[55F59C]
*}
end;

//00407724
function version.GetFileVersionInfoSizeA(var lpdwHandle:DWORD):DWORD; stdcall;
begin
{*
 00407724    jmp         dword ptr ds:[55F59C]
*}
end;

//0040772C
function version.GetFileVersionInfoSizeW(var lpdwHandle:DWORD):DWORD; stdcall;
begin
{*
 0040772C    jmp         dword ptr ds:[55F598]
*}
end;

//00407734
function version.VerQueryValueA(lpSubBlock:PAnsiChar; var lplpBuffer:Pointer; var puLen:LongWord):LongBool; stdcall;
begin
{*
 00407734    jmp         dword ptr ds:[55F594]
*}
end;

//0040773C
function version.VerQueryValueA(lpSubBlock:PAnsiChar; var lplpBuffer:Pointer; var puLen:LongWord):LongBool; stdcall;
begin
{*
 0040773C    jmp         dword ptr ds:[55F594]
*}
end;

//00407744
function version.VerQueryValueW(lpSubBlock:PWideChar; var lplpBuffer:Pointer; var puLen:LongWord):LongBool; stdcall;
begin
{*
 00407744    jmp         dword ptr ds:[55F590]
*}
end;

//0040774C
function gdi32.BitBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; Rop:DWORD):LongBool; stdcall;
begin
{*
 0040774C    jmp         dword ptr ds:[55F70C]
*}
end;

//00407754
function gdi32.CombineRgn(p2:HRGN; p3:HRGN; p4:Integer):Integer; stdcall;
begin
{*
 00407754    jmp         dword ptr ds:[55F708]
*}
end;

//0040775C
function gdi32.CopyEnhMetaFileA(p2:PAnsiChar):HENHMETAFILE; stdcall;
begin
{*
 0040775C    jmp         dword ptr ds:[55F704]
*}
end;

//00407764
function gdi32.CreateBitmap(Height:Integer; Planes:Longint; BitCount:Longint; Bits:Pointer):HBITMAP; stdcall;
begin
{*
 00407764    jmp         dword ptr ds:[55F700]
*}
end;

//0040776C
function gdi32.CreateBrushIndirect:HBRUSH; stdcall;
begin
{*
 0040776C    jmp         dword ptr ds:[55F6FC]
*}
end;

//00407774
function gdi32.CreateCompatibleBitmap(Width:Integer; Height:Integer):HBITMAP; stdcall;
begin
{*
 00407774    jmp         dword ptr ds:[55F6F8]
*}
end;

//0040777C
function gdi32.CreateCompatibleDC:HDC; stdcall;
begin
{*
 0040777C    jmp         dword ptr ds:[55F6F4]
*}
end;

//00407784
function gdi32.CreateDCA(lpszDevice:PAnsiChar; lpszOutput:PAnsiChar; lpdvmInit:PDeviceModeA):HDC; stdcall;
begin
{*
 00407784    jmp         dword ptr ds:[55F6F0]
*}
end;

//0040778C
function gdi32.CreateDIBSection(const p2:tagBITMAPINFO; p3:LongWord; var p4:Pointer; p5:THandle; p6:DWORD):HBITMAP; stdcall;
begin
{*
 0040778C    jmp         dword ptr ds:[55F6EC]
*}
end;

//00407794
function gdi32.CreateDIBitmap(var InfoHeader:tagBITMAPINFOHEADER; dwUsage:DWORD; InitBits:PChar; var InitInfo:tagBITMAPINFO; wUsage:LongWord):HBITMAP; stdcall;
begin
{*
 00407794    jmp         dword ptr ds:[55F6E8]
*}
end;

//0040779C
function gdi32.CreateFontA(nWidth:Integer; nEscapement:Integer; nOrientaion:Integer; fnWeight:Integer; fdwItalic:DWORD; fdwUnderline:DWORD; fdwStrikeOut:DWORD; fdwCharSet:DWORD; fdwOutputPrecision:DWORD; fdwClipPrecision:DWORD; fdwQuality:DWORD; fdwPitchAndFamily:DWORD; lpszFace:PAnsiChar):HFONT; stdcall;
begin
{*
 0040779C    jmp         dword ptr ds:[55F6E4]
*}
end;

//004077A4
function gdi32.CreateFontA(nWidth:Integer; nEscapement:Integer; nOrientaion:Integer; fnWeight:Integer; fdwItalic:DWORD; fdwUnderline:DWORD; fdwStrikeOut:DWORD; fdwCharSet:DWORD; fdwOutputPrecision:DWORD; fdwClipPrecision:DWORD; fdwQuality:DWORD; fdwPitchAndFamily:DWORD; lpszFace:PAnsiChar):HFONT; stdcall;
begin
{*
 004077A4    jmp         dword ptr ds:[55F6E4]
*}
end;

//004077AC
function gdi32.CreateFontIndirectA:HFONT; stdcall;
begin
{*
 004077AC    jmp         dword ptr ds:[55F6E0]
*}
end;

//004077B4
function gdi32.CreateHalftonePalette:HPALETTE; stdcall;
begin
{*
 004077B4    jmp         dword ptr ds:[55F6DC]
*}
end;

//004077BC
function gdi32.CreatePalette:HPALETTE; stdcall;
begin
{*
 004077BC    jmp         dword ptr ds:[55F6D8]
*}
end;

//004077C4
function gdi32.CreatePen(Width:Integer; Color:DWORD):HPEN; stdcall;
begin
{*
 004077C4    jmp         dword ptr ds:[55F6D4]
*}
end;

//004077CC
function gdi32.CreatePenIndirect:HPEN; stdcall;
begin
{*
 004077CC    jmp         dword ptr ds:[55F6D0]
*}
end;

//004077D4
function gdi32.CreateRectRgn(p2:Integer; p3:Integer; p4:Integer):HRGN; stdcall;
begin
{*
 004077D4    jmp         dword ptr ds:[55F6CC]
*}
end;

//004077DC
function gdi32.CreateRectRgnIndirect:HRGN; stdcall;
begin
{*
 004077DC    jmp         dword ptr ds:[55F6C8]
*}
end;

//004077E4
function gdi32.CreateSolidBrush:HBRUSH; stdcall;
begin
{*
 004077E4    jmp         dword ptr ds:[55F6C4]
*}
end;

//004077EC
function gdi32.DeleteDC:LongBool; stdcall;
begin
{*
 004077EC    jmp         dword ptr ds:[55F6C0]
*}
end;

//004077F4
function gdi32.DeleteEnhMetaFile:LongBool; stdcall;
begin
{*
 004077F4    jmp         dword ptr ds:[55F6BC]
*}
end;

//004077FC
function gdi32.DeleteObject:LongBool; stdcall;
begin
{*
 004077FC    jmp         dword ptr ds:[55F6B8]
*}
end;

//00407804
function gdi32.Ellipse(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;
begin
{*
 00407804    jmp         dword ptr ds:[55F6B4]
*}
end;

//0040780C
function gdi32.EndDoc:Integer; stdcall;
begin
{*
 0040780C    jmp         dword ptr ds:[55F6B0]
*}
end;

//00407814
function gdi32.EndPage:Integer; stdcall;
begin
{*
 00407814    jmp         dword ptr ds:[55F6AC]
*}
end;

//0040781C
function gdi32.ExcludeClipRect(LeftRect:Integer; TopRect:Integer; RightRect:Integer; BottomRect:Integer):Integer; stdcall;
begin
{*
 0040781C    jmp         dword ptr ds:[55F6A8]
*}
end;

//00407824
function gdi32.ExtTextOutA(X:Integer; Y:Integer; Options:Longint; Rect:PRect; Str:PAnsiChar; Count:Longint; Dx:PInteger):LongBool; stdcall;
begin
{*
 00407824    jmp         dword ptr ds:[55F6A4]
*}
end;

//0040782C
function gdi32.GdiFlush:LongBool;
begin
{*
 0040782C    jmp         dword ptr ds:[55F6A0]
*}
end;

//00407834
function gdi32.GetBitmapBits(Count:Longint; Bits:Pointer):Longint; stdcall;
begin
{*
 00407834    jmp         dword ptr ds:[55F69C]
*}
end;

//0040783C
function gdi32.GetBrushOrgEx(var lppt:TPoint):LongBool; stdcall;
begin
{*
 0040783C    jmp         dword ptr ds:[55F698]
*}
end;

//00407844
function gdi32.GetClipBox(var Rect:TRect):Integer; stdcall;
begin
{*
 00407844    jmp         dword ptr ds:[55F694]
*}
end;

//0040784C
function gdi32.GetCurrentPositionEx(Point:PPoint):LongBool; stdcall;
begin
{*
 0040784C    jmp         dword ptr ds:[55F690]
*}
end;

//00407854
function gdi32.GetDCOrgEx(var Origin:TPoint):LongBool; stdcall;
begin
{*
 00407854    jmp         dword ptr ds:[55F68C]
*}
end;

//0040785C
function gdi32.GetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadStructs:void ):LongWord; stdcall;
begin
{*
 0040785C    jmp         dword ptr ds:[55F688]
*}
end;

//00407864
function gdi32.GetDIBits(Bitmap:HBITMAP; StartScan:LongWord; NumScans:LongWord; Bits:Pointer; var BitInfo:tagBITMAPINFO; Usage:LongWord):Integer; stdcall;
begin
{*
 00407864    jmp         dword ptr ds:[55F684]
*}
end;

//0040786C
function gdi32.GetDeviceCaps(Index:Integer):Integer; stdcall;
begin
{*
 0040786C    jmp         dword ptr ds:[55F680]
*}
end;

//00407874
function gdi32.GetEnhMetaFileBits(p2:LongWord; p3:PByte):LongWord; stdcall;
begin
{*
 00407874    jmp         dword ptr ds:[55F67C]
*}
end;

//0040787C
function gdi32.GetEnhMetaFileHeader(p2:LongWord; p3:PEnhMetaHeader):LongWord; stdcall;
begin
{*
 0040787C    jmp         dword ptr ds:[55F678]
*}
end;

//00407884
function gdi32.GetEnhMetaFilePaletteEntries(p2:LongWord; p3:Pointer):LongWord; stdcall;
begin
{*
 00407884    jmp         dword ptr ds:[55F674]
*}
end;

//0040788C
function gdi32.GetObjectA(p2:Integer; p3:Pointer):Integer; stdcall;
begin
{*
 0040788C    jmp         dword ptr ds:[55F670]
*}
end;

//00407894
function gdi32.GetPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;
begin
{*
 00407894    jmp         dword ptr ds:[55F66C]
*}
end;

//0040789C
function gdi32.GetPixel(X:Integer; Y:Integer):DWORD; stdcall;
begin
{*
 0040789C    jmp         dword ptr ds:[55F668]
*}
end;

//004078A4
function gdi32.GetRgnBox(var p2:TRect):Integer; stdcall;
begin
{*
 004078A4    jmp         dword ptr ds:[55F664]
*}
end;

//004078AC
function gdi32.GetStockObject:HGDIOBJ; stdcall;
begin
{*
 004078AC    jmp         dword ptr ds:[55F660]
*}
end;

//004078B4
function gdi32.GetSystemPaletteEntries(StartIndex:LongWord; NumEntries:LongWord; var PaletteEntries:void ):LongWord; stdcall;
begin
{*
 004078B4    jmp         dword ptr ds:[55F65C]
*}
end;

//004078BC
function gdi32.GetTextExtentPoint32A(Str:PAnsiChar; Count:Integer; var Size:TSize):LongBool; stdcall;
begin
{*
 004078BC    jmp         dword ptr ds:[55F658]
*}
end;

//004078C4
function gdi32.GetTextExtentPoint32A(Str:PAnsiChar; Count:Integer; var Size:TSize):LongBool; stdcall;
begin
{*
 004078C4    jmp         dword ptr ds:[55F658]
*}
end;

//004078CC
function gdi32.GetTextExtentPoint32W(Str:PWideChar; Count:Integer; var Size:TSize):LongBool; stdcall;
begin
{*
 004078CC    jmp         dword ptr ds:[55F654]
*}
end;

//004078D4
function gdi32.GetTextExtentPointA(Str:PAnsiChar; Count:Integer; var Size:TSize):LongBool; stdcall;
begin
{*
 004078D4    jmp         dword ptr ds:[55F650]
*}
end;

//004078DC
function gdi32.GetTextFaceA(Count:Integer; Buffer:PAnsiChar):Integer; stdcall;
begin
{*
 004078DC    jmp         dword ptr ds:[55F64C]
*}
end;

//004078E4
function gdi32.GetTextMetricsA(var TM:tagTEXTMETRICA):LongBool; stdcall;
begin
{*
 004078E4    jmp         dword ptr ds:[55F648]
*}
end;

//004078EC
function gdi32.GetWinMetaFileBits(p2:LongWord; p3:PByte; p4:Integer; p5:HDC):LongWord; stdcall;
begin
{*
 004078EC    jmp         dword ptr ds:[55F644]
*}
end;

//004078F4
function gdi32.GetWindowOrgEx(var Point:TPoint):LongBool; stdcall;
begin
{*
 004078F4    jmp         dword ptr ds:[55F640]
*}
end;

//004078FC
function gdi32.IntersectClipRect(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):Integer; stdcall;
begin
{*
 004078FC    jmp         dword ptr ds:[55F63C]
*}
end;

//00407904
function gdi32.LineTo(X:Integer; Y:Integer):LongBool; stdcall;
begin
{*
 00407904    jmp         dword ptr ds:[55F638]
*}
end;

//0040790C
function gdi32.MaskBlt(XDest:Integer; YDest:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XScr:Integer; YScr:Integer; Mask:HBITMAP; xMask:Integer; yMask:Integer; Rop:DWORD):LongBool; stdcall;
begin
{*
 0040790C    jmp         dword ptr ds:[55F634]
*}
end;

//00407914
function gdi32.MoveToEx(p2:Integer; p3:Integer; p4:PPoint):LongBool; stdcall;
begin
{*
 00407914    jmp         dword ptr ds:[55F630]
*}
end;

//0040791C
function gdi32.PatBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; Rop:DWORD):LongBool; stdcall;
begin
{*
 0040791C    jmp         dword ptr ds:[55F62C]
*}
end;

//00407924
function gdi32.Pie(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer; X3:Integer; Y3:Integer; X4:Integer; Y4:Integer):LongBool; stdcall;
begin
{*
 00407924    jmp         dword ptr ds:[55F628]
*}
end;

//0040792C
function gdi32.PlayEnhMetaFile(p2:HENHMETAFILE; const p3:TRect):LongBool; stdcall;
begin
{*
 0040792C    jmp         dword ptr ds:[55F624]
*}
end;

//00407934
function gdi32.Polygon(var Points:void ; Count:Integer):LongBool; stdcall;
begin
{*
 00407934    jmp         dword ptr ds:[55F620]
*}
end;

//0040793C
function gdi32.Polyline(var Points:void ; Count:Integer):LongBool; stdcall;
begin
{*
 0040793C    jmp         dword ptr ds:[55F61C]
*}
end;

//00407944
function gdi32.RealizePalette:LongWord; stdcall;
begin
{*
 00407944    jmp         dword ptr ds:[55F618]
*}
end;

//0040794C
function gdi32.RectVisible(const Rect:TRect):LongBool; stdcall;
begin
{*
 0040794C    jmp         dword ptr ds:[55F614]
*}
end;

//00407954
function gdi32.Rectangle(X1:Integer; Y1:Integer; X2:Integer; Y2:Integer):LongBool; stdcall;
begin
{*
 00407954    jmp         dword ptr ds:[55F610]
*}
end;

//0040795C
function gdi32.RestoreDC(SavedDC:Integer):LongBool; stdcall;
begin
{*
 0040795C    jmp         dword ptr ds:[55F60C]
*}
end;

//00407964
function gdi32.SaveDC:Integer; stdcall;
begin
{*
 00407964    jmp         dword ptr ds:[55F608]
*}
end;

//0040796C
function gdi32.SelectClipRgn(Region:HRGN):Integer; stdcall;
begin
{*
 0040796C    jmp         dword ptr ds:[55F604]
*}
end;

//00407974
function gdi32.SelectObject(p2:HGDIOBJ):HGDIOBJ; stdcall;
begin
{*
 00407974    jmp         dword ptr ds:[55F600]
*}
end;

//0040797C
function gdi32.SelectPalette(Palette:HPALETTE; ForceBackground:LongBool):HPALETTE; stdcall;
begin
{*
 0040797C    jmp         dword ptr ds:[55F5FC]
*}
end;

//00407984
function gdi32.SetBkColor(Color:DWORD):DWORD; stdcall;
begin
{*
 00407984    jmp         dword ptr ds:[55F5F8]
*}
end;

//0040798C
function gdi32.SetBkMode(BkMode:Integer):Integer; stdcall;
begin
{*
 0040798C    jmp         dword ptr ds:[55F5F4]
*}
end;

//00407994
function gdi32.SetBrushOrgEx(X:Integer; Y:Integer; PrevPt:PPoint):LongBool; stdcall;
begin
{*
 00407994    jmp         dword ptr ds:[55F5F0]
*}
end;

//0040799C
function gdi32.SetDIBColorTable(p2:LongWord; p3:LongWord; var RGBQuadSTructs:void ):LongWord; stdcall;
begin
{*
 0040799C    jmp         dword ptr ds:[55F5EC]
*}
end;

//004079A4
function gdi32.SetEnhMetaFileBits(p2:PChar):HENHMETAFILE; stdcall;
begin
{*
 004079A4    jmp         dword ptr ds:[55F5E8]
*}
end;

//004079AC
function gdi32.SetMapMode(p2:Integer):Integer; stdcall;
begin
{*
 004079AC    jmp         dword ptr ds:[55F5E4]
*}
end;

//004079B4
function gdi32.SetPixel(X:Integer; Y:Integer; Color:DWORD):DWORD; stdcall;
begin
{*
 004079B4    jmp         dword ptr ds:[55F5E0]
*}
end;

//004079BC
function gdi32.SetROP2(p2:Integer):Integer; stdcall;
begin
{*
 004079BC    jmp         dword ptr ds:[55F5DC]
*}
end;

//004079C4
function gdi32.SetStretchBltMode(StretchMode:Integer):Integer; stdcall;
begin
{*
 004079C4    jmp         dword ptr ds:[55F5D8]
*}
end;

//004079CC
function gdi32.SetTextColor(Color:DWORD):DWORD; stdcall;
begin
{*
 004079CC    jmp         dword ptr ds:[55F5D4]
*}
end;

//004079D4
function gdi32.SetViewportOrgEx(X:Integer; Y:Integer; Point:PPoint):LongBool; stdcall;
begin
{*
 004079D4    jmp         dword ptr ds:[55F5D0]
*}
end;

//004079DC
function gdi32.SetWinMetaFileBits(p2:PChar; p3:HDC; const p4:tagMETAFILEPICT):HENHMETAFILE; stdcall;
begin
{*
 004079DC    jmp         dword ptr ds:[55F5CC]
*}
end;

//004079E4
function gdi32.SetWindowOrgEx(X:Integer; Y:Integer; Point:PPoint):LongBool; stdcall;
begin
{*
 004079E4    jmp         dword ptr ds:[55F5C8]
*}
end;

//004079EC
function gdi32.StartDocA(const p2:_DOCINFOA):Integer; stdcall;
begin
{*
 004079EC    jmp         dword ptr ds:[55F5C4]
*}
end;

//004079F4
function gdi32.StartDocW(const p2:_DOCINFOW):Integer; stdcall;
begin
{*
 004079F4    jmp         dword ptr ds:[55F5C0]
*}
end;

//004079FC
function gdi32.StartPage:Integer; stdcall;
begin
{*
 004079FC    jmp         dword ptr ds:[55F5BC]
*}
end;

//00407A04
function gdi32.StretchBlt(X:Integer; Y:Integer; Width:Integer; Height:Integer; SrcDC:HDC; XSrc:Integer; YSrc:Integer; SrcWidth:Integer; SrcHeight:Integer; Rop:DWORD):LongBool; stdcall;
begin
{*
 00407A04    jmp         dword ptr ds:[55F5B8]
*}
end;

//00407A0C
function gdi32.TextOutA(X:Integer; Y:Integer; Str:PAnsiChar; Count:Integer):LongBool; stdcall;
begin
{*
 00407A0C    jmp         dword ptr ds:[55F5B4]
*}
end;

//00407A14
function gdi32.TextOutW(X:Integer; Y:Integer; Str:PWideChar; Count:Integer):LongBool; stdcall;
begin
{*
 00407A14    jmp         dword ptr ds:[55F5B0]
*}
end;

//00407A1C
function gdi32.UnrealizeObject:LongBool; stdcall;
begin
{*
 00407A1C    jmp         dword ptr ds:[55F5AC]
*}
end;

//00407A24
function user32.ActivateKeyboardLayout(Flags:LongWord):HKL; stdcall;
begin
{*
 00407A24    jmp         dword ptr ds:[55FA18]
*}
end;

//00407A2C
function user32.AdjustWindowRectEx(dwStyle:DWORD; bMenu:LongBool; dwExStyle:DWORD):LongBool; stdcall;
begin
{*
 00407A2C    jmp         dword ptr ds:[55FA14]
*}
end;

//00407A34
function user32.CharLowerA:PAnsiChar; stdcall;
begin
{*
 00407A34    jmp         dword ptr ds:[55FA08]
*}
end;

//00407A3C
function user32.AttachThreadInput(idAttachTo:DWORD; fAttach:LongBool):LongBool; stdcall;
begin
{*
 00407A3C    jmp         dword ptr ds:[55F9FC]
*}
end;

//00407A44
function user32.BeginDeferWindowPos:THandle; stdcall;
begin
{*
 00407A44    jmp         dword ptr ds:[55F9F8]
*}
end;

//00407A4C
function user32.BeginPaint(var lpPaint:tagPAINTSTRUCT):HDC; stdcall;
begin
{*
 00407A4C    jmp         dword ptr ds:[55F9F4]
*}
end;

//00407A54
function user32.BringWindowToTop:LongBool; stdcall;
begin
{*
 00407A54    jmp         dword ptr ds:[55F9F0]
*}
end;

//00407A5C
function user32.CallNextHookEx(nCode:Integer; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407A5C    jmp         dword ptr ds:[55F9EC]
*}
end;

//00407A64
function user32.CallWindowProcA(hWnd:HWND; Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407A64    jmp         dword ptr ds:[55F9E8]
*}
end;

//00407A6C
function user32.CallWindowProcA(hWnd:HWND; Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407A6C    jmp         dword ptr ds:[55F9E8]
*}
end;

//00407A74
function user32.CallWindowProcW(hWnd:HWND; Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407A74    jmp         dword ptr ds:[55F9E4]
*}
end;

//00407A7C
function user32.CharLowerBuffA(cchLength:DWORD):DWORD; stdcall;
begin
{*
 00407A7C    jmp         dword ptr ds:[55FA04]
*}
end;

//00407A84
function user32.CharNextA:PAnsiChar; stdcall;
begin
{*
 00407A84    jmp         dword ptr ds:[55FA00]
*}
end;

//00407A8C
function user32.CharToOemA(lpszDst:PAnsiChar):LongBool; stdcall;
begin
{*
 00407A8C    jmp         dword ptr ds:[55FA10]
*}
end;

//00407A94
function user32.CharUpperBuffA(cchLength:DWORD):DWORD; stdcall;
begin
{*
 00407A94    jmp         dword ptr ds:[55FA0C]
*}
end;

//00407A9C
function user32.CheckMenuItem(uIDCheckItem:LongWord; uCheck:LongWord):DWORD; stdcall;
begin
{*
 00407A9C    jmp         dword ptr ds:[55F9E0]
*}
end;

//00407AA4
function user32.ChildWindowFromPoint(Point:TPoint):HWND; stdcall;
begin
{*
 00407AA4    jmp         dword ptr ds:[55F9DC]
*}
end;

//00407AAC
function user32.ClientToScreen(var lpPoint:TPoint):LongBool; stdcall;
begin
{*
 00407AAC    jmp         dword ptr ds:[55F9D8]
*}
end;

//00407AB4
function user32.CloseClipboard:LongBool;
begin
{*
 00407AB4    jmp         dword ptr ds:[55F9D4]
*}
end;

//00407ABC
function user32.CreateIcon(nWidth:Integer; nHeight:Integer; cPlanes:Byte; cBitsPixel:Byte; lpbANDbits:Pointer; lpbXORbits:Pointer):HICON; stdcall;
begin
{*
 00407ABC    jmp         dword ptr ds:[55F9D0]
*}
end;

//00407AC4
function user32.CreateMenu(ParentMenu:AnsiString; FunctionName:AnsiString; AHeight:Integer; AWidth:Integer; AOnMouseOutEvent:AnsiString; AOnMouseOverEvent:AnsiString; AOnClickEvent:AnsiString; AHighLightTextColor:TColor; ATextColor:TColor; AHighlightColor:TColor; AColor:TColor; AImage2:AnsiString; AImage1:AnsiString; Target:AnsiString; LinkAddr:AnsiString):AnsiString;
begin
{*
 00407AC4    jmp         dword ptr ds:[55F9CC]
*}
end;

//00407ACC
function user32.CreatePopupMenu:HMENU;
begin
{*
 00407ACC    jmp         dword ptr ds:[55F9C8]
*}
end;

//00407AD4
function user32.DefFrameProcA(hWndMDIClient:HWND; uMsg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407AD4    jmp         dword ptr ds:[55F9C4]
*}
end;

//00407ADC
function user32.DefMDIChildProcA(uMsg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407ADC    jmp         dword ptr ds:[55F9C0]
*}
end;

//00407AE4
function user32.DefWindowProcA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407AE4    jmp         dword ptr ds:[55F9BC]
*}
end;

//00407AEC
function user32.DefWindowProcA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407AEC    jmp         dword ptr ds:[55F9BC]
*}
end;

//00407AF4
function user32.DefWindowProcW(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407AF4    jmp         dword ptr ds:[55F9B8]
*}
end;

//00407AFC
function user32.DeferWindowPos(hWnd:HWND; hWndInsertAfter:HWND; x:Integer; y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):THandle; stdcall;
begin
{*
 00407AFC    jmp         dword ptr ds:[55F9B4]
*}
end;

//00407B04
function user32.DeleteMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;
begin
{*
 00407B04    jmp         dword ptr ds:[55F9B0]
*}
end;

//00407B0C
function user32.DestroyCursor:LongBool; stdcall;
begin
{*
 00407B0C    jmp         dword ptr ds:[55F9AC]
*}
end;

//00407B14
function user32.DestroyIcon:LongBool; stdcall;
begin
{*
 00407B14    jmp         dword ptr ds:[55F9A8]
*}
end;

//00407B1C
function user32.DestroyMenu:LongBool; stdcall;
begin
{*
 00407B1C    jmp         dword ptr ds:[55F9A4]
*}
end;

//00407B24
function user32.DestroyWindow:LongBool; stdcall;
begin
{*
 00407B24    jmp         dword ptr ds:[55F9A0]
*}
end;

//00407B2C
function user32.DispatchMessageA:Longint; stdcall;
begin
{*
 00407B2C    jmp         dword ptr ds:[55F99C]
*}
end;

//00407B34
function user32.DrawEdge(var qrc:TRect; edge:LongWord; grfFlags:LongWord):LongBool; stdcall;
begin
{*
 00407B34    jmp         dword ptr ds:[55F998]
*}
end;

//00407B3C
function user32.DrawFocusRect(const lprc:TRect):LongBool; stdcall;
begin
{*
 00407B3C    jmp         dword ptr ds:[55F994]
*}
end;

//00407B44
function user32.DrawFrameControl(const Rect:TRect; uType:LongWord; uState:LongWord):LongBool; stdcall;
begin
{*
 00407B44    jmp         dword ptr ds:[55F990]
*}
end;

//00407B4C
function user32.DrawIcon(X:Integer; Y:Integer; hIcon:HICON):LongBool; stdcall;
begin
{*
 00407B4C    jmp         dword ptr ds:[55F98C]
*}
end;

//00407B54
function user32.DrawIconEx(xLeft:Integer; yTop:Integer; hIcon:HICON; cxWidth:Integer; cyWidth:Integer; istepIfAniCur:LongWord; hbrFlickerFreeDraw:HBRUSH; diFlags:LongWord):LongBool; stdcall;
begin
{*
 00407B54    jmp         dword ptr ds:[55F988]
*}
end;

//00407B5C
function user32.DrawMenuBar:LongBool; stdcall;
begin
{*
 00407B5C    jmp         dword ptr ds:[55F984]
*}
end;

//00407B64
function user32.DrawStateA(Brush:HBRUSH; CBFunc:Pointer; lData:Longint; wData:Longint; x:Integer; y:Integer; cx:Integer; cy:Integer; Flags:LongWord):LongBool; stdcall;
begin
{*
 00407B64    jmp         dword ptr ds:[55F980]
*}
end;

//00407B6C
function user32.DrawTextA(lpString:PAnsiChar; nCount:Integer; var lpRect:TRect; uFormat:LongWord):Integer; stdcall;
begin
{*
 00407B6C    jmp         dword ptr ds:[55F97C]
*}
end;

//00407B74
function user32.DrawTextA(lpString:PAnsiChar; nCount:Integer; var lpRect:TRect; uFormat:LongWord):Integer; stdcall;
begin
{*
 00407B74    jmp         dword ptr ds:[55F97C]
*}
end;

//00407B7C
function user32.DrawTextW(lpString:PWideChar; nCount:Integer; var lpRect:TRect; uFormat:LongWord):Integer; stdcall;
begin
{*
 00407B7C    jmp         dword ptr ds:[55F978]
*}
end;

//00407B84
function user32.EmptyClipboard:LongBool;
begin
{*
 00407B84    jmp         dword ptr ds:[55F974]
*}
end;

//00407B8C
function user32.EnableMenuItem(uIDEnableItem:LongWord; uEnable:LongWord):LongBool; stdcall;
begin
{*
 00407B8C    jmp         dword ptr ds:[55F970]
*}
end;

//00407B94
function user32.EnableScrollBar(wSBflags:LongWord; wArrows:LongWord):LongBool; stdcall;
begin
{*
 00407B94    jmp         dword ptr ds:[55F96C]
*}
end;

//00407B9C
function user32.EnableWindow(bEnable:LongBool):LongBool; stdcall;
begin
{*
 00407B9C    jmp         dword ptr ds:[55F968]
*}
end;

//00407BA4
function user32.EndDeferWindowPos:LongBool; stdcall;
begin
{*
 00407BA4    jmp         dword ptr ds:[55F964]
*}
end;

//00407BAC
function user32.EndPaint(const lpPaint:tagPAINTSTRUCT):LongBool; stdcall;
begin
{*
 00407BAC    jmp         dword ptr ds:[55F960]
*}
end;

//00407BB4
function user32.EnumThreadWindows(lpfn:Pointer; lParam:Longint):LongBool; stdcall;
begin
{*
 00407BB4    jmp         dword ptr ds:[55F95C]
*}
end;

//00407BBC
function user32.EnumWindows(lParam:Longint):LongBool; stdcall;
begin
{*
 00407BBC    jmp         dword ptr ds:[55F958]
*}
end;

//00407BC4
function user32.EqualRect(const lprc2:TRect):LongBool; stdcall;
begin
{*
 00407BC4    jmp         dword ptr ds:[55F954]
*}
end;

//00407BCC
function user32.FillRect(const lprc:TRect; hbr:HBRUSH):Integer; stdcall;
begin
{*
 00407BCC    jmp         dword ptr ds:[55F950]
*}
end;

//00407BD4
function user32.FindWindowA(lpWindowName:PAnsiChar):HWND; stdcall;
begin
{*
 00407BD4    jmp         dword ptr ds:[55F94C]
*}
end;

//00407BDC
function user32.FindWindowA(lpWindowName:PAnsiChar):HWND; stdcall;
begin
{*
 00407BDC    jmp         dword ptr ds:[55F94C]
*}
end;

//00407BE4
function user32.FrameRect(const lprc:TRect; hbr:HBRUSH):Integer; stdcall;
begin
{*
 00407BE4    jmp         dword ptr ds:[55F948]
*}
end;

//00407BEC
function user32.GetActiveWindow:HWND;
begin
{*
 00407BEC    jmp         dword ptr ds:[55F944]
*}
end;

//00407BF4
function user32.GetAsyncKeyState:Smallint; stdcall;
begin
{*
 00407BF4    jmp         dword ptr ds:[55F940]
*}
end;

//00407BFC
function user32.GetCapture:HWND;
begin
{*
 00407BFC    jmp         dword ptr ds:[55F93C]
*}
end;

//00407C04
function user32.GetClassInfoA(lpClassName:PAnsiChar; var lpWndClass:tagWNDCLASSA):LongBool; stdcall;
begin
{*
 00407C04    jmp         dword ptr ds:[55F938]
*}
end;

//00407C0C
function user32.GetClassNameA(lpClassName:PAnsiChar; nMaxCount:Integer):Integer; stdcall;
begin
{*
 00407C0C    jmp         dword ptr ds:[55F934]
*}
end;

//00407C14
function user32.GetClassNameA(lpClassName:PAnsiChar; nMaxCount:Integer):Integer; stdcall;
begin
{*
 00407C14    jmp         dword ptr ds:[55F934]
*}
end;

//00407C1C
function user32.GetClientRect(var lpRect:TRect):LongBool; stdcall;
begin
{*
 00407C1C    jmp         dword ptr ds:[55F930]
*}
end;

//00407C24
function user32.GetClipboardData:THandle; stdcall;
begin
{*
 00407C24    jmp         dword ptr ds:[55F92C]
*}
end;

//00407C2C
function user32.GetCursor:HICON;
begin
{*
 00407C2C    jmp         dword ptr ds:[55F928]
*}
end;

//00407C34
function user32.GetCursorPos:LongBool; stdcall;
begin
{*
 00407C34    jmp         dword ptr ds:[55F924]
*}
end;

//00407C3C
function user32.GetDC:HDC; stdcall;
begin
{*
 00407C3C    jmp         dword ptr ds:[55F920]
*}
end;

//00407C44
function user32.GetDCEx(hrgnClip:HRGN; flags:DWORD):HDC; stdcall;
begin
{*
 00407C44    jmp         dword ptr ds:[55F91C]
*}
end;

//00407C4C
function user32.GetDesktopWindow:HWND;
begin
{*
 00407C4C    jmp         dword ptr ds:[55F918]
*}
end;

//00407C54
function user32.GetFocus:HWND;
begin
{*
 00407C54    jmp         dword ptr ds:[55F914]
*}
end;

//00407C5C
function user32.GetForegroundWindow:HWND;
begin
{*
 00407C5C    jmp         dword ptr ds:[55F910]
*}
end;

//00407C64
function user32.GetIconInfo(var piconinfo:_ICONINFO):LongBool; stdcall;
begin
{*
 00407C64    jmp         dword ptr ds:[55F90C]
*}
end;

//00407C6C
function user32.GetKeyNameTextA(lpString:PAnsiChar; nSize:Integer):Integer; stdcall;
begin
{*
 00407C6C    jmp         dword ptr ds:[55F908]
*}
end;

//00407C74
function user32.GetKeyState:Smallint; stdcall;
begin
{*
 00407C74    jmp         dword ptr ds:[55F904]
*}
end;

//00407C7C
function user32.GetKeyboardLayout:HKL; stdcall;
begin
{*
 00407C7C    jmp         dword ptr ds:[55F900]
*}
end;

//00407C84
function user32.GetKeyboardLayoutList(var List:void ):LongWord; stdcall;
begin
{*
 00407C84    jmp         dword ptr ds:[55F8FC]
*}
end;

//00407C8C
function user32.GetKeyboardState:LongBool; stdcall;
begin
{*
 00407C8C    jmp         dword ptr ds:[55F8F8]
*}
end;

//00407C94
function user32.GetLastActivePopup:HWND; stdcall;
begin
{*
 00407C94    jmp         dword ptr ds:[55F8F4]
*}
end;

//00407C9C
function user32.GetMenu:HMENU; stdcall;
begin
{*
 00407C9C    jmp         dword ptr ds:[55F8F0]
*}
end;

//00407CA4
function user32.GetMenuItemCount:Integer; stdcall;
begin
{*
 00407CA4    jmp         dword ptr ds:[55F8EC]
*}
end;

//00407CAC
function user32.GetMenuItemID(nPos:Integer):LongWord; stdcall;
begin
{*
 00407CAC    jmp         dword ptr ds:[55F8E8]
*}
end;

//00407CB4
function user32.GetMenuItemInfoA(p2:LongWord; p3:LongBool; var p4:tagMENUITEMINFOA):LongBool; stdcall;
begin
{*
 00407CB4    jmp         dword ptr ds:[55F8E4]
*}
end;

//00407CBC
function user32.GetMenuState(uId:LongWord; uFlags:LongWord):LongWord; stdcall;
begin
{*
 00407CBC    jmp         dword ptr ds:[55F8E0]
*}
end;

//00407CC4
function user32.GetMenuStringA(uIDItem:LongWord; lpString:PAnsiChar; nMaxCount:Integer; uFlag:LongWord):Integer; stdcall;
begin
{*
 00407CC4    jmp         dword ptr ds:[55F8DC]
*}
end;

//00407CCC
function user32.GetMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord):LongBool; stdcall;
begin
{*
 00407CCC    jmp         dword ptr ds:[55F8D8]
*}
end;

//00407CD4
function user32.GetMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord):LongBool; stdcall;
begin
{*
 00407CD4    jmp         dword ptr ds:[55F8D8]
*}
end;

//00407CDC
function user32.GetMessageW(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord):LongBool; stdcall;
begin
{*
 00407CDC    jmp         dword ptr ds:[55F8D4]
*}
end;

//00407CE4
function user32.GetMessagePos:DWORD;
begin
{*
 00407CE4    jmp         dword ptr ds:[55F8D0]
*}
end;

//00407CEC
function user32.GetWindow(uCmd:LongWord):HWND; stdcall;
begin
{*
 00407CEC    jmp         dword ptr ds:[55F8CC]
*}
end;

//00407CF4
function user32.GetParent:HWND; stdcall;
begin
{*
 00407CF4    jmp         dword ptr ds:[55F8C8]
*}
end;

//00407CFC
function user32.GetPropA(lpString:PAnsiChar):THandle; stdcall;
begin
{*
 00407CFC    jmp         dword ptr ds:[55F8C4]
*}
end;

//00407D04
function user32.GetScrollInfo(BarFlag:Integer; var ScrollInfo:tagSCROLLINFO):LongBool; stdcall;
begin
{*
 00407D04    jmp         dword ptr ds:[55F8C0]
*}
end;

//00407D0C
function user32.GetScrollPos(nBar:Integer):Integer; stdcall;
begin
{*
 00407D0C    jmp         dword ptr ds:[55F8BC]
*}
end;

//00407D14
function user32.GetScrollRange(nBar:Integer; var lpMinPos:Integer; var lpMaxPos:Integer):LongBool; stdcall;
begin
{*
 00407D14    jmp         dword ptr ds:[55F8B8]
*}
end;

//00407D1C
function user32.GetSubMenu(nPos:Integer):HMENU; stdcall;
begin
{*
 00407D1C    jmp         dword ptr ds:[55F8B4]
*}
end;

//00407D24
function user32.GetSysColor:DWORD; stdcall;
begin
{*
 00407D24    jmp         dword ptr ds:[55F8B0]
*}
end;

//00407D2C
function user32.GetSysColorBrush:HBRUSH; stdcall;
begin
{*
 00407D2C    jmp         dword ptr ds:[55F8AC]
*}
end;

//00407D34
function user32.GetSystemMenu(bRevert:LongBool):HMENU; stdcall;
begin
{*
 00407D34    jmp         dword ptr ds:[55F8A8]
*}
end;

//00407D3C
function user32.GetSystemMetrics:Integer; stdcall;
begin
{*
 00407D3C    jmp         dword ptr ds:[55F8A4]
*}
end;

//00407D44
function user32.GetTopWindow:HWND; stdcall;
begin
{*
 00407D44    jmp         dword ptr ds:[55F8A0]
*}
end;

//00407D4C
function user32.GetWindow(uCmd:LongWord):HWND; stdcall;
begin
{*
 00407D4C    jmp         dword ptr ds:[55F8CC]
*}
end;

//00407D54
function user32.GetWindowDC:HDC; stdcall;
begin
{*
 00407D54    jmp         dword ptr ds:[55F89C]
*}
end;

//00407D5C
function user32.GetWindowLongA(nIndex:Integer):Longint; stdcall;
begin
{*
 00407D5C    jmp         dword ptr ds:[55F898]
*}
end;

//00407D64
function user32.GetWindowLongA(nIndex:Integer):Longint; stdcall;
begin
{*
 00407D64    jmp         dword ptr ds:[55F898]
*}
end;

//00407D6C
function user32.GetWindowPlacement(WindowPlacement:PWindowPlacement):LongBool; stdcall;
begin
{*
 00407D6C    jmp         dword ptr ds:[55F894]
*}
end;

//00407D74
function user32.GetWindowRect(var lpRect:TRect):LongBool; stdcall;
begin
{*
 00407D74    jmp         dword ptr ds:[55F890]
*}
end;

//00407D7C
function user32.GetWindowTextA(lpString:PAnsiChar; nMaxCount:Integer):Integer; stdcall;
begin
{*
 00407D7C    jmp         dword ptr ds:[55F88C]
*}
end;

//00407D84
function user32.GetWindowTextA(lpString:PAnsiChar; nMaxCount:Integer):Integer; stdcall;
begin
{*
 00407D84    jmp         dword ptr ds:[55F88C]
*}
end;

//00407D8C
function user32.GetWindowTextW(lpString:PWideChar; nMaxCount:Integer):Integer; stdcall;
begin
{*
 00407D8C    jmp         dword ptr ds:[55F888]
*}
end;

//00407D94
function user32.GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;
begin
{*
 00407D94    jmp         dword ptr ds:[55F884]
*}
end;

//00407D9C
function user32.GetWindowThreadProcessId(lpdwProcessId:Pointer):DWORD; stdcall;
begin
{*
 00407D9C    jmp         dword ptr ds:[55F884]
*}
end;

//00407DA4
function user32.HideCaret:LongBool; stdcall;
begin
{*
 00407DA4    jmp         dword ptr ds:[55F880]
*}
end;

//00407DAC
function user32.InflateRect(dx:Integer; dy:Integer):LongBool; stdcall;
begin
{*
 00407DAC    jmp         dword ptr ds:[55F87C]
*}
end;

//00407DB4
function user32.InsertMenuA(uPosition:LongWord; uFlags:LongWord; uIDNewItem:LongWord; lpNewItem:PAnsiChar):LongBool; stdcall;
begin
{*
 00407DB4    jmp         dword ptr ds:[55F878]
*}
end;

//00407DBC
function user32.InsertMenuItemA(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOA):LongBool; stdcall;
begin
{*
 00407DBC    jmp         dword ptr ds:[55F874]
*}
end;

//00407DC4
function user32.IntersectRect(const lprcSrc1:TRect; const lprcSrc2:TRect):LongBool; stdcall;
begin
{*
 00407DC4    jmp         dword ptr ds:[55F870]
*}
end;

//00407DCC
function user32.InvalidateRect(lpRect:PRect; bErase:LongBool):LongBool; stdcall;
begin
{*
 00407DCC    jmp         dword ptr ds:[55F86C]
*}
end;

//00407DD4
function user32.IsChild(hWnd:HWND):LongBool; stdcall;
begin
{*
 00407DD4    jmp         dword ptr ds:[55F868]
*}
end;

//00407DDC
function user32.IsDialogMessageA(var lpMsg:tagMSG):LongBool; stdcall;
begin
{*
 00407DDC    jmp         dword ptr ds:[55F864]
*}
end;

//00407DE4
function user32.IsIconic:LongBool; stdcall;
begin
{*
 00407DE4    jmp         dword ptr ds:[55F860]
*}
end;

//00407DEC
function user32.IsRectEmpty:LongBool; stdcall;
begin
{*
 00407DEC    jmp         dword ptr ds:[55F85C]
*}
end;

//00407DF4
function user32.IsWindow:LongBool; stdcall;
begin
{*
 00407DF4    jmp         dword ptr ds:[55F858]
*}
end;

//00407DFC
function user32.IsWindowEnabled:LongBool; stdcall;
begin
{*
 00407DFC    jmp         dword ptr ds:[55F854]
*}
end;

//00407E04
function user32.IsWindowUnicode:LongBool; stdcall;
begin
{*
 00407E04    jmp         dword ptr ds:[55F850]
*}
end;

//00407E0C
function user32.IsWindowVisible:LongBool; stdcall;
begin
{*
 00407E0C    jmp         dword ptr ds:[55F84C]
*}
end;

//00407E14
function user32.IsZoomed:LongBool; stdcall;
begin
{*
 00407E14    jmp         dword ptr ds:[55F848]
*}
end;

//00407E1C
function user32.KillTimer(uIDEvent:LongWord):LongBool; stdcall;
begin
{*
 00407E1C    jmp         dword ptr ds:[55F844]
*}
end;

//00407E24
function user32.LoadBitmapA(lpBitmapName:PAnsiChar):HBITMAP; stdcall;
begin
{*
 00407E24    jmp         dword ptr ds:[55F840]
*}
end;

//00407E2C
function user32.LoadCursorA(lpCursorName:PAnsiChar):HICON; stdcall;
begin
{*
 00407E2C    jmp         dword ptr ds:[55F83C]
*}
end;

//00407E34
function user32.LoadIconA(lpIconName:PAnsiChar):HICON; stdcall;
begin
{*
 00407E34    jmp         dword ptr ds:[55F838]
*}
end;

//00407E3C
function user32.LoadImageA(ImageName:PAnsiChar; ImageType:LongWord; X:Integer; Y:Integer; Flags:LongWord):THandle; stdcall;
begin
{*
 00407E3C    jmp         dword ptr ds:[55F834]
*}
end;

//00407E44
function user32.LoadImageW(ImageName:PWideChar; ImageType:LongWord; X:Integer; Y:Integer; Flags:LongWord):THandle; stdcall;
begin
{*
 00407E44    jmp         dword ptr ds:[55F830]
*}
end;

//00407E4C
function user32.LoadKeyboardLayoutA(Flags:LongWord):HKL; stdcall;
begin
{*
 00407E4C    jmp         dword ptr ds:[55F82C]
*}
end;

//00407E54
function user32.LoadStringA(uID:LongWord; lpBuffer:PAnsiChar; nBufferMax:Integer):Integer; stdcall;
begin
{*
 00407E54    jmp         dword ptr ds:[55F828]
*}
end;

//00407E5C
function user32.MapVirtualKeyA(uMapType:LongWord):LongWord; stdcall;
begin
{*
 00407E5C    jmp         dword ptr ds:[55F824]
*}
end;

//00407E64
function user32.MapWindowPoints(hWndTo:HWND; var lpPoints:void ; cPoints:LongWord):Integer; stdcall;
begin
{*
 00407E64    jmp         dword ptr ds:[55F820]
*}
end;

//00407E6C
function user32.MessageBeep:LongBool; stdcall;
begin
{*
 00407E6C    jmp         dword ptr ds:[55F81C]
*}
end;

//00407E74
function user32.MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;
begin
{*
 00407E74    jmp         dword ptr ds:[55F818]
*}
end;

//00407E7C
function user32.MessageBoxA(lpText:PAnsiChar; lpCaption:PAnsiChar; uType:LongWord):Integer; stdcall;
begin
{*
 00407E7C    jmp         dword ptr ds:[55F818]
*}
end;

//00407E84
function user32.MessageBoxW(lpText:PWideChar; lpCaption:PWideChar; uType:LongWord):Integer; stdcall;
begin
{*
 00407E84    jmp         dword ptr ds:[55F814]
*}
end;

//00407E8C
function user32.MsgWaitForMultipleObjects(var pHandles:void ; fWaitAll:LongBool; dwMilliseconds:DWORD; dwWakeMask:DWORD):DWORD; stdcall;
begin
{*
 00407E8C    jmp         dword ptr ds:[55F810]
*}
end;

//00407E94
function user32.OemToCharA(lpszDst:PAnsiChar):LongBool; stdcall;
begin
{*
 00407E94    jmp         dword ptr ds:[55F80C]
*}
end;

//00407E9C
function user32.OffsetRect(DX:Integer; DY:Integer):Boolean;
begin
{*
 00407E9C    jmp         dword ptr ds:[55F808]
*}
end;

//00407EA4
function user32.OpenClipboard:LongBool; stdcall;
begin
{*
 00407EA4    jmp         dword ptr ds:[55F804]
*}
end;

//00407EAC
function user32.PeekMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;
begin
{*
 00407EAC    jmp         dword ptr ds:[55F800]
*}
end;

//00407EB4
function user32.PeekMessageA(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;
begin
{*
 00407EB4    jmp         dword ptr ds:[55F800]
*}
end;

//00407EBC
function user32.PeekMessageW(hWnd:HWND; wMsgFilterMin:LongWord; wMsgFilterMax:LongWord; wRemoveMsg:LongWord):LongBool; stdcall;
begin
{*
 00407EBC    jmp         dword ptr ds:[55F7FC]
*}
end;

//00407EC4
function user32.PostMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):LongBool; stdcall;
begin
{*
 00407EC4    jmp         dword ptr ds:[55F7F8]
*}
end;

//00407ECC
function user32.PostMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):LongBool; stdcall;
begin
{*
 00407ECC    jmp         dword ptr ds:[55F7F8]
*}
end;

//00407ED4
procedure user32.PostQuitMessage; stdcall;
begin
{*
 00407ED4    jmp         dword ptr ds:[55F7F4]
*}
end;

//00407EDC
function user32.PostThreadMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):LongBool; stdcall;
begin
{*
 00407EDC    jmp         dword ptr ds:[55F7F0]
*}
end;

//00407EE4
function user32.PostThreadMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):LongBool; stdcall;
begin
{*
 00407EE4    jmp         dword ptr ds:[55F7F0]
*}
end;

//00407EEC
function user32.PtInRect(const P:TPoint):Boolean;
begin
{*
 00407EEC    jmp         dword ptr ds:[55F7EC]
*}
end;

//00407EF4
function user32.RedrawWindow(lprcUpdate:PRect; hrgnUpdate:HRGN; flags:LongWord):LongBool; stdcall;
begin
{*
 00407EF4    jmp         dword ptr ds:[55F7E8]
*}
end;

//00407EFC
function user32.RegisterClassA:Word; stdcall;
begin
{*
 00407EFC    jmp         dword ptr ds:[55F7E4]
*}
end;

//00407F04
function user32.RegisterClassA:Word; stdcall;
begin
{*
 00407F04    jmp         dword ptr ds:[55F7E4]
*}
end;

//00407F0C
function user32.RegisterClassW:Word; stdcall;
begin
{*
 00407F0C    jmp         dword ptr ds:[55F7E0]
*}
end;

//00407F14
function user32.RegisterClipboardFormatA:LongWord; stdcall;
begin
{*
 00407F14    jmp         dword ptr ds:[55F7DC]
*}
end;

//00407F1C
function user32.RegisterWindowMessageA:LongWord; stdcall;
begin
{*
 00407F1C    jmp         dword ptr ds:[55F7D8]
*}
end;

//00407F24
function user32.ReleaseCapture:LongBool;
begin
{*
 00407F24    jmp         dword ptr ds:[55F7D4]
*}
end;

//00407F2C
function user32.ReleaseDC(hDC:HDC):Integer; stdcall;
begin
{*
 00407F2C    jmp         dword ptr ds:[55F7D0]
*}
end;

//00407F34
function user32.RemoveMenu(uPosition:LongWord; uFlags:LongWord):LongBool; stdcall;
begin
{*
 00407F34    jmp         dword ptr ds:[55F7CC]
*}
end;

//00407F3C
function user32.RemovePropA(lpString:PAnsiChar):THandle; stdcall;
begin
{*
 00407F3C    jmp         dword ptr ds:[55F7C8]
*}
end;

//00407F44
function user32.ScreenToClient(var lpPoint:TPoint):LongBool; stdcall;
begin
{*
 00407F44    jmp         dword ptr ds:[55F7C4]
*}
end;

//00407F4C
function user32.ScrollWindow(XAmount:Integer; YAmount:Integer; Rect:PRect; ClipRect:PRect):LongBool; stdcall;
begin
{*
 00407F4C    jmp         dword ptr ds:[55F7C0]
*}
end;

//00407F54
function user32.SendMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407F54    jmp         dword ptr ds:[55F7BC]
*}
end;

//00407F5C
function user32.SendMessageA(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407F5C    jmp         dword ptr ds:[55F7BC]
*}
end;

//00407F64
function user32.SendMessageW(Msg:LongWord; wParam:Longint; lParam:Longint):Longint; stdcall;
begin
{*
 00407F64    jmp         dword ptr ds:[55F7B8]
*}
end;

//00407F6C
function user32.SendMessageTimeoutA(Msg:LongWord; wParam:Longint; lParam:Longint; fuFlags:LongWord; uTimeout:LongWord; var lpdwResult:DWORD):Longint; stdcall;
begin
{*
 00407F6C    jmp         dword ptr ds:[55F7B4]
*}
end;

//00407F74
function user32.SetActiveWindow:HWND; stdcall;
begin
{*
 00407F74    jmp         dword ptr ds:[55F7B0]
*}
end;

//00407F7C
function user32.SetCapture:HWND; stdcall;
begin
{*
 00407F7C    jmp         dword ptr ds:[55F7AC]
*}
end;

//00407F84
function user32.SetClassLongA(nIndex:Integer; dwNewLong:Longint):DWORD; stdcall;
begin
{*
 00407F84    jmp         dword ptr ds:[55F7A8]
*}
end;

//00407F8C
function user32.SetClipboardData(hMem:THandle):THandle; stdcall;
begin
{*
 00407F8C    jmp         dword ptr ds:[55F7A4]
*}
end;

//00407F94
function user32.SetCursor:HICON; stdcall;
begin
{*
 00407F94    jmp         dword ptr ds:[55F7A0]
*}
end;

//00407F9C
function user32.SetFocus:HWND; stdcall;
begin
{*
 00407F9C    jmp         dword ptr ds:[55F79C]
*}
end;

//00407FA4
function user32.SetForegroundWindow:LongBool; stdcall;
begin
{*
 00407FA4    jmp         dword ptr ds:[55F798]
*}
end;

//00407FAC
function user32.SetMenu(hMenu:HMENU):LongBool; stdcall;
begin
{*
 00407FAC    jmp         dword ptr ds:[55F794]
*}
end;

//00407FB4
function user32.SetMenuItemInfoA(p2:LongWord; p3:LongBool; const p4:tagMENUITEMINFOA):LongBool; stdcall;
begin
{*
 00407FB4    jmp         dword ptr ds:[55F790]
*}
end;

//00407FBC
function user32.SetParent(hWndNewParent:HWND):HWND; stdcall;
begin
{*
 00407FBC    jmp         dword ptr ds:[55F78C]
*}
end;

//00407FC4
function user32.SetPropA(lpString:PAnsiChar; hData:THandle):LongBool; stdcall;
begin
{*
 00407FC4    jmp         dword ptr ds:[55F788]
*}
end;

//00407FCC
function user32.SetRect(xLeft:Integer; yTop:Integer; xRight:Integer; yBottom:Integer):LongBool; stdcall;
begin
{*
 00407FCC    jmp         dword ptr ds:[55F784]
*}
end;

//00407FD4
function user32.SetScrollInfo(BarFlag:Integer; const ScrollInfo:tagSCROLLINFO; Redraw:LongBool):Integer; stdcall;
begin
{*
 00407FD4    jmp         dword ptr ds:[55F780]
*}
end;

//00407FDC
function user32.SetScrollPos(nBar:Integer; nPos:Integer; bRedraw:LongBool):Integer; stdcall;
begin
{*
 00407FDC    jmp         dword ptr ds:[55F77C]
*}
end;

//00407FE4
function user32.SetScrollRange(nBar:Integer; nMinPos:Integer; nMaxPos:Integer; bRedraw:LongBool):LongBool; stdcall;
begin
{*
 00407FE4    jmp         dword ptr ds:[55F778]
*}
end;

//00407FEC
function user32.SetTimer(nIDEvent:LongWord; uElapse:LongWord; lpTimerFunc:Pointer):LongWord; stdcall;
begin
{*
 00407FEC    jmp         dword ptr ds:[55F774]
*}
end;

//00407FF4
function user32.SetWindowLongA(nIndex:Integer; dwNewLong:Longint):Longint; stdcall;
begin
{*
 00407FF4    jmp         dword ptr ds:[55F770]
*}
end;

//00407FFC
function user32.SetWindowLongA(nIndex:Integer; dwNewLong:Longint):Longint; stdcall;
begin
{*
 00407FFC    jmp         dword ptr ds:[55F770]
*}
end;

//00408004
function user32.SetWindowLongW(nIndex:Integer; dwNewLong:Longint):Longint; stdcall;
begin
{*
 00408004    jmp         dword ptr ds:[55F76C]
*}
end;

//0040800C
function user32.SetWindowPlacement(WindowPlacement:PWindowPlacement):LongBool; stdcall;
begin
{*
 0040800C    jmp         dword ptr ds:[55F768]
*}
end;

//00408014
function user32.SetWindowPos(hWndInsertAfter:HWND; X:Integer; Y:Integer; cx:Integer; cy:Integer; uFlags:LongWord):LongBool; stdcall;
begin
{*
 00408014    jmp         dword ptr ds:[55F764]
*}
end;

//0040801C
function user32.SetWindowTextA(lpString:PAnsiChar):LongBool; stdcall;
begin
{*
 0040801C    jmp         dword ptr ds:[55F760]
*}
end;

//00408024
function user32.SetWindowTextA(lpString:PAnsiChar):LongBool; stdcall;
begin
{*
 00408024    jmp         dword ptr ds:[55F760]
*}
end;

//0040802C
function user32.SetWindowTextW(lpString:PWideChar):LongBool; stdcall;
begin
{*
 0040802C    jmp         dword ptr ds:[55F75C]
*}
end;

//00408034
function user32.SetWindowsHookExA(lpfn:TFNHookProc; hmod:HINST; dwThreadId:DWORD):HHOOK; stdcall;
begin
{*
 00408034    jmp         dword ptr ds:[55F758]
*}
end;

//0040803C
function user32.ShowCaret:LongBool; stdcall;
begin
{*
 0040803C    jmp         dword ptr ds:[55F754]
*}
end;

//00408044
function user32.ShowCursor:Integer; stdcall;
begin
{*
 00408044    jmp         dword ptr ds:[55F750]
*}
end;

//0040804C
function user32.ShowOwnedPopups(fShow:LongBool):LongBool; stdcall;
begin
{*
 0040804C    jmp         dword ptr ds:[55F74C]
*}
end;

//00408054
function user32.ShowScrollBar(wBar:Integer; bShow:LongBool):LongBool; stdcall;
begin
{*
 00408054    jmp         dword ptr ds:[55F748]
*}
end;

//0040805C
function user32.ShowWindow(nCmdShow:Integer):LongBool; stdcall;
begin
{*
 0040805C    jmp         dword ptr ds:[55F744]
*}
end;

//00408064
function user32.SystemParametersInfoA(uiParam:LongWord; pvParam:Pointer; fWinIni:LongWord):LongBool; stdcall;
begin
{*
 00408064    jmp         dword ptr ds:[55F740]
*}
end;

//0040806C
function user32.TrackPopupMenu(uFlags:LongWord; x:Integer; y:Integer; nReserved:Integer; hWnd:HWND; prcRect:PRect):LongBool; stdcall;
begin
{*
 0040806C    jmp         dword ptr ds:[55F73C]
*}
end;

//00408074
function user32.TranslateMDISysAccel(const lpMsg:tagMSG):LongBool; stdcall;
begin
{*
 00408074    jmp         dword ptr ds:[55F738]
*}
end;

//0040807C
function user32.TranslateMessage:LongBool; stdcall;
begin
{*
 0040807C    jmp         dword ptr ds:[55F734]
*}
end;

//00408084
function user32.UnhookWindowsHookEx:LongBool; stdcall;
begin
{*
 00408084    jmp         dword ptr ds:[55F730]
*}
end;

//0040808C
function user32.UnregisterClassA(hInstance:HINST):LongBool; stdcall;
begin
{*
 0040808C    jmp         dword ptr ds:[55F72C]
*}
end;

//00408094
function user32.UpdateWindow:LongBool; stdcall;
begin
{*
 00408094    jmp         dword ptr ds:[55F728]
*}
end;

//0040809C
function user32.WaitMessage:LongBool;
begin
{*
 0040809C    jmp         dword ptr ds:[55F724]
*}
end;

//004080A4
function user32.WinHelpA(lpszHelp:PAnsiChar; uCommand:LongWord; dwData:DWORD):LongBool; stdcall;
begin
{*
 004080A4    jmp         dword ptr ds:[55F720]
*}
end;

//004080AC
function user32.WindowFromPoint:HWND; stdcall;
begin
{*
 004080AC    jmp         dword ptr ds:[55F71C]
*}
end;

//004080B4
{*function sub_004080B4(?:Longint; ?:?):?;
begin
 004080B4    push        ebp
 004080B5    mov         ebp,esp
 004080B7    add         esp,0FFFFFFF8
 004080BA    mov         word ptr [ebp-4],dx
 004080BE    mov         word ptr [ebp-2],ax
 004080C2    movzx       eax,word ptr [ebp-2]
 004080C6    movzx       edx,word ptr [ebp-4]
 004080CA    shl         edx,10
 004080CD    or          eax,edx
 004080CF    mov         dword ptr [ebp-8],eax
 004080D2    mov         eax,dword ptr [ebp-8]
 004080D5    pop         ecx
 004080D6    pop         ecx
 004080D7    pop         ebp
 004080D8    ret
end;*}

//004080DC
{*function sub_004080DC(?:DWORD):?;
begin
 004080DC    push        ebp
 004080DD    mov         ebp,esp
 004080DF    add         esp,0FFFFFFF8
 004080E2    mov         dword ptr [ebp-4],eax
 004080E5    mov         eax,dword ptr [ebp-4]
 004080E8    shr         eax,10
 004080EB    mov         word ptr [ebp-6],ax
 004080EF    mov         ax,word ptr [ebp-6]
 004080F3    pop         ecx
 004080F4    pop         ecx
 004080F5    pop         ebp
 004080F6    ret
end;*}

//004080F8
{*function sub_004080F8:?;
begin
 004080F8    push        ebp
 004080F9    mov         ebp,esp
 004080FB    push        ecx
 004080FC    call        kernel32.GetTickCount
 00408101    mov         dword ptr [ebp-4],eax
 00408104    mov         eax,dword ptr [ebp-4]
 00408107    pop         ecx
 00408108    pop         ebp
 00408109    ret
end;*}

//0040810C
{*procedure sub_0040810C(?:?; ?:WideString; ?:?);
begin
 0040810C    push        ebp
 0040810D    mov         ebp,esp
 0040810F    add         esp,0FFFFFFF4
 00408112    mov         dword ptr [ebp-0C],ecx
 00408115    mov         dword ptr [ebp-8],edx
 00408118    mov         dword ptr [ebp-4],eax
 0040811B    mov         edx,dword ptr [ebp-4]
 0040811E    mov         eax,dword ptr [ebp-8]
 00408121    mov         ecx,dword ptr [ebp-0C]
 00408124    call        Move
 00408129    mov         esp,ebp
 0040812B    pop         ebp
 0040812C    ret
end;*}

//00408130
{*procedure sub_00408130(?:Pointer; ?:?);
begin
 00408130    push        ebp
 00408131    mov         ebp,esp
 00408133    add         esp,0FFFFFFF8
 00408136    mov         dword ptr [ebp-8],edx
 00408139    mov         dword ptr [ebp-4],eax
 0040813C    mov         eax,dword ptr [ebp-4]
 0040813F    xor         ecx,ecx
 00408141    mov         edx,dword ptr [ebp-8]
 00408144    call        @FillChar
 00408149    pop         ecx
 0040814A    pop         ecx
 0040814B    pop         ebp
 0040814C    ret
end;*}

//00408150
{*function sub_00408150(?:THandle):?;
begin
 00408150    push        ebp
 00408151    mov         ebp,esp
 00408153    add         esp,0FFFFFFF8
 00408156    mov         dword ptr [ebp-8],eax
 00408159    xor         eax,eax
 0040815B    mov         dword ptr [ebp-4],eax
 0040815E    mov         eax,dword ptr [ebp-4]
 00408161    pop         ecx
 00408162    pop         ecx
 00408163    pop         ebp
 00408164    ret
end;*}

//00408168
{*function sub_00408168:?;
begin
 00408168    push        edx
 00408169    push        eax
 0040816A    call        kernel32.GlobalAlloc
 0040816F    push        eax
 00408170    call        kernel32.GlobalLock
 00408175    ret
end;*}

//00408178
{*function sub_00408178:?;
begin
 00408178    push        ecx
 00408179    push        edx
 0040817A    push        eax
 0040817B    call        kernel32.GlobalHandle
 00408180    push        eax
 00408181    push        eax
 00408182    call        kernel32.GlobalUnlock
 00408187    call        kernel32.GlobalReAlloc
 0040818C    push        eax
 0040818D    call        kernel32.GlobalLock
 00408192    ret
end;*}

//00408194
procedure sub_00408194;
begin
{*
 00408194    push        eax
 00408195    call        kernel32.GlobalHandle
 0040819A    push        eax
 0040819B    push        eax
 0040819C    call        kernel32.GlobalUnlock
 004081A1    call        kernel32.GlobalFree
 004081A6    ret
*}
end;

//004081A8
{*function sub_004081A8(?:?; ?:?):?;
begin
 004081A8    push        ebp
 004081A9    mov         ebp,esp
 004081AB    add         esp,0FFFFFFF4
 004081AE    mov         dword ptr [ebp-8],edx
 004081B1    mov         dword ptr [ebp-4],eax
 004081B4    mov         eax,dword ptr [ebp-8]
 004081B7    shl         eax,8
 004081BA    and         eax,0FF000000
 004081BF    or          eax,dword ptr [ebp-4]
 004081C2    mov         dword ptr [ebp-0C],eax
 004081C5    mov         eax,dword ptr [ebp-0C]
 004081C8    mov         esp,ebp
 004081CA    pop         ebp
 004081CB    ret
end;*}

//004081CC
{*function sub_004081CC(?:?; ?:?; ?:Integer):?;
begin
 004081CC    push        ebp
 004081CD    mov         ebp,esp
 004081CF    add         esp,0FFFFFFF8
 004081D2    mov         byte ptr [ebp-3],cl
 004081D5    mov         byte ptr [ebp-2],dl
 004081D8    mov         byte ptr [ebp-1],al
 004081DB    xor         eax,eax
 004081DD    mov         al,byte ptr [ebp-1]
 004081E0    xor         edx,edx
 004081E2    mov         dl,byte ptr [ebp-2]
 004081E5    shl         edx,8
 004081E8    or          eax,edx
 004081EA    xor         edx,edx
 004081EC    mov         dl,byte ptr [ebp-3]
 004081EF    shl         edx,10
 004081F2    or          eax,edx
 004081F4    mov         dword ptr [ebp-8],eax
 004081F7    mov         eax,dword ptr [ebp-8]
 004081FA    pop         ecx
 004081FB    pop         ecx
 004081FC    pop         ebp
 004081FD    ret
end;*}

//00408200
{*function sub_00408200(?:?):?;
begin
 00408200    push        ebp
 00408201    mov         ebp,esp
 00408203    add         esp,0FFFFFFF8
 00408206    mov         dword ptr [ebp-4],eax
 00408209    mov         al,byte ptr [ebp-4]
 0040820C    mov         byte ptr [ebp-5],al
 0040820F    mov         al,byte ptr [ebp-5]
 00408212    pop         ecx
 00408213    pop         ecx
 00408214    pop         ebp
 00408215    ret
end;*}

//00408218
{*function sub_00408218(?:?):?;
begin
 00408218    push        ebp
 00408219    mov         ebp,esp
 0040821B    add         esp,0FFFFFFF8
 0040821E    mov         dword ptr [ebp-4],eax
 00408221    mov         eax,dword ptr [ebp-4]
 00408224    shr         eax,8
 00408227    mov         byte ptr [ebp-5],al
 0040822A    mov         al,byte ptr [ebp-5]
 0040822D    pop         ecx
 0040822E    pop         ecx
 0040822F    pop         ebp
 00408230    ret
end;*}

//00408234
{*function sub_00408234(?:?):?;
begin
 00408234    push        ebp
 00408235    mov         ebp,esp
 00408237    add         esp,0FFFFFFF8
 0040823A    mov         dword ptr [ebp-4],eax
 0040823D    mov         eax,dword ptr [ebp-4]
 00408240    shr         eax,10
 00408243    mov         byte ptr [ebp-5],al
 00408246    mov         al,byte ptr [ebp-5]
 00408249    pop         ecx
 0040824A    pop         ecx
 0040824B    pop         ebp
 0040824C    ret
end;*}

//00408250
{*procedure sub_00408250(?:?; ?:TPoint);
begin
 00408250    push        ebp
 00408251    mov         ebp,esp
 00408253    add         esp,0FFFFFFF8
 00408256    mov         dword ptr [ebp-8],edx
 00408259    mov         dword ptr [ebp-4],eax
 0040825C    movsx       eax,word ptr [ebp-4]
 00408260    mov         edx,dword ptr [ebp-8]
 00408263    mov         dword ptr [edx],eax
 00408265    movsx       eax,word ptr [ebp-2]
 00408269    mov         edx,dword ptr [ebp-8]
 0040826C    mov         dword ptr [edx+4],eax
 0040826F    pop         ecx
 00408270    pop         ecx
 00408271    pop         ebp
 00408272    ret
end;*}

//00408274
{*function sub_00408274(?:TPoint):?;
begin
 00408274    push        ebp
 00408275    mov         ebp,esp
 00408277    add         esp,0FFFFFFF8
 0040827A    mov         dword ptr [ebp-4],eax
 0040827D    mov         eax,dword ptr [ebp-4]
 00408280    mov         ax,word ptr [eax]
 00408283    mov         word ptr [ebp-8],ax
 00408287    mov         eax,dword ptr [ebp-4]
 0040828A    mov         ax,word ptr [eax+4]
 0040828E    mov         word ptr [ebp-6],ax
 00408292    mov         eax,dword ptr [ebp-8]
 00408295    pop         ecx
 00408296    pop         ecx
 00408297    pop         ebp
 00408298    ret
end;*}

//0040829C
{*function sub_0040829C(?:?; ?:?):?;
begin
 0040829C    push        ebp
 0040829D    mov         ebp,esp
 0040829F    add         esp,0FFFFFFF8
 004082A2    mov         word ptr [ebp-4],dx
 004082A6    mov         word ptr [ebp-2],ax
 004082AA    mov         dx,word ptr [ebp-4]
 004082AE    mov         ax,word ptr [ebp-2]
 004082B2    call        004080B4
 004082B7    mov         dword ptr [ebp-8],eax
 004082BA    mov         eax,dword ptr [ebp-8]
 004082BD    pop         ecx
 004082BE    pop         ecx
 004082BF    pop         ebp
 004082C0    ret
end;*}

//004082C4
{*function sub_004082C4(?:Longint; ?:Longint):?;
begin
 004082C4    push        ebp
 004082C5    mov         ebp,esp
 004082C7    add         esp,0FFFFFFF8
 004082CA    mov         word ptr [ebp-4],dx
 004082CE    mov         word ptr [ebp-2],ax
 004082D2    mov         dx,word ptr [ebp-4]
 004082D6    mov         ax,word ptr [ebp-2]
 004082DA    call        004080B4
 004082DF    mov         dword ptr [ebp-8],eax
 004082E2    mov         eax,dword ptr [ebp-8]
 004082E5    pop         ecx
 004082E6    pop         ecx
 004082E7    pop         ebp
 004082E8    ret
end;*}

//004082EC
function user32.CreateWindowExA(dwExStyle:DWORD; lpClassName:PAnsiChar; lpParam:Pointer; hInstance:HINST; hMenu:HMENU; hWndParent:HWND; nHeight:Integer; nWidth:Integer; Y:Integer; X:Integer; dwStyle:DWORD):HWND;
begin
{*
 004082EC    jmp         dword ptr ds:[55F718]
*}
end;

//004082F4
function user32.CreateWindowExA(dwExStyle:DWORD; lpClassName:PAnsiChar; lpParam:Pointer; hInstance:HINST; hMenu:HMENU; hWndParent:HWND; nHeight:Integer; nWidth:Integer; Y:Integer; X:Integer; dwStyle:DWORD):HWND;
begin
{*
 004082F4    jmp         dword ptr ds:[55F718]
*}
end;

//004082FC
function user32.CreateWindowExW(dwExStyle:DWORD; lpClassName:PWideChar; lpParam:Pointer; hInstance:HINST; hMenu:HMENU; hWndParent:HWND; nHeight:Integer; nWidth:Integer; Y:Integer; X:Integer; dwStyle:DWORD):HWND;
begin
{*
 004082FC    jmp         dword ptr ds:[55F714]
*}
end;

//00408304
{*function sub_00408304(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00408304    push        ebp
 00408305    mov         ebp,esp
 00408307    add         esp,0FFFFFFEC
 0040830A    mov         dword ptr [ebp-0C],ecx
 0040830D    mov         dword ptr [ebp-8],edx
 00408310    mov         dword ptr [ebp-4],eax
 00408313    call        00402BA8
 00408318    mov         word ptr [ebp-12],ax
 0040831C    mov         eax,dword ptr [ebp+8]
 0040831F    push        eax
 00408320    mov         eax,dword ptr [ebp+0C]
 00408323    push        eax
 00408324    mov         eax,dword ptr [ebp+10]
 00408327    push        eax
 00408328    mov         eax,dword ptr [ebp+14]
 0040832B    push        eax
 0040832C    mov         eax,dword ptr [ebp+18]
 0040832F    push        eax
 00408330    mov         eax,dword ptr [ebp+1C]
 00408333    push        eax
 00408334    mov         eax,dword ptr [ebp+20]
 00408337    push        eax
 00408338    mov         eax,dword ptr [ebp+24]
 0040833B    push        eax
 0040833C    mov         eax,dword ptr [ebp+28]
 0040833F    push        eax
 00408340    mov         eax,dword ptr [ebp-0C]
 00408343    push        eax
 00408344    mov         eax,dword ptr [ebp-8]
 00408347    push        eax
 00408348    mov         eax,dword ptr [ebp-4]
 0040834B    push        eax
 0040834C    call        user32.CreateWindowExA
 00408351    mov         dword ptr [ebp-10],eax
 00408354    mov         ax,word ptr [ebp-12]
 00408358    call        Set8087CW
 0040835D    mov         eax,dword ptr [ebp-10]
 00408360    mov         esp,ebp
 00408362    pop         ebp
 00408363    ret         24
end;*}

//00408368
{*function sub_00408368(?:?; ?:PChar; ?:PChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00408368    push        ebp
 00408369    mov         ebp,esp
 0040836B    add         esp,0FFFFFFEC
 0040836E    mov         dword ptr [ebp-0C],ecx
 00408371    mov         dword ptr [ebp-8],edx
 00408374    mov         dword ptr [ebp-4],eax
 00408377    call        00402BA8
 0040837C    mov         word ptr [ebp-12],ax
 00408380    mov         eax,dword ptr [ebp+8]
 00408383    push        eax
 00408384    mov         eax,dword ptr [ebp+0C]
 00408387    push        eax
 00408388    mov         eax,dword ptr [ebp+10]
 0040838B    push        eax
 0040838C    mov         eax,dword ptr [ebp+14]
 0040838F    push        eax
 00408390    mov         eax,dword ptr [ebp+18]
 00408393    push        eax
 00408394    mov         eax,dword ptr [ebp+1C]
 00408397    push        eax
 00408398    mov         eax,dword ptr [ebp+20]
 0040839B    push        eax
 0040839C    mov         eax,dword ptr [ebp+24]
 0040839F    push        eax
 004083A0    mov         eax,dword ptr [ebp+28]
 004083A3    push        eax
 004083A4    mov         eax,dword ptr [ebp-0C]
 004083A7    push        eax
 004083A8    mov         eax,dword ptr [ebp-8]
 004083AB    push        eax
 004083AC    mov         eax,dword ptr [ebp-4]
 004083AF    push        eax
 004083B0    call        user32.CreateWindowExA
 004083B5    mov         dword ptr [ebp-10],eax
 004083B8    mov         ax,word ptr [ebp-12]
 004083BC    call        Set8087CW
 004083C1    mov         eax,dword ptr [ebp-10]
 004083C4    mov         esp,ebp
 004083C6    pop         ebp
 004083C7    ret         24
end;*}

//004083CC
{*function sub_004083CC(?:?; ?:?; ?:PWideChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004083CC    push        ebp
 004083CD    mov         ebp,esp
 004083CF    add         esp,0FFFFFFEC
 004083D2    mov         dword ptr [ebp-0C],ecx
 004083D5    mov         dword ptr [ebp-8],edx
 004083D8    mov         dword ptr [ebp-4],eax
 004083DB    call        00402BA8
 004083E0    mov         word ptr [ebp-12],ax
 004083E4    mov         eax,dword ptr [ebp+8]
 004083E7    push        eax
 004083E8    mov         eax,dword ptr [ebp+0C]
 004083EB    push        eax
 004083EC    mov         eax,dword ptr [ebp+10]
 004083EF    push        eax
 004083F0    mov         eax,dword ptr [ebp+14]
 004083F3    push        eax
 004083F4    mov         eax,dword ptr [ebp+18]
 004083F7    push        eax
 004083F8    mov         eax,dword ptr [ebp+1C]
 004083FB    push        eax
 004083FC    mov         eax,dword ptr [ebp+20]
 004083FF    push        eax
 00408400    mov         eax,dword ptr [ebp+24]
 00408403    push        eax
 00408404    mov         eax,dword ptr [ebp+28]
 00408407    push        eax
 00408408    mov         eax,dword ptr [ebp-0C]
 0040840B    push        eax
 0040840C    mov         eax,dword ptr [ebp-8]
 0040840F    push        eax
 00408410    mov         eax,dword ptr [ebp-4]
 00408413    push        eax
 00408414    call        user32.CreateWindowExW
 00408419    mov         dword ptr [ebp-10],eax
 0040841C    mov         ax,word ptr [ebp-12]
 00408420    call        Set8087CW
 00408425    mov         eax,dword ptr [ebp-10]
 00408428    mov         esp,ebp
 0040842A    pop         ebp
 0040842B    ret         24
end;*}

//00408430
{*function sub_00408430(?:?; ?:PChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00408430    push        ebp
 00408431    mov         ebp,esp
 00408433    add         esp,0FFFFFFEC
 00408436    mov         dword ptr [ebp-0C],ecx
 00408439    mov         dword ptr [ebp-8],edx
 0040843C    mov         dword ptr [ebp-4],eax
 0040843F    call        00402BA8
 00408444    mov         word ptr [ebp-12],ax
 00408448    mov         eax,dword ptr [ebp+8]
 0040844B    push        eax
 0040844C    mov         eax,dword ptr [ebp+0C]
 0040844F    push        eax
 00408450    mov         eax,dword ptr [ebp+10]
 00408453    push        eax
 00408454    mov         eax,dword ptr [ebp+14]
 00408457    push        eax
 00408458    mov         eax,dword ptr [ebp+18]
 0040845B    push        eax
 0040845C    mov         eax,dword ptr [ebp+1C]
 0040845F    push        eax
 00408460    mov         eax,dword ptr [ebp+20]
 00408463    push        eax
 00408464    mov         eax,dword ptr [ebp+24]
 00408467    push        eax
 00408468    mov         eax,dword ptr [ebp-0C]
 0040846B    push        eax
 0040846C    mov         eax,dword ptr [ebp-8]
 0040846F    push        eax
 00408470    mov         eax,dword ptr [ebp-4]
 00408473    push        eax
 00408474    push        0
 00408476    call        user32.CreateWindowExA
 0040847B    mov         dword ptr [ebp-10],eax
 0040847E    mov         ax,word ptr [ebp-12]
 00408482    call        Set8087CW
 00408487    mov         eax,dword ptr [ebp-10]
 0040848A    mov         esp,ebp
 0040848C    pop         ebp
 0040848D    ret         20
end;*}

//00408490
{*function sub_00408490(?:PChar; ?:PChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00408490    push        ebp
 00408491    mov         ebp,esp
 00408493    add         esp,0FFFFFFEC
 00408496    mov         dword ptr [ebp-0C],ecx
 00408499    mov         dword ptr [ebp-8],edx
 0040849C    mov         dword ptr [ebp-4],eax
 0040849F    call        00402BA8
 004084A4    mov         word ptr [ebp-12],ax
 004084A8    mov         eax,dword ptr [ebp+8]
 004084AB    push        eax
 004084AC    mov         eax,dword ptr [ebp+0C]
 004084AF    push        eax
 004084B0    mov         eax,dword ptr [ebp+10]
 004084B3    push        eax
 004084B4    mov         eax,dword ptr [ebp+14]
 004084B7    push        eax
 004084B8    mov         eax,dword ptr [ebp+18]
 004084BB    push        eax
 004084BC    mov         eax,dword ptr [ebp+1C]
 004084BF    push        eax
 004084C0    mov         eax,dword ptr [ebp+20]
 004084C3    push        eax
 004084C4    mov         eax,dword ptr [ebp+24]
 004084C7    push        eax
 004084C8    mov         eax,dword ptr [ebp-0C]
 004084CB    push        eax
 004084CC    mov         eax,dword ptr [ebp-8]
 004084CF    push        eax
 004084D0    mov         eax,dword ptr [ebp-4]
 004084D3    push        eax
 004084D4    push        0
 004084D6    call        user32.CreateWindowExA
 004084DB    mov         dword ptr [ebp-10],eax
 004084DE    mov         ax,word ptr [ebp-12]
 004084E2    call        Set8087CW
 004084E7    mov         eax,dword ptr [ebp-10]
 004084EA    mov         esp,ebp
 004084EC    pop         ebp
 004084ED    ret         20
end;*}

//004084F0
{*function sub_004084F0(?:PWideChar; ?:PWideChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004084F0    push        ebp
 004084F1    mov         ebp,esp
 004084F3    add         esp,0FFFFFFEC
 004084F6    mov         dword ptr [ebp-0C],ecx
 004084F9    mov         dword ptr [ebp-8],edx
 004084FC    mov         dword ptr [ebp-4],eax
 004084FF    call        00402BA8
 00408504    mov         word ptr [ebp-12],ax
 00408508    mov         eax,dword ptr [ebp+8]
 0040850B    push        eax
 0040850C    mov         eax,dword ptr [ebp+0C]
 0040850F    push        eax
 00408510    mov         eax,dword ptr [ebp+10]
 00408513    push        eax
 00408514    mov         eax,dword ptr [ebp+14]
 00408517    push        eax
 00408518    mov         eax,dword ptr [ebp+18]
 0040851B    push        eax
 0040851C    mov         eax,dword ptr [ebp+1C]
 0040851F    push        eax
 00408520    mov         eax,dword ptr [ebp+20]
 00408523    push        eax
 00408524    mov         eax,dword ptr [ebp+24]
 00408527    push        eax
 00408528    mov         eax,dword ptr [ebp-0C]
 0040852B    push        eax
 0040852C    mov         eax,dword ptr [ebp-8]
 0040852F    push        eax
 00408530    mov         eax,dword ptr [ebp-4]
 00408533    push        eax
 00408534    push        0
 00408536    call        user32.CreateWindowExW
 0040853B    mov         dword ptr [ebp-10],eax
 0040853E    mov         ax,word ptr [ebp-12]
 00408542    call        Set8087CW
 00408547    mov         eax,dword ptr [ebp-10]
 0040854A    mov         esp,ebp
 0040854C    pop         ebp
 0040854D    ret         20
end;*}

//00408550
{*function sub_00408550(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00408550    push        ebp
 00408551    mov         ebp,esp
 00408553    add         esp,0FFFFFFF0
 00408556    mov         dword ptr [ebp-0C],ecx
 00408559    mov         dword ptr [ebp-8],edx
 0040855C    mov         dword ptr [ebp-4],eax
 0040855F    push        408608;'Magellan MSWHEEL'
 00408564    push        40861C;'MouseZ'
 00408569    call        user32.FindWindowA
 0040856E    mov         dword ptr [ebp-10],eax
 00408571    push        408624;'MSWHEEL_ROLLMSG'
 00408576    call        user32.RegisterWindowMessageA
 0040857B    mov         edx,dword ptr [ebp-4]
 0040857E    mov         dword ptr [edx],eax
 00408580    push        408634;'MSH_WHEELSUPPORT_MSG'
 00408585    call        user32.RegisterWindowMessageA
 0040858A    mov         edx,dword ptr [ebp-8]
 0040858D    mov         dword ptr [edx],eax
 0040858F    push        40864C;'MSH_SCROLL_LINES_MSG'
 00408594    call        user32.RegisterWindowMessageA
 00408599    mov         edx,dword ptr [ebp-0C]
 0040859C    mov         dword ptr [edx],eax
 0040859E    mov         eax,dword ptr [ebp-8]
 004085A1    cmp         dword ptr [eax],0
>004085A4    je          004085C6
 004085A6    cmp         dword ptr [ebp-10],0
>004085AA    je          004085C6
 004085AC    push        0
 004085AE    push        0
 004085B0    mov         eax,dword ptr [ebp-8]
 004085B3    mov         eax,dword ptr [eax]
 004085B5    push        eax
 004085B6    mov         eax,dword ptr [ebp-10]
 004085B9    push        eax
 004085BA    call        user32.SendMessageA
 004085BF    mov         edx,dword ptr [ebp+0C]
 004085C2    mov         dword ptr [edx],eax
>004085C4    jmp         004085CD
 004085C6    mov         eax,dword ptr [ebp+0C]
 004085C9    xor         edx,edx
 004085CB    mov         dword ptr [eax],edx
 004085CD    mov         eax,dword ptr [ebp-0C]
 004085D0    cmp         dword ptr [eax],0
>004085D3    je          004085F5
 004085D5    cmp         dword ptr [ebp-10],0
>004085D9    je          004085F5
 004085DB    push        0
 004085DD    push        0
 004085DF    mov         eax,dword ptr [ebp-0C]
 004085E2    mov         eax,dword ptr [eax]
 004085E4    push        eax
 004085E5    mov         eax,dword ptr [ebp-10]
 004085E8    push        eax
 004085E9    call        user32.SendMessageA
 004085EE    mov         edx,dword ptr [ebp+8]
 004085F1    mov         dword ptr [edx],eax
>004085F3    jmp         004085FE
 004085F5    mov         eax,dword ptr [ebp+8]
 004085F8    mov         dword ptr [eax],3
 004085FE    mov         eax,dword ptr [ebp-10]
 00408601    mov         esp,ebp
 00408603    pop         ebp
 00408604    ret         8
end;*}

end.