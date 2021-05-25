extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var camera_offset

# Called when the node enters the scene tree for the first time.
func _ready():
	camera_offset = $Player.translation - $Camera.translation #Gets player position and camera position and takes the difference
func _physics_process(delta):
	$Camera.translation = $Player.translation - camera_offset # always sets the camera position to be the difference between the offset and player positon


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Taxi_body_entered(body):
	print(body.name)
