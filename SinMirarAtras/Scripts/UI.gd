extends Camera2D
##Por resolver
var tesis = 0

func _ready():
	pass

func handleTesisCollected():
	
	print("Tesis Collected")
	tesis+=1
	print(tesis)
	$TesisCounter.text = String(tesis)

