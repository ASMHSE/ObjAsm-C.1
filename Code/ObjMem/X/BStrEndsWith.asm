; ==================================================================================================
; Title:      BStrEndsWith.asm
; Author:     G. Friedrich
; Version:    C.1.1
; Notes:      Version C.1.1, April 2020.
;               - First release.
;               - Bitness neutral code. 
; ==================================================================================================


% include &ObjMemPath&ObjMem.cop

.code

; 覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧
; Procedure:  BStrEndsWith
; Purpose:    Compares the ending of a BSTR.
; Arguments:  Arg1: -> Analized BSTR.
;             Arg2: -> Suffix BSTR.
; Return:     eax = TRUE of the ending matches, otherwise FALSE.

align ALIGN_CODE
BStrEndsWith proc pString:POINTER, pSuffix:POINTER
  ?mov xdx, pSuffix
  mov xax, pString
  mov ecx, [xax - 4]                                    ;Byte count of the analized BSTR without ZTC
  add xcx, xax
  mov eax, [xdx - 4]
  sub xcx, xax
  invoke MemComp, xcx, xdx, eax
  test eax, eax
  jnz @F
  mov eax, TRUE
  ret
@@:
  xor eax, eax
  ret
BStrEndsWith endp
