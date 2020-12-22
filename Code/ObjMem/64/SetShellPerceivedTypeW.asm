; ==================================================================================================
; Title:      SetShellPerceivedTypeW.asm
; Author:     G. Friedrich
; Version:    C.1.0
; Notes:      Version C.1.0, October 2017
;               - First release.
; ==================================================================================================


% include @Environ(OBJASM_PATH)\\Code\\OA_Setup64.inc

TARGET_STR_TYPE = STR_TYPE_WIDE
TARGET_STR_AFFIX textequ <W>
ProcName equ <SetShellPerceivedTypeW>

% include &ObjMemPath&X\SetShellPerceivedType.asm

end