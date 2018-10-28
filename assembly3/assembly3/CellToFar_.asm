; based on code by R. Detmer
; provided through lecture
; implementation by Jacob "Andey" Tuttle


	.model flat,c
	.code

;extern "C" CelToFar_(int cel)

CelToFar_ proc
	push ebp
	mov ebp, esp

	;perform operations
	mov eax, [esp+8]	;eax holds celcius value
	imul eax, 9			;c*9
	add eax, 2			;rounding factor for division
	mov ebx, 5			;divisor
	cdq					;dword to qword
	idiv ebx			;c*9/5
	add eax, 32			;c*9/5 + 32

	pop ebp
	ret
CelToFar_ endp
	end