	.cpu arm10tdmi
	.fpu softvfp
	.file	"cache-armel.c"
	.text
	.align	2
	.global	__TR_clear_cache
	.type	__TR_clear_cache, %function
__TR_clear_cache:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	@ lr needed for prologue
	str	r0, [sp, #4]
	str	r1, [sp, #0]
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #0]
	mov	r2, #0
#APP
	swi 0x9f0002
	add	sp, sp, #8
	bx	lr
	.size	__TR_clear_cache, .-__TR_clear_cache
	.ident	"GCC: (GNU) 3.4.4 (release) (CodeSourcery ARM 2005q3-2)"
