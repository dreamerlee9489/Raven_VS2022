; Listing generated by Microsoft (R) Optimizing Compiler Version 19.33.31629.0 

	TITLE	D:\__Repos\__MyRepos\Raven_VS2022\Raven\Debug\link_compatibility.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	?not_threadsafe_not_defined_conflict@detail@luabind@@YAXXZ ; luabind::detail::not_threadsafe_not_defined_conflict
PUBLIC	?no_error_checking_not_defined_conflict@detail@luabind@@YAXXZ ; luabind::detail::no_error_checking_not_defined_conflict
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
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\luabind-0.9.1\src\link_compatibility.cpp
_TEXT	SEGMENT
?no_error_checking_not_defined_conflict@detail@luabind@@YAXXZ PROC ; luabind::detail::no_error_checking_not_defined_conflict

; 39   : 	void no_error_checking_not_defined_conflict() {}

	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
?no_error_checking_not_defined_conflict@detail@luabind@@YAXXZ ENDP ; luabind::detail::no_error_checking_not_defined_conflict
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\__Repos\__MyRepos\Raven_VS2022\Common\luabind-0.9.1\src\link_compatibility.cpp
_TEXT	SEGMENT
?not_threadsafe_not_defined_conflict@detail@luabind@@YAXXZ PROC ; luabind::detail::not_threadsafe_not_defined_conflict

; 33   : 	void not_threadsafe_not_defined_conflict() {}

	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
?not_threadsafe_not_defined_conflict@detail@luabind@@YAXXZ ENDP ; luabind::detail::not_threadsafe_not_defined_conflict
_TEXT	ENDS
END