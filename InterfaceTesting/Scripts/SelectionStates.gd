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




func turn_face(target, delta):
	var rotation_speed = 3
	var target_pos = target.global_transform.origin
	var pos = global_transform.origin
	target_pos.y = pos.y
	var origin_rot = rotation
	look_at(target_pos, Vector3(0,1,0))
	var target_rot = rotation
	var rot_length = target_rot - origin_rot
	var rot_step = rot_length * rotation_speed * delta
	rotation = origin_rot + rot_step
