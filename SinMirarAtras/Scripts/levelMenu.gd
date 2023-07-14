extends Control



func _ready():
	pass # Replace with function body.




func _on_returnButton_pressed():
	
	get_tree().change_scene("res://Scenes/Menu.tscn")


func _on_parkingLotButton_pressed():
	
	get_tree().change_scene("res://Scenes/SecondLevel.tscn")


func _on_TouchScreenButton3_pressed():
	get_tree().change_scene("res://Scenes/SecondLevel.tscn")


func _on_TouchScreenButton4_pressed():
	
	get_tree().change_scene("res://Scenes/SecondLevel.tscn")
	


func _on_TouchScreenButton5_pressed():
	
	get_tree().change_scene("res://Scenes/SecondLevel.tscn")
