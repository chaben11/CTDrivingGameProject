extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var camera_offset

# Called when the node enters the scene tree for the first time.
func _ready():
	camera_offset = $Taxi.translation - $Camera.translation
func _physics_process(delta):
	$Camera.translation = $Taxi.translation - camera_offset


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
