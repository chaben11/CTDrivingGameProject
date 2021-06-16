extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_SettingsButton_pressed():
	get_tree().change_scene("res://Scenes/Settings.tscn") #Opens the settings Scene


func _on_QuitButton_pressed():
	get_tree().quit()


func _on_The_Mine_pressed():
	pass # Replace with function body.


func _on_The_Highway_pressed():
	pass # Replace with function body.


func _on_The_City_pressed():
	#opens the city level select menu
	get_tree().change_scene("res://Scenes/City-LevelSelect.tscn") 


func _on_Garage_pressed(): #Will open car selection menu
	get_tree().change_scene("res://Scenes/Garage-Car Selection.tscn")
