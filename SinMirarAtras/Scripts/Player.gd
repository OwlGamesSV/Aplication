extends KinematicBody2D


const speed =  50

const jumpHeight = -300
var touch = false
const gravity =   15 


onready var animationPlayer = $AnimationPlayer

var motion = Vector2()
##Here


func _input(event):
		if event is InputEventScreenTouch:
			if event.pressed == true: 
				touch = true 
			else: 
				touch = false 
				
func _physics_process(delta):
	
	motion.y += gravity	
	motion.x = speed
	animationPlayer.play("walk")
			
	if is_on_floor():
		if touch == true:
			motion.y = jumpHeight
		
	motion =  move_and_slide(motion,Vector2.UP)

func add_tesis():
		var tesisCounter = $Camera2D
		tesisCounter.handleTesisCollected()
		
func player_dead():
	print("Moriste :P")
	get_tree().reload_current_scene()
