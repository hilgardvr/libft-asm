global ft_memset

section .text


; input: rdi <- void * to mem being written to
; input: rsi <- int c char value to write to memory
; input: rdx <- int length written to memory
ft_memset:
	mov	rcx, rdi
recurse_memset:
	cmp	rdx, 0
	jle	finish_memset
	mov	byte [rdi], sil
	dec	rdx
	inc	rdi
	jmp	recurse_memset
finish_memset:
	mov	rax, rcx
	ret
