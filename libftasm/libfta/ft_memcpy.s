global ft_memcpy

section .text


; input: rdi <- dest void * to mem being written to
; input: rsi <- src void * 
; input: rdx <- int length written to memory
ft_memcpy:
	push	rdi
recurse_memcpy:
	cmp	rdx, 0
	jle	finish_memcpy
	mov	al, byte [rsi]
	mov	byte [rdi], al
	inc	rdi
	inc	rsi
	dec	rdx
	jmp	recurse_memcpy
finish_memcpy:
	pop	rax
	ret
