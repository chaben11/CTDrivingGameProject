extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$CM325002/AnimationPlayer.play("SPINNING THINGIE") #Animation for the mine enemy


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
