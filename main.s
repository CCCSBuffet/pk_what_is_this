	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	__ZN3Foo15StaticGetStringEPKS_  ; -- Begin function _ZN3Foo15StaticGetStringEPKS_
	.p2align	2
__ZN3Foo15StaticGetStringEPKS_:         ; @_ZN3Foo15StaticGetStringEPKS_
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_7
	b	LBB0_1
LBB0_1:
	mov	x0, #8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp0:
	mov	x0, #16
	bl	__Znwm
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp1:
	b	LBB0_2
LBB0_2:
Ltmp3:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l___FUNCTION__._ZN3Foo15StaticGetStringEPKS_@PAGE
	add	x1, x1, l___FUNCTION__._ZN3Foo15StaticGetStringEPKS_@PAGEOFF
	bl	__ZNSt16invalid_argumentC1B6v15006EPKc
Ltmp4:
	b	LBB0_3
LBB0_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x0]
	adrp	x1, __ZTIPSt16invalid_argument@PAGE
	add	x1, x1, __ZTIPSt16invalid_argument@PAGEOFF
	mov	x2, #0
	bl	___cxa_throw
LBB0_4:
Ltmp2:
	mov	x8, x1
	stur	x0, [x29, #-16]
	stur	w8, [x29, #-20]
	b	LBB0_6
LBB0_5:
Ltmp5:
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	mov	x8, x1
	stur	x9, [x29, #-16]
	stur	w8, [x29, #-20]
	bl	__ZdlPv
	b	LBB0_6
LBB0_6:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	___cxa_free_exception
	b	LBB0_8
LBB0_7:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB0_8:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Lfunc_end0-Ltmp4               ;   Call between Ltmp4 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt16invalid_argumentC1B6v15006EPKc ; -- Begin function _ZNSt16invalid_argumentC1B6v15006EPKc
	.globl	__ZNSt16invalid_argumentC1B6v15006EPKc
	.weak_def_can_be_hidden	__ZNSt16invalid_argumentC1B6v15006EPKc
	.p2align	2
__ZNSt16invalid_argumentC1B6v15006EPKc: ; @_ZNSt16invalid_argumentC1B6v15006EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt16invalid_argumentC2B6v15006EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3FooC2EPKc                  ; -- Begin function _ZN3FooC2EPKc
	.p2align	2
__ZN3FooC2EPKc:                         ; @_ZN3FooC2EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	x8, [sp, #40]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_2
	b	LBB2_1
LBB2_1:
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB2_3
LBB2_2:
	adrp	x8, __ZN3Foo16undefined_stringE@PAGE
	ldr	x8, [x8, __ZN3Foo16undefined_stringE@PAGEOFF]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB2_3
LBB2_3:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x0, [sp, #40]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3FooC1EPKc                  ; -- Begin function _ZN3FooC1EPKc
	.p2align	2
__ZN3FooC1EPKc:                         ; @_ZN3FooC1EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZN3FooC2EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3Foo9GetStringEv            ; -- Begin function _ZN3Foo9GetStringEv
	.p2align	2
__ZN3Foo9GetStringEv:                   ; @_ZN3Foo9GetStringEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #0
	stur	w8, [x29, #-28]                 ; 4-byte Folded Spill
	stur	wzr, [x29, #-4]
	sub	x0, x29, #16
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x1, #0
	bl	__ZN3FooC1EPKc
	sub	x0, x29, #24
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZN3FooC1EPKc
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZN3Foo9GetStringEv
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZN3Foo9GetStringEv
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldur	w0, [x29, #-28]                 ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt16invalid_argumentC2B6v15006EPKc ; -- Begin function _ZNSt16invalid_argumentC2B6v15006EPKc
	.globl	__ZNSt16invalid_argumentC2B6v15006EPKc
	.weak_def_can_be_hidden	__ZNSt16invalid_argumentC2B6v15006EPKc
	.p2align	2
__ZNSt16invalid_argumentC2B6v15006EPKc: ; @_ZNSt16invalid_argumentC2B6v15006EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"undefined"

	.section	__DATA,__data
	.globl	__ZN3Foo16undefined_stringE     ; @_ZN3Foo16undefined_stringE
	.p2align	3
__ZN3Foo16undefined_stringE:
	.quad	l_.str

	.section	__TEXT,__cstring,cstring_literals
l___FUNCTION__._ZN3Foo15StaticGetStringEPKS_: ; @__FUNCTION__._ZN3Foo15StaticGetStringEPKS_
	.asciz	"StaticGetString"

	.private_extern	__ZTSPSt16invalid_argument ; @_ZTSPSt16invalid_argument
	.section	__TEXT,__const
	.globl	__ZTSPSt16invalid_argument
	.weak_definition	__ZTSPSt16invalid_argument
__ZTSPSt16invalid_argument:
	.asciz	"PSt16invalid_argument"

	.private_extern	__ZTIPSt16invalid_argument ; @_ZTIPSt16invalid_argument
	.section	__DATA,__const
	.globl	__ZTIPSt16invalid_argument
	.weak_definition	__ZTIPSt16invalid_argument
	.p2align	3
__ZTIPSt16invalid_argument:
	.quad	__ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	__ZTSPSt16invalid_argument-9223372036854775808
	.long	0                               ; 0x0
	.space	4
	.quad	__ZTISt16invalid_argument

	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"Spaghetti"

l_.str.2:                               ; @.str.2
	.asciz	"a(%s)\n"

l_.str.3:                               ; @.str.3
	.asciz	"b(%s)\n"

.subsections_via_symbols
