extends KinematicBody2D


const maxSpeed =  50

const jumpHeight = -300
var Touch = false
const gravity =   15 


onready	var sprite =  $Sprite
onready var animationPlayer = $AnimationPlayer

var motion = Vector2()
##Here


func _input(event):
		if event is InputEventScreenTouch:
			if event.pressed == true: 
				Touch = true 
			else: 
				Touch = false 
				
func _physics_process(delta):
	
	motion.y += gravity	
	motion.x = maxSpeed
	animationPlayer.play("walk")
			
	if is_on_floor():
		if Touch == true:
			motion.y = jumpHeight
		
	motion =  move_and_slide(motion,Vector2.UP)

