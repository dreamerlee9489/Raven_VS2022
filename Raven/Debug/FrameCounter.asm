; Listing generated by Microsoft (R) Optimizing Compiler Version 19.33.31629.0 

	TITLE	D:\__Repos\__MyRepos\Raven_VS2022\Raven\Debug\FrameCounter.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	??0FrameCounter@@AAE@XZ				; FrameCounter::FrameCounter
PUBLIC	?Instance@FrameCounter@@SAPAV1@XZ		; FrameCounter::Instance
EXTRN	__Init_thread_header:PROC
EXTRN	__Init_thread_abort:PROC
EXTRN	__Init_thread_footer:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	___CxxFrameHandler3:PROC
EXTRN	__Init_thread_epoch:DWORD
EXTRN	___security_cookie:DWORD
EXTRN	__tls_array:DWORD
EXTRN	__tls_index:DWORD
;	COMDAT ?instance@?1??Instance@FrameCounter@@SAPAV2@XZ@4V2@A
_BSS	SEGMENT
?instance@?1??Instance@FrameCounter@@SAPAV2@XZ@4V2@A DQ 01H DUP (?) ; `FrameCounter::Instance'::`2'::instance
_BSS	ENDS
;	COMDAT ?$TSS0@?1??Instance@FrameCounter@@SAPAV2@XZ@4HA
_BSS	SEGMENT
?$TSS0@?1??Instance@FrameCounter@@SAPAV2@XZ@4HA DD 01H DUP (?) ; `FrameCounter::Instance'::`2'::$TSS0
_BSS	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
voltbl	SEGMENT
_volmd	DD	0ffffffffH
	DDSymXIndex: 	FLAT:__unwindfunclet$?Instance@FrameCounter@@SAPAV1@XZ$0
	DD	01aH
voltbl	ENDS
xdata$x	SEGMENT
__unwindtable$?Instance@FrameCounter@@SAPAV1@XZ DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?Instance@FrameCounter@@SAPAV1@XZ$0
__ehfuncinfo$?Instance@FrameCounter@@SAPAV1@XZ DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$?Instance@FrameCounter@@SAPAV1@XZ
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
xdata$x	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\misc\FrameCounter.cpp
_TEXT	SEGMENT
__$EHRec$ = -12						; size = 12
?Instance@FrameCounter@@SAPAV1@XZ PROC			; FrameCounter::Instance

; 5    : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?Instance@FrameCounter@@SAPAV1@XZ
	mov	eax, DWORD PTR fs:0
	push	eax
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax

; 6    :   static FrameCounter instance;

	mov	eax, DWORD PTR __tls_index
	mov	ecx, DWORD PTR fs:__tls_array
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR ?$TSS0@?1??Instance@FrameCounter@@SAPAV2@XZ@4HA
	cmp	eax, DWORD PTR __Init_thread_epoch[edx]
	jle	SHORT $LN2@Instance
	push	OFFSET ?$TSS0@?1??Instance@FrameCounter@@SAPAV2@XZ@4HA
	call	__Init_thread_header
	add	esp, 4
	cmp	DWORD PTR ?$TSS0@?1??Instance@FrameCounter@@SAPAV2@XZ@4HA, -1
	jne	SHORT $LN2@Instance
	mov	DWORD PTR __$EHRec$[ebp+8], 0
	mov	ecx, OFFSET ?instance@?1??Instance@FrameCounter@@SAPAV2@XZ@4V2@A
	call	??0FrameCounter@@AAE@XZ			; FrameCounter::FrameCounter
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	push	OFFSET ?$TSS0@?1??Instance@FrameCounter@@SAPAV2@XZ@4HA
	call	__Init_thread_footer
	add	esp, 4
$LN2@Instance:

; 7    : 
; 8    :   return &instance;

	mov	eax, OFFSET ?instance@?1??Instance@FrameCounter@@SAPAV2@XZ@4V2@A

; 9    : }

	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	add	esp, 12					; 0000000cH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_TEXT	ENDS
text$x	SEGMENT
__unwindfunclet$?Instance@FrameCounter@@SAPAV1@XZ$0:
	push	OFFSET ?$TSS0@?1??Instance@FrameCounter@@SAPAV2@XZ@4HA
	call	__Init_thread_abort
	pop	ecx
	ret	0
	int	3
	int	3
	int	3
	int	3
	int	3
__ehhandler$?Instance@FrameCounter@@SAPAV1@XZ:
	npad	1
	npad	1
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-4]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?Instance@FrameCounter@@SAPAV1@XZ
	jmp	___CxxFrameHandler3
text$x	ENDS
?Instance@FrameCounter@@SAPAV1@XZ ENDP			; FrameCounter::Instance
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\misc\framecounter.h
;	COMDAT ??0FrameCounter@@AAE@XZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
??0FrameCounter@@AAE@XZ PROC				; FrameCounter::FrameCounter, COMDAT
; _this$ = ecx

; 15   :   FrameCounter():m_lCount(0), m_iFramesElapsed(0){}

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 0
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0FrameCounter@@AAE@XZ ENDP				; FrameCounter::FrameCounter
_TEXT	ENDS
END
