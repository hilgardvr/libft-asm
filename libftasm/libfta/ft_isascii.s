global	ft_isascii

section .text

; input: rdi <- int c
; function: is ascii? 1 : 0
; return: rax -> 1(true)/0(false)
ft_isascii:
	cmp	rdi, 0
	jl	failed
	cmp	rdi, 255
	jg	failed
	jmp	passed

; boolean pass(1)/fail(0) labels
passed:
	mov	rax, 1
	ret
failed:
	mov	rax, 0
	ret
