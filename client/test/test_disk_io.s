
.ifndef NB65_API_VERSION_NUMBER
  .define EQU     =
  .include "../inc/nb65_constants.i"
.endif

.include "../inc/common.i"
.include "../inc/commonprint.i"
.import print_a
.import cfg_get_configuration_ptr
.import  io_device_no
.import  io_sector_no
.import  io_track_no
.import  io_read_sector
.import io_read_file_with_callback
.import io_filename
.import io_callback
.import get_key
.import ip65_error
.import io_read_catalogue

.macro cout arg
  lda arg
  jsr print_a
.endmacro   



.bss
 sector_buffer: .res 256
 output_buffer: .res 520
 .export output_buffer
current_byte_in_row: .res 1
current_byte_in_sector: .res 1
start_of_current_row: .res 1

directory_buffer: .res 4096

.segment "STARTUP"    ;this is what gets put at the start of the file on the C64

.word basicstub		; load address

basicstub:
	.word @nextline
	.word 2003
	.byte $9e 
	.byte <(((init / 1000) .mod 10) + $30)
	.byte <(((init / 100 ) .mod 10) + $30)
	.byte <(((init / 10  ) .mod 10) + $30)
	.byte <(((init       ) .mod 10) + $30)
	.byte 0
@nextline:
	.word 0

init:



  ldax #read_catalogue
  jsr print  

;  ldax #dummy_catalogue
;  jsr print_catalogue
;  rts

  lda #01
  sta io_device_no

  ldax #directory_buffer
  jsr io_read_catalogue
  
  bcc @no_error_on_catalogue
  jsr print_error_code
  rts
@no_error_on_catalogue:  
  ldax #directory_buffer
  jsr print_catalogue
  rts
  

  ldax #loading
  jsr print
  ldax #fname
  stax io_filename
  jsr print

  jsr print_cr
  lda #01
  sta io_device_no

  ldax #readfile_callback
  stax  io_callback
  ldax  #sector_buffer
    
  jsr io_read_file_with_callback
  bcc @no_error_on_file_read
  jsr print_error_code
@no_error_on_file_read:  

  rts
  
  
  lda #01
  sta io_track_no
  lda #01
  sta io_sector_no
  lda #01
  sta io_device_no
  ldax #sector_buffer
  jsr io_read_sector
  bcs  @error
  
 ; jsr dump_sector ;DEBUG

  lda #$12
  sta io_track_no
  lda #01
  sta io_sector_no
  lda #01
  sta io_device_no
  ldax #sector_buffer
  jsr io_read_sector
  
  bcs  @error
;  jsr dump_sector ;DEBUG



  lda #$12
  sta io_track_no
  lda #01
  sta io_sector_no
  lda #01
  sta io_device_no
  ldax #sector_buffer
  jsr io_read_sector
  
  bcs  @error
  jsr dump_sector ;DEBUG

 rts

@error:
  jsr print_cr
  lda ip65_error
  jsr print_hex
  rts


;print catalogue pointed at by AX
print_catalogue:
  stax tmp_buffer_ptr

 @print_one_filename:
  jsr read_byte_from_buffer
  beq @catalogue_done
@print_one_char:
  jsr print_a
  jsr read_byte_from_buffer
  beq @end_of_filename
  jmp @print_one_char
@end_of_filename:
  jsr print_cr
  ldax #filetype
  jsr print
  jsr read_byte_from_buffer
  jsr print_hex
  ldax #sectors
  jsr print
  jsr read_byte_from_buffer
  pha
  jsr read_byte_from_buffer
  jsr print_hex
  pla
  jsr print_hex
  jsr print_cr
  jmp @print_one_filename
@catalogue_done:
  rts

read_byte_from_buffer:
tmp_buffer_ptr=read_byte_from_buffer+1
  lda $ffff
  inc tmp_buffer_ptr
  bne :+
  inc tmp_buffer_ptr
:  
  pha
  pla ;reload A so flags are set correctly
  rts



readfile_callback:
  tya
  jsr print_hex
  ldax #bytes
  jsr print
  jsr dump_sector
  rts

print_error_code:
  jsr print_cr
  ldax  #error
  jsr print  
  lda ip65_error
  jsr print_hex
  jsr print_cr
  rts

wait_for_keypress:
  lda #0
  sta $c6 ;set the keyboard buffer to be empty
  ldax  #press_a_key_to_continue
  jsr print
  jsr get_key  
  rts

dump_sector:
;hex dump sector
  lda #0
  sta current_byte_in_sector
  sta start_of_current_row
  
@one_row:
  lda #$80
  cmp current_byte_in_sector
  bne @dont_wait_for_key
  jsr wait_for_keypress
@dont_wait_for_key:  
  lda current_byte_in_sector
  
  sta start_of_current_row
  jsr print_hex
  lda #':'
  jsr print_a
  lda #' '
  jsr print_a

  lda #0
  sta current_byte_in_row
  
;first the hex values  
@dump_byte:
  ldy current_byte_in_sector
  lda sector_buffer,y
  jsr print_hex
  lda #' '
  jsr print_a
  inc current_byte_in_sector
  inc current_byte_in_row
  lda current_byte_in_row
  cmp #08
  bne @dump_byte
  
;now the ascii values
  lda start_of_current_row
  sta current_byte_in_sector
@print_byte:
  ldy current_byte_in_sector
  lda sector_buffer,y
  cmp #32
  bmi @not_printable
  cmp #94
  bmi @printable
@not_printable:
  lda #'.'
@printable:
  jsr print_a
  inc current_byte_in_sector
  beq @last_byte
  dec current_byte_in_row
  bne @print_byte
  jsr print_cr
  jmp @one_row
@last_byte:
  jsr print_cr
  jsr wait_for_keypress
  rts




read_catalogue:
  .byte "READING CATALOGUE",13,0
fname:  
  .byte "TEST_DISK_IO.PRG",0

loading: .byte "LOADING ",0
.rodata

press_a_key_to_continue:
  .byte "PRESS A KEY TO CONTINUE",13,0

filetype:
  .byte "TYPE: $",0

sectors:
  .byte " SECTORS: $",0
error:
	.byte "ERROR - $", 0

failed:
	.byte "FAILED ", 0

ok:
	.byte "OK ", 0

bytes:
	.byte "BYTES.",13, 0

dummy_catalogue:
.byte"FILE 1",0,$81,$34,$12
.byte "FILE 2",0,$82,$f0,$0d
.byte 0
