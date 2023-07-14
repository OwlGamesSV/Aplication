extends Area2D
signal spawnEnemy
var instanceCount = 1
var spawnidentificator = false
onready var spawnArea = get_node("../spawnArea")
onready var enemy = get_node("../KinematicBody2D")

func _ready():
	pass
	
func _on_spawnEnemy_body_entered(body):
	if body.get_name() == "Player":
		print("Player inside")
		emit_signal("spawnEnemy")
		spawnidentificator = true
		enemy.visible = true
		
		

