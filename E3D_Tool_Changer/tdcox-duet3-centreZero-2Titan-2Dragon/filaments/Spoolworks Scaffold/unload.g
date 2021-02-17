if state.currentTool = -1 abort "No tool selected"

M291 P"Please wait while the nozzle is being heated up" R"Unloading Tool " ^ {state.currentTool} T5 ; Display message

G10 S120 											; Heat up the current tool to 120C
M116 P{state.currentTool}							; Wait for the temperatures to be reached

M291 P"Retracting filament..." R"Unloading Tool " ^ {state.currentTool} T5 	; Display another message

G1 E-20 F300 										; Retract 20mm of filament at 300mm/min
G1 E-800 F3000 										; Retract 800mm of filament at 3000mm/min
G1 E-20 F300 										; Retract 20mm of filament at 300mm/min
M400 												; Wait for the moves to finish
M292 												; Hide the message again
G10 S0												; Turn off the heater
M84 E{tools[state.currentTool].extruders[0]}		; Turn off extruder for this tool