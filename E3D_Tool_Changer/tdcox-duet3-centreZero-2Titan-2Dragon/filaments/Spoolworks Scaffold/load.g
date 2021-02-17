M98 P"todripzone.g"								; Park head

M291 P"Please wait while the nozzle is being heated up" R"Loading Spoolworks Scaffold" T5 	; Display message

G10 S215 										; Set current tool temperature to 215C
M116 P{state.currentTool}						; Wait for the temperatures to be reached
M291 P"Feeding filament..." R"Loading Spoolworks Scaffold" T5 	; Display new message
M83 											; Extruder to relative mode
G1 E10 F600 									; Feed 10mm of filament at 600mm/min
G1 E800 F3000 									; Feed 800mm of filament at 3000mm/min
G1 E20 F300 									; Feed 20mm of filament at 300mm/min
M98 P"prime.g"									; Prime and clean as normal
M400 											; Wait for moves to complete
M292 											; Hide the message
G10 S0 											; Turn off the heater again