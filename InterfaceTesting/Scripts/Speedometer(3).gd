extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var playercarspeed = get_parent().get_parent().get_parent().get_node("Player/Player").engine_force

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(delta):
	playercarspeed = get_parent().get_parent().get_parent().get_node("Player/Player").engine_force
	if playercarspeed > 0:
		$Pointer.rotation_degrees.y = -playercarspeed
	elif playercarspeed < 0:
		$Pointer.rotation_degrees.y = playercarspeed
	elif playercarspeed == 0:
		$Pointer.rotation_degrees.y = playercarspeed
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
