extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var player = true
onready var Level1ImageComplete = load("res://DigitalTechMenu/Buttons/1x/City-Level1-Complete.png")
onready var Level1ImageCompleteHover = load("res://DigitalTechMenu/Buttons/1x/City-Level1-Complete-Hover.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	$"Level 2".disabled = true
	$"Level 3".disabled = true

func _process(delta):
	if PlayerData.player.Citylevel1 == "complete":
		$"Level 1".texture_normal = Level1ImageComplete
		$"Level 1".texture_hover = Level1ImageCompleteHover
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
	PlayerData.player.currentLevel == "Citylevel2"


func _on_Level_3_pressed():
	pass # Replace with function body.


func _on_Level_4_pressed():
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
