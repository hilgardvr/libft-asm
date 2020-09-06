global ft_strcat

section .text

; input: rdi <- s1
; input: rsi <- s2
; function: concats s2 to s1
; return: rax -> pointer to start of s1
ft_strcat:
	push	rdi		; preserve staring address of s1
loop_to_end:
	cmp	byte [rdi], 0h	; end of s1?
	jz	found_end_s1
	inc	rdi
	jmp	loop_to_end
found_end_s1:
	cmp	byte [rsi], 0h	; end of s2?
	jz	finish_cat
	mov	rax, [rsi]
	mov	[rdi], rax
	inc	rdi
	inc	rsi
	jmp	found_end_s1
finish_cat:
	pop	rax
	ret	
	
