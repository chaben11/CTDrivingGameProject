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


func _on_ResumeButton_pressed(): #Resumes the game (For the pause menu)
	$Pause.hide()
	get_tree().paused = false

func _on_SettingsButton_pressed():
	pass # Replace with function body.


func _on_MenuButton_pressed():  #(For the gameover and the pause menu)
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
	get_tree().paused = false


func _on_RetryButton_pressed(): #Resumes the game and Resets the level (for the gameover menu)
	get_tree().reload_current_scene()
	get_tree().paused = false
