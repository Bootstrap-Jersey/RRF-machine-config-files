; tpost2.g
; called after tool 2 has been selected

;load filament settings
M703

;heatup
M116 P2

;prime nozzle
;M98 P"prime.g"

M106 R1	; restore print cooling fan speed