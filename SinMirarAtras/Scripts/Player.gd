extends KinematicBody2D


const speed =  80


const jumpHeight = -600
var touch = false
const gravity =   15 


onready var animationPlayer = $AnimationPlayer

var motion = Vector2()
##Here
func _ready():
	pass

func _input(event):
		if event is InputEventScreenTouch && $Camera2D/PauseScreen.visible == false: 
			if event.pressed == true: 
				if $Camera2D/Pause.pause == false: 
					touch = true 
					
				else:
					$Camera2D/PauseScreen
			else: 
				touch = false 
				
func _physics_process(delta):
	
	motion.y += gravity	
	motion.x = speed
	animationPlayer.play("walk")
			
	if is_on_floor():
		if touch == true :
			motion.y = jumpHeight
		
	motion =  move_and_slide(motion,Vector2.UP)

func add_tesis():
		var tesisCounter = $Camera2D
		tesisCounter.handleTesisCollected()
		
func player_dead():
	print("Moriste :P")
	get_tree().reload_current_scene()


