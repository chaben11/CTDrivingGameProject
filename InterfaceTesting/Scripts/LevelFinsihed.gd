extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Finsihed_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Scenes/City-LevelSelect.tscn")
		if PlayerData.player.currentLevel == "Citylevel1":
			PlayerData.player.Citylevel2 = "unlocked"
			print(PlayerData.player.Citylevel2)
			print(PlayerData.player.currentLevel)
			
