; Listing generated by Microsoft (R) Optimizing Compiler Version 19.33.31629.0 

	TITLE	D:\__Repos\__MyRepos\Raven_VS2022\Raven\Debug\Raven_Weapon.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

CONST	SEGMENT
?piecewise_construct@std@@3Upiecewise_construct_t@1@B	ORG $+1 ; std::piecewise_construct
	ORG $+3
$SG175007 DB	'invalid argument', 00H
	ORG $+3
$SG175008 DB	'%s', 00H
	ORG $+1
$SG175011 DB	00H, 00H
	ORG $+2
$SG175009 DB	'C:\Program Files\Microsoft Visual Studio\2022\Community\'
	DB	'VC\Tools\MSVC\14.33.31629\include\xmemory', 00H
	ORG $+6
$SG175010 DB	'C', 00H, ':', 00H, '\', 00H, 'P', 00H, 'r', 00H, 'o', 00H
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
	DB	'4', 00H, '.', 00H, '3', 00H, '3', 00H, '.', 00H, '3', 00H, '1'
	DB	00H, '6', 00H, '2', 00H, '9', 00H, '\', 00H, 'i', 00H, 'n', 00H
	DB	'c', 00H, 'l', 00H, 'u', 00H, 'd', 00H, 'e', 00H, '\', 00H, 'x'
	DB	00H, 'm', 00H, 'e', 00H, 'm', 00H, 'o', 00H, 'r', 00H, 'y', 00H
	DB	00H, 00H
$SG175012 DB	'"', 00H, 'i', 00H, 'n', 00H, 'v', 00H, 'a', 00H, 'l', 00H
	DB	'i', 00H, 'd', 00H, ' ', 00H, 'a', 00H, 'r', 00H, 'g', 00H, 'u'
	DB	00H, 'm', 00H, 'e', 00H, 'n', 00H, 't', 00H, '"', 00H, 00H, 00H
	ORG $+6
$SG175886 DB	'C:\Program Files\Microsoft Visual Studio\2022\Community\'
	DB	'VC\Tools\MSVC\14.33.31629\include\xlocale', 00H
CONST	ENDS
PUBLIC	?__empty_global_delete@@YAXPAX@Z		; __empty_global_delete
PUBLIC	?__empty_global_delete@@YAXPAXI@Z		; __empty_global_delete
PUBLIC	??0id@locale@std@@QAE@I@Z			; std::locale::id::id
PUBLIC	?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A ; std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char> > >::id
PUBLIC	?id@?$numpunct@D@std@@2V0locale@2@A		; std::numpunct<char>::id
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
;	COMDAT ?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A
_BSS	SEGMENT
?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A DD 01H DUP (?) ; std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char> > >::id
_BSS	ENDS
;	COMDAT ?id@?$numpunct@D@std@@2V0locale@2@A
_BSS	SEGMENT
?id@?$numpunct@D@std@@2V0locale@2@A DD 01H DUP (?)	; std::numpunct<char>::id
_BSS	ENDS
;	COMDAT CRT$XCU
CRT$XCU	SEGMENT
??id$initializer$@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2P6AXXZA@@3P6AXXZA DD FLAT:??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ ; ??id$initializer$@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2P6AXXZA@@3P6AXXZA
CRT$XCU	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
;	COMDAT CRT$XCU
CRT$XCU	SEGMENT
??id$initializer$@?$numpunct@D@std@@2P6AXXZA@@3P6AXXZA DD FLAT:??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ ; ??id$initializer$@?$numpunct@D@std@@2P6AXXZA@@3P6AXXZA
CRT$XCU	ENDS
; Function compile flags: /Odtp /RTCsu
; File C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.33.31629\include\xlocnum
;	COMDAT ??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ
text$di	SEGMENT
??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ PROC	; `dynamic initializer for 'std::numpunct<char>::id'', COMDAT

; 252  : __PURE_APPDOMAIN_GLOBAL locale::id numpunct<_Elem>::id;

	push	ebp
	mov	ebp, esp
	push	0
	mov	ecx, OFFSET ?id@?$numpunct@D@std@@2V0locale@2@A ; std::numpunct<char>::id
	call	??0id@locale@std@@QAE@I@Z		; std::locale::id::id
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
??__E?id@?$numpunct@D@std@@2V0locale@2@A@@YAXXZ ENDP	; `dynamic initializer for 'std::numpunct<char>::id''
text$di	ENDS
; Function compile flags: /Odtp /RTCsu
; File C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.33.31629\include\xlocnum
;	COMDAT ??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ
text$di	SEGMENT
??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ PROC ; `dynamic initializer for 'std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char> > >::id'', COMDAT

; 1592 : __PURE_APPDOMAIN_GLOBAL locale::id num_put<_Elem, _OutIt>::id;

	push	ebp
	mov	ebp, esp
	push	0
	mov	ecx, OFFSET ?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A ; std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char> > >::id
	call	??0id@locale@std@@QAE@I@Z		; std::locale::id::id
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
??__E?id@?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std@@2V0locale@2@A@@YAXXZ ENDP ; `dynamic initializer for 'std::num_put<char,std::ostreambuf_iterator<char,std::char_traits<char> > >::id''
text$di	ENDS
; Function compile flags: /Odtp /RTCsu
; File C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.33.31629\include\xlocale
;	COMDAT ??0id@locale@std@@QAE@I@Z
_TEXT	SEGMENT
_this$ = -4						; size = 4
__Val$ = 8						; size = 4
??0id@locale@std@@QAE@I@Z PROC				; std::locale::id::id, COMDAT
; _this$ = ecx

; 96   :         __CLR_OR_THIS_CALL id(size_t _Val = 0) : _Id(_Val) {}

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR __Val$[ebp]
	mov	DWORD PTR [eax], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0id@locale@std@@QAE@I@Z ENDP				; std::locale::id::id
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Raven\armory\Raven_Weapon.cpp
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
; File D:\__Repos\__MyRepos\Raven_VS2022\Raven\armory\Raven_Weapon.cpp
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
