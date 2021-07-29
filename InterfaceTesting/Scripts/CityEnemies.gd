extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var EnemySpeed = 1.0
export var AnimationEnd = false
# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.playback_speed = EnemySpeed
		#This Plays the main animation that starts the easy enemies driving across the road and then jumps back to their start location
	
	$AnimationPlayer.play("Right First") #Need to rename the animation -

func _process(delta):
	randomize()
	if AnimationEnd == true:
		var anim_index = randi()%3+1
		if anim_index == 1:
			$AnimationPlayer.play("Right First")
		elif anim_index == 2:
			$AnimationPlayer.play("Left First")
		elif anim_index == 3:
			$AnimationPlayer.play("Both")
		print(anim_index)
