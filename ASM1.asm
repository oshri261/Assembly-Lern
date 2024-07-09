; so this is my first code in assembly code 86x 64x
; Great Thanks to @kupala on youtube for makeing such a great tutrials
; you can find him at https://www.youtube.com/@khoraski

section .data
	hello db "Hello World",10 ; 12 cherators
section .text
	global _start
_start:
	mov rax, 1 ; syscall ID (sys_write)
	mov rdi, 1 ; syscall arg 1
	mov rsi, hello ; syscall arg 2
	mov rdx, 12 ; syscall arg 3
	syscall ; excecute
	; until here the program should print hello world to the console
	mov rax, 60 ; (sys_exit)
	mov rdi, 1 ; (error code)
	syscall ; exceute
	; so we closed the program and now thats all so bye for now see you next time
