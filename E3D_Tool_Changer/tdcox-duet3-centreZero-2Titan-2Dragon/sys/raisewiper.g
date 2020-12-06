; Raise the wiper brush to the correct height for the current tool

;echo state.currentTool
;echo state.nextTool

if state.currentTool = -1
    echo "Unknown Tool. Not able to raise wiper safely."
else 
    ; Raise wiper
    G90
    G1 U{ 14.8 - tools[state.currentTool].offsets[2] } F10000
