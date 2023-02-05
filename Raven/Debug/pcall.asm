; Listing generated by Microsoft (R) Optimizing Compiler Version 19.34.31937.0 

	TITLE	D:\__Repos\__MyRepos\Raven_VS2022\Raven\Debug\pcall.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?pcall@detail@luabind@@YAHPAUlua_State@@HH@Z	; luabind::detail::pcall
PUBLIC	?resume_impl@detail@luabind@@YAHPAUlua_State@@HH@Z ; luabind::detail::resume_impl
EXTRN	?get_pcall_callback@luabind@@YAP6AHPAUlua_State@@@ZXZ:PROC ; luabind::get_pcall_callback
EXTRN	_lua_gettop:PROC
EXTRN	_lua_remove:PROC
EXTRN	_lua_insert:PROC
EXTRN	_lua_pushcclosure:PROC
EXTRN	_lua_pcall:PROC
EXTRN	_lua_resume:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\luabind-0.9.1\src\pcall.cpp
_TEXT	SEGMENT
tv68 = -8						; size = 4
_res$ = -4						; size = 4
_L$ = 8							; size = 4
_nargs$ = 12						; size = 4
___formal$ = 16						; size = 4
?resume_impl@detail@luabind@@YAHPAUlua_State@@HH@Z PROC	; luabind::detail::resume_impl

; 49   : 	{

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH

; 50   : #if LUA_VERSION_NUM >= 501
; 51   : 		// Lua 5.1 added  LUA_YIELD as a possible return value,
; 52   : 		// this was causing crashes, because the caller expects 0 on success.
; 53   : 		int res = lua_resume(L, nargs);

	mov	eax, DWORD PTR _nargs$[ebp]
	push	eax
	mov	ecx, DWORD PTR _L$[ebp]
	push	ecx
	call	_lua_resume
	add	esp, 8
	mov	DWORD PTR _res$[ebp], eax

; 54   : 		return (res == LUA_YIELD) ? 0 : res;

	cmp	DWORD PTR _res$[ebp], 1
	jne	SHORT $LN3@resume_imp
	mov	DWORD PTR tv68[ebp], 0
	jmp	SHORT $LN4@resume_imp
$LN3@resume_imp:
	mov	edx, DWORD PTR _res$[ebp]
	mov	DWORD PTR tv68[ebp], edx
$LN4@resume_imp:
	mov	eax, DWORD PTR tv68[ebp]

; 55   : #else
; 56   : 		return lua_resume(L, nargs);
; 57   : #endif
; 58   : 	}

	add	esp, 8
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?resume_impl@detail@luabind@@YAHPAUlua_State@@HH@Z ENDP	; luabind::detail::resume_impl
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\luabind-0.9.1\src\pcall.cpp
_TEXT	SEGMENT
_result$ = -16						; size = 4
_base$1 = -12						; size = 4
_en$ = -8						; size = 4
_e$ = -4						; size = 4
_L$ = 8							; size = 4
_nargs$ = 12						; size = 4
_nresults$ = 16						; size = 4
?pcall@detail@luabind@@YAHPAUlua_State@@HH@Z PROC	; luabind::detail::pcall

; 32   : 	{

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	eax, -858993460				; ccccccccH
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], eax
	mov	DWORD PTR [ebp-8], eax
	mov	DWORD PTR [ebp-4], eax

; 33   : 		pcall_callback_fun e = get_pcall_callback();

	call	?get_pcall_callback@luabind@@YAP6AHPAUlua_State@@@ZXZ ; luabind::get_pcall_callback
	mov	DWORD PTR _e$[ebp], eax

; 34   : 		int en = 0;

	mov	DWORD PTR _en$[ebp], 0

; 35   : 		if ( e )

	cmp	DWORD PTR _e$[ebp], 0
	je	SHORT $LN2@pcall

; 36   : 		{
; 37   : 			int base = lua_gettop(L) - nargs;

	mov	eax, DWORD PTR _L$[ebp]
	push	eax
	call	_lua_gettop
	add	esp, 4
	sub	eax, DWORD PTR _nargs$[ebp]
	mov	DWORD PTR _base$1[ebp], eax

; 38   : 			lua_pushcfunction(L, e);

	push	0
	mov	ecx, DWORD PTR _e$[ebp]
	push	ecx
	mov	edx, DWORD PTR _L$[ebp]
	push	edx
	call	_lua_pushcclosure
	add	esp, 12					; 0000000cH

; 39   : 			lua_insert(L, base);  // push pcall_callback under chunk and args

	mov	eax, DWORD PTR _base$1[ebp]
	push	eax
	mov	ecx, DWORD PTR _L$[ebp]
	push	ecx
	call	_lua_insert
	add	esp, 8

; 40   : 			en = base;

	mov	edx, DWORD PTR _base$1[ebp]
	mov	DWORD PTR _en$[ebp], edx
$LN2@pcall:

; 41   :   		}
; 42   : 		int result = lua_pcall(L, nargs, nresults, en);

	mov	eax, DWORD PTR _en$[ebp]
	push	eax
	mov	ecx, DWORD PTR _nresults$[ebp]
	push	ecx
	mov	edx, DWORD PTR _nargs$[ebp]
	push	edx
	mov	eax, DWORD PTR _L$[ebp]
	push	eax
	call	_lua_pcall
	add	esp, 16					; 00000010H
	mov	DWORD PTR _result$[ebp], eax

; 43   : 		if ( en )

	cmp	DWORD PTR _en$[ebp], 0
	je	SHORT $LN3@pcall

; 44   : 			lua_remove(L, en);  // remove pcall_callback

	mov	ecx, DWORD PTR _en$[ebp]
	push	ecx
	mov	edx, DWORD PTR _L$[ebp]
	push	edx
	call	_lua_remove
	add	esp, 8
$LN3@pcall:

; 45   : 		return result;

	mov	eax, DWORD PTR _result$[ebp]

; 46   : 	}

	add	esp, 16					; 00000010H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?pcall@detail@luabind@@YAHPAUlua_State@@HH@Z ENDP	; luabind::detail::pcall
_TEXT	ENDS
END
