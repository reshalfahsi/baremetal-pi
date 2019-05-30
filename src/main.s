@;
@;  A simple program to blink the OK/ACT LED on Raspberry Pi 3
@;
@;  0x30D40 = 200000 microseconds = 200 miliseconds
@;  0x1E8480 = 2000000 microseconds = 2 seconds


.section .init                      @; kernel initialization code must be on 0x8000
.global _start                      @; define _start label globally available for the linker
_start:
    mov         sp, #0x8000         @; set up the stack pointer
    b           _main               @; branch to main routine

.section .text
_main:
    loop$:                          @; main loop
        @;Student Number: 44251
      
	mov r1, #1		@; iteration index
	mov r2, #4		@; first digit of student number
	pertama$:        
		@; enable led
        	mov     r0, #1              @; led state 1 = on
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function

        	@; disable led
        	mov     r0, #0              @; led state 0 = off
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function
		
		cmp	r1, r2		@; compare
		add 	r1, r1, #1	@; add iteration index
		ble	pertama		@; loop requirement

	ldr     r0, =0x1E8480       @; delay in microseconds (2s)

	mov r1, #1		@; iteration index
	mov r2, #4		@; second digit of student number
	kedua$:        
		@; enable led
        	mov     r0, #1              @; led state 1 = on
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function

        	@; disable led
        	mov     r0, #0              @; led state 0 = off
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function
		
		cmp	r1, r2		@; compare
		add 	r1, r1, #1	@; add iteration index
		ble	kedua		@; loop requirement

	ldr     r0, =0x1E8480       @; delay in microseconds (2s)
	
	mov r1, #1		@; iteration index
	mov r2, #2		@; third digit of student number
	ketiga$:        
		@; enable led
        	mov     r0, #1              @; led state 1 = on
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function

        	@; disable led
        	mov     r0, #0              @; led state 0 = off
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function
		
		cmp	r1, r2		@; compare
		add 	r1, r1, #1	@; add iteration index
		ble	ketiga		@; loop requirement

	ldr     r0, =0x1E8480       @; delay in microseconds (2s)	

	mov r1, #1		@; iteration index
	mov r2, #5		@; fourth digit of student number
	keempat$:        
		@; enable led
        	mov     r0, #1              @; led state 1 = on
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function

        	@; disable led
        	mov     r0, #0              @; led state 0 = off
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function
		
		cmp	r1, r2		@; compare
		add 	r1, r1, #1	@; add iteration index
		ble	keempat		@; loop requirement

	ldr     r0, =0x1E8480       @; delay in microseconds (2s)

	mov r1, #1		@; iteration index
	mov r2, #4		@; fifth digit of student number
	kelima$:        
		@; enable led
        	mov     r0, #1              @; led state 1 = on
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function

        	@; disable led
        	mov     r0, #0              @; led state 0 = off
        	bl      set_led_state       @; set led state

        	ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        	bl      delay               @; branch to delay function
		
		cmp	r1, r2		@; compare
		add 	r1, r1, #1	@; add iteration index
		ble	kelima		@; loop requirement

	ldr     r0, =0x1E8480       @; delay in microseconds (2s)

        b       loop$               @; branch to main loop$
