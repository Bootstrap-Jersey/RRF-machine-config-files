; Config.g file for Silk Sapphire Blue PLA filament
M207 P{state.currentTool} S4.0 F2400 T2400 Z0.075      ; Firmware retraction
M572 D{tools[state.currentTool].extruders[0]} S0.2		; Pressure advance