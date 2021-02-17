; tpost1.g
; called after tool 1 has been selected

;load filament settings
M703

; Wait in drip zone
M98 P"todripzone.g"

;heatup
M116 P1

; if heat.heaters[tools[1].heaters[0]].current >= heat.coldExtrudeTemperature

; Prime if heater is active
if heat.heaters[tools[1].heaters[0]].active > 0
    ;prime nozzle
    M98 P"prime.g"
    
M106 R1	; restore print cooling fan speed