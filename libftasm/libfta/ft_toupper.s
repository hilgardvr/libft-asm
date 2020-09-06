global ft_toupper

section .text

; input: rdi <- int c
; function: if lower: uppervalue : c
; return: rax -> uppervalue/c
ft_toupper:
	cmp	rdi, 96
	jl	not_lower
	cmp	rdi, 122
	jg	not_lower
	sub	rdi, 32
	mov	rax, rdi
	ret
not_lower:
	mov	rax, rdi
	ret
