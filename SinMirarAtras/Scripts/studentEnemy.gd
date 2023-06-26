extends KinematicBody2D

var gravity = 15
var speed = 40

var movement = Vector2(0,0)

func _ready():
		$AnimationEnemy.play("walk")

func _process(delta):
		movement_character()
		
func movement_character():
		movement.y += gravity
		movement.x = -speed
		
		movement = move_and_slide(movement, Vector2.UP)
		

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		body.player_dead()
		pass
