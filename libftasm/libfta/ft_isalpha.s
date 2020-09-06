global ft_isalpha

section .text

; input: rdi <- int c
; function: is alphabetical? 1 : 0
; return: rax -> 1(true)/0(false)
ft_isalpha:
	cmp	rdi, 65		; compare to 'A'
	jl	failed		; jump if not greater or equal 65
	cmp	rdi, 122
	jg	failed		; jump if greater than 122
	cmp	rdi, 90
	jle	passed
	cmp	rdi, 97
	jge	passed
	jmp	failed

; boolean pass(1)/fail(0) labels
passed:
	mov	rax, 1
	ret
failed:
	mov	rax, 0
	ret
