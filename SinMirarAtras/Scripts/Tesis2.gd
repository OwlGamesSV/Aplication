extends Area2D


signal tesisCollected
var playerName = "Player"
onready var animationPlayer= $AnimationPlayer

func _physics_process(delta):
	animationPlayer.play("tesis")

func node_name():
	return str(name.replace("@", "").replace(str(int(name)), ""))


			




func _on_Tesis2_body_entered(body):
	print(body.get_name())
	
	if body.get_name() == playerName:
			print(body.get_name())
			print(Ui.tesis)
			body.add_tesis()
			queue_free()
