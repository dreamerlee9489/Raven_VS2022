; Listing generated by Microsoft (R) Optimizing Compiler Version 19.35.32215.0 

	TITLE	D:\__Repos\__MyRepos\Raven_VS2022\Raven\Debug\FuzzySet_Triangle.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG44968 DB	'invalid argument', 00H
	ORG $+3
$SG44969 DB	'%s', 00H
	ORG $+1
$SG44970 DB	'C:\Program Files\Microsoft Visual Studio\2022\Community\'
	DB	'VC\Tools\MSVC\14.35.32215\include\xmemory', 00H
	ORG $+2
$SG44972 DB	00H, 00H
	ORG $+2
$SG44971 DB	'C', 00H, ':', 00H, '\', 00H, 'P', 00H, 'r', 00H, 'o', 00H
	DB	'g', 00H, 'r', 00H, 'a', 00H, 'm', 00H, ' ', 00H, 'F', 00H, 'i'
	DB	00H, 'l', 00H, 'e', 00H, 's', 00H, '\', 00H, 'M', 00H, 'i', 00H
	DB	'c', 00H, 'r', 00H, 'o', 00H, 's', 00H, 'o', 00H, 'f', 00H, 't'
	DB	00H, ' ', 00H, 'V', 00H, 'i', 00H, 's', 00H, 'u', 00H, 'a', 00H
	DB	'l', 00H, ' ', 00H, 'S', 00H, 't', 00H, 'u', 00H, 'd', 00H, 'i'
	DB	00H, 'o', 00H, '\', 00H, '2', 00H, '0', 00H, '2', 00H, '2', 00H
	DB	'\', 00H, 'C', 00H, 'o', 00H, 'm', 00H, 'm', 00H, 'u', 00H, 'n'
	DB	00H, 'i', 00H, 't', 00H, 'y', 00H, '\', 00H, 'V', 00H, 'C', 00H
	DB	'\', 00H, 'T', 00H, 'o', 00H, 'o', 00H, 'l', 00H, 's', 00H, '\'
	DB	00H, 'M', 00H, 'S', 00H, 'V', 00H, 'C', 00H, '\', 00H, '1', 00H
	DB	'4', 00H, '.', 00H, '3', 00H, '5', 00H, '.', 00H, '3', 00H, '2'
	DB	00H, '2', 00H, '1', 00H, '5', 00H, '\', 00H, 'i', 00H, 'n', 00H
	DB	'c', 00H, 'l', 00H, 'u', 00H, 'd', 00H, 'e', 00H, '\', 00H, 'x'
	DB	00H, 'm', 00H, 'e', 00H, 'm', 00H, 'o', 00H, 'r', 00H, 'y', 00H
	DB	00H, 00H
$SG44973 DB	'"', 00H, 'i', 00H, 'n', 00H, 'v', 00H, 'a', 00H, 'l', 00H
	DB	'i', 00H, 'd', 00H, ' ', 00H, 'a', 00H, 'r', 00H, 'g', 00H, 'u'
	DB	00H, 'm', 00H, 'e', 00H, 'n', 00H, 't', 00H, '"', 00H, 00H, 00H
CONST	ENDS
PUBLIC	?__empty_global_delete@@YAXPAX@Z		; __empty_global_delete
PUBLIC	?__empty_global_delete@@YAXPAXI@Z		; __empty_global_delete
PUBLIC	?isEqual@@YA_NNN@Z				; isEqual
PUBLIC	?CalculateDOM@FuzzySet_Triangle@@UBENN@Z	; FuzzySet_Triangle::CalculateDOM
PUBLIC	__real@0000000000000000
PUBLIC	__real@3d719799812dea11
PUBLIC	__real@3ff0000000000000
PUBLIC	__xmm@80000000000000008000000000000000
EXTRN	_fabs:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__fltused:DWORD
;	COMDAT __xmm@80000000000000008000000000000000
CONST	SEGMENT
__xmm@80000000000000008000000000000000 DB 00H, 00H, 00H, 00H, 00H, 00H, 00H
	DB	080H, 00H, 00H, 00H, 00H, 00H, 00H, 00H, 080H
CONST	ENDS
;	COMDAT __real@3ff0000000000000
CONST	SEGMENT
__real@3ff0000000000000 DQ 03ff0000000000000r	; 1
CONST	ENDS
;	COMDAT __real@3d719799812dea11
CONST	SEGMENT
__real@3d719799812dea11 DQ 03d719799812dea11r	; 1e-12
CONST	ENDS
;	COMDAT __real@0000000000000000
CONST	SEGMENT
__real@0000000000000000 DQ 00000000000000000r	; 0
CONST	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\fuzzy\FuzzySet_Triangle.cpp
_TEXT	SEGMENT
tv200 = -36						; size = 8
tv186 = -28						; size = 8
_grad$1 = -20						; size = 8
_grad$2 = -12						; size = 8
_this$ = -4						; size = 4
_val$ = 8						; size = 8
?CalculateDOM@FuzzySet_Triangle@@UBENN@Z PROC		; FuzzySet_Triangle::CalculateDOM
; _this$ = ecx

; 5    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-36], eax
	mov	DWORD PTR [ebp-32], eax
	mov	DWORD PTR [ebp-28], eax
	mov	DWORD PTR [ebp-24], eax
	mov	DWORD PTR [ebp-20], eax
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax
	mov	DWORD PTR _this$[ebp], ecx

; 6    :   //test for the case where the triangle's left or right offsets are zero
; 7    :   //(to prevent divide by zero errors below)
; 8    :   if ( (isEqual(m_dRightOffset, 0.0) && (isEqual(m_dPeakPoint, val))) ||

	sub	esp, 8
	xorps	xmm0, xmm0
	movsd	QWORD PTR [esp], xmm0
	mov	eax, DWORD PTR _this$[ebp]
	sub	esp, 8
	movsd	xmm0, QWORD PTR [eax+40]
	movsd	QWORD PTR [esp], xmm0
	call	?isEqual@@YA_NNN@Z			; isEqual
	add	esp, 16					; 00000010H
	movzx	ecx, al
	test	ecx, ecx
	je	SHORT $LN4@CalculateD
	sub	esp, 8
	movsd	xmm0, QWORD PTR _val$[ebp]
	movsd	QWORD PTR [esp], xmm0
	mov	edx, DWORD PTR _this$[ebp]
	sub	esp, 8
	movsd	xmm0, QWORD PTR [edx+24]
	movsd	QWORD PTR [esp], xmm0
	call	?isEqual@@YA_NNN@Z			; isEqual
	add	esp, 16					; 00000010H
	movzx	eax, al
	test	eax, eax
	jne	SHORT $LN3@CalculateD
$LN4@CalculateD:
	sub	esp, 8
	xorps	xmm0, xmm0
	movsd	QWORD PTR [esp], xmm0
	mov	ecx, DWORD PTR _this$[ebp]
	sub	esp, 8
	movsd	xmm0, QWORD PTR [ecx+32]
	movsd	QWORD PTR [esp], xmm0
	call	?isEqual@@YA_NNN@Z			; isEqual
	add	esp, 16					; 00000010H
	movzx	edx, al
	test	edx, edx
	je	SHORT $LN2@CalculateD
	sub	esp, 8
	movsd	xmm0, QWORD PTR _val$[ebp]
	movsd	QWORD PTR [esp], xmm0
	mov	eax, DWORD PTR _this$[ebp]
	sub	esp, 8
	movsd	xmm0, QWORD PTR [eax+24]
	movsd	QWORD PTR [esp], xmm0
	call	?isEqual@@YA_NNN@Z			; isEqual
	add	esp, 16					; 00000010H
	movzx	ecx, al
	test	ecx, ecx
	je	SHORT $LN2@CalculateD
$LN3@CalculateD:

; 9    :        (isEqual(m_dLeftOffset, 0.0) && (isEqual(m_dPeakPoint, val))) )
; 10   :   {
; 11   :     return 1.0;

	fld1
	jmp	$LN8@CalculateD
$LN2@CalculateD:

; 12   :   }
; 13   : 
; 14   :   //find DOM if left of center
; 15   :   if ( (val <= m_dPeakPoint) && (val >= (m_dPeakPoint - m_dLeftOffset)) )

	mov	edx, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR [edx+24]
	comisd	xmm0, QWORD PTR _val$[ebp]
	jb	SHORT $LN5@CalculateD
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR [eax+24]
	subsd	xmm0, QWORD PTR [ecx+32]
	movsd	xmm1, QWORD PTR _val$[ebp]
	comisd	xmm1, xmm0
	jb	SHORT $LN5@CalculateD

; 16   :   {
; 17   :     double grad = 1.0 / m_dLeftOffset;

	mov	edx, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR __real@3ff0000000000000
	divsd	xmm0, QWORD PTR [edx+32]
	movsd	QWORD PTR _grad$2[ebp], xmm0

; 18   : 
; 19   :     return grad * (val - (m_dPeakPoint - m_dLeftOffset));

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR [eax+24]
	subsd	xmm0, QWORD PTR [ecx+32]
	movsd	xmm1, QWORD PTR _val$[ebp]
	subsd	xmm1, xmm0
	mulsd	xmm1, QWORD PTR _grad$2[ebp]
	movsd	QWORD PTR tv186[ebp], xmm1
	fld	QWORD PTR tv186[ebp]
	jmp	SHORT $LN8@CalculateD

; 20   :   }

	jmp	SHORT $LN8@CalculateD
$LN5@CalculateD:

; 21   :   //find DOM if right of center
; 22   :   else if ( (val > m_dPeakPoint) && (val < (m_dPeakPoint + m_dRightOffset)) )

	mov	edx, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR _val$[ebp]
	comisd	xmm0, QWORD PTR [edx+24]
	jbe	SHORT $LN7@CalculateD
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR [eax+24]
	addsd	xmm0, QWORD PTR [ecx+40]
	comisd	xmm0, QWORD PTR _val$[ebp]
	jbe	SHORT $LN7@CalculateD

; 23   :   {
; 24   :     double grad = 1.0 / -m_dRightOffset;

	mov	edx, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR [edx+40]
	xorps	xmm0, QWORD PTR __xmm@80000000000000008000000000000000
	movsd	xmm1, QWORD PTR __real@3ff0000000000000
	divsd	xmm1, xmm0
	movsd	QWORD PTR _grad$1[ebp], xmm1

; 25   : 
; 26   :     return grad * (val - m_dPeakPoint) + 1.0;

	mov	eax, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR _val$[ebp]
	subsd	xmm0, QWORD PTR [eax+24]
	mulsd	xmm0, QWORD PTR _grad$1[ebp]
	addsd	xmm0, QWORD PTR __real@3ff0000000000000
	movsd	QWORD PTR tv200[ebp], xmm0
	fld	QWORD PTR tv200[ebp]
	jmp	SHORT $LN8@CalculateD

; 27   :   }

	jmp	SHORT $LN8@CalculateD
$LN7@CalculateD:

; 28   :   //out of range of this FLV, return zero
; 29   :   else
; 30   :   {
; 31   :     return 0.0;

	fldz
$LN8@CalculateD:

; 32   :   }
; 33   : }

	add	esp, 36					; 00000024H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
?CalculateDOM@FuzzySet_Triangle@@UBENN@Z ENDP		; FuzzySet_Triangle::CalculateDOM
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\misc\utils.h
;	COMDAT ?isEqual@@YA_NNN@Z
_TEXT	SEGMENT
tv73 = -8						; size = 8
_a$ = 8							; size = 8
_b$ = 16						; size = 8
?isEqual@@YA_NNN@Z PROC					; isEqual, COMDAT

; 236  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH

; 237  :   if (fabs(a-b) < 1E-12)

	movsd	xmm0, QWORD PTR _a$[ebp]
	subsd	xmm0, QWORD PTR _b$[ebp]
	sub	esp, 8
	movsd	QWORD PTR [esp], xmm0
	call	_fabs
	add	esp, 8
	fstp	QWORD PTR tv73[ebp]
	movsd	xmm0, QWORD PTR __real@3d719799812dea11
	comisd	xmm0, QWORD PTR tv73[ebp]
	jbe	SHORT $LN2@isEqual

; 238  :   {
; 239  :     return true;

	mov	al, 1
	jmp	SHORT $LN1@isEqual
$LN2@isEqual:

; 240  :   }
; 241  : 
; 242  :   return false;

	xor	al, al
$LN1@isEqual:

; 243  : }

	add	esp, 8
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?isEqual@@YA_NNN@Z ENDP					; isEqual
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\fuzzy\FuzzySet_Triangle.cpp
;	COMDAT ?__empty_global_delete@@YAXPAXI@Z
_TEXT	SEGMENT
___formal$ = 8						; size = 4
___formal$ = 12						; size = 4
?__empty_global_delete@@YAXPAXI@Z PROC			; __empty_global_delete, COMDAT

	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
?__empty_global_delete@@YAXPAXI@Z ENDP			; __empty_global_delete
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\fuzzy\FuzzySet_Triangle.cpp
;	COMDAT ?__empty_global_delete@@YAXPAX@Z
_TEXT	SEGMENT
___formal$ = 8						; size = 4
?__empty_global_delete@@YAXPAX@Z PROC			; __empty_global_delete, COMDAT

	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
?__empty_global_delete@@YAXPAX@Z ENDP			; __empty_global_delete
_TEXT	ENDS
END
