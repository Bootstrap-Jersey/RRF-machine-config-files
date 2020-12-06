; tfree2.g
; called when tool 2 is freed
; tool 2 is a Hemera with tool board, dock is 2mm forward of standard Y position

G91
G1 Z4 F1000						; drop the bed
G90

M564 S0 						; allow movement outside the normal limits

;M98 P"purge.g"					; purge nozzle

;Move In
G53 G1 X66.2 Y50 F50000			; move to location
G53 G1 Y130 F50000				; move in
G53 G1 Y141.4 F5000

M98 P"/macros/Coupler - Unlock" ; open Coupler

M106 P6 S0						; fan off

G53 G1 Y104 F2500				; move Out
G53 G1 Y50 F50000

M564 S1 						; apply the normal limits again
