; Listing generated by Microsoft (R) Optimizing Compiler Version 19.35.32215.0 

	TITLE	D:\__Repos\__MyRepos\Raven_VS2022\Raven\Debug\FuzzySet_Singleton.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG44961 DB	'invalid argument', 00H
	ORG $+3
$SG44962 DB	'%s', 00H
	ORG $+1
$SG44963 DB	'C:\Program Files\Microsoft Visual Studio\2022\Community\'
	DB	'VC\Tools\MSVC\14.35.32215\include\xmemory', 00H
	ORG $+2
$SG44965 DB	00H, 00H
	ORG $+2
$SG44964 DB	'C', 00H, ':', 00H, '\', 00H, 'P', 00H, 'r', 00H, 'o', 00H
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
$SG44966 DB	'"', 00H, 'i', 00H, 'n', 00H, 'v', 00H, 'a', 00H, 'l', 00H
	DB	'i', 00H, 'd', 00H, ' ', 00H, 'a', 00H, 'r', 00H, 'g', 00H, 'u'
	DB	00H, 'm', 00H, 'e', 00H, 'n', 00H, 't', 00H, '"', 00H, 00H, 00H
CONST	ENDS
PUBLIC	?__empty_global_delete@@YAXPAX@Z		; __empty_global_delete
PUBLIC	?__empty_global_delete@@YAXPAXI@Z		; __empty_global_delete
PUBLIC	?CalculateDOM@FuzzySet_Singleton@@UBENN@Z	; FuzzySet_Singleton::CalculateDOM
PUBLIC	__real@0000000000000000
PUBLIC	__real@3ff0000000000000
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__fltused:DWORD
;	COMDAT __real@3ff0000000000000
CONST	SEGMENT
__real@3ff0000000000000 DQ 03ff0000000000000r	; 1
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
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\fuzzy\FuzzySet_Singleton.cpp
_TEXT	SEGMENT
_this$ = -4						; size = 4
_val$ = 8						; size = 8
?CalculateDOM@FuzzySet_Singleton@@UBENN@Z PROC		; FuzzySet_Singleton::CalculateDOM
; _this$ = ecx

; 4    : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 5    :   if ( (val >= m_dMidPoint-m_dLeftOffset) &&

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR [eax+24]
	subsd	xmm0, QWORD PTR [ecx+32]
	movsd	xmm1, QWORD PTR _val$[ebp]
	comisd	xmm1, xmm0
	jb	SHORT $LN2@CalculateD
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR [edx+24]
	addsd	xmm0, QWORD PTR [eax+40]
	comisd	xmm0, QWORD PTR _val$[ebp]
	jb	SHORT $LN2@CalculateD

; 6    :        (val <= m_dMidPoint+m_dRightOffset) )
; 7    :   {
; 8    :     return 1.0;

	fld1
	jmp	SHORT $LN3@CalculateD

; 9    :   }

	jmp	SHORT $LN3@CalculateD
$LN2@CalculateD:

; 10   : 
; 11   :   //out of range of this FLV, return zero
; 12   :   else
; 13   :   {
; 14   :     return 0.0;

	fldz
$LN3@CalculateD:

; 15   :   }
; 16   : }

	mov	esp, ebp
	pop	ebp
	ret	8
?CalculateDOM@FuzzySet_Singleton@@UBENN@Z ENDP		; FuzzySet_Singleton::CalculateDOM
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\fuzzy\FuzzySet_Singleton.cpp
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
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\fuzzy\FuzzySet_Singleton.cpp
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
