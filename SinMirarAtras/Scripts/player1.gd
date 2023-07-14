extends KinematicBody2D


onready var counterInstance = get_node("../TesisCounter")

const speed = 80

const jumpHeight = -300
const up = Vector2(0,-1)
const gravity = 15
var touch = false


onready var sprite = $Sprite
onready var animationPlayer = $AnimationPlayer

var motion = Vector2()



func add_tesis():
		
		counterInstance.handleTesisCollected()
			
			
	
	
	
func _input(event):
		if event is InputEventScreenTouch: 
			if event.pressed == true: 
				touch = true
				
				
			else:
				touch = false
				
func _physics_process(delta):
	
	motion.y += gravity	
	motion.x = speed
	animationPlayer.play("Walk")
			
	if is_on_floor():
		if touch == true :
			motion.y = jumpHeight
		
	motion =  move_and_slide(motion,Vector2.UP)

	
	
	
	
	
