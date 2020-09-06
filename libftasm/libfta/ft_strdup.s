global ft_strdup

section .text


; input: rdi <- src const char *
; function: copies string to new malloced string
; output: rax -> dest char *
ft_strdup:
	push	rdi		; preserve src rdi
	extern	ft_strlen
	call	ft_strlen	; get str len in rax
	inc	rax		; make room for \0
	push	rax		; save strlen
	mov	rdi, rax	; mov strlen to rdi
	extern	malloc
	call	malloc		; return pointer to new mem in rax
	mov	rdi, rax	; dest into rdi
	pop	rdx		; pop strlen
	pop	rsi		; pop src
	extern	ft_memcpy
	call	ft_memcpy
	ret
