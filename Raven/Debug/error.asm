; Listing generated by Microsoft (R) Optimizing Compiler Version 19.35.32215.0 

	TITLE	D:\__Repos\__MyRepos\Raven_VS2022\Raven\Debug\error.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?set_pcall_callback@luabind@@YAXP6AHPAUlua_State@@@Z@Z ; luabind::set_pcall_callback
PUBLIC	?get_pcall_callback@luabind@@YAP6AHPAUlua_State@@@ZXZ ; luabind::get_pcall_callback
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
_BSS	SEGMENT
?pcall_callback@?A0xcc7ade60@luabind@@3P6AHPAUlua_State@@@ZA DD 01H DUP (?) ; luabind::`anonymous namespace'::pcall_callback
_BSS	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\luabind-0.9.1\src\error.cpp
_TEXT	SEGMENT
?get_pcall_callback@luabind@@YAP6AHPAUlua_State@@@ZXZ PROC ; luabind::get_pcall_callback

; 74   : 	{

	push	ebp
	mov	ebp, esp

; 75   : 		return pcall_callback;

	mov	eax, DWORD PTR ?pcall_callback@?A0xcc7ade60@luabind@@3P6AHPAUlua_State@@@ZA ; luabind::`anonymous namespace'::pcall_callback

; 76   : 	}

	pop	ebp
	ret	0
?get_pcall_callback@luabind@@YAP6AHPAUlua_State@@@ZXZ ENDP ; luabind::get_pcall_callback
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\luabind-0.9.1\src\error.cpp
_TEXT	SEGMENT
_e$ = 8							; size = 4
?set_pcall_callback@luabind@@YAXP6AHPAUlua_State@@@Z@Z PROC ; luabind::set_pcall_callback

; 69   : 	{

	push	ebp
	mov	ebp, esp

; 70   : 		pcall_callback = e;

	mov	eax, DWORD PTR _e$[ebp]
	mov	DWORD PTR ?pcall_callback@?A0xcc7ade60@luabind@@3P6AHPAUlua_State@@@ZA, eax ; luabind::`anonymous namespace'::pcall_callback

; 71   : 	}

	pop	ebp
	ret	0
?set_pcall_callback@luabind@@YAXP6AHPAUlua_State@@@Z@Z ENDP ; luabind::set_pcall_callback
_TEXT	ENDS
END
