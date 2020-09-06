global	ft_bzero

section .text

; input: rdi <- 1st - char *
; input: rsi <- 2nd - size_t n
; function: clears memory
; output: void
ft_bzero:
	cmp	rsi, 0		; if at end of string
	jle	finish_zero	; finish function
	mov	[rdi], byte 0h	; mov byte 0 into memory
	inc	rdi		; mov rdi pointer++
	dec	rsi		; mov rsi pointer--
	call	ft_bzero	; recurse
finish_zero:
	ret

