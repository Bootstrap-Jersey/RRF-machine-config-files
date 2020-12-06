; tpre3.g
; called before tool 3 is selected
; tool 3 is a Hemera with tool board, dock is at standard Y position

M98 P"/macros/Coupler - Unlock"	; unlock Coupler

M564 S0 						; allow movement outside the normal limits

G1 X156.2 Y50 F50000			; move to location
G1 Y130 F50000					; move in
G1 Y141.0 F2500					; collect

M98 P"/macros/Coupler - Lock"	; close Coupler

;WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING! WARNING!
;if you are using non-standard length hotends ensure the bed is lowered enough BEFORE undocking the tool!
G91
G1 Z20 F1000
G90

G1 Y50 F4000					; move out

M208 Y38						; set Y max for this tool (machine coordinates)
M564 S1 						; apply the normal limits again
