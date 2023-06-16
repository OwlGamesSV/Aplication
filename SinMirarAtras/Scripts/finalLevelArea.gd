extends Area2D

var bodyName = "Player"
func _ready():
	pass 

func _on_finalArea_body_entered(body):
	
	print(body.get_name())
	if body.get_name() == bodyName:
		pass
		get_tree().change_scene("res://Scenes/SecondLevel.tscn")
