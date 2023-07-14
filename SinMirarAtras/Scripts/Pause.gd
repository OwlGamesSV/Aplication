extends TouchScreenButton

signal onPause

var pause = false
onready var pauseInstance = get_node("../PauseScreen")
func _ready():
	
	pass
	




func _on_Pause_pressed():
	print("Está pausado")
	pause = true
	get_tree().paused = true
	pauseInstance.visible = true
	
	
	
	
	
	
