extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var EnemySpeed = 1.0
# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.playback_speed = EnemySpeed
		#This Plays the main animation that starts the easy enemies driving across the road and then jumps back to their start location
	
	$AnimationPlayer.play("Right First") #Need to rename the animation -

func _process(delta):
#	var anim_index = rand_range(1,3)
# 
	pass
