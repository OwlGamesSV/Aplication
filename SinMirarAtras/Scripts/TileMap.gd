extends TileMap



onready var enemyStudent = get_node("res://Scenes/studentEnemy.tscn")

func _ready():
	pass 


func addChild():
	add_child(enemyStudent)
	

