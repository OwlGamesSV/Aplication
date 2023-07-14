extends Area2D


signal tesisCollected
var playerName = "Player"
onready var animationPlayer= $AnimationPlayer

func _physics_process(delta):
	animationPlayer.play("tesis")




func _on_Tesis3_body_entered(body):
	print(body.get_name())
	
	if body.get_name() == playerName:
			print(body.get_name())
			print(Ui.tesis)
			body.add_tesis()
			queue_free()

