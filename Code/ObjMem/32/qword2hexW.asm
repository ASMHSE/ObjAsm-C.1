; ==================================================================================================
; Title:      qword2hexW.asm
; Author:     G. Friedrich
; Version:    C.1.0
; Notes:      Version C.1.0, October 2017
;               - First release.
; ==================================================================================================


% include @Environ(OBJASM_PATH)\\Code\\OA_Setup32.inc
% include &ObjMemPath&ObjMem.cop

externdef HexCharTableW:WORD

.code

; 覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧
; Procedure:  qword2hexW
; Purpose:    Converts a QWORD to its hexadecimal WIDE string representation.
; Arguments:  Arg1: -> Destination buffer.
;             Arg2: QWORD value.
; Return:     Nothing.
; Note:       The destination buffer must be at least 34 bytes large to allocate the output string
;             (16 character words + ZTC = 34 bytes).

OPTION PROLOGUE:NONE
OPTION EPILOGUE:NONE

align ALIGN_CODE
qword2hexW proc pBuffer:POINTER, qValue:QWORD
  mov edx, [esp + 4]                                    ;edx -> Buffer
  lea ecx,  [esp + 8]                                   ;ecx -> qValue

  movzx eax, BYTE ptr [ecx]
  m2z WORD ptr [edx + 32]                               ;Set zero marker
  mov eax, DWORD ptr HexCharTableW[4*eax]
  mov [edx + 28], eax

  movzx eax, BYTE ptr [ecx + 1]
  mov eax, DWORD ptr HexCharTableW[4*eax]
  mov [edx + 24], eax

  movzx eax, BYTE ptr [ecx + 2]
  mov eax, DWORD ptr HexCharTableW[4*eax]
  mov [edx + 20], eax

  movzx eax, BYTE ptr [ecx + 3]
  mov eax, DWORD ptr HexCharTableW[4*eax]
  mov [edx + 16], eax

  movzx eax, BYTE ptr [ecx + 4]
  mov eax, DWORD ptr HexCharTableW[4*eax]
  mov [edx + 12], eax

  movzx eax, BYTE ptr [ecx + 5]
  mov eax, DWORD ptr HexCharTableW[4*eax]
  mov [edx + 08], eax

  movzx eax, BYTE ptr [ecx + 6]
  movzx ecx, BYTE ptr [ecx + 7]
  mov eax, DWORD ptr HexCharTableW[4*eax]
  mov ecx, DWORD ptr HexCharTableW[4*ecx]
  mov [edx + 4], eax
  mov [edx], ecx
  ret 12
qword2hexW endp

OPTION PROLOGUE:PrologueDef
OPTION EPILOGUE:EpilogueDef

end
