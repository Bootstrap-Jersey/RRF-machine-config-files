; tpost1.g
; called after tool 1 has been selected

;load filament settings
M703

; Wait in drip zone
M98 P"todripzone.g"

;heatup
M116 P1

; Raise wiper
G1 U28 F10000

;prime nozzle
M98 P"prime.g"

M106 R1	; restore print cooling fan speed