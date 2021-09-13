	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_sendstatus
_sendstatus:
	stdec	r6
						// allocreg r2
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	-44
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//overrides.c, line 29
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r2
						//save_temp done

						//overrides.c, line 30
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	5
						// (save temp)store type 3
	st	r0
						//save_temp done

						//overrides.c, line 31
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r2
						//save_temp done

						//overrides.c, line 32
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// matchobj comparing flags 66 with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	24
	sgn
	shr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x260
	mt	r0
	st	r2

						//overrides.c, line 33
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 66 with 608
						// matchobj comparing flags 66 with 608
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	16
	sgn
	shr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x260
	mt	r0
	st	r2

						//overrides.c, line 34
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 66 with 608
						// matchobj comparing flags 66 with 608
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	8
	sgn
	shr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x260
	mt	r0
	st	r2

						//overrides.c, line 35
						// Q1 disposable
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 503
						// matchobj comparing flags 66 with 608
						// matchobj comparing flags 66 with 608
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r2
						//save_temp done

						//overrides.c, line 36
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 66
						// matchobj comparing flags 161 with 608
						// deref
						// const to r0
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 608
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_configstring_next
_configstring_next:
	stdec	r6
						// allocreg r2

						//overrides.c, line 64
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 101
						// const
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done

						//overrides.c, line 65
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l4,0
						//static deref
						//sizemod based on type 0xa
	ldt

						//overrides.c, line 65
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l8
		add	r7
						// allocreg r1

						//overrides.c, line 66
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2

			// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 66
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// matchobj comparing flags 130 with 2
						// static
	.liabs	l4,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	1
	addt	r1
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//overrides.c, line 66
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 2
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l8: # 

						//overrides.c, line 67
						// (test)
						// (obj to tmp) flags 42 type 101
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//overrides.c, line 67
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l10
		add	r7

						//overrides.c, line 68
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 66
						// static
	.liabs	l4,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type a
	st	r0
						//save_temp done
l10: # 
						// allocreg r1

						//overrides.c, line 69
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r0
						//save_temp done
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_configstring_begin
_configstring_begin:
	stdec	r6

						//overrides.c, line 74
						// (a/p assign)
						// (prepobj r0)
 						// static
	.liabs	l4,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 130
						// extern
	.liabs	_configstring
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)store type a
	st	r0
						//save_temp done
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.global	_clearram
_clearram:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r4
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 64
						// const
						// matchobj comparing flags 1 with 64
	.liconst	-48
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	-44
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//overrides.c, line 111
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	5
						// (save temp)store type 3
	st	r4
						//save_temp done

						//overrides.c, line 112
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	85
						// (save temp)store type 3
	st	r3
						//save_temp done

						//overrides.c, line 113
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
						// (save temp)store type 3
	st	r3
						//save_temp done

						//overrides.c, line 114
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r4
						//save_temp done

						//overrides.c, line 116
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	5
						// (save temp)store type 3
	st	r4
						//save_temp done

						//overrides.c, line 117
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	83
						// (save temp)store type 3
	st	r3
						//save_temp done

						//overrides.c, line 118
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r3
						//save_temp done

						//overrides.c, line 119
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r4
						//save_temp done

						//overrides.c, line 121
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	517
						// (save temp)store type 3
	st	r4
						//save_temp done

						//overrides.c, line 122
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	84
						// (save temp)store type 3
	st	r3
						//save_temp done

						//overrides.c, line 123
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 124
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
	sgn
	cmp	r2

						//overrides.c, line 124
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l21
		add	r7
l20: # 

						//overrides.c, line 124
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	0
						// (save temp)store type 3
	st	r3
						//save_temp done

						//overrides.c, line 124
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r1
						// (save result) // isreg

						//overrides.c, line 124
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
	sgn
	cmp	r1

						//overrides.c, line 124
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l20
		add	r7
l21: # 

						//overrides.c, line 125
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	4
						// (save temp)store type 3
	st	r4
						//save_temp done

						//overrides.c, line 127
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	5
						// (save temp)store type 3
	st	r4
						//save_temp done

						//overrides.c, line 128
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	83
						// (save temp)store type 3
	st	r3
						//save_temp done

						//overrides.c, line 129
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r3
						//save_temp done

						//overrides.c, line 130
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	4
						// (save temp)store type 3
	st	r4
						//save_temp done
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_setromtype
_setromtype:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r2

						//overrides.c, line 136
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 64
						// reg r3 - only match against tmp
	//mt
	stdec	r6
						// allocreg r1

						//overrides.c, line 136
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 66
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 66
						// extern (offset 0)
	.liabs	_file
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 136
						//call
						//pcreltotemp
	.lipcrel	_FileOpen
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//overrides.c, line 136
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//overrides.c, line 136
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l29
		add	r7
						// allocreg r1

						//overrides.c, line 139
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_file, 8
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	10
	shr	r2
						// (save result) // isreg
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	192
	sub	r2
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l28
		add	r7
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	64
	sub	r2
						// (save result) // isreg
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l29
		add	r7

						//overrides.c, line 141
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_romtype
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//overrides.c, line 143
						//pcreltotemp
	.lipcrel	l29
	add	r7
l28: # 

						//overrides.c, line 146
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_romtype
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
l29: # 
						// freereg r1
						// freereg r2
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.5
	.global	_autoboot
_autoboot:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3

						//overrides.c, line 159
						// (a/p assign)
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_coretype
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//overrides.c, line 160
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 1
						// extern (offset 0)
	.liabs	_romtype
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	1
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//overrides.c, line 161
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						//extern: comparing 0 with 1
						// extern (offset 0)
	.liabs	_configstring_index
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// allocreg r1

						//overrides.c, line 162
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 130
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 162
						//call
						//pcreltotemp
	.lipcrel	_sendstatus
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 163
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	16384
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 163
						//call
						//pcreltotemp
	.lipcrel	_clearram
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 164
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// extern
	.liabs	_bootrom_name
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 164
						//call
						//pcreltotemp
	.lipcrel	_setromtype
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 165
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// extern
	.liabs	_bootrom_name
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 165
						//call
						//pcreltotemp
	.lipcrel	_LoadROM
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 167
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 167
						//call
						//pcreltotemp
	.lipcrel	_sendstatus
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 168
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	400
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 168
						//call
						//pcreltotemp
	.lipcrel	_GetTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//overrides.c, line 168
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3
						// allocreg r1

						//overrides.c, line 169
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 66
						// reg r3 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 169
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 169
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//overrides.c, line 169
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l40
		add	r7
l38: # 
						// allocreg r1

						//overrides.c, line 169
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 169
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 169
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//overrides.c, line 169
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l38
		add	r7
l40: # 
						// allocreg r1

						//overrides.c, line 171
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 171
						//call
						//pcreltotemp
	.lipcrel	_sendstatus
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 172
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	100
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 172
						//call
						//pcreltotemp
	.lipcrel	_GetTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//overrides.c, line 172
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3
						// allocreg r1

						//overrides.c, line 173
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 66
						// reg r3 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 173
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 173
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//overrides.c, line 173
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l41
		add	r7
l39: # 
						// allocreg r1

						//overrides.c, line 173
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 173
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 173
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//overrides.c, line 173
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l39
		add	r7
l41: # 
						// allocreg r1

						//overrides.c, line 175
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 175
						//call
						//pcreltotemp
	.lipcrel	_sendstatus
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//overrides.c, line 176
						//setreturn
						// (obj to r0) flags 1 type a
						// const
	.liconst	0
	mr	r0
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.6
	.global	_handlemouse
_handlemouse:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//overrides.c, line 196
						// (test)
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l45,0
						//static deref
						//sizemod based on type 0x3
	ldt

						//overrides.c, line 196
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l47
		add	r7
						// freereg r1
						// allocreg r1

						//overrides.c, line 198
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 2
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 2
						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 198
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_read
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 198
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r0
						// freereg r1

						//overrides.c, line 198
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l64
		add	r7
l63: # 
						// allocreg r1

						//overrides.c, line 198
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 198
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_read
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 198
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r0
						// freereg r1

						//overrides.c, line 198
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l63
		add	r7
l64: # 
						// allocreg r1

						//overrides.c, line 200
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l45,0
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// static
	.liabs	l45,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//overrides.c, line 202
						//pcreltotemp
	.lipcrel	l60
	add	r7
						// freereg r1
l47: # 
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l45,0
						//static deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//overrides.c, line 202
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 2
						// reg r3 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	1
	and	r1
						// (save result) // isreg
						// freereg r1

						//overrides.c, line 202
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l53
		add	r7
						// allocreg r1

						//overrides.c, line 204
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	1
	sgn
	shr	r1
						// (save result) // isreg

						//overrides.c, line 204
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_mouseinit
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//overrides.c, line 204
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 106 with 130
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//overrides.c, line 205
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 106
						// reg r2 - only match against tmp
	//mt
				// flags 42
	and	r2

						//overrides.c, line 205
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l60
		add	r7
						// allocreg r1

						//overrides.c, line 208
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	1
	sgn
	cmp	r2

						//overrides.c, line 208
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l57
		add	r7
						// freereg r1

						//overrides.c, line 209
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
	stdec	r6
						// allocreg r1

						//overrides.c, line 209
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 66
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 66
						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 209
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_write
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l57: # 
						// allocreg r1

						//overrides.c, line 210
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l45,0
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// static
	.liabs	l45,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//overrides.c, line 214
						//pcreltotemp
	.lipcrel	l60
	add	r7
						// freereg r1
l53: # 
						// allocreg r1

						//overrides.c, line 215
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_mousebuffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 215
						//call
						//pcreltotemp
	.lipcrel	_ps2_ringbuffer_read
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//overrides.c, line 215
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2

						//overrides.c, line 216
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	170
	cmp	r2

						//overrides.c, line 216
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l59
		add	r7
						// allocreg r1

						//overrides.c, line 216
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	250
	cmp	r2

						//overrides.c, line 216
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l59
		add	r7

						//overrides.c, line 216
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	3
	cmp	r2

						//overrides.c, line 216
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l60
		add	r7
l59: # 

						//overrides.c, line 217
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 3
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l45,0
						//static deref
						//sizemod based on type 0x3
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// static
	.liabs	l45,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
l60: # 
						// freereg r1
						// freereg r2
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.data
	.align	4
l45:
	.int	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.7
	.global	_toggle
_toggle:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//overrides.c, line 226
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 64
						// reg r3 - only match against tmp
	//mt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 226
						//call
						//pcreltotemp
	.lipcrel	_cycle
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//overrides.c, line 227
						// (test)
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_menu_longpress
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt

						//overrides.c, line 227
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l68
		add	r7
						// allocreg r1

						//overrides.c, line 228
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16384
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 228
						//call
						//pcreltotemp
	.lipcrel	_clearram
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l68: # 
						// allocreg r1

						//overrides.c, line 229
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 229
						//call
						//pcreltotemp
	.lipcrel	_cycle
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
	.global	_toggle_wp
_toggle_wp:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 3
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r3
						// allocreg r1

						//overrides.c, line 237
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 64
						// extern
	.liabs	_statusword
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//overrides.c, line 238
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 2
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//overrides.c, line 238
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l72
		add	r7

						//overrides.c, line 239
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	128
	xor	r3
						// (save result) // isreg

						//overrides.c, line 241
						//pcreltotemp
	.lipcrel	l73
	add	r7
l72: # 

						//overrides.c, line 241
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	64
	xor	r3
						// (save result) // isreg
						// freereg r1
l73: # 
						// allocreg r1

						//overrides.c, line 243
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 243
						//call
						//pcreltotemp
	.lipcrel	_sendstatus
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 245
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	500
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 245
						//call
						//pcreltotemp
	.lipcrel	_GetTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//overrides.c, line 245
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3
						// allocreg r1

						//overrides.c, line 246
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 66 with 66
						// reg r3 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 246
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 246
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//overrides.c, line 246
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7
l77: # 
						// allocreg r1

						//overrides.c, line 246
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 246
						//call
						//pcreltotemp
	.lipcrel	_CheckTimer
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 246
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//overrides.c, line 246
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l77
		add	r7
l78: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.9
	.global	_loadimage
_loadimage:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r1
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 64
						// var, auto|reg
						// matchobj comparing flags 1 with 64
	.liconst	12
	ldidx	r6
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l82
		add	r7
						// (bitwise/arithmetic) 	//ops: 0, 0, 5
						// (obj to r4) flags 2 type 3
						// matchobj comparing flags 2 with 2

			// required value found in tmp
	mr	r4
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	48
	sub	r4
						// (save result) // isreg
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
						// freereg r1
						// allocreg r1
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	1
	sub	r1
						// (save result) // isreg
						// freereg r1
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l85
		add	r7
						// allocreg r1
						//pcreltotemp
	.lipcrel	l81
	add	r7
l82: # 

						//overrides.c, line 256
						// (test)
						// (obj to tmp) flags 42 type a
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//overrides.c, line 256
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l81
		add	r7
						// freereg r1
						// allocreg r1

						//overrides.c, line 258
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 66
						// extern
	.liabs	_statusword
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	or	r1
						// (save result) // isreg

						//overrides.c, line 258
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//overrides.c, line 258
						//call
						//pcreltotemp
	.lipcrel	_sendstatus
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 259
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 259
						//call
						//pcreltotemp
	.lipcrel	_setromtype
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//overrides.c, line 260
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 260
						//call
						//pcreltotemp
	.lipcrel	_LoadROM
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//overrides.c, line 262
						//pcreltotemp
	.lipcrel	l81
	add	r7
l85: # 

						//overrides.c, line 265
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6
						// allocreg r1

						//overrides.c, line 265
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 265
						//call
						//pcreltotemp
	.lipcrel	_diskimg_mount
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// allocreg r1

						//overrides.c, line 266
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 266
						//call
						//pcreltotemp
	.lipcrel	_toggle_wp
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1

						//overrides.c, line 267
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	stdec	r6
						// allocreg r1

						//overrides.c, line 267
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 66
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 267
						//call
						//pcreltotemp
	.lipcrel	_diskimg_mount
	add	r7
						// Flow control - popping 4 + 4 bytes
	.liconst	8
	add	r6
						// freereg r1
l81: # 
						// allocreg r1

						//overrides.c, line 270
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// extern
	.liabs	_statusword
						//extern deref
						//sizemod based on type 0x3
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 270
						//call
						//pcreltotemp
	.lipcrel	_sendstatus
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.a
	.global	_main
_main:
	stdec	r6
						// allocreg r2

						//overrides.c, line 281
						//call
						//pcreltotemp
	.lipcrel	_PS2Init
	add	r7
						// Flow control - popping 0 + 0 bytes

						//overrides.c, line 283
						// (a/p assign)
						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-44
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r0
						//save_temp done

						//overrides.c, line 285
						//call
						//pcreltotemp
	.lipcrel	_sd_init
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//overrides.c, line 285
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//overrides.c, line 285
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l93
		add	r7

						//overrides.c, line 285
						//call
						//pcreltotemp
	.lipcrel	_FindDrive
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//overrides.c, line 285
						// (test)
						// (obj to tmp) flags 4a type 103
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//overrides.c, line 285
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l93
		add	r7
						// allocreg r1

						//overrides.c, line 285
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//overrides.c, line 285
						//pcreltotemp
	.lipcrel	l94
	add	r7
l93: # 

						//overrides.c, line 285
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done
l94: # 

						//overrides.c, line 285
						// (test)
						// (obj to tmp) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//overrides.c, line 285
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l90
		add	r7
						// freereg r1
						// allocreg r1

						//overrides.c, line 286
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 66
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 66
						// static
	.liabs	l95,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 286
						//call
						//pcreltotemp
	.lipcrel	_puts
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l90: # 
						// allocreg r1

						//overrides.c, line 288
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//overrides.c, line 288
						//call
						//pcreltotemp
	.lipcrel	_buildmenu
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//overrides.c, line 290
						//call
						//pcreltotemp
	.lipcrel	_autoboot
	add	r7
						// Flow control - popping 0 + 0 bytes

						//overrides.c, line 294
						//call
						//pcreltotemp
	.lipcrel	_EnableInterrupts
	add	r7
						// Flow control - popping 0 + 0 bytes
l101: # 
						// allocreg r1

						//overrides.c, line 298
						//call
						//pcreltotemp
	.lipcrel	_handlemouse
	add	r7
						// Flow control - popping 0 + 0 bytes

						//overrides.c, line 299
						//call
						//pcreltotemp
	.lipcrel	_Menu_Run
	add	r7
						// Flow control - popping 0 + 0 bytes

						//overrides.c, line 302
						//call
						//pcreltotemp
	.lipcrel	_diskimg_poll
	add	r7
						// Flow control - popping 0 + 0 bytes

						//overrides.c, line 296
						//pcreltotemp
	.lipcrel	l101
	add	r7
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	.section	.rodata
	.align	4
l95:
	.byte	79
	.byte	75
	.byte	0
	.section	.data
	.align	4
	.global	_configstring
_configstring:
						// Declaring from tree
						// static
	.ref	l3
	.align	4
	.global	_joy_keymap
_joy_keymap:
	.byte	88
	.byte	18
	.byte	20
	.byte	17
	.byte	29
	.byte	27
	.byte	28
	.byte	35
	.byte	90
	.byte	89
	.byte	148
	.byte	145
	.byte	245
	.byte	242
	.byte	235
	.byte	244
	.align	4
	.global	_bootrom_name
_bootrom_name:
						// Declaring from tree
						// static
	.ref	l13
	.align	4
	.global	_mouseinit
_mouseinit:
	.byte	255
	.byte	243
	.byte	200
	.byte	243
	.byte	100
	.byte	243
	.byte	80
	.byte	242
	.byte	1
	.byte	244
	.byte	0
	.section	.rodata
	.align	4
l3:
	.byte	65
	.byte	116
	.byte	97
	.byte	114
	.byte	105
	.byte	32
	.byte	83
	.byte	84
	.byte	59
	.byte	59
	.byte	83
	.byte	48
	.byte	85
	.byte	44
	.byte	83
	.byte	84
	.byte	32
	.byte	44
	.byte	70
	.byte	108
	.byte	111
	.byte	112
	.byte	112
	.byte	121
	.byte	32
	.byte	65
	.byte	58
	.byte	59
	.byte	83
	.byte	49
	.byte	85
	.byte	44
	.byte	83
	.byte	84
	.byte	32
	.byte	44
	.byte	70
	.byte	108
	.byte	111
	.byte	112
	.byte	112
	.byte	121
	.byte	32
	.byte	66
	.byte	58
	.byte	59
	.byte	79
	.byte	54
	.byte	55
	.byte	44
	.byte	87
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	32
	.byte	112
	.byte	114
	.byte	111
	.byte	116
	.byte	101
	.byte	99
	.byte	116
	.byte	44
	.byte	79
	.byte	102
	.byte	102
	.byte	44
	.byte	65
	.byte	58
	.byte	44
	.byte	66
	.byte	58
	.byte	44
	.byte	66
	.byte	111
	.byte	116
	.byte	104
	.byte	59
	.byte	70
	.byte	44
	.byte	73
	.byte	77
	.byte	71
	.byte	82
	.byte	79
	.byte	77
	.byte	44
	.byte	76
	.byte	111
	.byte	97
	.byte	100
	.byte	32
	.byte	82
	.byte	79
	.byte	77
	.byte	59
	.byte	80
	.byte	49
	.byte	44
	.byte	83
	.byte	84
	.byte	32
	.byte	67
	.byte	111
	.byte	110
	.byte	102
	.byte	105
	.byte	103
	.byte	117
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	59
	.byte	80
	.byte	49
	.byte	79
	.byte	49
	.byte	51
	.byte	44
	.byte	82
	.byte	65
	.byte	77
	.byte	32
	.byte	40
	.byte	110
	.byte	101
	.byte	101
	.byte	100
	.byte	32
	.byte	72
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	82
	.byte	101
	.byte	115
	.byte	101
	.byte	116
	.byte	41
	.byte	44
	.byte	53
	.byte	49
	.byte	50
	.byte	75
	.byte	44
	.byte	49
	.byte	77
	.byte	66
	.byte	44
	.byte	50
	.byte	77
	.byte	66
	.byte	44
	.byte	52
	.byte	77
	.byte	66
	.byte	44
	.byte	56
	.byte	77
	.byte	66
	.byte	44
	.byte	49
	.byte	52
	.byte	77
	.byte	66
	.byte	59
	.byte	80
	.byte	49
	.byte	79
	.byte	56
	.byte	44
	.byte	86
	.byte	105
	.byte	100
	.byte	101
	.byte	111
	.byte	32
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	44
	.byte	77
	.byte	111
	.byte	110
	.byte	111
	.byte	44
	.byte	67
	.byte	111
	.byte	108
	.byte	111
	.byte	117
	.byte	114
	.byte	59
	.byte	80
	.byte	49
	.byte	79
	.byte	78
	.byte	79
	.byte	44
	.byte	67
	.byte	104
	.byte	105
	.byte	112
	.byte	115
	.byte	101
	.byte	116
	.byte	44
	.byte	83
	.byte	84
	.byte	44
	.byte	83
	.byte	84
	.byte	69
	.byte	44
	.byte	77
	.byte	101
	.byte	103
	.byte	97
	.byte	83
	.byte	84
	.byte	69
	.byte	59
	.byte	80
	.byte	49
	.byte	79
	.byte	74
	.byte	44
	.byte	83
	.byte	84
	.byte	32
	.byte	66
	.byte	108
	.byte	105
	.byte	116
	.byte	116
	.byte	101
	.byte	114
	.byte	44
	.byte	79
	.byte	102
	.byte	102
	.byte	44
	.byte	79
	.byte	110
	.byte	59
	.byte	80
	.byte	49
	.byte	79
	.byte	77
	.byte	44
	.byte	83
	.byte	116
	.byte	101
	.byte	114
	.byte	101
	.byte	111
	.byte	32
	.byte	115
	.byte	111
	.byte	117
	.byte	110
	.byte	100
	.byte	44
	.byte	79
	.byte	102
	.byte	102
	.byte	44
	.byte	79
	.byte	110
	.byte	59
	.byte	80
	.byte	49
	.byte	79
	.byte	75
	.byte	76
	.byte	44
	.byte	83
	.byte	99
	.byte	97
	.byte	110
	.byte	108
	.byte	105
	.byte	110
	.byte	101
	.byte	115
	.byte	44
	.byte	79
	.byte	102
	.byte	102
	.byte	44
	.byte	50
	.byte	53
	.byte	37
	.byte	44
	.byte	53
	.byte	48
	.byte	37
	.byte	44
	.byte	55
	.byte	53
	.byte	37
	.byte	59
	.byte	80
	.byte	49
	.byte	79
	.byte	84
	.byte	44
	.byte	67
	.byte	111
	.byte	109
	.byte	112
	.byte	111
	.byte	115
	.byte	105
	.byte	116
	.byte	101
	.byte	32
	.byte	98
	.byte	108
	.byte	101
	.byte	110
	.byte	100
	.byte	44
	.byte	79
	.byte	102
	.byte	102
	.byte	44
	.byte	79
	.byte	110
	.byte	59
	.byte	84
	.byte	48
	.byte	44
	.byte	82
	.byte	101
	.byte	115
	.byte	101
	.byte	116
	.byte	32
	.byte	40
	.byte	72
	.byte	111
	.byte	108
	.byte	100
	.byte	32
	.byte	102
	.byte	111
	.byte	114
	.byte	32
	.byte	104
	.byte	97
	.byte	114
	.byte	100
	.byte	32
	.byte	114
	.byte	101
	.byte	115
	.byte	101
	.byte	116
	.byte	41
	.byte	59
	.byte	86
	.byte	44
	.byte	118
	.byte	51
	.byte	46
	.byte	52
	.byte	48
	.byte	46
	.byte	0
	.align	4
l13:
	.byte	84
	.byte	79
	.byte	83
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	73
	.byte	77
	.byte	71
	.byte	0
	.section	.bss
	.align	4
	.lcomm	l4,4
