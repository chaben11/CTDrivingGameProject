extends VehicleBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pressed = false
var turn
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _input(_event):

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
func _process(_delta):

	if pressed == false:

		if engine_force > 0:
			engine_force -=15
		elif engine_force < 0:
			engine_force +=15
	if turn == false:
		steering = 0
	print(rotation_degrees.z)
func _integrate_forces(_state): 
	rotation_degrees.y = 90
	rotation_degrees.z = 0
func _on_EnemyChecker_body_entered(body):
	if "Enemy" in body.name:
		print("check")
		get_tree().paused = true
		get_parent().get_parent().get_node("Failed/MainMenu").show()


func _on_EnemyChecker_area_entered(area):
	if "River" in area.name:
		print("check1")
		get_tree().paused = true
		get_parent().get_parent().get_node("Failed/MainMenu").show()
