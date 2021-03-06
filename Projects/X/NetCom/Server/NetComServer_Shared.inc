; ==================================================================================================
; Title:      NetComServer_Shared.inc
; Author:     G. Friedrich
; Version:    C.1.0
; Purpose:    ObjAsm NetComServer program.
; Notes:      Version C.1.0, October 2017
;               - First release.
; ==================================================================================================


;General information
APP_TITLE                     textequ   <NetCom Server>
ABOUT_TEXT                    textequ   <NetComServer>
COPYRIGHT                     textequ   <G. Friedrich   October 2017> 
VER_FILEVERSION               equ       2,0,0,0
VER_FILEVERSION_STR           textequ   <2.0>
VER_PRODUCTVERSION            equ       2,0,0,0
VER_PRODUCTVERSION_STR        equ       <2.0>

;Build information - updated automatically -
BUILD_NUMBER                  equ       108
BUILD_DATE_STR                textequ   <29.11.2020>
BUILD_BITNESS                 equ       64
BUILD_MODE                    equ       DBG

IDC_TEXT_ABOUT                equ       100

IDM_SEND                      equ       1000
IDM_EXIT                      equ       1001
IDM_HELP                      equ       1100
IDM_ABOUT                     equ       1101
