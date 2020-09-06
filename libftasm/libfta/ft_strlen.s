global ft_strlen

section .text


; input: rdi <- 0 terminated string pointer
; output: rax -> strlen
ft_strlen:
	mov	rax, rdi	; rdx->rax
nextchar:
	cmp	byte [rax], 0h	; rax == 0
	je	str_len_finish	; jump if (Zero Flag(ZF) is set by cmp) to finished
	inc	rax		; increment rax by 1 byte
	jmp	nextchar	; recurse
str_len_finish:
	sub	rax, rdi	; rax - rbx
	ret
