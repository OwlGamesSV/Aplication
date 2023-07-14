extends Node2D



onready var Player = get_node("Player")

func _ready():
	Player.connect("onPause", self, "getPaused")


func getPaused():
	get_tree().paused
