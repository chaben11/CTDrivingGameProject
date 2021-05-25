extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var playercarspeed = get_parent().get_parent().get_parent().get_node("Player/Player").engine_force

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(delta):
	playercarspeed = get_parent().get_parent().get_parent().get_node("Player/Player").engine_force # gets the variable that manages the players speed
	if playercarspeed > 0: #checks if it is positive
		$Pointer.rotation_degrees.y = -playercarspeed/2 #Sets the pointer to rotate to the negative value of degrees dependant on the speed 
	elif playercarspeed < 0: #checks if it is negative
		$Pointer.rotation_degrees.y = playercarspeed/2 #Sets the pointer to rotate to the positive value of degrees dependant on the speed 
	elif playercarspeed == 0: #checks if it is 0
		$Pointer.rotation_degrees.y = playercarspeed/2 #The pointer will be at the start/ 0 mark of the speedometer 
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
