; ==================================================================================================
; Title:      WebCam_Shared.inc
; Author:     G. Friedrich
; Version:    C.1.0
; Purpose:    ObjAsm WebCam demonstration program.
; Notes:      Version C.1.0, October 2017
;               - First release.
; ==================================================================================================


;General information
APP_TITLE                     textequ   <WebCam>
ABOUT_TEXT                    textequ   <WebCam>
COPYRIGHT                     textequ   <G. Friedrich   October 2017>
VER_FILEVERSION               equ       2,0,0,0
VER_FILEVERSION_STR           textequ   <2.0>
VER_PRODUCTVERSION            equ       2,0,0,0
VER_PRODUCTVERSION_STR        equ       <2.0>

;Build information - updated automatically -
BUILD_NUMBER                  equ       84
BUILD_DATE_STR                textequ   <29.11.2020>
BUILD_BITNESS                 equ       64
BUILD_MODE                    equ       DBG

;Menu IDs
IDM_FILE_EXIT                 equ       1001

IDM_WEBCAM_CONNECT            equ       2001
IDM_WEBCAM_DISCONNECT         equ       2002
IDM_WEBCAM_CAPTURE_BMP        equ       2003
IDM_WEBCAM_CAPTURE_AVI        equ       2004
IDM_WEBCAM_DLG_FORMAT         equ       2005
IDM_WEBCAM_DLG_SOURCE         equ       2006

IDM_HELP_HELP                 equ       5001
IDM_HELP_ABOUT                equ       5002

IDC_TEXT_ABOUT                equ       100
