; tpost0.g
; called after tool 0 has been selected

;load filament settings
M703

; Wait in drip zone
M98 P"todripzone.g"

;heatup
M116 P0

if heat.heaters[tools[0].heaters[0]].current >= heat.coldExtrudeTemperature
    ;prime nozzle
    M98 P"prime.g"

M106 R1	; restore print cooling fan speed