; homeu.g
; called to home the wiper axis
; DC42 reduced stall sensitivity from 4 to 2
; DC42 replaced G1 S parameters by H
; DC42 removed redundant G4 and M574 commands

G91 				; use relative positioning

G1 H2 U0.5 F10000	; energise motors to ensure they are not stalled

M400 				; make sure everything has stopped before we change the motor currents
M913 U70     		; drop motor currents to 70%

G1 H1 U110 F4000 	; move down 110mm, stopping at the endstop
G1 U-2 F2000 	    ; move away from end
G1 H1 U10 F2000 	; repeat the homing move slowly

G90 				; back to absolute positioning
G1 U50 F10000 	; move to parked position

M400 				; make sure everything has stopped before we reset the motor currents
M913 U100    		; motor currents back to 100%
