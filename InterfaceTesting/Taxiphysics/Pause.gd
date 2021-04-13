extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$MainMenu.hide()

func _input(event):
	if Input.is_action_just_pressed("pause"):
		if get_tree().paused == false:
			get_tree().paused = true
			$MainMenu.show()
		elif get_tree().paused == true:
			get_tree().paused = false
			$MainMenu.hide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ResumeButton_pressed():
	if get_tree().paused == true:
		get_tree().paused = false
		$MainMenu.hide()


func _on_SettingsButton_pressed():
	pass # Replace with function body.


func _on_MenuButton_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	get_tree().paused = false
