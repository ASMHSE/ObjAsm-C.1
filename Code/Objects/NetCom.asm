; ==================================================================================================
; Title:      NetCom.asm
; Author:     G. Friedrich
; Version:    C.1.0
; Purpose:    ObjAsm compilation file for NetCom object.
; Notes:      Version C.1.0, November 2017
;             - First release.
; ==================================================================================================


WIN32_LEAN_AND_MEAN         equ 1                       ;Necessary to exlude WinSock.inc  
INCL_WINSOCK_API_PROTOTYPES equ 1
INTERNET_PROTOCOL_VERSION   equ 4

% include Objects.cop

% include &MacPath&fMath.inc
% include &MacPath&SDLL.inc

% include &IncPath&Windows\WinSock2.inc
% include &IncPath&Windows\ws2ipdef.inc
% include &IncPath&Windows\ws2tcpip.inc
% include &IncPath&Windows\CommCtrl.inc

if INTERNET_PROTOCOL_VERSION eq 4
  AF_INETX  equ   AF_INET
elseif INTERNET_PROTOCOL_VERSION eq 6
  AF_INETX  equ   AF_INET6
else
  %.err <NetComEngine.Init - wrong IP version: $ToStr(%INTERNET_PROTOCOL_VERSION)>
endif

;Add here all files that build the inheritance path and referenced objects
include Primer.inc
include Stream.inc
include Collection.inc
include DataCollection.inc
include SortedCollection.inc
include SortedDataCollection.inc
include XWCollection.inc
include DataPool.inc
include StopWatch.inc

;Add here the file that defines the object(s) to be included in the library
MakeObjects NetCom

end
