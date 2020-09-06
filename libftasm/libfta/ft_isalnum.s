global ft_isalnum

section .text

; input: rdi <- int c
; function: is alpha numeric? 1 : 0
; return: rax -> 1(true)/0(false)
ft_isalnum:
	extern	ft_isdigit
	call	ft_isdigit
	cmp	rax, 1
	je	passed
	extern	ft_isalpha
	call	ft_isalpha
	cmp	rax, 1
	je	passed
	jmp	failed

; boolean pass(1)/fail(0) labels
passed:
	mov	rax, 1
	ret
failed:
	mov	rax, 0
	ret
