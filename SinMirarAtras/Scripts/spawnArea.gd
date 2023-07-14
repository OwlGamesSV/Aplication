extends Area2D

var instanceCount = 1
onready var spawnEnemy = get_node("../spawnArea")
onready var secondLevel = get_node("../../TileMap")

var enemyStudent = preload("res://Scenes/studentEnemy.tscn")
func _ready():
	spawnEnemy.connect("spawnEnemy", self , "spawn")
	print("ready")



func spawn(): 
	var enemy = enemyStudent.instance()
	
	print("Enemy Spawned")
	
