	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_user_io_sd_get_status
_user_io_sd_get_status:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
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

						//../DeMiSTify/firmware/diskimg.c, line 23
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 162 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 24
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	22
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 24
						//call
						//pcreltotemp
	.lipcrel	_spi_uio_cmd_cont
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 25
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	255
						// (save temp)store type 3
	st	r4
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 25
						//FIXME convert
						// (convert - reducing type 503 to 101
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 260 type 503
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// matchobj comparing flags 1 with 608
	.liconst	255
	and	r1

						//../DeMiSTify/firmware/diskimg.c, line 26
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 4a type 101
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 26
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 74
						// reg r5 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	240
	and	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 26
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	96
	cmp	r1
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 26
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l4
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 26
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 26
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 260 type 503
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r4
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 608
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
						// matchobj comparing flags 1 with 608
	.liconst	3
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x503, flags 0x22
						// (prepobj tmp)
 						// matchobj comparing flags 162 with 1
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 1
	.liconst	16
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// freereg r1
l4: # 

						//../DeMiSTify/firmware/diskimg.c, line 27
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// const
	.liconst	255
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 27
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 260 type 103
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 28
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 66 with 608
						// reg r2 - only match against tmp
	//mt
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	8
	shl	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 28
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 28
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 5, 2, 3
						// (obj to r2) flags 260 type 503
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r4
	mr	r2
						// (obj to tmp) flags 4a type 503
						// matchobj comparing flags 74 with 608
						// reg r1 - only match against tmp
	mt	r1
	or	r2
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 29
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 66 with 74
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	8
	shl	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 29
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 29
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 5, 2, 3
						// (obj to r2) flags 260 type 503
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r4
	mr	r2
						// (obj to tmp) flags 4a type 503
						// matchobj comparing flags 74 with 608
						// reg r1 - only match against tmp
	mt	r1
	or	r2
						// (save result) // isreg
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 30
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 66 with 74
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	8
	shl	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 30
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	255
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 30
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 5, 2, 3
						// (obj to r2) flags 260 type 503
						// matchobj comparing flags 608 with 1
						// deref 
	ld	r4
	mr	r2
						// (obj to tmp) flags 4a type 503
						// matchobj comparing flags 74 with 608
						// reg r1 - only match against tmp
	mt	r1
	or	r2
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 31
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 74
						// deref
						// const to r0
						// matchobj comparing flags 1 with 74
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 33
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// matchobj comparing flags 66 with 1
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//../DeMiSTify/firmware/diskimg.c, line 33
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 33
						// Q1 disposable
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 66 with 66
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)store type 3
	st	r3
						//save_temp done
l6: # 

						//../DeMiSTify/firmware/diskimg.c, line 35
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
	mr	r0
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

	//registers used:
		//r1: no
		//r2: no
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_user_io_sd_set_config
_user_io_sd_set_config:
	stdec	r6
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
	.section	.text.2
	.global	_diskimg_poll
_diskimg_poll:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
	.liconst	-8
	add	r6
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 49
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags e2 type a
						// matchobj comparing flags 226 with 1
						// (prepobj tmp)
 						// reg r6 - no need to prep
	mt	r6
	stdec	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 49
						// (address)
						// (prepobj tmp)
 						// var, auto|reg
	.liconst	8
	addt	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 49
						//call
						//pcreltotemp
	.lipcrel	_user_io_sd_get_status
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 49
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r3

						//../DeMiSTify/firmware/diskimg.c, line 52
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 62 type 103
						// matchobj comparing flags 98 with 66
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	2
	cmp	r0

						//../DeMiSTify/firmware/diskimg.c, line 52
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l21
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 57
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						// (obj to r2) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r3 - only match against tmp
	mt	r3
	mr	r2
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	240
	and	r2
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 57
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	80
	cmp	r2

						//../DeMiSTify/firmware/diskimg.c, line 57
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l13
		add	r7

						//../DeMiSTify/firmware/diskimg.c, line 57
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	96
	cmp	r2

						//../DeMiSTify/firmware/diskimg.c, line 57
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l21
		add	r7
						// freereg r1
l13: # 
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 60
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	8
	and	r1
						// (save result) // isreg
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 60
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l17
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 62
						//call
						//pcreltotemp
	.lipcrel	_user_io_sd_set_config
	add	r7
						// Flow control - popping 0 + 0 bytes
l17: # 

						//../DeMiSTify/firmware/diskimg.c, line 67
						// (bitwise/arithmetic) 	//ops: 4, 0, 5
						// (obj to r4) flags 42 type 3
						// reg r3 - only match against tmp
	mt	r3
	mr	r4
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	3
	and	r4
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 67
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	2
	cmp	r4

						//../DeMiSTify/firmware/diskimg.c, line 67
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 68
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shl	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 68
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/diskimg.c, line 68
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	76
	mul	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 68
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// extern (offset 0)
	.liabs	_diskimg
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 74 with 130
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/diskimg.c, line 68
						//call
						//pcreltotemp
	.lipcrel	_FileSeek
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 69
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	24
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 69
						//call
						//pcreltotemp
	.lipcrel	_spi_uio_cmd_cont
	add	r7
						// Deferred popping of 0 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 70
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	512
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 70
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 70
						//call
						//pcreltotemp
	.lipcrel	_spi_read
	add	r7
						// Deferred popping of 4 bytes (8 in total)
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 71
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
	.liconst	32
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 72
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r2

						//../DeMiSTify/firmware/diskimg.c, line 72
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 130
						// matchobj comparing flags 1 with 1
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 1
	.liconst	76
	mul	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 72
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj r1)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_diskimg
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 74 with 130
						// matchobj comparing flags 74 with 1
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/diskimg.c, line 72
						//call
						//pcreltotemp
	.lipcrel	_FileWriteSector
	add	r7
						// Flow control - popping 4 + 8 bytes
						// matchobj comparing flags 1 with 1
	.liconst	12
	add	r6
						// freereg r1
l19: # 
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 76
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	cmp	r4

						//../DeMiSTify/firmware/diskimg.c, line 76
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l21
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 78
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 203
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	46
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 78
						//call
						//pcreltotemp
	.lipcrel	_putchar
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 79
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 3
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	9
	shl	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 79
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r2

						//../DeMiSTify/firmware/diskimg.c, line 79
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 74
						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	76
	mul	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 79
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// extern (offset 0)
	.liabs	_diskimg
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 74 with 130
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/diskimg.c, line 79
						//call
						//pcreltotemp
	.lipcrel	_FileSeek
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 82
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r2

						//../DeMiSTify/firmware/diskimg.c, line 82
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	76
	mul	r2
						// (save result) // isreg
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 82
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 3, 2
						// (obj to r1) flags 82 type a
						// (prepobj r1)
 						// extern (offset 0)
	.liabs	_diskimg
						// extern pe is varadr
	mr	r1
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 74 with 130
						// reg r2 - only match against tmp
	mt	r2
	add	r1
						// (save result) // isreg
						// freereg r2

						//../DeMiSTify/firmware/diskimg.c, line 82
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector
	add	r7
						// Deferred popping of 4 bytes (8 in total)
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 83
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	23
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 83
						//call
						//pcreltotemp
	.lipcrel	_spi_uio_cmd_cont
	add	r7
						// Deferred popping of 0 bytes (8 in total)
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 84
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	512
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 84
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 130 with 1
						// (prepobj tmp)
 						// matchobj comparing flags 130 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 84
						//call
						//pcreltotemp
	.lipcrel	_spi_write
	add	r7
						// Flow control - popping 4 + 8 bytes
	.liconst	12
	add	r6
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 85
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
	.liconst	32
						// (save temp)store type 3
	st	r0
						//save_temp done
l21: # 
						// allocreg r2
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
	.liconst	-8
	sub	r6
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
	.section	.text.3
	.global	_diskimg_unmount
_diskimg_unmount:
	stdec	r6
						// allocreg r2
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 93
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 101
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 93
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	2
	sgn
	cmp	r2

						//../DeMiSTify/firmware/diskimg.c, line 93
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l25
		add	r7
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 94
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	76
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 94
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_diskimg
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 94
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 130
						// const
						// matchobj comparing flags 1 with 130
	.liconst	72
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 94
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
l25: # 
						// allocreg r1
						// freereg r1
						// freereg r2
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
	.section	.text.4
	.global	_diskimg_mount
_diskimg_mount:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-4
	add	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 64 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 1000a
						// matchobj comparing flags 1 with 64
						// const
						// matchobj comparing flags 1 with 64
	.liconst	-44
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 100
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

						//../DeMiSTify/firmware/diskimg.c, line 102
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 102
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	3
	sgn
	cmp	r5

						//../DeMiSTify/firmware/diskimg.c, line 102
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l26
		add	r7

						//../DeMiSTify/firmware/diskimg.c, line 104
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 1
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//../DeMiSTify/firmware/diskimg.c, line 104
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l31
		add	r7
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 106
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 66 with 66
						// reg r2 - only match against tmp
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 106
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 66
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
	.liconst	76
	mul	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 106
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 1
						// (obj to r0) flags 82 type a
						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_diskimg
						// extern pe is varadr
	mr	r0
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 74 with 130
						// matchobj comparing flags 74 with 130
						// reg r1 - only match against tmp
	mt	r1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 74
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 106
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 130
						// var, auto|reg
						// matchobj comparing flags 1 with 130
	.liconst	4
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 106
						//call
						//pcreltotemp
	.lipcrel	_FileOpen
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 106
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 74 with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 106
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l34
		add	r7
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 108
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 98 with 74
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	72
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 108
						// Z disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 109
						// (bitwise/arithmetic) 	//ops: 7, 0, 2
						// (obj to r1) flags 62 type a
						// matchobj comparing flags 98 with 1
						// deref 
	ld	r6
	mr	r1
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 98
						// const
						// matchobj comparing flags 1 with 98
	.liconst	8
	add	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 109
						// Q1 disposable
						// (a/p assign)
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 3
						// matchobj comparing flags 106 with 1
						// deref 
	ld	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 111
						//pcreltotemp
	.lipcrel	l34
	add	r7
l31: # 
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 112
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 112
						//call
						//pcreltotemp
	.lipcrel	_diskimg_unmount
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
l34: # 

						//../DeMiSTify/firmware/diskimg.c, line 116
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
	.liconst	545
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 117
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	29
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 119
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// matchobj comparing flags 66 with 1
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 66
	.liconst	255
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x260
	mt	r0
	st	r3
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 119
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 608
						// matchobj comparing flags 66 with 608
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 608
	.liconst	8
	sgn
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 119
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// matchobj comparing flags 74 with 608
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	255
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x260
	mt	r0
	st	r3
						// freereg r1
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 119
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 66 with 608
						// matchobj comparing flags 66 with 608
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 608
	.liconst	16
	sgn
	shr	r1
						// (save result) // isreg

						//../DeMiSTify/firmware/diskimg.c, line 119
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 74 with 1
						// matchobj comparing flags 74 with 608
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
						// const
						// matchobj comparing flags 1 with 74
						// matchobj comparing flags 1 with 74
	.liconst	255
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x260
	mt	r0
	st	r3
						// freereg r1

						//../DeMiSTify/firmware/diskimg.c, line 119
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 42 type 3
						// matchobj comparing flags 66 with 608
						// matchobj comparing flags 66 with 608
						// reg r4 - only match against tmp
	mt	r4
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
	st	r3

						//../DeMiSTify/firmware/diskimg.c, line 120
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 608
						// matchobj comparing flags 1 with 608
						// const
						// matchobj comparing flags 1 with 608
						// matchobj comparing flags 1 with 608
	.liconst	0
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 120
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 120
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 120
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 121
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 121
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 121
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 121
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 122
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 122
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 122
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 122
						// (a/p assign)
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1

			// required value found in tmp
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 123
						// (a/p assign)
						// (prepobj r0)
 						// matchobj comparing flags 161 with 1
						// matchobj comparing flags 161 with 608
						// deref
						// const to r0
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 608
	.liconst	-48
	mr	r0
						// (obj to tmp) flags 1 type 503
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 1
	.liconst	32
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 126
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 66 with 1
						// matchobj comparing flags 66 with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//../DeMiSTify/firmware/diskimg.c, line 126
						// (a/p assign)
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 66
						// matchobj comparing flags 1 with 1
	.liconst	28
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../DeMiSTify/firmware/diskimg.c, line 126
						//call
						//pcreltotemp
	.lipcrel	_spi_uio_cmd8
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 1
	.liconst	4
	add	r6
						// freereg r1
l26: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
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

	.section	.bss
	.align	4
	.global	_diskimg
	.comm	_diskimg,152
