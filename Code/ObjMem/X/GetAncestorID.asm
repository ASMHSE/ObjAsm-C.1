; ==================================================================================================
; Title:      GetAncestorID.asm
; Author:     G. Friedrich
; Version:    C.1.0
; Notes:      Version C.1.0, October 2017.
;               - First release.
;               - Bitness neutral version.
; ==================================================================================================


% include &ObjMemPath&ObjMem.cop

externdef p1stOMD:POINTER

.code

; 覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧
; Procedure:  GetAncestorID
; Purpose:    Retrieves the ancestor type ID of an object type ID.
; Arguments:  Arg1: -> Object class ID.
; Return:     eax = Ancestor type ID or zero if not found.

align ALIGN_CODE
GetAncestorID proc dObjectID:DWORD
  mov eax, dObjectID
  .if eax != 0
    mov xdx, p1stOMD                                    ;Load first -> Object Metadata
    .while xdx != NULL                                  ;End of List? If YES => return 0
      mov xcx, [xdx + sizeof(POINTER) + sizeof(XWORD)]  ;xcx -> DMT entry
      mov xcx, [xcx - sizeof(POINTER)]                  ;xcx -> ETT count
      .if eax == [xcx - 2*sizeof(DWORD)]                ;Check for matching object ID
        mov eax, [xcx - sizeof(DWORD)]                  ;Return ancestor ID
        ret
      .else
        mov xdx, [xdx]                                  ;Move to next object metadata block
      .endif
    .endw
    xor eax, eax
  .endif
  ret
GetAncestorID endp
