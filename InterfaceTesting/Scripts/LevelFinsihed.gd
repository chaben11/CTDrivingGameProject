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
		# Returns to level select but will end up as a menu
		get_tree().change_scene("res://Scenes/City-LevelSelect.tscn")
		if PlayerData.player.currentLevel == "Citylevel1": 
			#Checks the current level to unlock the right one
			PlayerData.player.Citylevel2 = "unlocked"
			PlayerData.player.Citylevel1 = "complete"
			#Unlocks next level in the list
			print(PlayerData.player.Citylevel2)
			print(PlayerData.player.currentLevel)
			print(PlayerData.player.Citylevel1)
			
