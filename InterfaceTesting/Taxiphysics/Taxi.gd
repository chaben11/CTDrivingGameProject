extends VehicleBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pressed = false
var turn
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _input(event):
	if Input.is_action_pressed("Acclerate"):
		if engine_force < 180:
			engine_force += 15
			pressed = true
	elif Input.is_action_pressed("Decellerate"):
		if engine_force > -180:
			engine_force -= 15
			pressed = true
	elif Input.is_action_just_released("Acclerate"):
		pressed = false
	elif Input.is_action_just_released("Decellerate"):
		pressed = false
#	elif Input.is_action_just_pressed("turn left"):
#		steering = 10
#		turn = true
#	elif Input.is_action_just_pressed("turn left"):
#		steering = -10
#		turn = true
#	elif Input.is_action_just_released("turn left"):
#		turn = false
#	elif Input.is_action_just_released("turn right"):
#		turn = false
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	$Label.text = str(engine_force)+"Km/h"

	if pressed == false:

		if engine_force > 0:
			engine_force -=15
		elif engine_force < 0:
			engine_force +=15
	if turn == false:
		steering = 0
			
