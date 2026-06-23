	.file	"CVFS_Project.cpp"
	.globl	_bootobj
	.bss
	.align 32
_bootobj:
	.space 100
	.globl	_superobj
	.align 4
_superobj:
	.space 8
	.globl	_uareaobj
	.align 32
_uareaobj:
	.space 100
	.globl	_head
	.align 4
_head:
	.space 4
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Project CVFS:  UAREA Gets Initialized Sucessfully\0"
	.text
	.globl	__Z15initializeUAREAv
	.def	__Z15initializeUAREAv;	.scl	2;	.type	32;	.endef
__Z15initializeUAREAv:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$2019916109, _uareaobj
	movw	$101, _uareaobj+4
	movl	$0, -12(%ebp)
L3:
	cmpl	$19, -12(%ebp)
	jg	L2
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	$0, _uareaobj+4(,%eax,4)
	addl	$1, -12(%ebp)
	jmp	L3
L2:
	movl	$LC0, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "Project CVFS: Super Block Gets Initialized Sucessfully\0"
	.text
	.globl	__Z20initializeSuperBlockv
	.def	__Z20initializeSuperBlockv;	.scl	2;	.type	32;	.endef
__Z20initializeSuperBlockv:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$5, _superobj
	movl	$5, _superobj+4
	movl	$LC1, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "Project CVFS: DILB Created Sucessfully\0"
	.text
	.globl	__Z10createDILBv
	.def	__Z10createDILBv;	.scl	2;	.type	32;	.endef
__Z10createDILBv:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	$0, -20(%ebp)
	movl	_head, %eax
	movl	%eax, -16(%ebp)
	movl	$1, -12(%ebp)
L9:
	cmpl	$5, -12(%ebp)
	jg	L6
	movl	$52, (%esp)
	call	_malloc
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movb	$0, (%eax)
	movl	-20(%ebp), %eax
	movl	$0, 20(%eax)
	movl	-20(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 24(%eax)
	movl	-20(%ebp), %eax
	movl	$0, 28(%eax)
	movl	-20(%ebp), %eax
	movl	$0, 32(%eax)
	movl	-20(%ebp), %eax
	movl	$0, 36(%eax)
	movl	-20(%ebp), %eax
	movl	$0, 40(%eax)
	movl	-20(%ebp), %eax
	movl	$0, 44(%eax)
	movl	-20(%ebp), %eax
	movl	$0, 48(%eax)
	cmpl	$0, -16(%ebp)
	jne	L7
	movl	-20(%ebp), %eax
	movl	%eax, _head
	movl	_head, %eax
	movl	%eax, -16(%ebp)
	jmp	L8
L7:
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, 48(%eax)
	movl	-16(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -16(%ebp)
L8:
	addl	$1, -12(%ebp)
	jmp	L9
L6:
	movl	$LC2, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "Project CVFS : Auxillary Data Initialized Sucessfully\0"
	.text
	.globl	__Z32startAuxillaryDataInitialisationv
	.def	__Z32startAuxillaryDataInitialisationv;	.scl	2;	.type	32;	.endef
__Z32startAuxillaryDataInitialisationv:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$774778414, _bootobj
	movl	$1953460034, _bootobj+4
	movl	$543649385, _bootobj+8
	movl	$1668248144, _bootobj+12
	movl	$544437093, _bootobj+16
	movl	$1344300623, _bootobj+20
	movl	$1701474162, _bootobj+24
	movl	$1126200419, _bootobj+28
	movl	$542328406, _bootobj+32
	movl	$1394635593, _bootobj+36
	movl	$1936024437, _bootobj+40
	movl	$1819633267, _bootobj+44
	movl	$774778476, _bootobj+48
	movw	$2606, _bootobj+52
	movb	$0, _bootobj+54
	movl	$_bootobj, (%esp)
	call	_puts
	call	__Z20initializeSuperBlockv
	call	__Z10createDILBv
	call	__Z15initializeUAREAv
	movl	$LC3, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "-------------------------------------------------------\0"
	.align 4
LC5:
	.ascii "--------------Project CVFS : HELP PAGE------------------\0"
	.align 4
LC6:
	.ascii "man : It used to display manual page.\0"
	.align 4
LC7:
	.ascii "cd : used to change working directory.\0"
	.align 4
LC8:
	.ascii "clear : It used to clear terminal.\0"
	.align 4
LC9:
	.ascii "uname: it is used to display information about System\0"
	.align 4
LC10:
	.ascii "creat : It used to create new file.\0"
	.align 4
LC11:
	.ascii "write : It used to write data into file.\0"
	.align 4
LC12:
	.ascii "read : It used to read data from file.\0"
	.align 4
LC13:
	.ascii "echo : Used to display Text in terminal\0"
	.align 4
LC14:
	.ascii "stat : It used to display Statistical information.\0"
	.align 4
LC15:
	.ascii "unlink : It used to delete the file.\0"
	.align 4
LC16:
	.ascii "mkdir : It is used to make An Directory\0"
	.align 4
LC17:
	.ascii "EXIT : it is used to  terminate Project CVFS.\0"
	.text
	.globl	__Z11displayHelpv
	.def	__Z11displayHelpv;	.scl	2;	.type	32;	.endef
__Z11displayHelpv:
LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$LC4, (%esp)
	call	_puts
	movl	$LC5, (%esp)
	call	_puts
	movl	$LC4, (%esp)
	call	_puts
	movl	$LC6, (%esp)
	call	_puts
	movl	$LC7, (%esp)
	call	_printf
	movl	$LC8, (%esp)
	call	_puts
	movl	$LC9, (%esp)
	call	_puts
	movl	$LC10, (%esp)
	call	_puts
	movl	$LC11, (%esp)
	call	_puts
	movl	$LC12, (%esp)
	call	_puts
	movl	$LC13, (%esp)
	call	_puts
	movl	$LC14, (%esp)
	call	_puts
	movl	$LC15, (%esp)
	call	_puts
	movl	$LC16, (%esp)
	call	_printf
	movl	$LC17, (%esp)
	call	_puts
	movl	$LC4, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.section .rdata,"dr"
LC18:
	.ascii "ls\0"
	.align 4
LC19:
	.ascii "About : it is used to list names of all files\0"
LC20:
	.ascii "Usage : ls \0"
LC21:
	.ascii "man\0"
	.align 4
LC22:
	.ascii "About : it is used to display manual page.\0"
LC23:
	.ascii "Usage : man command_name  \0"
	.align 4
LC24:
	.ascii "command_name : it is name of command\0"
LC25:
	.ascii "EXIT\0"
	.align 4
LC26:
	.ascii "About : it is used to terminate shell.\0"
LC27:
	.ascii "Usage : EXIT \0"
LC28:
	.ascii "cd\0"
	.align 4
LC29:
	.ascii "About : it is change your working directory.\0"
LC30:
	.ascii "Usage : cd Directory_Name \0"
	.align 4
LC31:
	.ascii "Directory_Name : your directory name\0"
LC32:
	.ascii "mkdir\0"
	.align 4
LC33:
	.ascii "About : for making new directory.\0"
LC34:
	.ascii "Usage : mkdir Directory_Name \0"
LC35:
	.ascii "stat\0"
	.align 4
LC36:
	.ascii "About : to display statistics about your files/file systems.\0"
LC37:
	.ascii "Usage : stat file_name \0"
LC38:
	.ascii "file_name : your file name\0"
LC39:
	.ascii "clear\0"
LC40:
	.ascii "About : Used To Clear shell.\0"
LC41:
	.ascii "Usage : clear \0"
LC42:
	.ascii "echo\0"
	.align 4
LC43:
	.ascii "About :  used to display text on shell.\0"
LC44:
	.ascii "Usage : echo \"text\" \0"
LC45:
	.ascii "uname\0"
	.align 4
LC46:
	.ascii "About:Used to display Information About System\0"
LC47:
	.ascii "usage:uname\0"
LC48:
	.ascii "creat\0"
LC49:
	.ascii "About : Used to create a file\0"
LC50:
	.ascii "Usage : creat file_name\0"
LC51:
	.ascii "unlink\0"
LC52:
	.ascii "About : Used to delete file\0"
LC53:
	.ascii "Usage : unlink file_name\0"
LC54:
	.ascii "write\0"
	.align 4
LC55:
	.ascii "About : Used to write something into the file\0"
	.align 4
LC56:
	.ascii "Usage : unlink Fd  str(buffer)  No_of_bytes\0"
LC57:
	.ascii "Fd: file descripter\0"
	.align 4
LC58:
	.ascii "str(buffer): String/Buffer from  which we want to write in file\0"
	.align 4
LC59:
	.ascii "No_of_bytes : no of bytes which we want to write\0"
LC60:
	.ascii "read\0"
	.align 4
LC61:
	.ascii "About : Used to read data from file\0"
	.align 4
LC62:
	.ascii "Usage : read Fd  (buffer)_str  No_Of_bytes\0"
	.align 4
LC63:
	.ascii " (Buffer)/str : String or buffer where we can store and red data from file\0"
	.align 4
LC64:
	.ascii "No_of_bytes : no of bytes which we want to read\0"
LC65:
	.ascii "No manual entry for %s\12\0"
	.text
	.globl	__Z14manPageDisplayPc
	.def	__Z14manPageDisplayPc;	.scl	2;	.type	32;	.endef
__Z14manPageDisplayPc:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L13
	movl	$LC19, (%esp)
	call	_puts
	movl	$LC20, (%esp)
	call	_puts
	jmp	L27
L13:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L15
	movl	$LC22, (%esp)
	call	_puts
	movl	$LC23, (%esp)
	call	_puts
	movl	$LC24, (%esp)
	call	_puts
	jmp	L27
L15:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC25, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L16
	movl	$LC26, (%esp)
	call	_puts
	movl	$LC27, (%esp)
	call	_puts
	jmp	L27
L16:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L17
	movl	$LC29, (%esp)
	call	_puts
	movl	$LC30, (%esp)
	call	_puts
	movl	$LC31, (%esp)
	call	_puts
	jmp	L27
L17:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC32, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L18
	movl	$LC33, (%esp)
	call	_puts
	movl	$LC34, (%esp)
	call	_puts
	movl	$LC31, (%esp)
	call	_puts
	jmp	L27
L18:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC35, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L19
	movl	$LC36, (%esp)
	call	_puts
	movl	$LC37, (%esp)
	call	_puts
	movl	$LC38, (%esp)
	call	_puts
	jmp	L27
L19:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC39, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L20
	movl	$LC40, (%esp)
	call	_puts
	movl	$LC41, (%esp)
	call	_puts
	jmp	L27
L20:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC42, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L21
	movl	$LC43, (%esp)
	call	_puts
	movl	$LC44, (%esp)
	call	_puts
	jmp	L27
L21:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC45, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L22
	movl	$LC46, (%esp)
	call	_puts
	movl	$LC47, (%esp)
	call	_puts
	jmp	L27
L22:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC48, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L23
	movl	$LC49, (%esp)
	call	_puts
	movl	$LC50, (%esp)
	call	_puts
	jmp	L27
L23:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC51, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L24
	movl	$LC52, (%esp)
	call	_puts
	movl	$LC53, (%esp)
	call	_puts
	jmp	L27
L24:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC54, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L25
	movl	$LC55, (%esp)
	call	_puts
	movl	$LC56, (%esp)
	call	_puts
	movl	$LC57, (%esp)
	call	_puts
	movl	$LC58, (%esp)
	call	_puts
	movl	$LC59, (%esp)
	call	_puts
	jmp	L27
L25:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC60, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L26
	movl	$LC61, (%esp)
	call	_puts
	movl	$LC62, (%esp)
	call	_puts
	movl	$LC57, (%esp)
	call	_puts
	movl	$LC63, (%esp)
	call	_puts
	movl	$LC64, (%esp)
	call	_puts
	jmp	L27
L26:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC65, (%esp)
	call	_printf
L27:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.globl	__Z11isFileExistPc
	.def	__Z11isFileExistPc;	.scl	2;	.type	32;	.endef
__Z11isFileExistPc:
LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	_head, %eax
	movl	%eax, -12(%ebp)
	movb	$0, -13(%ebp)
L31:
	cmpl	$0, -12(%ebp)
	je	L29
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L30
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$1, %eax
	jne	L30
	movb	$1, -13(%ebp)
	jmp	L29
L30:
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L31
L29:
	movzbl	-13(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.section .rdata,"dr"
	.align 4
LC66:
	.ascii "----------------------------------------------\0"
	.align 4
LC67:
	.ascii "----Project CVFS :--- Files Information: ------\0"
LC68:
	.ascii "%d\11%s\11%d\12\0"
	.text
	.globl	__Z6LsFilev
	.def	__Z6LsFilev;	.scl	2;	.type	32;	.endef
__Z6LsFilev:
LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	movl	_head, %eax
	movl	%eax, -12(%ebp)
	movl	$LC66, (%esp)
	call	_puts
	movl	$LC67, (%esp)
	call	_puts
	movl	$LC66, (%esp)
	call	_puts
L36:
	cmpl	$0, -12(%ebp)
	je	L34
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L35
	movl	-12(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	24(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC68, (%esp)
	call	_printf
L35:
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L36
L34:
	movl	$LC66, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.section .rdata,"dr"
	.align 4
LC69:
	.ascii "Total No Of Inodes Remaining:%d\12\0"
LC70:
	.ascii "There is No Inode\0"
	.text
	.globl	__Z10createFilePci
	.def	__Z10createFilePci;	.scl	2;	.type	32;	.endef
__Z10createFilePci:
LFB33:
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
	movl	_head, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	_superobj+4, %eax
	movl	%eax, 4(%esp)
	movl	$LC69, (%esp)
	call	_printf
	cmpl	$0, 8(%ebp)
	jne	L38
	movl	$-1, %eax
	jmp	L39
L38:
	cmpl	$0, 12(%ebp)
	jle	L40
	cmpl	$3, 12(%ebp)
	jle	L41
L40:
	movl	$-1, %eax
	jmp	L39
L41:
	movl	_superobj+4, %eax
	testl	%eax, %eax
	jne	L42
	movl	$-2, %eax
	jmp	L39
L42:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z11isFileExistPc
	testb	%al, %al
	je	L43
	movl	$-3, %eax
	jmp	L39
L43:
	cmpl	$0, -12(%ebp)
	je	L44
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L51
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L43
L51:
	nop
L44:
	cmpl	$0, -12(%ebp)
	jne	L46
	movl	$LC70, (%esp)
	call	_puts
	movl	$-2, %eax
	jmp	L39
L46:
	movl	$3, -16(%ebp)
L49:
	cmpl	$19, -16(%ebp)
	jg	L47
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	testl	%eax, %eax
	je	L52
	addl	$1, -16(%ebp)
	jmp	L49
L52:
	nop
L47:
	cmpl	$20, -16(%ebp)
	jne	L50
	movl	$-8, %eax
	jmp	L39
L50:
	movl	$16, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	%edx, _uareaobj+4(,%eax,4)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	$0, (%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	$0, 4(%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strcpy
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$50, 28(%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$0, 36(%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$1, 32(%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$1, 44(%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, 40(%eax)
	movl	-16(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %ebx
	movl	$50, (%esp)
	call	_malloc
	movl	%eax, 20(%ebx)
	movl	_superobj+4, %eax
	subl	$1, %eax
	movl	%eax, _superobj+4
	movl	-16(%ebp), %eax
L39:
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.globl	__Z10unlinkFilePc
	.def	__Z10unlinkFilePc;	.scl	2;	.type	32;	.endef
__Z10unlinkFilePc:
LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	cmpl	$0, 8(%ebp)
	jne	L54
	movl	$-1, %eax
	jmp	L55
L54:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z11isFileExistPc
	xorl	$1, %eax
	testb	%al, %al
	je	L56
	movl	$-4, %eax
	jmp	L55
L56:
	movl	$0, -12(%ebp)
L59:
	cmpl	$19, -12(%ebp)
	jg	L57
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	testl	%eax, %eax
	je	L58
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L58
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$0, 20(%eax)
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$0, 28(%eax)
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$0, 36(%eax)
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$0, 32(%eax)
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$0, 44(%eax)
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$0, 40(%eax)
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	$20, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_free
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	$0, _uareaobj+4(,%eax,4)
	movl	_superobj+4, %eax
	addl	$1, %eax
	movl	%eax, _superobj+4
	jmp	L57
L58:
	addl	$1, -12(%ebp)
	jmp	L59
L57:
	movl	$0, %eax
L55:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.section .rdata,"dr"
LC71:
	.ascii "File Descripter:%d\12\0"
	.align 4
LC72:
	.ascii "Data that we want to write:%s\12\0"
	.align 4
LC73:
	.ascii "No of Bytes That We want to write in file:%d\12\0"
	.text
	.globl	__Z9writeFileiPci
	.def	__Z9writeFileiPci;	.scl	2;	.type	32;	.endef
__Z9writeFileiPci:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC71, (%esp)
	call	_printf
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC72, (%esp)
	call	_printf
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC73, (%esp)
	call	_printf
	cmpl	$0, 8(%ebp)
	js	L61
	cmpl	$20, 8(%ebp)
	jle	L62
L61:
	movl	$-1, %eax
	jmp	L63
L62:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	testl	%eax, %eax
	jne	L64
	movl	$-4, %eax
	jmp	L63
L64:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	cmpl	$1, %eax
	jg	L65
	movl	$-5, %eax
	jmp	L63
L65:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	4(%eax), %eax
	movl	$50, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	16(%ebp), %eax
	jge	L66
	movl	$-6, %eax
	jmp	L63
L66:
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	_uareaobj+4(,%edx,4), %edx
	movl	12(%edx), %edx
	movl	20(%edx), %ecx
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	_uareaobj+4(,%edx,4), %edx
	movl	4(%edx), %edx
	addl	%ecx, %edx
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_strncpy
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	_uareaobj+4(,%edx,4), %edx
	movl	4(%edx), %ecx
	movl	16(%ebp), %edx
	addl	%ecx, %edx
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	_uareaobj+4(,%edx,4), %edx
	movl	12(%edx), %edx
	movl	36(%edx), %ecx
	movl	16(%ebp), %edx
	addl	%ecx, %edx
	movl	%edx, 36(%eax)
	movl	16(%ebp), %eax
L63:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.globl	__Z8readFileiPci
	.def	__Z8readFileiPci;	.scl	2;	.type	32;	.endef
__Z8readFileiPci:
LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	js	L68
	cmpl	$20, 8(%ebp)
	jle	L69
L68:
	movl	$-1, %eax
	jmp	L70
L69:
	cmpl	$0, 12(%ebp)
	jne	L71
	movl	$-1, %eax
	jmp	L70
L71:
	cmpl	$0, 16(%ebp)
	jg	L72
	movl	$-1, %eax
	jmp	L70
L72:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	testl	%eax, %eax
	jne	L73
	movl	$-4, %eax
	jmp	L70
L73:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	12(%eax), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jg	L74
	movl	$-5, %eax
	jmp	L70
L74:
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	(%eax), %eax
	movl	$50, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	16(%ebp), %eax
	jge	L75
	movl	$-7, %eax
	jmp	L70
L75:
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	_uareaobj+4(,%edx,4), %edx
	movl	12(%edx), %edx
	movl	20(%edx), %ecx
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	_uareaobj+4(,%edx,4), %edx
	movl	(%edx), %edx
	addl	%ecx, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	_uareaobj+4(,%eax,4), %eax
	movl	8(%ebp), %edx
	addl	$4, %edx
	movl	_uareaobj+4(,%edx,4), %edx
	movl	(%edx), %ecx
	movl	16(%ebp), %edx
	addl	%ecx, %edx
	movl	%edx, (%eax)
	movl	16(%ebp), %eax
L70:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE36:
	.section .rdata,"dr"
	.align 4
LC74:
	.ascii "File Name:%s\12 Inode No : %d\12Actual Size : %d\12Permissions:%d\12\0"
LC75:
	.ascii "File Type:REGULAR\0"
LC76:
	.ascii "File Type:SPECIAL\0"
	.text
	.globl	__Z11DisplayStatPc
	.def	__Z11DisplayStatPc;	.scl	2;	.type	32;	.endef
__Z11DisplayStatPc:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	$0, -12(%ebp)
	movl	_head, %eax
	movl	%eax, -12(%ebp)
L81:
	cmpl	$0, -12(%ebp)
	je	L82
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L78
	movl	-12(%ebp), %eax
	movl	40(%eax), %ebx
	movl	-12(%ebp), %eax
	movl	36(%eax), %ecx
	movl	-12(%ebp), %eax
	movl	24(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC74, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$1, %eax
	jne	L79
	movl	$LC75, (%esp)
	call	_puts
L79:
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	cmpl	$2, %eax
	jne	L83
	movl	$LC76, (%esp)
	call	_puts
	jmp	L83
L78:
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L81
L83:
	nop
L82:
	nop
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.section .rdata,"dr"
LC77:
	.ascii "System info:\0"
LC78:
	.ascii "Ubuntu Linux 24.04 version\0"
LC79:
	.ascii "Total INodes Present:%d\12\0"
	.align 4
LC80:
	.ascii "Total Remaining Free Inodes:%d\12\0"
	.text
	.globl	__Z7SysInfov
	.def	__Z7SysInfov;	.scl	2;	.type	32;	.endef
__Z7SysInfov:
LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$LC77, (%esp)
	call	_puts
	movl	$LC78, (%esp)
	call	_puts
	movl	_superobj, %eax
	movl	%eax, 4(%esp)
	movl	$LC79, (%esp)
	call	_printf
	movl	_superobj+4, %eax
	movl	%eax, 4(%esp)
	movl	$LC80, (%esp)
	call	_printf
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE38:
	.section .rdata,"dr"
LC81:
	.ascii "cvfs_state_backup_%ld.dat\0"
	.align 4
LC82:
	.ascii "ERROR: Cannot create backup file.\0"
LC83:
	.ascii "Backup Saved : %s\12\0"
	.text
	.globl	__Z9saveStatev
	.def	__Z9saveStatev;	.scl	2;	.type	32;	.endef
__Z9saveStatev:
LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	subl	$144, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	leal	-76(%ebp), %edx
	movl	$0, %eax
	movl	$15, %ecx
	movl	%edx, %edi
	rep stosl
	movl	$0, (%esp)
	call	_time
	movl	%eax, 8(%esp)
	movl	$LC81, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	$384, 8(%esp)
	movl	$257, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_open
	movl	%eax, -16(%ebp)
	cmpl	$-1, -16(%ebp)
	jne	L86
	movl	$LC82, (%esp)
	call	_puts
	jmp	L85
L86:
	movl	$4, 8(%esp)
	movl	$_superobj+4, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_write
	movl	_head, %eax
	movl	%eax, -12(%ebp)
L91:
	cmpl	$0, -12(%ebp)
	je	L88
	movl	-12(%ebp), %eax
	addl	$24, %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_write
	movl	-12(%ebp), %eax
	movl	$20, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_write
	movl	-12(%ebp), %eax
	addl	$32, %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_write
	movl	-12(%ebp), %eax
	addl	$36, %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_write
	movl	-12(%ebp), %eax
	addl	$40, %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_write
	movl	-12(%ebp), %eax
	addl	$44, %eax
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_write
	movl	-12(%ebp), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L89
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L89
	movl	-12(%ebp), %eax
	movl	20(%eax), %eax
	movl	$50, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_write
	jmp	L90
L89:
	leal	-126(%ebp), %eax
	movl	$50, %ecx
	movl	$0, %ebx
	movl	%ebx, (%eax)
	movl	%ebx, -4(%eax,%ecx)
	leal	4(%eax), %edx
	andl	$-4, %edx
	subl	%edx, %eax
	addl	%eax, %ecx
	andl	$-4, %ecx
	shrl	$2, %ecx
	movl	%edx, %edi
	movl	%ebx, %eax
	rep stosl
	movl	$50, 8(%esp)
	leal	-126(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_write
L90:
	movl	-12(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L91
L88:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_close
	leal	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC83, (%esp)
	call	_printf
L85:
	addl	$144, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE39:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC84:
	.ascii "----Project CVFS : ...Started SucessFully.------\0"
LC85:
	.ascii "\0"
LC86:
	.ascii "\12 Project CVFS :$ \0"
LC87:
	.ascii "%s %s %s %s %s\0"
	.align 4
LC88:
	.ascii "\12Thank You For Using Project CVFS..\0"
	.align 4
LC89:
	.ascii "Deallocating all the resources.\0"
LC90:
	.ascii "cls\0"
LC91:
	.ascii "help\0"
LC92:
	.ascii "Enter Message:\0"
LC93:
	.ascii "There is no such command\0"
LC94:
	.ascii "Invalid parameter\0"
	.align 4
LC95:
	.ascii "unable to delete as there is no such file\0"
LC96:
	.ascii "File gets Sucessfully Deleted\0"
	.align 4
LC97:
	.ascii "Enter data that you want to write:\0"
LC98:
	.ascii "ERROR : Invalid parameters\0"
	.align 4
LC99:
	.ascii "ERROR : There is No such File present\0"
	.align 4
LC100:
	.ascii "ERROR : Unable to write into file (no permission)\0"
	.align 4
LC101:
	.ascii "ERROR : unable to write in file there is no space Available \0"
	.align 4
LC102:
	.ascii "%d Bytes Are Sucessfully Written\12\0"
	.align 4
LC103:
	.ascii "ERROR : Unable to create File as parameters are Invalid\0"
LC104:
	.ascii "Please Refer man page\0"
	.align 4
LC105:
	.ascii "ERROR : Unable to create file as there is no Inode\0"
	.align 4
LC106:
	.ascii "ERROR : Unable to create file as file is already present\0"
LC107:
	.ascii "ERROR : Unable to create file\0"
	.align 4
LC108:
	.ascii "Max opened  files limit is reached\0"
LC109:
	.ascii "There is No such command\0"
	.align 4
LC110:
	.ascii "file gets sucesfully created  with Fd :%d\12\0"
LC111:
	.ascii "ERROR : Invalid parameter\0"
LC112:
	.ascii "ERROR : File Not Exist\0"
LC113:
	.ascii "ERROR : Permission Denied\0"
LC114:
	.ascii "ERROR : Insufficient Data\0"
LC115:
	.ascii "Read Operation is Sucessfull\0"
LC116:
	.ascii "Data From File:%s\12\0"
LC117:
	.ascii "Command Not Found\0"
	.align 4
LC118:
	.ascii "Please Refer help option to get More Information\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	andl	$-16, %esp
	subl	$464, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	call	___main
	leal	372(%esp), %edx
	movl	$0, %eax
	movl	$20, %ecx
	movl	%edx, %edi
	rep stosl
	leal	292(%esp), %edx
	movl	$0, %eax
	movl	$20, %ecx
	movl	%edx, %edi
	rep stosl
	leal	172(%esp), %edx
	movl	$0, %eax
	movl	$30, %ecx
	movl	%edx, %edi
	rep stosl
	leal	122(%esp), %eax
	movl	$50, %ecx
	movl	$0, %ebx
	movl	%ebx, (%eax)
	movl	%ebx, -4(%eax,%ecx)
	leal	4(%eax), %edx
	andl	$-4, %edx
	subl	%edx, %eax
	addl	%eax, %ecx
	andl	$-4, %ecx
	shrl	$2, %ecx
	movl	%edx, %edi
	movl	%ebx, %eax
	rep stosl
	leal	42(%esp), %eax
	movl	$80, %ecx
	movl	$0, %ebx
	movl	%ebx, (%eax)
	movl	%ebx, -4(%eax,%ecx)
	leal	4(%eax), %edx
	andl	$-4, %edx
	subl	%edx, %eax
	addl	%eax, %ecx
	andl	$-4, %ecx
	shrl	$2, %ecx
	movl	%edx, %edi
	movl	%ebx, %eax
	rep stosl
	movl	$0, 460(%esp)
	movl	$0, 456(%esp)
	movl	$0, 452(%esp)
	call	__Z32startAuxillaryDataInitialisationv
	movl	$LC66, (%esp)
	call	_puts
	movl	$LC84, (%esp)
	call	_puts
	movl	$LC66, (%esp)
	call	_puts
L129:
	movl	__imp___iob, %eax
	movl	%eax, (%esp)
	call	_fflush
	movzbl	LC85, %eax
	movb	%al, 372(%esp)
	movl	$LC86, (%esp)
	call	_printf
	movl	__imp___iob, %eax
	movl	%eax, 8(%esp)
	movl	$80, 4(%esp)
	leal	372(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	leal	172(%esp), %eax
	addl	$100, %eax
	movl	%eax, 28(%esp)
	leal	172(%esp), %eax
	addl	$80, %eax
	movl	%eax, 24(%esp)
	leal	172(%esp), %eax
	addl	$60, %eax
	movl	%eax, 20(%esp)
	leal	172(%esp), %eax
	addl	$40, %eax
	movl	%eax, 16(%esp)
	leal	172(%esp), %eax
	addl	$20, %eax
	movl	%eax, 12(%esp)
	leal	172(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC87, 4(%esp)
	leal	372(%esp), %eax
	movl	%eax, (%esp)
	call	_sscanf
	movl	%eax, 452(%esp)
	movl	__imp___iob, %eax
	movl	%eax, (%esp)
	call	_fflush
	cmpl	$1, 452(%esp)
	jne	L93
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC25, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L94
	call	__Z9saveStatev
	movl	$LC88, (%esp)
	call	_puts
	movl	$LC89, (%esp)
	call	_puts
	jmp	L131
L94:
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L96
	call	__Z6LsFilev
	jmp	L129
L96:
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC39, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L98
	movl	$LC90, (%esp)
	call	_system
	jmp	L129
L98:
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC91, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L99
	call	__Z11displayHelpv
	jmp	L129
L99:
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC42, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L100
	movl	$LC92, (%esp)
	call	_printf
	movl	__imp___iob, %eax
	movl	%eax, 8(%esp)
	movl	$80, 4(%esp)
	leal	42(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	leal	42(%esp), %eax
	movl	%eax, (%esp)
	call	_puts
	jmp	L129
L100:
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC45, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L101
	call	__Z7SysInfov
	jmp	L129
L101:
	movl	$LC93, (%esp)
	call	_puts
	jmp	L129
L93:
	cmpl	$2, 452(%esp)
	jne	L103
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L104
	leal	172(%esp), %eax
	addl	$20, %eax
	movl	%eax, (%esp)
	call	__Z14manPageDisplayPc
	jmp	L129
L104:
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC51, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L105
	leal	172(%esp), %eax
	addl	$20, %eax
	movl	%eax, (%esp)
	call	__Z10unlinkFilePc
	movl	%eax, 456(%esp)
	cmpl	$-1, 456(%esp)
	jne	L106
	movl	$LC94, (%esp)
	call	_puts
L106:
	cmpl	$-4, 456(%esp)
	jne	L107
	movl	$LC95, (%esp)
	call	_puts
L107:
	cmpl	$0, 456(%esp)
	jne	L129
	movl	$LC96, (%esp)
	call	_puts
	jmp	L129
L105:
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC35, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L108
	leal	172(%esp), %eax
	addl	$20, %eax
	movl	%eax, (%esp)
	call	__Z11DisplayStatPc
	jmp	L129
L108:
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC54, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L129
	movl	$LC97, (%esp)
	call	_puts
	movl	__imp___iob, %eax
	movl	%eax, 8(%esp)
	movl	$50, 4(%esp)
	leal	122(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	leal	122(%esp), %eax
	movl	%eax, (%esp)
	call	_strlen
	subl	$1, %eax
	movl	%eax, %ebx
	leal	172(%esp), %eax
	addl	$20, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, %edx
	movl	%ebx, 8(%esp)
	leal	122(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z9writeFileiPci
	movl	%eax, 456(%esp)
	cmpl	$-1, 456(%esp)
	jne	L109
	movl	$LC98, (%esp)
	call	_puts
	jmp	L129
L109:
	cmpl	$-4, 456(%esp)
	jne	L111
	movl	$LC99, (%esp)
	call	_puts
	jmp	L129
L111:
	cmpl	$-5, 456(%esp)
	jne	L112
	movl	$LC100, (%esp)
	call	_puts
	jmp	L129
L112:
	cmpl	$-6, 456(%esp)
	jne	L113
	movl	$LC101, (%esp)
	call	_puts
	jmp	L129
L113:
	movl	456(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC102, (%esp)
	call	_printf
	jmp	L129
L103:
	cmpl	$3, 452(%esp)
	jne	L114
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC48, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L115
	leal	172(%esp), %eax
	addl	$40, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, 4(%esp)
	leal	172(%esp), %eax
	addl	$20, %eax
	movl	%eax, (%esp)
	call	__Z10createFilePci
	movl	%eax, 456(%esp)
	cmpl	$-1, 456(%esp)
	jne	L116
	movl	$LC103, (%esp)
	call	_puts
	movl	$LC104, (%esp)
	call	_puts
L116:
	cmpl	$-2, 456(%esp)
	jne	L117
	movl	$LC105, (%esp)
	call	_puts
L117:
	cmpl	$-3, 456(%esp)
	jne	L118
	movl	$LC106, (%esp)
	call	_puts
L118:
	cmpl	$-8, 456(%esp)
	jne	L119
	movl	$LC107, (%esp)
	call	_puts
	movl	$LC108, (%esp)
	call	_puts
L119:
	movzbl	173(%esp), %eax
	cmpb	$10, %al
	je	L120
	movzbl	174(%esp), %eax
	cmpb	$10, %al
	jne	L121
L120:
	movl	$LC109, (%esp)
	call	_puts
L121:
	movl	456(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC110, (%esp)
	call	_printf
L115:
	leal	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC60, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L122
	movl	$4, (%esp)
	call	_malloc
	movl	%eax, 460(%esp)
	leal	172(%esp), %eax
	addl	$40, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, %ebx
	leal	172(%esp), %eax
	addl	$20, %eax
	movl	%eax, (%esp)
	call	_atoi
	movl	%eax, %edx
	movl	%ebx, 8(%esp)
	movl	460(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__Z8readFileiPci
	movl	%eax, 456(%esp)
	cmpl	$-1, 456(%esp)
	jne	L123
	movl	$LC111, (%esp)
	call	_puts
	jmp	L129
L123:
	cmpl	$-4, 456(%esp)
	jne	L125
	movl	$LC112, (%esp)
	call	_puts
	jmp	L129
L125:
	cmpl	$-5, 456(%esp)
	jne	L126
	movl	$LC113, (%esp)
	call	_puts
	jmp	L129
L126:
	cmpl	$-7, 456(%esp)
	jne	L127
	movl	$LC114, (%esp)
	call	_puts
	jmp	L129
L127:
	movl	$LC115, (%esp)
	call	_puts
	movl	460(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC116, (%esp)
	call	_printf
	movl	460(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	jmp	L129
L122:
	movl	$LC93, (%esp)
	call	_puts
	jmp	L129
L114:
	cmpl	$4, 452(%esp)
	je	L129
	cmpl	$5, 452(%esp)
	je	L129
	movl	$LC117, (%esp)
	call	_puts
	movl	$LC118, (%esp)
	call	_puts
	jmp	L129
L131:
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE40:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_open;	.scl	2;	.type	32;	.endef
	.def	_write;	.scl	2;	.type	32;	.endef
	.def	_close;	.scl	2;	.type	32;	.endef
	.def	_fflush;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_system;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_atoi;	.scl	2;	.type	32;	.endef
