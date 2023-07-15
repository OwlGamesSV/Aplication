extends Label


var tesis = 0
func handleTesisCollected():
	
	print("Tesis Collected")
	tesis+=1
	print(tesis)
	self.text = String(tesis)
	
	if tesis == 3:
		 get_tree().change_scene("res://Scenes/nivel3-1.tscn")
