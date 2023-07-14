extends Camera2D
##Por resolver
var tesis = 0
onready var pauseInstance = $PauseScreen

func _ready():
	pass
	


func handleTesisCollected():
	
	print("Tesis Collected")
	tesis+=1
	print(tesis)
	$TesisCounter.text = String(tesis)

func onPauseVisibility():
	print("Mitsubishi")
	if $Camera2D/Pause.pause == true: 
		$PauseMenu.visible = true
		print(":v")
