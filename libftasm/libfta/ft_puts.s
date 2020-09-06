global ft_puts

section .text

;ft_puts
;rax -> 1 (write syscall)
;rdi -> 1 (1st param - 1 fd -stdout)
;rsi -> pointer to char*
;rdx -> number of bytes 
ft_puts:
	push	rdx
	push	rdi
	push	rsi
	push	rax
	extern	ft_strlen
	call	ft_strlen
	
	mov	rdx, rax
	mov	rax, 1
	mov	rsi, rdi
	mov	rdi, 1
	syscall
	mov	rsi, 10
	push	rsi
	mov	rsi, rsp
	mov	rax, 1
	mov	rdx, 1
	syscall
	
	pop	rsi
	pop	rax
	mov	rax, rdx	; return num of chars written
	pop 	rsi
	pop	rdi
	pop	rdx
	ret

