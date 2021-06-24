extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var entering = false #entering state will make the vehicle play its enter animation
export var rotating = false #rotating state will make the vehicle play its rotate animation
export var exiting = false #exit state will make the vehicle play its exit animation
onready var exitobject = get_parent().get_parent().get_node("ExitTarget")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
