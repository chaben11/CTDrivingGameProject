extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var gameover = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_MenuButton_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn") 
	get_tree().paused = false
	gameover = false



func _on_RetryButton_pressed(): #will reset the scene if the player clicks retry
	get_tree().reload_current_scene()
	get_tree().paused = false #The scene will unfreeze
	gameover = false
	pass # Replace with function body.
