extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if garage.car_index == 3:
		disabled = true
		$VEHICLELOCKED.show()
	else:
		disabled = false
		$VEHICLELOCKED.hide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_Loadscene_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn") 
	print(garage.car_index)
