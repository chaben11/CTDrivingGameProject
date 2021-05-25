extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var Sounds = false

# Called when the node enters the scene tree for the first time.
func _ready():
	Sounds = false #Sounds button starts off


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Sounds_pressed():
	if Sounds == false: #If the sound is off it will turn on and change its icon to show on
		$Sounds/Sounds.play("SoundsOn") 
		Sounds = true 
	elif Sounds == true: #If the sound is on it will turn off and change its icon to show off
		$Sounds/Sounds.play("SoundsOff")
		Sounds = false


func _on_Menu_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
