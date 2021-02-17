; Config.g file for SpoolWorks Scaffold filament
M207 P{state.currentTool} S6.0 F2400 T2400 Z0.075      ; Firmware retraction
M572 D{tools[state.currentTool].extruders[0]} S0.4		; Pressure advance