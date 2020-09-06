global ft_isdigit

section .text


; input: rdi <- int c
; function: is number? 1 : 0
; return: rax -> 1(true)/0(false)
ft_isdigit:
	cmp	rdi, 48
	jl	failed
	cmp	rdi, 57
	jg	failed
	jmp	passed 

; boolean pass(1)/fail(0) labels
passed:
	mov	rax, 1
	ret
failed:
	mov	rax, 0
	ret
