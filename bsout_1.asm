
;
; Fill screen with simple maze 
;

!to"bsout_1.prg",cbm

bsout = $ffd2 
sid_rnd = $D41B

*=$1000
; Start mit SYS4096
;
main:
	jsr init_sid_rnd

	lda #$93 		; clear screen 147
	jsr bsout
		
					;	jmp fill_screen_memory:			
	ldy #25
loop_y:
	ldx #40
	cpy #1
	bne loop_x
	ldx #39			;one char less print in last line to avoid screen scroll
loop_x:
	lda sid_rnd
	and #1
	beq char_slash
	lda #205	; char back-slash
	jmp put_char
char_slash:
	lda #206	; char slash
put_char:
	jsr bsout

	dex
	bne loop_x
	dey
	bne loop_y
	
spacechk: 
		lda $dc01
		cmp #$ef
		bne spacechk 	
	rts


init_sid_rnd:	
		LDA #$FF ; maximum frequency value
		STA $D40E ; voice 3 frequency low byte
		STA $D40F ; voice 3 frequency high byte
		LDA #$80 ; noise waveform, gate bit off
		STA $D412 ; voice 3 control register
		RTS	
		
fill_screen_memory:

	lda #'#'
	ldx #0
	
loop:   
		sta $0400,x
		sta $0500,x
		sta $0600,x
		sta $0700,x
		dex
		bne loop
		
		rts
		