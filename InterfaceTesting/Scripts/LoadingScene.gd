extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready(): #A loading screen when the game is launched game waits until the animation is fully completed before loading
	$AnimatedSprite.play()

func _process(delta):
	if $AnimatedSprite.frame == 70:
		get_tree().change_scene("res://Scenes/MainMenu.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
