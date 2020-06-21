; ==================================================================================================
; Title:      SkinnedDialogAbout.asm
; Author:     G. Friedrich
; Version:    C.1.0
; Purpose:    ObjAsm compilation file for SkinnedDialogAbout object.
; Notes:      Version C.1.0, November 2017
;             - First release.
; ==================================================================================================


% include Objects.cop

% include &MacPath&WinHelpers.inc
% include &IncPath&Windows\CommCtrl.inc 

;Add here all files that build the inheritance path and referenced objects
include Primer.inc
include Stream.inc
include WinPrimer.inc
include Window.inc
include WinControl.inc
include Tooltip.inc
include Dialog.inc
include DialogModal.inc
include MsgInterceptor.inc
include ElasticSkin.inc
include RgnButton.inc
include Collection.inc
include DataCollection.inc
include GifDecoder.inc
include GifPlayer.inc

;Add here the file that defines the object(s) to be included in the library
MakeObjects SkinnedDialogAbout

end
