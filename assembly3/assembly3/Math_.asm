	.model flat, c
	.code

;extern "C" int Math_(int x, int y, int z)

Math_ proc
	push ebp
	mov ebp, esp

	mov eax, [ebp+8]	;eax = x
	mov ecx, [ebp+12]	;ecx = y
	mov edx, [ebp+16]	;edx = z

	;2x-y+z / 4
	imul eax, 2			;x * 2
	sub eax, ecx		;2x - y
	add eax, edx		;2x-y + z
	mov ecx, 4			;prep for division
	mov edx, 0			;clear edx for division
	idiv ecx			;divide

	pop ebp
	ret
Math_ endp
	end
