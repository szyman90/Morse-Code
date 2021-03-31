	.file	"main.c"
	.globl	_check
	.data
	.align 32
_check:
	.ascii " 0123456789abcdefghijklmnopqrstuvwxyz.,'_:;?!-+/()=@\0"
	.globl	_morse
	.section .rdata,"dr"
LC0:
	.ascii ".-..-\0"
LC1:
	.ascii "-----\0"
LC2:
	.ascii ".----\0"
LC3:
	.ascii "..---\0"
LC4:
	.ascii "...--\0"
LC5:
	.ascii "....-\0"
LC6:
	.ascii ".....\0"
LC7:
	.ascii "-....\0"
LC8:
	.ascii "--...\0"
LC9:
	.ascii "---..\0"
LC10:
	.ascii "----.\0"
LC11:
	.ascii ".-\0"
LC12:
	.ascii "-...\0"
LC13:
	.ascii "-.-.\0"
LC14:
	.ascii "-..\0"
LC15:
	.ascii ".\0"
LC16:
	.ascii "..-.\0"
LC17:
	.ascii "--.\0"
LC18:
	.ascii "....\0"
LC19:
	.ascii "..\0"
LC20:
	.ascii ".---\0"
LC21:
	.ascii "-.-\0"
LC22:
	.ascii ".-..\0"
LC23:
	.ascii "--\0"
LC24:
	.ascii "-.\0"
LC25:
	.ascii "---\0"
LC26:
	.ascii ".--.\0"
LC27:
	.ascii "--.-\0"
LC28:
	.ascii ".-.\0"
LC29:
	.ascii "...\0"
LC30:
	.ascii "-\0"
LC31:
	.ascii "..-\0"
LC32:
	.ascii "...-\0"
LC33:
	.ascii ".--\0"
LC34:
	.ascii "-..-\0"
LC35:
	.ascii "-.--\0"
LC36:
	.ascii "--..\0"
LC37:
	.ascii ".-.-.-\0"
LC38:
	.ascii "--..--\0"
LC39:
	.ascii ".----.\0"
LC40:
	.ascii "..--.-\0"
LC41:
	.ascii "---...\0"
LC42:
	.ascii "-.-.-.\0"
LC43:
	.ascii "..--..\0"
LC44:
	.ascii "-.-.--\0"
LC45:
	.ascii "-....-\0"
LC46:
	.ascii ".-.-.\0"
LC47:
	.ascii "-..-.\0"
LC48:
	.ascii "-.--.\0"
LC49:
	.ascii "-.--.-\0"
LC50:
	.ascii "-...-\0"
LC51:
	.ascii ".--.-.\0"
	.data
	.align 32
_morse:
	.long	LC0
	.long	LC1
	.long	LC2
	.long	LC3
	.long	LC4
	.long	LC5
	.long	LC6
	.long	LC7
	.long	LC8
	.long	LC9
	.long	LC10
	.long	LC11
	.long	LC12
	.long	LC13
	.long	LC14
	.long	LC15
	.long	LC16
	.long	LC17
	.long	LC18
	.long	LC19
	.long	LC20
	.long	LC21
	.long	LC22
	.long	LC23
	.long	LC24
	.long	LC25
	.long	LC26
	.long	LC27
	.long	LC28
	.long	LC29
	.long	LC30
	.long	LC31
	.long	LC32
	.long	LC33
	.long	LC34
	.long	LC35
	.long	LC36
	.long	LC37
	.long	LC38
	.long	LC39
	.long	LC40
	.long	LC41
	.long	LC42
	.long	LC43
	.long	LC44
	.long	LC45
	.long	LC46
	.long	LC47
	.long	LC48
	.long	LC49
	.long	LC50
	.long	LC51
	.comm	_root, 4, 2
	.text
	.globl	_insert_rec
	.def	_insert_rec;	.scl	2;	.type	32;	.endef
_insert_rec:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	movb	%al, -12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L2
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
L2:
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L3
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movzbl	-12(%ebp), %edx
	movb	%dl, 8(%eax)
	jmp	L6
L3:
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	L5
	addl	$1, 16(%ebp)
	movsbl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	movl	%edx, %ecx
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_insert_rec
	jmp	L6
L5:
	movl	16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	L6
	addl	$1, 16(%ebp)
	movsbl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	(%edx), %edx
	leal	4(%edx), %ecx
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_insert_rec
L6:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_insert_first
	.def	_insert_first;	.scl	2;	.type	32;	.endef
_insert_first:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movb	%al, -12(%ebp)
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	L8
	addl	$1, 12(%ebp)
	movsbl	-12(%ebp), %eax
	movl	_root, %edx
	movl	%edx, %ecx
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_insert_rec
	jmp	L10
L8:
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	L10
	addl	$1, 12(%ebp)
	movsbl	-12(%ebp), %eax
	movl	_root, %edx
	leal	4(%edx), %ecx
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_insert_rec
L10:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_create_tree
	.def	_create_tree;	.scl	2;	.type	32;	.endef
_create_tree:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, _root
	movl	$0, -12(%ebp)
	jmp	L12
L13:
	movl	-12(%ebp), %eax
	movl	_morse(,%eax,4), %edx
	movl	-12(%ebp), %eax
	addl	$_check, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_insert_first
	addl	$1, -12(%ebp)
L12:
	cmpl	$51, -12(%ebp)
	jle	L13
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.section .rdata,"dr"
LC52:
	.ascii "MENU\0"
LC53:
	.ascii "1. Code phrase in Morse\0"
LC54:
	.ascii "2. Decode from Morse\0"
LC55:
	.ascii "3. Close application\0"
LC56:
	.ascii "cls\0"
LC57:
	.ascii "Error, incorrect symbol\0"
	.text
	.globl	_menu
	.def	_menu;	.scl	2;	.type	32;	.endef
_menu:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
L20:
	movl	$LC52, (%esp)
	call	_puts
	movl	$LC53, (%esp)
	call	_puts
	movl	$LC54, (%esp)
	call	_puts
	movl	$LC55, (%esp)
	call	_puts
	call	_getchar
	movl	%eax, -20(%ebp)
	cmpl	$10, -20(%ebp)
	jne	L15
	call	_getchar
	movl	%eax, -20(%ebp)
L15:
	cmpl	$49, -20(%ebp)
	jne	L16
	movl	$1, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L17
L16:
	cmpl	$50, -20(%ebp)
	jne	L18
	movl	$2, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L17
L18:
	cmpl	$51, -20(%ebp)
	jne	L19
	movl	$3, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L17
L19:
	movl	$LC56, (%esp)
	call	_system
	movl	$LC57, (%esp)
	call	_puts
	movl	$1, -16(%ebp)
L17:
	cmpl	$0, -16(%ebp)
	jne	L20
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.globl	_readline
	.def	_readline;	.scl	2;	.type	32;	.endef
_readline:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L23
L25:
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movzbl	-13(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -12(%ebp)
L23:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fgetc
	movb	%al, -13(%ebp)
	cmpb	$10, -13(%ebp)
	je	L24
	cmpb	$-1, -13(%ebp)
	jne	L25
L24:
	movl	-12(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.globl	_big_to_small
	.def	_big_to_small;	.scl	2;	.type	32;	.endef
_big_to_small:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	$0, -12(%ebp)
	jmp	L28
L29:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_tolower
	movb	%al, (%ebx)
	addl	$1, -12(%ebp)
L28:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L29
	nop
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.section .rdata,"dr"
LC58:
	.ascii "%s/\0"
	.text
	.globl	_code
	.def	_code;	.scl	2;	.type	32;	.endef
_code:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L31
L35:
	movl	$0, -16(%ebp)
	jmp	L32
L34:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	-16(%ebp), %eax
	addl	$_check, %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	jne	L33
	movl	-16(%ebp), %eax
	movl	_morse(,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	$LC58, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
L33:
	addl	$1, -16(%ebp)
L32:
	cmpl	$52, -16(%ebp)
	jle	L34
	addl	$1, -12(%ebp)
L31:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L35
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	_fputc
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.section .rdata,"dr"
LC59:
	.ascii "Give name of file with text\0"
LC60:
	.ascii "%s\0"
LC61:
	.ascii "r\0"
LC62:
	.ascii "error\0"
LC63:
	.ascii "1. adding\12"
	.ascii "2.clear and write\0"
LC64:
	.ascii "a\0"
LC65:
	.ascii "code.txt\0"
LC66:
	.ascii "w\0"
	.align 4
LC67:
	.ascii "Your text is in code.txt file.\0"
	.text
	.globl	_choice_handling_code
	.def	_choice_handling_code;	.scl	2;	.type	32;	.endef
_choice_handling_code:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$568, %esp
	movl	$LC59, (%esp)
	call	_puts
	leal	-550(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC60, (%esp)
	call	_scanf
	movl	$LC61, 4(%esp)
	leal	-550(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -16(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L38
	movl	$LC62, (%esp)
	call	_puts
	movl	$1, %eax
	jmp	L45
L38:
	call	_getchar
	movl	$LC63, (%esp)
	call	_puts
	call	_getchar
	movl	%eax, -20(%ebp)
	cmpl	$49, -20(%ebp)
	jne	L40
	movl	$LC64, 4(%esp)
	movl	$LC65, (%esp)
	call	_fopen
	movl	%eax, -12(%ebp)
	jmp	L43
L40:
	cmpl	$50, -20(%ebp)
	jne	L42
	movl	$LC66, 4(%esp)
	movl	$LC65, (%esp)
	call	_fopen
	movl	%eax, -12(%ebp)
	jmp	L43
L42:
	movl	$LC62, (%esp)
	call	_printf
	movl	$1, %eax
	jmp	L45
L44:
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	_big_to_small
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-520(%ebp), %eax
	movl	%eax, (%esp)
	call	_code
L43:
	leal	-520(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_readline
	testl	%eax, %eax
	jg	L44
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$LC56, (%esp)
	call	_system
	movl	$LC67, (%esp)
	call	_puts
	movl	$1, %eax
L45:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.def	_decode_rec;	.scl	3;	.type	32;	.endef
_decode_rec:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L52
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L49
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movsbl	%al, %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_fputc
	movl	__imp___iob, %eax
	addl	$32, %eax
	movl	%eax, 4(%esp)
	movl	$10, (%esp)
	call	_fputc
	jmp	L46
L49:
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jne	L50
	movl	8(%ebp), %eax
	movzbl	8(%eax), %eax
	movsbl	%al, %eax
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_fputc
	addl	$1, 12(%ebp)
	movl	_root, %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_decode_rec
	jmp	L46
L50:
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	L51
	addl	$1, 12(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_decode_rec
	jmp	L46
L51:
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	L46
	addl	$1, 12(%ebp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_decode_rec
	jmp	L46
L52:
	nop
L46:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.section .rdata,"dr"
	.align 4
LC68:
	.ascii "Give name of file with morse code\0"
LC69:
	.ascii "decode.txt\0"
	.align 4
LC70:
	.ascii "Your text is in decode.txt file.\0"
	.text
	.globl	_choice_handling_decode
	.def	_choice_handling_decode;	.scl	2;	.type	32;	.endef
_choice_handling_decode:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$568, %esp
	movl	$LC68, (%esp)
	call	_puts
	leal	-46(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC60, (%esp)
	call	_scanf
	movl	$LC61, 4(%esp)
	leal	-46(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -12(%ebp)
	movl	$LC66, 4(%esp)
	movl	$LC69, (%esp)
	call	_fopen
	movl	%eax, -16(%ebp)
	cmpl	$0, -12(%ebp)
	je	L54
	cmpl	$0, -16(%ebp)
	jne	L57
L54:
	movl	$LC62, (%esp)
	call	_puts
	movl	$1, %eax
	jmp	L59
L58:
	movl	_root, %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-546(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_decode_rec
L57:
	leal	-546(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_readline
	testl	%eax, %eax
	jg	L58
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$LC70, (%esp)
	call	_puts
	movl	$0, %eax
L59:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.def	_drop_tree;	.scl	3;	.type	32;	.endef
_drop_tree:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L62
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_drop_tree
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_drop_tree
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L62:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$LC56, (%esp)
	call	_system
	movl	$1, 28(%esp)
	call	_create_tree
L69:
	call	_menu
	movl	%eax, 24(%esp)
	movl	24(%esp), %eax
	cmpl	$2, %eax
	je	L65
	cmpl	$3, %eax
	je	L66
	cmpl	$1, %eax
	jne	L71
	call	_choice_handling_code
	jmp	L68
L65:
	call	_choice_handling_decode
	jmp	L68
L66:
	movl	$0, 28(%esp)
	jmp	L68
L71:
	movl	$1, 28(%esp)
L68:
	cmpl	$0, 28(%esp)
	jne	L69
	movl	_root, %eax
	movl	%eax, (%esp)
	call	_drop_tree
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
	.def	_system;	.scl	2;	.type	32;	.endef
	.def	_fgetc;	.scl	2;	.type	32;	.endef
	.def	_tolower;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_fputc;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_fputc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
