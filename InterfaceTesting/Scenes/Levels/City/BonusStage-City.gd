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


func _on_BonusStage_body_entered(body): #Area at the end of CityLevel2 that sends the player to the bonus stage
	if body.name == "Player": 
		PlayerData.player.currentLevel = "CityBonus" #Sets the currentlevel to the bonus stage
		PlayerData.save() #saves the game
		background_load.load_scene("res://Scenes/Levels/City/City-VIPAREA.tscn") #loads the bonus level
