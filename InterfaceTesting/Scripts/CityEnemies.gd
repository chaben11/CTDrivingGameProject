extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
		#This Plays the main animation that starts the easy enemies driving across the road and then jumps back to their start location
	$AnimationPlayer.play("New Anim (copy)") #Need to rename the animation - 



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
