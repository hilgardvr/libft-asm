global ft_cat

section .data
	buffer times 10 db 0	; 10b buffer for read
	buflen equ $ - buffer	; length of buffer

section .text

; input: rdi <- file descriptor
; function: outputs file to stdout
; return: void
ft_cat:
	; read(int fd, void *buf, size_t count)
	push	rdi		; preserve fd
	mov	rdi, buffer
	mov	rsi, buflen
	extern	ft_bzero
	call	ft_bzero	; clear buffer
	mov	rax, 0		; sys_read syscall
	pop	rdi		; get fd back
	push	rdi		; preserve fd
	mov	rsi, buffer	; 2nd sys_read arg pointer to buffer
	mov	rdx, buflen	; 3rd sys_read arg buffer length
	syscall			; read
	cmp	rax, 0
	jle	cat_end
print_read:
	; writing:
	;rax -> 1 (write syscall)
	;rdi -> 1 (1st param - 1 fd -stdout)
	;rsi -> pointer to char*
	;rdx -> number of bytes
	push	rax		; preserve number of bytes read
	mov	rax, 1		; write syscall
	mov	rdi, 1		; std out
	mov	rsi, buffer	; pointer to what needs to be written
	pop	rdx		; number of byte read
	syscall

	pop	rdi		; restore fd
	jmp	ft_cat
cat_end:
	pop	rdi
	ret
