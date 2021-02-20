// ARM Hello world for raspberry pi
// Liniux ARM 32 system calls are available from :
// https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md#arm-32_bit_EABI

.global _start

.section .text

_start:
	// write syscall: SWI r7 = 4, r0 = file descripor (1 = STDOUT), r1= buffer, r2 = length
	mov r7, #0x04
	mov r0, #0x1
	ldr r1, =message
	mov r2, #0x13
	swi 0

	// exit syscall: SWI r7 = 1, r0 = return code
	mov r7, #0x01
	mov r0, #0x0
	swi 0

.section .data
	message:
	.ascii "Hello Raspberry Pi\n"
