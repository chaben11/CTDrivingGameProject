extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var viewport_initial_size = Vector2()
onready var viewport = $Viewport
# Called when the node enters the scene tree for the first time.
func _ready():
	get_viewport().connect("size_changed", self, "_root_viewport_size_changed")
	viewport_initial_size = viewport.size

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
