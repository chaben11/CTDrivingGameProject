extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var player = true

# Called when the node enters the scene tree for the first time.
func _ready():
	$"Level 2".disabled = true
	$"Level 3".disabled = true
	$"Level 4".disabled = true

func _process(delta):
	#if the variable is unlocked then the button is enabled
	if PlayerData.player.Citylevel2 == "unlocked":
		$"Level 2".disabled = false
		PlayerData.save()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Level_1_pressed():
	get_tree().change_scene("res://Scenes/Levels/City/City-Level 1.tscn")


func _on_Level_2_pressed():
	get_tree().change_scene("res://Scenes/Levels/City/City-Level 2.tscn")


func _on_Level_3_pressed():
	pass # Replace with function body.


func _on_Level_4_pressed():
	pass # Replace with function body.
