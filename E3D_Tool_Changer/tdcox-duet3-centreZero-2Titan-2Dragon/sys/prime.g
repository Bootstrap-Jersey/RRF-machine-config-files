; Move to drip zone if not already there
M98 P"todripzone.g"
M98 P"raisewiper.g"

; M116 P{state.currentTool}   ; Wait for tool to reach temp

;brush in
G1 X-172 Y10 F12000
G1 X-182
G1 X-177 Y70
G1 Y10

;Prime
G92 E0
G1 E20 F400
G1 F50
G1 E1 F50
G1 E-0.25 F400
G92 E0
M400
;G4 S3   ; Wait for pressure to equalise

;Run Out
G1 Y-10 F50000
G1 X-177 Y70 F50000
G1 Y10 F50000

;Brush Out
G1 X-185 Y15 F50000
G1 X-170 Y20 F50000
G1 X-185 Y25 F50000
G1 X-170 Y30 F50000
G1 X-185 Y35 F50000
G1 X-170 Y40 F50000
G1 X-185 Y45 F50000
G1 X-170 Y50 F50000
G1 X-185 Y55 F50000
G1 X-170 Y60 F50000
G1 X-185 Y65 F50000

; Lower the wiper
M98 P"/macros/Wiper - Park"
