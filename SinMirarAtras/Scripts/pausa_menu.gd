extends Control




onready var pauseInstance = get_node("../Pause")
# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	



func _on_ContinueButton_pressed():
	
	pauseInstance.pause = false
	
	get_tree().paused = false
	visible = false
	
	


func _on_ExitMenu_pressed():
	get_tree().change_scene("res://Scenes/levelMenu.tscn")
	print("works")
	get_tree().paused = false
