global ft_tolower

section .text


; input: rdi <- int c
; function: if upper: lowervalue : c
; return: rax -> lowervalue/c
ft_tolower:
	cmp	rdi, 65
	jl	not_upper
	cmp	rdi, 90
	jg	not_upper
	add	rdi, 32
	mov	rax, rdi
	ret
not_upper:
	mov	rax, rdi
	ret
