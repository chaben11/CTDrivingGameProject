extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var camera_offset = -3
onready var player = get_parent().get_node("Taxi")
# Called when the node enters the scene tree for the first time.

func _process(delta):
	print(player)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
