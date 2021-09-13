	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_SPI_PUMP
_SPI_PUMP:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	-44
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 61
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 62
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 3
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 63
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	255
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 64
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 3
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 65
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	8
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 65
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/spi_sd.c, line 66
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	255
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 67
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 3
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 68
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	8
	shl	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 68
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	or	r2
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 69
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	255
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 70
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 3
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 71
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	8
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 71
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/spi_sd.c, line 72
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 74 with 74
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
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
	.section	.text.1
	.global	_SPI_PUMP_LE
_SPI_PUMP_LE:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	-44
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 79
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 80
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 3
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 81
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	255
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 82
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						// (obj to r2) flags 260 type 503
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r3
	mr	r2
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	8
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 83
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/spi_sd.c, line 84
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	255
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 85
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						// (obj to r2) flags 260 type 503
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r3
	mr	r2
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	16
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 86
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/spi_sd.c, line 87
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	255
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 88
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						// (obj to r2) flags 260 type 503
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r3
	mr	r2
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	24
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 89
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/spi_sd.c, line 90
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 74 with 74
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
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
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_cmd_write
_cmd_write:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 40 type 104
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
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
	.liconst	-44
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 101
						// (bitwise/arithmetic) 	//ops: 6, 0, 1
						// (obj to r0) flags 42 type 104
						// matchobj comparing flags 66 with 1
						// reg r5 - only match against tmp
	mt	r5
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	255
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x260
	mt	r0
	st	r4
	// Volatile, or not int - not caching

						//../DeMiSTify/firmware/spi_sd.c, line 103
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 608
						// extern
	.liabs	_sd_is_sdhc
						//extern deref
						//sizemod based on type 0x3
	ldt

						//../DeMiSTify/firmware/spi_sd.c, line 103
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l8
		add	r7

						//../DeMiSTify/firmware/spi_sd.c, line 104
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 2
						// var, auto|reg
						// matchobj comparing flags 1 with 2
	.liconst	16
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	9
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
l8: # 
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 108
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// var, auto|reg
	.liconst	16
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 108
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 104
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	255
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x260
	mt	r0
	st	r4
	// Volatile, or not int - not caching
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 109
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 608
						// var, auto|reg
						// matchobj comparing flags 1 with 608
	.liconst	16
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 109
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 104
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	255
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x260
	mt	r0
	st	r4
	// Volatile, or not int - not caching
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 110
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 608
						// var, auto|reg
						// matchobj comparing flags 1 with 608
	.liconst	16
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 110
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 104
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	255
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x260
	mt	r0
	st	r4
	// Volatile, or not int - not caching
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 111
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						// matchobj comparing flags 2 with 608
						// var, auto|reg
						// matchobj comparing flags 1 with 608
	.liconst	16
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	255
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x260
	mt	r0
	st	r4
	// Volatile, or not int - not caching
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 115
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 104
						// matchobj comparing flags 66 with 608
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	16
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 115
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 104
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	255
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x260
	mt	r0
	st	r4
	// Volatile, or not int - not caching
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 119
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 260 type 3
						// matchobj comparing flags 608 with 608
						// deref 
	ld	r4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 120
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	39999
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 120
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
	cmp	r3

						//../DeMiSTify/firmware/spi_sd.c, line 120
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l15
		add	r7
						// allocreg r1
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)isreg
	mr	r1
						//save_temp done
l9: # 

						//../DeMiSTify/firmware/spi_sd.c, line 122
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 240 type 503
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 123
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 260 type 3
						// matchobj comparing flags 608 with 576
						// deref 
	ld	r4
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 120
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	1
	sub	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 120
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l15
		add	r7

						//../DeMiSTify/firmware/spi_sd.c, line 120
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 240 type 3
						// matchobj comparing flags 576 with 1
						// reg r1 - only match against tmp
	mt	r1
	cmp	r3

						//../DeMiSTify/firmware/spi_sd.c, line 120
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l9
		add	r7
l15: # 
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 127
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.global	_spi_spin
_spi_spin:
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 135
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done
l22: # 

						//../DeMiSTify/firmware/spi_sd.c, line 136
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

						//../DeMiSTify/firmware/spi_sd.c, line 136
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 136
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	200
	sgn
	cmp	r1

						//../DeMiSTify/firmware/spi_sd.c, line 136
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l22
		add	r7
						// freereg r1
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_wait_initV2
_wait_initV2:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	16711799
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
						// allocreg r3
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1073741824
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 145
						//call
						//pcreltotemp
	.lipcrel	_spi_spin
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/spi_sd.c, line 146
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	19999
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
l34: # 

						//../DeMiSTify/firmware/spi_sd.c, line 148
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 148
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 576 with 1
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 148
						//call
						//pcreltotemp
	.lipcrel	_cmd_write
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 148
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	cmp	r0
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 148
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l30
		add	r7

						//../DeMiSTify/firmware/spi_sd.c, line 150
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
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

						//../DeMiSTify/firmware/spi_sd.c, line 151
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 576 with 1
						// matchobj comparing flags 576 with 1
						// reg r3 - only match against tmp
	mt	r3
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 151
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 576
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 576
						// matchobj comparing flags 1 with 1
	.liconst	8847465
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 151
						//call
						//pcreltotemp
	.lipcrel	_cmd_write
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 1
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 151
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 151
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l32
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 153
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 74
						// deref
						// const to r0
						// matchobj comparing flags 1 with 74
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

						//../DeMiSTify/firmware/spi_sd.c, line 154
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//../DeMiSTify/firmware/spi_sd.c, line 155
						//pcreltotemp
	.lipcrel	l24
	add	r7
l32: # 

						//../DeMiSTify/firmware/spi_sd.c, line 156
						//call
						//pcreltotemp
	.lipcrel	_spi_spin
	add	r7
						// Flow control - popping 0 + 0 bytes
l30: # 

						//../DeMiSTify/firmware/spi_sd.c, line 146
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	sub	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 146
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 163
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0
l24: # 
						// freereg r1
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

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
	.section	.text.5
	.global	_wait_init
_wait_init:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r4
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	16711745
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/spi_sd.c, line 171
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
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
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 172
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 1
						// static
	.liabs	l38,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 172
						//call
						//pcreltotemp
	.lipcrel	_puts
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 173
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	19
						// (save temp)isreg
	mr	r3
						//save_temp done
l45: # 

						//../DeMiSTify/firmware/spi_sd.c, line 175
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 175
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 576 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 175
						//call
						//pcreltotemp
	.lipcrel	_cmd_write
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 175
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 175
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l43
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 178
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 74
						// deref
						// const to r0
						// matchobj comparing flags 1 with 74
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

						//../DeMiSTify/firmware/spi_sd.c, line 179
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//../DeMiSTify/firmware/spi_sd.c, line 180
						//pcreltotemp
	.lipcrel	l36
	add	r7
l43: # 

						//../DeMiSTify/firmware/spi_sd.c, line 185
						//call
						//pcreltotemp
	.lipcrel	_spi_spin
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/spi_sd.c, line 173
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	sub	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 173
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l45
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 187
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0
l36: # 
						// freereg r1
						// freereg r3
						// freereg r4
	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata
	.align	4
l38:
	.byte	67
	.byte	77
	.byte	68
	.byte	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.6
	.global	_is_sdhc
_is_sdhc:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	255
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
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

						//../DeMiSTify/firmware/spi_sd.c, line 195
						//call
						//pcreltotemp
	.lipcrel	_spi_spin
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//../DeMiSTify/firmware/spi_sd.c, line 197
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	426
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 197
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	8847432
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 197
						//call
						//pcreltotemp
	.lipcrel	_cmd_write
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 199
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	cmp	r0
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 199
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l50
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 202
						//call
						//pcreltotemp
	.lipcrel	_wait_init
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/spi_sd.c, line 204
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/spi_sd.c, line 205
						//pcreltotemp
	.lipcrel	l47
	add	r7
						// freereg r1
l50: # 

						//../DeMiSTify/firmware/spi_sd.c, line 207
						//call
						//pcreltotemp
	.lipcrel	_SPI_PUMP
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 207
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/spi_sd.c, line 208
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	65535
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 208
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	426
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 208
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l52
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 211
						//call
						//pcreltotemp
	.lipcrel	_wait_init
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/spi_sd.c, line 213
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/spi_sd.c, line 214
						//pcreltotemp
	.lipcrel	l47
	add	r7
l52: # 

						//../DeMiSTify/firmware/spi_sd.c, line 216
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 223
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 576
						// const
						// matchobj comparing flags 1 with 576
	.liconst	49
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
l67: # 

						//../DeMiSTify/firmware/spi_sd.c, line 225
						//call
						//pcreltotemp
	.lipcrel	_wait_initV2
	add	r7
						// Flow control - popping 0 + 0 bytes
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 225
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 225
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7

						//../DeMiSTify/firmware/spi_sd.c, line 227
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 227
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16711802
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 227
						//call
						//pcreltotemp
	.lipcrel	_cmd_write
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 227
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 227
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l62
		add	r7

						//../DeMiSTify/firmware/spi_sd.c, line 230
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// matchobj comparing flags 576 with 74
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 3
	st	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 231
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 3
						// matchobj comparing flags 608 with 576
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 233
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// matchobj comparing flags 576 with 608
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 234
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// matchobj comparing flags 576 with 576
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 235
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// matchobj comparing flags 576 with 576
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 236
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// matchobj comparing flags 576 with 576
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 237
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 576
						// const
						// matchobj comparing flags 1 with 576
	.liconst	64
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 237
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l61
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 240
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//../DeMiSTify/firmware/spi_sd.c, line 241
						//pcreltotemp
	.lipcrel	l47
	add	r7
l61: # 

						//../DeMiSTify/firmware/spi_sd.c, line 245
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/spi_sd.c, line 246
						//pcreltotemp
	.lipcrel	l47
	add	r7
l62: # 

						//../DeMiSTify/firmware/spi_sd.c, line 251
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	2
	cmp	r4

						//../DeMiSTify/firmware/spi_sd.c, line 251
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l65
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 253
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// static
	.liabs	l66,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 253
						//call
						//pcreltotemp
	.lipcrel	_puts
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 254
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/spi_sd.c, line 255
						//pcreltotemp
	.lipcrel	l47
	add	r7
l65: # 
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 223
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	sub	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 223
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l67
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 257
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0
l47: # 
						// freereg r1
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata
	.align	4
l66:
	.byte	83
	.byte	68
	.byte	72
	.byte	67
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	33
	.byte	10
	.byte	0
	//registers used:
		//r1: yes
		//r2: no
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.7
	.global	_sd_init
_sd_init:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// const
	.liconst	-48
						// (save temp)isreg
	mr	r5
						//save_temp done
						// allocreg r4
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	9764928
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r3

						//../DeMiSTify/firmware/spi_sd.c, line 265
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_sd_is_sdhc
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 130
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 266
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 130
						// static
	.liabs	l71,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 266
						//call
						//pcreltotemp
	.lipcrel	_puts
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 268
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	7
						// (save temp)isreg
	mr	r3
						//save_temp done
l83: # 

						//../DeMiSTify/firmware/spi_sd.c, line 270
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	2
						// (save temp)store type 3
	st	r5
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 271
						//call
						//pcreltotemp
	.lipcrel	_spi_spin
	add	r7
						// Deferred popping of 0 bytes (0 in total)

						//../DeMiSTify/firmware/spi_sd.c, line 273
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	3
						// (save temp)store type 3
	st	r5
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 274
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 274
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 240 type 104
						// matchobj comparing flags 576 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 274
						//call
						//pcreltotemp
	.lipcrel	_cmd_write
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 274
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	cmp	r0
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 274
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l76
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 275
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)isreg
	mr	r3
						//save_temp done
l76: # 

						//../DeMiSTify/firmware/spi_sd.c, line 277
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	2
	cmp	r3

						//../DeMiSTify/firmware/spi_sd.c, line 277
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l78
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 279
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// static
	.liabs	l79,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 279
						//call
						//pcreltotemp
	.lipcrel	_puts
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 281
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0

						//../DeMiSTify/firmware/spi_sd.c, line 282
						//pcreltotemp
	.lipcrel	l69
	add	r7
l78: # 
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 268
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	sub	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 268
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l83
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 285
						//call
						//pcreltotemp
	.lipcrel	_is_sdhc
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/spi_sd.c, line 285
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sd_is_sdhc, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/spi_sd.c, line 286
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 2

			// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//../DeMiSTify/firmware/spi_sd.c, line 286
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l82
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 291
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 291
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
	.liconst	16711760
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 291
						//call
						//pcreltotemp
	.lipcrel	_cmd_write
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 2
	.liconst	4
	add	r6
						// freereg r1
l82: # 
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 293
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

						//../DeMiSTify/firmware/spi_sd.c, line 295
						//call
						//pcreltotemp
	.lipcrel	_sd_get_size
	add	r7
						// Flow control - popping 0 + 0 bytes

						//../DeMiSTify/firmware/spi_sd.c, line 295
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sd_size, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../DeMiSTify/firmware/spi_sd.c, line 299
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 2
	.liconst	2
						// (save temp)store type 3
	st	r5
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 300
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 2
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 2
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

						//../DeMiSTify/firmware/spi_sd.c, line 303
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0
l69: # 
						// freereg r1
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata
	.align	4
l79:
	.byte	73
	.byte	69
	.byte	82
	.byte	82
	.byte	0
	.align	4
l71:
	.byte	83
	.byte	80
	.byte	73
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
	.global	_sd_write_sector
_sd_write_sector:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 40 type 104
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r4
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 64
						// const
						// matchobj comparing flags 1 with 64
	.liconst	255
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
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 311
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// matchobj comparing flags 576 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 312
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 576
						// deref
						// const to r0
						// matchobj comparing flags 1 with 576
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	259
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 313
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// matchobj comparing flags 576 with 1
						// matchobj comparing flags 576 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 315
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 66 with 576
						// matchobj comparing flags 66 with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 315
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 1
	.liconst	16711768
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 315
						//call
						//pcreltotemp
	.lipcrel	_cmd_write
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 1
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 316
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 316
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l88
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 318
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 74
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 74
						// static
	.liabs	l89,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 318
						//call
						//pcreltotemp
	.lipcrel	_puts
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 320
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	1
	mr	r0

						//../DeMiSTify/firmware/spi_sd.c, line 321
						//pcreltotemp
	.lipcrel	l85
	add	r7
l88: # 

						//../DeMiSTify/firmware/spi_sd.c, line 323
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 324
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 576
						// const
						// matchobj comparing flags 1 with 576
	.liconst	254
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 327
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 327
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 327
						//call
						//pcreltotemp
	.lipcrel	_spi_write
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 339
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// matchobj comparing flags 576 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 340
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// matchobj comparing flags 576 with 576
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 341
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// matchobj comparing flags 576 with 576
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 343
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 576
						// const
						// matchobj comparing flags 1 with 576
	.liconst	100000
						// (save temp)isreg
	mr	r2
						//save_temp done
l94: # 
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 345
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 347
						// (test)
						// (obj to tmp) flags 260 type 3
						// matchobj comparing flags 608 with 576
						// deref 
	ld	r3

						//../DeMiSTify/firmware/spi_sd.c, line 347
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l95
		add	r7

						//../DeMiSTify/firmware/spi_sd.c, line 347
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	1
	sub	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 347
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l94
		add	r7
l95: # 

						//../DeMiSTify/firmware/spi_sd.c, line 348
						// Q1 disposable
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 240 type 503
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 349
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 576
						// deref
						// const to r0
						// matchobj comparing flags 1 with 576
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	2
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 350
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0
l85: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.rodata
	.align	4
l89:
	.byte	87
	.byte	114
	.byte	105
	.byte	116
	.byte	101
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	10
	.byte	0
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.9
l96:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 64 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 64
						// const
						// matchobj comparing flags 1 with 64
	.liconst	-44
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 358
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 360
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1499999
						// (save temp)isreg
	mr	r2
						//save_temp done
l112: # 

						//../DeMiSTify/firmware/spi_sd.c, line 363
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	255
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 365
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 260 type 3
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r4
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
	.liconst	254
	cmp	r0

						//../DeMiSTify/firmware/spi_sd.c, line 365
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l103
		add	r7

						//../DeMiSTify/firmware/spi_sd.c, line 367
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 240 type a
						// matchobj comparing flags 576 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 368
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 576
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//../DeMiSTify/firmware/spi_sd.c, line 368
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l105
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 370
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 66
						// var, auto|reg
						// matchobj comparing flags 1 with 66
	.liconst	20
	ldidx	r6
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 370
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 2
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 370
						//call
						//pcreltotemp
	.lipcrel	_spi_read
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 381
						//pcreltotemp
	.lipcrel	l108
	add	r7
l105: # 
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 382
						// (a/p assign)
						// (prepobj r0)
 						// deref
						// const to r0
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	273
						// (save temp)store type 3
	st	r0
						//save_temp done
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 102 type 3
						// matchobj comparing flags 258 with 1
						// matchobj comparing flags 258 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r2
						//save_temp done
l107: # 

						//../DeMiSTify/firmware/spi_sd.c, line 386
						// (a/p assign)
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 403
						// const
	.liconst	255
						// (save temp)store type 3
	st	r5
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 387
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	sub	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 387
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7
						// (a/p assign)
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	addt	r6
	stmpdec	r2
l108: # 

						//../DeMiSTify/firmware/spi_sd.c, line 389
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	255
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 390
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 391
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//../DeMiSTify/firmware/spi_sd.c, line 391
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l111
		add	r7

						//../DeMiSTify/firmware/spi_sd.c, line 392
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 66
						// deref
						// const to r0
						// matchobj comparing flags 1 with 66
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	16
						// (save temp)store type 3
	st	r0
						//save_temp done
l111: # 

						//../DeMiSTify/firmware/spi_sd.c, line 394
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 395
						// (a/p assign)
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done
l103: # 

						//../DeMiSTify/firmware/spi_sd.c, line 360
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	sub	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 360
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l112
		add	r7

						//../DeMiSTify/firmware/spi_sd.c, line 398
						//setreturn
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
						// matchobj comparing flags 1 with 98
						// matchobj comparing flags 1 with 98
	.liconst	-4
	sub	r6
	ldinc	r6
	mr	r5

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
	.section	.text.a
	.global	_sd_read_sector
_sd_read_sector:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 104
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r3

						//../DeMiSTify/firmware/spi_sd.c, line 403
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 64
						// const
						// matchobj comparing flags 1 with 64
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 407
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
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

						//../DeMiSTify/firmware/spi_sd.c, line 408
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	259
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 409
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 1
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
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

						//../DeMiSTify/firmware/spi_sd.c, line 411
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 104
						// matchobj comparing flags 66 with 1
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 411
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 1
	.liconst	16711761
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 411
						//call
						//pcreltotemp
	.lipcrel	_cmd_write
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 1
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 412
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 412
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l116
		add	r7

						//../DeMiSTify/firmware/spi_sd.c, line 418
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	512
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 418
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	12
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 418
						//call
						//pcreltotemp
	.lipcrel	l96
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 418
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3

						//../DeMiSTify/firmware/spi_sd.c, line 420
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 66
						// deref
						// const to r0
						// matchobj comparing flags 1 with 66
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	2
						// (save temp)store type 3
	st	r0
						//save_temp done
l116: # 
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 421
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r0
						// freereg r1
						// freereg r2
						// freereg r3
	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.b
	.global	_sd_get_size
_sd_get_size:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r5
						// allocreg r4

						//../DeMiSTify/firmware/spi_sd.c, line 429
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 104
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 429
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16711753
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 429
						//call
						//pcreltotemp
	.lipcrel	_cmd_write
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 431
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	18
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 431
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_sizebuf
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 431
						//call
						//pcreltotemp
	.lipcrel	l96
	add	r7
						// Flow control - popping 4 + 4 bytes
	.liconst	8
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 432
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
l132: # 
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 433
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 433
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	18
	sgn
	cmp	r4

						//../DeMiSTify/firmware/spi_sd.c, line 433
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l132
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 438
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sizebuf
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 438
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	192
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 438
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	64
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 438
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 440
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sizebuf, 7
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 440
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 440
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sizebuf, 8
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 440
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 440
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 440
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_sizebuf, 9
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 440
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r2 - only match against tmp
	//mt
	or	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/spi_sd.c, line 440
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 5
						// (obj to r4) flags 4a type 3
						// matchobj comparing flags 74 with 74
						// reg r1 - only match against tmp
	mt	r1
	mr	r4
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	4194303
	and	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 440
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	add	r4
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 441
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	shl	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 444
						//pcreltotemp
	.lipcrel	l135
	add	r7
l127: # 
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 445
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sizebuf, 9
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 445
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	shl	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 445
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	6
	and	r1
						// (save result) // isreg
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 445
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sizebuf, 10
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 445
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	7
	sgn
	shr	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 445
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	or	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 446
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_sizebuf, 5
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 446
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 6
						// (obj to r5) flags 4a type 3
						// matchobj comparing flags 74 with 2
						// reg r2 - only match against tmp
	//mt
	mr	r5
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	15
	and	r5
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//../DeMiSTify/firmware/spi_sd.c, line 447
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sizebuf, 6
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 447
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	and	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 447
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	10
	shl	r2
						// (save result) // isreg
						// allocreg r3

						//../DeMiSTify/firmware/spi_sd.c, line 447
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sizebuf, 7
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 447
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	shl	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 447
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r3 - only match against tmp
	mt	r3
	or	r2
						// (save result) // isreg
						// freereg r3
						// allocreg r3

						//../DeMiSTify/firmware/spi_sd.c, line 447
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 74
						// extern
	.liabs	_sizebuf, 8
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../DeMiSTify/firmware/spi_sd.c, line 447
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	192
	and	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 447
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	6
	sgn
	shr	r3
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 447
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r3 - only match against tmp
	mt	r3
	or	r2
						// (save result) // isreg
						// freereg r3

						//../DeMiSTify/firmware/spi_sd.c, line 449
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	2
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 449
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r1

						//../DeMiSTify/firmware/spi_sd.c, line 451
						// (bitwise/arithmetic) 	//ops: 0, 6, 6
						// WARNING - evading q2 and target collision - check code for correctness.
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
	mr	r0
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// matchobj comparing flags 66 with 1
						// reg r5 - only match against tmp
	mt	r5
	shl	r0
						// (save result) // isreg
	mt	r0
	mr	r5

						//../DeMiSTify/firmware/spi_sd.c, line 452
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 5
						// (obj to r4) flags 4a type 3
						// matchobj comparing flags 74 with 66
						// reg r2 - only match against tmp
	mt	r2
	mr	r4
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
	.liconst	1
	add	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 452
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 5, 2, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	mul	r4
						// (save result) // isreg
						// freereg r2
						// freereg r1

						//../DeMiSTify/firmware/spi_sd.c, line 454
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	512
	sgn
	cmp	r5

						//../DeMiSTify/firmware/spi_sd.c, line 454
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l135
		add	r7
l133: # 
						// allocreg r1

						//../DeMiSTify/firmware/spi_sd.c, line 456
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	shl	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 457
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

			// required value found in tmp
	sgn
	shr	r5
						// (save result) // isreg

						//../DeMiSTify/firmware/spi_sd.c, line 454
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	512
	sgn
	cmp	r5

						//../DeMiSTify/firmware/spi_sd.c, line 454
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l133
		add	r7
l135: # 

						//../DeMiSTify/firmware/spi_sd.c, line 461
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// freereg r1
						// freereg r4
						// freereg r5
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	.section	.bss
	.align	4
	.global	_sd_is_sdhc
	.comm	_sd_is_sdhc,4
	.align	4
	.global	_sd_size
	.comm	_sd_size,4
	.align	4
	.global	_SPI_R1
	.comm	_SPI_R1,6
	.align	4
	.global	_sizebuf
	.comm	_sizebuf,18
