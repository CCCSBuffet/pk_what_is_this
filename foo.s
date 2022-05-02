	.text
	.align	2
	.global	FooConstructor
	.global	FooGetString


/*	Mimics the operation of a  Foo constructor. Note that a constructor
	can throw an exception if it fails to allocate space. This assembly
	language  version cannot  so  checking  the return value is how one
	would know if the allocation failed.
*/
FooConstructor:
	stp 	x20, x30, [sp, -16]!
	mov		x20, x0					// Preserve parameter.
	mov		x0, 8					// Size of a Foo
	bl		malloc					// Attempt to allocate the Foo
	cbz		x0, 99f					// Take branch if bad allocation.
	ldr		x1, =undef				// Proactively load address of default.
	cmp		x20, xzr				// Test incoming parameter.
	csel	x20, x1, x20, eq		// Select incoming parameter or default.
	str 	x20, [x0]				
99:	ldp		x20, x30, [sp], 16
	ret

/*	The  "this  pointer"  is  in x0.  Use  it  to  dereference  to  get
	the string associated with this instance of the "class".  Note that
	we REALLY SHOULD test x0 against NULL before doing this dereference
	IRL.
*/
FooGetString:
	ldr		x0, [x0]
	ret

	.data

undef:	.asciz	"undefined"

	.end
