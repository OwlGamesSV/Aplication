extends Area2D




var bodyName = "Player"
func _ready():
	pass 

func _on_fallingArea_body_entered(body):
	print(body.get_name())
	if body.get_name() == bodyName:
		get_tree().reload_current_scene()
