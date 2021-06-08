extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var red = $red.position
onready var green = $green.position

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("Start") #Starts the animation on the first index

func _process(delta):
	pass
